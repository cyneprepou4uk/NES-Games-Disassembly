.segment "BANK_FF"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
.org $C000  ; for listing file
; 0x00C010-0x01000F



.export sub_0x00CF17
.export sub_0x00D7E3_draw_huge_star_screen
.export sub_0x00DB23
.export _sound_0x00EA44_0F_player_death
.export _sound_0x00EAA7_10_pick_up_item
.export _sound_0x00EAC0_11_push_item
.export _sound_0x00EAD4_12_enemy_death
.export _sound_0x00EB05_13
.export _sound_0x00EB17_14
.export _sound_0x00EB2B_17_throw_glove
.export sub_0x00ED10
.export sub_0x00ED6F_draw_screen_handler
.export sub_0x00EE82_read_joystick_regs
.export sub_0x00EEDD_wait_1_frm
.export sub_0x00EEFA
.export sub_0x00EF88_jump_to_pointers_after_jsr
.export sub_0x00F1C0
.export sub_0x00F23B
.export sub_0x00F240_replace_tiles_with_new
.export sub_0x00F498
.export sub_0x00F575
.export sub_0x00F5D1
.export sub_0x00F606
.export sub_0x00F60B_write_palette
.export sub_0x00F648
.export sub_0x00F722
.export sub_0x00F7B2_play_sound



sub_C000_menu_script:
C - - - - - 0x00C010 03:C000: 20 38 F6  JSR sub_F638
C - - - - - 0x00C013 03:C003: A9 00     LDA #$00
C - - - - - 0x00C015 03:C005: 85 24     STA ram_0024
C - - - - - 0x00C017 03:C007: 20 EA EE  JSR sub_EEEA
C - - - - - 0x00C01A 03:C00A: A9 00     LDA #$00
C - - - - - 0x00C01C 03:C00C: 85 33     STA ram_chr_bank_1
C - - - - - 0x00C01E 03:C00E: A9 01     LDA #$01
C - - - - - 0x00C020 03:C010: 85 34     STA ram_chr_bank_2
C - - - - - 0x00C022 03:C012: 20 00 ED  JSR sub_ED00
C - - - - - 0x00C025 03:C015: A9 FF     LDA #$FF
C - - - - - 0x00C027 03:C017: 20 B0 F1  JSR sub_F1B0
C - - - - - 0x00C02A 03:C01A: A9 26     LDA #con_script_menu + con_prg_bank + $02 * $10
C - - - - - 0x00C02C 03:C01C: 20 85 F1  JSR sub_F185_run_script
C - - - - - 0x00C02F 03:C01F: 20 38 F6  JSR sub_F638
C - - - - - 0x00C032 03:C022: A9 00     LDA #$00
C - - - - - 0x00C034 03:C024: 85 24     STA ram_0024
C - - - - - 0x00C036 03:C026: 20 EA EE  JSR sub_EEEA
loc_C029:
C D 2 - - - 0x00C039 03:C029: A9 00     LDA #$00
C - - - - - 0x00C03B 03:C02B: 85 24     STA ram_0024
C - - - - - 0x00C03D 03:C02D: 20 EA EE  JSR sub_EEEA
C - - - - - 0x00C040 03:C030: A9 05     LDA #$05
C - - - - - 0x00C042 03:C032: 85 7C     STA ram_lives
C - - - - - 0x00C044 03:C034: A9 00     LDA #$00
C - - - - - 0x00C046 03:C036: 85 B2     STA ram_00B2_unk
C - - - - - 0x00C048 03:C038: 85 B3     STA ram_00B2_unk + $01
C - - - - - 0x00C04A 03:C03A: 85 B4     STA ram_00B2_unk + $02
C - - - - - 0x00C04C 03:C03C: 85 B5     STA ram_00B2_unk + $03
C - - - - - 0x00C04E 03:C03E: 85 B6     STA ram_00B2_unk + $04
C - - - - - 0x00C050 03:C040: 85 B7     STA ram_00B2_unk + $05
C - - - - - 0x00C052 03:C042: 85 B8     STA ram_00B2_unk + $06
C - - - - - 0x00C054 03:C044: 85 B9     STA ram_00B2_unk + $07
C - - - - - 0x00C056 03:C046: A9 FF     LDA #$FF
C - - - - - 0x00C058 03:C048: 20 B0 F1  JSR sub_F1B0
loc_C04B:
C D 2 - - - 0x00C05B 03:C04B: A9 00     LDA #$00
C - - - - - 0x00C05D 03:C04D: 85 33     STA ram_chr_bank_1
C - - - - - 0x00C05F 03:C04F: A9 01     LDA #$01
C - - - - - 0x00C061 03:C051: 85 34     STA ram_chr_bank_2
C - - - - - 0x00C063 03:C053: 20 00 ED  JSR sub_ED00
C - - - - - 0x00C066 03:C056: 20 1A EA  JSR sub_EA1A_load_stage
C - - - - - 0x00C069 03:C059: 20 4C C5  JSR sub_C54C
C - - - - - 0x00C06C 03:C05C: A5 9A     LDA ram_prg_bank_2
C - - - - - 0x00C06E 03:C05E: 20 29 F1  JSR sub_F129
C - - - - - 0x00C071 03:C061: 20 47 C3  JSR sub_C347_select_stage_soundtrack
bra_C064_loop:
C - - - - - 0x00C074 03:C064: 20 36 E2  JSR sub_E236
C - - - - - 0x00C077 03:C067: 20 A8 C1  JSR sub_C1A8
C - - - - - 0x00C07A 03:C06A: 20 8C E4  JSR sub_E48C
C - - - - - 0x00C07D 03:C06D: 20 E7 D4  JSR sub_D4E7
C - - - - - 0x00C080 03:C070: 20 91 CF  JSR sub_CF91
C - - - - - 0x00C083 03:C073: 20 44 E5  JSR sub_E544
C - - - - - 0x00C086 03:C076: 20 AF C2  JSR sub_C2AF
C - - - - - 0x00C089 03:C079: 20 20 C2  JSR sub_C220
C - - - - - 0x00C08C 03:C07C: 20 4B C8  JSR sub_C84B
C - - - - - 0x00C08F 03:C07F: 20 12 D0  JSR sub_D012
C - - - - - 0x00C092 03:C082: 20 C7 E2  JSR sub_E2C7
C - - - - - 0x00C095 03:C085: 20 56 D7  JSR sub_D756
C - - - - - 0x00C098 03:C088: 20 C3 D6  JSR sub_D6C3
C - - - - - 0x00C09B 03:C08B: 20 7C E3  JSR sub_E37C
C - - - - - 0x00C09E 03:C08E: 20 3D E0  JSR sub_E03D
C - - - - - 0x00C0A1 03:C091: 20 E3 CC  JSR sub_CCE3
C - - - - - 0x00C0A4 03:C094: 20 EA EE  JSR sub_EEEA
C - - - - - 0x00C0A7 03:C097: AD 00 05  LDA ram_obj_state
C - - - - - 0x00C0AA 03:C09A: 10 66     BPL bra_C102    ; if not exists     con_obj_state_exists
C - - - - - 0x00C0AC 03:C09C: AD 00 06  LDA ram_pos_X_carrot
C - - - - - 0x00C0AF 03:C09F: 0D 02 06  ORA ram_pos_X_carrot + $02
C - - - - - 0x00C0B2 03:C0A2: 0D 04 06  ORA ram_pos_X_carrot + $04
C - - - - - 0x00C0B5 03:C0A5: 0D 06 06  ORA ram_pos_X_carrot + $06
C - - - - - 0x00C0B8 03:C0A8: 0D 08 06  ORA ram_pos_X_carrot + $08
C - - - - - 0x00C0BB 03:C0AB: 0D 0A 06  ORA ram_pos_X_carrot + $0A
C - - - - - 0x00C0BE 03:C0AE: 0D 0C 06  ORA ram_pos_X_carrot + $0C
C - - - - - 0x00C0C1 03:C0B1: 0D 0E 06  ORA ram_pos_X_carrot + $0E
C - - - - - 0x00C0C4 03:C0B4: D0 AE     BNE bra_C064_loop
C - - - - - 0x00C0C6 03:C0B6: A9 FF     LDA #$FF
C - - - - - 0x00C0C8 03:C0B8: 8D 18 05  STA ram_obj_0518
bra_C0BB_loop:
C - - - - - 0x00C0CB 03:C0BB: 20 E3 CC  JSR sub_CCE3
C - - - - - 0x00C0CE 03:C0BE: 20 EA EE  JSR sub_EEEA
C - - - - - 0x00C0D1 03:C0C1: AD 00 07  LDA ram_se_0700
C - - - - - 0x00C0D4 03:C0C4: 0D 18 07  ORA ram_se_0700 + $18
C - - - - - 0x00C0D7 03:C0C7: 0D 30 07  ORA ram_se_0700 + $30
C - - - - - 0x00C0DA 03:C0CA: 0D 48 07  ORA ram_se_0700 + $48
C - - - - - 0x00C0DD 03:C0CD: 30 EC     BMI bra_C0BB_loop
C - - - - - 0x00C0DF 03:C0CF: 20 46 F1  JSR sub_F146
C - - - - - 0x00C0E2 03:C0D2: 20 3B C1  JSR sub_C13B
C - - - - - 0x00C0E5 03:C0D5: E6 68     INC ram_stage_id_1
C - - - - - 0x00C0E7 03:C0D7: A5 68     LDA ram_stage_id_1
C - - - - - 0x00C0E9 03:C0D9: C9 3C     CMP #$3C
C - - - - - 0x00C0EB 03:C0DB: D0 0F     BNE bra_C0EC_game_is_not_completed
; final cutscene
C - - - - - 0x00C0ED 03:C0DD: 20 38 F6  JSR sub_F638
C - - - - - 0x00C0F0 03:C0E0: A9 21     LDA #con_script_final_cutscene + con_prg_bank + $02 * $10
C - - - - - 0x00C0F2 03:C0E2: 20 85 F1  JSR sub_F185_run_script
C - - - - - 0x00C0F5 03:C0E5: 20 38 F6  JSR sub_F638
C - - - - - 0x00C0F8 03:C0E8: A9 00     LDA #$00
C - - - - - 0x00C0FA 03:C0EA: 85 68     STA ram_stage_id_1
bra_C0EC_game_is_not_completed:
; generate password
C - - - - - 0x00C0FC 03:C0EC: 20 38 F6  JSR sub_F638
C - - - - - 0x00C0FF 03:C0EF: A9 00     LDA #$00
C - - - - - 0x00C101 03:C0F1: 85 33     STA ram_chr_bank_1
C - - - - - 0x00C103 03:C0F3: A9 01     LDA #$01
C - - - - - 0x00C105 03:C0F5: 85 34     STA ram_chr_bank_2
C - - - - - 0x00C107 03:C0F7: 20 00 ED  JSR sub_ED00
C - - - - - 0x00C10A 03:C0FA: A9 27     LDA #con_script_generate_password + con_prg_bank + $02 * $10
C - - - - - 0x00C10C 03:C0FC: 20 85 F1  JSR sub_F185_run_script
C - - - - - 0x00C10F 03:C0FF: 4C 4B C0  JMP loc_C04B
bra_C102:
C - - - - - 0x00C112 03:C102: A2 00     LDX #$00
bra_C104_loop:
C - - - - - 0x00C114 03:C104: 8A        TXA
C - - - - - 0x00C115 03:C105: 48        PHA
C - - - - - 0x00C116 03:C106: 20 E3 CC  JSR sub_CCE3
C - - - - - 0x00C119 03:C109: 20 EA EE  JSR sub_EEEA
C - - - - - 0x00C11C 03:C10C: 68        PLA
C - - - - - 0x00C11D 03:C10D: AA        TAX
C - - - - - 0x00C11E 03:C10E: E8        INX
C - - - - - 0x00C11F 03:C10F: E0 1E     CPX #$1E
C - - - - - 0x00C121 03:C111: D0 F1     BNE bra_C104_loop
C - - - - - 0x00C123 03:C113: 20 46 F1  JSR sub_F146
C - - - - - 0x00C126 03:C116: A5 68     LDA ram_stage_id_1
C - - - - - 0x00C128 03:C118: C9 3C     CMP #$3C
C - - - - - 0x00C12A 03:C11A: B0 43     BCS bra_C15F_it_is_bonus_stage
C - - - - - 0x00C12C 03:C11C: C6 7C     DEC ram_lives
C - - - - - 0x00C12E 03:C11E: A5 7C     LDA ram_lives
C - - - - - 0x00C130 03:C120: F0 07     BEQ bra_C129
C - - - - - 0x00C132 03:C122: A5 32     LDA ram_0032
C - - - - - 0x00C134 03:C124: D0 54     BNE bra_C17A
C - - - - - 0x00C136 03:C126: 4C 4B C0  JMP loc_C04B
bra_C129:
C - - - - - 0x00C139 03:C129: A9 00     LDA #$00
C - - - - - 0x00C13B 03:C12B: 85 32     STA ram_0032
C - - - - - 0x00C13D 03:C12D: 20 2E EA  JSR sub_EA2E_game_over
C - - - - - 0x00C140 03:C130: A5 62     LDA ram_0062
C - - - - - 0x00C142 03:C132: F0 04     BEQ bra_C138
C - - - - - 0x00C144 03:C134: A9 00     LDA #$00
C - - - - - 0x00C146 03:C136: 85 68     STA ram_stage_id_1
bra_C138:
C - - - - - 0x00C148 03:C138: 4C 29 C0  JMP loc_C029



sub_C13B:
C - - - - - 0x00C14B 03:C13B: A5 32     LDA ram_0032
C - - - - - 0x00C14D 03:C13D: D0 09     BNE bra_C148
C - - - - - 0x00C14F 03:C13F: A5 7C     LDA ram_lives
C - - - - - 0x00C151 03:C141: C9 63     CMP #$63
C - - - - - 0x00C153 03:C143: F0 02     BEQ bra_C147_RTS
C - - - - - 0x00C155 03:C145: E6 7C     INC ram_lives
bra_C147_RTS:
C - - - - - 0x00C157 03:C147: 60        RTS
bra_C148:
- - - - - - 0x00C158 03:C148: A9 00     LDA #$00
- - - - - - 0x00C15A 03:C14A: 85 32     STA ram_0032
- - - - - - 0x00C15C 03:C14C: A5 68     LDA ram_stage_id_1
- - - - - - 0x00C15E 03:C14E: 38        SEC
- - - - - - 0x00C15F 03:C14F: E9 3C     SBC #$3C
- - - - - - 0x00C161 03:C151: A8        TAY
- - - - - - 0x00C162 03:C152: B9 76 C1  LDA tbl_C176,Y
- - - - - - 0x00C165 03:C155: 85 68     STA ram_stage_id_1
- - - - - - 0x00C167 03:C157: A5 7C     LDA ram_lives
- - - - - - 0x00C169 03:C159: 18        CLC
- - - - - - 0x00C16A 03:C15A: 69 03     ADC #$03
- - - - - - 0x00C16C 03:C15C: 85 7C     STA ram_lives
- - - - - - 0x00C16E 03:C15E: 60        RTS



bra_C15F_it_is_bonus_stage:
C - - - - - 0x00C16F 03:C15F: A9 00     LDA #$00
C - - - - - 0x00C171 03:C161: 85 32     STA ram_0032
C - - - - - 0x00C173 03:C163: A5 68     LDA ram_stage_id_1
C - - - - - 0x00C175 03:C165: 38        SEC
C - - - - - 0x00C176 03:C166: E9 3C     SBC #$3C
C - - - - - 0x00C178 03:C168: A8        TAY
C - - - - - 0x00C179 03:C169: B9 76 C1  LDA tbl_C176,Y
C - - - - - 0x00C17C 03:C16C: 38        SEC
C - - - - - 0x00C17D 03:C16D: E9 03     SBC #$03
C - - - - - 0x00C17F 03:C16F: 85 68     STA ram_stage_id_1
C - - - - - 0x00C181 03:C171: 85 69     STA ram_stage_id_2
C - - - - - 0x00C183 03:C173: 4C 4B C0  JMP loc_C04B



tbl_C176:
- - - - - - 0x00C186 03:C176: 2C        .byte $2C   ; 3C
- - - - - - 0x00C187 03:C177: 28        .byte $28   ; 3D
- D 2 - - - 0x00C188 03:C178: 3B        .byte $3B   ; 3E
- - - - - - 0x00C189 03:C179: 1D        .byte $1D   ; 3F



bra_C17A:
C - - - - - 0x00C18A 03:C17A: A5 32     LDA ram_0032
C - - - - - 0x00C18C 03:C17C: 18        CLC
C - - - - - 0x00C18D 03:C17D: 69 36     ADC #$36
C - - - - - 0x00C18F 03:C17F: 85 68     STA ram_stage_id_1
C - - - - - 0x00C191 03:C181: 4C 4B C0  JMP loc_C04B



bra_C184_loop:
- - - - - - 0x00C194 03:C184: A9 00     LDA #$00
- - - - - - 0x00C196 03:C186: 20 A2 F7  JSR sub_F7A2_play_sound
bra_C189_loop:
- - - - - - 0x00C199 03:C189: A9 78     LDA #$78
- - - - - - 0x00C19B 03:C18B: 85 21     STA ram_0021
- - - - - - 0x00C19D 03:C18D: A9 68     LDA #$68
- - - - - - 0x00C19F 03:C18F: 85 20     STA ram_0020
- - - - - - 0x00C1A1 03:C191: A9 16     LDA #$16
- - - - - - 0x00C1A3 03:C193: 20 13 DB  JSR sub_DB13
- - - - - - 0x00C1A6 03:C196: 20 E3 CC  JSR sub_CCE3
- - - - - - 0x00C1A9 03:C199: 20 EA EE  JSR sub_EEEA
- - - - - - 0x00C1AC 03:C19C: 20 72 EE  JSR sub_EE72_read_joystick_regs
- - - - - - 0x00C1AF 03:C19F: A5 F5     LDA ram_btn_press
- - - - - - 0x00C1B1 03:C1A1: 29 30     AND #con_btns_SS
- - - - - - 0x00C1B3 03:C1A3: F0 E4     BEQ bra_C189_loop
- - - - - - 0x00C1B5 03:C1A5: 20 47 C3  JSR sub_C347_select_stage_soundtrack
sub_C1A8:
C - - - - - 0x00C1B8 03:C1A8: AD 00 05  LDA ram_obj_state
C - - - - - 0x00C1BB 03:C1AB: 30 01     BMI bra_C1AE_player_exists      ; con_obj_state_exists
- - - - - - 0x00C1BD 03:C1AD: 60        RTS
bra_C1AE_player_exists:
C - - - - - 0x00C1BE 03:C1AE: 20 72 EE  JSR sub_EE72_read_joystick_regs
C - - - - - 0x00C1C1 03:C1B1: A5 F5     LDA ram_btn_press
C - - - - - 0x00C1C3 03:C1B3: 29 30     AND #con_btns_SS
C - - - - - 0x00C1C5 03:C1B5: D0 CD     BNE bra_C184_loop
C - - - - - 0x00C1C7 03:C1B7: AD 0B 05  LDA ram_obj_btn
C - - - - - 0x00C1CA 03:C1BA: 29 F3     AND #con_btns_UD ^ $FF
C - - - - - 0x00C1CC 03:C1BC: 8D 0B 05  STA ram_obj_btn
C - - - - - 0x00C1CF 03:C1BF: A5 F7     LDA ram_btn_hold
C - - - - - 0x00C1D1 03:C1C1: 29 0C     AND #con_btns_UD
C - - - - - 0x00C1D3 03:C1C3: 0D 0B 05  ORA ram_obj_btn
C - - - - - 0x00C1D6 03:C1C6: 8D 0B 05  STA ram_obj_btn
C - - - - - 0x00C1D9 03:C1C9: AD 01 05  LDA ram_pos_X_lo_obj
C - - - - - 0x00C1DC 03:C1CC: 29 0F     AND #$0F
C - - - - - 0x00C1DE 03:C1CE: F0 1A     BEQ bra_C1EA
C - - - - - 0x00C1E0 03:C1D0: AD 12 05  LDA ram_obj_0512
C - - - - - 0x00C1E3 03:C1D3: 29 20     AND #$20
C - - - - - 0x00C1E5 03:C1D5: D0 1B     BNE bra_C1F2
C - - - - - 0x00C1E7 03:C1D7: AD 00 05  LDA ram_obj_state
C - - - - - 0x00C1EA 03:C1DA: 29 08     AND #con_obj_state_08
C - - - - - 0x00C1EC 03:C1DC: D0 19     BNE bra_C1F7
C - - - - - 0x00C1EE 03:C1DE: AD 01 05  LDA ram_pos_X_lo_obj
C - - - - - 0x00C1F1 03:C1E1: 29 0F     AND #$0F
C - - - - - 0x00C1F3 03:C1E3: C9 0F     CMP #$0F
C - - - - - 0x00C1F5 03:C1E5: F0 0B     BEQ bra_C1F2
C - - - - - 0x00C1F7 03:C1E7: 4C F7 C1  JMP loc_C1F7
bra_C1EA:
C - - - - - 0x00C1FA 03:C1EA: AD 12 05  LDA ram_obj_0512
C - - - - - 0x00C1FD 03:C1ED: 29 DF     AND #$DF
C - - - - - 0x00C1FF 03:C1EF: 8D 12 05  STA ram_obj_0512
bra_C1F2:
C - - - - - 0x00C202 03:C1F2: A5 F7     LDA ram_btn_hold
C - - - - - 0x00C204 03:C1F4: 8D 0B 05  STA ram_obj_btn
bra_C1F7:
loc_C1F7:
C D 2 - - - 0x00C207 03:C1F7: AD 12 05  LDA ram_obj_0512
C - - - - - 0x00C20A 03:C1FA: 29 40     AND #$40
C - - - - - 0x00C20C 03:C1FC: D0 08     BNE bra_C206
C - - - - - 0x00C20E 03:C1FE: AD 0B 05  LDA ram_obj_btn
C - - - - - 0x00C211 03:C201: 29 0C     AND #con_btns_UD
C - - - - - 0x00C213 03:C203: D0 01     BNE bra_C206
C - - - - - 0x00C215 03:C205: 60        RTS
bra_C206:
C - - - - - 0x00C216 03:C206: AD 0B 05  LDA ram_obj_btn
C - - - - - 0x00C219 03:C209: 29 FC     AND #con_btns_LR ^ $FF
C - - - - - 0x00C21B 03:C20B: 8D 0B 05  STA ram_obj_btn
C - - - - - 0x00C21E 03:C20E: AD 00 05  LDA ram_obj_state
C - - - - - 0x00C221 03:C211: 29 08     AND #con_obj_state_08
C - - - - - 0x00C223 03:C213: 4A        LSR
C - - - - - 0x00C224 03:C214: 4A        LSR
C - - - - - 0x00C225 03:C215: 4A        LSR
C - - - - - 0x00C226 03:C216: 18        CLC
C - - - - - 0x00C227 03:C217: 69 01     ADC #$01
C - - - - - 0x00C229 03:C219: 0D 0B 05  ORA ram_obj_btn
C - - - - - 0x00C22C 03:C21C: 8D 0B 05  STA ram_obj_btn
C - - - - - 0x00C22F 03:C21F: 60        RTS



sub_C220:
C - - - - - 0x00C230 03:C220: A2 00     LDX #$00
bra_C222_loop:
C - - - - - 0x00C232 03:C222: BD 00 05  LDA ram_obj_state,X
C - - - - - 0x00C235 03:C225: 10 10     BPL bra_C237    ; if not exists     con_obj_state_exists
C - - - - - 0x00C237 03:C227: 29 10     AND #con_obj_state_10
C - - - - - 0x00C239 03:C229: F0 0C     BEQ bra_C237
C - - - - - 0x00C23B 03:C22B: 20 6A C2  JSR sub_C26A
C - - - - - 0x00C23E 03:C22E: A5 6E     LDA ram_006E
C - - - - - 0x00C240 03:C230: C9 80     CMP #$80
C - - - - - 0x00C242 03:C232: D0 03     BNE bra_C237
C - - - - - 0x00C244 03:C234: 20 3F C2  JSR sub_C23F
bra_C237:
C - - - - - 0x00C247 03:C237: 8A        TXA
C - - - - - 0x00C248 03:C238: 18        CLC
C - - - - - 0x00C249 03:C239: 69 20     ADC #$20
C - - - - - 0x00C24B 03:C23B: AA        TAX
C - - - - - 0x00C24C 03:C23C: D0 E4     BNE bra_C222_loop
C - - - - - 0x00C24E 03:C23E: 60        RTS



sub_C23F:
C - - - - - 0x00C24F 03:C23F: BD 05 05  LDA ram_obj_0505,X
C - - - - - 0x00C252 03:C242: 9D 01 05  STA ram_pos_X_lo_obj,X
C - - - - - 0x00C255 03:C245: BD 06 05  LDA ram_obj_0506,X
C - - - - - 0x00C258 03:C248: 9D 02 05  STA ram_pos_X_hi_obj,X
C - - - - - 0x00C25B 03:C24B: BD 07 05  LDA ram_obj_0507,X
C - - - - - 0x00C25E 03:C24E: 9D 03 05  STA ram_pos_Y_lo_obj,X
C - - - - - 0x00C261 03:C251: BD 08 05  LDA ram_obj_0508,X
C - - - - - 0x00C264 03:C254: 9D 04 05  STA ram_pos_Y_hi_obj,X
C - - - - - 0x00C267 03:C257: BD 00 05  LDA ram_obj_state,X
C - - - - - 0x00C26A 03:C25A: 29 EF     AND #con_obj_state_10 ^ $FF
C - - - - - 0x00C26C 03:C25C: 9D 00 05  STA ram_obj_state,X
C - - - - - 0x00C26F 03:C25F: BD 12 05  LDA ram_obj_0512,X
C - - - - - 0x00C272 03:C262: 09 20     ORA #$20
C - - - - - 0x00C274 03:C264: 49 10     EOR #$10
C - - - - - 0x00C276 03:C266: 9D 12 05  STA ram_obj_0512,X
C - - - - - 0x00C279 03:C269: 60        RTS



sub_C26A:
C - - - - - 0x00C27A 03:C26A: BD 0B 05  LDA ram_obj_btn,X
C - - - - - 0x00C27D 03:C26D: 4A        LSR
C - - - - - 0x00C27E 03:C26E: B0 1D     BCS bra_C28D_right
C - - - - - 0x00C280 03:C270: BD 01 05  LDA ram_pos_X_lo_obj,X
C - - - - - 0x00C283 03:C273: 85 6A     STA ram_006A
C - - - - - 0x00C285 03:C275: BD 02 05  LDA ram_pos_X_hi_obj,X
C - - - - - 0x00C288 03:C278: 85 6B     STA ram_006B
C - - - - - 0x00C28A 03:C27A: BD 03 05  LDA ram_pos_Y_lo_obj,X
C - - - - - 0x00C28D 03:C27D: 18        CLC
C - - - - - 0x00C28E 03:C27E: 69 08     ADC #< $0008
C - - - - - 0x00C290 03:C280: 85 6C     STA ram_006C
C - - - - - 0x00C292 03:C282: BD 04 05  LDA ram_pos_Y_hi_obj,X
C - - - - - 0x00C295 03:C285: 69 00     ADC #> $0008
C - - - - - 0x00C297 03:C287: 85 6D     STA ram_006D
C - - - - - 0x00C299 03:C289: 20 5F C3  JSR sub_C35F
C - - - - - 0x00C29C 03:C28C: 60        RTS
bra_C28D_right:
C - - - - - 0x00C29D 03:C28D: BD 01 05  LDA ram_pos_X_lo_obj,X
C - - - - - 0x00C2A0 03:C290: 18        CLC
C - - - - - 0x00C2A1 03:C291: 69 10     ADC #< $0010
C - - - - - 0x00C2A3 03:C293: 85 6A     STA ram_006A
C - - - - - 0x00C2A5 03:C295: BD 02 05  LDA ram_pos_X_hi_obj,X
C - - - - - 0x00C2A8 03:C298: 69 00     ADC #> $0010
C - - - - - 0x00C2AA 03:C29A: 85 6B     STA ram_006B
C - - - - - 0x00C2AC 03:C29C: BD 03 05  LDA ram_pos_Y_lo_obj,X
C - - - - - 0x00C2AF 03:C29F: 18        CLC
C - - - - - 0x00C2B0 03:C2A0: 69 08     ADC #< $0008
C - - - - - 0x00C2B2 03:C2A2: 85 6C     STA ram_006C
C - - - - - 0x00C2B4 03:C2A4: BD 04 05  LDA ram_pos_Y_hi_obj,X
C - - - - - 0x00C2B7 03:C2A7: 69 00     ADC #> $0008
C - - - - - 0x00C2B9 03:C2A9: 85 6D     STA ram_006D
C - - - - - 0x00C2BB 03:C2AB: 20 5F C3  JSR sub_C35F
C - - - - - 0x00C2BE 03:C2AE: 60        RTS



sub_C2AF:
C - - - - - 0x00C2BF 03:C2AF: A2 00     LDX #$00
bra_C2B1_loop:
C - - - - - 0x00C2C1 03:C2B1: BD 00 05  LDA ram_obj_state,X
C - - - - - 0x00C2C4 03:C2B4: 10 30     BPL bra_C2E6    ; if not exists     con_obj_state_exists
C - - - - - 0x00C2C6 03:C2B6: E0 00     CPX #$00
C - - - - - 0x00C2C8 03:C2B8: F0 0A     BEQ bra_C2C4_it_is_player
C - - - - - 0x00C2CA 03:C2BA: FE 14 05  INC ram_obj_0514,X
C - - - - - 0x00C2CD 03:C2BD: BD 14 05  LDA ram_obj_0514,X
C - - - - - 0x00C2D0 03:C2C0: 29 01     AND #$01
C - - - - - 0x00C2D2 03:C2C2: F0 22     BEQ bra_C2E6
bra_C2C4_it_is_player:
C - - - - - 0x00C2D4 03:C2C4: BD 01 05  LDA ram_pos_X_lo_obj,X
C - - - - - 0x00C2D7 03:C2C7: 9D 05 05  STA ram_obj_0505,X
C - - - - - 0x00C2DA 03:C2CA: BD 02 05  LDA ram_pos_X_hi_obj,X
C - - - - - 0x00C2DD 03:C2CD: 9D 06 05  STA ram_obj_0506,X
C - - - - - 0x00C2E0 03:C2D0: BD 03 05  LDA ram_pos_Y_lo_obj,X
C - - - - - 0x00C2E3 03:C2D3: 9D 07 05  STA ram_obj_0507,X
C - - - - - 0x00C2E6 03:C2D6: BD 04 05  LDA ram_pos_Y_hi_obj,X
C - - - - - 0x00C2E9 03:C2D9: 9D 08 05  STA ram_obj_0508,X
C - - - - - 0x00C2EC 03:C2DC: BD 00 05  LDA ram_obj_state,X
C - - - - - 0x00C2EF 03:C2DF: 29 20     AND #con_obj_state_20
C - - - - - 0x00C2F1 03:C2E1: D0 03     BNE bra_C2E6
C - - - - - 0x00C2F3 03:C2E3: 20 EE C2  JSR sub_C2EE
bra_C2E6:
C - - - - - 0x00C2F6 03:C2E6: 8A        TXA
C - - - - - 0x00C2F7 03:C2E7: 18        CLC
C - - - - - 0x00C2F8 03:C2E8: 69 20     ADC #$20
C - - - - - 0x00C2FA 03:C2EA: AA        TAX
C - - - - - 0x00C2FB 03:C2EB: D0 C4     BNE bra_C2B1_loop
C - - - - - 0x00C2FD 03:C2ED: 60        RTS



sub_C2EE:
C - - - - - 0x00C2FE 03:C2EE: BD 00 05  LDA ram_obj_state,X
C - - - - - 0x00C301 03:C2F1: 29 02     AND #con_obj_state_02
C - - - - - 0x00C303 03:C2F3: D0 11     BNE bra_C306
C - - - - - 0x00C305 03:C2F5: BD 00 05  LDA ram_obj_state,X
C - - - - - 0x00C308 03:C2F8: 09 10     ORA #con_obj_state_10
C - - - - - 0x00C30A 03:C2FA: 9D 00 05  STA ram_obj_state,X
C - - - - - 0x00C30D 03:C2FD: BD 0B 05  LDA ram_obj_btn,X
C - - - - - 0x00C310 03:C300: 4A        LSR
C - - - - - 0x00C311 03:C301: B0 0C     BCS bra_C30F_right
C - - - - - 0x00C313 03:C303: 4A        LSR
C - - - - - 0x00C314 03:C304: B0 25     BCS bra_C32B_left
bra_C306:
C - - - - - 0x00C316 03:C306: BD 00 05  LDA ram_obj_state,X
C - - - - - 0x00C319 03:C309: 29 EB     AND #(con_obj_state_04 + con_obj_state_10) ^ $FF
C - - - - - 0x00C31B 03:C30B: 9D 00 05  STA ram_obj_state,X
C - - - - - 0x00C31E 03:C30E: 60        RTS
bra_C30F_right:
C - - - - - 0x00C31F 03:C30F: BD 01 05  LDA ram_pos_X_lo_obj,X
C - - - - - 0x00C322 03:C312: 18        CLC
C - - - - - 0x00C323 03:C313: 69 01     ADC #< $0001
C - - - - - 0x00C325 03:C315: 9D 01 05  STA ram_pos_X_lo_obj,X
C - - - - - 0x00C328 03:C318: BD 02 05  LDA ram_pos_X_hi_obj,X
C - - - - - 0x00C32B 03:C31B: 69 00     ADC #> $0001
C - - - - - 0x00C32D 03:C31D: 9D 02 05  STA ram_pos_X_hi_obj,X
C - - - - - 0x00C330 03:C320: BD 00 05  LDA ram_obj_state,X
C - - - - - 0x00C333 03:C323: 29 F6     AND #(con_obj_state_01 + con_obj_state_08) ^ $FF
C - - - - - 0x00C335 03:C325: 09 04     ORA #con_obj_state_04
C - - - - - 0x00C337 03:C327: 9D 00 05  STA ram_obj_state,X
C - - - - - 0x00C33A 03:C32A: 60        RTS
bra_C32B_left:
C - - - - - 0x00C33B 03:C32B: BD 01 05  LDA ram_pos_X_lo_obj,X
C - - - - - 0x00C33E 03:C32E: 38        SEC
C - - - - - 0x00C33F 03:C32F: E9 01     SBC #< $0001
C - - - - - 0x00C341 03:C331: 9D 01 05  STA ram_pos_X_lo_obj,X
C - - - - - 0x00C344 03:C334: BD 02 05  LDA ram_pos_X_hi_obj,X
C - - - - - 0x00C347 03:C337: E9 00     SBC #> $0001
C - - - - - 0x00C349 03:C339: 9D 02 05  STA ram_pos_X_hi_obj,X
C - - - - - 0x00C34C 03:C33C: BD 00 05  LDA ram_obj_state,X
C - - - - - 0x00C34F 03:C33F: 29 FE     AND #con_obj_state_01 ^ $FF
C - - - - - 0x00C351 03:C341: 09 0C     ORA #con_obj_state_04 + con_obj_state_08
C - - - - - 0x00C353 03:C343: 9D 00 05  STA ram_obj_state,X
C - - - - - 0x00C356 03:C346: 60        RTS



sub_C347_select_stage_soundtrack:
; bzk optimize, stage type is enough to select music
; scroll doesn't have to do anything with it
C - - - - - 0x00C357 03:C347: A5 61     LDA ram_stage_scroll_type
C - - - - - 0x00C359 03:C349: 0A        ASL
C - - - - - 0x00C35A 03:C34A: 0A        ASL
C - - - - - 0x00C35B 03:C34B: 05 6F     ORA ram_stage_type
C - - - - - 0x00C35D 03:C34D: 29 07     AND #$07
C - - - - - 0x00C35F 03:C34F: A8        TAY
C - - - - - 0x00C360 03:C350: B9 57 C3  LDA tbl_C357,Y
C - - - - - 0x00C363 03:C353: 20 A2 F7  JSR sub_F7A2_play_sound
C - - - - - 0x00C366 03:C356: 60        RTS



tbl_C357:
; 00 horisontal
- D 2 - - - 0x00C367 03:C357: 02        .byte con_music_soundtrack_1   ; 00 
- D 2 - - - 0x00C368 03:C358: 0A        .byte con_music_soundtrack_3   ; 01 
- D 2 - - - 0x00C369 03:C359: 05        .byte con_music_soundtrack_2   ; 02 
- - - - - - 0x00C36A 03:C35A: 02        .byte con_music_soundtrack_1   ; 03 
; 01 vertical
- D 2 - - - 0x00C36B 03:C35B: 02        .byte con_music_soundtrack_1   ; 04 
- D 2 - - - 0x00C36C 03:C35C: 0A        .byte con_music_soundtrack_3   ; 05 
- D 2 - - - 0x00C36D 03:C35D: 05        .byte con_music_soundtrack_2   ; 06 
- - - - - - 0x00C36E 03:C35E: 02        .byte con_music_soundtrack_1   ; 07 



sub_C35F:
C - - - - - 0x00C36F 03:C35F: 98        TYA
C - - - - - 0x00C370 03:C360: 48        PHA
C - - - - - 0x00C371 03:C361: A5 6A     LDA ram_006A
C - - - - - 0x00C373 03:C363: 85 20     STA ram_0020
C - - - - - 0x00C375 03:C365: A5 6B     LDA ram_006B
C - - - - - 0x00C377 03:C367: 4A        LSR
C - - - - - 0x00C378 03:C368: 66 20     ROR ram_0020
C - - - - - 0x00C37A 03:C36A: 46 20     LSR ram_0020
C - - - - - 0x00C37C 03:C36C: 46 20     LSR ram_0020
C - - - - - 0x00C37E 03:C36E: 46 20     LSR ram_0020
C - - - - - 0x00C380 03:C370: A5 6C     LDA ram_006C
C - - - - - 0x00C382 03:C372: 85 21     STA ram_0021
C - - - - - 0x00C384 03:C374: A5 6D     LDA ram_006D
C - - - - - 0x00C386 03:C376: 4A        LSR
C - - - - - 0x00C387 03:C377: 66 21     ROR ram_0021
C - - - - - 0x00C389 03:C379: 46 21     LSR ram_0021
C - - - - - 0x00C38B 03:C37B: 46 21     LSR ram_0021
C - - - - - 0x00C38D 03:C37D: 46 21     LSR ram_0021
C - - - - - 0x00C38F 03:C37F: 20 5F C4  JSR sub_C45F_calculate_byte_from_stage_data
C - - - - - 0x00C392 03:C382: A8        TAY
C - - - - - 0x00C393 03:C383: B9 8B C3  LDA tbl_C38B,Y
C - - - - - 0x00C396 03:C386: 85 6E     STA ram_006E
C - - - - - 0x00C398 03:C388: 68        PLA
C - - - - - 0x00C399 03:C389: A8        TAY
C - - - - - 0x00C39A 03:C38A: 60        RTS



tbl_C38B:
;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 2 - - - 0x00C39B 03:C38B: 80        .byte $80, $81, $82, $80, $80, $00, $00, $00, $00, $00, $80, $00, $89, $8A, $80, $80   ; 00 
- D 2 - - - 0x00C3AB 03:C39B: 80        .byte $80, $81, $82, $80, $80, $80, $80, $80, $8B, $00, $00, $00, $00, $00, $00, $80   ; 10 
- D 2 - - - 0x00C3BB 03:C3AB: 04        .byte $04, $03, $05, $06, $07, $08, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80   ; 20 
- - - - - - 0x00C3CB 03:C3BB: 80        .byte $80, $80, $80, $80, $80, $80, $80, $80, $80, $00, $00, $80, $80, $80, $80, $00   ; 30 
- D 2 - - - 0x00C3DB 03:C3CB: 01        .byte $01, $02, $00, $00, $01, $02, $00, $00, $80, $80, $80, $80, $80, $80, $00, $00   ; 40 
- D 2 - - - 0x00C3EB 03:C3DB: 0F        .byte $0F, $0E, $0C, $0D, $00, $00, $80, $80, $80, $80, $80, $80, $80, $80, $00, $00   ; 50 
- D 2 - - - 0x00C3FB 03:C3EB: 80        .byte $80, $80, $80, $80, $80, $80, $00, $00, $00, $00, $00, $0F, $0E, $80, $0C, $0D   ; 60 
- D 2 - - - 0x00C40B 03:C3FB: 81        .byte $81, $82, $80, $80, $01, $02, $00, $00, $80, $80, $80, $80, $80, $80, $80, $80   ; 70 



sub_C40B:
C - - - - - 0x00C41B 03:C40B: 85 23     STA ram_0023
C - - - - - 0x00C41D 03:C40D: 8A        TXA
C - - - - - 0x00C41E 03:C40E: 48        PHA
C - - - - - 0x00C41F 03:C40F: 98        TYA
C - - - - - 0x00C420 03:C410: 48        PHA
C - - - - - 0x00C421 03:C411: A9 00     LDA #$00
C - - - - - 0x00C423 03:C413: 85 1F     STA ram_001F
C - - - - - 0x00C425 03:C415: A5 23     LDA ram_0023
C - - - - - 0x00C427 03:C417: AA        TAX
C - - - - - 0x00C428 03:C418: 0A        ASL
C - - - - - 0x00C429 03:C419: 26 1F     ROL ram_001F
C - - - - - 0x00C42B 03:C41B: 0A        ASL
C - - - - - 0x00C42C 03:C41C: 26 1F     ROL ram_001F
C - - - - - 0x00C42E 03:C41E: 18        CLC
C - - - - - 0x00C42F 03:C41F: 69 9A     ADC #< tbl_E79A
C - - - - - 0x00C431 03:C421: 85 1E     STA ram_001E
C - - - - - 0x00C433 03:C423: A5 1F     LDA ram_001F
C - - - - - 0x00C435 03:C425: 69 E7     ADC #> tbl_E79A
C - - - - - 0x00C437 03:C427: 85 1F     STA ram_001F
C - - - - - 0x00C439 03:C429: BD 9A E9  LDA tbl_E99A,X
C - - - - - 0x00C43C 03:C42C: 85 22     STA ram_0022
C - - - - - 0x00C43E 03:C42E: A9 02     LDA #$02
C - - - - - 0x00C440 03:C430: 85 62     STA ram_0062
C - - - - - 0x00C442 03:C432: 85 63     STA ram_0063
C - - - - - 0x00C444 03:C434: A0 00     LDY #$00
bra_C436_loop:
C - - - - - 0x00C446 03:C436: B1 1E     LDA (ram_001E),Y
C - - - - - 0x00C448 03:C438: 99 64 00  STA ram_0064,Y
C - - - - - 0x00C44B 03:C43B: C8        INY
C - - - - - 0x00C44C 03:C43C: C0 04     CPY #$04
C - - - - - 0x00C44E 03:C43E: D0 F6     BNE bra_C436_loop
C - - - - - 0x00C450 03:C440: 20 A2 C4  JSR sub_C4A2
C - - - - - 0x00C453 03:C443: A9 62     LDA #$62
C - - - - - 0x00C455 03:C445: 85 1E     STA ram_001E
C - - - - - 0x00C457 03:C447: A9 00     LDA #$00
C - - - - - 0x00C459 03:C449: 85 1F     STA ram_001F
C - - - - - 0x00C45B 03:C44B: 20 30 F2  JSR sub_F230_replace_tiles_with_new
C - - - - - 0x00C45E 03:C44E: 20 A2 C4  JSR sub_C4A2
C - - - - - 0x00C461 03:C451: A9 02     LDA #$02
C - - - - - 0x00C463 03:C453: 85 20     STA ram_0020
C - - - - - 0x00C465 03:C455: 85 21     STA ram_0021
C - - - - - 0x00C467 03:C457: 20 88 F4  JSR sub_F488
C - - - - - 0x00C46A 03:C45A: 68        PLA
C - - - - - 0x00C46B 03:C45B: A8        TAY
C - - - - - 0x00C46C 03:C45C: 68        PLA
C - - - - - 0x00C46D 03:C45D: AA        TAX
C - - - - - 0x00C46E 03:C45E: 60        RTS



sub_C45F_calculate_byte_from_stage_data:
C - - - - - 0x00C46F 03:C45F: 98        TYA
C - - - - - 0x00C470 03:C460: 48        PHA
C - - - - - 0x00C471 03:C461: A9 00     LDA #$00
C - - - - - 0x00C473 03:C463: 85 1F     STA ram_001F
C - - - - - 0x00C475 03:C465: A5 21     LDA ram_0021
C - - - - - 0x00C477 03:C467: 0A        ASL
C - - - - - 0x00C478 03:C468: 26 1F     ROL ram_001F
C - - - - - 0x00C47A 03:C46A: 0A        ASL
C - - - - - 0x00C47B 03:C46B: 26 1F     ROL ram_001F
C - - - - - 0x00C47D 03:C46D: 0A        ASL
C - - - - - 0x00C47E 03:C46E: 26 1F     ROL ram_001F
C - - - - - 0x00C480 03:C470: 0A        ASL
C - - - - - 0x00C481 03:C471: 26 1F     ROL ram_001F
C - - - - - 0x00C483 03:C473: 85 1E     STA ram_001E
C - - - - - 0x00C485 03:C475: A5 61     LDA ram_stage_scroll_type
C - - - - - 0x00C487 03:C477: D0 04     BNE bra_C47D_vertical
C - - - - - 0x00C489 03:C479: 06 1E     ASL ram_001E
C - - - - - 0x00C48B 03:C47B: 26 1F     ROL ram_001F
bra_C47D_vertical:
C - - - - - 0x00C48D 03:C47D: A5 20     LDA ram_0020
C - - - - - 0x00C48F 03:C47F: 18        CLC
C - - - - - 0x00C490 03:C480: 65 1E     ADC ram_001E
C - - - - - 0x00C492 03:C482: 85 1E     STA ram_001E
C - - - - - 0x00C494 03:C484: A5 1F     LDA ram_001F
C - - - - - 0x00C496 03:C486: 69 00     ADC #$00
C - - - - - 0x00C498 03:C488: 85 1F     STA ram_001F
C - - - - - 0x00C49A 03:C48A: A5 1E     LDA ram_001E
C - - - - - 0x00C49C 03:C48C: 18        CLC
C - - - - - 0x00C49D 03:C48D: 65 98     ADC ram_0098
C - - - - - 0x00C49F 03:C48F: 85 1E     STA ram_001E
C - - - - - 0x00C4A1 03:C491: A5 1F     LDA ram_001F
C - - - - - 0x00C4A3 03:C493: 65 99     ADC ram_0099
C - - - - - 0x00C4A5 03:C495: 85 1F     STA ram_001F
C - - - - - 0x00C4A7 03:C497: A0 00     LDY #$00
C - - - - - 0x00C4A9 03:C499: B1 1E     LDA (ram_001E),Y
C - - - - - 0x00C4AB 03:C49B: 85 23     STA ram_0023
C - - - - - 0x00C4AD 03:C49D: 68        PLA
C - - - - - 0x00C4AE 03:C49E: A8        TAY
C - - - - - 0x00C4AF 03:C49F: A5 23     LDA ram_0023
C - - - - - 0x00C4B1 03:C4A1: 60        RTS



sub_C4A2:
C - - - - - 0x00C4B2 03:C4A2: A5 20     LDA ram_0020
C - - - - - 0x00C4B4 03:C4A4: C9 10     CMP #$10
C - - - - - 0x00C4B6 03:C4A6: 10 17     BPL bra_C4BF
C - - - - - 0x00C4B8 03:C4A8: A5 21     LDA ram_0021
C - - - - - 0x00C4BA 03:C4AA: C9 0F     CMP #$0F
C - - - - - 0x00C4BC 03:C4AC: 10 28     BPL bra_C4D6
C - - - - - 0x00C4BE 03:C4AE: 20 EB C4  JSR sub_C4EB
C - - - - - 0x00C4C1 03:C4B1: A5 20     LDA ram_0020
C - - - - - 0x00C4C3 03:C4B3: 0A        ASL
C - - - - - 0x00C4C4 03:C4B4: 65 1C     ADC ram_001C
C - - - - - 0x00C4C6 03:C4B6: 85 1C     STA ram_001C
C - - - - - 0x00C4C8 03:C4B8: A9 20     LDA #$20
C - - - - - 0x00C4CA 03:C4BA: 65 1D     ADC ram_001D
C - - - - - 0x00C4CC 03:C4BC: 85 1D     STA ram_001D
C - - - - - 0x00C4CE 03:C4BE: 60        RTS
bra_C4BF:
C - - - - - 0x00C4CF 03:C4BF: A5 21     LDA ram_0021
C - - - - - 0x00C4D1 03:C4C1: 20 EB C4  JSR sub_C4EB
C - - - - - 0x00C4D4 03:C4C4: A5 20     LDA ram_0020
C - - - - - 0x00C4D6 03:C4C6: 38        SEC
C - - - - - 0x00C4D7 03:C4C7: E9 10     SBC #$10
C - - - - - 0x00C4D9 03:C4C9: 0A        ASL
C - - - - - 0x00C4DA 03:C4CA: 18        CLC
C - - - - - 0x00C4DB 03:C4CB: 65 1C     ADC ram_001C
C - - - - - 0x00C4DD 03:C4CD: 85 1C     STA ram_001C
C - - - - - 0x00C4DF 03:C4CF: A9 24     LDA #$24
C - - - - - 0x00C4E1 03:C4D1: 65 1D     ADC ram_001D
C - - - - - 0x00C4E3 03:C4D3: 85 1D     STA ram_001D
C - - - - - 0x00C4E5 03:C4D5: 60        RTS
bra_C4D6:
C - - - - - 0x00C4E6 03:C4D6: 38        SEC
C - - - - - 0x00C4E7 03:C4D7: E9 0F     SBC #$0F
C - - - - - 0x00C4E9 03:C4D9: 20 EB C4  JSR sub_C4EB
C - - - - - 0x00C4EC 03:C4DC: A5 20     LDA ram_0020
C - - - - - 0x00C4EE 03:C4DE: 0A        ASL
C - - - - - 0x00C4EF 03:C4DF: 18        CLC
C - - - - - 0x00C4F0 03:C4E0: 65 1C     ADC ram_001C
C - - - - - 0x00C4F2 03:C4E2: 85 1C     STA ram_001C
C - - - - - 0x00C4F4 03:C4E4: A9 28     LDA #$28
C - - - - - 0x00C4F6 03:C4E6: 65 1D     ADC ram_001D
C - - - - - 0x00C4F8 03:C4E8: 85 1D     STA ram_001D
C - - - - - 0x00C4FA 03:C4EA: 60        RTS



sub_C4EB:
C - - - - - 0x00C4FB 03:C4EB: 85 1D     STA ram_001D
C - - - - - 0x00C4FD 03:C4ED: A9 00     LDA #$00
C - - - - - 0x00C4FF 03:C4EF: 85 1C     STA ram_001C
C - - - - - 0x00C501 03:C4F1: 46 1D     LSR ram_001D
C - - - - - 0x00C503 03:C4F3: 66 1C     ROR ram_001C
C - - - - - 0x00C505 03:C4F5: 46 1D     LSR ram_001D
C - - - - - 0x00C507 03:C4F7: 66 1C     ROR ram_001C
C - - - - - 0x00C509 03:C4F9: 60        RTS



sub_C4FA:
C - - - - - 0x00C50A 03:C4FA: 8A        TXA
C - - - - - 0x00C50B 03:C4FB: 48        PHA
C - - - - - 0x00C50C 03:C4FC: 98        TYA
C - - - - - 0x00C50D 03:C4FD: 48        PHA
C - - - - - 0x00C50E 03:C4FE: A5 61     LDA ram_stage_scroll_type
C - - - - - 0x00C510 03:C500: F0 25     BEQ bra_C527_horisontal
C - - - - - 0x00C512 03:C502: A2 00     LDX #$00
C - - - - - 0x00C514 03:C504: A0 00     LDY #$00
bra_C506_loop:
C - - - - - 0x00C516 03:C506: 86 20     STX ram_0020
C - - - - - 0x00C518 03:C508: 84 21     STY ram_0021
C - - - - - 0x00C51A 03:C50A: 20 5F C4  JSR sub_C45F_calculate_byte_from_stage_data
C - - - - - 0x00C51D 03:C50D: 20 0B C4  JSR sub_C40B
C - - - - - 0x00C520 03:C510: E8        INX
C - - - - - 0x00C521 03:C511: E0 10     CPX #$10
C - - - - - 0x00C523 03:C513: D0 F1     BNE bra_C506_loop
C - - - - - 0x00C525 03:C515: A2 00     LDX #$00
C - - - - - 0x00C527 03:C517: C8        INY
C - - - - - 0x00C528 03:C518: C0 1E     CPY #$1E
C - - - - - 0x00C52A 03:C51A: D0 EA     BNE bra_C506_loop
C - - - - - 0x00C52C 03:C51C: 20 2B F2  JSR sub_F22B
C - - - - - 0x00C52F 03:C51F: 20 C1 F5  JSR sub_F5C1
C - - - - - 0x00C532 03:C522: 68        PLA
C - - - - - 0x00C533 03:C523: A8        TAY
C - - - - - 0x00C534 03:C524: 68        PLA
C - - - - - 0x00C535 03:C525: AA        TAX
C - - - - - 0x00C536 03:C526: 60        RTS
bra_C527_horisontal:
C - - - - - 0x00C537 03:C527: A2 00     LDX #$00
C - - - - - 0x00C539 03:C529: A0 00     LDY #$00
bra_C52B_loop:
C - - - - - 0x00C53B 03:C52B: 86 20     STX ram_0020
C - - - - - 0x00C53D 03:C52D: 84 21     STY ram_0021
C - - - - - 0x00C53F 03:C52F: 20 5F C4  JSR sub_C45F_calculate_byte_from_stage_data
C - - - - - 0x00C542 03:C532: 20 0B C4  JSR sub_C40B
C - - - - - 0x00C545 03:C535: E8        INX
C - - - - - 0x00C546 03:C536: E0 20     CPX #$20
C - - - - - 0x00C548 03:C538: D0 F1     BNE bra_C52B_loop
C - - - - - 0x00C54A 03:C53A: A2 00     LDX #$00
C - - - - - 0x00C54C 03:C53C: C8        INY
C - - - - - 0x00C54D 03:C53D: C0 0F     CPY #$0F
C - - - - - 0x00C54F 03:C53F: D0 EA     BNE bra_C52B_loop
C - - - - - 0x00C551 03:C541: 20 2B F2  JSR sub_F22B
C - - - - - 0x00C554 03:C544: 20 C1 F5  JSR sub_F5C1
C - - - - - 0x00C557 03:C547: 68        PLA
C - - - - - 0x00C558 03:C548: A8        TAY
C - - - - - 0x00C559 03:C549: 68        PLA
C - - - - - 0x00C55A 03:C54A: AA        TAX
C - - - - - 0x00C55B 03:C54B: 60        RTS



sub_C54C:
C - - - - - 0x00C55C 03:C54C: 20 38 F6  JSR sub_F638
C - - - - - 0x00C55F 03:C54F: A9 00     LDA #$00
C - - - - - 0x00C561 03:C551: 85 24     STA ram_0024
C - - - - - 0x00C563 03:C553: 20 EA EE  JSR sub_EEEA
C - - - - - 0x00C566 03:C556: 20 CD EE  JSR sub_EECD_wait_1_frm
C - - - - - 0x00C569 03:C559: 20 DF F5  JSR sub_F5DF
C - - - - - 0x00C56C 03:C55C: 20 CD EE  JSR sub_EECD_wait_1_frm
C - - - - - 0x00C56F 03:C55F: 20 A6 C6  JSR sub_C6A6_calculate_stage_data_pointers
C - - - - - 0x00C572 03:C562: 20 F7 C6  JSR sub_C6F7_put_stuff_inside_stage_x_y_pos
C - - - - - 0x00C575 03:C565: A5 9A     LDA ram_prg_bank_2
C - - - - - 0x00C577 03:C567: 20 29 F1  JSR sub_F129
C - - - - - 0x00C57A 03:C56A: 20 FA C4  JSR sub_C4FA
C - - - - - 0x00C57D 03:C56D: 20 82 C5  JSR sub_C582
C - - - - - 0x00C580 03:C570: 20 D1 F5  JSR sub_F5D1
C - - - - - 0x00C583 03:C573: A9 C0     LDA #< ram_pal_buffer_1
C - - - - - 0x00C585 03:C575: 85 1E     STA ram_001E
C - - - - - 0x00C587 03:C577: A9 00     LDA #> ram_pal_buffer_1
C - - - - - 0x00C589 03:C579: 85 1F     STA ram_001F
C - - - - - 0x00C58B 03:C57B: 20 FB F5  JSR sub_F5FB
C - - - - - 0x00C58E 03:C57E: 20 46 F1  JSR sub_F146
C - - - - - 0x00C591 03:C581: 60        RTS



sub_C582:
C - - - - - 0x00C592 03:C582: 20 96 C5  JSR sub_C596
C - - - - - 0x00C595 03:C585: A5 70     LDA ram_0070
C - - - - - 0x00C597 03:C587: 85 26     STA ram_cam_pos_X_lo
C - - - - - 0x00C599 03:C589: A5 71     LDA ram_0071
C - - - - - 0x00C59B 03:C58B: 85 27     STA ram_cam_pos_X_hi
C - - - - - 0x00C59D 03:C58D: A5 72     LDA ram_0072
C - - - - - 0x00C59F 03:C58F: 85 28     STA ram_cam_pos_Y_lo
C - - - - - 0x00C5A1 03:C591: A5 73     LDA ram_0073
C - - - - - 0x00C5A3 03:C593: 85 29     STA ram_cam_pos_Y_hi
C - - - - - 0x00C5A5 03:C595: 60        RTS



sub_C596:
C - - - - - 0x00C5A6 03:C596: A9 00     LDA #$00
C - - - - - 0x00C5A8 03:C598: 85 70     STA ram_0070
C - - - - - 0x00C5AA 03:C59A: 85 71     STA ram_0071
C - - - - - 0x00C5AC 03:C59C: 85 72     STA ram_0072
C - - - - - 0x00C5AE 03:C59E: 85 73     STA ram_0073
C - - - - - 0x00C5B0 03:C5A0: A5 61     LDA ram_stage_scroll_type
C - - - - - 0x00C5B2 03:C5A2: F0 48     BEQ bra_C5EC_horisontal
C - - - - - 0x00C5B4 03:C5A4: AD 03 05  LDA ram_pos_Y_lo_obj
C - - - - - 0x00C5B7 03:C5A7: 38        SEC
C - - - - - 0x00C5B8 03:C5A8: E9 60     SBC #< $0060
C - - - - - 0x00C5BA 03:C5AA: 85 72     STA ram_0072
C - - - - - 0x00C5BC 03:C5AC: AD 04 05  LDA ram_pos_Y_hi_obj
C - - - - - 0x00C5BF 03:C5AF: E9 00     SBC #> $0060
C - - - - - 0x00C5C1 03:C5B1: 85 73     STA ram_0073
C - - - - - 0x00C5C3 03:C5B3: 90 17     BCC bra_C5CC
C - - - - - 0x00C5C5 03:C5B5: A5 72     LDA ram_0072
C - - - - - 0x00C5C7 03:C5B7: 38        SEC
C - - - - - 0x00C5C8 03:C5B8: E9 40     SBC #< $0040
C - - - - - 0x00C5CA 03:C5BA: A5 73     LDA ram_0073
C - - - - - 0x00C5CC 03:C5BC: E9 00     SBC #> $0040
C - - - - - 0x00C5CE 03:C5BE: 90 0C     BCC bra_C5CC
C - - - - - 0x00C5D0 03:C5C0: A5 72     LDA ram_0072
C - - - - - 0x00C5D2 03:C5C2: 38        SEC
C - - - - - 0x00C5D3 03:C5C3: E9 EF     SBC #< $00EF
C - - - - - 0x00C5D5 03:C5C5: A5 73     LDA ram_0073
C - - - - - 0x00C5D7 03:C5C7: E9 00     SBC #> $00EF
C - - - - - 0x00C5D9 03:C5C9: B0 0F     BCS bra_C5DA
C - - - - - 0x00C5DB 03:C5CB: 60        RTS
bra_C5CC:
C - - - - - 0x00C5DC 03:C5CC: A9 00     LDA #$00    ; 0000
C - - - - - 0x00C5DE 03:C5CE: 85 72     STA ram_0072
C - - - - - 0x00C5E0 03:C5D0: 85 73     STA ram_0073
C - - - - - 0x00C5E2 03:C5D2: 60        RTS
bra_C5D3:
C - - - - - 0x00C5E3 03:C5D3: A9 00     LDA #$00    ; 0000
C - - - - - 0x00C5E5 03:C5D5: 85 70     STA ram_0070
C - - - - - 0x00C5E7 03:C5D7: 85 71     STA ram_0071
C - - - - - 0x00C5E9 03:C5D9: 60        RTS
bra_C5DA:
C - - - - - 0x00C5EA 03:C5DA: A9 EF     LDA #< $00EF
C - - - - - 0x00C5EC 03:C5DC: 85 72     STA ram_0072
C - - - - - 0x00C5EE 03:C5DE: A9 00     LDA #> $00EF
C - - - - - 0x00C5F0 03:C5E0: 85 73     STA ram_0073
C - - - - - 0x00C5F2 03:C5E2: 60        RTS
bra_C5E3:
C - - - - - 0x00C5F3 03:C5E3: A9 00     LDA #< $0100
C - - - - - 0x00C5F5 03:C5E5: 85 70     STA ram_0070
C - - - - - 0x00C5F7 03:C5E7: A9 01     LDA #> $0100
C - - - - - 0x00C5F9 03:C5E9: 85 71     STA ram_0071
C - - - - - 0x00C5FB 03:C5EB: 60        RTS
bra_C5EC_horisontal:
C - - - - - 0x00C5FC 03:C5EC: AD 01 05  LDA ram_pos_X_lo_obj
C - - - - - 0x00C5FF 03:C5EF: 38        SEC
C - - - - - 0x00C600 03:C5F0: E9 70     SBC #< $0070
C - - - - - 0x00C602 03:C5F2: 85 70     STA ram_0070
C - - - - - 0x00C604 03:C5F4: AD 02 05  LDA ram_pos_X_hi_obj
C - - - - - 0x00C607 03:C5F7: E9 00     SBC #> $0070
C - - - - - 0x00C609 03:C5F9: 85 71     STA ram_0071
C - - - - - 0x00C60B 03:C5FB: 90 D6     BCC bra_C5D3
C - - - - - 0x00C60D 03:C5FD: A5 70     LDA ram_0070
C - - - - - 0x00C60F 03:C5FF: 38        SEC
C - - - - - 0x00C610 03:C600: E9 40     SBC #< $0040
C - - - - - 0x00C612 03:C602: A5 71     LDA ram_0071
C - - - - - 0x00C614 03:C604: E9 00     SBC #> $0040
C - - - - - 0x00C616 03:C606: 90 CB     BCC bra_C5D3
C - - - - - 0x00C618 03:C608: A5 70     LDA ram_0070
C - - - - - 0x00C61A 03:C60A: 38        SEC
C - - - - - 0x00C61B 03:C60B: E9 00     SBC #< $0100
C - - - - - 0x00C61D 03:C60D: A5 71     LDA ram_0071
C - - - - - 0x00C61F 03:C60F: E9 01     SBC #> $0100
C - - - - - 0x00C621 03:C611: B0 D0     BCS bra_C5E3
C - - - - - 0x00C623 03:C613: 60        RTS



sub_C614:
C - - - - - 0x00C624 03:C614: 98        TYA
C - - - - - 0x00C625 03:C615: 48        PHA
C - - - - - 0x00C626 03:C616: A5 61     LDA ram_stage_scroll_type
C - - - - - 0x00C628 03:C618: F0 06     BEQ bra_C620_horisontal
C - - - - - 0x00C62A 03:C61A: 20 F6 EC  JSR sub_ECF6
C - - - - - 0x00C62D 03:C61D: 4C 23 C6  JMP loc_C623
bra_C620_horisontal:
C - - - - - 0x00C630 03:C620: 20 EC EC  JSR sub_ECEC
loc_C623:
C D 2 - - - 0x00C633 03:C623: A5 6F     LDA ram_stage_type
C - - - - - 0x00C635 03:C625: 0A        ASL
C - - - - - 0x00C636 03:C626: 0A        ASL
C - - - - - 0x00C637 03:C627: 0A        ASL
C - - - - - 0x00C638 03:C628: 0A        ASL
C - - - - - 0x00C639 03:C629: 18        CLC
C - - - - - 0x00C63A 03:C62A: 69 5A     ADC #< tbl_C65A_palette_bg
C - - - - - 0x00C63C 03:C62C: 85 1E     STA ram_001E
C - - - - - 0x00C63E 03:C62E: A9 C6     LDA #> tbl_C65A_palette_bg
C - - - - - 0x00C640 03:C630: 69 00     ADC #$00
C - - - - - 0x00C642 03:C632: 85 1F     STA ram_001F
C - - - - - 0x00C644 03:C634: A0 00     LDY #$00
bra_C636_loop:
C - - - - - 0x00C646 03:C636: B1 1E     LDA (ram_001E),Y
C - - - - - 0x00C648 03:C638: 99 C0 00  STA ram_pal_buffer_1,Y
C - - - - - 0x00C64B 03:C63B: C8        INY
C - - - - - 0x00C64C 03:C63C: C0 10     CPY #$10
C - - - - - 0x00C64E 03:C63E: D0 F6     BNE bra_C636_loop
C - - - - - 0x00C650 03:C640: A0 00     LDY #$00
bra_C642_loop:
C - - - - - 0x00C652 03:C642: B9 8A C6  LDA tbl_C68A_palette_spr,Y
C - - - - - 0x00C655 03:C645: 99 D0 00  STA ram_pal_buffer_1 + $10,Y
C - - - - - 0x00C658 03:C648: C8        INY
C - - - - - 0x00C659 03:C649: C0 10     CPY #$10
C - - - - - 0x00C65B 03:C64B: D0 F5     BNE bra_C642_loop
C - - - - - 0x00C65D 03:C64D: A5 C0     LDA ram_pal_buffer_1
C - - - - - 0x00C65F 03:C64F: 85 D0     STA ram_pal_buffer_1 + $10
C - - - - - 0x00C661 03:C651: 85 D4     STA ram_pal_buffer_1 + $14
C - - - - - 0x00C663 03:C653: 85 D8     STA ram_pal_buffer_1 + $18
C - - - - - 0x00C665 03:C655: 85 DC     STA ram_pal_buffer_1 + $1C
C - - - - - 0x00C667 03:C657: 68        PLA
C - - - - - 0x00C668 03:C658: A8        TAY
C - - - - - 0x00C669 03:C659: 60        RTS



tbl_C65A_palette_bg:
- D 2 - I - 0x00C66A 03:C65A: 0F        .byte $0F, $06, $17, $27   ; 
- D 2 - I - 0x00C66E 03:C65E: 0F        .byte $0F, $0F, $0C, $21   ; 
- D 2 - I - 0x00C672 03:C662: 0F        .byte $0F, $0C, $17, $27   ; 
- D 2 - I - 0x00C676 03:C666: 0F        .byte $0F, $0F, $0C, $30   ; 

- D 2 - I - 0x00C67A 03:C66A: 03        .byte $03, $0F, $21, $30   ; 
- D 2 - I - 0x00C67E 03:C66E: 03        .byte $03, $13, $0F, $07   ; 
- D 2 - I - 0x00C682 03:C672: 03        .byte $03, $03, $2A, $30   ; 
- D 2 - I - 0x00C686 03:C676: 03        .byte $03, $1B, $2B, $36   ; 

- D 2 - I - 0x00C68A 03:C67A: 0F        .byte $0F, $00, $10, $30   ; 
- D 2 - I - 0x00C68E 03:C67E: 0F        .byte $0F, $00, $10, $07   ; 
- D 2 - I - 0x00C692 03:C682: 0F        .byte $0F, $10, $17, $07   ; 
- D 2 - I - 0x00C696 03:C686: 0F        .byte $0F, $30, $27, $07   ; 



tbl_C68A_palette_spr:
- D 2 - - - 0x00C69A 03:C68A: 0F        .byte $0F, $17, $10, $30   ; 
- D 2 - - - 0x00C69E 03:C68E: 0F        .byte $0F, $1A, $29, $30   ; 
- D 2 - - - 0x00C6A2 03:C692: 0F        .byte $0F, $00, $16, $30   ; 
- D 2 - - - 0x00C6A6 03:C696: 0F        .byte $0F, $06, $26, $38   ; 



tbl_C69A_palette:
; 1st byte at each line is a placeholder
- - - - - - 0x00C6AA 03:C69A: 0F        .byte $0F, $21, $16, $37   ; 02
- - - - - - 0x00C6AE 03:C69E: 0F        .byte $0F, $00, $37, $30   ; 03
- - - - - - 0x00C6B2 03:C6A2: 0F        .byte $0F, $17, $26, $30   ; 04



sub_C6A6_calculate_stage_data_pointers:
C - - - - - 0x00C6B6 03:C6A6: A9 00     LDA #con_prg_bank + $00
C - - - - - 0x00C6B8 03:C6A8: 85 9A     STA ram_prg_bank_2
C - - - - - 0x00C6BA 03:C6AA: A5 68     LDA ram_stage_id_1
C - - - - - 0x00C6BC 03:C6AC: C9 20     CMP #$20
C - - - - - 0x00C6BE 03:C6AE: 90 09     BCC bra_C6B9
; 20+
C - - - - - 0x00C6C0 03:C6B0: A9 01     LDA #con_prg_bank + $01
C - - - - - 0x00C6C2 03:C6B2: 85 9A     STA ram_prg_bank_2
C - - - - - 0x00C6C4 03:C6B4: A5 68     LDA ram_stage_id_1
C - - - - - 0x00C6C6 03:C6B6: 38        SEC
C - - - - - 0x00C6C7 03:C6B7: E9 20     SBC #$20
bra_C6B9:
C - - - - - 0x00C6C9 03:C6B9: 85 9D     STA ram_copy_stage_id
C - - - - - 0x00C6CB 03:C6BB: A5 68     LDA ram_stage_id_1
C - - - - - 0x00C6CD 03:C6BD: 20 12 C8  JSR sub_C812_multiply_8bit_by_32h
C - - - - - 0x00C6D0 03:C6C0: A5 1C     LDA ram_001C
C - - - - - 0x00C6D2 03:C6C2: 18        CLC
C - - - - - 0x00C6D3 03:C6C3: 69 80     ADC #< tbl_0x00B390_stage_objects
C - - - - - 0x00C6D5 03:C6C5: 85 9B     STA ram_009B
C - - - - - 0x00C6D7 03:C6C7: A5 1D     LDA ram_001D
C - - - - - 0x00C6D9 03:C6C9: 69 B3     ADC #> tbl_0x00B390_stage_objects
C - - - - - 0x00C6DB 03:C6CB: 85 9C     STA ram_009C
C - - - - - 0x00C6DD 03:C6CD: A5 9D     LDA ram_copy_stage_id
C - - - - - 0x00C6DF 03:C6CF: 85 1D     STA ram_001D
; / 08
C - - - - - 0x00C6E1 03:C6D1: A9 00     LDA #$00
C - - - - - 0x00C6E3 03:C6D3: 46 1D     LSR ram_001D
C - - - - - 0x00C6E5 03:C6D5: 6A        ROR
C - - - - - 0x00C6E6 03:C6D6: 46 1D     LSR ram_001D
C - - - - - 0x00C6E8 03:C6D8: 6A        ROR
C - - - - - 0x00C6E9 03:C6D9: 46 1D     LSR ram_001D
C - - - - - 0x00C6EB 03:C6DB: 6A        ROR
C - - - - - 0x00C6EC 03:C6DC: 85 1C     STA ram_001C
C - - - - - 0x00C6EE 03:C6DE: A9 00     LDA #$00
C - - - - - 0x00C6F0 03:C6E0: 85 98     STA ram_0098
C - - - - - 0x00C6F2 03:C6E2: A5 9D     LDA ram_copy_stage_id
C - - - - - 0x00C6F4 03:C6E4: 0A        ASL
C - - - - - 0x00C6F5 03:C6E5: 85 99     STA ram_0099
C - - - - - 0x00C6F7 03:C6E7: A5 98     LDA ram_0098
C - - - - - 0x00C6F9 03:C6E9: 38        SEC
C - - - - - 0x00C6FA 03:C6EA: E5 1C     SBC ram_001C
C - - - - - 0x00C6FC 03:C6EC: 85 98     STA ram_0098
C - - - - - 0x00C6FE 03:C6EE: A5 99     LDA ram_0099
C - - - - - 0x00C700 03:C6F0: E5 1D     SBC ram_001D
C - - - - - 0x00C702 03:C6F2: 09 80     ORA #$80    ; +8000
C - - - - - 0x00C704 03:C6F4: 85 99     STA ram_0099
C - - - - - 0x00C706 03:C6F6: 60        RTS



sub_C6F7_put_stuff_inside_stage_x_y_pos:
C - - - - - 0x00C707 03:C6F7: A9 00     LDA #$00
C - - - - - 0x00C709 03:C6F9: A8        TAY
bra_C6FA_loop:  ; clear 0500-05FF
C - - - - - 0x00C70A 03:C6FA: 99 00 05  STA $0500,Y
C - - - - - 0x00C70D 03:C6FD: C8        INY
C - - - - - 0x00C70E 03:C6FE: D0 FA     BNE bra_C6FA_loop
C - - - - - 0x00C710 03:C700: A5 9B     LDA ram_009B
C - - - - - 0x00C712 03:C702: 85 1C     STA ram_001C
C - - - - - 0x00C714 03:C704: A5 9C     LDA ram_009C
C - - - - - 0x00C716 03:C706: 85 1D     STA ram_001D
C - - - - - 0x00C718 03:C708: A9 02     LDA #con_prg_bank + $02
C - - - - - 0x00C71A 03:C70A: 20 29 F1  JSR sub_F129
C - - - - - 0x00C71D 03:C70D: A0 00     LDY #$00
C - - - - - 0x00C71F 03:C70F: B1 1C     LDA (ram_001C),Y
C - - - - - 0x00C721 03:C711: C8        INY
C - - - - - 0x00C722 03:C712: 85 61     STA ram_stage_scroll_type
C - - - - - 0x00C724 03:C714: B1 1C     LDA (ram_001C),Y
C - - - - - 0x00C726 03:C716: C8        INY
C - - - - - 0x00C727 03:C717: 85 6F     STA ram_stage_type
C - - - - - 0x00C729 03:C719: 20 14 C6  JSR sub_C614
C - - - - - 0x00C72C 03:C71C: A2 00     LDX #$00
bra_C71E_loop_objects_x_y_pos:
C - - - - - 0x00C72E 03:C71E: A9 00     LDA #con_obj_state_null
C - - - - - 0x00C730 03:C720: 9D 00 05  STA ram_obj_state,X
C - - - - - 0x00C733 03:C723: B1 1C     LDA (ram_001C),Y
C - - - - - 0x00C735 03:C725: 85 20     STA ram_0020
C - - - - - 0x00C737 03:C727: C8        INY
C - - - - - 0x00C738 03:C728: B1 1C     LDA (ram_001C),Y
C - - - - - 0x00C73A 03:C72A: 85 21     STA ram_0021
C - - - - - 0x00C73C 03:C72C: C8        INY
C - - - - - 0x00C73D 03:C72D: A5 20     LDA ram_0020
C - - - - - 0x00C73F 03:C72F: F0 30     BEQ bra_C761_skip_object
C - - - - - 0x00C741 03:C731: 20 FF C7  JSR sub_C7FF_multiply_8bit_by_10h
C - - - - - 0x00C744 03:C734: A5 1E     LDA ram_001E
C - - - - - 0x00C746 03:C736: 9D 01 05  STA ram_pos_X_lo_obj,X
C - - - - - 0x00C749 03:C739: 9D 05 05  STA ram_obj_0505,X
C - - - - - 0x00C74C 03:C73C: A5 1F     LDA ram_001F
C - - - - - 0x00C74E 03:C73E: 9D 02 05  STA ram_pos_X_hi_obj,X
C - - - - - 0x00C751 03:C741: 9D 06 05  STA ram_obj_0506,X
C - - - - - 0x00C754 03:C744: A5 21     LDA ram_0021
C - - - - - 0x00C756 03:C746: 20 FF C7  JSR sub_C7FF_multiply_8bit_by_10h
C - - - - - 0x00C759 03:C749: A5 1E     LDA ram_001E
C - - - - - 0x00C75B 03:C74B: 38        SEC
C - - - - - 0x00C75C 03:C74C: E9 08     SBC #< $0008
C - - - - - 0x00C75E 03:C74E: 9D 03 05  STA ram_pos_Y_lo_obj,X
C - - - - - 0x00C761 03:C751: 9D 07 05  STA ram_obj_0507,X
C - - - - - 0x00C764 03:C754: A5 1F     LDA ram_001F
C - - - - - 0x00C766 03:C756: E9 00     SBC #> $0008
C - - - - - 0x00C768 03:C758: 9D 04 05  STA ram_pos_Y_hi_obj,X
C - - - - - 0x00C76B 03:C75B: 9D 08 05  STA ram_obj_0508,X
C - - - - - 0x00C76E 03:C75E: 20 C5 C7  JSR sub_C7C5
bra_C761_skip_object:
C - - - - - 0x00C771 03:C761: 8A        TXA
C - - - - - 0x00C772 03:C762: 18        CLC
C - - - - - 0x00C773 03:C763: 69 20     ADC #$20
C - - - - - 0x00C775 03:C765: AA        TAX
C - - - - - 0x00C776 03:C766: D0 B6     BNE bra_C71E_loop_objects_x_y_pos
C - - - - - 0x00C778 03:C768: A2 00     LDX #$00
bra_C76A_loop_carrots_x_y_pos:
C - - - - - 0x00C77A 03:C76A: B1 1C     LDA (ram_001C),Y
C - - - - - 0x00C77C 03:C76C: 9D 00 06  STA ram_pos_X_carrot,X
C - - - - - 0x00C77F 03:C76F: E8        INX
C - - - - - 0x00C780 03:C770: C8        INY
C - - - - - 0x00C781 03:C771: E0 10     CPX #$10
C - - - - - 0x00C783 03:C773: D0 F5     BNE bra_C76A_loop_carrots_x_y_pos
C - - - - - 0x00C785 03:C775: A2 00     LDX #$00
bra_C777_loop_items___x_y_id:
C - - - - - 0x00C787 03:C777: A9 00     LDA #$00    ; con_item_state_null
C - - - - - 0x00C789 03:C779: 9D 10 06  STA ram_item_state,X
C - - - - - 0x00C78C 03:C77C: 9D 16 06  STA ram_item_move_timer,X
C - - - - - 0x00C78F 03:C77F: 9D 17 06  STA ram_item_destr_timer,X
C - - - - - 0x00C792 03:C782: B1 1C     LDA (ram_001C),Y
C - - - - - 0x00C794 03:C784: 85 20     STA ram_0020
C - - - - - 0x00C796 03:C786: C8        INY
C - - - - - 0x00C797 03:C787: B1 1C     LDA (ram_001C),Y
C - - - - - 0x00C799 03:C789: 85 21     STA ram_0021
C - - - - - 0x00C79B 03:C78B: C8        INY
C - - - - - 0x00C79C 03:C78C: B1 1C     LDA (ram_001C),Y
C - - - - - 0x00C79E 03:C78E: 9D 15 06  STA ram_item_id,X
C - - - - - 0x00C7A1 03:C791: A5 20     LDA ram_0020
C - - - - - 0x00C7A3 03:C793: F0 21     BEQ bra_C7B6_skip_item
C - - - - - 0x00C7A5 03:C795: 20 FF C7  JSR sub_C7FF_multiply_8bit_by_10h
C - - - - - 0x00C7A8 03:C798: A5 1E     LDA ram_001E
C - - - - - 0x00C7AA 03:C79A: 9D 11 06  STA ram_pos_X_lo_item,X
C - - - - - 0x00C7AD 03:C79D: A5 1F     LDA ram_001F
C - - - - - 0x00C7AF 03:C79F: 9D 12 06  STA ram_pos_X_hi_item,X
C - - - - - 0x00C7B2 03:C7A2: A5 21     LDA ram_0021
C - - - - - 0x00C7B4 03:C7A4: 20 FF C7  JSR sub_C7FF_multiply_8bit_by_10h
C - - - - - 0x00C7B7 03:C7A7: A5 1E     LDA ram_001E
C - - - - - 0x00C7B9 03:C7A9: 9D 13 06  STA ram_pos_Y_lo_item,X
C - - - - - 0x00C7BC 03:C7AC: A5 1F     LDA ram_001F
C - - - - - 0x00C7BE 03:C7AE: 9D 14 06  STA ram_pos_Y_hi_item,X
C - - - - - 0x00C7C1 03:C7B1: A9 80     LDA #con_item_state_exists
C - - - - - 0x00C7C3 03:C7B3: 9D 10 06  STA ram_item_state,X
bra_C7B6_skip_item:
C - - - - - 0x00C7C6 03:C7B6: C8        INY
C - - - - - 0x00C7C7 03:C7B7: C8        INY
C - - - - - 0x00C7C8 03:C7B8: 8A        TXA
C - - - - - 0x00C7C9 03:C7B9: 18        CLC
C - - - - - 0x00C7CA 03:C7BA: 69 08     ADC #$08
C - - - - - 0x00C7CC 03:C7BC: AA        TAX
C - - - - - 0x00C7CD 03:C7BD: E0 20     CPX #$20
C - - - - - 0x00C7CF 03:C7BF: D0 B6     BNE bra_C777_loop_items___x_y_id
C - - - - - 0x00C7D1 03:C7C1: 20 46 F1  JSR sub_F146
C - - - - - 0x00C7D4 03:C7C4: 60        RTS



sub_C7C5:
C - - - - - 0x00C7D5 03:C7C5: 98        TYA
C - - - - - 0x00C7D6 03:C7C6: 48        PHA
C - - - - - 0x00C7D7 03:C7C7: A9 80     LDA #con_obj_state_exists
C - - - - - 0x00C7D9 03:C7C9: 9D 00 05  STA ram_obj_state,X
C - - - - - 0x00C7DC 03:C7CC: 8A        TXA
C - - - - - 0x00C7DD 03:C7CD: 4A        LSR
C - - - - - 0x00C7DE 03:C7CE: 4A        LSR
C - - - - - 0x00C7DF 03:C7CF: 4A        LSR
C - - - - - 0x00C7E0 03:C7D0: 4A        LSR
C - - - - - 0x00C7E1 03:C7D1: 4A        LSR
C - - - - - 0x00C7E2 03:C7D2: A8        TAY
C - - - - - 0x00C7E3 03:C7D3: B9 F7 C7  LDA tbl_C7F7,Y
C - - - - - 0x00C7E6 03:C7D6: 9D 09 05  STA ram_obj_0509,X
C - - - - - 0x00C7E9 03:C7D9: F0 19     BEQ bra_C7F4    ; if it is player
C - - - - - 0x00C7EB 03:C7DB: C9 01     CMP #$01
C - - - - - 0x00C7ED 03:C7DD: F0 15     BEQ bra_C7F4
C - - - - - 0x00C7EF 03:C7DF: 38        SEC
C - - - - - 0x00C7F0 03:C7E0: E9 02     SBC #$02
C - - - - - 0x00C7F2 03:C7E2: 0A        ASL
C - - - - - 0x00C7F3 03:C7E3: 0A        ASL
C - - - - - 0x00C7F4 03:C7E4: A8        TAY
C - - - - - 0x00C7F5 03:C7E5: B9 9B C6  LDA tbl_C69A_palette + $01,Y
C - - - - - 0x00C7F8 03:C7E8: 85 D9     STA ram_pal_buffer_1 + $19
C - - - - - 0x00C7FA 03:C7EA: B9 9C C6  LDA tbl_C69A_palette + $02,Y
C - - - - - 0x00C7FD 03:C7ED: 85 DA     STA ram_pal_buffer_1 + $1A
C - - - - - 0x00C7FF 03:C7EF: B9 9D C6  LDA tbl_C69A_palette + $03,Y
C - - - - - 0x00C802 03:C7F2: 85 DB     STA ram_pal_buffer_1 + $1B
bra_C7F4:
C - - - - - 0x00C804 03:C7F4: 68        PLA
C - - - - - 0x00C805 03:C7F5: A8        TAY
C - - - - - 0x00C806 03:C7F6: 60        RTS



tbl_C7F7:
- D 2 - - - 0x00C807 03:C7F7: 00        .byte $00   ; 00 
- D 2 - - - 0x00C808 03:C7F8: 01        .byte $01   ; 20 
- D 2 - - - 0x00C809 03:C7F9: 01        .byte $01   ; 40 
- D 2 - - - 0x00C80A 03:C7FA: 01        .byte $01   ; 60 
- D 2 - - - 0x00C80B 03:C7FB: 01        .byte $01   ; 80 
- D 2 - - - 0x00C80C 03:C7FC: 02        .byte $02   ; A0 
- D 2 - - - 0x00C80D 03:C7FD: 03        .byte $03   ; C0 
- D 2 - - - 0x00C80E 03:C7FE: 04        .byte $04   ; E0 



sub_C7FF_multiply_8bit_by_10h:
; result = 001E (lo) + 001F (hi)
C - - - - - 0x00C80F 03:C7FF: 85 1E     STA ram_001E
C - - - - - 0x00C811 03:C801: A9 00     LDA #$00
C - - - - - 0x00C813 03:C803: 06 1E     ASL ram_001E
C - - - - - 0x00C815 03:C805: 2A        ROL
C - - - - - 0x00C816 03:C806: 06 1E     ASL ram_001E
C - - - - - 0x00C818 03:C808: 2A        ROL
C - - - - - 0x00C819 03:C809: 06 1E     ASL ram_001E
C - - - - - 0x00C81B 03:C80B: 2A        ROL
C - - - - - 0x00C81C 03:C80C: 06 1E     ASL ram_001E
C - - - - - 0x00C81E 03:C80E: 2A        ROL
C - - - - - 0x00C81F 03:C80F: 85 1F     STA ram_001F
C - - - - - 0x00C821 03:C811: 60        RTS



sub_C812_multiply_8bit_by_32h:
; result = 001C (lo) + 001D (hi)
C - - - - - 0x00C822 03:C812: 85 1E     STA ram_001E
C - - - - - 0x00C824 03:C814: 48        PHA
C - - - - - 0x00C825 03:C815: A9 00     LDA #$00
C - - - - - 0x00C827 03:C817: 06 1E     ASL ram_001E
C - - - - - 0x00C829 03:C819: 2A        ROL
C - - - - - 0x00C82A 03:C81A: 06 1E     ASL ram_001E
C - - - - - 0x00C82C 03:C81C: 2A        ROL
C - - - - - 0x00C82D 03:C81D: 06 1E     ASL ram_001E
C - - - - - 0x00C82F 03:C81F: 2A        ROL
C - - - - - 0x00C830 03:C820: 06 1E     ASL ram_001E
C - - - - - 0x00C832 03:C822: 2A        ROL
C - - - - - 0x00C833 03:C823: 85 1D     STA ram_001D
C - - - - - 0x00C835 03:C825: A5 1E     LDA ram_001E
C - - - - - 0x00C837 03:C827: 85 1C     STA ram_001C
C - - - - - 0x00C839 03:C829: A5 1D     LDA ram_001D
C - - - - - 0x00C83B 03:C82B: 06 1E     ASL ram_001E
C - - - - - 0x00C83D 03:C82D: 2A        ROL
C - - - - - 0x00C83E 03:C82E: 85 1F     STA ram_001F
C - - - - - 0x00C840 03:C830: A5 1E     LDA ram_001E
C - - - - - 0x00C842 03:C832: 18        CLC
C - - - - - 0x00C843 03:C833: 65 1C     ADC ram_001C
C - - - - - 0x00C845 03:C835: 85 1C     STA ram_001C
C - - - - - 0x00C847 03:C837: A5 1F     LDA ram_001F
C - - - - - 0x00C849 03:C839: 65 1D     ADC ram_001D
C - - - - - 0x00C84B 03:C83B: 85 1D     STA ram_001D
C - - - - - 0x00C84D 03:C83D: 68        PLA
C - - - - - 0x00C84E 03:C83E: 0A        ASL
C - - - - - 0x00C84F 03:C83F: 18        CLC
C - - - - - 0x00C850 03:C840: 65 1C     ADC ram_001C
C - - - - - 0x00C852 03:C842: 85 1C     STA ram_001C
C - - - - - 0x00C854 03:C844: A5 1D     LDA ram_001D
C - - - - - 0x00C856 03:C846: 69 00     ADC #$00
C - - - - - 0x00C858 03:C848: 85 1D     STA ram_001D
C - - - - - 0x00C85A 03:C84A: 60        RTS



sub_C84B:
C - - - - - 0x00C85B 03:C84B: A2 00     LDX #$00
bra_C84D_loop:
C - - - - - 0x00C85D 03:C84D: BD 00 05  LDA ram_obj_state,X
C - - - - - 0x00C860 03:C850: 10 17     BPL bra_C869    ; if not exists     con_obj_state_exists
C - - - - - 0x00C862 03:C852: 29 20     AND #con_obj_state_20
C - - - - - 0x00C864 03:C854: D0 13     BNE bra_C869
C - - - - - 0x00C866 03:C856: 20 D4 CA  JSR sub_CAD4
C - - - - - 0x00C869 03:C859: 20 9D CB  JSR sub_CB9D
C - - - - - 0x00C86C 03:C85C: E0 00     CPX #$00
C - - - - - 0x00C86E 03:C85E: D0 06     BNE bra_C866_it_is_enemy
C - - - - - 0x00C870 03:C860: 20 9C C9  JSR sub_C99C
C - - - - - 0x00C873 03:C863: 20 3A CA  JSR sub_CA3A
bra_C866_it_is_enemy:
C - - - - - 0x00C876 03:C866: 20 71 C8  JSR sub_C871
bra_C869:
C - - - - - 0x00C879 03:C869: 8A        TXA
C - - - - - 0x00C87A 03:C86A: 18        CLC
C - - - - - 0x00C87B 03:C86B: 69 20     ADC #$20
C - - - - - 0x00C87D 03:C86D: AA        TAX
C - - - - - 0x00C87E 03:C86E: D0 DD     BNE bra_C84D_loop
C - - - - - 0x00C880 03:C870: 60        RTS



sub_C871:
C - - - - - 0x00C881 03:C871: E0 00     CPX #$00
C - - - - - 0x00C883 03:C873: F0 08     BEQ bra_C87D    ; if it is player
C - - - - - 0x00C885 03:C875: BD 14 05  LDA ram_obj_0514,X
C - - - - - 0x00C888 03:C878: 29 03     AND #$03
C - - - - - 0x00C88A 03:C87A: D0 01     BNE bra_C87D
C - - - - - 0x00C88C 03:C87C: 60        RTS
bra_C87D:
C - - - - - 0x00C88D 03:C87D: BD 00 05  LDA ram_obj_state,X
C - - - - - 0x00C890 03:C880: 4A        LSR
C - - - - - 0x00C891 03:C881: 90 23     BCC bra_C8A6    ; if con_obj_state_01 = 0
C - - - - - 0x00C893 03:C883: 60        RTS



sub_C884:
C - - - - - 0x00C894 03:C884: BD 01 05  LDA ram_pos_X_lo_obj,X
C - - - - - 0x00C897 03:C887: 18        CLC
C - - - - - 0x00C898 03:C888: 69 10     ADC #< $0010
C - - - - - 0x00C89A 03:C88A: 85 6A     STA ram_006A
C - - - - - 0x00C89C 03:C88C: BD 02 05  LDA ram_pos_X_hi_obj,X
C - - - - - 0x00C89F 03:C88F: 69 00     ADC #> $0010
C - - - - - 0x00C8A1 03:C891: 85 6B     STA ram_006B
C - - - - - 0x00C8A3 03:C893: BD 03 05  LDA ram_pos_Y_lo_obj,X
C - - - - - 0x00C8A6 03:C896: 18        CLC
C - - - - - 0x00C8A7 03:C897: 69 18     ADC #< $0018
C - - - - - 0x00C8A9 03:C899: 85 6C     STA ram_006C
C - - - - - 0x00C8AB 03:C89B: BD 04 05  LDA ram_pos_Y_hi_obj,X
C - - - - - 0x00C8AE 03:C89E: 69 00     ADC #> $0018
C - - - - - 0x00C8B0 03:C8A0: 85 6D     STA ram_006D
C - - - - - 0x00C8B2 03:C8A2: 20 5F C3  JSR sub_C35F
C - - - - - 0x00C8B5 03:C8A5: 60        RTS



bra_C8A6:
C - - - - - 0x00C8B6 03:C8A6: BD 01 05  LDA ram_pos_X_lo_obj,X
C - - - - - 0x00C8B9 03:C8A9: 29 0F     AND #$0F
C - - - - - 0x00C8BB 03:C8AB: F0 21     BEQ bra_C8CE
C - - - - - 0x00C8BD 03:C8AD: BD 00 05  LDA ram_obj_state,X
C - - - - - 0x00C8C0 03:C8B0: 29 08     AND #con_obj_state_08
C - - - - - 0x00C8C2 03:C8B2: D0 09     BNE bra_C8BD
C - - - - - 0x00C8C4 03:C8B4: BD 01 05  LDA ram_pos_X_lo_obj,X
C - - - - - 0x00C8C7 03:C8B7: 29 0F     AND #$0F
C - - - - - 0x00C8C9 03:C8B9: C9 0F     CMP #$0F
C - - - - - 0x00C8CB 03:C8BB: F0 5B     BEQ bra_C918
bra_C8BD:
C - - - - - 0x00C8CD 03:C8BD: 20 84 C8  JSR sub_C884
C - - - - - 0x00C8D0 03:C8C0: A5 6E     LDA ram_006E
C - - - - - 0x00C8D2 03:C8C2: C9 01     CMP #$01
C - - - - - 0x00C8D4 03:C8C4: F0 32     BEQ bra_C8F8
C - - - - - 0x00C8D6 03:C8C6: C9 02     CMP #$02
C - - - - - 0x00C8D8 03:C8C8: F0 2E     BEQ bra_C8F8
C - - - - - 0x00C8DA 03:C8CA: A5 6E     LDA ram_006E
C - - - - - 0x00C8DC 03:C8CC: 30 2A     BMI bra_C8F8
bra_C8CE:
C - - - - - 0x00C8DE 03:C8CE: BD 01 05  LDA ram_pos_X_lo_obj,X
C - - - - - 0x00C8E1 03:C8D1: 85 6A     STA ram_006A
C - - - - - 0x00C8E3 03:C8D3: BD 02 05  LDA ram_pos_X_hi_obj,X
C - - - - - 0x00C8E6 03:C8D6: 85 6B     STA ram_006B
C - - - - - 0x00C8E8 03:C8D8: BD 03 05  LDA ram_pos_Y_lo_obj,X
C - - - - - 0x00C8EB 03:C8DB: 18        CLC
C - - - - - 0x00C8EC 03:C8DC: 69 18     ADC #< $0018
C - - - - - 0x00C8EE 03:C8DE: 85 6C     STA ram_006C
C - - - - - 0x00C8F0 03:C8E0: BD 04 05  LDA ram_pos_Y_hi_obj,X
C - - - - - 0x00C8F3 03:C8E3: 69 00     ADC #> $0018
C - - - - - 0x00C8F5 03:C8E5: 85 6D     STA ram_006D
C - - - - - 0x00C8F7 03:C8E7: 20 5F C3  JSR sub_C35F
C - - - - - 0x00C8FA 03:C8EA: A5 6E     LDA ram_006E
C - - - - - 0x00C8FC 03:C8EC: C9 01     CMP #$01
C - - - - - 0x00C8FE 03:C8EE: F0 08     BEQ bra_C8F8
C - - - - - 0x00C900 03:C8F0: C9 02     CMP #$02
C - - - - - 0x00C902 03:C8F2: F0 04     BEQ bra_C8F8
C - - - - - 0x00C904 03:C8F4: A5 6E     LDA ram_006E
C - - - - - 0x00C906 03:C8F6: 10 42     BPL bra_C93A
bra_C8F8:
C - - - - - 0x00C908 03:C8F8: BD 12 05  LDA ram_obj_0512,X
C - - - - - 0x00C90B 03:C8FB: 29 BF     AND #$BF
C - - - - - 0x00C90D 03:C8FD: 9D 12 05  STA ram_obj_0512,X
C - - - - - 0x00C910 03:C900: BD 00 05  LDA ram_obj_state,X
C - - - - - 0x00C913 03:C903: 29 02     AND #con_obj_state_02
; bzk optimize, BEQ to 0x00C927
C - - - - - 0x00C915 03:C905: F0 08     BEQ bra_C90F
C - - - - - 0x00C917 03:C907: BD 12 05  LDA ram_obj_0512,X
C - - - - - 0x00C91A 03:C90A: 09 40     ORA #$40
C - - - - - 0x00C91C 03:C90C: 9D 12 05  STA ram_obj_0512,X
bra_C90F:
C - - - - - 0x00C91F 03:C90F: BD 00 05  LDA ram_obj_state,X
C - - - - - 0x00C922 03:C912: 29 FD     AND #con_obj_state_02 ^ $FF
C - - - - - 0x00C924 03:C914: 9D 00 05  STA ram_obj_state,X
C - - - - - 0x00C927 03:C917: 60        RTS
bra_C918:
C - - - - - 0x00C928 03:C918: 20 84 C8  JSR sub_C884
C - - - - - 0x00C92B 03:C91B: A5 6E     LDA ram_006E
C - - - - - 0x00C92D 03:C91D: C9 01     CMP #$01
C - - - - - 0x00C92F 03:C91F: F0 D7     BEQ bra_C8F8
C - - - - - 0x00C931 03:C921: C9 02     CMP #$02
C - - - - - 0x00C933 03:C923: F0 D3     BEQ bra_C8F8
C - - - - - 0x00C935 03:C925: A5 6E     LDA ram_006E
C - - - - - 0x00C937 03:C927: 30 CF     BMI bra_C8F8
C - - - - - 0x00C939 03:C929: BD 01 05  LDA ram_pos_X_lo_obj,X
C - - - - - 0x00C93C 03:C92C: 18        CLC
C - - - - - 0x00C93D 03:C92D: 69 01     ADC #< $0001
C - - - - - 0x00C93F 03:C92F: 9D 01 05  STA ram_pos_X_lo_obj,X
C - - - - - 0x00C942 03:C932: BD 02 05  LDA ram_pos_X_hi_obj,X
C - - - - - 0x00C945 03:C935: 69 00     ADC #> $0001
C - - - - - 0x00C947 03:C937: 9D 02 05  STA ram_pos_X_hi_obj,X
bra_C93A:
C - - - - - 0x00C94A 03:C93A: BD 03 05  LDA ram_pos_Y_lo_obj,X
C - - - - - 0x00C94D 03:C93D: 29 01     AND #$01
C - - - - - 0x00C94F 03:C93F: F0 09     BEQ bra_C94A
C - - - - - 0x00C951 03:C941: BD 03 05  LDA ram_pos_Y_lo_obj,X
C - - - - - 0x00C954 03:C944: 18        CLC
C - - - - - 0x00C955 03:C945: 69 01     ADC #< $0001
C - - - - - 0x00C957 03:C947: 4C 50 C9  JMP loc_C950
bra_C94A:
C - - - - - 0x00C95A 03:C94A: BD 03 05  LDA ram_pos_Y_lo_obj,X
C - - - - - 0x00C95D 03:C94D: 18        CLC
C - - - - - 0x00C95E 03:C94E: 69 02     ADC #< $0002
loc_C950:
C D 2 - - - 0x00C960 03:C950: 9D 03 05  STA ram_pos_Y_lo_obj,X
C - - - - - 0x00C963 03:C953: BD 04 05  LDA ram_pos_Y_hi_obj,X
C - - - - - 0x00C966 03:C956: 69 00     ADC #$00
C - - - - - 0x00C968 03:C958: 9D 04 05  STA ram_pos_Y_hi_obj,X
C - - - - - 0x00C96B 03:C95B: BD 00 05  LDA ram_obj_state,X
C - - - - - 0x00C96E 03:C95E: 09 02     ORA #con_obj_state_02
C - - - - - 0x00C970 03:C960: 9D 00 05  STA ram_obj_state,X
C - - - - - 0x00C973 03:C963: 20 67 C9  JSR sub_C967
C - - - - - 0x00C976 03:C966: 60        RTS



sub_C967:
C - - - - - 0x00C977 03:C967: BD 01 05  LDA ram_pos_X_lo_obj,X
C - - - - - 0x00C97A 03:C96A: 29 0F     AND #$0F
C - - - - - 0x00C97C 03:C96C: F0 01     BEQ bra_C96F
C - - - - - 0x00C97E 03:C96E: 60        RTS
bra_C96F:
C - - - - - 0x00C97F 03:C96F: BD 03 05  LDA ram_pos_Y_lo_obj,X
C - - - - - 0x00C982 03:C972: 29 0F     AND #$0F
C - - - - - 0x00C984 03:C974: C9 08     CMP #$08
C - - - - - 0x00C986 03:C976: F0 01     BEQ bra_C979
C - - - - - 0x00C988 03:C978: 60        RTS
bra_C979:
C - - - - - 0x00C989 03:C979: BD 00 05  LDA ram_obj_state,X
C - - - - - 0x00C98C 03:C97C: 29 08     AND #con_obj_state_08
C - - - - - 0x00C98E 03:C97E: F0 01     BEQ bra_C981
C - - - - - 0x00C990 03:C980: 60        RTS
bra_C981:
C - - - - - 0x00C991 03:C981: 20 DE CA  JSR sub_CADE
C - - - - - 0x00C994 03:C984: BD 00 05  LDA ram_obj_state,X
C - - - - - 0x00C997 03:C987: 4A        LSR
C - - - - - 0x00C998 03:C988: B0 01     BCS bra_C98B    ; if con_obj_state_01 = 1
C - - - - - 0x00C99A 03:C98A: 60        RTS
bra_C98B:
C - - - - - 0x00C99B 03:C98B: BD 00 05  LDA ram_obj_state,X
C - - - - - 0x00C99E 03:C98E: 29 FD     AND #con_obj_state_02 ^ $FF
C - - - - - 0x00C9A0 03:C990: 9D 00 05  STA ram_obj_state,X
C - - - - - 0x00C9A3 03:C993: BD 12 05  LDA ram_obj_0512,X
C - - - - - 0x00C9A6 03:C996: 09 40     ORA #$40
C - - - - - 0x00C9A8 03:C998: 9D 12 05  STA ram_obj_0512,X
C - - - - - 0x00C9AB 03:C99B: 60        RTS



sub_C99C:
C - - - - - 0x00C9AC 03:C99C: 20 93 CB  JSR sub_CB93
C - - - - - 0x00C9AF 03:C99F: BD 0B 05  LDA ram_obj_btn,X
C - - - - - 0x00C9B2 03:C9A2: 29 08     AND #con_btn_Up
C - - - - - 0x00C9B4 03:C9A4: D0 01     BNE bra_C9A7_up
C - - - - - 0x00C9B6 03:C9A6: 60        RTS
bra_C9A7_up:
C - - - - - 0x00C9B7 03:C9A7: BD 01 05  LDA ram_pos_X_lo_obj,X
C - - - - - 0x00C9BA 03:C9AA: 29 0F     AND #$0F
C - - - - - 0x00C9BC 03:C9AC: C9 0C     CMP #$0C
C - - - - - 0x00C9BE 03:C9AE: 30 01     BMI bra_C9B1
C - - - - - 0x00C9C0 03:C9B0: 60        RTS
bra_C9B1:
C - - - - - 0x00C9C1 03:C9B1: BD 03 05  LDA ram_pos_Y_lo_obj,X
C - - - - - 0x00C9C4 03:C9B4: 29 0F     AND #$0F
C - - - - - 0x00C9C6 03:C9B6: C9 08     CMP #$08
C - - - - - 0x00C9C8 03:C9B8: F0 01     BEQ bra_C9BB
- - - - - - 0x00C9CA 03:C9BA: 60        RTS
bra_C9BB:
C - - - - - 0x00C9CB 03:C9BB: BD 01 05  LDA ram_pos_X_lo_obj,X
C - - - - - 0x00C9CE 03:C9BE: 18        CLC
C - - - - - 0x00C9CF 03:C9BF: 69 10     ADC #< $0010
C - - - - - 0x00C9D1 03:C9C1: 85 6A     STA ram_006A
C - - - - - 0x00C9D3 03:C9C3: BD 02 05  LDA ram_pos_X_hi_obj,X
C - - - - - 0x00C9D6 03:C9C6: 69 00     ADC #> $0010
C - - - - - 0x00C9D8 03:C9C8: 85 6B     STA ram_006B
C - - - - - 0x00C9DA 03:C9CA: BD 03 05  LDA ram_pos_Y_lo_obj,X
C - - - - - 0x00C9DD 03:C9CD: 18        CLC
C - - - - - 0x00C9DE 03:C9CE: 69 18     ADC #< $0018
C - - - - - 0x00C9E0 03:C9D0: 85 6C     STA ram_006C
C - - - - - 0x00C9E2 03:C9D2: BD 04 05  LDA ram_pos_Y_hi_obj,X
C - - - - - 0x00C9E5 03:C9D5: 69 00     ADC #> $0018
C - - - - - 0x00C9E7 03:C9D7: 85 6D     STA ram_006D
C - - - - - 0x00C9E9 03:C9D9: 20 5F C3  JSR sub_C35F
C - - - - - 0x00C9EC 03:C9DC: A5 6E     LDA ram_006E
C - - - - - 0x00C9EE 03:C9DE: C9 80     CMP #$80
C - - - - - 0x00C9F0 03:C9E0: F0 01     BEQ bra_C9E3
C - - - - - 0x00C9F2 03:C9E2: 60        RTS
bra_C9E3:
C - - - - - 0x00C9F3 03:C9E3: BD 01 05  LDA ram_pos_X_lo_obj,X
C - - - - - 0x00C9F6 03:C9E6: 18        CLC
C - - - - - 0x00C9F7 03:C9E7: 69 10     ADC #< $0010
C - - - - - 0x00C9F9 03:C9E9: 85 6A     STA ram_006A
C - - - - - 0x00C9FB 03:C9EB: BD 02 05  LDA ram_pos_X_hi_obj,X
C - - - - - 0x00C9FE 03:C9EE: 69 00     ADC #> $0010
C - - - - - 0x00CA00 03:C9F0: 85 6B     STA ram_006B
C - - - - - 0x00CA02 03:C9F2: BD 03 05  LDA ram_pos_Y_lo_obj,X
C - - - - - 0x00CA05 03:C9F5: 18        CLC
C - - - - - 0x00CA06 03:C9F6: 69 08     ADC #< $0008
C - - - - - 0x00CA08 03:C9F8: 85 6C     STA ram_006C
C - - - - - 0x00CA0A 03:C9FA: BD 04 05  LDA ram_pos_Y_hi_obj,X
C - - - - - 0x00CA0D 03:C9FD: 69 00     ADC #> $0008
C - - - - - 0x00CA0F 03:C9FF: 85 6D     STA ram_006D
C - - - - - 0x00CA11 03:CA01: 20 5F C3  JSR sub_C35F
C - - - - - 0x00CA14 03:CA04: A5 6E     LDA ram_006E
C - - - - - 0x00CA16 03:CA06: C9 02     CMP #$02
C - - - - - 0x00CA18 03:CA08: F0 01     BEQ bra_CA0B
C - - - - - 0x00CA1A 03:CA0A: 60        RTS
bra_CA0B:
C - - - - - 0x00CA1B 03:CA0B: BD 03 05  LDA ram_pos_Y_lo_obj,X
C - - - - - 0x00CA1E 03:CA0E: 29 F8     AND #$F8
C - - - - - 0x00CA20 03:CA10: 9D 03 05  STA ram_pos_Y_lo_obj,X
C - - - - - 0x00CA23 03:CA13: 48        PHA
C - - - - - 0x00CA24 03:CA14: BD 01 05  LDA ram_pos_X_lo_obj,X
C - - - - - 0x00CA27 03:CA17: 29 0F     AND #$0F
C - - - - - 0x00CA29 03:CA19: 18        CLC
C - - - - - 0x00CA2A 03:CA1A: 69 01     ADC #$01
C - - - - - 0x00CA2C 03:CA1C: 9D 03 05  STA ram_pos_Y_lo_obj,X
C - - - - - 0x00CA2F 03:CA1F: 68        PLA
C - - - - - 0x00CA30 03:CA20: 38        SEC
C - - - - - 0x00CA31 03:CA21: FD 03 05  SBC ram_pos_Y_lo_obj,X
C - - - - - 0x00CA34 03:CA24: 9D 03 05  STA ram_pos_Y_lo_obj,X
C - - - - - 0x00CA37 03:CA27: BD 04 05  LDA ram_pos_Y_hi_obj,X
C - - - - - 0x00CA3A 03:CA2A: E9 00     SBC #$00
C - - - - - 0x00CA3C 03:CA2C: 9D 04 05  STA ram_pos_Y_hi_obj,X
C - - - - - 0x00CA3F 03:CA2F: BD 00 05  LDA ram_obj_state,X
C - - - - - 0x00CA42 03:CA32: 29 E7     AND #(con_obj_state_10 + con_obj_state_08) ^ $FF
C - - - - - 0x00CA44 03:CA34: 09 01     ORA #con_obj_state_01
C - - - - - 0x00CA46 03:CA36: 9D 00 05  STA ram_obj_state,X
C - - - - - 0x00CA49 03:CA39: 60        RTS



sub_CA3A:
C - - - - - 0x00CA4A 03:CA3A: 20 93 CB  JSR sub_CB93
C - - - - - 0x00CA4D 03:CA3D: BD 0B 05  LDA ram_obj_btn,X
C - - - - - 0x00CA50 03:CA40: 29 08     AND #con_btn_Up
C - - - - - 0x00CA52 03:CA42: D0 01     BNE bra_CA45_up
C - - - - - 0x00CA54 03:CA44: 60        RTS
bra_CA45_up:
C - - - - - 0x00CA55 03:CA45: BD 01 05  LDA ram_pos_X_lo_obj,X
C - - - - - 0x00CA58 03:CA48: 29 0F     AND #$0F
C - - - - - 0x00CA5A 03:CA4A: C9 04     CMP #$04
C - - - - - 0x00CA5C 03:CA4C: 10 01     BPL bra_CA4F
C - - - - - 0x00CA5E 03:CA4E: 60        RTS
bra_CA4F:
C - - - - - 0x00CA5F 03:CA4F: BD 03 05  LDA ram_pos_Y_lo_obj,X
C - - - - - 0x00CA62 03:CA52: 29 0F     AND #$0F
C - - - - - 0x00CA64 03:CA54: C9 08     CMP #$08
C - - - - - 0x00CA66 03:CA56: F0 01     BEQ bra_CA59
- - - - - - 0x00CA68 03:CA58: 60        RTS
bra_CA59:
C - - - - - 0x00CA69 03:CA59: BD 01 05  LDA ram_pos_X_lo_obj,X
C - - - - - 0x00CA6C 03:CA5C: 85 6A     STA ram_006A
C - - - - - 0x00CA6E 03:CA5E: BD 02 05  LDA ram_pos_X_hi_obj,X
C - - - - - 0x00CA71 03:CA61: 85 6B     STA ram_006B
C - - - - - 0x00CA73 03:CA63: BD 03 05  LDA ram_pos_Y_lo_obj,X
C - - - - - 0x00CA76 03:CA66: 18        CLC
C - - - - - 0x00CA77 03:CA67: 69 18     ADC #< $0018
C - - - - - 0x00CA79 03:CA69: 85 6C     STA ram_006C
C - - - - - 0x00CA7B 03:CA6B: BD 04 05  LDA ram_pos_Y_hi_obj,X
C - - - - - 0x00CA7E 03:CA6E: 69 00     ADC #> $0018
C - - - - - 0x00CA80 03:CA70: 85 6D     STA ram_006D
C - - - - - 0x00CA82 03:CA72: 20 5F C3  JSR sub_C35F
C - - - - - 0x00CA85 03:CA75: A5 6E     LDA ram_006E
C - - - - - 0x00CA87 03:CA77: C9 80     CMP #$80
C - - - - - 0x00CA89 03:CA79: F0 01     BEQ bra_CA7C
C - - - - - 0x00CA8B 03:CA7B: 60        RTS
bra_CA7C:
C - - - - - 0x00CA8C 03:CA7C: BD 01 05  LDA ram_pos_X_lo_obj,X
C - - - - - 0x00CA8F 03:CA7F: 85 6A     STA ram_006A
C - - - - - 0x00CA91 03:CA81: BD 02 05  LDA ram_pos_X_hi_obj,X
C - - - - - 0x00CA94 03:CA84: 85 6B     STA ram_006B
C - - - - - 0x00CA96 03:CA86: BD 03 05  LDA ram_pos_Y_lo_obj,X
C - - - - - 0x00CA99 03:CA89: 18        CLC
C - - - - - 0x00CA9A 03:CA8A: 69 08     ADC #< $0008
C - - - - - 0x00CA9C 03:CA8C: 85 6C     STA ram_006C
C - - - - - 0x00CA9E 03:CA8E: BD 04 05  LDA ram_pos_Y_hi_obj,X
C - - - - - 0x00CAA1 03:CA91: 69 00     ADC #> $0008
C - - - - - 0x00CAA3 03:CA93: 85 6D     STA ram_006D
C - - - - - 0x00CAA5 03:CA95: 20 5F C3  JSR sub_C35F
C - - - - - 0x00CAA8 03:CA98: A5 6E     LDA ram_006E
C - - - - - 0x00CAAA 03:CA9A: C9 01     CMP #$01
C - - - - - 0x00CAAC 03:CA9C: F0 01     BEQ bra_CA9F
C - - - - - 0x00CAAE 03:CA9E: 60        RTS
bra_CA9F:
C - - - - - 0x00CAAF 03:CA9F: BD 03 05  LDA ram_pos_Y_lo_obj,X
C - - - - - 0x00CAB2 03:CAA2: 29 F8     AND #$F8
C - - - - - 0x00CAB4 03:CAA4: 9D 03 05  STA ram_pos_Y_lo_obj,X
C - - - - - 0x00CAB7 03:CAA7: 48        PHA
C - - - - - 0x00CAB8 03:CAA8: BD 01 05  LDA ram_pos_X_lo_obj,X
C - - - - - 0x00CABB 03:CAAB: 29 0F     AND #$0F
C - - - - - 0x00CABD 03:CAAD: 9D 03 05  STA ram_pos_Y_lo_obj,X
C - - - - - 0x00CAC0 03:CAB0: 38        SEC
C - - - - - 0x00CAC1 03:CAB1: A9 10     LDA #$10
C - - - - - 0x00CAC3 03:CAB3: FD 03 05  SBC ram_pos_Y_lo_obj,X
C - - - - - 0x00CAC6 03:CAB6: 9D 03 05  STA ram_pos_Y_lo_obj,X
C - - - - - 0x00CAC9 03:CAB9: 68        PLA
C - - - - - 0x00CACA 03:CABA: 38        SEC
C - - - - - 0x00CACB 03:CABB: FD 03 05  SBC ram_pos_Y_lo_obj,X
C - - - - - 0x00CACE 03:CABE: 9D 03 05  STA ram_pos_Y_lo_obj,X
C - - - - - 0x00CAD1 03:CAC1: BD 04 05  LDA ram_pos_Y_hi_obj,X
C - - - - - 0x00CAD4 03:CAC4: E9 00     SBC #$00
C - - - - - 0x00CAD6 03:CAC6: 9D 04 05  STA ram_pos_Y_hi_obj,X
C - - - - - 0x00CAD9 03:CAC9: BD 00 05  LDA ram_obj_state,X
C - - - - - 0x00CADC 03:CACC: 29 E7     AND #(con_obj_state_10 + con_obj_state_08) ^ $FF
; bzk optimize, what's the point of deleting and then adding 08 state?
; bzk bug maybe? should it be ORA 01 like in 0x00CA44 ?
C - - - - - 0x00CADE 03:CACE: 09 09     ORA #(con_obj_state_01 + con_obj_state_08)
C - - - - - 0x00CAE0 03:CAD0: 9D 00 05  STA ram_obj_state,X
C - - - - - 0x00CAE3 03:CAD3: 60        RTS



sub_CAD4:
C - - - - - 0x00CAE4 03:CAD4: 20 7F CB  JSR sub_CB7F
C - - - - - 0x00CAE7 03:CAD7: BD 01 05  LDA ram_pos_X_lo_obj,X
C - - - - - 0x00CAEA 03:CADA: 29 0F     AND #$0F
C - - - - - 0x00CAEC 03:CADC: D0 75     BNE bra_CB53
sub_CADE:
C - - - - - 0x00CAEE 03:CADE: BD 01 05  LDA ram_pos_X_lo_obj,X
C - - - - - 0x00CAF1 03:CAE1: 18        CLC
C - - - - - 0x00CAF2 03:CAE2: 69 10     ADC #< $0010
C - - - - - 0x00CAF4 03:CAE4: 85 6A     STA ram_006A
C - - - - - 0x00CAF6 03:CAE6: BD 02 05  LDA ram_pos_X_hi_obj,X
C - - - - - 0x00CAF9 03:CAE9: 69 00     ADC #> $0010
C - - - - - 0x00CAFB 03:CAEB: 85 6B     STA ram_006B
C - - - - - 0x00CAFD 03:CAED: BD 03 05  LDA ram_pos_Y_lo_obj,X
C - - - - - 0x00CB00 03:CAF0: 18        CLC
C - - - - - 0x00CB01 03:CAF1: 69 08     ADC #< $0008
C - - - - - 0x00CB03 03:CAF3: 85 6C     STA ram_006C
C - - - - - 0x00CB05 03:CAF5: BD 04 05  LDA ram_pos_Y_hi_obj,X
C - - - - - 0x00CB08 03:CAF8: 69 00     ADC #> $0008
C - - - - - 0x00CB0A 03:CAFA: 85 6D     STA ram_006D
C - - - - - 0x00CB0C 03:CAFC: 20 5F C3  JSR sub_C35F
C - - - - - 0x00CB0F 03:CAFF: A5 6E     LDA ram_006E
C - - - - - 0x00CB11 03:CB01: C9 82     CMP #$82
C - - - - - 0x00CB13 03:CB03: F0 32     BEQ bra_CB37
C - - - - - 0x00CB15 03:CB05: C9 02     CMP #$02
C - - - - - 0x00CB17 03:CB07: F0 01     BEQ bra_CB0A
C - - - - - 0x00CB19 03:CB09: 60        RTS
bra_CB0A:
C - - - - - 0x00CB1A 03:CB0A: BD 01 05  LDA ram_pos_X_lo_obj,X
C - - - - - 0x00CB1D 03:CB0D: 18        CLC
C - - - - - 0x00CB1E 03:CB0E: 69 10     ADC #< $0010
C - - - - - 0x00CB20 03:CB10: 85 6A     STA ram_006A
C - - - - - 0x00CB22 03:CB12: BD 02 05  LDA ram_pos_X_hi_obj,X
C - - - - - 0x00CB25 03:CB15: 69 00     ADC #> $0010
C - - - - - 0x00CB27 03:CB17: 85 6B     STA ram_006B
C - - - - - 0x00CB29 03:CB19: BD 03 05  LDA ram_pos_Y_lo_obj,X
C - - - - - 0x00CB2C 03:CB1C: 18        CLC
C - - - - - 0x00CB2D 03:CB1D: 69 18     ADC #< $0018
C - - - - - 0x00CB2F 03:CB1F: 85 6C     STA ram_006C
C - - - - - 0x00CB31 03:CB21: BD 04 05  LDA ram_pos_Y_hi_obj,X
C - - - - - 0x00CB34 03:CB24: 69 00     ADC #> $0018
C - - - - - 0x00CB36 03:CB26: 85 6D     STA ram_006D
C - - - - - 0x00CB38 03:CB28: 20 5F C3  JSR sub_C35F
C - - - - - 0x00CB3B 03:CB2B: A5 6E     LDA ram_006E
C - - - - - 0x00CB3D 03:CB2D: 10 08     BPL bra_CB37
loc_CB2F:
C D 2 - - - 0x00CB3F 03:CB2F: BD 0B 05  LDA ram_obj_btn,X
C - - - - - 0x00CB42 03:CB32: 29 08     AND #con_btn_Up
C - - - - - 0x00CB44 03:CB34: D0 01     BNE bra_CB37
C - - - - - 0x00CB46 03:CB36: 60        RTS
bra_CB37:
loc_CB37:
C D 2 - - - 0x00CB47 03:CB37: BD 03 05  LDA ram_pos_Y_lo_obj,X
C - - - - - 0x00CB4A 03:CB3A: 38        SEC
C - - - - - 0x00CB4B 03:CB3B: E9 01     SBC #< $0001
C - - - - - 0x00CB4D 03:CB3D: 9D 03 05  STA ram_pos_Y_lo_obj,X
C - - - - - 0x00CB50 03:CB40: BD 04 05  LDA ram_pos_Y_hi_obj,X
C - - - - - 0x00CB53 03:CB43: E9 00     SBC #> $0001
C - - - - - 0x00CB55 03:CB45: 9D 04 05  STA ram_pos_Y_hi_obj,X
C - - - - - 0x00CB58 03:CB48: BD 00 05  LDA ram_obj_state,X
C - - - - - 0x00CB5B 03:CB4B: 29 EF     AND #con_obj_state_10 ^ $FF
C - - - - - 0x00CB5D 03:CB4D: 09 01     ORA #con_obj_state_01
C - - - - - 0x00CB5F 03:CB4F: 9D 00 05  STA ram_obj_state,X
C - - - - - 0x00CB62 03:CB52: 60        RTS
bra_CB53:
C - - - - - 0x00CB63 03:CB53: BD 01 05  LDA ram_pos_X_lo_obj,X
C - - - - - 0x00CB66 03:CB56: 18        CLC
C - - - - - 0x00CB67 03:CB57: 69 10     ADC #< $0010
C - - - - - 0x00CB69 03:CB59: 85 6A     STA ram_006A
C - - - - - 0x00CB6B 03:CB5B: BD 02 05  LDA ram_pos_X_hi_obj,X
C - - - - - 0x00CB6E 03:CB5E: 69 00     ADC #> $0010
C - - - - - 0x00CB70 03:CB60: 85 6B     STA ram_006B
C - - - - - 0x00CB72 03:CB62: BD 03 05  LDA ram_pos_Y_lo_obj,X
C - - - - - 0x00CB75 03:CB65: 18        CLC
C - - - - - 0x00CB76 03:CB66: 69 18     ADC #< $0018
C - - - - - 0x00CB78 03:CB68: 85 6C     STA ram_006C
C - - - - - 0x00CB7A 03:CB6A: BD 04 05  LDA ram_pos_Y_hi_obj,X
C - - - - - 0x00CB7D 03:CB6D: 69 00     ADC #> $0018
C - - - - - 0x00CB7F 03:CB6F: 85 6D     STA ram_006D
C - - - - - 0x00CB81 03:CB71: 20 5F C3  JSR sub_C35F
C - - - - - 0x00CB84 03:CB74: A5 6E     LDA ram_006E
C - - - - - 0x00CB86 03:CB76: C9 82     CMP #$82
C - - - - - 0x00CB88 03:CB78: F0 BD     BEQ bra_CB37
C - - - - - 0x00CB8A 03:CB7A: C9 02     CMP #$02
C - - - - - 0x00CB8C 03:CB7C: F0 B9     BEQ bra_CB37
C - - - - - 0x00CB8E 03:CB7E: 60        RTS



sub_CB7F:
C - - - - - 0x00CB8F 03:CB7F: BD 00 05  LDA ram_obj_state,X
C - - - - - 0x00CB92 03:CB82: 29 08     AND #con_obj_state_08
C - - - - - 0x00CB94 03:CB84: F0 0D     BEQ bra_CB93
C - - - - - 0x00CB96 03:CB86: 68        PLA
C - - - - - 0x00CB97 03:CB87: 68        PLA
C - - - - - 0x00CB98 03:CB88: 60        RTS



sub_CB89:
; bzk optimize, same code as 0x00CB8F
C - - - - - 0x00CB99 03:CB89: BD 00 05  LDA ram_obj_state,X
C - - - - - 0x00CB9C 03:CB8C: 29 08     AND #con_obj_state_08
C - - - - - 0x00CB9E 03:CB8E: D0 03     BNE bra_CB93
C - - - - - 0x00CBA0 03:CB90: 68        PLA
C - - - - - 0x00CBA1 03:CB91: 68        PLA
C - - - - - 0x00CBA2 03:CB92: 60        RTS



bra_CB93:
sub_CB93:
C - - - - - 0x00CBA3 03:CB93: BD 00 05  LDA ram_obj_state,X
C - - - - - 0x00CBA6 03:CB96: 29 10     AND #con_obj_state_10
C - - - - - 0x00CBA8 03:CB98: D0 02     BNE bra_CB9C_RTS
C - - - - - 0x00CBAA 03:CB9A: 68        PLA
C - - - - - 0x00CBAB 03:CB9B: 68        PLA
bra_CB9C_RTS:
C - - - - - 0x00CBAC 03:CB9C: 60        RTS



sub_CB9D:
C - - - - - 0x00CBAD 03:CB9D: 20 89 CB  JSR sub_CB89
C - - - - - 0x00CBB0 03:CBA0: BD 01 05  LDA ram_pos_X_lo_obj,X
C - - - - - 0x00CBB3 03:CBA3: 29 0F     AND #$0F
C - - - - - 0x00CBB5 03:CBA5: C9 0F     CMP #$0F
C - - - - - 0x00CBB7 03:CBA7: D0 4D     BNE bra_CBF6
C - - - - - 0x00CBB9 03:CBA9: BD 01 05  LDA ram_pos_X_lo_obj,X
C - - - - - 0x00CBBC 03:CBAC: 85 6A     STA ram_006A
C - - - - - 0x00CBBE 03:CBAE: BD 02 05  LDA ram_pos_X_hi_obj,X
C - - - - - 0x00CBC1 03:CBB1: 85 6B     STA ram_006B
C - - - - - 0x00CBC3 03:CBB3: BD 03 05  LDA ram_pos_Y_lo_obj,X
C - - - - - 0x00CBC6 03:CBB6: 18        CLC
C - - - - - 0x00CBC7 03:CBB7: 69 08     ADC #< $0008
C - - - - - 0x00CBC9 03:CBB9: 85 6C     STA ram_006C
C - - - - - 0x00CBCB 03:CBBB: BD 04 05  LDA ram_pos_Y_hi_obj,X
C - - - - - 0x00CBCE 03:CBBE: 69 00     ADC #> $0008
C - - - - - 0x00CBD0 03:CBC0: 85 6D     STA ram_006D
C - - - - - 0x00CBD2 03:CBC2: 20 5F C3  JSR sub_C35F
C - - - - - 0x00CBD5 03:CBC5: A5 6E     LDA ram_006E
C - - - - - 0x00CBD7 03:CBC7: C9 81     CMP #$81
C - - - - - 0x00CBD9 03:CBC9: F0 05     BEQ bra_CBD0
C - - - - - 0x00CBDB 03:CBCB: C9 01     CMP #$01
C - - - - - 0x00CBDD 03:CBCD: F0 04     BEQ bra_CBD3
C - - - - - 0x00CBDF 03:CBCF: 60        RTS
bra_CBD0:
C - - - - - 0x00CBE0 03:CBD0: 4C 37 CB  JMP loc_CB37
bra_CBD3:
C - - - - - 0x00CBE3 03:CBD3: BD 01 05  LDA ram_pos_X_lo_obj,X
C - - - - - 0x00CBE6 03:CBD6: 85 6A     STA ram_006A
C - - - - - 0x00CBE8 03:CBD8: BD 02 05  LDA ram_pos_X_hi_obj,X
C - - - - - 0x00CBEB 03:CBDB: 85 6B     STA ram_006B
C - - - - - 0x00CBED 03:CBDD: BD 03 05  LDA ram_pos_Y_lo_obj,X
C - - - - - 0x00CBF0 03:CBE0: 18        CLC
C - - - - - 0x00CBF1 03:CBE1: 69 18     ADC #< $0018
C - - - - - 0x00CBF3 03:CBE3: 85 6C     STA ram_006C
C - - - - - 0x00CBF5 03:CBE5: BD 04 05  LDA ram_pos_Y_hi_obj,X
C - - - - - 0x00CBF8 03:CBE8: 69 00     ADC #> $0018
C - - - - - 0x00CBFA 03:CBEA: 85 6D     STA ram_006D
C - - - - - 0x00CBFC 03:CBEC: 20 5F C3  JSR sub_C35F
C - - - - - 0x00CBFF 03:CBEF: A5 6E     LDA ram_006E
C - - - - - 0x00CC01 03:CBF1: 10 DD     BPL bra_CBD0
C - - - - - 0x00CC03 03:CBF3: 4C 2F CB  JMP loc_CB2F
bra_CBF6:
C - - - - - 0x00CC06 03:CBF6: BD 01 05  LDA ram_pos_X_lo_obj,X
C - - - - - 0x00CC09 03:CBF9: 85 6A     STA ram_006A
C - - - - - 0x00CC0B 03:CBFB: BD 02 05  LDA ram_pos_X_hi_obj,X
C - - - - - 0x00CC0E 03:CBFE: 85 6B     STA ram_006B
C - - - - - 0x00CC10 03:CC00: BD 03 05  LDA ram_pos_Y_lo_obj,X
C - - - - - 0x00CC13 03:CC03: 18        CLC
C - - - - - 0x00CC14 03:CC04: 69 18     ADC #< $0018
C - - - - - 0x00CC16 03:CC06: 85 6C     STA ram_006C
C - - - - - 0x00CC18 03:CC08: BD 04 05  LDA ram_pos_Y_hi_obj,X
C - - - - - 0x00CC1B 03:CC0B: 69 00     ADC #> $0018
C - - - - - 0x00CC1D 03:CC0D: 85 6D     STA ram_006D
C - - - - - 0x00CC1F 03:CC0F: 20 5F C3  JSR sub_C35F
C - - - - - 0x00CC22 03:CC12: A5 6E     LDA ram_006E
C - - - - - 0x00CC24 03:CC14: C9 81     CMP #$81
C - - - - - 0x00CC26 03:CC16: F0 B8     BEQ bra_CBD0
C - - - - - 0x00CC28 03:CC18: C9 01     CMP #$01
C - - - - - 0x00CC2A 03:CC1A: F0 B4     BEQ bra_CBD0
C - - - - - 0x00CC2C 03:CC1C: 60        RTS



sub_CC1D:
C - - - - - 0x00CC2D 03:CC1D: AD 12 05  LDA ram_obj_0512
C - - - - - 0x00CC30 03:CC20: 29 01     AND #$01
C - - - - - 0x00CC32 03:CC22: F0 01     BEQ bra_CC25
C - - - - - 0x00CC34 03:CC24: 60        RTS
bra_CC25:
C - - - - - 0x00CC35 03:CC25: 20 39 CC  JSR sub_CC39_screen_scrolling
C - - - - - 0x00CC38 03:CC28: A5 70     LDA ram_0070
C - - - - - 0x00CC3A 03:CC2A: 85 26     STA ram_cam_pos_X_lo
C - - - - - 0x00CC3C 03:CC2C: A5 71     LDA ram_0071
C - - - - - 0x00CC3E 03:CC2E: 85 27     STA ram_cam_pos_X_hi
C - - - - - 0x00CC40 03:CC30: A5 72     LDA ram_0072
C - - - - - 0x00CC42 03:CC32: 85 28     STA ram_cam_pos_Y_lo
C - - - - - 0x00CC44 03:CC34: A5 73     LDA ram_0073
C - - - - - 0x00CC46 03:CC36: 85 29     STA ram_cam_pos_Y_hi
C - - - - - 0x00CC48 03:CC38: 60        RTS



sub_CC39_screen_scrolling:
C - - - - - 0x00CC49 03:CC39: A5 61     LDA ram_stage_scroll_type
C - - - - - 0x00CC4B 03:CC3B: F0 56     BEQ bra_CC93_horisontal
C - - - - - 0x00CC4D 03:CC3D: AD 03 05  LDA ram_pos_Y_lo_obj
C - - - - - 0x00CC50 03:CC40: 38        SEC
C - - - - - 0x00CC51 03:CC41: E5 72     SBC ram_0072
C - - - - - 0x00CC53 03:CC43: 85 74     STA ram_0074
C - - - - - 0x00CC55 03:CC45: AD 04 05  LDA ram_pos_Y_hi_obj
C - - - - - 0x00CC58 03:CC48: E5 73     SBC ram_0073
C - - - - - 0x00CC5A 03:CC4A: 85 75     STA ram_0075
C - - - - - 0x00CC5C 03:CC4C: D0 0B     BNE bra_CC59
C - - - - - 0x00CC5E 03:CC4E: A5 74     LDA ram_0074
C - - - - - 0x00CC60 03:CC50: C9 40     CMP #$40
C - - - - - 0x00CC62 03:CC52: 90 26     BCC bra_CC7A
C - - - - - 0x00CC64 03:CC54: C9 B0     CMP #$B0
C - - - - - 0x00CC66 03:CC56: B0 01     BCS bra_CC59
C - - - - - 0x00CC68 03:CC58: 60        RTS
bra_CC59:
C - - - - - 0x00CC69 03:CC59: AD 03 05  LDA ram_pos_Y_lo_obj
C - - - - - 0x00CC6C 03:CC5C: 38        SEC
C - - - - - 0x00CC6D 03:CC5D: E9 B0     SBC #< $00B0
C - - - - - 0x00CC6F 03:CC5F: 85 72     STA ram_0072
C - - - - - 0x00CC71 03:CC61: AD 04 05  LDA ram_pos_Y_hi_obj
C - - - - - 0x00CC74 03:CC64: E9 00     SBC #> $00B0
C - - - - - 0x00CC76 03:CC66: 85 73     STA ram_0073
C - - - - - 0x00CC78 03:CC68: D0 07     BNE bra_CC71
C - - - - - 0x00CC7A 03:CC6A: A5 72     LDA ram_0072
C - - - - - 0x00CC7C 03:CC6C: C9 EF     CMP #$EF
C - - - - - 0x00CC7E 03:CC6E: B0 01     BCS bra_CC71
C - - - - - 0x00CC80 03:CC70: 60        RTS
bra_CC71:
C - - - - - 0x00CC81 03:CC71: A9 EF     LDA #< $00EF
C - - - - - 0x00CC83 03:CC73: 85 72     STA ram_0072
C - - - - - 0x00CC85 03:CC75: A9 00     LDA #> $00EF
C - - - - - 0x00CC87 03:CC77: 85 73     STA ram_0073
C - - - - - 0x00CC89 03:CC79: 60        RTS
bra_CC7A:
C - - - - - 0x00CC8A 03:CC7A: AD 03 05  LDA ram_pos_Y_lo_obj
C - - - - - 0x00CC8D 03:CC7D: 38        SEC
C - - - - - 0x00CC8E 03:CC7E: E9 40     SBC #< $0040
C - - - - - 0x00CC90 03:CC80: 85 72     STA ram_0072
C - - - - - 0x00CC92 03:CC82: AD 04 05  LDA ram_pos_Y_hi_obj
C - - - - - 0x00CC95 03:CC85: E9 00     SBC #> $0040
C - - - - - 0x00CC97 03:CC87: 85 73     STA ram_0073
C - - - - - 0x00CC99 03:CC89: D0 01     BNE bra_CC8C
C - - - - - 0x00CC9B 03:CC8B: 60        RTS
bra_CC8C:
C - - - - - 0x00CC9C 03:CC8C: A9 00     LDA #$00
C - - - - - 0x00CC9E 03:CC8E: 85 72     STA ram_0072
C - - - - - 0x00CCA0 03:CC90: 85 73     STA ram_0073
C - - - - - 0x00CCA2 03:CC92: 60        RTS
bra_CC93_horisontal:
C - - - - - 0x00CCA3 03:CC93: AD 01 05  LDA ram_pos_X_lo_obj
C - - - - - 0x00CCA6 03:CC96: 38        SEC
C - - - - - 0x00CCA7 03:CC97: E5 70     SBC ram_0070
C - - - - - 0x00CCA9 03:CC99: 85 74     STA ram_0074
C - - - - - 0x00CCAB 03:CC9B: AD 02 05  LDA ram_pos_X_hi_obj
C - - - - - 0x00CCAE 03:CC9E: E5 71     SBC ram_0071
C - - - - - 0x00CCB0 03:CCA0: 85 75     STA ram_0075
C - - - - - 0x00CCB2 03:CCA2: D0 0B     BNE bra_CCAF
C - - - - - 0x00CCB4 03:CCA4: A5 74     LDA ram_0074
C - - - - - 0x00CCB6 03:CCA6: C9 40     CMP #$40
C - - - - - 0x00CCB8 03:CCA8: 90 20     BCC bra_CCCA
C - - - - - 0x00CCBA 03:CCAA: C9 B0     CMP #$B0
C - - - - - 0x00CCBC 03:CCAC: B0 01     BCS bra_CCAF
C - - - - - 0x00CCBE 03:CCAE: 60        RTS
bra_CCAF:
C - - - - - 0x00CCBF 03:CCAF: AD 01 05  LDA ram_pos_X_lo_obj
C - - - - - 0x00CCC2 03:CCB2: 38        SEC
C - - - - - 0x00CCC3 03:CCB3: E9 B0     SBC #< $00B0
C - - - - - 0x00CCC5 03:CCB5: 85 70     STA ram_0070
C - - - - - 0x00CCC7 03:CCB7: AD 02 05  LDA ram_pos_X_hi_obj
C - - - - - 0x00CCCA 03:CCBA: E9 00     SBC #> $00B0
C - - - - - 0x00CCCC 03:CCBC: 85 71     STA ram_0071
C - - - - - 0x00CCCE 03:CCBE: D0 01     BNE bra_CCC1
C - - - - - 0x00CCD0 03:CCC0: 60        RTS
bra_CCC1:
C - - - - - 0x00CCD1 03:CCC1: A9 00     LDA #$00
C - - - - - 0x00CCD3 03:CCC3: 85 70     STA ram_0070
C - - - - - 0x00CCD5 03:CCC5: A9 01     LDA #$01
C - - - - - 0x00CCD7 03:CCC7: 85 71     STA ram_0071
C - - - - - 0x00CCD9 03:CCC9: 60        RTS
bra_CCCA:
C - - - - - 0x00CCDA 03:CCCA: AD 01 05  LDA ram_pos_X_lo_obj
C - - - - - 0x00CCDD 03:CCCD: 38        SEC
C - - - - - 0x00CCDE 03:CCCE: E9 40     SBC #< $0040
C - - - - - 0x00CCE0 03:CCD0: 85 70     STA ram_0070
C - - - - - 0x00CCE2 03:CCD2: AD 02 05  LDA ram_pos_X_hi_obj
C - - - - - 0x00CCE5 03:CCD5: E9 00     SBC #> $0040
C - - - - - 0x00CCE7 03:CCD7: 85 71     STA ram_0071
C - - - - - 0x00CCE9 03:CCD9: D0 01     BNE bra_CCDC
C - - - - - 0x00CCEB 03:CCDB: 60        RTS
bra_CCDC:
C - - - - - 0x00CCEC 03:CCDC: A9 00     LDA #$00
C - - - - - 0x00CCEE 03:CCDE: 85 70     STA ram_0070
C - - - - - 0x00CCF0 03:CCE0: 85 71     STA ram_0071
C - - - - - 0x00CCF2 03:CCE2: 60        RTS



sub_CCE3:
C - - - - - 0x00CCF3 03:CCE3: 20 1D CC  JSR sub_CC1D
C - - - - - 0x00CCF6 03:CCE6: 20 F6 CC  JSR sub_CCF6
C - - - - - 0x00CCF9 03:CCE9: E6 7A     INC ram_frm_cnt
C - - - - - 0x00CCFB 03:CCEB: A5 7A     LDA ram_frm_cnt
C - - - - - 0x00CCFD 03:CCED: 29 01     AND #$01
C - - - - - 0x00CCFF 03:CCEF: 20 78 EF  JSR sub_EF78_jump_to_pointers_after_jsr
- D 2 - I - 0x00CD02 03:CCF2: 29 CD     .word ofs_002_CD29_00
- D 2 - I - 0x00CD04 03:CCF4: 4C CD     .word ofs_002_CD4C_01



sub_CCF6:
C - - - - - 0x00CD06 03:CCF6: A2 00     LDX #$00
C - - - - - 0x00CD08 03:CCF8: BD 00 05  LDA ram_obj_state,X
C - - - - - 0x00CD0B 03:CCFB: 29 EF     AND #con_obj_state_10 ^ $FF
C - - - - - 0x00CD0D 03:CCFD: 9D 00 05  STA ram_obj_state,X
; bzk optimize, no need for LDA
C - - - - - 0x00CD10 03:CD00: BD 00 05  LDA ram_obj_state,X
C - - - - - 0x00CD13 03:CD03: 10 23     BPL bra_CD28_RTS
C - - - - - 0x00CD15 03:CD05: AD 15 05  LDA ram_obj_invinc_timer
C - - - - - 0x00CD18 03:CD08: F0 1B     BEQ bra_CD25_invinc_is_off
C - - - - - 0x00CD1A 03:CD0A: CE 15 05  DEC ram_obj_invinc_timer
C - - - - - 0x00CD1D 03:CD0D: AD 15 05  LDA ram_obj_invinc_timer
C - - - - - 0x00CD20 03:CD10: 29 C0     AND #$C0
C - - - - - 0x00CD22 03:CD12: F0 0A     BEQ bra_CD1E
C - - - - - 0x00CD24 03:CD14: AD 15 05  LDA ram_obj_invinc_timer
C - - - - - 0x00CD27 03:CD17: 29 01     AND #$01
C - - - - - 0x00CD29 03:CD19: F0 0D     BEQ bra_CD28_RTS
C - - - - - 0x00CD2B 03:CD1B: 4C 25 CD  JMP loc_CD25
bra_CD1E:
C - - - - - 0x00CD2E 03:CD1E: AD 15 05  LDA ram_obj_invinc_timer
C - - - - - 0x00CD31 03:CD21: 29 03     AND #$03
C - - - - - 0x00CD33 03:CD23: F0 03     BEQ bra_CD28_RTS
bra_CD25_invinc_is_off:
loc_CD25:
C D 2 - - - 0x00CD35 03:CD25: 20 5E CE  JSR sub_CE5E
bra_CD28_RTS:
C - - - - - 0x00CD38 03:CD28: 60        RTS



ofs_002_CD29_00:
C - - J - - 0x00CD39 03:CD29: 20 6B CD  JSR sub_CD6B
C - - - - - 0x00CD3C 03:CD2C: 20 28 EA  JSR sub_EA28_messages
C - - - - - 0x00CD3F 03:CD2F: 20 2B CE  JSR sub_CE2B
C - - - - - 0x00CD42 03:CD32: A2 20     LDX #$20
bra_CD34_loop:
C - - - - - 0x00CD44 03:CD34: BD 00 05  LDA ram_obj_state,X
C - - - - - 0x00CD47 03:CD37: 29 EF     AND #con_obj_state_10 ^ $FF
C - - - - - 0x00CD49 03:CD39: 9D 00 05  STA ram_obj_state,X
; bzk optimize, no need for LDA
C - - - - - 0x00CD4C 03:CD3C: BD 00 05  LDA ram_obj_state,X
C - - - - - 0x00CD4F 03:CD3F: 10 03     BPL bra_CD44
C - - - - - 0x00CD51 03:CD41: 20 5E CE  JSR sub_CE5E
bra_CD44:
C - - - - - 0x00CD54 03:CD44: 8A        TXA
C - - - - - 0x00CD55 03:CD45: 18        CLC
C - - - - - 0x00CD56 03:CD46: 69 20     ADC #$20
C - - - - - 0x00CD58 03:CD48: AA        TAX
C - - - - - 0x00CD59 03:CD49: D0 E9     BNE bra_CD34_loop
C - - - - - 0x00CD5B 03:CD4B: 60        RTS



ofs_002_CD4C_01:
C - - J - - 0x00CD5C 03:CD4C: A2 E0     LDX #$E0
bra_CD4E_loop:
C - - - - - 0x00CD5E 03:CD4E: BD 00 05  LDA ram_obj_state,X
C - - - - - 0x00CD61 03:CD51: 29 EF     AND #con_obj_state_10 ^ $FF
C - - - - - 0x00CD63 03:CD53: 9D 00 05  STA ram_obj_state,X
; bzk optimize, no need for LDA
C - - - - - 0x00CD66 03:CD56: BD 00 05  LDA ram_obj_state,X
C - - - - - 0x00CD69 03:CD59: 10 03     BPL bra_CD5E    ; if not exists
C - - - - - 0x00CD6B 03:CD5B: 20 5E CE  JSR sub_CE5E
bra_CD5E:
C - - - - - 0x00CD6E 03:CD5E: 8A        TXA
C - - - - - 0x00CD6F 03:CD5F: 38        SEC
C - - - - - 0x00CD70 03:CD60: E9 20     SBC #$20
C - - - - - 0x00CD72 03:CD62: AA        TAX
C - - - - - 0x00CD73 03:CD63: D0 E9     BNE bra_CD4E_loop
C - - - - - 0x00CD75 03:CD65: 20 2B CE  JSR sub_CE2B
C - - - - - 0x00CD78 03:CD68: 20 28 EA  JSR sub_EA28_messages
sub_CD6B:
C - - - - - 0x00CD7B 03:CD6B: A2 00     LDX #$00
bra_CD6D_loop:
C - - - - - 0x00CD7D 03:CD6D: BD 10 06  LDA ram_item_state,X
C - - - - - 0x00CD80 03:CD70: 10 07     BPL bra_CD79    ; if not exists     con_item_state_exists
C - - - - - 0x00CD82 03:CD72: 29 04     AND #con_item_state_04
C - - - - - 0x00CD84 03:CD74: D0 03     BNE bra_CD79
C - - - - - 0x00CD86 03:CD76: 20 83 CD  JSR sub_CD83
bra_CD79:
C - - - - - 0x00CD89 03:CD79: 8A        TXA
C - - - - - 0x00CD8A 03:CD7A: 18        CLC
C - - - - - 0x00CD8B 03:CD7B: 69 08     ADC #$08
C - - - - - 0x00CD8D 03:CD7D: AA        TAX
C - - - - - 0x00CD8E 03:CD7E: E0 20     CPX #$20
C - - - - - 0x00CD90 03:CD80: D0 EB     BNE bra_CD6D_loop
C - - - - - 0x00CD92 03:CD82: 60        RTS



sub_CD83:
C - - - - - 0x00CD93 03:CD83: BD 11 06  LDA ram_pos_X_lo_item,X
C - - - - - 0x00CD96 03:CD86: 85 76     STA ram_0076
C - - - - - 0x00CD98 03:CD88: BD 12 06  LDA ram_pos_X_hi_item,X
C - - - - - 0x00CD9B 03:CD8B: 85 77     STA ram_0077
C - - - - - 0x00CD9D 03:CD8D: BD 13 06  LDA ram_pos_Y_lo_item,X
C - - - - - 0x00CDA0 03:CD90: 85 78     STA ram_0078
C - - - - - 0x00CDA2 03:CD92: BD 14 06  LDA ram_pos_Y_hi_item,X
C - - - - - 0x00CDA5 03:CD95: 85 79     STA ram_0079
C - - - - - 0x00CDA7 03:CD97: BD 15 06  LDA ram_item_id,X
C - - - - - 0x00CDAA 03:CD9A: C9 04     CMP #con_item_id_glove
C - - - - - 0x00CDAC 03:CD9C: D0 40     BNE bra_CDDE    ; if not glove
C - - - - - 0x00CDAE 03:CD9E: BD 10 06  LDA ram_item_state,X
C - - - - - 0x00CDB1 03:CDA1: 29 02     AND #con_item_state_02
C - - - - - 0x00CDB3 03:CDA3: D0 39     BNE bra_CDDE
C - - - - - 0x00CDB5 03:CDA5: BD 10 06  LDA ram_item_state,X
C - - - - - 0x00CDB8 03:CDA8: 29 40     AND #con_item_state_40
C - - - - - 0x00CDBA 03:CDAA: D0 0D     BNE bra_CDB9
C - - - - - 0x00CDBC 03:CDAC: A5 78     LDA ram_0078
C - - - - - 0x00CDBE 03:CDAE: 18        CLC
C - - - - - 0x00CDBF 03:CDAF: 69 03     ADC #< $0003
C - - - - - 0x00CDC1 03:CDB1: 85 78     STA ram_0078
C - - - - - 0x00CDC3 03:CDB3: A5 79     LDA ram_0079
C - - - - - 0x00CDC5 03:CDB5: 69 00     ADC #> $0003
C - - - - - 0x00CDC7 03:CDB7: 85 79     STA ram_0079
bra_CDB9:
C - - - - - 0x00CDC9 03:CDB9: BD 10 06  LDA ram_item_state,X
C - - - - - 0x00CDCC 03:CDBC: 29 08     AND #con_item_state_08
C - - - - - 0x00CDCE 03:CDBE: F0 10     BEQ bra_CDD0
C - - - - - 0x00CDD0 03:CDC0: A5 76     LDA ram_0076
C - - - - - 0x00CDD2 03:CDC2: 38        SEC
C - - - - - 0x00CDD3 03:CDC3: E9 03     SBC #< $0003
C - - - - - 0x00CDD5 03:CDC5: 85 76     STA ram_0076
C - - - - - 0x00CDD7 03:CDC7: A5 77     LDA ram_0077
C - - - - - 0x00CDD9 03:CDC9: E9 00     SBC #> $0003
C - - - - - 0x00CDDB 03:CDCB: 85 77     STA ram_0077
C - - - - - 0x00CDDD 03:CDCD: 4C DE CD  JMP loc_CDDE
bra_CDD0:
C - - - - - 0x00CDE0 03:CDD0: A5 76     LDA ram_0076
C - - - - - 0x00CDE2 03:CDD2: 18        CLC
C - - - - - 0x00CDE3 03:CDD3: 69 03     ADC #< $0003
C - - - - - 0x00CDE5 03:CDD5: 85 76     STA ram_0076
C - - - - - 0x00CDE7 03:CDD7: A5 77     LDA ram_0077
C - - - - - 0x00CDE9 03:CDD9: 18        CLC
C - - - - - 0x00CDEA 03:CDDA: 69 00     ADC #> $0003
C - - - - - 0x00CDEC 03:CDDC: 85 77     STA ram_0077
bra_CDDE:
loc_CDDE:
C D 2 - - - 0x00CDEE 03:CDDE: 20 07 CF  JSR sub_CF07
C - - - - - 0x00CDF1 03:CDE1: BD 10 06  LDA ram_item_state,X
C - - - - - 0x00CDF4 03:CDE4: 29 02     AND #con_item_state_02
C - - - - - 0x00CDF6 03:CDE6: F0 0F     BEQ bra_CDF7
C - - - - - 0x00CDF8 03:CDE8: BD 17 06  LDA ram_item_destr_timer,X
C - - - - - 0x00CDFB 03:CDEB: 4A        LSR
C - - - - - 0x00CDFC 03:CDEC: 4A        LSR
C - - - - - 0x00CDFD 03:CDED: 4A        LSR
C - - - - - 0x00CDFE 03:CDEE: 4A        LSR
C - - - - - 0x00CDFF 03:CDEF: 29 03     AND #$03
C - - - - - 0x00CE01 03:CDF1: 18        CLC
C - - - - - 0x00CE02 03:CDF2: 69 0A     ADC #$0A
C - - - - - 0x00CE04 03:CDF4: 4C FA CD  JMP loc_CDFA    ; bzk optimize, BNE
bra_CDF7:
C - - - - - 0x00CE07 03:CDF7: BD 15 06  LDA ram_item_id,X
loc_CDFA:
C D 2 - - - 0x00CE0A 03:CDFA: 0A        ASL
C - - - - - 0x00CE0B 03:CDFB: 85 1E     STA ram_001E
C - - - - - 0x00CE0D 03:CDFD: BD 10 06  LDA ram_item_state,X
C - - - - - 0x00CE10 03:CE00: 29 08     AND #con_item_state_08
C - - - - - 0x00CE12 03:CE02: 4A        LSR
C - - - - - 0x00CE13 03:CE03: 4A        LSR
C - - - - - 0x00CE14 03:CE04: 4A        LSR
C - - - - - 0x00CE15 03:CE05: 05 1E     ORA ram_001E
C - - - - - 0x00CE17 03:CE07: A8        TAY
C - - - - - 0x00CE18 03:CE08: B9 0F CE  LDA tbl_CE0F,Y
C - - - - - 0x00CE1B 03:CE0B: 20 13 DB  JSR sub_DB13
C - - - - - 0x00CE1E 03:CE0E: 60        RTS


; ???
tbl_CE0F:
- D 2 - - - 0x00CE1F 03:CE0F: 50        .byte $50   ; 
- D 2 - - - 0x00CE20 03:CE10: 50        .byte $50   ; 
- D 2 - - - 0x00CE21 03:CE11: 4E        .byte $4E   ; 
- D 2 - - - 0x00CE22 03:CE12: 4E        .byte $4E   ; 
- D 2 - - - 0x00CE23 03:CE13: 4C        .byte $4C   ; 
- D 2 - - - 0x00CE24 03:CE14: 4C        .byte $4C   ; 
- D 2 - - - 0x00CE25 03:CE15: 4B        .byte $4B   ; 
- - - - - - 0x00CE26 03:CE16: 4B        .byte $4B   ; 
- D 2 - - - 0x00CE27 03:CE17: 48        .byte $48   ; 
- D 2 - - - 0x00CE28 03:CE18: 47        .byte $47   ; 
- D 2 - - - 0x00CE29 03:CE19: 49        .byte $49   ; 
- D 2 - - - 0x00CE2A 03:CE1A: 49        .byte $49   ; 
- D 2 - - - 0x00CE2B 03:CE1B: 17        .byte $17   ; 
- - - - - - 0x00CE2C 03:CE1C: 17        .byte $17   ; 
- D 2 - - - 0x00CE2D 03:CE1D: 17        .byte $17   ; 
- - - - - - 0x00CE2E 03:CE1E: 17        .byte $17   ; 
- D 2 - - - 0x00CE2F 03:CE1F: 17        .byte $17   ; 
- - - - - - 0x00CE30 03:CE20: 17        .byte $17   ; 
- D 2 - - - 0x00CE31 03:CE21: 17        .byte $17   ; 
- - - - - - 0x00CE32 03:CE22: 17        .byte $17   ; 
- D 2 - - - 0x00CE33 03:CE23: 60        .byte $60   ; 
- D 2 - - - 0x00CE34 03:CE24: 60        .byte $60   ; 
- D 2 - - - 0x00CE35 03:CE25: 65        .byte $65   ; 
- D 2 - - - 0x00CE36 03:CE26: 65        .byte $65   ; 
- D 2 - - - 0x00CE37 03:CE27: 66        .byte $66   ; 
- D 2 - - - 0x00CE38 03:CE28: 66        .byte $66   ; 
- D 2 - - - 0x00CE39 03:CE29: 67        .byte $67   ; 
- D 2 - - - 0x00CE3A 03:CE2A: 67        .byte $67   ; 



sub_CE2B:
C - - - - - 0x00CE3B 03:CE2B: A2 00     LDX #$00
bra_CE2D_loop:
C - - - - - 0x00CE3D 03:CE2D: BD 00 06  LDA ram_pos_X_carrot,X
C - - - - - 0x00CE40 03:CE30: F0 03     BEQ bra_CE35_carrot_not_exist
C - - - - - 0x00CE42 03:CE32: 20 3C CE  JSR sub_CE3C
bra_CE35_carrot_not_exist:
C - - - - - 0x00CE45 03:CE35: E8        INX
C - - - - - 0x00CE46 03:CE36: E8        INX
C - - - - - 0x00CE47 03:CE37: E0 10     CPX #$10
C - - - - - 0x00CE49 03:CE39: D0 F2     BNE bra_CE2D_loop
C - - - - - 0x00CE4B 03:CE3B: 60        RTS



sub_CE3C:
C - - - - - 0x00CE4C 03:CE3C: 20 FF C7  JSR sub_C7FF_multiply_8bit_by_10h
C - - - - - 0x00CE4F 03:CE3F: A5 1E     LDA ram_001E
C - - - - - 0x00CE51 03:CE41: 85 76     STA ram_0076
C - - - - - 0x00CE53 03:CE43: A5 1F     LDA ram_001F
C - - - - - 0x00CE55 03:CE45: 85 77     STA ram_0077
C - - - - - 0x00CE57 03:CE47: BD 01 06  LDA ram_pos_Y_carrot,X
C - - - - - 0x00CE5A 03:CE4A: 20 FF C7  JSR sub_C7FF_multiply_8bit_by_10h
C - - - - - 0x00CE5D 03:CE4D: A5 1E     LDA ram_001E
C - - - - - 0x00CE5F 03:CE4F: 85 78     STA ram_0078
C - - - - - 0x00CE61 03:CE51: A5 1F     LDA ram_001F
C - - - - - 0x00CE63 03:CE53: 85 79     STA ram_0079
C - - - - - 0x00CE65 03:CE55: 20 07 CF  JSR sub_CF07
C - - - - - 0x00CE68 03:CE58: A9 45     LDA #$45
C - - - - - 0x00CE6A 03:CE5A: 20 13 DB  JSR sub_DB13
C - - - - - 0x00CE6D 03:CE5D: 60        RTS



sub_CE5E:
C - - - - - 0x00CE6E 03:CE5E: BD 00 05  LDA ram_obj_state,X
C - - - - - 0x00CE71 03:CE61: 29 20     AND #con_obj_state_20
C - - - - - 0x00CE73 03:CE63: F0 03     BEQ bra_CE68
C - - - - - 0x00CE75 03:CE65: 4C 9B D2  JMP loc_D29B
bra_CE68:
C - - - - - 0x00CE78 03:CE68: BD 18 05  LDA ram_obj_0518,X
C - - - - - 0x00CE7B 03:CE6B: D0 07     BNE bra_CE74
C - - - - - 0x00CE7D 03:CE6D: BD 00 05  LDA ram_obj_state,X
C - - - - - 0x00CE80 03:CE70: 29 04     AND #con_obj_state_04
C - - - - - 0x00CE82 03:CE72: F0 38     BEQ bra_CEAC
bra_CE74:
C - - - - - 0x00CE84 03:CE74: FE 0D 05  INC ram_obj_anim_timer,X
C - - - - - 0x00CE87 03:CE77: BD 09 05  LDA ram_obj_0509,X
C - - - - - 0x00CE8A 03:CE7A: D0 0A     BNE bra_CE86
C - - - - - 0x00CE8C 03:CE7C: BD 0D 05  LDA ram_obj_anim_timer,X
C - - - - - 0x00CE8F 03:CE7F: C9 05     CMP #$05
C - - - - - 0x00CE91 03:CE81: D0 29     BNE bra_CEAC
C - - - - - 0x00CE93 03:CE83: 4C 8D CE  JMP loc_CE8D
bra_CE86:
C - - - - - 0x00CE96 03:CE86: BD 0D 05  LDA ram_obj_anim_timer,X
C - - - - - 0x00CE99 03:CE89: C9 07     CMP #$07
C - - - - - 0x00CE9B 03:CE8B: D0 1F     BNE bra_CEAC
loc_CE8D:
C D 2 - - - 0x00CE9D 03:CE8D: A9 00     LDA #$00
C - - - - - 0x00CE9F 03:CE8F: 9D 0D 05  STA ram_obj_anim_timer,X
C - - - - - 0x00CEA2 03:CE92: FE 0C 05  INC ram_obj_anim_id,X
C - - - - - 0x00CEA5 03:CE95: A0 08     LDY #$08
C - - - - - 0x00CEA7 03:CE97: BD 09 05  LDA ram_obj_0509,X
C - - - - - 0x00CEAA 03:CE9A: F0 02     BEQ bra_CE9E
C - - - - - 0x00CEAC 03:CE9C: A0 04     LDY #$04
bra_CE9E:
C - - - - - 0x00CEAE 03:CE9E: 84 21     STY ram_0021
C - - - - - 0x00CEB0 03:CEA0: BD 0C 05  LDA ram_obj_anim_id,X
C - - - - - 0x00CEB3 03:CEA3: C5 21     CMP ram_0021
C - - - - - 0x00CEB5 03:CEA5: D0 05     BNE bra_CEAC
C - - - - - 0x00CEB7 03:CEA7: A9 00     LDA #$00
C - - - - - 0x00CEB9 03:CEA9: 9D 0C 05  STA ram_obj_anim_id,X
bra_CEAC:
C - - - - - 0x00CEBC 03:CEAC: BD 01 05  LDA ram_pos_X_lo_obj,X
C - - - - - 0x00CEBF 03:CEAF: 85 76     STA ram_0076
C - - - - - 0x00CEC1 03:CEB1: BD 02 05  LDA ram_pos_X_hi_obj,X
C - - - - - 0x00CEC4 03:CEB4: 85 77     STA ram_0077
C - - - - - 0x00CEC6 03:CEB6: BD 03 05  LDA ram_pos_Y_lo_obj,X
C - - - - - 0x00CEC9 03:CEB9: 85 78     STA ram_0078
C - - - - - 0x00CECB 03:CEBB: BD 04 05  LDA ram_pos_Y_hi_obj,X
C - - - - - 0x00CECE 03:CEBE: 85 79     STA ram_0079
C - - - - - 0x00CED0 03:CEC0: 20 07 CF  JSR sub_CF07
C - - - - - 0x00CED3 03:CEC3: 8A        TXA
C - - - - - 0x00CED4 03:CEC4: 4A        LSR
C - - - - - 0x00CED5 03:CEC5: 4A        LSR
C - - - - - 0x00CED6 03:CEC6: 4A        LSR
C - - - - - 0x00CED7 03:CEC7: 4A        LSR
C - - - - - 0x00CED8 03:CEC8: 4A        LSR
C - - - - - 0x00CED9 03:CEC9: A8        TAY
C - - - - - 0x00CEDA 03:CECA: B9 FF CE  LDA tbl_CEFF,Y
C - - - - - 0x00CEDD 03:CECD: 85 22     STA ram_0022
C - - - - - 0x00CEDF 03:CECF: BD 18 05  LDA ram_obj_0518,X
C - - - - - 0x00CEE2 03:CED2: F0 05     BEQ bra_CED9
C - - - - - 0x00CEE4 03:CED4: A9 05     LDA #$05
C - - - - - 0x00CEE6 03:CED6: 4C DC CE  JMP loc_CEDC    ; bzk optimize, BNE
bra_CED9:
C - - - - - 0x00CEE9 03:CED9: BD 09 05  LDA ram_obj_0509,X
loc_CEDC:
C D 2 - - - 0x00CEEC 03:CEDC: 0A        ASL
C - - - - - 0x00CEED 03:CEDD: A8        TAY
C - - - - - 0x00CEEE 03:CEDE: B9 45 CF  LDA tbl_CF45,Y
C - - - - - 0x00CEF1 03:CEE1: 85 1E     STA ram_001E
C - - - - - 0x00CEF3 03:CEE3: B9 46 CF  LDA tbl_CF45 + $01,Y
C - - - - - 0x00CEF6 03:CEE6: 85 1F     STA ram_001F
C - - - - - 0x00CEF8 03:CEE8: BD 0C 05  LDA ram_obj_anim_id,X
C - - - - - 0x00CEFB 03:CEEB: 0A        ASL
C - - - - - 0x00CEFC 03:CEEC: 85 23     STA ram_0023
C - - - - - 0x00CEFE 03:CEEE: BD 00 05  LDA ram_obj_state,X
C - - - - - 0x00CF01 03:CEF1: 29 08     AND #con_obj_state_08
C - - - - - 0x00CF03 03:CEF3: 4A        LSR
C - - - - - 0x00CF04 03:CEF4: 4A        LSR
C - - - - - 0x00CF05 03:CEF5: 4A        LSR
C - - - - - 0x00CF06 03:CEF6: 05 23     ORA ram_0023
C - - - - - 0x00CF08 03:CEF8: A8        TAY
C - - - - - 0x00CF09 03:CEF9: B1 1E     LDA (ram_001E),Y
C - - - - - 0x00CF0B 03:CEFB: 20 13 DB  JSR sub_DB13
C - - - - - 0x00CF0E 03:CEFE: 60        RTS



tbl_CEFF:
- D 2 - - - 0x00CF0F 03:CEFF: 00        .byte $00   ; 00 
- D 2 - - - 0x00CF10 03:CF00: 00        .byte $00   ; 01 
- D 2 - - - 0x00CF11 03:CF01: 01        .byte $01   ; 02 
- D 2 - - - 0x00CF12 03:CF02: 03        .byte $03   ; 03 
- D 2 - - - 0x00CF13 03:CF03: 00        .byte $00   ; 04 
- D 2 - - - 0x00CF14 03:CF04: 00        .byte $00   ; 05 
- D 2 - - - 0x00CF15 03:CF05: 00        .byte $00   ; 06 
- D 2 - - - 0x00CF16 03:CF06: 00        .byte $00   ; 07 



sub_CF07:
sub_0x00CF17:
C - - - - - 0x00CF17 03:CF07: 38        SEC
C - - - - - 0x00CF18 03:CF08: A5 76     LDA ram_0076
C - - - - - 0x00CF1A 03:CF0A: E5 70     SBC ram_0070
C - - - - - 0x00CF1C 03:CF0C: 85 74     STA ram_0074
C - - - - - 0x00CF1E 03:CF0E: A5 77     LDA ram_0077
C - - - - - 0x00CF20 03:CF10: E5 71     SBC ram_0071
C - - - - - 0x00CF22 03:CF12: 85 75     STA ram_0075
C - - - - - 0x00CF24 03:CF14: B0 03     BCS bra_CF19
C - - - - - 0x00CF26 03:CF16: 68        PLA
C - - - - - 0x00CF27 03:CF17: 68        PLA
C - - - - - 0x00CF28 03:CF18: 60        RTS
bra_CF19:
C - - - - - 0x00CF29 03:CF19: D0 08     BNE bra_CF23
C - - - - - 0x00CF2B 03:CF1B: A5 74     LDA ram_0074
C - - - - - 0x00CF2D 03:CF1D: 85 20     STA ram_0020
C - - - - - 0x00CF2F 03:CF1F: C9 F8     CMP #$F8
C - - - - - 0x00CF31 03:CF21: 90 03     BCC bra_CF26
bra_CF23:
C - - - - - 0x00CF33 03:CF23: 68        PLA
C - - - - - 0x00CF34 03:CF24: 68        PLA
C - - - - - 0x00CF35 03:CF25: 60        RTS
bra_CF26:
C - - - - - 0x00CF36 03:CF26: 38        SEC
C - - - - - 0x00CF37 03:CF27: A5 78     LDA ram_0078
C - - - - - 0x00CF39 03:CF29: E5 72     SBC ram_0072
C - - - - - 0x00CF3B 03:CF2B: 85 74     STA ram_0074
C - - - - - 0x00CF3D 03:CF2D: A5 79     LDA ram_0079
C - - - - - 0x00CF3F 03:CF2F: E5 73     SBC ram_0073
C - - - - - 0x00CF41 03:CF31: 85 75     STA ram_0075
C - - - - - 0x00CF43 03:CF33: B0 03     BCS bra_CF38
bra_CF35:
C - - - - - 0x00CF45 03:CF35: 68        PLA
C - - - - - 0x00CF46 03:CF36: 68        PLA
C - - - - - 0x00CF47 03:CF37: 60        RTS
bra_CF38:
C - - - - - 0x00CF48 03:CF38: D0 FB     BNE bra_CF35
C - - - - - 0x00CF4A 03:CF3A: A5 74     LDA ram_0074
C - - - - - 0x00CF4C 03:CF3C: 85 21     STA ram_0021
C - - - - - 0x00CF4E 03:CF3E: C9 E0     CMP #$E0
C - - - - - 0x00CF50 03:CF40: 90 02     BCC bra_CF44_RTS
C - - - - - 0x00CF52 03:CF42: 68        PLA
C - - - - - 0x00CF53 03:CF43: 68        PLA
bra_CF44_RTS:
C - - - - - 0x00CF54 03:CF44: 60        RTS



tbl_CF45:
- D 2 - - - 0x00CF55 03:CF45: 51 CF     .word _off003_CF51_00
- D 2 - - - 0x00CF57 03:CF47: 71 CF     .word _off003_CF71_01
- D 2 - - - 0x00CF59 03:CF49: 81 CF     .word _off003_CF81_02
- D 2 - - - 0x00CF5B 03:CF4B: 79 CF     .word _off003_CF79_03
- D 2 - - - 0x00CF5D 03:CF4D: 89 CF     .word _off003_CF89_04
- D 2 - - - 0x00CF5F 03:CF4F: 61 CF     .word _off003_CF61_05

_off003_CF51_00:
- D 2 - I - 0x00CF61 03:CF51: 07        .byte $07   ; 
- D 2 - I - 0x00CF62 03:CF52: 02        .byte $02   ; 
- D 2 - I - 0x00CF63 03:CF53: 08        .byte $08   ; 
- D 2 - I - 0x00CF64 03:CF54: 03        .byte $03   ; 
- D 2 - I - 0x00CF65 03:CF55: 09        .byte $09   ; 
- D 2 - I - 0x00CF66 03:CF56: 04        .byte $04   ; 
- D 2 - I - 0x00CF67 03:CF57: 08        .byte $08   ; 
- D 2 - I - 0x00CF68 03:CF58: 03        .byte $03   ; 
- D 2 - I - 0x00CF69 03:CF59: 07        .byte $07   ; 
- D 2 - I - 0x00CF6A 03:CF5A: 02        .byte $02   ; 
- D 2 - I - 0x00CF6B 03:CF5B: 06        .byte $06   ; 
- D 2 - I - 0x00CF6C 03:CF5C: 01        .byte $01   ; 
- D 2 - I - 0x00CF6D 03:CF5D: 05        .byte $05   ; 
- D 2 - I - 0x00CF6E 03:CF5E: 00        .byte $00   ; 
- D 2 - I - 0x00CF6F 03:CF5F: 06        .byte $06   ; 
- D 2 - I - 0x00CF70 03:CF60: 01        .byte $01   ; 

_off003_CF61_05:
- D 2 - I - 0x00CF71 03:CF61: 14        .byte $14   ; 
- D 2 - I - 0x00CF72 03:CF62: 14        .byte $14   ; 
- D 2 - I - 0x00CF73 03:CF63: 14        .byte $14   ; 
- D 2 - I - 0x00CF74 03:CF64: 14        .byte $14   ; 
- D 2 - I - 0x00CF75 03:CF65: 14        .byte $14   ; 
- D 2 - I - 0x00CF76 03:CF66: 14        .byte $14   ; 
- D 2 - I - 0x00CF77 03:CF67: 14        .byte $14   ; 
- D 2 - I - 0x00CF78 03:CF68: 14        .byte $14   ; 
- D 2 - I - 0x00CF79 03:CF69: 15        .byte $15   ; 
- D 2 - I - 0x00CF7A 03:CF6A: 15        .byte $15   ; 
- D 2 - I - 0x00CF7B 03:CF6B: 15        .byte $15   ; 
- D 2 - I - 0x00CF7C 03:CF6C: 15        .byte $15   ; 
- D 2 - I - 0x00CF7D 03:CF6D: 15        .byte $15   ; 
- D 2 - I - 0x00CF7E 03:CF6E: 15        .byte $15   ; 
- D 2 - I - 0x00CF7F 03:CF6F: 15        .byte $15   ; 
- D 2 - I - 0x00CF80 03:CF70: 15        .byte $15   ; 

_off003_CF71_01:
- D 2 - I - 0x00CF81 03:CF71: 27        .byte $27   ; 
- D 2 - I - 0x00CF82 03:CF72: 24        .byte $24   ; 
- D 2 - I - 0x00CF83 03:CF73: 28        .byte $28   ; 
- D 2 - I - 0x00CF84 03:CF74: 25        .byte $25   ; 
- D 2 - I - 0x00CF85 03:CF75: 27        .byte $27   ; 
- D 2 - I - 0x00CF86 03:CF76: 24        .byte $24   ; 
- D 2 - I - 0x00CF87 03:CF77: 26        .byte $26   ; 
- D 2 - I - 0x00CF88 03:CF78: 23        .byte $23   ; 

_off003_CF79_03:
- D 2 - I - 0x00CF89 03:CF79: 5A        .byte $5A   ; 
- D 2 - I - 0x00CF8A 03:CF7A: 57        .byte $57   ; 
- D 2 - I - 0x00CF8B 03:CF7B: 5B        .byte $5B   ; 
- D 2 - I - 0x00CF8C 03:CF7C: 58        .byte $58   ; 
- D 2 - I - 0x00CF8D 03:CF7D: 5A        .byte $5A   ; 
- D 2 - I - 0x00CF8E 03:CF7E: 57        .byte $57   ; 
- D 2 - I - 0x00CF8F 03:CF7F: 59        .byte $59   ; 
- D 2 - I - 0x00CF90 03:CF80: 56        .byte $56   ; 

_off003_CF81_02:
- D 2 - I - 0x00CF91 03:CF81: 3F        .byte $3F   ; 
- D 2 - I - 0x00CF92 03:CF82: 3C        .byte $3C   ; 
- D 2 - I - 0x00CF93 03:CF83: 3E        .byte $3E   ; 
- D 2 - I - 0x00CF94 03:CF84: 3B        .byte $3B   ; 
- D 2 - I - 0x00CF95 03:CF85: 3F        .byte $3F   ; 
- D 2 - I - 0x00CF96 03:CF86: 3C        .byte $3C   ; 
- D 2 - I - 0x00CF97 03:CF87: 40        .byte $40   ; 
- D 2 - I - 0x00CF98 03:CF88: 3D        .byte $3D   ; 

_off003_CF89_04:
- D 2 - I - 0x00CF99 03:CF89: 35        .byte $35   ; 
- D 2 - I - 0x00CF9A 03:CF8A: 32        .byte $32   ; 
- D 2 - I - 0x00CF9B 03:CF8B: 36        .byte $36   ; 
- D 2 - I - 0x00CF9C 03:CF8C: 33        .byte $33   ; 
- D 2 - I - 0x00CF9D 03:CF8D: 35        .byte $35   ; 
- D 2 - I - 0x00CF9E 03:CF8E: 32        .byte $32   ; 
- D 2 - I - 0x00CF9F 03:CF8F: 34        .byte $34   ; 
- D 2 - I - 0x00CFA0 03:CF90: 31        .byte $31   ; 



sub_CF91:
C - - - - - 0x00CFA1 03:CF91: A2 00     LDX #$00
bra_CF93_loop:
C - - - - - 0x00CFA3 03:CF93: BD 00 05  LDA ram_obj_state,X
C - - - - - 0x00CFA6 03:CF96: 10 07     BPL bra_CF9F    ; if not exists     con_obj_state_exists
C - - - - - 0x00CFA8 03:CF98: 29 20     AND #con_obj_state_20
C - - - - - 0x00CFAA 03:CF9A: D0 03     BNE bra_CF9F
C - - - - - 0x00CFAC 03:CF9C: 20 A7 CF  JSR sub_CFA7
bra_CF9F:
C - - - - - 0x00CFAF 03:CF9F: 8A        TXA
C - - - - - 0x00CFB0 03:CFA0: 18        CLC
C - - - - - 0x00CFB1 03:CFA1: 69 20     ADC #$20
C - - - - - 0x00CFB3 03:CFA3: AA        TAX
C - - - - - 0x00CFB4 03:CFA4: D0 ED     BNE bra_CF93_loop
C - - - - - 0x00CFB6 03:CFA6: 60        RTS



sub_CFA7:
C - - - - - 0x00CFB7 03:CFA7: BD 09 05  LDA ram_obj_0509,X
C - - - - - 0x00CFBA 03:CFAA: F0 05     BEQ bra_CFB1
C - - - - - 0x00CFBC 03:CFAC: C9 01     CMP #$01
C - - - - - 0x00CFBE 03:CFAE: F0 01     BEQ bra_CFB1
C - - - - - 0x00CFC0 03:CFB0: 60        RTS
bra_CFB1:
C - - - - - 0x00CFC1 03:CFB1: BD 01 05  LDA ram_pos_X_lo_obj,X
C - - - - - 0x00CFC4 03:CFB4: 29 0F     AND #$0F
C - - - - - 0x00CFC6 03:CFB6: F0 01     BEQ bra_CFB9
C - - - - - 0x00CFC8 03:CFB8: 60        RTS
bra_CFB9:
C - - - - - 0x00CFC9 03:CFB9: BD 01 05  LDA ram_pos_X_lo_obj,X
C - - - - - 0x00CFCC 03:CFBC: 85 6A     STA ram_006A
C - - - - - 0x00CFCE 03:CFBE: BD 02 05  LDA ram_pos_X_hi_obj,X
C - - - - - 0x00CFD1 03:CFC1: 85 6B     STA ram_006B
C - - - - - 0x00CFD3 03:CFC3: BD 03 05  LDA ram_pos_Y_lo_obj,X
C - - - - - 0x00CFD6 03:CFC6: 18        CLC
C - - - - - 0x00CFD7 03:CFC7: 69 08     ADC #< $0008
C - - - - - 0x00CFD9 03:CFC9: 85 6C     STA ram_006C
C - - - - - 0x00CFDB 03:CFCB: BD 04 05  LDA ram_pos_Y_hi_obj,X
C - - - - - 0x00CFDE 03:CFCE: 69 00     ADC #> $0008
C - - - - - 0x00CFE0 03:CFD0: 85 6D     STA ram_006D
C - - - - - 0x00CFE2 03:CFD2: 20 5F C3  JSR sub_C35F
C - - - - - 0x00CFE5 03:CFD5: BD 0B 05  LDA ram_obj_btn,X
C - - - - - 0x00CFE8 03:CFD8: 29 08     AND #con_btn_Up
C - - - - - 0x00CFEA 03:CFDA: D0 08     BNE bra_CFE4_up
C - - - - - 0x00CFEC 03:CFDC: BD 0B 05  LDA ram_obj_btn,X
C - - - - - 0x00CFEF 03:CFDF: 29 04     AND #con_btn_Down
C - - - - - 0x00CFF1 03:CFE1: D0 0C     BNE bra_CFEF_down
C - - - - - 0x00CFF3 03:CFE3: 60        RTS
bra_CFE4_up:
C - - - - - 0x00CFF4 03:CFE4: A5 6E     LDA ram_006E
C - - - - - 0x00CFF6 03:CFE6: C9 0E     CMP #$0E
C - - - - - 0x00CFF8 03:CFE8: F0 1C     BEQ bra_D006
C - - - - - 0x00CFFA 03:CFEA: C9 0F     CMP #$0F
C - - - - - 0x00CFFC 03:CFEC: F0 1E     BEQ bra_D00C
C - - - - - 0x00CFFE 03:CFEE: 60        RTS
bra_CFEF_down:
C - - - - - 0x00CFFF 03:CFEF: A5 6E     LDA ram_006E
C - - - - - 0x00D001 03:CFF1: C9 0C     CMP #$0C
C - - - - - 0x00D003 03:CFF3: F0 05     BEQ bra_CFFA
C - - - - - 0x00D005 03:CFF5: C9 0D     CMP #$0D
C - - - - - 0x00D007 03:CFF7: F0 07     BEQ bra_D000
C - - - - - 0x00D009 03:CFF9: 60        RTS
bra_CFFA:
C - - - - - 0x00D00A 03:CFFA: A9 02     LDA #$02
C - - - - - 0x00D00C 03:CFFC: 20 2A D2  JSR sub_D22A
C - - - - - 0x00D00F 03:CFFF: 60        RTS
bra_D000:
C - - - - - 0x00D010 03:D000: A9 03     LDA #$03
C - - - - - 0x00D012 03:D002: 20 2A D2  JSR sub_D22A
C - - - - - 0x00D015 03:D005: 60        RTS
bra_D006:
C - - - - - 0x00D016 03:D006: A9 01     LDA #$01
C - - - - - 0x00D018 03:D008: 20 2A D2  JSR sub_D22A
C - - - - - 0x00D01B 03:D00B: 60        RTS
bra_D00C:
C - - - - - 0x00D01C 03:D00C: A9 00     LDA #$00
C - - - - - 0x00D01E 03:D00E: 20 2A D2  JSR sub_D22A
C - - - - - 0x00D021 03:D011: 60        RTS



sub_D012:
C - - - - - 0x00D022 03:D012: A2 00     LDX #$00
bra_D014_loop:
C - - - - - 0x00D024 03:D014: BD 00 05  LDA ram_obj_state,X
C - - - - - 0x00D027 03:D017: 10 0A     BPL bra_D023    ; if not exists     con_obj_state_exists
C - - - - - 0x00D029 03:D019: BD 12 05  LDA ram_obj_0512,X
C - - - - - 0x00D02C 03:D01C: 29 08     AND #$08
C - - - - - 0x00D02E 03:D01E: D0 03     BNE bra_D023
C - - - - - 0x00D030 03:D020: 20 2B D0  JSR sub_D02B
bra_D023:
C - - - - - 0x00D033 03:D023: 8A        TXA
C - - - - - 0x00D034 03:D024: 18        CLC
C - - - - - 0x00D035 03:D025: 69 20     ADC #$20
C - - - - - 0x00D037 03:D027: AA        TAX
C - - - - - 0x00D038 03:D028: D0 EA     BNE bra_D014_loop
C - - - - - 0x00D03A 03:D02A: 60        RTS



sub_D02B:
C - - - - - 0x00D03B 03:D02B: BD 00 05  LDA ram_obj_state,X
C - - - - - 0x00D03E 03:D02E: 29 20     AND #con_obj_state_20
C - - - - - 0x00D040 03:D030: D0 01     BNE bra_D033
C - - - - - 0x00D042 03:D032: 60        RTS
bra_D033:
C - - - - - 0x00D043 03:D033: E0 00     CPX #$00
C - - - - - 0x00D045 03:D035: F0 08     BEQ bra_D03F    ; if it is player
C - - - - - 0x00D047 03:D037: BD 14 05  LDA ram_obj_0514,X
C - - - - - 0x00D04A 03:D03A: 29 01     AND #$01
C - - - - - 0x00D04C 03:D03C: F0 01     BEQ bra_D03F
C - - - - - 0x00D04E 03:D03E: 60        RTS
bra_D03F:
C - - - - - 0x00D04F 03:D03F: BD 10 05  LDA ram_obj_0510,X
C - - - - - 0x00D052 03:D042: 20 78 EF  JSR sub_EF78_jump_to_pointers_after_jsr
- D 2 - I - 0x00D055 03:D045: 09 D1     .word ofs_003_D109_00
- D 2 - I - 0x00D057 03:D047: 15 D1     .word ofs_003_D115_01
- D 2 - I - 0x00D059 03:D049: 21 D1     .word ofs_003_D121_02
- D 2 - I - 0x00D05B 03:D04B: 2D D1     .word ofs_003_D12D_03
- D 2 - I - 0x00D05D 03:D04D: 39 D1     .word ofs_003_D139_04
- D 2 - I - 0x00D05F 03:D04F: 39 D1     .word ofs_003_D139_05
- D 2 - I - 0x00D061 03:D051: B7 D0     .word ofs_003_D0B7_06
- D 2 - I - 0x00D063 03:D053: 71 D0     .word ofs_003_D071_07
- D 2 - I - 0x00D065 03:D055: 5F D0     .word ofs_003_D05F_08
- D 2 - I - 0x00D067 03:D057: 59 D0     .word ofs_003_D059_09



ofs_003_D059_09:
C - - J - - 0x00D069 03:D059: 20 65 D2  JSR sub_D265_move_obj_1_pixel_up
C - - - - - 0x00D06C 03:D05C: 4C 62 D0  JMP loc_D062



ofs_003_D05F_08:
C - - J - - 0x00D06F 03:D05F: 20 53 D2  JSR sub_D253_move_obj_1_pixel_down
loc_D062:
C D 2 - - - 0x00D072 03:D062: FE 0E 05  INC ram_obj_050E,X
C - - - - - 0x00D075 03:D065: BD 0E 05  LDA ram_obj_050E,X
C - - - - - 0x00D078 03:D068: C9 18     CMP #$18
C - - - - - 0x00D07A 03:D06A: F0 01     BEQ bra_D06D    ; bzk optimize, BNE to RTS
C - - - - - 0x00D07C 03:D06C: 60        RTS
bra_D06D:
C - - - - - 0x00D07D 03:D06D: 20 10 D2  JSR sub_D210
C - - - - - 0x00D080 03:D070: 60        RTS



ofs_003_D071_07:
C - - J - - 0x00D081 03:D071: 20 65 D2  JSR sub_D265_move_obj_1_pixel_up
C - - - - - 0x00D084 03:D074: FE 0E 05  INC ram_obj_050E,X
C - - - - - 0x00D087 03:D077: BD 0E 05  LDA ram_obj_050E,X
C - - - - - 0x00D08A 03:D07A: C9 18     CMP #$18
C - - - - - 0x00D08C 03:D07C: F0 01     BEQ bra_D07F    ; bzk optimize, BNE to RTS
C - - - - - 0x00D08E 03:D07E: 60        RTS
bra_D07F:
C - - - - - 0x00D08F 03:D07F: BD 01 05  LDA ram_pos_X_lo_obj,X
C - - - - - 0x00D092 03:D082: 85 6A     STA ram_006A
C - - - - - 0x00D094 03:D084: BD 02 05  LDA ram_pos_X_hi_obj,X
C - - - - - 0x00D097 03:D087: 85 6B     STA ram_006B
C - - - - - 0x00D099 03:D089: BD 03 05  LDA ram_pos_Y_lo_obj,X
C - - - - - 0x00D09C 03:D08C: 18        CLC
C - - - - - 0x00D09D 03:D08D: 69 10     ADC #< $0010
C - - - - - 0x00D09F 03:D08F: 85 6C     STA ram_006C
C - - - - - 0x00D0A1 03:D091: BD 04 05  LDA ram_pos_Y_hi_obj,X
C - - - - - 0x00D0A4 03:D094: 69 00     ADC #> $0010
C - - - - - 0x00D0A6 03:D096: 85 6D     STA ram_006D
C - - - - - 0x00D0A8 03:D098: 20 5F C3  JSR sub_C35F
C - - - - - 0x00D0AB 03:D09B: A5 6E     LDA ram_006E
C - - - - - 0x00D0AD 03:D09D: 29 0F     AND #$0F
C - - - - - 0x00D0AF 03:D09F: C9 0A     CMP #$0A
C - - - - - 0x00D0B1 03:D0A1: F0 0E     BEQ bra_D0B1
C - - - - - 0x00D0B3 03:D0A3: BD 12 05  LDA ram_obj_0512,X
C - - - - - 0x00D0B6 03:D0A6: 09 08     ORA #$08
C - - - - - 0x00D0B8 03:D0A8: 9D 12 05  STA ram_obj_0512,X
C - - - - - 0x00D0BB 03:D0AB: A9 00     LDA #$00
C - - - - - 0x00D0BD 03:D0AD: 9D 0E 05  STA ram_obj_050E,X
C - - - - - 0x00D0C0 03:D0B0: 60        RTS
bra_D0B1:
C - - - - - 0x00D0C1 03:D0B1: A9 09     LDA #$09
C - - - - - 0x00D0C3 03:D0B3: 20 2A D2  JSR sub_D22A
C - - - - - 0x00D0C6 03:D0B6: 60        RTS



ofs_003_D0B7_06:
C - - J - - 0x00D0C7 03:D0B7: 20 53 D2  JSR sub_D253_move_obj_1_pixel_down
C - - - - - 0x00D0CA 03:D0BA: FE 0E 05  INC ram_obj_050E,X
C - - - - - 0x00D0CD 03:D0BD: BD 0E 05  LDA ram_obj_050E,X
C - - - - - 0x00D0D0 03:D0C0: C9 18     CMP #$18
C - - - - - 0x00D0D2 03:D0C2: F0 01     BEQ bra_D0C5    ; bzk optimize, BNE to RTS
C - - - - - 0x00D0D4 03:D0C4: 60        RTS
bra_D0C5:
C - - - - - 0x00D0D5 03:D0C5: BD 01 05  LDA ram_pos_X_lo_obj,X
C - - - - - 0x00D0D8 03:D0C8: 85 6A     STA ram_006A
C - - - - - 0x00D0DA 03:D0CA: BD 02 05  LDA ram_pos_X_hi_obj,X
C - - - - - 0x00D0DD 03:D0CD: 85 6B     STA ram_006B
C - - - - - 0x00D0DF 03:D0CF: BD 03 05  LDA ram_pos_Y_lo_obj,X
C - - - - - 0x00D0E2 03:D0D2: 85 6C     STA ram_006C
C - - - - - 0x00D0E4 03:D0D4: BD 04 05  LDA ram_pos_Y_hi_obj,X
C - - - - - 0x00D0E7 03:D0D7: 85 6D     STA ram_006D
C - - - - - 0x00D0E9 03:D0D9: 20 5F C3  JSR sub_C35F
C - - - - - 0x00D0EC 03:D0DC: A5 6E     LDA ram_006E
C - - - - - 0x00D0EE 03:D0DE: 29 0F     AND #$0F
C - - - - - 0x00D0F0 03:D0E0: C9 09     CMP #$09
C - - - - - 0x00D0F2 03:D0E2: F0 1F     BEQ bra_D103
C - - - - - 0x00D0F4 03:D0E4: BD 12 05  LDA ram_obj_0512,X
C - - - - - 0x00D0F7 03:D0E7: 09 08     ORA #$08
C - - - - - 0x00D0F9 03:D0E9: 9D 12 05  STA ram_obj_0512,X
C - - - - - 0x00D0FC 03:D0EC: A9 00     LDA #$00
C - - - - - 0x00D0FE 03:D0EE: 9D 0E 05  STA ram_obj_050E,X
C - - - - - 0x00D101 03:D0F1: BD 03 05  LDA ram_pos_Y_lo_obj,X
C - - - - - 0x00D104 03:D0F4: 18        CLC
C - - - - - 0x00D105 03:D0F5: 69 10     ADC #< $0010
C - - - - - 0x00D107 03:D0F7: 9D 03 05  STA ram_pos_Y_lo_obj,X
C - - - - - 0x00D10A 03:D0FA: BD 04 05  LDA ram_pos_Y_hi_obj,X
C - - - - - 0x00D10D 03:D0FD: 69 00     ADC #> $0010
C - - - - - 0x00D10F 03:D0FF: 9D 04 05  STA ram_pos_Y_hi_obj,X
C - - - - - 0x00D112 03:D102: 60        RTS
bra_D103:
C - - - - - 0x00D113 03:D103: A9 08     LDA #$08
C - - - - - 0x00D115 03:D105: 20 2A D2  JSR sub_D22A
C - - - - - 0x00D118 03:D108: 60        RTS



ofs_003_D109_00:
C - - J - - 0x00D119 03:D109: BD 11 05  LDA ram_obj_0511,X
C - - - - - 0x00D11C 03:D10C: 20 78 EF  JSR sub_EF78_jump_to_pointers_after_jsr
- D 2 - I - 0x00D11F 03:D10F: BC D1     .word ofs_D1BC_00
- D 2 - I - 0x00D121 03:D111: F0 D1     .word ofs_D1F0_01
- D 2 - I - 0x00D123 03:D113: FE D1     .word ofs_D1FE_02



ofs_003_D115_01:
C - - J - - 0x00D125 03:D115: BD 11 05  LDA ram_obj_0511,X
C - - - - - 0x00D128 03:D118: 20 78 EF  JSR sub_EF78_jump_to_pointers_after_jsr
- D 2 - I - 0x00D12B 03:D11B: BC D1     .word ofs_D1BC_00
- D 2 - I - 0x00D12D 03:D11D: EA D1     .word ofs_D1EA_01
- D 2 - I - 0x00D12F 03:D11F: FE D1     .word ofs_D1FE_02



ofs_003_D121_02:
C - - J - - 0x00D131 03:D121: BD 11 05  LDA ram_obj_0511,X
C - - - - - 0x00D134 03:D124: 20 78 EF  JSR sub_EF78_jump_to_pointers_after_jsr
- D 2 - I - 0x00D137 03:D127: CE D1     .word ofs_D1CE_00
- D 2 - I - 0x00D139 03:D129: F0 D1     .word ofs_D1F0_01
- D 2 - I - 0x00D13B 03:D12B: DC D1     .word ofs_D1DC_02



ofs_003_D12D_03:
C - - J - - 0x00D13D 03:D12D: BD 11 05  LDA ram_obj_0511,X
C - - - - - 0x00D140 03:D130: 20 78 EF  JSR sub_EF78_jump_to_pointers_after_jsr
- D 2 - I - 0x00D143 03:D133: CE D1     .word ofs_D1CE_00
- D 2 - I - 0x00D145 03:D135: EA D1     .word ofs_D1EA_01
- D 2 - I - 0x00D147 03:D137: DC D1     .word ofs_D1DC_02



ofs_003_D139_04:
ofs_003_D139_05:
C - - J - - 0x00D149 03:D139: BD 11 05  LDA ram_obj_0511,X
C - - - - - 0x00D14C 03:D13C: 20 78 EF  JSR sub_EF78_jump_to_pointers_after_jsr
- D 2 - I - 0x00D14F 03:D13F: 4B D1     .word ofs_004_D14B_00
- D 2 - I - 0x00D151 03:D141: 6F D1     .word ofs_004_D16F_01
- D 2 - I - 0x00D153 03:D143: A0 D1     .word ofs_004_D1A0_02
- D 2 - I - 0x00D155 03:D145: A0 D1     .word ofs_004_D1A0_03
- D 2 - I - 0x00D157 03:D147: A0 D1     .word ofs_004_D1A0_04
- D 2 - I - 0x00D159 03:D149: AB D1     .word ofs_004_D1AB_05



ofs_004_D14B_00:
C - - J - - 0x00D15B 03:D14B: FE 0E 05  INC ram_obj_050E,X
C - - - - - 0x00D15E 03:D14E: BD 0E 05  LDA ram_obj_050E,X
C - - - - - 0x00D161 03:D151: C9 40     CMP #$40
C - - - - - 0x00D163 03:D153: F0 01     BEQ bra_D156
C - - - - - 0x00D165 03:D155: 60        RTS
bra_D156:
C - - - - - 0x00D166 03:D156: E0 00     CPX #$00
C - - - - - 0x00D168 03:D158: D0 11     BNE bra_D16B    ; if it is enemy
C - - - - - 0x00D16A 03:D15A: BD 03 05  LDA ram_pos_Y_lo_obj,X
C - - - - - 0x00D16D 03:D15D: 18        CLC
C - - - - - 0x00D16E 03:D15E: 69 08     ADC #< $0008
C - - - - - 0x00D170 03:D160: 9D 03 05  STA ram_pos_Y_lo_obj,X
C - - - - - 0x00D173 03:D163: BD 04 05  LDA ram_pos_Y_hi_obj,X
C - - - - - 0x00D176 03:D166: 69 00     ADC #> $0008
C - - - - - 0x00D178 03:D168: 9D 04 05  STA ram_pos_Y_hi_obj,X
bra_D16B:
C - - - - - 0x00D17B 03:D16B: 20 44 D2  JSR sub_D244
C - - - - - 0x00D17E 03:D16E: 60        RTS



ofs_004_D16F_01:
C - - J - - 0x00D17F 03:D16F: FE 0E 05  INC ram_obj_050E,X
C - - - - - 0x00D182 03:D172: BD 0E 05  LDA ram_obj_050E,X
C - - - - - 0x00D185 03:D175: C9 40     CMP #$40
C - - - - - 0x00D187 03:D177: F0 01     BEQ bra_D17A
C - - - - - 0x00D189 03:D179: 60        RTS
bra_D17A:
C - - - - - 0x00D18A 03:D17A: 20 44 D2  JSR sub_D244
C - - - - - 0x00D18D 03:D17D: BD 01 05  LDA ram_pos_X_lo_obj,X
C - - - - - 0x00D190 03:D180: 18        CLC
C - - - - - 0x00D191 03:D181: 69 04     ADC #< $0004
C - - - - - 0x00D193 03:D183: 9D 01 05  STA ram_pos_X_lo_obj,X
C - - - - - 0x00D196 03:D186: BD 02 05  LDA ram_pos_X_hi_obj,X
C - - - - - 0x00D199 03:D189: 69 00     ADC #> $0004
C - - - - - 0x00D19B 03:D18B: 9D 02 05  STA ram_pos_X_hi_obj,X
C - - - - - 0x00D19E 03:D18E: BD 03 05  LDA ram_pos_Y_lo_obj,X
C - - - - - 0x00D1A1 03:D191: 38        SEC
C - - - - - 0x00D1A2 03:D192: E9 08     SBC #< $0008
C - - - - - 0x00D1A4 03:D194: 9D 03 05  STA ram_pos_Y_lo_obj,X
C - - - - - 0x00D1A7 03:D197: BD 04 05  LDA ram_pos_Y_hi_obj,X
C - - - - - 0x00D1AA 03:D19A: E9 00     SBC #> $0008
C - - - - - 0x00D1AC 03:D19C: 9D 04 05  STA ram_pos_Y_hi_obj,X
C - - - - - 0x00D1AF 03:D19F: 60        RTS



ofs_004_D1A0_02:
ofs_004_D1A0_03:
ofs_004_D1A0_04:
C - - J - - 0x00D1B0 03:D1A0: FE 0E 05  INC ram_obj_050E,X
C - - - - - 0x00D1B3 03:D1A3: BD 0E 05  LDA ram_obj_050E,X
C - - - - - 0x00D1B6 03:D1A6: C9 10     CMP #$10
C - - - - - 0x00D1B8 03:D1A8: F0 C1     BEQ bra_D16B
C - - - - - 0x00D1BA 03:D1AA: 60        RTS



ofs_004_D1AB_05:
C - - J - - 0x00D1BB 03:D1AB: FE 0E 05  INC ram_obj_050E,X
C - - - - - 0x00D1BE 03:D1AE: BD 0E 05  LDA ram_obj_050E,X
C - - - - - 0x00D1C1 03:D1B1: C9 10     CMP #$10
C - - - - - 0x00D1C3 03:D1B3: F0 01     BEQ bra_D1B6    ; bzk optimize, BNE to RTS
C - - - - - 0x00D1C5 03:D1B5: 60        RTS
bra_D1B6:
C - - - - - 0x00D1C6 03:D1B6: A9 00     LDA #con_obj_state_null
C - - - - - 0x00D1C8 03:D1B8: 9D 00 05  STA ram_obj_state,X
C - - - - - 0x00D1CB 03:D1BB: 60        RTS



ofs_D1BC_00:
C - - J - - 0x00D1CC 03:D1BC: 20 53 D2  JSR sub_D253_move_obj_1_pixel_down
C - - - - - 0x00D1CF 03:D1BF: FE 0E 05  INC ram_obj_050E,X
C - - - - - 0x00D1D2 03:D1C2: BD 0E 05  LDA ram_obj_050E,X
C - - - - - 0x00D1D5 03:D1C5: C9 0A     CMP #$0A
C - - - - - 0x00D1D7 03:D1C7: F0 01     BEQ bra_D1CA    ; bzk optimize, BNE to RTS
C - - - - - 0x00D1D9 03:D1C9: 60        RTS
bra_D1CA:
C - - - - - 0x00D1DA 03:D1CA: 20 44 D2  JSR sub_D244
C - - - - - 0x00D1DD 03:D1CD: 60        RTS



ofs_D1CE_00:
C - - J - - 0x00D1DE 03:D1CE: 20 65 D2  JSR sub_D265_move_obj_1_pixel_up
C - - - - - 0x00D1E1 03:D1D1: FE 0E 05  INC ram_obj_050E,X
C - - - - - 0x00D1E4 03:D1D4: BD 0E 05  LDA ram_obj_050E,X
C - - - - - 0x00D1E7 03:D1D7: C9 26     CMP #$26
C - - - - - 0x00D1E9 03:D1D9: F0 EF     BEQ bra_D1CA
C - - - - - 0x00D1EB 03:D1DB: 60        RTS



ofs_D1DC_02:
C - - J - - 0x00D1EC 03:D1DC: 20 65 D2  JSR sub_D265_move_obj_1_pixel_up
C - - - - - 0x00D1EF 03:D1DF: FE 0E 05  INC ram_obj_050E,X
C - - - - - 0x00D1F2 03:D1E2: BD 0E 05  LDA ram_obj_050E,X
C - - - - - 0x00D1F5 03:D1E5: C9 0A     CMP #$0A
C - - - - - 0x00D1F7 03:D1E7: F0 23     BEQ bra_D20C
C - - - - - 0x00D1F9 03:D1E9: 60        RTS



ofs_D1EA_01:
C - - J - - 0x00D1FA 03:D1EA: 20 77 D2  JSR sub_D277_move_obj_1_pixel_left
C - - - - - 0x00D1FD 03:D1ED: 4C F3 D1  JMP loc_D1F3



ofs_D1F0_01:
C - - J - - 0x00D200 03:D1F0: 20 89 D2  JSR sub_D289_move_obj_1_pixel_right
loc_D1F3:
C D 2 - - - 0x00D203 03:D1F3: FE 0E 05  INC ram_obj_050E,X
C - - - - - 0x00D206 03:D1F6: BD 0E 05  LDA ram_obj_050E,X
C - - - - - 0x00D209 03:D1F9: C9 10     CMP #$10
C - - - - - 0x00D20B 03:D1FB: F0 CD     BEQ bra_D1CA
C - - - - - 0x00D20D 03:D1FD: 60        RTS



ofs_D1FE_02:
C - - J - - 0x00D20E 03:D1FE: 20 53 D2  JSR sub_D253_move_obj_1_pixel_down
C - - - - - 0x00D211 03:D201: FE 0E 05  INC ram_obj_050E,X
C - - - - - 0x00D214 03:D204: BD 0E 05  LDA ram_obj_050E,X
C - - - - - 0x00D217 03:D207: C9 26     CMP #$26
C - - - - - 0x00D219 03:D209: F0 01     BEQ bra_D20C    ; bzk optimize, BNE to RTS
C - - - - - 0x00D21B 03:D20B: 60        RTS
bra_D20C:
C - - - - - 0x00D21C 03:D20C: 20 10 D2  JSR sub_D210
C - - - - - 0x00D21F 03:D20F: 60        RTS



sub_D210:
C - - - - - 0x00D220 03:D210: BD 00 05  LDA ram_obj_state,X
C - - - - - 0x00D223 03:D213: 29 DF     AND #con_obj_state_20 ^ $FF
C - - - - - 0x00D225 03:D215: 9D 00 05  STA ram_obj_state,X
C - - - - - 0x00D228 03:D218: A9 00     LDA #$00
C - - - - - 0x00D22A 03:D21A: 9D 0C 05  STA ram_obj_anim_id,X
C - - - - - 0x00D22D 03:D21D: 9D 0D 05  STA ram_obj_anim_timer,X
C - - - - - 0x00D230 03:D220: 9D 0E 05  STA ram_obj_050E,X
C - - - - - 0x00D233 03:D223: 9D 10 05  STA ram_obj_0510,X
C - - - - - 0x00D236 03:D226: 9D 11 05  STA ram_obj_0511,X
C - - - - - 0x00D239 03:D229: 60        RTS



sub_D22A:
C - - - - - 0x00D23A 03:D22A: 9D 10 05  STA ram_obj_0510,X
C - - - - - 0x00D23D 03:D22D: A9 00     LDA #$00
C - - - - - 0x00D23F 03:D22F: 9D 0C 05  STA ram_obj_anim_id,X
C - - - - - 0x00D242 03:D232: 9D 0D 05  STA ram_obj_anim_timer,X
C - - - - - 0x00D245 03:D235: 9D 0E 05  STA ram_obj_050E,X
C - - - - - 0x00D248 03:D238: 9D 11 05  STA ram_obj_0511,X
C - - - - - 0x00D24B 03:D23B: BD 00 05  LDA ram_obj_state,X
C - - - - - 0x00D24E 03:D23E: 09 20     ORA #con_obj_state_20
C - - - - - 0x00D250 03:D240: 9D 00 05  STA ram_obj_state,X
C - - - - - 0x00D253 03:D243: 60        RTS



sub_D244:
C - - - - - 0x00D254 03:D244: FE 11 05  INC ram_obj_0511,X
C - - - - - 0x00D257 03:D247: A9 00     LDA #$00
C - - - - - 0x00D259 03:D249: 9D 0E 05  STA ram_obj_050E,X
C - - - - - 0x00D25C 03:D24C: 9D 0C 05  STA ram_obj_anim_id,X
C - - - - - 0x00D25F 03:D24F: 9D 0D 05  STA ram_obj_anim_timer,X
C - - - - - 0x00D262 03:D252: 60        RTS



sub_D253_move_obj_1_pixel_down:
ofs_006_D253_01_move_obj_1_pixel_down:
C - - - - - 0x00D263 03:D253: BD 03 05  LDA ram_pos_Y_lo_obj,X
C - - - - - 0x00D266 03:D256: 38        SEC
C - - - - - 0x00D267 03:D257: E9 01     SBC #< $0001
C - - - - - 0x00D269 03:D259: 9D 03 05  STA ram_pos_Y_lo_obj,X
C - - - - - 0x00D26C 03:D25C: BD 04 05  LDA ram_pos_Y_hi_obj,X
C - - - - - 0x00D26F 03:D25F: E9 00     SBC #> $0001
C - - - - - 0x00D271 03:D261: 9D 04 05  STA ram_pos_Y_hi_obj,X
C - - - - - 0x00D274 03:D264: 60        RTS



sub_D265_move_obj_1_pixel_up:
ofs_006_D265_03_move_obj_1_pixel_up:
C - - - - - 0x00D275 03:D265: BD 03 05  LDA ram_pos_Y_lo_obj,X
C - - - - - 0x00D278 03:D268: 18        CLC
C - - - - - 0x00D279 03:D269: 69 01     ADC #< $0001
C - - - - - 0x00D27B 03:D26B: 9D 03 05  STA ram_pos_Y_lo_obj,X
C - - - - - 0x00D27E 03:D26E: BD 04 05  LDA ram_pos_Y_hi_obj,X
C - - - - - 0x00D281 03:D271: 69 00     ADC #> $0001
C - - - - - 0x00D283 03:D273: 9D 04 05  STA ram_pos_Y_hi_obj,X
C - - - - - 0x00D286 03:D276: 60        RTS



sub_D277_move_obj_1_pixel_left:
ofs_006_D277_02_move_obj_1_pixel_left:
C - - - - - 0x00D287 03:D277: BD 01 05  LDA ram_pos_X_lo_obj,X
C - - - - - 0x00D28A 03:D27A: 38        SEC
C - - - - - 0x00D28B 03:D27B: E9 01     SBC #< $0001
C - - - - - 0x00D28D 03:D27D: 9D 01 05  STA ram_pos_X_lo_obj,X
C - - - - - 0x00D290 03:D280: BD 02 05  LDA ram_pos_X_hi_obj,X
C - - - - - 0x00D293 03:D283: E9 00     SBC #> $0001
C - - - - - 0x00D295 03:D285: 9D 02 05  STA ram_pos_X_hi_obj,X
C - - - - - 0x00D298 03:D288: 60        RTS



sub_D289_move_obj_1_pixel_right:
ofs_006_D289_00_move_obj_1_pixel_right:
C - - - - - 0x00D299 03:D289: BD 01 05  LDA ram_pos_X_lo_obj,X
C - - - - - 0x00D29C 03:D28C: 18        CLC
C - - - - - 0x00D29D 03:D28D: 69 01     ADC #< $0001
C - - - - - 0x00D29F 03:D28F: 9D 01 05  STA ram_pos_X_lo_obj,X
C - - - - - 0x00D2A2 03:D292: BD 02 05  LDA ram_pos_X_hi_obj,X
C - - - - - 0x00D2A5 03:D295: 69 00     ADC #> $0001
C - - - - - 0x00D2A7 03:D297: 9D 02 05  STA ram_pos_X_hi_obj,X
C - - - - - 0x00D2AA 03:D29A: 60        RTS



loc_D29B:
C D 2 - - - 0x00D2AB 03:D29B: BD 12 05  LDA ram_obj_0512,X
C - - - - - 0x00D2AE 03:D29E: 29 08     AND #$08
C - - - - - 0x00D2B0 03:D2A0: F0 30     BEQ bra_D2D2
C - - - - - 0x00D2B2 03:D2A2: BD 01 05  LDA ram_pos_X_lo_obj,X
C - - - - - 0x00D2B5 03:D2A5: 85 76     STA ram_0076
C - - - - - 0x00D2B7 03:D2A7: BD 02 05  LDA ram_pos_X_hi_obj,X
C - - - - - 0x00D2BA 03:D2AA: 85 77     STA ram_0077
C - - - - - 0x00D2BC 03:D2AC: BD 03 05  LDA ram_pos_Y_lo_obj,X
C - - - - - 0x00D2BF 03:D2AF: 85 78     STA ram_0078
C - - - - - 0x00D2C1 03:D2B1: BD 04 05  LDA ram_pos_Y_hi_obj,X
C - - - - - 0x00D2C4 03:D2B4: 85 79     STA ram_0079
C - - - - - 0x00D2C6 03:D2B6: 20 07 CF  JSR sub_CF07
C - - - - - 0x00D2C9 03:D2B9: BD 12 05  LDA ram_obj_0512,X
C - - - - - 0x00D2CC 03:D2BC: 29 04     AND #$04
C - - - - - 0x00D2CE 03:D2BE: F0 05     BEQ bra_D2C5
C - - - - - 0x00D2D0 03:D2C0: A9 52     LDA #$52
C - - - - - 0x00D2D2 03:D2C2: 20 13 DB  JSR sub_DB13
bra_D2C5:
C - - - - - 0x00D2D5 03:D2C5: BD 12 05  LDA ram_obj_0512,X
C - - - - - 0x00D2D8 03:D2C8: 29 02     AND #$02
C - - - - - 0x00D2DA 03:D2CA: F0 05     BEQ bra_D2D1_RTS
C - - - - - 0x00D2DC 03:D2CC: A9 54     LDA #$54
C - - - - - 0x00D2DE 03:D2CE: 20 13 DB  JSR sub_DB13
bra_D2D1_RTS:
C - - - - - 0x00D2E1 03:D2D1: 60        RTS
bra_D2D2:
C - - - - - 0x00D2E2 03:D2D2: E0 00     CPX #$00
C - - - - - 0x00D2E4 03:D2D4: F0 07     BEQ bra_D2DD_it_is_player
C - - - - - 0x00D2E6 03:D2D6: BD 14 05  LDA ram_obj_0514,X
C - - - - - 0x00D2E9 03:D2D9: 29 01     AND #$01
C - - - - - 0x00D2EB 03:D2DB: D0 1E     BNE bra_D2FB
bra_D2DD_it_is_player:
C - - - - - 0x00D2ED 03:D2DD: FE 0D 05  INC ram_obj_anim_timer,X
C - - - - - 0x00D2F0 03:D2E0: BD 0D 05  LDA ram_obj_anim_timer,X
C - - - - - 0x00D2F3 03:D2E3: C9 03     CMP #$03
C - - - - - 0x00D2F5 03:D2E5: D0 14     BNE bra_D2FB
C - - - - - 0x00D2F7 03:D2E7: A9 00     LDA #$00
C - - - - - 0x00D2F9 03:D2E9: 9D 0D 05  STA ram_obj_anim_timer,X
C - - - - - 0x00D2FC 03:D2EC: FE 0C 05  INC ram_obj_anim_id,X
C - - - - - 0x00D2FF 03:D2EF: 20 32 D3  JSR sub_D332
C - - - - - 0x00D302 03:D2F2: C9 FF     CMP #$FF
C - - - - - 0x00D304 03:D2F4: D0 05     BNE bra_D2FB
C - - - - - 0x00D306 03:D2F6: A9 00     LDA #$00
C - - - - - 0x00D308 03:D2F8: 9D 0C 05  STA ram_obj_anim_id,X
bra_D2FB:
C - - - - - 0x00D30B 03:D2FB: BD 01 05  LDA ram_pos_X_lo_obj,X
C - - - - - 0x00D30E 03:D2FE: 85 76     STA ram_0076
C - - - - - 0x00D310 03:D300: BD 02 05  LDA ram_pos_X_hi_obj,X
C - - - - - 0x00D313 03:D303: 85 77     STA ram_0077
C - - - - - 0x00D315 03:D305: BD 03 05  LDA ram_pos_Y_lo_obj,X
C - - - - - 0x00D318 03:D308: 85 78     STA ram_0078
C - - - - - 0x00D31A 03:D30A: BD 04 05  LDA ram_pos_Y_hi_obj,X
C - - - - - 0x00D31D 03:D30D: 85 79     STA ram_0079
C - - - - - 0x00D31F 03:D30F: 20 07 CF  JSR sub_CF07
C - - - - - 0x00D322 03:D312: 8A        TXA
C - - - - - 0x00D323 03:D313: 4A        LSR
C - - - - - 0x00D324 03:D314: 4A        LSR
C - - - - - 0x00D325 03:D315: 4A        LSR
C - - - - - 0x00D326 03:D316: 4A        LSR
C - - - - - 0x00D327 03:D317: 4A        LSR
C - - - - - 0x00D328 03:D318: A8        TAY
C - - - - - 0x00D329 03:D319: B9 2A D3  LDA tbl_D32A,Y
C - - - - - 0x00D32C 03:D31C: 85 22     STA ram_0022
C - - - - - 0x00D32E 03:D31E: 20 32 D3  JSR sub_D332
C - - - - - 0x00D331 03:D321: C9 FF     CMP #$FF
; bzk optimize, BEQ to RTS at 0x00D339, delete excess RTS at 0x00D335
C - - - - - 0x00D333 03:D323: D0 01     BNE bra_D326
- - - - - - 0x00D335 03:D325: 60        RTS
bra_D326:
C - - - - - 0x00D336 03:D326: 20 13 DB  JSR sub_DB13
C - - - - - 0x00D339 03:D329: 60        RTS



tbl_D32A:
- D 2 - - - 0x00D33A 03:D32A: 00        .byte $00   ; 00 
- D 2 - - - 0x00D33B 03:D32B: 00        .byte $00   ; 01 
- D 2 - - - 0x00D33C 03:D32C: 01        .byte $01   ; 02 
- D 2 - - - 0x00D33D 03:D32D: 03        .byte $03   ; 03 
- D 2 - - - 0x00D33E 03:D32E: 00        .byte $00   ; 04 
- D 2 - - - 0x00D33F 03:D32F: 00        .byte $00   ; 05 
- D 2 - - - 0x00D340 03:D330: 00        .byte $00   ; 06 
- D 2 - - - 0x00D341 03:D331: 00        .byte $00   ; 07 



sub_D332:
C - - - - - 0x00D342 03:D332: BD 09 05  LDA ram_obj_0509,X
C - - - - - 0x00D345 03:D335: 0A        ASL
C - - - - - 0x00D346 03:D336: A8        TAY
C - - - - - 0x00D347 03:D337: B9 6F D3  LDA tbl_D36F,Y
C - - - - - 0x00D34A 03:D33A: 85 1C     STA ram_001C
C - - - - - 0x00D34C 03:D33C: B9 70 D3  LDA tbl_D36F + $01,Y
C - - - - - 0x00D34F 03:D33F: 85 1D     STA ram_001D
C - - - - - 0x00D351 03:D341: BD 10 05  LDA ram_obj_0510,X
C - - - - - 0x00D354 03:D344: 0A        ASL
C - - - - - 0x00D355 03:D345: A8        TAY
C - - - - - 0x00D356 03:D346: B1 1C     LDA (ram_001C),Y
C - - - - - 0x00D358 03:D348: 85 1E     STA ram_001E
C - - - - - 0x00D35A 03:D34A: C8        INY
C - - - - - 0x00D35B 03:D34B: B1 1C     LDA (ram_001C),Y
C - - - - - 0x00D35D 03:D34D: 85 1F     STA ram_001F
C - - - - - 0x00D35F 03:D34F: A5 1E     LDA ram_001E
C - - - - - 0x00D361 03:D351: D0 07     BNE bra_D35A
- - - - - - 0x00D363 03:D353: A5 1F     LDA ram_001F
- - - - - - 0x00D365 03:D355: D0 03     BNE bra_D35A
- - - - - - 0x00D367 03:D357: A9 FF     LDA #$FF
- - - - - - 0x00D369 03:D359: 60        RTS
bra_D35A:
C - - - - - 0x00D36A 03:D35A: BD 11 05  LDA ram_obj_0511,X
C - - - - - 0x00D36D 03:D35D: 0A        ASL
C - - - - - 0x00D36E 03:D35E: A8        TAY
C - - - - - 0x00D36F 03:D35F: B1 1E     LDA (ram_001E),Y
C - - - - - 0x00D371 03:D361: 85 1C     STA ram_001C
C - - - - - 0x00D373 03:D363: C8        INY
C - - - - - 0x00D374 03:D364: B1 1E     LDA (ram_001E),Y
C - - - - - 0x00D376 03:D366: 85 1D     STA ram_001D
C - - - - - 0x00D378 03:D368: BD 0C 05  LDA ram_obj_anim_id,X
C - - - - - 0x00D37B 03:D36B: A8        TAY
C - - - - - 0x00D37C 03:D36C: B1 1C     LDA (ram_001C),Y
C - - - - - 0x00D37E 03:D36E: 60        RTS



tbl_D36F:
- D 2 - - - 0x00D37F 03:D36F: 79 D3     .word _off004_D379_00
- D 2 - - - 0x00D381 03:D371: EF D3     .word _off004_D3EF_01
- D 2 - - - 0x00D383 03:D373: 51 D4     .word _off004_D451_02
- D 2 - - - 0x00D385 03:D375: 83 D4     .word _off004_D483_03
- D 2 - - - 0x00D387 03:D377: B5 D4     .word _off004_D4B5_04



_off004_D379_00:
- D 2 - I - 0x00D389 03:D379: 8F D3     .word _off006_00_D38F_00
- D 2 - I - 0x00D38B 03:D37B: 95 D3     .word _off006_00_D395_01
- D 2 - I - 0x00D38D 03:D37D: 9B D3     .word _off006_00_D39B_02
- D 2 - I - 0x00D38F 03:D37F: A1 D3     .word _off006_00_D3A1_03
- D 2 - I - 0x00D391 03:D381: A7 D3     .word _off006_00_D3A7_04
- D 2 - I - 0x00D393 03:D383: B3 D3     .word _off006_00_D3B3_05
- D 2 - I - 0x00D395 03:D385: 8D D3     .word _off006_00_D38D_06
- D 2 - I - 0x00D397 03:D387: 8D D3     .word _off006_00_D38D_07
- D 2 - I - 0x00D399 03:D389: 8D D3     .word _off006_00_D38D_08
- D 2 - I - 0x00D39B 03:D38B: 8D D3     .word _off006_00_D38D_09



_off006_00_D38D_06:
_off006_00_D38D_07:
_off006_00_D38D_08:
_off006_00_D38D_09:
- D 2 - I - 0x00D39D 03:D38D: E9 D3     .word off_D3E9_00

_off006_00_D38F_00:
- D 2 - I - 0x00D39F 03:D38F: D1 D3     .word off_D3D1_00
- D 2 - I - 0x00D3A1 03:D391: D7 D3     .word off_D3D7_01
- D 2 - I - 0x00D3A3 03:D393: E9 D3     .word off_D3E9_02

_off006_00_D395_01:
- D 2 - I - 0x00D3A5 03:D395: D1 D3     .word off_D3D1_00
- D 2 - I - 0x00D3A7 03:D397: E0 D3     .word off_D3E0_01
- D 2 - I - 0x00D3A9 03:D399: E9 D3     .word off_D3E9_02

_off006_00_D39B_02:
- D 2 - I - 0x00D3AB 03:D39B: D4 D3     .word off_D3D4_00
- D 2 - I - 0x00D3AD 03:D39D: D7 D3     .word off_D3D7_01
- D 2 - I - 0x00D3AF 03:D39F: EC D3     .word off_D3EC_02

_off006_00_D3A1_03:
- D 2 - I - 0x00D3B1 03:D3A1: D4 D3     .word off_D3D4_00
- D 2 - I - 0x00D3B3 03:D3A3: E0 D3     .word off_D3E0_01
- D 2 - I - 0x00D3B5 03:D3A5: EC D3     .word off_D3EC_02

_off006_00_D3A7_04:
- D 2 - I - 0x00D3B7 03:D3A7: BF D3     .word off_D3BF_00
- D 2 - I - 0x00D3B9 03:D3A9: C1 D3     .word off_D3C1_01
- D 2 - I - 0x00D3BB 03:D3AB: C4 D3     .word off_D3C4_02
- D 2 - I - 0x00D3BD 03:D3AD: C6 D3     .word off_D3C6_03
- D 2 - I - 0x00D3BF 03:D3AF: C8 D3     .word off_D3C8_04
- D 2 - I - 0x00D3C1 03:D3B1: CA D3     .word off_D3CA_05

_off006_00_D3B3_05:
- D 2 - I - 0x00D3C3 03:D3B3: CC D3     .word off_D3CC_00
- D 2 - I - 0x00D3C5 03:D3B5: CE D3     .word off_D3CE_01
- D 2 - I - 0x00D3C7 03:D3B7: C4 D3     .word off_D3C4_02
- D 2 - I - 0x00D3C9 03:D3B9: C6 D3     .word off_D3C6_03
- D 2 - I - 0x00D3CB 03:D3BB: C8 D3     .word off_D3C8_04
- D 2 - I - 0x00D3CD 03:D3BD: CA D3     .word off_D3CA_05



off_D3BF_00:
- D 2 - I - 0x00D3CF 03:D3BF: 0D        .byte $0D   ; 
- D 2 - I - 0x00D3D0 03:D3C0: FF        .byte $FF   ; 

off_D3C1_01:
- D 2 - I - 0x00D3D1 03:D3C1: 0E        .byte $0E   ; 
- D 2 - I - 0x00D3D2 03:D3C2: 0F        .byte $0F   ; 
- D 2 - I - 0x00D3D3 03:D3C3: FF        .byte $FF   ; 

off_D3C4_02:
- D 2 - I - 0x00D3D4 03:D3C4: 60        .byte $60   ; 
- D 2 - I - 0x00D3D5 03:D3C5: FF        .byte $FF   ; 

off_D3C6_03:
- D 2 - I - 0x00D3D6 03:D3C6: 65        .byte $65   ; 
- D 2 - I - 0x00D3D7 03:D3C7: FF        .byte $FF   ; 

off_D3C8_04:
- D 2 - I - 0x00D3D8 03:D3C8: 66        .byte $66   ; 
- D 2 - I - 0x00D3D9 03:D3C9: FF        .byte $FF   ; 

off_D3CA_05:
- D 2 - I - 0x00D3DA 03:D3CA: 67        .byte $67   ; 
- D 2 - I - 0x00D3DB 03:D3CB: FF        .byte $FF   ; 

off_D3CC_00:
- D 2 - I - 0x00D3DC 03:D3CC: 0A        .byte $0A   ; 
- D 2 - I - 0x00D3DD 03:D3CD: FF        .byte $FF   ; 

off_D3CE_01:
- D 2 - I - 0x00D3DE 03:D3CE: 0B        .byte $0B   ; 
- D 2 - I - 0x00D3DF 03:D3CF: 0C        .byte $0C   ; 
- D 2 - I - 0x00D3E0 03:D3D0: FF        .byte $FF   ; 

off_D3D1_00:
- D 2 - I - 0x00D3E1 03:D3D1: 12        .byte $12   ; 
- D 2 - I - 0x00D3E2 03:D3D2: 13        .byte $13   ; 
- D 2 - I - 0x00D3E3 03:D3D3: FF        .byte $FF   ; 

off_D3D4_00:
- D 2 - I - 0x00D3E4 03:D3D4: 92        .byte $92   ; 
- D 2 - I - 0x00D3E5 03:D3D5: 93        .byte $93   ; 
- D 2 - I - 0x00D3E6 03:D3D6: FF        .byte $FF   ; 

off_D3D7_01:
- D 2 - I - 0x00D3E7 03:D3D7: 87        .byte $87   ; 
- D 2 - I - 0x00D3E8 03:D3D8: 88        .byte $88   ; 
- D 2 - I - 0x00D3E9 03:D3D9: 89        .byte $89   ; 
- D 2 - I - 0x00D3EA 03:D3DA: 88        .byte $88   ; 
- D 2 - I - 0x00D3EB 03:D3DB: 87        .byte $87   ; 
- D 2 - I - 0x00D3EC 03:D3DC: 86        .byte $86   ; 
- - - - - - 0x00D3ED 03:D3DD: 85        .byte $85   ; 
- - - - - - 0x00D3EE 03:D3DE: 86        .byte $86   ; 
- - - - - - 0x00D3EF 03:D3DF: FF        .byte $FF   ; 

off_D3E0_01:
- D 2 - I - 0x00D3F0 03:D3E0: 82        .byte $82   ; 
- D 2 - I - 0x00D3F1 03:D3E1: 83        .byte $83   ; 
- D 2 - I - 0x00D3F2 03:D3E2: 84        .byte $84   ; 
- D 2 - I - 0x00D3F3 03:D3E3: 83        .byte $83   ; 
- D 2 - I - 0x00D3F4 03:D3E4: 82        .byte $82   ; 
- D 2 - I - 0x00D3F5 03:D3E5: 81        .byte $81   ; 
- - - - - - 0x00D3F6 03:D3E6: 80        .byte $80   ; 
- - - - - - 0x00D3F7 03:D3E7: 81        .byte $81   ; 
- - - - - - 0x00D3F8 03:D3E8: FF        .byte $FF   ; 

off_D3E9_00:
off_D3E9_02:
- D 2 - I - 0x00D3F9 03:D3E9: 90        .byte $90   ; 
- D 2 - I - 0x00D3FA 03:D3EA: 91        .byte $91   ; 
- D 2 - I - 0x00D3FB 03:D3EB: FF        .byte $FF   ; 

off_D3EC_02:
- D 2 - I - 0x00D3FC 03:D3EC: 10        .byte $10   ; 
- D 2 - I - 0x00D3FD 03:D3ED: 11        .byte $11   ; 
- D 2 - I - 0x00D3FE 03:D3EE: FF        .byte $FF   ; 



_off004_D3EF_01:
- D 2 - I - 0x00D3FF 03:D3EF: 05 D4     .word _off006_01_D405_00
- D 2 - I - 0x00D401 03:D3F1: 0B D4     .word _off006_01_D40B_01
- D 2 - I - 0x00D403 03:D3F3: 11 D4     .word _off006_01_D411_02
- D 2 - I - 0x00D405 03:D3F5: 17 D4     .word _off006_01_D417_03
- D 2 - I - 0x00D407 03:D3F7: 1D D4     .word _off006_01_D41D_04
- D 2 - I - 0x00D409 03:D3F9: 29 D4     .word _off006_01_D429_05
- D 2 - I - 0x00D40B 03:D3FB: 03 D4     .word _off006_01_D403_06
- D 2 - I - 0x00D40D 03:D3FD: 03 D4     .word _off006_01_D403_07
- D 2 - I - 0x00D40F 03:D3FF: 03 D4     .word _off006_01_D403_08
- D 2 - I - 0x00D411 03:D401: 03 D4     .word _off006_01_D403_09



_off006_01_D403_06:
_off006_01_D403_07:
_off006_01_D403_08:
_off006_01_D403_09:
- D 2 - I - 0x00D413 03:D403: 4B D4     .word off_D44B_00

_off006_01_D405_00:
- D 2 - I - 0x00D415 03:D405: 3B D4     .word off_D43B_00
- D 2 - I - 0x00D417 03:D407: 41 D4     .word off_D441_01
- D 2 - I - 0x00D419 03:D409: 4B D4     .word off_D44B_02

_off006_01_D40B_01:
- D 2 - I - 0x00D41B 03:D40B: 3B D4     .word off_D43B_00
- D 2 - I - 0x00D41D 03:D40D: 46 D4     .word off_D446_01
- D 2 - I - 0x00D41F 03:D40F: 4B D4     .word off_D44B_02

_off006_01_D411_02:
- D 2 - I - 0x00D421 03:D411: 3E D4     .word off_D43E_00
- D 2 - I - 0x00D423 03:D413: 41 D4     .word off_D441_01
- D 2 - I - 0x00D425 03:D415: 4E D4     .word off_D44E_02

_off006_01_D417_03:
- D 2 - I - 0x00D427 03:D417: 3E D4     .word off_D43E_00
- D 2 - I - 0x00D429 03:D419: 46 D4     .word off_D446_01
- D 2 - I - 0x00D42B 03:D41B: 4E D4     .word off_D44E_02

_off006_01_D41D_04:
- D 2 - I - 0x00D42D 03:D41D: 35 D4     .word off_D435_00
- D 2 - I - 0x00D42F 03:D41F: 35 D4     .word off_D435_01
- D 2 - I - 0x00D431 03:D421: C4 D3     .word off_D3C4_02
- D 2 - I - 0x00D433 03:D423: C6 D3     .word off_D3C6_03
- D 2 - I - 0x00D435 03:D425: C8 D3     .word off_D3C8_04
- D 2 - I - 0x00D437 03:D427: CA D3     .word off_D3CA_05

_off006_01_D429_05:
- D 2 - I - 0x00D439 03:D429: 38 D4     .word off_D438_00
- D 2 - I - 0x00D43B 03:D42B: 38 D4     .word off_D438_01
- D 2 - I - 0x00D43D 03:D42D: C4 D3     .word off_D3C4_02
- D 2 - I - 0x00D43F 03:D42F: C6 D3     .word off_D3C6_03
- D 2 - I - 0x00D441 03:D431: C8 D3     .word off_D3C8_04
- D 2 - I - 0x00D443 03:D433: CA D3     .word off_D3CA_05



off_D435_00:
off_D435_01:
- D 2 - I - 0x00D445 03:D435: 2B        .byte $2B   ; 
- D 2 - I - 0x00D446 03:D436: 2C        .byte $2C   ; 
- D 2 - I - 0x00D447 03:D437: FF        .byte $FF   ; 

off_D438_00:
off_D438_01:
- D 2 - I - 0x00D448 03:D438: 29        .byte $29   ; 
- D 2 - I - 0x00D449 03:D439: 2A        .byte $2A   ; 
- D 2 - I - 0x00D44A 03:D43A: FF        .byte $FF   ; 

off_D43B_00:
- D 2 - I - 0x00D44B 03:D43B: 2F        .byte $2F   ; 
- D 2 - I - 0x00D44C 03:D43C: 30        .byte $30   ; 
- D 2 - I - 0x00D44D 03:D43D: FF        .byte $FF   ; 

off_D43E_00:
- D 2 - I - 0x00D44E 03:D43E: AF        .byte $AF   ; 
- D 2 - I - 0x00D44F 03:D43F: B0        .byte $B0   ; 
- D 2 - I - 0x00D450 03:D440: FF        .byte $FF   ; 

off_D441_01:
- D 2 - I - 0x00D451 03:D441: A7        .byte $A7   ; 
- D 2 - I - 0x00D452 03:D442: A8        .byte $A8   ; 
- D 2 - I - 0x00D453 03:D443: A7        .byte $A7   ; 
- D 2 - I - 0x00D454 03:D444: A6        .byte $A6   ; 
- D 2 - I - 0x00D455 03:D445: FF        .byte $FF   ; 

off_D446_01:
- D 2 - I - 0x00D456 03:D446: A4        .byte $A4   ; 
- D 2 - I - 0x00D457 03:D447: A5        .byte $A5   ; 
- D 2 - I - 0x00D458 03:D448: A4        .byte $A4   ; 
- D 2 - I - 0x00D459 03:D449: A3        .byte $A3   ; 
- D 2 - I - 0x00D45A 03:D44A: FF        .byte $FF   ; 

off_D44B_00:
off_D44B_02:
- D 2 - I - 0x00D45B 03:D44B: AD        .byte $AD   ; 
- D 2 - I - 0x00D45C 03:D44C: AE        .byte $AE   ; 
- D 2 - I - 0x00D45D 03:D44D: FF        .byte $FF   ; 

off_D44E_02:
- D 2 - I - 0x00D45E 03:D44E: 2D        .byte $2D   ; 
- D 2 - I - 0x00D45F 03:D44F: 2E        .byte $2E   ; 
- D 2 - I - 0x00D460 03:D450: FF        .byte $FF   ; 



_off004_D451_02:
- - - - - - 0x00D461 03:D451: 00 00     .word $0000 ; 00
- - - - - - 0x00D463 03:D453: 00 00     .word $0000 ; 01
- - - - - - 0x00D465 03:D455: 00 00     .word $0000 ; 02
- - - - - - 0x00D467 03:D457: 00 00     .word $0000 ; 03
- D 2 - I - 0x00D469 03:D459: 65 D4     .word _off006_02_D465_04
- D 2 - I - 0x00D46B 03:D45B: 71 D4     .word _off006_02_D471_05
- - - - - - 0x00D46D 03:D45D: 00 00     .word $0000 ; 06
- - - - - - 0x00D46F 03:D45F: 00 00     .word $0000 ; 07
- - - - - - 0x00D471 03:D461: 00 00     .word $0000 ; 08
- - - - - - 0x00D473 03:D463: 00 00     .word $0000 ; 09



_off006_02_D465_04:
- D 2 - I - 0x00D475 03:D465: 7D D4     .word off_D47D_00
- D 2 - I - 0x00D477 03:D467: 7D D4     .word off_D47D_01
- D 2 - I - 0x00D479 03:D469: C4 D3     .word off_D3C4_02
- D 2 - I - 0x00D47B 03:D46B: C6 D3     .word off_D3C6_03
- D 2 - I - 0x00D47D 03:D46D: C8 D3     .word off_D3C8_04
- D 2 - I - 0x00D47F 03:D46F: CA D3     .word off_D3CA_05

_off006_02_D471_05:
- D 2 - I - 0x00D481 03:D471: 80 D4     .word off_D480_00
- D 2 - I - 0x00D483 03:D473: 80 D4     .word off_D480_01
- D 2 - I - 0x00D485 03:D475: C4 D3     .word off_D3C4_02
- D 2 - I - 0x00D487 03:D477: C6 D3     .word off_D3C6_03
- D 2 - I - 0x00D489 03:D479: C8 D3     .word off_D3C8_04
- D 2 - I - 0x00D48B 03:D47B: CA D3     .word off_D3CA_05



off_D47D_00:
off_D47D_01:
- D 2 - I - 0x00D48D 03:D47D: 43        .byte $43   ; 
- D 2 - I - 0x00D48E 03:D47E: 44        .byte $44   ; 
- D 2 - I - 0x00D48F 03:D47F: FF        .byte $FF   ; 

off_D480_00:
off_D480_01:
- D 2 - I - 0x00D490 03:D480: 41        .byte $41   ; 
- D 2 - I - 0x00D491 03:D481: 42        .byte $42   ; 
- D 2 - I - 0x00D492 03:D482: FF        .byte $FF   ; 



_off004_D483_03:
- - - - - - 0x00D493 03:D483: 00 00     .word $0000 ; 00
- - - - - - 0x00D495 03:D485: 00 00     .word $0000 ; 01
- - - - - - 0x00D497 03:D487: 00 00     .word $0000 ; 02
- - - - - - 0x00D499 03:D489: 00 00     .word $0000 ; 03
- D 2 - I - 0x00D49B 03:D48B: 97 D4     .word _off006_03_D497_04
- D 2 - I - 0x00D49D 03:D48D: A3 D4     .word _off006_03_D4A3_05
- - - - - - 0x00D49F 03:D48F: 00 00     .word $0000 ; 06
- - - - - - 0x00D4A1 03:D491: 00 00     .word $0000 ; 07
- - - - - - 0x00D4A3 03:D493: 00 00     .word $0000 ; 08
- - - - - - 0x00D4A5 03:D495: 00 00     .word $0000 ; 09



_off006_03_D497_04:
- D 2 - I - 0x00D4A7 03:D497: AF D4     .word off_D4AF_00
- D 2 - I - 0x00D4A9 03:D499: AF D4     .word off_D4AF_01
- D 2 - I - 0x00D4AB 03:D49B: C4 D3     .word off_D3C4_02
- D 2 - I - 0x00D4AD 03:D49D: C6 D3     .word off_D3C6_03
- D 2 - I - 0x00D4AF 03:D49F: C8 D3     .word off_D3C8_04
- D 2 - I - 0x00D4B1 03:D4A1: CA D3     .word off_D3CA_05

_off006_03_D4A3_05:
- D 2 - I - 0x00D4B3 03:D4A3: B2 D4     .word off_D4B2_00
- D 2 - I - 0x00D4B5 03:D4A5: B2 D4     .word off_D4B2_01
- D 2 - I - 0x00D4B7 03:D4A7: C4 D3     .word off_D3C4_02
- D 2 - I - 0x00D4B9 03:D4A9: C6 D3     .word off_D3C6_03
- D 2 - I - 0x00D4BB 03:D4AB: C8 D3     .word off_D3C8_04
- D 2 - I - 0x00D4BD 03:D4AD: CA D3     .word off_D3CA_05



off_D4AF_00:
off_D4AF_01:
- D 2 - I - 0x00D4BF 03:D4AF: 5E        .byte $5E   ; 
- D 2 - I - 0x00D4C0 03:D4B0: 5F        .byte $5F   ; 
- D 2 - I - 0x00D4C1 03:D4B1: FF        .byte $FF   ; 

off_D4B2_00:
off_D4B2_01:
- D 2 - I - 0x00D4C2 03:D4B2: 5C        .byte $5C   ; 
- D 2 - I - 0x00D4C3 03:D4B3: 5D        .byte $5D   ; 
- D 2 - I - 0x00D4C4 03:D4B4: FF        .byte $FF   ; 



_off004_D4B5_04:
- - - - - - 0x00D4C5 03:D4B5: 00 00     .word $0000 ; 00
- - - - - - 0x00D4C7 03:D4B7: 00 00     .word $0000 ; 01
- - - - - - 0x00D4C9 03:D4B9: 00 00     .word $0000 ; 02
- - - - - - 0x00D4CB 03:D4BB: 00 00     .word $0000 ; 03
- D 2 - I - 0x00D4CD 03:D4BD: C9 D4     .word _off006_04_D4C9_04
- - - - - - 0x00D4CF 03:D4BF: D5 D4     .word _off006_04_D4D5_05
- - - - - - 0x00D4D1 03:D4C1: 00 00     .word $0000 ; 06
- - - - - - 0x00D4D3 03:D4C3: 00 00     .word $0000 ; 07
- - - - - - 0x00D4D5 03:D4C5: 00 00     .word $0000 ; 08
- - - - - - 0x00D4D7 03:D4C7: 00 00     .word $0000 ; 09



_off006_04_D4C9_04:
- D 2 - I - 0x00D4D9 03:D4C9: E1 D4     .word off_D4E1_00
- D 2 - I - 0x00D4DB 03:D4CB: E1 D4     .word off_D4E1_01
- D 2 - I - 0x00D4DD 03:D4CD: C4 D3     .word off_D3C4_02
- D 2 - I - 0x00D4DF 03:D4CF: C6 D3     .word off_D3C6_03
- D 2 - I - 0x00D4E1 03:D4D1: C8 D3     .word off_D3C8_04
- D 2 - I - 0x00D4E3 03:D4D3: CA D3     .word off_D3CA_05

_off006_04_D4D5_05:
- - - - - - 0x00D4E5 03:D4D5: E4 D4     .word off_D4E4_00
- - - - - - 0x00D4E7 03:D4D7: E4 D4     .word off_D4E4_01
- - - - - - 0x00D4E9 03:D4D9: C4 D3     .word off_D3C4_02
- - - - - - 0x00D4EB 03:D4DB: C6 D3     .word off_D3C6_03
- - - - - - 0x00D4ED 03:D4DD: C8 D3     .word off_D3C8_04
- - - - - - 0x00D4EF 03:D4DF: CA D3     .word off_D3CA_05



off_D4E1_00:
off_D4E1_01:
- D 2 - I - 0x00D4F1 03:D4E1: 39        .byte $39   ; 
- D 2 - I - 0x00D4F2 03:D4E2: 3A        .byte $3A   ; 
- D 2 - I - 0x00D4F3 03:D4E3: FF        .byte $FF   ; 

off_D4E4_00:
off_D4E4_01:
- - - - - - 0x00D4F4 03:D4E4: 37        .byte $37   ; 
- - - - - - 0x00D4F5 03:D4E5: 38        .byte $38   ; 
- - - - - - 0x00D4F6 03:D4E6: FF        .byte $FF   ; 



sub_D4E7:
C - - - - - 0x00D4F7 03:D4E7: A2 20     LDX #$20
C - - - - - 0x00D4F9 03:D4E9: 20 12 D5  JSR sub_D512
C - - - - - 0x00D4FC 03:D4EC: A2 40     LDX #$40
C - - - - - 0x00D4FE 03:D4EE: 20 19 D5  JSR sub_D519
C - - - - - 0x00D501 03:D4F1: A2 60     LDX #$60
C - - - - - 0x00D503 03:D4F3: 20 20 D5  JSR sub_D520
C - - - - - 0x00D506 03:D4F6: A2 80     LDX #$80
C - - - - - 0x00D508 03:D4F8: 20 2E D5  JSR sub_D52E
C - - - - - 0x00D50B 03:D4FB: A2 A0     LDX #$A0
C - - - - - 0x00D50D 03:D4FD: 20 0B D5  JSR sub_D50B
C - - - - - 0x00D510 03:D500: A2 C0     LDX #$C0
C - - - - - 0x00D512 03:D502: 20 27 D5  JSR sub_D527
C - - - - - 0x00D515 03:D505: A2 E0     LDX #$E0
C - - - - - 0x00D517 03:D507: 20 0B D5  JSR sub_D50B
C - - - - - 0x00D51A 03:D50A: 60        RTS



sub_D50B:
C - - - - - 0x00D51B 03:D50B: 20 0F D6  JSR sub_D60F
C - - - - - 0x00D51E 03:D50E: 20 6F D5  JSR sub_D56F
C - - - - - 0x00D521 03:D511: 60        RTS



sub_D512:
C - - - - - 0x00D522 03:D512: 20 BE D5  JSR sub_D5BE
C - - - - - 0x00D525 03:D515: 20 6F D5  JSR sub_D56F
C - - - - - 0x00D528 03:D518: 60        RTS



sub_D519:
C - - - - - 0x00D529 03:D519: 20 CD D5  JSR sub_D5CD
C - - - - - 0x00D52C 03:D51C: 20 6F D5  JSR sub_D56F
C - - - - - 0x00D52F 03:D51F: 60        RTS



sub_D520:
C - - - - - 0x00D530 03:D520: 20 4F D5  JSR sub_D54F
C - - - - - 0x00D533 03:D523: 20 6F D5  JSR sub_D56F
C - - - - - 0x00D536 03:D526: 60        RTS



sub_D527:
C - - - - - 0x00D537 03:D527: 20 60 D5  JSR sub_D560
C - - - - - 0x00D53A 03:D52A: 20 6F D5  JSR sub_D56F
C - - - - - 0x00D53D 03:D52D: 60        RTS



sub_D52E:
C - - - - - 0x00D53E 03:D52E: 20 35 D5  JSR sub_D535
C - - - - - 0x00D541 03:D531: 20 6F D5  JSR sub_D56F
C - - - - - 0x00D544 03:D534: 60        RTS



sub_D535:
C - - - - - 0x00D545 03:D535: 20 91 D5  JSR sub_D591
C - - - - - 0x00D548 03:D538: AD 0B 05  LDA ram_obj_btn
C - - - - - 0x00D54B 03:D53B: 29 03     AND #con_btns_LR
C - - - - - 0x00D54D 03:D53D: D0 07     BNE bra_D546
C - - - - - 0x00D54F 03:D53F: 20 77 D5  JSR sub_D577
C - - - - - 0x00D552 03:D542: 20 6A D6  JSR sub_D66A
C - - - - - 0x00D555 03:D545: 60        RTS
bra_D546:
C - - - - - 0x00D556 03:D546: 09 08     ORA #con_btn_Up
C - - - - - 0x00D558 03:D548: 9D 0B 05  STA ram_obj_btn,X
C - - - - - 0x00D55B 03:D54B: 20 6A D6  JSR sub_D66A
C - - - - - 0x00D55E 03:D54E: 60        RTS



sub_D54F:
C - - - - - 0x00D55F 03:D54F: 20 91 D5  JSR sub_D591
C - - - - - 0x00D562 03:D552: AD 0B 05  LDA ram_obj_btn
C - - - - - 0x00D565 03:D555: 29 03     AND #con_btns_LR
C - - - - - 0x00D567 03:D557: 09 08     ORA #con_btn_Up
C - - - - - 0x00D569 03:D559: 9D 0B 05  STA ram_obj_btn,X
C - - - - - 0x00D56C 03:D55C: 20 6A D6  JSR sub_D66A
C - - - - - 0x00D56F 03:D55F: 60        RTS



sub_D560:
C - - - - - 0x00D570 03:D560: 20 91 D5  JSR sub_D591
C - - - - - 0x00D573 03:D563: AD 0B 05  LDA ram_obj_btn
C - - - - - 0x00D576 03:D566: 29 03     AND #con_btns_LR
C - - - - - 0x00D578 03:D568: 9D 0B 05  STA ram_obj_btn,X
C - - - - - 0x00D57B 03:D56B: 20 6A D6  JSR sub_D66A
C - - - - - 0x00D57E 03:D56E: 60        RTS



sub_D56F:
C - - - - - 0x00D57F 03:D56F: BD 12 05  LDA ram_obj_0512,X
C - - - - - 0x00D582 03:D572: 29 40     AND #$40
C - - - - - 0x00D584 03:D574: D0 01     BNE bra_D577
C - - - - - 0x00D586 03:D576: 60        RTS
bra_D577:
sub_D577:
C - - - - - 0x00D587 03:D577: BD 0B 05  LDA ram_obj_btn,X
C - - - - - 0x00D58A 03:D57A: 29 FC     AND #con_btns_LR ^ $FF
C - - - - - 0x00D58C 03:D57C: 9D 0B 05  STA ram_obj_btn,X
C - - - - - 0x00D58F 03:D57F: BD 00 05  LDA ram_obj_state,X
C - - - - - 0x00D592 03:D582: 29 08     AND #con_obj_state_08
C - - - - - 0x00D594 03:D584: 4A        LSR
C - - - - - 0x00D595 03:D585: 4A        LSR
C - - - - - 0x00D596 03:D586: 4A        LSR
C - - - - - 0x00D597 03:D587: 18        CLC
C - - - - - 0x00D598 03:D588: 69 01     ADC #$01
C - - - - - 0x00D59A 03:D58A: 1D 0B 05  ORA ram_obj_btn,X
C - - - - - 0x00D59D 03:D58D: 9D 0B 05  STA ram_obj_btn,X
C - - - - - 0x00D5A0 03:D590: 60        RTS



sub_D591:
C - - - - - 0x00D5A1 03:D591: BD 00 05  LDA ram_obj_state,X
C - - - - - 0x00D5A4 03:D594: 10 12     BPL bra_D5A8    ; if not exists     con_obj_state_exists
C - - - - - 0x00D5A6 03:D596: BD 12 05  LDA ram_obj_0512,X
C - - - - - 0x00D5A9 03:D599: 29 20     AND #$20
C - - - - - 0x00D5AB 03:D59B: D0 18     BNE bra_D5B5
C - - - - - 0x00D5AD 03:D59D: BD 01 05  LDA ram_pos_X_lo_obj,X
C - - - - - 0x00D5B0 03:D5A0: 29 0F     AND #$0F
C - - - - - 0x00D5B2 03:D5A2: F0 07     BEQ bra_D5AB
C - - - - - 0x00D5B4 03:D5A4: C9 0F     CMP #$0F
C - - - - - 0x00D5B6 03:D5A6: F0 03     BEQ bra_D5AB
bra_D5A8:
C - - - - - 0x00D5B8 03:D5A8: 68        PLA
C - - - - - 0x00D5B9 03:D5A9: 68        PLA
C - - - - - 0x00D5BA 03:D5AA: 60        RTS
bra_D5AB:
C - - - - - 0x00D5BB 03:D5AB: FE 13 05  INC ram_obj_0513,X
C - - - - - 0x00D5BE 03:D5AE: BD 13 05  LDA ram_obj_0513,X
C - - - - - 0x00D5C1 03:D5B1: 29 0F     AND #$0F
C - - - - - 0x00D5C3 03:D5B3: D0 F3     BNE bra_D5A8
bra_D5B5:
C - - - - - 0x00D5C5 03:D5B5: BD 12 05  LDA ram_obj_0512,X
C - - - - - 0x00D5C8 03:D5B8: 29 DF     AND #$DF
C - - - - - 0x00D5CA 03:D5BA: 9D 12 05  STA ram_obj_0512,X
C - - - - - 0x00D5CD 03:D5BD: 60        RTS



sub_D5BE:
C - - - - - 0x00D5CE 03:D5BE: 20 91 D5  JSR sub_D591
C - - - - - 0x00D5D1 03:D5C1: 20 12 D6  JSR sub_D612
C - - - - - 0x00D5D4 03:D5C4: BD 0B 05  LDA ram_obj_btn,X
C - - - - - 0x00D5D7 03:D5C7: 09 08     ORA #con_btn_Up
C - - - - - 0x00D5D9 03:D5C9: 9D 0B 05  STA ram_obj_btn,X
C - - - - - 0x00D5DC 03:D5CC: 60        RTS



sub_D5CD:
C - - - - - 0x00D5DD 03:D5CD: 20 91 D5  JSR sub_D591
C - - - - - 0x00D5E0 03:D5D0: 20 3A D6  JSR sub_D63A
C - - - - - 0x00D5E3 03:D5D3: AD 03 05  LDA ram_pos_Y_lo_obj
C - - - - - 0x00D5E6 03:D5D6: 85 1E     STA ram_001E
C - - - - - 0x00D5E8 03:D5D8: AD 04 05  LDA ram_pos_Y_hi_obj
C - - - - - 0x00D5EB 03:D5DB: 85 1F     STA ram_001F
C - - - - - 0x00D5ED 03:D5DD: 20 7B D6  JSR sub_D67B_divide_16bit_by_10h
C - - - - - 0x00D5F0 03:D5E0: A5 1E     LDA ram_001E
C - - - - - 0x00D5F2 03:D5E2: 85 1C     STA ram_001C
C - - - - - 0x00D5F4 03:D5E4: BD 03 05  LDA ram_pos_Y_lo_obj,X
C - - - - - 0x00D5F7 03:D5E7: 85 1E     STA ram_001E
C - - - - - 0x00D5F9 03:D5E9: BD 04 05  LDA ram_pos_Y_hi_obj,X
C - - - - - 0x00D5FC 03:D5EC: 85 1F     STA ram_001F
C - - - - - 0x00D5FE 03:D5EE: 20 7B D6  JSR sub_D67B_divide_16bit_by_10h
C - - - - - 0x00D601 03:D5F1: A5 1E     LDA ram_001E
C - - - - - 0x00D603 03:D5F3: C5 1C     CMP ram_001C
C - - - - - 0x00D605 03:D5F5: B0 0C     BCS bra_D603
C - - - - - 0x00D607 03:D5F7: BD 0B 05  LDA ram_obj_btn,X
C - - - - - 0x00D60A 03:D5FA: 09 04     ORA #con_btn_Down
C - - - - - 0x00D60C 03:D5FC: 9D 0B 05  STA ram_obj_btn,X
C - - - - - 0x00D60F 03:D5FF: 20 6A D6  JSR sub_D66A
C - - - - - 0x00D612 03:D602: 60        RTS
bra_D603:
C - - - - - 0x00D613 03:D603: BD 0B 05  LDA ram_obj_btn,X
C - - - - - 0x00D616 03:D606: 09 08     ORA #con_btn_Up
C - - - - - 0x00D618 03:D608: 9D 0B 05  STA ram_obj_btn,X
C - - - - - 0x00D61B 03:D60B: 20 6A D6  JSR sub_D66A
C - - - - - 0x00D61E 03:D60E: 60        RTS



sub_D60F:
C - - - - - 0x00D61F 03:D60F: 20 91 D5  JSR sub_D591
sub_D612:
C - - - - - 0x00D622 03:D612: AD 03 05  LDA ram_pos_Y_lo_obj
C - - - - - 0x00D625 03:D615: 29 E0     AND #$E0
C - - - - - 0x00D627 03:D617: 85 1E     STA ram_001E
C - - - - - 0x00D629 03:D619: BD 03 05  LDA ram_pos_Y_lo_obj,X
C - - - - - 0x00D62C 03:D61C: 29 E0     AND #$E0
C - - - - - 0x00D62E 03:D61E: C5 1E     CMP ram_001E
C - - - - - 0x00D630 03:D620: D0 03     BNE bra_D625
C - - - - - 0x00D632 03:D622: 4C 33 D6  JMP loc_D633
bra_D625:
C - - - - - 0x00D635 03:D625: AD 0B 05  LDA ram_obj_btn
C - - - - - 0x00D638 03:D628: 29 03     AND #con_btns_LR
C - - - - - 0x00D63A 03:D62A: F0 07     BEQ bra_D633
C - - - - - 0x00D63C 03:D62C: 9D 0B 05  STA ram_obj_btn,X
C - - - - - 0x00D63F 03:D62F: 20 6A D6  JSR sub_D66A
C - - - - - 0x00D642 03:D632: 60        RTS
bra_D633:
loc_D633:
C D 2 - - - 0x00D643 03:D633: 20 3A D6  JSR sub_D63A
C - - - - - 0x00D646 03:D636: 20 6A D6  JSR sub_D66A
C - - - - - 0x00D649 03:D639: 60        RTS



sub_D63A:
C - - - - - 0x00D64A 03:D63A: AD 01 05  LDA ram_pos_X_lo_obj
C - - - - - 0x00D64D 03:D63D: 85 1E     STA ram_001E
C - - - - - 0x00D64F 03:D63F: AD 02 05  LDA ram_pos_X_hi_obj
C - - - - - 0x00D652 03:D642: 85 1F     STA ram_001F
C - - - - - 0x00D654 03:D644: 20 7B D6  JSR sub_D67B_divide_16bit_by_10h
C - - - - - 0x00D657 03:D647: A5 1E     LDA ram_001E
C - - - - - 0x00D659 03:D649: 85 1C     STA ram_001C
C - - - - - 0x00D65B 03:D64B: BD 01 05  LDA ram_pos_X_lo_obj,X
C - - - - - 0x00D65E 03:D64E: 85 1E     STA ram_001E
C - - - - - 0x00D660 03:D650: BD 02 05  LDA ram_pos_X_hi_obj,X
C - - - - - 0x00D663 03:D653: 85 1F     STA ram_001F
C - - - - - 0x00D665 03:D655: 20 7B D6  JSR sub_D67B_divide_16bit_by_10h
C - - - - - 0x00D668 03:D658: A5 1E     LDA ram_001E
C - - - - - 0x00D66A 03:D65A: C5 1C     CMP ram_001C
C - - - - - 0x00D66C 03:D65C: B0 06     BCS bra_D664
C - - - - - 0x00D66E 03:D65E: A9 01     LDA #con_btn_Right
C - - - - - 0x00D670 03:D660: 9D 0B 05  STA ram_obj_btn,X
C - - - - - 0x00D673 03:D663: 60        RTS
bra_D664:
C - - - - - 0x00D674 03:D664: A9 02     LDA #con_btn_Left
C - - - - - 0x00D676 03:D666: 9D 0B 05  STA ram_obj_btn,X
C - - - - - 0x00D679 03:D669: 60        RTS



sub_D66A:
C - - - - - 0x00D67A 03:D66A: BD 12 05  LDA ram_obj_0512,X
C - - - - - 0x00D67D 03:D66D: 29 10     AND #$10
C - - - - - 0x00D67F 03:D66F: D0 01     BNE bra_D672
C - - - - - 0x00D681 03:D671: 60        RTS
bra_D672:
C - - - - - 0x00D682 03:D672: BD 0B 05  LDA ram_obj_btn,X
C - - - - - 0x00D685 03:D675: 49 03     EOR #con_btns_LR
C - - - - - 0x00D687 03:D677: 9D 0B 05  STA ram_obj_btn,X
C - - - - - 0x00D68A 03:D67A: 60        RTS



sub_D67B_divide_16bit_by_10h:
; result = 001E (lo) + 001F (hi)
C - - - - - 0x00D68B 03:D67B: 46 1F     LSR ram_001F
C - - - - - 0x00D68D 03:D67D: 66 1E     ROR ram_001E
C - - - - - 0x00D68F 03:D67F: 46 1F     LSR ram_001F
C - - - - - 0x00D691 03:D681: 66 1E     ROR ram_001E
C - - - - - 0x00D693 03:D683: 46 1F     LSR ram_001F
C - - - - - 0x00D695 03:D685: 66 1E     ROR ram_001E
C - - - - - 0x00D697 03:D687: 46 1F     LSR ram_001F
C - - - - - 0x00D699 03:D689: 66 1E     ROR ram_001E
C - - - - - 0x00D69B 03:D68B: 60        RTS



sub_D68C:
C - - - - - 0x00D69C 03:D68C: AD 03 05  LDA ram_pos_Y_lo_obj
C - - - - - 0x00D69F 03:D68F: 18        CLC
C - - - - - 0x00D6A0 03:D690: 69 08     ADC #< $0008
C - - - - - 0x00D6A2 03:D692: 85 1E     STA ram_001E
C - - - - - 0x00D6A4 03:D694: AD 04 05  LDA ram_pos_Y_hi_obj
C - - - - - 0x00D6A7 03:D697: 69 00     ADC #> $0008
C - - - - - 0x00D6A9 03:D699: 85 1F     STA ram_001F
C - - - - - 0x00D6AB 03:D69B: 20 7B D6  JSR sub_D67B_divide_16bit_by_10h
C - - - - - 0x00D6AE 03:D69E: A5 1E     LDA ram_001E
C - - - - - 0x00D6B0 03:D6A0: 85 21     STA ram_0021
C - - - - - 0x00D6B2 03:D6A2: AD 00 05  LDA ram_obj_state
C - - - - - 0x00D6B5 03:D6A5: 4A        LSR
C - - - - - 0x00D6B6 03:D6A6: 4A        LSR
C - - - - - 0x00D6B7 03:D6A7: 4A        LSR
C - - - - - 0x00D6B8 03:D6A8: 29 01     AND #$01
C - - - - - 0x00D6BA 03:D6AA: A8        TAY
C - - - - - 0x00D6BB 03:D6AB: B9 D1 D7  LDA tbl_D7D1,Y
C - - - - - 0x00D6BE 03:D6AE: 18        CLC
C - - - - - 0x00D6BF 03:D6AF: 6D 01 05  ADC ram_pos_X_lo_obj
C - - - - - 0x00D6C2 03:D6B2: 85 1E     STA ram_001E
C - - - - - 0x00D6C4 03:D6B4: AD 02 05  LDA ram_pos_X_hi_obj
C - - - - - 0x00D6C7 03:D6B7: 69 00     ADC #$00
C - - - - - 0x00D6C9 03:D6B9: 85 1F     STA ram_001F
C - - - - - 0x00D6CB 03:D6BB: 20 7B D6  JSR sub_D67B_divide_16bit_by_10h
C - - - - - 0x00D6CE 03:D6BE: A5 1E     LDA ram_001E
C - - - - - 0x00D6D0 03:D6C0: 85 20     STA ram_0020
C - - - - - 0x00D6D2 03:D6C2: 60        RTS



sub_D6C3:
C - - - - - 0x00D6D3 03:D6C3: 20 8C D6  JSR sub_D68C
C - - - - - 0x00D6D6 03:D6C6: A2 00     LDX #$00
bra_D6C8_loop:
C - - - - - 0x00D6D8 03:D6C8: BD 10 06  LDA ram_item_state,X
C - - - - - 0x00D6DB 03:D6CB: 10 62     BPL bra_D72F    ; if not exists     con_item_state_exists
C - - - - - 0x00D6DD 03:D6CD: 29 04     AND #con_item_state_04
C - - - - - 0x00D6DF 03:D6CF: D0 5E     BNE bra_D72F
C - - - - - 0x00D6E1 03:D6D1: BD 10 06  LDA ram_item_state,X
C - - - - - 0x00D6E4 03:D6D4: 29 42     AND #(con_item_state_01 + con_item_state_04 + con_item_state_08 + con_item_state_10 + con_item_state_20 + con_item_state_exists) ^ $FF
C - - - - - 0x00D6E6 03:D6D6: D0 57     BNE bra_D72F
C - - - - - 0x00D6E8 03:D6D8: BD 11 06  LDA ram_pos_X_lo_item,X
C - - - - - 0x00D6EB 03:D6DB: 85 1E     STA ram_001E
C - - - - - 0x00D6ED 03:D6DD: BD 12 06  LDA ram_pos_X_hi_item,X
C - - - - - 0x00D6F0 03:D6E0: 85 1F     STA ram_001F
C - - - - - 0x00D6F2 03:D6E2: 20 7B D6  JSR sub_D67B_divide_16bit_by_10h
C - - - - - 0x00D6F5 03:D6E5: A5 1E     LDA ram_001E
C - - - - - 0x00D6F7 03:D6E7: 85 1C     STA ram_001C
C - - - - - 0x00D6F9 03:D6E9: BD 13 06  LDA ram_pos_Y_lo_item,X
C - - - - - 0x00D6FC 03:D6EC: 85 1E     STA ram_001E
C - - - - - 0x00D6FE 03:D6EE: BD 14 06  LDA ram_pos_Y_hi_item,X
C - - - - - 0x00D701 03:D6F1: 85 1F     STA ram_001F
C - - - - - 0x00D703 03:D6F3: 20 7B D6  JSR sub_D67B_divide_16bit_by_10h
C - - - - - 0x00D706 03:D6F6: A5 1C     LDA ram_001C
C - - - - - 0x00D708 03:D6F8: C5 20     CMP ram_0020
C - - - - - 0x00D70A 03:D6FA: D0 33     BNE bra_D72F
C - - - - - 0x00D70C 03:D6FC: A5 1E     LDA ram_001E
C - - - - - 0x00D70E 03:D6FE: C5 21     CMP ram_0021
C - - - - - 0x00D710 03:D700: D0 2D     BNE bra_D72F
C - - - - - 0x00D712 03:D702: BD 15 06  LDA ram_item_id,X
C - - - - - 0x00D715 03:D705: C9 04     CMP #con_item_id_glove
C - - - - - 0x00D717 03:D707: F0 19     BEQ bra_D722_it_is_glove
C - - - - - 0x00D719 03:D709: C9 06     CMP #con_item_id_sign_00
C - - - - - 0x00D71B 03:D70B: F0 2C     BEQ bra_D739_it_is_sign
C - - - - - 0x00D71D 03:D70D: C9 07     CMP #con_item_id_sign_01
C - - - - - 0x00D71F 03:D70F: F0 28     BEQ bra_D739_it_is_sign
C - - - - - 0x00D721 03:D711: C9 08     CMP #con_item_id_sign_02
C - - - - - 0x00D723 03:D713: F0 24     BEQ bra_D739_it_is_sign
C - - - - - 0x00D725 03:D715: C9 09     CMP #con_item_id_sign_03
C - - - - - 0x00D727 03:D717: F0 20     BEQ bra_D739_it_is_sign
C - - - - - 0x00D729 03:D719: C9 03     CMP #con_item_id_potion
C - - - - - 0x00D72B 03:D71B: D0 12     BNE bra_D72F    ; if not vial
C - - - - - 0x00D72D 03:D71D: A9 FF     LDA #$FF    ; if vial
C - - - - - 0x00D72F 03:D71F: 8D 15 05  STA ram_obj_invinc_timer
bra_D722_it_is_glove:
C - - - - - 0x00D732 03:D722: BD 10 06  LDA ram_item_state,X
C - - - - - 0x00D735 03:D725: 09 04     ORA #con_item_state_04
C - - - - - 0x00D737 03:D727: 9D 10 06  STA ram_item_state,X
C - - - - - 0x00D73A 03:D72A: A9 14     LDA #con_sound_14
C - - - - - 0x00D73C 03:D72C: 20 A2 F7  JSR sub_F7A2_play_sound
bra_D72F:
C - - - - - 0x00D73F 03:D72F: 8A        TXA
C - - - - - 0x00D740 03:D730: 18        CLC
C - - - - - 0x00D741 03:D731: 69 08     ADC #$08
C - - - - - 0x00D743 03:D733: AA        TAX
C - - - - - 0x00D744 03:D734: E0 20     CPX #$20
C - - - - - 0x00D746 03:D736: D0 90     BNE bra_D6C8_loop
C - - - - - 0x00D748 03:D738: 60        RTS
bra_D739_it_is_sign:
C - - - - - 0x00D749 03:D739: 85 32     STA ram_0032
C - - - - - 0x00D74B 03:D73B: BD 10 06  LDA ram_item_state,X
C - - - - - 0x00D74E 03:D73E: 09 04     ORA #con_item_state_04
C - - - - - 0x00D750 03:D740: 9D 10 06  STA ram_item_state,X
C - - - - - 0x00D753 03:D743: A2 00     LDX #$00
C - - - - - 0x00D755 03:D745: AD 12 05  LDA ram_obj_0512
C - - - - - 0x00D758 03:D748: 09 01     ORA #$01
C - - - - - 0x00D75A 03:D74A: 8D 12 05  STA ram_obj_0512
C - - - - - 0x00D75D 03:D74D: 20 43 E3  JSR sub_E343
C - - - - - 0x00D760 03:D750: A9 0F     LDA #con_sound_player_death
C - - - - - 0x00D762 03:D752: 20 A2 F7  JSR sub_F7A2_play_sound
C - - - - - 0x00D765 03:D755: 60        RTS



sub_D756:
C - - - - - 0x00D766 03:D756: 20 8C D6  JSR sub_D68C
C - - - - - 0x00D769 03:D759: A2 00     LDX #$00
bra_D75B_loop:
C - - - - - 0x00D76B 03:D75B: BD 00 06  LDA ram_pos_X_carrot,X
C - - - - - 0x00D76E 03:D75E: C5 20     CMP ram_0020
C - - - - - 0x00D770 03:D760: D0 12     BNE bra_D774
C - - - - - 0x00D772 03:D762: BD 01 06  LDA ram_pos_Y_carrot,X
C - - - - - 0x00D775 03:D765: C5 21     CMP ram_0021
C - - - - - 0x00D777 03:D767: D0 0B     BNE bra_D774
C - - - - - 0x00D779 03:D769: A9 00     LDA #$00
C - - - - - 0x00D77B 03:D76B: 9D 00 06  STA ram_pos_X_carrot,X
C - - - - - 0x00D77E 03:D76E: 9D 01 06  STA ram_pos_Y_carrot,X
C - - - - - 0x00D781 03:D771: 20 7B D7  JSR sub_D77B
bra_D774:
C - - - - - 0x00D784 03:D774: E8        INX
C - - - - - 0x00D785 03:D775: E8        INX
C - - - - - 0x00D786 03:D776: E0 10     CPX #$10
C - - - - - 0x00D788 03:D778: D0 E1     BNE bra_D75B_loop
C - - - - - 0x00D78A 03:D77A: 60        RTS



sub_D77B:
C - - - - - 0x00D78B 03:D77B: A5 20     LDA ram_0020
C - - - - - 0x00D78D 03:D77D: 20 FF C7  JSR sub_C7FF_multiply_8bit_by_10h
C - - - - - 0x00D790 03:D780: A5 1E     LDA ram_001E
C - - - - - 0x00D792 03:D782: 85 6A     STA ram_006A
C - - - - - 0x00D794 03:D784: A5 1F     LDA ram_001F
C - - - - - 0x00D796 03:D786: 85 6B     STA ram_006B
C - - - - - 0x00D798 03:D788: A5 21     LDA ram_0021
C - - - - - 0x00D79A 03:D78A: 20 FF C7  JSR sub_C7FF_multiply_8bit_by_10h
C - - - - - 0x00D79D 03:D78D: A5 1E     LDA ram_001E
C - - - - - 0x00D79F 03:D78F: 85 6C     STA ram_006C
C - - - - - 0x00D7A1 03:D791: A5 1F     LDA ram_001F
C - - - - - 0x00D7A3 03:D793: 85 6D     STA ram_006D
C - - - - - 0x00D7A5 03:D795: AD 00 06  LDA ram_pos_X_carrot
C - - - - - 0x00D7A8 03:D798: 0D 02 06  ORA ram_pos_X_carrot + $02
C - - - - - 0x00D7AB 03:D79B: 0D 04 06  ORA ram_pos_X_carrot + $04
C - - - - - 0x00D7AE 03:D79E: 0D 06 06  ORA ram_pos_X_carrot + $06
C - - - - - 0x00D7B1 03:D7A1: 0D 08 06  ORA ram_pos_X_carrot + $08
C - - - - - 0x00D7B4 03:D7A4: 0D 0A 06  ORA ram_pos_X_carrot + $0A
C - - - - - 0x00D7B7 03:D7A7: 0D 0C 06  ORA ram_pos_X_carrot + $0C
C - - - - - 0x00D7BA 03:D7AA: 0D 0E 06  ORA ram_pos_X_carrot + $0E
C - - - - - 0x00D7BD 03:D7AD: D0 17     BNE bra_D7C6_not_all_carrots_taken
C - - - - - 0x00D7BF 03:D7AF: A9 03     LDA #$03
C - - - - - 0x00D7C1 03:D7B1: 20 20 EA  JSR sub_EA20_stage_complete
C - - - - - 0x00D7C4 03:D7B4: A5 6F     LDA ram_stage_type
C - - - - - 0x00D7C6 03:D7B6: C9 01     CMP #$01
C - - - - - 0x00D7C8 03:D7B8: F0 06     BEQ bra_D7C0_not_pipes
C - - - - - 0x00D7CA 03:D7BA: A9 15     LDA #con_music_stage_complete_2
C - - - - - 0x00D7CC 03:D7BC: 20 A2 F7  JSR sub_F7A2_play_sound
C - - - - - 0x00D7CF 03:D7BF: 60        RTS
bra_D7C0_not_pipes:
C - - - - - 0x00D7D0 03:D7C0: A9 08     LDA #con_music_stage_complete_1
C - - - - - 0x00D7D2 03:D7C2: 20 A2 F7  JSR sub_F7A2_play_sound
C - - - - - 0x00D7D5 03:D7C5: 60        RTS
bra_D7C6_not_all_carrots_taken:
C - - - - - 0x00D7D6 03:D7C6: A9 00     LDA #$00
C - - - - - 0x00D7D8 03:D7C8: 20 20 EA  JSR sub_EA20_stage_complete
C - - - - - 0x00D7DB 03:D7CB: A9 10     LDA #con_sound_pick_up_item
C - - - - - 0x00D7DD 03:D7CD: 20 A2 F7  JSR sub_F7A2_play_sound
C - - - - - 0x00D7E0 03:D7D0: 60        RTS



tbl_D7D1:   ; bzk optimize, same bytes
- D 2 - - - 0x00D7E1 03:D7D1: 08        .byte $08   ; 04
- D 2 - - - 0x00D7E2 03:D7D2: 08        .byte $08   ; 08



sub_0x00D7E3_draw_huge_star_screen:
C - - - - - 0x00D7E3 03:D7D3: 20 5F ED  JSR sub_ED5F_draw_screen_handler
- D 2 - I - 0x00D7E6 03:D7D6: A0        .byte $A0, $A1, $A0, $A1, $A0, $A1, $A0, $A1, $A0, $A1, $A0, $A1, $A0, $A1, $A0, $A1   ; 
- D 2 - I - 0x00D7F6 03:D7E6: A0        .byte $A0, $A1, $A0, $A1, $A0, $A1, $A0, $A1, $A0, $A1, $A0, $A1, $A0, $A1, $A0, $A1   ; 
- D 2 - I - 0x00D806 03:D7F6: B0        .byte $B0, $B1, $B0, $B1, $B0, $B1, $B0, $B1, $B0, $B1, $B0, $B1, $B0, $B1, $B0, $B1   ; 
- D 2 - I - 0x00D816 03:D806: B0        .byte $B0, $B1, $B0, $B1, $B0, $B1, $B0, $B1, $B0, $B1, $B0, $B1, $B0, $B1, $B0, $B1   ; 
- D 2 - I - 0x00D826 03:D816: A0        .byte $A0, $A1, $A0, $A1, $A0, $A1, $A0, $A1, $A0, $A1, $A0, $A1, $A0, $A1   ; 
- D 2 - I - 0x00D834 03:D824: FF        .byte $FF, $EA, $04   ; control bytes
- D 2 - I - 0x00D837 03:D827: A0        .byte $A0, $A1, $A0, $A1, $A0, $A1, $A0, $A1, $A0, $A1, $A0, $A1, $A0, $A1, $B0, $B1   ; 
- D 2 - I - 0x00D847 03:D837: B0        .byte $B0, $B1, $B0, $B1, $B0, $B1, $B0, $B1, $B0, $B1, $B0, $B1, $EA, $DC, $DD, $EA   ; 
- D 2 - I - 0x00D857 03:D847: B0        .byte $B0, $B1, $B0, $B1, $B0, $B1, $B0, $B1, $B0, $B1, $B0, $B1, $B0, $B1, $A0, $A1   ; 
- D 2 - I - 0x00D867 03:D857: A0        .byte $A0, $A1, $A0, $A1, $A0, $A1, $A0, $A1, $A0, $A1, $A0, $A1, $EA, $EC, $ED, $EA   ; 
- D 2 - I - 0x00D877 03:D867: A0        .byte $A0, $A1, $A0, $A1, $A0, $A1, $A0, $A1, $A0, $A1, $A0, $A1, $A0, $A1, $B0, $B1   ; 
- D 2 - I - 0x00D887 03:D877: B0        .byte $B0, $B1, $B0, $B1, $B0, $B1, $B0, $B1, $B0, $B1, $B0, $B1, $DC   ; 
- D 2 - I - 0x00D894 03:D884: FF        .byte $FF, $FF, $02   ; control bytes
- D 2 - I - 0x00D897 03:D887: DD        .byte $DD, $B0, $B1, $B0, $B1, $B0, $B1, $B0, $B1, $B0, $B1, $B0, $B1, $B0, $B1, $A0   ; 
- D 2 - I - 0x00D8A7 03:D897: A1        .byte $A1, $A0, $A1, $A0, $A1, $A0, $A1, $A0, $A1, $A0, $A1, $EA, $EA, $EC   ; 
- D 2 - I - 0x00D8B5 03:D8A5: FF        .byte $FF, $FF, $02   ; control bytes
- D 2 - I - 0x00D8B8 03:D8A8: ED        .byte $ED, $EA, $EA, $A0, $A1, $A0, $A1, $A0, $A1, $A0, $A1, $A0, $A1, $A0, $A1, $B0   ; 
- D 2 - I - 0x00D8C8 03:D8B8: B1        .byte $B1, $B0, $B1, $B0, $B1, $B0, $B1, $B0, $B1, $B0, $B1, $EA, $DC   ; 
- D 2 - I - 0x00D8D5 03:D8C5: FF        .byte $FF, $FF, $04   ; control bytes
- D 2 - I - 0x00D8D8 03:D8C8: DD        .byte $DD, $EA, $B0, $B1, $B0, $B1, $B0, $B1, $B0, $B1, $B0, $B1, $B0, $B1, $A0, $A1   ; 
- D 2 - I - 0x00D8E8 03:D8D8: A0        .byte $A0, $A1, $A0, $A1, $A0, $A1, $A0, $A1   ; 
- D 2 - I - 0x00D8F0 03:D8E0: FF        .byte $FF, $EA, $03   ; control bytes
- D 2 - I - 0x00D8F3 03:D8E3: EC        .byte $EC   ; 
- D 2 - I - 0x00D8F4 03:D8E4: FF        .byte $FF, $FF, $04   ; control bytes
- D 2 - I - 0x00D8F7 03:D8E7: ED        .byte $ED   ; 
- D 2 - I - 0x00D8F8 03:D8E8: FF        .byte $FF, $EA, $03   ; control bytes
- D 2 - I - 0x00D8FB 03:D8EB: A0        .byte $A0, $A1, $A0, $A1, $A0, $A1, $A0, $A1, $A0, $A1, $B0, $B1, $B0, $B1, $B0, $B1   ; 
- D 2 - I - 0x00D90B 03:D8FB: B0        .byte $B0, $B1, $B0, $B1, $EA, $EA, $DC   ; 
- D 2 - I - 0x00D912 03:D902: FF        .byte $FF, $FF, $06   ; control bytes
- D 2 - I - 0x00D915 03:D905: DD        .byte $DD, $EA, $EA, $B0, $B1, $B0, $B1, $B0, $B1, $B0, $B1, $B0, $B1   ; 
- D 2 - I - 0x00D922 03:D912: FF        .byte $FF, $EA, $0C   ; control bytes
- D 2 - I - 0x00D925 03:D915: EC        .byte $EC   ; 
- D 2 - I - 0x00D926 03:D916: FF        .byte $FF, $FF, $06   ; control bytes
- D 2 - I - 0x00D929 03:D919: ED        .byte $ED   ; 
- D 2 - I - 0x00D92A 03:D91A: FF        .byte $FF, $EA, $0E   ; control bytes
- D 2 - I - 0x00D92D 03:D91D: AD        .byte $AD, $AE   ; 
- D 2 - I - 0x00D92F 03:D91F: FF        .byte $FF, $FF, $18   ; control bytes
- D 2 - I - 0x00D932 03:D922: AB        .byte $AB, $AC, $EA, $EA, $A0, $A1, $EA, $BE, $BF   ; 
- D 2 - I - 0x00D93B 03:D92B: FF        .byte $FF, $FF, $16   ; control bytes
- D 2 - I - 0x00D93E 03:D92E: BA        .byte $BA, $BB, $EA, $A0, $A1, $B0, $B1   ; 
- D 2 - I - 0x00D945 03:D935: FF        .byte $FF, $EA, $03   ; control bytes
- D 2 - I - 0x00D948 03:D938: AD        .byte $AD, $AE   ; 
- D 2 - I - 0x00D94A 03:D93A: FF        .byte $FF, $FF, $12   ; control bytes
- D 2 - I - 0x00D94D 03:D93D: AB        .byte $AB, $AC   ; 
- D 2 - I - 0x00D94F 03:D93F: FF        .byte $FF, $EA, $03   ; control bytes
- D 2 - I - 0x00D952 03:D942: B0        .byte $B0, $B1, $A0, $A1, $A0, $A1, $A0, $A1   ; 
- D 2 - I - 0x00D95A 03:D94A: BE        .byte $BE, $BF   ; 
- D 2 - I - 0x00D95C 03:D94C: FF        .byte $FF, $FF, $10   ; control bytes
- D 2 - I - 0x00D95F 03:D94F: BA        .byte $BA, $BB, $A0, $A1, $A0, $A1, $A0, $A1, $B0, $B1, $B0, $B1, $B0, $B1, $EA, $EA   ; 
- D 2 - I - 0x00D96F 03:D95F: AD        .byte $AD, $AE   ; 
- D 2 - I - 0x00D971 03:D961: FF        .byte $FF, $FF, $0C   ; control bytes
- D 2 - I - 0x00D974 03:D964: AB        .byte $AB, $AC, $EA, $EA, $B0, $B1, $B0, $B1, $B0, $B1, $A0, $A1, $A0, $A1, $A0, $A1   ; 
- D 2 - I - 0x00D984 03:D974: A0        .byte $A0, $A1, $EA, $F7   ; 
- D 2 - I - 0x00D988 03:D978: FF        .byte $FF, $FF, $0C   ; control bytes
- D 2 - I - 0x00D98B 03:D97B: F8        .byte $F8, $EA, $A0, $A1, $A0, $A1, $A0, $A1, $A0, $A1, $B0, $B1, $B0, $B1, $B0, $B1   ; 
- D 2 - I - 0x00D99B 03:D98B: B0        .byte $B0, $B1, $EA, $EC   ; 
- D 2 - I - 0x00D99F 03:D98F: FF        .byte $FF, $FF, $0C   ; control bytes
- D 2 - I - 0x00D9A2 03:D992: ED        .byte $ED, $EA, $B0, $B1, $B0, $B1, $B0, $B1, $B0, $B1, $A0, $A1, $A0, $A1, $A0, $A1   ; 
- D 2 - I - 0x00D9B2 03:D9A2: EA        .byte $EA, $EA, $DC   ; 
- D 2 - I - 0x00D9B5 03:D9A5: FF        .byte $FF, $FF, $0E   ; control bytes
- D 2 - I - 0x00D9B8 03:D9A8: DD        .byte $DD, $EA, $EA, $A0, $A1, $A0, $A1, $A0, $A1, $B0, $B1, $B0, $B1, $B0, $B1, $EA   ; 
- D 2 - I - 0x00D9C8 03:D9B8: EA        .byte $EA, $EC   ; 
- D 2 - I - 0x00D9CA 03:D9BA: FF        .byte $FF, $FF, $0E   ; control bytes
- D 2 - I - 0x00D9CD 03:D9BD: ED        .byte $ED, $EA, $EA, $B0, $B1, $B0, $B1, $B0, $B1, $A0, $A1, $A0, $A1, $A0, $A1, $EA   ; 
- D 2 - I - 0x00D9DD 03:D9CD: DC        .byte $DC   ; 
- D 2 - I - 0x00D9DE 03:D9CE: FF        .byte $FF, $FF, $10   ; control bytes
- D 2 - I - 0x00D9E1 03:D9D1: DD        .byte $DD, $EA, $A0, $A1, $A0, $A1, $A0, $A1, $B0, $B1, $B0, $B1, $B0, $B1, $EA, $EC   ; 
- D 2 - I - 0x00D9F1 03:D9E1: FF        .byte $FF, $FF, $10   ; control bytes
- D 2 - I - 0x00D9F4 03:D9E4: ED        .byte $ED, $EA, $B0, $B1, $B0, $B1, $B0, $B1, $A0, $A1, $A0, $A1, $EA, $EA, $DC   ; 
- D 2 - I - 0x00DA03 03:D9F3: FF        .byte $FF, $FF, $07   ; control bytes
- D 2 - I - 0x00DA06 03:D9F6: FB        .byte $FB, $FC, $FD, $FE   ; 
- D 2 - I - 0x00DA0A 03:D9FA: FF        .byte $FF, $FF, $07   ; control bytes
- D 2 - I - 0x00DA0D 03:D9FD: DD        .byte $DD, $EA, $EA, $A0, $A1, $A0, $A1, $B0, $B1, $B0, $B1, $EA, $EA, $EC   ; 
- D 2 - I - 0x00DA1B 03:DA0B: FF        .byte $FF, $FF, $05   ; control bytes
- D 2 - I - 0x00DA1E 03:DA0E: FB        .byte $FB, $FC   ; 
- D 2 - I - 0x00DA20 03:DA10: FF        .byte $FF, $EA, $04   ; control bytes
- D 2 - I - 0x00DA23 03:DA13: FD        .byte $FD, $FE   ; 
- D 2 - I - 0x00DA25 03:DA15: FF        .byte $FF, $FF, $05   ; control bytes
- D 2 - I - 0x00DA28 03:DA18: ED        .byte $ED, $EA, $EA, $B0, $B1, $B0, $B1, $A0, $A1, $A0, $A1, $EA, $DC   ; 
- D 2 - I - 0x00DA35 03:DA25: FF        .byte $FF, $FF, $04   ; control bytes
- D 2 - I - 0x00DA38 03:DA28: FB        .byte $FB, $FC, $EA, $EA, $A0, $A1, $A0, $A1, $EA, $EA, $FD, $FE   ; 
- D 2 - I - 0x00DA44 03:DA34: FF        .byte $FF, $FF, $04   ; control bytes
- D 2 - I - 0x00DA47 03:DA37: DD        .byte $DD, $EA, $A0, $A1, $A0, $A1, $B0, $B1, $B0, $B1, $EA, $EC   ; 
- D 2 - I - 0x00DA53 03:DA43: FF        .byte $FF, $FF, $02   ; control bytes
- D 2 - I - 0x00DA56 03:DA46: FB        .byte $FB, $FC   ; 
- D 2 - I - 0x00DA58 03:DA48: FF        .byte $FF, $EA, $04   ; control bytes
- D 2 - I - 0x00DA5B 03:DA4B: B0        .byte $B0, $B1, $B0, $B1   ; 
- D 2 - I - 0x00DA5F 03:DA4F: FF        .byte $FF, $EA, $04   ; control bytes
- D 2 - I - 0x00DA62 03:DA52: FD        .byte $FD, $FE   ; 
- D 2 - I - 0x00DA64 03:DA54: FF        .byte $FF, $FF, $02   ; control bytes
- D 2 - I - 0x00DA67 03:DA57: ED        .byte $ED, $EA, $B0, $B1, $B0, $B1, $A0, $A1, $EA, $EA, $DC   ; 
- D 2 - I - 0x00DA72 03:DA62: FF        .byte $FF, $FF, $01   ; control bytes
- D 2 - I - 0x00DA75 03:DA65: FB        .byte $FB, $FC, $EA, $EA, $A0, $A1, $A0, $A1, $A0, $A1, $A0, $A1, $A0, $A1, $A0, $A1   ; 
- D 2 - I - 0x00DA85 03:DA75: EA        .byte $EA, $EA, $FD, $FE   ; 
- D 2 - I - 0x00DA89 03:DA79: FF        .byte $FF, $FF, $01   ; control bytes
- D 2 - I - 0x00DA8C 03:DA7C: DD        .byte $DD, $EA, $EA, $A0, $A1, $B0, $B1, $EA, $EA, $F9, $FC   ; 
- D 2 - I - 0x00DA97 03:DA87: FF        .byte $FF, $EA, $04   ; control bytes
- D 2 - I - 0x00DA9A 03:DA8A: B0        .byte $B0, $B1, $B0, $B1, $B0, $B1, $B0, $B1, $B0, $B1, $B0, $B1   ; 
- D 2 - I - 0x00DAA6 03:DA96: FF        .byte $FF, $EA, $04   ; control bytes
- D 2 - I - 0x00DAA9 03:DA99: FD        .byte $FD, $FA, $EA, $EA, $B0, $B1, $A0, $A1, $A0, $A1, $A0, $A1, $A0, $A1, $A0, $A1   ; 
- D 2 - I - 0x00DAB9 03:DAA9: A0        .byte $A0, $A1, $A0, $A1, $A0, $A1, $A0, $A1, $A0, $A1, $A0, $A1, $A0, $A1, $A0, $A1   ; 
- D 2 - I - 0x00DAC9 03:DAB9: A0        .byte $A0, $A1, $A0, $A1, $A0, $A1, $B0, $B1, $B0, $B1, $B0, $B1, $B0, $B1, $B0, $B1   ; 
- D 2 - I - 0x00DAD9 03:DAC9: B0        .byte $B0, $B1, $B0, $B1, $B0, $B1, $B0, $B1, $B0, $B1, $B0, $B1, $B0, $B1, $B0, $B1   ; 
- D 2 - I - 0x00DAE9 03:DAD9: B0        .byte $B0, $B1, $B0, $B1, $B0, $B1   ; 
- D 2 - I - 0x00DAEF 03:DADF: FF        .byte $FF, $55, $0B   ; control bytes
- D 2 - I - 0x00DAF2 03:DAE2: 45        .byte $45   ; 
- D 2 - I - 0x00DAF3 03:DAE3: FF        .byte $FF, $55, $04   ; control bytes
- D 2 - I - 0x00DAF6 03:DAE6: 45        .byte $45, $55, $11, $F4, $F7, $04, $05, $05, $55, $55, $00, $F0, $30, $00   ; 
- D 2 - I - 0x00DB04 03:DAF4: FF        .byte $FF, $55, $03   ; control bytes
- D 2 - I - 0x00DB07 03:DAF7: 15        .byte $15, $90, $80, $20, $20, $45, $55, $55, $01   ; 
- D 2 - I - 0x00DB10 03:DB00: FF        .byte $FF, $00, $04   ; control bytes
- D 2 - I - 0x00DB13 03:DB03: 04        .byte $04, $55, $15, $00, $40, $54, $51, $10, $00, $45   ; 
- D 2 - I - 0x00DB1D 03:DB0D: FF        .byte $FF, $05, $08   ; control bytes
- D 2 - I - 0x00DB20 03:DB10: FF        .byte $FF, $FF, $00   ; end token



sub_DB13:
sub_0x00DB23:
C - - - - - 0x00DB23 03:DB13: 85 23     STA ram_0023
C - - - - - 0x00DB25 03:DB15: 8A        TXA
C - - - - - 0x00DB26 03:DB16: 48        PHA
C - - - - - 0x00DB27 03:DB17: A5 23     LDA ram_0023
C - - - - - 0x00DB29 03:DB19: 0A        ASL
C - - - - - 0x00DB2A 03:DB1A: AA        TAX
C - - - - - 0x00DB2B 03:DB1B: BD 39 DB  LDA tbl_DB39_animation_spr_data,X
C - - - - - 0x00DB2E 03:DB1E: 85 1E     STA ram_001E
C - - - - - 0x00DB30 03:DB20: BD 3A DB  LDA tbl_DB39_animation_spr_data + $01,X
C - - - - - 0x00DB33 03:DB23: 85 1F     STA ram_001F
C - - - - - 0x00DB35 03:DB25: A5 23     LDA ram_0023
C - - - - - 0x00DB37 03:DB27: 29 80     AND #$80
C - - - - - 0x00DB39 03:DB29: 4A        LSR
C - - - - - 0x00DB3A 03:DB2A: 4A        LSR
C - - - - - 0x00DB3B 03:DB2B: 05 22     ORA ram_0022
C - - - - - 0x00DB3D 03:DB2D: 85 22     STA ram_0022
C - - - - - 0x00DB3F 03:DB2F: 20 12 F7  JSR sub_F712
C - - - - - 0x00DB42 03:DB32: A9 00     LDA #$00
C - - - - - 0x00DB44 03:DB34: 85 22     STA ram_0022
C - - - - - 0x00DB46 03:DB36: 68        PLA
C - - - - - 0x00DB47 03:DB37: AA        TAX
C - - - - - 0x00DB48 03:DB38: 60        RTS



tbl_DB39_animation_spr_data:
- D 2 - - - 0x00DB49 03:DB39: 7F DC     .word _off005_DC7F_00
- D 2 - - - 0x00DB4B 03:DB3B: 8C DC     .word _off005_DC8C_01
- D 2 - - - 0x00DB4D 03:DB3D: 99 DC     .word _off005_DC99_02
- D 2 - - - 0x00DB4F 03:DB3F: A6 DC     .word _off005_DCA6_03
- D 2 - - - 0x00DB51 03:DB41: B3 DC     .word _off005_DCB3_04
- D 2 - - - 0x00DB53 03:DB43: C0 DC     .word _off005_DCC0_05
- D 2 - - - 0x00DB55 03:DB45: CD DC     .word _off005_DCCD_06
- D 2 - - - 0x00DB57 03:DB47: DA DC     .word _off005_DCDA_07
- D 2 - - - 0x00DB59 03:DB49: E7 DC     .word _off005_DCE7_08
- D 2 - - - 0x00DB5B 03:DB4B: F4 DC     .word _off005_DCF4_09
- D 2 - - - 0x00DB5D 03:DB4D: 01 DD     .word _off005_DD01_0A
- D 2 - - - 0x00DB5F 03:DB4F: 0E DD     .word _off005_DD0E_0B
- D 2 - - - 0x00DB61 03:DB51: 1B DD     .word _off005_DD1B_0C
- D 2 - - - 0x00DB63 03:DB53: 28 DD     .word _off005_DD28_0D
- D 2 - - - 0x00DB65 03:DB55: 35 DD     .word _off005_DD35_0E
- D 2 - - - 0x00DB67 03:DB57: 42 DD     .word _off005_DD42_0F
- D 2 - - - 0x00DB69 03:DB59: 4F DD     .word _off005_DD4F_10
- D 2 - - - 0x00DB6B 03:DB5B: 5C DD     .word _off005_DD5C_11
- D 2 - - - 0x00DB6D 03:DB5D: 69 DD     .word _off005_DD69_12
- D 2 - - - 0x00DB6F 03:DB5F: 76 DD     .word _off005_DD76_13
- D 2 - - - 0x00DB71 03:DB61: 22 DC     .word _off005_DC22_14
- D 2 - - - 0x00DB73 03:DB63: 2F DC     .word _off005_DC2F_15
- - - - - - 0x00DB75 03:DB65: 12 DC     .word _off005_DC12_16
- D 2 - - - 0x00DB77 03:DB67: 09 DC     .word _off005_DC09_17
- - - - - - 0x00DB79 03:DB69: 22 DC     .word _off005_DC22_18
- - - - - - 0x00DB7B 03:DB6B: 22 DC     .word _off005_DC22_19
- - - - - - 0x00DB7D 03:DB6D: 22 DC     .word _off005_DC22_1A
- - - - - - 0x00DB7F 03:DB6F: 22 DC     .word _off005_DC22_1B
- - - - - - 0x00DB81 03:DB71: 22 DC     .word _off005_DC22_1C
- - - - - - 0x00DB83 03:DB73: 22 DC     .word _off005_DC22_1D
- - - - - - 0x00DB85 03:DB75: 22 DC     .word _off005_DC22_1E
- - - - - - 0x00DB87 03:DB77: 22 DC     .word _off005_DC22_1F
- - - - - - 0x00DB89 03:DB79: 22 DC     .word _off005_DC22_20
- - - - - - 0x00DB8B 03:DB7B: 22 DC     .word _off005_DC22_21
- - - - - - 0x00DB8D 03:DB7D: 22 DC     .word _off005_DC22_22
- D 2 - - - 0x00DB8F 03:DB7F: 83 DD     .word _off005_DD83_23
- D 2 - - - 0x00DB91 03:DB81: 90 DD     .word _off005_DD90_24
- D 2 - - - 0x00DB93 03:DB83: 9D DD     .word _off005_DD9D_25
- D 2 - - - 0x00DB95 03:DB85: AA DD     .word _off005_DDAA_26
- D 2 - - - 0x00DB97 03:DB87: B7 DD     .word _off005_DDB7_27
- D 2 - - - 0x00DB99 03:DB89: C4 DD     .word _off005_DDC4_28
- D 2 - - - 0x00DB9B 03:DB8B: D1 DD     .word _off005_DDD1_29
- D 2 - - - 0x00DB9D 03:DB8D: DE DD     .word _off005_DDDE_2A
- D 2 - - - 0x00DB9F 03:DB8F: EB DD     .word _off005_DDEB_2B
- D 2 - - - 0x00DBA1 03:DB91: F8 DD     .word _off005_DDF8_2C
- D 2 - - - 0x00DBA3 03:DB93: 05 DE     .word _off005_DE05_2D
- D 2 - - - 0x00DBA5 03:DB95: 12 DE     .word _off005_DE12_2E
- D 2 - - - 0x00DBA7 03:DB97: 1F DE     .word _off005_DE1F_2F
- D 2 - - - 0x00DBA9 03:DB99: 2C DE     .word _off005_DE2C_30
- D 2 - - - 0x00DBAB 03:DB9B: 39 DE     .word _off005_DE39_31
- D 2 - - - 0x00DBAD 03:DB9D: 46 DE     .word _off005_DE46_32
- D 2 - - - 0x00DBAF 03:DB9F: 53 DE     .word _off005_DE53_33
- D 2 - - - 0x00DBB1 03:DBA1: 60 DE     .word _off005_DE60_34
- D 2 - - - 0x00DBB3 03:DBA3: 6D DE     .word _off005_DE6D_35
- D 2 - - - 0x00DBB5 03:DBA5: 7A DE     .word _off005_DE7A_36
- - - - - - 0x00DBB7 03:DBA7: 87 DE     .word _off005_DE87_37
- - - - - - 0x00DBB9 03:DBA9: 94 DE     .word _off005_DE94_38
- D 2 - - - 0x00DBBB 03:DBAB: A1 DE     .word _off005_DEA1_39
- D 2 - - - 0x00DBBD 03:DBAD: AE DE     .word _off005_DEAE_3A
- D 2 - - - 0x00DBBF 03:DBAF: BB DE     .word _off005_DEBB_3B
- D 2 - - - 0x00DBC1 03:DBB1: C8 DE     .word _off005_DEC8_3C
- D 2 - - - 0x00DBC3 03:DBB3: D5 DE     .word _off005_DED5_3D
- D 2 - - - 0x00DBC5 03:DBB5: E2 DE     .word _off005_DEE2_3E
- D 2 - - - 0x00DBC7 03:DBB7: EF DE     .word _off005_DEEF_3F
- D 2 - - - 0x00DBC9 03:DBB9: FC DE     .word _off005_DEFC_40
- D 2 - - - 0x00DBCB 03:DBBB: 09 DF     .word _off005_DF09_41
- D 2 - - - 0x00DBCD 03:DBBD: 16 DF     .word _off005_DF16_42
- D 2 - - - 0x00DBCF 03:DBBF: 23 DF     .word _off005_DF23_43
- D 2 - - - 0x00DBD1 03:DBC1: 30 DF     .word _off005_DF30_44
- D 2 - - - 0x00DBD3 03:DBC3: 3D DF     .word _off005_DF3D_45
- - - - - - 0x00DBD5 03:DBC5: 46 DF     .word _off005_DF46_46
- D 2 - - - 0x00DBD7 03:DBC7: 4F DF     .word _off005_DF4F_47
- D 2 - - - 0x00DBD9 03:DBC9: 58 DF     .word _off005_DF58_48
- D 2 - - - 0x00DBDB 03:DBCB: 61 DF     .word _off005_DF61_49
- - - - - - 0x00DBDD 03:DBCD: 22 DC     .word _off005_DC22_4A
- D 2 - - - 0x00DBDF 03:DBCF: 6A DF     .word _off005_DF6A_4B
- D 2 - - - 0x00DBE1 03:DBD1: 73 DF     .word _off005_DF73_4C
- - - - - - 0x00DBE3 03:DBD3: 7C DF     .word _off005_DF7C_4D
- D 2 - - - 0x00DBE5 03:DBD5: 85 DF     .word _off005_DF85_4E
- - - - - - 0x00DBE7 03:DBD7: 8E DF     .word _off005_DF8E_4F
- D 2 - - - 0x00DBE9 03:DBD9: 97 DF     .word _off005_DF97_50
- - - - - - 0x00DBEB 03:DBDB: A0 DF     .word _off005_DFA0_51
- D 2 - - - 0x00DBED 03:DBDD: A9 DF     .word _off005_DFA9_52
- - - - - - 0x00DBEF 03:DBDF: A9 DF     .word _off005_DFA9_53
- D 2 - - - 0x00DBF1 03:DBE1: B2 DF     .word _off005_DFB2_54
- - - - - - 0x00DBF3 03:DBE3: B2 DF     .word _off005_DFB2_55
- D 2 - - - 0x00DBF5 03:DBE5: BB DF     .word _off005_DFBB_56
- D 2 - - - 0x00DBF7 03:DBE7: C8 DF     .word _off005_DFC8_57
- D 2 - - - 0x00DBF9 03:DBE9: D5 DF     .word _off005_DFD5_58
- D 2 - - - 0x00DBFB 03:DBEB: E2 DF     .word _off005_DFE2_59
- D 2 - - - 0x00DBFD 03:DBED: EF DF     .word _off005_DFEF_5A
- D 2 - - - 0x00DBFF 03:DBEF: FC DF     .word _off005_DFFC_5B
- D 2 - - - 0x00DC01 03:DBF1: 09 E0     .word _off005_E009_5C
- D 2 - - - 0x00DC03 03:DBF3: 16 E0     .word _off005_E016_5D
- D 2 - - - 0x00DC05 03:DBF5: 23 E0     .word _off005_E023_5E
- D 2 - - - 0x00DC07 03:DBF7: 30 E0     .word _off005_E030_5F
- D 2 - - - 0x00DC09 03:DBF9: 3C DC     .word _off005_DC3C_60
- D 2 - - - 0x00DC0B 03:DBFB: 70 DC     .word _off005_DC70_61
- D 2 - - - 0x00DC0D 03:DBFD: 75 DC     .word _off005_DC75_62
- D 2 - - - 0x00DC0F 03:DBFF: 7A DC     .word _off005_DC7A_63
- D 2 - - - 0x00DC11 03:DC01: 1D DC     .word _off005_DC1D_64
- D 2 - - - 0x00DC13 03:DC03: 49 DC     .word _off005_DC49_65
- D 2 - - - 0x00DC15 03:DC05: 56 DC     .word _off005_DC56_66
- D 2 - - - 0x00DC17 03:DC07: 63 DC     .word _off005_DC63_67



_off005_DC09_17:
- D 2 - I - 0x00DC19 03:DC09: 22        .byte $22   ; 2 * 2
- D 2 - I - 0x00DC1A 03:DC0A: CA        .byte $CA, $03   ; spr_T, spr_A
- D 2 - I - 0x00DC1C 03:DC0C: CB        .byte $CB, $03   ; spr_T, spr_A
- D 2 - I - 0x00DC1E 03:DC0E: DA        .byte $DA, $03   ; spr_T, spr_A
- D 2 - I - 0x00DC20 03:DC10: DB        .byte $DB, $03   ; spr_T, spr_A

_off005_DC12_16:
- - - - - - 0x00DC22 03:DC12: 51        .byte $51   ; 5 * 1
- - - - - - 0x00DC23 03:DC13: F8        .byte $F8, $00   ; spr_T, spr_A
- - - - - - 0x00DC25 03:DC15: F9        .byte $F9, $00   ; spr_T, spr_A
- - - - - - 0x00DC27 03:DC17: FA        .byte $FA, $00   ; spr_T, spr_A
- - - - - - 0x00DC29 03:DC19: FB        .byte $FB, $00   ; spr_T, spr_A
- - - - - - 0x00DC2B 03:DC1B: EB        .byte $EB, $00   ; spr_T, spr_A

_off005_DC1D_64:
- D 2 - I - 0x00DC2D 03:DC1D: 21        .byte $21   ; 2 * 1
- D 2 - I - 0x00DC2E 03:DC1E: E8        .byte $E8, $03   ; spr_T, spr_A
- D 2 - I - 0x00DC30 03:DC20: E9        .byte $E9, $03   ; spr_T, spr_A

_off005_DC22_14:
_off005_DC22_18:
_off005_DC22_19:
_off005_DC22_1A:
_off005_DC22_1B:
_off005_DC22_1C:
_off005_DC22_1D:
_off005_DC22_1E:
_off005_DC22_1F:
_off005_DC22_20:
_off005_DC22_21:
_off005_DC22_22:
_off005_DC22_4A:
- D 2 - I - 0x00DC32 03:DC22: 23        .byte $23   ; 
- D 2 - I - 0x00DC33 03:DC23: 9E        .byte $9E, $00   ; 
- D 2 - I - 0x00DC35 03:DC25: 9F        .byte $9F, $00   ; 
- D 2 - I - 0x00DC37 03:DC27: 3E        .byte $3E, $00   ; 
- D 2 - I - 0x00DC39 03:DC29: 3F        .byte $3F, $00   ; 
- D 2 - I - 0x00DC3B 03:DC2B: 4E        .byte $4E, $00   ; 
- D 2 - I - 0x00DC3D 03:DC2D: 4F        .byte $4F, $00   ; 

_off005_DC2F_15:
- D 2 - I - 0x00DC3F 03:DC2F: 23        .byte $23   ; 
- D 2 - I - 0x00DC40 03:DC30: 0E        .byte $0E, $00   ; 
- D 2 - I - 0x00DC42 03:DC32: 0F        .byte $0F, $00   ; 
- D 2 - I - 0x00DC44 03:DC34: 1E        .byte $1E, $00   ; 
- D 2 - I - 0x00DC46 03:DC36: 1F        .byte $1F, $00   ; 
- D 2 - I - 0x00DC48 03:DC38: 2E        .byte $2E, $00   ; 
- D 2 - I - 0x00DC4A 03:DC3A: 2F        .byte $2F, $00   ; 

_off005_DC3C_60:
- D 2 - I - 0x00DC4C 03:DC3C: 23        .byte $23   ; 
- D 2 - I - 0x00DC4D 03:DC3D: A9        .byte $A9, $00   ; 
- D 2 - I - 0x00DC4F 03:DC3F: A9        .byte $A9, $40   ; 
- D 2 - I - 0x00DC51 03:DC41: B9        .byte $B9, $00   ; 
- D 2 - I - 0x00DC53 03:DC43: B9        .byte $B9, $40   ; 
- D 2 - I - 0x00DC55 03:DC45: A9        .byte $A9, $80   ; 
- D 2 - I - 0x00DC57 03:DC47: A9        .byte $A9, $C0   ; 

_off005_DC49_65:
- D 2 - I - 0x00DC59 03:DC49: 23        .byte $23   ; 
- D 2 - I - 0x00DC5A 03:DC4A: 5E        .byte $5E, $00   ; 
- D 2 - I - 0x00DC5C 03:DC4C: 5F        .byte $5F, $00   ; 
- D 2 - I - 0x00DC5E 03:DC4E: 6E        .byte $6E, $00   ; 
- D 2 - I - 0x00DC60 03:DC50: 6F        .byte $6F, $00   ; 
- D 2 - I - 0x00DC62 03:DC52: 7E        .byte $7E, $00   ; 
- D 2 - I - 0x00DC64 03:DC54: 7F        .byte $7F, $00   ; 

_off005_DC56_66:
- D 2 - I - 0x00DC66 03:DC56: 23        .byte $23   ; 
- D 2 - I - 0x00DC67 03:DC57: FF        .byte $FF, $00   ; 
- D 2 - I - 0x00DC69 03:DC59: FF        .byte $FF, $00   ; 
- D 2 - I - 0x00DC6B 03:DC5B: 8E        .byte $8E, $00   ; 
- D 2 - I - 0x00DC6D 03:DC5D: 8F        .byte $8F, $00   ; 
- D 2 - I - 0x00DC6F 03:DC5F: FF        .byte $FF, $00   ; 
- D 2 - I - 0x00DC71 03:DC61: FF        .byte $FF, $00   ; 

_off005_DC63_67:
- D 2 - I - 0x00DC73 03:DC63: 23        .byte $23   ; 
- D 2 - I - 0x00DC74 03:DC64: 3C        .byte $3C, $00   ; 
- D 2 - I - 0x00DC76 03:DC66: 3D        .byte $3D, $00   ; 
- D 2 - I - 0x00DC78 03:DC68: 52        .byte $52, $00   ; 
- D 2 - I - 0x00DC7A 03:DC6A: 53        .byte $53, $00   ; 
- D 2 - I - 0x00DC7C 03:DC6C: 54        .byte $54, $00   ; 
- D 2 - I - 0x00DC7E 03:DC6E: 55        .byte $55, $00   ; 

_off005_DC70_61:
- D 2 - I - 0x00DC80 03:DC70: 21        .byte $21   ; 
- D 2 - I - 0x00DC81 03:DC71: A7        .byte $A7, $03   ; 
- D 2 - I - 0x00DC83 03:DC73: A8        .byte $A8, $03   ; 

_off005_DC75_62:
- D 2 - I - 0x00DC85 03:DC75: 21        .byte $21   ; 
- D 2 - I - 0x00DC86 03:DC76: B7        .byte $B7, $03   ; 
- D 2 - I - 0x00DC88 03:DC78: B8        .byte $B8, $03   ; 

_off005_DC7A_63:
- D 2 - I - 0x00DC8A 03:DC7A: 21        .byte $21   ; 
- D 2 - I - 0x00DC8B 03:DC7B: C8        .byte $C8, $03   ; 
- D 2 - I - 0x00DC8D 03:DC7D: C9        .byte $C9, $03   ; 

_off005_DC7F_00:
- D 2 - I - 0x00DC8F 03:DC7F: 23        .byte $23   ; 
- D 2 - I - 0x00DC90 03:DC80: 00        .byte $00, $00   ; 
- D 2 - I - 0x00DC92 03:DC82: 01        .byte $01, $00   ; 
- D 2 - I - 0x00DC94 03:DC84: 10        .byte $10, $00   ; 
- D 2 - I - 0x00DC96 03:DC86: 11        .byte $11, $00   ; 
- D 2 - I - 0x00DC98 03:DC88: 20        .byte $20, $00   ; 
- D 2 - I - 0x00DC9A 03:DC8A: 21        .byte $21, $00   ; 

_off005_DC8C_01:
- D 2 - I - 0x00DC9C 03:DC8C: 23        .byte $23   ; 
- D 2 - I - 0x00DC9D 03:DC8D: 02        .byte $02, $00   ; 
- D 2 - I - 0x00DC9F 03:DC8F: 03        .byte $03, $00   ; 
- D 2 - I - 0x00DCA1 03:DC91: 12        .byte $12, $00   ; 
- D 2 - I - 0x00DCA3 03:DC93: 13        .byte $13, $00   ; 
- D 2 - I - 0x00DCA5 03:DC95: 22        .byte $22, $00   ; 
- D 2 - I - 0x00DCA7 03:DC97: 23        .byte $23, $00   ; 

_off005_DC99_02:
- D 2 - I - 0x00DCA9 03:DC99: 23        .byte $23   ; 
- D 2 - I - 0x00DCAA 03:DC9A: 04        .byte $04, $00   ; 
- D 2 - I - 0x00DCAC 03:DC9C: 05        .byte $05, $00   ; 
- D 2 - I - 0x00DCAE 03:DC9E: 14        .byte $14, $00   ; 
- D 2 - I - 0x00DCB0 03:DCA0: 15        .byte $15, $00   ; 
- D 2 - I - 0x00DCB2 03:DCA2: 24        .byte $24, $00   ; 
- D 2 - I - 0x00DCB4 03:DCA4: 25        .byte $25, $00   ; 

_off005_DCA6_03:
- D 2 - I - 0x00DCB6 03:DCA6: 23        .byte $23   ; 
- D 2 - I - 0x00DCB7 03:DCA7: 02        .byte $02, $00   ; 
- D 2 - I - 0x00DCB9 03:DCA9: 03        .byte $03, $00   ; 
- D 2 - I - 0x00DCBB 03:DCAB: 08        .byte $08, $00   ; 
- D 2 - I - 0x00DCBD 03:DCAD: 09        .byte $09, $00   ; 
- D 2 - I - 0x00DCBF 03:DCAF: 18        .byte $18, $00   ; 
- D 2 - I - 0x00DCC1 03:DCB1: 19        .byte $19, $00   ; 

_off005_DCB3_04:
- D 2 - I - 0x00DCC3 03:DCB3: 23        .byte $23   ; 
- D 2 - I - 0x00DCC4 03:DCB4: 00        .byte $00, $00   ; 
- D 2 - I - 0x00DCC6 03:DCB6: 01        .byte $01, $00   ; 
- D 2 - I - 0x00DCC8 03:DCB8: 06        .byte $06, $00   ; 
- D 2 - I - 0x00DCCA 03:DCBA: 07        .byte $07, $00   ; 
- D 2 - I - 0x00DCCC 03:DCBC: 16        .byte $16, $00   ; 
- D 2 - I - 0x00DCCE 03:DCBE: 17        .byte $17, $00   ; 

_off005_DCC0_05:
- D 2 - I - 0x00DCD0 03:DCC0: 23        .byte $23   ; 
- D 2 - I - 0x00DCD1 03:DCC1: 01        .byte $01, $40   ; 
- D 2 - I - 0x00DCD3 03:DCC3: 00        .byte $00, $40   ; 
- D 2 - I - 0x00DCD5 03:DCC5: 11        .byte $11, $40   ; 
- D 2 - I - 0x00DCD7 03:DCC7: 10        .byte $10, $40   ; 
- D 2 - I - 0x00DCD9 03:DCC9: 21        .byte $21, $40   ; 
- D 2 - I - 0x00DCDB 03:DCCB: 20        .byte $20, $40   ; 

_off005_DCCD_06:
- D 2 - I - 0x00DCDD 03:DCCD: 23        .byte $23   ; 
- D 2 - I - 0x00DCDE 03:DCCE: 03        .byte $03, $40   ; 
- D 2 - I - 0x00DCE0 03:DCD0: 02        .byte $02, $40   ; 
- D 2 - I - 0x00DCE2 03:DCD2: 13        .byte $13, $40   ; 
- D 2 - I - 0x00DCE4 03:DCD4: 12        .byte $12, $40   ; 
- D 2 - I - 0x00DCE6 03:DCD6: 23        .byte $23, $40   ; 
- D 2 - I - 0x00DCE8 03:DCD8: 22        .byte $22, $40   ; 

_off005_DCDA_07:
- D 2 - I - 0x00DCEA 03:DCDA: 23        .byte $23   ; 
- D 2 - I - 0x00DCEB 03:DCDB: 05        .byte $05, $40   ; 
- D 2 - I - 0x00DCED 03:DCDD: 04        .byte $04, $40   ; 
- D 2 - I - 0x00DCEF 03:DCDF: 15        .byte $15, $40   ; 
- D 2 - I - 0x00DCF1 03:DCE1: 14        .byte $14, $40   ; 
- D 2 - I - 0x00DCF3 03:DCE3: 25        .byte $25, $40   ; 
- D 2 - I - 0x00DCF5 03:DCE5: 24        .byte $24, $40   ; 

_off005_DCE7_08:
- D 2 - I - 0x00DCF7 03:DCE7: 23        .byte $23   ; 
- D 2 - I - 0x00DCF8 03:DCE8: 03        .byte $03, $40   ; 
- D 2 - I - 0x00DCFA 03:DCEA: 02        .byte $02, $40   ; 
- D 2 - I - 0x00DCFC 03:DCEC: 09        .byte $09, $40   ; 
- D 2 - I - 0x00DCFE 03:DCEE: 08        .byte $08, $40   ; 
- D 2 - I - 0x00DD00 03:DCF0: 19        .byte $19, $40   ; 
- D 2 - I - 0x00DD02 03:DCF2: 18        .byte $18, $40   ; 

_off005_DCF4_09:
- D 2 - I - 0x00DD04 03:DCF4: 23        .byte $23   ; 
- D 2 - I - 0x00DD05 03:DCF5: 01        .byte $01, $40   ; 
- D 2 - I - 0x00DD07 03:DCF7: 00        .byte $00, $40   ; 
- D 2 - I - 0x00DD09 03:DCF9: 07        .byte $07, $40   ; 
- D 2 - I - 0x00DD0B 03:DCFB: 06        .byte $06, $40   ; 
- D 2 - I - 0x00DD0D 03:DCFD: 17        .byte $17, $40   ; 
- D 2 - I - 0x00DD0F 03:DCFF: 16        .byte $16, $40   ; 

_off005_DD01_0A:
- D 2 - I - 0x00DD11 03:DD01: 32        .byte $32   ; 
- D 2 - I - 0x00DD12 03:DD02: 30        .byte $30, $00   ; 
- D 2 - I - 0x00DD14 03:DD04: 31        .byte $31, $00   ; 
- D 2 - I - 0x00DD16 03:DD06: 32        .byte $32, $00   ; 
- D 2 - I - 0x00DD18 03:DD08: 40        .byte $40, $00   ; 
- D 2 - I - 0x00DD1A 03:DD0A: 41        .byte $41, $00   ; 
- D 2 - I - 0x00DD1C 03:DD0C: 42        .byte $42, $00   ; 

_off005_DD0E_0B:
- D 2 - I - 0x00DD1E 03:DD0E: 32        .byte $32   ; 
- D 2 - I - 0x00DD1F 03:DD0F: 33        .byte $33, $00   ; 
- D 2 - I - 0x00DD21 03:DD11: 34        .byte $34, $00   ; 
- D 2 - I - 0x00DD23 03:DD13: FF        .byte $FF, $00   ; 
- D 2 - I - 0x00DD25 03:DD15: 43        .byte $43, $00   ; 
- D 2 - I - 0x00DD27 03:DD17: 44        .byte $44, $00   ; 
- D 2 - I - 0x00DD29 03:DD19: 45        .byte $45, $00   ; 

_off005_DD1B_0C:
- D 2 - I - 0x00DD2B 03:DD1B: 32        .byte $32   ; 
- D 2 - I - 0x00DD2C 03:DD1C: 34        .byte $34, $00   ; 
- D 2 - I - 0x00DD2E 03:DD1E: 33        .byte $33, $00   ; 
- D 2 - I - 0x00DD30 03:DD20: FF        .byte $FF, $00   ; 
- D 2 - I - 0x00DD32 03:DD22: 43        .byte $43, $00   ; 
- D 2 - I - 0x00DD34 03:DD24: 44        .byte $44, $00   ; 
- D 2 - I - 0x00DD36 03:DD26: 45        .byte $45, $00   ; 

_off005_DD28_0D:
- D 2 - I - 0x00DD38 03:DD28: 32        .byte $32   ; 
- D 2 - I - 0x00DD39 03:DD29: 32        .byte $32, $40   ; 
- D 2 - I - 0x00DD3B 03:DD2B: 31        .byte $31, $40   ; 
- D 2 - I - 0x00DD3D 03:DD2D: 30        .byte $30, $40   ; 
- D 2 - I - 0x00DD3F 03:DD2F: 42        .byte $42, $40   ; 
- D 2 - I - 0x00DD41 03:DD31: 41        .byte $41, $40   ; 
- D 2 - I - 0x00DD43 03:DD33: 40        .byte $40, $40   ; 

_off005_DD35_0E:
- D 2 - I - 0x00DD45 03:DD35: 32        .byte $32   ; 
- D 2 - I - 0x00DD46 03:DD36: FF        .byte $FF, $40   ; 
- D 2 - I - 0x00DD48 03:DD38: 34        .byte $34, $40   ; 
- D 2 - I - 0x00DD4A 03:DD3A: 33        .byte $33, $40   ; 
- D 2 - I - 0x00DD4C 03:DD3C: 45        .byte $45, $40   ; 
- D 2 - I - 0x00DD4E 03:DD3E: 44        .byte $44, $40   ; 
- D 2 - I - 0x00DD50 03:DD40: 43        .byte $43, $40   ; 

_off005_DD42_0F:
- D 2 - I - 0x00DD52 03:DD42: 32        .byte $32   ; 
- D 2 - I - 0x00DD53 03:DD43: FF        .byte $FF, $40   ; 
- D 2 - I - 0x00DD55 03:DD45: 33        .byte $33, $40   ; 
- D 2 - I - 0x00DD57 03:DD47: 34        .byte $34, $40   ; 
- D 2 - I - 0x00DD59 03:DD49: 45        .byte $45, $40   ; 
- D 2 - I - 0x00DD5B 03:DD4B: 44        .byte $44, $40   ; 
- D 2 - I - 0x00DD5D 03:DD4D: 43        .byte $43, $40   ; 

_off005_DD4F_10:
- D 2 - I - 0x00DD5F 03:DD4F: 23        .byte $23   ; 
- D 2 - I - 0x00DD60 03:DD50: 0A        .byte $0A, $00   ; 
- D 2 - I - 0x00DD62 03:DD52: 0B        .byte $0B, $00   ; 
- D 2 - I - 0x00DD64 03:DD54: 1A        .byte $1A, $00   ; 
- D 2 - I - 0x00DD66 03:DD56: 1B        .byte $1B, $00   ; 
- D 2 - I - 0x00DD68 03:DD58: 2A        .byte $2A, $00   ; 
- D 2 - I - 0x00DD6A 03:DD5A: 2B        .byte $2B, $00   ; 

_off005_DD5C_11:
- D 2 - I - 0x00DD6C 03:DD5C: 23        .byte $23   ; 
- D 2 - I - 0x00DD6D 03:DD5D: 0C        .byte $0C, $00   ; 
- D 2 - I - 0x00DD6F 03:DD5F: 0D        .byte $0D, $00   ; 
- D 2 - I - 0x00DD71 03:DD61: 1C        .byte $1C, $00   ; 
- D 2 - I - 0x00DD73 03:DD63: 1D        .byte $1D, $00   ; 
- D 2 - I - 0x00DD75 03:DD65: 2C        .byte $2C, $00   ; 
- D 2 - I - 0x00DD77 03:DD67: 2D        .byte $2D, $00   ; 

_off005_DD69_12:
- D 2 - I - 0x00DD79 03:DD69: 23        .byte $23   ; 
- D 2 - I - 0x00DD7A 03:DD6A: 26        .byte $26, $00   ; 
- D 2 - I - 0x00DD7C 03:DD6C: 27        .byte $27, $00   ; 
- D 2 - I - 0x00DD7E 03:DD6E: 36        .byte $36, $00   ; 
- D 2 - I - 0x00DD80 03:DD70: 37        .byte $37, $00   ; 
- D 2 - I - 0x00DD82 03:DD72: 46        .byte $46, $00   ; 
- D 2 - I - 0x00DD84 03:DD74: 47        .byte $47, $00   ; 

_off005_DD76_13:
- D 2 - I - 0x00DD86 03:DD76: 23        .byte $23   ; 
- D 2 - I - 0x00DD87 03:DD77: 35        .byte $35, $00   ; 
- D 2 - I - 0x00DD89 03:DD79: 29        .byte $29, $00   ; 
- D 2 - I - 0x00DD8B 03:DD7B: 38        .byte $38, $00   ; 
- D 2 - I - 0x00DD8D 03:DD7D: 39        .byte $39, $00   ; 
- D 2 - I - 0x00DD8F 03:DD7F: 48        .byte $48, $00   ; 
- D 2 - I - 0x00DD91 03:DD81: 49        .byte $49, $00   ; 

_off005_DD83_23:
- D 2 - I - 0x00DD93 03:DD83: 23        .byte $23   ; 
- D 2 - I - 0x00DD94 03:DD84: 56        .byte $56, $00   ; 
- D 2 - I - 0x00DD96 03:DD86: 57        .byte $57, $00   ; 
- D 2 - I - 0x00DD98 03:DD88: 68        .byte $68, $00   ; 
- D 2 - I - 0x00DD9A 03:DD8A: 69        .byte $69, $00   ; 
- D 2 - I - 0x00DD9C 03:DD8C: 78        .byte $78, $00   ; 
- D 2 - I - 0x00DD9E 03:DD8E: 79        .byte $79, $00   ; 

_off005_DD90_24:
- D 2 - I - 0x00DDA0 03:DD90: 23        .byte $23   ; 
- D 2 - I - 0x00DDA1 03:DD91: 56        .byte $56, $00   ; 
- D 2 - I - 0x00DDA3 03:DD93: 57        .byte $57, $00   ; 
- D 2 - I - 0x00DDA5 03:DD95: 66        .byte $66, $00   ; 
- D 2 - I - 0x00DDA7 03:DD97: 67        .byte $67, $00   ; 
- D 2 - I - 0x00DDA9 03:DD99: 76        .byte $76, $00   ; 
- D 2 - I - 0x00DDAB 03:DD9B: 77        .byte $77, $00   ; 

_off005_DD9D_25:
- D 2 - I - 0x00DDAD 03:DD9D: 23        .byte $23   ; 
- D 2 - I - 0x00DDAE 03:DD9E: 56        .byte $56, $00   ; 
- D 2 - I - 0x00DDB0 03:DDA0: 57        .byte $57, $00   ; 
- D 2 - I - 0x00DDB2 03:DDA2: 6A        .byte $6A, $00   ; 
- D 2 - I - 0x00DDB4 03:DDA4: 6B        .byte $6B, $00   ; 
- D 2 - I - 0x00DDB6 03:DDA6: 7A        .byte $7A, $00   ; 
- D 2 - I - 0x00DDB8 03:DDA8: 7B        .byte $7B, $00   ; 

_off005_DDAA_26:
- D 2 - I - 0x00DDBA 03:DDAA: 23        .byte $23   ; 
- D 2 - I - 0x00DDBB 03:DDAB: 57        .byte $57, $40   ; 
- D 2 - I - 0x00DDBD 03:DDAD: 56        .byte $56, $40   ; 
- D 2 - I - 0x00DDBF 03:DDAF: 69        .byte $69, $40   ; 
- D 2 - I - 0x00DDC1 03:DDB1: 68        .byte $68, $40   ; 
- D 2 - I - 0x00DDC3 03:DDB3: 79        .byte $79, $40   ; 
- D 2 - I - 0x00DDC5 03:DDB5: 78        .byte $78, $40   ; 

_off005_DDB7_27:
- D 2 - I - 0x00DDC7 03:DDB7: 23        .byte $23   ; 
- D 2 - I - 0x00DDC8 03:DDB8: 57        .byte $57, $40   ; 
- D 2 - I - 0x00DDCA 03:DDBA: 56        .byte $56, $40   ; 
- D 2 - I - 0x00DDCC 03:DDBC: 67        .byte $67, $40   ; 
- D 2 - I - 0x00DDCE 03:DDBE: 66        .byte $66, $40   ; 
- D 2 - I - 0x00DDD0 03:DDC0: 77        .byte $77, $40   ; 
- D 2 - I - 0x00DDD2 03:DDC2: 76        .byte $76, $40   ; 

_off005_DDC4_28:
- D 2 - I - 0x00DDD4 03:DDC4: 23        .byte $23   ; 
- D 2 - I - 0x00DDD5 03:DDC5: 57        .byte $57, $40   ; 
- D 2 - I - 0x00DDD7 03:DDC7: 56        .byte $56, $40   ; 
- D 2 - I - 0x00DDD9 03:DDC9: 6B        .byte $6B, $40   ; 
- D 2 - I - 0x00DDDB 03:DDCB: 6A        .byte $6A, $40   ; 
- D 2 - I - 0x00DDDD 03:DDCD: 7B        .byte $7B, $40   ; 
- D 2 - I - 0x00DDDF 03:DDCF: 7A        .byte $7A, $40   ; 

_off005_DDD1_29:
- D 2 - I - 0x00DDE1 03:DDD1: 32        .byte $32   ; 
- D 2 - I - 0x00DDE2 03:DDD2: FF        .byte $FF, $00   ; 
- D 2 - I - 0x00DDE4 03:DDD4: 85        .byte $85, $00   ; 
- D 2 - I - 0x00DDE6 03:DDD6: 86        .byte $86, $00   ; 
- D 2 - I - 0x00DDE8 03:DDD8: 94        .byte $94, $00   ; 
- D 2 - I - 0x00DDEA 03:DDDA: 95        .byte $95, $00   ; 
- D 2 - I - 0x00DDEC 03:DDDC: 96        .byte $96, $00   ; 

_off005_DDDE_2A:
- D 2 - I - 0x00DDEE 03:DDDE: 32        .byte $32   ; 
- D 2 - I - 0x00DDEF 03:DDDF: 84        .byte $84, $00   ; 
- D 2 - I - 0x00DDF1 03:DDE1: 85        .byte $85, $00   ; 
- D 2 - I - 0x00DDF3 03:DDE3: 86        .byte $86, $00   ; 
- D 2 - I - 0x00DDF5 03:DDE5: D8        .byte $D8, $00   ; 
- D 2 - I - 0x00DDF7 03:DDE7: 95        .byte $95, $00   ; 
- D 2 - I - 0x00DDF9 03:DDE9: 96        .byte $96, $00   ; 

_off005_DDEB_2B:
- D 2 - I - 0x00DDFB 03:DDEB: 32        .byte $32   ; 
- D 2 - I - 0x00DDFC 03:DDEC: 86        .byte $86, $40   ; 
- D 2 - I - 0x00DDFE 03:DDEE: 85        .byte $85, $40   ; 
- D 2 - I - 0x00DE00 03:DDF0: FF        .byte $FF, $40   ; 
- D 2 - I - 0x00DE02 03:DDF2: 96        .byte $96, $40   ; 
- D 2 - I - 0x00DE04 03:DDF4: 95        .byte $95, $40   ; 
- D 2 - I - 0x00DE06 03:DDF6: 94        .byte $94, $40   ; 

_off005_DDF8_2C:
- D 2 - I - 0x00DE08 03:DDF8: 32        .byte $32   ; 
- D 2 - I - 0x00DE09 03:DDF9: 86        .byte $86, $40   ; 
- D 2 - I - 0x00DE0B 03:DDFB: 85        .byte $85, $40   ; 
- D 2 - I - 0x00DE0D 03:DDFD: 84        .byte $84, $40   ; 
- D 2 - I - 0x00DE0F 03:DDFF: 96        .byte $96, $40   ; 
- D 2 - I - 0x00DE11 03:DE01: 95        .byte $95, $40   ; 
- D 2 - I - 0x00DE13 03:DE03: D8        .byte $D8, $40   ; 

_off005_DE05_2D:
- D 2 - I - 0x00DE15 03:DE05: 23        .byte $23   ; 
- D 2 - I - 0x00DE16 03:DE06: 5C        .byte $5C, $00   ; 
- D 2 - I - 0x00DE18 03:DE08: 5D        .byte $5D, $00   ; 
- D 2 - I - 0x00DE1A 03:DE0A: 6C        .byte $6C, $00   ; 
- D 2 - I - 0x00DE1C 03:DE0C: 6D        .byte $6D, $00   ; 
- D 2 - I - 0x00DE1E 03:DE0E: 7C        .byte $7C, $00   ; 
- D 2 - I - 0x00DE20 03:DE10: 7D        .byte $7D, $00   ; 

_off005_DE12_2E:
- D 2 - I - 0x00DE22 03:DE12: 23        .byte $23   ; 
- D 2 - I - 0x00DE23 03:DE13: 5C        .byte $5C, $00   ; 
- D 2 - I - 0x00DE25 03:DE15: 5D        .byte $5D, $00   ; 
- D 2 - I - 0x00DE27 03:DE17: 5A        .byte $5A, $00   ; 
- D 2 - I - 0x00DE29 03:DE19: 5B        .byte $5B, $00   ; 
- D 2 - I - 0x00DE2B 03:DE1B: 7D        .byte $7D, $40   ; 
- D 2 - I - 0x00DE2D 03:DE1D: 7C        .byte $7C, $40   ; 

_off005_DE1F_2F:
- D 2 - I - 0x00DE2F 03:DE1F: 23        .byte $23   ; 
- D 2 - I - 0x00DE30 03:DE20: 80        .byte $80, $00   ; 
- D 2 - I - 0x00DE32 03:DE22: 81        .byte $81, $00   ; 
- D 2 - I - 0x00DE34 03:DE24: 90        .byte $90, $00   ; 
- D 2 - I - 0x00DE36 03:DE26: 91        .byte $91, $00   ; 
- D 2 - I - 0x00DE38 03:DE28: A0        .byte $A0, $00   ; 
- D 2 - I - 0x00DE3A 03:DE2A: A1        .byte $A1, $00   ; 

_off005_DE2C_30:
- D 2 - I - 0x00DE3C 03:DE2C: 23        .byte $23   ; 
- D 2 - I - 0x00DE3D 03:DE2D: 80        .byte $80, $00   ; 
- D 2 - I - 0x00DE3F 03:DE2F: 81        .byte $81, $00   ; 
- D 2 - I - 0x00DE41 03:DE31: 58        .byte $58, $00   ; 
- D 2 - I - 0x00DE43 03:DE33: 59        .byte $59, $00   ; 
- D 2 - I - 0x00DE45 03:DE35: A1        .byte $A1, $40   ; 
- D 2 - I - 0x00DE47 03:DE37: A0        .byte $A0, $40   ; 

_off005_DE39_31:
- D 2 - I - 0x00DE49 03:DE39: 23        .byte $23   ; 
- D 2 - I - 0x00DE4A 03:DE3A: 50        .byte $50, $02   ; 
- D 2 - I - 0x00DE4C 03:DE3C: 51        .byte $51, $02   ; 
- D 2 - I - 0x00DE4E 03:DE3E: 64        .byte $64, $02   ; 
- D 2 - I - 0x00DE50 03:DE40: 65        .byte $65, $02   ; 
- D 2 - I - 0x00DE52 03:DE42: 74        .byte $74, $02   ; 
- D 2 - I - 0x00DE54 03:DE44: 75        .byte $75, $02   ; 

_off005_DE46_32:
- D 2 - I - 0x00DE56 03:DE46: 23        .byte $23   ; 
- D 2 - I - 0x00DE57 03:DE47: 50        .byte $50, $02   ; 
- D 2 - I - 0x00DE59 03:DE49: 51        .byte $51, $02   ; 
- D 2 - I - 0x00DE5B 03:DE4B: 60        .byte $60, $02   ; 
- D 2 - I - 0x00DE5D 03:DE4D: 61        .byte $61, $02   ; 
- D 2 - I - 0x00DE5F 03:DE4F: 70        .byte $70, $02   ; 
- D 2 - I - 0x00DE61 03:DE51: 71        .byte $71, $02   ; 

_off005_DE53_33:
- D 2 - I - 0x00DE63 03:DE53: 23        .byte $23   ; 
- D 2 - I - 0x00DE64 03:DE54: 50        .byte $50, $02   ; 
- D 2 - I - 0x00DE66 03:DE56: 51        .byte $51, $02   ; 
- D 2 - I - 0x00DE68 03:DE58: 62        .byte $62, $02   ; 
- D 2 - I - 0x00DE6A 03:DE5A: 63        .byte $63, $02   ; 
- D 2 - I - 0x00DE6C 03:DE5C: 72        .byte $72, $02   ; 
- D 2 - I - 0x00DE6E 03:DE5E: 73        .byte $73, $02   ; 

_off005_DE60_34:
- D 2 - I - 0x00DE70 03:DE60: 23        .byte $23   ; 
- D 2 - I - 0x00DE71 03:DE61: 51        .byte $51, $42   ; 
- D 2 - I - 0x00DE73 03:DE63: 50        .byte $50, $42   ; 
- D 2 - I - 0x00DE75 03:DE65: 65        .byte $65, $42   ; 
- D 2 - I - 0x00DE77 03:DE67: 64        .byte $64, $42   ; 
- D 2 - I - 0x00DE79 03:DE69: 75        .byte $75, $42   ; 
- D 2 - I - 0x00DE7B 03:DE6B: 74        .byte $74, $42   ; 

_off005_DE6D_35:
- D 2 - I - 0x00DE7D 03:DE6D: 23        .byte $23   ; 
- D 2 - I - 0x00DE7E 03:DE6E: 51        .byte $51, $42   ; 
- D 2 - I - 0x00DE80 03:DE70: 50        .byte $50, $42   ; 
- D 2 - I - 0x00DE82 03:DE72: 61        .byte $61, $42   ; 
- D 2 - I - 0x00DE84 03:DE74: 60        .byte $60, $42   ; 
- D 2 - I - 0x00DE86 03:DE76: 71        .byte $71, $42   ; 
- D 2 - I - 0x00DE88 03:DE78: 70        .byte $70, $42   ; 

_off005_DE7A_36:
- D 2 - I - 0x00DE8A 03:DE7A: 23        .byte $23   ; 
- D 2 - I - 0x00DE8B 03:DE7B: 51        .byte $51, $42   ; 
- D 2 - I - 0x00DE8D 03:DE7D: 50        .byte $50, $42   ; 
- D 2 - I - 0x00DE8F 03:DE7F: 63        .byte $63, $42   ; 
- D 2 - I - 0x00DE91 03:DE81: 62        .byte $62, $42   ; 
- D 2 - I - 0x00DE93 03:DE83: 73        .byte $73, $42   ; 
- D 2 - I - 0x00DE95 03:DE85: 72        .byte $72, $42   ; 

_off005_DE87_37:
- - - - - - 0x00DE97 03:DE87: 32        .byte $32   ; 
- - - - - - 0x00DE98 03:DE88: AE        .byte $AE, $42   ; 
- - - - - - 0x00DE9A 03:DE8A: 3B        .byte $3B, $42   ; 
- - - - - - 0x00DE9C 03:DE8C: 3A        .byte $3A, $42   ; 
- - - - - - 0x00DE9E 03:DE8E: EA        .byte $EA, $42   ; 
- - - - - - 0x00DEA0 03:DE90: B5        .byte $B5, $42   ; 
- - - - - - 0x00DEA2 03:DE92: 4A        .byte $4A, $42   ; 

_off005_DE94_38:
- - - - - - 0x00DEA4 03:DE94: 32        .byte $32   ; 
- - - - - - 0x00DEA5 03:DE95: 4D        .byte $4D, $42   ; 
- - - - - - 0x00DEA7 03:DE97: FF        .byte $FF, $42   ; 
- - - - - - 0x00DEA9 03:DE99: 3A        .byte $3A, $42   ; 
- - - - - - 0x00DEAB 03:DE9B: 4C        .byte $4C, $42   ; 
- - - - - - 0x00DEAD 03:DE9D: 4B        .byte $4B, $42   ; 
- - - - - - 0x00DEAF 03:DE9F: 4A        .byte $4A, $42   ; 

_off005_DEA1_39:
- D 2 - I - 0x00DEB1 03:DEA1: 32        .byte $32   ; 
- D 2 - I - 0x00DEB2 03:DEA2: 3A        .byte $3A, $02   ; 
- D 2 - I - 0x00DEB4 03:DEA4: 3B        .byte $3B, $02   ; 
- D 2 - I - 0x00DEB6 03:DEA6: AE        .byte $AE, $02   ; 
- D 2 - I - 0x00DEB8 03:DEA8: 4A        .byte $4A, $02   ; 
- D 2 - I - 0x00DEBA 03:DEAA: B5        .byte $B5, $02   ; 
- D 2 - I - 0x00DEBC 03:DEAC: EA        .byte $EA, $02   ; 

_off005_DEAE_3A:
- D 2 - I - 0x00DEBE 03:DEAE: 32        .byte $32   ; 
- D 2 - I - 0x00DEBF 03:DEAF: 3A        .byte $3A, $02   ; 
- D 2 - I - 0x00DEC1 03:DEB1: FF        .byte $FF, $02   ; 
- D 2 - I - 0x00DEC3 03:DEB3: 4D        .byte $4D, $02   ; 
- D 2 - I - 0x00DEC5 03:DEB5: 4A        .byte $4A, $02   ; 
- D 2 - I - 0x00DEC7 03:DEB7: 4B        .byte $4B, $02   ; 
- D 2 - I - 0x00DEC9 03:DEB9: 4C        .byte $4C, $02   ; 

_off005_DEBB_3B:
- D 2 - I - 0x00DECB 03:DEBB: 23        .byte $23   ; 
- D 2 - I - 0x00DECC 03:DEBC: B4        .byte $B4, $02   ; 
- D 2 - I - 0x00DECE 03:DEBE: B1        .byte $B1, $02   ; 
- D 2 - I - 0x00DED0 03:DEC0: C2        .byte $C2, $02   ; 
- D 2 - I - 0x00DED2 03:DEC2: C3        .byte $C3, $02   ; 
- D 2 - I - 0x00DED4 03:DEC4: D2        .byte $D2, $02   ; 
- D 2 - I - 0x00DED6 03:DEC6: D3        .byte $D3, $02   ; 

_off005_DEC8_3C:
- D 2 - I - 0x00DED8 03:DEC8: 23        .byte $23   ; 
- D 2 - I - 0x00DED9 03:DEC9: B4        .byte $B4, $02   ; 
- D 2 - I - 0x00DEDB 03:DECB: B1        .byte $B1, $02   ; 
- D 2 - I - 0x00DEDD 03:DECD: C0        .byte $C0, $02   ; 
- D 2 - I - 0x00DEDF 03:DECF: C1        .byte $C1, $02   ; 
- D 2 - I - 0x00DEE1 03:DED1: D0        .byte $D0, $02   ; 
- D 2 - I - 0x00DEE3 03:DED3: D1        .byte $D1, $02   ; 

_off005_DED5_3D:
- D 2 - I - 0x00DEE5 03:DED5: 23        .byte $23   ; 
- D 2 - I - 0x00DEE6 03:DED6: B4        .byte $B4, $02   ; 
- D 2 - I - 0x00DEE8 03:DED8: B1        .byte $B1, $02   ; 
- D 2 - I - 0x00DEEA 03:DEDA: C4        .byte $C4, $02   ; 
- D 2 - I - 0x00DEEC 03:DEDC: C5        .byte $C5, $02   ; 
- D 2 - I - 0x00DEEE 03:DEDE: D4        .byte $D4, $02   ; 
- D 2 - I - 0x00DEF0 03:DEE0: D5        .byte $D5, $02   ; 

_off005_DEE2_3E:
- D 2 - I - 0x00DEF2 03:DEE2: 23        .byte $23   ; 
- D 2 - I - 0x00DEF3 03:DEE3: B1        .byte $B1, $42   ; 
- D 2 - I - 0x00DEF5 03:DEE5: B4        .byte $B4, $42   ; 
- D 2 - I - 0x00DEF7 03:DEE7: C3        .byte $C3, $42   ; 
- D 2 - I - 0x00DEF9 03:DEE9: C2        .byte $C2, $42   ; 
- D 2 - I - 0x00DEFB 03:DEEB: D3        .byte $D3, $42   ; 
- D 2 - I - 0x00DEFD 03:DEED: D2        .byte $D2, $42   ; 

_off005_DEEF_3F:
- D 2 - I - 0x00DEFF 03:DEEF: 23        .byte $23   ; 
- D 2 - I - 0x00DF00 03:DEF0: B1        .byte $B1, $42   ; 
- D 2 - I - 0x00DF02 03:DEF2: B4        .byte $B4, $42   ; 
- D 2 - I - 0x00DF04 03:DEF4: C1        .byte $C1, $42   ; 
- D 2 - I - 0x00DF06 03:DEF6: C0        .byte $C0, $42   ; 
- D 2 - I - 0x00DF08 03:DEF8: D1        .byte $D1, $42   ; 
- D 2 - I - 0x00DF0A 03:DEFA: D0        .byte $D0, $42   ; 

_off005_DEFC_40:
- D 2 - I - 0x00DF0C 03:DEFC: 23        .byte $23   ; 
- D 2 - I - 0x00DF0D 03:DEFD: B1        .byte $B1, $42   ; 
- D 2 - I - 0x00DF0F 03:DEFF: B4        .byte $B4, $42   ; 
- D 2 - I - 0x00DF11 03:DF01: C5        .byte $C5, $42   ; 
- D 2 - I - 0x00DF13 03:DF03: C4        .byte $C4, $42   ; 
- D 2 - I - 0x00DF15 03:DF05: D5        .byte $D5, $42   ; 
- D 2 - I - 0x00DF17 03:DF07: D4        .byte $D4, $42   ; 

_off005_DF09_41:
- D 2 - I - 0x00DF19 03:DF09: 32        .byte $32   ; 
- D 2 - I - 0x00DF1A 03:DF0A: 89        .byte $89, $02   ; 
- D 2 - I - 0x00DF1C 03:DF0C: 8A        .byte $8A, $02   ; 
- D 2 - I - 0x00DF1E 03:DF0E: 8B        .byte $8B, $02   ; 
- D 2 - I - 0x00DF20 03:DF10: 99        .byte $99, $02   ; 
- D 2 - I - 0x00DF22 03:DF12: 9A        .byte $9A, $02   ; 
- D 2 - I - 0x00DF24 03:DF14: 9B        .byte $9B, $02   ; 

_off005_DF16_42:
- D 2 - I - 0x00DF26 03:DF16: 32        .byte $32   ; 
- D 2 - I - 0x00DF27 03:DF17: A5        .byte $A5, $02   ; 
- D 2 - I - 0x00DF29 03:DF19: 8A        .byte $8A, $02   ; 
- D 2 - I - 0x00DF2B 03:DF1B: 8B        .byte $8B, $02   ; 
- D 2 - I - 0x00DF2D 03:DF1D: A4        .byte $A4, $02   ; 
- D 2 - I - 0x00DF2F 03:DF1F: 9A        .byte $9A, $02   ; 
- D 2 - I - 0x00DF31 03:DF21: 9B        .byte $9B, $02   ; 

_off005_DF23_43:
- D 2 - I - 0x00DF33 03:DF23: 32        .byte $32   ; 
- D 2 - I - 0x00DF34 03:DF24: 8B        .byte $8B, $42   ; 
- D 2 - I - 0x00DF36 03:DF26: 8A        .byte $8A, $42   ; 
- D 2 - I - 0x00DF38 03:DF28: 89        .byte $89, $42   ; 
- D 2 - I - 0x00DF3A 03:DF2A: 9B        .byte $9B, $42   ; 
- D 2 - I - 0x00DF3C 03:DF2C: 9A        .byte $9A, $42   ; 
- D 2 - I - 0x00DF3E 03:DF2E: 99        .byte $99, $42   ; 

_off005_DF30_44:
- D 2 - I - 0x00DF40 03:DF30: 32        .byte $32   ; 
- D 2 - I - 0x00DF41 03:DF31: 8B        .byte $8B, $42   ; 
- D 2 - I - 0x00DF43 03:DF33: 8A        .byte $8A, $42   ; 
- D 2 - I - 0x00DF45 03:DF35: A5        .byte $A5, $42   ; 
- D 2 - I - 0x00DF47 03:DF37: 9B        .byte $9B, $42   ; 
- D 2 - I - 0x00DF49 03:DF39: 9A        .byte $9A, $42   ; 
- D 2 - I - 0x00DF4B 03:DF3B: A4        .byte $A4, $42   ; 

_off005_DF3D_45:
- D 2 - I - 0x00DF4D 03:DF3D: 22        .byte $22   ; 
- D 2 - I - 0x00DF4E 03:DF3E: E0        .byte $E0, $03   ; 
- D 2 - I - 0x00DF50 03:DF40: E1        .byte $E1, $03   ; 
- D 2 - I - 0x00DF52 03:DF42: F0        .byte $F0, $03   ; 
- D 2 - I - 0x00DF54 03:DF44: F1        .byte $F1, $03   ; 

_off005_DF46_46:
- - - - - - 0x00DF56 03:DF46: 22        .byte $22   ; 
- - - - - - 0x00DF57 03:DF47: E8        .byte $E8, $03   ; 
- - - - - - 0x00DF59 03:DF49: E9        .byte $E9, $03   ; 
- - - - - - 0x00DF5B 03:DF4B: F8        .byte $F8, $03   ; 
- - - - - - 0x00DF5D 03:DF4D: F9        .byte $F9, $03   ; 

_off005_DF4F_47:
- D 2 - I - 0x00DF5F 03:DF4F: 22        .byte $22   ; 
- D 2 - I - 0x00DF60 03:DF50: 87        .byte $87, $03   ; 
- D 2 - I - 0x00DF62 03:DF52: 88        .byte $88, $03   ; 
- D 2 - I - 0x00DF64 03:DF54: 97        .byte $97, $03   ; 
- D 2 - I - 0x00DF66 03:DF56: 98        .byte $98, $03   ; 

_off005_DF58_48:
- D 2 - I - 0x00DF68 03:DF58: 22        .byte $22   ; 
- D 2 - I - 0x00DF69 03:DF59: 88        .byte $88, $43   ; 
- D 2 - I - 0x00DF6B 03:DF5B: 87        .byte $87, $43   ; 
- D 2 - I - 0x00DF6D 03:DF5D: 98        .byte $98, $43   ; 
- D 2 - I - 0x00DF6F 03:DF5F: 97        .byte $97, $43   ; 

_off005_DF61_49:
- D 2 - I - 0x00DF71 03:DF61: 22        .byte $22   ; 
- D 2 - I - 0x00DF72 03:DF62: AF        .byte $AF, $03   ; 
- D 2 - I - 0x00DF74 03:DF64: AF        .byte $AF, $43   ; 
- D 2 - I - 0x00DF76 03:DF66: BF        .byte $BF, $03   ; 
- D 2 - I - 0x00DF78 03:DF68: 28        .byte $28, $03   ; 

_off005_DF6A_4B:
- D 2 - I - 0x00DF7A 03:DF6A: 22        .byte $22   ; 
- D 2 - I - 0x00DF7B 03:DF6B: EC        .byte $EC, $03   ; 
- D 2 - I - 0x00DF7D 03:DF6D: ED        .byte $ED, $03   ; 
- D 2 - I - 0x00DF7F 03:DF6F: FC        .byte $FC, $03   ; 
- D 2 - I - 0x00DF81 03:DF71: FD        .byte $FD, $03   ; 

_off005_DF73_4C:
- D 2 - I - 0x00DF83 03:DF73: 22        .byte $22   ; 
- D 2 - I - 0x00DF84 03:DF74: E2        .byte $E2, $03   ; 
- D 2 - I - 0x00DF86 03:DF76: E3        .byte $E3, $03   ; 
- D 2 - I - 0x00DF88 03:DF78: F2        .byte $F2, $03   ; 
- D 2 - I - 0x00DF8A 03:DF7A: F3        .byte $F3, $03   ; 

_off005_DF7C_4D:
- - - - - - 0x00DF8C 03:DF7C: 22        .byte $22   ; 
- - - - - - 0x00DF8D 03:DF7D: CA        .byte $CA, $03   ; 
- - - - - - 0x00DF8F 03:DF7F: CB        .byte $CB, $03   ; 
- - - - - - 0x00DF91 03:DF81: DA        .byte $DA, $03   ; 
- - - - - - 0x00DF93 03:DF83: DB        .byte $DB, $03   ; 

_off005_DF85_4E:
- D 2 - I - 0x00DF95 03:DF85: 22        .byte $22   ; 
- D 2 - I - 0x00DF96 03:DF86: E6        .byte $E6, $03   ; 
- D 2 - I - 0x00DF98 03:DF88: E7        .byte $E7, $03   ; 
- D 2 - I - 0x00DF9A 03:DF8A: F6        .byte $F6, $03   ; 
- D 2 - I - 0x00DF9C 03:DF8C: F7        .byte $F7, $03   ; 

_off005_DF8E_4F:
- - - - - - 0x00DF9E 03:DF8E: 22        .byte $22   ; 
- - - - - - 0x00DF9F 03:DF8F: CC        .byte $CC, $03   ; 
- - - - - - 0x00DFA1 03:DF91: CD        .byte $CD, $03   ; 
- - - - - - 0x00DFA3 03:DF93: DC        .byte $DC, $03   ; 
- - - - - - 0x00DFA5 03:DF95: DD        .byte $DD, $03   ; 

_off005_DF97_50:
- D 2 - I - 0x00DFA7 03:DF97: 22        .byte $22   ; 
- D 2 - I - 0x00DFA8 03:DF98: E4        .byte $E4, $03   ; 
- D 2 - I - 0x00DFAA 03:DF9A: E5        .byte $E5, $03   ; 
- D 2 - I - 0x00DFAC 03:DF9C: F4        .byte $F4, $03   ; 
- D 2 - I - 0x00DFAE 03:DF9E: F5        .byte $F5, $03   ; 

_off005_DFA0_51:
- - - - - - 0x00DFB0 03:DFA0: 22        .byte $22   ; 
- - - - - - 0x00DFB1 03:DFA1: CE        .byte $CE, $03   ; 
- - - - - - 0x00DFB3 03:DFA3: CF        .byte $CF, $03   ; 
- - - - - - 0x00DFB5 03:DFA5: DE        .byte $DE, $03   ; 
- - - - - - 0x00DFB7 03:DFA7: DF        .byte $DF, $03   ; 

_off005_DFA9_52:
_off005_DFA9_53:
- D 2 - I - 0x00DFB9 03:DFA9: 22        .byte $22   ; 
- D 2 - I - 0x00DFBA 03:DFAA: A2        .byte $A2, $01   ; 
- D 2 - I - 0x00DFBC 03:DFAC: A3        .byte $A3, $01   ; 
- D 2 - I - 0x00DFBE 03:DFAE: B2        .byte $B2, $01   ; 
- D 2 - I - 0x00DFC0 03:DFB0: B3        .byte $B3, $01   ; 

_off005_DFB2_54:
_off005_DFB2_55:
- D 2 - I - 0x00DFC2 03:DFB2: 22        .byte $22   ; 
- D 2 - I - 0x00DFC3 03:DFB3: 82        .byte $82, $01   ; 
- D 2 - I - 0x00DFC5 03:DFB5: 83        .byte $83, $01   ; 
- D 2 - I - 0x00DFC7 03:DFB7: 92        .byte $92, $01   ; 
- D 2 - I - 0x00DFC9 03:DFB9: 93        .byte $93, $01   ; 

_off005_DFBB_56:
- D 2 - I - 0x00DFCB 03:DFBB: 23        .byte $23   ; 
- D 2 - I - 0x00DFCC 03:DFBC: 8C        .byte $8C, $02   ; 
- D 2 - I - 0x00DFCE 03:DFBE: 8D        .byte $8D, $02   ; 
- D 2 - I - 0x00DFD0 03:DFC0: AA        .byte $AA, $02   ; 
- D 2 - I - 0x00DFD2 03:DFC2: AB        .byte $AB, $02   ; 
- D 2 - I - 0x00DFD4 03:DFC4: BA        .byte $BA, $02   ; 
- D 2 - I - 0x00DFD6 03:DFC6: BB        .byte $BB, $02   ; 

_off005_DFC8_57:
- D 2 - I - 0x00DFD8 03:DFC8: 23        .byte $23   ; 
- D 2 - I - 0x00DFD9 03:DFC9: 8C        .byte $8C, $02   ; 
- D 2 - I - 0x00DFDB 03:DFCB: 8D        .byte $8D, $02   ; 
- D 2 - I - 0x00DFDD 03:DFCD: 9C        .byte $9C, $02   ; 
- D 2 - I - 0x00DFDF 03:DFCF: 9D        .byte $9D, $02   ; 
- D 2 - I - 0x00DFE1 03:DFD1: AC        .byte $AC, $02   ; 
- D 2 - I - 0x00DFE3 03:DFD3: AD        .byte $AD, $02   ; 

_off005_DFD5_58:
- D 2 - I - 0x00DFE5 03:DFD5: 23        .byte $23   ; 
- D 2 - I - 0x00DFE6 03:DFD6: 8C        .byte $8C, $02   ; 
- D 2 - I - 0x00DFE8 03:DFD8: 8D        .byte $8D, $02   ; 
- D 2 - I - 0x00DFEA 03:DFDA: C6        .byte $C6, $02   ; 
- D 2 - I - 0x00DFEC 03:DFDC: C7        .byte $C7, $02   ; 
- D 2 - I - 0x00DFEE 03:DFDE: D6        .byte $D6, $02   ; 
- D 2 - I - 0x00DFF0 03:DFE0: D7        .byte $D7, $02   ; 

_off005_DFE2_59:
- D 2 - I - 0x00DFF2 03:DFE2: 23        .byte $23   ; 
- D 2 - I - 0x00DFF3 03:DFE3: 8D        .byte $8D, $42   ; 
- D 2 - I - 0x00DFF5 03:DFE5: 8C        .byte $8C, $42   ; 
- D 2 - I - 0x00DFF7 03:DFE7: AB        .byte $AB, $42   ; 
- D 2 - I - 0x00DFF9 03:DFE9: AA        .byte $AA, $42   ; 
- D 2 - I - 0x00DFFB 03:DFEB: BB        .byte $BB, $42   ; 
- D 2 - I - 0x00DFFD 03:DFED: BA        .byte $BA, $42   ; 

_off005_DFEF_5A:
- D 2 - I - 0x00DFFF 03:DFEF: 23        .byte $23   ; 
- D 2 - I - 0x00E000 03:DFF0: 8D        .byte $8D, $42   ; 
- D 2 - I - 0x00E002 03:DFF2: 8C        .byte $8C, $42   ; 
- D 2 - I - 0x00E004 03:DFF4: 9D        .byte $9D, $42   ; 
- D 2 - I - 0x00E006 03:DFF6: 9C        .byte $9C, $42   ; 
- D 2 - I - 0x00E008 03:DFF8: AD        .byte $AD, $42   ; 
- D 2 - I - 0x00E00A 03:DFFA: AC        .byte $AC, $42   ; 

_off005_DFFC_5B:
- D 2 - I - 0x00E00C 03:DFFC: 23        .byte $23   ; 
- D 2 - I - 0x00E00D 03:DFFD: 8D        .byte $8D, $42   ; 
- - - - - - 0x00E00F 03:DFFF: 8C        .byte $8C, $42   ; 
- D 3 - I - 0x00E011 03:E001: C7        .byte $C7, $42   ; 
- D 3 - I - 0x00E013 03:E003: C6        .byte $C6, $42   ; 
- D 3 - I - 0x00E015 03:E005: D7        .byte $D7, $42   ; 
- D 3 - I - 0x00E017 03:E007: D6        .byte $D6, $42   ; 

_off005_E009_5C:
- D 3 - I - 0x00E019 03:E009: 32        .byte $32   ; 
- D 3 - I - 0x00E01A 03:E00A: FF        .byte $FF, $02   ; 
- D 3 - I - 0x00E01C 03:E00C: FF        .byte $FF, $02   ; 
- D 3 - I - 0x00E01E 03:E00E: FF        .byte $FF, $02   ; 
- D 3 - I - 0x00E020 03:E010: BC        .byte $BC, $02   ; 
- D 3 - I - 0x00E022 03:E012: BD        .byte $BD, $02   ; 
- D 3 - I - 0x00E024 03:E014: BE        .byte $BE, $02   ; 

_off005_E016_5D:
- D 3 - I - 0x00E026 03:E016: 32        .byte $32   ; 
- D 3 - I - 0x00E027 03:E017: A6        .byte $A6, $02   ; 
- D 3 - I - 0x00E029 03:E019: FF        .byte $FF, $02   ; 
- D 3 - I - 0x00E02B 03:E01B: FF        .byte $FF, $02   ; 
- D 3 - I - 0x00E02D 03:E01D: B6        .byte $B6, $02   ; 
- D 3 - I - 0x00E02F 03:E01F: BD        .byte $BD, $02   ; 
- D 3 - I - 0x00E031 03:E021: BE        .byte $BE, $02   ; 

_off005_E023_5E:
- D 3 - I - 0x00E033 03:E023: 32        .byte $32   ; 
- D 3 - I - 0x00E034 03:E024: FF        .byte $FF, $42   ; 
- D 3 - I - 0x00E036 03:E026: FF        .byte $FF, $42   ; 
- D 3 - I - 0x00E038 03:E028: FF        .byte $FF, $42   ; 
- D 3 - I - 0x00E03A 03:E02A: BE        .byte $BE, $42   ; 
- D 3 - I - 0x00E03C 03:E02C: BD        .byte $BD, $42   ; 
- D 3 - I - 0x00E03E 03:E02E: BC        .byte $BC, $42   ; 

_off005_E030_5F:
- D 3 - I - 0x00E040 03:E030: 32        .byte $32   ; 
- D 3 - I - 0x00E041 03:E031: FF        .byte $FF, $42   ; 
- D 3 - I - 0x00E043 03:E033: FF        .byte $FF, $42   ; 
- D 3 - I - 0x00E045 03:E035: A6        .byte $A6, $42   ; 
- D 3 - I - 0x00E047 03:E037: BE        .byte $BE, $42   ; 
- D 3 - I - 0x00E049 03:E039: BD        .byte $BD, $42   ; 
- D 3 - I - 0x00E04B 03:E03B: B6        .byte $B6, $42   ; 



sub_E03D:
C - - - - - 0x00E04D 03:E03D: A0 00     LDY #$00
bra_E03F_loop:
C - - - - - 0x00E04F 03:E03F: B9 10 06  LDA ram_item_state,Y
C - - - - - 0x00E052 03:E042: 10 0E     BPL bra_E052    ; if not exists     con_item_state_exists
C - - - - - 0x00E054 03:E044: 29 02     AND #con_item_state_02
C - - - - - 0x00E056 03:E046: D0 14     BNE bra_E05C
C - - - - - 0x00E058 03:E048: B9 10 06  LDA ram_item_state,Y
C - - - - - 0x00E05B 03:E04B: 29 40     AND #con_item_state_40
C - - - - - 0x00E05D 03:E04D: F0 03     BEQ bra_E052
C - - - - - 0x00E05F 03:E04F: 20 71 E0  JSR sub_E071
bra_E052:
loc_E052:
C D 3 - - - 0x00E062 03:E052: 98        TYA
C - - - - - 0x00E063 03:E053: 18        CLC
C - - - - - 0x00E064 03:E054: 69 08     ADC #$08
C - - - - - 0x00E066 03:E056: A8        TAY
C - - - - - 0x00E067 03:E057: C0 20     CPY #$20
C - - - - - 0x00E069 03:E059: D0 E4     BNE bra_E03F_loop
C - - - - - 0x00E06B 03:E05B: 60        RTS
bra_E05C:
C - - - - - 0x00E06C 03:E05C: B9 17 06  LDA ram_item_destr_timer,Y
C - - - - - 0x00E06F 03:E05F: 18        CLC
C - - - - - 0x00E070 03:E060: 69 01     ADC #$01
C - - - - - 0x00E072 03:E062: 99 17 06  STA ram_item_destr_timer,Y
C - - - - - 0x00E075 03:E065: C9 40     CMP #$40
C - - - - - 0x00E077 03:E067: D0 E9     BNE bra_E052
C - - - - - 0x00E079 03:E069: A9 00     LDA #con_item_state_null
C - - - - - 0x00E07B 03:E06B: 99 10 06  STA ram_item_state,Y
C - - - - - 0x00E07E 03:E06E: 4C 52 E0  JMP loc_E052



sub_E071:
C - - - - - 0x00E081 03:E071: B9 10 06  LDA ram_item_state,Y
C - - - - - 0x00E084 03:E074: 29 10     AND #con_item_state_10
C - - - - - 0x00E086 03:E076: F0 03     BEQ bra_E07B
C - - - - - 0x00E088 03:E078: 4C F9 E1  JMP loc_E1F9
bra_E07B:
C - - - - - 0x00E08B 03:E07B: B9 10 06  LDA ram_item_state,Y
C - - - - - 0x00E08E 03:E07E: 29 08     AND #con_item_state_08
C - - - - - 0x00E090 03:E080: D0 03     BNE bra_E085
C - - - - - 0x00E092 03:E082: 4C 69 E1  JMP loc_E169
bra_E085:
C - - - - - 0x00E095 03:E085: B9 11 06  LDA ram_pos_X_lo_item,Y
C - - - - - 0x00E098 03:E088: 85 1C     STA ram_001C
C - - - - - 0x00E09A 03:E08A: 38        SEC
C - - - - - 0x00E09B 03:E08B: E9 02     SBC #< $0002
C - - - - - 0x00E09D 03:E08D: 99 11 06  STA ram_pos_X_lo_item,Y
C - - - - - 0x00E0A0 03:E090: B9 12 06  LDA ram_pos_X_hi_item,Y
C - - - - - 0x00E0A3 03:E093: 85 1D     STA ram_001D
C - - - - - 0x00E0A5 03:E095: E9 00     SBC #> $0002
C - - - - - 0x00E0A7 03:E097: 99 12 06  STA ram_pos_X_hi_item,Y
C - - - - - 0x00E0AA 03:E09A: 20 1F E1  JSR sub_E11F
C - - - - - 0x00E0AD 03:E09D: B9 11 06  LDA ram_pos_X_lo_item,Y
C - - - - - 0x00E0B0 03:E0A0: 85 6A     STA ram_006A
C - - - - - 0x00E0B2 03:E0A2: B9 12 06  LDA ram_pos_X_hi_item,Y
C - - - - - 0x00E0B5 03:E0A5: 85 6B     STA ram_006B
C - - - - - 0x00E0B7 03:E0A7: B9 13 06  LDA ram_pos_Y_lo_item,Y
C - - - - - 0x00E0BA 03:E0AA: 85 6C     STA ram_006C
C - - - - - 0x00E0BC 03:E0AC: B9 14 06  LDA ram_pos_Y_hi_item,Y
C - - - - - 0x00E0BF 03:E0AF: 85 6D     STA ram_006D
C - - - - - 0x00E0C1 03:E0B1: 20 5F C3  JSR sub_C35F
C - - - - - 0x00E0C4 03:E0B4: A5 6E     LDA ram_006E
C - - - - - 0x00E0C6 03:E0B6: 10 36     BPL bra_E0EE
C - - - - - 0x00E0C8 03:E0B8: B9 15 06  LDA ram_item_id,Y
C - - - - - 0x00E0CB 03:E0BB: C9 04     CMP #con_item_id_glove
C - - - - - 0x00E0CD 03:E0BD: F0 06     BEQ bra_E0C5_it_is_glove
C - - - - - 0x00E0CF 03:E0BF: 20 B2 E1  JSR sub_E1B2
C - - - - - 0x00E0D2 03:E0C2: 60        RTS



tbl_E0C3_lo:
- D 3 - - - 0x00E0D3 03:E0C3: 00        .byte < $0000   ; 00 
- D 3 - - - 0x00E0D4 03:E0C4: 0F        .byte < $000F   ; 01 



bra_E0C5_it_is_glove:
loc_E0C5:
C D 3 - - - 0x00E0D5 03:E0C5: B9 11 06  LDA ram_pos_X_lo_item,Y
C - - - - - 0x00E0D8 03:E0C8: 18        CLC
C - - - - - 0x00E0D9 03:E0C9: 69 02     ADC #< $0002
C - - - - - 0x00E0DB 03:E0CB: 99 11 06  STA ram_pos_X_lo_item,Y
C - - - - - 0x00E0DE 03:E0CE: B9 12 06  LDA ram_pos_X_hi_item,Y
C - - - - - 0x00E0E1 03:E0D1: 69 00     ADC #> $0002
C - - - - - 0x00E0E3 03:E0D3: 99 12 06  STA ram_pos_X_hi_item,Y
C - - - - - 0x00E0E6 03:E0D6: B9 11 06  LDA ram_pos_X_lo_item,Y
C - - - - - 0x00E0E9 03:E0D9: 29 F0     AND #$F0
C - - - - - 0x00E0EB 03:E0DB: 99 11 06  STA ram_pos_X_lo_item,Y
C - - - - - 0x00E0EE 03:E0DE: B9 10 06  LDA ram_item_state,Y
; bzk optimize, what's the point of deleting and then adding 10 state?
C - - - - - 0x00E0F1 03:E0E1: 29 C8     AND #(con_item_state_01 + con_item_state_02 + con_item_state_04 + con_item_state_10 + con_item_state_20) ^ $FF
C - - - - - 0x00E0F3 03:E0E3: 09 10     ORA #con_item_state_10
C - - - - - 0x00E0F5 03:E0E5: 99 10 06  STA ram_item_state,Y
C - - - - - 0x00E0F8 03:E0E8: A9 00     LDA #$00
C - - - - - 0x00E0FA 03:E0EA: 99 16 06  STA ram_item_move_timer,Y
C - - - - - 0x00E0FD 03:E0ED: 60        RTS



bra_E0EE:
loc_E0EE:
C D 3 - - - 0x00E0FE 03:E0EE: B9 15 06  LDA ram_item_id,Y
C - - - - - 0x00E101 03:E0F1: C9 04     CMP #con_item_id_glove
C - - - - - 0x00E103 03:E0F3: D0 01     BNE bra_E0F6_not_glove
C - - - - - 0x00E105 03:E0F5: 60        RTS
bra_E0F6_not_glove:
C - - - - - 0x00E106 03:E0F6: B9 16 06  LDA ram_item_move_timer,Y
C - - - - - 0x00E109 03:E0F9: 18        CLC
C - - - - - 0x00E10A 03:E0FA: 69 02     ADC #$02
C - - - - - 0x00E10C 03:E0FC: 99 16 06  STA ram_item_move_timer,Y
C - - - - - 0x00E10F 03:E0FF: B9 15 06  LDA ram_item_id,Y
C - - - - - 0x00E112 03:E102: AA        TAX
C - - - - - 0x00E113 03:E103: BD 19 E1  LDA tbl_E119,X
C - - - - - 0x00E116 03:E106: D9 16 06  CMP ram_item_move_timer,Y
C - - - - - 0x00E119 03:E109: D0 0D     BNE bra_E118_RTS
C - - - - - 0x00E11B 03:E10B: 20 1F E1  JSR sub_E11F
C - - - - - 0x00E11E 03:E10E: A9 00     LDA #$00
C - - - - - 0x00E120 03:E110: 99 16 06  STA ram_item_move_timer,Y
C - - - - - 0x00E123 03:E113: A9 80     LDA #con_item_state_exists
C - - - - - 0x00E125 03:E115: 99 10 06  STA ram_item_state,Y
bra_E118_RTS:
C - - - - - 0x00E128 03:E118: 60        RTS



tbl_E119:
- D 3 - - - 0x00E129 03:E119: 50        .byte $50   ; 00 con_item_id_bucket
- D 3 - - - 0x00E12A 03:E11A: 20        .byte $20   ; 01 con_item_id_safe
- D 3 - - - 0x00E12B 03:E11B: 30        .byte $30   ; 02 con_item_id_box
- - - - - - 0x00E12C 03:E11C: 50        .byte $50   ; 03 con_item_id_potion
- - - - - - 0x00E12D 03:E11D: 80        .byte $80   ; 04 con_item_id_glove
- D 3 - - - 0x00E12E 03:E11E: 10        .byte $10   ; 05 con_item_id_10t



sub_E11F:
C - - - - - 0x00E12F 03:E11F: B9 15 06  LDA ram_item_id,Y
C - - - - - 0x00E132 03:E122: C9 04     CMP #con_item_id_glove
C - - - - - 0x00E134 03:E124: D0 01     BNE bra_E127_not_glove
C - - - - - 0x00E136 03:E126: 60        RTS
bra_E127_not_glove:
C - - - - - 0x00E137 03:E127: B9 10 06  LDA ram_item_state,Y
C - - - - - 0x00E13A 03:E12A: 29 08     AND #con_item_state_08
C - - - - - 0x00E13C 03:E12C: 4A        LSR
C - - - - - 0x00E13D 03:E12D: 4A        LSR
C - - - - - 0x00E13E 03:E12E: 4A        LSR
C - - - - - 0x00E13F 03:E12F: AA        TAX
C - - - - - 0x00E140 03:E130: BD C3 E0  LDA tbl_E0C3_lo,X
C - - - - - 0x00E143 03:E133: 18        CLC
C - - - - - 0x00E144 03:E134: 79 11 06  ADC ram_pos_X_lo_item,Y
C - - - - - 0x00E147 03:E137: 85 6A     STA ram_006A
C - - - - - 0x00E149 03:E139: B9 12 06  LDA ram_pos_X_hi_item,Y
C - - - - - 0x00E14C 03:E13C: 69 00     ADC #$00
C - - - - - 0x00E14E 03:E13E: 85 6B     STA ram_006B
C - - - - - 0x00E150 03:E140: B9 13 06  LDA ram_pos_Y_lo_item,Y
C - - - - - 0x00E153 03:E143: 18        CLC
C - - - - - 0x00E154 03:E144: 69 10     ADC #< $0010
C - - - - - 0x00E156 03:E146: 85 6C     STA ram_006C
C - - - - - 0x00E158 03:E148: B9 14 06  LDA ram_pos_Y_hi_item,Y
C - - - - - 0x00E15B 03:E14B: 69 00     ADC #> $0010
C - - - - - 0x00E15D 03:E14D: 85 6D     STA ram_006D
C - - - - - 0x00E15F 03:E14F: 20 5F C3  JSR sub_C35F
C - - - - - 0x00E162 03:E152: A5 6E     LDA ram_006E
C - - - - - 0x00E164 03:E154: 10 01     BPL bra_E157
C - - - - - 0x00E166 03:E156: 60        RTS
bra_E157:
C - - - - - 0x00E167 03:E157: B9 10 06  LDA ram_item_state,Y
; bzk optimize, what's the point of deleting and then adding 10 state?
C - - - - - 0x00E16A 03:E15A: 29 CF     AND #(con_item_state_10 + con_item_state_20) ^ $FF
C - - - - - 0x00E16C 03:E15C: 09 10     ORA #con_item_state_10
C - - - - - 0x00E16E 03:E15E: 99 10 06  STA ram_item_state,Y
C - - - - - 0x00E171 03:E161: A9 00     LDA #$00
C - - - - - 0x00E173 03:E163: 99 16 06  STA ram_item_move_timer,Y
C - - - - - 0x00E176 03:E166: 68        PLA
C - - - - - 0x00E177 03:E167: 68        PLA
C - - - - - 0x00E178 03:E168: 60        RTS



loc_E169:
C D 3 - - - 0x00E179 03:E169: B9 11 06  LDA ram_pos_X_lo_item,Y
C - - - - - 0x00E17C 03:E16C: 85 1C     STA ram_001C
C - - - - - 0x00E17E 03:E16E: 18        CLC
C - - - - - 0x00E17F 03:E16F: 69 02     ADC #< $0002
C - - - - - 0x00E181 03:E171: 99 11 06  STA ram_pos_X_lo_item,Y
C - - - - - 0x00E184 03:E174: B9 12 06  LDA ram_pos_X_hi_item,Y
C - - - - - 0x00E187 03:E177: 85 1D     STA ram_001D
C - - - - - 0x00E189 03:E179: 69 00     ADC #> $0002
C - - - - - 0x00E18B 03:E17B: 99 12 06  STA ram_pos_X_hi_item,Y
C - - - - - 0x00E18E 03:E17E: 20 1F E1  JSR sub_E11F
C - - - - - 0x00E191 03:E181: B9 11 06  LDA ram_pos_X_lo_item,Y
C - - - - - 0x00E194 03:E184: 18        CLC
C - - - - - 0x00E195 03:E185: 69 10     ADC #< $0010
C - - - - - 0x00E197 03:E187: 85 6A     STA ram_006A
C - - - - - 0x00E199 03:E189: B9 12 06  LDA ram_pos_X_hi_item,Y
C - - - - - 0x00E19C 03:E18C: 69 00     ADC #> $0010
C - - - - - 0x00E19E 03:E18E: 85 6B     STA ram_006B
C - - - - - 0x00E1A0 03:E190: B9 13 06  LDA ram_pos_Y_lo_item,Y
C - - - - - 0x00E1A3 03:E193: 85 6C     STA ram_006C
C - - - - - 0x00E1A5 03:E195: B9 14 06  LDA ram_pos_Y_hi_item,Y
C - - - - - 0x00E1A8 03:E198: 85 6D     STA ram_006D
C - - - - - 0x00E1AA 03:E19A: 20 5F C3  JSR sub_C35F
C - - - - - 0x00E1AD 03:E19D: A5 6E     LDA ram_006E
C - - - - - 0x00E1AF 03:E19F: 30 03     BMI bra_E1A4
C - - - - - 0x00E1B1 03:E1A1: 4C EE E0  JMP loc_E0EE
bra_E1A4:
C - - - - - 0x00E1B4 03:E1A4: B9 15 06  LDA ram_item_id,Y
C - - - - - 0x00E1B7 03:E1A7: C9 04     CMP #con_item_id_glove
C - - - - - 0x00E1B9 03:E1A9: D0 03     BNE bra_E1AE_not_glove
C - - - - - 0x00E1BB 03:E1AB: 4C C5 E0  JMP loc_E0C5
bra_E1AE_not_glove:
C - - - - - 0x00E1BE 03:E1AE: 20 B2 E1  JSR sub_E1B2
C - - - - - 0x00E1C1 03:E1B1: 60        RTS



sub_E1B2:
C - - - - - 0x00E1C2 03:E1B2: B9 10 06  LDA ram_item_state,Y
C - - - - - 0x00E1C5 03:E1B5: 09 02     ORA #con_item_state_02
C - - - - - 0x00E1C7 03:E1B7: 99 10 06  STA ram_item_state,Y
C - - - - - 0x00E1CA 03:E1BA: A9 00     LDA #$00
C - - - - - 0x00E1CC 03:E1BC: 99 17 06  STA ram_item_destr_timer,Y
C - - - - - 0x00E1CF 03:E1BF: B9 13 06  LDA ram_pos_Y_lo_item,Y
C - - - - - 0x00E1D2 03:E1C2: 38        SEC
C - - - - - 0x00E1D3 03:E1C3: E9 08     SBC #< $0008
C - - - - - 0x00E1D5 03:E1C5: 99 13 06  STA ram_pos_Y_lo_item,Y
C - - - - - 0x00E1D8 03:E1C8: B9 14 06  LDA ram_pos_Y_hi_item,Y
C - - - - - 0x00E1DB 03:E1CB: E9 00     SBC #> $0008
C - - - - - 0x00E1DD 03:E1CD: 99 14 06  STA ram_pos_Y_hi_item,Y
C - - - - - 0x00E1E0 03:E1D0: 60        RTS



sub_E1D1:
C - - - - - 0x00E1E1 03:E1D1: B9 13 06  LDA ram_pos_Y_lo_item,Y
C - - - - - 0x00E1E4 03:E1D4: 29 01     AND #$01
C - - - - - 0x00E1E6 03:E1D6: F0 0B     BEQ bra_E1E3
C - - - - - 0x00E1E8 03:E1D8: B9 13 06  LDA ram_pos_Y_lo_item,Y
C - - - - - 0x00E1EB 03:E1DB: 85 1C     STA ram_001C
C - - - - - 0x00E1ED 03:E1DD: 18        CLC
C - - - - - 0x00E1EE 03:E1DE: 69 01     ADC #< $0001
C - - - - - 0x00E1F0 03:E1E0: 4C EB E1  JMP loc_E1EB
bra_E1E3:
C - - - - - 0x00E1F3 03:E1E3: B9 13 06  LDA ram_pos_Y_lo_item,Y
C - - - - - 0x00E1F6 03:E1E6: 85 1C     STA ram_001C
C - - - - - 0x00E1F8 03:E1E8: 18        CLC
C - - - - - 0x00E1F9 03:E1E9: 69 02     ADC #< $0002
loc_E1EB:
C D 3 - - - 0x00E1FB 03:E1EB: 99 13 06  STA ram_pos_Y_lo_item,Y
C - - - - - 0x00E1FE 03:E1EE: B9 14 06  LDA ram_pos_Y_hi_item,Y
C - - - - - 0x00E201 03:E1F1: 85 1D     STA ram_001D
C - - - - - 0x00E203 03:E1F3: 69 00     ADC #$00
C - - - - - 0x00E205 03:E1F5: 99 14 06  STA ram_pos_Y_hi_item,Y
C - - - - - 0x00E208 03:E1F8: 60        RTS



loc_E1F9:
C D 3 - - - 0x00E209 03:E1F9: B9 11 06  LDA ram_pos_X_lo_item,Y
C - - - - - 0x00E20C 03:E1FC: 18        CLC
C - - - - - 0x00E20D 03:E1FD: 69 08     ADC #< $0008
C - - - - - 0x00E20F 03:E1FF: 85 6A     STA ram_006A
C - - - - - 0x00E211 03:E201: B9 12 06  LDA ram_pos_X_hi_item,Y
C - - - - - 0x00E214 03:E204: 69 00     ADC #> $0008
C - - - - - 0x00E216 03:E206: 85 6B     STA ram_006B
C - - - - - 0x00E218 03:E208: B9 13 06  LDA ram_pos_Y_lo_item,Y
C - - - - - 0x00E21B 03:E20B: 18        CLC
C - - - - - 0x00E21C 03:E20C: 69 10     ADC #< $0010
C - - - - - 0x00E21E 03:E20E: 85 6C     STA ram_006C
C - - - - - 0x00E220 03:E210: B9 14 06  LDA ram_pos_Y_hi_item,Y
C - - - - - 0x00E223 03:E213: 69 00     ADC #> $0010
C - - - - - 0x00E225 03:E215: 85 6D     STA ram_006D
C - - - - - 0x00E227 03:E217: 20 5F C3  JSR sub_C35F
C - - - - - 0x00E22A 03:E21A: A5 6E     LDA ram_006E
C - - - - - 0x00E22C 03:E21C: 30 04     BMI bra_E222
C - - - - - 0x00E22E 03:E21E: 20 D1 E1  JSR sub_E1D1
C - - - - - 0x00E231 03:E221: 60        RTS
bra_E222:
C - - - - - 0x00E232 03:E222: B9 15 06  LDA ram_item_id,Y
C - - - - - 0x00E235 03:E225: C9 04     CMP #con_item_id_glove
C - - - - - 0x00E237 03:E227: D0 09     BNE bra_E232_not_glove
C - - - - - 0x00E239 03:E229: B9 10 06  LDA ram_item_state,Y
C - - - - - 0x00E23C 03:E22C: 29 88     AND #(con_item_state_01 + con_item_state_02 + con_item_state_04 + con_item_state_10 + con_item_state_20 + con_item_state_40) ^ $FF
C - - - - - 0x00E23E 03:E22E: 99 10 06  STA ram_item_state,Y
C - - - - - 0x00E241 03:E231: 60        RTS
bra_E232_not_glove:
C - - - - - 0x00E242 03:E232: 20 B2 E1  JSR sub_E1B2
C - - - - - 0x00E245 03:E235: 60        RTS



sub_E236:
C - - - - - 0x00E246 03:E236: AD 00 05  LDA ram_obj_state
C - - - - - 0x00E249 03:E239: 10 04     BPL bra_E23F_RTS    ; if not exists     con_obj_state_exists
C - - - - - 0x00E24B 03:E23B: 29 20     AND #con_obj_state_20
C - - - - - 0x00E24D 03:E23D: F0 01     BEQ bra_E240
bra_E23F_RTS:
C - - - - - 0x00E24F 03:E23F: 60        RTS
bra_E240:
C - - - - - 0x00E250 03:E240: AD 01 05  LDA ram_pos_X_lo_obj
C - - - - - 0x00E253 03:E243: 18        CLC
C - - - - - 0x00E254 03:E244: 69 04     ADC #< $0004
C - - - - - 0x00E256 03:E246: 85 87     STA ram_0087
C - - - - - 0x00E258 03:E248: AD 02 05  LDA ram_pos_X_hi_obj
C - - - - - 0x00E25B 03:E24B: 69 00     ADC #> $0004
C - - - - - 0x00E25D 03:E24D: 85 88     STA ram_0088
C - - - - - 0x00E25F 03:E24F: AD 03 05  LDA ram_pos_Y_lo_obj
C - - - - - 0x00E262 03:E252: 18        CLC
C - - - - - 0x00E263 03:E253: 69 08     ADC #< $0008
C - - - - - 0x00E265 03:E255: 85 89     STA ram_0089
C - - - - - 0x00E267 03:E257: AD 04 05  LDA ram_pos_Y_hi_obj
C - - - - - 0x00E26A 03:E25A: 69 00     ADC #> $0008
C - - - - - 0x00E26C 03:E25C: 85 8A     STA ram_008A
C - - - - - 0x00E26E 03:E25E: A9 08     LDA #$08
C - - - - - 0x00E270 03:E260: 85 8B     STA ram_008B
C - - - - - 0x00E272 03:E262: A9 10     LDA #$10
C - - - - - 0x00E274 03:E264: 85 8C     STA ram_008C
C - - - - - 0x00E276 03:E266: A2 20     LDX #$20
bra_E268_loop:
C - - - - - 0x00E278 03:E268: BD 00 05  LDA ram_obj_state,X
C - - - - - 0x00E27B 03:E26B: 10 07     BPL bra_E274    ; if not exists     con_obj_state_exists
C - - - - - 0x00E27D 03:E26D: 29 20     AND #con_obj_state_20
C - - - - - 0x00E27F 03:E26F: D0 03     BNE bra_E274
C - - - - - 0x00E281 03:E271: 20 7C E2  JSR sub_E27C
bra_E274:
C - - - - - 0x00E284 03:E274: 8A        TXA
C - - - - - 0x00E285 03:E275: 18        CLC
C - - - - - 0x00E286 03:E276: 69 20     ADC #$20
C - - - - - 0x00E288 03:E278: AA        TAX
C - - - - - 0x00E289 03:E279: D0 ED     BNE bra_E268_loop
C - - - - - 0x00E28B 03:E27B: 60        RTS



sub_E27C:
C - - - - - 0x00E28C 03:E27C: 20 FD E3  JSR sub_E3FD
C - - - - - 0x00E28F 03:E27F: 20 1D E4  JSR sub_E41D
C - - - - - 0x00E292 03:E282: D0 01     BNE bra_E285
C - - - - - 0x00E294 03:E284: 60        RTS
bra_E285:
C - - - - - 0x00E295 03:E285: AD 15 05  LDA ram_obj_invinc_timer
C - - - - - 0x00E298 03:E288: D0 15     BNE bra_E29F_invinc_is_on
C - - - - - 0x00E29A 03:E28A: A2 00     LDX #$00
C - - - - - 0x00E29C 03:E28C: AD 12 05  LDA ram_obj_0512
C - - - - - 0x00E29F 03:E28F: 09 01     ORA #$01
C - - - - - 0x00E2A1 03:E291: 8D 12 05  STA ram_obj_0512
C - - - - - 0x00E2A4 03:E294: 20 43 E3  JSR sub_E343
C - - - - - 0x00E2A7 03:E297: A9 0F     LDA #con_sound_player_death
C - - - - - 0x00E2A9 03:E299: 20 A2 F7  JSR sub_F7A2_play_sound
C - - - - - 0x00E2AC 03:E29C: 68        PLA
C - - - - - 0x00E2AD 03:E29D: 68        PLA
C - - - - - 0x00E2AE 03:E29E: 60        RTS
bra_E29F_invinc_is_on:
C - - - - - 0x00E2AF 03:E29F: A9 00     LDA #$00
C - - - - - 0x00E2B1 03:E2A1: 20 AD E2  JSR sub_E2AD
C - - - - - 0x00E2B4 03:E2A4: 20 43 E3  JSR sub_E343
C - - - - - 0x00E2B7 03:E2A7: A9 12     LDA #con_sound_enemy_death
C - - - - - 0x00E2B9 03:E2A9: 20 A2 F7  JSR sub_F7A2_play_sound
C - - - - - 0x00E2BC 03:E2AC: 60        RTS



sub_E2AD:
C - - - - - 0x00E2BD 03:E2AD: 48        PHA
C - - - - - 0x00E2BE 03:E2AE: BD 01 05  LDA ram_pos_X_lo_obj,X
C - - - - - 0x00E2C1 03:E2B1: 85 6A     STA ram_006A
C - - - - - 0x00E2C3 03:E2B3: BD 02 05  LDA ram_pos_X_hi_obj,X
C - - - - - 0x00E2C6 03:E2B6: 85 6B     STA ram_006B
C - - - - - 0x00E2C8 03:E2B8: BD 03 05  LDA ram_pos_Y_lo_obj,X
C - - - - - 0x00E2CB 03:E2BB: 85 6C     STA ram_006C
C - - - - - 0x00E2CD 03:E2BD: BD 04 05  LDA ram_pos_Y_hi_obj,X
C - - - - - 0x00E2D0 03:E2C0: 85 6D     STA ram_006D
C - - - - - 0x00E2D2 03:E2C2: 68        PLA
C - - - - - 0x00E2D3 03:E2C3: 20 20 EA  JSR sub_EA20_stage_complete
C - - - - - 0x00E2D6 03:E2C6: 60        RTS



sub_E2C7:
C - - - - - 0x00E2D7 03:E2C7: A0 00     LDY #$00
bra_E2C9_loop:
C - - - - - 0x00E2D9 03:E2C9: B9 10 06  LDA ram_item_state,Y
C - - - - - 0x00E2DC 03:E2CC: 10 0E     BPL bra_E2DC    ; if not exists     con_item_state_exists
C - - - - - 0x00E2DE 03:E2CE: 29 40     AND #con_item_state_40
C - - - - - 0x00E2E0 03:E2D0: F0 0A     BEQ bra_E2DC
C - - - - - 0x00E2E2 03:E2D2: B9 10 06  LDA ram_item_state,Y
C - - - - - 0x00E2E5 03:E2D5: 29 02     AND #con_item_state_02
C - - - - - 0x00E2E7 03:E2D7: D0 03     BNE bra_E2DC
C - - - - - 0x00E2E9 03:E2D9: 20 E6 E2  JSR sub_E2E6
bra_E2DC:
C - - - - - 0x00E2EC 03:E2DC: 98        TYA
C - - - - - 0x00E2ED 03:E2DD: 18        CLC
C - - - - - 0x00E2EE 03:E2DE: 69 08     ADC #$08
C - - - - - 0x00E2F0 03:E2E0: A8        TAY
C - - - - - 0x00E2F1 03:E2E1: C0 20     CPY #$20
C - - - - - 0x00E2F3 03:E2E3: D0 E4     BNE bra_E2C9_loop
C - - - - - 0x00E2F5 03:E2E5: 60        RTS



sub_E2E6:
C - - - - - 0x00E2F6 03:E2E6: B9 11 06  LDA ram_pos_X_lo_item,Y
C - - - - - 0x00E2F9 03:E2E9: 85 87     STA ram_0087
C - - - - - 0x00E2FB 03:E2EB: B9 12 06  LDA ram_pos_X_hi_item,Y
C - - - - - 0x00E2FE 03:E2EE: 85 88     STA ram_0088
C - - - - - 0x00E300 03:E2F0: B9 13 06  LDA ram_pos_Y_lo_item,Y
C - - - - - 0x00E303 03:E2F3: 85 89     STA ram_0089
C - - - - - 0x00E305 03:E2F5: B9 14 06  LDA ram_pos_Y_hi_item,Y
C - - - - - 0x00E308 03:E2F8: 85 8A     STA ram_008A
C - - - - - 0x00E30A 03:E2FA: A9 10     LDA #$10
C - - - - - 0x00E30C 03:E2FC: 85 8B     STA ram_008B
C - - - - - 0x00E30E 03:E2FE: 85 8C     STA ram_008C
C - - - - - 0x00E310 03:E300: A2 20     LDX #$20    ; skip player, enemies only
bra_E302_loop:
C - - - - - 0x00E312 03:E302: BD 00 05  LDA ram_obj_state,X
C - - - - - 0x00E315 03:E305: 10 2F     BPL bra_E336    ; if not exists     con_obj_state_exists
C - - - - - 0x00E317 03:E307: 29 22     AND #$22
C - - - - - 0x00E319 03:E309: D0 2B     BNE bra_E336
C - - - - - 0x00E31B 03:E30B: 20 FD E3  JSR sub_E3FD
C - - - - - 0x00E31E 03:E30E: 20 1D E4  JSR sub_E41D
C - - - - - 0x00E321 03:E311: F0 23     BEQ bra_E336
C - - - - - 0x00E323 03:E313: B9 15 06  LDA ram_item_id,Y
C - - - - - 0x00E326 03:E316: C9 04     CMP #con_item_id_glove
C - - - - - 0x00E328 03:E318: F0 0E     BEQ bra_E328_it_is_glove
C - - - - - 0x00E32A 03:E31A: A9 02     LDA #$02
C - - - - - 0x00E32C 03:E31C: 20 AD E2  JSR sub_E2AD
C - - - - - 0x00E32F 03:E31F: 20 3E E3  JSR sub_E33E
C - - - - - 0x00E332 03:E322: A9 12     LDA #con_sound_enemy_death
C - - - - - 0x00E334 03:E324: 20 A2 F7  JSR sub_F7A2_play_sound
C - - - - - 0x00E337 03:E327: 60        RTS
bra_E328_it_is_glove:
C - - - - - 0x00E338 03:E328: A9 01     LDA #$01
C - - - - - 0x00E33A 03:E32A: 20 AD E2  JSR sub_E2AD
C - - - - - 0x00E33D 03:E32D: 20 3E E3  JSR sub_E33E
C - - - - - 0x00E340 03:E330: A9 12     LDA #con_sound_enemy_death
C - - - - - 0x00E342 03:E332: 20 A2 F7  JSR sub_F7A2_play_sound
C - - - - - 0x00E345 03:E335: 60        RTS
bra_E336:
C - - - - - 0x00E346 03:E336: 8A        TXA
C - - - - - 0x00E347 03:E337: 18        CLC
C - - - - - 0x00E348 03:E338: 69 20     ADC #$20
C - - - - - 0x00E34A 03:E33A: AA        TAX
C - - - - - 0x00E34B 03:E33B: D0 C5     BNE bra_E302_loop
C - - - - - 0x00E34D 03:E33D: 60        RTS



sub_E33E:
C - - - - - 0x00E34E 03:E33E: A9 00     LDA #con_item_state_null
C - - - - - 0x00E350 03:E340: 99 10 06  STA ram_item_state,Y
sub_E343:
C - - - - - 0x00E353 03:E343: BD 00 05  LDA ram_obj_state,X
C - - - - - 0x00E356 03:E346: 29 08     AND #con_obj_state_08
C - - - - - 0x00E358 03:E348: F0 05     BEQ bra_E34F
C - - - - - 0x00E35A 03:E34A: A9 05     LDA #$05
C - - - - - 0x00E35C 03:E34C: 4C 62 E3  JMP loc_E362
bra_E34F:
C - - - - - 0x00E35F 03:E34F: BD 01 05  LDA ram_pos_X_lo_obj,X
C - - - - - 0x00E362 03:E352: 38        SEC
C - - - - - 0x00E363 03:E353: E9 08     SBC #< $0008
C - - - - - 0x00E365 03:E355: 9D 01 05  STA ram_pos_X_lo_obj,X
C - - - - - 0x00E368 03:E358: BD 02 05  LDA ram_pos_X_hi_obj,X
C - - - - - 0x00E36B 03:E35B: E9 00     SBC #> $0008
C - - - - - 0x00E36D 03:E35D: 9D 02 05  STA ram_pos_X_hi_obj,X
C - - - - - 0x00E370 03:E360: A9 04     LDA #$04
loc_E362:
C D 3 - - - 0x00E372 03:E362: 20 2A D2  JSR sub_D22A
C - - - - - 0x00E375 03:E365: E0 00     CPX #$00
C - - - - - 0x00E377 03:E367: D0 01     BNE bra_E36A_it_is_enemy
C - - - - - 0x00E379 03:E369: 60        RTS
bra_E36A_it_is_enemy:
C - - - - - 0x00E37A 03:E36A: BD 03 05  LDA ram_pos_Y_lo_obj,X
C - - - - - 0x00E37D 03:E36D: 18        CLC
C - - - - - 0x00E37E 03:E36E: 69 08     ADC #< $0008
C - - - - - 0x00E380 03:E370: 9D 03 05  STA ram_pos_Y_lo_obj,X
C - - - - - 0x00E383 03:E373: BD 04 05  LDA ram_pos_Y_hi_obj,X
C - - - - - 0x00E386 03:E376: 69 00     ADC #> $0008
C - - - - - 0x00E388 03:E378: 9D 04 05  STA ram_pos_Y_hi_obj,X
C - - - - - 0x00E38B 03:E37B: 60        RTS



sub_E37C:
C - - - - - 0x00E38C 03:E37C: AD 00 05  LDA ram_obj_state
C - - - - - 0x00E38F 03:E37F: 29 20     AND #con_obj_state_20
C - - - - - 0x00E391 03:E381: F0 01     BEQ bra_E384
C - - - - - 0x00E393 03:E383: 60        RTS
bra_E384:
C - - - - - 0x00E394 03:E384: A0 00     LDY #$00
bra_E386_loop:
C - - - - - 0x00E396 03:E386: B9 10 06  LDA ram_item_state,Y
C - - - - - 0x00E399 03:E389: 10 22     BPL bra_E3AD    ; if not exists
C - - - - - 0x00E39B 03:E38B: 29 40     AND #con_item_state_40
C - - - - - 0x00E39D 03:E38D: D0 1E     BNE bra_E3AD
C - - - - - 0x00E39F 03:E38F: B9 15 06  LDA ram_item_id,Y
C - - - - - 0x00E3A2 03:E392: C9 03     CMP #con_item_id_potion
C - - - - - 0x00E3A4 03:E394: F0 17     BEQ bra_E3AD
C - - - - - 0x00E3A6 03:E396: C9 04     CMP #con_item_id_glove
C - - - - - 0x00E3A8 03:E398: F0 13     BEQ bra_E3AD
C - - - - - 0x00E3AA 03:E39A: C9 06     CMP #con_item_id_sign_00
C - - - - - 0x00E3AC 03:E39C: F0 0F     BEQ bra_E3AD
C - - - - - 0x00E3AE 03:E39E: C9 07     CMP #con_item_id_sign_01
C - - - - - 0x00E3B0 03:E3A0: F0 0B     BEQ bra_E3AD
C - - - - - 0x00E3B2 03:E3A2: C9 08     CMP #con_item_id_sign_02
C - - - - - 0x00E3B4 03:E3A4: F0 07     BEQ bra_E3AD
C - - - - - 0x00E3B6 03:E3A6: C9 09     CMP #con_item_id_sign_03
C - - - - - 0x00E3B8 03:E3A8: F0 03     BEQ bra_E3AD
C - - - - - 0x00E3BA 03:E3AA: 20 B7 E3  JSR sub_E3B7
bra_E3AD:
C - - - - - 0x00E3BD 03:E3AD: 98        TYA
C - - - - - 0x00E3BE 03:E3AE: 18        CLC
C - - - - - 0x00E3BF 03:E3AF: 69 08     ADC #$08
C - - - - - 0x00E3C1 03:E3B1: A8        TAY
C - - - - - 0x00E3C2 03:E3B2: C0 20     CPY #$20
C - - - - - 0x00E3C4 03:E3B4: D0 D0     BNE bra_E386_loop
C - - - - - 0x00E3C6 03:E3B6: 60        RTS



sub_E3B7:
C - - - - - 0x00E3C7 03:E3B7: A2 00     LDX #$00
C - - - - - 0x00E3C9 03:E3B9: 20 FD E3  JSR sub_E3FD
C - - - - - 0x00E3CC 03:E3BC: B9 11 06  LDA ram_pos_X_lo_item,Y
C - - - - - 0x00E3CF 03:E3BF: 18        CLC
C - - - - - 0x00E3D0 03:E3C0: 69 02     ADC #< $0002
C - - - - - 0x00E3D2 03:E3C2: 85 87     STA ram_0087
C - - - - - 0x00E3D4 03:E3C4: B9 12 06  LDA ram_pos_X_hi_item,Y
C - - - - - 0x00E3D7 03:E3C7: 69 00     ADC #> $0002
C - - - - - 0x00E3D9 03:E3C9: 85 88     STA ram_0088
C - - - - - 0x00E3DB 03:E3CB: B9 13 06  LDA ram_pos_Y_lo_item,Y
C - - - - - 0x00E3DE 03:E3CE: 85 89     STA ram_0089
C - - - - - 0x00E3E0 03:E3D0: B9 14 06  LDA ram_pos_Y_hi_item,Y
C - - - - - 0x00E3E3 03:E3D3: 85 8A     STA ram_008A
C - - - - - 0x00E3E5 03:E3D5: A9 0C     LDA #$0C
C - - - - - 0x00E3E7 03:E3D7: 85 8B     STA ram_008B
C - - - - - 0x00E3E9 03:E3D9: A9 10     LDA #$10
C - - - - - 0x00E3EB 03:E3DB: 85 8C     STA ram_008C
C - - - - - 0x00E3ED 03:E3DD: 20 1D E4  JSR sub_E41D
C - - - - - 0x00E3F0 03:E3E0: D0 01     BNE bra_E3E3
C - - - - - 0x00E3F2 03:E3E2: 60        RTS
bra_E3E3:
C - - - - - 0x00E3F3 03:E3E3: AD 00 05  LDA ram_obj_state
C - - - - - 0x00E3F6 03:E3E6: 29 08     AND #con_obj_state_08
C - - - - - 0x00E3F8 03:E3E8: 19 10 06  ORA ram_item_state,Y
C - - - - - 0x00E3FB 03:E3EB: 09 60     ORA #con_item_state_20 + con_item_state_40
C - - - - - 0x00E3FD 03:E3ED: 29 E8     AND #(con_item_state_01 + con_item_state_02 + con_item_state_04 + con_item_state_10) ^ $FF
C - - - - - 0x00E3FF 03:E3EF: 99 10 06  STA ram_item_state,Y
C - - - - - 0x00E402 03:E3F2: A9 00     LDA #$00
C - - - - - 0x00E404 03:E3F4: 99 16 06  STA ram_item_move_timer,Y
C - - - - - 0x00E407 03:E3F7: A9 11     LDA #con_sound_push_item
C - - - - - 0x00E409 03:E3F9: 20 A2 F7  JSR sub_F7A2_play_sound
C - - - - - 0x00E40C 03:E3FC: 60        RTS



sub_E3FD:
C - - - - - 0x00E40D 03:E3FD: BD 01 05  LDA ram_pos_X_lo_obj,X
C - - - - - 0x00E410 03:E400: 85 81     STA ram_0081
C - - - - - 0x00E412 03:E402: BD 02 05  LDA ram_pos_X_hi_obj,X
C - - - - - 0x00E415 03:E405: 85 82     STA ram_0082
C - - - - - 0x00E417 03:E407: BD 03 05  LDA ram_pos_Y_lo_obj,X
C - - - - - 0x00E41A 03:E40A: 18        CLC
C - - - - - 0x00E41B 03:E40B: 69 08     ADC #< $0008
C - - - - - 0x00E41D 03:E40D: 85 83     STA ram_0083
C - - - - - 0x00E41F 03:E40F: BD 04 05  LDA ram_pos_Y_hi_obj,X
C - - - - - 0x00E422 03:E412: 69 00     ADC #> $0008
C - - - - - 0x00E424 03:E414: 85 84     STA ram_0084
C - - - - - 0x00E426 03:E416: A9 10     LDA #$10
C - - - - - 0x00E428 03:E418: 85 85     STA ram_0085
C - - - - - 0x00E42A 03:E41A: 85 86     STA ram_0086
C - - - - - 0x00E42C 03:E41C: 60        RTS



sub_E41D:
C - - - - - 0x00E42D 03:E41D: A5 81     LDA ram_0081
C - - - - - 0x00E42F 03:E41F: 18        CLC
C - - - - - 0x00E430 03:E420: 65 85     ADC ram_0085
C - - - - - 0x00E432 03:E422: 85 8D     STA ram_008D
C - - - - - 0x00E434 03:E424: A5 82     LDA ram_0082
C - - - - - 0x00E436 03:E426: 69 00     ADC #$00
C - - - - - 0x00E438 03:E428: 85 8E     STA ram_008E
C - - - - - 0x00E43A 03:E42A: A5 83     LDA ram_0083
C - - - - - 0x00E43C 03:E42C: 18        CLC
C - - - - - 0x00E43D 03:E42D: 65 86     ADC ram_0086
C - - - - - 0x00E43F 03:E42F: 85 8F     STA ram_008F
C - - - - - 0x00E441 03:E431: A5 84     LDA ram_0084
C - - - - - 0x00E443 03:E433: 69 00     ADC #$00
C - - - - - 0x00E445 03:E435: 85 90     STA ram_0090
C - - - - - 0x00E447 03:E437: A5 87     LDA ram_0087
C - - - - - 0x00E449 03:E439: 18        CLC
C - - - - - 0x00E44A 03:E43A: 65 8B     ADC ram_008B
C - - - - - 0x00E44C 03:E43C: 85 91     STA ram_0091
C - - - - - 0x00E44E 03:E43E: A5 88     LDA ram_0088
C - - - - - 0x00E450 03:E440: 69 00     ADC #$00
C - - - - - 0x00E452 03:E442: 85 92     STA ram_0092
C - - - - - 0x00E454 03:E444: A5 89     LDA ram_0089
C - - - - - 0x00E456 03:E446: 18        CLC
C - - - - - 0x00E457 03:E447: 65 8C     ADC ram_008C
C - - - - - 0x00E459 03:E449: 85 93     STA ram_0093
C - - - - - 0x00E45B 03:E44B: A5 8A     LDA ram_008A
C - - - - - 0x00E45D 03:E44D: 69 00     ADC #$00
C - - - - - 0x00E45F 03:E44F: 85 94     STA ram_0094
C - - - - - 0x00E461 03:E451: A5 81     LDA ram_0081
C - - - - - 0x00E463 03:E453: 38        SEC
C - - - - - 0x00E464 03:E454: E5 91     SBC ram_0091
C - - - - - 0x00E466 03:E456: A5 82     LDA ram_0082
C - - - - - 0x00E468 03:E458: E5 92     SBC ram_0092
C - - - - - 0x00E46A 03:E45A: 90 03     BCC bra_E45F
C - - - - - 0x00E46C 03:E45C: A9 00     LDA #$00
C - - - - - 0x00E46E 03:E45E: 60        RTS
bra_E45F:
C - - - - - 0x00E46F 03:E45F: A5 8D     LDA ram_008D
C - - - - - 0x00E471 03:E461: 38        SEC
C - - - - - 0x00E472 03:E462: E5 87     SBC ram_0087
C - - - - - 0x00E474 03:E464: A5 8E     LDA ram_008E
C - - - - - 0x00E476 03:E466: E5 88     SBC ram_0088
C - - - - - 0x00E478 03:E468: B0 03     BCS bra_E46D
C - - - - - 0x00E47A 03:E46A: A9 00     LDA #$00
C - - - - - 0x00E47C 03:E46C: 60        RTS
bra_E46D:
C - - - - - 0x00E47D 03:E46D: A5 83     LDA ram_0083
C - - - - - 0x00E47F 03:E46F: 38        SEC
C - - - - - 0x00E480 03:E470: E5 93     SBC ram_0093
C - - - - - 0x00E482 03:E472: A5 84     LDA ram_0084
C - - - - - 0x00E484 03:E474: E5 94     SBC ram_0094
C - - - - - 0x00E486 03:E476: 90 03     BCC bra_E47B
C - - - - - 0x00E488 03:E478: A9 00     LDA #$00
C - - - - - 0x00E48A 03:E47A: 60        RTS
bra_E47B:
C - - - - - 0x00E48B 03:E47B: A5 8F     LDA ram_008F
C - - - - - 0x00E48D 03:E47D: 38        SEC
C - - - - - 0x00E48E 03:E47E: E5 89     SBC ram_0089
C - - - - - 0x00E490 03:E480: A5 90     LDA ram_0090
C - - - - - 0x00E492 03:E482: E5 8A     SBC ram_008A
C - - - - - 0x00E494 03:E484: B0 03     BCS bra_E489
C - - - - - 0x00E496 03:E486: A9 00     LDA #$00
C - - - - - 0x00E498 03:E488: 60        RTS
bra_E489:
C - - - - - 0x00E499 03:E489: A9 FF     LDA #$FF
C - - - - - 0x00E49B 03:E48B: 60        RTS



sub_E48C:
C - - - - - 0x00E49C 03:E48C: AD 00 05  LDA ram_obj_state
C - - - - - 0x00E49F 03:E48F: 29 20     AND #con_obj_state_20
C - - - - - 0x00E4A1 03:E491: F0 01     BEQ bra_E494
C - - - - - 0x00E4A3 03:E493: 60        RTS
bra_E494:
C - - - - - 0x00E4A4 03:E494: A5 F5     LDA ram_btn_press
C - - - - - 0x00E4A6 03:E496: 29 C0     AND #con_btns_AB
C - - - - - 0x00E4A8 03:E498: D0 01     BNE bra_E49B
C - - - - - 0x00E4AA 03:E49A: 60        RTS
bra_E49B:
C - - - - - 0x00E4AB 03:E49B: A0 00     LDY #$00
bra_E49D_loop:
C - - - - - 0x00E4AD 03:E49D: B9 10 06  LDA ram_item_state,Y
C - - - - - 0x00E4B0 03:E4A0: 10 0E     BPL bra_E4B0    ; if not exists     con_item_state_exists
C - - - - - 0x00E4B2 03:E4A2: 29 04     AND #con_item_state_04
C - - - - - 0x00E4B4 03:E4A4: F0 0A     BEQ bra_E4B0
C - - - - - 0x00E4B6 03:E4A6: B9 15 06  LDA ram_item_id,Y
C - - - - - 0x00E4B9 03:E4A9: C9 04     CMP #con_item_id_glove
C - - - - - 0x00E4BB 03:E4AB: D0 03     BNE bra_E4B0    ; if not glove
C - - - - - 0x00E4BD 03:E4AD: 4C BA E4  JMP loc_E4BA
bra_E4B0:
C - - - - - 0x00E4C0 03:E4B0: 98        TYA
C - - - - - 0x00E4C1 03:E4B1: 18        CLC
C - - - - - 0x00E4C2 03:E4B2: 69 08     ADC #$08
C - - - - - 0x00E4C4 03:E4B4: A8        TAY
C - - - - - 0x00E4C5 03:E4B5: C0 20     CPY #$20
C - - - - - 0x00E4C7 03:E4B7: D0 E4     BNE bra_E49D_loop
C - - - - - 0x00E4C9 03:E4B9: 60        RTS



loc_E4BA:
C D 3 - - - 0x00E4CA 03:E4BA: AD 00 05  LDA ram_obj_state
C - - - - - 0x00E4CD 03:E4BD: 29 08     AND #con_obj_state_08
C - - - - - 0x00E4CF 03:E4BF: 4A        LSR
C - - - - - 0x00E4D0 03:E4C0: 4A        LSR
C - - - - - 0x00E4D1 03:E4C1: 4A        LSR
C - - - - - 0x00E4D2 03:E4C2: AA        TAX
C - - - - - 0x00E4D3 03:E4C3: BD 40 E5  LDA tbl_E540_lo,X
C - - - - - 0x00E4D6 03:E4C6: 18        CLC
C - - - - - 0x00E4D7 03:E4C7: 6D 01 05  ADC ram_pos_X_lo_obj
C - - - - - 0x00E4DA 03:E4CA: 85 6A     STA ram_006A
C - - - - - 0x00E4DC 03:E4CC: AD 02 05  LDA ram_pos_X_hi_obj
C - - - - - 0x00E4DF 03:E4CF: 69 00     ADC #$00
C - - - - - 0x00E4E1 03:E4D1: 85 6B     STA ram_006B
C - - - - - 0x00E4E3 03:E4D3: A5 6A     LDA ram_006A
C - - - - - 0x00E4E5 03:E4D5: 38        SEC
C - - - - - 0x00E4E6 03:E4D6: E9 10     SBC #< $0010
C - - - - - 0x00E4E8 03:E4D8: 85 6A     STA ram_006A
C - - - - - 0x00E4EA 03:E4DA: A5 6B     LDA ram_006B
C - - - - - 0x00E4EC 03:E4DC: E9 00     SBC #> $0010
C - - - - - 0x00E4EE 03:E4DE: 85 6B     STA ram_006B
C - - - - - 0x00E4F0 03:E4E0: AD 03 05  LDA ram_pos_Y_lo_obj
C - - - - - 0x00E4F3 03:E4E3: 18        CLC
C - - - - - 0x00E4F4 03:E4E4: 69 08     ADC #< $0008
C - - - - - 0x00E4F6 03:E4E6: 85 6C     STA ram_006C
C - - - - - 0x00E4F8 03:E4E8: AD 04 05  LDA ram_pos_Y_hi_obj
C - - - - - 0x00E4FB 03:E4EB: 69 00     ADC #> $0008
C - - - - - 0x00E4FD 03:E4ED: 85 6D     STA ram_006D
C - - - - - 0x00E4FF 03:E4EF: 20 5F C3  JSR sub_C35F
C - - - - - 0x00E502 03:E4F2: A5 6E     LDA ram_006E
C - - - - - 0x00E504 03:E4F4: 30 49     BMI bra_E53F_RTS
C - - - - - 0x00E506 03:E4F6: AD 00 05  LDA ram_obj_state
C - - - - - 0x00E509 03:E4F9: 29 08     AND #con_obj_state_08
C - - - - - 0x00E50B 03:E4FB: 4A        LSR
C - - - - - 0x00E50C 03:E4FC: 4A        LSR
C - - - - - 0x00E50D 03:E4FD: 4A        LSR
C - - - - - 0x00E50E 03:E4FE: AA        TAX
C - - - - - 0x00E50F 03:E4FF: BD 42 E5  LDA tbl_E542_lo,X
C - - - - - 0x00E512 03:E502: 18        CLC
C - - - - - 0x00E513 03:E503: 6D 01 05  ADC ram_pos_X_lo_obj
C - - - - - 0x00E516 03:E506: 99 11 06  STA ram_pos_X_lo_item,Y
C - - - - - 0x00E519 03:E509: AD 02 05  LDA ram_pos_X_hi_obj
C - - - - - 0x00E51C 03:E50C: 69 00     ADC #$00
C - - - - - 0x00E51E 03:E50E: 99 12 06  STA ram_pos_X_hi_item,Y
C - - - - - 0x00E521 03:E511: AD 03 05  LDA ram_pos_Y_lo_obj
C - - - - - 0x00E524 03:E514: 18        CLC
C - - - - - 0x00E525 03:E515: 69 08     ADC #< $0008
C - - - - - 0x00E527 03:E517: 99 13 06  STA ram_pos_Y_lo_item,Y
C - - - - - 0x00E52A 03:E51A: AD 04 05  LDA ram_pos_Y_hi_obj
C - - - - - 0x00E52D 03:E51D: 69 00     ADC #> $0008
C - - - - - 0x00E52F 03:E51F: 99 14 06  STA ram_pos_Y_hi_item,Y
C - - - - - 0x00E532 03:E522: A9 00     LDA #$00
C - - - - - 0x00E534 03:E524: 99 16 06  STA ram_item_move_timer,Y
C - - - - - 0x00E537 03:E527: 99 17 06  STA ram_item_destr_timer,Y
C - - - - - 0x00E53A 03:E52A: A9 E0     LDA #con_item_state_20 + con_item_state_40 + con_item_state_exists
C - - - - - 0x00E53C 03:E52C: 99 10 06  STA ram_item_state,Y
C - - - - - 0x00E53F 03:E52F: AD 00 05  LDA ram_obj_state
C - - - - - 0x00E542 03:E532: 29 08     AND #con_obj_state_08
C - - - - - 0x00E544 03:E534: 19 10 06  ORA ram_item_state,Y
C - - - - - 0x00E547 03:E537: 99 10 06  STA ram_item_state,Y
C - - - - - 0x00E54A 03:E53A: A9 17     LDA #con_sound_throw_glove
C - - - - - 0x00E54C 03:E53C: 20 A2 F7  JSR sub_F7A2_play_sound
bra_E53F_RTS:
C - - - - - 0x00E54F 03:E53F: 60        RTS



tbl_E540_lo:
- D 3 - - - 0x00E550 03:E540: 20        .byte < $0020   ; 00 
- D 3 - - - 0x00E551 03:E541: 00        .byte < $0000   ; 01 



tbl_E542_lo:
- D 3 - - - 0x00E552 03:E542: 0C        .byte < $000C   ; 00 
- D 3 - - - 0x00E553 03:E543: 04        .byte < $0004   ; 01  



sub_E544:
C - - - - - 0x00E554 03:E544: 20 CA E6  JSR sub_E6CA
C - - - - - 0x00E557 03:E547: 20 4B E5  JSR sub_E54B
C - - - - - 0x00E55A 03:E54A: 60        RTS



sub_E54B:
C - - - - - 0x00E55B 03:E54B: A2 00     LDX #$00
bra_E54D_loop:
C - - - - - 0x00E55D 03:E54D: BD 00 05  LDA ram_obj_state,X
C - - - - - 0x00E560 03:E550: 10 0A     BPL bra_E55C    ; if not exists     con_obj_state_exists
C - - - - - 0x00E562 03:E552: BD 12 05  LDA ram_obj_0512,X
C - - - - - 0x00E565 03:E555: 29 08     AND #$08
C - - - - - 0x00E567 03:E557: F0 03     BEQ bra_E55C
C - - - - - 0x00E569 03:E559: 20 64 E5  JSR sub_E564
bra_E55C:
C - - - - - 0x00E56C 03:E55C: 8A        TXA
C - - - - - 0x00E56D 03:E55D: 18        CLC
C - - - - - 0x00E56E 03:E55E: 69 20     ADC #$20
C - - - - - 0x00E570 03:E560: AA        TAX
C - - - - - 0x00E571 03:E561: D0 EA     BNE bra_E54D_loop
C - - - - - 0x00E573 03:E563: 60        RTS



sub_E564:
C - - - - - 0x00E574 03:E564: 20 BC E6  JSR sub_E6BC
C - - - - - 0x00E577 03:E567: FE 0E 05  INC ram_obj_050E,X
C - - - - - 0x00E57A 03:E56A: BD 0E 05  LDA ram_obj_050E,X
C - - - - - 0x00E57D 03:E56D: C9 10     CMP #$10
C - - - - - 0x00E57F 03:E56F: F0 01     BEQ bra_E572
C - - - - - 0x00E581 03:E571: 60        RTS
bra_E572:
C - - - - - 0x00E582 03:E572: A9 00     LDA #$00
C - - - - - 0x00E584 03:E574: 9D 0E 05  STA ram_obj_050E,X
C - - - - - 0x00E587 03:E577: BD 01 05  LDA ram_pos_X_lo_obj,X
C - - - - - 0x00E58A 03:E57A: 85 6A     STA ram_006A
C - - - - - 0x00E58C 03:E57C: BD 02 05  LDA ram_pos_X_hi_obj,X
C - - - - - 0x00E58F 03:E57F: 85 6B     STA ram_006B
C - - - - - 0x00E591 03:E581: BD 03 05  LDA ram_pos_Y_lo_obj,X
C - - - - - 0x00E594 03:E584: 85 6C     STA ram_006C
C - - - - - 0x00E596 03:E586: BD 04 05  LDA ram_pos_Y_hi_obj,X
C - - - - - 0x00E599 03:E589: 85 6D     STA ram_006D
C - - - - - 0x00E59B 03:E58B: 20 5F C3  JSR sub_C35F
C - - - - - 0x00E59E 03:E58E: BD 12 05  LDA ram_obj_0512,X
C - - - - - 0x00E5A1 03:E591: 29 F9     AND #$F9
C - - - - - 0x00E5A3 03:E593: 9D 12 05  STA ram_obj_0512,X
C - - - - - 0x00E5A6 03:E596: A5 6E     LDA ram_006E
C - - - - - 0x00E5A8 03:E598: 9D 17 05  STA ram_obj_0517,X
C - - - - - 0x00E5AB 03:E59B: 29 0F     AND #$0F
C - - - - - 0x00E5AD 03:E59D: A8        TAY
C - - - - - 0x00E5AE 03:E59E: B9 AC E6  LDA tbl_E6AC,Y
C - - - - - 0x00E5B1 03:E5A1: C9 06     CMP #$06
C - - - - - 0x00E5B3 03:E5A3: D0 03     BNE bra_E5A8
C - - - - - 0x00E5B5 03:E5A5: 4C 67 E6  JMP loc_E667
bra_E5A8:
C - - - - - 0x00E5B8 03:E5A8: C9 07     CMP #$07
C - - - - - 0x00E5BA 03:E5AA: D0 03     BNE bra_E5AF
C - - - - - 0x00E5BC 03:E5AC: 4C 75 E6  JMP loc_E675
bra_E5AF:
C - - - - - 0x00E5BF 03:E5AF: C9 08     CMP #$08
C - - - - - 0x00E5C1 03:E5B1: D0 01     BNE bra_E5B4
C - - - - - 0x00E5C3 03:E5B3: 60        RTS
bra_E5B4:
C - - - - - 0x00E5C4 03:E5B4: 0A        ASL
C - - - - - 0x00E5C5 03:E5B5: 0A        ASL
C - - - - - 0x00E5C6 03:E5B6: 1D 16 05  ORA ram_obj_0516,X
C - - - - - 0x00E5C9 03:E5B9: A8        TAY
C - - - - - 0x00E5CA 03:E5BA: B9 94 E6  LDA tbl_E694,Y
C - - - - - 0x00E5CD 03:E5BD: 9D 16 05  STA ram_obj_0516,X
C - - - - - 0x00E5D0 03:E5C0: 20 78 EF  JSR sub_EF78_jump_to_pointers_after_jsr
- D 3 - I - 0x00E5D3 03:E5C3: CB E5     .word ofs_005_E5CB_00
- D 3 - I - 0x00E5D5 03:E5C5: 4D E6     .word ofs_005_E64D_01
- D 3 - I - 0x00E5D7 03:E5C7: FF E5     .word ofs_005_E5FF_02
- D 3 - I - 0x00E5D9 03:E5C9: 19 E6     .word ofs_005_E619_03



ofs_005_E5CB_00:
C - - J - - 0x00E5DB 03:E5CB: BD 17 05  LDA ram_obj_0517,X
C - - - - - 0x00E5DE 03:E5CE: C9 03     CMP #$03
C - - - - - 0x00E5E0 03:E5D0: F0 01     BEQ bra_E5D3
C - - - - - 0x00E5E2 03:E5D2: 60        RTS
bra_E5D3:
C - - - - - 0x00E5E3 03:E5D3: BD 01 05  LDA ram_pos_X_lo_obj,X
C - - - - - 0x00E5E6 03:E5D6: 18        CLC
C - - - - - 0x00E5E7 03:E5D7: 69 10     ADC #< $0010
C - - - - - 0x00E5E9 03:E5D9: 85 6A     STA ram_006A
C - - - - - 0x00E5EB 03:E5DB: BD 02 05  LDA ram_pos_X_hi_obj,X
C - - - - - 0x00E5EE 03:E5DE: 69 00     ADC #> $0010
C - - - - - 0x00E5F0 03:E5E0: 85 6B     STA ram_006B
loc_E5E2:
C D 3 - - - 0x00E5F2 03:E5E2: BD 03 05  LDA ram_pos_Y_lo_obj,X
C - - - - - 0x00E5F5 03:E5E5: 85 6C     STA ram_006C
C - - - - - 0x00E5F7 03:E5E7: BD 04 05  LDA ram_pos_Y_hi_obj,X
C - - - - - 0x00E5FA 03:E5EA: 85 6D     STA ram_006D
C - - - - - 0x00E5FC 03:E5EC: 20 5F C3  JSR sub_C35F
C - - - - - 0x00E5FF 03:E5EF: A5 6E     LDA ram_006E
C - - - - - 0x00E601 03:E5F1: C9 03     CMP #$03
C - - - - - 0x00E603 03:E5F3: F0 01     BEQ bra_E5F6
C - - - - - 0x00E605 03:E5F5: 60        RTS
bra_E5F6:
C - - - - - 0x00E606 03:E5F6: BD 12 05  LDA ram_obj_0512,X
C - - - - - 0x00E609 03:E5F9: 09 04     ORA #$04
C - - - - - 0x00E60B 03:E5FB: 9D 12 05  STA ram_obj_0512,X
C - - - - - 0x00E60E 03:E5FE: 60        RTS



ofs_005_E5FF_02:
C - - J - - 0x00E60F 03:E5FF: BD 17 05  LDA ram_obj_0517,X
C - - - - - 0x00E612 03:E602: C9 03     CMP #$03
C - - - - - 0x00E614 03:E604: F0 01     BEQ bra_E607
C - - - - - 0x00E616 03:E606: 60        RTS
bra_E607:
C - - - - - 0x00E617 03:E607: BD 01 05  LDA ram_pos_X_lo_obj,X
C - - - - - 0x00E61A 03:E60A: 38        SEC
C - - - - - 0x00E61B 03:E60B: E9 10     SBC #< $0010
C - - - - - 0x00E61D 03:E60D: 85 6A     STA ram_006A
C - - - - - 0x00E61F 03:E60F: BD 02 05  LDA ram_pos_X_hi_obj,X
C - - - - - 0x00E622 03:E612: E9 00     SBC #> $0010
C - - - - - 0x00E624 03:E614: 85 6B     STA ram_006B
C - - - - - 0x00E626 03:E616: 4C E2 E5  JMP loc_E5E2



ofs_005_E619_03:
C - - J - - 0x00E629 03:E619: BD 17 05  LDA ram_obj_0517,X
C - - - - - 0x00E62C 03:E61C: C9 04     CMP #$04
C - - - - - 0x00E62E 03:E61E: F0 01     BEQ bra_E621
C - - - - - 0x00E630 03:E620: 60        RTS
bra_E621:
C - - - - - 0x00E631 03:E621: BD 03 05  LDA ram_pos_Y_lo_obj,X
C - - - - - 0x00E634 03:E624: 18        CLC
C - - - - - 0x00E635 03:E625: 69 10     ADC #< $0010
C - - - - - 0x00E637 03:E627: 85 6C     STA ram_006C
C - - - - - 0x00E639 03:E629: BD 04 05  LDA ram_pos_Y_hi_obj,X
C - - - - - 0x00E63C 03:E62C: 69 00     ADC #> $0010
C - - - - - 0x00E63E 03:E62E: 85 6D     STA ram_006D
loc_E630:
C D 3 - - - 0x00E640 03:E630: BD 01 05  LDA ram_pos_X_lo_obj,X
C - - - - - 0x00E643 03:E633: 85 6A     STA ram_006A
C - - - - - 0x00E645 03:E635: BD 02 05  LDA ram_pos_X_hi_obj,X
C - - - - - 0x00E648 03:E638: 85 6B     STA ram_006B
C - - - - - 0x00E64A 03:E63A: 20 5F C3  JSR sub_C35F
C - - - - - 0x00E64D 03:E63D: A5 6E     LDA ram_006E
C - - - - - 0x00E64F 03:E63F: C9 04     CMP #$04
C - - - - - 0x00E651 03:E641: F0 01     BEQ bra_E644
C - - - - - 0x00E653 03:E643: 60        RTS
bra_E644:
C - - - - - 0x00E654 03:E644: BD 12 05  LDA ram_obj_0512,X
C - - - - - 0x00E657 03:E647: 09 02     ORA #$02
C - - - - - 0x00E659 03:E649: 9D 12 05  STA ram_obj_0512,X
C - - - - - 0x00E65C 03:E64C: 60        RTS



ofs_005_E64D_01:
C - - J - - 0x00E65D 03:E64D: BD 17 05  LDA ram_obj_0517,X
C - - - - - 0x00E660 03:E650: C9 04     CMP #$04
C - - - - - 0x00E662 03:E652: F0 01     BEQ bra_E655
C - - - - - 0x00E664 03:E654: 60        RTS
bra_E655:
C - - - - - 0x00E665 03:E655: BD 03 05  LDA ram_pos_Y_lo_obj,X
C - - - - - 0x00E668 03:E658: 38        SEC
C - - - - - 0x00E669 03:E659: E9 10     SBC #< $0010
C - - - - - 0x00E66B 03:E65B: 85 6C     STA ram_006C
C - - - - - 0x00E66D 03:E65D: BD 04 05  LDA ram_pos_Y_hi_obj,X
C - - - - - 0x00E670 03:E660: E9 00     SBC #> $0010
C - - - - - 0x00E672 03:E662: 85 6D     STA ram_006D
C - - - - - 0x00E674 03:E664: 4C 30 E6  JMP loc_E630



loc_E667:
C D 3 - - - 0x00E677 03:E667: BD 12 05  LDA ram_obj_0512,X
C - - - - - 0x00E67A 03:E66A: 29 F1     AND #$F1
C - - - - - 0x00E67C 03:E66C: 9D 12 05  STA ram_obj_0512,X
C - - - - - 0x00E67F 03:E66F: A9 08     LDA #$08
C - - - - - 0x00E681 03:E671: 20 2A D2  JSR sub_D22A
C - - - - - 0x00E684 03:E674: 60        RTS



loc_E675:
C D 3 - - - 0x00E685 03:E675: BD 03 05  LDA ram_pos_Y_lo_obj,X
C - - - - - 0x00E688 03:E678: 38        SEC
C - - - - - 0x00E689 03:E679: E9 10     SBC #< $0010
C - - - - - 0x00E68B 03:E67B: 9D 03 05  STA ram_pos_Y_lo_obj,X
C - - - - - 0x00E68E 03:E67E: BD 04 05  LDA ram_pos_Y_hi_obj,X
C - - - - - 0x00E691 03:E681: E9 00     SBC #> $0010
C - - - - - 0x00E693 03:E683: 9D 04 05  STA ram_pos_Y_hi_obj,X
C - - - - - 0x00E696 03:E686: BD 12 05  LDA ram_obj_0512,X
C - - - - - 0x00E699 03:E689: 29 F1     AND #$F1
C - - - - - 0x00E69B 03:E68B: 9D 12 05  STA ram_obj_0512,X
C - - - - - 0x00E69E 03:E68E: A9 09     LDA #$09
C - - - - - 0x00E6A0 03:E690: 20 2A D2  JSR sub_D22A
C - - - - - 0x00E6A3 03:E693: 60        RTS



tbl_E694:
; 00
- D 3 - - - 0x00E6A4 03:E694: 00        .byte $00   ; 
- - - - - - 0x00E6A5 03:E695: 00        .byte $00   ; 
- D 3 - - - 0x00E6A6 03:E696: 02        .byte $02   ; 
- - - - - - 0x00E6A7 03:E697: 02        .byte $02   ; 
; 01
- - - - - - 0x00E6A8 03:E698: 01        .byte $01   ; 
- D 3 - - - 0x00E6A9 03:E699: 01        .byte $01   ; 
- - - - - - 0x00E6AA 03:E69A: 03        .byte $03   ; 
- D 3 - - - 0x00E6AB 03:E69B: 03        .byte $03   ; 
; 02
- - - - - - 0x00E6AC 03:E69C: 03        .byte $03   ; 
- D 3 - - - 0x00E6AD 03:E69D: 00        .byte $00   ; 
- D 3 - - - 0x00E6AE 03:E69E: 03        .byte $03   ; 
- - - - - - 0x00E6AF 03:E69F: 00        .byte $00   ; 
; 03
- D 3 - - - 0x00E6B0 03:E6A0: 03        .byte $03   ; 
- D 3 - - - 0x00E6B1 03:E6A1: 02        .byte $02   ; 
- - - - - - 0x00E6B2 03:E6A2: 03        .byte $03   ; 
- - - - - - 0x00E6B3 03:E6A3: 02        .byte $02   ; 
; 04
- - - - - - 0x00E6B4 03:E6A4: 01        .byte $01   ; 
- - - - - - 0x00E6B5 03:E6A5: 00        .byte $00   ; 
- D 3 - - - 0x00E6B6 03:E6A6: 01        .byte $01   ; 
- D 3 - - - 0x00E6B7 03:E6A7: 00        .byte $00   ; 
; 05
- D 3 - - - 0x00E6B8 03:E6A8: 01        .byte $01   ; 
- - - - - - 0x00E6B9 03:E6A9: 02        .byte $02   ; 
- - - - - - 0x00E6BA 03:E6AA: 01        .byte $01   ; 
- D 3 - - - 0x00E6BB 03:E6AB: 02        .byte $02   ; 



tbl_E6AC:
- - - - - - 0x00E6BC 03:E6AC: 00        .byte $00   ; 00 
- - - - - - 0x00E6BD 03:E6AD: 00        .byte $00   ; 01 
- - - - - - 0x00E6BE 03:E6AE: 00        .byte $00   ; 02 
- D 3 - - - 0x00E6BF 03:E6AF: 00        .byte $00   ; 03 
- D 3 - - - 0x00E6C0 03:E6B0: 01        .byte $01   ; 04 
- D 3 - - - 0x00E6C1 03:E6B1: 02        .byte $02   ; 05 
- D 3 - - - 0x00E6C2 03:E6B2: 03        .byte $03   ; 06 
- D 3 - - - 0x00E6C3 03:E6B3: 04        .byte $04   ; 07 
- D 3 - - - 0x00E6C4 03:E6B4: 05        .byte $05   ; 08 
- D 3 - - - 0x00E6C5 03:E6B5: 06        .byte $06   ; 09 
- D 3 - - - 0x00E6C6 03:E6B6: 07        .byte $07   ; 0A 
- D 3 - - - 0x00E6C7 03:E6B7: 08        .byte $08   ; 0B 
- - - - - - 0x00E6C8 03:E6B8: 00        .byte $00   ; 0C 
- - - - - - 0x00E6C9 03:E6B9: 00        .byte $00   ; 0D 
- - - - - - 0x00E6CA 03:E6BA: 00        .byte $00   ; 0E 
- - - - - - 0x00E6CB 03:E6BB: 00        .byte $00   ; 0F 



sub_E6BC:
C - - - - - 0x00E6CC 03:E6BC: BD 16 05  LDA ram_obj_0516,X
C - - - - - 0x00E6CF 03:E6BF: 20 78 EF  JSR sub_EF78_jump_to_pointers_after_jsr
- D 3 - I - 0x00E6D2 03:E6C2: 89 D2     .word ofs_006_D289_00_move_obj_1_pixel_right
- D 3 - I - 0x00E6D4 03:E6C4: 53 D2     .word ofs_006_D253_01_move_obj_1_pixel_down
- D 3 - I - 0x00E6D6 03:E6C6: 77 D2     .word ofs_006_D277_02_move_obj_1_pixel_left
- D 3 - I - 0x00E6D8 03:E6C8: 65 D2     .word ofs_006_D265_03_move_obj_1_pixel_up



sub_E6CA:
C - - - - - 0x00E6DA 03:E6CA: A2 00     LDX #$00
bra_E6CC_loop:
C - - - - - 0x00E6DC 03:E6CC: A9 00     LDA #$00
C - - - - - 0x00E6DE 03:E6CE: 85 96     STA ram_0096
C - - - - - 0x00E6E0 03:E6D0: BD 00 05  LDA ram_obj_state,X
C - - - - - 0x00E6E3 03:E6D3: 10 2B     BPL bra_E700    ; if not exists     con_obj_state_exists
C - - - - - 0x00E6E5 03:E6D5: 29 22     AND #con_obj_state_02 + con_obj_state_20
C - - - - - 0x00E6E7 03:E6D7: D0 27     BNE bra_E700
C - - - - - 0x00E6E9 03:E6D9: BD 01 05  LDA ram_pos_X_lo_obj,X
C - - - - - 0x00E6EC 03:E6DC: 29 0F     AND #$0F
C - - - - - 0x00E6EE 03:E6DE: F0 14     BEQ bra_E6F4
C - - - - - 0x00E6F0 03:E6E0: BD 00 05  LDA ram_obj_state,X
C - - - - - 0x00E6F3 03:E6E3: 29 08     AND #con_obj_state_08
C - - - - - 0x00E6F5 03:E6E5: D0 19     BNE bra_E700
C - - - - - 0x00E6F7 03:E6E7: BD 01 05  LDA ram_pos_X_lo_obj,X
C - - - - - 0x00E6FA 03:E6EA: 29 0F     AND #$0F
C - - - - - 0x00E6FC 03:E6EC: C9 0F     CMP #$0F
C - - - - - 0x00E6FE 03:E6EE: D0 10     BNE bra_E700
C - - - - - 0x00E700 03:E6F0: A9 01     LDA #$01
C - - - - - 0x00E702 03:E6F2: 85 96     STA ram_0096
bra_E6F4:
C - - - - - 0x00E704 03:E6F4: BD 09 05  LDA ram_obj_0509,X
C - - - - - 0x00E707 03:E6F7: F0 04     BEQ bra_E6FD
C - - - - - 0x00E709 03:E6F9: C9 01     CMP #$01
C - - - - - 0x00E70B 03:E6FB: D0 03     BNE bra_E700
bra_E6FD:
C - - - - - 0x00E70D 03:E6FD: 20 08 E7  JSR sub_E708
bra_E700:
C - - - - - 0x00E710 03:E700: 8A        TXA
C - - - - - 0x00E711 03:E701: 18        CLC
C - - - - - 0x00E712 03:E702: 69 20     ADC #$20
C - - - - - 0x00E714 03:E704: AA        TAX
C - - - - - 0x00E715 03:E705: D0 C5     BNE bra_E6CC_loop
C - - - - - 0x00E717 03:E707: 60        RTS



sub_E708:
C - - - - - 0x00E718 03:E708: BD 0B 05  LDA ram_obj_btn,X
C - - - - - 0x00E71B 03:E70B: 29 08     AND #con_btn_Up
C - - - - - 0x00E71D 03:E70D: D0 08     BNE bra_E717_up
C - - - - - 0x00E71F 03:E70F: BD 0B 05  LDA ram_obj_btn,X
C - - - - - 0x00E722 03:E712: 29 04     AND #con_btn_Down
C - - - - - 0x00E724 03:E714: D0 37     BNE bra_E74D_down
C - - - - - 0x00E726 03:E716: 60        RTS
bra_E717_up:
C - - - - - 0x00E727 03:E717: BD 01 05  LDA ram_pos_X_lo_obj,X
C - - - - - 0x00E72A 03:E71A: 18        CLC
C - - - - - 0x00E72B 03:E71B: 65 96     ADC ram_0096
C - - - - - 0x00E72D 03:E71D: 85 6A     STA ram_006A
C - - - - - 0x00E72F 03:E71F: BD 02 05  LDA ram_pos_X_hi_obj,X
C - - - - - 0x00E732 03:E722: 69 00     ADC #$00
C - - - - - 0x00E734 03:E724: 85 6B     STA ram_006B
C - - - - - 0x00E736 03:E726: BD 03 05  LDA ram_pos_Y_lo_obj,X
C - - - - - 0x00E739 03:E729: 85 6C     STA ram_006C
C - - - - - 0x00E73B 03:E72B: BD 04 05  LDA ram_pos_Y_hi_obj,X
C - - - - - 0x00E73E 03:E72E: 85 6D     STA ram_006D
C - - - - - 0x00E740 03:E730: 20 5F C3  JSR sub_C35F
C - - - - - 0x00E743 03:E733: A5 6E     LDA ram_006E
C - - - - - 0x00E745 03:E735: C9 8A     CMP #$8A
C - - - - - 0x00E747 03:E737: F0 01     BEQ bra_E73A
C - - - - - 0x00E749 03:E739: 60        RTS
bra_E73A:
C - - - - - 0x00E74A 03:E73A: 20 75 E7  JSR sub_E775
C - - - - - 0x00E74D 03:E73D: A9 06     LDA #$06
C - - - - - 0x00E74F 03:E73F: 20 2A D2  JSR sub_D22A
C - - - - - 0x00E752 03:E742: A9 01     LDA #$01
C - - - - - 0x00E754 03:E744: 9D 16 05  STA ram_obj_0516,X
C - - - - - 0x00E757 03:E747: A9 00     LDA #$00
C - - - - - 0x00E759 03:E749: 9D 17 05  STA ram_obj_0517,X
C - - - - - 0x00E75C 03:E74C: 60        RTS
bra_E74D_down:
C - - - - - 0x00E75D 03:E74D: BD 01 05  LDA ram_pos_X_lo_obj,X
C - - - - - 0x00E760 03:E750: 18        CLC
C - - - - - 0x00E761 03:E751: 65 96     ADC ram_0096
C - - - - - 0x00E763 03:E753: 85 6A     STA ram_006A
C - - - - - 0x00E765 03:E755: BD 02 05  LDA ram_pos_X_hi_obj,X
C - - - - - 0x00E768 03:E758: 69 00     ADC #$00
C - - - - - 0x00E76A 03:E75A: 85 6B     STA ram_006B
C - - - - - 0x00E76C 03:E75C: BD 03 05  LDA ram_pos_Y_lo_obj,X
C - - - - - 0x00E76F 03:E75F: 18        CLC
C - - - - - 0x00E770 03:E760: 69 18     ADC #< $0018
C - - - - - 0x00E772 03:E762: 85 6C     STA ram_006C
C - - - - - 0x00E774 03:E764: BD 04 05  LDA ram_pos_Y_hi_obj,X
C - - - - - 0x00E777 03:E767: 69 00     ADC #> $0018
C - - - - - 0x00E779 03:E769: 85 6D     STA ram_006D
C - - - - - 0x00E77B 03:E76B: 20 5F C3  JSR sub_C35F
C - - - - - 0x00E77E 03:E76E: A5 6E     LDA ram_006E
C - - - - - 0x00E780 03:E770: C9 89     CMP #$89
C - - - - - 0x00E782 03:E772: F0 13     BEQ bra_E787
C - - - - - 0x00E784 03:E774: 60        RTS



sub_E775:
C - - - - - 0x00E785 03:E775: BD 01 05  LDA ram_pos_X_lo_obj,X
C - - - - - 0x00E788 03:E778: 18        CLC
C - - - - - 0x00E789 03:E779: 65 96     ADC ram_0096
C - - - - - 0x00E78B 03:E77B: 9D 01 05  STA ram_pos_X_lo_obj,X
C - - - - - 0x00E78E 03:E77E: BD 02 05  LDA ram_pos_X_hi_obj,X
C - - - - - 0x00E791 03:E781: 69 00     ADC #$00
C - - - - - 0x00E793 03:E783: 9D 02 05  STA ram_pos_X_hi_obj,X
C - - - - - 0x00E796 03:E786: 60        RTS



bra_E787:
C - - - - - 0x00E797 03:E787: 20 75 E7  JSR sub_E775
C - - - - - 0x00E79A 03:E78A: A9 07     LDA #$07
C - - - - - 0x00E79C 03:E78C: 20 2A D2  JSR sub_D22A
C - - - - - 0x00E79F 03:E78F: A9 03     LDA #$03
C - - - - - 0x00E7A1 03:E791: 9D 16 05  STA ram_obj_0516,X
C - - - - - 0x00E7A4 03:E794: A9 00     LDA #$00
C - - - - - 0x00E7A6 03:E796: 9D 17 05  STA ram_obj_0517,X
C - - - - - 0x00E7A9 03:E799: 60        RTS



tbl_E79A:
- D 3 - I - 0x00E7AA 03:E79A: 00        .byte $00, $01, $10, $11   ; 00 
- D 3 - I - 0x00E7AE 03:E79E: 18        .byte $18, $09, $17, $18   ; 01 
- D 3 - I - 0x00E7B2 03:E7A2: 09        .byte $09, $17, $17, $18   ; 02 
- D 3 - I - 0x00E7B6 03:E7A6: 18        .byte $18, $09, $09, $09   ; 03 
- D 3 - I - 0x00E7BA 03:E7AA: 09        .byte $09, $17, $09, $09   ; 04 
- D 3 - I - 0x00E7BE 03:E7AE: 08        .byte $08, $05, $08, $15   ; 05 
- D 3 - I - 0x00E7C2 03:E7B2: 06        .byte $06, $08, $16, $08   ; 06 
- D 3 - I - 0x00E7C6 03:E7B6: 08        .byte $08, $15, $08, $15   ; 07 
- D 3 - I - 0x00E7CA 03:E7BA: 16        .byte $16, $08, $16, $08   ; 08 
- D 3 - I - 0x00E7CE 03:E7BE: 07        .byte $07, $07, $FF, $FF   ; 09 
- D 3 - I - 0x00E7D2 03:E7C2: 82        .byte $82, $83, $92, $93   ; 0A 
- D 3 - I - 0x00E7D6 03:E7C6: 08        .byte $08, $08, $08, $08   ; 0B 
- D 3 - I - 0x00E7DA 03:E7CA: 2B        .byte $2B, $2C, $38, $39   ; 0C 
- D 3 - I - 0x00E7DE 03:E7CE: 6B        .byte $6B, $6C, $FF, $FF   ; 0D 
- D 3 - I - 0x00E7E2 03:E7D2: 02        .byte $02, $03, $12, $13   ; 0E 
- D 3 - I - 0x00E7E6 03:E7D6: 04        .byte $04, $04, $14, $14   ; 0F 
- D 3 - I - 0x00E7EA 03:E7DA: 20        .byte $20, $21, $30, $31   ; 10 
- D 3 - I - 0x00E7EE 03:E7DE: 89        .byte $89, $FF, $88, $89   ; 11 
- D 3 - I - 0x00E7F2 03:E7E2: FF        .byte $FF, $77, $77, $78   ; 12 
- D 3 - I - 0x00E7F6 03:E7E6: 78        .byte $78, $79, $79, $FF   ; 13 
- D 3 - I - 0x00E7FA 03:E7EA: 87        .byte $87, $88, $FF, $87   ; 14 
- - - - - - 0x00E7FE 03:E7EE: FF        .byte $FF, $FF, $FF, $FF   ; 15 
- - - - - - 0x00E802 03:E7F2: FF        .byte $FF, $FF, $FF, $FF   ; 16 
- - - - - - 0x00E806 03:E7F6: FF        .byte $FF, $FF, $FF, $FF   ; 17 
- D 3 - I - 0x00E80A 03:E7FA: 94        .byte $94, $95, $A4, $A5   ; 18 
- D 3 - I - 0x00E80E 03:E7FE: 25        .byte $25, $27, $28, $FF   ; 19 
- D 3 - I - 0x00E812 03:E802: 27        .byte $27, $26, $FF, $29   ; 1A 
- D 3 - I - 0x00E816 03:E806: 28        .byte $28, $FF, $35, $37   ; 1B 
- D 3 - I - 0x00E81A 03:E80A: FF        .byte $FF, $29, $37, $36   ; 1C 
- D 3 - I - 0x00E81E 03:E80E: 27        .byte $27, $27, $FF, $FF   ; 1D 
- D 3 - I - 0x00E822 03:E812: FF        .byte $FF, $FF, $37, $37   ; 1E 
- D 3 - I - 0x00E826 03:E816: 22        .byte $22, $23, $32, $32   ; 1F 
- D 3 - I - 0x00E82A 03:E81A: 38        .byte $38, $39, $38, $39   ; 20 
- D 3 - I - 0x00E82E 03:E81E: 2A        .byte $2A, $2A, $3A, $3A   ; 21 
- D 3 - I - 0x00E832 03:E822: 40        .byte $40, $41, $50, $51   ; 22 
- D 3 - I - 0x00E836 03:E826: 42        .byte $42, $43, $52, $53   ; 23 
- D 3 - I - 0x00E83A 03:E82A: 60        .byte $60, $61, $70, $71   ; 24 
- D 3 - I - 0x00E83E 03:E82E: 62        .byte $62, $63, $72, $73   ; 25 
- - - - - - 0x00E842 03:E832: FF        .byte $FF, $FF, $FF, $FF   ; 26 
- - - - - - 0x00E846 03:E836: FF        .byte $FF, $FF, $FF, $FF   ; 27 
- - - - - - 0x00E84A 03:E83A: FF        .byte $FF, $FF, $FF, $FF   ; 28 
- - - - - - 0x00E84E 03:E83E: FF        .byte $FF, $FF, $FF, $FF   ; 29 
- - - - - - 0x00E852 03:E842: FF        .byte $FF, $FF, $FF, $FF   ; 2A 
- - - - - - 0x00E856 03:E846: FF        .byte $FF, $FF, $FF, $FF   ; 2B 
- - - - - - 0x00E85A 03:E84A: FF        .byte $FF, $FF, $FF, $FF   ; 2C 
- - - - - - 0x00E85E 03:E84E: FF        .byte $FF, $FF, $FF, $FF   ; 2D 
- - - - - - 0x00E862 03:E852: FF        .byte $FF, $FF, $FF, $FF   ; 2E 
- - - - - - 0x00E866 03:E856: FF        .byte $FF, $FF, $FF, $FF   ; 2F 
- - - - - - 0x00E86A 03:E85A: FF        .byte $FF, $FF, $FF, $FF   ; 30 
- - - - - - 0x00E86E 03:E85E: FF        .byte $FF, $FF, $FF, $FF   ; 31 
- - - - - - 0x00E872 03:E862: FF        .byte $FF, $FF, $FF, $FF   ; 32 
- - - - - - 0x00E876 03:E866: FF        .byte $FF, $FF, $FF, $FF   ; 33 
- - - - - - 0x00E87A 03:E86A: FF        .byte $FF, $FF, $FF, $FF   ; 34 
- - - - - - 0x00E87E 03:E86E: FF        .byte $FF, $FF, $FF, $FF   ; 35 
- - - - - - 0x00E882 03:E872: FF        .byte $FF, $FF, $FF, $FF   ; 36 
- - - - - - 0x00E886 03:E876: FF        .byte $FF, $FF, $FF, $FF   ; 37 
- D 3 - I - 0x00E88A 03:E87A: 80        .byte $80, $81, $90, $91   ; 38 
- D 3 - I - 0x00E88E 03:E87E: 28        .byte $28, $FF, $28, $FF   ; 39 
- D 3 - I - 0x00E892 03:E882: FF        .byte $FF, $29, $FF, $29   ; 3A 
- - - - - - 0x00E896 03:E886: FF        .byte $FF, $FF, $FF, $FF   ; 3B 
- - - - - - 0x00E89A 03:E88A: FF        .byte $FF, $FF, $FF, $FF   ; 3C 
- D 3 - I - 0x00E89E 03:E88E: 1F        .byte $1F, $1F, $1F, $1F   ; 3D 
- - - - - - 0x00E8A2 03:E892: 2F        .byte $2F, $2F, $2F, $2F   ; 3E 
- D 3 - I - 0x00E8A6 03:E896: FF        .byte $FF, $FF, $FF, $FF   ; 3F 
- D 3 - I - 0x00E8AA 03:E89A: 86        .byte $86, $09, $85, $86   ; 40 
- D 3 - I - 0x00E8AE 03:E89E: 09        .byte $09, $74, $74, $75   ; 41 
- D 3 - I - 0x00E8B2 03:E8A2: 75        .byte $75, $76, $76, $09   ; 42 
- D 3 - I - 0x00E8B6 03:E8A6: 84        .byte $84, $85, $09, $84   ; 43 
- D 3 - I - 0x00E8BA 03:E8AA: 24        .byte $24, $FF, $34, $24   ; 44 
- D 3 - I - 0x00E8BE 03:E8AE: FF        .byte $FF, $24, $24, $34   ; 45 
- D 3 - I - 0x00E8C2 03:E8B2: 34        .byte $34, $FF, $FF, $FF   ; 46 
- D 3 - I - 0x00E8C6 03:E8B6: FF        .byte $FF, $34, $FF, $FF   ; 47 
- - - - - - 0x00E8CA 03:E8BA: 1D        .byte $1D, $4E, $2D, $5E   ; 48 
- - - - - - 0x00E8CE 03:E8BE: 4F        .byte $4F, $1E, $5F, $2E   ; 49 
- - - - - - 0x00E8D2 03:E8C2: 3D        .byte $3D, $3E, $67, $68   ; 4A 
- - - - - - 0x00E8D6 03:E8C6: 2D        .byte $2D, $6F, $2D, $5E   ; 4B 
- - - - - - 0x00E8DA 03:E8CA: 6E        .byte $6E, $2E, $5F, $2E   ; 4C 
- - - - - - 0x00E8DE 03:E8CE: 3B        .byte $3B, $3C, $69, $6A   ; 4D 
- D 3 - I - 0x00E8E2 03:E8D2: 4A        .byte $4A, $96, $4A, $A6   ; 4E 
- D 3 - I - 0x00E8E6 03:E8D6: 97        .byte $97, $4A, $A7, $4A   ; 4F 
- D 3 - I - 0x00E8EA 03:E8DA: 0A        .byte $0A, $0B, $1A, $1B   ; 50 
- D 3 - I - 0x00E8EE 03:E8DE: 0A        .byte $0A, $0B, $1A, $1B   ; 51 
- D 3 - I - 0x00E8F2 03:E8E2: F0        .byte $F0, $F0, $F0, $F0   ; 52 
- D 3 - I - 0x00E8F6 03:E8E6: F0        .byte $F0, $F0, $F0, $F0   ; 53 
- D 3 - I - 0x00E8FA 03:E8EA: F1        .byte $F1, $F1, $F1, $F1   ; 54 
- D 3 - I - 0x00E8FE 03:E8EE: F2        .byte $F2, $F2, $F2, $F2   ; 55 
- - - - - - 0x00E902 03:E8F2: FF        .byte $FF, $FF, $FF, $FF   ; 56 
- - - - - - 0x00E906 03:E8F6: FF        .byte $FF, $FF, $FF, $FF   ; 57 
- - - - - - 0x00E90A 03:E8FA: 2D        .byte $2D, $5E, $2D, $5E   ; 58 
- - - - - - 0x00E90E 03:E8FE: 5F        .byte $5F, $2E, $5F, $2E   ; 59 
- - - - - - 0x00E912 03:E902: 67        .byte $67, $68, $67, $68   ; 5A 
- - - - - - 0x00E916 03:E906: 2D        .byte $2D, $1C, $2D, $5E   ; 5B 
- - - - - - 0x00E91A 03:E90A: 4D        .byte $4D, $2E, $5F, $2E   ; 5C 
- - - - - - 0x00E91E 03:E90E: 69        .byte $69, $6A, $69, $6A   ; 5D 
- D 3 - I - 0x00E922 03:E912: 4A        .byte $4A, $A6, $4A, $A6   ; 5E 
- D 3 - I - 0x00E926 03:E916: A7        .byte $A7, $4A, $A7, $4A   ; 5F 
- D 3 - I - 0x00E92A 03:E91A: 44        .byte $44, $45, $54, $55   ; 60 
- D 3 - I - 0x00E92E 03:E91E: 54        .byte $54, $55, $64, $65   ; 61 
- D 3 - I - 0x00E932 03:E922: 44        .byte $44, $45, $64, $65   ; 62 
- D 3 - I - 0x00E936 03:E926: 48        .byte $48, $49, $58, $59   ; 63 
- D 3 - I - 0x00E93A 03:E92A: 46        .byte $46, $47, $56, $57   ; 64 
- D 3 - I - 0x00E93E 03:E92E: 0E        .byte $0E, $0E, $0E, $0E   ; 65 
- D 3 - I - 0x00E942 03:E932: 4A        .byte $4A, $4B, $5A, $5B   ; 66 
- D 3 - I - 0x00E946 03:E936: 4C        .byte $4C, $4B, $5A, $5B   ; 67 
- D 3 - I - 0x00E94A 03:E93A: 4A        .byte $4A, $4B, $5A, $4C   ; 68 
- D 3 - I - 0x00E94E 03:E93E: 7F        .byte $7F, $7F, $F3, $F3   ; 69 
- D 3 - I - 0x00E952 03:E942: 7F        .byte $7F, $7F, $F4, $F4   ; 6A 
- D 3 - I - 0x00E956 03:E946: 0A        .byte $0A, $0B, $1A, $1B   ; 6B 
- D 3 - I - 0x00E95A 03:E94A: 0A        .byte $0A, $0B, $1A, $1B   ; 6C 
- D 3 - I - 0x00E95E 03:E94E: 98        .byte $98, $99, $A8, $A9   ; 6D 
- D 3 - I - 0x00E962 03:E952: F3        .byte $F3, $F3, $F3, $F3   ; 6E 
- D 3 - I - 0x00E966 03:E956: F4        .byte $F4, $F4, $F4, $F4   ; 6F 
- D 3 - I - 0x00E96A 03:E95A: 8C        .byte $8C, $0C, $8B, $8C   ; 70 
- D 3 - I - 0x00E96E 03:E95E: 0C        .byte $0C, $7A, $7A, $7B   ; 71 
- D 3 - I - 0x00E972 03:E962: 7B        .byte $7B, $7C, $7C, $0C   ; 72 
- D 3 - I - 0x00E976 03:E966: 8A        .byte $8A, $8B, $0C, $8A   ; 73 
- D 3 - I - 0x00E97A 03:E96A: 7D        .byte $7D, $0C, $8D, $7D   ; 74 
- D 3 - I - 0x00E97E 03:E96E: 0C        .byte $0C, $7E, $7E, $8E   ; 75 
- D 3 - I - 0x00E982 03:E972: 8E        .byte $8E, $0C, $0C, $0C   ; 76 
- D 3 - I - 0x00E986 03:E976: 0C        .byte $0C, $8D, $0C, $0C   ; 77 
- - - - - - 0x00E98A 03:E97A: FF        .byte $FF, $FF, $FF, $FF   ; 78 
- - - - - - 0x00E98E 03:E97E: FF        .byte $FF, $FF, $FF, $FF   ; 79 
- - - - - - 0x00E992 03:E982: FF        .byte $FF, $FF, $FF, $FF   ; 7A 
- - - - - - 0x00E996 03:E986: FF        .byte $FF, $FF, $FF, $FF   ; 7B 
- - - - - - 0x00E99A 03:E98A: FF        .byte $FF, $FF, $FF, $FF   ; 7C 
- - - - - - 0x00E99E 03:E98E: FF        .byte $FF, $FF, $FF, $FF   ; 7D 
- - - - - - 0x00E9A2 03:E992: FF        .byte $FF, $FF, $FF, $FF   ; 7E 
- - - - - - 0x00E9A6 03:E996: FF        .byte $FF, $FF, $FF, $FF   ; 7F 



tbl_E99A:
;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 3 - - - 0x00E9AA 03:E99A: 00        .byte $00, $02, $02, $02, $02, $01, $01, $01, $01, $01, $00, $03, $02, $02, $00, $00   ; 00 
- D 3 - - - 0x00E9BA 03:E9AA: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $01, $01, $01, $01, $00   ; 10 
- D 3 - - - 0x00E9CA 03:E9BA: 02        .byte $02, $02, $02, $02, $02, $02, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 20 
- - - - - - 0x00E9DA 03:E9CA: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $00, $00, $00, $01, $00   ; 30 
- D 3 - - - 0x00E9EA 03:E9DA: 02        .byte $02, $02, $02, $02, $00, $00, $00, $00, $03, $03, $03, $03, $03, $03, $02, $02   ; 40 
- D 3 - - - 0x00E9FA 03:E9EA: 00        .byte $00, $00, $03, $02, $00, $00, $00, $00, $03, $03, $03, $03, $03, $03, $02, $02   ; 50 
- D 3 - - - 0x00EA0A 03:E9FA: 00        .byte $00, $00, $00, $00, $00, $00, $02, $02, $02, $01, $00, $00, $01, $01, $00, $00   ; 60 
- D 3 - - - 0x00EA1A 03:EA0A: 01        .byte $01, $01, $01, $01, $01, $01, $01, $01, $00, $00, $00, $00, $00, $00, $00, $00   ; 70 



sub_EA1A_load_stage:
C - - - - - 0x00EA2A 03:EA1A: A9 22     LDA #con_script_load_stage + con_prg_bank + $02 * $10
C - - - - - 0x00EA2C 03:EA1C: 20 85 F1  JSR sub_F185_run_script
C - - - - - 0x00EA2F 03:EA1F: 60        RTS



sub_EA20_stage_complete:
C - - - - - 0x00EA30 03:EA20: 85 9E     STA ram_009E
C - - - - - 0x00EA32 03:EA22: A9 23     LDA #con_script_stage_complete + con_prg_bank + $02 * $10
C - - - - - 0x00EA34 03:EA24: 20 85 F1  JSR sub_F185_run_script
C - - - - - 0x00EA37 03:EA27: 60        RTS



sub_EA28_messages:
C - - - - - 0x00EA38 03:EA28: A9 24     LDA #con_script_messages + con_prg_bank + $02 * $10
C - - - - - 0x00EA3A 03:EA2A: 20 85 F1  JSR sub_F185_run_script
C - - - - - 0x00EA3D 03:EA2D: 60        RTS



sub_EA2E_game_over:
C - - - - - 0x00EA3E 03:EA2E: A9 25     LDA #con_script_game_over + con_prg_bank + $02 * $10
C - - - - - 0x00EA40 03:EA30: 20 85 F1  JSR sub_F185_run_script
C - - - - - 0x00EA43 03:EA33: 60        RTS



_sound_0x00EA44_0F_player_death:
- D 3 - I - 0x00EA44 03:EA34: 00        .byte $00   ; 
- D 3 - I - 0x00EA45 03:EA35: 40 EA     .word ch_0F_EA40_00
- D 3 - I - 0x00EA47 03:EA37: 66 EA     .word ch_0F_EA66_01
- D 3 - I - 0x00EA49 03:EA39: 8E EA     .word ch_0F_EA8E_02
- D 3 - I - 0x00EA4B 03:EA3B: 00 00     .word $0000    ; 03
- - - - - - 0x00EA4D 03:EA3D: 00 00     .word $0000    ; 04
- D 3 - I - 0x00EA4F 03:EA3F: 12        .byte $12   ; 



ch_0F_EA40_00:
- D 3 - I - 0x00EA50 03:EA40: E0        .byte $E0   ; 
- D 3 - I - 0x00EA51 03:EA41: 3E A9     .word off_E0_0x00A94E
- D 3 - I - 0x00EA53 03:EA43: 84        .byte $84   ; 
- D 3 - I - 0x00EA54 03:EA44: 30        .byte $30   ; 
- D 3 - I - 0x00EA55 03:EA45: 83        .byte $83   ; 
- D 3 - I - 0x00EA56 03:EA46: 31        .byte $31   ; 
- D 3 - I - 0x00EA57 03:EA47: 84        .byte $84   ; 
- D 3 - I - 0x00EA58 03:EA48: 30        .byte $30   ; 
- D 3 - I - 0x00EA59 03:EA49: 82        .byte $82   ; 
- D 3 - I - 0x00EA5A 03:EA4A: 31        .byte $31   ; 
- D 3 - I - 0x00EA5B 03:EA4B: 84        .byte $84   ; 
- D 3 - I - 0x00EA5C 03:EA4C: 2D        .byte $2D   ; 
- D 3 - I - 0x00EA5D 03:EA4D: 83        .byte $83   ; 
- D 3 - I - 0x00EA5E 03:EA4E: 2E        .byte $2E   ; 
- D 3 - I - 0x00EA5F 03:EA4F: 84        .byte $84   ; 
- D 3 - I - 0x00EA60 03:EA50: 2D        .byte $2D   ; 
- D 3 - I - 0x00EA61 03:EA51: 82        .byte $82   ; 
- D 3 - I - 0x00EA62 03:EA52: 2E        .byte $2E   ; 
- D 3 - I - 0x00EA63 03:EA53: 84        .byte $84   ; 
- D 3 - I - 0x00EA64 03:EA54: 29        .byte $29   ; 
- D 3 - I - 0x00EA65 03:EA55: 83        .byte $83   ; 
- D 3 - I - 0x00EA66 03:EA56: 2A        .byte $2A   ; 
- D 3 - I - 0x00EA67 03:EA57: 84        .byte $84   ; 
- D 3 - I - 0x00EA68 03:EA58: 29        .byte $29   ; 
- D 3 - I - 0x00EA69 03:EA59: 83        .byte $83   ; 
- D 3 - I - 0x00EA6A 03:EA5A: 2A        .byte $2A   ; 
- D 3 - I - 0x00EA6B 03:EA5B: 24        .byte $24   ; 
- D 3 - I - 0x00EA6C 03:EA5C: 84        .byte $84   ; 
- D 3 - I - 0x00EA6D 03:EA5D: 25        .byte $25   ; 
- D 3 - I - 0x00EA6E 03:EA5E: 26        .byte $26   ; 
- D 3 - I - 0x00EA6F 03:EA5F: 25        .byte $25   ; 
- D 3 - I - 0x00EA70 03:EA60: 26        .byte $26   ; 
- D 3 - I - 0x00EA71 03:EA61: 25        .byte $25   ; 
- D 3 - I - 0x00EA72 03:EA62: 26        .byte $26   ; 
- D 3 - I - 0x00EA73 03:EA63: 25        .byte $25   ; 
- D 3 - I - 0x00EA74 03:EA64: 26        .byte $26   ; 
- D 3 - I - 0x00EA75 03:EA65: FF        .byte $FF   ; 



ch_0F_EA66_01:
- D 3 - I - 0x00EA76 03:EA66: E1        .byte $E1   ; 
- D 3 - I - 0x00EA77 03:EA67: 82 A9     .word off_E1_0x00A992
- D 3 - I - 0x00EA79 03:EA69: 8B        .byte $8B   ; 
- D 3 - I - 0x00EA7A 03:EA6A: 7F        .byte $7F   ; 
- D 3 - I - 0x00EA7B 03:EA6B: 84        .byte $84   ; 
- D 3 - I - 0x00EA7C 03:EA6C: 30        .byte $30   ; 
- D 3 - I - 0x00EA7D 03:EA6D: 83        .byte $83   ; 
- D 3 - I - 0x00EA7E 03:EA6E: 31        .byte $31   ; 
- D 3 - I - 0x00EA7F 03:EA6F: 84        .byte $84   ; 
- D 3 - I - 0x00EA80 03:EA70: 30        .byte $30   ; 
- D 3 - I - 0x00EA81 03:EA71: 82        .byte $82   ; 
- D 3 - I - 0x00EA82 03:EA72: 31        .byte $31   ; 
- D 3 - I - 0x00EA83 03:EA73: 84        .byte $84   ; 
- D 3 - I - 0x00EA84 03:EA74: 2D        .byte $2D   ; 
- D 3 - I - 0x00EA85 03:EA75: 83        .byte $83   ; 
- D 3 - I - 0x00EA86 03:EA76: 2E        .byte $2E   ; 
- D 3 - I - 0x00EA87 03:EA77: 84        .byte $84   ; 
- D 3 - I - 0x00EA88 03:EA78: 2D        .byte $2D   ; 
- D 3 - I - 0x00EA89 03:EA79: 82        .byte $82   ; 
- D 3 - I - 0x00EA8A 03:EA7A: 2E        .byte $2E   ; 
- D 3 - I - 0x00EA8B 03:EA7B: 84        .byte $84   ; 
- D 3 - I - 0x00EA8C 03:EA7C: 29        .byte $29   ; 
- D 3 - I - 0x00EA8D 03:EA7D: 83        .byte $83   ; 
- D 3 - I - 0x00EA8E 03:EA7E: 2A        .byte $2A   ; 
- D 3 - I - 0x00EA8F 03:EA7F: 84        .byte $84   ; 
- D 3 - I - 0x00EA90 03:EA80: 29        .byte $29   ; 
- D 3 - I - 0x00EA91 03:EA81: 83        .byte $83   ; 
- D 3 - I - 0x00EA92 03:EA82: 2A        .byte $2A   ; 
- D 3 - I - 0x00EA93 03:EA83: 24        .byte $24   ; 
- D 3 - I - 0x00EA94 03:EA84: 84        .byte $84   ; 
- D 3 - I - 0x00EA95 03:EA85: 25        .byte $25   ; 
- D 3 - I - 0x00EA96 03:EA86: 26        .byte $26   ; 
- D 3 - I - 0x00EA97 03:EA87: 25        .byte $25   ; 
- D 3 - I - 0x00EA98 03:EA88: 26        .byte $26   ; 
- D 3 - I - 0x00EA99 03:EA89: 25        .byte $25   ; 
- D 3 - I - 0x00EA9A 03:EA8A: 26        .byte $26   ; 
- D 3 - I - 0x00EA9B 03:EA8B: 25        .byte $25   ; 
- D 3 - I - 0x00EA9C 03:EA8C: 26        .byte $26   ; 
- D 3 - I - 0x00EA9D 03:EA8D: FF        .byte $FF   ; 



ch_0F_EA8E_02:
- D 3 - I - 0x00EA9E 03:EA8E: E2        .byte $E2   ; 
- D 3 - I - 0x00EA9F 03:EA8F: 92 AA     .word off_E2_0x00AAA2
- D 3 - I - 0x00EAA1 03:EA91: 81        .byte $81   ; 
- D 3 - I - 0x00EAA2 03:EA92: 30        .byte $30   ; 
- D 3 - I - 0x00EAA3 03:EA93: 2D        .byte $2D   ; 
- D 3 - I - 0x00EAA4 03:EA94: 29        .byte $29   ; 
- D 3 - I - 0x00EAA5 03:EA95: 24        .byte $24   ; 
- D 3 - I - 0x00EAA6 03:EA96: FF        .byte $FF   ; 



_sound_0x00EAA7_10_pick_up_item:
- D 3 - I - 0x00EAA7 03:EA97: 03        .byte $03   ; 
- - - - - - 0x00EAA8 03:EA98: 00 00     .word $0000    ; 00
- D 3 - I - 0x00EAAA 03:EA9A: A3 EA     .word ch_10_EAA3_01
- - - - - - 0x00EAAC 03:EA9C: 00 00     .word $0000    ; 02
- D 3 - I - 0x00EAAE 03:EA9E: 00 00     .word $0000    ; 03
- - - - - - 0x00EAB0 03:EAA0: 00 00     .word $0000    ; 04
- D 3 - I - 0x00EAB2 03:EAA2: 2F        .byte $2F   ; 



ch_10_EAA3_01:
- D 3 - I - 0x00EAB3 03:EAA3: E1        .byte $E1   ; 
- D 3 - I - 0x00EAB4 03:EAA4: 3E A9     .word off_E1_0x00A94E
- D 3 - I - 0x00EAB6 03:EAA6: 84        .byte $84   ; 
- D 3 - I - 0x00EAB7 03:EAA7: 3D        .byte $3D   ; 
- D 3 - I - 0x00EAB8 03:EAA8: 42        .byte $42   ; 
- D 3 - I - 0x00EAB9 03:EAA9: 47        .byte $47   ; 
- D 3 - I - 0x00EABA 03:EAAA: 4C        .byte $4C   ; 
- D 3 - I - 0x00EABB 03:EAAB: 45        .byte $45   ; 
- D 3 - I - 0x00EABC 03:EAAC: 49        .byte $49   ; 
- D 3 - I - 0x00EABD 03:EAAD: 4C        .byte $4C   ; 
- D 3 - I - 0x00EABE 03:EAAE: 40        .byte $40   ; 
- D 3 - I - 0x00EABF 03:EAAF: FF        .byte $FF   ; 



_sound_0x00EAC0_11_push_item:
- D 3 - I - 0x00EAC0 03:EAB0: 03        .byte $03   ; 
- - - - - - 0x00EAC1 03:EAB1: 00 00     .word $0000    ; 00
- D 3 - I - 0x00EAC3 03:EAB3: BC EA     .word ch_11_EABC_01
- - - - - - 0x00EAC5 03:EAB5: 00 00     .word $0000    ; 02
- D 3 - I - 0x00EAC7 03:EAB7: 00 00     .word $0000    ; 03
- - - - - - 0x00EAC9 03:EAB9: 00 00     .word $0000    ; 04
- D 3 - I - 0x00EACB 03:EABB: 10        .byte $10   ; 



ch_11_EABC_01:
- D 3 - I - 0x00EACC 03:EABC: E1        .byte $E1   ; 
- D 3 - I - 0x00EACD 03:EABD: 4E AA     .word off_E1_0x00AA5E
- D 3 - I - 0x00EACF 03:EABF: 84        .byte $84   ; 
- D 3 - I - 0x00EAD0 03:EAC0: 7F        .byte $7F   ; 
- D 3 - I - 0x00EAD1 03:EAC1: 20        .byte $20   ; 
- D 3 - I - 0x00EAD2 03:EAC2: 7F        .byte $7F   ; 
- D 3 - I - 0x00EAD3 03:EAC3: FF        .byte $FF   ; 



_sound_0x00EAD4_12_enemy_death:
- D 3 - I - 0x00EAD4 03:EAC4: 03        .byte $03   ; 
- - - - - - 0x00EAD5 03:EAC5: 00 00     .word $0000    ; 00
- D 3 - I - 0x00EAD7 03:EAC7: D0 EA     .word ch_12_EAD0_01
- - - - - - 0x00EAD9 03:EAC9: 00 00     .word $0000    ; 02
- D 3 - I - 0x00EADB 03:EACB: 00 00     .word $0000    ; 03
- - - - - - 0x00EADD 03:EACD: 00 00     .word $0000    ; 04
- D 3 - I - 0x00EADF 03:EACF: 1A        .byte $1A   ; 



ch_12_EAD0_01:
- D 3 - I - 0x00EAE0 03:EAD0: E1        .byte $E1   ; 
- D 3 - I - 0x00EAE1 03:EAD1: 3E A9     .word off_E1_0x00A94E
- D 3 - I - 0x00EAE3 03:EAD3: 85        .byte $85   ; 
- D 3 - I - 0x00EAE4 03:EAD4: 47        .byte $47   ; 
- D 3 - I - 0x00EAE5 03:EAD5: 49        .byte $49   ; 
- D 3 - I - 0x00EAE6 03:EAD6: 44        .byte $44   ; 
- D 3 - I - 0x00EAE7 03:EAD7: 45        .byte $45   ; 
- D 3 - I - 0x00EAE8 03:EAD8: 3F        .byte $3F   ; 
- D 3 - I - 0x00EAE9 03:EAD9: 3D        .byte $3D   ; 
- D 3 - I - 0x00EAEA 03:EADA: 45        .byte $45   ; 
- D 3 - I - 0x00EAEB 03:EADB: 3F        .byte $3F   ; 
- D 3 - I - 0x00EAEC 03:EADC: 3D        .byte $3D   ; 
- D 3 - I - 0x00EAED 03:EADD: 39        .byte $39   ; 
- D 3 - I - 0x00EAEE 03:EADE: 38        .byte $38   ; 
- D 3 - I - 0x00EAEF 03:EADF: 33        .byte $33   ; 
- D 3 - I - 0x00EAF0 03:EAE0: 31        .byte $31   ; 
- D 3 - I - 0x00EAF1 03:EAE1: 2E        .byte $2E   ; 
- D 3 - I - 0x00EAF2 03:EAE2: 2C        .byte $2C   ; 
- D 3 - I - 0x00EAF3 03:EAE3: 2A        .byte $2A   ; 
- D 3 - I - 0x00EAF4 03:EAE4: 25        .byte $25   ; 
- D 3 - I - 0x00EAF5 03:EAE5: 23        .byte $23   ; 
- D 3 - I - 0x00EAF6 03:EAE6: 21        .byte $21   ; 
- D 3 - I - 0x00EAF7 03:EAE7: 20        .byte $20   ; 
- D 3 - I - 0x00EAF8 03:EAE8: 1E        .byte $1E   ; 
- D 3 - I - 0x00EAF9 03:EAE9: 27        .byte $27   ; 
- D 3 - I - 0x00EAFA 03:EAEA: 2A        .byte $2A   ; 
- D 3 - I - 0x00EAFB 03:EAEB: 20        .byte $20   ; 
- D 3 - I - 0x00EAFC 03:EAEC: 28        .byte $28   ; 
- D 3 - I - 0x00EAFD 03:EAED: 2C        .byte $2C   ; 
- D 3 - I - 0x00EAFE 03:EAEE: 2D        .byte $2D   ; 
- D 3 - I - 0x00EAFF 03:EAEF: 38        .byte $38   ; 
- D 3 - I - 0x00EB00 03:EAF0: 38        .byte $38   ; 
- D 3 - I - 0x00EB01 03:EAF1: 3B        .byte $3B   ; 
- D 3 - I - 0x00EB02 03:EAF2: 31        .byte $31   ; 
- D 3 - I - 0x00EB03 03:EAF3: 39        .byte $39   ; 
- D 3 - I - 0x00EB04 03:EAF4: FF        .byte $FF   ; 



_sound_0x00EB05_13:
- - - - - - 0x00EB05 03:EAF5: 03        .byte $03   ; 
- - - - - - 0x00EB06 03:EAF6: 00 00     .word $0000    ; 00
- - - - - - 0x00EB08 03:EAF8: 01 EB     .word ch_13_EB01_01
- - - - - - 0x00EB0A 03:EAFA: 00 00     .word $0000    ; 02
- - - - - - 0x00EB0C 03:EAFC: 00 00     .word $0000    ; 03
- - - - - - 0x00EB0E 03:EAFE: 00 00     .word $0000    ; 04
- - - - - - 0x00EB10 03:EB00: 10        .byte $10   ; 



ch_13_EB01_01:
- - - - - - 0x00EB11 03:EB01: E1        .byte $E1   ; 
- - - - - - 0x00EB12 03:EB02: 3E A9     .word off_E1_0x00A94E
- - - - - - 0x00EB14 03:EB04: 84        .byte $84   ; 
- - - - - - 0x00EB15 03:EB05: 3D        .byte $3D   ; 
- - - - - - 0x00EB16 03:EB06: FF        .byte $FF   ; 



_sound_0x00EB17_14:
- D 3 - I - 0x00EB17 03:EB07: 03        .byte $03   ; 
- - - - - - 0x00EB18 03:EB08: 00 00     .word $0000    ; 00
- D 3 - I - 0x00EB1A 03:EB0A: 13 EB     .word ch_14_EB13_01
- - - - - - 0x00EB1C 03:EB0C: 00 00     .word $0000    ; 02
- D 3 - I - 0x00EB1E 03:EB0E: 00 00     .word $0000    ; 03
- - - - - - 0x00EB20 03:EB10: 00 00     .word $0000    ; 04
- D 3 - I - 0x00EB22 03:EB12: 20        .byte $20   ; 



ch_14_EB13_01:
- D 3 - I - 0x00EB23 03:EB13: E1        .byte $E1   ; 
- D 3 - I - 0x00EB24 03:EB14: 3E A9     .word off_E1_0x00A94E
- D 3 - I - 0x00EB26 03:EB16: 82        .byte $82   ; 
- D 3 - I - 0x00EB27 03:EB17: 4B        .byte $4B   ; 
- D 3 - I - 0x00EB28 03:EB18: 88        .byte $88   ; 
- D 3 - I - 0x00EB29 03:EB19: 47        .byte $47   ; 
- D 3 - I - 0x00EB2A 03:EB1A: FF        .byte $FF   ; 



_sound_0x00EB2B_17_throw_glove:
- D 3 - I - 0x00EB2B 03:EB1B: 03        .byte $03   ; 
- - - - - - 0x00EB2C 03:EB1C: 00 00     .word $0000    ; 00
- D 3 - I - 0x00EB2E 03:EB1E: 27 EB     .word ch_17_EB27_01
- - - - - - 0x00EB30 03:EB20: 00 00     .word $0000    ; 02
- D 3 - I - 0x00EB32 03:EB22: 00 00     .word $0000    ; 03
- - - - - - 0x00EB34 03:EB24: 00 00     .word $0000    ; 04
- D 3 - I - 0x00EB36 03:EB26: 10        .byte $10   ; 



ch_17_EB27_01:
- D 3 - I - 0x00EB37 03:EB27: E1        .byte $E1   ; 
- D 3 - I - 0x00EB38 03:EB28: 2D EB     .word off_E1_EB2D
- D 3 - I - 0x00EB3A 03:EB2A: 80        .byte $80   ; 
- D 3 - I - 0x00EB3B 03:EB2B: 28        .byte $28   ; 
- D 3 - I - 0x00EB3C 03:EB2C: FF        .byte $FF   ; 



off_E1_EB2D:
- D 3 - I - 0x00EB3D 03:EB2D: E7        .byte $E7   ; 
- D 3 - I - 0x00EB3E 03:EB2E: 8B        .byte $8B   ; 
- D 3 - I - 0x00EB3F 03:EB2F: 08        .byte $08   ; 
- D 3 - I - 0x00EB40 03:EB30: 00        .byte $00   ; 
- D 3 - I - 0x00EB41 03:EB31: 06        .byte $06   ; 
- D 3 - I - 0x00EB42 03:EB32: 06        .byte $06   ; 
- D 3 - I - 0x00EB43 03:EB33: 06        .byte $06   ; 
- D 3 - I - 0x00EB44 03:EB34: 06        .byte $06   ; 
- D 3 - I - 0x00EB45 03:EB35: 07        .byte $07   ; 
- D 3 - I - 0x00EB46 03:EB36: 07        .byte $07   ; 
- D 3 - I - 0x00EB47 03:EB37: 07        .byte $07   ; 
- D 3 - I - 0x00EB48 03:EB38: 07        .byte $07   ; 
- D 3 - I - 0x00EB49 03:EB39: 08        .byte $08   ; 
- D 3 - I - 0x00EB4A 03:EB3A: 08        .byte $08   ; 
- D 3 - I - 0x00EB4B 03:EB3B: 08        .byte $08   ; 
- D 3 - I - 0x00EB4C 03:EB3C: 09        .byte $09   ; 
- D 3 - I - 0x00EB4D 03:EB3D: 09        .byte $09   ; 
- D 3 - I - 0x00EB4E 03:EB3E: 09        .byte $09   ; 
- D 3 - I - 0x00EB4F 03:EB3F: 09        .byte $09   ; 
- D 3 - I - 0x00EB50 03:EB40: 09        .byte $09   ; 
- D 3 - I - 0x00EB51 03:EB41: 09        .byte $09   ; 
- D 3 - I - 0x00EB52 03:EB42: 09        .byte $09   ; 
- D 3 - I - 0x00EB53 03:EB43: 08        .byte $08   ; 
- D 3 - I - 0x00EB54 03:EB44: 08        .byte $08   ; 
- D 3 - I - 0x00EB55 03:EB45: 08        .byte $08   ; 
- D 3 - I - 0x00EB56 03:EB46: 08        .byte $08   ; 
- D 3 - I - 0x00EB57 03:EB47: 08        .byte $08   ; 
- D 3 - I - 0x00EB58 03:EB48: 08        .byte $08   ; 
- D 3 - I - 0x00EB59 03:EB49: 08        .byte $08   ; 
- D 3 - I - 0x00EB5A 03:EB4A: 08        .byte $08   ; 
- D 3 - I - 0x00EB5B 03:EB4B: 08        .byte $08   ; 
- D 3 - I - 0x00EB5C 03:EB4C: 08        .byte $08   ; 
- D 3 - I - 0x00EB5D 03:EB4D: 08        .byte $08   ; 
- D 3 - I - 0x00EB5E 03:EB4E: 07        .byte $07   ; 
- D 3 - I - 0x00EB5F 03:EB4F: 07        .byte $07   ; 
- D 3 - I - 0x00EB60 03:EB50: 07        .byte $07   ; 
- D 3 - I - 0x00EB61 03:EB51: 07        .byte $07   ; 
- D 3 - I - 0x00EB62 03:EB52: 07        .byte $07   ; 
- D 3 - I - 0x00EB63 03:EB53: 07        .byte $07   ; 
- D 3 - I - 0x00EB64 03:EB54: 07        .byte $07   ; 
- D 3 - I - 0x00EB65 03:EB55: 07        .byte $07   ; 
- D 3 - I - 0x00EB66 03:EB56: 07        .byte $07   ; 
- D 3 - I - 0x00EB67 03:EB57: 07        .byte $07   ; 
- D 3 - I - 0x00EB68 03:EB58: 06        .byte $06   ; 
- D 3 - I - 0x00EB69 03:EB59: 06        .byte $06   ; 
- D 3 - I - 0x00EB6A 03:EB5A: 06        .byte $06   ; 
- D 3 - I - 0x00EB6B 03:EB5B: 06        .byte $06   ; 
- D 3 - I - 0x00EB6C 03:EB5C: 06        .byte $06   ; 
- D 3 - I - 0x00EB6D 03:EB5D: 06        .byte $06   ; 
- D 3 - I - 0x00EB6E 03:EB5E: 06        .byte $06   ; 
- D 3 - I - 0x00EB6F 03:EB5F: 05        .byte $05   ; 
- D 3 - I - 0x00EB70 03:EB60: 05        .byte $05   ; 
- D 3 - I - 0x00EB71 03:EB61: 05        .byte $05   ; 
- D 3 - I - 0x00EB72 03:EB62: 05        .byte $05   ; 
- D 3 - I - 0x00EB73 03:EB63: 05        .byte $05   ; 
- D 3 - I - 0x00EB74 03:EB64: 05        .byte $05   ; 
- D 3 - I - 0x00EB75 03:EB65: 05        .byte $05   ; 
- D 3 - I - 0x00EB76 03:EB66: 05        .byte $05   ; 
- D 3 - I - 0x00EB77 03:EB67: 05        .byte $05   ; 
- D 3 - I - 0x00EB78 03:EB68: 05        .byte $05   ; 
- D 3 - I - 0x00EB79 03:EB69: 05        .byte $05   ; 
- D 3 - I - 0x00EB7A 03:EB6A: 05        .byte $05   ; 
- D 3 - I - 0x00EB7B 03:EB6B: 05        .byte $05   ; 
- D 3 - I - 0x00EB7C 03:EB6C: 05        .byte $05   ; 
- D 3 - I - 0x00EB7D 03:EB6D: 05        .byte $05   ; 
- D 3 - I - 0x00EB7E 03:EB6E: 05        .byte $05   ; 
- D 3 - I - 0x00EB7F 03:EB6F: 05        .byte $05   ; 
- D 3 - I - 0x00EB80 03:EB70: 05        .byte $05   ; 


; bzk garbage
- - - - - - 0x00EB81 03:EB71: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00EB90 03:EB80: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00EBA0 03:EB90: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00EBB0 03:EBA0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00EBC0 03:EBB0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00EBD0 03:EBC0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00EBE0 03:EBD0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00EBF0 03:EBE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00EC00 03:EBF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 



vec_EC00_RESET:
C - - - - - 0x00EC10 03:EC00: 78        SEI
C - - - - - 0x00EC11 03:EC01: A9 FF     LDA #$FF
C - - - - - 0x00EC13 03:EC03: 8D FF 9F  STA $9FFF
C - - - - - 0x00EC16 03:EC06: D8        CLD
C - - - - - 0x00EC17 03:EC07: A2 00     LDX #$00
C - - - - - 0x00EC19 03:EC09: 8E 00 20  STX $2000
bra_EC0C_infinite_loop:
C - - - - - 0x00EC1C 03:EC0C: AD 02 20  LDA $2002
C - - - - - 0x00EC1F 03:EC0F: 10 FB     BPL bra_EC0C_infinite_loop
bra_EC11_infinite_loop:
C - - - - - 0x00EC21 03:EC11: AD 02 20  LDA $2002
C - - - - - 0x00EC24 03:EC14: 10 FB     BPL bra_EC11_infinite_loop
C - - - - - 0x00EC26 03:EC16: A2 FE     LDX #$FE
C - - - - - 0x00EC28 03:EC18: 9A        TXS
C - - - - - 0x00EC29 03:EC19: A9 00     LDA #$00
C - - - - - 0x00EC2B 03:EC1B: 8D 15 40  STA $4015
C - - - - - 0x00EC2E 03:EC1E: 8D 17 40  STA $4017
C - - - - - 0x00EC31 03:EC21: 8D 10 40  STA $4010
C - - - - - 0x00EC34 03:EC24: A9 00     LDA #$00
C - - - - - 0x00EC36 03:EC26: A8        TAY
bra_EC27_loop:
C - - - - - 0x00EC37 03:EC27: 99 00 00  STA $0000,Y
C - - - - - 0x00EC3A 03:EC2A: 99 00 01  STA $0100,Y
C - - - - - 0x00EC3D 03:EC2D: 99 00 02  STA $0200,Y
C - - - - - 0x00EC40 03:EC30: 99 00 03  STA $0300,Y
C - - - - - 0x00EC43 03:EC33: 99 00 04  STA $0400,Y
C - - - - - 0x00EC46 03:EC36: 99 00 05  STA $0500,Y
C - - - - - 0x00EC49 03:EC39: 99 00 06  STA $0600,Y
C - - - - - 0x00EC4C 03:EC3C: 99 00 07  STA $0700,Y
C - - - - - 0x00EC4F 03:EC3F: C8        INY
C - - - - - 0x00EC50 03:EC40: D0 E5     BNE bra_EC27_loop
C - - - - - 0x00EC52 03:EC42: A9 1E     LDA #$1E
C - - - - - 0x00EC54 03:EC44: 20 8E EC  JSR sub_EC8E_write_9FFF
C - - - - - 0x00EC57 03:EC47: A9 00     LDA #$00
C - - - - - 0x00EC59 03:EC49: 20 A2 EC  JSR sub_ECA2_chr_bankswitch_1
C - - - - - 0x00EC5C 03:EC4C: A9 00     LDA #$00
C - - - - - 0x00EC5E 03:EC4E: 20 B6 EC  JSR sub_ECB6_chr_bankswitch_2
C - - - - - 0x00EC61 03:EC51: A9 02     LDA #con_prg_bank + $02
C - - - - - 0x00EC63 03:EC53: 20 30 F1  JSR sub_F130
C - - - - - 0x00EC66 03:EC56: A9 FF     LDA #$FF
C - - - - - 0x00EC68 03:EC58: 85 0D     STA ram_bsw_stack_index
C - - - - - 0x00EC6A 03:EC5A: A9 02     LDA #con_prg_bank + $02
C - - - - - 0x00EC6C 03:EC5C: 20 29 F1  JSR sub_F129
C - - - - - 0x00EC6F 03:EC5F: A9 00     LDA #< tbl_0x009E10_music_data
C - - - - - 0x00EC71 03:EC61: 85 3D     STA ram_003D
C - - - - - 0x00EC73 03:EC63: A9 9E     LDA #> tbl_0x009E10_music_data
C - - - - - 0x00EC75 03:EC65: 85 3E     STA ram_003E
C - - - - - 0x00EC77 03:EC67: 20 8E F7  JSR sub_F78E_clear_0700_07D7
C - - - - - 0x00EC7A 03:EC6A: 20 46 F1  JSR sub_F146
C - - - - - 0x00EC7D 03:EC6D: AD 02 20  LDA $2002
C - - - - - 0x00EC80 03:EC70: 20 EC EC  JSR sub_ECEC
C - - - - - 0x00EC83 03:EC73: A9 00     LDA #$00
C - - - - - 0x00EC85 03:EC75: 8D 05 20  STA $2005
C - - - - - 0x00EC88 03:EC78: 8D 05 20  STA $2005
C - - - - - 0x00EC8B 03:EC7B: 85 F0     STA ram_00F0_flag   ; con_00F0_00
C - - - - - 0x00EC8D 03:EC7D: A9 00     LDA #$00
C - - - - - 0x00EC8F 03:EC7F: 85 FE     STA ram_for_2001
C - - - - - 0x00EC91 03:EC81: 8D 01 20  STA $2001
C - - - - - 0x00EC94 03:EC84: A9 90     LDA #$90
C - - - - - 0x00EC96 03:EC86: 85 FF     STA ram_for_2000
C - - - - - 0x00EC98 03:EC88: 8D 00 20  STA $2000
C - - - - - 0x00EC9B 03:EC8B: 4C 86 FF  JMP loc_FF86_logo_and_title_script



sub_EC8E_write_9FFF:
C - - - - - 0x00EC9E 03:EC8E: 8D FF 9F  STA $9FFF
C - - - - - 0x00ECA1 03:EC91: 4A        LSR
C - - - - - 0x00ECA2 03:EC92: 8D FF 9F  STA $9FFF
C - - - - - 0x00ECA5 03:EC95: 4A        LSR
C - - - - - 0x00ECA6 03:EC96: 8D FF 9F  STA $9FFF
C - - - - - 0x00ECA9 03:EC99: 4A        LSR
C - - - - - 0x00ECAA 03:EC9A: 8D FF 9F  STA $9FFF
C - - - - - 0x00ECAD 03:EC9D: 4A        LSR
C - - - - - 0x00ECAE 03:EC9E: 8D FF 9F  STA $9FFF
C - - - - - 0x00ECB1 03:ECA1: 60        RTS



sub_ECA2_chr_bankswitch_1:
C - - - - - 0x00ECB2 03:ECA2: 8D FF BF  STA $BFFF
C - - - - - 0x00ECB5 03:ECA5: 4A        LSR
C - - - - - 0x00ECB6 03:ECA6: 8D FF BF  STA $BFFF
C - - - - - 0x00ECB9 03:ECA9: 4A        LSR
C - - - - - 0x00ECBA 03:ECAA: 8D FF BF  STA $BFFF
C - - - - - 0x00ECBD 03:ECAD: 4A        LSR
C - - - - - 0x00ECBE 03:ECAE: 8D FF BF  STA $BFFF
C - - - - - 0x00ECC1 03:ECB1: 4A        LSR
C - - - - - 0x00ECC2 03:ECB2: 8D FF BF  STA $BFFF
C - - - - - 0x00ECC5 03:ECB5: 60        RTS



sub_ECB6_chr_bankswitch_2:
C - - - - - 0x00ECC6 03:ECB6: 8D FF DF  STA $DFFF
C - - - - - 0x00ECC9 03:ECB9: 4A        LSR
C - - - - - 0x00ECCA 03:ECBA: 8D FF DF  STA $DFFF
C - - - - - 0x00ECCD 03:ECBD: 4A        LSR
C - - - - - 0x00ECCE 03:ECBE: 8D FF DF  STA $DFFF
C - - - - - 0x00ECD1 03:ECC1: 4A        LSR
C - - - - - 0x00ECD2 03:ECC2: 8D FF DF  STA $DFFF
C - - - - - 0x00ECD5 03:ECC5: 4A        LSR
C - - - - - 0x00ECD6 03:ECC6: 8D FF DF  STA $DFFF
C - - - - - 0x00ECD9 03:ECC9: 60        RTS



sub_ECCA_prg_bankswitch:
C - - - - - 0x00ECDA 03:ECCA: 48        PHA
C - - - - - 0x00ECDB 03:ECCB: A5 F0     LDA ram_00F0_flag
C - - - - - 0x00ECDD 03:ECCD: 09 08     ORA #con_00F0_08
C - - - - - 0x00ECDF 03:ECCF: 85 F0     STA ram_00F0_flag
C - - - - - 0x00ECE1 03:ECD1: 68        PLA
C - - - - - 0x00ECE2 03:ECD2: 8D FF FF  STA $FFFF
C - - - - - 0x00ECE5 03:ECD5: 4A        LSR
C - - - - - 0x00ECE6 03:ECD6: 8D FF FF  STA $FFFF
C - - - - - 0x00ECE9 03:ECD9: 4A        LSR
C - - - - - 0x00ECEA 03:ECDA: 8D FF FF  STA $FFFF
C - - - - - 0x00ECED 03:ECDD: 4A        LSR
C - - - - - 0x00ECEE 03:ECDE: 8D FF FF  STA $FFFF
C - - - - - 0x00ECF1 03:ECE1: 4A        LSR
C - - - - - 0x00ECF2 03:ECE2: 8D FF FF  STA $FFFF
C - - - - - 0x00ECF5 03:ECE5: A5 F0     LDA ram_00F0_flag
C - - - - - 0x00ECF7 03:ECE7: 29 F7     AND #con_00F0_08 ^ $FF
C - - - - - 0x00ECF9 03:ECE9: 85 F0     STA ram_00F0_flag
C - - - - - 0x00ECFB 03:ECEB: 60        RTS



sub_ECEC:
C - - - - - 0x00ECFC 03:ECEC: A9 1E     LDA #$1E
C - - - - - 0x00ECFE 03:ECEE: 20 8E EC  JSR sub_EC8E_write_9FFF
; bzk optimize, LDA 00 is enough, 47 is not used anywhere, only bit3 matters
C - - - - - 0x00ED01 03:ECF1: A9 47     LDA #$47 + $00
C - - - - - 0x00ED03 03:ECF3: 85 FA     STA ram_00FA_flag
C - - - - - 0x00ED05 03:ECF5: 60        RTS



sub_ECF6:
C - - - - - 0x00ED06 03:ECF6: A9 1F     LDA #$1F
C - - - - - 0x00ED08 03:ECF8: 20 8E EC  JSR sub_EC8E_write_9FFF
; bzk optimize, LDA 08 is enough, 47 is not used anywhere, only bit3 matters
C - - - - - 0x00ED0B 03:ECFB: A9 4F     LDA #$47 + $08
C - - - - - 0x00ED0D 03:ECFD: 85 FA     STA ram_00FA_flag
C - - - - - 0x00ED0F 03:ECFF: 60        RTS



sub_ED00:
sub_0x00ED10:
C - - - - - 0x00ED10 03:ED00: 20 CD EE  JSR sub_EECD_wait_1_frm
C - - - - - 0x00ED13 03:ED03: A5 33     LDA ram_chr_bank_1
C - - - - - 0x00ED15 03:ED05: 20 A2 EC  JSR sub_ECA2_chr_bankswitch_1
C - - - - - 0x00ED18 03:ED08: A5 34     LDA ram_chr_bank_2
C - - - - - 0x00ED1A 03:ED0A: 20 B6 EC  JSR sub_ECB6_chr_bankswitch_2
C - - - - - 0x00ED1D 03:ED0D: 60        RTS



sub_ED0E_increase_indirect_0037:
C - - - - - 0x00ED1E 03:ED0E: A5 37     LDA ram_0037
C - - - - - 0x00ED20 03:ED10: 18        CLC
C - - - - - 0x00ED21 03:ED11: 69 01     ADC #< $0001
C - - - - - 0x00ED23 03:ED13: 85 37     STA ram_0037
C - - - - - 0x00ED25 03:ED15: A5 38     LDA ram_0038
C - - - - - 0x00ED27 03:ED17: 69 00     ADC #> $0001
C - - - - - 0x00ED29 03:ED19: 85 38     STA ram_0038
C - - - - - 0x00ED2B 03:ED1B: 60        RTS


; bzk garbage
; almost the same code as 0x00ED70
- - - - - - 0x00ED2C 03:ED1C: 68        PLA
- - - - - - 0x00ED2D 03:ED1D: 85 37     STA ram_0037
- - - - - - 0x00ED2F 03:ED1F: 68        PLA
- - - - - - 0x00ED30 03:ED20: 85 38     STA ram_0038
- - - - - - 0x00ED32 03:ED22: 8A        TXA
- - - - - - 0x00ED33 03:ED23: 48        PHA
- - - - - - 0x00ED34 03:ED24: 98        TYA
- - - - - - 0x00ED35 03:ED25: 48        PHA
- - - - - - 0x00ED36 03:ED26: 20 C6 F5  JSR sub_F5C6
- - - - - - 0x00ED39 03:ED29: 20 E3 EE  JSR sub_EEE3
- - - - - - 0x00ED3C 03:ED2C: 20 DF F5  JSR sub_F5DF
- - - - - - 0x00ED3F 03:ED2F: 20 5A EE  JSR sub_EE5A_disable_nmi
- - - - - - 0x00ED42 03:ED32: 20 0E ED  JSR sub_ED0E_increase_indirect_0037
- - - - - - 0x00ED45 03:ED35: AD 02 20  LDA $2002
- - - - - - 0x00ED48 03:ED38: A9 24     LDA #> $2400
- - - - - - 0x00ED4A 03:ED3A: 8D 06 20  STA $2006
- - - - - - 0x00ED4D 03:ED3D: A9 00     LDA #< $2400
- - - - - - 0x00ED4F 03:ED3F: 8D 06 20  STA $2006
- - - - - - 0x00ED52 03:ED42: 85 1E     STA ram_001E
- - - - - - 0x00ED54 03:ED44: 85 1F     STA ram_001F
- - - - - - 0x00ED56 03:ED46: 85 1C     STA ram_001C
- - - - - - 0x00ED58 03:ED48: 20 FF ED  JSR sub_EDFF_decompress_screen_data
- - - - - - 0x00ED5B 03:ED4B: 20 64 EE  JSR sub_EE64_enable_nmi
- - - - - - 0x00ED5E 03:ED4E: 20 D1 F5  JSR sub_F5D1
- - - - - - 0x00ED61 03:ED51: 20 EA EE  JSR sub_EEEA
- - - - - - 0x00ED64 03:ED54: 20 F6 F5  JSR sub_F5F6
- - - - - - 0x00ED67 03:ED57: 20 E3 EE  JSR sub_EEE3
- - - - - - 0x00ED6A 03:ED5A: 68        PLA
- - - - - - 0x00ED6B 03:ED5B: A8        TAY
- - - - - - 0x00ED6C 03:ED5C: 68        PLA
- - - - - - 0x00ED6D 03:ED5D: AA        TAX
- - - - - - 0x00ED6E 03:ED5E: 60        RTS



sub_ED5F_draw_screen_handler:
sub_0x00ED6F_draw_screen_handler:
C - - - - - 0x00ED6F 03:ED5F: 68        PLA
C - - - - - 0x00ED70 03:ED60: 85 37     STA ram_0037
C - - - - - 0x00ED72 03:ED62: 68        PLA
C - - - - - 0x00ED73 03:ED63: 85 38     STA ram_0038
C - - - - - 0x00ED75 03:ED65: 8A        TXA
C - - - - - 0x00ED76 03:ED66: 48        PHA
C - - - - - 0x00ED77 03:ED67: 98        TYA
C - - - - - 0x00ED78 03:ED68: 48        PHA
C - - - - - 0x00ED79 03:ED69: 20 C6 F5  JSR sub_F5C6
C - - - - - 0x00ED7C 03:ED6C: 20 E3 EE  JSR sub_EEE3
C - - - - - 0x00ED7F 03:ED6F: 20 DF F5  JSR sub_F5DF
C - - - - - 0x00ED82 03:ED72: 20 5A EE  JSR sub_EE5A_disable_nmi
C - - - - - 0x00ED85 03:ED75: 20 0E ED  JSR sub_ED0E_increase_indirect_0037
C - - - - - 0x00ED88 03:ED78: AD 02 20  LDA $2002
C - - - - - 0x00ED8B 03:ED7B: A9 20     LDA #> $2000
C - - - - - 0x00ED8D 03:ED7D: 8D 06 20  STA $2006
C - - - - - 0x00ED90 03:ED80: A9 00     LDA #< $2000
C - - - - - 0x00ED92 03:ED82: 8D 06 20  STA $2006
C - - - - - 0x00ED95 03:ED85: 85 1E     STA ram_001E
C - - - - - 0x00ED97 03:ED87: 85 1F     STA ram_001F
C - - - - - 0x00ED99 03:ED89: 85 1C     STA ram_001C
C - - - - - 0x00ED9B 03:ED8B: 20 A2 ED  JSR sub_EDA2_decompress_screen_data
C - - - - - 0x00ED9E 03:ED8E: 20 64 EE  JSR sub_EE64_enable_nmi
C - - - - - 0x00EDA1 03:ED91: 20 D1 F5  JSR sub_F5D1
C - - - - - 0x00EDA4 03:ED94: 20 EA EE  JSR sub_EEEA
C - - - - - 0x00EDA7 03:ED97: 20 F6 F5  JSR sub_F5F6
C - - - - - 0x00EDAA 03:ED9A: 20 E3 EE  JSR sub_EEE3
C - - - - - 0x00EDAD 03:ED9D: 68        PLA
C - - - - - 0x00EDAE 03:ED9E: A8        TAY
C - - - - - 0x00EDAF 03:ED9F: 68        PLA
C - - - - - 0x00EDB0 03:EDA0: AA        TAX
C - - - - - 0x00EDB1 03:EDA1: 60        RTS



sub_EDA2_decompress_screen_data:
; FF FF 00 - end token
; FF FF xx - xx is a counter for FF tile
; FF ?? xx - print ?? tile xx times
; ??       - if bytes start from something other than FF, print those bytes (tiles) until next FF is found
loc_EDA2_loop:
bra_EDC9_loop:
C D 3 - - - 0x00EDB2 03:EDA2: 20 50 EE  JSR sub_EE50_read_screen_byte_and_increase_pointer
C - - - - - 0x00EDB5 03:EDA5: C9 FF     CMP #$FF
C - - - - - 0x00EDB7 03:EDA7: F0 06     BEQ bra_EDAF_it_is_control_byte
C - - - - - 0x00EDB9 03:EDA9: 20 D1 ED  JSR sub_EDD1
C - - - - - 0x00EDBC 03:EDAC: 4C A2 ED  JMP loc_EDA2_loop
bra_EDAF_it_is_control_byte:
C - - - - - 0x00EDBF 03:EDAF: 20 50 EE  JSR sub_EE50_read_screen_byte_and_increase_pointer
C - - - - - 0x00EDC2 03:EDB2: C9 FF     CMP #$FF
C - - - - - 0x00EDC4 03:EDB4: D0 0D     BNE bra_EDC3_not_control_byte
C - - - - - 0x00EDC6 03:EDB6: 20 50 EE  JSR sub_EE50_read_screen_byte_and_increase_pointer
C - - - - - 0x00EDC9 03:EDB9: C9 00     CMP #$00
C - - - - - 0x00EDCB 03:EDBB: D0 01     BNE bra_EDBE_continue_reading_bytes
C - - - - - 0x00EDCD 03:EDBD: 60        RTS     ; otherwise quit
bra_EDBE_continue_reading_bytes:
C - - - - - 0x00EDCE 03:EDBE: AA        TAX
C - - - - - 0x00EDCF 03:EDBF: A9 FF     LDA #$FF
C - - - - - 0x00EDD1 03:EDC1: D0 06     BNE bra_EDC9_print_tile    ; jmp
bra_EDC3_not_control_byte:
C - - - - - 0x00EDD3 03:EDC3: 48        PHA
C - - - - - 0x00EDD4 03:EDC4: 20 50 EE  JSR sub_EE50_read_screen_byte_and_increase_pointer
C - - - - - 0x00EDD7 03:EDC7: AA        TAX
C - - - - - 0x00EDD8 03:EDC8: 68        PLA
bra_EDC9_print_tile:
bra_EDA2_loop:
C - - - - - 0x00EDD9 03:EDC9: 20 D1 ED  JSR sub_EDD1
C - - - - - 0x00EDDC 03:EDCC: CA        DEX
C - - - - - 0x00EDDD 03:EDCD: D0 FA     BNE bra_EDA2_loop
C - - - - - 0x00EDDF 03:EDCF: F0 D1     BEQ bra_EDC9_loop   ; jmp



sub_EDD1:
; bzk optimize, PHA is useless, delete PLA at the end, and also delete PHA at 0x00EE3E
C - - - - - 0x00EDE1 03:EDD1: 48        PHA
C - - - - - 0x00EDE2 03:EDD2: 8D 07 20  STA $2007
C - - - - - 0x00EDE5 03:EDD5: 85 1D     STA ram_001D
C - - - - - 0x00EDE7 03:EDD7: A5 1F     LDA ram_001F
C - - - - - 0x00EDE9 03:EDD9: C9 03     CMP #$03
C - - - - - 0x00EDEB 03:EDDB: D0 13     BNE bra_EDF0
C - - - - - 0x00EDED 03:EDDD: A5 1E     LDA ram_001E
C - - - - - 0x00EDEF 03:EDDF: C9 C0     CMP #$C0
C - - - - - 0x00EDF1 03:EDE1: 90 0D     BCC bra_EDF0
C - - - - - 0x00EDF3 03:EDE3: 8A        TXA
C - - - - - 0x00EDF4 03:EDE4: 48        PHA
C - - - - - 0x00EDF5 03:EDE5: A6 1C     LDX ram_001C
C - - - - - 0x00EDF7 03:EDE7: A5 1D     LDA ram_001D
C - - - - - 0x00EDF9 03:EDE9: 9D 00 03  STA ram_ppu_buffer_1,X
C - - - - - 0x00EDFC 03:EDEC: E6 1C     INC ram_001C
C - - - - - 0x00EDFE 03:EDEE: 68        PLA
C - - - - - 0x00EDFF 03:EDEF: AA        TAX
bra_EDF0:
loc_EDF0_increase_indirect_001E:
C - - - - - 0x00EE00 03:EDF0: A5 1E     LDA ram_001E
C - - - - - 0x00EE02 03:EDF2: 18        CLC
C - - - - - 0x00EE03 03:EDF3: 69 01     ADC #< $0001
C - - - - - 0x00EE05 03:EDF5: 85 1E     STA ram_001E
C - - - - - 0x00EE07 03:EDF7: A5 1F     LDA ram_001F
C - - - - - 0x00EE09 03:EDF9: 69 00     ADC #> $0001
C - - - - - 0x00EE0B 03:EDFB: 85 1F     STA ram_001F
C - - - - - 0x00EE0D 03:EDFD: 68        PLA
C - - - - - 0x00EE0E 03:EDFE: 60        RTS



sub_EDFF_decompress_screen_data:
loc_EDFF_loop:
bra_EDFF_loop:
- - - - - - 0x00EE0F 03:EDFF: 20 50 EE  JSR sub_EE50_read_screen_byte_and_increase_pointer
- - - - - - 0x00EE12 03:EE02: C9 FF     CMP #$FF
- - - - - - 0x00EE14 03:EE04: F0 06     BEQ bra_EE0C
- - - - - - 0x00EE16 03:EE06: 20 2E EE  JSR sub_EE2E
- - - - - - 0x00EE19 03:EE09: 4C FF ED  JMP loc_EDFF_loop
bra_EE0C:
- - - - - - 0x00EE1C 03:EE0C: 20 50 EE  JSR sub_EE50_read_screen_byte_and_increase_pointer
- - - - - - 0x00EE1F 03:EE0F: C9 FF     CMP #$FF
- - - - - - 0x00EE21 03:EE11: D0 0D     BNE bra_EE20
- - - - - - 0x00EE23 03:EE13: 20 50 EE  JSR sub_EE50_read_screen_byte_and_increase_pointer
; bzk optimize
- - - - - - 0x00EE26 03:EE16: C9 00     CMP #$00
- - - - - - 0x00EE28 03:EE18: D0 01     BNE bra_EE1B
- - - - - - 0x00EE2A 03:EE1A: 60        RTS
bra_EE1B:
- - - - - - 0x00EE2B 03:EE1B: AA        TAX
- - - - - - 0x00EE2C 03:EE1C: A9 FF     LDA #$FF
- - - - - - 0x00EE2E 03:EE1E: D0 06     BNE bra_EE26    ; jmp
bra_EE20:
- - - - - - 0x00EE30 03:EE20: 48        PHA
- - - - - - 0x00EE31 03:EE21: 20 50 EE  JSR sub_EE50_read_screen_byte_and_increase_pointer
- - - - - - 0x00EE34 03:EE24: AA        TAX
- - - - - - 0x00EE35 03:EE25: 68        PLA
bra_EE26:
bra_EE26_loop:
- - - - - - 0x00EE36 03:EE26: 20 2E EE  JSR sub_EE2E
- - - - - - 0x00EE39 03:EE29: CA        DEX
- - - - - - 0x00EE3A 03:EE2A: D0 FA     BNE bra_EE26_loop
- - - - - - 0x00EE3C 03:EE2C: F0 D1     BEQ bra_EDFF_loop   ; jmp



sub_EE2E:
- - - - - - 0x00EE3E 03:EE2E: 48        PHA
- - - - - - 0x00EE3F 03:EE2F: 8D 07 20  STA $2007
- - - - - - 0x00EE42 03:EE32: 85 1D     STA ram_001D
- - - - - - 0x00EE44 03:EE34: A5 1F     LDA ram_001F
- - - - - - 0x00EE46 03:EE36: C9 03     CMP #$03
- - - - - - 0x00EE48 03:EE38: D0 B6     BNE bra_EDF0
- - - - - - 0x00EE4A 03:EE3A: A5 1E     LDA ram_001E
- - - - - - 0x00EE4C 03:EE3C: C9 C0     CMP #$C0
- - - - - - 0x00EE4E 03:EE3E: 90 B0     BCC bra_EDF0
- - - - - - 0x00EE50 03:EE40: 8A        TXA
- - - - - - 0x00EE51 03:EE41: 48        PHA
- - - - - - 0x00EE52 03:EE42: A6 1C     LDX ram_001C
- - - - - - 0x00EE54 03:EE44: A5 1D     LDA ram_001D
- - - - - - 0x00EE56 03:EE46: 9D 40 03  STA ram_attr_buffer,X
- - - - - - 0x00EE59 03:EE49: E6 1C     INC ram_001C
- - - - - - 0x00EE5B 03:EE4B: 68        PLA
- - - - - - 0x00EE5C 03:EE4C: AA        TAX
- - - - - - 0x00EE5D 03:EE4D: 4C F0 ED  JMP loc_EDF0_increase_indirect_001E



sub_EE50_read_screen_byte_and_increase_pointer:
C - - - - - 0x00EE60 03:EE50: A0 00     LDY #$00
C - - - - - 0x00EE62 03:EE52: B1 37     LDA (ram_0037),Y
C - - - - - 0x00EE64 03:EE54: 48        PHA
C - - - - - 0x00EE65 03:EE55: 20 0E ED  JSR sub_ED0E_increase_indirect_0037
C - - - - - 0x00EE68 03:EE58: 68        PLA
C - - - - - 0x00EE69 03:EE59: 60        RTS



sub_EE5A_disable_nmi:
C - - - - - 0x00EE6A 03:EE5A: A5 FF     LDA ram_for_2000
C - - - - - 0x00EE6C 03:EE5C: 29 7F     AND #$7F
C - - - - - 0x00EE6E 03:EE5E: 85 FF     STA ram_for_2000
C - - - - - 0x00EE70 03:EE60: 8D 00 20  STA $2000
C - - - - - 0x00EE73 03:EE63: 60        RTS



sub_EE64_enable_nmi:
C - - - - - 0x00EE74 03:EE64: AD 02 20  LDA $2002
C - - - - - 0x00EE77 03:EE67: A5 FF     LDA ram_for_2000
C - - - - - 0x00EE79 03:EE69: 09 80     ORA #$80
C - - - - - 0x00EE7B 03:EE6B: 85 FF     STA ram_for_2000
C - - - - - 0x00EE7D 03:EE6D: 8D 00 20  STA $2000
C - - - - - 0x00EE80 03:EE70: 60        RTS



vec_EE71_IRQ:   ; bzk optimize, move to 0x00EFF7
- - - - - - 0x00EE81 03:EE71: 40        RTI



sub_EE72_read_joystick_regs:
sub_0x00EE82_read_joystick_regs:
C - - - - - 0x00EE82 03:EE72: 98        TYA
C - - - - - 0x00EE83 03:EE73: 48        PHA
C - - - - - 0x00EE84 03:EE74: 8A        TXA
C - - - - - 0x00EE85 03:EE75: 48        PHA
C - - - - - 0x00EE86 03:EE76: 20 9F EE  JSR sub_EE9F_read_input
bra_EE79_loop:
C - - - - - 0x00EE89 03:EE79: A4 F5     LDY ram_btn_press
C - - - - - 0x00EE8B 03:EE7B: A5 F6     LDA ram_btn_press + $01
C - - - - - 0x00EE8D 03:EE7D: 48        PHA
C - - - - - 0x00EE8E 03:EE7E: 20 9F EE  JSR sub_EE9F_read_input
C - - - - - 0x00EE91 03:EE81: 68        PLA
C - - - - - 0x00EE92 03:EE82: C5 F6     CMP ram_btn_press + $01
C - - - - - 0x00EE94 03:EE84: D0 F3     BNE bra_EE79_loop
C - - - - - 0x00EE96 03:EE86: C4 F5     CPY ram_btn_press
C - - - - - 0x00EE98 03:EE88: D0 EF     BNE bra_EE79_loop
C - - - - - 0x00EE9A 03:EE8A: A2 01     LDX #$01
bra_EE8C_loop:
C - - - - - 0x00EE9C 03:EE8C: B5 F5     LDA ram_btn_press,X
C - - - - - 0x00EE9E 03:EE8E: A8        TAY
C - - - - - 0x00EE9F 03:EE8F: 55 F7     EOR ram_btn_hold,X
C - - - - - 0x00EEA1 03:EE91: 35 F5     AND ram_btn_press,X
C - - - - - 0x00EEA3 03:EE93: 95 F5     STA ram_btn_press,X
C - - - - - 0x00EEA5 03:EE95: 94 F7     STY ram_btn_hold,X
C - - - - - 0x00EEA7 03:EE97: CA        DEX
C - - - - - 0x00EEA8 03:EE98: 10 F2     BPL bra_EE8C_loop
C - - - - - 0x00EEAA 03:EE9A: 68        PLA
C - - - - - 0x00EEAB 03:EE9B: AA        TAX
C - - - - - 0x00EEAC 03:EE9C: 68        PLA
C - - - - - 0x00EEAD 03:EE9D: A8        TAY
C - - - - - 0x00EEAE 03:EE9E: 60        RTS



sub_EE9F_read_input:
; bzk optimize, LDX 01
C - - - - - 0x00EEAF 03:EE9F: A6 FB     LDX ram_00FB_useless_00
C - - - - - 0x00EEB1 03:EEA1: E8        INX
C - - - - - 0x00EEB2 03:EEA2: 8E 16 40  STX $4016
C - - - - - 0x00EEB5 03:EEA5: CA        DEX
C - - - - - 0x00EEB6 03:EEA6: 8E 16 40  STX $4016
C - - - - - 0x00EEB9 03:EEA9: A2 08     LDX #$08
bra_EEAB_loop:
C - - - - - 0x00EEBB 03:EEAB: AD 16 40  LDA $4016
C - - - - - 0x00EEBE 03:EEAE: 4A        LSR
C - - - - - 0x00EEBF 03:EEAF: 26 F5     ROL ram_btn_press
C - - - - - 0x00EEC1 03:EEB1: 4A        LSR
C - - - - - 0x00EEC2 03:EEB2: 26 10     ROL ram_0010
C - - - - - 0x00EEC4 03:EEB4: AD 17 40  LDA $4017
C - - - - - 0x00EEC7 03:EEB7: 4A        LSR
C - - - - - 0x00EEC8 03:EEB8: 26 F6     ROL ram_btn_press + $01
C - - - - - 0x00EECA 03:EEBA: 4A        LSR
C - - - - - 0x00EECB 03:EEBB: 26 11     ROL ram_0011
C - - - - - 0x00EECD 03:EEBD: CA        DEX
C - - - - - 0x00EECE 03:EEBE: D0 EB     BNE bra_EEAB_loop
C - - - - - 0x00EED0 03:EEC0: A5 10     LDA ram_0010
C - - - - - 0x00EED2 03:EEC2: 05 F5     ORA ram_btn_press
C - - - - - 0x00EED4 03:EEC4: 85 F5     STA ram_btn_press
C - - - - - 0x00EED6 03:EEC6: A5 11     LDA ram_0011
C - - - - - 0x00EED8 03:EEC8: 05 F6     ORA ram_btn_press + $01
C - - - - - 0x00EEDA 03:EECA: 85 F6     STA ram_btn_press + $01
C - - - - - 0x00EEDC 03:EECC: 60        RTS



sub_EECD_wait_1_frm:
sub_0x00EEDD_wait_1_frm:
; wait 1 frame
C - - - - - 0x00EEDD 03:EECD: A5 F0     LDA ram_00F0_flag
C - - - - - 0x00EEDF 03:EECF: 09 02     ORA #con_00F0_02
C - - - - - 0x00EEE1 03:EED1: 85 F0     STA ram_00F0_flag
C - - - - - 0x00EEE3 03:EED3: A9 02     LDA #con_00F0_02
bra_EED5_infinite_loop:
C - - - - - 0x00EEE5 03:EED5: 25 F0     AND ram_00F0_flag
C - - - - - 0x00EEE7 03:EED7: D0 FC     BNE bra_EED5_infinite_loop
C - - - - - 0x00EEE9 03:EED9: 60        RTS



loc_EEDA:
sub_EEDA:
C D 3 - - - 0x00EEEA 03:EEDA: 05 18     ORA ram_0018_flag
C - - - - - 0x00EEEC 03:EEDC: 85 18     STA ram_0018_flag
C - - - - - 0x00EEEE 03:EEDE: 60        RTS



sub_EEDF:
C - - - - - 0x00EEEF 03:EEDF: A9 08     LDA #$08
C - - - - - 0x00EEF1 03:EEE1: D0 02     BNE bra_EEE5    ; jmp



sub_EEE3:
C - - - - - 0x00EEF3 03:EEE3: A9 FF     LDA #$FF
bra_EEE5:
bra_EEE5_infinite_loop:
C - - - - - 0x00EEF5 03:EEE5: 25 18     AND ram_0018_flag
C - - - - - 0x00EEF7 03:EEE7: D0 FC     BNE bra_EEE5_infinite_loop
C - - - - - 0x00EEF9 03:EEE9: 60        RTS



sub_EEEA:
sub_0x00EEFA:
C - - - - - 0x00EEFA 03:EEEA: 8A        TXA
C - - - - - 0x00EEFB 03:EEEB: 48        PHA
C - - - - - 0x00EEFC 03:EEEC: A5 24     LDA ram_0024
C - - - - - 0x00EEFE 03:EEEE: D0 07     BNE bra_EEF7
C - - - - - 0x00EF00 03:EEF0: A9 F8     LDA #$F8
C - - - - - 0x00EF02 03:EEF2: 8D 00 02  STA ram_spr_Y
C - - - - - 0x00EF05 03:EEF5: A9 01     LDA #$01
bra_EEF7:
C - - - - - 0x00EF07 03:EEF7: 0A        ASL
C - - - - - 0x00EF08 03:EEF8: 0A        ASL
C - - - - - 0x00EF09 03:EEF9: AA        TAX
loc_EEFA_loop:
C D 3 - - - 0x00EF0A 03:EEFA: E0 00     CPX #$00
C - - - - - 0x00EF0C 03:EEFC: F0 0C     BEQ bra_EF0A
C - - - - - 0x00EF0E 03:EEFE: A9 F8     LDA #$F8
C - - - - - 0x00EF10 03:EF00: 9D 00 02  STA ram_spr_Y,X
C - - - - - 0x00EF13 03:EF03: E8        INX
C - - - - - 0x00EF14 03:EF04: E8        INX
C - - - - - 0x00EF15 03:EF05: E8        INX
C - - - - - 0x00EF16 03:EF06: E8        INX
C - - - - - 0x00EF17 03:EF07: 4C FA EE  JMP loc_EEFA_loop   ; bzk optimize
bra_EF0A:
C - - - - - 0x00EF1A 03:EF0A: A9 00     LDA #$00
C - - - - - 0x00EF1C 03:EF0C: 85 24     STA ram_0024
C - - - - - 0x00EF1E 03:EF0E: 20 CD EE  JSR sub_EECD_wait_1_frm
C - - - - - 0x00EF21 03:EF11: 68        PLA
C - - - - - 0x00EF22 03:EF12: AA        TAX
C - - - - - 0x00EF23 03:EF13: 60        RTS


; bzk garbage
- - - - - - 0x00EF24 03:EF14: A5 F0     LDA ram_00F0_flag
- - - - - - 0x00EF26 03:EF16: 29 BF     AND #con_00F0_40 ^ $FF
- - - - - - 0x00EF28 03:EF18: 85 F0     STA ram_00F0_flag
- - - - - - 0x00EF2A 03:EF1A: 60        RTS


; bzk garbage
- - - - - - 0x00EF2B 03:EF1B: A9 00     LDA #$00
- - - - - - 0x00EF2D 03:EF1D: 85 24     STA ram_0024
- - - - - - 0x00EF2F 03:EF1F: 20 EA EE  JSR sub_EEEA
- - - - - - 0x00EF32 03:EF22: A5 F0     LDA ram_00F0_flag
- - - - - - 0x00EF34 03:EF24: 09 40     ORA #con_00F0_40
- - - - - - 0x00EF36 03:EF26: 85 F0     STA ram_00F0_flag
- - - - - - 0x00EF38 03:EF28: 60        RTS


; bzk garbage
- - - - - - 0x00EF39 03:EF29: A2 00     LDX #$00
bra_EF2B_loop:
- - - - - - 0x00EF3B 03:EF2B: 20 37 EF  JSR sub_EF37
- - - - - - 0x00EF3E 03:EF2E: E8        INX
- - - - - - 0x00EF3F 03:EF2F: E8        INX
- - - - - - 0x00EF40 03:EF30: E8        INX
- - - - - - 0x00EF41 03:EF31: E8        INX
- - - - - - 0x00EF42 03:EF32: E0 68     CPX #$68
- - - - - - 0x00EF44 03:EF34: D0 F5     BNE bra_EF2B_loop
- - - - - - 0x00EF46 03:EF36: 60        RTS



sub_EF37:
; bzk garbage
- - - - - - 0x00EF47 03:EF37: 86 02     STX $02 ; ram_0002
- - - - - - 0x00EF49 03:EF39: A9 FC     LDA #$FC
- - - - - - 0x00EF4B 03:EF3B: 38        SEC
- - - - - - 0x00EF4C 03:EF3C: E5 02     SBC $02 ; ram_0002
- - - - - - 0x00EF4E 03:EF3E: A8        TAY
- - - - - - 0x00EF4F 03:EF3F: B9 00 02  LDA ram_spr_Y,Y
- - - - - - 0x00EF52 03:EF42: 48        PHA
- - - - - - 0x00EF53 03:EF43: BD 30 02  LDA ram_spr_Y + $30,X
- - - - - - 0x00EF56 03:EF46: 99 00 02  STA ram_spr_Y,Y
- - - - - - 0x00EF59 03:EF49: 68        PLA
- - - - - - 0x00EF5A 03:EF4A: 9D 30 02  STA ram_spr_Y + $30,X
- - - - - - 0x00EF5D 03:EF4D: B9 01 02  LDA ram_spr_T,Y
- - - - - - 0x00EF60 03:EF50: 48        PHA
- - - - - - 0x00EF61 03:EF51: BD 31 02  LDA ram_spr_T + $30,X
- - - - - - 0x00EF64 03:EF54: 99 01 02  STA ram_spr_T,Y
- - - - - - 0x00EF67 03:EF57: 68        PLA
- - - - - - 0x00EF68 03:EF58: 9D 31 02  STA ram_spr_T + $30,X
- - - - - - 0x00EF6B 03:EF5B: B9 02 02  LDA ram_spr_A,Y
- - - - - - 0x00EF6E 03:EF5E: 48        PHA
- - - - - - 0x00EF6F 03:EF5F: BD 32 02  LDA ram_spr_A + $30,X
- - - - - - 0x00EF72 03:EF62: 99 02 02  STA ram_spr_A,Y
- - - - - - 0x00EF75 03:EF65: 68        PLA
- - - - - - 0x00EF76 03:EF66: 9D 32 02  STA ram_spr_A + $30,X
- - - - - - 0x00EF79 03:EF69: B9 03 02  LDA ram_spr_X,Y
- - - - - - 0x00EF7C 03:EF6C: 48        PHA
- - - - - - 0x00EF7D 03:EF6D: BD 33 02  LDA ram_spr_X + $30,X
- - - - - - 0x00EF80 03:EF70: 99 03 02  STA ram_spr_X,Y
- - - - - - 0x00EF83 03:EF73: 68        PLA
- - - - - - 0x00EF84 03:EF74: 9D 33 02  STA ram_spr_X + $30,X
- - - - - - 0x00EF87 03:EF77: 60        RTS



sub_EF78_jump_to_pointers_after_jsr:
sub_0x00EF88_jump_to_pointers_after_jsr:
C - - - - - 0x00EF88 03:EF78: 84 12     STY ram_0012
C - - - - - 0x00EF8A 03:EF7A: 0A        ASL
C - - - - - 0x00EF8B 03:EF7B: A8        TAY
C - - - - - 0x00EF8C 03:EF7C: C8        INY
C - - - - - 0x00EF8D 03:EF7D: 68        PLA
C - - - - - 0x00EF8E 03:EF7E: 85 10     STA ram_0010
C - - - - - 0x00EF90 03:EF80: 68        PLA
C - - - - - 0x00EF91 03:EF81: 85 11     STA ram_0011
C - - - - - 0x00EF93 03:EF83: B1 10     LDA (ram_0010),Y
C - - - - - 0x00EF95 03:EF85: 48        PHA
C - - - - - 0x00EF96 03:EF86: C8        INY
C - - - - - 0x00EF97 03:EF87: B1 10     LDA (ram_0010),Y
C - - - - - 0x00EF99 03:EF89: 85 11     STA ram_0011
C - - - - - 0x00EF9B 03:EF8B: 68        PLA
C - - - - - 0x00EF9C 03:EF8C: 85 10     STA ram_0010
C - - - - - 0x00EF9E 03:EF8E: A4 12     LDY ram_0012
C - - - - - 0x00EFA0 03:EF90: A5 0B     LDA ram_000B
C - - - - - 0x00EFA2 03:EF92: 6C 10 00  JMP (ram_0010)



vec_EF95_NMI:
C - - - - - 0x00EFA5 03:EF95: 48        PHA
C - - - - - 0x00EFA6 03:EF96: 8A        TXA
C - - - - - 0x00EFA7 03:EF97: 48        PHA
C - - - - - 0x00EFA8 03:EF98: 98        TYA
C - - - - - 0x00EFA9 03:EF99: 48        PHA
C - - - - - 0x00EFAA 03:EF9A: AD 02 20  LDA $2002
; disable nmi
C - - - - - 0x00EFAD 03:EF9D: A5 FF     LDA ram_for_2000
C - - - - - 0x00EFAF 03:EF9F: 29 7F     AND #$7F
C - - - - - 0x00EFB1 03:EFA1: 85 FF     STA ram_for_2000
C - - - - - 0x00EFB3 03:EFA3: 8D 00 20  STA $2000
C - - - - - 0x00EFB6 03:EFA6: A5 F0     LDA ram_00F0_flag
; bzk optimize, this flag is never set, see 0x00EF26 and 0x00EF34 
C - - - - - 0x00EFB8 03:EFA8: 29 40     AND #con_00F0_40
C - - - - - 0x00EFBA 03:EFAA: D0 0E     BNE bra_EFBA
C - - - - - 0x00EFBC 03:EFAC: A5 24     LDA ram_0024
C - - - - - 0x00EFBE 03:EFAE: D0 0A     BNE bra_EFBA
C - - - - - 0x00EFC0 03:EFB0: A9 00     LDA #$00
C - - - - - 0x00EFC2 03:EFB2: 8D 03 20  STA $2003
C - - - - - 0x00EFC5 03:EFB5: A9 02     LDA #$02
C - - - - - 0x00EFC7 03:EFB7: 8D 14 40  STA $4014
bra_EFBA:
C - - - - - 0x00EFCA 03:EFBA: 20 E8 EF  JSR sub_EFE8
C - - - - - 0x00EFCD 03:EFBD: A5 18     LDA ram_0018_flag
C - - - - - 0x00EFCF 03:EFBF: 29 01     AND #con_0018_01
C - - - - - 0x00EFD1 03:EFC1: F0 0B     BEQ bra_EFCE
C - - - - - 0x00EFD3 03:EFC3: A5 FE     LDA ram_for_2001
C - - - - - 0x00EFD5 03:EFC5: 8D 01 20  STA $2001
C - - - - - 0x00EFD8 03:EFC8: A5 18     LDA ram_0018_flag
C - - - - - 0x00EFDA 03:EFCA: 29 FE     AND #con_0018_01 ^ $FF
C - - - - - 0x00EFDC 03:EFCC: 85 18     STA ram_0018_flag
bra_EFCE:
C - - - - - 0x00EFDE 03:EFCE: 20 FC F0  JSR sub_F0FC
C - - - - - 0x00EFE1 03:EFD1: E6 25     INC ram_0025_useless
C - - - - - 0x00EFE3 03:EFD3: 20 D1 F8  JSR sub_F8D1
C - - - - - 0x00EFE6 03:EFD6: AD 02 20  LDA $2002
; enable nmi
C - - - - - 0x00EFE9 03:EFD9: A5 FF     LDA ram_for_2000
C - - - - - 0x00EFEB 03:EFDB: 09 80     ORA #$80
C - - - - - 0x00EFED 03:EFDD: 85 FF     STA ram_for_2000
C - - - - - 0x00EFEF 03:EFDF: 8D 00 20  STA $2000
C - - - - - 0x00EFF2 03:EFE2: 68        PLA
C - - - - - 0x00EFF3 03:EFE3: A8        TAY
C - - - - - 0x00EFF4 03:EFE4: 68        PLA
C - - - - - 0x00EFF5 03:EFE5: AA        TAX
C - - - - - 0x00EFF6 03:EFE6: 68        PLA
C - - - - - 0x00EFF7 03:EFE7: 40        RTI



sub_EFE8:
C - - - - - 0x00EFF8 03:EFE8: A5 18     LDA ram_0018_flag
C - - - - - 0x00EFFA 03:EFEA: 0A        ASL
C - - - - - 0x00EFFB 03:EFEB: 0A        ASL
C - - - - - 0x00EFFC 03:EFEC: 90 03     BCC bra_EFF1
C - - - - - 0x00EFFE 03:EFEE: 4C CF F0  JMP loc_F0CF
bra_EFF1:
C - - - - - 0x00F001 03:EFF1: 0A        ASL
C - - - - - 0x00F002 03:EFF2: 90 03     BCC bra_EFF7
C - - - - - 0x00F004 03:EFF4: 4C 10 F0  JMP loc_F010
bra_EFF7:
C - - - - - 0x00F007 03:EFF7: 0A        ASL
C - - - - - 0x00F008 03:EFF8: 90 03     BCC bra_EFFD
C - - - - - 0x00F00A 03:EFFA: 4C 31 F0  JMP loc_F031
bra_EFFD:
C - - - - - 0x00F00D 03:EFFD: 0A        ASL
C - - - - - 0x00F00E 03:EFFE: 90 03     BCC bra_F003
C - - - - - 0x00F010 03:F000: 4C 5B F0  JMP loc_F05B
bra_F003:
C - - - - - 0x00F013 03:F003: 0A        ASL
C - - - - - 0x00F014 03:F004: 90 03     BCC bra_F009
C - - - - - 0x00F016 03:F006: 4C B5 F0  JMP loc_F0B5
bra_F009:
C - - - - - 0x00F019 03:F009: 0A        ASL
C - - - - - 0x00F01A 03:F00A: 90 03     BCC bra_F00F_RTS
- - - - - - 0x00F01C 03:F00C: 4C 67 F0  JMP loc_F067
bra_F00F_RTS:
C - - - - - 0x00F01F 03:F00F: 60        RTS



loc_F010:
C D 3 - - - 0x00F020 03:F010: AD 02 20  LDA $2002
C - - - - - 0x00F023 03:F013: A9 23     LDA #> $23C0
C - - - - - 0x00F025 03:F015: 8D 06 20  STA $2006
C - - - - - 0x00F028 03:F018: A9 C0     LDA #< $23C0
C - - - - - 0x00F02A 03:F01A: 8D 06 20  STA $2006
C - - - - - 0x00F02D 03:F01D: A2 00     LDX #$00
bra_F01F_loop:
C - - - - - 0x00F02F 03:F01F: BD 00 03  LDA ram_ppu_buffer_1,X
C - - - - - 0x00F032 03:F022: 8D 07 20  STA $2007
C - - - - - 0x00F035 03:F025: E8        INX
C - - - - - 0x00F036 03:F026: E0 40     CPX #$40
C - - - - - 0x00F038 03:F028: D0 F5     BNE bra_F01F_loop
C - - - - - 0x00F03A 03:F02A: A5 18     LDA ram_0018_flag
C - - - - - 0x00F03C 03:F02C: 29 DF     AND #con_0018_20 ^ $FF
C - - - - - 0x00F03E 03:F02E: 85 18     STA ram_0018_flag
C - - - - - 0x00F040 03:F030: 60        RTS



loc_F031:
C D 3 - - - 0x00F041 03:F031: AD 02 20  LDA $2002
C - - - - - 0x00F044 03:F034: A2 27     LDX #$27    ; $27C0
C - - - - - 0x00F046 03:F036: A5 FA     LDA ram_00FA_flag
C - - - - - 0x00F048 03:F038: 29 08     AND #$08
C - - - - - 0x00F04A 03:F03A: F0 02     BEQ bra_F03E
C - - - - - 0x00F04C 03:F03C: A2 2B     LDX #$2B    ; $2BC0
bra_F03E:
C - - - - - 0x00F04E 03:F03E: 8A        TXA     ; bzk optimize, STX
C - - - - - 0x00F04F 03:F03F: 8D 06 20  STA $2006
C - - - - - 0x00F052 03:F042: A9 C0     LDA #$C0
C - - - - - 0x00F054 03:F044: 8D 06 20  STA $2006
C - - - - - 0x00F057 03:F047: A2 00     LDX #$00
bra_F049_loop:
C - - - - - 0x00F059 03:F049: BD 40 03  LDA ram_attr_buffer,X
C - - - - - 0x00F05C 03:F04C: 8D 07 20  STA $2007
C - - - - - 0x00F05F 03:F04F: E8        INX
C - - - - - 0x00F060 03:F050: E0 40     CPX #$40
C - - - - - 0x00F062 03:F052: D0 F5     BNE bra_F049_loop
C - - - - - 0x00F064 03:F054: A5 18     LDA ram_0018_flag
C - - - - - 0x00F066 03:F056: 29 EF     AND #con_0018_10 ^ $FF
C - - - - - 0x00F068 03:F058: 85 18     STA ram_0018_flag
C - - - - - 0x00F06A 03:F05A: 60        RTS



loc_F05B:
C D 3 - - - 0x00F06B 03:F05B: A2 00     LDX #$00
C - - - - - 0x00F06D 03:F05D: 20 A7 F0  JSR sub_F0A7
C - - - - - 0x00F070 03:F060: A5 18     LDA ram_0018_flag
C - - - - - 0x00F072 03:F062: 29 F7     AND #con_0018_08 ^ $FF
C - - - - - 0x00F074 03:F064: 85 18     STA ram_0018_flag
C - - - - - 0x00F076 03:F066: 60        RTS



loc_F067:
- - - - - - 0x00F077 03:F067: A5 FF     LDA ram_for_2000
- - - - - - 0x00F079 03:F069: 09 04     ORA #$04
- - - - - - 0x00F07B 03:F06B: 8D 00 20  STA $2000
- - - - - - 0x00F07E 03:F06E: A2 00     LDX #$00
- - - - - - 0x00F080 03:F070: 20 A7 F0  JSR sub_F0A7
- - - - - - 0x00F083 03:F073: A5 18     LDA ram_0018_flag
- - - - - - 0x00F085 03:F075: 29 FD     AND #con_0018_02 ^ $FF
- - - - - - 0x00F087 03:F077: 85 18     STA ram_0018_flag
- - - - - - 0x00F089 03:F079: A5 FF     LDA ram_for_2000
- - - - - - 0x00F08B 03:F07B: 8D 00 20  STA $2000
- - - - - - 0x00F08E 03:F07E: 60        RTS



bra_F07F_loop:
C - - - - - 0x00F08F 03:F07F: AD 02 20  LDA $2002
C - - - - - 0x00F092 03:F082: BD 81 03  LDA ram_ppu_buffer_2,X
C - - - - - 0x00F095 03:F085: 8D 06 20  STA $2006
C - - - - - 0x00F098 03:F088: E8        INX
C - - - - - 0x00F099 03:F089: BD 81 03  LDA ram_ppu_buffer_2,X
C - - - - - 0x00F09C 03:F08C: 8D 06 20  STA $2006
C - - - - - 0x00F09F 03:F08F: E8        INX
C - - - - - 0x00F0A0 03:F090: 88        DEY
C - - - - - 0x00F0A1 03:F091: 88        DEY
C - - - - - 0x00F0A2 03:F092: 88        DEY
C - - - - - 0x00F0A3 03:F093: 8C 80 03  STY ram_buffer_2_index
C - - - - - 0x00F0A6 03:F096: BC 81 03  LDY ram_ppu_buffer_2,X
C - - - - - 0x00F0A9 03:F099: E8        INX
bra_F09A_loop:
C - - - - - 0x00F0AA 03:F09A: BD 81 03  LDA ram_ppu_buffer_2,X
C - - - - - 0x00F0AD 03:F09D: E8        INX
C - - - - - 0x00F0AE 03:F09E: 8D 07 20  STA $2007
C - - - - - 0x00F0B1 03:F0A1: CE 80 03  DEC ram_buffer_2_index
C - - - - - 0x00F0B4 03:F0A4: 88        DEY
C - - - - - 0x00F0B5 03:F0A5: D0 F3     BNE bra_F09A_loop
sub_F0A7:
; bzk optimize, put LDX 00 here
C - - - - - 0x00F0B7 03:F0A7: AC 80 03  LDY ram_buffer_2_index
C - - - - - 0x00F0BA 03:F0AA: D0 D3     BNE bra_F07F_loop
C - - - - - 0x00F0BC 03:F0AC: A9 00     LDA #$00
C - - - - - 0x00F0BE 03:F0AE: 8D 06 20  STA $2006
C - - - - - 0x00F0C1 03:F0B1: 8D 06 20  STA $2006
C - - - - - 0x00F0C4 03:F0B4: 60        RTS



loc_F0B5:
C D 3 - - - 0x00F0C5 03:F0B5: AD 02 20  LDA $2002
C - - - - - 0x00F0C8 03:F0B8: 20 F1 F0  JSR sub_F0F1_set_ppu_3F00
C - - - - - 0x00F0CB 03:F0BB: A8        TAY
bra_F0BC_loop:
C - - - - - 0x00F0CC 03:F0BC: A9 0F     LDA #$0F
C - - - - - 0x00F0CE 03:F0BE: 8D 07 20  STA $2007
C - - - - - 0x00F0D1 03:F0C1: C8        INY
C - - - - - 0x00F0D2 03:F0C2: C0 20     CPY #$20
C - - - - - 0x00F0D4 03:F0C4: D0 F6     BNE bra_F0BC_loop
C - - - - - 0x00F0D6 03:F0C6: A5 18     LDA ram_0018_flag
C - - - - - 0x00F0D8 03:F0C8: 29 FB     AND #con_0018_04 ^ $FF
C - - - - - 0x00F0DA 03:F0CA: 85 18     STA ram_0018_flag
C - - - - - 0x00F0DC 03:F0CC: 4C E7 F0  JMP loc_F0E7
loc_F0CF:
C D 3 - - - 0x00F0DF 03:F0CF: AD 02 20  LDA $2002
C - - - - - 0x00F0E2 03:F0D2: 20 F1 F0  JSR sub_F0F1_set_ppu_3F00
C - - - - - 0x00F0E5 03:F0D5: A8        TAY
bra_F0D6_loop:
C - - - - - 0x00F0E6 03:F0D6: B9 00 04  LDA ram_pal_buffer_2,Y
C - - - - - 0x00F0E9 03:F0D9: 8D 07 20  STA $2007
C - - - - - 0x00F0EC 03:F0DC: C8        INY
C - - - - - 0x00F0ED 03:F0DD: C0 20     CPY #$20
C - - - - - 0x00F0EF 03:F0DF: D0 F5     BNE bra_F0D6_loop
C - - - - - 0x00F0F1 03:F0E1: A5 18     LDA ram_0018_flag
C - - - - - 0x00F0F3 03:F0E3: 29 BF     AND #con_0018_40 ^ $FF
C - - - - - 0x00F0F5 03:F0E5: 85 18     STA ram_0018_flag
loc_F0E7:
C D 3 - - - 0x00F0F7 03:F0E7: 20 F1 F0  JSR sub_F0F1_set_ppu_3F00
C - - - - - 0x00F0FA 03:F0EA: 8D 06 20  STA $2006
C - - - - - 0x00F0FD 03:F0ED: 8D 06 20  STA $2006
C - - - - - 0x00F100 03:F0F0: 60        RTS



sub_F0F1_set_ppu_3F00:
C - - - - - 0x00F101 03:F0F1: A9 3F     LDA #> $3F00
C - - - - - 0x00F103 03:F0F3: 8D 06 20  STA $2006
C - - - - - 0x00F106 03:F0F6: A9 00     LDA #< $3F00
C - - - - - 0x00F108 03:F0F8: 8D 06 20  STA $2006
C - - - - - 0x00F10B 03:F0FB: 60        RTS



sub_F0FC:
C - - - - - 0x00F10C 03:F0FC: A5 27     LDA ram_cam_pos_X_hi
C - - - - - 0x00F10E 03:F0FE: 85 08     STA ram_0008_temp
C - - - - - 0x00F110 03:F100: A5 29     LDA ram_cam_pos_Y_hi
C - - - - - 0x00F112 03:F102: 85 09     STA ram_0009_temp
C - - - - - 0x00F114 03:F104: A5 26     LDA ram_cam_pos_X_lo
C - - - - - 0x00F116 03:F106: 85 FC     STA ram_scroll_X
C - - - - - 0x00F118 03:F108: A5 28     LDA ram_cam_pos_Y_lo
C - - - - - 0x00F11A 03:F10A: 85 FD     STA ram_scroll_Y
C - - - - - 0x00F11C 03:F10C: A5 FF     LDA ram_for_2000
C - - - - - 0x00F11E 03:F10E: 4A        LSR
C - - - - - 0x00F11F 03:F10F: 4A        LSR
C - - - - - 0x00F120 03:F110: 46 09     LSR ram_0009_temp
C - - - - - 0x00F122 03:F112: 2A        ROL
C - - - - - 0x00F123 03:F113: 46 08     LSR ram_0008_temp
C - - - - - 0x00F125 03:F115: 2A        ROL
C - - - - - 0x00F126 03:F116: 85 FF     STA ram_for_2000
C - - - - - 0x00F128 03:F118: 8D 00 20  STA $2000
C - - - - - 0x00F12B 03:F11B: AD 02 20  LDA $2002
C - - - - - 0x00F12E 03:F11E: A5 FC     LDA ram_scroll_X
C - - - - - 0x00F130 03:F120: 8D 05 20  STA $2005
C - - - - - 0x00F133 03:F123: A5 FD     LDA ram_scroll_Y
C - - - - - 0x00F135 03:F125: 8D 05 20  STA $2005
C - - - - - 0x00F138 03:F128: 60        RTS



sub_F129:
C - - - - - 0x00F139 03:F129: 48        PHA
C - - - - - 0x00F13A 03:F12A: A5 0C     LDA ram_prg_bank_1
C - - - - - 0x00F13C 03:F12C: 20 59 F1  JSR sub_F159_save_prg_bank
C - - - - - 0x00F13F 03:F12F: 68        PLA
sub_F130:
C - - - - - 0x00F140 03:F130: 85 0C     STA ram_prg_bank_1
C - - - - - 0x00F142 03:F132: 29 07     AND #$07    ; bzk optimize, no need for AND
C - - - - - 0x00F144 03:F134: 20 CA EC  JSR sub_ECCA_prg_bankswitch
C - - - - - 0x00F147 03:F137: 60        RTS



sub_F138:
C - - - - - 0x00F148 03:F138: A9 02     LDA #con_prg_bank + $02
C - - - - - 0x00F14A 03:F13A: 20 CA EC  JSR sub_ECCA_prg_bankswitch
C - - - - - 0x00F14D 03:F13D: 60        RTS



sub_F13E:
C - - - - - 0x00F14E 03:F13E: A5 0C     LDA ram_prg_bank_1
C - - - - - 0x00F150 03:F140: 29 07     AND #$07    ; bzk optimize, no need for AND
C - - - - - 0x00F152 03:F142: 20 CA EC  JSR sub_ECCA_prg_bankswitch
C - - - - - 0x00F155 03:F145: 60        RTS



sub_F146:
C - - - - - 0x00F156 03:F146: 48        PHA
C - - - - - 0x00F157 03:F147: 8A        TXA
C - - - - - 0x00F158 03:F148: 48        PHA
C - - - - - 0x00F159 03:F149: 98        TYA
C - - - - - 0x00F15A 03:F14A: 48        PHA
C - - - - - 0x00F15B 03:F14B: 20 6F F1  JSR sub_F16F_restore_prg_bank
C - - - - - 0x00F15E 03:F14E: 85 0C     STA ram_prg_bank_1
C - - - - - 0x00F160 03:F150: 20 CA EC  JSR sub_ECCA_prg_bankswitch
C - - - - - 0x00F163 03:F153: 68        PLA
C - - - - - 0x00F164 03:F154: A8        TAY
C - - - - - 0x00F165 03:F155: 68        PLA
C - - - - - 0x00F166 03:F156: AA        TAX
C - - - - - 0x00F167 03:F157: 68        PLA
C - - - - - 0x00F168 03:F158: 60        RTS



sub_F159_save_prg_bank:
C - - - - - 0x00F169 03:F159: 48        PHA
C - - - - - 0x00F16A 03:F15A: 98        TYA
C - - - - - 0x00F16B 03:F15B: 48        PHA
C - - - - - 0x00F16C 03:F15C: 8A        TXA
C - - - - - 0x00F16D 03:F15D: 48        PHA
C - - - - - 0x00F16E 03:F15E: BA        TSX
C - - - - - 0x00F16F 03:F15F: A4 0D     LDY ram_bsw_stack_index
C - - - - - 0x00F171 03:F161: BD 03 01  LDA ram_stack + $03,X
C - - - - - 0x00F174 03:F164: 99 00 06  STA ram_06FF - $FF,Y
C - - - - - 0x00F177 03:F167: C6 0D     DEC ram_bsw_stack_index
C - - - - - 0x00F179 03:F169: 68        PLA
C - - - - - 0x00F17A 03:F16A: AA        TAX
C - - - - - 0x00F17B 03:F16B: 68        PLA
C - - - - - 0x00F17C 03:F16C: A8        TAY
C - - - - - 0x00F17D 03:F16D: 68        PLA
C - - - - - 0x00F17E 03:F16E: 60        RTS



sub_F16F_restore_prg_bank:
C - - - - - 0x00F17F 03:F16F: 48        PHA
C - - - - - 0x00F180 03:F170: 98        TYA
C - - - - - 0x00F181 03:F171: 48        PHA
C - - - - - 0x00F182 03:F172: 8A        TXA
C - - - - - 0x00F183 03:F173: 48        PHA
C - - - - - 0x00F184 03:F174: BA        TSX
C - - - - - 0x00F185 03:F175: E6 0D     INC ram_bsw_stack_index
C - - - - - 0x00F187 03:F177: A4 0D     LDY ram_bsw_stack_index
C - - - - - 0x00F189 03:F179: B9 00 06  LDA ram_06FF - $FF,Y
C - - - - - 0x00F18C 03:F17C: 9D 03 01  STA ram_stack + $03,X
C - - - - - 0x00F18F 03:F17F: 68        PLA
C - - - - - 0x00F190 03:F180: AA        TAX
C - - - - - 0x00F191 03:F181: 68        PLA
C - - - - - 0x00F192 03:F182: A8        TAY
C - - - - - 0x00F193 03:F183: 68        PLA
C - - - - - 0x00F194 03:F184: 60        RTS



sub_F185_run_script:
; bzk optimize, all handlers are in bank 02, so no need to calculate bank id from A
; see con_script
C - - - - - 0x00F195 03:F185: 48        PHA
C - - - - - 0x00F196 03:F186: 4A        LSR
C - - - - - 0x00F197 03:F187: 4A        LSR
C - - - - - 0x00F198 03:F188: 4A        LSR
C - - - - - 0x00F199 03:F189: 4A        LSR
C - - - - - 0x00F19A 03:F18A: 20 29 F1  JSR sub_F129
C - - - - - 0x00F19D 03:F18D: 68        PLA
C - - - - - 0x00F19E 03:F18E: 29 0F     AND #$0F
C - - - - - 0x00F1A0 03:F190: 0A        ASL
C - - - - - 0x00F1A1 03:F191: 84 0A     STY ram_000A_temp
C - - - - - 0x00F1A3 03:F193: A8        TAY
C - - - - - 0x00F1A4 03:F194: B9 00 80  LDA tbl_0x008010_script_handlers,Y
C - - - - - 0x00F1A7 03:F197: 85 10     STA ram_0010
C - - - - - 0x00F1A9 03:F199: B9 01 80  LDA tbl_0x008010_script_handlers + $01,Y
C - - - - - 0x00F1AC 03:F19C: 85 11     STA ram_0011
C - - - - - 0x00F1AE 03:F19E: 20 A9 F1  JSR sub_F1A9_indirect_jump
C - - - - - 0x00F1B1 03:F1A1: 85 0B     STA ram_000B
C - - - - - 0x00F1B3 03:F1A3: 20 46 F1  JSR sub_F146
C - - - - - 0x00F1B6 03:F1A6: A5 0B     LDA ram_000B
C - - - - - 0x00F1B8 03:F1A8: 60        RTS



sub_F1A9_indirect_jump:
C - - - - - 0x00F1B9 03:F1A9: A5 0B     LDA ram_000B
C - - - - - 0x00F1BB 03:F1AB: A4 0A     LDY ram_000A_temp
C - - - - - 0x00F1BD 03:F1AD: 6C 10 00  JMP (ram_0010)



sub_F1B0:
sub_0x00F1C0:
C - - - - - 0x00F1C0 03:F1B0: 20 E5 F1  JSR sub_F1E5
C - - - - - 0x00F1C3 03:F1B3: 20 F6 F1  JSR sub_F1F6_clear_nametable_2000
loc_F1B6:
C - - - - - 0x00F1C6 03:F1B6: 20 FD F1  JSR sub_F1FD_clear_nametable
loc_F1B9:
C - - - - - 0x00F1C9 03:F1B9: 20 64 EE  JSR sub_EE64_enable_nmi
C - - - - - 0x00F1CC 03:F1BC: 20 EA EE  JSR sub_EEEA
C - - - - - 0x00F1CF 03:F1BF: 20 CD EE  JSR sub_EECD_wait_1_frm
C - - - - - 0x00F1D2 03:F1C2: A5 FE     LDA ram_for_2001
C - - - - - 0x00F1D4 03:F1C4: 8D 01 20  STA $2001
C - - - - - 0x00F1D7 03:F1C7: A6 11     LDX ram_0011
C - - - - - 0x00F1D9 03:F1C9: A4 12     LDY ram_0012
C - - - - - 0x00F1DB 03:F1CB: A5 FC     LDA ram_scroll_X
C - - - - - 0x00F1DD 03:F1CD: 8D 05 20  STA $2005
C - - - - - 0x00F1E0 03:F1D0: A5 FD     LDA ram_scroll_Y
C - - - - - 0x00F1E2 03:F1D2: 8D 05 20  STA $2005
C - - - - - 0x00F1E5 03:F1D5: 60        RTS


; bzk garbage
- - - - - - 0x00F1E6 03:F1D6: 20 E5 F1  JSR sub_F1E5
- - - - - - 0x00F1E9 03:F1D9: 20 F6 F1  JSR sub_F1F6_clear_nametable_2000
- - - - - - 0x00F1EC 03:F1DC: 4C B9 F1  JMP loc_F1B9


; bzk garbage
- - - - - - 0x00F1EF 03:F1DF: 20 E5 F1  JSR sub_F1E5
- - - - - - 0x00F1F2 03:F1E2: 4C B6 F1  JMP loc_F1B6



sub_F1E5:
C - - - - - 0x00F1F5 03:F1E5: 85 10     STA ram_0010
C - - - - - 0x00F1F7 03:F1E7: 86 11     STX ram_0011
C - - - - - 0x00F1F9 03:F1E9: 84 12     STY ram_0012
C - - - - - 0x00F1FB 03:F1EB: 20 5A EE  JSR sub_EE5A_disable_nmi
C - - - - - 0x00F1FE 03:F1EE: A5 FE     LDA ram_for_2001
C - - - - - 0x00F200 03:F1F0: 29 E7     AND #$E7
C - - - - - 0x00F202 03:F1F2: 8D 01 20  STA $2001
C - - - - - 0x00F205 03:F1F5: 60        RTS



sub_F1F6_clear_nametable_2000:
C - - - - - 0x00F206 03:F1F6: AD 02 20  LDA $2002
C - - - - - 0x00F209 03:F1F9: A9 20     LDA #$20    ; 2000
C - - - - - 0x00F20B 03:F1FB: D0 0E     BNE bra_F20B    ; jmp



sub_F1FD_clear_nametable:
C - - - - - 0x00F20D 03:F1FD: AD 02 20  LDA $2002
C - - - - - 0x00F210 03:F200: A2 24     LDX #$24    ; 2400
C - - - - - 0x00F212 03:F202: A5 FA     LDA ram_00FA_flag
C - - - - - 0x00F214 03:F204: 29 08     AND #$08
C - - - - - 0x00F216 03:F206: F0 02     BEQ bra_F20A
- - - - - - 0x00F218 03:F208: A2 28     LDX #$28    ; 2800
bra_F20A:
C - - - - - 0x00F21A 03:F20A: 8A        TXA ; bzk optimize, STX
bra_F20B:
C - - - - - 0x00F21B 03:F20B: 8D 06 20  STA $2006
C - - - - - 0x00F21E 03:F20E: A9 00     LDA #$00
C - - - - - 0x00F220 03:F210: AA        TAX
C - - - - - 0x00F221 03:F211: A8        TAY
C - - - - - 0x00F222 03:F212: 8D 06 20  STA $2006
C - - - - - 0x00F225 03:F215: A5 10     LDA ram_0010
bra_F217_loop:
C - - - - - 0x00F227 03:F217: 8D 07 20  STA $2007
C - - - - - 0x00F22A 03:F21A: E8        INX
C - - - - - 0x00F22B 03:F21B: D0 FA     BNE bra_F217_loop
C - - - - - 0x00F22D 03:F21D: C8        INY
C - - - - - 0x00F22E 03:F21E: C0 03     CPY #$03
C - - - - - 0x00F230 03:F220: D0 F5     BNE bra_F217_loop
bra_F222_loop:
C - - - - - 0x00F232 03:F222: 8D 07 20  STA $2007
C - - - - - 0x00F235 03:F225: E8        INX
C - - - - - 0x00F236 03:F226: E0 C0     CPX #$C0
C - - - - - 0x00F238 03:F228: D0 F8     BNE bra_F222_loop
C - - - - - 0x00F23A 03:F22A: 60        RTS



sub_F22B:
sub_0x00F23B:
C - - - - - 0x00F23B 03:F22B: A9 08     LDA #con_0018_08
C - - - - - 0x00F23D 03:F22D: 4C DA EE  JMP loc_EEDA



sub_F230_replace_tiles_with_new:
sub_0x00F240_replace_tiles_with_new:
C - - - - - 0x00F240 03:F230: 8A        TXA
C - - - - - 0x00F241 03:F231: 48        PHA
C - - - - - 0x00F242 03:F232: 98        TYA
C - - - - - 0x00F243 03:F233: 48        PHA
C - - - - - 0x00F244 03:F234: A5 1C     LDA ram_001C
C - - - - - 0x00F246 03:F236: 48        PHA
C - - - - - 0x00F247 03:F237: A5 1D     LDA ram_001D
C - - - - - 0x00F249 03:F239: 48        PHA
C - - - - - 0x00F24A 03:F23A: 20 64 F2  JSR sub_F264
bra_F23D_loop:
C - - - - - 0x00F24D 03:F23D: 20 B7 F2  JSR sub_F2B7
C - - - - - 0x00F250 03:F240: 20 3E F3  JSR sub_F33E
C - - - - - 0x00F253 03:F243: D0 F8     BNE bra_F23D_loop
C - - - - - 0x00F255 03:F245: 68        PLA
C - - - - - 0x00F256 03:F246: 85 1D     STA ram_001D
C - - - - - 0x00F258 03:F248: 68        PLA
C - - - - - 0x00F259 03:F249: 85 1C     STA ram_001C
C - - - - - 0x00F25B 03:F24B: 68        PLA
C - - - - - 0x00F25C 03:F24C: A8        TAY
C - - - - - 0x00F25D 03:F24D: 68        PLA
C - - - - - 0x00F25E 03:F24E: AA        TAX
C - - - - - 0x00F25F 03:F24F: 60        RTS


; bzk garbage
- - - - - - 0x00F260 03:F250: 8A        TXA
- - - - - - 0x00F261 03:F251: 48        PHA
- - - - - - 0x00F262 03:F252: 98        TYA
- - - - - - 0x00F263 03:F253: 48        PHA
- - - - - - 0x00F264 03:F254: 20 64 F2  JSR sub_F264
bra_F257_loop:
- - - - - - 0x00F267 03:F257: 20 80 F2  JSR sub_F280
- - - - - - 0x00F26A 03:F25A: 20 3E F3  JSR sub_F33E
- - - - - - 0x00F26D 03:F25D: D0 F8     BNE bra_F257_loop
- - - - - - 0x00F26F 03:F25F: 68        PLA
- - - - - - 0x00F270 03:F260: A8        TAY
- - - - - - 0x00F271 03:F261: 68        PLA
- - - - - - 0x00F272 03:F262: AA        TAX
- - - - - - 0x00F273 03:F263: 60        RTS



sub_F264:
C - - - - - 0x00F274 03:F264: 20 DF EE  JSR sub_EEDF
C - - - - - 0x00F277 03:F267: A0 00     LDY #$00
C - - - - - 0x00F279 03:F269: B1 1E     LDA (ram_001E),Y
C - - - - - 0x00F27B 03:F26B: 85 12     STA ram_0012
C - - - - - 0x00F27D 03:F26D: C8        INY
C - - - - - 0x00F27E 03:F26E: B1 1E     LDA (ram_001E),Y
C - - - - - 0x00F280 03:F270: 85 13     STA ram_0013
C - - - - - 0x00F282 03:F272: 20 81 F3  JSR sub_F381
C - - - - - 0x00F285 03:F275: A5 1C     LDA ram_001C
C - - - - - 0x00F287 03:F277: 85 10     STA ram_0010
C - - - - - 0x00F289 03:F279: A5 1D     LDA ram_001D
C - - - - - 0x00F28B 03:F27B: 85 11     STA ram_0011
C - - - - - 0x00F28D 03:F27D: A0 00     LDY #$00
C - - - - - 0x00F28F 03:F27F: 60        RTS



sub_F280:
- - - - - - 0x00F290 03:F280: A5 10     LDA ram_0010
- - - - - - 0x00F292 03:F282: 85 15     STA ram_0015
- - - - - - 0x00F294 03:F284: A5 11     LDA ram_0011
- - - - - - 0x00F296 03:F286: 85 16     STA ram_0016
- - - - - - 0x00F298 03:F288: A5 12     LDA ram_0012
- - - - - - 0x00F29A 03:F28A: 85 14     STA ram_0014
loc_F28C_loop:
- - - - - - 0x00F29C 03:F28C: A9 00     LDA #$00
- - - - - - 0x00F29E 03:F28E: 85 17     STA ram_0017
- - - - - - 0x00F2A0 03:F290: AD 80 03  LDA ram_buffer_2_index
- - - - - - 0x00F2A3 03:F293: AA        TAX
- - - - - - 0x00F2A4 03:F294: E8        INX
- - - - - - 0x00F2A5 03:F295: E8        INX
- - - - - - 0x00F2A6 03:F296: E8        INX
- - - - - - 0x00F2A7 03:F297: A0 00     LDY #$00
bra_F299_loop:
- - - - - - 0x00F2A9 03:F299: B1 1E     LDA (ram_001E),Y
- - - - - - 0x00F2AB 03:F29B: 9D 81 03  STA ram_ppu_buffer_2,X
- - - - - - 0x00F2AE 03:F29E: E8        INX
- - - - - - 0x00F2AF 03:F29F: E6 17     INC ram_0017
- - - - - - 0x00F2B1 03:F2A1: C6 14     DEC ram_0014
- - - - - - 0x00F2B3 03:F2A3: F0 7B     BEQ bra_F320
- - - - - - 0x00F2B5 03:F2A5: 20 ED F2  JSR sub_F2ED
- - - - - - 0x00F2B8 03:F2A8: A5 1C     LDA ram_001C
- - - - - - 0x00F2BA 03:F2AA: 29 1F     AND #$1F
- - - - - - 0x00F2BC 03:F2AC: D0 EB     BNE bra_F299_loop
- - - - - - 0x00F2BE 03:F2AE: 20 FB F2  JSR sub_F2FB
- - - - - - 0x00F2C1 03:F2B1: 20 8F F3  JSR sub_F38F
- - - - - - 0x00F2C4 03:F2B4: 4C 8C F2  JMP loc_F28C_loop



sub_F2B7:
C - - - - - 0x00F2C7 03:F2B7: A5 10     LDA ram_0010
C - - - - - 0x00F2C9 03:F2B9: 85 15     STA ram_0015
C - - - - - 0x00F2CB 03:F2BB: A5 11     LDA ram_0011
C - - - - - 0x00F2CD 03:F2BD: 85 16     STA ram_0016
C - - - - - 0x00F2CF 03:F2BF: A5 12     LDA ram_0012
C - - - - - 0x00F2D1 03:F2C1: 85 14     STA ram_0014
loc_F2C3_loop:
C - - - - - 0x00F2D3 03:F2C3: A9 00     LDA #$00
C - - - - - 0x00F2D5 03:F2C5: 85 17     STA ram_0017
C - - - - - 0x00F2D7 03:F2C7: AD 80 03  LDA ram_buffer_2_index
C - - - - - 0x00F2DA 03:F2CA: AA        TAX
C - - - - - 0x00F2DB 03:F2CB: E8        INX
C - - - - - 0x00F2DC 03:F2CC: E8        INX
C - - - - - 0x00F2DD 03:F2CD: E8        INX
bra_F2CE_loop:
C - - - - - 0x00F2DE 03:F2CE: B1 1E     LDA (ram_001E),Y
C - - - - - 0x00F2E0 03:F2D0: 9D 81 03  STA ram_ppu_buffer_2,X
C - - - - - 0x00F2E3 03:F2D3: E6 17     INC ram_0017
C - - - - - 0x00F2E5 03:F2D5: C8        INY
C - - - - - 0x00F2E6 03:F2D6: E8        INX
C - - - - - 0x00F2E7 03:F2D7: C6 14     DEC ram_0014
C - - - - - 0x00F2E9 03:F2D9: F0 45     BEQ bra_F320
C - - - - - 0x00F2EB 03:F2DB: 20 ED F2  JSR sub_F2ED
C - - - - - 0x00F2EE 03:F2DE: A5 1C     LDA ram_001C
C - - - - - 0x00F2F0 03:F2E0: 29 1F     AND #$1F
C - - - - - 0x00F2F2 03:F2E2: D0 EA     BNE bra_F2CE_loop
; bzk garbage?
- - - - - - 0x00F2F4 03:F2E4: 20 FB F2  JSR sub_F2FB
- - - - - - 0x00F2F7 03:F2E7: 20 8F F3  JSR sub_F38F
- - - - - - 0x00F2FA 03:F2EA: 4C C3 F2  JMP loc_F2C3_loop



sub_F2ED:
C - - - - - 0x00F2FD 03:F2ED: A5 1C     LDA ram_001C
C - - - - - 0x00F2FF 03:F2EF: 18        CLC
C - - - - - 0x00F300 03:F2F0: 69 01     ADC #< $0001
C - - - - - 0x00F302 03:F2F2: 85 1C     STA ram_001C
C - - - - - 0x00F304 03:F2F4: A5 1D     LDA ram_001D
C - - - - - 0x00F306 03:F2F6: 69 00     ADC #> $0001
C - - - - - 0x00F308 03:F2F8: 85 1D     STA ram_001D
C - - - - - 0x00F30A 03:F2FA: 60        RTS



sub_F2FB:
- - - - - - 0x00F30B 03:F2FB: 20 20 F3  JSR sub_F320
- - - - - - 0x00F30E 03:F2FE: A5 1C     LDA ram_001C
- - - - - - 0x00F310 03:F300: 38        SEC
- - - - - - 0x00F311 03:F301: E9 20     SBC #< $0020
- - - - - - 0x00F313 03:F303: 85 1C     STA ram_001C
- - - - - - 0x00F315 03:F305: A5 1D     LDA ram_001D
- - - - - - 0x00F317 03:F307: E9 00     SBC #> $0020
- - - - - - 0x00F319 03:F309: 85 1D     STA ram_001D
- - - - - - 0x00F31B 03:F30B: A5 FA     LDA ram_00FA_flag
- - - - - - 0x00F31D 03:F30D: 29 08     AND #$08
- - - - - - 0x00F31F 03:F30F: D0 06     BNE bra_F317
- - - - - - 0x00F321 03:F311: A5 1D     LDA ram_001D
- - - - - - 0x00F323 03:F313: 49 04     EOR #$04
- - - - - - 0x00F325 03:F315: 85 1D     STA ram_001D
bra_F317:
- - - - - - 0x00F327 03:F317: A5 1C     LDA ram_001C
- - - - - - 0x00F329 03:F319: 85 15     STA ram_0015
- - - - - - 0x00F32B 03:F31B: A5 1D     LDA ram_001D
- - - - - - 0x00F32D 03:F31D: 85 16     STA ram_0016
- - - - - - 0x00F32F 03:F31F: 60        RTS



bra_F320:
sub_F320:
loc_F320:
C - - - - - 0x00F330 03:F320: AD 80 03  LDA ram_buffer_2_index
C - - - - - 0x00F333 03:F323: AA        TAX
C - - - - - 0x00F334 03:F324: 18        CLC
C - - - - - 0x00F335 03:F325: 65 17     ADC ram_0017
C - - - - - 0x00F337 03:F327: 69 03     ADC #$03
C - - - - - 0x00F339 03:F329: 8D 80 03  STA ram_buffer_2_index
C - - - - - 0x00F33C 03:F32C: A5 16     LDA ram_0016    ; ppu hi
C - - - - - 0x00F33E 03:F32E: 9D 81 03  STA ram_ppu_buffer_2,X
C - - - - - 0x00F341 03:F331: E8        INX
C - - - - - 0x00F342 03:F332: A5 15     LDA ram_0015    ; ppu lo
C - - - - - 0x00F344 03:F334: 9D 81 03  STA ram_ppu_buffer_2,X
C - - - - - 0x00F347 03:F337: E8        INX
C - - - - - 0x00F348 03:F338: A5 17     LDA ram_0017    ; counter
C - - - - - 0x00F34A 03:F33A: 9D 81 03  STA ram_ppu_buffer_2,X
C - - - - - 0x00F34D 03:F33D: 60        RTS



sub_F33E:
C - - - - - 0x00F34E 03:F33E: 20 8F F3  JSR sub_F38F
C - - - - - 0x00F351 03:F341: A9 20     LDA #$20
C - - - - - 0x00F353 03:F343: 18        CLC
C - - - - - 0x00F354 03:F344: 65 10     ADC ram_0010
C - - - - - 0x00F356 03:F346: 85 10     STA ram_0010
C - - - - - 0x00F358 03:F348: A9 00     LDA #$00
C - - - - - 0x00F35A 03:F34A: 65 11     ADC ram_0011
C - - - - - 0x00F35C 03:F34C: 85 11     STA ram_0011
C - - - - - 0x00F35E 03:F34E: A5 11     LDA ram_0011
C - - - - - 0x00F360 03:F350: 29 03     AND #$03
C - - - - - 0x00F362 03:F352: C9 03     CMP #$03
C - - - - - 0x00F364 03:F354: D0 20     BNE bra_F376
C - - - - - 0x00F366 03:F356: A5 10     LDA ram_0010
C - - - - - 0x00F368 03:F358: 29 C0     AND #$C0
C - - - - - 0x00F36A 03:F35A: C9 C0     CMP #$C0
C - - - - - 0x00F36C 03:F35C: D0 18     BNE bra_F376
C - - - - - 0x00F36E 03:F35E: A5 10     LDA ram_0010
C - - - - - 0x00F370 03:F360: 29 1F     AND #$1F
C - - - - - 0x00F372 03:F362: 85 10     STA ram_0010
C - - - - - 0x00F374 03:F364: A5 11     LDA ram_0011
C - - - - - 0x00F376 03:F366: 29 FC     AND #$FC
C - - - - - 0x00F378 03:F368: 85 11     STA ram_0011
C - - - - - 0x00F37A 03:F36A: A5 FA     LDA ram_00FA_flag
C - - - - - 0x00F37C 03:F36C: 29 08     AND #$08
C - - - - - 0x00F37E 03:F36E: F0 06     BEQ bra_F376
C - - - - - 0x00F380 03:F370: A5 11     LDA ram_0011
C - - - - - 0x00F382 03:F372: 49 08     EOR #$08
C - - - - - 0x00F384 03:F374: 85 11     STA ram_0011
bra_F376:
C - - - - - 0x00F386 03:F376: A5 10     LDA ram_0010
C - - - - - 0x00F388 03:F378: 85 1C     STA ram_001C
C - - - - - 0x00F38A 03:F37A: A5 11     LDA ram_0011
C - - - - - 0x00F38C 03:F37C: 85 1D     STA ram_001D
C - - - - - 0x00F38E 03:F37E: C6 13     DEC ram_0013
C - - - - - 0x00F390 03:F380: 60        RTS



sub_F381:
C - - - - - 0x00F391 03:F381: A5 1E     LDA ram_001E
C - - - - - 0x00F393 03:F383: 18        CLC
C - - - - - 0x00F394 03:F384: 69 02     ADC #< $0002
C - - - - - 0x00F396 03:F386: 85 1E     STA ram_001E
C - - - - - 0x00F398 03:F388: A5 1F     LDA ram_001F
C - - - - - 0x00F39A 03:F38A: 69 00     ADC #> $0002
C - - - - - 0x00F39C 03:F38C: 85 1F     STA ram_001F
C - - - - - 0x00F39E 03:F38E: 60        RTS



sub_F38F:
C - - - - - 0x00F39F 03:F38F: AD 80 03  LDA ram_buffer_2_index
C - - - - - 0x00F3A2 03:F392: C9 32     CMP #$32
; bzk optimize, BCC
C - - - - - 0x00F3A4 03:F394: 30 06     BMI bra_F39C_RTS
C - - - - - 0x00F3A6 03:F396: 20 2B F2  JSR sub_F22B
C - - - - - 0x00F3A9 03:F399: 20 DF EE  JSR sub_EEDF
bra_F39C_RTS:
C - - - - - 0x00F3AC 03:F39C: 60        RTS



sub_F39D:
; bzk garbage
- - - - - - 0x00F3AD 03:F39D: AD 80 03  LDA ram_buffer_2_index
- - - - - - 0x00F3B0 03:F3A0: C9 32     CMP #$32
; bzk optimize, BCC
- - - - - - 0x00F3B2 03:F3A2: 30 06     BMI bra_F3AA_RTS
- - - - - - 0x00F3B4 03:F3A4: 20 AB F3  JSR sub_F3AB
- - - - - - 0x00F3B7 03:F3A7: 20 E3 EE  JSR sub_EEE3
bra_F3AA_RTS:
- - - - - - 0x00F3BA 03:F3AA: 60        RTS



sub_F3AB:
- - - - - - 0x00F3BB 03:F3AB: 20 E3 EE  JSR sub_EEE3
- - - - - - 0x00F3BE 03:F3AE: A9 02     LDA #con_0018_02
- - - - - - 0x00F3C0 03:F3B0: 20 DA EE  JSR sub_EEDA
- - - - - - 0x00F3C3 03:F3B3: 20 E3 EE  JSR sub_EEE3
- - - - - - 0x00F3C6 03:F3B6: 60        RTS


; bzk garbage
- - - - - - 0x00F3C7 03:F3B7: 8A        TXA
- - - - - - 0x00F3C8 03:F3B8: 48        PHA
- - - - - - 0x00F3C9 03:F3B9: 98        TYA
- - - - - - 0x00F3CA 03:F3BA: 48        PHA
- - - - - - 0x00F3CB 03:F3BB: 20 C6 F3  JSR sub_F3C6
- - - - - - 0x00F3CE 03:F3BE: 20 E7 F3  JSR sub_F3E7
- - - - - - 0x00F3D1 03:F3C1: 68        PLA
- - - - - - 0x00F3D2 03:F3C2: A8        TAY
- - - - - - 0x00F3D3 03:F3C3: 68        PLA
- - - - - - 0x00F3D4 03:F3C4: AA        TAX
- - - - - - 0x00F3D5 03:F3C5: 60        RTS



sub_F3C6:
; bzk garbage
- - - - - - 0x00F3D6 03:F3C6: 20 E3 EE  JSR sub_EEE3
- - - - - - 0x00F3D9 03:F3C9: A0 00     LDY #$00
- - - - - - 0x00F3DB 03:F3CB: B1 1E     LDA (ram_001E),Y
- - - - - - 0x00F3DD 03:F3CD: 85 12     STA ram_0012
- - - - - - 0x00F3DF 03:F3CF: A5 1C     LDA ram_001C
- - - - - - 0x00F3E1 03:F3D1: 85 10     STA ram_0010
- - - - - - 0x00F3E3 03:F3D3: A5 1D     LDA ram_001D
- - - - - - 0x00F3E5 03:F3D5: 85 11     STA ram_0011
- - - - - - 0x00F3E7 03:F3D7: A0 00     LDY #$00
- - - - - - 0x00F3E9 03:F3D9: A5 1E     LDA ram_001E
- - - - - - 0x00F3EB 03:F3DB: 18        CLC
- - - - - - 0x00F3EC 03:F3DC: 69 01     ADC #< $0001
- - - - - - 0x00F3EE 03:F3DE: 85 1E     STA ram_001E
- - - - - - 0x00F3F0 03:F3E0: A5 1F     LDA ram_001F
- - - - - - 0x00F3F2 03:F3E2: 69 00     ADC #> $0001
- - - - - - 0x00F3F4 03:F3E4: 85 1F     STA ram_001F
- - - - - - 0x00F3F6 03:F3E6: 60        RTS



sub_F3E7:
; bzk garbage
- - - - - - 0x00F3F7 03:F3E7: A5 10     LDA ram_0010
- - - - - - 0x00F3F9 03:F3E9: 85 15     STA ram_0015
- - - - - - 0x00F3FB 03:F3EB: A5 11     LDA ram_0011
- - - - - - 0x00F3FD 03:F3ED: 85 16     STA ram_0016
- - - - - - 0x00F3FF 03:F3EF: A5 12     LDA ram_0012
- - - - - - 0x00F401 03:F3F1: 85 14     STA ram_0014
loc_F3F3_loop:
- - - - - - 0x00F403 03:F3F3: A9 00     LDA #$00
- - - - - - 0x00F405 03:F3F5: 85 17     STA ram_0017
- - - - - - 0x00F407 03:F3F7: AD 80 03  LDA ram_buffer_2_index
- - - - - - 0x00F40A 03:F3FA: AA        TAX
- - - - - - 0x00F40B 03:F3FB: E8        INX
- - - - - - 0x00F40C 03:F3FC: E8        INX
- - - - - - 0x00F40D 03:F3FD: E8        INX
bra_F3FE_loop:
- - - - - - 0x00F40E 03:F3FE: B1 1E     LDA (ram_001E),Y
- - - - - - 0x00F410 03:F400: 9D 81 03  STA ram_ppu_buffer_2,X
- - - - - - 0x00F413 03:F403: C8        INY
- - - - - - 0x00F414 03:F404: E8        INX
- - - - - - 0x00F415 03:F405: E6 17     INC ram_0017
- - - - - - 0x00F417 03:F407: C6 14     DEC ram_0014
- - - - - - 0x00F419 03:F409: D0 03     BNE bra_F40E
- - - - - - 0x00F41B 03:F40B: 4C 20 F3  JMP loc_F320
bra_F40E:
- - - - - - 0x00F41E 03:F40E: 20 2A F4  JSR sub_F42A
- - - - - - 0x00F421 03:F411: A5 1D     LDA ram_001D
- - - - - - 0x00F423 03:F413: 29 03     AND #$03
- - - - - - 0x00F425 03:F415: C9 03     CMP #$03
- - - - - - 0x00F427 03:F417: D0 E5     BNE bra_F3FE_loop
- - - - - - 0x00F429 03:F419: A5 1C     LDA ram_001C
- - - - - - 0x00F42B 03:F41B: 29 C0     AND #$C0
- - - - - - 0x00F42D 03:F41D: C9 C0     CMP #$C0
- - - - - - 0x00F42F 03:F41F: D0 DD     BNE bra_F3FE_loop
- - - - - - 0x00F431 03:F421: 20 38 F4  JSR sub_F438
- - - - - - 0x00F434 03:F424: 20 9D F3  JSR sub_F39D
- - - - - - 0x00F437 03:F427: 4C F3 F3  JMP loc_F3F3_loop



sub_F42A:
; bzk garbage
- - - - - - 0x00F43A 03:F42A: A5 1C     LDA ram_001C
- - - - - - 0x00F43C 03:F42C: 18        CLC
- - - - - - 0x00F43D 03:F42D: 69 20     ADC #< $0020
- - - - - - 0x00F43F 03:F42F: 85 1C     STA ram_001C
- - - - - - 0x00F441 03:F431: A5 1D     LDA ram_001D
- - - - - - 0x00F443 03:F433: 69 00     ADC #> $0020
- - - - - - 0x00F445 03:F435: 85 1D     STA ram_001D
- - - - - - 0x00F447 03:F437: 60        RTS



sub_F438:
; bzk garbage
- - - - - - 0x00F448 03:F438: 20 20 F3  JSR sub_F320
- - - - - - 0x00F44B 03:F43B: A5 1C     LDA ram_001C
- - - - - - 0x00F44D 03:F43D: 29 1F     AND #$1F
- - - - - - 0x00F44F 03:F43F: 85 1C     STA ram_001C
- - - - - - 0x00F451 03:F441: A5 1D     LDA ram_001D
- - - - - - 0x00F453 03:F443: 29 FC     AND #$FC
- - - - - - 0x00F455 03:F445: 85 1D     STA ram_001D
- - - - - - 0x00F457 03:F447: A5 FA     LDA ram_00FA_flag
- - - - - - 0x00F459 03:F449: 29 08     AND #$08
- - - - - - 0x00F45B 03:F44B: F0 06     BEQ bra_F453
- - - - - - 0x00F45D 03:F44D: A5 1C     LDA ram_001C
- - - - - - 0x00F45F 03:F44F: 49 08     EOR #$08
- - - - - - 0x00F461 03:F451: 85 1C     STA ram_001C
bra_F453:
- - - - - - 0x00F463 03:F453: A5 1C     LDA ram_001C
- - - - - - 0x00F465 03:F455: 85 15     STA ram_0015
- - - - - - 0x00F467 03:F457: A5 1D     LDA ram_001D
- - - - - - 0x00F469 03:F459: 85 16     STA ram_0016
- - - - - - 0x00F46B 03:F45B: 60        RTS



sub_F45C:
C - - - - - 0x00F46C 03:F45C: A9 00     LDA #$00
C - - - - - 0x00F46E 03:F45E: 85 11     STA ram_0011
C - - - - - 0x00F470 03:F460: A5 1D     LDA ram_001D
C - - - - - 0x00F472 03:F462: 29 03     AND #$03
C - - - - - 0x00F474 03:F464: 85 10     STA ram_0010
C - - - - - 0x00F476 03:F466: A5 1D     LDA ram_001D
C - - - - - 0x00F478 03:F468: 29 0C     AND #$0C
C - - - - - 0x00F47A 03:F46A: F0 06     BEQ bra_F472
C - - - - - 0x00F47C 03:F46C: A9 04     LDA #$04
C - - - - - 0x00F47E 03:F46E: 05 10     ORA ram_0010
C - - - - - 0x00F480 03:F470: 85 10     STA ram_0010
bra_F472:
C - - - - - 0x00F482 03:F472: A5 1C     LDA ram_001C
C - - - - - 0x00F484 03:F474: 0A        ASL
C - - - - - 0x00F485 03:F475: 26 10     ROL ram_0010
C - - - - - 0x00F487 03:F477: 0A        ASL
C - - - - - 0x00F488 03:F478: 26 11     ROL ram_0011
C - - - - - 0x00F48A 03:F47A: 0A        ASL
C - - - - - 0x00F48B 03:F47B: 0A        ASL
C - - - - - 0x00F48C 03:F47C: 26 10     ROL ram_0010
C - - - - - 0x00F48E 03:F47E: 0A        ASL
C - - - - - 0x00F48F 03:F47F: 26 10     ROL ram_0010
C - - - - - 0x00F491 03:F481: 0A        ASL
C - - - - - 0x00F492 03:F482: 26 10     ROL ram_0010
C - - - - - 0x00F494 03:F484: 0A        ASL
C - - - - - 0x00F495 03:F485: 26 11     ROL ram_0011
C - - - - - 0x00F497 03:F487: 60        RTS



sub_F488:
sub_0x00F498:
C - - - - - 0x00F498 03:F488: 8A        TXA
C - - - - - 0x00F499 03:F489: 48        PHA
C - - - - - 0x00F49A 03:F48A: 98        TYA
C - - - - - 0x00F49B 03:F48B: 48        PHA
C - - - - - 0x00F49C 03:F48C: A5 1C     LDA ram_001C
C - - - - - 0x00F49E 03:F48E: 29 DE     AND #$DE
C - - - - - 0x00F4A0 03:F490: 85 1C     STA ram_001C
C - - - - - 0x00F4A2 03:F492: 85 15     STA ram_0015
C - - - - - 0x00F4A4 03:F494: A5 1D     LDA ram_001D
C - - - - - 0x00F4A6 03:F496: 85 16     STA ram_0016
C - - - - - 0x00F4A8 03:F498: A5 21     LDA ram_0021
C - - - - - 0x00F4AA 03:F49A: 85 13     STA ram_0013
bra_F49C_loop:
C - - - - - 0x00F4AC 03:F49C: A5 20     LDA ram_0020
C - - - - - 0x00F4AE 03:F49E: 85 12     STA ram_0012
bra_F4A0_loop:
C - - - - - 0x00F4B0 03:F4A0: 20 29 F5  JSR sub_F529
C - - - - - 0x00F4B3 03:F4A3: 20 FC F4  JSR sub_F4FC
C - - - - - 0x00F4B6 03:F4A6: C6 12     DEC ram_0012
C - - - - - 0x00F4B8 03:F4A8: C6 12     DEC ram_0012
C - - - - - 0x00F4BA 03:F4AA: F0 02     BEQ bra_F4AE
C - - - - - 0x00F4BC 03:F4AC: 10 F2     BPL bra_F4A0_loop
bra_F4AE:
C - - - - - 0x00F4BE 03:F4AE: 20 BE F4  JSR sub_F4BE
C - - - - - 0x00F4C1 03:F4B1: C6 13     DEC ram_0013
C - - - - - 0x00F4C3 03:F4B3: C6 13     DEC ram_0013
C - - - - - 0x00F4C5 03:F4B5: F0 02     BEQ bra_F4B9
C - - - - - 0x00F4C7 03:F4B7: 10 E3     BPL bra_F49C_loop
bra_F4B9:
C - - - - - 0x00F4C9 03:F4B9: 68        PLA
C - - - - - 0x00F4CA 03:F4BA: A8        TAY
C - - - - - 0x00F4CB 03:F4BB: 68        PLA
C - - - - - 0x00F4CC 03:F4BC: AA        TAX
C - - - - - 0x00F4CD 03:F4BD: 60        RTS



sub_F4BE:
C - - - - - 0x00F4CE 03:F4BE: A5 15     LDA ram_0015
C - - - - - 0x00F4D0 03:F4C0: 18        CLC
C - - - - - 0x00F4D1 03:F4C1: 69 40     ADC #< $0040
C - - - - - 0x00F4D3 03:F4C3: 85 15     STA ram_0015
C - - - - - 0x00F4D5 03:F4C5: A5 16     LDA ram_0016
C - - - - - 0x00F4D7 03:F4C7: 69 00     ADC #> $0040
C - - - - - 0x00F4D9 03:F4C9: 85 16     STA ram_0016
; bzk optimize, loading the same A
C - - - - - 0x00F4DB 03:F4CB: A5 16     LDA ram_0016
C - - - - - 0x00F4DD 03:F4CD: 29 03     AND #$03
C - - - - - 0x00F4DF 03:F4CF: C9 03     CMP #$03
C - - - - - 0x00F4E1 03:F4D1: D0 20     BNE bra_F4F3
C - - - - - 0x00F4E3 03:F4D3: A5 15     LDA ram_0015
C - - - - - 0x00F4E5 03:F4D5: 29 C0     AND #$C0
C - - - - - 0x00F4E7 03:F4D7: C9 C0     CMP #$C0
C - - - - - 0x00F4E9 03:F4D9: D0 18     BNE bra_F4F3
C - - - - - 0x00F4EB 03:F4DB: A5 15     LDA ram_0015
C - - - - - 0x00F4ED 03:F4DD: 29 1E     AND #$1E
C - - - - - 0x00F4EF 03:F4DF: 85 15     STA ram_0015
C - - - - - 0x00F4F1 03:F4E1: A5 16     LDA ram_0016
C - - - - - 0x00F4F3 03:F4E3: 29 FC     AND #$FC
C - - - - - 0x00F4F5 03:F4E5: 85 16     STA ram_0016
C - - - - - 0x00F4F7 03:F4E7: A5 FA     LDA ram_00FA_flag
C - - - - - 0x00F4F9 03:F4E9: 29 08     AND #$08
C - - - - - 0x00F4FB 03:F4EB: F0 06     BEQ bra_F4F3
C - - - - - 0x00F4FD 03:F4ED: A5 16     LDA ram_0016
C - - - - - 0x00F4FF 03:F4EF: 49 08     EOR #$08
C - - - - - 0x00F501 03:F4F1: 85 16     STA ram_0016
bra_F4F3:
C - - - - - 0x00F503 03:F4F3: A5 15     LDA ram_0015
C - - - - - 0x00F505 03:F4F5: 85 1C     STA ram_001C
C - - - - - 0x00F507 03:F4F7: A5 16     LDA ram_0016
C - - - - - 0x00F509 03:F4F9: 85 1D     STA ram_001D
C - - - - - 0x00F50B 03:F4FB: 60        RTS



sub_F4FC:
C - - - - - 0x00F50C 03:F4FC: A5 1C     LDA ram_001C
C - - - - - 0x00F50E 03:F4FE: 18        CLC
C - - - - - 0x00F50F 03:F4FF: 69 02     ADC #< $0002
C - - - - - 0x00F511 03:F501: 85 1C     STA ram_001C
C - - - - - 0x00F513 03:F503: A5 1D     LDA ram_001D
C - - - - - 0x00F515 03:F505: 69 00     ADC #> $0002
C - - - - - 0x00F517 03:F507: 85 1D     STA ram_001D
C - - - - - 0x00F519 03:F509: A5 1C     LDA ram_001C
C - - - - - 0x00F51B 03:F50B: 29 1F     AND #$1F
C - - - - - 0x00F51D 03:F50D: D0 19     BNE bra_F528_RTS
C - - - - - 0x00F51F 03:F50F: A5 1C     LDA ram_001C
C - - - - - 0x00F521 03:F511: 38        SEC
C - - - - - 0x00F522 03:F512: E9 20     SBC #< $0020
C - - - - - 0x00F524 03:F514: 85 1C     STA ram_001C
C - - - - - 0x00F526 03:F516: A5 1D     LDA ram_001D
C - - - - - 0x00F528 03:F518: E9 00     SBC #> $0020
C - - - - - 0x00F52A 03:F51A: 85 1D     STA ram_001D
C - - - - - 0x00F52C 03:F51C: A5 FA     LDA ram_00FA_flag
C - - - - - 0x00F52E 03:F51E: 29 08     AND #$08
C - - - - - 0x00F530 03:F520: D0 06     BNE bra_F528_RTS
C - - - - - 0x00F532 03:F522: A5 1D     LDA ram_001D
C - - - - - 0x00F534 03:F524: 49 04     EOR #$04
C - - - - - 0x00F536 03:F526: 85 1D     STA ram_001D
bra_F528_RTS:
C - - - - - 0x00F538 03:F528: 60        RTS



sub_F529:
C - - - - - 0x00F539 03:F529: 20 5C F4  JSR sub_F45C
C - - - - - 0x00F53C 03:F52C: A6 10     LDX ram_0010
C - - - - - 0x00F53E 03:F52E: A4 11     LDY ram_0011
C - - - - - 0x00F540 03:F530: B9 61 F5  LDA tbl_F561,Y
C - - - - - 0x00F543 03:F533: 3D 00 03  AND ram_ppu_buffer_1,X
C - - - - - 0x00F546 03:F536: 9D 00 03  STA ram_ppu_buffer_1,X
C - - - - - 0x00F549 03:F539: 84 14     STY ram_0014
C - - - - - 0x00F54B 03:F53B: A5 22     LDA ram_0022
C - - - - - 0x00F54D 03:F53D: 4A        LSR
C - - - - - 0x00F54E 03:F53E: 26 14     ROL ram_0014
C - - - - - 0x00F550 03:F540: 4A        LSR
C - - - - - 0x00F551 03:F541: 26 14     ROL ram_0014
C - - - - - 0x00F553 03:F543: A4 14     LDY ram_0014
C - - - - - 0x00F555 03:F545: B9 51 F5  LDA tbl_F551,Y
C - - - - - 0x00F558 03:F548: 85 14     STA ram_0014
C - - - - - 0x00F55A 03:F54A: 1D 00 03  ORA ram_ppu_buffer_1,X
C - - - - - 0x00F55D 03:F54D: 9D 00 03  STA ram_ppu_buffer_1,X
C - - - - - 0x00F560 03:F550: 60        RTS



tbl_F551:
- D 3 - - - 0x00F561 03:F551: 00        .byte $00   ; 00 
- D 3 - - - 0x00F562 03:F552: 02        .byte $02   ; 01 
- D 3 - - - 0x00F563 03:F553: 01        .byte $01   ; 02 
- D 3 - - - 0x00F564 03:F554: 03        .byte $03   ; 03 
- D 3 - - - 0x00F565 03:F555: 00        .byte $00   ; 04 
- D 3 - - - 0x00F566 03:F556: 08        .byte $08   ; 05 
- D 3 - - - 0x00F567 03:F557: 04        .byte $04   ; 06 
- D 3 - - - 0x00F568 03:F558: 0C        .byte $0C   ; 07 
- D 3 - - - 0x00F569 03:F559: 00        .byte $00   ; 08 
- D 3 - - - 0x00F56A 03:F55A: 20        .byte $20   ; 09 
- D 3 - - - 0x00F56B 03:F55B: 10        .byte $10   ; 0A 
- D 3 - - - 0x00F56C 03:F55C: 30        .byte $30   ; 0B 
- D 3 - - - 0x00F56D 03:F55D: 00        .byte $00   ; 0C 
- D 3 - - - 0x00F56E 03:F55E: 80        .byte $80   ; 0D 
- D 3 - - - 0x00F56F 03:F55F: 40        .byte $40   ; 0E 
- D 3 - - - 0x00F570 03:F560: C0        .byte $C0   ; 0F 



tbl_F561:
- D 3 - - - 0x00F571 03:F561: FC        .byte $FC   ; 00 
- D 3 - - - 0x00F572 03:F562: F3        .byte $F3   ; 01 
- D 3 - - - 0x00F573 03:F563: CF        .byte $CF   ; 02 
- D 3 - - - 0x00F574 03:F564: 3F        .byte $3F   ; 03 



sub_0x00F575:
C - - - - - 0x00F575 03:F565: 20 86 F5  JSR sub_F586
C - - - - - 0x00F578 03:F568: 20 9E F5  JSR sub_F59E
C - - - - - 0x00F57B 03:F56B: 20 A2 F5  JSR sub_F5A2
C - - - - - 0x00F57E 03:F56E: 20 B2 F5  JSR sub_F5B2
C - - - - - 0x00F581 03:F571: 60        RTS


; bzk garbage
- - - - - - 0x00F582 03:F572: 20 86 F5  JSR sub_F586
- - - - - - 0x00F585 03:F575: 20 9E F5  JSR sub_F59E
- - - - - - 0x00F588 03:F578: 20 B2 F5  JSR sub_F5B2
- - - - - - 0x00F58B 03:F57B: 60        RTS


; bzk garbage
- - - - - - 0x00F58C 03:F57C: 20 86 F5  JSR sub_F586
- - - - - - 0x00F58F 03:F57F: 20 A2 F5  JSR sub_F5A2
- - - - - - 0x00F592 03:F582: 20 B2 F5  JSR sub_F5B2
- - - - - - 0x00F595 03:F585: 60        RTS



sub_F586:
; bzk optimize, A is always 00, and no need for a table below
C - - - - - 0x00F596 03:F586: 85 10     STA ram_0010
C - - - - - 0x00F598 03:F588: 86 11     STX ram_0011
C - - - - - 0x00F59A 03:F58A: 84 12     STY ram_0012
C - - - - - 0x00F59C 03:F58C: 20 E3 EE  JSR sub_EEE3
C - - - - - 0x00F59F 03:F58F: A5 10     LDA ram_0010
C - - - - - 0x00F5A1 03:F591: 29 03     AND #$03
C - - - - - 0x00F5A3 03:F593: A8        TAY
C - - - - - 0x00F5A4 03:F594: B9 9A F5  LDA tbl_F59A,Y
C - - - - - 0x00F5A7 03:F597: 85 13     STA ram_0013
C - - - - - 0x00F5A9 03:F599: 60        RTS



tbl_F59A:
- D 3 - - - 0x00F5AA 03:F59A: 00        .byte $00   ; 00 
- - - - - - 0x00F5AB 03:F59B: 55        .byte $55   ; 01 
- - - - - - 0x00F5AC 03:F59C: AA        .byte $AA   ; 02 
- - - - - - 0x00F5AD 03:F59D: FF        .byte $FF   ; 03 



sub_F59E:
C - - - - - 0x00F5AE 03:F59E: A2 00     LDX #$00
C - - - - - 0x00F5B0 03:F5A0: F0 02     BEQ bra_F5A4    ; jmp



sub_F5A2:
C - - - - - 0x00F5B2 03:F5A2: A2 40     LDX #$40
bra_F5A4:
C - - - - - 0x00F5B4 03:F5A4: A5 13     LDA ram_0013
C - - - - - 0x00F5B6 03:F5A6: A0 00     LDY #$00
bra_F5A8_loop:
C - - - - - 0x00F5B8 03:F5A8: 9D 00 03  STA ram_ppu_buffer_1,X
C - - - - - 0x00F5BB 03:F5AB: E8        INX
C - - - - - 0x00F5BC 03:F5AC: C8        INY
C - - - - - 0x00F5BD 03:F5AD: C0 40     CPY #$40
C - - - - - 0x00F5BF 03:F5AF: D0 F7     BNE bra_F5A8_loop
C - - - - - 0x00F5C1 03:F5B1: 60        RTS



sub_F5B2:
C - - - - - 0x00F5C2 03:F5B2: A6 11     LDX ram_0011
C - - - - - 0x00F5C4 03:F5B4: A4 12     LDY ram_0012
C - - - - - 0x00F5C6 03:F5B6: 60        RTS


; bzk garbage
- - - - - - 0x00F5C7 03:F5B7: A9 20     LDA #con_0018_20
- - - - - - 0x00F5C9 03:F5B9: 4C DA EE  JMP loc_EEDA


; bzk garbage
- - - - - - 0x00F5CC 03:F5BC: A9 10     LDA #con_0018_10
- - - - - - 0x00F5CE 03:F5BE: 4C DA EE  JMP loc_EEDA



sub_F5C1:
sub_0x00F5D1:
C - - - - - 0x00F5D1 03:F5C1: A9 30     LDA #con_0018_10 + con_0018_20
C - - - - - 0x00F5D3 03:F5C3: 4C DA EE  JMP loc_EEDA



sub_F5C6:
C - - - - - 0x00F5D6 03:F5C6: 20 E3 EE  JSR sub_EEE3
C - - - - - 0x00F5D9 03:F5C9: A9 04     LDA #con_0018_04
C - - - - - 0x00F5DB 03:F5CB: 20 DA EE  JSR sub_EEDA
C - - - - - 0x00F5DE 03:F5CE: 20 E3 EE  JSR sub_EEE3
sub_F5D1:
C - - - - - 0x00F5E1 03:F5D1: A9 18     LDA #$18
C - - - - - 0x00F5E3 03:F5D3: D0 06     BNE bra_F5DB    ; jmp


; bzk garbage
- - - - - - 0x00F5E5 03:F5D5: A9 10     LDA #$10
- - - - - - 0x00F5E7 03:F5D7: D0 02     BNE bra_F5DB    ; jmp


; bzk garbage
- - - - - - 0x00F5E9 03:F5D9: A9 08     LDA #$08



bra_F5DB:
C - - - - - 0x00F5EB 03:F5DB: 05 FE     ORA ram_for_2001
C - - - - - 0x00F5ED 03:F5DD: D0 0C     BNE bra_F5EB    ; jmp



sub_F5DF:
C - - - - - 0x00F5EF 03:F5DF: A9 E7     LDA #$E7
C - - - - - 0x00F5F1 03:F5E1: D0 06     BNE bra_F5E9    ; jmp


; bzk garbage
- - - - - - 0x00F5F3 03:F5E3: A9 EF     LDA #$EF
- - - - - - 0x00F5F5 03:F5E5: D0 02     BNE bra_F5E9    ; jmp


; bzk garbage
- - - - - - 0x00F5F7 03:F5E7: A9 F7     LDA #$F7



bra_F5E9:
C - - - - - 0x00F5F9 03:F5E9: 25 FE     AND ram_for_2001
bra_F5EB:
C - - - - - 0x00F5FB 03:F5EB: 85 FE     STA ram_for_2001
C - - - - - 0x00F5FD 03:F5ED: A9 01     LDA #con_0018_01
C - - - - - 0x00F5FF 03:F5EF: 20 DA EE  JSR sub_EEDA
C - - - - - 0x00F602 03:F5F2: 20 CD EE  JSR sub_EECD_wait_1_frm
C - - - - - 0x00F605 03:F5F5: 60        RTS



sub_F5F6:
sub_0x00F606:
C - - - - - 0x00F606 03:F5F6: A9 40     LDA #con_0018_40
C - - - - - 0x00F608 03:F5F8: 4C DA EE  JMP loc_EEDA



sub_F5FB:
sub_0x00F60B_write_palette:
C - - - - - 0x00F60B 03:F5FB: 98        TYA
C - - - - - 0x00F60C 03:F5FC: 48        PHA
C - - - - - 0x00F60D 03:F5FD: A0 00     LDY #$00
bra_F5FF_loop:
C - - - - - 0x00F60F 03:F5FF: B1 1E     LDA (ram_001E),Y
C - - - - - 0x00F611 03:F601: 29 0F     AND #$0F
C - - - - - 0x00F613 03:F603: 99 00 04  STA ram_pal_buffer_2,Y
C - - - - - 0x00F616 03:F606: C8        INY
C - - - - - 0x00F617 03:F607: C0 20     CPY #$20
C - - - - - 0x00F619 03:F609: D0 F4     BNE bra_F5FF_loop
C - - - - - 0x00F61B 03:F60B: 20 79 F6  JSR sub_F679
C - - - - - 0x00F61E 03:F60E: 20 23 F6  JSR sub_F623
C - - - - - 0x00F621 03:F611: 20 79 F6  JSR sub_F679
C - - - - - 0x00F624 03:F614: 20 23 F6  JSR sub_F623
C - - - - - 0x00F627 03:F617: 20 79 F6  JSR sub_F679
C - - - - - 0x00F62A 03:F61A: 20 23 F6  JSR sub_F623
C - - - - - 0x00F62D 03:F61D: 20 79 F6  JSR sub_F679
C - - - - - 0x00F630 03:F620: 68        PLA
C - - - - - 0x00F631 03:F621: A8        TAY
C - - - - - 0x00F632 03:F622: 60        RTS



sub_F623:
C - - - - - 0x00F633 03:F623: A0 00     LDY #$00
bra_F625_loop:
C - - - - - 0x00F635 03:F625: B9 00 04  LDA ram_pal_buffer_2,Y
C - - - - - 0x00F638 03:F628: D1 1E     CMP (ram_001E),Y
C - - - - - 0x00F63A 03:F62A: F0 06     BEQ bra_F632
C - - - - - 0x00F63C 03:F62C: 18        CLC
C - - - - - 0x00F63D 03:F62D: 69 10     ADC #$10
C - - - - - 0x00F63F 03:F62F: 99 00 04  STA ram_pal_buffer_2,Y
bra_F632:
C - - - - - 0x00F642 03:F632: C8        INY
C - - - - - 0x00F643 03:F633: C0 20     CPY #$20
C - - - - - 0x00F645 03:F635: D0 EE     BNE bra_F625_loop
C - - - - - 0x00F647 03:F637: 60        RTS



sub_F638:
sub_0x00F648:
C - - - - - 0x00F648 03:F638: 8A        TXA
C - - - - - 0x00F649 03:F639: 48        PHA
C - - - - - 0x00F64A 03:F63A: 20 55 F6  JSR sub_F655
C - - - - - 0x00F64D 03:F63D: 20 79 F6  JSR sub_F679
C - - - - - 0x00F650 03:F640: 20 55 F6  JSR sub_F655
C - - - - - 0x00F653 03:F643: 20 79 F6  JSR sub_F679
C - - - - - 0x00F656 03:F646: 20 55 F6  JSR sub_F655
C - - - - - 0x00F659 03:F649: 20 79 F6  JSR sub_F679
C - - - - - 0x00F65C 03:F64C: 20 55 F6  JSR sub_F655
C - - - - - 0x00F65F 03:F64F: 20 79 F6  JSR sub_F679
C - - - - - 0x00F662 03:F652: 68        PLA
C - - - - - 0x00F663 03:F653: AA        TAX
C - - - - - 0x00F664 03:F654: 60        RTS



sub_F655:
C - - - - - 0x00F665 03:F655: A2 00     LDX #$00
bra_F657_loop:
C - - - - - 0x00F667 03:F657: BD 00 04  LDA ram_pal_buffer_2,X
C - - - - - 0x00F66A 03:F65A: C9 0F     CMP #$0F
C - - - - - 0x00F66C 03:F65C: F0 15     BEQ bra_F673
C - - - - - 0x00F66E 03:F65E: 29 F0     AND #$F0
C - - - - - 0x00F670 03:F660: F0 0C     BEQ bra_F66E
C - - - - - 0x00F672 03:F662: BD 00 04  LDA ram_pal_buffer_2,X
C - - - - - 0x00F675 03:F665: 38        SEC
C - - - - - 0x00F676 03:F666: E9 10     SBC #$10
C - - - - - 0x00F678 03:F668: 9D 00 04  STA ram_pal_buffer_2,X
C - - - - - 0x00F67B 03:F66B: 4C 73 F6  JMP loc_F673
bra_F66E:
C - - - - - 0x00F67E 03:F66E: A9 0F     LDA #$0F
C - - - - - 0x00F680 03:F670: 9D 00 04  STA ram_pal_buffer_2,X
bra_F673:
loc_F673:
C D 3 - - - 0x00F683 03:F673: E8        INX
C - - - - - 0x00F684 03:F674: E0 20     CPX #$20
C - - - - - 0x00F686 03:F676: D0 DF     BNE bra_F657_loop
C - - - - - 0x00F688 03:F678: 60        RTS



sub_F679:
C - - - - - 0x00F689 03:F679: 20 F6 F5  JSR sub_F5F6
C - - - - - 0x00F68C 03:F67C: 20 CD EE  JSR sub_EECD_wait_1_frm
C - - - - - 0x00F68F 03:F67F: 20 CD EE  JSR sub_EECD_wait_1_frm
C - - - - - 0x00F692 03:F682: 20 CD EE  JSR sub_EECD_wait_1_frm
C - - - - - 0x00F695 03:F685: 20 CD EE  JSR sub_EECD_wait_1_frm
C - - - - - 0x00F698 03:F688: 20 CD EE  JSR sub_EECD_wait_1_frm
C - - - - - 0x00F69B 03:F68B: 60        RTS


; bzk garbage
- - - - - - 0x00F69C 03:F68C: 85 10     STA ram_0010
- - - - - - 0x00F69E 03:F68E: 8A        TXA
- - - - - - 0x00F69F 03:F68F: 48        PHA
- - - - - - 0x00F6A0 03:F690: A2 00     LDX #$00
- - - - - - 0x00F6A2 03:F692: F0 06     BEQ bra_F69A
- - - - - - 0x00F6A4 03:F694: 85 10     STA ram_0010
- - - - - - 0x00F6A6 03:F696: 8A        TXA
- - - - - - 0x00F6A7 03:F697: 48        PHA
- - - - - - 0x00F6A8 03:F698: A2 04     LDX #$04
bra_F69A:
- - - - - - 0x00F6AA 03:F69A: A5 10     LDA ram_0010
- - - - - - 0x00F6AC 03:F69C: 18        CLC
- - - - - - 0x00F6AD 03:F69D: 75 26     ADC ram_cam_pos_X_lo,X
- - - - - - 0x00F6AF 03:F69F: 95 26     STA ram_cam_pos_X_lo,X
- - - - - - 0x00F6B1 03:F6A1: B5 27     LDA ram_cam_pos_X_hi,X
- - - - - - 0x00F6B3 03:F6A3: 69 00     ADC #$00
- - - - - - 0x00F6B5 03:F6A5: 95 27     STA ram_cam_pos_X_hi,X
- - - - - - 0x00F6B7 03:F6A7: 68        PLA
- - - - - - 0x00F6B8 03:F6A8: AA        TAX
- - - - - - 0x00F6B9 03:F6A9: 60        RTS


; bzk garbage
- - - - - - 0x00F6BA 03:F6AA: 85 10     STA ram_0010
- - - - - - 0x00F6BC 03:F6AC: 8A        TXA
- - - - - - 0x00F6BD 03:F6AD: 48        PHA
- - - - - - 0x00F6BE 03:F6AE: A2 00     LDX #$00
- - - - - - 0x00F6C0 03:F6B0: F0 06     BEQ bra_F6B8
- - - - - - 0x00F6C2 03:F6B2: 85 10     STA ram_0010
- - - - - - 0x00F6C4 03:F6B4: 8A        TXA
- - - - - - 0x00F6C5 03:F6B5: 48        PHA
- - - - - - 0x00F6C6 03:F6B6: A2 04     LDX #$04
bra_F6B8:
- - - - - - 0x00F6C8 03:F6B8: B5 26     LDA ram_cam_pos_X_lo,X
- - - - - - 0x00F6CA 03:F6BA: 38        SEC
- - - - - - 0x00F6CB 03:F6BB: E5 10     SBC ram_0010
- - - - - - 0x00F6CD 03:F6BD: 95 26     STA ram_cam_pos_X_lo,X
- - - - - - 0x00F6CF 03:F6BF: B5 27     LDA ram_cam_pos_X_hi,X
- - - - - - 0x00F6D1 03:F6C1: E9 00     SBC #$00
- - - - - - 0x00F6D3 03:F6C3: 95 27     STA ram_cam_pos_X_hi,X
- - - - - - 0x00F6D5 03:F6C5: 68        PLA
- - - - - - 0x00F6D6 03:F6C6: AA        TAX
- - - - - - 0x00F6D7 03:F6C7: 60        RTS


; bzk garbage
- - - - - - 0x00F6D8 03:F6C8: 85 10     STA ram_0010
- - - - - - 0x00F6DA 03:F6CA: 8A        TXA
- - - - - - 0x00F6DB 03:F6CB: 48        PHA
- - - - - - 0x00F6DC 03:F6CC: A2 00     LDX #$00
- - - - - - 0x00F6DE 03:F6CE: F0 06     BEQ bra_F6D6
- - - - - - 0x00F6E0 03:F6D0: 85 10     STA ram_0010
- - - - - - 0x00F6E2 03:F6D2: 8A        TXA
- - - - - - 0x00F6E3 03:F6D3: 48        PHA
- - - - - - 0x00F6E4 03:F6D4: A2 04     LDX #$04
bra_F6D6:
- - - - - - 0x00F6E6 03:F6D6: A5 10     LDA ram_0010
- - - - - - 0x00F6E8 03:F6D8: 18        CLC
- - - - - - 0x00F6E9 03:F6D9: 75 28     ADC ram_cam_pos_Y_lo,X
- - - - - - 0x00F6EB 03:F6DB: 95 28     STA ram_cam_pos_Y_lo,X
- - - - - - 0x00F6ED 03:F6DD: 38        SEC
- - - - - - 0x00F6EE 03:F6DE: E9 F0     SBC #$F0
- - - - - - 0x00F6F0 03:F6E0: 90 08     BCC bra_F6EA
- - - - - - 0x00F6F2 03:F6E2: 95 28     STA ram_cam_pos_Y_lo,X
- - - - - - 0x00F6F4 03:F6E4: F6 29     INC ram_cam_pos_Y_hi,X
- - - - - - 0x00F6F6 03:F6E6: B5 29     LDA ram_cam_pos_Y_hi,X
- - - - - - 0x00F6F8 03:F6E8: 95 29     STA ram_cam_pos_Y_hi,X
bra_F6EA:
- - - - - - 0x00F6FA 03:F6EA: 68        PLA
- - - - - - 0x00F6FB 03:F6EB: AA        TAX
- - - - - - 0x00F6FC 03:F6EC: 60        RTS


; bzk garbage
- - - - - - 0x00F6FD 03:F6ED: 85 10     STA ram_0010
- - - - - - 0x00F6FF 03:F6EF: 8A        TXA
- - - - - - 0x00F700 03:F6F0: 48        PHA
- - - - - - 0x00F701 03:F6F1: A2 00     LDX #$00
- - - - - - 0x00F703 03:F6F3: F0 06     BEQ bra_F6FB
- - - - - - 0x00F705 03:F6F5: 85 10     STA ram_0010
- - - - - - 0x00F707 03:F6F7: 8A        TXA
- - - - - - 0x00F708 03:F6F8: 48        PHA
- - - - - - 0x00F709 03:F6F9: A2 04     LDX #$04
bra_F6FB:
- - - - - - 0x00F70B 03:F6FB: B5 28     LDA ram_cam_pos_Y_lo,X
- - - - - - 0x00F70D 03:F6FD: 38        SEC
- - - - - - 0x00F70E 03:F6FE: E5 10     SBC ram_0010
- - - - - - 0x00F710 03:F700: 95 28     STA ram_cam_pos_Y_lo,X
- - - - - - 0x00F712 03:F702: B0 0B     BCS bra_F70F
- - - - - - 0x00F714 03:F704: 38        SEC
- - - - - - 0x00F715 03:F705: E9 10     SBC #$10
- - - - - - 0x00F717 03:F707: 95 28     STA ram_cam_pos_Y_lo,X
- - - - - - 0x00F719 03:F709: F6 29     INC ram_cam_pos_Y_hi,X
- - - - - - 0x00F71B 03:F70B: B5 29     LDA ram_cam_pos_Y_hi,X
- - - - - - 0x00F71D 03:F70D: 95 29     STA ram_cam_pos_Y_hi,X
bra_F70F:
- - - - - - 0x00F71F 03:F70F: 68        PLA
- - - - - - 0x00F720 03:F710: AA        TAX
- - - - - - 0x00F721 03:F711: 60        RTS



sub_F712:
sub_0x00F722:
C - - - - - 0x00F722 03:F712: 8A        TXA
C - - - - - 0x00F723 03:F713: 48        PHA
C - - - - - 0x00F724 03:F714: 98        TYA
C - - - - - 0x00F725 03:F715: 48        PHA
C - - - - - 0x00F726 03:F716: C6 21     DEC ram_0021
C - - - - - 0x00F728 03:F718: A9 3F     LDA #$3F
C - - - - - 0x00F72A 03:F71A: C5 24     CMP ram_0024
C - - - - - 0x00F72C 03:F71C: B0 05     BCS bra_F723
- - - - - - 0x00F72E 03:F71E: 68        PLA
- - - - - - 0x00F72F 03:F71F: A8        TAY
- - - - - - 0x00F730 03:F720: 68        PLA
- - - - - - 0x00F731 03:F721: AA        TAX
- - - - - - 0x00F732 03:F722: 60        RTS
bra_F723:
C - - - - - 0x00F733 03:F723: A5 24     LDA ram_0024
C - - - - - 0x00F735 03:F725: 0A        ASL
C - - - - - 0x00F736 03:F726: 0A        ASL
C - - - - - 0x00F737 03:F727: AA        TAX
C - - - - - 0x00F738 03:F728: A0 00     LDY #$00
C - - - - - 0x00F73A 03:F72A: B1 1E     LDA (ram_001E),Y
C - - - - - 0x00F73C 03:F72C: 29 0F     AND #$0F
C - - - - - 0x00F73E 03:F72E: 85 57     STA ram_0057_loop_counter
C - - - - - 0x00F740 03:F730: B1 1E     LDA (ram_001E),Y
C - - - - - 0x00F742 03:F732: 29 F0     AND #$F0
C - - - - - 0x00F744 03:F734: 4A        LSR
C - - - - - 0x00F745 03:F735: 4A        LSR
C - - - - - 0x00F746 03:F736: 4A        LSR
C - - - - - 0x00F747 03:F737: 4A        LSR
C - - - - - 0x00F748 03:F738: 85 55     STA ram_0055_loop_counter
C - - - - - 0x00F74A 03:F73A: 85 56     STA ram_0056
C - - - - - 0x00F74C 03:F73C: A5 21     LDA ram_0021
C - - - - - 0x00F74E 03:F73E: 85 59     STA ram_0059
C - - - - - 0x00F750 03:F740: A5 20     LDA ram_0020
C - - - - - 0x00F752 03:F742: 85 58     STA ram_0058
C - - - - - 0x00F754 03:F744: C8        INY
bra_F745_loop:
C - - - - - 0x00F755 03:F745: A5 59     LDA ram_0059
C - - - - - 0x00F757 03:F747: 9D 00 02  STA ram_spr_Y,X
C - - - - - 0x00F75A 03:F74A: A5 58     LDA ram_0058
C - - - - - 0x00F75C 03:F74C: 9D 03 02  STA ram_spr_X,X
C - - - - - 0x00F75F 03:F74F: B1 1E     LDA (ram_001E),Y
C - - - - - 0x00F761 03:F751: 9D 01 02  STA ram_spr_T,X
C - - - - - 0x00F764 03:F754: 48        PHA
C - - - - - 0x00F765 03:F755: C8        INY
C - - - - - 0x00F766 03:F756: B1 1E     LDA (ram_001E),Y
C - - - - - 0x00F768 03:F758: 05 22     ORA ram_0022
C - - - - - 0x00F76A 03:F75A: 9D 02 02  STA ram_spr_A,X
C - - - - - 0x00F76D 03:F75D: C8        INY
C - - - - - 0x00F76E 03:F75E: 68        PLA
C - - - - - 0x00F76F 03:F75F: C9 FF     CMP #$FF
C - - - - - 0x00F771 03:F761: F0 06     BEQ bra_F769
C - - - - - 0x00F773 03:F763: E8        INX
C - - - - - 0x00F774 03:F764: E8        INX
C - - - - - 0x00F775 03:F765: E8        INX
C - - - - - 0x00F776 03:F766: E8        INX
C - - - - - 0x00F777 03:F767: E6 24     INC ram_0024
bra_F769:
C - - - - - 0x00F779 03:F769: A5 58     LDA ram_0058
C - - - - - 0x00F77B 03:F76B: 18        CLC
C - - - - - 0x00F77C 03:F76C: 69 08     ADC #$08
C - - - - - 0x00F77E 03:F76E: 85 58     STA ram_0058
C - - - - - 0x00F780 03:F770: C6 55     DEC ram_0055_loop_counter
C - - - - - 0x00F782 03:F772: D0 D1     BNE bra_F745_loop
C - - - - - 0x00F784 03:F774: A5 20     LDA ram_0020
C - - - - - 0x00F786 03:F776: 85 58     STA ram_0058
C - - - - - 0x00F788 03:F778: A5 59     LDA ram_0059
C - - - - - 0x00F78A 03:F77A: 18        CLC
C - - - - - 0x00F78B 03:F77B: 69 08     ADC #$08
C - - - - - 0x00F78D 03:F77D: 85 59     STA ram_0059
C - - - - - 0x00F78F 03:F77F: A5 56     LDA ram_0056
C - - - - - 0x00F791 03:F781: 85 55     STA ram_0055_loop_counter
C - - - - - 0x00F793 03:F783: C6 57     DEC ram_0057_loop_counter
C - - - - - 0x00F795 03:F785: D0 BE     BNE bra_F745_loop
C - - - - - 0x00F797 03:F787: E6 21     INC ram_0021
C - - - - - 0x00F799 03:F789: 68        PLA
C - - - - - 0x00F79A 03:F78A: A8        TAY
C - - - - - 0x00F79B 03:F78B: 68        PLA
C - - - - - 0x00F79C 03:F78C: AA        TAX
C - - - - - 0x00F79D 03:F78D: 60        RTS



bra_F78E:
sub_F78E_clear_0700_07D7:
; also clear ram_003A
C - - - - - 0x00F79E 03:F78E: 48        PHA
C - - - - - 0x00F79F 03:F78F: 8A        TXA
C - - - - - 0x00F7A0 03:F790: 48        PHA
C - - - - - 0x00F7A1 03:F791: A9 00     LDA #$00
C - - - - - 0x00F7A3 03:F793: AA        TAX
bra_F794_loop:  ; 0700-07D7
C - - - - - 0x00F7A4 03:F794: 9D 00 07  STA ram_sound_engine_memory,X
C - - - - - 0x00F7A7 03:F797: E8        INX
C - - - - - 0x00F7A8 03:F798: E0 D8     CPX #$D8
C - - - - - 0x00F7AA 03:F79A: D0 F8     BNE bra_F794_loop
C - - - - - 0x00F7AC 03:F79C: 85 3A     STA ram_003A
C - - - - - 0x00F7AE 03:F79E: 68        PLA
C - - - - - 0x00F7AF 03:F79F: AA        TAX
C - - - - - 0x00F7B0 03:F7A0: 68        PLA
C - - - - - 0x00F7B1 03:F7A1: 60        RTS



sub_F7A2_play_sound:
sub_0x00F7B2_play_sound:
C - - - - - 0x00F7B2 03:F7A2: 48        PHA
C - - - - - 0x00F7B3 03:F7A3: A5 F0     LDA ram_00F0_flag
C - - - - - 0x00F7B5 03:F7A5: 09 04     ORA #con_00F0_04
C - - - - - 0x00F7B7 03:F7A7: 85 F0     STA ram_00F0_flag
C - - - - - 0x00F7B9 03:F7A9: A9 02     LDA #con_prg_bank + $02
C - - - - - 0x00F7BB 03:F7AB: 20 29 F1  JSR sub_F129
C - - - - - 0x00F7BE 03:F7AE: 68        PLA
C - - - - - 0x00F7BF 03:F7AF: 85 44     STA ram_0044
C - - - - - 0x00F7C1 03:F7B1: D0 06     BNE bra_F7B9
; if 00 (unused?)
- - - - - - 0x00F7C3 03:F7B3: 20 8E F7  JSR sub_F78E_clear_0700_07D7
- - - - - - 0x00F7C6 03:F7B6: 4C C2 F7  JMP loc_F7C2
bra_F7B9:
C - - - - - 0x00F7C9 03:F7B9: C5 3A     CMP ram_003A
C - - - - - 0x00F7CB 03:F7BB: F0 05     BEQ bra_F7C2
C - - - - - 0x00F7CD 03:F7BD: C6 44     DEC ram_0044
C - - - - - 0x00F7CF 03:F7BF: 20 E6 F7  JSR sub_F7E6
bra_F7C2:
loc_F7C2:
C - - - - - 0x00F7D2 03:F7C2: 20 46 F1  JSR sub_F146
C - - - - - 0x00F7D5 03:F7C5: A5 F0     LDA ram_00F0_flag
C - - - - - 0x00F7D7 03:F7C7: 29 FB     AND #con_00F0_04 ^ $FF
C - - - - - 0x00F7D9 03:F7C9: 85 F0     STA ram_00F0_flag
C - - - - - 0x00F7DB 03:F7CB: 60        RTS



sub_F7CC:
C - - - - - 0x00F7DC 03:F7CC: AD 00 07  LDA ram_se_0700
C - - - - - 0x00F7DF 03:F7CF: 0D 18 07  ORA ram_se_0700 + $18
C - - - - - 0x00F7E2 03:F7D2: 0D 30 07  ORA ram_se_0700 + $30
C - - - - - 0x00F7E5 03:F7D5: 0D 48 07  ORA ram_se_0700 + $48
C - - - - - 0x00F7E8 03:F7D8: 30 0B     BMI bra_F7E5_RTS
C - - - - - 0x00F7EA 03:F7DA: A5 3A     LDA ram_003A
C - - - - - 0x00F7EC 03:F7DC: 85 44     STA ram_0044
C - - - - - 0x00F7EE 03:F7DE: F0 AE     BEQ bra_F78E
C - - - - - 0x00F7F0 03:F7E0: C6 44     DEC ram_0044
C - - - - - 0x00F7F2 03:F7E2: 20 E6 F7  JSR sub_F7E6
bra_F7E5_RTS:
C - - - - - 0x00F7F5 03:F7E5: 60        RTS



sub_F7E6:
C - - - - - 0x00F7F6 03:F7E6: 8A        TXA
C - - - - - 0x00F7F7 03:F7E7: 48        PHA
C - - - - - 0x00F7F8 03:F7E8: 98        TYA
C - - - - - 0x00F7F9 03:F7E9: 48        PHA
C - - - - - 0x00F7FA 03:F7EA: A5 44     LDA ram_0044
C - - - - - 0x00F7FC 03:F7EC: 0A        ASL
C - - - - - 0x00F7FD 03:F7ED: A8        TAY
C - - - - - 0x00F7FE 03:F7EE: B1 3D     LDA (ram_003D),Y
C - - - - - 0x00F800 03:F7F0: 85 45     STA ram_0045
C - - - - - 0x00F802 03:F7F2: C8        INY
C - - - - - 0x00F803 03:F7F3: B1 3D     LDA (ram_003D),Y
C - - - - - 0x00F805 03:F7F5: 85 46     STA ram_0046
C - - - - - 0x00F807 03:F7F7: 20 FF F7  JSR sub_F7FF_select_music_handler
C - - - - - 0x00F80A 03:F7FA: 68        PLA
C - - - - - 0x00F80B 03:F7FB: A8        TAY
C - - - - - 0x00F80C 03:F7FC: 68        PLA
C - - - - - 0x00F80D 03:F7FD: AA        TAX
C - - - - - 0x00F80E 03:F7FE: 60        RTS



sub_F7FF_select_music_handler:
C - - - - - 0x00F80F 03:F7FF: A0 00     LDY #$00
C - - - - - 0x00F811 03:F801: B1 45     LDA (ram_0045),Y
C - - - - - 0x00F813 03:F803: 20 73 FE  JSR sub_FE73_jump_to_pointers_after_jsr_2
- D 3 - I - 0x00F816 03:F806: 10 F8     .word ofs_007_F810_00
- D 3 - I - 0x00F818 03:F808: 7A F8     .word ofs_007_F87A_01
- - - - - - 0x00F81A 03:F80A: 84 F8     .word ofs_007_F884_02   ; bzk never used
- D 3 - I - 0x00F81C 03:F80C: B0 F8     .word ofs_007_F8B0_03
- - - - - - 0x00F81E 03:F80E: B0 F8     .word ofs_007_F8B0_04   ; bzk never used



sub_F810:
ofs_007_F810_00:
C - - - - - 0x00F820 03:F810: A2 00     LDX #$00
C - - - - - 0x00F822 03:F812: A0 01     LDY #$01
C - - - - - 0x00F824 03:F814: 20 49 F8  JSR sub_F849
C - - - - - 0x00F827 03:F817: 20 49 F8  JSR sub_F849
C - - - - - 0x00F82A 03:F81A: 20 49 F8  JSR sub_F849
C - - - - - 0x00F82D 03:F81D: 20 49 F8  JSR sub_F849
C - - - - - 0x00F830 03:F820: C8        INY
C - - - - - 0x00F831 03:F821: C8        INY
C - - - - - 0x00F832 03:F822: B1 45     LDA (ram_0045),Y
C - - - - - 0x00F834 03:F824: 8D 07 07  STA ram_se_0707
C - - - - - 0x00F837 03:F827: 8D 1F 07  STA ram_se_0707 + $18
C - - - - - 0x00F83A 03:F82A: 8D 37 07  STA ram_se_0707 + $30
C - - - - - 0x00F83D 03:F82D: 8D 4F 07  STA ram_se_0707 + $48
C - - - - - 0x00F840 03:F830: A9 00     LDA #$00
C - - - - - 0x00F842 03:F832: 8D 0F 07  STA ram_se_070F
C - - - - - 0x00F845 03:F835: A9 10     LDA #$10
C - - - - - 0x00F847 03:F837: 8D 27 07  STA ram_se_070F + $18
C - - - - - 0x00F84A 03:F83A: A9 20     LDA #$20
C - - - - - 0x00F84C 03:F83C: 8D 3F 07  STA ram_se_070F + $30
C - - - - - 0x00F84F 03:F83F: A9 30     LDA #$30
C - - - - - 0x00F851 03:F841: 8D 57 07  STA ram_se_070F + $48
C - - - - - 0x00F854 03:F844: A9 00     LDA #$00
C - - - - - 0x00F856 03:F846: 85 3A     STA ram_003A
C - - - - - 0x00F858 03:F848: 60        RTS



sub_F849:
C - - - - - 0x00F859 03:F849: A9 80     LDA #$80
C - - - - - 0x00F85B 03:F84B: 9D 00 07  STA ram_se_0700,X
C - - - - - 0x00F85E 03:F84E: B1 45     LDA (ram_0045),Y
C - - - - - 0x00F860 03:F850: 9D 01 07  STA ram_se_0701,X
C - - - - - 0x00F863 03:F853: C8        INY
C - - - - - 0x00F864 03:F854: B1 45     LDA (ram_0045),Y
C - - - - - 0x00F866 03:F856: 9D 02 07  STA ram_se_0702,X
C - - - - - 0x00F869 03:F859: C8        INY
C - - - - - 0x00F86A 03:F85A: A9 00     LDA #$00
C - - - - - 0x00F86C 03:F85C: 9D 08 07  STA ram_se_0708,X
C - - - - - 0x00F86F 03:F85F: 9D 06 07  STA ram_se_0706,X
C - - - - - 0x00F872 03:F862: A9 01     LDA #$01
C - - - - - 0x00F874 03:F864: 9D 05 07  STA ram_se_0705,X
C - - - - - 0x00F877 03:F867: BD 01 07  LDA ram_se_0701,X
C - - - - - 0x00F87A 03:F86A: 1D 02 07  ORA ram_se_0702,X
C - - - - - 0x00F87D 03:F86D: D0 05     BNE bra_F874
C - - - - - 0x00F87F 03:F86F: A9 00     LDA #$00
C - - - - - 0x00F881 03:F871: 9D 00 07  STA ram_se_0700,X
bra_F874:
C - - - - - 0x00F884 03:F874: 8A        TXA
C - - - - - 0x00F885 03:F875: 18        CLC
C - - - - - 0x00F886 03:F876: 69 18     ADC #$18
C - - - - - 0x00F888 03:F878: AA        TAX
C - - - - - 0x00F889 03:F879: 60        RTS



ofs_007_F87A_01:
C - - J - - 0x00F88A 03:F87A: 20 10 F8  JSR sub_F810
C - - - - - 0x00F88D 03:F87D: A5 44     LDA ram_0044
C - - - - - 0x00F88F 03:F87F: 85 3A     STA ram_003A
C - - - - - 0x00F891 03:F881: E6 3A     INC ram_003A
C - - - - - 0x00F893 03:F883: 60        RTS



ofs_007_F884_02:
- - - - - - 0x00F894 03:F884: A2 60     LDX #$60
- - - - - - 0x00F896 03:F886: A0 01     LDY #$01
- - - - - - 0x00F898 03:F888: 20 49 F8  JSR sub_F849
- - - - - - 0x00F89B 03:F88B: 20 49 F8  JSR sub_F849
- - - - - - 0x00F89E 03:F88E: 20 49 F8  JSR sub_F849
- - - - - - 0x00F8A1 03:F891: C8        INY
- - - - - - 0x00F8A2 03:F892: C8        INY
- - - - - - 0x00F8A3 03:F893: C8        INY
- - - - - - 0x00F8A4 03:F894: C8        INY
- - - - - - 0x00F8A5 03:F895: B1 45     LDA (ram_0045),Y
- - - - - - 0x00F8A7 03:F897: 8D 67 07  STA ram_se_0707 + $60
- - - - - - 0x00F8AA 03:F89A: 8D 7F 07  STA ram_se_0707 + $78
- - - - - - 0x00F8AD 03:F89D: 8D 97 07  STA ram_se_0707 + $90
- - - - - - 0x00F8B0 03:F8A0: A9 40     LDA #$40
- - - - - - 0x00F8B2 03:F8A2: 8D 6F 07  STA ram_se_070F + $60
- - - - - - 0x00F8B5 03:F8A5: A9 50     LDA #$50
- - - - - - 0x00F8B7 03:F8A7: 8D 87 07  STA ram_se_070F + $78
- - - - - - 0x00F8BA 03:F8AA: A9 60     LDA #$60
- - - - - - 0x00F8BC 03:F8AC: 8D 9F 07  STA ram_se_070F + $90
- - - - - - 0x00F8BF 03:F8AF: 60        RTS



ofs_007_F8B0_03:
ofs_007_F8B0_04:
C - - J - - 0x00F8C0 03:F8B0: A0 03     LDY #$03
C - - - - - 0x00F8C2 03:F8B2: A2 A8     LDX #$A8
C - - - - - 0x00F8C4 03:F8B4: 20 49 F8  JSR sub_F849
C - - - - - 0x00F8C7 03:F8B7: C8        INY
C - - - - - 0x00F8C8 03:F8B8: C8        INY
C - - - - - 0x00F8C9 03:F8B9: 20 49 F8  JSR sub_F849
C - - - - - 0x00F8CC 03:F8BC: A0 0B     LDY #$0B
C - - - - - 0x00F8CE 03:F8BE: B1 45     LDA (ram_0045),Y
C - - - - - 0x00F8D0 03:F8C0: 8D AF 07  STA ram_se_0707 + $A8
C - - - - - 0x00F8D3 03:F8C3: 8D C7 07  STA ram_se_0707 + $C0
C - - - - - 0x00F8D6 03:F8C6: A9 70     LDA #$70
C - - - - - 0x00F8D8 03:F8C8: 8D B7 07  STA ram_se_070F + $A8
C - - - - - 0x00F8DB 03:F8CB: A9 80     LDA #$80
C - - - - - 0x00F8DD 03:F8CD: 8D CF 07  STA ram_se_070F + $C0
C - - - - - 0x00F8E0 03:F8D0: 60        RTS



sub_F8D1:
C - - - - - 0x00F8E1 03:F8D1: A5 F0     LDA ram_00F0_flag
C - - - - - 0x00F8E3 03:F8D3: 29 FD     AND #con_00F0_02 ^ $FF
C - - - - - 0x00F8E5 03:F8D5: 85 F0     STA ram_00F0_flag
C - - - - - 0x00F8E7 03:F8D7: 29 0C     AND #con_00F0_04 + con_00F0_08
C - - - - - 0x00F8E9 03:F8D9: F0 07     BEQ bra_F8E2
- - - - - - 0x00F8EB 03:F8DB: A5 F0     LDA ram_00F0_flag
- - - - - - 0x00F8ED 03:F8DD: 09 80     ORA #con_00F0_80
- - - - - - 0x00F8EF 03:F8DF: 85 F0     STA ram_00F0_flag
- - - - - - 0x00F8F1 03:F8E1: 60        RTS
bra_F8E2:
C - - - - - 0x00F8F2 03:F8E2: 20 38 F1  JSR sub_F138
C - - - - - 0x00F8F5 03:F8E5: 20 EC F8  JSR sub_F8EC
C - - - - - 0x00F8F8 03:F8E8: 20 3E F1  JSR sub_F13E
C - - - - - 0x00F8FB 03:F8EB: 60        RTS



sub_F8EC:
C - - - - - 0x00F8FC 03:F8EC: A5 F0     LDA ram_00F0_flag
C - - - - - 0x00F8FE 03:F8EE: 10 07     BPL bra_F8F7    ; if not con_00F0_80
- - - - - - 0x00F900 03:F8F0: 29 7F     AND #con_00F0_80 ^ $FF
- - - - - - 0x00F902 03:F8F2: 85 F0     STA ram_00F0_flag
- - - - - - 0x00F904 03:F8F4: 20 F7 F8  JSR sub_F8F7
bra_F8F7:
sub_F8F7:
C - - - - - 0x00F907 03:F8F7: A2 00     LDX #$00
C - - - - - 0x00F909 03:F8F9: 20 3D F9  JSR sub_F93D
C - - - - - 0x00F90C 03:F8FC: 20 A8 F9  JSR sub_F9A8
C - - - - - 0x00F90F 03:F8FF: A2 18     LDX #$18
C - - - - - 0x00F911 03:F901: 20 3D F9  JSR sub_F93D
C - - - - - 0x00F914 03:F904: 20 A8 F9  JSR sub_F9A8
C - - - - - 0x00F917 03:F907: A2 30     LDX #$30
C - - - - - 0x00F919 03:F909: 20 DF F9  JSR sub_F9DF
C - - - - - 0x00F91C 03:F90C: 20 A9 FA  JSR sub_FAA9
C - - - - - 0x00F91F 03:F90F: A2 48     LDX #$48
C - - - - - 0x00F921 03:F911: 20 CC FA  JSR sub_FACC
C - - - - - 0x00F924 03:F914: A2 60     LDX #$60
C - - - - - 0x00F926 03:F916: 20 3D F9  JSR sub_F93D
C - - - - - 0x00F929 03:F919: 20 A8 F9  JSR sub_F9A8
C - - - - - 0x00F92C 03:F91C: A2 78     LDX #$78
C - - - - - 0x00F92E 03:F91E: 20 3D F9  JSR sub_F93D
C - - - - - 0x00F931 03:F921: 20 A8 F9  JSR sub_F9A8
C - - - - - 0x00F934 03:F924: A2 90     LDX #$90
C - - - - - 0x00F936 03:F926: 20 DF F9  JSR sub_F9DF
C - - - - - 0x00F939 03:F929: 20 A9 FA  JSR sub_FAA9
C - - - - - 0x00F93C 03:F92C: A2 A8     LDX #$A8
C - - - - - 0x00F93E 03:F92E: 20 3D F9  JSR sub_F93D
C - - - - - 0x00F941 03:F931: 20 A8 F9  JSR sub_F9A8
C - - - - - 0x00F944 03:F934: A2 C0     LDX #$C0
C - - - - - 0x00F946 03:F936: 20 CC FA  JSR sub_FACC
C - - - - - 0x00F949 03:F939: 20 4F FD  JSR sub_FD4F
C - - - - - 0x00F94C 03:F93C: 60        RTS



sub_F93D:
C - - - - - 0x00F94D 03:F93D: BD 00 07  LDA ram_se_0700,X
C - - - - - 0x00F950 03:F940: 10 53     BPL bra_F995_RTS
C - - - - - 0x00F952 03:F942: 20 24 FB  JSR sub_FB24
C - - - - - 0x00F955 03:F945: 10 4E     BPL bra_F995_RTS
C - - - - - 0x00F957 03:F947: 20 59 FB  JSR sub_FB59
C - - - - - 0x00F95A 03:F94A: B0 58     BCS bra_F9A4
C - - - - - 0x00F95C 03:F94C: C9 7F     CMP #$7F
C - - - - - 0x00F95E 03:F94E: F0 46     BEQ bra_F996
C - - - - - 0x00F960 03:F950: 0A        ASL
C - - - - - 0x00F961 03:F951: A8        TAY
C - - - - - 0x00F962 03:F952: BD 13 07  LDA ram_se_0713,X
C - - - - - 0x00F965 03:F955: 29 F8     AND #$F8
C - - - - - 0x00F967 03:F957: 9D 13 07  STA ram_se_0713,X
C - - - - - 0x00F96A 03:F95A: B9 B4 FE  LDA tbl_FEB4,Y
C - - - - - 0x00F96D 03:F95D: 1D 13 07  ORA ram_se_0713,X
C - - - - - 0x00F970 03:F960: 9D 13 07  STA ram_se_0713,X
C - - - - - 0x00F973 03:F963: B9 B5 FE  LDA tbl_FEB4 + $01,Y
C - - - - - 0x00F976 03:F966: 9D 12 07  STA ram_se_0712,X
C - - - - - 0x00F979 03:F969: BD 09 07  LDA ram_se_0709,X
C - - - - - 0x00F97C 03:F96C: 10 10     BPL bra_F97E
- - - - - - 0x00F97E 03:F96E: BD 00 07  LDA ram_se_0700,X
- - - - - - 0x00F981 03:F971: 09 40     ORA #$40
- - - - - - 0x00F983 03:F973: 29 DF     AND #$DF
- - - - - - 0x00F985 03:F975: 9D 00 07  STA ram_se_0700,X
- - - - - - 0x00F988 03:F978: A9 00     LDA #$00
- - - - - - 0x00F98A 03:F97A: 9D 0C 07  STA ram_se_070C,X
- - - - - - 0x00F98D 03:F97D: 60        RTS
bra_F97E:
C - - - - - 0x00F98E 03:F97E: A9 00     LDA #$00
C - - - - - 0x00F990 03:F980: 9D 0D 07  STA ram_se_070D,X
C - - - - - 0x00F993 03:F983: 9D 0E 07  STA ram_se_070E,X
C - - - - - 0x00F996 03:F986: A9 01     LDA #$01
C - - - - - 0x00F998 03:F988: 9D 0C 07  STA ram_se_070C,X
C - - - - - 0x00F99B 03:F98B: BD 00 07  LDA ram_se_0700,X
C - - - - - 0x00F99E 03:F98E: 09 40     ORA #$40
C - - - - - 0x00F9A0 03:F990: 29 DF     AND #$DF
C - - - - - 0x00F9A2 03:F992: 9D 00 07  STA ram_se_0700,X
bra_F995_RTS:
C - - - - - 0x00F9A5 03:F995: 60        RTS
bra_F996:
loc_F996:
C - - - - - 0x00F9A6 03:F996: A9 00     LDA #$00
C - - - - - 0x00F9A8 03:F998: 9D 0C 07  STA ram_se_070C,X
C - - - - - 0x00F9AB 03:F99B: BD 00 07  LDA ram_se_0700,X
C - - - - - 0x00F9AE 03:F99E: 09 20     ORA #$20
C - - - - - 0x00F9B0 03:F9A0: 9D 00 07  STA ram_se_0700,X
C - - - - - 0x00F9B3 03:F9A3: 60        RTS
bra_F9A4:
C - - - - - 0x00F9B4 03:F9A4: 20 CC F7  JSR sub_F7CC
C - - - - - 0x00F9B7 03:F9A7: 60        RTS



sub_F9A8:
C - - - - - 0x00F9B8 03:F9A8: BD 0C 07  LDA ram_se_070C,X
C - - - - - 0x00F9BB 03:F9AB: F0 31     BEQ bra_F9DE_RTS
C - - - - - 0x00F9BD 03:F9AD: BC 0D 07  LDY ram_se_070D,X
C - - - - - 0x00F9C0 03:F9B0: C0 3F     CPY #$3F
C - - - - - 0x00F9C2 03:F9B2: F0 0E     BEQ bra_F9C2
C - - - - - 0x00F9C4 03:F9B4: DE 0E 07  DEC ram_se_070E,X
C - - - - - 0x00F9C7 03:F9B7: 10 09     BPL bra_F9C2
C - - - - - 0x00F9C9 03:F9B9: BD 09 07  LDA ram_se_0709,X
C - - - - - 0x00F9CC 03:F9BC: 9D 0E 07  STA ram_se_070E,X
C - - - - - 0x00F9CF 03:F9BF: FE 0D 07  INC ram_se_070D,X
bra_F9C2:
C - - - - - 0x00F9D2 03:F9C2: BD 0A 07  LDA ram_se_070A,X
C - - - - - 0x00F9D5 03:F9C5: 85 46     STA ram_0046
C - - - - - 0x00F9D7 03:F9C7: BD 0B 07  LDA ram_se_070B,X
C - - - - - 0x00F9DA 03:F9CA: 85 47     STA ram_0047
C - - - - - 0x00F9DC 03:F9CC: B1 46     LDA (ram_0046),Y
C - - - - - 0x00F9DE 03:F9CE: 29 0F     AND #$0F
C - - - - - 0x00F9E0 03:F9D0: 85 48     STA ram_0048
C - - - - - 0x00F9E2 03:F9D2: BD 10 07  LDA ram_se_0710,X
C - - - - - 0x00F9E5 03:F9D5: 29 C0     AND #$C0
C - - - - - 0x00F9E7 03:F9D7: 09 30     ORA #$30
C - - - - - 0x00F9E9 03:F9D9: 05 48     ORA ram_0048
C - - - - - 0x00F9EB 03:F9DB: 9D 10 07  STA ram_se_0710,X
bra_F9DE_RTS:
C - - - - - 0x00F9EE 03:F9DE: 60        RTS



sub_F9DF:
C - - - - - 0x00F9EF 03:F9DF: BD 00 07  LDA ram_se_0700,X
C - - - - - 0x00F9F2 03:F9E2: 10 44     BPL bra_FA28_RTS
C - - - - - 0x00F9F4 03:F9E4: 20 24 FB  JSR sub_FB24
C - - - - - 0x00F9F7 03:F9E7: 10 3F     BPL bra_FA28_RTS
C - - - - - 0x00F9F9 03:F9E9: 20 59 FB  JSR sub_FB59
C - - - - - 0x00F9FC 03:F9EC: B0 3B     BCS bra_FA29
C - - - - - 0x00F9FE 03:F9EE: C9 7F     CMP #$7F
C - - - - - 0x00FA00 03:F9F0: F0 A4     BEQ bra_F996
C - - - - - 0x00FA02 03:F9F2: 0A        ASL
C - - - - - 0x00FA03 03:F9F3: A8        TAY
C - - - - - 0x00FA04 03:F9F4: BD 13 07  LDA ram_se_0713,X
C - - - - - 0x00FA07 03:F9F7: 29 F8     AND #$F8
C - - - - - 0x00FA09 03:F9F9: 9D 13 07  STA ram_se_0713,X
C - - - - - 0x00FA0C 03:F9FC: B9 B4 FE  LDA tbl_FEB4,Y
C - - - - - 0x00FA0F 03:F9FF: 9D 14 07  STA ram_se_0714,X
C - - - - - 0x00FA12 03:FA02: 1D 13 07  ORA ram_se_0713,X
C - - - - - 0x00FA15 03:FA05: 9D 13 07  STA ram_se_0713,X
C - - - - - 0x00FA18 03:FA08: B9 B5 FE  LDA tbl_FEB4 + $01,Y
C - - - - - 0x00FA1B 03:FA0B: 9D 12 07  STA ram_se_0712,X
C - - - - - 0x00FA1E 03:FA0E: BD 15 07  LDA ram_se_0715,X
C - - - - - 0x00FA21 03:FA11: C9 01     CMP #$01
C - - - - - 0x00FA23 03:FA13: F0 18     BEQ bra_FA2D
C - - - - - 0x00FA25 03:FA15: C9 02     CMP #$02
C - - - - - 0x00FA27 03:FA17: F0 2C     BEQ bra_FA45
- - - - - - 0x00FA29 03:FA19: A9 00     LDA #$00
- - - - - - 0x00FA2B 03:FA1B: 9D 0C 07  STA ram_se_070C,X
- - - - - - 0x00FA2E 03:FA1E: BD 00 07  LDA ram_se_0700,X
- - - - - - 0x00FA31 03:FA21: 09 40     ORA #$40
- - - - - - 0x00FA33 03:FA23: 29 DF     AND #$DF
- - - - - - 0x00FA35 03:FA25: 9D 00 07  STA ram_se_0700,X
bra_FA28_RTS:
C - - - - - 0x00FA38 03:FA28: 60        RTS
bra_FA29:
C - - - - - 0x00FA39 03:FA29: 20 CC F7  JSR sub_F7CC
C - - - - - 0x00FA3C 03:FA2C: 60        RTS
bra_FA2D:
- - - - - - 0x00FA3D 03:FA2D: A9 01     LDA #$01
- - - - - - 0x00FA3F 03:FA2F: 9D 0C 07  STA ram_se_070C,X
- - - - - - 0x00FA42 03:FA32: BD 0D 07  LDA ram_se_070D,X
bra_FA35:
- - - - - - 0x00FA45 03:FA35: 20 83 FA  JSR sub_FA83
- - - - - - 0x00FA48 03:FA38: A5 44     LDA ram_0044
- - - - - - 0x00FA4A 03:FA3A: 9D 16 07  STA ram_se_0716,X
- - - - - - 0x00FA4D 03:FA3D: A5 45     LDA ram_0045
- - - - - - 0x00FA4F 03:FA3F: 9D 17 07  STA ram_se_0717,X
- - - - - - 0x00FA52 03:FA42: 4C 6B FA  JMP loc_FA6B
bra_FA45:
C - - - - - 0x00FA55 03:FA45: A9 01     LDA #$01
C - - - - - 0x00FA57 03:FA47: 9D 0C 07  STA ram_se_070C,X
C - - - - - 0x00FA5A 03:FA4A: BD 0D 07  LDA ram_se_070D,X
C - - - - - 0x00FA5D 03:FA4D: 38        SEC
C - - - - - 0x00FA5E 03:FA4E: E9 01     SBC #$01
C - - - - - 0x00FA60 03:FA50: 90 E3     BCC bra_FA35
C - - - - - 0x00FA62 03:FA52: 20 83 FA  JSR sub_FA83
C - - - - - 0x00FA65 03:FA55: 38        SEC
C - - - - - 0x00FA66 03:FA56: BD 05 07  LDA ram_se_0705,X
C - - - - - 0x00FA69 03:FA59: E5 44     SBC ram_0044
C - - - - - 0x00FA6B 03:FA5B: 9D 16 07  STA ram_se_0716,X
C - - - - - 0x00FA6E 03:FA5E: BD 06 07  LDA ram_se_0706,X
C - - - - - 0x00FA71 03:FA61: E5 45     SBC ram_0045
C - - - - - 0x00FA73 03:FA63: 9D 16 07  STA ram_se_0716,X
C - - - - - 0x00FA76 03:FA66: B0 03     BCS bra_FA6B
- - - - - - 0x00FA78 03:FA68: 4C 96 F9  JMP loc_F996
bra_FA6B:
loc_FA6B:
C - - - - - 0x00FA7B 03:FA6B: A9 BF     LDA #$BF
C - - - - - 0x00FA7D 03:FA6D: 9D 10 07  STA ram_se_0710,X
C - - - - - 0x00FA80 03:FA70: BD 14 07  LDA ram_se_0714,X
C - - - - - 0x00FA83 03:FA73: 09 08     ORA #$08
C - - - - - 0x00FA85 03:FA75: 9D 13 07  STA ram_se_0713,X
C - - - - - 0x00FA88 03:FA78: BD 00 07  LDA ram_se_0700,X
C - - - - - 0x00FA8B 03:FA7B: 09 40     ORA #$40
C - - - - - 0x00FA8D 03:FA7D: 29 DF     AND #$DF
C - - - - - 0x00FA8F 03:FA7F: 9D 00 07  STA ram_se_0700,X
C - - - - - 0x00FA92 03:FA82: 60        RTS



sub_FA83:
C - - - - - 0x00FA93 03:FA83: 85 49     STA ram_0049_temp
C - - - - - 0x00FA95 03:FA85: BD 07 07  LDA ram_se_0707,X
C - - - - - 0x00FA98 03:FA88: 85 48     STA ram_0048
C - - - - - 0x00FA9A 03:FA8A: A9 00     LDA #$00
C - - - - - 0x00FA9C 03:FA8C: 85 45     STA ram_0045
C - - - - - 0x00FA9E 03:FA8E: 85 44     STA ram_0044
C - - - - - 0x00FAA0 03:FA90: 8A        TXA
C - - - - - 0x00FAA1 03:FA91: 48        PHA
C - - - - - 0x00FAA2 03:FA92: A2 08     LDX #$08
bra_FA94_loop:
C - - - - - 0x00FAA4 03:FA94: 46 49     LSR ram_0049_temp
C - - - - - 0x00FAA6 03:FA96: 90 07     BCC bra_FA9F
- - - - - - 0x00FAA8 03:FA98: A5 48     LDA ram_0048
- - - - - - 0x00FAAA 03:FA9A: 18        CLC
- - - - - - 0x00FAAB 03:FA9B: 65 45     ADC ram_0045
- - - - - - 0x00FAAD 03:FA9D: 85 45     STA ram_0045
bra_FA9F:
C - - - - - 0x00FAAF 03:FA9F: 66 45     ROR ram_0045
C - - - - - 0x00FAB1 03:FAA1: 66 44     ROR ram_0044
C - - - - - 0x00FAB3 03:FAA3: CA        DEX
C - - - - - 0x00FAB4 03:FAA4: D0 EE     BNE bra_FA94_loop
C - - - - - 0x00FAB6 03:FAA6: 68        PLA
C - - - - - 0x00FAB7 03:FAA7: AA        TAX
C - - - - - 0x00FAB8 03:FAA8: 60        RTS



sub_FAA9:
C - - - - - 0x00FAB9 03:FAA9: BD 0C 07  LDA ram_se_070C,X
C - - - - - 0x00FABC 03:FAAC: F0 1D     BEQ bra_FACB_RTS
C - - - - - 0x00FABE 03:FAAE: 38        SEC
C - - - - - 0x00FABF 03:FAAF: BD 16 07  LDA ram_se_0716,X
C - - - - - 0x00FAC2 03:FAB2: FD 07 07  SBC ram_se_0707,X
C - - - - - 0x00FAC5 03:FAB5: 9D 16 07  STA ram_se_0716,X
C - - - - - 0x00FAC8 03:FAB8: BD 17 07  LDA ram_se_0717,X
C - - - - - 0x00FACB 03:FABB: FD 08 07  SBC ram_se_0708,X
C - - - - - 0x00FACE 03:FABE: 9D 17 07  STA ram_se_0717,X
C - - - - - 0x00FAD1 03:FAC1: B0 08     BCS bra_FACB_RTS
C - - - - - 0x00FAD3 03:FAC3: A9 00     LDA #$00
C - - - - - 0x00FAD5 03:FAC5: 9D 10 07  STA ram_se_0710,X
C - - - - - 0x00FAD8 03:FAC8: 9D 0C 07  STA ram_se_070C,X
bra_FACB_RTS:
C - - - - - 0x00FADB 03:FACB: 60        RTS



sub_FACC:
C - - - - - 0x00FADC 03:FACC: BD 00 07  LDA ram_se_0700,X
C - - - - - 0x00FADF 03:FACF: 10 52     BPL bra_FB23_RTS
C - - - - - 0x00FAE1 03:FAD1: 20 24 FB  JSR sub_FB24
C - - - - - 0x00FAE4 03:FAD4: 10 4D     BPL bra_FB23_RTS
C - - - - - 0x00FAE6 03:FAD6: 20 59 FB  JSR sub_FB59
C - - - - - 0x00FAE9 03:FAD9: B0 3C     BCS bra_FB17
C - - - - - 0x00FAEB 03:FADB: C9 7F     CMP #$7F
C - - - - - 0x00FAED 03:FADD: F0 3C     BEQ bra_FB1B
C - - - - - 0x00FAEF 03:FADF: 38        SEC
C - - - - - 0x00FAF0 03:FAE0: E9 04     SBC #$04
C - - - - - 0x00FAF2 03:FAE2: 90 37     BCC bra_FB1B
bra_FAE4_loop:
C - - - - - 0x00FAF4 03:FAE4: 38        SEC
C - - - - - 0x00FAF5 03:FAE5: E9 0C     SBC #$0C
C - - - - - 0x00FAF7 03:FAE7: B0 FB     BCS bra_FAE4_loop
C - - - - - 0x00FAF9 03:FAE9: 69 0C     ADC #$0C
C - - - - - 0x00FAFB 03:FAEB: 85 48     STA ram_0048
C - - - - - 0x00FAFD 03:FAED: 0A        ASL
C - - - - - 0x00FAFE 03:FAEE: 65 48     ADC ram_0048
C - - - - - 0x00FB00 03:FAF0: A8        TAY
C - - - - - 0x00FB01 03:FAF1: BD 0A 07  LDA ram_se_070A,X
C - - - - - 0x00FB04 03:FAF4: 85 44     STA ram_0044
C - - - - - 0x00FB06 03:FAF6: BD 0B 07  LDA ram_se_070B,X
C - - - - - 0x00FB09 03:FAF9: 85 45     STA ram_0045
C - - - - - 0x00FB0B 03:FAFB: B1 44     LDA (ram_0044),Y
C - - - - - 0x00FB0D 03:FAFD: 9D 10 07  STA ram_se_0710,X
C - - - - - 0x00FB10 03:FB00: C8        INY
C - - - - - 0x00FB11 03:FB01: B1 44     LDA (ram_0044),Y
C - - - - - 0x00FB13 03:FB03: 9D 12 07  STA ram_se_0712,X
C - - - - - 0x00FB16 03:FB06: C8        INY
C - - - - - 0x00FB17 03:FB07: B1 44     LDA (ram_0044),Y
C - - - - - 0x00FB19 03:FB09: 9D 13 07  STA ram_se_0713,X
C - - - - - 0x00FB1C 03:FB0C: BD 00 07  LDA ram_se_0700,X
C - - - - - 0x00FB1F 03:FB0F: 09 40     ORA #$40
C - - - - - 0x00FB21 03:FB11: 29 DF     AND #$DF
C - - - - - 0x00FB23 03:FB13: 9D 00 07  STA ram_se_0700,X
C - - - - - 0x00FB26 03:FB16: 60        RTS
bra_FB17:
C - - - - - 0x00FB27 03:FB17: 20 CC F7  JSR sub_F7CC
C - - - - - 0x00FB2A 03:FB1A: 60        RTS
bra_FB1B:
C - - - - - 0x00FB2B 03:FB1B: BD 00 07  LDA ram_se_0700,X
C - - - - - 0x00FB2E 03:FB1E: 09 20     ORA #$20
C - - - - - 0x00FB30 03:FB20: 9D 00 07  STA ram_se_0700,X
bra_FB23_RTS:
C - - - - - 0x00FB33 03:FB23: 60        RTS



sub_FB24:
C - - - - - 0x00FB34 03:FB24: BD 05 07  LDA ram_se_0705,X
C - - - - - 0x00FB37 03:FB27: 38        SEC
C - - - - - 0x00FB38 03:FB28: FD 07 07  SBC ram_se_0707,X
C - - - - - 0x00FB3B 03:FB2B: 9D 05 07  STA ram_se_0705,X
C - - - - - 0x00FB3E 03:FB2E: BD 06 07  LDA ram_se_0706,X
C - - - - - 0x00FB41 03:FB31: FD 08 07  SBC ram_se_0708,X
C - - - - - 0x00FB44 03:FB34: 9D 06 07  STA ram_se_0706,X
C - - - - - 0x00FB47 03:FB37: 60        RTS



sub_FB38:
C - - - - - 0x00FB48 03:FB38: BD 04 07  LDA ram_se_0704,X
C - - - - - 0x00FB4B 03:FB3B: 85 48     STA ram_0048
C - - - - - 0x00FB4D 03:FB3D: BD 03 07  LDA ram_se_0703,X
C - - - - - 0x00FB50 03:FB40: 0A        ASL
C - - - - - 0x00FB51 03:FB41: 26 48     ROL ram_0048
C - - - - - 0x00FB53 03:FB43: 0A        ASL
C - - - - - 0x00FB54 03:FB44: 26 48     ROL ram_0048
C - - - - - 0x00FB56 03:FB46: 0A        ASL
C - - - - - 0x00FB57 03:FB47: 26 48     ROL ram_0048
C - - - - - 0x00FB59 03:FB49: 18        CLC
C - - - - - 0x00FB5A 03:FB4A: 7D 05 07  ADC ram_se_0705,X
C - - - - - 0x00FB5D 03:FB4D: 9D 05 07  STA ram_se_0705,X
C - - - - - 0x00FB60 03:FB50: A5 48     LDA ram_0048
C - - - - - 0x00FB62 03:FB52: 7D 06 07  ADC ram_se_0706,X
C - - - - - 0x00FB65 03:FB55: 9D 06 07  STA ram_se_0706,X
C - - - - - 0x00FB68 03:FB58: 60        RTS



sub_FB59:
C - - - - - 0x00FB69 03:FB59: BD 01 07  LDA ram_se_0701,X
C - - - - - 0x00FB6C 03:FB5C: 85 46     STA ram_0046
C - - - - - 0x00FB6E 03:FB5E: BD 02 07  LDA ram_se_0702,X
C - - - - - 0x00FB71 03:FB61: 85 47     STA ram_0047
C - - - - - 0x00FB73 03:FB63: A0 00     LDY #$00
loc_FB65_read_next_byte:
C D 3 - - - 0x00FB75 03:FB65: B1 46     LDA (ram_0046),Y
C - - - - - 0x00FB77 03:FB67: 85 4A     STA ram_004A
C - - - - - 0x00FB79 03:FB69: C8        INY
C - - - - - 0x00FB7A 03:FB6A: C9 FF     CMP #$FF
C - - - - - 0x00FB7C 03:FB6C: F0 45     BEQ bra_FBB3_FF
C - - - - - 0x00FB7E 03:FB6E: C9 7E     CMP #$7E
C - - - - - 0x00FB80 03:FB70: F0 24     BEQ bra_FB96_7E
C - - - - - 0x00FB82 03:FB72: C9 80     CMP #$80
C - - - - - 0x00FB84 03:FB74: 90 0B     BCC bra_FB81_00_7F
C - - - - - 0x00FB86 03:FB76: C9 C0     CMP #$C0
C - - - - - 0x00FB88 03:FB78: 90 22     BCC bra_FB9C_80_BF
C - - - - - 0x00FB8A 03:FB7A: C9 E0     CMP #$E0
C - - - - - 0x00FB8C 03:FB7C: B0 42     BCS bra_FBC0_E0_FE
C - - - - - 0x00FB8E 03:FB7E: 4C 3B FC  JMP loc_FC3B_C0_DF
bra_FB81_00_7F:
C - - - - - 0x00FB91 03:FB81: 20 38 FB  JSR sub_FB38
C - - - - - 0x00FB94 03:FB84: 98        TYA
C - - - - - 0x00FB95 03:FB85: 18        CLC
C - - - - - 0x00FB96 03:FB86: 65 46     ADC ram_0046
C - - - - - 0x00FB98 03:FB88: 9D 01 07  STA ram_se_0701,X
C - - - - - 0x00FB9B 03:FB8B: A5 47     LDA ram_0047
C - - - - - 0x00FB9D 03:FB8D: 69 00     ADC #$00
C - - - - - 0x00FB9F 03:FB8F: 9D 02 07  STA ram_se_0702,X
C - - - - - 0x00FBA2 03:FB92: A5 4A     LDA ram_004A
C - - - - - 0x00FBA4 03:FB94: 18        CLC
C - - - - - 0x00FBA5 03:FB95: 60        RTS
bra_FB96_7E:
C - - - - - 0x00FBA6 03:FB96: 20 38 FB  JSR sub_FB38
C - - - - - 0x00FBA9 03:FB99: 4C 65 FB  JMP loc_FB65_read_next_byte
bra_FB9C_80_BF:
C - - - - - 0x00FBAC 03:FB9C: 84 4B     STY ram_004B
C - - - - - 0x00FBAE 03:FB9E: 29 1F     AND #$1F
C - - - - - 0x00FBB0 03:FBA0: 0A        ASL
C - - - - - 0x00FBB1 03:FBA1: A8        TAY
C - - - - - 0x00FBB2 03:FBA2: B9 8E FE  LDA tbl_FE8E,Y
C - - - - - 0x00FBB5 03:FBA5: 9D 03 07  STA ram_se_0703,X
C - - - - - 0x00FBB8 03:FBA8: B9 8F FE  LDA tbl_FE8E + $01,Y
C - - - - - 0x00FBBB 03:FBAB: 9D 04 07  STA ram_se_0704,X
C - - - - - 0x00FBBE 03:FBAE: A4 4B     LDY ram_004B
C - - - - - 0x00FBC0 03:FBB0: 4C 65 FB  JMP loc_FB65_read_next_byte
bra_FBB3_FF:
C - - - - - 0x00FBC3 03:FBB3: A9 00     LDA #$00
C - - - - - 0x00FBC5 03:FBB5: 9D 00 07  STA ram_se_0700,X
C - - - - - 0x00FBC8 03:FBB8: 9D 02 07  STA ram_se_0702,X
C - - - - - 0x00FBCB 03:FBBB: 20 0E FD  JSR sub_FD0E
C - - - - - 0x00FBCE 03:FBBE: 38        SEC
C - - - - - 0x00FBCF 03:FBBF: 60        RTS
bra_FBC0_E0_FE:
C - - - - - 0x00FBD0 03:FBC0: B1 46     LDA (ram_0046),Y
C - - - - - 0x00FBD2 03:FBC2: 85 44     STA ram_0044
C - - - - - 0x00FBD4 03:FBC4: C8        INY
C - - - - - 0x00FBD5 03:FBC5: B1 46     LDA (ram_0046),Y
C - - - - - 0x00FBD7 03:FBC7: 85 45     STA ram_0045
C - - - - - 0x00FBD9 03:FBC9: C8        INY
C - - - - - 0x00FBDA 03:FBCA: A5 4A     LDA ram_004A
C - - - - - 0x00FBDC 03:FBCC: C9 E0     CMP #$E0
C - - - - - 0x00FBDE 03:FBCE: F0 0F     BEQ bra_FBDF_E0_E1
C - - - - - 0x00FBE0 03:FBD0: C9 E1     CMP #$E1
C - - - - - 0x00FBE2 03:FBD2: F0 0B     BEQ bra_FBDF_E0_E1
C - - - - - 0x00FBE4 03:FBD4: C9 E2     CMP #$E2
C - - - - - 0x00FBE6 03:FBD6: F0 36     BEQ bra_FC0E_E2
C - - - - - 0x00FBE8 03:FBD8: C9 E3     CMP #$E3
C - - - - - 0x00FBEA 03:FBDA: F0 52     BEQ bra_FC2E_E3
; bzk unlogged, it means can be E0-E3 only
- - - - - - 0x00FBEC 03:FBDC: 4C 65 FB  JMP loc_FB65_read_next_byte
bra_FBDF_E0_E1:
C - - - - - 0x00FBEF 03:FBDF: 84 4B     STY ram_004B
C - - - - - 0x00FBF1 03:FBE1: A0 00     LDY #$00
C - - - - - 0x00FBF3 03:FBE3: B1 44     LDA (ram_0044),Y
C - - - - - 0x00FBF5 03:FBE5: 9D 10 07  STA ram_se_0710,X
C - - - - - 0x00FBF8 03:FBE8: C8        INY
C - - - - - 0x00FBF9 03:FBE9: B1 44     LDA (ram_0044),Y
C - - - - - 0x00FBFB 03:FBEB: 9D 11 07  STA ram_se_0711,X
C - - - - - 0x00FBFE 03:FBEE: C8        INY
C - - - - - 0x00FBFF 03:FBEF: B1 44     LDA (ram_0044),Y
C - - - - - 0x00FC01 03:FBF1: 9D 13 07  STA ram_se_0713,X
C - - - - - 0x00FC04 03:FBF4: C8        INY
C - - - - - 0x00FC05 03:FBF5: B1 44     LDA (ram_0044),Y
C - - - - - 0x00FC07 03:FBF7: 9D 09 07  STA ram_se_0709,X
C - - - - - 0x00FC0A 03:FBFA: C8        INY
C - - - - - 0x00FC0B 03:FBFB: 98        TYA
C - - - - - 0x00FC0C 03:FBFC: 18        CLC
C - - - - - 0x00FC0D 03:FBFD: 65 44     ADC ram_0044
C - - - - - 0x00FC0F 03:FBFF: 9D 0A 07  STA ram_se_070A,X
C - - - - - 0x00FC12 03:FC02: A9 00     LDA #$00
C - - - - - 0x00FC14 03:FC04: 65 45     ADC ram_0045
C - - - - - 0x00FC16 03:FC06: 9D 0B 07  STA ram_se_070B,X
C - - - - - 0x00FC19 03:FC09: A4 4B     LDY ram_004B
C - - - - - 0x00FC1B 03:FC0B: 4C 65 FB  JMP loc_FB65_read_next_byte
bra_FC0E_E2:
C - - - - - 0x00FC1E 03:FC0E: 84 4B     STY ram_004B
C - - - - - 0x00FC20 03:FC10: A0 00     LDY #$00
C - - - - - 0x00FC22 03:FC12: B1 44     LDA (ram_0044),Y
C - - - - - 0x00FC24 03:FC14: 9D 10 07  STA ram_se_0710,X
C - - - - - 0x00FC27 03:FC17: C8        INY
C - - - - - 0x00FC28 03:FC18: B1 44     LDA (ram_0044),Y
C - - - - - 0x00FC2A 03:FC1A: 9D 13 07  STA ram_se_0713,X
C - - - - - 0x00FC2D 03:FC1D: C8        INY
C - - - - - 0x00FC2E 03:FC1E: B1 44     LDA (ram_0044),Y
C - - - - - 0x00FC30 03:FC20: 9D 15 07  STA ram_se_0715,X
C - - - - - 0x00FC33 03:FC23: C8        INY
C - - - - - 0x00FC34 03:FC24: B1 44     LDA (ram_0044),Y
C - - - - - 0x00FC36 03:FC26: 9D 0D 07  STA ram_se_070D,X
C - - - - - 0x00FC39 03:FC29: A4 4B     LDY ram_004B
C - - - - - 0x00FC3B 03:FC2B: 4C 65 FB  JMP loc_FB65_read_next_byte
bra_FC2E_E3:
C - - - - - 0x00FC3E 03:FC2E: A5 44     LDA ram_0044
C - - - - - 0x00FC40 03:FC30: 9D 0A 07  STA ram_se_070A,X
C - - - - - 0x00FC43 03:FC33: A5 45     LDA ram_0045
C - - - - - 0x00FC45 03:FC35: 9D 0B 07  STA ram_se_070B,X
C - - - - - 0x00FC48 03:FC38: 4C 65 FB  JMP loc_FB65_read_next_byte



loc_FC3B_C0_DF:
C D 3 - - - 0x00FC4B 03:FC3B: C9 CF     CMP #$CF
C - - - - - 0x00FC4D 03:FC3D: F0 35     BEQ bra_FC74_CF
C - - - - - 0x00FC4F 03:FC3F: B0 6B     BCS bra_FCAC_D0_DF
; set return address then
C - - - - - 0x00FC51 03:FC41: 29 0F     AND #$0F
C - - - - - 0x00FC53 03:FC43: 85 48     STA ram_0048
C - - - - - 0x00FC55 03:FC45: 98        TYA
C - - - - - 0x00FC56 03:FC46: 18        CLC
C - - - - - 0x00FC57 03:FC47: 65 46     ADC ram_0046
C - - - - - 0x00FC59 03:FC49: 85 46     STA ram_0046
C - - - - - 0x00FC5B 03:FC4B: A5 47     LDA ram_0047
C - - - - - 0x00FC5D 03:FC4D: 69 00     ADC #$00
C - - - - - 0x00FC5F 03:FC4F: 85 47     STA ram_0047
C - - - - - 0x00FC61 03:FC51: BC 0F 07  LDY ram_se_070F,X
C - - - - - 0x00FC64 03:FC54: A9 00     LDA #$00
C - - - - - 0x00FC66 03:FC56: 99 10 01  STA ram_0110,Y
C - - - - - 0x00FC69 03:FC59: A5 48     LDA ram_0048
C - - - - - 0x00FC6B 03:FC5B: 99 11 01  STA ram_0111,Y
C - - - - - 0x00FC6E 03:FC5E: A5 46     LDA ram_0046
C - - - - - 0x00FC70 03:FC60: 99 12 01  STA ram_0112,Y
C - - - - - 0x00FC73 03:FC63: A5 47     LDA ram_0047
C - - - - - 0x00FC75 03:FC65: 99 13 01  STA ram_0113,Y
C - - - - - 0x00FC78 03:FC68: 20 DD FC  JSR sub_FCDD
C - - - - - 0x00FC7B 03:FC6B: 98        TYA
C - - - - - 0x00FC7C 03:FC6C: 9D 0F 07  STA ram_se_070F,X
loc_FC6F_read_very_first_byte:
C D 3 - - - 0x00FC7F 03:FC6F: A0 00     LDY #$00
C - - - - - 0x00FC81 03:FC71: 4C 65 FB  JMP loc_FB65_read_next_byte
bra_FC74_CF:
C - - - - - 0x00FC84 03:FC74: 84 4B     STY ram_004B
C - - - - - 0x00FC86 03:FC76: BC 0F 07  LDY ram_se_070F,X
C - - - - - 0x00FC89 03:FC79: 20 ED FC  JSR sub_FCED
C - - - - - 0x00FC8C 03:FC7C: B0 1F     BCS bra_FC9D
C - - - - - 0x00FC8E 03:FC7E: B9 10 01  LDA ram_0110,Y
C - - - - - 0x00FC91 03:FC81: 18        CLC
C - - - - - 0x00FC92 03:FC82: 69 01     ADC #$01
C - - - - - 0x00FC94 03:FC84: 99 10 01  STA ram_0110,Y
C - - - - - 0x00FC97 03:FC87: D9 11 01  CMP ram_0111,Y
C - - - - - 0x00FC9A 03:FC8A: F0 0D     BEQ bra_FC99
C - - - - - 0x00FC9C 03:FC8C: B9 12 01  LDA ram_0112,Y
C - - - - - 0x00FC9F 03:FC8F: 85 46     STA ram_0046
C - - - - - 0x00FCA1 03:FC91: B9 13 01  LDA ram_0113,Y
C - - - - - 0x00FCA4 03:FC94: 85 47     STA ram_0047
C - - - - - 0x00FCA6 03:FC96: 4C 6F FC  JMP loc_FC6F_read_very_first_byte
bra_FC99:
C - - - - - 0x00FCA9 03:FC99: 98        TYA
C - - - - - 0x00FCAA 03:FC9A: 9D 0F 07  STA ram_se_070F,X
bra_FC9D:
C - - - - - 0x00FCAD 03:FC9D: A4 4B     LDY ram_004B
bra_FC9F_loop:
C - - - - - 0x00FCAF 03:FC9F: B1 46     LDA (ram_0046),Y
C - - - - - 0x00FCB1 03:FCA1: C8        INY
C - - - - - 0x00FCB2 03:FCA2: 29 F0     AND #$F0
C - - - - - 0x00FCB4 03:FCA4: C9 D0     CMP #$D0
C - - - - - 0x00FCB6 03:FCA6: F0 F7     BEQ bra_FC9F_loop
C - - - - - 0x00FCB8 03:FCA8: 88        DEY
C - - - - - 0x00FCB9 03:FCA9: 4C 65 FB  JMP loc_FB65_read_next_byte
bra_FCAC_D0_DF:
loc_FCAC:
C - - - - - 0x00FCBC 03:FCAC: 29 0F     AND #$0F
C - - - - - 0x00FCBE 03:FCAE: 85 45     STA ram_0045
C - - - - - 0x00FCC0 03:FCB0: C6 45     DEC ram_0045
C - - - - - 0x00FCC2 03:FCB2: 84 4B     STY ram_004B
C - - - - - 0x00FCC4 03:FCB4: BC 0F 07  LDY ram_se_070F,X
C - - - - - 0x00FCC7 03:FCB7: 20 ED FC  JSR sub_FCED
C - - - - - 0x00FCCA 03:FCBA: B9 10 01  LDA ram_0110,Y
C - - - - - 0x00FCCD 03:FCBD: C5 45     CMP ram_0045
C - - - - - 0x00FCCF 03:FCBF: F0 DC     BEQ bra_FC9D
C - - - - - 0x00FCD1 03:FCC1: A4 4B     LDY ram_004B
bra_FCC3_loop:
C - - - - - 0x00FCD3 03:FCC3: B1 46     LDA (ram_0046),Y
C - - - - - 0x00FCD5 03:FCC5: 85 48     STA ram_0048
C - - - - - 0x00FCD7 03:FCC7: C8        INY
C - - - - - 0x00FCD8 03:FCC8: C0 00     CPY #$00
C - - - - - 0x00FCDA 03:FCCA: D0 02     BNE bra_FCCE
- - - - - - 0x00FCDC 03:FCCC: E6 47     INC ram_0047
bra_FCCE:
C - - - - - 0x00FCDE 03:FCCE: C9 CF     CMP #$CF
C - - - - - 0x00FCE0 03:FCD0: F0 A2     BEQ bra_FC74_CF
C - - - - - 0x00FCE2 03:FCD2: 29 F0     AND #$F0
C - - - - - 0x00FCE4 03:FCD4: C9 D0     CMP #$D0
C - - - - - 0x00FCE6 03:FCD6: D0 EB     BNE bra_FCC3_loop
- - - - - - 0x00FCE8 03:FCD8: A5 48     LDA ram_0048
- - - - - - 0x00FCEA 03:FCDA: 4C AC FC  JMP loc_FCAC



sub_FCDD:
C - - - - - 0x00FCED 03:FCDD: 98        TYA
C - - - - - 0x00FCEE 03:FCDE: 29 F0     AND #$F0
C - - - - - 0x00FCF0 03:FCE0: 85 48     STA ram_0048
C - - - - - 0x00FCF2 03:FCE2: C8        INY
C - - - - - 0x00FCF3 03:FCE3: C8        INY
C - - - - - 0x00FCF4 03:FCE4: C8        INY
C - - - - - 0x00FCF5 03:FCE5: C8        INY
C - - - - - 0x00FCF6 03:FCE6: 98        TYA
C - - - - - 0x00FCF7 03:FCE7: 29 0F     AND #$0F
C - - - - - 0x00FCF9 03:FCE9: 05 48     ORA ram_0048
C - - - - - 0x00FCFB 03:FCEB: A8        TAY
C - - - - - 0x00FCFC 03:FCEC: 60        RTS



sub_FCED:
C - - - - - 0x00FCFD 03:FCED: 98        TYA
C - - - - - 0x00FCFE 03:FCEE: 29 F0     AND #$F0
C - - - - - 0x00FD00 03:FCF0: 85 48     STA ram_0048
C - - - - - 0x00FD02 03:FCF2: 98        TYA
C - - - - - 0x00FD03 03:FCF3: 29 0F     AND #$0F
C - - - - - 0x00FD05 03:FCF5: F0 0C     BEQ bra_FD03
C - - - - - 0x00FD07 03:FCF7: 88        DEY
C - - - - - 0x00FD08 03:FCF8: 88        DEY
C - - - - - 0x00FD09 03:FCF9: 88        DEY
C - - - - - 0x00FD0A 03:FCFA: 88        DEY
C - - - - - 0x00FD0B 03:FCFB: 98        TYA
C - - - - - 0x00FD0C 03:FCFC: 29 0F     AND #$0F
C - - - - - 0x00FD0E 03:FCFE: 05 48     ORA ram_0048
C - - - - - 0x00FD10 03:FD00: A8        TAY
C - - - - - 0x00FD11 03:FD01: 18        CLC
C - - - - - 0x00FD12 03:FD02: 60        RTS
bra_FD03:
- - - - - - 0x00FD13 03:FD03: 38        SEC
- - - - - - 0x00FD14 03:FD04: 60        RTS



sub_FD05:
C - - - - - 0x00FD15 03:FD05: BD 00 07  LDA ram_se_0700,X
C - - - - - 0x00FD18 03:FD08: 29 BF     AND #$BF
C - - - - - 0x00FD1A 03:FD0A: 9D 00 07  STA ram_se_0700,X
C - - - - - 0x00FD1D 03:FD0D: 60        RTS



sub_FD0E:
C - - - - - 0x00FD1E 03:FD0E: E0 60     CPX #$60
C - - - - - 0x00FD20 03:FD10: F0 11     BEQ bra_FD23_60
C - - - - - 0x00FD22 03:FD12: E0 78     CPX #$78
C - - - - - 0x00FD24 03:FD14: F0 1E     BEQ bra_FD34_78
C - - - - - 0x00FD26 03:FD16: E0 90     CPX #$90
C - - - - - 0x00FD28 03:FD18: F0 23     BEQ bra_FD3D_90
C - - - - - 0x00FD2A 03:FD1A: E0 A8     CPX #$A8
C - - - - - 0x00FD2C 03:FD1C: F0 0E     BEQ bra_FD2C_A8
C - - - - - 0x00FD2E 03:FD1E: E0 C0     CPX #$C0
C - - - - - 0x00FD30 03:FD20: F0 24     BEQ bra_FD46_C0
C - - - - - 0x00FD32 03:FD22: 60        RTS
bra_FD23_60:
- - - - - - 0x00FD33 03:FD23: AD 00 07  LDA ram_se_0700
- - - - - - 0x00FD36 03:FD26: 09 40     ORA #$40
- - - - - - 0x00FD38 03:FD28: 8D 00 07  STA ram_se_0700
- - - - - - 0x00FD3B 03:FD2B: 60        RTS
bra_FD2C_A8:
C - - - - - 0x00FD3C 03:FD2C: AD 78 07  LDA ram_se_0700 + $78
C - - - - - 0x00FD3F 03:FD2F: 09 40     ORA #$40
C - - - - - 0x00FD41 03:FD31: 8D 78 07  STA ram_se_0700 + $78
bra_FD34_78:
C - - - - - 0x00FD44 03:FD34: AD 18 07  LDA ram_se_0700 + $18
C - - - - - 0x00FD47 03:FD37: 09 40     ORA #$40
C - - - - - 0x00FD49 03:FD39: 8D 18 07  STA ram_se_0700 + $18
C - - - - - 0x00FD4C 03:FD3C: 60        RTS
bra_FD3D_90:
- - - - - - 0x00FD4D 03:FD3D: AD 30 07  LDA ram_se_0700 + $30
- - - - - - 0x00FD50 03:FD40: 09 40     ORA #$40
- - - - - - 0x00FD52 03:FD42: 8D 30 07  STA ram_se_0700 + $30
- - - - - - 0x00FD55 03:FD45: 60        RTS
bra_FD46_C0:
- - - - - - 0x00FD56 03:FD46: AD 48 07  LDA ram_se_0700 + $48
- - - - - - 0x00FD59 03:FD49: 09 40     ORA #$40
- - - - - - 0x00FD5B 03:FD4B: 8D 48 07  STA ram_se_0700 + $48
- - - - - - 0x00FD5E 03:FD4E: 60        RTS



sub_FD4F:
C - - - - - 0x00FD5F 03:FD4F: A9 00     LDA #$00
C - - - - - 0x00FD61 03:FD51: 85 53     STA ram_for_4015
C - - - - - 0x00FD63 03:FD53: AD 60 07  LDA ram_se_0700 + $60
C - - - - - 0x00FD66 03:FD56: 30 05     BMI bra_FD5D
C - - - - - 0x00FD68 03:FD58: AD 00 07  LDA ram_se_0700
C - - - - - 0x00FD6B 03:FD5B: 10 08     BPL bra_FD65
bra_FD5D:
C - - - - - 0x00FD6D 03:FD5D: 29 20     AND #$20
C - - - - - 0x00FD6F 03:FD5F: D0 04     BNE bra_FD65
C - - - - - 0x00FD71 03:FD61: A9 01     LDA #$01
C - - - - - 0x00FD73 03:FD63: 85 53     STA ram_for_4015
bra_FD65:
C - - - - - 0x00FD75 03:FD65: AD A8 07  LDA ram_se_0700 + $A8
C - - - - - 0x00FD78 03:FD68: 30 0A     BMI bra_FD74
C - - - - - 0x00FD7A 03:FD6A: AD 78 07  LDA ram_se_0700 + $78
C - - - - - 0x00FD7D 03:FD6D: 30 05     BMI bra_FD74
C - - - - - 0x00FD7F 03:FD6F: AD 18 07  LDA ram_se_0700 + $18
C - - - - - 0x00FD82 03:FD72: 10 0A     BPL bra_FD7E
bra_FD74:
C - - - - - 0x00FD84 03:FD74: 29 20     AND #$20
C - - - - - 0x00FD86 03:FD76: D0 06     BNE bra_FD7E
C - - - - - 0x00FD88 03:FD78: A5 53     LDA ram_for_4015
C - - - - - 0x00FD8A 03:FD7A: 09 02     ORA #$02
C - - - - - 0x00FD8C 03:FD7C: 85 53     STA ram_for_4015
bra_FD7E:
C - - - - - 0x00FD8E 03:FD7E: AD 90 07  LDA ram_se_0700 + $90
C - - - - - 0x00FD91 03:FD81: 30 05     BMI bra_FD88
C - - - - - 0x00FD93 03:FD83: AD 30 07  LDA ram_se_0700 + $30
C - - - - - 0x00FD96 03:FD86: 10 0A     BPL bra_FD92
bra_FD88:
C - - - - - 0x00FD98 03:FD88: 29 20     AND #$20
C - - - - - 0x00FD9A 03:FD8A: D0 06     BNE bra_FD92
C - - - - - 0x00FD9C 03:FD8C: A5 53     LDA ram_for_4015
C - - - - - 0x00FD9E 03:FD8E: 09 04     ORA #$04
C - - - - - 0x00FDA0 03:FD90: 85 53     STA ram_for_4015
bra_FD92:
C - - - - - 0x00FDA2 03:FD92: AD C0 07  LDA ram_se_0700 + $C0
C - - - - - 0x00FDA5 03:FD95: 30 05     BMI bra_FD9C
C - - - - - 0x00FDA7 03:FD97: AD 48 07  LDA ram_se_0700 + $48
C - - - - - 0x00FDAA 03:FD9A: 10 0A     BPL bra_FDA6
bra_FD9C:
C - - - - - 0x00FDAC 03:FD9C: 29 20     AND #$20
C - - - - - 0x00FDAE 03:FD9E: D0 06     BNE bra_FDA6
C - - - - - 0x00FDB0 03:FDA0: A5 53     LDA ram_for_4015
C - - - - - 0x00FDB2 03:FDA2: 09 08     ORA #$08
C - - - - - 0x00FDB4 03:FDA4: 85 53     STA ram_for_4015
bra_FDA6:
C - - - - - 0x00FDB6 03:FDA6: A5 53     LDA ram_for_4015
C - - - - - 0x00FDB8 03:FDA8: 8D 15 40  STA $4015
C - - - - - 0x00FDBB 03:FDAB: A2 60     LDX #$60
C - - - - - 0x00FDBD 03:FDAD: BD 00 07  LDA ram_se_0700,X
C - - - - - 0x00FDC0 03:FDB0: 30 07     BMI bra_FDB9
C - - - - - 0x00FDC2 03:FDB2: A2 00     LDX #$00
C - - - - - 0x00FDC4 03:FDB4: BD 00 07  LDA ram_se_0700,X
C - - - - - 0x00FDC7 03:FDB7: 10 22     BPL bra_FDDB
bra_FDB9:
C - - - - - 0x00FDC9 03:FDB9: BD 10 07  LDA ram_se_0710,X
C - - - - - 0x00FDCC 03:FDBC: 8D 00 40  STA $4000
C - - - - - 0x00FDCF 03:FDBF: BD 00 07  LDA ram_se_0700,X
C - - - - - 0x00FDD2 03:FDC2: 29 40     AND #$40
C - - - - - 0x00FDD4 03:FDC4: F0 15     BEQ bra_FDDB
C - - - - - 0x00FDD6 03:FDC6: BD 11 07  LDA ram_se_0711,X
C - - - - - 0x00FDD9 03:FDC9: 8D 01 40  STA $4001
C - - - - - 0x00FDDC 03:FDCC: BD 12 07  LDA ram_se_0712,X
C - - - - - 0x00FDDF 03:FDCF: 8D 02 40  STA $4002
C - - - - - 0x00FDE2 03:FDD2: BD 13 07  LDA ram_se_0713,X
C - - - - - 0x00FDE5 03:FDD5: 8D 03 40  STA $4003
C - - - - - 0x00FDE8 03:FDD8: 20 05 FD  JSR sub_FD05
bra_FDDB:
C - - - - - 0x00FDEB 03:FDDB: A2 A8     LDX #$A8
C - - - - - 0x00FDED 03:FDDD: BD 00 07  LDA ram_se_0700,X
C - - - - - 0x00FDF0 03:FDE0: 30 0E     BMI bra_FDF0
C - - - - - 0x00FDF2 03:FDE2: A2 78     LDX #$78
C - - - - - 0x00FDF4 03:FDE4: BD 00 07  LDA ram_se_0700,X
C - - - - - 0x00FDF7 03:FDE7: 30 07     BMI bra_FDF0
C - - - - - 0x00FDF9 03:FDE9: A2 18     LDX #$18
C - - - - - 0x00FDFB 03:FDEB: BD 00 07  LDA ram_se_0700,X
C - - - - - 0x00FDFE 03:FDEE: 10 22     BPL bra_FE12
bra_FDF0:
C - - - - - 0x00FE00 03:FDF0: BD 10 07  LDA ram_se_0710,X
C - - - - - 0x00FE03 03:FDF3: 8D 04 40  STA $4004
C - - - - - 0x00FE06 03:FDF6: BD 00 07  LDA ram_se_0700,X
C - - - - - 0x00FE09 03:FDF9: 29 40     AND #$40
C - - - - - 0x00FE0B 03:FDFB: F0 15     BEQ bra_FE12
C - - - - - 0x00FE0D 03:FDFD: BD 11 07  LDA ram_se_0711,X
C - - - - - 0x00FE10 03:FE00: 8D 05 40  STA $4005
C - - - - - 0x00FE13 03:FE03: BD 12 07  LDA ram_se_0712,X
C - - - - - 0x00FE16 03:FE06: 8D 06 40  STA $4006
C - - - - - 0x00FE19 03:FE09: BD 13 07  LDA ram_se_0713,X
C - - - - - 0x00FE1C 03:FE0C: 8D 07 40  STA $4007
C - - - - - 0x00FE1F 03:FE0F: 20 05 FD  JSR sub_FD05
bra_FE12:
C - - - - - 0x00FE22 03:FE12: A2 90     LDX #$90
C - - - - - 0x00FE24 03:FE14: BD 00 07  LDA ram_se_0700,X
C - - - - - 0x00FE27 03:FE17: 30 07     BMI bra_FE20
C - - - - - 0x00FE29 03:FE19: A2 30     LDX #$30
C - - - - - 0x00FE2B 03:FE1B: BD 00 07  LDA ram_se_0700,X
C - - - - - 0x00FE2E 03:FE1E: 10 22     BPL bra_FE42
bra_FE20:
C - - - - - 0x00FE30 03:FE20: BD 10 07  LDA ram_se_0710,X
C - - - - - 0x00FE33 03:FE23: 8D 08 40  STA $4008
C - - - - - 0x00FE36 03:FE26: BD 00 07  LDA ram_se_0700,X
C - - - - - 0x00FE39 03:FE29: 29 40     AND #$40
C - - - - - 0x00FE3B 03:FE2B: F0 15     BEQ bra_FE42
C - - - - - 0x00FE3D 03:FE2D: BD 11 07  LDA ram_se_0711,X
C - - - - - 0x00FE40 03:FE30: 8D 09 40  STA $4009
C - - - - - 0x00FE43 03:FE33: BD 12 07  LDA ram_se_0712,X
C - - - - - 0x00FE46 03:FE36: 8D 0A 40  STA $400A
C - - - - - 0x00FE49 03:FE39: BD 13 07  LDA ram_se_0713,X
C - - - - - 0x00FE4C 03:FE3C: 8D 0B 40  STA $400B
C - - - - - 0x00FE4F 03:FE3F: 20 05 FD  JSR sub_FD05
bra_FE42:
C - - - - - 0x00FE52 03:FE42: A2 C0     LDX #$C0
C - - - - - 0x00FE54 03:FE44: BD 00 07  LDA ram_se_0700,X
C - - - - - 0x00FE57 03:FE47: 30 07     BMI bra_FE50
C - - - - - 0x00FE59 03:FE49: A2 48     LDX #$48
C - - - - - 0x00FE5B 03:FE4B: BD 00 07  LDA ram_se_0700,X
C - - - - - 0x00FE5E 03:FE4E: 10 22     BPL bra_FE72_RTS
bra_FE50:
C - - - - - 0x00FE60 03:FE50: BD 10 07  LDA ram_se_0710,X
C - - - - - 0x00FE63 03:FE53: 8D 0C 40  STA $400C
C - - - - - 0x00FE66 03:FE56: BD 00 07  LDA ram_se_0700,X
C - - - - - 0x00FE69 03:FE59: 29 40     AND #$40
C - - - - - 0x00FE6B 03:FE5B: F0 15     BEQ bra_FE72_RTS
C - - - - - 0x00FE6D 03:FE5D: BD 11 07  LDA ram_se_0711,X
C - - - - - 0x00FE70 03:FE60: 8D 0D 40  STA $400D
C - - - - - 0x00FE73 03:FE63: BD 12 07  LDA ram_se_0712,X
C - - - - - 0x00FE76 03:FE66: 8D 0E 40  STA $400E
C - - - - - 0x00FE79 03:FE69: BD 13 07  LDA ram_se_0713,X
C - - - - - 0x00FE7C 03:FE6C: 8D 0F 40  STA $400F
C - - - - - 0x00FE7F 03:FE6F: 20 05 FD  JSR sub_FD05
bra_FE72_RTS:
C - - - - - 0x00FE82 03:FE72: 60        RTS



sub_FE73_jump_to_pointers_after_jsr_2:
; similar to 0x00EF88, used by sound engine?
C - - - - - 0x00FE83 03:FE73: 84 53     STY ram_0053_save_Y
C - - - - - 0x00FE85 03:FE75: 0A        ASL
C - - - - - 0x00FE86 03:FE76: A8        TAY
C - - - - - 0x00FE87 03:FE77: C8        INY
C - - - - - 0x00FE88 03:FE78: 68        PLA
C - - - - - 0x00FE89 03:FE79: 85 51     STA ram_0051
C - - - - - 0x00FE8B 03:FE7B: 68        PLA
C - - - - - 0x00FE8C 03:FE7C: 85 52     STA ram_0052
C - - - - - 0x00FE8E 03:FE7E: B1 51     LDA (ram_0051),Y
C - - - - - 0x00FE90 03:FE80: 48        PHA
C - - - - - 0x00FE91 03:FE81: C8        INY
C - - - - - 0x00FE92 03:FE82: B1 51     LDA (ram_0051),Y
C - - - - - 0x00FE94 03:FE84: 85 52     STA ram_0052
C - - - - - 0x00FE96 03:FE86: 68        PLA
C - - - - - 0x00FE97 03:FE87: 85 51     STA ram_0051
C - - - - - 0x00FE99 03:FE89: A4 53     LDY ram_0053_save_Y
C - - - - - 0x00FE9B 03:FE8B: 6C 51 00  JMP (ram_0051)



tbl_FE8E:
- D 3 - - - 0x00FE9E 03:FE8E: C0 00     .word $00C0 ; 80 
- D 3 - - - 0x00FEA0 03:FE90: 60 00     .word $0060 ; 81 
- D 3 - - - 0x00FEA2 03:FE92: 30 00     .word $0030 ; 82 
- D 3 - - - 0x00FEA4 03:FE94: 18 00     .word $0018 ; 83 
- D 3 - - - 0x00FEA6 03:FE96: 0C 00     .word $000C ; 84 
- D 3 - - - 0x00FEA8 03:FE98: 06 00     .word $0006 ; 85 
- - - - - - 0x00FEAA 03:FE9A: 03 00     .word $0003 ; 86 
- - - - - - 0x00FEAC 03:FE9C: 20 01     .word $0120 ; 87 
- D 3 - - - 0x00FEAE 03:FE9E: 90 00     .word $0090 ; 88 
- D 3 - - - 0x00FEB0 03:FEA0: 48 00     .word $0048 ; 89 
- D 3 - - - 0x00FEB2 03:FEA2: 24 00     .word $0024 ; 8A 
- D 3 - - - 0x00FEB4 03:FEA4: 12 00     .word $0012 ; 8B 
- - - - - - 0x00FEB6 03:FEA6: 09 00     .word $0009 ; 8C 
- - - - - - 0x00FEB8 03:FEA8: 80 00     .word $0080 ; 8D 
- - - - - - 0x00FEBA 03:FEAA: 40 00     .word $0040 ; 8E 
- D 3 - - - 0x00FEBC 03:FEAC: 20 00     .word $0020 ; 8F 
- D 3 - - - 0x00FEBE 03:FEAE: 10 00     .word $0010 ; 90 
- D 3 - - - 0x00FEC0 03:FEB0: 08 00     .word $0008 ; 91 
- - - - - - 0x00FEC2 03:FEB2: 04 00     .word $0004 ; 92 



tbl_FEB4:
; 00 unused
- - - - - - 0x00FEC4 03:FEB4: 0F        .byte $0F   ; 
- - - - - - 0x00FEC5 03:FEB5: FF        .byte $FF   ; 
; 01
- - - - - - 0x00FEC6 03:FEB6: 0F        .byte $0F   ; 
- - - - - - 0x00FEC7 03:FEB7: FF        .byte $FF   ; 
; 02
- - - - - - 0x00FEC8 03:FEB8: 0F        .byte $0F   ; 
- - - - - - 0x00FEC9 03:FEB9: FF        .byte $FF   ; 
; 03
- - - - - - 0x00FECA 03:FEBA: 0F        .byte $0F   ; 
- - - - - - 0x00FECB 03:FEBB: FF        .byte $FF   ; 
; 04
- - - - - - 0x00FECC 03:FEBC: 0F        .byte $0F   ; 
- - - - - - 0x00FECD 03:FEBD: FF        .byte $FF   ; 
; 05
- - - - - - 0x00FECE 03:FEBE: 0F        .byte $0F   ; 
- - - - - - 0x00FECF 03:FEBF: FF        .byte $FF   ; 
; 06
- - - - - - 0x00FED0 03:FEC0: 0F        .byte $0F   ; 
- - - - - - 0x00FED1 03:FEC1: FF        .byte $FF   ; 
; 07
- - - - - - 0x00FED2 03:FEC2: 0F        .byte $0F   ; 
- - - - - - 0x00FED3 03:FEC3: FF        .byte $FF   ; 
; 08
- - - - - - 0x00FED4 03:FEC4: 0F        .byte $0F   ; 
- - - - - - 0x00FED5 03:FEC5: FF        .byte $FF   ; 
; 09
- - - - - - 0x00FED6 03:FEC6: 0F        .byte $0F   ; 
- - - - - - 0x00FED7 03:FEC7: FF        .byte $FF   ; 
; 0A
- - - - - - 0x00FED8 03:FEC8: 0F        .byte $0F   ; 
- - - - - - 0x00FED9 03:FEC9: FF        .byte $FF   ; 
; 0B
- - - - - - 0x00FEDA 03:FECA: 0F        .byte $0F   ; 
- - - - - - 0x00FEDB 03:FECB: FF        .byte $FF   ; 
; 0C
- - - - - - 0x00FEDC 03:FECC: 0F        .byte $0F   ; 
- - - - - - 0x00FEDD 03:FECD: FF        .byte $FF   ; 
; 0D
- - - - - - 0x00FEDE 03:FECE: 0F        .byte $0F   ; 
- - - - - - 0x00FEDF 03:FECF: FF        .byte $FF   ; 
; 0E
- - - - - - 0x00FEE0 03:FED0: 0F        .byte $0F   ; 
- - - - - - 0x00FEE1 03:FED1: FF        .byte $FF   ; 
; 0F
- - - - - - 0x00FEE2 03:FED2: 0F        .byte $0F   ; 
- - - - - - 0x00FEE3 03:FED3: FF        .byte $FF   ; 
; 10
- - - - - - 0x00FEE4 03:FED4: 06        .byte $06   ; 
- - - - - - 0x00FEE5 03:FED5: AE        .byte $AE   ; 
; 11
- - - - - - 0x00FEE6 03:FED6: 06        .byte $06   ; 
- - - - - - 0x00FEE7 03:FED7: 4E        .byte $4E   ; 
; 12
- - - - - - 0x00FEE8 03:FED8: 05        .byte $05   ; 
- - - - - - 0x00FEE9 03:FED9: F3        .byte $F3   ; 
; 13
- - - - - - 0x00FEEA 03:FEDA: 05        .byte $05   ; 
- - - - - - 0x00FEEB 03:FEDB: 9E        .byte $9E   ; 
; 14
- - - - - - 0x00FEEC 03:FEDC: 05        .byte $05   ; 
- - - - - - 0x00FEED 03:FEDD: 4D        .byte $4D   ; 
; 15
- - - - - - 0x00FEEE 03:FEDE: 05        .byte $05   ; 
- - - - - - 0x00FEEF 03:FEDF: 01        .byte $01   ; 
; 16
- - - - - - 0x00FEF0 03:FEE0: 04        .byte $04   ; 
- - - - - - 0x00FEF1 03:FEE1: B9        .byte $B9   ; 
; 17
- - - - - - 0x00FEF2 03:FEE2: 04        .byte $04   ; 
- - - - - - 0x00FEF3 03:FEE3: 75        .byte $75   ; 
; 18
- - - - - - 0x00FEF4 03:FEE4: 04        .byte $04   ; 
- - - - - - 0x00FEF5 03:FEE5: 35        .byte $35   ; 
; 19
- - - - - - 0x00FEF6 03:FEE6: 03        .byte $03   ; 
- - - - - - 0x00FEF7 03:FEE7: F8        .byte $F8   ; 
; 1A
- - - - - - 0x00FEF8 03:FEE8: 03        .byte $03   ; 
- - - - - - 0x00FEF9 03:FEE9: BF        .byte $BF   ; 
; 1B
- - - - - - 0x00FEFA 03:FEEA: 03        .byte $03   ; 
- - - - - - 0x00FEFB 03:FEEB: 89        .byte $89   ; 
; 1C
- D 3 - - - 0x00FEFC 03:FEEC: 03        .byte $03   ; 
- D 3 - - - 0x00FEFD 03:FEED: 57        .byte $57   ; 
; 1D
- - - - - - 0x00FEFE 03:FEEE: 03        .byte $03   ; 
- - - - - - 0x00FEFF 03:FEEF: 27        .byte $27   ; 
; 1E
- D 3 - - - 0x00FF00 03:FEF0: 02        .byte $02   ; 
- D 3 - - - 0x00FF01 03:FEF1: F9        .byte $F9   ; 
; 1F
- D 3 - - - 0x00FF02 03:FEF2: 02        .byte $02   ; 
- D 3 - - - 0x00FF03 03:FEF3: CF        .byte $CF   ; 
; 20
- D 3 - - - 0x00FF04 03:FEF4: 02        .byte $02   ; 
- D 3 - - - 0x00FF05 03:FEF5: A6        .byte $A6   ; 
; 21
- D 3 - - - 0x00FF06 03:FEF6: 02        .byte $02   ; 
- D 3 - - - 0x00FF07 03:FEF7: 80        .byte $80   ; 
; 22
- - - - - - 0x00FF08 03:FEF8: 02        .byte $02   ; 
- - - - - - 0x00FF09 03:FEF9: 5C        .byte $5C   ; 
; 23
- D 3 - - - 0x00FF0A 03:FEFA: 02        .byte $02   ; 
- D 3 - - - 0x00FF0B 03:FEFB: 3A        .byte $3A   ; 
; 24
- D 3 - - - 0x00FF0C 03:FEFC: 02        .byte $02   ; 
- D 3 - - - 0x00FF0D 03:FEFD: 1A        .byte $1A   ; 
; 25
- D 3 - - - 0x00FF0E 03:FEFE: 01        .byte $01   ; 
- D 3 - - - 0x00FF0F 03:FEFF: FC        .byte $FC   ; 
; 26
- D 3 - - - 0x00FF10 03:FF00: 01        .byte $01   ; 
- D 3 - - - 0x00FF11 03:FF01: DF        .byte $DF   ; 
; 27
- D 3 - - - 0x00FF12 03:FF02: 01        .byte $01   ; 
- D 3 - - - 0x00FF13 03:FF03: C4        .byte $C4   ; 
; 28
- D 3 - - - 0x00FF14 03:FF04: 01        .byte $01   ; 
- D 3 - - - 0x00FF15 03:FF05: AB        .byte $AB   ; 
; 29
- D 3 - - - 0x00FF16 03:FF06: 01        .byte $01   ; 
- D 3 - - - 0x00FF17 03:FF07: 93        .byte $93   ; 
; 2A
- D 3 - - - 0x00FF18 03:FF08: 01        .byte $01   ; 
- D 3 - - - 0x00FF19 03:FF09: 7C        .byte $7C   ; 
; 2B
- D 3 - - - 0x00FF1A 03:FF0A: 01        .byte $01   ; 
- D 3 - - - 0x00FF1B 03:FF0B: 67        .byte $67   ; 
; 2C
- D 3 - - - 0x00FF1C 03:FF0C: 01        .byte $01   ; 
- D 3 - - - 0x00FF1D 03:FF0D: 52        .byte $52   ; 
; 2D
- D 3 - - - 0x00FF1E 03:FF0E: 01        .byte $01   ; 
- D 3 - - - 0x00FF1F 03:FF0F: 3F        .byte $3F   ; 
; 2E
- D 3 - - - 0x00FF20 03:FF10: 01        .byte $01   ; 
- D 3 - - - 0x00FF21 03:FF11: 2D        .byte $2D   ; 
; 2F
- D 3 - - - 0x00FF22 03:FF12: 01        .byte $01   ; 
- D 3 - - - 0x00FF23 03:FF13: 1C        .byte $1C   ; 
; 30
- D 3 - - - 0x00FF24 03:FF14: 01        .byte $01   ; 
- D 3 - - - 0x00FF25 03:FF15: 0C        .byte $0C   ; 
; 31
- D 3 - - - 0x00FF26 03:FF16: 00        .byte $00   ; 
- D 3 - - - 0x00FF27 03:FF17: FD        .byte $FD   ; 
; 32
- D 3 - - - 0x00FF28 03:FF18: 00        .byte $00   ; 
- D 3 - - - 0x00FF29 03:FF19: EE        .byte $EE   ; 
; 33
- D 3 - - - 0x00FF2A 03:FF1A: 00        .byte $00   ; 
- D 3 - - - 0x00FF2B 03:FF1B: E1        .byte $E1   ; 
; 34
- D 3 - - - 0x00FF2C 03:FF1C: 00        .byte $00   ; 
- D 3 - - - 0x00FF2D 03:FF1D: D4        .byte $D4   ; 
; 35
- D 3 - - - 0x00FF2E 03:FF1E: 00        .byte $00   ; 
- D 3 - - - 0x00FF2F 03:FF1F: C8        .byte $C8   ; 
; 36
- D 3 - - - 0x00FF30 03:FF20: 00        .byte $00   ; 
- D 3 - - - 0x00FF31 03:FF21: BD        .byte $BD   ; 
; 37
- D 3 - - - 0x00FF32 03:FF22: 00        .byte $00   ; 
- D 3 - - - 0x00FF33 03:FF23: B2        .byte $B2   ; 
; 38
- D 3 - - - 0x00FF34 03:FF24: 00        .byte $00   ; 
- D 3 - - - 0x00FF35 03:FF25: A8        .byte $A8   ; 
; 39
- D 3 - - - 0x00FF36 03:FF26: 00        .byte $00   ; 
- D 3 - - - 0x00FF37 03:FF27: 9F        .byte $9F   ; 
; 3A
- D 3 - - - 0x00FF38 03:FF28: 00        .byte $00   ; 
- D 3 - - - 0x00FF39 03:FF29: 96        .byte $96   ; 
; 3B
- D 3 - - - 0x00FF3A 03:FF2A: 00        .byte $00   ; 
- D 3 - - - 0x00FF3B 03:FF2B: 8D        .byte $8D   ; 
; 3C
- D 3 - - - 0x00FF3C 03:FF2C: 00        .byte $00   ; 
- D 3 - - - 0x00FF3D 03:FF2D: 85        .byte $85   ; 
; 3D
- D 3 - - - 0x00FF3E 03:FF2E: 00        .byte $00   ; 
- D 3 - - - 0x00FF3F 03:FF2F: 7E        .byte $7E   ; 
; 3E
- D 3 - - - 0x00FF40 03:FF30: 00        .byte $00   ; 
- D 3 - - - 0x00FF41 03:FF31: 76        .byte $76   ; 
; 3F
- D 3 - - - 0x00FF42 03:FF32: 00        .byte $00   ; 
- D 3 - - - 0x00FF43 03:FF33: 70        .byte $70   ; 
; 40
- D 3 - - - 0x00FF44 03:FF34: 00        .byte $00   ; 
- D 3 - - - 0x00FF45 03:FF35: 69        .byte $69   ; 
; 41
- - - - - - 0x00FF46 03:FF36: 00        .byte $00   ; 
- - - - - - 0x00FF47 03:FF37: 63        .byte $63   ; 
; 42
- D 3 - - - 0x00FF48 03:FF38: 00        .byte $00   ; 
- D 3 - - - 0x00FF49 03:FF39: 5E        .byte $5E   ; 
; 43
- D 3 - - - 0x00FF4A 03:FF3A: 00        .byte $00   ; 
- D 3 - - - 0x00FF4B 03:FF3B: 58        .byte $58   ; 
; 44
- D 3 - - - 0x00FF4C 03:FF3C: 00        .byte $00   ; 
- D 3 - - - 0x00FF4D 03:FF3D: 53        .byte $53   ; 
; 45
- D 3 - - - 0x00FF4E 03:FF3E: 00        .byte $00   ; 
- D 3 - - - 0x00FF4F 03:FF3F: 4F        .byte $4F   ; 
; 46
- - - - - - 0x00FF50 03:FF40: 00        .byte $00   ; 
- - - - - - 0x00FF51 03:FF41: 4A        .byte $4A   ; 
; 47
- D 3 - - - 0x00FF52 03:FF42: 00        .byte $00   ; 
- D 3 - - - 0x00FF53 03:FF43: 46        .byte $46   ; 
; 48
- - - - - - 0x00FF54 03:FF44: 00        .byte $00   ; 
- - - - - - 0x00FF55 03:FF45: 42        .byte $42   ; 
; 49
- D 3 - - - 0x00FF56 03:FF46: 00        .byte $00   ; 
- D 3 - - - 0x00FF57 03:FF47: 3E        .byte $3E   ; 
; 4A
- - - - - - 0x00FF58 03:FF48: 00        .byte $00   ; 
- - - - - - 0x00FF59 03:FF49: 3A        .byte $3A   ; 
; 4B
- D 3 - - - 0x00FF5A 03:FF4A: 00        .byte $00   ; 
- D 3 - - - 0x00FF5B 03:FF4B: 37        .byte $37   ; 
; 4C
- D 3 - - - 0x00FF5C 03:FF4C: 00        .byte $00   ; 
- D 3 - - - 0x00FF5D 03:FF4D: 34        .byte $34   ; 
; 4D
- - - - - - 0x00FF5E 03:FF4E: 00        .byte $00   ; 
- - - - - - 0x00FF5F 03:FF4F: 31        .byte $31   ; 
; 4E
- - - - - - 0x00FF60 03:FF50: 00        .byte $00   ; 
- - - - - - 0x00FF61 03:FF51: 2E        .byte $2E   ; 
; 4F
- - - - - - 0x00FF62 03:FF52: 00        .byte $00   ; 
- - - - - - 0x00FF63 03:FF53: 2B        .byte $2B   ; 
; 50
- - - - - - 0x00FF64 03:FF54: 00        .byte $00   ; 
- - - - - - 0x00FF65 03:FF55: 29        .byte $29   ; 
; 51
- - - - - - 0x00FF66 03:FF56: 00        .byte $00   ; 
- - - - - - 0x00FF67 03:FF57: 27        .byte $27   ; 
; 52
- - - - - - 0x00FF68 03:FF58: 00        .byte $00   ; 
- - - - - - 0x00FF69 03:FF59: 24        .byte $24   ; 
; 53
- - - - - - 0x00FF6A 03:FF5A: 00        .byte $00   ; 
- - - - - - 0x00FF6B 03:FF5B: 22        .byte $22   ; 
; 54
- - - - - - 0x00FF6C 03:FF5C: 00        .byte $00   ; 
- - - - - - 0x00FF6D 03:FF5D: 20        .byte $20   ; 
; 55
- - - - - - 0x00FF6E 03:FF5E: 00        .byte $00   ; 
- - - - - - 0x00FF6F 03:FF5F: 1E        .byte $1E   ; 
; 56
- - - - - - 0x00FF70 03:FF60: 00        .byte $00   ; 
- - - - - - 0x00FF71 03:FF61: 1C        .byte $1C   ; 
; 57
- - - - - - 0x00FF72 03:FF62: 00        .byte $00   ; 
- - - - - - 0x00FF73 03:FF63: 1A        .byte $1A   ; 
; 58
- - - - - - 0x00FF74 03:FF64: 00        .byte $00   ; 
- - - - - - 0x00FF75 03:FF65: 19        .byte $19   ; 
; 59
- - - - - - 0x00FF76 03:FF66: 0F        .byte $0F   ; 
- - - - - - 0x00FF77 03:FF67: FF        .byte $FF   ; 
; 5A
- - - - - - 0x00FF78 03:FF68: 0F        .byte $0F   ; 
- - - - - - 0x00FF79 03:FF69: FF        .byte $FF   ; 
; 5B
- - - - - - 0x00FF7A 03:FF6A: 0F        .byte $0F   ; 
- - - - - - 0x00FF7B 03:FF6B: FF        .byte $FF   ; 
; 5C
- - - - - - 0x00FF7C 03:FF6C: 0F        .byte $0F   ; 
- - - - - - 0x00FF7D 03:FF6D: FF        .byte $FF   ; 
; 5D
- - - - - - 0x00FF7E 03:FF6E: 0F        .byte $0F   ; 
- - - - - - 0x00FF7F 03:FF6F: FF        .byte $FF   ; 
; 5E
- - - - - - 0x00FF80 03:FF70: 0F        .byte $0F   ; 
- - - - - - 0x00FF81 03:FF71: FF        .byte $FF   ; 
; 5F
- - - - - - 0x00FF82 03:FF72: 0F        .byte $0F   ; 
- - - - - - 0x00FF83 03:FF73: FF        .byte $FF   ; 
; 60
- - - - - - 0x00FF84 03:FF74: 0F        .byte $0F   ; 
- - - - - - 0x00FF85 03:FF75: FF        .byte $FF   ; 
; 61
- - - - - - 0x00FF86 03:FF76: 0F        .byte $0F   ; 
- - - - - - 0x00FF87 03:FF77: FF        .byte $FF   ; 
; 62
- - - - - - 0x00FF88 03:FF78: 0F        .byte $0F   ; 
- - - - - - 0x00FF89 03:FF79: FF        .byte $FF   ; 
; 63
- - - - - - 0x00FF8A 03:FF7A: 0F        .byte $0F   ; 
- - - - - - 0x00FF8B 03:FF7B: FF        .byte $FF   ; 
; 64
- - - - - - 0x00FF8C 03:FF7C: 0F        .byte $0F   ; 
- - - - - - 0x00FF8D 03:FF7D: FF        .byte $FF   ; 
; 65
- - - - - - 0x00FF8E 03:FF7E: 0F        .byte $0F   ; 
- - - - - - 0x00FF8F 03:FF7F: FF        .byte $FF   ; 
; 66
- - - - - - 0x00FF90 03:FF80: 0F        .byte $0F   ; 
- - - - - - 0x00FF91 03:FF81: FF        .byte $FF   ; 
; 67
- - - - - - 0x00FF92 03:FF82: 0F        .byte $0F   ; 
- - - - - - 0x00FF93 03:FF83: FF        .byte $FF   ; 
; 68
- - - - - - 0x00FF94 03:FF84: 0F        .byte $0F   ; 
- - - - - - 0x00FF95 03:FF85: FF        .byte $FF   ; 



loc_FF86_logo_and_title_script:
C D 3 - - - 0x00FF96 03:FF86: 20 AF FF  JSR sub_FFAF
C - - - - - 0x00FF99 03:FF89: A9 FF     LDA #$FF
C - - - - - 0x00FF9B 03:FF8B: 20 B0 F1  JSR sub_F1B0
C - - - - - 0x00FF9E 03:FF8E: 20 D1 F5  JSR sub_F5D1
C - - - - - 0x00FFA1 03:FF91: A9 00     LDA #$00
C - - - - - 0x00FFA3 03:FF93: 85 24     STA ram_0024
C - - - - - 0x00FFA5 03:FF95: 85 69     STA ram_stage_id_2
C - - - - - 0x00FFA7 03:FF97: 20 EA EE  JSR sub_EEEA
loc_FF9A_loop:
C - - - - - 0x00FFAA 03:FF9A: A5 69     LDA ram_stage_id_2
C - - - - - 0x00FFAC 03:FF9C: 48        PHA
C - - - - - 0x00FFAD 03:FF9D: A9 20     LDA #con_script_logo_and_title + con_prg_bank + $02 * $10
C - - - - - 0x00FFAF 03:FF9F: 20 85 F1  JSR sub_F185_run_script
C - - - - - 0x00FFB2 03:FFA2: 68        PLA
C - - - - - 0x00FFB3 03:FFA3: 85 69     STA ram_stage_id_2
C - - - - - 0x00FFB5 03:FFA5: A9 00     LDA #$00
C - - - - - 0x00FFB7 03:FFA7: 85 68     STA ram_stage_id_1
C - - - - - 0x00FFB9 03:FFA9: 20 00 C0  JSR sub_C000_menu_script
- - - - - - 0x00FFBC 03:FFAC: 4C 9A FF  JMP loc_FF9A_loop



sub_FFAF:
C - - - - - 0x00FFBF 03:FFAF: A2 00     LDX #$00
bra_FFB1_loop:
C - - - - - 0x00FFC1 03:FFB1: A9 0F     LDA #$0F
C - - - - - 0x00FFC3 03:FFB3: 9D 00 04  STA ram_pal_buffer_2,X
C - - - - - 0x00FFC6 03:FFB6: E8        INX
C - - - - - 0x00FFC7 03:FFB7: E0 20     CPX #$20
C - - - - - 0x00FFC9 03:FFB9: D0 F6     BNE bra_FFB1_loop
C - - - - - 0x00FFCB 03:FFBB: 20 F6 F5  JSR sub_F5F6
C - - - - - 0x00FFCE 03:FFBE: 60        RTS


; bzk garbage
- - - - - - 0x00FFCF 03:FFBF: FF        .byte $FF   ; 
- - - - - - 0x00FFD0 03:FFC0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FFE0 03:FFD0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FFF0 03:FFE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x010000 03:FFF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x010006 03:FFF6: 95 EF     .word $EF95     ; vec_EF95_NMI
- - - - - - 0x010008 03:FFF8: 95 EF     .word $EF95     ; vec_EF95_NMI



.out .sprintf("Free bytes in bank FF: 0x%04X [%d]", ($FFFA - *), ($FFFA - *))



.segment "VECTORS"
- D 3 - - - 0x01000A 03:FFFA: 95 EF     .word vec_EF95_NMI
- D 3 - - - 0x01000C 03:FFFC: 00 EC     .word vec_EC00_RESET
- - - - - - 0x01000E 03:FFFE: 71 EE     .word vec_EE71_IRQ



