.segment "BANK_FF"
.include "bank_ram.inc"
.include "bank_val.inc"
.org $C000  ; for listing file
; 0x01C010-0x02000F



.export sub_0x01FF90_turn_screen_off
.export sub_0x01FF93_wait_1_frm
.export sub_0x01FF9C_enable_rendering
.export sub_0x01FFA8_objects_collision
.export sub_0x01FFAE_prg_bankswitch_8000
.export loc_0x01FFAE_prg_bankswitch_8000
.export sub_0x01FFB1
.export sub_0x01FFB4_shield_boomerang_handler
.export sub_0x01FFB7
.export sub_0x01FFBD_play_sound
.export loc_0x01FFBD_play_sound
.export sub_0x01FFC3
.export sub_0x01FFC6
.export sub_0x01FFC9
.export sub_0x01FFCC
.export sub_0x01FFCF
.export sub_0x01FFD2
.export sub_0x01FFD5
.export sub_0x01FFD8_write_metatiles
.export sub_0x01FFDB
.export sub_0x01FFDE
.export sub_0x01FFE1
.export sub_0x01FFE4
.export sub_0x01FFE7
.export sub_0x01FFEA_prepare_sprite_palette
.export sub_0x01FFED
.export sub_0x01FFF0
.export sub_0x01FFF3_prepare_big_digits_for_score



sub_C000:
C - - - - - 0x01C010 07:C000: A9 30     LDA #$30
C - - - - - 0x01C012 07:C002: 8D 00 20  STA $2000
C - - - - - 0x01C015 07:C005: A9 00     LDA #$00
C - - - - - 0x01C017 07:C007: 8D 01 20  STA $2001
C - - - - - 0x01C01A 07:C00A: 85 3B     STA ram_for_2001
C - - - - - 0x01C01C 07:C00C: 20 1F C0  JSR sub_C01F
C - - - - - 0x01C01F 07:C00F: 20 7F C1  JSR sub_C17F
C - - - - - 0x01C022 07:C012: 20 67 C0  JSR sub_C067
C - - - - - 0x01C025 07:C015: 20 D4 C2  JSR sub_C2D4
C - - - - - 0x01C028 07:C018: 20 43 E1  JSR sub_E143_clear_2400_nametable
; bzk optimize, JMP
C - - - - - 0x01C02B 07:C01B: 20 E7 E0  JSR sub_E0E7_write_ppu_config_and_scroll
C - - - - - 0x01C02E 07:C01E: 60        RTS



sub_C01F:
C - - - - - 0x01C02F 07:C01F: A9 00     LDA #$00
C - - - - - 0x01C031 07:C021: 85 50     STA ram_0050_data_index
C - - - - - 0x01C033 07:C023: A9 40     LDA #< tbl_0x006D50
C - - - - - 0x01C035 07:C025: 85 80     STA ram_0080_t01_metatiles_ptr_lo
C - - - - - 0x01C037 07:C027: A9 8D     LDA #> tbl_0x006D50
C - - - - - 0x01C039 07:C029: 85 81     STA ram_0081_t01_metatiles_ptr_hi
C - - - - - 0x01C03B 07:C02B: A9 00     LDA #$00
C - - - - - 0x01C03D 07:C02D: 85 7D     STA ram_007D_unk_language
C - - - - - 0x01C03F 07:C02F: 20 DC D0  JSR sub_D0DC
C - - - - - 0x01C042 07:C032: 20 29 D1  JSR sub_D129
; bzk optimize, JMP
C - - - - - 0x01C045 07:C035: 20 3F D1  JSR sub_D13F
C - - - - - 0x01C048 07:C038: 60        RTS



sub_C039:
C - - - - - 0x01C049 07:C039: A5 9D     LDA ram_prg_bank_A000
C - - - - - 0x01C04B 07:C03B: 48        PHA
C - - - - - 0x01C04C 07:C03C: A9 0C     LDA #con_prg_bank + $0C
C - - - - - 0x01C04E 07:C03E: 85 9D     STA ram_prg_bank_A000
C - - - - - 0x01C050 07:C040: 20 58 DB  JSR sub_DB58_prg_bankswitch_A000
C - - - - - 0x01C053 07:C043: 20 06 A0  JSR sub_0x018016
C - - - - - 0x01C056 07:C046: 68        PLA
C - - - - - 0x01C057 07:C047: 85 9D     STA ram_prg_bank_A000
C - - - - - 0x01C059 07:C049: 20 58 DB  JSR sub_DB58_prg_bankswitch_A000
; bzk optimize, JMP
C - - - - - 0x01C05C 07:C04C: 20 BC DA  JSR sub_DABC_increase_brightness
C - - - - - 0x01C05F 07:C04F: 60        RTS



sub_C050:
C - - - - - 0x01C060 07:C050: A5 9D     LDA ram_prg_bank_A000
C - - - - - 0x01C062 07:C052: 48        PHA
C - - - - - 0x01C063 07:C053: A9 0C     LDA #con_prg_bank + $0C
C - - - - - 0x01C065 07:C055: 85 9D     STA ram_prg_bank_A000
C - - - - - 0x01C067 07:C057: 20 58 DB  JSR sub_DB58_prg_bankswitch_A000
C - - - - - 0x01C06A 07:C05A: 20 06 A0  JSR sub_0x018016
C - - - - - 0x01C06D 07:C05D: 68        PLA
C - - - - - 0x01C06E 07:C05E: 85 9D     STA ram_prg_bank_A000
C - - - - - 0x01C070 07:C060: 20 58 DB  JSR sub_DB58_prg_bankswitch_A000
; bzk optimize, JMP
C - - - - - 0x01C073 07:C063: 20 00 DB  JSR sub_DB00_decrease_brightness
C - - - - - 0x01C076 07:C066: 60        RTS



sub_C067:
C - - - - - 0x01C077 07:C067: AD B5 05  LDA ram_05B5_player_flags
C - - - - - 0x01C07A 07:C06A: 29 01     AND #con_05B5_together
C - - - - - 0x01C07C 07:C06C: D0 05     BNE bra_C073_together
; if separate
C - - - - - 0x01C07E 07:C06E: A5 A8     LDA ram_plr_index
C - - - - - 0x01C080 07:C070: 20 96 C0  JSR sub_C096
bra_C073_together:
C - - - - - 0x01C083 07:C073: AD B5 05  LDA ram_05B5_player_flags
C - - - - - 0x01C086 07:C076: 29 C0     AND #con_05B5_captured_hawk + con_05B5_captured_captain
C - - - - - 0x01C088 07:C078: F0 1B     BEQ bra_C095_RTS    ; if both players are alive
; if one of the players is dead
C - - - - - 0x01C08A 07:C07A: 29 80     AND #$80
C - - - - - 0x01C08C 07:C07C: F0 08     BEQ bra_C086_captain_alive
; if captain is dead
- - - - - - 0x01C08E 07:C07E: A9 01     LDA #$01
- - - - - - 0x01C090 07:C080: 20 96 C0  JSR sub_C096
- - - - - - 0x01C093 07:C083: 20 E6 C0  JSR sub_C0E6
bra_C086_captain_alive:
C - - - - - 0x01C096 07:C086: AD B5 05  LDA ram_05B5_player_flags
C - - - - - 0x01C099 07:C089: 29 40     AND #con_05B5_captured_hawk
C - - - - - 0x01C09B 07:C08B: F0 08     BEQ bra_C095_RTS    ; if hawk is alive
; if hawk is dead
C - - - - - 0x01C09D 07:C08D: A9 00     LDA #$00
C - - - - - 0x01C09F 07:C08F: 20 96 C0  JSR sub_C096
; bzk optimize, JMP
C - - - - - 0x01C0A2 07:C092: 20 E6 C0  JSR sub_C0E6
bra_C095_RTS:
C - - - - - 0x01C0A5 07:C095: 60        RTS



sub_C096:
; in
    ; A = 
C - - - - - 0x01C0A6 07:C096: C9 01     CMP #$01
C - - - - - 0x01C0A8 07:C098: F0 12     BEQ bra_C0AC_captain_dead
; if hawk is dead
C - - - - - 0x01C0AA 07:C09A: A9 23     LDA #> $23F0
C - - - - - 0x01C0AC 07:C09C: 85 67     STA ram_0067_t48_ppu_hi
C - - - - - 0x01C0AE 07:C09E: A9 F0     LDA #< $23F0
C - - - - - 0x01C0B0 07:C0A0: 85 68     STA ram_0068_t33_ppu_lo
C - - - - - 0x01C0B2 07:C0A2: A9 30     LDA #$30
C - - - - - 0x01C0B4 07:C0A4: 85 69     STA ram_0069_t10_buffer_index
C - - - - - 0x01C0B6 07:C0A6: A2 22     LDX #> $2240
C - - - - - 0x01C0B8 07:C0A8: A0 40     LDY #< $2240
C - - - - - 0x01C0BA 07:C0AA: D0 10     BNE bra_C0BC    ; jmp
bra_C0AC_captain_dead:
C - - - - - 0x01C0BC 07:C0AC: A9 23     LDA #> $23C0
C - - - - - 0x01C0BE 07:C0AE: 85 67     STA ram_0067_t48_ppu_hi
C - - - - - 0x01C0C0 07:C0B0: A9 C0     LDA #< $23C0
C - - - - - 0x01C0C2 07:C0B2: 85 68     STA ram_0068_t33_ppu_lo
C - - - - - 0x01C0C4 07:C0B4: A9 00     LDA #$00
C - - - - - 0x01C0C6 07:C0B6: 85 69     STA ram_0069_t10_buffer_index
C - - - - - 0x01C0C8 07:C0B8: A2 20     LDX #> $2000
C - - - - - 0x01C0CA 07:C0BA: A0 00     LDY #< $2000
bra_C0BC:
C - - - - - 0x01C0CC 07:C0BC: 20 DD E0  JSR sub_E0DD_set_ppu_address
C - - - - - 0x01C0CF 07:C0BF: A2 02     LDX #$02
C - - - - - 0x01C0D1 07:C0C1: A0 80     LDY #$80
C - - - - - 0x01C0D3 07:C0C3: A9 00     LDA #$00
bra_C0C5_loop:
C - - - - - 0x01C0D5 07:C0C5: 8D 07 20  STA $2007
C - - - - - 0x01C0D8 07:C0C8: 88        DEY
C - - - - - 0x01C0D9 07:C0C9: D0 FA     BNE bra_C0C5_loop
C - - - - - 0x01C0DB 07:C0CB: CA        DEX
C - - - - - 0x01C0DC 07:C0CC: D0 F7     BNE bra_C0C5_loop
; 
C - - - - - 0x01C0DE 07:C0CE: A6 67     LDX ram_0067_t48_ppu_hi
C - - - - - 0x01C0E0 07:C0D0: A4 68     LDY ram_0068_t33_ppu_lo
C - - - - - 0x01C0E2 07:C0D2: 20 DD E0  JSR sub_E0DD_set_ppu_address
; 
C - - - - - 0x01C0E5 07:C0D5: A2 18     LDX #$18
C - - - - - 0x01C0E7 07:C0D7: A4 69     LDY ram_0069_t10_buffer_index
C - - - - - 0x01C0E9 07:C0D9: A9 00     LDA #$00
bra_C0DB_loop:
C - - - - - 0x01C0EB 07:C0DB: 8D 07 20  STA $2007
C - - - - - 0x01C0EE 07:C0DE: 99 00 02  STA ram_attr_buffer,Y
C - - - - - 0x01C0F1 07:C0E1: C8        INY
C - - - - - 0x01C0F2 07:C0E2: CA        DEX
C - - - - - 0x01C0F3 07:C0E3: D0 F6     BNE bra_C0DB_loop
C - - - - - 0x01C0F5 07:C0E5: 60        RTS



sub_C0E6:
C - - - - - 0x01C0F6 07:C0E6: AD B5 05  LDA ram_05B5_player_flags
C - - - - - 0x01C0F9 07:C0E9: 29 80     AND #con_05B5_captured_captain
C - - - - - 0x01C0FB 07:C0EB: F0 17     BEQ bra_C104_captain_alive
; if captain is dead
- - - - - - 0x01C0FD 07:C0ED: A9 20     LDA #> $20A2
- - - - - - 0x01C0FF 07:C0EF: 85 67     STA ram_0067_t47_ppu_hi
- - - - - - 0x01C101 07:C0F1: A9 A2     LDA #< $20A2
- - - - - - 0x01C103 07:C0F3: 85 68     STA ram_0068_t32_ppu_lo
- - - - - - 0x01C105 07:C0F5: A9 23     LDA #> $23C8
- - - - - - 0x01C107 07:C0F7: 85 69     STA ram_0069_t09_ppu_hi_attr
- - - - - - 0x01C109 07:C0F9: A9 C8     LDA #< $23C8
- - - - - - 0x01C10B 07:C0FB: 85 6A     STA ram_006A_t13_ppu_lo_attr
- - - - - - 0x01C10D 07:C0FD: A9 04     LDA #$04
- - - - - - 0x01C10F 07:C0FF: 85 6B     STA ram_006B_t07_attributes_counter
- - - - - - 0x01C111 07:C101: 20 23 C1  JSR sub_C123
bra_C104_captain_alive:
C - - - - - 0x01C114 07:C104: AD B5 05  LDA ram_05B5_player_flags
C - - - - - 0x01C117 07:C107: 29 40     AND #con_05B5_captured_hawk
C - - - - - 0x01C119 07:C109: F0 17     BEQ bra_C122_RTS    ; if hawk is dead
; if hawk is alive
C - - - - - 0x01C11B 07:C10B: A9 22     LDA #> $22F2
C - - - - - 0x01C11D 07:C10D: 85 67     STA ram_0067_t47_ppu_hi
C - - - - - 0x01C11F 07:C10F: A9 F2     LDA #< $22F2
C - - - - - 0x01C121 07:C111: 85 68     STA ram_0068_t32_ppu_lo
C - - - - - 0x01C123 07:C113: A9 23     LDA #> $23EC
C - - - - - 0x01C125 07:C115: 85 69     STA ram_0069_t09_ppu_hi_attr
C - - - - - 0x01C127 07:C117: A9 EC     LDA #< $23EC
C - - - - - 0x01C129 07:C119: 85 6A     STA ram_006A_t13_ppu_lo_attr
C - - - - - 0x01C12B 07:C11B: A9 0C     LDA #$0C
C - - - - - 0x01C12D 07:C11D: 85 6B     STA ram_006B_t07_attributes_counter
; bzk optimize, JMP
C - - - - - 0x01C12F 07:C11F: 20 23 C1  JSR sub_C123
bra_C122_RTS:
C - - - - - 0x01C132 07:C122: 60        RTS



sub_C123:
; in
    ; ram_0067_t47_ppu_hi
    ; ram_0068_t32_ppu_lo
C - - - - - 0x01C133 07:C123: A6 67     LDX ram_0067_t47_ppu_hi
C - - - - - 0x01C135 07:C125: A4 68     LDY ram_0068_t32_ppu_lo
C - - - - - 0x01C137 07:C127: 20 DD E0  JSR sub_E0DD_set_ppu_address
; 
C - - - - - 0x01C13A 07:C12A: A2 00     LDX #$00
bra_C12C_loop:
C - - - - - 0x01C13C 07:C12C: BD 65 C1  LDA tbl_C165_ppu_data,X
C - - - - - 0x01C13F 07:C12F: C9 FF     CMP #$FF
C - - - - - 0x01C141 07:C131: F0 20     BEQ bra_C153_FF_write_attributes
C - - - - - 0x01C143 07:C133: C9 FE     CMP #$FE
C - - - - - 0x01C145 07:C135: F0 06     BEQ bra_C13D_FE_new_line
; if not a control byte, it's a tile
C - - - - - 0x01C147 07:C137: 8D 07 20  STA $2007
bra_C13A_loop:
C - - - - - 0x01C14A 07:C13A: E8        INX
C - - - - - 0x01C14B 07:C13B: D0 EF     BNE bra_C12C_loop    ; jmp
bra_C13D_FE_new_line:
C - - - - - 0x01C14D 07:C13D: 8A        TXA
C - - - - - 0x01C14E 07:C13E: 48        PHA
C - - - - - 0x01C14F 07:C13F: A5 68     LDA ram_0068_t32_ppu_lo
C - - - - - 0x01C151 07:C141: 18        CLC
C - - - - - 0x01C152 07:C142: 69 20     ADC #< $0020
C - - - - - 0x01C154 07:C144: A8        TAY
C - - - - - 0x01C155 07:C145: A5 67     LDA ram_0067_t47_ppu_hi
C - - - - - 0x01C157 07:C147: 69 00     ADC #> $0020
; bzk optimize, useless STA
; it wouldn't be useless if there were
; more FE control bytes in the table
C - - - - - 0x01C159 07:C149: 85 67     STA ram_0067_tFD_useless    ; ram_0067_t47_ppu_hi
C - - - - - 0x01C15B 07:C14B: AA        TAX
C - - - - - 0x01C15C 07:C14C: 20 DD E0  JSR sub_E0DD_set_ppu_address
C - - - - - 0x01C15F 07:C14F: 68        PLA
C - - - - - 0x01C160 07:C150: AA        TAX
C - - - - - 0x01C161 07:C151: D0 E7     BNE bra_C13A_loop    ; jmp
bra_C153_FF_write_attributes:
C - - - - - 0x01C163 07:C153: A6 69     LDX ram_0069_t09_ppu_hi_attr
C - - - - - 0x01C165 07:C155: A4 6A     LDY ram_006A_t13_ppu_lo_attr
C - - - - - 0x01C167 07:C157: 20 DD E0  JSR sub_E0DD_set_ppu_address
; 
C - - - - - 0x01C16A 07:C15A: A6 6B     LDX ram_006B_t07_attributes_counter
C - - - - - 0x01C16C 07:C15C: A9 55     LDA #$55
bra_C15E_loop:
C - - - - - 0x01C16E 07:C15E: 8D 07 20  STA $2007
C - - - - - 0x01C171 07:C161: CA        DEX
C - - - - - 0x01C172 07:C162: D0 FA     BNE bra_C15E_loop
C - - - - - 0x01C174 07:C164: 60        RTS



tbl_C165_ppu_data:
- D 2 - - - 0x01C175 07:C165: 84        .byte $84, $85, $80, $81, $86, $87, $84, $8D, $8E, $8F, $A2, $A3   ; 
- D 2 - - - 0x01C181 07:C171: FE        .byte $FE   ; new line
- D 2 - - - 0x01C182 07:C172: 94        .byte $94, $95, $90, $91, $96, $97, $94, $9D, $9E, $9F, $B0, $B1   ; 
- D 2 - - - 0x01C18E 07:C17E: FF        .byte $FF   ; end token (write attributes)



sub_C17F:
C - - - - - 0x01C18F 07:C17F: A9 00     LDA #$00    ; captain
C - - - - - 0x01C191 07:C181: 85 72     STA ram_0072_t07_plr_index
C - - - - - 0x01C193 07:C183: 20 9A C1  JSR sub_C19A
C - - - - - 0x01C196 07:C186: 20 A9 C1  JSR sub_C1A9
C - - - - - 0x01C199 07:C189: 20 62 C2  JSR sub_C262
; bzk optimize, INC 0072
C - - - - - 0x01C19C 07:C18C: A9 01     LDA #$01    ; hawk
C - - - - - 0x01C19E 07:C18E: 85 72     STA ram_0072_t07_plr_index
C - - - - - 0x01C1A0 07:C190: 20 9A C1  JSR sub_C19A
C - - - - - 0x01C1A3 07:C193: 20 A9 C1  JSR sub_C1A9
; bzk optimize, JMP
C - - - - - 0x01C1A6 07:C196: 20 62 C2  JSR sub_C262
C - - - - - 0x01C1A9 07:C199: 60        RTS



sub_C19A:
C - - - - - 0x01C1AA 07:C19A: 20 B5 C1  JSR sub_C1B5_clear_temp_buffer
C - - - - - 0x01C1AD 07:C19D: A9 57     LDA #$57    ; empty bar tile
C - - - - - 0x01C1AF 07:C19F: 20 BF C1  JSR sub_C1BF_write_life_bar_tile_to_buffer
C - - - - - 0x01C1B2 07:C1A2: 20 39 C2  JSR sub_C239_prepare_life_bar_tiles
; bzk optimize, JMP
C - - - - - 0x01C1B5 07:C1A5: 20 DB C1  JSR sub_C1DB
C - - - - - 0x01C1B8 07:C1A8: 60        RTS



sub_C1A9:
C - - - - - 0x01C1B9 07:C1A9: 20 B5 C1  JSR sub_C1B5_clear_temp_buffer
C - - - - - 0x01C1BC 07:C1AC: A9 02     LDA #$02    ; full bar tile
C - - - - - 0x01C1BE 07:C1AE: 20 BF C1  JSR sub_C1BF_write_life_bar_tile_to_buffer
; bzk optimize, JMP
C - - - - - 0x01C1C1 07:C1B1: 20 F1 C1  JSR sub_C1F1
C - - - - - 0x01C1C4 07:C1B4: 60        RTS



sub_C1B5_clear_temp_buffer:
; bzk optimize, useless code (judging by logs)
C - - - - - 0x01C1C5 07:C1B5: A2 09     LDX #$09
C - - - - - 0x01C1C7 07:C1B7: A9 00     LDA #$00
bra_C1B9_loop:
; ram_0067_t45_ppu_buffer_bar
C - - - - - 0x01C1C9 07:C1B9: 95 67     STA ram_0067_temp,X
C - - - - - 0x01C1CB 07:C1BB: CA        DEX
C - - - - - 0x01C1CC 07:C1BC: 10 FB     BPL bra_C1B9_loop
C - - - - - 0x01C1CE 07:C1BE: 60        RTS



sub_C1BF_write_life_bar_tile_to_buffer:
; in
    ; A = 
C - - - - - 0x01C1CF 07:C1BF: 48        PHA
C - - - - - 0x01C1D0 07:C1C0: A4 72     LDY ram_0072_t07_plr_index
; bzk optimize, LDX,Y
C - - - - - 0x01C1D2 07:C1C2: B9 D7 03  LDA ram_player_power,Y
C - - - - - 0x01C1D5 07:C1C5: AA        TAX
C - - - - - 0x01C1D6 07:C1C6: BD D7 C1  LDA tbl_C1D7_life_bars_counter,X
C - - - - - 0x01C1D9 07:C1C9: 85 71     STA ram_0071_t23_bars_counter
C - - - - - 0x01C1DB 07:C1CB: 68        PLA
C - - - - - 0x01C1DC 07:C1CC: A0 00     LDY #$00
bra_C1CE_loop:
C - - - - - 0x01C1DE 07:C1CE: 99 67 00  STA ram_0067_t45_ppu_buffer_bar,Y
C - - - - - 0x01C1E1 07:C1D1: C8        INY
C - - - - - 0x01C1E2 07:C1D2: C4 71     CPY ram_0071_t23_bars_counter
C - - - - - 0x01C1E4 07:C1D4: 90 F8     BCC bra_C1CE_loop
C - - - - - 0x01C1E6 07:C1D6: 60        RTS



tbl_C1D7_life_bars_counter:
- D 2 - - - 0x01C1E7 07:C1D7: 04        .byte $04   ; 00 
- D 2 - - - 0x01C1E8 07:C1D8: 06        .byte $06   ; 01 
- D 2 - - - 0x01C1E9 07:C1D9: 08        .byte $08   ; 02 
- D 2 - - - 0x01C1EA 07:C1DA: 0A        .byte $0A   ; 03 



sub_C1DB:
C - - - - - 0x01C1EB 07:C1DB: A5 72     LDA ram_0072_t07_plr_index
C - - - - - 0x01C1ED 07:C1DD: 0A        ASL
C - - - - - 0x01C1EE 07:C1DE: A8        TAY
C - - - - - 0x01C1EF 07:C1DF: B9 ED C1  LDA tbl_C1ED_ppu_address,Y
C - - - - - 0x01C1F2 07:C1E2: 85 5B     STA ram_005B_t6D_ppu_lo
C - - - - - 0x01C1F4 07:C1E4: B9 EE C1  LDA tbl_C1ED_ppu_address + $01,Y
C - - - - - 0x01C1F7 07:C1E7: 85 5C     STA ram_005C_t04_ppu_hi
; bzk optimize, JMP
C - - - - - 0x01C1F9 07:C1E9: 20 07 C2  JSR sub_C207
C - - - - - 0x01C1FC 07:C1EC: 60        RTS



tbl_C1ED_ppu_address:
- D 2 - - - 0x01C1FD 07:C1ED: B2 20     .word $20B2 ; 00 
- D 2 - - - 0x01C1FF 07:C1EF: E2 22     .word $22E2 ; 01 



sub_C1F1:
C - - - - - 0x01C201 07:C1F1: A5 72     LDA ram_0072_t07_plr_index
C - - - - - 0x01C203 07:C1F3: 0A        ASL
C - - - - - 0x01C204 07:C1F4: A8        TAY
C - - - - - 0x01C205 07:C1F5: B9 03 C2  LDA tbl_C203_ppu_address,Y
C - - - - - 0x01C208 07:C1F8: 85 5B     STA ram_005B_t6D_ppu_lo
C - - - - - 0x01C20A 07:C1FA: B9 04 C2  LDA tbl_C203_ppu_address + $01,Y
C - - - - - 0x01C20D 07:C1FD: 85 5C     STA ram_005C_t04_ppu_hi
; bzk optimize, JMP
C - - - - - 0x01C20F 07:C1FF: 20 07 C2  JSR sub_C207
C - - - - - 0x01C212 07:C202: 60        RTS



tbl_C203_ppu_address:
- D 2 - - - 0x01C213 07:C203: B9 20     .word $20B9 ; 00 
- D 2 - - - 0x01C215 07:C205: E9 22     .word $22E9 ; 01 



sub_C207:
; in
    ; ram_005B_t6D_ppu_lo
    ; ram_005C_t04_ppu_hi
    ; ram_0067_t45_ppu_buffer_bar
C - - - - - 0x01C217 07:C207: A6 5C     LDX ram_005C_t04_ppu_hi
C - - - - - 0x01C219 07:C209: A4 5B     LDY ram_005B_t6D_ppu_lo
C - - - - - 0x01C21B 07:C20B: 20 DD E0  JSR sub_E0DD_set_ppu_address
C - - - - - 0x01C21E 07:C20E: A0 00     LDY #$00
C - - - - - 0x01C220 07:C210: A2 09     LDX #$09
bra_C212_loop:
C - - - - - 0x01C222 07:C212: B9 67 00  LDA ram_0067_t45_ppu_buffer_bar,Y
C - - - - - 0x01C225 07:C215: 8D 07 20  STA $2007
C - - - - - 0x01C228 07:C218: C8        INY
C - - - - - 0x01C229 07:C219: CA        DEX
C - - - - - 0x01C22A 07:C21A: 10 01     BPL bra_C21D
C - - - - - 0x01C22C 07:C21C: 60        RTS
bra_C21D:
C - - - - - 0x01C22D 07:C21D: E0 04     CPX #$04
C - - - - - 0x01C22F 07:C21F: D0 F1     BNE bra_C212_loop
C - - - - - 0x01C231 07:C221: 8A        TXA
C - - - - - 0x01C232 07:C222: 48        PHA
C - - - - - 0x01C233 07:C223: 98        TYA
C - - - - - 0x01C234 07:C224: 48        PHA
C - - - - - 0x01C235 07:C225: A5 5B     LDA ram_005B_t6D_ppu_lo
C - - - - - 0x01C237 07:C227: 18        CLC
C - - - - - 0x01C238 07:C228: 69 20     ADC #< $0020
C - - - - - 0x01C23A 07:C22A: A8        TAY
C - - - - - 0x01C23B 07:C22B: A5 5C     LDA ram_005C_t04_ppu_hi
C - - - - - 0x01C23D 07:C22D: 69 00     ADC #> $0020
C - - - - - 0x01C23F 07:C22F: AA        TAX
C - - - - - 0x01C240 07:C230: 20 DD E0  JSR sub_E0DD_set_ppu_address
C - - - - - 0x01C243 07:C233: 68        PLA
C - - - - - 0x01C244 07:C234: A8        TAY
C - - - - - 0x01C245 07:C235: 68        PLA
C - - - - - 0x01C246 07:C236: AA        TAX
C - - - - - 0x01C247 07:C237: D0 D9     BNE bra_C212_loop    ; jmp



sub_C239_prepare_life_bar_tiles:
C - - - - - 0x01C249 07:C239: A4 72     LDY ram_0072_t07_plr_index
C - - - - - 0x01C24B 07:C23B: B9 D9 03  LDA ram_player_hp,Y
C - - - - - 0x01C24E 07:C23E: C9 15     CMP #$15
C - - - - - 0x01C250 07:C240: 90 02     BCC bra_C244
C - - - - - 0x01C252 07:C242: A9 14     LDA #$14
bra_C244:
C - - - - - 0x01C254 07:C244: 85 71     STA ram_0071_t24_bars_counter
C - - - - - 0x01C256 07:C246: A0 00     LDY #$00
bra_C248_loop:
C - - - - - 0x01C258 07:C248: A5 71     LDA ram_0071_t24_bars_counter
C - - - - - 0x01C25A 07:C24A: F0 15     BEQ bra_C261_RTS
C - - - - - 0x01C25C 07:C24C: C9 02     CMP #$02
C - - - - - 0x01C25E 07:C24E: 90 0C     BCC bra_C25C
C - - - - - 0x01C260 07:C250: A9 02     LDA #$02
C - - - - - 0x01C262 07:C252: 99 67 00  STA ram_0067_t45_ppu_buffer_bar,Y
C - - - - - 0x01C265 07:C255: C6 71     DEC ram_0071_t24_bars_counter
C - - - - - 0x01C267 07:C257: C6 71     DEC ram_0071_t24_bars_counter
C - - - - - 0x01C269 07:C259: C8        INY
C - - - - - 0x01C26A 07:C25A: D0 EC     BNE bra_C248_loop    ; jmp
bra_C25C:
C - - - - - 0x01C26C 07:C25C: A9 07     LDA #$07
C - - - - - 0x01C26E 07:C25E: 99 67 00  STA ram_0067_t45_ppu_buffer_bar,Y
bra_C261_RTS:
C - - - - - 0x01C271 07:C261: 60        RTS



sub_C262:
C - - - - - 0x01C272 07:C262: A4 72     LDY ram_0072_t07_plr_index
C - - - - - 0x01C274 07:C264: B9 DD 03  LDA ram_plr_crystals,Y
C - - - - - 0x01C277 07:C267: 20 0C C4  JSR sub_C40C
C - - - - - 0x01C27A 07:C26A: A5 68     LDA ram_0067_t82_array + $01
C - - - - - 0x01C27C 07:C26C: 0A        ASL
C - - - - - 0x01C27D 07:C26D: AA        TAX
C - - - - - 0x01C27E 07:C26E: BD C0 C2  LDA tbl_C2C0_tiles,X
C - - - - - 0x01C281 07:C271: 85 6B     STA ram_006B_t11_tile_1
C - - - - - 0x01C283 07:C273: BD C1 C2  LDA tbl_C2C0_tiles + $01,X
C - - - - - 0x01C286 07:C276: 85 6C     STA ram_006C_t18_tile_2
; bzk yes, it's not from ram_0067_t82_array
C - - - - - 0x01C288 07:C278: A5 67     LDA ram_0067_t66_table_index
C - - - - - 0x01C28A 07:C27A: 0A        ASL
C - - - - - 0x01C28B 07:C27B: AA        TAX
C - - - - - 0x01C28C 07:C27C: BD C0 C2  LDA tbl_C2C0_tiles,X
C - - - - - 0x01C28F 07:C27F: 85 6D     STA ram_006D_t08_tile_1
C - - - - - 0x01C291 07:C281: BD C1 C2  LDA tbl_C2C0_tiles + $01,X
C - - - - - 0x01C294 07:C284: 85 6E     STA ram_006E_t07_tile_2
C - - - - - 0x01C296 07:C286: A5 72     LDA ram_0072_t07_plr_index
C - - - - - 0x01C298 07:C288: 0A        ASL
C - - - - - 0x01C299 07:C289: AA        TAX
C - - - - - 0x01C29A 07:C28A: BD BC C2  LDA tbl_C2BC_ppu_address,X
C - - - - - 0x01C29D 07:C28D: 85 5B     STA ram_005B_t6C_ppu_lo
C - - - - - 0x01C29F 07:C28F: A8        TAY
C - - - - - 0x01C2A0 07:C290: BD BD C2  LDA tbl_C2BC_ppu_address + $01,X
C - - - - - 0x01C2A3 07:C293: 85 5C     STA ram_005C_t05_ppu_hi
C - - - - - 0x01C2A5 07:C295: AA        TAX
C - - - - - 0x01C2A6 07:C296: 20 DD E0  JSR sub_E0DD_set_ppu_address
C - - - - - 0x01C2A9 07:C299: A5 6B     LDA ram_006B_t11_tile_1
C - - - - - 0x01C2AB 07:C29B: 8D 07 20  STA $2007
C - - - - - 0x01C2AE 07:C29E: A5 6D     LDA ram_006D_t08_tile_1
C - - - - - 0x01C2B0 07:C2A0: 8D 07 20  STA $2007
C - - - - - 0x01C2B3 07:C2A3: A5 5B     LDA ram_005B_t6C_ppu_lo
C - - - - - 0x01C2B5 07:C2A5: 18        CLC
C - - - - - 0x01C2B6 07:C2A6: 69 20     ADC #< $0020
C - - - - - 0x01C2B8 07:C2A8: A8        TAY
C - - - - - 0x01C2B9 07:C2A9: A5 5C     LDA ram_005C_t05_ppu_hi
C - - - - - 0x01C2BB 07:C2AB: 69 00     ADC #> $0020
C - - - - - 0x01C2BD 07:C2AD: AA        TAX
C - - - - - 0x01C2BE 07:C2AE: 20 DD E0  JSR sub_E0DD_set_ppu_address
C - - - - - 0x01C2C1 07:C2B1: A5 6C     LDA ram_006C_t18_tile_2
C - - - - - 0x01C2C3 07:C2B3: 8D 07 20  STA $2007
C - - - - - 0x01C2C6 07:C2B6: A5 6E     LDA ram_006E_t07_tile_2
C - - - - - 0x01C2C8 07:C2B8: 8D 07 20  STA $2007
C - - - - - 0x01C2CB 07:C2BB: 60        RTS



tbl_C2BC_ppu_address:
- D 2 - - - 0x01C2CC 07:C2BC: 1A 21     .word $211A ; 00 
- D 2 - - - 0x01C2CE 07:C2BE: 4A 23     .word $234A ; 01 



tbl_C2C0_tiles:
;                                              +---------- tile 1
;                                              |    +----- tile 2
;                                              |    |
- D 2 - - - 0x01C2D0 07:C2C0: 80        .byte $80, $90   ; 00 
- D 2 - - - 0x01C2D2 07:C2C2: 81        .byte $81, $91   ; 01 
- D 2 - - - 0x01C2D4 07:C2C4: A0        .byte $A0, $B0   ; 02 
- D 2 - - - 0x01C2D6 07:C2C6: A1        .byte $A1, $B1   ; 03 
- D 2 - - - 0x01C2D8 07:C2C8: B2        .byte $B2, $C2   ; 04 
- D 2 - - - 0x01C2DA 07:C2CA: B3        .byte $B3, $B1   ; 05 
- D 2 - - - 0x01C2DC 07:C2CC: 8B        .byte $8B, $9B   ; 06 
- D 2 - - - 0x01C2DE 07:C2CE: 8C        .byte $8C, $91   ; 07 
- D 2 - - - 0x01C2E0 07:C2D0: 8D        .byte $8D, $9B   ; 08 
- D 2 - - - 0x01C2E2 07:C2D2: 9F        .byte $9F, $9E   ; 09 



sub_C2D4:
C - - - - - 0x01C2E4 07:C2D4: A5 9D     LDA ram_prg_bank_A000
C - - - - - 0x01C2E6 07:C2D6: 48        PHA
C - - - - - 0x01C2E7 07:C2D7: A9 0C     LDA #con_prg_bank + $0C
C - - - - - 0x01C2E9 07:C2D9: 85 9D     STA ram_prg_bank_A000
C - - - - - 0x01C2EB 07:C2DB: 20 58 DB  JSR sub_DB58_prg_bankswitch_A000
C - - - - - 0x01C2EE 07:C2DE: 20 2A A0  JSR sub_0x01803A
C - - - - - 0x01C2F1 07:C2E1: 68        PLA
C - - - - - 0x01C2F2 07:C2E2: 85 9D     STA ram_prg_bank_A000
; bzk optimize, JMP
C - - - - - 0x01C2F4 07:C2E4: 20 58 DB  JSR sub_DB58_prg_bankswitch_A000
C - - - - - 0x01C2F7 07:C2E7: 60        RTS



sub_C2E8:
C - - - - - 0x01C2F8 07:C2E8: AD B5 05  LDA ram_05B5_player_flags
C - - - - - 0x01C2FB 07:C2EB: 29 C0     AND #con_05B5_captured_hawk + con_05B5_captured_captain
C - - - - - 0x01C2FD 07:C2ED: D0 0A     BNE bra_C2F9    ; if one of the players is dead
; if both players are alive
C - - - - - 0x01C2FF 07:C2EF: AD B5 05  LDA ram_05B5_player_flags
C - - - - - 0x01C302 07:C2F2: 4A        LSR
C - - - - - 0x01C303 07:C2F3: 90 04     BCC bra_C2F9    ; if separate
; if con_05B5_together
C - - - - - 0x01C305 07:C2F5: A9 02     LDA #$02
C - - - - - 0x01C307 07:C2F7: D0 02     BNE bra_C2FB    ; jmp
bra_C2F9:
C - - - - - 0x01C309 07:C2F9: A5 A8     LDA ram_plr_index
bra_C2FB:
C - - - - - 0x01C30B 07:C2FB: 0A        ASL
C - - - - - 0x01C30C 07:C2FC: AA        TAX
C - - - - - 0x01C30D 07:C2FD: BD 65 C3  LDA tbl_C365,X
C - - - - - 0x01C310 07:C300: 8D B6 05  STA ram_05B6_player_dead_flag
C - - - - - 0x01C313 07:C303: BD 66 C3  LDA tbl_C365 + $01,X
C - - - - - 0x01C316 07:C306: 8D B7 05  STA ram_05B6_player_dead_flag + $01
C - - - - - 0x01C319 07:C309: AD B6 05  LDA ram_05B6_player_dead_flag
C - - - - - 0x01C31C 07:C30C: F0 0B     BEQ bra_C319
C - - - - - 0x01C31E 07:C30E: AD B5 05  LDA ram_05B5_player_flags
C - - - - - 0x01C321 07:C311: 29 80     AND #con_05B5_captured_captain
C - - - - - 0x01C323 07:C313: 4D B6 05  EOR ram_05B6_player_dead_flag
C - - - - - 0x01C326 07:C316: 8D B6 05  STA ram_05B6_player_dead_flag
bra_C319:
C - - - - - 0x01C329 07:C319: AD B7 05  LDA ram_05B6_player_dead_flag + $01
C - - - - - 0x01C32C 07:C31C: F0 0C     BEQ bra_C32A
C - - - - - 0x01C32E 07:C31E: AD B5 05  LDA ram_05B5_player_flags
C - - - - - 0x01C331 07:C321: 29 40     AND #con_05B5_captured_hawk
C - - - - - 0x01C333 07:C323: 0A        ASL
C - - - - - 0x01C334 07:C324: 4D B7 05  EOR ram_05B6_player_dead_flag + $01
C - - - - - 0x01C337 07:C327: 8D B7 05  STA ram_05B6_player_dead_flag + $01
bra_C32A:
loc_C32A:
C D 2 - - - 0x01C33A 07:C32A: A2 00     LDX #$00
C - - - - - 0x01C33C 07:C32C: A0 01     LDY #$01
bra_C32E_loop:
C - - - - - 0x01C33E 07:C32E: BD 6B C3  LDA tbl_C36B,X
C - - - - - 0x01C341 07:C331: 99 B8 05  STA ram_05B8_spr_X_lo_player,Y
C - - - - - 0x01C344 07:C334: E8        INX
C - - - - - 0x01C345 07:C335: BD 6B C3  LDA tbl_C36B,X
C - - - - - 0x01C348 07:C338: 99 BA 05  STA ram_05BA_spr_X_hi_player,Y
C - - - - - 0x01C34B 07:C33B: E8        INX
C - - - - - 0x01C34C 07:C33C: BD 6B C3  LDA tbl_C36B,X
C - - - - - 0x01C34F 07:C33F: 99 BC 05  STA ram_05BC_spr_Y_player,Y
C - - - - - 0x01C352 07:C342: E8        INX
C - - - - - 0x01C353 07:C343: BD 6B C3  LDA tbl_C36B,X
C - - - - - 0x01C356 07:C346: 99 BE 05  STA ram_05BE_plr_data_ptr_lo,Y
C - - - - - 0x01C359 07:C349: E8        INX
C - - - - - 0x01C35A 07:C34A: BD 6B C3  LDA tbl_C36B,X
C - - - - - 0x01C35D 07:C34D: 99 C0 05  STA ram_05C0_plr_data_ptr_hi,Y
C - - - - - 0x01C360 07:C350: E8        INX
C - - - - - 0x01C361 07:C351: 88        DEY
C - - - - - 0x01C362 07:C352: 10 DA     BPL bra_C32E_loop
C - - - - - 0x01C364 07:C354: A9 34     LDA #con_chr_bank_spr + $34
C - - - - - 0x01C366 07:C356: 85 24     STA ram_chr_bank_spr
C - - - - - 0x01C368 07:C358: A9 35     LDA #con_chr_bank_spr + $35
C - - - - - 0x01C36A 07:C35A: 85 25     STA ram_chr_bank_spr + $01
C - - - - - 0x01C36C 07:C35C: A9 36     LDA #con_chr_bank_spr + $36
C - - - - - 0x01C36E 07:C35E: 85 26     STA ram_chr_bank_spr + $02
C - - - - - 0x01C370 07:C360: A9 37     LDA #con_chr_bank_spr + $37
C - - - - - 0x01C372 07:C362: 85 27     STA ram_chr_bank_spr + $03
C - - - - - 0x01C374 07:C364: 60        RTS



tbl_C365:
;                                              +---------- captain
;                                              |    +----- hawk
;                                              |    |
- D 2 - - - 0x01C375 07:C365: 80        .byte $80, $00   ; 00 captain only
- D 2 - - - 0x01C377 07:C367: 00        .byte $00, $80   ; 01 hawk only
- D 2 - - - 0x01C379 07:C369: 80        .byte $80, $80   ; 02 together



tbl_C36B:
; 
- D 2 - - - 0x01C37B 07:C36B: D0 01     .word $01D0 ; 
- D 2 - - - 0x01C37D 07:C36D: B7        .byte $B7   ; 
- D 2 - - - 0x01C37E 07:C36E: 8F C3     .word off_C38F_00
; 
- D 2 - - - 0x01C380 07:C370: 28 FF     .word $FF28 ; 
- D 2 - - - 0x01C382 07:C372: 1F        .byte $1F   ; 
- D 2 - - - 0x01C383 07:C373: 75 C3     .word off_C375_01



off_C375_01:
- D 2 - I - 0x01C385 07:C375: 08        .byte $08   ; 
- D 2 - I - 0x01C386 07:C376: 00        .byte $00   ; 
- D 2 - I - 0x01C387 07:C377: 00        .byte $00   ; 
- D 2 - I - 0x01C388 07:C378: 9D        .byte $9D   ; 
- D 2 - I - 0x01C389 07:C379: 00        .byte $00   ; 
- D 2 - I - 0x01C38A 07:C37A: 00        .byte $00   ; 
- D 2 - I - 0x01C38B 07:C37B: AD        .byte $AD   ; 
- D 2 - I - 0x01C38C 07:C37C: 08        .byte $08   ; 
- D 2 - I - 0x01C38D 07:C37D: 00        .byte $00   ; 
- D 2 - I - 0x01C38E 07:C37E: 8F        .byte $8F   ; 
- D 2 - I - 0x01C38F 07:C37F: 10        .byte $10   ; 
- D 2 - I - 0x01C390 07:C380: 00        .byte $00   ; 
- D 2 - I - 0x01C391 07:C381: AF        .byte $AF   ; 
- D 2 - I - 0x01C392 07:C382: 18        .byte $18   ; 
- D 2 - I - 0x01C393 07:C383: 00        .byte $00   ; 
- D 2 - I - 0x01C394 07:C384: BF        .byte $BF   ; 
- D 2 - I - 0x01C395 07:C385: 20        .byte $20   ; 
- D 2 - I - 0x01C396 07:C386: 10        .byte $10   ; 
- D 2 - I - 0x01C397 07:C387: E3        .byte $E3   ; 
- D 2 - I - 0x01C398 07:C388: 08        .byte $08   ; 
- D 2 - I - 0x01C399 07:C389: 10        .byte $10   ; 
- D 2 - I - 0x01C39A 07:C38A: C1        .byte $C1   ; 
- D 2 - I - 0x01C39B 07:C38B: 10        .byte $10   ; 
- D 2 - I - 0x01C39C 07:C38C: 10        .byte $10   ; 
- D 2 - I - 0x01C39D 07:C38D: F3        .byte $F3   ; 
- D 2 - I - 0x01C39E 07:C38E: 18        .byte $18   ; 



off_C38F_00:
- D 2 - I - 0x01C39F 07:C38F: 09        .byte $09   ; 
- D 2 - I - 0x01C3A0 07:C390: 01        .byte $01   ; 
- D 2 - I - 0x01C3A1 07:C391: 00        .byte $00   ; 
- D 2 - I - 0x01C3A2 07:C392: 0D        .byte $0D   ; 
- D 2 - I - 0x01C3A3 07:C393: 00        .byte $00   ; 
- D 2 - I - 0x01C3A4 07:C394: 00        .byte $00   ; 
- D 2 - I - 0x01C3A5 07:C395: 3F        .byte $3F   ; 
- D 2 - I - 0x01C3A6 07:C396: 08        .byte $08   ; 
- D 2 - I - 0x01C3A7 07:C397: 00        .byte $00   ; 
- D 2 - I - 0x01C3A8 07:C398: 0F        .byte $0F   ; 
- D 2 - I - 0x01C3A9 07:C399: 10        .byte $10   ; 
- D 2 - I - 0x01C3AA 07:C39A: 00        .byte $00   ; 
- D 2 - I - 0x01C3AB 07:C39B: 1F        .byte $1F   ; 
- D 2 - I - 0x01C3AC 07:C39C: 18        .byte $18   ; 
- D 2 - I - 0x01C3AD 07:C39D: 10        .byte $10   ; 
- D 2 - I - 0x01C3AE 07:C39E: 5F        .byte $5F   ; 
- D 2 - I - 0x01C3AF 07:C39F: 00        .byte $00   ; 
- D 2 - I - 0x01C3B0 07:C3A0: 10        .byte $10   ; 
- D 2 - I - 0x01C3B1 07:C3A1: 6F        .byte $6F   ; 
- D 2 - I - 0x01C3B2 07:C3A2: 08        .byte $08   ; 
- D 2 - I - 0x01C3B3 07:C3A3: 10        .byte $10   ; 
- D 2 - I - 0x01C3B4 07:C3A4: 7F        .byte $7F   ; 
- D 2 - I - 0x01C3B5 07:C3A5: 10        .byte $10   ; 
- D 2 - I - 0x01C3B6 07:C3A6: 20        .byte $20   ; 
- D 2 - I - 0x01C3B7 07:C3A7: 49        .byte $49   ; 
- D 2 - I - 0x01C3B8 07:C3A8: 10        .byte $10   ; 
- D 2 - I - 0x01C3B9 07:C3A9: 20        .byte $20   ; 
- D 2 - I - 0x01C3BA 07:C3AA: 59        .byte $59   ; 
- D 2 - I - 0x01C3BB 07:C3AB: 18        .byte $18   ; 



sub_C3AC:
loc_C3AC:
C D 2 - - - 0x01C3BC 07:C3AC: A9 00     LDA #$00
C - - - - - 0x01C3BE 07:C3AE: 85 CF     STA ram_sprites_counter
C - - - - - 0x01C3C0 07:C3B0: 20 BB C3  JSR sub_C3BB
C - - - - - 0x01C3C3 07:C3B3: 20 99 FD  JSR sub_FD99
C - - - - - 0x01C3C6 07:C3B6: A9 01     LDA #$01
C - - - - - 0x01C3C8 07:C3B8: 85 0C     STA ram_nmi_flag
C - - - - - 0x01C3CA 07:C3BA: 60        RTS



sub_C3BB:
C - - - - - 0x01C3CB 07:C3BB: A9 00     LDA #$00
C - - - - - 0x01C3CD 07:C3BD: 85 70     STA ram_0070_t04_oam_index
C - - - - - 0x01C3CF 07:C3BF: 85 6A     STA ram_006A_t14_plr_index
C - - - - - 0x01C3D1 07:C3C1: 85 6F     STA ram_006F_t11_data_index
C - - - - - 0x01C3D3 07:C3C3: 85 6D     STA ram_006D_t01_spr_A_flip
C - - - - - 0x01C3D5 07:C3C5: 85 D0     STA ram_00D0_flag
bra_C3C7_loop:
C - - - - - 0x01C3D7 07:C3C7: A6 6A     LDX ram_006A_t14_plr_index
C - - - - - 0x01C3D9 07:C3C9: BD B6 05  LDA ram_05B6_player_dead_flag,X
C - - - - - 0x01C3DC 07:C3CC: 30 09     BMI bra_C3D7
loc_C3CE_loop:
bra_C3CE_loop:
C D 2 - - - 0x01C3DE 07:C3CE: E6 6A     INC ram_006A_t14_plr_index
C - - - - - 0x01C3E0 07:C3D0: A6 6A     LDX ram_006A_t14_plr_index
C - - - - - 0x01C3E2 07:C3D2: E0 02     CPX #$02
C - - - - - 0x01C3E4 07:C3D4: 90 F1     BCC bra_C3C7_loop
C - - - - - 0x01C3E6 07:C3D6: 60        RTS
bra_C3D7:
C - - - - - 0x01C3E7 07:C3D7: 86 6A     STX ram_006A_t14_plr_index
C - - - - - 0x01C3E9 07:C3D9: BD BA 05  LDA ram_05BA_spr_X_hi_player,X
C - - - - - 0x01C3EC 07:C3DC: F0 09     BEQ bra_C3E7
C - - - - - 0x01C3EE 07:C3DE: 30 EE     BMI bra_C3CE_loop
C - - - - - 0x01C3F0 07:C3E0: BD B8 05  LDA ram_05B8_spr_X_lo_player,X
C - - - - - 0x01C3F3 07:C3E3: C9 D8     CMP #$D8
C - - - - - 0x01C3F5 07:C3E5: 90 E7     BCC bra_C3CE_loop
bra_C3E7:
C - - - - - 0x01C3F7 07:C3E7: BD B8 05  LDA ram_05B8_spr_X_lo_player,X
C - - - - - 0x01C3FA 07:C3EA: 85 6B     STA ram_006B_t03_spr_X
C - - - - - 0x01C3FC 07:C3EC: BD BC 05  LDA ram_05BC_spr_Y_player,X
C - - - - - 0x01C3FF 07:C3EF: 85 6C     STA ram_006C_t15_spr_Y
C - - - - - 0x01C401 07:C3F1: BD BE 05  LDA ram_05BE_plr_data_ptr_lo,X
C - - - - - 0x01C404 07:C3F4: 85 5B     STA ram_005B_t01_spr_data
C - - - - - 0x01C406 07:C3F6: BD C0 05  LDA ram_05C0_plr_data_ptr_hi,X
C - - - - - 0x01C409 07:C3F9: 85 5C     STA ram_005B_t01_spr_data + $01
C - - - - - 0x01C40B 07:C3FB: A0 00     LDY #$00
C - - - - - 0x01C40D 07:C3FD: B1 5B     LDA (ram_005B_t01_spr_data),Y
C - - - - - 0x01C40F 07:C3FF: 85 68     STA ram_0068_t01_counter
C - - - - - 0x01C411 07:C401: C8        INY ; 01
C - - - - - 0x01C412 07:C402: B1 5B     LDA (ram_005B_t01_spr_data),Y
C - - - - - 0x01C414 07:C404: 85 71     STA ram_0071_t05_spr_A
C - - - - - 0x01C416 07:C406: 20 0B FD  JSR sub_FD0B
C - - - - - 0x01C419 07:C409: 4C CE C3  JMP loc_C3CE_loop



loc_C40C:
sub_C40C:
; out
    ; ram_0067_t66_table_index
C - - - - - 0x01C41C 07:C40C: 85 6C     STA ram_006C_t17
C - - - - - 0x01C41E 07:C40E: A9 00     LDA #$00
; bzk optimize, useless STA? no usage in logs
C - - - - - 0x01C420 07:C410: 85 69     STA ram_0067_t82_array + $02
C - - - - - 0x01C422 07:C412: 85 68     STA ram_0067_t82_array + $01
; bzk optimize, useless STA, overwritten at 0x01C43E
C - - - - - 0x01C424 07:C414: 85 67     STA ram_0067_t82_array
; 
C - - - - - 0x01C426 07:C416: A2 02     LDX #$02
bra_C418_loop:
C - - - - - 0x01C428 07:C418: A5 6C     LDA ram_006C_t17
C - - - - - 0x01C42A 07:C41A: DD 31 C4  CMP tbl_C431,X
C - - - - - 0x01C42D 07:C41D: 90 0C     BCC bra_C42B
C - - - - - 0x01C42F 07:C41F: A5 6C     LDA ram_006C_t17
C - - - - - 0x01C431 07:C421: 38        SEC
C - - - - - 0x01C432 07:C422: FD 31 C4  SBC tbl_C431,X
C - - - - - 0x01C435 07:C425: 85 6C     STA ram_006C_t17
C - - - - - 0x01C437 07:C427: F6 67     INC ram_0067_t82_array,X
C - - - - - 0x01C439 07:C429: D0 ED     BNE bra_C418_loop    ; jmp
bra_C42B:
C - - - - - 0x01C43B 07:C42B: CA        DEX
C - - - - - 0x01C43C 07:C42C: D0 EA     BNE bra_C418_loop
C - - - - - 0x01C43E 07:C42E: 85 67     STA ram_0067_t66_table_index
C - - - - - 0x01C440 07:C430: 60        RTS



tbl_C431:
- - - - - - 0x01C441 07:C431: 00        .byte $00   ; 00 
- D 2 - - - 0x01C442 07:C432: 0A        .byte $0A   ; 01 
- D 2 - - - 0x01C443 07:C433: 64        .byte $64   ; 02 



sub_C434:
C - - - - - 0x01C444 07:C434: 20 96 C4  JSR sub_C496_clear_some_stuff
C - - - - - 0x01C447 07:C437: A5 3C     LDA ram_city
C - - - - - 0x01C449 07:C439: 0A        ASL
C - - - - - 0x01C44A 07:C43A: AA        TAX
C - - - - - 0x01C44B 07:C43B: BD 48 C4  LDA tbl_C448,X
C - - - - - 0x01C44E 07:C43E: 85 5B     STA ram_005B_t4F_jmp
C - - - - - 0x01C450 07:C440: BD 49 C4  LDA tbl_C448 + $01,X
C - - - - - 0x01C453 07:C443: 85 5C     STA ram_005B_t4F_jmp + $01
C - - - - - 0x01C455 07:C445: 6C 5B 00  JMP (ram_005B_t4F_jmp)



tbl_C448:
- D 2 - - - 0x01C458 07:C448: AB C4     .word ofs_018_C4AB_00
- D 2 - - - 0x01C45A 07:C44A: BB C4     .word ofs_018_C4BB_01
- D 2 - - - 0x01C45C 07:C44C: A5 C4     .word ofs_018_C4A5_02
- D 2 - - - 0x01C45E 07:C44E: CB C4     .word ofs_018_C4CB_03
- D 2 - - - 0x01C460 07:C450: D6 C4     .word ofs_018_C4D6_04
- D 2 - - - 0x01C462 07:C452: DD C4     .word ofs_018_C4DD_05
- D 2 - - - 0x01C464 07:C454: A5 C4     .word ofs_018_C4A5_06
- D 2 - - - 0x01C466 07:C456: A5 C4     .word ofs_018_C4A5_07
- D 2 - - - 0x01C468 07:C458: D6 C4     .word ofs_018_C4D6_08
- D 2 - - - 0x01C46A 07:C45A: DD C4     .word ofs_018_C4DD_09
- D 2 - - - 0x01C46C 07:C45C: D6 C4     .word ofs_018_C4D6_0A
- D 2 - - - 0x01C46E 07:C45E: A5 C4     .word ofs_018_C4A5_0B
- D 2 - - - 0x01C470 07:C460: A5 C4     .word ofs_018_C4A5_0C
- D 2 - - - 0x01C472 07:C462: D6 C4     .word ofs_018_C4D6_0D
- D 2 - - - 0x01C474 07:C464: A5 C4     .word ofs_018_C4A5_0E
- D 2 - - - 0x01C476 07:C466: D6 C4     .word ofs_018_C4D6_0F
- D 2 - - - 0x01C478 07:C468: D6 C4     .word ofs_018_C4D6_10
- D 2 - - - 0x01C47A 07:C46A: DD C4     .word ofs_018_C4DD_11
- D 2 - - - 0x01C47C 07:C46C: A5 C4     .word ofs_018_C4A5_12
- D 2 - - - 0x01C47E 07:C46E: A5 C4     .word ofs_018_C4A5_13
- D 2 - - - 0x01C480 07:C470: A5 C4     .word ofs_018_C4A5_14
- D 2 - - - 0x01C482 07:C472: A5 C4     .word ofs_018_C4A5_15
- D 2 - - - 0x01C484 07:C474: A5 C4     .word ofs_018_C4A5_16
- D 2 - - - 0x01C486 07:C476: DD C4     .word ofs_018_C4DD_17
- D 2 - - - 0x01C488 07:C478: E8 C4     .word ofs_018_C4E8_18
- D 2 - - - 0x01C48A 07:C47A: A5 C4     .word ofs_018_C4A5_19
- D 2 - - - 0x01C48C 07:C47C: A5 C4     .word ofs_018_C4A5_1A
- D 2 - - - 0x01C48E 07:C47E: A5 C4     .word ofs_018_C4A5_1B
- - - - - - 0x01C490 07:C480: A5 C4     .word ofs_018_C4A5_1C
- - - - - - 0x01C492 07:C482: A5 C4     .word ofs_018_C4A5_1D
- - - - - - 0x01C494 07:C484: A5 C4     .word ofs_018_C4A5_1E
- - - - - - 0x01C496 07:C486: A5 C4     .word ofs_018_C4A5_1F
- - - - - - 0x01C498 07:C488: A5 C4     .word ofs_018_C4A5_20
- - - - - - 0x01C49A 07:C48A: A5 C4     .word ofs_018_C4A5_21
- - - - - - 0x01C49C 07:C48C: A5 C4     .word ofs_018_C4A5_22
- D 2 - - - 0x01C49E 07:C48E: A5 C4     .word ofs_018_C4A5_23
- D 2 - - - 0x01C4A0 07:C490: A5 C4     .word ofs_018_C4A5_24
- D 2 - - - 0x01C4A2 07:C492: D6 C4     .word ofs_018_C4D6_25
- D 2 - - - 0x01C4A4 07:C494: DD C4     .word ofs_018_C4DD_26



sub_C496_clear_some_stuff:
C - - - - - 0x01C4A6 07:C496: A9 00     LDA #$00
; bzk optimize, useless STA
C - - - - - 0x01C4A8 07:C498: 8D C3 05  STA ram_05C3_tFF_useless
; 
C - - - - - 0x01C4AB 07:C49B: 8D C4 05  STA ram_05C4_t01
C - - - - - 0x01C4AE 07:C49E: 8D C5 05  STA ram_05C5_t01_bg_pal_data_index
C - - - - - 0x01C4B1 07:C4A1: 8D C6 05  STA ram_05C6_useless
; 
C - - - - - 0x01C4B4 07:C4A4: 60        RTS



ofs_018_C4A5_02:
ofs_018_C4A5_06:
ofs_018_C4A5_07:
ofs_018_C4A5_0B:
ofs_018_C4A5_0C:
ofs_018_C4A5_0E:
ofs_018_C4A5_12:
ofs_018_C4A5_13:
ofs_018_C4A5_14:
ofs_018_C4A5_15:
ofs_018_C4A5_16:
ofs_018_C4A5_19:
ofs_018_C4A5_1A:
ofs_018_C4A5_1B:
ofs_018_C4A5_1C:
ofs_018_C4A5_1D:
ofs_018_C4A5_1E:
ofs_018_C4A5_1F:
ofs_018_C4A5_20:
ofs_018_C4A5_21:
ofs_018_C4A5_22:
ofs_018_C4A5_23:
ofs_018_C4A5_24:
C - - J - - 0x01C4B5 07:C4A5: A9 00     LDA #con_05C2_00
C - - - - - 0x01C4B7 07:C4A7: 8D C2 05  STA ram_05C2_handler
C - - - - - 0x01C4BA 07:C4AA: 60        RTS



ofs_018_C4AB_00:
C - - J - - 0x01C4BB 07:C4AB: A9 04     LDA #> $0460
C - - - - - 0x01C4BD 07:C4AD: 8D C3 05  STA ram_05C3_t01_timer_hi
C - - - - - 0x01C4C0 07:C4B0: A9 60     LDA #< $0460
C - - - - - 0x01C4C2 07:C4B2: 8D C4 05  STA ram_05C4_t02_timer_lo
C - - - - - 0x01C4C5 07:C4B5: A9 01     LDA #con_05C2_01
C - - - - - 0x01C4C7 07:C4B7: 8D C2 05  STA ram_05C2_handler
C - - - - - 0x01C4CA 07:C4BA: 60        RTS



ofs_018_C4BB_01:
C - - J - - 0x01C4CB 07:C4BB: A9 01     LDA #> $0120
C - - - - - 0x01C4CD 07:C4BD: 8D C3 05  STA ram_05C3_t01_timer_hi
C - - - - - 0x01C4D0 07:C4C0: A9 20     LDA #< $0120
C - - - - - 0x01C4D2 07:C4C2: 8D C4 05  STA ram_05C4_t02_timer_lo
C - - - - - 0x01C4D5 07:C4C5: A9 02     LDA #con_05C2_02
C - - - - - 0x01C4D7 07:C4C7: 8D C2 05  STA ram_05C2_handler
C - - - - - 0x01C4DA 07:C4CA: 60        RTS



ofs_018_C4CB_03:
C - - J - - 0x01C4DB 07:C4CB: A9 02     LDA #$02
C - - - - - 0x01C4DD 07:C4CD: 8D C3 05  STA ram_05C3_t02_timer
C - - - - - 0x01C4E0 07:C4D0: A9 04     LDA #con_05C2_04
C - - - - - 0x01C4E2 07:C4D2: 8D C2 05  STA ram_05C2_handler
C - - - - - 0x01C4E5 07:C4D5: 60        RTS



ofs_018_C4D6_04:
ofs_018_C4D6_08:
ofs_018_C4D6_0A:
ofs_018_C4D6_0D:
ofs_018_C4D6_0F:
ofs_018_C4D6_10:
ofs_018_C4D6_25:
C - - J - - 0x01C4E6 07:C4D6: A9 05     LDA #con_05C2_05
C - - - - - 0x01C4E8 07:C4D8: 8D C2 05  STA ram_05C2_handler
C - - - - - 0x01C4EB 07:C4DB: D0 05     BNE bra_C4E2    ; jmp



ofs_018_C4DD_05:
ofs_018_C4DD_09:
ofs_018_C4DD_11:
ofs_018_C4DD_17:
ofs_018_C4DD_26:
C - - J - - 0x01C4ED 07:C4DD: A9 06     LDA #con_05C2_06
C - - - - - 0x01C4EF 07:C4DF: 8D C2 05  STA ram_05C2_handler
bra_C4E2:
C - - - - - 0x01C4F2 07:C4E2: A9 04     LDA #$04
C - - - - - 0x01C4F4 07:C4E4: 8D C3 05  STA ram_05C3_t03_timer
C - - - - - 0x01C4F7 07:C4E7: 60        RTS



sub_C4E8:
ofs_018_C4E8_18:
C - - J - - 0x01C4F8 07:C4E8: A9 05     LDA #con_irq_data_05
C - - - - - 0x01C4FA 07:C4EA: 85 2D     STA ram_irq_data_index
C - - - - - 0x01C4FC 07:C4EC: 20 77 D7  JSR sub_D777_prepare_irq_config
C - - - - - 0x01C4FF 07:C4EF: A9 01     LDA #$01
C - - - - - 0x01C501 07:C4F1: 8D F7 05  STA ram_05F7_scroll_flag
C - - - - - 0x01C504 07:C4F4: A9 00     LDA #con_05C2_00
C - - - - - 0x01C506 07:C4F6: 8D C2 05  STA ram_05C2_handler
C - - - - - 0x01C509 07:C4F9: A9 01     LDA #$01
C - - - - - 0x01C50B 07:C4FB: 8D 00 A0  STA $A000
; bzk optimize, JMP
C - - - - - 0x01C50E 07:C4FE: 20 67 C6  JSR sub_C667_clear_2C00_nametable
C - - - - - 0x01C511 07:C501: 60        RTS



sub_C502:
C - - - - - 0x01C512 07:C502: AD C2 05  LDA ram_05C2_handler
C - - - - - 0x01C515 07:C505: F0 0F     BEQ bra_C516_RTS    ; if con_05C2_00
C - - - - - 0x01C517 07:C507: 0A        ASL
C - - - - - 0x01C518 07:C508: AA        TAX
C - - - - - 0x01C519 07:C509: BD 17 C5  LDA tbl_C517,X
C - - - - - 0x01C51C 07:C50C: 85 5B     STA ram_005B_t4E_jmp
C - - - - - 0x01C51E 07:C50E: BD 18 C5  LDA tbl_C517 + $01,X
C - - - - - 0x01C521 07:C511: 85 5C     STA ram_005B_t4E_jmp + $01
C - - - - - 0x01C523 07:C513: 6C 5B 00  JMP (ram_005B_t4E_jmp)
bra_C516_RTS:
ofs_017_C516_00_RTS:
; con_05C2_00
C - - - - - 0x01C526 07:C516: 60        RTS



tbl_C517:
- - - - - - 0x01C527 07:C517: 16 C5     .word ofs_017_C516_00_RTS   ; unused, see 0x01C515
- D 2 - - - 0x01C529 07:C519: 2A C5     .word ofs_017_C52A_01
- D 2 - - - 0x01C52B 07:C51B: 25 C5     .word ofs_017_C525_02
- D 2 - - - 0x01C52D 07:C51D: 34 C6     .word ofs_017_C634_03
- D 2 - - - 0x01C52F 07:C51F: CD C5     .word ofs_017_C5CD_04
- D 2 - - - 0x01C531 07:C521: FE C5     .word ofs_017_C5FE_05
- D 2 - - - 0x01C533 07:C523: FE C5     .word ofs_017_C5FE_06



ofs_017_C525_02:
; con_05C2_02
C - - J - - 0x01C535 07:C525: A5 D9     LDA ram_00D9_array_index
C - - - - - 0x01C537 07:C527: D0 01     BNE bra_C52A
C - - - - - 0x01C539 07:C529: 60        RTS
bra_C52A:
ofs_017_C52A_01:
; con_05C2_01
C - - J - - 0x01C53A 07:C52A: CE C4 05  DEC ram_05C4_t02_timer_lo
C - - - - - 0x01C53D 07:C52D: D0 53     BNE bra_C582_RTS
C - - - - - 0x01C53F 07:C52F: CE C3 05  DEC ram_05C3_t01_timer_hi
C - - - - - 0x01C542 07:C532: D0 4E     BNE bra_C582_RTS
C - - - - - 0x01C544 07:C534: A6 3C     LDX ram_city
C - - - - - 0x01C546 07:C536: BD CB C5  LDA tbl_C5CB,X
C - - - - - 0x01C549 07:C539: 85 4D     STA ram_004D_palette_index
C - - - - - 0x01C54B 07:C53B: 8A        TXA
C - - - - - 0x01C54C 07:C53C: 0A        ASL
C - - - - - 0x01C54D 07:C53D: AA        TAX
C - - - - - 0x01C54E 07:C53E: BD 87 C5  LDA tbl_C587_background_palette,X
C - - - - - 0x01C551 07:C541: 85 5B     STA ram_005B_t27_bg_pal_data
C - - - - - 0x01C553 07:C543: BD 88 C5  LDA tbl_C587_background_palette + $01,X
C - - - - - 0x01C556 07:C546: 85 5C     STA ram_005B_t27_bg_pal_data + $01
C - - - - - 0x01C558 07:C548: AC C5 05  LDY ram_05C5_t01_bg_pal_data_index
C - - - - - 0x01C55B 07:C54B: A2 00     LDX #$00
bra_C54D_loop:
C - - - - - 0x01C55D 07:C54D: B1 5B     LDA (ram_005B_t27_bg_pal_data),Y
C - - - - - 0x01C55F 07:C54F: 9D 80 02  STA ram_pal_buffer,X
C - - - - - 0x01C562 07:C552: C8        INY
C - - - - - 0x01C563 07:C553: E8        INX
C - - - - - 0x01C564 07:C554: E0 10     CPX #$10
C - - - - - 0x01C566 07:C556: D0 F5     BNE bra_C54D_loop
C - - - - - 0x01C568 07:C558: A9 10     LDA #$10    ; background colors only
C - - - - - 0x01C56A 07:C55A: 85 4F     STA ram_004F_pal_buffer_size
C - - - - - 0x01C56C 07:C55C: A9 01     LDA #con_buffer_ready_palette
C - - - - - 0x01C56E 07:C55E: 05 02     ORA ram_buffers_flags
C - - - - - 0x01C570 07:C560: 85 02     STA ram_buffers_flags
C - - - - - 0x01C572 07:C562: A6 3C     LDX ram_city
C - - - - - 0x01C574 07:C564: BD 83 C5  LDA tbl_C583_timer_lo,X
C - - - - - 0x01C577 07:C567: 8D C4 05  STA ram_05C4_t02_timer_lo
C - - - - - 0x01C57A 07:C56A: BD 85 C5  LDA tbl_C585_timer_hi,X
C - - - - - 0x01C57D 07:C56D: 8D C3 05  STA ram_05C3_t01_timer_hi
C - - - - - 0x01C580 07:C570: AD C5 05  LDA ram_05C5_t01_bg_pal_data_index
C - - - - - 0x01C583 07:C573: 18        CLC
C - - - - - 0x01C584 07:C574: 69 10     ADC #$10
C - - - - - 0x01C586 07:C576: 8D C5 05  STA ram_05C5_t01_bg_pal_data_index
C - - - - - 0x01C589 07:C579: C9 20     CMP #$20
C - - - - - 0x01C58B 07:C57B: 90 05     BCC bra_C582_RTS
C - - - - - 0x01C58D 07:C57D: A9 00     LDA #con_05C2_00
C - - - - - 0x01C58F 07:C57F: 8D C2 05  STA ram_05C2_handler
bra_C582_RTS:
C - - - - - 0x01C592 07:C582: 60        RTS



tbl_C583_timer_lo:
- D 2 - - - 0x01C593 07:C583: 00        .byte < $0300   ; 00 
- D 2 - - - 0x01C594 07:C584: 20        .byte < $0120   ; 01 



tbl_C585_timer_hi:
- D 2 - - - 0x01C595 07:C585: 03        .byte > $0300   ; 00 
- D 2 - - - 0x01C596 07:C586: 01        .byte > $0120   ; 01 



tbl_C587_background_palette:
- D 2 - - - 0x01C597 07:C587: 8B C5     .word off_C58B_00
- D 2 - - - 0x01C599 07:C589: AB C5     .word off_C5AB_01



off_C58B_00:
; 00 
- D 2 - I - 0x01C59B 07:C58B: 0F        .byte $0F, $27, $18, $30   ; 
- D 2 - I - 0x01C59F 07:C58F: 0F        .byte $0F, $27, $37, $30   ; 
- D 2 - I - 0x01C5A3 07:C593: 0F        .byte $0F, $18, $28, $27   ; 
- D 2 - I - 0x01C5A7 07:C597: 0F        .byte $0F, $08, $00, $27   ; 
; 10 
- D 2 - I - 0x01C5AB 07:C59B: 0F        .byte $0F, $27, $18, $37   ; 
- D 2 - I - 0x01C5AF 07:C59F: 0F        .byte $0F, $27, $27, $37   ; 
- D 2 - I - 0x01C5B3 07:C5A3: 0F        .byte $0F, $16, $26, $27   ; 
- D 2 - I - 0x01C5B7 07:C5A7: 0F        .byte $0F, $08, $17, $27   ; 



off_C5AB_01:
; 00 
- D 2 - I - 0x01C5BB 07:C5AB: 0F        .byte $0F, $08, $00, $10   ; 
- D 2 - I - 0x01C5BF 07:C5AF: 0F        .byte $0F, $09, $19, $2B   ; 
- D 2 - I - 0x01C5C3 07:C5B3: 0F        .byte $0F, $10, $07, $00   ; 
- D 2 - I - 0x01C5C7 07:C5B7: 0F        .byte $0F, $0B, $1C, $2C   ; 
; 10 
- D 2 - I - 0x01C5CB 07:C5BB: 0F        .byte $0F, $08, $00, $10   ; 
- D 2 - I - 0x01C5CF 07:C5BF: 0F        .byte $0F, $0F, $0B, $1C   ; 
- D 2 - I - 0x01C5D3 07:C5C3: 0F        .byte $0F, $00, $07, $0F   ; 
- D 2 - I - 0x01C5D7 07:C5C7: 0F        .byte $0F, $0F, $0C, $1C   ; 



tbl_C5CB:
- D 2 - - - 0x01C5DB 07:C5CB: 23        .byte $23   ; 00 
- D 2 - - - 0x01C5DC 07:C5CC: 24        .byte $24   ; 01 



ofs_017_C5CD_04:
; con_05C2_04
C - - J - - 0x01C5DD 07:C5CD: CE C3 05  DEC ram_05C3_t02_timer
C - - - - - 0x01C5E0 07:C5D0: D0 23     BNE bra_C5F5_RTS
C - - - - - 0x01C5E2 07:C5D2: A9 02     LDA #$02
C - - - - - 0x01C5E4 07:C5D4: 8D C3 05  STA ram_05C3_t02_timer
C - - - - - 0x01C5E7 07:C5D7: AD C4 05  LDA ram_05C4_t01
C - - - - - 0x01C5EA 07:C5DA: 0A        ASL
C - - - - - 0x01C5EB 07:C5DB: AA        TAX
C - - - - - 0x01C5EC 07:C5DC: BD F6 C5  LDA tbl_C5F6_chr_banks_background,X
C - - - - - 0x01C5EF 07:C5DF: 85 20     STA ram_chr_bank_bg
C - - - - - 0x01C5F1 07:C5E1: BD F7 C5  LDA tbl_C5F6_chr_banks_background + $01,X
C - - - - - 0x01C5F4 07:C5E4: 85 21     STA ram_chr_bank_bg + $01
C - - - - - 0x01C5F6 07:C5E6: EE C4 05  INC ram_05C4_t01
C - - - - - 0x01C5F9 07:C5E9: AD C4 05  LDA ram_05C4_t01
C - - - - - 0x01C5FC 07:C5EC: C9 04     CMP #$04
C - - - - - 0x01C5FE 07:C5EE: 90 05     BCC bra_C5F5_RTS
C - - - - - 0x01C600 07:C5F0: A9 00     LDA #$00
C - - - - - 0x01C602 07:C5F2: 8D C4 05  STA ram_05C4_t01
bra_C5F5_RTS:
C - - - - - 0x01C605 07:C5F5: 60        RTS



tbl_C5F6_chr_banks_background:
; 00 
- D 2 - - - 0x01C606 07:C5F6: 04        .byte con_chr_bank_bg + $04   ; 
- D 2 - - - 0x01C607 07:C5F7: 05        .byte con_chr_bank_bg + $05   ; 
; 01 
- D 2 - - - 0x01C608 07:C5F8: 06        .byte con_chr_bank_bg + $06   ; 
- D 2 - - - 0x01C609 07:C5F9: 07        .byte con_chr_bank_bg + $07   ; 
; 02 
- D 2 - - - 0x01C60A 07:C5FA: 08        .byte con_chr_bank_bg + $08   ;   
- D 2 - - - 0x01C60B 07:C5FB: 09        .byte con_chr_bank_bg + $09   ; 
; 03 
- D 2 - - - 0x01C60C 07:C5FC: 0A        .byte con_chr_bank_bg + $0A   ; 
- D 2 - - - 0x01C60D 07:C5FD: 0B        .byte con_chr_bank_bg + $0B   ; 



ofs_017_C5FE_05:
; con_05C2_05
ofs_017_C5FE_06:
; con_05C2_06
C - - J - - 0x01C60E 07:C5FE: CE C3 05  DEC ram_05C3_t03_timer
C - - - - - 0x01C611 07:C601: D0 2A     BNE bra_C62D_RTS
C - - - - - 0x01C613 07:C603: A9 04     LDA #$04
C - - - - - 0x01C615 07:C605: 8D C3 05  STA ram_05C3_t03_timer
C - - - - - 0x01C618 07:C608: EE C4 05  INC ram_05C4_t01
C - - - - - 0x01C61B 07:C60B: AD C4 05  LDA ram_05C4_t01
C - - - - - 0x01C61E 07:C60E: C9 03     CMP #$03
C - - - - - 0x01C620 07:C610: 90 05     BCC bra_C617
C - - - - - 0x01C622 07:C612: A9 00     LDA #$00
C - - - - - 0x01C624 07:C614: 8D C4 05  STA ram_05C4_t01
bra_C617:
C - - - - - 0x01C627 07:C617: AE C4 05  LDX ram_05C4_t01
C - - - - - 0x01C62A 07:C61A: AD C2 05  LDA ram_05C2_handler
C - - - - - 0x01C62D 07:C61D: C9 06     CMP #con_05C2_06
C - - - - - 0x01C62F 07:C61F: F0 07     BEQ bra_C628
C - - - - - 0x01C631 07:C621: BD 2E C6  LDA tbl_C62E_chr_banks_background,X
C - - - - - 0x01C634 07:C624: 85 21     STA ram_chr_bank_bg + $01
C - - - - - 0x01C636 07:C626: D0 05     BNE bra_C62D_RTS    ; jmp
bra_C628:
C - - - - - 0x01C638 07:C628: BD 31 C6  LDA tbl_C631_chr_banks_background,X
C - - - - - 0x01C63B 07:C62B: 85 21     STA ram_chr_bank_bg + $01
bra_C62D_RTS:
C - - - - - 0x01C63D 07:C62D: 60        RTS



tbl_C62E_chr_banks_background:
- D 2 - - - 0x01C63E 07:C62E: 05        .byte con_chr_bank_bg + $05   ; 00 
- D 2 - - - 0x01C63F 07:C62F: 25        .byte con_chr_bank_bg + $25   ; 01 
- D 2 - - - 0x01C640 07:C630: 2B        .byte con_chr_bank_bg + $2B   ; 02 



tbl_C631_chr_banks_background:
- D 2 - - - 0x01C641 07:C631: 07        .byte con_chr_bank_bg + $07   ; 00 
- D 2 - - - 0x01C642 07:C632: 0D        .byte con_chr_bank_bg + $0D   ; 01 
- D 2 - - - 0x01C643 07:C633: 2F        .byte con_chr_bank_bg + $2F   ; 02 



ofs_017_C634_03:
; con_05C2_03
C - - J - - 0x01C644 07:C634: EE C3 05  INC ram_05C3_t04_counter
C - - - - - 0x01C647 07:C637: AD C3 05  LDA ram_05C3_t04_counter
C - - - - - 0x01C64A 07:C63A: 29 01     AND #$01
C - - - - - 0x01C64C 07:C63C: AA        TAX
C - - - - - 0x01C64D 07:C63D: BD 65 C6  LDA tbl_C665_palette,X
C - - - - - 0x01C650 07:C640: 85 4D     STA ram_004D_palette_index
C - - - - - 0x01C652 07:C642: A5 9C     LDA ram_prg_bank_8000
C - - - - - 0x01C654 07:C644: 48        PHA
C - - - - - 0x01C655 07:C645: 20 2C DA  JSR sub_DA2C_prepare_background_palette
C - - - - - 0x01C658 07:C648: 68        PLA
C - - - - - 0x01C659 07:C649: 85 9C     STA ram_prg_bank_8000
C - - - - - 0x01C65B 07:C64B: 20 41 DB  JSR sub_DB41_prg_bankswitch_8000
C - - - - - 0x01C65E 07:C64E: A9 10     LDA #$10    ; background colors only
C - - - - - 0x01C660 07:C650: 85 4F     STA ram_004F_pal_buffer_size
C - - - - - 0x01C662 07:C652: A9 01     LDA #con_buffer_ready_palette
C - - - - - 0x01C664 07:C654: 05 02     ORA ram_buffers_flags
C - - - - - 0x01C666 07:C656: 85 02     STA ram_buffers_flags
C - - - - - 0x01C668 07:C658: AD C3 05  LDA ram_05C3_t04_counter
C - - - - - 0x01C66B 07:C65B: C9 04     CMP #$04
C - - - - - 0x01C66D 07:C65D: 90 05     BCC bra_C664_RTS
C - - - - - 0x01C66F 07:C65F: A9 00     LDA #con_05C2_00
C - - - - - 0x01C671 07:C661: 8D C2 05  STA ram_05C2_handler
bra_C664_RTS:
C - - - - - 0x01C674 07:C664: 60        RTS



tbl_C665_palette:
- D 2 - - - 0x01C675 07:C665: 24        .byte $24   ; 00 
- D 2 - - - 0x01C676 07:C666: 01        .byte $01   ; 01 



sub_C667_clear_2C00_nametable:
C - - - - - 0x01C677 07:C667: A2 2C     LDX #> $2C00
C - - - - - 0x01C679 07:C669: A0 00     LDY #< $2C00
C - - - - - 0x01C67B 07:C66B: 20 DD E0  JSR sub_E0DD_set_ppu_address
C - - - - - 0x01C67E 07:C66E: A2 04     LDX #$04
C - - - - - 0x01C680 07:C670: A0 C0     LDY #$C0
C - - - - - 0x01C682 07:C672: A9 03     LDA #$03
bra_C674_loop:
C - - - - - 0x01C684 07:C674: 8D 07 20  STA $2007
C - - - - - 0x01C687 07:C677: 88        DEY
C - - - - - 0x01C688 07:C678: D0 FA     BNE bra_C674_loop
C - - - - - 0x01C68A 07:C67A: CA        DEX
C - - - - - 0x01C68B 07:C67B: D0 F7     BNE bra_C674_loop
; clear attributes
C - - - - - 0x01C68D 07:C67D: A2 2F     LDX #> $2FC0
C - - - - - 0x01C68F 07:C67F: A0 C0     LDY #< $2FC0
C - - - - - 0x01C691 07:C681: 20 DD E0  JSR sub_E0DD_set_ppu_address
C - - - - - 0x01C694 07:C684: A9 00     LDA #$00
C - - - - - 0x01C696 07:C686: AA        TAX ; 00
bra_C687_loop:
C - - - - - 0x01C697 07:C687: 8D 07 20  STA $2007
C - - - - - 0x01C69A 07:C68A: 9D 40 02  STA ram_attr_buffer + $40,X
C - - - - - 0x01C69D 07:C68D: E8        INX
C - - - - - 0x01C69E 07:C68E: E0 40     CPX #$40
C - - - - - 0x01C6A0 07:C690: 90 F5     BCC bra_C687_loop
C - - - - - 0x01C6A2 07:C692: 60        RTS



loc_C693_objects_collision:
; in
    ; ram_0069_t18_pos_X_lo
    ; ram_006A_t16_pos_Y_lo
C D 2 - - - 0x01C6A3 07:C693: BD 71 04  LDA ram_pos_X_hi_obj + $03,X
C - - - - - 0x01C6A6 07:C696: 1D 98 04  ORA ram_pos_Y_hi_obj + $03,X
C - - - - - 0x01C6A9 07:C699: D0 20     BNE bra_C6BB
C - - - - - 0x01C6AB 07:C69B: BD 64 04  LDA ram_pos_X_lo_obj + $03,X
C - - - - - 0x01C6AE 07:C69E: 38        SEC
C - - - - - 0x01C6AF 07:C69F: E5 69     SBC ram_0069_t18_pos_X_lo
C - - - - - 0x01C6B1 07:C6A1: B0 04     BCS bra_C6A7
C - - - - - 0x01C6B3 07:C6A3: 49 FF     EOR #$FF
C - - - - - 0x01C6B5 07:C6A5: 69 01     ADC #$01
bra_C6A7:
C - - - - - 0x01C6B7 07:C6A7: C9 29     CMP #$29
C - - - - - 0x01C6B9 07:C6A9: B0 10     BCS bra_C6BB
C - - - - - 0x01C6BB 07:C6AB: BD 8B 04  LDA ram_pos_Y_lo_obj + $03,X
C - - - - - 0x01C6BE 07:C6AE: 38        SEC
C - - - - - 0x01C6BF 07:C6AF: E5 6A     SBC ram_006A_t16_pos_Y_lo
C - - - - - 0x01C6C1 07:C6B1: B0 04     BCS bra_C6B7
C - - - - - 0x01C6C3 07:C6B3: 49 FF     EOR #$FF
C - - - - - 0x01C6C5 07:C6B5: 69 01     ADC #$01
bra_C6B7:
C - - - - - 0x01C6C7 07:C6B7: C9 58     CMP #$58
C - - - - - 0x01C6C9 07:C6B9: 90 02     BCC bra_C6BD
bra_C6BB:
C - - - - - 0x01C6CB 07:C6BB: 18        CLC
C - - - - - 0x01C6CC 07:C6BC: 60        RTS
bra_C6BD:
C - - - - - 0x01C6CD 07:C6BD: A5 9C     LDA ram_prg_bank_8000
C - - - - - 0x01C6CF 07:C6BF: 48        PHA
C - - - - - 0x01C6D0 07:C6C0: A9 02     LDA #con_prg_bank + $02
C - - - - - 0x01C6D2 07:C6C2: 85 9C     STA ram_prg_bank_8000
C - - - - - 0x01C6D4 07:C6C4: 20 41 DB  JSR sub_DB41_prg_bankswitch_8000
C - - - - - 0x01C6D7 07:C6C7: A5 68     LDA ram_0068_t16
C - - - - - 0x01C6D9 07:C6C9: 29 7F     AND #$7F
C - - - - - 0x01C6DB 07:C6CB: A8        TAY
C - - - - - 0x01C6DC 07:C6CC: B9 8F 9A  LDA tbl_0x005A9F_pos_Y_lo,Y
C - - - - - 0x01C6DF 07:C6CF: 18        CLC
C - - - - - 0x01C6E0 07:C6D0: 65 6A     ADC ram_006A_t16_pos_Y_lo
C - - - - - 0x01C6E2 07:C6D2: 85 6A     STA ram_006A_t17_pos_Y_lo_1
C - - - - - 0x01C6E4 07:C6D4: 98        TYA
C - - - - - 0x01C6E5 07:C6D5: 0A        ASL
C - - - - - 0x01C6E6 07:C6D6: A8        TAY
C - - - - - 0x01C6E7 07:C6D7: B9 BF 9A  LDA tbl_0x005ACF_compare_position,Y
C - - - - - 0x01C6EA 07:C6DA: 85 6C     STA ram_006C_t20_pos_X_lo
C - - - - - 0x01C6EC 07:C6DC: B9 C0 9A  LDA tbl_0x005ACF_compare_position + $01,Y
C - - - - - 0x01C6EF 07:C6DF: 85 6D     STA ram_006D_t13_pos_Y_lo
C - - - - - 0x01C6F1 07:C6E1: BD 6C 05  LDA ram_056C_obj,X
C - - - - - 0x01C6F4 07:C6E4: 29 7F     AND #$7F
C - - - - - 0x01C6F6 07:C6E6: A8        TAY
C - - - - - 0x01C6F7 07:C6E7: B9 8F 9A  LDA tbl_0x005A9F_pos_Y_lo,Y
C - - - - - 0x01C6FA 07:C6EA: 18        CLC
C - - - - - 0x01C6FB 07:C6EB: 7D 8B 04  ADC ram_pos_Y_lo_obj + $03,X
C - - - - - 0x01C6FE 07:C6EE: 85 6B     STA ram_006B_t22_pos_Y_lo_2
C - - - - - 0x01C700 07:C6F0: 98        TYA
C - - - - - 0x01C701 07:C6F1: 0A        ASL
C - - - - - 0x01C702 07:C6F2: A8        TAY
C - - - - - 0x01C703 07:C6F3: B9 BF 9A  LDA tbl_0x005ACF_compare_position,Y
C - - - - - 0x01C706 07:C6F6: 18        CLC
C - - - - - 0x01C707 07:C6F7: 65 6C     ADC ram_006C_t20_pos_X_lo
C - - - - - 0x01C709 07:C6F9: 85 6C     STA ram_006C_t21_pos_X_lo
C - - - - - 0x01C70B 07:C6FB: B9 C0 9A  LDA tbl_0x005ACF_compare_position + $01,Y
C - - - - - 0x01C70E 07:C6FE: 18        CLC
C - - - - - 0x01C70F 07:C6FF: 65 6D     ADC ram_006D_t13_pos_Y_lo
C - - - - - 0x01C711 07:C701: 85 6D     STA ram_006D_t14_pos_Y_lo
C - - - - - 0x01C713 07:C703: 68        PLA
C - - - - - 0x01C714 07:C704: 85 9C     STA ram_prg_bank_8000
C - - - - - 0x01C716 07:C706: 20 41 DB  JSR sub_DB41_prg_bankswitch_8000
C - - - - - 0x01C719 07:C709: A5 69     LDA ram_0069_t18_pos_X_lo
C - - - - - 0x01C71B 07:C70B: 38        SEC
C - - - - - 0x01C71C 07:C70C: FD 64 04  SBC ram_pos_X_lo_obj + $03,X
C - - - - - 0x01C71F 07:C70F: B0 04     BCS bra_C715
C - - - - - 0x01C721 07:C711: 49 FF     EOR #$FF
C - - - - - 0x01C723 07:C713: 69 01     ADC #$01
bra_C715:
C - - - - - 0x01C725 07:C715: C5 6C     CMP ram_006C_t21_pos_X_lo
C - - - - - 0x01C727 07:C717: F0 02     BEQ bra_C71B
C - - - - - 0x01C729 07:C719: B0 A0     BCS bra_C6BB
bra_C71B:
C - - - - - 0x01C72B 07:C71B: A5 6A     LDA ram_006A_t17_pos_Y_lo_1
C - - - - - 0x01C72D 07:C71D: 38        SEC
C - - - - - 0x01C72E 07:C71E: E5 6B     SBC ram_006B_t22_pos_Y_lo_2
C - - - - - 0x01C730 07:C720: B0 04     BCS bra_C726
C - - - - - 0x01C732 07:C722: 49 FF     EOR #$FF
C - - - - - 0x01C734 07:C724: 69 01     ADC #$01
bra_C726:
C - - - - - 0x01C736 07:C726: C5 6D     CMP ram_006D_t14_pos_Y_lo
C - - - - - 0x01C738 07:C728: F0 02     BEQ bra_C72C
C - - - - - 0x01C73A 07:C72A: B0 8F     BCS bra_C6BB
bra_C72C:
C - - - - - 0x01C73C 07:C72C: 38        SEC
C - - - - - 0x01C73D 07:C72D: 60        RTS



loc_C72E:
; out
    ; C
        ; 0 = 
        ; 1 = 
C D 2 - - - 0x01C73E 07:C72E: A5 9C     LDA ram_prg_bank_8000
C - - - - - 0x01C740 07:C730: 48        PHA
C - - - - - 0x01C741 07:C731: A9 02     LDA #con_prg_bank + $02
C - - - - - 0x01C743 07:C733: 85 9C     STA ram_prg_bank_8000
C - - - - - 0x01C745 07:C735: 20 41 DB  JSR sub_DB41_prg_bankswitch_8000
C - - - - - 0x01C748 07:C738: BD F7 04  LDA ram_04F3_obj + $04,X
C - - - - - 0x01C74B 07:C73B: 30 79     BMI bra_C7B6
C - - - - - 0x01C74D 07:C73D: BD 70 05  LDA ram_056C_obj + $04,X
C - - - - - 0x01C750 07:C740: F0 74     BEQ bra_C7B6
C - - - - - 0x01C752 07:C742: BD 75 04  LDA ram_pos_X_hi_obj + $07,X
C - - - - - 0x01C755 07:C745: 1D 9C 04  ORA ram_pos_Y_hi_obj + $07,X
C - - - - - 0x01C758 07:C748: D0 6C     BNE bra_C7B6
; if doesn't exist?
C - - - - - 0x01C75A 07:C74A: BD 68 04  LDA ram_pos_X_lo_obj + $07,X
C - - - - - 0x01C75D 07:C74D: 38        SEC
C - - - - - 0x01C75E 07:C74E: ED 04 04  SBC ram_pos_X_lo_player
C - - - - - 0x01C761 07:C751: B0 04     BCS bra_C757
C - - - - - 0x01C763 07:C753: 49 FF     EOR #$FF
C - - - - - 0x01C765 07:C755: 69 01     ADC #$01
bra_C757:
C - - - - - 0x01C767 07:C757: C9 12     CMP #$12
C - - - - - 0x01C769 07:C759: B0 5B     BCS bra_C7B6
C - - - - - 0x01C76B 07:C75B: AD 1F 04  LDA ram_041F_player_flags
C - - - - - 0x01C76E 07:C75E: 29 F8     AND #$F8
C - - - - - 0x01C770 07:C760: D0 54     BNE bra_C7B6
C - - - - - 0x01C772 07:C762: A5 A8     LDA ram_plr_index
C - - - - - 0x01C774 07:C764: D0 17     BNE bra_C77D
C - - - - - 0x01C776 07:C766: BD 4E 04  LDA ram_obj_id + $04,X
C - - - - - 0x01C779 07:C769: 29 7F     AND #$7F
C - - - - - 0x01C77B 07:C76B: C9 24     CMP #con_enemy_id_24
C - - - - - 0x01C77D 07:C76D: F0 04     BEQ bra_C773
C - - - - - 0x01C77F 07:C76F: C9 07     CMP #$07    ; con_enemy_id_07
C - - - - - 0x01C781 07:C771: B0 0A     BCS bra_C77D
bra_C773:
C - - - - - 0x01C783 07:C773: AD 2F 04  LDA ram_042F_shield_script
C - - - - - 0x01C786 07:C776: D0 05     BNE bra_C77D
C - - - - - 0x01C788 07:C778: 20 27 C8  JSR sub_C827_bounce_bullet_off_shield
C - - - - - 0x01C78B 07:C77B: B0 3A     BCS bra_C7B7
bra_C77D:
C - - - - - 0x01C78D 07:C77D: AD 1E 04  LDA ram_041E_player_flags
C - - - - - 0x01C790 07:C780: 29 1F     AND #$1F
C - - - - - 0x01C792 07:C782: A8        TAY
C - - - - - 0x01C793 07:C783: B9 8F 9A  LDA tbl_0x005A9F_pos_Y_lo,Y
C - - - - - 0x01C796 07:C786: 18        CLC
C - - - - - 0x01C797 07:C787: 6D 07 04  ADC ram_pos_Y_lo_player
C - - - - - 0x01C79A 07:C78A: 38        SEC
C - - - - - 0x01C79B 07:C78B: FD 8F 04  SBC ram_pos_Y_lo_obj + $07,X
C - - - - - 0x01C79E 07:C78E: B0 04     BCS bra_C794
C - - - - - 0x01C7A0 07:C790: 49 FF     EOR #$FF
C - - - - - 0x01C7A2 07:C792: 69 01     ADC #$01
bra_C794:
C - - - - - 0x01C7A4 07:C794: 85 68     STA ram_0068_t42_pos_Y_lo
C - - - - - 0x01C7A6 07:C796: 98        TYA
C - - - - - 0x01C7A7 07:C797: 0A        ASL
C - - - - - 0x01C7A8 07:C798: A8        TAY
C - - - - - 0x01C7A9 07:C799: A5 68     LDA ram_0068_t42_pos_Y_lo
C - - - - - 0x01C7AB 07:C79B: D9 C0 9A  CMP tbl_0x005ACF_compare_position + $01,Y
C - - - - - 0x01C7AE 07:C79E: F0 02     BEQ bra_C7A2
C - - - - - 0x01C7B0 07:C7A0: B0 14     BCS bra_C7B6
bra_C7A2:
C - - - - - 0x01C7B2 07:C7A2: BD 68 04  LDA ram_pos_X_lo_obj + $07,X
C - - - - - 0x01C7B5 07:C7A5: 38        SEC
C - - - - - 0x01C7B6 07:C7A6: ED 04 04  SBC ram_pos_X_lo_player
C - - - - - 0x01C7B9 07:C7A9: B0 04     BCS bra_C7AF
C - - - - - 0x01C7BB 07:C7AB: 49 FF     EOR #$FF
C - - - - - 0x01C7BD 07:C7AD: 69 01     ADC #$01
bra_C7AF:
C - - - - - 0x01C7BF 07:C7AF: D9 BF 9A  CMP tbl_0x005ACF_compare_position,Y
C - - - - - 0x01C7C2 07:C7B2: F0 0A     BEQ bra_C7BE
C - - - - - 0x01C7C4 07:C7B4: 90 08     BCC bra_C7BE
bra_C7B6:
C - - - - - 0x01C7C6 07:C7B6: 38        SEC
bra_C7B7:
C - - - - - 0x01C7C7 07:C7B7: 68        PLA
C - - - - - 0x01C7C8 07:C7B8: 85 9C     STA ram_prg_bank_8000
; bzk optimize, JMP
C - - - - - 0x01C7CA 07:C7BA: 20 41 DB  JSR sub_DB41_prg_bankswitch_8000
C - - - - - 0x01C7CD 07:C7BD: 60        RTS
bra_C7BE:
C - - - - - 0x01C7CE 07:C7BE: 20 CE C7  JSR sub_C7CE_deal_damage_to_player
C - - - - - 0x01C7D1 07:C7C1: 20 EC C7  JSR sub_C7EC
C - - - - - 0x01C7D4 07:C7C4: A9 0E     LDA #con_sfx_player_hit
C - - - - - 0x01C7D6 07:C7C6: 85 77     STA ram_0077_t03_sound_id
C - - - - - 0x01C7D8 07:C7C8: 20 04 CB  JSR sub_CB04_play_sound
C - - - - - 0x01C7DB 07:C7CB: 18        CLC
C - - - - - 0x01C7DC 07:C7CC: 90 E9     BCC bra_C7B7    ; jmp



sub_C7CE_deal_damage_to_player:
C - - - - - 0x01C7DE 07:C7CE: A5 9D     LDA ram_prg_bank_A000
C - - - - - 0x01C7E0 07:C7D0: 48        PHA
C - - - - - 0x01C7E1 07:C7D1: A9 0B     LDA #con_prg_bank + $0B
C - - - - - 0x01C7E3 07:C7D3: 85 9D     STA ram_prg_bank_A000
C - - - - - 0x01C7E5 07:C7D5: 20 58 DB  JSR sub_DB58_prg_bankswitch_A000
C - - - - - 0x01C7E8 07:C7D8: 8A        TXA
C - - - - - 0x01C7E9 07:C7D9: 48        PHA
C - - - - - 0x01C7EA 07:C7DA: BD 7D 05  LDA ram_obj_damage + $04,X
C - - - - - 0x01C7ED 07:C7DD: 20 09 A0  JSR sub_0x016019_deal_damage_to_player
C - - - - - 0x01C7F0 07:C7E0: 20 03 A0  JSR sub_0x016013
C - - - - - 0x01C7F3 07:C7E3: 68        PLA
C - - - - - 0x01C7F4 07:C7E4: AA        TAX
C - - - - - 0x01C7F5 07:C7E5: 68        PLA
C - - - - - 0x01C7F6 07:C7E6: 85 9D     STA ram_prg_bank_A000
; bzk optimize, JMP
C - - - - - 0x01C7F8 07:C7E8: 20 58 DB  JSR sub_DB58_prg_bankswitch_A000
C - - - - - 0x01C7FB 07:C7EB: 60        RTS



sub_C7EC:
C - - - - - 0x01C7FC 07:C7EC: BD 4E 04  LDA ram_obj_id + $04,X
C - - - - - 0x01C7FF 07:C7EF: 29 7F     AND #$7F
C - - - - - 0x01C801 07:C7F1: C9 24     CMP #$24    ; con_enemy_id_24
C - - - - - 0x01C803 07:C7F3: B0 2C     BCS bra_C821_24_4F
C - - - - - 0x01C805 07:C7F5: C9 07     CMP #$07    ; con_enemy_id_07
C - - - - - 0x01C807 07:C7F7: 90 1E     BCC bra_C817_00_06
; 07-23
; 
C - - - - - 0x01C809 07:C7F9: BD 75 04  LDA ram_pos_X_hi_obj + $07,X
C - - - - - 0x01C80C 07:C7FC: 85 67     STA ram_0067_t0B_pos_X_hi
C - - - - - 0x01C80E 07:C7FE: BD 68 04  LDA ram_pos_X_lo_obj + $07,X
C - - - - - 0x01C811 07:C801: 85 68     STA ram_0068_t06_pos_X_lo
; 
C - - - - - 0x01C813 07:C803: BD 9C 04  LDA ram_pos_Y_hi_obj + $07,X
C - - - - - 0x01C816 07:C806: 85 69     STA ram_0069_t15_pos_Y_hi
C - - - - - 0x01C818 07:C808: BD 8F 04  LDA ram_pos_Y_lo_obj + $07,X
C - - - - - 0x01C81B 07:C80B: 85 6A     STA ram_006A_t04_pos_Y_lo
; 
C - - - - - 0x01C81D 07:C80D: 20 49 D4  JSR sub_D449
C - - - - - 0x01C820 07:C810: A9 1B     LDA #con_sfx_explosion
C - - - - - 0x01C822 07:C812: 85 77     STA ram_0077_t03_sound_id
C - - - - - 0x01C824 07:C814: 20 04 CB  JSR sub_CB04_play_sound
bra_C817_00_06:
C - - - - - 0x01C827 07:C817: A9 00     LDA #$00
C - - - - - 0x01C829 07:C819: 9D 41 04  STA ram_043A_obj_flags + $03 + $04,X
C - - - - - 0x01C82C 07:C81C: C6 CE     DEC ram_all_objects_counter
C - - - - - 0x01C82E 07:C81E: C6 CB     DEC ram_00CB_t01
C - - - - - 0x01C830 07:C820: 60        RTS
bra_C821_24_4F:
C - - - - - 0x01C831 07:C821: A9 01     LDA #$01
C - - - - - 0x01C833 07:C823: 9D 45 05  STA ram_0541_obj_flags + $04,X
C - - - - - 0x01C836 07:C826: 60        RTS



sub_C827_bounce_bullet_off_shield:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x01C837 07:C827: A5 A6     LDA ram_plr_swimming_state
C - - - - - 0x01C839 07:C829: D0 0F     BNE bra_C83A    ; if swiming
; if not swimming
C - - - - - 0x01C83B 07:C82B: AD 0E 04  LDA ram_player_state_2
C - - - - - 0x01C83E 07:C82E: C9 13     CMP #$13
C - - - - - 0x01C840 07:C830: B0 08     BCS bra_C83A    ; if sitting on shield (also on water)
C - - - - - 0x01C842 07:C832: AC 01 04  LDY ram_player_state_1
C - - - - - 0x01C845 07:C835: B9 24 C9  LDA tbl_C924,Y
C - - - - - 0x01C848 07:C838: 10 03     BPL bra_C83D
bra_C83A:
; bzk optimize, CLC + RTS
C - - - - - 0x01C84A 07:C83A: 4C E7 C8  JMP loc_C8E7
bra_C83D:
C - - - - - 0x01C84D 07:C83D: A8        TAY
C - - - - - 0x01C84E 07:C83E: B9 34 C9  LDA tbl_C934,Y
C - - - - - 0x01C851 07:C841: 18        CLC
C - - - - - 0x01C852 07:C842: 6D 07 04  ADC ram_pos_Y_lo_player
C - - - - - 0x01C855 07:C845: 85 67     STA ram_0067_t67_pos_Y_lo
C - - - - - 0x01C857 07:C847: B9 38 C9  LDA tbl_C938,Y
C - - - - - 0x01C85A 07:C84A: 85 68     STA ram_0068_t43_pos_X_lo
C - - - - - 0x01C85C 07:C84C: A5 A4     LDA ram_plr_direction
C - - - - - 0x01C85E 07:C84E: F0 09     BEQ bra_C859_left
; if right
C - - - - - 0x01C860 07:C850: A5 68     LDA ram_0068_t43_pos_X_lo
C - - - - - 0x01C862 07:C852: 49 FF     EOR #$FF
C - - - - - 0x01C864 07:C854: 18        CLC
C - - - - - 0x01C865 07:C855: 69 01     ADC #$01
C - - - - - 0x01C867 07:C857: 85 68     STA ram_0068_t43_pos_X_lo
bra_C859_left:
C - - - - - 0x01C869 07:C859: AD 04 04  LDA ram_pos_X_lo_player
C - - - - - 0x01C86C 07:C85C: 18        CLC
C - - - - - 0x01C86D 07:C85D: 65 68     ADC ram_0068_t43_pos_X_lo
C - - - - - 0x01C86F 07:C85F: 85 68     STA ram_0068_t44_pos_X_lo
C - - - - - 0x01C871 07:C861: BD 68 04  LDA ram_pos_X_lo_obj + $07,X
C - - - - - 0x01C874 07:C864: 38        SEC
C - - - - - 0x01C875 07:C865: E5 68     SBC ram_0068_t44_pos_X_lo
C - - - - - 0x01C877 07:C867: B0 04     BCS bra_C86D
C - - - - - 0x01C879 07:C869: 49 FF     EOR #$FF
C - - - - - 0x01C87B 07:C86B: 69 01     ADC #$01
bra_C86D:
C - - - - - 0x01C87D 07:C86D: D9 40 C9  CMP tbl_C940,Y
C - - - - - 0x01C880 07:C870: B0 75     BCS bra_C8E7
C - - - - - 0x01C882 07:C872: BD 8F 04  LDA ram_pos_Y_lo_obj + $07,X
C - - - - - 0x01C885 07:C875: 38        SEC
C - - - - - 0x01C886 07:C876: E5 67     SBC ram_0067_t67_pos_Y_lo
C - - - - - 0x01C888 07:C878: B0 04     BCS bra_C87E
C - - - - - 0x01C88A 07:C87A: 49 FF     EOR #$FF
C - - - - - 0x01C88C 07:C87C: 69 01     ADC #$01
bra_C87E:
C - - - - - 0x01C88E 07:C87E: D9 3C C9  CMP tbl_C93C,Y
C - - - - - 0x01C891 07:C881: B0 64     BCS bra_C8E7
C - - - - - 0x01C893 07:C883: 90 00     BCC bra_C885    ; jmp
bra_C885:
C - - - - - 0x01C895 07:C885: BD 4E 04  LDA ram_obj_id + $04,X
C - - - - - 0x01C898 07:C888: C9 24     CMP #con_enemy_id_24
C - - - - - 0x01C89A 07:C88A: F0 5D     BEQ bra_C8E9
C - - - - - 0x01C89C 07:C88C: BD F7 04  LDA ram_04F3_obj + $04,X
C - - - - - 0x01C89F 07:C88F: 09 80     ORA #$80
C - - - - - 0x01C8A1 07:C891: 9D F7 04  STA ram_04F3_obj + $04,X
C - - - - - 0x01C8A4 07:C894: AD 01 04  LDA ram_player_state_1
C - - - - - 0x01C8A7 07:C897: C9 0D     CMP #con_plr_state_look_up_cap
C - - - - - 0x01C8A9 07:C899: F0 11     BEQ bra_C8AC
C - - - - - 0x01C8AB 07:C89B: A5 A4     LDA ram_plr_direction
C - - - - - 0x01C8AD 07:C89D: 0A        ASL
C - - - - - 0x01C8AE 07:C89E: A8        TAY
C - - - - - 0x01C8AF 07:C89F: B9 F0 C8  LDA tbl_C8F0,Y
C - - - - - 0x01C8B2 07:C8A2: 85 5B     STA ram_005B_t26_data
C - - - - - 0x01C8B4 07:C8A4: B9 F1 C8  LDA tbl_C8F0 + $01,Y
C - - - - - 0x01C8B7 07:C8A7: 85 5C     STA ram_005B_t26_data + $01
C - - - - - 0x01C8B9 07:C8A9: 4C B4 C8  JMP loc_C8B4
bra_C8AC:
C - - - - - 0x01C8BC 07:C8AC: A9 14     LDA #< tbl_C914
C - - - - - 0x01C8BE 07:C8AE: 85 5B     STA ram_005B_t26_data
C - - - - - 0x01C8C0 07:C8B0: A9 C9     LDA #> tbl_C914
C - - - - - 0x01C8C2 07:C8B2: 85 5C     STA ram_005B_t26_data + $01
loc_C8B4:
; bzk optimize, LDY,X
C D 2 - - - 0x01C8C4 07:C8B4: BD DD 04  LDA ram_04D9_obj + $04,X
C - - - - - 0x01C8C7 07:C8B7: A8        TAY
C - - - - - 0x01C8C8 07:C8B8: B1 5B     LDA (ram_005B_t26_data),Y
C - - - - - 0x01C8CA 07:C8BA: 9D DD 04  STA ram_04D9_obj + $04,X
C - - - - - 0x01C8CD 07:C8BD: 85 68     STA ram_0068_t08
C - - - - - 0x01C8CF 07:C8BF: A9 02     LDA #con_0067_t12_02
C - - - - - 0x01C8D1 07:C8C1: 85 67     STA ram_0067_t12_table_index
C - - - - - 0x01C8D3 07:C8C3: 8A        TXA
C - - - - - 0x01C8D4 07:C8C4: 48        PHA
C - - - - - 0x01C8D5 07:C8C5: 20 56 CA  JSR sub_CA56
C - - - - - 0x01C8D8 07:C8C8: 68        PLA
C - - - - - 0x01C8D9 07:C8C9: AA        TAX
C - - - - - 0x01C8DA 07:C8CA: A5 6A     LDA ram_006A_t06_spd_X_lo_bullet_bounce
C - - - - - 0x01C8DC 07:C8CC: 9D 11 05  STA ram_spd_X_lo_obj + $04,X
C - - - - - 0x01C8DF 07:C8CF: A5 6B     LDA ram_006B_t13_spd_X_fr_bullet_bounce
C - - - - - 0x01C8E1 07:C8D1: 9D 04 05  STA ram_spd_X_fr_obj + $04,X
C - - - - - 0x01C8E4 07:C8D4: A5 6D     LDA ram_006D_t09_spd_Y_lo_bullet_bounce
C - - - - - 0x01C8E6 07:C8D6: 9D 2B 05  STA ram_spd_Y_lo_obj + $04,X
C - - - - - 0x01C8E9 07:C8D9: A5 6E     LDA ram_006E_t09_pos_Y_fr_bullet_bounce
C - - - - - 0x01C8EB 07:C8DB: 9D 1E 05  STA ram_spd_Y_fr_obj + $04,X
bra_C8DE:
C - - - - - 0x01C8EE 07:C8DE: A9 04     LDA #con_sfx_shield_bounce
C - - - - - 0x01C8F0 07:C8E0: 85 77     STA ram_0077_t03_sound_id
C - - - - - 0x01C8F2 07:C8E2: 20 04 CB  JSR sub_CB04_play_sound
C - - - - - 0x01C8F5 07:C8E5: 38        SEC
C - - - - - 0x01C8F6 07:C8E6: 60        RTS
bra_C8E7:
loc_C8E7:
C D 2 - - - 0x01C8F7 07:C8E7: 18        CLC
C - - - - - 0x01C8F8 07:C8E8: 60        RTS
bra_C8E9:
C - - - - - 0x01C8F9 07:C8E9: A9 02     LDA #$02
C - - - - - 0x01C8FB 07:C8EB: 9D 45 05  STA ram_0541_obj_flags + $04,X
C - - - - - 0x01C8FE 07:C8EE: D0 EE     BNE bra_C8DE    ; jmp



tbl_C8F0:
- D 2 - - - 0x01C900 07:C8F0: F4 C8     .word off_C8F4_00_left
- D 2 - - - 0x01C902 07:C8F2: 04 C9     .word off_C904_01_right



off_C8F4_00_left:
- - - - - - 0x01C904 07:C8F4: 04        .byte $04   ; 00 
- - - - - - 0x01C905 07:C8F5: 04        .byte $04   ; 01 
- - - - - - 0x01C906 07:C8F6: 04        .byte $04   ; 02 
- - - - - - 0x01C907 07:C8F7: 04        .byte $04   ; 03 
- - - - - - 0x01C908 07:C8F8: 00        .byte $00   ; 04 
- - - - - - 0x01C909 07:C8F9: 04        .byte $04   ; 05 
- - - - - - 0x01C90A 07:C8FA: 04        .byte $04   ; 06 
- - - - - - 0x01C90B 07:C8FB: 04        .byte $04   ; 07 
- - - - - - 0x01C90C 07:C8FC: 04        .byte $04   ; 08 
- - - - - - 0x01C90D 07:C8FD: 07        .byte $07   ; 09 
- - - - - - 0x01C90E 07:C8FE: 06        .byte $06   ; 0A 
- - - - - - 0x01C90F 07:C8FF: 05        .byte $05   ; 0B 
- D 2 - I - 0x01C910 07:C900: 00        .byte $00   ; 0C 
- - - - - - 0x01C911 07:C901: 03        .byte $03   ; 0D 
- - - - - - 0x01C912 07:C902: 02        .byte $02   ; 0E 
- - - - - - 0x01C913 07:C903: 01        .byte $01   ; 0F 



off_C904_01_right:
- - - - - - 0x01C914 07:C904: 0C        .byte $0C   ; 00 
- - - - - - 0x01C915 07:C905: 0F        .byte $0F   ; 01 
- - - - - - 0x01C916 07:C906: 0E        .byte $0E   ; 02 
- - - - - - 0x01C917 07:C907: 0D        .byte $0D   ; 03 
- D 2 - I - 0x01C918 07:C908: 00        .byte $00   ; 04 
- D 2 - I - 0x01C919 07:C909: 0B        .byte $0B   ; 05 
- - - - - - 0x01C91A 07:C90A: 0A        .byte $0A   ; 06 
- - - - - - 0x01C91B 07:C90B: 09        .byte $09   ; 07 
- D 2 - I - 0x01C91C 07:C90C: 0C        .byte $0C   ; 08 
- - - - - - 0x01C91D 07:C90D: 0C        .byte $0C   ; 09 
- - - - - - 0x01C91E 07:C90E: 0C        .byte $0C   ; 0A 
- - - - - - 0x01C91F 07:C90F: 0C        .byte $0C   ; 0B 
- D 2 - I - 0x01C920 07:C910: 00        .byte $00   ; 0C 
- - - - - - 0x01C921 07:C911: 0C        .byte $0C   ; 0D 
- - - - - - 0x01C922 07:C912: 0C        .byte $0C   ; 0E 
- - - - - - 0x01C923 07:C913: 0C        .byte $0C   ; 0F 



tbl_C914:
- - - - - - 0x01C924 07:C914: 00        .byte $00   ; 00 
- - - - - - 0x01C925 07:C915: 00        .byte $00   ; 01 
- - - - - - 0x01C926 07:C916: 00        .byte $00   ; 02 
- - - - - - 0x01C927 07:C917: 00        .byte $00   ; 03 
- - - - - - 0x01C928 07:C918: 00        .byte $00   ; 04 
- - - - - - 0x01C929 07:C919: 03        .byte $03   ; 05 
- D 2 - I - 0x01C92A 07:C91A: 02        .byte $02   ; 06 
- D 2 - I - 0x01C92B 07:C91B: 01        .byte $01   ; 07 
- D 2 - I - 0x01C92C 07:C91C: 0C        .byte $0C   ; 08 
- D 2 - I - 0x01C92D 07:C91D: 0F        .byte $0F   ; 09 
- D 2 - I - 0x01C92E 07:C91E: 0E        .byte $0E   ; 0A 
- - - - - - 0x01C92F 07:C91F: 0D        .byte $0D   ; 0B 
- - - - - - 0x01C930 07:C920: 00        .byte $00   ; 0C 
- - - - - - 0x01C931 07:C921: 00        .byte $00   ; 0D 
- - - - - - 0x01C932 07:C922: 00        .byte $00   ; 0E 
- - - - - - 0x01C933 07:C923: 00        .byte $00   ; 0F 



tbl_C924:
- D 2 - - - 0x01C934 07:C924: 00        .byte $00   ; 00 con_plr_state_idle
- D 2 - - - 0x01C935 07:C925: 00        .byte $00   ; 01 con_plr_state_walk
- D 2 - - - 0x01C936 07:C926: FF        .byte $FF   ; 02 con_plr_state_jump
- - - - - - 0x01C937 07:C927: FF        .byte $FF   ; 03 con_plr_state_attack_up
- D 2 - - - 0x01C938 07:C928: FF        .byte $FF   ; 04 con_plr_state_grab
- D 2 - - - 0x01C939 07:C929: 01        .byte $01   ; 05 con_plr_state_duck
- D 2 - - - 0x01C93A 07:C92A: FF        .byte $FF   ; 06 con_plr_state_attack_ducking
- - - - - - 0x01C93B 07:C92B: FF        .byte $FF   ; 07 con_plr_state_07
- - - - - - 0x01C93C 07:C92C: FF        .byte $FF   ; 08 con_plr_state_08
- - - - - - 0x01C93D 07:C92D: FF        .byte $FF   ; 09 con_plr_state_09
- D 2 - - - 0x01C93E 07:C92E: FF        .byte $FF   ; 0A con_plr_state_land
- D 2 - - - 0x01C93F 07:C92F: 03        .byte $03   ; 0B con_plr_state_look_up_hawk
- D 2 - - - 0x01C940 07:C930: FF        .byte $FF   ; 0C con_plr_state_0C
- D 2 - - - 0x01C941 07:C931: 02        .byte $02   ; 0D con_plr_state_look_up_cap
- - - - - - 0x01C942 07:C932: FF        .byte $FF   ; 0E con_plr_state_throw_shield
- - - - - - 0x01C943 07:C933: FF        .byte $FF   ; 0F con_plr_state_0F



tbl_C934:
- D 2 - - - 0x01C944 07:C934: E6        .byte $E6   ; 00 
- D 2 - - - 0x01C945 07:C935: FC        .byte $FC   ; 01 
- D 2 - - - 0x01C946 07:C936: DB        .byte $DB   ; 02 
- D 2 - - - 0x01C947 07:C937: F0        .byte $F0   ; 03 



tbl_C938:
- D 2 - - - 0x01C948 07:C938: F6        .byte $F6   ; 00 
- D 2 - - - 0x01C949 07:C939: F6        .byte $F6   ; 01 
- D 2 - - - 0x01C94A 07:C93A: 00        .byte $00   ; 02 
- D 2 - - - 0x01C94B 07:C93B: F2        .byte $F2   ; 03 



tbl_C93C:
- D 2 - - - 0x01C94C 07:C93C: 09        .byte $09   ; 00 
- D 2 - - - 0x01C94D 07:C93D: 08        .byte $08   ; 01 
- D 2 - - - 0x01C94E 07:C93E: 04        .byte $04   ; 02 
- D 2 - - - 0x01C94F 07:C93F: 08        .byte $08   ; 03 



tbl_C940:
- D 2 - - - 0x01C950 07:C940: 04        .byte $04   ; 00 
- D 2 - - - 0x01C951 07:C941: 04        .byte $04   ; 01 
- D 2 - - - 0x01C952 07:C942: 08        .byte $08   ; 02 
- D 2 - - - 0x01C953 07:C943: 04        .byte $04   ; 03 



loc_C944_shield_boomerang_handler:
; out
    ; A = direction/angle?
C D 2 - - - 0x01C954 07:C944: A9 00     LDA #$00
C - - - - - 0x01C956 07:C946: 85 67     STA ram_0067_t68_final_direction
C - - - - - 0x01C958 07:C948: 38        SEC
C - - - - - 0x01C959 07:C949: A5 C6     LDA ram_00C6_pos_Y_fr_shield_aim
C - - - - - 0x01C95B 07:C94B: E5 C0     SBC ram_00C0_pos_Y_fr_shield_boomerang
C - - - - - 0x01C95D 07:C94D: A5 C5     LDA ram_00C5_pos_Y_lo_shield_aim
C - - - - - 0x01C95F 07:C94F: E5 BF     SBC ram_00BF_pos_Y_lo_shield_boomerang
C - - - - - 0x01C961 07:C951: 85 68     STA ram_0068_t45_pos_Y_lo
C - - - - - 0x01C963 07:C953: A5 C4     LDA ram_00C4_pos_Y_hi_shield_aim
C - - - - - 0x01C965 07:C955: E5 BE     SBC ram_00BE_pos_Y_hi_shield_boomerang
C - - - - - 0x01C967 07:C957: 90 06     BCC bra_C95F
C - - - - - 0x01C969 07:C959: A5 67     LDA ram_0067_t68_final_direction
C - - - - - 0x01C96B 07:C95B: 09 02     ORA #$02
C - - - - - 0x01C96D 07:C95D: 85 67     STA ram_0067_t68_final_direction
bra_C95F:
C - - - - - 0x01C96F 07:C95F: A5 C1     LDA ram_00C1_pos_X_hi_shield_boomerang
C - - - - - 0x01C971 07:C961: 10 06     BPL bra_C969
C - - - - - 0x01C973 07:C963: A9 04     LDA #$04
C - - - - - 0x01C975 07:C965: 05 67     ORA ram_0067_t68_final_direction
C - - - - - 0x01C977 07:C967: 85 67     STA ram_0067_t68_final_direction
bra_C969:
C - - - - - 0x01C979 07:C969: 38        SEC
C - - - - - 0x01C97A 07:C96A: A5 C9     LDA ram_00C9_pos_X_fr_shield_aim
C - - - - - 0x01C97C 07:C96C: E5 C3     SBC ram_00C3_pos_X_fr_shield_boomerang
C - - - - - 0x01C97E 07:C96E: A5 C8     LDA ram_00C8_pos_X_lo_shield_aim
C - - - - - 0x01C980 07:C970: E5 C2     SBC ram_00C2_pos_X_lo_shield_boomerang
C - - - - - 0x01C982 07:C972: 85 69     STA ram_0069_t23_pos_X_lo
C - - - - - 0x01C984 07:C974: A5 C7     LDA ram_00C7_pos_X_hi_shield_aim
C - - - - - 0x01C986 07:C976: E5 C1     SBC ram_00C1_pos_X_hi_shield_boomerang
C - - - - - 0x01C988 07:C978: 90 06     BCC bra_C980
C - - - - - 0x01C98A 07:C97A: A5 67     LDA ram_0067_t68_final_direction
C - - - - - 0x01C98C 07:C97C: 09 04     ORA #$04
C - - - - - 0x01C98E 07:C97E: 85 67     STA ram_0067_t68_final_direction
bra_C980:
C - - - - - 0x01C990 07:C980: A5 BE     LDA ram_00BE_pos_Y_hi_shield_boomerang
C - - - - - 0x01C992 07:C982: 10 06     BPL bra_C98A
- - - - - - 0x01C994 07:C984: A9 02     LDA #$02
- - - - - - 0x01C996 07:C986: 05 67     ORA ram_0067_t68_final_direction
- - - - - - 0x01C998 07:C988: 85 67     STA ram_0067_t68_final_direction
bra_C98A:
C - - - - - 0x01C99A 07:C98A: A6 67     LDX ram_0067_t68_final_direction
C - - - - - 0x01C99C 07:C98C: BD 9A C9  LDA tbl_C99A_shield_boomerang_handler,X
C - - - - - 0x01C99F 07:C98F: 85 5B     STA ram_005B_t4D_jmp
C - - - - - 0x01C9A1 07:C991: BD 9B C9  LDA tbl_C99A_shield_boomerang_handler + $01,X
C - - - - - 0x01C9A4 07:C994: 85 5C     STA ram_005B_t4D_jmp + $01
C - - - - - 0x01C9A6 07:C996: 6C 5B 00  JMP (ram_005B_t4D_jmp)


; bzk garbage
- - - - - - 0x01C9A9 07:C999: 60        RTS



tbl_C99A_shield_boomerang_handler:
- D 2 - - - 0x01C9AA 07:C99A: 22 CA     .word ofs_016_shield_boomerang_CA22_00
- D 2 - - - 0x01C9AC 07:C99C: F5 C9     .word ofs_016_shield_boomerang_C9F5_02_left
- D 2 - - - 0x01C9AE 07:C99E: C8 C9     .word ofs_016_shield_boomerang_C9C8_04
- D 2 - - - 0x01C9B0 07:C9A0: A2 C9     .word ofs_016_shield_boomerang_C9A2_06_right



ofs_016_shield_boomerang_C9A2_06_right:
C - - J - - 0x01C9B2 07:C9A2: A5 68     LDA ram_0068_t45_pos_Y_lo
C - - - - - 0x01C9B4 07:C9A4: 29 F8     AND #$F8
C - - - - - 0x01C9B6 07:C9A6: F0 14     BEQ bra_C9BC
C - - - - - 0x01C9B8 07:C9A8: A5 69     LDA ram_0069_t23_pos_X_lo
C - - - - - 0x01C9BA 07:C9AA: 29 F8     AND #$F8
C - - - - - 0x01C9BC 07:C9AC: F0 11     BEQ bra_C9BF
C - - - - - 0x01C9BE 07:C9AE: 38        SEC
C - - - - - 0x01C9BF 07:C9AF: A5 68     LDA ram_0068_t45_pos_Y_lo
C - - - - - 0x01C9C1 07:C9B1: E5 69     SBC ram_0069_t23_pos_X_lo
C - - - - - 0x01C9C3 07:C9B3: 29 F8     AND #$F8
C - - - - - 0x01C9C5 07:C9B5: F0 0B     BEQ bra_C9C2
C - - - - - 0x01C9C7 07:C9B7: B0 0C     BCS bra_C9C5
C - - - - - 0x01C9C9 07:C9B9: A9 0B     LDA #$0B
C - - - - - 0x01C9CB 07:C9BB: 60        RTS
bra_C9BC:
C - - - - - 0x01C9CC 07:C9BC: A9 0C     LDA #$0C
C - - - - - 0x01C9CE 07:C9BE: 60        RTS
bra_C9BF:
C - - - - - 0x01C9CF 07:C9BF: A9 08     LDA #$08
C - - - - - 0x01C9D1 07:C9C1: 60        RTS
bra_C9C2:
C - - - - - 0x01C9D2 07:C9C2: A9 0A     LDA #$0A
C - - - - - 0x01C9D4 07:C9C4: 60        RTS
bra_C9C5:
C - - - - - 0x01C9D5 07:C9C5: A9 09     LDA #$09
C - - - - - 0x01C9D7 07:C9C7: 60        RTS



ofs_016_shield_boomerang_C9C8_04:
C - - J - - 0x01C9D8 07:C9C8: 18        CLC
C - - - - - 0x01C9D9 07:C9C9: A5 68     LDA ram_0068_t45_pos_Y_lo
C - - - - - 0x01C9DB 07:C9CB: 49 FF     EOR #$FF
C - - - - - 0x01C9DD 07:C9CD: 69 01     ADC #$01
C - - - - - 0x01C9DF 07:C9CF: 85 68     STA ram_0068_t24_pos_Y_lo_EOR
C - - - - - 0x01C9E1 07:C9D1: 29 F8     AND #$F8
C - - - - - 0x01C9E3 07:C9D3: F0 14     BEQ bra_C9E9
C - - - - - 0x01C9E5 07:C9D5: A5 69     LDA ram_0069_t23_pos_X_lo
C - - - - - 0x01C9E7 07:C9D7: 29 F8     AND #$F8
C - - - - - 0x01C9E9 07:C9D9: F0 11     BEQ bra_C9EC
C - - - - - 0x01C9EB 07:C9DB: 38        SEC
C - - - - - 0x01C9EC 07:C9DC: A5 68     LDA ram_0068_t24_pos_Y_lo_EOR
C - - - - - 0x01C9EE 07:C9DE: E5 69     SBC ram_0069_t23_pos_X_lo
C - - - - - 0x01C9F0 07:C9E0: 29 F8     AND #$F8
C - - - - - 0x01C9F2 07:C9E2: F0 0B     BEQ bra_C9EF
C - - - - - 0x01C9F4 07:C9E4: B0 0C     BCS bra_C9F2
C - - - - - 0x01C9F6 07:C9E6: A9 0D     LDA #$0D
C - - - - - 0x01C9F8 07:C9E8: 60        RTS
bra_C9E9:
C - - - - - 0x01C9F9 07:C9E9: A9 0C     LDA #$0C
C - - - - - 0x01C9FB 07:C9EB: 60        RTS
bra_C9EC:
C - - - - - 0x01C9FC 07:C9EC: A9 00     LDA #$00
C - - - - - 0x01C9FE 07:C9EE: 60        RTS
bra_C9EF:
C - - - - - 0x01C9FF 07:C9EF: A9 0E     LDA #$0E
C - - - - - 0x01CA01 07:C9F1: 60        RTS
bra_C9F2:
C - - - - - 0x01CA02 07:C9F2: A9 0F     LDA #$0F
C - - - - - 0x01CA04 07:C9F4: 60        RTS



ofs_016_shield_boomerang_C9F5_02_left:
C - - J - - 0x01CA05 07:C9F5: A5 68     LDA ram_0068_t45_pos_Y_lo
C - - - - - 0x01CA07 07:C9F7: 29 F8     AND #$F8
C - - - - - 0x01CA09 07:C9F9: F0 1B     BEQ bra_CA16
C - - - - - 0x01CA0B 07:C9FB: 18        CLC
C - - - - - 0x01CA0C 07:C9FC: A5 69     LDA ram_0069_t23_pos_X_lo
C - - - - - 0x01CA0E 07:C9FE: 49 FF     EOR #$FF
C - - - - - 0x01CA10 07:CA00: 69 01     ADC #$01
C - - - - - 0x01CA12 07:CA02: 85 69     STA ram_0069_t24_pos_X_lo_EOR
C - - - - - 0x01CA14 07:CA04: 29 F8     AND #$F8
C - - - - - 0x01CA16 07:CA06: F0 11     BEQ bra_CA19
C - - - - - 0x01CA18 07:CA08: 38        SEC
C - - - - - 0x01CA19 07:CA09: A5 68     LDA ram_0068_t45_pos_Y_lo
C - - - - - 0x01CA1B 07:CA0B: E5 69     SBC ram_0069_t24_pos_X_lo_EOR
C - - - - - 0x01CA1D 07:CA0D: 29 F8     AND #$F8
C - - - - - 0x01CA1F 07:CA0F: F0 0B     BEQ bra_CA1C
C - - - - - 0x01CA21 07:CA11: B0 0C     BCS bra_CA1F
C - - - - - 0x01CA23 07:CA13: A9 05     LDA #$05
C - - - - - 0x01CA25 07:CA15: 60        RTS
bra_CA16:
C - - - - - 0x01CA26 07:CA16: A9 04     LDA #$04
C - - - - - 0x01CA28 07:CA18: 60        RTS
bra_CA19:
C - - - - - 0x01CA29 07:CA19: A9 07     LDA #$07
C - - - - - 0x01CA2B 07:CA1B: 60        RTS
bra_CA1C:
C - - - - - 0x01CA2C 07:CA1C: A9 06     LDA #$06
C - - - - - 0x01CA2E 07:CA1E: 60        RTS
bra_CA1F:
C - - - - - 0x01CA2F 07:CA1F: A9 07     LDA #$07
C - - - - - 0x01CA31 07:CA21: 60        RTS



ofs_016_shield_boomerang_CA22_00:
C - - J - - 0x01CA32 07:CA22: 18        CLC
C - - - - - 0x01CA33 07:CA23: A5 68     LDA ram_0068_t45_pos_Y_lo
C - - - - - 0x01CA35 07:CA25: 49 FF     EOR #$FF
C - - - - - 0x01CA37 07:CA27: 69 01     ADC #$01
C - - - - - 0x01CA39 07:CA29: 85 68     STA ram_0068_t46_pos_Y_lo_EOR
C - - - - - 0x01CA3B 07:CA2B: 29 F8     AND #$F8
C - - - - - 0x01CA3D 07:CA2D: F0 1B     BEQ bra_CA4A
C - - - - - 0x01CA3F 07:CA2F: 18        CLC
C - - - - - 0x01CA40 07:CA30: A5 69     LDA ram_0069_t23_pos_X_lo
C - - - - - 0x01CA42 07:CA32: 49 FF     EOR #$FF
C - - - - - 0x01CA44 07:CA34: 69 01     ADC #$01
C - - - - - 0x01CA46 07:CA36: 85 69     STA ram_0069_t25_pos_X_lo_EOR
C - - - - - 0x01CA48 07:CA38: 29 F8     AND #$F8
C - - - - - 0x01CA4A 07:CA3A: F0 11     BEQ bra_CA4D
C - - - - - 0x01CA4C 07:CA3C: 38        SEC
C - - - - - 0x01CA4D 07:CA3D: A5 68     LDA ram_0068_t46_pos_Y_lo_EOR
C - - - - - 0x01CA4F 07:CA3F: E5 69     SBC ram_0069_t25_pos_X_lo_EOR
C - - - - - 0x01CA51 07:CA41: 29 F8     AND #$F8
C - - - - - 0x01CA53 07:CA43: F0 0B     BEQ bra_CA50
C - - - - - 0x01CA55 07:CA45: B0 0C     BCS bra_CA53
C - - - - - 0x01CA57 07:CA47: A9 03     LDA #$03
C - - - - - 0x01CA59 07:CA49: 60        RTS
bra_CA4A:
C - - - - - 0x01CA5A 07:CA4A: A9 04     LDA #$04
C - - - - - 0x01CA5C 07:CA4C: 60        RTS
bra_CA4D:
C - - - - - 0x01CA5D 07:CA4D: A9 00     LDA #$00
C - - - - - 0x01CA5F 07:CA4F: 60        RTS
bra_CA50:
C - - - - - 0x01CA60 07:CA50: A9 02     LDA #$02
C - - - - - 0x01CA62 07:CA52: 60        RTS
bra_CA53:
C - - - - - 0x01CA63 07:CA53: A9 01     LDA #$01
C - - - - - 0x01CA65 07:CA55: 60        RTS



sub_CA56:
loc_CA56:
; in
    ; ram_0067_t12_table_index
    ; ram_0068_t08
C D 2 - - - 0x01CA66 07:CA56: A5 9C     LDA ram_prg_bank_8000
C - - - - - 0x01CA68 07:CA58: 48        PHA
C - - - - - 0x01CA69 07:CA59: A9 02     LDA #con_prg_bank + $02
C - - - - - 0x01CA6B 07:CA5B: 85 9C     STA ram_prg_bank_8000
C - - - - - 0x01CA6D 07:CA5D: 20 41 DB  JSR sub_DB41_prg_bankswitch_8000
C - - - - - 0x01CA70 07:CA60: A5 67     LDA ram_0067_t12_table_index
C - - - - - 0x01CA72 07:CA62: 0A        ASL
C - - - - - 0x01CA73 07:CA63: AA        TAX
C - - - - - 0x01CA74 07:CA64: BD AD 98  LDA tbl_0x0058BD,X
C - - - - - 0x01CA77 07:CA67: 85 5B     STA ram_005B_t25_data
C - - - - - 0x01CA79 07:CA69: BD AE 98  LDA tbl_0x0058BD + $01,X
C - - - - - 0x01CA7C 07:CA6C: 85 5C     STA ram_005B_t25_data + $01
C - - - - - 0x01CA7E 07:CA6E: A5 68     LDA ram_0068_t08
C - - - - - 0x01CA80 07:CA70: 0A        ASL
C - - - - - 0x01CA81 07:CA71: A8        TAY
C - - - - - 0x01CA82 07:CA72: B1 5B     LDA (ram_005B_t25_data),Y
C - - - - - 0x01CA84 07:CA74: 85 67     STA ram_0067_t13
C - - - - - 0x01CA86 07:CA76: C8        INY
C - - - - - 0x01CA87 07:CA77: B1 5B     LDA (ram_005B_t25_data),Y
C - - - - - 0x01CA89 07:CA79: 85 68     STA ram_0068_t22
C - - - - - 0x01CA8B 07:CA7B: A9 00     LDA #$00
; bzk optimize, useless STA + STA
C - - - - - 0x01CA8D 07:CA7D: 85 69     STA ram_0069_tFF_useless
C - - - - - 0x01CA8F 07:CA7F: 85 6C     STA ram_006C_tFD_useless
; 
C - - - - - 0x01CA91 07:CA81: A5 67     LDA ram_0067_t13
C - - - - - 0x01CA93 07:CA83: 48        PHA ; 1
C - - - - - 0x01CA94 07:CA84: 48        PHA ; 2
C - - - - - 0x01CA95 07:CA85: 48        PHA ; 3
; bzk optimize, useless BPL + LDA + STA
C - - - - - 0x01CA96 07:CA86: 10 04     BPL bra_CA8C
C - - - - - 0x01CA98 07:CA88: A9 FF     LDA #$FF
C - - - - - 0x01CA9A 07:CA8A: 85 69     STA ram_0069_tFF_useless
; 
bra_CA8C:
C - - - - - 0x01CA9C 07:CA8C: 68        PLA ; 3
; * 10
C - - - - - 0x01CA9D 07:CA8D: 0A        ASL
C - - - - - 0x01CA9E 07:CA8E: 0A        ASL
C - - - - - 0x01CA9F 07:CA8F: 0A        ASL
C - - - - - 0x01CAA0 07:CA90: 0A        ASL
; 
C - - - - - 0x01CAA1 07:CA91: 85 6B     STA ram_006B_t13_spd_X_fr_bullet_bounce
C - - - - - 0x01CAA3 07:CA93: 68        PLA ; 2
; / 10
C - - - - - 0x01CAA4 07:CA94: 4A        LSR
C - - - - - 0x01CAA5 07:CA95: 4A        LSR
C - - - - - 0x01CAA6 07:CA96: 4A        LSR
C - - - - - 0x01CAA7 07:CA97: 4A        LSR
; 
C - - - - - 0x01CAA8 07:CA98: 85 6A     STA ram_006A_t06_spd_X_lo_bullet_bounce
C - - - - - 0x01CAAA 07:CA9A: 68        PLA ; 1
C - - - - - 0x01CAAB 07:CA9B: 10 06     BPL bra_CAA3
C - - - - - 0x01CAAD 07:CA9D: A9 F0     LDA #$F0
C - - - - - 0x01CAAF 07:CA9F: 05 6A     ORA ram_006A_t06_spd_X_lo_bullet_bounce
C - - - - - 0x01CAB1 07:CAA1: 85 6A     STA ram_006A_t06_spd_X_lo_bullet_bounce
bra_CAA3:
C - - - - - 0x01CAB3 07:CAA3: A5 68     LDA ram_0068_t22
C - - - - - 0x01CAB5 07:CAA5: 48        PHA ; 1
C - - - - - 0x01CAB6 07:CAA6: 48        PHA ; 2
C - - - - - 0x01CAB7 07:CAA7: 48        PHA ; 3
; bzk optimize, useless BPL + LDA + STA
C - - - - - 0x01CAB8 07:CAA8: 10 04     BPL bra_CAAE
C - - - - - 0x01CABA 07:CAAA: A9 FF     LDA #$FF
C - - - - - 0x01CABC 07:CAAC: 85 6C     STA ram_006C_tFC_useless
; 
bra_CAAE:
C - - - - - 0x01CABE 07:CAAE: 68        PLA ; 3
; * 10
C - - - - - 0x01CABF 07:CAAF: 0A        ASL
C - - - - - 0x01CAC0 07:CAB0: 0A        ASL
C - - - - - 0x01CAC1 07:CAB1: 0A        ASL
C - - - - - 0x01CAC2 07:CAB2: 0A        ASL
; 
C - - - - - 0x01CAC3 07:CAB3: 85 6E     STA ram_006E_t09_pos_Y_fr_bullet_bounce
C - - - - - 0x01CAC5 07:CAB5: 68        PLA ; 2
; / 10
C - - - - - 0x01CAC6 07:CAB6: 4A        LSR
C - - - - - 0x01CAC7 07:CAB7: 4A        LSR
C - - - - - 0x01CAC8 07:CAB8: 4A        LSR
C - - - - - 0x01CAC9 07:CAB9: 4A        LSR
; 
C - - - - - 0x01CACA 07:CABA: 85 6D     STA ram_006D_t09_spd_Y_lo_bullet_bounce
C - - - - - 0x01CACC 07:CABC: 68        PLA ; 1
C - - - - - 0x01CACD 07:CABD: 10 06     BPL bra_CAC5
C - - - - - 0x01CACF 07:CABF: A9 F0     LDA #$F0
C - - - - - 0x01CAD1 07:CAC1: 05 6D     ORA ram_006D_t09_spd_Y_lo_bullet_bounce
C - - - - - 0x01CAD3 07:CAC3: 85 6D     STA ram_006D_t09_spd_Y_lo_bullet_bounce
bra_CAC5:
C - - - - - 0x01CAD5 07:CAC5: 68        PLA
C - - - - - 0x01CAD6 07:CAC6: 85 9C     STA ram_prg_bank_8000
; bzk optimize, JMP
C - - - - - 0x01CAD8 07:CAC8: 20 41 DB  JSR sub_DB41_prg_bankswitch_8000
C - - - - - 0x01CADB 07:CACB: 60        RTS



sub_CACC:
loc_CACC:
C - - - - - 0x01CADC 07:CACC: A5 3C     LDA ram_city
C - - - - - 0x01CADE 07:CACE: C9 03     CMP #$03
C - - - - - 0x01CAE0 07:CAD0: F0 21     BEQ bra_CAF3
C - - - - - 0x01CAE2 07:CAD2: C9 01     CMP #$01
C - - - - - 0x01CAE4 07:CAD4: F0 21     BEQ bra_CAF7
C - - - - - 0x01CAE6 07:CAD6: A5 DB     LDA ram_00DB_flag
C - - - - - 0x01CAE8 07:CAD8: 30 1D     BMI bra_CAF7
C - - - - - 0x01CAEA 07:CADA: A5 D9     LDA ram_00D9_array_index
C - - - - - 0x01CAEC 07:CADC: F0 0E     BEQ bra_CAEC
C - - - - - 0x01CAEE 07:CADE: C9 03     CMP #$03
C - - - - - 0x01CAF0 07:CAE0: F0 0A     BEQ bra_CAEC
C - - - - - 0x01CAF2 07:CAE2: A5 3C     LDA ram_city
C - - - - - 0x01CAF4 07:CAE4: C9 02     CMP #$02
C - - - - - 0x01CAF6 07:CAE6: F0 0F     BEQ bra_CAF7
C - - - - - 0x01CAF8 07:CAE8: A9 2A     LDA #con_music_ambush
C - - - - - 0x01CAFA 07:CAEA: D0 11     BNE bra_CAFD    ; jmp
bra_CAEC:
C - - - - - 0x01CAFC 07:CAEC: A6 A8     LDX ram_plr_index
C - - - - - 0x01CAFE 07:CAEE: BD 02 CB  LDA tbl_CB02_player_music,X
C - - - - - 0x01CB01 07:CAF1: D0 0A     BNE bra_CAFD    ; jmp
bra_CAF3:
C - - - - - 0x01CB03 07:CAF3: A9 23     LDA #con_music_red_alert
C - - - - - 0x01CB05 07:CAF5: D0 06     BNE bra_CAFD    ; jmp
bra_CAF7:
C - - - - - 0x01CB07 07:CAF7: A5 E4     LDA ram_00E4_flag
C - - - - - 0x01CB09 07:CAF9: 30 F1     BMI bra_CAEC
C - - - - - 0x01CB0B 07:CAFB: A9 26     LDA #con_music_boss_fight
bra_CAFD:
C - - - - - 0x01CB0D 07:CAFD: 85 77     STA ram_0077_t03_sound_id
C - - - - - 0x01CB0F 07:CAFF: 4C 04 CB  JMP loc_CB04_play_sound



tbl_CB02_player_music:
- D 2 - - - 0x01CB12 07:CB02: 21        .byte con_music_ost_captain   ; 00 
- D 2 - - - 0x01CB13 07:CB03: 22        .byte con_music_ost_hawk   ; 01 



sub_CB04_play_sound:
loc_CB04_play_sound:
; bzk optimize, put STA 0077 here, delete everywhere before JSR's
C D 2 - - - 0x01CB14 07:CB04: 8A        TXA
C - - - - - 0x01CB15 07:CB05: 48        PHA
C - - - - - 0x01CB16 07:CB06: 98        TYA
C - - - - - 0x01CB17 07:CB07: 48        PHA
C - - - - - 0x01CB18 07:CB08: A5 9C     LDA ram_prg_bank_8000
C - - - - - 0x01CB1A 07:CB0A: 48        PHA
C - - - - - 0x01CB1B 07:CB0B: A9 07     LDA #con_prg_bank + $07
C - - - - - 0x01CB1D 07:CB0D: 85 9C     STA ram_prg_bank_8000
C - - - - - 0x01CB1F 07:CB0F: 20 41 DB  JSR sub_DB41_prg_bankswitch_8000
C - - - - - 0x01CB22 07:CB12: A5 77     LDA ram_0077_t03_sound_id
C - - - - - 0x01CB24 07:CB14: 20 03 80  JSR sub_0x00E013_play_sound
C - - - - - 0x01CB27 07:CB17: 68        PLA
C - - - - - 0x01CB28 07:CB18: 85 9C     STA ram_prg_bank_8000
C - - - - - 0x01CB2A 07:CB1A: 20 41 DB  JSR sub_DB41_prg_bankswitch_8000
C - - - - - 0x01CB2D 07:CB1D: 68        PLA
C - - - - - 0x01CB2E 07:CB1E: A8        TAY
C - - - - - 0x01CB2F 07:CB1F: 68        PLA
C - - - - - 0x01CB30 07:CB20: AA        TAX
C - - - - - 0x01CB31 07:CB21: 60        RTS



sub_CB22_disable_sound_engine:
C - - - - - 0x01CB32 07:CB22: A9 01     LDA #con_sfx_disable_se_1
C - - - - - 0x01CB34 07:CB24: 85 77     STA ram_0077_t03_sound_id
C - - - - - 0x01CB36 07:CB26: 20 04 CB  JSR sub_CB04_play_sound
C - - - - - 0x01CB39 07:CB29: A9 02     LDA #con_sfx_disable_se_2
C - - - - - 0x01CB3B 07:CB2B: 85 77     STA ram_0077_t03_sound_id
C - - - - - 0x01CB3D 07:CB2D: 4C 04 CB  JMP loc_CB04_play_sound



sub_CB30:
C - - - - - 0x01CB40 07:CB30: A5 9C     LDA ram_prg_bank_8000
C - - - - - 0x01CB42 07:CB32: 48        PHA
C - - - - - 0x01CB43 07:CB33: A9 09     LDA #con_prg_bank + $09
C - - - - - 0x01CB45 07:CB35: 85 9C     STA ram_prg_bank_8000
C - - - - - 0x01CB47 07:CB37: 20 41 DB  JSR sub_DB41_prg_bankswitch_8000
C - - - - - 0x01CB4A 07:CB3A: 20 A0 9A  JSR sub_0x013AB0
C - - - - - 0x01CB4D 07:CB3D: 68        PLA
C - - - - - 0x01CB4E 07:CB3E: 85 9C     STA ram_prg_bank_8000
; bzk optimize, JMP
C - - - - - 0x01CB50 07:CB40: 20 41 DB  JSR sub_DB41_prg_bankswitch_8000
bra_CB43_RTS:
C - - - - - 0x01CB53 07:CB43: 60        RTS



loc_CB44:
; in
    ; X = 
    ; Y = 
    ; ram_005D_t05_data
C D 2 - - - 0x01CB54 07:CB44: 86 75     STX ram_0075_t05_obj_index
C - - - - - 0x01CB56 07:CB46: 84 76     STY ram_obj_index
C - - - - - 0x01CB58 07:CB48: B1 5D     LDA (ram_005D_t05_data),Y
C - - - - - 0x01CB5A 07:CB4A: 9D 4A 04  STA ram_obj_id,X
C - - - - - 0x01CB5D 07:CB4D: 85 74     STA ram_0074_t02_obj_id
C - - - - - 0x01CB5F 07:CB4F: C9 41     CMP #con_enemy_id_41
C - - - - - 0x01CB61 07:CB51: D0 05     BNE bra_CB58
C - - - - - 0x01CB63 07:CB53: 20 5B CC  JSR sub_CC5B
C - - - - - 0x01CB66 07:CB56: 90 EB     BCC bra_CB43_RTS
bra_CB58:
C - - - - - 0x01CB68 07:CB58: A5 74     LDA ram_0074_t02_obj_id
C - - - - - 0x01CB6A 07:CB5A: C9 4C     CMP #$4C
C - - - - - 0x01CB6C 07:CB5C: 90 09     BCC bra_CB67
C - - - - - 0x01CB6E 07:CB5E: A5 D8     LDA ram_00D8
C - - - - - 0x01CB70 07:CB60: F0 05     BEQ bra_CB67
C - - - - - 0x01CB72 07:CB62: 20 BD CC  JSR sub_CCBD
C - - - - - 0x01CB75 07:CB65: 90 DC     BCC bra_CB43_RTS
bra_CB67:
C - - - - - 0x01CB77 07:CB67: A9 01     LDA #$01
C - - - - - 0x01CB79 07:CB69: 9D 4E 05  STA ram_054E_obj,X
C - - - - - 0x01CB7C 07:CB6C: A9 00     LDA #$00
C - - - - - 0x01CB7E 07:CB6E: 9D 5B 05  STA ram_055B_obj_anim_counter,X
C - - - - - 0x01CB81 07:CB71: 85 6B     STA ram_006B_t04_obj_flags
C - - - - - 0x01CB83 07:CB73: BD 4A 04  LDA ram_obj_id,X
C - - - - - 0x01CB86 07:CB76: C9 43     CMP #$43    ; con_enemy_id_43
C - - - - - 0x01CB88 07:CB78: 90 61     BCC bra_CBDB_00_42
C - - - - - 0x01CB8A 07:CB7A: C9 4C     CMP #$4C    ; con_enemy_id_4C
C - - - - - 0x01CB8C 07:CB7C: 90 07     BCC bra_CB85_43_4B
; 4C+
C - - - - - 0x01CB8E 07:CB7E: A9 08     LDA #$08
C - - - - - 0x01CB90 07:CB80: 85 6B     STA ram_006B_t04_obj_flags
C - - - - - 0x01CB92 07:CB82: 4C DB CB  JMP loc_CBDB
bra_CB85_43_4B:
C - - - - - 0x01CB95 07:CB85: A2 00     LDX #$00
bra_CB87_loop:
C - - - - - 0x01CB97 07:CB87: BD 4A 04  LDA ram_obj_id,X
C - - - - - 0x01CB9A 07:CB8A: C9 43     CMP #$43    ; con_enemy_id_43
C - - - - - 0x01CB9C 07:CB8C: 90 1C     BCC bra_CBAA
C - - - - - 0x01CB9E 07:CB8E: BD 3D 04  LDA ram_043A_obj_flags + $03,X
C - - - - - 0x01CBA1 07:CB91: 10 17     BPL bra_CBAA
C - - - - - 0x01CBA3 07:CB93: BD 4A 04  LDA ram_obj_id,X
C - - - - - 0x01CBA6 07:CB96: D1 5D     CMP (ram_005D_t05_data),Y
C - - - - - 0x01CBA8 07:CB98: D0 10     BNE bra_CBAA
C - - - - - 0x01CBAA 07:CB9A: 88        DEY
C - - - - - 0x01CBAB 07:CB9B: BD 5B 05  LDA ram_055B_obj_anim_counter,X
C - - - - - 0x01CBAE 07:CB9E: D1 5D     CMP (ram_005D_t05_data),Y
C - - - - - 0x01CBB0 07:CBA0: D0 08     BNE bra_CBAA
C - - - - - 0x01CBB2 07:CBA2: 88        DEY
C - - - - - 0x01CBB3 07:CBA3: BD 4E 05  LDA ram_054E_obj,X
C - - - - - 0x01CBB6 07:CBA6: D1 5D     CMP (ram_005D_t05_data),Y
C - - - - - 0x01CBB8 07:CBA8: F0 99     BEQ bra_CB43_RTS
bra_CBAA:
C - - - - - 0x01CBBA 07:CBAA: E8        INX
C - - - - - 0x01CBBB 07:CBAB: E0 04     CPX #$04
C - - - - - 0x01CBBD 07:CBAD: A4 76     LDY ram_obj_index
C - - - - - 0x01CBBF 07:CBAF: 90 D6     BCC bra_CB87_loop
C - - - - - 0x01CBC1 07:CBB1: A6 75     LDX ram_0075_t05_obj_index
C - - - - - 0x01CBC3 07:CBB3: A4 76     LDY ram_obj_index
C - - - - - 0x01CBC5 07:CBB5: 88        DEY
C - - - - - 0x01CBC6 07:CBB6: B1 5D     LDA (ram_005D_t05_data),Y
C - - - - - 0x01CBC8 07:CBB8: 9D 5B 05  STA ram_055B_obj_anim_counter,X
C - - - - - 0x01CBCB 07:CBBB: 88        DEY
C - - - - - 0x01CBCC 07:CBBC: B1 5D     LDA (ram_005D_t05_data),Y
C - - - - - 0x01CBCE 07:CBBE: 9D 4E 05  STA ram_054E_obj,X
C - - - - - 0x01CBD1 07:CBC1: A9 50     LDA #$40 + $10
C - - - - - 0x01CBD3 07:CBC3: 85 6B     STA ram_006B_t04_obj_flags
C - - - - - 0x01CBD5 07:CBC5: A9 00     LDA #$00
C - - - - - 0x01CBD7 07:CBC7: 9D 41 05  STA ram_0541_obj_flags,X
C - - - - - 0x01CBDA 07:CBCA: BD 8B 04  LDA ram_pos_Y_lo_obj + $03,X
C - - - - - 0x01CBDD 07:CBCD: 18        CLC
C - - - - - 0x01CBDE 07:CBCE: 69 08     ADC #< $0008
C - - - - - 0x01CBE0 07:CBD0: 9D 8B 04  STA ram_pos_Y_lo_obj + $03,X
C - - - - - 0x01CBE3 07:CBD3: BD 98 04  LDA ram_pos_Y_hi_obj + $03,X
C - - - - - 0x01CBE6 07:CBD6: 69 00     ADC #> $0008
C - - - - - 0x01CBE8 07:CBD8: 9D 98 04  STA ram_pos_Y_hi_obj + $03,X
bra_CBDB_00_42:
loc_CBDB:
C D 2 - - - 0x01CBEB 07:CBDB: A6 75     LDX ram_0075_t05_obj_index
sub_CBDD:
loc_CBDD:
; in
    ; ram_006B_t04_obj_flag
C D 2 - - - 0x01CBED 07:CBDD: A5 9C     LDA ram_prg_bank_8000
C - - - - - 0x01CBEF 07:CBDF: 48        PHA
C - - - - - 0x01CBF0 07:CBE0: A9 09     LDA #con_prg_bank + $09
C - - - - - 0x01CBF2 07:CBE2: 85 9C     STA ram_prg_bank_8000
C - - - - - 0x01CBF4 07:CBE4: 20 41 DB  JSR sub_DB41_prg_bankswitch_8000
; bzk optimize, LDY,X
C - - - - - 0x01CBF7 07:CBE7: BD 4A 04  LDA ram_obj_id,X
C - - - - - 0x01CBFA 07:CBEA: A8        TAY
C - - - - - 0x01CBFB 07:CBEB: B9 18 95  LDA tbl_0x013528,Y
C - - - - - 0x01CBFE 07:CBEE: 9D D9 04  STA ram_04D9_obj,X
C - - - - - 0x01CC01 07:CBF1: B9 89 94  LDA tbl_0x013499_table_index,Y
C - - - - - 0x01CC04 07:CBF4: 0A        ASL
C - - - - - 0x01CC05 07:CBF5: A8        TAY
C - - - - - 0x01CC06 07:CBF6: B9 D9 94  LDA tbl_0x0134E9,Y
C - - - - - 0x01CC09 07:CBF9: 85 5B     STA ram_005B_t24_data
C - - - - - 0x01CC0B 07:CBFB: B9 DA 94  LDA tbl_0x0134E9 + $01,Y
C - - - - - 0x01CC0E 07:CBFE: 85 5C     STA ram_005B_t24_data + $01
C - - - - - 0x01CC10 07:CC00: A4 D2     LDY ram_00D2_data_index
C - - - - - 0x01CC12 07:CC02: B1 5B     LDA (ram_005B_t24_data),Y
C - - - - - 0x01CC14 07:CC04: 9D 79 05  STA ram_obj_hp,X
C - - - - - 0x01CC17 07:CC07: 68        PLA
C - - - - - 0x01CC18 07:CC08: 85 9C     STA ram_prg_bank_8000
C - - - - - 0x01CC1A 07:CC0A: 20 41 DB  JSR sub_DB41_prg_bankswitch_8000
C - - - - - 0x01CC1D 07:CC0D: A9 00     LDA #$00
C - - - - - 0x01CC1F 07:CC0F: 9D 65 05  STA ram_0565_obj,X
C - - - - - 0x01CC22 07:CC12: 9D 0D 05  STA ram_spd_X_lo_obj,X
C - - - - - 0x01CC25 07:CC15: 9D 00 05  STA ram_spd_X_fr_obj,X
C - - - - - 0x01CC28 07:CC18: 9D 27 05  STA ram_spd_Y_lo_obj,X
C - - - - - 0x01CC2B 07:CC1B: 9D 1A 05  STA ram_spd_Y_fr_obj,X
C - - - - - 0x01CC2E 07:CC1E: 9D 57 04  STA ram_pos_X_fr_obj,X
C - - - - - 0x01CC31 07:CC21: 9D 7E 04  STA ram_pos_Y_fr_obj,X
C - - - - - 0x01CC34 07:CC24: 9D F3 04  STA ram_04F3_obj,X
C - - - - - 0x01CC37 07:CC27: A9 01     LDA #$01
C - - - - - 0x01CC39 07:CC29: 9D 83 05  STA ram_0583_obj,X
C - - - - - 0x01CC3C 07:CC2C: BD 41 05  LDA ram_0541_obj_flags,X
C - - - - - 0x01CC3F 07:CC2F: 29 01     AND #$01
C - - - - - 0x01CC41 07:CC31: 18        CLC
C - - - - - 0x01CC42 07:CC32: 69 01     ADC #$01
C - - - - - 0x01CC44 07:CC34: 6A        ROR
C - - - - - 0x01CC45 07:CC35: 6A        ROR
C - - - - - 0x01CC46 07:CC36: 6A        ROR
C - - - - - 0x01CC47 07:CC37: 9D 34 05  STA ram_0534_obj,X
C - - - - - 0x01CC4A 07:CC3A: A5 9D     LDA ram_prg_bank_A000
C - - - - - 0x01CC4C 07:CC3C: 48        PHA
C - - - - - 0x01CC4D 07:CC3D: A9 08     LDA #con_prg_bank + $08
C - - - - - 0x01CC4F 07:CC3F: 85 9D     STA ram_prg_bank_A000
C - - - - - 0x01CC51 07:CC41: 20 58 DB  JSR sub_DB58_prg_bankswitch_A000
C - - - - - 0x01CC54 07:CC44: 20 00 A0  JSR sub_0x010010
C - - - - - 0x01CC57 07:CC47: 68        PLA
C - - - - - 0x01CC58 07:CC48: 85 9D     STA ram_prg_bank_A000
C - - - - - 0x01CC5A 07:CC4A: 20 58 DB  JSR sub_DB58_prg_bankswitch_A000
C - - - - - 0x01CC5D 07:CC4D: A4 76     LDY ram_obj_index
C - - - - - 0x01CC5F 07:CC4F: A9 81     LDA #$80 + $01
C - - - - - 0x01CC61 07:CC51: 05 6B     ORA ram_006B_t04_obj_flags
C - - - - - 0x01CC63 07:CC53: 9D 3D 04  STA ram_043A_obj_flags + $03,X
C - - - - - 0x01CC66 07:CC56: E6 CA     INC ram_00CA_objects_counter
C - - - - - 0x01CC68 07:CC58: E6 CE     INC ram_all_objects_counter
C - - - - - 0x01CC6A 07:CC5A: 60        RTS



sub_CC5B:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x01CC6B 07:CC5B: A5 D8     LDA ram_00D8
C - - - - - 0x01CC6D 07:CC5D: 29 BF     AND #$40 ^ $FF
C - - - - - 0x01CC6F 07:CC5F: 85 D8     STA ram_00D8
C - - - - - 0x01CC71 07:CC61: 29 10     AND #$10
; / 08
C - - - - - 0x01CC73 07:CC63: 4A        LSR
C - - - - - 0x01CC74 07:CC64: 4A        LSR
C - - - - - 0x01CC75 07:CC65: 4A        LSR
; 
C - - - - - 0x01CC76 07:CC66: AA        TAX
C - - - - - 0x01CC77 07:CC67: BD 80 CC  LDA tbl_CC80,X
C - - - - - 0x01CC7A 07:CC6A: 85 5B     STA ram_005B_t23_data
C - - - - - 0x01CC7C 07:CC6C: BD 81 CC  LDA tbl_CC80 + $01,X
C - - - - - 0x01CC7F 07:CC6F: 85 5C     STA ram_005B_t23_data + $01
C - - - - - 0x01CC81 07:CC71: A4 72     LDY ram_0072_t12_data_index
C - - - - - 0x01CC83 07:CC73: A6 75     LDX ram_0075_t05_obj_index
C - - - - - 0x01CC85 07:CC75: B1 5B     LDA (ram_005B_t23_data),Y
C - - - - - 0x01CC87 07:CC77: 25 D8     AND ram_00D8
C - - - - - 0x01CC89 07:CC79: F0 03     BEQ bra_CC7E
C - - - - - 0x01CC8B 07:CC7B: 18        CLC
; bzk optimize, RTS
C - - - - - 0x01CC8C 07:CC7C: 90 01     BCC bra_CC7F_RTS    ; jmp
bra_CC7E:
C - - - - - 0x01CC8E 07:CC7E: 38        SEC
bra_CC7F_RTS:
C - - - - - 0x01CC8F 07:CC7F: 60        RTS



tbl_CC80:
- D 2 - - - 0x01CC90 07:CC80: 84 CC     .word off_CC84_00
- D 2 - - - 0x01CC92 07:CC82: A8 CC     .word off_CCA8_10



off_CC84_00:
- D 2 - I - 0x01CC94 07:CC84: 01        .byte $01   ; 00 
- D 2 - I - 0x01CC95 07:CC85: 01        .byte $01   ; 01 
- - - - - - 0x01CC96 07:CC86: 00        .byte $00   ; 02 
- - - - - - 0x01CC97 07:CC87: 01        .byte $01   ; 03 
- - - - - - 0x01CC98 07:CC88: 00        .byte $00   ; 04 
- - - - - - 0x01CC99 07:CC89: 00        .byte $00   ; 05 
- D 2 - I - 0x01CC9A 07:CC8A: 02        .byte $02   ; 06 
- D 2 - I - 0x01CC9B 07:CC8B: 01        .byte $01   ; 07 
- - - - - - 0x01CC9C 07:CC8C: 00        .byte $00   ; 08 
- - - - - - 0x01CC9D 07:CC8D: 00        .byte $00   ; 09 
- - - - - - 0x01CC9E 07:CC8E: 00        .byte $00   ; 0A 
- - - - - - 0x01CC9F 07:CC8F: 00        .byte $00   ; 0B 
- - - - - - 0x01CCA0 07:CC90: 00        .byte $00   ; 0C 
- - - - - - 0x01CCA1 07:CC91: 00        .byte $00   ; 0D 
- - - - - - 0x01CCA2 07:CC92: 00        .byte $00   ; 0E 
- - - - - - 0x01CCA3 07:CC93: 00        .byte $00   ; 0F 
- D 2 - I - 0x01CCA4 07:CC94: 02        .byte $02   ; 10 
- D 2 - I - 0x01CCA5 07:CC95: 04        .byte $04   ; 11 
- D 2 - I - 0x01CCA6 07:CC96: 02        .byte $02   ; 12 
- - - - - - 0x01CCA7 07:CC97: 04        .byte $04   ; 13 
- - - - - - 0x01CCA8 07:CC98: 00        .byte $00   ; 14 
- - - - - - 0x01CCA9 07:CC99: 00        .byte $00   ; 15 
- - - - - - 0x01CCAA 07:CC9A: 00        .byte $00   ; 16 
- D 2 - I - 0x01CCAB 07:CC9B: 08        .byte $08   ; 17 
- - - - - - 0x01CCAC 07:CC9C: 00        .byte $00   ; 18 
- - - - - - 0x01CCAD 07:CC9D: 00        .byte $00   ; 19 
- - - - - - 0x01CCAE 07:CC9E: 00        .byte $00   ; 1A 
- - - - - - 0x01CCAF 07:CC9F: 00        .byte $00   ; 1B 
- - - - - - 0x01CCB0 07:CCA0: 00        .byte $00   ; 1C 
- - - - - - 0x01CCB1 07:CCA1: 00        .byte $00   ; 1D 
- - - - - - 0x01CCB2 07:CCA2: 00        .byte $00   ; 1E 
- - - - - - 0x01CCB3 07:CCA3: 00        .byte $00   ; 1F 
- - - - - - 0x01CCB4 07:CCA4: 00        .byte $00   ; 20 
- - - - - - 0x01CCB5 07:CCA5: 00        .byte $00   ; 21 
- - - - - - 0x01CCB6 07:CCA6: 00        .byte $00   ; 22 
- - - - - - 0x01CCB7 07:CCA7: 01        .byte $01   ; 23 



off_CCA8_10:
- - - - - - 0x01CCB8 07:CCA8: 00        .byte $00   ; 00 
- D 2 - I - 0x01CCB9 07:CCA9: 01        .byte $01   ; 01 
- - - - - - 0x01CCBA 07:CCAA: 00        .byte $00   ; 02 
- D 2 - I - 0x01CCBB 07:CCAB: 02        .byte $02   ; 03 
- - - - - - 0x01CCBC 07:CCAC: 00        .byte $00   ; 04 
- - - - - - 0x01CCBD 07:CCAD: 00        .byte $00   ; 05 
- D 2 - I - 0x01CCBE 07:CCAE: 02        .byte $02   ; 06 
- D 2 - I - 0x01CCBF 07:CCAF: 04        .byte $04   ; 07 
- - - - - - 0x01CCC0 07:CCB0: 00        .byte $00   ; 08 
- - - - - - 0x01CCC1 07:CCB1: 00        .byte $00   ; 09 
- - - - - - 0x01CCC2 07:CCB2: 00        .byte $00   ; 0A 
- - - - - - 0x01CCC3 07:CCB3: 00        .byte $00   ; 0B 
- - - - - - 0x01CCC4 07:CCB4: 00        .byte $00   ; 0C 
- - - - - - 0x01CCC5 07:CCB5: 00        .byte $00   ; 0D 
- - - - - - 0x01CCC6 07:CCB6: 00        .byte $00   ; 0E 
- - - - - - 0x01CCC7 07:CCB7: 00        .byte $00   ; 0F 
- - - - - - 0x01CCC8 07:CCB8: 00        .byte $00   ; 10 
- - - - - - 0x01CCC9 07:CCB9: 00        .byte $00   ; 11 
- D 2 - I - 0x01CCCA 07:CCBA: 04        .byte $04   ; 12 
- - - - - - 0x01CCCB 07:CCBB: 01        .byte $01   ; 13 
- D 2 - I - 0x01CCCC 07:CCBC: 08        .byte $08   ; 14 



sub_CCBD:
C - - - - - 0x01CCCD 07:CCBD: BD 4A 04  LDA ram_obj_id,X
C - - - - - 0x01CCD0 07:CCC0: 38        SEC
C - - - - - 0x01CCD1 07:CCC1: E9 4C     SBC #$4C    ; con_enemy_id_4C
C - - - - - 0x01CCD3 07:CCC3: 85 6B     STA ram_006B_t18_counter
C - - - - - 0x01CCD5 07:CCC5: A9 01     LDA #$01
bra_CCC7_loop:
C - - - - - 0x01CCD7 07:CCC7: C6 6B     DEC ram_006B_t18_counter
C - - - - - 0x01CCD9 07:CCC9: 30 03     BMI bra_CCCE
C - - - - - 0x01CCDB 07:CCCB: 0A        ASL
C - - - - - 0x01CCDC 07:CCCC: D0 F9     BNE bra_CCC7_loop
bra_CCCE:
C - - - - - 0x01CCDE 07:CCCE: 25 D8     AND ram_00D8
C - - - - - 0x01CCE0 07:CCD0: F0 03     BEQ bra_CCD5
C - - - - - 0x01CCE2 07:CCD2: 18        CLC
; bzk optimize, RTS
C - - - - - 0x01CCE3 07:CCD3: 90 01     BCC bra_CCD6_RTS    ; jmp
bra_CCD5:
C - - - - - 0x01CCE5 07:CCD5: 38        SEC
bra_CCD6_RTS:
C - - - - - 0x01CCE6 07:CCD6: 60        RTS



loc_CCD7:
C D 2 - - - 0x01CCE7 07:CCD7: A5 9C     LDA ram_prg_bank_8000
C - - - - - 0x01CCE9 07:CCD9: 48        PHA
C - - - - - 0x01CCEA 07:CCDA: 20 F2 CC  JSR sub_CCF2
C - - - - - 0x01CCED 07:CCDD: B0 0D     BCS bra_CCEC
C - - - - - 0x01CCEF 07:CCDF: 20 D3 CD  JSR sub_CDD3
C - - - - - 0x01CCF2 07:CCE2: 20 F1 CD  JSR sub_CDF1
bra_CCE5:
C - - - - - 0x01CCF5 07:CCE5: 68        PLA
C - - - - - 0x01CCF6 07:CCE6: 85 9C     STA ram_prg_bank_8000
; bzk optimize, JMP
C - - - - - 0x01CCF8 07:CCE8: 20 41 DB  JSR sub_DB41_prg_bankswitch_8000
C - - - - - 0x01CCFB 07:CCEB: 60        RTS
bra_CCEC:
C - - - - - 0x01CCFC 07:CCEC: A9 00     LDA #$00
C - - - - - 0x01CCFE 07:CCEE: 85 BC     STA ram_00BC
C - - - - - 0x01CD00 07:CCF0: F0 F3     BEQ bra_CCE5    ; jmp



sub_CCF2:
; out
    ; C
        ; 0 = 
        ; 1 = 
    ; ram_005D_t18_data
C - - - - - 0x01CD02 07:CCF2: A5 B7     LDA ram_00B7_pos_X_lo
C - - - - - 0x01CD04 07:CCF4: 18        CLC
C - - - - - 0x01CD05 07:CCF5: 65 43     ADC ram_scroll_X_lo
C - - - - - 0x01CD07 07:CCF7: 85 67     STA ram_0067_t69
C - - - - - 0x01CD09 07:CCF9: A5 B8     LDA ram_00B8_pos_X_hi
C - - - - - 0x01CD0B 07:CCFB: 65 42     ADC ram_scroll_X_hi
C - - - - - 0x01CD0D 07:CCFD: 85 68     STA ram_0068_t47
C - - - - - 0x01CD0F 07:CCFF: 20 42 CD  JSR sub_CD42
C - - - - - 0x01CD12 07:CD02: A5 6A     LDA ram_006A_t18_hi
C - - - - - 0x01CD14 07:CD04: C5 98     CMP ram_0098_scroll_Y_hi
C - - - - - 0x01CD16 07:CD06: F0 02     BEQ bra_CD0A
C - - - - - 0x01CD18 07:CD08: B0 36     BCS bra_CD40
bra_CD0A:
C - - - - - 0x01CD1A 07:CD0A: A5 6A     LDA ram_006A_t18_hi
C - - - - - 0x01CD1C 07:CD0C: 29 0F     AND #$0F
; * 10
C - - - - - 0x01CD1E 07:CD0E: 0A        ASL
C - - - - - 0x01CD1F 07:CD0F: 0A        ASL
C - - - - - 0x01CD20 07:CD10: 0A        ASL
C - - - - - 0x01CD21 07:CD11: 0A        ASL
; 
C - - - - - 0x01CD22 07:CD12: 85 6B     STA ram_006B_t19
C - - - - - 0x01CD24 07:CD14: A5 68     LDA ram_0068_t47
C - - - - - 0x01CD26 07:CD16: 29 0F     AND #$0F
C - - - - - 0x01CD28 07:CD18: 65 6B     ADC ram_006B_t19
C - - - - - 0x01CD2A 07:CD1A: 85 6B     STA ram_006B_t20_data_index
C - - - - - 0x01CD2C 07:CD1C: A9 04     LDA #con_prg_bank + $04
C - - - - - 0x01CD2E 07:CD1E: 85 9C     STA ram_prg_bank_8000
C - - - - - 0x01CD30 07:CD20: 20 41 DB  JSR sub_DB41_prg_bankswitch_8000
C - - - - - 0x01CD33 07:CD23: A5 3C     LDA ram_city
C - - - - - 0x01CD35 07:CD25: 0A        ASL
C - - - - - 0x01CD36 07:CD26: AA        TAX
C - - - - - 0x01CD37 07:CD27: BD 00 80  LDA tbl_0x008010_city_data,X
C - - - - - 0x01CD3A 07:CD2A: 85 5B     STA ram_005B_t22_data
C - - - - - 0x01CD3C 07:CD2C: BD 01 80  LDA tbl_0x008010_city_data + $01,X
C - - - - - 0x01CD3F 07:CD2F: 85 5C     STA ram_005B_t22_data + $01
C - - - - - 0x01CD41 07:CD31: A5 6B     LDA ram_006B_t20_data_index
C - - - - - 0x01CD43 07:CD33: 0A        ASL
C - - - - - 0x01CD44 07:CD34: A8        TAY
C - - - - - 0x01CD45 07:CD35: B1 5B     LDA (ram_005B_t22_data),Y
C - - - - - 0x01CD47 07:CD37: 85 5D     STA ram_005D_t18_data
C - - - - - 0x01CD49 07:CD39: C8        INY
C - - - - - 0x01CD4A 07:CD3A: B1 5B     LDA (ram_005B_t22_data),Y
C - - - - - 0x01CD4C 07:CD3C: 85 5E     STA ram_005D_t18_data + $01
C - - - - - 0x01CD4E 07:CD3E: 18        CLC
C - - - - - 0x01CD4F 07:CD3F: 60        RTS
bra_CD40:
C - - - - - 0x01CD50 07:CD40: 38        SEC
C - - - - - 0x01CD51 07:CD41: 60        RTS



sub_CD42:
; out
    ; ram_006A_t18_hi
C - - - - - 0x01CD52 07:CD42: A5 BA     LDA ram_00BA_pos_Y_hi
C - - - - - 0x01CD54 07:CD44: F0 06     BEQ bra_CD4C
C - - - - - 0x01CD56 07:CD46: 30 12     BMI bra_CD5A
C - - - - - 0x01CD58 07:CD48: A2 04     LDX #$04
C - - - - - 0x01CD5A 07:CD4A: D0 10     BNE bra_CD5C    ; jmp
bra_CD4C:
C - - - - - 0x01CD5C 07:CD4C: A5 B9     LDA ram_00B9_pos_Y_lo
C - - - - - 0x01CD5E 07:CD4E: C9 F0     CMP #$F0
C - - - - - 0x01CD60 07:CD50: 90 04     BCC bra_CD56
C - - - - - 0x01CD62 07:CD52: A2 04     LDX #$04
C - - - - - 0x01CD64 07:CD54: D0 06     BNE bra_CD5C    ; jmp
bra_CD56:
C - - - - - 0x01CD66 07:CD56: A2 00     LDX #$00
C - - - - - 0x01CD68 07:CD58: F0 02     BEQ bra_CD5C    ; jmp
bra_CD5A:
C - - - - - 0x01CD6A 07:CD5A: A2 02     LDX #$02
bra_CD5C:
C - - - - - 0x01CD6C 07:CD5C: BD 69 CD  LDA tbl_CD69,X
C - - - - - 0x01CD6F 07:CD5F: 85 5B     STA ram_005B_t4C_jmp
C - - - - - 0x01CD71 07:CD61: BD 6A CD  LDA tbl_CD69 + $01,X
C - - - - - 0x01CD74 07:CD64: 85 5C     STA ram_005B_t4C_jmp + $01
C - - - - - 0x01CD76 07:CD66: 6C 5B 00  JMP (ram_005B_t4C_jmp)



tbl_CD69:
- D 2 - - - 0x01CD79 07:CD69: 6F CD     .word ofs_015_CD6F_00
- D 2 - - - 0x01CD7B 07:CD6B: 99 CD     .word ofs_015_CD99_02
- D 2 - - - 0x01CD7D 07:CD6D: B2 CD     .word ofs_015_CDB2_04



ofs_015_CD6F_00:
C - - J - - 0x01CD7F 07:CD6F: A5 B9     LDA ram_00B9_pos_Y_lo
C - - - - - 0x01CD81 07:CD71: 18        CLC
C - - - - - 0x01CD82 07:CD72: 65 40     ADC ram_scroll_Y_lo
C - - - - - 0x01CD84 07:CD74: 85 69     STA ram_0069_t26
C - - - - - 0x01CD86 07:CD76: B0 09     BCS bra_CD81
C - - - - - 0x01CD88 07:CD78: C9 F0     CMP #$F0
C - - - - - 0x01CD8A 07:CD7A: B0 04     BCS bra_CD80
C - - - - - 0x01CD8C 07:CD7C: A9 00     LDA #$00
C - - - - - 0x01CD8E 07:CD7E: F0 03     BEQ bra_CD83    ; jmp
bra_CD80:
C - - - - - 0x01CD90 07:CD80: 18        CLC
bra_CD81:
C - - - - - 0x01CD91 07:CD81: A9 10     LDA #$10
bra_CD83:
C - - - - - 0x01CD93 07:CD83: 85 6B     STA ram_006B_t09_lo
C - - - - - 0x01CD95 07:CD85: A5 BA     LDA ram_00BA_pos_Y_hi
C - - - - - 0x01CD97 07:CD87: 65 3F     ADC ram_scroll_Y_hi
C - - - - - 0x01CD99 07:CD89: 85 6A     STA ram_006A_t21_hi
C - - - - - 0x01CD9B 07:CD8B: 18        CLC
C - - - - - 0x01CD9C 07:CD8C: A5 6B     LDA ram_006B_t09_lo
C - - - - - 0x01CD9E 07:CD8E: 65 69     ADC ram_0069_t26
C - - - - - 0x01CDA0 07:CD90: 85 69     STA ram_0069_t27_lo
C - - - - - 0x01CDA2 07:CD92: A9 00     LDA #$00
C - - - - - 0x01CDA4 07:CD94: 65 6A     ADC ram_006A_t21_hi
C - - - - - 0x01CDA6 07:CD96: 85 6A     STA ram_006A_t18_hi
C - - - - - 0x01CDA8 07:CD98: 60        RTS



ofs_015_CD99_02:
C - - J - - 0x01CDA9 07:CD99: A5 B9     LDA ram_00B9_pos_Y_lo
C - - - - - 0x01CDAB 07:CD9B: 18        CLC
C - - - - - 0x01CDAC 07:CD9C: 65 40     ADC ram_scroll_Y_lo
C - - - - - 0x01CDAE 07:CD9E: 85 69     STA ram_0069_t27_lo
C - - - - - 0x01CDB0 07:CDA0: A5 BA     LDA ram_00BA_pos_Y_hi
C - - - - - 0x01CDB2 07:CDA2: 65 3F     ADC ram_scroll_Y_hi
C - - - - - 0x01CDB4 07:CDA4: 85 6A     STA ram_006A_t18_hi
C - - - - - 0x01CDB6 07:CDA6: C5 3F     CMP ram_scroll_Y_hi
C - - - - - 0x01CDB8 07:CDA8: B0 07     BCS bra_CDB1_RTS
C - - - - - 0x01CDBA 07:CDAA: A5 69     LDA ram_0069_t27_lo
C - - - - - 0x01CDBC 07:CDAC: 38        SEC
C - - - - - 0x01CDBD 07:CDAD: E9 10     SBC #$10
C - - - - - 0x01CDBF 07:CDAF: 85 69     STA ram_0069_t27_lo
bra_CDB1_RTS:
C - - - - - 0x01CDC1 07:CDB1: 60        RTS



ofs_015_CDB2_04:
C - - J - - 0x01CDC2 07:CDB2: A5 B9     LDA ram_00B9_pos_Y_lo
C - - - - - 0x01CDC4 07:CDB4: 18        CLC
C - - - - - 0x01CDC5 07:CDB5: 65 40     ADC ram_scroll_Y_lo
C - - - - - 0x01CDC7 07:CDB7: 85 69     STA ram_0069_t27_lo
C - - - - - 0x01CDC9 07:CDB9: A5 BA     LDA ram_00BA_pos_Y_hi
C - - - - - 0x01CDCB 07:CDBB: 65 3F     ADC ram_scroll_Y_hi
C - - - - - 0x01CDCD 07:CDBD: 85 6A     STA ram_006A_t18_hi
bra_CDBF_loop:
C - - - - - 0x01CDCF 07:CDBF: A5 69     LDA ram_0069_t27_lo
C - - - - - 0x01CDD1 07:CDC1: 18        CLC
C - - - - - 0x01CDD2 07:CDC2: 69 10     ADC #< $0010
C - - - - - 0x01CDD4 07:CDC4: 85 69     STA ram_0069_t27_lo
C - - - - - 0x01CDD6 07:CDC6: A5 6A     LDA ram_006A_t18_hi
C - - - - - 0x01CDD8 07:CDC8: 69 00     ADC #> $0010
C - - - - - 0x01CDDA 07:CDCA: 85 6A     STA ram_006A_t18_hi
C - - - - - 0x01CDDC 07:CDCC: A5 69     LDA ram_0069_t27_lo
C - - - - - 0x01CDDE 07:CDCE: C9 F0     CMP #$F0
C - - - - - 0x01CDE0 07:CDD0: B0 ED     BCS bra_CDBF_loop
C - - - - - 0x01CDE2 07:CDD2: 60        RTS



sub_CDD3:
; in
    ; ram_0067_t69
    ; ram_0069_t27_lo
C - - - - - 0x01CDE3 07:CDD3: A5 67     LDA ram_0067_t69
; / 10
C - - - - - 0x01CDE5 07:CDD5: 4A        LSR
C - - - - - 0x01CDE6 07:CDD6: 4A        LSR
C - - - - - 0x01CDE7 07:CDD7: 4A        LSR
C - - - - - 0x01CDE8 07:CDD8: 4A        LSR
; 
C - - - - - 0x01CDE9 07:CDD9: 85 6B     STA ram_006B_t21
C - - - - - 0x01CDEB 07:CDDB: A5 69     LDA ram_0069_t27_lo
C - - - - - 0x01CDED 07:CDDD: 29 F0     AND #$F0
C - - - - - 0x01CDEF 07:CDDF: 18        CLC
C - - - - - 0x01CDF0 07:CDE0: 65 6B     ADC ram_006B_t21
; bzk optimize, useless STA
C - - - - - 0x01CDF2 07:CDE2: 85 6B     STA ram_006B_tFF_useless
; 
C - - - - - 0x01CDF4 07:CDE4: A8        TAY
C - - - - - 0x01CDF5 07:CDE5: A5 4C     LDA ram_prg_bank_city
C - - - - - 0x01CDF7 07:CDE7: 85 9C     STA ram_prg_bank_8000
C - - - - - 0x01CDF9 07:CDE9: 20 41 DB  JSR sub_DB41_prg_bankswitch_8000
C - - - - - 0x01CDFC 07:CDEC: B1 5D     LDA (ram_005D_t18_data),Y
C - - - - - 0x01CDFE 07:CDEE: 85 BB     STA ram_00BB_data_index
C - - - - - 0x01CE00 07:CDF0: 60        RTS



sub_CDF1:
C - - - - - 0x01CE01 07:CDF1: A5 BC     LDA ram_00BC
; bzk optimize, there are probably no such values
C - - - - - 0x01CE03 07:CDF3: 29 C0     AND #$C0
C - - - - - 0x01CE05 07:CDF5: 85 BC     STA ram_00BC
C - - - - - 0x01CE07 07:CDF7: A9 04     LDA #con_prg_bank + $04
C - - - - - 0x01CE09 07:CDF9: 85 9C     STA ram_prg_bank_8000
C - - - - - 0x01CE0B 07:CDFB: 20 41 DB  JSR sub_DB41_prg_bankswitch_8000
C - - - - - 0x01CE0E 07:CDFE: A5 3C     LDA ram_city
C - - - - - 0x01CE10 07:CE00: 0A        ASL
C - - - - - 0x01CE11 07:CE01: AA        TAX
C - - - - - 0x01CE12 07:CE02: BD 54 87  LDA tbl_0x008764,X
C - - - - - 0x01CE15 07:CE05: 85 5B     STA ram_005B_t21_data
C - - - - - 0x01CE17 07:CE07: BD 55 87  LDA tbl_0x008764 + $01,X
C - - - - - 0x01CE1A 07:CE0A: 85 5C     STA ram_005B_t21_data + $01
C - - - - - 0x01CE1C 07:CE0C: A9 02     LDA #con_prg_bank + $02
C - - - - - 0x01CE1E 07:CE0E: 85 9C     STA ram_prg_bank_8000
C - - - - - 0x01CE20 07:CE10: 20 41 DB  JSR sub_DB41_prg_bankswitch_8000
C - - - - - 0x01CE23 07:CE13: A4 BB     LDY ram_00BB_data_index
C - - - - - 0x01CE25 07:CE15: B1 5B     LDA (ram_005B_t21_data),Y
; / 04
C - - - - - 0x01CE27 07:CE17: 4A        LSR
C - - - - - 0x01CE28 07:CE18: 4A        LSR
; 
C - - - - - 0x01CE29 07:CE19: 05 BC     ORA ram_00BC
C - - - - - 0x01CE2B 07:CE1B: 85 BC     STA ram_00BC
C - - - - - 0x01CE2D 07:CE1D: 60        RTS



loc_CE1E:
C D 2 - - - 0x01CE2E 07:CE1E: A5 9C     LDA ram_prg_bank_8000
C - - - - - 0x01CE30 07:CE20: 48        PHA
C - - - - - 0x01CE31 07:CE21: 20 F2 CC  JSR sub_CCF2
C - - - - - 0x01CE34 07:CE24: B0 0D     BCS bra_CE33
C - - - - - 0x01CE36 07:CE26: 20 D3 CD  JSR sub_CDD3
C - - - - - 0x01CE39 07:CE29: 20 39 CE  JSR sub_CE39
bra_CE2C:
C - - - - - 0x01CE3C 07:CE2C: 68        PLA
C - - - - - 0x01CE3D 07:CE2D: 85 9C     STA ram_prg_bank_8000
; bzk optimize, JMP
C - - - - - 0x01CE3F 07:CE2F: 20 41 DB  JSR sub_DB41_prg_bankswitch_8000
C - - - - - 0x01CE42 07:CE32: 60        RTS
bra_CE33:
- - - - - - 0x01CE43 07:CE33: A9 00     LDA #$00
- - - - - - 0x01CE45 07:CE35: 85 BD     STA ram_00BD_flag
- - - - - - 0x01CE47 07:CE37: F0 F3     BEQ bra_CE2C    ; jmp



sub_CE39:
C - - - - - 0x01CE49 07:CE39: A6 3C     LDX ram_city
C - - - - - 0x01CE4B 07:CE3B: BD 63 CE  LDA tbl_CE63,X
C - - - - - 0x01CE4E 07:CE3E: F0 13     BEQ bra_CE53
C - - - - - 0x01CE50 07:CE40: 0A        ASL
C - - - - - 0x01CE51 07:CE41: AA        TAX
C - - - - - 0x01CE52 07:CE42: A0 02     LDY #$02
bra_CE44_loop:
C - - - - - 0x01CE54 07:CE44: BD 8A CE  LDA tbl_CE8C - $02,X
C - - - - - 0x01CE57 07:CE47: C9 FF     CMP #$FF
C - - - - - 0x01CE59 07:CE49: F0 08     BEQ bra_CE53
C - - - - - 0x01CE5B 07:CE4B: C5 BB     CMP ram_00BB_data_index
C - - - - - 0x01CE5D 07:CE4D: F0 0B     BEQ bra_CE5A
C - - - - - 0x01CE5F 07:CE4F: E8        INX
C - - - - - 0x01CE60 07:CE50: 88        DEY
C - - - - - 0x01CE61 07:CE51: D0 F1     BNE bra_CE44_loop
bra_CE53:
; bzk optimize, replace LDA + AND with LDA 00
C - - - - - 0x01CE63 07:CE53: A5 BD     LDA ram_00BD_flag
C - - - - - 0x01CE65 07:CE55: 29 FE     AND #$01 ^ $FF
C - - - - - 0x01CE67 07:CE57: 85 BD     STA ram_00BD_flag
C - - - - - 0x01CE69 07:CE59: 60        RTS
bra_CE5A:
C - - - - - 0x01CE6A 07:CE5A: A5 BD     LDA ram_00BD_flag
; bzk optimize, useless AND,
; replace LDA + AND + ORA with LDA 01
C - - - - - 0x01CE6C 07:CE5C: 29 FE     AND #$01 ^ $FF
C - - - - - 0x01CE6E 07:CE5E: 09 01     ORA #$01
C - - - - - 0x01CE70 07:CE60: 85 BD     STA ram_00BD_flag
C - - - - - 0x01CE72 07:CE62: 60        RTS



tbl_CE63:
- D 2 - - - 0x01CE73 07:CE63: 00        .byte $00   ; 00 
- - - - - - 0x01CE74 07:CE64: 00        .byte $00   ; 01 
- - - - - - 0x01CE75 07:CE65: 00        .byte $00   ; 02 
- - - - - - 0x01CE76 07:CE66: 00        .byte $00   ; 03 
- D 2 - - - 0x01CE77 07:CE67: 01        .byte $01   ; 04 
- D 2 - - - 0x01CE78 07:CE68: 00        .byte $00   ; 05 
- D 2 - - - 0x01CE79 07:CE69: 02        .byte $02   ; 06 
- D 2 - - - 0x01CE7A 07:CE6A: 02        .byte $02   ; 07 
- D 2 - - - 0x01CE7B 07:CE6B: 01        .byte $01   ; 08 
- D 2 - - - 0x01CE7C 07:CE6C: 00        .byte $00   ; 09 
- D 2 - - - 0x01CE7D 07:CE6D: 00        .byte $00   ; 0A 
- D 2 - - - 0x01CE7E 07:CE6E: 02        .byte $02   ; 0B 
- D 2 - - - 0x01CE7F 07:CE6F: 02        .byte $02   ; 0C 
- - - - - - 0x01CE80 07:CE70: 00        .byte $00   ; 0D 
- - - - - - 0x01CE81 07:CE71: 02        .byte $02   ; 0E 
- D 2 - - - 0x01CE82 07:CE72: 01        .byte $01   ; 0F 
- - - - - - 0x01CE83 07:CE73: 00        .byte $00   ; 10 
- D 2 - - - 0x01CE84 07:CE74: 00        .byte $00   ; 11 
- - - - - - 0x01CE85 07:CE75: 02        .byte $02   ; 12 
- D 2 - - - 0x01CE86 07:CE76: 02        .byte $02   ; 13 
- D 2 - - - 0x01CE87 07:CE77: 02        .byte $02   ; 14 
- D 2 - - - 0x01CE88 07:CE78: 02        .byte $02   ; 15 
- D 2 - - - 0x01CE89 07:CE79: 02        .byte $02   ; 16 
- D 2 - - - 0x01CE8A 07:CE7A: 00        .byte $00   ; 17 
- D 2 - - - 0x01CE8B 07:CE7B: 00        .byte $00   ; 18 
- - - - - - 0x01CE8C 07:CE7C: 00        .byte $00   ; 19 
- D 2 - - - 0x01CE8D 07:CE7D: 00        .byte $00   ; 1A 
- D 2 - - - 0x01CE8E 07:CE7E: 00        .byte $00   ; 1B 
- D 2 - - - 0x01CE8F 07:CE7F: 02        .byte $02   ; 1C 
- - - - - - 0x01CE90 07:CE80: 00        .byte $00   ; 1D 
- D 2 - - - 0x01CE91 07:CE81: 02        .byte $02   ; 1E 
- D 2 - - - 0x01CE92 07:CE82: 02        .byte $02   ; 1F 
- D 2 - - - 0x01CE93 07:CE83: 02        .byte $02   ; 20 
- D 2 - - - 0x01CE94 07:CE84: 02        .byte $02   ; 21 
- D 2 - - - 0x01CE95 07:CE85: 02        .byte $02   ; 22 
- D 2 - - - 0x01CE96 07:CE86: 00        .byte $00   ; 23 
- - - - - - 0x01CE97 07:CE87: 00        .byte $00   ; 24 
- D 2 - - - 0x01CE98 07:CE88: 00        .byte $00   ; 25 
- D 2 - - - 0x01CE99 07:CE89: 00        .byte $00   ; 26 


; bzk garbage
- - - - - - 0x01CE9A 07:CE8A: FF        .byte $FF   ; 
- - - - - - 0x01CE9B 07:CE8B: FF        .byte $FF   ; 


tbl_CE8C:
; 01 
- D 2 - - - 0x01CE9C 07:CE8C: 8A        .byte $8A   ; 
- D 2 - - - 0x01CE9D 07:CE8D: 8C        .byte $8C   ; 
; 02 
- D 2 - - - 0x01CE9E 07:CE8E: 54        .byte $54   ; 
- D 2 - - - 0x01CE9F 07:CE8F: FF        .byte $FF   ; 


loc_CE90:
C D 2 - - - 0x01CEA0 07:CE90: 20 F2 CC  JSR sub_CCF2
C - - - - - 0x01CEA3 07:CE93: B0 0D     BCS bra_CEA2
C - - - - - 0x01CEA5 07:CE95: A5 6B     LDA ram_006B_t20_data_index
C - - - - - 0x01CEA7 07:CE97: 85 6C     STA ram_006C_t03_city_sector
C - - - - - 0x01CEA9 07:CE99: 20 D3 CD  JSR sub_CDD3
C - - - - - 0x01CEAC 07:CE9C: 84 6D     STY ram_006D_t03
; bzk optimize, JMP
C - - - - - 0x01CEAE 07:CE9E: 20 A7 CE  JSR sub_CEA7
C - - - - - 0x01CEB1 07:CEA1: 60        RTS
bra_CEA2:
C - - - - - 0x01CEB2 07:CEA2: A9 00     LDA #$00
C - - - - - 0x01CEB4 07:CEA4: 85 6E     STA ram_006E_t01
C - - - - - 0x01CEB6 07:CEA6: 60        RTS



sub_CEA7:
C - - - - - 0x01CEB7 07:CEA7: A9 00     LDA #$00
C - - - - - 0x01CEB9 07:CEA9: 85 6E     STA ram_006E_t01
C - - - - - 0x01CEBB 07:CEAB: A6 3C     LDX ram_city
C - - - - - 0x01CEBD 07:CEAD: BD D4 CE  LDA tbl_CED4_table_index,X
C - - - - - 0x01CEC0 07:CEB0: 30 21     BMI bra_CED3_RTS
C - - - - - 0x01CEC2 07:CEB2: 0A        ASL
C - - - - - 0x01CEC3 07:CEB3: AA        TAX
C - - - - - 0x01CEC4 07:CEB4: BD FB CE  LDA tbl_CEFB,X
C - - - - - 0x01CEC7 07:CEB7: 85 5B     STA ram_005B_t20_data
C - - - - - 0x01CEC9 07:CEB9: BD FC CE  LDA tbl_CEFB + $01,X
C - - - - - 0x01CECC 07:CEBC: 85 5C     STA ram_005B_t20_data + $01
C - - - - - 0x01CECE 07:CEBE: A0 00     LDY #$00
bra_CEC0_loop:
C - - - - - 0x01CED0 07:CEC0: B1 5B     LDA (ram_005B_t20_data),Y
C - - - - - 0x01CED2 07:CEC2: C9 FF     CMP #$FF
C - - - - - 0x01CED4 07:CEC4: F0 0D     BEQ bra_CED3_RTS
C - - - - - 0x01CED6 07:CEC6: C5 BB     CMP ram_00BB_data_index
C - - - - - 0x01CED8 07:CEC8: F0 04     BEQ bra_CECE
C - - - - - 0x01CEDA 07:CECA: C8        INY
C - - - - - 0x01CEDB 07:CECB: C8        INY
C - - - - - 0x01CEDC 07:CECC: D0 F2     BNE bra_CEC0_loop    ; jmp
bra_CECE:
C - - - - - 0x01CEDE 07:CECE: C8        INY
C - - - - - 0x01CEDF 07:CECF: B1 5B     LDA (ram_005B_t20_data),Y
C - - - - - 0x01CEE1 07:CED1: 85 6E     STA ram_006E_t01
bra_CED3_RTS:
C - - - - - 0x01CEE3 07:CED3: 60        RTS



tbl_CED4_table_index:
- D 2 - - - 0x01CEE4 07:CED4: 00        .byte $00   ; 00 
- D 2 - - - 0x01CEE5 07:CED5: FF        .byte $FF   ; 01 
- D 2 - - - 0x01CEE6 07:CED6: 03        .byte $03   ; 02 
- D 2 - - - 0x01CEE7 07:CED7: FF        .byte $FF   ; 03 
- D 2 - - - 0x01CEE8 07:CED8: 01        .byte $01   ; 04 
- D 2 - - - 0x01CEE9 07:CED9: 04        .byte $04   ; 05 
- D 2 - - - 0x01CEEA 07:CEDA: 02        .byte $02   ; 06 
- D 2 - - - 0x01CEEB 07:CEDB: 02        .byte $02   ; 07 
- D 2 - - - 0x01CEEC 07:CEDC: 01        .byte $01   ; 08 
- D 2 - - - 0x01CEED 07:CEDD: 04        .byte $04   ; 09 
- D 2 - - - 0x01CEEE 07:CEDE: 01        .byte $01   ; 0A 
- D 2 - - - 0x01CEEF 07:CEDF: 02        .byte $02   ; 0B 
- D 2 - - - 0x01CEF0 07:CEE0: 02        .byte $02   ; 0C 
- D 2 - - - 0x01CEF1 07:CEE1: 01        .byte $01   ; 0D 
- D 2 - - - 0x01CEF2 07:CEE2: 02        .byte $02   ; 0E 
- D 2 - - - 0x01CEF3 07:CEE3: 01        .byte $01   ; 0F 
- D 2 - - - 0x01CEF4 07:CEE4: 01        .byte $01   ; 10 
- D 2 - - - 0x01CEF5 07:CEE5: 04        .byte $04   ; 11 
- D 2 - - - 0x01CEF6 07:CEE6: 02        .byte $02   ; 12 
- D 2 - - - 0x01CEF7 07:CEE7: 02        .byte $02   ; 13 
- D 2 - - - 0x01CEF8 07:CEE8: 02        .byte $02   ; 14 
- D 2 - - - 0x01CEF9 07:CEE9: 02        .byte $02   ; 15 
- D 2 - - - 0x01CEFA 07:CEEA: 02        .byte $02   ; 16 
- D 2 - - - 0x01CEFB 07:CEEB: 04        .byte $04   ; 17 
- D 2 - - - 0x01CEFC 07:CEEC: FF        .byte $FF   ; 18 
- D 2 - - - 0x01CEFD 07:CEED: FF        .byte $FF   ; 19 
- D 2 - - - 0x01CEFE 07:CEEE: 01        .byte $01   ; 1A 
- D 2 - - - 0x01CEFF 07:CEEF: 02        .byte $02   ; 1B 
- D 2 - - - 0x01CF00 07:CEF0: 02        .byte $02   ; 1C 
- - - - - - 0x01CF01 07:CEF1: FF        .byte $FF   ; 1D 
- D 2 - - - 0x01CF02 07:CEF2: 02        .byte $02   ; 1E 
- D 2 - - - 0x01CF03 07:CEF3: 02        .byte $02   ; 1F 
- D 2 - - - 0x01CF04 07:CEF4: 02        .byte $02   ; 20 
- D 2 - - - 0x01CF05 07:CEF5: 02        .byte $02   ; 21 
- D 2 - - - 0x01CF06 07:CEF6: 02        .byte $02   ; 22 
- D 2 - - - 0x01CF07 07:CEF7: 00        .byte $00   ; 23 
- D 2 - - - 0x01CF08 07:CEF8: 02        .byte $02   ; 24 
- D 2 - - - 0x01CF09 07:CEF9: 01        .byte $01   ; 25 
- D 2 - - - 0x01CF0A 07:CEFA: 04        .byte $04   ; 26 



tbl_CEFB:
- D 2 - - - 0x01CF0B 07:CEFB: 05 CF     .word _off013_CF05_00
- D 2 - - - 0x01CF0D 07:CEFD: 08 CF     .word _off013_CF08_01
- D 2 - - - 0x01CF0F 07:CEFF: 0F CF     .word _off013_CF0F_02
- D 2 - - - 0x01CF11 07:CF01: 16 CF     .word _off013_CF16_03
- D 2 - - - 0x01CF13 07:CF03: 19 CF     .word _off013_CF19_04



_off013_CF05_00:
- D 2 - I - 0x01CF15 07:CF05: 01        .byte $01   ; 
- D 2 - I - 0x01CF16 07:CF06: 01        .byte $01   ; 
- D 2 - I - 0x01CF17 07:CF07: FF        .byte $FF   ; end token



_off013_CF08_01:
- D 2 - I - 0x01CF18 07:CF08: 4A        .byte $4A   ; 
- D 2 - I - 0x01CF19 07:CF09: 01        .byte $01   ; 
- D 2 - I - 0x01CF1A 07:CF0A: 62        .byte $62   ; 
- D 2 - I - 0x01CF1B 07:CF0B: 02        .byte $02   ; 
- D 2 - I - 0x01CF1C 07:CF0C: 84        .byte $84   ; 
- D 2 - I - 0x01CF1D 07:CF0D: 03        .byte $03   ; 
- D 2 - I - 0x01CF1E 07:CF0E: FF        .byte $FF   ; end token



_off013_CF0F_02:
- D 2 - I - 0x01CF1F 07:CF0F: 42        .byte $42   ; 
- D 2 - I - 0x01CF20 07:CF10: 01        .byte $01   ; 
- D 2 - I - 0x01CF21 07:CF11: 3A        .byte $3A   ; 
- D 2 - I - 0x01CF22 07:CF12: 03        .byte $03   ; 
- D 2 - I - 0x01CF23 07:CF13: 6A        .byte $6A   ; 
- D 2 - I - 0x01CF24 07:CF14: 04        .byte $04   ; 
- D 2 - I - 0x01CF25 07:CF15: FF        .byte $FF   ; end token



_off013_CF16_03:
- D 2 - I - 0x01CF26 07:CF16: 67        .byte $67   ; 
- D 2 - I - 0x01CF27 07:CF17: 01        .byte $01   ; 
- D 2 - I - 0x01CF28 07:CF18: FF        .byte $FF   ; end token



_off013_CF19_04:
- D 2 - I - 0x01CF29 07:CF19: 41        .byte $41   ; 
- D 2 - I - 0x01CF2A 07:CF1A: 01        .byte $01   ; 
- D 2 - I - 0x01CF2B 07:CF1B: 45        .byte $45   ; 
- D 2 - I - 0x01CF2C 07:CF1C: 02        .byte $02   ; 
- D 2 - I - 0x01CF2D 07:CF1D: FF        .byte $FF   ; end token



loc_CF1E:
C D 2 - - - 0x01CF2E 07:CF1E: A5 6E     LDA ram_006E_t01
C - - - - - 0x01CF30 07:CF20: 0A        ASL
C - - - - - 0x01CF31 07:CF21: AA        TAX
C - - - - - 0x01CF32 07:CF22: BD 2F CF  LDA tbl_CF2F,X
C - - - - - 0x01CF35 07:CF25: 85 5B     STA ram_005B_t4B_jmp
C - - - - - 0x01CF37 07:CF27: BD 30 CF  LDA tbl_CF2F + $01,X
C - - - - - 0x01CF3A 07:CF2A: 85 5C     STA ram_005B_t4B_jmp + $01
C - - - - - 0x01CF3C 07:CF2C: 6C 5B 00  JMP (ram_005B_t4B_jmp)



tbl_CF2F:
- - - - - - 0x01CF3F 07:CF2F: 53 CF     .word ofs_014_CF53_00_RTS
- D 2 - - - 0x01CF41 07:CF31: 39 CF     .word ofs_014_CF39_01
- D 2 - - - 0x01CF43 07:CF33: 39 CF     .word ofs_014_CF39_02
- D 2 - - - 0x01CF45 07:CF35: 54 CF     .word ofs_014_CF54_03
- D 2 - - - 0x01CF47 07:CF37: A4 CF     .word ofs_014_CFA4_04



ofs_014_CF39_01:
ofs_014_CF39_02:
C - - J - - 0x01CF49 07:CF39: A9 0B     LDA #con_sfx_capsule_hit
C - - - - - 0x01CF4B 07:CF3B: 85 77     STA ram_0077_t03_sound_id
C - - - - - 0x01CF4D 07:CF3D: 20 04 CB  JSR sub_CB04_play_sound
C - - - - - 0x01CF50 07:CF40: A5 9D     LDA ram_prg_bank_A000
C - - - - - 0x01CF52 07:CF42: 48        PHA
C - - - - - 0x01CF53 07:CF43: A9 0D     LDA #con_prg_bank + $0D
C - - - - - 0x01CF55 07:CF45: 85 9D     STA ram_prg_bank_A000
C - - - - - 0x01CF57 07:CF47: 20 58 DB  JSR sub_DB58_prg_bankswitch_A000
C - - - - - 0x01CF5A 07:CF4A: 20 0F A0  JSR sub_0x01A01F
C - - - - - 0x01CF5D 07:CF4D: 68        PLA
C - - - - - 0x01CF5E 07:CF4E: 85 9D     STA ram_prg_bank_A000
; bzk optimize, JMP
C - - - - - 0x01CF60 07:CF50: 20 58 DB  JSR sub_DB58_prg_bankswitch_A000
ofs_014_CF53_00_RTS:
C - - - - - 0x01CF63 07:CF53: 60        RTS



ofs_014_CF54_03:
C - - J - - 0x01CF64 07:CF54: A5 D7     LDA ram_00D7
C - - - - - 0x01CF66 07:CF56: 29 01     AND #$01
C - - - - - 0x01CF68 07:CF58: 49 01     EOR #$01
C - - - - - 0x01CF6A 07:CF5A: 85 67     STA ram_0067_t6A
C - - - - - 0x01CF6C 07:CF5C: A5 D7     LDA ram_00D7
; A = 00 01 
; bzk optimize, write 0067 directly to 00D7
C - - - - - 0x01CF6E 07:CF5E: 29 FE     AND #$FE
C - - - - - 0x01CF70 07:CF60: 05 67     ORA ram_0067_t6A
C - - - - - 0x01CF72 07:CF62: 85 D7     STA ram_00D7
; 
C - - - - - 0x01CF74 07:CF64: A5 3C     LDA ram_city
C - - - - - 0x01CF76 07:CF66: 38        SEC
C - - - - - 0x01CF77 07:CF67: E9 07     SBC #$07
C - - - - - 0x01CF79 07:CF69: 48        PHA
C - - - - - 0x01CF7A 07:CF6A: AA        TAX
C - - - - - 0x01CF7B 07:CF6B: BD D1 CF  LDA tbl_CFD1_city_and_flags,X
C - - - - - 0x01CF7E 07:CF6E: 85 6F     STA ram_006F_t02
C - - - - - 0x01CF80 07:CF70: 29 3F     AND #$3F
C - - - - - 0x01CF82 07:CF72: 85 3C     STA ram_city
C - - - - - 0x01CF84 07:CF74: 68        PLA
C - - - - - 0x01CF85 07:CF75: 0A        ASL
C - - - - - 0x01CF86 07:CF76: 18        CLC
C - - - - - 0x01CF87 07:CF77: 65 67     ADC ram_0067_t6A
C - - - - - 0x01CF89 07:CF79: AA        TAX
C - - - - - 0x01CF8A 07:CF7A: BD F1 CF  LDA tbl_CFF1,X
C - - - - - 0x01CF8D 07:CF7D: 85 4D     STA ram_004D_palette_index
C - - - - - 0x01CF8F 07:CF7F: 20 31 D0  JSR sub_D031
C - - - - - 0x01CF92 07:CF82: A5 6F     LDA ram_006F_t02
C - - - - - 0x01CF94 07:CF84: 29 80     AND #$80
C - - - - - 0x01CF96 07:CF86: F0 04     BEQ bra_CF8C
C - - - - - 0x01CF98 07:CF88: A9 08     LDA #con_sfx_earthquake
C - - - - - 0x01CF9A 07:CF8A: D0 02     BNE bra_CF8E    ; jmp
bra_CF8C:
C - - - - - 0x01CF9C 07:CF8C: A9 16     LDA #con_sfx_toggle_switch
bra_CF8E:
C - - - - - 0x01CF9E 07:CF8E: 85 77     STA ram_0077_t03_sound_id
C - - - - - 0x01CFA0 07:CF90: 20 04 CB  JSR sub_CB04_play_sound
C - - - - - 0x01CFA3 07:CF93: A5 6F     LDA ram_006F_t02
C - - - - - 0x01CFA5 07:CF95: 29 40     AND #$40
C - - - - - 0x01CFA7 07:CF97: F0 0A     BEQ bra_CFA3_RTS
C - - - - - 0x01CFA9 07:CF99: A9 81     LDA #$81
C - - - - - 0x01CFAB 07:CF9B: 8D F3 03  STA ram_03F3
C - - - - - 0x01CFAE 07:CF9E: A9 02     LDA #$02
C - - - - - 0x01CFB0 07:CFA0: 8D F4 03  STA ram_03F4
bra_CFA3_RTS:
C - - - - - 0x01CFB3 07:CFA3: 60        RTS



ofs_014_CFA4_04:
C - - J - - 0x01CFB4 07:CFA4: 20 48 D0  JSR sub_D048
C - - - - - 0x01CFB7 07:CFA7: A5 3C     LDA ram_city
C - - - - - 0x01CFB9 07:CFA9: 38        SEC
C - - - - - 0x01CFBA 07:CFAA: E9 07     SBC #$07
C - - - - - 0x01CFBC 07:CFAC: AA        TAX
C - - - - - 0x01CFBD 07:CFAD: BD D1 CF  LDA tbl_CFD1_city_and_flags,X
C - - - - - 0x01CFC0 07:CFB0: 85 6F     STA ram_006F_t03
C - - - - - 0x01CFC2 07:CFB2: 29 3F     AND #$3F
C - - - - - 0x01CFC4 07:CFB4: 85 3C     STA ram_city
C - - - - - 0x01CFC6 07:CFB6: 20 C4 D0  JSR sub_D0C4
C - - - - - 0x01CFC9 07:CFB9: A9 17     LDA #con_sfx_open_door
C - - - - - 0x01CFCB 07:CFBB: 85 77     STA ram_0077_t03_sound_id
C - - - - - 0x01CFCD 07:CFBD: 20 04 CB  JSR sub_CB04_play_sound
C - - - - - 0x01CFD0 07:CFC0: A5 6F     LDA ram_006F_t03
C - - - - - 0x01CFD2 07:CFC2: 29 40     AND #$40
C - - - - - 0x01CFD4 07:CFC4: F0 DD     BEQ bra_CFA3_RTS
C - - - - - 0x01CFD6 07:CFC6: A9 81     LDA #$81
C - - - - - 0x01CFD8 07:CFC8: 8D F3 03  STA ram_03F3
C - - - - - 0x01CFDB 07:CFCB: A9 02     LDA #$02
C - - - - - 0x01CFDD 07:CFCD: 8D F4 03  STA ram_03F4
C - - - - - 0x01CFE0 07:CFD0: 60        RTS



tbl_CFD1_city_and_flags:
;                                              +----------------- 
;                                              |     +----------- 
;                                              |     |     +----- city
;                                              |     |     |
- D 2 - - - 0x01CFE1 07:CFD1: 07        .byte $00 + $00 + $07   ; 07 
- - - - - - 0x01CFE2 07:CFD2: 00        .byte $00 + $00 + $00   ; 08 
- - - - - - 0x01CFE3 07:CFD3: 00        .byte $00 + $00 + $00   ; 09 
- - - - - - 0x01CFE4 07:CFD4: 00        .byte $00 + $00 + $00   ; 0A 
- D 2 - - - 0x01CFE5 07:CFD5: DC        .byte $80 + $40 + $1C   ; 0B 
- D 2 - - - 0x01CFE6 07:CFD6: 0C        .byte $00 + $00 + $0C   ; 0C 
- - - - - - 0x01CFE7 07:CFD7: 00        .byte $00 + $00 + $00   ; 0D 
- D 2 - - - 0x01CFE8 07:CFD8: 5E        .byte $00 + $40 + $1E   ; 0E 
- - - - - - 0x01CFE9 07:CFD9: 00        .byte $00 + $00 + $00   ; 0F 
- - - - - - 0x01CFEA 07:CFDA: 00        .byte $00 + $00 + $00   ; 10 
- - - - - - 0x01CFEB 07:CFDB: 00        .byte $00 + $00 + $00   ; 11 
- D 2 - - - 0x01CFEC 07:CFDC: DF        .byte $80 + $40 + $1F   ; 12 
- D 2 - - - 0x01CFED 07:CFDD: 60        .byte $00 + $40 + $20   ; 13 
- - - - - - 0x01CFEE 07:CFDE: 00        .byte $00 + $00 + $00   ; 14 
- D 2 - - - 0x01CFEF 07:CFDF: 61        .byte $00 + $40 + $21   ; 15 
- D 2 - - - 0x01CFF0 07:CFE0: E2        .byte $80 + $40 + $22   ; 16 
- - - - - - 0x01CFF1 07:CFE1: 00        .byte $00 + $00 + $00   ; 17 
- - - - - - 0x01CFF2 07:CFE2: 00        .byte $00 + $00 + $00   ; 18 
- - - - - - 0x01CFF3 07:CFE3: 00        .byte $00 + $00 + $00   ; 19 
- D 2 - - - 0x01CFF4 07:CFE4: 1A        .byte $00 + $00 + $1A   ; 1A 
- - - - - - 0x01CFF5 07:CFE5: 00        .byte $00 + $00 + $00   ; 1B 
- - - - - - 0x01CFF6 07:CFE6: CB        .byte $80 + $40 + $0B   ; 1C 
- - - - - - 0x01CFF7 07:CFE7: 00        .byte $00 + $00 + $00   ; 1D 
- - - - - - 0x01CFF8 07:CFE8: 0E        .byte $00 + $00 + $0E   ; 1E 
- - - - - - 0x01CFF9 07:CFE9: D2        .byte $80 + $40 + $12   ; 1F 
- - - - - - 0x01CFFA 07:CFEA: 13        .byte $00 + $00 + $13   ; 10 
- - - - - - 0x01CFFB 07:CFEB: 15        .byte $00 + $00 + $15   ; 21 
- - - - - - 0x01CFFC 07:CFEC: D6        .byte $80 + $40 + $16   ; 22 
- - - - - - 0x01CFFD 07:CFED: 00        .byte $00 + $00 + $00   ; 23 
- - - - - - 0x01CFFE 07:CFEE: 00        .byte $00 + $00 + $00   ; 24 
- - - - - - 0x01CFFF 07:CFEF: 00        .byte $00 + $00 + $00   ; 25 
- - - - - - 0x01D000 07:CFF0: 00        .byte $00 + $00 + $00   ; 26 



tbl_CFF1:
;                                              +---------- 
;                                              |    +----- 
;                                              |    |
- D 2 - - - 0x01D001 07:CFF1: 07        .byte $07, $25   ; 07 
- - - - - - 0x01D003 07:CFF3: 00        .byte $00, $00   ; 08 
- - - - - - 0x01D005 07:CFF5: 00        .byte $00, $00   ; 09 
- - - - - - 0x01D007 07:CFF7: 00        .byte $00, $00   ; 0A 
- - - - - - 0x01D009 07:CFF9: 0B        .byte $0B, $26   ; 0B 
- - - - - - 0x01D00B 07:CFFB: 0C        .byte $0C, $27   ; 0C 
- - - - - - 0x01D00D 07:CFFD: 00        .byte $00, $00   ; 0D 
- - - - - - 0x01D00F 07:CFFF: 0E        .byte $0E, $0E   ; 0E 
- - - - - - 0x01D011 07:D001: 00        .byte $00, $00   ; 0F 
- - - - - - 0x01D013 07:D003: 00        .byte $00, $00   ; 10 
- - - - - - 0x01D015 07:D005: 00        .byte $00, $00   ; 11 
- - - - - - 0x01D017 07:D007: 12        .byte $12, $28   ; 12 
- - - - - - 0x01D019 07:D009: 13        .byte $13, $13   ; 13 
- - - - - - 0x01D01B 07:D00B: 00        .byte $00, $00   ; 14 
- - - - - - 0x01D01D 07:D00D: 15        .byte $15, $15   ; 15 
- - - - - - 0x01D01F 07:D00F: 16        .byte $16, $29   ; 16 
- - - - - - 0x01D021 07:D011: 00        .byte $00, $00   ; 17 
- - - - - - 0x01D023 07:D013: 00        .byte $00, $00   ; 18 
- - - - - - 0x01D025 07:D015: 00        .byte $00, $00   ; 19 
- D 2 - - - 0x01D027 07:D017: 1A        .byte $1A, $2B   ; 1A 
- - - - - - 0x01D029 07:D019: 00        .byte $00, $00   ; 1B 
- - - - - - 0x01D02B 07:D01B: 0B        .byte $0B, $26   ; 1C 
- - - - - - 0x01D02D 07:D01D: 00        .byte $00, $00   ; 1D 
- - - - - - 0x01D02F 07:D01F: 0E        .byte $0E, $27   ; 1E 
- - - - - - 0x01D031 07:D021: 12        .byte $12, $28   ; 1F 
- - - - - - 0x01D033 07:D023: 13        .byte $13, $13   ; 10 
- - - - - - 0x01D035 07:D025: 15        .byte $15, $15   ; 21 
- - - - - - 0x01D037 07:D027: 16        .byte $16, $29   ; 22 
- - - - - - 0x01D039 07:D029: 00        .byte $00, $00   ; 23 
- - - - - - 0x01D03B 07:D02B: 00        .byte $00, $00   ; 24 
- - - - - - 0x01D03D 07:D02D: 00        .byte $00, $00   ; 25 
- - - - - - 0x01D03F 07:D02F: 00        .byte $00, $00   ; 26 



sub_D031:
C - - - - - 0x01D041 07:D031: A5 9C     LDA ram_prg_bank_8000
C - - - - - 0x01D043 07:D033: 48        PHA
C - - - - - 0x01D044 07:D034: 20 2C DA  JSR sub_DA2C_prepare_background_palette
C - - - - - 0x01D047 07:D037: 68        PLA
C - - - - - 0x01D048 07:D038: 85 9C     STA ram_prg_bank_8000
C - - - - - 0x01D04A 07:D03A: 20 41 DB  JSR sub_DB41_prg_bankswitch_8000
C - - - - - 0x01D04D 07:D03D: A9 10     LDA #$10    ; background colors only
C - - - - - 0x01D04F 07:D03F: 85 4F     STA ram_004F_pal_buffer_size
C - - - - - 0x01D051 07:D041: A9 01     LDA #con_buffer_ready_palette
C - - - - - 0x01D053 07:D043: 05 02     ORA ram_buffers_flags
C - - - - - 0x01D055 07:D045: 85 02     STA ram_buffers_flags
C - - - - - 0x01D057 07:D047: 60        RTS



sub_D048:
C - - - - - 0x01D058 07:D048: A9 00     LDA #$00
C - - - - - 0x01D05A 07:D04A: 85 69     STA ram_0069_t28_ppu_hi_offset_2
C - - - - - 0x01D05C 07:D04C: A9 20     LDA #$20
C - - - - - 0x01D05E 07:D04E: 85 68     STA ram_0068_t48
C - - - - - 0x01D060 07:D050: A5 6C     LDA ram_006C_t03_city_sector
C - - - - - 0x01D062 07:D052: 29 01     AND #$01
; * 04
C - - - - - 0x01D064 07:D054: 0A        ASL
C - - - - - 0x01D065 07:D055: 0A        ASL

; 
C - - - - - 0x01D066 07:D056: 05 68     ORA ram_0068_t48
C - - - - - 0x01D068 07:D058: 85 68     STA ram_0068_t49_ppu_hi_offset_1
C - - - - - 0x01D06A 07:D05A: A5 6D     LDA ram_006D_t03
C - - - - - 0x01D06C 07:D05C: 48        PHA
C - - - - - 0x01D06D 07:D05D: 29 F0     AND #$F0
; * 04
C - - - - - 0x01D06F 07:D05F: 0A        ASL
C - - - - - 0x01D070 07:D060: 26 69     ROL ram_0069_t28_ppu_hi_offset_2
C - - - - - 0x01D072 07:D062: 0A        ASL
C - - - - - 0x01D073 07:D063: 26 69     ROL ram_0069_t28_ppu_hi_offset_2
; 
C - - - - - 0x01D075 07:D065: 85 67     STA ram_0067_t6B_ppu_lo_offset
C - - - - - 0x01D077 07:D067: 68        PLA
C - - - - - 0x01D078 07:D068: 29 0F     AND #$0F
C - - - - - 0x01D07A 07:D06A: 0A        ASL
C - - - - - 0x01D07B 07:D06B: 18        CLC
C - - - - - 0x01D07C 07:D06C: 65 67     ADC ram_0067_t6B_ppu_lo_offset
C - - - - - 0x01D07E 07:D06E: 85 67     STA ram_0067_t16_ppu_lo_init
C - - - - - 0x01D080 07:D070: A5 69     LDA ram_0069_t28_ppu_hi_offset_2
C - - - - - 0x01D082 07:D072: 65 68     ADC ram_0068_t49_ppu_hi_offset_1
C - - - - - 0x01D084 07:D074: 85 68     STA ram_0068_t29_ppu_hi_init
C - - - - - 0x01D086 07:D076: A9 8A     LDA #< tbl_D08A_metatile
C - - - - - 0x01D088 07:D078: 85 5D     STA ram_005D_t19_data_metatiles
C - - - - - 0x01D08A 07:D07A: A9 D0     LDA #> tbl_D08A_metatile
C - - - - - 0x01D08C 07:D07C: 85 5E     STA ram_005D_t19_data_metatiles + $01
C - - - - - 0x01D08E 07:D07E: 20 8E D0  JSR sub_D08E
C - - - - - 0x01D091 07:D081: 86 0E     STX ram_000E_buffer_index
C - - - - - 0x01D093 07:D083: A5 02     LDA ram_buffers_flags
C - - - - - 0x01D095 07:D085: 09 04     ORA #con_buffer_ready_04
C - - - - - 0x01D097 07:D087: 85 02     STA ram_buffers_flags
C - - - - - 0x01D099 07:D089: 60        RTS



tbl_D08A_metatile:
- D 2 - I - 0x01D09A 07:D08A: CE        .byte $CE, $DE   ; 
- D 2 - I - 0x01D09C 07:D08C: EE        .byte $EE, $FE   ; 



sub_D08E:
loc_D08E:
; in
    ; ram_005D_t19_data_metatiles
    ; ram_0067_t16_ppu_lo_init
    ; ram_0068_t29_ppu_hi_init
C D 2 - - - 0x01D09E 07:D08E: A5 67     LDA ram_0067_t16_ppu_lo_init
C - - - - - 0x01D0A0 07:D090: 85 6A     STA ram_006A_t09_ppu_lo
C - - - - - 0x01D0A2 07:D092: A5 68     LDA ram_0068_t29_ppu_hi_init
C - - - - - 0x01D0A4 07:D094: 85 6B     STA ram_006B_t02_ppu_hi
C - - - - - 0x01D0A6 07:D096: A0 00     LDY #$00
C - - - - - 0x01D0A8 07:D098: A2 00     LDX #$00
bra_D09A_loop:
C - - - - - 0x01D0AA 07:D09A: A5 6B     LDA ram_006B_t02_ppu_hi
C - - - - - 0x01D0AC 07:D09C: 9D C0 02  STA ram_02C0_ppu_buffer,X
C - - - - - 0x01D0AF 07:D09F: A5 6A     LDA ram_006A_t09_ppu_lo
C - - - - - 0x01D0B1 07:D0A1: 9D C1 02  STA ram_02C0_ppu_buffer + $01,X
C - - - - - 0x01D0B4 07:D0A4: B1 5D     LDA (ram_005D_t19_data_metatiles),Y
C - - - - - 0x01D0B6 07:D0A6: 9D C2 02  STA ram_02C0_ppu_buffer + $02,X
C - - - - - 0x01D0B9 07:D0A9: E8        INX
C - - - - - 0x01D0BA 07:D0AA: E8        INX
C - - - - - 0x01D0BB 07:D0AB: E8        INX
C - - - - - 0x01D0BC 07:D0AC: C8        INY
C - - - - - 0x01D0BD 07:D0AD: B9 C0 D0  LDA tbl_D0C0_metatile_ppu_address_offset,Y
C - - - - - 0x01D0C0 07:D0B0: 18        CLC
C - - - - - 0x01D0C1 07:D0B1: 65 67     ADC ram_0067_t16_ppu_lo_init
C - - - - - 0x01D0C3 07:D0B3: 85 6A     STA ram_006A_t09_ppu_lo
C - - - - - 0x01D0C5 07:D0B5: A5 68     LDA ram_0068_t29_ppu_hi_init
C - - - - - 0x01D0C7 07:D0B7: 69 00     ADC #$00
C - - - - - 0x01D0C9 07:D0B9: 85 6B     STA ram_006B_t02_ppu_hi
C - - - - - 0x01D0CB 07:D0BB: C0 04     CPY #$04
C - - - - - 0x01D0CD 07:D0BD: 90 DB     BCC bra_D09A_loop
C - - - - - 0x01D0CF 07:D0BF: 60        RTS



tbl_D0C0_metatile_ppu_address_offset:
; scheme
    ; 00 01
    ; 02 03
- - - - - - 0x01D0D0 07:D0C0: 00        .byte $00   ; 00 
- D 2 - - - 0x01D0D1 07:D0C1: 01        .byte $01   ; 01 
- D 2 - - - 0x01D0D2 07:D0C2: 20        .byte $20   ; 02 
- D 2 - - - 0x01D0D3 07:D0C3: 21        .byte $21   ; 03 



sub_D0C4:
C D 2 - - - 0x01D0D4 07:D0C4: A9 00     LDA #$00
C - - - - - 0x01D0D6 07:D0C6: 8D C8 05  STA ram_05C8_t01_data_index
C - - - - - 0x01D0D9 07:D0C9: 8D C9 05  STA ram_05C9_t01_timer
C - - - - - 0x01D0DC 07:D0CC: 8D CA 05  STA ram_05CA_t02_flag
C - - - - - 0x01D0DF 07:D0CF: A5 6C     LDA ram_006C_t03_city_sector
C - - - - - 0x01D0E1 07:D0D1: 29 01     AND #$01
C - - - - - 0x01D0E3 07:D0D3: 8D CB 05  STA ram_05CB_t02_nametable
C - - - - - 0x01D0E6 07:D0D6: A9 81     LDA #$80 + $01
C - - - - - 0x01D0E8 07:D0D8: 8D C7 05  STA ram_05C7_flags
C - - - - - 0x01D0EB 07:D0DB: 60        RTS



sub_D0DC:
C - - - - - 0x01D0EC 07:D0DC: A5 7D     LDA ram_007D_unk_language
C - - - - - 0x01D0EE 07:D0DE: F0 10     BEQ bra_D0F0
- - - - - - 0x01D0F0 07:D0E0: A5 49     LDA ram_0049_useless_00
- - - - - - 0x01D0F2 07:D0E2: D0 05     BNE bra_D0E9
sub_D0E4:
C - - - - - 0x01D0F4 07:D0E4: E6 50     INC ram_0050_data_index
C - - - - - 0x01D0F6 07:D0E6: 4C F0 D0  JMP loc_D0F0
sub_D0E9:
bra_D0E9:
C - - - - - 0x01D0F9 07:D0E9: A5 50     LDA ram_0050_data_index
C - - - - - 0x01D0FB 07:D0EB: 18        CLC
C - - - - - 0x01D0FC 07:D0EC: 69 10     ADC #$10
C - - - - - 0x01D0FE 07:D0EE: 85 50     STA ram_0050_data_index
bra_D0F0:
loc_D0F0:
sub_D0F0:
C D 2 - - - 0x01D100 07:D0F0: A9 04     LDA #con_prg_bank + $04
C - - - - - 0x01D102 07:D0F2: 85 9C     STA ram_prg_bank_8000
C - - - - - 0x01D104 07:D0F4: 20 41 DB  JSR sub_DB41_prg_bankswitch_8000
C - - - - - 0x01D107 07:D0F7: A5 3C     LDA ram_city
C - - - - - 0x01D109 07:D0F9: 0A        ASL
C - - - - - 0x01D10A 07:D0FA: AA        TAX
C - - - - - 0x01D10B 07:D0FB: BD 00 80  LDA tbl_0x008010_city_data,X
C - - - - - 0x01D10E 07:D0FE: 85 5B     STA ram_005B_t19_data
C - - - - - 0x01D110 07:D100: BD 01 80  LDA tbl_0x008010_city_data + $01,X
C - - - - - 0x01D113 07:D103: 85 5C     STA ram_005B_t19_data + $01
C - - - - - 0x01D115 07:D105: A5 50     LDA ram_0050_data_index
C - - - - - 0x01D117 07:D107: 0A        ASL
C - - - - - 0x01D118 07:D108: A8        TAY
C - - - - - 0x01D119 07:D109: B1 5B     LDA (ram_005B_t19_data),Y
C - - - - - 0x01D11B 07:D10B: 85 7E     STA ram_007E_t01_data
C - - - - - 0x01D11D 07:D10D: C8        INY
C - - - - - 0x01D11E 07:D10E: B1 5B     LDA (ram_005B_t19_data),Y
C - - - - - 0x01D120 07:D110: 85 7F     STA ram_007E_t01_data + $01
C - - - - - 0x01D122 07:D112: 60        RTS



sub_D113:
C - - - - - 0x01D123 07:D113: A9 04     LDA #con_prg_bank + $04
C - - - - - 0x01D125 07:D115: 85 9C     STA ram_prg_bank_8000
C - - - - - 0x01D127 07:D117: 20 41 DB  JSR sub_DB41_prg_bankswitch_8000
C - - - - - 0x01D12A 07:D11A: A5 3C     LDA ram_city
C - - - - - 0x01D12C 07:D11C: 0A        ASL
C - - - - - 0x01D12D 07:D11D: AA        TAX
C - - - - - 0x01D12E 07:D11E: BD 06 87  LDA tbl_0x008716,X
C - - - - - 0x01D131 07:D121: 85 80     STA ram_0080_t02_ptr_lo
C - - - - - 0x01D133 07:D123: BD 07 87  LDA tbl_0x008716 + $01,X
C - - - - - 0x01D136 07:D126: 85 81     STA ram_0081_t02_ptr_hi
C - - - - - 0x01D138 07:D128: 60        RTS



sub_D129:
C - - - - - 0x01D139 07:D129: A9 04     LDA #con_prg_bank + $04
C - - - - - 0x01D13B 07:D12B: 85 9C     STA ram_prg_bank_8000
C - - - - - 0x01D13D 07:D12D: 20 41 DB  JSR sub_DB41_prg_bankswitch_8000
C - - - - - 0x01D140 07:D130: A5 3C     LDA ram_city
C - - - - - 0x01D142 07:D132: 0A        ASL
C - - - - - 0x01D143 07:D133: AA        TAX
C - - - - - 0x01D144 07:D134: BD 54 87  LDA tbl_0x008764,X
C - - - - - 0x01D147 07:D137: 85 82     STA ram_0082_t01_data
C - - - - - 0x01D149 07:D139: BD 55 87  LDA tbl_0x008764 + $01,X
C - - - - - 0x01D14C 07:D13C: 85 83     STA ram_0082_t01_data + $01
C - - - - - 0x01D14E 07:D13E: 60        RTS



sub_D13F:
loc_D13F:
C D 2 - - - 0x01D14F 07:D13F: A9 00     LDA #$00
C - - - - - 0x01D151 07:D141: 85 51     STA ram_0051_t02
C - - - - - 0x01D153 07:D143: 85 68     STA ram_0068_t50_counter
C - - - - - 0x01D155 07:D145: A5 7D     LDA ram_007D_unk_language
C - - - - - 0x01D157 07:D147: F0 14     BEQ bra_D15D
- - - - - - 0x01D159 07:D149: A9 00     LDA #$00
- - - - - - 0x01D15B 07:D14B: 85 65     STA ram_0065_t02_lo
- - - - - - 0x01D15D 07:D14D: A5 49     LDA ram_0049_useless_00
- - - - - - 0x01D15F 07:D14F: F0 06     BEQ bra_D157
- - - - - - 0x01D161 07:D151: A9 28     LDA #> $2800
- - - - - - 0x01D163 07:D153: 85 66     STA ram_0066_t01_hi
- - - - - - 0x01D165 07:D155: D0 0E     BNE bra_D165_loop    ; jmp
bra_D157:
- - - - - - 0x01D167 07:D157: A9 24     LDA #> $2400
- - - - - - 0x01D169 07:D159: 85 66     STA ram_0066_t01_hi
- - - - - - 0x01D16B 07:D15B: D0 08     BNE bra_D165    ; jmp
bra_D15D:
C - - - - - 0x01D16D 07:D15D: A9 00     LDA #< $2000
C - - - - - 0x01D16F 07:D15F: 85 65     STA ram_0065_t02_lo
C - - - - - 0x01D171 07:D161: A9 20     LDA #> $2000
C - - - - - 0x01D173 07:D163: 85 66     STA ram_0066_t01_hi
bra_D165:
bra_D165_loop:
C - - - - - 0x01D175 07:D165: 20 7E D1  JSR sub_D17E
C - - - - - 0x01D178 07:D168: A5 65     LDA ram_0065_t02_lo
C - - - - - 0x01D17A 07:D16A: 18        CLC
C - - - - - 0x01D17B 07:D16B: 69 40     ADC #< $0040
C - - - - - 0x01D17D 07:D16D: 85 65     STA ram_0065_t02_lo
C - - - - - 0x01D17F 07:D16F: A5 66     LDA ram_0066_t01_hi
C - - - - - 0x01D181 07:D171: 69 00     ADC #> $0040
C - - - - - 0x01D183 07:D173: 85 66     STA ram_0066_t01_hi
C - - - - - 0x01D185 07:D175: E6 68     INC ram_0068_t50_counter
C - - - - - 0x01D187 07:D177: A5 68     LDA ram_0068_t50_counter
C - - - - - 0x01D189 07:D179: C9 0F     CMP #$0F
C - - - - - 0x01D18B 07:D17B: 90 E8     BCC bra_D165_loop
C - - - - - 0x01D18D 07:D17D: 60        RTS



sub_D17E:
C - - - - - 0x01D18E 07:D17E: A9 10     LDA #$10
C - - - - - 0x01D190 07:D180: 85 6A     STA ram_006A_t02_loop_counter
bra_D182_loop:
C - - - - - 0x01D192 07:D182: A5 51     LDA ram_0051_t02
C - - - - - 0x01D194 07:D184: 29 0F     AND #$0F
C - - - - - 0x01D196 07:D186: 0A        ASL
C - - - - - 0x01D197 07:D187: 18        CLC
C - - - - - 0x01D198 07:D188: 65 65     ADC ram_0065_t02_lo
C - - - - - 0x01D19A 07:D18A: 85 5F     STA ram_005F_t17_lo
C - - - - - 0x01D19C 07:D18C: A9 00     LDA #$00
C - - - - - 0x01D19E 07:D18E: 65 66     ADC ram_0066_t01_hi
C - - - - - 0x01D1A0 07:D190: 85 60     STA ram_0060_t03_hi
C - - - - - 0x01D1A2 07:D192: 20 9F D1  JSR sub_D19F_write_metatile
C - - - - - 0x01D1A5 07:D195: E6 51     INC ram_0051_t02
C - - - - - 0x01D1A7 07:D197: C6 6A     DEC ram_006A_t02_loop_counter
C - - - - - 0x01D1A9 07:D199: D0 E7     BNE bra_D182_loop
; bzk optimize, JMP
C - - - - - 0x01D1AB 07:D19B: 20 60 D2  JSR sub_D260
C - - - - - 0x01D1AE 07:D19E: 60        RTS



sub_D19F_write_metatile:
C - - - - - 0x01D1AF 07:D19F: A9 00     LDA #$00
C - - - - - 0x01D1B1 07:D1A1: 85 6C     STA ram_006C_t22_hi
C - - - - - 0x01D1B3 07:D1A3: A4 51     LDY ram_0051_t02
C - - - - - 0x01D1B5 07:D1A5: A6 3C     LDX ram_city
C - - - - - 0x01D1B7 07:D1A7: BD C8 E8  LDA tbl_E8C8_prg_banks_city,X
C - - - - - 0x01D1BA 07:D1AA: 85 9C     STA ram_prg_bank_8000
C - - - - - 0x01D1BC 07:D1AC: 20 41 DB  JSR sub_DB41_prg_bankswitch_8000
C - - - - - 0x01D1BF 07:D1AF: B1 7E     LDA (ram_007E_t01_data),Y
C - - - - - 0x01D1C1 07:D1B1: 85 6B     STA ram_006B_t23_lo
C - - - - - 0x01D1C3 07:D1B3: A8        TAY
C - - - - - 0x01D1C4 07:D1B4: A9 02     LDA #con_prg_bank + $02
C - - - - - 0x01D1C6 07:D1B6: 85 9C     STA ram_prg_bank_8000
C - - - - - 0x01D1C8 07:D1B8: 20 41 DB  JSR sub_DB41_prg_bankswitch_8000
C - - - - - 0x01D1CB 07:D1BB: B1 82     LDA (ram_0082_t01_data),Y
C - - - - - 0x01D1CD 07:D1BD: 29 03     AND #$03
C - - - - - 0x01D1CF 07:D1BF: 85 6D     STA ram_006D_t15_attribute
C - - - - - 0x01D1D1 07:D1C1: A5 6B     LDA ram_006B_t23_lo
; * 04
C - - - - - 0x01D1D3 07:D1C3: 0A        ASL
C - - - - - 0x01D1D4 07:D1C4: 26 6C     ROL ram_006C_t22_hi
C - - - - - 0x01D1D6 07:D1C6: 0A        ASL
C - - - - - 0x01D1D7 07:D1C7: 26 6C     ROL ram_006C_t22_hi
; 
C - - - - - 0x01D1D9 07:D1C9: 18        CLC
C - - - - - 0x01D1DA 07:D1CA: 65 80     ADC ram_0080_t01_metatiles_ptr_lo
C - - - - - 0x01D1DC 07:D1CC: 85 61     STA ram_0061_t01_metatiles_data
C - - - - - 0x01D1DE 07:D1CE: A5 81     LDA ram_0081_t01_metatiles_ptr_hi
C - - - - - 0x01D1E0 07:D1D0: 65 6C     ADC ram_006C_t22_hi
C - - - - - 0x01D1E2 07:D1D2: 85 62     STA ram_0061_t01_metatiles_data + $01
C - - - - - 0x01D1E4 07:D1D4: A9 03     LDA #$03
C - - - - - 0x01D1E6 07:D1D6: 85 6B     STA ram_006B_t24_data_index
C - - - - - 0x01D1E8 07:D1D8: A9 03     LDA #con_prg_bank + $03
C - - - - - 0x01D1EA 07:D1DA: 85 9C     STA ram_prg_bank_8000
C - - - - - 0x01D1EC 07:D1DC: 20 41 DB  JSR sub_DB41_prg_bankswitch_8000
bra_D1DF_loop:
C - - - - - 0x01D1EF 07:D1DF: A4 6B     LDY ram_006B_t24_data_index
C - - - - - 0x01D1F1 07:D1E1: B1 61     LDA (ram_0061_t01_metatiles_data),Y
C - - - - - 0x01D1F3 07:D1E3: 85 6C     STA ram_006C_t23_tile
C - - - - - 0x01D1F5 07:D1E5: A6 6B     LDX ram_006B_t24_data_index
C - - - - - 0x01D1F7 07:D1E7: BD 09 D2  LDA tbl_D209_metatile_ppu_address_offset,X
C - - - - - 0x01D1FA 07:D1EA: 18        CLC
C - - - - - 0x01D1FB 07:D1EB: 65 5F     ADC ram_005F_t17_lo
C - - - - - 0x01D1FD 07:D1ED: 85 63     STA ram_0063_t03_lo
C - - - - - 0x01D1FF 07:D1EF: A5 60     LDA ram_0060_t03_hi
C - - - - - 0x01D201 07:D1F1: 69 00     ADC #$00
; bzk optimize, TAX instead of STA + LDX
C - - - - - 0x01D203 07:D1F3: 85 64     STA ram_0064_t01_hi
C - - - - - 0x01D205 07:D1F5: A6 64     LDX ram_0064_t01_hi
C - - - - - 0x01D207 07:D1F7: A4 63     LDY ram_0063_t03_lo
C - - - - - 0x01D209 07:D1F9: 20 DD E0  JSR sub_E0DD_set_ppu_address
C - - - - - 0x01D20C 07:D1FC: A5 6C     LDA ram_006C_t23_tile
C - - - - - 0x01D20E 07:D1FE: 8D 07 20  STA $2007
C - - - - - 0x01D211 07:D201: C6 6B     DEC ram_006B_t24_data_index
C - - - - - 0x01D213 07:D203: 10 DA     BPL bra_D1DF_loop
; bzk optimize, JMP
C - - - - - 0x01D215 07:D205: 20 0D D2  JSR sub_D20D_write_attrubute_to_buffer
C - - - - - 0x01D218 07:D208: 60        RTS



tbl_D209_metatile_ppu_address_offset:
; scheme
    ; 00 01
    ; 02 03
- D 2 - - - 0x01D219 07:D209: 00        .byte $00   ; 00 
- D 2 - - - 0x01D21A 07:D20A: 01        .byte $01   ; 01 
- D 2 - - - 0x01D21B 07:D20B: 20        .byte $20   ; 02 
- D 2 - - - 0x01D21C 07:D20C: 21        .byte $21   ; 03 



sub_D20D_write_attrubute_to_buffer:
; in
    ; ram_0051_t02
C - - - - - 0x01D21D 07:D20D: A5 51     LDA ram_0051_t02
C - - - - - 0x01D21F 07:D20F: 29 01     AND #$01
C - - - - - 0x01D221 07:D211: 85 6E     STA ram_006E_t15
C - - - - - 0x01D223 07:D213: A5 51     LDA ram_0051_t02
C - - - - - 0x01D225 07:D215: 29 10     AND #$10
; / 08
C - - - - - 0x01D227 07:D217: 4A        LSR
C - - - - - 0x01D228 07:D218: 4A        LSR
C - - - - - 0x01D229 07:D219: 4A        LSR
; 
C - - - - - 0x01D22A 07:D21A: 18        CLC
C - - - - - 0x01D22B 07:D21B: 65 6E     ADC ram_006E_t15
C - - - - - 0x01D22D 07:D21D: 85 6E     STA ram_006E_t16_table_index
C - - - - - 0x01D22F 07:D21F: A8        TAY
C - - - - - 0x01D230 07:D220: F0 09     BEQ bra_D22B
C - - - - - 0x01D232 07:D222: A5 6D     LDA ram_006D_t15_attribute
bra_D224_loop:
; * 04
C - - - - - 0x01D234 07:D224: 0A        ASL
C - - - - - 0x01D235 07:D225: 0A        ASL
; 
C - - - - - 0x01D236 07:D226: 88        DEY
C - - - - - 0x01D237 07:D227: D0 FB     BNE bra_D224_loop
C - - - - - 0x01D239 07:D229: 85 6D     STA ram_006D_t15_attribute
bra_D22B:
C - - - - - 0x01D23B 07:D22B: A5 51     LDA ram_0051_t02
C - - - - - 0x01D23D 07:D22D: 29 0F     AND #$0F
C - - - - - 0x01D23F 07:D22F: 4A        LSR
C - - - - - 0x01D240 07:D230: 85 6B     STA ram_006B_t25
C - - - - - 0x01D242 07:D232: A5 51     LDA ram_0051_t02
C - - - - - 0x01D244 07:D234: 29 E0     AND #$E0
; / 04
C - - - - - 0x01D246 07:D236: 4A        LSR
C - - - - - 0x01D247 07:D237: 4A        LSR
; 
C - - - - - 0x01D248 07:D238: 18        CLC
C - - - - - 0x01D249 07:D239: 65 6B     ADC ram_006B_t25
C - - - - - 0x01D24B 07:D23B: AA        TAX
C - - - - - 0x01D24C 07:D23C: A4 6E     LDY ram_006E_t16_table_index
C - - - - - 0x01D24E 07:D23E: A5 7D     LDA ram_007D_unk_language
C - - - - - 0x01D250 07:D240: D0 0E     BNE bra_D250
C - - - - - 0x01D252 07:D242: B9 5C D2  LDA tbl_D25C_attribute,Y
C - - - - - 0x01D255 07:D245: 3D 00 02  AND ram_attr_buffer,X
C - - - - - 0x01D258 07:D248: 05 6D     ORA ram_006D_t15_attribute
C - - - - - 0x01D25A 07:D24A: 9D 00 02  STA ram_attr_buffer,X
C - - - - - 0x01D25D 07:D24D: 4C 5B D2  JMP loc_D25B_RTS
bra_D250:
- - - - - - 0x01D260 07:D250: B9 5C D2  LDA tbl_D25C_attribute,Y
- - - - - - 0x01D263 07:D253: 3D 40 02  AND ram_attr_buffer + $40,X
- - - - - - 0x01D266 07:D256: 05 6D     ORA ram_006D_t15_attribute
- - - - - - 0x01D268 07:D258: 9D 40 02  STA ram_attr_buffer + $40,X
loc_D25B_RTS:
C D 2 - - - 0x01D26B 07:D25B: 60        RTS



tbl_D25C_attribute:
- D 2 - - - 0x01D26C 07:D25C: FC        .byte $FC   ; 00 
- D 2 - - - 0x01D26D 07:D25D: F3        .byte $F3   ; 01 
- D 2 - - - 0x01D26E 07:D25E: CF        .byte $CF   ; 02 
- D 2 - - - 0x01D26F 07:D25F: 3F        .byte $3F   ; 03 



sub_D260:
C - - - - - 0x01D270 07:D260: A9 00     LDA #$00
C - - - - - 0x01D272 07:D262: 85 69     STA ram_0069_t29_buffer_index
C - - - - - 0x01D274 07:D264: A2 23     LDX #$23    ; > 23C0
C - - - - - 0x01D276 07:D266: A0 C0     LDY #$C0    ; < 2xC0
C - - - - - 0x01D278 07:D268: A5 7D     LDA ram_007D_unk_language
C - - - - - 0x01D27A 07:D26A: F0 0E     BEQ bra_D27A
- - - - - - 0x01D27C 07:D26C: A5 49     LDA ram_0049_useless_00
- - - - - - 0x01D27E 07:D26E: D0 04     BNE bra_D274
- - - - - - 0x01D280 07:D270: A2 27     LDX #$27    ; > 27C0
- - - - - - 0x01D282 07:D272: D0 02     BNE bra_D276    ; jmp
bra_D274:
- - - - - - 0x01D284 07:D274: A2 2B     LDX #$2B    ; < 2BC0
bra_D276:
- - - - - - 0x01D286 07:D276: A9 40     LDA #$40
- - - - - - 0x01D288 07:D278: 85 69     STA ram_0069_t29_buffer_index
bra_D27A:
C - - - - - 0x01D28A 07:D27A: 20 DD E0  JSR sub_E0DD_set_ppu_address
C - - - - - 0x01D28D 07:D27D: A0 40     LDY #$40
C - - - - - 0x01D28F 07:D27F: A6 69     LDX ram_0069_t29_buffer_index
bra_D281_loop:
C - - - - - 0x01D291 07:D281: BD 00 02  LDA ram_attr_buffer,X
C - - - - - 0x01D294 07:D284: 8D 07 20  STA $2007
C - - - - - 0x01D297 07:D287: E8        INX
C - - - - - 0x01D298 07:D288: 88        DEY
C - - - - - 0x01D299 07:D289: D0 F6     BNE bra_D281_loop
C - - - - - 0x01D29B 07:D28B: 60        RTS



loc_D28C_write_metatiles:
; in
    ; ram_007E_t02_metatile_id_data
    ; ram_005B_t69_ppu_lo
    ; ram_005C_t02_ppu_hi
    ; ram_0051_t01
C D 2 - - - 0x01D29C 07:D28C: A5 9C     LDA ram_prg_bank_8000
C - - - - - 0x01D29E 07:D28E: 48        PHA
C - - - - - 0x01D29F 07:D28F: A9 00     LDA #$00
C - - - - - 0x01D2A1 07:D291: 85 6A     STA ram_006A_t08_data_index
C - - - - - 0x01D2A3 07:D293: A5 5B     LDA ram_005B_t69_ppu_lo
C - - - - - 0x01D2A5 07:D295: 85 5D     STA ram_005D_t27_ppu_lo
C - - - - - 0x01D2A7 07:D297: A5 5C     LDA ram_005C_t02_ppu_hi
C - - - - - 0x01D2A9 07:D299: 85 5E     STA ram_005E_t03_ppu_hi
C - - - - - 0x01D2AB 07:D29B: A5 51     LDA ram_0051_t01
C - - - - - 0x01D2AD 07:D29D: 85 6B     STA ram_006B_t08
bra_D29F_loop:
C - - - - - 0x01D2AF 07:D29F: A9 02     LDA #con_prg_bank + $02
C - - - - - 0x01D2B1 07:D2A1: 85 9C     STA ram_prg_bank_8000
C - - - - - 0x01D2B3 07:D2A3: 20 41 DB  JSR sub_DB41_prg_bankswitch_8000
C - - - - - 0x01D2B6 07:D2A6: A4 6A     LDY ram_006A_t08_data_index
C - - - - - 0x01D2B8 07:D2A8: B1 7E     LDA (ram_007E_t02_metatile_id_data),Y
C - - - - - 0x01D2BA 07:D2AA: C9 FE     CMP #$FE
C - - - - - 0x01D2BC 07:D2AC: F0 28     BEQ bra_D2D6_FE
C - - - - - 0x01D2BE 07:D2AE: C9 FF     CMP #$FF
C - - - - - 0x01D2C0 07:D2B0: F0 40     BEQ bra_D2F2_FF
C - - - - - 0x01D2C2 07:D2B2: 85 6C     STA ram_006C_t11_data_ptr_lo
C - - - - - 0x01D2C4 07:D2B4: A8        TAY
C - - - - - 0x01D2C5 07:D2B5: A9 02     LDA #con_prg_bank + $02
C - - - - - 0x01D2C7 07:D2B7: 85 9C     STA ram_prg_bank_8000
C - - - - - 0x01D2C9 07:D2B9: 20 41 DB  JSR sub_DB41_prg_bankswitch_8000
C - - - - - 0x01D2CC 07:D2BC: B1 82     LDA (ram_0082_t02_data),Y
C - - - - - 0x01D2CE 07:D2BE: 85 6D     STA ram_006D_t07_attribute
C - - - - - 0x01D2D0 07:D2C0: 20 02 D3  JSR sub_D302_write_metatile
C - - - - - 0x01D2D3 07:D2C3: A5 5D     LDA ram_005D_t27_ppu_lo
C - - - - - 0x01D2D5 07:D2C5: 18        CLC
C - - - - - 0x01D2D6 07:D2C6: 69 02     ADC #< $0002
C - - - - - 0x01D2D8 07:D2C8: 85 5D     STA ram_005D_t27_ppu_lo
C - - - - - 0x01D2DA 07:D2CA: A5 5E     LDA ram_005E_t03_ppu_hi
C - - - - - 0x01D2DC 07:D2CC: 69 00     ADC #> $0002
C - - - - - 0x01D2DE 07:D2CE: 85 5E     STA ram_005E_t03_ppu_hi
C - - - - - 0x01D2E0 07:D2D0: E6 6B     INC ram_006B_t08
bra_D2D2_loop:
C - - - - - 0x01D2E2 07:D2D2: E6 6A     INC ram_006A_t08_data_index
C - - - - - 0x01D2E4 07:D2D4: D0 C9     BNE bra_D29F_loop   ; jmp
bra_D2D6_FE:
C - - - - - 0x01D2E6 07:D2D6: A5 51     LDA ram_0051_t01
C - - - - - 0x01D2E8 07:D2D8: 18        CLC
C - - - - - 0x01D2E9 07:D2D9: 69 10     ADC #$10
C - - - - - 0x01D2EB 07:D2DB: 85 51     STA ram_0051_t01
C - - - - - 0x01D2ED 07:D2DD: 85 6B     STA ram_006B_t08
C - - - - - 0x01D2EF 07:D2DF: A5 5B     LDA ram_005B_t69_ppu_lo
C - - - - - 0x01D2F1 07:D2E1: 18        CLC
C - - - - - 0x01D2F2 07:D2E2: 69 40     ADC #< $0040
C - - - - - 0x01D2F4 07:D2E4: 85 5B     STA ram_005B_t69_ppu_lo
C - - - - - 0x01D2F6 07:D2E6: 85 5D     STA ram_005D_t27_ppu_lo
C - - - - - 0x01D2F8 07:D2E8: A5 5C     LDA ram_005C_t02_ppu_hi
C - - - - - 0x01D2FA 07:D2EA: 69 00     ADC #> $0040
C - - - - - 0x01D2FC 07:D2EC: 85 5C     STA ram_005C_t02_ppu_hi
C - - - - - 0x01D2FE 07:D2EE: 85 5E     STA ram_005E_t03_ppu_hi
C - - - - - 0x01D300 07:D2F0: D0 E0     BNE bra_D2D2_loop    ; jmp?
bra_D2F2_FF:
C - - - - - 0x01D302 07:D2F2: A9 00     LDA #$00
C - - - - - 0x01D304 07:D2F4: 85 7D     STA ram_007D_unk_language
C - - - - - 0x01D306 07:D2F6: 85 49     STA ram_0049_useless_00
C - - - - - 0x01D308 07:D2F8: 20 60 D2  JSR sub_D260
C - - - - - 0x01D30B 07:D2FB: 68        PLA
C - - - - - 0x01D30C 07:D2FC: 85 9C     STA ram_prg_bank_8000
; bzk optimize, JMP
C - - - - - 0x01D30E 07:D2FE: 20 41 DB  JSR sub_DB41_prg_bankswitch_8000
C - - - - - 0x01D311 07:D301: 60        RTS



sub_D302_write_metatile:
C - - - - - 0x01D312 07:D302: A9 00     LDA #$00
C - - - - - 0x01D314 07:D304: 85 6E     STA ram_006E_t05_data_ptr_hi
C - - - - - 0x01D316 07:D306: A9 03     LDA #con_prg_bank + $03
C - - - - - 0x01D318 07:D308: 85 9C     STA ram_prg_bank_8000
C - - - - - 0x01D31A 07:D30A: 20 41 DB  JSR sub_DB41_prg_bankswitch_8000
C - - - - - 0x01D31D 07:D30D: A5 6C     LDA ram_006C_t11_data_ptr_lo
; * 04
C - - - - - 0x01D31F 07:D30F: 0A        ASL
C - - - - - 0x01D320 07:D310: 26 6E     ROL ram_006E_t05_data_ptr_hi
C - - - - - 0x01D322 07:D312: 0A        ASL
C - - - - - 0x01D323 07:D313: 26 6E     ROL ram_006E_t05_data_ptr_hi
; 
C - - - - - 0x01D325 07:D315: 18        CLC
C - - - - - 0x01D326 07:D316: 65 80     ADC ram_0080_t03_ptr_lo
C - - - - - 0x01D328 07:D318: 85 5F     STA ram_005F_t09_data
C - - - - - 0x01D32A 07:D31A: A5 81     LDA ram_0081_t03_ptr_hi
C - - - - - 0x01D32C 07:D31C: 65 6E     ADC ram_006E_t05_data_ptr_hi
C - - - - - 0x01D32E 07:D31E: 85 60     STA ram_005F_t09_data + $01
C - - - - - 0x01D330 07:D320: A9 03     LDA #$03
C - - - - - 0x01D332 07:D322: 85 6E     STA ram_006E_t06_data_index
bra_D324_loop:
C - - - - - 0x01D334 07:D324: A4 6E     LDY ram_006E_t06_data_index
C - - - - - 0x01D336 07:D326: B1 5F     LDA (ram_005F_t09_data),Y
C - - - - - 0x01D338 07:D328: 85 6F     STA ram_006F_t07
C - - - - - 0x01D33A 07:D32A: B9 09 D2  LDA tbl_D209_metatile_ppu_address_offset,Y
C - - - - - 0x01D33D 07:D32D: 18        CLC
C - - - - - 0x01D33E 07:D32E: 65 5D     ADC ram_005D_t27_ppu_lo
C - - - - - 0x01D340 07:D330: A8        TAY
C - - - - - 0x01D341 07:D331: A5 5E     LDA ram_005E_t03_ppu_hi
C - - - - - 0x01D343 07:D333: 69 00     ADC #$00
C - - - - - 0x01D345 07:D335: AA        TAX
C - - - - - 0x01D346 07:D336: 20 DD E0  JSR sub_E0DD_set_ppu_address
C - - - - - 0x01D349 07:D339: A5 6F     LDA ram_006F_t07
C - - - - - 0x01D34B 07:D33B: 8D 07 20  STA $2007
C - - - - - 0x01D34E 07:D33E: C6 6E     DEC ram_006E_t06_data_index
C - - - - - 0x01D350 07:D340: 10 E2     BPL bra_D324_loop
; bzk optimize, JMP
C - - - - - 0x01D352 07:D342: 20 46 D3  JSR sub_D346_write_attrubute_to_buffer
C - - - - - 0x01D355 07:D345: 60        RTS



sub_D346_write_attrubute_to_buffer:
; in
    ; ram_006B_t08
    ; ram_006D_t07_attribute
C - - - - - 0x01D356 07:D346: A5 6B     LDA ram_006B_t08
C - - - - - 0x01D358 07:D348: 29 01     AND #$01
C - - - - - 0x01D35A 07:D34A: 85 6E     STA ram_006E_t17
C - - - - - 0x01D35C 07:D34C: A5 6B     LDA ram_006B_t08
C - - - - - 0x01D35E 07:D34E: 29 10     AND #$10
; / 08
C - - - - - 0x01D360 07:D350: 4A        LSR
C - - - - - 0x01D361 07:D351: 4A        LSR
C - - - - - 0x01D362 07:D352: 4A        LSR
; 
C - - - - - 0x01D363 07:D353: 18        CLC
C - - - - - 0x01D364 07:D354: 65 6E     ADC ram_006E_t17
C - - - - - 0x01D366 07:D356: 85 6E     STA ram_006E_t18_table_index
C - - - - - 0x01D368 07:D358: A8        TAY
C - - - - - 0x01D369 07:D359: F0 09     BEQ bra_D364
C - - - - - 0x01D36B 07:D35B: A5 6D     LDA ram_006D_t07_attribute
bra_D35D_loop:
; * 04
C - - - - - 0x01D36D 07:D35D: 0A        ASL
C - - - - - 0x01D36E 07:D35E: 0A        ASL
; 
C - - - - - 0x01D36F 07:D35F: 88        DEY
C - - - - - 0x01D370 07:D360: D0 FB     BNE bra_D35D_loop
C - - - - - 0x01D372 07:D362: 85 6D     STA ram_006D_t07_attribute
bra_D364:
C - - - - - 0x01D374 07:D364: A5 6B     LDA ram_006B_t08
C - - - - - 0x01D376 07:D366: 29 0F     AND #$0F
C - - - - - 0x01D378 07:D368: 4A        LSR
C - - - - - 0x01D379 07:D369: 85 6F     STA ram_006F_t06
C - - - - - 0x01D37B 07:D36B: A5 6B     LDA ram_006B_t08
C - - - - - 0x01D37D 07:D36D: 29 E0     AND #$E0
; / 04
C - - - - - 0x01D37F 07:D36F: 4A        LSR
C - - - - - 0x01D380 07:D370: 4A        LSR
; 
C - - - - - 0x01D381 07:D371: 18        CLC
C - - - - - 0x01D382 07:D372: 65 6F     ADC ram_006F_t06
C - - - - - 0x01D384 07:D374: AA        TAX
C - - - - - 0x01D385 07:D375: A4 6E     LDY ram_006E_t18_table_index
C - - - - - 0x01D387 07:D377: B9 5C D2  LDA tbl_D25C_attribute,Y
C - - - - - 0x01D38A 07:D37A: 3D 00 02  AND ram_attr_buffer,X
C - - - - - 0x01D38D 07:D37D: 05 6D     ORA ram_006D_t07_attribute
C - - - - - 0x01D38F 07:D37F: 9D 00 02  STA ram_attr_buffer,X
C - - - - - 0x01D392 07:D382: 60        RTS



sub_D383:
C - - - - - 0x01D393 07:D383: AD C7 05  LDA ram_05C7_flags
C - - - - - 0x01D396 07:D386: 10 13     BPL bra_D39B_RTS
C - - - - - 0x01D398 07:D388: A5 9D     LDA ram_prg_bank_A000
C - - - - - 0x01D39A 07:D38A: 48        PHA
C - - - - - 0x01D39B 07:D38B: A9 0C     LDA #con_prg_bank + $0C
C - - - - - 0x01D39D 07:D38D: 85 9D     STA ram_prg_bank_A000
C - - - - - 0x01D39F 07:D38F: 20 58 DB  JSR sub_DB58_prg_bankswitch_A000
C - - - - - 0x01D3A2 07:D392: 20 21 A0  JSR sub_0x018031
C - - - - - 0x01D3A5 07:D395: 68        PLA
C - - - - - 0x01D3A6 07:D396: 85 9D     STA ram_prg_bank_A000
; bzk optimize, JMP
C - - - - - 0x01D3A8 07:D398: 20 58 DB  JSR sub_DB58_prg_bankswitch_A000
bra_D39B_RTS:
C - - - - - 0x01D3AB 07:D39B: 60        RTS



sub_D39C:
C - - - - - 0x01D3AC 07:D39C: A5 9D     LDA ram_prg_bank_A000
C - - - - - 0x01D3AE 07:D39E: 48        PHA
C - - - - - 0x01D3AF 07:D39F: A9 0C     LDA #con_prg_bank + $0C
C - - - - - 0x01D3B1 07:D3A1: 85 9D     STA ram_prg_bank_A000
C - - - - - 0x01D3B3 07:D3A3: 20 58 DB  JSR sub_DB58_prg_bankswitch_A000
C - - - - - 0x01D3B6 07:D3A6: 20 24 A0  JSR sub_0x018034
C - - - - - 0x01D3B9 07:D3A9: 68        PLA
C - - - - - 0x01D3BA 07:D3AA: 85 9D     STA ram_prg_bank_A000
; bzk optimize, JMP
C - - - - - 0x01D3BC 07:D3AC: 20 58 DB  JSR sub_DB58_prg_bankswitch_A000
C - - - - - 0x01D3BF 07:D3AF: 60        RTS



sub_D3B0:
C - - - - - 0x01D3C0 07:D3B0: AD F2 03  LDA ram_03F2_counter
C - - - - - 0x01D3C3 07:D3B3: F0 0E     BEQ bra_D3C3_RTS
C - - - - - 0x01D3C5 07:D3B5: 85 67     STA ram_0067_t6C_counter
C - - - - - 0x01D3C7 07:D3B7: A2 00     LDX #$00
bra_D3B9_loop:
C - - - - - 0x01D3C9 07:D3B9: BD 87 05  LDA ram_0587_obj,X
C - - - - - 0x01D3CC 07:D3BC: 30 06     BMI bra_D3C4
bra_D3BE:
C - - - - - 0x01D3CE 07:D3BE: E8        INX
C - - - - - 0x01D3CF 07:D3BF: E0 0A     CPX #$0A
C - - - - - 0x01D3D1 07:D3C1: 90 F6     BCC bra_D3B9_loop
bra_D3C3_RTS:
C - - - - - 0x01D3D3 07:D3C3: 60        RTS
bra_D3C4:
C - - - - - 0x01D3D4 07:D3C4: BD 87 05  LDA ram_0587_obj,X
C - - - - - 0x01D3D7 07:D3C7: 29 70     AND #$70
C - - - - - 0x01D3D9 07:D3C9: C9 70     CMP #$70
C - - - - - 0x01D3DB 07:D3CB: F0 F1     BEQ bra_D3BE
C - - - - - 0x01D3DD 07:D3CD: A5 D4     LDA ram_00D4_t01_spd_Y_lo
C - - - - - 0x01D3DF 07:D3CF: 18        CLC
C - - - - - 0x01D3E0 07:D3D0: 7D 9B 05  ADC ram_059B_obj_spr_Y,X
C - - - - - 0x01D3E3 07:D3D3: 9D 9B 05  STA ram_059B_obj_spr_Y,X
; bzk optimize, useless STA
C - - - - - 0x01D3E6 07:D3D6: 85 6C     STA ram_006C_tFB_useless
; 
C - - - - - 0x01D3E8 07:D3D8: A5 D3     LDA ram_00D3_t02_spd_Y_hi
C - - - - - 0x01D3EA 07:D3DA: 69 00     ADC #$00
C - - - - - 0x01D3EC 07:D3DC: D0 1A     BNE bra_D3F8
C - - - - - 0x01D3EE 07:D3DE: A5 D6     LDA ram_00D6_t01_spd_X_lo
C - - - - - 0x01D3F0 07:D3E0: 18        CLC
C - - - - - 0x01D3F1 07:D3E1: 7D 91 05  ADC ram_0591_obj_spr_X,X
C - - - - - 0x01D3F4 07:D3E4: 9D 91 05  STA ram_0591_obj_spr_X,X
; bzk optimize, useless STA
C - - - - - 0x01D3F7 07:D3E7: 85 6B     STA ram_006B_tFE_useless
; 
C - - - - - 0x01D3F9 07:D3E9: A5 D5     LDA ram_00D5_t01_spd_X_hi
C - - - - - 0x01D3FB 07:D3EB: 69 00     ADC #$00
C - - - - - 0x01D3FD 07:D3ED: D0 09     BNE bra_D3F8
C - - - - - 0x01D3FF 07:D3EF: 20 03 D4  JSR sub_D403
loc_D3F2_loop:
C D 2 - - - 0x01D402 07:D3F2: C6 67     DEC ram_0067_t6C_counter
C - - - - - 0x01D404 07:D3F4: D0 C8     BNE bra_D3BE
; bzk optimize, RTS
C - - - - - 0x01D406 07:D3F6: F0 CB     BEQ bra_D3C3_RTS    ; jmp
bra_D3F8:
C - - - - - 0x01D408 07:D3F8: A9 00     LDA #$00
C - - - - - 0x01D40A 07:D3FA: 9D 87 05  STA ram_0587_obj,X
C - - - - - 0x01D40D 07:D3FD: CE F2 03  DEC ram_03F2_counter
C - - - - - 0x01D410 07:D400: 4C F2 D3  JMP loc_D3F2_loop



sub_D403:
C - - - - - 0x01D413 07:D403: BD 87 05  LDA ram_0587_obj,X
C - - - - - 0x01D416 07:D406: 48        PHA
C - - - - - 0x01D417 07:D407: 29 70     AND #$70
C - - - - - 0x01D419 07:D409: 85 69     STA ram_0069_t30
C - - - - - 0x01D41B 07:D40B: 68        PLA
C - - - - - 0x01D41C 07:D40C: 29 0F     AND #$0F
C - - - - - 0x01D41E 07:D40E: 38        SEC
C - - - - - 0x01D41F 07:D40F: E9 01     SBC #$01
C - - - - - 0x01D421 07:D411: F0 0F     BEQ bra_D422
C - - - - - 0x01D423 07:D413: 85 68     STA ram_0068_t51
bra_D415:
C - - - - - 0x01D425 07:D415: BD 87 05  LDA ram_0587_obj,X
C - - - - - 0x01D428 07:D418: 29 80     AND #$80
C - - - - - 0x01D42A 07:D41A: 05 68     ORA ram_0068_t51
C - - - - - 0x01D42C 07:D41C: 05 69     ORA ram_0069_t30
C - - - - - 0x01D42E 07:D41E: 9D 87 05  STA ram_0587_obj,X
C - - - - - 0x01D431 07:D421: 60        RTS
bra_D422:
C - - - - - 0x01D432 07:D422: BD 87 05  LDA ram_0587_obj,X
C - - - - - 0x01D435 07:D425: 29 70     AND #$70
C - - - - - 0x01D437 07:D427: C9 30     CMP #$30
C - - - - - 0x01D439 07:D429: B0 04     BCS bra_D42F
C - - - - - 0x01D43B 07:D42B: A9 04     LDA #$04
C - - - - - 0x01D43D 07:D42D: D0 02     BNE bra_D431    ; jmp
bra_D42F:
C - - - - - 0x01D43F 07:D42F: A9 0F     LDA #$0F
bra_D431:
C - - - - - 0x01D441 07:D431: 85 68     STA ram_0068_t51
C - - - - - 0x01D443 07:D433: A5 69     LDA ram_0069_t30
C - - - - - 0x01D445 07:D435: 18        CLC
C - - - - - 0x01D446 07:D436: 69 10     ADC #$10
C - - - - - 0x01D448 07:D438: C9 30     CMP #$30
C - - - - - 0x01D44A 07:D43A: F0 04     BEQ bra_D440
C - - - - - 0x01D44C 07:D43C: 85 69     STA ram_0069_t30
C - - - - - 0x01D44E 07:D43E: D0 D5     BNE bra_D415    ; jmp
bra_D440:
C - - - - - 0x01D450 07:D440: A9 00     LDA #$00
C - - - - - 0x01D452 07:D442: 9D 87 05  STA ram_0587_obj,X
C - - - - - 0x01D455 07:D445: CE F2 03  DEC ram_03F2_counter
C - - - - - 0x01D458 07:D448: 60        RTS



sub_D449:
loc_D449:
; in
    ; ram_0067_t0B_pos_X_hi
    ; ram_0068_t06_pos_X_lo
    ; ram_0069_t15_pos_Y_hi
    ; ram_006A_t04_pos_Y_lo
C D 2 - - - 0x01D459 07:D449: 8A        TXA
C - - - - - 0x01D45A 07:D44A: 48        PHA
C - - - - - 0x01D45B 07:D44B: 98        TYA
C - - - - - 0x01D45C 07:D44C: 48        PHA
C - - - - - 0x01D45D 07:D44D: AD F2 03  LDA ram_03F2_counter
C - - - - - 0x01D460 07:D450: C9 0A     CMP #$0A
C - - - - - 0x01D462 07:D452: B0 12     BCS bra_D466
C - - - - - 0x01D464 07:D454: A5 67     LDA ram_0067_t0B_pos_X_hi
C - - - - - 0x01D466 07:D456: 05 69     ORA ram_0069_t15_pos_Y_hi
C - - - - - 0x01D468 07:D458: D0 0C     BNE bra_D466
C - - - - - 0x01D46A 07:D45A: A2 00     LDX #$00
bra_D45C:
C - - - - - 0x01D46C 07:D45C: BD 87 05  LDA ram_0587_obj,X
C - - - - - 0x01D46F 07:D45F: 10 0A     BPL bra_D46B
C - - - - - 0x01D471 07:D461: E8        INX
C - - - - - 0x01D472 07:D462: E0 0A     CPX #$0A
C - - - - - 0x01D474 07:D464: 90 F6     BCC bra_D45C
bra_D466:
C - - - - - 0x01D476 07:D466: 68        PLA
C - - - - - 0x01D477 07:D467: A8        TAY
C - - - - - 0x01D478 07:D468: 68        PLA
C - - - - - 0x01D479 07:D469: AA        TAX
C - - - - - 0x01D47A 07:D46A: 60        RTS
bra_D46B:
C - - - - - 0x01D47B 07:D46B: A5 68     LDA ram_0068_t06_pos_X_lo
C - - - - - 0x01D47D 07:D46D: 9D 91 05  STA ram_0591_obj_spr_X,X
C - - - - - 0x01D480 07:D470: A5 6A     LDA ram_006A_t04_pos_Y_lo
C - - - - - 0x01D482 07:D472: 9D 9B 05  STA ram_059B_obj_spr_Y,X
C - - - - - 0x01D485 07:D475: A9 85     LDA #$85
C - - - - - 0x01D487 07:D477: 9D 87 05  STA ram_0587_obj,X
C - - - - - 0x01D48A 07:D47A: EE F2 03  INC ram_03F2_counter
C - - - - - 0x01D48D 07:D47D: D0 E7     BNE bra_D466    ; jmp?



sub_D47F:
C - - - - - 0x01D48F 07:D47F: A5 D9     LDA ram_00D9_array_index
C - - - - - 0x01D491 07:D481: F0 18     BEQ bra_D49B_RTS
C - - - - - 0x01D493 07:D483: 30 16     BMI bra_D49B_RTS
C - - - - - 0x01D495 07:D485: AD FC 03  LDA ram_03FC
C - - - - - 0x01D498 07:D488: 10 11     BPL bra_D49B_RTS
C - - - - - 0x01D49A 07:D48A: 29 0F     AND #$0F
C - - - - - 0x01D49C 07:D48C: 0A        ASL
C - - - - - 0x01D49D 07:D48D: AA        TAX
C - - - - - 0x01D49E 07:D48E: BD 9C D4  LDA tbl_D49C,X
C - - - - - 0x01D4A1 07:D491: 85 5B     STA ram_005B_t4A_jmp
C - - - - - 0x01D4A3 07:D493: BD 9D D4  LDA tbl_D49C + $01,X
C - - - - - 0x01D4A6 07:D496: 85 5C     STA ram_005B_t4A_jmp + $01
C - - - - - 0x01D4A8 07:D498: 6C 5B 00  JMP (ram_005B_t4A_jmp)
bra_D49B_RTS:
C - - - - - 0x01D4AB 07:D49B: 60        RTS



tbl_D49C:
- D 2 - - - 0x01D4AC 07:D49C: A2 D4     .word ofs_013_D4A2_00
- D 2 - - - 0x01D4AE 07:D49E: C6 D4     .word ofs_013_D4C6_01
- D 2 - - - 0x01D4B0 07:D4A0: DA D4     .word ofs_013_D4DA_02



ofs_013_D4A2_00:
C - - J - - 0x01D4B2 07:D4A2: AD FD 03  LDA ram_03FD_t02_handler_index
C - - - - - 0x01D4B5 07:D4A5: 0A        ASL
C - - - - - 0x01D4B6 07:D4A6: AA        TAX
C - - - - - 0x01D4B7 07:D4A7: BD B4 D4  LDA tbl_D4B4,X
C - - - - - 0x01D4BA 07:D4AA: 85 5B     STA ram_005B_t49_jmp
C - - - - - 0x01D4BC 07:D4AC: BD B5 D4  LDA tbl_D4B4 + $01,X
C - - - - - 0x01D4BF 07:D4AF: 85 5C     STA ram_005B_t49_jmp + $01
C - - - - - 0x01D4C1 07:D4B1: 6C 5B 00  JMP (ram_005B_t49_jmp)



tbl_D4B4:
- D 2 - - - 0x01D4C4 07:D4B4: F8 D4     .word ofs_012_D4F8_00
- D 2 - - - 0x01D4C6 07:D4B6: 23 D5     .word ofs_012_D523_01
- D 2 - - - 0x01D4C8 07:D4B8: 3F D5     .word ofs_012_D53F_02
- D 2 - - - 0x01D4CA 07:D4BA: 45 D5     .word ofs_012_D545_03
- D 2 - - - 0x01D4CC 07:D4BC: 8B D5     .word ofs_012_D58B_04
- D 2 - - - 0x01D4CE 07:D4BE: 55 D6     .word ofs_012_D655_05
- D 2 - - - 0x01D4D0 07:D4C0: 8B D6     .word ofs_012_D68B_06
- D 2 - - - 0x01D4D2 07:D4C2: C0 D6     .word ofs_012_D6C0_07
- D 2 - - - 0x01D4D4 07:D4C4: 3C D7     .word ofs_012_D73C_08



ofs_013_D4C6_01:
C - - J - - 0x01D4D6 07:D4C6: A5 9D     LDA ram_prg_bank_A000
C - - - - - 0x01D4D8 07:D4C8: 48        PHA
C - - - - - 0x01D4D9 07:D4C9: A9 08     LDA #con_prg_bank + $08
C - - - - - 0x01D4DB 07:D4CB: 85 9D     STA ram_prg_bank_A000
C - - - - - 0x01D4DD 07:D4CD: 20 58 DB  JSR sub_DB58_prg_bankswitch_A000
C - - - - - 0x01D4E0 07:D4D0: 20 0F A0  JSR sub_0x01001F
C - - - - - 0x01D4E3 07:D4D3: 68        PLA
C - - - - - 0x01D4E4 07:D4D4: 85 9D     STA ram_prg_bank_A000
; bzk optimize, JMP
C - - - - - 0x01D4E6 07:D4D6: 20 58 DB  JSR sub_DB58_prg_bankswitch_A000
C - - - - - 0x01D4E9 07:D4D9: 60        RTS



ofs_013_D4DA_02:
C - - J - - 0x01D4EA 07:D4DA: A9 80     LDA #$80
C - - - - - 0x01D4EC 07:D4DC: 85 DB     STA ram_00DB_flag
C - - - - - 0x01D4EE 07:D4DE: A5 9D     LDA ram_prg_bank_A000
C - - - - - 0x01D4F0 07:D4E0: 48        PHA
C - - - - - 0x01D4F1 07:D4E1: A9 0A     LDA #con_prg_bank + $0A
C - - - - - 0x01D4F3 07:D4E3: 85 9D     STA ram_prg_bank_A000
C - - - - - 0x01D4F5 07:D4E5: 20 58 DB  JSR sub_DB58_prg_bankswitch_A000
C - - - - - 0x01D4F8 07:D4E8: 20 00 A0  JSR sub_0x014010
C - - - - - 0x01D4FB 07:D4EB: 68        PLA
C - - - - - 0x01D4FC 07:D4EC: 85 9D     STA ram_prg_bank_A000
C - - - - - 0x01D4FE 07:D4EE: 20 58 DB  JSR sub_DB58_prg_bankswitch_A000
C - - - - - 0x01D501 07:D4F1: A5 D9     LDA ram_00D9_array_index
C - - - - - 0x01D503 07:D4F3: 09 80     ORA #$80
C - - - - - 0x01D505 07:D4F5: 85 D9     STA ram_00D9_array_index
C - - - - - 0x01D507 07:D4F7: 60        RTS



ofs_012_D4F8_00:
; con_03FD_00
C - - J - - 0x01D508 07:D4F8: AD C2 05  LDA ram_05C2_handler
C - - - - - 0x01D50B 07:D4FB: D0 25     BNE bra_D522_RTS
; if con_05C2_00
C - - - - - 0x01D50D 07:D4FD: A9 01     LDA #con_000D_01
C - - - - - 0x01D50F 07:D4FF: 85 0D     STA ram_000D_spr_pal_index
C - - - - - 0x01D511 07:D501: 20 1C DA  JSR sub_DA1C_prepare_background_and_sprite_palette
C - - - - - 0x01D514 07:D504: A9 20     LDA #$20    ; background + sprite colors
C - - - - - 0x01D516 07:D506: 85 4F     STA ram_004F_pal_buffer_size
C - - - - - 0x01D518 07:D508: A9 01     LDA #con_buffer_ready_palette
C - - - - - 0x01D51A 07:D50A: 85 02     STA ram_buffers_flags
C - - - - - 0x01D51C 07:D50C: AD FC 03  LDA ram_03FC
C - - - - - 0x01D51F 07:D50F: 29 10     AND #$10
C - - - - - 0x01D521 07:D511: D0 07     BNE bra_D51A
C - - - - - 0x01D523 07:D513: A9 01     LDA #con_sfx_disable_se_1
C - - - - - 0x01D525 07:D515: 85 77     STA ram_0077_t03_sound_id
C - - - - - 0x01D527 07:D517: 20 04 CB  JSR sub_CB04_play_sound
bra_D51A:
C - - - - - 0x01D52A 07:D51A: A9 80     LDA #$80
C - - - - - 0x01D52C 07:D51C: 8D FF 03  STA ram_03FF_t02_delay
C - - - - - 0x01D52F 07:D51F: EE FD 03  INC ram_03FD_t02_handler_index  ; -> con_03FD_01
bra_D522_RTS:
C - - - - - 0x01D532 07:D522: 60        RTS



ofs_012_D523_01:
; con_03FD_01
C - - J - - 0x01D533 07:D523: CE FF 03  DEC ram_03FF_t02_delay
C - - - - - 0x01D536 07:D526: D0 16     BNE bra_D53E_RTS
bra_D528:
C - - - - - 0x01D538 07:D528: A9 03     LDA #con_05C2_03
C - - - - - 0x01D53A 07:D52A: 8D C2 05  STA ram_05C2_handler
C - - - - - 0x01D53D 07:D52D: A9 00     LDA #$00
C - - - - - 0x01D53F 07:D52F: 8D C3 05  STA ram_05C3_t04_counter
; bzk optimize, useless STA + STA
C - - - - - 0x01D542 07:D532: 8D C4 05  STA ram_05C4_tFF_useless
C - - - - - 0x01D545 07:D535: 8D C5 05  STA ram_05C5_tFF_useless
; 
C - - - - - 0x01D548 07:D538: 8D C6 05  STA ram_05C6_useless
C - - - - - 0x01D54B 07:D53B: EE FD 03  INC ram_03FD_t02_handler_index  ; -> con_03FD_02 / con_03FD_03
bra_D53E_RTS:
C - - - - - 0x01D54E 07:D53E: 60        RTS



ofs_012_D53F_02:
; con_03FD_02
C - - J - - 0x01D54F 07:D53F: AD C2 05  LDA ram_05C2_handler
C - - - - - 0x01D552 07:D542: F0 E4     BEQ bra_D528    ; if con_05C2_00
C - - - - - 0x01D554 07:D544: 60        RTS



ofs_012_D545_03:
; con_03FD_03
C - - J - - 0x01D555 07:D545: AD C2 05  LDA ram_05C2_handler
C - - - - - 0x01D558 07:D548: D0 3C     BNE bra_D586_RTS
; if con_05C2_00
C - - - - - 0x01D55A 07:D54A: AE FE 03  LDX ram_03FE_table_index
C - - - - - 0x01D55D 07:D54D: BD 87 D5  LDA tbl_D587,X
C - - - - - 0x01D560 07:D550: 8D EF 03  STA ram_03EF_pos_X_lo
C - - - - - 0x01D563 07:D553: A9 00     LDA #$00
C - - - - - 0x01D565 07:D555: 8D EE 03  STA ram_03EE_useless
C - - - - - 0x01D568 07:D558: 8D F0 03  STA ram_03F0_useless
C - - - - - 0x01D56B 07:D55B: A9 14     LDA #$14
C - - - - - 0x01D56D 07:D55D: 8D F1 03  STA ram_03F1_pos_Y_lo
C - - - - - 0x01D570 07:D560: A9 20     LDA #$20
C - - - - - 0x01D572 07:D562: 85 6F     STA ram_006F_t01_shot_id
C - - - - - 0x01D574 07:D564: A5 9D     LDA ram_prg_bank_A000
C - - - - - 0x01D576 07:D566: 48        PHA
C - - - - - 0x01D577 07:D567: A9 08     LDA #con_prg_bank + $08
C - - - - - 0x01D579 07:D569: 85 9D     STA ram_prg_bank_A000
C - - - - - 0x01D57B 07:D56B: 20 58 DB  JSR sub_DB58_prg_bankswitch_A000
C - - - - - 0x01D57E 07:D56E: 20 09 A0  JSR sub_0x010019_shot_handler
C - - - - - 0x01D581 07:D571: 68        PLA
C - - - - - 0x01D582 07:D572: 85 9D     STA ram_prg_bank_A000
C - - - - - 0x01D584 07:D574: 20 58 DB  JSR sub_DB58_prg_bankswitch_A000
C - - - - - 0x01D587 07:D577: A9 05     LDA #con_sfx_lightning
C - - - - - 0x01D589 07:D579: 85 77     STA ram_0077_t03_sound_id
C - - - - - 0x01D58B 07:D57B: 20 04 CB  JSR sub_CB04_play_sound
C - - - - - 0x01D58E 07:D57E: A9 00     LDA #$00
C - - - - - 0x01D590 07:D580: 8D FF 03  STA ram_03FF_t01
C - - - - - 0x01D593 07:D583: EE FD 03  INC ram_03FD_t02_handler_index  ; -> con_03FD_04
bra_D586_RTS:
C - - - - - 0x01D596 07:D586: 60        RTS



tbl_D587:
- D 2 - - - 0x01D597 07:D587: 38        .byte $38   ; 00 
- D 2 - - - 0x01D598 07:D588: C0        .byte $C0   ; 01 
- D 2 - - - 0x01D599 07:D589: 68        .byte $68   ; 02 
- D 2 - - - 0x01D59A 07:D58A: 90        .byte $90   ; 03 



ofs_012_D58B_04:
; con_03FD_04
C - - J - - 0x01D59B 07:D58B: A5 CB     LDA ram_00CB_t01
C - - - - - 0x01D59D 07:D58D: F0 03     BEQ bra_D592
C - - - - - 0x01D59F 07:D58F: 4C 24 D6  JMP loc_D624_RTS
bra_D592:
C - - - - - 0x01D5A2 07:D592: AD FF 03  LDA ram_03FF_t01
C - - - - - 0x01D5A5 07:D595: 30 29     BMI bra_D5C0
C - - - - - 0x01D5A7 07:D597: AE FE 03  LDX ram_03FE_table_index
C - - - - - 0x01D5AA 07:D59A: BD 25 D6  LDA tbl_D625,X
C - - - - - 0x01D5AD 07:D59D: 8D C7 05  STA ram_05C7_flags
C - - - - - 0x01D5B0 07:D5A0: 9D B1 05  STA ram_05B1_array,X
C - - - - - 0x01D5B3 07:D5A3: A9 00     LDA #$00
C - - - - - 0x01D5B5 07:D5A5: 8D C8 05  STA ram_05C8_t01_data_index
C - - - - - 0x01D5B8 07:D5A8: 8D C9 05  STA ram_05C9_t01_timer
C - - - - - 0x01D5BB 07:D5AB: 8D CA 05  STA ram_05CA_t02_flag
C - - - - - 0x01D5BE 07:D5AE: 8D CB 05  STA ram_05CB_t02_nametable
C - - - - - 0x01D5C1 07:D5B1: A9 81     LDA #$81
C - - - - - 0x01D5C3 07:D5B3: 8D F3 03  STA ram_03F3
C - - - - - 0x01D5C6 07:D5B6: A9 02     LDA #$02
C - - - - - 0x01D5C8 07:D5B8: 8D F4 03  STA ram_03F4
C - - - - - 0x01D5CB 07:D5BB: A9 80     LDA #$80
C - - - - - 0x01D5CD 07:D5BD: 8D FF 03  STA ram_03FF_t01
bra_D5C0:
C - - - - - 0x01D5D0 07:D5C0: AD FF 03  LDA ram_03FF_t01
C - - - - - 0x01D5D3 07:D5C3: 29 0F     AND #$0F
C - - - - - 0x01D5D5 07:D5C5: F0 11     BEQ bra_D5D8
C - - - - - 0x01D5D7 07:D5C7: 38        SEC
C - - - - - 0x01D5D8 07:D5C8: E9 01     SBC #$01
C - - - - - 0x01D5DA 07:D5CA: 85 67     STA ram_0067_t6D
C - - - - - 0x01D5DC 07:D5CC: AD FF 03  LDA ram_03FF_t01
C - - - - - 0x01D5DF 07:D5CF: 29 F0     AND #$F0
C - - - - - 0x01D5E1 07:D5D1: 05 67     ORA ram_0067_t6D
C - - - - - 0x01D5E3 07:D5D3: 8D FF 03  STA ram_03FF_t01
C - - - - - 0x01D5E6 07:D5D6: D0 4C     BNE bra_D624_RTS
bra_D5D8:
C - - - - - 0x01D5E8 07:D5D8: AD FE 03  LDA ram_03FE_table_index
C - - - - - 0x01D5EB 07:D5DB: A8        TAY
C - - - - - 0x01D5EC 07:D5DC: 0A        ASL
C - - - - - 0x01D5ED 07:D5DD: AA        TAX
C - - - - - 0x01D5EE 07:D5DE: BD 29 D6  LDA tbl_D629,X
C - - - - - 0x01D5F1 07:D5E1: 85 5B     STA ram_005B_t18_data
C - - - - - 0x01D5F3 07:D5E3: BD 2A D6  LDA tbl_D629 + $01,X
C - - - - - 0x01D5F6 07:D5E6: 85 5C     STA ram_005B_t18_data + $01
C - - - - - 0x01D5F8 07:D5E8: B9 51 D6  LDA tbl_D651,Y
C - - - - - 0x01D5FB 07:D5EB: 85 6C     STA ram_006C_t24
C - - - - - 0x01D5FD 07:D5ED: AD FF 03  LDA ram_03FF_t01
C - - - - - 0x01D600 07:D5F0: 29 30     AND #$30
C - - - - - 0x01D602 07:D5F2: 48        PHA
; / 08
C - - - - - 0x01D603 07:D5F3: 4A        LSR
C - - - - - 0x01D604 07:D5F4: 4A        LSR
C - - - - - 0x01D605 07:D5F5: 4A        LSR
; 
C - - - - - 0x01D606 07:D5F6: A8        TAY
C - - - - - 0x01D607 07:D5F7: B1 5B     LDA (ram_005B_t18_data),Y
C - - - - - 0x01D609 07:D5F9: 85 6A     STA ram_006A_t04_pos_Y_lo
C - - - - - 0x01D60B 07:D5FB: C8        INY
C - - - - - 0x01D60C 07:D5FC: B1 5B     LDA (ram_005B_t18_data),Y
C - - - - - 0x01D60E 07:D5FE: 85 68     STA ram_0068_t06_pos_X_lo
C - - - - - 0x01D610 07:D600: A9 00     LDA #$00
C - - - - - 0x01D612 07:D602: 85 67     STA ram_0067_t0B_pos_X_hi
C - - - - - 0x01D614 07:D604: 85 69     STA ram_0069_t15_pos_Y_hi
C - - - - - 0x01D616 07:D606: 20 49 D4  JSR sub_D449
C - - - - - 0x01D619 07:D609: 68        PLA
C - - - - - 0x01D61A 07:D60A: 18        CLC
C - - - - - 0x01D61B 07:D60B: 69 10     ADC #$10
C - - - - - 0x01D61D 07:D60D: C9 40     CMP #$40
C - - - - - 0x01D61F 07:D60F: F0 10     BEQ bra_D621
C - - - - - 0x01D621 07:D611: 85 67     STA ram_0067_t6E
C - - - - - 0x01D623 07:D613: AD FF 03  LDA ram_03FF_t01
C - - - - - 0x01D626 07:D616: 29 80     AND #$80
C - - - - - 0x01D628 07:D618: 05 67     ORA ram_0067_t6E
C - - - - - 0x01D62A 07:D61A: 05 6C     ORA ram_006C_t24
C - - - - - 0x01D62C 07:D61C: 8D FF 03  STA ram_03FF_t01
; bzk optimize, RTS
C - - - - - 0x01D62F 07:D61F: D0 03     BNE bra_D624_RTS    ; jmp (006C always > 00)
bra_D621:
C - - - - - 0x01D631 07:D621: EE FD 03  INC ram_03FD_t02_handler_index  ; -> con_03FD_05
bra_D624_RTS:
loc_D624_RTS:   ; bzk optimize
C D 2 - - - 0x01D634 07:D624: 60        RTS



tbl_D625:
;                                              +----------- 
;                                              |     +----- 
;                                              |     |
- D 2 - - - 0x01D635 07:D625: 86        .byte $80 + $06   ; 00 
- D 2 - - - 0x01D636 07:D626: 87        .byte $80 + $07   ; 01 
- D 2 - - - 0x01D637 07:D627: 88        .byte $80 + $08   ; 02 
- D 2 - - - 0x01D638 07:D628: 89        .byte $80 + $09   ; 03 



tbl_D629:
- D 2 - - - 0x01D639 07:D629: 31 D6     .word _off014_D631_00
- D 2 - - - 0x01D63B 07:D62B: 39 D6     .word _off014_D639_01
- D 2 - - - 0x01D63D 07:D62D: 41 D6     .word _off014_D641_02
- D 2 - - - 0x01D63F 07:D62F: 49 D6     .word _off014_D649_03



_off014_D631_00:
- D 2 - I - 0x01D641 07:D631: 40        .byte $40   ; 
- D 2 - I - 0x01D642 07:D632: 30        .byte $30   ; 
- D 2 - I - 0x01D643 07:D633: 50        .byte $50   ; 
- D 2 - I - 0x01D644 07:D634: 40        .byte $40   ; 
- D 2 - I - 0x01D645 07:D635: 58        .byte $58   ; 
- D 2 - I - 0x01D646 07:D636: 28        .byte $28   ; 
- D 2 - I - 0x01D647 07:D637: 60        .byte $60   ; 
- D 2 - I - 0x01D648 07:D638: 40        .byte $40   ; 



_off014_D639_01:
- D 2 - I - 0x01D649 07:D639: 60        .byte $60   ; 
- D 2 - I - 0x01D64A 07:D63A: B8        .byte $B8   ; 
- D 2 - I - 0x01D64B 07:D63B: 68        .byte $68   ; 
- D 2 - I - 0x01D64C 07:D63C: C0        .byte $C0   ; 
- D 2 - I - 0x01D64D 07:D63D: 78        .byte $78   ; 
- D 2 - I - 0x01D64E 07:D63E: B2        .byte $B2   ; 
- D 2 - I - 0x01D64F 07:D63F: 80        .byte $80   ; 
- D 2 - I - 0x01D650 07:D640: C2        .byte $C2   ; 



_off014_D641_02:
- D 2 - I - 0x01D651 07:D641: 50        .byte $50   ; 
- D 2 - I - 0x01D652 07:D642: 5C        .byte $5C   ; 
- D 2 - I - 0x01D653 07:D643: 58        .byte $58   ; 
- D 2 - I - 0x01D654 07:D644: 70        .byte $70   ; 
- D 2 - I - 0x01D655 07:D645: 70        .byte $70   ; 
- D 2 - I - 0x01D656 07:D646: 60        .byte $60   ; 
- D 2 - I - 0x01D657 07:D647: 68        .byte $68   ; 
- D 2 - I - 0x01D658 07:D648: 70        .byte $70   ; 



_off014_D649_03:
- D 2 - I - 0x01D659 07:D649: 60        .byte $60   ; 
- D 2 - I - 0x01D65A 07:D64A: 88        .byte $88   ; 
- D 2 - I - 0x01D65B 07:D64B: 80        .byte $80   ; 
- D 2 - I - 0x01D65C 07:D64C: 98        .byte $98   ; 
- D 2 - I - 0x01D65D 07:D64D: 58        .byte $58   ; 
- D 2 - I - 0x01D65E 07:D64E: 94        .byte $94   ; 
- D 2 - I - 0x01D65F 07:D64F: 80        .byte $80   ; 
- D 2 - I - 0x01D660 07:D650: 88        .byte $88   ; 



tbl_D651:
- D 2 - - - 0x01D661 07:D651: 02        .byte $02   ; 00 
- D 2 - - - 0x01D662 07:D652: 04        .byte $04   ; 01 
- D 2 - - - 0x01D663 07:D653: 03        .byte $03   ; 02 
- D 2 - - - 0x01D664 07:D654: 01        .byte $01   ; 03 



ofs_012_D655_05:
; con_03FD_05
C - - J - - 0x01D665 07:D655: AE FE 03  LDX ram_03FE_table_index
C - - - - - 0x01D668 07:D658: BD 87 D5  LDA tbl_D587,X
C - - - - - 0x01D66B 07:D65B: 8D EF 03  STA ram_03EF_pos_X_lo
C - - - - - 0x01D66E 07:D65E: A9 00     LDA #$00
C - - - - - 0x01D670 07:D660: 8D EE 03  STA ram_03EE_useless
C - - - - - 0x01D673 07:D663: 8D F0 03  STA ram_03F0_useless
C - - - - - 0x01D676 07:D666: BD 87 D6  LDA tbl_D687,X
C - - - - - 0x01D679 07:D669: 8D F1 03  STA ram_03F1_pos_Y_lo
C - - - - - 0x01D67C 07:D66C: A9 21     LDA #$21
C - - - - - 0x01D67E 07:D66E: 85 6F     STA ram_006F_t01_shot_id
C - - - - - 0x01D680 07:D670: A5 9D     LDA ram_prg_bank_A000
C - - - - - 0x01D682 07:D672: 48        PHA
C - - - - - 0x01D683 07:D673: A9 08     LDA #con_prg_bank + $08
C - - - - - 0x01D685 07:D675: 85 9D     STA ram_prg_bank_A000
C - - - - - 0x01D687 07:D677: 20 58 DB  JSR sub_DB58_prg_bankswitch_A000
C - - - - - 0x01D68A 07:D67A: 20 09 A0  JSR sub_0x010019_shot_handler
C - - - - - 0x01D68D 07:D67D: 68        PLA
C - - - - - 0x01D68E 07:D67E: 85 9D     STA ram_prg_bank_A000
C - - - - - 0x01D690 07:D680: 20 58 DB  JSR sub_DB58_prg_bankswitch_A000
C - - - - - 0x01D693 07:D683: EE FD 03  INC ram_03FD_t02_handler_index  ; -> con_03FD_06
C - - - - - 0x01D696 07:D686: 60        RTS



tbl_D687:
- D 2 - - - 0x01D697 07:D687: 48        .byte $48   ; 00 
- D 2 - - - 0x01D698 07:D688: 50        .byte $50   ; 01 
- D 2 - - - 0x01D699 07:D689: 48        .byte $48   ; 02 
- D 2 - - - 0x01D69A 07:D68A: 50        .byte $50   ; 03 



ofs_012_D68B_06:
; con_03FD_06
C - - J - - 0x01D69B 07:D68B: A5 CB     LDA ram_00CB_t01
C - - - - - 0x01D69D 07:D68D: D0 2C     BNE bra_D6BB_RTS
C - - - - - 0x01D69F 07:D68F: AD FC 03  LDA ram_03FC
C - - - - - 0x01D6A2 07:D692: 29 10     AND #$10
C - - - - - 0x01D6A4 07:D694: D0 0F     BNE bra_D6A5
C - - - - - 0x01D6A6 07:D696: AD FC 03  LDA ram_03FC
C - - - - - 0x01D6A9 07:D699: 09 10     ORA #$10
C - - - - - 0x01D6AB 07:D69B: 8D FC 03  STA ram_03FC
C - - - - - 0x01D6AE 07:D69E: A9 26     LDA #con_music_boss_fight
C - - - - - 0x01D6B0 07:D6A0: 85 77     STA ram_0077_t03_sound_id
C - - - - - 0x01D6B2 07:D6A2: 20 04 CB  JSR sub_CB04_play_sound
bra_D6A5:
C - - - - - 0x01D6B5 07:D6A5: AE FE 03  LDX ram_03FE_table_index
C - - - - - 0x01D6B8 07:D6A8: BD BC D6  LDA tbl_D6BC,X
C - - - - - 0x01D6BB 07:D6AB: 85 0D     STA ram_000D_spr_pal_index
C - - - - - 0x01D6BD 07:D6AD: 20 1C DA  JSR sub_DA1C_prepare_background_and_sprite_palette
C - - - - - 0x01D6C0 07:D6B0: A9 20     LDA #$20    ; background + sprite colors
C - - - - - 0x01D6C2 07:D6B2: 85 4F     STA ram_004F_pal_buffer_size
C - - - - - 0x01D6C4 07:D6B4: A9 01     LDA #con_buffer_ready_palette
C - - - - - 0x01D6C6 07:D6B6: 85 02     STA ram_buffers_flags
C - - - - - 0x01D6C8 07:D6B8: EE FD 03  INC ram_03FD_t02_handler_index  ; -> con_03FD_07
bra_D6BB_RTS:
C - - - - - 0x01D6CB 07:D6BB: 60        RTS



tbl_D6BC:
- D 2 - - - 0x01D6CC 07:D6BC: 00        .byte con_000D_00   ; 00 
- D 2 - - - 0x01D6CD 07:D6BD: 08        .byte con_000D_08   ; 01 
- D 2 - - - 0x01D6CE 07:D6BE: 07        .byte con_000D_07   ; 02 
- D 2 - - - 0x01D6CF 07:D6BF: 01        .byte con_000D_01   ; 03 



ofs_012_D6C0_07:
; con_03FD_07
C - - J - - 0x01D6D0 07:D6C0: AC FE 03  LDY ram_03FE_table_index
C - - - - - 0x01D6D3 07:D6C3: C0 03     CPY #$03
C - - - - - 0x01D6D5 07:D6C5: F0 58     BEQ bra_D71F
C - - - - - 0x01D6D7 07:D6C7: A2 00     LDX #$00
bra_D6C9_loop:
C - - - - - 0x01D6D9 07:D6C9: BD 3D 04  LDA ram_043A_obj_flags + $03,X
C - - - - - 0x01D6DC 07:D6CC: 10 06     BPL bra_D6D4
- - - - - - 0x01D6DE 07:D6CE: E8        INX
- - - - - - 0x01D6DF 07:D6CF: E0 04     CPX #$04
- - - - - - 0x01D6E1 07:D6D1: 90 F6     BCC bra_D6C9_loop
- - - - - - 0x01D6E3 07:D6D3: 60        RTS
bra_D6D4:
C - - - - - 0x01D6E4 07:D6D4: AD 04 04  LDA ram_pos_X_lo_player
C - - - - - 0x01D6E7 07:D6D7: 9D 64 04  STA ram_pos_X_lo_obj + $03,X
C - - - - - 0x01D6EA 07:D6DA: 29 80     AND #$80
C - - - - - 0x01D6EC 07:D6DC: 2A        ROL
C - - - - - 0x01D6ED 07:D6DD: 2A        ROL
C - - - - - 0x01D6EE 07:D6DE: 49 01     EOR #$01
C - - - - - 0x01D6F0 07:D6E0: 9D 41 05  STA ram_0541_obj_flags,X
C - - - - - 0x01D6F3 07:D6E3: A9 00     LDA #$00
C - - - - - 0x01D6F5 07:D6E5: 9D 71 04  STA ram_pos_X_hi_obj + $03,X
C - - - - - 0x01D6F8 07:D6E8: 9D 57 04  STA ram_pos_X_fr_obj,X
C - - - - - 0x01D6FB 07:D6EB: 9D 7E 04  STA ram_pos_Y_fr_obj,X
C - - - - - 0x01D6FE 07:D6EE: 9D 5B 05  STA ram_055B_obj_anim_counter,X
C - - - - - 0x01D701 07:D6F1: 85 6B     STA ram_006B_t04_obj_flags
C - - - - - 0x01D703 07:D6F3: A9 F0     LDA #< $FFF0
C - - - - - 0x01D705 07:D6F5: 9D 8B 04  STA ram_pos_Y_lo_obj + $03,X
C - - - - - 0x01D708 07:D6F8: A9 FF     LDA #> $FFF0
C - - - - - 0x01D70A 07:D6FA: 9D 98 04  STA ram_pos_Y_hi_obj + $03,X
C - - - - - 0x01D70D 07:D6FD: B9 39 D7  LDA tbl_D739,Y
C - - - - - 0x01D710 07:D700: 9D 4A 04  STA ram_obj_id,X
C - - - - - 0x01D713 07:D703: A9 01     LDA #$01
C - - - - - 0x01D715 07:D705: 9D 4E 05  STA ram_054E_obj,X
C - - - - - 0x01D718 07:D708: A5 9C     LDA ram_prg_bank_8000
C - - - - - 0x01D71A 07:D70A: 48        PHA
C - - - - - 0x01D71B 07:D70B: A9 09     LDA #con_prg_bank + $09
C - - - - - 0x01D71D 07:D70D: 85 9C     STA ram_prg_bank_8000
C - - - - - 0x01D71F 07:D70F: 20 41 DB  JSR sub_DB41_prg_bankswitch_8000
C - - - - - 0x01D722 07:D712: 20 DD CB  JSR sub_CBDD
C - - - - - 0x01D725 07:D715: 68        PLA
C - - - - - 0x01D726 07:D716: 85 9C     STA ram_prg_bank_8000
C - - - - - 0x01D728 07:D718: 20 41 DB  JSR sub_DB41_prg_bankswitch_8000
loc_D71B:
C D 2 - - - 0x01D72B 07:D71B: EE FD 03  INC ram_03FD_t02_handler_index  ; -> con_03FD_08
C - - - - - 0x01D72E 07:D71E: 60        RTS
bra_D71F:
C - - - - - 0x01D72F 07:D71F: A9 80     LDA #$80
C - - - - - 0x01D731 07:D721: 85 DB     STA ram_00DB_flag
C - - - - - 0x01D733 07:D723: A5 9D     LDA ram_prg_bank_A000
C - - - - - 0x01D735 07:D725: 48        PHA
C - - - - - 0x01D736 07:D726: A9 0A     LDA #con_prg_bank + $0A
C - - - - - 0x01D738 07:D728: 85 9D     STA ram_prg_bank_A000
C - - - - - 0x01D73A 07:D72A: 20 58 DB  JSR sub_DB58_prg_bankswitch_A000
C - - - - - 0x01D73D 07:D72D: 20 00 A0  JSR sub_0x014010
C - - - - - 0x01D740 07:D730: 68        PLA
C - - - - - 0x01D741 07:D731: 85 9D     STA ram_prg_bank_A000
C - - - - - 0x01D743 07:D733: 20 58 DB  JSR sub_DB58_prg_bankswitch_A000
C - - - - - 0x01D746 07:D736: 4C 1B D7  JMP loc_D71B



tbl_D739:
- D 2 - - - 0x01D749 07:D739: 05        .byte con_enemy_id_05   ; 00 
- D 2 - - - 0x01D74A 07:D73A: 2D        .byte con_enemy_id_2D   ; 01 
- D 2 - - - 0x01D74B 07:D73B: 2A        .byte con_enemy_id_2A   ; 02 



ofs_012_D73C_08:
; con_03FD_08
C - - J - - 0x01D74C 07:D73C: AD 3D 04  LDA ram_043A_obj_flags + $03
C - - - - - 0x01D74F 07:D73F: 30 15     BMI bra_D756_RTS
C - - - - - 0x01D751 07:D741: A5 CB     LDA ram_00CB_t01
C - - - - - 0x01D753 07:D743: 05 CA     ORA ram_00CA_objects_counter
C - - - - - 0x01D755 07:D745: D0 0F     BNE bra_D756_RTS
C - - - - - 0x01D757 07:D747: EE FE 03  INC ram_03FE_table_index
C - - - - - 0x01D75A 07:D74A: AD FE 03  LDA ram_03FE_table_index
C - - - - - 0x01D75D 07:D74D: C9 04     CMP #$04
C - - - - - 0x01D75F 07:D74F: B0 06     BCS bra_D757
C - - - - - 0x01D761 07:D751: A9 00     LDA #con_03FD_00
C - - - - - 0x01D763 07:D753: 8D FD 03  STA ram_03FD_t02_handler_index
bra_D756_RTS:
C - - - - - 0x01D766 07:D756: 60        RTS
bra_D757:
C - - - - - 0x01D767 07:D757: A9 00     LDA #$00
C - - - - - 0x01D769 07:D759: 8D FC 03  STA ram_03FC
C - - - - - 0x01D76C 07:D75C: 60        RTS



ofs_005_main_game_script_D75D_04:
; con_03D5_04
C - - J - - 0x01D76D 07:D75D: 20 29 E9  JSR sub_E929_clear_some_addresses
C - - - - - 0x01D770 07:D760: 20 6B E4  JSR sub_E46B_clear_scrolls_and_nametable
C - - - - - 0x01D773 07:D763: A5 9D     LDA ram_prg_bank_A000
C - - - - - 0x01D775 07:D765: 48        PHA
C - - - - - 0x01D776 07:D766: A9 0C     LDA #con_prg_bank + $0C
C - - - - - 0x01D778 07:D768: 85 9D     STA ram_prg_bank_A000
C - - - - - 0x01D77A 07:D76A: 20 58 DB  JSR sub_DB58_prg_bankswitch_A000
C - - - - - 0x01D77D 07:D76D: 20 27 A0  JSR sub_0x018037
C - - - - - 0x01D780 07:D770: 68        PLA
C - - - - - 0x01D781 07:D771: 85 9D     STA ram_prg_bank_A000
; bzk optimize, JMP
C - - - - - 0x01D783 07:D773: 20 58 DB  JSR sub_DB58_prg_bankswitch_A000
C - - - - - 0x01D786 07:D776: 60        RTS



sub_D777_prepare_irq_config:
C - - - - - 0x01D787 07:D777: A6 2D     LDX ram_irq_data_index
C - - - - - 0x01D789 07:D779: BD 89 D7  LDA tbl_D789_irq_handlers,X
C - - - - - 0x01D78C 07:D77C: 85 0B     STA ram_irq_handler
C - - - - - 0x01D78E 07:D77E: BD 8F D7  LDA tbl_D78F_scanlines,X
C - - - - - 0x01D791 07:D781: 85 2F     STA ram_scanline
C - - - - - 0x01D793 07:D783: BD 95 D7  LDA tbl_D795_irq_enable_flags,X
C - - - - - 0x01D796 07:D786: 85 2E     STA ram_irq_flag
C - - - - - 0x01D798 07:D788: 60        RTS



tbl_D789_irq_handlers:
- D 2 - - - 0x01D799 07:D789: 00        .byte con_irq_handler_off   ; 00 
- D 2 - - - 0x01D79A 07:D78A: 01        .byte con_irq_handler_01   ; 01 
- D 2 - - - 0x01D79B 07:D78B: 03        .byte con_irq_handler_03   ; 02 
- D 2 - - - 0x01D79C 07:D78C: 05        .byte con_irq_handler_05   ; 03 
- D 2 - - - 0x01D79D 07:D78D: 06        .byte con_irq_handler_06   ; 04 
- D 2 - - - 0x01D79E 07:D78E: 08        .byte con_irq_handler_08   ; 05 



tbl_D78F_scanlines:
- D 2 - - - 0x01D79F 07:D78F: 00        .byte $00   ; 00 
- D 2 - - - 0x01D7A0 07:D790: 5E        .byte $5E   ; 01 
- D 2 - - - 0x01D7A1 07:D791: 5F        .byte $5F   ; 02 
- D 2 - - - 0x01D7A2 07:D792: 80        .byte $80   ; 03 
- D 2 - - - 0x01D7A3 07:D793: 57        .byte $57   ; 04 
- D 2 - - - 0x01D7A4 07:D794: CF        .byte $CF   ; 05 



tbl_D795_irq_enable_flags:
; 00 = disable
; 01 = enable
- D 2 - - - 0x01D7A5 07:D795: 00        .byte $00   ; 00 
- D 2 - - - 0x01D7A6 07:D796: 01        .byte $01   ; 01 
- D 2 - - - 0x01D7A7 07:D797: 01        .byte $01   ; 02 
- D 2 - - - 0x01D7A8 07:D798: 01        .byte $01   ; 03 
- D 2 - - - 0x01D7A9 07:D799: 01        .byte $01   ; 04 
- D 2 - - - 0x01D7AA 07:D79A: 01        .byte $01   ; 05 



vec_D79B_IRQ:
C - - - - - 0x01D7AB 07:D79B: 48        PHA
C - - - - - 0x01D7AC 07:D79C: 8A        TXA
C - - - - - 0x01D7AD 07:D79D: 48        PHA
C - - - - - 0x01D7AE 07:D79E: 98        TYA
C - - - - - 0x01D7AF 07:D79F: 48        PHA
C - - - - - 0x01D7B0 07:D7A0: 8D 00 E0  STA $E000
C - - - - - 0x01D7B3 07:D7A3: 8D 01 E0  STA $E001
C - - - - - 0x01D7B6 07:D7A6: A5 0B     LDA ram_irq_handler
C - - - - - 0x01D7B8 07:D7A8: 0A        ASL
C - - - - - 0x01D7B9 07:D7A9: AA        TAX
C - - - - - 0x01D7BA 07:D7AA: BD C3 D7  LDA tbl_D7C3_irq_handlers,X
C - - - - - 0x01D7BD 07:D7AD: 85 00     STA ram_0000_t01_irq_handler_jmp
C - - - - - 0x01D7BF 07:D7AF: BD C4 D7  LDA tbl_D7C3_irq_handlers + $01,X
C - - - - - 0x01D7C2 07:D7B2: 85 01     STA ram_0000_t01_irq_handler_jmp + $01
C - - - - - 0x01D7C4 07:D7B4: A9 D7     LDA #> (ofs_D7BD_exit_irq - $01)
C - - - - - 0x01D7C6 07:D7B6: 48        PHA
C - - - - - 0x01D7C7 07:D7B7: A9 BC     LDA #< (ofs_D7BD_exit_irq - $01)
C - - - - - 0x01D7C9 07:D7B9: 48        PHA
C - - - - - 0x01D7CA 07:D7BA: 6C 00 00  JMP (ram_0000_t01_irq_handler_jmp)



ofs_D7BD_exit_irq:
C - - - - - 0x01D7CD 07:D7BD: 68        PLA
C - - - - - 0x01D7CE 07:D7BE: A8        TAY
C - - - - - 0x01D7CF 07:D7BF: 68        PLA
C - - - - - 0x01D7D0 07:D7C0: AA        TAX
C - - - - - 0x01D7D1 07:D7C1: 68        PLA
C - - - - - 0x01D7D2 07:D7C2: 40        RTI



tbl_D7C3_irq_handlers:
; see con_irq_handler
- D 2 - - - 0x01D7D3 07:D7C3: D5 D7     .word ofs_irq_handler_D7D5_00_off
- D 2 - - - 0x01D7D5 07:D7C5: DB D7     .word ofs_irq_handler_D7DB_01
- D 2 - - - 0x01D7D7 07:D7C7: 31 D8     .word ofs_irq_handler_D831_02
- D 2 - - - 0x01D7D9 07:D7C9: A6 D8     .word ofs_irq_handler_D8A6_03
- D 2 - - - 0x01D7DB 07:D7CB: FC D8     .word ofs_irq_handler_D8FC_04
- D 2 - - - 0x01D7DD 07:D7CD: 52 D9     .word ofs_irq_handler_D952_05
- D 2 - - - 0x01D7DF 07:D7CF: A8 D9     .word ofs_irq_handler_D9A8_06
- D 2 - - - 0x01D7E1 07:D7D1: CC D9     .word ofs_irq_handler_D9CC_07
- D 2 - - - 0x01D7E3 07:D7D3: FA D9     .word ofs_irq_handler_D9FA_08



ofs_irq_handler_D7D5_00_off:
; con_irq_handler_off
C - - J - - 0x01D7E5 07:D7D5: A5 3A     LDA ram_for_2000
C - - - - - 0x01D7E7 07:D7D7: 8D 00 20  STA $2000
C - - - - - 0x01D7EA 07:D7DA: 60        RTS



ofs_irq_handler_D7DB_01:
; con_irq_handler_01
C - - J - - 0x01D7EB 07:D7DB: A9 37     LDA #$37
C - - - - - 0x01D7ED 07:D7DD: 8D 00 C0  STA $C000
C - - - - - 0x01D7F0 07:D7E0: E6 0B     INC ram_irq_handler ; -> con_irq_handler_02
; 
C - - - - - 0x01D7F2 07:D7E2: A9 00     LDA #$00
C - - - - - 0x01D7F4 07:D7E4: 8D 00 80  STA $8000
C - - - - - 0x01D7F7 07:D7E7: A9 30     LDA #con_chr_bank_bg + $30
C - - - - - 0x01D7F9 07:D7E9: 8D 01 80  STA $8001
C - - - - - 0x01D7FC 07:D7EC: A9 01     LDA #$01
C - - - - - 0x01D7FE 07:D7EE: 8D 00 80  STA $8000
C - - - - - 0x01D801 07:D7F1: A9 32     LDA #con_chr_bank_bg + $32
C - - - - - 0x01D803 07:D7F3: 8D 01 80  STA $8001
; 
C - - - - - 0x01D806 07:D7F6: A9 02     LDA #$02
C - - - - - 0x01D808 07:D7F8: 8D 00 80  STA $8000
C - - - - - 0x01D80B 07:D7FB: A9 30     LDA #con_chr_bank_spr + $30
C - - - - - 0x01D80D 07:D7FD: 8D 01 80  STA $8001
C - - - - - 0x01D810 07:D800: A9 03     LDA #$03
C - - - - - 0x01D812 07:D802: 8D 00 80  STA $8000
C - - - - - 0x01D815 07:D805: A9 31     LDA #con_chr_bank_spr + $31
C - - - - - 0x01D817 07:D807: 8D 01 80  STA $8001
C - - - - - 0x01D81A 07:D80A: A9 04     LDA #$04
C - - - - - 0x01D81C 07:D80C: 8D 00 80  STA $8000
C - - - - - 0x01D81F 07:D80F: A9 32     LDA #con_chr_bank_spr + $32
C - - - - - 0x01D821 07:D811: 8D 01 80  STA $8001
C - - - - - 0x01D824 07:D814: A9 05     LDA #$05
C - - - - - 0x01D826 07:D816: 8D 00 80  STA $8000
C - - - - - 0x01D829 07:D819: A9 33     LDA #con_chr_bank_spr + $33
C - - - - - 0x01D82B 07:D81B: 8D 01 80  STA $8001
; 
C - - - - - 0x01D82E 07:D81E: AD 02 20  LDA $2002
C - - - - - 0x01D831 07:D821: A9 00     LDA #$00
C - - - - - 0x01D833 07:D823: 8D 05 20  STA $2005
C - - - - - 0x01D836 07:D826: 8D 05 20  STA $2005
C - - - - - 0x01D839 07:D829: A5 3A     LDA ram_for_2000
C - - - - - 0x01D83B 07:D82B: 29 FC     AND #$FC
C - - - - - 0x01D83D 07:D82D: 8D 00 20  STA $2000
C - - - - - 0x01D840 07:D830: 60        RTS



ofs_irq_handler_D831_02:
; con_irq_handler_02
C - - J - - 0x01D841 07:D831: 8D 00 E0  STA $E000
C - - - - - 0x01D844 07:D834: C6 0B     DEC ram_irq_handler ; -> con_irq_handler_01
C - - - - - 0x01D846 07:D836: AD B5 05  LDA ram_05B5_player_flags
C - - - - - 0x01D849 07:D839: 29 40     AND #con_05B5_captured_hawk
C - - - - - 0x01D84B 07:D83B: D0 16     BNE bra_D853_hawk_dead
; if hawk is alive
C - - - - - 0x01D84D 07:D83D: A9 00     LDA #$00
C - - - - - 0x01D84F 07:D83F: 8D 00 80  STA $8000
C - - - - - 0x01D852 07:D842: A9 34     LDA #con_chr_bank_bg + $34
C - - - - - 0x01D854 07:D844: 8D 01 80  STA $8001
C - - - - - 0x01D857 07:D847: A9 01     LDA #$01
C - - - - - 0x01D859 07:D849: 8D 00 80  STA $8000
C - - - - - 0x01D85C 07:D84C: A9 36     LDA #con_chr_bank_bg + $36
C - - - - - 0x01D85E 07:D84E: 8D 01 80  STA $8001
C - - - - - 0x01D861 07:D851: D0 14     BNE bra_D867    ; jmp
bra_D853_hawk_dead:
C - - - - - 0x01D863 07:D853: A9 00     LDA #$00
C - - - - - 0x01D865 07:D855: 8D 00 80  STA $8000
C - - - - - 0x01D868 07:D858: A9 30     LDA #con_chr_bank_bg + $30
C - - - - - 0x01D86A 07:D85A: 8D 01 80  STA $8001
C - - - - - 0x01D86D 07:D85D: A9 01     LDA #$01
C - - - - - 0x01D86F 07:D85F: 8D 00 80  STA $8000
C - - - - - 0x01D872 07:D862: A9 32     LDA #con_chr_bank_bg + $32
C - - - - - 0x01D874 07:D864: 8D 01 80  STA $8001
bra_D867:
C - - - - - 0x01D877 07:D867: A9 02     LDA #$02
C - - - - - 0x01D879 07:D869: 8D 00 80  STA $8000
C - - - - - 0x01D87C 07:D86C: A9 34     LDA #con_chr_bank_spr + $34
C - - - - - 0x01D87E 07:D86E: 8D 01 80  STA $8001
C - - - - - 0x01D881 07:D871: A9 03     LDA #$03
C - - - - - 0x01D883 07:D873: 8D 00 80  STA $8000
C - - - - - 0x01D886 07:D876: A9 35     LDA #con_chr_bank_spr + $35
C - - - - - 0x01D888 07:D878: 8D 01 80  STA $8001
C - - - - - 0x01D88B 07:D87B: A9 04     LDA #$04
C - - - - - 0x01D88D 07:D87D: 8D 00 80  STA $8000
C - - - - - 0x01D890 07:D880: A9 36     LDA #con_chr_bank_spr + $36
C - - - - - 0x01D892 07:D882: 8D 01 80  STA $8001
C - - - - - 0x01D895 07:D885: A9 05     LDA #$05
C - - - - - 0x01D897 07:D887: 8D 00 80  STA $8000
C - - - - - 0x01D89A 07:D88A: A9 37     LDA #con_chr_bank_spr + $37
C - - - - - 0x01D89C 07:D88C: 8D 01 80  STA $8001
; 
C - - - - - 0x01D89F 07:D88F: AD 02 20  LDA $2002
C - - - - - 0x01D8A2 07:D892: A5 35     LDA ram_0035_scroll_X_lo
C - - - - - 0x01D8A4 07:D894: 8D 05 20  STA $2005
C - - - - - 0x01D8A7 07:D897: A9 00     LDA #$00    ; scroll Y
C - - - - - 0x01D8A9 07:D899: 8D 05 20  STA $2005
C - - - - - 0x01D8AC 07:D89C: A5 3A     LDA ram_for_2000
C - - - - - 0x01D8AE 07:D89E: 29 FE     AND #$FE
C - - - - - 0x01D8B0 07:D8A0: 05 34     ORA ram_0034_scroll_X_hi
C - - - - - 0x01D8B2 07:D8A2: 8D 00 20  STA $2000
C - - - - - 0x01D8B5 07:D8A5: 60        RTS



ofs_irq_handler_D8A6_03:
; con_irq_handler_03
C - - J - - 0x01D8B6 07:D8A6: A9 37     LDA #$37
C - - - - - 0x01D8B8 07:D8A8: 8D 00 C0  STA $C000
C - - - - - 0x01D8BB 07:D8AB: E6 0B     INC ram_irq_handler ; -> con_irq_handler_04
; 
C - - - - - 0x01D8BD 07:D8AD: A9 00     LDA #$00
C - - - - - 0x01D8BF 07:D8AF: 8D 00 80  STA $8000
C - - - - - 0x01D8C2 07:D8B2: A9 34     LDA #con_chr_bank_bg + $34
C - - - - - 0x01D8C4 07:D8B4: 8D 01 80  STA $8001
C - - - - - 0x01D8C7 07:D8B7: A9 01     LDA #$01
C - - - - - 0x01D8C9 07:D8B9: 8D 00 80  STA $8000
C - - - - - 0x01D8CC 07:D8BC: A9 3E     LDA #con_chr_bank_bg + $3E
C - - - - - 0x01D8CE 07:D8BE: 8D 01 80  STA $8001
; 
C - - - - - 0x01D8D1 07:D8C1: A9 02     LDA #$02
C - - - - - 0x01D8D3 07:D8C3: 8D 00 80  STA $8000
C - - - - - 0x01D8D6 07:D8C6: A9 30     LDA #con_chr_bank_spr + $30
C - - - - - 0x01D8D8 07:D8C8: 8D 01 80  STA $8001
C - - - - - 0x01D8DB 07:D8CB: A9 03     LDA #$03
C - - - - - 0x01D8DD 07:D8CD: 8D 00 80  STA $8000
C - - - - - 0x01D8E0 07:D8D0: A9 31     LDA #con_chr_bank_spr + $31
C - - - - - 0x01D8E2 07:D8D2: 8D 01 80  STA $8001
C - - - - - 0x01D8E5 07:D8D5: A9 04     LDA #$04
C - - - - - 0x01D8E7 07:D8D7: 8D 00 80  STA $8000
C - - - - - 0x01D8EA 07:D8DA: A9 32     LDA #con_chr_bank_spr + $32
C - - - - - 0x01D8EC 07:D8DC: 8D 01 80  STA $8001
C - - - - - 0x01D8EF 07:D8DF: A9 05     LDA #$05
C - - - - - 0x01D8F1 07:D8E1: 8D 00 80  STA $8000
C - - - - - 0x01D8F4 07:D8E4: A9 33     LDA #con_chr_bank_spr + $33
C - - - - - 0x01D8F6 07:D8E6: 8D 01 80  STA $8001
; 
C - - - - - 0x01D8F9 07:D8E9: AD 02 20  LDA $2002
C - - - - - 0x01D8FC 07:D8EC: A9 00     LDA #$00
C - - - - - 0x01D8FE 07:D8EE: 8D 05 20  STA $2005
C - - - - - 0x01D901 07:D8F1: 8D 05 20  STA $2005
C - - - - - 0x01D904 07:D8F4: A5 3A     LDA ram_for_2000
C - - - - - 0x01D906 07:D8F6: 29 FC     AND #$FC
C - - - - - 0x01D908 07:D8F8: 8D 00 20  STA $2000
C - - - - - 0x01D90B 07:D8FB: 60        RTS



ofs_irq_handler_D8FC_04:
; con_irq_handler_04
C - - J - - 0x01D90C 07:D8FC: 8D 00 E0  STA $E000
C - - - - - 0x01D90F 07:D8FF: A9 03     LDA #con_irq_handler_03
C - - - - - 0x01D911 07:D901: 85 0B     STA ram_irq_handler
; 
C - - - - - 0x01D913 07:D903: A9 00     LDA #$00
C - - - - - 0x01D915 07:D905: 8D 00 80  STA $8000
C - - - - - 0x01D918 07:D908: A9 34     LDA #con_chr_bank_bg + $34
C - - - - - 0x01D91A 07:D90A: 8D 01 80  STA $8001
C - - - - - 0x01D91D 07:D90D: A9 01     LDA #$01
C - - - - - 0x01D91F 07:D90F: 8D 00 80  STA $8000
C - - - - - 0x01D922 07:D912: A9 36     LDA #con_chr_bank_bg + $36
C - - - - - 0x01D924 07:D914: 8D 01 80  STA $8001
; 
C - - - - - 0x01D927 07:D917: A9 02     LDA #$02
C - - - - - 0x01D929 07:D919: 8D 00 80  STA $8000
C - - - - - 0x01D92C 07:D91C: A9 34     LDA #con_chr_bank_spr + $34
C - - - - - 0x01D92E 07:D91E: 8D 01 80  STA $8001
C - - - - - 0x01D931 07:D921: A9 03     LDA #$03
C - - - - - 0x01D933 07:D923: 8D 00 80  STA $8000
C - - - - - 0x01D936 07:D926: A9 35     LDA #con_chr_bank_spr + $35
C - - - - - 0x01D938 07:D928: 8D 01 80  STA $8001
C - - - - - 0x01D93B 07:D92B: A9 04     LDA #$04
C - - - - - 0x01D93D 07:D92D: 8D 00 80  STA $8000
C - - - - - 0x01D940 07:D930: A9 36     LDA #con_chr_bank_spr + $36
C - - - - - 0x01D942 07:D932: 8D 01 80  STA $8001
C - - - - - 0x01D945 07:D935: A9 05     LDA #$05
C - - - - - 0x01D947 07:D937: 8D 00 80  STA $8000
C - - - - - 0x01D94A 07:D93A: A9 37     LDA #con_chr_bank_spr + $37
C - - - - - 0x01D94C 07:D93C: 8D 01 80  STA $8001
; 
C - - - - - 0x01D94F 07:D93F: AD 02 20  LDA $2002
C - - - - - 0x01D952 07:D942: A9 00     LDA #$00
C - - - - - 0x01D954 07:D944: 8D 05 20  STA $2005
C - - - - - 0x01D957 07:D947: 8D 05 20  STA $2005
C - - - - - 0x01D95A 07:D94A: A5 3A     LDA ram_for_2000
C - - - - - 0x01D95C 07:D94C: 29 FC     AND #$FC
C - - - - - 0x01D95E 07:D94E: 8D 00 20  STA $2000
C - - - - - 0x01D961 07:D951: 60        RTS



ofs_irq_handler_D952_05:
; con_irq_handler_05
C - - J - - 0x01D962 07:D952: 8D 00 E0  STA $E000
C - - - - - 0x01D965 07:D955: A9 05     LDA #con_irq_handler_05
C - - - - - 0x01D967 07:D957: 85 0B     STA ram_irq_handler
; 
C - - - - - 0x01D969 07:D959: A9 00     LDA #$00
C - - - - - 0x01D96B 07:D95B: 8D 00 80  STA $8000
C - - - - - 0x01D96E 07:D95E: A9 34     LDA #con_chr_bank_bg + $34
C - - - - - 0x01D970 07:D960: 8D 01 80  STA $8001
C - - - - - 0x01D973 07:D963: A9 01     LDA #$01
C - - - - - 0x01D975 07:D965: 8D 00 80  STA $8000
C - - - - - 0x01D978 07:D968: A9 3E     LDA #con_chr_bank_bg + $3E
C - - - - - 0x01D97A 07:D96A: 8D 01 80  STA $8001
; 
C - - - - - 0x01D97D 07:D96D: A9 02     LDA #$02
C - - - - - 0x01D97F 07:D96F: 8D 00 80  STA $8000
C - - - - - 0x01D982 07:D972: A9 2C     LDA #con_chr_bank_spr + $2C
C - - - - - 0x01D984 07:D974: 8D 01 80  STA $8001
C - - - - - 0x01D987 07:D977: A9 03     LDA #$03
C - - - - - 0x01D989 07:D979: 8D 00 80  STA $8000
C - - - - - 0x01D98C 07:D97C: A9 7D     LDA #con_chr_bank_spr + $7D
C - - - - - 0x01D98E 07:D97E: 8D 01 80  STA $8001
C - - - - - 0x01D991 07:D981: A9 04     LDA #$04
C - - - - - 0x01D993 07:D983: 8D 00 80  STA $8000
C - - - - - 0x01D996 07:D986: A9 7E     LDA #con_chr_bank_spr + $7E
C - - - - - 0x01D998 07:D988: 8D 01 80  STA $8001
C - - - - - 0x01D99B 07:D98B: A9 05     LDA #$05
C - - - - - 0x01D99D 07:D98D: 8D 00 80  STA $8000
C - - - - - 0x01D9A0 07:D990: A9 2F     LDA #con_chr_bank_spr + $2F
C - - - - - 0x01D9A2 07:D992: 8D 01 80  STA $8001
; a
C - - - - - 0x01D9A5 07:D995: AD 02 20  LDA $2002
C - - - - - 0x01D9A8 07:D998: A9 00     LDA #$00
C - - - - - 0x01D9AA 07:D99A: 8D 05 20  STA $2005
C - - - - - 0x01D9AD 07:D99D: 8D 05 20  STA $2005
C - - - - - 0x01D9B0 07:D9A0: A5 3A     LDA ram_for_2000
C - - - - - 0x01D9B2 07:D9A2: 29 FC     AND #$FC
C - - - - - 0x01D9B4 07:D9A4: 8D 00 20  STA $2000
C - - - - - 0x01D9B7 07:D9A7: 60        RTS



ofs_irq_handler_D9A8_06:
; con_irq_handler_06
C - - J - - 0x01D9B8 07:D9A8: A9 40     LDA #$40
C - - - - - 0x01D9BA 07:D9AA: 8D 00 C0  STA $C000
C - - - - - 0x01D9BD 07:D9AD: E6 0B     INC ram_irq_handler ; -> con_irq_handler_07
; 
C - - - - - 0x01D9BF 07:D9AF: A9 01     LDA #$01
C - - - - - 0x01D9C1 07:D9B1: 8D 00 80  STA $8000
C - - - - - 0x01D9C4 07:D9B4: A9 3E     LDA #con_chr_bank_bg + $3E
C - - - - - 0x01D9C6 07:D9B6: 8D 01 80  STA $8001
; 
C - - - - - 0x01D9C9 07:D9B9: AD 02 20  LDA $2002
C - - - - - 0x01D9CC 07:D9BC: A9 00     LDA #$00
C - - - - - 0x01D9CE 07:D9BE: 8D 05 20  STA $2005
C - - - - - 0x01D9D1 07:D9C1: 8D 05 20  STA $2005
C - - - - - 0x01D9D4 07:D9C4: A5 3A     LDA ram_for_2000
C - - - - - 0x01D9D6 07:D9C6: 29 FC     AND #$FC
C - - - - - 0x01D9D8 07:D9C8: 8D 00 20  STA $2000
C - - - - - 0x01D9DB 07:D9CB: 60        RTS



ofs_irq_handler_D9CC_07:
; con_irq_handler_07
C - - J - - 0x01D9DC 07:D9CC: 8D 00 E0  STA $E000
C - - - - - 0x01D9DF 07:D9CF: A9 06     LDA #con_irq_handler_06
C - - - - - 0x01D9E1 07:D9D1: 85 0B     STA ram_irq_handler
; 
C - - - - - 0x01D9E3 07:D9D3: A9 00     LDA #$00
C - - - - - 0x01D9E5 07:D9D5: 8D 00 80  STA $8000
C - - - - - 0x01D9E8 07:D9D8: A9 34     LDA #con_chr_bank_bg + $34
C - - - - - 0x01D9EA 07:D9DA: 8D 01 80  STA $8001
C - - - - - 0x01D9ED 07:D9DD: A9 01     LDA #$01
C - - - - - 0x01D9EF 07:D9DF: 8D 00 80  STA $8000
C - - - - - 0x01D9F2 07:D9E2: A9 36     LDA #con_chr_bank_bg + $36
C - - - - - 0x01D9F4 07:D9E4: 8D 01 80  STA $8001
; 
C - - - - - 0x01D9F7 07:D9E7: AD 02 20  LDA $2002
C - - - - - 0x01D9FA 07:D9EA: A9 00     LDA #$00
C - - - - - 0x01D9FC 07:D9EC: 8D 05 20  STA $2005
C - - - - - 0x01D9FF 07:D9EF: 8D 05 20  STA $2005
C - - - - - 0x01DA02 07:D9F2: A5 3A     LDA ram_for_2000
C - - - - - 0x01DA04 07:D9F4: 29 FC     AND #$FC
C - - - - - 0x01DA06 07:D9F6: 8D 00 20  STA $2000
C - - - - - 0x01DA09 07:D9F9: 60        RTS



ofs_irq_handler_D9FA_08:
; con_irq_handler_08
C - - J - - 0x01DA0A 07:D9FA: 8D 00 E0  STA $E000
C - - - - - 0x01DA0D 07:D9FD: AD 02 20  LDA $2002
C - - - - - 0x01DA10 07:DA00: A9 23     LDA #> $2340
C - - - - - 0x01DA12 07:DA02: 8D 06 20  STA $2006
C - - - - - 0x01DA15 07:DA05: A9 40     LDA #< $2340
C - - - - - 0x01DA17 07:DA07: 8D 06 20  STA $2006
C - - - - - 0x01DA1A 07:DA0A: A9 00     LDA #$00
C - - - - - 0x01DA1C 07:DA0C: 8D 05 20  STA $2005
C - - - - - 0x01DA1F 07:DA0F: A9 04     LDA #$04
C - - - - - 0x01DA21 07:DA11: 8D 05 20  STA $2005
C - - - - - 0x01DA24 07:DA14: A5 3A     LDA ram_for_2000
C - - - - - 0x01DA26 07:DA16: 29 FC     AND #$FC
C - - - - - 0x01DA28 07:DA18: 8D 00 20  STA $2000
C - - - - - 0x01DA2B 07:DA1B: 60        RTS



sub_DA1C_prepare_background_and_sprite_palette:
C - - - - - 0x01DA2C 07:DA1C: A5 9C     LDA ram_prg_bank_8000
C - - - - - 0x01DA2E 07:DA1E: 48        PHA
C - - - - - 0x01DA2F 07:DA1F: 20 2C DA  JSR sub_DA2C_prepare_background_palette
C - - - - - 0x01DA32 07:DA22: 20 56 DA  JSR sub_DA56_prepare_sprite_palette
C - - - - - 0x01DA35 07:DA25: 68        PLA
C - - - - - 0x01DA36 07:DA26: 85 9C     STA ram_prg_bank_8000
; bzk optimize, JMP
C - - - - - 0x01DA38 07:DA28: 20 41 DB  JSR sub_DB41_prg_bankswitch_8000
C - - - - - 0x01DA3B 07:DA2B: 60        RTS



sub_DA2C_prepare_background_palette:
C - - - - - 0x01DA3C 07:DA2C: A9 04     LDA #con_prg_bank + $04
C - - - - - 0x01DA3E 07:DA2E: 85 9C     STA ram_prg_bank_8000
C - - - - - 0x01DA40 07:DA30: 20 41 DB  JSR sub_DB41_prg_bankswitch_8000
C - - - - - 0x01DA43 07:DA33: A5 4D     LDA ram_004D_palette_index
C - - - - - 0x01DA45 07:DA35: 0A        ASL
C - - - - - 0x01DA46 07:DA36: AA        TAX
C - - - - - 0x01DA47 07:DA37: BD A2 87  LDA tbl_0x0087B2_background_palette,X
C - - - - - 0x01DA4A 07:DA3A: 85 5B     STA ram_005B_t17_bg_pal_data
C - - - - - 0x01DA4C 07:DA3C: BD A3 87  LDA tbl_0x0087B2_background_palette + $01,X
C - - - - - 0x01DA4F 07:DA3F: 85 5C     STA ram_005B_t17_bg_pal_data + $01
C - - - - - 0x01DA51 07:DA41: A9 02     LDA #con_prg_bank + $02
C - - - - - 0x01DA53 07:DA43: 85 9C     STA ram_prg_bank_8000
C - - - - - 0x01DA55 07:DA45: 20 41 DB  JSR sub_DB41_prg_bankswitch_8000
C - - - - - 0x01DA58 07:DA48: A0 00     LDY #$00
C - - - - - 0x01DA5A 07:DA4A: A2 10     LDX #$10
bra_DA4C_loop:
C - - - - - 0x01DA5C 07:DA4C: B1 5B     LDA (ram_005B_t17_bg_pal_data),Y
C - - - - - 0x01DA5E 07:DA4E: 99 80 02  STA ram_pal_buffer,Y
C - - - - - 0x01DA61 07:DA51: C8        INY
C - - - - - 0x01DA62 07:DA52: CA        DEX
C - - - - - 0x01DA63 07:DA53: D0 F7     BNE bra_DA4C_loop
C - - - - - 0x01DA65 07:DA55: 60        RTS



sub_DA56_prepare_sprite_palette:
loc_DA56_prepare_sprite_palette:
C D 2 - - - 0x01DA66 07:DA56: A5 9C     LDA ram_prg_bank_8000
C - - - - - 0x01DA68 07:DA58: 48        PHA
C - - - - - 0x01DA69 07:DA59: A5 A8     LDA ram_plr_index
; * 08
C - - - - - 0x01DA6B 07:DA5B: 0A        ASL
C - - - - - 0x01DA6C 07:DA5C: 0A        ASL
C - - - - - 0x01DA6D 07:DA5D: 0A        ASL
; 
C - - - - - 0x01DA6E 07:DA5E: AA        TAX
C - - - - - 0x01DA6F 07:DA5F: A0 00     LDY #$00
bra_DA61_loop:
C - - - - - 0x01DA71 07:DA61: BD A9 DA  LDA tbl_DAA9_sprite_palette,X
C - - - - - 0x01DA74 07:DA64: 99 90 02  STA ram_pal_buffer + $10,Y
C - - - - - 0x01DA77 07:DA67: E8        INX
C - - - - - 0x01DA78 07:DA68: C8        INY
C - - - - - 0x01DA79 07:DA69: C0 08     CPY #$08
C - - - - - 0x01DA7B 07:DA6B: 90 F4     BCC bra_DA61_loop
C - - - - - 0x01DA7D 07:DA6D: A9 04     LDA #con_prg_bank + $04
C - - - - - 0x01DA7F 07:DA6F: 85 9C     STA ram_prg_bank_8000
C - - - - - 0x01DA81 07:DA71: 20 41 DB  JSR sub_DB41_prg_bankswitch_8000
C - - - - - 0x01DA84 07:DA74: A5 0D     LDA ram_000D_spr_pal_index
C - - - - - 0x01DA86 07:DA76: 0A        ASL
C - - - - - 0x01DA87 07:DA77: AA        TAX
C - - - - - 0x01DA88 07:DA78: BD 02 88  LDA tbl_0x008812_sprite_palette,X
C - - - - - 0x01DA8B 07:DA7B: 85 5D     STA ram_005D_t20_spr_pal_data_ptr
C - - - - - 0x01DA8D 07:DA7D: BD 03 88  LDA tbl_0x008812_sprite_palette + $01,X
C - - - - - 0x01DA90 07:DA80: 85 5E     STA ram_005D_t20_spr_pal_data_ptr + $01
C - - - - - 0x01DA92 07:DA82: A5 D2     LDA ram_00D2_data_index
C - - - - - 0x01DA94 07:DA84: 0A        ASL
C - - - - - 0x01DA95 07:DA85: A8        TAY
C - - - - - 0x01DA96 07:DA86: B1 5D     LDA (ram_005D_t20_spr_pal_data_ptr),Y
C - - - - - 0x01DA98 07:DA88: 85 5B     STA ram_005B_t16_spr_pal_data
C - - - - - 0x01DA9A 07:DA8A: C8        INY
C - - - - - 0x01DA9B 07:DA8B: B1 5D     LDA (ram_005D_t20_spr_pal_data_ptr),Y
C - - - - - 0x01DA9D 07:DA8D: 85 5C     STA ram_005B_t16_spr_pal_data + $01
C - - - - - 0x01DA9F 07:DA8F: A9 02     LDA #con_prg_bank + $02
C - - - - - 0x01DAA1 07:DA91: 85 9C     STA ram_prg_bank_8000
C - - - - - 0x01DAA3 07:DA93: 20 41 DB  JSR sub_DB41_prg_bankswitch_8000
C - - - - - 0x01DAA6 07:DA96: A0 00     LDY #$00
bra_DA98_loop:
C - - - - - 0x01DAA8 07:DA98: B1 5B     LDA (ram_005B_t16_spr_pal_data),Y
C - - - - - 0x01DAAA 07:DA9A: 99 98 02  STA ram_pal_buffer + $18,Y
C - - - - - 0x01DAAD 07:DA9D: C8        INY
C - - - - - 0x01DAAE 07:DA9E: C0 08     CPY #$08
C - - - - - 0x01DAB0 07:DAA0: 90 F6     BCC bra_DA98_loop
C - - - - - 0x01DAB2 07:DAA2: 68        PLA
C - - - - - 0x01DAB3 07:DAA3: 85 9C     STA ram_prg_bank_8000
; bzk optimize, JMP
C - - - - - 0x01DAB5 07:DAA5: 20 41 DB  JSR sub_DB41_prg_bankswitch_8000
C - - - - - 0x01DAB8 07:DAA8: 60        RTS



tbl_DAA9_sprite_palette:
; 00 
- D 2 - - - 0x01DAB9 07:DAA9: 0F        .byte $0F, $02, $16, $30   ; 
- D 2 - - - 0x01DABD 07:DAAD: 0F        .byte $0F, $20, $0F, $16   ; 
; 01 
- D 2 - - - 0x01DAC1 07:DAB1: 0F        .byte $0F, $0F, $14, $36   ; 
- D 2 - - - 0x01DAC5 07:DAB5: 0F        .byte $0F, $20, $0F, $16   ; 



sub_DAB9_prepare_palette_and_increase_brightness:
loc_DAB9_prepare_palette_and_increase_brightness:
C - - - - - 0x01DAC9 07:DAB9: 20 1C DA  JSR sub_DA1C_prepare_background_and_sprite_palette
sub_DABC_increase_brightness:
loc_DABC_increase_brightness:
C D 2 - - - 0x01DACC 07:DABC: A2 1F     LDX #$1F
bra_DABE_loop:
C - - - - - 0x01DACE 07:DABE: BD 80 02  LDA ram_pal_buffer,X
C - - - - - 0x01DAD1 07:DAC1: 9D A0 02  STA ram_max_brightnes_pal_buffer,X
C - - - - - 0x01DAD4 07:DAC4: CA        DEX
C - - - - - 0x01DAD5 07:DAC5: 10 F7     BPL bra_DABE_loop
; 
C - - - - - 0x01DAD7 07:DAC7: A9 04     LDA #$04
C - - - - - 0x01DAD9 07:DAC9: 85 4E     STA ram_004E_t02_loop_counter
bra_DACB_loop:
C - - - - - 0x01DADB 07:DACB: A2 1F     LDX #$1F
C - - - - - 0x01DADD 07:DACD: A4 4E     LDY ram_004E_t02_loop_counter
bra_DACF_loop:
C - - - - - 0x01DADF 07:DACF: BD A0 02  LDA ram_max_brightnes_pal_buffer,X
C - - - - - 0x01DAE2 07:DAD2: 38        SEC
C - - - - - 0x01DAE3 07:DAD3: F9 F8 DA  SBC tbl_DAF8_brightness_increase,Y
C - - - - - 0x01DAE6 07:DAD6: 10 02     BPL bra_DADA
; if underflow, write black color
C - - - - - 0x01DAE8 07:DAD8: A9 0F     LDA #$0F
bra_DADA:
C - - - - - 0x01DAEA 07:DADA: 9D 80 02  STA ram_pal_buffer,X
C - - - - - 0x01DAED 07:DADD: CA        DEX
C - - - - - 0x01DAEE 07:DADE: 10 EF     BPL bra_DACF_loop
; 
C - - - - - 0x01DAF0 07:DAE0: A9 20     LDA #$20    ; background + sprite colors
C - - - - - 0x01DAF2 07:DAE2: 85 4F     STA ram_004F_pal_buffer_size
C - - - - - 0x01DAF4 07:DAE4: A9 01     LDA #con_buffer_ready_palette
C - - - - - 0x01DAF6 07:DAE6: 85 02     STA ram_buffers_flags
C - - - - - 0x01DAF8 07:DAE8: A9 04     LDA #< $0004
C - - - - - 0x01DAFA 07:DAEA: 85 19     STA ram_0019_timer_lo
C - - - - - 0x01DAFC 07:DAEC: A9 00     LDA #> $0004
C - - - - - 0x01DAFE 07:DAEE: 85 1A     STA ram_001A_timer_hi
C - - - - - 0x01DB00 07:DAF0: 20 97 E0  JSR sub_E097_wait_for_timer
C - - - - - 0x01DB03 07:DAF3: C6 4E     DEC ram_004E_t02_loop_counter
C - - - - - 0x01DB05 07:DAF5: D0 D4     BNE bra_DACB_loop
C - - - - - 0x01DB07 07:DAF7: 60        RTS



tbl_DAF8_brightness_increase:
- - - - - - 0x01DB08 07:DAF8: 00        .byte $00   ; 00 placeholder
- D 2 - - - 0x01DB09 07:DAF9: 00        .byte $00   ; 01 
- D 2 - - - 0x01DB0A 07:DAFA: 10        .byte $10   ; 02 
- D 2 - - - 0x01DB0B 07:DAFB: 20        .byte $20   ; 03 
- D 2 - - - 0x01DB0C 07:DAFC: 30        .byte $30   ; 04 



sub_DAFD_prepare_palette_and_decrease_brightness:
loc_DAFD_prepare_palette_and_decrease_brightness:
C - - - - - 0x01DB0D 07:DAFD: 20 1C DA  JSR sub_DA1C_prepare_background_and_sprite_palette
sub_DB00_decrease_brightness:
loc_DB00_decrease_brightness:
C D 2 - - - 0x01DB10 07:DB00: A2 1F     LDX #$1F
bra_DB02_loop:
C - - - - - 0x01DB12 07:DB02: BD 80 02  LDA ram_pal_buffer,X
C - - - - - 0x01DB15 07:DB05: 9D A0 02  STA ram_max_brightnes_pal_buffer,X
C - - - - - 0x01DB18 07:DB08: CA        DEX
C - - - - - 0x01DB19 07:DB09: 10 F7     BPL bra_DB02_loop
; 
C - - - - - 0x01DB1B 07:DB0B: A9 04     LDA #$04
C - - - - - 0x01DB1D 07:DB0D: 85 4E     STA ram_004E_t01_loop_counter
bra_DB0F_loop:
C - - - - - 0x01DB1F 07:DB0F: A2 1F     LDX #$1F
C - - - - - 0x01DB21 07:DB11: A4 4E     LDY ram_004E_t01_loop_counter
bra_DB13_loop:
C - - - - - 0x01DB23 07:DB13: BD A0 02  LDA ram_max_brightnes_pal_buffer,X
C - - - - - 0x01DB26 07:DB16: 38        SEC
C - - - - - 0x01DB27 07:DB17: F9 3C DB  SBC tbl_DB3C_brightness_decrease,Y
C - - - - - 0x01DB2A 07:DB1A: 10 02     BPL bra_DB1E
; if underflow, write black color
C - - - - - 0x01DB2C 07:DB1C: A9 0F     LDA #$0F
bra_DB1E:
C - - - - - 0x01DB2E 07:DB1E: 9D 80 02  STA ram_pal_buffer,X
C - - - - - 0x01DB31 07:DB21: CA        DEX
C - - - - - 0x01DB32 07:DB22: 10 EF     BPL bra_DB13_loop
; 
C - - - - - 0x01DB34 07:DB24: A9 20     LDA #$20    ; background + sprite colors
C - - - - - 0x01DB36 07:DB26: 85 4F     STA ram_004F_pal_buffer_size
C - - - - - 0x01DB38 07:DB28: A9 01     LDA #con_buffer_ready_palette
C - - - - - 0x01DB3A 07:DB2A: 85 02     STA ram_buffers_flags
C - - - - - 0x01DB3C 07:DB2C: A9 04     LDA #< $0004
C - - - - - 0x01DB3E 07:DB2E: 85 19     STA ram_0019_timer_lo
C - - - - - 0x01DB40 07:DB30: A9 00     LDA #> $0004
C - - - - - 0x01DB42 07:DB32: 85 1A     STA ram_001A_timer_hi
C - - - - - 0x01DB44 07:DB34: 20 97 E0  JSR sub_E097_wait_for_timer
C - - - - - 0x01DB47 07:DB37: C6 4E     DEC ram_004E_t01_loop_counter
C - - - - - 0x01DB49 07:DB39: D0 D4     BNE bra_DB0F_loop
C - - - - - 0x01DB4B 07:DB3B: 60        RTS



tbl_DB3C_brightness_decrease:
- - - - - - 0x01DB4C 07:DB3C: 00        .byte $00   ; 00 placeholder
- D 2 - - - 0x01DB4D 07:DB3D: 40        .byte $40   ; 01 
- D 2 - - - 0x01DB4E 07:DB3E: 30        .byte $30   ; 02 
- D 2 - - - 0x01DB4F 07:DB3F: 20        .byte $20   ; 03 
- D 2 - - - 0x01DB50 07:DB40: 10        .byte $10   ; 04 



sub_DB41_prg_bankswitch_8000:
loc_DB41_prg_bankswitch_8000:
; bzk optimize, no need to save and restore XY
C D 2 - - - 0x01DB51 07:DB41: 48        PHA
C - - - - - 0x01DB52 07:DB42: 8A        TXA
C - - - - - 0x01DB53 07:DB43: 48        PHA
C - - - - - 0x01DB54 07:DB44: 98        TYA
C - - - - - 0x01DB55 07:DB45: 48        PHA
C - - - - - 0x01DB56 07:DB46: A9 06     LDA #$06
C - - - - - 0x01DB58 07:DB48: 85 9B     STA ram_for_8000
C - - - - - 0x01DB5A 07:DB4A: 8D 00 80  STA $8000
C - - - - - 0x01DB5D 07:DB4D: A5 9C     LDA ram_prg_bank_8000
C - - - - - 0x01DB5F 07:DB4F: 8D 01 80  STA $8001
C - - - - - 0x01DB62 07:DB52: 68        PLA
C - - - - - 0x01DB63 07:DB53: A8        TAY
C - - - - - 0x01DB64 07:DB54: 68        PLA
C - - - - - 0x01DB65 07:DB55: AA        TAX
C - - - - - 0x01DB66 07:DB56: 68        PLA
C - - - - - 0x01DB67 07:DB57: 60        RTS



sub_DB58_prg_bankswitch_A000:
; bzk optimize, no need to save and restore XY
C - - - - - 0x01DB68 07:DB58: 48        PHA
C - - - - - 0x01DB69 07:DB59: 8A        TXA
C - - - - - 0x01DB6A 07:DB5A: 48        PHA
C - - - - - 0x01DB6B 07:DB5B: 98        TYA
C - - - - - 0x01DB6C 07:DB5C: 48        PHA
C - - - - - 0x01DB6D 07:DB5D: A9 07     LDA #$07
C - - - - - 0x01DB6F 07:DB5F: 85 9B     STA ram_for_8000
C - - - - - 0x01DB71 07:DB61: 8D 00 80  STA $8000
C - - - - - 0x01DB74 07:DB64: A5 9D     LDA ram_prg_bank_A000
C - - - - - 0x01DB76 07:DB66: 8D 01 80  STA $8001
C - - - - - 0x01DB79 07:DB69: 68        PLA
C - - - - - 0x01DB7A 07:DB6A: A8        TAY
C - - - - - 0x01DB7B 07:DB6B: 68        PLA
C - - - - - 0x01DB7C 07:DB6C: AA        TAX
C - - - - - 0x01DB7D 07:DB6D: 68        PLA
C - - - - - 0x01DB7E 07:DB6E: 60        RTS



sub_DB6F:
C - - - - - 0x01DB7F 07:DB6F: A5 9C     LDA ram_prg_bank_8000
C - - - - - 0x01DB81 07:DB71: 48        PHA
C - - - - - 0x01DB82 07:DB72: A9 02     LDA #con_prg_bank + $02
C - - - - - 0x01DB84 07:DB74: 85 9C     STA ram_prg_bank_8000
C - - - - - 0x01DB86 07:DB76: 20 41 DB  JSR sub_DB41_prg_bankswitch_8000
C - - - - - 0x01DB89 07:DB79: A5 3C     LDA ram_city
C - - - - - 0x01DB8B 07:DB7B: 0A        ASL
C - - - - - 0x01DB8C 07:DB7C: AA        TAX
C - - - - - 0x01DB8D 07:DB7D: BD 46 9B  LDA tbl_0x005B56_city_chr_banks_background,X
C - - - - - 0x01DB90 07:DB80: 85 20     STA ram_chr_bank_bg
C - - - - - 0x01DB92 07:DB82: BD 47 9B  LDA tbl_0x005B56_city_chr_banks_background + $01,X
C - - - - - 0x01DB95 07:DB85: 85 21     STA ram_chr_bank_bg + $01
C - - - - - 0x01DB97 07:DB87: 68        PLA
C - - - - - 0x01DB98 07:DB88: 85 9C     STA ram_prg_bank_8000
; bzk optimize, JMP
C - - - - - 0x01DB9A 07:DB8A: 20 41 DB  JSR sub_DB41_prg_bankswitch_8000
C - - - - - 0x01DB9D 07:DB8D: 60        RTS



bra_DB8E:
sub_DB8E:
C - - - - - 0x01DB9E 07:DB8E: AD E6 05  LDA ram_05E6_script
C - - - - - 0x01DBA1 07:DB91: 0A        ASL
C - - - - - 0x01DBA2 07:DB92: AA        TAX
C - - - - - 0x01DBA3 07:DB93: BD C8 DB  LDA tbl_DBC8,X
C - - - - - 0x01DBA6 07:DB96: 85 5B     STA ram_005B_t48_jmp
C - - - - - 0x01DBA8 07:DB98: BD C9 DB  LDA tbl_DBC8 + $01,X
C - - - - - 0x01DBAB 07:DB9B: 85 5C     STA ram_005B_t48_jmp + $01
C - - - - - 0x01DBAD 07:DB9D: A9 DB     LDA #> (ofs_DBA6_return - $01)
C - - - - - 0x01DBAF 07:DB9F: 48        PHA
C - - - - - 0x01DBB0 07:DBA0: A9 A5     LDA #< (ofs_DBA6_return - $01)
C - - - - - 0x01DBB2 07:DBA2: 48        PHA
C - - - - - 0x01DBB3 07:DBA3: 6C 5B 00  JMP (ram_005B_t48_jmp)



ofs_DBA6_return:
C - - - - - 0x01DBB6 07:DBA6: AD E6 05  LDA ram_05E6_script
C - - - - - 0x01DBB9 07:DBA9: 10 E3     BPL bra_DB8E
; if script is not specified
C - - - - - 0x01DBBB 07:DBAB: A9 00     LDA #$00
C - - - - - 0x01DBBD 07:DBAD: 8D D4 03  STA ram_script  ; con_script_00
C - - - - - 0x01DBC0 07:DBB0: 85 DB     STA ram_00DB_flag
C - - - - - 0x01DBC2 07:DBB2: 8D D7 03  STA ram_captain_power
C - - - - - 0x01DBC5 07:DBB5: 8D D8 03  STA ram_hawk_power
C - - - - - 0x01DBC8 07:DBB8: A9 08     LDA #$08
C - - - - - 0x01DBCA 07:DBBA: 8D D9 03  STA ram_captain_hp
C - - - - - 0x01DBCD 07:DBBD: 8D DA 03  STA ram_hawk_hp
C - - - - - 0x01DBD0 07:DBC0: A9 01     LDA #con_sfx_disable_se_1
C - - - - - 0x01DBD2 07:DBC2: 85 77     STA ram_0077_t03_sound_id
; bzk optimize, JMP
C - - - - - 0x01DBD4 07:DBC4: 20 04 CB  JSR sub_CB04_play_sound
C - - - - - 0x01DBD7 07:DBC7: 60        RTS



tbl_DBC8:
- D 2 - - - 0x01DBD8 07:DBC8: D0 DB     .word ofs_011_DBD0_00
- D 2 - - - 0x01DBDA 07:DBCA: 28 DC     .word ofs_011_DC28_01
- D 2 - - - 0x01DBDC 07:DBCC: 58 DC     .word ofs_011_DC58_02
- D 2 - - - 0x01DBDE 07:DBCE: 9F DC     .word ofs_011_DC9F_03



ofs_011_DBD0_00:
C - - J - - 0x01DBE0 07:DBD0: A9 20     LDA #con_music_map
C - - - - - 0x01DBE2 07:DBD2: 85 77     STA ram_0077_t03_sound_id
C - - - - - 0x01DBE4 07:DBD4: 20 04 CB  JSR sub_CB04_play_sound
C - - - - - 0x01DBE7 07:DBD7: 20 29 E9  JSR sub_E929_clear_some_addresses
C - - - - - 0x01DBEA 07:DBDA: 20 5A E1  JSR sub_E15A_hide_all_sprites
C - - - - - 0x01DBED 07:DBDD: 20 E2 DC  JSR sub_DCE2
C - - - - - 0x01DBF0 07:DBE0: A9 00     LDA #$00
C - - - - - 0x01DBF2 07:DBE2: 85 E6     STA ram_00E6_flag
C - - - - - 0x01DBF4 07:DBE4: 20 DB FA  JSR sub_FADB
bra_DBE7_loop:
C - - - - - 0x01DBF7 07:DBE7: 20 82 E0  JSR sub_E082_wait_1_frm
C - - - - - 0x01DBFA 07:DBEA: 20 EF DC  JSR sub_DCEF
C - - - - - 0x01DBFD 07:DBED: 20 DB FA  JSR sub_FADB
C - - - - - 0x01DC00 07:DBF0: 20 2B DD  JSR sub_DD2B
C - - - - - 0x01DC03 07:DBF3: A5 67     LDA ram_0067_t5A_flag
C - - - - - 0x01DC05 07:DBF5: F0 F0     BEQ bra_DBE7_loop
C - - - - - 0x01DC07 07:DBF7: A9 20     LDA #< $0020
C - - - - - 0x01DC09 07:DBF9: 85 19     STA ram_0019_timer_lo
C - - - - - 0x01DC0B 07:DBFB: A9 00     LDA #> $0020
C - - - - - 0x01DC0D 07:DBFD: 85 1A     STA ram_001A_timer_hi
C - - - - - 0x01DC0F 07:DBFF: 20 97 E0  JSR sub_E097_wait_for_timer
loc_DC02:
C D 2 - - - 0x01DC12 07:DC02: 20 00 DB  JSR sub_DB00_decrease_brightness
C - - - - - 0x01DC15 07:DC05: 20 3F DD  JSR sub_DD3F
C - - - - - 0x01DC18 07:DC08: 20 DB FA  JSR sub_FADB
C - - - - - 0x01DC1B 07:DC0B: 20 B9 DA  JSR sub_DAB9_prepare_palette_and_increase_brightness
C - - - - - 0x01DC1E 07:DC0E: 20 82 E0  JSR sub_E082_wait_1_frm
C - - - - - 0x01DC21 07:DC11: EE E6 05  INC ram_05E6_script    ; -> 01/03
C - - - - - 0x01DC24 07:DC14: A9 80     LDA #$80
C - - - - - 0x01DC26 07:DC16: 85 E6     STA ram_00E6_flag
C - - - - - 0x01DC28 07:DC18: A9 14     LDA #$14
C - - - - - 0x01DC2A 07:DC1A: 8D D9 03  STA ram_captain_hp
C - - - - - 0x01DC2D 07:DC1D: 8D DA 03  STA ram_hawk_hp
C - - - - - 0x01DC30 07:DC20: A9 26     LDA #con_music_boss_fight
C - - - - - 0x01DC32 07:DC22: 85 77     STA ram_0077_t03_sound_id
; bzk optimize, JMP
C - - - - - 0x01DC34 07:DC24: 20 04 CB  JSR sub_CB04_play_sound
C - - - - - 0x01DC37 07:DC27: 60        RTS



ofs_011_DC28_01:
bra_DC28_loop:
C - - J - - 0x01DC38 07:DC28: 20 82 E0  JSR sub_E082_wait_1_frm
C - - - - - 0x01DC3B 07:DC2B: 20 BF EF  JSR sub_EFBF_player_handler
C - - - - - 0x01DC3E 07:DC2E: 20 C1 F0  JSR sub_F0C1
C - - - - - 0x01DC41 07:DC31: 20 D5 F0  JSR sub_F0D5
C - - - - - 0x01DC44 07:DC34: 20 32 F1  JSR sub_F132
C - - - - - 0x01DC47 07:DC37: 20 39 EC  JSR sub_EC39
C - - - - - 0x01DC4A 07:DC3A: 20 EB EF  JSR sub_EFEB
C - - - - - 0x01DC4D 07:DC3D: 20 02 C5  JSR sub_C502
C - - - - - 0x01DC50 07:DC40: 20 E9 F0  JSR sub_F0E9
C - - - - - 0x01DC53 07:DC43: 20 83 D3  JSR sub_D383
C - - - - - 0x01DC56 07:DC46: 20 B0 D3  JSR sub_D3B0
C - - - - - 0x01DC59 07:DC49: 20 DB FA  JSR sub_FADB
C - - - - - 0x01DC5C 07:DC4C: 20 11 DE  JSR sub_DE11
C - - - - - 0x01DC5F 07:DC4F: 90 D7     BCC bra_DC28_loop
C - - - - - 0x01DC61 07:DC51: 20 FD DA  JSR sub_DAFD_prepare_palette_and_decrease_brightness
C - - - - - 0x01DC64 07:DC54: EE E6 05  INC ram_05E6_script ; -> 02
C - - - - - 0x01DC67 07:DC57: 60        RTS



ofs_011_DC58_02:
C - - J - - 0x01DC68 07:DC58: 20 CE DC  JSR sub_DCCE
C - - - - - 0x01DC6B 07:DC5B: 20 29 E9  JSR sub_E929_clear_some_addresses
C - - - - - 0x01DC6E 07:DC5E: 20 5A E1  JSR sub_E15A_hide_all_sprites
C - - - - - 0x01DC71 07:DC61: 20 E2 DC  JSR sub_DCE2
C - - - - - 0x01DC74 07:DC64: A9 00     LDA #$00
C - - - - - 0x01DC76 07:DC66: 85 E6     STA ram_00E6_flag
C - - - - - 0x01DC78 07:DC68: 8D 26 04  STA ram_pos_X_hi_shield
C - - - - - 0x01DC7B 07:DC6B: 8D 29 04  STA ram_pos_Y_hi_shield
C - - - - - 0x01DC7E 07:DC6E: 20 DB FA  JSR sub_FADB
C - - - - - 0x01DC81 07:DC71: A9 00     LDA #$00    ; 256 frames
C - - - - - 0x01DC83 07:DC73: 85 A2     STA ram_00A2_t09_delay_lo
C - - - - - 0x01DC85 07:DC75: A9 20     LDA #con_music_map
C - - - - - 0x01DC87 07:DC77: 85 77     STA ram_0077_t03_sound_id
C - - - - - 0x01DC89 07:DC79: 20 04 CB  JSR sub_CB04_play_sound
bra_DC7C_loop:
C - - - - - 0x01DC8C 07:DC7C: 20 82 E0  JSR sub_E082_wait_1_frm
C - - - - - 0x01DC8F 07:DC7F: 20 DB FA  JSR sub_FADB
C - - - - - 0x01DC92 07:DC82: C6 A2     DEC ram_00A2_t09_delay_lo
C - - - - - 0x01DC94 07:DC84: D0 F6     BNE bra_DC7C_loop
C - - - - - 0x01DC96 07:DC86: 20 42 DE  JSR sub_DE42
C - - - - - 0x01DC99 07:DC89: 90 09     BCC bra_DC94
C - - - - - 0x01DC9B 07:DC8B: A9 03     LDA #$03
C - - - - - 0x01DC9D 07:DC8D: 8D E6 05  STA ram_05E6_script
; bzk optimize, JMP
C - - - - - 0x01DCA0 07:DC90: 20 00 DB  JSR sub_DB00_decrease_brightness
C - - - - - 0x01DCA3 07:DC93: 60        RTS
bra_DC94:
C - - - - - 0x01DCA4 07:DC94: A9 00     LDA #$00
C - - - - - 0x01DCA6 07:DC96: 8D E6 05  STA ram_05E6_script
C - - - - - 0x01DCA9 07:DC99: 20 E2 DC  JSR sub_DCE2
C - - - - - 0x01DCAC 07:DC9C: 4C 02 DC  JMP loc_DC02



ofs_011_DC9F_03:
C - - J - - 0x01DCAF 07:DC9F: 20 CE DC  JSR sub_DCCE
C - - - - - 0x01DCB2 07:DCA2: 20 29 E9  JSR sub_E929_clear_some_addresses
C - - - - - 0x01DCB5 07:DCA5: 20 5A E1  JSR sub_E15A_hide_all_sprites
C - - - - - 0x01DCB8 07:DCA8: 20 E2 DC  JSR sub_DCE2
C - - - - - 0x01DCBB 07:DCAB: A9 00     LDA #$00
C - - - - - 0x01DCBD 07:DCAD: 85 E6     STA ram_00E6_flag
C - - - - - 0x01DCBF 07:DCAF: 20 DB FA  JSR sub_FADB
C - - - - - 0x01DCC2 07:DCB2: A9 02     LDA #> $0230
C - - - - - 0x01DCC4 07:DCB4: 85 A2     STA ram_00A2_t04_delay_hi
C - - - - - 0x01DCC6 07:DCB6: A9 30     LDA #< $0230
C - - - - - 0x01DCC8 07:DCB8: 85 A3     STA ram_00A3_t04_delay_lo
bra_DCBA_loop:
C - - - - - 0x01DCCA 07:DCBA: 20 82 E0  JSR sub_E082_wait_1_frm
C - - - - - 0x01DCCD 07:DCBD: 20 DB FA  JSR sub_FADB
C - - - - - 0x01DCD0 07:DCC0: C6 A3     DEC ram_00A3_t04_delay_lo
C - - - - - 0x01DCD2 07:DCC2: D0 F6     BNE bra_DCBA_loop
C - - - - - 0x01DCD4 07:DCC4: C6 A2     DEC ram_00A2_t04_delay_hi
C - - - - - 0x01DCD6 07:DCC6: D0 F2     BNE bra_DCBA_loop
C - - - - - 0x01DCD8 07:DCC8: A9 FF     LDA #$FF
C - - - - - 0x01DCDA 07:DCCA: 8D E6 05  STA ram_05E6_script
C - - - - - 0x01DCDD 07:DCCD: 60        RTS



sub_DCCE:
C - - - - - 0x01DCDE 07:DCCE: A5 9D     LDA ram_prg_bank_A000
C - - - - - 0x01DCE0 07:DCD0: 48        PHA
C - - - - - 0x01DCE1 07:DCD1: A9 0C     LDA #con_prg_bank + $0C
C - - - - - 0x01DCE3 07:DCD3: 85 9D     STA ram_prg_bank_A000
C - - - - - 0x01DCE5 07:DCD5: 20 58 DB  JSR sub_DB58_prg_bankswitch_A000
C - - - - - 0x01DCE8 07:DCD8: 20 30 A0  JSR sub_0x018040
C - - - - - 0x01DCEB 07:DCDB: 68        PLA
C - - - - - 0x01DCEC 07:DCDC: 85 9D     STA ram_prg_bank_A000
; bzk optimize, JMP
C - - - - - 0x01DCEE 07:DCDE: 20 58 DB  JSR sub_DB58_prg_bankswitch_A000
C - - - - - 0x01DCF1 07:DCE1: 60        RTS



sub_DCE2:
C - - - - - 0x01DCF2 07:DCE2: 20 E0 E6  JSR sub_E6E0_clear_some_addresses
C - - - - - 0x01DCF5 07:DCE5: 20 A9 DD  JSR sub_DDA9
C - - - - - 0x01DCF8 07:DCE8: 20 E4 DD  JSR sub_DDE4
; bzk optimize, JMP
C - - - - - 0x01DCFB 07:DCEB: 20 89 DD  JSR sub_DD89
C - - - - - 0x01DCFE 07:DCEE: 60        RTS



sub_DCEF:
C - - - - - 0x01DCFF 07:DCEF: A5 36     LDA ram_buttons
C - - - - - 0x01DD01 07:DCF1: C5 38     CMP ram_prev_buttons
C - - - - - 0x01DD03 07:DCF3: F0 11     BEQ bra_DD06
C - - - - - 0x01DD05 07:DCF5: 29 0C     AND #con_btns_UD
C - - - - - 0x01DD07 07:DCF7: F0 0D     BEQ bra_DD06
C - - - - - 0x01DD09 07:DCF9: AD E9 05  LDA ram_05E9_flag_and_plr_index
C - - - - - 0x01DD0C 07:DCFC: 30 08     BMI bra_DD06
C - - - - - 0x01DD0E 07:DCFE: 49 01     EOR #$01
C - - - - - 0x01DD10 07:DD00: 8D E9 05  STA ram_05E9_flag_and_plr_index
C - - - - - 0x01DD13 07:DD03: 20 A9 DD  JSR sub_DDA9
bra_DD06:
C - - - - - 0x01DD16 07:DD06: A5 37     LDA ram_buttons + $01
C - - - - - 0x01DD18 07:DD08: C5 39     CMP ram_prev_buttons + $01
C - - - - - 0x01DD1A 07:DD0A: F0 1B     BEQ bra_DD27
C - - - - - 0x01DD1C 07:DD0C: 29 0C     AND #con_btns_UD
C - - - - - 0x01DD1E 07:DD0E: F0 17     BEQ bra_DD27
C - - - - - 0x01DD20 07:DD10: AD EA 05  LDA ram_05EA_table_index
C - - - - - 0x01DD23 07:DD13: 30 12     BMI bra_DD27
C - - - - - 0x01DD25 07:DD15: EE EA 05  INC ram_05EA_table_index
C - - - - - 0x01DD28 07:DD18: AD EA 05  LDA ram_05EA_table_index
C - - - - - 0x01DD2B 07:DD1B: C9 03     CMP #$03
C - - - - - 0x01DD2D 07:DD1D: 90 05     BCC bra_DD24_not_overflow
; if overflow
- - - - - - 0x01DD2F 07:DD1F: A9 00     LDA #$00
- - - - - - 0x01DD31 07:DD21: 8D EA 05  STA ram_05EA_table_index
bra_DD24_not_overflow:
C - - - - - 0x01DD34 07:DD24: 20 E4 DD  JSR sub_DDE4
bra_DD27:
; bzk optimize, JMP
C - - - - - 0x01DD37 07:DD27: 20 89 DD  JSR sub_DD89
C - - - - - 0x01DD3A 07:DD2A: 60        RTS



sub_DD2B:
C - - - - - 0x01DD3B 07:DD2B: A5 9D     LDA ram_prg_bank_A000
C - - - - - 0x01DD3D 07:DD2D: 48        PHA
C - - - - - 0x01DD3E 07:DD2E: A9 0C     LDA #con_prg_bank + $0C
C - - - - - 0x01DD40 07:DD30: 85 9D     STA ram_prg_bank_A000
C - - - - - 0x01DD42 07:DD32: 20 58 DB  JSR sub_DB58_prg_bankswitch_A000
C - - - - - 0x01DD45 07:DD35: 20 33 A0  JSR sub_0x018043
C - - - - - 0x01DD48 07:DD38: 68        PLA
C - - - - - 0x01DD49 07:DD39: 85 9D     STA ram_prg_bank_A000
; bzk optimize, JMP
C - - - - - 0x01DD4B 07:DD3B: 20 58 DB  JSR sub_DB58_prg_bankswitch_A000
C - - - - - 0x01DD4E 07:DD3E: 60        RTS



sub_DD3F:
C - - - - - 0x01DD4F 07:DD3F: A5 14     LDA ram_frm_cnt
C - - - - - 0x01DD51 07:DD41: 29 03     AND #$03
C - - - - - 0x01DD53 07:DD43: AA        TAX
C - - - - - 0x01DD54 07:DD44: BD 7E DD  LDA tbl_DD7E,X
C - - - - - 0x01DD57 07:DD47: 85 3C     STA ram_city
C - - - - - 0x01DD59 07:DD49: BD 82 DD  LDA tbl_DD82_palette,X
C - - - - - 0x01DD5C 07:DD4C: 85 4D     STA ram_004D_palette_index
C - - - - - 0x01DD5E 07:DD4E: AD EA 05  LDA ram_05EA_table_index
; bzk optimize, AND 03 for readability
C - - - - - 0x01DD61 07:DD51: 29 0F     AND #$0F
; 
C - - - - - 0x01DD63 07:DD53: AA        TAX
C - - - - - 0x01DD64 07:DD54: BD 86 DD  LDA tbl_DD86,X
C - - - - - 0x01DD67 07:DD57: 85 DB     STA ram_00DB_flag
C - - - - - 0x01DD69 07:DD59: A9 00     LDA #$00
C - - - - - 0x01DD6B 07:DD5B: 8D 3D 04  STA ram_043A_obj_flags + $03
C - - - - - 0x01DD6E 07:DD5E: 85 CA     STA ram_00CA_objects_counter
C - - - - - 0x01DD70 07:DD60: 85 CE     STA ram_all_objects_counter
C - - - - - 0x01DD72 07:DD62: 20 AA EA  JSR sub_EAAA
C - - - - - 0x01DD75 07:DD65: 20 53 E6  JSR sub_E653
C - - - - - 0x01DD78 07:DD68: 20 EF E8  JSR sub_E8EF
C - - - - - 0x01DD7B 07:DD6B: 20 71 E7  JSR sub_E771
C - - - - - 0x01DD7E 07:DD6E: 20 66 E9  JSR sub_E966
C - - - - - 0x01DD81 07:DD71: 20 FB E3  JSR sub_E3FB
C - - - - - 0x01DD84 07:DD74: 20 6F DB  JSR sub_DB6F
C - - - - - 0x01DD87 07:DD77: 20 34 C4  JSR sub_C434
; bzk optimize, JMP
C - - - - - 0x01DD8A 07:DD7A: 20 AD E0  JSR sub_E0AD_enable_rendering
C - - - - - 0x01DD8D 07:DD7D: 60        RTS



tbl_DD7E:
- D 2 - - - 0x01DD8E 07:DD7E: 23        .byte $23   ; 00 
- D 2 - - - 0x01DD8F 07:DD7F: 24        .byte $24   ; 01 
- D 2 - - - 0x01DD90 07:DD80: 25        .byte $25   ; 02 
- D 2 - - - 0x01DD91 07:DD81: 26        .byte $26   ; 03 



tbl_DD82_palette:
- D 2 - - - 0x01DD92 07:DD82: 2C        .byte $2C   ; 00 
- D 2 - - - 0x01DD93 07:DD83: 2D        .byte $2D   ; 01 
- D 2 - - - 0x01DD94 07:DD84: 2E        .byte $2E   ; 02 
- D 2 - - - 0x01DD95 07:DD85: 2F        .byte $2F   ; 03 



tbl_DD86:
- D 2 - - - 0x01DD96 07:DD86: 81        .byte $81   ; 00 
- D 2 - - - 0x01DD97 07:DD87: 82        .byte $82   ; 01 
- D 2 - - - 0x01DD98 07:DD88: 83        .byte $83   ; 02 



sub_DD89:
C - - - - - 0x01DD99 07:DD89: A9 00     LDA #$00
C - - - - - 0x01DD9B 07:DD8B: 85 D2     STA ram_00D2_data_index
C - - - - - 0x01DD9D 07:DD8D: AD EA 05  LDA ram_05EA_table_index
; bzk optimize, AND 03 for readability
C - - - - - 0x01DDA0 07:DD90: 29 0F     AND #$0F
; 
C - - - - - 0x01DDA2 07:DD92: AA        TAX
C - - - - - 0x01DDA3 07:DD93: BD A6 DD  LDA tbl_DDA6,X
C - - - - - 0x01DDA6 07:DD96: 85 0D     STA ram_000D_spr_pal_index
C - - - - - 0x01DDA8 07:DD98: 20 56 DA  JSR sub_DA56_prepare_sprite_palette
C - - - - - 0x01DDAB 07:DD9B: A9 20     LDA #$20    ; background + sprite colors
C - - - - - 0x01DDAD 07:DD9D: 85 4F     STA ram_004F_pal_buffer_size
C - - - - - 0x01DDAF 07:DD9F: A5 02     LDA ram_buffers_flags
C - - - - - 0x01DDB1 07:DDA1: 09 01     ORA #con_buffer_ready_palette
C - - - - - 0x01DDB3 07:DDA3: 85 02     STA ram_buffers_flags
C - - - - - 0x01DDB5 07:DDA5: 60        RTS



tbl_DDA6:
- D 2 - - - 0x01DDB6 07:DDA6: 05        .byte con_000D_05   ; 00 
- D 2 - - - 0x01DDB7 07:DDA7: 06        .byte con_000D_06   ; 01 
- D 2 - - - 0x01DDB8 07:DDA8: 03        .byte con_000D_03   ; 02 



sub_DDA9:
C - - - - - 0x01DDB9 07:DDA9: AD E9 05  LDA ram_05E9_flag_and_plr_index
; bzk optimize, AND 01 for readability
C - - - - - 0x01DDBC 07:DDAC: 29 0F     AND #$0F
; 
C - - - - - 0x01DDBE 07:DDAE: 85 A8     STA ram_plr_index
C - - - - - 0x01DDC0 07:DDB0: 20 53 E6  JSR sub_E653
C - - - - - 0x01DDC3 07:DDB3: A9 38     LDA #$38
C - - - - - 0x01DDC5 07:DDB5: 8D 04 04  STA ram_pos_X_lo_player
C - - - - - 0x01DDC8 07:DDB8: 8D 25 04  STA ram_pos_X_lo_shield
C - - - - - 0x01DDCB 07:DDBB: A9 60     LDA #$60
C - - - - - 0x01DDCD 07:DDBD: 8D 07 04  STA ram_pos_Y_lo_player
C - - - - - 0x01DDD0 07:DDC0: 8D 28 04  STA ram_pos_Y_lo_shield
C - - - - - 0x01DDD3 07:DDC3: A9 00     LDA #$00
C - - - - - 0x01DDD5 07:DDC5: 8D 05 04  STA ram_pos_X_hi_player
C - - - - - 0x01DDD8 07:DDC8: 8D 08 04  STA ram_pos_Y_hi_player
C - - - - - 0x01DDDB 07:DDCB: A9 01     LDA #con_040E_plr_state_walk
C - - - - - 0x01DDDD 07:DDCD: 8D 0E 04  STA ram_player_state_2
C - - - - - 0x01DDE0 07:DDD0: A5 9D     LDA ram_prg_bank_A000
C - - - - - 0x01DDE2 07:DDD2: 48        PHA
C - - - - - 0x01DDE3 07:DDD3: A9 0B     LDA #con_prg_bank + $0B
C - - - - - 0x01DDE5 07:DDD5: 85 9D     STA ram_prg_bank_A000
C - - - - - 0x01DDE7 07:DDD7: 20 58 DB  JSR sub_DB58_prg_bankswitch_A000
C - - - - - 0x01DDEA 07:DDDA: 20 03 A0  JSR sub_0x016013
C - - - - - 0x01DDED 07:DDDD: 68        PLA
C - - - - - 0x01DDEE 07:DDDE: 85 9D     STA ram_prg_bank_A000
; bzk optimize, JMP
C - - - - - 0x01DDF0 07:DDE0: 20 58 DB  JSR sub_DB58_prg_bankswitch_A000
C - - - - - 0x01DDF3 07:DDE3: 60        RTS



sub_DDE4:
C - - - - - 0x01DDF4 07:DDE4: A9 00     LDA #$00
C - - - - - 0x01DDF6 07:DDE6: 8D 3D 04  STA ram_043A_obj_flags + $03
C - - - - - 0x01DDF9 07:DDE9: 85 CA     STA ram_00CA_objects_counter
C - - - - - 0x01DDFB 07:DDEB: 85 CE     STA ram_all_objects_counter
C - - - - - 0x01DDFD 07:DDED: AD EA 05  LDA ram_05EA_table_index
; bzk optimize, AND 03 for readability
C - - - - - 0x01DE00 07:DDF0: 29 0F     AND #$0F
; 
C - - - - - 0x01DE02 07:DDF2: AA        TAX
C - - - - - 0x01DE03 07:DDF3: BD 0E DE  LDA tbl_DE0E,X
C - - - - - 0x01DE06 07:DDF6: 85 DB     STA ram_00DB_flag
C - - - - - 0x01DE08 07:DDF8: 20 AA EA  JSR sub_EAAA
C - - - - - 0x01DE0B 07:DDFB: A9 C8     LDA #< $00C8
C - - - - - 0x01DE0D 07:DDFD: 8D 64 04  STA ram_pos_X_lo_obj + $03
C - - - - - 0x01DE10 07:DE00: A9 60     LDA #< $0060
C - - - - - 0x01DE12 07:DE02: 8D 8B 04  STA ram_pos_Y_lo_obj + $03
C - - - - - 0x01DE15 07:DE05: A9 00     LDA #$00
C - - - - - 0x01DE17 07:DE07: 8D 71 04  STA ram_pos_X_hi_obj + $03
C - - - - - 0x01DE1A 07:DE0A: 8D 98 04  STA ram_pos_Y_hi_obj + $03
C - - - - - 0x01DE1D 07:DE0D: 60        RTS



tbl_DE0E:
- D 2 - - - 0x01DE1E 07:DE0E: 84        .byte $84   ; 00 
- D 2 - - - 0x01DE1F 07:DE0F: 85        .byte $85   ; 01 
- D 2 - - - 0x01DE20 07:DE10: 86        .byte $86   ; 02 



sub_DE11:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x01DE21 07:DE11: AD 1F 04  LDA ram_041F_player_flags
C - - - - - 0x01DE24 07:DE14: 29 08     AND #$08
C - - - - - 0x01DE26 07:DE16: F0 0E     BEQ bra_DE26
C - - - - - 0x01DE28 07:DE18: AD 79 05  LDA ram_obj_hp
C - - - - - 0x01DE2B 07:DE1B: F0 1E     BEQ bra_DE3B
C - - - - - 0x01DE2D 07:DE1D: 30 1C     BMI bra_DE3B
C - - - - - 0x01DE2F 07:DE1F: EE E8 05  INC ram_05E8_counter_2
C - - - - - 0x01DE32 07:DE22: A9 02     LDA #$02
C - - - - - 0x01DE34 07:DE24: D0 17     BNE bra_DE3D    ; jmp
bra_DE26:
C - - - - - 0x01DE36 07:DE26: AD 53 04  LDA ram_0453_t02
C - - - - - 0x01DE39 07:DE29: D0 0E     BNE bra_DE39
C - - - - - 0x01DE3B 07:DE2B: AD 1F 04  LDA ram_041F_player_flags
C - - - - - 0x01DE3E 07:DE2E: 29 18     AND #$18
C - - - - - 0x01DE40 07:DE30: D0 09     BNE bra_DE3B
C - - - - - 0x01DE42 07:DE32: EE E7 05  INC ram_05E7_counter_1
C - - - - - 0x01DE45 07:DE35: A9 01     LDA #$01
C - - - - - 0x01DE47 07:DE37: D0 04     BNE bra_DE3D    ; jmp
bra_DE39:
C - - - - - 0x01DE49 07:DE39: 18        CLC
C - - - - - 0x01DE4A 07:DE3A: 60        RTS
bra_DE3B:
- - - - - - 0x01DE4B 07:DE3B: A9 03     LDA #$03
bra_DE3D:
C - - - - - 0x01DE4D 07:DE3D: 8D EB 05  STA ram_05EB_table_index
C - - - - - 0x01DE50 07:DE40: 38        SEC
C - - - - - 0x01DE51 07:DE41: 60        RTS



sub_DE42:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x01DE52 07:DE42: AD E7 05  LDA ram_05E7_counter_1
C - - - - - 0x01DE55 07:DE45: C9 03     CMP #$03
C - - - - - 0x01DE57 07:DE47: B0 09     BCS bra_DE52
C - - - - - 0x01DE59 07:DE49: AD E8 05  LDA ram_05E8_counter_2
C - - - - - 0x01DE5C 07:DE4C: C9 03     CMP #$03
C - - - - - 0x01DE5E 07:DE4E: B0 02     BCS bra_DE52
C - - - - - 0x01DE60 07:DE50: 18        CLC
C - - - - - 0x01DE61 07:DE51: 60        RTS
bra_DE52:
C - - - - - 0x01DE62 07:DE52: 38        SEC
C - - - - - 0x01DE63 07:DE53: 60        RTS



loc_DE54:
sub_DE54:
C D 2 - - - 0x01DE64 07:DE54: 20 82 E0  JSR sub_E082_wait_1_frm
C - - - - - 0x01DE67 07:DE57: 20 95 DE  JSR sub_DE95
C - - - - - 0x01DE6A 07:DE5A: B0 2D     BCS bra_DE89
C - - - - - 0x01DE6C 07:DE5C: 20 BF EF  JSR sub_EFBF_player_handler
C - - - - - 0x01DE6F 07:DE5F: 20 30 CB  JSR sub_CB30
C - - - - - 0x01DE72 07:DE62: 20 AA F0  JSR sub_F0AA
C - - - - - 0x01DE75 07:DE65: 20 D5 F0  JSR sub_F0D5
C - - - - - 0x01DE78 07:DE68: 20 32 F1  JSR sub_F132
C - - - - - 0x01DE7B 07:DE6B: 20 39 EC  JSR sub_EC39
C - - - - - 0x01DE7E 07:DE6E: 20 EB EF  JSR sub_EFEB
C - - - - - 0x01DE81 07:DE71: 20 7F D4  JSR sub_D47F
C - - - - - 0x01DE84 07:DE74: 20 6B F3  JSR sub_F36B_scroll_handler
C - - - - - 0x01DE87 07:DE77: 20 E9 F0  JSR sub_F0E9
C - - - - - 0x01DE8A 07:DE7A: 20 83 D3  JSR sub_D383
C - - - - - 0x01DE8D 07:DE7D: 20 B0 D3  JSR sub_D3B0
C - - - - - 0x01DE90 07:DE80: 20 02 C5  JSR sub_C502
C - - - - - 0x01DE93 07:DE83: 20 DB FA  JSR sub_FADB
C - - - - - 0x01DE96 07:DE86: 4C 54 DE  JMP loc_DE54
bra_DE89:
C - - - - - 0x01DE99 07:DE89: 20 FD DA  JSR sub_DAFD_prepare_palette_and_decrease_brightness
C - - - - - 0x01DE9C 07:DE8C: A9 00     LDA #$00
C - - - - - 0x01DE9E 07:DE8E: 8D 87 05  STA ram_0587_obj
; bzk optimize, JMP
C - - - - - 0x01DEA1 07:DE91: 20 E0 E6  JSR sub_E6E0_clear_some_addresses
C - - - - - 0x01DEA4 07:DE94: 60        RTS



sub_DE95:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x01DEA5 07:DE95: A5 36     LDA ram_buttons
C - - - - - 0x01DEA7 07:DE97: C9 10     CMP #con_btn_Start
C - - - - - 0x01DEA9 07:DE99: F0 49     BEQ bra_DEE4
C - - - - - 0x01DEAB 07:DE9B: A5 EC     LDA ram_demo_btns_hold_timer
C - - - - - 0x01DEAD 07:DE9D: F0 10     BEQ bra_DEAF
C - - - - - 0x01DEAF 07:DE9F: C6 EC     DEC ram_demo_btns_hold_timer
loc_DEA1:
C D 2 - - - 0x01DEB1 07:DEA1: A5 ED     LDA ram_demo_buttons
C - - - - - 0x01DEB3 07:DEA3: 85 36     STA ram_buttons
C - - - - - 0x01DEB5 07:DEA5: 29 0F     AND #con_btns_Dpad
C - - - - - 0x01DEB7 07:DEA7: AA        TAX
C - - - - - 0x01DEB8 07:DEA8: BD E6 DE  LDA tbl_DEE6,X
C - - - - - 0x01DEBB 07:DEAB: 85 1B     STA ram_001B_player_angle
C - - - - - 0x01DEBD 07:DEAD: 18        CLC
C - - - - - 0x01DEBE 07:DEAE: 60        RTS
bra_DEAF:
C - - - - - 0x01DEBF 07:DEAF: A5 9C     LDA ram_prg_bank_8000
C - - - - - 0x01DEC1 07:DEB1: 48        PHA
C - - - - - 0x01DEC2 07:DEB2: A9 03     LDA #con_prg_bank + $03
C - - - - - 0x01DEC4 07:DEB4: 85 9C     STA ram_prg_bank_8000
C - - - - - 0x01DEC6 07:DEB6: 20 41 DB  JSR sub_DB41_prg_bankswitch_8000
C - - - - - 0x01DEC9 07:DEB9: A0 00     LDY #$00
C - - - - - 0x01DECB 07:DEBB: B1 EA     LDA (ram_data_ptr_demo_btns),Y
C - - - - - 0x01DECD 07:DEBD: C9 FF     CMP #$FF
C - - - - - 0x01DECF 07:DEBF: F0 1D     BEQ bra_DEDE_FF
C - - - - - 0x01DED1 07:DEC1: 85 ED     STA ram_demo_buttons
C - - - - - 0x01DED3 07:DEC3: C8        INY ; 01
C - - - - - 0x01DED4 07:DEC4: B1 EA     LDA (ram_data_ptr_demo_btns),Y
C - - - - - 0x01DED6 07:DEC6: 85 EC     STA ram_demo_btns_hold_timer
C - - - - - 0x01DED8 07:DEC8: A5 EA     LDA ram_data_ptr_demo_btns
C - - - - - 0x01DEDA 07:DECA: 18        CLC
C - - - - - 0x01DEDB 07:DECB: 69 02     ADC #< $0002
C - - - - - 0x01DEDD 07:DECD: 85 EA     STA ram_data_ptr_demo_btns
C - - - - - 0x01DEDF 07:DECF: A5 EB     LDA ram_data_ptr_demo_btns + $01
C - - - - - 0x01DEE1 07:DED1: 69 00     ADC #> $0002
C - - - - - 0x01DEE3 07:DED3: 85 EB     STA ram_data_ptr_demo_btns + $01
C - - - - - 0x01DEE5 07:DED5: 68        PLA
C - - - - - 0x01DEE6 07:DED6: 85 9C     STA ram_prg_bank_8000
C - - - - - 0x01DEE8 07:DED8: 20 41 DB  JSR sub_DB41_prg_bankswitch_8000
C - - - - - 0x01DEEB 07:DEDB: 4C A1 DE  JMP loc_DEA1
bra_DEDE_FF:
C - - - - - 0x01DEEE 07:DEDE: 68        PLA
C - - - - - 0x01DEEF 07:DEDF: 85 9C     STA ram_prg_bank_8000
C - - - - - 0x01DEF1 07:DEE1: 20 41 DB  JSR sub_DB41_prg_bankswitch_8000
bra_DEE4:
C - - - - - 0x01DEF4 07:DEE4: 38        SEC
C - - - - - 0x01DEF5 07:DEE5: 60        RTS



tbl_DEE6:
- D 2 - - - 0x01DEF6 07:DEE6: 00        .byte $00   ; 00 
- D 2 - - - 0x01DEF7 07:DEE7: 04        .byte $04   ; 01 
- D 2 - - - 0x01DEF8 07:DEE8: 03        .byte $03   ; 02 
- - - - - - 0x01DEF9 07:DEE9: 00        .byte $00   ; 03 
- D 2 - - - 0x01DEFA 07:DEEA: 02        .byte $02   ; 04 
- D 2 - - - 0x01DEFB 07:DEEB: 06        .byte $06   ; 05 
- - - - - - 0x01DEFC 07:DEEC: 07        .byte $07   ; 06 
- - - - - - 0x01DEFD 07:DEED: 00        .byte $00   ; 07 
- D 2 - - - 0x01DEFE 07:DEEE: 01        .byte $01   ; 08 
- - - - - - 0x01DEFF 07:DEEF: 05        .byte $05   ; 09 
- - - - - - 0x01DF00 07:DEF0: 08        .byte $08   ; 0A 
- - - - - - 0x01DF01 07:DEF1: 00        .byte $00   ; 0B 
- - - - - - 0x01DF02 07:DEF2: 00        .byte $00   ; 0C 
- - - - - - 0x01DF03 07:DEF3: 00        .byte $00   ; 0D 
- - - - - - 0x01DF04 07:DEF4: 00        .byte $00   ; 0E 
- - - - - - 0x01DF05 07:DEF5: 00        .byte $00   ; 0F 



loc_DEF6_prepare_big_digits_for_score:
; bzk optimize, this X = 06 will lead to RTS (see 0x01DF6B),
; go straight to 0x01DF1E instead
C D 2 - - - 0x01DF06 07:DEF6: A2 06     LDX #$06
bra_DEF8:
C - - - - - 0x01DF08 07:DEF8: 8A        TXA
C - - - - - 0x01DF09 07:DEF9: 0A        ASL
C - - - - - 0x01DF0A 07:DEFA: A8        TAY
C - - - - - 0x01DF0B 07:DEFB: B9 4F DF  LDA tbl_DF4F,Y
C - - - - - 0x01DF0E 07:DEFE: 85 5B     STA ram_005B_t47_jmp
C - - - - - 0x01DF10 07:DF00: B9 50 DF  LDA tbl_DF4F + $01,Y
C - - - - - 0x01DF13 07:DF03: 85 5C     STA ram_005B_t47_jmp + $01
C - - - - - 0x01DF15 07:DF05: A9 DF     LDA #> (ofs_DF0E_return - $01)
C - - - - - 0x01DF17 07:DF07: 48        PHA
C - - - - - 0x01DF18 07:DF08: A9 0D     LDA #< (ofs_DF0E_return - $01)
C - - - - - 0x01DF1A 07:DF0A: 48        PHA
C - - - - - 0x01DF1B 07:DF0B: 6C 5B 00  JMP (ram_005B_t47_jmp)



ofs_DF0E_return:
; in
    ; ram_006E_t14_score_hi
    ; ram_006F_t08_score_lo
C - - - - - 0x01DF1E 07:DF0E: CA        DEX
C - - - - - 0x01DF1F 07:DF0F: F0 37     BEQ bra_DF48
C - - - - - 0x01DF21 07:DF11: A9 00     LDA #$00
C - - - - - 0x01DF23 07:DF13: 85 74     STA ram_0074_t03_tens_digit
bra_DF15_loop:
C - - - - - 0x01DF25 07:DF15: A5 6E     LDA ram_006E_t14_score_hi
C - - - - - 0x01DF27 07:DF17: DD 84 DF  CMP tbl_DF84,X
C - - - - - 0x01DF2A 07:DF1A: F0 02     BEQ bra_DF1E
C - - - - - 0x01DF2C 07:DF1C: D0 0E     BNE bra_DF2C    ; jmp
bra_DF1E:
C - - - - - 0x01DF2E 07:DF1E: A5 6F     LDA ram_006F_t08_score_lo
C - - - - - 0x01DF30 07:DF20: DD 8A DF  CMP tbl_DF8A,X
C - - - - - 0x01DF33 07:DF23: F0 02     BEQ bra_DF27
C - - - - - 0x01DF35 07:DF25: D0 05     BNE bra_DF2C    ; jmp
bra_DF27:
C - - - - - 0x01DF37 07:DF27: A5 70     LDA ram_0070_t03_tens_digit
C - - - - - 0x01DF39 07:DF29: DD 90 DF  CMP tbl_DF90,X
bra_DF2C:
C - - - - - 0x01DF3C 07:DF2C: 90 CA     BCC bra_DEF8
C - - - - - 0x01DF3E 07:DF2E: A5 70     LDA ram_0070_t03_tens_digit
C - - - - - 0x01DF40 07:DF30: 38        SEC
C - - - - - 0x01DF41 07:DF31: FD 90 DF  SBC tbl_DF90,X
C - - - - - 0x01DF44 07:DF34: 85 70     STA ram_0070_t03_tens_digit
C - - - - - 0x01DF46 07:DF36: A5 6F     LDA ram_006F_t08_score_lo
C - - - - - 0x01DF48 07:DF38: FD 8A DF  SBC tbl_DF8A,X
C - - - - - 0x01DF4B 07:DF3B: 85 6F     STA ram_006F_t08_score_lo
C - - - - - 0x01DF4D 07:DF3D: A5 6E     LDA ram_006E_t14_score_hi
C - - - - - 0x01DF4F 07:DF3F: FD 84 DF  SBC tbl_DF84,X
C - - - - - 0x01DF52 07:DF42: 85 6E     STA ram_006E_t14_score_hi
C - - - - - 0x01DF54 07:DF44: E6 74     INC ram_0074_t03_tens_digit
C - - - - - 0x01DF56 07:DF46: D0 CD     BNE bra_DF15_loop    ; jmp



bra_DF48:
ofs_010_DF48_00_prepare_0000xx:
C - - - - - 0x01DF58 07:DF48: A5 70     LDA ram_0070_t03_tens_digit
C - - - - - 0x01DF5A 07:DF4A: 05 73     ORA ram_0073_t08_ones_digit
C - - - - - 0x01DF5C 07:DF4C: 85 73     STA ram_0071_t18_score_array + $02
C - - - - - 0x01DF5E 07:DF4E: 60        RTS



tbl_DF4F:
- - - - - - 0x01DF5F 07:DF4F: 48 DF     .word ofs_010_DF48_00_prepare_0000xx
- D 2 - - - 0x01DF61 07:DF51: 77 DF     .word ofs_010_DF77_01
- D 2 - - - 0x01DF63 07:DF53: 70 DF     .word ofs_010_DF70_02_prepare_00xx00
- D 2 - - - 0x01DF65 07:DF55: 6A DF     .word ofs_010_DF6A_03
- D 2 - - - 0x01DF67 07:DF57: 63 DF     .word ofs_010_DF63_04_prepare_xx0000
- D 2 - - - 0x01DF69 07:DF59: 5D DF     .word ofs_010_DF5D_05
- D 2 - - - 0x01DF6B 07:DF5B: 62 DF     .word ofs_010_DF62_06_RTS



ofs_010_DF5D_05:
C - - J - - 0x01DF6D 07:DF5D: 20 7D DF  JSR sub_DF7D
C - - - - - 0x01DF70 07:DF60: 85 71     STA ram_0071_t25_ones_digit
ofs_010_DF62_06_RTS:
C - - J - - 0x01DF72 07:DF62: 60        RTS



ofs_010_DF63_04_prepare_xx0000:
C - - J - - 0x01DF73 07:DF63: A5 74     LDA ram_0074_t03_tens_digit
C - - - - - 0x01DF75 07:DF65: 05 71     ORA ram_0071_t25_ones_digit
C - - - - - 0x01DF77 07:DF67: 85 71     STA ram_0071_t18_score_array
C - - - - - 0x01DF79 07:DF69: 60        RTS



ofs_010_DF6A_03:
C - - J - - 0x01DF7A 07:DF6A: 20 7D DF  JSR sub_DF7D
C - - - - - 0x01DF7D 07:DF6D: 85 72     STA ram_0072_t08_ones_digit
C - - - - - 0x01DF7F 07:DF6F: 60        RTS



ofs_010_DF70_02_prepare_00xx00:
C - - J - - 0x01DF80 07:DF70: A5 74     LDA ram_0074_t03_tens_digit
C - - - - - 0x01DF82 07:DF72: 05 72     ORA ram_0072_t08_ones_digit
C - - - - - 0x01DF84 07:DF74: 85 72     STA ram_0071_t18_score_array + $01
C - - - - - 0x01DF86 07:DF76: 60        RTS



ofs_010_DF77_01:
C - - J - - 0x01DF87 07:DF77: 20 7D DF  JSR sub_DF7D
C - - - - - 0x01DF8A 07:DF7A: 85 73     STA ram_0073_t08_ones_digit
C - - - - - 0x01DF8C 07:DF7C: 60        RTS



sub_DF7D:
C - - - - - 0x01DF8D 07:DF7D: A5 74     LDA ram_0074_t03_tens_digit
; * 04
C - - - - - 0x01DF8F 07:DF7F: 0A        ASL
C - - - - - 0x01DF90 07:DF80: 0A        ASL
C - - - - - 0x01DF91 07:DF81: 0A        ASL
C - - - - - 0x01DF92 07:DF82: 0A        ASL
; 
C - - - - - 0x01DF93 07:DF83: 60        RTS



tbl_DF84:
- - - - - - 0x01DF94 07:DF84: 00        .byte $00   ; 01 placeholder
- D 2 - - - 0x01DF95 07:DF85: 00        .byte $00   ; 02 
- D 2 - - - 0x01DF96 07:DF86: 00        .byte $00   ; 03 
- D 2 - - - 0x01DF97 07:DF87: 00        .byte $00   ; 04 
- D 2 - - - 0x01DF98 07:DF88: 00        .byte $00   ; 05 
- D 2 - - - 0x01DF99 07:DF89: 01        .byte $01   ; 06 



tbl_DF8A:
- - - - - - 0x01DF9A 07:DF8A: 00        .byte $00   ; 01 placeholder
- D 2 - - - 0x01DF9B 07:DF8B: 00        .byte $00   ; 02 
- D 2 - - - 0x01DF9C 07:DF8C: 00        .byte $00   ; 03 
- D 2 - - - 0x01DF9D 07:DF8D: 03        .byte $03   ; 04 
- D 2 - - - 0x01DF9E 07:DF8E: 27        .byte $27   ; 05 
- D 2 - - - 0x01DF9F 07:DF8F: 86        .byte $86   ; 06 



tbl_DF90:
- - - - - - 0x01DFA0 07:DF90: 00        .byte $00   ; 01 placeholder
- D 2 - - - 0x01DFA1 07:DF91: 0A        .byte $0A   ; 02 
- D 2 - - - 0x01DFA2 07:DF92: 64        .byte $64   ; 03 
- D 2 - - - 0x01DFA3 07:DF93: E8        .byte $E8   ; 04 
- D 2 - - - 0x01DFA4 07:DF94: 10        .byte $10   ; 05 
- D 2 - - - 0x01DFA5 07:DF95: A0        .byte $A0   ; 06 



sub_DF96_try_to_enable_cheats:
; max power for both players:
    ; collect exactly 77 crystals for Captain
    ; enter cheat (power increase sound confirmation)
; invincibility for both players:
    ; max power cheat must be already activated
    ; collect exactly 7 crystals for Hawk
    ; enter cheat (explosion sound confirmation)
; how to enter a cheat:
    ; re-open pause menu to reload input counter
    ; on P2 press A 15 times while holding Up
    ; on P2 press B 15 times while holding Down
    ; you will hear a confirmation sound
C - - - - - 0x01DFA6 07:DF96: AD DD 03  LDA ram_plr_crystals    ; captain
C - - - - - 0x01DFA9 07:DF99: C9 4D     CMP #$4D    ; 77
C - - - - - 0x01DFAB 07:DF9B: D0 4B     BNE bra_DFE8_RTS
- - - - - - 0x01DFAD 07:DF9D: AD FB 05  LDA ram_cheat_type
- - - - - - 0x01DFB0 07:DFA0: 30 46     BMI bra_DFE8_RTS
- - - - - - 0x01DFB2 07:DFA2: A5 37     LDA ram_buttons + $01
- - - - - - 0x01DFB4 07:DFA4: C5 39     CMP ram_prev_buttons + $01
- - - - - - 0x01DFB6 07:DFA6: F0 40     BEQ bra_DFE8_RTS
- - - - - - 0x01DFB8 07:DFA8: 29 04     AND #con_btn_Down
- - - - - - 0x01DFBA 07:DFAA: D0 10     BNE bra_DFBC_pressed_Down
- - - - - - 0x01DFBC 07:DFAC: A5 37     LDA ram_buttons + $01
- - - - - - 0x01DFBE 07:DFAE: 29 08     AND #con_btn_Up
- - - - - - 0x01DFC0 07:DFB0: F0 36     BEQ bra_DFE8_RTS
; if pressed Up
- - - - - - 0x01DFC2 07:DFB2: A5 37     LDA ram_buttons + $01
- - - - - - 0x01DFC4 07:DFB4: 29 80     AND #con_btn_A
- - - - - - 0x01DFC6 07:DFB6: F0 30     BEQ bra_DFE8_RTS
- - - - - - 0x01DFC8 07:DFB8: EE FC 05  INC ram_cheat_buttons_counter
- - - - - - 0x01DFCB 07:DFBB: 60        RTS
bra_DFBC_pressed_Down:
- - - - - - 0x01DFCC 07:DFBC: A5 37     LDA ram_buttons + $01
- - - - - - 0x01DFCE 07:DFBE: 29 40     AND #con_btn_B
- - - - - - 0x01DFD0 07:DFC0: F0 26     BEQ bra_DFE8_RTS
; if pressed B
- - - - - - 0x01DFD2 07:DFC2: AD FC 05  LDA ram_cheat_buttons_counter
- - - - - - 0x01DFD5 07:DFC5: 18        CLC
- - - - - - 0x01DFD6 07:DFC6: 69 10     ADC #$10
- - - - - - 0x01DFD8 07:DFC8: 8D FC 05  STA ram_cheat_buttons_counter
- - - - - - 0x01DFDB 07:DFCB: C9 FF     CMP #$FF
- - - - - - 0x01DFDD 07:DFCD: D0 19     BNE bra_DFE8_RTS
; if successful input
- - - - - - 0x01DFDF 07:DFCF: AD FB 05  LDA ram_cheat_type
- - - - - - 0x01DFE2 07:DFD2: C9 03     CMP #$03
- - - - - - 0x01DFE4 07:DFD4: F0 13     BEQ bra_DFE9_already_gained_max_power_with_cheat
; if 1st time
- - - - - - 0x01DFE6 07:DFD6: A9 03     LDA #$03
- - - - - - 0x01DFE8 07:DFD8: 8D D7 03  STA ram_captain_power
- - - - - - 0x01DFEB 07:DFDB: 8D D8 03  STA ram_hawk_power
- - - - - - 0x01DFEE 07:DFDE: 8D FB 05  STA ram_cheat_type
- - - - - - 0x01DFF1 07:DFE1: A9 2B     LDA #con_sfx_power_increase
- - - - - - 0x01DFF3 07:DFE3: 85 77     STA ram_0077_t03_sound_id
; bzk optimize, JMP
- - - - - - 0x01DFF5 07:DFE5: 20 04 CB  JSR sub_CB04_play_sound
bra_DFE8_RTS:
C - - - - - 0x01DFF8 07:DFE8: 60        RTS
bra_DFE9_already_gained_max_power_with_cheat:
- - - - - - 0x01DFF9 07:DFE9: AD DE 03  LDA ram_plr_crystals + $01  ; hawk
- - - - - - 0x01DFFC 07:DFEC: C9 07     CMP #$07
- - - - - - 0x01DFFE 07:DFEE: D0 F8     BNE bra_DFE8_RTS
- - - - - - 0x01E000 07:DFF0: A9 FF     LDA #$FF
- - - - - - 0x01E002 07:DFF2: 85 E1     STA ram_cheat_invinc_flag
- - - - - - 0x01E004 07:DFF4: 8D FB 05  STA ram_cheat_type
- - - - - - 0x01E007 07:DFF7: A9 1B     LDA #con_sfx_explosion
- - - - - - 0x01E009 07:DFF9: 85 77     STA ram_0077_t03_sound_id
; bzk optimize, JMP
- - - - - - 0x01E00B 07:DFFB: 20 04 CB  JSR sub_CB04_play_sound
- - - - - - 0x01E00E 07:DFFE: 60        RTS


; bzk garbage
- - - - - - 0x01E00F 07:DFFF: FF        .byte $FF   ; 



vec_E000_RESET:
C - - - - - 0x01E010 07:E000: 78        SEI
C - - - - - 0x01E011 07:E001: D8        CLD
C - - - - - 0x01E012 07:E002: A2 00     LDX #$00
C - - - - - 0x01E014 07:E004: 8E 00 20  STX $2000
; reset is in progress
C - - - - - 0x01E017 07:E007: 86 0A     STX ram_reset_flag
; 
C - - - - - 0x01E019 07:E009: CA        DEX ; FF
C - - - - - 0x01E01A 07:E00A: 9A        TXS
; wait 2 frames
C - - - - - 0x01E01B 07:E00B: A2 02     LDX #$02
bra_E00D_loop:
bra_E00D_infinite_loop:
C - - - - - 0x01E01D 07:E00D: 2C 02 20  BIT $2002
C - - - - - 0x01E020 07:E010: 10 FB     BPL bra_E00D_infinite_loop
bra_E012_loop:
C - - - - - 0x01E022 07:E012: 2C 02 20  BIT $2002
C - - - - - 0x01E025 07:E015: 30 FB     BMI bra_E012_loop
C - - - - - 0x01E027 07:E017: CA        DEX
C - - - - - 0x01E028 07:E018: D0 F3     BNE bra_E00D_loop
C - - - - - 0x01E02A 07:E01A: A9 00     LDA #$00
C - - - - - 0x01E02C 07:E01C: 8D 00 A0  STA $A000   ; disable SRAM
; bzk optimize, useless LDA
C - - - - - 0x01E02F 07:E01F: A9 00     LDA #$00
C - - - - - 0x01E031 07:E021: 8D 10 40  STA $4010
C - - - - - 0x01E034 07:E024: A9 40     LDA #$40
C - - - - - 0x01E036 07:E026: 8D 17 40  STA $4017
C - - - - - 0x01E039 07:E029: A9 80     LDA #$80
C - - - - - 0x01E03B 07:E02B: 8D 01 A0  STA $A001
C - - - - - 0x01E03E 07:E02E: 8D 00 E0  STA $E000   ; disable IRQ
; bzk useless code up to 0x01E050
C - - - - - 0x01E041 07:E031: AD 02 20  LDA $2002
C - - - - - 0x01E044 07:E034: A9 10     LDA #$10
C - - - - - 0x01E046 07:E036: AA        TAX ; 10
bra_E037_loop:
C - - - - - 0x01E047 07:E037: 8D 06 20  STA $2006
C - - - - - 0x01E04A 07:E03A: 8D 06 20  STA $2006
C - - - - - 0x01E04D 07:E03D: 49 10     EOR #$10
C - - - - - 0x01E04F 07:E03F: CA        DEX
C - - - - - 0x01E050 07:E040: D0 F5     BNE bra_E037_loop
; clear 0000-07FF
C - - - - - 0x01E052 07:E042: A9 07     LDA #> $0700
C - - - - - 0x01E054 07:E044: 85 68     STA ram_0067_t00_data + $01
C - - - - - 0x01E056 07:E046: A9 00     LDA #< $0700
C - - - - - 0x01E058 07:E048: 85 67     STA ram_0067_t00_data
C - - - - - 0x01E05A 07:E04A: A8        TAY ; 00
bra_E04B_loop:
C - - - - - 0x01E05B 07:E04B: 91 67     STA (ram_0067_t00_data),Y
C - - - - - 0x01E05D 07:E04D: 88        DEY
C - - - - - 0x01E05E 07:E04E: D0 FB     BNE bra_E04B_loop
C - - - - - 0x01E060 07:E050: C6 68     DEC ram_0067_t00_data + $01
C - - - - - 0x01E062 07:E052: 10 F7     BPL bra_E04B_loop
; A = 00
; bzk optimize, useless STA
C - - - - - 0x01E064 07:E054: 85 68     STA ram_0068_tFF_useless
C - - - - - 0x01E066 07:E056: A9 A0     LDA #$A0
C - - - - - 0x01E068 07:E058: 85 3A     STA ram_for_2000
C - - - - - 0x01E06A 07:E05A: 8D 00 20  STA $2000
C - - - - - 0x01E06D 07:E05D: A9 00     LDA #$00
C - - - - - 0x01E06F 07:E05F: 85 3B     STA ram_for_2001
C - - - - - 0x01E071 07:E061: 8D 01 20  STA $2001
C - - - - - 0x01E074 07:E064: 20 FC E0  JSR sub_E0FC_turn_screen_off
C - - - - - 0x01E077 07:E067: A9 07     LDA #con_prg_bank + $07
C - - - - - 0x01E079 07:E069: 85 9C     STA ram_prg_bank_8000
C - - - - - 0x01E07B 07:E06B: 20 41 DB  JSR sub_DB41_prg_bankswitch_8000
C - - - - - 0x01E07E 07:E06E: 20 00 80  JSR sub_0x00E010_diasable_sound_engine
C - - - - - 0x01E081 07:E071: 58        CLI
; reset has done its preparations
C - - - - - 0x01E082 07:E072: A9 FF     LDA #$FF
C - - - - - 0x01E084 07:E074: 85 0A     STA ram_reset_flag
; 
C - - - - - 0x01E086 07:E076: 20 82 E0  JSR sub_E082_wait_1_frm
C - - - - - 0x01E089 07:E079: 20 D1 E3  JSR sub_E3D1
C - - - - - 0x01E08C 07:E07C: 20 46 ED  JSR sub_ED46_print_cutscene_text
C - - - - - 0x01E08F 07:E07F: 4C 5E EB  JMP loc_EB5E_main_game_script



sub_E082_wait_1_frm:
loc_E082_wait_1_frm:
; wait 1 frame
C D 3 - - - 0x01E092 07:E082: A5 14     LDA ram_frm_cnt
bra_E084_loop:
C - - - - - 0x01E094 07:E084: E6 15     INC ram_0015_useless_counter
C - - - - - 0x01E096 07:E086: D0 0A     BNE bra_E092_skip
C - - - - - 0x01E098 07:E088: E6 16     INC ram_0015_useless_counter + $01
C - - - - - 0x01E09A 07:E08A: D0 06     BNE bra_E092_skip
C - - - - - 0x01E09C 07:E08C: E6 17     INC ram_0015_useless_counter + $02
C - - - - - 0x01E09E 07:E08E: D0 02     BNE bra_E092_skip
C - - - - - 0x01E0A0 07:E090: E6 18     INC ram_0015_useless_counter + $03
bra_E092_skip:
C - - - - - 0x01E0A2 07:E092: C5 14     CMP ram_frm_cnt
C - - - - - 0x01E0A4 07:E094: F0 EE     BEQ bra_E084_loop
C - - - - - 0x01E0A6 07:E096: 60        RTS



sub_E097_wait_for_timer:
bra_E097_loop:
C - - - - - 0x01E0A7 07:E097: 20 82 E0  JSR sub_E082_wait_1_frm
C - - - - - 0x01E0AA 07:E09A: A9 01     LDA #$01
C - - - - - 0x01E0AC 07:E09C: 85 0C     STA ram_nmi_flag
C - - - - - 0x01E0AE 07:E09E: A5 19     LDA ram_0019_timer_lo
C - - - - - 0x01E0B0 07:E0A0: D0 02     BNE bra_E0A4_skip
- - - - - - 0x01E0B2 07:E0A2: C6 1A     DEC ram_001A_timer_hi
bra_E0A4_skip:
C - - - - - 0x01E0B4 07:E0A4: C6 19     DEC ram_0019_timer_lo
C - - - - - 0x01E0B6 07:E0A6: A5 19     LDA ram_0019_timer_lo
C - - - - - 0x01E0B8 07:E0A8: 05 1A     ORA ram_001A_timer_hi
C - - - - - 0x01E0BA 07:E0AA: D0 EB     BNE bra_E097_loop
C - - - - - 0x01E0BC 07:E0AC: 60        RTS



sub_E0AD_enable_rendering:
loc_E0AD_enable_rendering:
C D 3 - - - 0x01E0BD 07:E0AD: A5 3B     LDA ram_for_2001
C - - - - - 0x01E0BF 07:E0AF: 09 1A     ORA #$1A
C - - - - - 0x01E0C1 07:E0B1: 85 3B     STA ram_for_2001
C - - - - - 0x01E0C3 07:E0B3: 20 82 E0  JSR sub_E082_wait_1_frm
C - - - - - 0x01E0C6 07:E0B6: A9 FF     LDA #$FF
C - - - - - 0x01E0C8 07:E0B8: 85 09     STA ram_rendefing_flag
C - - - - - 0x01E0CA 07:E0BA: 60        RTS



sub_E0BB_disable_rendering:
loc_E0BB_disable_rendering:
C - - - - - 0x01E0CB 07:E0BB: A5 3B     LDA ram_for_2001
C - - - - - 0x01E0CD 07:E0BD: 29 E7     AND #$E7
C - - - - - 0x01E0CF 07:E0BF: 85 3B     STA ram_for_2001
C - - - - - 0x01E0D1 07:E0C1: 20 82 E0  JSR sub_E082_wait_1_frm
C - - - - - 0x01E0D4 07:E0C4: A9 00     LDA #$00
C - - - - - 0x01E0D6 07:E0C6: 85 09     STA ram_rendefing_flag
C - - - - - 0x01E0D8 07:E0C8: 60        RTS


; bzk garbage
bra_E0C9_loop:
- - - - - - 0x01E0D9 07:E0C9: 20 CF E0  JSR sub_E0CF
- - - - - - 0x01E0DC 07:E0CC: F0 FB     BEQ bra_E0C9_loop
- - - - - - 0x01E0DE 07:E0CE: 60        RTS



sub_E0CF:
; bzk garbage
- - - - - - 0x01E0DF 07:E0CF: A5 36     LDA ram_buttons
- - - - - - 0x01E0E1 07:E0D1: 85 67     STA ram_0067_temp
- - - - - - 0x01E0E3 07:E0D3: 20 82 E0  JSR sub_E082_wait_1_frm
- - - - - - 0x01E0E6 07:E0D6: A5 36     LDA ram_buttons
- - - - - - 0x01E0E8 07:E0D8: 45 67     EOR ram_0067_temp
- - - - - - 0x01E0EA 07:E0DA: 25 36     AND ram_buttons
- - - - - - 0x01E0EC 07:E0DC: 60        RTS



sub_E0DD_set_ppu_address:
; in
    ; X = ppu addr hi
    ; Y = ppu addr lo
C - - - - - 0x01E0ED 07:E0DD: AD 02 20  LDA $2002
C - - - - - 0x01E0F0 07:E0E0: 8E 06 20  STX $2006
C - - - - - 0x01E0F3 07:E0E3: 8C 06 20  STY $2006
C - - - - - 0x01E0F6 07:E0E6: 60        RTS



sub_E0E7_write_ppu_config_and_scroll:
C - - - - - 0x01E0F7 07:E0E7: A5 3A     LDA ram_for_2000
C - - - - - 0x01E0F9 07:E0E9: 8D 00 20  STA $2000
C - - - - - 0x01E0FC 07:E0EC: A5 3B     LDA ram_for_2001
C - - - - - 0x01E0FE 07:E0EE: 8D 01 20  STA $2001
C - - - - - 0x01E101 07:E0F1: A5 43     LDA ram_scroll_X_lo
C - - - - - 0x01E103 07:E0F3: 8D 05 20  STA $2005
C - - - - - 0x01E106 07:E0F6: A5 40     LDA ram_scroll_Y_lo
C - - - - - 0x01E108 07:E0F8: 8D 05 20  STA $2005
C - - - - - 0x01E10B 07:E0FB: 60        RTS



sub_E0FC_turn_screen_off:
loc_E0FC_turn_screen_off:
C D 3 - - - 0x01E10C 07:E0FC: 20 BB E0  JSR sub_E0BB_disable_rendering
C - - - - - 0x01E10F 07:E0FF: 20 0C E1  JSR sub_E10C_clear_2_nametables
; bzk optimize, useless JSR right after 0x01E10F
C - - - - - 0x01E112 07:E102: 20 43 E1  JSR sub_E143_clear_2400_nametable
C - - - - - 0x01E115 07:E105: 20 5A E1  JSR sub_E15A_hide_all_sprites
; bzk optimize, JMP
C - - - - - 0x01E118 07:E108: 20 6C E1  JSR sub_E16C_write_black_palette
C - - - - - 0x01E11B 07:E10B: 60        RTS



sub_E10C_clear_2_nametables:
C - - - - - 0x01E11C 07:E10C: 20 12 E1  JSR sub_E112_clear_2000_nametable
C - - - - - 0x01E11F 07:E10F: 4C 18 E1  JMP loc_E118_clear_2400_nametable



sub_E112_clear_2000_nametable:
C - - - - - 0x01E122 07:E112: A2 20     LDX #> $2000
C - - - - - 0x01E124 07:E114: A9 00     LDA #$00
C - - - - - 0x01E126 07:E116: F0 04     BEQ bra_E11C    ; jmp



loc_E118_clear_2400_nametable:
C D 3 - - - 0x01E128 07:E118: A2 24     LDX #> $2400
C - - - - - 0x01E12A 07:E11A: A9 40     LDA #$40
bra_E11C:
C - - - - - 0x01E12C 07:E11C: 85 67     STA ram_0067_t71_attr_buf_index
C - - - - - 0x01E12E 07:E11E: A0 00     LDY #$00    ; < 2x00
C - - - - - 0x01E130 07:E120: 20 DD E0  JSR sub_E0DD_set_ppu_address
; set size 03C0 (04C0 - 0100)
C - - - - - 0x01E133 07:E123: A2 04     LDX #> $04C0
C - - - - - 0x01E135 07:E125: A0 C0     LDY #< $04C0
; 
C - - - - - 0x01E137 07:E127: A9 00     LDA #$00
bra_E129_loop:
C - - - - - 0x01E139 07:E129: 8D 07 20  STA $2007
C - - - - - 0x01E13C 07:E12C: 88        DEY
C - - - - - 0x01E13D 07:E12D: D0 FA     BNE bra_E129_loop
C - - - - - 0x01E13F 07:E12F: CA        DEX
C - - - - - 0x01E140 07:E130: D0 F7     BNE bra_E129_loop
; clear attributes
C - - - - - 0x01E142 07:E132: A4 67     LDY ram_0067_t71_attr_buf_index
C - - - - - 0x01E144 07:E134: A2 40     LDX #$40
C - - - - - 0x01E146 07:E136: A9 00     LDA #$00
bra_E138_loop:
C - - - - - 0x01E148 07:E138: 8D 07 20  STA $2007
C - - - - - 0x01E14B 07:E13B: 99 00 02  STA ram_attr_buffer,Y
C - - - - - 0x01E14E 07:E13E: C8        INY
C - - - - - 0x01E14F 07:E13F: CA        DEX
C - - - - - 0x01E150 07:E140: D0 F6     BNE bra_E138_loop
C - - - - - 0x01E152 07:E142: 60        RTS



sub_E143_clear_2400_nametable:
C - - - - - 0x01E153 07:E143: A2 24     LDX #> $2400
C - - - - - 0x01E155 07:E145: A0 00     LDY #< $2400
C - - - - - 0x01E157 07:E147: 20 DD E0  JSR sub_E0DD_set_ppu_address
C - - - - - 0x01E15A 07:E14A: A2 04     LDX #$04
C - - - - - 0x01E15C 07:E14C: A0 00     LDY #$00
C - - - - - 0x01E15E 07:E14E: A9 00     LDA #$00
bra_E150_loop:
C - - - - - 0x01E160 07:E150: 8D 07 20  STA $2007
C - - - - - 0x01E163 07:E153: 88        DEY
C - - - - - 0x01E164 07:E154: D0 FA     BNE bra_E150_loop
C - - - - - 0x01E166 07:E156: CA        DEX
C - - - - - 0x01E167 07:E157: D0 F7     BNE bra_E150_loop
C - - - - - 0x01E169 07:E159: 60        RTS



sub_E15A_hide_all_sprites:
C - - - - - 0x01E16A 07:E15A: A2 00     LDX #$00
C - - - - - 0x01E16C 07:E15C: A9 F8     LDA #$F8
bra_E15E_loop:
C - - - - - 0x01E16E 07:E15E: 9D 00 07  STA ram_spr_Y,X
C - - - - - 0x01E171 07:E161: E8        INX
C - - - - - 0x01E172 07:E162: E8        INX
C - - - - - 0x01E173 07:E163: E8        INX
C - - - - - 0x01E174 07:E164: E8        INX
C - - - - - 0x01E175 07:E165: D0 F7     BNE bra_E15E_loop
C - - - - - 0x01E177 07:E167: A9 01     LDA #$01
C - - - - - 0x01E179 07:E169: 85 0C     STA ram_nmi_flag
C - - - - - 0x01E17B 07:E16B: 60        RTS



sub_E16C_write_black_palette:
C - - - - - 0x01E17C 07:E16C: A2 20     LDX #$20
C - - - - - 0x01E17E 07:E16E: A2 3F     LDX #> $3F00
C - - - - - 0x01E180 07:E170: A0 00     LDY #< $3F00
C - - - - - 0x01E182 07:E172: 20 DD E0  JSR sub_E0DD_set_ppu_address
C - - - - - 0x01E185 07:E175: A9 0F     LDA #$0F
bra_E177_loop:
C - - - - - 0x01E187 07:E177: 8D 07 20  STA $2007
C - - - - - 0x01E18A 07:E17A: CA        DEX
C - - - - - 0x01E18B 07:E17B: D0 FA     BNE bra_E177_loop
C - - - - - 0x01E18D 07:E17D: A9 3F     LDA #> $3F00
C - - - - - 0x01E18F 07:E17F: 8D 06 20  STA $2006
C - - - - - 0x01E192 07:E182: A9 00     LDA #< $3F00
C - - - - - 0x01E194 07:E184: 8D 06 20  STA $2006
; A = 00
C - - - - - 0x01E197 07:E187: 8D 06 20  STA $2006
C - - - - - 0x01E19A 07:E18A: 8D 06 20  STA $2006
C - - - - - 0x01E19D 07:E18D: 60        RTS



sub_E18E_read_joy_regs:
C - - - - - 0x01E19E 07:E18E: A5 36     LDA ram_buttons
C - - - - - 0x01E1A0 07:E190: 85 38     STA ram_prev_buttons
C - - - - - 0x01E1A2 07:E192: A5 37     LDA ram_buttons + $01
C - - - - - 0x01E1A4 07:E194: 85 39     STA ram_prev_buttons + $01
C - - - - - 0x01E1A6 07:E196: A2 01     LDX #$01
C - - - - - 0x01E1A8 07:E198: 8E 16 40  STX $4016
C - - - - - 0x01E1AB 07:E19B: CA        DEX ; 00
C - - - - - 0x01E1AC 07:E19C: 8E 16 40  STX $4016
C - - - - - 0x01E1AF 07:E19F: E8        INX ; 01
bra_E1A0_loop:
C - - - - - 0x01E1B0 07:E1A0: A0 08     LDY #$08
bra_E1A2_loop:
C - - - - - 0x01E1B2 07:E1A2: BD 16 40  LDA $4016,X
C - - - - - 0x01E1B5 07:E1A5: 6A        ROR
C - - - - - 0x01E1B6 07:E1A6: B0 01     BCS bra_E1A9
C - - - - - 0x01E1B8 07:E1A8: 6A        ROR
bra_E1A9:
; bzk optimize, use ram_buttons instead of ram_0005_t01_buttons
C - - - - - 0x01E1B9 07:E1A9: 36 05     ROL ram_0005_t01_buttons,X
C - - - - - 0x01E1BB 07:E1AB: 88        DEY
C - - - - - 0x01E1BC 07:E1AC: D0 F4     BNE bra_E1A2_loop
C - - - - - 0x01E1BE 07:E1AE: CA        DEX
C - - - - - 0x01E1BF 07:E1AF: 10 EF     BPL bra_E1A0_loop
; disable Start + Select for player 2
C - - - - - 0x01E1C1 07:E1B1: A5 06     LDA ram_0005_t01_buttons + $01
C - - - - - 0x01E1C3 07:E1B3: 29 CF     AND #con_btns_SS ^ $FF
C - - - - - 0x01E1C5 07:E1B5: 85 37     STA ram_buttons + $01
; 
C - - - - - 0x01E1C7 07:E1B7: A5 05     LDA ram_0005_t01_buttons
C - - - - - 0x01E1C9 07:E1B9: 85 36     STA ram_buttons
C - - - - - 0x01E1CB 07:E1BB: 29 0F     AND #con_btns_Dpad
C - - - - - 0x01E1CD 07:E1BD: AA        TAX
C - - - - - 0x01E1CE 07:E1BE: BD CE E1  LDA tbl_E1CE_angle,X
C - - - - - 0x01E1D1 07:E1C1: 85 1B     STA ram_001B_player_angle
; 
C - - - - - 0x01E1D3 07:E1C3: A5 37     LDA ram_buttons + $01
C - - - - - 0x01E1D5 07:E1C5: 29 0F     AND #con_btns_Dpad
C - - - - - 0x01E1D7 07:E1C7: AA        TAX
C - - - - - 0x01E1D8 07:E1C8: BD CE E1  LDA tbl_E1CE_angle,X
C - - - - - 0x01E1DB 07:E1CB: 85 1C     STA ram_001C_useless
C - - - - - 0x01E1DD 07:E1CD: 60        RTS



tbl_E1CE_angle:
- D 3 - - - 0x01E1DE 07:E1CE: 00        .byte $00   ; 00 
- D 3 - - - 0x01E1DF 07:E1CF: 04        .byte $04   ; 01 
- D 3 - - - 0x01E1E0 07:E1D0: 03        .byte $03   ; 02 
- - - - - - 0x01E1E1 07:E1D1: 00        .byte $00   ; 03 
- D 3 - - - 0x01E1E2 07:E1D2: 02        .byte $02   ; 04 
- D 3 - - - 0x01E1E3 07:E1D3: 06        .byte $06   ; 05 
- D 3 - - - 0x01E1E4 07:E1D4: 07        .byte $07   ; 06 
- - - - - - 0x01E1E5 07:E1D5: 00        .byte $00   ; 07 
- D 3 - - - 0x01E1E6 07:E1D6: 01        .byte $01   ; 08 
- D 3 - - - 0x01E1E7 07:E1D7: 05        .byte $05   ; 09 
- D 3 - - - 0x01E1E8 07:E1D8: 08        .byte $08   ; 0A 
- - - - - - 0x01E1E9 07:E1D9: 00        .byte $00   ; 0B 
- - - - - - 0x01E1EA 07:E1DA: 00        .byte $00   ; 0C 
- - - - - - 0x01E1EB 07:E1DB: 00        .byte $00   ; 0D 
- - - - - - 0x01E1EC 07:E1DC: 00        .byte $00   ; 0E 
- - - - - - 0x01E1ED 07:E1DD: 00        .byte $00   ; 0F 



vec_E1DE_NMI:
C - - - - - 0x01E1EE 07:E1DE: 48        PHA
C - - - - - 0x01E1EF 07:E1DF: 8A        TXA
C - - - - - 0x01E1F0 07:E1E0: 48        PHA
C - - - - - 0x01E1F1 07:E1E1: 98        TYA
C - - - - - 0x01E1F2 07:E1E2: 48        PHA
C - - - - - 0x01E1F3 07:E1E3: A5 9B     LDA ram_for_8000
C - - - - - 0x01E1F5 07:E1E5: 48        PHA
C - - - - - 0x01E1F6 07:E1E6: A5 09     LDA ram_rendefing_flag
C - - - - - 0x01E1F8 07:E1E8: F0 27     BEQ bra_E211_skip_screen_update
C - - - - - 0x01E1FA 07:E1EA: AD 02 20  LDA $2002
C - - - - - 0x01E1FD 07:E1ED: A5 0C     LDA ram_nmi_flag
C - - - - - 0x01E1FF 07:E1EF: F0 0C     BEQ bra_E1FD_skip_oam
C - - - - - 0x01E201 07:E1F1: A9 00     LDA #$00
C - - - - - 0x01E203 07:E1F3: 85 0C     STA ram_nmi_flag
C - - - - - 0x01E205 07:E1F5: 8D 03 20  STA $2003   ; < ram_oam
C - - - - - 0x01E208 07:E1F8: A9 07     LDA #> ram_oam
C - - - - - 0x01E20A 07:E1FA: 8D 14 40  STA $4014
bra_E1FD_skip_oam:
C - - - - - 0x01E20D 07:E1FD: 20 B3 E2  JSR sub_E2B3_buffers_handler
C - - - - - 0x01E210 07:E200: 20 96 E2  JSR sub_E296_set_scroll
C - - - - - 0x01E213 07:E203: A5 3B     LDA ram_for_2001
C - - - - - 0x01E215 07:E205: 8D 01 20  STA $2001
C - - - - - 0x01E218 07:E208: 20 38 E2  JSR sub_E238_prepare_irq
C - - - - - 0x01E21B 07:E20B: 20 8E E1  JSR sub_E18E_read_joy_regs
C - - - - - 0x01E21E 07:E20E: 20 4B E2  JSR sub_E24B_write_chr_banks
bra_E211_skip_screen_update:
C - - - - - 0x01E221 07:E211: A5 0A     LDA ram_reset_flag
C - - - - - 0x01E223 07:E213: F0 17     BEQ bra_E22C_skip_sound_engine
C - - - - - 0x01E225 07:E215: A9 06     LDA #$06
C - - - - - 0x01E227 07:E217: 8D 00 80  STA $8000
C - - - - - 0x01E22A 07:E21A: A9 07     LDA #con_prg_bank + $07
C - - - - - 0x01E22C 07:E21C: 8D 01 80  STA $8001
C - - - - - 0x01E22F 07:E21F: 20 06 80  JSR sub_0x00E016_update_sound_engine
C - - - - - 0x01E232 07:E222: A9 06     LDA #$06
C - - - - - 0x01E234 07:E224: 8D 00 80  STA $8000
C - - - - - 0x01E237 07:E227: A5 9C     LDA ram_prg_bank_8000
C - - - - - 0x01E239 07:E229: 8D 01 80  STA $8001
bra_E22C_skip_sound_engine:
C - - - - - 0x01E23C 07:E22C: 68        PLA
C - - - - - 0x01E23D 07:E22D: 8D 00 80  STA $8000
C - - - - - 0x01E240 07:E230: E6 14     INC ram_frm_cnt
C - - - - - 0x01E242 07:E232: 68        PLA
C - - - - - 0x01E243 07:E233: A8        TAY
C - - - - - 0x01E244 07:E234: 68        PLA
C - - - - - 0x01E245 07:E235: AA        TAX
C - - - - - 0x01E246 07:E236: 68        PLA
C - - - - - 0x01E247 07:E237: 40        RTI



sub_E238_prepare_irq:
C - - - - - 0x01E248 07:E238: A5 2F     LDA ram_scanline
C - - - - - 0x01E24A 07:E23A: 8D 00 C0  STA $C000
C - - - - - 0x01E24D 07:E23D: 8D 01 C0  STA $C001
C - - - - - 0x01E250 07:E240: A6 2E     LDX ram_irq_flag
C - - - - - 0x01E252 07:E242: 9D 00 E0  STA $E000,X
C - - - - - 0x01E255 07:E245: A5 3A     LDA ram_for_2000
C - - - - - 0x01E257 07:E247: 8D 00 20  STA $2000
C - - - - - 0x01E25A 07:E24A: 60        RTS



sub_E24B_write_chr_banks:
C - - - - - 0x01E25B 07:E24B: AD D5 03  LDA ram_03D5_script
C - - - - - 0x01E25E 07:E24E: C9 01     CMP #con_03D5_gameplay
C - - - - - 0x01E260 07:E250: D0 0F     BNE bra_E261
C - - - - - 0x01E262 07:E252: AD D4 03  LDA ram_script
C - - - - - 0x01E265 07:E255: C9 03     CMP #con_script_gameplay
C - - - - - 0x01E267 07:E257: D0 08     BNE bra_E261
C - - - - - 0x01E269 07:E259: A5 E3     LDA ram_00E3_flag
C - - - - - 0x01E26B 07:E25B: F0 38     BEQ bra_E295_RTS
C - - - - - 0x01E26D 07:E25D: A9 00     LDA #$00
C - - - - - 0x01E26F 07:E25F: 85 E3     STA ram_00E3_flag
bra_E261:
C - - - - - 0x01E271 07:E261: A5 9B     LDA ram_for_8000
C - - - - - 0x01E273 07:E263: 48        PHA
C - - - - - 0x01E274 07:E264: A0 00     LDY #$00
C - - - - - 0x01E276 07:E266: 84 9B     STY ram_for_8000
C - - - - - 0x01E278 07:E268: 8C 00 80  STY $8000
; bzk optimize, LDA 0020 without ,Y
C - - - - - 0x01E27B 07:E26B: B9 20 00  LDA ram_chr_bank_bg,Y
C - - - - - 0x01E27E 07:E26E: 0A        ASL
C - - - - - 0x01E27F 07:E26F: 8D 01 80  STA $8001
C - - - - - 0x01E282 07:E272: C8        INY ; 01
C - - - - - 0x01E283 07:E273: 84 9B     STY ram_for_8000
C - - - - - 0x01E285 07:E275: 8C 00 80  STY $8000
; bzk optimize, LDA 0021 without ,Y
C - - - - - 0x01E288 07:E278: B9 20 00  LDA ram_chr_bank_bg,Y
C - - - - - 0x01E28B 07:E27B: 0A        ASL
C - - - - - 0x01E28C 07:E27C: 8D 01 80  STA $8001
C - - - - - 0x01E28F 07:E27F: A0 03     LDY #$03
C - - - - - 0x01E291 07:E281: A2 05     LDX #$05
bra_E283_loop:
C - - - - - 0x01E293 07:E283: 86 9B     STX ram_for_8000
C - - - - - 0x01E295 07:E285: 8E 00 80  STX $8000
C - - - - - 0x01E298 07:E288: B9 24 00  LDA ram_chr_bank_spr,Y
C - - - - - 0x01E29B 07:E28B: 8D 01 80  STA $8001
C - - - - - 0x01E29E 07:E28E: CA        DEX
C - - - - - 0x01E29F 07:E28F: 88        DEY
C - - - - - 0x01E2A0 07:E290: 10 F1     BPL bra_E283_loop
C - - - - - 0x01E2A2 07:E292: 68        PLA
C - - - - - 0x01E2A3 07:E293: 85 9B     STA ram_for_8000
bra_E295_RTS:
C - - - - - 0x01E2A5 07:E295: 60        RTS



sub_E296_set_scroll:
C - - - - - 0x01E2A6 07:E296: AD 02 20  LDA $2002
C - - - - - 0x01E2A9 07:E299: A5 43     LDA ram_scroll_X_lo
C - - - - - 0x01E2AB 07:E29B: 8D 05 20  STA $2005
C - - - - - 0x01E2AE 07:E29E: AD F3 03  LDA ram_03F3
C - - - - - 0x01E2B1 07:E2A1: 10 0A     BPL bra_E2AD
C - - - - - 0x01E2B3 07:E2A3: AD F4 03  LDA ram_03F4
C - - - - - 0x01E2B6 07:E2A6: 18        CLC
C - - - - - 0x01E2B7 07:E2A7: 65 40     ADC ram_scroll_Y_lo
C - - - - - 0x01E2B9 07:E2A9: 8D 05 20  STA $2005
C - - - - - 0x01E2BC 07:E2AC: 60        RTS
bra_E2AD:
C - - - - - 0x01E2BD 07:E2AD: A5 40     LDA ram_scroll_Y_lo
C - - - - - 0x01E2BF 07:E2AF: 8D 05 20  STA $2005
C - - - - - 0x01E2C2 07:E2B2: 60        RTS



sub_E2B3_buffers_handler:
C - - - - - 0x01E2C3 07:E2B3: AD 02 20  LDA $2002
C - - - - - 0x01E2C6 07:E2B6: A2 00     LDX #$00
C - - - - - 0x01E2C8 07:E2B8: A5 02     LDA ram_buffers_flags
C - - - - - 0x01E2CA 07:E2BA: F0 22     BEQ bra_E2DE_RTS    ; skip all buffers
; check all buffers
bra_E2BC_loop:
C - - - - - 0x01E2CC 07:E2BC: 4A        LSR
C - - - - - 0x01E2CD 07:E2BD: 90 19     BCC bra_E2D8_skip_this_buffer
; bzk optimize, useless PHA
; also delete PLA at 0x01E2E7
C - - - - - 0x01E2CF 07:E2BF: 48        PHA
C - - - - - 0x01E2D0 07:E2C0: 8A        TXA
C - - - - - 0x01E2D1 07:E2C1: 48        PHA
C - - - - - 0x01E2D2 07:E2C2: BD DF E2  LDA tbl_E2DF_buffer_handlers,X
C - - - - - 0x01E2D5 07:E2C5: 85 03     STA ram_0003_t01_buffer_handler_jmp
C - - - - - 0x01E2D7 07:E2C7: BD E0 E2  LDA tbl_E2DF_buffer_handlers + $01,X
C - - - - - 0x01E2DA 07:E2CA: 85 04     STA ram_0003_t01_buffer_handler_jmp + $01
C - - - - - 0x01E2DC 07:E2CC: A9 E2     LDA #> (ofs_E2D5_return - $01)
C - - - - - 0x01E2DE 07:E2CE: 48        PHA
C - - - - - 0x01E2DF 07:E2CF: A9 D4     LDA #< (ofs_E2D5_return - $01)
C - - - - - 0x01E2E1 07:E2D1: 48        PHA
C - - - - - 0x01E2E2 07:E2D2: 6C 03 00  JMP (ram_0003_t01_buffer_handler_jmp)
ofs_E2D5_return:
C - - - - - 0x01E2E5 07:E2D5: 68        PLA
C - - - - - 0x01E2E6 07:E2D6: AA        TAX
C - - - - - 0x01E2E7 07:E2D7: 68        PLA
bra_E2D8_skip_this_buffer:
C - - - - - 0x01E2E8 07:E2D8: E8        INX
C - - - - - 0x01E2E9 07:E2D9: E8        INX
C - - - - - 0x01E2EA 07:E2DA: E0 10     CPX #$10
C - - - - - 0x01E2EC 07:E2DC: 90 DE     BCC bra_E2BC_loop
bra_E2DE_RTS:
ofs_buffer_handler_E2DE_08_RTS:
; con_buffer_ready_08
ofs_buffer_handler_E2DE_80_RTS:
; con_buffer_ready_80
C - - - - - 0x01E2EE 07:E2DE: 60        RTS



tbl_E2DF_buffer_handlers:
- D 3 - - - 0x01E2EF 07:E2DF: EF E2     .word ofs_buffer_handler_E2EF_01_palette
- D 3 - - - 0x01E2F1 07:E2E1: 1A E3     .word ofs_buffer_handler_E31A_02
- D 3 - - - 0x01E2F3 07:E2E3: 3B E3     .word ofs_buffer_handler_E33B_04
- - - - - - 0x01E2F5 07:E2E5: DE E2     .word ofs_buffer_handler_E2DE_08_RTS   ; unused, no such flag
- D 3 - - - 0x01E2F7 07:E2E7: 5D E3     .word ofs_buffer_handler_E35D_10
- D 3 - - - 0x01E2F9 07:E2E9: 8D E3     .word ofs_buffer_handler_E38D_20
- D 3 - - - 0x01E2FB 07:E2EB: AF E3     .word ofs_buffer_handler_E3AF_40
- - - - - - 0x01E2FD 07:E2ED: DE E2     .word ofs_buffer_handler_E2DE_80_RTS   ; unused, no such flag



ofs_buffer_handler_E2EF_01_palette:
; con_buffer_ready_palette
C - - J - - 0x01E2FF 07:E2EF: A0 00     LDY #$00
C - - - - - 0x01E301 07:E2F1: A2 3F     LDX #> $3F00
C - - - - - 0x01E303 07:E2F3: A0 00     LDY #< $3F00
C - - - - - 0x01E305 07:E2F5: 20 DD E0  JSR sub_E0DD_set_ppu_address
bra_E2F8_loop:
C - - - - - 0x01E308 07:E2F8: B9 80 02  LDA ram_pal_buffer,Y
C - - - - - 0x01E30B 07:E2FB: 8D 07 20  STA $2007
C - - - - - 0x01E30E 07:E2FE: C8        INY
C - - - - - 0x01E30F 07:E2FF: C4 4F     CPY ram_004F_pal_buffer_size
C - - - - - 0x01E311 07:E301: D0 F5     BNE bra_E2F8_loop
C - - - - - 0x01E313 07:E303: A9 3F     LDA #> $3F00
C - - - - - 0x01E315 07:E305: 8D 06 20  STA $2006
C - - - - - 0x01E318 07:E308: A9 00     LDA #< $3F00
C - - - - - 0x01E31A 07:E30A: 8D 06 20  STA $2006
; A = 00
C - - - - - 0x01E31D 07:E30D: 8D 06 20  STA $2006
C - - - - - 0x01E320 07:E310: 8D 06 20  STA $2006
C - - - - - 0x01E323 07:E313: A5 02     LDA ram_buffers_flags
C - - - - - 0x01E325 07:E315: 29 FE     AND #con_buffer_ready_palette ^ $FF
C - - - - - 0x01E327 07:E317: 85 02     STA ram_buffers_flags
C - - - - - 0x01E329 07:E319: 60        RTS



ofs_buffer_handler_E31A_02:
; con_buffer_ready_02
C - - J - - 0x01E32A 07:E31A: A5 3A     LDA ram_for_2000
C - - - - - 0x01E32C 07:E31C: 29 FB     AND #$FB
C - - - - - 0x01E32E 07:E31E: 8D 00 20  STA $2000
C - - - - - 0x01E331 07:E321: A6 11     LDX ram_0011_ppu_hi
C - - - - - 0x01E333 07:E323: A4 10     LDY ram_0010_ppu_lo
C - - - - - 0x01E335 07:E325: 20 DD E0  JSR sub_E0DD_set_ppu_address
C - - - - - 0x01E338 07:E328: A0 00     LDY #$00
bra_E32A_loop:
C - - - - - 0x01E33A 07:E32A: B1 12     LDA (ram_0012_useless_data_buffer),Y
; bzk optimize, A is always 00
C - - - - - 0x01E33C 07:E32C: 8D 07 20  STA $2007
C - - - - - 0x01E33F 07:E32F: C8        INY
C - - - - - 0x01E340 07:E330: C4 0F     CPY ram_000F_buffer_index
C - - - - - 0x01E342 07:E332: D0 F6     BNE bra_E32A_loop
C - - - - - 0x01E344 07:E334: A5 02     LDA ram_buffers_flags
C - - - - - 0x01E346 07:E336: 29 FD     AND #con_buffer_ready_02 ^ $FF
C - - - - - 0x01E348 07:E338: 85 02     STA ram_buffers_flags
C - - - - - 0x01E34A 07:E33A: 60        RTS



ofs_buffer_handler_E33B_04:
; con_buffer_ready_04
C - - J - - 0x01E34B 07:E33B: A0 00     LDY #$00
bra_E33D_loop:
C - - - - - 0x01E34D 07:E33D: B9 C0 02  LDA ram_02C0_ppu_buffer,Y
C - - - - - 0x01E350 07:E340: 8D 06 20  STA $2006
C - - - - - 0x01E353 07:E343: B9 C1 02  LDA ram_02C0_ppu_buffer + $01,Y
C - - - - - 0x01E356 07:E346: 8D 06 20  STA $2006
C - - - - - 0x01E359 07:E349: B9 C2 02  LDA ram_02C0_ppu_buffer + $02,Y
C - - - - - 0x01E35C 07:E34C: 8D 07 20  STA $2007
C - - - - - 0x01E35F 07:E34F: C8        INY
C - - - - - 0x01E360 07:E350: C8        INY
C - - - - - 0x01E361 07:E351: C8        INY
C - - - - - 0x01E362 07:E352: C4 0E     CPY ram_000E_buffer_index
C - - - - - 0x01E364 07:E354: 90 E7     BCC bra_E33D_loop
C - - - - - 0x01E366 07:E356: A5 02     LDA ram_buffers_flags
C - - - - - 0x01E368 07:E358: 29 FB     AND #con_buffer_ready_04 ^ $FF
C - - - - - 0x01E36A 07:E35A: 85 02     STA ram_buffers_flags
C - - - - - 0x01E36C 07:E35C: 60        RTS



ofs_buffer_handler_E35D_10:
; con_buffer_ready_10
C - - J - - 0x01E36D 07:E35D: A5 3A     LDA ram_for_2000
C - - - - - 0x01E36F 07:E35F: 29 FB     AND #$FB
C - - - - - 0x01E371 07:E361: 8D 00 20  STA $2000
C - - - - - 0x01E374 07:E364: A0 00     LDY #$00
bra_E366_loop:
C - - - - - 0x01E376 07:E366: BE 28 03  LDX ram_0328_ppu_buffer,Y
C - - - - - 0x01E379 07:E369: F0 1B     BEQ bra_E386_00
C - - - - - 0x01E37B 07:E36B: C8        INY
C - - - - - 0x01E37C 07:E36C: B9 28 03  LDA ram_0328_ppu_buffer,Y
C - - - - - 0x01E37F 07:E36F: 8D 06 20  STA $2006
C - - - - - 0x01E382 07:E372: C8        INY
C - - - - - 0x01E383 07:E373: B9 28 03  LDA ram_0328_ppu_buffer,Y
C - - - - - 0x01E386 07:E376: 8D 06 20  STA $2006
C - - - - - 0x01E389 07:E379: C8        INY
bra_E37A_loop:
C - - - - - 0x01E38A 07:E37A: B9 28 03  LDA ram_0328_ppu_buffer,Y
C - - - - - 0x01E38D 07:E37D: 8D 07 20  STA $2007
C - - - - - 0x01E390 07:E380: C8        INY
C - - - - - 0x01E391 07:E381: CA        DEX
C - - - - - 0x01E392 07:E382: D0 F6     BNE bra_E37A_loop
C - - - - - 0x01E394 07:E384: F0 E0     BEQ bra_E366_loop    ; jmp
bra_E386_00:
C - - - - - 0x01E396 07:E386: A5 02     LDA ram_buffers_flags
C - - - - - 0x01E398 07:E388: 29 EF     AND #con_buffer_ready_10 ^ $FF
C - - - - - 0x01E39A 07:E38A: 85 02     STA ram_buffers_flags
C - - - - - 0x01E39C 07:E38C: 60        RTS



ofs_buffer_handler_E38D_20:
; con_buffer_ready_20
C - - J - - 0x01E39D 07:E38D: A5 3A     LDA ram_for_2000
C - - - - - 0x01E39F 07:E38F: 09 04     ORA #$04
C - - - - - 0x01E3A1 07:E391: 8D 00 20  STA $2000
C - - - - - 0x01E3A4 07:E394: A6 85     LDX ram_0085_ppu_hi
C - - - - - 0x01E3A6 07:E396: A4 84     LDY ram_0084_ppu_lo
C - - - - - 0x01E3A8 07:E398: 20 DD E0  JSR sub_E0DD_set_ppu_address
C - - - - - 0x01E3AB 07:E39B: A0 00     LDY #$00
bra_E39D_loop:
C - - - - - 0x01E3AD 07:E39D: B9 08 03  LDA ram_0308_ppu_buffer,Y
C - - - - - 0x01E3B0 07:E3A0: 8D 07 20  STA $2007
C - - - - - 0x01E3B3 07:E3A3: C8        INY
C - - - - - 0x01E3B4 07:E3A4: C4 87     CPY ram_0087_useless_buffer_index_1E
C - - - - - 0x01E3B6 07:E3A6: D0 F5     BNE bra_E39D_loop
C - - - - - 0x01E3B8 07:E3A8: A5 02     LDA ram_buffers_flags
C - - - - - 0x01E3BA 07:E3AA: 29 DF     AND #con_buffer_ready_20 ^ $FF
C - - - - - 0x01E3BC 07:E3AC: 85 02     STA ram_buffers_flags
C - - - - - 0x01E3BE 07:E3AE: 60        RTS



ofs_buffer_handler_E3AF_40:
; con_buffer_ready_40
C - - J - - 0x01E3BF 07:E3AF: A0 00     LDY #$00
bra_E3B1_loop:
C - - - - - 0x01E3C1 07:E3B1: B9 64 03  LDA ram_0364_ppu_buffer,Y
C - - - - - 0x01E3C4 07:E3B4: 8D 06 20  STA $2006
C - - - - - 0x01E3C7 07:E3B7: B9 65 03  LDA ram_0364_ppu_buffer + $01,Y
C - - - - - 0x01E3CA 07:E3BA: 8D 06 20  STA $2006
C - - - - - 0x01E3CD 07:E3BD: B9 66 03  LDA ram_0364_ppu_buffer + $02,Y
C - - - - - 0x01E3D0 07:E3C0: 8D 07 20  STA $2007
C - - - - - 0x01E3D3 07:E3C3: C8        INY
C - - - - - 0x01E3D4 07:E3C4: C8        INY
C - - - - - 0x01E3D5 07:E3C5: C8        INY
C - - - - - 0x01E3D6 07:E3C6: C4 88     CPY ram_0088_useless_buffer_index_18
C - - - - - 0x01E3D8 07:E3C8: 90 E7     BCC bra_E3B1_loop
C - - - - - 0x01E3DA 07:E3CA: A5 02     LDA ram_buffers_flags
C - - - - - 0x01E3DC 07:E3CC: 29 BF     AND #con_buffer_ready_40 ^ $FF
C - - - - - 0x01E3DE 07:E3CE: 85 02     STA ram_buffers_flags
C - - - - - 0x01E3E0 07:E3D0: 60        RTS



sub_E3D1:
C - - - - - 0x01E3E1 07:E3D1: A9 00     LDA #con_irq_data_00
C - - - - - 0x01E3E3 07:E3D3: 85 2D     STA ram_irq_data_index
C - - - - - 0x01E3E5 07:E3D5: 20 77 D7  JSR sub_D777_prepare_irq_config
C - - - - - 0x01E3E8 07:E3D8: 20 54 E7  JSR sub_E754_clear_player_addresses
C - - - - - 0x01E3EB 07:E3DB: A9 00     LDA #con_script_00
C - - - - - 0x01E3ED 07:E3DD: 8D D4 03  STA ram_script
                                       ;LDA #con_03D5_00
C - - - - - 0x01E3F0 07:E3E0: 8D D5 03  STA ram_03D5_script
                                       ;LDA #con_03D6_00
C - - - - - 0x01E3F3 07:E3E3: 8D D6 03  STA ram_03D6_subscript
; set default 20.000 hi-score
C - - - - - 0x01E3F6 07:E3E6: A9 00     LDA #^ $004E20
C - - - - - 0x01E3F8 07:E3E8: 8D DF 03  STA ram_hi_score
C - - - - - 0x01E3FB 07:E3EB: A9 4E     LDA #> $004E20
C - - - - - 0x01E3FD 07:E3ED: 8D E0 03  STA ram_hi_score + $01
C - - - - - 0x01E400 07:E3F0: A9 20     LDA #< $004E20
C - - - - - 0x01E402 07:E3F2: 8D E1 03  STA ram_hi_score + $02
; bzk optimize, useless LDA
C - - - - - 0x01E405 07:E3F5: A9 03     LDA #$03
; bzk optimize, JMP
C - - - - - 0x01E407 07:E3F7: 20 20 E8  JSR sub_E820_set_default_values
C - - - - - 0x01E40A 07:E3FA: 60        RTS



sub_E3FB:
loc_E3FB:
C - - - - - 0x01E40B 07:E3FB: 20 05 E4  JSR sub_E405_disable_battery
C - - - - - 0x01E40E 07:E3FE: 20 C0 E8  JSR sub_E8C0_prepare_data_prg_bank_for_city
; bzk optimize, JMP
C - - - - - 0x01E411 07:E401: 20 96 E7  JSR sub_E796
C - - - - - 0x01E414 07:E404: 60        RTS



sub_E405_disable_battery:
C - - - - - 0x01E415 07:E405: A9 00     LDA #$00
C - - - - - 0x01E417 07:E407: 85 49     STA ram_0049_useless_00
; bzk optimize, useless LDA
C - - - - - 0x01E419 07:E409: A5 49     LDA ram_0049_useless_00
C - - - - - 0x01E41B 07:E40B: 8D 00 A0  STA $A000
C - - - - - 0x01E41E 07:E40E: 60        RTS



ofs_005_main_game_script_E40F_00:
; con_03D5_00
C - - J - - 0x01E41F 07:E40F: 20 22 CB  JSR sub_CB22_disable_sound_engine
C - - - - - 0x01E422 07:E412: AD D6 03  LDA ram_03D6_subscript
C - - - - - 0x01E425 07:E415: 0A        ASL
C - - - - - 0x01E426 07:E416: AA        TAX
C - - - - - 0x01E427 07:E417: BD 24 E4  LDA tbl_E424,X
C - - - - - 0x01E42A 07:E41A: 85 5B     STA ram_005B_t46_jmp
C - - - - - 0x01E42C 07:E41C: BD 25 E4  LDA tbl_E424 + $01,X
C - - - - - 0x01E42F 07:E41F: 85 5C     STA ram_005B_t46_jmp + $01
C - - - - - 0x01E431 07:E421: 6C 5B 00  JMP (ram_005B_t46_jmp)



tbl_E424:
; see con_03D6
- D 3 - - - 0x01E434 07:E424: 30 E4     .word ofs_008_E430_00
- D 3 - - - 0x01E436 07:E426: 80 E4     .word ofs_008_E480_01
- D 3 - - - 0x01E438 07:E428: B6 E4     .word ofs_008_E4B6_02
- D 3 - - - 0x01E43A 07:E42A: 31 E5     .word ofs_008_E531_03
- D 3 - - - 0x01E43C 07:E42C: 9A E5     .word ofs_008_E59A_04
- D 3 - - - 0x01E43E 07:E42E: EF E5     .word ofs_008_E5EF_05



ofs_008_E430_00:
; con_03D6_00
C - - J - - 0x01E440 07:E430: 20 6B E4  JSR sub_E46B_clear_scrolls_and_nametable
C - - - - - 0x01E443 07:E433: A9 00     LDA #$00
C - - - - - 0x01E445 07:E435: 85 02     STA ram_buffers_flags
C - - - - - 0x01E447 07:E437: 8D F3 03  STA ram_03F3
C - - - - - 0x01E44A 07:E43A: 85 DB     STA ram_00DB_flag
C - - - - - 0x01E44C 07:E43C: 20 29 E9  JSR sub_E929_clear_some_addresses
C - - - - - 0x01E44F 07:E43F: 20 5A E1  JSR sub_E15A_hide_all_sprites
C - - - - - 0x01E452 07:E442: A5 9D     LDA ram_prg_bank_A000
C - - - - - 0x01E454 07:E444: 48        PHA
C - - - - - 0x01E455 07:E445: A9 0C     LDA #con_prg_bank + $0C
C - - - - - 0x01E457 07:E447: 85 9D     STA ram_prg_bank_A000
C - - - - - 0x01E459 07:E449: 20 58 DB  JSR sub_DB58_prg_bankswitch_A000
C - - - - - 0x01E45C 07:E44C: 20 00 A0  JSR sub_0x018010
C - - - - - 0x01E45F 07:E44F: 68        PLA
C - - - - - 0x01E460 07:E450: 85 9D     STA ram_prg_bank_A000
C - - - - - 0x01E462 07:E452: 20 58 DB  JSR sub_DB58_prg_bankswitch_A000
C - - - - - 0x01E465 07:E455: 20 E7 E0  JSR sub_E0E7_write_ppu_config_and_scroll
C - - - - - 0x01E468 07:E458: 20 AD E0  JSR sub_E0AD_enable_rendering
C - - - - - 0x01E46B 07:E45B: 20 BC DA  JSR sub_DABC_increase_brightness
C - - - - - 0x01E46E 07:E45E: A9 03     LDA #con_03D5_map
C - - - - - 0x01E470 07:E460: 8D D5 03  STA ram_03D5_script
C - - - - - 0x01E473 07:E463: A9 20     LDA #con_music_map
C - - - - - 0x01E475 07:E465: 85 77     STA ram_0077_t03_sound_id
; bzk optimize, JMP
C - - - - - 0x01E477 07:E467: 20 04 CB  JSR sub_CB04_play_sound
C - - - - - 0x01E47A 07:E46A: 60        RTS



sub_E46B_clear_scrolls_and_nametable:
C - - - - - 0x01E47B 07:E46B: A9 00     LDA #$00
C - - - - - 0x01E47D 07:E46D: 85 3F     STA ram_scroll_Y_hi
C - - - - - 0x01E47F 07:E46F: 85 40     STA ram_scroll_Y_lo
C - - - - - 0x01E481 07:E471: 85 41     STA ram_scroll_Y_fr
C - - - - - 0x01E483 07:E473: 85 42     STA ram_scroll_X_hi
C - - - - - 0x01E485 07:E475: 85 43     STA ram_scroll_X_lo
C - - - - - 0x01E487 07:E477: 85 44     STA ram_scroll_X_fr
C - - - - - 0x01E489 07:E479: A5 3A     LDA ram_for_2000
C - - - - - 0x01E48B 07:E47B: 29 FC     AND #$FC
C - - - - - 0x01E48D 07:E47D: 85 3A     STA ram_for_2000
C - - - - - 0x01E48F 07:E47F: 60        RTS



sub_E480:
ofs_008_E480_01:
; con_03D6_01
C - - - - - 0x01E490 07:E480: 20 EF E8  JSR sub_E8EF
C - - - - - 0x01E493 07:E483: 20 4C E9  JSR sub_E94C
C - - - - - 0x01E496 07:E486: 20 29 E9  JSR sub_E929_clear_some_addresses
C - - - - - 0x01E499 07:E489: 20 53 E6  JSR sub_E653
C - - - - - 0x01E49C 07:E48C: 20 E0 E6  JSR sub_E6E0_clear_some_addresses
C - - - - - 0x01E49F 07:E48F: 20 71 E7  JSR sub_E771
C - - - - - 0x01E4A2 07:E492: 20 66 E9  JSR sub_E966
C - - - - - 0x01E4A5 07:E495: 20 FB E3  JSR sub_E3FB
C - - - - - 0x01E4A8 07:E498: 20 6F DB  JSR sub_DB6F
C - - - - - 0x01E4AB 07:E49B: 20 5A E1  JSR sub_E15A_hide_all_sprites
C - - - - - 0x01E4AE 07:E49E: 20 14 E9  JSR sub_E914
C - - - - - 0x01E4B1 07:E4A1: 20 34 C4  JSR sub_C434
C - - - - - 0x01E4B4 07:E4A4: 20 9C EA  JSR sub_EA9C
C - - - - - 0x01E4B7 07:E4A7: 20 AD E0  JSR sub_E0AD_enable_rendering
C - - - - - 0x01E4BA 07:E4AA: 20 B9 DA  JSR sub_DAB9_prepare_palette_and_increase_brightness
C - - - - - 0x01E4BD 07:E4AD: A9 01     LDA #con_03D5_gameplay
C - - - - - 0x01E4BF 07:E4AF: 8D D5 03  STA ram_03D5_script
; bzk optimize, JMP
C - - - - - 0x01E4C2 07:E4B2: 20 CC CA  JSR sub_CACC
C - - - - - 0x01E4C5 07:E4B5: 60        RTS



ofs_008_E4B6_02:
; con_03D6_02
C - - J - - 0x01E4C6 07:E4B6: A9 00     LDA #$00
C - - - - - 0x01E4C8 07:E4B8: 85 02     STA ram_buffers_flags
C - - - - - 0x01E4CA 07:E4BA: 8D F3 03  STA ram_03F3
C - - - - - 0x01E4CD 07:E4BD: 8D 1F 04  STA ram_041F_player_flags
C - - - - - 0x01E4D0 07:E4C0: 85 B0     STA ram_00B0
C - - - - - 0x01E4D2 07:E4C2: 8D FC 05  STA ram_cheat_buttons_counter
C - - - - - 0x01E4D5 07:E4C5: 20 6D E8  JSR sub_E86D_save_chr_banks
C - - - - - 0x01E4D8 07:E4C8: A6 A8     LDX ram_plr_index
C - - - - - 0x01E4DA 07:E4CA: AD B5 05  LDA ram_05B5_player_flags
C - - - - - 0x01E4DD 07:E4CD: 4A        LSR
C - - - - - 0x01E4DE 07:E4CE: 90 02     BCC bra_E4D2_separate
; if con_05B5_together
C - - - - - 0x01E4E0 07:E4D0: A2 00     LDX #$00
bra_E4D2_separate:
C - - - - - 0x01E4E2 07:E4D2: A5 3C     LDA ram_city
C - - - - - 0x01E4E4 07:E4D4: 95 3D     STA ram_003D_plr,X
C - - - - - 0x01E4E6 07:E4D6: A9 1D     LDA #$1D
C - - - - - 0x01E4E8 07:E4D8: 85 3C     STA ram_city
; 
C - - - - - 0x01E4EA 07:E4DA: A2 00     LDX #$00
C - - - - - 0x01E4EC 07:E4DC: A0 03     LDY #$03
bra_E4DE_loop:
; save hi + lo + fr
C - - - - - 0x01E4EE 07:E4DE: B5 3F     LDA ram_scroll_Y_array,X
C - - - - - 0x01E4F0 07:E4E0: 9D A5 05  STA ram_copy_scroll_Y,X
C - - - - - 0x01E4F3 07:E4E3: B5 42     LDA ram_scroll_X_array,X
C - - - - - 0x01E4F5 07:E4E5: 9D A8 05  STA ram_copy_scroll_X,X
C - - - - - 0x01E4F8 07:E4E8: E8        INX
C - - - - - 0x01E4F9 07:E4E9: 88        DEY
C - - - - - 0x01E4FA 07:E4EA: D0 F2     BNE bra_E4DE_loop
; 
C - - - - - 0x01E4FC 07:E4EC: 20 6B E4  JSR sub_E46B_clear_scrolls_and_nametable
C - - - - - 0x01E4FF 07:E4EF: 84 35     STY ram_0035_scroll_X_lo
C - - - - - 0x01E501 07:E4F1: A9 01     LDA #$01
C - - - - - 0x01E503 07:E4F3: 85 42     STA ram_scroll_X_hi
C - - - - - 0x01E505 07:E4F5: 85 34     STA ram_0034_scroll_X_hi
; save 2000
C - - - - - 0x01E507 07:E4F7: A5 3A     LDA ram_for_2000
C - - - - - 0x01E509 07:E4F9: 8D AB 05  STA ram_copy_for_2000
; 
C - - - - - 0x01E50C 07:E4FC: 29 FC     AND #$FC
C - - - - - 0x01E50E 07:E4FE: 09 01     ORA #$01
C - - - - - 0x01E510 07:E500: 85 3A     STA ram_for_2000
C - - - - - 0x01E512 07:E502: 20 E8 C2  JSR sub_C2E8
C - - - - - 0x01E515 07:E505: 20 6F DB  JSR sub_DB6F
C - - - - - 0x01E518 07:E508: 20 5A E1  JSR sub_E15A_hide_all_sprites
C - - - - - 0x01E51B 07:E50B: 20 00 C0  JSR sub_C000
C - - - - - 0x01E51E 07:E50E: A9 01     LDA #con_irq_data_01
C - - - - - 0x01E520 07:E510: 85 2D     STA ram_irq_data_index
C - - - - - 0x01E522 07:E512: 20 77 D7  JSR sub_D777_prepare_irq_config
C - - - - - 0x01E525 07:E515: AD B5 05  LDA ram_05B5_player_flags
C - - - - - 0x01E528 07:E518: 10 04     BPL bra_E51E_captain_alive
; if con_05B5_captured_captain
- - - - - - 0x01E52A 07:E51A: A9 19     LDA #con_chr_bank_bg + $19
- - - - - - 0x01E52C 07:E51C: 85 21     STA ram_chr_bank_bg + $01
bra_E51E_captain_alive:
C - - - - - 0x01E52E 07:E51E: 20 AD E0  JSR sub_E0AD_enable_rendering
C - - - - - 0x01E531 07:E521: 20 39 C0  JSR sub_C039
C - - - - - 0x01E534 07:E524: A9 02     LDA #con_03D5_pause_menu
C - - - - - 0x01E536 07:E526: 8D D5 03  STA ram_03D5_script
C - - - - - 0x01E539 07:E529: A9 28     LDA #con_music_pause_menu
C - - - - - 0x01E53B 07:E52B: 85 77     STA ram_0077_t03_sound_id
; bzk optimize, JMP
C - - - - - 0x01E53D 07:E52D: 20 04 CB  JSR sub_CB04_play_sound
C - - - - - 0x01E540 07:E530: 60        RTS



ofs_008_E531_03:
; con_03D6_03
C - - J - - 0x01E541 07:E531: 20 7D E8  JSR sub_E87D_restore_chr_banks
C - - - - - 0x01E544 07:E534: A6 A8     LDX ram_plr_index
C - - - - - 0x01E546 07:E536: AD B5 05  LDA ram_05B5_player_flags
C - - - - - 0x01E549 07:E539: 4A        LSR
C - - - - - 0x01E54A 07:E53A: 90 02     BCC bra_E53E_separate
; if con_05B5_together
C - - - - - 0x01E54C 07:E53C: A2 00     LDX #$00
bra_E53E_separate:
C - - - - - 0x01E54E 07:E53E: B5 3D     LDA ram_003D_plr,X
C - - - - - 0x01E550 07:E540: 85 3C     STA ram_city
; 
C - - - - - 0x01E552 07:E542: A2 00     LDX #$00
C - - - - - 0x01E554 07:E544: A0 03     LDY #$03
bra_E546_loop:
; restore hi + lo + fr
C - - - - - 0x01E556 07:E546: BD A5 05  LDA ram_copy_scroll_Y,X
C - - - - - 0x01E559 07:E549: 95 3F     STA ram_scroll_Y_array,X
C - - - - - 0x01E55B 07:E54B: BD A8 05  LDA ram_copy_scroll_X,X
C - - - - - 0x01E55E 07:E54E: 95 42     STA ram_scroll_X_array,X
C - - - - - 0x01E560 07:E550: E8        INX
C - - - - - 0x01E561 07:E551: 88        DEY
C - - - - - 0x01E562 07:E552: D0 F2     BNE bra_E546_loop
; restore 2000
C - - - - - 0x01E564 07:E554: AD AB 05  LDA ram_copy_for_2000
C - - - - - 0x01E567 07:E557: 85 3A     STA ram_for_2000
; 
C - - - - - 0x01E569 07:E559: A9 00     LDA #$00
C - - - - - 0x01E56B 07:E55B: 8D 22 04  STA ram_0422_flag
C - - - - - 0x01E56E 07:E55E: 85 2D     STA ram_irq_data_index  ; con_irq_data_00
C - - - - - 0x01E570 07:E560: 20 77 D7  JSR sub_D777_prepare_irq_config
C - - - - - 0x01E573 07:E563: AD E5 03  LDA ram_03E5
C - - - - - 0x01E576 07:E566: 29 01     AND #$01
C - - - - - 0x01E578 07:E568: D0 27     BNE bra_E591
C - - - - - 0x01E57A 07:E56A: 20 C0 E8  JSR sub_E8C0_prepare_data_prg_bank_for_city
C - - - - - 0x01E57D 07:E56D: 20 96 E7  JSR sub_E796
C - - - - - 0x01E580 07:E570: 20 DF E7  JSR sub_E7DF
C - - - - - 0x01E583 07:E573: 20 6F DB  JSR sub_DB6F
C - - - - - 0x01E586 07:E576: 20 A1 E8  JSR sub_E8A1
C - - - - - 0x01E589 07:E579: 20 8D E8  JSR sub_E88D
C - - - - - 0x01E58C 07:E57C: 20 DB FA  JSR sub_FADB
C - - - - - 0x01E58F 07:E57F: 20 42 EB  JSR sub_EB42
C - - - - - 0x01E592 07:E582: 20 AD E0  JSR sub_E0AD_enable_rendering
C - - - - - 0x01E595 07:E585: 20 B9 DA  JSR sub_DAB9_prepare_palette_and_increase_brightness
C - - - - - 0x01E598 07:E588: A9 01     LDA #con_03D5_gameplay
C - - - - - 0x01E59A 07:E58A: 8D D5 03  STA ram_03D5_script
; bzk optimize, JMP
C - - - - - 0x01E59D 07:E58D: 20 CC CA  JSR sub_CACC
C - - - - - 0x01E5A0 07:E590: 60        RTS
bra_E591:
C - - - - - 0x01E5A1 07:E591: A9 00     LDA #con_03D5_00
C - - - - - 0x01E5A3 07:E593: 8D D5 03  STA ram_03D5_script
                                       ;LDA #con_03D6_00
C - - - - - 0x01E5A6 07:E596: 8D D6 03  STA ram_03D6_subscript
C - - - - - 0x01E5A9 07:E599: 60        RTS



ofs_008_E59A_04:
; con_03D6_04
C - - J - - 0x01E5AA 07:E59A: 20 29 E9  JSR sub_E929_clear_some_addresses
C - - - - - 0x01E5AD 07:E59D: 20 32 EB  JSR sub_EB32
C - - - - - 0x01E5B0 07:E5A0: 20 6B E4  JSR sub_E46B_clear_scrolls_and_nametable
C - - - - - 0x01E5B3 07:E5A3: A5 DA     LDA ram_00DA_flags
C - - - - - 0x01E5B5 07:E5A5: 29 0F     AND #$0F
C - - - - - 0x01E5B7 07:E5A7: 18        CLC
C - - - - - 0x01E5B8 07:E5A8: 69 0C     ADC #$0C
C - - - - - 0x01E5BA 07:E5AA: 85 42     STA ram_scroll_X_hi
C - - - - - 0x01E5BC 07:E5AC: A9 C0     LDA #$C0
C - - - - - 0x01E5BE 07:E5AE: 8D 07 04  STA ram_pos_Y_lo_player
C - - - - - 0x01E5C1 07:E5B1: A9 40     LDA #$40
C - - - - - 0x01E5C3 07:E5B3: 8D 04 04  STA ram_pos_X_lo_player
C - - - - - 0x01E5C6 07:E5B6: A9 00     LDA #$00
C - - - - - 0x01E5C8 07:E5B8: 8D 05 04  STA ram_pos_X_hi_player
C - - - - - 0x01E5CB 07:E5BB: 8D 08 04  STA ram_pos_Y_hi_player
C - - - - - 0x01E5CE 07:E5BE: 8D 01 04  STA ram_player_state_1  ; con_plr_state_idle
C - - - - - 0x01E5D1 07:E5C1: 8D 0E 04  STA ram_player_state_2   ; con_040E_plr_state_idle
C - - - - - 0x01E5D4 07:E5C4: 85 DA     STA ram_00DA_flags  ; con_00DA_00
C - - - - - 0x01E5D6 07:E5C6: A9 01     LDA #$01    ; right
C - - - - - 0x01E5D8 07:E5C8: 85 A4     STA ram_plr_direction
C - - - - - 0x01E5DA 07:E5CA: A9 FF     LDA #$FF    ; unspecified
C - - - - - 0x01E5DC 07:E5CC: 85 A5     STA ram_00A5_t01_plr_dir
C - - - - - 0x01E5DE 07:E5CE: 20 C0 E8  JSR sub_E8C0_prepare_data_prg_bank_for_city
C - - - - - 0x01E5E1 07:E5D1: 20 96 E7  JSR sub_E796
C - - - - - 0x01E5E4 07:E5D4: 20 6F DB  JSR sub_DB6F
C - - - - - 0x01E5E7 07:E5D7: 20 A1 E8  JSR sub_E8A1
C - - - - - 0x01E5EA 07:E5DA: 20 8D E8  JSR sub_E88D
C - - - - - 0x01E5ED 07:E5DD: 20 DB FA  JSR sub_FADB
C - - - - - 0x01E5F0 07:E5E0: 20 AD E0  JSR sub_E0AD_enable_rendering
C - - - - - 0x01E5F3 07:E5E3: 20 B9 DA  JSR sub_DAB9_prepare_palette_and_increase_brightness
C - - - - - 0x01E5F6 07:E5E6: A9 01     LDA #con_03D5_gameplay
C - - - - - 0x01E5F8 07:E5E8: 8D D5 03  STA ram_03D5_script
; bzk optimize, JMP
C - - - - - 0x01E5FB 07:E5EB: 20 CC CA  JSR sub_CACC
C - - - - - 0x01E5FE 07:E5EE: 60        RTS



ofs_008_E5EF_05:
; con_03D6_05
C - - J - - 0x01E5FF 07:E5EF: 20 29 E9  JSR sub_E929_clear_some_addresses
C - - - - - 0x01E602 07:E5F2: 20 32 EB  JSR sub_EB32
C - - - - - 0x01E605 07:E5F5: 20 6B E4  JSR sub_E46B_clear_scrolls_and_nametable
C - - - - - 0x01E608 07:E5F8: AD AC 05  LDA ram_05AC_scroll_XY
C - - - - - 0x01E60B 07:E5FB: 48        PHA ; 1
C - - - - - 0x01E60C 07:E5FC: 29 0F     AND #$0F
C - - - - - 0x01E60E 07:E5FE: 85 42     STA ram_scroll_X_hi
C - - - - - 0x01E610 07:E600: 68        PLA ; 1
C - - - - - 0x01E611 07:E601: 29 F0     AND #$F0
; / 10
C - - - - - 0x01E613 07:E603: 4A        LSR
C - - - - - 0x01E614 07:E604: 4A        LSR
C - - - - - 0x01E615 07:E605: 4A        LSR
C - - - - - 0x01E616 07:E606: 4A        LSR
; 
C - - - - - 0x01E617 07:E607: 85 3F     STA ram_scroll_Y_hi
C - - - - - 0x01E619 07:E609: A9 C0     LDA #$C0
C - - - - - 0x01E61B 07:E60B: 8D 07 04  STA ram_pos_Y_lo_player
C - - - - - 0x01E61E 07:E60E: A9 40     LDA #$40
C - - - - - 0x01E620 07:E610: 8D 04 04  STA ram_pos_X_lo_player
C - - - - - 0x01E623 07:E613: A9 00     LDA #$00
C - - - - - 0x01E625 07:E615: 8D 05 04  STA ram_pos_X_hi_player
C - - - - - 0x01E628 07:E618: 8D 08 04  STA ram_pos_Y_hi_player
C - - - - - 0x01E62B 07:E61B: 8D 01 04  STA ram_player_state_1  ; con_plr_state_idle
C - - - - - 0x01E62E 07:E61E: 8D 0E 04  STA ram_player_state_2   ; con_040E_plr_state_idle
C - - - - - 0x01E631 07:E621: 85 D9     STA ram_00D9_array_index
C - - - - - 0x01E633 07:E623: 85 DA     STA ram_00DA_flags  ; con_00DA_00
C - - - - - 0x01E635 07:E625: 85 DB     STA ram_00DB_flag
C - - - - - 0x01E637 07:E627: A9 01     LDA #$01    ; right
C - - - - - 0x01E639 07:E629: 85 A4     STA ram_plr_direction
C - - - - - 0x01E63B 07:E62B: A9 FF     LDA #$FF    ; unspecified
C - - - - - 0x01E63D 07:E62D: 85 A5     STA ram_00A5_t01_plr_dir
C - - - - - 0x01E63F 07:E62F: 20 C0 E8  JSR sub_E8C0_prepare_data_prg_bank_for_city
C - - - - - 0x01E642 07:E632: 20 96 E7  JSR sub_E796
C - - - - - 0x01E645 07:E635: 20 6F DB  JSR sub_DB6F
C - - - - - 0x01E648 07:E638: 20 A1 E8  JSR sub_E8A1
C - - - - - 0x01E64B 07:E63B: 20 8D E8  JSR sub_E88D
C - - - - - 0x01E64E 07:E63E: 20 DB FA  JSR sub_FADB
C - - - - - 0x01E651 07:E641: 20 AD E0  JSR sub_E0AD_enable_rendering
C - - - - - 0x01E654 07:E644: 20 B9 DA  JSR sub_DAB9_prepare_palette_and_increase_brightness
C - - - - - 0x01E657 07:E647: A9 01     LDA #con_03D5_gameplay
C - - - - - 0x01E659 07:E649: 8D D5 03  STA ram_03D5_script
C - - - - - 0x01E65C 07:E64C: 20 14 E9  JSR sub_E914
; bzk optimize, JMP
C - - - - - 0x01E65F 07:E64F: 20 CC CA  JSR sub_CACC
C - - - - - 0x01E662 07:E652: 60        RTS



sub_E653:
C - - - - - 0x01E663 07:E653: A5 9D     LDA ram_prg_bank_A000
C - - - - - 0x01E665 07:E655: 48        PHA
C - - - - - 0x01E666 07:E656: A9 0B     LDA #con_prg_bank + $0B
C - - - - - 0x01E668 07:E658: 85 9D     STA ram_prg_bank_A000
C - - - - - 0x01E66A 07:E65A: 20 58 DB  JSR sub_DB58_prg_bankswitch_A000
C - - - - - 0x01E66D 07:E65D: 20 B9 E6  JSR sub_E6B9_clear_player_addresses
C - - - - - 0x01E670 07:E660: A9 00     LDA #$00    ; not swimming
C - - - - - 0x01E672 07:E662: 85 A6     STA ram_plr_swimming_state
C - - - - - 0x01E674 07:E664: A9 01     LDA #$01    ; swimming
C - - - - - 0x01E676 07:E666: 85 A7     STA ram_plr_prev_swimming_state
                                       ;LDA #con_00AA_flag_jump
C - - - - - 0x01E678 07:E668: 85 AA     STA ram_00AA_plr_flags
C - - - - - 0x01E67A 07:E66A: A9 20     LDA #$20
C - - - - - 0x01E67C 07:E66C: 8D 15 04  STA ram_0415_player_counter
C - - - - - 0x01E67F 07:E66F: A9 02     LDA #con_plr_state_jump
C - - - - - 0x01E681 07:E671: 8D 01 04  STA ram_player_state_1
C - - - - - 0x01E684 07:E674: A9 02     LDA #con_040E_plr_state_jump
C - - - - - 0x01E686 07:E676: 8D 0E 04  STA ram_player_state_2
C - - - - - 0x01E689 07:E679: A9 01     LDA #$01    ; right
C - - - - - 0x01E68B 07:E67B: 85 A4     STA ram_plr_direction
C - - - - - 0x01E68D 07:E67D: 85 A5     STA ram_00A5_t02_plr_dir
C - - - - - 0x01E68F 07:E67F: 20 03 A0  JSR sub_0x016013
C - - - - - 0x01E692 07:E682: A5 3C     LDA ram_city
C - - - - - 0x01E694 07:E684: C9 03     CMP #$03
C - - - - - 0x01E696 07:E686: D0 04     BNE bra_E68C
C - - - - - 0x01E698 07:E688: A9 80     LDA #$80
C - - - - - 0x01E69A 07:E68A: D0 02     BNE bra_E68E    ; jmp
bra_E68C:
C - - - - - 0x01E69C 07:E68C: A9 20     LDA #$20
bra_E68E:
C - - - - - 0x01E69E 07:E68E: 8D 04 04  STA ram_pos_X_lo_player
C - - - - - 0x01E6A1 07:E691: 8D 25 04  STA ram_pos_X_lo_shield
C - - - - - 0x01E6A4 07:E694: A9 98     LDA #$98
C - - - - - 0x01E6A6 07:E696: 8D 07 04  STA ram_pos_Y_lo_player
C - - - - - 0x01E6A9 07:E699: 8D 28 04  STA ram_pos_Y_lo_shield
C - - - - - 0x01E6AC 07:E69C: A9 00     LDA #$00
C - - - - - 0x01E6AE 07:E69E: 8D 03 04  STA ram_pos_X_fr_player
C - - - - - 0x01E6B1 07:E6A1: 8D 05 04  STA ram_pos_X_hi_player
C - - - - - 0x01E6B4 07:E6A4: 8D 06 04  STA ram_pos_Y_fr_player
C - - - - - 0x01E6B7 07:E6A7: 8D 08 04  STA ram_pos_Y_hi_player
C - - - - - 0x01E6BA 07:E6AA: 20 03 A0  JSR sub_0x016013
C - - - - - 0x01E6BD 07:E6AD: A9 80     LDA #$80
C - - - - - 0x01E6BF 07:E6AF: 8D 00 04  STA ram_0400_flag
C - - - - - 0x01E6C2 07:E6B2: 68        PLA
C - - - - - 0x01E6C3 07:E6B3: 85 9D     STA ram_prg_bank_A000
; bzk optimize, JMP
C - - - - - 0x01E6C5 07:E6B5: 20 58 DB  JSR sub_DB58_prg_bankswitch_A000
C - - - - - 0x01E6C8 07:E6B8: 60        RTS



sub_E6B9_clear_player_addresses:
C - - - - - 0x01E6C9 07:E6B9: A9 00     LDA #con_00AB_00
C - - - - - 0x01E6CB 07:E6BB: 85 AB     STA ram_00AB_handler
                                       ;LDA #$00
; bzk optimize, useless STA
C - - - - - 0x01E6CD 07:E6BD: 8D 19 04  STA ram_0419_tFB_useless
; 
C - - - - - 0x01E6D0 07:E6C0: 8D 1A 04  STA ram_player_jump_timer
C - - - - - 0x01E6D3 07:E6C3: 8D 1B 04  STA ram_041B_player_flags   ; con_041B_flag_00
C - - - - - 0x01E6D6 07:E6C6: 8D 1C 04  STA ram_041C_player_timer
; bzk optimize, useless STA
C - - - - - 0x01E6D9 07:E6C9: 8D 1D 04  STA ram_041D_player_timer
; 
C - - - - - 0x01E6DC 07:E6CC: 85 AD     STA ram_00AD_counter
C - - - - - 0x01E6DE 07:E6CE: 8D 1F 04  STA ram_041F_player_flags
C - - - - - 0x01E6E1 07:E6D1: 85 B0     STA ram_00B0
C - - - - - 0x01E6E3 07:E6D3: 85 B1     STA ram_00B1_counter
C - - - - - 0x01E6E5 07:E6D5: 8D 2F 04  STA ram_042F_shield_script
C - - - - - 0x01E6E8 07:E6D8: 8D 22 04  STA ram_0422_flag
C - - - - - 0x01E6EB 07:E6DB: 85 AE     STA ram_00AE_useless
C - - - - - 0x01E6ED 07:E6DD: 85 B2     STA ram_00B2_useless_00
C - - - - - 0x01E6EF 07:E6DF: 60        RTS



sub_E6E0_clear_some_addresses:
C - - - - - 0x01E6F0 07:E6E0: A9 00     LDA #$00
C - - - - - 0x01E6F2 07:E6E2: 85 D9     STA ram_00D9_array_index
C - - - - - 0x01E6F4 07:E6E4: 85 DA     STA ram_00DA_flags  ; con_00DA_00
C - - - - - 0x01E6F6 07:E6E6: 85 DB     STA ram_00DB_flag
C - - - - - 0x01E6F8 07:E6E8: 85 E4     STA ram_00E4_flag
C - - - - - 0x01E6FA 07:E6EA: 85 D7     STA ram_00D7
C - - - - - 0x01E6FC 07:E6EC: 85 E7     STA ram_00E7_flag
C - - - - - 0x01E6FE 07:E6EE: 8D F3 03  STA ram_03F3
C - - - - - 0x01E701 07:E6F1: 8D B1 05  STA ram_05B1_array
C - - - - - 0x01E704 07:E6F4: 8D B2 05  STA ram_05B1_array + $01
C - - - - - 0x01E707 07:E6F7: 8D B3 05  STA ram_05B1_array + $02
C - - - - - 0x01E70A 07:E6FA: 8D B4 05  STA ram_05B1_array + $03
C - - - - - 0x01E70D 07:E6FD: 8D E8 06  STA ram_06E8_exit_item
C - - - - - 0x01E710 07:E700: 8D E3 05  STA ram_05E3_flag
C - - - - - 0x01E713 07:E703: 8D FC 03  STA ram_03FC
C - - - - - 0x01E716 07:E706: 8D C7 05  STA ram_05C7_flags
C - - - - - 0x01E719 07:E709: 85 E9     STA ram_pause_flag ; bot paused
; bzk optimize, useless STAs
C - - - - - 0x01E71B 07:E70B: 85 45     STA ram_0045_tFD_useless
C - - - - - 0x01E71D 07:E70D: 85 46     STA ram_0046_tFD_useless
C - - - - - 0x01E71F 07:E70F: 85 47     STA ram_0047_tFE_useless
C - - - - - 0x01E721 07:E711: 85 48     STA ram_0048_tFE_useless
; 
                                       ;LDA #con_004B_00
C - - - - - 0x01E723 07:E713: 85 4B     STA ram_004B_script
; 
C - - - - - 0x01E725 07:E715: A2 0F     LDX #$0F
bra_E717_loop:
C - - - - - 0x01E727 07:E717: 9D F0 06  STA ram_06F0_array,X
C - - - - - 0x01E72A 07:E71A: CA        DEX
C - - - - - 0x01E72B 07:E71B: 10 FA     BPL bra_E717_loop
; 
C - - - - - 0x01E72D 07:E71D: A2 07     LDX #$07
bra_E71F_loop:
C - - - - - 0x01E72F 07:E71F: 9D C7 05  STA ram_05C7_flags,X
C - - - - - 0x01E732 07:E722: CA        DEX
C - - - - - 0x01E733 07:E723: 10 FA     BPL bra_E71F_loop
; 
C - - - - - 0x01E735 07:E725: A6 3C     LDX ram_city
C - - - - - 0x01E737 07:E727: E0 24     CPX #$24
C - - - - - 0x01E739 07:E729: 90 04     BCC bra_E72F
C - - - - - 0x01E73B 07:E72B: A9 00     LDA #$00
C - - - - - 0x01E73D 07:E72D: F0 03     BEQ bra_E732    ; jmp
bra_E72F:
C - - - - - 0x01E73F 07:E72F: BD 3D E7  LDA tbl_E73D,X
bra_E732:
C - - - - - 0x01E742 07:E732: 85 D8     STA ram_00D8
; 
C - - - - - 0x01E744 07:E734: A9 1E     LDA #$1E
C - - - - - 0x01E746 07:E736: 85 E8     STA ram_00E8_counter
; 
C - - - - - 0x01E748 07:E738: A9 01     LDA #$01
C - - - - - 0x01E74A 07:E73A: 85 E6     STA ram_00E6_flag
C - - - - - 0x01E74C 07:E73C: 60        RTS



tbl_E73D:
- D 3 - - - 0x01E74D 07:E73D: 00        .byte $00   ; 00 
- D 3 - - - 0x01E74E 07:E73E: 00        .byte $00   ; 01 
- D 3 - - - 0x01E74F 07:E73F: 00        .byte $00   ; 02 
- D 3 - - - 0x01E750 07:E740: 00        .byte $00   ; 03 
- D 3 - - - 0x01E751 07:E741: 00        .byte $00   ; 04 
- D 3 - - - 0x01E752 07:E742: 00        .byte $00   ; 05 
- D 3 - - - 0x01E753 07:E743: 80        .byte $80   ; 06 
- D 3 - - - 0x01E754 07:E744: 80        .byte $80   ; 07 
- D 3 - - - 0x01E755 07:E745: 00        .byte $00   ; 08 
- D 3 - - - 0x01E756 07:E746: 00        .byte $00   ; 09 
- D 3 - - - 0x01E757 07:E747: 00        .byte $00   ; 0A 
- D 3 - - - 0x01E758 07:E748: 90        .byte $90   ; 0B 
- D 3 - - - 0x01E759 07:E749: 80        .byte $80   ; 0C 
- D 3 - - - 0x01E75A 07:E74A: 00        .byte $00   ; 0D 
- D 3 - - - 0x01E75B 07:E74B: 80        .byte $80   ; 0E 
- D 3 - - - 0x01E75C 07:E74C: 00        .byte $00   ; 0F 
- D 3 - - - 0x01E75D 07:E74D: 00        .byte $00   ; 10 
- D 3 - - - 0x01E75E 07:E74E: 00        .byte $00   ; 11 
- D 3 - - - 0x01E75F 07:E74F: 80        .byte $80   ; 12 
- D 3 - - - 0x01E760 07:E750: 90        .byte $90   ; 13 
- D 3 - - - 0x01E761 07:E751: 80        .byte $80   ; 14 
- D 3 - - - 0x01E762 07:E752: 80        .byte $80   ; 15 
- D 3 - - - 0x01E763 07:E753: 90        .byte $90   ; 16 
; bzk bug, indexes 17-23 are missing, reading from the code below instead


sub_E754_clear_player_addresses:
C D 3 - - - 0x01E764 07:E754: A9 00     LDA #$00
C D 3 - - - 0x01E766 07:E756: 8D 01 04  STA ram_player_state_1  ; con_plr_state_idle
C - - - - - 0x01E769 07:E759: 8D 0E 04  STA ram_player_state_2
C - - - - - 0x01E76C 07:E75C: 85 A8     STA ram_plr_index
C - - - - - 0x01E76E 07:E75E: 85 AA     STA ram_00AA_plr_flags
C D 3 - - - 0x01E770 07:E760: 85 AB     STA ram_00AB_handler
; bzk optimize, useless STA
C - - - - - 0x01E772 07:E762: 8D 19 04  STA ram_0419_tFC_useless
; 
C - - - - - 0x01E775 07:E765: 8D 1A 04  STA ram_player_jump_timer
C - - - - - 0x01E778 07:E768: 8D 1B 04  STA ram_041B_player_flags   ; con_041B_flag_00
C - - - - - 0x01E77B 07:E76B: 8D 15 04  STA ram_0415_player_counter
C - - - - - 0x01E77E 07:E76E: 85 AD     STA ram_00AD_counter
C - - - - - 0x01E780 07:E770: 60        RTS



sub_E771:
C - - - - - 0x01E781 07:E771: A5 9C     LDA ram_prg_bank_8000
C - - - - - 0x01E783 07:E773: 48        PHA
C - - - - - 0x01E784 07:E774: A9 02     LDA #con_prg_bank + $02
C - - - - - 0x01E786 07:E776: 85 9C     STA ram_prg_bank_8000
C - - - - - 0x01E788 07:E778: 20 41 DB  JSR sub_DB41_prg_bankswitch_8000
C - - - - - 0x01E78B 07:E77B: A5 3C     LDA ram_city
C - - - - - 0x01E78D 07:E77D: 0A        ASL
C - - - - - 0x01E78E 07:E77E: AA        TAX
C - - - - - 0x01E78F 07:E77F: BD 9C 97  LDA tbl_0x0057AC_city_scroll_positions,X
C - - - - - 0x01E792 07:E782: 85 9A     STA ram_009A_scroll_X_hi
C - - - - - 0x01E794 07:E784: BD 9D 97  LDA tbl_0x0057AC_city_scroll_positions + $01,X
C - - - - - 0x01E797 07:E787: 85 98     STA ram_0098_scroll_Y_hi
C - - - - - 0x01E799 07:E789: A9 00     LDA #$00
C - - - - - 0x01E79B 07:E78B: 85 97     STA ram_0097_useless_00
C - - - - - 0x01E79D 07:E78D: 85 99     STA ram_0099_useless_00
C - - - - - 0x01E79F 07:E78F: 68        PLA
C - - - - - 0x01E7A0 07:E790: 85 9C     STA ram_prg_bank_8000
; bzk optimize, JMP
C - - - - - 0x01E7A2 07:E792: 20 41 DB  JSR sub_DB41_prg_bankswitch_8000
C - - - - - 0x01E7A5 07:E795: 60        RTS



sub_E796:
C - - - - - 0x01E7A6 07:E796: A9 B0     LDA #$B0
C - - - - - 0x01E7A8 07:E798: 8D 00 20  STA $2000
C - - - - - 0x01E7AB 07:E79B: A9 00     LDA #$00
C - - - - - 0x01E7AD 07:E79D: 85 3B     STA ram_for_2001
C - - - - - 0x01E7AF 07:E79F: A9 00     LDA #$00
C - - - - - 0x01E7B1 07:E7A1: 85 8D     STA ram_008D
C - - - - - 0x01E7B3 07:E7A3: 85 8E     STA ram_008E
C - - - - - 0x01E7B5 07:E7A5: 85 02     STA ram_buffers_flags
C - - - - - 0x01E7B7 07:E7A7: A5 43     LDA ram_scroll_X_lo
C - - - - - 0x01E7B9 07:E7A9: 29 F8     AND #$F8
C - - - - - 0x01E7BB 07:E7AB: 18        CLC
C - - - - - 0x01E7BC 07:E7AC: 69 40     ADC #< $0140
C - - - - - 0x01E7BE 07:E7AE: 85 8A     STA ram_008A_scroll_X_lo
C - - - - - 0x01E7C0 07:E7B0: A5 42     LDA ram_scroll_X_hi
C - - - - - 0x01E7C2 07:E7B2: 69 01     ADC #> $0140
C - - - - - 0x01E7C4 07:E7B4: 85 89     STA ram_0089_scroll_X_hi
C - - - - - 0x01E7C6 07:E7B6: A5 3F     LDA ram_scroll_Y_hi
C - - - - - 0x01E7C8 07:E7B8: 85 8B     STA ram_008B_scroll_Y_hi
C - - - - - 0x01E7CA 07:E7BA: A5 40     LDA ram_scroll_Y_lo
C - - - - - 0x01E7CC 07:E7BC: 29 F8     AND #$F8
C - - - - - 0x01E7CE 07:E7BE: 85 8C     STA ram_008C_scroll_Y_lo
; set scroll left
C - - - - - 0x01E7D0 07:E7C0: A9 02     LDA #$02
C - - - - - 0x01E7D2 07:E7C2: 85 94     STA ram_0094_scroll_X_direction
; 
C - - - - - 0x01E7D4 07:E7C4: A9 50     LDA #$50
C - - - - - 0x01E7D6 07:E7C6: 85 7A     STA ram_007A_t04_delay_timer
bra_E7C8_loop:
C - - - - - 0x01E7D8 07:E7C8: 20 CE F3  JSR sub_F3CE
C - - - - - 0x01E7DB 07:E7CB: 20 BF F4  JSR sub_F4BF
C - - - - - 0x01E7DE 07:E7CE: 20 82 E0  JSR sub_E082_wait_1_frm
C - - - - - 0x01E7E1 07:E7D1: C6 7A     DEC ram_007A_t04_delay_timer
C - - - - - 0x01E7E3 07:E7D3: D0 F3     BNE bra_E7C8_loop
C - - - - - 0x01E7E5 07:E7D5: 20 39 EC  JSR sub_EC39
C - - - - - 0x01E7E8 07:E7D8: 20 DB FA  JSR sub_FADB
; bzk optimize, JMP
C - - - - - 0x01E7EB 07:E7DB: 20 82 E0  JSR sub_E082_wait_1_frm
C - - - - - 0x01E7EE 07:E7DE: 60        RTS



sub_E7DF:
C - - - - - 0x01E7EF 07:E7DF: A2 00     LDX #$00
C - - - - - 0x01E7F1 07:E7E1: A0 00     LDY #$00
bra_E7E3_loop:
C - - - - - 0x01E7F3 07:E7E3: BD B1 05  LDA ram_05B1_array,X
C - - - - - 0x01E7F6 07:E7E6: F0 01     BEQ bra_E7E9
C - - - - - 0x01E7F8 07:E7E8: C8        INY
bra_E7E9:
C - - - - - 0x01E7F9 07:E7E9: E8        INX
C - - - - - 0x01E7FA 07:E7EA: E0 04     CPX #$04
C - - - - - 0x01E7FC 07:E7EC: 90 F5     BCC bra_E7E3_loop
C - - - - - 0x01E7FE 07:E7EE: C0 00     CPY #$00
C - - - - - 0x01E800 07:E7F0: F0 2D     BEQ bra_E81F_RTS    ; if array is empty
C - - - - - 0x01E802 07:E7F2: 84 7A     STY ram_007A_t05_loop_counter
C - - - - - 0x01E804 07:E7F4: C6 7A     DEC ram_007A_t05_loop_counter
bra_E7F6_loop:
C - - - - - 0x01E806 07:E7F6: A6 7A     LDX ram_007A_t05_loop_counter
C - - - - - 0x01E808 07:E7F8: BD B1 05  LDA ram_05B1_array,X
C - - - - - 0x01E80B 07:E7FB: 8D C7 05  STA ram_05C7_flags
C - - - - - 0x01E80E 07:E7FE: A9 00     LDA #$00
C - - - - - 0x01E810 07:E800: 8D C8 05  STA ram_05C8_t01_data_index
C - - - - - 0x01E813 07:E803: 8D C9 05  STA ram_05C9_t01_timer
C - - - - - 0x01E816 07:E806: 8D CA 05  STA ram_05CA_t02_flag
C - - - - - 0x01E819 07:E809: A5 42     LDA ram_scroll_X_hi
C - - - - - 0x01E81B 07:E80B: 29 01     AND #$01
C - - - - - 0x01E81D 07:E80D: 8D CB 05  STA ram_05CB_t02_nametable
bra_E810_loop:
C - - - - - 0x01E820 07:E810: 20 83 D3  JSR sub_D383
C - - - - - 0x01E823 07:E813: 20 82 E0  JSR sub_E082_wait_1_frm
C - - - - - 0x01E826 07:E816: AD C7 05  LDA ram_05C7_flags
C - - - - - 0x01E829 07:E819: D0 F5     BNE bra_E810_loop
C - - - - - 0x01E82B 07:E81B: C6 7A     DEC ram_007A_t05_loop_counter
C - - - - - 0x01E82D 07:E81D: 10 D7     BPL bra_E7F6_loop
bra_E81F_RTS:
C - - - - - 0x01E82F 07:E81F: 60        RTS



sub_E820_set_default_values:
C - - - - - 0x01E830 07:E820: A9 03     LDA #$03
C - - - - - 0x01E832 07:E822: 85 E5     STA ram_continues
C - - - - - 0x01E834 07:E824: A9 00     LDA #$00
C - - - - - 0x01E836 07:E826: 8D B5 05  STA ram_05B5_player_flags
C - - - - - 0x01E839 07:E829: 8D DC 05  STA ram_05DC_flags  ; con_05DC_00
C - - - - - 0x01E83C 07:E82C: 8D E0 05  STA ram_05E0_flags  ; con_05E0_00
; bzk optimize, useless STA + STA?
C - - - - - 0x01E83F 07:E82F: 8D DD 05  STA ram_05DD_obj
C - - - - - 0x01E842 07:E832: 8D DE 05  STA ram_05DD_obj + $01
; 
C - - - - - 0x01E845 07:E835: 8D DF 05  STA ram_05DD_obj + $02
C - - - - - 0x01E848 07:E838: 8D E1 05  STA ram_05E1_flags  ; con_05E1_00
C - - - - - 0x01E84B 07:E83B: 8D DD 03  STA ram_plr_crystals
C - - - - - 0x01E84E 07:E83E: 8D DE 03  STA ram_plr_crystals + $01
C - - - - - 0x01E851 07:E841: 8D E2 03  STA ram_plr_score
C - - - - - 0x01E854 07:E844: 8D E3 03  STA ram_plr_score + $01
C - - - - - 0x01E857 07:E847: 8D E4 03  STA ram_plr_score + $02
C - - - - - 0x01E85A 07:E84A: 85 D2     STA ram_00D2_data_index
C - - - - - 0x01E85C 07:E84C: 8D D7 03  STA ram_captain_power
C - - - - - 0x01E85F 07:E84F: 8D D8 03  STA ram_hawk_power
C - - - - - 0x01E862 07:E852: A9 08     LDA #$08
C - - - - - 0x01E864 07:E854: 8D D9 03  STA ram_captain_hp
C - - - - - 0x01E867 07:E857: 8D DA 03  STA ram_hawk_hp
C - - - - - 0x01E86A 07:E85A: A9 80     LDA #con_05D4_80
C - - - - - 0x01E86C 07:E85C: 8D D4 05  STA ram_05D4_plr_flags
C - - - - - 0x01E86F 07:E85F: 8D D5 05  STA ram_05D4_plr_flags + $01
C - - - - - 0x01E872 07:E862: A9 81     LDA #$81
C - - - - - 0x01E874 07:E864: 8D D6 05  STA ram_05D6_plr
C - - - - - 0x01E877 07:E867: A9 82     LDA #$82
C - - - - - 0x01E879 07:E869: 8D D7 05  STA ram_05D6_plr + $01
C - - - - - 0x01E87C 07:E86C: 60        RTS



sub_E86D_save_chr_banks:
C - - - - - 0x01E87D 07:E86D: A2 03     LDX #$03
bra_E86F_loop:
C - - - - - 0x01E87F 07:E86F: B5 24     LDA ram_chr_bank_spr,X
C - - - - - 0x01E881 07:E871: 9D E6 03  STA ram_03E6_t01_chr_banks_spr,X
C - - - - - 0x01E884 07:E874: B5 20     LDA ram_chr_bank_bg,X
C - - - - - 0x01E886 07:E876: 9D EA 03  STA ram_03EA_t01_chr_banks_bg,X
C - - - - - 0x01E889 07:E879: CA        DEX
C - - - - - 0x01E88A 07:E87A: 10 F3     BPL bra_E86F_loop
C - - - - - 0x01E88C 07:E87C: 60        RTS



sub_E87D_restore_chr_banks:
C - - - - - 0x01E88D 07:E87D: A2 03     LDX #$03
bra_E87F_loop:
C - - - - - 0x01E88F 07:E87F: BD E6 03  LDA ram_03E6_t01_chr_banks_spr,X
C - - - - - 0x01E892 07:E882: 95 24     STA ram_chr_bank_spr,X
C - - - - - 0x01E894 07:E884: BD EA 03  LDA ram_03EA_t01_chr_banks_bg,X
C - - - - - 0x01E897 07:E887: 95 20     STA ram_chr_bank_bg,X
C - - - - - 0x01E899 07:E889: CA        DEX
C - - - - - 0x01E89A 07:E88A: 10 F3     BPL bra_E87F_loop
C - - - - - 0x01E89C 07:E88C: 60        RTS



sub_E88D:
C - - - - - 0x01E89D 07:E88D: A5 9D     LDA ram_prg_bank_A000
C - - - - - 0x01E89F 07:E88F: 48        PHA
C - - - - - 0x01E8A0 07:E890: A9 0B     LDA #con_prg_bank + $0B
C - - - - - 0x01E8A2 07:E892: 85 9D     STA ram_prg_bank_A000
C - - - - - 0x01E8A4 07:E894: 20 58 DB  JSR sub_DB58_prg_bankswitch_A000
C - - - - - 0x01E8A7 07:E897: 20 03 A0  JSR sub_0x016013
C - - - - - 0x01E8AA 07:E89A: 68        PLA
C - - - - - 0x01E8AB 07:E89B: 85 9D     STA ram_prg_bank_A000
; bzk optimize, JMP
C - - - - - 0x01E8AD 07:E89D: 20 58 DB  JSR sub_DB58_prg_bankswitch_A000
C - - - - - 0x01E8B0 07:E8A0: 60        RTS



sub_E8A1:
C - - - - - 0x01E8B1 07:E8A1: A5 A8     LDA ram_plr_index
C - - - - - 0x01E8B3 07:E8A3: D0 0C     BNE bra_E8B1
C - - - - - 0x01E8B5 07:E8A5: AD 04 04  LDA ram_pos_X_lo_player
C - - - - - 0x01E8B8 07:E8A8: 8D 25 04  STA ram_pos_X_lo_shield
C - - - - - 0x01E8BB 07:E8AB: AD 07 04  LDA ram_pos_Y_lo_player
C - - - - - 0x01E8BE 07:E8AE: 8D 28 04  STA ram_pos_Y_lo_shield
bra_E8B1:
C - - - - - 0x01E8C1 07:E8B1: A9 00     LDA #$00
C - - - - - 0x01E8C3 07:E8B3: 8D 2F 04  STA ram_042F_shield_script
C - - - - - 0x01E8C6 07:E8B6: 8D 22 04  STA ram_0422_flag
C - - - - - 0x01E8C9 07:E8B9: 8D 26 04  STA ram_pos_X_hi_shield
C - - - - - 0x01E8CC 07:E8BC: 8D 29 04  STA ram_pos_Y_hi_shield
C - - - - - 0x01E8CF 07:E8BF: 60        RTS



sub_E8C0_prepare_data_prg_bank_for_city:
C - - - - - 0x01E8D0 07:E8C0: A6 3C     LDX ram_city
C - - - - - 0x01E8D2 07:E8C2: BD C8 E8  LDA tbl_E8C8_prg_banks_city,X
C - - - - - 0x01E8D5 07:E8C5: 85 4C     STA ram_prg_bank_city
C - - - - - 0x01E8D7 07:E8C7: 60        RTS



tbl_E8C8_prg_banks_city:
- D 3 - - - 0x01E8D8 07:E8C8: 00        .byte con_prg_bank + $00   ; 00 
- D 3 - - - 0x01E8D9 07:E8C9: 02        .byte con_prg_bank + $02   ; 01 
- D 3 - - - 0x01E8DA 07:E8CA: 00        .byte con_prg_bank + $00   ; 02 
- D 3 - - - 0x01E8DB 07:E8CB: 02        .byte con_prg_bank + $02   ; 03 
- D 3 - - - 0x01E8DC 07:E8CC: 00        .byte con_prg_bank + $00   ; 04 
- D 3 - - - 0x01E8DD 07:E8CD: 01        .byte con_prg_bank + $01   ; 05 
- D 3 - - - 0x01E8DE 07:E8CE: 01        .byte con_prg_bank + $01   ; 06 
- D 3 - - - 0x01E8DF 07:E8CF: 01        .byte con_prg_bank + $01   ; 07 
- D 3 - - - 0x01E8E0 07:E8D0: 00        .byte con_prg_bank + $00   ; 08 
- D 3 - - - 0x01E8E1 07:E8D1: 01        .byte con_prg_bank + $01   ; 09 
- D 3 - - - 0x01E8E2 07:E8D2: 00        .byte con_prg_bank + $00   ; 0A 
- D 3 - - - 0x01E8E3 07:E8D3: 01        .byte con_prg_bank + $01   ; 0B 
- D 3 - - - 0x01E8E4 07:E8D4: 01        .byte con_prg_bank + $01   ; 0C 
- D 3 - - - 0x01E8E5 07:E8D5: 00        .byte con_prg_bank + $00   ; 0D 
- D 3 - - - 0x01E8E6 07:E8D6: 01        .byte con_prg_bank + $01   ; 0E 
- D 3 - - - 0x01E8E7 07:E8D7: 00        .byte con_prg_bank + $00   ; 0F 
- D 3 - - - 0x01E8E8 07:E8D8: 00        .byte con_prg_bank + $00   ; 10 
- D 3 - - - 0x01E8E9 07:E8D9: 01        .byte con_prg_bank + $01   ; 11 
- D 3 - - - 0x01E8EA 07:E8DA: 01        .byte con_prg_bank + $01   ; 12 
- D 3 - - - 0x01E8EB 07:E8DB: 01        .byte con_prg_bank + $01   ; 13 
- D 3 - - - 0x01E8EC 07:E8DC: 01        .byte con_prg_bank + $01   ; 14 
- D 3 - - - 0x01E8ED 07:E8DD: 01        .byte con_prg_bank + $01   ; 15 
- D 3 - - - 0x01E8EE 07:E8DE: 01        .byte con_prg_bank + $01   ; 16 
- D 3 - - - 0x01E8EF 07:E8DF: 01        .byte con_prg_bank + $01   ; 17 
- D 3 - - - 0x01E8F0 07:E8E0: 02        .byte con_prg_bank + $02   ; 18 
- D 3 - - - 0x01E8F1 07:E8E1: 00        .byte con_prg_bank + $00   ; 19 
- D 3 - - - 0x01E8F2 07:E8E2: 00        .byte con_prg_bank + $00   ; 1A 
- D 3 - - - 0x01E8F3 07:E8E3: 01        .byte con_prg_bank + $01   ; 1B 
- - - - - - 0x01E8F4 07:E8E4: 01        .byte con_prg_bank + $01   ; 1C 
- D 3 - - - 0x01E8F5 07:E8E5: 02        .byte con_prg_bank + $02   ; 1D 
- D 3 - - - 0x01E8F6 07:E8E6: 01        .byte con_prg_bank + $01   ; 1E 
- D 3 - - - 0x01E8F7 07:E8E7: 01        .byte con_prg_bank + $01   ; 1F 
- D 3 - - - 0x01E8F8 07:E8E8: 01        .byte con_prg_bank + $01   ; 20 
- D 3 - - - 0x01E8F9 07:E8E9: 01        .byte con_prg_bank + $01   ; 21 
- D 3 - - - 0x01E8FA 07:E8EA: 01        .byte con_prg_bank + $01   ; 22 
- D 3 - - - 0x01E8FB 07:E8EB: 02        .byte con_prg_bank + $02   ; 23 
- D 3 - - - 0x01E8FC 07:E8EC: 02        .byte con_prg_bank + $02   ; 24 
- D 3 - - - 0x01E8FD 07:E8ED: 02        .byte con_prg_bank + $02   ; 25 
- D 3 - - - 0x01E8FE 07:E8EE: 02        .byte con_prg_bank + $02   ; 26 



sub_E8EF:
C - - - - - 0x01E8FF 07:E8EF: 20 6B E4  JSR sub_E46B_clear_scrolls_and_nametable
C - - - - - 0x01E902 07:E8F2: A5 9C     LDA ram_prg_bank_8000
C - - - - - 0x01E904 07:E8F4: 48        PHA
C - - - - - 0x01E905 07:E8F5: A9 02     LDA #con_prg_bank + $02
C - - - - - 0x01E907 07:E8F7: 85 9C     STA ram_prg_bank_8000
C - - - - - 0x01E909 07:E8F9: 20 41 DB  JSR sub_DB41_prg_bankswitch_8000
C - - - - - 0x01E90C 07:E8FC: A6 3C     LDX ram_city
C - - - - - 0x01E90E 07:E8FE: BD 1F 9B  LDA tbl_0x005B2F_city_scroll_Y_hi,X
C - - - - - 0x01E911 07:E901: 85 3F     STA ram_scroll_Y_hi
C - - - - - 0x01E913 07:E903: 85 8B     STA ram_008B_scroll_Y_hi
C - - - - - 0x01E915 07:E905: A9 00     LDA #$00
C - - - - - 0x01E917 07:E907: 85 8C     STA ram_008C_scroll_Y_lo
C - - - - - 0x01E919 07:E909: 85 89     STA ram_0089_scroll_X_hi
C - - - - - 0x01E91B 07:E90B: 85 8A     STA ram_008A_scroll_X_lo
C - - - - - 0x01E91D 07:E90D: 68        PLA
C - - - - - 0x01E91E 07:E90E: 85 9C     STA ram_prg_bank_8000
; bzk optimize, JMP
C - - - - - 0x01E920 07:E910: 20 41 DB  JSR sub_DB41_prg_bankswitch_8000
C - - - - - 0x01E923 07:E913: 60        RTS



sub_E914:
C - - - - - 0x01E924 07:E914: A5 42     LDA ram_scroll_X_hi
C - - - - - 0x01E926 07:E916: 8D D0 05  STA ram_05D0_scroll_X_hi
C - - - - - 0x01E929 07:E919: A5 43     LDA ram_scroll_X_lo
C - - - - - 0x01E92B 07:E91B: 8D D1 05  STA ram_05D1_scroll_X_lo
C - - - - - 0x01E92E 07:E91E: A5 3F     LDA ram_scroll_Y_hi
C - - - - - 0x01E930 07:E920: 8D D2 05  STA ram_05D2_scroll_Y_hi
C - - - - - 0x01E933 07:E923: A5 40     LDA ram_scroll_Y_lo
C - - - - - 0x01E935 07:E925: 8D D3 05  STA ram_05D3_scroll_Y_lo
C - - - - - 0x01E938 07:E928: 60        RTS



sub_E929_clear_some_addresses:
C - - - - - 0x01E939 07:E929: A9 00     LDA #$00
C - - - - - 0x01E93B 07:E92B: 8D 22 04  STA ram_0422_flag
C - - - - - 0x01E93E 07:E92E: AA        TAX ; 00
C - - - - - 0x01E93F 07:E92F: A0 0D     LDY #$0D
bra_E931_loop:
C - - - - - 0x01E941 07:E931: 9D 3A 04  STA ram_043A_obj_flags,X
C - - - - - 0x01E944 07:E934: E8        INX
C - - - - - 0x01E945 07:E935: 88        DEY
C - - - - - 0x01E946 07:E936: D0 F9     BNE bra_E931_loop
; A = 00
; Y = 00
C - - - - - 0x01E948 07:E938: 85 CA     STA ram_00CA_objects_counter
C - - - - - 0x01E94A 07:E93A: 85 CB     STA ram_00CB_t01
C - - - - - 0x01E94C 07:E93C: 85 CD     STA ram_drop_objects_counter
C - - - - - 0x01E94E 07:E93E: 85 CE     STA ram_all_objects_counter
; bzk optimize, STA without ,Y
C - - - - - 0x01E950 07:E940: 99 F2 03  STA ram_03F2_counter,Y
bra_E943_loop:
C - - - - - 0x01E953 07:E943: 99 87 05  STA ram_0587_obj,Y
C - - - - - 0x01E956 07:E946: C8        INY
C - - - - - 0x01E957 07:E947: C0 0A     CPY #$0A
C - - - - - 0x01E959 07:E949: 90 F8     BCC bra_E943_loop
C - - - - - 0x01E95B 07:E94B: 60        RTS



sub_E94C:
C - - - - - 0x01E95C 07:E94C: A6 3C     LDX ram_city
C - - - - - 0x01E95E 07:E94E: 86 4D     STX ram_004D_palette_index
C - - - - - 0x01E960 07:E950: A5 9C     LDA ram_prg_bank_8000
C - - - - - 0x01E962 07:E952: 48        PHA
C - - - - - 0x01E963 07:E953: A9 02     LDA #con_prg_bank + $02
C - - - - - 0x01E965 07:E955: 85 9C     STA ram_prg_bank_8000
C - - - - - 0x01E967 07:E957: 20 41 DB  JSR sub_DB41_prg_bankswitch_8000
C - - - - - 0x01E96A 07:E95A: BD EA 97  LDA tbl_0x0057FA_city_palette_indexes,X
C - - - - - 0x01E96D 07:E95D: 85 0D     STA ram_000D_spr_pal_index
C - - - - - 0x01E96F 07:E95F: 68        PLA
C - - - - - 0x01E970 07:E960: 85 9C     STA ram_prg_bank_8000
; bzk optimize, JMP
C - - - - - 0x01E972 07:E962: 20 41 DB  JSR sub_DB41_prg_bankswitch_8000
C - - - - - 0x01E975 07:E965: 60        RTS



sub_E966:
C - - - - - 0x01E976 07:E966: A5 9C     LDA ram_prg_bank_8000
C - - - - - 0x01E978 07:E968: 48        PHA
C - - - - - 0x01E979 07:E969: A9 02     LDA #con_prg_bank + $02
C - - - - - 0x01E97B 07:E96B: 85 9C     STA ram_prg_bank_8000
C - - - - - 0x01E97D 07:E96D: 20 41 DB  JSR sub_DB41_prg_bankswitch_8000
C - - - - - 0x01E980 07:E970: A5 3C     LDA ram_city
; * 04
C - - - - - 0x01E982 07:E972: 0A        ASL
C - - - - - 0x01E983 07:E973: 0A        ASL
; 
C - - - - - 0x01E984 07:E974: AA        TAX
C - - - - - 0x01E985 07:E975: BD 00 97  LDA tbl_0x005710_city_scroll_positions,X
C - - - - - 0x01E988 07:E978: 8D F6 03  STA ram_03F6_scroll_Y_hi
C - - - - - 0x01E98B 07:E97B: BD 01 97  LDA tbl_0x005710_city_scroll_positions + $01,X
C - - - - - 0x01E98E 07:E97E: 8D F8 03  STA ram_03F8_scroll_X_hi
C - - - - - 0x01E991 07:E981: BD 02 97  LDA tbl_0x005710_city_scroll_positions + $02,X
C - - - - - 0x01E994 07:E984: 8D F7 03  STA ram_03F6_scroll_Y_hi + $01
C - - - - - 0x01E997 07:E987: BD 03 97  LDA tbl_0x005710_city_scroll_positions + $03,X
C - - - - - 0x01E99A 07:E98A: 8D F9 03  STA ram_03F8_scroll_X_hi + $01
C - - - - - 0x01E99D 07:E98D: A9 00     LDA #$00
C - - - - - 0x01E99F 07:E98F: 85 D9     STA ram_00D9_array_index
C - - - - - 0x01E9A1 07:E991: 68        PLA
C - - - - - 0x01E9A2 07:E992: 85 9C     STA ram_prg_bank_8000
; bzk optimize, JMP
C - - - - - 0x01E9A4 07:E994: 20 41 DB  JSR sub_DB41_prg_bankswitch_8000
C - - - - - 0x01E9A7 07:E997: 60        RTS



sub_E998:
C - - - - - 0x01E9A8 07:E998: 20 C9 E9  JSR sub_E9C9
C - - - - - 0x01E9AB 07:E99B: 20 37 EA  JSR sub_EA37
C - - - - - 0x01E9AE 07:E99E: 20 BE EA  JSR sub_EABE
C - - - - - 0x01E9B1 07:E9A1: 20 CC CA  JSR sub_CACC
C - - - - - 0x01E9B4 07:E9A4: A9 00     LDA #$00
C - - - - - 0x01E9B6 07:E9A6: 8D E3 05  STA ram_05E3_flag
C - - - - - 0x01E9B9 07:E9A9: A9 02     LDA #$02
C - - - - - 0x01E9BB 07:E9AB: 8D D9 04  STA ram_04D9_obj
C - - - - - 0x01E9BE 07:E9AE: 8D DA 04  STA ram_04D9_obj + $01
C - - - - - 0x01E9C1 07:E9B1: 8D DB 04  STA ram_04D9_obj + $02
C - - - - - 0x01E9C4 07:E9B4: 8D DC 04  STA ram_04D9_obj + $03
C - - - - - 0x01E9C7 07:E9B7: 60        RTS



sub_E9B8:
C - - - - - 0x01E9C8 07:E9B8: 20 00 EA  JSR sub_EA00
C - - - - - 0x01E9CB 07:E9BB: A9 00     LDA #con_000D_00
C - - - - - 0x01E9CD 07:E9BD: 85 0D     STA ram_000D_spr_pal_index
C - - - - - 0x01E9CF 07:E9BF: 20 56 DA  JSR sub_DA56_prepare_sprite_palette
C - - - - - 0x01E9D2 07:E9C2: A9 01     LDA #con_buffer_ready_palette
C - - - - - 0x01E9D4 07:E9C4: 05 02     ORA ram_buffers_flags
C - - - - - 0x01E9D6 07:E9C6: 85 02     STA ram_buffers_flags
C - - - - - 0x01E9D8 07:E9C8: 60        RTS



sub_E9C9:
C - - - - - 0x01E9D9 07:E9C9: A5 3C     LDA ram_city
C - - - - - 0x01E9DB 07:E9CB: C9 02     CMP #$02
C - - - - - 0x01E9DD 07:E9CD: D0 2D     BNE bra_E9FC_RTS
C - - - - - 0x01E9DF 07:E9CF: A9 00     LDA #$00
C - - - - - 0x01E9E1 07:E9D1: 8D C8 05  STA ram_05C8_t01_data_index
C - - - - - 0x01E9E4 07:E9D4: 8D C9 05  STA ram_05C9_t01_timer
C - - - - - 0x01E9E7 07:E9D7: 8D CA 05  STA ram_05CA_t02_flag
C - - - - - 0x01E9EA 07:E9DA: 8D CB 05  STA ram_05CB_t02_nametable
C - - - - - 0x01E9ED 07:E9DD: A5 D9     LDA ram_00D9_array_index
C - - - - - 0x01E9EF 07:E9DF: 29 0F     AND #$0F
C - - - - - 0x01E9F1 07:E9E1: AA        TAX
C - - - - - 0x01E9F2 07:E9E2: BD FD E9  LDA tbl_E9FD,X
C - - - - - 0x01E9F5 07:E9E5: 8D C7 05  STA ram_05C7_flags
C - - - - - 0x01E9F8 07:E9E8: 8D B1 05  STA ram_05B1_array
C - - - - - 0x01E9FB 07:E9EB: A9 17     LDA #con_sfx_open_door
C - - - - - 0x01E9FD 07:E9ED: 85 77     STA ram_0077_t03_sound_id
C - - - - - 0x01E9FF 07:E9EF: 20 04 CB  JSR sub_CB04_play_sound
C - - - - - 0x01EA02 07:E9F2: A9 02     LDA #$02
C - - - - - 0x01EA04 07:E9F4: 8D F4 03  STA ram_03F4
C - - - - - 0x01EA07 07:E9F7: A9 81     LDA #$81
C - - - - - 0x01EA09 07:E9F9: 8D F3 03  STA ram_03F3
bra_E9FC_RTS:
C - - - - - 0x01EA0C 07:E9FC: 60        RTS



tbl_E9FD:
;                                              +----------- 
;                                              |     +----- 
;                                              |     |
- - - - - - 0x01EA0D 07:E9FD: 00        .byte $00 + $00   ; 00 
- D 3 - - - 0x01EA0E 07:E9FE: 82        .byte $80 + $02   ; 01 
- - - - - - 0x01EA0F 07:E9FF: 84        .byte $80 + $04   ; 02 



sub_EA00:
; bzk optimize, same code as 0x01E9D9 except 0x01EA29 table
C - - - - - 0x01EA10 07:EA00: A5 3C     LDA ram_city
C - - - - - 0x01EA12 07:EA02: C9 02     CMP #$02
C - - - - - 0x01EA14 07:EA04: D0 2D     BNE bra_EA33_RTS
- - - - - - 0x01EA16 07:EA06: A9 00     LDA #$00
- - - - - - 0x01EA18 07:EA08: 8D C8 05  STA ram_05C8_t01_data_index
- - - - - - 0x01EA1B 07:EA0B: 8D C9 05  STA ram_05C9_t01_timer
- - - - - - 0x01EA1E 07:EA0E: 8D CA 05  STA ram_05CA_t02_flag
- - - - - - 0x01EA21 07:EA11: 8D CB 05  STA ram_05CB_t02_nametable
- - - - - - 0x01EA24 07:EA14: A5 D9     LDA ram_00D9_array_index
- - - - - - 0x01EA26 07:EA16: 29 0F     AND #$0F
- - - - - - 0x01EA28 07:EA18: AA        TAX
- - - - - - 0x01EA29 07:EA19: BD 34 EA  LDA tbl_EA34,X
- - - - - - 0x01EA2C 07:EA1C: 8D C7 05  STA ram_05C7_flags
- - - - - - 0x01EA2F 07:EA1F: 8D B1 05  STA ram_05B1_array
- - - - - - 0x01EA32 07:EA22: A9 17     LDA #con_sfx_open_door
- - - - - - 0x01EA34 07:EA24: 85 77     STA ram_0077_t03_sound_id
- - - - - - 0x01EA36 07:EA26: 20 04 CB  JSR sub_CB04_play_sound
- - - - - - 0x01EA39 07:EA29: A9 02     LDA #$02
- - - - - - 0x01EA3B 07:EA2B: 8D F4 03  STA ram_03F4
- - - - - - 0x01EA3E 07:EA2E: A9 81     LDA #$81
- - - - - - 0x01EA40 07:EA30: 8D F3 03  STA ram_03F3
bra_EA33_RTS:
C - - - - - 0x01EA43 07:EA33: 60        RTS



tbl_EA34:
;                                              +----------- 
;                                              |     +----- 
;                                              |     |
- - - - - - 0x01EA44 07:EA34: 00        .byte $00 + $00   ; 00 
- - - - - - 0x01EA45 07:EA35: 83        .byte $80 + $03   ; 01 
- - - - - - 0x01EA46 07:EA36: 85        .byte $80 + $05   ; 02 



sub_EA37:
C - - - - - 0x01EA47 07:EA37: A5 9C     LDA ram_prg_bank_8000
C - - - - - 0x01EA49 07:EA39: 48        PHA
C - - - - - 0x01EA4A 07:EA3A: A9 02     LDA #con_prg_bank + $02
C - - - - - 0x01EA4C 07:EA3C: 85 9C     STA ram_prg_bank_8000
C - - - - - 0x01EA4E 07:EA3E: 20 41 DB  JSR sub_DB41_prg_bankswitch_8000
C - - - - - 0x01EA51 07:EA41: A5 3C     LDA ram_city
C - - - - - 0x01EA53 07:EA43: 0A        ASL
C - - - - - 0x01EA54 07:EA44: 85 67     STA ram_0067_t10_city_x2
C - - - - - 0x01EA56 07:EA46: A5 D9     LDA ram_00D9_array_index
; bzk optimize, LDA + AND + STA + DEC
C - - - - - 0x01EA58 07:EA48: 29 0F     AND #$0F
C - - - - - 0x01EA5A 07:EA4A: 38        SEC
C - - - - - 0x01EA5B 07:EA4B: E9 01     SBC #$01
; A = 00 01 
C - - - - - 0x01EA5D 07:EA4D: 85 68     STA ram_0068_t52
C - - - - - 0x01EA5F 07:EA4F: 18        CLC
C - - - - - 0x01EA60 07:EA50: 65 67     ADC ram_0067_t10_city_x2
C - - - - - 0x01EA62 07:EA52: AA        TAX
C - - - - - 0x01EA63 07:EA53: BD 11 98  LDA tbl_0x005821_city_data,X
C - - - - - 0x01EA66 07:EA56: 30 39     BMI bra_EA91
C - - - - - 0x01EA68 07:EA58: 09 80     ORA #$80
C - - - - - 0x01EA6A 07:EA5A: 8D FC 03  STA ram_03FC
C - - - - - 0x01EA6D 07:EA5D: C9 81     CMP #$80 + $01
C - - - - - 0x01EA6F 07:EA5F: F0 07     BEQ bra_EA68
C - - - - - 0x01EA71 07:EA61: A9 00     LDA #con_03FD_00
C - - - - - 0x01EA73 07:EA63: 8D FD 03  STA ram_03FD_t02_handler_index
C - - - - - 0x01EA76 07:EA66: F0 0D     BEQ bra_EA75    ; jmp
bra_EA68:
C - - - - - 0x01EA78 07:EA68: A5 3C     LDA ram_city
C - - - - - 0x01EA7A 07:EA6A: 0A        ASL
C - - - - - 0x01EA7B 07:EA6B: 18        CLC
C - - - - - 0x01EA7C 07:EA6C: 65 68     ADC ram_0068_t52
C - - - - - 0x01EA7E 07:EA6E: AA        TAX
C - - - - - 0x01EA7F 07:EA6F: BD 5F 98  LDA tbl_0x00586F_city_data,X
C - - - - - 0x01EA82 07:EA72: 8D FD 03  STA ram_03FD_t01_table_index
bra_EA75:
C - - - - - 0x01EA85 07:EA75: A9 00     LDA #$00
C - - - - - 0x01EA87 07:EA77: 8D FE 03  STA ram_03FE_table_index
C - - - - - 0x01EA8A 07:EA7A: 8D FF 03  STA ram_03FF_t01
C - - - - - 0x01EA8D 07:EA7D: 8D E2 05  STA ram_05E2_counter
C - - - - - 0x01EA90 07:EA80: A5 3C     LDA ram_city
C - - - - - 0x01EA92 07:EA82: C9 03     CMP #$03
C - - - - - 0x01EA94 07:EA84: D0 0B     BNE bra_EA91
C - - - - - 0x01EA96 07:EA86: A5 14     LDA ram_frm_cnt
C - - - - - 0x01EA98 07:EA88: 29 03     AND #$03
C - - - - - 0x01EA9A 07:EA8A: AA        TAX
C - - - - - 0x01EA9B 07:EA8B: BD 98 EA  LDA tbl_EA98,X
C - - - - - 0x01EA9E 07:EA8E: 8D FD 03  STA ram_03FD_t01_table_index
bra_EA91:
C - - - - - 0x01EAA1 07:EA91: 68        PLA
C - - - - - 0x01EAA2 07:EA92: 85 9C     STA ram_prg_bank_8000
; bzk optimize, JMP
C - - - - - 0x01EAA4 07:EA94: 20 41 DB  JSR sub_DB41_prg_bankswitch_8000
C - - - - - 0x01EAA7 07:EA97: 60        RTS



tbl_EA98:
- D 3 - - - 0x01EAA8 07:EA98: 03        .byte $03   ; 00 
- D 3 - - - 0x01EAA9 07:EA99: 06        .byte $06   ; 01 
- D 3 - - - 0x01EAAA 07:EA9A: 02        .byte $02   ; 02 
- D 3 - - - 0x01EAAB 07:EA9B: 08        .byte $08   ; 03 



sub_EA9C:
C - - - - - 0x01EAAC 07:EA9C: A5 3C     LDA ram_city
C - - - - - 0x01EAAE 07:EA9E: C9 18     CMP #$18
C - - - - - 0x01EAB0 07:EAA0: 90 1B     BCC bra_EABD_RTS
C - - - - - 0x01EAB2 07:EAA2: C9 1C     CMP #$1C
C - - - - - 0x01EAB4 07:EAA4: B0 17     BCS bra_EABD_RTS
; if 18-1B
C - - - - - 0x01EAB6 07:EAA6: A9 80     LDA #$80
C - - - - - 0x01EAB8 07:EAA8: 85 DB     STA ram_00DB_flag
sub_EAAA:
C - - - - - 0x01EABA 07:EAAA: A5 9D     LDA ram_prg_bank_A000
C - - - - - 0x01EABC 07:EAAC: 48        PHA
C - - - - - 0x01EABD 07:EAAD: A9 0A     LDA #con_prg_bank + $0A
C - - - - - 0x01EABF 07:EAAF: 85 9D     STA ram_prg_bank_A000
C - - - - - 0x01EAC1 07:EAB1: 20 58 DB  JSR sub_DB58_prg_bankswitch_A000
C - - - - - 0x01EAC4 07:EAB4: 20 00 A0  JSR sub_0x014010
C - - - - - 0x01EAC7 07:EAB7: 68        PLA
C - - - - - 0x01EAC8 07:EAB8: 85 9D     STA ram_prg_bank_A000
; bzk optimize, JMP
C - - - - - 0x01EACA 07:EABA: 20 58 DB  JSR sub_DB58_prg_bankswitch_A000
bra_EABD_RTS:
C - - - - - 0x01EACD 07:EABD: 60        RTS



sub_EABE:
C - - - - - 0x01EACE 07:EABE: A6 D9     LDX ram_00D9_array_index
C - - - - - 0x01EAD0 07:EAC0: CA        DEX
C - - - - - 0x01EAD1 07:EAC1: BD F6 03  LDA ram_03F6_scroll_Y_hi,X
C - - - - - 0x01EAD4 07:EAC4: 85 3F     STA ram_scroll_Y_hi
C - - - - - 0x01EAD6 07:EAC6: 85 8B     STA ram_008B_scroll_Y_hi
C - - - - - 0x01EAD8 07:EAC8: 8D D2 05  STA ram_05D2_scroll_Y_hi
C - - - - - 0x01EADB 07:EACB: BD F8 03  LDA ram_03F8_scroll_X_hi,X
C - - - - - 0x01EADE 07:EACE: 85 42     STA ram_scroll_X_hi
C - - - - - 0x01EAE0 07:EAD0: 85 89     STA ram_0089_scroll_X_hi
C - - - - - 0x01EAE2 07:EAD2: 8D D0 05  STA ram_05D0_scroll_X_hi
C - - - - - 0x01EAE5 07:EAD5: A9 FF     LDA #$FF
C - - - - - 0x01EAE7 07:EAD7: 9D F6 03  STA ram_03F6_scroll_Y_hi,X
C - - - - - 0x01EAEA 07:EADA: 9D F8 03  STA ram_03F8_scroll_X_hi,X
C - - - - - 0x01EAED 07:EADD: A9 00     LDA #$00
C - - - - - 0x01EAEF 07:EADF: 85 43     STA ram_scroll_X_lo
C - - - - - 0x01EAF1 07:EAE1: 85 44     STA ram_scroll_X_fr
C - - - - - 0x01EAF3 07:EAE3: 85 40     STA ram_scroll_Y_lo
C - - - - - 0x01EAF5 07:EAE5: 85 41     STA ram_scroll_Y_fr
C - - - - - 0x01EAF7 07:EAE7: 85 8A     STA ram_008A_scroll_X_lo
C - - - - - 0x01EAF9 07:EAE9: 85 8C     STA ram_008C_scroll_Y_lo
C - - - - - 0x01EAFB 07:EAEB: 8D D3 05  STA ram_05D3_scroll_Y_lo
C - - - - - 0x01EAFE 07:EAEE: 8D D1 05  STA ram_05D1_scroll_X_lo
; bzk optimize, useless STAs
C - - - - - 0x01EB01 07:EAF1: 85 45     STA ram_0045_tFF_useless
C - - - - - 0x01EB03 07:EAF3: 85 46     STA ram_0046_tFE_useless
C - - - - - 0x01EB05 07:EAF5: 85 47     STA ram_0047_tFD_useless
C - - - - - 0x01EB07 07:EAF7: 85 48     STA ram_0048_tFF_useless
; 
C - - - - - 0x01EB09 07:EAF9: A5 4B     LDA ram_004B_script
C - - - - - 0x01EB0B 07:EAFB: C9 03     CMP #con_004B_03
C - - - - - 0x01EB0D 07:EAFD: F0 24     BEQ bra_EB23
C - - - - - 0x01EB0F 07:EAFF: C9 07     CMP #con_004B_07
C - - - - - 0x01EB11 07:EB01: F0 20     BEQ bra_EB23
C - - - - - 0x01EB13 07:EB03: C9 08     CMP #con_004B_08
C - - - - - 0x01EB15 07:EB05: F0 1C     BEQ bra_EB23
C - - - - - 0x01EB17 07:EB07: C9 04     CMP #con_004B_04
C - - - - - 0x01EB19 07:EB09: F0 08     BEQ bra_EB13
C - - - - - 0x01EB1B 07:EB0B: C9 05     CMP #con_004B_05
C - - - - - 0x01EB1D 07:EB0D: F0 04     BEQ bra_EB13
C - - - - - 0x01EB1F 07:EB0F: C9 06     CMP #con_004B_06
C - - - - - 0x01EB21 07:EB11: D0 14     BNE bra_EB27
bra_EB13:
C - - - - - 0x01EB23 07:EB13: A5 8A     LDA ram_008A_scroll_X_lo
C - - - - - 0x01EB25 07:EB15: 38        SEC
C - - - - - 0x01EB26 07:EB16: E9 10     SBC #< $0010
C - - - - - 0x01EB28 07:EB18: 85 8A     STA ram_008A_scroll_X_lo
C - - - - - 0x01EB2A 07:EB1A: A5 89     LDA ram_0089_scroll_X_hi
C - - - - - 0x01EB2C 07:EB1C: E9 00     SBC #> $0010
C - - - - - 0x01EB2E 07:EB1E: 85 89     STA ram_0089_scroll_X_hi
C - - - - - 0x01EB30 07:EB20: 4C 27 EB  JMP loc_EB27
bra_EB23:
C - - - - - 0x01EB33 07:EB23: A9 08     LDA #$08
C - - - - - 0x01EB35 07:EB25: 85 8A     STA ram_008A_scroll_X_lo
bra_EB27:
loc_EB27:
C D 3 - - - 0x01EB37 07:EB27: A9 00     LDA #con_004B_00
C - - - - - 0x01EB39 07:EB29: 85 4B     STA ram_004B_script
                                       ;LDA #$00
C - - - - - 0x01EB3B 07:EB2B: 85 92     STA ram_0092_scroll_Y_direction
C - - - - - 0x01EB3D 07:EB2D: 85 8D     STA ram_008D
C - - - - - 0x01EB3F 07:EB2F: 85 8E     STA ram_008E
C - - - - - 0x01EB41 07:EB31: 60        RTS



sub_EB32:
C - - - - - 0x01EB42 07:EB32: AD E8 06  LDA ram_06E8_exit_item
C - - - - - 0x01EB45 07:EB35: F0 0A     BEQ bra_EB41_RTS
; if have item
C - - - - - 0x01EB47 07:EB37: A9 FF     LDA #$FF
C - - - - - 0x01EB49 07:EB39: 8D 87 05  STA ram_0587_obj
C - - - - - 0x01EB4C 07:EB3C: A9 01     LDA #$01
C - - - - - 0x01EB4E 07:EB3E: 8D F2 03  STA ram_03F2_counter
bra_EB41_RTS:
C - - - - - 0x01EB51 07:EB41: 60        RTS



sub_EB42:
C - - - - - 0x01EB52 07:EB42: A5 3C     LDA ram_city
C - - - - - 0x01EB54 07:EB44: C9 18     CMP #$18
C - - - - - 0x01EB56 07:EB46: F0 01     BEQ bra_EB49
C - - - - - 0x01EB58 07:EB48: 60        RTS
bra_EB49:
C - - - - - 0x01EB59 07:EB49: AD F8 05  LDA ram_05F8_t01_save_scroll_Y_hi
C - - - - - 0x01EB5C 07:EB4C: 85 3F     STA ram_scroll_Y_hi
C - - - - - 0x01EB5E 07:EB4E: AD F9 05  LDA ram_05F9_t01_save_scroll_Y_lo
C - - - - - 0x01EB61 07:EB51: 85 40     STA ram_scroll_Y_lo
C - - - - - 0x01EB63 07:EB53: 20 E8 C4  JSR sub_C4E8
C - - - - - 0x01EB66 07:EB56: A5 3A     LDA ram_for_2000
C - - - - - 0x01EB68 07:EB58: 0D FA 05  ORA ram_05FA_nametable
C - - - - - 0x01EB6B 07:EB5B: 85 3A     STA ram_for_2000
C - - - - - 0x01EB6D 07:EB5D: 60        RTS



loc_EB5E_main_game_script:
C D 3 - - - 0x01EB6E 07:EB5E: 20 82 E0  JSR sub_E082_wait_1_frm
C - - - - - 0x01EB71 07:EB61: AD D4 03  LDA ram_script
C - - - - - 0x01EB74 07:EB64: 0A        ASL
C - - - - - 0x01EB75 07:EB65: AA        TAX
C - - - - - 0x01EB76 07:EB66: BD 7C EB  LDA tbl_EB7C_main_game_scripts,X
C - - - - - 0x01EB79 07:EB69: 85 5B     STA ram_005B_t45_jmp
C - - - - - 0x01EB7B 07:EB6B: BD 7D EB  LDA tbl_EB7C_main_game_scripts + $01,X
C - - - - - 0x01EB7E 07:EB6E: 85 5C     STA ram_005B_t45_jmp + $01
C - - - - - 0x01EB80 07:EB70: A9 EB     LDA #> (ofs_EB79_return_to_main_game_script - $01)
C - - - - - 0x01EB82 07:EB72: 48        PHA
C - - - - - 0x01EB83 07:EB73: A9 78     LDA #< (ofs_EB79_return_to_main_game_script - $01)
C - - - - - 0x01EB85 07:EB75: 48        PHA
C - - - - - 0x01EB86 07:EB76: 6C 5B 00  JMP (ram_005B_t45_jmp)



ofs_EB79_return_to_main_game_script:
; bzk optimize
C - - - - - 0x01EB89 07:EB79: 4C 5E EB  JMP loc_EB5E_main_game_script



tbl_EB7C_main_game_scripts:
; see con_script
- D 3 - - - 0x01EB8C 07:EB7C: 8D EB     .word ofs_main_game_script_EB8D_00
- D 3 - - - 0x01EB8E 07:EB7E: C1 EB     .word ofs_main_game_script_EBC1_01
- D 3 - - - 0x01EB90 07:EB80: 00 EC     .word ofs_main_game_script_EC00_02_demo
- D 3 - - - 0x01EB92 07:EB82: 8B ED     .word ofs_main_game_script_ED8B_03
- D 3 - - - 0x01EB94 07:EB84: 22 EC     .word ofs_main_game_script_EC22_04_battle_mode
- D 3 - - - 0x01EB96 07:EB86: 12 EC     .word ofs_main_game_script_EC12_05
- D 3 - - - 0x01EB98 07:EB88: 51 ED     .word ofs_main_game_script_ED51_06
- - - - - - 0x01EB9A 07:EB8A: 8C EB     .word ofs_main_game_script_EB8C_07_RTS



ofs_main_game_script_EB8C_07_RTS:
- - - - - - 0x01EB9C 07:EB8C: 60        RTS



ofs_main_game_script_EB8D_00:
; con_script_00
C - - J - - 0x01EB9D 07:EB8D: A9 00     LDA #$00
C - - - - - 0x01EB9F 07:EB8F: 8D FB 05  STA ram_cheat_type
C - - - - - 0x01EBA2 07:EB92: 85 E1     STA ram_cheat_invinc_flag
C - - - - - 0x01EBA4 07:EB94: A9 01     LDA #con_sfx_disable_se_1
C - - - - - 0x01EBA6 07:EB96: 85 77     STA ram_0077_t03_sound_id
C - - - - - 0x01EBA8 07:EB98: 20 04 CB  JSR sub_CB04_play_sound
C - - - - - 0x01EBAB 07:EB9B: 20 6B E4  JSR sub_E46B_clear_scrolls_and_nametable
C - - - - - 0x01EBAE 07:EB9E: 20 29 E9  JSR sub_E929_clear_some_addresses
C - - - - - 0x01EBB1 07:EBA1: A9 02     LDA #con_irq_data_02
C - - - - - 0x01EBB3 07:EBA3: 85 2D     STA ram_irq_data_index
C - - - - - 0x01EBB5 07:EBA5: 20 77 D7  JSR sub_D777_prepare_irq_config
C - - - - - 0x01EBB8 07:EBA8: A9 0C     LDA #con_prg_bank + $0C
C - - - - - 0x01EBBA 07:EBAA: 85 9D     STA ram_prg_bank_A000
C - - - - - 0x01EBBC 07:EBAC: 20 58 DB  JSR sub_DB58_prg_bankswitch_A000
C - - - - - 0x01EBBF 07:EBAF: 20 1B A0  JSR sub_0x01802B
C - - - - - 0x01EBC2 07:EBB2: A9 00     LDA #con_irq_data_00
C - - - - - 0x01EBC4 07:EBB4: 85 2D     STA ram_irq_data_index
C - - - - - 0x01EBC6 07:EBB6: 20 77 D7  JSR sub_D777_prepare_irq_config
C - - - - - 0x01EBC9 07:EBB9: A9 02     LDA #con_sfx_disable_se_2
C - - - - - 0x01EBCB 07:EBBB: 85 77     STA ram_0077_t03_sound_id
; bzk optimize, JMP
C - - - - - 0x01EBCD 07:EBBD: 20 04 CB  JSR sub_CB04_play_sound
C - - - - - 0x01EBD0 07:EBC0: 60        RTS



ofs_main_game_script_EBC1_01:
; con_script_title_screen
C - - J - - 0x01EBD1 07:EBC1: 20 29 E9  JSR sub_E929_clear_some_addresses
C - - - - - 0x01EBD4 07:EBC4: A9 03     LDA #con_irq_data_03
C - - - - - 0x01EBD6 07:EBC6: 85 2D     STA ram_irq_data_index
C - - - - - 0x01EBD8 07:EBC8: 20 77 D7  JSR sub_D777_prepare_irq_config
C - - - - - 0x01EBDB 07:EBCB: A9 0C     LDA #con_prg_bank + $0C
C - - - - - 0x01EBDD 07:EBCD: 85 9D     STA ram_prg_bank_A000
C - - - - - 0x01EBDF 07:EBCF: 20 58 DB  JSR sub_DB58_prg_bankswitch_A000
C - - - - - 0x01EBE2 07:EBD2: 20 18 A0  JSR sub_0x018028
C - - - - - 0x01EBE5 07:EBD5: A5 DC     LDA ram_00DC_flag
C - - - - - 0x01EBE7 07:EBD7: 10 0A     BPL bra_EBE3
C - - - - - 0x01EBE9 07:EBD9: A9 04     LDA #con_irq_data_04
C - - - - - 0x01EBEB 07:EBDB: 85 2D     STA ram_irq_data_index
C - - - - - 0x01EBED 07:EBDD: 20 77 D7  JSR sub_D777_prepare_irq_config
C - - - - - 0x01EBF0 07:EBE0: 20 39 A0  JSR sub_0x018049
bra_EBE3:
C - - - - - 0x01EBF3 07:EBE3: A9 00     LDA #con_irq_data_00
C - - - - - 0x01EBF5 07:EBE5: 85 2D     STA ram_irq_data_index
C - - - - - 0x01EBF7 07:EBE7: 20 77 D7  JSR sub_D777_prepare_irq_config
C - - - - - 0x01EBFA 07:EBEA: 20 20 E8  JSR sub_E820_set_default_values
C - - - - - 0x01EBFD 07:EBED: A9 80     LDA #con_05DC_has_player_index
C - - - - - 0x01EBFF 07:EBEF: 8D DC 05  STA ram_05DC_flags
C - - - - - 0x01EC02 07:EBF2: A9 01     LDA #$01
C - - - - - 0x01EC04 07:EBF4: 8D D8 05  STA ram_05D8_plr
C - - - - - 0x01EC07 07:EBF7: A9 00     LDA #$00
C - - - - - 0x01EC09 07:EBF9: 8D D6 05  STA ram_05D6_plr
C - - - - - 0x01EC0C 07:EBFC: 8D DA 05  STA ram_05DA_plr
C - - - - - 0x01EC0F 07:EBFF: 60        RTS



ofs_main_game_script_EC00_02_demo:
; con_script_demo
C - - J - - 0x01EC10 07:EC00: 20 FF FE  JSR sub_FEFF_prepare_demo_buttons_data
C - - - - - 0x01EC13 07:EC03: 20 AD E0  JSR sub_E0AD_enable_rendering
C - - - - - 0x01EC16 07:EC06: 20 80 E4  JSR sub_E480
C - - - - - 0x01EC19 07:EC09: 20 54 DE  JSR sub_DE54
C - - - - - 0x01EC1C 07:EC0C: A9 00     LDA #con_script_00
C - - - - - 0x01EC1E 07:EC0E: 8D D4 03  STA ram_script
C - - - - - 0x01EC21 07:EC11: 60        RTS



ofs_main_game_script_EC12_05:
; con_script_05
C - - J - - 0x01EC22 07:EC12: A9 0C     LDA #con_prg_bank + $0C
C - - - - - 0x01EC24 07:EC14: 85 9D     STA ram_prg_bank_A000
C - - - - - 0x01EC26 07:EC16: 20 58 DB  JSR sub_DB58_prg_bankswitch_A000
C - - - - - 0x01EC29 07:EC19: 20 3C A0  JSR sub_0x01804C
C - - - - - 0x01EC2C 07:EC1C: A9 00     LDA #con_script_00
C - - - - - 0x01EC2E 07:EC1E: 8D D4 03  STA ram_script
C - - - - - 0x01EC31 07:EC21: 60        RTS



ofs_main_game_script_EC22_04_battle_mode:
; con_script_battle_mode
C - - J - - 0x01EC32 07:EC22: A5 9D     LDA ram_prg_bank_A000
C - - - - - 0x01EC34 07:EC24: 48        PHA
C - - - - - 0x01EC35 07:EC25: A9 0C     LDA #con_prg_bank + $0C
C - - - - - 0x01EC37 07:EC27: 85 9D     STA ram_prg_bank_A000
C - - - - - 0x01EC39 07:EC29: 20 58 DB  JSR sub_DB58_prg_bankswitch_A000
C - - - - - 0x01EC3C 07:EC2C: 20 2D A0  JSR sub_0x01803D
C - - - - - 0x01EC3F 07:EC2F: 68        PLA
C - - - - - 0x01EC40 07:EC30: 85 9D     STA ram_prg_bank_A000
C - - - - - 0x01EC42 07:EC32: 20 58 DB  JSR sub_DB58_prg_bankswitch_A000
; bzk optimize, JMP
C - - - - - 0x01EC45 07:EC35: 20 8E DB  JSR sub_DB8E
C - - - - - 0x01EC48 07:EC38: 60        RTS



sub_EC39:
loc_EC39:
C - - - - - 0x01EC49 07:EC39: A5 3F     LDA ram_scroll_Y_hi
C - - - - - 0x01EC4B 07:EC3B: 85 D3     STA ram_00D3_t01_scroll_Y_hi
C - - - - - 0x01EC4D 07:EC3D: A5 40     LDA ram_scroll_Y_lo
C - - - - - 0x01EC4F 07:EC3F: 85 D4     STA ram_00D4_t02_scroll_Y_lo
C - - - - - 0x01EC51 07:EC41: A5 42     LDA ram_scroll_X_hi
C - - - - - 0x01EC53 07:EC43: 85 D5     STA ram_00D5_t02_scroll_X_hi
C - - - - - 0x01EC55 07:EC45: A5 43     LDA ram_scroll_X_lo
C - - - - - 0x01EC57 07:EC47: 85 D6     STA ram_00D6_t02_scroll_X_lo
C - - - - - 0x01EC59 07:EC49: A5 4B     LDA ram_004B_script
C - - - - - 0x01EC5B 07:EC4B: 0A        ASL
C - - - - - 0x01EC5C 07:EC4C: AA        TAX
C - - - - - 0x01EC5D 07:EC4D: BD 9A EC  LDA tbl_EC9A,X
C - - - - - 0x01EC60 07:EC50: 85 5B     STA ram_005B_t44_jmp
C - - - - - 0x01EC62 07:EC52: BD 9B EC  LDA tbl_EC9A + $01,X
C - - - - - 0x01EC65 07:EC55: 85 5C     STA ram_005B_t44_jmp + $01
C - - - - - 0x01EC67 07:EC57: A9 EC     LDA #> (ofs_EC60_return - $01)
C - - - - - 0x01EC69 07:EC59: 48        PHA
C - - - - - 0x01EC6A 07:EC5A: A9 5F     LDA #< (ofs_EC60_return - $01)
C - - - - - 0x01EC6C 07:EC5C: 48        PHA
C - - - - - 0x01EC6D 07:EC5D: 6C 5B 00  JMP (ram_005B_t44_jmp)



ofs_EC60_return:
C - - - - - 0x01EC70 07:EC60: A5 3F     LDA ram_scroll_Y_hi
C - - - - - 0x01EC72 07:EC62: 29 01     AND #$01
C - - - - - 0x01EC74 07:EC64: 0A        ASL
C - - - - - 0x01EC75 07:EC65: 85 67     STA ram_0067_t70_nametable
C - - - - - 0x01EC77 07:EC67: A5 42     LDA ram_scroll_X_hi
C - - - - - 0x01EC79 07:EC69: 29 01     AND #$01
C - - - - - 0x01EC7B 07:EC6B: 05 67     ORA ram_0067_t70_nametable
C - - - - - 0x01EC7D 07:EC6D: 85 67     STA ram_0067_t6F_nametable
C - - - - - 0x01EC7F 07:EC6F: A5 3A     LDA ram_for_2000
C - - - - - 0x01EC81 07:EC71: 29 FC     AND #$FC
C - - - - - 0x01EC83 07:EC73: 05 67     ORA ram_0067_t6F_nametable
C - - - - - 0x01EC85 07:EC75: 85 3A     STA ram_for_2000
C - - - - - 0x01EC87 07:EC77: A5 D4     LDA ram_00D4_t02_scroll_Y_lo
C - - - - - 0x01EC89 07:EC79: 38        SEC
C - - - - - 0x01EC8A 07:EC7A: E5 40     SBC ram_scroll_Y_lo
C - - - - - 0x01EC8C 07:EC7C: 10 04     BPL bra_EC82
C - - - - - 0x01EC8E 07:EC7E: 09 F0     ORA #$F0
C - - - - - 0x01EC90 07:EC80: D0 02     BNE bra_EC84    ; jmp
bra_EC82:
C - - - - - 0x01EC92 07:EC82: 29 0F     AND #$0F
bra_EC84:
C - - - - - 0x01EC94 07:EC84: 85 D4     STA ram_00D4_t01_spd_Y_lo
C - - - - - 0x01EC96 07:EC86: A5 D3     LDA ram_00D3_t01_scroll_Y_hi
C - - - - - 0x01EC98 07:EC88: E5 3F     SBC ram_scroll_Y_hi
C - - - - - 0x01EC9A 07:EC8A: 85 D3     STA ram_00D3_t02_spd_Y_hi
C - - - - - 0x01EC9C 07:EC8C: A5 D6     LDA ram_00D6_t02_scroll_X_lo
C - - - - - 0x01EC9E 07:EC8E: 38        SEC
C - - - - - 0x01EC9F 07:EC8F: E5 43     SBC ram_scroll_X_lo
C - - - - - 0x01ECA1 07:EC91: 85 D6     STA ram_00D6_t01_spd_X_lo
C - - - - - 0x01ECA3 07:EC93: A5 D5     LDA ram_00D5_t02_scroll_X_hi
C - - - - - 0x01ECA5 07:EC95: E5 42     SBC ram_scroll_X_hi
C - - - - - 0x01ECA7 07:EC97: 85 D5     STA ram_00D5_t01_spd_X_hi
ofs_006_EC99_00_RTS:
; con_004B_00
C - - J - - 0x01ECA9 07:EC99: 60        RTS



tbl_EC9A:
- D 3 - - - 0x01ECAA 07:EC9A: 99 EC     .word ofs_006_EC99_00_RTS
- D 3 - - - 0x01ECAC 07:EC9C: AC EC     .word ofs_006_ECAC_01
- D 3 - - - 0x01ECAE 07:EC9E: D0 EC     .word ofs_006_ECD0_02
- D 3 - - - 0x01ECB0 07:ECA0: 0A ED     .word ofs_006_ED0A_03
- D 3 - - - 0x01ECB2 07:ECA2: F0 EC     .word ofs_006_ECF0_04
- D 3 - - - 0x01ECB4 07:ECA4: 3A ED     .word ofs_006_ED3A_05
- D 3 - - - 0x01ECB6 07:ECA6: 40 ED     .word ofs_006_ED40_06
- D 3 - - - 0x01ECB8 07:ECA8: 34 ED     .word ofs_006_ED34_07
- D 3 - - - 0x01ECBA 07:ECAA: 2E ED     .word ofs_006_ED2E_08



loc_ECAC:
ofs_006_ECAC_01:
; con_004B_01
C D 3 J - - 0x01ECBC 07:ECAC: A5 96     LDA ram_0096_t04
C - - - - - 0x01ECBE 07:ECAE: 29 08     AND #$08
C - - - - - 0x01ECC0 07:ECB0: D0 1D     BNE bra_ECCF_RTS
C - - - - - 0x01ECC2 07:ECB2: A5 46     LDA ram_0046_t01_scroll_Y_fr
C - - - - - 0x01ECC4 07:ECB4: 18        CLC
C - - - - - 0x01ECC5 07:ECB5: 65 41     ADC ram_scroll_Y_fr
C - - - - - 0x01ECC7 07:ECB7: 85 41     STA ram_scroll_Y_fr
C - - - - - 0x01ECC9 07:ECB9: A5 45     LDA ram_0045_t02_scroll_Y_lo
C - - - - - 0x01ECCB 07:ECBB: 65 40     ADC ram_scroll_Y_lo
C - - - - - 0x01ECCD 07:ECBD: C9 F0     CMP #$F0
C - - - - - 0x01ECCF 07:ECBF: 90 05     BCC bra_ECC6
C - - - - - 0x01ECD1 07:ECC1: A9 EF     LDA #$EF
C - - - - - 0x01ECD3 07:ECC3: 18        CLC
C - - - - - 0x01ECD4 07:ECC4: 90 01     BCC bra_ECC7    ; jmp
bra_ECC6:
C - - - - - 0x01ECD6 07:ECC6: 38        SEC
bra_ECC7:
C - - - - - 0x01ECD7 07:ECC7: 85 40     STA ram_scroll_Y_lo
C - - - - - 0x01ECD9 07:ECC9: A5 3F     LDA ram_scroll_Y_hi
C - - - - - 0x01ECDB 07:ECCB: 69 FF     ADC #$FF
C - - - - - 0x01ECDD 07:ECCD: 85 3F     STA ram_scroll_Y_hi
bra_ECCF_RTS:
C - - - - - 0x01ECDF 07:ECCF: 60        RTS



loc_ECD0:
ofs_006_ECD0_02:
; con_004B_02
C D 3 - - - 0x01ECE0 07:ECD0: A5 96     LDA ram_0096_t04
C - - - - - 0x01ECE2 07:ECD2: 29 04     AND #$04
C - - - - - 0x01ECE4 07:ECD4: D0 19     BNE bra_ECEF_RTS
C - - - - - 0x01ECE6 07:ECD6: A5 46     LDA ram_0046_t02_scroll_Y_fr
C - - - - - 0x01ECE8 07:ECD8: 18        CLC
C - - - - - 0x01ECE9 07:ECD9: 65 41     ADC ram_scroll_Y_fr
C - - - - - 0x01ECEB 07:ECDB: 85 41     STA ram_scroll_Y_fr
C - - - - - 0x01ECED 07:ECDD: A5 45     LDA ram_0045_t01_scroll_Y_lo
C - - - - - 0x01ECEF 07:ECDF: 65 40     ADC ram_scroll_Y_lo
C - - - - - 0x01ECF1 07:ECE1: C9 F0     CMP #$F0
C - - - - - 0x01ECF3 07:ECE3: 90 02     BCC bra_ECE7
C - - - - - 0x01ECF5 07:ECE5: A9 00     LDA #$00
bra_ECE7:
C - - - - - 0x01ECF7 07:ECE7: 85 40     STA ram_scroll_Y_lo
C - - - - - 0x01ECF9 07:ECE9: A5 3F     LDA ram_scroll_Y_hi
C - - - - - 0x01ECFB 07:ECEB: 69 00     ADC #$00
C - - - - - 0x01ECFD 07:ECED: 85 3F     STA ram_scroll_Y_hi
bra_ECEF_RTS:
C - - - - - 0x01ECFF 07:ECEF: 60        RTS



sub_ECF0:
ofs_006_ECF0_04:
; con_004B_04
C - - J - - 0x01ED00 07:ECF0: A5 96     LDA ram_0096_t04
C - - - - - 0x01ED02 07:ECF2: 29 01     AND #$01
C - - - - - 0x01ED04 07:ECF4: D0 13     BNE bra_ED09_RTS
C - - - - - 0x01ED06 07:ECF6: A5 48     LDA ram_0048_t02_scroll_X_fr
C - - - - - 0x01ED08 07:ECF8: 18        CLC
C - - - - - 0x01ED09 07:ECF9: 65 44     ADC ram_scroll_X_fr
C - - - - - 0x01ED0B 07:ECFB: 85 44     STA ram_scroll_X_fr
C - - - - - 0x01ED0D 07:ECFD: A5 47     LDA ram_0047_t01_scroll_X_lo
C - - - - - 0x01ED0F 07:ECFF: 65 43     ADC ram_scroll_X_lo
C - - - - - 0x01ED11 07:ED01: 85 43     STA ram_scroll_X_lo
C - - - - - 0x01ED13 07:ED03: A5 42     LDA ram_scroll_X_hi
C - - - - - 0x01ED15 07:ED05: 69 00     ADC #$00
C - - - - - 0x01ED17 07:ED07: 85 42     STA ram_scroll_X_hi
bra_ED09_RTS:
C - - - - - 0x01ED19 07:ED09: 60        RTS



sub_ED0A:
ofs_006_ED0A_03:
; con_004B_03
C - - J - - 0x01ED1A 07:ED0A: A5 96     LDA ram_0096_t04
C - - - - - 0x01ED1C 07:ED0C: 29 02     AND #$02
C - - - - - 0x01ED1E 07:ED0E: D0 1D     BNE bra_ED2D_RTS
C - - - - - 0x01ED20 07:ED10: A5 48     LDA ram_0048_t01_scroll_X_fr
C - - - - - 0x01ED22 07:ED12: 18        CLC
C - - - - - 0x01ED23 07:ED13: 65 44     ADC ram_scroll_X_fr
C - - - - - 0x01ED25 07:ED15: 85 44     STA ram_scroll_X_fr
C - - - - - 0x01ED27 07:ED17: A5 47     LDA ram_0047_t02_scroll_X_lo
C - - - - - 0x01ED29 07:ED19: 65 43     ADC ram_scroll_X_lo
C - - - - - 0x01ED2B 07:ED1B: 85 43     STA ram_scroll_X_lo
C - - - - - 0x01ED2D 07:ED1D: A5 42     LDA ram_scroll_X_hi
C - - - - - 0x01ED2F 07:ED1F: 69 FF     ADC #$FF
C - - - - - 0x01ED31 07:ED21: 85 42     STA ram_scroll_X_hi
C - - - - - 0x01ED33 07:ED23: 10 08     BPL bra_ED2D_RTS
C - - - - - 0x01ED35 07:ED25: A9 00     LDA #$00
C - - - - - 0x01ED37 07:ED27: 85 42     STA ram_scroll_X_hi
C - - - - - 0x01ED39 07:ED29: 85 43     STA ram_scroll_X_lo
C - - - - - 0x01ED3B 07:ED2B: 85 44     STA ram_scroll_X_fr
bra_ED2D_RTS:
C - - - - - 0x01ED3D 07:ED2D: 60        RTS



ofs_006_ED2E_08:
; con_004B_08
C - - J - - 0x01ED3E 07:ED2E: 20 0A ED  JSR sub_ED0A
C - - - - - 0x01ED41 07:ED31: 4C AC EC  JMP loc_ECAC



ofs_006_ED34_07:
; con_004B_07
C - - J - - 0x01ED44 07:ED34: 20 0A ED  JSR sub_ED0A
C - - - - - 0x01ED47 07:ED37: 4C D0 EC  JMP loc_ECD0



ofs_006_ED3A_05:
; con_004B_05
C - - J - - 0x01ED4A 07:ED3A: 20 F0 EC  JSR sub_ECF0
C - - - - - 0x01ED4D 07:ED3D: 4C AC EC  JMP loc_ECAC



ofs_006_ED40_06:
; con_004B_06
C - - J - - 0x01ED50 07:ED40: 20 F0 EC  JSR sub_ECF0
C - - - - - 0x01ED53 07:ED43: 4C D0 EC  JMP loc_ECD0



sub_ED46_print_cutscene_text:
C - - - - - 0x01ED56 07:ED46: A9 0C     LDA #con_prg_bank + $0C
C - - - - - 0x01ED58 07:ED48: 85 9D     STA ram_prg_bank_A000
C - - - - - 0x01ED5A 07:ED4A: 20 58 DB  JSR sub_DB58_prg_bankswitch_A000
; bzk optimize, JMP
C - - - - - 0x01ED5D 07:ED4D: 20 1E A0  JSR sub_0x01802E_print_cutscene_text
C - - - - - 0x01ED60 07:ED50: 60        RTS



ofs_main_game_script_ED51_06:
; con_script_06
C - - J - - 0x01ED61 07:ED51: 20 29 E9  JSR sub_E929_clear_some_addresses
C - - - - - 0x01ED64 07:ED54: A9 04     LDA #con_irq_data_04
C - - - - - 0x01ED66 07:ED56: 85 2D     STA ram_irq_data_index
C - - - - - 0x01ED68 07:ED58: 20 77 D7  JSR sub_D777_prepare_irq_config
C - - - - - 0x01ED6B 07:ED5B: 20 6B E4  JSR sub_E46B_clear_scrolls_and_nametable
C - - - - - 0x01ED6E 07:ED5E: A5 9D     LDA ram_prg_bank_A000
C - - - - - 0x01ED70 07:ED60: 48        PHA
C - - - - - 0x01ED71 07:ED61: A9 0C     LDA #con_prg_bank + $0C
C - - - - - 0x01ED73 07:ED63: 85 9D     STA ram_prg_bank_A000
C - - - - - 0x01ED75 07:ED65: 20 58 DB  JSR sub_DB58_prg_bankswitch_A000
C - - - - - 0x01ED78 07:ED68: 20 36 A0  JSR sub_0x018046
C - - - - - 0x01ED7B 07:ED6B: 68        PLA
C - - - - - 0x01ED7C 07:ED6C: 85 9D     STA ram_prg_bank_A000
C - - - - - 0x01ED7E 07:ED6E: 20 58 DB  JSR sub_DB58_prg_bankswitch_A000
C - - - - - 0x01ED81 07:ED71: A9 00     LDA #con_irq_data_00
C - - - - - 0x01ED83 07:ED73: 85 2D     STA ram_irq_data_index
C - - - - - 0x01ED85 07:ED75: 20 77 D7  JSR sub_D777_prepare_irq_config
C - - - - - 0x01ED88 07:ED78: A5 3C     LDA ram_city
C - - - - - 0x01ED8A 07:ED7A: C9 19     CMP #$19
C - - - - - 0x01ED8C 07:ED7C: D0 0C     BNE bra_ED8A_RTS
C - - - - - 0x01ED8E 07:ED7E: AD E1 05  LDA ram_05E1_flags
C - - - - - 0x01ED91 07:ED81: 29 20     AND #con_05E1_20
C - - - - - 0x01ED93 07:ED83: F0 05     BEQ bra_ED8A_RTS
C - - - - - 0x01ED95 07:ED85: A9 05     LDA #con_script_05
C - - - - - 0x01ED97 07:ED87: 8D D4 03  STA ram_script
bra_ED8A_RTS:
C - - - - - 0x01ED9A 07:ED8A: 60        RTS



ofs_main_game_script_ED8B_03:
; con_script_gameplay
C - - J - - 0x01ED9B 07:ED8B: AD D5 03  LDA ram_03D5_script
C - - - - - 0x01ED9E 07:ED8E: 0A        ASL
C - - - - - 0x01ED9F 07:ED8F: AA        TAX
C - - - - - 0x01EDA0 07:ED90: BD 9D ED  LDA tbl_ED9D_main_game_script,X
C - - - - - 0x01EDA3 07:ED93: 85 5B     STA ram_005B_t43_jmp
C - - - - - 0x01EDA5 07:ED95: BD 9E ED  LDA tbl_ED9D_main_game_script + $01,X
C - - - - - 0x01EDA8 07:ED98: 85 5C     STA ram_005B_t43_jmp + $01
C - - - - - 0x01EDAA 07:ED9A: 6C 5B 00  JMP (ram_005B_t43_jmp)



tbl_ED9D_main_game_script:
; see con_03D5
- D 3 - - - 0x01EDAD 07:ED9D: 0F E4     .word ofs_005_main_game_script_E40F_00
- D 3 - - - 0x01EDAF 07:ED9F: A7 ED     .word ofs_005_main_game_script_EDA7_01_gameplay
- D 3 - - - 0x01EDB1 07:EDA1: 33 EE     .word ofs_005_main_game_script_EE33_02_pause_menu
- D 3 - - - 0x01EDB3 07:EDA3: 60 EF     .word ofs_005_main_game_script_EF60_03_map
- D 3 - - - 0x01EDB5 07:EDA5: 5D D7     .word ofs_005_main_game_script_D75D_04



ofs_005_main_game_script_EDA7_01_gameplay:
; con_03D5_gameplay
bra_EDA7_loop:
C - - J - - 0x01EDB7 07:EDA7: 20 82 E0  JSR sub_E082_wait_1_frm
C - - - - - 0x01EDBA 07:EDAA: 20 BE F2  JSR sub_F2BE_try_to_pause
C - - - - - 0x01EDBD 07:EDAD: A5 E9     LDA ram_pause_flag
C - - - - - 0x01EDBF 07:EDAF: 30 3E     BMI bra_EDEF_paused
; if not paused
C - - - - - 0x01EDC1 07:EDB1: A5 DA     LDA ram_00DA_flags
C - - - - - 0x01EDC3 07:EDB3: 10 03     BPL bra_EDB8
; if con_00DA_80
C - - - - - 0x01EDC5 07:EDB5: 4C 11 EE  JMP loc_EE11
bra_EDB8:
C - - - - - 0x01EDC8 07:EDB8: 20 6A F3  JSR sub_F36A_RTS
C - - - - - 0x01EDCB 07:EDBB: 20 BF EF  JSR sub_EFBF_player_handler
C - - - - - 0x01EDCE 07:EDBE: A5 DB     LDA ram_00DB_flag
C - - - - - 0x01EDD0 07:EDC0: 30 09     BMI bra_EDCB
C - - - - - 0x01EDD2 07:EDC2: 20 30 CB  JSR sub_CB30
C - - - - - 0x01EDD5 07:EDC5: 20 AA F0  JSR sub_F0AA
C - - - - - 0x01EDD8 07:EDC8: 4C D4 ED  JMP loc_EDD4
bra_EDCB:
C - - - - - 0x01EDDB 07:EDCB: 20 C1 F0  JSR sub_F0C1
C - - - - - 0x01EDDE 07:EDCE: 20 85 F2  JSR sub_F285
C - - - - - 0x01EDE1 07:EDD1: 20 49 F3  JSR sub_F349
loc_EDD4:
C D 3 - - - 0x01EDE4 07:EDD4: 20 D5 F0  JSR sub_F0D5
C - - - - - 0x01EDE7 07:EDD7: 20 32 F1  JSR sub_F132
C - - - - - 0x01EDEA 07:EDDA: 20 39 EC  JSR sub_EC39
C - - - - - 0x01EDED 07:EDDD: 20 EB EF  JSR sub_EFEB
C - - - - - 0x01EDF0 07:EDE0: 20 7F D4  JSR sub_D47F
C - - - - - 0x01EDF3 07:EDE3: 20 6B F3  JSR sub_F36B_scroll_handler
C - - - - - 0x01EDF6 07:EDE6: 20 E9 F0  JSR sub_F0E9
C - - - - - 0x01EDF9 07:EDE9: 20 83 D3  JSR sub_D383
C - - - - - 0x01EDFC 07:EDEC: 20 B0 D3  JSR sub_D3B0
bra_EDEF_paused:
C - - - - - 0x01EDFF 07:EDEF: 20 02 C5  JSR sub_C502
C - - - - - 0x01EE02 07:EDF2: 20 DB FA  JSR sub_FADB
C - - - - - 0x01EE05 07:EDF5: A5 E9     LDA ram_pause_flag
C - - - - - 0x01EE07 07:EDF7: 30 AE     BMI bra_EDA7_loop
; if not paused
C - - - - - 0x01EE09 07:EDF9: 20 3E FF  JSR sub_FF3E
C - - - - - 0x01EE0C 07:EDFC: B0 0C     BCS bra_EE0A
C - - - - - 0x01EE0E 07:EDFE: 20 E2 F1  JSR sub_F1E2
C - - - - - 0x01EE11 07:EE01: A5 68     LDA ram_0068_t41_flag
C - - - - - 0x01EE13 07:EE03: D0 05     BNE bra_EE0A
C - - - - - 0x01EE15 07:EE05: 20 02 F2  JSR sub_F202
C - - - - - 0x01EE18 07:EE08: 90 9D     BCC bra_EDA7_loop
bra_EE0A:
C - - - - - 0x01EE1A 07:EE0A: 20 FD DA  JSR sub_DAFD_prepare_palette_and_decrease_brightness
; bzk optimize, JMP
C - - - - - 0x01EE1D 07:EE0D: 20 1F F3  JSR sub_F31F
C - - - - - 0x01EE20 07:EE10: 60        RTS



loc_EE11:
bra_EE11_loop:
C D 3 - - - 0x01EE21 07:EE11: 20 9C D3  JSR sub_D39C
C - - - - - 0x01EE24 07:EE14: 20 82 E0  JSR sub_E082_wait_1_frm
C - - - - - 0x01EE27 07:EE17: A5 DA     LDA ram_00DA_flags
C - - - - - 0x01EE29 07:EE19: 29 10     AND #con_00DA_10
C - - - - - 0x01EE2B 07:EE1B: F0 F4     BEQ bra_EE11_loop
C - - - - - 0x01EE2D 07:EE1D: A9 00     LDA #con_03D5_00
C - - - - - 0x01EE2F 07:EE1F: 8D D5 03  STA ram_03D5_script
C - - - - - 0x01EE32 07:EE22: A5 DA     LDA ram_00DA_flags
C - - - - - 0x01EE34 07:EE24: 29 40     AND #con_00DA_40
C - - - - - 0x01EE36 07:EE26: D0 04     BNE bra_EE2C
C - - - - - 0x01EE38 07:EE28: A9 04     LDA #con_03D6_04
C - - - - - 0x01EE3A 07:EE2A: D0 02     BNE bra_EE2E    ; jmp
bra_EE2C:
C - - - - - 0x01EE3C 07:EE2C: A9 05     LDA #con_03D6_05
bra_EE2E:
C - - - - - 0x01EE3E 07:EE2E: 8D D6 03  STA ram_03D6_subscript
C - - - - - 0x01EE41 07:EE31: D0 D7     BNE bra_EE0A    ; jmp



ofs_005_main_game_script_EE33_02_pause_menu:
; con_03D5_pause_menu
bra_EE33_loop:
C - - J - - 0x01EE43 07:EE33: 20 82 E0  JSR sub_E082_wait_1_frm
C - - - - - 0x01EE46 07:EE36: A5 9D     LDA ram_prg_bank_A000
C - - - - - 0x01EE48 07:EE38: 48        PHA
C - - - - - 0x01EE49 07:EE39: A9 0C     LDA #con_prg_bank + $0C
C - - - - - 0x01EE4B 07:EE3B: 85 9D     STA ram_prg_bank_A000
C - - - - - 0x01EE4D 07:EE3D: 20 58 DB  JSR sub_DB58_prg_bankswitch_A000
C - - - - - 0x01EE50 07:EE40: 20 09 A0  JSR sub_0x018019_move_portraits_in_pause_menu
C - - - - - 0x01EE53 07:EE43: 68        PLA
C - - - - - 0x01EE54 07:EE44: 85 9D     STA ram_prg_bank_A000
C - - - - - 0x01EE56 07:EE46: 20 58 DB  JSR sub_DB58_prg_bankswitch_A000
C - - - - - 0x01EE59 07:EE49: 20 AC C3  JSR sub_C3AC
C - - - - - 0x01EE5C 07:EE4C: A5 43     LDA ram_scroll_X_lo
C - - - - - 0x01EE5E 07:EE4E: D0 E3     BNE bra_EE33_loop
C - - - - - 0x01EE60 07:EE50: A5 A8     LDA ram_plr_index
C - - - - - 0x01EE62 07:EE52: 85 A9     STA ram_copy_plr_index
C - - - - - 0x01EE64 07:EE54: A9 00     LDA #$00
C - - - - - 0x01EE66 07:EE56: 8D BA 05  STA ram_05BA_spr_X_hi_player
C - - - - - 0x01EE69 07:EE59: 8D BB 05  STA ram_05BA_spr_X_hi_player + $01
loc_EE5C:
C D 3 - - - 0x01EE6C 07:EE5C: A9 2A     LDA #$2A
C - - - - - 0x01EE6E 07:EE5E: 8D E5 03  STA ram_03E5
bra_EE61_loop:
C - - - - - 0x01EE71 07:EE61: 20 82 E0  JSR sub_E082_wait_1_frm
C - - - - - 0x01EE74 07:EE64: 20 AC C3  JSR sub_C3AC
C - - - - - 0x01EE77 07:EE67: 20 96 DF  JSR sub_DF96_try_to_enable_cheats
C - - - - - 0x01EE7A 07:EE6A: A5 9D     LDA ram_prg_bank_A000
C - - - - - 0x01EE7C 07:EE6C: 48        PHA
C - - - - - 0x01EE7D 07:EE6D: A9 0C     LDA #con_prg_bank + $0C
C - - - - - 0x01EE7F 07:EE6F: 85 9D     STA ram_prg_bank_A000
C - - - - - 0x01EE81 07:EE71: 20 58 DB  JSR sub_DB58_prg_bankswitch_A000
C - - - - - 0x01EE84 07:EE74: 20 0C A0  JSR sub_0x01801C
C - - - - - 0x01EE87 07:EE77: 68        PLA
C - - - - - 0x01EE88 07:EE78: 85 9D     STA ram_prg_bank_A000
C - - - - - 0x01EE8A 07:EE7A: 20 58 DB  JSR sub_DB58_prg_bankswitch_A000
C - - - - - 0x01EE8D 07:EE7D: A5 67     LDA ram_0067_t54_flag
C - - - - - 0x01EE8F 07:EE7F: F0 03     BEQ bra_EE84
C - - - - - 0x01EE91 07:EE81: 4C 4E EF  JMP loc_EF4E
bra_EE84:
C - - - - - 0x01EE94 07:EE84: A5 9D     LDA ram_prg_bank_A000
C - - - - - 0x01EE96 07:EE86: 48        PHA
C - - - - - 0x01EE97 07:EE87: A9 0C     LDA #con_prg_bank + $0C
C - - - - - 0x01EE99 07:EE89: 85 9D     STA ram_prg_bank_A000
C - - - - - 0x01EE9B 07:EE8B: 20 58 DB  JSR sub_DB58_prg_bankswitch_A000
C - - - - - 0x01EE9E 07:EE8E: 20 12 A0  JSR sub_0x018022
C - - - - - 0x01EEA1 07:EE91: 68        PLA
C - - - - - 0x01EEA2 07:EE92: 85 9D     STA ram_prg_bank_A000
C - - - - - 0x01EEA4 07:EE94: 20 58 DB  JSR sub_DB58_prg_bankswitch_A000
C - - - - - 0x01EEA7 07:EE97: AD E5 03  LDA ram_03E5
C - - - - - 0x01EEAA 07:EE9A: 29 40     AND #$40
C - - - - - 0x01EEAC 07:EE9C: F0 C3     BEQ bra_EE61_loop
C - - - - - 0x01EEAE 07:EE9E: AD E5 03  LDA ram_03E5
C - - - - - 0x01EEB1 07:EEA1: 29 01     AND #$01
C - - - - - 0x01EEB3 07:EEA3: F0 1E     BEQ bra_EEC3
C - - - - - 0x01EEB5 07:EEA5: 20 2C F2  JSR sub_F22C
C - - - - - 0x01EEB8 07:EEA8: 90 0B     BCC bra_EEB5
- - - - - - 0x01EEBA 07:EEAA: AD E5 03  LDA ram_03E5
- - - - - - 0x01EEBD 07:EEAD: 29 FE     AND #$01 ^ $FF
- - - - - - 0x01EEBF 07:EEAF: 8D E5 03  STA ram_03E5
- - - - - - 0x01EEC2 07:EEB2: 4C 4E EF  JMP loc_EF4E
bra_EEB5:
C - - - - - 0x01EEC5 07:EEB5: A9 18     LDA #con_sfx_return
C - - - - - 0x01EEC7 07:EEB7: 85 77     STA ram_0077_t03_sound_id
C - - - - - 0x01EEC9 07:EEB9: 20 04 CB  JSR sub_CB04_play_sound
C - - - - - 0x01EECC 07:EEBC: 20 5C F2  JSR sub_F25C
C - - - - - 0x01EECF 07:EEBF: A9 60     LDA #$60    ; < 0060
C - - - - - 0x01EED1 07:EEC1: D0 6C     BNE bra_EF2F    ; jmp
bra_EEC3:
bra_EEC3_loop:
C - - - - - 0x01EED3 07:EEC3: AD B5 05  LDA ram_05B5_player_flags
C - - - - - 0x01EED6 07:EEC6: 29 01     AND #con_05B5_together
C - - - - - 0x01EED8 07:EEC8: D0 03     BNE bra_EECD_together
; if separate
C - - - - - 0x01EEDA 07:EECA: 4C 4E EF  JMP loc_EF4E
bra_EECD_together:
C - - - - - 0x01EEDD 07:EECD: 20 82 E0  JSR sub_E082_wait_1_frm
C - - - - - 0x01EEE0 07:EED0: A5 9D     LDA ram_prg_bank_A000
C - - - - - 0x01EEE2 07:EED2: 48        PHA
C - - - - - 0x01EEE3 07:EED3: A9 0C     LDA #con_prg_bank + $0C
C - - - - - 0x01EEE5 07:EED5: 85 9D     STA ram_prg_bank_A000
C - - - - - 0x01EEE7 07:EED7: 20 58 DB  JSR sub_DB58_prg_bankswitch_A000
C - - - - - 0x01EEEA 07:EEDA: 20 15 A0  JSR sub_0x018025
C - - - - - 0x01EEED 07:EEDD: 68        PLA
C - - - - - 0x01EEEE 07:EEDE: 85 9D     STA ram_prg_bank_A000
C - - - - - 0x01EEF0 07:EEE0: 20 58 DB  JSR sub_DB58_prg_bankswitch_A000
C - - - - - 0x01EEF3 07:EEE3: 20 AC C3  JSR sub_C3AC
C - - - - - 0x01EEF6 07:EEE6: A5 9D     LDA ram_prg_bank_A000
C - - - - - 0x01EEF8 07:EEE8: 48        PHA
C - - - - - 0x01EEF9 07:EEE9: A9 0C     LDA #con_prg_bank + $0C
C - - - - - 0x01EEFB 07:EEEB: 85 9D     STA ram_prg_bank_A000
C - - - - - 0x01EEFD 07:EEED: 20 58 DB  JSR sub_DB58_prg_bankswitch_A000
C - - - - - 0x01EF00 07:EEF0: 20 0C A0  JSR sub_0x01801C
C - - - - - 0x01EF03 07:EEF3: 68        PLA
C - - - - - 0x01EF04 07:EEF4: 85 9D     STA ram_prg_bank_A000
C - - - - - 0x01EF06 07:EEF6: 20 58 DB  JSR sub_DB58_prg_bankswitch_A000
C - - - - - 0x01EF09 07:EEF9: A5 67     LDA ram_0067_t54_flag
C - - - - - 0x01EF0B 07:EEFB: F0 2B     BEQ bra_EF28
C - - - - - 0x01EF0D 07:EEFD: A5 9D     LDA ram_prg_bank_A000
C - - - - - 0x01EF0F 07:EEFF: 48        PHA
C - - - - - 0x01EF10 07:EF00: A9 0C     LDA #con_prg_bank + $0C
C - - - - - 0x01EF12 07:EF02: 85 9D     STA ram_prg_bank_A000
C - - - - - 0x01EF14 07:EF04: 20 58 DB  JSR sub_DB58_prg_bankswitch_A000
C - - - - - 0x01EF17 07:EF07: A9 00     LDA #$00
C - - - - - 0x01EF19 07:EF09: 85 67     STA ram_0067_t55_table_index
C - - - - - 0x01EF1B 07:EF0B: 20 0F A0  JSR sub_0x01801F
C - - - - - 0x01EF1E 07:EF0E: A5 A9     LDA ram_copy_plr_index
C - - - - - 0x01EF20 07:EF10: 85 A8     STA ram_plr_index
C - - - - - 0x01EF22 07:EF12: 20 06 A0  JSR sub_0x018016
C - - - - - 0x01EF25 07:EF15: 68        PLA
C - - - - - 0x01EF26 07:EF16: 85 9D     STA ram_prg_bank_A000
C - - - - - 0x01EF28 07:EF18: 20 58 DB  JSR sub_DB58_prg_bankswitch_A000
C - - - - - 0x01EF2B 07:EF1B: A9 20     LDA #$20    ; background + sprite colors
C - - - - - 0x01EF2D 07:EF1D: 85 4F     STA ram_004F_pal_buffer_size
C - - - - - 0x01EF2F 07:EF1F: A9 01     LDA #con_buffer_ready_palette
C - - - - - 0x01EF31 07:EF21: 05 02     ORA ram_buffers_flags
C - - - - - 0x01EF33 07:EF23: 85 02     STA ram_buffers_flags
C - - - - - 0x01EF35 07:EF25: 4C 5C EE  JMP loc_EE5C
bra_EF28:
C - - - - - 0x01EF38 07:EF28: AD E5 03  LDA ram_03E5
C - - - - - 0x01EF3B 07:EF2B: 10 96     BPL bra_EEC3_loop
C - - - - - 0x01EF3D 07:EF2D: A9 10     LDA #$10    ; < 0010
bra_EF2F:
C - - - - - 0x01EF3F 07:EF2F: 85 19     STA ram_0019_timer_lo
C - - - - - 0x01EF41 07:EF31: A9 00     LDA #$00
C - - - - - 0x01EF43 07:EF33: 85 1A     STA ram_001A_timer_hi
C - - - - - 0x01EF45 07:EF35: 20 97 E0  JSR sub_E097_wait_for_timer
C - - - - - 0x01EF48 07:EF38: A9 03     LDA #con_03D6_03
C - - - - - 0x01EF4A 07:EF3A: 8D D6 03  STA ram_03D6_subscript
C - - - - - 0x01EF4D 07:EF3D: A9 00     LDA #con_03D5_00
C - - - - - 0x01EF4F 07:EF3F: 8D D5 03  STA ram_03D5_script
bra_EF42:
C - - - - - 0x01EF52 07:EF42: 20 50 C0  JSR sub_C050
C - - - - - 0x01EF55 07:EF45: A6 A8     LDX ram_plr_index
C - - - - - 0x01EF57 07:EF47: BD 5E EF  LDA tbl_EF5E_chr_banks_sprites,X
C - - - - - 0x01EF5A 07:EF4A: 8D E7 03  STA ram_03E6_t01_chr_banks_spr + $01
C - - - - - 0x01EF5D 07:EF4D: 60        RTS



loc_EF4E:
C D 3 - - - 0x01EF5E 07:EF4E: A5 A9     LDA ram_copy_plr_index
C - - - - - 0x01EF60 07:EF50: 85 A8     STA ram_plr_index
C - - - - - 0x01EF62 07:EF52: A9 03     LDA #con_03D6_03
C - - - - - 0x01EF64 07:EF54: 8D D6 03  STA ram_03D6_subscript
C - - - - - 0x01EF67 07:EF57: A9 00     LDA #con_03D5_00
C - - - - - 0x01EF69 07:EF59: 8D D5 03  STA ram_03D5_script
C - - - - - 0x01EF6C 07:EF5C: F0 E4     BEQ bra_EF42    ; jmp



tbl_EF5E_chr_banks_sprites:
- D 3 - - - 0x01EF6E 07:EF5E: 54        .byte con_chr_bank_spr + $54   ; 00 
- D 3 - - - 0x01EF6F 07:EF5F: 55        .byte con_chr_bank_spr + $55   ; 01 



ofs_005_main_game_script_EF60_03_map:
; con_03D5_map
bra_EF60_loop:
C - - J - - 0x01EF70 07:EF60: 20 82 E0  JSR sub_E082_wait_1_frm
C - - - - - 0x01EF73 07:EF63: A5 9D     LDA ram_prg_bank_A000
C - - - - - 0x01EF75 07:EF65: 48        PHA
C - - - - - 0x01EF76 07:EF66: A9 0C     LDA #con_prg_bank + $0C
C - - - - - 0x01EF78 07:EF68: 85 9D     STA ram_prg_bank_A000
C - - - - - 0x01EF7A 07:EF6A: 20 58 DB  JSR sub_DB58_prg_bankswitch_A000
C - - - - - 0x01EF7D 07:EF6D: A5 DC     LDA ram_00DC_flag
C - - - - - 0x01EF7F 07:EF6F: F0 0B     BEQ bra_EF7C
C - - - - - 0x01EF81 07:EF71: A9 00     LDA #$00
C - - - - - 0x01EF83 07:EF73: 85 DC     STA ram_00DC_flag
C - - - - - 0x01EF85 07:EF75: A9 06     LDA #con_0534_06
C - - - - - 0x01EF87 07:EF77: 8D 34 05  STA ram_0534_t01_map_movement_handler_index
C - - - - - 0x01EF8A 07:EF7A: D0 1A     BNE bra_EF96    ; jmp
bra_EF7C:
C - - - - - 0x01EF8C 07:EF7C: A2 00     LDX #$00
C - - - - - 0x01EF8E 07:EF7E: AD D4 05  LDA ram_05D4_plr_flags
C - - - - - 0x01EF91 07:EF81: 29 10     AND #con_05D4_10
C - - - - - 0x01EF93 07:EF83: D0 09     BNE bra_EF8E
C - - - - - 0x01EF95 07:EF85: A2 01     LDX #$01
C - - - - - 0x01EF97 07:EF87: AD D5 05  LDA ram_05D4_plr_flags + $01
C - - - - - 0x01EF9A 07:EF8A: 29 10     AND #con_05D4_10
C - - - - - 0x01EF9C 07:EF8C: F0 08     BEQ bra_EF96
bra_EF8E:
C - - - - - 0x01EF9E 07:EF8E: 8E 41 05  STX ram_0541_t02_obj_index
C - - - - - 0x01EFA1 07:EF91: A9 07     LDA #con_0534_07
C - - - - - 0x01EFA3 07:EF93: 8D 34 05  STA ram_0534_t01_map_movement_handler_index
bra_EF96:
C - - - - - 0x01EFA6 07:EF96: 20 03 A0  JSR sub_0x018013_map_movement_handler
C - - - - - 0x01EFA9 07:EF99: 68        PLA
C - - - - - 0x01EFAA 07:EF9A: 85 9D     STA ram_prg_bank_A000
C - - - - - 0x01EFAC 07:EF9C: 20 58 DB  JSR sub_DB58_prg_bankswitch_A000
C - - - - - 0x01EFAF 07:EF9F: 20 DB FA  JSR sub_FADB
C - - - - - 0x01EFB2 07:EFA2: AD DC 05  LDA ram_05DC_flags
C - - - - - 0x01EFB5 07:EFA5: 29 40     AND #con_05DC_40
C - - - - - 0x01EFB7 07:EFA7: F0 B7     BEQ bra_EF60_loop
C - - - - - 0x01EFB9 07:EFA9: AD DC 05  LDA ram_05DC_flags
C - - - - - 0x01EFBC 07:EFAC: 29 BF     AND #con_05DC_40 ^ $FF
C - - - - - 0x01EFBE 07:EFAE: 8D DC 05  STA ram_05DC_flags
C - - - - - 0x01EFC1 07:EFB1: 20 00 DB  JSR sub_DB00_decrease_brightness
C - - - - - 0x01EFC4 07:EFB4: A9 01     LDA #con_03D6_01
C - - - - - 0x01EFC6 07:EFB6: 8D D6 03  STA ram_03D6_subscript
C - - - - - 0x01EFC9 07:EFB9: A9 00     LDA #con_03D5_00
C - - - - - 0x01EFCB 07:EFBB: 8D D5 03  STA ram_03D5_script
C - - - - - 0x01EFCE 07:EFBE: 60        RTS



sub_EFBF_player_handler:
C - - - - - 0x01EFCF 07:EFBF: A5 9D     LDA ram_prg_bank_A000
C - - - - - 0x01EFD1 07:EFC1: 48        PHA
C - - - - - 0x01EFD2 07:EFC2: A9 0B     LDA #con_prg_bank + $0B
C - - - - - 0x01EFD4 07:EFC4: 85 9D     STA ram_prg_bank_A000
C - - - - - 0x01EFD6 07:EFC6: 20 58 DB  JSR sub_DB58_prg_bankswitch_A000
C - - - - - 0x01EFD9 07:EFC9: A5 A8     LDA ram_plr_index
C - - - - - 0x01EFDB 07:EFCB: 0A        ASL
C - - - - - 0x01EFDC 07:EFCC: AA        TAX
C - - - - - 0x01EFDD 07:EFCD: BD E7 EF  LDA tbl_EFE7_player_handler,X
C - - - - - 0x01EFE0 07:EFD0: 85 5B     STA ram_005B_t42_jmp
C - - - - - 0x01EFE2 07:EFD2: BD E8 EF  LDA tbl_EFE7_player_handler + $01,X
C - - - - - 0x01EFE5 07:EFD5: 85 5C     STA ram_005B_t42_jmp + $01
C - - - - - 0x01EFE7 07:EFD7: A9 EF     LDA #> (ofs_EFE0_return___restore_prg_bank - $01)
C - - - - - 0x01EFE9 07:EFD9: 48        PHA
C - - - - - 0x01EFEA 07:EFDA: A9 DF     LDA #< (ofs_EFE0_return___restore_prg_bank - $01)
C - - - - - 0x01EFEC 07:EFDC: 48        PHA
C - - - - - 0x01EFED 07:EFDD: 6C 5B 00  JMP (ram_005B_t42_jmp)



ofs_EFE0_return___restore_prg_bank:
C - - - - - 0x01EFF0 07:EFE0: 68        PLA
C - - - - - 0x01EFF1 07:EFE1: 85 9D     STA ram_prg_bank_A000
; bzk optimize, JMP
C - - - - - 0x01EFF3 07:EFE3: 20 58 DB  JSR sub_DB58_prg_bankswitch_A000
C - - - - - 0x01EFF6 07:EFE6: 60        RTS



tbl_EFE7_player_handler:
- D 3 - - - 0x01EFF7 07:EFE7: 00 A0     .word ofs_004_0x016010_00_captain_handler
- D 3 - - - 0x01EFF9 07:EFE9: 06 A0     .word ofs_004_0x016016_01_hawk_handler



sub_EFEB:
C - - - - - 0x01EFFB 07:EFEB: AD F7 05  LDA ram_05F7_scroll_flag
C - - - - - 0x01EFFE 07:EFEE: F0 03     BEQ bra_EFF3
C - - - - - 0x01F000 07:EFF0: 4C E9 F2  JMP loc_F2E9
bra_EFF3:
C - - - - - 0x01F003 07:EFF3: A5 D9     LDA ram_00D9_array_index
C - - - - - 0x01F005 07:EFF5: F0 07     BEQ bra_EFFE
C - - - - - 0x01F007 07:EFF7: A9 0F     LDA #$0F
C - - - - - 0x01F009 07:EFF9: 85 96     STA ram_0096_t04
C - - - - - 0x01F00B 07:EFFB: 4C A9 F0  JMP loc_F0A9_RTS
bra_EFFE:
C - - - - - 0x01F00E 07:EFFE: A5 3F     LDA ram_scroll_Y_hi
C - - - - - 0x01F010 07:F000: 38        SEC
C - - - - - 0x01F011 07:F001: E5 97     SBC ram_0097_useless_00
C - - - - - 0x01F013 07:F003: 85 67     STA ram_0067_t73
C - - - - - 0x01F015 07:F005: 10 0E     BPL bra_F015
bra_F007:
C - - - - - 0x01F017 07:F007: A9 08     LDA #$08
C - - - - - 0x01F019 07:F009: 05 96     ORA ram_0096_t04
C - - - - - 0x01F01B 07:F00B: 85 96     STA ram_0096_t01
C - - - - - 0x01F01D 07:F00D: A9 00     LDA #$00
C - - - - - 0x01F01F 07:F00F: 85 3F     STA ram_scroll_Y_hi
C - - - - - 0x01F021 07:F011: 85 40     STA ram_scroll_Y_lo
C - - - - - 0x01F023 07:F013: F0 0C     BEQ bra_F021    ; jmp
bra_F015:
C - - - - - 0x01F025 07:F015: A5 67     LDA ram_0067_t73
C - - - - - 0x01F027 07:F017: 05 40     ORA ram_scroll_Y_lo
C - - - - - 0x01F029 07:F019: F0 EC     BEQ bra_F007
C - - - - - 0x01F02B 07:F01B: A5 96     LDA ram_0096_t04
C - - - - - 0x01F02D 07:F01D: 29 F7     AND #$F7
C - - - - - 0x01F02F 07:F01F: 85 96     STA ram_0096_t01
bra_F021:
C - - - - - 0x01F031 07:F021: A9 00     LDA #$00
C - - - - - 0x01F033 07:F023: 38        SEC
C - - - - - 0x01F034 07:F024: E5 40     SBC ram_scroll_Y_lo
C - - - - - 0x01F036 07:F026: 85 67     STA ram_0067_t74
C - - - - - 0x01F038 07:F028: A5 98     LDA ram_0098_scroll_Y_hi
C - - - - - 0x01F03A 07:F02A: E5 3F     SBC ram_scroll_Y_hi
C - - - - - 0x01F03C 07:F02C: 85 68     STA ram_0068_t53
C - - - - - 0x01F03E 07:F02E: 10 10     BPL bra_F040
bra_F030:
C - - - - - 0x01F040 07:F030: A9 04     LDA #$04
C - - - - - 0x01F042 07:F032: 05 96     ORA ram_0096_t01
C - - - - - 0x01F044 07:F034: 85 96     STA ram_0096_t02
C - - - - - 0x01F046 07:F036: A5 98     LDA ram_0098_scroll_Y_hi
C - - - - - 0x01F048 07:F038: 85 3F     STA ram_scroll_Y_hi
C - - - - - 0x01F04A 07:F03A: A9 00     LDA #$00
C - - - - - 0x01F04C 07:F03C: 85 40     STA ram_scroll_Y_lo
C - - - - - 0x01F04E 07:F03E: F0 0C     BEQ bra_F04C    ; jmp
bra_F040:
C - - - - - 0x01F050 07:F040: A5 67     LDA ram_0067_t74
C - - - - - 0x01F052 07:F042: 05 68     ORA ram_0068_t53
C - - - - - 0x01F054 07:F044: F0 EA     BEQ bra_F030
C - - - - - 0x01F056 07:F046: A5 96     LDA ram_0096_t01
C - - - - - 0x01F058 07:F048: 29 FB     AND #$FB
C - - - - - 0x01F05A 07:F04A: 85 96     STA ram_0096_t02
bra_F04C:
C - - - - - 0x01F05C 07:F04C: A5 42     LDA ram_scroll_X_hi
C - - - - - 0x01F05E 07:F04E: 38        SEC
C - - - - - 0x01F05F 07:F04F: E5 99     SBC ram_0099_useless_00
C - - - - - 0x01F061 07:F051: 85 67     STA ram_0067_t75
C - - - - - 0x01F063 07:F053: 10 10     BPL bra_F065
bra_F055:
C - - - - - 0x01F065 07:F055: A9 02     LDA #$02
C - - - - - 0x01F067 07:F057: 05 96     ORA ram_0096_t02
C - - - - - 0x01F069 07:F059: 85 96     STA ram_0096_t03
C - - - - - 0x01F06B 07:F05B: A5 99     LDA ram_0099_useless_00
C - - - - - 0x01F06D 07:F05D: 85 42     STA ram_scroll_X_hi
C - - - - - 0x01F06F 07:F05F: A9 00     LDA #$00
C - - - - - 0x01F071 07:F061: 85 43     STA ram_scroll_X_lo
C - - - - - 0x01F073 07:F063: F0 0C     BEQ bra_F071    ; jmp
bra_F065:
C - - - - - 0x01F075 07:F065: A5 67     LDA ram_0067_t75
C - - - - - 0x01F077 07:F067: 05 43     ORA ram_scroll_X_lo
C - - - - - 0x01F079 07:F069: F0 EA     BEQ bra_F055
C - - - - - 0x01F07B 07:F06B: A5 96     LDA ram_0096_t02
C - - - - - 0x01F07D 07:F06D: 29 FD     AND #$FD
C - - - - - 0x01F07F 07:F06F: 85 96     STA ram_0096_t03
bra_F071:
C - - - - - 0x01F081 07:F071: A9 00     LDA #$00
C - - - - - 0x01F083 07:F073: 38        SEC
C - - - - - 0x01F084 07:F074: E5 43     SBC ram_scroll_X_lo
C - - - - - 0x01F086 07:F076: 85 67     STA ram_0067_t76_lo
C - - - - - 0x01F088 07:F078: A5 9A     LDA ram_009A_scroll_X_hi
C - - - - - 0x01F08A 07:F07A: E5 42     SBC ram_scroll_X_hi
C - - - - - 0x01F08C 07:F07C: 85 68     STA ram_0068_t54_scroll_X_hi_diff
C - - - - - 0x01F08E 07:F07E: 10 1D     BPL bra_F09D
bra_F080:
C - - - - - 0x01F090 07:F080: A9 01     LDA #$01
C - - - - - 0x01F092 07:F082: 05 96     ORA ram_0096_t03
C - - - - - 0x01F094 07:F084: 85 96     STA ram_0096_t04
C - - - - - 0x01F096 07:F086: A5 9A     LDA ram_009A_scroll_X_hi
C - - - - - 0x01F098 07:F088: 85 42     STA ram_scroll_X_hi
C - - - - - 0x01F09A 07:F08A: A5 D6     LDA ram_00D6_t01_spd_X_lo
C - - - - - 0x01F09C 07:F08C: 38        SEC
C - - - - - 0x01F09D 07:F08D: E5 67     SBC ram_0067_t76_lo
C - - - - - 0x01F09F 07:F08F: 85 D6     STA ram_00D6_t01_spd_X_lo
C - - - - - 0x01F0A1 07:F091: A5 D5     LDA ram_00D5_t01_spd_X_hi
C - - - - - 0x01F0A3 07:F093: E5 68     SBC ram_0068_t54_scroll_X_hi_diff
C - - - - - 0x01F0A5 07:F095: 85 D5     STA ram_00D5_t01_spd_X_hi
C - - - - - 0x01F0A7 07:F097: A9 00     LDA #$00
C - - - - - 0x01F0A9 07:F099: 85 43     STA ram_scroll_X_lo
C - - - - - 0x01F0AB 07:F09B: F0 0C     BEQ bra_F0A9_RTS    ; jmp
bra_F09D:
C - - - - - 0x01F0AD 07:F09D: A5 67     LDA ram_0067_t76_lo
C - - - - - 0x01F0AF 07:F09F: 05 68     ORA ram_0068_t54_scroll_X_hi_diff
C - - - - - 0x01F0B1 07:F0A1: F0 DD     BEQ bra_F080
C - - - - - 0x01F0B3 07:F0A3: A5 96     LDA ram_0096_t03
C - - - - - 0x01F0B5 07:F0A5: 29 FE     AND #$FE
C - - - - - 0x01F0B7 07:F0A7: 85 96     STA ram_0096_t04
bra_F0A9_RTS:
loc_F0A9_RTS:   ; bzk optimize
C D 3 - - - 0x01F0B9 07:F0A9: 60        RTS



sub_F0AA:
C - - - - - 0x01F0BA 07:F0AA: A5 9D     LDA ram_prg_bank_A000
C - - - - - 0x01F0BC 07:F0AC: 48        PHA
C - - - - - 0x01F0BD 07:F0AD: A9 08     LDA #con_prg_bank + $08
C - - - - - 0x01F0BF 07:F0AF: 85 9D     STA ram_prg_bank_A000
C - - - - - 0x01F0C1 07:F0B1: 20 58 DB  JSR sub_DB58_prg_bankswitch_A000
C - - - - - 0x01F0C4 07:F0B4: 20 03 A0  JSR sub_0x010013
C - - - - - 0x01F0C7 07:F0B7: 20 06 A0  JSR sub_0x010016
C - - - - - 0x01F0CA 07:F0BA: 68        PLA
C - - - - - 0x01F0CB 07:F0BB: 85 9D     STA ram_prg_bank_A000
; bzk optimize, JMP
C - - - - - 0x01F0CD 07:F0BD: 20 58 DB  JSR sub_DB58_prg_bankswitch_A000
C - - - - - 0x01F0D0 07:F0C0: 60        RTS



sub_F0C1:
C - - - - - 0x01F0D1 07:F0C1: A5 9D     LDA ram_prg_bank_A000
C - - - - - 0x01F0D3 07:F0C3: 48        PHA
C - - - - - 0x01F0D4 07:F0C4: A9 0A     LDA #con_prg_bank + $0A
C - - - - - 0x01F0D6 07:F0C6: 85 9D     STA ram_prg_bank_A000
C - - - - - 0x01F0D8 07:F0C8: 20 58 DB  JSR sub_DB58_prg_bankswitch_A000
C - - - - - 0x01F0DB 07:F0CB: 20 03 A0  JSR sub_0x014013
C - - - - - 0x01F0DE 07:F0CE: 68        PLA
C - - - - - 0x01F0DF 07:F0CF: 85 9D     STA ram_prg_bank_A000
; bzk optimize, JMP
C - - - - - 0x01F0E1 07:F0D1: 20 58 DB  JSR sub_DB58_prg_bankswitch_A000
C - - - - - 0x01F0E4 07:F0D4: 60        RTS



sub_F0D5:
C - - - - - 0x01F0E5 07:F0D5: A5 9D     LDA ram_prg_bank_A000
C - - - - - 0x01F0E7 07:F0D7: 48        PHA
C - - - - - 0x01F0E8 07:F0D8: A9 0D     LDA #con_prg_bank + $0D
C - - - - - 0x01F0EA 07:F0DA: 85 9D     STA ram_prg_bank_A000
C - - - - - 0x01F0EC 07:F0DC: 20 58 DB  JSR sub_DB58_prg_bankswitch_A000
C - - - - - 0x01F0EF 07:F0DF: 20 12 A0  JSR sub_0x01A022
C - - - - - 0x01F0F2 07:F0E2: 68        PLA
C - - - - - 0x01F0F3 07:F0E3: 85 9D     STA ram_prg_bank_A000
; bzk optimize, JMP
C - - - - - 0x01F0F5 07:F0E5: 20 58 DB  JSR sub_DB58_prg_bankswitch_A000
C - - - - - 0x01F0F8 07:F0E8: 60        RTS



sub_F0E9:
C - - - - - 0x01F0F9 07:F0E9: AD F3 03  LDA ram_03F3
C - - - - - 0x01F0FC 07:F0EC: 10 3D     BPL bra_F12B_RTS
C - - - - - 0x01F0FE 07:F0EE: 29 70     AND #$70
C - - - - - 0x01F100 07:F0F0: 85 68     STA ram_0068_t55
C - - - - - 0x01F102 07:F0F2: AD F3 03  LDA ram_03F3
C - - - - - 0x01F105 07:F0F5: 29 0F     AND #$0F
C - - - - - 0x01F107 07:F0F7: 38        SEC
C - - - - - 0x01F108 07:F0F8: E9 01     SBC #$01
C - - - - - 0x01F10A 07:F0FA: 85 67     STA ram_0067_t77
C - - - - - 0x01F10C 07:F0FC: D0 21     BNE bra_F11F
C - - - - - 0x01F10E 07:F0FE: A9 04     LDA #$04
C - - - - - 0x01F110 07:F100: 85 67     STA ram_0067_t77
C - - - - - 0x01F112 07:F102: AD F3 03  LDA ram_03F3
C - - - - - 0x01F115 07:F105: 29 70     AND #$70
C - - - - - 0x01F117 07:F107: 85 68     STA ram_0068_t56
C - - - - - 0x01F119 07:F109: 49 70     EOR #$70
C - - - - - 0x01F11B 07:F10B: F0 1F     BEQ bra_F12C
C - - - - - 0x01F11D 07:F10D: A5 68     LDA ram_0068_t56
C - - - - - 0x01F11F 07:F10F: 18        CLC
C - - - - - 0x01F120 07:F110: 69 10     ADC #$10
C - - - - - 0x01F122 07:F112: 85 68     STA ram_0068_t55
C - - - - - 0x01F124 07:F114: AD F4 03  LDA ram_03F4
C - - - - - 0x01F127 07:F117: 49 FF     EOR #$FF
C - - - - - 0x01F129 07:F119: 18        CLC
C - - - - - 0x01F12A 07:F11A: 69 01     ADC #$01
C - - - - - 0x01F12C 07:F11C: 8D F4 03  STA ram_03F4
bra_F11F:
C - - - - - 0x01F12F 07:F11F: AD F3 03  LDA ram_03F3
C - - - - - 0x01F132 07:F122: 29 80     AND #$80
C - - - - - 0x01F134 07:F124: 05 67     ORA ram_0067_t77
C - - - - - 0x01F136 07:F126: 05 68     ORA ram_0068_t55
C - - - - - 0x01F138 07:F128: 8D F3 03  STA ram_03F3
bra_F12B_RTS:
C - - - - - 0x01F13B 07:F12B: 60        RTS
bra_F12C:
C - - - - - 0x01F13C 07:F12C: A9 00     LDA #$00
C - - - - - 0x01F13E 07:F12E: 8D F3 03  STA ram_03F3
C - - - - - 0x01F141 07:F131: 60        RTS



sub_F132:
C - - - - - 0x01F142 07:F132: A5 D9     LDA ram_00D9_array_index
C - - - - - 0x01F144 07:F134: D0 5F     BNE bra_F195
C - - - - - 0x01F146 07:F136: A5 3C     LDA ram_city
C - - - - - 0x01F148 07:F138: C9 02     CMP #$02
C - - - - - 0x01F14A 07:F13A: F0 07     BEQ bra_F143
C - - - - - 0x01F14C 07:F13C: AD E1 05  LDA ram_05E1_flags
C - - - - - 0x01F14F 07:F13F: 29 08     AND #con_05E1_08
C - - - - - 0x01F151 07:F141: D0 51     BNE bra_F194_RTS
bra_F143:
C - - - - - 0x01F153 07:F143: A5 3F     LDA ram_scroll_Y_hi
C - - - - - 0x01F155 07:F145: 85 68     STA ram_0068_t57
C - - - - - 0x01F157 07:F147: A5 40     LDA ram_scroll_Y_lo
C - - - - - 0x01F159 07:F149: 29 F8     AND #$F8
C - - - - - 0x01F15B 07:F14B: 85 67     STA ram_0067_t78
C - - - - - 0x01F15D 07:F14D: A5 43     LDA ram_scroll_X_lo
C - - - - - 0x01F15F 07:F14F: 29 F8     AND #$F8
C - - - - - 0x01F161 07:F151: 05 67     ORA ram_0067_t78
C - - - - - 0x01F163 07:F153: F0 0E     BEQ bra_F163
C - - - - - 0x01F165 07:F155: A5 43     LDA ram_scroll_X_lo
C - - - - - 0x01F167 07:F157: 29 F8     AND #$F8
C - - - - - 0x01F169 07:F159: D0 39     BNE bra_F194_RTS
C - - - - - 0x01F16B 07:F15B: A5 67     LDA ram_0067_t78
C - - - - - 0x01F16D 07:F15D: C9 E8     CMP #$E8
C - - - - - 0x01F16F 07:F15F: D0 33     BNE bra_F194_RTS
C - - - - - 0x01F171 07:F161: E6 68     INC ram_0068_t57
bra_F163:
C - - - - - 0x01F173 07:F163: AD F6 03  LDA ram_03F6_scroll_Y_hi
C - - - - - 0x01F176 07:F166: 30 12     BMI bra_F17A
C - - - - - 0x01F178 07:F168: A5 68     LDA ram_0068_t57
C - - - - - 0x01F17A 07:F16A: CD F6 03  CMP ram_03F6_scroll_Y_hi
C - - - - - 0x01F17D 07:F16D: D0 0B     BNE bra_F17A
C - - - - - 0x01F17F 07:F16F: A5 42     LDA ram_scroll_X_hi
C - - - - - 0x01F181 07:F171: CD F8 03  CMP ram_03F8_scroll_X_hi
C - - - - - 0x01F184 07:F174: D0 04     BNE bra_F17A
C - - - - - 0x01F186 07:F176: A9 01     LDA #$01
C - - - - - 0x01F188 07:F178: D0 15     BNE bra_F18F    ; jmp
bra_F17A:
C - - - - - 0x01F18A 07:F17A: AD F7 03  LDA ram_03F6_scroll_Y_hi + $01
C - - - - - 0x01F18D 07:F17D: 30 15     BMI bra_F194_RTS
C - - - - - 0x01F18F 07:F17F: A5 68     LDA ram_0068_t57
C - - - - - 0x01F191 07:F181: CD F7 03  CMP ram_03F6_scroll_Y_hi + $01
C - - - - - 0x01F194 07:F184: D0 0E     BNE bra_F194_RTS
C - - - - - 0x01F196 07:F186: A5 42     LDA ram_scroll_X_hi
C - - - - - 0x01F198 07:F188: CD F9 03  CMP ram_03F8_scroll_X_hi + $01
C - - - - - 0x01F19B 07:F18B: D0 07     BNE bra_F194_RTS
C - - - - - 0x01F19D 07:F18D: A9 02     LDA #$02
bra_F18F:
C - - - - - 0x01F19F 07:F18F: 85 D9     STA ram_00D9_array_index
; bzk optimize, JMP
C - - - - - 0x01F1A1 07:F191: 20 98 E9  JSR sub_E998
bra_F194_RTS:
C - - - - - 0x01F1A4 07:F194: 60        RTS
bra_F195:
C - - - - - 0x01F1A5 07:F195: A5 D9     LDA ram_00D9_array_index
C - - - - - 0x01F1A7 07:F197: C9 03     CMP #$03
C - - - - - 0x01F1A9 07:F199: F0 3D     BEQ bra_F1D8_RTS
C - - - - - 0x01F1AB 07:F19B: A5 DB     LDA ram_00DB_flag
C - - - - - 0x01F1AD 07:F19D: D0 39     BNE bra_F1D8_RTS
C - - - - - 0x01F1AF 07:F19F: AD FC 03  LDA ram_03FC
C - - - - - 0x01F1B2 07:F1A2: 29 83     AND #$80 + $01 + $02
C - - - - - 0x01F1B4 07:F1A4: C9 80     CMP #$80
C - - - - - 0x01F1B6 07:F1A6: F0 30     BEQ bra_F1D8_RTS
C - - - - - 0x01F1B8 07:F1A8: AE FD 03  LDX ram_03FD_t01_table_index
C - - - - - 0x01F1BB 07:F1AB: AD E2 05  LDA ram_05E2_counter
C - - - - - 0x01F1BE 07:F1AE: DD D9 F1  CMP tbl_F1D9,X
C - - - - - 0x01F1C1 07:F1B1: 90 25     BCC bra_F1D8_RTS
C - - - - - 0x01F1C3 07:F1B3: A5 CA     LDA ram_00CA_objects_counter
C - - - - - 0x01F1C5 07:F1B5: 05 CB     ORA ram_00CB_t01
C - - - - - 0x01F1C7 07:F1B7: D0 1A     BNE bra_F1D3
C - - - - - 0x01F1C9 07:F1B9: 20 B8 E9  JSR sub_E9B8
C - - - - - 0x01F1CC 07:F1BC: A9 00     LDA #$00
C - - - - - 0x01F1CE 07:F1BE: 85 D9     STA ram_00D9_array_index
C - - - - - 0x01F1D0 07:F1C0: 85 DB     STA ram_00DB_flag
C - - - - - 0x01F1D2 07:F1C2: 8D E2 05  STA ram_05E2_counter
C - - - - - 0x01F1D5 07:F1C5: 20 CC CA  JSR sub_CACC
C - - - - - 0x01F1D8 07:F1C8: A5 3C     LDA ram_city
C - - - - - 0x01F1DA 07:F1CA: C9 03     CMP #$03
C - - - - - 0x01F1DC 07:F1CC: D0 05     BNE bra_F1D3
C - - - - - 0x01F1DE 07:F1CE: A9 80     LDA #$80
C - - - - - 0x01F1E0 07:F1D0: 8D E2 05  STA ram_05E2_counter
bra_F1D3:
C - - - - - 0x01F1E3 07:F1D3: A9 00     LDA #$00
C - - - - - 0x01F1E5 07:F1D5: 8D FC 03  STA ram_03FC
bra_F1D8_RTS:
C - - - - - 0x01F1E8 07:F1D8: 60        RTS



tbl_F1D9:
- D 3 - - - 0x01F1E9 07:F1D9: 0A        .byte $0A   ; 00 
- D 3 - - - 0x01F1EA 07:F1DA: 0A        .byte $0A   ; 01 
- D 3 - - - 0x01F1EB 07:F1DB: 0A        .byte $0A   ; 02 
- D 3 - - - 0x01F1EC 07:F1DC: 0A        .byte $0A   ; 03 
- - - - - - 0x01F1ED 07:F1DD: 01        .byte $01   ; 04 
- D 3 - - - 0x01F1EE 07:F1DE: 01        .byte $01   ; 05 
- D 3 - - - 0x01F1EF 07:F1DF: 01        .byte $01   ; 06 
- - - - - - 0x01F1F0 07:F1E0: 01        .byte $01   ; 07 
- D 3 - - - 0x01F1F1 07:F1E1: 02        .byte $02   ; 08 



sub_F1E2:
C - - - - - 0x01F1F2 07:F1E2: AD 1F 04  LDA ram_041F_player_flags
C - - - - - 0x01F1F5 07:F1E5: 29 18     AND #$18
C - - - - - 0x01F1F7 07:F1E7: D0 14     BNE bra_F1FD
C - - - - - 0x01F1F9 07:F1E9: A5 9D     LDA ram_prg_bank_A000
C - - - - - 0x01F1FB 07:F1EB: 48        PHA
C - - - - - 0x01F1FC 07:F1EC: A9 0D     LDA #con_prg_bank + $0D
C - - - - - 0x01F1FE 07:F1EE: 85 9D     STA ram_prg_bank_A000
C - - - - - 0x01F200 07:F1F0: 20 58 DB  JSR sub_DB58_prg_bankswitch_A000
C - - - - - 0x01F203 07:F1F3: 20 00 A0  JSR sub_0x01A010
C - - - - - 0x01F206 07:F1F6: 68        PLA
C - - - - - 0x01F207 07:F1F7: 85 9D     STA ram_prg_bank_A000
; bzk optimize, JMP
C - - - - - 0x01F209 07:F1F9: 20 58 DB  JSR sub_DB58_prg_bankswitch_A000
C - - - - - 0x01F20C 07:F1FC: 60        RTS
bra_F1FD:
C - - - - - 0x01F20D 07:F1FD: A9 00     LDA #$00
C - - - - - 0x01F20F 07:F1FF: 85 68     STA ram_0068_t41_flag
C - - - - - 0x01F211 07:F201: 60        RTS



sub_F202:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x01F212 07:F202: AD 01 04  LDA ram_player_state_1
C - - - - - 0x01F215 07:F205: 0D 2F 04  ORA ram_042F_shield_script
C - - - - - 0x01F218 07:F208: D0 20     BNE bra_F22A
C - - - - - 0x01F21A 07:F20A: A5 DA     LDA ram_00DA_flags
C - - - - - 0x01F21C 07:F20C: 0D C7 05  ORA ram_05C7_flags
C - - - - - 0x01F21F 07:F20F: 30 19     BMI bra_F22A
C - - - - - 0x01F221 07:F211: AD 1F 04  LDA ram_041F_player_flags
C - - - - - 0x01F224 07:F214: 29 18     AND #$18
C - - - - - 0x01F226 07:F216: D0 12     BNE bra_F22A
C - - - - - 0x01F228 07:F218: A5 36     LDA ram_buttons
C - - - - - 0x01F22A 07:F21A: C9 10     CMP #con_btn_Start
C - - - - - 0x01F22C 07:F21C: D0 0C     BNE bra_F22A
C - - - - - 0x01F22E 07:F21E: A9 00     LDA #con_03D5_00
C - - - - - 0x01F230 07:F220: 8D D5 03  STA ram_03D5_script
C - - - - - 0x01F233 07:F223: A9 02     LDA #con_03D6_02
C - - - - - 0x01F235 07:F225: 8D D6 03  STA ram_03D6_subscript
C - - - - - 0x01F238 07:F228: 38        SEC
C - - - - - 0x01F239 07:F229: 60        RTS
bra_F22A:
C - - - - - 0x01F23A 07:F22A: 18        CLC
C - - - - - 0x01F23B 07:F22B: 60        RTS



sub_F22C:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x01F23C 07:F22C: A5 D9     LDA ram_00D9_array_index
C - - - - - 0x01F23E 07:F22E: F0 06     BEQ bra_F236
- - - - - - 0x01F240 07:F230: C9 03     CMP #$03
- - - - - - 0x01F242 07:F232: F0 24     BEQ bra_F258
- - - - - - 0x01F244 07:F234: D0 24     BNE bra_F25A    ; jmp
bra_F236:
C - - - - - 0x01F246 07:F236: AD B5 05  LDA ram_05B5_player_flags
C - - - - - 0x01F249 07:F239: 29 01     AND #con_05B5_together
C - - - - - 0x01F24B 07:F23B: F0 04     BEQ bra_F241_separate
; if together
C - - - - - 0x01F24D 07:F23D: A2 00     LDX #$00
C - - - - - 0x01F24F 07:F23F: F0 02     BEQ bra_F243    ; jmp
bra_F241_separate:
C - - - - - 0x01F251 07:F241: A6 A8     LDX ram_plr_index
bra_F243:
C - - - - - 0x01F253 07:F243: B5 3D     LDA ram_003D_plr,X
C - - - - - 0x01F255 07:F245: C9 03     CMP #$03
C - - - - - 0x01F257 07:F247: F0 11     BEQ bra_F25A
C - - - - - 0x01F259 07:F249: C9 01     CMP #$01
C - - - - - 0x01F25B 07:F24B: D0 07     BNE bra_F254
- - - - - - 0x01F25D 07:F24D: AD E1 05  LDA ram_05E1_flags
- - - - - - 0x01F260 07:F250: 29 08     AND #con_05E1_08
- - - - - - 0x01F262 07:F252: F0 06     BEQ bra_F25A
bra_F254:
C - - - - - 0x01F264 07:F254: A5 DB     LDA ram_00DB_flag
C - - - - - 0x01F266 07:F256: D0 02     BNE bra_F25A
bra_F258:
C - - - - - 0x01F268 07:F258: 18        CLC
C - - - - - 0x01F269 07:F259: 60        RTS
bra_F25A:
- - - - - - 0x01F26A 07:F25A: 38        SEC
- - - - - - 0x01F26B 07:F25B: 60        RTS



sub_F25C:
C - - - - - 0x01F26C 07:F25C: A6 A8     LDX ram_plr_index
C - - - - - 0x01F26E 07:F25E: AD B5 05  LDA ram_05B5_player_flags
C - - - - - 0x01F271 07:F261: 4A        LSR
C - - - - - 0x01F272 07:F262: 90 02     BCC bra_F266_separate
; if con_05B5_together
C - - - - - 0x01F274 07:F264: A2 00     LDX #$00    ; captain
bra_F266_separate:
C - - - - - 0x01F276 07:F266: B5 3D     LDA ram_003D_plr,X
C - - - - - 0x01F278 07:F268: C9 02     CMP #$02
C - - - - - 0x01F27A 07:F26A: D0 18     BNE bra_F284_RTS
; 
- - - - - - 0x01F27C 07:F26C: AD D4 05  LDA ram_05D4_plr_flags
- - - - - - 0x01F27F 07:F26F: 29 EF     AND #con_05D4_10 ^ $FF
- - - - - - 0x01F281 07:F271: 8D D4 05  STA ram_05D4_plr_flags
; 
- - - - - - 0x01F284 07:F274: AD D5 05  LDA ram_05D4_plr_flags + $01
- - - - - - 0x01F287 07:F277: 29 EF     AND #con_05D4_10 ^ $FF
- - - - - - 0x01F289 07:F279: 8D D5 05  STA ram_05D4_plr_flags + $01
; 
- - - - - - 0x01F28C 07:F27C: AD DC 05  LDA ram_05DC_flags
- - - - - - 0x01F28F 07:F27F: 29 7F     AND #con_05DC_has_player_index ^ $FF
- - - - - - 0x01F291 07:F281: 8D DC 05  STA ram_05DC_flags
bra_F284_RTS:
C - - - - - 0x01F294 07:F284: 60        RTS



sub_F285:
C - - - - - 0x01F295 07:F285: A5 3C     LDA ram_city
C - - - - - 0x01F297 07:F287: C9 1A     CMP #$1A
C - - - - - 0x01F299 07:F289: D0 30     BNE bra_F2BB_RTS
C - - - - - 0x01F29B 07:F28B: A5 E7     LDA ram_00E7_flag
C - - - - - 0x01F29D 07:F28D: 10 0B     BPL bra_F29A
C - - - - - 0x01F29F 07:F28F: A9 01     LDA #$01
C - - - - - 0x01F2A1 07:F291: 85 D7     STA ram_00D7
C - - - - - 0x01F2A3 07:F293: A9 2B     LDA #$2B
C - - - - - 0x01F2A5 07:F295: 85 4D     STA ram_004D_palette_index
C - - - - - 0x01F2A7 07:F297: 20 2C DA  JSR sub_DA2C_prepare_background_palette
bra_F29A:
C - - - - - 0x01F2AA 07:F29A: A5 E7     LDA ram_00E7_flag
C - - - - - 0x01F2AC 07:F29C: 29 01     AND #$01
C - - - - - 0x01F2AE 07:F29E: 85 67     STA ram_0067_t79
C - - - - - 0x01F2B0 07:F2A0: A5 D7     LDA ram_00D7
C - - - - - 0x01F2B2 07:F2A2: 29 01     AND #$01
C - - - - - 0x01F2B4 07:F2A4: C5 67     CMP ram_0067_t79
C - - - - - 0x01F2B6 07:F2A6: F0 13     BEQ bra_F2BB_RTS
C - - - - - 0x01F2B8 07:F2A8: 85 E7     STA ram_00E7_flag
C - - - - - 0x01F2BA 07:F2AA: A8        TAY
C - - - - - 0x01F2BB 07:F2AB: B9 BC F2  LDA tbl_F2BC_sprite_palette_index,Y
C - - - - - 0x01F2BE 07:F2AE: 85 0D     STA ram_000D_spr_pal_index
C - - - - - 0x01F2C0 07:F2B0: 20 56 DA  JSR sub_DA56_prepare_sprite_palette
C - - - - - 0x01F2C3 07:F2B3: A9 20     LDA #$20    ; background + sprite colors
C - - - - - 0x01F2C5 07:F2B5: 85 4F     STA ram_004F_pal_buffer_size
C - - - - - 0x01F2C7 07:F2B7: A9 01     LDA #con_buffer_ready_palette
C - - - - - 0x01F2C9 07:F2B9: 85 02     STA ram_buffers_flags
bra_F2BB_RTS:
C - - - - - 0x01F2CB 07:F2BB: 60        RTS



tbl_F2BC_sprite_palette_index:
- D 3 - - - 0x01F2CC 07:F2BC: 05        .byte con_000D_05   ; 00 
- D 3 - - - 0x01F2CD 07:F2BD: 0B        .byte con_000D_0B   ; 01 



sub_F2BE_try_to_pause:
C - - - - - 0x01F2CE 07:F2BE: A5 36     LDA ram_buttons
C - - - - - 0x01F2D0 07:F2C0: 29 20     AND #con_btn_Select
C - - - - - 0x01F2D2 07:F2C2: F0 0A     BEQ bra_F2CE_RTS
; bzk optimize, what's the point of 0067?
C - - - - - 0x01F2D4 07:F2C4: 85 67     STA ram_0067_t7A_btn_Select
C - - - - - 0x01F2D6 07:F2C6: A5 38     LDA ram_prev_buttons
C - - - - - 0x01F2D8 07:F2C8: 29 20     AND #con_btn_Select
C - - - - - 0x01F2DA 07:F2CA: C5 67     CMP ram_0067_t7A_btn_Select
C - - - - - 0x01F2DC 07:F2CC: D0 01     BNE bra_F2CF_toggle_pause
bra_F2CE_RTS:
C - - - - - 0x01F2DE 07:F2CE: 60        RTS
bra_F2CF_toggle_pause:
C - - - - - 0x01F2DF 07:F2CF: A5 E9     LDA ram_pause_flag
C - - - - - 0x01F2E1 07:F2D1: 49 20     EOR #$20
C - - - - - 0x01F2E3 07:F2D3: 85 E9     STA ram_pause_flag
C - - - - - 0x01F2E5 07:F2D5: 29 20     AND #$20
C - - - - - 0x01F2E7 07:F2D7: F0 04     BEQ bra_F2DD_unpaused
; if paused
C - - - - - 0x01F2E9 07:F2D9: 09 80     ORA #$80
C - - - - - 0x01F2EB 07:F2DB: D0 02     BNE bra_F2DF    ; jmp
bra_F2DD_unpaused:
C - - - - - 0x01F2ED 07:F2DD: A9 00     LDA #$00
bra_F2DF:
C - - - - - 0x01F2EF 07:F2DF: 85 E9     STA ram_pause_flag
C - - - - - 0x01F2F1 07:F2E1: A9 19     LDA #con_sfx_game_pause
C - - - - - 0x01F2F3 07:F2E3: 85 77     STA ram_0077_t03_sound_id
; bzk optimize, JMP
C - - - - - 0x01F2F5 07:F2E5: 20 04 CB  JSR sub_CB04_play_sound
C - - - - - 0x01F2F8 07:F2E8: 60        RTS



loc_F2E9:
C D 3 - - - 0x01F2F9 07:F2E9: A9 0F     LDA #$0F
C - - - - - 0x01F2FB 07:F2EB: 85 96     STA ram_0096_t04
C - - - - - 0x01F2FD 07:F2ED: AD 23 05  LDA ram_0523_t03
C - - - - - 0x01F300 07:F2F0: F0 2C     BEQ bra_F31E_RTS
C - - - - - 0x01F302 07:F2F2: A5 40     LDA ram_scroll_Y_lo
C - - - - - 0x01F304 07:F2F4: 38        SEC
C - - - - - 0x01F305 07:F2F5: E9 20     SBC #$20
C - - - - - 0x01F307 07:F2F7: 08        PHP
C - - - - - 0x01F308 07:F2F8: C9 E0     CMP #$E0
C - - - - - 0x01F30A 07:F2FA: D0 02     BNE bra_F2FE
C - - - - - 0x01F30C 07:F2FC: A9 D0     LDA #$D0
bra_F2FE:
C - - - - - 0x01F30E 07:F2FE: 28        PLP
C - - - - - 0x01F30F 07:F2FF: 85 40     STA ram_scroll_Y_lo
C - - - - - 0x01F311 07:F301: A5 3F     LDA ram_scroll_Y_hi
C - - - - - 0x01F313 07:F303: E9 00     SBC #$00
C - - - - - 0x01F315 07:F305: 85 3F     STA ram_scroll_Y_hi
C - - - - - 0x01F317 07:F307: 29 01     AND #$01
C - - - - - 0x01F319 07:F309: 0A        ASL
C - - - - - 0x01F31A 07:F30A: 85 67     STA ram_0067_t7B_nametable
C - - - - - 0x01F31C 07:F30C: A5 3A     LDA ram_for_2000
C - - - - - 0x01F31E 07:F30E: 29 FD     AND #$FD
C - - - - - 0x01F320 07:F310: 05 67     ORA ram_0067_t7B_nametable
C - - - - - 0x01F322 07:F312: 85 3A     STA ram_for_2000
C - - - - - 0x01F324 07:F314: A9 81     LDA #$81
C - - - - - 0x01F326 07:F316: 8D F3 03  STA ram_03F3
C - - - - - 0x01F329 07:F319: A9 02     LDA #$02
C - - - - - 0x01F32B 07:F31B: 8D F4 03  STA ram_03F4
bra_F31E_RTS:
C - - - - - 0x01F32E 07:F31E: 60        RTS



sub_F31F:
C - - - - - 0x01F32F 07:F31F: A5 3C     LDA ram_city
C - - - - - 0x01F331 07:F321: C9 18     CMP #$18
C - - - - - 0x01F333 07:F323: F0 01     BEQ bra_F326
C - - - - - 0x01F335 07:F325: 60        RTS
bra_F326:
C - - - - - 0x01F336 07:F326: A5 3A     LDA ram_for_2000
C - - - - - 0x01F338 07:F328: 29 02     AND #$02
C - - - - - 0x01F33A 07:F32A: 8D FA 05  STA ram_05FA_nametable
C - - - - - 0x01F33D 07:F32D: A5 3F     LDA ram_scroll_Y_hi
C - - - - - 0x01F33F 07:F32F: 8D F8 05  STA ram_05F8_t01_save_scroll_Y_hi
C - - - - - 0x01F342 07:F332: A5 40     LDA ram_scroll_Y_lo
C - - - - - 0x01F344 07:F334: 8D F9 05  STA ram_05F9_t01_save_scroll_Y_lo
C - - - - - 0x01F347 07:F337: A9 00     LDA #$00
C - - - - - 0x01F349 07:F339: 85 3F     STA ram_scroll_Y_hi
C - - - - - 0x01F34B 07:F33B: 85 40     STA ram_scroll_Y_lo
C - - - - - 0x01F34D 07:F33D: 8D F7 05  STA ram_05F7_scroll_flag
C - - - - - 0x01F350 07:F340: 8D 00 A0  STA $A000
C - - - - - 0x01F353 07:F343: 85 2D     STA ram_irq_data_index  ; con_irq_data_00
; bzk optimize, JMP
C - - - - - 0x01F355 07:F345: 20 77 D7  JSR sub_D777_prepare_irq_config
C - - - - - 0x01F358 07:F348: 60        RTS



sub_F349:
C - - - - - 0x01F359 07:F349: A5 E4     LDA ram_00E4_flag
C - - - - - 0x01F35B 07:F34B: 30 1A     BMI bra_F367_RTS
C - - - - - 0x01F35D 07:F34D: AD 3D 04  LDA ram_043A_obj_flags + $03
C - - - - - 0x01F360 07:F350: 10 15     BPL bra_F367_RTS
C - - - - - 0x01F362 07:F352: AD 79 05  LDA ram_obj_hp
C - - - - - 0x01F365 07:F355: C9 0A     CMP #$0A
C - - - - - 0x01F367 07:F357: B0 0E     BCS bra_F367_RTS
C - - - - - 0x01F369 07:F359: A9 80     LDA #$80
C - - - - - 0x01F36B 07:F35B: 85 E4     STA ram_00E4_flag
C - - - - - 0x01F36D 07:F35D: A6 A8     LDX ram_plr_index
C - - - - - 0x01F36F 07:F35F: BD 68 F3  LDA tbl_F368,X
C - - - - - 0x01F372 07:F362: 85 77     STA ram_0077_t03_sound_id
; bzk optimize, JMP
C - - - - - 0x01F374 07:F364: 20 04 CB  JSR sub_CB04_play_sound
bra_F367_RTS:
C - - - - - 0x01F377 07:F367: 60        RTS



tbl_F368:
- D 3 - - - 0x01F378 07:F368: 21        .byte con_music_ost_captain   ; 00 captain
- D 3 - - - 0x01F379 07:F369: 22        .byte con_music_ost_hawk   ; 01 hawk



sub_F36A_RTS:
; bzk optimize
C - - - - - 0x01F37A 07:F36A: 60        RTS



sub_F36B_scroll_handler:
loc_F36B_scroll_handler:
C - - - - - 0x01F37B 07:F36B: AD F7 05  LDA ram_05F7_scroll_flag
C - - - - - 0x01F37E 07:F36E: D0 10     BNE bra_F380_RTS
C - - - - - 0x01F380 07:F370: 20 01 F7  JSR sub_F701_scroll_Y_handler
C - - - - - 0x01F383 07:F373: 20 69 F7  JSR sub_F769
C - - - - - 0x01F386 07:F376: A5 8D     LDA ram_008D
C - - - - - 0x01F388 07:F378: D0 06     BNE bra_F380_RTS
C - - - - - 0x01F38A 07:F37A: 20 81 F3  JSR sub_F381_scroll_X_handler
; bzk optimize, JMP
C - - - - - 0x01F38D 07:F37D: 20 BF F4  JSR sub_F4BF
bra_F380_RTS:
C - - - - - 0x01F390 07:F380: 60        RTS



sub_F381_scroll_X_handler:
C - - - - - 0x01F391 07:F381: A5 8D     LDA ram_008D
C - - - - - 0x01F393 07:F383: D0 13     BNE bra_F398_RTS
C - - - - - 0x01F395 07:F385: A5 94     LDA ram_0094_scroll_X_direction
C - - - - - 0x01F397 07:F387: F0 0F     BEQ bra_F398_RTS
C - - - - - 0x01F399 07:F389: 0A        ASL
C - - - - - 0x01F39A 07:F38A: AA        TAX
C - - - - - 0x01F39B 07:F38B: BD 99 F3  LDA tbl_F399_scroll_X_handler,X
C - - - - - 0x01F39E 07:F38E: 85 5B     STA ram_005B_t41_jmp
C - - - - - 0x01F3A0 07:F390: BD 9A F3  LDA tbl_F399_scroll_X_handler + $01,X
C - - - - - 0x01F3A3 07:F393: 85 5C     STA ram_005B_t41_jmp + $01
C - - - - - 0x01F3A5 07:F395: 6C 5B 00  JMP (ram_005B_t41_jmp)
bra_F398_RTS:
ofs_003_scroll_X_F398_00_RTS:
- - - - - - 0x01F3A8 07:F398: 60        RTS



tbl_F399_scroll_X_handler:
- - - - - - 0x01F3A9 07:F399: 98 F3     .word ofs_003_scroll_X_F398_00_RTS   ; unused, see 0x01F397
- D 3 - - - 0x01F3AB 07:F39B: 9F F3     .word ofs_003_scroll_X_F39F_01_left
- D 3 - - - 0x01F3AD 07:F39D: CE F3     .word ofs_003_scroll_X_F3CE_02_right



ofs_003_scroll_X_F39F_01_left:
C - - J - - 0x01F3AF 07:F39F: A5 8E     LDA ram_008E
C - - - - - 0x01F3B1 07:F3A1: D0 0A     BNE bra_F3AD
C - - - - - 0x01F3B3 07:F3A3: A5 89     LDA ram_0089_scroll_X_hi
C - - - - - 0x01F3B5 07:F3A5: C5 42     CMP ram_scroll_X_hi
C - - - - - 0x01F3B7 07:F3A7: F0 0C     BEQ bra_F3B5
C - - - - - 0x01F3B9 07:F3A9: 90 11     BCC bra_F3BC
C - - - - - 0x01F3BB 07:F3AB: B0 0E     BCS bra_F3BB_RTS    ; jmp
bra_F3AD:
C - - - - - 0x01F3BD 07:F3AD: A5 94     LDA ram_0094_scroll_X_direction
C - - - - - 0x01F3BF 07:F3AF: C5 95     CMP ram_0095_prev_scroll_X_direction
C - - - - - 0x01F3C1 07:F3B1: F0 08     BEQ bra_F3BB_RTS
- - - - - - 0x01F3C3 07:F3B3: D0 07     BNE bra_F3BC    ; jmp
bra_F3B5:
C - - - - - 0x01F3C5 07:F3B5: A5 8A     LDA ram_008A_scroll_X_lo
C - - - - - 0x01F3C7 07:F3B7: C5 43     CMP ram_scroll_X_lo
C - - - - - 0x01F3C9 07:F3B9: 90 01     BCC bra_F3BC
bra_F3BB_RTS:
C - - - - - 0x01F3CB 07:F3BB: 60        RTS
bra_F3BC:
C - - - - - 0x01F3CC 07:F3BC: A9 02     LDA #$02
C - - - - - 0x01F3CE 07:F3BE: 85 8E     STA ram_008E
; bzk optimize, useless LDA + STA + STA
C - - - - - 0x01F3D0 07:F3C0: A9 00     LDA #$00
C - - - - - 0x01F3D2 07:F3C2: 85 90     STA ram_0090_array_index
C - - - - - 0x01F3D4 07:F3C4: 85 91     STA ram_0091_useless
; 
C - - - - - 0x01F3D6 07:F3C6: A5 94     LDA ram_0094_scroll_X_direction
C - - - - - 0x01F3D8 07:F3C8: 85 95     STA ram_0095_prev_scroll_X_direction
; bzk optimize, JMP
C - - - - - 0x01F3DA 07:F3CA: 20 FD F3  JSR sub_F3FD
C - - - - - 0x01F3DD 07:F3CD: 60        RTS



sub_F3CE:
ofs_003_scroll_X_F3CE_02_right:
C - - - - - 0x01F3DE 07:F3CE: A5 8E     LDA ram_008E
C - - - - - 0x01F3E0 07:F3D0: D0 0A     BNE bra_F3DC
C - - - - - 0x01F3E2 07:F3D2: A5 89     LDA ram_0089_scroll_X_hi
C - - - - - 0x01F3E4 07:F3D4: C5 42     CMP ram_scroll_X_hi
C - - - - - 0x01F3E6 07:F3D6: F0 0C     BEQ bra_F3E4
C - - - - - 0x01F3E8 07:F3D8: B0 11     BCS bra_F3EB
- - - - - - 0x01F3EA 07:F3DA: 90 0E     BCC bra_F3EA_RTS    ; jmp
bra_F3DC:
C - - - - - 0x01F3EC 07:F3DC: A5 94     LDA ram_0094_scroll_X_direction
C - - - - - 0x01F3EE 07:F3DE: C5 95     CMP ram_0095_prev_scroll_X_direction
C - - - - - 0x01F3F0 07:F3E0: F0 08     BEQ bra_F3EA_RTS
- - - - - - 0x01F3F2 07:F3E2: D0 07     BNE bra_F3EB    ; jmp
bra_F3E4:
C - - - - - 0x01F3F4 07:F3E4: A5 43     LDA ram_scroll_X_lo
C - - - - - 0x01F3F6 07:F3E6: C5 8A     CMP ram_008A_scroll_X_lo
C - - - - - 0x01F3F8 07:F3E8: 90 01     BCC bra_F3EB
bra_F3EA_RTS:
C - - - - - 0x01F3FA 07:F3EA: 60        RTS
bra_F3EB:
C - - - - - 0x01F3FB 07:F3EB: A9 02     LDA #$02
C - - - - - 0x01F3FD 07:F3ED: 85 8E     STA ram_008E
; bzk optimize, useless LDA + STA + STA
C - - - - - 0x01F3FF 07:F3EF: A9 00     LDA #$00
C - - - - - 0x01F401 07:F3F1: 85 90     STA ram_0090_array_index
C - - - - - 0x01F403 07:F3F3: 85 91     STA ram_0091_useless
; 
C - - - - - 0x01F405 07:F3F5: A5 94     LDA ram_0094_scroll_X_direction
C - - - - - 0x01F407 07:F3F7: 85 95     STA ram_0095_prev_scroll_X_direction
; bzk optimize, JMP
C - - - - - 0x01F409 07:F3F9: 20 FD F3  JSR sub_F3FD
C - - - - - 0x01F40C 07:F3FC: 60        RTS



sub_F3FD:
C - - - - - 0x01F40D 07:F3FD: A5 8B     LDA ram_008B_scroll_Y_hi
C - - - - - 0x01F40F 07:F3FF: 85 68     STA ram_0068_t58
C - - - - - 0x01F411 07:F401: A5 8C     LDA ram_008C_scroll_Y_lo
C - - - - - 0x01F413 07:F403: 85 67     STA ram_0067_t7D
C - - - - - 0x01F415 07:F405: 20 51 F4  JSR sub_F451
C - - - - - 0x01F418 07:F408: 20 F0 D0  JSR sub_D0F0
C - - - - - 0x01F41B 07:F40B: 20 8F F4  JSR sub_F48F_calculate_data_index
C - - - - - 0x01F41E 07:F40E: A5 67     LDA ram_0067_t7D
; / 08
C - - - - - 0x01F420 07:F410: 4A        LSR
C - - - - - 0x01F421 07:F411: 4A        LSR
C - - - - - 0x01F422 07:F412: 4A        LSR
; 
C - - - - - 0x01F423 07:F413: AA        TAX
C - - - - - 0x01F424 07:F414: A9 1E     LDA #$1E
C - - - - - 0x01F426 07:F416: 85 6C     STA ram_006C_t16_loop_counter
C - - - - - 0x01F428 07:F418: A9 00     LDA #$00
C - - - - - 0x01F42A 07:F41A: 85 90     STA ram_0090_array_index
loc_F41C_loop:
C D 3 - - - 0x01F42C 07:F41C: A5 4C     LDA ram_prg_bank_city
C - - - - - 0x01F42E 07:F41E: 85 9C     STA ram_prg_bank_8000
C - - - - - 0x01F430 07:F420: 20 41 DB  JSR sub_DB41_prg_bankswitch_8000
bra_F423_loop:
C - - - - - 0x01F433 07:F423: A4 6B     LDY ram_006B_t05_data_index
C - - - - - 0x01F435 07:F425: B1 7E     LDA (ram_007E_t01_data),Y
C - - - - - 0x01F437 07:F427: 9D 94 03  STA ram_0394_array,X
C - - - - - 0x01F43A 07:F42A: E8        INX
C - - - - - 0x01F43B 07:F42B: 8A        TXA
C - - - - - 0x01F43C 07:F42C: 29 01     AND #$01
C - - - - - 0x01F43E 07:F42E: D0 0B     BNE bra_F43B
C - - - - - 0x01F440 07:F430: A5 6B     LDA ram_006B_t05_data_index
C - - - - - 0x01F442 07:F432: 18        CLC
C - - - - - 0x01F443 07:F433: 69 10     ADC #$10
C - - - - - 0x01F445 07:F435: 85 6B     STA ram_006B_t05_data_index
C - - - - - 0x01F447 07:F437: C9 F0     CMP #$F0
C - - - - - 0x01F449 07:F439: B0 05     BCS bra_F440
bra_F43B:
C - - - - - 0x01F44B 07:F43B: C6 6C     DEC ram_006C_t16_loop_counter
C - - - - - 0x01F44D 07:F43D: D0 E4     BNE bra_F423_loop
bra_F43F_RTS:
C - - - - - 0x01F44F 07:F43F: 60        RTS
bra_F440:
C - - - - - 0x01F450 07:F440: C6 6C     DEC ram_006C_t16_loop_counter
C - - - - - 0x01F452 07:F442: F0 FB     BEQ bra_F43F_RTS
C - - - - - 0x01F454 07:F444: 18        CLC
C - - - - - 0x01F455 07:F445: 69 10     ADC #$10
C - - - - - 0x01F457 07:F447: 85 6B     STA ram_006B_t05_data_index
C - - - - - 0x01F459 07:F449: 20 E9 D0  JSR sub_D0E9
C - - - - - 0x01F45C 07:F44C: A2 00     LDX #$00
C - - - - - 0x01F45E 07:F44E: 4C 1C F4  JMP loc_F41C_loop



sub_F451:
C - - - - - 0x01F461 07:F451: A5 95     LDA ram_0095_prev_scroll_X_direction
C - - - - - 0x01F463 07:F453: C9 02     CMP #$02
C - - - - - 0x01F465 07:F455: F0 1B     BEQ bra_F472_scroll_left
; if scroll right
C - - - - - 0x01F467 07:F457: A5 68     LDA ram_0068_t58
; * 10
C - - - - - 0x01F469 07:F459: 0A        ASL
C - - - - - 0x01F46A 07:F45A: 0A        ASL
C - - - - - 0x01F46B 07:F45B: 0A        ASL
C - - - - - 0x01F46C 07:F45C: 0A        ASL
; 
C - - - - - 0x01F46D 07:F45D: 85 69     STA ram_0069_t31_data_index_offset
C - - - - - 0x01F46F 07:F45F: A5 8A     LDA ram_008A_scroll_X_lo
C - - - - - 0x01F471 07:F461: 18        CLC
C - - - - - 0x01F472 07:F462: 69 10     ADC #< $0010
C - - - - - 0x01F474 07:F464: A5 89     LDA ram_0089_scroll_X_hi
C - - - - - 0x01F476 07:F466: 69 00     ADC #> $0010
C - - - - - 0x01F478 07:F468: 29 0F     AND #$0F
C - - - - - 0x01F47A 07:F46A: 18        CLC
C - - - - - 0x01F47B 07:F46B: 65 69     ADC ram_0069_t31_data_index_offset
C - - - - - 0x01F47D 07:F46D: 85 50     STA ram_0050_data_index
C - - - - - 0x01F47F 07:F46F: E6 50     INC ram_0050_data_index
C - - - - - 0x01F481 07:F471: 60        RTS
bra_F472_scroll_left:
C - - - - - 0x01F482 07:F472: A5 68     LDA ram_0068_t58
; * 10
C - - - - - 0x01F484 07:F474: 0A        ASL
C - - - - - 0x01F485 07:F475: 0A        ASL
C - - - - - 0x01F486 07:F476: 0A        ASL
C - - - - - 0x01F487 07:F477: 0A        ASL
; 
C - - - - - 0x01F488 07:F478: 85 69     STA ram_0069_t32_data_index_offset
C - - - - - 0x01F48A 07:F47A: A5 8A     LDA ram_008A_scroll_X_lo
C - - - - - 0x01F48C 07:F47C: 38        SEC
C - - - - - 0x01F48D 07:F47D: E9 10     SBC #< $0010
C - - - - - 0x01F48F 07:F47F: A5 89     LDA ram_0089_scroll_X_hi
C - - - - - 0x01F491 07:F481: E9 00     SBC #> $0010
C - - - - - 0x01F493 07:F483: 10 02     BPL bra_F487
C - - - - - 0x01F495 07:F485: A9 00     LDA #$00
bra_F487:
C - - - - - 0x01F497 07:F487: 29 0F     AND #$0F
C - - - - - 0x01F499 07:F489: 18        CLC
C - - - - - 0x01F49A 07:F48A: 65 69     ADC ram_0069_t32_data_index_offset
C - - - - - 0x01F49C 07:F48C: 85 50     STA ram_0050_data_index
C - - - - - 0x01F49E 07:F48E: 60        RTS



sub_F48F_calculate_data_index:
; out
    ; ram_006B_t05_data_index
C - - - - - 0x01F49F 07:F48F: A5 95     LDA ram_0095_prev_scroll_X_direction
C - - - - - 0x01F4A1 07:F491: C9 02     CMP #$02
C - - - - - 0x01F4A3 07:F493: F0 15     BEQ bra_F4AA_scroll_left
; if scroll right
C - - - - - 0x01F4A5 07:F495: A5 8A     LDA ram_008A_scroll_X_lo
C - - - - - 0x01F4A7 07:F497: 18        CLC
C - - - - - 0x01F4A8 07:F498: 69 10     ADC #$10
; / 10
C - - - - - 0x01F4AA 07:F49A: 4A        LSR
C - - - - - 0x01F4AB 07:F49B: 4A        LSR
C - - - - - 0x01F4AC 07:F49C: 4A        LSR
C - - - - - 0x01F4AD 07:F49D: 4A        LSR
; 
C - - - - - 0x01F4AE 07:F49E: 85 6B     STA ram_006B_t26
C - - - - - 0x01F4B0 07:F4A0: A5 67     LDA ram_0067_t7D
C - - - - - 0x01F4B2 07:F4A2: 29 F0     AND #$F0
C - - - - - 0x01F4B4 07:F4A4: 18        CLC
C - - - - - 0x01F4B5 07:F4A5: 65 6B     ADC ram_006B_t26
C - - - - - 0x01F4B7 07:F4A7: 85 6B     STA ram_006B_t05_data_index
C - - - - - 0x01F4B9 07:F4A9: 60        RTS
bra_F4AA_scroll_left:
C - - - - - 0x01F4BA 07:F4AA: A5 8A     LDA ram_008A_scroll_X_lo
C - - - - - 0x01F4BC 07:F4AC: 38        SEC
C - - - - - 0x01F4BD 07:F4AD: E9 10     SBC #$10
; / 10
C - - - - - 0x01F4BF 07:F4AF: 4A        LSR
C - - - - - 0x01F4C0 07:F4B0: 4A        LSR
C - - - - - 0x01F4C1 07:F4B1: 4A        LSR
C - - - - - 0x01F4C2 07:F4B2: 4A        LSR
; 
C - - - - - 0x01F4C3 07:F4B3: 85 6B     STA ram_006B_t27
C - - - - - 0x01F4C5 07:F4B5: A5 67     LDA ram_0067_t7D
C - - - - - 0x01F4C7 07:F4B7: 29 F0     AND #$F0
C - - - - - 0x01F4C9 07:F4B9: 18        CLC
C - - - - - 0x01F4CA 07:F4BA: 65 6B     ADC ram_006B_t27
C - - - - - 0x01F4CC 07:F4BC: 85 6B     STA ram_006B_t05_data_index
C - - - - - 0x01F4CE 07:F4BE: 60        RTS



sub_F4BF:
C - - - - - 0x01F4CF 07:F4BF: A5 8D     LDA ram_008D
C - - - - - 0x01F4D1 07:F4C1: D0 1E     BNE bra_F4E1_RTS
C - - - - - 0x01F4D3 07:F4C3: A5 8E     LDA ram_008E
C - - - - - 0x01F4D5 07:F4C5: F0 1A     BEQ bra_F4E1_RTS
C - - - - - 0x01F4D7 07:F4C7: 20 F0 F4  JSR sub_F4F0
C - - - - - 0x01F4DA 07:F4CA: C6 8E     DEC ram_008E
C - - - - - 0x01F4DC 07:F4CC: D0 13     BNE bra_F4E1_RTS
C - - - - - 0x01F4DE 07:F4CE: A5 95     LDA ram_0095_prev_scroll_X_direction
C - - - - - 0x01F4E0 07:F4D0: C9 02     CMP #$02
C - - - - - 0x01F4E2 07:F4D2: F0 0E     BEQ bra_F4E2_scroll_left
; if scroll right
C - - - - - 0x01F4E4 07:F4D4: A5 8A     LDA ram_008A_scroll_X_lo
C - - - - - 0x01F4E6 07:F4D6: 18        CLC
C - - - - - 0x01F4E7 07:F4D7: 69 08     ADC #< $0008
C - - - - - 0x01F4E9 07:F4D9: 85 8A     STA ram_008A_scroll_X_lo
C - - - - - 0x01F4EB 07:F4DB: A5 89     LDA ram_0089_scroll_X_hi
C - - - - - 0x01F4ED 07:F4DD: 69 00     ADC #> $0008
C - - - - - 0x01F4EF 07:F4DF: 85 89     STA ram_0089_scroll_X_hi
bra_F4E1_RTS:
C - - - - - 0x01F4F1 07:F4E1: 60        RTS
bra_F4E2_scroll_left:
C - - - - - 0x01F4F2 07:F4E2: A5 8A     LDA ram_008A_scroll_X_lo
C - - - - - 0x01F4F4 07:F4E4: 38        SEC
C - - - - - 0x01F4F5 07:F4E5: E9 08     SBC #< $0008
C - - - - - 0x01F4F7 07:F4E7: 85 8A     STA ram_008A_scroll_X_lo
C - - - - - 0x01F4F9 07:F4E9: A5 89     LDA ram_0089_scroll_X_hi
C - - - - - 0x01F4FB 07:F4EB: E9 00     SBC #> $0008
C - - - - - 0x01F4FD 07:F4ED: 85 89     STA ram_0089_scroll_X_hi
C - - - - - 0x01F4FF 07:F4EF: 60        RTS



sub_F4F0:
; bzk optimize, TAX instead of LDX (A is already from 008E)
C - - - - - 0x01F500 07:F4F0: A6 8E     LDX ram_008E
C - - - - - 0x01F502 07:F4F2: BD 62 F5  LDA tbl_F563 - $01,X
C - - - - - 0x01F505 07:F4F5: C9 FF     CMP #$FF
C - - - - - 0x01F507 07:F4F7: F0 65     BEQ bra_F55E_FF
; A = 1E
C - - - - - 0x01F509 07:F4F9: 48        PHA
C - - - - - 0x01F50A 07:F4FA: 20 13 D1  JSR sub_D113
C - - - - - 0x01F50D 07:F4FD: A9 03     LDA #con_prg_bank + $03
C - - - - - 0x01F50F 07:F4FF: 85 9C     STA ram_prg_bank_8000
C - - - - - 0x01F511 07:F501: 20 41 DB  JSR sub_DB41_prg_bankswitch_8000
C - - - - - 0x01F514 07:F504: 68        PLA
; bzk optimize, A is always 1E
C - - - - - 0x01F515 07:F505: 85 67     STA ram_0067_t7E_loop_counter
C - - - - - 0x01F517 07:F507: 85 87     STA ram_0087_useless_buffer_index_1E
C - - - - - 0x01F519 07:F509: A9 00     LDA #$00
C - - - - - 0x01F51B 07:F50B: 85 68     STA ram_0068_t59_buffer_index
C - - - - - 0x01F51D 07:F50D: A5 8A     LDA ram_008A_scroll_X_lo
C - - - - - 0x01F51F 07:F50F: 29 08     AND #$08
C - - - - - 0x01F521 07:F511: 85 69     STA ram_0069_t02_flag
bra_F513_loop:
C - - - - - 0x01F523 07:F513: A9 00     LDA #$00
C - - - - - 0x01F525 07:F515: 85 6A     STA ram_006A_t01
C - - - - - 0x01F527 07:F517: A4 90     LDY ram_0090_array_index
C - - - - - 0x01F529 07:F519: B9 94 03  LDA ram_0394_array,Y
; * 04
C - - - - - 0x01F52C 07:F51C: 0A        ASL
C - - - - - 0x01F52D 07:F51D: 26 6A     ROL ram_006A_t01
C - - - - - 0x01F52F 07:F51F: 0A        ASL
C - - - - - 0x01F530 07:F520: 26 6A     ROL ram_006A_t01
; 
C - - - - - 0x01F532 07:F522: 18        CLC
C - - - - - 0x01F533 07:F523: 65 80     ADC ram_0080_t02_ptr_lo
C - - - - - 0x01F535 07:F525: 85 5B     STA ram_005B_t15_data
C - - - - - 0x01F537 07:F527: A5 81     LDA ram_0081_t02_ptr_hi
C - - - - - 0x01F539 07:F529: 65 6A     ADC ram_006A_t01
C - - - - - 0x01F53B 07:F52B: 85 5C     STA ram_005B_t15_data + $01
C - - - - - 0x01F53D 07:F52D: A5 90     LDA ram_0090_array_index
C - - - - - 0x01F53F 07:F52F: 29 01     AND #$01
C - - - - - 0x01F541 07:F531: 49 01     EOR #$01
C - - - - - 0x01F543 07:F533: AA        TAX
C - - - - - 0x01F544 07:F534: E6 90     INC ram_0090_array_index
C - - - - - 0x01F546 07:F536: A5 69     LDA ram_0069_t02_flag
C - - - - - 0x01F548 07:F538: F0 05     BEQ bra_F53F
C - - - - - 0x01F54A 07:F53A: BD 67 F5  LDA tbl_F567_data_index_2,X
C - - - - - 0x01F54D 07:F53D: D0 03     BNE bra_F542    ; jmp
bra_F53F:
C - - - - - 0x01F54F 07:F53F: BD 65 F5  LDA tbl_F565_data_index_1,X
bra_F542:
C - - - - - 0x01F552 07:F542: A8        TAY
C - - - - - 0x01F553 07:F543: B1 5B     LDA (ram_005B_t15_data),Y
; bzk optimize, delete STA + LDA
C - - - - - 0x01F555 07:F545: 85 6A     STA ram_006A_t28
C - - - - - 0x01F557 07:F547: A6 68     LDX ram_0068_t59_buffer_index
C - - - - - 0x01F559 07:F549: A5 6A     LDA ram_006A_t28
; 
C - - - - - 0x01F55B 07:F54B: 9D 08 03  STA ram_0308_ppu_buffer,X
C - - - - - 0x01F55E 07:F54E: E6 68     INC ram_0068_t59_buffer_index
C - - - - - 0x01F560 07:F550: C6 67     DEC ram_0067_t7E_loop_counter
C - - - - - 0x01F562 07:F552: D0 BF     BNE bra_F513_loop
C - - - - - 0x01F564 07:F554: 20 69 F5  JSR sub_F569
C - - - - - 0x01F567 07:F557: A5 02     LDA ram_buffers_flags
C - - - - - 0x01F569 07:F559: 09 20     ORA #con_buffer_ready_20
C - - - - - 0x01F56B 07:F55B: 85 02     STA ram_buffers_flags
C - - - - - 0x01F56D 07:F55D: 60        RTS
bra_F55E_FF:
; bzk optimize, JMP
C - - - - - 0x01F56E 07:F55E: 20 B5 F5  JSR sub_F5B5
C - - - - - 0x01F571 07:F561: 60        RTS


; bzk garbage
- - - - - - 0x01F572 07:F562: 00        .byte $00   ; 



tbl_F563:
- D 3 - - - 0x01F573 07:F563: 1E        .byte $1E   ; 01 
- D 3 - - - 0x01F574 07:F564: FF        .byte $FF   ; 02 



tbl_F565_data_index_1:
- D 3 - - - 0x01F575 07:F565: 02        .byte $02   ; 00 
- D 3 - - - 0x01F576 07:F566: 00        .byte $00   ; 01 



tbl_F567_data_index_2:
- D 3 - - - 0x01F577 07:F567: 03        .byte $03   ; 00 
- D 3 - - - 0x01F578 07:F568: 01        .byte $01   ; 01 



sub_F569:
C - - - - - 0x01F579 07:F569: A5 95     LDA ram_0095_prev_scroll_X_direction
C - - - - - 0x01F57B 07:F56B: C9 01     CMP #$01
C - - - - - 0x01F57D 07:F56D: F0 10     BEQ bra_F57F_scroll_right
; if scroll left
C - - - - - 0x01F57F 07:F56F: A5 8A     LDA ram_008A_scroll_X_lo
C - - - - - 0x01F581 07:F571: 38        SEC
C - - - - - 0x01F582 07:F572: E9 10     SBC #< $0010
C - - - - - 0x01F584 07:F574: 48        PHA ; 1
C - - - - - 0x01F585 07:F575: A5 89     LDA ram_0089_scroll_X_hi
C - - - - - 0x01F587 07:F577: E9 00     SBC #> $0010
C - - - - - 0x01F589 07:F579: 29 01     AND #$01
C - - - - - 0x01F58B 07:F57B: F0 14     BEQ bra_F591
C - - - - - 0x01F58D 07:F57D: D0 0E     BNE bra_F58D    ; jmp
bra_F57F_scroll_right:
C - - - - - 0x01F58F 07:F57F: A5 8A     LDA ram_008A_scroll_X_lo
C - - - - - 0x01F591 07:F581: 18        CLC
C - - - - - 0x01F592 07:F582: 69 10     ADC #< $0010
C - - - - - 0x01F594 07:F584: 48        PHA ; 1
C - - - - - 0x01F595 07:F585: A5 89     LDA ram_0089_scroll_X_hi
C - - - - - 0x01F597 07:F587: 69 00     ADC #> $0010
C - - - - - 0x01F599 07:F589: 29 01     AND #$01
C - - - - - 0x01F59B 07:F58B: D0 04     BNE bra_F591
bra_F58D:
C - - - - - 0x01F59D 07:F58D: A9 24     LDA #$24    ; > 24xx
C - - - - - 0x01F59F 07:F58F: D0 02     BNE bra_F593    ; jmp
bra_F591:
C - - - - - 0x01F5A1 07:F591: A9 20     LDA #$20    ; > 20xx
bra_F593:
; bzk optimize, instead of code up to 0x01F5BE use mine
                                       ;STA ram_0085_ppu_hi
                                       ;PLA ; 1
; / 08
                                       ;LSR
                                       ;LSR
                                       ;LSR
                                       ;STA ram_0084_ppu_lo
                                       ;RTS
C - - - - - 0x01F5A3 07:F593: 85 67     STA ram_0067_t0F_ppu_hi
C - - - - - 0x01F5A5 07:F595: 68        PLA ; 1
; / 08
C - - - - - 0x01F5A6 07:F596: 4A        LSR
C - - - - - 0x01F5A7 07:F597: 4A        LSR
C - - - - - 0x01F5A8 07:F598: 4A        LSR
; 
C - - - - - 0x01F5A9 07:F599: 85 68     STA ram_0068_t21_ppu_lo
C - - - - - 0x01F5AB 07:F59B: A5 8E     LDA ram_008E
C - - - - - 0x01F5AD 07:F59D: 0A        ASL
C - - - - - 0x01F5AE 07:F59E: AA        TAX
C - - - - - 0x01F5AF 07:F59F: BD AF F5  LDA tbl_F5AF___0000,X
C - - - - - 0x01F5B2 07:F5A2: 18        CLC
C - - - - - 0x01F5B3 07:F5A3: 65 68     ADC ram_0068_t21_ppu_lo
C - - - - - 0x01F5B5 07:F5A5: 85 84     STA ram_0084_ppu_lo
C - - - - - 0x01F5B7 07:F5A7: BD B0 F5  LDA tbl_F5AF___0000 + $01,X
C - - - - - 0x01F5BA 07:F5AA: 65 67     ADC ram_0067_t0F_ppu_hi
C - - - - - 0x01F5BC 07:F5AC: 85 85     STA ram_0085_ppu_hi
C - - - - - 0x01F5BE 07:F5AE: 60        RTS


; bzk optimize, same bytes
tbl_F5AF___0000:
- - - - - - 0x01F5BF 07:F5AF: 00 00     .word $0000 ; 00 
- D 3 - - - 0x01F5C1 07:F5B1: 00 00     .word $0000 ; 01 
- - - - - - 0x01F5C3 07:F5B3: 00 00     .word $0000 ; 02 



sub_F5B5:
C - - - - - 0x01F5C5 07:F5B5: 20 7F F6  JSR sub_F67F
C - - - - - 0x01F5C8 07:F5B8: 20 BF F5  JSR sub_F5BF
; bzk optimize, JMP
C - - - - - 0x01F5CB 07:F5BB: 20 42 F6  JSR sub_F642
C - - - - - 0x01F5CE 07:F5BE: 60        RTS



sub_F5BF:
C - - - - - 0x01F5CF 07:F5BF: A5 95     LDA ram_0095_prev_scroll_X_direction
C - - - - - 0x01F5D1 07:F5C1: C9 02     CMP #$02
C - - - - - 0x01F5D3 07:F5C3: F0 08     BEQ bra_F5CD_scroll_left
; if scroll right
C - - - - - 0x01F5D5 07:F5C5: A5 8A     LDA ram_008A_scroll_X_lo
C - - - - - 0x01F5D7 07:F5C7: 18        CLC
C - - - - - 0x01F5D8 07:F5C8: 69 10     ADC #$10
C - - - - - 0x01F5DA 07:F5CA: 4C D2 F5  JMP loc_F5D2
bra_F5CD_scroll_left:
C - - - - - 0x01F5DD 07:F5CD: A5 8A     LDA ram_008A_scroll_X_lo
C - - - - - 0x01F5DF 07:F5CF: 38        SEC
C - - - - - 0x01F5E0 07:F5D0: E9 10     SBC #$10
loc_F5D2:
C D 3 - - - 0x01F5E2 07:F5D2: 29 10     AND #$10
C - - - - - 0x01F5E4 07:F5D4: 85 67     STA ram_0067_t7F_flag
C - - - - - 0x01F5E6 07:F5D6: A9 00     LDA #$00
C - - - - - 0x01F5E8 07:F5D8: 85 6F     STA ram_006F_t12_array_index
bra_F5DA_loop:
C - - - - - 0x01F5EA 07:F5DA: A4 6F     LDY ram_006F_t12_array_index
C - - - - - 0x01F5EC 07:F5DC: B9 94 03  LDA ram_0394_array,Y
C - - - - - 0x01F5EF 07:F5DF: 85 68     STA ram_0068_t60_data_index
C - - - - - 0x01F5F1 07:F5E1: 20 F1 F6  JSR sub_F6F1
C - - - - - 0x01F5F4 07:F5E4: A5 6F     LDA ram_006F_t12_array_index
C - - - - - 0x01F5F6 07:F5E6: 4A        LSR
C - - - - - 0x01F5F7 07:F5E7: 29 01     AND #$01
C - - - - - 0x01F5F9 07:F5E9: AA        TAX
C - - - - - 0x01F5FA 07:F5EA: A5 67     LDA ram_0067_t7F_flag
C - - - - - 0x01F5FC 07:F5EC: F0 0A     BEQ bra_F5F8
C - - - - - 0x01F5FE 07:F5EE: BD 3E F6  LDA tbl_F63E,X
C - - - - - 0x01F601 07:F5F1: 85 6B     STA ram_006B_t28
C - - - - - 0x01F603 07:F5F3: BD 3A F6  LDA tbl_F63A,X
C - - - - - 0x01F606 07:F5F6: D0 08     BNE bra_F600
bra_F5F8:
C - - - - - 0x01F608 07:F5F8: BD 40 F6  LDA tbl_F640,X
C - - - - - 0x01F60B 07:F5FB: 85 6B     STA ram_006B_t28
C - - - - - 0x01F60D 07:F5FD: BD 3C F6  LDA tbl_F63C,X
bra_F600:
C - - - - - 0x01F610 07:F600: 85 6A     STA ram_006A_t23
C - - - - - 0x01F612 07:F602: A5 69     LDA ram_0069_t33
C - - - - - 0x01F614 07:F604: A6 6B     LDX ram_006B_t28
C - - - - - 0x01F616 07:F606: F0 05     BEQ bra_F60D
bra_F608_loop:
; * 02
C - - - - - 0x01F618 07:F608: 0A        ASL
C - - - - - 0x01F619 07:F609: 0A        ASL
; 
C - - - - - 0x01F61A 07:F60A: CA        DEX
C - - - - - 0x01F61B 07:F60B: D0 FB     BNE bra_F608_loop
bra_F60D:
C - - - - - 0x01F61D 07:F60D: 85 69     STA ram_0069_t34
C - - - - - 0x01F61F 07:F60F: A5 6F     LDA ram_006F_t12_array_index
C - - - - - 0x01F621 07:F611: 4A        LSR
C - - - - - 0x01F622 07:F612: 29 0E     AND #$0E
; * 02
C - - - - - 0x01F624 07:F614: 0A        ASL
C - - - - - 0x01F625 07:F615: 0A        ASL
; bzk optimize, add directly to 005F without 006E
C - - - - - 0x01F626 07:F616: 85 6E     STA ram_006E_t21
C - - - - - 0x01F628 07:F618: A5 5F     LDA ram_005F_t10_data
C - - - - - 0x01F62A 07:F61A: 18        CLC
C - - - - - 0x01F62B 07:F61B: 65 6E     ADC ram_006E_t21
C - - - - - 0x01F62D 07:F61D: 85 65     STA ram_0065_t01_data
C - - - - - 0x01F62F 07:F61F: A5 60     LDA ram_005F_t10_data + $01
C - - - - - 0x01F631 07:F621: 69 00     ADC #$00
C - - - - - 0x01F633 07:F623: 85 66     STA ram_0065_t01_data + $01
C - - - - - 0x01F635 07:F625: A0 00     LDY #$00
C - - - - - 0x01F637 07:F627: B1 65     LDA (ram_0065_t01_data),Y
C - - - - - 0x01F639 07:F629: 25 6A     AND ram_006A_t23
C - - - - - 0x01F63B 07:F62B: 05 69     ORA ram_0069_t34
C - - - - - 0x01F63D 07:F62D: 91 65     STA (ram_0065_t01_data),Y
C - - - - - 0x01F63F 07:F62F: E6 6F     INC ram_006F_t12_array_index
C - - - - - 0x01F641 07:F631: E6 6F     INC ram_006F_t12_array_index
C - - - - - 0x01F643 07:F633: A5 6F     LDA ram_006F_t12_array_index
C - - - - - 0x01F645 07:F635: C9 1E     CMP #$1E
C - - - - - 0x01F647 07:F637: 90 A1     BCC bra_F5DA_loop
C - - - - - 0x01F649 07:F639: 60        RTS



tbl_F63A:
- D 3 - - - 0x01F64A 07:F63A: F3        .byte $F3   ; 00 
- D 3 - - - 0x01F64B 07:F63B: 3F        .byte $3F   ; 01 



tbl_F63C:
- D 3 - - - 0x01F64C 07:F63C: FC        .byte $FC   ; 00 
- D 3 - - - 0x01F64D 07:F63D: CF        .byte $CF   ; 01 



tbl_F63E:
- D 3 - - - 0x01F64E 07:F63E: 01        .byte $01   ; 00 
- D 3 - - - 0x01F64F 07:F63F: 03        .byte $03   ; 01 



tbl_F640:
- D 3 - - - 0x01F650 07:F640: 00        .byte $00   ; 00 
- D 3 - - - 0x01F651 07:F641: 02        .byte $02   ; 01 



sub_F642:
C - - - - - 0x01F652 07:F642: A0 00     LDY #$00
C - - - - - 0x01F654 07:F644: A2 00     LDX #$00
bra_F646_loop:
C - - - - - 0x01F656 07:F646: B1 5F     LDA (ram_005F_t10_data),Y
C - - - - - 0x01F658 07:F648: 9D 66 03  STA ram_0364_ppu_buffer + $02,X
C - - - - - 0x01F65B 07:F64B: A5 5E     LDA ram_005E_t04_ppu_hi
C - - - - - 0x01F65D 07:F64D: 9D 64 03  STA ram_0364_ppu_buffer,X
C - - - - - 0x01F660 07:F650: A5 5D     LDA ram_005D_t28_ppu_lo
C - - - - - 0x01F662 07:F652: 9D 65 03  STA ram_0364_ppu_buffer + $01,X
C - - - - - 0x01F665 07:F655: A5 5F     LDA ram_005F_t10_data
C - - - - - 0x01F667 07:F657: 18        CLC
C - - - - - 0x01F668 07:F658: 69 08     ADC #< $0008
C - - - - - 0x01F66A 07:F65A: 85 5F     STA ram_005F_t10_data
C - - - - - 0x01F66C 07:F65C: A5 60     LDA ram_005F_t10_data + $01
C - - - - - 0x01F66E 07:F65E: 69 00     ADC #> $0008
C - - - - - 0x01F670 07:F660: 85 60     STA ram_005F_t10_data + $01
C - - - - - 0x01F672 07:F662: A5 5D     LDA ram_005D_t28_ppu_lo
C - - - - - 0x01F674 07:F664: 18        CLC
C - - - - - 0x01F675 07:F665: 69 08     ADC #< $0008
C - - - - - 0x01F677 07:F667: 85 5D     STA ram_005D_t28_ppu_lo
C - - - - - 0x01F679 07:F669: A5 5E     LDA ram_005E_t04_ppu_hi
C - - - - - 0x01F67B 07:F66B: 69 00     ADC #> $0008
C - - - - - 0x01F67D 07:F66D: 85 5E     STA ram_005E_t04_ppu_hi
C - - - - - 0x01F67F 07:F66F: E8        INX
C - - - - - 0x01F680 07:F670: E8        INX
C - - - - - 0x01F681 07:F671: E8        INX
C - - - - - 0x01F682 07:F672: E0 18     CPX #$18
C - - - - - 0x01F684 07:F674: 90 D0     BCC bra_F646_loop
; bzk optimize, always 18
C - - - - - 0x01F686 07:F676: 86 88     STX ram_0088_useless_buffer_index_18
C - - - - - 0x01F688 07:F678: A9 40     LDA #con_buffer_ready_40
C - - - - - 0x01F68A 07:F67A: 05 02     ORA ram_buffers_flags
C - - - - - 0x01F68C 07:F67C: 85 02     STA ram_buffers_flags
C - - - - - 0x01F68E 07:F67E: 60        RTS



sub_F67F:
C - - - - - 0x01F68F 07:F67F: A5 95     LDA ram_0095_prev_scroll_X_direction
C - - - - - 0x01F691 07:F681: C9 01     CMP #$01
C - - - - - 0x01F693 07:F683: F0 10     BEQ bra_F695_scroll_right
; if scroll left
C - - - - - 0x01F695 07:F685: A5 8A     LDA ram_008A_scroll_X_lo
C - - - - - 0x01F697 07:F687: 38        SEC
C - - - - - 0x01F698 07:F688: E9 10     SBC #< $0010
C - - - - - 0x01F69A 07:F68A: 48        PHA
C - - - - - 0x01F69B 07:F68B: A5 89     LDA ram_0089_scroll_X_hi
C - - - - - 0x01F69D 07:F68D: E9 00     SBC #> $0010
C - - - - - 0x01F69F 07:F68F: 29 01     AND #$01
C - - - - - 0x01F6A1 07:F691: F0 18     BEQ bra_F6AB
C - - - - - 0x01F6A3 07:F693: D0 0E     BNE bra_F6A3    ; jmp
bra_F695_scroll_right:
C - - - - - 0x01F6A5 07:F695: A5 8A     LDA ram_008A_scroll_X_lo
C - - - - - 0x01F6A7 07:F697: 18        CLC
C - - - - - 0x01F6A8 07:F698: 69 10     ADC #< $0010
C - - - - - 0x01F6AA 07:F69A: 48        PHA ; 1
C - - - - - 0x01F6AB 07:F69B: A5 89     LDA ram_0089_scroll_X_hi
C - - - - - 0x01F6AD 07:F69D: 69 00     ADC #> $0010
C - - - - - 0x01F6AF 07:F69F: 29 01     AND #$01
C - - - - - 0x01F6B1 07:F6A1: D0 08     BNE bra_F6AB
bra_F6A3:
C - - - - - 0x01F6B3 07:F6A3: A9 40     LDA #$40
C - - - - - 0x01F6B5 07:F6A5: 85 5F     STA ram_005F_t14
C - - - - - 0x01F6B7 07:F6A7: A9 27     LDA #> $27C0
C - - - - - 0x01F6B9 07:F6A9: D0 06     BNE bra_F6B1    ; jmp
bra_F6AB:
C - - - - - 0x01F6BB 07:F6AB: A9 00     LDA #$00
C - - - - - 0x01F6BD 07:F6AD: 85 5F     STA ram_005F_t14
C - - - - - 0x01F6BF 07:F6AF: A9 23     LDA #> $23C0
bra_F6B1:
C - - - - - 0x01F6C1 07:F6B1: 85 5E     STA ram_005E_t05_ppu_hi
C - - - - - 0x01F6C3 07:F6B3: A9 C0     LDA #$C0    ; < xxC0
C - - - - - 0x01F6C5 07:F6B5: 85 5D     STA ram_005D_t29_ppu_lo
C - - - - - 0x01F6C7 07:F6B7: A9 02     LDA #$02
C - - - - - 0x01F6C9 07:F6B9: 85 60     STA ram_0060_t04_useless_02
C - - - - - 0x01F6CB 07:F6BB: 68        PLA ; 1
; / 20
C - - - - - 0x01F6CC 07:F6BC: 4A        LSR
C - - - - - 0x01F6CD 07:F6BD: 4A        LSR
C - - - - - 0x01F6CE 07:F6BE: 4A        LSR
C - - - - - 0x01F6CF 07:F6BF: 4A        LSR
C - - - - - 0x01F6D0 07:F6C0: 4A        LSR
; 
C - - - - - 0x01F6D1 07:F6C1: 85 67     STA ram_0067_t80
C - - - - - 0x01F6D3 07:F6C3: 18        CLC
C - - - - - 0x01F6D4 07:F6C4: 65 5D     ADC ram_005D_t29_ppu_lo
C - - - - - 0x01F6D6 07:F6C6: 85 5D     STA ram_005D_t28_ppu_lo
C - - - - - 0x01F6D8 07:F6C8: A5 5E     LDA ram_005E_t05_ppu_hi
C - - - - - 0x01F6DA 07:F6CA: 69 00     ADC #$00
C - - - - - 0x01F6DC 07:F6CC: 85 5E     STA ram_005E_t04_ppu_hi
C - - - - - 0x01F6DE 07:F6CE: A5 67     LDA ram_0067_t80
C - - - - - 0x01F6E0 07:F6D0: 18        CLC
C - - - - - 0x01F6E1 07:F6D1: 65 5F     ADC ram_005F_t14
C - - - - - 0x01F6E3 07:F6D3: 85 5F     STA ram_005F_t10_data
; bzk optimize, always 02
C - - - - - 0x01F6E5 07:F6D5: A5 60     LDA ram_0060_t04_useless_02
C - - - - - 0x01F6E7 07:F6D7: 69 00     ADC #$00
C - - - - - 0x01F6E9 07:F6D9: 85 60     STA ram_005F_t10_data + $01
C - - - - - 0x01F6EB 07:F6DB: A9 04     LDA #con_prg_bank + $04
C - - - - - 0x01F6ED 07:F6DD: 85 9C     STA ram_prg_bank_8000
C - - - - - 0x01F6EF 07:F6DF: 20 41 DB  JSR sub_DB41_prg_bankswitch_8000
C - - - - - 0x01F6F2 07:F6E2: A5 3C     LDA ram_city
C - - - - - 0x01F6F4 07:F6E4: 0A        ASL
C - - - - - 0x01F6F5 07:F6E5: AA        TAX
C - - - - - 0x01F6F6 07:F6E6: BD 54 87  LDA tbl_0x008764,X
C - - - - - 0x01F6F9 07:F6E9: 85 61     STA ram_0061_t05_data
C - - - - - 0x01F6FB 07:F6EB: BD 55 87  LDA tbl_0x008764 + $01,X
C - - - - - 0x01F6FE 07:F6EE: 85 62     STA ram_0061_t05_data + $01
C - - - - - 0x01F700 07:F6F0: 60        RTS



sub_F6F1:
; out
    ; ram_0069_t33
C - - - - - 0x01F701 07:F6F1: A9 02     LDA #con_prg_bank + $02
C - - - - - 0x01F703 07:F6F3: 85 9C     STA ram_prg_bank_8000
C - - - - - 0x01F705 07:F6F5: 20 41 DB  JSR sub_DB41_prg_bankswitch_8000
C - - - - - 0x01F708 07:F6F8: A4 68     LDY ram_0068_t60_data_index
C - - - - - 0x01F70A 07:F6FA: B1 61     LDA (ram_0061_t05_data),Y
C - - - - - 0x01F70C 07:F6FC: 29 03     AND #$03
C - - - - - 0x01F70E 07:F6FE: 85 69     STA ram_0069_t33
C - - - - - 0x01F710 07:F700: 60        RTS



sub_F701_scroll_Y_handler:
C - - - - - 0x01F711 07:F701: A5 8E     LDA ram_008E
C - - - - - 0x01F713 07:F703: D0 13     BNE bra_F718_RTS
C - - - - - 0x01F715 07:F705: A5 92     LDA ram_0092_scroll_Y_direction
C - - - - - 0x01F717 07:F707: F0 0F     BEQ bra_F718_RTS
C - - - - - 0x01F719 07:F709: 0A        ASL
C - - - - - 0x01F71A 07:F70A: AA        TAX
C - - - - - 0x01F71B 07:F70B: BD 19 F7  LDA tbl_F719_scroll_Y_handler,X
C - - - - - 0x01F71E 07:F70E: 85 5B     STA ram_005B_t40_jmp
C - - - - - 0x01F720 07:F710: BD 1A F7  LDA tbl_F719_scroll_Y_handler + $01,X
C - - - - - 0x01F723 07:F713: 85 5C     STA ram_005B_t40_jmp + $01
C - - - - - 0x01F725 07:F715: 6C 5B 00  JMP (ram_005B_t40_jmp)
bra_F718_RTS:
ofs_002_scroll_Y_F718_00_RTS:
C - - - - - 0x01F728 07:F718: 60        RTS



tbl_F719_scroll_Y_handler:
- - - - - - 0x01F729 07:F719: 18 F7     .word ofs_002_scroll_Y_F718_00_RTS   ; unused, see 0x01F717
- D 3 - - - 0x01F72B 07:F71B: 1F F7     .word ofs_002_scroll_Y_F71F_01_down
- D 3 - - - 0x01F72D 07:F71D: 44 F7     .word ofs_002_scroll_Y_F744_02_up



ofs_002_scroll_Y_F71F_01_down:
C - - J - - 0x01F72F 07:F71F: A5 8D     LDA ram_008D
C - - - - - 0x01F731 07:F721: D0 0A     BNE bra_F72D
C - - - - - 0x01F733 07:F723: A5 8B     LDA ram_008B_scroll_Y_hi
C - - - - - 0x01F735 07:F725: C5 3F     CMP ram_scroll_Y_hi
C - - - - - 0x01F737 07:F727: F0 0C     BEQ bra_F735
C - - - - - 0x01F739 07:F729: 90 11     BCC bra_F73C
C - - - - - 0x01F73B 07:F72B: B0 0E     BCS bra_F73B_RTS    ; jmp
bra_F72D:
C - - - - - 0x01F73D 07:F72D: A5 92     LDA ram_0092_scroll_Y_direction
C - - - - - 0x01F73F 07:F72F: C5 93     CMP ram_0093_prev_scroll_Y_direction
C - - - - - 0x01F741 07:F731: F0 08     BEQ bra_F73B_RTS
- - - - - - 0x01F743 07:F733: D0 07     BNE bra_F73C    ; jmp
bra_F735:
C - - - - - 0x01F745 07:F735: A5 8C     LDA ram_008C_scroll_Y_lo
C - - - - - 0x01F747 07:F737: C5 40     CMP ram_scroll_Y_lo
C - - - - - 0x01F749 07:F739: 90 01     BCC bra_F73C
bra_F73B_RTS:
C - - - - - 0x01F74B 07:F73B: 60        RTS
bra_F73C:
C - - - - - 0x01F74C 07:F73C: 20 A2 F7  JSR sub_F7A2
C - - - - - 0x01F74F 07:F73F: A5 92     LDA ram_0092_scroll_Y_direction
C - - - - - 0x01F751 07:F741: 85 93     STA ram_0093_prev_scroll_Y_direction
C - - - - - 0x01F753 07:F743: 60        RTS



ofs_002_scroll_Y_F744_02_up:
C - - J - - 0x01F754 07:F744: A5 8D     LDA ram_008D
C - - - - - 0x01F756 07:F746: D0 0A     BNE bra_F752
C - - - - - 0x01F758 07:F748: A5 8B     LDA ram_008B_scroll_Y_hi
C - - - - - 0x01F75A 07:F74A: C5 3F     CMP ram_scroll_Y_hi
C - - - - - 0x01F75C 07:F74C: F0 0C     BEQ bra_F75A
C - - - - - 0x01F75E 07:F74E: B0 11     BCS bra_F761
- - - - - - 0x01F760 07:F750: 90 0E     BCC bra_F760_RTS    ; jmp
bra_F752:
C - - - - - 0x01F762 07:F752: A5 92     LDA ram_0092_scroll_Y_direction
C - - - - - 0x01F764 07:F754: C5 93     CMP ram_0093_prev_scroll_Y_direction
C - - - - - 0x01F766 07:F756: F0 08     BEQ bra_F760_RTS
- - - - - - 0x01F768 07:F758: D0 07     BNE bra_F761    ; jmp
bra_F75A:
C - - - - - 0x01F76A 07:F75A: A5 40     LDA ram_scroll_Y_lo
C - - - - - 0x01F76C 07:F75C: C5 8C     CMP ram_008C_scroll_Y_lo
C - - - - - 0x01F76E 07:F75E: 90 01     BCC bra_F761
bra_F760_RTS:
C - - - - - 0x01F770 07:F760: 60        RTS
bra_F761:
C - - - - - 0x01F771 07:F761: 20 A2 F7  JSR sub_F7A2
C - - - - - 0x01F774 07:F764: A5 92     LDA ram_0092_scroll_Y_direction
C - - - - - 0x01F776 07:F766: 85 93     STA ram_0093_prev_scroll_Y_direction
C - - - - - 0x01F778 07:F768: 60        RTS



sub_F769:
C - - - - - 0x01F779 07:F769: A5 8D     LDA ram_008D
C - - - - - 0x01F77B 07:F76B: F0 34     BEQ bra_F7A1_RTS
C - - - - - 0x01F77D 07:F76D: 20 49 F8  JSR sub_F849
C - - - - - 0x01F780 07:F770: C6 8D     DEC ram_008D
C - - - - - 0x01F782 07:F772: D0 2D     BNE bra_F7A1_RTS
C - - - - - 0x01F784 07:F774: A5 93     LDA ram_0093_prev_scroll_Y_direction
C - - - - - 0x01F786 07:F776: C9 01     CMP #$01
C - - - - - 0x01F788 07:F778: F0 14     BEQ bra_F78E_scroll_down
; if scroll up
C - - - - - 0x01F78A 07:F77A: A5 8C     LDA ram_008C_scroll_Y_lo
C - - - - - 0x01F78C 07:F77C: 38        SEC
C - - - - - 0x01F78D 07:F77D: E9 08     SBC #$08
C - - - - - 0x01F78F 07:F77F: B0 02     BCS bra_F783
C - - - - - 0x01F791 07:F781: A9 E8     LDA #$E8
bra_F783:
C - - - - - 0x01F793 07:F783: 85 8C     STA ram_008C_scroll_Y_lo
C - - - - - 0x01F795 07:F785: A5 8B     LDA ram_008B_scroll_Y_hi
C - - - - - 0x01F797 07:F787: E9 00     SBC #$00
C - - - - - 0x01F799 07:F789: 85 8B     STA ram_008B_scroll_Y_hi
C - - - - - 0x01F79B 07:F78B: 4C A1 F7  JMP loc_F7A1_RTS
bra_F78E_scroll_down:
C - - - - - 0x01F79E 07:F78E: A5 8C     LDA ram_008C_scroll_Y_lo
C - - - - - 0x01F7A0 07:F790: 18        CLC
C - - - - - 0x01F7A1 07:F791: 69 08     ADC #$08
C - - - - - 0x01F7A3 07:F793: C9 F0     CMP #$F0
C - - - - - 0x01F7A5 07:F795: 90 02     BCC bra_F799
C - - - - - 0x01F7A7 07:F797: A9 00     LDA #$00
bra_F799:
C - - - - - 0x01F7A9 07:F799: 85 8C     STA ram_008C_scroll_Y_lo
C - - - - - 0x01F7AB 07:F79B: A5 8B     LDA ram_008B_scroll_Y_hi
C - - - - - 0x01F7AD 07:F79D: 69 00     ADC #$00
C - - - - - 0x01F7AF 07:F79F: 85 8B     STA ram_008B_scroll_Y_hi
bra_F7A1_RTS:
loc_F7A1_RTS:   ; bzk optimize
C D 3 - - - 0x01F7B1 07:F7A1: 60        RTS



sub_F7A2:
C - - - - - 0x01F7B2 07:F7A2: A5 8A     LDA ram_008A_scroll_X_lo
C - - - - - 0x01F7B4 07:F7A4: 29 F8     AND #$F8
C - - - - - 0x01F7B6 07:F7A6: 38        SEC
C - - - - - 0x01F7B7 07:F7A7: E9 18     SBC #< $0018
C - - - - - 0x01F7B9 07:F7A9: 85 67     STA ram_0067_t81
C - - - - - 0x01F7BB 07:F7AB: A5 89     LDA ram_0089_scroll_X_hi
C - - - - - 0x01F7BD 07:F7AD: E9 00     SBC #> $0018
C - - - - - 0x01F7BF 07:F7AF: 85 68     STA ram_0068_t61_hi
; bzk optimize, useless AND + STA?
C - - - - - 0x01F7C1 07:F7B1: 29 01     AND #$01
C - - - - - 0x01F7C3 07:F7B3: 85 7D     STA ram_007D_unk_language
C - - - - - 0x01F7C5 07:F7B5: 20 0B F8  JSR sub_F80B
C - - - - - 0x01F7C8 07:F7B8: 20 F0 D0  JSR sub_D0F0
C - - - - - 0x01F7CB 07:F7BB: 20 35 F8  JSR sub_F835_calculate_data_index
C - - - - - 0x01F7CE 07:F7BE: A5 69     LDA ram_0069_t08_data_index
C - - - - - 0x01F7D0 07:F7C0: 29 0F     AND #$0F
C - - - - - 0x01F7D2 07:F7C2: 85 6A     STA ram_006A_t24_counter
C - - - - - 0x01F7D4 07:F7C4: A2 00     LDX #$00
loc_F7C6:
C D 3 - - - 0x01F7D6 07:F7C6: A5 4C     LDA ram_prg_bank_city
C - - - - - 0x01F7D8 07:F7C8: 85 9C     STA ram_prg_bank_8000
C - - - - - 0x01F7DA 07:F7CA: 20 41 DB  JSR sub_DB41_prg_bankswitch_8000
bra_F7CD_loop:
C - - - - - 0x01F7DD 07:F7CD: A4 69     LDY ram_0069_t08_data_index
C - - - - - 0x01F7DF 07:F7CF: B1 7E     LDA (ram_007E_t01_data),Y
C - - - - - 0x01F7E1 07:F7D1: 9D B4 03  STA ram_03B4_array,X
C - - - - - 0x01F7E4 07:F7D4: E8        INX
C - - - - - 0x01F7E5 07:F7D5: E6 69     INC ram_0069_t08_data_index
C - - - - - 0x01F7E7 07:F7D7: E6 6A     INC ram_006A_t24_counter
C - - - - - 0x01F7E9 07:F7D9: A5 6A     LDA ram_006A_t24_counter
C - - - - - 0x01F7EB 07:F7DB: C9 10     CMP #$10
C - - - - - 0x01F7ED 07:F7DD: F0 13     BEQ bra_F7F2
C - - - - - 0x01F7EF 07:F7DF: E0 14     CPX #$14
C - - - - - 0x01F7F1 07:F7E1: 90 EA     BCC bra_F7CD_loop
bra_F7E3:
C - - - - - 0x01F7F3 07:F7E3: A5 8C     LDA ram_008C_scroll_Y_lo
C - - - - - 0x01F7F5 07:F7E5: 29 08     AND #$08
C - - - - - 0x01F7F7 07:F7E7: F0 04     BEQ bra_F7ED
C - - - - - 0x01F7F9 07:F7E9: A9 02     LDA #$02
C - - - - - 0x01F7FB 07:F7EB: D0 02     BNE bra_F7EF    ; jmp
bra_F7ED:
C - - - - - 0x01F7FD 07:F7ED: A9 01     LDA #$01
bra_F7EF:
C - - - - - 0x01F7FF 07:F7EF: 85 8D     STA ram_008D
C - - - - - 0x01F801 07:F7F1: 60        RTS
bra_F7F2:
C - - - - - 0x01F802 07:F7F2: E0 14     CPX #$14
C - - - - - 0x01F804 07:F7F4: B0 ED     BCS bra_F7E3
C - - - - - 0x01F806 07:F7F6: 8A        TXA
C - - - - - 0x01F807 07:F7F7: 48        PHA
C - - - - - 0x01F808 07:F7F8: A9 00     LDA #$00
C - - - - - 0x01F80A 07:F7FA: 85 6A     STA ram_006A_t24_counter
C - - - - - 0x01F80C 07:F7FC: 20 E4 D0  JSR sub_D0E4
C - - - - - 0x01F80F 07:F7FF: A5 69     LDA ram_0069_t08_data_index
C - - - - - 0x01F811 07:F801: 38        SEC
C - - - - - 0x01F812 07:F802: E9 10     SBC #$10
C - - - - - 0x01F814 07:F804: 85 69     STA ram_0069_t08_data_index
C - - - - - 0x01F816 07:F806: 68        PLA
C - - - - - 0x01F817 07:F807: AA        TAX
C - - - - - 0x01F818 07:F808: 4C C6 F7  JMP loc_F7C6



sub_F80B:
C - - - - - 0x01F81B 07:F80B: A5 8B     LDA ram_008B_scroll_Y_hi
C - - - - - 0x01F81D 07:F80D: 29 0F     AND #$0F
; * 10
C - - - - - 0x01F81F 07:F80F: 0A        ASL
C - - - - - 0x01F820 07:F810: 0A        ASL
C - - - - - 0x01F821 07:F811: 0A        ASL
C - - - - - 0x01F822 07:F812: 0A        ASL
; 
C - - - - - 0x01F823 07:F813: 85 69     STA ram_0069_t35_data_index_offset
C - - - - - 0x01F825 07:F815: A5 92     LDA ram_0092_scroll_Y_direction
C - - - - - 0x01F827 07:F817: C9 02     CMP #$02
C - - - - - 0x01F829 07:F819: F0 07     BEQ bra_F822_scroll_up
; if scroll down
C - - - - - 0x01F82B 07:F81B: A5 69     LDA ram_0069_t35_data_index_offset
C - - - - - 0x01F82D 07:F81D: 18        CLC
C - - - - - 0x01F82E 07:F81E: 69 10     ADC #$10
C - - - - - 0x01F830 07:F820: 85 69     STA ram_0069_t35_data_index_offset
bra_F822_scroll_up:
C - - - - - 0x01F832 07:F822: A5 68     LDA ram_0068_t61_hi
C - - - - - 0x01F834 07:F824: 30 08     BMI bra_F82E
C - - - - - 0x01F836 07:F826: 29 0F     AND #$0F
C - - - - - 0x01F838 07:F828: 18        CLC
C - - - - - 0x01F839 07:F829: 65 69     ADC ram_0069_t35_data_index_offset
loc_F82B:
C D 3 - - - 0x01F83B 07:F82B: 85 50     STA ram_0050_data_index
C - - - - - 0x01F83D 07:F82D: 60        RTS
bra_F82E:
C - - - - - 0x01F83E 07:F82E: C6 69     DEC ram_0069_t35_data_index_offset
C - - - - - 0x01F840 07:F830: A5 69     LDA ram_0069_t35_data_index_offset
C - - - - - 0x01F842 07:F832: 4C 2B F8  JMP loc_F82B



sub_F835_calculate_data_index:
; in
    ; ram_0067_t81
; out
    ; ram_0069_t08_data_index
C - - - - - 0x01F845 07:F835: A5 67     LDA ram_0067_t81
C - - - - - 0x01F847 07:F837: 29 F0     AND #$F0
; / 10
C - - - - - 0x01F849 07:F839: 4A        LSR
C - - - - - 0x01F84A 07:F83A: 4A        LSR
C - - - - - 0x01F84B 07:F83B: 4A        LSR
C - - - - - 0x01F84C 07:F83C: 4A        LSR
; 
C - - - - - 0x01F84D 07:F83D: 85 69     STA ram_0069_t12
C - - - - - 0x01F84F 07:F83F: A5 8C     LDA ram_008C_scroll_Y_lo
C - - - - - 0x01F851 07:F841: 29 F0     AND #$F0
C - - - - - 0x01F853 07:F843: 18        CLC
C - - - - - 0x01F854 07:F844: 65 69     ADC ram_0069_t12
C - - - - - 0x01F856 07:F846: 85 69     STA ram_0069_t08_data_index
C - - - - - 0x01F858 07:F848: 60        RTS



sub_F849:
C - - - - - 0x01F859 07:F849: A5 8A     LDA ram_008A_scroll_X_lo
C - - - - - 0x01F85B 07:F84B: 29 F8     AND #$F8
C - - - - - 0x01F85D 07:F84D: 38        SEC
C - - - - - 0x01F85E 07:F84E: E9 18     SBC #< $0018
C - - - - - 0x01F860 07:F850: 85 67     STA ram_0067_t72_lo
C - - - - - 0x01F862 07:F852: A5 89     LDA ram_0089_scroll_X_hi
C - - - - - 0x01F864 07:F854: E9 00     SBC #> $0018
C - - - - - 0x01F866 07:F856: 85 68     STA ram_0068_t61_hi
C - - - - - 0x01F868 07:F858: A6 8D     LDX ram_008D
C - - - - - 0x01F86A 07:F85A: BD 23 F9  LDA tbl_F923,X
C - - - - - 0x01F86D 07:F85D: C9 FF     CMP #$FF
C - - - - - 0x01F86F 07:F85F: D0 03     BNE bra_F864
C - - - - - 0x01F871 07:F861: 4C 19 F9  JMP loc_F919_FF
bra_F864:
C - - - - - 0x01F874 07:F864: 20 0B F8  JSR sub_F80B
C - - - - - 0x01F877 07:F867: 20 26 F9  JSR sub_F926
C - - - - - 0x01F87A 07:F86A: 20 13 D1  JSR sub_D113
C - - - - - 0x01F87D 07:F86D: A9 03     LDA #con_prg_bank + $03
C - - - - - 0x01F87F 07:F86F: 85 9C     STA ram_prg_bank_8000
C - - - - - 0x01F881 07:F871: 20 41 DB  JSR sub_DB41_prg_bankswitch_8000
C - - - - - 0x01F884 07:F874: A9 00     LDA #$00
C - - - - - 0x01F886 07:F876: 85 6D     STA ram_006D_t16_array_index
C - - - - - 0x01F888 07:F878: A5 67     LDA ram_0067_t72_lo
; / 10
C - - - - - 0x01F88A 07:F87A: 4A        LSR
C - - - - - 0x01F88B 07:F87B: 4A        LSR
C - - - - - 0x01F88C 07:F87C: 4A        LSR
C - - - - - 0x01F88D 07:F87D: 4A        LSR
; 
C - - - - - 0x01F88E 07:F87E: 85 6C     STA ram_006C_t13
C - - - - - 0x01F890 07:F880: A9 10     LDA #$10
C - - - - - 0x01F892 07:F882: 38        SEC
C - - - - - 0x01F893 07:F883: E5 6C     SBC ram_006C_t13
C - - - - - 0x01F895 07:F885: 85 6C     STA ram_006C_t12
C - - - - - 0x01F897 07:F887: A2 00     LDX #$00
loc_F889_loop:
C D 3 - - - 0x01F899 07:F889: A5 6C     LDA ram_006C_t12
C - - - - - 0x01F89B 07:F88B: 0A        ASL
C - - - - - 0x01F89C 07:F88C: 9D 28 03  STA ram_0328_ppu_buffer,X
C - - - - - 0x01F89F 07:F88F: E8        INX
C - - - - - 0x01F8A0 07:F890: A5 5E     LDA ram_005E_t08_ppu_hi
C - - - - - 0x01F8A2 07:F892: 9D 28 03  STA ram_0328_ppu_buffer,X
C - - - - - 0x01F8A5 07:F895: E8        INX
C - - - - - 0x01F8A6 07:F896: A5 5D     LDA ram_005D_t32_ppu_lo
C - - - - - 0x01F8A8 07:F898: 9D 28 03  STA ram_0328_ppu_buffer,X
C - - - - - 0x01F8AB 07:F89B: E8        INX
C - - - - - 0x01F8AC 07:F89C: 86 6E     STX ram_006E_t20_buffer_index
bra_F89E_loop:
C - - - - - 0x01F8AE 07:F89E: A4 6D     LDY ram_006D_t16_array_index
C - - - - - 0x01F8B0 07:F8A0: B9 B4 03  LDA ram_03B4_array,Y
C - - - - - 0x01F8B3 07:F8A3: 85 6F     STA ram_006F_t13
C - - - - - 0x01F8B5 07:F8A5: E6 6D     INC ram_006D_t16_array_index
C - - - - - 0x01F8B7 07:F8A7: A9 00     LDA #$00
C - - - - - 0x01F8B9 07:F8A9: 85 70     STA ram_0070_t14_hi
C - - - - - 0x01F8BB 07:F8AB: A2 01     LDX #$01
C - - - - - 0x01F8BD 07:F8AD: A5 6F     LDA ram_006F_t13
; * 04
C - - - - - 0x01F8BF 07:F8AF: 0A        ASL
C - - - - - 0x01F8C0 07:F8B0: 26 70     ROL ram_0070_t14_hi
C - - - - - 0x01F8C2 07:F8B2: 0A        ASL
C - - - - - 0x01F8C3 07:F8B3: 26 70     ROL ram_0070_t14_hi
; 
C - - - - - 0x01F8C5 07:F8B5: 18        CLC
C - - - - - 0x01F8C6 07:F8B6: 65 80     ADC ram_0080_t02_ptr_lo
C - - - - - 0x01F8C8 07:F8B8: 85 5F     STA ram_005F_t11_data
C - - - - - 0x01F8CA 07:F8BA: A5 81     LDA ram_0081_t02_ptr_hi
C - - - - - 0x01F8CC 07:F8BC: 65 70     ADC ram_0070_t14_hi
C - - - - - 0x01F8CE 07:F8BE: 85 60     STA ram_005F_t11_data + $01
bra_F8C0_loop:
C - - - - - 0x01F8D0 07:F8C0: A5 8C     LDA ram_008C_scroll_Y_lo
C - - - - - 0x01F8D2 07:F8C2: 29 08     AND #$08
C - - - - - 0x01F8D4 07:F8C4: F0 05     BEQ bra_F8CB
C - - - - - 0x01F8D6 07:F8C6: BD 1F F9  LDA tbl_F91F,X
C - - - - - 0x01F8D9 07:F8C9: D0 03     BNE bra_F8CE    ; jmp
bra_F8CB:
C - - - - - 0x01F8DB 07:F8CB: BD 21 F9  LDA tbl_F921,X
bra_F8CE:
C - - - - - 0x01F8DE 07:F8CE: A8        TAY
C - - - - - 0x01F8DF 07:F8CF: B1 5F     LDA (ram_005F_t11_data),Y
C - - - - - 0x01F8E1 07:F8D1: 85 70     STA ram_0070_t11
C - - - - - 0x01F8E3 07:F8D3: 8A        TXA
C - - - - - 0x01F8E4 07:F8D4: 48        PHA
C - - - - - 0x01F8E5 07:F8D5: A6 6E     LDX ram_006E_t20_buffer_index
C - - - - - 0x01F8E7 07:F8D7: A5 70     LDA ram_0070_t11
C - - - - - 0x01F8E9 07:F8D9: 9D 28 03  STA ram_0328_ppu_buffer,X
C - - - - - 0x01F8EC 07:F8DC: E6 6E     INC ram_006E_t20_buffer_index
C - - - - - 0x01F8EE 07:F8DE: 68        PLA
C - - - - - 0x01F8EF 07:F8DF: AA        TAX
C - - - - - 0x01F8F0 07:F8E0: CA        DEX
C - - - - - 0x01F8F1 07:F8E1: 10 DD     BPL bra_F8C0_loop
C - - - - - 0x01F8F3 07:F8E3: C6 6C     DEC ram_006C_t12
C - - - - - 0x01F8F5 07:F8E5: D0 B7     BNE bra_F89E_loop
C - - - - - 0x01F8F7 07:F8E7: A5 6D     LDA ram_006D_t16_array_index
C - - - - - 0x01F8F9 07:F8E9: C9 14     CMP #$14
C - - - - - 0x01F8FB 07:F8EB: B0 1E     BCS bra_F90B_close_buffer
C - - - - - 0x01F8FD 07:F8ED: A9 14     LDA #$14
C - - - - - 0x01F8FF 07:F8EF: 38        SEC
C - - - - - 0x01F900 07:F8F0: E5 6D     SBC ram_006D_t16_array_index
C - - - - - 0x01F902 07:F8F2: C9 10     CMP #$10
C - - - - - 0x01F904 07:F8F4: 90 02     BCC bra_F8F8
C - - - - - 0x01F906 07:F8F6: A9 10     LDA #$10
bra_F8F8:
C - - - - - 0x01F908 07:F8F8: 85 6C     STA ram_006C_t12
C - - - - - 0x01F90A 07:F8FA: A5 5D     LDA ram_005D_t32_ppu_lo
C - - - - - 0x01F90C 07:F8FC: 29 E0     AND #$E0
C - - - - - 0x01F90E 07:F8FE: 85 5D     STA ram_005D_t32_ppu_lo
C - - - - - 0x01F910 07:F900: A5 5E     LDA ram_005E_t08_ppu_hi
C - - - - - 0x01F912 07:F902: 49 04     EOR #$04
C - - - - - 0x01F914 07:F904: 85 5E     STA ram_005E_t08_ppu_hi
C - - - - - 0x01F916 07:F906: A6 6E     LDX ram_006E_t20_buffer_index
C - - - - - 0x01F918 07:F908: 4C 89 F8  JMP loc_F889_loop
bra_F90B_close_buffer:
C - - - - - 0x01F91B 07:F90B: A6 6E     LDX ram_006E_t20_buffer_index
C - - - - - 0x01F91D 07:F90D: A9 00     LDA #$00
C - - - - - 0x01F91F 07:F90F: 9D 28 03  STA ram_0328_ppu_buffer,X
loc_F912:
C D 3 - - - 0x01F922 07:F912: A5 02     LDA ram_buffers_flags
; bzk shouldn't it be ORA?
C - - - - - 0x01F924 07:F914: 49 10     EOR #con_buffer_ready_10
C - - - - - 0x01F926 07:F916: 85 02     STA ram_buffers_flags
C - - - - - 0x01F928 07:F918: 60        RTS



loc_F919_FF:
C D 3 - - - 0x01F929 07:F919: 20 62 F9  JSR sub_F962
C - - - - - 0x01F92C 07:F91C: 4C 12 F9  JMP loc_F912



tbl_F91F:
- D 3 - - - 0x01F92F 07:F91F: 03        .byte $03   ; 00 
- D 3 - - - 0x01F930 07:F920: 02        .byte $02   ; 01 



tbl_F921:
- D 3 - - - 0x01F931 07:F921: 01        .byte $01   ; 00 
- D 3 - - - 0x01F932 07:F922: 00        .byte $00   ; 01 



tbl_F923:
- - - - - - 0x01F933 07:F923: 00        .byte $00   ; 00 
- D 3 - - - 0x01F934 07:F924: 00        .byte $00   ; 01 
- D 3 - - - 0x01F935 07:F925: FF        .byte $FF   ; 02 



sub_F926:
; in
    ; ram_0067_t72_lo
C - - - - - 0x01F936 07:F926: A5 50     LDA ram_0050_data_index
C - - - - - 0x01F938 07:F928: 29 01     AND #$01
C - - - - - 0x01F93A 07:F92A: F0 04     BEQ bra_F930
C - - - - - 0x01F93C 07:F92C: A9 24     LDA #> $2400
C - - - - - 0x01F93E 07:F92E: D0 02     BNE bra_F932    ; jmp
bra_F930:
C - - - - - 0x01F940 07:F930: A9 20     LDA #> $2000
bra_F932:
C - - - - - 0x01F942 07:F932: 85 5E     STA ram_005E_t09_ppu_hi
C - - - - - 0x01F944 07:F934: A9 00     LDA #$00    ; < xx00
C - - - - - 0x01F946 07:F936: 85 5D     STA ram_005D_t33_ppu_lo
C - - - - - 0x01F948 07:F938: 85 6C     STA ram_006C_t25_ppu_hi
C - - - - - 0x01F94A 07:F93A: A5 67     LDA ram_0067_t72_lo
C - - - - - 0x01F94C 07:F93C: 29 F0     AND #$F0
; / 08
C - - - - - 0x01F94E 07:F93E: 4A        LSR
C - - - - - 0x01F94F 07:F93F: 4A        LSR
C - - - - - 0x01F950 07:F940: 4A        LSR
; 
C - - - - - 0x01F951 07:F941: 18        CLC
C - - - - - 0x01F952 07:F942: 65 5D     ADC ram_005D_t33_ppu_lo
C - - - - - 0x01F954 07:F944: 85 5D     STA ram_005D_t34_ppu_lo
C - - - - - 0x01F956 07:F946: A5 5E     LDA ram_005E_t09_ppu_hi
C - - - - - 0x01F958 07:F948: 69 00     ADC #$00
C - - - - - 0x01F95A 07:F94A: 85 5E     STA ram_005E_t10_ppu_hi
C - - - - - 0x01F95C 07:F94C: A5 8C     LDA ram_008C_scroll_Y_lo
C - - - - - 0x01F95E 07:F94E: 29 F8     AND #$F8
; * 04
C - - - - - 0x01F960 07:F950: 0A        ASL
C - - - - - 0x01F961 07:F951: 26 6C     ROL ram_006C_t25_ppu_hi
C - - - - - 0x01F963 07:F953: 0A        ASL
C - - - - - 0x01F964 07:F954: 26 6C     ROL ram_006C_t25_ppu_hi
; 
C - - - - - 0x01F966 07:F956: 18        CLC
C - - - - - 0x01F967 07:F957: 65 5D     ADC ram_005D_t34_ppu_lo
C - - - - - 0x01F969 07:F959: 85 5D     STA ram_005D_t32_ppu_lo
C - - - - - 0x01F96B 07:F95B: A5 6C     LDA ram_006C_t25_ppu_hi
C - - - - - 0x01F96D 07:F95D: 65 5E     ADC ram_005E_t10_ppu_hi
C - - - - - 0x01F96F 07:F95F: 85 5E     STA ram_005E_t08_ppu_hi
C - - - - - 0x01F971 07:F961: 60        RTS



sub_F962:
C - - - - - 0x01F972 07:F962: 20 6C F9  JSR sub_F96C
C - - - - - 0x01F975 07:F965: 20 D0 F9  JSR sub_F9D0
; bzk optimize, JMP
C - - - - - 0x01F978 07:F968: 20 76 FA  JSR sub_FA76_nametable_attributes
C - - - - - 0x01F97B 07:F96B: 60        RTS



sub_F96C:
; in
    ; ram_0067_t72_lo
    ; ram_0068_t61_hi
C - - - - - 0x01F97C 07:F96C: A5 68     LDA ram_0068_t61_hi
C - - - - - 0x01F97E 07:F96E: 29 01     AND #$01
C - - - - - 0x01F980 07:F970: D0 08     BNE bra_F97A
C - - - - - 0x01F982 07:F972: A9 00     LDA #$00
C - - - - - 0x01F984 07:F974: 85 5F     STA ram_005F_t15
C - - - - - 0x01F986 07:F976: A9 23     LDA #> $23C0
C - - - - - 0x01F988 07:F978: D0 06     BNE bra_F980    ; jmp
bra_F97A:
C - - - - - 0x01F98A 07:F97A: A9 40     LDA #$40
C - - - - - 0x01F98C 07:F97C: 85 5F     STA ram_005F_t15
C - - - - - 0x01F98E 07:F97E: A9 27     LDA #> $27C0
bra_F980:
C - - - - - 0x01F990 07:F980: 85 5E     STA ram_005E_t07_ppu_hi
C - - - - - 0x01F992 07:F982: A9 C0     LDA #$C0    ; < xxC0
C - - - - - 0x01F994 07:F984: 85 5D     STA ram_005D_t31_ppu_lo
C - - - - - 0x01F996 07:F986: A9 02     LDA #$02
C - - - - - 0x01F998 07:F988: 85 60     STA ram_0060_t05_useless_02
C - - - - - 0x01F99A 07:F98A: A5 67     LDA ram_0067_t72_lo
; / 20
C - - - - - 0x01F99C 07:F98C: 4A        LSR
C - - - - - 0x01F99D 07:F98D: 4A        LSR
C - - - - - 0x01F99E 07:F98E: 4A        LSR
C - - - - - 0x01F99F 07:F98F: 4A        LSR
C - - - - - 0x01F9A0 07:F990: 4A        LSR
; 
C - - - - - 0x01F9A1 07:F991: 85 69     STA ram_0069_t37
C - - - - - 0x01F9A3 07:F993: A5 8C     LDA ram_008C_scroll_Y_lo
; / 04
C - - - - - 0x01F9A5 07:F995: 4A        LSR
C - - - - - 0x01F9A6 07:F996: 4A        LSR
; 
C - - - - - 0x01F9A7 07:F997: 29 F8     AND #$F8
C - - - - - 0x01F9A9 07:F999: 18        CLC
C - - - - - 0x01F9AA 07:F99A: 65 69     ADC ram_0069_t37
C - - - - - 0x01F9AC 07:F99C: 85 69     STA ram_0069_t36
C - - - - - 0x01F9AE 07:F99E: 18        CLC
C - - - - - 0x01F9AF 07:F99F: 65 5D     ADC ram_005D_t31_ppu_lo
C - - - - - 0x01F9B1 07:F9A1: 85 5D     STA ram_005D_t30_ppu_lo
C - - - - - 0x01F9B3 07:F9A3: A5 5E     LDA ram_005E_t07_ppu_hi
C - - - - - 0x01F9B5 07:F9A5: 69 00     ADC #$00
C - - - - - 0x01F9B7 07:F9A7: 85 5E     STA ram_005E_t06_ppu_hi
C - - - - - 0x01F9B9 07:F9A9: A5 69     LDA ram_0069_t36
C - - - - - 0x01F9BB 07:F9AB: 18        CLC
C - - - - - 0x01F9BC 07:F9AC: 65 5F     ADC ram_005F_t15
C - - - - - 0x01F9BE 07:F9AE: 85 5F     STA ram_005F_t12_data
C - - - - - 0x01F9C0 07:F9B0: 85 63     STA ram_0063_t02_data
; bzk optimize, always 02
C - - - - - 0x01F9C2 07:F9B2: A5 60     LDA ram_0060_t05_useless_02
C - - - - - 0x01F9C4 07:F9B4: 69 00     ADC #$00
C - - - - - 0x01F9C6 07:F9B6: 85 60     STA ram_005F_t12_data + $01
C - - - - - 0x01F9C8 07:F9B8: 85 64     STA ram_0063_t02_data + $01
C - - - - - 0x01F9CA 07:F9BA: A9 04     LDA #con_prg_bank + $04
C - - - - - 0x01F9CC 07:F9BC: 85 9C     STA ram_prg_bank_8000
C - - - - - 0x01F9CE 07:F9BE: 20 41 DB  JSR sub_DB41_prg_bankswitch_8000
C - - - - - 0x01F9D1 07:F9C1: A5 3C     LDA ram_city
C - - - - - 0x01F9D3 07:F9C3: 0A        ASL
C - - - - - 0x01F9D4 07:F9C4: AA        TAX
C - - - - - 0x01F9D5 07:F9C5: BD 54 87  LDA tbl_0x008764,X
C - - - - - 0x01F9D8 07:F9C8: 85 61     STA ram_0061_t06_data
C - - - - - 0x01F9DA 07:F9CA: BD 55 87  LDA tbl_0x008764 + $01,X
C - - - - - 0x01F9DD 07:F9CD: 85 62     STA ram_0061_t06_data + $01
C - - - - - 0x01F9DF 07:F9CF: 60        RTS



sub_F9D0:
; in
    ; ram_0067_t72_lo
C - - - - - 0x01F9E0 07:F9D0: A5 8C     LDA ram_008C_scroll_Y_lo
C - - - - - 0x01F9E2 07:F9D2: 29 10     AND #$10
C - - - - - 0x01F9E4 07:F9D4: 85 69     STA ram_0069_t14_flag
C - - - - - 0x01F9E6 07:F9D6: A5 67     LDA ram_0067_t72_lo
; / 10
C - - - - - 0x01F9E8 07:F9D8: 4A        LSR
C - - - - - 0x01F9E9 07:F9D9: 4A        LSR
C - - - - - 0x01F9EA 07:F9DA: 4A        LSR
C - - - - - 0x01F9EB 07:F9DB: 4A        LSR
; 
C - - - - - 0x01F9EC 07:F9DC: 85 6A     STA ram_006A_t25
C - - - - - 0x01F9EE 07:F9DE: A9 10     LDA #$10
C - - - - - 0x01F9F0 07:F9E0: 38        SEC
C - - - - - 0x01F9F1 07:F9E1: E5 6A     SBC ram_006A_t25
C - - - - - 0x01F9F3 07:F9E3: 85 6A     STA ram_006A_t26
C - - - - - 0x01F9F5 07:F9E5: A9 00     LDA #$00
C - - - - - 0x01F9F7 07:F9E7: 85 6B     STA ram_006B_t29_array_index
C - - - - - 0x01F9F9 07:F9E9: 85 6F     STA ram_006F_t14_data_index
C - - - - - 0x01F9FB 07:F9EB: 85 70     STA ram_0070_t12
C - - - - - 0x01F9FD 07:F9ED: A9 02     LDA #con_prg_bank + $02
C - - - - - 0x01F9FF 07:F9EF: 85 9C     STA ram_prg_bank_8000
C - - - - - 0x01FA01 07:F9F1: 20 41 DB  JSR sub_DB41_prg_bankswitch_8000
loc_F9F4_loop:
bra_F9F4_loop:
C D 3 - - - 0x01FA04 07:F9F4: A6 6B     LDX ram_006B_t29_array_index
C - - - - - 0x01FA06 07:F9F6: BD B4 03  LDA ram_03B4_array,X
C - - - - - 0x01FA09 07:F9F9: A8        TAY
C - - - - - 0x01FA0A 07:F9FA: B1 61     LDA (ram_0061_t06_data),Y
C - - - - - 0x01FA0C 07:F9FC: 29 03     AND #$03
C - - - - - 0x01FA0E 07:F9FE: 48        PHA ; 1
C - - - - - 0x01FA0F 07:F9FF: A5 6A     LDA ram_006A_t26
C - - - - - 0x01FA11 07:FA01: 29 01     AND #$01
C - - - - - 0x01FA13 07:FA03: 45 70     EOR ram_0070_t12
C - - - - - 0x01FA15 07:FA05: AA        TAX
C - - - - - 0x01FA16 07:FA06: A5 69     LDA ram_0069_t14_flag
C - - - - - 0x01FA18 07:FA08: F0 0A     BEQ bra_FA14
C - - - - - 0x01FA1A 07:FA0A: BD 74 FA  LDA tbl_FA74,X
C - - - - - 0x01FA1D 07:FA0D: 85 6C     STA ram_006C_t26
C - - - - - 0x01FA1F 07:FA0F: BD 70 FA  LDA tbl_FA70,X
C - - - - - 0x01FA22 07:FA12: D0 08     BNE bra_FA1C    ; jmp
bra_FA14:
C - - - - - 0x01FA24 07:FA14: BD 72 FA  LDA tbl_FA72,X
C - - - - - 0x01FA27 07:FA17: 85 6C     STA ram_006C_t26
C - - - - - 0x01FA29 07:FA19: BD 6E FA  LDA tbl_FA6E,X
bra_FA1C:
C - - - - - 0x01FA2C 07:FA1C: 85 6D     STA ram_006D_t17
C - - - - - 0x01FA2E 07:FA1E: 68        PLA ; 1
C - - - - - 0x01FA2F 07:FA1F: A6 6C     LDX ram_006C_t26
C - - - - - 0x01FA31 07:FA21: F0 05     BEQ bra_FA28
bra_FA23_loop:
; * 04
C - - - - - 0x01FA33 07:FA23: 0A        ASL
C - - - - - 0x01FA34 07:FA24: 0A        ASL
; 
C - - - - - 0x01FA35 07:FA25: CA        DEX
C - - - - - 0x01FA36 07:FA26: D0 FB     BNE bra_FA23_loop
bra_FA28:
C - - - - - 0x01FA38 07:FA28: 85 6E     STA ram_006E_t19
C - - - - - 0x01FA3A 07:FA2A: A4 6F     LDY ram_006F_t14_data_index
C - - - - - 0x01FA3C 07:FA2C: B1 5F     LDA (ram_005F_t12_data),Y
C - - - - - 0x01FA3E 07:FA2E: 25 6D     AND ram_006D_t17
C - - - - - 0x01FA40 07:FA30: 45 6E     EOR ram_006E_t19
C - - - - - 0x01FA42 07:FA32: 91 5F     STA (ram_005F_t12_data),Y
C - - - - - 0x01FA44 07:FA34: E6 6B     INC ram_006B_t29_array_index
C - - - - - 0x01FA46 07:FA36: A5 6B     LDA ram_006B_t29_array_index
C - - - - - 0x01FA48 07:FA38: C9 14     CMP #$14
C - - - - - 0x01FA4A 07:FA3A: B0 31     BCS bra_FA6D_RTS
C - - - - - 0x01FA4C 07:FA3C: C6 6A     DEC ram_006A_t26
C - - - - - 0x01FA4E 07:FA3E: F0 0D     BEQ bra_FA4D
C - - - - - 0x01FA50 07:FA40: A5 6A     LDA ram_006A_t26
C - - - - - 0x01FA52 07:FA42: 29 01     AND #$01
C - - - - - 0x01FA54 07:FA44: 45 70     EOR ram_0070_t12
C - - - - - 0x01FA56 07:FA46: D0 AC     BNE bra_F9F4_loop
C - - - - - 0x01FA58 07:FA48: E6 6F     INC ram_006F_t14_data_index
C - - - - - 0x01FA5A 07:FA4A: 4C F4 F9  JMP loc_F9F4_loop
bra_FA4D:
C - - - - - 0x01FA5D 07:FA4D: A9 00     LDA #$00
C - - - - - 0x01FA5F 07:FA4F: 85 6F     STA ram_006F_t14_data_index
C - - - - - 0x01FA61 07:FA51: A5 5F     LDA ram_005F_t12_data
C - - - - - 0x01FA63 07:FA53: 49 40     EOR #$40
C - - - - - 0x01FA65 07:FA55: 29 F8     AND #$F8
C - - - - - 0x01FA67 07:FA57: 85 5F     STA ram_005F_t12_data
C - - - - - 0x01FA69 07:FA59: A9 14     LDA #$14
C - - - - - 0x01FA6B 07:FA5B: 38        SEC
C - - - - - 0x01FA6C 07:FA5C: E5 6B     SBC ram_006B_t29_array_index
C - - - - - 0x01FA6E 07:FA5E: C9 11     CMP #$11
C - - - - - 0x01FA70 07:FA60: 90 02     BCC bra_FA64
C - - - - - 0x01FA72 07:FA62: A9 10     LDA #$10
bra_FA64:
C - - - - - 0x01FA74 07:FA64: 85 6A     STA ram_006A_t26
C - - - - - 0x01FA76 07:FA66: 29 01     AND #$01
C - - - - - 0x01FA78 07:FA68: 85 70     STA ram_0070_t12
C - - - - - 0x01FA7A 07:FA6A: 4C F4 F9  JMP loc_F9F4_loop
bra_FA6D_RTS:
C - - - - - 0x01FA7D 07:FA6D: 60        RTS



tbl_FA6E:
- D 3 - - - 0x01FA7E 07:FA6E: FC        .byte $FC   ; 00 
- D 3 - - - 0x01FA7F 07:FA6F: F3        .byte $F3   ; 01 



tbl_FA70:
- D 3 - - - 0x01FA80 07:FA70: CF        .byte $CF   ; 00 
- D 3 - - - 0x01FA81 07:FA71: 3F        .byte $3F   ; 01 



tbl_FA72:
- D 3 - - - 0x01FA82 07:FA72: 00        .byte $00   ; 00 
- D 3 - - - 0x01FA83 07:FA73: 01        .byte $01   ; 01 



tbl_FA74:
- D 3 - - - 0x01FA84 07:FA74: 02        .byte $02   ; 00 
- D 3 - - - 0x01FA85 07:FA75: 03        .byte $03   ; 01 



sub_FA76_nametable_attributes:
; in
    ; ram_005D_t30_ppu_lo
    ; ram_005E_t06_ppu_hi
    ; ram_0067_t72_lo
C - - - - - 0x01FA86 07:FA76: A5 67     LDA ram_0067_t72_lo
; / 20
C - - - - - 0x01FA88 07:FA78: 4A        LSR
C - - - - - 0x01FA89 07:FA79: 4A        LSR
C - - - - - 0x01FA8A 07:FA7A: 4A        LSR
C - - - - - 0x01FA8B 07:FA7B: 4A        LSR
C - - - - - 0x01FA8C 07:FA7C: 4A        LSR
; 
C - - - - - 0x01FA8D 07:FA7D: 85 6A     STA ram_006A_t27
C - - - - - 0x01FA8F 07:FA7F: A9 08     LDA #$08
C - - - - - 0x01FA91 07:FA81: 38        SEC
C - - - - - 0x01FA92 07:FA82: E5 6A     SBC ram_006A_t27
C - - - - - 0x01FA94 07:FA84: 85 6A     STA ram_006A_t22_attributes_counter
C - - - - - 0x01FA96 07:FA86: A2 00     LDX #$00
C - - - - - 0x01FA98 07:FA88: 86 6B     STX ram_006B_t10_counter
loc_FA8A_loop:
C D 3 - - - 0x01FA9A 07:FA8A: A5 6A     LDA ram_006A_t22_attributes_counter
C - - - - - 0x01FA9C 07:FA8C: 9D 28 03  STA ram_0328_ppu_buffer,X
C - - - - - 0x01FA9F 07:FA8F: E8        INX
C - - - - - 0x01FAA0 07:FA90: A5 5E     LDA ram_005E_t06_ppu_hi
C - - - - - 0x01FAA2 07:FA92: 9D 28 03  STA ram_0328_ppu_buffer,X
C - - - - - 0x01FAA5 07:FA95: E8        INX
C - - - - - 0x01FAA6 07:FA96: A5 5D     LDA ram_005D_t30_ppu_lo
C - - - - - 0x01FAA8 07:FA98: 9D 28 03  STA ram_0328_ppu_buffer,X
C - - - - - 0x01FAAB 07:FA9B: A0 00     LDY #$00
bra_FA9D_loop:
C - - - - - 0x01FAAD 07:FA9D: E8        INX
C - - - - - 0x01FAAE 07:FA9E: B1 63     LDA (ram_0063_t02_data),Y
C - - - - - 0x01FAB0 07:FAA0: C8        INY
C - - - - - 0x01FAB1 07:FAA1: 9D 28 03  STA ram_0328_ppu_buffer,X
C - - - - - 0x01FAB4 07:FAA4: E6 6B     INC ram_006B_t10_counter
C - - - - - 0x01FAB6 07:FAA6: C6 6A     DEC ram_006A_t22_attributes_counter
C - - - - - 0x01FAB8 07:FAA8: D0 F3     BNE bra_FA9D_loop
C - - - - - 0x01FABA 07:FAAA: E8        INX
C - - - - - 0x01FABB 07:FAAB: A5 6B     LDA ram_006B_t10_counter
C - - - - - 0x01FABD 07:FAAD: C9 0B     CMP #$0B
C - - - - - 0x01FABF 07:FAAF: B0 24     BCS bra_FAD5
C - - - - - 0x01FAC1 07:FAB1: A9 0B     LDA #$0B
C - - - - - 0x01FAC3 07:FAB3: 38        SEC
C - - - - - 0x01FAC4 07:FAB4: E5 6B     SBC ram_006B_t10_counter
C - - - - - 0x01FAC6 07:FAB6: C9 09     CMP #$09
C - - - - - 0x01FAC8 07:FAB8: 90 02     BCC bra_FABC
C - - - - - 0x01FACA 07:FABA: A9 08     LDA #$08
bra_FABC:
C - - - - - 0x01FACC 07:FABC: 85 6A     STA ram_006A_t22_attributes_counter
C - - - - - 0x01FACE 07:FABE: A5 5E     LDA ram_005E_t06_ppu_hi
C - - - - - 0x01FAD0 07:FAC0: 49 04     EOR #$04
C - - - - - 0x01FAD2 07:FAC2: 85 5E     STA ram_005E_t06_ppu_hi
C - - - - - 0x01FAD4 07:FAC4: A5 5D     LDA ram_005D_t30_ppu_lo
C - - - - - 0x01FAD6 07:FAC6: 29 F8     AND #$F8
C - - - - - 0x01FAD8 07:FAC8: 85 5D     STA ram_005D_t30_ppu_lo
C - - - - - 0x01FADA 07:FACA: A5 63     LDA ram_0063_t02_data
C - - - - - 0x01FADC 07:FACC: 49 40     EOR #$40
C - - - - - 0x01FADE 07:FACE: 29 F8     AND #$F8
C - - - - - 0x01FAE0 07:FAD0: 85 63     STA ram_0063_t02_data
C - - - - - 0x01FAE2 07:FAD2: 4C 8A FA  JMP loc_FA8A_loop
bra_FAD5:
C - - - - - 0x01FAE5 07:FAD5: A9 00     LDA #$00
C - - - - - 0x01FAE7 07:FAD7: 9D 28 03  STA ram_0328_ppu_buffer,X
C - - - - - 0x01FAEA 07:FADA: 60        RTS



sub_FADB:
loc_FADB:
C D 3 - - - 0x01FAEB 07:FADB: A5 9C     LDA ram_prg_bank_8000
C - - - - - 0x01FAED 07:FADD: 48        PHA
C - - - - - 0x01FAEE 07:FADE: A5 0C     LDA ram_nmi_flag
C - - - - - 0x01FAF0 07:FAE0: D0 1F     BNE bra_FB01
C - - - - - 0x01FAF2 07:FAE2: A9 00     LDA #$00
C - - - - - 0x01FAF4 07:FAE4: 85 CF     STA ram_sprites_counter
C - - - - - 0x01FAF6 07:FAE6: 20 08 FB  JSR sub_FB08
C - - - - - 0x01FAF9 07:FAE9: A5 CE     LDA ram_all_objects_counter
C - - - - - 0x01FAFB 07:FAEB: F0 05     BEQ bra_FAF2
C - - - - - 0x01FAFD 07:FAED: 85 67     STA ram_0067_t41_obj_counter
C - - - - - 0x01FAFF 07:FAEF: 20 16 FC  JSR sub_FC16
bra_FAF2:
C - - - - - 0x01FB02 07:FAF2: 20 C5 FD  JSR sub_FDC5
C - - - - - 0x01FB05 07:FAF5: 20 72 FE  JSR sub_FE72
C - - - - - 0x01FB08 07:FAF8: 20 99 FD  JSR sub_FD99
C - - - - - 0x01FB0B 07:FAFB: A9 01     LDA #$01
C - - - - - 0x01FB0D 07:FAFD: 85 0C     STA ram_nmi_flag
C - - - - - 0x01FB0F 07:FAFF: 85 E3     STA ram_00E3_flag
bra_FB01:
C - - - - - 0x01FB11 07:FB01: 68        PLA
C - - - - - 0x01FB12 07:FB02: 85 9C     STA ram_prg_bank_8000
; bzk optimize, JMP
C - - - - - 0x01FB14 07:FB04: 20 41 DB  JSR sub_DB41_prg_bankswitch_8000
C - - - - - 0x01FB17 07:FB07: 60        RTS



sub_FB08:
C - - - - - 0x01FB18 07:FB08: A9 00     LDA #$00
C - - - - - 0x01FB1A 07:FB0A: 85 70     STA ram_0070_t04_oam_index
C - - - - - 0x01FB1C 07:FB0C: AD 00 04  LDA ram_0400_flag
C - - - - - 0x01FB1F 07:FB0F: 10 0C     BPL bra_FB1D
C - - - - - 0x01FB21 07:FB11: 20 2F FB  JSR sub_FB2F
C - - - - - 0x01FB24 07:FB14: 20 8B FB  JSR sub_FB8B
C - - - - - 0x01FB27 07:FB17: 20 24 FB  JSR sub_FB24
C - - - - - 0x01FB2A 07:FB1A: 20 41 FB  JSR sub_FB41
bra_FB1D:
C - - - - - 0x01FB2D 07:FB1D: A9 00     LDA #$00
; bzk optimize, useless STA
C - - - - - 0x01FB2F 07:FB1F: 85 D1     STA ram_00D1_tFF_useless
; 
C - - - - - 0x01FB31 07:FB21: 85 D0     STA ram_00D0_flag
C - - - - - 0x01FB33 07:FB23: 60        RTS



sub_FB24:
C - - - - - 0x01FB34 07:FB24: A5 B0     LDA ram_00B0
; A = 00 01 
; bzk optimize, useless AND 03
C - - - - - 0x01FB36 07:FB26: 29 03     AND #$03
C - - - - - 0x01FB38 07:FB28: 85 D1     STA ram_00D1_t01_spr_A_pal
C - - - - - 0x01FB3A 07:FB2A: A9 01     LDA #$01
C - - - - - 0x01FB3C 07:FB2C: 85 D0     STA ram_00D0_flag
C - - - - - 0x01FB3E 07:FB2E: 60        RTS



sub_FB2F:
C - - - - - 0x01FB3F 07:FB2F: A5 B2     LDA ram_00B2_useless_00
C - - - - - 0x01FB41 07:FB31: 10 09     BPL bra_FB3C    ; jmp


; bzk garbage
- - - - - - 0x01FB43 07:FB33: 29 03     AND #$03
- - - - - - 0x01FB45 07:FB35: 85 D1     STA ram_00D1_t01_spr_A_pal
- - - - - - 0x01FB47 07:FB37: A9 01     LDA #$01
- - - - - - 0x01FB49 07:FB39: 85 D0     STA ram_00D0_flag
- - - - - - 0x01FB4B 07:FB3B: 60        RTS



bra_FB3C:
C - - - - - 0x01FB4C 07:FB3C: A9 00     LDA #$00
C - - - - - 0x01FB4E 07:FB3E: 85 D0     STA ram_00D0_flag
C - - - - - 0x01FB50 07:FB40: 60        RTS



sub_FB41:
C - - - - - 0x01FB51 07:FB41: AD 00 04  LDA ram_0400_flag
C - - - - - 0x01FB54 07:FB44: 10 44     BPL bra_FB8A_RTS
C - - - - - 0x01FB56 07:FB46: AD 04 04  LDA ram_pos_X_lo_player
C - - - - - 0x01FB59 07:FB49: 85 6B     STA ram_006B_t03_spr_X
C - - - - - 0x01FB5B 07:FB4B: AD 07 04  LDA ram_pos_Y_lo_player
C - - - - - 0x01FB5E 07:FB4E: 85 6C     STA ram_006C_t15_spr_Y
C - - - - - 0x01FB60 07:FB50: A9 05     LDA #con_prg_bank + $05
C - - - - - 0x01FB62 07:FB52: 85 9C     STA ram_prg_bank_8000
C - - - - - 0x01FB64 07:FB54: 20 41 DB  JSR sub_DB41_prg_bankswitch_8000
C - - - - - 0x01FB67 07:FB57: AD 0B 04  LDA ram_040B_player_state_data_ptr_lo
C - - - - - 0x01FB6A 07:FB5A: 85 5D     STA ram_005D_t21_data
C - - - - - 0x01FB6C 07:FB5C: AD 0C 04  LDA ram_040C_player_state_data_ptr_hi
C - - - - - 0x01FB6F 07:FB5F: 85 5E     STA ram_005D_t21_data + $01
C - - - - - 0x01FB71 07:FB61: A0 01     LDY #$01
C - - - - - 0x01FB73 07:FB63: B1 5D     LDA (ram_005D_t21_data),Y
C - - - - - 0x01FB75 07:FB65: 29 80     AND #$80
C - - - - - 0x01FB77 07:FB67: 4A        LSR
C - - - - - 0x01FB78 07:FB68: 85 6D     STA ram_006D_t01_spr_A_flip
C - - - - - 0x01FB7A 07:FB6A: A9 06     LDA #con_prg_bank + $06
C - - - - - 0x01FB7C 07:FB6C: 85 9C     STA ram_prg_bank_8000
C - - - - - 0x01FB7E 07:FB6E: 20 41 DB  JSR sub_DB41_prg_bankswitch_8000
C - - - - - 0x01FB81 07:FB71: AD 09 04  LDA ram_0409_spr_data_ptr_lo
C - - - - - 0x01FB84 07:FB74: 85 5B     STA ram_005B_t01_spr_data
C - - - - - 0x01FB86 07:FB76: AD 0A 04  LDA ram_040A_spr_data_ptr_hi
C - - - - - 0x01FB89 07:FB79: 85 5C     STA ram_005B_t01_spr_data + $01
C - - - - - 0x01FB8B 07:FB7B: A0 00     LDY #$00
C - - - - - 0x01FB8D 07:FB7D: 84 6F     STY ram_006F_t11_data_index
C - - - - - 0x01FB8F 07:FB7F: B1 5B     LDA (ram_005B_t01_spr_data),Y
C - - - - - 0x01FB91 07:FB81: 85 6E     STA ram_006E_t04_counter
C - - - - - 0x01FB93 07:FB83: 29 0F     AND #$0F
C - - - - - 0x01FB95 07:FB85: 85 68     STA ram_0068_t01_counter
; bzk optimize, JMP
C - - - - - 0x01FB97 07:FB87: 20 DF FC  JSR sub_FCDF
bra_FB8A_RTS:
C - - - - - 0x01FB9A 07:FB8A: 60        RTS



sub_FB8B:
C - - - - - 0x01FB9B 07:FB8B: AD 22 04  LDA ram_0422_flag
C - - - - - 0x01FB9E 07:FB8E: 10 5E     BPL bra_FBEE_RTS
C - - - - - 0x01FBA0 07:FB90: 29 01     AND #$01
C - - - - - 0x01FBA2 07:FB92: F0 03     BEQ bra_FB97
C - - - - - 0x01FBA4 07:FB94: 20 EF FB  JSR sub_FBEF_shield
bra_FB97:
C - - - - - 0x01FBA7 07:FB97: AD 26 04  LDA ram_pos_X_hi_shield
C - - - - - 0x01FBAA 07:FB9A: 0D 29 04  ORA ram_pos_Y_hi_shield
C - - - - - 0x01FBAD 07:FB9D: D0 4F     BNE bra_FBEE_RTS
; if ???
C - - - - - 0x01FBAF 07:FB9F: AD 25 04  LDA ram_pos_X_lo_shield
C - - - - - 0x01FBB2 07:FBA2: C9 F9     CMP #$F9
C - - - - - 0x01FBB4 07:FBA4: B0 48     BCS bra_FBEE_RTS
C - - - - - 0x01FBB6 07:FBA6: C9 02     CMP #$02
C - - - - - 0x01FBB8 07:FBA8: 90 44     BCC bra_FBEE_RTS
; if visible
C - - - - - 0x01FBBA 07:FBAA: AD 25 04  LDA ram_pos_X_lo_shield
C - - - - - 0x01FBBD 07:FBAD: 85 6B     STA ram_006B_t03_spr_X
C - - - - - 0x01FBBF 07:FBAF: AD 28 04  LDA ram_pos_Y_lo_shield
C - - - - - 0x01FBC2 07:FBB2: 85 6C     STA ram_006C_t15_spr_Y
; 
C - - - - - 0x01FBC4 07:FBB4: A9 05     LDA #con_prg_bank + $05
C - - - - - 0x01FBC6 07:FBB6: 85 9C     STA ram_prg_bank_8000
C - - - - - 0x01FBC8 07:FBB8: 20 41 DB  JSR sub_DB41_prg_bankswitch_8000
; 
C - - - - - 0x01FBCB 07:FBBB: AD 2C 04  LDA ram_042C_ptr_lo
C - - - - - 0x01FBCE 07:FBBE: 85 5D     STA ram_005D_t22_data
C - - - - - 0x01FBD0 07:FBC0: AD 2D 04  LDA ram_042D_ptr_hi
C - - - - - 0x01FBD3 07:FBC3: 85 5E     STA ram_005D_t22_data + $01
; 
C - - - - - 0x01FBD5 07:FBC5: A0 01     LDY #$01
C - - - - - 0x01FBD7 07:FBC7: B1 5D     LDA (ram_005D_t22_data),Y
; A = 00/80
C - - - - - 0x01FBD9 07:FBC9: 29 80     AND #$80
C - - - - - 0x01FBDB 07:FBCB: 4A        LSR
C - - - - - 0x01FBDC 07:FBCC: 85 6D     STA ram_006D_t01_spr_A_flip
; 
C - - - - - 0x01FBDE 07:FBCE: A9 06     LDA #con_prg_bank + $06
C - - - - - 0x01FBE0 07:FBD0: 85 9C     STA ram_prg_bank_8000
C - - - - - 0x01FBE2 07:FBD2: 20 41 DB  JSR sub_DB41_prg_bankswitch_8000
; 
C - - - - - 0x01FBE5 07:FBD5: AD 2A 04  LDA ram_042A_spr_data_ptr_lo
C - - - - - 0x01FBE8 07:FBD8: 85 5B     STA ram_005B_t01_spr_data
C - - - - - 0x01FBEA 07:FBDA: AD 2B 04  LDA ram_042B_spr_data_ptr_hi
C - - - - - 0x01FBED 07:FBDD: 85 5C     STA ram_005B_t01_spr_data + $01
; 
C - - - - - 0x01FBEF 07:FBDF: A0 00     LDY #$00
C - - - - - 0x01FBF1 07:FBE1: 84 6F     STY ram_006F_t11_data_index
C - - - - - 0x01FBF3 07:FBE3: B1 5B     LDA (ram_005B_t01_spr_data),Y
C - - - - - 0x01FBF5 07:FBE5: 85 6E     STA ram_006E_t04_counter
C - - - - - 0x01FBF7 07:FBE7: 29 0F     AND #$0F
C - - - - - 0x01FBF9 07:FBE9: 85 68     STA ram_0068_t01_counter
; bzk optimize, JMP
C - - - - - 0x01FBFB 07:FBEB: 20 DF FC  JSR sub_FCDF
bra_FBEE_RTS:
C - - - - - 0x01FBFE 07:FBEE: 60        RTS



sub_FBEF_shield:
C - - - - - 0x01FBFF 07:FBEF: A5 E9     LDA ram_pause_flag
C - - - - - 0x01FC01 07:FBF1: 30 22     BMI bra_FC15_RTS
; if not paused
C - - - - - 0x01FC03 07:FBF3: A5 D4     LDA ram_00D4_t01_spd_Y_lo
C - - - - - 0x01FC05 07:FBF5: 18        CLC
C - - - - - 0x01FC06 07:FBF6: 6D 28 04  ADC ram_pos_Y_lo_shield
C - - - - - 0x01FC09 07:FBF9: 8D 28 04  STA ram_pos_Y_lo_shield
C - - - - - 0x01FC0C 07:FBFC: AD 29 04  LDA ram_pos_Y_hi_shield
C - - - - - 0x01FC0F 07:FBFF: 65 D3     ADC ram_00D3_t02_spd_Y_hi
C - - - - - 0x01FC11 07:FC01: 8D 29 04  STA ram_pos_Y_hi_shield
C - - - - - 0x01FC14 07:FC04: A5 D6     LDA ram_00D6_t01_spd_X_lo
C - - - - - 0x01FC16 07:FC06: 18        CLC
C - - - - - 0x01FC17 07:FC07: 6D 25 04  ADC ram_pos_X_lo_shield
C - - - - - 0x01FC1A 07:FC0A: 8D 25 04  STA ram_pos_X_lo_shield
C - - - - - 0x01FC1D 07:FC0D: AD 26 04  LDA ram_pos_X_hi_shield
C - - - - - 0x01FC20 07:FC10: 65 D5     ADC ram_00D5_t01_spd_X_hi
C - - - - - 0x01FC22 07:FC12: 8D 26 04  STA ram_pos_X_hi_shield
bra_FC15_RTS:
C - - - - - 0x01FC25 07:FC15: 60        RTS



sub_FC16:
C - - - - - 0x01FC26 07:FC16: A5 14     LDA ram_frm_cnt
C - - - - - 0x01FC28 07:FC18: 29 01     AND #$01
C - - - - - 0x01FC2A 07:FC1A: 85 6F     STA ram_006F_t11_data_index
C - - - - - 0x01FC2C 07:FC1C: F0 04     BEQ bra_FC22
C - - - - - 0x01FC2E 07:FC1E: A9 FC     LDA #$FC
C - - - - - 0x01FC30 07:FC20: 85 70     STA ram_0070_t04_oam_index
bra_FC22:
C - - - - - 0x01FC32 07:FC22: A2 00     LDX #$00
bra_FC24_loop:
; also
    ; ram_043A_obj_flags + $03
    ; ram_obj_drop_id (A always < 80)
    ; ram_obj_id (up to 044E)
C - - - - - 0x01FC34 07:FC24: BD 3A 04  LDA ram_043A_obj_flags,X
C - - - - - 0x01FC37 07:FC27: 30 06     BMI bra_FC2F
C - - - - - 0x01FC39 07:FC29: E8        INX
C - - - - - 0x01FC3A 07:FC2A: E0 15     CPX #$15
C - - - - - 0x01FC3C 07:FC2C: 90 F6     BCC bra_FC24_loop
C - - - - - 0x01FC3E 07:FC2E: 60        RTS
bra_FC2F:
C - - - - - 0x01FC3F 07:FC2F: 86 6A     STX ram_006A_t10_obj_index
C - - - - - 0x01FC41 07:FC31: 85 74     STA ram_0074_t04_obj_flag
C - - - - - 0x01FC43 07:FC33: 29 01     AND #$01
C - - - - - 0x01FC45 07:FC35: F0 03     BEQ bra_FC3A
C - - - - - 0x01FC47 07:FC37: 20 6D FC  JSR sub_FC6D
bra_FC3A:
C - - - - - 0x01FC4A 07:FC3A: A5 74     LDA ram_0074_t04_obj_flag
C - - - - - 0x01FC4C 07:FC3C: 29 02     AND #$02
C - - - - - 0x01FC4E 07:FC3E: F0 06     BEQ bra_FC46
C - - - - - 0x01FC50 07:FC40: A5 14     LDA ram_frm_cnt
C - - - - - 0x01FC52 07:FC42: 29 02     AND #$02
C - - - - - 0x01FC54 07:FC44: D0 1F     BNE bra_FC65_next_object
bra_FC46:
C - - - - - 0x01FC56 07:FC46: BD 6E 04  LDA ram_pos_X_hi_obj,X
C - - - - - 0x01FC59 07:FC49: D0 1A     BNE bra_FC65_next_object
C - - - - - 0x01FC5B 07:FC4B: BD 95 04  LDA ram_pos_Y_hi_obj,X
C - - - - - 0x01FC5E 07:FC4E: D0 15     BNE bra_FC65_next_object
C - - - - - 0x01FC60 07:FC50: BD 61 04  LDA ram_pos_X_lo_obj,X
C - - - - - 0x01FC63 07:FC53: C9 04     CMP #$04
C - - - - - 0x01FC65 07:FC55: 90 0E     BCC bra_FC65_next_object
C - - - - - 0x01FC67 07:FC57: C9 FC     CMP #$FC
C - - - - - 0x01FC69 07:FC59: B0 0A     BCS bra_FC65_next_object
C - - - - - 0x01FC6B 07:FC5B: 85 6B     STA ram_006B_t03_spr_X
C - - - - - 0x01FC6D 07:FC5D: BD 88 04  LDA ram_pos_Y_lo_obj,X
C - - - - - 0x01FC70 07:FC60: 85 6C     STA ram_006C_t15_spr_Y
C - - - - - 0x01FC72 07:FC62: 20 94 FC  JSR sub_FC94
bra_FC65_next_object:
C - - - - - 0x01FC75 07:FC65: A6 6A     LDX ram_006A_t10_obj_index
C - - - - - 0x01FC77 07:FC67: E8        INX
C - - - - - 0x01FC78 07:FC68: C6 67     DEC ram_0067_t41_obj_counter
C - - - - - 0x01FC7A 07:FC6A: D0 B8     BNE bra_FC24_loop
C - - - - - 0x01FC7C 07:FC6C: 60        RTS



sub_FC6D:
C - - - - - 0x01FC7D 07:FC6D: A5 E9     LDA ram_pause_flag
C - - - - - 0x01FC7F 07:FC6F: 30 22     BMI bra_FC93_RTS
; if not paused
C - - - - - 0x01FC81 07:FC71: A5 D4     LDA ram_00D4_t01_spd_Y_lo
C - - - - - 0x01FC83 07:FC73: 18        CLC
C - - - - - 0x01FC84 07:FC74: 7D 88 04  ADC ram_pos_Y_lo_obj,X
C - - - - - 0x01FC87 07:FC77: 9D 88 04  STA ram_pos_Y_lo_obj,X
C - - - - - 0x01FC8A 07:FC7A: BD 95 04  LDA ram_pos_Y_hi_obj,X
C - - - - - 0x01FC8D 07:FC7D: 65 D3     ADC ram_00D3_t02_spd_Y_hi
C - - - - - 0x01FC8F 07:FC7F: 9D 95 04  STA ram_pos_Y_hi_obj,X
; 
C - - - - - 0x01FC92 07:FC82: A5 D6     LDA ram_00D6_t01_spd_X_lo
C - - - - - 0x01FC94 07:FC84: 18        CLC
C - - - - - 0x01FC95 07:FC85: 7D 61 04  ADC ram_pos_X_lo_obj,X
C - - - - - 0x01FC98 07:FC88: 9D 61 04  STA ram_pos_X_lo_obj,X
C - - - - - 0x01FC9B 07:FC8B: BD 6E 04  LDA ram_pos_X_hi_obj,X
C - - - - - 0x01FC9E 07:FC8E: 65 D5     ADC ram_00D5_t01_spd_X_hi
C - - - - - 0x01FCA0 07:FC90: 9D 6E 04  STA ram_pos_X_hi_obj,X
bra_FC93_RTS:
C - - - - - 0x01FCA3 07:FC93: 60        RTS



sub_FC94:
C - - - - - 0x01FCA4 07:FC94: A5 CF     LDA ram_sprites_counter
C - - - - - 0x01FCA6 07:FC96: C9 40     CMP #$40
C - - - - - 0x01FCA8 07:FC98: B0 44     BCS bra_FCDE_RTS
C - - - - - 0x01FCAA 07:FC9A: E0 03     CPX #$03
C - - - - - 0x01FCAC 07:FC9C: 90 08     BCC bra_FCA6
C - - - - - 0x01FCAE 07:FC9E: A5 DB     LDA ram_00DB_flag
C - - - - - 0x01FCB0 07:FCA0: 10 04     BPL bra_FCA6
C - - - - - 0x01FCB2 07:FCA2: A9 0D     LDA #con_prg_bank + $0D
C - - - - - 0x01FCB4 07:FCA4: D0 02     BNE bra_FCA8    ; jmp
bra_FCA6:
C - - - - - 0x01FCB6 07:FCA6: A9 05     LDA #con_prg_bank + $05
bra_FCA8:
C - - - - - 0x01FCB8 07:FCA8: 85 9C     STA ram_prg_bank_8000
C - - - - - 0x01FCBA 07:FCAA: 20 41 DB  JSR sub_DB41_prg_bankswitch_8000
C - - - - - 0x01FCBD 07:FCAD: BD BC 04  LDA ram_04BC_data_ptr_lo_obj,X
C - - - - - 0x01FCC0 07:FCB0: 85 5D     STA ram_005D_t23_data
C - - - - - 0x01FCC2 07:FCB2: BD C9 04  LDA ram_04C9_data_ptr_hi_obj,X
C - - - - - 0x01FCC5 07:FCB5: 85 5E     STA ram_005D_t23_data + $01
C - - - - - 0x01FCC7 07:FCB7: A0 01     LDY #$01
C - - - - - 0x01FCC9 07:FCB9: B1 5D     LDA (ram_005D_t23_data),Y   ; read from 0x00B896
C - - - - - 0x01FCCB 07:FCBB: 29 80     AND #$80
C - - - - - 0x01FCCD 07:FCBD: 4A        LSR
C - - - - - 0x01FCCE 07:FCBE: 85 6D     STA ram_006D_t01_spr_A_flip
C - - - - - 0x01FCD0 07:FCC0: A9 06     LDA #con_prg_bank + $06
C - - - - - 0x01FCD2 07:FCC2: 85 9C     STA ram_prg_bank_8000
C - - - - - 0x01FCD4 07:FCC4: 20 41 DB  JSR sub_DB41_prg_bankswitch_8000
; also
    ; ram_spr_data_ptr_lo_obj + $03
    ; ram_spr_data_ptr_lo_obj + $07
C - - - - - 0x01FCD7 07:FCC7: BD A2 04  LDA ram_spr_data_ptr_lo_obj,X
C - - - - - 0x01FCDA 07:FCCA: 85 5B     STA ram_005B_t01_spr_data
; also
    ; ram_spr_data_ptr_hi_obj + $03
    ; ram_spr_data_ptr_hi_obj + $07
C - - - - - 0x01FCDC 07:FCCC: BD AF 04  LDA ram_spr_data_ptr_hi_obj,X
C - - - - - 0x01FCDF 07:FCCF: 85 5C     STA ram_005B_t01_spr_data + $01
C - - - - - 0x01FCE1 07:FCD1: A0 00     LDY #$00
C - - - - - 0x01FCE3 07:FCD3: B1 5B     LDA (ram_005B_t01_spr_data),Y
C - - - - - 0x01FCE5 07:FCD5: 85 6E     STA ram_006E_t04_counter
C - - - - - 0x01FCE7 07:FCD7: 29 1F     AND #$1F
C - - - - - 0x01FCE9 07:FCD9: 85 68     STA ram_0068_t01_counter
; bzk optimize, JMP
C - - - - - 0x01FCEB 07:FCDB: 20 DF FC  JSR sub_FCDF
bra_FCDE_RTS:
C - - - - - 0x01FCEE 07:FCDE: 60        RTS



sub_FCDF:
; in
    ; Y = 00
    ; ram_006E_t04_counter
C - - - - - 0x01FCEF 07:FCDF: A5 6E     LDA ram_006E_t04_counter
C - - - - - 0x01FCF1 07:FCE1: 10 1E     BPL bra_FD01
C - - - - - 0x01FCF3 07:FCE3: C8        INY ; 01
C - - - - - 0x01FCF4 07:FCE4: B1 5B     LDA (ram_005B_t01_spr_data),Y
C - - - - - 0x01FCF6 07:FCE6: 05 6D     ORA ram_006D_t01_spr_A_flip
C - - - - - 0x01FCF8 07:FCE8: 85 71     STA ram_0071_t05_spr_A
C - - - - - 0x01FCFA 07:FCEA: C8        INY ; 02
C - - - - - 0x01FCFB 07:FCEB: B1 5B     LDA (ram_005B_t01_spr_data),Y
C - - - - - 0x01FCFD 07:FCED: 48        PHA ; 1
C - - - - - 0x01FCFE 07:FCEE: C8        INY ; 03
C - - - - - 0x01FCFF 07:FCEF: B1 5B     LDA (ram_005B_t01_spr_data),Y
C - - - - - 0x01FD01 07:FCF1: 48        PHA ; 2
C - - - - - 0x01FD02 07:FCF2: 20 0B FD  JSR sub_FD0B
C - - - - - 0x01FD05 07:FCF5: 68        PLA ; 2
C - - - - - 0x01FD06 07:FCF6: 05 6D     ORA ram_006D_t01_spr_A_flip
C - - - - - 0x01FD08 07:FCF8: 85 71     STA ram_0071_t05_spr_A
C - - - - - 0x01FD0A 07:FCFA: 68        PLA ; 1
C - - - - - 0x01FD0B 07:FCFB: 85 68     STA ram_0068_t01_counter
loc_FCFD:
; bzk optimize, JMP
C D 3 - - - 0x01FD0D 07:FCFD: 20 0B FD  JSR sub_FD0B
C - - - - - 0x01FD10 07:FD00: 60        RTS
bra_FD01:
C - - - - - 0x01FD11 07:FD01: C8        INY ; 01
C - - - - - 0x01FD12 07:FD02: B1 5B     LDA (ram_005B_t01_spr_data),Y
C - - - - - 0x01FD14 07:FD04: 05 6D     ORA ram_006D_t01_spr_A_flip
C - - - - - 0x01FD16 07:FD06: 85 71     STA ram_0071_t05_spr_A
C - - - - - 0x01FD18 07:FD08: 4C FD FC  JMP loc_FCFD



sub_FD0B:
; in
    ; ram_005B_t01_spr_data
    ; ram_0068_t01_counter
    ; ram_006B_t03_spr_X
    ; ram_006C_t15_spr_Y
    ; ram_006D_t01_spr_A_flip
    ; ram_0070_t04_oam_index
    ; ram_00D1_t01_spr_A_pal
C - - - - - 0x01FD1B 07:FD0B: A6 70     LDX ram_0070_t04_oam_index
C - - - - - 0x01FD1D 07:FD0D: A5 68     LDA ram_0068_t01_counter
C - - - - - 0x01FD1F 07:FD0F: F0 79     BEQ bra_FD8A_exit
bra_FD11_loop:
C - - - - - 0x01FD21 07:FD11: A9 00     LDA #$00
C - - - - - 0x01FD23 07:FD13: 85 75     STA ram_0075_t06
C - - - - - 0x01FD25 07:FD15: 85 76     STA ram_obj_index
C - - - - - 0x01FD27 07:FD17: C8        INY
C - - - - - 0x01FD28 07:FD18: B1 5B     LDA (ram_005B_t01_spr_data),Y
C - - - - - 0x01FD2A 07:FD1A: 85 77     STA ram_0077_t01_spr_Y
C - - - - - 0x01FD2C 07:FD1C: 10 06     BPL bra_FD24
; bzk optimize, DEC 0075, delete LDA
C - - - - - 0x01FD2E 07:FD1E: A9 FF     LDA #$FF
C - - - - - 0x01FD30 07:FD20: 85 75     STA ram_0075_t06
C - - - - - 0x01FD32 07:FD22: A5 77     LDA ram_0077_t01_spr_Y
bra_FD24:
C - - - - - 0x01FD34 07:FD24: 18        CLC
C - - - - - 0x01FD35 07:FD25: 65 6C     ADC ram_006C_t15_spr_Y
C - - - - - 0x01FD37 07:FD27: 9D 00 07  STA ram_spr_Y,X
C - - - - - 0x01FD3A 07:FD2A: A5 75     LDA ram_0075_t06
C - - - - - 0x01FD3C 07:FD2C: 69 00     ADC #$00
C - - - - - 0x01FD3E 07:FD2E: D0 5D     BNE bra_FD8D
C - - - - - 0x01FD40 07:FD30: BD 00 07  LDA ram_spr_Y,X
C - - - - - 0x01FD43 07:FD33: C9 EC     CMP #$EC
C - - - - - 0x01FD45 07:FD35: B0 56     BCS bra_FD8D
C - - - - - 0x01FD47 07:FD37: C8        INY
C - - - - - 0x01FD48 07:FD38: B1 5B     LDA (ram_005B_t01_spr_data),Y
C - - - - - 0x01FD4A 07:FD3A: 9D 01 07  STA ram_spr_T,X
C - - - - - 0x01FD4D 07:FD3D: A5 D0     LDA ram_00D0_flag
C - - - - - 0x01FD4F 07:FD3F: F0 09     BEQ bra_FD4A
; clear flipping
C - - - - - 0x01FD51 07:FD41: A5 71     LDA ram_0071_t05_spr_A
C - - - - - 0x01FD53 07:FD43: 29 FC     AND #$FC
C - - - - - 0x01FD55 07:FD45: 05 D1     ORA ram_00D1_t01_spr_A_pal
C - - - - - 0x01FD57 07:FD47: 4C 4C FD  JMP loc_FD4C
bra_FD4A:
C - - - - - 0x01FD5A 07:FD4A: A5 71     LDA ram_0071_t05_spr_A
loc_FD4C:
C D 3 - - - 0x01FD5C 07:FD4C: 9D 02 07  STA ram_spr_A,X
C - - - - - 0x01FD5F 07:FD4F: C8        INY
C - - - - - 0x01FD60 07:FD50: A5 6D     LDA ram_006D_t01_spr_A_flip
C - - - - - 0x01FD62 07:FD52: F0 08     BEQ bra_FD5C
C - - - - - 0x01FD64 07:FD54: A9 F8     LDA #$F8
C - - - - - 0x01FD66 07:FD56: 38        SEC
C - - - - - 0x01FD67 07:FD57: F1 5B     SBC (ram_005B_t01_spr_data),Y
C - - - - - 0x01FD69 07:FD59: 4C 5E FD  JMP loc_FD5E
bra_FD5C:
C - - - - - 0x01FD6C 07:FD5C: B1 5B     LDA (ram_005B_t01_spr_data),Y
loc_FD5E:
C D 3 - - - 0x01FD6E 07:FD5E: 85 77     STA ram_0077_t02_spr_X
C - - - - - 0x01FD70 07:FD60: 10 04     BPL bra_FD66
C - - - - - 0x01FD72 07:FD62: A9 FF     LDA #$FF
C - - - - - 0x01FD74 07:FD64: 85 76     STA ram_obj_index
bra_FD66:
C - - - - - 0x01FD76 07:FD66: A5 77     LDA ram_0077_t02_spr_X
C - - - - - 0x01FD78 07:FD68: 18        CLC
C - - - - - 0x01FD79 07:FD69: 65 6B     ADC ram_006B_t03_spr_X
C - - - - - 0x01FD7B 07:FD6B: 9D 03 07  STA ram_spr_X,X
C - - - - - 0x01FD7E 07:FD6E: A5 76     LDA ram_obj_index
C - - - - - 0x01FD80 07:FD70: 69 00     ADC #$00
C - - - - - 0x01FD82 07:FD72: D0 12     BNE bra_FD86_next
C - - - - - 0x01FD84 07:FD74: E6 CF     INC ram_sprites_counter
C - - - - - 0x01FD86 07:FD76: A5 CF     LDA ram_sprites_counter
C - - - - - 0x01FD88 07:FD78: C9 40     CMP #$40
C - - - - - 0x01FD8A 07:FD7A: B0 0E     BCS bra_FD8A_exit
C - - - - - 0x01FD8C 07:FD7C: A5 6F     LDA ram_006F_t11_data_index
C - - - - - 0x01FD8E 07:FD7E: D0 11     BNE bra_FD91
C - - - - - 0x01FD90 07:FD80: E8        INX
C - - - - - 0x01FD91 07:FD81: E8        INX
C - - - - - 0x01FD92 07:FD82: E8        INX
C - - - - - 0x01FD93 07:FD83: E8        INX
C - - - - - 0x01FD94 07:FD84: F0 04     BEQ bra_FD8A_exit    ; if OAM is full
bra_FD86_next:
C - - - - - 0x01FD96 07:FD86: C6 68     DEC ram_0068_t01_counter
C - - - - - 0x01FD98 07:FD88: D0 87     BNE bra_FD11_loop
bra_FD8A_exit:
C - - - - - 0x01FD9A 07:FD8A: 86 70     STX ram_0070_t04_oam_index
C - - - - - 0x01FD9C 07:FD8C: 60        RTS
bra_FD8D:
C - - - - - 0x01FD9D 07:FD8D: C8        INY
C - - - - - 0x01FD9E 07:FD8E: C8        INY
C - - - - - 0x01FD9F 07:FD8F: D0 F5     BNE bra_FD86_next    ; jmp?
bra_FD91:
C - - - - - 0x01FDA1 07:FD91: CA        DEX
C - - - - - 0x01FDA2 07:FD92: CA        DEX
C - - - - - 0x01FDA3 07:FD93: CA        DEX
C - - - - - 0x01FDA4 07:FD94: CA        DEX
C - - - - - 0x01FDA5 07:FD95: F0 F3     BEQ bra_FD8A_exit
C - - - - - 0x01FDA7 07:FD97: D0 ED     BNE bra_FD86_next    ; jmp



sub_FD99:
C - - - - - 0x01FDA9 07:FD99: A5 CF     LDA ram_sprites_counter
C - - - - - 0x01FDAB 07:FD9B: C9 40     CMP #$40
C - - - - - 0x01FDAD 07:FD9D: B0 18     BCS bra_FDB7_RTS
C - - - - - 0x01FDAF 07:FD9F: A9 40     LDA #$40
C - - - - - 0x01FDB1 07:FDA1: 38        SEC
C - - - - - 0x01FDB2 07:FDA2: E5 CF     SBC ram_sprites_counter
C - - - - - 0x01FDB4 07:FDA4: A8        TAY
C - - - - - 0x01FDB5 07:FDA5: A6 70     LDX ram_0070_t04_oam_index
; bzk bug? value can be from
    ; ram_006F_t06
    ; ram_006F_t08_score_lo
    ; ram_006F_t11_data_index
C - - - - - 0x01FDB7 07:FDA7: A5 6F     LDA ram_006F_t11_data_index
C - - - - - 0x01FDB9 07:FDA9: D0 0D     BNE bra_FDB8
C - - - - - 0x01FDBB 07:FDAB: A9 F8     LDA #$F8
bra_FDAD_loop:
C - - - - - 0x01FDBD 07:FDAD: 9D 00 07  STA ram_spr_Y,X
C - - - - - 0x01FDC0 07:FDB0: E8        INX
C - - - - - 0x01FDC1 07:FDB1: E8        INX
C - - - - - 0x01FDC2 07:FDB2: E8        INX
C - - - - - 0x01FDC3 07:FDB3: E8        INX
C - - - - - 0x01FDC4 07:FDB4: 88        DEY
C - - - - - 0x01FDC5 07:FDB5: D0 F6     BNE bra_FDAD_loop
bra_FDB7_RTS:
C - - - - - 0x01FDC7 07:FDB7: 60        RTS
bra_FDB8:
C - - - - - 0x01FDC8 07:FDB8: A9 F8     LDA #$F8
bra_FDBA_loop:
C - - - - - 0x01FDCA 07:FDBA: 9D 00 07  STA ram_spr_Y,X
C - - - - - 0x01FDCD 07:FDBD: CA        DEX
C - - - - - 0x01FDCE 07:FDBE: CA        DEX
C - - - - - 0x01FDCF 07:FDBF: CA        DEX
C - - - - - 0x01FDD0 07:FDC0: CA        DEX
C - - - - - 0x01FDD1 07:FDC1: 88        DEY
C - - - - - 0x01FDD2 07:FDC2: D0 F6     BNE bra_FDBA_loop
C - - - - - 0x01FDD4 07:FDC4: 60        RTS



sub_FDC5:
C - - - - - 0x01FDD5 07:FDC5: AD F2 03  LDA ram_03F2_counter
C - - - - - 0x01FDD8 07:FDC8: F0 0E     BEQ bra_FDD8_RTS
C - - - - - 0x01FDDA 07:FDCA: 85 72     STA ram_0072_t03
C - - - - - 0x01FDDC 07:FDCC: A2 00     LDX #$00
bra_FDCE_loop:
C - - - - - 0x01FDDE 07:FDCE: BD 87 05  LDA ram_0587_obj,X
C - - - - - 0x01FDE1 07:FDD1: 30 06     BMI bra_FDD9
bra_FDD3:
C - - - - - 0x01FDE3 07:FDD3: E8        INX
C - - - - - 0x01FDE4 07:FDD4: E0 0A     CPX #$0A
C - - - - - 0x01FDE6 07:FDD6: 90 F6     BCC bra_FDCE_loop
bra_FDD8_RTS:
C - - - - - 0x01FDE8 07:FDD8: 60        RTS
bra_FDD9:
C - - - - - 0x01FDE9 07:FDD9: BD 87 05  LDA ram_0587_obj,X
C - - - - - 0x01FDEC 07:FDDC: 29 70     AND #$70
C - - - - - 0x01FDEE 07:FDDE: C9 70     CMP #$70
C - - - - - 0x01FDF0 07:FDE0: F0 16     BEQ bra_FDF8
C - - - - - 0x01FDF2 07:FDE2: BD 9B 05  LDA ram_059B_obj_spr_Y,X
C - - - - - 0x01FDF5 07:FDE5: 85 6C     STA ram_006C_t15_spr_Y
C - - - - - 0x01FDF7 07:FDE7: BD 91 05  LDA ram_0591_obj_spr_X,X
C - - - - - 0x01FDFA 07:FDEA: 85 6B     STA ram_006B_t03_spr_X
bra_FDEC:
C - - - - - 0x01FDFC 07:FDEC: 86 73     STX ram_0073_t01_save_X
C - - - - - 0x01FDFE 07:FDEE: 20 08 FE  JSR sub_FE08
C - - - - - 0x01FE01 07:FDF1: A6 73     LDX ram_0073_t01_save_X
bra_FDF3:
C - - - - - 0x01FE03 07:FDF3: C6 72     DEC ram_0072_t03
C - - - - - 0x01FE05 07:FDF5: D0 DC     BNE bra_FDD3
C - - - - - 0x01FE07 07:FDF7: 60        RTS
bra_FDF8:
C - - - - - 0x01FE08 07:FDF8: A5 14     LDA ram_frm_cnt
C - - - - - 0x01FE0A 07:FDFA: 29 10     AND #$10
C - - - - - 0x01FE0C 07:FDFC: D0 F5     BNE bra_FDF3
C - - - - - 0x01FE0E 07:FDFE: A9 38     LDA #$38
C - - - - - 0x01FE10 07:FE00: 85 6B     STA ram_006B_t03_spr_X
C - - - - - 0x01FE12 07:FE02: A9 28     LDA #$28
C - - - - - 0x01FE14 07:FE04: 85 6C     STA ram_006C_t15_spr_Y
C - - - - - 0x01FE16 07:FE06: D0 E4     BNE bra_FDEC    ; jmp



sub_FE08:
C - - - - - 0x01FE18 07:FE08: BD 87 05  LDA ram_0587_obj,X
C - - - - - 0x01FE1B 07:FE0B: 29 70     AND #$70
; / 08
C - - - - - 0x01FE1D 07:FE0D: 4A        LSR
C - - - - - 0x01FE1E 07:FE0E: 4A        LSR
C - - - - - 0x01FE1F 07:FE0F: 4A        LSR
; 
C - - - - - 0x01FE20 07:FE10: A8        TAY
C - - - - - 0x01FE21 07:FE11: B9 30 FE  LDA tbl_FE30,Y
C - - - - - 0x01FE24 07:FE14: 85 5B     STA ram_005B_t01_spr_data
C - - - - - 0x01FE26 07:FE16: B9 31 FE  LDA tbl_FE30 + $01,Y
C - - - - - 0x01FE29 07:FE19: 85 5C     STA ram_005B_t01_spr_data + $01
C - - - - - 0x01FE2B 07:FE1B: A9 00     LDA #$00
C - - - - - 0x01FE2D 07:FE1D: 85 6D     STA ram_006D_t01_spr_A_flip
C - - - - - 0x01FE2F 07:FE1F: A0 00     LDY #$00
C - - - - - 0x01FE31 07:FE21: B1 5B     LDA (ram_005B_t01_spr_data),Y
; bzk optimize, useless AND, no values higher than 0F
C - - - - - 0x01FE33 07:FE23: 29 0F     AND #$0F
C - - - - - 0x01FE35 07:FE25: 85 68     STA ram_0068_t01_counter
C - - - - - 0x01FE37 07:FE27: C8        INY ; 01
C - - - - - 0x01FE38 07:FE28: B1 5B     LDA (ram_005B_t01_spr_data),Y
C - - - - - 0x01FE3A 07:FE2A: 85 71     STA ram_0071_t05_spr_A
; bzk optimize, JMP
C - - - - - 0x01FE3C 07:FE2C: 20 0B FD  JSR sub_FD0B
C - - - - - 0x01FE3F 07:FE2F: 60        RTS



tbl_FE30:
- D 3 - - - 0x01FE40 07:FE30: 40 FE     .word _off007_FE40_00
- D 3 - - - 0x01FE42 07:FE32: 48 FE     .word _off007_FE48_10
- D 3 - - - 0x01FE44 07:FE34: 50 FE     .word _off007_FE50_20
- D 3 - - - 0x01FE46 07:FE36: 64 FE     .word _off007_FE64_30
- D 3 - - - 0x01FE48 07:FE38: 64 FE     .word _off007_FE64_40
- D 3 - - - 0x01FE4A 07:FE3A: 64 FE     .word _off007_FE64_50
- D 3 - - - 0x01FE4C 07:FE3C: 64 FE     .word _off007_FE64_60
- D 3 - - - 0x01FE4E 07:FE3E: 64 FE     .word _off007_FE64_70



_off007_FE40_00:
; ???
- D 3 - I - 0x01FE50 07:FE40: 02        .byte $02   ; 
- D 3 - I - 0x01FE51 07:FE41: 01        .byte $01   ; 
; 01 
- D 3 - I - 0x01FE52 07:FE42: F8        .byte $F8   ; 
- D 3 - I - 0x01FE53 07:FE43: 79        .byte $79   ; 
- D 3 - I - 0x01FE54 07:FE44: FA        .byte $FA   ; 
; 02 
- D 3 - I - 0x01FE55 07:FE45: F8        .byte $F8   ; 
- D 3 - I - 0x01FE56 07:FE46: 77        .byte $77   ; 
- D 3 - I - 0x01FE57 07:FE47: FE        .byte $FE   ; 



_off007_FE48_10:
- D 3 - I - 0x01FE58 07:FE48: 02        .byte $02   ; 
- D 3 - I - 0x01FE59 07:FE49: 01        .byte $01   ; 
; 01 
- D 3 - I - 0x01FE5A 07:FE4A: F8        .byte $F8   ; 
- D 3 - I - 0x01FE5B 07:FE4B: 79        .byte $79   ; 
- D 3 - I - 0x01FE5C 07:FE4C: F8        .byte $F8   ; 
; 02 
- D 3 - I - 0x01FE5D 07:FE4D: F8        .byte $F8   ; 
- D 3 - I - 0x01FE5E 07:FE4E: 77        .byte $77   ; 
- D 3 - I - 0x01FE5F 07:FE4F: 00        .byte $00   ; 



_off007_FE50_20:
- D 3 - I - 0x01FE60 07:FE50: 06        .byte $06   ; 
- D 3 - I - 0x01FE61 07:FE51: 01        .byte $01   ; 
; 01 
- D 3 - I - 0x01FE62 07:FE52: F0        .byte $F0   ; 
- D 3 - I - 0x01FE63 07:FE53: 7D        .byte $7D   ; 
- D 3 - I - 0x01FE64 07:FE54: F8        .byte $F8   ; 
; 02 
- D 3 - I - 0x01FE65 07:FE55: F0        .byte $F0   ; 
- D 3 - I - 0x01FE66 07:FE56: 63        .byte $63   ; 
- D 3 - I - 0x01FE67 07:FE57: 00        .byte $00   ; 
; 03 
- D 3 - I - 0x01FE68 07:FE58: F8        .byte $F8   ; 
- D 3 - I - 0x01FE69 07:FE59: 7B        .byte $7B   ; 
- D 3 - I - 0x01FE6A 07:FE5A: F0        .byte $F0   ; 
; 04 
- D 3 - I - 0x01FE6B 07:FE5B: F8        .byte $F8   ; 
- D 3 - I - 0x01FE6C 07:FE5C: 65        .byte $65   ; 
- D 3 - I - 0x01FE6D 07:FE5D: 08        .byte $08   ; 
; 05 
- D 3 - I - 0x01FE6E 07:FE5E: 00        .byte $00   ; 
- D 3 - I - 0x01FE6F 07:FE5F: 7F        .byte $7F   ; 
- D 3 - I - 0x01FE70 07:FE60: F8        .byte $F8   ; 
; 06 
- D 3 - I - 0x01FE71 07:FE61: 00        .byte $00   ; 
- D 3 - I - 0x01FE72 07:FE62: 67        .byte $67   ; 
- D 3 - I - 0x01FE73 07:FE63: 00        .byte $00   ; 



_off007_FE64_30:
_off007_FE64_40:
_off007_FE64_50:
_off007_FE64_60:
_off007_FE64_70:
- D 3 - I - 0x01FE74 07:FE64: 04        .byte $04   ; 
- D 3 - I - 0x01FE75 07:FE65: 01        .byte $01   ; 
; 01 
- D 3 - I - 0x01FE76 07:FE66: F0        .byte $F0   ; 
- D 3 - I - 0x01FE77 07:FE67: 6D        .byte $6D   ; 
- D 3 - I - 0x01FE78 07:FE68: F0        .byte $F0   ; 
; 02 
- D 3 - I - 0x01FE79 07:FE69: F0        .byte $F0   ; 
- D 3 - I - 0x01FE7A 07:FE6A: 6F        .byte $6F   ; 
- D 3 - I - 0x01FE7B 07:FE6B: F8        .byte $F8   ; 
; 03 
- D 3 - I - 0x01FE7C 07:FE6C: F0        .byte $F0   ; 
- D 3 - I - 0x01FE7D 07:FE6D: 71        .byte $71   ; 
- D 3 - I - 0x01FE7E 07:FE6E: 00        .byte $00   ; 
; 04 
- D 3 - I - 0x01FE7F 07:FE6F: F0        .byte $F0   ; 
- D 3 - I - 0x01FE80 07:FE70: 73        .byte $73   ; 
- D 3 - I - 0x01FE81 07:FE71: 08        .byte $08   ; 



sub_FE72:
C - - - - - 0x01FE82 07:FE72: A9 DD     LDA #< tbl_FEDD
C - - - - - 0x01FE84 07:FE74: 85 5B     STA ram_005B_t01_spr_data
C - - - - - 0x01FE86 07:FE76: A9 FE     LDA #> tbl_FEDD
C - - - - - 0x01FE88 07:FE78: 85 5C     STA ram_005B_t01_spr_data + $01
C - - - - - 0x01FE8A 07:FE7A: A5 E6     LDA ram_00E6_flag
C - - - - - 0x01FE8C 07:FE7C: F0 5E     BEQ bra_FEDC_RTS
C - - - - - 0x01FE8E 07:FE7E: 10 2D     BPL bra_FEAD
C - - - - - 0x01FE90 07:FE80: AD 3D 04  LDA ram_043A_obj_flags + $03
C - - - - - 0x01FE93 07:FE83: F0 28     BEQ bra_FEAD
C - - - - - 0x01FE95 07:FE85: A9 E0     LDA #$E0
C - - - - - 0x01FE97 07:FE87: 85 6B     STA ram_006B_t03_spr_X
C - - - - - 0x01FE99 07:FE89: A0 00     LDY #$00
C - - - - - 0x01FE9B 07:FE8B: AD 79 05  LDA ram_obj_hp
C - - - - - 0x01FE9E 07:FE8E: F0 1D     BEQ bra_FEAD
C - - - - - 0x01FEA0 07:FE90: 30 1B     BMI bra_FEAD
C - - - - - 0x01FEA2 07:FE92: C9 03     CMP #$03
C - - - - - 0x01FEA4 07:FE94: B0 06     BCS bra_FE9C
C - - - - - 0x01FEA6 07:FE96: A5 14     LDA ram_frm_cnt
C - - - - - 0x01FEA8 07:FE98: 29 08     AND #$08
C - - - - - 0x01FEAA 07:FE9A: F0 11     BEQ bra_FEAD
bra_FE9C:
C - - - - - 0x01FEAC 07:FE9C: AD 79 05  LDA ram_obj_hp
C - - - - - 0x01FEAF 07:FE9F: 38        SEC
C - - - - - 0x01FEB0 07:FEA0: E9 01     SBC #$01
; / 04
C - - - - - 0x01FEB2 07:FEA2: 4A        LSR
C - - - - - 0x01FEB3 07:FEA3: 4A        LSR
; 
C - - - - - 0x01FEB4 07:FEA4: C9 05     CMP #$05
C - - - - - 0x01FEB6 07:FEA6: 90 02     BCC bra_FEAA_not_overflow
; if overflow
- - - - - - 0x01FEB8 07:FEA8: A9 04     LDA #$04
bra_FEAA_not_overflow:
C - - - - - 0x01FEBA 07:FEAA: 20 ED FE  JSR sub_FEED
bra_FEAD:
C - - - - - 0x01FEBD 07:FEAD: AD 00 04  LDA ram_0400_flag
C - - - - - 0x01FEC0 07:FEB0: 10 2A     BPL bra_FEDC_RTS
C - - - - - 0x01FEC2 07:FEB2: A9 18     LDA #$18
C - - - - - 0x01FEC4 07:FEB4: 85 6B     STA ram_006B_t03_spr_X
C - - - - - 0x01FEC6 07:FEB6: A0 00     LDY #$00
C - - - - - 0x01FEC8 07:FEB8: A6 A8     LDX ram_plr_index
C - - - - - 0x01FECA 07:FEBA: BD D9 03  LDA ram_player_hp,X
C - - - - - 0x01FECD 07:FEBD: F0 1D     BEQ bra_FEDC_RTS
C - - - - - 0x01FECF 07:FEBF: 30 1B     BMI bra_FEDC_RTS
C - - - - - 0x01FED1 07:FEC1: C9 03     CMP #$03
C - - - - - 0x01FED3 07:FEC3: B0 06     BCS bra_FECB
C - - - - - 0x01FED5 07:FEC5: A5 14     LDA ram_frm_cnt
C - - - - - 0x01FED7 07:FEC7: 29 08     AND #$08
C - - - - - 0x01FED9 07:FEC9: F0 11     BEQ bra_FEDC_RTS
bra_FECB:
C - - - - - 0x01FEDB 07:FECB: BD D9 03  LDA ram_player_hp,X
C - - - - - 0x01FEDE 07:FECE: 38        SEC
C - - - - - 0x01FEDF 07:FECF: E9 01     SBC #$01
; / 04
C - - - - - 0x01FEE1 07:FED1: 4A        LSR
C - - - - - 0x01FEE2 07:FED2: 4A        LSR
; 
C - - - - - 0x01FEE3 07:FED3: C9 05     CMP #$05
C - - - - - 0x01FEE5 07:FED5: 90 02     BCC bra_FED9_not_overflow
; if overflow
- - - - - - 0x01FEE7 07:FED7: A9 04     LDA #$04
bra_FED9_not_overflow:
; bzk optimize, JMP
C - - - - - 0x01FEE9 07:FED9: 20 ED FE  JSR sub_FEED
bra_FEDC_RTS:
C - - - - - 0x01FEEC 07:FEDC: 60        RTS



tbl_FEDD:
; ???
- - - - - - 0x01FEED 07:FEDD: 00        .byte $00   ; plaaceholder?
; 01 
- D 3 - I - 0x01FEEE 07:FEDE: 00        .byte $00   ; 
- D 3 - I - 0x01FEEF 07:FEDF: 6B        .byte $6B   ; 
- D 3 - I - 0x01FEF0 07:FEE0: 00        .byte $00   ; 
; 02 
- D 3 - I - 0x01FEF1 07:FEE1: 08        .byte $08   ; 
- D 3 - I - 0x01FEF2 07:FEE2: 6B        .byte $6B   ; 
- D 3 - I - 0x01FEF3 07:FEE3: 00        .byte $00   ; 
; 03 
- D 3 - I - 0x01FEF4 07:FEE4: 10        .byte $10   ; 
- D 3 - I - 0x01FEF5 07:FEE5: 6B        .byte $6B   ; 
- D 3 - I - 0x01FEF6 07:FEE6: 00        .byte $00   ; 
; 04 
- D 3 - I - 0x01FEF7 07:FEE7: 18        .byte $18   ; 
- D 3 - I - 0x01FEF8 07:FEE8: 6B        .byte $6B   ; 
- D 3 - I - 0x01FEF9 07:FEE9: 00        .byte $00   ; 
; 05 
- D 3 - I - 0x01FEFA 07:FEEA: 20        .byte $20   ; 
- D 3 - I - 0x01FEFB 07:FEEB: 6B        .byte $6B   ; 
- D 3 - I - 0x01FEFC 07:FEEC: 00        .byte $00   ; 



sub_FEED:
; in
    ; A = 
C - - - - - 0x01FEFD 07:FEED: 85 68     STA ram_0068_t01_counter
C - - - - - 0x01FEFF 07:FEEF: E6 68     INC ram_0068_t01_counter
C - - - - - 0x01FF01 07:FEF1: A9 00     LDA #$00
C - - - - - 0x01FF03 07:FEF3: 85 6D     STA ram_006D_t01_spr_A_flip
C - - - - - 0x01FF05 07:FEF5: 85 71     STA ram_0071_t05_spr_A
C - - - - - 0x01FF07 07:FEF7: A9 18     LDA #$18
C - - - - - 0x01FF09 07:FEF9: 85 6C     STA ram_006C_t15_spr_Y
; bzk optimize, JMP
C - - - - - 0x01FF0B 07:FEFB: 20 0B FD  JSR sub_FD0B
C - - - - - 0x01FF0E 07:FEFE: 60        RTS



sub_FEFF_prepare_demo_buttons_data:
C - - - - - 0x01FF0F 07:FEFF: A5 EE     LDA ram_demo_btns_script
C - - - - - 0x01FF11 07:FF01: 29 07     AND #$07
C - - - - - 0x01FF13 07:FF03: AA        TAX
C - - - - - 0x01FF14 07:FF04: BD 26 FF  LDA tbl_FF26_demo_buttons_lo,X
C - - - - - 0x01FF17 07:FF07: 85 EA     STA ram_data_ptr_demo_btns
C - - - - - 0x01FF19 07:FF09: BD 2E FF  LDA tbl_FF2E_demo_buttons_hi,X
C - - - - - 0x01FF1C 07:FF0C: 85 EB     STA ram_data_ptr_demo_btns + $01
C - - - - - 0x01FF1E 07:FF0E: BD 36 FF  LDA tbl_FF36_city,X
C - - - - - 0x01FF21 07:FF11: 85 3C     STA ram_city
C - - - - - 0x01FF23 07:FF13: A9 00     LDA #$00
C - - - - - 0x01FF25 07:FF15: 85 A8     STA ram_plr_index
C - - - - - 0x01FF27 07:FF17: 8D D7 03  STA ram_captain_power
C - - - - - 0x01FF2A 07:FF1A: 85 ED     STA ram_demo_buttons
C - - - - - 0x01FF2C 07:FF1C: 85 EC     STA ram_demo_btns_hold_timer
C - - - - - 0x01FF2E 07:FF1E: A9 08     LDA #$08
C - - - - - 0x01FF30 07:FF20: 8D D9 03  STA ram_captain_hp
C - - - - - 0x01FF33 07:FF23: E6 EE     INC ram_demo_btns_script
C - - - - - 0x01FF35 07:FF25: 60        RTS



tbl_FF26_demo_buttons_lo:
- D 3 - - - 0x01FF36 07:FF26: D0        .byte < _demo_buttons_0x007CE0_00   ; 00 
- D 3 - - - 0x01FF37 07:FF27: 6E        .byte < _demo_buttons_0x007D7E_01   ; 01 
- D 3 - - - 0x01FF38 07:FF28: C4        .byte < _demo_buttons_0x007DD4_02   ; 02 
- D 3 - - - 0x01FF39 07:FF29: 08        .byte < _demo_buttons_0x007E18_03   ; 03 
- D 3 - - - 0x01FF3A 07:FF2A: 54        .byte < _demo_buttons_0x007E64_04   ; 04 
- D 3 - - - 0x01FF3B 07:FF2B: DC        .byte < _demo_buttons_0x007EEC_05   ; 05 
- D 3 - - - 0x01FF3C 07:FF2C: C4        .byte < _demo_buttons_0x007DD4_06   ; 06 
- D 3 - - - 0x01FF3D 07:FF2D: 54        .byte < _demo_buttons_0x007E64_07   ; 07 



tbl_FF2E_demo_buttons_hi:
- D 3 - - - 0x01FF3E 07:FF2E: 9C        .byte > _demo_buttons_0x007CE0_00   ; 00 
- D 3 - - - 0x01FF3F 07:FF2F: 9D        .byte > _demo_buttons_0x007D7E_01   ; 01 
- D 3 - - - 0x01FF40 07:FF30: 9D        .byte > _demo_buttons_0x007DD4_02   ; 02 
- D 3 - - - 0x01FF41 07:FF31: 9E        .byte > _demo_buttons_0x007E18_03   ; 03 
- D 3 - - - 0x01FF42 07:FF32: 9E        .byte > _demo_buttons_0x007E64_04   ; 04 
- D 3 - - - 0x01FF43 07:FF33: 9E        .byte > _demo_buttons_0x007EEC_05   ; 05 
- D 3 - - - 0x01FF44 07:FF34: 9D        .byte > _demo_buttons_0x007DD4_06   ; 06 
- D 3 - - - 0x01FF45 07:FF35: 9E        .byte > _demo_buttons_0x007E64_07   ; 07 



tbl_FF36_city:
- D 3 - - - 0x01FF46 07:FF36: 05        .byte $05   ; 00 
- D 3 - - - 0x01FF47 07:FF37: 07        .byte $07   ; 01 
- D 3 - - - 0x01FF48 07:FF38: 0D        .byte $0D   ; 02 
- D 3 - - - 0x01FF49 07:FF39: 0E        .byte $0E   ; 03 
- D 3 - - - 0x01FF4A 07:FF3A: 06        .byte $06   ; 04 
- D 3 - - - 0x01FF4B 07:FF3B: 13        .byte $13   ; 05 
- D 3 - - - 0x01FF4C 07:FF3C: 0D        .byte $0D   ; 06 
- D 3 - - - 0x01FF4D 07:FF3D: 06        .byte $06   ; 07 



sub_FF3E:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x01FF4E 07:FF3E: AD 1F 04  LDA ram_041F_player_flags
C - - - - - 0x01FF51 07:FF41: 29 08     AND #$08
C - - - - - 0x01FF53 07:FF43: D0 02     BNE bra_FF47
C - - - - - 0x01FF55 07:FF45: 18        CLC
C - - - - - 0x01FF56 07:FF46: 60        RTS
bra_FF47:
C - - - - - 0x01FF57 07:FF47: A5 9D     LDA ram_prg_bank_A000
C - - - - - 0x01FF59 07:FF49: 48        PHA
C - - - - - 0x01FF5A 07:FF4A: A9 0D     LDA #con_prg_bank + $0D
C - - - - - 0x01FF5C 07:FF4C: 85 9D     STA ram_prg_bank_A000
C - - - - - 0x01FF5E 07:FF4E: 20 58 DB  JSR sub_DB58_prg_bankswitch_A000
C - - - - - 0x01FF61 07:FF51: 20 03 A0  JSR sub_0x01A013
C - - - - - 0x01FF64 07:FF54: 68        PLA
C - - - - - 0x01FF65 07:FF55: 85 9D     STA ram_prg_bank_A000
C - - - - - 0x01FF67 07:FF57: 20 58 DB  JSR sub_DB58_prg_bankswitch_A000
C - - - - - 0x01FF6A 07:FF5A: 38        SEC
C - - - - - 0x01FF6B 07:FF5B: 60        RTS


; bzk garbage
- - - - - - 0x01FF6C 07:FF5C: FF        .byte $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01FF70 07:FF60: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01FF80 07:FF70: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 



sub_0x01FF90_turn_screen_off:
; bzk optimize
C - - - - - 0x01FF90 07:FF80: 4C FC E0  JMP loc_E0FC_turn_screen_off



sub_0x01FF93_wait_1_frm:
; bzk optimize
C - - - - - 0x01FF93 07:FF83: 4C 82 E0  JMP loc_E082_wait_1_frm


; bzk garbage
- - - - - - 0x01FF96 07:FF86: 4C B9 DA  JMP loc_DAB9_prepare_palette_and_increase_brightness


; bzk garbage
- - - - - - 0x01FF99 07:FF89: 4C FD DA  JMP loc_DAFD_prepare_palette_and_decrease_brightness



sub_0x01FF9C_enable_rendering:
; bzk optimize
C - - - - - 0x01FF9C 07:FF8C: 4C AD E0  JMP loc_E0AD_enable_rendering


; bzk garbage
- - - - - - 0x01FF9F 07:FF8F: 4C BB E0  JMP loc_E0BB_disable_rendering


; bzk garbage
- - - - - - 0x01FFA2 07:FF92: 4C FB E3  JMP loc_E3FB


; bzk garbage
- - - - - - 0x01FFA5 07:FF95: 4C 6B F3  JMP loc_F36B_scroll_handler



sub_0x01FFA8_objects_collision:
; bzk optimize
C - - - - - 0x01FFA8 07:FF98: 4C 93 C6  JMP loc_C693_objects_collision


; bzk garbage
- - - - - - 0x01FFAB 07:FF9B: 4C 39 EC  JMP loc_EC39



sub_0x01FFAE_prg_bankswitch_8000:
loc_0x01FFAE_prg_bankswitch_8000:
; bzk optimize
C D 3 - - - 0x01FFAE 07:FF9E: 4C 41 DB  JMP loc_DB41_prg_bankswitch_8000



sub_0x01FFB1:
; bzk optimize
C - - - - - 0x01FFB1 07:FFA1: 4C D7 CC  JMP loc_CCD7



sub_0x01FFB4_shield_boomerang_handler:
; bzk optimize
C - - - - - 0x01FFB4 07:FFA4: 4C 44 C9  JMP loc_C944_shield_boomerang_handler



sub_0x01FFB7:
; bzk optimize
C - - - - - 0x01FFB7 07:FFA7: 4C 56 CA  JMP loc_CA56


; bzk garbage
- - - - - - 0x01FFBA 07:FFAA: 4C 0C C4  JMP loc_C40C



sub_0x01FFBD_play_sound:
loc_0x01FFBD_play_sound:
; bzk optimize
C D 3 - - - 0x01FFBD 07:FFAD: 4C 04 CB  JMP loc_CB04_play_sound


; bzk garbage
- - - - - - 0x01FFC0 07:FFB0: 4C CC CA  JMP loc_CACC



sub_0x01FFC3:
; bzk optimize
C - - - - - 0x01FFC3 07:FFB3: 4C 1E CE  JMP loc_CE1E



sub_0x01FFC6:
; bzk optimize
C - - - - - 0x01FFC6 07:FFB6: 4C 49 D4  JMP loc_D449



sub_0x01FFC9:
; bzk optimize
C - - - - - 0x01FFC9 07:FFB9: 4C 90 CE  JMP loc_CE90



sub_0x01FFCC:
; bzk optimize
C - - - - - 0x01FFCC 07:FFBC: 4C 1E CF  JMP loc_CF1E



sub_0x01FFCF:
; bzk optimize
C - - - - - 0x01FFCF 07:FFBF: 4C 2E C7  JMP loc_C72E



sub_0x01FFD2:
; bzk optimize
C - - - - - 0x01FFD2 07:FFC2: 4C 3F D1  JMP loc_D13F



sub_0x01FFD5:
; bzk optimize
C - - - - - 0x01FFD5 07:FFC5: 4C DD CB  JMP loc_CBDD



sub_0x01FFD8_write_metatiles:
; bzk optimize
C - - - - - 0x01FFD8 07:FFC8: 4C 8C D2  JMP loc_D28C_write_metatiles



sub_0x01FFDB:
; bzk optimize
C - - - - - 0x01FFDB 07:FFCB: 4C BC DA  JMP loc_DABC_increase_brightness



sub_0x01FFDE:
; bzk optimize
C - - - - - 0x01FFDE 07:FFCE: 4C 00 DB  JMP loc_DB00_decrease_brightness



sub_0x01FFE1:
; bzk optimize
C - - - - - 0x01FFE1 07:FFD1: 4C 2A C3  JMP loc_C32A



sub_0x01FFE4:
; bzk optimize
C - - - - - 0x01FFE4 07:FFD4: 4C AC C3  JMP loc_C3AC



sub_0x01FFE7:
; bzk optimize
C - - - - - 0x01FFE7 07:FFD7: 4C DB FA  JMP loc_FADB



sub_0x01FFEA_prepare_sprite_palette:
; bzk optimize
C - - - - - 0x01FFEA 07:FFDA: 4C 56 DA  JMP loc_DA56_prepare_sprite_palette



sub_0x01FFED:
; bzk optimize
C - - - - - 0x01FFED 07:FFDD: 4C 8E D0  JMP loc_D08E



sub_0x01FFF0:
; bzk optimize
C - - - - - 0x01FFF0 07:FFE0: 4C 44 CB  JMP loc_CB44



sub_0x01FFF3_prepare_big_digits_for_score:
; bzk optimize
C - - - - - 0x01FFF3 07:FFE3: 4C F6 DE  JMP loc_DEF6_prepare_big_digits_for_score


; bzk garbage
- - - - - - 0x01FFF6 07:FFE6: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x020000 07:FFF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 



.out .sprintf("Free bytes in bank FF: 0x%04X [%d]", ($FFFA - *), ($FFFA - *))



.segment "VECTORS"
- D 3 - - - 0x02000A 07:FFFA: DE E1     .word vec_E1DE_NMI
- D 3 - - - 0x02000C 07:FFFC: 00 E0     .word vec_E000_RESET
- D 3 - - - 0x02000E 07:FFFE: 9B D7     .word vec_D79B_IRQ



