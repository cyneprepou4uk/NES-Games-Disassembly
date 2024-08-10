.segment "BANK_3E"
.include "bank_ram.inc"
.include "bank_val.inc"
.org $C000 ; for listing file
; 0x01C010-0x02000F



.export loc_0x01E4F5
.export sub_0x01E552_letter_C
.export sub_0x01E594_set_default_data_for_players___custom_area
.export sub_0x01E5E0_clear_memory
.export sub_0x01E619_jump_to_pointers_after_jsr
.export sub_0x01E632_inc_pointer_by_A
.export sub_0x01E648
.export loc_0x01E64C_add_points_to_score
.export sub_0x01E7D0_preset_chr_banks
.export loc_0x01E906_prepare_game_over
.export sub_0x01F0A5
.export sub_0x01F0B0
.export sub_0x01F192
.export sub_0x01F198
.export sub_0x01F1A0
.export tbl_0x01F2E4_area_objects_spawner
.export sub_0x01F2F4
.export sub_0x01F335
.export sub_0x01F337
.export loc_0x01F337
.export sub_0x01F3A6_write_speed_XY
.export loc_0x01F3A6_write_speed_XY
.export sub_0x01F3BB
.export sub_0x01F4A5
.export sub_0x01F4AB
.export sub_0x01F4B2
.export sub_0x01F4B5
.export sub_0x01F4BB
.export tbl_0x01F4E4
.export sub_0x01F4FC
.export sub_0x01F500
.export loc_0x01F6BC_kill_player
.export loc_0x01F6BD_kill_player
.export sub_0x01F70D_try_to_find_free_object_slot
.export sub_0x01F716_try_to_find_free_object_slot___4_slots
.export sub_0x01F718_try_to_find_free_object_slot___X_slots
.export sub_0x01F72C_try_to_find_enemy_bullet
.export sub_0x01F74F_start_preparing_new_object
.export sub_0x01F7AC_delete_object_01
.export sub_0x01F7AE_prepare_object
.export sub_0x01F7C8_write_palette_to_buffer
.export sub_0x01F7CE_write_palette_to_buffer
.export loc_0x01F811
.export sub_0x01F820
.export sub_0x01F860
.export tbl_0x01F8DC
.export tbl_0x01F8E8
.export sub_0x01F974_write_3_colors_with_condition
.export sub_0x01F978_write_3_colors
.export sub_0x01FA40
.export sub_0x01FC8F_copy_reg_values
.export loc_0x01FC8F_copy_reg_values
.export sub_0x01FC9C_increase_002B
.export loc_0x01FC9C_increase_002B
.export loc_0x01FCCA_enable_nmi
.export sub_0x01FCF9_disable_nmi_and_rendering
.export sub_0x01FDBB_select_secondary_music_bank
.export sub_0x01FDEE_play_sound
.export loc_0x01FDEE_play_sound
.export loc_0x01FE06
.export sub_0x01FE1E_stop_sound_engine
.export loc_0x01FE1E_stop_sound_engine
.export loc_0x01FE6D
.export sub_0x01FEB4



; must be placed at C000 (beginning of the fixed bank)
.incbin "DPCM.bin"


; bzk garbage
; first byte at DF00 is technically a part of DPCM
- D 2 - - A 0x01DF10 07:DF00: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01DF20 07:DF10: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01DF30 07:DF20: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01DF40 07:DF30: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01DF50 07:DF40: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01DF60 07:DF50: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01DF70 07:DF60: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01DF80 07:DF70: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01DF90 07:DF80: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01DFA0 07:DF90: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01DFB0 07:DFA0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01DFC0 07:DFB0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01DFD0 07:DFC0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01DFE0 07:DFD0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01DFF0 07:DFE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01E000 07:DFF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 



tbl_E000_config_2000:
; see con_buf_mode
- D 3 - - - 0x01E010 07:E000: 28        .byte $28   ; 01 increase 2006 by 01
- - - - - - 0x01E011 07:E001: 2C        .byte $2C   ; 02 unused
- D 3 - - - 0x01E012 07:E002: 28        .byte $28   ; 03 increase 2006 by 01
- - - - - - 0x01E013 07:E003: 28        .byte $28   ; 04 unused
- - - - - - 0x01E014 07:E004: 28        .byte $28   ; 05 unused
- D 3 - - - 0x01E015 07:E005: 28        .byte $28   ; 06 increase 2006 by 01
- D 3 - - - 0x01E016 07:E006: 2C        .byte $2C   ; 07 increase 2006 by 32



bra_E007_quit:
; X = 00
C - - - - - 0x01E017 07:E007: 8E 00 03  STX ram_nmt_buffer  ; con_buf_mode_00
C - - - - - 0x01E01A 07:E00A: 86 1E     STX ram_index_ppu_buffer
C - - - - - 0x01E01C 07:E00C: A5 FF     LDA ram_for_2000
C - - - - - 0x01E01E 07:E00E: 8D 00 20  STA $2000
C - - - - - 0x01E021 07:E011: 60        RTS



sub_E012:
loc_E012_loop:
bra_E012_loop:
C D 3 - - - 0x01E022 07:E012: BE 00 03  LDX ram_nmt_buffer,Y
C - - - - - 0x01E025 07:E015: F0 F0     BEQ bra_E007_quit   ; if con_buf_mode_00
C - - - - - 0x01E027 07:E017: BD FF DF  LDA tbl_E000_config_2000 - $01,X
C - - - - - 0x01E02A 07:E01A: 8D 00 20  STA $2000
C - - - - - 0x01E02D 07:E01D: C8        INY
C - - - - - 0x01E02E 07:E01E: AD 02 20  LDA $2002
C - - - - - 0x01E031 07:E021: B9 00 03  LDA ram_nmt_buffer,Y
C - - - - - 0x01E034 07:E024: 8D 06 20  STA $2006
C - - - - - 0x01E037 07:E027: C8        INY
C - - - - - 0x01E038 07:E028: B9 00 03  LDA ram_nmt_buffer,Y
C - - - - - 0x01E03B 07:E02B: 8D 06 20  STA $2006
C - - - - - 0x01E03E 07:E02E: C8        INY
C - - - - - 0x01E03F 07:E02F: E0 06     CPX #$06
C - - - - - 0x01E041 07:E031: B0 35     BCS bra_E068_06_07
C - - - - - 0x01E043 07:E033: E0 03     CPX #con_buf_mode_03
C - - - - - 0x01E045 07:E035: D0 15     BNE bra_E04C_01
; con_buf_mode_03
C - - - - - 0x01E047 07:E037: BE 00 03  LDX ram_nmt_buffer,Y
C - - - - - 0x01E04A 07:E03A: C8        INY
C - - - - - 0x01E04B 07:E03B: B9 00 03  LDA ram_nmt_buffer,Y
C - - - - - 0x01E04E 07:E03E: C8        INY
bra_E03F_loop:
C - - - - - 0x01E04F 07:E03F: 8D 07 20  STA $2007
C - - - - - 0x01E052 07:E042: CA        DEX
C - - - - - 0x01E053 07:E043: D0 FA     BNE bra_E03F_loop
C - - - - - 0x01E055 07:E045: F0 CB     BEQ bra_E012_loop    ; jmp
bra_E047_loop:
- - - - - - 0x01E057 07:E047: A9 FF     LDA #$FF
bra_E049_loop:
C - - - - - 0x01E059 07:E049: 8D 07 20  STA $2007
bra_E04C_01:
; con_buf_mode_01
C - - - - - 0x01E05C 07:E04C: B9 00 03  LDA ram_nmt_buffer,Y
C - - - - - 0x01E05F 07:E04F: C8        INY
C - - - - - 0x01E060 07:E050: C9 FF     CMP #$FF
C - - - - - 0x01E062 07:E052: D0 F5     BNE bra_E049_loop
C - - - - - 0x01E064 07:E054: B9 00 03  LDA ram_nmt_buffer,Y
; bzk optimize, values 00-06 only
C - - - - - 0x01E067 07:E057: C9 08     CMP #$08
C - - - - - 0x01E069 07:E059: B0 EC     BCS bra_E047_loop
C - - - - - 0x01E06B 07:E05B: 90 B5     BCC bra_E012_loop    ; jmp
bra_E05D_loop:
C - - - - - 0x01E06D 07:E05D: 8D 06 20  STA $2006
C - - - - - 0x01E070 07:E060: C8        INY
C - - - - - 0x01E071 07:E061: B9 00 03  LDA ram_nmt_buffer,Y
C - - - - - 0x01E074 07:E064: 8D 06 20  STA $2006
C - - - - - 0x01E077 07:E067: C8        INY
bra_E068_06_07:
; con_buf_mode_06
; con_buf_mode_07
C - - - - - 0x01E078 07:E068: BE 00 03  LDX ram_nmt_buffer,Y
C - - - - - 0x01E07B 07:E06B: C8        INY
bra_E06C_loop:
C - - - - - 0x01E07C 07:E06C: B9 00 03  LDA ram_nmt_buffer,Y
C - - - - - 0x01E07F 07:E06F: 8D 07 20  STA $2007
C - - - - - 0x01E082 07:E072: C8        INY
C - - - - - 0x01E083 07:E073: CA        DEX
C - - - - - 0x01E084 07:E074: D0 F6     BNE bra_E06C_loop
C - - - - - 0x01E086 07:E076: B9 00 03  LDA ram_nmt_buffer,Y
C - - - - - 0x01E089 07:E079: 10 E2     BPL bra_E05D_loop
; A = FF
C - - - - - 0x01E08B 07:E07B: C8        INY
C - - - - - 0x01E08C 07:E07C: 4C 12 E0  JMP loc_E012_loop



vec_E07F_IRQ:
C - - - - - 0x01E08F 07:E07F: 48        PHA
C - - - - - 0x01E090 07:E080: 8A        TXA
C - - - - - 0x01E091 07:E081: 48        PHA
C - - - - - 0x01E092 07:E082: 98        TYA
C - - - - - 0x01E093 07:E083: 48        PHA
C - - - - - 0x01E094 07:E084: 8D 00 E0  STA $E000
C - - - - - 0x01E097 07:E087: 8D 01 E0  STA $E001
C - - - - - 0x01E09A 07:E08A: A5 28     LDA ram_irq_handler_lo
C - - - - - 0x01E09C 07:E08C: 0A        ASL
C - - - - - 0x01E09D 07:E08D: A8        TAY
C - - - - - 0x01E09E 07:E08E: B1 2D     LDA (ram_002D),Y
C - - - - - 0x01E0A0 07:E090: 85 29     STA ram_0029
C - - - - - 0x01E0A2 07:E092: C8        INY
C - - - - - 0x01E0A3 07:E093: B1 2D     LDA (ram_002D),Y
C - - - - - 0x01E0A5 07:E095: 85 2A     STA ram_002A
C - - - - - 0x01E0A7 07:E097: 6C 29 00  JMP (ram_0029)



tbl_E09A_irq_handler:
- D 3 - - - 0x01E0AA 07:E09A: BA E0     .word _off000_E0BA_00_irq_disabled
- D 3 - - - 0x01E0AC 07:E09C: BC E0     .word _off000_E0BC_01_area_1_boss
- D 3 - - - 0x01E0AE 07:E09E: BE E0     .word _off000_E0BE_02_area_4_elevator
- D 3 - - - 0x01E0B0 07:E0A0: C4 E0     .word _off000_E0C4_03_credits
- - - - - - 0x01E0B2 07:E0A2: CE E0     .word _off000_E0CE_04   ; unused
- D 3 - - - 0x01E0B4 07:E0A4: CE E0     .word _off000_E0CE_05_area_4_boss
- D 3 - - - 0x01E0B6 07:E0A6: D4 E0     .word _off000_E0D4_06_area_8_ceiling
- - - - - - 0x01E0B8 07:E0A8: D6 E0     .word _off000_E0D6_07   ; unused
- D 3 - - - 0x01E0BA 07:E0AA: D6 E0     .word _off000_E0D6_08_area_3_boss
- - - - - - 0x01E0BC 07:E0AC: D8 E0     .word _off000_E0D8_09   ; unused
- D 3 - - - 0x01E0BE 07:E0AE: D8 E0     .word _off000_E0D8_0A_area_7_boss
- D 3 - - - 0x01E0C0 07:E0B0: DA E0     .word _off000_E0DA_0B_area_5_boss
- D 3 - - - 0x01E0C2 07:E0B2: DC E0     .word _off000_E0DC_0C_area_2_boss
- D 3 - - - 0x01E0C4 07:E0B4: E2 E0     .word _off000_E0E2_0D_area_8_boss
- D 3 - - - 0x01E0C6 07:E0B6: E8 E0     .word _off000_E0E8_0E_area_6_change_color
- D 3 - - - 0x01E0C8 07:E0B8: EA E0     .word _off000_E0EA_0F_area_6_boss



_off000_E0BA_00_irq_disabled:
- - - - - - 0x01E0CA 07:E0BA: CB FB     .word ofs_040_00_FBCB_00_return_from_interrupt



_off000_E0BC_01_area_1_boss:
- D 3 - I - 0x01E0CC 07:E0BC: EC E0     .word ofs_040_01_E0EC_00



_off000_E0BE_02_area_4_elevator:
- D 3 - I - 0x01E0CE 07:E0BE: 15 E1     .word ofs_040_02_E115_00
- D 3 - I - 0x01E0D0 07:E0C0: 4B E1     .word ofs_040_02_E14B_01
- D 3 - I - 0x01E0D2 07:E0C2: 7A E1     .word ofs_040_02_E17A_02



_off000_E0C4_03_credits:
- D 3 - I - 0x01E0D4 07:E0C4: 98 E1     .word ofs_040_03_E198_00
- D 3 - I - 0x01E0D6 07:E0C6: AD E1     .word ofs_040_03_E1AD_01
- D 3 - I - 0x01E0D8 07:E0C8: C3 E1     .word ofs_040_03_E1C3_02
- D 3 - I - 0x01E0DA 07:E0CA: F1 E1     .word ofs_040_03_E1F1_03
- D 3 - I - 0x01E0DC 07:E0CC: 07 E2     .word ofs_040_03_E207_04



_off000_E0CE_04:
_off000_E0CE_05_area_4_boss:
- D 3 - I - 0x01E0DE 07:E0CE: 12 E2     .word ofs_040_05_E212_00
- D 3 - I - 0x01E0E0 07:E0D0: 3B E2     .word ofs_040_05_E23B_01
- D 3 - I - 0x01E0E2 07:E0D2: 44 E2     .word ofs_040_05_E244_02



_off000_E0D4_06_area_8_ceiling:
- D 3 - I - 0x01E0E4 07:E0D4: 63 E2     .word ofs_040_06_E263_00



_off000_E0D6_07:
_off000_E0D6_08_area_3_boss:
- D 3 - I - 0x01E0E6 07:E0D6: 83 E2     .word ofs_040_08_E283_00



_off000_E0D8_09:
_off000_E0D8_0A_area_7_boss:
- D 3 - I - 0x01E0E8 07:E0D8: B9 E2     .word ofs_040_0A_E2B9_00



_off000_E0DA_0B_area_5_boss:
- D 3 - I - 0x01E0EA 07:E0DA: CB E2     .word ofs_040_0B_E2CB_00



_off000_E0DC_0C_area_2_boss:
- D 3 - I - 0x01E0EC 07:E0DC: EF E2     .word ofs_040_0C_E2EF_00
- D 3 - I - 0x01E0EE 07:E0DE: 15 E3     .word ofs_040_0C_E315_01
- D 3 - I - 0x01E0F0 07:E0E0: 23 E3     .word ofs_040_0C_E323_02



_off000_E0E2_0D_area_8_boss:
- D 3 - I - 0x01E0F2 07:E0E2: 3E E3     .word ofs_040_0D_E33E_00
- D 3 - I - 0x01E0F4 07:E0E4: 6B E3     .word ofs_040_0D_E36B_01
- D 3 - I - 0x01E0F6 07:E0E6: 79 E3     .word ofs_040_0D_E379_02



_off000_E0E8_0E_area_6_change_color:
- D 3 - I - 0x01E0F8 07:E0E8: A4 E3     .word ofs_040_0E_E3A4_00



_off000_E0EA_0F_area_6_boss:
- D 3 - I - 0x01E0FA 07:E0EA: AA E3     .word ofs_040_0F_E3AA_00



ofs_040_01_E0EC_00:
C - - J - - 0x01E0FC 07:E0EC: A0 01     LDY #$01
bra_E0EE_garbage_loop:
C - - - - - 0x01E0FE 07:E0EE: 88        DEY
C - - - - - 0x01E0FF 07:E0EF: D0 FD     BNE bra_E0EE_garbage_loop
C - - - - - 0x01E101 07:E0F1: AD 02 20  LDA $2002
C - - - - - 0x01E104 07:E0F4: A2 22     LDX #> $2240
C - - - - - 0x01E106 07:E0F6: A9 40     LDA #< $2240
C - - - - - 0x01E108 07:E0F8: A0 00     LDY #$00
C - - - - - 0x01E10A 07:E0FA: 8E 06 20  STX $2006
C - - - - - 0x01E10D 07:E0FD: 8D 06 20  STA $2006
C - - - - - 0x01E110 07:E100: 8C 05 20  STY $2005
C - - - - - 0x01E113 07:E103: 8C 05 20  STY $2005
C - - - - - 0x01E116 07:E106: A9 A8     LDA #$A8
C - - - - - 0x01E118 07:E108: 8D 00 20  STA $2000
C - - - - - 0x01E11B 07:E10B: A9 38     LDA #con_chr_bank + $38
C - - - - - 0x01E11D 07:E10D: A2 3A     LDX #con_chr_bank + $3A
C - - - - - 0x01E11F 07:E10F: 20 EF FB  JSR sub_FBEF
C - - - - - 0x01E122 07:E112: 4C 5D E2  JMP loc_E25D



ofs_040_02_E115_00:
C - - J - - 0x01E125 07:E115: AD F9 07  LDA ram_07F9_for_C000
C - - - - - 0x01E128 07:E118: 8D 00 C0  STA $C000
C - - - - - 0x01E12B 07:E11B: A0 1E     LDY #$1E
bra_E11D_garbage_loop:
C - - - - - 0x01E12D 07:E11D: 88        DEY
C - - - - - 0x01E12E 07:E11E: D0 FD     BNE bra_E11D_garbage_loop
C - - - - - 0x01E130 07:E120: AD 02 20  LDA $2002
C - - - - - 0x01E133 07:E123: A2 22     LDX #> $2280
C - - - - - 0x01E135 07:E125: A9 80     LDA #< $2280
C - - - - - 0x01E137 07:E127: A0 00     LDY #$00
C - - - - - 0x01E139 07:E129: 8E 06 20  STX $2006
C - - - - - 0x01E13C 07:E12C: 8D 06 20  STA $2006
C - - - - - 0x01E13F 07:E12F: 8C 05 20  STY $2005
C - - - - - 0x01E142 07:E132: 8C 05 20  STY $2005
C - - - - - 0x01E145 07:E135: A5 9F     LDA ram_009F
C - - - - - 0x01E147 07:E137: F0 0F     BEQ bra_E148
C - - - - - 0x01E149 07:E139: A0 05     LDY #$05
C - - - - - 0x01E14B 07:E13B: A9 42     LDA #con_chr_bank + $42
C - - - - - 0x01E14D 07:E13D: 8C 00 80  STY $8000
C - - - - - 0x01E150 07:E140: 8D 01 80  STA $8001
C - - - - - 0x01E153 07:E143: A5 25     LDA ram_for_8000
C - - - - - 0x01E155 07:E145: 8D 00 80  STA $8000
bra_E148:
C - - - - - 0x01E158 07:E148: 4C 36 E2  JMP loc_E236



ofs_040_02_E14B_01:
C - - J - - 0x01E15B 07:E14B: AD FA 07  LDA ram_07FA_for_C000
C - - - - - 0x01E15E 07:E14E: 8D 00 C0  STA $C000
C - - - - - 0x01E161 07:E151: A0 14     LDY #$14
bra_E153_garbage_loop:
C - - - - - 0x01E163 07:E153: 88        DEY
C - - - - - 0x01E164 07:E154: D0 FD     BNE bra_E153_garbage_loop
C - - - - - 0x01E166 07:E156: 20 EC FB  JSR sub_FBEC
C - - - - - 0x01E169 07:E159: AD 02 20  LDA $2002
C - - - - - 0x01E16C 07:E15C: A0 00     LDY #$00
C - - - - - 0x01E16E 07:E15E: AE FC 07  LDX ram_07FC_2006_hi
C - - - - - 0x01E171 07:E161: AD FB 07  LDA ram_07FB_2006_lo
C - - - - - 0x01E174 07:E164: 8E 06 20  STX $2006
C - - - - - 0x01E177 07:E167: 8D 06 20  STA $2006
C - - - - - 0x01E17A 07:E16A: 8C 05 20  STY $2005
C - - - - - 0x01E17D 07:E16D: 8C 05 20  STY $2005
C - - - - - 0x01E180 07:E170: E6 28     INC ram_irq_handler_lo
C - - - - - 0x01E182 07:E172: AD FA 07  LDA ram_07FA_for_C000
C - - - - - 0x01E185 07:E175: F0 08     BEQ bra_E17F
C - - - - - 0x01E187 07:E177: 4C CB FB  JMP loc_FBCB_return_from_interrupt



ofs_040_02_E17A_02:
C - - J - - 0x01E18A 07:E17A: A0 0F     LDY #$0F
bra_E17C_garbage_loop:
C - - - - - 0x01E18C 07:E17C: 88        DEY
C - - - - - 0x01E18D 07:E17D: D0 FD     BNE bra_E17C_garbage_loop
bra_E17F:
C - - - - - 0x01E18F 07:E17F: A0 05     LDY #$05
C - - - - - 0x01E191 07:E181: AD F5 07  LDA ram_chr_bank_spr_4
C - - - - - 0x01E194 07:E184: 8C 00 80  STY $8000
C - - - - - 0x01E197 07:E187: 8D 01 80  STA $8001
C - - - - - 0x01E19A 07:E18A: A0 00     LDY #$00
C - - - - - 0x01E19C 07:E18C: AD F0 07  LDA ram_chr_bank_bg_1
C - - - - - 0x01E19F 07:E18F: AE F1 07  LDX ram_chr_bank_bg_2
C - - - - - 0x01E1A2 07:E192: 20 EF FB  JSR sub_FBEF
C - - - - - 0x01E1A5 07:E195: 4C 5D E2  JMP loc_E25D



ofs_040_03_E198_00:
C - - J - - 0x01E1A8 07:E198: A9 20     LDA #$20
C - - - - - 0x01E1AA 07:E19A: 8D 00 C0  STA $C000
C - - - - - 0x01E1AD 07:E19D: A0 08     LDY #$08
bra_E19F_garbage_loop:
C - - - - - 0x01E1AF 07:E19F: 88        DEY
C - - - - - 0x01E1B0 07:E1A0: D0 FD     BNE bra_E19F_garbage_loop
C - - - - - 0x01E1B2 07:E1A2: A5 73     LDA ram_0073
C - - - - - 0x01E1B4 07:E1A4: 8D 05 20  STA $2005
C - - - - - 0x01E1B7 07:E1A7: 8D 05 20  STA $2005
C - - - - - 0x01E1BA 07:E1AA: 4C 36 E2  JMP loc_E236



ofs_040_03_E1AD_01:
C - - J - - 0x01E1BD 07:E1AD: AD F9 07  LDA ram_07F9_for_C000
C - - - - - 0x01E1C0 07:E1B0: 8D 00 C0  STA $C000
C - - - - - 0x01E1C3 07:E1B3: A0 08     LDY #$08
bra_E1B5_garbage_loop:
C - - - - - 0x01E1C5 07:E1B5: 88        DEY
C - - - - - 0x01E1C6 07:E1B6: D0 FD     BNE bra_E1B5_garbage_loop
C - - - - - 0x01E1C8 07:E1B8: A5 74     LDA ram_0074_area_config
C - - - - - 0x01E1CA 07:E1BA: 8D 05 20  STA $2005
C - - - - - 0x01E1CD 07:E1BD: 8D 05 20  STA $2005
C - - - - - 0x01E1D0 07:E1C0: 4C 36 E2  JMP loc_E236



ofs_040_03_E1C3_02:
C - - J - - 0x01E1D3 07:E1C3: AD FA 07  LDA ram_07FA_for_C000
C - - - - - 0x01E1D6 07:E1C6: 8D 00 C0  STA $C000
C - - - - - 0x01E1D9 07:E1C9: 20 EC FB  JSR sub_FBEC
C - - - - - 0x01E1DC 07:E1CC: A0 14     LDY #$14
bra_E1CE_garbage_loop:
C - - - - - 0x01E1DE 07:E1CE: 88        DEY
C - - - - - 0x01E1DF 07:E1CF: D0 FD     BNE bra_E1CE_garbage_loop
C - - - - - 0x01E1E1 07:E1D1: AD 02 20  LDA $2002
C - - - - - 0x01E1E4 07:E1D4: AE FC 07  LDX ram_07FC_2006_hi
C - - - - - 0x01E1E7 07:E1D7: AD FB 07  LDA ram_07FB_2006_lo
C - - - - - 0x01E1EA 07:E1DA: AC F6 07  LDY ram_07F6_scroll
C - - - - - 0x01E1ED 07:E1DD: 8E 06 20  STX $2006
C - - - - - 0x01E1F0 07:E1E0: 8D 06 20  STA $2006
C - - - - - 0x01E1F3 07:E1E3: 8C 05 20  STY $2005
C - - - - - 0x01E1F6 07:E1E6: 8C 05 20  STY $2005
C - - - - - 0x01E1F9 07:E1E9: A9 00     LDA #con_mirroring_V
C - - - - - 0x01E1FB 07:E1EB: 8D 00 A0  STA $A000
C - - - - - 0x01E1FE 07:E1EE: 4C 36 E2  JMP loc_E236



ofs_040_03_E1F1_03:
C - - J - - 0x01E201 07:E1F1: A9 40     LDA #$40
C - - - - - 0x01E203 07:E1F3: 8D 00 C0  STA $C000
C - - - - - 0x01E206 07:E1F6: A0 02     LDY #$02
bra_E1F8_garbage_loop:
C - - - - - 0x01E208 07:E1F8: 88        DEY
C - - - - - 0x01E209 07:E1F9: D0 FD     BNE bra_E1F8_garbage_loop
C - - - - - 0x01E20B 07:E1FB: AD F0 07  LDA ram_chr_bank_bg_1
C - - - - - 0x01E20E 07:E1FE: AE F1 07  LDX ram_chr_bank_bg_2
C - - - - - 0x01E211 07:E201: 20 EF FB  JSR sub_FBEF
C - - - - - 0x01E214 07:E204: 4C 36 E2  JMP loc_E236



ofs_040_03_E207_04:
C - - J - - 0x01E217 07:E207: A0 08     LDY #$08
bra_E209_garbage_loop:
C - - - - - 0x01E219 07:E209: 88        DEY
C - - - - - 0x01E21A 07:E20A: D0 FD     BNE bra_E209_garbage_loop
C - - - - - 0x01E21C 07:E20C: 20 EC FB  JSR sub_FBEC
C - - - - - 0x01E21F 07:E20F: 4C 5D E2  JMP loc_E25D



ofs_040_05_E212_00:
C - - J - - 0x01E222 07:E212: AD F9 07  LDA ram_07F9_for_C000
C - - - - - 0x01E225 07:E215: 8D 00 C0  STA $C000
C - - - - - 0x01E228 07:E218: A0 09     LDY #$09
bra_E21A_garbage_loop:
C - - - - - 0x01E22A 07:E21A: 88        DEY
C - - - - - 0x01E22B 07:E21B: D0 FD     BNE bra_E21A_garbage_loop
C - - - - - 0x01E22D 07:E21D: AD 02 20  LDA $2002
C - - - - - 0x01E230 07:E220: AD F7 07  LDA ram_07F7_for_2000
C - - - - - 0x01E233 07:E223: 8D 00 20  STA $2000
C - - - - - 0x01E236 07:E226: AD F6 07  LDA ram_07F6_scroll
C - - - - - 0x01E239 07:E229: 8D 05 20  STA $2005
C - - - - - 0x01E23C 07:E22C: 8D 05 20  STA $2005
C - - - - - 0x01E23F 07:E22F: A9 08     LDA #con_chr_bank + $08
C - - - - - 0x01E241 07:E231: A2 14     LDX #con_chr_bank + $14
C - - - - - 0x01E243 07:E233: 20 EF FB  JSR sub_FBEF
loc_E236:
C D 3 - - - 0x01E246 07:E236: E6 28     INC ram_irq_handler_lo
C - - - - - 0x01E248 07:E238: 4C CB FB  JMP loc_FBCB_return_from_interrupt



ofs_040_05_E23B_01:
C - - J - - 0x01E24B 07:E23B: AD FA 07  LDA ram_07FA_for_C000
C - - - - - 0x01E24E 07:E23E: 8D 00 C0  STA $C000
C - - - - - 0x01E251 07:E241: 4C 36 E2  JMP loc_E236



ofs_040_05_E244_02:
C - - J - - 0x01E254 07:E244: A0 09     LDY #$09
bra_E246_garbage_loop:
C - - - - - 0x01E256 07:E246: 88        DEY
C - - - - - 0x01E257 07:E247: D0 FD     BNE bra_E246_garbage_loop
C - - - - - 0x01E259 07:E249: A5 FF     LDA ram_for_2000
C - - - - - 0x01E25B 07:E24B: 8D 00 20  STA $2000
C - - - - - 0x01E25E 07:E24E: A9 00     LDA #$00
C - - - - - 0x01E260 07:E250: 8D 05 20  STA $2005
C - - - - - 0x01E263 07:E253: 8D 05 20  STA $2005
C - - - - - 0x01E266 07:E256: A9 08     LDA #con_chr_bank + $08
C - - - - - 0x01E268 07:E258: A2 0A     LDX #con_chr_bank + $0A
C - - - - - 0x01E26A 07:E25A: 20 EF FB  JSR sub_FBEF
loc_E25D:
C D 3 - - - 0x01E26D 07:E25D: 8D 00 E0  STA $E000
C - - - - - 0x01E270 07:E260: 4C CB FB  JMP loc_FBCB_return_from_interrupt



ofs_040_06_E263_00:
C - - J - - 0x01E273 07:E263: A0 09     LDY #$09
bra_E265_garbage_loop:
C - - - - - 0x01E275 07:E265: 88        DEY
C - - - - - 0x01E276 07:E266: D0 FD     BNE bra_E265_garbage_loop
C - - - - - 0x01E278 07:E268: AD 02 20  LDA $2002
C - - - - - 0x01E27B 07:E26B: AE FC 07  LDX ram_07FC_2006_hi
C - - - - - 0x01E27E 07:E26E: AD FB 07  LDA ram_07FB_2006_lo
C - - - - - 0x01E281 07:E271: AC F6 07  LDY ram_07F6_scroll
C - - - - - 0x01E284 07:E274: 8E 06 20  STX $2006
C - - - - - 0x01E287 07:E277: 8D 06 20  STA $2006
C - - - - - 0x01E28A 07:E27A: 8C 05 20  STY $2005
C - - - - - 0x01E28D 07:E27D: 8C 05 20  STY $2005
C - - - - - 0x01E290 07:E280: 4C 5D E2  JMP loc_E25D



ofs_040_08_E283_00:
C - - J - - 0x01E293 07:E283: A0 04     LDY #$04
bra_E285_garbage_loop:
C - - - - - 0x01E295 07:E285: 88        DEY
C - - - - - 0x01E296 07:E286: D0 FD     BNE bra_E285_garbage_loop
C - - - - - 0x01E298 07:E288: AD 02 20  LDA $2002
C - - - - - 0x01E29B 07:E28B: A2 22     LDX #> $2280
C - - - - - 0x01E29D 07:E28D: A9 80     LDA #< $2280
C - - - - - 0x01E29F 07:E28F: AC F6 07  LDY ram_07F6_scroll
C - - - - - 0x01E2A2 07:E292: 8E 06 20  STX $2006
C - - - - - 0x01E2A5 07:E295: 8D 06 20  STA $2006
C - - - - - 0x01E2A8 07:E298: 8C 05 20  STY $2005
C - - - - - 0x01E2AB 07:E29B: 8C 05 20  STY $2005
C - - - - - 0x01E2AE 07:E29E: A0 00     LDY #$00
C - - - - - 0x01E2B0 07:E2A0: A9 12     LDA #$12
C - - - - - 0x01E2B2 07:E2A2: A2 10     LDX #$10
C - - - - - 0x01E2B4 07:E2A4: 8C 00 80  STY $8000
C - - - - - 0x01E2B7 07:E2A7: 8D 01 80  STA $8001
C - - - - - 0x01E2BA 07:E2AA: C8        INY ; 01
C - - - - - 0x01E2BB 07:E2AB: 8C 00 80  STY $8000
C - - - - - 0x01E2BE 07:E2AE: 8E 01 80  STX $8001
C - - - - - 0x01E2C1 07:E2B1: A5 25     LDA ram_for_8000
C - - - - - 0x01E2C3 07:E2B3: 8D 00 80  STA $8000
C - - - - - 0x01E2C6 07:E2B6: 4C 5D E2  JMP loc_E25D



ofs_040_0A_E2B9_00:
C - - J - - 0x01E2C9 07:E2B9: A0 0D     LDY #$0D
bra_E2BB_garbage_loop:
C - - - - - 0x01E2CB 07:E2BB: 88        DEY
C - - - - - 0x01E2CC 07:E2BC: D0 FD     BNE bra_E2BB_garbage_loop
C - - - - - 0x01E2CE 07:E2BE: AD 02 20  LDA $2002
C - - - - - 0x01E2D1 07:E2C1: A9 30     LDA #con_chr_bank + $30
C - - - - - 0x01E2D3 07:E2C3: A2 2E     LDX #con_chr_bank + $2E
C - - - - - 0x01E2D5 07:E2C5: 20 EF FB  JSR sub_FBEF
C - - - - - 0x01E2D8 07:E2C8: 4C 5D E2  JMP loc_E25D



ofs_040_0B_E2CB_00:
C - - J - - 0x01E2DB 07:E2CB: A0 07     LDY #$07
bra_E2CD_garbage_loop:
C - - - - - 0x01E2DD 07:E2CD: 88        DEY
C - - - - - 0x01E2DE 07:E2CE: D0 FD     BNE bra_E2CD_garbage_loop
C - - - - - 0x01E2E0 07:E2D0: AD 02 20  LDA $2002
C - - - - - 0x01E2E3 07:E2D3: A2 2E     LDX #> $2E20
C - - - - - 0x01E2E5 07:E2D5: A9 20     LDA #< $2E20
C - - - - - 0x01E2E7 07:E2D7: A0 00     LDY #$00
C - - - - - 0x01E2E9 07:E2D9: 8E 06 20  STX $2006
C - - - - - 0x01E2EC 07:E2DC: 8D 06 20  STA $2006
C - - - - - 0x01E2EF 07:E2DF: 8C 05 20  STY $2005
C - - - - - 0x01E2F2 07:E2E2: 8C 05 20  STY $2005
C - - - - - 0x01E2F5 07:E2E5: A9 20     LDA #con_chr_bank + $20
C - - - - - 0x01E2F7 07:E2E7: A2 22     LDX #con_chr_bank + $22
C - - - - - 0x01E2F9 07:E2E9: 20 EF FB  JSR sub_FBEF
C - - - - - 0x01E2FC 07:E2EC: 4C 5D E2  JMP loc_E25D



ofs_040_0C_E2EF_00:
C - - J - - 0x01E2FF 07:E2EF: AD F9 07  LDA ram_07F9_for_C000
C - - - - - 0x01E302 07:E2F2: 8D 00 C0  STA $C000
C - - - - - 0x01E305 07:E2F5: A0 06     LDY #$06
bra_E2F7_garbage_loop:
C - - - - - 0x01E307 07:E2F7: 88        DEY
C - - - - - 0x01E308 07:E2F8: D0 FD     BNE bra_E2F7_garbage_loop
C - - - - - 0x01E30A 07:E2FA: AD 02 20  LDA $2002
C - - - - - 0x01E30D 07:E2FD: AE FC 07  LDX ram_07FC_2006_hi
C - - - - - 0x01E310 07:E300: AD FB 07  LDA ram_07FB_2006_lo
C - - - - - 0x01E313 07:E303: AC F6 07  LDY ram_07F6_scroll
C - - - - - 0x01E316 07:E306: 8E 06 20  STX $2006
C - - - - - 0x01E319 07:E309: 8D 06 20  STA $2006
C - - - - - 0x01E31C 07:E30C: 8C 05 20  STY $2005
C - - - - - 0x01E31F 07:E30F: 8C 05 20  STY $2005
C - - - - - 0x01E322 07:E312: 4C 36 E2  JMP loc_E236



ofs_040_0C_E315_01:
C - - J - - 0x01E325 07:E315: AD FA 07  LDA ram_07FA_for_C000
C - - - - - 0x01E328 07:E318: 8D 00 C0  STA $C000
C - - - - - 0x01E32B 07:E31B: A0 02     LDY #$02
bra_E31D_garbage_loop:
C - - - - - 0x01E32D 07:E31D: 88        DEY
C - - - - - 0x01E32E 07:E31E: D0 FD     BNE bra_E31D_garbage_loop
C - - - - - 0x01E330 07:E320: 4C 36 E2  JMP loc_E236



ofs_040_0C_E323_02:
C - - J - - 0x01E333 07:E323: A0 08     LDY #$08
bra_E325_garbage_loop:
C - - - - - 0x01E335 07:E325: 88        DEY
C - - - - - 0x01E336 07:E326: D0 FD     BNE bra_E325_garbage_loop
C - - - - - 0x01E338 07:E328: AD 02 20  LDA $2002
C - - - - - 0x01E33B 07:E32B: A2 23     LDX #> $2300
C - - - - - 0x01E33D 07:E32D: A9 00     LDA #< $2300
C - - - - - 0x01E33F 07:E32F: 8E 06 20  STX $2006
C - - - - - 0x01E342 07:E332: 8D 06 20  STA $2006
C - - - - - 0x01E345 07:E335: 8D 05 20  STA $2005
C - - - - - 0x01E348 07:E338: 8D 05 20  STA $2005
C - - - - - 0x01E34B 07:E33B: 4C 5D E2  JMP loc_E25D



ofs_040_0D_E33E_00:
C - - J - - 0x01E34E 07:E33E: AD F9 07  LDA ram_07F9_for_C000
C - - - - - 0x01E351 07:E341: 8D 00 C0  STA $C000
C - - - - - 0x01E354 07:E344: A0 09     LDY #$09
bra_E346_garbage_loop:
C - - - - - 0x01E356 07:E346: 88        DEY
C - - - - - 0x01E357 07:E347: D0 FD     BNE bra_E346_garbage_loop
C - - - - - 0x01E359 07:E349: A9 70     LDA #con_chr_bank + $70
C - - - - - 0x01E35B 07:E34B: A2 72     LDX #con_chr_bank + $72
C - - - - - 0x01E35D 07:E34D: 20 EF FB  JSR sub_FBEF
C - - - - - 0x01E360 07:E350: AD 02 20  LDA $2002
C - - - - - 0x01E363 07:E353: AE FC 07  LDX ram_07FC_2006_hi
C - - - - - 0x01E366 07:E356: AD FB 07  LDA ram_07FB_2006_lo
C - - - - - 0x01E369 07:E359: AC F6 07  LDY ram_07F6_scroll
C - - - - - 0x01E36C 07:E35C: 8E 06 20  STX $2006
C - - - - - 0x01E36F 07:E35F: 8D 06 20  STA $2006
C - - - - - 0x01E372 07:E362: 8C 05 20  STY $2005
C - - - - - 0x01E375 07:E365: 8C 05 20  STY $2005
C - - - - - 0x01E378 07:E368: 4C 36 E2  JMP loc_E236



ofs_040_0D_E36B_01:
C - - J - - 0x01E37B 07:E36B: AD FA 07  LDA ram_07FA_for_C000
C - - - - - 0x01E37E 07:E36E: 8D 00 C0  STA $C000
C - - - - - 0x01E381 07:E371: A0 03     LDY #$03
bra_E373_garbage_loop:
C - - - - - 0x01E383 07:E373: 88        DEY
C - - - - - 0x01E384 07:E374: D0 FD     BNE bra_E373_garbage_loop
C - - - - - 0x01E386 07:E376: 4C 36 E2  JMP loc_E236



ofs_040_0D_E379_02:
C - - J - - 0x01E389 07:E379: A0 07     LDY #$07
bra_E37B_garbage_loop:
C - - - - - 0x01E38B 07:E37B: 88        DEY
C - - - - - 0x01E38C 07:E37C: D0 FD     BNE bra_E37B_garbage_loop
C - - - - - 0x01E38E 07:E37E: AD F0 07  LDA ram_chr_bank_bg_1
C - - - - - 0x01E391 07:E381: AE F1 07  LDX ram_chr_bank_bg_2
C - - - - - 0x01E394 07:E384: 20 EF FB  JSR sub_FBEF
C - - - - - 0x01E397 07:E387: A0 0E     LDY #$0E
bra_E389_garbage_loop:
C - - - - - 0x01E399 07:E389: 88        DEY
C - - - - - 0x01E39A 07:E38A: D0 FD     BNE bra_E389_garbage_loop
C - - - - - 0x01E39C 07:E38C: AD 02 20  LDA $2002
C - - - - - 0x01E39F 07:E38F: A2 23     LDX #> $2300
C - - - - - 0x01E3A1 07:E391: A9 00     LDA #< $2300
C - - - - - 0x01E3A3 07:E393: A4 FD     LDY ram_scroll_X
C - - - - - 0x01E3A5 07:E395: 8E 06 20  STX $2006
C - - - - - 0x01E3A8 07:E398: 8D 06 20  STA $2006
C - - - - - 0x01E3AB 07:E39B: 8C 05 20  STY $2005
C - - - - - 0x01E3AE 07:E39E: 8C 05 20  STY $2005
C - - - - - 0x01E3B1 07:E3A1: 4C 5D E2  JMP loc_E25D



ofs_040_0E_E3A4_00:
C - - J - - 0x01E3B4 07:E3A4: A9 4C     LDA #con_chr_bank + $4C
C - - - - - 0x01E3B6 07:E3A6: A2 52     LDX #con_chr_bank + $52
C - - - - - 0x01E3B8 07:E3A8: D0 04     BNE bra_E3AE    ; jmp



ofs_040_0F_E3AA_00:
C - - J - - 0x01E3BA 07:E3AA: A9 50     LDA #con_chr_bank + $50
C - - - - - 0x01E3BC 07:E3AC: A2 52     LDX #con_chr_bank + $52
bra_E3AE:
C - - - - - 0x01E3BE 07:E3AE: A0 05     LDY #$05
bra_E3B0_garbage_loop:
C - - - - - 0x01E3C0 07:E3B0: 88        DEY
C - - - - - 0x01E3C1 07:E3B1: D0 FD     BNE bra_E3B0_garbage_loop
C - - - - - 0x01E3C3 07:E3B3: 20 EF FB  JSR sub_FBEF
C - - - - - 0x01E3C6 07:E3B6: 4C 5D E2  JMP loc_E25D



sub_E3B9_main_game_handler:
C - - - - - 0x01E3C9 07:E3B9: E6 1B     INC ram_frm_cnt_1
C - - - - - 0x01E3CB 07:E3BB: A5 18     LDA ram_0018_game_handler_hi
C - - - - - 0x01E3CD 07:E3BD: C9 04     CMP #$04
C - - - - - 0x01E3CF 07:E3BF: D0 03     BNE bra_E3C4
; 04
; bzk this jump goes to the same location as specified at 0x01E3DF,
; but developers probably wanted to make it faster without doing pointers calculations,
; since it's executed every frame during gameplay
C - - - - - 0x01E3D1 07:E3C1: 4C E9 E7  JMP loc_E7E9_gameplay
bra_E3C4:
C - - - - - 0x01E3D4 07:E3C4: 20 09 E6  JSR sub_E609_jump_to_pointers_after_jsr
- D 3 - I - 0x01E3D7 07:E3C7: D3 E3     .word ofs_032_E3D3_00_title_screen
- D 3 - I - 0x01E3D9 07:E3C9: 72 E4     .word ofs_032_E472_01_demo
- D 3 - I - 0x01E3DB 07:E3CB: A3 E4     .word ofs_032_E4A3_02_prepare_1st_area
- D 3 - I - 0x01E3DD 07:E3CD: C2 E4     .word ofs_032_E4C2_03_prepare_gameplay
- - - - - - 0x01E3DF 07:E3CF: E9 E7     .word ofs_032_E7E9_04_gameplay   ; never used 0x01E3CF
- D 3 - I - 0x01E3E1 07:E3D1: C9 E4     .word ofs_032_E4C9_05_sound_mode



ofs_032_E3D3_00_title_screen:
C - - J - - 0x01E3E3 07:E3D3: A6 19     LDX ram_0019_handler_internal_status
C - - - - - 0x01E3E5 07:E3D5: D0 0E     BNE bra_E3E5
; 00
C - - - - - 0x01E3E7 07:E3D7: 20 0B E5  JSR sub_E50B
C - - - - - 0x01E3EA 07:E3DA: A9 09     LDA #$09
C - - - - - 0x01E3EC 07:E3DC: 20 70 FE  JSR sub_FE70_set_palette
C - - - - - 0x01E3EF 07:E3DF: 20 BE F7  JSR sub_F7BE_write_palette_to_buffer
C - - - - - 0x01E3F2 07:E3E2: E6 19     INC ram_0019_handler_internal_status    ; 00 -> 01
bra_E3E4_RTS:
C - - - - - 0x01E3F4 07:E3E4: 60        RTS
bra_E3E5:
C - - - - - 0x01E3F5 07:E3E5: CA        DEX
C - - - - - 0x01E3F6 07:E3E6: D0 20     BNE bra_E408
; 01
C - - - - - 0x01E3F8 07:E3E8: 20 DF FE  JSR sub_FEDF_cheat_combination
C - - - - - 0x01E3FB 07:E3EB: 20 EF FE  JSR sub_FEEF_title_screen_handler
C - - - - - 0x01E3FE 07:E3EE: B0 09     BCS bra_E3F9
C - - - - - 0x01E400 07:E3F0: A5 F5     LDA ram_copy_btn_press
C - - - - - 0x01E402 07:E3F2: 29 30     AND #con_btns_SS
C - - - - - 0x01E404 07:E3F4: F0 EE     BEQ bra_E3E4_RTS
loc_E3F6:
C D 3 - - - 0x01E406 07:E3F6: 20 0B E5  JSR sub_E50B
bra_E3F9:
C - - - - - 0x01E409 07:E3F9: 20 2A E5  JSR sub_E52A
C - - - - - 0x01E40C 07:E3FC: 20 02 E5  JSR sub_E502
C - - - - - 0x01E40F 07:E3FF: A9 00     LDA #$00
C - - - - - 0x01E411 07:E401: 85 18     STA ram_0018_game_handler_hi
; bzk optimize, INC
C - - - - - 0x01E413 07:E403: A9 02     LDA #$02
C - - - - - 0x01E415 07:E405: 85 19     STA ram_0019_handler_internal_status
C - - - - - 0x01E417 07:E407: 60        RTS
bra_E408:
C - - - - - 0x01E418 07:E408: CA        DEX
C - - - - - 0x01E419 07:E409: D0 3E     BNE bra_E449
; 02
C - - - - - 0x01E41B 07:E40B: 20 DF FE  JSR sub_FEDF_cheat_combination
C - - - - - 0x01E41E 07:E40E: 20 F1 E4  JSR sub_E4F1
C - - - - - 0x01E421 07:E411: D0 03     BNE bra_E416
C - - - - - 0x01E423 07:E413: 4C E5 E4  JMP loc_E4E5
bra_E416:
C - - - - - 0x01E426 07:E416: A6 22     LDX ram_0022
C - - - - - 0x01E428 07:E418: A9 A7     LDA #$A7    ; cursor pos_Y
C - - - - - 0x01E42A 07:E41A: BC 70 E4  LDY tbl_E470_cursor_pos_X,X
C - - - - - 0x01E42D 07:E41D: 20 5F E4  JSR sub_E45F_set_cursor_position
C - - - - - 0x01E430 07:E420: A5 F5     LDA ram_copy_btn_press
C - - - - - 0x01E432 07:E422: 29 20     AND #con_btn_Select
C - - - - - 0x01E434 07:E424: F0 09     BEQ bra_E42F
C - - - - - 0x01E436 07:E426: A5 22     LDA ram_0022
C - - - - - 0x01E438 07:E428: 49 01     EOR #$01
C - - - - - 0x01E43A 07:E42A: 85 22     STA ram_0022
C - - - - - 0x01E43C 07:E42C: 20 02 E5  JSR sub_E502
bra_E42F:
C - - - - - 0x01E43F 07:E42F: A5 F5     LDA ram_copy_btn_press
C - - - - - 0x01E441 07:E431: 29 10     AND #con_btn_Start
C - - - - - 0x01E443 07:E433: F0 0E     BEQ bra_E443_RTS
C - - - - - 0x01E445 07:E435: A5 F7     LDA ram_copy_btn_hold
C - - - - - 0x01E447 07:E437: 29 C0     AND #con_btns_AB
C - - - - - 0x01E449 07:E439: C9 C0     CMP #con_btns_AB
C - - - - - 0x01E44B 07:E43B: F0 07     BEQ bra_E444_activate_sound_mode
C - - - - - 0x01E44D 07:E43D: A9 80     LDA #$80
C - - - - - 0x01E44F 07:E43F: 85 3C     STA ram_003C
C - - - - - 0x01E451 07:E441: E6 19     INC ram_0019_handler_internal_status    ; 02 -> 03
bra_E443_RTS:
C - - - - - 0x01E453 07:E443: 60        RTS
bra_E444_activate_sound_mode:
C - - - - - 0x01E454 07:E444: A9 05     LDA #$05
C - - - - - 0x01E456 07:E446: 4C EC E4  JMP loc_E4EC_set_next_handler
bra_E449:
; 03
C - - - - - 0x01E459 07:E449: A5 3C     LDA ram_003C
C - - - - - 0x01E45B 07:E44B: 29 08     AND #$08
C - - - - - 0x01E45D 07:E44D: 0A        ASL
C - - - - - 0x01E45E 07:E44E: 0A        ASL
C - - - - - 0x01E45F 07:E44F: 0A        ASL
C - - - - - 0x01E460 07:E450: 0A        ASL
C - - - - - 0x01E461 07:E451: 65 22     ADC ram_0022
; con_0x0017EA_1_player
; con_0x0017EA_2_players
C - - - - - 0x01E463 07:E453: 20 7A FE  JSR sub_FE7A_print_text_on_the_screen
C - - - - - 0x01E466 07:E456: C6 3C     DEC ram_003C
C - - - - - 0x01E468 07:E458: D0 E9     BNE bra_E443_RTS
C - - - - - 0x01E46A 07:E45A: A9 02     LDA #$02
C - - - - - 0x01E46C 07:E45C: 4C EC E4  JMP loc_E4EC_set_next_handler



sub_E45F_set_cursor_position:
C - - - - - 0x01E46F 07:E45F: 8D 1A 05  STA ram_pos_Y_hi_obj
C - - - - - 0x01E472 07:E462: 8C 34 05  STY ram_pos_X_hi_obj
C - - - - - 0x01E475 07:E465: A9 B9     LDA #$B9
C - - - - - 0x01E477 07:E467: 8D 00 05  STA ram_anim_id_obj
C - - - - - 0x01E47A 07:E46A: A9 01     LDA #$01
C - - - - - 0x01E47C 07:E46C: 8D 4E 05  STA ram_attr_spr_obj
C - - - - - 0x01E47F 07:E46F: 60        RTS



tbl_E470_cursor_pos_X:
- D 3 - - - 0x01E480 07:E470: 20        .byte $20   ; 00 1 player
- D 3 - - - 0x01E481 07:E471: 80        .byte $80   ; 01 2 players



ofs_032_E472_01_demo:
C - - J - - 0x01E482 07:E472: A6 19     LDX ram_0019_handler_internal_status
C - - - - - 0x01E484 07:E474: D0 06     BNE bra_E47C
; 00
C - - - - - 0x01E486 07:E476: 20 5C E5  JSR sub_E55C
C - - - - - 0x01E489 07:E479: E6 19     INC ram_0019_handler_internal_status    ; 00 -> 01
C - - - - - 0x01E48B 07:E47B: 60        RTS
bra_E47C:
; 01
C - - - - - 0x01E48C 07:E47C: A5 F1     LDA ram_btn_press
C - - - - - 0x01E48E 07:E47E: 29 30     AND #con_btns_SS
C - - - - - 0x01E490 07:E480: F0 06     BEQ bra_E488_not_pressed
C - - - - - 0x01E492 07:E482: 20 96 E4  JSR sub_E496_next_demo_area
C - - - - - 0x01E495 07:E485: 4C F6 E3  JMP loc_E3F6
bra_E488_not_pressed:
C - - - - - 0x01E498 07:E488: 20 DF E7  JSR sub_E7DF_demo_handler
C - - - - - 0x01E49B 07:E48B: A5 3B     LDA ram_003B_flag_demo_finished
C - - - - - 0x01E49D 07:E48D: F0 B4     BEQ bra_E443_RTS    ; if demo not finished yet
bra_E48F_exit_sound_mode:
C - - - - - 0x01E49F 07:E48F: 20 96 E4  JSR sub_E496_next_demo_area
loc_E492_set_next_handler:
C D 3 - - - 0x01E4A2 07:E492: A9 00     LDA #$00
C - - - - - 0x01E4A4 07:E494: F0 56     BEQ bra_E4EC_set_next_handler    ; jmp



sub_E496_next_demo_area:
C - - - - - 0x01E4A6 07:E496: E6 F0     INC ram_demo_area
C - - - - - 0x01E4A8 07:E498: A5 F0     LDA ram_demo_area
C - - - - - 0x01E4AA 07:E49A: C9 03     CMP #$03
C - - - - - 0x01E4AC 07:E49C: 90 02     BCC bra_E4A0_not_overflow
C - - - - - 0x01E4AE 07:E49E: A9 00     LDA #$00
bra_E4A0_not_overflow:
C - - - - - 0x01E4B0 07:E4A0: 85 F0     STA ram_demo_area
C - - - - - 0x01E4B2 07:E4A2: 60        RTS



ofs_032_E4A3_02_prepare_1st_area:
C - - J - - 0x01E4B3 07:E4A3: A9 00     LDA #$00
C - - - - - 0x01E4B5 07:E4A5: 85 1F     STA ram_001F_flag
C - - - - - 0x01E4B7 07:E4A7: A6 19     LDX ram_0019_handler_internal_status
C - - - - - 0x01E4B9 07:E4A9: D0 03     BNE bra_E4AE
; 00
C - - - - - 0x01E4BB 07:E4AB: E6 19     INC ram_0019_handler_internal_status    ; 00 -> 01
C - - - - - 0x01E4BD 07:E4AD: 60        RTS
bra_E4AE:
C - - - - - 0x01E4BE 07:E4AE: CA        DEX
C - - - - - 0x01E4BF 07:E4AF: D0 09     BNE bra_E4BA_area_select
; 01
C - - - - - 0x01E4C1 07:E4B1: 20 D0 E5  JSR sub_E5D0_clear_memory
C - - - - - 0x01E4C4 07:E4B4: 20 82 E5  JSR sub_E582_set_default_data_for_players
C - - - - - 0x01E4C7 07:E4B7: 4C E5 E4  JMP loc_E4E5
bra_E4BA_area_select:
; 02
; bzk garbage, unused in U version
- - - - - - 0x01E4CA 07:E4BA: A9 0C     LDA #con_0x0017EA__area_1
- - - - - - 0x01E4CC 07:E4BC: 20 7A FE  JSR sub_FE7A_print_text_on_the_screen
- - - - - - 0x01E4CF 07:E4BF: 4C E7 FE  JMP loc_FEE7_area_select_in_japanese_version



ofs_032_E4C2_03_prepare_gameplay:
C - - J - - 0x01E4D2 07:E4C2: A9 00     LDA #$00
C - - - - - 0x01E4D4 07:E4C4: 85 38     STA ram_0038_game_handler_lo
C - - - - - 0x01E4D6 07:E4C6: 4C E5 E4  JMP loc_E4E5



ofs_032_E4C9_05_sound_mode:
C - - J - - 0x01E4D9 07:E4C9: A6 19     LDX ram_0019_handler_internal_status
C - - - - - 0x01E4DB 07:E4CB: D0 0E     BNE bra_E4DB_sound_mode
; 00
C - - - - - 0x01E4DD 07:E4CD: A9 00     LDA #$00
C - - - - - 0x01E4DF 07:E4CF: 8D 00 05  STA ram_anim_id_obj
C - - - - - 0x01E4E2 07:E4D2: E6 19     INC ram_0019_handler_internal_status    ; 00 -> 01
C - - - - - 0x01E4E4 07:E4D4: A9 00     LDA #$00
C - - - - - 0x01E4E6 07:E4D6: 85 50     STA ram_area_index
C - - - - - 0x01E4E8 07:E4D8: 85 51     STA ram_game_loop
C - - - - - 0x01E4EA 07:E4DA: 60        RTS
bra_E4DB_sound_mode:
; 01
C - - - - - 0x01E4EB 07:E4DB: 20 D7 FE  JSR sub_FED7_sound_mode_handler
C - - - - - 0x01E4EE 07:E4DE: A5 F5     LDA ram_copy_btn_press
C - - - - - 0x01E4F0 07:E4E0: 29 10     AND #con_btn_Start
C - - - - - 0x01E4F2 07:E4E2: D0 AB     BNE bra_E48F_exit_sound_mode
C - - - - - 0x01E4F4 07:E4E4: 60        RTS



loc_E4E5:
loc_0x01E4F5:
C D 3 - - - 0x01E4F5 07:E4E5: E6 18     INC ram_0018_game_handler_hi
loc_E4E7:
C D 3 - - - 0x01E4F7 07:E4E7: A9 00     LDA #$00
C - - - - - 0x01E4F9 07:E4E9: 85 19     STA ram_0019_handler_internal_status
C - - - - - 0x01E4FB 07:E4EB: 60        RTS



bra_E4EC_set_next_handler:
loc_E4EC_set_next_handler:
C D 3 - - - 0x01E4FC 07:E4EC: 85 18     STA ram_0018_game_handler_hi
C - - - - - 0x01E4FE 07:E4EE: 4C E7 E4  JMP loc_E4E7



sub_E4F1:
C - - - - - 0x01E501 07:E4F1: A5 3C     LDA ram_003C
C - - - - - 0x01E503 07:E4F3: 05 3D     ORA ram_003D
C - - - - - 0x01E505 07:E4F5: F0 0A     BEQ bra_E501_RTS
C - - - - - 0x01E507 07:E4F7: A5 3C     LDA ram_003C
C - - - - - 0x01E509 07:E4F9: D0 02     BNE bra_E4FD
C - - - - - 0x01E50B 07:E4FB: C6 3D     DEC ram_003D
bra_E4FD:
C - - - - - 0x01E50D 07:E4FD: C6 3C     DEC ram_003C
C - - - - - 0x01E50F 07:E4FF: A9 01     LDA #$01
bra_E501_RTS:
C - - - - - 0x01E511 07:E501: 60        RTS



sub_E502:
C - - - - - 0x01E512 07:E502: A9 00     LDA #$00
C - - - - - 0x01E514 07:E504: A0 01     LDY #$01
C - - - - - 0x01E516 07:E506: 85 3C     STA ram_003C
C - - - - - 0x01E518 07:E508: 84 3D     STY ram_003D
C - - - - - 0x01E51A 07:E50A: 60        RTS



sub_E50B:
C - - - - - 0x01E51B 07:E50B: 20 0E FE  JSR sub_FE0E_stop_sound_engine
C - - - - - 0x01E51E 07:E50E: 20 57 E5  JSR sub_E557_draw_empty_screen
C - - - - - 0x01E521 07:E511: A2 02     LDX #$02    ; title screen
C - - - - - 0x01E523 07:E513: 20 84 FE  JSR sub_FE84_draw_static_sreen
C - - - - - 0x01E526 07:E516: A9 00     LDA #$00
C - - - - - 0x01E528 07:E518: 85 1F     STA ram_001F_flag
C - - - - - 0x01E52A 07:E51A: 85 50     STA ram_area_index
C - - - - - 0x01E52C 07:E51C: 20 D0 E5  JSR sub_E5D0_clear_memory
C - - - - - 0x01E52F 07:E51F: 20 C0 E7  JSR sub_E7C0_preset_chr_banks
C - - - - - 0x01E532 07:E522: 20 8C FC  JSR sub_FC8C_increase_002B
C - - - - - 0x01E535 07:E525: A9 1E     LDA #$1E
C - - - - - 0x01E537 07:E527: 85 FE     STA ram_for_2001
C - - - - - 0x01E539 07:E529: 60        RTS



sub_E52A:
C - - - - - 0x01E53A 07:E52A: A5 FF     LDA ram_for_2000
C - - - - - 0x01E53C 07:E52C: 29 FC     AND #$FC
C - - - - - 0x01E53E 07:E52E: 85 FF     STA ram_for_2000
C - - - - - 0x01E540 07:E530: A9 08     LDA #$08
C - - - - - 0x01E542 07:E532: 20 70 FE  JSR sub_FE70_set_palette
C - - - - - 0x01E545 07:E535: 20 BE F7  JSR sub_F7BE_write_palette_to_buffer
C - - - - - 0x01E548 07:E538: A9 00     LDA #con_0x0017EA_1_player
C - - - - - 0x01E54A 07:E53A: 20 7A FE  JSR sub_FE7A_print_text_on_the_screen
C - - - - - 0x01E54D 07:E53D: A9 01     LDA #con_0x0017EA_2_players
C - - - - - 0x01E54F 07:E53F: 20 7A FE  JSR sub_FE7A_print_text_on_the_screen



sub_0x01E552_letter_C:
; a part of letter C in SUPER C at the title screen
C - - - - - 0x01E552 07:E542: A9 B8     LDA #$B8
C - - - - - 0x01E554 07:E544: 8D 01 05  STA ram_anim_id_obj + $01
C - - - - - 0x01E557 07:E547: A9 00     LDA #$00
C - - - - - 0x01E559 07:E549: 8D 4F 05  STA ram_attr_spr_obj + $01
C - - - - - 0x01E55C 07:E54C: A9 47     LDA #$47
C - - - - - 0x01E55E 07:E54E: 8D 1B 05  STA ram_pos_Y_hi_obj + $01
C - - - - - 0x01E561 07:E551: A9 88     LDA #$88
C - - - - - 0x01E563 07:E553: 8D 35 05  STA ram_pos_X_hi_obj + $01
C - - - - - 0x01E566 07:E556: 60        RTS



sub_E557_draw_empty_screen:
C - - - - - 0x01E567 07:E557: A2 00     LDX #$00    ; empty_screen
C - - - - - 0x01E569 07:E559: 4C 84 FE  JMP loc_FE84_draw_static_sreen



sub_E55C:
C - - - - - 0x01E56C 07:E55C: 20 D0 E5  JSR sub_E5D0_clear_memory
C - - - - - 0x01E56F 07:E55F: A9 01     LDA #$01
C - - - - - 0x01E571 07:E561: 85 1F     STA ram_001F_flag
C - - - - - 0x01E573 07:E563: 85 20     STA ram_plr_counter
C - - - - - 0x01E575 07:E565: A9 01     LDA #con_plr_status_respawn
C - - - - - 0x01E577 07:E567: 85 A0     STA ram_plr_status
C - - - - - 0x01E579 07:E569: 85 A1     STA ram_plr_status + $01
C - - - - - 0x01E57B 07:E56B: A9 00     LDA #$00
C - - - - - 0x01E57D 07:E56D: 85 CA     STA ram_plr_game_over
C - - - - - 0x01E57F 07:E56F: 85 CB     STA ram_plr_game_over + $01
C - - - - - 0x01E581 07:E571: 85 1B     STA ram_frm_cnt_1
C - - - - - 0x01E583 07:E573: 85 5B     STA ram_frm_cnt_2
C - - - - - 0x01E585 07:E575: 85 23     STA ram_random
C - - - - - 0x01E587 07:E577: A9 10     LDA #$10
C - - - - - 0x01E589 07:E579: 85 53     STA ram_plr_lives
C - - - - - 0x01E58B 07:E57B: 85 54     STA ram_plr_lives + $01
C - - - - - 0x01E58D 07:E57D: A5 F0     LDA ram_demo_area
C - - - - - 0x01E58F 07:E57F: 85 50     STA ram_area_index
C - - - - - 0x01E591 07:E581: 60        RTS



sub_E582_set_default_data_for_players:
C - - - - - 0x01E592 07:E582: A9 00     LDA #$00
sub_0x01E594_set_default_data_for_players___custom_area:
C - - - - - 0x01E594 07:E584: 85 50     STA ram_area_index
C - - - - - 0x01E596 07:E586: A9 00     LDA #con_plr_status_permadeath
C - - - - - 0x01E598 07:E588: 85 A0     STA ram_plr_status
C - - - - - 0x01E59A 07:E58A: 85 A1     STA ram_plr_status + $01
C - - - - - 0x01E59C 07:E58C: A9 02     LDA #$02
C - - - - - 0x01E59E 07:E58E: 85 59     STA ram_continues
C - - - - - 0x01E5A0 07:E590: A5 22     LDA ram_0022
C - - - - - 0x01E5A2 07:E592: 85 20     STA ram_plr_counter
sub_E594_set_default_data_for_players:
C - - - - - 0x01E5A4 07:E594: A6 20     LDX ram_plr_counter
bra_E596_loop:
C - - - - - 0x01E5A6 07:E596: A9 01     LDA #con_plr_status_respawn
C - - - - - 0x01E5A8 07:E598: 95 A0     STA ram_plr_status,X
C - - - - - 0x01E5AA 07:E59A: A9 00     LDA #$00    ; con_weapon_default
C - - - - - 0x01E5AC 07:E59C: 95 CA     STA ram_plr_game_over,X
C - - - - - 0x01E5AE 07:E59E: 95 C4     STA ram_plr_invinc,X
C - - - - - 0x01E5B0 07:E5A0: 95 B8     STA ram_weapon,X
C - - - - - 0x01E5B2 07:E5A2: A9 02     LDA #$02
C - - - - - 0x01E5B4 07:E5A4: AC EC 07  LDY ram_cheat_flag
C - - - - - 0x01E5B7 07:E5A7: F0 02     BEQ bra_E5AB_not_cheat
C - - - - - 0x01E5B9 07:E5A9: A9 09     LDA #$09
bra_E5AB_not_cheat:
C - - - - - 0x01E5BB 07:E5AB: 95 53     STA ram_plr_lives,X
C - - - - - 0x01E5BD 07:E5AD: A9 30     LDA #$30
C - - - - - 0x01E5BF 07:E5AF: 95 55     STA ram_plr_next_life_score_lo,X
C - - - - - 0x01E5C1 07:E5B1: A9 00     LDA #$00
C - - - - - 0x01E5C3 07:E5B3: 95 57     STA ram_plr_next_life_score_hi,X
C - - - - - 0x01E5C5 07:E5B5: CA        DEX
C - - - - - 0x01E5C6 07:E5B6: 10 DE     BPL bra_E596_loop
; clear 07E3-07E8
C - - - - - 0x01E5C8 07:E5B8: A9 00     LDA #$00
C - - - - - 0x01E5CA 07:E5BA: A0 05     LDY #$05
bra_E5BC_loop:
C - - - - - 0x01E5CC 07:E5BC: 99 E3 07  STA ram_plr_score,Y
C - - - - - 0x01E5CF 07:E5BF: 88        DEY
C - - - - - 0x01E5D0 07:E5C0: 10 FA     BPL bra_E5BC_loop
C - - - - - 0x01E5D2 07:E5C2: 60        RTS



sub_E5C3_clear_memory:
C - - - - - 0x01E5D3 07:E5C3: A2 5B     LDX #$5B
; clear 005B-009E
C - - - - - 0x01E5D5 07:E5C5: A9 00     LDA #$00
bra_E5C7_loop:
C - - - - - 0x01E5D7 07:E5C7: 95 00     STA $00,X
C - - - - - 0x01E5D9 07:E5C9: E8        INX
C - - - - - 0x01E5DA 07:E5CA: E0 9F     CPX #$9F
C - - - - - 0x01E5DC 07:E5CC: D0 F9     BNE bra_E5C7_loop
C - - - - - 0x01E5DE 07:E5CE: F0 0F     BEQ bra_E5DF    ; jmp



sub_E5D0_clear_memory:
sub_0x01E5E0_clear_memory:
C - - - - - 0x01E5E0 07:E5D0: A2 38     LDX #$38
C - - - - - 0x01E5E2 07:E5D2: D0 02     BNE bra_E5D6    ; jmp


; bzk garbage
- - - - - - 0x01E5E4 07:E5D4: A2 50     LDX #$50



bra_E5D6:
; clear 0038-00DF
C - - - - - 0x01E5E6 07:E5D6: A9 00     LDA #$00
bra_E5D8_loop:
C - - - - - 0x01E5E8 07:E5D8: 95 00     STA $00,X
C - - - - - 0x01E5EA 07:E5DA: E8        INX
C - - - - - 0x01E5EB 07:E5DB: E0 E0     CPX #$E0
C - - - - - 0x01E5ED 07:E5DD: D0 F9     BNE bra_E5D8_loop
bra_E5DF:
; A = 00
; clear 0400-06FF
C - - - - - 0x01E5EF 07:E5DF: A2 00     LDX #$00
bra_E5E1_loop:
C - - - - - 0x01E5F1 07:E5E1: 9D 00 04  STA $0400,X
C - - - - - 0x01E5F4 07:E5E4: 9D 00 05  STA $0500,X
C - - - - - 0x01E5F7 07:E5E7: 9D 00 06  STA $0600,X
C - - - - - 0x01E5FA 07:E5EA: E8        INX
C - - - - - 0x01E5FB 07:E5EB: D0 F4     BNE bra_E5E1_loop
; A = 00
; clear 03B0-03FF
C - - - - - 0x01E5FD 07:E5ED: A2 B0     LDX #$B0
bra_E5EF_loop:
C - - - - - 0x01E5FF 07:E5EF: 9D 00 03  STA $0300,X
C - - - - - 0x01E602 07:E5F2: E8        INX
C - - - - - 0x01E603 07:E5F3: D0 FA     BNE bra_E5EF_loop
; A = 00
; clear 0700-07DF
C - - - - - 0x01E605 07:E5F5: A2 E0     LDX #$E0
bra_E5F7_loop:
C - - - - - 0x01E607 07:E5F7: CA        DEX
C - - - - - 0x01E608 07:E5F8: 9D 00 07  STA $0700,X
C - - - - - 0x01E60B 07:E5FB: D0 FA     BNE bra_E5F7_loop
C - - - - - 0x01E60D 07:E5FD: 60        RTS



sub_E5FE_clear_0500_0567:
C - - - - - 0x01E60E 07:E5FE: A0 68     LDY #$68
C - - - - - 0x01E610 07:E600: A9 00     LDA #$00
bra_E602_loop:
C - - - - - 0x01E612 07:E602: 88        DEY
C - - - - - 0x01E613 07:E603: 99 00 05  STA $0500,Y
C - - - - - 0x01E616 07:E606: D0 FA     BNE bra_E602_loop
C - - - - - 0x01E618 07:E608: 60        RTS



sub_E609_jump_to_pointers_after_jsr:
sub_0x01E619_jump_to_pointers_after_jsr:
C - - - - - 0x01E619 07:E609: 0A        ASL
C - - - - - 0x01E61A 07:E60A: 84 03     STY ram_0003
C - - - - - 0x01E61C 07:E60C: A8        TAY
C - - - - - 0x01E61D 07:E60D: C8        INY
C - - - - - 0x01E61E 07:E60E: 68        PLA
C - - - - - 0x01E61F 07:E60F: 85 00     STA ram_0000
C - - - - - 0x01E621 07:E611: 68        PLA
C - - - - - 0x01E622 07:E612: 85 01     STA ram_0001
C - - - - - 0x01E624 07:E614: B1 00     LDA (ram_0000),Y
C - - - - - 0x01E626 07:E616: 85 02     STA ram_0002
C - - - - - 0x01E628 07:E618: C8        INY
C - - - - - 0x01E629 07:E619: B1 00     LDA (ram_0000),Y
C - - - - - 0x01E62B 07:E61B: A4 03     LDY ram_0003
C - - - - - 0x01E62D 07:E61D: 85 03     STA ram_0003
C - - - - - 0x01E62F 07:E61F: 6C 02 00  JMP (ram_0002)



sub_0x01E632_inc_pointer_by_A:
; bzk optimize, X always 00
; bzk optimize, move to bank 30
C - - - - - 0x01E632 07:E622: 18        CLC
C - - - - - 0x01E633 07:E623: 75 00     ADC ram_0000,X
C - - - - - 0x01E635 07:E625: 95 00     STA ram_0000,X
C - - - - - 0x01E637 07:E627: 90 02     BCC bra_E62B_RTS
C - - - - - 0x01E639 07:E629: F6 01     INC ram_0001,X
bra_E62B_RTS:
C - - - - - 0x01E63B 07:E62B: 60        RTS


; bzk garbage
- - - - - - 0x01E63C 07:E62C: 38        SEC
- - - - - - 0x01E63D 07:E62D: 49 FF     EOR #$FF
- - - - - - 0x01E63F 07:E62F: 75 00     ADC ram_0000,X
- - - - - - 0x01E641 07:E631: 95 00     STA ram_0000,X
- - - - - - 0x01E643 07:E633: B0 02     BCS bra_E637_RTS
- - - - - - 0x01E645 07:E635: D6 01     DEC ram_0001,X
bra_E637_RTS:
- - - - - - 0x01E647 07:E637: 60        RTS



sub_0x01E648:
C - - - - - 0x01E648 07:E638: A9 00     LDA #$00
C - - - - - 0x01E64A 07:E63A: 85 02     STA ram_0002
loc_0x01E64C_add_points_to_score:
C D 3 - - - 0x01E64C 07:E63C: A9 00     LDA #$00
C - - - - - 0x01E64E 07:E63E: 85 03     STA ram_0003
C - - - - - 0x01E650 07:E640: A5 1F     LDA ram_001F_flag
C - - - - - 0x01E652 07:E642: F0 01     BEQ bra_E645
C - - - - - 0x01E654 07:E644: 60        RTS
bra_E645:
C - - - - - 0x01E655 07:E645: A5 21     LDA ram_0021
C - - - - - 0x01E657 07:E647: F0 02     BEQ bra_E64B
C - - - - - 0x01E659 07:E649: A9 01     LDA #$01
bra_E64B:   ; A = 00
C - - - - - 0x01E65B 07:E64B: 85 21     STA ram_0021    ; player index
C - - - - - 0x01E65D 07:E64D: A9 E3     LDA #< ram_1p_score
C - - - - - 0x01E65F 07:E64F: A4 21     LDY ram_0021    ; player index
C - - - - - 0x01E661 07:E651: F0 02     BEQ bra_E655
C - - - - - 0x01E663 07:E653: A9 E6     LDA #< ram_2p_score
bra_E655:
C - - - - - 0x01E665 07:E655: 85 04     STA ram_0004
C - - - - - 0x01E667 07:E657: A0 07     LDY #$07
C - - - - - 0x01E669 07:E659: 84 05     STY ram_0005
C - - - - - 0x01E66B 07:E65B: A2 01     LDX #$01
C - - - - - 0x01E66D 07:E65D: A0 00     LDY #$00
C - - - - - 0x01E66F 07:E65F: A9 03     LDA #$03
C - - - - - 0x01E671 07:E661: 85 00     STA ram_0000
C - - - - - 0x01E673 07:E663: 18        CLC
bra_E664_loop:
C - - - - - 0x01E674 07:E664: B1 04     LDA (ram_0004),Y
C - - - - - 0x01E676 07:E666: 20 E3 E6  JSR sub_E6E3
C - - - - - 0x01E679 07:E669: 91 04     STA (ram_0004),Y
C - - - - - 0x01E67B 07:E66B: C8        INY
C - - - - - 0x01E67C 07:E66C: E8        INX
C - - - - - 0x01E67D 07:E66D: C6 00     DEC ram_0000
C - - - - - 0x01E67F 07:E66F: D0 F3     BNE bra_E664_loop
C - - - - - 0x01E681 07:E671: 90 0B     BCC bra_E67E
; if max hi-score
- - - - - - 0x01E683 07:E673: A2 02     LDX #$02
- - - - - - 0x01E685 07:E675: A9 99     LDA #$99
bra_E677_loop:
- - - - - - 0x01E687 07:E677: 9D E0 07  STA ram_hi_score,X
- - - - - - 0x01E68A 07:E67A: CA        DEX
- - - - - - 0x01E68B 07:E67B: 10 FA     BPL bra_E677_loop
- - - - - - 0x01E68D 07:E67D: 60        RTS
bra_E67E:
C - - - - - 0x01E68E 07:E67E: A6 21     LDX ram_0021    ; player index
C - - - - - 0x01E690 07:E680: A0 02     LDY #$02
C - - - - - 0x01E692 07:E682: B1 04     LDA (ram_0004),Y
C - - - - - 0x01E694 07:E684: D5 57     CMP ram_plr_next_life_score_hi,X
C - - - - - 0x01E696 07:E686: 90 3E     BCC bra_E6C6
C - - - - - 0x01E698 07:E688: D0 07     BNE bra_E691
C - - - - - 0x01E69A 07:E68A: 88        DEY ; 01
C - - - - - 0x01E69B 07:E68B: B1 04     LDA (ram_0004),Y
C - - - - - 0x01E69D 07:E68D: D5 55     CMP ram_plr_next_life_score_lo,X
C - - - - - 0x01E69F 07:E68F: 90 35     BCC bra_E6C6
bra_E691:
C - - - - - 0x01E6A1 07:E691: A4 21     LDY ram_0021    ; player index
C - - - - - 0x01E6A3 07:E693: A2 20     LDX #$20
C - - - - - 0x01E6A5 07:E695: B9 55 00  LDA ram_plr_next_life_score_lo,Y
C - - - - - 0x01E6A8 07:E698: 18        CLC
C - - - - - 0x01E6A9 07:E699: 20 DF E6  JSR sub_E6DF
C - - - - - 0x01E6AC 07:E69C: 99 55 00  STA ram_plr_next_life_score_lo,Y
C - - - - - 0x01E6AF 07:E69F: 90 10     BCC bra_E6B1
C - - - - - 0x01E6B1 07:E6A1: A2 01     LDX #$01
C - - - - - 0x01E6B3 07:E6A3: B9 57 00  LDA ram_plr_next_life_score_hi,Y
C - - - - - 0x01E6B6 07:E6A6: 18        CLC
C - - - - - 0x01E6B7 07:E6A7: 20 DF E6  JSR sub_E6DF
C - - - - - 0x01E6BA 07:E6AA: 90 02     BCC bra_E6AE_not_overflow
- - - - - - 0x01E6BC 07:E6AC: A9 FF     LDA #$FF
bra_E6AE_not_overflow:
C - - - - - 0x01E6BE 07:E6AE: 99 57 00  STA ram_plr_next_life_score_hi,Y
bra_E6B1:
C - - - - - 0x01E6C1 07:E6B1: A6 21     LDX ram_0021    ; player index
C - - - - - 0x01E6C3 07:E6B3: B5 53     LDA ram_plr_lives,X
C - - - - - 0x01E6C5 07:E6B5: C9 63     CMP #$63
C - - - - - 0x01E6C7 07:E6B7: 90 06     BCC bra_E6BF_not_overflow
C - - - - - 0x01E6C9 07:E6B9: A9 63     LDA #$63
C - - - - - 0x01E6CB 07:E6BB: 95 53     STA ram_plr_lives,X
C - - - - - 0x01E6CD 07:E6BD: D0 07     BNE bra_E6C6    ; jmp
bra_E6BF_not_overflow:
C - - - - - 0x01E6CF 07:E6BF: F6 53     INC ram_plr_lives,X
C - - - - - 0x01E6D1 07:E6C1: A9 23     LDA #con_sound_23
C - - - - - 0x01E6D3 07:E6C3: 20 DE FD  JSR sub_FDDE_play_sound
bra_E6C6:
C - - - - - 0x01E6D6 07:E6C6: A0 02     LDY #$02
bra_E6C8_loop:
C - - - - - 0x01E6D8 07:E6C8: B9 E0 07  LDA ram_hi_score,Y
C - - - - - 0x01E6DB 07:E6CB: D1 04     CMP (ram_0004),Y
C - - - - - 0x01E6DD 07:E6CD: 90 05     BCC bra_E6D4
C - - - - - 0x01E6DF 07:E6CF: D0 0D     BNE bra_E6DE_RTS
C - - - - - 0x01E6E1 07:E6D1: 88        DEY
C - - - - - 0x01E6E2 07:E6D2: 10 F4     BPL bra_E6C8_loop
bra_E6D4:
C - - - - - 0x01E6E4 07:E6D4: A0 02     LDY #$02
bra_E6D6_loop:
C - - - - - 0x01E6E6 07:E6D6: B1 04     LDA (ram_0004),Y
C - - - - - 0x01E6E8 07:E6D8: 99 E0 07  STA ram_hi_score,Y
C - - - - - 0x01E6EB 07:E6DB: 88        DEY
C - - - - - 0x01E6EC 07:E6DC: 10 F8     BPL bra_E6D6_loop
bra_E6DE_RTS:
C - - - - - 0x01E6EE 07:E6DE: 60        RTS



sub_E6DF:
C - - - - - 0x01E6EF 07:E6DF: 86 00     STX ram_0000
C - - - - - 0x01E6F1 07:E6E1: A2 00     LDX #$00
sub_E6E3:
C - - - - - 0x01E6F3 07:E6E3: 85 07     STA ram_0007
C - - - - - 0x01E6F5 07:E6E5: 29 F0     AND #$F0
C - - - - - 0x01E6F7 07:E6E7: 85 06     STA ram_0006
C - - - - - 0x01E6F9 07:E6E9: 45 07     EOR ram_0007
C - - - - - 0x01E6FB 07:E6EB: 85 07     STA ram_0007
C - - - - - 0x01E6FD 07:E6ED: B5 00     LDA ram_0000,X ; 0000 0001 0002 0003 
C - - - - - 0x01E6FF 07:E6EF: 29 0F     AND #$0F
C - - - - - 0x01E701 07:E6F1: 65 07     ADC ram_0007
C - - - - - 0x01E703 07:E6F3: C9 0A     CMP #$0A
C - - - - - 0x01E705 07:E6F5: 90 02     BCC bra_E6F9
C - - - - - 0x01E707 07:E6F7: 69 05     ADC #$05
bra_E6F9:
C - - - - - 0x01E709 07:E6F9: 65 06     ADC ram_0006
C - - - - - 0x01E70B 07:E6FB: 85 06     STA ram_0006
C - - - - - 0x01E70D 07:E6FD: B5 00     LDA ram_0000,X ; 0000 0001 0002 0003 
C - - - - - 0x01E70F 07:E6FF: 29 F0     AND #$F0
C - - - - - 0x01E711 07:E701: 65 06     ADC ram_0006
C - - - - - 0x01E713 07:E703: B0 04     BCS bra_E709
C - - - - - 0x01E715 07:E705: C9 A0     CMP #$A0
C - - - - - 0x01E717 07:E707: 90 03     BCC bra_E70C_RTS
bra_E709:
C - - - - - 0x01E719 07:E709: E9 A0     SBC #$A0
C - - - - - 0x01E71B 07:E70B: 38        SEC
bra_E70C_RTS:
C - - - - - 0x01E71C 07:E70C: 60        RTS


; bzk garbage
- - - - - - 0x01E71D 07:E70D: 84 02     STY ram_0002
- - - - - - 0x01E71F 07:E70F: 85 00     STA ram_0000
- - - - - - 0x01E721 07:E711: A9 00     LDA #$00
- - - - - - 0x01E723 07:E713: A0 08     LDY #$08
bra_E715_loop:
- - - - - - 0x01E725 07:E715: 46 02     LSR ram_0002
- - - - - - 0x01E727 07:E717: 90 03     BCC bra_E71C
- - - - - - 0x01E729 07:E719: 18        CLC
- - - - - - 0x01E72A 07:E71A: 65 00     ADC ram_0000
bra_E71C:
- - - - - - 0x01E72C 07:E71C: 6A        ROR
- - - - - - 0x01E72D 07:E71D: 88        DEY
- - - - - - 0x01E72E 07:E71E: D0 F5     BNE bra_E715_loop
- - - - - - 0x01E730 07:E720: 85 00     STA ram_0000
- - - - - - 0x01E732 07:E722: 60        RTS



sub_E723_print_area_number:
C - - - - - 0x01E733 07:E723: A9 02     LDA #con_0x0017EA_area
C - - - - - 0x01E735 07:E725: 20 7A FE  JSR sub_FE7A_print_text_on_the_screen
C - - - - - 0x01E738 07:E728: A5 50     LDA ram_area_index
C - - - - - 0x01E73A 07:E72A: 18        CLC
C - - - - - 0x01E73B 07:E72B: 69 02     ADC #$02
C - - - - - 0x01E73D 07:E72D: 9D FE 02  STA ram_spr_A + $FC,X
C - - - - - 0x01E740 07:E730: 60        RTS



sub_E731_print_lives_and_score:
C - - - - - 0x01E741 07:E731: A9 05     LDA #$05
C - - - - - 0x01E743 07:E733: 85 1D     STA ram_001D
C - - - - - 0x01E745 07:E735: A9 08     LDA #$08
C - - - - - 0x01E747 07:E737: 20 70 FE  JSR sub_FE70_set_palette
C - - - - - 0x01E74A 07:E73A: A0 4C     LDY #con_F97C_colors + $4C
C - - - - - 0x01E74C 07:E73C: 20 68 F9  JSR sub_F968_write_3_colors
C - - - - - 0x01E74F 07:E73F: 20 BE F7  JSR sub_F7BE_write_palette_to_buffer
C - - - - - 0x01E752 07:E742: A9 A8     LDA #$A8
C - - - - - 0x01E754 07:E744: 85 FF     STA ram_for_2000
C - - - - - 0x01E756 07:E746: A9 00     LDA #$00
C - - - - - 0x01E758 07:E748: 85 FD     STA ram_scroll_X
C - - - - - 0x01E75A 07:E74A: 85 FC     STA ram_scroll_Y
C - - - - - 0x01E75C 07:E74C: A9 06     LDA #con_0x0017EA_rest_1p
C - - - - - 0x01E75E 07:E74E: 20 7A FE  JSR sub_FE7A_print_text_on_the_screen
C - - - - - 0x01E761 07:E751: A0 00     LDY #$00    ; 1st player
C - - - - - 0x01E763 07:E753: 20 A4 E7  JSR sub_E7A4_display_lives_counter_with_sprites
C - - - - - 0x01E766 07:E756: A9 07     LDA #con_0x0017EA_rest_2p
C - - - - - 0x01E768 07:E758: 20 7A FE  JSR sub_FE7A_print_text_on_the_screen
C - - - - - 0x01E76B 07:E75B: A0 01     LDY #$01    ; 2nd player
C - - - - - 0x01E76D 07:E75D: 20 A4 E7  JSR sub_E7A4_display_lives_counter_with_sprites
C - - - - - 0x01E770 07:E760: A9 03     LDA #con_0x0017EA_1p_score
C - - - - - 0x01E772 07:E762: 20 7A FE  JSR sub_FE7A_print_text_on_the_screen
C - - - - - 0x01E775 07:E765: A9 E3     LDA #< ram_1p_score
C - - - - - 0x01E777 07:E767: 20 7B E7  JSR sub_E77B_print_score
C - - - - - 0x01E77A 07:E76A: A9 04     LDA #con_0x0017EA_2p_score
C - - - - - 0x01E77C 07:E76C: 20 7A FE  JSR sub_FE7A_print_text_on_the_screen
C - - - - - 0x01E77F 07:E76F: A9 E6     LDA #< ram_2p_score
C - - - - - 0x01E781 07:E771: 20 7B E7  JSR sub_E77B_print_score
C - - - - - 0x01E784 07:E774: A9 05     LDA #con_0x0017EA_hi_score
C - - - - - 0x01E786 07:E776: 20 7A FE  JSR sub_FE7A_print_text_on_the_screen
C - - - - - 0x01E789 07:E779: A9 E0     LDA #< ram_hi_score
sub_E77B_print_score:
C - - - - - 0x01E78B 07:E77B: 85 00     STA ram_0000
C - - - - - 0x01E78D 07:E77D: A9 07     LDA #$07
C - - - - - 0x01E78F 07:E77F: 85 01     STA ram_0001
C - - - - - 0x01E791 07:E781: 8A        TXA
C - - - - - 0x01E792 07:E782: 38        SEC
C - - - - - 0x01E793 07:E783: E9 08     SBC #$08
C - - - - - 0x01E795 07:E785: AA        TAX
C - - - - - 0x01E796 07:E786: A0 02     LDY #$02
bra_E788_loop:
; get hi nibble
C - - - - - 0x01E798 07:E788: B1 00     LDA (ram_0000),Y
C - - - - - 0x01E79A 07:E78A: 4A        LSR
C - - - - - 0x01E79B 07:E78B: 4A        LSR
C - - - - - 0x01E79C 07:E78C: 4A        LSR
C - - - - - 0x01E79D 07:E78D: 4A        LSR
C - - - - - 0x01E79E 07:E78E: 20 9A E7  JSR sub_E79A_print_number   ; bzk optimize, JSR to 0x01E7AC
; get lo nibble
C - - - - - 0x01E7A1 07:E791: B1 00     LDA (ram_0000),Y
C - - - - - 0x01E7A3 07:E793: 20 9A E7  JSR sub_E79A_print_number
C - - - - - 0x01E7A6 07:E796: 88        DEY
C - - - - - 0x01E7A7 07:E797: 10 EF     BPL bra_E788_loop
C - - - - - 0x01E7A9 07:E799: 60        RTS



sub_E79A_print_number:
C - - - - - 0x01E7AA 07:E79A: 29 0F     AND #$0F
C - - - - - 0x01E7AC 07:E79C: 18        CLC
C - - - - - 0x01E7AD 07:E79D: 69 01     ADC #$01
C - - - - - 0x01E7AF 07:E79F: 9D 00 03  STA ram_nmt_buffer,X
C - - - - - 0x01E7B2 07:E7A2: E8        INX
C - - - - - 0x01E7B3 07:E7A3: 60        RTS



sub_E7A4_display_lives_counter_with_sprites:
; Y = player index
C - - - - - 0x01E7B4 07:E7A4: B9 53 00  LDA ram_plr_lives,Y
; calculate decimal tens (Y) and ones (A) from hex
C - - - - - 0x01E7B7 07:E7A7: A0 00     LDY #$00
bra_E7A9_loop:
C - - - - - 0x01E7B9 07:E7A9: C9 0A     CMP #$0A
C - - - - - 0x01E7BB 07:E7AB: 90 05     BCC bra_E7B2
C - - - - - 0x01E7BD 07:E7AD: E9 0A     SBC #$0A
C - - - - - 0x01E7BF 07:E7AF: C8        INY
C - - - - - 0x01E7C0 07:E7B0: D0 F7     BNE bra_E7A9_loop
bra_E7B2:
C - - - - - 0x01E7C2 07:E7B2: 18        CLC
C - - - - - 0x01E7C3 07:E7B3: 69 01     ADC #$01
C - - - - - 0x01E7C5 07:E7B5: 9D FE 02  STA ram_spr_A + $FC,X
C - - - - - 0x01E7C8 07:E7B8: 98        TYA
C - - - - - 0x01E7C9 07:E7B9: 18        CLC
C - - - - - 0x01E7CA 07:E7BA: 69 01     ADC #$01
C - - - - - 0x01E7CC 07:E7BC: 9D FD 02  STA ram_spr_T + $FC,X
C - - - - - 0x01E7CF 07:E7BF: 60        RTS



sub_E7C0_preset_chr_banks:
sub_0x01E7D0_preset_chr_banks:
C - - - - - 0x01E7D0 07:E7C0: A9 40     LDA #con_chr_bank + $40
C - - - - - 0x01E7D2 07:E7C2: 8D F0 07  STA ram_chr_bank_bg_1
C - - - - - 0x01E7D5 07:E7C5: A9 6A     LDA #con_chr_bank + $6A
C - - - - - 0x01E7D7 07:E7C7: 8D F1 07  STA ram_chr_bank_bg_2
C - - - - - 0x01E7DA 07:E7CA: A9 44     LDA #con_chr_bank + $44
C - - - - - 0x01E7DC 07:E7CC: 8D F2 07  STA ram_chr_bank_spr_1
C - - - - - 0x01E7DF 07:E7CF: A9 45     LDA #con_chr_bank + $45
C - - - - - 0x01E7E1 07:E7D1: 8D F3 07  STA ram_chr_bank_spr_2
C - - - - - 0x01E7E4 07:E7D4: A9 46     LDA #con_chr_bank + $46
C - - - - - 0x01E7E6 07:E7D6: 8D F4 07  STA ram_chr_bank_spr_3
C - - - - - 0x01E7E9 07:E7D9: A9 07     LDA #con_chr_bank + $07
C - - - - - 0x01E7EB 07:E7DB: 8D F5 07  STA ram_chr_bank_spr_4
C - - - - - 0x01E7EE 07:E7DE: 60        RTS



sub_E7DF_demo_handler:
C - - - - - 0x01E7EF 07:E7DF: 20 B7 FE  JSR sub_FEB7_demo_ai_input
C - - - - - 0x01E7F2 07:E7E2: A5 3B     LDA ram_003B_flag_demo_finished
C - - - - - 0x01E7F4 07:E7E4: F0 03     BEQ bra_E7E9_demo_not_finished
; A = 01
C - - - - - 0x01E7F6 07:E7E6: 4C 56 EA  JMP loc_EA56_set_next_handler
bra_E7E9_demo_not_finished:
loc_E7E9_gameplay:
ofs_032_E7E9_04_gameplay:
C D 3 - - - 0x01E7F9 07:E7E9: A5 38     LDA ram_0038_game_handler_lo
C - - - - - 0x01E7FB 07:E7EB: C9 03     CMP #$03
C - - - - - 0x01E7FD 07:E7ED: D0 03     BNE bra_E7F2
; 03
; bzk this jump goes to the same location as specified at 0x01E80B,
; but developers probably wanted to make it faster without doing pointers calculations,
; since it's executed every frame during gameplay
C - - - - - 0x01E7FF 07:E7EF: 4C D6 E8  JMP loc_E8D6
bra_E7F2:
C - - - - - 0x01E802 07:E7F2: 20 09 E6  JSR sub_E609_jump_to_pointers_after_jsr
- D 3 - I - 0x01E805 07:E7F5: 07 E8     .word ofs_033_E807_00_title_screen
- D 3 - I - 0x01E807 07:E7F7: 69 E8     .word ofs_033_E869_01_score_screen
- D 3 - I - 0x01E809 07:E7F9: 7C E8     .word ofs_033_E87C_02_prepare_area
- - - - - - 0x01E80B 07:E7FB: D6 E8     .word ofs_033_E8D6_03_area_gameplay   ; never used 0x01E7FD
- D 3 - I - 0x01E80D 07:E7FD: 23 E9     .word ofs_033_E923_04_boss_defeated
- D 3 - I - 0x01E80F 07:E7FF: F7 E9     .word ofs_033_E9F7_05_draw_game_over_screen
- D 3 - I - 0x01E811 07:E801: 16 EA     .word ofs_033_EA16_06_draw_continue_end_options
- D 3 - I - 0x01E813 07:E803: 2A EA     .word ofs_033_EA2A_07_continue_end_options_handler
- D 3 - I - 0x01E815 07:E805: 5C EA     .word ofs_033_EA5C_08_credits



ofs_033_E807_00_title_screen:
C - - J - - 0x01E817 07:E807: 20 0E FE  JSR sub_FE0E_stop_sound_engine
C - - - - - 0x01E81A 07:E80A: 20 FE E5  JSR sub_E5FE_clear_0500_0567
C - - - - - 0x01E81D 07:E80D: 20 C3 E5  JSR sub_E5C3_clear_memory
C - - - - - 0x01E820 07:E810: 20 57 E5  JSR sub_E557_draw_empty_screen
C - - - - - 0x01E823 07:E813: A9 1E     LDA #$1E
C - - - - - 0x01E825 07:E815: 85 FE     STA ram_for_2001
C - - - - - 0x01E827 07:E817: 20 32 F7  JSR sub_F732_delete_all_objects_and_clear_their_data
C - - - - - 0x01E82A 07:E81A: A2 01     LDX #$01
bra_E81C_loop:
C - - - - - 0x01E82C 07:E81C: A9 00     LDA #$00
C - - - - - 0x01E82E 07:E81E: A4 50     LDY ram_area_index
C - - - - - 0x01E830 07:E820: D0 16     BNE bra_E838
; if area 1
C - - - - - 0x01E832 07:E822: A9 60     LDA #$60
C - - - - - 0x01E834 07:E824: 9D 32 05  STA ram_pos_Y_hi_plr,X
C - - - - - 0x01E837 07:E827: A9 77     LDA #$77
C - - - - - 0x01E839 07:E829: 9D 4C 05  STA ram_pos_X_hi_plr,X
C - - - - - 0x01E83C 07:E82C: BD 67 E8  LDA tbl_E867_respawn_timer,X
C - - - - - 0x01E83F 07:E82F: B4 A0     LDY ram_plr_status,X
C - - - - - 0x01E841 07:E831: F0 02     BEQ bra_E835_dead   ; if con_plr_status_permadeath
C - - - - - 0x01E843 07:E833: A0 06     LDY #con_plr_status_in_heli
bra_E835_dead:
C - - - - - 0x01E845 07:E835: 4C 3E E8  JMP loc_E83E
bra_E838:
C - - - - - 0x01E848 07:E838: B4 A0     LDY ram_plr_status,X
C - - - - - 0x01E84A 07:E83A: F0 02     BEQ bra_E83E_dead   ; if con_plr_status_permadeath
C - - - - - 0x01E84C 07:E83C: A0 01     LDY #con_plr_status_respawn
bra_E83E_dead:
loc_E83E:
C D 3 - - - 0x01E84E 07:E83E: 95 C0     STA ram_plr_respawn_timer,X
C - - - - - 0x01E850 07:E840: 98        TYA
C - - - - - 0x01E851 07:E841: 95 A0     STA ram_plr_status,X
C - - - - - 0x01E853 07:E843: F0 02     BEQ bra_E847_dead   ; if con_plr_status_permadeath
C - - - - - 0x01E855 07:E845: F6 53     INC ram_plr_lives,X
bra_E847_dead:
C - - - - - 0x01E857 07:E847: CA        DEX
C - - - - - 0x01E858 07:E848: 10 D2     BPL bra_E81C_loop
C - - - - - 0x01E85A 07:E84A: 20 9E FE  JSR sub_FE9E
C - - - - - 0x01E85D 07:E84D: 20 C7 FE  JSR sub_FEC7_prepare_area_config
C - - - - - 0x01E860 07:E850: 20 8C FC  JSR sub_FC8C_increase_002B
C - - - - - 0x01E863 07:E853: A9 01     LDA #$01
C - - - - - 0x01E865 07:E855: A4 1F     LDY ram_001F_flag
C - - - - - 0x01E867 07:E857: D0 0B     BNE bra_E864
C - - - - - 0x01E869 07:E859: 20 23 E7  JSR sub_E723_print_area_number
C - - - - - 0x01E86C 07:E85C: 20 31 E7  JSR sub_E731_print_lives_and_score
C - - - - - 0x01E86F 07:E85F: 20 C0 E7  JSR sub_E7C0_preset_chr_banks
C - - - - - 0x01E872 07:E862: A9 80     LDA #$80
bra_E864:
C - - - - - 0x01E874 07:E864: 4C 11 EA  JMP loc_EA11



tbl_E867_respawn_timer:
- D 3 - - - 0x01E877 07:E867: 60        .byte $60   ; 00 
- D 3 - - - 0x01E878 07:E868: 78        .byte $78   ; 01 



ofs_033_E869_01_score_screen:
C - - J - - 0x01E879 07:E869: C6 3F     DEC ram_screen_timer
C - - - - - 0x01E87B 07:E86B: D0 25     BNE bra_E892_RTS
C - - - - - 0x01E87D 07:E86D: 20 57 E5  JSR sub_E557_draw_empty_screen
C - - - - - 0x01E880 07:E870: 20 B0 EA  JSR sub_EAB0_prepare_chr_banks_for_area
C - - - - - 0x01E883 07:E873: 20 68 FE  JSR sub_FE68
C - - - - - 0x01E886 07:E876: 20 BE F7  JSR sub_F7BE_write_palette_to_buffer
C - - - - - 0x01E889 07:E879: 4C B2 E8  JMP loc_E8B2_prepare_next_screen_handler



ofs_033_E87C_02_prepare_area:
C - - J - - 0x01E88C 07:E87C: A9 02     LDA #$02
C - - - - - 0x01E88E 07:E87E: 85 1D     STA ram_001D
C - - - - - 0x01E890 07:E880: A6 3E     LDX ram_003E_game_handler
C - - - - - 0x01E892 07:E882: D0 0F     BNE bra_E893
C - - - - - 0x01E894 07:E884: 20 8C FE  JSR sub_FE8C
bra_E887_loop:
C - - - - - 0x01E897 07:E887: 20 92 FE  JSR sub_FE92
C - - - - - 0x01E89A 07:E88A: A5 6A     LDA ram_006A
C - - - - - 0x01E89C 07:E88C: C9 03     CMP #$03
C - - - - - 0x01E89E 07:E88E: D0 F7     BNE bra_E887_loop
C - - - - - 0x01E8A0 07:E890: E6 3E     INC ram_003E_game_handler
bra_E892_RTS:
C - - - - - 0x01E8A2 07:E892: 60        RTS
bra_E893:
bra_E893_loop:
C - - - - - 0x01E8A3 07:E893: 20 92 FE  JSR sub_FE92
C - - - - - 0x01E8A6 07:E896: A5 60     LDA ram_0060_game_handler
C - - - - - 0x01E8A8 07:E898: D0 F9     BNE bra_E893_loop
C - - - - - 0x01E8AA 07:E89A: A5 65     LDA ram_0065
C - - - - - 0x01E8AC 07:E89C: C9 01     CMP #$01
C - - - - - 0x01E8AE 07:E89E: D0 14     BNE bra_E8B4
C - - - - - 0x01E8B0 07:E8A0: A5 64     LDA ram_0064
C - - - - - 0x01E8B2 07:E8A2: C9 04     CMP #$04
C - - - - - 0x01E8B4 07:E8A4: 90 0E     BCC bra_E8B4
C - - - - - 0x01E8B6 07:E8A6: A9 00     LDA #$00
C - - - - - 0x01E8B8 07:E8A8: 85 6B     STA ram_006B
C - - - - - 0x01E8BA 07:E8AA: 85 6C     STA ram_006C
C - - - - - 0x01E8BC 07:E8AC: 20 35 FE  JSR sub_FE35_prepare_heli_rotor_blade
C - - - - - 0x01E8BF 07:E8AF: 20 B9 E8  JSR sub_E8B9_select_area_soundtrack
loc_E8B2_prepare_next_screen_handler:
C D 3 - - - 0x01E8C2 07:E8B2: E6 38     INC ram_0038_game_handler_lo
bra_E8B4:
loc_E8B4:
C D 3 - - - 0x01E8C4 07:E8B4: A9 00     LDA #$00
C - - - - - 0x01E8C6 07:E8B6: 85 3E     STA ram_003E_game_handler
bra_E8B8_RTS:
C - - - - - 0x01E8C8 07:E8B8: 60        RTS



sub_E8B9_select_area_soundtrack:
C - - - - - 0x01E8C9 07:E8B9: A5 1F     LDA ram_001F_flag
C - - - - - 0x01E8CB 07:E8BB: D0 08     BNE bra_E8C5
C - - - - - 0x01E8CD 07:E8BD: A4 50     LDY ram_area_index
C - - - - - 0x01E8CF 07:E8BF: B9 CE E8  LDA tbl_E8CE,Y
C - - - - - 0x01E8D2 07:E8C2: 20 DE FD  JSR sub_FDDE_play_sound
bra_E8C5:
C - - - - - 0x01E8D5 07:E8C5: A5 50     LDA ram_area_index
C - - - - - 0x01E8D7 07:E8C7: D0 EF     BNE bra_E8B8_RTS
C - - - - - 0x01E8D9 07:E8C9: A9 0A     LDA #con_sound_0A
C - - - - - 0x01E8DB 07:E8CB: 4C DE FD  JMP loc_FDDE_play_sound



tbl_E8CE:
- D 3 - - - 0x01E8DE 07:E8CE: 28        .byte con_sound_28   ; 00
- D 3 - - - 0x01E8DF 07:E8CF: 2B        .byte con_sound_2B   ; 01
- D 3 - - - 0x01E8E0 07:E8D0: 2A        .byte con_sound_2A   ; 02
- D 3 - - - 0x01E8E1 07:E8D1: 29        .byte con_sound_29   ; 03
- D 3 - - - 0x01E8E2 07:E8D2: 2C        .byte con_sound_2C   ; 04
- D 3 - - - 0x01E8E3 07:E8D3: 2D        .byte con_sound_2D   ; 05
- D 3 - - - 0x01E8E4 07:E8D4: 2E        .byte con_sound_2E   ; 06
- D 3 - - - 0x01E8E5 07:E8D5: 2F        .byte con_sound_2F   ; 07



loc_E8D6:
ofs_033_E8D6_03_area_gameplay:
; executes each frame during gameplay (except when player autoruns to exit)
C D 3 - - - 0x01E8E6 07:E8D6: A9 01     LDA #$01
C - - - - - 0x01E8E8 07:E8D8: 85 87     STA ram_game_over_flag
C - - - - - 0x01E8EA 07:E8DA: 20 8A EA  JSR sub_EA8A
C - - - - - 0x01E8ED 07:E8DD: 20 3D FE  JSR sub_FE3D_area_handler
C - - - - - 0x01E8F0 07:E8E0: A5 39     LDA ram_pause_flag
C - - - - - 0x01E8F2 07:E8E2: F0 06     BEQ bra_E8EA_not_paused
; if paused
C - - - - - 0x01E8F4 07:E8E4: 20 55 FE  JSR sub_FE55_select_objects_for_current_frm
C - - - - - 0x01E8F7 07:E8E7: 4C A9 F7  JMP loc_F7A9_write_palette_to_buffer_with_conditions
bra_E8EA_not_paused:
C - - - - - 0x01E8FA 07:E8EA: 20 06 E9  JSR sub_E906_game_handler
C - - - - - 0x01E8FD 07:E8ED: A5 5C     LDA ram_area_end_flags
C - - - - - 0x01E8FF 07:E8EF: 30 01     BMI bra_E8F2_boss_done_exploding
C - - - - - 0x01E901 07:E8F1: 60        RTS
bra_E8F2_boss_done_exploding:
C - - - - - 0x01E902 07:E8F2: A9 04     LDA #$04    ; boss defeated
C - - - - - 0x01E904 07:E8F4: D0 0B     BNE bra_E901    ; jmp



loc_0x01E906_prepare_game_over:
C D 3 - - - 0x01E906 07:E8F6: A9 35     LDA #con_sound_35
C - - - - - 0x01E908 07:E8F8: 20 DE FD  JSR sub_FDDE_play_sound
C - - - - - 0x01E90B 07:E8FB: A0 01     LDY #$01
C - - - - - 0x01E90D 07:E8FD: A9 05     LDA #$05
C - - - - - 0x01E90F 07:E8FF: 84 3F     STY ram_screen_timer
bra_E901:
loc_E901:
C D 3 - - - 0x01E911 07:E901: 85 38     STA ram_0038_game_handler_lo
C - - - - - 0x01E913 07:E903: 4C B4 E8  JMP loc_E8B4



sub_E906_game_handler:
C - - - - - 0x01E916 07:E906: E6 5B     INC ram_frm_cnt_2
C - - - - - 0x01E918 07:E908: 20 3A F8  JSR sub_F83A
C - - - - - 0x01E91B 07:E90B: 20 45 FE  JSR sub_FE45
C - - - - - 0x01E91E 07:E90E: 20 BF FE  JSR sub_FEBF
C - - - - - 0x01E921 07:E911: 20 98 FE  JSR sub_FE98
C - - - - - 0x01E924 07:E914: 20 4D FE  JSR sub_FE4D
C - - - - - 0x01E927 07:E917: 20 25 FE  JSR sub_FE25_spawn_object_from_area_data
C - - - - - 0x01E92A 07:E91A: 20 2D FE  JSR sub_FE2D_spawn_mobs
C - - - - - 0x01E92D 07:E91D: 20 1F FE  JSR sub_FE1F_object_handler
C - - - - - 0x01E930 07:E920: 4C A9 F7  JMP loc_F7A9_write_palette_to_buffer_with_conditions



ofs_033_E923_04_boss_defeated:
C - - J - - 0x01E933 07:E923: A5 3E     LDA ram_003E_game_handler
C - - - - - 0x01E935 07:E925: C9 02     CMP #$02
C - - - - - 0x01E937 07:E927: 90 0A     BCC bra_E933
C - - - - - 0x01E939 07:E929: A0 00     LDY #$00
C - - - - - 0x01E93B 07:E92B: 84 F1     STY ram_btn_press
C - - - - - 0x01E93D 07:E92D: 84 F2     STY ram_btn_press + $01
C - - - - - 0x01E93F 07:E92F: 84 F3     STY ram_btn_hold
C - - - - - 0x01E941 07:E931: 84 F4     STY ram_btn_hold + $01
bra_E933:
C - - - - - 0x01E943 07:E933: 20 09 E6  JSR sub_E609_jump_to_pointers_after_jsr
- D 3 - I - 0x01E946 07:E936: 42 E9     .word ofs_034_E942_00_boss_done_exploding
- D 3 - I - 0x01E948 07:E938: 4C E9     .word ofs_034_E94C_01_wait_after_boss_exploded
- D 3 - I - 0x01E94A 07:E93A: 79 E9     .word ofs_034_E979_02_player_runs_towards_exit
- D 3 - I - 0x01E94C 07:E93C: B2 E9     .word ofs_034_E9B2_03
- D 3 - I - 0x01E94E 07:E93E: BC E9     .word ofs_034_E9BC_04_screen_blackout
- D 3 - I - 0x01E950 07:E940: CC E9     .word ofs_034_E9CC_05



ofs_034_E942_00_boss_done_exploding:
; boss has just done exploding
C - - J - - 0x01E952 07:E942: 20 3D FE  JSR sub_FE3D_area_handler
C - - - - - 0x01E955 07:E945: 20 06 E9  JSR sub_E906_game_handler
C - - - - - 0x01E958 07:E948: A9 5E     LDA #$5E
C - - - - - 0x01E95A 07:E94A: D0 28     BNE bra_E974    ; jmp



ofs_034_E94C_01_wait_after_boss_exploded:
C - - J - - 0x01E95C 07:E94C: 20 3D FE  JSR sub_FE3D_area_handler
C - - - - - 0x01E95F 07:E94F: 20 06 E9  JSR sub_E906_game_handler
C - - - - - 0x01E962 07:E952: A5 1B     LDA ram_frm_cnt_1
C - - - - - 0x01E964 07:E954: 4A        LSR
C - - - - - 0x01E965 07:E955: B0 21     BCS bra_E978_RTS
C - - - - - 0x01E967 07:E957: C6 3F     DEC ram_screen_timer
C - - - - - 0x01E969 07:E959: D0 1D     BNE bra_E978_RTS
C - - - - - 0x01E96B 07:E95B: A9 33     LDA #con_sound_33
C - - - - - 0x01E96D 07:E95D: A4 50     LDY ram_area_index
C - - - - - 0x01E96F 07:E95F: C0 07     CPY #$07
C - - - - - 0x01E971 07:E961: D0 02     BNE bra_E965_not_final_area
C - - - - - 0x01E973 07:E963: A9 34     LDA #con_sound_34
bra_E965_not_final_area:
C - - - - - 0x01E975 07:E965: 20 DE FD  JSR sub_FDDE_play_sound
C - - - - - 0x01E978 07:E968: A9 00     LDA #$00
C - - - - - 0x01E97A 07:E96A: 85 40     STA ram_0040
C - - - - - 0x01E97C 07:E96C: A5 5C     LDA ram_area_end_flags
C - - - - - 0x01E97E 07:E96E: 09 40     ORA #$40    ; player is running towards exit flag
C - - - - - 0x01E980 07:E970: 85 5C     STA ram_area_end_flags
C - - - - - 0x01E982 07:E972: A9 90     LDA #$90    ; timer before screen blackout
bra_E974:
C - - - - - 0x01E984 07:E974: 85 3F     STA ram_screen_timer
bra_E976:
loc_E976:
C D 3 - - - 0x01E986 07:E976: E6 3E     INC ram_003E_game_handler
bra_E978_RTS:
C - - - - - 0x01E988 07:E978: 60        RTS



ofs_034_E979_02_player_runs_towards_exit:
; check if both players reached entrance to the next level
C - - J - - 0x01E989 07:E979: 20 CF FE  JSR sub_FECF_stage_complete_handler
C - - - - - 0x01E98C 07:E97C: 20 3D FE  JSR sub_FE3D_area_handler
C - - - - - 0x01E98F 07:E97F: 20 06 E9  JSR sub_E906_game_handler
C - - - - - 0x01E992 07:E982: A5 1B     LDA ram_frm_cnt_1
C - - - - - 0x01E994 07:E984: 29 03     AND #$03
C - - - - - 0x01E996 07:E986: D0 02     BNE bra_E98A
C - - - - - 0x01E998 07:E988: C6 3F     DEC ram_screen_timer
bra_E98A:
C - - - - - 0x01E99A 07:E98A: F0 21     BEQ bra_E9AD
C - - - - - 0x01E99C 07:E98C: A5 3F     LDA ram_screen_timer
C - - - - - 0x01E99E 07:E98E: C9 30     CMP #$30
C - - - - - 0x01E9A0 07:E990: B0 1F     BCS bra_E9B1_RTS
C - - - - - 0x01E9A2 07:E992: A0 00     LDY #$00
C - - - - - 0x01E9A4 07:E994: A5 CA     LDA ram_plr_game_over
C - - - - - 0x01E9A6 07:E996: D0 07     BNE bra_E99F
C - - - - - 0x01E9A8 07:E998: A5 A0     LDA ram_plr_status
C - - - - - 0x01E9AA 07:E99A: C9 08     CMP #con_plr_status_arrived
C - - - - - 0x01E9AC 07:E99C: F0 01     BEQ bra_E99F
C - - - - - 0x01E9AE 07:E99E: C8        INY ; 01
bra_E99F:
C - - - - - 0x01E9AF 07:E99F: A5 CB     LDA ram_plr_game_over + $01
C - - - - - 0x01E9B1 07:E9A1: D0 07     BNE bra_E9AA
C - - - - - 0x01E9B3 07:E9A3: A5 A1     LDA ram_plr_status + $01
C - - - - - 0x01E9B5 07:E9A5: C9 08     CMP #con_plr_status_arrived
C - - - - - 0x01E9B7 07:E9A7: F0 01     BEQ bra_E9AA
C - - - - - 0x01E9B9 07:E9A9: C8        INY ; 01/02
bra_E9AA:
C - - - - - 0x01E9BA 07:E9AA: 98        TYA
C - - - - - 0x01E9BB 07:E9AB: D0 04     BNE bra_E9B1_RTS
bra_E9AD:
C - - - - - 0x01E9BD 07:E9AD: A9 08     LDA #$08
C - - - - - 0x01E9BF 07:E9AF: D0 C3     BNE bra_E974    ; jmp
bra_E9B1_RTS:
C - - - - - 0x01E9C1 07:E9B1: 60        RTS



ofs_034_E9B2_03:
C - - J - - 0x01E9C2 07:E9B2: C6 3F     DEC ram_screen_timer
C - - - - - 0x01E9C4 07:E9B4: D0 FB     BNE bra_E9B1_RTS
C - - - - - 0x01E9C6 07:E9B6: A9 01     LDA #$01    ; frames before next blackout degree
C - - - - - 0x01E9C8 07:E9B8: 85 95     STA ram_blackout_timer
C - - - - - 0x01E9CA 07:E9BA: D0 BA     BNE bra_E976    ; jmp



ofs_034_E9BC_04_screen_blackout:
C - - J - - 0x01E9CC 07:E9BC: 20 9F FA  JSR sub_FA9F_calculate_blackout_palette
C - - - - - 0x01E9CF 07:E9BF: 08        PHP
C - - - - - 0x01E9D0 07:E9C0: 20 A9 F7  JSR sub_F7A9_write_palette_to_buffer_with_conditions
C - - - - - 0x01E9D3 07:E9C3: 28        PLP
C - - - - - 0x01E9D4 07:E9C4: 90 EB     BCC bra_E9B1_RTS    ; if not completely black yet
; if palette is already fully black
C - - - - - 0x01E9D6 07:E9C6: A9 30     LDA #$30
C - - - - - 0x01E9D8 07:E9C8: 85 3F     STA ram_screen_timer
C - - - - - 0x01E9DA 07:E9CA: D0 AA     BNE bra_E976    ; jmp



ofs_034_E9CC_05:
C - - J - - 0x01E9DC 07:E9CC: C6 3F     DEC ram_screen_timer
C - - - - - 0x01E9DE 07:E9CE: D0 E1     BNE bra_E9B1_RTS
C - - - - - 0x01E9E0 07:E9D0: 20 57 E5  JSR sub_E557_draw_empty_screen
C - - - - - 0x01E9E3 07:E9D3: E6 50     INC ram_area_index
C - - - - - 0x01E9E5 07:E9D5: A5 50     LDA ram_area_index
C - - - - - 0x01E9E7 07:E9D7: C9 08     CMP #$08
C - - - - - 0x01E9E9 07:E9D9: 90 17     BCC bra_E9F2_not_finished_yet
; if next loop
; C = 1
C - - - - - 0x01E9EB 07:E9DB: A9 00     LDA #$00
C - - - - - 0x01E9ED 07:E9DD: 85 50     STA ram_area_index
C - - - - - 0x01E9EF 07:E9DF: A5 51     LDA ram_game_loop
C - - - - - 0x01E9F1 07:E9E1: 69 00     ADC #$00
C - - - - - 0x01E9F3 07:E9E3: C9 02     CMP #$02
C - - - - - 0x01E9F5 07:E9E5: 90 02     BCC bra_E9E9_not_overflow
C - - - - - 0x01E9F7 07:E9E7: A9 01     LDA #$01
bra_E9E9_not_overflow:
C - - - - - 0x01E9F9 07:E9E9: 85 51     STA ram_game_loop
C - - - - - 0x01E9FB 07:E9EB: 20 C3 E5  JSR sub_E5C3_clear_memory
C - - - - - 0x01E9FE 07:E9EE: A9 08     LDA #$08
C - - - - - 0x01EA00 07:E9F0: D0 02     BNE bra_E9F4    ; jmp
bra_E9F2_not_finished_yet:
C - - - - - 0x01EA02 07:E9F2: A9 00     LDA #$00
bra_E9F4:
C - - - - - 0x01EA04 07:E9F4: 4C 01 E9  JMP loc_E901



ofs_033_E9F7_05_draw_game_over_screen:
C - - J - - 0x01EA07 07:E9F7: 20 8C FC  JSR sub_FC8C_increase_002B
C - - - - - 0x01EA0A 07:E9FA: 20 FE E5  JSR sub_E5FE_clear_0500_0567
C - - - - - 0x01EA0D 07:E9FD: 20 57 E5  JSR sub_E557_draw_empty_screen
C - - - - - 0x01EA10 07:EA00: A9 00     LDA #$00
C - - - - - 0x01EA12 07:EA02: 85 87     STA ram_game_over_flag
C - - - - - 0x01EA14 07:EA04: A9 09     LDA #con_0x0017EA_game_over
C - - - - - 0x01EA16 07:EA06: 20 7A FE  JSR sub_FE7A_print_text_on_the_screen
C - - - - - 0x01EA19 07:EA09: 20 31 E7  JSR sub_E731_print_lives_and_score
C - - - - - 0x01EA1C 07:EA0C: 20 C0 E7  JSR sub_E7C0_preset_chr_banks
C - - - - - 0x01EA1F 07:EA0F: A9 C0     LDA #$C0
loc_EA11:
C D 3 - - - 0x01EA21 07:EA11: 85 3F     STA ram_screen_timer
C - - - - - 0x01EA23 07:EA13: 4C B2 E8  JMP loc_E8B2_prepare_next_screen_handler



ofs_033_EA16_06_draw_continue_end_options:
C - - J - - 0x01EA26 07:EA16: C6 3F     DEC ram_screen_timer
C - - - - - 0x01EA28 07:EA18: D0 3F     BNE bra_EA59_RTS
C - - - - - 0x01EA2A 07:EA1A: C6 59     DEC ram_continues
C - - - - - 0x01EA2C 07:EA1C: 30 34     BMI bra_EA52    ; if no continues
C - - - - - 0x01EA2E 07:EA1E: A9 0A     LDA #con_0x0017EA_continue_end
C - - - - - 0x01EA30 07:EA20: 20 7A FE  JSR sub_FE7A_print_text_on_the_screen
C - - - - - 0x01EA33 07:EA23: A9 00     LDA #$00
C - - - - - 0x01EA35 07:EA25: 85 2C     STA ram_002C
C - - - - - 0x01EA37 07:EA27: 4C B2 E8  JMP loc_E8B2_prepare_next_screen_handler



ofs_033_EA2A_07_continue_end_options_handler:
C - - J - - 0x01EA3A 07:EA2A: A5 F1     LDA ram_btn_press
C - - - - - 0x01EA3C 07:EA2C: 29 2C     AND #con_btn_Select + con_btns_UD
C - - - - - 0x01EA3E 07:EA2E: F0 06     BEQ bra_EA36
C - - - - - 0x01EA40 07:EA30: A5 2C     LDA ram_002C
C - - - - - 0x01EA42 07:EA32: 49 01     EOR #$01
C - - - - - 0x01EA44 07:EA34: 85 2C     STA ram_002C
bra_EA36:
C - - - - - 0x01EA46 07:EA36: A4 2C     LDY ram_002C
C - - - - - 0x01EA48 07:EA38: B9 5A EA  LDA tbl_EA5A_cursor_pos_Y,Y
C - - - - - 0x01EA4B 07:EA3B: A0 50     LDY #$50    ; cursor pos_X
C - - - - - 0x01EA4D 07:EA3D: 20 5F E4  JSR sub_E45F_set_cursor_position
C - - - - - 0x01EA50 07:EA40: A5 F1     LDA ram_btn_press
C - - - - - 0x01EA52 07:EA42: 29 10     AND #con_btn_Start
C - - - - - 0x01EA54 07:EA44: F0 13     BEQ bra_EA59_RTS
C - - - - - 0x01EA56 07:EA46: A5 2C     LDA ram_002C
C - - - - - 0x01EA58 07:EA48: D0 08     BNE bra_EA52
C - - - - - 0x01EA5A 07:EA4A: 20 94 E5  JSR sub_E594_set_default_data_for_players
C - - - - - 0x01EA5D 07:EA4D: A9 00     LDA #$00
C - - - - - 0x01EA5F 07:EA4F: 4C 01 E9  JMP loc_E901
bra_EA52:
C - - - - - 0x01EA62 07:EA52: A9 00     LDA #$00
C - - - - - 0x01EA64 07:EA54: 85 F0     STA ram_demo_area
loc_EA56_set_next_handler:   ; bzk optimize
C D 3 - - - 0x01EA66 07:EA56: 4C 92 E4  JMP loc_E492_set_next_handler
bra_EA59_RTS:
C - - - - - 0x01EA69 07:EA59: 60        RTS



tbl_EA5A_cursor_pos_Y:
- D 3 - - - 0x01EA6A 07:EA5A: 90        .byte $90   ; 00 continue
- D 3 - - - 0x01EA6B 07:EA5B: A8        .byte $A8   ; 01 end



ofs_033_EA5C_08_credits:
C - - J - - 0x01EA6C 07:EA5C: A5 3E     LDA ram_003E_game_handler
C - - - - - 0x01EA6E 07:EA5E: D0 18     BNE bra_EA78
C - - - - - 0x01EA70 07:EA60: 20 57 E5  JSR sub_E557_draw_empty_screen
C - - - - - 0x01EA73 07:EA63: A2 04     LDX #$04    ; credits
C - - - - - 0x01EA75 07:EA65: 20 84 FE  JSR sub_FE84_draw_static_sreen
C - - - - - 0x01EA78 07:EA68: A9 0A     LDA #$0A
C - - - - - 0x01EA7A 07:EA6A: 20 70 FE  JSR sub_FE70_set_palette
C - - - - - 0x01EA7D 07:EA6D: 20 BE F7  JSR sub_F7BE_write_palette_to_buffer
C - - - - - 0x01EA80 07:EA70: A9 36     LDA #con_sound_36
C - - - - - 0x01EA82 07:EA72: 20 DE FD  JSR sub_FDDE_play_sound
C - - - - - 0x01EA85 07:EA75: 4C 76 E9  JMP loc_E976
bra_EA78:
C - - - - - 0x01EA88 07:EA78: 20 F7 FE  JSR sub_FEF7_credits_handler
C - - - - - 0x01EA8B 07:EA7B: A5 60     LDA ram_0060_game_handler
C - - - - - 0x01EA8D 07:EA7D: F0 DA     BEQ bra_EA59_RTS
C - - - - - 0x01EA8F 07:EA7F: A9 00     LDA #$00    ; con_weapon_default
C - - - - - 0x01EA91 07:EA81: 85 B8     STA ram_weapon
C - - - - - 0x01EA93 07:EA83: 85 B9     STA ram_weapon + $01
C - - - - - 0x01EA95 07:EA85: A9 00     LDA #$00
C - - - - - 0x01EA97 07:EA87: 4C 01 E9  JMP loc_E901



sub_EA8A:
C - - - - - 0x01EA9A 07:EA8A: A5 1F     LDA ram_001F_flag
C - - - - - 0x01EA9C 07:EA8C: 05 3A     ORA ram_003A
C - - - - - 0x01EA9E 07:EA8E: 05 1D     ORA ram_001D
C - - - - - 0x01EAA0 07:EA90: D0 1C     BNE bra_EAAE_RTS
C - - - - - 0x01EAA2 07:EA92: A5 F5     LDA ram_copy_btn_press
C - - - - - 0x01EAA4 07:EA94: A4 39     LDY ram_pause_flag
C - - - - - 0x01EAA6 07:EA96: D0 0E     BNE bra_EAA6_paused
; if not paused
C - - - - - 0x01EAA8 07:EA98: 29 10     AND #con_btn_Start
C - - - - - 0x01EAAA 07:EA9A: F0 12     BEQ bra_EAAE_RTS
C - - - - - 0x01EAAC 07:EA9C: A9 01     LDA #$01    ; pause ON
C - - - - - 0x01EAAE 07:EA9E: 85 39     STA ram_pause_flag
C - - - - - 0x01EAB0 07:EAA0: A9 27     LDA #con_sound_27
C - - - - - 0x01EAB2 07:EAA2: 4C DE FD  JMP loc_FDDE_play_sound


; bzk garbage
- - - - - - 0x01EAB5 07:EAA5: 60        RTS



bra_EAA6_paused:
C - - - - - 0x01EAB6 07:EAA6: 29 10     AND #con_btn_Start
C - - - - - 0x01EAB8 07:EAA8: F0 05     BEQ bra_EAAF_RTS
C - - - - - 0x01EABA 07:EAAA: A9 00     LDA #$00    ; pause OFF
C - - - - - 0x01EABC 07:EAAC: 85 39     STA ram_pause_flag
bra_EAAE_RTS:
C - - - - - 0x01EABE 07:EAAE: 60        RTS
bra_EAAF_RTS:   ; bzk optimize
C - - - - - 0x01EABF 07:EAAF: 60        RTS



sub_EAB0_prepare_chr_banks_for_area:
C - - - - - 0x01EAC0 07:EAB0: A5 50     LDA ram_area_index
C - - - - - 0x01EAC2 07:EAB2: 0A        ASL
C - - - - - 0x01EAC3 07:EAB3: 85 00     STA ram_0000
C - - - - - 0x01EAC5 07:EAB5: 0A        ASL
C - - - - - 0x01EAC6 07:EAB6: 65 00     ADC ram_0000
C - - - - - 0x01EAC8 07:EAB8: A8        TAY
C - - - - - 0x01EAC9 07:EAB9: A2 00     LDX #$00
bra_EABB_loop:
C - - - - - 0x01EACB 07:EABB: B9 C8 EA  LDA tbl_EAC8_chr_banks,Y
C - - - - - 0x01EACE 07:EABE: 9D F0 07  STA ram_chr_banks,X
C - - - - - 0x01EAD1 07:EAC1: C8        INY
C - - - - - 0x01EAD2 07:EAC2: E8        INX
C - - - - - 0x01EAD3 07:EAC3: E0 06     CPX #$06
C - - - - - 0x01EAD5 07:EAC5: D0 F4     BNE bra_EABB_loop
C - - - - - 0x01EAD7 07:EAC7: 60        RTS



tbl_EAC8_chr_banks:
; 00 area 1
- D 3 - - - 0x01EAD8 07:EAC8: 00        .byte con_chr_bank + $00   ; bg
- D 3 - - - 0x01EAD9 07:EAC9: 02        .byte con_chr_bank + $02   ; bg
- D 3 - - - 0x01EADA 07:EACA: 44        .byte con_chr_bank + $44   ; spr
- D 3 - - - 0x01EADB 07:EACB: 45        .byte con_chr_bank + $45   ; spr
- D 3 - - - 0x01EADC 07:EACC: 46        .byte con_chr_bank + $46   ; spr
- D 3 - - - 0x01EADD 07:EACD: 47        .byte con_chr_bank + $47   ; spr
; 01 area 2
- D 3 - - - 0x01EADE 07:EACE: 3C        .byte con_chr_bank + $3C   ; bg
- D 3 - - - 0x01EADF 07:EACF: 3E        .byte con_chr_bank + $3E   ; bg
- D 3 - - - 0x01EAE0 07:EAD0: 49        .byte con_chr_bank + $49   ; spr
- D 3 - - - 0x01EAE1 07:EAD1: 4A        .byte con_chr_bank + $4A   ; spr
- D 3 - - - 0x01EAE2 07:EAD2: 4B        .byte con_chr_bank + $4B   ; spr
- D 3 - - - 0x01EAE3 07:EAD3: 1A        .byte con_chr_bank + $1A   ; spr
; 02 area 3
- D 3 - - - 0x01EAE4 07:EAD4: 0C        .byte con_chr_bank + $0C   ; bg
- D 3 - - - 0x01EAE5 07:EAD5: 0E        .byte con_chr_bank + $0E   ; bg
- D 3 - - - 0x01EAE6 07:EAD6: 44        .byte con_chr_bank + $44   ; spr
- D 3 - - - 0x01EAE7 07:EAD7: 45        .byte con_chr_bank + $45   ; spr
- D 3 - - - 0x01EAE8 07:EAD8: 46        .byte con_chr_bank + $46   ; spr
- D 3 - - - 0x01EAE9 07:EAD9: 48        .byte con_chr_bank + $48   ; spr
; 03 area 4
- D 3 - - - 0x01EAEA 07:EADA: 08        .byte con_chr_bank + $08   ; bg
- D 3 - - - 0x01EAEB 07:EADB: 0A        .byte con_chr_bank + $0A   ; bg
- D 3 - - - 0x01EAEC 07:EADC: 44        .byte con_chr_bank + $44   ; spr
- D 3 - - - 0x01EAED 07:EADD: 45        .byte con_chr_bank + $45   ; spr
- D 3 - - - 0x01EAEE 07:EADE: 46        .byte con_chr_bank + $46   ; spr
- D 3 - - - 0x01EAEF 07:EADF: 47        .byte con_chr_bank + $47   ; spr
; 04 area 5
- D 3 - - - 0x01EAF0 07:EAE0: 1C        .byte con_chr_bank + $1C   ; bg
- D 3 - - - 0x01EAF1 07:EAE1: 1E        .byte con_chr_bank + $1E   ; bg
- D 3 - - - 0x01EAF2 07:EAE2: 44        .byte con_chr_bank + $44   ; spr
- D 3 - - - 0x01EAF3 07:EAE3: 45        .byte con_chr_bank + $45   ; spr
- D 3 - - - 0x01EAF4 07:EAE4: 46        .byte con_chr_bank + $46   ; spr
- D 3 - - - 0x01EAF5 07:EAE5: 60        .byte con_chr_bank + $60   ; spr
; 05 area 6
- D 3 - - - 0x01EAF6 07:EAE6: 4C        .byte con_chr_bank + $4C   ; bg
- D 3 - - - 0x01EAF7 07:EAE7: 4E        .byte con_chr_bank + $4E   ; bg
- D 3 - - - 0x01EAF8 07:EAE8: 49        .byte con_chr_bank + $49   ; spr
- D 3 - - - 0x01EAF9 07:EAE9: 4A        .byte con_chr_bank + $4A   ; spr
- D 3 - - - 0x01EAFA 07:EAEA: 61        .byte con_chr_bank + $61   ; spr
- D 3 - - - 0x01EAFB 07:EAEB: 62        .byte con_chr_bank + $62   ; spr
; 06 area 7
- D 3 - - - 0x01EAFC 07:EAEC: 24        .byte con_chr_bank + $24   ; bg
- D 3 - - - 0x01EAFD 07:EAED: 26        .byte con_chr_bank + $26   ; bg
- D 3 - - - 0x01EAFE 07:EAEE: 44        .byte con_chr_bank + $44   ; spr
- D 3 - - - 0x01EAFF 07:EAEF: 45        .byte con_chr_bank + $45   ; spr
- D 3 - - - 0x01EB00 07:EAF0: 63        .byte con_chr_bank + $63   ; spr
- D 3 - - - 0x01EB01 07:EAF1: 64        .byte con_chr_bank + $64   ; spr
; 07 area 8
- D 3 - - - 0x01EB02 07:EAF2: 34        .byte con_chr_bank + $34   ; bg
- D 3 - - - 0x01EB03 07:EAF3: 36        .byte con_chr_bank + $36   ; bg
- D 3 - - - 0x01EB04 07:EAF4: 44        .byte con_chr_bank + $44   ; spr
- D 3 - - - 0x01EB05 07:EAF5: 45        .byte con_chr_bank + $45   ; spr
- D 3 - - - 0x01EB06 07:EAF6: 67        .byte con_chr_bank + $67   ; spr
- D 3 - - - 0x01EB07 07:EAF7: 68        .byte con_chr_bank + $68   ; spr



loc_EAF8:
C D 3 - - - 0x01EB08 07:EAF8: 20 80 ED  JSR sub_ED80
C - - - - - 0x01EB0B 07:EAFB: A5 60     LDA ram_0060_game_handler
C - - - - - 0x01EB0D 07:EAFD: 20 09 E6  JSR sub_E609_jump_to_pointers_after_jsr
- D 3 - I - 0x01EB10 07:EB00: D6 EC     .word ofs_035_ECD6_00_RTS
- D 3 - I - 0x01EB12 07:EB02: 08 EB     .word ofs_035_EB08_01
- D 3 - I - 0x01EB14 07:EB04: 0B EB     .word ofs_035_EB0B_02
- D 3 - I - 0x01EB16 07:EB06: 58 EB     .word ofs_035_EB58_03



ofs_035_EB08_01:
C - - J - - 0x01EB18 07:EB08: E6 60     INC ram_0060_game_handler
C - - - - - 0x01EB1A 07:EB0A: 60        RTS



loc_EB0B:
ofs_035_EB0B_02:
C D 3 - - - 0x01EB1B 07:EB0B: E6 60     INC ram_0060_game_handler
C - - - - - 0x01EB1D 07:EB0D: A9 00     LDA #$00
C - - - - - 0x01EB1F 07:EB0F: 85 68     STA ram_0068
C - - - - - 0x01EB21 07:EB11: A9 07     LDA #$07
C - - - - - 0x01EB23 07:EB13: 85 6A     STA ram_006A
C - - - - - 0x01EB25 07:EB15: A5 74     LDA ram_0074_area_config
C - - - - - 0x01EB27 07:EB17: 85 6E     STA ram_006E
C - - - - - 0x01EB29 07:EB19: A5 73     LDA ram_0073
C - - - - - 0x01EB2B 07:EB1B: A4 77     LDY ram_0077
C - - - - - 0x01EB2D 07:EB1D: F0 0B     BEQ bra_EB2A
C - - - - - 0x01EB2F 07:EB1F: 18        CLC
C - - - - - 0x01EB30 07:EB20: 69 02     ADC #$02
C - - - - - 0x01EB32 07:EB22: C9 1E     CMP #$1E
C - - - - - 0x01EB34 07:EB24: 90 04     BCC bra_EB2A
C - - - - - 0x01EB36 07:EB26: E6 6E     INC ram_006E
C - - - - - 0x01EB38 07:EB28: A9 00     LDA #$00
bra_EB2A:
C - - - - - 0x01EB3A 07:EB2A: 85 00     STA ram_0000
C - - - - - 0x01EB3C 07:EB2C: 29 FC     AND #$FC
C - - - - - 0x01EB3E 07:EB2E: 0A        ASL
C - - - - - 0x01EB3F 07:EB2F: 85 6D     STA ram_006D
C - - - - - 0x01EB41 07:EB31: A0 00     LDY #$00
C - - - - - 0x01EB43 07:EB33: 84 01     STY ram_0001
C - - - - - 0x01EB45 07:EB35: A5 00     LDA ram_0000
C - - - - - 0x01EB47 07:EB37: 0A        ASL
C - - - - - 0x01EB48 07:EB38: 26 01     ROL ram_0001
C - - - - - 0x01EB4A 07:EB3A: 0A        ASL
C - - - - - 0x01EB4B 07:EB3B: 26 01     ROL ram_0001
C - - - - - 0x01EB4D 07:EB3D: 0A        ASL
C - - - - - 0x01EB4E 07:EB3E: 26 01     ROL ram_0001
C - - - - - 0x01EB50 07:EB40: 0A        ASL
C - - - - - 0x01EB51 07:EB41: 26 01     ROL ram_0001
C - - - - - 0x01EB53 07:EB43: 0A        ASL
C - - - - - 0x01EB54 07:EB44: 26 01     ROL ram_0001
C - - - - - 0x01EB56 07:EB46: 18        CLC
C - - - - - 0x01EB57 07:EB47: 65 64     ADC ram_0064
C - - - - - 0x01EB59 07:EB49: 85 66     STA ram_0066
C - - - - - 0x01EB5B 07:EB4B: A5 65     LDA ram_0065
C - - - - - 0x01EB5D 07:EB4D: 4A        LSR
C - - - - - 0x01EB5E 07:EB4E: A9 20     LDA #$20
C - - - - - 0x01EB60 07:EB50: 90 02     BCC bra_EB54
C - - - - - 0x01EB62 07:EB52: A9 2C     LDA #$2C
bra_EB54:
C - - - - - 0x01EB64 07:EB54: 05 01     ORA ram_0001
C - - - - - 0x01EB66 07:EB56: 85 67     STA ram_0067
loc_EB58:
ofs_035_EB58_03:
C D 3 - - - 0x01EB68 07:EB58: 20 60 EB  JSR sub_EB60
C - - - - - 0x01EB6B 07:EB5B: A5 60     LDA ram_0060_game_handler
C - - - - - 0x01EB6D 07:EB5D: D0 01     BNE bra_EB60
C - - - - - 0x01EB6F 07:EB5F: 60        RTS
bra_EB60:
sub_EB60:
C - - - - - 0x01EB70 07:EB60: A9 00     LDA #$00
C - - - - - 0x01EB72 07:EB62: A4 6E     LDY ram_006E
C - - - - - 0x01EB74 07:EB64: F0 06     BEQ bra_EB6C
bra_EB66_loop:
C - - - - - 0x01EB76 07:EB66: 18        CLC
C - - - - - 0x01EB77 07:EB67: 65 89     ADC ram_data_area_columns
C - - - - - 0x01EB79 07:EB69: 88        DEY
C - - - - - 0x01EB7A 07:EB6A: D0 FA     BNE bra_EB66_loop
bra_EB6C:
C - - - - - 0x01EB7C 07:EB6C: 18        CLC
C - - - - - 0x01EB7D 07:EB6D: 65 65     ADC ram_0065
C - - - - - 0x01EB7F 07:EB6F: A8        TAY
C - - - - - 0x01EB80 07:EB70: B1 30     LDA (ram_0030),Y
C - - - - - 0x01EB82 07:EB72: 0A        ASL
C - - - - - 0x01EB83 07:EB73: A8        TAY
C - - - - - 0x01EB84 07:EB74: B1 32     LDA (ram_0032),Y
C - - - - - 0x01EB86 07:EB76: 85 08     STA ram_0008
C - - - - - 0x01EB88 07:EB78: C8        INY
C - - - - - 0x01EB89 07:EB79: B1 32     LDA (ram_0032),Y
C - - - - - 0x01EB8B 07:EB7B: 85 09     STA ram_0009
C - - - - - 0x01EB8D 07:EB7D: A5 64     LDA ram_0064
C - - - - - 0x01EB8F 07:EB7F: 4A        LSR
C - - - - - 0x01EB90 07:EB80: 4A        LSR
C - - - - - 0x01EB91 07:EB81: 18        CLC
C - - - - - 0x01EB92 07:EB82: 65 6D     ADC ram_006D
C - - - - - 0x01EB94 07:EB84: A8        TAY
C - - - - - 0x01EB95 07:EB85: A9 00     LDA #$00
C - - - - - 0x01EB97 07:EB87: 85 0C     STA ram_000C
C - - - - - 0x01EB99 07:EB89: B1 08     LDA (ram_0008),Y
C - - - - - 0x01EB9B 07:EB8B: 85 0D     STA ram_000D
C - - - - - 0x01EB9D 07:EB8D: 0A        ASL
C - - - - - 0x01EB9E 07:EB8E: 26 0C     ROL ram_000C
C - - - - - 0x01EBA0 07:EB90: 0A        ASL
C - - - - - 0x01EBA1 07:EB91: 26 0C     ROL ram_000C
C - - - - - 0x01EBA3 07:EB93: 0A        ASL
C - - - - - 0x01EBA4 07:EB94: 26 0C     ROL ram_000C
C - - - - - 0x01EBA6 07:EB96: 0A        ASL
C - - - - - 0x01EBA7 07:EB97: 26 0C     ROL ram_000C
C - - - - - 0x01EBA9 07:EB99: 18        CLC
C - - - - - 0x01EBAA 07:EB9A: 65 34     ADC ram_0034
C - - - - - 0x01EBAC 07:EB9C: 85 08     STA ram_0008
C - - - - - 0x01EBAE 07:EB9E: A5 0C     LDA ram_000C
C - - - - - 0x01EBB0 07:EBA0: 65 35     ADC ram_0035
C - - - - - 0x01EBB2 07:EBA2: 85 09     STA ram_0009
C - - - - - 0x01EBB4 07:EBA4: A5 6D     LDA ram_006D
C - - - - - 0x01EBB6 07:EBA6: 18        CLC
C - - - - - 0x01EBB7 07:EBA7: 69 08     ADC #$08
C - - - - - 0x01EBB9 07:EBA9: C9 40     CMP #$40
C - - - - - 0x01EBBB 07:EBAB: 90 04     BCC bra_EBB1
C - - - - - 0x01EBBD 07:EBAD: E6 6E     INC ram_006E
C - - - - - 0x01EBBF 07:EBAF: A9 00     LDA #$00
bra_EBB1:
C - - - - - 0x01EBC1 07:EBB1: 85 6D     STA ram_006D
C - - - - - 0x01EBC3 07:EBB3: A9 00     LDA #$00
C - - - - - 0x01EBC5 07:EBB5: 85 69     STA ram_0069
C - - - - - 0x01EBC7 07:EBB7: A5 66     LDA ram_0066
C - - - - - 0x01EBC9 07:EBB9: 85 00     STA ram_0000
C - - - - - 0x01EBCB 07:EBBB: A5 67     LDA ram_0067
C - - - - - 0x01EBCD 07:EBBD: 85 01     STA ram_0001
C - - - - - 0x01EBCF 07:EBBF: 20 FA EC  JSR sub_ECFA
C - - - - - 0x01EBD2 07:EBC2: A9 00     LDA #$00
C - - - - - 0x01EBD4 07:EBC4: 85 0E     STA ram_000E
C - - - - - 0x01EBD6 07:EBC6: A2 80     LDX #$80
C - - - - - 0x01EBD8 07:EBC8: A0 02     LDY #$02
C - - - - - 0x01EBDA 07:EBCA: A5 68     LDA ram_0068
C - - - - - 0x01EBDC 07:EBCC: F0 04     BEQ bra_EBD2
C - - - - - 0x01EBDE 07:EBCE: A5 6A     LDA ram_006A
C - - - - - 0x01EBE0 07:EBD0: F0 20     BEQ bra_EBF2
bra_EBD2:
C - - - - - 0x01EBE2 07:EBD2: A5 67     LDA ram_0067
C - - - - - 0x01EBE4 07:EBD4: 29 03     AND #$03
C - - - - - 0x01EBE6 07:EBD6: C9 03     CMP #$03
C - - - - - 0x01EBE8 07:EBD8: 90 06     BCC bra_EBE0
C - - - - - 0x01EBEA 07:EBDA: A5 66     LDA ram_0066
C - - - - - 0x01EBEC 07:EBDC: C9 80     CMP #$80
C - - - - - 0x01EBEE 07:EBDE: B0 16     BCS bra_EBF6
bra_EBE0:
C - - - - - 0x01EBF0 07:EBE0: A0 04     LDY #$04
C - - - - - 0x01EBF2 07:EBE2: A5 66     LDA ram_0066
C - - - - - 0x01EBF4 07:EBE4: 29 7F     AND #$7F
C - - - - - 0x01EBF6 07:EBE6: C9 40     CMP #$40
C - - - - - 0x01EBF8 07:EBE8: 90 0C     BCC bra_EBF6
C - - - - - 0x01EBFA 07:EBEA: A9 08     LDA #$08
C - - - - - 0x01EBFC 07:EBEC: 85 0E     STA ram_000E
C - - - - - 0x01EBFE 07:EBEE: A0 02     LDY #$02
C - - - - - 0x01EC00 07:EBF0: E6 68     INC ram_0068
bra_EBF2:
C - - - - - 0x01EC02 07:EBF2: E6 69     INC ram_0069
C - - - - - 0x01EC04 07:EBF4: A2 40     LDX #$40
bra_EBF6:
C - - - - - 0x01EC06 07:EBF6: 84 07     STY ram_0007
C - - - - - 0x01EC08 07:EBF8: A5 67     LDA ram_0067
C - - - - - 0x01EC0A 07:EBFA: 29 FC     AND #$FC
C - - - - - 0x01EC0C 07:EBFC: 85 05     STA ram_0005
C - - - - - 0x01EC0E 07:EBFE: 8A        TXA
C - - - - - 0x01EC0F 07:EBFF: 18        CLC
C - - - - - 0x01EC10 07:EC00: 65 66     ADC ram_0066
C - - - - - 0x01EC12 07:EC02: 85 66     STA ram_0066
C - - - - - 0x01EC14 07:EC04: A5 67     LDA ram_0067
C - - - - - 0x01EC16 07:EC06: 69 00     ADC #$00
C - - - - - 0x01EC18 07:EC08: 29 03     AND #$03
C - - - - - 0x01EC1A 07:EC0A: 05 05     ORA ram_0005
C - - - - - 0x01EC1C 07:EC0C: 85 67     STA ram_0067
C - - - - - 0x01EC1E 07:EC0E: A6 1E     LDX ram_index_ppu_buffer
C - - - - - 0x01EC20 07:EC10: A9 06     LDA #con_buf_mode_06
C - - - - - 0x01EC22 07:EC12: 9D 00 03  STA ram_nmt_buffer,X
C - - - - - 0x01EC25 07:EC15: E8        INX
bra_EC16_loop:
C - - - - - 0x01EC26 07:EC16: 20 D7 EC  JSR sub_ECD7
C - - - - - 0x01EC29 07:EC19: 20 30 ED  JSR sub_ED30
C - - - - - 0x01EC2C 07:EC1C: A9 00     LDA #$00
C - - - - - 0x01EC2E 07:EC1E: 85 0F     STA ram_000F
bra_EC20_loop:
C - - - - - 0x01EC30 07:EC20: A4 0E     LDY ram_000E
C - - - - - 0x01EC32 07:EC22: B1 08     LDA (ram_0008),Y
C - - - - - 0x01EC34 07:EC24: 9D 00 03  STA ram_nmt_buffer,X
C - - - - - 0x01EC37 07:EC27: C8        INY
C - - - - - 0x01EC38 07:EC28: E8        INX
C - - - - - 0x01EC39 07:EC29: 84 0E     STY ram_000E
C - - - - - 0x01EC3B 07:EC2B: 85 0C     STA ram_000C
C - - - - - 0x01EC3D 07:EC2D: A5 07     LDA ram_0007
C - - - - - 0x01EC3F 07:EC2F: 05 06     ORA ram_0006
C - - - - - 0x01EC41 07:EC31: 4A        LSR
C - - - - - 0x01EC42 07:EC32: B0 09     BCS bra_EC3D
C - - - - - 0x01EC44 07:EC34: A5 0C     LDA ram_000C
C - - - - - 0x01EC46 07:EC36: 20 55 ED  JSR sub_ED55
C - - - - - 0x01EC49 07:EC39: 05 0F     ORA ram_000F
C - - - - - 0x01EC4B 07:EC3B: 85 0F     STA ram_000F
bra_EC3D:
C - - - - - 0x01EC4D 07:EC3D: C6 06     DEC ram_0006
C - - - - - 0x01EC4F 07:EC3F: D0 DF     BNE bra_EC20_loop
C - - - - - 0x01EC51 07:EC41: A5 07     LDA ram_0007
C - - - - - 0x01EC53 07:EC43: 4A        LSR
C - - - - - 0x01EC54 07:EC44: B0 07     BCS bra_EC4D
C - - - - - 0x01EC56 07:EC46: A5 0F     LDA ram_000F
C - - - - - 0x01EC58 07:EC48: A4 14     LDY ram_0014
C - - - - - 0x01EC5A 07:EC4A: 99 00 04  STA ram_0400_area_data_1,Y
bra_EC4D:
C - - - - - 0x01EC5D 07:EC4D: 20 EC EC  JSR sub_ECEC
C - - - - - 0x01EC60 07:EC50: D0 C4     BNE bra_EC16_loop
C - - - - - 0x01EC62 07:EC52: 20 1D ED  JSR sub_ED1D
C - - - - - 0x01EC65 07:EC55: A4 0D     LDY ram_000D
C - - - - - 0x01EC67 07:EC57: B1 36     LDA (ram_0036),Y
C - - - - - 0x01EC69 07:EC59: 9D 00 03  STA ram_nmt_buffer,X
C - - - - - 0x01EC6C 07:EC5C: E8        INX
C - - - - - 0x01EC6D 07:EC5D: A5 69     LDA ram_0069
C - - - - - 0x01EC6F 07:EC5F: F0 4B     BEQ bra_ECAC
C - - - - - 0x01EC71 07:EC61: A5 6A     LDA ram_006A
C - - - - - 0x01EC73 07:EC63: F0 22     BEQ bra_EC87
C - - - - - 0x01EC75 07:EC65: BD FF 02  LDA ram_nmt_buffer - $01,X
C - - - - - 0x01EC78 07:EC68: 29 F0     AND #$F0
C - - - - - 0x01EC7A 07:EC6A: 8D C8 03  STA ram_03C8
C - - - - - 0x01EC7D 07:EC6D: A0 03     LDY #$03
bra_EC6F_loop:
C - - - - - 0x01EC7F 07:EC6F: BD FB 02  LDA ram_nmt_buffer - $05,X
C - - - - - 0x01EC82 07:EC72: 99 C4 03  STA ram_03C0 + $04,Y
C - - - - - 0x01EC85 07:EC75: CA        DEX
C - - - - - 0x01EC86 07:EC76: 88        DEY
C - - - - - 0x01EC87 07:EC77: 10 F6     BPL bra_EC6F_loop
C - - - - - 0x01EC89 07:EC79: A0 03     LDY #$03
bra_EC7B_loop:
C - - - - - 0x01EC8B 07:EC7B: BD F8 02  LDA ram_nmt_buffer - $08,X
C - - - - - 0x01EC8E 07:EC7E: 99 C0 03  STA ram_03C0,Y
C - - - - - 0x01EC91 07:EC81: CA        DEX
C - - - - - 0x01EC92 07:EC82: 88        DEY
C - - - - - 0x01EC93 07:EC83: 10 F6     BPL bra_EC7B_loop
C - - - - - 0x01EC95 07:EC85: 30 4F     BMI bra_ECD6_RTS    ; jmp
bra_EC87:
C - - - - - 0x01EC97 07:EC87: BD FF 02  LDA ram_nmt_buffer - $01,X
C - - - - - 0x01EC9A 07:EC8A: 29 0F     AND #$0F
C - - - - - 0x01EC9C 07:EC8C: 0D C8 03  ORA ram_03C8
C - - - - - 0x01EC9F 07:EC8F: 9D FF 02  STA ram_nmt_buffer - $01,X
C - - - - - 0x01ECA2 07:EC92: A9 02     LDA #$02
C - - - - - 0x01ECA4 07:EC94: 85 07     STA ram_0007
C - - - - - 0x01ECA6 07:EC96: A0 00     LDY #$00
bra_EC98_loop:
C - - - - - 0x01ECA8 07:EC98: 20 D7 EC  JSR sub_ECD7
bra_EC9B_loop:
C - - - - - 0x01ECAB 07:EC9B: B9 C0 03  LDA ram_03C0,Y
C - - - - - 0x01ECAE 07:EC9E: 9D 00 03  STA ram_nmt_buffer,X
C - - - - - 0x01ECB1 07:ECA1: C8        INY
C - - - - - 0x01ECB2 07:ECA2: E8        INX
C - - - - - 0x01ECB3 07:ECA3: C6 06     DEC ram_0006
C - - - - - 0x01ECB5 07:ECA5: D0 F4     BNE bra_EC9B_loop
C - - - - - 0x01ECB7 07:ECA7: 20 EC EC  JSR sub_ECEC
C - - - - - 0x01ECBA 07:ECAA: D0 EC     BNE bra_EC98_loop
bra_ECAC:
; close buffer
C - - - - - 0x01ECBC 07:ECAC: A9 FF     LDA #$FF
C - - - - - 0x01ECBE 07:ECAE: 9D 00 03  STA ram_nmt_buffer,X
C - - - - - 0x01ECC1 07:ECB1: E8        INX
C - - - - - 0x01ECC2 07:ECB2: 86 1E     STX ram_index_ppu_buffer
C - - - - - 0x01ECC4 07:ECB4: C6 6A     DEC ram_006A
C - - - - - 0x01ECC6 07:ECB6: 10 1E     BPL bra_ECD6_RTS
C - - - - - 0x01ECC8 07:ECB8: A5 64     LDA ram_0064
C - - - - - 0x01ECCA 07:ECBA: 18        CLC
C - - - - - 0x01ECCB 07:ECBB: 69 04     ADC #$04
C - - - - - 0x01ECCD 07:ECBD: C9 20     CMP #$20
C - - - - - 0x01ECCF 07:ECBF: 90 04     BCC bra_ECC5
C - - - - - 0x01ECD1 07:ECC1: E6 65     INC ram_0065
C - - - - - 0x01ECD3 07:ECC3: A9 00     LDA #$00
bra_ECC5:
C - - - - - 0x01ECD5 07:ECC5: 85 64     STA ram_0064
C - - - - - 0x01ECD7 07:ECC7: A9 00     LDA #$00
C - - - - - 0x01ECD9 07:ECC9: 85 60     STA ram_0060_game_handler
C - - - - - 0x01ECDB 07:ECCB: A5 6B     LDA ram_006B
C - - - - - 0x01ECDD 07:ECCD: 18        CLC
C - - - - - 0x01ECDE 07:ECCE: 69 20     ADC #$20
C - - - - - 0x01ECE0 07:ECD0: 85 6B     STA ram_006B
C - - - - - 0x01ECE2 07:ECD2: 90 02     BCC bra_ECD6_RTS
C - - - - - 0x01ECE4 07:ECD4: E6 6C     INC ram_006C
bra_ECD6_RTS:
ofs_035_ECD6_00_RTS:
C - - - - - 0x01ECE6 07:ECD6: 60        RTS



sub_ECD7:
C - - - - - 0x01ECE7 07:ECD7: A5 01     LDA ram_0001    ; ppu hi
C - - - - - 0x01ECE9 07:ECD9: 9D 00 03  STA ram_nmt_buffer,X
C - - - - - 0x01ECEC 07:ECDC: E8        INX
C - - - - - 0x01ECED 07:ECDD: A5 00     LDA ram_0000    ; ppu lo
C - - - - - 0x01ECEF 07:ECDF: 9D 00 03  STA ram_nmt_buffer,X
C - - - - - 0x01ECF2 07:ECE2: E8        INX
C - - - - - 0x01ECF3 07:ECE3: A9 04     LDA #$04    ; counter
C - - - - - 0x01ECF5 07:ECE5: 9D 00 03  STA ram_nmt_buffer,X
C - - - - - 0x01ECF8 07:ECE8: 85 06     STA ram_0006
C - - - - - 0x01ECFA 07:ECEA: E8        INX
C - - - - - 0x01ECFB 07:ECEB: 60        RTS



sub_ECEC:
C - - - - - 0x01ECFC 07:ECEC: A5 00     LDA ram_0000
C - - - - - 0x01ECFE 07:ECEE: 18        CLC
C - - - - - 0x01ECFF 07:ECEF: 69 20     ADC #$20
C - - - - - 0x01ED01 07:ECF1: 85 00     STA ram_0000
C - - - - - 0x01ED03 07:ECF3: 90 02     BCC bra_ECF7_not_overflow
C - - - - - 0x01ED05 07:ECF5: E6 01     INC ram_0001
bra_ECF7_not_overflow:
C - - - - - 0x01ED07 07:ECF7: C6 07     DEC ram_0007
C - - - - - 0x01ED09 07:ECF9: 60        RTS



sub_ECFA:
C - - - - - 0x01ED0A 07:ECFA: A5 01     LDA ram_0001
C - - - - - 0x01ED0C 07:ECFC: 29 03     AND #$03
C - - - - - 0x01ED0E 07:ECFE: 85 12     STA ram_0012
C - - - - - 0x01ED10 07:ED00: A5 00     LDA ram_0000
C - - - - - 0x01ED12 07:ED02: 0A        ASL
C - - - - - 0x01ED13 07:ED03: 26 12     ROL ram_0012
C - - - - - 0x01ED15 07:ED05: 0A        ASL
C - - - - - 0x01ED16 07:ED06: 0A        ASL
C - - - - - 0x01ED17 07:ED07: 0A        ASL
C - - - - - 0x01ED18 07:ED08: 26 12     ROL ram_0012
C - - - - - 0x01ED1A 07:ED0A: 0A        ASL
C - - - - - 0x01ED1B 07:ED0B: 26 12     ROL ram_0012
C - - - - - 0x01ED1D 07:ED0D: 0A        ASL
C - - - - - 0x01ED1E 07:ED0E: 26 12     ROL ram_0012
C - - - - - 0x01ED20 07:ED10: A5 01     LDA ram_0001
C - - - - - 0x01ED22 07:ED12: 09 03     ORA #$03
C - - - - - 0x01ED24 07:ED14: 85 13     STA ram_0013
C - - - - - 0x01ED26 07:ED16: A5 12     LDA ram_0012
C - - - - - 0x01ED28 07:ED18: 09 C0     ORA #$C0
C - - - - - 0x01ED2A 07:ED1A: 85 12     STA ram_0012
C - - - - - 0x01ED2C 07:ED1C: 60        RTS



sub_ED1D:
C - - - - - 0x01ED2D 07:ED1D: A5 13     LDA ram_0013    ; ppu hi
C - - - - - 0x01ED2F 07:ED1F: 9D 00 03  STA ram_nmt_buffer,X
C - - - - - 0x01ED32 07:ED22: E8        INX
C - - - - - 0x01ED33 07:ED23: A5 12     LDA ram_0012    ; ppu lo
C - - - - - 0x01ED35 07:ED25: 9D 00 03  STA ram_nmt_buffer,X
C - - - - - 0x01ED38 07:ED28: E8        INX
C - - - - - 0x01ED39 07:ED29: A9 01     LDA #$01    ; counter
C - - - - - 0x01ED3B 07:ED2B: 9D 00 03  STA ram_nmt_buffer,X
C - - - - - 0x01ED3E 07:ED2E: E8        INX
C - - - - - 0x01ED3F 07:ED2F: 60        RTS



sub_ED30:
C - - - - - 0x01ED40 07:ED30: A9 00     LDA #$00
C - - - - - 0x01ED42 07:ED32: 85 15     STA ram_0015
C - - - - - 0x01ED44 07:ED34: A5 01     LDA ram_0001
C - - - - - 0x01ED46 07:ED36: 85 14     STA ram_0014
C - - - - - 0x01ED48 07:ED38: A5 00     LDA ram_0000
C - - - - - 0x01ED4A 07:ED3A: 0A        ASL
C - - - - - 0x01ED4B 07:ED3B: 26 14     ROL ram_0014
C - - - - - 0x01ED4D 07:ED3D: 0A        ASL
C - - - - - 0x01ED4E 07:ED3E: 26 14     ROL ram_0014
C - - - - - 0x01ED50 07:ED40: 0A        ASL
C - - - - - 0x01ED51 07:ED41: 46 14     LSR ram_0014
C - - - - - 0x01ED53 07:ED43: 6A        ROR
C - - - - - 0x01ED54 07:ED44: 46 14     LSR ram_0014
C - - - - - 0x01ED56 07:ED46: 6A        ROR
C - - - - - 0x01ED57 07:ED47: 46 14     LSR ram_0014
C - - - - - 0x01ED59 07:ED49: 6A        ROR
C - - - - - 0x01ED5A 07:ED4A: 46 14     LSR ram_0014
C - - - - - 0x01ED5C 07:ED4C: 6A        ROR
C - - - - - 0x01ED5D 07:ED4D: 46 14     LSR ram_0014
C - - - - - 0x01ED5F 07:ED4F: 6A        ROR
C - - - - - 0x01ED60 07:ED50: 66 15     ROR ram_0015
C - - - - - 0x01ED62 07:ED52: 85 14     STA ram_0014
C - - - - - 0x01ED64 07:ED54: 60        RTS



sub_ED55:
C - - - - - 0x01ED65 07:ED55: A0 00     LDY #$00
C - - - - - 0x01ED67 07:ED57: C9 FF     CMP #$FF
C - - - - - 0x01ED69 07:ED59: F0 08     BEQ bra_ED63
bra_ED5B_loop:
C - - - - - 0x01ED6B 07:ED5B: D9 D0 03  CMP ram_03D0,Y
C - - - - - 0x01ED6E 07:ED5E: 90 03     BCC bra_ED63
C - - - - - 0x01ED70 07:ED60: C8        INY
C - - - - - 0x01ED71 07:ED61: B0 F8     BCS bra_ED5B_loop    ; jmp
bra_ED63:
C - - - - - 0x01ED73 07:ED63: A5 06     LDA ram_0006
C - - - - - 0x01ED75 07:ED65: E9 00     SBC #$00
C - - - - - 0x01ED77 07:ED67: 4A        LSR
C - - - - - 0x01ED78 07:ED68: 4A        LSR
C - - - - - 0x01ED79 07:ED69: 98        TYA
C - - - - - 0x01ED7A 07:ED6A: 90 03     BCC bra_ED6F_RTS
C - - - - - 0x01ED7C 07:ED6C: B9 70 ED  LDA tbl_ED70,Y
bra_ED6F_RTS:
C - - - - - 0x01ED7F 07:ED6F: 60        RTS


; ???
tbl_ED70:
- D 3 - - - 0x01ED80 07:ED70: 00        .byte $00   ; 
- D 3 - - - 0x01ED81 07:ED71: 10        .byte $10   ; 
- D 3 - - - 0x01ED82 07:ED72: 20        .byte $20   ; 
- D 3 - - - 0x01ED83 07:ED73: 30        .byte $30   ; 
- D 3 - - - 0x01ED84 07:ED74: 40        .byte $40   ; 
- - - - - - 0x01ED85 07:ED75: 50        .byte $50   ; 
- D 3 - - - 0x01ED86 07:ED76: 60        .byte $60   ; 
- D 3 - - - 0x01ED87 07:ED77: 70        .byte $70   ; 
- D 3 - - - 0x01ED88 07:ED78: 80        .byte $80   ; 
- - - - - - 0x01ED89 07:ED79: 90        .byte $90   ; 
- D 3 - - - 0x01ED8A 07:ED7A: A0        .byte $A0   ; 
- D 3 - - - 0x01ED8B 07:ED7B: B0        .byte $B0   ; 
- - - - - - 0x01ED8C 07:ED7C: C0        .byte $C0   ; 
- - - - - - 0x01ED8D 07:ED7D: D0        .byte $D0   ; 
- - - - - - 0x01ED8E 07:ED7E: E0        .byte $E0   ; 
- - - - - - 0x01ED8F 07:ED7F: F0        .byte $F0   ; 



sub_ED80:
C - - - - - 0x01ED90 07:ED80: A5 70     LDA ram_0070_game_handler
C - - - - - 0x01ED92 07:ED82: 20 09 E6  JSR sub_E609_jump_to_pointers_after_jsr
- D 3 - I - 0x01ED95 07:ED85: 3D EE     .word ofs_036_EE3D_00_RTS
- D 3 - I - 0x01ED97 07:ED87: 8C ED     .word ofs_036_ED8C_01
- D 3 - I - 0x01ED99 07:ED89: C7 ED     .word ofs_036_EDC7_02


; bzk garbage
- - - - - - 0x01ED9B 07:ED8B: 60        RTS



ofs_036_ED8C_01:
C - - J - - 0x01ED9C 07:ED8C: 20 92 ED  JSR sub_ED92
C - - - - - 0x01ED9F 07:ED8F: 4C 62 EF  JMP loc_EF62



sub_ED92:
C - - - - - 0x01EDA2 07:ED92: E6 70     INC ram_0070_game_handler
C - - - - - 0x01EDA4 07:ED94: A5 FD     LDA ram_scroll_X
C - - - - - 0x01EDA6 07:ED96: 85 78     STA ram_0078
C - - - - - 0x01EDA8 07:ED98: A5 FF     LDA ram_for_2000
C - - - - - 0x01EDAA 07:ED9A: 85 83     STA ram_0083
C - - - - - 0x01EDAC 07:ED9C: A5 60     LDA ram_0060_game_handler
C - - - - - 0x01EDAE 07:ED9E: F0 04     BEQ bra_EDA4
C - - - - - 0x01EDB0 07:EDA0: A9 01     LDA #$01
C - - - - - 0x01EDB2 07:EDA2: 85 60     STA ram_0060_game_handler
bra_EDA4:
C - - - - - 0x01EDB4 07:EDA4: A5 73     LDA ram_0073
C - - - - - 0x01EDB6 07:EDA6: 20 3E EE  JSR sub_EE3E
C - - - - - 0x01EDB9 07:EDA9: A4 74     LDY ram_0074_area_config
C - - - - - 0x01EDBB 07:EDAB: A5 77     LDA ram_0077
C - - - - - 0x01EDBD 07:EDAD: F0 01     BEQ bra_EDB0
C - - - - - 0x01EDBF 07:EDAF: C8        INY
bra_EDB0:
C - - - - - 0x01EDC0 07:EDB0: 84 11     STY ram_0011
C - - - - - 0x01EDC2 07:EDB2: A9 00     LDA #$00
C - - - - - 0x01EDC4 07:EDB4: A4 11     LDY ram_0011
C - - - - - 0x01EDC6 07:EDB6: F0 06     BEQ bra_EDBE
bra_EDB8_loop:
C - - - - - 0x01EDC8 07:EDB8: 18        CLC
C - - - - - 0x01EDC9 07:EDB9: 65 89     ADC ram_data_area_columns
C - - - - - 0x01EDCB 07:EDBB: 88        DEY
C - - - - - 0x01EDCC 07:EDBC: D0 FA     BNE bra_EDB8_loop
bra_EDBE:
C - - - - - 0x01EDCE 07:EDBE: 18        CLC
C - - - - - 0x01EDCF 07:EDBF: 65 63     ADC ram_0063
C - - - - - 0x01EDD1 07:EDC1: 85 79     STA ram_0079
C - - - - - 0x01EDD3 07:EDC3: A0 00     LDY #$00
C - - - - - 0x01EDD5 07:EDC5: F0 0E     BEQ bra_EDD5    ; jmp



ofs_036_EDC7_02:
C - - J - - 0x01EDD7 07:EDC7: A9 00     LDA #$00
C - - - - - 0x01EDD9 07:EDC9: 85 70     STA ram_0070_game_handler
C - - - - - 0x01EDDB 07:EDCB: A5 73     LDA ram_0073
C - - - - - 0x01EDDD 07:EDCD: 18        CLC
C - - - - - 0x01EDDE 07:EDCE: 69 01     ADC #$01
C - - - - - 0x01EDE0 07:EDD0: 20 3E EE  JSR sub_EE3E
C - - - - - 0x01EDE3 07:EDD3: A0 04     LDY #$04
bra_EDD5:
C - - - - - 0x01EDE5 07:EDD5: 84 10     STY ram_0010
C - - - - - 0x01EDE7 07:EDD7: A5 73     LDA ram_0073
C - - - - - 0x01EDE9 07:EDD9: 29 03     AND #$03
C - - - - - 0x01EDEB 07:EDDB: F0 06     BEQ bra_EDE3
C - - - - - 0x01EDED 07:EDDD: 98        TYA
C - - - - - 0x01EDEE 07:EDDE: 18        CLC
C - - - - - 0x01EDEF 07:EDDF: 69 08     ADC #$08
C - - - - - 0x01EDF1 07:EDE1: 85 10     STA ram_0010
bra_EDE3:
C - - - - - 0x01EDF3 07:EDE3: 20 30 ED  JSR sub_ED30
C - - - - - 0x01EDF6 07:EDE6: A5 79     LDA ram_0079
C - - - - - 0x01EDF8 07:EDE8: 85 11     STA ram_0011
C - - - - - 0x01EDFA 07:EDEA: A4 02     LDY ram_0002
C - - - - - 0x01EDFC 07:EDEC: A6 1E     LDX ram_index_ppu_buffer
C - - - - - 0x01EDFE 07:EDEE: A9 06     LDA #con_buf_mode_06
C - - - - - 0x01EE00 07:EDF0: 9D 00 03  STA ram_nmt_buffer,X
C - - - - - 0x01EE03 07:EDF3: E8        INX
C - - - - - 0x01EE04 07:EDF4: A5 78     LDA ram_0078
C - - - - - 0x01EE06 07:EDF6: 20 97 EE  JSR sub_EE97
C - - - - - 0x01EE09 07:EDF9: A9 00     LDA #$00
C - - - - - 0x01EE0B 07:EDFB: 85 15     STA ram_0015
C - - - - - 0x01EE0D 07:EDFD: A5 14     LDA ram_0014
C - - - - - 0x01EE0F 07:EDFF: 29 F8     AND #$F8
C - - - - - 0x01EE11 07:EE01: 49 80     EOR #$80
C - - - - - 0x01EE13 07:EE03: 85 14     STA ram_0014
C - - - - - 0x01EE15 07:EE05: E6 11     INC ram_0011
C - - - - - 0x01EE17 07:EE07: A4 03     LDY ram_0003
C - - - - - 0x01EE19 07:EE09: F0 32     BEQ bra_EE3D_RTS
C - - - - - 0x01EE1B 07:EE0B: A5 00     LDA ram_0000
C - - - - - 0x01EE1D 07:EE0D: 29 E0     AND #$E0
C - - - - - 0x01EE1F 07:EE0F: 85 00     STA ram_0000
C - - - - - 0x01EE21 07:EE11: A5 01     LDA ram_0001
C - - - - - 0x01EE23 07:EE13: 49 04     EOR #$04
C - - - - - 0x01EE25 07:EE15: 85 01     STA ram_0001
C - - - - - 0x01EE27 07:EE17: CA        DEX
C - - - - - 0x01EE28 07:EE18: 20 95 EE  JSR sub_EE95
C - - - - - 0x01EE2B 07:EE1B: A9 00     LDA #$00
C - - - - - 0x01EE2D 07:EE1D: 85 15     STA ram_0015
C - - - - - 0x01EE2F 07:EE1F: A5 14     LDA ram_0014
C - - - - - 0x01EE31 07:EE21: 29 F8     AND #$F8
C - - - - - 0x01EE33 07:EE23: 49 80     EOR #$80
C - - - - - 0x01EE35 07:EE25: 85 14     STA ram_0014
C - - - - - 0x01EE37 07:EE27: E6 11     INC ram_0011
C - - - - - 0x01EE39 07:EE29: A4 04     LDY ram_0004
C - - - - - 0x01EE3B 07:EE2B: F0 10     BEQ bra_EE3D_RTS
C - - - - - 0x01EE3D 07:EE2D: A5 00     LDA ram_0000
C - - - - - 0x01EE3F 07:EE2F: 29 E0     AND #$E0
C - - - - - 0x01EE41 07:EE31: 85 00     STA ram_0000
C - - - - - 0x01EE43 07:EE33: A5 01     LDA ram_0001
C - - - - - 0x01EE45 07:EE35: 49 04     EOR #$04
C - - - - - 0x01EE47 07:EE37: 85 01     STA ram_0001
C - - - - - 0x01EE49 07:EE39: CA        DEX
C - - - - - 0x01EE4A 07:EE3A: 20 95 EE  JSR sub_EE95
bra_EE3D_RTS:
ofs_036_EE3D_00_RTS:
C - - J - - 0x01EE4D 07:EE3D: 60        RTS



sub_EE3E:
C - - - - - 0x01EE4E 07:EE3E: 85 00     STA ram_0000
C - - - - - 0x01EE50 07:EE40: A5 61     LDA ram_0061_area_config
C - - - - - 0x01EE52 07:EE42: 4A        LSR
C - - - - - 0x01EE53 07:EE43: A9 08     LDA #$08
C - - - - - 0x01EE55 07:EE45: 90 02     BCC bra_EE49
C - - - - - 0x01EE57 07:EE47: A9 00     LDA #$00
bra_EE49:
C - - - - - 0x01EE59 07:EE49: 85 04     STA ram_0004
C - - - - - 0x01EE5B 07:EE4B: A5 83     LDA ram_0083
C - - - - - 0x01EE5D 07:EE4D: 4A        LSR
C - - - - - 0x01EE5E 07:EE4E: A9 20     LDA #$20
C - - - - - 0x01EE60 07:EE50: 90 02     BCC bra_EE54
C - - - - - 0x01EE62 07:EE52: A9 2C     LDA #$2C
bra_EE54:
C - - - - - 0x01EE64 07:EE54: 85 01     STA ram_0001
C - - - - - 0x01EE66 07:EE56: A9 00     LDA #$00
C - - - - - 0x01EE68 07:EE58: 06 00     ASL ram_0000
C - - - - - 0x01EE6A 07:EE5A: 2A        ROL
C - - - - - 0x01EE6B 07:EE5B: 06 00     ASL ram_0000
C - - - - - 0x01EE6D 07:EE5D: 2A        ROL
C - - - - - 0x01EE6E 07:EE5E: 06 00     ASL ram_0000
C - - - - - 0x01EE70 07:EE60: 2A        ROL
C - - - - - 0x01EE71 07:EE61: 06 00     ASL ram_0000
C - - - - - 0x01EE73 07:EE63: 2A        ROL
C - - - - - 0x01EE74 07:EE64: 06 00     ASL ram_0000
C - - - - - 0x01EE76 07:EE66: 2A        ROL
C - - - - - 0x01EE77 07:EE67: 05 01     ORA ram_0001
C - - - - - 0x01EE79 07:EE69: 85 01     STA ram_0001
C - - - - - 0x01EE7B 07:EE6B: A5 78     LDA ram_0078
C - - - - - 0x01EE7D 07:EE6D: 4A        LSR
C - - - - - 0x01EE7E 07:EE6E: 4A        LSR
C - - - - - 0x01EE7F 07:EE6F: 4A        LSR
C - - - - - 0x01EE80 07:EE70: 85 03     STA ram_0003
C - - - - - 0x01EE82 07:EE72: A9 20     LDA #$20
C - - - - - 0x01EE84 07:EE74: 38        SEC
C - - - - - 0x01EE85 07:EE75: E5 03     SBC ram_0003
C - - - - - 0x01EE87 07:EE77: 85 02     STA ram_0002
C - - - - - 0x01EE89 07:EE79: A5 00     LDA ram_0000
C - - - - - 0x01EE8B 07:EE7B: 18        CLC
C - - - - - 0x01EE8C 07:EE7C: 65 03     ADC ram_0003
C - - - - - 0x01EE8E 07:EE7E: 85 00     STA ram_0000
C - - - - - 0x01EE90 07:EE80: A0 00     LDY #$00
C - - - - - 0x01EE92 07:EE82: A5 03     LDA ram_0003
C - - - - - 0x01EE94 07:EE84: 18        CLC
C - - - - - 0x01EE95 07:EE85: 65 04     ADC ram_0004
C - - - - - 0x01EE97 07:EE87: C9 20     CMP #$20
C - - - - - 0x01EE99 07:EE89: 90 05     BCC bra_EE90
C - - - - - 0x01EE9B 07:EE8B: E9 20     SBC #$20
C - - - - - 0x01EE9D 07:EE8D: A8        TAY
C - - - - - 0x01EE9E 07:EE8E: A9 20     LDA #$20
bra_EE90:
C - - - - - 0x01EEA0 07:EE90: 85 03     STA ram_0003
C - - - - - 0x01EEA2 07:EE92: 84 04     STY ram_0004
C - - - - - 0x01EEA4 07:EE94: 60        RTS



sub_EE95:
C - - - - - 0x01EEA5 07:EE95: A9 00     LDA #$00
sub_EE97:
C - - - - - 0x01EEA7 07:EE97: 85 17     STA ram_0017
C - - - - - 0x01EEA9 07:EE99: A5 01     LDA ram_0001    ; ppu hi
C - - - - - 0x01EEAB 07:EE9B: 9D 00 03  STA ram_nmt_buffer,X
C - - - - - 0x01EEAE 07:EE9E: E8        INX
C - - - - - 0x01EEAF 07:EE9F: A5 00     LDA ram_0000    ; ppu lo
C - - - - - 0x01EEB1 07:EEA1: 9D 00 03  STA ram_nmt_buffer,X
C - - - - - 0x01EEB4 07:EEA4: E8        INX
C - - - - - 0x01EEB5 07:EEA5: 84 05     STY ram_0005    ; counter
C - - - - - 0x01EEB7 07:EEA7: 98        TYA
C - - - - - 0x01EEB8 07:EEA8: 9D 00 03  STA ram_nmt_buffer,X
C - - - - - 0x01EEBB 07:EEAB: E8        INX
C - - - - - 0x01EEBC 07:EEAC: A4 11     LDY ram_0011
C - - - - - 0x01EEBE 07:EEAE: B1 30     LDA (ram_0030),Y
C - - - - - 0x01EEC0 07:EEB0: 0A        ASL
C - - - - - 0x01EEC1 07:EEB1: A8        TAY
C - - - - - 0x01EEC2 07:EEB2: B1 32     LDA (ram_0032),Y
C - - - - - 0x01EEC4 07:EEB4: 85 0A     STA ram_000A
C - - - - - 0x01EEC6 07:EEB6: C8        INY
C - - - - - 0x01EEC7 07:EEB7: B1 32     LDA (ram_0032),Y
C - - - - - 0x01EEC9 07:EEB9: 85 0B     STA ram_000B
C - - - - - 0x01EECB 07:EEBB: A5 17     LDA ram_0017
C - - - - - 0x01EECD 07:EEBD: 4A        LSR
C - - - - - 0x01EECE 07:EEBE: 4A        LSR
C - - - - - 0x01EECF 07:EEBF: 4A        LSR
C - - - - - 0x01EED0 07:EEC0: 85 0F     STA ram_000F
C - - - - - 0x01EED2 07:EEC2: 29 03     AND #$03
C - - - - - 0x01EED4 07:EEC4: 85 07     STA ram_0007
C - - - - - 0x01EED6 07:EEC6: A9 04     LDA #$04
C - - - - - 0x01EED8 07:EEC8: 38        SEC
C - - - - - 0x01EED9 07:EEC9: E5 07     SBC ram_0007
C - - - - - 0x01EEDB 07:EECB: 85 06     STA ram_0006
C - - - - - 0x01EEDD 07:EECD: A5 0F     LDA ram_000F
C - - - - - 0x01EEDF 07:EECF: 4A        LSR
C - - - - - 0x01EEE0 07:EED0: 4A        LSR
C - - - - - 0x01EEE1 07:EED1: 85 0F     STA ram_000F
C - - - - - 0x01EEE3 07:EED3: A5 73     LDA ram_0073
C - - - - - 0x01EEE5 07:EED5: 29 FC     AND #$FC
C - - - - - 0x01EEE7 07:EED7: 0A        ASL
C - - - - - 0x01EEE8 07:EED8: 18        CLC
C - - - - - 0x01EEE9 07:EED9: 65 0F     ADC ram_000F
C - - - - - 0x01EEEB 07:EEDB: 85 0F     STA ram_000F
bra_EEDD_loop:
C - - - - - 0x01EEED 07:EEDD: A9 00     LDA #$00
C - - - - - 0x01EEEF 07:EEDF: 85 0C     STA ram_000C
C - - - - - 0x01EEF1 07:EEE1: A4 0F     LDY ram_000F
C - - - - - 0x01EEF3 07:EEE3: B1 0A     LDA (ram_000A),Y
C - - - - - 0x01EEF5 07:EEE5: 0A        ASL
C - - - - - 0x01EEF6 07:EEE6: 26 0C     ROL ram_000C
C - - - - - 0x01EEF8 07:EEE8: 0A        ASL
C - - - - - 0x01EEF9 07:EEE9: 26 0C     ROL ram_000C
C - - - - - 0x01EEFB 07:EEEB: 0A        ASL
C - - - - - 0x01EEFC 07:EEEC: 26 0C     ROL ram_000C
C - - - - - 0x01EEFE 07:EEEE: 0A        ASL
C - - - - - 0x01EEFF 07:EEEF: 26 0C     ROL ram_000C
C - - - - - 0x01EF01 07:EEF1: 18        CLC
C - - - - - 0x01EF02 07:EEF2: 65 34     ADC ram_0034
C - - - - - 0x01EF04 07:EEF4: 85 08     STA ram_0008
C - - - - - 0x01EF06 07:EEF6: A5 0C     LDA ram_000C
C - - - - - 0x01EF08 07:EEF8: 65 35     ADC ram_0035
C - - - - - 0x01EF0A 07:EEFA: 85 09     STA ram_0009
C - - - - - 0x01EF0C 07:EEFC: A5 10     LDA ram_0010
C - - - - - 0x01EF0E 07:EEFE: 18        CLC
C - - - - - 0x01EF0F 07:EEFF: 65 07     ADC ram_0007
C - - - - - 0x01EF11 07:EF01: 85 16     STA ram_0016
bra_EF03_loop:
C - - - - - 0x01EF13 07:EF03: A4 16     LDY ram_0016
C - - - - - 0x01EF15 07:EF05: B1 08     LDA (ram_0008),Y
C - - - - - 0x01EF17 07:EF07: 9D 00 03  STA ram_nmt_buffer,X
C - - - - - 0x01EF1A 07:EF0A: E8        INX
C - - - - - 0x01EF1B 07:EF0B: C8        INY
C - - - - - 0x01EF1C 07:EF0C: 84 16     STY ram_0016
C - - - - - 0x01EF1E 07:EF0E: 85 0D     STA ram_000D
C - - - - - 0x01EF20 07:EF10: A5 10     LDA ram_0010
C - - - - - 0x01EF22 07:EF12: 29 04     AND #$04
C - - - - - 0x01EF24 07:EF14: D0 2D     BNE bra_EF43
C - - - - - 0x01EF26 07:EF16: A5 06     LDA ram_0006
C - - - - - 0x01EF28 07:EF18: 4A        LSR
C - - - - - 0x01EF29 07:EF19: 90 0D     BCC bra_EF28
C - - - - - 0x01EF2B 07:EF1B: A5 15     LDA ram_0015
C - - - - - 0x01EF2D 07:EF1D: 49 80     EOR #$80
C - - - - - 0x01EF2F 07:EF1F: 85 15     STA ram_0015
C - - - - - 0x01EF31 07:EF21: 30 02     BMI bra_EF25
C - - - - - 0x01EF33 07:EF23: E6 14     INC ram_0014
bra_EF25:
C - - - - - 0x01EF35 07:EF25: 4C 43 EF  JMP loc_EF43
bra_EF28:
C - - - - - 0x01EF38 07:EF28: A5 0D     LDA ram_000D
C - - - - - 0x01EF3A 07:EF2A: 20 55 ED  JSR sub_ED55
C - - - - - 0x01EF3D 07:EF2D: 85 0D     STA ram_000D
C - - - - - 0x01EF3F 07:EF2F: A5 15     LDA ram_0015
C - - - - - 0x01EF41 07:EF31: 2A        ROL
C - - - - - 0x01EF42 07:EF32: 2A        ROL
C - - - - - 0x01EF43 07:EF33: 29 01     AND #$01
C - - - - - 0x01EF45 07:EF35: A8        TAY
C - - - - - 0x01EF46 07:EF36: B9 92 F0  LDA tbl_F092,Y
C - - - - - 0x01EF49 07:EF39: A4 14     LDY ram_0014
C - - - - - 0x01EF4B 07:EF3B: 39 00 04  AND ram_0400_area_data_1,Y
C - - - - - 0x01EF4E 07:EF3E: 05 0D     ORA ram_000D
C - - - - - 0x01EF50 07:EF40: 99 00 04  STA ram_0400_area_data_1,Y
bra_EF43:
loc_EF43:
C D 3 - - - 0x01EF53 07:EF43: C6 05     DEC ram_0005
C - - - - - 0x01EF55 07:EF45: F0 10     BEQ bra_EF57
C - - - - - 0x01EF57 07:EF47: C6 06     DEC ram_0006
C - - - - - 0x01EF59 07:EF49: D0 B8     BNE bra_EF03_loop
C - - - - - 0x01EF5B 07:EF4B: E6 0F     INC ram_000F
C - - - - - 0x01EF5D 07:EF4D: A9 00     LDA #$00
C - - - - - 0x01EF5F 07:EF4F: 85 07     STA ram_0007
C - - - - - 0x01EF61 07:EF51: A9 04     LDA #$04
C - - - - - 0x01EF63 07:EF53: 85 06     STA ram_0006
C - - - - - 0x01EF65 07:EF55: D0 86     BNE bra_EEDD_loop    ; jmp
bra_EF57:
C - - - - - 0x01EF67 07:EF57: C6 14     DEC ram_0014
; close buffer
C - - - - - 0x01EF69 07:EF59: A9 FF     LDA #$FF
C - - - - - 0x01EF6B 07:EF5B: 9D 00 03  STA ram_nmt_buffer,X
C - - - - - 0x01EF6E 07:EF5E: E8        INX
C - - - - - 0x01EF6F 07:EF5F: 86 1E     STX ram_index_ppu_buffer
C - - - - - 0x01EF71 07:EF61: 60        RTS



loc_EF62:
C D 3 - - - 0x01EF72 07:EF62: A5 73     LDA ram_0073
C - - - - - 0x01EF74 07:EF64: 4A        LSR
C - - - - - 0x01EF75 07:EF65: 45 77     EOR ram_0077
C - - - - - 0x01EF77 07:EF67: 4A        LSR
C - - - - - 0x01EF78 07:EF68: A0 F0     LDY #$F0
C - - - - - 0x01EF7A 07:EF6A: A2 0F     LDX #$0F
C - - - - - 0x01EF7C 07:EF6C: A9 00     LDA #$00
C - - - - - 0x01EF7E 07:EF6E: 90 0F     BCC bra_EF7F
C - - - - - 0x01EF80 07:EF70: A5 77     LDA ram_0077
C - - - - - 0x01EF82 07:EF72: 4A        LSR
C - - - - - 0x01EF83 07:EF73: A5 89     LDA ram_data_area_columns
C - - - - - 0x01EF85 07:EF75: 90 08     BCC bra_EF7F
C - - - - - 0x01EF87 07:EF77: 49 FF     EOR #$FF
C - - - - - 0x01EF89 07:EF79: 69 00     ADC #$00
C - - - - - 0x01EF8B 07:EF7B: A0 0F     LDY #$0F
C - - - - - 0x01EF8D 07:EF7D: A2 F0     LDX #$F0
bra_EF7F:
C - - - - - 0x01EF8F 07:EF7F: 85 14     STA ram_0014
C - - - - - 0x01EF91 07:EF81: 84 0C     STY ram_000C
C - - - - - 0x01EF93 07:EF83: 86 0D     STX ram_000D
C - - - - - 0x01EF95 07:EF85: A5 73     LDA ram_0073
C - - - - - 0x01EF97 07:EF87: 20 3E EE  JSR sub_EE3E
C - - - - - 0x01EF9A 07:EF8A: 20 FA EC  JSR sub_ECFA
C - - - - - 0x01EF9D 07:EF8D: A5 79     LDA ram_0079
C - - - - - 0x01EF9F 07:EF8F: 85 11     STA ram_0011
C - - - - - 0x01EFA1 07:EF91: A4 02     LDY ram_0002
C - - - - - 0x01EFA3 07:EF93: A6 1E     LDX ram_index_ppu_buffer
C - - - - - 0x01EFA5 07:EF95: CA        DEX
C - - - - - 0x01EFA6 07:EF96: A5 78     LDA ram_0078
C - - - - - 0x01EFA8 07:EF98: 20 CA EF  JSR sub_EFCA
C - - - - - 0x01EFAB 07:EF9B: A4 03     LDY ram_0003
C - - - - - 0x01EFAD 07:EF9D: F0 28     BEQ bra_EFC7_RTS
C - - - - - 0x01EFAF 07:EF9F: E6 11     INC ram_0011
C - - - - - 0x01EFB1 07:EFA1: A5 12     LDA ram_0012
C - - - - - 0x01EFB3 07:EFA3: 29 F8     AND #$F8
C - - - - - 0x01EFB5 07:EFA5: 85 12     STA ram_0012
C - - - - - 0x01EFB7 07:EFA7: A5 13     LDA ram_0013
C - - - - - 0x01EFB9 07:EFA9: 49 04     EOR #$04
C - - - - - 0x01EFBB 07:EFAB: 85 13     STA ram_0013
C - - - - - 0x01EFBD 07:EFAD: CA        DEX
C - - - - - 0x01EFBE 07:EFAE: 20 C8 EF  JSR sub_EFC8
C - - - - - 0x01EFC1 07:EFB1: A4 04     LDY ram_0004
C - - - - - 0x01EFC3 07:EFB3: F0 12     BEQ bra_EFC7_RTS
C - - - - - 0x01EFC5 07:EFB5: E6 11     INC ram_0011
C - - - - - 0x01EFC7 07:EFB7: A5 12     LDA ram_0012
C - - - - - 0x01EFC9 07:EFB9: 29 F8     AND #$F8
C - - - - - 0x01EFCB 07:EFBB: 85 12     STA ram_0012
C - - - - - 0x01EFCD 07:EFBD: A5 13     LDA ram_0013
C - - - - - 0x01EFCF 07:EFBF: 49 04     EOR #$04
C - - - - - 0x01EFD1 07:EFC1: 85 13     STA ram_0013
C - - - - - 0x01EFD3 07:EFC3: CA        DEX
C - - - - - 0x01EFD4 07:EFC4: 20 C8 EF  JSR sub_EFC8
bra_EFC7_RTS:
C - - - - - 0x01EFD7 07:EFC7: 60        RTS



sub_EFC8:
C - - - - - 0x01EFD8 07:EFC8: A9 00     LDA #$00
sub_EFCA:
C - - - - - 0x01EFDA 07:EFCA: 85 17     STA ram_0017
C - - - - - 0x01EFDC 07:EFCC: 88        DEY
C - - - - - 0x01EFDD 07:EFCD: 98        TYA
C - - - - - 0x01EFDE 07:EFCE: 4A        LSR
C - - - - - 0x01EFDF 07:EFCF: 4A        LSR
C - - - - - 0x01EFE0 07:EFD0: A8        TAY
C - - - - - 0x01EFE1 07:EFD1: C8        INY
C - - - - - 0x01EFE2 07:EFD2: A5 13     LDA ram_0013    ; ppu hi
C - - - - - 0x01EFE4 07:EFD4: 9D 00 03  STA ram_nmt_buffer,X
C - - - - - 0x01EFE7 07:EFD7: E8        INX
C - - - - - 0x01EFE8 07:EFD8: A5 12     LDA ram_0012    ; ppu lo
C - - - - - 0x01EFEA 07:EFDA: 9D 00 03  STA ram_nmt_buffer,X
C - - - - - 0x01EFED 07:EFDD: E8        INX
C - - - - - 0x01EFEE 07:EFDE: 84 05     STY ram_0005    ; counter
C - - - - - 0x01EFF0 07:EFE0: 98        TYA
C - - - - - 0x01EFF1 07:EFE1: 9D 00 03  STA ram_nmt_buffer,X
C - - - - - 0x01EFF4 07:EFE4: E8        INX
C - - - - - 0x01EFF5 07:EFE5: A4 11     LDY ram_0011
C - - - - - 0x01EFF7 07:EFE7: B1 30     LDA (ram_0030),Y
C - - - - - 0x01EFF9 07:EFE9: 0A        ASL
C - - - - - 0x01EFFA 07:EFEA: A8        TAY
C - - - - - 0x01EFFB 07:EFEB: B1 32     LDA (ram_0032),Y
C - - - - - 0x01EFFD 07:EFED: 85 0A     STA ram_000A
C - - - - - 0x01EFFF 07:EFEF: C8        INY
C - - - - - 0x01F000 07:EFF0: B1 32     LDA (ram_0032),Y
C - - - - - 0x01F002 07:EFF2: 85 0B     STA ram_000B
C - - - - - 0x01F004 07:EFF4: A5 11     LDA ram_0011
C - - - - - 0x01F006 07:EFF6: 18        CLC
C - - - - - 0x01F007 07:EFF7: 65 14     ADC ram_0014
C - - - - - 0x01F009 07:EFF9: A8        TAY
C - - - - - 0x01F00A 07:EFFA: B1 30     LDA (ram_0030),Y
C - - - - - 0x01F00C 07:EFFC: 0A        ASL
C - - - - - 0x01F00D 07:EFFD: A8        TAY
C - - - - - 0x01F00E 07:EFFE: B1 32     LDA (ram_0032),Y
C - - - - - 0x01F010 07:F000: 85 15     STA ram_0015
C - - - - - 0x01F012 07:F002: C8        INY
C - - - - - 0x01F013 07:F003: B1 32     LDA (ram_0032),Y
C - - - - - 0x01F015 07:F005: 85 16     STA ram_0016
C - - - - - 0x01F017 07:F007: A5 17     LDA ram_0017
C - - - - - 0x01F019 07:F009: 4A        LSR
C - - - - - 0x01F01A 07:F00A: 4A        LSR
C - - - - - 0x01F01B 07:F00B: 4A        LSR
C - - - - - 0x01F01C 07:F00C: 4A        LSR
C - - - - - 0x01F01D 07:F00D: 4A        LSR
C - - - - - 0x01F01E 07:F00E: 85 0F     STA ram_000F
C - - - - - 0x01F020 07:F010: A5 73     LDA ram_0073
C - - - - - 0x01F022 07:F012: 29 FC     AND #$FC
C - - - - - 0x01F024 07:F014: 0A        ASL
C - - - - - 0x01F025 07:F015: 18        CLC
C - - - - - 0x01F026 07:F016: 65 0F     ADC ram_000F
C - - - - - 0x01F028 07:F018: 85 0F     STA ram_000F
C - - - - - 0x01F02A 07:F01A: A5 2F     LDA ram_002F
C - - - - - 0x01F02C 07:F01C: D0 29     BNE bra_F047_loop
bra_F01E_loop:
C - - - - - 0x01F02E 07:F01E: A4 0F     LDY ram_000F
C - - - - - 0x01F030 07:F020: B1 0A     LDA (ram_000A),Y
C - - - - - 0x01F032 07:F022: A8        TAY
C - - - - - 0x01F033 07:F023: B1 36     LDA (ram_0036),Y
C - - - - - 0x01F035 07:F025: 25 0C     AND ram_000C
C - - - - - 0x01F037 07:F027: 85 0E     STA ram_000E
C - - - - - 0x01F039 07:F029: A4 0F     LDY ram_000F
C - - - - - 0x01F03B 07:F02B: B1 15     LDA (ram_0015),Y
C - - - - - 0x01F03D 07:F02D: A8        TAY
C - - - - - 0x01F03E 07:F02E: B1 36     LDA (ram_0036),Y
C - - - - - 0x01F040 07:F030: 25 0D     AND ram_000D
C - - - - - 0x01F042 07:F032: 05 0E     ORA ram_000E
C - - - - - 0x01F044 07:F034: 9D 00 03  STA ram_nmt_buffer,X
C - - - - - 0x01F047 07:F037: E8        INX
C - - - - - 0x01F048 07:F038: E6 0F     INC ram_000F
C - - - - - 0x01F04A 07:F03A: C6 05     DEC ram_0005
C - - - - - 0x01F04C 07:F03C: D0 E0     BNE bra_F01E_loop
bra_F03E:
; close buffer
C - - - - - 0x01F04E 07:F03E: A9 FF     LDA #$FF
C - - - - - 0x01F050 07:F040: 9D 00 03  STA ram_nmt_buffer,X
C - - - - - 0x01F053 07:F043: E8        INX
C - - - - - 0x01F054 07:F044: 86 1E     STX ram_index_ppu_buffer
C - - - - - 0x01F056 07:F046: 60        RTS
bra_F047_loop:
C - - - - - 0x01F057 07:F047: A4 0F     LDY ram_000F
C - - - - - 0x01F059 07:F049: B1 0A     LDA (ram_000A),Y
C - - - - - 0x01F05B 07:F04B: A8        TAY
C - - - - - 0x01F05C 07:F04C: B1 36     LDA (ram_0036),Y
C - - - - - 0x01F05E 07:F04E: 20 6F F0  JSR sub_F06F
C - - - - - 0x01F061 07:F051: 25 0C     AND ram_000C
C - - - - - 0x01F063 07:F053: 85 0E     STA ram_000E
C - - - - - 0x01F065 07:F055: A4 0F     LDY ram_000F
C - - - - - 0x01F067 07:F057: B1 15     LDA (ram_0015),Y
C - - - - - 0x01F069 07:F059: A8        TAY
C - - - - - 0x01F06A 07:F05A: B1 36     LDA (ram_0036),Y
C - - - - - 0x01F06C 07:F05C: 20 6F F0  JSR sub_F06F
C - - - - - 0x01F06F 07:F05F: 25 0D     AND ram_000D
C - - - - - 0x01F071 07:F061: 05 0E     ORA ram_000E
C - - - - - 0x01F073 07:F063: 9D 00 03  STA ram_nmt_buffer,X
C - - - - - 0x01F076 07:F066: E8        INX
C - - - - - 0x01F077 07:F067: E6 0F     INC ram_000F
C - - - - - 0x01F079 07:F069: C6 05     DEC ram_0005
C - - - - - 0x01F07B 07:F06B: D0 DA     BNE bra_F047_loop
C - - - - - 0x01F07D 07:F06D: F0 CF     BEQ bra_F03E    ; jmp



sub_F06F:
C - - - - - 0x01F07F 07:F06F: 84 00     STY ram_0000
C - - - - - 0x01F081 07:F071: 85 01     STA ram_0001
C - - - - - 0x01F083 07:F073: 98        TYA
C - - - - - 0x01F084 07:F074: A0 09     LDY #$09
bra_F076_loop:
C - - - - - 0x01F086 07:F076: D9 88 F0  CMP tbl_F088,Y
C - - - - - 0x01F089 07:F079: F0 05     BEQ bra_F080
C - - - - - 0x01F08B 07:F07B: 88        DEY
C - - - - - 0x01F08C 07:F07C: 10 F8     BPL bra_F076_loop
C - - - - - 0x01F08E 07:F07E: 30 05     BMI bra_F085    ; jmp
bra_F080:
C - - - - - 0x01F090 07:F080: B9 D0 07  LDA ram_07D0,Y
C - - - - - 0x01F093 07:F083: D0 02     BNE bra_F087_RTS
bra_F085:
C - - - - - 0x01F095 07:F085: A5 01     LDA ram_0001
bra_F087_RTS:
C - - - - - 0x01F097 07:F087: 60        RTS



tbl_F088:
- D 3 - - - 0x01F098 07:F088: 89        .byte $89   ; 00 
- D 3 - - - 0x01F099 07:F089: 8D        .byte $8D   ; 01 
- D 3 - - - 0x01F09A 07:F08A: AC        .byte $AC   ; 02 
- D 3 - - - 0x01F09B 07:F08B: AF        .byte $AF   ; 03 
- D 3 - - - 0x01F09C 07:F08C: C1        .byte $C1   ; 04 
- D 3 - - - 0x01F09D 07:F08D: C2        .byte $C2   ; 05 
- D 3 - - - 0x01F09E 07:F08E: EC        .byte $EC   ; 06 
- D 3 - - - 0x01F09F 07:F08F: ED        .byte $ED   ; 07 
- D 3 - - - 0x01F0A0 07:F090: EE        .byte $EE   ; 08 
- D 3 - - - 0x01F0A1 07:F091: EF        .byte $EF   ; 09 



tbl_F092:
- D 3 - - - 0x01F0A2 07:F092: 0F        .byte $0F   ; 00 
- D 3 - - - 0x01F0A3 07:F093: F0        .byte $F0   ; 01 



bra_F094_RTS:
C - - - - - 0x01F0A4 07:F094: 60        RTS



sub_0x01F0A5:
C - - - - - 0x01F0A5 07:F095: A6 1E     LDX ram_index_ppu_buffer
C - - - - - 0x01F0A7 07:F097: E0 30     CPX #$30
C - - - - - 0x01F0A9 07:F099: B0 F9     BCS bra_F094_RTS
C - - - - - 0x01F0AB 07:F09B: A2 F8     LDX #$F8
C - - - - - 0x01F0AD 07:F09D: 4C A6 FE  JMP loc_FEA6



sub_0x01F0B0:
C - - - - - 0x01F0B0 07:F0A0: A6 1E     LDX ram_index_ppu_buffer
C - - - - - 0x01F0B2 07:F0A2: E0 30     CPX #$30
C - - - - - 0x01F0B4 07:F0A4: B0 EE     BCS bra_F094_RTS
C - - - - - 0x01F0B6 07:F0A6: 4C A4 FE  JMP loc_FEA4



sub_F0A9:
C - - - - - 0x01F0B9 07:F0A9: A6 1E     LDX ram_index_ppu_buffer
C - - - - - 0x01F0BB 07:F0AB: 18        CLC
C - - - - - 0x01F0BC 07:F0AC: 65 FD     ADC ram_scroll_X
C - - - - - 0x01F0BE 07:F0AE: 85 00     STA ram_0000
C - - - - - 0x01F0C0 07:F0B0: A5 FF     LDA ram_for_2000
C - - - - - 0x01F0C2 07:F0B2: 90 02     BCC bra_F0B6
C - - - - - 0x01F0C4 07:F0B4: 49 01     EOR #$01
bra_F0B6:
C - - - - - 0x01F0C6 07:F0B6: 29 01     AND #$01
C - - - - - 0x01F0C8 07:F0B8: 09 08     ORA #$08
C - - - - - 0x01F0CA 07:F0BA: 85 01     STA ram_0001
C - - - - - 0x01F0CC 07:F0BC: A5 00     LDA ram_0000
C - - - - - 0x01F0CE 07:F0BE: 25 06     AND ram_0006
C - - - - - 0x01F0D0 07:F0C0: 4A        LSR
C - - - - - 0x01F0D1 07:F0C1: 4A        LSR
C - - - - - 0x01F0D2 07:F0C2: 4A        LSR
C - - - - - 0x01F0D3 07:F0C3: 85 00     STA ram_0000
C - - - - - 0x01F0D5 07:F0C5: 4A        LSR
C - - - - - 0x01F0D6 07:F0C6: 4A        LSR
C - - - - - 0x01F0D7 07:F0C7: 85 02     STA ram_0002
C - - - - - 0x01F0D9 07:F0C9: 98        TYA
C - - - - - 0x01F0DA 07:F0CA: 18        CLC
C - - - - - 0x01F0DB 07:F0CB: 65 FC     ADC ram_scroll_Y
C - - - - - 0x01F0DD 07:F0CD: B0 04     BCS bra_F0D3
C - - - - - 0x01F0DF 07:F0CF: C9 F0     CMP #$F0
C - - - - - 0x01F0E1 07:F0D1: 90 03     BCC bra_F0D6
bra_F0D3:
C - - - - - 0x01F0E3 07:F0D3: 18        CLC
C - - - - - 0x01F0E4 07:F0D4: 69 10     ADC #$10
bra_F0D6:
C - - - - - 0x01F0E6 07:F0D6: 25 06     AND ram_0006
C - - - - - 0x01F0E8 07:F0D8: 85 03     STA ram_0003
C - - - - - 0x01F0EA 07:F0DA: 0A        ASL
C - - - - - 0x01F0EB 07:F0DB: 26 01     ROL ram_0001
C - - - - - 0x01F0ED 07:F0DD: 0A        ASL
C - - - - - 0x01F0EE 07:F0DE: 26 01     ROL ram_0001
C - - - - - 0x01F0F0 07:F0E0: 05 00     ORA ram_0000
C - - - - - 0x01F0F2 07:F0E2: 85 00     STA ram_0000
C - - - - - 0x01F0F4 07:F0E4: A5 03     LDA ram_0003
C - - - - - 0x01F0F6 07:F0E6: 4A        LSR
C - - - - - 0x01F0F7 07:F0E7: 4A        LSR
C - - - - - 0x01F0F8 07:F0E8: 05 02     ORA ram_0002
C - - - - - 0x01F0FA 07:F0EA: 09 C0     ORA #$C0
C - - - - - 0x01F0FC 07:F0EC: 85 02     STA ram_0002
C - - - - - 0x01F0FE 07:F0EE: A5 01     LDA ram_0001
C - - - - - 0x01F100 07:F0F0: 09 03     ORA #$03
C - - - - - 0x01F102 07:F0F2: 85 03     STA ram_0003
C - - - - - 0x01F104 07:F0F4: A9 00     LDA #$00
C - - - - - 0x01F106 07:F0F6: 85 09     STA ram_0009
C - - - - - 0x01F108 07:F0F8: A5 08     LDA ram_0008
C - - - - - 0x01F10A 07:F0FA: 0A        ASL
C - - - - - 0x01F10B 07:F0FB: 26 09     ROL ram_0009
C - - - - - 0x01F10D 07:F0FD: 0A        ASL
C - - - - - 0x01F10E 07:F0FE: 26 09     ROL ram_0009
C - - - - - 0x01F110 07:F100: 0A        ASL
C - - - - - 0x01F111 07:F101: 26 09     ROL ram_0009
C - - - - - 0x01F113 07:F103: 0A        ASL
C - - - - - 0x01F114 07:F104: 26 09     ROL ram_0009
C - - - - - 0x01F116 07:F106: 65 34     ADC ram_0034
C - - - - - 0x01F118 07:F108: 85 0A     STA ram_000A
C - - - - - 0x01F11A 07:F10A: A5 09     LDA ram_0009
C - - - - - 0x01F11C 07:F10C: 65 35     ADC ram_0035
C - - - - - 0x01F11E 07:F10E: 85 0B     STA ram_000B
C - - - - - 0x01F120 07:F110: A9 06     LDA #con_buf_mode_06
C - - - - - 0x01F122 07:F112: 9D 00 03  STA ram_nmt_buffer,X
C - - - - - 0x01F125 07:F115: E8        INX
C - - - - - 0x01F126 07:F116: A0 04     LDY #$04
C - - - - - 0x01F128 07:F118: A5 00     LDA ram_0000
C - - - - - 0x01F12A 07:F11A: 10 0A     BPL bra_F126
C - - - - - 0x01F12C 07:F11C: A5 01     LDA ram_0001
C - - - - - 0x01F12E 07:F11E: 29 03     AND #$03
C - - - - - 0x01F130 07:F120: C9 03     CMP #$03
C - - - - - 0x01F132 07:F122: D0 02     BNE bra_F126
C - - - - - 0x01F134 07:F124: A0 02     LDY #$02
bra_F126:
C - - - - - 0x01F136 07:F126: 84 04     STY ram_0004
C - - - - - 0x01F138 07:F128: A0 00     LDY #$00
bra_F12A_loop:
C - - - - - 0x01F13A 07:F12A: A5 01     LDA ram_0001
C - - - - - 0x01F13C 07:F12C: 9D 00 03  STA ram_nmt_buffer,X
C - - - - - 0x01F13F 07:F12F: E8        INX
C - - - - - 0x01F140 07:F130: A5 00     LDA ram_0000
C - - - - - 0x01F142 07:F132: 9D 00 03  STA ram_nmt_buffer,X
C - - - - - 0x01F145 07:F135: E8        INX
C - - - - - 0x01F146 07:F136: A9 04     LDA #$04    ; counter
C - - - - - 0x01F148 07:F138: 85 05     STA ram_0005
C - - - - - 0x01F14A 07:F13A: 9D 00 03  STA ram_nmt_buffer,X
C - - - - - 0x01F14D 07:F13D: E8        INX
bra_F13E_loop:
C - - - - - 0x01F14E 07:F13E: B1 0A     LDA (ram_000A),Y
C - - - - - 0x01F150 07:F140: 9D 00 03  STA ram_nmt_buffer,X
C - - - - - 0x01F153 07:F143: C8        INY
C - - - - - 0x01F154 07:F144: E8        INX
C - - - - - 0x01F155 07:F145: C6 05     DEC ram_0005
C - - - - - 0x01F157 07:F147: D0 F5     BNE bra_F13E_loop
C - - - - - 0x01F159 07:F149: A5 00     LDA ram_0000
C - - - - - 0x01F15B 07:F14B: 18        CLC
C - - - - - 0x01F15C 07:F14C: 69 20     ADC #$20
C - - - - - 0x01F15E 07:F14E: 85 00     STA ram_0000
C - - - - - 0x01F160 07:F150: 90 02     BCC bra_F154_not_overflow
C - - - - - 0x01F162 07:F152: E6 01     INC ram_0001
bra_F154_not_overflow:
C - - - - - 0x01F164 07:F154: C6 04     DEC ram_0004
C - - - - - 0x01F166 07:F156: D0 D2     BNE bra_F12A_loop
C - - - - - 0x01F168 07:F158: A5 06     LDA ram_0006
C - - - - - 0x01F16A 07:F15A: C9 E0     CMP #$E0
C - - - - - 0x01F16C 07:F15C: D0 1A     BNE bra_F178
C - - - - - 0x01F16E 07:F15E: A5 03     LDA ram_0003    ; ppu hi
C - - - - - 0x01F170 07:F160: 9D 00 03  STA ram_nmt_buffer,X
C - - - - - 0x01F173 07:F163: E8        INX
C - - - - - 0x01F174 07:F164: A5 02     LDA ram_0002    ; ppu lo
C - - - - - 0x01F176 07:F166: 9D 00 03  STA ram_nmt_buffer,X
C - - - - - 0x01F179 07:F169: E8        INX
C - - - - - 0x01F17A 07:F16A: A9 01     LDA #$01    ; counter
C - - - - - 0x01F17C 07:F16C: 9D 00 03  STA ram_nmt_buffer,X
C - - - - - 0x01F17F 07:F16F: E8        INX
C - - - - - 0x01F180 07:F170: A4 08     LDY ram_0008
C - - - - - 0x01F182 07:F172: B1 36     LDA (ram_0036),Y
C - - - - - 0x01F184 07:F174: 9D 00 03  STA ram_nmt_buffer,X
C - - - - - 0x01F187 07:F177: E8        INX
bra_F178:
; close buffer
C - - - - - 0x01F188 07:F178: A9 FF     LDA #$FF
C - - - - - 0x01F18A 07:F17A: 9D 00 03  STA ram_nmt_buffer,X
C - - - - - 0x01F18D 07:F17D: E8        INX
C - - - - - 0x01F18E 07:F17E: 86 1E     STX ram_index_ppu_buffer
C - - - - - 0x01F190 07:F180: 18        CLC
C - - - - - 0x01F191 07:F181: 60        RTS



sub_0x01F192:
C - - - - - 0x01F192 07:F182: A9 00     LDA #$00
C - - - - - 0x01F194 07:F184: 85 FC     STA ram_scroll_Y
C - - - - - 0x01F196 07:F186: 85 61     STA ram_0061_area_config
sub_0x01F198:
C - - - - - 0x01F198 07:F188: A9 00     LDA #$00
C - - - - - 0x01F19A 07:F18A: 85 FD     STA ram_scroll_X
C - - - - - 0x01F19C 07:F18C: 85 26     STA ram_for_A000    ; con_mirroring_V
C - - - - - 0x01F19E 07:F18E: 85 86     STA ram_0085_for_2000 + $01
sub_0x01F1A0:
C - - - - - 0x01F1A0 07:F190: A9 00     LDA #$00
C - - - - - 0x01F1A2 07:F192: 85 64     STA ram_0064
C - - - - - 0x01F1A4 07:F194: A9 E0     LDA #$E0
C - - - - - 0x01F1A6 07:F196: 85 6B     STA ram_006B
C - - - - - 0x01F1A8 07:F198: C6 6C     DEC ram_006C
C - - - - - 0x01F1AA 07:F19A: 60        RTS



loc_F19B:
C D 3 - - - 0x01F1AB 07:F19B: A5 50     LDA ram_area_index
C - - - - - 0x01F1AD 07:F19D: 0A        ASL
C - - - - - 0x01F1AE 07:F19E: A8        TAY
C - - - - - 0x01F1AF 07:F19F: B9 A4 F2  LDA tbl_F2A4_indexes_for_metatiles,Y
C - - - - - 0x01F1B2 07:F1A2: 85 32     STA ram_0032
C - - - - - 0x01F1B4 07:F1A4: B9 A5 F2  LDA tbl_F2A4_indexes_for_metatiles + $01,Y
C - - - - - 0x01F1B7 07:F1A7: 85 33     STA ram_0033
C - - - - - 0x01F1B9 07:F1A9: B9 B4 F2  LDA tbl_F2B4_metatiles,Y
C - - - - - 0x01F1BC 07:F1AC: 85 34     STA ram_0034
C - - - - - 0x01F1BE 07:F1AE: B9 B5 F2  LDA tbl_F2B4_metatiles + $01,Y
C - - - - - 0x01F1C1 07:F1B1: 85 35     STA ram_0035
C - - - - - 0x01F1C3 07:F1B3: B9 C4 F2  LDA tbl_F2C4_meta_attr,Y
C - - - - - 0x01F1C6 07:F1B6: 85 36     STA ram_0036
C - - - - - 0x01F1C8 07:F1B8: B9 C5 F2  LDA tbl_F2C4_meta_attr + $01,Y
C - - - - - 0x01F1CB 07:F1BB: 85 37     STA ram_0037
C - - - - - 0x01F1CD 07:F1BD: B9 95 F2  LDA tbl_F294_area_data + $01,Y
C - - - - - 0x01F1D0 07:F1C0: 85 31     STA ram_0031
C - - - - - 0x01F1D2 07:F1C2: 85 09     STA ram_0009
C - - - - - 0x01F1D4 07:F1C4: B9 94 F2  LDA tbl_F294_area_data,Y
C - - - - - 0x01F1D7 07:F1C7: 85 08     STA ram_0008
C - - - - - 0x01F1D9 07:F1C9: 18        CLC
C - - - - - 0x01F1DA 07:F1CA: 69 02     ADC #$02
C - - - - - 0x01F1DC 07:F1CC: 85 30     STA ram_0030
C - - - - - 0x01F1DE 07:F1CE: 90 02     BCC bra_F1D2_not_overflow
- - - - - - 0x01F1E0 07:F1D0: E6 31     INC ram_0031
bra_F1D2_not_overflow:
C - - - - - 0x01F1E2 07:F1D2: A0 00     LDY #$00
C - - - - - 0x01F1E4 07:F1D4: B1 08     LDA (ram_0008),Y
C - - - - - 0x01F1E6 07:F1D6: 85 89     STA ram_data_area_columns
C - - - - - 0x01F1E8 07:F1D8: C8        INY ; 01
C - - - - - 0x01F1E9 07:F1D9: B1 08     LDA (ram_0008),Y
C - - - - - 0x01F1EB 07:F1DB: 85 88     STA ram_data_area_rows
C - - - - - 0x01F1ED 07:F1DD: A5 50     LDA ram_area_index
C - - - - - 0x01F1EF 07:F1DF: 0A        ASL
C - - - - - 0x01F1F0 07:F1E0: 0A        ASL
C - - - - - 0x01F1F1 07:F1E1: 0A        ASL
C - - - - - 0x01F1F2 07:F1E2: 0A        ASL
C - - - - - 0x01F1F3 07:F1E3: A8        TAY
C - - - - - 0x01F1F4 07:F1E4: A2 00     LDX #$00
bra_F1E6_loop:
C - - - - - 0x01F1F6 07:F1E6: B9 F3 F1  LDA tbl_F1F3,Y
C - - - - - 0x01F1F9 07:F1E9: 9D D0 03  STA ram_03D0,X
C - - - - - 0x01F1FC 07:F1EC: C8        INY
C - - - - - 0x01F1FD 07:F1ED: E8        INX
C - - - - - 0x01F1FE 07:F1EE: E0 10     CPX #$10
C - - - - - 0x01F200 07:F1F0: 90 F4     BCC bra_F1E6_loop
C - - - - - 0x01F202 07:F1F2: 60        RTS



tbl_F1F3:
- D 3 - - - 0x01F203 07:F1F3: A0        .byte $A0, $A0, $F8, $F8, $F8, $F8, $FA, $FC, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 00 
- D 3 - - - 0x01F213 07:F203: 1A        .byte $1A, $30, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 01 
- D 3 - - - 0x01F223 07:F213: 27        .byte $27, $27, $42, $42, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 02 
- D 3 - - - 0x01F233 07:F223: 27        .byte $27, $2C, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 03 
- D 3 - - - 0x01F243 07:F233: 2C        .byte $2C, $2E, $36, $36, $36, $36, $37, $38, $39, $3B, $3D, $3F, $FF, $FF, $FF, $FF   ; 04 
- D 3 - - - 0x01F253 07:F243: 21        .byte $21, $58, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 05 
- D 3 - - - 0x01F263 07:F253: 17        .byte $17, $17, $45, $4D, $4D, $4D, $4F, $51, $52, $54, $56, $57, $FF, $FF, $FF, $FF   ; 06 
- D 3 - - - 0x01F273 07:F263: 40        .byte $40, $50, $60, $60, $60, $60, $62, $64, $65, $66, $68, $6A, $FF, $FF, $FF, $FF   ; 07 



loc_F273_area_handler:
C D 3 - - - 0x01F283 07:F273: A5 50     LDA ram_area_index
C - - - - - 0x01F285 07:F275: 0A        ASL
C - - - - - 0x01F286 07:F276: A8        TAY
C - - - - - 0x01F287 07:F277: B9 84 F2  LDA tbl_F284,Y
C - - - - - 0x01F28A 07:F27A: 85 00     STA ram_0000
C - - - - - 0x01F28C 07:F27C: B9 85 F2  LDA tbl_F284 + $01,Y
C - - - - - 0x01F28F 07:F27F: 85 01     STA ram_0001
C - - - - - 0x01F291 07:F281: 6C 00 00  JMP (ram_0000)



tbl_F284:
- D 3 - - - 0x01F294 07:F284: A9 93     .word ofs_044_0x00D3B9_00_area_1
- D 3 - - - 0x01F296 07:F286: 92 94     .word ofs_044_0x00D4A2_01_area_2
- D 3 - - - 0x01F298 07:F288: 47 95     .word ofs_044_0x00D557_02_area_3
- D 3 - - - 0x01F29A 07:F28A: 00 96     .word ofs_044_0x00D610_03_area_4
- D 3 - - - 0x01F29C 07:F28C: F3 96     .word ofs_044_0x00D703_04_area_5
- D 3 - - - 0x01F29E 07:F28E: 1A 98     .word ofs_044_0x00D82A_05_area_6
- D 3 - - - 0x01F2A0 07:F290: E3 98     .word ofs_044_0x00D8F3_06_area_7
- D 3 - - - 0x01F2A2 07:F292: 67 99     .word ofs_044_0x00D977_07_area_8



tbl_F294_area_data:
; indexes for data in 0x01F2B4
- D 3 - - - 0x01F2A4 07:F294: B8 9F     .word _off004_0x009FC8_00_area_1
- D 3 - - - 0x01F2A6 07:F296: 45 AB     .word _off004_0x002B55_01_area_2
- D 3 - - - 0x01F2A8 07:F298: 6A AB     .word _off004_0x00EB7A_02_area_3
- D 3 - - - 0x01F2AA 07:F29A: 77 9A     .word _off004_0x00DA87_03_area_4
- D 3 - - - 0x01F2AC 07:F29C: E1 9D     .word _off004_0x011DF1_04_area_5
- D 3 - - - 0x01F2AE 07:F29E: 26 AD     .word _off004_0x012D36_05_area_6
- D 3 - - - 0x01F2B0 07:F2A0: 4B 98     .word _off004_0x01585B_06_area_7
- D 3 - - - 0x01F2B2 07:F2A2: 17 A8     .word _off004_0x016827_07_area_8



tbl_F2A4_indexes_for_metatiles:
; level data blocks 8x8
- D 3 - - - 0x01F2B4 07:F2A4: F2 9F     .word _off005_0x00A002_00_area_1
- D 3 - - - 0x01F2B6 07:F2A6: 61 AB     .word _off005_0x002B71_01_area_2
- D 3 - - - 0x01F2B8 07:F2A8: 82 AB     .word _off005_0x00EB92_02_area_3
- D 3 - - - 0x01F2BA 07:F2AA: D4 9A     .word _off005_0x00DAE4_03_area_4
- D 3 - - - 0x01F2BC 07:F2AC: 22 9E     .word _off005_0x011E32_04_area_5
- D 3 - - - 0x01F2BE 07:F2AE: 42 AD     .word _off005_0x012D52_05_area_6
- D 3 - - - 0x01F2C0 07:F2B0: 69 98     .word _off005_0x015879_06_area_7
- D 3 - - - 0x01F2C2 07:F2B2: 59 A8     .word _off005_0x016869_07_area_8



tbl_F2B4_metatiles:
; tile blocks 4x4
- D 3 - - - 0x01F2C4 07:F2B4: D8 A4     .word _off006_0x00A4E8_00_area_1
- D 3 - - - 0x01F2C6 07:F2B6: 3F AF     .word _off006_0x002F4F_01_area_2
- D 3 - - - 0x01F2C8 07:F2B8: E4 AF     .word _off006_0x00EFF4_02_area_3
- D 3 - - - 0x01F2CA 07:F2BA: BA 9F     .word _off006_0x00DFCA_03_area_4
- D 3 - - - 0x01F2CC 07:F2BC: C6 A2     .word _off006_0x0122D6_04_area_5
- D 3 - - - 0x01F2CE 07:F2BE: 5A B0     .word _off006_0x01306A_05_area_6
- D 3 - - - 0x01F2D0 07:F2C0: 47 9C     .word _off006_0x015C57_06_area_7
- D 3 - - - 0x01F2D2 07:F2C2: 47 AE     .word _off006_0x016E57_07_area_8



tbl_F2C4_meta_attr:
; nametable attributes for metatiles
- D 3 - - - 0x01F2D4 07:F2C4: 18 B4     .word _off007_0x00B428_00_area_1
- D 3 - - - 0x01F2D6 07:F2C6: 8F BE     .word _off007_0x003E9F_01_area_2
- D 3 - - - 0x01F2D8 07:F2C8: F4 B7     .word _off007_0x00F804_02_area_3
- D 3 - - - 0x01F2DA 07:F2CA: BA AA     .word _off007_0x00EACA_03_area_4
- D 3 - - - 0x01F2DC 07:F2CC: 86 AC     .word _off007_0x012C96_04_area_5
- D 3 - - - 0x01F2DE 07:F2CE: 8A B9     .word _off007_0x01399A_05_area_6
- D 3 - - - 0x01F2E0 07:F2D0: 57 A7     .word _off007_0x016767_06_area_7
- D 3 - - - 0x01F2E2 07:F2D2: A7 BC     .word _off007_0x017CB7_07_area_8



tbl_0x01F2E4_area_objects_spawner:
; bzk optimize, most of internal links point to various FF's.
; choose a single FF and repoint them to it, delete other FF's
- D 3 - - - 0x01F2E4 07:F2D4: C9 92     .word _off013_0x0092D9_00_area_1
- D 3 - - - 0x01F2E6 07:F2D6: DD 93     .word _off013_0x0093ED_01_area_2
- D 3 - - - 0x01F2E8 07:F2D8: 83 94     .word _off013_0x009493_02_area_3
- D 3 - - - 0x01F2EA 07:F2DA: 5B 95     .word _off013_0x00956B_03_area_4
- D 3 - - - 0x01F2EC 07:F2DC: 6E 97     .word _off013_0x00977E_04_area_5
- D 3 - - - 0x01F2EE 07:F2DE: 82 98     .word _off013_0x009892_05_area_6
- D 3 - - - 0x01F2F0 07:F2E0: 25 99     .word _off013_0x009935_06_area_7
- D 3 - - - 0x01F2F2 07:F2E2: B9 99     .word _off013_0x0099C9_07_area_8



sub_0x01F2F4:
C - - - - - 0x01F2F4 07:F2E4: 84 06     STY ram_0006
C - - - - - 0x01F2F6 07:F2E6: A9 00     LDA #$00
C - - - - - 0x01F2F8 07:F2E8: 85 00     STA ram_0000
C - - - - - 0x01F2FA 07:F2EA: A9 01     LDA #$01
C - - - - - 0x01F2FC 07:F2EC: 85 0F     STA ram_000F
C - - - - - 0x01F2FE 07:F2EE: 20 82 F6  JSR sub_F682
C - - - - - 0x01F301 07:F2F1: A5 23     LDA ram_random
C - - - - - 0x01F303 07:F2F3: 29 03     AND #$03
C - - - - - 0x01F305 07:F2F5: A8        TAY
C - - - - - 0x01F306 07:F2F6: B9 3B F3  LDA tbl_F33B,Y
C - - - - - 0x01F309 07:F2F9: 18        CLC
C - - - - - 0x01F30A 07:F2FA: 65 0A     ADC ram_000A
C - - - - - 0x01F30C 07:F2FC: 48        PHA
C - - - - - 0x01F30D 07:F2FD: 6A        ROR
C - - - - - 0x01F30E 07:F2FE: 59 3B F3  EOR tbl_F33B,Y
C - - - - - 0x01F311 07:F301: 0A        ASL
C - - - - - 0x01F312 07:F302: 68        PLA
C - - - - - 0x01F313 07:F303: B0 02     BCS bra_F307
C - - - - - 0x01F315 07:F305: 85 0A     STA ram_000A
bra_F307:
C - - - - - 0x01F317 07:F307: A5 23     LDA ram_random
C - - - - - 0x01F319 07:F309: 4A        LSR
C - - - - - 0x01F31A 07:F30A: 4A        LSR
C - - - - - 0x01F31B 07:F30B: 29 03     AND #$03
C - - - - - 0x01F31D 07:F30D: A8        TAY
C - - - - - 0x01F31E 07:F30E: B9 3F F3  LDA tbl_F33F,Y
C - - - - - 0x01F321 07:F311: 18        CLC
C - - - - - 0x01F322 07:F312: 65 0B     ADC ram_000B
C - - - - - 0x01F324 07:F314: 48        PHA
C - - - - - 0x01F325 07:F315: 6A        ROR
C - - - - - 0x01F326 07:F316: 59 3F F3  EOR tbl_F33F,Y
C - - - - - 0x01F329 07:F319: 0A        ASL
C - - - - - 0x01F32A 07:F31A: 68        PLA
C - - - - - 0x01F32B 07:F31B: B0 02     BCS bra_F31F
C - - - - - 0x01F32D 07:F31D: 85 0B     STA ram_000B
bra_F31F:
C - - - - - 0x01F32F 07:F31F: 20 CE F5  JSR sub_F5CE
C - - - - - 0x01F332 07:F322: 4C 34 F3  JMP loc_F334



sub_0x01F335:
C - - - - - 0x01F335 07:F325: A0 02     LDY #$02
sub_0x01F337:
loc_0x01F337:
C D 3 - - - 0x01F337 07:F327: A9 00     LDA #$00
C - - - - - 0x01F339 07:F329: 84 06     STY ram_0006
C - - - - - 0x01F33B 07:F32B: 85 00     STA ram_0000
C - - - - - 0x01F33D 07:F32D: A9 01     LDA #$01
C - - - - - 0x01F33F 07:F32F: 85 0F     STA ram_000F
C - - - - - 0x01F341 07:F331: 20 CB F5  JSR sub_F5CB
loc_F334:
C D 3 - - - 0x01F344 07:F334: 05 00     ORA ram_0000
C - - - - - 0x01F346 07:F336: 85 0A     STA ram_000A
C - - - - - 0x01F348 07:F338: 4C 5D F3  JMP loc_F35D



tbl_F33B:
- D 3 - - - 0x01F34B 07:F33B: 00        .byte $00   ; 00 
- D 3 - - - 0x01F34C 07:F33C: 10        .byte $10   ; 01 
- D 3 - - - 0x01F34D 07:F33D: F0        .byte $F0   ; 02 
- D 3 - - - 0x01F34E 07:F33E: F8        .byte $F8   ; 03 



tbl_F33F:
- D 3 - - - 0x01F34F 07:F33F: F0        .byte $F0   ; 00 
- D 3 - - - 0x01F350 07:F340: 10        .byte $10   ; 01 
- D 3 - - - 0x01F351 07:F341: 20        .byte $20   ; 02 
- D 3 - - - 0x01F352 07:F342: F8        .byte $F8   ; 03 


; bzk garbage
- - - - - - 0x01F353 07:F343: 0A        ASL
- - - - - - 0x01F354 07:F344: 84 06     STY ram_0006
- - - - - - 0x01F356 07:F346: 85 0A     STA ram_000A
- - - - - - 0x01F358 07:F348: 29 1F     AND #$1F
- - - - - - 0x01F35A 07:F34A: A0 00     LDY #$00
- - - - - - 0x01F35C 07:F34C: C9 07     CMP #$07
- - - - - - 0x01F35E 07:F34E: 90 06     BCC bra_F356
- - - - - - 0x01F360 07:F350: C9 12     CMP #$12
- - - - - - 0x01F362 07:F352: B0 02     BCS bra_F356
- - - - - - 0x01F364 07:F354: A0 02     LDY #$02
bra_F356:
- - - - - - 0x01F366 07:F356: C9 0D     CMP #$0D
- - - - - - 0x01F368 07:F358: 90 01     BCC bra_F35B
- - - - - - 0x01F36A 07:F35A: C8        INY ; 01/03
bra_F35B:
- - - - - - 0x01F36B 07:F35B: 84 07     STY ram_0007



loc_F35D:
C D 3 - - - 0x01F36D 07:F35D: 86 10     STX ram_0010
C - - - - - 0x01F36F 07:F35F: A0 02     LDY #$02
C - - - - - 0x01F371 07:F361: A5 5D     LDA ram_area_config_view
C - - - - - 0x01F373 07:F363: F0 02     BEQ bra_F367_side_view
; if view from above
C - - - - - 0x01F375 07:F365: A0 0E     LDY #$0E
bra_F367_side_view:
C - - - - - 0x01F377 07:F367: 20 FD F6  JSR sub_F6FD_try_to_find_free_object_slot
C - - - - - 0x01F37A 07:F36A: D0 25     BNE bra_F391
C - - - - - 0x01F37C 07:F36C: A5 06     LDA ram_0006
C - - - - - 0x01F37E 07:F36E: C9 07     CMP #$07
C - - - - - 0x01F380 07:F370: 90 02     BCC bra_F374_not_overflow
- - - - - - 0x01F382 07:F372: A9 07     LDA #$07
bra_F374_not_overflow:
C - - - - - 0x01F384 07:F374: 85 06     STA ram_0006
C - - - - - 0x01F386 07:F376: A5 08     LDA ram_0008
C - - - - - 0x01F388 07:F378: 9D 22 05  STA ram_pos_Y_hi_enemy,X
C - - - - - 0x01F38B 07:F37B: A5 09     LDA ram_0009
C - - - - - 0x01F38D 07:F37D: 9D 3C 05  STA ram_pos_X_hi_enemy,X
C - - - - - 0x01F390 07:F380: A5 0A     LDA ram_000A
C - - - - - 0x01F392 07:F382: 29 1F     AND #$1F
C - - - - - 0x01F394 07:F384: 20 AB F3  JSR sub_F3AB
C - - - - - 0x01F397 07:F387: 20 96 F3  JSR sub_F396_write_speed_XY
C - - - - - 0x01F39A 07:F38A: 86 11     STX ram_0011
C - - - - - 0x01F39C 07:F38C: A6 10     LDX ram_0010
C - - - - - 0x01F39E 07:F38E: A9 00     LDA #$00
C - - - - - 0x01F3A0 07:F390: 60        RTS
bra_F391:
C - - - - - 0x01F3A1 07:F391: A6 10     LDX ram_0010
C - - - - - 0x01F3A3 07:F393: A9 01     LDA #$01
C - - - - - 0x01F3A5 07:F395: 60        RTS



sub_F396_write_speed_XY:
sub_0x01F3A6_write_speed_XY:
loc_0x01F3A6_write_speed_XY:
C D 3 - - - 0x01F3A6 07:F396: A5 05     LDA ram_0005
C - - - - - 0x01F3A8 07:F398: 9D AE 06  STA ram_spd_Y_hi_obj,X
C - - - - - 0x01F3AB 07:F39B: A5 04     LDA ram_0004
C - - - - - 0x01F3AD 07:F39D: 9D A0 06  STA ram_spd_Y_lo_obj,X
C - - - - - 0x01F3B0 07:F3A0: A5 0B     LDA ram_000B
C - - - - - 0x01F3B2 07:F3A2: 9D CA 06  STA ram_spd_X_hi_obj,X
C - - - - - 0x01F3B5 07:F3A5: A5 0A     LDA ram_000A
C - - - - - 0x01F3B7 07:F3A7: 9D BC 06  STA ram_spd_X_lo_obj,X
C - - - - - 0x01F3BA 07:F3AA: 60        RTS



sub_F3AB:
sub_0x01F3BB:
C - - - - - 0x01F3BB 07:F3AB: A8        TAY
C - - - - - 0x01F3BC 07:F3AC: B9 F6 F3  LDA tbl_F3F6_index,Y
C - - - - - 0x01F3BF 07:F3AF: A8        TAY
C - - - - - 0x01F3C0 07:F3B0: B9 0F F4  LDA tbl_F40E + $01,Y
C - - - - - 0x01F3C3 07:F3B3: 85 04     STA ram_0004
C - - - - - 0x01F3C5 07:F3B5: A9 00     LDA #$00
C - - - - - 0x01F3C7 07:F3B7: 85 05     STA ram_0005
C - - - - - 0x01F3C9 07:F3B9: 20 1C F4  JSR sub_F41C_math_handler
C - - - - - 0x01F3CC 07:F3BC: A5 04     LDA ram_0004
C - - - - - 0x01F3CE 07:F3BE: 85 0A     STA ram_000A
C - - - - - 0x01F3D0 07:F3C0: A5 05     LDA ram_0005
C - - - - - 0x01F3D2 07:F3C2: 85 0B     STA ram_000B
C - - - - - 0x01F3D4 07:F3C4: B9 0E F4  LDA tbl_F40E,Y
C - - - - - 0x01F3D7 07:F3C7: 85 04     STA ram_0004
C - - - - - 0x01F3D9 07:F3C9: A9 00     LDA #$00
C - - - - - 0x01F3DB 07:F3CB: 85 05     STA ram_0005
C - - - - - 0x01F3DD 07:F3CD: 20 1C F4  JSR sub_F41C_math_handler
C - - - - - 0x01F3E0 07:F3D0: A5 07     LDA ram_0007
C - - - - - 0x01F3E2 07:F3D2: 4A        LSR
C - - - - - 0x01F3E3 07:F3D3: 90 0D     BCC bra_F3E2
C - - - - - 0x01F3E5 07:F3D5: A9 00     LDA #$00
C - - - - - 0x01F3E7 07:F3D7: 38        SEC
C - - - - - 0x01F3E8 07:F3D8: E5 04     SBC ram_0004
C - - - - - 0x01F3EA 07:F3DA: 85 04     STA ram_0004    ; spd_Y_lo
C - - - - - 0x01F3EC 07:F3DC: A9 00     LDA #$00
C - - - - - 0x01F3EE 07:F3DE: E5 05     SBC ram_0005
C - - - - - 0x01F3F0 07:F3E0: 85 05     STA ram_0005    ; spd_Y_hi
bra_F3E2:
C - - - - - 0x01F3F2 07:F3E2: A5 07     LDA ram_0007
C - - - - - 0x01F3F4 07:F3E4: 4A        LSR
C - - - - - 0x01F3F5 07:F3E5: 4A        LSR
C - - - - - 0x01F3F6 07:F3E6: 90 0D     BCC bra_F3F5_RTS
C - - - - - 0x01F3F8 07:F3E8: A9 00     LDA #$00
C - - - - - 0x01F3FA 07:F3EA: 38        SEC
C - - - - - 0x01F3FB 07:F3EB: E5 0A     SBC ram_000A
C - - - - - 0x01F3FD 07:F3ED: 85 0A     STA ram_000A    ; spd_X_lo
C - - - - - 0x01F3FF 07:F3EF: A9 00     LDA #$00
C - - - - - 0x01F401 07:F3F1: E5 0B     SBC ram_000B
C - - - - - 0x01F403 07:F3F3: 85 0B     STA ram_000B    ; spd_X_hi
bra_F3F5_RTS:
C - - - - - 0x01F405 07:F3F5: 60        RTS



tbl_F3F6_index:
- D 3 - - - 0x01F406 07:F3F6: 00        .byte $00   ; 00 
- D 3 - - - 0x01F407 07:F3F7: 02        .byte $02   ; 01 
- D 3 - - - 0x01F408 07:F3F8: 04        .byte $04   ; 02 
- D 3 - - - 0x01F409 07:F3F9: 06        .byte $06   ; 03 
- D 3 - - - 0x01F40A 07:F3FA: 08        .byte $08   ; 04 
- D 3 - - - 0x01F40B 07:F3FB: 0A        .byte $0A   ; 05 
- D 3 - - - 0x01F40C 07:F3FC: 0C        .byte $0C   ; 06 
; bzk garbage?
- - - - - - 0x01F40D 07:F3FD: 0A        .byte $0A   ; 
- - - - - - 0x01F40E 07:F3FE: 08        .byte $08   ; 
- - - - - - 0x01F40F 07:F3FF: 06        .byte $06   ; 
- - - - - - 0x01F410 07:F400: 04        .byte $04   ; 
- - - - - - 0x01F411 07:F401: 02        .byte $02   ; 
- - - - - - 0x01F412 07:F402: 00        .byte $00   ; 
- - - - - - 0x01F413 07:F403: 02        .byte $02   ; 
- - - - - - 0x01F414 07:F404: 04        .byte $04   ; 
- - - - - - 0x01F415 07:F405: 06        .byte $06   ; 
- - - - - - 0x01F416 07:F406: 08        .byte $08   ; 
- - - - - - 0x01F417 07:F407: 0A        .byte $0A   ; 
- - - - - - 0x01F418 07:F408: 0C        .byte $0C   ; 
- - - - - - 0x01F419 07:F409: 0A        .byte $0A   ; 
- - - - - - 0x01F41A 07:F40A: 08        .byte $08   ; 
- - - - - - 0x01F41B 07:F40B: 06        .byte $06   ; 
- - - - - - 0x01F41C 07:F40C: 04        .byte $04   ; 
- - - - - - 0x01F41D 07:F40D: 02        .byte $02   ; 



tbl_F40E:
;                                              +---------- 
;                                              |    +----- 
;                                              |    |
- D 3 - - - 0x01F41E 07:F40E: 00        .byte $00, $FF   ; 00 
- D 3 - - - 0x01F420 07:F410: 42        .byte $42, $F7   ; 02 
- D 3 - - - 0x01F422 07:F412: 80        .byte $80, $DD   ; 04 
- D 3 - - - 0x01F424 07:F414: B5        .byte $B5, $B5   ; 06 
- D 3 - - - 0x01F426 07:F416: DD        .byte $DD, $80   ; 08 
- D 3 - - - 0x01F428 07:F418: F7        .byte $F7, $42   ; 0A 
- D 3 - - - 0x01F42A 07:F41A: FF        .byte $FF, $00   ; 0C 



sub_F41C_math_handler:
C - - - - - 0x01F42C 07:F41C: A5 06     LDA ram_0006
C - - - - - 0x01F42E 07:F41E: 20 09 E6  JSR sub_E609_jump_to_pointers_after_jsr
- D 3 - I - 0x01F431 07:F421: 33 F4     .word ofs_037_F433_00
- D 3 - I - 0x01F433 07:F423: 38 F4     .word ofs_037_F438_01
- D 3 - I - 0x01F435 07:F425: 59 F4     .word ofs_037_F459_02_RTS
- D 3 - I - 0x01F437 07:F427: 3F F4     .word ofs_037_F43F_03
- D 3 - I - 0x01F439 07:F429: 48 F4     .word ofs_037_F448_04
- D 3 - I - 0x01F43B 07:F42B: 5A F4     .word ofs_037_F45A_05
- D 3 - I - 0x01F43D 07:F42D: 65 F4     .word ofs_037_F465_06
- D 3 - I - 0x01F43F 07:F42F: 74 F4     .word ofs_037_F474_07
- - - - - - 0x01F441 07:F431: 8A F4     .word ofs_037_F48A_08



ofs_037_F433_00:
C - - J - - 0x01F443 07:F433: 46 05     LSR ram_0005
C - - - - - 0x01F445 07:F435: 66 04     ROR ram_0004
C - - - - - 0x01F447 07:F437: 60        RTS



ofs_037_F438_01:
C - - J - - 0x01F448 07:F438: 46 05     LSR ram_0005
C - - - - - 0x01F44A 07:F43A: 66 04     ROR ram_0004
C - - - - - 0x01F44C 07:F43C: 4C 48 F4  JMP loc_F448



ofs_037_F43F_03:
C - - J - - 0x01F44F 07:F43F: A5 05     LDA ram_0005
C - - - - - 0x01F451 07:F441: 4A        LSR
C - - - - - 0x01F452 07:F442: A5 04     LDA ram_0004
C - - - - - 0x01F454 07:F444: 6A        ROR
C - - - - - 0x01F455 07:F445: 4A        LSR
C - - - - - 0x01F456 07:F446: 10 06     BPL bra_F44E
loc_F448:
ofs_037_F448_04:
C D 3 J - - 0x01F458 07:F448: A5 05     LDA ram_0005
C - - - - - 0x01F45A 07:F44A: 4A        LSR
C - - - - - 0x01F45B 07:F44B: A5 04     LDA ram_0004
C - - - - - 0x01F45D 07:F44D: 6A        ROR
bra_F44E:
loc_F44E:
C D 3 - - - 0x01F45E 07:F44E: 18        CLC
C - - - - - 0x01F45F 07:F44F: 65 04     ADC ram_0004
C - - - - - 0x01F461 07:F451: 85 04     STA ram_0004
C - - - - - 0x01F463 07:F453: A5 05     LDA ram_0005
C - - - - - 0x01F465 07:F455: 69 00     ADC #$00
C - - - - - 0x01F467 07:F457: 85 05     STA ram_0005
ofs_037_F459_02_RTS:
C - - - - - 0x01F469 07:F459: 60        RTS



ofs_037_F45A_05:
C - - J - - 0x01F46A 07:F45A: A5 05     LDA ram_0005
C - - - - - 0x01F46C 07:F45C: 4A        LSR
C - - - - - 0x01F46D 07:F45D: A5 04     LDA ram_0004
C - - - - - 0x01F46F 07:F45F: 6A        ROR
C - - - - - 0x01F470 07:F460: 85 00     STA ram_0000
C - - - - - 0x01F472 07:F462: 4A        LSR
C - - - - - 0x01F473 07:F463: 10 08     BPL bra_F46D
ofs_037_F465_06:
C - - J - - 0x01F475 07:F465: A5 05     LDA ram_0005
C - - - - - 0x01F477 07:F467: 4A        LSR
C - - - - - 0x01F478 07:F468: A5 04     LDA ram_0004
C - - - - - 0x01F47A 07:F46A: 6A        ROR
C - - - - - 0x01F47B 07:F46B: 85 00     STA ram_0000
bra_F46D:
C - - - - - 0x01F47D 07:F46D: 4A        LSR
C - - - - - 0x01F47E 07:F46E: 18        CLC
C - - - - - 0x01F47F 07:F46F: 65 00     ADC ram_0000
C - - - - - 0x01F481 07:F471: 4C 4E F4  JMP loc_F44E



ofs_037_F474_07:
C - - J - - 0x01F484 07:F474: A5 05     LDA ram_0005
C - - - - - 0x01F486 07:F476: 4A        LSR
C - - - - - 0x01F487 07:F477: A5 04     LDA ram_0004
C - - - - - 0x01F489 07:F479: 6A        ROR
C - - - - - 0x01F48A 07:F47A: 85 00     STA ram_0000
C - - - - - 0x01F48C 07:F47C: 4A        LSR
C - - - - - 0x01F48D 07:F47D: 85 01     STA ram_0001
C - - - - - 0x01F48F 07:F47F: 18        CLC
C - - - - - 0x01F490 07:F480: 65 00     ADC ram_0000
C - - - - - 0x01F492 07:F482: 46 01     LSR ram_0001
C - - - - - 0x01F494 07:F484: 18        CLC
C - - - - - 0x01F495 07:F485: 65 01     ADC ram_0001
C - - - - - 0x01F497 07:F487: 4C 4E F4  JMP loc_F44E



ofs_037_F48A_08:
- - - - - - 0x01F49A 07:F48A: 06 04     ASL ram_0004
- - - - - - 0x01F49C 07:F48C: 26 05     ROL ram_0005
- - - - - - 0x01F49E 07:F48E: 60        RTS


; bzk garbage
- - - - - - 0x01F49F 07:F48F: 20 A5 F4  JSR sub_F4A5
- - - - - - 0x01F4A2 07:F492: 4C 98 F4  JMP loc_F498



sub_0x01F4A5:
C - - - - - 0x01F4A5 07:F495: 20 A2 F4  JSR sub_F4A2
loc_F498:
C - - - - - 0x01F4A8 07:F498: BC 48 07  LDY ram_0748_obj,X
sub_0x01F4AB:
C - - - - - 0x01F4AB 07:F49B: B9 D4 F4  LDA tbl_F4D4,Y
C - - - - - 0x01F4AE 07:F49E: 9D 56 07  STA ram_0756_obj,X
C - - - - - 0x01F4B1 07:F4A1: 60        RTS



sub_F4A2:
sub_0x01F4B2:
C - - - - - 0x01F4B2 07:F4A2: 20 AE AA  JSR sub_0x006ABE
sub_F4A5:
sub_0x01F4B5:
C - - - - - 0x01F4B5 07:F4A5: 20 F0 F4  JSR sub_F4F0
C - - - - - 0x01F4B8 07:F4A8: 4C B1 F4  JMP loc_F4B1



sub_0x01F4BB:
C - - - - - 0x01F4BB 07:F4AB: 20 AE AA  JSR sub_0x006ABE
C - - - - - 0x01F4BE 07:F4AE: 20 EC F4  JSR sub_F4EC
loc_F4B1:
C D 3 - - - 0x01F4C1 07:F4B1: 30 1F     BMI bra_F4D2
C - - - - - 0x01F4C3 07:F4B3: D0 0E     BNE bra_F4C3
C - - - - - 0x01F4C5 07:F4B5: FE 48 07  INC ram_0748_obj,X
C - - - - - 0x01F4C8 07:F4B8: BD 48 07  LDA ram_0748_obj,X
C - - - - - 0x01F4CB 07:F4BB: C5 04     CMP ram_0004
C - - - - - 0x01F4CD 07:F4BD: 90 11     BCC bra_F4D0
C - - - - - 0x01F4CF 07:F4BF: A9 00     LDA #$00
C - - - - - 0x01F4D1 07:F4C1: F0 0A     BEQ bra_F4CD    ; jmp
bra_F4C3:
C - - - - - 0x01F4D3 07:F4C3: DE 48 07  DEC ram_0748_obj,X
C - - - - - 0x01F4D6 07:F4C6: 10 08     BPL bra_F4D0
C - - - - - 0x01F4D8 07:F4C8: A5 04     LDA ram_0004
C - - - - - 0x01F4DA 07:F4CA: 38        SEC
C - - - - - 0x01F4DB 07:F4CB: E9 01     SBC #$01
bra_F4CD:
C - - - - - 0x01F4DD 07:F4CD: 9D 48 07  STA ram_0748_obj,X
bra_F4D0:
C - - - - - 0x01F4E0 07:F4D0: 18        CLC
C - - - - - 0x01F4E1 07:F4D1: 60        RTS
bra_F4D2:
C - - - - - 0x01F4E2 07:F4D2: 38        SEC
C - - - - - 0x01F4E3 07:F4D3: 60        RTS



tbl_F4D4:
tbl_0x01F4E4:
- D 3 - - - 0x01F4E4 07:F4D4: 00        .byte $00   ; 00 
- D 3 - - - 0x01F4E5 07:F4D5: 00        .byte $00   ; 01 
- D 3 - - - 0x01F4E6 07:F4D6: 01        .byte $01   ; 02 
- D 3 - - - 0x01F4E7 07:F4D7: 01        .byte $01   ; 03 
- D 3 - - - 0x01F4E8 07:F4D8: 01        .byte $01   ; 04 
- D 3 - - - 0x01F4E9 07:F4D9: 02        .byte $02   ; 05 
- D 3 - - - 0x01F4EA 07:F4DA: 02        .byte $02   ; 06 
- D 3 - - - 0x01F4EB 07:F4DB: 02        .byte $02   ; 07 
- D 3 - - - 0x01F4EC 07:F4DC: 03        .byte $03   ; 08 
- D 3 - - - 0x01F4ED 07:F4DD: 03        .byte $03   ; 09 
- D 3 - - - 0x01F4EE 07:F4DE: 03        .byte $03   ; 0A 
- D 3 - - - 0x01F4EF 07:F4DF: 04        .byte $04   ; 0B 
- D 3 - - - 0x01F4F0 07:F4E0: 04        .byte $04   ; 0C 
- D 3 - - - 0x01F4F1 07:F4E1: 04        .byte $04   ; 0D 
- D 3 - - - 0x01F4F2 07:F4E2: 05        .byte $05   ; 0E 
- D 3 - - - 0x01F4F3 07:F4E3: 05        .byte $05   ; 0F 
- D 3 - - - 0x01F4F4 07:F4E4: 05        .byte $05   ; 10 
- D 3 - - - 0x01F4F5 07:F4E5: 06        .byte $06   ; 11 
- D 3 - - - 0x01F4F6 07:F4E6: 06        .byte $06   ; 12 
- D 3 - - - 0x01F4F7 07:F4E7: 06        .byte $06   ; 13 
- D 3 - - - 0x01F4F8 07:F4E8: 07        .byte $07   ; 14 
- D 3 - - - 0x01F4F9 07:F4E9: 07        .byte $07   ; 15 
- D 3 - - - 0x01F4FA 07:F4EA: 07        .byte $07   ; 16 
- D 3 - - - 0x01F4FB 07:F4EB: 00        .byte $00   ; 17 



sub_F4EC:
sub_0x01F4FC:
C - - - - - 0x01F4FC 07:F4EC: A9 00     LDA #$00
C - - - - - 0x01F4FE 07:F4EE: F0 02     BEQ bra_F4F2    ; jmp



sub_F4F0:
sub_0x01F500:
C - - - - - 0x01F500 07:F4F0: A9 01     LDA #$01
bra_F4F2:
C - - - - - 0x01F502 07:F4F2: 85 0F     STA ram_000F
C - - - - - 0x01F504 07:F4F4: A5 0A     LDA ram_000A
C - - - - - 0x01F506 07:F4F6: 10 0A     BPL bra_F502
C - - - - - 0x01F508 07:F4F8: A5 0C     LDA ram_000C
C - - - - - 0x01F50A 07:F4FA: 85 0A     STA ram_000A
C - - - - - 0x01F50C 07:F4FC: 20 CE F5  JSR sub_F5CE
C - - - - - 0x01F50F 07:F4FF: 4C 05 F5  JMP loc_F505
bra_F502:
C - - - - - 0x01F512 07:F502: 20 CB F5  JSR sub_F5CB
loc_F505:
C D 3 - - - 0x01F515 07:F505: 85 17     STA ram_0017
C - - - - - 0x01F517 07:F507: 85 0C     STA ram_000C
C - - - - - 0x01F519 07:F509: A5 0F     LDA ram_000F
C - - - - - 0x01F51B 07:F50B: 4A        LSR
C - - - - - 0x01F51C 07:F50C: A9 06     LDA #$06
C - - - - - 0x01F51E 07:F50E: A0 0C     LDY #$0C
C - - - - - 0x01F520 07:F510: 90 04     BCC bra_F516
C - - - - - 0x01F522 07:F512: A9 0C     LDA #$0C
C - - - - - 0x01F524 07:F514: A0 18     LDY #$18
bra_F516:
C - - - - - 0x01F526 07:F516: 85 05     STA ram_0005
C - - - - - 0x01F528 07:F518: 84 04     STY ram_0004
C - - - - - 0x01F52A 07:F51A: A5 07     LDA ram_0007
C - - - - - 0x01F52C 07:F51C: 29 02     AND #$02
C - - - - - 0x01F52E 07:F51E: F0 07     BEQ bra_F527
C - - - - - 0x01F530 07:F520: A5 05     LDA ram_0005
C - - - - - 0x01F532 07:F522: 38        SEC
C - - - - - 0x01F533 07:F523: E5 0C     SBC ram_000C
C - - - - - 0x01F535 07:F525: 85 0C     STA ram_000C
bra_F527:
C - - - - - 0x01F537 07:F527: A5 07     LDA ram_0007
C - - - - - 0x01F539 07:F529: 4A        LSR
C - - - - - 0x01F53A 07:F52A: 90 0D     BCC bra_F539
C - - - - - 0x01F53C 07:F52C: A5 04     LDA ram_0004
C - - - - - 0x01F53E 07:F52E: 38        SEC
C - - - - - 0x01F53F 07:F52F: E5 0C     SBC ram_000C
C - - - - - 0x01F541 07:F531: C5 04     CMP ram_0004
C - - - - - 0x01F543 07:F533: 90 02     BCC bra_F537
C - - - - - 0x01F545 07:F535: A9 00     LDA #$00
bra_F537:
C - - - - - 0x01F547 07:F537: 85 0C     STA ram_000C
bra_F539:
C - - - - - 0x01F549 07:F539: A9 00     LDA #$00
C - - - - - 0x01F54B 07:F53B: 85 0E     STA ram_000E
C - - - - - 0x01F54D 07:F53D: BD 48 07  LDA ram_0748_obj,X
C - - - - - 0x01F550 07:F540: 18        CLC
C - - - - - 0x01F551 07:F541: 65 05     ADC ram_0005
C - - - - - 0x01F553 07:F543: C5 04     CMP ram_0004
C - - - - - 0x01F555 07:F545: 90 04     BCC bra_F54B
C - - - - - 0x01F557 07:F547: E6 0E     INC ram_000E
C - - - - - 0x01F559 07:F549: E5 04     SBC ram_0004
bra_F54B:
C - - - - - 0x01F55B 07:F54B: 85 0D     STA ram_000D
C - - - - - 0x01F55D 07:F54D: A5 0C     LDA ram_000C
C - - - - - 0x01F55F 07:F54F: DD 48 07  CMP ram_0748_obj,X
C - - - - - 0x01F562 07:F552: F0 17     BEQ bra_F56B
C - - - - - 0x01F564 07:F554: A4 0E     LDY ram_000E
C - - - - - 0x01F566 07:F556: D0 0A     BNE bra_F562
C - - - - - 0x01F568 07:F558: 90 0E     BCC bra_F568
C - - - - - 0x01F56A 07:F55A: C5 0D     CMP ram_000D
C - - - - - 0x01F56C 07:F55C: B0 0A     BCS bra_F568
bra_F55E:
C - - - - - 0x01F56E 07:F55E: A9 00     LDA #$00
C - - - - - 0x01F570 07:F560: F0 08     BEQ bra_F56A_RTS    ; jmp
bra_F562:
C - - - - - 0x01F572 07:F562: B0 FA     BCS bra_F55E
C - - - - - 0x01F574 07:F564: C5 0D     CMP ram_000D
C - - - - - 0x01F576 07:F566: 90 F6     BCC bra_F55E
bra_F568:
C - - - - - 0x01F578 07:F568: A9 01     LDA #$01
bra_F56A_RTS:
C - - - - - 0x01F57A 07:F56A: 60        RTS
bra_F56B:
C - - - - - 0x01F57B 07:F56B: A9 80     LDA #$80
C - - - - - 0x01F57D 07:F56D: D0 FB     BNE bra_F56A_RTS    ; jmp


; bzk garbage up to 0x01F5D9
- - - - - - 0x01F57F 07:F56F: A9 02     LDA #$02
- - - - - - 0x01F581 07:F571: 85 0F     STA ram_000F
- - - - - - 0x01F583 07:F573: 20 CB F5  JSR sub_F5CB
- - - - - - 0x01F586 07:F576: 85 0C     STA ram_000C
- - - - - - 0x01F588 07:F578: BC 64 07  LDY ram_0764_obj,X
- - - - - - 0x01F58B 07:F57B: A5 07     LDA ram_0007
- - - - - - 0x01F58D 07:F57D: 4A        LSR
- - - - - - 0x01F58E 07:F57E: 4A        LSR
- - - - - - 0x01F58F 07:F57F: 90 07     BCC bra_F588
- - - - - - 0x01F591 07:F581: A9 20     LDA #$20
- - - - - - 0x01F593 07:F583: 38        SEC
- - - - - - 0x01F594 07:F584: E5 0C     SBC ram_000C
- - - - - - 0x01F596 07:F586: 85 0C     STA ram_000C
bra_F588:
- - - - - - 0x01F598 07:F588: 46 07     LSR ram_0007
- - - - - - 0x01F59A 07:F58A: 90 09     BCC bra_F595
- - - - - - 0x01F59C 07:F58C: A9 40     LDA #$40
- - - - - - 0x01F59E 07:F58E: 38        SEC
- - - - - - 0x01F59F 07:F58F: E5 0C     SBC ram_000C
- - - - - - 0x01F5A1 07:F591: 29 3F     AND #$3F
- - - - - - 0x01F5A3 07:F593: 85 0C     STA ram_000C
bra_F595:
- - - - - - 0x01F5A5 07:F595: A9 00     LDA #$00
- - - - - - 0x01F5A7 07:F597: 85 0E     STA ram_000E
- - - - - - 0x01F5A9 07:F599: B9 CA 06  LDA ram_spd_X_hi_obj,Y
- - - - - - 0x01F5AC 07:F59C: 18        CLC
- - - - - - 0x01F5AD 07:F59D: 69 20     ADC #$20
- - - - - - 0x01F5AF 07:F59F: C9 40     CMP #$40
- - - - - - 0x01F5B1 07:F5A1: 90 04     BCC bra_F5A7
- - - - - - 0x01F5B3 07:F5A3: E6 0E     INC ram_000E
- - - - - - 0x01F5B5 07:F5A5: E9 40     SBC #$40
bra_F5A7:
- - - - - - 0x01F5B7 07:F5A7: 85 0D     STA ram_000D
- - - - - - 0x01F5B9 07:F5A9: A5 0C     LDA ram_000C
- - - - - - 0x01F5BB 07:F5AB: D9 CA 06  CMP ram_spd_X_hi_obj,Y
- - - - - - 0x01F5BE 07:F5AE: F0 17     BEQ bra_F5C7
- - - - - - 0x01F5C0 07:F5B0: A4 0E     LDY ram_000E
- - - - - - 0x01F5C2 07:F5B2: D0 0A     BNE bra_F5BE
- - - - - - 0x01F5C4 07:F5B4: 90 0E     BCC bra_F5C4
- - - - - - 0x01F5C6 07:F5B6: C5 0D     CMP ram_000D
- - - - - - 0x01F5C8 07:F5B8: B0 0A     BCS bra_F5C4
bra_F5BA:
- - - - - - 0x01F5CA 07:F5BA: A9 00     LDA #$00
- - - - - - 0x01F5CC 07:F5BC: F0 08     BEQ bra_F5C6_RTS    ; jmp
bra_F5BE:
- - - - - - 0x01F5CE 07:F5BE: B0 FA     BCS bra_F5BA
- - - - - - 0x01F5D0 07:F5C0: C5 0D     CMP ram_000D
- - - - - - 0x01F5D2 07:F5C2: 90 F6     BCC bra_F5BA
bra_F5C4:
- - - - - - 0x01F5D4 07:F5C4: A9 01     LDA #$01
bra_F5C6_RTS:
- - - - - - 0x01F5D6 07:F5C6: 60        RTS
bra_F5C7:
- - - - - - 0x01F5D7 07:F5C7: A9 80     LDA #$80
- - - - - - 0x01F5D9 07:F5C9: D0 FB     BNE bra_F5C6_RTS    ; jmp



sub_F5CB:
C - - - - - 0x01F5DB 07:F5CB: 20 82 F6  JSR sub_F682
sub_F5CE:
C - - - - - 0x01F5DE 07:F5CE: A0 00     LDY #$00
C - - - - - 0x01F5E0 07:F5D0: A5 0A     LDA ram_000A
C - - - - - 0x01F5E2 07:F5D2: 38        SEC
C - - - - - 0x01F5E3 07:F5D3: E5 08     SBC ram_0008
C - - - - - 0x01F5E5 07:F5D5: B0 05     BCS bra_F5DC
C - - - - - 0x01F5E7 07:F5D7: 49 FF     EOR #$FF
C - - - - - 0x01F5E9 07:F5D9: 69 01     ADC #$01
C - - - - - 0x01F5EB 07:F5DB: C8        INY ; 01
bra_F5DC:
C - - - - - 0x01F5EC 07:F5DC: 4A        LSR
C - - - - - 0x01F5ED 07:F5DD: 4A        LSR
C - - - - - 0x01F5EE 07:F5DE: 4A        LSR
C - - - - - 0x01F5EF 07:F5DF: 4A        LSR
C - - - - - 0x01F5F0 07:F5E0: 4A        LSR
C - - - - - 0x01F5F1 07:F5E1: 85 0A     STA ram_000A
C - - - - - 0x01F5F3 07:F5E3: A5 0B     LDA ram_000B
C - - - - - 0x01F5F5 07:F5E5: 38        SEC
C - - - - - 0x01F5F6 07:F5E6: E5 09     SBC ram_0009
C - - - - - 0x01F5F8 07:F5E8: B0 06     BCS bra_F5F0
C - - - - - 0x01F5FA 07:F5EA: 49 FF     EOR #$FF
C - - - - - 0x01F5FC 07:F5EC: 69 01     ADC #$01
C - - - - - 0x01F5FE 07:F5EE: C8        INY ; 01/02
C - - - - - 0x01F5FF 07:F5EF: C8        INY ; 02/03
bra_F5F0:
C - - - - - 0x01F600 07:F5F0: 4A        LSR
C - - - - - 0x01F601 07:F5F1: 4A        LSR
C - - - - - 0x01F602 07:F5F2: 4A        LSR
C - - - - - 0x01F603 07:F5F3: 4A        LSR
C - - - - - 0x01F604 07:F5F4: 4A        LSR
C - - - - - 0x01F605 07:F5F5: 84 07     STY ram_0007
C - - - - - 0x01F607 07:F5F7: 4A        LSR
C - - - - - 0x01F608 07:F5F8: 85 0B     STA ram_000B
C - - - - - 0x01F60A 07:F5FA: 08        PHP
C - - - - - 0x01F60B 07:F5FB: A5 0F     LDA ram_000F
C - - - - - 0x01F60D 07:F5FD: 0A        ASL
C - - - - - 0x01F60E 07:F5FE: A8        TAY
C - - - - - 0x01F60F 07:F5FF: B9 1C F6  LDA tbl_F61C,Y
C - - - - - 0x01F612 07:F602: 85 0C     STA ram_000C
C - - - - - 0x01F614 07:F604: B9 1D F6  LDA tbl_F61C + $01,Y
C - - - - - 0x01F617 07:F607: 85 0D     STA ram_000D
C - - - - - 0x01F619 07:F609: A5 0A     LDA ram_000A
C - - - - - 0x01F61B 07:F60B: 0A        ASL
C - - - - - 0x01F61C 07:F60C: 0A        ASL
C - - - - - 0x01F61D 07:F60D: 65 0B     ADC ram_000B
C - - - - - 0x01F61F 07:F60F: A8        TAY
C - - - - - 0x01F620 07:F610: B1 0C     LDA (ram_000C),Y
C - - - - - 0x01F622 07:F612: 28        PLP
C - - - - - 0x01F623 07:F613: B0 04     BCS bra_F619
C - - - - - 0x01F625 07:F615: 4A        LSR
C - - - - - 0x01F626 07:F616: 4A        LSR
C - - - - - 0x01F627 07:F617: 4A        LSR
C - - - - - 0x01F628 07:F618: 4A        LSR
bra_F619:
C - - - - - 0x01F629 07:F619: 29 0F     AND #$0F
C - - - - - 0x01F62B 07:F61B: 60        RTS


; ???
tbl_F61C:
- D 3 - - - 0x01F62C 07:F61C: 22 F6     .word off_F622_00
- D 3 - - - 0x01F62E 07:F61E: 42 F6     .word off_F642_01
- - - - - - 0x01F630 07:F620: 62 F6     .word off_F662_02



off_F622_00:
- D 3 - I - 0x01F632 07:F622: 00        .byte $00   ; 
- D 3 - I - 0x01F633 07:F623: 00        .byte $00   ; 
- D 3 - I - 0x01F634 07:F624: 00        .byte $00   ; 
- D 3 - I - 0x01F635 07:F625: 00        .byte $00   ; 
- D 3 - I - 0x01F636 07:F626: 32        .byte $32   ; 
- D 3 - I - 0x01F637 07:F627: 11        .byte $11   ; 
- D 3 - I - 0x01F638 07:F628: 00        .byte $00   ; 
- D 3 - I - 0x01F639 07:F629: 00        .byte $00   ; 
- D 3 - I - 0x01F63A 07:F62A: 32        .byte $32   ; 
- D 3 - I - 0x01F63B 07:F62B: 11        .byte $11   ; 
- D 3 - I - 0x01F63C 07:F62C: 11        .byte $11   ; 
- - - - - - 0x01F63D 07:F62D: 11        .byte $11   ; 
- D 3 - I - 0x01F63E 07:F62E: 32        .byte $32   ; 
- D 3 - I - 0x01F63F 07:F62F: 22        .byte $22   ; 
- D 3 - I - 0x01F640 07:F630: 11        .byte $11   ; 
- D 3 - I - 0x01F641 07:F631: 11        .byte $11   ; 
- D 3 - I - 0x01F642 07:F632: 33        .byte $33   ; 
- D 3 - I - 0x01F643 07:F633: 22        .byte $22   ; 
- D 3 - I - 0x01F644 07:F634: 11        .byte $11   ; 
- - - - - - 0x01F645 07:F635: 11        .byte $11   ; 
- D 3 - I - 0x01F646 07:F636: 33        .byte $33   ; 
- D 3 - I - 0x01F647 07:F637: 22        .byte $22   ; 
- - - - - - 0x01F648 07:F638: 22        .byte $22   ; 
- - - - - - 0x01F649 07:F639: 11        .byte $11   ; 
- D 3 - I - 0x01F64A 07:F63A: 33        .byte $33   ; 
- D 3 - I - 0x01F64B 07:F63B: 22        .byte $22   ; 
- - - - - - 0x01F64C 07:F63C: 22        .byte $22   ; 
- - - - - - 0x01F64D 07:F63D: 11        .byte $11   ; 
- - - - - - 0x01F64E 07:F63E: 33        .byte $33   ; 
- D 3 - I - 0x01F64F 07:F63F: 22        .byte $22   ; 
- - - - - - 0x01F650 07:F640: 22        .byte $22   ; 
- - - - - - 0x01F651 07:F641: 22        .byte $22   ; 



off_F642_01:
- D 3 - I - 0x01F652 07:F642: 00        .byte $00   ; 
- D 3 - I - 0x01F653 07:F643: 00        .byte $00   ; 
- D 3 - I - 0x01F654 07:F644: 00        .byte $00   ; 
- D 3 - I - 0x01F655 07:F645: 00        .byte $00   ; 
- D 3 - I - 0x01F656 07:F646: 63        .byte $63   ; 
- D 3 - I - 0x01F657 07:F647: 21        .byte $21   ; 
- D 3 - I - 0x01F658 07:F648: 11        .byte $11   ; 
- D 3 - I - 0x01F659 07:F649: 11        .byte $11   ; 
- D 3 - I - 0x01F65A 07:F64A: 64        .byte $64   ; 
- D 3 - I - 0x01F65B 07:F64B: 32        .byte $32   ; 
- D 3 - I - 0x01F65C 07:F64C: 21        .byte $21   ; 
- D 3 - I - 0x01F65D 07:F64D: 11        .byte $11   ; 
- D 3 - I - 0x01F65E 07:F64E: 65        .byte $65   ; 
- D 3 - I - 0x01F65F 07:F64F: 43        .byte $43   ; 
- D 3 - I - 0x01F660 07:F650: 22        .byte $22   ; 
- D 3 - I - 0x01F661 07:F651: 22        .byte $22   ; 
- D 3 - I - 0x01F662 07:F652: 65        .byte $65   ; 
- D 3 - I - 0x01F663 07:F653: 44        .byte $44   ; 
- D 3 - I - 0x01F664 07:F654: 33        .byte $33   ; 
- - - - - - 0x01F665 07:F655: 22        .byte $22   ; 
- D 3 - I - 0x01F666 07:F656: 65        .byte $65   ; 
- D 3 - I - 0x01F667 07:F657: 54        .byte $54   ; 
- D 3 - I - 0x01F668 07:F658: 33        .byte $33   ; 
- - - - - - 0x01F669 07:F659: 32        .byte $32   ; 
- D 3 - I - 0x01F66A 07:F65A: 65        .byte $65   ; 
- D 3 - I - 0x01F66B 07:F65B: 54        .byte $54   ; 
- - - - - - 0x01F66C 07:F65C: 43        .byte $43   ; 
- - - - - - 0x01F66D 07:F65D: 33        .byte $33   ; 
- D 3 - I - 0x01F66E 07:F65E: 65        .byte $65   ; 
- D 3 - I - 0x01F66F 07:F65F: 54        .byte $54   ; 
- - - - - - 0x01F670 07:F660: 44        .byte $44   ; 
- - - - - - 0x01F671 07:F661: 33        .byte $33   ; 



off_F662_02:
- - - - - - 0x01F672 07:F662: 80        .byte $80   ; 
- - - - - - 0x01F673 07:F663: 00        .byte $00   ; 
- - - - - - 0x01F674 07:F664: 00        .byte $00   ; 
- - - - - - 0x01F675 07:F665: 00        .byte $00   ; 
- - - - - - 0x01F676 07:F666: F8        .byte $F8   ; 
- - - - - - 0x01F677 07:F667: 53        .byte $53   ; 
- - - - - - 0x01F678 07:F668: 32        .byte $32   ; 
- - - - - - 0x01F679 07:F669: 21        .byte $21   ; 
- - - - - - 0x01F67A 07:F66A: FB        .byte $FB   ; 
- - - - - - 0x01F67B 07:F66B: 86        .byte $86   ; 
- - - - - - 0x01F67C 07:F66C: 54        .byte $54   ; 
- - - - - - 0x01F67D 07:F66D: 33        .byte $33   ; 
- - - - - - 0x01F67E 07:F66E: FD        .byte $FD   ; 
- - - - - - 0x01F67F 07:F66F: A8        .byte $A8   ; 
- - - - - - 0x01F680 07:F670: 75        .byte $75   ; 
- - - - - - 0x01F681 07:F671: 54        .byte $54   ; 
- - - - - - 0x01F682 07:F672: FE        .byte $FE   ; 
- - - - - - 0x01F683 07:F673: B9        .byte $B9   ; 
- - - - - - 0x01F684 07:F674: 87        .byte $87   ; 
- - - - - - 0x01F685 07:F675: 65        .byte $65   ; 
- - - - - - 0x01F686 07:F676: FE        .byte $FE   ; 
- - - - - - 0x01F687 07:F677: CB        .byte $CB   ; 
- - - - - - 0x01F688 07:F678: 98        .byte $98   ; 
- - - - - - 0x01F689 07:F679: 76        .byte $76   ; 
- - - - - - 0x01F68A 07:F67A: FE        .byte $FE   ; 
- - - - - - 0x01F68B 07:F67B: DB        .byte $DB   ; 
- - - - - - 0x01F68C 07:F67C: A9        .byte $A9   ; 
- - - - - - 0x01F68D 07:F67D: 87        .byte $87   ; 
- - - - - - 0x01F68E 07:F67E: FF        .byte $FF   ; 
- - - - - - 0x01F68F 07:F67F: DC        .byte $DC   ; 
- - - - - - 0x01F690 07:F680: BA        .byte $BA   ; 
- - - - - - 0x01F691 07:F681: 98        .byte $98   ; 



sub_F682:
C - - - - - 0x01F692 07:F682: A5 0A     LDA ram_000A
C - - - - - 0x01F694 07:F684: 29 01     AND #$01
C - - - - - 0x01F696 07:F686: A8        TAY
C - - - - - 0x01F697 07:F687: B9 A0 00  LDA ram_plr_status,Y
C - - - - - 0x01F69A 07:F68A: C9 02     CMP #con_plr_status_alive
C - - - - - 0x01F69C 07:F68C: F0 13     BEQ bra_F6A1_alive
C - - - - - 0x01F69E 07:F68E: 98        TYA
C - - - - - 0x01F69F 07:F68F: 49 01     EOR #$01
C - - - - - 0x01F6A1 07:F691: A8        TAY
C - - - - - 0x01F6A2 07:F692: B9 A0 00  LDA ram_plr_status,Y
C - - - - - 0x01F6A5 07:F695: C9 02     CMP #con_plr_status_alive
C - - - - - 0x01F6A7 07:F697: F0 08     BEQ bra_F6A1_alive
C - - - - - 0x01F6A9 07:F699: A9 FF     LDA #$FF
C - - - - - 0x01F6AB 07:F69B: 85 0A     STA ram_000A
C - - - - - 0x01F6AD 07:F69D: A9 80     LDA #$80
C - - - - - 0x01F6AF 07:F69F: D0 08     BNE bra_F6A9    ; jmp
bra_F6A1_alive:
C - - - - - 0x01F6B1 07:F6A1: B9 32 05  LDA ram_pos_Y_hi_plr,Y
C - - - - - 0x01F6B4 07:F6A4: 85 0A     STA ram_000A
C - - - - - 0x01F6B6 07:F6A6: B9 4C 05  LDA ram_pos_X_hi_plr,Y
bra_F6A9:
C - - - - - 0x01F6B9 07:F6A9: 85 0B     STA ram_000B
C - - - - - 0x01F6BB 07:F6AB: 60        RTS



loc_0x01F6BC_kill_player:
; bzk optimize
C D 3 - - - 0x01F6BC 07:F6AC: EA        NOP
loc_0x01F6BD_kill_player:
C D 3 - - - 0x01F6BD 07:F6AD: A5 5C     LDA ram_area_end_flags
C - - - - - 0x01F6BF 07:F6AF: D0 15     BNE bra_F6C6_RTS
C - - - - - 0x01F6C1 07:F6B1: A9 25     LDA #con_sound_25
C - - - - - 0x01F6C3 07:F6B3: 20 DE FD  JSR sub_FDDE_play_sound
C - - - - - 0x01F6C6 07:F6B6: A9 00     LDA #$00
C - - - - - 0x01F6C8 07:F6B8: 95 C4     STA ram_plr_invinc,X
C - - - - - 0x01F6CA 07:F6BA: A9 01     LDA #$01
C - - - - - 0x01F6CC 07:F6BC: 95 C0     STA ram_plr_respawn_timer,X
C - - - - - 0x01F6CE 07:F6BE: A9 01     LDA #$01    ; dead
C - - - - - 0x01F6D0 07:F6C0: 95 C2     STA ram_plr_dead_flag,X
C - - - - - 0x01F6D2 07:F6C2: A9 03     LDA #con_plr_status_death_init
C - - - - - 0x01F6D4 07:F6C4: 95 A0     STA ram_plr_status,X
bra_F6C6_RTS:
C - - - - - 0x01F6D6 07:F6C6: 60        RTS


; bzk garbage
- - - - - - 0x01F6D7 07:F6C7: A2 0F     LDX #$0F
bra_F6C9_loop:
- - - - - - 0x01F6D9 07:F6C9: 20 D0 F6  JSR sub_F6D0
- - - - - - 0x01F6DC 07:F6CC: CA        DEX
- - - - - - 0x01F6DD 07:F6CD: 10 FA     BPL bra_F6C9_loop
- - - - - - 0x01F6DF 07:F6CF: 60        RTS



sub_F6D0:
; bzk garbage
- - - - - - 0x01F6E0 07:F6D0: A9 00     LDA #$00
- - - - - - 0x01F6E2 07:F6D2: 9D 68 05  STA ram_0568_plr_bullet_graphics,X
- - - - - - 0x01F6E5 07:F6D5: 9D 78 05  STA ram_plr_bullet_pos_Y_hi,X
- - - - - - 0x01F6E8 07:F6D8: 9D 88 05  STA ram_plr_bullet_pos_X_hi,X
- - - - - - 0x01F6EB 07:F6DB: 9D 98 05  STA ram_plr_bullet_attr_spr,X
- - - - - - 0x01F6EE 07:F6DE: 9D A8 05  STA ram_05A8_plr_bullet,X
- - - - - - 0x01F6F1 07:F6E1: 9D B8 05  STA ram_plr_bullet_anim_id,X
- - - - - - 0x01F6F4 07:F6E4: 9D C8 05  STA ram_plr_bullet_pos_Y_lo,X
- - - - - - 0x01F6F7 07:F6E7: 9D D8 05  STA ram_plr_bullet_pos_X_lo,X
- - - - - - 0x01F6FA 07:F6EA: 9D E8 05  STA ram_plr_bullet_spd_Y_lo,X
- - - - - - 0x01F6FD 07:F6ED: 9D 58 06  STA ram_plr_bullet_spd_Y_hi,X
- - - - - - 0x01F700 07:F6F0: 9D 08 06  STA ram_plr_bullet_spd_X_lo,X
- - - - - - 0x01F703 07:F6F3: 9D 18 06  STA ram_plr_bullet_spd_X_hi,X
- - - - - - 0x01F706 07:F6F6: 9D 28 06  STA ram_0628_plr_bullet,X
- - - - - - 0x01F709 07:F6F9: 9D 38 06  STA ram_0638_plr_bullet_hitbox_index,X
- - - - - - 0x01F70C 07:F6FC: 60        RTS



sub_F6FD_try_to_find_free_object_slot:
sub_0x01F70D_try_to_find_free_object_slot:
; result
    ; Z = 0 if object was created successfully
    ; Z = 1 if failed to create object
C - - - - - 0x01F70D 07:F6FD: 20 11 F7  JSR sub_F711_find_free_slot
C - - - - - 0x01F710 07:F700: D0 03     BNE bra_F705_RTS    ; if not found
C - - - - - 0x01F712 07:F702: 4C 3F F7  JMP loc_F73F_start_preparing_new_object
bra_F705_RTS:
C - - - - - 0x01F715 07:F705: 60        RTS



sub_0x01F716_try_to_find_free_object_slot___4_slots:
C - - - - - 0x01F716 07:F706: A2 03     LDX #$03
sub_0x01F718_try_to_find_free_object_slot___X_slots:
C - - - - - 0x01F718 07:F708: 20 13 F7  JSR sub_F713_find_free_slot_custom_X
C - - - - - 0x01F71B 07:F70B: D0 03     BNE bra_F710_RTS
C - - - - - 0x01F71D 07:F70D: 4C 3F F7  JMP loc_F73F_start_preparing_new_object
bra_F710_RTS:
C - - - - - 0x01F720 07:F710: 60        RTS



; trying to find a free slot by looking at object state (00 = free)
; result
    ; Z = 0 if free slot was found
        ; X = free slot index
    ; Z = 1 if failed to find free slot
sub_F711_find_free_slot:
C - - - - - 0x01F721 07:F711: A2 0D     LDX #con_max_index_enemies
sub_F713_find_free_slot_custom_X:
bra_F713_loop:
C - - - - - 0x01F723 07:F713: BD 68 06  LDA ram_obj_state,X
C - - - - - 0x01F726 07:F716: F0 03     BEQ bra_F71B_RTS
C - - - - - 0x01F728 07:F718: CA        DEX
C - - - - - 0x01F729 07:F719: 10 F8     BPL bra_F713_loop
; Z = 0
bra_F71B_RTS:   ; Z = 1
C - - - - - 0x01F72B 07:F71B: 60        RTS



sub_0x01F72C_try_to_find_enemy_bullet:
C - - - - - 0x01F72C 07:F71C: 20 25 F7  JSR sub_F725_find_bullet_in_obj_list
C - - - - - 0x01F72F 07:F71F: D0 03     BNE bra_F724_RTS
C - - - - - 0x01F731 07:F721: 4C 3F F7  JMP loc_F73F_start_preparing_new_object
bra_F724_RTS:
C - - - - - 0x01F734 07:F724: 60        RTS



; result
    ; Z = 0 if found
        ; X = object index
    ; Z = 1 if not found
sub_F725_find_bullet_in_obj_list:
C - - - - - 0x01F735 07:F725: A2 0D     LDX #con_max_index_enemies
bra_F727_loop:
C - - - - - 0x01F737 07:F727: BD D8 06  LDA ram_obj_id,X
C - - - - - 0x01F73A 07:F72A: C9 02     CMP #con_obj_id_02
C - - - - - 0x01F73C 07:F72C: F0 03     BEQ bra_F731_RTS    ; if found
C - - - - - 0x01F73E 07:F72E: CA        DEX
C - - - - - 0x01F73F 07:F72F: 10 F6     BPL bra_F727_loop
; Z = 1
bra_F731_RTS:   ; Z = 0
C - - - - - 0x01F741 07:F731: 60        RTS



sub_F732_delete_all_objects_and_clear_their_data:
C - - - - - 0x01F742 07:F732: A2 0D     LDX #con_max_index_enemies
bra_F734_loop:
C - - - - - 0x01F744 07:F734: 20 4E F7  JSR sub_F74E_delete_object_and_clear_its_data
C - - - - - 0x01F747 07:F737: CA        DEX
C - - - - - 0x01F748 07:F738: 10 FA     BPL bra_F734_loop
C - - - - - 0x01F74A 07:F73A: 60        RTS


; bzk garbage
- - - - - - 0x01F74B 07:F73B: A9 00     LDA #$00
- - - - - - 0x01F74D 07:F73D: F0 4D     BEQ bra_F78C    ; jmp



loc_F73F_start_preparing_new_object:
sub_0x01F74F_start_preparing_new_object:
C D 3 - - - 0x01F74F 07:F73F: 20 9E F7  JSR sub_F79E_prepare_object
C - - - - - 0x01F752 07:F742: A9 01     LDA #$01
C - - - - - 0x01F754 07:F744: 9D 68 06  STA ram_obj_state,X
C - - - - - 0x01F757 07:F747: 9D 76 06  STA ram_obj_hp,X
C - - - - - 0x01F75A 07:F74A: A9 00     LDA #$00    ; success flag
C - - - - - 0x01F75C 07:F74C: F0 0B     BEQ bra_F759    ; jmp



sub_F74E_delete_object_and_clear_its_data:
C - - - - - 0x01F75E 07:F74E: 20 9C F7  JSR sub_F79C_delete_object_01
C - - - - - 0x01F761 07:F751: A9 00     LDA #$00
C - - - - - 0x01F763 07:F753: 9D 68 06  STA ram_obj_state,X
C - - - - - 0x01F766 07:F756: 9D 76 06  STA ram_obj_hp,X
bra_F759:
C - - - - - 0x01F769 07:F759: 9D 1E 07  STA ram_obj_flags,X
C - - - - - 0x01F76C 07:F75C: 9D 08 05  STA ram_anim_id_enemy,X
C - - - - - 0x01F76F 07:F75F: 9D 56 05  STA ram_attr_spr_enemy,X
C - - - - - 0x01F772 07:F762: 9D 8E 07  STA ram_078E_obj,X
C - - - - - 0x01F775 07:F765: 9D 9C 07  STA ram_079C_obj,X
C - - - - - 0x01F778 07:F768: 9D 22 05  STA ram_pos_Y_hi_enemy,X
C - - - - - 0x01F77B 07:F76B: 9D 84 06  STA ram_pos_Y_lo_enemy,X
C - - - - - 0x01F77E 07:F76E: 9D 92 06  STA ram_pos_X_lo_enemy,X
C - - - - - 0x01F781 07:F771: 9D A0 06  STA ram_spd_Y_lo_obj,X
C - - - - - 0x01F784 07:F774: 9D BC 06  STA ram_spd_X_lo_obj,X
C - - - - - 0x01F787 07:F777: 9D AE 06  STA ram_spd_Y_hi_obj,X
C - - - - - 0x01F78A 07:F77A: 9D CA 06  STA ram_spd_X_hi_obj,X
C - - - - - 0x01F78D 07:F77D: 9D E6 06  STA ram_06E6_obj,X
C - - - - - 0x01F790 07:F780: 9D F4 06  STA ram_06F4_obj,X
C - - - - - 0x01F793 07:F783: 9D 10 07  STA ram_0710_obj,X
C - - - - - 0x01F796 07:F786: 9D 02 07  STA ram_0702_obj,X
C - - - - - 0x01F799 07:F789: 9D 2C 07  STA ram_072C_obj,X
bra_F78C:
C - - - - - 0x01F79C 07:F78C: 9D 48 07  STA ram_0748_obj,X
C - - - - - 0x01F79F 07:F78F: 9D 56 07  STA ram_0756_obj,X
C - - - - - 0x01F7A2 07:F792: 9D 64 07  STA ram_0764_obj,X
C - - - - - 0x01F7A5 07:F795: 9D 72 07  STA ram_0772_obj,X
C - - - - - 0x01F7A8 07:F798: 9D 80 07  STA ram_0780_obj,X
C - - - - - 0x01F7AB 07:F79B: 60        RTS



sub_F79C_delete_object_01:
sub_0x01F7AC_delete_object_01:
C - - - - - 0x01F7AC 07:F79C: A0 7F     LDY #$7F
sub_F79E_prepare_object:
sub_0x01F7AE_prepare_object:
C - - - - - 0x01F7AE 07:F79E: B9 E4 F8  LDA tbl_F8E4,Y
C - - - - - 0x01F7B1 07:F7A1: 9D 3A 07  STA ram_073A_obj_hitbox_index,X
C - - - - - 0x01F7B4 07:F7A4: 98        TYA
C - - - - - 0x01F7B5 07:F7A5: 9D D8 06  STA ram_obj_id,X
C - - - - - 0x01F7B8 07:F7A8: 60        RTS



loc_F7A9_write_palette_to_buffer_with_conditions:
sub_F7A9_write_palette_to_buffer_with_conditions:
C D 3 - - - 0x01F7B9 07:F7A9: A5 86     LDA ram_0085_for_2000 + $01
C - - - - - 0x01F7BB 07:F7AB: D0 06     BNE bra_F7B3_RTS
C - - - - - 0x01F7BD 07:F7AD: A5 1E     LDA ram_index_ppu_buffer
C - - - - - 0x01F7BF 07:F7AF: C9 20     CMP #$20
C - - - - - 0x01F7C1 07:F7B1: 90 0B     BCC bra_F7BE
; if buffer is too loaded
bra_F7B3_RTS:
C - - - - - 0x01F7C3 07:F7B3: 60        RTS


; bzk garbage
- - - - - - 0x01F7C4 07:F7B4: A0 05     LDY #$05
- - - - - - 0x01F7C6 07:F7B6: D0 02     BNE bra_F7BA    ; jmp



sub_0x01F7C8_write_palette_to_buffer:
C - - - - - 0x01F7C8 07:F7B8: A0 02     LDY #$02
bra_F7BA:
C - - - - - 0x01F7CA 07:F7BA: A9 10     LDA #$10
C - - - - - 0x01F7CC 07:F7BC: D0 04     BNE bra_F7C2    ; jmp



bra_F7BE:
sub_F7BE_write_palette_to_buffer:
sub_0x01F7CE_write_palette_to_buffer:
C - - - - - 0x01F7CE 07:F7BE: A0 02     LDY #$02
C - - - - - 0x01F7D0 07:F7C0: A9 20     LDA #$20
bra_F7C2:
C - - - - - 0x01F7D2 07:F7C2: 85 00     STA ram_0000
C - - - - - 0x01F7D4 07:F7C4: A6 1E     LDX ram_index_ppu_buffer
C - - - - - 0x01F7D6 07:F7C6: A9 03     LDA #$03
C - - - - - 0x01F7D8 07:F7C8: 85 01     STA ram_0001
bra_F7CA_loop:
C - - - - - 0x01F7DA 07:F7CA: B9 F2 F7  LDA tbl_F7F2_ppu_addr,Y
C - - - - - 0x01F7DD 07:F7CD: 9D 00 03  STA ram_nmt_buffer,X
C - - - - - 0x01F7E0 07:F7D0: E8        INX
C - - - - - 0x01F7E1 07:F7D1: 88        DEY
C - - - - - 0x01F7E2 07:F7D2: C6 01     DEC ram_0001
C - - - - - 0x01F7E4 07:F7D4: D0 F4     BNE bra_F7CA_loop
C - - - - - 0x01F7E6 07:F7D6: A8        TAY
bra_F7D7_loop:
C - - - - - 0x01F7E7 07:F7D7: B9 E0 03  LDA ram_pal_buffer,Y
C - - - - - 0x01F7EA 07:F7DA: 9D 00 03  STA ram_nmt_buffer,X
C - - - - - 0x01F7ED 07:F7DD: E8        INX
C - - - - - 0x01F7EE 07:F7DE: C8        INY
C - - - - - 0x01F7EF 07:F7DF: C6 00     DEC ram_0000
C - - - - - 0x01F7F1 07:F7E1: D0 F4     BNE bra_F7D7_loop
C - - - - - 0x01F7F3 07:F7E3: A0 08     LDY #$08
bra_F7E5_loop:
C - - - - - 0x01F7F5 07:F7E5: B9 F8 F7  LDA tbl_F7F8,Y
C - - - - - 0x01F7F8 07:F7E8: 9D 00 03  STA ram_nmt_buffer,X
C - - - - - 0x01F7FB 07:F7EB: E8        INX
C - - - - - 0x01F7FC 07:F7EC: 88        DEY
C - - - - - 0x01F7FD 07:F7ED: 10 F6     BPL bra_F7E5_loop
C - - - - - 0x01F7FF 07:F7EF: 86 1E     STX ram_index_ppu_buffer
C - - - - - 0x01F801 07:F7F1: 60        RTS



tbl_F7F2_ppu_addr:
; 02
- D 3 - - - 0x01F802 07:F7F2: 00 3F     .word $3F00 ; ppu address
- D 3 - - - 0x01F804 07:F7F4: 01        .byte con_buf_mode_01   ; 
; 05
; bzk garbage 0x01F7C4
- - - - - - 0x01F805 07:F7F5: 10 3F     .word $3F10 ; ppu address
- - - - - - 0x01F807 07:F7F7: 01        .byte con_buf_mode_01   ; 



tbl_F7F8:
- D 3 - - - 0x01F808 07:F7F8: FF        .byte $FF   ; close buffer

- D 3 - - - 0x01F809 07:F7F9: 00 00     .word $0000 ; ppu address
- D 3 - - - 0x01F80B 07:F7FB: 01        .byte con_buf_mode_01   ; 

- D 3 - - - 0x01F80C 07:F7FC: FF        .byte $FF   ; change mode

- D 3 - - - 0x01F80D 07:F7FD: 00 3F     .word $3F00 ; ppu address
- D 3 - - - 0x01F80F 07:F7FF: 01        .byte con_buf_mode_01   ; 

- D 3 - - - 0x01F810 07:F800: FF        .byte $FF   ; change mode



loc_0x01F811:
C D 3 - - - 0x01F811 07:F801: A9 00     LDA #$00
C - - - - - 0x01F813 07:F803: 9D A8 05  STA ram_05A8_plr_bullet,X
C - - - - - 0x01F816 07:F806: 9D 68 05  STA ram_0568_plr_bullet_graphics,X
C - - - - - 0x01F819 07:F809: 9D 98 05  STA ram_plr_bullet_attr_spr,X
C - - - - - 0x01F81C 07:F80C: 9D 38 06  STA ram_0638_plr_bullet_hitbox_index,X
C - - - - - 0x01F81F 07:F80F: 60        RTS



sub_0x01F820:
C - - - - - 0x01F820 07:F810: 48        PHA
C - - - - - 0x01F821 07:F811: 4A        LSR
C - - - - - 0x01F822 07:F812: 68        PLA
C - - - - - 0x01F823 07:F813: B0 0E     BCS bra_F823
C - - - - - 0x01F825 07:F815: C4 82     CPY ram_0082_area_config
C - - - - - 0x01F827 07:F817: 90 1C     BCC bra_F835
C - - - - - 0x01F829 07:F819: D0 18     BNE bra_F833
C - - - - - 0x01F82B 07:F81B: C5 FC     CMP ram_scroll_Y
C - - - - - 0x01F82D 07:F81D: 90 16     BCC bra_F835
C - - - - - 0x01F82F 07:F81F: D0 12     BNE bra_F833
C - - - - - 0x01F831 07:F821: F0 0C     BEQ bra_F82F    ; jmp
bra_F823:
- - - - - - 0x01F833 07:F823: C4 82     CPY ram_0082_area_config
- - - - - - 0x01F835 07:F825: 90 0C     BCC bra_F833
- - - - - - 0x01F837 07:F827: D0 0C     BNE bra_F835
- - - - - - 0x01F839 07:F829: C5 FC     CMP ram_scroll_Y
- - - - - - 0x01F83B 07:F82B: 90 06     BCC bra_F833
- - - - - - 0x01F83D 07:F82D: D0 06     BNE bra_F835
bra_F82F:
C - - - - - 0x01F83F 07:F82F: A9 00     LDA #$00
C - - - - - 0x01F841 07:F831: F0 02     BEQ bra_F835    ; jmp
bra_F833:
C - - - - - 0x01F843 07:F833: 49 01     EOR #$01
bra_F835:
C - - - - - 0x01F845 07:F835: 85 98     STA ram_0098
C - - - - - 0x01F847 07:F837: 84 9C     STY ram_009C
C - - - - - 0x01F849 07:F839: 60        RTS



sub_F83A:
C - - - - - 0x01F84A 07:F83A: A9 FF     LDA #$FF
C - - - - - 0x01F84C 07:F83C: 85 48     STA ram_0048
C - - - - - 0x01F84E 07:F83E: 85 49     STA ram_0049
C - - - - - 0x01F850 07:F840: A5 45     LDA ram_scanline
C - - - - - 0x01F852 07:F842: 18        CLC
C - - - - - 0x01F853 07:F843: 65 46     ADC ram_0046
C - - - - - 0x01F855 07:F845: B0 08     BCS bra_F84F_RTS
; C = 0
C - - - - - 0x01F857 07:F847: 85 48     STA ram_0048
C - - - - - 0x01F859 07:F849: 65 47     ADC ram_0047
C - - - - - 0x01F85B 07:F84B: B0 02     BCS bra_F84F_RTS
C - - - - - 0x01F85D 07:F84D: 85 49     STA ram_0049
bra_F84F_RTS:
C - - - - - 0x01F85F 07:F84F: 60        RTS



sub_0x01F860:
C - - - - - 0x01F860 07:F850: A5 01     LDA ram_0001
C - - - - - 0x01F862 07:F852: 29 0F     AND #$0F
C - - - - - 0x01F864 07:F854: 85 02     STA ram_0002
C - - - - - 0x01F866 07:F856: A9 09     LDA #$09
C - - - - - 0x01F868 07:F858: A4 09     LDY ram_0009
C - - - - - 0x01F86A 07:F85A: C0 06     CPY #$06
C - - - - - 0x01F86C 07:F85C: 90 04     BCC bra_F862_not_diagonal_surface
C - - - - - 0x01F86E 07:F85E: 20 6B F8  JSR sub_F86B
C - - - - - 0x01F871 07:F861: 18        CLC
bra_F862_not_diagonal_surface:
C - - - - - 0x01F872 07:F862: 65 06     ADC ram_0006
C - - - - - 0x01F874 07:F864: 38        SEC
C - - - - - 0x01F875 07:F865: E5 02     SBC ram_0002
C - - - - - 0x01F877 07:F867: 38        SEC
C - - - - - 0x01F878 07:F868: E5 07     SBC ram_0007
C - - - - - 0x01F87A 07:F86A: 60        RTS



sub_F86B:
bra_F86B_loop:
C - - - - - 0x01F87B 07:F86B: A5 00     LDA ram_0000
C - - - - - 0x01F87D 07:F86D: 29 0F     AND #$0F
C - - - - - 0x01F87F 07:F86F: 85 04     STA ram_0004
C - - - - - 0x01F881 07:F871: D9 9C F8  CMP tbl_F8A2 - $06,Y
C - - - - - 0x01F884 07:F874: 6A        ROR
C - - - - - 0x01F885 07:F875: 59 A2 F8  EOR tbl_F8A8 - $06,Y
C - - - - - 0x01F888 07:F878: 30 0E     BMI bra_F888
C - - - - - 0x01F88A 07:F87A: A5 06     LDA ram_0006
C - - - - - 0x01F88C 07:F87C: 18        CLC
C - - - - - 0x01F88D 07:F87D: 79 A8 F8  ADC tbl_F8AE - $06,Y
C - - - - - 0x01F890 07:F880: 85 06     STA ram_0006
C - - - - - 0x01F892 07:F882: B9 AE F8  LDA tbl_F8B4 - $06,Y
C - - - - - 0x01F895 07:F885: A8        TAY
C - - - - - 0x01F896 07:F886: D0 E3     BNE bra_F86B_loop    ; jmp?
bra_F888:
C - - - - - 0x01F898 07:F888: A5 04     LDA ram_0004
C - - - - - 0x01F89A 07:F88A: 38        SEC
C - - - - - 0x01F89B 07:F88B: F9 B4 F8  SBC tbl_F8BA - $06,Y
C - - - - - 0x01F89E 07:F88E: 4A        LSR
C - - - - - 0x01F89F 07:F88F: 85 03     STA ram_0003
C - - - - - 0x01F8A1 07:F891: B9 C0 F8  LDA tbl_F8C6 - $06,Y
C - - - - - 0x01F8A4 07:F894: 0A        ASL
C - - - - - 0x01F8A5 07:F895: A5 03     LDA ram_0003
C - - - - - 0x01F8A7 07:F897: 90 05     BCC bra_F89E
C - - - - - 0x01F8A9 07:F899: 49 FF     EOR #$FF
C - - - - - 0x01F8AB 07:F89B: 69 00     ADC #$00
C - - - - - 0x01F8AD 07:F89D: 18        CLC
bra_F89E:
C - - - - - 0x01F8AE 07:F89E: 79 BA F8  ADC tbl_F8C0 - $06,Y
C - - - - - 0x01F8B1 07:F8A1: 60        RTS


; ??? и ниже таблицы
tbl_F8A2:
- D 3 - - - 0x01F8B2 07:F8A2: 7F        .byte $7F   ; 06
- D 3 - - - 0x01F8B3 07:F8A3: 04        .byte $04   ; 07
- D 3 - - - 0x01F8B4 07:F8A4: 04        .byte $04   ; 08
- D 3 - - - 0x01F8B5 07:F8A5: 7F        .byte $7F   ; 09
- D 3 - - - 0x01F8B6 07:F8A6: 0C        .byte $0C   ; 0A
- D 3 - - - 0x01F8B7 07:F8A7: 0C        .byte $0C   ; 0B



tbl_F8A8:
- D 3 - - - 0x01F8B8 07:F8A8: 80        .byte $80   ; 06
- D 3 - - - 0x01F8B9 07:F8A9: 80        .byte $80   ; 07
- D 3 - - - 0x01F8BA 07:F8AA: 00        .byte $00   ; 08
- D 3 - - - 0x01F8BB 07:F8AB: 80        .byte $80   ; 09
- D 3 - - - 0x01F8BC 07:F8AC: 00        .byte $00   ; 0A
- D 3 - - - 0x01F8BD 07:F8AD: 80        .byte $80   ; 0B



tbl_F8AE:
- - - - - - 0x01F8BE 07:F8AE: 00        .byte $00   ; 06
- D 3 - - - 0x01F8BF 07:F8AF: F0        .byte $F0   ; 07
- D 3 - - - 0x01F8C0 07:F8B0: 10        .byte $10   ; 08
- - - - - - 0x01F8C1 07:F8B1: 00        .byte $00   ; 09
- D 3 - - - 0x01F8C2 07:F8B2: F0        .byte $F0   ; 0A
- D 3 - - - 0x01F8C3 07:F8B3: 10        .byte $10   ; 0B



tbl_F8B4:
- - - - - - 0x01F8C4 07:F8B4: 00        .byte $00   ; 06
- D 3 - - - 0x01F8C5 07:F8B5: 08        .byte $08   ; 07
- D 3 - - - 0x01F8C6 07:F8B6: 07        .byte $07   ; 08
- - - - - - 0x01F8C7 07:F8B7: 00        .byte $00   ; 09
- D 3 - - - 0x01F8C8 07:F8B8: 0B        .byte $0B   ; 0A
- D 3 - - - 0x01F8C9 07:F8B9: 0A        .byte $0A   ; 0B



tbl_F8BA:
- D 3 - - - 0x01F8CA 07:F8BA: 00        .byte $00   ; 06
- D 3 - - - 0x01F8CB 07:F8BB: 00        .byte $00   ; 07
- D 3 - - - 0x01F8CC 07:F8BC: 04        .byte $04   ; 08
- D 3 - - - 0x01F8CD 07:F8BD: 00        .byte $00   ; 09
- D 3 - - - 0x01F8CE 07:F8BE: 0C        .byte $0C   ; 0A
- D 3 - - - 0x01F8CF 07:F8BF: 00        .byte $00   ; 0B



tbl_F8C0:
- D 3 - - - 0x01F8D0 07:F8C0: 09        .byte $09   ; 06
- D 3 - - - 0x01F8D1 07:F8C1: 01        .byte $01   ; 07
- D 3 - - - 0x01F8D2 07:F8C2: 0F        .byte $0F   ; 08
- D 3 - - - 0x01F8D3 07:F8C3: 02        .byte $02   ; 09
- D 3 - - - 0x01F8D4 07:F8C4: 00        .byte $00   ; 0A
- D 3 - - - 0x01F8D5 07:F8C5: 0A        .byte $0A   ; 0B



tbl_F8C6:
- D 3 - - - 0x01F8D6 07:F8C6: 80        .byte $80   ; 06
- D 3 - - - 0x01F8D7 07:F8C7: 80        .byte $80   ; 07
- D 3 - - - 0x01F8D8 07:F8C8: 80        .byte $80   ; 08
- D 3 - - - 0x01F8D9 07:F8C9: 00        .byte $00   ; 09
- D 3 - - - 0x01F8DA 07:F8CA: 00        .byte $00   ; 0A
- D 3 - - - 0x01F8DB 07:F8CB: 00        .byte $00   ; 0B



tbl_0x01F8DC:
- D 3 - - - 0x01F8DC 07:F8CC: 00        .byte $00   ; 00 
- D 3 - - - 0x01F8DD 07:F8CD: 00        .byte $00   ; 01 
- D 3 - - - 0x01F8DE 07:F8CE: 01        .byte $01   ; 02 
- D 3 - - - 0x01F8DF 07:F8CF: 01        .byte $01   ; 03 
- D 3 - - - 0x01F8E0 07:F8D0: 01        .byte $01   ; 04 
- - - - - - 0x01F8E1 07:F8D1: 01        .byte $01   ; 05 
- D 3 - - - 0x01F8E2 07:F8D2: 01        .byte $01   ; 06 
- D 3 - - - 0x01F8E3 07:F8D3: 01        .byte $01   ; 07 
- D 3 - - - 0x01F8E4 07:F8D4: 01        .byte $01   ; 08 
- D 3 - - - 0x01F8E5 07:F8D5: 01        .byte $01   ; 09 
- D 3 - - - 0x01F8E6 07:F8D6: 01        .byte $01   ; 0A 
- D 3 - - - 0x01F8E7 07:F8D7: 01        .byte $01   ; 0B 



tbl_0x01F8E8:
- D 3 - - - 0x01F8E8 07:F8D8: 00        .byte $00   ; 00 
- D 3 - - - 0x01F8E9 07:F8D9: 00        .byte $00   ; 01 
- D 3 - - - 0x01F8EA 07:F8DA: 01        .byte $01   ; 02 
- D 3 - - - 0x01F8EB 07:F8DB: 01        .byte $01   ; 03 
- - - - - - 0x01F8EC 07:F8DC: 01        .byte $01   ; 04 
- - - - - - 0x01F8ED 07:F8DD: 01        .byte $01   ; 05 
- D 3 - - - 0x01F8EE 07:F8DE: 00        .byte $00   ; 06 
- D 3 - - - 0x01F8EF 07:F8DF: 00        .byte $00   ; 07 
- D 3 - - - 0x01F8F0 07:F8E0: 00        .byte $00   ; 08 
- D 3 - - - 0x01F8F1 07:F8E1: 00        .byte $00   ; 09 
- D 3 - - - 0x01F8F2 07:F8E2: 00        .byte $00   ; 0A 
- D 3 - - - 0x01F8F3 07:F8E3: 00        .byte $00   ; 0B 



tbl_F8E4:
;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 3 - - - 0x01F8F4 07:F8E4: 00        .byte $00, $00, $04, $08, $00, $08, $04, $10, $0C, $08, $00, $0C, $0C, $0C, $04, $00   ; 00
- D 3 - - - 0x01F904 07:F8F4: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 10
- D 3 - - - 0x01F914 07:F904: 0C        .byte $0C, $00, $00, $00, $00, $00, $00, $00, $0C, $04, $00, $04, $00, $00, $0C, $0C   ; 20
- D 3 - - - 0x01F924 07:F914: 04        .byte $04, $00, $0C, $04, $08, $04, $18, $04, $0C, $00, $04, $1C, $04, $0C, $00, $00   ; 30
- D 3 - - - 0x01F934 07:F924: 08        .byte $08, $00, $00, $00, $00, $0C, $00, $0C, $04, $00, $00, $00, $00, $00, $00, $00   ; 40
- D 3 - - - 0x01F944 07:F934: 00        .byte $00, $00, $0C, $00, $0C, $04, $00, $04, $00, $0C, $00, $0C, $08, $0C, $00, $0C   ; 50
- D 3 - - - 0x01F954 07:F944: 00        .byte $00, $00, $00, $08, $14, $0C, $0C, $0C, $00, $18, $00, $00, $00, $00, $00, $00   ; 60
- D 3 - - - 0x01F964 07:F954: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 70



sub_0x01F974_write_3_colors_with_condition:
C - - - - - 0x01F974 07:F964: A5 5C     LDA ram_area_end_flags
C - - - - - 0x01F976 07:F966: D0 13     BNE bra_F97B_RTS
sub_F968_write_3_colors:
sub_0x01F978_write_3_colors:
; see con_F97C_colors
C - - - - - 0x01F978 07:F968: BE 7C F9  LDX tbl_F97C,Y
C - - - - - 0x01F97B 07:F96B: A9 03     LDA #$03
C - - - - - 0x01F97D 07:F96D: 85 00     STA ram_0000
bra_F96F_loop:
C - - - - - 0x01F97F 07:F96F: B9 7D F9  LDA tbl_F97C + $01,Y
C - - - - - 0x01F982 07:F972: 9D E0 03  STA ram_pal_buffer,X
C - - - - - 0x01F985 07:F975: C8        INY
C - - - - - 0x01F986 07:F976: E8        INX
C - - - - - 0x01F987 07:F977: C6 00     DEC ram_0000
C - - - - - 0x01F989 07:F979: D0 F4     BNE bra_F96F_loop
bra_F97B_RTS:
C - - - - - 0x01F98B 07:F97B: 60        RTS



tbl_F97C:
; see con_F97C_colors
; 00 
- D 3 - - - 0x01F98C 07:F97C: 09        .byte $09   ; buffer index
- D 3 - - - 0x01F98D 07:F97D: 20        .byte $20, $18, $08   ; colors
; 04 
- D 3 - - - 0x01F990 07:F980: 0D        .byte $0D   ; buffer index
- D 3 - - - 0x01F991 07:F981: 0A        .byte $0A, $18, $08   ; colors
; 08 
- D 3 - - - 0x01F994 07:F984: 09        .byte $09   ; buffer index
- D 3 - - - 0x01F995 07:F985: 02        .byte $02, $12, $22   ; colors
; 0C 
- D 3 - - - 0x01F998 07:F988: 0D        .byte $0D   ; buffer index
- D 3 - - - 0x01F999 07:F989: 02        .byte $02, $12, $0A   ; colors
; 10 
- D 3 - - - 0x01F99C 07:F98C: 09        .byte $09   ; buffer index
- D 3 - - - 0x01F99D 07:F98D: 18        .byte $18, $1A, $0A   ; colors
; 14 
- D 3 - - - 0x01F9A0 07:F990: 0D        .byte $0D   ; buffer index
- D 3 - - - 0x01F9A1 07:F991: 20        .byte $20, $10, $00   ; colors
; 18 
- D 3 - - - 0x01F9A4 07:F994: 01        .byte $01   ; buffer index
- D 3 - - - 0x01F9A5 07:F995: 18        .byte $18, $1A, $0A   ; colors
; 1C 
- D 3 - - - 0x01F9A8 07:F998: 05        .byte $05   ; buffer index
- D 3 - - - 0x01F9A9 07:F999: 20        .byte $20, $10, $00   ; colors
; 20 
- D 3 - - - 0x01F9AC 07:F99C: 05        .byte $05   ; buffer index
- D 3 - - - 0x01F9AD 07:F99D: 28        .byte $28, $18, $08   ; colors
; 24 
- D 3 - - - 0x01F9B0 07:F9A0: 09        .byte $09   ; buffer index
- D 3 - - - 0x01F9B1 07:F9A1: 08        .byte $08, $10, $00   ; colors
; 28 
- D 3 - - - 0x01F9B4 07:F9A4: 0D        .byte $0D   ; buffer index
- D 3 - - - 0x01F9B5 07:F9A5: 00        .byte $00, $18, $0A   ; colors
; 2C 
- D 3 - - - 0x01F9B8 07:F9A8: 09        .byte $09   ; buffer index
- D 3 - - - 0x01F9B9 07:F9A9: 2C        .byte $2C, $1C, $0C   ; colors
; 30 
- D 3 - - - 0x01F9BC 07:F9AC: 05        .byte $05   ; buffer index
- D 3 - - - 0x01F9BD 07:F9AD: 2A        .byte $2A, $1B, $0B   ; colors
; 34 
- D 3 - - - 0x01F9C0 07:F9B0: 01        .byte $01   ; buffer index
- D 3 - - - 0x01F9C1 07:F9B1: 24        .byte $24, $14, $04   ; colors
; 38 
- D 3 - - - 0x01F9C4 07:F9B4: 09        .byte $09   ; buffer index
- D 3 - - - 0x01F9C5 07:F9B5: 23        .byte $23, $13, $03   ; colors
; 3C 
- D 3 - - - 0x01F9C8 07:F9B8: 09        .byte $09   ; buffer index
- D 3 - - - 0x01F9C9 07:F9B9: 2C        .byte $2C, $13, $0C   ; colors
; 40 
- D 3 - - - 0x01F9CC 07:F9BC: 09        .byte $09   ; buffer index
- D 3 - - - 0x01F9CD 07:F9BD: 2C        .byte $2C, $1C, $0C   ; colors
; 44 
- D 3 - - - 0x01F9D0 07:F9C0: 01        .byte $01   ; buffer index
- D 3 - - - 0x01F9D1 07:F9C1: 20        .byte $20, $10, $0F   ; colors
; 48 
- D 3 - - - 0x01F9D4 07:F9C4: 09        .byte $09   ; buffer index
- D 3 - - - 0x01F9D5 07:F9C5: 3C        .byte $3C, $1C, $0C   ; colors
; 4C 
- D 3 - - - 0x01F9D8 07:F9C8: 01        .byte $01   ; buffer index
- D 3 - - - 0x01F9D9 07:F9C9: 20        .byte $20, $10, $00   ; colors
; 50 
- D 3 - - - 0x01F9DC 07:F9CC: 05        .byte $05   ; buffer index
- D 3 - - - 0x01F9DD 07:F9CD: 20        .byte $20, $10, $00   ; colors
; 54 
- D 3 - - - 0x01F9E0 07:F9D0: 0D        .byte $0D   ; buffer index
- D 3 - - - 0x01F9E1 07:F9D1: 0B        .byte $0B, $10, $00   ; colors
; 58 
- D 3 - - - 0x01F9E4 07:F9D4: 05        .byte $05   ; buffer index
- D 3 - - - 0x01F9E5 07:F9D5: 0F        .byte $0F, $13, $03   ; colors
; 5C 
- D 3 - - - 0x01F9E8 07:F9D8: 05        .byte $05   ; buffer index
- D 3 - - - 0x01F9E9 07:F9D9: 0F        .byte $0F, $1A, $0A   ; colors
; 60 
- D 3 - - - 0x01F9EC 07:F9DC: 05        .byte $05   ; buffer index
- D 3 - - - 0x01F9ED 07:F9DD: 0F        .byte $0F, $1B, $0B   ; colors
; 64 
- D 3 - - - 0x01F9F0 07:F9E0: 05        .byte $05   ; buffer index
- D 3 - - - 0x01F9F1 07:F9E1: 0C        .byte $0C, $10, $00   ; colors
; 68 
- D 3 - - - 0x01F9F4 07:F9E4: 01        .byte $01   ; buffer index
- D 3 - - - 0x01F9F5 07:F9E5: 08        .byte $08, $10, $00   ; colors
; 6C 
- D 3 - - - 0x01F9F8 07:F9E8: 05        .byte $05   ; buffer index
- D 3 - - - 0x01F9F9 07:F9E9: 08        .byte $08, $10, $18   ; colors
; 70 
- D 3 - - - 0x01F9FC 07:F9EC: 0D        .byte $0D   ; buffer index
- D 3 - - - 0x01F9FD 07:F9ED: 20        .byte $20, $10, $00   ; colors
; 74 
- D 3 - - - 0x01FA00 07:F9F0: 09        .byte $09   ; buffer index
- D 3 - - - 0x01FA01 07:F9F1: 20        .byte $20, $10, $00   ; colors
; 78 
- D 3 - - - 0x01FA04 07:F9F4: 01        .byte $01   ; buffer index
- D 3 - - - 0x01FA05 07:F9F5: 27        .byte $27, $17, $07   ; colors
; 7C 
- D 3 - - - 0x01FA08 07:F9F8: 0D        .byte $0D   ; buffer index
- D 3 - - - 0x01FA09 07:F9F9: 20        .byte $20, $10, $00   ; colors
; 80 
- D 3 - - - 0x01FA0C 07:F9FC: 09        .byte $09   ; buffer index
- D 3 - - - 0x01FA0D 07:F9FD: 27        .byte $27, $16, $04   ; colors
; 84 
- D 3 - - - 0x01FA10 07:FA00: 0D        .byte $0D   ; buffer index
- D 3 - - - 0x01FA11 07:FA01: 16        .byte $16, $06, $00   ; colors
; 88 
- D 3 - - - 0x01FA14 07:FA04: 05        .byte $05   ; buffer index
- D 3 - - - 0x01FA15 07:FA05: 08        .byte $08, $00, $18   ; colors
; 8C 
- D 3 - - - 0x01FA18 07:FA08: 01        .byte $01   ; buffer index
- D 3 - - - 0x01FA19 07:FA09: 20        .byte $20, $10, $18   ; colors
; 90 
- D 3 - - - 0x01FA1C 07:FA0C: 0D        .byte $0D   ; buffer index
- D 3 - - - 0x01FA1D 07:FA0D: 20        .byte $20, $10, $08   ; colors
; 94 
- D 3 - - - 0x01FA20 07:FA10: 05        .byte $05   ; buffer index
- D 3 - - - 0x01FA21 07:FA11: 20        .byte $20, $10, $02   ; colors
; 98 
- D 3 - - - 0x01FA24 07:FA14: 09        .byte $09   ; buffer index
- D 3 - - - 0x01FA25 07:FA15: 10        .byte $10, $00, $06   ; colors
; 9C 
- D 3 - - - 0x01FA28 07:FA18: 09        .byte $09   ; buffer index
- D 3 - - - 0x01FA29 07:FA19: 20        .byte $20, $10, $06   ; colors
; A0 
- D 3 - - - 0x01FA2C 07:FA1C: 0D        .byte $0D   ; buffer index
- D 3 - - - 0x01FA2D 07:FA1D: 20        .byte $20, $10, $16   ; colors
; A4 
- D 3 - - - 0x01FA30 07:FA20: 05        .byte $05   ; buffer index
- D 3 - - - 0x01FA31 07:FA21: 24        .byte $24, $14, $04   ; colors
; A8 
- D 3 - - - 0x01FA34 07:FA24: 09        .byte $09   ; buffer index
- D 3 - - - 0x01FA35 07:FA25: 20        .byte $20, $10, $06   ; colors
; AC 
- D 3 - - - 0x01FA38 07:FA28: 1D        .byte $1D   ; buffer index
- D 3 - - - 0x01FA39 07:FA29: 24        .byte $24, $14, $04   ; colors
; B0 
- D 3 - - - 0x01FA3C 07:FA2C: 1D        .byte $1D   ; buffer index
- D 3 - - - 0x01FA3D 07:FA2D: 20        .byte $20, $00, $0C   ; colors



sub_0x01FA40:
C - - - - - 0x01FA40 07:FA30: A2 00     LDX #$00
bra_FA32_loop:
C - - - - - 0x01FA42 07:FA32: B9 3F FA  LDA tbl_FA3F,Y
C - - - - - 0x01FA45 07:FA35: 9D D0 03  STA ram_03D0,X
C - - - - - 0x01FA48 07:FA38: C8        INY
C - - - - - 0x01FA49 07:FA39: E8        INX
C - - - - - 0x01FA4A 07:FA3A: E0 10     CPX #$10
C - - - - - 0x01FA4C 07:FA3C: 90 F4     BCC bra_FA32_loop
C - - - - - 0x01FA4E 07:FA3E: 60        RTS



tbl_FA3F:
- D 3 - - - 0x01FA4F 07:FA3F: 2D        .byte $2D, $2D, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 00 
- D 3 - - - 0x01FA5F 07:FA4F: FD        .byte $FD, $FD, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 10 
- D 3 - - - 0x01FA6F 07:FA5F: 10        .byte $10, $33, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 20 
- D 3 - - - 0x01FA7F 07:FA6F: 0F        .byte $0F, $23, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 30 
- D 3 - - - 0x01FA8F 07:FA7F: 40        .byte $40, $40, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 40 
- D 3 - - - 0x01FA9F 07:FA8F: 01        .byte $01, $01, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 50 



sub_FA9F_calculate_blackout_palette:
C - - - - - 0x01FAAF 07:FA9F: C6 95     DEC ram_blackout_timer
C - - - - - 0x01FAB1 07:FAA1: D0 25     BNE bra_FAC8_skip
C - - - - - 0x01FAB3 07:FAA3: A9 08     LDA #$08    ; frames before next blackout degree
C - - - - - 0x01FAB5 07:FAA5: 85 95     STA ram_blackout_timer
C - - - - - 0x01FAB7 07:FAA7: A9 00     LDA #$00    ; how many colors were edited
C - - - - - 0x01FAB9 07:FAA9: 85 00     STA ram_0000
C - - - - - 0x01FABB 07:FAAB: A0 1F     LDY #$1F
bra_FAAD_loop:
C - - - - - 0x01FABD 07:FAAD: B9 E0 03  LDA ram_pal_buffer,Y
C - - - - - 0x01FAC0 07:FAB0: C9 0F     CMP #$0F
C - - - - - 0x01FAC2 07:FAB2: F0 0C     BEQ bra_FAC0_0F_black
C - - - - - 0x01FAC4 07:FAB4: 38        SEC
C - - - - - 0x01FAC5 07:FAB5: E9 10     SBC #$10
C - - - - - 0x01FAC7 07:FAB7: B0 02     BCS bra_FABB_not_underflow
C - - - - - 0x01FAC9 07:FAB9: A9 0F     LDA #$0F
bra_FABB_not_underflow:
C - - - - - 0x01FACB 07:FABB: 99 E0 03  STA ram_pal_buffer,Y
C - - - - - 0x01FACE 07:FABE: E6 00     INC ram_0000
bra_FAC0_0F_black:
C - - - - - 0x01FAD0 07:FAC0: 88        DEY
C - - - - - 0x01FAD1 07:FAC1: 10 EA     BPL bra_FAAD_loop
C - - - - - 0x01FAD3 07:FAC3: 38        SEC
C - - - - - 0x01FAD4 07:FAC4: A5 00     LDA ram_0000
C - - - - - 0x01FAD6 07:FAC6: F0 01     BEQ bra_FAC9_RTS
bra_FAC8_skip:
C - - - - - 0x01FAD8 07:FAC8: 18        CLC
bra_FAC9_RTS:
C - - - - - 0x01FAD9 07:FAC9: 60        RTS



vec_FACA_RESET:
C - - - - - 0x01FADA 07:FACA: D8        CLD
C - - - - - 0x01FADB 07:FACB: 78        SEI
C - - - - - 0x01FADC 07:FACC: A2 FF     LDX #$FF
C - - - - - 0x01FADE 07:FACE: 9A        TXS
C - - - - - 0x01FADF 07:FACF: A9 00     LDA #$00
C - - - - - 0x01FAE1 07:FAD1: 8D 00 20  STA $2000
C - - - - - 0x01FAE4 07:FAD4: 8D 01 20  STA $2001
C - - - - - 0x01FAE7 07:FAD7: A2 02     LDX #$02
bra_FAD9_loop:
bra_FAD9_infinite_loop:
C - - - - - 0x01FAE9 07:FAD9: 2C 02 20  BIT $2002
C - - - - - 0x01FAEC 07:FADC: 10 FB     BPL bra_FAD9_infinite_loop
bra_FADE_infinite_loop:
C - - - - - 0x01FAEE 07:FADE: 2C 02 20  BIT $2002
C - - - - - 0x01FAF1 07:FAE1: 30 FB     BMI bra_FADE_infinite_loop
C - - - - - 0x01FAF3 07:FAE3: CA        DEX
C - - - - - 0x01FAF4 07:FAE4: D0 F3     BNE bra_FAD9_loop
C - - - - - 0x01FAF6 07:FAE6: 20 CE FC  JSR sub_FCCE
C - - - - - 0x01FAF9 07:FAE9: A2 00     LDX #$00
C - - - - - 0x01FAFB 07:FAEB: 8A        TXA ; 00
C - - - - - 0x01FAFC 07:FAEC: 85 00     STA ram_0000
C - - - - - 0x01FAFE 07:FAEE: 85 01     STA ram_0001
C - - - - - 0x01FB00 07:FAF0: A0 FC     LDY #$FC
bra_FAF2_loop:
C - - - - - 0x01FB02 07:FAF2: 88        DEY
C - - - - - 0x01FB03 07:FAF3: 91 00     STA (ram_0000),Y
C - - - - - 0x01FB05 07:FAF5: D0 FB     BNE bra_FAF2_loop
C - - - - - 0x01FB07 07:FAF7: E6 01     INC ram_0001
C - - - - - 0x01FB09 07:FAF9: A2 07     LDX #$07
bra_FAFB_loop:
C - - - - - 0x01FB0B 07:FAFB: 91 00     STA (ram_0000),Y
C - - - - - 0x01FB0D 07:FAFD: C8        INY
C - - - - - 0x01FB0E 07:FAFE: D0 FB     BNE bra_FAFB_loop
C - - - - - 0x01FB10 07:FB00: E6 01     INC ram_0001
C - - - - - 0x01FB12 07:FB02: E4 01     CPX ram_0001
C - - - - - 0x01FB14 07:FB04: D0 F5     BNE bra_FAFB_loop
; clear 0700-07DF
C - - - - - 0x01FB16 07:FB06: A2 E0     LDX #$E0
bra_FB08_loop:
C - - - - - 0x01FB18 07:FB08: CA        DEX
C - - - - - 0x01FB19 07:FB09: 9D 00 07  STA $0700,X
C - - - - - 0x01FB1C 07:FB0C: D0 FA     BNE bra_FB08_loop
C - - - - - 0x01FB1E 07:FB0E: A2 E3     LDX #$E3    ; clear 07E3-07FF
C - - - - - 0x01FB20 07:FB10: AC EA 07  LDY ram_reset_check
C - - - - - 0x01FB23 07:FB13: C0 53     CPY #$53
C - - - - - 0x01FB25 07:FB15: D0 07     BNE bra_FB1E_failed
C - - - - - 0x01FB27 07:FB17: AC EB 07  LDY ram_reset_check + $01
C - - - - - 0x01FB2A 07:FB1A: C0 B1     CPY #$B1
C - - - - - 0x01FB2C 07:FB1C: F0 0C     BEQ bra_FB2A_passed
bra_FB1E_failed:
; if check failed
C - - - - - 0x01FB2E 07:FB1E: A0 00     LDY #$00
C - - - - - 0x01FB30 07:FB20: 8C E0 07  STY ram_hi_score
C - - - - - 0x01FB33 07:FB23: A0 20     LDY #$20    ; 20000 points
C - - - - - 0x01FB35 07:FB25: 8C E1 07  STY ram_hi_score + $01
C - - - - - 0x01FB38 07:FB28: A2 E2     LDX #$E2    ; clear 07E2-07FF
bra_FB2A_passed:
bra_FB2A_loop:
C - - - - - 0x01FB3A 07:FB2A: 9D 00 07  STA $0700,X
C - - - - - 0x01FB3D 07:FB2D: E8        INX
C - - - - - 0x01FB3E 07:FB2E: D0 FA     BNE bra_FB2A_loop
C - - - - - 0x01FB40 07:FB30: A9 53     LDA #$53
C - - - - - 0x01FB42 07:FB32: 8D EA 07  STA ram_reset_check
C - - - - - 0x01FB45 07:FB35: A9 B1     LDA #$B1
C - - - - - 0x01FB47 07:FB37: 8D EB 07  STA ram_reset_check + $01
C - - - - - 0x01FB4A 07:FB3A: 20 0E FE  JSR sub_FE0E_stop_sound_engine
C - - - - - 0x01FB4D 07:FB3D: 20 D9 FC  JSR sub_FCD9
C - - - - - 0x01FB50 07:FB40: A9 00     LDA #$00
C - - - - - 0x01FB52 07:FB42: 8D 00 E0  STA $E000
C - - - - - 0x01FB55 07:FB45: AD 02 20  LDA $2002
C - - - - - 0x01FB58 07:FB48: A9 10     LDA #$10
C - - - - - 0x01FB5A 07:FB4A: AA        TAX ; 10
bra_FB4B_loop:
C - - - - - 0x01FB5B 07:FB4B: 8D 06 20  STA $2006
C - - - - - 0x01FB5E 07:FB4E: 8D 06 20  STA $2006
C - - - - - 0x01FB61 07:FB51: 49 10     EOR #$10
C - - - - - 0x01FB63 07:FB53: CA        DEX
C - - - - - 0x01FB64 07:FB54: D0 F5     BNE bra_FB4B_loop
C - - - - - 0x01FB66 07:FB56: A9 00     LDA #con_mirroring_V
C - - - - - 0x01FB68 07:FB58: 8D 00 A0  STA $A000
C - - - - - 0x01FB6B 07:FB5B: 58        CLI
loc_FB5C_infinite_loop:
C D 3 - - - 0x01FB6C 07:FB5C: E6 23     INC ram_random
C - - - - - 0x01FB6E 07:FB5E: A5 23     LDA ram_random
C - - - - - 0x01FB70 07:FB60: 65 1B     ADC ram_frm_cnt_1
C - - - - - 0x01FB72 07:FB62: 85 23     STA ram_random
C - - - - - 0x01FB74 07:FB64: 4C 5C FB  JMP loc_FB5C_infinite_loop



vec_FB67_NMI:
C - - - - - 0x01FB77 07:FB67: 48        PHA
C - - - - - 0x01FB78 07:FB68: 8A        TXA
C - - - - - 0x01FB79 07:FB69: 48        PHA
C - - - - - 0x01FB7A 07:FB6A: 98        TYA
C - - - - - 0x01FB7B 07:FB6B: 48        PHA
C - - - - - 0x01FB7C 07:FB6C: AD 02 20  LDA $2002
C - - - - - 0x01FB7F 07:FB6F: 58        CLI
C - - - - - 0x01FB80 07:FB70: A4 1C     LDY ram_001C
C - - - - - 0x01FB82 07:FB72: D0 5D     BNE bra_FBD1_second_nmi ; if game is lagging?
; Y = 00
C - - - - - 0x01FB84 07:FB74: E6 1C     INC ram_001C
C - - - - - 0x01FB86 07:FB76: A5 FF     LDA ram_for_2000
C - - - - - 0x01FB88 07:FB78: 29 7F     AND #$7F
C - - - - - 0x01FB8A 07:FB7A: 8D 00 20  STA $2000
C - - - - - 0x01FB8D 07:FB7D: 85 FF     STA ram_for_2000
C - - - - - 0x01FB8F 07:FB7F: 8C 06 20  STY $2006
C - - - - - 0x01FB92 07:FB82: 8C 06 20  STY $2006
C - - - - - 0x01FB95 07:FB85: A5 FE     LDA ram_for_2001
C - - - - - 0x01FB97 07:FB87: 29 E7     AND #$E7
C - - - - - 0x01FB99 07:FB89: 8D 01 20  STA $2001
C - - - - - 0x01FB9C 07:FB8C: 8C 03 20  STY $2003
C - - - - - 0x01FB9F 07:FB8F: A9 02     LDA #$02
C - - - - - 0x01FBA1 07:FB91: 8D 14 40  STA $4014
C - - - - - 0x01FBA4 07:FB94: 20 12 E0  JSR sub_E012
C - - - - - 0x01FBA7 07:FB97: A5 FE     LDA ram_for_2001
C - - - - - 0x01FBA9 07:FB99: A6 1D     LDX ram_001D
C - - - - - 0x01FBAB 07:FB9B: F0 04     BEQ bra_FBA1
C - - - - - 0x01FBAD 07:FB9D: C6 1D     DEC ram_001D
C - - - - - 0x01FBAF 07:FB9F: 29 E7     AND #$E7
bra_FBA1:
C - - - - - 0x01FBB1 07:FBA1: 8D 01 20  STA $2001
C - - - - - 0x01FBB4 07:FBA4: 20 04 FC  JSR sub_FC04
C - - - - - 0x01FBB7 07:FBA7: 20 0F FF  JSR sub_FF0F
C - - - - - 0x01FBBA 07:FBAA: A5 2B     LDA ram_002B
C - - - - - 0x01FBBC 07:FBAC: F0 03     BEQ bra_FBB1
C - - - - - 0x01FBBE 07:FBAE: 20 8F FC  JSR sub_FC8F_disable_irq
bra_FBB1:
C - - - - - 0x01FBC1 07:FBB1: A9 3C     LDA #con_prg_bank + $3C
C - - - - - 0x01FBC3 07:FBB3: 20 6F FD  JSR sub_FD6F_prg_bankswitch___no_return
C - - - - - 0x01FBC6 07:FBB6: 20 3C 81  JSR sub_0x01814C_update_sound_engine
C - - - - - 0x01FBC9 07:FBB9: 20 FC FC  JSR sub_FCFC_read_joy_regs
C - - - - - 0x01FBCC 07:FBBC: 20 B9 E3  JSR sub_E3B9_main_game_handler
C - - - - - 0x01FBCF 07:FBBF: 20 17 FE  JSR sub_FE17_sprite_engine
C - - - - - 0x01FBD2 07:FBC2: A6 1E     LDX ram_index_ppu_buffer
C - - - - - 0x01FBD4 07:FBC4: A9 00     LDA #con_buf_mode_00
C - - - - - 0x01FBD6 07:FBC6: 9D 00 03  STA ram_nmt_buffer,X
C - - - - - 0x01FBD9 07:FBC9: 85 1C     STA ram_001C
loc_FBCB_return_from_interrupt:
ofs_040_00_FBCB_00_return_from_interrupt:
C D 3 - - - 0x01FBDB 07:FBCB: 68        PLA
C - - - - - 0x01FBDC 07:FBCC: A8        TAY
C - - - - - 0x01FBDD 07:FBCD: 68        PLA
C - - - - - 0x01FBDE 07:FBCE: AA        TAX
C - - - - - 0x01FBDF 07:FBCF: 68        PLA
C - - - - - 0x01FBE0 07:FBD0: 40        RTI
bra_FBD1_second_nmi:
C - - - - - 0x01FBE1 07:FBD1: 20 0F FF  JSR sub_FF0F
C - - - - - 0x01FBE4 07:FBD4: A5 FE     LDA ram_for_2001
C - - - - - 0x01FBE6 07:FBD6: A6 1D     LDX ram_001D
C - - - - - 0x01FBE8 07:FBD8: F0 02     BEQ bra_FBDC
C - - - - - 0x01FBEA 07:FBDA: 29 E7     AND #$E7
bra_FBDC:
C - - - - - 0x01FBEC 07:FBDC: 8D 01 20  STA $2001
C - - - - - 0x01FBEF 07:FBDF: 20 04 FC  JSR sub_FC04
C - - - - - 0x01FBF2 07:FBE2: A5 1C     LDA ram_001C
C - - - - - 0x01FBF4 07:FBE4: 30 03     BMI bra_FBE9
C - - - - - 0x01FBF6 07:FBE6: 20 C8 FD  JSR sub_FDC8_update_sound_engine
bra_FBE9:
C - - - - - 0x01FBF9 07:FBE9: 4C CB FB  JMP loc_FBCB_return_from_interrupt



sub_FBEC:
C - - - - - 0x01FBFC 07:FBEC: A9 42     LDA #con_chr_bank + $42
C - - - - - 0x01FBFE 07:FBEE: AA        TAX
sub_FBEF:
C - - - - - 0x01FBFF 07:FBEF: A0 00     LDY #$00
C - - - - - 0x01FC01 07:FBF1: 8C 00 80  STY $8000
C - - - - - 0x01FC04 07:FBF4: 8D 01 80  STA $8001
C - - - - - 0x01FC07 07:FBF7: C8        INY ; 01
C - - - - - 0x01FC08 07:FBF8: 8C 00 80  STY $8000
C - - - - - 0x01FC0B 07:FBFB: 8E 01 80  STX $8001
C - - - - - 0x01FC0E 07:FBFE: A5 25     LDA ram_for_8000
C - - - - - 0x01FC10 07:FC00: 8D 00 80  STA $8000
C - - - - - 0x01FC13 07:FC03: 60        RTS



sub_FC04:
C - - - - - 0x01FC14 07:FC04: AD 02 20  LDA $2002
C - - - - - 0x01FC17 07:FC07: A0 00     LDY #$00
C - - - - - 0x01FC19 07:FC09: 8C 05 20  STY $2005
C - - - - - 0x01FC1C 07:FC0C: 8C 05 20  STY $2005
C - - - - - 0x01FC1F 07:FC0F: AD 02 20  LDA $2002
C - - - - - 0x01FC22 07:FC12: A2 FF     LDX #$FF
C - - - - - 0x01FC24 07:FC14: 8E 00 C0  STX $C000
C - - - - - 0x01FC27 07:FC17: 8E 01 C0  STX $C001
C - - - - - 0x01FC2A 07:FC1A: A9 10     LDA #$10
C - - - - - 0x01FC2C 07:FC1C: 8C 06 20  STY $2006
C - - - - - 0x01FC2F 07:FC1F: 8C 06 20  STY $2006
C - - - - - 0x01FC32 07:FC22: 8D 06 20  STA $2006
C - - - - - 0x01FC35 07:FC25: 8D 06 20  STA $2006
C - - - - - 0x01FC38 07:FC28: 8C 06 20  STY $2006
C - - - - - 0x01FC3B 07:FC2B: 8C 06 20  STY $2006
C - - - - - 0x01FC3E 07:FC2E: 8D 06 20  STA $2006
C - - - - - 0x01FC41 07:FC31: 8D 06 20  STA $2006
C - - - - - 0x01FC44 07:FC34: 8C 06 20  STY $2006
C - - - - - 0x01FC47 07:FC37: 8C 06 20  STY $2006
C - - - - - 0x01FC4A 07:FC3A: A6 27     LDX ram_irq_handler_hi
C - - - - - 0x01FC4C 07:FC3C: F0 02     BEQ bra_FC40
C - - - - - 0x01FC4E 07:FC3E: A2 01     LDX #$01
bra_FC40:   ; X = 00
C - - - - - 0x01FC50 07:FC40: A5 45     LDA ram_scanline
C - - - - - 0x01FC52 07:FC42: 8D 00 C0  STA $C000
C - - - - - 0x01FC55 07:FC45: 8D 01 C0  STA $C001
; write to E000 (disable IRQ) if handler is 00
; otherwise write to E001 (enable IRQ)
C - - - - - 0x01FC58 07:FC48: 9D 00 E0  STA $E000,X
C - - - - - 0x01FC5B 07:FC4B: 20 A0 FC  JSR sub_FCA0_write_scroll_and_enable_nmi
C - - - - - 0x01FC5E 07:FC4E: A5 27     LDA ram_irq_handler_hi
C - - - - - 0x01FC60 07:FC50: 0A        ASL
C - - - - - 0x01FC61 07:FC51: A8        TAY
C - - - - - 0x01FC62 07:FC52: B9 9A E0  LDA tbl_E09A_irq_handler,Y
C - - - - - 0x01FC65 07:FC55: 85 2D     STA ram_002D
C - - - - - 0x01FC67 07:FC57: B9 9B E0  LDA tbl_E09A_irq_handler + $01,Y
C - - - - - 0x01FC6A 07:FC5A: 85 2E     STA ram_002E
C - - - - - 0x01FC6C 07:FC5C: A9 00     LDA #$00
C - - - - - 0x01FC6E 07:FC5E: 85 28     STA ram_irq_handler_lo
C - - - - - 0x01FC70 07:FC60: A5 FA     LDA ram_00FA_scroll_X
C - - - - - 0x01FC72 07:FC62: 8D F6 07  STA ram_07F6_scroll
C - - - - - 0x01FC75 07:FC65: A5 FB     LDA ram_00FB_for_2000
C - - - - - 0x01FC77 07:FC67: 8D F7 07  STA ram_07F7_for_2000
C - - - - - 0x01FC7A 07:FC6A: A5 46     LDA ram_0046
C - - - - - 0x01FC7C 07:FC6C: 8D F9 07  STA ram_07F9_for_C000
C - - - - - 0x01FC7F 07:FC6F: A5 47     LDA ram_0047
C - - - - - 0x01FC81 07:FC71: 8D FA 07  STA ram_07FA_for_C000
C - - - - - 0x01FC84 07:FC74: A5 4A     LDA ram_004A
C - - - - - 0x01FC86 07:FC76: 8D FB 07  STA ram_07FB_2006_lo
C - - - - - 0x01FC89 07:FC79: A5 4B     LDA ram_004B
C - - - - - 0x01FC8B 07:FC7B: 8D FC 07  STA ram_07FC_2006_hi
C - - - - - 0x01FC8E 07:FC7E: 60        RTS



sub_0x01FC8F_copy_reg_values:
loc_0x01FC8F_copy_reg_values:
C D 3 - - - 0x01FC8F 07:FC7F: A5 FF     LDA ram_for_2000
C - - - - - 0x01FC91 07:FC81: 85 FB     STA ram_00FB_for_2000
C - - - - - 0x01FC93 07:FC83: A5 FC     LDA ram_scroll_Y
C - - - - - 0x01FC95 07:FC85: 85 F9     STA ram_00F9_scroll_Y
C - - - - - 0x01FC97 07:FC87: A5 FD     LDA ram_scroll_X
C - - - - - 0x01FC99 07:FC89: 85 FA     STA ram_00FA_scroll_X
C - - - - - 0x01FC9B 07:FC8B: 60        RTS



sub_FC8C_increase_002B:
sub_0x01FC9C_increase_002B:
loc_0x01FC9C_increase_002B:
; bzk optimize
C D 3 - - - 0x01FC9C 07:FC8C: E6 2B     INC ram_002B
C - - - - - 0x01FC9E 07:FC8E: 60        RTS



sub_FC8F_disable_irq:
C - - - - - 0x01FC9F 07:FC8F: A9 FF     LDA #$FF
C - - - - - 0x01FCA1 07:FC91: 85 45     STA ram_scanline
C - - - - - 0x01FCA3 07:FC93: 85 46     STA ram_0046
C - - - - - 0x01FCA5 07:FC95: 85 47     STA ram_0047
C - - - - - 0x01FCA7 07:FC97: A9 00     LDA #$00    ; con_irq_disable
C - - - - - 0x01FCA9 07:FC99: 85 27     STA ram_irq_handler_hi
C - - - - - 0x01FCAB 07:FC9B: 85 28     STA ram_irq_handler_lo
C - - - - - 0x01FCAD 07:FC9D: 85 2B     STA ram_002B
C - - - - - 0x01FCAF 07:FC9F: 60        RTS



sub_FCA0_write_scroll_and_enable_nmi:
C - - - - - 0x01FCB0 07:FCA0: AD 02 20  LDA $2002
C - - - - - 0x01FCB3 07:FCA3: A9 20     LDA #> $2000
C - - - - - 0x01FCB5 07:FCA5: 8D 06 20  STA $2006
C - - - - - 0x01FCB8 07:FCA8: A9 00     LDA #< $2000
C - - - - - 0x01FCBA 07:FCAA: 8D 06 20  STA $2006
C - - - - - 0x01FCBD 07:FCAD: AD 02 20  LDA $2002
C - - - - - 0x01FCC0 07:FCB0: A5 FD     LDA ram_scroll_X
C - - - - - 0x01FCC2 07:FCB2: 8D 05 20  STA $2005
C - - - - - 0x01FCC5 07:FCB5: A5 FC     LDA ram_scroll_Y
C - - - - - 0x01FCC7 07:FCB7: 8D 05 20  STA $2005
loc_0x01FCCA_enable_nmi:
C D 3 - - - 0x01FCCA 07:FCBA: A5 FF     LDA ram_for_2000
C - - - - - 0x01FCCC 07:FCBC: 09 80     ORA #$80
C - - - - - 0x01FCCE 07:FCBE: 85 FF     STA ram_for_2000
C - - - - - 0x01FCD0 07:FCC0: 8D 00 20  STA $2000
C - - - - - 0x01FCD3 07:FCC3: 60        RTS



sub_FCC4_disable_nmi:
; bzk optimize, single subroutine usage
C - - - - - 0x01FCD4 07:FCC4: A5 FF     LDA ram_for_2000
C - - - - - 0x01FCD6 07:FCC6: 29 7F     AND #$7F
C - - - - - 0x01FCD8 07:FCC8: 8D 00 20  STA $2000
C - - - - - 0x01FCDB 07:FCCB: 85 FF     STA ram_for_2000
C - - - - - 0x01FCDD 07:FCCD: 60        RTS



sub_FCCE:
; bzk optimize, single subroutine usage
C - - - - - 0x01FCDE 07:FCCE: A9 0F     LDA #$0F
C - - - - - 0x01FCE0 07:FCD0: 8D 15 40  STA $4015
C - - - - - 0x01FCE3 07:FCD3: A9 C0     LDA #$C0
C - - - - - 0x01FCE5 07:FCD5: 8D 17 40  STA $4017
C - - - - - 0x01FCE8 07:FCD8: 60        RTS



sub_FCD9:
; bzk optimize, single subroutine usage
C - - - - - 0x01FCE9 07:FCD9: A9 A8     LDA #$A8
C - - - - - 0x01FCEB 07:FCDB: 85 FF     STA ram_for_2000
C - - - - - 0x01FCED 07:FCDD: 8D 00 20  STA $2000
C - - - - - 0x01FCF0 07:FCE0: A9 1E     LDA #$1E
C - - - - - 0x01FCF2 07:FCE2: 85 FE     STA ram_for_2001
C - - - - - 0x01FCF4 07:FCE4: A9 05     LDA #$05
C - - - - - 0x01FCF6 07:FCE6: 85 1D     STA ram_001D
C - - - - - 0x01FCF8 07:FCE8: 60        RTS



sub_0x01FCF9_disable_nmi_and_rendering:
; bzk optimize, single subroutine usage
C - - - - - 0x01FCF9 07:FCE9: 20 C4 FC  JSR sub_FCC4_disable_nmi
C - - - - - 0x01FCFC 07:FCEC: A9 00     LDA #$00
C - - - - - 0x01FCFE 07:FCEE: 8D 06 20  STA $2006
C - - - - - 0x01FD01 07:FCF1: 8D 06 20  STA $2006
C - - - - - 0x01FD04 07:FCF4: A5 FE     LDA ram_for_2001
C - - - - - 0x01FD06 07:FCF6: 29 E7     AND #$E7
C - - - - - 0x01FD08 07:FCF8: 8D 01 20  STA $2001
C - - - - - 0x01FD0B 07:FCFB: 60        RTS



sub_FCFC_read_joy_regs:
C - - - - - 0x01FD0C 07:FCFC: A2 00     LDX #$00
C - - - - - 0x01FD0E 07:FCFE: 20 33 FD  JSR sub_FD33_read_regs
C - - - - - 0x01FD11 07:FD01: A2 02     LDX #$02
C - - - - - 0x01FD13 07:FD03: 20 33 FD  JSR sub_FD33_read_regs
C - - - - - 0x01FD16 07:FD06: A5 00     LDA ram_0000
C - - - - - 0x01FD18 07:FD08: C5 02     CMP ram_0002
C - - - - - 0x01FD1A 07:FD0A: D0 1C     BNE bra_FD28_check_failed
C - - - - - 0x01FD1C 07:FD0C: A5 01     LDA ram_0001
C - - - - - 0x01FD1E 07:FD0E: C5 03     CMP ram_0003
C - - - - - 0x01FD20 07:FD10: D0 16     BNE bra_FD28_check_failed
C - - - - - 0x01FD22 07:FD12: A2 00     LDX #$00
C - - - - - 0x01FD24 07:FD14: 20 18 FD  JSR sub_FD18
C - - - - - 0x01FD27 07:FD17: E8        INX ; 01
sub_FD18:
C - - - - - 0x01FD28 07:FD18: B5 00     LDA ram_0000,X
C - - - - - 0x01FD2A 07:FD1A: A8        TAY
C - - - - - 0x01FD2B 07:FD1B: 55 F7     EOR ram_copy_btn_hold,X
C - - - - - 0x01FD2D 07:FD1D: 35 00     AND ram_0000,X
C - - - - - 0x01FD2F 07:FD1F: 95 F1     STA ram_btn_press,X
C - - - - - 0x01FD31 07:FD21: 95 F5     STA ram_copy_btn_press,X
C - - - - - 0x01FD33 07:FD23: 94 F3     STY ram_btn_hold,X
C - - - - - 0x01FD35 07:FD25: 94 F7     STY ram_copy_btn_hold,X
C - - - - - 0x01FD37 07:FD27: 60        RTS
bra_FD28_check_failed:
- - - - - - 0x01FD38 07:FD28: A9 00     LDA #$00
- - - - - - 0x01FD3A 07:FD2A: 85 F1     STA ram_btn_press
- - - - - - 0x01FD3C 07:FD2C: 85 F5     STA ram_copy_btn_press
- - - - - - 0x01FD3E 07:FD2E: 85 F2     STA ram_btn_press + $01
- - - - - - 0x01FD40 07:FD30: 85 F6     STA ram_copy_btn_press + $01
- - - - - - 0x01FD42 07:FD32: 60        RTS



sub_FD33_read_regs:
C - - - - - 0x01FD43 07:FD33: A0 01     LDY #$01
C - - - - - 0x01FD45 07:FD35: 8C 16 40  STY $4016
C - - - - - 0x01FD48 07:FD38: 88        DEY ; 00
C - - - - - 0x01FD49 07:FD39: 8C 16 40  STY $4016
C - - - - - 0x01FD4C 07:FD3C: A0 08     LDY #$08
bra_FD3E_loop:
C - - - - - 0x01FD4E 07:FD3E: AD 16 40  LDA $4016
C - - - - - 0x01FD51 07:FD41: 85 04     STA ram_0004
C - - - - - 0x01FD53 07:FD43: 4A        LSR
C - - - - - 0x01FD54 07:FD44: 05 04     ORA ram_0004
C - - - - - 0x01FD56 07:FD46: 4A        LSR
C - - - - - 0x01FD57 07:FD47: 36 00     ROL ram_0000,X
C - - - - - 0x01FD59 07:FD49: AD 17 40  LDA $4017
C - - - - - 0x01FD5C 07:FD4C: 85 05     STA ram_0005
C - - - - - 0x01FD5E 07:FD4E: 4A        LSR
C - - - - - 0x01FD5F 07:FD4F: 05 05     ORA ram_0005
C - - - - - 0x01FD61 07:FD51: 4A        LSR
C - - - - - 0x01FD62 07:FD52: 36 01     ROL ram_0001,X
C - - - - - 0x01FD64 07:FD54: 88        DEY
C - - - - - 0x01FD65 07:FD55: D0 E7     BNE bra_FD3E_loop
C - - - - - 0x01FD67 07:FD57: 60        RTS



sub_FD58_prg_bankswitch___select_secondary_bank:
loc_FD58_prg_bankswitch___select_secondary_bank:
C D 3 - - - 0x01FD68 07:FD58: A4 50     LDY ram_area_index
C - - - - - 0x01FD6A 07:FD5A: B9 C0 FD  LDA tbl_FDC0_prg_bank,Y
sub_FD5D_prg_bankswitch_30_33:  ; A = 30
C - - - - - 0x01FD6D 07:FD5D: A0 33     LDY #con_prg_bank + $33
C - - - - - 0x01FD6F 07:FD5F: D0 10     BNE bra_FD71    ; jmp



sub_FD61_prg_bankswitch___with_return:
C - - - - - 0x01FD71 07:FD61: AC 00 80  LDY $8000
C - - - - - 0x01FD74 07:FD64: 8C EE 07  STY ram_prg_bank
C - - - - - 0x01FD77 07:FD67: AC FF BF  LDY $BFFF
C - - - - - 0x01FD7A 07:FD6A: 8C EF 07  STY ram_prg_bank + $01
C - - - - - 0x01FD7D 07:FD6D: A9 3C     LDA #con_prg_bank + $3C
sub_FD6F_prg_bankswitch___no_return:
loc_FD6F_prg_bankswitch___no_return:
C D 3 - - - 0x01FD7F 07:FD6F: A8        TAY
C - - - - - 0x01FD80 07:FD70: C8        INY
bra_FD71:
loc_FD71_prg_bankswitch___no_return:
C D 3 - - - 0x01FD81 07:FD71: 8E ED 07  STX ram_save_X
C - - - - - 0x01FD84 07:FD74: A2 06     LDX #$06
C - - - - - 0x01FD86 07:FD76: 86 25     STX ram_for_8000
C - - - - - 0x01FD88 07:FD78: 8E 00 80  STX $8000
C - - - - - 0x01FD8B 07:FD7B: 8D 01 80  STA $8001
C - - - - - 0x01FD8E 07:FD7E: E8        INX ; 07
C - - - - - 0x01FD8F 07:FD7F: 86 25     STX ram_for_8000
C - - - - - 0x01FD91 07:FD81: 8E 00 80  STX $8000
C - - - - - 0x01FD94 07:FD84: 8C 01 80  STY $8001
C - - - - - 0x01FD97 07:FD87: AE ED 07  LDX ram_save_X
C - - - - - 0x01FD9A 07:FD8A: 60        RTS



sub_FD8B_restore_prg_bank:
loc_FD8B_restore_prg_bank:
C D 3 - - - 0x01FD9B 07:FD8B: AD EE 07  LDA ram_prg_bank
C - - - - - 0x01FD9E 07:FD8E: AC EF 07  LDY ram_prg_bank + $01
C - - - - - 0x01FDA1 07:FD91: 4C 71 FD  JMP loc_FD71_prg_bankswitch___no_return



sub_FD94:
C - - - - - 0x01FDA4 07:FD94: A8        TAY
C - - - - - 0x01FDA5 07:FD95: C8        INY
loc_FD96:
C D 3 - - - 0x01FDA6 07:FD96: A2 06     LDX #$06
C - - - - - 0x01FDA8 07:FD98: 8E 00 80  STX $8000
C - - - - - 0x01FDAB 07:FD9B: 8D 01 80  STA $8001
C - - - - - 0x01FDAE 07:FD9E: E8        INX ; 07
C - - - - - 0x01FDAF 07:FD9F: 8E 00 80  STX $8000
C - - - - - 0x01FDB2 07:FDA2: 8C 01 80  STY $8001
C - - - - - 0x01FDB5 07:FDA5: A6 25     LDX ram_for_8000
C - - - - - 0x01FDB7 07:FDA7: 8E 00 80  STX $8000
C - - - - - 0x01FDBA 07:FDAA: 60        RTS



sub_FDAB_select_secondary_music_bank:
sub_0x01FDBB_select_secondary_music_bank:
C - - - - - 0x01FDBB 07:FDAB: A0 31     LDY #con_prg_bank + $31
C - - - - - 0x01FDBD 07:FDAD: C9 32     CMP #con_sound_32
C - - - - - 0x01FDBF 07:FDAF: F0 06     BEQ bra_FDB7_32_36
C - - - - - 0x01FDC1 07:FDB1: C9 36     CMP #con_sound_36
C - - - - - 0x01FDC3 07:FDB3: F0 02     BEQ bra_FDB7_32_36
C - - - - - 0x01FDC5 07:FDB5: A0 3D     LDY #con_prg_bank + $3D
bra_FDB7_32_36:
loc_FDB7_restore_secondary_music_bank:
C D 3 - - - 0x01FDC7 07:FDB7: A9 07     LDA #$07
C - - - - - 0x01FDC9 07:FDB9: 8D 00 80  STA $8000
C - - - - - 0x01FDCC 07:FDBC: 8C 01 80  STY $8001
C - - - - - 0x01FDCF 07:FDBF: 60        RTS



tbl_FDC0_prg_bank:
- D 3 - - - 0x01FDD0 07:FDC0: 32        .byte con_prg_bank + $32   ; 00
- D 3 - - - 0x01FDD1 07:FDC1: 3A        .byte con_prg_bank + $3A   ; 01
- D 3 - - - 0x01FDD2 07:FDC2: 32        .byte con_prg_bank + $32   ; 02
- D 3 - - - 0x01FDD3 07:FDC3: 3A        .byte con_prg_bank + $3A   ; 03
- D 3 - - - 0x01FDD4 07:FDC4: 38        .byte con_prg_bank + $38   ; 04
- D 3 - - - 0x01FDD5 07:FDC5: 38        .byte con_prg_bank + $38   ; 05
- D 3 - - - 0x01FDD6 07:FDC6: 34        .byte con_prg_bank + $34   ; 06
- D 3 - - - 0x01FDD7 07:FDC7: 34        .byte con_prg_bank + $34   ; 07



sub_FDC8_update_sound_engine:
C - - - - - 0x01FDD8 07:FDC8: AD 00 80  LDA $8000
C - - - - - 0x01FDDB 07:FDCB: 48        PHA
C - - - - - 0x01FDDC 07:FDCC: AD FF BF  LDA $BFFF
C - - - - - 0x01FDDF 07:FDCF: 48        PHA
C - - - - - 0x01FDE0 07:FDD0: A9 3C     LDA #con_prg_bank + $3C
C - - - - - 0x01FDE2 07:FDD2: 20 94 FD  JSR sub_FD94
C - - - - - 0x01FDE5 07:FDD5: 20 3C 81  JSR sub_0x01814C_update_sound_engine
C - - - - - 0x01FDE8 07:FDD8: 68        PLA
C - - - - - 0x01FDE9 07:FDD9: A8        TAY
C - - - - - 0x01FDEA 07:FDDA: 68        PLA
C - - - - - 0x01FDEB 07:FDDB: 4C 96 FD  JMP loc_FD96



sub_FDDE_play_sound:
loc_FDDE_play_sound:
sub_0x01FDEE_play_sound:
loc_0x01FDEE_play_sound:
C D 3 - - - 0x01FDEE 07:FDDE: 48        PHA
C - - - - - 0x01FDEF 07:FDDF: A5 1C     LDA ram_001C
C - - - - - 0x01FDF1 07:FDE1: 09 80     ORA #$80
C - - - - - 0x01FDF3 07:FDE3: 85 1C     STA ram_001C
C - - - - - 0x01FDF5 07:FDE5: 20 61 FD  JSR sub_FD61_prg_bankswitch___with_return
C - - - - - 0x01FDF8 07:FDE8: 68        PLA
C - - - - - 0x01FDF9 07:FDE9: 20 F6 FD  JSR sub_FDF6
C - - - - - 0x01FDFC 07:FDEC: 20 8B FD  JSR sub_FD8B_restore_prg_bank
C - - - - - 0x01FDFF 07:FDEF: A5 1C     LDA ram_001C
C - - - - - 0x01FE01 07:FDF1: 29 7F     AND #$7F
C - - - - - 0x01FE03 07:FDF3: 85 1C     STA ram_001C
C - - - - - 0x01FE05 07:FDF5: 60        RTS



sub_FDF6:
loc_0x01FE06:
C D 3 - - - 0x01FE06 07:FDF6: 8D E9 07  STA ram_07E9_sound
C - - - - - 0x01FE09 07:FDF9: AD FF BF  LDA $BFFF
C - - - - - 0x01FE0C 07:FDFC: 48        PHA
C - - - - - 0x01FE0D 07:FDFD: AD E9 07  LDA ram_07E9_sound
C - - - - - 0x01FE10 07:FE00: 20 AB FD  JSR sub_FDAB_select_secondary_music_bank
C - - - - - 0x01FE13 07:FE03: AD E9 07  LDA ram_07E9_sound
C - - - - - 0x01FE16 07:FE06: 20 39 80  JSR sub_0x018049_play_sound
C - - - - - 0x01FE19 07:FE09: 68        PLA
C - - - - - 0x01FE1A 07:FE0A: A8        TAY
C - - - - - 0x01FE1B 07:FE0B: 4C B7 FD  JMP loc_FDB7_restore_secondary_music_bank



sub_FE0E_stop_sound_engine:
sub_0x01FE1E_stop_sound_engine:
loc_0x01FE1E_stop_sound_engine:
C D 3 - - - 0x01FE1E 07:FE0E: 20 61 FD  JSR sub_FD61_prg_bankswitch___with_return
C - - - - - 0x01FE21 07:FE11: 20 01 80  JSR sub_0x018011_stop_sound_engine
C - - - - - 0x01FE24 07:FE14: 4C 8B FD  JMP loc_FD8B_restore_prg_bank



sub_FE17_sprite_engine:
C - - - - - 0x01FE27 07:FE17: A9 36     LDA #con_prg_bank + $36
C - - - - - 0x01FE29 07:FE19: 20 6F FD  JSR sub_FD6F_prg_bankswitch___no_return
C - - - - - 0x01FE2C 07:FE1C: 4C BE 80  JMP loc_0x00C0CE_sprite_engine



sub_FE1F_object_handler:
C - - - - - 0x01FE2F 07:FE1F: 20 58 FD  JSR sub_FD58_prg_bankswitch___select_secondary_bank
C - - - - - 0x01FE32 07:FE22: 4C 23 A2  JMP loc_0x006233_object_handler



sub_FE25_spawn_object_from_area_data:
C - - - - - 0x01FE35 07:FE25: A9 34     LDA #con_prg_bank + $34
C - - - - - 0x01FE37 07:FE27: 20 6F FD  JSR sub_FD6F_prg_bankswitch___no_return
C - - - - - 0x01FE3A 07:FE2A: 4C 48 91  JMP loc_0x009158_spawn_object_from_area_data



sub_FE2D_spawn_mobs:
C - - - - - 0x01FE3D 07:FE2D: A9 30     LDA #con_prg_bank + $30
C - - - - - 0x01FE3F 07:FE2F: 20 5D FD  JSR sub_FD5D_prg_bankswitch_30_33
C - - - - - 0x01FE42 07:FE32: 4C 01 94  JMP loc_0x001411_spawn_mobs



sub_FE35_prepare_heli_rotor_blade:
C - - - - - 0x01FE45 07:FE35: A9 34     LDA #con_prg_bank + $34
C - - - - - 0x01FE47 07:FE37: 20 6F FD  JSR sub_FD6F_prg_bankswitch___no_return
C - - - - - 0x01FE4A 07:FE3A: 4C B0 92  JMP loc_0x0092C0_prepare_heli_rotor_blade



sub_FE3D_area_handler:
C - - - - - 0x01FE4D 07:FE3D: A9 36     LDA #con_prg_bank + $36
C - - - - - 0x01FE4F 07:FE3F: 20 6F FD  JSR sub_FD6F_prg_bankswitch___no_return
C - - - - - 0x01FE52 07:FE42: 4C 73 F2  JMP loc_F273_area_handler



sub_FE45:
C - - - - - 0x01FE55 07:FE45: A9 30     LDA #con_prg_bank + $30
C - - - - - 0x01FE57 07:FE47: 20 5D FD  JSR sub_FD5D_prg_bankswitch_30_33
C - - - - - 0x01FE5A 07:FE4A: 4C 01 80  JMP loc_0x000011



sub_FE4D:
C - - - - - 0x01FE5D 07:FE4D: A9 30     LDA #con_prg_bank + $30
C - - - - - 0x01FE5F 07:FE4F: 20 5D FD  JSR sub_FD5D_prg_bankswitch_30_33
C - - - - - 0x01FE62 07:FE52: 4C 81 91  JMP loc_0x001191



sub_FE55_select_objects_for_current_frm:
; current frame
C - - - - - 0x01FE65 07:FE55: A9 30     LDA #con_prg_bank + $30
C - - - - - 0x01FE67 07:FE57: 20 6F FD  JSR sub_FD6F_prg_bankswitch___no_return
C - - - - - 0x01FE6A 07:FE5A: 4C 89 91  JMP loc_0x001199_select_objects_for_current_frm



loc_0x01FE6D:
C D 3 - - - 0x01FE6D 07:FE5D: A9 30     LDA #con_prg_bank + $30
C - - - - - 0x01FE6F 07:FE5F: 20 6F FD  JSR sub_FD6F_prg_bankswitch___no_return
C - - - - - 0x01FE72 07:FE62: 20 61 92  JSR sub_0x001271
C - - - - - 0x01FE75 07:FE65: 4C 58 FD  JMP loc_FD58_prg_bankswitch___select_secondary_bank



sub_FE68:
C - - - - - 0x01FE78 07:FE68: A9 36     LDA #con_prg_bank + $36
C - - - - - 0x01FE7A 07:FE6A: 20 6F FD  JSR sub_FD6F_prg_bankswitch___no_return
C - - - - - 0x01FE7D 07:FE6D: 4C 84 B8  JMP loc_0x00F894_set_palette_for_area



sub_FE70_set_palette:
C - - - - - 0x01FE80 07:FE70: 48        PHA
C - - - - - 0x01FE81 07:FE71: A9 36     LDA #con_prg_bank + $36
C - - - - - 0x01FE83 07:FE73: 20 6F FD  JSR sub_FD6F_prg_bankswitch___no_return
C - - - - - 0x01FE86 07:FE76: 68        PLA
C - - - - - 0x01FE87 07:FE77: 4C 86 B8  JMP loc_0x00F896_set_palette



sub_FE7A_print_text_on_the_screen:
C - - - - - 0x01FE8A 07:FE7A: 48        PHA
C - - - - - 0x01FE8B 07:FE7B: A9 30     LDA #con_prg_bank + $30
C - - - - - 0x01FE8D 07:FE7D: 20 6F FD  JSR sub_FD6F_prg_bankswitch___no_return
C - - - - - 0x01FE90 07:FE80: 68        PLA
C - - - - - 0x01FE91 07:FE81: 4C 7C 97  JMP loc_0x00178C_print_text_on_the_screen



sub_FE84_draw_static_sreen:
loc_FE84_draw_static_sreen:
C D 3 - - - 0x01FE94 07:FE84: A9 30     LDA #con_prg_bank + $30
C - - - - - 0x01FE96 07:FE86: 20 6F FD  JSR sub_FD6F_prg_bankswitch___no_return
C - - - - - 0x01FE99 07:FE89: 4C 8E 98  JMP loc_0x00189E_draw_static_screen



sub_FE8C:
C - - - - - 0x01FE9C 07:FE8C: 20 FF FE  JSR sub_FEFF_prepare_area_prg_banks
C - - - - - 0x01FE9F 07:FE8F: 4C 0B EB  JMP loc_EB0B



sub_FE92:
C - - - - - 0x01FEA2 07:FE92: 20 FF FE  JSR sub_FEFF_prepare_area_prg_banks
C - - - - - 0x01FEA5 07:FE95: 4C 58 EB  JMP loc_EB58



sub_FE98:
C - - - - - 0x01FEA8 07:FE98: 20 FF FE  JSR sub_FEFF_prepare_area_prg_banks
C - - - - - 0x01FEAB 07:FE9B: 4C F8 EA  JMP loc_EAF8



sub_FE9E:
C - - - - - 0x01FEAE 07:FE9E: 20 FF FE  JSR sub_FEFF_prepare_area_prg_banks
C - - - - - 0x01FEB1 07:FEA1: 4C 9B F1  JMP loc_F19B



loc_FEA4:
sub_0x01FEB4:
C D 3 - - - 0x01FEB4 07:FEA4: A2 E0     LDX #$E0
loc_FEA6:
C D 3 - - - 0x01FEB6 07:FEA6: 86 06     STX ram_0006
C - - - - - 0x01FEB8 07:FEA8: 48        PHA
C - - - - - 0x01FEB9 07:FEA9: 98        TYA
C - - - - - 0x01FEBA 07:FEAA: 48        PHA
C - - - - - 0x01FEBB 07:FEAB: 20 FF FE  JSR sub_FEFF_prepare_area_prg_banks
C - - - - - 0x01FEBE 07:FEAE: 68        PLA
C - - - - - 0x01FEBF 07:FEAF: A8        TAY
C - - - - - 0x01FEC0 07:FEB0: 68        PLA
C - - - - - 0x01FEC1 07:FEB1: 20 A9 F0  JSR sub_F0A9
C - - - - - 0x01FEC4 07:FEB4: 4C 58 FD  JMP loc_FD58_prg_bankswitch___select_secondary_bank



sub_FEB7_demo_ai_input:
C - - - - - 0x01FEC7 07:FEB7: A9 30     LDA #con_prg_bank + $30
C - - - - - 0x01FEC9 07:FEB9: 20 6F FD  JSR sub_FD6F_prg_bankswitch___no_return
C - - - - - 0x01FECC 07:FEBC: 4C 94 9D  JMP loc_0x001DA4_demo_ai_input



sub_FEBF:
C - - - - - 0x01FECF 07:FEBF: A9 30     LDA #con_prg_bank + $30
C - - - - - 0x01FED1 07:FEC1: 20 6F FD  JSR sub_FD6F_prg_bankswitch___no_return
C - - - - - 0x01FED4 07:FEC4: 4C 96 9C  JMP loc_0x001CA6



sub_FEC7_prepare_area_config:
C - - - - - 0x01FED7 07:FEC7: A9 30     LDA #con_prg_bank + $30
C - - - - - 0x01FED9 07:FEC9: 20 6F FD  JSR sub_FD6F_prg_bankswitch___no_return
C - - - - - 0x01FEDC 07:FECC: 4C F2 9B  JMP loc_0x001C02_prepare_area_config



sub_FECF_stage_complete_handler:
C - - - - - 0x01FEDF 07:FECF: A9 30     LDA #con_prg_bank + $30
C - - - - - 0x01FEE1 07:FED1: 20 6F FD  JSR sub_FD6F_prg_bankswitch___no_return
C - - - - - 0x01FEE4 07:FED4: 4C 68 A1  JMP loc_0x002178_stage_complete_handler



sub_FED7_sound_mode_handler:
C - - - - - 0x01FEE7 07:FED7: A9 34     LDA #con_prg_bank + $34
C - - - - - 0x01FEE9 07:FED9: 20 6F FD  JSR sub_FD6F_prg_bankswitch___no_return
C - - - - - 0x01FEEC 07:FEDC: 4C D9 9A  JMP loc_0x009AE9_sound_mode_handler



sub_FEDF_cheat_combination:
C - - - - - 0x01FEEF 07:FEDF: A9 30     LDA #con_prg_bank + $30
C - - - - - 0x01FEF1 07:FEE1: 20 6F FD  JSR sub_FD6F_prg_bankswitch___no_return
C - - - - - 0x01FEF4 07:FEE4: 4C 9C A2  JMP loc_0x0022AC_cheat_code



loc_FEE7_area_select_in_japanese_version:
; bzk garbage
- - - - - - 0x01FEF7 07:FEE7: A9 30     LDA #con_prg_bank + $30
- - - - - - 0x01FEF9 07:FEE9: 20 6F FD  JSR sub_FD6F_prg_bankswitch___no_return
- - - - - - 0x01FEFC 07:FEEC: 4C C4 A2  JMP loc_0x0022D4_area_select_in_japanese_version



sub_FEEF_title_screen_handler:
C - - - - - 0x01FEFF 07:FEEF: A9 30     LDA #con_prg_bank + $30
C - - - - - 0x01FF01 07:FEF1: 20 6F FD  JSR sub_FD6F_prg_bankswitch___no_return
C - - - - - 0x01FF04 07:FEF4: 4C 0A A3  JMP loc_0x00231A_title_screen_handler



sub_FEF7_credits_handler:
C - - - - - 0x01FF07 07:FEF7: A9 30     LDA #con_prg_bank + $30
C - - - - - 0x01FF09 07:FEF9: 20 6F FD  JSR sub_FD6F_prg_bankswitch___no_return
C - - - - - 0x01FF0C 07:FEFC: 4C B7 A3  JMP loc_0x0023C7_credits_handler



sub_FEFF_prepare_area_prg_banks:
C - - - - - 0x01FF0F 07:FEFF: A4 50     LDY ram_area_index
C - - - - - 0x01FF11 07:FF01: B9 07 FF  LDA tbl_FF07_prg_bank,Y
C - - - - - 0x01FF14 07:FF04: 4C 6F FD  JMP loc_FD6F_prg_bankswitch___no_return



tbl_FF07_prg_bank:
- D 3 - - - 0x01FF17 07:FF07: 34        .byte con_prg_bank + $34   ; 00
- D 3 - - - 0x01FF18 07:FF08: 30        .byte con_prg_bank + $30   ; 01
- D 3 - - - 0x01FF19 07:FF09: 36        .byte con_prg_bank + $36   ; 02
- D 3 - - - 0x01FF1A 07:FF0A: 36        .byte con_prg_bank + $36   ; 03
- D 3 - - - 0x01FF1B 07:FF0B: 38        .byte con_prg_bank + $38   ; 04
- D 3 - - - 0x01FF1C 07:FF0C: 38        .byte con_prg_bank + $38   ; 05
- D 3 - - - 0x01FF1D 07:FF0D: 3A        .byte con_prg_bank + $3A   ; 06
- D 3 - - - 0x01FF1E 07:FF0E: 3A        .byte con_prg_bank + $3A   ; 07



sub_FF0F:
C - - - - - 0x01FF1F 07:FF0F: A5 26     LDA ram_for_A000
C - - - - - 0x01FF21 07:FF11: 8D 00 A0  STA $A000
C - - - - - 0x01FF24 07:FF14: A0 00     LDY #$00
C - - - - - 0x01FF26 07:FF16: 8C 00 80  STY $8000
C - - - - - 0x01FF29 07:FF19: AD F0 07  LDA ram_chr_bank_bg_1
C - - - - - 0x01FF2C 07:FF1C: 8D 01 80  STA $8001
C - - - - - 0x01FF2F 07:FF1F: C8        INY ; 01
C - - - - - 0x01FF30 07:FF20: 8C 00 80  STY $8000
C - - - - - 0x01FF33 07:FF23: AD F1 07  LDA ram_chr_bank_bg_2
C - - - - - 0x01FF36 07:FF26: 8D 01 80  STA $8001
C - - - - - 0x01FF39 07:FF29: C8        INY ; 02
C - - - - - 0x01FF3A 07:FF2A: 8C 00 80  STY $8000
C - - - - - 0x01FF3D 07:FF2D: AD F2 07  LDA ram_chr_bank_spr_1
C - - - - - 0x01FF40 07:FF30: 8D 01 80  STA $8001
C - - - - - 0x01FF43 07:FF33: C8        INY ; 03
C - - - - - 0x01FF44 07:FF34: 8C 00 80  STY $8000
C - - - - - 0x01FF47 07:FF37: AD F3 07  LDA ram_chr_bank_spr_2
C - - - - - 0x01FF4A 07:FF3A: 8D 01 80  STA $8001
C - - - - - 0x01FF4D 07:FF3D: C8        INY ; 04
C - - - - - 0x01FF4E 07:FF3E: 8C 00 80  STY $8000
C - - - - - 0x01FF51 07:FF41: AD F4 07  LDA ram_chr_bank_spr_3
C - - - - - 0x01FF54 07:FF44: 8D 01 80  STA $8001
C - - - - - 0x01FF57 07:FF47: C8        INY ; 05
C - - - - - 0x01FF58 07:FF48: 8C 00 80  STY $8000
C - - - - - 0x01FF5B 07:FF4B: AD F5 07  LDA ram_chr_bank_spr_4
C - - - - - 0x01FF5E 07:FF4E: 8D 01 80  STA $8001
C - - - - - 0x01FF61 07:FF51: 60        RTS


; bzk garbage
- - - - - - 0x01FF62 07:FF52: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01FF70 07:FF60: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01FF80 07:FF70: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01FF90 07:FF80: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01FFA0 07:FF90: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01FFB0 07:FFA0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01FFC0 07:FFB0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01FFD0 07:FFC0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01FFE0 07:FFD0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01FFF0 07:FFE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 


; bzk garbage
- - - - - - 0x020000 07:FFF0: 4D        .byte "MAST891129"



.out .sprintf("Free bytes in bank 3E: 0x%04X [%d]", ($FFFA - *), ($FFFA - *))



.segment "VECTORS"
- D 3 - - - 0x02000A 07:FFFA: 67 FB     .word vec_FB67_NMI
- D 3 - - - 0x02000C 07:FFFC: CA FA     .word vec_FACA_RESET
- D 3 - - - 0x02000E 07:FFFE: 7F E0     .word vec_E07F_IRQ



