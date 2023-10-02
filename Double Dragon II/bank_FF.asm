.segment "BANK_FF"
.include "bank_ram.inc"
.include "bank_val.inc"
.org $C000  ; for listing file
; 0x01C010-0x02000F



.export sub_0x01C010
.export sub_0x01C016_play_sound
.export sub_0x01C019_write_spr_chr_banks
.export sub_0x01C01C_jumping_spikes
.export sub_0x01C030
.export sub_0x01CF41
.export sub_0x01CF4C
.export sub_0x01CF93
.export sub_0x01CF9C
.export sub_0x01CFCB
.export sub_0x01CFD4
.export sub_0x01D150_respawn_player
.export sub_0x01D838_hide_unused_sprites
.export sub_0x01D885_clear_graphics
.export sub_0x01D97D
.export sub_0x01DA03
.export sub_0x01E224_create_black_screen
.export sub_0x01E257
.export sub_0x01E2F6
.export sub_0x01EEDA
.export sub_0x01F051
.export sub_0x01F058
.export sub_0x01FAA7
.export sub_0x01FC20_play_sound
.export sub_0x01FC52
.export sub_0x01FC61
.export sub_0x01FC83
.export sub_0x01FCA1
.export sub_0x01FCD3_clear_bg_and_spr_pattern
.export sub_0x01FE9C_nmi_on
.export sub_0x01FEA8_nmi_off
.export sub_0x01FEED_write_spr_chr_banks
.export tbl_0x020006_debug_byte



sub_0x01C010:
C D 2 - - - 0x01C010 07:C000: 4C E6 E2  JMP loc_E2E6

; bzk garbage
- - - - - - 0x01C013 07:C003: 4C 52 D6  JMP loc_D652

sub_0x01C016_play_sound:
C - - - - - 0x01C016 07:C006: 4C 10 FC  JMP loc_FC10_play_sound

sub_0x01C019_write_spr_chr_banks:
C - - - - - 0x01C019 07:C009: 4C DD FE  JMP loc_FEDD_write_spr_chr_banks

sub_0x01C01C_jumping_spikes:
C - - - - - 0x01C01C 07:C00C: 4C A0 FC  JMP loc_FCA0_jumping_spikes


; bzk garbage
- - - - - - 0x01C01F 07:C00F: 00        .byte $00   ; 
- - - - - - 0x01C020 07:C010: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 



sub_C020:
sub_0x01C030:
C - - - - - 0x01C030 07:C020: A9 00     LDA #$00
C - - - - - 0x01C032 07:C022: 8D BB 05  STA ram_05BB
C - - - - - 0x01C035 07:C025: 8D BC 05  STA ram_05BC
C - - - - - 0x01C038 07:C028: A0 04     LDY #$04
bra_C02A_loop:
C - - - - - 0x01C03A 07:C02A: 99 44 06  STA ram_0644,Y
C - - - - - 0x01C03D 07:C02D: 99 4E 06  STA ram_064E,Y
C - - - - - 0x01C040 07:C030: 99 49 06  STA ram_0649,Y
C - - - - - 0x01C043 07:C033: 99 53 06  STA ram_0653,Y
C - - - - - 0x01C046 07:C036: 88        DEY
C - - - - - 0x01C047 07:C037: 10 F1     BPL bra_C02A_loop
; A = 00
C - - - - - 0x01C049 07:C039: 8D 80 04  STA ram_0480
C - - - - - 0x01C04C 07:C03C: 8D 81 04  STA ram_0481
C - - - - - 0x01C04F 07:C03F: 8D 82 04  STA ram_0482
C - - - - - 0x01C052 07:C042: 8D 83 04  STA ram_0483
C - - - - - 0x01C055 07:C045: 8D 43 06  STA ram_0643
C - - - - - 0x01C058 07:C048: 8D 5E 06  STA ram_065E
C - - - - - 0x01C05B 07:C04B: 8D 5D 06  STA ram_065D
C - - - - - 0x01C05E 07:C04E: 8D 7A 03  STA ram_037A
C - - - - - 0x01C061 07:C051: AD FF BF  LDA $BFFF   ; bank id
C - - - - - 0x01C064 07:C054: 48        PHA
C - - - - - 0x01C065 07:C055: AD D0 00  LDA a: ram_pos_X_lo_cam
C - - - - - 0x01C068 07:C058: 29 F8     AND #$F8
C - - - - - 0x01C06A 07:C05A: 8D D0 00  STA a: ram_pos_X_lo_cam
C - - - - - 0x01C06D 07:C05D: AD D0 00  LDA a: ram_pos_X_lo_cam
C - - - - - 0x01C070 07:C060: 48        PHA
C - - - - - 0x01C071 07:C061: AD D1 00  LDA a: ram_pos_X_hi_cam
C - - - - - 0x01C074 07:C064: 48        PHA
C - - - - - 0x01C075 07:C065: AD D2 00  LDA a: ram_pos_Y_lo_cam
C - - - - - 0x01C078 07:C068: 48        PHA
C - - - - - 0x01C079 07:C069: AD D3 00  LDA a: ram_pos_Y_hi_cam
C - - - - - 0x01C07C 07:C06C: 48        PHA
C - - - - - 0x01C07D 07:C06D: AD D0 00  LDA a: ram_pos_X_lo_cam
C - - - - - 0x01C080 07:C070: 85 29     STA ram_0029
C - - - - - 0x01C082 07:C072: AD D1 00  LDA a: ram_pos_X_hi_cam
C - - - - - 0x01C085 07:C075: 85 2A     STA ram_002A
C - - - - - 0x01C087 07:C077: AD D2 00  LDA a: ram_pos_Y_lo_cam
C - - - - - 0x01C08A 07:C07A: 85 2B     STA ram_002B
C - - - - - 0x01C08C 07:C07C: AD D3 00  LDA a: ram_pos_Y_hi_cam
C - - - - - 0x01C08F 07:C07F: 85 2C     STA ram_002C
C - - - - - 0x01C091 07:C081: 20 AD C8  JSR sub_C8AD_calculate_mission_screen_pointers
C - - - - - 0x01C094 07:C084: A0 05     LDY #$05
C - - - - - 0x01C096 07:C086: B1 29     LDA (ram_0029),Y
C - - - - - 0x01C098 07:C088: 8D 9C 04  STA ram_chr_bg_1
C - - - - - 0x01C09B 07:C08B: C8        INY ; 06
C - - - - - 0x01C09C 07:C08C: B1 29     LDA (ram_0029),Y
C - - - - - 0x01C09E 07:C08E: 8D 9D 04  STA ram_chr_bg_2
C - - - - - 0x01C0A1 07:C091: C8        INY ; 07
C - - - - - 0x01C0A2 07:C092: B1 29     LDA (ram_0029),Y
C - - - - - 0x01C0A4 07:C094: 8D 9E 04  STA ram_chr_bg_3
C - - - - - 0x01C0A7 07:C097: C8        INY ; 08
C - - - - - 0x01C0A8 07:C098: B1 29     LDA (ram_0029),Y
C - - - - - 0x01C0AA 07:C09A: 8D 9F 04  STA ram_chr_bg_4
C - - - - - 0x01C0AD 07:C09D: 20 A4 FE  JSR sub_FEA4_write_bg_chr_banks
C - - - - - 0x01C0B0 07:C0A0: A0 02     LDY #$02
C - - - - - 0x01C0B2 07:C0A2: B1 29     LDA (ram_0029),Y
C - - - - - 0x01C0B4 07:C0A4: C8        INY ; 03
C - - - - - 0x01C0B5 07:C0A5: 11 29     ORA (ram_0029),Y
C - - - - - 0x01C0B7 07:C0A7: D0 08     BNE bra_C0B1
C - - - - - 0x01C0B9 07:C0A9: A5 13     LDA ram_0013
C - - - - - 0x01C0BB 07:C0AB: 20 20 CD  JSR sub_CD20_draw_static_screen
C - - - - - 0x01C0BE 07:C0AE: 4C 1A C1  JMP loc_C11A
bra_C0B1:
C - - - - - 0x01C0C1 07:C0B1: A9 00     LDA #$00
C - - - - - 0x01C0C3 07:C0B3: 8D 01 20  STA $2001
C - - - - - 0x01C0C6 07:C0B6: AD D0 00  LDA a: ram_pos_X_lo_cam
C - - - - - 0x01C0C9 07:C0B9: 8D D8 00  STA a: ram_00D8
C - - - - - 0x01C0CC 07:C0BC: 85 29     STA ram_0029
C - - - - - 0x01C0CE 07:C0BE: AD D1 00  LDA a: ram_pos_X_hi_cam
C - - - - - 0x01C0D1 07:C0C1: 85 2A     STA ram_002A
C - - - - - 0x01C0D3 07:C0C3: 18        CLC
C - - - - - 0x01C0D4 07:C0C4: 69 01     ADC #$01
C - - - - - 0x01C0D6 07:C0C6: 8D D1 00  STA a: ram_pos_X_hi_cam
C - - - - - 0x01C0D9 07:C0C9: 8D D9 00  STA a: ram_00D9
C - - - - - 0x01C0DC 07:C0CC: AD D2 00  LDA a: ram_pos_Y_lo_cam
C - - - - - 0x01C0DF 07:C0CF: 8D DA 00  STA a: ram_00DA
C - - - - - 0x01C0E2 07:C0D2: AD D3 00  LDA a: ram_pos_Y_hi_cam
C - - - - - 0x01C0E5 07:C0D5: 8D DB 00  STA a: ram_00DB
bra_C0D8_loop:
C - - - - - 0x01C0E8 07:C0D8: A5 29     LDA ram_0029
C - - - - - 0x01C0EA 07:C0DA: 48        PHA
C - - - - - 0x01C0EB 07:C0DB: A5 2A     LDA ram_002A
C - - - - - 0x01C0ED 07:C0DD: 48        PHA
C - - - - - 0x01C0EE 07:C0DE: 20 4E C1  JSR sub_C14E
C - - - - - 0x01C0F1 07:C0E1: AD D0 00  LDA a: ram_pos_X_lo_cam
C - - - - - 0x01C0F4 07:C0E4: 38        SEC
C - - - - - 0x01C0F5 07:C0E5: E9 01     SBC #< $0001
C - - - - - 0x01C0F7 07:C0E7: 8D D0 00  STA a: ram_pos_X_lo_cam
C - - - - - 0x01C0FA 07:C0EA: AD D1 00  LDA a: ram_pos_X_hi_cam
C - - - - - 0x01C0FD 07:C0ED: E9 00     SBC #> $0001
C - - - - - 0x01C0FF 07:C0EF: 8D D1 00  STA a: ram_pos_X_hi_cam
C - - - - - 0x01C102 07:C0F2: 20 70 C6  JSR sub_C670_write_buffer_to_ppu
C - - - - - 0x01C105 07:C0F5: 68        PLA
C - - - - - 0x01C106 07:C0F6: 85 2A     STA ram_002A
C - - - - - 0x01C108 07:C0F8: 68        PLA
C - - - - - 0x01C109 07:C0F9: 85 29     STA ram_0029
C - - - - - 0x01C10B 07:C0FB: A5 2A     LDA ram_002A
C - - - - - 0x01C10D 07:C0FD: CD D1 00  CMP a: ram_pos_X_hi_cam
C - - - - - 0x01C110 07:C100: D0 D6     BNE bra_C0D8_loop
C - - - - - 0x01C112 07:C102: A5 29     LDA ram_0029
C - - - - - 0x01C114 07:C104: CD D0 00  CMP a: ram_pos_X_lo_cam
C - - - - - 0x01C117 07:C107: D0 CF     BNE bra_C0D8_loop
bra_C109_loop:
C - - - - - 0x01C119 07:C109: 20 70 C6  JSR sub_C670_write_buffer_to_ppu
C - - - - - 0x01C11C 07:C10C: AD BB 05  LDA ram_05BB
C - - - - - 0x01C11F 07:C10F: CD BB 05  CMP ram_05BB
C - - - - - 0x01C122 07:C112: D0 F5     BNE bra_C109_loop
C - - - - - 0x01C124 07:C114: A9 18     LDA #$18
C - - - - - 0x01C126 07:C116: 05 E8     ORA ram_for_2001
C - - - - - 0x01C128 07:C118: 85 E8     STA ram_for_2001
loc_C11A:
C D 2 - - - 0x01C12A 07:C11A: A5 3A     LDA ram_003A
C - - - - - 0x01C12C 07:C11C: 49 FF     EOR #$FF
C - - - - - 0x01C12E 07:C11E: 8D B2 05  STA ram_05B2
C - - - - - 0x01C131 07:C121: 68        PLA
C - - - - - 0x01C132 07:C122: 8D D3 00  STA a: ram_pos_Y_hi_cam
C - - - - - 0x01C135 07:C125: 68        PLA
C - - - - - 0x01C136 07:C126: 8D D2 00  STA a: ram_pos_Y_lo_cam
C - - - - - 0x01C139 07:C129: 68        PLA
C - - - - - 0x01C13A 07:C12A: 8D D1 00  STA a: ram_pos_X_hi_cam
C - - - - - 0x01C13D 07:C12D: 68        PLA
C - - - - - 0x01C13E 07:C12E: 8D D0 00  STA a: ram_pos_X_lo_cam
C - - - - - 0x01C141 07:C131: 68        PLA
C - - - - - 0x01C142 07:C132: 20 0D FF  JSR sub_FF0D_prg_bankswitch
C - - - - - 0x01C145 07:C135: AD D0 00  LDA a: ram_pos_X_lo_cam
C - - - - - 0x01C148 07:C138: 8D D8 00  STA a: ram_00D8
C - - - - - 0x01C14B 07:C13B: AD D1 00  LDA a: ram_pos_X_hi_cam
C - - - - - 0x01C14E 07:C13E: 8D D9 00  STA a: ram_00D9
C - - - - - 0x01C151 07:C141: AD D2 00  LDA a: ram_pos_Y_lo_cam
C - - - - - 0x01C154 07:C144: 8D DA 00  STA a: ram_00DA
C - - - - - 0x01C157 07:C147: AD D3 00  LDA a: ram_pos_Y_hi_cam
C - - - - - 0x01C15A 07:C14A: 8D DB 00  STA a: ram_00DB
C - - - - - 0x01C15D 07:C14D: 60        RTS



sub_C14E:
C - - - - - 0x01C15E 07:C14E: AD FF BF  LDA $BFFF   ; bank id
C - - - - - 0x01C161 07:C151: 48        PHA
C - - - - - 0x01C162 07:C152: 20 60 C1  JSR sub_C160
C - - - - - 0x01C165 07:C155: 20 D0 C3  JSR sub_C3D0
C - - - - - 0x01C168 07:C158: 20 96 C5  JSR sub_C596
C - - - - - 0x01C16B 07:C15B: 68        PLA
C - - - - - 0x01C16C 07:C15C: 20 0D FF  JSR sub_FF0D_prg_bankswitch
C - - - - - 0x01C16F 07:C15F: 60        RTS



sub_C160:
C - - - - - 0x01C170 07:C160: A9 30     LDA #con_E2E6 + $30
C - - - - - 0x01C172 07:C162: 20 E6 E2  JSR sub_E2E6
C - - - - - 0x01C175 07:C165: 90 03     BCC bra_C16A
C - - - - - 0x01C177 07:C167: 4C 25 C3  JMP loc_C325_RTS
bra_C16A:
C - - - - - 0x01C17A 07:C16A: AD D0 00  LDA a: ram_pos_X_lo_cam
C - - - - - 0x01C17D 07:C16D: 18        CLC
C - - - - - 0x01C17E 07:C16E: 69 04     ADC #< $0004
C - - - - - 0x01C180 07:C170: 85 29     STA ram_0029
C - - - - - 0x01C182 07:C172: AD D1 00  LDA a: ram_pos_X_hi_cam
C - - - - - 0x01C185 07:C175: 69 00     ADC #> $0004
C - - - - - 0x01C187 07:C177: 85 2A     STA ram_002A
C - - - - - 0x01C189 07:C179: A5 29     LDA ram_0029
C - - - - - 0x01C18B 07:C17B: 29 F8     AND #$F8
C - - - - - 0x01C18D 07:C17D: 38        SEC
C - - - - - 0x01C18E 07:C17E: ED D8 00  SBC a: ram_00D8
C - - - - - 0x01C191 07:C181: 85 19     STA ram_0019
C - - - - - 0x01C193 07:C183: A5 2A     LDA ram_002A
C - - - - - 0x01C195 07:C185: ED D9 00  SBC a: ram_00D9
C - - - - - 0x01C198 07:C188: 85 1A     STA ram_001A
C - - - - - 0x01C19A 07:C18A: 05 19     ORA ram_0019
C - - - - - 0x01C19C 07:C18C: D0 03     BNE bra_C191
C - - - - - 0x01C19E 07:C18E: 4C 25 C3  JMP loc_C325_RTS
bra_C191:
C - - - - - 0x01C1A1 07:C191: 90 2B     BCC bra_C1BE
C - - - - - 0x01C1A3 07:C193: 24 1A     BIT ram_001A
C - - - - - 0x01C1A5 07:C195: 30 27     BMI bra_C1BE
C - - - - - 0x01C1A7 07:C197: AD D8 00  LDA a: ram_00D8
C - - - - - 0x01C1AA 07:C19A: 85 1A     STA ram_001A
C - - - - - 0x01C1AC 07:C19C: 85 29     STA ram_0029
C - - - - - 0x01C1AE 07:C19E: 85 2F     STA ram_002F
C - - - - - 0x01C1B0 07:C1A0: 18        CLC
C - - - - - 0x01C1B1 07:C1A1: 69 08     ADC #< $0008
C - - - - - 0x01C1B3 07:C1A3: 8D D8 00  STA a: ram_00D8
C - - - - - 0x01C1B6 07:C1A6: AD D9 00  LDA a: ram_00D9
C - - - - - 0x01C1B9 07:C1A9: 85 2A     STA ram_002A
C - - - - - 0x01C1BB 07:C1AB: 85 30     STA ram_0030
C - - - - - 0x01C1BD 07:C1AD: 69 00     ADC #> $0008
C - - - - - 0x01C1BF 07:C1AF: 8D D9 00  STA a: ram_00D9
C - - - - - 0x01C1C2 07:C1B2: A5 2A     LDA ram_002A
C - - - - - 0x01C1C4 07:C1B4: 18        CLC
C - - - - - 0x01C1C5 07:C1B5: 69 01     ADC #$01
C - - - - - 0x01C1C7 07:C1B7: 85 2A     STA ram_002A
C - - - - - 0x01C1C9 07:C1B9: 85 30     STA ram_0030
C - - - - - 0x01C1CB 07:C1BB: 4C D9 C1  JMP loc_C1D9
bra_C1BE:
C - - - - - 0x01C1CE 07:C1BE: AD D8 00  LDA a: ram_00D8
C - - - - - 0x01C1D1 07:C1C1: 85 29     STA ram_0029
C - - - - - 0x01C1D3 07:C1C3: 85 2F     STA ram_002F
C - - - - - 0x01C1D5 07:C1C5: 85 1A     STA ram_001A
C - - - - - 0x01C1D7 07:C1C7: 38        SEC
C - - - - - 0x01C1D8 07:C1C8: E9 08     SBC #< $0008
C - - - - - 0x01C1DA 07:C1CA: 8D D8 00  STA a: ram_00D8
C - - - - - 0x01C1DD 07:C1CD: AD D9 00  LDA a: ram_00D9
C - - - - - 0x01C1E0 07:C1D0: 85 2A     STA ram_002A
C - - - - - 0x01C1E2 07:C1D2: 85 30     STA ram_0030
C - - - - - 0x01C1E4 07:C1D4: E9 00     SBC #> $0008
C - - - - - 0x01C1E6 07:C1D6: 8D D9 00  STA a: ram_00D9
loc_C1D9:
C D 2 - - - 0x01C1E9 07:C1D9: AD DA 00  LDA a: ram_00DA
C - - - - - 0x01C1EC 07:C1DC: 18        CLC
C - - - - - 0x01C1ED 07:C1DD: 69 EF     ADC #< $00EF
C - - - - - 0x01C1EF 07:C1DF: 85 2B     STA ram_002B
C - - - - - 0x01C1F1 07:C1E1: AD DB 00  LDA a: ram_00DB
C - - - - - 0x01C1F4 07:C1E4: 69 00     ADC #> $00EF
C - - - - - 0x01C1F6 07:C1E6: 85 2C     STA ram_002C
C - - - - - 0x01C1F8 07:C1E8: 20 AD C8  JSR sub_C8AD_calculate_mission_screen_pointers
C - - - - - 0x01C1FB 07:C1EB: A0 04     LDY #$04
C - - - - - 0x01C1FD 07:C1ED: B1 29     LDA (ram_0029),Y
C - - - - - 0x01C1FF 07:C1EF: 8D 8F 04  STA ram_pal_bg_new
C - - - - - 0x01C202 07:C1F2: A0 05     LDY #$05    ; bzk optimize, INY
C - - - - - 0x01C204 07:C1F4: B1 29     LDA (ram_0029),Y
C - - - - - 0x01C206 07:C1F6: CD 9C 04  CMP ram_chr_bg_1
C - - - - - 0x01C209 07:C1F9: F0 18     BEQ bra_C213
C - - - - - 0x01C20B 07:C1FB: 8D 9C 04  STA ram_chr_bg_1
C - - - - - 0x01C20E 07:C1FE: C8        INY ; 06
C - - - - - 0x01C20F 07:C1FF: B1 29     LDA (ram_0029),Y
C - - - - - 0x01C211 07:C201: 8D 9D 04  STA ram_chr_bg_2
C - - - - - 0x01C214 07:C204: C8        INY ; 07
C - - - - - 0x01C215 07:C205: B1 29     LDA (ram_0029),Y
C - - - - - 0x01C217 07:C207: 8D 9E 04  STA ram_chr_bg_3
C - - - - - 0x01C21A 07:C20A: C8        INY ; 08
C - - - - - 0x01C21B 07:C20B: B1 29     LDA (ram_0029),Y
C - - - - - 0x01C21D 07:C20D: 8D 9F 04  STA ram_chr_bg_4
C - - - - - 0x01C220 07:C210: 20 A4 FE  JSR sub_FEA4_write_bg_chr_banks
bra_C213:
C - - - - - 0x01C223 07:C213: AD DA 00  LDA a: ram_00DA
C - - - - - 0x01C226 07:C216: 85 2B     STA ram_002B
C - - - - - 0x01C228 07:C218: AD DB 00  LDA a: ram_00DB
C - - - - - 0x01C22B 07:C21B: 85 2C     STA ram_002C
C - - - - - 0x01C22D 07:C21D: 20 94 C3  JSR sub_C394
C - - - - - 0x01C230 07:C220: A5 1A     LDA ram_001A
C - - - - - 0x01C232 07:C222: 4A        LSR
C - - - - - 0x01C233 07:C223: 4A        LSR
C - - - - - 0x01C234 07:C224: 4A        LSR
C - - - - - 0x01C235 07:C225: 85 1A     STA ram_001A
C - - - - - 0x01C237 07:C227: A4 04     LDY ram_0004
C - - - - - 0x01C239 07:C229: A5 05     LDA ram_0005
C - - - - - 0x01C23B 07:C22B: 29 01     AND #$01
C - - - - - 0x01C23D 07:C22D: F0 05     BEQ bra_C234
C - - - - - 0x01C23F 07:C22F: A5 04     LDA ram_0004
C - - - - - 0x01C241 07:C231: 69 1E     ADC #$1E
C - - - - - 0x01C243 07:C233: A8        TAY
bra_C234:
C - - - - - 0x01C244 07:C234: A5 1A     LDA ram_001A
C - - - - - 0x01C246 07:C236: 18        CLC
C - - - - - 0x01C247 07:C237: 79 71 C8  ADC tbl_C871_ppu_lo,Y
C - - - - - 0x01C24A 07:C23A: 85 2B     STA ram_002B
C - - - - - 0x01C24C 07:C23C: B9 35 C8  LDA tbl_C835_ppu_hi,Y
C - - - - - 0x01C24F 07:C23F: 69 00     ADC #$00
C - - - - - 0x01C251 07:C241: 85 2C     STA ram_002C
C - - - - - 0x01C253 07:C243: AE BC 05  LDX ram_05BC
C - - - - - 0x01C256 07:C246: A5 2C     LDA ram_002C
C - - - - - 0x01C258 07:C248: 9D B1 04  STA ram_ppu_buffer,X
C - - - - - 0x01C25B 07:C24B: E8        INX
C - - - - - 0x01C25C 07:C24C: A5 2B     LDA ram_002B
C - - - - - 0x01C25E 07:C24E: 9D B1 04  STA ram_ppu_buffer,X
C - - - - - 0x01C261 07:C251: E8        INX
C - - - - - 0x01C262 07:C252: A9 04     LDA #$04
C - - - - - 0x01C264 07:C254: 9D B1 04  STA ram_ppu_buffer,X
C - - - - - 0x01C267 07:C257: E8        INX
C - - - - - 0x01C268 07:C258: A5 27     LDA ram_0027
C - - - - - 0x01C26A 07:C25A: 9D B1 04  STA ram_ppu_buffer,X
C - - - - - 0x01C26D 07:C25D: E8        INX
C - - - - - 0x01C26E 07:C25E: A0 09     LDY #$09
C - - - - - 0x01C270 07:C260: B1 29     LDA (ram_0029),Y
C - - - - - 0x01C272 07:C262: 20 0D FF  JSR sub_FF0D_prg_bankswitch
C - - - - - 0x01C275 07:C265: A0 00     LDY #$00
C - - - - - 0x01C277 07:C267: B1 29     LDA (ram_0029),Y
C - - - - - 0x01C279 07:C269: 85 2B     STA ram_002B
C - - - - - 0x01C27B 07:C26B: C8        INY
C - - - - - 0x01C27C 07:C26C: B1 29     LDA (ram_0029),Y
C - - - - - 0x01C27E 07:C26E: 85 2C     STA ram_002C
C - - - - - 0x01C280 07:C270: A5 24     LDA ram_0024
C - - - - - 0x01C282 07:C272: 48        PHA
bra_C273_loop:
C - - - - - 0x01C283 07:C273: A5 24     LDA ram_0024
C - - - - - 0x01C285 07:C275: 85 06     STA ram_0006
C - - - - - 0x01C287 07:C277: A5 1A     LDA ram_001A
C - - - - - 0x01C289 07:C279: 85 07     STA ram_0007
C - - - - - 0x01C28B 07:C27B: 20 26 C3  JSR sub_C326
C - - - - - 0x01C28E 07:C27E: A4 24     LDY ram_0024
C - - - - - 0x01C290 07:C280: B1 2B     LDA (ram_002B),Y
C - - - - - 0x01C292 07:C282: 85 2D     STA ram_002D
C - - - - - 0x01C294 07:C284: C8        INY
C - - - - - 0x01C295 07:C285: B1 2B     LDA (ram_002B),Y
C - - - - - 0x01C297 07:C287: 85 2E     STA ram_002E
C - - - - - 0x01C299 07:C289: C8        INY
C - - - - - 0x01C29A 07:C28A: 84 24     STY ram_0024
C - - - - - 0x01C29C 07:C28C: A4 1A     LDY ram_001A
C - - - - - 0x01C29E 07:C28E: B1 2D     LDA (ram_002D),Y
C - - - - - 0x01C2A0 07:C290: 9D B1 04  STA ram_ppu_buffer,X
C - - - - - 0x01C2A3 07:C293: E8        INX
C - - - - - 0x01C2A4 07:C294: C6 27     DEC ram_0027
C - - - - - 0x01C2A6 07:C296: D0 DB     BNE bra_C273_loop
C - - - - - 0x01C2A8 07:C298: 68        PLA
C - - - - - 0x01C2A9 07:C299: 85 24     STA ram_0024
C - - - - - 0x01C2AB 07:C29B: 8E BC 05  STX ram_05BC
C - - - - - 0x01C2AE 07:C29E: A5 28     LDA ram_0028
C - - - - - 0x01C2B0 07:C2A0: D0 03     BNE bra_C2A5
C - - - - - 0x01C2B2 07:C2A2: 4C 25 C3  JMP loc_C325_RTS
bra_C2A5:
C - - - - - 0x01C2B5 07:C2A5: A5 2F     LDA ram_002F
C - - - - - 0x01C2B7 07:C2A7: 85 29     STA ram_0029
C - - - - - 0x01C2B9 07:C2A9: A5 30     LDA ram_0030
C - - - - - 0x01C2BB 07:C2AB: 85 2A     STA ram_002A
C - - - - - 0x01C2BD 07:C2AD: AD DA 00  LDA a: ram_00DA
C - - - - - 0x01C2C0 07:C2B0: 85 2B     STA ram_002B
C - - - - - 0x01C2C2 07:C2B2: AD DB 00  LDA a: ram_00DB
C - - - - - 0x01C2C5 07:C2B5: 85 2C     STA ram_002C
C - - - - - 0x01C2C7 07:C2B7: 20 AD C8  JSR sub_C8AD_calculate_mission_screen_pointers
C - - - - - 0x01C2CA 07:C2BA: A0 3B     LDY #$3B
C - - - - - 0x01C2CC 07:C2BC: A5 05     LDA ram_0005
C - - - - - 0x01C2CE 07:C2BE: 29 01     AND #$01
C - - - - - 0x01C2D0 07:C2C0: D0 02     BNE bra_C2C4
C - - - - - 0x01C2D2 07:C2C2: A0 1D     LDY #$1D
bra_C2C4:
C - - - - - 0x01C2D4 07:C2C4: A5 1A     LDA ram_001A
C - - - - - 0x01C2D6 07:C2C6: 18        CLC
C - - - - - 0x01C2D7 07:C2C7: 79 71 C8  ADC tbl_C871_ppu_lo,Y
C - - - - - 0x01C2DA 07:C2CA: 85 2B     STA ram_002B
C - - - - - 0x01C2DC 07:C2CC: B9 35 C8  LDA tbl_C835_ppu_hi,Y
C - - - - - 0x01C2DF 07:C2CF: 85 2C     STA ram_002C
C - - - - - 0x01C2E1 07:C2D1: 69 00     ADC #$00
C - - - - - 0x01C2E3 07:C2D3: AE BC 05  LDX ram_05BC
C - - - - - 0x01C2E6 07:C2D6: A5 2C     LDA ram_002C
C - - - - - 0x01C2E8 07:C2D8: 9D B1 04  STA ram_ppu_buffer,X
C - - - - - 0x01C2EB 07:C2DB: E8        INX
C - - - - - 0x01C2EC 07:C2DC: A5 2B     LDA ram_002B
C - - - - - 0x01C2EE 07:C2DE: 9D B1 04  STA ram_ppu_buffer,X
C - - - - - 0x01C2F1 07:C2E1: E8        INX
C - - - - - 0x01C2F2 07:C2E2: A9 04     LDA #$04
C - - - - - 0x01C2F4 07:C2E4: 9D B1 04  STA ram_ppu_buffer,X
C - - - - - 0x01C2F7 07:C2E7: E8        INX
C - - - - - 0x01C2F8 07:C2E8: A5 28     LDA ram_0028
C - - - - - 0x01C2FA 07:C2EA: 9D B1 04  STA ram_ppu_buffer,X
C - - - - - 0x01C2FD 07:C2ED: E8        INX
C - - - - - 0x01C2FE 07:C2EE: A0 00     LDY #$00
C - - - - - 0x01C300 07:C2F0: B1 29     LDA (ram_0029),Y
C - - - - - 0x01C302 07:C2F2: 85 2B     STA ram_002B
C - - - - - 0x01C304 07:C2F4: C8        INY
C - - - - - 0x01C305 07:C2F5: B1 29     LDA (ram_0029),Y
C - - - - - 0x01C307 07:C2F7: 85 2C     STA ram_002C
C - - - - - 0x01C309 07:C2F9: A9 00     LDA #$00
C - - - - - 0x01C30B 07:C2FB: 85 24     STA ram_0024
bra_C2FD_loop:
C - - - - - 0x01C30D 07:C2FD: A5 24     LDA ram_0024
C - - - - - 0x01C30F 07:C2FF: 85 06     STA ram_0006
C - - - - - 0x01C311 07:C301: A5 1A     LDA ram_001A
C - - - - - 0x01C313 07:C303: 85 07     STA ram_0007
C - - - - - 0x01C315 07:C305: 20 26 C3  JSR sub_C326
C - - - - - 0x01C318 07:C308: A4 24     LDY ram_0024
C - - - - - 0x01C31A 07:C30A: B1 2B     LDA (ram_002B),Y
C - - - - - 0x01C31C 07:C30C: 85 2D     STA ram_002D
C - - - - - 0x01C31E 07:C30E: C8        INY
C - - - - - 0x01C31F 07:C30F: B1 2B     LDA (ram_002B),Y
C - - - - - 0x01C321 07:C311: 85 2E     STA ram_002E
C - - - - - 0x01C323 07:C313: C8        INY
C - - - - - 0x01C324 07:C314: 84 24     STY ram_0024
C - - - - - 0x01C326 07:C316: A4 1A     LDY ram_001A
C - - - - - 0x01C328 07:C318: B1 2D     LDA (ram_002D),Y
C - - - - - 0x01C32A 07:C31A: 9D B1 04  STA ram_ppu_buffer,X
C - - - - - 0x01C32D 07:C31D: E8        INX
C - - - - - 0x01C32E 07:C31E: C6 28     DEC ram_0028
C - - - - - 0x01C330 07:C320: D0 DB     BNE bra_C2FD_loop
C - - - - - 0x01C332 07:C322: 8E BC 05  STX ram_05BC
loc_C325_RTS:
C D 2 - - - 0x01C335 07:C325: 60        RTS



sub_C326:
C - - - - - 0x01C336 07:C326: 98        TYA
C - - - - - 0x01C337 07:C327: 48        PHA
C - - - - - 0x01C338 07:C328: A0 02     LDY #$02
C - - - - - 0x01C33A 07:C32A: B1 29     LDA (ram_0029),Y
C - - - - - 0x01C33C 07:C32C: 85 08     STA ram_0008
C - - - - - 0x01C33E 07:C32E: C8        INY
C - - - - - 0x01C33F 07:C32F: B1 29     LDA (ram_0029),Y
C - - - - - 0x01C341 07:C331: 85 09     STA ram_0009
C - - - - - 0x01C343 07:C333: A9 00     LDA #$00
C - - - - - 0x01C345 07:C335: 85 0D     STA ram_000D
C - - - - - 0x01C347 07:C337: A5 05     LDA ram_0005
C - - - - - 0x01C349 07:C339: 29 01     AND #$01
C - - - - - 0x01C34B 07:C33B: D0 04     BNE bra_C341
C - - - - - 0x01C34D 07:C33D: A9 40     LDA #$40
C - - - - - 0x01C34F 07:C33F: 85 0D     STA ram_000D
bra_C341:
C - - - - - 0x01C351 07:C341: A5 06     LDA ram_0006
C - - - - - 0x01C353 07:C343: 29 F8     AND #$F8
C - - - - - 0x01C355 07:C345: 85 0A     STA ram_000A
C - - - - - 0x01C357 07:C347: A5 07     LDA ram_0007
C - - - - - 0x01C359 07:C349: 4A        LSR
C - - - - - 0x01C35A 07:C34A: 4A        LSR
C - - - - - 0x01C35B 07:C34B: 18        CLC
C - - - - - 0x01C35C 07:C34C: 65 0A     ADC ram_000A
C - - - - - 0x01C35E 07:C34E: 85 0A     STA ram_000A
C - - - - - 0x01C360 07:C350: A5 0A     LDA ram_000A
C - - - - - 0x01C362 07:C352: 18        CLC
C - - - - - 0x01C363 07:C353: 65 0D     ADC ram_000D
C - - - - - 0x01C365 07:C355: 85 0D     STA ram_000D
C - - - - - 0x01C367 07:C357: A5 06     LDA ram_0006
C - - - - - 0x01C369 07:C359: 29 02     AND #$02
C - - - - - 0x01C36B 07:C35B: 85 0B     STA ram_000B
C - - - - - 0x01C36D 07:C35D: A5 07     LDA ram_0007
C - - - - - 0x01C36F 07:C35F: 29 02     AND #$02
C - - - - - 0x01C371 07:C361: 4A        LSR
C - - - - - 0x01C372 07:C362: 05 0B     ORA ram_000B
C - - - - - 0x01C374 07:C364: A8        TAY
C - - - - - 0x01C375 07:C365: B9 90 C3  LDA tbl_C390,Y
C - - - - - 0x01C378 07:C368: 85 0B     STA ram_000B
C - - - - - 0x01C37A 07:C36A: 49 FF     EOR #$FF
C - - - - - 0x01C37C 07:C36C: 85 0C     STA ram_000C
C - - - - - 0x01C37E 07:C36E: A4 0A     LDY ram_000A
C - - - - - 0x01C380 07:C370: A5 0B     LDA ram_000B
C - - - - - 0x01C382 07:C372: 31 08     AND (ram_0008),Y
C - - - - - 0x01C384 07:C374: 85 0E     STA ram_000E
C - - - - - 0x01C386 07:C376: A4 0D     LDY ram_000D
C - - - - - 0x01C388 07:C378: A5 0C     LDA ram_000C
C - - - - - 0x01C38A 07:C37A: 39 BD 05  AND ram_bg_attr_buffer,Y
C - - - - - 0x01C38D 07:C37D: 05 0E     ORA ram_000E
C - - - - - 0x01C38F 07:C37F: 99 BD 05  STA ram_bg_attr_buffer,Y
C - - - - - 0x01C392 07:C382: 98        TYA
C - - - - - 0x01C393 07:C383: 29 E0     AND #$E0
C - - - - - 0x01C395 07:C385: CD B1 05  CMP ram_05B1
C - - - - - 0x01C398 07:C388: B0 03     BCS bra_C38D
C - - - - - 0x01C39A 07:C38A: 8D B1 05  STA ram_05B1
bra_C38D:
C - - - - - 0x01C39D 07:C38D: 68        PLA
C - - - - - 0x01C39E 07:C38E: A8        TAY
C - - - - - 0x01C39F 07:C38F: 60        RTS



tbl_C390:
- D 2 - - - 0x01C3A0 07:C390: 03        .byte $03   ; 00
- D 2 - - - 0x01C3A1 07:C391: 0C        .byte $0C   ; 01
- D 2 - - - 0x01C3A2 07:C392: 30        .byte $30   ; 02
- D 2 - - - 0x01C3A3 07:C393: C0        .byte $C0   ; 03



sub_C394:
C - - - - - 0x01C3A4 07:C394: 8A        TXA
C - - - - - 0x01C3A5 07:C395: 48        PHA
C - - - - - 0x01C3A6 07:C396: 46 04     LSR ram_0004
C - - - - - 0x01C3A8 07:C398: 46 04     LSR ram_0004
C - - - - - 0x01C3AA 07:C39A: 46 04     LSR ram_0004
C - - - - - 0x01C3AC 07:C39C: A5 04     LDA ram_0004
C - - - - - 0x01C3AE 07:C39E: C9 1E     CMP #$1E
C - - - - - 0x01C3B0 07:C3A0: 90 06     BCC bra_C3A8
- - - - - - 0x01C3B2 07:C3A2: E9 1E     SBC #$1E
- - - - - - 0x01C3B4 07:C3A4: A9 30     LDA #$30
- - - - - - 0x01C3B6 07:C3A6: 85 23     STA ram_0023
bra_C3A8:
C - - - - - 0x01C3B8 07:C3A8: 48        PHA
C - - - - - 0x01C3B9 07:C3A9: 85 24     STA ram_0024
C - - - - - 0x01C3BB 07:C3AB: A9 1D     LDA #$1D
C - - - - - 0x01C3BD 07:C3AD: 38        SEC
C - - - - - 0x01C3BE 07:C3AE: E5 24     SBC ram_0024
C - - - - - 0x01C3C0 07:C3B0: 85 24     STA ram_0024
C - - - - - 0x01C3C2 07:C3B2: 06 24     ASL ram_0024
C - - - - - 0x01C3C4 07:C3B4: 68        PLA
C - - - - - 0x01C3C5 07:C3B5: 18        CLC
C - - - - - 0x01C3C6 07:C3B6: 69 01     ADC #$01
C - - - - - 0x01C3C8 07:C3B8: A2 18     LDX #$18
C - - - - - 0x01C3CA 07:C3BA: 86 27     STX ram_0027
C - - - - - 0x01C3CC 07:C3BC: A2 00     LDX #$00
C - - - - - 0x01C3CE 07:C3BE: 86 28     STX ram_0028
C - - - - - 0x01C3D0 07:C3C0: C9 18     CMP #$18
C - - - - - 0x01C3D2 07:C3C2: B0 09     BCS bra_C3CD
C - - - - - 0x01C3D4 07:C3C4: 85 27     STA ram_0027
C - - - - - 0x01C3D6 07:C3C6: A9 18     LDA #$18
C - - - - - 0x01C3D8 07:C3C8: 38        SEC
C - - - - - 0x01C3D9 07:C3C9: E5 27     SBC ram_0027
C - - - - - 0x01C3DB 07:C3CB: 85 28     STA ram_0028
bra_C3CD:
C - - - - - 0x01C3DD 07:C3CD: 68        PLA
C - - - - - 0x01C3DE 07:C3CE: AA        TAX
C - - - - - 0x01C3DF 07:C3CF: 60        RTS



sub_C3D0:
C - - - - - 0x01C3E0 07:C3D0: A9 30     LDA #con_E2E6 + $30
C - - - - - 0x01C3E2 07:C3D2: 20 E6 E2  JSR sub_E2E6
C - - - - - 0x01C3E5 07:C3D5: 90 03     BCC bra_C3DA
C - - - - - 0x01C3E7 07:C3D7: 4C 95 C5  JMP loc_C595_RTS
bra_C3DA:
C - - - - - 0x01C3EA 07:C3DA: AD D2 00  LDA a: ram_pos_Y_lo_cam
C - - - - - 0x01C3ED 07:C3DD: 29 F8     AND #$F8
C - - - - - 0x01C3EF 07:C3DF: 38        SEC
C - - - - - 0x01C3F0 07:C3E0: ED DA 00  SBC a: ram_00DA
C - - - - - 0x01C3F3 07:C3E3: 85 19     STA ram_0019
C - - - - - 0x01C3F5 07:C3E5: AD D3 00  LDA a: ram_pos_Y_hi_cam
C - - - - - 0x01C3F8 07:C3E8: ED DB 00  SBC a: ram_00DB
C - - - - - 0x01C3FB 07:C3EB: 85 1A     STA ram_001A
C - - - - - 0x01C3FD 07:C3ED: 05 19     ORA ram_0019
C - - - - - 0x01C3FF 07:C3EF: D0 03     BNE bra_C3F4
C - - - - - 0x01C401 07:C3F1: 4C 95 C5  JMP loc_C595_RTS
bra_C3F4:
C - - - - - 0x01C404 07:C3F4: 24 1A     BIT ram_001A
C - - - - - 0x01C406 07:C3F6: 30 2B     BMI bra_C423
C - - - - - 0x01C408 07:C3F8: AD DA 00  LDA a: ram_00DA
C - - - - - 0x01C40B 07:C3FB: 18        CLC
C - - - - - 0x01C40C 07:C3FC: 69 08     ADC #< $0008
C - - - - - 0x01C40E 07:C3FE: 8D DA 00  STA a: ram_00DA
C - - - - - 0x01C411 07:C401: 85 1A     STA ram_001A
C - - - - - 0x01C413 07:C403: 85 2B     STA ram_002B
C - - - - - 0x01C415 07:C405: AD DB 00  LDA a: ram_00DB
C - - - - - 0x01C418 07:C408: 69 00     ADC #> $0008
C - - - - - 0x01C41A 07:C40A: 8D DB 00  STA a: ram_00DB
C - - - - - 0x01C41D 07:C40D: 85 2C     STA ram_002C
C - - - - - 0x01C41F 07:C40F: A5 2B     LDA ram_002B
C - - - - - 0x01C421 07:C411: 18        CLC
C - - - - - 0x01C422 07:C412: 69 EF     ADC #< $00EF
C - - - - - 0x01C424 07:C414: 85 2B     STA ram_002B
C - - - - - 0x01C426 07:C416: 85 2F     STA ram_002F
C - - - - - 0x01C428 07:C418: A5 2C     LDA ram_002C
C - - - - - 0x01C42A 07:C41A: 69 00     ADC #> $00EF
C - - - - - 0x01C42C 07:C41C: 85 2C     STA ram_002C
C - - - - - 0x01C42E 07:C41E: 85 30     STA ram_0030
C - - - - - 0x01C430 07:C420: 4C 49 C4  JMP loc_C449
bra_C423:
C - - - - - 0x01C433 07:C423: AD DA 00  LDA a: ram_00DA
C - - - - - 0x01C436 07:C426: 38        SEC
C - - - - - 0x01C437 07:C427: E9 08     SBC #< $0008
C - - - - - 0x01C439 07:C429: 85 2B     STA ram_002B
C - - - - - 0x01C43B 07:C42B: 8D DA 00  STA a: ram_00DA
C - - - - - 0x01C43E 07:C42E: AD DB 00  LDA a: ram_00DB
C - - - - - 0x01C441 07:C431: E9 00     SBC #> $0008
C - - - - - 0x01C443 07:C433: 85 2C     STA ram_002C
C - - - - - 0x01C445 07:C435: 8D DB 00  STA a: ram_00DB
C - - - - - 0x01C448 07:C438: A5 2B     LDA ram_002B
C - - - - - 0x01C44A 07:C43A: 18        CLC
C - - - - - 0x01C44B 07:C43B: 69 30     ADC #< $0030
C - - - - - 0x01C44D 07:C43D: 85 2B     STA ram_002B
C - - - - - 0x01C44F 07:C43F: 85 2F     STA ram_002F
C - - - - - 0x01C451 07:C441: A5 2C     LDA ram_002C
C - - - - - 0x01C453 07:C443: 69 00     ADC #> $0030
C - - - - - 0x01C455 07:C445: 85 2C     STA ram_002C
C - - - - - 0x01C457 07:C447: 85 30     STA ram_0030
loc_C449:
C D 2 - - - 0x01C459 07:C449: AD D8 00  LDA a: ram_00D8
C - - - - - 0x01C45C 07:C44C: 85 29     STA ram_0029
C - - - - - 0x01C45E 07:C44E: AD D9 00  LDA a: ram_00D9
C - - - - - 0x01C461 07:C451: 85 2A     STA ram_002A
C - - - - - 0x01C463 07:C453: 20 AD C8  JSR sub_C8AD_calculate_mission_screen_pointers
C - - - - - 0x01C466 07:C456: A0 04     LDY #$04
C - - - - - 0x01C468 07:C458: B1 29     LDA (ram_0029),Y
C - - - - - 0x01C46A 07:C45A: 8D 8F 04  STA ram_pal_bg_new
C - - - - - 0x01C46D 07:C45D: A0 05     LDY #$05    ; bzk optimize, INY
C - - - - - 0x01C46F 07:C45F: B1 29     LDA (ram_0029),Y
C - - - - - 0x01C471 07:C461: CD 9C 04  CMP ram_chr_bg_1
C - - - - - 0x01C474 07:C464: F0 18     BEQ bra_C47E
- - - - - - 0x01C476 07:C466: 8D 9C 04  STA ram_chr_bg_1
- - - - - - 0x01C479 07:C469: C8        INY ; 06
- - - - - - 0x01C47A 07:C46A: B1 29     LDA (ram_0029),Y
- - - - - - 0x01C47C 07:C46C: 8D 9D 04  STA ram_chr_bg_2
- - - - - - 0x01C47F 07:C46F: C8        INY ; 07
- - - - - - 0x01C480 07:C470: B1 29     LDA (ram_0029),Y
- - - - - - 0x01C482 07:C472: 8D 9E 04  STA ram_chr_bg_3
- - - - - - 0x01C485 07:C475: C8        INY ; 08
- - - - - - 0x01C486 07:C476: B1 29     LDA (ram_0029),Y
- - - - - - 0x01C488 07:C478: 8D 9F 04  STA ram_chr_bg_4
- - - - - - 0x01C48B 07:C47B: 20 A4 FE  JSR sub_FEA4_write_bg_chr_banks
bra_C47E:
C - - - - - 0x01C48E 07:C47E: AD D8 00  LDA a: ram_00D8
C - - - - - 0x01C491 07:C481: 4A        LSR
C - - - - - 0x01C492 07:C482: 4A        LSR
C - - - - - 0x01C493 07:C483: 4A        LSR
C - - - - - 0x01C494 07:C484: 85 1A     STA ram_001A
C - - - - - 0x01C496 07:C486: 85 28     STA ram_0028
C - - - - - 0x01C498 07:C488: 85 27     STA ram_0027
C - - - - - 0x01C49A 07:C48A: A9 20     LDA #$20
C - - - - - 0x01C49C 07:C48C: 38        SEC
C - - - - - 0x01C49D 07:C48D: E5 27     SBC ram_0027
C - - - - - 0x01C49F 07:C48F: 85 27     STA ram_0027
C - - - - - 0x01C4A1 07:C491: A5 2F     LDA ram_002F
C - - - - - 0x01C4A3 07:C493: 85 2B     STA ram_002B
C - - - - - 0x01C4A5 07:C495: A5 30     LDA ram_0030
C - - - - - 0x01C4A7 07:C497: 85 2C     STA ram_002C
C - - - - - 0x01C4A9 07:C499: 20 FE C8  JSR sub_C8FE
C - - - - - 0x01C4AC 07:C49C: 46 04     LSR ram_0004
C - - - - - 0x01C4AE 07:C49E: 46 04     LSR ram_0004
C - - - - - 0x01C4B0 07:C4A0: 46 04     LSR ram_0004
C - - - - - 0x01C4B2 07:C4A2: A5 04     LDA ram_0004
C - - - - - 0x01C4B4 07:C4A4: 85 24     STA ram_0024
C - - - - - 0x01C4B6 07:C4A6: A5 05     LDA ram_0005
C - - - - - 0x01C4B8 07:C4A8: 29 01     AND #$01
C - - - - - 0x01C4BA 07:C4AA: F0 07     BEQ bra_C4B3
C - - - - - 0x01C4BC 07:C4AC: A5 04     LDA ram_0004
C - - - - - 0x01C4BE 07:C4AE: 18        CLC
C - - - - - 0x01C4BF 07:C4AF: 69 1E     ADC #$1E
C - - - - - 0x01C4C1 07:C4B1: 85 04     STA ram_0004
bra_C4B3:
C - - - - - 0x01C4C3 07:C4B3: A5 04     LDA ram_0004
C - - - - - 0x01C4C5 07:C4B5: 85 25     STA ram_0025
C - - - - - 0x01C4C7 07:C4B7: A8        TAY
C - - - - - 0x01C4C8 07:C4B8: A9 1D     LDA #$1D
C - - - - - 0x01C4CA 07:C4BA: 38        SEC
C - - - - - 0x01C4CB 07:C4BB: E5 24     SBC ram_0024
C - - - - - 0x01C4CD 07:C4BD: 85 24     STA ram_0024
C - - - - - 0x01C4CF 07:C4BF: 06 24     ASL ram_0024
C - - - - - 0x01C4D1 07:C4C1: A5 1A     LDA ram_001A
C - - - - - 0x01C4D3 07:C4C3: 18        CLC
C - - - - - 0x01C4D4 07:C4C4: 79 71 C8  ADC tbl_C871_ppu_lo,Y
C - - - - - 0x01C4D7 07:C4C7: 85 2B     STA ram_002B
C - - - - - 0x01C4D9 07:C4C9: B9 35 C8  LDA tbl_C835_ppu_hi,Y
C - - - - - 0x01C4DC 07:C4CC: 69 00     ADC #$00
C - - - - - 0x01C4DE 07:C4CE: AE BC 05  LDX ram_05BC
C - - - - - 0x01C4E1 07:C4D1: 9D B1 04  STA ram_ppu_buffer,X
C - - - - - 0x01C4E4 07:C4D4: E8        INX
C - - - - - 0x01C4E5 07:C4D5: A5 2B     LDA ram_002B
C - - - - - 0x01C4E7 07:C4D7: 9D B1 04  STA ram_ppu_buffer,X
C - - - - - 0x01C4EA 07:C4DA: E8        INX
C - - - - - 0x01C4EB 07:C4DB: A9 00     LDA #$00
C - - - - - 0x01C4ED 07:C4DD: 9D B1 04  STA ram_ppu_buffer,X
C - - - - - 0x01C4F0 07:C4E0: E8        INX
C - - - - - 0x01C4F1 07:C4E1: A5 27     LDA ram_0027
C - - - - - 0x01C4F3 07:C4E3: 9D B1 04  STA ram_ppu_buffer,X
C - - - - - 0x01C4F6 07:C4E6: E8        INX
C - - - - - 0x01C4F7 07:C4E7: A0 09     LDY #$09
C - - - - - 0x01C4F9 07:C4E9: B1 29     LDA (ram_0029),Y
C - - - - - 0x01C4FB 07:C4EB: 20 0D FF  JSR sub_FF0D_prg_bankswitch
C - - - - - 0x01C4FE 07:C4EE: A0 00     LDY #$00
C - - - - - 0x01C500 07:C4F0: B1 29     LDA (ram_0029),Y
C - - - - - 0x01C502 07:C4F2: 85 2B     STA ram_002B
C - - - - - 0x01C504 07:C4F4: C8        INY
C - - - - - 0x01C505 07:C4F5: B1 29     LDA (ram_0029),Y
C - - - - - 0x01C507 07:C4F7: 85 2C     STA ram_002C
C - - - - - 0x01C509 07:C4F9: A4 24     LDY ram_0024
C - - - - - 0x01C50B 07:C4FB: B1 2B     LDA (ram_002B),Y
C - - - - - 0x01C50D 07:C4FD: 85 2D     STA ram_002D
C - - - - - 0x01C50F 07:C4FF: C8        INY
C - - - - - 0x01C510 07:C500: B1 2B     LDA (ram_002B),Y
C - - - - - 0x01C512 07:C502: 85 2E     STA ram_002E
C - - - - - 0x01C514 07:C504: A4 1A     LDY ram_001A
bra_C506_loop:
C - - - - - 0x01C516 07:C506: A5 24     LDA ram_0024
C - - - - - 0x01C518 07:C508: 85 06     STA ram_0006
C - - - - - 0x01C51A 07:C50A: A5 1A     LDA ram_001A
C - - - - - 0x01C51C 07:C50C: 85 07     STA ram_0007
C - - - - - 0x01C51E 07:C50E: 20 26 C3  JSR sub_C326
C - - - - - 0x01C521 07:C511: A4 1A     LDY ram_001A
C - - - - - 0x01C523 07:C513: B1 2D     LDA (ram_002D),Y
C - - - - - 0x01C525 07:C515: C8        INY
C - - - - - 0x01C526 07:C516: 84 1A     STY ram_001A
C - - - - - 0x01C528 07:C518: 9D B1 04  STA ram_ppu_buffer,X
C - - - - - 0x01C52B 07:C51B: E8        INX
C - - - - - 0x01C52C 07:C51C: C6 27     DEC ram_0027
C - - - - - 0x01C52E 07:C51E: D0 E6     BNE bra_C506_loop
C - - - - - 0x01C530 07:C520: 8E BC 05  STX ram_05BC
C - - - - - 0x01C533 07:C523: A5 28     LDA ram_0028
C - - - - - 0x01C535 07:C525: F0 6E     BEQ bra_C595_RTS
C - - - - - 0x01C537 07:C527: A5 2F     LDA ram_002F
C - - - - - 0x01C539 07:C529: 85 2B     STA ram_002B
C - - - - - 0x01C53B 07:C52B: A5 30     LDA ram_0030
C - - - - - 0x01C53D 07:C52D: 85 2C     STA ram_002C
C - - - - - 0x01C53F 07:C52F: AD D8 00  LDA a: ram_00D8
C - - - - - 0x01C542 07:C532: 85 29     STA ram_0029
C - - - - - 0x01C544 07:C534: AD D9 00  LDA a: ram_00D9
C - - - - - 0x01C547 07:C537: 18        CLC
C - - - - - 0x01C548 07:C538: 69 01     ADC #$01
C - - - - - 0x01C54A 07:C53A: 85 2A     STA ram_002A
C - - - - - 0x01C54C 07:C53C: 20 AD C8  JSR sub_C8AD_calculate_mission_screen_pointers
C - - - - - 0x01C54F 07:C53F: AE BC 05  LDX ram_05BC
C - - - - - 0x01C552 07:C542: A4 25     LDY ram_0025
C - - - - - 0x01C554 07:C544: B9 35 C8  LDA tbl_C835_ppu_hi,Y
C - - - - - 0x01C557 07:C547: 9D B1 04  STA ram_ppu_buffer,X
C - - - - - 0x01C55A 07:C54A: E8        INX
C - - - - - 0x01C55B 07:C54B: B9 71 C8  LDA tbl_C871_ppu_lo,Y
C - - - - - 0x01C55E 07:C54E: 9D B1 04  STA ram_ppu_buffer,X
C - - - - - 0x01C561 07:C551: E8        INX
C - - - - - 0x01C562 07:C552: A9 00     LDA #$00
C - - - - - 0x01C564 07:C554: 9D B1 04  STA ram_ppu_buffer,X
C - - - - - 0x01C567 07:C557: E8        INX
C - - - - - 0x01C568 07:C558: A5 28     LDA ram_0028
C - - - - - 0x01C56A 07:C55A: 9D B1 04  STA ram_ppu_buffer,X
C - - - - - 0x01C56D 07:C55D: E8        INX
C - - - - - 0x01C56E 07:C55E: A0 00     LDY #$00
C - - - - - 0x01C570 07:C560: B1 29     LDA (ram_0029),Y
C - - - - - 0x01C572 07:C562: 85 2B     STA ram_002B
C - - - - - 0x01C574 07:C564: C8        INY ; 01
C - - - - - 0x01C575 07:C565: B1 29     LDA (ram_0029),Y
C - - - - - 0x01C577 07:C567: 85 2C     STA ram_002C
C - - - - - 0x01C579 07:C569: A4 24     LDY ram_0024
C - - - - - 0x01C57B 07:C56B: B1 2B     LDA (ram_002B),Y
C - - - - - 0x01C57D 07:C56D: 85 2D     STA ram_002D
C - - - - - 0x01C57F 07:C56F: C8        INY ; 02
C - - - - - 0x01C580 07:C570: B1 2B     LDA (ram_002B),Y
C - - - - - 0x01C582 07:C572: 85 2E     STA ram_002E
C - - - - - 0x01C584 07:C574: A0 00     LDY #$00
C - - - - - 0x01C586 07:C576: 84 1A     STY ram_001A
bra_C578_loop:
C - - - - - 0x01C588 07:C578: A5 24     LDA ram_0024
C - - - - - 0x01C58A 07:C57A: 85 06     STA ram_0006
C - - - - - 0x01C58C 07:C57C: A5 1A     LDA ram_001A
C - - - - - 0x01C58E 07:C57E: 85 07     STA ram_0007
C - - - - - 0x01C590 07:C580: 20 26 C3  JSR sub_C326
C - - - - - 0x01C593 07:C583: A4 1A     LDY ram_001A
C - - - - - 0x01C595 07:C585: B1 2D     LDA (ram_002D),Y
C - - - - - 0x01C597 07:C587: C8        INY
C - - - - - 0x01C598 07:C588: 84 1A     STY ram_001A
C - - - - - 0x01C59A 07:C58A: 9D B1 04  STA ram_ppu_buffer,X
C - - - - - 0x01C59D 07:C58D: E8        INX
C - - - - - 0x01C59E 07:C58E: C6 28     DEC ram_0028
C - - - - - 0x01C5A0 07:C590: D0 E6     BNE bra_C578_loop
C - - - - - 0x01C5A2 07:C592: 8E BC 05  STX ram_05BC
bra_C595_RTS:
loc_C595_RTS:
C D 2 - - - 0x01C5A5 07:C595: 60        RTS



sub_C596:
loc_C596:
C D 2 - - - 0x01C5A6 07:C596: AD B1 05  LDA ram_05B1
C - - - - - 0x01C5A9 07:C599: 30 5C     BMI bra_C5F7_RTS
C - - - - - 0x01C5AB 07:C59B: A9 30     LDA #con_E2E6 + $30
C - - - - - 0x01C5AD 07:C59D: 20 E6 E2  JSR sub_E2E6
C - - - - - 0x01C5B0 07:C5A0: B0 55     BCS bra_C5F7_RTS
C - - - - - 0x01C5B2 07:C5A2: A9 23     LDA #> $23C0
C - - - - - 0x01C5B4 07:C5A4: 85 2A     STA ram_002A
C - - - - - 0x01C5B6 07:C5A6: A9 C0     LDA #< $23C0
C - - - - - 0x01C5B8 07:C5A8: 85 29     STA ram_0029
C - - - - - 0x01C5BA 07:C5AA: AD B1 05  LDA ram_05B1
C - - - - - 0x01C5BD 07:C5AD: C9 40     CMP #$40
C - - - - - 0x01C5BF 07:C5AF: 90 04     BCC bra_C5B5
C - - - - - 0x01C5C1 07:C5B1: A9 2B     LDA #$2B
C - - - - - 0x01C5C3 07:C5B3: 85 2A     STA ram_002A
bra_C5B5:
C - - - - - 0x01C5C5 07:C5B5: AD B1 05  LDA ram_05B1
C - - - - - 0x01C5C8 07:C5B8: 29 3F     AND #$3F
C - - - - - 0x01C5CA 07:C5BA: 18        CLC
C - - - - - 0x01C5CB 07:C5BB: 65 29     ADC ram_0029
C - - - - - 0x01C5CD 07:C5BD: 85 29     STA ram_0029
C - - - - - 0x01C5CF 07:C5BF: A5 2A     LDA ram_002A
C - - - - - 0x01C5D1 07:C5C1: 69 00     ADC #$00
C - - - - - 0x01C5D3 07:C5C3: 85 2A     STA ram_002A
C - - - - - 0x01C5D5 07:C5C5: AE BC 05  LDX ram_05BC
C - - - - - 0x01C5D8 07:C5C8: 9D B1 04  STA ram_ppu_buffer,X
C - - - - - 0x01C5DB 07:C5CB: E8        INX
C - - - - - 0x01C5DC 07:C5CC: A5 29     LDA ram_0029
C - - - - - 0x01C5DE 07:C5CE: 9D B1 04  STA ram_ppu_buffer,X
C - - - - - 0x01C5E1 07:C5D1: E8        INX
C - - - - - 0x01C5E2 07:C5D2: A9 00     LDA #$00
C - - - - - 0x01C5E4 07:C5D4: 9D B1 04  STA ram_ppu_buffer,X
C - - - - - 0x01C5E7 07:C5D7: E8        INX
C - - - - - 0x01C5E8 07:C5D8: A9 20     LDA #$20    ; counter
C - - - - - 0x01C5EA 07:C5DA: 9D B1 04  STA ram_ppu_buffer,X
C - - - - - 0x01C5ED 07:C5DD: E8        INX
C - - - - - 0x01C5EE 07:C5DE: AC B1 05  LDY ram_05B1
bra_C5E1_loop:
C - - - - - 0x01C5F1 07:C5E1: B9 BD 05  LDA ram_bg_attr_buffer,Y
C - - - - - 0x01C5F4 07:C5E4: 9D B1 04  STA ram_ppu_buffer,X
C - - - - - 0x01C5F7 07:C5E7: E8        INX
C - - - - - 0x01C5F8 07:C5E8: C8        INY
C - - - - - 0x01C5F9 07:C5E9: 98        TYA
C - - - - - 0x01C5FA 07:C5EA: 29 1F     AND #$1F
C - - - - - 0x01C5FC 07:C5EC: D0 F3     BNE bra_C5E1_loop
C - - - - - 0x01C5FE 07:C5EE: 8C B1 05  STY ram_05B1
C - - - - - 0x01C601 07:C5F1: 8E BC 05  STX ram_05BC
C - - - - - 0x01C604 07:C5F4: 4C 96 C5  JMP loc_C596
bra_C5F7_RTS:
C - - - - - 0x01C607 07:C5F7: 60        RTS


; bzk garbage
- - - - - - 0x01C608 07:C5F8: 03        .byte $03, $03, $03, $03, $03, $03, $02, $02   ; 
- - - - - - 0x01C610 07:C600: 02        .byte $02, $02, $02, $02, $02, $02, $01, $01, $01, $01, $01, $01, $01, $01, $00, $00   ; 
- - - - - - 0x01C620 07:C610: 00        .byte $00, $00, $00, $00, $00, $00, $0B, $0B, $0B, $0B, $0B, $0B, $0A, $0A, $0A, $0A   ; 
- - - - - - 0x01C630 07:C620: 0A        .byte $0A, $0A, $0A, $0A, $09, $09, $09, $09, $09, $09, $09, $09, $08, $08, $08, $08   ; 
- - - - - - 0x01C640 07:C630: 08        .byte $08, $08, $08, $08, $A0, $80, $60, $40, $20, $00, $E0, $C0, $A0, $80, $60, $40   ; 
- - - - - - 0x01C650 07:C640: 20        .byte $20, $00, $E0, $C0, $A0, $80, $60, $40, $20, $00, $E0, $C0, $A0, $80, $60, $40   ; 
- - - - - - 0x01C660 07:C650: 20        .byte $20, $00, $A0, $80, $60, $40, $20, $00, $E0, $C0, $A0, $80, $60, $40, $20, $00   ; 
- - - - - - 0x01C670 07:C660: E0        .byte $E0, $C0, $A0, $80, $60, $40, $20, $00, $E0, $C0, $A0, $80, $60, $40, $20, $00   ; 



sub_C670_write_buffer_to_ppu:
C - - - - - 0x01C680 07:C670: A5 19     LDA ram_0019
C - - - - - 0x01C682 07:C672: 48        PHA
C - - - - - 0x01C683 07:C673: A5 1A     LDA ram_001A
C - - - - - 0x01C685 07:C675: 48        PHA
C - - - - - 0x01C686 07:C676: A5 1B     LDA ram_001B
C - - - - - 0x01C688 07:C678: 48        PHA
C - - - - - 0x01C689 07:C679: A5 1C     LDA ram_001C
C - - - - - 0x01C68B 07:C67B: 48        PHA
C - - - - - 0x01C68C 07:C67C: A9 78     LDA #$78
C - - - - - 0x01C68E 07:C67E: 85 1B     STA ram_001B
C - - - - - 0x01C690 07:C680: AE BB 05  LDX ram_05BB
loc_C683_next_buffer_array:
C D 2 - - - 0x01C693 07:C683: EC BC 05  CPX ram_05BC
C - - - - - 0x01C696 07:C686: F0 4C     BEQ bra_C6D4_exit
C - - - - - 0x01C698 07:C688: AD 02 20  LDA $2002
C - - - - - 0x01C69B 07:C68B: BD B1 04  LDA ram_ppu_buffer,X
C - - - - - 0x01C69E 07:C68E: 8D 06 20  STA $2006
C - - - - - 0x01C6A1 07:C691: E8        INX
C - - - - - 0x01C6A2 07:C692: 29 F0     AND #$F0
C - - - - - 0x01C6A4 07:C694: C9 20     CMP #$20
C - - - - - 0x01C6A6 07:C696: F0 04     BEQ bra_C69C
C - - - - - 0x01C6A8 07:C698: C9 30     CMP #$30
C - - - - - 0x01C6AA 07:C69A: D0 1B     BNE bra_C6B7
bra_C69C:
C - - - - - 0x01C6AC 07:C69C: BD B1 04  LDA ram_ppu_buffer,X
C - - - - - 0x01C6AF 07:C69F: 8D 06 20  STA $2006
C - - - - - 0x01C6B2 07:C6A2: E8        INX
C - - - - - 0x01C6B3 07:C6A3: A5 E9     LDA ram_for_2000
C - - - - - 0x01C6B5 07:C6A5: 29 FB     AND #$FB
C - - - - - 0x01C6B7 07:C6A7: 1D B1 04  ORA ram_ppu_buffer,X
C - - - - - 0x01C6BA 07:C6AA: E8        INX
C - - - - - 0x01C6BB 07:C6AB: 85 E9     STA ram_for_2000
C - - - - - 0x01C6BD 07:C6AD: 8D 00 20  STA $2000
C - - - - - 0x01C6C0 07:C6B0: BD B1 04  LDA ram_ppu_buffer,X
C - - - - - 0x01C6C3 07:C6B3: C9 21     CMP #$21
C - - - - - 0x01C6C5 07:C6B5: 90 01     BCC bra_C6B8
bra_C6B7:
- - - - - - 0x01C6C7 07:C6B7: 80        .byte $80   ; bzk !!! ???
bra_C6B8:
C - - - - - 0x01C6C8 07:C6B8: A8        TAY
C - - - - - 0x01C6C9 07:C6B9: B9 08 C8  LDA tbl_C808_lo,Y
C - - - - - 0x01C6CC 07:C6BC: 85 19     STA ram_0019
C - - - - - 0x01C6CE 07:C6BE: B9 E7 C7  LDA tbl_C7E7_hi,Y
C - - - - - 0x01C6D1 07:C6C1: 85 1A     STA ram_001A
C - - - - - 0x01C6D3 07:C6C3: BD B1 04  LDA ram_ppu_buffer,X
C - - - - - 0x01C6D6 07:C6C6: 18        CLC
C - - - - - 0x01C6D7 07:C6C7: 69 0E     ADC #$0E
C - - - - - 0x01C6D9 07:C6C9: 85 1C     STA ram_001C
C - - - - - 0x01C6DB 07:C6CB: A5 1B     LDA ram_001B
C - - - - - 0x01C6DD 07:C6CD: 38        SEC
C - - - - - 0x01C6DE 07:C6CE: E5 1C     SBC ram_001C
C - - - - - 0x01C6E0 07:C6D0: 85 1B     STA ram_001B
C - - - - - 0x01C6E2 07:C6D2: B0 0D     BCS bra_C6E1
bra_C6D4_exit:
C - - - - - 0x01C6E4 07:C6D4: 68        PLA
C - - - - - 0x01C6E5 07:C6D5: 85 1C     STA ram_001C
C - - - - - 0x01C6E7 07:C6D7: 68        PLA
C - - - - - 0x01C6E8 07:C6D8: 85 1B     STA ram_001B
C - - - - - 0x01C6EA 07:C6DA: 68        PLA
C - - - - - 0x01C6EB 07:C6DB: 85 1A     STA ram_001A
C - - - - - 0x01C6ED 07:C6DD: 68        PLA
C - - - - - 0x01C6EE 07:C6DE: 85 19     STA ram_0019
C - - - - - 0x01C6F0 07:C6E0: 60        RTS
bra_C6E1:
C - - - - - 0x01C6F1 07:C6E1: E8        INX
C - - - - - 0x01C6F2 07:C6E2: 6C 19 00  JMP (ram_0019)



ofs_016_C6E5_20:
C - - J - - 0x01C6F5 07:C6E5: BD B1 04  LDA ram_ppu_buffer,X
C - - - - - 0x01C6F8 07:C6E8: 8D 07 20  STA $2007
C - - - - - 0x01C6FB 07:C6EB: E8        INX
ofs_016_C6EC_1F:
C - - - - - 0x01C6FC 07:C6EC: BD B1 04  LDA ram_ppu_buffer,X
C - - - - - 0x01C6FF 07:C6EF: 8D 07 20  STA $2007
C - - - - - 0x01C702 07:C6F2: E8        INX
ofs_016_C6F3_1E:
C - - - - - 0x01C703 07:C6F3: BD B1 04  LDA ram_ppu_buffer,X
C - - - - - 0x01C706 07:C6F6: 8D 07 20  STA $2007
C - - - - - 0x01C709 07:C6F9: E8        INX
ofs_016_C6FA_1D:
C - - - - - 0x01C70A 07:C6FA: BD B1 04  LDA ram_ppu_buffer,X
C - - - - - 0x01C70D 07:C6FD: 8D 07 20  STA $2007
C - - - - - 0x01C710 07:C700: E8        INX
ofs_016_C701_1C:
C - - - - - 0x01C711 07:C701: BD B1 04  LDA ram_ppu_buffer,X
C - - - - - 0x01C714 07:C704: 8D 07 20  STA $2007
C - - - - - 0x01C717 07:C707: E8        INX
ofs_016_C708_1B:
C - - - - - 0x01C718 07:C708: BD B1 04  LDA ram_ppu_buffer,X
C - - - - - 0x01C71B 07:C70B: 8D 07 20  STA $2007
C - - - - - 0x01C71E 07:C70E: E8        INX
ofs_016_C70F_1A:
C - - - - - 0x01C71F 07:C70F: BD B1 04  LDA ram_ppu_buffer,X
C - - - - - 0x01C722 07:C712: 8D 07 20  STA $2007
C - - - - - 0x01C725 07:C715: E8        INX
ofs_016_C716_19:
C - - - - - 0x01C726 07:C716: BD B1 04  LDA ram_ppu_buffer,X
C - - - - - 0x01C729 07:C719: 8D 07 20  STA $2007
C - - - - - 0x01C72C 07:C71C: E8        INX
ofs_016_C71D_18:
C - - - - - 0x01C72D 07:C71D: BD B1 04  LDA ram_ppu_buffer,X
C - - - - - 0x01C730 07:C720: 8D 07 20  STA $2007
C - - - - - 0x01C733 07:C723: E8        INX
ofs_016_C724_17:
C - - - - - 0x01C734 07:C724: BD B1 04  LDA ram_ppu_buffer,X
C - - - - - 0x01C737 07:C727: 8D 07 20  STA $2007
C - - - - - 0x01C73A 07:C72A: E8        INX
ofs_016_C72B_16:
C - - - - - 0x01C73B 07:C72B: BD B1 04  LDA ram_ppu_buffer,X
C - - - - - 0x01C73E 07:C72E: 8D 07 20  STA $2007
C - - - - - 0x01C741 07:C731: E8        INX
ofs_016_C732_15:
C - - - - - 0x01C742 07:C732: BD B1 04  LDA ram_ppu_buffer,X
C - - - - - 0x01C745 07:C735: 8D 07 20  STA $2007
C - - - - - 0x01C748 07:C738: E8        INX
ofs_016_C739_14:
C - - - - - 0x01C749 07:C739: BD B1 04  LDA ram_ppu_buffer,X
C - - - - - 0x01C74C 07:C73C: 8D 07 20  STA $2007
C - - - - - 0x01C74F 07:C73F: E8        INX
ofs_016_C740_13:
C - - - - - 0x01C750 07:C740: BD B1 04  LDA ram_ppu_buffer,X
C - - - - - 0x01C753 07:C743: 8D 07 20  STA $2007
C - - - - - 0x01C756 07:C746: E8        INX
ofs_016_C747_12:
C - - - - - 0x01C757 07:C747: BD B1 04  LDA ram_ppu_buffer,X
C - - - - - 0x01C75A 07:C74A: 8D 07 20  STA $2007
C - - - - - 0x01C75D 07:C74D: E8        INX
ofs_016_C74E_11:
C - - - - - 0x01C75E 07:C74E: BD B1 04  LDA ram_ppu_buffer,X
C - - - - - 0x01C761 07:C751: 8D 07 20  STA $2007
C - - - - - 0x01C764 07:C754: E8        INX
ofs_016_C755_10:
C - - J - - 0x01C765 07:C755: BD B1 04  LDA ram_ppu_buffer,X
C - - - - - 0x01C768 07:C758: 8D 07 20  STA $2007
C - - - - - 0x01C76B 07:C75B: E8        INX
ofs_016_C75C_0F:
C - - - - - 0x01C76C 07:C75C: BD B1 04  LDA ram_ppu_buffer,X
C - - - - - 0x01C76F 07:C75F: 8D 07 20  STA $2007
C - - - - - 0x01C772 07:C762: E8        INX
ofs_016_C763_0E:
C - - - - - 0x01C773 07:C763: BD B1 04  LDA ram_ppu_buffer,X
C - - - - - 0x01C776 07:C766: 8D 07 20  STA $2007
C - - - - - 0x01C779 07:C769: E8        INX
ofs_016_C76A_0D:
C - - - - - 0x01C77A 07:C76A: BD B1 04  LDA ram_ppu_buffer,X
C - - - - - 0x01C77D 07:C76D: 8D 07 20  STA $2007
C - - - - - 0x01C780 07:C770: E8        INX
ofs_016_C771_0C:
C - - - - - 0x01C781 07:C771: BD B1 04  LDA ram_ppu_buffer,X
C - - - - - 0x01C784 07:C774: 8D 07 20  STA $2007
C - - - - - 0x01C787 07:C777: E8        INX
ofs_016_C778_0B:
C - - - - - 0x01C788 07:C778: BD B1 04  LDA ram_ppu_buffer,X
C - - - - - 0x01C78B 07:C77B: 8D 07 20  STA $2007
C - - - - - 0x01C78E 07:C77E: E8        INX
ofs_016_C77F_0A:
C - - - - - 0x01C78F 07:C77F: BD B1 04  LDA ram_ppu_buffer,X
C - - - - - 0x01C792 07:C782: 8D 07 20  STA $2007
C - - - - - 0x01C795 07:C785: E8        INX
ofs_016_C786_09:
C - - - - - 0x01C796 07:C786: BD B1 04  LDA ram_ppu_buffer,X
C - - - - - 0x01C799 07:C789: 8D 07 20  STA $2007
C - - - - - 0x01C79C 07:C78C: E8        INX
ofs_016_C78D_08:
C - - - - - 0x01C79D 07:C78D: BD B1 04  LDA ram_ppu_buffer,X
C - - - - - 0x01C7A0 07:C790: 8D 07 20  STA $2007
C - - - - - 0x01C7A3 07:C793: E8        INX
ofs_016_C794_07:
C - - - - - 0x01C7A4 07:C794: BD B1 04  LDA ram_ppu_buffer,X
C - - - - - 0x01C7A7 07:C797: 8D 07 20  STA $2007
C - - - - - 0x01C7AA 07:C79A: E8        INX
ofs_016_C79B_06:
C - - - - - 0x01C7AB 07:C79B: BD B1 04  LDA ram_ppu_buffer,X
C - - - - - 0x01C7AE 07:C79E: 8D 07 20  STA $2007
C - - - - - 0x01C7B1 07:C7A1: E8        INX
ofs_016_C7A2_05:
C - - - - - 0x01C7B2 07:C7A2: BD B1 04  LDA ram_ppu_buffer,X
C - - - - - 0x01C7B5 07:C7A5: 8D 07 20  STA $2007
C - - - - - 0x01C7B8 07:C7A8: E8        INX
ofs_016_C7A9_04:
C - - - - - 0x01C7B9 07:C7A9: BD B1 04  LDA ram_ppu_buffer,X
C - - - - - 0x01C7BC 07:C7AC: 8D 07 20  STA $2007
C - - - - - 0x01C7BF 07:C7AF: E8        INX
ofs_016_C7B0_03:
C - - - - - 0x01C7C0 07:C7B0: BD B1 04  LDA ram_ppu_buffer,X
C - - - - - 0x01C7C3 07:C7B3: 8D 07 20  STA $2007
C - - - - - 0x01C7C6 07:C7B6: E8        INX
ofs_016_C7B7_02:
C - - - - - 0x01C7C7 07:C7B7: BD B1 04  LDA ram_ppu_buffer,X
C - - - - - 0x01C7CA 07:C7BA: 8D 07 20  STA $2007
C - - - - - 0x01C7CD 07:C7BD: E8        INX
ofs_016_C7BE_01:
C - - - - - 0x01C7CE 07:C7BE: BD B1 04  LDA ram_ppu_buffer,X
C - - - - - 0x01C7D1 07:C7C1: 8D 07 20  STA $2007
C - - - - - 0x01C7D4 07:C7C4: E8        INX
C - - - - - 0x01C7D5 07:C7C5: 8A        TXA
C - - - - - 0x01C7D6 07:C7C6: 48        PHA
C - - - - - 0x01C7D7 07:C7C7: AE BB 05  LDX ram_05BB
C - - - - - 0x01C7DA 07:C7CA: A9 3F     LDA #$3F
C - - - - - 0x01C7DC 07:C7CC: DD B1 04  CMP ram_ppu_buffer,X
C - - - - - 0x01C7DF 07:C7CF: D0 0E     BNE bra_C7DF_not_palette
C - - - - - 0x01C7E1 07:C7D1: 8D 06 20  STA $2006
C - - - - - 0x01C7E4 07:C7D4: A9 00     LDA #$00
C - - - - - 0x01C7E6 07:C7D6: 8D 06 20  STA $2006
C - - - - - 0x01C7E9 07:C7D9: 8D 06 20  STA $2006
C - - - - - 0x01C7EC 07:C7DC: 8D 06 20  STA $2006
bra_C7DF_not_palette:
C - - - - - 0x01C7EF 07:C7DF: 68        PLA
C - - - - - 0x01C7F0 07:C7E0: AA        TAX
C - - - - - 0x01C7F1 07:C7E1: 8E BB 05  STX ram_05BB
C - - - - - 0x01C7F4 07:C7E4: 4C 83 C6  JMP loc_C683_next_buffer_array



tbl_C7E7_hi:
- - - - - - 0x01C7F7 07:C7E7: 00        .byte $00          ; 00
- D 2 - - - 0x01C7F8 07:C7E8: C7        .byte > ofs_016_C7BE_01
- D 2 - - - 0x01C7F9 07:C7E9: C7        .byte > ofs_016_C7B7_02
- D 2 - - - 0x01C7FA 07:C7EA: C7        .byte > ofs_016_C7B0_03
- D 2 - - - 0x01C7FB 07:C7EB: C7        .byte > ofs_016_C7A9_04
- D 2 - - - 0x01C7FC 07:C7EC: C7        .byte > ofs_016_C7A2_05
- D 2 - - - 0x01C7FD 07:C7ED: C7        .byte > ofs_016_C79B_06
- D 2 - - - 0x01C7FE 07:C7EE: C7        .byte > ofs_016_C794_07
- D 2 - - - 0x01C7FF 07:C7EF: C7        .byte > ofs_016_C78D_08
- D 2 - - - 0x01C800 07:C7F0: C7        .byte > ofs_016_C786_09
- D 2 - - - 0x01C801 07:C7F1: C7        .byte > ofs_016_C77F_0A
- D 2 - - - 0x01C802 07:C7F2: C7        .byte > ofs_016_C778_0B
- D 2 - - - 0x01C803 07:C7F3: C7        .byte > ofs_016_C771_0C
- D 2 - - - 0x01C804 07:C7F4: C7        .byte > ofs_016_C76A_0D
- D 2 - - - 0x01C805 07:C7F5: C7        .byte > ofs_016_C763_0E
- D 2 - - - 0x01C806 07:C7F6: C7        .byte > ofs_016_C75C_0F
- D 2 - - - 0x01C807 07:C7F7: C7        .byte > ofs_016_C755_10
- D 2 - - - 0x01C808 07:C7F8: C7        .byte > ofs_016_C74E_11
- D 2 - - - 0x01C809 07:C7F9: C7        .byte > ofs_016_C747_12
- D 2 - - - 0x01C80A 07:C7FA: C7        .byte > ofs_016_C740_13
- D 2 - - - 0x01C80B 07:C7FB: C7        .byte > ofs_016_C739_14
- D 2 - - - 0x01C80C 07:C7FC: C7        .byte > ofs_016_C732_15
- D 2 - - - 0x01C80D 07:C7FD: C7        .byte > ofs_016_C72B_16
- D 2 - - - 0x01C80E 07:C7FE: C7        .byte > ofs_016_C724_17
- D 2 - - - 0x01C80F 07:C7FF: C7        .byte > ofs_016_C71D_18
- D 2 - - - 0x01C810 07:C800: C7        .byte > ofs_016_C716_19
- D 2 - - - 0x01C811 07:C801: C7        .byte > ofs_016_C70F_1A
- D 2 - - - 0x01C812 07:C802: C7        .byte > ofs_016_C708_1B
- D 2 - - - 0x01C813 07:C803: C7        .byte > ofs_016_C701_1C
- D 2 - - - 0x01C814 07:C804: C6        .byte > ofs_016_C6FA_1D
- D 2 - - - 0x01C815 07:C805: C6        .byte > ofs_016_C6F3_1E
- D 2 - - - 0x01C816 07:C806: C6        .byte > ofs_016_C6EC_1F
- D 2 - - - 0x01C817 07:C807: C6        .byte > ofs_016_C6E5_20



tbl_C808_lo:
- - - - - - 0x01C818 07:C808: 00        .byte $00          ; 00
- D 2 - - - 0x01C819 07:C809: BE        .byte < ofs_016_C7BE_01
- D 2 - - - 0x01C81A 07:C80A: B7        .byte < ofs_016_C7B7_02
- D 2 - - - 0x01C81B 07:C80B: B0        .byte < ofs_016_C7B0_03
- D 2 - - - 0x01C81C 07:C80C: A9        .byte < ofs_016_C7A9_04
- D 2 - - - 0x01C81D 07:C80D: A2        .byte < ofs_016_C7A2_05
- D 2 - - - 0x01C81E 07:C80E: 9B        .byte < ofs_016_C79B_06
- D 2 - - - 0x01C81F 07:C80F: 94        .byte < ofs_016_C794_07
- D 2 - - - 0x01C820 07:C810: 8D        .byte < ofs_016_C78D_08
- D 2 - - - 0x01C821 07:C811: 86        .byte < ofs_016_C786_09
- D 2 - - - 0x01C822 07:C812: 7F        .byte < ofs_016_C77F_0A
- D 2 - - - 0x01C823 07:C813: 78        .byte < ofs_016_C778_0B
- D 2 - - - 0x01C824 07:C814: 71        .byte < ofs_016_C771_0C
- D 2 - - - 0x01C825 07:C815: 6A        .byte < ofs_016_C76A_0D
- D 2 - - - 0x01C826 07:C816: 63        .byte < ofs_016_C763_0E
- D 2 - - - 0x01C827 07:C817: 5C        .byte < ofs_016_C75C_0F
- D 2 - - - 0x01C828 07:C818: 55        .byte < ofs_016_C755_10
- D 2 - - - 0x01C829 07:C819: 4E        .byte < ofs_016_C74E_11
- D 2 - - - 0x01C82A 07:C81A: 47        .byte < ofs_016_C747_12
- D 2 - - - 0x01C82B 07:C81B: 40        .byte < ofs_016_C740_13
- D 2 - - - 0x01C82C 07:C81C: 39        .byte < ofs_016_C739_14
- D 2 - - - 0x01C82D 07:C81D: 32        .byte < ofs_016_C732_15
- D 2 - - - 0x01C82E 07:C81E: 2B        .byte < ofs_016_C72B_16
- D 2 - - - 0x01C82F 07:C81F: 24        .byte < ofs_016_C724_17
- D 2 - - - 0x01C830 07:C820: 1D        .byte < ofs_016_C71D_18
- D 2 - - - 0x01C831 07:C821: 16        .byte < ofs_016_C716_19
- D 2 - - - 0x01C832 07:C822: 0F        .byte < ofs_016_C70F_1A
- D 2 - - - 0x01C833 07:C823: 08        .byte < ofs_016_C708_1B
- D 2 - - - 0x01C834 07:C824: 01        .byte < ofs_016_C701_1C
- D 2 - - - 0x01C835 07:C825: FA        .byte < ofs_016_C6FA_1D
- D 2 - - - 0x01C836 07:C826: F3        .byte < ofs_016_C6F3_1E
- D 2 - - - 0x01C837 07:C827: EC        .byte < ofs_016_C6EC_1F
- D 2 - - - 0x01C838 07:C828: E5        .byte < ofs_016_C6E5_20


; bzk garbage
- - - - - - 0x01C839 07:C829: 0A        ASL
- - - - - - 0x01C83A 07:C82A: A8        TAY
- - - - - - 0x01C83B 07:C82B: B9 71 C8  LDA tbl_C871_ppu_lo,Y
- - - - - - 0x01C83E 07:C82E: 48        PHA
- - - - - - 0x01C83F 07:C82F: B9 35 C8  LDA tbl_C835_ppu_hi,Y
- - - - - - 0x01C842 07:C832: A8        TAY
- - - - - - 0x01C843 07:C833: 68        PLA
- - - - - - 0x01C844 07:C834: 60        RTS



tbl_C835_ppu_hi:
- D 2 - - - 0x01C845 07:C835: 2B        .byte > $2BA0   ; 00
- D 2 - - - 0x01C846 07:C836: 2B        .byte > $2B80   ; 01
- D 2 - - - 0x01C847 07:C837: 2B        .byte > $2B60   ; 02
- D 2 - - - 0x01C848 07:C838: 2B        .byte > $2B40   ; 03
- D 2 - - - 0x01C849 07:C839: 2B        .byte > $2B20   ; 04
- D 2 - - - 0x01C84A 07:C83A: 2B        .byte > $2B00   ; 05
- D 2 - - - 0x01C84B 07:C83B: 2A        .byte > $2AE0   ; 06
- D 2 - - - 0x01C84C 07:C83C: 2A        .byte > $2AC0   ; 07
- D 2 - - - 0x01C84D 07:C83D: 2A        .byte > $2AA0   ; 08
- D 2 - - - 0x01C84E 07:C83E: 2A        .byte > $2A80   ; 09
- D 2 - - - 0x01C84F 07:C83F: 2A        .byte > $2A60   ; 0A
- D 2 - - - 0x01C850 07:C840: 2A        .byte > $2A40   ; 0B
- D 2 - - - 0x01C851 07:C841: 2A        .byte > $2A20   ; 0C
- D 2 - - - 0x01C852 07:C842: 2A        .byte > $2A00   ; 0D
- D 2 - - - 0x01C853 07:C843: 29        .byte > $29E0   ; 0E
- D 2 - - - 0x01C854 07:C844: 29        .byte > $29C0   ; 0F
- D 2 - - - 0x01C855 07:C845: 29        .byte > $29A0   ; 10
- D 2 - - - 0x01C856 07:C846: 29        .byte > $2980   ; 11
- D 2 - - - 0x01C857 07:C847: 29        .byte > $2960   ; 12
- D 2 - - - 0x01C858 07:C848: 29        .byte > $2940   ; 13
- D 2 - - - 0x01C859 07:C849: 29        .byte > $2920   ; 14
- D 2 - - - 0x01C85A 07:C84A: 29        .byte > $2900   ; 15
- D 2 - - - 0x01C85B 07:C84B: 28        .byte > $28E0   ; 16
- D 2 - - - 0x01C85C 07:C84C: 28        .byte > $28C0   ; 17
- D 2 - - - 0x01C85D 07:C84D: 28        .byte > $28A0   ; 18
- D 2 - - - 0x01C85E 07:C84E: 28        .byte > $2880   ; 19
- D 2 - - - 0x01C85F 07:C84F: 28        .byte > $2860   ; 1A
- D 2 - - - 0x01C860 07:C850: 28        .byte > $2840   ; 1B
- D 2 - - - 0x01C861 07:C851: 28        .byte > $2820   ; 1C
- D 2 - - - 0x01C862 07:C852: 28        .byte > $2800   ; 1D

- D 2 - - - 0x01C863 07:C853: 23        .byte > $23A0   ; 00 (1E)
- D 2 - - - 0x01C864 07:C854: 23        .byte > $2380   ; 01 (1F)
- D 2 - - - 0x01C865 07:C855: 23        .byte > $2360   ; 02 (20)
- D 2 - - - 0x01C866 07:C856: 23        .byte > $2340   ; 03 (21)
- D 2 - - - 0x01C867 07:C857: 23        .byte > $2320   ; 04 (22)
- D 2 - - - 0x01C868 07:C858: 23        .byte > $2300   ; 05 (23)
- D 2 - - - 0x01C869 07:C859: 22        .byte > $22E0   ; 06 (24)
- D 2 - - - 0x01C86A 07:C85A: 22        .byte > $22C0   ; 07 (25)
- D 2 - - - 0x01C86B 07:C85B: 22        .byte > $22A0   ; 08 (26)
- D 2 - - - 0x01C86C 07:C85C: 22        .byte > $2280   ; 09 (27)
- D 2 - - - 0x01C86D 07:C85D: 22        .byte > $2260   ; 0A (28)
- D 2 - - - 0x01C86E 07:C85E: 22        .byte > $2240   ; 0B (29)
- D 2 - - - 0x01C86F 07:C85F: 22        .byte > $2220   ; 0C (2A)
- D 2 - - - 0x01C870 07:C860: 22        .byte > $2200   ; 0D (2B)
- D 2 - - - 0x01C871 07:C861: 21        .byte > $21E0   ; 0E (2C)
- D 2 - - - 0x01C872 07:C862: 21        .byte > $21C0   ; 0F (2D)
- D 2 - - - 0x01C873 07:C863: 21        .byte > $21A0   ; 10 (2E)
- D 2 - - - 0x01C874 07:C864: 21        .byte > $2180   ; 11 (2F)
- D 2 - - - 0x01C875 07:C865: 21        .byte > $2160   ; 12 (30)
- D 2 - - - 0x01C876 07:C866: 21        .byte > $2140   ; 13 (31)
- D 2 - - - 0x01C877 07:C867: 21        .byte > $2120   ; 14 (32)
- D 2 - - - 0x01C878 07:C868: 21        .byte > $2100   ; 15 (33)
- D 2 - - - 0x01C879 07:C869: 20        .byte > $20E0   ; 16 (34)
- D 2 - - - 0x01C87A 07:C86A: 20        .byte > $20C0   ; 17 (35)
- D 2 - - - 0x01C87B 07:C86B: 20        .byte > $20A0   ; 18 (36)
- D 2 - - - 0x01C87C 07:C86C: 20        .byte > $2080   ; 19 (37)
- D 2 - - - 0x01C87D 07:C86D: 20        .byte > $2060   ; 1A (38)
- D 2 - - - 0x01C87E 07:C86E: 20        .byte > $2040   ; 1B (39)
- D 2 - - - 0x01C87F 07:C86F: 20        .byte > $2020   ; 1C (3A)
- D 2 - - - 0x01C880 07:C870: 20        .byte > $2000   ; 1D (3B)



tbl_C871_ppu_lo:
- D 2 - - - 0x01C881 07:C871: A0        .byte < $2BA0   ; 00
- D 2 - - - 0x01C882 07:C872: 80        .byte < $2B80   ; 01
- D 2 - - - 0x01C883 07:C873: 60        .byte < $2B60   ; 02
- D 2 - - - 0x01C884 07:C874: 40        .byte < $2B40   ; 03
- D 2 - - - 0x01C885 07:C875: 20        .byte < $2B20   ; 04
- D 2 - - - 0x01C886 07:C876: 00        .byte < $2B00   ; 05
- D 2 - - - 0x01C887 07:C877: E0        .byte < $2AE0   ; 06
- D 2 - - - 0x01C888 07:C878: C0        .byte < $2AC0   ; 07
- D 2 - - - 0x01C889 07:C879: A0        .byte < $2AA0   ; 08
- D 2 - - - 0x01C88A 07:C87A: 80        .byte < $2A80   ; 09
- D 2 - - - 0x01C88B 07:C87B: 60        .byte < $2A60   ; 0A
- D 2 - - - 0x01C88C 07:C87C: 40        .byte < $2A40   ; 0B
- D 2 - - - 0x01C88D 07:C87D: 20        .byte < $2A20   ; 0C
- D 2 - - - 0x01C88E 07:C87E: 00        .byte < $2A00   ; 0D
- D 2 - - - 0x01C88F 07:C87F: E0        .byte < $29E0   ; 0E
- D 2 - - - 0x01C890 07:C880: C0        .byte < $29C0   ; 0F
- D 2 - - - 0x01C891 07:C881: A0        .byte < $29A0   ; 10
- D 2 - - - 0x01C892 07:C882: 80        .byte < $2980   ; 11
- D 2 - - - 0x01C893 07:C883: 60        .byte < $2960   ; 12
- D 2 - - - 0x01C894 07:C884: 40        .byte < $2940   ; 13
- D 2 - - - 0x01C895 07:C885: 20        .byte < $2920   ; 14
- D 2 - - - 0x01C896 07:C886: 00        .byte < $2900   ; 15
- D 2 - - - 0x01C897 07:C887: E0        .byte < $28E0   ; 16
- D 2 - - - 0x01C898 07:C888: C0        .byte < $28C0   ; 17
- D 2 - - - 0x01C899 07:C889: A0        .byte < $28A0   ; 18
- D 2 - - - 0x01C89A 07:C88A: 80        .byte < $2880   ; 19
- D 2 - - - 0x01C89B 07:C88B: 60        .byte < $2860   ; 1A
- D 2 - - - 0x01C89C 07:C88C: 40        .byte < $2840   ; 1B
- D 2 - - - 0x01C89D 07:C88D: 20        .byte < $2820   ; 1C
- D 2 - - - 0x01C89E 07:C88E: 00        .byte < $2800   ; 1D

- D 2 - - - 0x01C89F 07:C88F: A0        .byte < $23A0   ; 00 (1E)
- D 2 - - - 0x01C8A0 07:C890: 80        .byte < $2380   ; 01 (1F)
- D 2 - - - 0x01C8A1 07:C891: 60        .byte < $2360   ; 02 (20)
- D 2 - - - 0x01C8A2 07:C892: 40        .byte < $2340   ; 03 (21)
- D 2 - - - 0x01C8A3 07:C893: 20        .byte < $2320   ; 04 (22)
- D 2 - - - 0x01C8A4 07:C894: 00        .byte < $2300   ; 05 (23)
- D 2 - - - 0x01C8A5 07:C895: E0        .byte < $22E0   ; 06 (24)
- D 2 - - - 0x01C8A6 07:C896: C0        .byte < $22C0   ; 07 (25)
- D 2 - - - 0x01C8A7 07:C897: A0        .byte < $22A0   ; 08 (26)
- D 2 - - - 0x01C8A8 07:C898: 80        .byte < $2280   ; 09 (27)
- D 2 - - - 0x01C8A9 07:C899: 60        .byte < $2260   ; 0A (28)
- D 2 - - - 0x01C8AA 07:C89A: 40        .byte < $2240   ; 0B (29)
- D 2 - - - 0x01C8AB 07:C89B: 20        .byte < $2220   ; 0C (2A)
- D 2 - - - 0x01C8AC 07:C89C: 00        .byte < $2200   ; 0D (2B)
- D 2 - - - 0x01C8AD 07:C89D: E0        .byte < $21E0   ; 0E (2C)
- D 2 - - - 0x01C8AE 07:C89E: C0        .byte < $21C0   ; 0F (2D)
- D 2 - - - 0x01C8AF 07:C89F: A0        .byte < $21A0   ; 10 (2E)
- D 2 - - - 0x01C8B0 07:C8A0: 80        .byte < $2180   ; 11 (2F)
- D 2 - - - 0x01C8B1 07:C8A1: 60        .byte < $2160   ; 12 (30)
- D 2 - - - 0x01C8B2 07:C8A2: 40        .byte < $2140   ; 13 (31)
- D 2 - - - 0x01C8B3 07:C8A3: 20        .byte < $2120   ; 14 (32)
- D 2 - - - 0x01C8B4 07:C8A4: 00        .byte < $2100   ; 15 (33)
- D 2 - - - 0x01C8B5 07:C8A5: E0        .byte < $20E0   ; 16 (34)
- D 2 - - - 0x01C8B6 07:C8A6: C0        .byte < $20C0   ; 17 (35)
- D 2 - - - 0x01C8B7 07:C8A7: A0        .byte < $20A0   ; 18 (36)
- D 2 - - - 0x01C8B8 07:C8A8: 80        .byte < $2080   ; 19 (37)
- D 2 - - - 0x01C8B9 07:C8A9: 60        .byte < $2060   ; 1A (38)
- D 2 - - - 0x01C8BA 07:C8AA: 40        .byte < $2040   ; 1B (39)
- D 2 - - - 0x01C8BB 07:C8AB: 20        .byte < $2020   ; 1C (3A)
- D 2 - - - 0x01C8BC 07:C8AC: 00        .byte < $2000   ; 1D (3B)



sub_C8AD_calculate_mission_screen_pointers:
C - - - - - 0x01C8BD 07:C8AD: 98        TYA
C - - - - - 0x01C8BE 07:C8AE: 48        PHA
C - - - - - 0x01C8BF 07:C8AF: A5 1A     LDA ram_001A
C - - - - - 0x01C8C1 07:C8B1: 48        PHA
C - - - - - 0x01C8C2 07:C8B2: A5 19     LDA ram_0019
C - - - - - 0x01C8C4 07:C8B4: 48        PHA
C - - - - - 0x01C8C5 07:C8B5: A5 29     LDA ram_0029
C - - - - - 0x01C8C7 07:C8B7: 48        PHA
C - - - - - 0x01C8C8 07:C8B8: A5 2A     LDA ram_002A
C - - - - - 0x01C8CA 07:C8BA: 48        PHA
C - - - - - 0x01C8CB 07:C8BB: A5 2B     LDA ram_002B
C - - - - - 0x01C8CD 07:C8BD: 48        PHA
C - - - - - 0x01C8CE 07:C8BE: A5 2C     LDA ram_002C
C - - - - - 0x01C8D0 07:C8C0: 48        PHA
C - - - - - 0x01C8D1 07:C8C1: 20 FE C8  JSR sub_C8FE
C - - - - - 0x01C8D4 07:C8C4: 0A        ASL
C - - - - - 0x01C8D5 07:C8C5: 0A        ASL
C - - - - - 0x01C8D6 07:C8C6: 85 19     STA ram_0019
C - - - - - 0x01C8D8 07:C8C8: 68        PLA
C - - - - - 0x01C8D9 07:C8C9: 85 2C     STA ram_002C
C - - - - - 0x01C8DB 07:C8CB: 68        PLA
C - - - - - 0x01C8DC 07:C8CC: 85 2B     STA ram_002B
C - - - - - 0x01C8DE 07:C8CE: 68        PLA
C - - - - - 0x01C8DF 07:C8CF: 85 2A     STA ram_002A
C - - - - - 0x01C8E1 07:C8D1: 68        PLA
C - - - - - 0x01C8E2 07:C8D2: 85 29     STA ram_0029
C - - - - - 0x01C8E4 07:C8D4: AD 2A 00  LDA a: ram_002A
C - - - - - 0x01C8E7 07:C8D7: 18        CLC
C - - - - - 0x01C8E8 07:C8D8: 65 19     ADC ram_0019
C - - - - - 0x01C8EA 07:C8DA: A8        TAY
C - - - - - 0x01C8EB 07:C8DB: 85 19     STA ram_0019
C - - - - - 0x01C8ED 07:C8DD: AD 22 04  LDA ram_mission_hi
C - - - - - 0x01C8F0 07:C8E0: 0A        ASL
C - - - - - 0x01C8F1 07:C8E1: A8        TAY
C - - - - - 0x01C8F2 07:C8E2: B9 33 C9  LDA tbl_C933,Y
C - - - - - 0x01C8F5 07:C8E5: 85 06     STA ram_0006
C - - - - - 0x01C8F7 07:C8E7: B9 34 C9  LDA tbl_C933 + $01,Y
C - - - - - 0x01C8FA 07:C8EA: 85 07     STA ram_0007
C - - - - - 0x01C8FC 07:C8EC: A4 19     LDY ram_0019
C - - - - - 0x01C8FE 07:C8EE: B1 06     LDA (ram_0006),Y
C - - - - - 0x01C900 07:C8F0: 85 13     STA ram_0013
C - - - - - 0x01C902 07:C8F2: 20 97 C9  JSR sub_C997_calculate_screen_pointer
C - - - - - 0x01C905 07:C8F5: 68        PLA
C - - - - - 0x01C906 07:C8F6: 85 19     STA ram_0019
C - - - - - 0x01C908 07:C8F8: 68        PLA
C - - - - - 0x01C909 07:C8F9: 85 1A     STA ram_001A
C - - - - - 0x01C90B 07:C8FB: 68        PLA
C - - - - - 0x01C90C 07:C8FC: A8        TAY
C - - - - - 0x01C90D 07:C8FD: 60        RTS



sub_C8FE:
C - - - - - 0x01C90E 07:C8FE: A9 00     LDA #$00
C - - - - - 0x01C910 07:C900: 85 04     STA ram_0004
C - - - - - 0x01C912 07:C902: 85 05     STA ram_0005
C - - - - - 0x01C914 07:C904: A2 09     LDX #$09
bra_C906_loop:
C - - - - - 0x01C916 07:C906: 38        SEC
C - - - - - 0x01C917 07:C907: A5 2C     LDA ram_002C
C - - - - - 0x01C919 07:C909: E9 F0     SBC #< $00F0
C - - - - - 0x01C91B 07:C90B: 85 06     STA ram_0006
C - - - - - 0x01C91D 07:C90D: A5 04     LDA ram_0004
C - - - - - 0x01C91F 07:C90F: E9 00     SBC #> $00F0
C - - - - - 0x01C921 07:C911: 85 07     STA ram_0007
C - - - - - 0x01C923 07:C913: 90 08     BCC bra_C91D
C - - - - - 0x01C925 07:C915: A5 06     LDA ram_0006
C - - - - - 0x01C927 07:C917: 85 2C     STA ram_002C
C - - - - - 0x01C929 07:C919: A5 07     LDA ram_0007
C - - - - - 0x01C92B 07:C91B: 85 04     STA ram_0004
bra_C91D:
C - - - - - 0x01C92D 07:C91D: 26 05     ROL ram_0005
C - - - - - 0x01C92F 07:C91F: 06 2B     ASL ram_002B
C - - - - - 0x01C931 07:C921: 26 2C     ROL ram_002C
C - - - - - 0x01C933 07:C923: 26 04     ROL ram_0004
C - - - - - 0x01C935 07:C925: CA        DEX
C - - - - - 0x01C936 07:C926: D0 DE     BNE bra_C906_loop
C - - - - - 0x01C938 07:C928: 46 04     LSR ram_0004
C - - - - - 0x01C93A 07:C92A: 66 2C     ROR ram_002C
C - - - - - 0x01C93C 07:C92C: A5 2C     LDA ram_002C
C - - - - - 0x01C93E 07:C92E: 85 04     STA ram_0004
C - - - - - 0x01C940 07:C930: A5 05     LDA ram_0005
C - - - - - 0x01C942 07:C932: 60        RTS



tbl_C933:
- D 2 - - - 0x01C943 07:C933: 51 C9     .word _off017_C951_00
- D 2 - - - 0x01C945 07:C935: 5D C9     .word _off017_C95D_01
- D 2 - - - 0x01C947 07:C937: 67 C9     .word _off017_C967_02
- D 2 - - - 0x01C949 07:C939: 68 C9     .word _off017_C968_03
- D 2 - - - 0x01C94B 07:C93B: 78 C9     .word _off017_C978_04
- D 2 - - - 0x01C94D 07:C93D: 79 C9     .word _off017_C979_05
- D 2 - - - 0x01C94F 07:C93F: 83 C9     .word _off017_C983_06
- D 2 - - - 0x01C951 07:C941: 87 C9     .word _off017_C987_07
- D 2 - - - 0x01C953 07:C943: 88 C9     .word _off017_C988_08
- D 2 - - - 0x01C955 07:C945: 89 C9     .word _off017_C989_09
- D 2 - - - 0x01C957 07:C947: 8A C9     .word _off017_C98A_0A
- D 2 - - - 0x01C959 07:C949: 8B C9     .word _off017_C98B_0B
- D 2 - - - 0x01C95B 07:C94B: 8C C9     .word _off017_C98C_0C
- D 2 - - - 0x01C95D 07:C94D: 94 C9     .word _off017_C994_0D
- D 2 - - - 0x01C95F 07:C94F: 94 C9     .word _off017_C994_0E



_off017_C951_00:
- D 2 - I - 0x01C961 07:C951: 01        .byte $01   ; 
- D 2 - I - 0x01C962 07:C952: 02        .byte $02   ; 
- D 2 - I - 0x01C963 07:C953: 03        .byte $03   ; 
- D 2 - I - 0x01C964 07:C954: 04        .byte $04   ; 
- - - - - - 0x01C965 07:C955: 01        .byte $01   ; 
- - - - - - 0x01C966 07:C956: 01        .byte $01   ; 
- D 2 - I - 0x01C967 07:C957: 07        .byte $07   ; 
- D 2 - I - 0x01C968 07:C958: 08        .byte $08   ; 
- - - - - - 0x01C969 07:C959: 01        .byte $01   ; 
- - - - - - 0x01C96A 07:C95A: 01        .byte $01   ; 
- D 2 - I - 0x01C96B 07:C95B: 05        .byte $05   ; 
- D 2 - I - 0x01C96C 07:C95C: 06        .byte $06   ; 

_off017_C95D_01:
- D 2 - I - 0x01C96D 07:C95D: 0B        .byte $0B   ; 
- D 2 - I - 0x01C96E 07:C95E: 0C        .byte $0C   ; 
- D 2 - I - 0x01C96F 07:C95F: 30        .byte $30   ; 
- D 2 - I - 0x01C970 07:C960: 30        .byte $30   ; 
- D 2 - I - 0x01C971 07:C961: 09        .byte $09   ; 
- D 2 - I - 0x01C972 07:C962: 2F        .byte $2F   ; 
- D 2 - I - 0x01C973 07:C963: 0E        .byte $0E   ; 
- D 2 - I - 0x01C974 07:C964: 0D        .byte $0D   ; 
- - - - - - 0x01C975 07:C965: 0A        .byte $0A   ; 
- D 2 - I - 0x01C976 07:C966: 0A        .byte $0A   ; 

_off017_C967_02:
- D 2 - I - 0x01C977 07:C967: 00        .byte con_CD20_00   ; 

_off017_C968_03:
- - - - - - 0x01C978 07:C968: 13        .byte $13   ; 
- D 2 - I - 0x01C979 07:C969: 13        .byte $13   ; 
- D 2 - I - 0x01C97A 07:C96A: 14        .byte $14   ; 
- D 2 - I - 0x01C97B 07:C96B: 16        .byte $16   ; 
- - - - - - 0x01C97C 07:C96C: 12        .byte $12   ; 
- D 2 - I - 0x01C97D 07:C96D: 11        .byte $11   ; 
- - - - - - 0x01C97E 07:C96E: 00        .byte $00   ; 
- - - - - - 0x01C97F 07:C96F: 00        .byte $00   ; 
- D 2 - I - 0x01C980 07:C970: 0F        .byte $0F   ; 
- D 2 - I - 0x01C981 07:C971: 10        .byte $10   ; 
- - - - - - 0x01C982 07:C972: 00        .byte $00   ; 
- - - - - - 0x01C983 07:C973: 00        .byte $00   ; 
- - - - - - 0x01C984 07:C974: 10        .byte $10   ; 
- - - - - - 0x01C985 07:C975: 10        .byte $10   ; 
- - - - - - 0x01C986 07:C976: 00        .byte $00   ; 
- - - - - - 0x01C987 07:C977: 00        .byte $00   ; 

_off017_C978_04:
- D 2 - I - 0x01C988 07:C978: 15        .byte con_CD20_15   ; 

_off017_C979_05:
- D 2 - I - 0x01C989 07:C979: 18        .byte $18   ; 
- D 2 - I - 0x01C98A 07:C97A: 1B        .byte $1B   ; 
- D 2 - I - 0x01C98B 07:C97B: 1C        .byte $1C   ; 
- - - - - - 0x01C98C 07:C97C: 00        .byte $00   ; 
- D 2 - I - 0x01C98D 07:C97D: 17        .byte $17   ; 
- D 2 - I - 0x01C98E 07:C97E: 19        .byte $19   ; 
- D 2 - I - 0x01C98F 07:C97F: 1A        .byte $1A   ; 
- D 2 - I - 0x01C990 07:C980: 1D        .byte $1D   ; 
- D 2 - I - 0x01C991 07:C981: 12        .byte $12   ; 
- D 2 - I - 0x01C992 07:C982: 1E        .byte $1E   ; 

_off017_C983_06:
- D 2 - I - 0x01C993 07:C983: 21        .byte $21   ; 
- D 2 - I - 0x01C994 07:C984: 1F        .byte $1F   ; 
- D 2 - I - 0x01C995 07:C985: 20        .byte $20   ; 
- - - - - - 0x01C996 07:C986: 00        .byte $00   ; 

_off017_C987_07:
- D 2 - I - 0x01C997 07:C987: 24        .byte con_CD20_24   ; 

_off017_C988_08:
- D 2 - I - 0x01C998 07:C988: 25        .byte con_CD20_25   ; 

_off017_C989_09:
- D 2 - I - 0x01C999 07:C989: 26        .byte con_CD20_26   ; 

_off017_C98A_0A:
- D 2 - I - 0x01C99A 07:C98A: 25        .byte con_CD20_25   ; 

_off017_C98B_0B:
- D 2 - I - 0x01C99B 07:C98B: 27        .byte con_CD20_27   ; 

_off017_C98C_0C:
- - - - - - 0x01C99C 07:C98C: 00        .byte $00   ; 
- - - - - - 0x01C99D 07:C98D: 29        .byte $29   ; 
- D 2 - I - 0x01C99E 07:C98E: 29        .byte $29   ; 
- D 2 - I - 0x01C99F 07:C98F: 2A        .byte $2A   ; 
- D 2 - I - 0x01C9A0 07:C990: 22        .byte $22   ; 
- D 2 - I - 0x01C9A1 07:C991: 23        .byte $23   ; 
- D 2 - I - 0x01C9A2 07:C992: 28        .byte $28   ; 
- - - - - - 0x01C9A3 07:C993: 00        .byte $00   ; 

_off017_C994_0D:
_off017_C994_0E:
- D 2 - I - 0x01C9A4 07:C994: 2C        .byte $2C   ; 
- D 2 - I - 0x01C9A5 07:C995: 2D        .byte $2D   ; 
- D 2 - I - 0x01C9A6 07:C996: 2E        .byte $2E   ; 



sub_C997_calculate_screen_pointer:
; * 10
C - - - - - 0x01C9A7 07:C997: 85 29     STA ram_0029
C - - - - - 0x01C9A9 07:C999: A9 00     LDA #$00
C - - - - - 0x01C9AB 07:C99B: 85 2A     STA ram_002A
C - - - - - 0x01C9AD 07:C99D: A5 2B     LDA ram_002B
C - - - - - 0x01C9AF 07:C99F: 48        PHA
C - - - - - 0x01C9B0 07:C9A0: A5 2C     LDA ram_002C
C - - - - - 0x01C9B2 07:C9A2: 48        PHA
C - - - - - 0x01C9B3 07:C9A3: 06 29     ASL ram_0029
C - - - - - 0x01C9B5 07:C9A5: 26 2A     ROL ram_002A
C - - - - - 0x01C9B7 07:C9A7: A5 29     LDA ram_0029
C - - - - - 0x01C9B9 07:C9A9: 85 2B     STA ram_002B
C - - - - - 0x01C9BB 07:C9AB: A5 2A     LDA ram_002A
C - - - - - 0x01C9BD 07:C9AD: 85 2C     STA ram_002C
C - - - - - 0x01C9BF 07:C9AF: 06 2B     ASL ram_002B
C - - - - - 0x01C9C1 07:C9B1: 26 2C     ROL ram_002C
C - - - - - 0x01C9C3 07:C9B3: 06 2B     ASL ram_002B
C - - - - - 0x01C9C5 07:C9B5: 26 2C     ROL ram_002C
C - - - - - 0x01C9C7 07:C9B7: A5 2B     LDA ram_002B
C - - - - - 0x01C9C9 07:C9B9: 18        CLC
C - - - - - 0x01C9CA 07:C9BA: 65 29     ADC ram_0029
C - - - - - 0x01C9CC 07:C9BC: 85 29     STA ram_0029
C - - - - - 0x01C9CE 07:C9BE: A5 2C     LDA ram_002C
C - - - - - 0x01C9D0 07:C9C0: 65 2A     ADC ram_002A
C - - - - - 0x01C9D2 07:C9C2: 85 2A     STA ram_002A
C - - - - - 0x01C9D4 07:C9C4: A5 29     LDA ram_0029
C - - - - - 0x01C9D6 07:C9C6: 18        CLC
C - - - - - 0x01C9D7 07:C9C7: 69 D8     ADC #< tbl_C9D8_screen_data
C - - - - - 0x01C9D9 07:C9C9: 85 29     STA ram_0029
C - - - - - 0x01C9DB 07:C9CB: A5 2A     LDA ram_002A
C - - - - - 0x01C9DD 07:C9CD: 69 C9     ADC #> tbl_C9D8_screen_data
C - - - - - 0x01C9DF 07:C9CF: 85 2A     STA ram_002A
C - - - - - 0x01C9E1 07:C9D1: 68        PLA
C - - - - - 0x01C9E2 07:C9D2: 85 2C     STA ram_002C
C - - - - - 0x01C9E4 07:C9D4: 68        PLA
C - - - - - 0x01C9E5 07:C9D5: 85 2B     STA ram_002B
C - - - - - 0x01C9E7 07:C9D7: 60        RTS



tbl_C9D8_screen_data:
; see con_CD20
; 00
- D 2 - I - 0x01C9E8 07:C9D8: 00 10     .word _off031_0x03F010_00
- D 2 - I - 0x01C9EA 07:C9DA: 00 00     .word $0000
- D 2 - I - 0x01C9EC 07:C9DC: 02        .byte $02   ; bg palette
- D 2 - I - 0x01C9ED 07:C9DD: 08        .byte $08   ; bg chr bank 1
- D 2 - I - 0x01C9EE 07:C9DE: 09        .byte $09   ; bg chr bank 2
- D 2 - I - 0x01C9EF 07:C9DF: 0A        .byte $0A   ; bg chr bank 3
- D 2 - I - 0x01C9F0 07:C9E0: 0B        .byte $0B   ; bg chr bank 4
- D 2 - I - 0x01C9F1 07:C9E1: 7C        .byte con_chr_bank + $7C   ; spite banks with compressed screen data
; 01
- D 2 - I - 0x01C9F2 07:C9E2: 00 80     .word _off027_0x000010_01
- D 2 - I - 0x01C9F4 07:C9E4: 65 89     .word _off028_0x000975_01
- D 2 - I - 0x01C9F6 07:C9E6: 00        .byte $00   ; bg palette
- D 2 - I - 0x01C9F7 07:C9E7: 00        .byte $00   ; bg chr bank 1
- D 2 - I - 0x01C9F8 07:C9E8: 01        .byte $01   ; bg chr bank 2
- D 2 - I - 0x01C9F9 07:C9E9: 02        .byte $02   ; bg chr bank 3
- D 2 - I - 0x01C9FA 07:C9EA: 03        .byte $03   ; bg chr bank 4
- D 2 - I - 0x01C9FB 07:C9EB: 00        .byte con_prg_bank + $00   ; 
; 02
- D 2 - I - 0x01C9FC 07:C9EC: 3C 80     .word _off027_0x00004C_02
- D 2 - I - 0x01C9FE 07:C9EE: A4 8E     .word _off028_0x000EB4_02
- D 2 - I - 0x01CA00 07:C9F0: 00        .byte $00   ; bg palette
- D 2 - I - 0x01CA01 07:C9F1: 00        .byte $00   ; bg chr bank 1
- - - - - - 0x01CA02 07:C9F2: 01        .byte $01   ; bg chr bank 2
- - - - - - 0x01CA03 07:C9F3: 02        .byte $02   ; bg chr bank 3
- - - - - - 0x01CA04 07:C9F4: 03        .byte $03   ; bg chr bank 4
- D 2 - I - 0x01CA05 07:C9F5: 00        .byte con_prg_bank + $00   ; 
; 03
- D 2 - I - 0x01CA06 07:C9F6: 78 80     .word _off027_0x000088_03
- D 2 - I - 0x01CA08 07:C9F8: 67 8E     .word _off028_0x000E77_03
- D 2 - I - 0x01CA0A 07:C9FA: 00        .byte $00   ; bg palette
- D 2 - I - 0x01CA0B 07:C9FB: 00        .byte $00   ; bg chr bank 1
- - - - - - 0x01CA0C 07:C9FC: 01        .byte $01   ; bg chr bank 2
- - - - - - 0x01CA0D 07:C9FD: 02        .byte $02   ; bg chr bank 3
- - - - - - 0x01CA0E 07:C9FE: 03        .byte $03   ; bg chr bank 4
- D 2 - I - 0x01CA0F 07:C9FF: 00        .byte con_prg_bank + $00   ; 
; 04
- D 2 - I - 0x01CA10 07:CA00: B4 80     .word _off027_0x0000C4_04
- D 2 - I - 0x01CA12 07:CA02: 0D 97     .word _off028_0x00171D_04
- D 2 - I - 0x01CA14 07:CA04: 00        .byte $00   ; bg palette
- D 2 - I - 0x01CA15 07:CA05: 00        .byte $00   ; bg chr bank 1
- - - - - - 0x01CA16 07:CA06: 01        .byte $01   ; bg chr bank 2
- - - - - - 0x01CA17 07:CA07: 02        .byte $02   ; bg chr bank 3
- - - - - - 0x01CA18 07:CA08: 03        .byte $03   ; bg chr bank 4
- D 2 - I - 0x01CA19 07:CA09: 00        .byte con_prg_bank + $00   ; 
; 05
- D 2 - I - 0x01CA1A 07:CA0A: F0 80     .word _off027_0x000100_05
- D 2 - I - 0x01CA1C 07:CA0C: 4A 97     .word _off028_0x00175A_05
- D 2 - I - 0x01CA1E 07:CA0E: 00        .byte $00   ; bg palette
- D 2 - I - 0x01CA1F 07:CA0F: 00        .byte $00   ; bg chr bank 1
- - - - - - 0x01CA20 07:CA10: 01        .byte $01   ; bg chr bank 2
- - - - - - 0x01CA21 07:CA11: 02        .byte $02   ; bg chr bank 3
- - - - - - 0x01CA22 07:CA12: 03        .byte $03   ; bg chr bank 4
- D 2 - I - 0x01CA23 07:CA13: 00        .byte con_prg_bank + $00   ; 
; 06
- D 2 - I - 0x01CA24 07:CA14: 2C 81     .word _off027_0x00013C_06
- D 2 - I - 0x01CA26 07:CA16: 8A 97     .word _off028_0x00179A_06
- D 2 - I - 0x01CA28 07:CA18: 00        .byte $00   ; bg palette
- D 2 - I - 0x01CA29 07:CA19: 00        .byte $00   ; bg chr bank 1
- - - - - - 0x01CA2A 07:CA1A: 01        .byte $01   ; bg chr bank 2
- - - - - - 0x01CA2B 07:CA1B: 02        .byte $02   ; bg chr bank 3
- - - - - - 0x01CA2C 07:CA1C: 03        .byte $03   ; bg chr bank 4
- D 2 - I - 0x01CA2D 07:CA1D: 00        .byte con_prg_bank + $00   ; 
; 07
- D 2 - I - 0x01CA2E 07:CA1E: 68 81     .word _off027_0x000178_07
- D 2 - I - 0x01CA30 07:CA20: C1 9F     .word _off028_0x001FD1_07
- D 2 - I - 0x01CA32 07:CA22: 00        .byte $00   ; bg palette
- D 2 - I - 0x01CA33 07:CA23: 00        .byte $00   ; bg chr bank 1
- - - - - - 0x01CA34 07:CA24: 01        .byte $01   ; bg chr bank 2
- - - - - - 0x01CA35 07:CA25: 02        .byte $02   ; bg chr bank 3
- - - - - - 0x01CA36 07:CA26: 03        .byte $03   ; bg chr bank 4
- D 2 - I - 0x01CA37 07:CA27: 00        .byte con_prg_bank + $00   ; 
; 08
- D 2 - I - 0x01CA38 07:CA28: A4 81     .word _off027_0x0001B4_08
- D 2 - I - 0x01CA3A 07:CA2A: 64 9E     .word _off028_0x001E74_08
- D 2 - I - 0x01CA3C 07:CA2C: 00        .byte $00   ; bg palette
- D 2 - I - 0x01CA3D 07:CA2D: 00        .byte $00   ; bg chr bank 1
- - - - - - 0x01CA3E 07:CA2E: 01        .byte $01   ; bg chr bank 2
- - - - - - 0x01CA3F 07:CA2F: 02        .byte $02   ; bg chr bank 3
- - - - - - 0x01CA40 07:CA30: 03        .byte $03   ; bg chr bank 4
- D 2 - I - 0x01CA41 07:CA31: 00        .byte con_prg_bank + $00   ; 
; 09
- D 2 - I - 0x01CA42 07:CA32: E0 81     .word _off027_0x0001F0_09
- D 2 - I - 0x01CA44 07:CA34: 1D A4     .word _off028_0x00242D_09
- D 2 - I - 0x01CA46 07:CA36: 01        .byte $01   ; bg palette
- D 2 - I - 0x01CA47 07:CA37: 04        .byte $04   ; bg chr bank 1
- - - - - - 0x01CA48 07:CA38: 05        .byte $05   ; bg chr bank 2
- - - - - - 0x01CA49 07:CA39: 06        .byte $06   ; bg chr bank 3
- - - - - - 0x01CA4A 07:CA3A: 07        .byte $07   ; bg chr bank 4
- D 2 - I - 0x01CA4B 07:CA3B: 00        .byte con_prg_bank + $00   ; 
; 0A
- D 2 - I - 0x01CA4C 07:CA3C: 1C 82     .word _off027_0x00022C_0A
- D 2 - I - 0x01CA4E 07:CA3E: 07 87     .word _off028_0x000717_0A
- D 2 - I - 0x01CA50 07:CA40: 01        .byte $01   ; bg palette
- D 2 - I - 0x01CA51 07:CA41: 04        .byte $04   ; bg chr bank 1
- - - - - - 0x01CA52 07:CA42: 05        .byte $05   ; bg chr bank 2
- - - - - - 0x01CA53 07:CA43: 06        .byte $06   ; bg chr bank 3
- - - - - - 0x01CA54 07:CA44: 07        .byte $07   ; bg chr bank 4
- D 2 - I - 0x01CA55 07:CA45: 00        .byte con_prg_bank + $00   ; 
; 0B
- D 2 - I - 0x01CA56 07:CA46: 58 82     .word _off027_0x000268_0B
- D 2 - I - 0x01CA58 07:CA48: DF A7     .word _off028_0x0027EF_0B
- D 2 - I - 0x01CA5A 07:CA4A: 01        .byte $01   ; bg palette
- D 2 - I - 0x01CA5B 07:CA4B: 04        .byte $04   ; bg chr bank 1
- D 2 - I - 0x01CA5C 07:CA4C: 05        .byte $05   ; bg chr bank 2
- D 2 - I - 0x01CA5D 07:CA4D: 06        .byte $06   ; bg chr bank 3
- D 2 - I - 0x01CA5E 07:CA4E: 07        .byte $07   ; bg chr bank 4
- D 2 - I - 0x01CA5F 07:CA4F: 00        .byte con_prg_bank + $00   ; 
; 0C
- D 2 - I - 0x01CA60 07:CA50: 94 82     .word _off027_0x0002A4_0C
- D 2 - I - 0x01CA62 07:CA52: 9B A8     .word _off028_0x0028AB_0C
- D 2 - I - 0x01CA64 07:CA54: 01        .byte $01   ; bg palette
- D 2 - I - 0x01CA65 07:CA55: 04        .byte $04   ; bg chr bank 1
- - - - - - 0x01CA66 07:CA56: 05        .byte $05   ; bg chr bank 2
- - - - - - 0x01CA67 07:CA57: 06        .byte $06   ; bg chr bank 3
- - - - - - 0x01CA68 07:CA58: 07        .byte $07   ; bg chr bank 4
- D 2 - I - 0x01CA69 07:CA59: 00        .byte con_prg_bank + $00   ; 
; 0D
- D 2 - I - 0x01CA6A 07:CA5A: D0 82     .word _off027_0x0002E0_0D
- D 2 - I - 0x01CA6C 07:CA5C: 20 AA     .word _off028_0x002A30_0D
- D 2 - I - 0x01CA6E 07:CA5E: 02        .byte $02   ; bg palette
- D 2 - I - 0x01CA6F 07:CA5F: 08        .byte $08   ; bg chr bank 1
- D 2 - I - 0x01CA70 07:CA60: 09        .byte $09   ; bg chr bank 2
- D 2 - I - 0x01CA71 07:CA61: 0A        .byte $0A   ; bg chr bank 3
- D 2 - I - 0x01CA72 07:CA62: 0B        .byte $0B   ; bg chr bank 4
- D 2 - I - 0x01CA73 07:CA63: 00        .byte con_prg_bank + $00   ; 
; 0E
- D 2 - I - 0x01CA74 07:CA64: 0C 83     .word _off027_0x00031C_0E
- D 2 - I - 0x01CA76 07:CA66: 83 AA     .word _off028_0x002A93_0E
- D 2 - I - 0x01CA78 07:CA68: 01        .byte $01   ; bg palette
- D 2 - I - 0x01CA79 07:CA69: 04        .byte $04   ; bg chr bank 1
- - - - - - 0x01CA7A 07:CA6A: 05        .byte $05   ; bg chr bank 2
- - - - - - 0x01CA7B 07:CA6B: 06        .byte $06   ; bg chr bank 3
- - - - - - 0x01CA7C 07:CA6C: 07        .byte $07   ; bg chr bank 4
- D 2 - I - 0x01CA7D 07:CA6D: 00        .byte con_prg_bank + $00   ; 
; 0F
- D 2 - I - 0x01CA7E 07:CA6E: 48 83     .word _off027_0x000358_0F
- D 2 - I - 0x01CA80 07:CA70: FB AB     .word _off028_0x002C0B_0F
- D 2 - I - 0x01CA82 07:CA72: 03        .byte $03   ; bg palette
- D 2 - I - 0x01CA83 07:CA73: 0C        .byte $0C   ; bg chr bank 1
- D 2 - I - 0x01CA84 07:CA74: 0D        .byte $0D   ; bg chr bank 2
- D 2 - I - 0x01CA85 07:CA75: 0E        .byte $0E   ; bg chr bank 3
- D 2 - I - 0x01CA86 07:CA76: 0F        .byte $0F   ; bg chr bank 4
- D 2 - I - 0x01CA87 07:CA77: 00        .byte con_prg_bank + $00   ; 
; 10
- D 2 - I - 0x01CA88 07:CA78: 84 83     .word _off027_0x000394_10
- D 2 - I - 0x01CA8A 07:CA7A: F7 AE     .word _off028_0x002F07_10
- D 2 - I - 0x01CA8C 07:CA7C: 03        .byte $03   ; bg palette
- D 2 - I - 0x01CA8D 07:CA7D: 0C        .byte $0C   ; bg chr bank 1
- - - - - - 0x01CA8E 07:CA7E: 0D        .byte $0D   ; bg chr bank 2
- - - - - - 0x01CA8F 07:CA7F: 0E        .byte $0E   ; bg chr bank 3
- - - - - - 0x01CA90 07:CA80: 0F        .byte $0F   ; bg chr bank 4
- D 2 - I - 0x01CA91 07:CA81: 00        .byte con_prg_bank + $00   ; 
; 11
- D 2 - I - 0x01CA92 07:CA82: C0 83     .word _off027_0x0003D0_11
- D 2 - I - 0x01CA94 07:CA84: 98 B0     .word _off028_0x0030A8_11
- D 2 - I - 0x01CA96 07:CA86: 03        .byte $03   ; bg palette
- D 2 - I - 0x01CA97 07:CA87: 0C        .byte $0C   ; bg chr bank 1
- - - - - - 0x01CA98 07:CA88: 0D        .byte $0D   ; bg chr bank 2
- - - - - - 0x01CA99 07:CA89: 0E        .byte $0E   ; bg chr bank 3
- - - - - - 0x01CA9A 07:CA8A: 0F        .byte $0F   ; bg chr bank 4
- D 2 - I - 0x01CA9B 07:CA8B: 00        .byte con_prg_bank + $00   ; 
; 12
- D 2 - I - 0x01CA9C 07:CA8C: F5 97     .word _off027_0x005805_12
- D 2 - I - 0x01CA9E 07:CA8E: FA A9     .word _off028_0x006A0A_12
- D 2 - I - 0x01CAA0 07:CA90: 0D        .byte $0D   ; bg palette
- D 2 - I - 0x01CAA1 07:CA91: 20        .byte $20   ; bg chr bank 1
- - - - - - 0x01CAA2 07:CA92: 21        .byte $21   ; bg chr bank 2
- - - - - - 0x01CAA3 07:CA93: 22        .byte $22   ; bg chr bank 3
- - - - - - 0x01CAA4 07:CA94: 23        .byte $23   ; bg chr bank 4
- D 2 - I - 0x01CAA5 07:CA95: 01        .byte con_prg_bank + $01   ; 
; 13
- D 2 - I - 0x01CAA6 07:CA96: FC 83     .word _off027_0x00040C_13
- D 2 - I - 0x01CAA8 07:CA98: D2 B1     .word _off028_0x0031E2_13
- D 2 - I - 0x01CAAA 07:CA9A: 03        .byte $03   ; bg palette
- D 2 - I - 0x01CAAB 07:CA9B: 0C        .byte $0C   ; bg chr bank 1
- - - - - - 0x01CAAC 07:CA9C: 0D        .byte $0D   ; bg chr bank 2
- - - - - - 0x01CAAD 07:CA9D: 0E        .byte $0E   ; bg chr bank 3
- - - - - - 0x01CAAE 07:CA9E: 0F        .byte $0F   ; bg chr bank 4
- D 2 - I - 0x01CAAF 07:CA9F: 00        .byte con_prg_bank + $00   ; 
; 14
- D 2 - I - 0x01CAB0 07:CAA0: 38 84     .word _off027_0x000448_14
- D 2 - I - 0x01CAB2 07:CAA2: B3 B5     .word _off028_0x0035C3_14
- D 2 - I - 0x01CAB4 07:CAA4: 03        .byte $03   ; bg palette
- D 2 - I - 0x01CAB5 07:CAA5: 0C        .byte $0C   ; bg chr bank 1
- - - - - - 0x01CAB6 07:CAA6: 0D        .byte $0D   ; bg chr bank 2
- - - - - - 0x01CAB7 07:CAA7: 0E        .byte $0E   ; bg chr bank 3
- - - - - - 0x01CAB8 07:CAA8: 0F        .byte $0F   ; bg chr bank 4
- D 2 - I - 0x01CAB9 07:CAA9: 00        .byte con_prg_bank + $00   ; 
; 15
- D 2 - I - 0x01CABA 07:CAAA: 70 11     .word _off031_0x03F180_15
- D 2 - I - 0x01CABC 07:CAAC: 00 00     .word $0000
- D 2 - I - 0x01CABE 07:CAAE: 03        .byte $03   ; bg palette
- D 2 - I - 0x01CABF 07:CAAF: 0C        .byte $0C   ; bg chr bank 1
- D 2 - I - 0x01CAC0 07:CAB0: 0D        .byte $0D   ; bg chr bank 2
- D 2 - I - 0x01CAC1 07:CAB1: 0E        .byte $0E   ; bg chr bank 3
- D 2 - I - 0x01CAC2 07:CAB2: 0F        .byte $0F   ; bg chr bank 4
- D 2 - I - 0x01CAC3 07:CAB3: 7C        .byte con_chr_bank + $7C   ; spite banks with compressed screen data
; 16
- D 2 - I - 0x01CAC4 07:CAB4: 74 84     .word _off027_0x000484_16
- D 2 - I - 0x01CAC6 07:CAB6: C5 B9     .word _off028_0x0039D5_16
- D 2 - I - 0x01CAC8 07:CAB8: 03        .byte $03   ; bg palette
- D 2 - I - 0x01CAC9 07:CAB9: 0C        .byte $0C   ; bg chr bank 1
- - - - - - 0x01CACA 07:CABA: 0D        .byte $0D   ; bg chr bank 2
- - - - - - 0x01CACB 07:CABB: 0E        .byte $0E   ; bg chr bank 3
- - - - - - 0x01CACC 07:CABC: 0F        .byte $0F   ; bg chr bank 4
- D 2 - I - 0x01CACD 07:CABD: 00        .byte con_prg_bank + $00   ; 
; 17
- D 2 - I - 0x01CACE 07:CABE: 8D 96     .word _off027_0x00569D_17
- D 2 - I - 0x01CAD0 07:CAC0: B5 9E     .word _off028_0x005EC5_17
- D 2 - I - 0x01CAD2 07:CAC2: 05        .byte $05   ; bg palette
- D 2 - I - 0x01CAD3 07:CAC3: 10        .byte $10   ; bg chr bank 1
- D 2 - I - 0x01CAD4 07:CAC4: 11        .byte $11   ; bg chr bank 2
- D 2 - I - 0x01CAD5 07:CAC5: 12        .byte $12   ; bg chr bank 3
- D 2 - I - 0x01CAD6 07:CAC6: 13        .byte $13   ; bg chr bank 4
- D 2 - I - 0x01CAD7 07:CAC7: 01        .byte con_prg_bank + $01   ; 
; 18
- D 2 - I - 0x01CAD8 07:CAC8: C9 96     .word _off027_0x0056D9_18
- D 2 - I - 0x01CADA 07:CACA: 60 A7     .word _off028_0x006770_18
- D 2 - I - 0x01CADC 07:CACC: 05        .byte $05   ; bg palette
- D 2 - I - 0x01CADD 07:CACD: 10        .byte $10   ; bg chr bank 1
- D 2 - I - 0x01CADE 07:CACE: 11        .byte $11   ; bg chr bank 2
- D 2 - I - 0x01CADF 07:CACF: 12        .byte $12   ; bg chr bank 3
- D 2 - I - 0x01CAE0 07:CAD0: 13        .byte $13   ; bg chr bank 4
- D 2 - I - 0x01CAE1 07:CAD1: 01        .byte con_prg_bank + $01   ; 
; 19
- D 2 - I - 0x01CAE2 07:CAD2: 05 97     .word _off027_0x005715_19
- D 2 - I - 0x01CAE4 07:CAD4: D5 A2     .word _off028_0x0062E5_19
- D 2 - I - 0x01CAE6 07:CAD6: 05        .byte $05   ; bg palette
- D 2 - I - 0x01CAE7 07:CAD7: 10        .byte $10   ; bg chr bank 1
- - - - - - 0x01CAE8 07:CAD8: 11        .byte $11   ; bg chr bank 2
- - - - - - 0x01CAE9 07:CAD9: 12        .byte $12   ; bg chr bank 3
- - - - - - 0x01CAEA 07:CADA: 13        .byte $13   ; bg chr bank 4
- D 2 - I - 0x01CAEB 07:CADB: 01        .byte con_prg_bank + $01   ; 
; 1A
- D 2 - I - 0x01CAEC 07:CADC: 41 97     .word _off027_0x005751_1A
- D 2 - I - 0x01CAEE 07:CADE: C7 BD     .word _off028_0x007DD7_1A
- D 2 - I - 0x01CAF0 07:CAE0: 05        .byte $05   ; bg palette
- D 2 - I - 0x01CAF1 07:CAE1: 10        .byte $10   ; bg chr bank 1
- - - - - - 0x01CAF2 07:CAE2: 11        .byte $11   ; bg chr bank 2
- - - - - - 0x01CAF3 07:CAE3: 12        .byte $12   ; bg chr bank 3
- - - - - - 0x01CAF4 07:CAE4: 13        .byte $13   ; bg chr bank 4
- D 2 - I - 0x01CAF5 07:CAE5: 01        .byte con_prg_bank + $01   ; 
; 1B
- D 2 - I - 0x01CAF6 07:CAE6: 7D 97     .word _off027_0x00578D_1B
- D 2 - I - 0x01CAF8 07:CAE8: AC A6     .word _off028_0x0066BC_1B
- D 2 - I - 0x01CAFA 07:CAEA: 05        .byte $05   ; bg palette
- D 2 - I - 0x01CAFB 07:CAEB: 10        .byte $10   ; bg chr bank 1
- - - - - - 0x01CAFC 07:CAEC: 11        .byte $11   ; bg chr bank 2
- - - - - - 0x01CAFD 07:CAED: 12        .byte $12   ; bg chr bank 3
- - - - - - 0x01CAFE 07:CAEE: 13        .byte $13   ; bg chr bank 4
- D 2 - I - 0x01CAFF 07:CAEF: 01        .byte con_prg_bank + $01   ; 
; 1C
- D 2 - I - 0x01CB00 07:CAF0: B9 97     .word _off027_0x0057C9_1C
- D 2 - I - 0x01CB02 07:CAF2: 50 BA     .word _off028_0x007A60_1C
- D 2 - I - 0x01CB04 07:CAF4: 05        .byte $05   ; bg palette
- D 2 - I - 0x01CB05 07:CAF5: 10        .byte $10   ; bg chr bank 1
- - - - - - 0x01CB06 07:CAF6: 11        .byte $11   ; bg chr bank 2
- - - - - - 0x01CB07 07:CAF7: 12        .byte $12   ; bg chr bank 3
- - - - - - 0x01CB08 07:CAF8: 13        .byte $13   ; bg chr bank 4
- D 2 - I - 0x01CB09 07:CAF9: 01        .byte con_prg_bank + $01   ; 
; 1D
- D 2 - I - 0x01CB0A 07:CAFA: F5 97     .word _off027_0x005805_1D
- D 2 - I - 0x01CB0C 07:CAFC: FA A9     .word _off028_0x006A0A_1D
- D 2 - I - 0x01CB0E 07:CAFE: 05        .byte $05   ; bg palette
- D 2 - I - 0x01CB0F 07:CAFF: 10        .byte $10   ; bg chr bank 1
- - - - - - 0x01CB10 07:CB00: 11        .byte $11   ; bg chr bank 2
- - - - - - 0x01CB11 07:CB01: 12        .byte $12   ; bg chr bank 3
- - - - - - 0x01CB12 07:CB02: 13        .byte $13   ; bg chr bank 4
- D 2 - I - 0x01CB13 07:CB03: 01        .byte con_prg_bank + $01   ; 
; 1E
- D 2 - I - 0x01CB14 07:CB04: 31 98     .word _off027_0x005841_1E
- D 2 - I - 0x01CB16 07:CB06: 76 AA     .word _off028_0x006A86_1E
- D 2 - I - 0x01CB18 07:CB08: 0D        .byte $0D   ; bg palette
- D 2 - I - 0x01CB19 07:CB09: 20        .byte $20   ; bg chr bank 1
- D 2 - I - 0x01CB1A 07:CB0A: 21        .byte $21   ; bg chr bank 2
- D 2 - I - 0x01CB1B 07:CB0B: 22        .byte $22   ; bg chr bank 3
- D 2 - I - 0x01CB1C 07:CB0C: 23        .byte $23   ; bg chr bank 4
- D 2 - I - 0x01CB1D 07:CB0D: 01        .byte con_prg_bank + $01   ; 
; 1F
- D 2 - I - 0x01CB1E 07:CB0E: 6D 98     .word _off027_0x00587D_1F
- D 2 - I - 0x01CB20 07:CB10: 5B AB     .word _off028_0x006B6B_1F
- D 2 - I - 0x01CB22 07:CB12: 06        .byte $06   ; bg palette
- D 2 - I - 0x01CB23 07:CB13: 14        .byte $14   ; bg chr bank 1
- D 2 - I - 0x01CB24 07:CB14: 15        .byte $15   ; bg chr bank 2
- D 2 - I - 0x01CB25 07:CB15: 16        .byte $16   ; bg chr bank 3
- D 2 - I - 0x01CB26 07:CB16: 17        .byte $17   ; bg chr bank 4
- D 2 - I - 0x01CB27 07:CB17: 01        .byte con_prg_bank + $01   ; 
; 20
- D 2 - I - 0x01CB28 07:CB18: A9 98     .word _off027_0x0058B9_20
- D 2 - I - 0x01CB2A 07:CB1A: F0 AC     .word _off028_0x006D00_20
- D 2 - I - 0x01CB2C 07:CB1C: 06        .byte $06   ; bg palette
- D 2 - I - 0x01CB2D 07:CB1D: 14        .byte $14   ; bg chr bank 1
- - - - - - 0x01CB2E 07:CB1E: 15        .byte $15   ; bg chr bank 2
- - - - - - 0x01CB2F 07:CB1F: 16        .byte $16   ; bg chr bank 3
- - - - - - 0x01CB30 07:CB20: 17        .byte $17   ; bg chr bank 4
- D 2 - I - 0x01CB31 07:CB21: 01        .byte con_prg_bank + $01   ; 
; 21
- D 2 - I - 0x01CB32 07:CB22: E5 98     .word _off027_0x0058F5_21
- D 2 - I - 0x01CB34 07:CB24: 31 A6     .word _off028_0x006641_21
- D 2 - I - 0x01CB36 07:CB26: 06        .byte $06   ; bg palette
- D 2 - I - 0x01CB37 07:CB27: 14        .byte $14   ; bg chr bank 1
- - - - - - 0x01CB38 07:CB28: 15        .byte $15   ; bg chr bank 2
- - - - - - 0x01CB39 07:CB29: 16        .byte $16   ; bg chr bank 3
- - - - - - 0x01CB3A 07:CB2A: 17        .byte $17   ; bg chr bank 4
- D 2 - I - 0x01CB3B 07:CB2B: 01        .byte con_prg_bank + $01   ; 
; 22
- D 2 - I - 0x01CB3C 07:CB2C: 21 99     .word _off027_0x005931_22
- D 2 - I - 0x01CB3E 07:CB2E: 52 B6     .word _off028_0x007662_22
- D 2 - I - 0x01CB40 07:CB30: 0C        .byte $0C   ; bg palette
- D 2 - I - 0x01CB41 07:CB31: 1C        .byte $1C   ; bg chr bank 1
- D 2 - I - 0x01CB42 07:CB32: 1D        .byte $1D   ; bg chr bank 2
- D 2 - I - 0x01CB43 07:CB33: 1E        .byte $1E   ; bg chr bank 3
- D 2 - I - 0x01CB44 07:CB34: 1F        .byte $1F   ; bg chr bank 4
- D 2 - I - 0x01CB45 07:CB35: 01        .byte con_prg_bank + $01   ; 
; 23
- D 2 - I - 0x01CB46 07:CB36: 5D 99     .word _off027_0x00596D_23
- D 2 - I - 0x01CB48 07:CB38: 13 B6     .word _off028_0x007623_23
- D 2 - I - 0x01CB4A 07:CB3A: 0C        .byte $0C   ; bg palette
- D 2 - I - 0x01CB4B 07:CB3B: 1C        .byte $1C   ; bg chr bank 1
- - - - - - 0x01CB4C 07:CB3C: 1D        .byte $1D   ; bg chr bank 2
- - - - - - 0x01CB4D 07:CB3D: 1E        .byte $1E   ; bg chr bank 3
- - - - - - 0x01CB4E 07:CB3E: 1F        .byte $1F   ; bg chr bank 4
- D 2 - I - 0x01CB4F 07:CB3F: 01        .byte con_prg_bank + $01   ; 
; 24
- D 2 - I - 0x01CB50 07:CB40: 5B 14     .word _off031_0x03F46B_24
- D 2 - I - 0x01CB52 07:CB42: 00 00     .word $0000
- D 2 - I - 0x01CB54 07:CB44: 07        .byte $07   ; bg palette
- D 2 - I - 0x01CB55 07:CB45: 18        .byte $18   ; bg chr bank 1
- D 2 - I - 0x01CB56 07:CB46: 19        .byte $19   ; bg chr bank 2
- D 2 - I - 0x01CB57 07:CB47: 1A        .byte $1A   ; bg chr bank 3
- D 2 - I - 0x01CB58 07:CB48: 1B        .byte $1B   ; bg chr bank 4
- D 2 - I - 0x01CB59 07:CB49: 7C        .byte con_chr_bank + $7C   ; spite banks with compressed screen data
; 25
- D 2 - I - 0x01CB5A 07:CB4A: 7E 17     .word _off031_0x03F78E_25
- D 2 - I - 0x01CB5C 07:CB4C: 00 00     .word $0000
- D 2 - I - 0x01CB5E 07:CB4E: 08        .byte $08   ; bg palette
- D 2 - I - 0x01CB5F 07:CB4F: 18        .byte $18   ; bg chr bank 1
- D 2 - I - 0x01CB60 07:CB50: 19        .byte $19   ; bg chr bank 2
- D 2 - I - 0x01CB61 07:CB51: 1A        .byte $1A   ; bg chr bank 3
- D 2 - I - 0x01CB62 07:CB52: 1B        .byte $1B   ; bg chr bank 4
- D 2 - I - 0x01CB63 07:CB53: 7C        .byte con_chr_bank + $7C   ; spite banks with compressed screen data
; 26
- D 2 - I - 0x01CB64 07:CB54: 1F 19     .word _off031_0x03F92F_26
- D 2 - I - 0x01CB66 07:CB56: 00 00     .word $0000
- D 2 - I - 0x01CB68 07:CB58: 09        .byte $09   ; bg palette
- D 2 - I - 0x01CB69 07:CB59: 18        .byte $18   ; bg chr bank 1
- D 2 - I - 0x01CB6A 07:CB5A: 19        .byte $19   ; bg chr bank 2
- D 2 - I - 0x01CB6B 07:CB5B: 1A        .byte $1A   ; bg chr bank 3
- D 2 - I - 0x01CB6C 07:CB5C: 1B        .byte $1B   ; bg chr bank 4
- D 2 - I - 0x01CB6D 07:CB5D: 7C        .byte con_chr_bank + $7C   ; spite banks with compressed screen data
; 27
- D 2 - I - 0x01CB6E 07:CB5E: F7 1B     .word _off031_0x03FC07_27
- D 2 - I - 0x01CB70 07:CB60: 00 00     .word $0000
- D 2 - I - 0x01CB72 07:CB62: 0B        .byte $0B   ; bg palette
- D 2 - I - 0x01CB73 07:CB63: 18        .byte $18   ; bg chr bank 1
- D 2 - I - 0x01CB74 07:CB64: 19        .byte $19   ; bg chr bank 2
- D 2 - I - 0x01CB75 07:CB65: 1A        .byte $1A   ; bg chr bank 3
- D 2 - I - 0x01CB76 07:CB66: 1B        .byte $1B   ; bg chr bank 4
- D 2 - I - 0x01CB77 07:CB67: 7C        .byte con_chr_bank + $7C   ; spite banks with compressed screen data
; 28
- D 2 - I - 0x01CB78 07:CB68: 99 99     .word _off027_0x0059A9_28
- D 2 - I - 0x01CB7A 07:CB6A: 14 BC     .word _off028_0x007C24_28
- D 2 - I - 0x01CB7C 07:CB6C: 0C        .byte $0C   ; bg palette
- D 2 - I - 0x01CB7D 07:CB6D: 1C        .byte $1C   ; bg chr bank 1
- - - - - - 0x01CB7E 07:CB6E: 1D        .byte $1D   ; bg chr bank 2
- - - - - - 0x01CB7F 07:CB6F: 1E        .byte $1E   ; bg chr bank 3
- - - - - - 0x01CB80 07:CB70: 1F        .byte $1F   ; bg chr bank 4
- D 2 - I - 0x01CB81 07:CB71: 01        .byte con_prg_bank + $01   ; 
; 29
- D 2 - I - 0x01CB82 07:CB72: D5 99     .word _off027_0x0059E5_29
- D 2 - I - 0x01CB84 07:CB74: 45 BE     .word _off028_0x007E55_29
- D 2 - I - 0x01CB86 07:CB76: 0C        .byte $0C   ; bg palette
- D 2 - I - 0x01CB87 07:CB77: 1C        .byte $1C   ; bg chr bank 1
- - - - - - 0x01CB88 07:CB78: 1D        .byte $1D   ; bg chr bank 2
- - - - - - 0x01CB89 07:CB79: 1E        .byte $1E   ; bg chr bank 3
- - - - - - 0x01CB8A 07:CB7A: 1F        .byte $1F   ; bg chr bank 4
- D 2 - I - 0x01CB8B 07:CB7B: 01        .byte con_prg_bank + $01   ; 
; 2A
- D 2 - I - 0x01CB8C 07:CB7C: 11 9A     .word _off027_0x005A21_2A
- D 2 - I - 0x01CB8E 07:CB7E: BE BF     .word _off028_0x007FCE_2A
- D 2 - I - 0x01CB90 07:CB80: 0C        .byte $0C   ; bg palette
- D 2 - I - 0x01CB91 07:CB81: 1C        .byte $1C   ; bg chr bank 1
- - - - - - 0x01CB92 07:CB82: 1D        .byte $1D   ; bg chr bank 2
- - - - - - 0x01CB93 07:CB83: 1E        .byte $1E   ; bg chr bank 3
- - - - - - 0x01CB94 07:CB84: 1F        .byte $1F   ; bg chr bank 4
- D 2 - I - 0x01CB95 07:CB85: 01        .byte con_prg_bank + $01   ; 
; 2B title screen
- D 2 - I - 0x01CB96 07:CB86: 00 10     .word _off031_0x03E010_2B
- - - - - - 0x01CB98 07:CB88: 00 00     .word $0000
- D 2 - I - 0x01CB9A 07:CB8A: 11        .byte $11   ; bg palette
- D 2 - I - 0x01CB9B 07:CB8B: 24        .byte $24   ; bg chr bank 1
- D 2 - I - 0x01CB9C 07:CB8C: 25        .byte $25   ; bg chr bank 2
- D 2 - I - 0x01CB9D 07:CB8D: 26        .byte $26   ; bg chr bank 3
- D 2 - I - 0x01CB9E 07:CB8E: 27        .byte $27   ; bg chr bank 4
- D 2 - I - 0x01CB9F 07:CB8F: 78        .byte con_chr_bank + $78   ; spite banks with compressed screen data
; 2C
- D 2 - I - 0x01CBA0 07:CB90: EC 84     .word _off027_0x0004FC_2C
- D 2 - I - 0x01CBA2 07:CB92: 62 BB     .word _off028_0x003B72_2C
- D 2 - I - 0x01CBA4 07:CB94: 0E        .byte $0E   ; bg palette
- D 2 - I - 0x01CBA5 07:CB95: 28        .byte $28   ; bg chr bank 1
- D 2 - I - 0x01CBA6 07:CB96: 29        .byte $29   ; bg chr bank 2
- D 2 - I - 0x01CBA7 07:CB97: 2A        .byte $2A   ; bg chr bank 3
- D 2 - I - 0x01CBA8 07:CB98: 2B        .byte $2B   ; bg chr bank 4
- D 2 - I - 0x01CBA9 07:CB99: 00        .byte con_prg_bank + $00   ; 
; 2D
- D 2 - I - 0x01CBAA 07:CB9A: 28 85     .word _off027_0x000538_2D
- D 2 - I - 0x01CBAC 07:CB9C: A2 BA     .word _off028_0x003AB2_2D
- D 2 - I - 0x01CBAE 07:CB9E: 0E        .byte $0E   ; bg palette
- D 2 - I - 0x01CBAF 07:CB9F: 28        .byte $28   ; bg chr bank 1
- D 2 - I - 0x01CBB0 07:CBA0: 29        .byte $29   ; bg chr bank 2
- D 2 - I - 0x01CBB1 07:CBA1: 2A        .byte $2A   ; bg chr bank 3
- D 2 - I - 0x01CBB2 07:CBA2: 2B        .byte $2B   ; bg chr bank 4
- D 2 - I - 0x01CBB3 07:CBA3: 00        .byte con_prg_bank + $00   ; 
; 2E
- D 2 - I - 0x01CBB4 07:CBA4: 64 85     .word _off027_0x000574_2E
- D 2 - I - 0x01CBB6 07:CBA6: 87 BF     .word _off028_0x003F97_2E
- D 2 - I - 0x01CBB8 07:CBA8: 0E        .byte $0E   ; bg palette
- D 2 - I - 0x01CBB9 07:CBA9: 28        .byte $28   ; bg chr bank 1
- - - - - - 0x01CBBA 07:CBAA: 29        .byte $29   ; bg chr bank 2
- - - - - - 0x01CBBB 07:CBAB: 2A        .byte $2A   ; bg chr bank 3
- - - - - - 0x01CBBC 07:CBAC: 2B        .byte $2B   ; bg chr bank 4
- D 2 - I - 0x01CBBD 07:CBAD: 00        .byte con_prg_bank + $00   ; 
; 2F
- D 2 - I - 0x01CBBE 07:CBAE: B0 84     .word _off027_0x0004C0_2F
- D 2 - I - 0x01CBC0 07:CBB0: 07 87     .word _off028_0x000717_2F
- D 2 - I - 0x01CBC2 07:CBB2: 01        .byte $01   ; bg palette
- D 2 - I - 0x01CBC3 07:CBB3: 04        .byte $04   ; bg chr bank 1
- - - - - - 0x01CBC4 07:CBB4: 05        .byte $05   ; bg chr bank 2
- - - - - - 0x01CBC5 07:CBB5: 06        .byte $06   ; bg chr bank 3
- - - - - - 0x01CBC6 07:CBB6: 07        .byte $07   ; bg chr bank 4
- D 2 - I - 0x01CBC7 07:CBB7: 00        .byte con_prg_bank + $00   ; 
; 30
- D 2 - I - 0x01CBC8 07:CBB8: 0C 83     .word _off027_0x00031C_30
- D 2 - I - 0x01CBCA 07:CBBA: 83 AA     .word _off028_0x002A93_30
- D 2 - I - 0x01CBCC 07:CBBC: 02        .byte $02   ; bg palette
- D 2 - I - 0x01CBCD 07:CBBD: 08        .byte $08   ; bg chr bank 1
- - - - - - 0x01CBCE 07:CBBE: 09        .byte $09   ; bg chr bank 2
- - - - - - 0x01CBCF 07:CBBF: 0A        .byte $0A   ; bg chr bank 3
- - - - - - 0x01CBD0 07:CBC0: 0B        .byte $0B   ; bg chr bank 4
- D 2 - I - 0x01CBD1 07:CBC1: 00        .byte con_prg_bank + $00   ; 
; 31
- D 2 - I - 0x01CBD2 07:CBC2: 33 17     .word _off031_0x03D743_31
- - - - - - 0x01CBD4 07:CBC4: 00 00     .word $0000
- D 2 - I - 0x01CBD6 07:CBC6: 1C        .byte $1C   ; bg palette
- D 2 - I - 0x01CBD7 07:CBC7: 66        .byte $66   ; bg chr bank 1
- D 2 - I - 0x01CBD8 07:CBC8: 67        .byte $67   ; bg chr bank 2
- D 2 - I - 0x01CBD9 07:CBC9: 2E        .byte $2E   ; bg chr bank 3
- D 2 - I - 0x01CBDA 07:CBCA: 2F        .byte $2F   ; bg chr bank 4
- D 2 - I - 0x01CBDB 07:CBCB: 74        .byte con_chr_bank + $74   ; spite banks with compressed screen data
; 32
- - - - - - 0x01CBDC 07:CBCC: 73 19     .word _off031_0x03D983_32
- - - - - - 0x01CBDE 07:CBCE: 00 00     .word $0000
- - - - - - 0x01CBE0 07:CBD0: 1B        .byte $1B   ; bg palette
- - - - - - 0x01CBE1 07:CBD1: 6A        .byte $6A   ; bg chr bank 1
- - - - - - 0x01CBE2 07:CBD2: 6B        .byte $6B   ; bg chr bank 2
- - - - - - 0x01CBE3 07:CBD3: 6C        .byte $6C   ; bg chr bank 3
- - - - - - 0x01CBE4 07:CBD4: 6D        .byte $6D   ; bg chr bank 4
- - - - - - 0x01CBE5 07:CBD5: 74        .byte con_chr_bank + $74   ; spite banks with compressed screen data
; 33
- D 2 - I - 0x01CBE6 07:CBD6: 73 19     .word _off031_0x03D983_33
- - - - - - 0x01CBE8 07:CBD8: 00 00     .word $0000
- D 2 - I - 0x01CBEA 07:CBDA: 1B        .byte $1B   ; bg palette
- D 2 - I - 0x01CBEB 07:CBDB: 6A        .byte $6A   ; bg chr bank 1
- D 2 - I - 0x01CBEC 07:CBDC: 6B        .byte $6B   ; bg chr bank 2
- D 2 - I - 0x01CBED 07:CBDD: 6C        .byte $6C   ; bg chr bank 3
- D 2 - I - 0x01CBEE 07:CBDE: 6D        .byte $6D   ; bg chr bank 4
- D 2 - I - 0x01CBEF 07:CBDF: 74        .byte con_chr_bank + $74   ; spite banks with compressed screen data
; 34
- D 2 - I - 0x01CBF0 07:CBE0: D4 1A     .word _off031_0x03DAE4_34
- - - - - - 0x01CBF2 07:CBE2: 00 00     .word $0000
- D 2 - I - 0x01CBF4 07:CBE4: 1B        .byte $1B   ; bg palette
- D 2 - I - 0x01CBF5 07:CBE5: 6A        .byte $6A   ; bg chr bank 1
- D 2 - I - 0x01CBF6 07:CBE6: 6B        .byte $6B   ; bg chr bank 2
- D 2 - I - 0x01CBF7 07:CBE7: 6C        .byte $6C   ; bg chr bank 3
- D 2 - I - 0x01CBF8 07:CBE8: 6D        .byte $6D   ; bg chr bank 4
- D 2 - I - 0x01CBF9 07:CBE9: 74        .byte con_chr_bank + $74   ; spite banks with compressed screen data
; 35
- D 2 - I - 0x01CBFA 07:CBEA: F3 13     .word _off031_0x03D403_35
- - - - - - 0x01CBFC 07:CBEC: 00 00     .word $0000
- D 2 - I - 0x01CBFE 07:CBEE: 1A        .byte $1A   ; bg palette
- D 2 - I - 0x01CBFF 07:CBEF: 6E        .byte $6E   ; bg chr bank 1
- D 2 - I - 0x01CC00 07:CBF0: 6F        .byte $6F   ; bg chr bank 2
- D 2 - I - 0x01CC01 07:CBF1: 6C        .byte $6C   ; bg chr bank 3
- D 2 - I - 0x01CC02 07:CBF2: 6D        .byte $6D   ; bg chr bank 4
- D 2 - I - 0x01CC03 07:CBF3: 74        .byte con_chr_bank + $74   ; spite banks with compressed screen data
; 36
- D 2 - I - 0x01CC04 07:CBF4: A2 18     .word _off031_0x03D8B2_36
- - - - - - 0x01CC06 07:CBF6: 00 00     .word $0000
- D 2 - I - 0x01CC08 07:CBF8: 1B        .byte $1B   ; bg palette
- D 2 - I - 0x01CC09 07:CBF9: 34        .byte $34   ; bg chr bank 1
- D 2 - I - 0x01CC0A 07:CBFA: 35        .byte $35   ; bg chr bank 2
- D 2 - I - 0x01CC0B 07:CBFB: 6C        .byte $6C   ; bg chr bank 3
- D 2 - I - 0x01CC0C 07:CBFC: 6C        .byte $6C   ; bg chr bank 4
- D 2 - I - 0x01CC0D 07:CBFD: 74        .byte con_chr_bank + $74   ; spite banks with compressed screen data
; 37
- - - - - - 0x01CC0E 07:CBFE: F9 18     .word _off031_0x03D909_37
- - - - - - 0x01CC10 07:CC00: 00 00     .word $0000
- - - - - - 0x01CC12 07:CC02: 1B        .byte $1B   ; bg palette
- - - - - - 0x01CC13 07:CC03: 34        .byte $34   ; bg chr bank 1
- - - - - - 0x01CC14 07:CC04: 35        .byte $35   ; bg chr bank 2
- - - - - - 0x01CC15 07:CC05: 6C        .byte $6C   ; bg chr bank 3
- - - - - - 0x01CC16 07:CC06: 6D        .byte $6D   ; bg chr bank 4
- - - - - - 0x01CC17 07:CC07: 74        .byte con_chr_bank + $74   ; spite banks with compressed screen data
; 38
- D 2 - I - 0x01CC18 07:CC08: 50 16     .word _off031_0x03D660_38
- - - - - - 0x01CC1A 07:CC0A: 00 00     .word $0000
- D 2 - I - 0x01CC1C 07:CC0C: 19        .byte $19   ; bg palette
- D 2 - I - 0x01CC1D 07:CC0D: 70        .byte $70   ; bg chr bank 1
- D 2 - I - 0x01CC1E 07:CC0E: 71        .byte $71   ; bg chr bank 2
- D 2 - I - 0x01CC1F 07:CC0F: 72        .byte $72   ; bg chr bank 3
- D 2 - I - 0x01CC20 07:CC10: 73        .byte $73   ; bg chr bank 4
- D 2 - I - 0x01CC21 07:CC11: 74        .byte con_chr_bank + $74   ; spite banks with compressed screen data
; 39
- D 2 - I - 0x01CC22 07:CC12: 2C 15     .word _off031_0x03D53C_39
- - - - - - 0x01CC24 07:CC14: 00 00     .word $0000
- D 2 - I - 0x01CC26 07:CC16: 18        .byte $18   ; bg palette
- D 2 - I - 0x01CC27 07:CC17: 70        .byte $70   ; bg chr bank 1
- D 2 - I - 0x01CC28 07:CC18: 71        .byte $71   ; bg chr bank 2
- D 2 - I - 0x01CC29 07:CC19: 72        .byte $72   ; bg chr bank 3
- D 2 - I - 0x01CC2A 07:CC1A: 73        .byte $73   ; bg chr bank 4
- D 2 - I - 0x01CC2B 07:CC1B: 74        .byte con_chr_bank + $74   ; spite banks with compressed screen data
; 3A
- D 2 - I - 0x01CC2C 07:CC1C: 4A 19     .word _off031_0x03D95A_3A
- - - - - - 0x01CC2E 07:CC1E: 00 00     .word $0000
- D 2 - I - 0x01CC30 07:CC20: 18        .byte $18   ; bg palette
- D 2 - I - 0x01CC31 07:CC21: 70        .byte $70   ; bg chr bank 1
- D 2 - I - 0x01CC32 07:CC22: 71        .byte $71   ; bg chr bank 2
- D 2 - I - 0x01CC33 07:CC23: 72        .byte $72   ; bg chr bank 3
- D 2 - I - 0x01CC34 07:CC24: 73        .byte $73   ; bg chr bank 4
- D 2 - I - 0x01CC35 07:CC25: 74        .byte con_chr_bank + $74   ; spite banks with compressed screen data
; 3B
- D 2 - I - 0x01CC36 07:CC26: 43 1B     .word _off031_0x03EB53_3B
- - - - - - 0x01CC38 07:CC28: 00 00     .word $0000
- D 2 - I - 0x01CC3A 07:CC2A: 27        .byte $27   ; bg palette
- D 2 - I - 0x01CC3B 07:CC2B: 2C        .byte $2C   ; bg chr bank 1
- D 2 - I - 0x01CC3C 07:CC2C: 2D        .byte $2D   ; bg chr bank 2
- D 2 - I - 0x01CC3D 07:CC2D: 2E        .byte $2E   ; bg chr bank 3
- D 2 - I - 0x01CC3E 07:CC2E: 2F        .byte $2F   ; bg chr bank 4
- D 2 - I - 0x01CC3F 07:CC2F: 78        .byte con_chr_bank + $78   ; spite banks with compressed screen data
; 3C
- D 2 - I - 0x01CC40 07:CC30: 2A 1C     .word _off031_0x03EC3A_3C
- - - - - - 0x01CC42 07:CC32: 00 00     .word $0000
- D 2 - I - 0x01CC44 07:CC34: 24        .byte $24   ; bg palette
- D 2 - I - 0x01CC45 07:CC35: 2C        .byte $2C   ; bg chr bank 1
- D 2 - I - 0x01CC46 07:CC36: 2D        .byte $2D   ; bg chr bank 2
- D 2 - I - 0x01CC47 07:CC37: 2E        .byte $2E   ; bg chr bank 3
- D 2 - I - 0x01CC48 07:CC38: 2F        .byte $2F   ; bg chr bank 4
- D 2 - I - 0x01CC49 07:CC39: 78        .byte con_chr_bank + $78   ; spite banks with compressed screen data
; 3D
- D 2 - I - 0x01CC4A 07:CC3A: 3E 17     .word _off031_0x03E74E_3D
- - - - - - 0x01CC4C 07:CC3C: 00 00     .word $0000
- D 2 - I - 0x01CC4E 07:CC3E: 29        .byte $29   ; bg palette
- D 2 - I - 0x01CC4F 07:CC3F: 2C        .byte $2C   ; bg chr bank 1
- D 2 - I - 0x01CC50 07:CC40: 2D        .byte $2D   ; bg chr bank 2
- D 2 - I - 0x01CC51 07:CC41: 2E        .byte $2E   ; bg chr bank 3
- D 2 - I - 0x01CC52 07:CC42: 2F        .byte $2F   ; bg chr bank 4
- D 2 - I - 0x01CC53 07:CC43: 78        .byte con_chr_bank + $78   ; spite banks with compressed screen data
; 3E
- - - - - - 0x01CC54 07:CC44: 3E 17     .word _off031_0x03E74E_3E
- - - - - - 0x01CC56 07:CC46: 00 00     .word $0000
- - - - - - 0x01CC58 07:CC48: 29        .byte $29   ; bg palette
- - - - - - 0x01CC59 07:CC49: 2C        .byte $2C   ; bg chr bank 1
- - - - - - 0x01CC5A 07:CC4A: 2D        .byte $2D   ; bg chr bank 2
- - - - - - 0x01CC5B 07:CC4B: 2E        .byte $2E   ; bg chr bank 3
- - - - - - 0x01CC5C 07:CC4C: 2F        .byte $2F   ; bg chr bank 4
- - - - - - 0x01CC5D 07:CC4D: 78        .byte con_chr_bank + $78   ; spite banks with compressed screen data
; 3F
- - - - - - 0x01CC5E 07:CC4E: 3E 17     .word _off031_0x03E74E_3F
- - - - - - 0x01CC60 07:CC50: 00 00     .word $0000
- - - - - - 0x01CC62 07:CC52: 29        .byte $29   ; bg palette
- - - - - - 0x01CC63 07:CC53: 2C        .byte $2C   ; bg chr bank 1
- - - - - - 0x01CC64 07:CC54: 2D        .byte $2D   ; bg chr bank 2
- - - - - - 0x01CC65 07:CC55: 2E        .byte $2E   ; bg chr bank 3
- - - - - - 0x01CC66 07:CC56: 2F        .byte $2F   ; bg chr bank 4
- - - - - - 0x01CC67 07:CC57: 78        .byte con_chr_bank + $78   ; spite banks with compressed screen data
; 40
- - - - - - 0x01CC68 07:CC58: 3E 17     .word _off031_0x03E74E_40
- - - - - - 0x01CC6A 07:CC5A: 00 00     .word $0000
- - - - - - 0x01CC6C 07:CC5C: 29        .byte $29   ; bg palette
- - - - - - 0x01CC6D 07:CC5D: 2C        .byte $2C   ; bg chr bank 1
- - - - - - 0x01CC6E 07:CC5E: 2D        .byte $2D   ; bg chr bank 2
- - - - - - 0x01CC6F 07:CC5F: 2E        .byte $2E   ; bg chr bank 3
- - - - - - 0x01CC70 07:CC60: 2F        .byte $2F   ; bg chr bank 4
- - - - - - 0x01CC71 07:CC61: 78        .byte con_chr_bank + $78   ; spite banks with compressed screen data
; 41
- D 2 - I - 0x01CC72 07:CC62: 95 11     .word _off031_0x03D1A5_41
- - - - - - 0x01CC74 07:CC64: 00 00     .word $0000
- D 2 - I - 0x01CC76 07:CC66: 20        .byte $20   ; bg palette
- D 2 - I - 0x01CC77 07:CC67: 34        .byte $34   ; bg chr bank 1
- D 2 - I - 0x01CC78 07:CC68: 35        .byte $35   ; bg chr bank 2
- D 2 - I - 0x01CC79 07:CC69: 2E        .byte $2E   ; bg chr bank 3
- D 2 - I - 0x01CC7A 07:CC6A: 2F        .byte $2F   ; bg chr bank 4
- D 2 - I - 0x01CC7B 07:CC6B: 74        .byte con_chr_bank + $74   ; spite banks with compressed screen data
; 42
- D 2 - I - 0x01CC7C 07:CC6C: 80 11     .word _off031_0x03E190_42
- - - - - - 0x01CC7E 07:CC6E: 00 00     .word $0000
- D 2 - I - 0x01CC80 07:CC70: 1F        .byte $1F   ; bg palette
- D 2 - I - 0x01CC81 07:CC71: 36        .byte $36   ; bg chr bank 1
- D 2 - I - 0x01CC82 07:CC72: 37        .byte $37   ; bg chr bank 2
- D 2 - I - 0x01CC83 07:CC73: 2E        .byte $2E   ; bg chr bank 3
- D 2 - I - 0x01CC84 07:CC74: 2F        .byte $2F   ; bg chr bank 4
- D 2 - I - 0x01CC85 07:CC75: 78        .byte con_chr_bank + $78   ; spite banks with compressed screen data
; 43
- D 2 - I - 0x01CC86 07:CC76: ED 12     .word _off031_0x03D2FD_43
- - - - - - 0x01CC88 07:CC78: 00 00     .word $0000
- D 2 - I - 0x01CC8A 07:CC7A: 23        .byte $23   ; bg palette
- D 2 - I - 0x01CC8B 07:CC7B: 30        .byte $30   ; bg chr bank 1
- D 2 - I - 0x01CC8C 07:CC7C: 31        .byte $31   ; bg chr bank 2
- D 2 - I - 0x01CC8D 07:CC7D: 2E        .byte $2E   ; bg chr bank 3
- D 2 - I - 0x01CC8E 07:CC7E: 2F        .byte $2F   ; bg chr bank 4
- D 2 - I - 0x01CC8F 07:CC7F: 74        .byte con_chr_bank + $74   ; spite banks with compressed screen data
; 44
- D 2 - I - 0x01CC90 07:CC80: D9 1B     .word _off031_0x03DBE9_44
- - - - - - 0x01CC92 07:CC82: 00 00     .word $0000
- D 2 - I - 0x01CC94 07:CC84: 26        .byte $26   ; bg palette
- D 2 - I - 0x01CC95 07:CC85: 2C        .byte $2C   ; bg chr bank 1
- D 2 - I - 0x01CC96 07:CC86: 2D        .byte $2D   ; bg chr bank 2
- D 2 - I - 0x01CC97 07:CC87: 2E        .byte $2E   ; bg chr bank 3
- D 2 - I - 0x01CC98 07:CC88: 2F        .byte $2F   ; bg chr bank 4
- D 2 - I - 0x01CC99 07:CC89: 74        .byte con_chr_bank + $74   ; spite banks with compressed screen data
; 45
- D 2 - I - 0x01CC9A 07:CC8A: BC 1E     .word _off031_0x03FECC_45
- - - - - - 0x01CC9C 07:CC8C: 00 00     .word $0000
- D 2 - I - 0x01CC9E 07:CC8E: 22        .byte $22   ; bg palette
- D 2 - I - 0x01CC9F 07:CC8F: 30        .byte $30   ; bg chr bank 1
- D 2 - I - 0x01CCA0 07:CC90: 31        .byte $31   ; bg chr bank 2
- D 2 - I - 0x01CCA1 07:CC91: 2E        .byte $2E   ; bg chr bank 3
- D 2 - I - 0x01CCA2 07:CC92: 2F        .byte $2F   ; bg chr bank 4
- D 2 - I - 0x01CCA3 07:CC93: 7C        .byte con_chr_bank + $7C   ; spite banks with compressed screen data
; 46
- - - - - - 0x01CCA4 07:CC94: 5C 14     .word _off031_0x03E46C_46
- - - - - - 0x01CCA6 07:CC96: 00 00     .word $0000
- - - - - - 0x01CCA8 07:CC98: 1D        .byte $1D   ; bg palette
- - - - - - 0x01CCA9 07:CC99: 38        .byte $38   ; bg chr bank 1
- - - - - - 0x01CCAA 07:CC9A: 39        .byte $39   ; bg chr bank 2
- - - - - - 0x01CCAB 07:CC9B: 2E        .byte $2E   ; bg chr bank 3
- - - - - - 0x01CCAC 07:CC9C: 2F        .byte $2F   ; bg chr bank 4
- - - - - - 0x01CCAD 07:CC9D: 78        .byte con_chr_bank + $78   ; spite banks with compressed screen data
; 47
- D 2 - I - 0x01CCAE 07:CC9E: 7D 15     .word _off031_0x03E58D_47
- - - - - - 0x01CCB0 07:CCA0: 00 00     .word $0000
- D 2 - I - 0x01CCB2 07:CCA2: 1D        .byte $1D   ; bg palette
- D 2 - I - 0x01CCB3 07:CCA3: 38        .byte $38   ; bg chr bank 1
- D 2 - I - 0x01CCB4 07:CCA4: 39        .byte $39   ; bg chr bank 2
- D 2 - I - 0x01CCB5 07:CCA5: 2E        .byte $2E   ; bg chr bank 3
- D 2 - I - 0x01CCB6 07:CCA6: 2F        .byte $2F   ; bg chr bank 4
- D 2 - I - 0x01CCB7 07:CCA7: 78        .byte con_chr_bank + $78   ; spite banks with compressed screen data
; 48
- - - - - - 0x01CCB8 07:CCA8: 5A 16     .word _off031_0x03E66A_48
- - - - - - 0x01CCBA 07:CCAA: 00 00     .word $0000
- - - - - - 0x01CCBC 07:CCAC: 1D        .byte $1D   ; bg palette
- - - - - - 0x01CCBD 07:CCAD: 38        .byte $38   ; bg chr bank 1
- - - - - - 0x01CCBE 07:CCAE: 39        .byte $39   ; bg chr bank 2
- - - - - - 0x01CCBF 07:CCAF: 2E        .byte $2E   ; bg chr bank 3
- - - - - - 0x01CCC0 07:CCB0: 2F        .byte $2F   ; bg chr bank 4
- - - - - - 0x01CCC1 07:CCB1: 78        .byte con_chr_bank + $78   ; spite banks with compressed screen data
; 49
- D 2 - I - 0x01CCC2 07:CCB2: 80 1A     .word _off031_0x03EA90_49
- - - - - - 0x01CCC4 07:CCB4: 00 00     .word $0000
- D 2 - I - 0x01CCC6 07:CCB6: 27        .byte $27   ; bg palette
- D 2 - I - 0x01CCC7 07:CCB7: 2C        .byte $2C   ; bg chr bank 1
- D 2 - I - 0x01CCC8 07:CCB8: 2D        .byte $2D   ; bg chr bank 2
- D 2 - I - 0x01CCC9 07:CCB9: 2E        .byte $2E   ; bg chr bank 3
- D 2 - I - 0x01CCCA 07:CCBA: 2F        .byte $2F   ; bg chr bank 4
- D 2 - I - 0x01CCCB 07:CCBB: 78        .byte con_chr_bank + $78   ; spite banks with compressed screen data
; 4A
- - - - - - 0x01CCCC 07:CCBC: 80 1A     .word _off031_0x03EA90_4A
- - - - - - 0x01CCCE 07:CCBE: 00 00     .word $0000
- - - - - - 0x01CCD0 07:CCC0: 25        .byte $25   ; bg palette
- - - - - - 0x01CCD1 07:CCC1: 2C        .byte $2C   ; bg chr bank 1
- - - - - - 0x01CCD2 07:CCC2: 2D        .byte $2D   ; bg chr bank 2
- - - - - - 0x01CCD3 07:CCC3: 2E        .byte $2E   ; bg chr bank 3
- - - - - - 0x01CCD4 07:CCC4: 2F        .byte $2F   ; bg chr bank 4
- - - - - - 0x01CCD5 07:CCC5: 78        .byte con_chr_bank + $78   ; spite banks with compressed screen data
; 4B
- D 2 - I - 0x01CCD6 07:CCC6: E5 18     .word _off031_0x03E8F5_4B
- - - - - - 0x01CCD8 07:CCC8: 00 00     .word $0000
- D 2 - I - 0x01CCDA 07:CCCA: 2B        .byte $2B   ; bg palette
- D 2 - I - 0x01CCDB 07:CCCB: 3C        .byte $3C   ; bg chr bank 1
- D 2 - I - 0x01CCDC 07:CCCC: 3D        .byte $3D   ; bg chr bank 2
- D 2 - I - 0x01CCDD 07:CCCD: 2E        .byte $2E   ; bg chr bank 3
- D 2 - I - 0x01CCDE 07:CCCE: 2F        .byte $2F   ; bg chr bank 4
- D 2 - I - 0x01CCDF 07:CCCF: 78        .byte con_chr_bank + $78   ; spite banks with compressed screen data
; 4C
- D 2 - I - 0x01CCE0 07:CCD0: 2A 19     .word _off031_0x03E93A_4C
- - - - - - 0x01CCE2 07:CCD2: 00 00     .word $0000
- D 2 - I - 0x01CCE4 07:CCD4: 2B        .byte $2B   ; bg palette
- D 2 - I - 0x01CCE5 07:CCD5: 3C        .byte $3C   ; bg chr bank 1
- D 2 - I - 0x01CCE6 07:CCD6: 3D        .byte $3D   ; bg chr bank 2
- D 2 - I - 0x01CCE7 07:CCD7: 2E        .byte $2E   ; bg chr bank 3
- D 2 - I - 0x01CCE8 07:CCD8: 2F        .byte $2F   ; bg chr bank 4
- D 2 - I - 0x01CCE9 07:CCD9: 78        .byte con_chr_bank + $78   ; spite banks with compressed screen data
; 4D
- D 2 - I - 0x01CCEA 07:CCDA: A9 19     .word _off031_0x03E9B9_4D
- - - - - - 0x01CCEC 07:CCDC: 00 00     .word $0000
- D 2 - I - 0x01CCEE 07:CCDE: 2A        .byte $2A   ; bg palette
- D 2 - I - 0x01CCEF 07:CCDF: 3C        .byte $3C   ; bg chr bank 1
- D 2 - I - 0x01CCF0 07:CCE0: 3D        .byte $3D   ; bg chr bank 2
- D 2 - I - 0x01CCF1 07:CCE1: 3E        .byte $3E   ; bg chr bank 3
- D 2 - I - 0x01CCF2 07:CCE2: 3F        .byte $3F   ; bg chr bank 4
- D 2 - I - 0x01CCF3 07:CCE3: 78        .byte con_chr_bank + $78   ; spite banks with compressed screen data
; 4E
- D 2 - I - 0x01CCF4 07:CCE4: 00 10     .word _off031_0x03D010_4E
- - - - - - 0x01CCF6 07:CCE6: 00 00     .word $0000
- D 2 - I - 0x01CCF8 07:CCE8: 23        .byte $23   ; bg palette
- D 2 - I - 0x01CCF9 07:CCE9: 2C        .byte $2C   ; bg chr bank 1
- D 2 - I - 0x01CCFA 07:CCEA: 2D        .byte $2D   ; bg chr bank 2
- D 2 - I - 0x01CCFB 07:CCEB: 2E        .byte $2E   ; bg chr bank 3
- D 2 - I - 0x01CCFC 07:CCEC: 2F        .byte $2F   ; bg chr bank 4
- D 2 - I - 0x01CCFD 07:CCED: 74        .byte con_chr_bank + $74   ; spite banks with compressed screen data
; 4F
- D 2 - I - 0x01CCFE 07:CCEE: 39 10     .word _off031_0x03D049_4F
- - - - - - 0x01CD00 07:CCF0: 00 00     .word $0000
- D 2 - I - 0x01CD02 07:CCF2: 21        .byte $21   ; bg palette
- D 2 - I - 0x01CD03 07:CCF3: 32        .byte $32   ; bg chr bank 1
- D 2 - I - 0x01CD04 07:CCF4: 33        .byte $33   ; bg chr bank 2
- D 2 - I - 0x01CD05 07:CCF5: 2E        .byte $2E   ; bg chr bank 3
- D 2 - I - 0x01CD06 07:CCF6: 2F        .byte $2F   ; bg chr bank 4
- D 2 - I - 0x01CD07 07:CCF7: 74        .byte con_chr_bank + $74   ; spite banks with compressed screen data
; 50
- D 2 - I - 0x01CD08 07:CCF8: 03 13     .word _off031_0x03E313_50
- - - - - - 0x01CD0A 07:CCFA: 00 00     .word $0000
- D 2 - I - 0x01CD0C 07:CCFC: 1D        .byte $1D   ; bg palette
- D 2 - I - 0x01CD0D 07:CCFD: 3A        .byte $3A   ; bg chr bank 1
- D 2 - I - 0x01CD0E 07:CCFE: 3B        .byte $3B   ; bg chr bank 2
- D 2 - I - 0x01CD0F 07:CCFF: 2E        .byte $2E   ; bg chr bank 3
- D 2 - I - 0x01CD10 07:CD00: 2F        .byte $2F   ; bg chr bank 4
- D 2 - I - 0x01CD11 07:CD01: 78        .byte con_chr_bank + $78   ; spite banks with compressed screen data
; 51
- D 2 - I - 0x01CD12 07:CD02: 9D 13     .word _off031_0x03E3AD_51
- - - - - - 0x01CD14 07:CD04: 00 00     .word $0000
- D 2 - I - 0x01CD16 07:CD06: 1D        .byte $1D   ; bg palette
- D 2 - I - 0x01CD17 07:CD07: 3A        .byte $3A   ; bg chr bank 1
- D 2 - I - 0x01CD18 07:CD08: 3B        .byte $3B   ; bg chr bank 2
- D 2 - I - 0x01CD19 07:CD09: 2E        .byte $2E   ; bg chr bank 3
- D 2 - I - 0x01CD1A 07:CD0A: 2F        .byte $2F   ; bg chr bank 4
- D 2 - I - 0x01CD1B 07:CD0B: 78        .byte con_chr_bank + $78   ; spite banks with compressed screen data
; 52
- D 2 - I - 0x01CD1C 07:CD0C: 77 1C     .word _off031_0x03DC87_52
- - - - - - 0x01CD1E 07:CD0E: 00 00     .word $0000
- D 2 - I - 0x01CD20 07:CD10: 2C        .byte $2C   ; bg palette
- D 2 - I - 0x01CD21 07:CD11: 68        .byte $68   ; bg chr bank 1
- D 2 - I - 0x01CD22 07:CD12: 69        .byte $69   ; bg chr bank 2
- D 2 - I - 0x01CD23 07:CD13: 6A        .byte $6A   ; bg chr bank 3
- D 2 - I - 0x01CD24 07:CD14: 6B        .byte $6B   ; bg chr bank 4
- D 2 - I - 0x01CD25 07:CD15: 74        .byte con_chr_bank + $74   ; spite banks with compressed screen data
; 53
- D 2 - I - 0x01CD26 07:CD16: 7C 1D     .word _off031_0x03DD8C_53
- - - - - - 0x01CD28 07:CD18: 00 00     .word $0000
- D 2 - I - 0x01CD2A 07:CD1A: 31        .byte $31   ; bg palette
- D 2 - I - 0x01CD2B 07:CD1B: 5C        .byte $5C   ; bg chr bank 1
- D 2 - I - 0x01CD2C 07:CD1C: 5D        .byte $5D   ; bg chr bank 2
- D 2 - I - 0x01CD2D 07:CD1D: 5E        .byte $5E   ; bg chr bank 3
- D 2 - I - 0x01CD2E 07:CD1E: 5F        .byte $5F   ; bg chr bank 4
- D 2 - I - 0x01CD2F 07:CD1F: 74        .byte con_chr_bank + $74   ; spite banks with compressed screen data



sub_CD20_draw_static_screen:
; see con_CD20
C - - - - - 0x01CD30 07:CD20: 85 19     STA ram_0019
C - - - - - 0x01CD32 07:CD22: AD FF BF  LDA $BFFF   ; bank id
C - - - - - 0x01CD35 07:CD25: 48        PHA
C - - - - - 0x01CD36 07:CD26: 20 B0 FC  JSR sub_FCB0_prepare_to_disable_interrupts
C - - - - - 0x01CD39 07:CD29: 20 98 FE  JSR sub_FE98_nmi_off
C - - - - - 0x01CD3C 07:CD2C: A5 E9     LDA ram_for_2000
C - - - - - 0x01CD3E 07:CD2E: 29 FB     AND #$FB
C - - - - - 0x01CD40 07:CD30: 85 E9     STA ram_for_2000
C - - - - - 0x01CD42 07:CD32: 8D 00 20  STA $2000
C - - - - - 0x01CD45 07:CD35: A9 00     LDA #$00
C - - - - - 0x01CD47 07:CD37: 8D 01 20  STA $2001
C - - - - - 0x01CD4A 07:CD3A: A5 19     LDA ram_0019
C - - - - - 0x01CD4C 07:CD3C: 20 97 C9  JSR sub_C997_calculate_screen_pointer
C - - - - - 0x01CD4F 07:CD3F: A0 09     LDY #$09
C - - - - - 0x01CD51 07:CD41: B1 29     LDA (ram_0029),Y
C - - - - - 0x01CD53 07:CD43: C9 06     CMP #$06
C - - - - - 0x01CD55 07:CD45: 90 1F     BCC bra_CD66_00_05
; 06+
C - - - - - 0x01CD57 07:CD47: AA        TAX
C - - - - - 0x01CD58 07:CD48: AD 98 04  LDA ram_chr_spr_1
C - - - - - 0x01CD5B 07:CD4B: 48        PHA
C - - - - - 0x01CD5C 07:CD4C: 8E 98 04  STX ram_chr_spr_1
C - - - - - 0x01CD5F 07:CD4F: E8        INX
C - - - - - 0x01CD60 07:CD50: E8        INX
C - - - - - 0x01CD61 07:CD51: AD 99 04  LDA ram_chr_spr_2
C - - - - - 0x01CD64 07:CD54: 48        PHA
C - - - - - 0x01CD65 07:CD55: 8E 99 04  STX ram_chr_spr_2
C - - - - - 0x01CD68 07:CD58: 20 DD FE  JSR sub_FEDD_write_spr_chr_banks
C - - - - - 0x01CD6B 07:CD5B: 68        PLA
C - - - - - 0x01CD6C 07:CD5C: 8D 99 04  STA ram_chr_spr_2
C - - - - - 0x01CD6F 07:CD5F: 68        PLA
C - - - - - 0x01CD70 07:CD60: 8D 98 04  STA ram_chr_spr_1
C - - - - - 0x01CD73 07:CD63: 4C 69 CD  JMP loc_CD69
bra_CD66_00_05:   ; bzk optimize, seems useless and was never executed
- - - - - - 0x01CD76 07:CD66: 20 0D FF  JSR sub_FF0D_prg_bankswitch
loc_CD69:
C D 2 - - - 0x01CD79 07:CD69: A0 04     LDY #$04
C - - - - - 0x01CD7B 07:CD6B: B1 29     LDA (ram_0029),Y
C - - - - - 0x01CD7D 07:CD6D: 8D 8F 04  STA ram_pal_bg_new
C - - - - - 0x01CD80 07:CD70: A0 05     LDY #$05
C - - - - - 0x01CD82 07:CD72: B1 29     LDA (ram_0029),Y
C - - - - - 0x01CD84 07:CD74: 8D 9C 04  STA ram_chr_bg_1
C - - - - - 0x01CD87 07:CD77: C8        INY ; 06
C - - - - - 0x01CD88 07:CD78: B1 29     LDA (ram_0029),Y
C - - - - - 0x01CD8A 07:CD7A: 8D 9D 04  STA ram_chr_bg_2
C - - - - - 0x01CD8D 07:CD7D: C8        INY ; 07
C - - - - - 0x01CD8E 07:CD7E: B1 29     LDA (ram_0029),Y
C - - - - - 0x01CD90 07:CD80: 8D 9E 04  STA ram_chr_bg_3
C - - - - - 0x01CD93 07:CD83: C8        INY ; 08
C - - - - - 0x01CD94 07:CD84: B1 29     LDA (ram_0029),Y
C - - - - - 0x01CD96 07:CD86: 8D 9F 04  STA ram_chr_bg_4
C - - - - - 0x01CD99 07:CD89: A0 00     LDY #$00
C - - - - - 0x01CD9B 07:CD8B: B1 29     LDA (ram_0029),Y
C - - - - - 0x01CD9D 07:CD8D: 48        PHA
C - - - - - 0x01CD9E 07:CD8E: C8        INY ; 01
C - - - - - 0x01CD9F 07:CD8F: B1 29     LDA (ram_0029),Y
C - - - - - 0x01CDA1 07:CD91: 85 2A     STA ram_002A
C - - - - - 0x01CDA3 07:CD93: 68        PLA
C - - - - - 0x01CDA4 07:CD94: 85 29     STA ram_0029
C - - - - - 0x01CDA6 07:CD96: A9 20     LDA #$20
C - - - - - 0x01CDA8 07:CD98: 85 2C     STA ram_002C
C - - - - - 0x01CDAA 07:CD9A: A9 00     LDA #$00
C - - - - - 0x01CDAC 07:CD9C: 85 2B     STA ram_002B
C - - - - - 0x01CDAE 07:CD9E: 85 19     STA ram_0019
C - - - - - 0x01CDB0 07:CDA0: 20 C6 CD  JSR sub_CDC6_decompress_screen_from_ppu
C - - - - - 0x01CDB3 07:CDA3: 20 A4 FE  JSR sub_FEA4_write_bg_chr_banks
C - - - - - 0x01CDB6 07:CDA6: 68        PLA ; bank id
C - - - - - 0x01CDB7 07:CDA7: 20 0D FF  JSR sub_FF0D_prg_bankswitch
C - - - - - 0x01CDBA 07:CDAA: 20 DD FE  JSR sub_FEDD_write_spr_chr_banks
C - - - - - 0x01CDBD 07:CDAD: A9 FF     LDA #$FF
C - - - - - 0x01CDBF 07:CDAF: 8D 40 06  STA ram_0640
C - - - - - 0x01CDC2 07:CDB2: A9 80     LDA #$80
C - - - - - 0x01CDC4 07:CDB4: 8D 3F 06  STA ram_063F
C - - - - - 0x01CDC7 07:CDB7: 20 B0 FC  JSR sub_FCB0_prepare_to_disable_interrupts
C - - - - - 0x01CDCA 07:CDBA: A5 E8     LDA ram_for_2001
C - - - - - 0x01CDCC 07:CDBC: 09 18     ORA #$18
C - - - - - 0x01CDCE 07:CDBE: 85 E8     STA ram_for_2001
C - - - - - 0x01CDD0 07:CDC0: A9 80     LDA #$80
C - - - - - 0x01CDD2 07:CDC2: 8D B1 05  STA ram_05B1
C - - - - - 0x01CDD5 07:CDC5: 60        RTS



sub_CDC6_decompress_screen_from_ppu:
loc_CDC6_read_next_byte_from_ppu:
C D 2 - - - 0x01CDD6 07:CDC6: 20 AF CE  JSR sub_CEAF_read_byte_from_ppu
C - - - - - 0x01CDD9 07:CDC9: A5 1A     LDA ram_001A
C - - - - - 0x01CDDB 07:CDCB: D0 45     BNE bra_CE12_decompress_bytes
C - - - - - 0x01CDDD 07:CDCD: 20 AF CE  JSR sub_CEAF_read_byte_from_ppu
C - - - - - 0x01CDE0 07:CDD0: A5 1A     LDA ram_001A
C - - - - - 0x01CDE2 07:CDD2: D0 01     BNE bra_CDD5_set_ppu_destination
C - - - - - 0x01CDE4 07:CDD4: 60        RTS
bra_CDD5_set_ppu_destination:
C - - - - - 0x01CDE5 07:CDD5: 29 F0     AND #$F0
C - - - - - 0x01CDE7 07:CDD7: C9 20     CMP #$20
C - - - - - 0x01CDE9 07:CDD9: D0 0F     BNE bra_CDEA
C - - - - - 0x01CDEB 07:CDDB: A5 1A     LDA ram_001A
C - - - - - 0x01CDED 07:CDDD: 85 2C     STA ram_002C
C - - - - - 0x01CDEF 07:CDDF: 20 AF CE  JSR sub_CEAF_read_byte_from_ppu
C - - - - - 0x01CDF2 07:CDE2: 85 2B     STA ram_002B
C - - - - - 0x01CDF4 07:CDE4: 20 9D CE  JSR sub_CE9D_recalculate_pointer
C - - - - - 0x01CDF7 07:CDE7: 4C C6 CD  JMP loc_CDC6_read_next_byte_from_ppu
bra_CDEA:
; bzk garbage, since stack could overflow because of 0x01CE10
- - - - - - 0x01CDFA 07:CDEA: A5 29     LDA ram_0029
- - - - - - 0x01CDFC 07:CDEC: 48        PHA
- - - - - - 0x01CDFD 07:CDED: A5 2A     LDA ram_002A
- - - - - - 0x01CDFF 07:CDEF: 48        PHA
- - - - - - 0x01CE00 07:CDF0: A6 1A     LDX ram_001A
- - - - - - 0x01CE02 07:CDF2: 20 AF CE  JSR sub_CEAF_read_byte_from_ppu
- - - - - - 0x01CE05 07:CDF5: 86 2A     STX ram_002A
- - - - - - 0x01CE07 07:CDF7: 85 29     STA ram_0029
- - - - - - 0x01CE09 07:CDF9: A5 19     LDA ram_0019
- - - - - - 0x01CE0B 07:CDFB: 48        PHA
- - - - - - 0x01CE0C 07:CDFC: A9 00     LDA #$00
- - - - - - 0x01CE0E 07:CDFE: 85 19     STA ram_0019
- - - - - - 0x01CE10 07:CE00: 20 C6 CD  JSR sub_CDC6_decompress_screen_from_ppu
- - - - - - 0x01CE13 07:CE03: 68        PLA
- - - - - - 0x01CE14 07:CE04: 85 19     STA ram_0019
- - - - - - 0x01CE16 07:CE06: 68        PLA
- - - - - - 0x01CE17 07:CE07: 85 2A     STA ram_002A
- - - - - - 0x01CE19 07:CE09: 68        PLA
- - - - - - 0x01CE1A 07:CE0A: 85 29     STA ram_0029
- - - - - - 0x01CE1C 07:CE0C: 20 9D CE  JSR sub_CE9D_recalculate_pointer
- - - - - - 0x01CE1F 07:CE0F: 4C C6 CD  JMP loc_CDC6_read_next_byte_from_ppu
bra_CE12_decompress_bytes:
C - - - - - 0x01CE22 07:CE12: A2 05     LDX #$05
C - - - - - 0x01CE24 07:CE14: 29 C0     AND #$C0
bra_CE16_loop:
C - - - - - 0x01CE26 07:CE16: 4A        LSR
C - - - - - 0x01CE27 07:CE17: CA        DEX
C - - - - - 0x01CE28 07:CE18: D0 FC     BNE bra_CE16_loop
C - - - - - 0x01CE2A 07:CE1A: AA        TAX
C - - - - - 0x01CE2B 07:CE1B: BD 28 CE  LDA tbl_CE28_decompression_handler,X
C - - - - - 0x01CE2E 07:CE1E: 85 2D     STA ram_002D
C - - - - - 0x01CE30 07:CE20: BD 29 CE  LDA tbl_CE28_decompression_handler + $01,X
C - - - - - 0x01CE33 07:CE23: 85 2E     STA ram_002E
C - - - - - 0x01CE35 07:CE25: 6C 2D 00  JMP (ram_002D)



tbl_CE28_decompression_handler:
- D 2 - - - 0x01CE38 07:CE28: 30 CE     .word ofs_013_CE30_00_write_a_byte_X_times
- D 2 - - - 0x01CE3A 07:CE2A: 41 CE     .word ofs_013_CE41_40_write_a_list_of_bytes
- D 2 - - - 0x01CE3C 07:CE2C: 55 CE     .word ofs_013_CE55_80_write_a_byte_Y_times
- D 2 - - - 0x01CE3E 07:CE2E: 75 CE     .word ofs_013_CE75_C0_write_a_list_of_bytes_X_times



ofs_013_CE30_00_write_a_byte_X_times:
; 00xx xxxx = counter
C - - J - - 0x01CE40 07:CE30: A6 1A     LDX ram_001A
C - - - - - 0x01CE42 07:CE32: 20 AF CE  JSR sub_CEAF_read_byte_from_ppu
bra_CE35_loop:
C - - - - - 0x01CE45 07:CE35: 20 E0 CE  JSR sub_CEE0
C - - - - - 0x01CE48 07:CE38: CA        DEX
C - - - - - 0x01CE49 07:CE39: D0 FA     BNE bra_CE35_loop
C - - - - - 0x01CE4B 07:CE3B: 20 9D CE  JSR sub_CE9D_recalculate_pointer
C - - - - - 0x01CE4E 07:CE3E: 4C C6 CD  JMP loc_CDC6_read_next_byte_from_ppu



ofs_013_CE41_40_write_a_list_of_bytes:
; 00xx xxxx = counter
; write following bytes until counter expires
C - - J - - 0x01CE51 07:CE41: A5 1A     LDA ram_001A
C - - - - - 0x01CE53 07:CE43: 29 3F     AND #$3F
C - - - - - 0x01CE55 07:CE45: AA        TAX
bra_CE46_loop:
C - - - - - 0x01CE56 07:CE46: 20 AF CE  JSR sub_CEAF_read_byte_from_ppu
C - - - - - 0x01CE59 07:CE49: 20 E0 CE  JSR sub_CEE0
C - - - - - 0x01CE5C 07:CE4C: CA        DEX
C - - - - - 0x01CE5D 07:CE4D: D0 F7     BNE bra_CE46_loop
C - - - - - 0x01CE5F 07:CE4F: 20 9D CE  JSR sub_CE9D_recalculate_pointer
C - - - - - 0x01CE62 07:CE52: 4C C6 CD  JMP loc_CDC6_read_next_byte_from_ppu



ofs_013_CE55_80_write_a_byte_Y_times:
; 00xx xxxx = multiplier
; following byte = counter
; total counter = counter * multiplier
C - - J - - 0x01CE65 07:CE55: A5 1A     LDA ram_001A
C - - - - - 0x01CE67 07:CE57: 29 3F     AND #$3F
C - - - - - 0x01CE69 07:CE59: 85 1C     STA ram_001C
C - - - - - 0x01CE6B 07:CE5B: 20 AF CE  JSR sub_CEAF_read_byte_from_ppu
C - - - - - 0x01CE6E 07:CE5E: 85 1B     STA ram_001B
C - - - - - 0x01CE70 07:CE60: 20 AF CE  JSR sub_CEAF_read_byte_from_ppu
bra_CE63_loop:
C - - - - - 0x01CE73 07:CE63: A6 1C     LDX ram_001C
bra_CE65_loop:
C - - - - - 0x01CE75 07:CE65: 20 E0 CE  JSR sub_CEE0
C - - - - - 0x01CE78 07:CE68: CA        DEX
C - - - - - 0x01CE79 07:CE69: D0 FA     BNE bra_CE65_loop
C - - - - - 0x01CE7B 07:CE6B: C6 1B     DEC ram_001B
C - - - - - 0x01CE7D 07:CE6D: D0 F4     BNE bra_CE63_loop
C - - - - - 0x01CE7F 07:CE6F: 20 9D CE  JSR sub_CE9D_recalculate_pointer
C - - - - - 0x01CE82 07:CE72: 4C C6 CD  JMP loc_CDC6_read_next_byte_from_ppu



ofs_013_CE75_C0_write_a_list_of_bytes_X_times:
; 00xx xxxx = loop counter
; 1st following byte = counter for following bytes
C - - J - - 0x01CE85 07:CE75: A5 1A     LDA ram_001A
C - - - - - 0x01CE87 07:CE77: 29 3F     AND #$3F
C - - - - - 0x01CE89 07:CE79: 85 1C     STA ram_001C
C - - - - - 0x01CE8B 07:CE7B: 20 AF CE  JSR sub_CEAF_read_byte_from_ppu
C - - - - - 0x01CE8E 07:CE7E: 85 1B     STA ram_001B
C - - - - - 0x01CE90 07:CE80: A5 19     LDA ram_0019
C - - - - - 0x01CE92 07:CE82: 85 1D     STA ram_001D
bra_CE84_loop:
C - - - - - 0x01CE94 07:CE84: A5 1D     LDA ram_001D
C - - - - - 0x01CE96 07:CE86: 85 19     STA ram_0019
C - - - - - 0x01CE98 07:CE88: A6 1C     LDX ram_001C
bra_CE8A_loop:
C - - - - - 0x01CE9A 07:CE8A: 20 AF CE  JSR sub_CEAF_read_byte_from_ppu
C - - - - - 0x01CE9D 07:CE8D: 20 E0 CE  JSR sub_CEE0
C - - - - - 0x01CEA0 07:CE90: CA        DEX
C - - - - - 0x01CEA1 07:CE91: D0 F7     BNE bra_CE8A_loop
C - - - - - 0x01CEA3 07:CE93: C6 1B     DEC ram_001B
C - - - - - 0x01CEA5 07:CE95: D0 ED     BNE bra_CE84_loop
C - - - - - 0x01CEA7 07:CE97: 20 9D CE  JSR sub_CE9D_recalculate_pointer
C - - - - - 0x01CEAA 07:CE9A: 4C C6 CD  JMP loc_CDC6_read_next_byte_from_ppu



sub_CE9D_recalculate_pointer:
C - - - - - 0x01CEAD 07:CE9D: A5 29     LDA ram_0029
C - - - - - 0x01CEAF 07:CE9F: 18        CLC
C - - - - - 0x01CEB0 07:CEA0: 65 19     ADC ram_0019
C - - - - - 0x01CEB2 07:CEA2: 85 29     STA ram_0029
C - - - - - 0x01CEB4 07:CEA4: A9 00     LDA #$00
C - - - - - 0x01CEB6 07:CEA6: 65 2A     ADC ram_002A
C - - - - - 0x01CEB8 07:CEA8: 85 2A     STA ram_002A
C - - - - - 0x01CEBA 07:CEAA: A9 00     LDA #$00
C - - - - - 0x01CEBC 07:CEAC: 85 19     STA ram_0019
C - - - - - 0x01CEBE 07:CEAE: 60        RTS



sub_CEAF_read_byte_from_ppu:
C - - - - - 0x01CEBF 07:CEAF: A5 2A     LDA ram_002A
C - - - - - 0x01CEC1 07:CEB1: C9 80     CMP #$80
C - - - - - 0x01CEC3 07:CEB3: B0 22     BCS bra_CED7_80_FF
C - - - - - 0x01CEC5 07:CEB5: A5 19     LDA ram_0019
C - - - - - 0x01CEC7 07:CEB7: 18        CLC
C - - - - - 0x01CEC8 07:CEB8: 65 29     ADC ram_0029
C - - - - - 0x01CECA 07:CEBA: 85 2D     STA ram_002D
C - - - - - 0x01CECC 07:CEBC: A5 2A     LDA ram_002A
C - - - - - 0x01CECE 07:CEBE: 69 00     ADC #$00
C - - - - - 0x01CED0 07:CEC0: 85 2E     STA ram_002E
C - - - - - 0x01CED2 07:CEC2: A5 2E     LDA ram_002E
C - - - - - 0x01CED4 07:CEC4: 8D 06 20  STA $2006
C - - - - - 0x01CED7 07:CEC7: A5 2D     LDA ram_002D
C - - - - - 0x01CED9 07:CEC9: 8D 06 20  STA $2006
C - - - - - 0x01CEDC 07:CECC: AD 07 20  LDA $2007
C - - - - - 0x01CEDF 07:CECF: AD 07 20  LDA $2007
C - - - - - 0x01CEE2 07:CED2: 85 1A     STA ram_001A
C - - - - - 0x01CEE4 07:CED4: E6 19     INC ram_0019
C - - - - - 0x01CEE6 07:CED6: 60        RTS
bra_CED7_80_FF:
; bzk garbage, because in all cases pointers point at ppu, and you won't
; be able read ppu like this. I suppose this was made while they still had
; space in prg for some cases, but eventually everything was put inside ppu
- - - - - - 0x01CEE7 07:CED7: A4 19     LDY ram_0019
- - - - - - 0x01CEE9 07:CED9: B1 29     LDA (ram_0029),Y
- - - - - - 0x01CEEB 07:CEDB: 85 1A     STA ram_001A
- - - - - - 0x01CEED 07:CEDD: E6 19     INC ram_0019
- - - - - - 0x01CEEF 07:CEDF: 60        RTS



sub_CEE0:
C - - - - - 0x01CEF0 07:CEE0: A5 2C     LDA ram_002C
C - - - - - 0x01CEF2 07:CEE2: 29 03     AND #$03
C - - - - - 0x01CEF4 07:CEE4: C9 03     CMP #$03
C - - - - - 0x01CEF6 07:CEE6: D0 2C     BNE bra_CF14    ; if not 2300+
C - - - - - 0x01CEF8 07:CEE8: A5 2B     LDA ram_002B
C - - - - - 0x01CEFA 07:CEEA: C9 C0     CMP #$C0
C - - - - - 0x01CEFC 07:CEEC: 90 26     BCC bra_CF14
C - - - - - 0x01CEFE 07:CEEE: A5 19     LDA ram_0019
C - - - - - 0x01CF00 07:CEF0: 48        PHA
C - - - - - 0x01CF01 07:CEF1: 98        TYA
C - - - - - 0x01CF02 07:CEF2: 48        PHA
C - - - - - 0x01CF03 07:CEF3: A5 2B     LDA ram_002B
C - - - - - 0x01CF05 07:CEF5: 38        SEC
C - - - - - 0x01CF06 07:CEF6: E9 C0     SBC #$C0
C - - - - - 0x01CF08 07:CEF8: 85 19     STA ram_0019
C - - - - - 0x01CF0A 07:CEFA: A5 2C     LDA ram_002C
C - - - - - 0x01CF0C 07:CEFC: C9 23     CMP #$23
C - - - - - 0x01CF0E 07:CEFE: F0 07     BEQ bra_CF07_2300_or_higher
C - - - - - 0x01CF10 07:CF00: 18        CLC
C - - - - - 0x01CF11 07:CF01: A9 40     LDA #$40
C - - - - - 0x01CF13 07:CF03: 65 19     ADC ram_0019
C - - - - - 0x01CF15 07:CF05: 85 19     STA ram_0019
bra_CF07_2300_or_higher:
C - - - - - 0x01CF17 07:CF07: A5 19     LDA ram_0019
C - - - - - 0x01CF19 07:CF09: A8        TAY
C - - - - - 0x01CF1A 07:CF0A: A5 1A     LDA ram_001A
C - - - - - 0x01CF1C 07:CF0C: 99 BD 05  STA ram_bg_attr_buffer,Y
C - - - - - 0x01CF1F 07:CF0F: 68        PLA
C - - - - - 0x01CF20 07:CF10: A8        TAY
C - - - - - 0x01CF21 07:CF11: 68        PLA
C - - - - - 0x01CF22 07:CF12: 85 19     STA ram_0019
bra_CF14:
C - - - - - 0x01CF24 07:CF14: A5 2C     LDA ram_002C
C - - - - - 0x01CF26 07:CF16: 8D 06 20  STA $2006
C - - - - - 0x01CF29 07:CF19: A5 2B     LDA ram_002B
C - - - - - 0x01CF2B 07:CF1B: 8D 06 20  STA $2006
C - - - - - 0x01CF2E 07:CF1E: A5 1A     LDA ram_001A
C - - - - - 0x01CF30 07:CF20: 8D 07 20  STA $2007
C - - - - - 0x01CF33 07:CF23: 18        CLC
C - - - - - 0x01CF34 07:CF24: A5 2B     LDA ram_002B
C - - - - - 0x01CF36 07:CF26: 69 01     ADC #< $0001
C - - - - - 0x01CF38 07:CF28: 85 2B     STA ram_002B
C - - - - - 0x01CF3A 07:CF2A: A5 2C     LDA ram_002C
C - - - - - 0x01CF3C 07:CF2C: 69 00     ADC #> $0001
C - - - - - 0x01CF3E 07:CF2E: 85 2C     STA ram_002C
C - - - - - 0x01CF40 07:CF30: 60        RTS



sub_0x01CF41:
C - - - - - 0x01CF41 07:CF31: A9 00     LDA #$00
C - - - - - 0x01CF43 07:CF33: 8D 44 06  STA ram_0644
C - - - - - 0x01CF46 07:CF36: A9 04     LDA #$04
C - - - - - 0x01CF48 07:CF38: 8D 45 06  STA ram_0645
C - - - - - 0x01CF4B 07:CF3B: 60        RTS



sub_0x01CF4C:
C - - - - - 0x01CF4C 07:CF3C: AD D0 00  LDA a: ram_pos_X_lo_cam
C - - - - - 0x01CF4F 07:CF3F: 48        PHA
C - - - - - 0x01CF50 07:CF40: AD D1 00  LDA a: ram_pos_X_hi_cam
C - - - - - 0x01CF53 07:CF43: 48        PHA
C - - - - - 0x01CF54 07:CF44: AD D8 00  LDA a: ram_00D8
C - - - - - 0x01CF57 07:CF47: 48        PHA
C - - - - - 0x01CF58 07:CF48: AD D9 00  LDA a: ram_00D9
C - - - - - 0x01CF5B 07:CF4B: 48        PHA
C - - - - - 0x01CF5C 07:CF4C: AD 44 06  LDA ram_0644
C - - - - - 0x01CF5F 07:CF4F: 8D D8 00  STA a: ram_00D8
C - - - - - 0x01CF62 07:CF52: AD 45 06  LDA ram_0645
C - - - - - 0x01CF65 07:CF55: 8D D9 00  STA a: ram_00D9
C - - - - - 0x01CF68 07:CF58: AD F5 00  LDA a: ram_00F5
C - - - - - 0x01CF6B 07:CF5B: 8D D0 00  STA a: ram_pos_X_lo_cam
C - - - - - 0x01CF6E 07:CF5E: A9 04     LDA #$04
C - - - - - 0x01CF70 07:CF60: 8D D1 00  STA a: ram_pos_X_hi_cam
loc_CF63:
C D 2 - - - 0x01CF73 07:CF63: 20 4E C1  JSR sub_C14E
C - - - - - 0x01CF76 07:CF66: AD D8 00  LDA a: ram_00D8
C - - - - - 0x01CF79 07:CF69: 8D 44 06  STA ram_0644
C - - - - - 0x01CF7C 07:CF6C: AD D9 00  LDA a: ram_00D9
C - - - - - 0x01CF7F 07:CF6F: 8D 45 06  STA ram_0645
C - - - - - 0x01CF82 07:CF72: 68        PLA
C - - - - - 0x01CF83 07:CF73: 8D D9 00  STA a: ram_00D9
C - - - - - 0x01CF86 07:CF76: 68        PLA
C - - - - - 0x01CF87 07:CF77: 8D D8 00  STA a: ram_00D8
C - - - - - 0x01CF8A 07:CF7A: 68        PLA
C - - - - - 0x01CF8B 07:CF7B: 8D D1 00  STA a: ram_pos_X_hi_cam
C - - - - - 0x01CF8E 07:CF7E: 68        PLA
C - - - - - 0x01CF8F 07:CF7F: 8D D0 00  STA a: ram_pos_X_lo_cam
bra_CF82_RTS:
C - - - - - 0x01CF92 07:CF82: 60        RTS



sub_0x01CF93:
C - - - - - 0x01CF93 07:CF83: A9 00     LDA #$00
C - - - - - 0x01CF95 07:CF85: 8D 44 06  STA ram_0644
C - - - - - 0x01CF98 07:CF88: 8D 45 06  STA ram_0645
C - - - - - 0x01CF9B 07:CF8B: 60        RTS



sub_0x01CF9C:
C - - - - - 0x01CF9C 07:CF8C: AD 45 06  LDA ram_0645
C - - - - - 0x01CF9F 07:CF8F: D0 F1     BNE bra_CF82_RTS
C - - - - - 0x01CFA1 07:CF91: AD D0 00  LDA a: ram_pos_X_lo_cam
C - - - - - 0x01CFA4 07:CF94: 48        PHA
C - - - - - 0x01CFA5 07:CF95: AD D1 00  LDA a: ram_pos_X_hi_cam
C - - - - - 0x01CFA8 07:CF98: 48        PHA
C - - - - - 0x01CFA9 07:CF99: AD D8 00  LDA a: ram_00D8
C - - - - - 0x01CFAC 07:CF9C: 48        PHA
C - - - - - 0x01CFAD 07:CF9D: AD D9 00  LDA a: ram_00D9
C - - - - - 0x01CFB0 07:CFA0: 48        PHA
C - - - - - 0x01CFB1 07:CFA1: AD 44 06  LDA ram_0644
C - - - - - 0x01CFB4 07:CFA4: 8D D8 00  STA a: ram_00D8
C - - - - - 0x01CFB7 07:CFA7: AD 45 06  LDA ram_0645
C - - - - - 0x01CFBA 07:CFAA: 8D D9 00  STA a: ram_00D9
C - - - - - 0x01CFBD 07:CFAD: AD F5 00  LDA a: ram_00F5
C - - - - - 0x01CFC0 07:CFB0: 8D D0 00  STA a: ram_pos_X_lo_cam
C - - - - - 0x01CFC3 07:CFB3: A9 00     LDA #$00
C - - - - - 0x01CFC5 07:CFB5: 8D D1 00  STA a: ram_pos_X_hi_cam
C - - - - - 0x01CFC8 07:CFB8: 4C 63 CF  JMP loc_CF63



sub_0x01CFCB:
C - - - - - 0x01CFCB 07:CFBB: A9 02     LDA #$02
C - - - - - 0x01CFCD 07:CFBD: 8D 44 06  STA ram_0644
C - - - - - 0x01CFD0 07:CFC0: 8D 45 06  STA ram_0645
C - - - - - 0x01CFD3 07:CFC3: 60        RTS



sub_0x01CFD4:
C - - - - - 0x01CFD4 07:CFC4: AD D0 00  LDA a: ram_pos_X_lo_cam
C - - - - - 0x01CFD7 07:CFC7: 48        PHA
C - - - - - 0x01CFD8 07:CFC8: AD D1 00  LDA a: ram_pos_X_hi_cam
C - - - - - 0x01CFDB 07:CFCB: 48        PHA
C - - - - - 0x01CFDC 07:CFCC: AD D8 00  LDA a: ram_00D8
C - - - - - 0x01CFDF 07:CFCF: 48        PHA
C - - - - - 0x01CFE0 07:CFD0: AD D9 00  LDA a: ram_00D9
C - - - - - 0x01CFE3 07:CFD3: 48        PHA
C - - - - - 0x01CFE4 07:CFD4: AD D2 00  LDA a: ram_pos_Y_lo_cam
C - - - - - 0x01CFE7 07:CFD7: 48        PHA
C - - - - - 0x01CFE8 07:CFD8: AD D3 00  LDA a: ram_pos_Y_hi_cam
C - - - - - 0x01CFEB 07:CFDB: 48        PHA
C - - - - - 0x01CFEC 07:CFDC: AD DA 00  LDA a: ram_00DA
C - - - - - 0x01CFEF 07:CFDF: 48        PHA
C - - - - - 0x01CFF0 07:CFE0: AD DB 00  LDA a: ram_00DB
C - - - - - 0x01CFF3 07:CFE3: 48        PHA
C - - - - - 0x01CFF4 07:CFE4: A9 00     LDA #$00
C - - - - - 0x01CFF6 07:CFE6: 8D D2 00  STA a: ram_pos_Y_lo_cam
C - - - - - 0x01CFF9 07:CFE9: 8D D3 00  STA a: ram_pos_Y_hi_cam
C - - - - - 0x01CFFC 07:CFEC: 8D DA 00  STA a: ram_00DA
C - - - - - 0x01CFFF 07:CFEF: 8D DB 00  STA a: ram_00DB
C - - - - - 0x01D002 07:CFF2: AD 44 06  LDA ram_0644
C - - - - - 0x01D005 07:CFF5: 8D D8 00  STA a: ram_00D8
C - - - - - 0x01D008 07:CFF8: AD 45 06  LDA ram_0645
C - - - - - 0x01D00B 07:CFFB: 8D D9 00  STA a: ram_00D9
C - - - - - 0x01D00E 07:CFFE: AD F5 00  LDA a: ram_00F5
C - - - - - 0x01D011 07:D001: 8D D0 00  STA a: ram_pos_X_lo_cam
C - - - - - 0x01D014 07:D004: A9 02     LDA #$02
C - - - - - 0x01D016 07:D006: 8D D1 00  STA a: ram_pos_X_hi_cam
C - - - - - 0x01D019 07:D009: 20 4E C1  JSR sub_C14E
C - - - - - 0x01D01C 07:D00C: AD D8 00  LDA a: ram_00D8
C - - - - - 0x01D01F 07:D00F: 8D 44 06  STA ram_0644
C - - - - - 0x01D022 07:D012: AD D9 00  LDA a: ram_00D9
C - - - - - 0x01D025 07:D015: 8D 45 06  STA ram_0645
C - - - - - 0x01D028 07:D018: 68        PLA
C - - - - - 0x01D029 07:D019: 8D DB 00  STA a: ram_00DB
C - - - - - 0x01D02C 07:D01C: 68        PLA
C - - - - - 0x01D02D 07:D01D: 8D DA 00  STA a: ram_00DA
C - - - - - 0x01D030 07:D020: 68        PLA
C - - - - - 0x01D031 07:D021: 8D D3 00  STA a: ram_pos_Y_hi_cam
C - - - - - 0x01D034 07:D024: 68        PLA
C - - - - - 0x01D035 07:D025: 8D D2 00  STA a: ram_pos_Y_lo_cam
C - - - - - 0x01D038 07:D028: 68        PLA
C - - - - - 0x01D039 07:D029: 8D D9 00  STA a: ram_00D9
C - - - - - 0x01D03C 07:D02C: 68        PLA
C - - - - - 0x01D03D 07:D02D: 8D D8 00  STA a: ram_00D8
C - - - - - 0x01D040 07:D030: 68        PLA
C - - - - - 0x01D041 07:D031: 8D D1 00  STA a: ram_pos_X_hi_cam
C - - - - - 0x01D044 07:D034: 68        PLA
C - - - - - 0x01D045 07:D035: 8D D0 00  STA a: ram_pos_X_lo_cam
C - - - - - 0x01D048 07:D038: 60        RTS



sub_D039:
C - - - - - 0x01D049 07:D039: EE 60 06  INC ram_0660_counter
C - - - - - 0x01D04C 07:D03C: AD 60 06  LDA ram_0660_counter
C - - - - - 0x01D04F 07:D03F: 29 01     AND #$01
C - - - - - 0x01D051 07:D041: D0 51     BNE bra_D094_RTS
C - - - - - 0x01D053 07:D043: AD 5F 06  LDA ram_065F
C - - - - - 0x01D056 07:D046: F0 4C     BEQ bra_D094_RTS
C - - - - - 0x01D058 07:D048: AD 5F 06  LDA ram_065F
C - - - - - 0x01D05B 07:D04B: 29 7F     AND #$7F
C - - - - - 0x01D05D 07:D04D: C9 01     CMP #$01
C - - - - - 0x01D05F 07:D04F: D0 0D     BNE bra_D05E
C - - - - - 0x01D061 07:D051: AD D2 00  LDA a: ram_pos_Y_lo_cam
C - - - - - 0x01D064 07:D054: 38        SEC
C - - - - - 0x01D065 07:D055: E9 B0     SBC #< $00B0
C - - - - - 0x01D067 07:D057: AD D3 00  LDA a: ram_pos_Y_hi_cam
C - - - - - 0x01D06A 07:D05A: E9 00     SBC #> $00B0
C - - - - - 0x01D06C 07:D05C: B0 36     BCS bra_D094_RTS
bra_D05E:
C - - - - - 0x01D06E 07:D05E: AD 5E 06  LDA ram_065E
C - - - - - 0x01D071 07:D061: 10 05     BPL bra_D068
C - - - - - 0x01D073 07:D063: A9 02     LDA #$02
C - - - - - 0x01D075 07:D065: 8D 5E 06  STA ram_065E
bra_D068:
C - - - - - 0x01D078 07:D068: C9 03     CMP #$03
C - - - - - 0x01D07A 07:D06A: 90 05     BCC bra_D071
C - - - - - 0x01D07C 07:D06C: A9 00     LDA #$00
C - - - - - 0x01D07E 07:D06E: 8D 5E 06  STA ram_065E
bra_D071:
C - - - - - 0x01D081 07:D071: AD 5F 06  LDA ram_065F
C - - - - - 0x01D084 07:D074: 29 7F     AND #$7F
C - - - - - 0x01D086 07:D076: 85 19     STA ram_0019
C - - - - - 0x01D088 07:D078: 0A        ASL
C - - - - - 0x01D089 07:D079: 18        CLC
C - - - - - 0x01D08A 07:D07A: 65 19     ADC ram_0019
C - - - - - 0x01D08C 07:D07C: 6D 5E 06  ADC ram_065E
C - - - - - 0x01D08F 07:D07F: A8        TAY
C - - - - - 0x01D090 07:D080: B9 92 D0  LDA tbl_D095 - $03,Y
C - - - - - 0x01D093 07:D083: 8D 8F 04  STA ram_pal_bg_new
C - - - - - 0x01D096 07:D086: EE 5E 06  INC ram_065E
C - - - - - 0x01D099 07:D089: AD 5F 06  LDA ram_065F
C - - - - - 0x01D09C 07:D08C: 10 06     BPL bra_D094_RTS
C - - - - - 0x01D09E 07:D08E: CE 5E 06  DEC ram_065E
C - - - - - 0x01D0A1 07:D091: CE 5E 06  DEC ram_065E
bra_D094_RTS:
C - - - - - 0x01D0A4 07:D094: 60        RTS



tbl_D095:
; 01
- D 2 - - - 0x01D0A5 07:D095: 05        .byte $05   ; 00
- D 2 - - - 0x01D0A6 07:D096: 12        .byte $12   ; 01
- D 2 - - - 0x01D0A7 07:D097: 13        .byte $13   ; 02
; 02
- D 2 - - - 0x01D0A8 07:D098: 15        .byte $15   ; 03
- D 2 - - - 0x01D0A9 07:D099: 14        .byte $14   ; 04
- D 2 - - - 0x01D0AA 07:D09A: 0D        .byte $0D   ; 05
; 03
- D 2 - - - 0x01D0AB 07:D09B: 04        .byte $04   ; 06
- D 2 - - - 0x01D0AC 07:D09C: 16        .byte $16   ; 07
- D 2 - - - 0x01D0AD 07:D09D: 17        .byte $17   ; 08


; bzk garbage
- - - - - - 0x01D0AE 07:D09E: 00        .byte $00   ; 
- - - - - - 0x01D0AF 07:D09F: 00        .byte $00   ; 



sub_D0A0:
C - - - - - 0x01D0B0 07:D0A0: A5 F1     LDA ram_00F1
C - - - - - 0x01D0B2 07:D0A2: C9 01     CMP #$01
C - - - - - 0x01D0B4 07:D0A4: F0 01     BEQ bra_D0A7
C - - - - - 0x01D0B6 07:D0A6: 60        RTS
bra_D0A7:
C - - - - - 0x01D0B7 07:D0A7: A5 19     LDA ram_0019
C - - - - - 0x01D0B9 07:D0A9: 48        PHA
C - - - - - 0x01D0BA 07:D0AA: A5 1A     LDA ram_001A
C - - - - - 0x01D0BC 07:D0AC: 48        PHA
C - - - - - 0x01D0BD 07:D0AD: A0 00     LDY #$00
C - - - - - 0x01D0BF 07:D0AF: 84 19     STY ram_0019
C - - - - - 0x01D0C1 07:D0B1: A9 FF     LDA #$FF
C - - - - - 0x01D0C3 07:D0B3: 85 1A     STA ram_001A
C - - - - - 0x01D0C5 07:D0B5: A2 06     LDX #$06
bra_D0B7_loop:
C - - - - - 0x01D0C7 07:D0B7: B5 3C     LDA ram_003C_obj,X ; 003C 003D 003E 003F 0040 0041 0042
C - - - - - 0x01D0C9 07:D0B9: 10 15     BPL bra_D0D0    ; if not con_003C_80
C - - - - - 0x01D0CB 07:D0BB: C8        INY
C - - - - - 0x01D0CC 07:D0BC: B5 4A     LDA ram_004A_obj,X
C - - - - - 0x01D0CE 07:D0BE: 29 20     AND #con_004A_20
C - - - - - 0x01D0D0 07:D0C0: D0 0E     BNE bra_D0D0
C - - - - - 0x01D0D2 07:D0C2: B5 92     LDA ram_pos_Y_lo,X
C - - - - - 0x01D0D4 07:D0C4: C5 19     CMP ram_0019
C - - - - - 0x01D0D6 07:D0C6: 90 02     BCC bra_D0CA
C - - - - - 0x01D0D8 07:D0C8: 85 19     STA ram_0019
bra_D0CA:
C - - - - - 0x01D0DA 07:D0CA: C5 1A     CMP ram_001A
C - - - - - 0x01D0DC 07:D0CC: B0 02     BCS bra_D0D0
C - - - - - 0x01D0DE 07:D0CE: 85 1A     STA ram_001A
bra_D0D0:
C - - - - - 0x01D0E0 07:D0D0: CA        DEX
C - - - - - 0x01D0E1 07:D0D1: 10 E4     BPL bra_D0B7_loop
C - - - - - 0x01D0E3 07:D0D3: C0 03     CPY #$03
C - - - - - 0x01D0E5 07:D0D5: 90 5B     BCC bra_D132_skip_sprite_blinking
C - - - - - 0x01D0E7 07:D0D7: A5 19     LDA ram_0019
C - - - - - 0x01D0E9 07:D0D9: 38        SEC
C - - - - - 0x01D0EA 07:D0DA: E5 1A     SBC ram_001A
C - - - - - 0x01D0EC 07:D0DC: 90 54     BCC bra_D132_skip_sprite_blinking
C - - - - - 0x01D0EE 07:D0DE: C9 0A     CMP #$0A
C - - - - - 0x01D0F0 07:D0E0: B0 50     BCS bra_D132_skip_sprite_blinking
C - - - - - 0x01D0F2 07:D0E2: A9 20     LDA #$20
C - - - - - 0x01D0F4 07:D0E4: 85 19     STA ram_0019
C - - - - - 0x01D0F6 07:D0E6: A2 00     LDX #$00
C - - - - - 0x01D0F8 07:D0E8: A0 FC     LDY #$FC
bra_D0EA_loop:
C - - - - - 0x01D0FA 07:D0EA: B9 00 02  LDA ram_spr_Y,Y
C - - - - - 0x01D0FD 07:D0ED: 48        PHA
C - - - - - 0x01D0FE 07:D0EE: BD 00 02  LDA ram_spr_Y,X
C - - - - - 0x01D101 07:D0F1: 99 00 02  STA ram_spr_Y,Y
C - - - - - 0x01D104 07:D0F4: 68        PLA
C - - - - - 0x01D105 07:D0F5: 9D 00 02  STA ram_spr_Y,X
C - - - - - 0x01D108 07:D0F8: C8        INY
C - - - - - 0x01D109 07:D0F9: E8        INX
C - - - - - 0x01D10A 07:D0FA: B9 00 02  LDA ram_spr_T - $01,Y
C - - - - - 0x01D10D 07:D0FD: 48        PHA
C - - - - - 0x01D10E 07:D0FE: BD 00 02  LDA ram_spr_T - $01,X
C - - - - - 0x01D111 07:D101: 99 00 02  STA ram_spr_T - $01,Y
C - - - - - 0x01D114 07:D104: 68        PLA
C - - - - - 0x01D115 07:D105: 9D 00 02  STA ram_spr_T - $01,X
C - - - - - 0x01D118 07:D108: E8        INX
C - - - - - 0x01D119 07:D109: C8        INY
C - - - - - 0x01D11A 07:D10A: B9 00 02  LDA ram_spr_A - $02,Y
C - - - - - 0x01D11D 07:D10D: 48        PHA
C - - - - - 0x01D11E 07:D10E: BD 00 02  LDA ram_spr_A - $02,X
C - - - - - 0x01D121 07:D111: 99 00 02  STA ram_spr_A - $02,Y
C - - - - - 0x01D124 07:D114: 68        PLA
C - - - - - 0x01D125 07:D115: 9D 00 02  STA ram_spr_A - $02,X
C - - - - - 0x01D128 07:D118: E8        INX
C - - - - - 0x01D129 07:D119: C8        INY
C - - - - - 0x01D12A 07:D11A: B9 00 02  LDA ram_spr_X - $03,Y
C - - - - - 0x01D12D 07:D11D: 48        PHA
C - - - - - 0x01D12E 07:D11E: BD 00 02  LDA ram_spr_X - $03,X
C - - - - - 0x01D131 07:D121: 99 00 02  STA ram_spr_X - $03,Y
C - - - - - 0x01D134 07:D124: 68        PLA
C - - - - - 0x01D135 07:D125: 9D 00 02  STA ram_spr_X - $03,X
C - - - - - 0x01D138 07:D128: E8        INX
C - - - - - 0x01D139 07:D129: 98        TYA
C - - - - - 0x01D13A 07:D12A: 38        SEC
C - - - - - 0x01D13B 07:D12B: E9 07     SBC #$07
C - - - - - 0x01D13D 07:D12D: A8        TAY
C - - - - - 0x01D13E 07:D12E: C6 19     DEC ram_0019
C - - - - - 0x01D140 07:D130: D0 B8     BNE bra_D0EA_loop
bra_D132_skip_sprite_blinking:
C - - - - - 0x01D142 07:D132: 68        PLA
C - - - - - 0x01D143 07:D133: 85 1A     STA ram_001A
C - - - - - 0x01D145 07:D135: 68        PLA
C - - - - - 0x01D146 07:D136: 85 19     STA ram_0019
C - - - - - 0x01D148 07:D138: 60        RTS


; bzk garbage
- - - - - - 0x01D149 07:D139: 00        .byte $00, $00, $00, $00, $00, $00, $00   ; 



sub_0x01D150_respawn_player:
C - - - - - 0x01D150 07:D140: A2 01     LDX #$01
C - - - - - 0x01D152 07:D142: A0 01     LDY #$01
loc_D144_loop:
C D 2 - - - 0x01D154 07:D144: BD 3C 00  LDA a: ram_003C_obj,X ; 003C 003D
C - - - - - 0x01D157 07:D147: 10 03     BPL bra_D14C    ; if not con_003C_80
C - - - - - 0x01D159 07:D149: 4C CF D1  JMP loc_D1CF
bra_D14C:
C - - - - - 0x01D15C 07:D14C: BD 32 04  LDA ram_lives,X
C - - - - - 0x01D15F 07:D14F: F0 7E     BEQ bra_D1CF
C - - - - - 0x01D161 07:D151: BD CC 03  LDA ram_plr_invincibility_timer,X
C - - - - - 0x01D164 07:D154: D0 05     BNE bra_D15B
C - - - - - 0x01D166 07:D156: A9 00     LDA #$00
C - - - - - 0x01D168 07:D158: 99 CC 03  STA ram_plr_invincibility_timer,Y
bra_D15B:
C - - - - - 0x01D16B 07:D15B: FE CC 03  INC ram_plr_invincibility_timer,X
C - - - - - 0x01D16E 07:D15E: BD CC 03  LDA ram_plr_invincibility_timer,X
C - - - - - 0x01D171 07:D161: C9 15     CMP #$15
C - - - - - 0x01D173 07:D163: 90 6A     BCC bra_D1CF
C - - - - - 0x01D175 07:D165: 20 D9 D1  JSR sub_D1D9
C - - - - - 0x01D178 07:D168: B0 65     BCS bra_D1CF
C - - - - - 0x01D17A 07:D16A: 8A        TXA
C - - - - - 0x01D17B 07:D16B: 48        PHA
C - - - - - 0x01D17C 07:D16C: 20 FF D1  JSR sub_D1FF
C - - - - - 0x01D17F 07:D16F: 68        PLA
C - - - - - 0x01D180 07:D170: AA        TAX
C - - - - - 0x01D181 07:D171: A8        TAY
C - - - - - 0x01D182 07:D172: DE CC 03  DEC ram_plr_invincibility_timer,X
C - - - - - 0x01D185 07:D175: A5 09     LDA ram_0009
C - - - - - 0x01D187 07:D177: 30 56     BMI bra_D1CF
C - - - - - 0x01D189 07:D179: FE CC 03  INC ram_plr_invincibility_timer,X
C - - - - - 0x01D18C 07:D17C: 99 59 03  STA ram_0359_obj,Y
C - - - - - 0x01D18F 07:D17F: A5 0A     LDA ram_000A
C - - - - - 0x01D191 07:D181: 95 77     STA ram_pos_X_lo,X
C - - - - - 0x01D193 07:D183: A5 0B     LDA ram_000B
C - - - - - 0x01D195 07:D185: 95 80     STA ram_pos_X_hi,X
C - - - - - 0x01D197 07:D187: A5 0C     LDA ram_000C
C - - - - - 0x01D199 07:D189: 95 92     STA ram_pos_Y_lo,X
C - - - - - 0x01D19B 07:D18B: A5 0D     LDA ram_000D
C - - - - - 0x01D19D 07:D18D: 95 9B     STA ram_pos_Y_hi,X
C - - - - - 0x01D19F 07:D18F: A5 0E     LDA ram_000E
C - - - - - 0x01D1A1 07:D191: 95 AD     STA ram_pos_Z_lo,X
C - - - - - 0x01D1A3 07:D193: A5 0F     LDA ram_000F
C - - - - - 0x01D1A5 07:D195: 95 B6     STA ram_pos_Z_hi,X
C - - - - - 0x01D1A7 07:D197: A9 80     LDA #con_003C_80
C - - - - - 0x01D1A9 07:D199: 95 3C     STA ram_003C_obj,X ; 003C 003D
C - - - - - 0x01D1AB 07:D19B: A9 08     LDA #con_004A_08
C - - - - - 0x01D1AD 07:D19D: 95 4A     STA ram_004A_obj,X
C - - - - - 0x01D1AF 07:D19F: A9 25     LDA #con_state_player_respawn
C - - - - - 0x01D1B1 07:D1A1: 95 43     STA ram_state,X
C - - - - - 0x01D1B3 07:D1A3: A9 7F     LDA #$7F
C - - - - - 0x01D1B5 07:D1A5: 99 1E 04  STA ram_hp,Y
C - - - - - 0x01D1B8 07:D1A8: A9 7F     LDA #con_anim_id + $7F
C - - - - - 0x01D1BA 07:D1AA: 95 C7     STA ram_animation_id,X
C - - - - - 0x01D1BC 07:D1AC: 9D CE 03  STA ram_copy_animation_id,X
C - - - - - 0x01D1BF 07:D1AF: A9 00     LDA #$00
C - - - - - 0x01D1C1 07:D1B1: 9D 4A 04  STA ram_044A_obj,X
C - - - - - 0x01D1C4 07:D1B4: 9D 46 04  STA ram_0446_obj,X
C - - - - - 0x01D1C7 07:D1B7: AD 22 04  LDA ram_mission_hi
C - - - - - 0x01D1CA 07:D1BA: A8        TAY
C - - - - - 0x01D1CB 07:D1BB: B9 BC D5  LDA tbl_D5BC,Y
C - - - - - 0x01D1CE 07:D1BE: 18        CLC
C - - - - - 0x01D1CF 07:D1BF: 65 09     ADC ram_0009
C - - - - - 0x01D1D1 07:D1C1: A8        TAY
C - - - - - 0x01D1D2 07:D1C2: B9 CB D5  LDA tbl_D5CB,Y
C - - - - - 0x01D1D5 07:D1C5: F0 08     BEQ bra_D1CF
C - - - - - 0x01D1D7 07:D1C7: A9 F4     LDA #< $00F4
C - - - - - 0x01D1D9 07:D1C9: 95 77     STA ram_pos_X_lo,X
C - - - - - 0x01D1DB 07:D1CB: A9 00     LDA #> $00F4
C - - - - - 0x01D1DD 07:D1CD: 95 80     STA ram_pos_X_hi,X
bra_D1CF:
loc_D1CF:
C D 2 - - - 0x01D1DF 07:D1CF: 8A        TXA
C - - - - - 0x01D1E0 07:D1D0: A8        TAY
C - - - - - 0x01D1E1 07:D1D1: 88        DEY
C - - - - - 0x01D1E2 07:D1D2: CA        DEX
C - - - - - 0x01D1E3 07:D1D3: 30 03     BMI bra_D1D8_RTS
C - - - - - 0x01D1E5 07:D1D5: 4C 44 D1  JMP loc_D144_loop
bra_D1D8_RTS:
C - - - - - 0x01D1E8 07:D1D8: 60        RTS



sub_D1D9:
C - - - - - 0x01D1E9 07:D1D9: 8A        TXA
C - - - - - 0x01D1EA 07:D1DA: 48        PHA
C - - - - - 0x01D1EB 07:D1DB: A5 3C     LDA ram_003C_obj
C - - - - - 0x01D1ED 07:D1DD: 45 3D     EOR ram_003C_obj + $01
C - - - - - 0x01D1EF 07:D1DF: 29 80     AND #con_003C_80
C - - - - - 0x01D1F1 07:D1E1: 10 14     BPL bra_D1F7
C - - - - - 0x01D1F3 07:D1E3: A2 00     LDX #$00
C - - - - - 0x01D1F5 07:D1E5: A5 3C     LDA ram_003C_obj
C - - - - - 0x01D1F7 07:D1E7: 30 02     BMI bra_D1EB    ; if con_003C_80
C - - - - - 0x01D1F9 07:D1E9: A2 01     LDX #$01
bra_D1EB:
C - - - - - 0x01D1FB 07:D1EB: B5 43     LDA ram_state,X
C - - - - - 0x01D1FD 07:D1ED: 29 7F     AND #$7F
C - - - - - 0x01D1FF 07:D1EF: C9 03     CMP #$03
C - - - - - 0x01D201 07:D1F1: 90 04     BCC bra_D1F7
C - - - - - 0x01D203 07:D1F3: C9 06     CMP #$06
C - - - - - 0x01D205 07:D1F5: 90 04     BCC bra_D1FB
bra_D1F7:
C - - - - - 0x01D207 07:D1F7: 18        CLC
C - - - - - 0x01D208 07:D1F8: 68        PLA
C - - - - - 0x01D209 07:D1F9: AA        TAX
C - - - - - 0x01D20A 07:D1FA: 60        RTS
bra_D1FB:
- - - - - - 0x01D20B 07:D1FB: 38        SEC
- - - - - - 0x01D20C 07:D1FC: 68        PLA
- - - - - - 0x01D20D 07:D1FD: AA        TAX
- - - - - - 0x01D20E 07:D1FE: 60        RTS



sub_D1FF:
C - - - - - 0x01D20F 07:D1FF: A9 FF     LDA #$FF
C - - - - - 0x01D211 07:D201: A2 10     LDX #$10
bra_D203_loop:
; 0004-0014
C - - - - - 0x01D213 07:D203: 95 04     STA ram_0004,X
C - - - - - 0x01D215 07:D205: CA        DEX
C - - - - - 0x01D216 07:D206: 10 FB     BPL bra_D203_loop
C - - - - - 0x01D218 07:D208: AD D0 00  LDA a: ram_pos_X_lo_cam
C - - - - - 0x01D21B 07:D20B: 18        CLC
C - - - - - 0x01D21C 07:D20C: 69 80     ADC #< $0080
C - - - - - 0x01D21E 07:D20E: 85 10     STA ram_0010
C - - - - - 0x01D220 07:D210: AD D1 00  LDA a: ram_pos_X_hi_cam
C - - - - - 0x01D223 07:D213: 69 00     ADC #> $0080
C - - - - - 0x01D225 07:D215: 85 11     STA ram_0011
C - - - - - 0x01D227 07:D217: AD D2 00  LDA a: ram_pos_Y_lo_cam
C - - - - - 0x01D22A 07:D21A: 18        CLC
C - - - - - 0x01D22B 07:D21B: 69 74     ADC #< $0074
C - - - - - 0x01D22D 07:D21D: 85 12     STA ram_0012
C - - - - - 0x01D22F 07:D21F: AD D3 00  LDA a: ram_pos_Y_hi_cam
C - - - - - 0x01D232 07:D222: 69 00     ADC #> $0074
C - - - - - 0x01D234 07:D224: 85 13     STA ram_0013
C - - - - - 0x01D236 07:D226: AC 22 04  LDY ram_mission_hi
C - - - - - 0x01D239 07:D229: B9 AD D5  LDA tbl_D5AD,Y
C - - - - - 0x01D23C 07:D22C: 85 1A     STA ram_001A
C - - - - - 0x01D23E 07:D22E: A9 00     LDA #$00
C - - - - - 0x01D240 07:D230: 85 19     STA ram_0019
C - - - - - 0x01D242 07:D232: AD FF BF  LDA $BFFF   ; bank id
C - - - - - 0x01D245 07:D235: 48        PHA
C - - - - - 0x01D246 07:D236: A9 04     LDA #con_prg_bank + $04
C - - - - - 0x01D248 07:D238: 20 0D FF  JSR sub_FF0D_prg_bankswitch
C - - - - - 0x01D24B 07:D23B: AD 22 04  LDA ram_mission_hi
C - - - - - 0x01D24E 07:D23E: 0A        ASL
C - - - - - 0x01D24F 07:D23F: A8        TAY
C - - - - - 0x01D250 07:D240: B9 1D 8B  LDA tbl_0x010B2D,Y
C - - - - - 0x01D253 07:D243: 85 29     STA ram_0029
C - - - - - 0x01D255 07:D245: B9 1E 8B  LDA tbl_0x010B2D + $01,Y
C - - - - - 0x01D258 07:D248: 85 2A     STA ram_002A
bra_D24A_loop:
C - - - - - 0x01D25A 07:D24A: AC 22 04  LDY ram_mission_hi
C - - - - - 0x01D25D 07:D24D: B9 BC D5  LDA tbl_D5BC,Y
C - - - - - 0x01D260 07:D250: 18        CLC
C - - - - - 0x01D261 07:D251: 65 19     ADC ram_0019
C - - - - - 0x01D263 07:D253: A8        TAY
C - - - - - 0x01D264 07:D254: B9 CB D5  LDA tbl_D5CB,Y
C - - - - - 0x01D267 07:D257: 30 33     BMI bra_D28C
C - - - - - 0x01D269 07:D259: A0 04     LDY #$04
C - - - - - 0x01D26B 07:D25B: B1 29     LDA (ram_0029),Y
C - - - - - 0x01D26D 07:D25D: 29 7F     AND #$7F
C - - - - - 0x01D26F 07:D25F: C9 00     CMP #$00
C - - - - - 0x01D271 07:D261: F0 0B     BEQ bra_D26E
C - - - - - 0x01D273 07:D263: C9 03     CMP #$03
C - - - - - 0x01D275 07:D265: F0 07     BEQ bra_D26E
C - - - - - 0x01D277 07:D267: C9 08     CMP #$08
C - - - - - 0x01D279 07:D269: F0 03     BEQ bra_D26E
C - - - - - 0x01D27B 07:D26B: 4C 8C D2  JMP loc_D28C
bra_D26E:
C - - - - - 0x01D27E 07:D26E: A0 00     LDY #$00
C - - - - - 0x01D280 07:D270: B1 29     LDA (ram_0029),Y
C - - - - - 0x01D282 07:D272: 85 2B     STA ram_002B
C - - - - - 0x01D284 07:D274: C8        INY ; 01
C - - - - - 0x01D285 07:D275: B1 29     LDA (ram_0029),Y
C - - - - - 0x01D287 07:D277: 85 2C     STA ram_002C
C - - - - - 0x01D289 07:D279: C8        INY ; 02
C - - - - - 0x01D28A 07:D27A: B1 29     LDA (ram_0029),Y
C - - - - - 0x01D28C 07:D27C: 85 1B     STA ram_001B
C - - - - - 0x01D28E 07:D27E: C8        INY ; 03
C - - - - - 0x01D28F 07:D27F: B1 29     LDA (ram_0029),Y
C - - - - - 0x01D291 07:D281: 85 1C     STA ram_001C
C - - - - - 0x01D293 07:D283: A9 00     LDA #$00
C - - - - - 0x01D295 07:D285: 85 1F     STA ram_001F
C - - - - - 0x01D297 07:D287: 85 20     STA ram_0020
C - - - - - 0x01D299 07:D289: 20 A7 D2  JSR sub_D2A7
bra_D28C:
loc_D28C:
C D 2 - - - 0x01D29C 07:D28C: A5 29     LDA ram_0029
C - - - - - 0x01D29E 07:D28E: 18        CLC
C - - - - - 0x01D29F 07:D28F: 69 05     ADC #< $0005
C - - - - - 0x01D2A1 07:D291: 85 29     STA ram_0029
C - - - - - 0x01D2A3 07:D293: A5 2A     LDA ram_002A
C - - - - - 0x01D2A5 07:D295: 69 00     ADC #> $0005
C - - - - - 0x01D2A7 07:D297: 85 2A     STA ram_002A
C - - - - - 0x01D2A9 07:D299: E6 19     INC ram_0019
C - - - - - 0x01D2AB 07:D29B: C6 1A     DEC ram_001A
C - - - - - 0x01D2AD 07:D29D: D0 AB     BNE bra_D24A_loop
C - - - - - 0x01D2AF 07:D29F: 68        PLA
C - - - - - 0x01D2B0 07:D2A0: 20 0D FF  JSR sub_FF0D_prg_bankswitch
C - - - - - 0x01D2B3 07:D2A3: A5 09     LDA ram_0009
C - - - - - 0x01D2B5 07:D2A5: 0A        ASL
C - - - - - 0x01D2B6 07:D2A6: 60        RTS



sub_D2A7:
loc_D2A7:
C D 2 - - - 0x01D2B7 07:D2A7: A0 00     LDY #$00
C - - - - - 0x01D2B9 07:D2A9: A5 1F     LDA ram_001F
C - - - - - 0x01D2BB 07:D2AB: 85 1D     STA ram_001D
C - - - - - 0x01D2BD 07:D2AD: A5 20     LDA ram_0020
C - - - - - 0x01D2BF 07:D2AF: 85 1E     STA ram_001E
C - - - - - 0x01D2C1 07:D2B1: B1 2B     LDA (ram_002B),Y
C - - - - - 0x01D2C3 07:D2B3: 85 1F     STA ram_001F
C - - - - - 0x01D2C5 07:D2B5: 48        PHA
C - - - - - 0x01D2C6 07:D2B6: C8        INY
C - - - - - 0x01D2C7 07:D2B7: B1 2B     LDA (ram_002B),Y
C - - - - - 0x01D2C9 07:D2B9: 85 20     STA ram_0020
C - - - - - 0x01D2CB 07:D2BB: 48        PHA
C - - - - - 0x01D2CC 07:D2BC: C8        INY
C - - - - - 0x01D2CD 07:D2BD: B1 2B     LDA (ram_002B),Y
C - - - - - 0x01D2CF 07:D2BF: 85 2D     STA ram_002D
C - - - - - 0x01D2D1 07:D2C1: C8        INY
C - - - - - 0x01D2D2 07:D2C2: B1 2B     LDA (ram_002B),Y
C - - - - - 0x01D2D4 07:D2C4: 85 2E     STA ram_002E
C - - - - - 0x01D2D6 07:D2C6: 20 20 D4  JSR sub_D420
C - - - - - 0x01D2D9 07:D2C9: A5 1B     LDA ram_001B
C - - - - - 0x01D2DB 07:D2CB: 18        CLC
C - - - - - 0x01D2DC 07:D2CC: 65 21     ADC ram_0021
C - - - - - 0x01D2DE 07:D2CE: 85 21     STA ram_0021
C - - - - - 0x01D2E0 07:D2D0: A5 1C     LDA ram_001C
C - - - - - 0x01D2E2 07:D2D2: 65 22     ADC ram_0022
C - - - - - 0x01D2E4 07:D2D4: 85 22     STA ram_0022
C - - - - - 0x01D2E6 07:D2D6: A5 1B     LDA ram_001B
C - - - - - 0x01D2E8 07:D2D8: 18        CLC
C - - - - - 0x01D2E9 07:D2D9: 65 23     ADC ram_0023
C - - - - - 0x01D2EB 07:D2DB: 85 23     STA ram_0023
C - - - - - 0x01D2ED 07:D2DD: A5 1C     LDA ram_001C
C - - - - - 0x01D2EF 07:D2DF: 65 24     ADC ram_0024
C - - - - - 0x01D2F1 07:D2E1: 85 24     STA ram_0024
C - - - - - 0x01D2F3 07:D2E3: A5 D0     LDA ram_pos_X_lo_cam
C - - - - - 0x01D2F5 07:D2E5: 38        SEC
C - - - - - 0x01D2F6 07:D2E6: E5 1D     SBC ram_001D
C - - - - - 0x01D2F8 07:D2E8: A5 D1     LDA ram_pos_X_hi_cam
C - - - - - 0x01D2FA 07:D2EA: E5 1E     SBC ram_001E
C - - - - - 0x01D2FC 07:D2EC: B0 07     BCS bra_D2F5
C - - - - - 0x01D2FE 07:D2EE: C9 FF     CMP #$FF
C - - - - - 0x01D300 07:D2F0: F0 0B     BEQ bra_D2FD
C - - - - - 0x01D302 07:D2F2: 4C 03 D4  JMP loc_D403
bra_D2F5:
C - - - - - 0x01D305 07:D2F5: A5 D0     LDA ram_pos_X_lo_cam
C - - - - - 0x01D307 07:D2F7: 85 1D     STA ram_001D
C - - - - - 0x01D309 07:D2F9: A5 D1     LDA ram_pos_X_hi_cam
C - - - - - 0x01D30B 07:D2FB: 85 1E     STA ram_001E
bra_D2FD:
C - - - - - 0x01D30D 07:D2FD: A5 1F     LDA ram_001F
C - - - - - 0x01D30F 07:D2FF: 85 25     STA ram_0025
C - - - - - 0x01D311 07:D301: 38        SEC
C - - - - - 0x01D312 07:D302: E5 D0     SBC ram_pos_X_lo_cam
C - - - - - 0x01D314 07:D304: A5 20     LDA ram_0020
C - - - - - 0x01D316 07:D306: 85 26     STA ram_0026
C - - - - - 0x01D318 07:D308: E5 D1     SBC ram_pos_X_hi_cam
C - - - - - 0x01D31A 07:D30A: B0 03     BCS bra_D30F
C - - - - - 0x01D31C 07:D30C: 4C 03 D4  JMP loc_D403
bra_D30F:
C - - - - - 0x01D31F 07:D30F: F0 09     BEQ bra_D31A
C - - - - - 0x01D321 07:D311: A5 D0     LDA ram_pos_X_lo_cam
C - - - - - 0x01D323 07:D313: 85 25     STA ram_0025
C - - - - - 0x01D325 07:D315: A6 D1     LDX ram_pos_X_hi_cam
C - - - - - 0x01D327 07:D317: E8        INX
C - - - - - 0x01D328 07:D318: 86 26     STX ram_0026
bra_D31A:
C - - - - - 0x01D32A 07:D31A: A5 D2     LDA ram_pos_Y_lo_cam
C - - - - - 0x01D32C 07:D31C: 38        SEC
C - - - - - 0x01D32D 07:D31D: E5 23     SBC ram_0023
C - - - - - 0x01D32F 07:D31F: A5 D3     LDA ram_pos_Y_hi_cam
C - - - - - 0x01D331 07:D321: E5 24     SBC ram_0024
C - - - - - 0x01D333 07:D323: B0 07     BCS bra_D32C
C - - - - - 0x01D335 07:D325: C9 FF     CMP #$FF
C - - - - - 0x01D337 07:D327: F0 0B     BEQ bra_D334
C - - - - - 0x01D339 07:D329: 4C 03 D4  JMP loc_D403
bra_D32C:
C - - - - - 0x01D33C 07:D32C: A5 D2     LDA ram_pos_Y_lo_cam
C - - - - - 0x01D33E 07:D32E: 85 23     STA ram_0023
C - - - - - 0x01D340 07:D330: A5 D3     LDA ram_pos_Y_hi_cam
C - - - - - 0x01D342 07:D332: 85 24     STA ram_0024
bra_D334:
C - - - - - 0x01D344 07:D334: A5 21     LDA ram_0021
C - - - - - 0x01D346 07:D336: 38        SEC
C - - - - - 0x01D347 07:D337: E5 D2     SBC ram_pos_Y_lo_cam
C - - - - - 0x01D349 07:D339: A5 22     LDA ram_0022
C - - - - - 0x01D34B 07:D33B: E5 D3     SBC ram_pos_Y_hi_cam
C - - - - - 0x01D34D 07:D33D: B0 03     BCS bra_D342
C - - - - - 0x01D34F 07:D33F: 4C 03 D4  JMP loc_D403
bra_D342:
C - - - - - 0x01D352 07:D342: F0 0D     BEQ bra_D351
- - - - - - 0x01D354 07:D344: A5 D2     LDA ram_pos_Y_lo_cam
- - - - - - 0x01D356 07:D346: 18        CLC
- - - - - - 0x01D357 07:D347: 69 F0     ADC #< $00F0
- - - - - - 0x01D359 07:D349: 85 21     STA ram_0021
- - - - - - 0x01D35B 07:D34B: A5 D3     LDA ram_pos_Y_hi_cam
- - - - - - 0x01D35D 07:D34D: 69 00     ADC #> $00F0
- - - - - - 0x01D35F 07:D34F: 85 22     STA ram_0022
bra_D351:
C - - - - - 0x01D361 07:D351: A5 1D     LDA ram_001D
C - - - - - 0x01D363 07:D353: 18        CLC
C - - - - - 0x01D364 07:D354: 65 25     ADC ram_0025
C - - - - - 0x01D366 07:D356: 85 1D     STA ram_001D
C - - - - - 0x01D368 07:D358: A5 1E     LDA ram_001E
C - - - - - 0x01D36A 07:D35A: 65 26     ADC ram_0026
C - - - - - 0x01D36C 07:D35C: 85 1E     STA ram_001E
C - - - - - 0x01D36E 07:D35E: 46 1E     LSR ram_001E
C - - - - - 0x01D370 07:D360: 66 1D     ROR ram_001D
C - - - - - 0x01D372 07:D362: A5 21     LDA ram_0021
C - - - - - 0x01D374 07:D364: 18        CLC
C - - - - - 0x01D375 07:D365: 65 23     ADC ram_0023
C - - - - - 0x01D377 07:D367: 85 21     STA ram_0021
C - - - - - 0x01D379 07:D369: A5 22     LDA ram_0022
C - - - - - 0x01D37B 07:D36B: 65 24     ADC ram_0024
C - - - - - 0x01D37D 07:D36D: 85 22     STA ram_0022
C - - - - - 0x01D37F 07:D36F: 46 22     LSR ram_0022
C - - - - - 0x01D381 07:D371: 66 21     ROR ram_0021
C - - - - - 0x01D383 07:D373: A5 10     LDA ram_0010
C - - - - - 0x01D385 07:D375: 38        SEC
C - - - - - 0x01D386 07:D376: E5 1D     SBC ram_001D
C - - - - - 0x01D388 07:D378: 85 25     STA ram_0025
C - - - - - 0x01D38A 07:D37A: A5 11     LDA ram_0011
C - - - - - 0x01D38C 07:D37C: E5 1E     SBC ram_001E
C - - - - - 0x01D38E 07:D37E: 85 26     STA ram_0026
C - - - - - 0x01D390 07:D380: B0 0D     BCS bra_D38F
C - - - - - 0x01D392 07:D382: A5 1D     LDA ram_001D
C - - - - - 0x01D394 07:D384: 38        SEC
C - - - - - 0x01D395 07:D385: E5 10     SBC ram_0010
C - - - - - 0x01D397 07:D387: 85 25     STA ram_0025
C - - - - - 0x01D399 07:D389: A5 1E     LDA ram_001E
C - - - - - 0x01D39B 07:D38B: E5 11     SBC ram_0011
C - - - - - 0x01D39D 07:D38D: 85 26     STA ram_0026
bra_D38F:
C - - - - - 0x01D39F 07:D38F: D0 72     BNE bra_D403
C - - - - - 0x01D3A1 07:D391: A5 25     LDA ram_0025
C - - - - - 0x01D3A3 07:D393: 38        SEC
C - - - - - 0x01D3A4 07:D394: E9 60     SBC #$60
C - - - - - 0x01D3A6 07:D396: B0 6B     BCS bra_D403
C - - - - - 0x01D3A8 07:D398: A5 12     LDA ram_0012
C - - - - - 0x01D3AA 07:D39A: 38        SEC
C - - - - - 0x01D3AB 07:D39B: E5 21     SBC ram_0021
C - - - - - 0x01D3AD 07:D39D: 85 27     STA ram_0027
C - - - - - 0x01D3AF 07:D39F: A5 13     LDA ram_0013
C - - - - - 0x01D3B1 07:D3A1: E5 22     SBC ram_0022
C - - - - - 0x01D3B3 07:D3A3: 85 28     STA ram_0028
C - - - - - 0x01D3B5 07:D3A5: B0 0D     BCS bra_D3B4
C - - - - - 0x01D3B7 07:D3A7: A5 21     LDA ram_0021
C - - - - - 0x01D3B9 07:D3A9: 38        SEC
C - - - - - 0x01D3BA 07:D3AA: E5 12     SBC ram_0012
C - - - - - 0x01D3BC 07:D3AC: 85 27     STA ram_0027
C - - - - - 0x01D3BE 07:D3AE: A5 22     LDA ram_0022
C - - - - - 0x01D3C0 07:D3B0: E5 13     SBC ram_0013
C - - - - - 0x01D3C2 07:D3B2: 85 28     STA ram_0028
bra_D3B4:
C - - - - - 0x01D3C4 07:D3B4: D0 4D     BNE bra_D403
C - - - - - 0x01D3C6 07:D3B6: A5 27     LDA ram_0027
C - - - - - 0x01D3C8 07:D3B8: 38        SEC
C - - - - - 0x01D3C9 07:D3B9: E9 40     SBC #$40
C - - - - - 0x01D3CB 07:D3BB: B0 46     BCS bra_D403
C - - - - - 0x01D3CD 07:D3BD: 20 79 D6  JSR sub_D679
C - - - - - 0x01D3D0 07:D3C0: A5 04     LDA ram_0004
C - - - - - 0x01D3D2 07:D3C2: 38        SEC
C - - - - - 0x01D3D3 07:D3C3: E5 25     SBC ram_0025
C - - - - - 0x01D3D5 07:D3C5: A5 05     LDA ram_0005
C - - - - - 0x01D3D7 07:D3C7: E5 26     SBC ram_0026
C - - - - - 0x01D3D9 07:D3C9: 90 38     BCC bra_D403
C - - - - - 0x01D3DB 07:D3CB: A5 21     LDA ram_0021
C - - - - - 0x01D3DD 07:D3CD: E5 1B     SBC ram_001B
C - - - - - 0x01D3DF 07:D3CF: 85 21     STA ram_0021
C - - - - - 0x01D3E1 07:D3D1: A5 22     LDA ram_0022
C - - - - - 0x01D3E3 07:D3D3: E5 1C     SBC ram_001C
C - - - - - 0x01D3E5 07:D3D5: 85 22     STA ram_0022
C - - - - - 0x01D3E7 07:D3D7: A5 19     LDA ram_0019
C - - - - - 0x01D3E9 07:D3D9: 85 09     STA ram_0009
C - - - - - 0x01D3EB 07:D3DB: A5 1D     LDA ram_001D
C - - - - - 0x01D3ED 07:D3DD: 85 0A     STA ram_000A
C - - - - - 0x01D3EF 07:D3DF: A5 1E     LDA ram_001E
C - - - - - 0x01D3F1 07:D3E1: 85 0B     STA ram_000B
C - - - - - 0x01D3F3 07:D3E3: A5 21     LDA ram_0021
C - - - - - 0x01D3F5 07:D3E5: 85 0C     STA ram_000C
C - - - - - 0x01D3F7 07:D3E7: A5 22     LDA ram_0022
C - - - - - 0x01D3F9 07:D3E9: 85 0D     STA ram_000D
C - - - - - 0x01D3FB 07:D3EB: A5 1B     LDA ram_001B
C - - - - - 0x01D3FD 07:D3ED: 85 0E     STA ram_000E
C - - - - - 0x01D3FF 07:D3EF: A5 1C     LDA ram_001C
C - - - - - 0x01D401 07:D3F1: 85 0F     STA ram_000F
C - - - - - 0x01D403 07:D3F3: A5 25     LDA ram_0025
C - - - - - 0x01D405 07:D3F5: 85 04     STA ram_0004
C - - - - - 0x01D407 07:D3F7: A5 26     LDA ram_0026
C - - - - - 0x01D409 07:D3F9: 85 05     STA ram_0005
C - - - - - 0x01D40B 07:D3FB: A5 27     LDA ram_0027
C - - - - - 0x01D40D 07:D3FD: 85 06     STA ram_0006
C - - - - - 0x01D40F 07:D3FF: A5 28     LDA ram_0028
C - - - - - 0x01D411 07:D401: 85 07     STA ram_0007
bra_D403:
loc_D403:
C D 2 - - - 0x01D413 07:D403: 68        PLA
C - - - - - 0x01D414 07:D404: 85 20     STA ram_0020
C - - - - - 0x01D416 07:D406: 68        PLA
C - - - - - 0x01D417 07:D407: 85 1F     STA ram_001F
C - - - - - 0x01D419 07:D409: A0 01     LDY #$01
C - - - - - 0x01D41B 07:D40B: B1 2B     LDA (ram_002B),Y
C - - - - - 0x01D41D 07:D40D: 10 01     BPL bra_D410
C - - - - - 0x01D41F 07:D40F: 60        RTS
bra_D410:
C - - - - - 0x01D420 07:D410: A5 2B     LDA ram_002B
C - - - - - 0x01D422 07:D412: 18        CLC
C - - - - - 0x01D423 07:D413: 69 04     ADC #< $0004
C - - - - - 0x01D425 07:D415: 85 2B     STA ram_002B
C - - - - - 0x01D427 07:D417: A5 2C     LDA ram_002C
C - - - - - 0x01D429 07:D419: 69 00     ADC #> $0004
C - - - - - 0x01D42B 07:D41B: 85 2C     STA ram_002C
C - - - - - 0x01D42D 07:D41D: 4C A7 D2  JMP loc_D2A7



sub_D420:
loc_D420:
C D 2 - - - 0x01D430 07:D420: A0 00     LDY #$00
C - - - - - 0x01D432 07:D422: B1 2D     LDA (ram_002D),Y
C - - - - - 0x01D434 07:D424: 30 1F     BMI bra_D445_RTS
C - - - - - 0x01D436 07:D426: 85 2F     STA ram_002F
C - - - - - 0x01D438 07:D428: A0 06     LDY #$06
C - - - - - 0x01D43A 07:D42A: B1 2D     LDA (ram_002D),Y
C - - - - - 0x01D43C 07:D42C: 10 02     BPL bra_D430
C - - - - - 0x01D43E 07:D42E: A9 00     LDA #$00
bra_D430:
C - - - - - 0x01D440 07:D430: 06 2F     ASL ram_002F
C - - - - - 0x01D442 07:D432: 06 2F     ASL ram_002F
C - - - - - 0x01D444 07:D434: 05 2F     ORA ram_002F
C - - - - - 0x01D446 07:D436: 0A        ASL
C - - - - - 0x01D447 07:D437: A8        TAY
C - - - - - 0x01D448 07:D438: B9 46 D4  LDA tbl_D446,Y
C - - - - - 0x01D44B 07:D43B: 85 2F     STA ram_002F
C - - - - - 0x01D44D 07:D43D: B9 47 D4  LDA tbl_D446 + $01,Y
C - - - - - 0x01D450 07:D440: 85 30     STA ram_0030
C - - - - - 0x01D452 07:D442: 6C 2F 00  JMP (ram_002F)
bra_D445_RTS:
C - - - - - 0x01D455 07:D445: 60        RTS



tbl_D446:
- D 2 - - - 0x01D456 07:D446: 66 D4     .word ofs_014_D466_00
- D 2 - - - 0x01D458 07:D448: 7F D4     .word ofs_014_D47F_01
- D 2 - - - 0x01D45A 07:D44A: AC D4     .word ofs_014_D4AC_02
- D 2 - - - 0x01D45C 07:D44C: D9 D4     .word ofs_014_D4D9_03
- D 2 - - - 0x01D45E 07:D44E: E7 D4     .word ofs_014_D4E7_04
- D 2 - - - 0x01D460 07:D450: 15 D5     .word ofs_014_D515_05
- - - - - - 0x01D462 07:D452: 38 D5     .word ofs_014_D538_06
- - - - - - 0x01D464 07:D454: 38 D5     .word ofs_014_D538_07
- D 2 - - - 0x01D466 07:D456: 38 D5     .word ofs_014_D538_08
- - - - - - 0x01D468 07:D458: 55 D5     .word ofs_014_D555_09
- D 2 - - - 0x01D46A 07:D45A: 55 D5     .word ofs_014_D555_0A
- - - - - - 0x01D46C 07:D45C: 78 D5     .word ofs_014_D578_0B
- D 2 - - - 0x01D46E 07:D45E: 78 D5     .word ofs_014_D578_0C
- - - - - - 0x01D470 07:D460: 84 D5     .word ofs_014_D584_0D
- - - - - - 0x01D472 07:D462: 84 D5     .word ofs_014_D584_0E
- D 2 - - - 0x01D474 07:D464: 84 D5     .word ofs_014_D584_0F



ofs_014_D466_00:
C - - J - - 0x01D476 07:D466: A0 01     LDY #$01
C - - - - - 0x01D478 07:D468: B1 2D     LDA (ram_002D),Y
C - - - - - 0x01D47A 07:D46A: 85 21     STA ram_0021
C - - - - - 0x01D47C 07:D46C: C8        INY
C - - - - - 0x01D47D 07:D46D: B1 2D     LDA (ram_002D),Y
C - - - - - 0x01D47F 07:D46F: 85 22     STA ram_0022
C - - - - - 0x01D481 07:D471: A0 07     LDY #$07
C - - - - - 0x01D483 07:D473: B1 2D     LDA (ram_002D),Y
C - - - - - 0x01D485 07:D475: 85 23     STA ram_0023
C - - - - - 0x01D487 07:D477: C8        INY
C - - - - - 0x01D488 07:D478: B1 2D     LDA (ram_002D),Y
C - - - - - 0x01D48A 07:D47A: 85 24     STA ram_0024
C - - - - - 0x01D48C 07:D47C: 4C 9D D5  JMP loc_D59D



ofs_014_D47F_01:
C - - J - - 0x01D48F 07:D47F: A0 01     LDY #$01
C - - - - - 0x01D491 07:D481: B1 2D     LDA (ram_002D),Y
C - - - - - 0x01D493 07:D483: 85 21     STA ram_0021
C - - - - - 0x01D495 07:D485: C8        INY
C - - - - - 0x01D496 07:D486: B1 2D     LDA (ram_002D),Y
C - - - - - 0x01D498 07:D488: 85 22     STA ram_0022
C - - - - - 0x01D49A 07:D48A: A0 07     LDY #$07
C - - - - - 0x01D49C 07:D48C: 18        CLC
C - - - - - 0x01D49D 07:D48D: B1 2D     LDA (ram_002D),Y
C - - - - - 0x01D49F 07:D48F: 65 1D     ADC ram_001D
C - - - - - 0x01D4A1 07:D491: 85 23     STA ram_0023
C - - - - - 0x01D4A3 07:D493: C8        INY
C - - - - - 0x01D4A4 07:D494: B1 2D     LDA (ram_002D),Y
C - - - - - 0x01D4A6 07:D496: 65 1E     ADC ram_001E
C - - - - - 0x01D4A8 07:D498: 85 24     STA ram_0024
C - - - - - 0x01D4AA 07:D49A: 88        DEY
C - - - - - 0x01D4AB 07:D49B: A5 21     LDA ram_0021
C - - - - - 0x01D4AD 07:D49D: 38        SEC
C - - - - - 0x01D4AE 07:D49E: F1 2D     SBC (ram_002D),Y
C - - - - - 0x01D4B0 07:D4A0: 85 1F     STA ram_001F
C - - - - - 0x01D4B2 07:D4A2: C8        INY
C - - - - - 0x01D4B3 07:D4A3: A5 22     LDA ram_0022
C - - - - - 0x01D4B5 07:D4A5: F1 2D     SBC (ram_002D),Y
C - - - - - 0x01D4B7 07:D4A7: 85 20     STA ram_0020
C - - - - - 0x01D4B9 07:D4A9: 4C 9D D5  JMP loc_D59D



ofs_014_D4AC_02:
C - - J - - 0x01D4BC 07:D4AC: A0 01     LDY #$01
C - - - - - 0x01D4BE 07:D4AE: B1 2D     LDA (ram_002D),Y
C - - - - - 0x01D4C0 07:D4B0: 85 21     STA ram_0021
C - - - - - 0x01D4C2 07:D4B2: C8        INY
C - - - - - 0x01D4C3 07:D4B3: B1 2D     LDA (ram_002D),Y
C - - - - - 0x01D4C5 07:D4B5: 85 22     STA ram_0022
C - - - - - 0x01D4C7 07:D4B7: A0 07     LDY #$07
C - - - - - 0x01D4C9 07:D4B9: B1 2D     LDA (ram_002D),Y
C - - - - - 0x01D4CB 07:D4BB: 38        SEC
C - - - - - 0x01D4CC 07:D4BC: E5 1F     SBC ram_001F
C - - - - - 0x01D4CE 07:D4BE: 85 23     STA ram_0023
C - - - - - 0x01D4D0 07:D4C0: C8        INY
C - - - - - 0x01D4D1 07:D4C1: B1 2D     LDA (ram_002D),Y
C - - - - - 0x01D4D3 07:D4C3: E5 20     SBC ram_0020
C - - - - - 0x01D4D5 07:D4C5: 85 24     STA ram_0024
C - - - - - 0x01D4D7 07:D4C7: 88        DEY
C - - - - - 0x01D4D8 07:D4C8: B1 2D     LDA (ram_002D),Y
C - - - - - 0x01D4DA 07:D4CA: 38        SEC
C - - - - - 0x01D4DB 07:D4CB: E5 21     SBC ram_0021
C - - - - - 0x01D4DD 07:D4CD: 85 1D     STA ram_001D
C - - - - - 0x01D4DF 07:D4CF: C8        INY
C - - - - - 0x01D4E0 07:D4D0: B1 2D     LDA (ram_002D),Y
C - - - - - 0x01D4E2 07:D4D2: E5 22     SBC ram_0022
C - - - - - 0x01D4E4 07:D4D4: 85 1E     STA ram_001E
C - - - - - 0x01D4E6 07:D4D6: 4C 9D D5  JMP loc_D59D



ofs_014_D4D9_03:
C - - J - - 0x01D4E9 07:D4D9: A0 07     LDY #$07
C - - - - - 0x01D4EB 07:D4DB: B1 2D     LDA (ram_002D),Y
C - - - - - 0x01D4ED 07:D4DD: 85 1D     STA ram_001D
C - - - - - 0x01D4EF 07:D4DF: C8        INY
C - - - - - 0x01D4F0 07:D4E0: B1 2D     LDA (ram_002D),Y
C - - - - - 0x01D4F2 07:D4E2: 85 1E     STA ram_001E
C - - - - - 0x01D4F4 07:D4E4: 4C 9D D5  JMP loc_D59D



ofs_014_D4E7_04:
C - - J - - 0x01D4F7 07:D4E7: A0 01     LDY #$01
C - - - - - 0x01D4F9 07:D4E9: B1 2D     LDA (ram_002D),Y
C - - - - - 0x01D4FB 07:D4EB: 18        CLC
C - - - - - 0x01D4FC 07:D4EC: 65 1F     ADC ram_001F
C - - - - - 0x01D4FE 07:D4EE: 85 21     STA ram_0021
C - - - - - 0x01D500 07:D4F0: C8        INY
C - - - - - 0x01D501 07:D4F1: B1 2D     LDA (ram_002D),Y
C - - - - - 0x01D503 07:D4F3: 65 20     ADC ram_0020
C - - - - - 0x01D505 07:D4F5: 85 22     STA ram_0022
C - - - - - 0x01D507 07:D4F7: A0 07     LDY #$07
C - - - - - 0x01D509 07:D4F9: B1 2D     LDA (ram_002D),Y
C - - - - - 0x01D50B 07:D4FB: 85 23     STA ram_0023
C - - - - - 0x01D50D 07:D4FD: C8        INY
C - - - - - 0x01D50E 07:D4FE: B1 2D     LDA (ram_002D),Y
C - - - - - 0x01D510 07:D500: 85 24     STA ram_0024
C - - - - - 0x01D512 07:D502: A0 01     LDY #$01
C - - - - - 0x01D514 07:D504: A5 23     LDA ram_0023
C - - - - - 0x01D516 07:D506: 38        SEC
C - - - - - 0x01D517 07:D507: F1 2D     SBC (ram_002D),Y
C - - - - - 0x01D519 07:D509: 85 1D     STA ram_001D
C - - - - - 0x01D51B 07:D50B: C8        INY
C - - - - - 0x01D51C 07:D50C: A5 24     LDA ram_0024
C - - - - - 0x01D51E 07:D50E: F1 2D     SBC (ram_002D),Y
C - - - - - 0x01D520 07:D510: 85 1E     STA ram_001E
C - - - - - 0x01D522 07:D512: 4C 9D D5  JMP loc_D59D



ofs_014_D515_05:
C - - J - - 0x01D525 07:D515: A0 01     LDY #$01
C - - - - - 0x01D527 07:D517: B1 2D     LDA (ram_002D),Y
C - - - - - 0x01D529 07:D519: 18        CLC
C - - - - - 0x01D52A 07:D51A: 65 1D     ADC ram_001D
C - - - - - 0x01D52C 07:D51C: 85 23     STA ram_0023
C - - - - - 0x01D52E 07:D51E: C8        INY
C - - - - - 0x01D52F 07:D51F: B1 2D     LDA (ram_002D),Y
C - - - - - 0x01D531 07:D521: 65 1E     ADC ram_001E
C - - - - - 0x01D533 07:D523: 85 24     STA ram_0024
C - - - - - 0x01D535 07:D525: A0 07     LDY #$07
C - - - - - 0x01D537 07:D527: B1 2D     LDA (ram_002D),Y
C - - - - - 0x01D539 07:D529: 18        CLC
C - - - - - 0x01D53A 07:D52A: 65 1F     ADC ram_001F
C - - - - - 0x01D53C 07:D52C: 85 21     STA ram_0021
C - - - - - 0x01D53E 07:D52E: C8        INY
C - - - - - 0x01D53F 07:D52F: B1 2D     LDA (ram_002D),Y
C - - - - - 0x01D541 07:D531: 65 20     ADC ram_0020
C - - - - - 0x01D543 07:D533: 85 22     STA ram_0022
C - - - - - 0x01D545 07:D535: 4C 9D D5  JMP loc_D59D



ofs_014_D538_06:
ofs_014_D538_07:
ofs_014_D538_08:
C - - J - - 0x01D548 07:D538: A0 01     LDY #$01
C - - - - - 0x01D54A 07:D53A: B1 2D     LDA (ram_002D),Y
C - - - - - 0x01D54C 07:D53C: 38        SEC
C - - - - - 0x01D54D 07:D53D: E5 1D     SBC ram_001D
C - - - - - 0x01D54F 07:D53F: 85 21     STA ram_0021
C - - - - - 0x01D551 07:D541: C8        INY
C - - - - - 0x01D552 07:D542: B1 2D     LDA (ram_002D),Y
C - - - - - 0x01D554 07:D544: E5 1E     SBC ram_001E
C - - - - - 0x01D556 07:D546: 85 22     STA ram_0022
C - - - - - 0x01D558 07:D548: A0 07     LDY #$07
C - - - - - 0x01D55A 07:D54A: B1 2D     LDA (ram_002D),Y
C - - - - - 0x01D55C 07:D54C: 85 23     STA ram_0023
C - - - - - 0x01D55E 07:D54E: B1 2D     LDA (ram_002D),Y
C - - - - - 0x01D560 07:D550: 85 23     STA ram_0023
C - - - - - 0x01D562 07:D552: 4C 9D D5  JMP loc_D59D



ofs_014_D555_09:
ofs_014_D555_0A:
C - - J - - 0x01D565 07:D555: A0 01     LDY #$01
C - - - - - 0x01D567 07:D557: B1 2D     LDA (ram_002D),Y
C - - - - - 0x01D569 07:D559: 38        SEC
C - - - - - 0x01D56A 07:D55A: E5 1F     SBC ram_001F
C - - - - - 0x01D56C 07:D55C: 85 23     STA ram_0023
C - - - - - 0x01D56E 07:D55E: C8        INY
C - - - - - 0x01D56F 07:D55F: B1 2D     LDA (ram_002D),Y
C - - - - - 0x01D571 07:D561: E5 20     SBC ram_0020
C - - - - - 0x01D573 07:D563: 85 24     STA ram_0024
C - - - - - 0x01D575 07:D565: A0 07     LDY #$07
C - - - - - 0x01D577 07:D567: B1 2D     LDA (ram_002D),Y
C - - - - - 0x01D579 07:D569: 38        SEC
C - - - - - 0x01D57A 07:D56A: E5 1D     SBC ram_001D
C - - - - - 0x01D57C 07:D56C: 85 21     STA ram_0021
C - - - - - 0x01D57E 07:D56E: C8        INY
C - - - - - 0x01D57F 07:D56F: B1 2D     LDA (ram_002D),Y
C - - - - - 0x01D581 07:D571: E5 1E     SBC ram_001E
C - - - - - 0x01D583 07:D573: 85 22     STA ram_0022
C - - - - - 0x01D585 07:D575: 4C 9D D5  JMP loc_D59D



ofs_014_D578_0B:
ofs_014_D578_0C:
C - - J - - 0x01D588 07:D578: A0 01     LDY #$01
C - - - - - 0x01D58A 07:D57A: B1 2D     LDA (ram_002D),Y
C - - - - - 0x01D58C 07:D57C: 85 1F     STA ram_001F
C - - - - - 0x01D58E 07:D57E: C8        INY
C - - - - - 0x01D58F 07:D57F: B1 2D     LDA (ram_002D),Y
C - - - - - 0x01D591 07:D581: 85 20     STA ram_0020
C - - - - - 0x01D593 07:D583: 60        RTS



ofs_014_D584_0D:
ofs_014_D584_0E:
ofs_014_D584_0F:
C - - J - - 0x01D594 07:D584: A0 01     LDY #$01
C - - - - - 0x01D596 07:D586: B1 2D     LDA (ram_002D),Y
C - - - - - 0x01D598 07:D588: 85 1F     STA ram_001F
C - - - - - 0x01D59A 07:D58A: C8        INY
C - - - - - 0x01D59B 07:D58B: B1 2D     LDA (ram_002D),Y
C - - - - - 0x01D59D 07:D58D: 85 20     STA ram_0020
C - - - - - 0x01D59F 07:D58F: A0 07     LDY #$07
C - - - - - 0x01D5A1 07:D591: B1 2D     LDA (ram_002D),Y
C - - - - - 0x01D5A3 07:D593: 85 1D     STA ram_001D
C - - - - - 0x01D5A5 07:D595: C8        INY
C - - - - - 0x01D5A6 07:D596: B1 2D     LDA (ram_002D),Y
C - - - - - 0x01D5A8 07:D598: 85 1E     STA ram_001E
C - - - - - 0x01D5AA 07:D59A: 4C 9D D5  JMP loc_D59D



loc_D59D:
C D 2 - - - 0x01D5AD 07:D59D: A9 0C     LDA #$0C
C - - - - - 0x01D5AF 07:D59F: 18        CLC
C - - - - - 0x01D5B0 07:D5A0: 65 2D     ADC ram_002D
C - - - - - 0x01D5B2 07:D5A2: 85 2D     STA ram_002D
C - - - - - 0x01D5B4 07:D5A4: A9 00     LDA #$00
C - - - - - 0x01D5B6 07:D5A6: 65 2E     ADC ram_002E
C - - - - - 0x01D5B8 07:D5A8: 85 2E     STA ram_002E
C - - - - - 0x01D5BA 07:D5AA: 4C 20 D4  JMP loc_D420



tbl_D5AD:
- D 2 - - - 0x01D5BD 07:D5AD: 06        .byte $06   ; 00
- D 2 - - - 0x01D5BE 07:D5AE: 09        .byte $09   ; 01
- D 2 - - - 0x01D5BF 07:D5AF: 02        .byte $02   ; 02
- D 2 - - - 0x01D5C0 07:D5B0: 03        .byte $03   ; 03
- D 2 - - - 0x01D5C1 07:D5B1: 06        .byte $06   ; 04
- D 2 - - - 0x01D5C2 07:D5B2: 10        .byte $10   ; 05
- D 2 - - - 0x01D5C3 07:D5B3: 10        .byte $10   ; 06
- - - - - - 0x01D5C4 07:D5B4: 01        .byte $01   ; 07
- D 2 - - - 0x01D5C5 07:D5B5: 02        .byte $02   ; 08
- - - - - - 0x01D5C6 07:D5B6: 01        .byte $01   ; 09
- D 2 - - - 0x01D5C7 07:D5B7: 02        .byte $02   ; 0A
- - - - - - 0x01D5C8 07:D5B8: 01        .byte $01   ; 0B
- D 2 - - - 0x01D5C9 07:D5B9: 02        .byte $02   ; 0C
- - - - - - 0x01D5CA 07:D5BA: 01        .byte $01   ; 0D
- D 2 - - - 0x01D5CB 07:D5BB: 01        .byte $01   ; 0E



tbl_D5BC:
- D 2 - - - 0x01D5CC 07:D5BC: 00        .byte $00   ; 00
- D 2 - - - 0x01D5CD 07:D5BD: 06        .byte $06   ; 01
- D 2 - - - 0x01D5CE 07:D5BE: 0E        .byte $0E   ; 02
- D 2 - - - 0x01D5CF 07:D5BF: 11        .byte $11   ; 03
- D 2 - - - 0x01D5D0 07:D5C0: 14        .byte $14   ; 04
- D 2 - - - 0x01D5D1 07:D5C1: 1A        .byte $1A   ; 05
- D 2 - - - 0x01D5D2 07:D5C2: 2A        .byte $2A   ; 06
- - - - - - 0x01D5D3 07:D5C3: 3A        .byte $3A   ; 07
- D 2 - - - 0x01D5D4 07:D5C4: 3B        .byte $3B   ; 08
- - - - - - 0x01D5D5 07:D5C5: 3D        .byte $3D   ; 09
- D 2 - - - 0x01D5D6 07:D5C6: 3E        .byte $3E   ; 0A
- - - - - - 0x01D5D7 07:D5C7: 40        .byte $40   ; 0B
- D 2 - - - 0x01D5D8 07:D5C8: 41        .byte $41   ; 0C
- - - - - - 0x01D5D9 07:D5C9: 43        .byte $43   ; 0D
- D 2 - - - 0x01D5DA 07:D5CA: 44        .byte $44   ; 0E



tbl_D5CB:
; 00
- D 2 - - - 0x01D5DB 07:D5CB: 00        .byte $00   ; 
- D 2 - - - 0x01D5DC 07:D5CC: 00        .byte $00   ; 
- D 2 - - - 0x01D5DD 07:D5CD: 00        .byte $00   ; 
- D 2 - - - 0x01D5DE 07:D5CE: 00        .byte $00   ; 
- D 2 - - - 0x01D5DF 07:D5CF: 00        .byte $00   ; 
- D 2 - - - 0x01D5E0 07:D5D0: 00        .byte $00   ; 
; 06
- D 2 - - - 0x01D5E1 07:D5D1: 00        .byte $00   ; 
- D 2 - - - 0x01D5E2 07:D5D2: 00        .byte $00   ; 
- D 2 - - - 0x01D5E3 07:D5D3: 00        .byte $00   ; 
- D 2 - - - 0x01D5E4 07:D5D4: 00        .byte $00   ; 
- D 2 - - - 0x01D5E5 07:D5D5: 00        .byte $00   ; 
- D 2 - - - 0x01D5E6 07:D5D6: 00        .byte $00   ; 
- D 2 - - - 0x01D5E7 07:D5D7: 00        .byte $00   ; 
- D 2 - - - 0x01D5E8 07:D5D8: 00        .byte $00   ; 
; 0E
- D 2 - - - 0x01D5E9 07:D5D9: 00        .byte $00   ; 
- D 2 - - - 0x01D5EA 07:D5DA: 00        .byte $00   ; 
- - - - - - 0x01D5EB 07:D5DB: 00        .byte $00   ; 
; 11
- D 2 - - - 0x01D5EC 07:D5DC: 00        .byte $00   ; 
- D 2 - - - 0x01D5ED 07:D5DD: 00        .byte $00   ; 
- D 2 - - - 0x01D5EE 07:D5DE: 00        .byte $00   ; 
; 14
- D 2 - - - 0x01D5EF 07:D5DF: 00        .byte $00   ; 
- D 2 - - - 0x01D5F0 07:D5E0: 00        .byte $00   ; 
- D 2 - - - 0x01D5F1 07:D5E1: 00        .byte $00   ; 
- D 2 - - - 0x01D5F2 07:D5E2: 00        .byte $00   ; 
- D 2 - - - 0x01D5F3 07:D5E3: 00        .byte $00   ; 
- D 2 - - - 0x01D5F4 07:D5E4: 00        .byte $00   ; 
; 1A
- D 2 - - - 0x01D5F5 07:D5E5: 00        .byte $00   ; 
- D 2 - - - 0x01D5F6 07:D5E6: 00        .byte $00   ; 
- D 2 - - - 0x01D5F7 07:D5E7: 00        .byte $00   ; 
- D 2 - - - 0x01D5F8 07:D5E8: 00        .byte $00   ; 
- D 2 - - - 0x01D5F9 07:D5E9: 00        .byte $00   ; 
- D 2 - - - 0x01D5FA 07:D5EA: 00        .byte $00   ; 
- D 2 - - - 0x01D5FB 07:D5EB: 00        .byte $00   ; 
- D 2 - - - 0x01D5FC 07:D5EC: 00        .byte $00   ; 
- D 2 - - - 0x01D5FD 07:D5ED: 00        .byte $00   ; 
- D 2 - - - 0x01D5FE 07:D5EE: 00        .byte $00   ; 
- D 2 - - - 0x01D5FF 07:D5EF: 00        .byte $00   ; 
- D 2 - - - 0x01D600 07:D5F0: 00        .byte $00   ; 
- D 2 - - - 0x01D601 07:D5F1: 00        .byte $00   ; 
- D 2 - - - 0x01D602 07:D5F2: 00        .byte $00   ; 
- D 2 - - - 0x01D603 07:D5F3: 00        .byte $00   ; 
- D 2 - - - 0x01D604 07:D5F4: 00        .byte $00   ; 
; 2A
- D 2 - - - 0x01D605 07:D5F5: 00        .byte $00   ; 
- D 2 - - - 0x01D606 07:D5F6: 00        .byte $00   ; 
- D 2 - - - 0x01D607 07:D5F7: 00        .byte $00   ; 
- D 2 - - - 0x01D608 07:D5F8: 00        .byte $00   ; 
- D 2 - - - 0x01D609 07:D5F9: FF        .byte $FF   ; 
- D 2 - - - 0x01D60A 07:D5FA: FF        .byte $FF   ; 
- D 2 - - - 0x01D60B 07:D5FB: FF        .byte $FF   ; 
- D 2 - - - 0x01D60C 07:D5FC: FF        .byte $FF   ; 
- D 2 - - - 0x01D60D 07:D5FD: 00        .byte $00   ; 
- D 2 - - - 0x01D60E 07:D5FE: 00        .byte $00   ; 
- D 2 - - - 0x01D60F 07:D5FF: FF        .byte $FF   ; 
- D 2 - - - 0x01D610 07:D600: FF        .byte $FF   ; 
- D 2 - - - 0x01D611 07:D601: FF        .byte $FF   ; 
- D 2 - - - 0x01D612 07:D602: FF        .byte $FF   ; 
- D 2 - - - 0x01D613 07:D603: 00        .byte $00   ; 
- D 2 - - - 0x01D614 07:D604: 00        .byte $00   ; 
; 3A
- - - - - - 0x01D615 07:D605: 00        .byte $00   ; 
; 3B
- D 2 - - - 0x01D616 07:D606: 01        .byte $01   ; 
- D 2 - - - 0x01D617 07:D607: 00        .byte $00   ; 
; 3D
- - - - - - 0x01D618 07:D608: 00        .byte $00   ; 
; 3E
- D 2 - - - 0x01D619 07:D609: 01        .byte $01   ; 
- D 2 - - - 0x01D61A 07:D60A: 00        .byte $00   ; 
; 40
- - - - - - 0x01D61B 07:D60B: 00        .byte $00   ; 
; 41
- D 2 - - - 0x01D61C 07:D60C: 00        .byte $00   ; 
- D 2 - - - 0x01D61D 07:D60D: 00        .byte $00   ; 
; 43
- - - - - - 0x01D61E 07:D60E: 00        .byte $00   ; 
; 44
- D 2 - - - 0x01D61F 07:D60F: 00        .byte $00   ; 


; bzk garbage starts somewhere here
- - - - - - 0x01D620 07:D610: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01D630 07:D620: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01D640 07:D630: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 



sub_D640_EOR_16_bit:
- - - - - - 0x01D650 07:D640: A5 29     LDA ram_0029
- - - - - - 0x01D652 07:D642: 49 FF     EOR #$FF
- - - - - - 0x01D654 07:D644: 18        CLC
- - - - - - 0x01D655 07:D645: 69 01     ADC #< $0001
- - - - - - 0x01D657 07:D647: 85 29     STA ram_0029
- - - - - - 0x01D659 07:D649: A5 2A     LDA ram_002A
- - - - - - 0x01D65B 07:D64B: 49 FF     EOR #$FF
- - - - - - 0x01D65D 07:D64D: 69 00     ADC #> $0001
- - - - - - 0x01D65F 07:D64F: 85 2A     STA ram_002A
- - - - - - 0x01D661 07:D651: 60        RTS



loc_D652:
; bzk garbage
- - - - - - 0x01D662 07:D652: A5 19     LDA ram_0019
- - - - - - 0x01D664 07:D654: 48        PHA
- - - - - - 0x01D665 07:D655: A5 1A     LDA ram_001A
- - - - - - 0x01D667 07:D657: 48        PHA
- - - - - - 0x01D668 07:D658: 84 1A     STY ram_001A
- - - - - - 0x01D66A 07:D65A: 86 19     STX ram_0019
- - - - - - 0x01D66C 07:D65C: A2 08     LDX #$08
- - - - - - 0x01D66E 07:D65E: A9 00     LDA #$00
- - - - - - 0x01D670 07:D660: 06 19     ASL ram_0019
bra_D662_loop:
- - - - - - 0x01D672 07:D662: 2A        ROL
- - - - - - 0x01D673 07:D663: C5 1A     CMP ram_001A
- - - - - - 0x01D675 07:D665: 90 02     BCC bra_D669
- - - - - - 0x01D677 07:D667: E5 1A     SBC ram_001A
bra_D669:
- - - - - - 0x01D679 07:D669: 26 19     ROL ram_0019
- - - - - - 0x01D67B 07:D66B: CA        DEX
- - - - - - 0x01D67C 07:D66C: D0 F4     BNE bra_D662_loop
- - - - - - 0x01D67E 07:D66E: AA        TAX
- - - - - - 0x01D67F 07:D66F: A4 19     LDY ram_0019
- - - - - - 0x01D681 07:D671: 68        PLA
- - - - - - 0x01D682 07:D672: 85 1A     STA ram_001A
- - - - - - 0x01D684 07:D674: 68        PLA
- - - - - - 0x01D685 07:D675: 85 19     STA ram_0019
- - - - - - 0x01D687 07:D677: 98        TYA
- - - - - - 0x01D688 07:D678: 60        RTS



sub_D679:
C - - - - - 0x01D689 07:D679: A5 25     LDA ram_0025
C - - - - - 0x01D68B 07:D67B: 20 99 D6  JSR sub_D699
C - - - - - 0x01D68E 07:D67E: A5 2D     LDA ram_002D
C - - - - - 0x01D690 07:D680: 85 2F     STA ram_002F
C - - - - - 0x01D692 07:D682: A5 2E     LDA ram_002E
C - - - - - 0x01D694 07:D684: 85 30     STA ram_0030
C - - - - - 0x01D696 07:D686: A5 27     LDA ram_0027
C - - - - - 0x01D698 07:D688: 20 99 D6  JSR sub_D699
C - - - - - 0x01D69B 07:D68B: A5 2D     LDA ram_002D
C - - - - - 0x01D69D 07:D68D: 18        CLC
C - - - - - 0x01D69E 07:D68E: 65 2F     ADC ram_002F
C - - - - - 0x01D6A0 07:D690: 85 25     STA ram_0025
C - - - - - 0x01D6A2 07:D692: A5 2E     LDA ram_002E
C - - - - - 0x01D6A4 07:D694: 65 30     ADC ram_0030
C - - - - - 0x01D6A6 07:D696: 85 26     STA ram_0026
C - - - - - 0x01D6A8 07:D698: 60        RTS



sub_D699:
C - - - - - 0x01D6A9 07:D699: AA        TAX
C - - - - - 0x01D6AA 07:D69A: A5 2F     LDA ram_002F
C - - - - - 0x01D6AC 07:D69C: 48        PHA
C - - - - - 0x01D6AD 07:D69D: A5 30     LDA ram_0030
C - - - - - 0x01D6AF 07:D69F: 48        PHA
C - - - - - 0x01D6B0 07:D6A0: 86 2F     STX ram_002F
C - - - - - 0x01D6B2 07:D6A2: A9 00     LDA #$00
C - - - - - 0x01D6B4 07:D6A4: 85 2D     STA ram_002D
C - - - - - 0x01D6B6 07:D6A6: 85 2E     STA ram_002E
C - - - - - 0x01D6B8 07:D6A8: 85 30     STA ram_0030
loc_D6AA_loop:
C D 2 - - - 0x01D6BA 07:D6AA: A5 2F     LDA ram_002F
C - - - - - 0x01D6BC 07:D6AC: 05 30     ORA ram_0030
C - - - - - 0x01D6BE 07:D6AE: F0 19     BEQ bra_D6C9
C - - - - - 0x01D6C0 07:D6B0: 8A        TXA
C - - - - - 0x01D6C1 07:D6B1: 4A        LSR
C - - - - - 0x01D6C2 07:D6B2: AA        TAX
C - - - - - 0x01D6C3 07:D6B3: 90 0D     BCC bra_D6C2
C - - - - - 0x01D6C5 07:D6B5: A5 2F     LDA ram_002F
C - - - - - 0x01D6C7 07:D6B7: 18        CLC
C - - - - - 0x01D6C8 07:D6B8: 65 2D     ADC ram_002D
C - - - - - 0x01D6CA 07:D6BA: 85 2D     STA ram_002D
C - - - - - 0x01D6CC 07:D6BC: A5 30     LDA ram_0030
C - - - - - 0x01D6CE 07:D6BE: 65 2E     ADC ram_002E
C - - - - - 0x01D6D0 07:D6C0: 85 2E     STA ram_002E
bra_D6C2:
C - - - - - 0x01D6D2 07:D6C2: 06 2F     ASL ram_002F
C - - - - - 0x01D6D4 07:D6C4: 26 30     ROL ram_0030
C - - - - - 0x01D6D6 07:D6C6: 4C AA D6  JMP loc_D6AA_loop
bra_D6C9:
C - - - - - 0x01D6D9 07:D6C9: 68        PLA
C - - - - - 0x01D6DA 07:D6CA: 85 30     STA ram_0030
C - - - - - 0x01D6DC 07:D6CC: 68        PLA
C - - - - - 0x01D6DD 07:D6CD: 85 2F     STA ram_002F
C - - - - - 0x01D6DF 07:D6CF: 60        RTS



sub_D6D0:
C - - - - - 0x01D6E0 07:D6D0: AD 3F 06  LDA ram_063F
C - - - - - 0x01D6E3 07:D6D3: 30 6B     BMI bra_D740_RTS
C - - - - - 0x01D6E5 07:D6D5: A9 38     LDA #con_E2E6 + $38
C - - - - - 0x01D6E7 07:D6D7: 20 E6 E2  JSR sub_E2E6
C - - - - - 0x01D6EA 07:D6DA: B0 64     BCS bra_D740_RTS
C - - - - - 0x01D6EC 07:D6DC: AD 3F 06  LDA ram_063F
C - - - - - 0x01D6EF 07:D6DF: 29 01     AND #$01
C - - - - - 0x01D6F1 07:D6E1: D0 31     BNE bra_D714
C - - - - - 0x01D6F3 07:D6E3: AD 40 06  LDA ram_0640
C - - - - - 0x01D6F6 07:D6E6: 10 05     BPL bra_D6ED
C - - - - - 0x01D6F8 07:D6E8: A9 00     LDA #$00
C - - - - - 0x01D6FA 07:D6EA: 8D 40 06  STA ram_0640
bra_D6ED:
C - - - - - 0x01D6FD 07:D6ED: AD 40 06  LDA ram_0640
C - - - - - 0x01D700 07:D6F0: 29 0F     AND #$0F
C - - - - - 0x01D702 07:D6F2: D0 03     BNE bra_D6F7
C - - - - - 0x01D704 07:D6F4: 20 41 D7  JSR sub_D741_palette
bra_D6F7:
C - - - - - 0x01D707 07:D6F7: AD 40 06  LDA ram_0640
C - - - - - 0x01D70A 07:D6FA: 18        CLC
C - - - - - 0x01D70B 07:D6FB: 69 08     ADC #$08
C - - - - - 0x01D70D 07:D6FD: 8D 40 06  STA ram_0640
C - - - - - 0x01D710 07:D700: C9 4F     CMP #$4F
C - - - - - 0x01D712 07:D702: 90 3C     BCC bra_D740_RTS
C - - - - - 0x01D714 07:D704: A9 FF     LDA #$FF
C - - - - - 0x01D716 07:D706: 8D 40 06  STA ram_0640
C - - - - - 0x01D719 07:D709: AD 3F 06  LDA ram_063F
C - - - - - 0x01D71C 07:D70C: 09 80     ORA #$80
C - - - - - 0x01D71E 07:D70E: 8D 3F 06  STA ram_063F
C - - - - - 0x01D721 07:D711: 4C 40 D7  JMP loc_D740_RTS
bra_D714:
C - - - - - 0x01D724 07:D714: AD 40 06  LDA ram_0640
C - - - - - 0x01D727 07:D717: 10 05     BPL bra_D71E
C - - - - - 0x01D729 07:D719: A9 30     LDA #$30
C - - - - - 0x01D72B 07:D71B: 8D 40 06  STA ram_0640
bra_D71E:
C - - - - - 0x01D72E 07:D71E: AD 40 06  LDA ram_0640
C - - - - - 0x01D731 07:D721: 29 0F     AND #$0F
C - - - - - 0x01D733 07:D723: D0 03     BNE bra_D728
C - - - - - 0x01D735 07:D725: 20 41 D7  JSR sub_D741_palette
bra_D728:
C - - - - - 0x01D738 07:D728: AD 40 06  LDA ram_0640
C - - - - - 0x01D73B 07:D72B: 38        SEC
C - - - - - 0x01D73C 07:D72C: E9 08     SBC #$08
C - - - - - 0x01D73E 07:D72E: 8D 40 06  STA ram_0640
C - - - - - 0x01D741 07:D731: B0 0D     BCS bra_D740_RTS
C - - - - - 0x01D743 07:D733: A9 FF     LDA #$FF
C - - - - - 0x01D745 07:D735: 8D 40 06  STA ram_0640
C - - - - - 0x01D748 07:D738: AD 3F 06  LDA ram_063F
C - - - - - 0x01D74B 07:D73B: 09 80     ORA #$80
C - - - - - 0x01D74D 07:D73D: 8D 3F 06  STA ram_063F
bra_D740_RTS:
loc_D740_RTS:
C D 2 - - - 0x01D750 07:D740: 60        RTS



sub_D741_palette:
C - - - - - 0x01D751 07:D741: AD 8F 04  LDA ram_pal_bg_new
C - - - - - 0x01D754 07:D744: 8D 91 04  STA ram_pal_bg_current
C - - - - - 0x01D757 07:D747: 0A        ASL
C - - - - - 0x01D758 07:D748: AA        TAX
C - - - - - 0x01D759 07:D749: BD FA E2  LDA tbl_E2FA_palette_bg,X
C - - - - - 0x01D75C 07:D74C: 85 29     STA ram_0029
C - - - - - 0x01D75E 07:D74E: BD FB E2  LDA tbl_E2FA_palette_bg + $01,X
C - - - - - 0x01D761 07:D751: 85 2A     STA ram_002A
C - - - - - 0x01D763 07:D753: AE BC 05  LDX ram_05BC
C - - - - - 0x01D766 07:D756: A9 3F     LDA #> $3F00
C - - - - - 0x01D768 07:D758: 9D B1 04  STA ram_ppu_buffer,X
C - - - - - 0x01D76B 07:D75B: E8        INX
C - - - - - 0x01D76C 07:D75C: A9 00     LDA #< $3F00
C - - - - - 0x01D76E 07:D75E: 9D B1 04  STA ram_ppu_buffer,X
C - - - - - 0x01D771 07:D761: E8        INX
C - - - - - 0x01D772 07:D762: A9 00     LDA #$00
C - - - - - 0x01D774 07:D764: 9D B1 04  STA ram_ppu_buffer,X
C - - - - - 0x01D777 07:D767: E8        INX
C - - - - - 0x01D778 07:D768: A9 10     LDA #$10
C - - - - - 0x01D77A 07:D76A: 9D B1 04  STA ram_ppu_buffer,X
C - - - - - 0x01D77D 07:D76D: E8        INX
C - - - - - 0x01D77E 07:D76E: A0 00     LDY #$00
bra_D770_loop:
C - - - - - 0x01D780 07:D770: AD 40 06  LDA ram_0640
C - - - - - 0x01D783 07:D773: D0 05     BNE bra_D77A
C - - - - - 0x01D785 07:D775: A9 0F     LDA #$0F
C - - - - - 0x01D787 07:D777: 4C 8C D7  JMP loc_D78C
bra_D77A:
C - - - - - 0x01D78A 07:D77A: B1 29     LDA (ram_0029),Y
C - - - - - 0x01D78C 07:D77C: CD 40 06  CMP ram_0640
C - - - - - 0x01D78F 07:D77F: 90 0B     BCC bra_D78C
C - - - - - 0x01D791 07:D781: 29 0F     AND #$0F
C - - - - - 0x01D793 07:D783: 85 19     STA ram_0019
C - - - - - 0x01D795 07:D785: AD 40 06  LDA ram_0640
C - - - - - 0x01D798 07:D788: E9 10     SBC #$10
C - - - - - 0x01D79A 07:D78A: 05 19     ORA ram_0019
bra_D78C:
loc_D78C:
C D 2 - - - 0x01D79C 07:D78C: 9D B1 04  STA ram_ppu_buffer,X
C - - - - - 0x01D79F 07:D78F: E8        INX
C - - - - - 0x01D7A0 07:D790: C8        INY
C - - - - - 0x01D7A1 07:D791: C0 10     CPY #$10
C - - - - - 0x01D7A3 07:D793: 90 DB     BCC bra_D770_loop
C - - - - - 0x01D7A5 07:D795: 8E BC 05  STX ram_05BC
C - - - - - 0x01D7A8 07:D798: AD 3F 06  LDA ram_063F
C - - - - - 0x01D7AB 07:D79B: 29 02     AND #$02
C - - - - - 0x01D7AD 07:D79D: D0 57     BNE bra_D7F6_RTS
C - - - - - 0x01D7AF 07:D79F: AD 90 04  LDA ram_pal_spr_new
C - - - - - 0x01D7B2 07:D7A2: 8D 92 04  STA ram_pal_spr_current
C - - - - - 0x01D7B5 07:D7A5: 0A        ASL
C - - - - - 0x01D7B6 07:D7A6: AA        TAX
C - - - - - 0x01D7B7 07:D7A7: BD 60 E3  LDA tbl_E360_palette_spr,X
C - - - - - 0x01D7BA 07:D7AA: 85 29     STA ram_0029
C - - - - - 0x01D7BC 07:D7AC: BD 61 E3  LDA tbl_E360_palette_spr + $01,X
C - - - - - 0x01D7BF 07:D7AF: 85 2A     STA ram_002A
C - - - - - 0x01D7C1 07:D7B1: AE BC 05  LDX ram_05BC
C - - - - - 0x01D7C4 07:D7B4: A9 3F     LDA #> $3F10
C - - - - - 0x01D7C6 07:D7B6: 9D B1 04  STA ram_ppu_buffer,X
C - - - - - 0x01D7C9 07:D7B9: E8        INX
C - - - - - 0x01D7CA 07:D7BA: A9 10     LDA #< $3F10
C - - - - - 0x01D7CC 07:D7BC: 9D B1 04  STA ram_ppu_buffer,X
C - - - - - 0x01D7CF 07:D7BF: E8        INX
C - - - - - 0x01D7D0 07:D7C0: A9 00     LDA #$00
C - - - - - 0x01D7D2 07:D7C2: 9D B1 04  STA ram_ppu_buffer,X
C - - - - - 0x01D7D5 07:D7C5: E8        INX
C - - - - - 0x01D7D6 07:D7C6: A9 10     LDA #$10
C - - - - - 0x01D7D8 07:D7C8: 9D B1 04  STA ram_ppu_buffer,X
C - - - - - 0x01D7DB 07:D7CB: E8        INX
C - - - - - 0x01D7DC 07:D7CC: A0 00     LDY #$00
bra_D7CE_loop:
C - - - - - 0x01D7DE 07:D7CE: AD 40 06  LDA ram_0640
C - - - - - 0x01D7E1 07:D7D1: D0 05     BNE bra_D7D8
C - - - - - 0x01D7E3 07:D7D3: A9 0F     LDA #$0F
C - - - - - 0x01D7E5 07:D7D5: 4C EA D7  JMP loc_D7EA
bra_D7D8:
C - - - - - 0x01D7E8 07:D7D8: B1 29     LDA (ram_0029),Y
C - - - - - 0x01D7EA 07:D7DA: CD 40 06  CMP ram_0640
C - - - - - 0x01D7ED 07:D7DD: 90 0B     BCC bra_D7EA
C - - - - - 0x01D7EF 07:D7DF: 29 0F     AND #$0F
C - - - - - 0x01D7F1 07:D7E1: 85 19     STA ram_0019
C - - - - - 0x01D7F3 07:D7E3: AD 40 06  LDA ram_0640
C - - - - - 0x01D7F6 07:D7E6: E9 10     SBC #$10
C - - - - - 0x01D7F8 07:D7E8: 05 19     ORA ram_0019
bra_D7EA:
loc_D7EA:
C D 2 - - - 0x01D7FA 07:D7EA: 9D B1 04  STA ram_ppu_buffer,X
C - - - - - 0x01D7FD 07:D7ED: E8        INX
C - - - - - 0x01D7FE 07:D7EE: C8        INY
C - - - - - 0x01D7FF 07:D7EF: C0 10     CPY #$10
C - - - - - 0x01D801 07:D7F1: 90 DB     BCC bra_D7CE_loop
C - - - - - 0x01D803 07:D7F3: 8E BC 05  STX ram_05BC
bra_D7F6_RTS:
C - - - - - 0x01D806 07:D7F6: 60        RTS


; bzk garbage
- - - - - - 0x01D807 07:D7F7: A2 00     LDX #$00



sub_D7F9:
C - - - - - 0x01D809 07:D7F9: A9 00     LDA #$00
bra_D7FB_loop:
C - - - - - 0x01D80B 07:D7FB: 95 00     STA ram_0000,X
C - - - - - 0x01D80D 07:D7FD: E8        INX
C - - - - - 0x01D80E 07:D7FE: E0 DD     CPX #$DD
C - - - - - 0x01D810 07:D800: 90 F9     BCC bra_D7FB_loop
C - - - - - 0x01D812 07:D802: 60        RTS


; bzk garbage
- - - - - - 0x01D813 07:D803: A9 00     LDA #$00
- - - - - - 0x01D815 07:D805: 85 29     STA ram_0029
- - - - - - 0x01D817 07:D807: A9 03     LDA #$03
- - - - - - 0x01D819 07:D809: 85 2A     STA ram_002A
- - - - - - 0x01D81B 07:D80B: A2 00     LDX #$00
bra_D80D_loop:
- - - - - - 0x01D81D 07:D80D: A9 00     LDA #$00
- - - - - - 0x01D81F 07:D80F: 81 29     STA (ram_0029,X)
- - - - - - 0x01D821 07:D811: E6 29     INC ram_0029
- - - - - - 0x01D823 07:D813: D0 02     BNE bra_D817
- - - - - - 0x01D825 07:D815: E6 2A     INC ram_002A
bra_D817:
- - - - - - 0x01D827 07:D817: A5 2A     LDA ram_002A
- - - - - - 0x01D829 07:D819: CD 27 D8  CMP tbl_D826 + $01
- - - - - - 0x01D82C 07:D81C: D0 EF     BNE bra_D80D_loop
- - - - - - 0x01D82E 07:D81E: A5 29     LDA ram_0029
- - - - - - 0x01D830 07:D820: CD 26 D8  CMP tbl_D826
- - - - - - 0x01D833 07:D823: D0 E8     BNE bra_D80D_loop
- - - - - - 0x01D835 07:D825: 60        RTS



tbl_D826:
; bzk garbage
- - - - - - 0x01D836 07:D826: 86 04     .word ram_score_player



sub_0x01D838_hide_unused_sprites:
C - - - - - 0x01D838 07:D828: AE A7 04  LDX ram_04A7
C - - - - - 0x01D83B 07:D82B: F0 10     BEQ bra_D83D_RTS
C - - - - - 0x01D83D 07:D82D: A9 F0     LDA #$F0
loc_D82F_loop:
C D 2 - - - 0x01D83F 07:D82F: E0 04     CPX #$04
C - - - - - 0x01D841 07:D831: F0 0A     BEQ bra_D83D_RTS
C - - - - - 0x01D843 07:D833: 9D 00 02  STA ram_oam,X
C - - - - - 0x01D846 07:D836: CA        DEX
C - - - - - 0x01D847 07:D837: CA        DEX
C - - - - - 0x01D848 07:D838: CA        DEX
C - - - - - 0x01D849 07:D839: CA        DEX
C - - - - - 0x01D84A 07:D83A: 4C 2F D8  JMP loc_D82F_loop
bra_D83D_RTS:
C - - - - - 0x01D84D 07:D83D: 60        RTS



sub_D83E_hide_all_sprites:
; bzk optimize
;     LDX #$00
;     LDA #$F0
; bra_D842_loop:
;     STA ram_oam,X
;     INX
;     INX
;     INX
;     INX
;     BNE bra_D842_loop
;     RTS
C - - - - - 0x01D84E 07:D83E: A2 FC     LDX #$FC
C - - - - - 0x01D850 07:D840: A9 F0     LDA #$F0
loc_D842_loop:
C D 2 - - - 0x01D852 07:D842: 9D 00 02  STA ram_oam,X
C - - - - - 0x01D855 07:D845: E0 00     CPX #$00
C - - - - - 0x01D857 07:D847: F0 07     BEQ bra_D850_RTS
C - - - - - 0x01D859 07:D849: CA        DEX
C - - - - - 0x01D85A 07:D84A: CA        DEX
C - - - - - 0x01D85B 07:D84B: CA        DEX
C - - - - - 0x01D85C 07:D84C: CA        DEX
C - - - - - 0x01D85D 07:D84D: 4C 42 D8  JMP loc_D842_loop
bra_D850_RTS:
C - - - - - 0x01D860 07:D850: 60        RTS



sub_D851_clear_3_nametables:
C - - - - - 0x01D861 07:D851: A9 20     LDA #$20
C - - - - - 0x01D863 07:D853: A0 00     LDY #$00
C - - - - - 0x01D865 07:D855: A2 00     LDX #$00
C - - - - - 0x01D867 07:D857: 20 00 FD  JSR sub_FD00_clear_nametable
C - - - - - 0x01D86A 07:D85A: A9 24     LDA #$24
C - - - - - 0x01D86C 07:D85C: 20 00 FD  JSR sub_FD00_clear_nametable
C - - - - - 0x01D86F 07:D85F: A9 28     LDA #$28
C - - - - - 0x01D871 07:D861: 20 00 FD  JSR sub_FD00_clear_nametable
C - - - - - 0x01D874 07:D864: 60        RTS


; bzk garbage
- - - - - - 0x01D875 07:D865: A5 E8     LDA ram_for_2001
- - - - - - 0x01D877 07:D867: 09 02     ORA #$02
- - - - - - 0x01D879 07:D869: D0 04     BNE bra_D86F    ; jmp



sub_D86B:
C - - - - - 0x01D87B 07:D86B: A5 E8     LDA ram_for_2001
C - - - - - 0x01D87D 07:D86D: 29 F9     AND #$F9
bra_D86F:
C - - - - - 0x01D87F 07:D86F: 85 E8     STA ram_for_2001
C - - - - - 0x01D881 07:D871: 8D 01 20  STA $2001
C - - - - - 0x01D884 07:D874: 60        RTS



sub_D875_clear_graphics:
sub_0x01D885_clear_graphics:
C - - - - - 0x01D885 07:D875: 20 C3 FC  JSR sub_FCC3_clear_bg_and_spr_pattern
C - - - - - 0x01D888 07:D878: 20 51 D8  JSR sub_D851_clear_3_nametables
C - - - - - 0x01D88B 07:D87B: 20 3E D8  JSR sub_D83E_hide_all_sprites
C - - - - - 0x01D88E 07:D87E: 20 42 FE  JSR sub_FE42_update_oam
C - - - - - 0x01D891 07:D881: 60        RTS


; bzk garbage
- - - - - - 0x01D892 07:D882: A9 00     LDA #$00
- - - - - - 0x01D894 07:D884: 85 1C     STA ram_001C
- - - - - - 0x01D896 07:D886: A2 00     LDX #$00
- - - - - - 0x01D898 07:D888: BD 3C 00  LDA a: ram_003C_obj,X
- - - - - - 0x01D89B 07:D88B: 30 01     BMI bra_D88E    ; if con_003C_80
- - - - - - 0x01D89D 07:D88D: E8        INX ; 01
bra_D88E:
- - - - - - 0x01D89E 07:D88E: B5 77     LDA ram_pos_X_lo,X
- - - - - - 0x01D8A0 07:D890: 85 29     STA ram_0029
- - - - - - 0x01D8A2 07:D892: B5 80     LDA ram_pos_X_hi,X
- - - - - - 0x01D8A4 07:D894: 85 2A     STA ram_002A
- - - - - - 0x01D8A6 07:D896: E0 00     CPX #$00
- - - - - - 0x01D8A8 07:D898: D0 46     BNE bra_D8E0
- - - - - - 0x01D8AA 07:D89A: E8        INX ; 01
- - - - - - 0x01D8AB 07:D89B: BD 3C 00  LDA a: ram_003C_obj,X
- - - - - - 0x01D8AE 07:D89E: 10 40     BPL bra_D8E0    ; if not con_003C_80
- - - - - - 0x01D8B0 07:D8A0: A5 29     LDA ram_0029
- - - - - - 0x01D8B2 07:D8A2: 38        SEC
- - - - - - 0x01D8B3 07:D8A3: F5 77     SBC ram_pos_X_lo,X
- - - - - - 0x01D8B5 07:D8A5: 85 29     STA ram_0029
- - - - - - 0x01D8B7 07:D8A7: A5 2A     LDA ram_002A
- - - - - - 0x01D8B9 07:D8A9: F5 80     SBC ram_pos_X_hi,X
- - - - - - 0x01D8BB 07:D8AB: 85 2A     STA ram_002A
- - - - - - 0x01D8BD 07:D8AD: 10 03     BPL bra_D8B2
- - - - - - 0x01D8BF 07:D8AF: 20 40 D6  JSR sub_D640_EOR_16_bit
bra_D8B2:
- - - - - - 0x01D8C2 07:D8B2: 46 2A     LSR ram_002A
- - - - - - 0x01D8C4 07:D8B4: 66 29     ROR ram_0029
- - - - - - 0x01D8C6 07:D8B6: A2 00     LDX #$00
- - - - - - 0x01D8C8 07:D8B8: A5 77     LDA ram_pos_X_lo
- - - - - - 0x01D8CA 07:D8BA: 38        SEC
- - - - - - 0x01D8CB 07:D8BB: E5 78     SBC ram_pos_X_lo + $01
- - - - - - 0x01D8CD 07:D8BD: A5 80     LDA ram_pos_X_hi
- - - - - - 0x01D8CF 07:D8BF: E5 81     SBC ram_pos_X_hi + $01
- - - - - - 0x01D8D1 07:D8C1: 30 01     BMI bra_D8C4
- - - - - - 0x01D8D3 07:D8C3: E8        INX ; 01
bra_D8C4:
- - - - - - 0x01D8D4 07:D8C4: B5 77     LDA ram_pos_X_lo,X
- - - - - - 0x01D8D6 07:D8C6: 18        CLC
- - - - - - 0x01D8D7 07:D8C7: 65 29     ADC ram_0029
- - - - - - 0x01D8D9 07:D8C9: 85 29     STA ram_0029
- - - - - - 0x01D8DB 07:D8CB: B5 80     LDA ram_pos_X_hi,X
- - - - - - 0x01D8DD 07:D8CD: 65 2A     ADC ram_002A
- - - - - - 0x01D8DF 07:D8CF: 85 2A     STA ram_002A
- - - - - - 0x01D8E1 07:D8D1: A5 29     LDA ram_0029
- - - - - - 0x01D8E3 07:D8D3: 38        SEC
- - - - - - 0x01D8E4 07:D8D4: E9 80     SBC #< $0080
- - - - - - 0x01D8E6 07:D8D6: 85 29     STA ram_0029
- - - - - - 0x01D8E8 07:D8D8: A5 2A     LDA ram_002A
- - - - - - 0x01D8EA 07:D8DA: E9 00     SBC #> $0080
- - - - - - 0x01D8EC 07:D8DC: 85 2A     STA ram_002A
- - - - - - 0x01D8EE 07:D8DE: C6 1C     DEC ram_001C
bra_D8E0:
- - - - - - 0x01D8F0 07:D8E0: A5 29     LDA ram_0029
- - - - - - 0x01D8F2 07:D8E2: 38        SEC
- - - - - - 0x01D8F3 07:D8E3: E5 D0     SBC ram_pos_X_lo_cam
- - - - - - 0x01D8F5 07:D8E5: 85 19     STA ram_0019
- - - - - - 0x01D8F7 07:D8E7: A5 2A     LDA ram_002A
- - - - - - 0x01D8F9 07:D8E9: E5 D1     SBC ram_pos_X_hi_cam
- - - - - - 0x01D8FB 07:D8EB: 85 1A     STA ram_001A
- - - - - - 0x01D8FD 07:D8ED: 30 0C     BMI bra_D8FB
- - - - - - 0x01D8FF 07:D8EF: D0 14     BNE bra_D905
- - - - - - 0x01D901 07:D8F1: 24 1C     BIT ram_001C
- - - - - - 0x01D903 07:D8F3: 30 10     BMI bra_D905
- - - - - - 0x01D905 07:D8F5: A5 19     LDA ram_0019
- - - - - - 0x01D907 07:D8F7: C9 40     CMP #$40
- - - - - - 0x01D909 07:D8F9: B0 04     BCS bra_D8FF
bra_D8FB:
- - - - - - 0x01D90B 07:D8FB: A0 00     LDY #$00
- - - - - - 0x01D90D 07:D8FD: F0 08     BEQ bra_D907    ; jmp
bra_D8FF:
- - - - - - 0x01D90F 07:D8FF: A5 19     LDA ram_0019
- - - - - - 0x01D911 07:D901: C9 C0     CMP #$C0
- - - - - - 0x01D913 07:D903: 90 08     BCC bra_D90D_RTS
bra_D905:
- - - - - - 0x01D915 07:D905: A0 03     LDY #$03
bra_D907:
- - - - - - 0x01D917 07:D907: 20 0E D9  JSR sub_D90E
- - - - - - 0x01D91A 07:D90A: 20 2D D9  JSR sub_D92D
bra_D90D_RTS:
- - - - - - 0x01D91D 07:D90D: 60        RTS



sub_D90E:
; bzk garbage
- - - - - - 0x01D91E 07:D90E: 24 1C     BIT ram_001C
- - - - - - 0x01D920 07:D910: 30 0F     BMI bra_D921
- - - - - - 0x01D922 07:D912: A5 29     LDA ram_0029
- - - - - - 0x01D924 07:D914: 38        SEC
- - - - - - 0x01D925 07:D915: F9 27 D9  SBC tbl_D927,Y
- - - - - - 0x01D928 07:D918: 85 29     STA ram_0029
- - - - - - 0x01D92A 07:D91A: A5 2A     LDA ram_002A
- - - - - - 0x01D92C 07:D91C: F9 28 D9  SBC tbl_D928,Y
- - - - - - 0x01D92F 07:D91F: 85 2A     STA ram_002A
bra_D921:
- - - - - - 0x01D931 07:D921: B9 29 D9  LDA tbl_D929,Y
- - - - - - 0x01D934 07:D924: 85 19     STA ram_0019
- - - - - - 0x01D936 07:D926: 60        RTS



; bzk garbage
tbl_D927:
- - - - - - 0x01D937 07:D927: 40        .byte $40   ; 
tbl_D928:
- - - - - - 0x01D938 07:D928: 00        .byte $00   ; 
tbl_D929:
- - - - - - 0x01D939 07:D929: FC        .byte $FC   ; 
- - - - - - 0x01D93A 07:D92A: C0        .byte $C0   ; 
- - - - - - 0x01D93B 07:D92B: 00        .byte $00   ; 
- - - - - - 0x01D93C 07:D92C: 04        .byte $04   ; 



sub_D92D:
; bzk garbage
- - - - - - 0x01D93D 07:D92D: A5 19     LDA ram_0019
- - - - - - 0x01D93F 07:D92F: 18        CLC
- - - - - - 0x01D940 07:D930: 08        PHP
- - - - - - 0x01D941 07:D931: 65 D0     ADC ram_pos_X_lo_cam
- - - - - - 0x01D943 07:D933: 85 D0     STA ram_pos_X_lo_cam
- - - - - - 0x01D945 07:D935: A5 D1     LDA ram_pos_X_hi_cam
- - - - - - 0x01D947 07:D937: 69 00     ADC #$00
- - - - - - 0x01D949 07:D939: 28        PLP
- - - - - - 0x01D94A 07:D93A: 10 02     BPL bra_D93E
- - - - - - 0x01D94C 07:D93C: 69 FF     ADC #$FF
bra_D93E:
- - - - - - 0x01D94E 07:D93E: 85 D1     STA ram_pos_X_hi_cam
- - - - - - 0x01D950 07:D940: A5 D0     LDA ram_pos_X_lo_cam
- - - - - - 0x01D952 07:D942: 38        SEC
- - - - - - 0x01D953 07:D943: E5 29     SBC ram_0029
- - - - - - 0x01D955 07:D945: 85 1B     STA ram_001B
- - - - - - 0x01D957 07:D947: A5 D1     LDA ram_pos_X_hi_cam
- - - - - - 0x01D959 07:D949: E5 2A     SBC ram_002A
- - - - - - 0x01D95B 07:D94B: 10 0F     BPL bra_D95C
- - - - - - 0x01D95D 07:D94D: 48        PHA
- - - - - - 0x01D95E 07:D94E: A5 1B     LDA ram_001B
- - - - - - 0x01D960 07:D950: 49 FF     EOR #$FF
- - - - - - 0x01D962 07:D952: 18        CLC
- - - - - - 0x01D963 07:D953: 69 01     ADC #< $0001
- - - - - - 0x01D965 07:D955: 85 1B     STA ram_001B
- - - - - - 0x01D967 07:D957: 68        PLA
- - - - - - 0x01D968 07:D958: 49 FF     EOR #$FF
- - - - - - 0x01D96A 07:D95A: 69 00     ADC #> $0001
bra_D95C:
- - - - - - 0x01D96C 07:D95C: D0 0E     BNE bra_D96C_RTS
- - - - - - 0x01D96E 07:D95E: A9 04     LDA #$04
- - - - - - 0x01D970 07:D960: C5 1B     CMP ram_001B
- - - - - - 0x01D972 07:D962: 90 08     BCC bra_D96C_RTS
- - - - - - 0x01D974 07:D964: A5 29     LDA ram_0029
- - - - - - 0x01D976 07:D966: 85 D0     STA ram_pos_X_lo_cam
- - - - - - 0x01D978 07:D968: A5 2A     LDA ram_002A
- - - - - - 0x01D97A 07:D96A: 85 D1     STA ram_pos_X_hi_cam
bra_D96C_RTS:
- - - - - - 0x01D97C 07:D96C: 60        RTS



sub_D96D:
sub_0x01D97D:
C - - - - - 0x01D97D 07:D96D: A5 E9     LDA ram_for_2000
C - - - - - 0x01D97F 07:D96F: 29 FC     AND #$FC
C - - - - - 0x01D981 07:D971: 0D 63 06  ORA ram_base_nmt
C - - - - - 0x01D984 07:D974: 85 E9     STA ram_for_2000
C - - - - - 0x01D986 07:D976: AD 02 20  LDA $2002
C - - - - - 0x01D989 07:D979: AD 62 06  LDA ram_scroll_X_1
C - - - - - 0x01D98C 07:D97C: 8D 05 20  STA $2005
C - - - - - 0x01D98F 07:D97F: AD 61 06  LDA ram_scroll_Y_1
C - - - - - 0x01D992 07:D982: 8D 05 20  STA $2005
C - - - - - 0x01D995 07:D985: A5 E9     LDA ram_for_2000
C - - - - - 0x01D997 07:D987: 8D 00 20  STA $2000
C - - - - - 0x01D99A 07:D98A: A5 F4     LDA ram_irq_handler
C - - - - - 0x01D99C 07:D98C: C9 02     CMP #con_irq_green_heli
C - - - - - 0x01D99E 07:D98E: D0 0A     BNE bra_D99A_RTS
- - - - - - 0x01D9A0 07:D990: A9 22     LDA #> $2280
- - - - - - 0x01D9A2 07:D992: 8D 06 20  STA $2006
- - - - - - 0x01D9A5 07:D995: A9 80     LDA #< $2280
- - - - - - 0x01D9A7 07:D997: 8D 06 20  STA $2006
bra_D99A_RTS:
C - - - - - 0x01D9AA 07:D99A: 60        RTS



sub_D99B:
C - - - - - 0x01D9AB 07:D99B: A5 E9     LDA ram_for_2000
C - - - - - 0x01D9AD 07:D99D: 29 FC     AND #$FC
C - - - - - 0x01D9AF 07:D99F: 0D 69 06  ORA ram_0669
C - - - - - 0x01D9B2 07:D9A2: 85 E9     STA ram_for_2000
C - - - - - 0x01D9B4 07:D9A4: AD 02 20  LDA $2002
C - - - - - 0x01D9B7 07:D9A7: AD 67 06  LDA ram_scroll_X_2
C - - - - - 0x01D9BA 07:D9AA: 8D 05 20  STA $2005
C - - - - - 0x01D9BD 07:D9AD: AD 68 06  LDA ram_scroll_Y_2
C - - - - - 0x01D9C0 07:D9B0: 8D 05 20  STA $2005
C - - - - - 0x01D9C3 07:D9B3: A5 E9     LDA ram_for_2000
C - - - - - 0x01D9C5 07:D9B5: 8D 00 20  STA $2000
C - - - - - 0x01D9C8 07:D9B8: 60        RTS



sub_D9B9:
C - - - - - 0x01D9C9 07:D9B9: A5 3A     LDA ram_003A
C - - - - - 0x01D9CB 07:D9BB: 8D 63 06  STA ram_base_nmt
C - - - - - 0x01D9CE 07:D9BE: A5 E6     LDA ram_00E6
C - - - - - 0x01D9D0 07:D9C0: 8D 61 06  STA ram_scroll_Y_1
C - - - - - 0x01D9D3 07:D9C3: A5 E7     LDA ram_00E7
C - - - - - 0x01D9D5 07:D9C5: 8D 62 06  STA ram_scroll_X_1
C - - - - - 0x01D9D8 07:D9C8: AD F4 00  LDA a: ram_irq_handler
C - - - - - 0x01D9DB 07:D9CB: C9 02     CMP #con_irq_green_heli
C - - - - - 0x01D9DD 07:D9CD: D0 12     BNE bra_D9E1_RTS
C - - - - - 0x01D9DF 07:D9CF: AD 64 06  LDA ram_0664
C - - - - - 0x01D9E2 07:D9D2: 8D 67 06  STA ram_scroll_X_2
C - - - - - 0x01D9E5 07:D9D5: AD 65 06  LDA ram_0665
C - - - - - 0x01D9E8 07:D9D8: 8D 68 06  STA ram_scroll_Y_2
C - - - - - 0x01D9EB 07:D9DB: AD 66 06  LDA ram_0666
C - - - - - 0x01D9EE 07:D9DE: 8D 69 06  STA ram_0669
bra_D9E1_RTS:
C - - - - - 0x01D9F1 07:D9E1: 60        RTS


; bzk garbage
- - - - - - 0x01D9F2 07:D9E2: A9 00     LDA #$00
- - - - - - 0x01D9F4 07:D9E4: 85 D0     STA ram_pos_X_lo_cam
- - - - - - 0x01D9F6 07:D9E6: 85 D1     STA ram_pos_X_hi_cam
- - - - - - 0x01D9F8 07:D9E8: 85 D2     STA ram_pos_Y_lo_cam
- - - - - - 0x01D9FA 07:D9EA: 85 D3     STA ram_pos_Y_hi_cam
- - - - - - 0x01D9FC 07:D9EC: 20 F3 D9  JSR sub_D9F3
- - - - - - 0x01D9FF 07:D9EF: 20 6D D9  JSR sub_D96D
- - - - - - 0x01DA02 07:D9F2: 60        RTS



sub_D9F3:
sub_0x01DA03:
C - - - - - 0x01DA03 07:D9F3: A2 03     LDX #$03
bra_D9F5_loop:
C - - - - - 0x01DA05 07:D9F5: B5 D0     LDA ram_pos_X_lo_cam,X
C - - - - - 0x01DA07 07:D9F7: 95 D4     STA ram_copy_cam_pos,X
C - - - - - 0x01DA09 07:D9F9: CA        DEX
C - - - - - 0x01DA0A 07:D9FA: 10 F9     BPL bra_D9F5_loop
C - - - - - 0x01DA0C 07:D9FC: A5 3C     LDA ram_003C_obj
C - - - - - 0x01DA0E 07:D9FE: 05 3D     ORA ram_003C_obj + $01
C - - - - - 0x01DA10 07:DA00: 10 48     BPL bra_DA4A_RTS    ; if con_003C_80
C - - - - - 0x01DA12 07:DA02: A5 3C     LDA ram_003C_obj
C - - - - - 0x01DA14 07:DA04: 25 3D     AND ram_003C_obj + $01
C - - - - - 0x01DA16 07:DA06: 30 12     BMI bra_DA1A    ; if con_003C_80
C - - - - - 0x01DA18 07:DA08: A0 00     LDY #$00
; bzk optimize, LDA instead of LDA,Y
; bzk bug?
C - - - - - 0x01DA1A 07:DA0A: B9 3C 00  LDA a: ram_003C_obj,Y
C - - - - - 0x01DA1D 07:DA0D: 30 02     BMI bra_DA11    ; if con_003C_80
C - - - - - 0x01DA1F 07:DA0F: A0 01     LDY #$01
bra_DA11:
C - - - - - 0x01DA21 07:DA11: 20 4B DA  JSR sub_DA4B
C - - - - - 0x01DA24 07:DA14: 20 8B DA  JSR sub_DA8B
C - - - - - 0x01DA27 07:DA17: 4C 1D DA  JMP loc_DA1D
bra_DA1A:
C - - - - - 0x01DA2A 07:DA1A: 20 3A DB  JSR sub_DB3A
loc_DA1D:
C D 2 - - - 0x01DA2D 07:DA1D: A0 00     LDY #$00
C - - - - - 0x01DA2F 07:DA1F: 20 34 DE  JSR sub_DE34
C - - - - - 0x01DA32 07:DA22: A0 02     LDY #$02
C - - - - - 0x01DA34 07:DA24: 20 34 DE  JSR sub_DE34
C - - - - - 0x01DA37 07:DA27: A5 29     LDA ram_0029
C - - - - - 0x01DA39 07:DA29: 85 D0     STA ram_pos_X_lo_cam
C - - - - - 0x01DA3B 07:DA2B: A5 2A     LDA ram_002A
C - - - - - 0x01DA3D 07:DA2D: 85 D1     STA ram_pos_X_hi_cam
C - - - - - 0x01DA3F 07:DA2F: A5 2B     LDA ram_002B
C - - - - - 0x01DA41 07:DA31: 85 D2     STA ram_pos_Y_lo_cam
C - - - - - 0x01DA43 07:DA33: A5 2C     LDA ram_002C
C - - - - - 0x01DA45 07:DA35: 85 D3     STA ram_pos_Y_hi_cam
C - - - - - 0x01DA47 07:DA37: 20 AD DF  JSR sub_DFAD
C - - - - - 0x01DA4A 07:DA3A: AD F6 FF  LDA tbl_FFF6_debug_byte
C - - - - - 0x01DA4D 07:DA3D: 29 20     AND #$20
C - - - - - 0x01DA4F 07:DA3F: D0 06     BNE bra_DA47
C - - - - - 0x01DA51 07:DA41: 20 8D DD  JSR sub_DD8D
C - - - - - 0x01DA54 07:DA44: 20 0B DD  JSR sub_DD0B
bra_DA47:
C - - - - - 0x01DA57 07:DA47: 20 DA DE  JSR sub_DEDA
bra_DA4A_RTS:
C - - - - - 0x01DA5A 07:DA4A: 60        RTS



sub_DA4B:
C - - - - - 0x01DA5B 07:DA4B: A5 D0     LDA ram_pos_X_lo_cam
C - - - - - 0x01DA5D 07:DA4D: 18        CLC
C - - - - - 0x01DA5E 07:DA4E: 69 40     ADC #< $0040
C - - - - - 0x01DA60 07:DA50: 85 29     STA ram_0029
C - - - - - 0x01DA62 07:DA52: A5 D1     LDA ram_pos_X_hi_cam
C - - - - - 0x01DA64 07:DA54: 69 00     ADC #> $0040
C - - - - - 0x01DA66 07:DA56: 85 2A     STA ram_002A
C - - - - - 0x01DA68 07:DA58: B9 77 00  LDA a: ram_pos_X_lo,Y
C - - - - - 0x01DA6B 07:DA5B: 38        SEC
C - - - - - 0x01DA6C 07:DA5C: E5 29     SBC ram_0029
C - - - - - 0x01DA6E 07:DA5E: B9 80 00  LDA a: ram_pos_X_hi,Y
C - - - - - 0x01DA71 07:DA61: E5 2A     SBC ram_002A
C - - - - - 0x01DA73 07:DA63: 10 04     BPL bra_DA69
C - - - - - 0x01DA75 07:DA65: 20 EA DA  JSR sub_DAEA
C - - - - - 0x01DA78 07:DA68: 60        RTS
bra_DA69:
C - - - - - 0x01DA79 07:DA69: A5 D0     LDA ram_pos_X_lo_cam
C - - - - - 0x01DA7B 07:DA6B: 18        CLC
C - - - - - 0x01DA7C 07:DA6C: 69 C0     ADC #< $00C0
C - - - - - 0x01DA7E 07:DA6E: 85 29     STA ram_0029
C - - - - - 0x01DA80 07:DA70: A5 D1     LDA ram_pos_X_hi_cam
C - - - - - 0x01DA82 07:DA72: 69 00     ADC #> $00C0
C - - - - - 0x01DA84 07:DA74: 85 2A     STA ram_002A
C - - - - - 0x01DA86 07:DA76: A5 29     LDA ram_0029
C - - - - - 0x01DA88 07:DA78: 38        SEC
C - - - - - 0x01DA89 07:DA79: F9 77 00  SBC a: ram_pos_X_lo,Y
C - - - - - 0x01DA8C 07:DA7C: A5 2A     LDA ram_002A
C - - - - - 0x01DA8E 07:DA7E: F9 80 00  SBC a: ram_pos_X_hi,Y
C - - - - - 0x01DA91 07:DA81: 10 04     BPL bra_DA87
C - - - - - 0x01DA93 07:DA83: 20 02 DB  JSR sub_DB02
C - - - - - 0x01DA96 07:DA86: 60        RTS
bra_DA87:
C - - - - - 0x01DA97 07:DA87: 20 D8 DA  JSR sub_DAD8
C - - - - - 0x01DA9A 07:DA8A: 60        RTS



sub_DA8B:
C - - - - - 0x01DA9B 07:DA8B: B9 92 00  LDA a: ram_pos_Y_lo,Y
C - - - - - 0x01DA9E 07:DA8E: 18        CLC
C - - - - - 0x01DA9F 07:DA8F: 79 AD 00  ADC a: ram_pos_Z_lo,Y
C - - - - - 0x01DAA2 07:DA92: 85 2B     STA ram_002B
C - - - - - 0x01DAA4 07:DA94: B9 9B 00  LDA a: ram_pos_Y_hi,Y
C - - - - - 0x01DAA7 07:DA97: 79 B6 00  ADC a: ram_pos_Z_hi,Y
C - - - - - 0x01DAAA 07:DA9A: 85 2C     STA ram_002C
C - - - - - 0x01DAAC 07:DA9C: A5 D2     LDA ram_pos_Y_lo_cam
C - - - - - 0x01DAAE 07:DA9E: 18        CLC
C - - - - - 0x01DAAF 07:DA9F: 69 90     ADC #< $0090
C - - - - - 0x01DAB1 07:DAA1: 85 FC     STA ram_00FC
C - - - - - 0x01DAB3 07:DAA3: A5 D3     LDA ram_pos_Y_hi_cam
C - - - - - 0x01DAB5 07:DAA5: 69 00     ADC #> $0090
C - - - - - 0x01DAB7 07:DAA7: 85 FD     STA ram_00FD
C - - - - - 0x01DAB9 07:DAA9: A5 FC     LDA ram_00FC
C - - - - - 0x01DABB 07:DAAB: 38        SEC
C - - - - - 0x01DABC 07:DAAC: E5 2B     SBC ram_002B
C - - - - - 0x01DABE 07:DAAE: A5 FD     LDA ram_00FD
C - - - - - 0x01DAC0 07:DAB0: E5 2C     SBC ram_002C
C - - - - - 0x01DAC2 07:DAB2: 10 04     BPL bra_DAB8
C - - - - - 0x01DAC4 07:DAB4: 20 14 DB  JSR sub_DB14
C - - - - - 0x01DAC7 07:DAB7: 60        RTS
bra_DAB8:
C - - - - - 0x01DAC8 07:DAB8: A5 D2     LDA ram_pos_Y_lo_cam
C - - - - - 0x01DACA 07:DABA: 18        CLC
C - - - - - 0x01DACB 07:DABB: 69 50     ADC #< $0050
C - - - - - 0x01DACD 07:DABD: 85 FC     STA ram_00FC
C - - - - - 0x01DACF 07:DABF: A5 D3     LDA ram_pos_Y_hi_cam
C - - - - - 0x01DAD1 07:DAC1: 69 00     ADC #> $0050
C - - - - - 0x01DAD3 07:DAC3: 85 FD     STA ram_00FD
C - - - - - 0x01DAD5 07:DAC5: A5 2B     LDA ram_002B
C - - - - - 0x01DAD7 07:DAC7: 38        SEC
C - - - - - 0x01DAD8 07:DAC8: E5 FC     SBC ram_00FC
C - - - - - 0x01DADA 07:DACA: A5 2C     LDA ram_002C
C - - - - - 0x01DADC 07:DACC: E5 FD     SBC ram_00FD
C - - - - - 0x01DADE 07:DACE: 10 04     BPL bra_DAD4
C - - - - - 0x01DAE0 07:DAD0: 20 2A DB  JSR sub_DB2A
C - - - - - 0x01DAE3 07:DAD3: 60        RTS
bra_DAD4:
C - - - - - 0x01DAE4 07:DAD4: 20 E1 DA  JSR sub_DAE1
C - - - - - 0x01DAE7 07:DAD7: 60        RTS



sub_DAD8:
C - - - - - 0x01DAE8 07:DAD8: A5 D0     LDA ram_pos_X_lo_cam
C - - - - - 0x01DAEA 07:DADA: 85 29     STA ram_0029
C - - - - - 0x01DAEC 07:DADC: A5 D1     LDA ram_pos_X_hi_cam
C - - - - - 0x01DAEE 07:DADE: 85 2A     STA ram_002A
C - - - - - 0x01DAF0 07:DAE0: 60        RTS



sub_DAE1:
C - - - - - 0x01DAF1 07:DAE1: A5 D2     LDA ram_pos_Y_lo_cam
C - - - - - 0x01DAF3 07:DAE3: 85 2B     STA ram_002B
C - - - - - 0x01DAF5 07:DAE5: A5 D3     LDA ram_pos_Y_hi_cam
C - - - - - 0x01DAF7 07:DAE7: 85 2C     STA ram_002C
C - - - - - 0x01DAF9 07:DAE9: 60        RTS



sub_DAEA:
C - - - - - 0x01DAFA 07:DAEA: B9 77 00  LDA a: ram_pos_X_lo,Y
C - - - - - 0x01DAFD 07:DAED: 38        SEC
C - - - - - 0x01DAFE 07:DAEE: E9 40     SBC #< $0040
C - - - - - 0x01DB00 07:DAF0: 85 29     STA ram_0029
C - - - - - 0x01DB02 07:DAF2: B9 80 00  LDA a: ram_pos_X_hi,Y
C - - - - - 0x01DB05 07:DAF5: E9 00     SBC #> $0040
C - - - - - 0x01DB07 07:DAF7: 85 2A     STA ram_002A
C - - - - - 0x01DB09 07:DAF9: 10 06     BPL bra_DB01_RTS
bra_DAFB:
C - - - - - 0x01DB0B 07:DAFB: A9 00     LDA #$00
C - - - - - 0x01DB0D 07:DAFD: 85 29     STA ram_0029
C - - - - - 0x01DB0F 07:DAFF: 85 2A     STA ram_002A
bra_DB01_RTS:
C - - - - - 0x01DB11 07:DB01: 60        RTS



sub_DB02:
C - - - - - 0x01DB12 07:DB02: B9 77 00  LDA a: ram_pos_X_lo,Y
C - - - - - 0x01DB15 07:DB05: 38        SEC
C - - - - - 0x01DB16 07:DB06: E9 C0     SBC #< $00C0
C - - - - - 0x01DB18 07:DB08: 85 29     STA ram_0029
C - - - - - 0x01DB1A 07:DB0A: B9 80 00  LDA a: ram_pos_X_hi,Y
C - - - - - 0x01DB1D 07:DB0D: E9 00     SBC #> $00C0
C - - - - - 0x01DB1F 07:DB0F: 85 2A     STA ram_002A
C - - - - - 0x01DB21 07:DB11: 30 E8     BMI bra_DAFB
C - - - - - 0x01DB23 07:DB13: 60        RTS



sub_DB14:
C - - - - - 0x01DB24 07:DB14: A5 2B     LDA ram_002B
C - - - - - 0x01DB26 07:DB16: 38        SEC
C - - - - - 0x01DB27 07:DB17: E9 90     SBC #< $0090
C - - - - - 0x01DB29 07:DB19: 85 2B     STA ram_002B
C - - - - - 0x01DB2B 07:DB1B: A5 2C     LDA ram_002C
C - - - - - 0x01DB2D 07:DB1D: E9 00     SBC #> $0090
C - - - - - 0x01DB2F 07:DB1F: 85 2C     STA ram_002C
C - - - - - 0x01DB31 07:DB21: 10 06     BPL bra_DB29_RTS
bra_DB23:
C - - - - - 0x01DB33 07:DB23: A9 00     LDA #$00
C - - - - - 0x01DB35 07:DB25: 85 2B     STA ram_002B
C - - - - - 0x01DB37 07:DB27: 85 2C     STA ram_002C
bra_DB29_RTS:
C - - - - - 0x01DB39 07:DB29: 60        RTS



sub_DB2A:
C - - - - - 0x01DB3A 07:DB2A: A5 2B     LDA ram_002B
C - - - - - 0x01DB3C 07:DB2C: 38        SEC
C - - - - - 0x01DB3D 07:DB2D: E9 50     SBC #< $0050
C - - - - - 0x01DB3F 07:DB2F: 85 2B     STA ram_002B
C - - - - - 0x01DB41 07:DB31: A5 2C     LDA ram_002C
C - - - - - 0x01DB43 07:DB33: E9 00     SBC #> $0050
C - - - - - 0x01DB45 07:DB35: 85 2C     STA ram_002C
C - - - - - 0x01DB47 07:DB37: 30 EA     BMI bra_DB23
C - - - - - 0x01DB49 07:DB39: 60        RTS



sub_DB3A:
C - - - - - 0x01DB4A 07:DB3A: A5 77     LDA ram_pos_X_lo
C - - - - - 0x01DB4C 07:DB3C: 38        SEC
C - - - - - 0x01DB4D 07:DB3D: E5 78     SBC ram_pos_X_lo + $01
C - - - - - 0x01DB4F 07:DB3F: 85 FC     STA ram_00FC
C - - - - - 0x01DB51 07:DB41: A5 80     LDA ram_pos_X_hi
C - - - - - 0x01DB53 07:DB43: E5 81     SBC ram_pos_X_hi + $01
C - - - - - 0x01DB55 07:DB45: 85 FD     STA ram_00FD
C - - - - - 0x01DB57 07:DB47: 10 03     BPL bra_DB4C
C - - - - - 0x01DB59 07:DB49: 20 A3 DB  JSR sub_DBA3_EOR_16_bit
bra_DB4C:
C - - - - - 0x01DB5C 07:DB4C: A5 FD     LDA ram_00FD
C - - - - - 0x01DB5E 07:DB4E: D0 0F     BNE bra_DB5F
C - - - - - 0x01DB60 07:DB50: A5 FC     LDA ram_00FC
C - - - - - 0x01DB62 07:DB52: C9 7E     CMP #$7E
C - - - - - 0x01DB64 07:DB54: B0 09     BCS bra_DB5F
C - - - - - 0x01DB66 07:DB56: 20 B5 DB  JSR sub_DBB5
C - - - - - 0x01DB69 07:DB59: 20 4B DA  JSR sub_DA4B
C - - - - - 0x01DB6C 07:DB5C: 4C 62 DB  JMP loc_DB62
bra_DB5F:
C - - - - - 0x01DB6F 07:DB5F: 20 D8 DA  JSR sub_DAD8
loc_DB62:
C D 2 - - - 0x01DB72 07:DB62: A5 92     LDA ram_pos_Y_lo
C - - - - - 0x01DB74 07:DB64: 18        CLC
C - - - - - 0x01DB75 07:DB65: 65 AD     ADC ram_pos_Z_lo
C - - - - - 0x01DB77 07:DB67: 85 FC     STA ram_00FC
C - - - - - 0x01DB79 07:DB69: A5 9B     LDA ram_pos_Y_hi
C - - - - - 0x01DB7B 07:DB6B: 65 B6     ADC ram_pos_Z_hi
C - - - - - 0x01DB7D 07:DB6D: 85 FD     STA ram_00FD
C - - - - - 0x01DB7F 07:DB6F: A5 93     LDA ram_pos_Y_lo + $01
C - - - - - 0x01DB81 07:DB71: 18        CLC
C - - - - - 0x01DB82 07:DB72: 65 AE     ADC ram_pos_Z_lo + $01
C - - - - - 0x01DB84 07:DB74: 85 FE     STA ram_00FE
C - - - - - 0x01DB86 07:DB76: A5 9C     LDA ram_pos_Y_hi + $01
C - - - - - 0x01DB88 07:DB78: 65 B7     ADC ram_pos_Z_hi + $01
C - - - - - 0x01DB8A 07:DB7A: 85 FF     STA ram_00FF
C - - - - - 0x01DB8C 07:DB7C: A5 FE     LDA ram_00FE
C - - - - - 0x01DB8E 07:DB7E: 38        SEC
C - - - - - 0x01DB8F 07:DB7F: E5 FC     SBC ram_00FC
C - - - - - 0x01DB91 07:DB81: 85 FC     STA ram_00FC
C - - - - - 0x01DB93 07:DB83: A5 FF     LDA ram_00FF
C - - - - - 0x01DB95 07:DB85: E5 FD     SBC ram_00FD
C - - - - - 0x01DB97 07:DB87: 85 FD     STA ram_00FD
C - - - - - 0x01DB99 07:DB89: 10 03     BPL bra_DB8E
C - - - - - 0x01DB9B 07:DB8B: 20 A3 DB  JSR sub_DBA3_EOR_16_bit
bra_DB8E:
C - - - - - 0x01DB9E 07:DB8E: A5 FD     LDA ram_00FD
C - - - - - 0x01DBA0 07:DB90: D0 0D     BNE bra_DB9F
C - - - - - 0x01DBA2 07:DB92: A5 FC     LDA ram_00FC
C - - - - - 0x01DBA4 07:DB94: C9 3E     CMP #$3E
C - - - - - 0x01DBA6 07:DB96: B0 07     BCS bra_DB9F
C - - - - - 0x01DBA8 07:DB98: 20 E9 DB  JSR sub_DBE9
C - - - - - 0x01DBAB 07:DB9B: 20 8B DA  JSR sub_DA8B
C - - - - - 0x01DBAE 07:DB9E: 60        RTS
bra_DB9F:
C - - - - - 0x01DBAF 07:DB9F: 20 E1 DA  JSR sub_DAE1
C - - - - - 0x01DBB2 07:DBA2: 60        RTS



sub_DBA3_EOR_16_bit:
C - - - - - 0x01DBB3 07:DBA3: A5 FC     LDA ram_00FC
C - - - - - 0x01DBB5 07:DBA5: 49 FF     EOR #$FF
C - - - - - 0x01DBB7 07:DBA7: 18        CLC
C - - - - - 0x01DBB8 07:DBA8: 69 01     ADC #< $0001
C - - - - - 0x01DBBA 07:DBAA: 85 FC     STA ram_00FC
C - - - - - 0x01DBBC 07:DBAC: A5 FD     LDA ram_00FD
C - - - - - 0x01DBBE 07:DBAE: 49 FF     EOR #$FF
C - - - - - 0x01DBC0 07:DBB0: 69 00     ADC #> $0001
C - - - - - 0x01DBC2 07:DBB2: 85 FD     STA ram_00FD
C - - - - - 0x01DBC4 07:DBB4: 60        RTS



sub_DBB5:
C - - - - - 0x01DBC5 07:DBB5: A5 77     LDA ram_pos_X_lo
C - - - - - 0x01DBC7 07:DBB7: 38        SEC
C - - - - - 0x01DBC8 07:DBB8: E5 D0     SBC ram_pos_X_lo_cam
C - - - - - 0x01DBCA 07:DBBA: 85 FC     STA ram_00FC
C - - - - - 0x01DBCC 07:DBBC: 49 FF     EOR #$FF
C - - - - - 0x01DBCE 07:DBBE: 85 FD     STA ram_00FD
C - - - - - 0x01DBD0 07:DBC0: A5 78     LDA ram_pos_X_lo + $01
C - - - - - 0x01DBD2 07:DBC2: 38        SEC
C - - - - - 0x01DBD3 07:DBC3: E5 D0     SBC ram_pos_X_lo_cam
C - - - - - 0x01DBD5 07:DBC5: 85 FE     STA ram_00FE
C - - - - - 0x01DBD7 07:DBC7: 49 FF     EOR #$FF
C - - - - - 0x01DBD9 07:DBC9: 85 FF     STA ram_00FF
C - - - - - 0x01DBDB 07:DBCB: A2 03     LDX #$03
bra_DBCD_loop:
C - - - - - 0x01DBDD 07:DBCD: B5 FC     LDA ram_00FC,X
C - - - - - 0x01DBDF 07:DBCF: C9 40     CMP #$40
C - - - - - 0x01DBE1 07:DBD1: 90 06     BCC bra_DBD9
C - - - - - 0x01DBE3 07:DBD3: CA        DEX
C - - - - - 0x01DBE4 07:DBD4: 10 F7     BPL bra_DBCD_loop
C - - - - - 0x01DBE6 07:DBD6: A0 00     LDY #$00
C - - - - - 0x01DBE8 07:DBD8: 60        RTS
bra_DBD9:
C - - - - - 0x01DBE9 07:DBD9: E0 02     CPX #$02
C - - - - - 0x01DBEB 07:DBDB: 90 08     BCC bra_DBE5
C - - - - - 0x01DBED 07:DBDD: CA        DEX
C - - - - - 0x01DBEE 07:DBDE: CA        DEX
C - - - - - 0x01DBEF 07:DBDF: D5 FC     CMP ram_00FC,X
C - - - - - 0x01DBF1 07:DBE1: B0 02     BCS bra_DBE5
C - - - - - 0x01DBF3 07:DBE3: E8        INX
C - - - - - 0x01DBF4 07:DBE4: E8        INX
bra_DBE5:
C - - - - - 0x01DBF5 07:DBE5: 8A        TXA
C - - - - - 0x01DBF6 07:DBE6: 4A        LSR
C - - - - - 0x01DBF7 07:DBE7: A8        TAY
C - - - - - 0x01DBF8 07:DBE8: 60        RTS



sub_DBE9:
C - - - - - 0x01DBF9 07:DBE9: A5 92     LDA ram_pos_Y_lo
C - - - - - 0x01DBFB 07:DBEB: 18        CLC
C - - - - - 0x01DBFC 07:DBEC: 65 AD     ADC ram_pos_Z_lo
C - - - - - 0x01DBFE 07:DBEE: 38        SEC
C - - - - - 0x01DBFF 07:DBEF: E5 D2     SBC ram_pos_Y_lo_cam
C - - - - - 0x01DC01 07:DBF1: 85 FC     STA ram_00FC
C - - - - - 0x01DC03 07:DBF3: 49 FF     EOR #$FF
C - - - - - 0x01DC05 07:DBF5: 85 FD     STA ram_00FD
C - - - - - 0x01DC07 07:DBF7: A5 93     LDA ram_pos_Y_lo + $01
C - - - - - 0x01DC09 07:DBF9: 18        CLC
C - - - - - 0x01DC0A 07:DBFA: 65 AE     ADC ram_pos_Z_lo + $01
C - - - - - 0x01DC0C 07:DBFC: 38        SEC
C - - - - - 0x01DC0D 07:DBFD: E5 D2     SBC ram_pos_Y_lo_cam
C - - - - - 0x01DC0F 07:DBFF: 85 FE     STA ram_00FE
C - - - - - 0x01DC11 07:DC01: 49 FF     EOR #$FF
C - - - - - 0x01DC13 07:DC03: 85 FF     STA ram_00FF
C - - - - - 0x01DC15 07:DC05: A2 02     LDX #$02
loc_DC07:
C D 2 - - - 0x01DC17 07:DC07: B5 FC     LDA ram_00FC,X
C - - - - - 0x01DC19 07:DC09: C9 60     CMP #$60
C - - - - - 0x01DC1B 07:DC0B: 90 09     BCC bra_DC16
C - - - - - 0x01DC1D 07:DC0D: E0 00     CPX #$00
C - - - - - 0x01DC1F 07:DC0F: F0 12     BEQ bra_DC23
C - - - - - 0x01DC21 07:DC11: A2 00     LDX #$00
C - - - - - 0x01DC23 07:DC13: 4C 07 DC  JMP loc_DC07
bra_DC16:
C - - - - - 0x01DC26 07:DC16: E0 02     CPX #$02
C - - - - - 0x01DC28 07:DC18: D0 24     BNE bra_DC3E
C - - - - - 0x01DC2A 07:DC1A: D5 FA     CMP ram_00FA,X
C - - - - - 0x01DC2C 07:DC1C: 90 20     BCC bra_DC3E
C - - - - - 0x01DC2E 07:DC1E: A2 00     LDX #$00
C - - - - - 0x01DC30 07:DC20: 4C 3E DC  JMP loc_DC3E
bra_DC23:
C - - - - - 0x01DC33 07:DC23: A2 03     LDX #$03
loc_DC25:
C D 2 - - - 0x01DC35 07:DC25: B5 FC     LDA ram_00FC,X
C - - - - - 0x01DC37 07:DC27: C9 50     CMP #$50
C - - - - - 0x01DC39 07:DC29: 90 09     BCC bra_DC34
C - - - - - 0x01DC3B 07:DC2B: E0 01     CPX #$01
C - - - - - 0x01DC3D 07:DC2D: F0 05     BEQ bra_DC34
C - - - - - 0x01DC3F 07:DC2F: A2 01     LDX #$01
C - - - - - 0x01DC41 07:DC31: 4C 25 DC  JMP loc_DC25
bra_DC34:
C - - - - - 0x01DC44 07:DC34: E0 03     CPX #$03
C - - - - - 0x01DC46 07:DC36: D0 06     BNE bra_DC3E
C - - - - - 0x01DC48 07:DC38: D5 FA     CMP ram_00FA,X
C - - - - - 0x01DC4A 07:DC3A: 90 02     BCC bra_DC3E
- - - - - - 0x01DC4C 07:DC3C: A2 01     LDX #$01
bra_DC3E:
loc_DC3E:
C D 2 - - - 0x01DC4E 07:DC3E: 8A        TXA
C - - - - - 0x01DC4F 07:DC3F: 4A        LSR
C - - - - - 0x01DC50 07:DC40: A8        TAY
C - - - - - 0x01DC51 07:DC41: 60        RTS


; bzk garbage
- - - - - - 0x01DC52 07:DC42: A2 00     LDX #$00
- - - - - - 0x01DC54 07:DC44: A0 01     LDY #$01
- - - - - - 0x01DC56 07:DC46: A5 34     LDA ram_game_mode
- - - - - - 0x01DC58 07:DC48: 10 0E     BPL bra_DC58    ; if not con_gm_2_players
- - - - - - 0x01DC5A 07:DC4A: A5 3C     LDA ram_003C_obj
- - - - - - 0x01DC5C 07:DC4C: 25 3D     AND ram_003C_obj + $01
- - - - - - 0x01DC5E 07:DC4E: 30 26     BMI bra_DC76_RTS    ; if con_003C_80
; bzk optimize, LDA instead of LDA,X
; bzk bug?
- - - - - - 0x01DC60 07:DC50: B5 3C     LDA ram_003C_obj,X
- - - - - - 0x01DC62 07:DC52: 30 04     BMI bra_DC58    ; if con_003C_80
- - - - - - 0x01DC64 07:DC54: A2 01     LDX #$01
- - - - - - 0x01DC66 07:DC56: A0 00     LDY #$00
bra_DC58:
- - - - - - 0x01DC68 07:DC58: B5 77     LDA ram_pos_X_lo,X
- - - - - - 0x01DC6A 07:DC5A: 99 77 00  STA a: ram_pos_X_lo,Y
- - - - - - 0x01DC6D 07:DC5D: B5 80     LDA ram_pos_X_hi,X
- - - - - - 0x01DC6F 07:DC5F: 99 80 00  STA a: ram_pos_X_hi,Y
- - - - - - 0x01DC72 07:DC62: B5 92     LDA ram_pos_Y_lo,X
- - - - - - 0x01DC74 07:DC64: 99 92 00  STA a: ram_pos_Y_lo,Y
- - - - - - 0x01DC77 07:DC67: B5 9B     LDA ram_pos_Y_hi,X
- - - - - - 0x01DC79 07:DC69: 99 9B 00  STA a: ram_pos_Y_hi,Y
- - - - - - 0x01DC7C 07:DC6C: B5 AD     LDA ram_pos_Z_lo,X
- - - - - - 0x01DC7E 07:DC6E: 99 AD 00  STA a: ram_pos_Z_lo,Y
- - - - - - 0x01DC81 07:DC71: B5 B6     LDA ram_pos_Z_hi,X
- - - - - - 0x01DC83 07:DC73: 99 B6 00  STA a: ram_pos_Z_hi,Y
bra_DC76_RTS:
- - - - - - 0x01DC86 07:DC76: 60        RTS


; bzk garbage, somewhat similar to 0x01DA05
- - - - - - 0x01DC87 07:DC77: A2 03     LDX #$03
bra_DC79_loop:
- - - - - - 0x01DC89 07:DC79: BD D0 00  LDA a: ram_pos_X_lo_cam,X
- - - - - - 0x01DC8C 07:DC7C: 9D D4 00  STA a: ram_copy_cam_pos,X
- - - - - - 0x01DC8F 07:DC7F: CA        DEX
- - - - - - 0x01DC90 07:DC80: 10 F7     BPL bra_DC79_loop
- - - - - - 0x01DC92 07:DC82: A9 00     LDA #$00
- - - - - - 0x01DC94 07:DC84: 85 19     STA ram_0019
- - - - - - 0x01DC96 07:DC86: 85 29     STA ram_0029
- - - - - - 0x01DC98 07:DC88: 85 2A     STA ram_002A
- - - - - - 0x01DC9A 07:DC8A: 85 2B     STA ram_002B
- - - - - - 0x01DC9C 07:DC8C: 85 2C     STA ram_002C
- - - - - - 0x01DC9E 07:DC8E: A0 00     LDY #$00
bra_DC90_loop:
- - - - - - 0x01DCA0 07:DC90: B9 3C 00  LDA a: ram_003C_obj,Y
- - - - - - 0x01DCA3 07:DC93: 10 05     BPL bra_DC9A    ; if not con_003C_80
- - - - - - 0x01DCA5 07:DC95: E6 19     INC ram_0019
- - - - - - 0x01DCA7 07:DC97: 20 A7 DE  JSR sub_DEA7
bra_DC9A:
- - - - - - 0x01DCAA 07:DC9A: C8        INY
- - - - - - 0x01DCAB 07:DC9B: C0 02     CPY #$02
- - - - - - 0x01DCAD 07:DC9D: 90 F1     BCC bra_DC90_loop
- - - - - - 0x01DCAF 07:DC9F: A5 19     LDA ram_0019
- - - - - - 0x01DCB1 07:DCA1: F0 67     BEQ bra_DD0A_RTS
- - - - - - 0x01DCB3 07:DCA3: C9 02     CMP #$02
- - - - - - 0x01DCB5 07:DCA5: D0 08     BNE bra_DCAF
- - - - - - 0x01DCB7 07:DCA7: 46 2A     LSR ram_002A
- - - - - - 0x01DCB9 07:DCA9: 66 29     ROR ram_0029
- - - - - - 0x01DCBB 07:DCAB: 46 2C     LSR ram_002C
- - - - - - 0x01DCBD 07:DCAD: 66 2B     ROR ram_002B
bra_DCAF:
- - - - - - 0x01DCBF 07:DCAF: A5 29     LDA ram_0029
- - - - - - 0x01DCC1 07:DCB1: 38        SEC
- - - - - - 0x01DCC2 07:DCB2: E9 80     SBC #< $0080
- - - - - - 0x01DCC4 07:DCB4: 85 29     STA ram_0029
- - - - - - 0x01DCC6 07:DCB6: A5 2A     LDA ram_002A
- - - - - - 0x01DCC8 07:DCB8: E9 00     SBC #> $0080
- - - - - - 0x01DCCA 07:DCBA: 85 2A     STA ram_002A
- - - - - - 0x01DCCC 07:DCBC: 10 06     BPL bra_DCC4
- - - - - - 0x01DCCE 07:DCBE: A9 00     LDA #$00
- - - - - - 0x01DCD0 07:DCC0: 85 29     STA ram_0029
- - - - - - 0x01DCD2 07:DCC2: 85 2A     STA ram_002A
bra_DCC4:
- - - - - - 0x01DCD4 07:DCC4: A5 2B     LDA ram_002B
- - - - - - 0x01DCD6 07:DCC6: 38        SEC
- - - - - - 0x01DCD7 07:DCC7: E9 60     SBC #< $0060
- - - - - - 0x01DCD9 07:DCC9: 85 2B     STA ram_002B
- - - - - - 0x01DCDB 07:DCCB: A5 2C     LDA ram_002C
- - - - - - 0x01DCDD 07:DCCD: E9 00     SBC #> $0060
- - - - - - 0x01DCDF 07:DCCF: 85 2C     STA ram_002C
- - - - - - 0x01DCE1 07:DCD1: 10 06     BPL bra_DCD9
- - - - - - 0x01DCE3 07:DCD3: A9 00     LDA #$00
- - - - - - 0x01DCE5 07:DCD5: 85 2B     STA ram_002B
- - - - - - 0x01DCE7 07:DCD7: 85 2C     STA ram_002C
bra_DCD9:
- - - - - - 0x01DCE9 07:DCD9: A0 00     LDY #$00
- - - - - - 0x01DCEB 07:DCDB: 20 34 DE  JSR sub_DE34
- - - - - - 0x01DCEE 07:DCDE: A0 02     LDY #$02
- - - - - - 0x01DCF0 07:DCE0: 20 34 DE  JSR sub_DE34
- - - - - - 0x01DCF3 07:DCE3: A5 29     LDA ram_0029
- - - - - - 0x01DCF5 07:DCE5: 8D D0 00  STA a: ram_pos_X_lo_cam
- - - - - - 0x01DCF8 07:DCE8: A5 2A     LDA ram_002A
- - - - - - 0x01DCFA 07:DCEA: 8D D1 00  STA a: ram_pos_X_hi_cam
- - - - - - 0x01DCFD 07:DCED: A5 2B     LDA ram_002B
- - - - - - 0x01DCFF 07:DCEF: 8D D2 00  STA a: ram_pos_Y_lo_cam
- - - - - - 0x01DD02 07:DCF2: A5 2C     LDA ram_002C
- - - - - - 0x01DD04 07:DCF4: 8D D3 00  STA a: ram_pos_Y_hi_cam
- - - - - - 0x01DD07 07:DCF7: 20 AD DF  JSR sub_DFAD
- - - - - - 0x01DD0A 07:DCFA: AD F6 FF  LDA tbl_FFF6_debug_byte
- - - - - - 0x01DD0D 07:DCFD: 29 20     AND #$20
- - - - - - 0x01DD0F 07:DCFF: D0 06     BNE bra_DD07
- - - - - - 0x01DD11 07:DD01: 20 8D DD  JSR sub_DD8D
- - - - - - 0x01DD14 07:DD04: 20 0B DD  JSR sub_DD0B
bra_DD07:
- - - - - - 0x01DD17 07:DD07: 20 DA DE  JSR sub_DEDA
bra_DD0A_RTS:
- - - - - - 0x01DD1A 07:DD0A: 60        RTS



sub_DD0B:
C - - - - - 0x01DD1B 07:DD0B: AD B0 04  LDA ram_04B0
C - - - - - 0x01DD1E 07:DD0E: 85 19     STA ram_0019
C - - - - - 0x01DD20 07:DD10: 46 19     LSR ram_0019
C - - - - - 0x01DD22 07:DD12: B0 1B     BCS bra_DD2F
C - - - - - 0x01DD24 07:DD14: AD D4 00  LDA a: ram_copy_cam_pos
C - - - - - 0x01DD27 07:DD17: 38        SEC
C - - - - - 0x01DD28 07:DD18: ED D0 00  SBC a: ram_pos_X_lo_cam
C - - - - - 0x01DD2B 07:DD1B: AD D5 00  LDA a: ram_copy_cam_pos + $01
C - - - - - 0x01DD2E 07:DD1E: ED D1 00  SBC a: ram_pos_X_hi_cam
C - - - - - 0x01DD31 07:DD21: B0 0C     BCS bra_DD2F
C - - - - - 0x01DD33 07:DD23: AD D4 00  LDA a: ram_copy_cam_pos
C - - - - - 0x01DD36 07:DD26: 8D D0 00  STA a: ram_pos_X_lo_cam
C - - - - - 0x01DD39 07:DD29: AD D5 00  LDA a: ram_copy_cam_pos + $01
C - - - - - 0x01DD3C 07:DD2C: 8D D1 00  STA a: ram_pos_X_hi_cam
bra_DD2F:
C - - - - - 0x01DD3F 07:DD2F: 46 19     LSR ram_0019
C - - - - - 0x01DD41 07:DD31: B0 1B     BCS bra_DD4E
C - - - - - 0x01DD43 07:DD33: AD D0 00  LDA a: ram_pos_X_lo_cam
C - - - - - 0x01DD46 07:DD36: 38        SEC
C - - - - - 0x01DD47 07:DD37: ED D4 00  SBC a: ram_copy_cam_pos
C - - - - - 0x01DD4A 07:DD3A: AD D1 00  LDA a: ram_pos_X_hi_cam
C - - - - - 0x01DD4D 07:DD3D: ED D5 00  SBC a: ram_copy_cam_pos + $01
C - - - - - 0x01DD50 07:DD40: B0 0C     BCS bra_DD4E
C - - - - - 0x01DD52 07:DD42: AD D4 00  LDA a: ram_copy_cam_pos
C - - - - - 0x01DD55 07:DD45: 8D D0 00  STA a: ram_pos_X_lo_cam
C - - - - - 0x01DD58 07:DD48: AD D5 00  LDA a: ram_copy_cam_pos + $01
C - - - - - 0x01DD5B 07:DD4B: 8D D1 00  STA a: ram_pos_X_hi_cam
bra_DD4E:
C - - - - - 0x01DD5E 07:DD4E: 46 19     LSR ram_0019
C - - - - - 0x01DD60 07:DD50: B0 1B     BCS bra_DD6D
C - - - - - 0x01DD62 07:DD52: AD D2 00  LDA a: ram_pos_Y_lo_cam
C - - - - - 0x01DD65 07:DD55: 38        SEC
C - - - - - 0x01DD66 07:DD56: ED D6 00  SBC a: ram_copy_cam_pos + $02
C - - - - - 0x01DD69 07:DD59: AD D3 00  LDA a: ram_pos_Y_hi_cam
C - - - - - 0x01DD6C 07:DD5C: ED D7 00  SBC a: ram_copy_cam_pos + $03
C - - - - - 0x01DD6F 07:DD5F: B0 0C     BCS bra_DD6D
C - - - - - 0x01DD71 07:DD61: AD D6 00  LDA a: ram_copy_cam_pos + $02
C - - - - - 0x01DD74 07:DD64: 8D D2 00  STA a: ram_pos_Y_lo_cam
C - - - - - 0x01DD77 07:DD67: AD D7 00  LDA a: ram_copy_cam_pos + $03
C - - - - - 0x01DD7A 07:DD6A: 8D D3 00  STA a: ram_pos_Y_hi_cam
bra_DD6D:
C - - - - - 0x01DD7D 07:DD6D: 46 19     LSR ram_0019
C - - - - - 0x01DD7F 07:DD6F: B0 1B     BCS bra_DD8C_RTS
C - - - - - 0x01DD81 07:DD71: AD D6 00  LDA a: ram_copy_cam_pos + $02
C - - - - - 0x01DD84 07:DD74: 38        SEC
C - - - - - 0x01DD85 07:DD75: ED D2 00  SBC a: ram_pos_Y_lo_cam
C - - - - - 0x01DD88 07:DD78: AD D7 00  LDA a: ram_copy_cam_pos + $03
C - - - - - 0x01DD8B 07:DD7B: ED D3 00  SBC a: ram_pos_Y_hi_cam
C - - - - - 0x01DD8E 07:DD7E: B0 0C     BCS bra_DD8C_RTS
C - - - - - 0x01DD90 07:DD80: AD D6 00  LDA a: ram_copy_cam_pos + $02
C - - - - - 0x01DD93 07:DD83: 8D D2 00  STA a: ram_pos_Y_lo_cam
C - - - - - 0x01DD96 07:DD86: AD D7 00  LDA a: ram_copy_cam_pos + $03
C - - - - - 0x01DD99 07:DD89: 8D D3 00  STA a: ram_pos_Y_hi_cam
bra_DD8C_RTS:
C - - - - - 0x01DD9C 07:DD8C: 60        RTS



sub_DD8D:
C - - - - - 0x01DD9D 07:DD8D: AD D0 00  LDA a: ram_pos_X_lo_cam
C - - - - - 0x01DDA0 07:DD90: 38        SEC
C - - - - - 0x01DDA1 07:DD91: ED A8 04  SBC ram_min_cam_limit_X_lo
C - - - - - 0x01DDA4 07:DD94: AD D1 00  LDA a: ram_pos_X_hi_cam
C - - - - - 0x01DDA7 07:DD97: ED A9 04  SBC ram_min_cam_limit_X_hi
C - - - - - 0x01DDAA 07:DD9A: B0 1B     BCS bra_DDB7
C - - - - - 0x01DDAC 07:DD9C: AD D0 00  LDA a: ram_pos_X_lo_cam
C - - - - - 0x01DDAF 07:DD9F: 38        SEC
C - - - - - 0x01DDB0 07:DDA0: ED D4 00  SBC a: ram_copy_cam_pos
C - - - - - 0x01DDB3 07:DDA3: AD D1 00  LDA a: ram_pos_X_hi_cam
C - - - - - 0x01DDB6 07:DDA6: ED D5 00  SBC a: ram_copy_cam_pos + $01
C - - - - - 0x01DDB9 07:DDA9: B0 0C     BCS bra_DDB7
C - - - - - 0x01DDBB 07:DDAB: AD A8 04  LDA ram_min_cam_limit_X_lo
C - - - - - 0x01DDBE 07:DDAE: 8D D0 00  STA a: ram_pos_X_lo_cam
C - - - - - 0x01DDC1 07:DDB1: AD A9 04  LDA ram_min_cam_limit_X_hi
C - - - - - 0x01DDC4 07:DDB4: 8D D1 00  STA a: ram_pos_X_hi_cam
bra_DDB7:
C - - - - - 0x01DDC7 07:DDB7: AD AA 04  LDA ram_max_cam_limit_X_lo
C - - - - - 0x01DDCA 07:DDBA: 38        SEC
C - - - - - 0x01DDCB 07:DDBB: ED D0 00  SBC a: ram_pos_X_lo_cam
C - - - - - 0x01DDCE 07:DDBE: AD AB 04  LDA ram_max_cam_limit_X_hi
C - - - - - 0x01DDD1 07:DDC1: ED D1 00  SBC a: ram_pos_X_hi_cam
C - - - - - 0x01DDD4 07:DDC4: B0 1B     BCS bra_DDE1
C - - - - - 0x01DDD6 07:DDC6: AD D4 00  LDA a: ram_copy_cam_pos
C - - - - - 0x01DDD9 07:DDC9: 38        SEC
C - - - - - 0x01DDDA 07:DDCA: ED D0 00  SBC a: ram_pos_X_lo_cam
C - - - - - 0x01DDDD 07:DDCD: AD D5 00  LDA a: ram_copy_cam_pos + $01
C - - - - - 0x01DDE0 07:DDD0: ED D1 00  SBC a: ram_pos_X_hi_cam
C - - - - - 0x01DDE3 07:DDD3: B0 0C     BCS bra_DDE1
C - - - - - 0x01DDE5 07:DDD5: AD AA 04  LDA ram_max_cam_limit_X_lo
C - - - - - 0x01DDE8 07:DDD8: 8D D0 00  STA a: ram_pos_X_lo_cam
C - - - - - 0x01DDEB 07:DDDB: AD AB 04  LDA ram_max_cam_limit_X_hi
C - - - - - 0x01DDEE 07:DDDE: 8D D1 00  STA a: ram_pos_X_hi_cam
bra_DDE1:
C - - - - - 0x01DDF1 07:DDE1: AD D2 00  LDA a: ram_pos_Y_lo_cam
C - - - - - 0x01DDF4 07:DDE4: 38        SEC
C - - - - - 0x01DDF5 07:DDE5: ED AC 04  SBC ram_min_cam_limit_Y_lo
C - - - - - 0x01DDF8 07:DDE8: AD D3 00  LDA a: ram_pos_Y_hi_cam
C - - - - - 0x01DDFB 07:DDEB: ED AD 04  SBC ram_min_cam_limit_Y_hi
C - - - - - 0x01DDFE 07:DDEE: B0 1B     BCS bra_DE0B
C - - - - - 0x01DE00 07:DDF0: AD D2 00  LDA a: ram_pos_Y_lo_cam
C - - - - - 0x01DE03 07:DDF3: 38        SEC
C - - - - - 0x01DE04 07:DDF4: ED D6 00  SBC a: ram_copy_cam_pos + $02
C - - - - - 0x01DE07 07:DDF7: AD D3 00  LDA a: ram_pos_Y_hi_cam
C - - - - - 0x01DE0A 07:DDFA: ED D7 00  SBC a: ram_copy_cam_pos + $03
C - - - - - 0x01DE0D 07:DDFD: B0 0C     BCS bra_DE0B
C - - - - - 0x01DE0F 07:DDFF: AD AC 04  LDA ram_min_cam_limit_Y_lo
C - - - - - 0x01DE12 07:DE02: 8D D2 00  STA a: ram_pos_Y_lo_cam
C - - - - - 0x01DE15 07:DE05: AD AD 04  LDA ram_min_cam_limit_Y_hi
C - - - - - 0x01DE18 07:DE08: 8D D3 00  STA a: ram_pos_Y_hi_cam
bra_DE0B:
C - - - - - 0x01DE1B 07:DE0B: AD AE 04  LDA ram_max_cam_limit_Y_lo
C - - - - - 0x01DE1E 07:DE0E: 38        SEC
C - - - - - 0x01DE1F 07:DE0F: ED D2 00  SBC a: ram_pos_Y_lo_cam
C - - - - - 0x01DE22 07:DE12: AD AF 04  LDA ram_max_cam_limit_Y_hi
C - - - - - 0x01DE25 07:DE15: ED D3 00  SBC a: ram_pos_Y_hi_cam
C - - - - - 0x01DE28 07:DE18: B0 19     BCS bra_DE33_RTS
C - - - - - 0x01DE2A 07:DE1A: AD D6 00  LDA a: ram_copy_cam_pos + $02
C - - - - - 0x01DE2D 07:DE1D: 38        SEC
C - - - - - 0x01DE2E 07:DE1E: ED D2 00  SBC a: ram_pos_Y_lo_cam
C - - - - - 0x01DE31 07:DE21: AD D7 00  LDA a: ram_copy_cam_pos + $03
C - - - - - 0x01DE34 07:DE24: ED D3 00  SBC a: ram_pos_Y_hi_cam
C - - - - - 0x01DE37 07:DE27: AD AE 04  LDA ram_max_cam_limit_Y_lo
C - - - - - 0x01DE3A 07:DE2A: 8D D2 00  STA a: ram_pos_Y_lo_cam
C - - - - - 0x01DE3D 07:DE2D: AD AF 04  LDA ram_max_cam_limit_Y_hi
C - - - - - 0x01DE40 07:DE30: 8D D3 00  STA a: ram_pos_Y_hi_cam
bra_DE33_RTS:
C - - - - - 0x01DE43 07:DE33: 60        RTS



sub_DE34:
C - - - - - 0x01DE44 07:DE34: B9 D4 00  LDA a: ram_copy_cam_pos,Y
C - - - - - 0x01DE47 07:DE37: 38        SEC
C - - - - - 0x01DE48 07:DE38: F9 29 00  SBC a: ram_0029,Y
C - - - - - 0x01DE4B 07:DE3B: 99 2D 00  STA a: ram_002D,Y
C - - - - - 0x01DE4E 07:DE3E: B9 D5 00  LDA a: ram_copy_cam_pos + $01,Y
C - - - - - 0x01DE51 07:DE41: F9 2A 00  SBC a: ram_002A,Y
C - - - - - 0x01DE54 07:DE44: 99 2E 00  STA a: ram_002E,Y
C - - - - - 0x01DE57 07:DE47: 08        PHP
C - - - - - 0x01DE58 07:DE48: 10 21     BPL bra_DE6B
C - - - - - 0x01DE5A 07:DE4A: A9 FF     LDA #$FF
C - - - - - 0x01DE5C 07:DE4C: 59 2D 00  EOR a: ram_002D,Y
C - - - - - 0x01DE5F 07:DE4F: 99 2D 00  STA a: ram_002D,Y
C - - - - - 0x01DE62 07:DE52: A9 FF     LDA #$FF
C - - - - - 0x01DE64 07:DE54: 59 2E 00  EOR a: ram_002E,Y
C - - - - - 0x01DE67 07:DE57: 99 2E 00  STA a: ram_002E,Y
C - - - - - 0x01DE6A 07:DE5A: A9 01     LDA #< $0001
C - - - - - 0x01DE6C 07:DE5C: 18        CLC
C - - - - - 0x01DE6D 07:DE5D: 79 2D 00  ADC a: ram_002D,Y
C - - - - - 0x01DE70 07:DE60: 99 2D 00  STA a: ram_002D,Y
C - - - - - 0x01DE73 07:DE63: B9 2E 00  LDA a: ram_002E,Y
C - - - - - 0x01DE76 07:DE66: 69 00     ADC #> $0001
C - - - - - 0x01DE78 07:DE68: 99 2E 00  STA a: ram_002E,Y
bra_DE6B:
C - - - - - 0x01DE7B 07:DE6B: B9 2E 00  LDA a: ram_002E,Y
C - - - - - 0x01DE7E 07:DE6E: D0 0C     BNE bra_DE7C
C - - - - - 0x01DE80 07:DE70: B9 2D 00  LDA a: ram_002D,Y
C - - - - - 0x01DE83 07:DE73: F0 30     BEQ bra_DEA5
C - - - - - 0x01DE85 07:DE75: A9 08     LDA #$08
C - - - - - 0x01DE87 07:DE77: D9 2D 00  CMP a: ram_002D,Y
C - - - - - 0x01DE8A 07:DE7A: 10 29     BPL bra_DEA5
bra_DE7C:
C - - - - - 0x01DE8C 07:DE7C: 28        PLP
C - - - - - 0x01DE8D 07:DE7D: 08        PHP
C - - - - - 0x01DE8E 07:DE7E: 10 14     BPL bra_DE94
C - - - - - 0x01DE90 07:DE80: A9 03     LDA #< $0003
C - - - - - 0x01DE92 07:DE82: 18        CLC
C - - - - - 0x01DE93 07:DE83: 79 D4 00  ADC a: ram_copy_cam_pos,Y
C - - - - - 0x01DE96 07:DE86: 99 29 00  STA a: ram_0029,Y
C - - - - - 0x01DE99 07:DE89: B9 D5 00  LDA a: ram_copy_cam_pos + $01,Y
C - - - - - 0x01DE9C 07:DE8C: 69 00     ADC #> $0003
C - - - - - 0x01DE9E 07:DE8E: 99 2A 00  STA a: ram_002A,Y
C - - - - - 0x01DEA1 07:DE91: 4C A5 DE  JMP loc_DEA5
bra_DE94:
C - - - - - 0x01DEA4 07:DE94: B9 D4 00  LDA a: ram_copy_cam_pos,Y
C - - - - - 0x01DEA7 07:DE97: 38        SEC
C - - - - - 0x01DEA8 07:DE98: E9 03     SBC #< $0003
C - - - - - 0x01DEAA 07:DE9A: 99 29 00  STA a: ram_0029,Y
C - - - - - 0x01DEAD 07:DE9D: B9 D5 00  LDA a: ram_copy_cam_pos + $01,Y
C - - - - - 0x01DEB0 07:DEA0: E9 00     SBC #> $0003
C - - - - - 0x01DEB2 07:DEA2: 99 2A 00  STA a: ram_002A,Y
bra_DEA5:
loc_DEA5:
C D 2 - - - 0x01DEB5 07:DEA5: 68        PLA
C - - - - - 0x01DEB6 07:DEA6: 60        RTS



sub_DEA7:
; bzk garbage
- - - - - - 0x01DEB7 07:DEA7: B9 77 00  LDA a: ram_pos_X_lo,Y
- - - - - - 0x01DEBA 07:DEAA: 18        CLC
- - - - - - 0x01DEBB 07:DEAB: 65 29     ADC ram_0029
- - - - - - 0x01DEBD 07:DEAD: 85 29     STA ram_0029
- - - - - - 0x01DEBF 07:DEAF: B9 80 00  LDA a: ram_pos_X_hi,Y
- - - - - - 0x01DEC2 07:DEB2: 65 2A     ADC ram_002A
- - - - - - 0x01DEC4 07:DEB4: 85 2A     STA ram_002A
- - - - - - 0x01DEC6 07:DEB6: B9 92 00  LDA a: ram_pos_Y_lo,Y
- - - - - - 0x01DEC9 07:DEB9: 18        CLC
- - - - - - 0x01DECA 07:DEBA: 65 2B     ADC ram_002B
- - - - - - 0x01DECC 07:DEBC: 85 2B     STA ram_002B
- - - - - - 0x01DECE 07:DEBE: B9 9B 00  LDA a: ram_pos_Y_hi,Y
- - - - - - 0x01DED1 07:DEC1: 65 2C     ADC ram_002C
- - - - - - 0x01DED3 07:DEC3: 85 2C     STA ram_002C
- - - - - - 0x01DED5 07:DEC5: B9 4A 00  LDA a: ram_004A_obj,Y
- - - - - - 0x01DED8 07:DEC8: 30 0F     BMI bra_DED9_RTS    ; if con_004A_80
- - - - - - 0x01DEDA 07:DECA: B9 AD 00  LDA a: ram_pos_Z_lo,Y
- - - - - - 0x01DEDD 07:DECD: 18        CLC
- - - - - - 0x01DEDE 07:DECE: 65 2B     ADC ram_002B
- - - - - - 0x01DEE0 07:DED0: 85 2B     STA ram_002B
- - - - - - 0x01DEE2 07:DED2: B9 B6 00  LDA a: ram_pos_Z_hi,Y
- - - - - - 0x01DEE5 07:DED5: 65 2C     ADC ram_002C
- - - - - - 0x01DEE7 07:DED7: 85 2C     STA ram_002C
bra_DED9_RTS:
- - - - - - 0x01DEE9 07:DED9: 60        RTS



sub_DEDA:
C - - - - - 0x01DEEA 07:DEDA: AD D0 00  LDA a: ram_pos_X_lo_cam
C - - - - - 0x01DEED 07:DEDD: 85 E7     STA ram_00E7
C - - - - - 0x01DEEF 07:DEDF: A9 00     LDA #$00
C - - - - - 0x01DEF1 07:DEE1: 85 2F     STA ram_002F
C - - - - - 0x01DEF3 07:DEE3: 85 30     STA ram_0030
C - - - - - 0x01DEF5 07:DEE5: 85 2B     STA ram_002B
C - - - - - 0x01DEF7 07:DEE7: 85 2C     STA ram_002C
C - - - - - 0x01DEF9 07:DEE9: AD D2 00  LDA a: ram_pos_Y_lo_cam
C - - - - - 0x01DEFC 07:DEEC: 18        CLC
C - - - - - 0x01DEFD 07:DEED: 69 EF     ADC #< $00EF
C - - - - - 0x01DEFF 07:DEEF: 85 29     STA ram_0029
C - - - - - 0x01DF01 07:DEF1: AD D3 00  LDA a: ram_pos_Y_hi_cam
C - - - - - 0x01DF04 07:DEF4: 69 00     ADC #> $00EF
C - - - - - 0x01DF06 07:DEF6: 85 2A     STA ram_002A
C - - - - - 0x01DF08 07:DEF8: A2 09     LDX #$09
bra_DEFA_loop:
C - - - - - 0x01DF0A 07:DEFA: A5 2A     LDA ram_002A
C - - - - - 0x01DF0C 07:DEFC: 38        SEC
C - - - - - 0x01DF0D 07:DEFD: E9 F0     SBC #< $00F0
C - - - - - 0x01DF0F 07:DEFF: 85 2D     STA ram_002D
C - - - - - 0x01DF11 07:DF01: A5 2C     LDA ram_002C
C - - - - - 0x01DF13 07:DF03: E9 00     SBC #> $00F0
C - - - - - 0x01DF15 07:DF05: 85 2E     STA ram_002E
C - - - - - 0x01DF17 07:DF07: 90 08     BCC bra_DF11
C - - - - - 0x01DF19 07:DF09: A5 2D     LDA ram_002D
C - - - - - 0x01DF1B 07:DF0B: 85 2A     STA ram_002A
C - - - - - 0x01DF1D 07:DF0D: A5 2E     LDA ram_002E
C - - - - - 0x01DF1F 07:DF0F: 85 2C     STA ram_002C
bra_DF11:
C - - - - - 0x01DF21 07:DF11: 26 2F     ROL ram_002F
C - - - - - 0x01DF23 07:DF13: 06 29     ASL ram_0029
C - - - - - 0x01DF25 07:DF15: 26 2A     ROL ram_002A
C - - - - - 0x01DF27 07:DF17: 26 2C     ROL ram_002C
C - - - - - 0x01DF29 07:DF19: CA        DEX
C - - - - - 0x01DF2A 07:DF1A: D0 DE     BNE bra_DEFA_loop
C - - - - - 0x01DF2C 07:DF1C: 46 2C     LSR ram_002C
C - - - - - 0x01DF2E 07:DF1E: 66 2A     ROR ram_002A
C - - - - - 0x01DF30 07:DF20: A9 EF     LDA #$EF
C - - - - - 0x01DF32 07:DF22: 38        SEC
C - - - - - 0x01DF33 07:DF23: E5 2A     SBC ram_002A
C - - - - - 0x01DF35 07:DF25: 85 E6     STA ram_00E6
C - - - - - 0x01DF37 07:DF27: A5 2F     LDA ram_002F
C - - - - - 0x01DF39 07:DF29: 29 01     AND #$01
C - - - - - 0x01DF3B 07:DF2B: 0A        ASL
C - - - - - 0x01DF3C 07:DF2C: 49 02     EOR #$02
C - - - - - 0x01DF3E 07:DF2E: 85 3A     STA ram_003A    ; base nametable? used at 0x01D9CB
C - - - - - 0x01DF40 07:DF30: A5 F4     LDA ram_irq_handler
C - - - - - 0x01DF42 07:DF32: C9 02     CMP #con_irq_green_heli
C - - - - - 0x01DF44 07:DF34: D0 76     BNE bra_DFAC_RTS
C - - - - - 0x01DF46 07:DF36: AD D0 00  LDA a: ram_pos_X_lo_cam
C - - - - - 0x01DF49 07:DF39: 38        SEC
C - - - - - 0x01DF4A 07:DF3A: ED F5 00  SBC a: ram_00F5
C - - - - - 0x01DF4D 07:DF3D: 85 19     STA ram_0019
C - - - - - 0x01DF4F 07:DF3F: AD D1 00  LDA a: ram_pos_X_hi_cam
C - - - - - 0x01DF52 07:DF42: E9 00     SBC #$00
C - - - - - 0x01DF54 07:DF44: 85 1A     STA ram_001A
C - - - - - 0x01DF56 07:DF46: AD D2 00  LDA a: ram_pos_Y_lo_cam
C - - - - - 0x01DF59 07:DF49: 38        SEC
C - - - - - 0x01DF5A 07:DF4A: ED F6 00  SBC a: ram_00F6
C - - - - - 0x01DF5D 07:DF4D: 85 1B     STA ram_001B
C - - - - - 0x01DF5F 07:DF4F: AD D3 00  LDA a: ram_pos_Y_hi_cam
C - - - - - 0x01DF62 07:DF52: E9 00     SBC #$00
C - - - - - 0x01DF64 07:DF54: 85 1C     STA ram_001C
C - - - - - 0x01DF66 07:DF56: A5 19     LDA ram_0019
C - - - - - 0x01DF68 07:DF58: 8D 64 06  STA ram_0664
C - - - - - 0x01DF6B 07:DF5B: A9 00     LDA #$00
C - - - - - 0x01DF6D 07:DF5D: 85 2F     STA ram_002F
C - - - - - 0x01DF6F 07:DF5F: 85 30     STA ram_0030
C - - - - - 0x01DF71 07:DF61: 85 2B     STA ram_002B
C - - - - - 0x01DF73 07:DF63: 85 2C     STA ram_002C
C - - - - - 0x01DF75 07:DF65: A5 1B     LDA ram_001B
C - - - - - 0x01DF77 07:DF67: 18        CLC
C - - - - - 0x01DF78 07:DF68: 69 EF     ADC #< $00EF
C - - - - - 0x01DF7A 07:DF6A: 85 29     STA ram_0029
C - - - - - 0x01DF7C 07:DF6C: A5 1C     LDA ram_001C
C - - - - - 0x01DF7E 07:DF6E: 69 00     ADC #> $00EF
C - - - - - 0x01DF80 07:DF70: 85 2A     STA ram_002A
C - - - - - 0x01DF82 07:DF72: A2 09     LDX #$09
bra_DF74_loop:
C - - - - - 0x01DF84 07:DF74: A5 2A     LDA ram_002A
C - - - - - 0x01DF86 07:DF76: 38        SEC
C - - - - - 0x01DF87 07:DF77: E9 F0     SBC #< $00F0
C - - - - - 0x01DF89 07:DF79: 85 2D     STA ram_002D
C - - - - - 0x01DF8B 07:DF7B: A5 2C     LDA ram_002C
C - - - - - 0x01DF8D 07:DF7D: E9 00     SBC #> $00F0
C - - - - - 0x01DF8F 07:DF7F: 85 2E     STA ram_002E
C - - - - - 0x01DF91 07:DF81: 90 08     BCC bra_DF8B
C - - - - - 0x01DF93 07:DF83: A5 2D     LDA ram_002D
C - - - - - 0x01DF95 07:DF85: 85 2A     STA ram_002A
C - - - - - 0x01DF97 07:DF87: A5 2E     LDA ram_002E
C - - - - - 0x01DF99 07:DF89: 85 2C     STA ram_002C
bra_DF8B:
C - - - - - 0x01DF9B 07:DF8B: 26 2F     ROL ram_002F
C - - - - - 0x01DF9D 07:DF8D: 06 29     ASL ram_0029
C - - - - - 0x01DF9F 07:DF8F: 26 2A     ROL ram_002A
C - - - - - 0x01DFA1 07:DF91: 26 2C     ROL ram_002C
C - - - - - 0x01DFA3 07:DF93: CA        DEX
C - - - - - 0x01DFA4 07:DF94: D0 DE     BNE bra_DF74_loop
C - - - - - 0x01DFA6 07:DF96: 46 2C     LSR ram_002C
C - - - - - 0x01DFA8 07:DF98: 66 2A     ROR ram_002A
C - - - - - 0x01DFAA 07:DF9A: A9 EF     LDA #$EF
C - - - - - 0x01DFAC 07:DF9C: 38        SEC
C - - - - - 0x01DFAD 07:DF9D: E5 2A     SBC ram_002A
C - - - - - 0x01DFAF 07:DF9F: 8D 65 06  STA ram_0665
C - - - - - 0x01DFB2 07:DFA2: A5 2F     LDA ram_002F
C - - - - - 0x01DFB4 07:DFA4: 29 01     AND #$01
C - - - - - 0x01DFB6 07:DFA6: 0A        ASL
C - - - - - 0x01DFB7 07:DFA7: 49 02     EOR #$02
C - - - - - 0x01DFB9 07:DFA9: 8D 66 06  STA ram_0666
bra_DFAC_RTS:
C - - - - - 0x01DFBC 07:DFAC: 60        RTS



sub_DFAD:
C - - - - - 0x01DFBD 07:DFAD: AD D0 00  LDA a: ram_pos_X_lo_cam
C - - - - - 0x01DFC0 07:DFB0: 85 2D     STA ram_002D
C - - - - - 0x01DFC2 07:DFB2: AD D1 00  LDA a: ram_pos_X_hi_cam
C - - - - - 0x01DFC5 07:DFB5: 85 2E     STA ram_002E
C - - - - - 0x01DFC7 07:DFB7: AD D2 00  LDA a: ram_pos_Y_lo_cam
C - - - - - 0x01DFCA 07:DFBA: 85 2F     STA ram_002F
C - - - - - 0x01DFCC 07:DFBC: AD D3 00  LDA a: ram_pos_Y_hi_cam
C - - - - - 0x01DFCF 07:DFBF: 85 30     STA ram_0030
C - - - - - 0x01DFD1 07:DFC1: 20 C4 E0  JSR sub_E0C4
C - - - - - 0x01DFD4 07:DFC4: A9 00     LDA #$00
C - - - - - 0x01DFD6 07:DFC6: 85 19     STA ram_0019
C - - - - - 0x01DFD8 07:DFC8: 20 59 E0  JSR sub_E059
C - - - - - 0x01DFDB 07:DFCB: 90 1D     BCC bra_DFEA_RTS
C - - - - - 0x01DFDD 07:DFCD: AD D4 00  LDA a: ram_copy_cam_pos
C - - - - - 0x01DFE0 07:DFD0: 85 2D     STA ram_002D
C - - - - - 0x01DFE2 07:DFD2: AD D5 00  LDA a: ram_copy_cam_pos + $01
C - - - - - 0x01DFE5 07:DFD5: 85 2E     STA ram_002E
C - - - - - 0x01DFE7 07:DFD7: AD D6 00  LDA a: ram_copy_cam_pos + $02
C - - - - - 0x01DFEA 07:DFDA: 85 2F     STA ram_002F
C - - - - - 0x01DFEC 07:DFDC: AD D7 00  LDA a: ram_copy_cam_pos + $03
C - - - - - 0x01DFEF 07:DFDF: 85 30     STA ram_0030
C - - - - - 0x01DFF1 07:DFE1: 20 C4 E0  JSR sub_E0C4
C - - - - - 0x01DFF4 07:DFE4: 20 59 E0  JSR sub_E059
C - - - - - 0x01DFF7 07:DFE7: 20 EB DF  JSR sub_DFEB
bra_DFEA_RTS:
C - - - - - 0x01DFFA 07:DFEA: 60        RTS



sub_DFEB:
C - - - - - 0x01DFFB 07:DFEB: A0 00     LDY #$00
C - - - - - 0x01DFFD 07:DFED: 38        SEC
C - - - - - 0x01DFFE 07:DFEE: AD D0 00  LDA a: ram_pos_X_lo_cam
C - - - - - 0x01E001 07:DFF1: F1 29     SBC (ram_0029),Y
C - - - - - 0x01E003 07:DFF3: C8        INY ; 01
C - - - - - 0x01E004 07:DFF4: AD D1 00  LDA a: ram_pos_X_hi_cam
C - - - - - 0x01E007 07:DFF7: F1 29     SBC (ram_0029),Y
C - - - - - 0x01E009 07:DFF9: B0 0C     BCS bra_E007
C - - - - - 0x01E00B 07:DFFB: 88        DEY ; 00
C - - - - - 0x01E00C 07:DFFC: B1 29     LDA (ram_0029),Y
C - - - - - 0x01E00E 07:DFFE: 8D D0 00  STA a: ram_pos_X_lo_cam
C D 3 - - - 0x01E011 07:E001: C8        INY ; 01
C - - - - - 0x01E012 07:E002: B1 29     LDA (ram_0029),Y
C - - - - - 0x01E014 07:E004: 8D D1 00  STA a: ram_pos_X_hi_cam
bra_E007:
C - - - - - 0x01E017 07:E007: C8        INY ; 02
C - - - - - 0x01E018 07:E008: 38        SEC
C - - - - - 0x01E019 07:E009: B1 29     LDA (ram_0029),Y
C - - - - - 0x01E01B 07:E00B: ED D0 00  SBC a: ram_pos_X_lo_cam
C - - - - - 0x01E01E 07:E00E: C8        INY ; 03
C - - - - - 0x01E01F 07:E00F: B1 29     LDA (ram_0029),Y
C - - - - - 0x01E021 07:E011: ED D1 00  SBC a: ram_pos_X_hi_cam
C - - - - - 0x01E024 07:E014: B0 0C     BCS bra_E022
C - - - - - 0x01E026 07:E016: 88        DEY ; 02
C - - - - - 0x01E027 07:E017: B1 29     LDA (ram_0029),Y
C - - - - - 0x01E029 07:E019: 8D D0 00  STA a: ram_pos_X_lo_cam
C - - - - - 0x01E02C 07:E01C: C8        INY ; 03
C - - - - - 0x01E02D 07:E01D: B1 29     LDA (ram_0029),Y
C - - - - - 0x01E02F 07:E01F: 8D D1 00  STA a: ram_pos_X_hi_cam
bra_E022:
C - - - - - 0x01E032 07:E022: C8        INY ; 04
C - - - - - 0x01E033 07:E023: 38        SEC
C - - - - - 0x01E034 07:E024: AD D2 00  LDA a: ram_pos_Y_lo_cam
C - - - - - 0x01E037 07:E027: F1 29     SBC (ram_0029),Y
C - - - - - 0x01E039 07:E029: C8        INY ; 05
C - - - - - 0x01E03A 07:E02A: AD D3 00  LDA a: ram_pos_Y_hi_cam
C - - - - - 0x01E03D 07:E02D: F1 29     SBC (ram_0029),Y
C - - - - - 0x01E03F 07:E02F: B0 0C     BCS bra_E03D
C - - - - - 0x01E041 07:E031: 88        DEY ; 04
C - - - - - 0x01E042 07:E032: B1 29     LDA (ram_0029),Y
C - - - - - 0x01E044 07:E034: 8D D2 00  STA a: ram_pos_Y_lo_cam
C - - - - - 0x01E047 07:E037: C8        INY ; 05
C - - - - - 0x01E048 07:E038: B1 29     LDA (ram_0029),Y
C - - - - - 0x01E04A 07:E03A: 8D D3 00  STA a: ram_pos_Y_hi_cam
bra_E03D:
C - - - - - 0x01E04D 07:E03D: C8        INY ; 06
C - - - - - 0x01E04E 07:E03E: 38        SEC
C - - - - - 0x01E04F 07:E03F: B1 29     LDA (ram_0029),Y
C - - - - - 0x01E051 07:E041: ED D2 00  SBC a: ram_pos_Y_lo_cam
C - - - - - 0x01E054 07:E044: C8        INY ; 07
C - - - - - 0x01E055 07:E045: B1 29     LDA (ram_0029),Y
C - - - - - 0x01E057 07:E047: ED D3 00  SBC a: ram_pos_Y_hi_cam
C - - - - - 0x01E05A 07:E04A: B0 0C     BCS bra_E058_RTS
C - - - - - 0x01E05C 07:E04C: 88        DEY ; 06
C - - - - - 0x01E05D 07:E04D: B1 29     LDA (ram_0029),Y
C - - - - - 0x01E05F 07:E04F: 8D D2 00  STA a: ram_pos_Y_lo_cam
C - - - - - 0x01E062 07:E052: C8        INY ; 07
C - - - - - 0x01E063 07:E053: B1 29     LDA (ram_0029),Y
C - - - - - 0x01E065 07:E055: 8D D3 00  STA a: ram_pos_Y_hi_cam
bra_E058_RTS:
C - - - - - 0x01E068 07:E058: 60        RTS



sub_E059:
C - - - - - 0x01E069 07:E059: A9 00     LDA #$00
C - - - - - 0x01E06B 07:E05B: 85 19     STA ram_0019
C - - - - - 0x01E06D 07:E05D: A0 00     LDY #$00
C - - - - - 0x01E06F 07:E05F: 38        SEC
C - - - - - 0x01E070 07:E060: A5 2D     LDA ram_002D    ; pos_X_lo_cam
C - - - - - 0x01E072 07:E062: F1 29     SBC (ram_0029),Y
C - - - - - 0x01E074 07:E064: C8        INY ; 01
C - - - - - 0x01E075 07:E065: A5 2E     LDA ram_002E    ; pos_X_hi_cam
C - - - - - 0x01E077 07:E067: F1 29     SBC (ram_0029),Y
C - - - - - 0x01E079 07:E069: C8        INY ; 02
C - - - - - 0x01E07A 07:E06A: B0 04     BCS bra_E070
C - - - - - 0x01E07C 07:E06C: A9 01     LDA #$01
C - - - - - 0x01E07E 07:E06E: 85 19     STA ram_0019
bra_E070:
C - - - - - 0x01E080 07:E070: 38        SEC
C - - - - - 0x01E081 07:E071: B1 29     LDA (ram_0029),Y
C - - - - - 0x01E083 07:E073: E5 2D     SBC ram_002D    ; pos_X_lo_cam
C - - - - - 0x01E085 07:E075: C8        INY ; 03
C - - - - - 0x01E086 07:E076: B1 29     LDA (ram_0029),Y
C - - - - - 0x01E088 07:E078: E5 2E     SBC ram_002E    ; pos_X_hi_cam
C - - - - - 0x01E08A 07:E07A: C8        INY ; 04
C - - - - - 0x01E08B 07:E07B: B0 04     BCS bra_E081
C - - - - - 0x01E08D 07:E07D: A9 01     LDA #$01
C - - - - - 0x01E08F 07:E07F: 85 19     STA ram_0019
bra_E081:
C - - - - - 0x01E091 07:E081: 38        SEC
C - - - - - 0x01E092 07:E082: A5 2F     LDA ram_002F    ; pos_Y_lo_cam
C - - - - - 0x01E094 07:E084: F1 29     SBC (ram_0029),Y
C - - - - - 0x01E096 07:E086: C8        INY ; 05
C - - - - - 0x01E097 07:E087: A5 30     LDA ram_0030    ; pos_Y_hi_cam
C - - - - - 0x01E099 07:E089: F1 29     SBC (ram_0029),Y
C - - - - - 0x01E09B 07:E08B: C8        INY ; 06
C - - - - - 0x01E09C 07:E08C: B0 04     BCS bra_E092
C - - - - - 0x01E09E 07:E08E: A9 01     LDA #$01
C - - - - - 0x01E0A0 07:E090: 85 19     STA ram_0019
bra_E092:
C - - - - - 0x01E0A2 07:E092: 38        SEC
C - - - - - 0x01E0A3 07:E093: B1 29     LDA (ram_0029),Y
C - - - - - 0x01E0A5 07:E095: E5 2F     SBC ram_002F    ; pos_Y_lo_cam
C - - - - - 0x01E0A7 07:E097: C8        INY ; 07
C - - - - - 0x01E0A8 07:E098: B1 29     LDA (ram_0029),Y
C - - - - - 0x01E0AA 07:E09A: E5 30     SBC ram_0030    ; pos_Y_hi_cam
C - - - - - 0x01E0AC 07:E09C: C8        INY ; 08
C - - - - - 0x01E0AD 07:E09D: B0 04     BCS bra_E0A3
C - - - - - 0x01E0AF 07:E09F: A9 01     LDA #$01
C - - - - - 0x01E0B1 07:E0A1: 85 19     STA ram_0019
bra_E0A3:
C - - - - - 0x01E0B3 07:E0A3: A5 19     LDA ram_0019
C - - - - - 0x01E0B5 07:E0A5: F0 1B     BEQ bra_E0C2
C - - - - - 0x01E0B7 07:E0A7: 98        TYA ; 08
C - - - - - 0x01E0B8 07:E0A8: 18        CLC
C - - - - - 0x01E0B9 07:E0A9: 65 29     ADC ram_0029
C - - - - - 0x01E0BB 07:E0AB: 85 29     STA ram_0029
C - - - - - 0x01E0BD 07:E0AD: A5 2A     LDA ram_002A
C - - - - - 0x01E0BF 07:E0AF: 69 00     ADC #$00
C - - - - - 0x01E0C1 07:E0B1: 85 2A     STA ram_002A
C - - - - - 0x01E0C3 07:E0B3: A0 00     LDY #$00
C - - - - - 0x01E0C5 07:E0B5: B1 29     LDA (ram_0029),Y
C - - - - - 0x01E0C7 07:E0B7: C8        INY ; 01 (09)
C - - - - - 0x01E0C8 07:E0B8: 31 29     AND (ram_0029),Y
C - - - - - 0x01E0CA 07:E0BA: 30 04     BMI bra_E0C0
C - - - - - 0x01E0CC 07:E0BC: 20 59 E0  JSR sub_E059
C - - - - - 0x01E0CF 07:E0BF: 60        RTS
bra_E0C0:
C - - - - - 0x01E0D0 07:E0C0: 38        SEC
C - - - - - 0x01E0D1 07:E0C1: 60        RTS
bra_E0C2:
C - - - - - 0x01E0D2 07:E0C2: 18        CLC
C - - - - - 0x01E0D3 07:E0C3: 60        RTS



sub_E0C4:
C - - - - - 0x01E0D4 07:E0C4: AD 22 04  LDA ram_mission_hi
C - - - - - 0x01E0D7 07:E0C7: 0A        ASL
C - - - - - 0x01E0D8 07:E0C8: A8        TAY
C - - - - - 0x01E0D9 07:E0C9: B9 FD E0  LDA tbl_E0FD_offset,Y
C - - - - - 0x01E0DC 07:E0CC: 85 29     STA ram_0029
C - - - - - 0x01E0DE 07:E0CE: B9 FE E0  LDA tbl_E0FD_offset + $01,Y
C - - - - - 0x01E0E1 07:E0D1: 85 2A     STA ram_002A
C - - - - - 0x01E0E3 07:E0D3: A5 2F     LDA ram_002F
C - - - - - 0x01E0E5 07:E0D5: 85 2B     STA ram_002B
C - - - - - 0x01E0E7 07:E0D7: AD 30 00  LDA a: ram_0030
C - - - - - 0x01E0EA 07:E0DA: 85 2C     STA ram_002C
C - - - - - 0x01E0EC 07:E0DC: 20 FE C8  JSR sub_C8FE
C - - - - - 0x01E0EF 07:E0DF: A5 05     LDA ram_0005    ; bzk optimize, this LDA is already at 0x01C940
C - - - - - 0x01E0F1 07:E0E1: 0A        ASL
C - - - - - 0x01E0F2 07:E0E2: 0A        ASL
C - - - - - 0x01E0F3 07:E0E3: 18        CLC
C - - - - - 0x01E0F4 07:E0E4: 65 2E     ADC ram_002E
C - - - - - 0x01E0F6 07:E0E6: A8        TAY
C - - - - - 0x01E0F7 07:E0E7: B1 29     LDA (ram_0029),Y
C - - - - - 0x01E0F9 07:E0E9: 85 29     STA ram_0029
C - - - - - 0x01E0FB 07:E0EB: A9 00     LDA #$00
C - - - - - 0x01E0FD 07:E0ED: 85 2A     STA ram_002A
C - - - - - 0x01E0FF 07:E0EF: A5 29     LDA ram_0029
C - - - - - 0x01E101 07:E0F1: 18        CLC
C - - - - - 0x01E102 07:E0F2: 69 6C     ADC #< tbl_E16C
C - - - - - 0x01E104 07:E0F4: 85 29     STA ram_0029
C - - - - - 0x01E106 07:E0F6: A5 2A     LDA ram_002A
C - - - - - 0x01E108 07:E0F8: 69 E1     ADC #> tbl_E16C
C - - - - - 0x01E10A 07:E0FA: 85 2A     STA ram_002A
C - - - - - 0x01E10C 07:E0FC: 60        RTS



tbl_E0FD_offset:
; for 0x01E17C
- D 3 - - - 0x01E10D 07:E0FD: 1D E1     .word _off018_E11D_00
- D 3 - - - 0x01E10F 07:E0FF: 29 E1     .word _off018_E129_01
- D 3 - - - 0x01E111 07:E101: 31 E1     .word _off018_E131_02
- D 3 - - - 0x01E113 07:E103: 32 E1     .word _off018_E132_03
- D 3 - - - 0x01E115 07:E105: 42 E1     .word _off018_E142_04
- D 3 - - - 0x01E117 07:E107: 43 E1     .word _off018_E143_05
- D 3 - - - 0x01E119 07:E109: 4B E1     .word _off018_E14B_06
- D 3 - - - 0x01E11B 07:E10B: 4F E1     .word _off018_E14F_07
- D 3 - - - 0x01E11D 07:E10D: 50 E1     .word _off018_E150_08
- D 3 - - - 0x01E11F 07:E10F: 51 E1     .word _off018_E151_09
- D 3 - - - 0x01E121 07:E111: 52 E1     .word _off018_E152_0A
- D 3 - - - 0x01E123 07:E113: 53 E1     .word _off018_E153_0B
- D 3 - - - 0x01E125 07:E115: 54 E1     .word _off018_E154_0C
- D 3 - - - 0x01E127 07:E117: 5C E1     .word _off018_E15C_0D
- D 3 - - - 0x01E129 07:E119: 5C E1     .word _off018_E15C_0E


; bzk garbage
- - - - - - 0x01E12B 07:E11B: 6C E1     .word _off018_E16C_0F



_off018_E11D_00:
- D 3 - I - 0x01E12D 07:E11D: 00        .byte $00   ; 
- D 3 - I - 0x01E12E 07:E11E: 00        .byte $00   ; 
- D 3 - I - 0x01E12F 07:E11F: 0A        .byte $0A   ; 
- D 3 - I - 0x01E130 07:E120: 00        .byte $00   ; 
- - - - - - 0x01E131 07:E121: 00        .byte $00   ; 
- D 3 - I - 0x01E132 07:E122: 00        .byte $00   ; 
- D 3 - I - 0x01E133 07:E123: 14        .byte $14   ; 
- D 3 - I - 0x01E134 07:E124: 00        .byte $00   ; 
- - - - - - 0x01E135 07:E125: 00        .byte $00   ; 
- - - - - - 0x01E136 07:E126: 00        .byte $00   ; 
- D 3 - I - 0x01E137 07:E127: 14        .byte $14   ; 
- D 3 - I - 0x01E138 07:E128: 00        .byte $00   ; 

_off018_E129_01:
- D 3 - I - 0x01E139 07:E129: 1E        .byte $1E   ; 
- D 3 - I - 0x01E13A 07:E12A: 1E        .byte $1E   ; 
- - - - - - 0x01E13B 07:E12B: 1E        .byte $1E   ; 
- - - - - - 0x01E13C 07:E12C: 1E        .byte $1E   ; 
- D 3 - I - 0x01E13D 07:E12D: 1E        .byte $1E   ; 
- D 3 - I - 0x01E13E 07:E12E: 1E        .byte $1E   ; 
- D 3 - I - 0x01E13F 07:E12F: 1E        .byte $1E   ; 
- - - - - - 0x01E140 07:E130: 1E        .byte $1E   ; 

_off018_E131_02:
- D 3 - I - 0x01E141 07:E131: 30        .byte $30   ; 

_off018_E132_03:
- - - - - - 0x01E142 07:E132: 3A        .byte $3A   ; 
- D 3 - I - 0x01E143 07:E133: 3A        .byte $3A   ; 
- D 3 - I - 0x01E144 07:E134: 3A        .byte $3A   ; 
- D 3 - I - 0x01E145 07:E135: 3A        .byte $3A   ; 
- D 3 - I - 0x01E146 07:E136: 3A        .byte $3A   ; 
- D 3 - I - 0x01E147 07:E137: 3A        .byte $3A   ; 
- - - - - - 0x01E148 07:E138: 3A        .byte $3A   ; 
- - - - - - 0x01E149 07:E139: 3A        .byte $3A   ; 
- D 3 - I - 0x01E14A 07:E13A: 3A        .byte $3A   ; 
- D 3 - I - 0x01E14B 07:E13B: 3A        .byte $3A   ; 
- - - - - - 0x01E14C 07:E13C: 3A        .byte $3A   ; 
- - - - - - 0x01E14D 07:E13D: 3A        .byte $3A   ; 
- - - - - - 0x01E14E 07:E13E: 3A        .byte $3A   ; 
- - - - - - 0x01E14F 07:E13F: 3A        .byte $3A   ; 
- - - - - - 0x01E150 07:E140: 3A        .byte $3A   ; 
- - - - - - 0x01E151 07:E141: 3A        .byte $3A   ; 

_off018_E142_04:
- D 3 - I - 0x01E152 07:E142: 00        .byte $00   ; 

_off018_E143_05:
- D 3 - I - 0x01E153 07:E143: 54        .byte $54   ; 
- D 3 - I - 0x01E154 07:E144: 54        .byte $54   ; 
- D 3 - I - 0x01E155 07:E145: 54        .byte $54   ; 
- D 3 - I - 0x01E156 07:E146: 54        .byte $54   ; 
- D 3 - I - 0x01E157 07:E147: 54        .byte $54   ; 
- D 3 - I - 0x01E158 07:E148: 54        .byte $54   ; 
- D 3 - I - 0x01E159 07:E149: 54        .byte $54   ; 
- D 3 - I - 0x01E15A 07:E14A: 54        .byte $54   ; 

_off018_E14B_06:
- D 3 - I - 0x01E15B 07:E14B: 66        .byte $66   ; 
- D 3 - I - 0x01E15C 07:E14C: 66        .byte $66   ; 
- D 3 - I - 0x01E15D 07:E14D: 66        .byte $66   ; 
- - - - - - 0x01E15E 07:E14E: 66        .byte $66   ; 

_off018_E14F_07:
- D 3 - I - 0x01E15F 07:E14F: 30        .byte $30   ; 

_off018_E150_08:
- D 3 - I - 0x01E160 07:E150: 30        .byte $30   ; 

_off018_E151_09:
- D 3 - I - 0x01E161 07:E151: 30        .byte $30   ; 

_off018_E152_0A:
- D 3 - I - 0x01E162 07:E152: 30        .byte $30   ; 

_off018_E153_0B:
- D 3 - I - 0x01E163 07:E153: 30        .byte $30   ; 

_off018_E154_0C:
- D 3 - I - 0x01E164 07:E154: 70        .byte $70   ; 
- D 3 - I - 0x01E165 07:E155: 70        .byte $70   ; 
- D 3 - I - 0x01E166 07:E156: 70        .byte $70   ; 
- D 3 - I - 0x01E167 07:E157: 70        .byte $70   ; 
- D 3 - I - 0x01E168 07:E158: 70        .byte $70   ; 
- D 3 - I - 0x01E169 07:E159: 70        .byte $70   ; 
- D 3 - I - 0x01E16A 07:E15A: 70        .byte $70   ; 
- - - - - - 0x01E16B 07:E15B: 70        .byte $70   ; 

_off018_E15C_0D:
_off018_E15C_0E:
- D 3 - I - 0x01E16C 07:E15C: 00        .byte $00   ; 
- D 3 - I - 0x01E16D 07:E15D: 00        .byte $00   ; 
- D 3 - I - 0x01E16E 07:E15E: 00        .byte $00   ; 
- - - - - - 0x01E16F 07:E15F: 00        .byte $00   ; 
- - - - - - 0x01E170 07:E160: 00        .byte $00   ; 
- - - - - - 0x01E171 07:E161: 00        .byte $00   ; 
- - - - - - 0x01E172 07:E162: 00        .byte $00   ; 
- - - - - - 0x01E173 07:E163: 00        .byte $00   ; 
- - - - - - 0x01E174 07:E164: 00        .byte $00   ; 
- - - - - - 0x01E175 07:E165: 00        .byte $00   ; 
- - - - - - 0x01E176 07:E166: 00        .byte $00   ; 
- - - - - - 0x01E177 07:E167: 00        .byte $00   ; 
- - - - - - 0x01E178 07:E168: 00        .byte $00   ; 
- - - - - - 0x01E179 07:E169: 00        .byte $00   ; 
- - - - - - 0x01E17A 07:E16A: 00        .byte $00   ; 
- - - - - - 0x01E17B 07:E16B: 00        .byte $00   ; 



_off018_E16C_0F:    ; bzk garbage label
tbl_E16C:
; offset via 0x01E10D
; 00
- D 3 - I - 0x01E17C 07:E16C: 00 00     .word $0000 ; X
- D 3 - I - 0x01E17E 07:E16E: FF 02     .word $02FF ; X
- D 3 - I - 0x01E180 07:E170: 00 00     .word $0000 ; Y
- D 3 - I - 0x01E182 07:E172: 00 00     .word $0000 ; Y

- D 3 - I - 0x01E184 07:E174: FF FF     .word $FFFF ; end token



; 0A
- D 3 - I - 0x01E186 07:E176: 00 02     .word $0200 ; X
- D 3 - I - 0x01E188 07:E178: FF 02     .word $02FF ; X
- D 3 - I - 0x01E18A 07:E17A: 00 00     .word $0000 ; Y
- D 3 - I - 0x01E18C 07:E17C: DF 01     .word $01DF ; Y

- - - - - - 0x01E18E 07:E17E: FF FF     .word $FFFF ; end token



; 14
- D 3 - I - 0x01E190 07:E180: 00 02     .word $0200 ; X
- D 3 - I - 0x01E192 07:E182: FF 02     .word $02FF ; X
- D 3 - I - 0x01E194 07:E184: 00 00     .word $0000 ; Y
- D 3 - I - 0x01E196 07:E186: DF 01     .word $01DF ; Y

- D 3 - I - 0x01E198 07:E188: FF FF     .word $FFFF ; end token



; 1E
- D 3 - I - 0x01E19A 07:E18A: 00 00     .word $0000 ; X
- D 3 - I - 0x01E19C 07:E18C: 80 02     .word $0280 ; X
- D 3 - I - 0x01E19E 07:E18E: F0 00     .word $00F0 ; Y
- D 3 - I - 0x01E1A0 07:E190: F0 00     .word $00F0 ; Y

- D 3 - I - 0x01E1A2 07:E192: 00 00     .word $0000 ; X
- D 3 - I - 0x01E1A4 07:E194: FF 00     .word $00FF ; X
- D 3 - I - 0x01E1A6 07:E196: 00 00     .word $0000 ; Y
- D 3 - I - 0x01E1A8 07:E198: F0 00     .word $00F0 ; Y

- D 3 - I - 0x01E1AA 07:E19A: FF FF     .word $FFFF ; end token



; 30
- D 3 - I - 0x01E1AC 07:E19C: 00 00     .word $0000 ; X
- D 3 - I - 0x01E1AE 07:E19E: 00 00     .word $0000 ; X
- D 3 - I - 0x01E1B0 07:E1A0: 00 00     .word $0000 ; Y
- D 3 - I - 0x01E1B2 07:E1A2: 00 00     .word $0000 ; Y

- D 3 - I - 0x01E1B4 07:E1A4: FF FF     .word $FFFF ; end token




; 3A
- D 3 - I - 0x01E1B6 07:E1A6: 00 01     .word $0100 ; X
- D 3 - I - 0x01E1B8 07:E1A8: 00 03     .word $0300 ; X
- D 3 - I - 0x01E1BA 07:E1AA: 00 00     .word $0000 ; Y
- D 3 - I - 0x01E1BC 07:E1AC: 00 00     .word $0000 ; Y

- D 3 - I - 0x01E1BE 07:E1AE: 00 01     .word $0100 ; X
- D 3 - I - 0x01E1C0 07:E1B0: 00 01     .word $0100 ; X
- D 3 - I - 0x01E1C2 07:E1B2: 00 00     .word $0000 ; Y
- D 3 - I - 0x01E1C4 07:E1B4: E0 01     .word $01E0 ; Y

- D 3 - I - 0x01E1C6 07:E1B6: 00 00     .word $0000 ; X
- D 3 - I - 0x01E1C8 07:E1B8: 00 01     .word $0100 ; X
- D 3 - I - 0x01E1CA 07:E1BA: E0 01     .word $01E0 ; Y
- D 3 - I - 0x01E1CC 07:E1BC: E0 01     .word $01E0 ; Y

- D 3 - I - 0x01E1CE 07:E1BE: FF FF     .word $FFFF ; end token




; 54
- D 3 - I - 0x01E1D0 07:E1C0: 00 00     .word $0000 ; X
- D 3 - I - 0x01E1D2 07:E1C2: FF 03     .word $03FF ; X
- D 3 - I - 0x01E1D4 07:E1C4: EF 00     .word $00EF ; Y
- D 3 - I - 0x01E1D6 07:E1C6: F0 00     .word $00F0 ; Y

- D 3 - I - 0x01E1D8 07:E1C8: 60 00     .word $0060 ; X
- D 3 - I - 0x01E1DA 07:E1CA: FF 01     .word $01FF ; X
- D 3 - I - 0x01E1DC 07:E1CC: 00 00     .word $0000 ; Y
- D 3 - I - 0x01E1DE 07:E1CE: F0 00     .word $00F0 ; Y

- D 3 - I - 0x01E1E0 07:E1D0: FF FF     .word $FFFF ; end token




; 66
- D 3 - I - 0x01E1E2 07:E1D2: 00 00     .word $0000 ; X
- D 3 - I - 0x01E1E4 07:E1D4: FF 01     .word $01FF ; X
- D 3 - I - 0x01E1E6 07:E1D6: 00 00     .word $0000 ; Y
- D 3 - I - 0x01E1E8 07:E1D8: 00 00     .word $0000 ; Y

- D 3 - I - 0x01E1EA 07:E1DA: FF FF     .word $FFFF ; end token




; 70
- D 3 - I - 0x01E1EC 07:E1DC: FF 01     .word $01FF ; X
- D 3 - I - 0x01E1EE 07:E1DE: FF 02     .word $02FF ; X
- D 3 - I - 0x01E1F0 07:E1E0: 00 00     .word $0000 ; Y
- D 3 - I - 0x01E1F2 07:E1E2: 00 00     .word $0000 ; Y

- D 3 - I - 0x01E1F4 07:E1E4: FF 01     .word $01FF ; X
- D 3 - I - 0x01E1F6 07:E1E6: 00 02     .word $0200 ; X
- D 3 - I - 0x01E1F8 07:E1E8: 00 00     .word $0000 ; Y
- D 3 - I - 0x01E1FA 07:E1EA: F0 00     .word $00F0 ; Y

- D 3 - I - 0x01E1FC 07:E1EC: 00 00     .word $0000 ; X
- D 3 - I - 0x01E1FE 07:E1EE: 00 02     .word $0200 ; X
- D 3 - I - 0x01E200 07:E1F0: F0 00     .word $00F0 ; Y
- D 3 - I - 0x01E202 07:E1F2: F0 00     .word $00F0 ; Y

- D 3 - I - 0x01E204 07:E1F4: FF FF     .word $FFFF ; end token



; bzk garbage
- - - - - - 0x01E206 07:E1F6: 00 00     .word $0000 ; X
- - - - - - 0x01E208 07:E1F8: 00 00     .word $0000 ; X
- - - - - - 0x01E20A 07:E1FA: 00 00     .word $0000 ; Y
- - - - - - 0x01E20C 07:E1FC: 00 00     .word $0000 ; Y

- - - - - - 0x01E20E 07:E1FE: FF FF     .word $FFFF ; end token



; bzk garbage
- - - - - - 0x01E210 07:E200: 00 00     .word $0000 ; X
- - - - - - 0x01E212 07:E202: 00 00     .word $0000 ; X
- - - - - - 0x01E214 07:E204: 00 00     .word $0000 ; Y
- - - - - - 0x01E216 07:E206: 00 00     .word $0000 ; Y

- - - - - - 0x01E218 07:E208: FF FF     .word $FFFF ; end token



; bzk garbage
- - - - - - 0x01E21A 07:E20A: 00 00     .word $0000 ; X
- - - - - - 0x01E21C 07:E20C: 00 00     .word $0000 ; X
- - - - - - 0x01E21E 07:E20E: 00 00     .word $0000 ; Y
- - - - - - 0x01E220 07:E210: 00 00     .word $0000 ; Y

- - - - - - 0x01E222 07:E212: FF FF     .word $FFFF ; end token



sub_E214_create_black_screen:
sub_0x01E224_create_black_screen:
; disable everything + black palette
C - - - - - 0x01E224 07:E214: 20 B0 FC  JSR sub_FCB0_prepare_to_disable_interrupts
C - - - - - 0x01E227 07:E217: 20 98 FE  JSR sub_FE98_nmi_off
C - - - - - 0x01E22A 07:E21A: 20 98 E7  JSR sub_E798_disable_rendering
C - - - - - 0x01E22D 07:E21D: AD 02 20  LDA $2002
C - - - - - 0x01E230 07:E220: A9 3F     LDA #> $3F00
C - - - - - 0x01E232 07:E222: 8D 06 20  STA $2006
C - - - - - 0x01E235 07:E225: A9 00     LDA #< $3F00
C - - - - - 0x01E237 07:E227: 8D 06 20  STA $2006
C - - - - - 0x01E23A 07:E22A: A0 00     LDY #$00
C - - - - - 0x01E23C 07:E22C: A9 0F     LDA #$0F
bra_E22E_loop:
C - - - - - 0x01E23E 07:E22E: 8D 07 20  STA $2007
C - - - - - 0x01E241 07:E231: C8        INY
C - - - - - 0x01E242 07:E232: C0 20     CPY #$20
C - - - - - 0x01E244 07:E234: 90 F8     BCC bra_E22E_loop
C - - - - - 0x01E246 07:E236: A9 3F     LDA #> $3F00
C - - - - - 0x01E248 07:E238: 8D 06 20  STA $2006
C - - - - - 0x01E24B 07:E23B: A9 00     LDA #< $3F00
C - - - - - 0x01E24D 07:E23D: 8D 06 20  STA $2006
C - - - - - 0x01E250 07:E240: 8D 06 20  STA $2006
C - - - - - 0x01E253 07:E243: 8D 06 20  STA $2006
C - - - - - 0x01E256 07:E246: 60        RTS



sub_E247:
sub_0x01E257:
C - - - - - 0x01E257 07:E247: AD 8F 04  LDA ram_pal_bg_new
C - - - - - 0x01E25A 07:E24A: CD 91 04  CMP ram_pal_bg_current
C - - - - - 0x01E25D 07:E24D: F0 47     BEQ bra_E296
C - - - - - 0x01E25F 07:E24F: A9 20     LDA #con_E2E6 + $20
C - - - - - 0x01E261 07:E251: 20 E6 E2  JSR sub_E2E6
C - - - - - 0x01E264 07:E254: 90 03     BCC bra_E259
C - - - - - 0x01E266 07:E256: 4C E5 E2  JMP loc_E2E5_RTS
bra_E259:
C - - - - - 0x01E269 07:E259: AD 8F 04  LDA ram_pal_bg_new
C - - - - - 0x01E26C 07:E25C: 8D 91 04  STA ram_pal_bg_current
C - - - - - 0x01E26F 07:E25F: 0A        ASL
C - - - - - 0x01E270 07:E260: AA        TAX
C - - - - - 0x01E271 07:E261: BD FA E2  LDA tbl_E2FA_palette_bg,X
C - - - - - 0x01E274 07:E264: 85 29     STA ram_0029
C - - - - - 0x01E276 07:E266: BD FB E2  LDA tbl_E2FA_palette_bg + $01,X
C - - - - - 0x01E279 07:E269: 85 2A     STA ram_002A
C - - - - - 0x01E27B 07:E26B: AE BC 05  LDX ram_05BC
C - - - - - 0x01E27E 07:E26E: A9 3F     LDA #> $3F00
C - - - - - 0x01E280 07:E270: 9D B1 04  STA ram_ppu_buffer,X
C - - - - - 0x01E283 07:E273: E8        INX
C - - - - - 0x01E284 07:E274: A9 00     LDA #< $3F00
C - - - - - 0x01E286 07:E276: 9D B1 04  STA ram_ppu_buffer,X
C - - - - - 0x01E289 07:E279: E8        INX
C - - - - - 0x01E28A 07:E27A: A9 00     LDA #$00
C - - - - - 0x01E28C 07:E27C: 9D B1 04  STA ram_ppu_buffer,X
C - - - - - 0x01E28F 07:E27F: E8        INX
C - - - - - 0x01E290 07:E280: A9 10     LDA #$10
C - - - - - 0x01E292 07:E282: 9D B1 04  STA ram_ppu_buffer,X
C - - - - - 0x01E295 07:E285: E8        INX
C - - - - - 0x01E296 07:E286: A0 00     LDY #$00
bra_E288_loop:
C - - - - - 0x01E298 07:E288: B1 29     LDA (ram_0029),Y
C - - - - - 0x01E29A 07:E28A: 9D B1 04  STA ram_ppu_buffer,X
C - - - - - 0x01E29D 07:E28D: E8        INX
C - - - - - 0x01E29E 07:E28E: C8        INY
C - - - - - 0x01E29F 07:E28F: C0 10     CPY #$10
C - - - - - 0x01E2A1 07:E291: 90 F5     BCC bra_E288_loop
C - - - - - 0x01E2A3 07:E293: 8E BC 05  STX ram_05BC
bra_E296:
C - - - - - 0x01E2A6 07:E296: AD 90 04  LDA ram_pal_spr_new
C - - - - - 0x01E2A9 07:E299: CD 92 04  CMP ram_pal_spr_current
C - - - - - 0x01E2AC 07:E29C: F0 47     BEQ bra_E2E5_RTS
C - - - - - 0x01E2AE 07:E29E: A9 20     LDA #con_E2E6 + $20
C - - - - - 0x01E2B0 07:E2A0: 20 E6 E2  JSR sub_E2E6
C - - - - - 0x01E2B3 07:E2A3: 90 03     BCC bra_E2A8
C - - - - - 0x01E2B5 07:E2A5: 4C E5 E2  JMP loc_E2E5_RTS
bra_E2A8:
C - - - - - 0x01E2B8 07:E2A8: AD 90 04  LDA ram_pal_spr_new
C - - - - - 0x01E2BB 07:E2AB: 8D 92 04  STA ram_pal_spr_current
C - - - - - 0x01E2BE 07:E2AE: 0A        ASL
C - - - - - 0x01E2BF 07:E2AF: AA        TAX
C - - - - - 0x01E2C0 07:E2B0: BD 60 E3  LDA tbl_E360_palette_spr,X
C - - - - - 0x01E2C3 07:E2B3: 85 29     STA ram_0029
C - - - - - 0x01E2C5 07:E2B5: BD 61 E3  LDA tbl_E360_palette_spr + $01,X
C - - - - - 0x01E2C8 07:E2B8: 85 2A     STA ram_002A
C - - - - - 0x01E2CA 07:E2BA: AE BC 05  LDX ram_05BC
C - - - - - 0x01E2CD 07:E2BD: A9 3F     LDA #> $3F10
C - - - - - 0x01E2CF 07:E2BF: 9D B1 04  STA ram_ppu_buffer,X
C - - - - - 0x01E2D2 07:E2C2: A9 10     LDA #< $3F10
C - - - - - 0x01E2D4 07:E2C4: E8        INX
C - - - - - 0x01E2D5 07:E2C5: 9D B1 04  STA ram_ppu_buffer,X
C - - - - - 0x01E2D8 07:E2C8: A9 00     LDA #$00
C - - - - - 0x01E2DA 07:E2CA: E8        INX
C - - - - - 0x01E2DB 07:E2CB: 9D B1 04  STA ram_ppu_buffer,X
C - - - - - 0x01E2DE 07:E2CE: E8        INX
C - - - - - 0x01E2DF 07:E2CF: A9 10     LDA #$10
C - - - - - 0x01E2E1 07:E2D1: 9D B1 04  STA ram_ppu_buffer,X
C - - - - - 0x01E2E4 07:E2D4: E8        INX
C - - - - - 0x01E2E5 07:E2D5: A0 00     LDY #$00
bra_E2D7_loop:
C - - - - - 0x01E2E7 07:E2D7: B1 29     LDA (ram_0029),Y
C - - - - - 0x01E2E9 07:E2D9: 9D B1 04  STA ram_ppu_buffer,X
C - - - - - 0x01E2EC 07:E2DC: E8        INX
C - - - - - 0x01E2ED 07:E2DD: C8        INY
C - - - - - 0x01E2EE 07:E2DE: C0 10     CPY #$10
C - - - - - 0x01E2F0 07:E2E0: 90 F5     BCC bra_E2D7_loop
C - - - - - 0x01E2F2 07:E2E2: 8E BC 05  STX ram_05BC
bra_E2E5_RTS:
loc_E2E5_RTS:
C D 3 - - - 0x01E2F5 07:E2E5: 60        RTS



loc_E2E6:
sub_E2E6:
sub_0x01E2F6:
C D 3 - - - 0x01E2F6 07:E2E6: 85 19     STA ram_0019
C - - - - - 0x01E2F8 07:E2E8: AD BB 05  LDA ram_05BB
C - - - - - 0x01E2FB 07:E2EB: 38        SEC
C - - - - - 0x01E2FC 07:E2EC: ED BC 05  SBC ram_05BC
C - - - - - 0x01E2FF 07:E2EF: F0 07     BEQ bra_E2F8
C - - - - - 0x01E301 07:E2F1: 38        SEC
C - - - - - 0x01E302 07:E2F2: E5 19     SBC ram_0019
C - - - - - 0x01E304 07:E2F4: B0 02     BCS bra_E2F8
C - - - - - 0x01E306 07:E2F6: 38        SEC
C - - - - - 0x01E307 07:E2F7: 60        RTS
bra_E2F8:
C - - - - - 0x01E308 07:E2F8: 18        CLC
C - - - - - 0x01E309 07:E2F9: 60        RTS



tbl_E2FA_palette_bg:
- D 3 - - - 0x01E30A 07:E2FA: 88 E3     .word _off019_E388_00
- D 3 - - - 0x01E30C 07:E2FC: 98 E3     .word _off019_E398_01
- D 3 - - - 0x01E30E 07:E2FE: A8 E3     .word _off019_E3A8_02
- D 3 - - - 0x01E310 07:E300: B8 E3     .word _off019_E3B8_03
- D 3 - - - 0x01E312 07:E302: C8 E3     .word _off019_E3C8_04
- D 3 - - - 0x01E314 07:E304: D8 E3     .word _off019_E3D8_05
- D 3 - - - 0x01E316 07:E306: E8 E3     .word _off019_E3E8_06
- D 3 - - - 0x01E318 07:E308: F8 E3     .word _off019_E3F8_07
- D 3 - - - 0x01E31A 07:E30A: 08 E4     .word _off019_E408_08
- D 3 - - - 0x01E31C 07:E30C: 18 E4     .word _off019_E418_09
- - - - - - 0x01E31E 07:E30E: 28 E4     .word _off019_E428_0A
- D 3 - - - 0x01E320 07:E310: 38 E4     .word _off019_E438_0B
- D 3 - - - 0x01E322 07:E312: 48 E4     .word _off019_E448_0C
- D 3 - - - 0x01E324 07:E314: 58 E4     .word _off019_E458_0D
- D 3 - - - 0x01E326 07:E316: 68 E4     .word _off019_E468_0E
- - - - - - 0x01E328 07:E318: 78 E4     .word _off019_E478_0F
- - - - - - 0x01E32A 07:E31A: 78 E4     .word _off019_E478_10
- D 3 - - - 0x01E32C 07:E31C: 78 E4     .word _off019_E478_11
- D 3 - - - 0x01E32E 07:E31E: 88 E4     .word _off019_E488_12
- D 3 - - - 0x01E330 07:E320: 98 E4     .word _off019_E498_13
- D 3 - - - 0x01E332 07:E322: A8 E4     .word _off019_E4A8_14
- D 3 - - - 0x01E334 07:E324: B8 E4     .word _off019_E4B8_15
- D 3 - - - 0x01E336 07:E326: C8 E4     .word _off019_E4C8_16
- D 3 - - - 0x01E338 07:E328: D8 E4     .word _off019_E4D8_17
- D 3 - - - 0x01E33A 07:E32A: E8 E4     .word _off019_E4E8_18
- D 3 - - - 0x01E33C 07:E32C: F8 E4     .word _off019_E4F8_19
- D 3 - - - 0x01E33E 07:E32E: 38 E5     .word _off019_E538_1A
- D 3 - - - 0x01E340 07:E330: F8 E4     .word _off019_E4F8_1B
- D 3 - - - 0x01E342 07:E332: 48 E5     .word _off019_E548_1C
- D 3 - - - 0x01E344 07:E334: 58 E5     .word _off019_E558_1D
- - - - - - 0x01E346 07:E336: 68 E5     .word _off019_E568_1E
- D 3 - - - 0x01E348 07:E338: 78 E5     .word _off019_E578_1F
- D 3 - - - 0x01E34A 07:E33A: 88 E5     .word _off019_E588_20
- D 3 - - - 0x01E34C 07:E33C: 98 E5     .word _off019_E598_21
- D 3 - - - 0x01E34E 07:E33E: A8 E5     .word _off019_E5A8_22
- D 3 - - - 0x01E350 07:E340: B8 E5     .word _off019_E5B8_23
- D 3 - - - 0x01E352 07:E342: C8 E5     .word _off019_E5C8_24
- - - - - - 0x01E354 07:E344: D8 E5     .word _off019_E5D8_25
- D 3 - - - 0x01E356 07:E346: E8 E5     .word _off019_E5E8_26
- D 3 - - - 0x01E358 07:E348: F8 E5     .word _off019_E5F8_27
- - - - - - 0x01E35A 07:E34A: F8 E5     .word _off019_E5F8_28
- D 3 - - - 0x01E35C 07:E34C: 08 E6     .word _off019_E608_29
- D 3 - - - 0x01E35E 07:E34E: 18 E6     .word _off019_E618_2A
- D 3 - - - 0x01E360 07:E350: 28 E6     .word _off019_E628_2B
- D 3 - - - 0x01E362 07:E352: 38 E6     .word _off019_E638_2C
- D 3 - - - 0x01E364 07:E354: 08 E5     .word _off019_E508_2D
- D 3 - - - 0x01E366 07:E356: 18 E5     .word _off019_E518_2E
- D 3 - - - 0x01E368 07:E358: 28 E5     .word _off019_E528_2F
- D 3 - - - 0x01E36A 07:E35A: 48 E6     .word _off019_E648_30
- D 3 - - - 0x01E36C 07:E35C: 58 E6     .word _off019_E658_31
- D 3 - - - 0x01E36E 07:E35E: 68 E6     .word _off019_E668_32



tbl_E360_palette_spr:
- D 3 - - - 0x01E370 07:E360: 78 E6     .word _off020_E678_00
- D 3 - - - 0x01E372 07:E362: 88 E6     .word _off020_E688_01
- D 3 - - - 0x01E374 07:E364: 98 E6     .word _off020_E698_02
- - - - - - 0x01E376 07:E366: A8 E6     .word _off020_E6A8_03
- D 3 - - - 0x01E378 07:E368: A8 E6     .word _off020_E6A8_04
- D 3 - - - 0x01E37A 07:E36A: B8 E6     .word _off020_E6B8_05
- D 3 - - - 0x01E37C 07:E36C: C8 E6     .word _off020_E6C8_06
- D 3 - - - 0x01E37E 07:E36E: D8 E6     .word _off020_E6D8_07
- D 3 - - - 0x01E380 07:E370: E8 E6     .word _off020_E6E8_08
- D 3 - - - 0x01E382 07:E372: F8 E6     .word _off020_E6F8_09
- D 3 - - - 0x01E384 07:E374: 08 E7     .word _off020_E708_0A
- - - - - - 0x01E386 07:E376: 08 E7     .word _off020_E708_0B
- D 3 - - - 0x01E388 07:E378: 18 E7     .word _off020_E718_0C
- D 3 - - - 0x01E38A 07:E37A: 28 E7     .word _off020_E728_0D
- D 3 - - - 0x01E38C 07:E37C: 38 E7     .word _off020_E738_0E
- D 3 - - - 0x01E38E 07:E37E: 48 E7     .word _off020_E748_0F
- D 3 - - - 0x01E390 07:E380: 58 E7     .word _off020_E758_10
- D 3 - - - 0x01E392 07:E382: 68 E7     .word _off020_E768_11
- D 3 - - - 0x01E394 07:E384: 78 E7     .word _off020_E778_12
- D 3 - - - 0x01E396 07:E386: 88 E7     .word _off020_E788_13



_off019_E388_00:
- D 3 - I - 0x01E398 07:E388: 0F        .byte $0F, $07, $16, $28   ; 
- D 3 - I - 0x01E39C 07:E38C: 0F        .byte $0F, $03, $13, $20   ; 
- D 3 - I - 0x01E3A0 07:E390: 0F        .byte $0F, $11, $22, $20   ; 
- D 3 - I - 0x01E3A4 07:E394: 0F        .byte $0F, $08, $18, $28   ; 

_off019_E398_01:
- D 3 - I - 0x01E3A8 07:E398: 0F        .byte $0F, $08, $18, $28   ; 
- D 3 - I - 0x01E3AC 07:E39C: 0F        .byte $0F, $02, $12, $22   ; 
- D 3 - I - 0x01E3B0 07:E3A0: 0F        .byte $0F, $03, $13, $32   ; 
- D 3 - I - 0x01E3B4 07:E3A4: 0F        .byte $0F, $09, $1A, $2A   ; 

_off019_E3A8_02:
- D 3 - I - 0x01E3B8 07:E3A8: 0F        .byte $0F, $08, $18, $28   ; 
- D 3 - I - 0x01E3BC 07:E3AC: 0F        .byte $0F, $0C, $1C, $20   ; 
- D 3 - I - 0x01E3C0 07:E3B0: 0F        .byte $0F, $01, $11, $21   ; 
- D 3 - I - 0x01E3C4 07:E3B4: 0F        .byte $0F, $09, $19, $29   ; 

_off019_E3B8_03:
- D 3 - I - 0x01E3C8 07:E3B8: 0F        .byte $0F, $03, $13, $23   ; 
- D 3 - I - 0x01E3CC 07:E3BC: 0F        .byte $0F, $02, $12, $22   ; 
- D 3 - I - 0x01E3D0 07:E3C0: 0F        .byte $0F, $0C, $1C, $3C   ; 
- D 3 - I - 0x01E3D4 07:E3C4: 0F        .byte $0F, $07, $17, $27   ; 

_off019_E3C8_04:
- D 3 - I - 0x01E3D8 07:E3C8: 0F        .byte $0F, $03, $13, $23   ; 
- D 3 - I - 0x01E3DC 07:E3CC: 0F        .byte $0F, $02, $12, $22   ; 
- D 3 - I - 0x01E3E0 07:E3D0: 0F        .byte $0F, $0C, $1C, $3C   ; 
- D 3 - I - 0x01E3E4 07:E3D4: 0F        .byte $0F, $07, $17, $27   ; 

_off019_E3D8_05:
- D 3 - I - 0x01E3E8 07:E3D8: 0F        .byte $0F, $09, $19, $29   ; 
- D 3 - I - 0x01E3EC 07:E3DC: 0F        .byte $0F, $21, $3C, $30   ; 
- D 3 - I - 0x01E3F0 07:E3E0: 0F        .byte $0F, $01, $11, $21   ; 
- D 3 - I - 0x01E3F4 07:E3E4: 0F        .byte $0F, $08, $18, $28   ; 

_off019_E3E8_06:
- D 3 - I - 0x01E3F8 07:E3E8: 0F        .byte $0F, $08, $18, $28   ; 
- D 3 - I - 0x01E3FC 07:E3EC: 0F        .byte $0F, $0C, $00, $20   ; 
- D 3 - I - 0x01E400 07:E3F0: 0F        .byte $0F, $06, $16, $26   ; 
- D 3 - I - 0x01E404 07:E3F4: 0F        .byte $0F, $03, $13, $23   ; 

_off019_E3F8_07:
- D 3 - I - 0x01E408 07:E3F8: 0F        .byte $0F, $08, $18, $28   ; 
- D 3 - I - 0x01E40C 07:E3FC: 0F        .byte $0F, $0C, $00, $10   ; 
- D 3 - I - 0x01E410 07:E400: 0F        .byte $0F, $07, $17, $27   ; 
- D 3 - I - 0x01E414 07:E404: 0F        .byte $0F, $02, $12, $22   ; 

_off019_E408_08:
- D 3 - I - 0x01E418 07:E408: 0F        .byte $0F, $08, $18, $28   ; 
- D 3 - I - 0x01E41C 07:E40C: 0F        .byte $0F, $0C, $00, $10   ; 
- D 3 - I - 0x01E420 07:E410: 0F        .byte $0F, $07, $17, $27   ; 
- D 3 - I - 0x01E424 07:E414: 0F        .byte $0F, $02, $12, $22   ; 

_off019_E418_09:
- D 3 - I - 0x01E428 07:E418: 0F        .byte $0F, $08, $18, $28   ; 
- D 3 - I - 0x01E42C 07:E41C: 0F        .byte $0F, $0C, $00, $10   ; 
- D 3 - I - 0x01E430 07:E420: 0F        .byte $0F, $07, $17, $27   ; 
- D 3 - I - 0x01E434 07:E424: 0F        .byte $0F, $02, $12, $22   ; 

_off019_E428_0A:
- - - - - - 0x01E438 07:E428: 0F        .byte $0F, $08, $18, $28   ; 
- - - - - - 0x01E43C 07:E42C: 0F        .byte $0F, $0C, $00, $10   ; 
- - - - - - 0x01E440 07:E430: 0F        .byte $0F, $07, $17, $27   ; 
- - - - - - 0x01E444 07:E434: 0F        .byte $0F, $02, $12, $22   ; 

_off019_E438_0B:
- D 3 - I - 0x01E448 07:E438: 0F        .byte $0F, $08, $18, $28   ; 
- D 3 - I - 0x01E44C 07:E43C: 0F        .byte $0F, $0C, $00, $10   ; 
- D 3 - I - 0x01E450 07:E440: 0F        .byte $0F, $07, $17, $27   ; 
- D 3 - I - 0x01E454 07:E444: 0F        .byte $0F, $02, $12, $22   ; 

_off019_E448_0C:
- D 3 - I - 0x01E458 07:E448: 0F        .byte $0F, $12, $21, $3B   ; 
- D 3 - I - 0x01E45C 07:E44C: 0F        .byte $0F, $13, $23, $30   ; 
- D 3 - I - 0x01E460 07:E450: 0F        .byte $0F, $08, $18, $28   ; 
- D 3 - I - 0x01E464 07:E454: 0F        .byte $0F, $02, $12, $21   ; 

_off019_E458_0D:
- D 3 - I - 0x01E468 07:E458: 0F        .byte $0F, $07, $17, $27   ; 
- D 3 - I - 0x01E46C 07:E45C: 0F        .byte $0F, $00, $10, $30   ; 
- D 3 - I - 0x01E470 07:E460: 0F        .byte $0F, $01, $11, $21   ; 
- D 3 - I - 0x01E474 07:E464: 0F        .byte $0F, $08, $18, $28   ; 

_off019_E468_0E:
- D 3 - I - 0x01E478 07:E468: 0F        .byte $0F, $07, $17, $27   ; 
- D 3 - I - 0x01E47C 07:E46C: 0F        .byte $0F, $04, $14, $34   ; 
- D 3 - I - 0x01E480 07:E470: 0F        .byte $0F, $08, $18, $28   ; 
- D 3 - I - 0x01E484 07:E474: 0F        .byte $0F, $19, $29, $39   ; 

_off019_E478_0F:
_off019_E478_10:
_off019_E478_11:
- D 3 - I - 0x01E488 07:E478: 0F        .byte $0F, $28, $16, $06   ; 
- D 3 - I - 0x01E48C 07:E47C: 0F        .byte $0F, $30, $21, $02   ; 
- D 3 - I - 0x01E490 07:E480: 0F        .byte $0F, $39, $29, $19   ; 
- D 3 - I - 0x01E494 07:E484: 0F        .byte $0F, $30, $10, $00   ; 

_off019_E488_12:
- D 3 - I - 0x01E498 07:E488: 0F        .byte $0F, $09, $19, $29   ; 
- D 3 - I - 0x01E49C 07:E48C: 0F        .byte $0F, $30, $21, $3C   ; 
- D 3 - I - 0x01E4A0 07:E490: 0F        .byte $0F, $01, $11, $21   ; 
- D 3 - I - 0x01E4A4 07:E494: 0F        .byte $0F, $08, $18, $28   ; 

_off019_E498_13:
- D 3 - I - 0x01E4A8 07:E498: 0F        .byte $0F, $09, $19, $29   ; 
- D 3 - I - 0x01E4AC 07:E49C: 0F        .byte $0F, $3C, $30, $21   ; 
- D 3 - I - 0x01E4B0 07:E4A0: 0F        .byte $0F, $01, $11, $21   ; 
- D 3 - I - 0x01E4B4 07:E4A4: 0F        .byte $0F, $08, $18, $28   ; 

_off019_E4A8_14:
- D 3 - I - 0x01E4B8 07:E4A8: 0F        .byte $0F, $07, $17, $27   ; 
- D 3 - I - 0x01E4BC 07:E4AC: 0F        .byte $0F, $10, $30, $00   ; 
- D 3 - I - 0x01E4C0 07:E4B0: 0F        .byte $0F, $01, $11, $21   ; 
- D 3 - I - 0x01E4C4 07:E4B4: 0F        .byte $0F, $08, $18, $28   ; 

_off019_E4B8_15:
- D 3 - I - 0x01E4C8 07:E4B8: 0F        .byte $0F, $07, $17, $27   ; 
- D 3 - I - 0x01E4CC 07:E4BC: 0F        .byte $0F, $30, $00, $10   ; 
- D 3 - I - 0x01E4D0 07:E4C0: 0F        .byte $0F, $01, $11, $21   ; 
- D 3 - I - 0x01E4D4 07:E4C4: 0F        .byte $0F, $08, $18, $28   ; 

_off019_E4C8_16:
- D 3 - I - 0x01E4D8 07:E4C8: 0F        .byte $0F, $03, $13, $23   ; 
- D 3 - I - 0x01E4DC 07:E4CC: 0F        .byte $0F, $02, $12, $22   ; 
- D 3 - I - 0x01E4E0 07:E4D0: 0F        .byte $0F, $0C, $1C, $3C   ; 
- D 3 - I - 0x01E4E4 07:E4D4: 0F        .byte $0F, $27, $07, $17   ; 

_off019_E4D8_17:
- D 3 - I - 0x01E4E8 07:E4D8: 0F        .byte $0F, $03, $13, $23   ; 
- D 3 - I - 0x01E4EC 07:E4DC: 0F        .byte $0F, $02, $12, $22   ; 
- D 3 - I - 0x01E4F0 07:E4E0: 0F        .byte $0F, $0C, $1C, $3C   ; 
- D 3 - I - 0x01E4F4 07:E4E4: 0F        .byte $0F, $17, $27, $07   ; 

_off019_E4E8_18:
- D 3 - I - 0x01E4F8 07:E4E8: 0F        .byte $0F, $27, $36, $16   ; 
- D 3 - I - 0x01E4FC 07:E4EC: 0F        .byte $0F, $36, $17, $07   ; 
- D 3 - I - 0x01E500 07:E4F0: 0F        .byte $0F, $27, $16, $12   ; 
- D 3 - I - 0x01E504 07:E4F4: 0F        .byte $0F, $27, $16, $06   ; 

_off019_E4F8_19:
_off019_E4F8_1B:
- D 3 - I - 0x01E508 07:E4F8: 0F        .byte $0F, $27, $36, $16   ; 
- D 3 - I - 0x01E50C 07:E4FC: 0F        .byte $0F, $22, $17, $07   ; 
- D 3 - I - 0x01E510 07:E500: 0F        .byte $0F, $27, $16, $12   ; 
- D 3 - I - 0x01E514 07:E504: 0F        .byte $0F, $27, $16, $06   ; 

_off019_E508_2D:
- D 3 - I - 0x01E518 07:E508: 0F        .byte $0F, $27, $36, $16   ; 
- D 3 - I - 0x01E51C 07:E50C: 0F        .byte $0F, $12, $17, $07   ; 
- D 3 - I - 0x01E520 07:E510: 0F        .byte $0F, $27, $16, $12   ; 
- D 3 - I - 0x01E524 07:E514: 0F        .byte $0F, $27, $16, $06   ; 

_off019_E518_2E:
- D 3 - I - 0x01E528 07:E518: 0F        .byte $0F, $27, $36, $16   ; 
- D 3 - I - 0x01E52C 07:E51C: 0F        .byte $0F, $02, $17, $07   ; 
- D 3 - I - 0x01E530 07:E520: 0F        .byte $0F, $27, $16, $12   ; 
- D 3 - I - 0x01E534 07:E524: 0F        .byte $0F, $27, $16, $06   ; 

_off019_E528_2F:
- D 3 - I - 0x01E538 07:E528: 0F        .byte $0F, $27, $36, $16   ; 
- D 3 - I - 0x01E53C 07:E52C: 0F        .byte $0F, $0F, $17, $07   ; 
- D 3 - I - 0x01E540 07:E530: 0F        .byte $0F, $27, $16, $12   ; 
- D 3 - I - 0x01E544 07:E534: 0F        .byte $0F, $27, $16, $06   ; 

_off019_E538_1A:
- D 3 - I - 0x01E548 07:E538: 0F        .byte $0F, $27, $36, $16   ; 
- D 3 - I - 0x01E54C 07:E53C: 0F        .byte $0F, $22, $17, $07   ; 
- D 3 - I - 0x01E550 07:E540: 0F        .byte $0F, $36, $21, $11   ; 
- D 3 - I - 0x01E554 07:E544: 0F        .byte $0F, $07, $16, $02   ; 

_off019_E548_1C:
- D 3 - I - 0x01E558 07:E548: 0F        .byte $0F, $36, $27, $16   ; 
- D 3 - I - 0x01E55C 07:E54C: 0F        .byte $0F, $22, $17, $16   ; 
- D 3 - I - 0x01E560 07:E550: 0F        .byte $0F, $32, $22, $12   ; 
- D 3 - I - 0x01E564 07:E554: 0F        .byte $0F, $27, $16, $06   ; 

_off019_E558_1D:
- D 3 - I - 0x01E568 07:E558: 0F        .byte $0F, $00, $10, $20   ; 
- D 3 - I - 0x01E56C 07:E55C: 0F        .byte $0F, $16, $36, $27   ; 
- D 3 - I - 0x01E570 07:E560: 0F        .byte $0F, $07, $16, $27   ; 
- D 3 - I - 0x01E574 07:E564: 0F        .byte $0F, $12, $22, $32   ; 

_off019_E568_1E:
- - - - - - 0x01E578 07:E568: 0F        .byte $0F, $07, $16, $27   ; 
- - - - - - 0x01E57C 07:E56C: 0F        .byte $0F, $16, $36, $27   ; 
- - - - - - 0x01E580 07:E570: 0F        .byte $0F, $15, $25, $27   ; 
- - - - - - 0x01E584 07:E574: 0F        .byte $0F, $12, $22, $27   ; 

_off019_E578_1F:
- D 3 - I - 0x01E588 07:E578: 0F        .byte $0F, $27, $36, $16   ; 
- D 3 - I - 0x01E58C 07:E57C: 0F        .byte $0F, $36, $17, $07   ; 
- D 3 - I - 0x01E590 07:E580: 0F        .byte $0F, $36, $18, $08   ; 
- D 3 - I - 0x01E594 07:E584: 0F        .byte $0F, $34, $22, $15   ; 

_off019_E588_20:
- D 3 - I - 0x01E598 07:E588: 0F        .byte $0F, $07, $16, $27   ; 
- D 3 - I - 0x01E59C 07:E58C: 0F        .byte $0F, $16, $36, $27   ; 
- D 3 - I - 0x01E5A0 07:E590: 0F        .byte $0F, $07, $36, $17   ; 
- D 3 - I - 0x01E5A4 07:E594: 0F        .byte $0F, $12, $22, $16   ; 

_off019_E598_21:
- D 3 - I - 0x01E5A8 07:E598: 0F        .byte $0F, $07, $16, $27   ; 
- D 3 - I - 0x01E5AC 07:E59C: 0F        .byte $0F, $16, $36, $27   ; 
- D 3 - I - 0x01E5B0 07:E5A0: 0F        .byte $0F, $07, $36, $17   ; 
- D 3 - I - 0x01E5B4 07:E5A4: 0F        .byte $0F, $26, $22, $17   ; 

_off019_E5A8_22:
- D 3 - I - 0x01E5B8 07:E5A8: 0F        .byte $0F, $03, $12, $23   ; 
- D 3 - I - 0x01E5BC 07:E5AC: 0F        .byte $0F, $07, $17, $26   ; 
- D 3 - I - 0x01E5C0 07:E5B0: 0F        .byte $0F, $03, $10, $00   ; 
- D 3 - I - 0x01E5C4 07:E5B4: 0F        .byte $0F, $2A, $22, $23   ; 

_off019_E5B8_23:
- D 3 - I - 0x01E5C8 07:E5B8: 0F        .byte $0F, $3C, $29, $19   ; 
- D 3 - I - 0x01E5CC 07:E5BC: 0F        .byte $0F, $3C, $26, $17   ; 
- D 3 - I - 0x01E5D0 07:E5C0: 0F        .byte $0F, $3C, $17, $19   ; 
- D 3 - I - 0x01E5D4 07:E5C4: 0F        .byte $0F, $00, $22, $19   ; 

_off019_E5C8_24:
- D 3 - I - 0x01E5D8 07:E5C8: 0F        .byte $0F, $01, $12, $2C   ; 
- D 3 - I - 0x01E5DC 07:E5CC: 0F        .byte $0F, $02, $12, $23   ; 
- D 3 - I - 0x01E5E0 07:E5D0: 0F        .byte $0F, $03, $13, $23   ; 
- D 3 - I - 0x01E5E4 07:E5D4: 0F        .byte $0F, $1A, $22, $23   ; 

_off019_E5D8_25:
- - - - - - 0x01E5E8 07:E5D8: 0F        .byte $0F, $15, $22, $27   ; 
- - - - - - 0x01E5EC 07:E5DC: 0F        .byte $0F, $15, $30, $27   ; 
- - - - - - 0x01E5F0 07:E5E0: 0F        .byte $0F, $12, $30, $27   ; 
- - - - - - 0x01E5F4 07:E5E4: 0F        .byte $0F, $04, $22, $15   ; 

_off019_E5E8_26:
- D 3 - I - 0x01E5F8 07:E5E8: 0F        .byte $0F, $1A, $29, $16   ; 
- D 3 - I - 0x01E5FC 07:E5EC: 0F        .byte $0F, $1A, $29, $36   ; 
- D 3 - I - 0x01E600 07:E5F0: 0F        .byte $0F, $16, $26, $36   ; 
- D 3 - I - 0x01E604 07:E5F4: 0F        .byte $0F, $1B, $22, $30   ; 

_off019_E5F8_27:
_off019_E5F8_28:
- D 3 - I - 0x01E608 07:E5F8: 0F        .byte $0F, $07, $16, $27   ; 
- D 3 - I - 0x01E60C 07:E5FC: 0F        .byte $0F, $16, $36, $27   ; 
- D 3 - I - 0x01E610 07:E600: 0F        .byte $0F, $02, $12, $22   ; 
- D 3 - I - 0x01E614 07:E604: 0F        .byte $0F, $12, $22, $27   ; 

_off019_E608_29:
- D 3 - I - 0x01E618 07:E608: 0F        .byte $0F, $25, $38, $3A   ; 
- D 3 - I - 0x01E61C 07:E60C: 0F        .byte $0F, $16, $14, $19   ; 
- D 3 - I - 0x01E620 07:E610: 0F        .byte $0F, $2C, $30, $27   ; 
- D 3 - I - 0x01E624 07:E614: 0F        .byte $0F, $26, $22, $17   ; 

_off019_E618_2A:
- D 3 - I - 0x01E628 07:E618: 0F        .byte $0F, $16, $02, $27   ; 
- D 3 - I - 0x01E62C 07:E61C: 0F        .byte $0F, $16, $36, $27   ; 
- D 3 - I - 0x01E630 07:E620: 0F        .byte $0F, $16, $05, $27   ; 
- D 3 - I - 0x01E634 07:E624: 0F        .byte $0F, $26, $31, $17   ; 

_off019_E628_2B:
- D 3 - I - 0x01E638 07:E628: 0F        .byte $0F, $07, $37, $16   ; 
- D 3 - I - 0x01E63C 07:E62C: 0F        .byte $0F, $16, $36, $27   ; 
- D 3 - I - 0x01E640 07:E630: 0F        .byte $0F, $03, $13, $23   ; 
- D 3 - I - 0x01E644 07:E634: 0F        .byte $0F, $16, $03, $27   ; 

_off019_E638_2C:
- D 3 - I - 0x01E648 07:E638: 0F        .byte $0F, $3C, $3C, $3C   ; 
- D 3 - I - 0x01E64C 07:E63C: 0F        .byte $0F, $30, $26, $16   ; 
- D 3 - I - 0x01E650 07:E640: 0F        .byte $0F, $3C, $3C, $3C   ; 
- D 3 - I - 0x01E654 07:E644: 0F        .byte $0F, $3C, $3C, $17   ; 

_off019_E648_30:
- D 3 - I - 0x01E658 07:E648: 0F        .byte $0F, $28, $16, $06   ; 
- D 3 - I - 0x01E65C 07:E64C: 0F        .byte $0F, $30, $21, $02   ; 
- D 3 - I - 0x01E660 07:E650: 0F        .byte $0F, $39, $29, $19   ; 
- D 3 - I - 0x01E664 07:E654: 0F        .byte $0F, $30, $10, $00   ; 

_off019_E658_31:
- D 3 - I - 0x01E668 07:E658: 0F        .byte $0F, $30, $0F, $0F   ; 
- D 3 - I - 0x01E66C 07:E65C: 0F        .byte $0F, $21, $0F, $0F   ; 
- D 3 - I - 0x01E670 07:E660: 0F        .byte $0F, $11, $0F, $0F   ; 
- D 3 - I - 0x01E674 07:E664: 0F        .byte $0F, $01, $0F, $0F   ; 

_off019_E668_32:
- D 3 - I - 0x01E678 07:E668: 0F        .byte $0F, $0C, $1C, $2C   ; 
- D 3 - I - 0x01E67C 07:E66C: 0F        .byte $0F, $0F, $13, $23   ; 
- D 3 - I - 0x01E680 07:E670: 0F        .byte $0F, $0F, $08, $18   ; 
- D 3 - I - 0x01E684 07:E674: 0F        .byte $0F, $0F, $02, $12   ; 



_off020_E678_00:
- D 3 - I - 0x01E688 07:E678: 0F        .byte $0F, $0F, $16, $36   ; 
- D 3 - I - 0x01E68C 07:E67C: 0F        .byte $0F, $0F, $12, $22   ; 
- D 3 - I - 0x01E690 07:E680: 0F        .byte $0F, $0F, $26, $37   ; 
- D 3 - I - 0x01E694 07:E684: 0F        .byte $0F, $0F, $1C, $2C   ; 

_off020_E688_01:
- D 3 - I - 0x01E698 07:E688: 0F        .byte $0F, $0F, $16, $36   ; 
- D 3 - I - 0x01E69C 07:E68C: 0F        .byte $0F, $0F, $12, $22   ; 
- D 3 - I - 0x01E6A0 07:E690: 0F        .byte $0F, $06, $16, $26   ; 
- D 3 - I - 0x01E6A4 07:E694: 0F        .byte $0F, $0F, $1A, $37   ; 

_off020_E698_02:
- D 3 - I - 0x01E6A8 07:E698: 0F        .byte $0F, $0F, $16, $36   ; 
- D 3 - I - 0x01E6AC 07:E69C: 0F        .byte $0F, $0F, $12, $22   ; 
- D 3 - I - 0x01E6B0 07:E6A0: 0F        .byte $0F, $0F, $14, $25   ; 
- D 3 - I - 0x01E6B4 07:E6A4: 0F        .byte $0F, $0F, $16, $37   ; 

_off020_E6A8_03:
_off020_E6A8_04:
- D 3 - I - 0x01E6B8 07:E6A8: 0F        .byte $0F, $0F, $16, $36   ; 
- D 3 - I - 0x01E6BC 07:E6AC: 0F        .byte $0F, $0F, $12, $22   ; 
- D 3 - I - 0x01E6C0 07:E6B0: 0F        .byte $0F, $0F, $20, $16   ; 
- D 3 - I - 0x01E6C4 07:E6B4: 0F        .byte $0F, $0F, $2C, $20   ; 

_off020_E6B8_05:
- D 3 - I - 0x01E6C8 07:E6B8: 0F        .byte $0F, $0F, $16, $36   ; 
- D 3 - I - 0x01E6CC 07:E6BC: 0F        .byte $0F, $0F, $12, $22   ; 
- D 3 - I - 0x01E6D0 07:E6C0: 0F        .byte $0F, $0F, $00, $26   ; 
- D 3 - I - 0x01E6D4 07:E6C4: 0F        .byte $0F, $0F, $16, $26   ; 

_off020_E6C8_06:
- D 3 - I - 0x01E6D8 07:E6C8: 0F        .byte $0F, $0F, $16, $36   ; 
- D 3 - I - 0x01E6DC 07:E6CC: 0F        .byte $0F, $0F, $12, $22   ; 
- D 3 - I - 0x01E6E0 07:E6D0: 0F        .byte $0F, $0F, $17, $27   ; 
- D 3 - I - 0x01E6E4 07:E6D4: 0F        .byte $0F, $0F, $1B, $27   ; 

_off020_E6D8_07:
- D 3 - I - 0x01E6E8 07:E6D8: 0F        .byte $0F, $0F, $16, $36   ; 
- D 3 - I - 0x01E6EC 07:E6DC: 0F        .byte $0F, $0F, $12, $22   ; 
- D 3 - I - 0x01E6F0 07:E6E0: 0F        .byte $0F, $0F, $19, $26   ; 
- D 3 - I - 0x01E6F4 07:E6E4: 0F        .byte $0F, $0F, $19, $29   ; 

_off020_E6E8_08:
- D 3 - I - 0x01E6F8 07:E6E8: 0F        .byte $0F, $0F, $16, $36   ; 
- D 3 - I - 0x01E6FC 07:E6EC: 0F        .byte $0F, $0F, $12, $22   ; 
- D 3 - I - 0x01E700 07:E6F0: 0F        .byte $0F, $0F, $01, $12   ; 
- D 3 - I - 0x01E704 07:E6F4: 0F        .byte $0F, $0F, $36, $00   ; 

_off020_E6F8_09:
- D 3 - I - 0x01E708 07:E6F8: 0F        .byte $0F, $0F, $16, $36   ; 
- D 3 - I - 0x01E70C 07:E6FC: 0F        .byte $0F, $0F, $12, $22   ; 
- D 3 - I - 0x01E710 07:E700: 0F        .byte $0F, $0F, $30, $15   ; 
- D 3 - I - 0x01E714 07:E704: 0F        .byte $0F, $0F, $20, $21   ; 

_off020_E708_0A:
_off020_E708_0B:
- D 3 - I - 0x01E718 07:E708: 0F        .byte $0F, $0F, $16, $36   ; 
- D 3 - I - 0x01E71C 07:E70C: 0F        .byte $0F, $0F, $12, $22   ; 
- D 3 - I - 0x01E720 07:E710: 0F        .byte $0F, $0F, $14, $24   ; 
- D 3 - I - 0x01E724 07:E714: 0F        .byte $0F, $0F, $23, $33   ; 

_off020_E718_0C:
- D 3 - I - 0x01E728 07:E718: 0F        .byte $0F, $0F, $16, $36   ; 
- D 3 - I - 0x01E72C 07:E71C: 0F        .byte $0F, $0F, $12, $22   ; 
- D 3 - I - 0x01E730 07:E720: 0F        .byte $0F, $0F, $30, $15   ; 
- D 3 - I - 0x01E734 07:E724: 0F        .byte $0F, $07, $16, $27   ; 

_off020_E728_0D:
- D 3 - I - 0x01E738 07:E728: 0F        .byte $0F, $0F, $16, $36   ; 
- D 3 - I - 0x01E73C 07:E72C: 0F        .byte $0F, $0F, $12, $22   ; 
- D 3 - I - 0x01E740 07:E730: 0F        .byte $0F, $0F, $17, $28   ; 
- D 3 - I - 0x01E744 07:E734: 0F        .byte $0F, $0F, $13, $23   ; 

_off020_E738_0E:
- D 3 - I - 0x01E748 07:E738: 0F        .byte $0F, $30, $28, $18   ; 
- D 3 - I - 0x01E74C 07:E73C: 0F        .byte $0F, $30, $28, $27   ; 
- D 3 - I - 0x01E750 07:E740: 0F        .byte $0F, $30, $38, $28   ; 
- D 3 - I - 0x01E754 07:E744: 0F        .byte $0F, $21, $01, $11   ; 

_off020_E748_0F:
- D 3 - I - 0x01E758 07:E748: 0F        .byte $0F, $0F, $16, $36   ; 
- D 3 - I - 0x01E75C 07:E74C: 0F        .byte $0F, $0F, $12, $22   ; 
- D 3 - I - 0x01E760 07:E750: 0F        .byte $0F, $0F, $1A, $26   ; 
- D 3 - I - 0x01E764 07:E754: 0F        .byte $0F, $0F, $00, $30   ; 

_off020_E758_10:
- D 3 - I - 0x01E768 07:E758: 0F        .byte $0F, $0F, $16, $36   ; 
- D 3 - I - 0x01E76C 07:E75C: 0F        .byte $0F, $0F, $12, $22   ; 
- D 3 - I - 0x01E770 07:E760: 0F        .byte $0F, $0F, $20, $25   ; 
- D 3 - I - 0x01E774 07:E764: 0F        .byte $0F, $0F, $20, $21   ; 

_off020_E768_11:
- D 3 - I - 0x01E778 07:E768: 0F        .byte $0F, $30, $28, $18   ; 
- D 3 - I - 0x01E77C 07:E76C: 0F        .byte $0F, $30, $28, $27   ; 
- D 3 - I - 0x01E780 07:E770: 0F        .byte $0F, $30, $38, $28   ; 
- D 3 - I - 0x01E784 07:E774: 0F        .byte $0F, $0F, $0F, $0F   ; 

_off020_E778_12:
- D 3 - I - 0x01E788 07:E778: 0F        .byte $0F, $0F, $16, $36   ; 
- D 3 - I - 0x01E78C 07:E77C: 0F        .byte $0F, $0F, $12, $22   ; 
- D 3 - I - 0x01E790 07:E780: 0F        .byte $0F, $0F, $10, $00   ; 
- D 3 - I - 0x01E794 07:E784: 0F        .byte $0F, $02, $12, $22   ; 

_off020_E788_13:
- D 3 - I - 0x01E798 07:E788: 0F        .byte $0F, $0F, $16, $36   ; 
- D 3 - I - 0x01E79C 07:E78C: 0F        .byte $0F, $0F, $12, $22   ; 
- D 3 - I - 0x01E7A0 07:E790: 0F        .byte $0F, $0F, $38, $17   ; 
- D 3 - I - 0x01E7A4 07:E794: 0F        .byte $0F, $0F, $23, $13   ; 



sub_E798_disable_rendering:
; but leaving 2006 increment config intact
C - - - - - 0x01E7A8 07:E798: A5 E9     LDA ram_for_2000
C - - - - - 0x01E7AA 07:E79A: 29 FB     AND #$FB
C - - - - - 0x01E7AC 07:E79C: 8D 00 20  STA $2000
C - - - - - 0x01E7AF 07:E79F: 85 E9     STA ram_for_2000
C - - - - - 0x01E7B1 07:E7A1: 60        RTS



sub_E7A2:
C - - - - - 0x01E7B2 07:E7A2: AD FF BF  LDA $BFFF   ; bank id
C - - - - - 0x01E7B5 07:E7A5: 48        PHA
C - - - - - 0x01E7B6 07:E7A6: 20 3E D8  JSR sub_D83E_hide_all_sprites
C - - - - - 0x01E7B9 07:E7A9: A9 FC     LDA #$FC
C - - - - - 0x01E7BB 07:E7AB: 8D A7 04  STA ram_04A7
C - - - - - 0x01E7BE 07:E7AE: A9 00     LDA #$00
C - - - - - 0x01E7C0 07:E7B0: 85 0B     STA ram_000B
C - - - - - 0x01E7C2 07:E7B2: 85 0D     STA ram_000D
bra_E7B4_loop:
C - - - - - 0x01E7C4 07:E7B4: A6 0B     LDX ram_000B
C - - - - - 0x01E7C6 07:E7B6: BD 3C 00  LDA a: ram_003C_obj,X ; 003C 003D 003E 003F 0040 0041 0042
C - - - - - 0x01E7C9 07:E7B9: 10 0C     BPL bra_E7C7    ; if not con_003C_80
C - - - - - 0x01E7CB 07:E7BB: 29 10     AND #con_003C_invisible
C - - - - - 0x01E7CD 07:E7BD: D0 08     BNE bra_E7C7
; if exists and visible
C - - - - - 0x01E7CF 07:E7BF: A6 0D     LDX ram_000D
C - - - - - 0x01E7D1 07:E7C1: A5 0B     LDA ram_000B
C - - - - - 0x01E7D3 07:E7C3: 95 04     STA ram_0004,X
C - - - - - 0x01E7D5 07:E7C5: E6 0D     INC ram_000D
bra_E7C7:
; if doesn't exist or not visible
C - - - - - 0x01E7D7 07:E7C7: E6 0B     INC ram_000B
C - - - - - 0x01E7D9 07:E7C9: A5 0B     LDA ram_000B
C - - - - - 0x01E7DB 07:E7CB: C9 07     CMP #$07
C - - - - - 0x01E7DD 07:E7CD: 90 E5     BCC bra_E7B4_loop
C - - - - - 0x01E7DF 07:E7CF: A5 0D     LDA ram_000D
C - - - - - 0x01E7E1 07:E7D1: D0 03     BNE bra_E7D6
C - - - - - 0x01E7E3 07:E7D3: 4C 67 E8  JMP loc_E867
bra_E7D6:
C - - - - - 0x01E7E6 07:E7D6: C6 0D     DEC ram_000D
C - - - - - 0x01E7E8 07:E7D8: F0 34     BEQ bra_E80E
C - - - - - 0x01E7EA 07:E7DA: A5 0D     LDA ram_000D
C - - - - - 0x01E7EC 07:E7DC: 85 0B     STA ram_000B
bra_E7DE_loop:
C - - - - - 0x01E7EE 07:E7DE: A9 00     LDA #$00
C - - - - - 0x01E7F0 07:E7E0: 85 0C     STA ram_000C
bra_E7E2_loop:
C - - - - - 0x01E7F2 07:E7E2: A6 0C     LDX ram_000C
C - - - - - 0x01E7F4 07:E7E4: B4 04     LDY ram_0004,X
C - - - - - 0x01E7F6 07:E7E6: B5 05     LDA ram_0005,X
C - - - - - 0x01E7F8 07:E7E8: AA        TAX
C - - - - - 0x01E7F9 07:E7E9: B9 92 00  LDA a: ram_pos_Y_lo,Y
C - - - - - 0x01E7FC 07:E7EC: 38        SEC
C - - - - - 0x01E7FD 07:E7ED: F5 92     SBC ram_pos_Y_lo,X
C - - - - - 0x01E7FF 07:E7EF: B9 9B 00  LDA a: ram_pos_Y_hi,Y
C - - - - - 0x01E802 07:E7F2: F5 9B     SBC ram_pos_Y_hi,X
C - - - - - 0x01E804 07:E7F4: B0 0C     BCS bra_E802
C - - - - - 0x01E806 07:E7F6: A6 0C     LDX ram_000C
C - - - - - 0x01E808 07:E7F8: B5 04     LDA ram_0004,X
C - - - - - 0x01E80A 07:E7FA: 48        PHA
C - - - - - 0x01E80B 07:E7FB: B5 05     LDA ram_0005,X
C - - - - - 0x01E80D 07:E7FD: 95 04     STA ram_0004,X
C - - - - - 0x01E80F 07:E7FF: 68        PLA
C - - - - - 0x01E810 07:E800: 95 05     STA ram_0005,X
bra_E802:
C - - - - - 0x01E812 07:E802: E6 0C     INC ram_000C
C - - - - - 0x01E814 07:E804: A5 0C     LDA ram_000C
C - - - - - 0x01E816 07:E806: C5 0B     CMP ram_000B
C - - - - - 0x01E818 07:E808: 90 D8     BCC bra_E7E2_loop
C - - - - - 0x01E81A 07:E80A: C6 0B     DEC ram_000B
C - - - - - 0x01E81C 07:E80C: D0 D0     BNE bra_E7DE_loop
bra_E80E:
C - - - - - 0x01E81E 07:E80E: A9 00     LDA #$00
C - - - - - 0x01E820 07:E810: 85 0E     STA ram_000E
bra_E812_loop:
C - - - - - 0x01E822 07:E812: A6 0E     LDX ram_000E
C - - - - - 0x01E824 07:E814: B4 04     LDY ram_0004,X
C - - - - - 0x01E826 07:E816: 84 1A     STY ram_001A
C - - - - - 0x01E828 07:E818: B9 BF 00  LDA a: ram_obj_id,Y
C - - - - - 0x01E82B 07:E81B: AA        TAX
C - - - - - 0x01E82C 07:E81C: 0A        ASL
C - - - - - 0x01E82D 07:E81D: A8        TAY
C - - - - - 0x01E82E 07:E81E: 98        TYA
C - - - - - 0x01E82F 07:E81F: 48        PHA
C - - - - - 0x01E830 07:E820: 8A        TXA
C - - - - - 0x01E831 07:E821: A8        TAY
C - - - - - 0x01E832 07:E822: B9 23 EB  LDA tbl_EB23_prg_bank,Y
C - - - - - 0x01E835 07:E825: 20 0D FF  JSR sub_FF0D_prg_bankswitch
C - - - - - 0x01E838 07:E828: 68        PLA
C - - - - - 0x01E839 07:E829: A8        TAY
C - - - - - 0x01E83A 07:E82A: B9 00 80  LDA $8000,Y
C - - - - - 0x01E83D 07:E82D: 85 2B     STA ram_002B
C - - - - - 0x01E83F 07:E82F: B9 01 80  LDA $8001,Y
C - - - - - 0x01E842 07:E832: 85 2C     STA ram_002C
C - - - - - 0x01E844 07:E834: 05 2B     ORA ram_002B
C - - - - - 0x01E846 07:E836: F0 27     BEQ bra_E85F
C - - - - - 0x01E848 07:E838: A6 0E     LDX ram_000E
C - - - - - 0x01E84A 07:E83A: B4 04     LDY ram_0004,X
C - - - - - 0x01E84C 07:E83C: B9 C7 00  LDA a: ram_animation_id,Y
C - - - - - 0x01E84F 07:E83F: 29 80     AND #$80
C - - - - - 0x01E851 07:E841: 4A        LSR
C - - - - - 0x01E852 07:E842: 85 1B     STA ram_001B
C - - - - - 0x01E854 07:E844: B9 C7 00  LDA a: ram_animation_id,Y
C - - - - - 0x01E857 07:E847: 29 7F     AND #$7F
C - - - - - 0x01E859 07:E849: C9 7F     CMP #con_anim_id + $7F
C - - - - - 0x01E85B 07:E84B: F0 12     BEQ bra_E85F
C - - - - - 0x01E85D 07:E84D: 0A        ASL
C - - - - - 0x01E85E 07:E84E: A8        TAY
C - - - - - 0x01E85F 07:E84F: B1 2B     LDA (ram_002B),Y
C - - - - - 0x01E861 07:E851: 85 29     STA ram_0029
C - - - - - 0x01E863 07:E853: C8        INY
C - - - - - 0x01E864 07:E854: B1 2B     LDA (ram_002B),Y
C - - - - - 0x01E866 07:E856: 85 2A     STA ram_002A
C - - - - - 0x01E868 07:E858: 05 29     ORA ram_0029
C - - - - - 0x01E86A 07:E85A: F0 03     BEQ bra_E85F
C - - - - - 0x01E86C 07:E85C: 20 6C E8  JSR sub_E86C
bra_E85F:
C - - - - - 0x01E86F 07:E85F: E6 0E     INC ram_000E
C - - - - - 0x01E871 07:E861: A5 0D     LDA ram_000D
C - - - - - 0x01E873 07:E863: C5 0E     CMP ram_000E
C - - - - - 0x01E875 07:E865: B0 AB     BCS bra_E812_loop
loc_E867:
C D 3 - - - 0x01E877 07:E867: 68        PLA
C - - - - - 0x01E878 07:E868: 20 0D FF  JSR sub_FF0D_prg_bankswitch
C - - - - - 0x01E87B 07:E86B: 60        RTS



sub_E86C:
C - - - - - 0x01E87C 07:E86C: AD A7 04  LDA ram_04A7
C - - - - - 0x01E87F 07:E86F: F0 22     BEQ bra_E893_RTS
loc_E871:
C D 3 - - - 0x01E881 07:E871: A0 00     LDY #$00
C - - - - - 0x01E883 07:E873: B1 29     LDA (ram_0029),Y
C - - - - - 0x01E885 07:E875: 0A        ASL
C - - - - - 0x01E886 07:E876: AA        TAX
C - - - - - 0x01E887 07:E877: C8        INY
C - - - - - 0x01E888 07:E878: BD 85 E8  LDA tbl_E885,X
C - - - - - 0x01E88B 07:E87B: 85 2B     STA ram_002B
C - - - - - 0x01E88D 07:E87D: BD 86 E8  LDA tbl_E885 + $01,X
C - - - - - 0x01E890 07:E880: 85 2C     STA ram_002C
C - - - - - 0x01E892 07:E882: 6C 2B 00  JMP (ram_002B)



tbl_E885:
- D 3 - - - 0x01E895 07:E885: 93 E8     .word ofs_015_E893_00_RTS
- D 3 - - - 0x01E897 07:E887: 94 E8     .word ofs_015_E894_01
- D 3 - - - 0x01E899 07:E889: A1 E8     .word ofs_015_E8A1_02
- - - - - - 0x01E89B 07:E88B: B3 E8     .word ofs_015_E8B3_03
- D 3 - - - 0x01E89D 07:E88D: C5 E8     .word ofs_015_E8C5_04
- D 3 - - - 0x01E89F 07:E88F: E0 E8     .word ofs_015_E8E0_05
- D 3 - - - 0x01E8A1 07:E891: 0B E9     .word ofs_015_E90B_06



bra_E893_RTS:
ofs_015_E893_00_RTS:
C - - J - - 0x01E8A3 07:E893: 60        RTS



ofs_015_E894_01:
C - - J - - 0x01E8A4 07:E894: B1 29     LDA (ram_0029),Y
C - - - - - 0x01E8A6 07:E896: 85 1C     STA ram_001C
C - - - - - 0x01E8A8 07:E898: C8        INY
C - - - - - 0x01E8A9 07:E899: B1 29     LDA (ram_0029),Y
C - - - - - 0x01E8AB 07:E89B: 85 1D     STA ram_001D
C - - - - - 0x01E8AD 07:E89D: C8        INY
C - - - - - 0x01E8AE 07:E89E: 4C E1 E9  JMP loc_E9E1



ofs_015_E8A1_02:
C - - J - - 0x01E8B1 07:E8A1: B1 29     LDA (ram_0029),Y
C - - - - - 0x01E8B3 07:E8A3: 85 1C     STA ram_001C
C - - - - - 0x01E8B5 07:E8A5: C8        INY
C - - - - - 0x01E8B6 07:E8A6: B1 29     LDA (ram_0029),Y
C - - - - - 0x01E8B8 07:E8A8: 85 2B     STA ram_002B
C - - - - - 0x01E8BA 07:E8AA: C8        INY
C - - - - - 0x01E8BB 07:E8AB: B1 29     LDA (ram_0029),Y
C - - - - - 0x01E8BD 07:E8AD: 85 2C     STA ram_002C
C - - - - - 0x01E8BF 07:E8AF: C8        INY
C - - - - - 0x01E8C0 07:E8B0: 4C 2E EA  JMP loc_EA2E



ofs_015_E8B3_03:
- - - - - - 0x01E8C3 07:E8B3: 20 8E E9  JSR sub_E98E
- - - - - - 0x01E8C6 07:E8B6: 18        CLC
- - - - - - 0x01E8C7 07:E8B7: 65 1D     ADC ram_001D
- - - - - - 0x01E8C9 07:E8B9: A8        TAY
- - - - - - 0x01E8CA 07:E8BA: B1 29     LDA (ram_0029),Y
- - - - - - 0x01E8CC 07:E8BC: C8        INY
- - - - - - 0x01E8CD 07:E8BD: 85 1D     STA ram_001D
- - - - - - 0x01E8CF 07:E8BF: 20 80 E9  JSR sub_E980_increase_0029_pointer
- - - - - - 0x01E8D2 07:E8C2: 4C E1 E9  JMP loc_E9E1



ofs_015_E8C5_04:
C - - J - - 0x01E8D5 07:E8C5: 20 8E E9  JSR sub_E98E
C - - - - - 0x01E8D8 07:E8C8: 06 1D     ASL ram_001D
C - - - - - 0x01E8DA 07:E8CA: 18        CLC
C - - - - - 0x01E8DB 07:E8CB: 65 1D     ADC ram_001D
C - - - - - 0x01E8DD 07:E8CD: A8        TAY
C - - - - - 0x01E8DE 07:E8CE: B1 29     LDA (ram_0029),Y
C - - - - - 0x01E8E0 07:E8D0: 85 2B     STA ram_002B
C - - - - - 0x01E8E2 07:E8D2: C8        INY
C - - - - - 0x01E8E3 07:E8D3: B1 29     LDA (ram_0029),Y
C - - - - - 0x01E8E5 07:E8D5: 85 2C     STA ram_002C
C - - - - - 0x01E8E7 07:E8D7: C8        INY
C - - - - - 0x01E8E8 07:E8D8: 20 80 E9  JSR sub_E980_increase_0029_pointer
C - - - - - 0x01E8EB 07:E8DB: A0 00     LDY #$00
C - - - - - 0x01E8ED 07:E8DD: 4C 2E EA  JMP loc_EA2E



ofs_015_E8E0_05:
C - - J - - 0x01E8F0 07:E8E0: B1 29     LDA (ram_0029),Y
C - - - - - 0x01E8F2 07:E8E2: 85 2B     STA ram_002B
C - - - - - 0x01E8F4 07:E8E4: C8        INY
C - - - - - 0x01E8F5 07:E8E5: B1 29     LDA (ram_0029),Y
C - - - - - 0x01E8F7 07:E8E7: 85 2C     STA ram_002C
C - - - - - 0x01E8F9 07:E8E9: C8        INY
C - - - - - 0x01E8FA 07:E8EA: 84 1E     STY ram_001E
C - - - - - 0x01E8FC 07:E8EC: 20 80 E9  JSR sub_E980_increase_0029_pointer
C - - - - - 0x01E8FF 07:E8EF: A5 29     LDA ram_0029
C - - - - - 0x01E901 07:E8F1: 48        PHA
C - - - - - 0x01E902 07:E8F2: A5 2B     LDA ram_002B
C - - - - - 0x01E904 07:E8F4: 85 29     STA ram_0029
C - - - - - 0x01E906 07:E8F6: A5 2A     LDA ram_002A
C - - - - - 0x01E908 07:E8F8: 48        PHA
C - - - - - 0x01E909 07:E8F9: A5 2C     LDA ram_002C
C - - - - - 0x01E90B 07:E8FB: 85 2A     STA ram_002A
C - - - - - 0x01E90D 07:E8FD: 20 6C E8  JSR sub_E86C
C - - - - - 0x01E910 07:E900: 68        PLA
C - - - - - 0x01E911 07:E901: 85 2A     STA ram_002A
C - - - - - 0x01E913 07:E903: 68        PLA
C - - - - - 0x01E914 07:E904: 85 29     STA ram_0029
C - - - - - 0x01E916 07:E906: A0 00     LDY #$00
C - - - - - 0x01E918 07:E908: 4C 71 E8  JMP loc_E871



ofs_015_E90B_06:
C - - J - - 0x01E91B 07:E90B: B1 29     LDA (ram_0029),Y
C - - - - - 0x01E91D 07:E90D: 85 1E     STA ram_001E
C - - - - - 0x01E91F 07:E90F: C8        INY
C - - - - - 0x01E920 07:E910: 98        TYA
C - - - - - 0x01E921 07:E911: 48        PHA
C - - - - - 0x01E922 07:E912: A4 1A     LDY ram_001A
C - - - - - 0x01E924 07:E914: B9 4A 04  LDA ram_044A_obj,Y
C - - - - - 0x01E927 07:E917: 29 7F     AND #$7F
C - - - - - 0x01E929 07:E919: A8        TAY
C - - - - - 0x01E92A 07:E91A: B9 BF 00  LDA a: ram_obj_id,Y
C - - - - - 0x01E92D 07:E91D: A8        TAY
C - - - - - 0x01E92E 07:E91E: B9 A7 E9  LDA tbl_E9A7,Y
C - - - - - 0x01E931 07:E921: A6 1A     LDX ram_001A
C - - - - - 0x01E933 07:E923: B4 BF     LDY ram_obj_id,X
C - - - - - 0x01E935 07:E925: C0 02     CPY #$02
C - - - - - 0x01E937 07:E927: 90 0F     BCC bra_E938_it_is_player
C - - - - - 0x01E939 07:E929: A4 1A     LDY ram_001A
C - - - - - 0x01E93B 07:E92B: B9 4A 04  LDA ram_044A_obj,Y
C - - - - - 0x01E93E 07:E92E: 29 7F     AND #$7F
C - - - - - 0x01E940 07:E930: A8        TAY
C - - - - - 0x01E941 07:E931: B9 BF 00  LDA a: ram_obj_id,Y
C - - - - - 0x01E944 07:E934: A8        TAY
C - - - - - 0x01E945 07:E935: B9 C4 E9  LDA tbl_E9C4,Y
bra_E938_it_is_player:
C - - - - - 0x01E948 07:E938: C9 FF     CMP #$FF
C - - - - - 0x01E94A 07:E93A: F0 3D     BEQ bra_E979
C - - - - - 0x01E94C 07:E93C: 0A        ASL
C - - - - - 0x01E94D 07:E93D: 85 1D     STA ram_001D
C - - - - - 0x01E94F 07:E93F: 68        PLA
C - - - - - 0x01E950 07:E940: 18        CLC
C - - - - - 0x01E951 07:E941: 65 1D     ADC ram_001D
C - - - - - 0x01E953 07:E943: A8        TAY
C - - - - - 0x01E954 07:E944: B1 29     LDA (ram_0029),Y
C - - - - - 0x01E956 07:E946: 85 2B     STA ram_002B
C - - - - - 0x01E958 07:E948: C8        INY
C - - - - - 0x01E959 07:E949: B1 29     LDA (ram_0029),Y
C - - - - - 0x01E95B 07:E94B: 85 2C     STA ram_002C
C - - - - - 0x01E95D 07:E94D: 20 80 E9  JSR sub_E980_increase_0029_pointer
C - - - - - 0x01E960 07:E950: A6 1A     LDX ram_001A
C - - - - - 0x01E962 07:E952: BD 4A 04  LDA ram_044A_obj,X
C - - - - - 0x01E965 07:E955: 10 1F     BPL bra_E976
C - - - - - 0x01E967 07:E957: A5 2B     LDA ram_002B
C - - - - - 0x01E969 07:E959: 05 2C     ORA ram_002C
C - - - - - 0x01E96B 07:E95B: F0 19     BEQ bra_E976
C - - - - - 0x01E96D 07:E95D: A5 29     LDA ram_0029
C - - - - - 0x01E96F 07:E95F: 48        PHA
C - - - - - 0x01E970 07:E960: A5 2B     LDA ram_002B
C - - - - - 0x01E972 07:E962: 85 29     STA ram_0029
C - - - - - 0x01E974 07:E964: A5 2A     LDA ram_002A
C - - - - - 0x01E976 07:E966: 48        PHA
C - - - - - 0x01E977 07:E967: A5 2C     LDA ram_002C
C - - - - - 0x01E979 07:E969: 85 2A     STA ram_002A
C - - - - - 0x01E97B 07:E96B: 20 6C E8  JSR sub_E86C
C - - - - - 0x01E97E 07:E96E: 68        PLA
C - - - - - 0x01E97F 07:E96F: 85 2A     STA ram_002A
C - - - - - 0x01E981 07:E971: 68        PLA
C - - - - - 0x01E982 07:E972: 85 29     STA ram_0029
C - - - - - 0x01E984 07:E974: A0 00     LDY #$00
bra_E976:
C - - - - - 0x01E986 07:E976: 4C 71 E8  JMP loc_E871
bra_E979:
C - - - - - 0x01E989 07:E979: 68        PLA
C - - - - - 0x01E98A 07:E97A: 20 80 E9  JSR sub_E980_increase_0029_pointer
C - - - - - 0x01E98D 07:E97D: 4C 71 E8  JMP loc_E871



sub_E980_increase_0029_pointer:
C - - - - - 0x01E990 07:E980: A5 1E     LDA ram_001E
C - - - - - 0x01E992 07:E982: 18        CLC
C - - - - - 0x01E993 07:E983: 65 29     ADC ram_0029
C - - - - - 0x01E995 07:E985: 85 29     STA ram_0029
C - - - - - 0x01E997 07:E987: A5 2A     LDA ram_002A
C - - - - - 0x01E999 07:E989: 69 00     ADC #$00
C - - - - - 0x01E99B 07:E98B: 85 2A     STA ram_002A
C - - - - - 0x01E99D 07:E98D: 60        RTS



sub_E98E:
C - - - - - 0x01E99E 07:E98E: B1 29     LDA (ram_0029),Y
C - - - - - 0x01E9A0 07:E990: 85 1C     STA ram_001C
C - - - - - 0x01E9A2 07:E992: C8        INY
C - - - - - 0x01E9A3 07:E993: B1 29     LDA (ram_0029),Y
C - - - - - 0x01E9A5 07:E995: 85 1E     STA ram_001E
C - - - - - 0x01E9A7 07:E997: C8        INY
C - - - - - 0x01E9A8 07:E998: 98        TYA
C - - - - - 0x01E9A9 07:E999: 48        PHA
C - - - - - 0x01E9AA 07:E99A: A5 1A     LDA ram_001A
C - - - - - 0x01E9AC 07:E99C: AA        TAX
C - - - - - 0x01E9AD 07:E99D: BC BF 00  LDY a: ram_obj_id,X ; 00BF 00C0 00C1
C - - - - - 0x01E9B0 07:E9A0: B9 A7 E9  LDA tbl_E9A7,Y
C - - - - - 0x01E9B3 07:E9A3: 85 1D     STA ram_001D
C - - - - - 0x01E9B5 07:E9A5: 68        PLA
C - - - - - 0x01E9B6 07:E9A6: 60        RTS



tbl_E9A7:
- D 3 - - - 0x01E9B7 07:E9A7: 00        .byte $00   ; 00 con_obj_billy
- D 3 - - - 0x01E9B8 07:E9A8: 01        .byte $01   ; 01 con_obj_jimmy
- D 3 - - - 0x01E9B9 07:E9A9: 00        .byte $00   ; 02 con_obj_williams
- D 3 - - - 0x01E9BA 07:E9AA: 01        .byte $01   ; 03 con_obj_roper
- D 3 - - - 0x01E9BB 07:E9AB: 04        .byte $04   ; 04 con_obj_linda
- - - - - - 0x01E9BC 07:E9AC: 00        .byte $00   ; 05 con_obj_05
- - - - - - 0x01E9BD 07:E9AD: 00        .byte $00   ; 06 con_obj_bolo
- - - - - - 0x01E9BE 07:E9AE: 00        .byte $00   ; 07 con_obj_burnov
- - - - - - 0x01E9BF 07:E9AF: 00        .byte $00   ; 08 con_obj_abore
- - - - - - 0x01E9C0 07:E9B0: 00        .byte $00   ; 09 con_obj_chin_taimei
- D 3 - - - 0x01E9C1 07:E9B1: 03        .byte $03   ; 0A con_obj_right_arm
- - - - - - 0x01E9C2 07:E9B2: 00        .byte $00   ; 0B con_obj_0B
- D 3 - - - 0x01E9C3 07:E9B3: 02        .byte $02   ; 0C con_obj_doppelganger
- - - - - - 0x01E9C4 07:E9B4: 00        .byte $00   ; 0D con_obj_0D
- - - - - - 0x01E9C5 07:E9B5: 00        .byte $00   ; 0E con_obj_0E
- - - - - - 0x01E9C6 07:E9B6: 00        .byte $00   ; 0F con_obj_ninja
- - - - - - 0x01E9C7 07:E9B7: 00        .byte $00   ; 10 con_obj_10
- - - - - - 0x01E9C8 07:E9B8: 00        .byte $00   ; 11 con_obj_shadow_warrior
- D 3 - - - 0x01E9C9 07:E9B9: 02        .byte $02   ; 12 con_obj_knife
- - - - - - 0x01E9CA 07:E9BA: 00        .byte $00   ; 13 con_obj_13
- D 3 - - - 0x01E9CB 07:E9BB: 03        .byte $03   ; 14 con_obj_grenade
- D 3 - - - 0x01E9CC 07:E9BC: 01        .byte $01   ; 15 con_obj_chain_whip
- D 3 - - - 0x01E9CD 07:E9BD: 04        .byte $04   ; 16 con_obj_flame_grenades
- D 3 - - - 0x01E9CE 07:E9BE: 00        .byte $00   ; 17 con_obj_baton
- - - - - - 0x01E9CF 07:E9BF: 00        .byte $00   ; 18 con_obj_18
- - - - - - 0x01E9D0 07:E9C0: 00        .byte $00   ; 19 con_obj_19
- - - - - - 0x01E9D1 07:E9C1: 00        .byte $00   ; 1A con_obj_boomerang
- - - - - - 0x01E9D2 07:E9C2: 00        .byte $00   ; 1B con_obj_jumping_spike
- D 3 - - - 0x01E9D3 07:E9C3: 00        .byte $00   ; 1C con_obj_fireball



tbl_E9C4:
- D 3 - - - 0x01E9D4 07:E9C4: 00        .byte $00   ; 00 con_obj_billy
- - - - - - 0x01E9D5 07:E9C5: 01        .byte $01   ; 01 con_obj_jimmy
- - - - - - 0x01E9D6 07:E9C6: 00        .byte $00   ; 02 con_obj_williams
- - - - - - 0x01E9D7 07:E9C7: 00        .byte $00   ; 03 con_obj_roper
- - - - - - 0x01E9D8 07:E9C8: 00        .byte $00   ; 04 con_obj_linda
- - - - - - 0x01E9D9 07:E9C9: 00        .byte $00   ; 05 con_obj_05
- - - - - - 0x01E9DA 07:E9CA: 00        .byte $00   ; 06 con_obj_bolo
- - - - - - 0x01E9DB 07:E9CB: 00        .byte $00   ; 07 con_obj_burnov
- - - - - - 0x01E9DC 07:E9CC: 00        .byte $00   ; 08 con_obj_abore
- - - - - - 0x01E9DD 07:E9CD: 00        .byte $00   ; 09 con_obj_chin_taimei
- - - - - - 0x01E9DE 07:E9CE: 00        .byte $00   ; 0A con_obj_right_arm
- - - - - - 0x01E9DF 07:E9CF: 00        .byte $00   ; 0B con_obj_0B
- - - - - - 0x01E9E0 07:E9D0: 02        .byte $02   ; 0C con_obj_doppelganger
- - - - - - 0x01E9E1 07:E9D1: 00        .byte $00   ; 0D con_obj_0D
- - - - - - 0x01E9E2 07:E9D2: 00        .byte $00   ; 0E con_obj_0E
- - - - - - 0x01E9E3 07:E9D3: 00        .byte $00   ; 0F con_obj_ninja
- - - - - - 0x01E9E4 07:E9D4: 00        .byte $00   ; 10 con_obj_10
- - - - - - 0x01E9E5 07:E9D5: 00        .byte $00   ; 11 con_obj_shadow_warrior
- D 3 - - - 0x01E9E6 07:E9D6: FF        .byte $FF   ; 12 con_obj_knife
- - - - - - 0x01E9E7 07:E9D7: FF        .byte $FF   ; 13 con_obj_13
- D 3 - - - 0x01E9E8 07:E9D8: FF        .byte $FF   ; 14 con_obj_grenade
- D 3 - - - 0x01E9E9 07:E9D9: 01        .byte $01   ; 15 con_obj_chain_whip
- - - - - - 0x01E9EA 07:E9DA: FF        .byte $FF   ; 16 con_obj_flame_grenades
- D 3 - - - 0x01E9EB 07:E9DB: 00        .byte $00   ; 17 con_obj_baton
- - - - - - 0x01E9EC 07:E9DC: FF        .byte $FF   ; 18 con_obj_18
- - - - - - 0x01E9ED 07:E9DD: FF        .byte $FF   ; 19 con_obj_19
- - - - - - 0x01E9EE 07:E9DE: FF        .byte $FF   ; 1A con_obj_boomerang
- - - - - - 0x01E9EF 07:E9DF: 00        .byte $00   ; 1B con_obj_jumping_spike
- D 3 - - - 0x01E9F0 07:E9E0: FF        .byte $FF   ; 1C con_obj_fireball



loc_E9E1:
C D 3 - - - 0x01E9F1 07:E9E1: B1 29     LDA (ram_0029),Y
C - - - - - 0x01E9F3 07:E9E3: 85 2D     STA ram_002D
C - - - - - 0x01E9F5 07:E9E5: C8        INY
C - - - - - 0x01E9F6 07:E9E6: B1 29     LDA (ram_0029),Y
C - - - - - 0x01E9F8 07:E9E8: 85 2E     STA ram_002E
C - - - - - 0x01E9FA 07:E9EA: C8        INY
C - - - - - 0x01E9FB 07:E9EB: B1 29     LDA (ram_0029),Y
C - - - - - 0x01E9FD 07:E9ED: 85 2F     STA ram_002F
C - - - - - 0x01E9FF 07:E9EF: C8        INY
C - - - - - 0x01EA00 07:E9F0: B1 29     LDA (ram_0029),Y
C - - - - - 0x01EA02 07:E9F2: 85 30     STA ram_0030
C - - - - - 0x01EA04 07:E9F4: C8        INY
C - - - - - 0x01EA05 07:E9F5: 84 1E     STY ram_001E
C - - - - - 0x01EA07 07:E9F7: 20 80 E9  JSR sub_E980_increase_0029_pointer
C - - - - - 0x01EA0A 07:E9FA: A9 00     LDA #$00
C - - - - - 0x01EA0C 07:E9FC: 85 0B     STA ram_000B
C - - - - - 0x01EA0E 07:E9FE: 85 0C     STA ram_000C
bra_EA00_loop:
C - - - - - 0x01EA10 07:EA00: A4 0B     LDY ram_000B
C - - - - - 0x01EA12 07:EA02: AE A7 04  LDX ram_04A7
C - - - - - 0x01EA15 07:EA05: B1 2D     LDA (ram_002D),Y
C - - - - - 0x01EA17 07:EA07: 9D 01 02  STA ram_spr_T,X
C - - - - - 0x01EA1A 07:EA0A: A5 1D     LDA ram_001D
C - - - - - 0x01EA1C 07:EA0C: 45 1B     EOR ram_001B
C - - - - - 0x01EA1E 07:EA0E: 9D 02 02  STA ram_spr_A,X
C - - - - - 0x01EA21 07:EA11: 20 7B EA  JSR sub_EA7B_calculate_spr_Y
C - - - - - 0x01EA24 07:EA14: B0 0B     BCS bra_EA21
C - - - - - 0x01EA26 07:EA16: AD A7 04  LDA ram_04A7
C - - - - - 0x01EA29 07:EA19: 38        SEC
C - - - - - 0x01EA2A 07:EA1A: E9 04     SBC #$04
C - - - - - 0x01EA2C 07:EA1C: 8D A7 04  STA ram_04A7
C - - - - - 0x01EA2F 07:EA1F: F0 0A     BEQ bra_EA2B
bra_EA21:
C - - - - - 0x01EA31 07:EA21: E6 0C     INC ram_000C
C - - - - - 0x01EA33 07:EA23: E6 0C     INC ram_000C
C - - - - - 0x01EA35 07:EA25: E6 0B     INC ram_000B
C - - - - - 0x01EA37 07:EA27: C6 1C     DEC ram_001C
C - - - - - 0x01EA39 07:EA29: D0 D5     BNE bra_EA00_loop
bra_EA2B:
C - - - - - 0x01EA3B 07:EA2B: 4C 71 E8  JMP loc_E871



loc_EA2E:
C D 3 - - - 0x01EA3E 07:EA2E: B1 29     LDA (ram_0029),Y
C - - - - - 0x01EA40 07:EA30: 85 2D     STA ram_002D
C - - - - - 0x01EA42 07:EA32: C8        INY
C - - - - - 0x01EA43 07:EA33: B1 29     LDA (ram_0029),Y
C - - - - - 0x01EA45 07:EA35: 85 2E     STA ram_002E
C - - - - - 0x01EA47 07:EA37: C8        INY
C - - - - - 0x01EA48 07:EA38: B1 29     LDA (ram_0029),Y
C - - - - - 0x01EA4A 07:EA3A: 85 2F     STA ram_002F
C - - - - - 0x01EA4C 07:EA3C: C8        INY
C - - - - - 0x01EA4D 07:EA3D: B1 29     LDA (ram_0029),Y
C - - - - - 0x01EA4F 07:EA3F: 85 30     STA ram_0030
C - - - - - 0x01EA51 07:EA41: C8        INY
C - - - - - 0x01EA52 07:EA42: 84 1E     STY ram_001E
C - - - - - 0x01EA54 07:EA44: 20 80 E9  JSR sub_E980_increase_0029_pointer
C - - - - - 0x01EA57 07:EA47: A9 00     LDA #$00
C - - - - - 0x01EA59 07:EA49: 85 0B     STA ram_000B
C - - - - - 0x01EA5B 07:EA4B: 85 0C     STA ram_000C
bra_EA4D_loop:
C - - - - - 0x01EA5D 07:EA4D: A4 0B     LDY ram_000B
C - - - - - 0x01EA5F 07:EA4F: AE A7 04  LDX ram_04A7
C - - - - - 0x01EA62 07:EA52: B1 2D     LDA (ram_002D),Y
C - - - - - 0x01EA64 07:EA54: 9D 01 02  STA ram_spr_T,X
C - - - - - 0x01EA67 07:EA57: B1 2B     LDA (ram_002B),Y
C - - - - - 0x01EA69 07:EA59: 45 1B     EOR ram_001B
C - - - - - 0x01EA6B 07:EA5B: 9D 02 02  STA ram_spr_A,X
C - - - - - 0x01EA6E 07:EA5E: 20 7B EA  JSR sub_EA7B_calculate_spr_Y
C - - - - - 0x01EA71 07:EA61: B0 0B     BCS bra_EA6E
C - - - - - 0x01EA73 07:EA63: AD A7 04  LDA ram_04A7
C - - - - - 0x01EA76 07:EA66: 38        SEC
C - - - - - 0x01EA77 07:EA67: E9 04     SBC #$04
C - - - - - 0x01EA79 07:EA69: 8D A7 04  STA ram_04A7
C - - - - - 0x01EA7C 07:EA6C: F0 0A     BEQ bra_EA78
bra_EA6E:
C - - - - - 0x01EA7E 07:EA6E: E6 0C     INC ram_000C
C - - - - - 0x01EA80 07:EA70: E6 0C     INC ram_000C
C - - - - - 0x01EA82 07:EA72: E6 0B     INC ram_000B
C - - - - - 0x01EA84 07:EA74: C6 1C     DEC ram_001C
C - - - - - 0x01EA86 07:EA76: D0 D5     BNE bra_EA4D_loop
bra_EA78:
C - - - - - 0x01EA88 07:EA78: 4C 71 E8  JMP loc_E871



sub_EA7B_calculate_spr_Y:
C - - - - - 0x01EA8B 07:EA7B: A4 0C     LDY ram_000C
C - - - - - 0x01EA8D 07:EA7D: B1 2F     LDA (ram_002F),Y
C - - - - - 0x01EA8F 07:EA7F: 20 19 EB  JSR sub_EB19
C - - - - - 0x01EA92 07:EA82: C9 00     CMP #$00
C - - - - - 0x01EA94 07:EA84: 08        PHP
C - - - - - 0x01EA95 07:EA85: A4 1A     LDY ram_001A
C - - - - - 0x01EA97 07:EA87: 18        CLC
C - - - - - 0x01EA98 07:EA88: 79 77 00  ADC a: ram_pos_X_lo,Y
C - - - - - 0x01EA9B 07:EA8B: 85 1F     STA ram_001F
C - - - - - 0x01EA9D 07:EA8D: B9 80 00  LDA a: ram_pos_X_hi,Y
C - - - - - 0x01EAA0 07:EA90: 69 00     ADC #$00
C - - - - - 0x01EAA2 07:EA92: 28        PLP
C - - - - - 0x01EAA3 07:EA93: 10 03     BPL bra_EA98
C - - - - - 0x01EAA5 07:EA95: 18        CLC
C - - - - - 0x01EAA6 07:EA96: 69 FF     ADC #$FF
bra_EA98:
C - - - - - 0x01EAA8 07:EA98: 85 20     STA ram_0020
C - - - - - 0x01EAAA 07:EA9A: A5 1F     LDA ram_001F
C - - - - - 0x01EAAC 07:EA9C: 38        SEC
C - - - - - 0x01EAAD 07:EA9D: E9 04     SBC #< $0004
C - - - - - 0x01EAAF 07:EA9F: 85 1F     STA ram_001F
C - - - - - 0x01EAB1 07:EAA1: A5 20     LDA ram_0020
C - - - - - 0x01EAB3 07:EAA3: E9 00     SBC #> $0004
C - - - - - 0x01EAB5 07:EAA5: 85 20     STA ram_0020
C - - - - - 0x01EAB7 07:EAA7: A5 1F     LDA ram_001F
C - - - - - 0x01EAB9 07:EAA9: 38        SEC
C - - - - - 0x01EABA 07:EAAA: ED D0 00  SBC a: ram_pos_X_lo_cam
C - - - - - 0x01EABD 07:EAAD: 85 1F     STA ram_001F
C - - - - - 0x01EABF 07:EAAF: A5 20     LDA ram_0020
C - - - - - 0x01EAC1 07:EAB1: ED D1 00  SBC a: ram_pos_X_hi_cam
C - - - - - 0x01EAC4 07:EAB4: 30 61     BMI bra_EB17
C - - - - - 0x01EAC6 07:EAB6: D0 5F     BNE bra_EB17
C - - - - - 0x01EAC8 07:EAB8: A5 1F     LDA ram_001F
C - - - - - 0x01EACA 07:EABA: 9D 03 02  STA ram_spr_X,X
C - - - - - 0x01EACD 07:EABD: A4 1A     LDY ram_001A
C - - - - - 0x01EACF 07:EABF: B9 92 00  LDA a: ram_pos_Y_lo,Y
C - - - - - 0x01EAD2 07:EAC2: 18        CLC
C - - - - - 0x01EAD3 07:EAC3: 79 AD 00  ADC a: ram_pos_Z_lo,Y
C - - - - - 0x01EAD6 07:EAC6: 85 1F     STA ram_001F
C - - - - - 0x01EAD8 07:EAC8: B9 9B 00  LDA a: ram_pos_Y_hi,Y
C - - - - - 0x01EADB 07:EACB: 79 B6 00  ADC a: ram_pos_Z_hi,Y
C - - - - - 0x01EADE 07:EACE: 85 20     STA ram_0020
C - - - - - 0x01EAE0 07:EAD0: A5 1F     LDA ram_001F
C - - - - - 0x01EAE2 07:EAD2: 18        CLC
C - - - - - 0x01EAE3 07:EAD3: 69 13     ADC #< $0013
C - - - - - 0x01EAE5 07:EAD5: 85 1F     STA ram_001F
C - - - - - 0x01EAE7 07:EAD7: A5 20     LDA ram_0020
C - - - - - 0x01EAE9 07:EAD9: 69 00     ADC #> $0013
C - - - - - 0x01EAEB 07:EADB: 85 20     STA ram_0020
C - - - - - 0x01EAED 07:EADD: A4 0C     LDY ram_000C
C - - - - - 0x01EAEF 07:EADF: C8        INY
C - - - - - 0x01EAF0 07:EAE0: B1 2F     LDA (ram_002F),Y
C - - - - - 0x01EAF2 07:EAE2: 08        PHP
C - - - - - 0x01EAF3 07:EAE3: 18        CLC
C - - - - - 0x01EAF4 07:EAE4: 65 1F     ADC ram_001F
C - - - - - 0x01EAF6 07:EAE6: 85 1F     STA ram_001F
C - - - - - 0x01EAF8 07:EAE8: A5 20     LDA ram_0020
C - - - - - 0x01EAFA 07:EAEA: 69 00     ADC #$00
C - - - - - 0x01EAFC 07:EAEC: 28        PLP
C - - - - - 0x01EAFD 07:EAED: 10 03     BPL bra_EAF2
C - - - - - 0x01EAFF 07:EAEF: 18        CLC
C - - - - - 0x01EB00 07:EAF0: 69 FF     ADC #$FF
bra_EAF2:
C - - - - - 0x01EB02 07:EAF2: 85 20     STA ram_0020
C - - - - - 0x01EB04 07:EAF4: A5 1F     LDA ram_001F
C - - - - - 0x01EB06 07:EAF6: 38        SEC
C - - - - - 0x01EB07 07:EAF7: ED D2 00  SBC a: ram_pos_Y_lo_cam
C - - - - - 0x01EB0A 07:EAFA: 85 1F     STA ram_001F
C - - - - - 0x01EB0C 07:EAFC: A5 20     LDA ram_0020
C - - - - - 0x01EB0E 07:EAFE: ED D3 00  SBC a: ram_pos_Y_hi_cam
C - - - - - 0x01EB11 07:EB01: 85 20     STA ram_0020
C - - - - - 0x01EB13 07:EB03: D0 12     BNE bra_EB17
C - - - - - 0x01EB15 07:EB05: 30 10     BMI bra_EB17
C - - - - - 0x01EB17 07:EB07: A5 1F     LDA ram_001F
C - - - - - 0x01EB19 07:EB09: C9 48     CMP #$48
C - - - - - 0x01EB1B 07:EB0B: 90 0A     BCC bra_EB17
C - - - - - 0x01EB1D 07:EB0D: A9 FF     LDA #$FF
C - - - - - 0x01EB1F 07:EB0F: 38        SEC
C - - - - - 0x01EB20 07:EB10: E5 1F     SBC ram_001F
C - - - - - 0x01EB22 07:EB12: 9D 00 02  STA ram_spr_Y,X
C - - - - - 0x01EB25 07:EB15: 18        CLC
C - - - - - 0x01EB26 07:EB16: 60        RTS
bra_EB17:
C - - - - - 0x01EB27 07:EB17: 38        SEC
C - - - - - 0x01EB28 07:EB18: 60        RTS



sub_EB19:
C - - - - - 0x01EB29 07:EB19: 24 1B     BIT ram_001B
C - - - - - 0x01EB2B 07:EB1B: 50 05     BVC bra_EB22_RTS
C - - - - - 0x01EB2D 07:EB1D: 49 FF     EOR #$FF
C - - - - - 0x01EB2F 07:EB1F: 18        CLC
C - - - - - 0x01EB30 07:EB20: 69 01     ADC #$01
bra_EB22_RTS:
C - - - - - 0x01EB32 07:EB22: 60        RTS



tbl_EB23_prg_bank:
- D 3 - - - 0x01EB33 07:EB23: 03        .byte con_prg_bank + $03   ; 00 con_obj_billy
- D 3 - - - 0x01EB34 07:EB24: 03        .byte con_prg_bank + $03   ; 01 con_obj_jimmy
- D 3 - - - 0x01EB35 07:EB25: 03        .byte con_prg_bank + $03   ; 02 con_obj_williams
- D 3 - - - 0x01EB36 07:EB26: 03        .byte con_prg_bank + $03   ; 03 con_obj_roper
- D 3 - - - 0x01EB37 07:EB27: 03        .byte con_prg_bank + $03   ; 04 con_obj_linda
- - - - - - 0x01EB38 07:EB28: 03        .byte con_prg_bank + $03   ; 05 con_obj_05
- D 3 - - - 0x01EB39 07:EB29: 03        .byte con_prg_bank + $03   ; 06 con_obj_bolo
- D 3 - - - 0x01EB3A 07:EB2A: 03        .byte con_prg_bank + $03   ; 07 con_obj_burnov
- D 3 - - - 0x01EB3B 07:EB2B: 03        .byte con_prg_bank + $03   ; 08 con_obj_abore
- D 3 - - - 0x01EB3C 07:EB2C: 01        .byte con_prg_bank + $01   ; 09 con_obj_chin_taimei
- D 3 - - - 0x01EB3D 07:EB2D: 03        .byte con_prg_bank + $03   ; 0A con_obj_right_arm
- - - - - - 0x01EB3E 07:EB2E: 03        .byte con_prg_bank + $03   ; 0B con_obj_0B
- D 3 - - - 0x01EB3F 07:EB2F: 03        .byte con_prg_bank + $03   ; 0C con_obj_doppelganger
- - - - - - 0x01EB40 07:EB30: 03        .byte con_prg_bank + $03   ; 0D con_obj_0D
- - - - - - 0x01EB41 07:EB31: 03        .byte con_prg_bank + $03   ; 0E con_obj_0E
- D 3 - - - 0x01EB42 07:EB32: 03        .byte con_prg_bank + $03   ; 0F con_obj_ninja
- - - - - - 0x01EB43 07:EB33: 03        .byte con_prg_bank + $03   ; 10 con_obj_10
- D 3 - - - 0x01EB44 07:EB34: 01        .byte con_prg_bank + $01   ; 11 con_obj_shadow_warrior
- D 3 - - - 0x01EB45 07:EB35: 01        .byte con_prg_bank + $01   ; 12 con_obj_knife
- D 3 - - - 0x01EB46 07:EB36: 03        .byte con_prg_bank + $03   ; 13 con_obj_13
- D 3 - - - 0x01EB47 07:EB37: 01        .byte con_prg_bank + $01   ; 14 con_obj_grenade
- D 3 - - - 0x01EB48 07:EB38: 01        .byte con_prg_bank + $01   ; 15 con_obj_chain_whip
- D 3 - - - 0x01EB49 07:EB39: 01        .byte con_prg_bank + $01   ; 16 con_obj_flame_grenades
- D 3 - - - 0x01EB4A 07:EB3A: 01        .byte con_prg_bank + $01   ; 17 con_obj_baton
- D 3 - - - 0x01EB4B 07:EB3B: 01        .byte con_prg_bank + $01   ; 18 con_obj_18
- D 3 - - - 0x01EB4C 07:EB3C: 01        .byte con_prg_bank + $01   ; 19 con_obj_19
- D 3 - - - 0x01EB4D 07:EB3D: 01        .byte con_prg_bank + $01   ; 1A con_obj_boomerang
- D 3 - - - 0x01EB4E 07:EB3E: 03        .byte con_prg_bank + $03   ; 1B con_obj_jumping_spike
- D 3 - - - 0x01EB4F 07:EB3F: 01        .byte con_prg_bank + $01   ; 1C con_obj_fireball
- D 3 - - - 0x01EB50 07:EB40: 01        .byte con_prg_bank + $01   ; 1D con_obj_1D
- D 3 - - - 0x01EB51 07:EB41: 01        .byte con_prg_bank + $01   ; 1E con_obj_symbol_II


; bzk garbage
- - - - - - 0x01EB52 07:EB42: 03        .byte con_prg_bank + $03   ; 1F 



; bzk garbage
- - - - - - 0x01EB53 07:EB43: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 



loc_EB50_nmi_0_irq_1:
C D 3 - - - 0x01EB60 07:EB50: 48        PHA
C - - - - - 0x01EB61 07:EB51: 8A        TXA
C - - - - - 0x01EB62 07:EB52: 48        PHA
C - - - - - 0x01EB63 07:EB53: 98        TYA
C - - - - - 0x01EB64 07:EB54: 48        PHA
C - - - - - 0x01EB65 07:EB55: 20 42 FE  JSR sub_FE42_update_oam
C - - - - - 0x01EB68 07:EB58: 20 70 C6  JSR sub_C670_write_buffer_to_ppu
C - - - - - 0x01EB6B 07:EB5B: 20 38 F6  JSR sub_F638
C - - - - - 0x01EB6E 07:EB5E: E6 F1     INC ram_00F1
C - - - - - 0x01EB70 07:EB60: A5 E8     LDA ram_for_2001
C - - - - - 0x01EB72 07:EB62: 8D 01 20  STA $2001
C - - - - - 0x01EB75 07:EB65: 20 6B FD  JSR sub_FD6B_read_joy_regs
C - - - - - 0x01EB78 07:EB68: 20 24 FC  JSR sub_FC24_update_sound_engine
C - - - - - 0x01EB7B 07:EB6B: 4C 21 EC  JMP loc_EC21_exit_interrupt



loc_EB6E_nmi_1_irq_0:
C D 3 - - - 0x01EB7E 07:EB6E: 48        PHA
C - - - - - 0x01EB7F 07:EB6F: 8A        TXA
C - - - - - 0x01EB80 07:EB70: 48        PHA
C - - - - - 0x01EB81 07:EB71: 98        TYA
C - - - - - 0x01EB82 07:EB72: 48        PHA
C - - - - - 0x01EB83 07:EB73: A5 F0     LDA ram_00F0
C - - - - - 0x01EB85 07:EB75: 30 21     BMI bra_EB98
C - - - - - 0x01EB87 07:EB77: A5 F0     LDA ram_00F0
C - - - - - 0x01EB89 07:EB79: 09 80     ORA #$80
C - - - - - 0x01EB8B 07:EB7B: 85 F0     STA ram_00F0
C - - - - - 0x01EB8D 07:EB7D: 20 70 C6  JSR sub_C670_write_buffer_to_ppu
C - - - - - 0x01EB90 07:EB80: 20 67 F3  JSR sub_F367
C - - - - - 0x01EB93 07:EB83: 20 9F F4  JSR sub_F49F
C - - - - - 0x01EB96 07:EB86: 20 1F F5  JSR sub_F51F
C - - - - - 0x01EB99 07:EB89: 20 38 F6  JSR sub_F638
C - - - - - 0x01EB9C 07:EB8C: 20 6B FD  JSR sub_FD6B_read_joy_regs
C - - - - - 0x01EB9F 07:EB8F: 20 24 FC  JSR sub_FC24_update_sound_engine
C - - - - - 0x01EBA2 07:EB92: E6 F1     INC ram_00F1
C - - - - - 0x01EBA4 07:EB94: A9 00     LDA #$00
C - - - - - 0x01EBA6 07:EB96: 85 F0     STA ram_00F0
bra_EB98:
C - - - - - 0x01EBA8 07:EB98: 4C 21 EC  JMP loc_EC21_exit_interrupt



loc_EB9B_nmi_1_irq_1:
C D 3 - - - 0x01EBAB 07:EB9B: 48        PHA
C - - - - - 0x01EBAC 07:EB9C: 8A        TXA
C - - - - - 0x01EBAD 07:EB9D: 48        PHA
C - - - - - 0x01EBAE 07:EB9E: 98        TYA
C - - - - - 0x01EBAF 07:EB9F: 48        PHA
C - - - - - 0x01EBB0 07:EBA0: 20 42 FE  JSR sub_FE42_update_oam
C - - - - - 0x01EBB3 07:EBA3: A5 EB     LDA ram_for_8000
C - - - - - 0x01EBB5 07:EBA5: 48        PHA
C - - - - - 0x01EBB6 07:EBA6: AD FF BF  LDA $BFFF   ; bank id
C - - - - - 0x01EBB9 07:EBA9: 48        PHA
C - - - - - 0x01EBBA 07:EBAA: A5 E8     LDA ram_for_2001
C - - - - - 0x01EBBC 07:EBAC: 8D 01 20  STA $2001
C - - - - - 0x01EBBF 07:EBAF: AD 02 20  LDA $2002
C - - - - - 0x01EBC2 07:EBB2: AD 02 20  LDA $2002
C - - - - - 0x01EBC5 07:EBB5: A5 F0     LDA ram_00F0
C - - - - - 0x01EBC7 07:EBB7: 30 5B     BMI bra_EC14
C - - - - - 0x01EBC9 07:EBB9: A5 F0     LDA ram_00F0
C - - - - - 0x01EBCB 07:EBBB: 09 80     ORA #$80
C - - - - - 0x01EBCD 07:EBBD: 85 F0     STA ram_00F0
C - - - - - 0x01EBCF 07:EBBF: 20 70 C6  JSR sub_C670_write_buffer_to_ppu
C - - - - - 0x01EBD2 07:EBC2: A5 F3     LDA ram_00F3
C - - - - - 0x01EBD4 07:EBC4: 10 08     BPL bra_EBCE
C - - - - - 0x01EBD6 07:EBC6: 29 7F     AND #$7F
C - - - - - 0x01EBD8 07:EBC8: 85 F4     STA ram_irq_handler
C - - - - - 0x01EBDA 07:EBCA: A9 00     LDA #$00
C - - - - - 0x01EBDC 07:EBCC: 85 F3     STA ram_00F3
bra_EBCE:
C - - - - - 0x01EBDE 07:EBCE: A5 F4     LDA ram_irq_handler
C - - - - - 0x01EBE0 07:EBD0: F0 1A     BEQ bra_EBEC    ; if con_irq_default
C - - - - - 0x01EBE2 07:EBD2: A0 00     LDY #$00
C - - - - - 0x01EBE4 07:EBD4: 84 F2     STY ram_00F2
C - - - - - 0x01EBE6 07:EBD6: C9 01     CMP #$01
C - - - - - 0x01EBE8 07:EBD8: F0 06     BEQ bra_EBE0
C - - - - - 0x01EBEA 07:EBDA: C9 03     CMP #$03
C - - - - - 0x01EBEC 07:EBDC: F0 02     BEQ bra_EBE0
C - - - - - 0x01EBEE 07:EBDE: D0 06     BNE bra_EBE6
bra_EBE0:
C - - - - - 0x01EBF0 07:EBE0: 20 DD EC  JSR sub_ECDD
C - - - - - 0x01EBF3 07:EBE3: 4C F7 EB  JMP loc_EBF7
bra_EBE6:
C - - - - - 0x01EBF6 07:EBE6: 20 9B D9  JSR sub_D99B
C - - - - - 0x01EBF9 07:EBE9: 4C F7 EB  JMP loc_EBF7
bra_EBEC:
C - - - - - 0x01EBFC 07:EBEC: A9 00     LDA #$00
C - - - - - 0x01EBFE 07:EBEE: 8D 06 20  STA $2006
C - - - - - 0x01EC01 07:EBF1: 8D 06 20  STA $2006
C - - - - - 0x01EC04 07:EBF4: 20 6D D9  JSR sub_D96D
loc_EBF7:
C D 3 - - - 0x01EC07 07:EBF7: E6 F1     INC ram_00F1
C - - - - - 0x01EC09 07:EBF9: A4 F4     LDY ram_irq_handler
C - - - - - 0x01EC0B 07:EBFB: B9 28 EC  LDA tbl_EC28,Y
C - - - - - 0x01EC0E 07:EBFE: A2 00     LDX #$00
C - - - - - 0x01EC10 07:EC00: D0 03     BNE bra_EC05    ; bzk optimize, useless branch
C - - - - - 0x01EC12 07:EC02: B9 2E EC  LDA tbl_EC2E_irq_scanline,Y
bra_EC05:
C - - - - - 0x01EC15 07:EC05: A6 EA     LDX ram_for_E00x
C - - - - - 0x01EC17 07:EC07: 8D 00 C0  STA $C000
C - - - - - 0x01EC1A 07:EC0A: 8D 01 C0  STA $C001
C - - - - - 0x01EC1D 07:EC0D: 9D 00 E0  STA $E000,X
C - - - - - 0x01EC20 07:EC10: A9 00     LDA #$00
C - - - - - 0x01EC22 07:EC12: 85 F0     STA ram_00F0
bra_EC14:
C - - - - - 0x01EC24 07:EC14: 68        PLA
C - - - - - 0x01EC25 07:EC15: 20 0D FF  JSR sub_FF0D_prg_bankswitch
C - - - - - 0x01EC28 07:EC18: 68        PLA
C - - - - - 0x01EC29 07:EC19: 85 EB     STA ram_for_8000
C - - - - - 0x01EC2B 07:EC1B: 8D 00 80  STA $8000
C - - - - - 0x01EC2E 07:EC1E: 20 A0 D0  JSR sub_D0A0
loc_EC21_exit_interrupt:
C D 3 - - - 0x01EC31 07:EC21: 68        PLA
C - - - - - 0x01EC32 07:EC22: A8        TAY
C - - - - - 0x01EC33 07:EC23: 68        PLA
C - - - - - 0x01EC34 07:EC24: AA        TAX
C - - - - - 0x01EC35 07:EC25: 68        PLA
C - - - - - 0x01EC36 07:EC26: 40        RTI


; bzk garbage
- - - - - - 0x01EC37 07:EC27: 00        .byte $00   ; 



tbl_EC28:
- D 3 - - - 0x01EC38 07:EC28: B8        .byte $B8   ; 00
- D 3 - - - 0x01EC39 07:EC29: 48        .byte $48   ; 01
- D 3 - - - 0x01EC3A 07:EC2A: A0        .byte $A0   ; 02
- D 3 - - - 0x01EC3B 07:EC2B: B0        .byte $B0   ; 03
- - - - - - 0x01EC3C 07:EC2C: 00        .byte $00   ; 04
- - - - - - 0x01EC3D 07:EC2D: 00        .byte $00   ; 05



tbl_EC2E_irq_scanline:
- D 3 - - - 0x01EC3E 07:EC2E: BC        .byte $BC   ; 00
- D 3 - - - 0x01EC3F 07:EC2F: 48        .byte $48   ; 01
- D 3 - - - 0x01EC40 07:EC30: A0        .byte $A0   ; 02
- D 3 - - - 0x01EC41 07:EC31: B0        .byte $B0   ; 03
- - - - - - 0x01EC42 07:EC32: 00        .byte $00   ; 04
- - - - - - 0x01EC43 07:EC33: 00        .byte $00   ; 05



vec_EC34_IRQ:
C - - - - - 0x01EC44 07:EC34: 48        PHA
C - - - - - 0x01EC45 07:EC35: 8A        TXA
C - - - - - 0x01EC46 07:EC36: 48        PHA
C - - - - - 0x01EC47 07:EC37: 98        TYA
C - - - - - 0x01EC48 07:EC38: 48        PHA
C - - - - - 0x01EC49 07:EC39: 8D 00 E0  STA $E000
C - - - - - 0x01EC4C 07:EC3C: 8D 01 E0  STA $E001
C - - - - - 0x01EC4F 07:EC3F: A5 EB     LDA ram_for_8000
C - - - - - 0x01EC51 07:EC41: 48        PHA
C - - - - - 0x01EC52 07:EC42: AD FF BF  LDA $BFFF   ; bank id
C - - - - - 0x01EC55 07:EC45: 48        PHA
C - - - - - 0x01EC56 07:EC46: A5 F4     LDA ram_irq_handler
C - - - - - 0x01EC58 07:EC48: 0A        ASL
C - - - - - 0x01EC59 07:EC49: AA        TAX
C - - - - - 0x01EC5A 07:EC4A: BD 64 EC  LDA tbl_EC64_irq_handler,X
C - - - - - 0x01EC5D 07:EC4D: 85 F7     STA ram_00F7
C - - - - - 0x01EC5F 07:EC4F: BD 65 EC  LDA tbl_EC64_irq_handler + $01,X
C - - - - - 0x01EC62 07:EC52: 85 F8     STA ram_00F8
C - - - - - 0x01EC64 07:EC54: 6C F7 00  JMP (ram_00F7)



loc_EC57_exit_irq:
C D 3 - - - 0x01EC67 07:EC57: 68        PLA
C - - - - - 0x01EC68 07:EC58: 20 0D FF  JSR sub_FF0D_prg_bankswitch
C - - - - - 0x01EC6B 07:EC5B: 68        PLA
C - - - - - 0x01EC6C 07:EC5C: 85 EB     STA ram_for_8000
C - - - - - 0x01EC6E 07:EC5E: 8D 00 80  STA $8000
C - - - - - 0x01EC71 07:EC61: 4C 21 EC  JMP loc_EC21_exit_interrupt



tbl_EC64_irq_handler:
- D 3 - - - 0x01EC74 07:EC64: 6C EC     .word ofs_irq_handler_EC6C_00_default
- D 3 - - - 0x01EC76 07:EC66: 7D EC     .word ofs_irq_handler_EC7D_01_blue_helicopter
- D 3 - - - 0x01EC78 07:EC68: B7 EC     .word ofs_irq_handler_ECB7_02_green_helicopter
- D 3 - - - 0x01EC7A 07:EC6A: 7D EC     .word ofs_irq_handler_EC7D_03_tractor



ofs_irq_handler_EC6C_00_default:
C - - J - - 0x01EC7C 07:EC6C: 8D 00 E0  STA $E000
C - - - - - 0x01EC7F 07:EC6F: A2 0C     LDX #$0C
bra_EC71_garbage_loop:
C - - - - - 0x01EC81 07:EC71: CA        DEX
C - - - - - 0x01EC82 07:EC72: D0 FD     BNE bra_EC71_garbage_loop
C - - - - - 0x01EC84 07:EC74: 20 E0 F5  JSR sub_F5E0
C - - - - - 0x01EC87 07:EC77: 20 24 FC  JSR sub_FC24_update_sound_engine
C - - - - - 0x01EC8A 07:EC7A: 4C 57 EC  JMP loc_EC57_exit_irq



ofs_irq_handler_EC7D_01_blue_helicopter:
ofs_irq_handler_EC7D_03_tractor:
C - - J - - 0x01EC8D 07:EC7D: A5 F2     LDA ram_00F2
C - - - - - 0x01EC8F 07:EC7F: D0 28     BNE bra_ECA9
C - - - - - 0x01EC91 07:EC81: A6 F4     LDX ram_irq_handler
C - - - - - 0x01EC93 07:EC83: A9 00     LDA #$00
C - - - - - 0x01EC95 07:EC85: D0 0A     BNE bra_EC91    ; bzk optimize, useless branch
C - - - - - 0x01EC97 07:EC87: AD 2E EC  LDA tbl_EC2E_irq_scanline
C - - - - - 0x01EC9A 07:EC8A: 38        SEC
C - - - - - 0x01EC9B 07:EC8B: FD 2E EC  SBC tbl_EC2E_irq_scanline,X
C - - - - - 0x01EC9E 07:EC8E: 4C 98 EC  JMP loc_EC98
bra_EC91:
- - - - - - 0x01ECA1 07:EC91: AD 28 EC  LDA tbl_EC28
- - - - - - 0x01ECA4 07:EC94: 38        SEC
- - - - - - 0x01ECA5 07:EC95: FD 28 EC  SBC tbl_EC28,X
loc_EC98:
C D 3 - - - 0x01ECA8 07:EC98: 8D 00 C0  STA $C000
C - - - - - 0x01ECAB 07:EC9B: 8D 01 C0  STA $C001
C - - - - - 0x01ECAE 07:EC9E: 8D 01 E0  STA $E001
C - - - - - 0x01ECB1 07:ECA1: 20 6D D9  JSR sub_D96D
C - - - - - 0x01ECB4 07:ECA4: E6 F2     INC ram_00F2
C - - - - - 0x01ECB6 07:ECA6: 4C 57 EC  JMP loc_EC57_exit_irq
bra_ECA9:
C - - - - - 0x01ECB9 07:ECA9: 8D 00 E0  STA $E000
C - - - - - 0x01ECBC 07:ECAC: E6 F2     INC ram_00F2
C - - - - - 0x01ECBE 07:ECAE: 20 E0 F5  JSR sub_F5E0
C - - - - - 0x01ECC1 07:ECB1: 20 24 FC  JSR sub_FC24_update_sound_engine
C - - - - - 0x01ECC4 07:ECB4: 4C 57 EC  JMP loc_EC57_exit_irq



ofs_irq_handler_ECB7_02_green_helicopter:
C - - J - - 0x01ECC7 07:ECB7: A5 F2     LDA ram_00F2
C - - - - - 0x01ECC9 07:ECB9: D0 16     BNE bra_ECD1
C - - - - - 0x01ECCB 07:ECBB: A9 18     LDA #$18
C - - - - - 0x01ECCD 07:ECBD: A2 00     LDX #$00
C - - - - - 0x01ECCF 07:ECBF: D0 02     BNE bra_ECC3    ; bzk optimize, useless branch
C - - - - - 0x01ECD1 07:ECC1: A9 1C     LDA #$1C
bra_ECC3:
C - - - - - 0x01ECD3 07:ECC3: 8D 00 C0  STA $C000
C - - - - - 0x01ECD6 07:ECC6: 8D 01 C0  STA $C001
C - - - - - 0x01ECD9 07:ECC9: 20 11 F6  JSR sub_F611
C - - - - - 0x01ECDC 07:ECCC: E6 F2     INC ram_00F2
C - - - - - 0x01ECDE 07:ECCE: 4C 57 EC  JMP loc_EC57_exit_irq
bra_ECD1:
C - - - - - 0x01ECE1 07:ECD1: 8D 00 E0  STA $E000
C - - - - - 0x01ECE4 07:ECD4: 20 E0 F5  JSR sub_F5E0
C - - - - - 0x01ECE7 07:ECD7: 20 24 FC  JSR sub_FC24_update_sound_engine
C - - - - - 0x01ECEA 07:ECDA: 4C 57 EC  JMP loc_EC57_exit_irq



sub_ECDD:
C - - - - - 0x01ECED 07:ECDD: A5 F4     LDA ram_irq_handler
C - - - - - 0x01ECEF 07:ECDF: C9 01     CMP #con_irq_blue_heli
C - - - - - 0x01ECF1 07:ECE1: F0 07     BEQ bra_ECEA
C - - - - - 0x01ECF3 07:ECE3: C9 03     CMP #con_irq_tractor
C - - - - - 0x01ECF5 07:ECE5: F0 03     BEQ bra_ECEA
- - - - - - 0x01ECF7 07:ECE7: 4C 07 ED  JMP loc_ED07
bra_ECEA:
C - - - - - 0x01ECFA 07:ECEA: A5 E9     LDA ram_for_2000
C - - - - - 0x01ECFC 07:ECEC: 29 FC     AND #$FC
C - - - - - 0x01ECFE 07:ECEE: 0D 63 06  ORA ram_base_nmt
C - - - - - 0x01ED01 07:ECF1: 85 E9     STA ram_for_2000
C - - - - - 0x01ED03 07:ECF3: AD 02 20  LDA $2002
C - - - - - 0x01ED06 07:ECF6: A5 F5     LDA ram_00F5
C - - - - - 0x01ED08 07:ECF8: 8D 05 20  STA $2005
C - - - - - 0x01ED0B 07:ECFB: AD 61 06  LDA ram_scroll_Y_1
C - - - - - 0x01ED0E 07:ECFE: 8D 05 20  STA $2005
C - - - - - 0x01ED11 07:ED01: A5 E9     LDA ram_for_2000
C - - - - - 0x01ED13 07:ED03: 8D 00 20  STA $2000
C - - - - - 0x01ED16 07:ED06: 60        RTS



loc_ED07:
- - - - - - 0x01ED17 07:ED07: C9 02     CMP #$02
- - - - - - 0x01ED19 07:ED09: D0 01     BNE bra_ED0C_RTS
- - - - - - 0x01ED1B 07:ED0B: 60        RTS
bra_ED0C_RTS:   ; bzk optimize
- - - - - - 0x01ED1C 07:ED0C: 60        RTS



loc_ED0D:
C D 3 - - - 0x01ED1D 07:ED0D: 78        SEI
C - - - - - 0x01ED1E 07:ED0E: D8        CLD
C - - - - - 0x01ED1F 07:ED0F: 20 98 FE  JSR sub_FE98_nmi_off
C - - - - - 0x01ED22 07:ED12: A9 06     LDA #con_prg_bank + $06
C - - - - - 0x01ED24 07:ED14: 20 0D FF  JSR sub_FF0D_prg_bankswitch
C - - - - - 0x01ED27 07:ED17: A9 00     LDA #$00
C - - - - - 0x01ED29 07:ED19: 8D 6A 06  STA ram_066A
C - - - - - 0x01ED2C 07:ED1C: 85 F3     STA ram_00F3
C - - - - - 0x01ED2E 07:ED1E: 85 F4     STA ram_irq_handler
C - - - - - 0x01ED30 07:ED20: A9 FF     LDA #$FF
C - - - - - 0x01ED32 07:ED22: 8D 6B 06  STA ram_066B
C - - - - - 0x01ED35 07:ED25: 20 75 F6  JSR sub_F675_clear_plr_buttons
C - - - - - 0x01ED38 07:ED28: 20 98 FE  JSR sub_FE98_nmi_off
C - - - - - 0x01ED3B 07:ED2B: 20 B0 FC  JSR sub_FCB0_prepare_to_disable_interrupts
C - - - - - 0x01ED3E 07:ED2E: 20 75 D8  JSR sub_D875_clear_graphics
C - - - - - 0x01ED41 07:ED31: 20 98 FE  JSR sub_FE98_nmi_off
C - - - - - 0x01ED44 07:ED34: 20 6B D8  JSR sub_D86B
C - - - - - 0x01ED47 07:ED37: A2 34     LDX #$34
C - - - - - 0x01ED49 07:ED39: 20 F9 D7  JSR sub_D7F9
C - - - - - 0x01ED4C 07:ED3C: A9 00     LDA #$00
C - - - - - 0x01ED4E 07:ED3E: A2 02     LDX #$02
C - - - - - 0x01ED50 07:ED40: A0 07     LDY #$07
C - - - - - 0x01ED52 07:ED42: 20 4E FD  JSR sub_FD4E_clear_0200_07FF
C - - - - - 0x01ED55 07:ED45: A9 01     LDA #$01    ; normal
C - - - - - 0x01ED57 07:ED47: 8D 35 04  STA ram_difficulty
C - - - - - 0x01ED5A 07:ED4A: A2 00     LDX #$00
C - - - - - 0x01ED5C 07:ED4C: AC 02 01  LDY ram_0102
bra_ED4F_loop:
C - - - - - 0x01ED5F 07:ED4F: B9 00 01  LDA ram_0100,Y
C - - - - - 0x01ED62 07:ED52: 95 17     STA ram_0017,X
C - - - - - 0x01ED64 07:ED54: C8        INY
C - - - - - 0x01ED65 07:ED55: E8        INX
C - - - - - 0x01ED66 07:ED56: E0 02     CPX #$02
C - - - - - 0x01ED68 07:ED58: 90 F5     BCC bra_ED4F_loop
C - - - - - 0x01ED6A 07:ED5A: A9 00     LDA #$00
; con_gm_00
; con_gf1_00
; con_mission_id_00
C - - - - - 0x01ED6C 07:ED5C: 85 34     STA ram_game_mode
C - - - - - 0x01ED6E 07:ED5E: 85 35     STA ram_game_flags_1
C - - - - - 0x01ED70 07:ED60: 8D 34 04  STA ram_0434
C - - - - - 0x01ED73 07:ED63: 8D 22 04  STA ram_mission_hi
C - - - - - 0x01ED76 07:ED66: A9 01     LDA #$01    ; normal
C - - - - - 0x01ED78 07:ED68: 8D 35 04  STA ram_difficulty
C - - - - - 0x01ED7B 07:ED6B: A9 00     LDA #con_music_off
C - - - - - 0x01ED7D 07:ED6D: 20 10 FC  JSR sub_FC10_play_sound
C - - - - - 0x01ED80 07:ED70: 20 1F EF  JSR sub_EF1F
C - - - - - 0x01ED83 07:ED73: 20 4E F0  JSR sub_F04E_display_copyright_screen
loc_ED76_main_game_script_loop_1:
C D 3 - - - 0x01ED86 07:ED76: 20 E9 F2  JSR sub_F2E9
C - - - - - 0x01ED89 07:ED79: 20 DF F3  JSR sub_F3DF
C - - - - - 0x01ED8C 07:ED7C: 20 91 FA  JSR sub_FA91
C - - - - - 0x01ED8F 07:ED7F: A5 35     LDA ram_game_flags_1
C - - - - - 0x01ED91 07:ED81: 29 FD     AND #con_gf1_02 ^ $FF
C - - - - - 0x01ED93 07:ED83: 85 35     STA ram_game_flags_1
C - - - - - 0x01ED95 07:ED85: 20 28 EE  JSR sub_EE28
loc_ED88_main_game_script_loop_2:
C D 3 - - - 0x01ED98 07:ED88: A9 00     LDA #$00
C - - - - - 0x01ED9A 07:ED8A: 85 F1     STA ram_00F1
C - - - - - 0x01ED9C 07:ED8C: 20 A2 E7  JSR sub_E7A2
C - - - - - 0x01ED9F 07:ED8F: 20 E4 EE  JSR sub_EEE4_set_or_resume_pause
C - - - - - 0x01EDA2 07:ED92: A5 35     LDA ram_game_flags_1
C - - - - - 0x01EDA4 07:ED94: 30 40     BMI bra_EDD6    ; if con_gf1_pause
C - - - - - 0x01EDA6 07:ED96: A5 34     LDA ram_game_mode
C - - - - - 0x01EDA8 07:ED98: 29 08     AND #con_gm_08
C - - - - - 0x01EDAA 07:ED9A: D0 03     BNE bra_ED9F
C - - - - - 0x01EDAC 07:ED9C: 20 82 FC  JSR sub_FC82
bra_ED9F:
C - - - - - 0x01EDAF 07:ED9F: 20 AD DF  JSR sub_DFAD
C - - - - - 0x01EDB2 07:EDA2: 20 D0 D6  JSR sub_D6D0
C - - - - - 0x01EDB5 07:EDA5: 20 F3 D9  JSR sub_D9F3
C - - - - - 0x01EDB8 07:EDA8: 20 B0 B1  JSR sub_0x01B1C0
C - - - - - 0x01EDBB 07:EDAB: 20 DA DE  JSR sub_DEDA
C - - - - - 0x01EDBE 07:EDAE: 20 70 BA  JSR sub_0x01BA80
C - - - - - 0x01EDC1 07:EDB1: 20 14 BC  JSR sub_0x01BC24
C - - - - - 0x01EDC4 07:EDB4: 20 41 BD  JSR sub_0x01BD51
C - - - - - 0x01EDC7 07:EDB7: 20 30 A5  JSR sub_0x01A540_draw_on_screen_during_mission
C - - - - - 0x01EDCA 07:EDBA: 20 25 88  JSR sub_0x018835_mission_script_handler_update
C - - - - - 0x01EDCD 07:EDBD: 20 64 FC  JSR sub_FC64
C - - - - - 0x01EDD0 07:EDC0: 20 33 FC  JSR sub_FC33
C - - - - - 0x01EDD3 07:EDC3: 20 20 80  JSR sub_0x018030
C - - - - - 0x01EDD6 07:EDC6: 20 39 D0  JSR sub_D039
C - - - - - 0x01EDD9 07:EDC9: A5 F1     LDA ram_00F1
C - - - - - 0x01EDDB 07:EDCB: C9 01     CMP #$01
C - - - - - 0x01EDDD 07:EDCD: 20 4E C1  JSR sub_C14E
C - - - - - 0x01EDE0 07:EDD0: 20 B9 D9  JSR sub_D9B9
C - - - - - 0x01EDE3 07:EDD3: 20 DD FE  JSR sub_FEDD_write_spr_chr_banks
bra_EDD6:
C - - - - - 0x01EDE6 07:EDD6: 20 47 E2  JSR sub_E247
bra_EDD9_infinite_loop:
C - - - - - 0x01EDE9 07:EDD9: A5 F1     LDA ram_00F1
C - - - - - 0x01EDEB 07:EDDB: C9 02     CMP #$02
C - - - - - 0x01EDED 07:EDDD: 90 FA     BCC bra_EDD9_infinite_loop
C - - - - - 0x01EDEF 07:EDDF: F0 08     BEQ bra_EDE9
C - - - - - 0x01EDF1 07:EDE1: CD 6A 06  CMP ram_066A
C - - - - - 0x01EDF4 07:EDE4: 90 03     BCC bra_EDE9
C - - - - - 0x01EDF6 07:EDE6: 8D 6A 06  STA ram_066A
bra_EDE9:
C - - - - - 0x01EDF9 07:EDE9: AD A5 04  LDA ram_04A5_counter
C - - - - - 0x01EDFC 07:EDEC: 8D A6 04  STA ram_04A6
C - - - - - 0x01EDFF 07:EDEF: EE A5 04  INC ram_04A5_counter
C - - - - - 0x01EE02 07:EDF2: A5 34     LDA ram_game_mode
C - - - - - 0x01EE04 07:EDF4: 29 02     AND #con_gm_02
C - - - - - 0x01EE06 07:EDF6: D0 0F     BNE bra_EE07
C - - - - - 0x01EE08 07:EDF8: A5 35     LDA ram_game_flags_1
C - - - - - 0x01EE0A 07:EDFA: 29 01     AND #con_gf1_final_boss_defeated
C - - - - - 0x01EE0C 07:EDFC: D0 19     BNE bra_EE17_final_boss_is_defeated
C - - - - - 0x01EE0E 07:EDFE: A5 35     LDA ram_game_flags_1
C - - - - - 0x01EE10 07:EE00: 29 04     AND #con_gf1_04
C - - - - - 0x01EE12 07:EE02: D0 19     BNE bra_EE1D
C - - - - - 0x01EE14 07:EE04: 4C 88 ED  JMP loc_ED88_main_game_script_loop_2
bra_EE07:
C - - - - - 0x01EE17 07:EE07: AD FE 07  LDA ram_game_flags_2
C - - - - - 0x01EE1A 07:EE0A: 29 02     AND #con_gf2_02
C - - - - - 0x01EE1C 07:EE0C: F0 03     BEQ bra_EE11_game_over
C - - - - - 0x01EE1E 07:EE0E: 4C 88 ED  JMP loc_ED88_main_game_script_loop_2
bra_EE11_game_over:
C - - - - - 0x01EE21 07:EE11: 20 93 F0  JSR sub_F093
C - - - - - 0x01EE24 07:EE14: 4C 76 ED  JMP loc_ED76_main_game_script_loop_1
bra_EE17_final_boss_is_defeated:
C - - - - - 0x01EE27 07:EE17: 20 A8 F1  JSR sub_F1A8_final_cutscene
C - - - - - 0x01EE2A 07:EE1A: 4C 65 FF  JMP vec_FF65_RESET
bra_EE1D:
- - - - - - 0x01EE2D 07:EE1D: 20 9C F2  JSR sub_F29C
- - - - - - 0x01EE30 07:EE20: 4C 76 ED  JMP loc_ED76_main_game_script_loop_1



sub_EE23:
bra_EE23_infinite_loop:
C - - - - - 0x01EE33 07:EE23: A5 F1     LDA ram_00F1
C - - - - - 0x01EE35 07:EE25: F0 FC     BEQ bra_EE23_infinite_loop
C - - - - - 0x01EE37 07:EE27: 60        RTS



sub_EE28:
C - - - - - 0x01EE38 07:EE28: 20 98 FE  JSR sub_FE98_nmi_off
C - - - - - 0x01EE3B 07:EE2B: A5 35     LDA ram_game_flags_1
C - - - - - 0x01EE3D 07:EE2D: 29 40     AND #con_gf1_40
C - - - - - 0x01EE3F 07:EE2F: D0 05     BNE bra_EE36
C - - - - - 0x01EE41 07:EE31: A9 00     LDA #con_mission_id_00
C - - - - - 0x01EE43 07:EE33: 8D 22 04  STA ram_mission_hi
bra_EE36:
C - - - - - 0x01EE46 07:EE36: A9 00     LDA #$00    ; con_0036_00
C - - - - - 0x01EE48 07:EE38: 8D 23 04  STA ram_mission_lo
C - - - - - 0x01EE4B 07:EE3B: 85 36     STA ram_0036_enemy
C - - - - - 0x01EE4D 07:EE3D: 85 37     STA ram_0036_enemy + $01
C - - - - - 0x01EE4F 07:EE3F: 8D 33 04  STA ram_lives + $01
C - - - - - 0x01EE52 07:EE42: 8D 90 04  STA ram_pal_spr_new
C - - - - - 0x01EE55 07:EE45: 8D 86 04  STA ram_score_player
C - - - - - 0x01EE58 07:EE48: 8D 87 04  STA ram_score_player + $01
C - - - - - 0x01EE5B 07:EE4B: 8D 88 04  STA ram_score_player + $02
C - - - - - 0x01EE5E 07:EE4E: 8D 89 04  STA ram_score_player + $03
C - - - - - 0x01EE61 07:EE51: 8D 8A 04  STA ram_score_player + $04
C - - - - - 0x01EE64 07:EE54: 8D 8B 04  STA ram_score_player + $05
C - - - - - 0x01EE67 07:EE57: A0 04     LDY #$04
C - - - - - 0x01EE69 07:EE59: 8C 32 04  STY ram_lives
C - - - - - 0x01EE6C 07:EE5C: A5 34     LDA ram_game_mode
C - - - - - 0x01EE6E 07:EE5E: 29 C0     AND #con_gm_friendly_fire + con_gm_2_players
C - - - - - 0x01EE70 07:EE60: 85 34     STA ram_game_mode
C - - - - - 0x01EE72 07:EE62: A5 35     LDA ram_game_flags_1
C - - - - - 0x01EE74 07:EE64: 29 80     AND #con_gf1_pause
C - - - - - 0x01EE76 07:EE66: 85 35     STA ram_game_flags_1
C - - - - - 0x01EE78 07:EE68: A5 34     LDA ram_game_mode
C - - - - - 0x01EE7A 07:EE6A: 10 05     BPL bra_EE71_single_player    ; if not con_gm_2_players
C - - - - - 0x01EE7C 07:EE6C: A0 04     LDY #$04
C - - - - - 0x01EE7E 07:EE6E: 8C 33 04  STY ram_lives + $01
bra_EE71_single_player:
C - - - - - 0x01EE81 07:EE71: A9 00     LDA #con_music_off
C - - - - - 0x01EE83 07:EE73: 20 10 FC  JSR sub_FC10_play_sound
C - - - - - 0x01EE86 07:EE76: A9 FF     LDA #$FF
C - - - - - 0x01EE88 07:EE78: 8D 6B 06  STA ram_066B
C - - - - - 0x01EE8B 07:EE7B: 20 98 FE  JSR sub_FE98_nmi_off
C - - - - - 0x01EE8E 07:EE7E: 20 00 88  JSR sub_0x018810_prepare_mission_data
C - - - - - 0x01EE91 07:EE81: 20 6B D8  JSR sub_D86B
C - - - - - 0x01EE94 07:EE84: 20 C3 FC  JSR sub_FCC3_clear_bg_and_spr_pattern
C - - - - - 0x01EE97 07:EE87: 20 3E D8  JSR sub_D83E_hide_all_sprites
C - - - - - 0x01EE9A 07:EE8A: 20 20 C0  JSR sub_C020
C - - - - - 0x01EE9D 07:EE8D: AD 8F 04  LDA ram_pal_bg_new
C - - - - - 0x01EEA0 07:EE90: 8D 91 04  STA ram_pal_bg_current
C - - - - - 0x01EEA3 07:EE93: 20 3E D8  JSR sub_D83E_hide_all_sprites
C - - - - - 0x01EEA6 07:EE96: 20 B0 FC  JSR sub_FCB0_prepare_to_disable_interrupts
C - - - - - 0x01EEA9 07:EE99: 20 42 FE  JSR sub_FE42_update_oam
C - - - - - 0x01EEAC 07:EE9C: 20 98 FE  JSR sub_FE98_nmi_off
C - - - - - 0x01EEAF 07:EE9F: 20 F3 D9  JSR sub_D9F3
C - - - - - 0x01EEB2 07:EEA2: 20 6D D9  JSR sub_D96D
C - - - - - 0x01EEB5 07:EEA5: AD 02 20  LDA $2002
C - - - - - 0x01EEB8 07:EEA8: AD 02 20  LDA $2002
C - - - - - 0x01EEBB 07:EEAB: A9 00     LDA #$00
C - - - - - 0x01EEBD 07:EEAD: 85 F0     STA ram_00F0
C - - - - - 0x01EEBF 07:EEAF: 85 EA     STA ram_for_E00x    ; disable irq
C - - - - - 0x01EEC1 07:EEB1: 85 F1     STA ram_00F1
C - - - - - 0x01EEC3 07:EEB3: A9 19     LDA #$19
C - - - - - 0x01EEC5 07:EEB5: 8D 6C 06  STA ram_066C
C - - - - - 0x01EEC8 07:EEB8: 20 CA EE  JSR sub_EECA
C - - - - - 0x01EECB 07:EEBB: AE 22 04  LDX ram_mission_hi
C - - - - - 0x01EECE 07:EEBE: BD 4B 95  LDA tbl_0x01955B_mission_music,X
C - - - - - 0x01EED1 07:EEC1: 20 10 FC  JSR sub_FC10_play_sound
C - - - - - 0x01EED4 07:EEC4: A9 00     LDA #$00
C - - - - - 0x01EED6 07:EEC6: 8D 3F 06  STA ram_063F
C - - - - - 0x01EED9 07:EEC9: 60        RTS



sub_EECA:
sub_0x01EEDA:
C - - - - - 0x01EEDA 07:EECA: A9 00     LDA #$00
C - - - - - 0x01EEDC 07:EECC: 85 F1     STA ram_00F1
C - - - - - 0x01EEDE 07:EECE: A9 C0     LDA #con_nmi_1_irq_1
C - - - - - 0x01EEE0 07:EED0: 85 EC     STA ram_nmi_flag
C - - - - - 0x01EEE2 07:EED2: 20 8C FE  JSR sub_FE8C_nmi_on
C - - - - - 0x01EEE5 07:EED5: 58        CLI
bra_EED6_infinite_loop:
C - - - - - 0x01EEE6 07:EED6: A5 F1     LDA ram_00F1
C - - - - - 0x01EEE8 07:EED8: C9 01     CMP #$01
C - - - - - 0x01EEEA 07:EEDA: D0 FA     BNE bra_EED6_infinite_loop
C - - - - - 0x01EEEC 07:EEDC: A9 01     LDA #$01    ; enable irq
C - - - - - 0x01EEEE 07:EEDE: 85 EA     STA ram_for_E00x
C - - - - - 0x01EEF0 07:EEE0: 20 CD FC  JSR sub_FCCD_set_bg_and_spr_pattern
C - - - - - 0x01EEF3 07:EEE3: 60        RTS



sub_EEE4_set_or_resume_pause:
C - - - - - 0x01EEF4 07:EEE4: 20 6B FD  JSR sub_FD6B_read_joy_regs
C - - - - - 0x01EEF7 07:EEE7: A5 E0     LDA ram_btn_press
C - - - - - 0x01EEF9 07:EEE9: 29 10     AND #con_btn_Start
C - - - - - 0x01EEFB 07:EEEB: F0 1A     BEQ bra_EF07_RTS
C - - - - - 0x01EEFD 07:EEED: AD 3F 06  LDA ram_063F
C - - - - - 0x01EF00 07:EEF0: 10 15     BPL bra_EF07_RTS
C - - - - - 0x01EF02 07:EEF2: A0 FF     LDY #con_music_ctrl_resume
C - - - - - 0x01EF04 07:EEF4: A5 35     LDA ram_game_flags_1
C - - - - - 0x01EF06 07:EEF6: 49 80     EOR #con_gf1_pause
C - - - - - 0x01EF08 07:EEF8: 85 35     STA ram_game_flags_1
C - - - - - 0x01EF0A 07:EEFA: 10 07     BPL bra_EF03
C - - - - - 0x01EF0C 07:EEFC: A9 FD     LDA #con_music_ctrl_pause
C - - - - - 0x01EF0E 07:EEFE: 20 10 FC  JSR sub_FC10_play_sound
C - - - - - 0x01EF11 07:EF01: A0 39     LDY #con_sfx_pause
bra_EF03:
C - - - - - 0x01EF13 07:EF03: 98        TYA
C - - - - - 0x01EF14 07:EF04: 20 10 FC  JSR sub_FC10_play_sound
bra_EF07_RTS:
C - - - - - 0x01EF17 07:EF07: 60        RTS


; bzk garbage
- - - - - - 0x01EF18 07:EF08: A5 E8     LDA ram_for_2001
- - - - - - 0x01EF1A 07:EF0A: 09 01     ORA #$01
- - - - - - 0x01EF1C 07:EF0C: 4C 13 EF  JMP loc_EF13


; bzk garbage
- - - - - - 0x01EF1F 07:EF0F: A5 E8     LDA ram_for_2001
- - - - - - 0x01EF21 07:EF11: 29 FE     AND #$FE


; bzk garbage
loc_EF13:
- - - - - - 0x01EF23 07:EF13: 85 E8     STA ram_for_2001
- - - - - - 0x01EF25 07:EF15: 8D 01 20  STA $2001
- - - - - - 0x01EF28 07:EF18: 60        RTS


; bzk garbage
- - - - - - 0x01EF29 07:EF19: A2 58     LDX #$58
bra_EF1B_loop:
- - - - - - 0x01EF2B 07:EF1B: CA        DEX
- - - - - - 0x01EF2C 07:EF1C: D0 FD     BNE bra_EF1B_loop
- - - - - - 0x01EF2E 07:EF1E: 60        RTS



sub_EF1F:
C - - - - - 0x01EF2F 07:EF1F: 20 80 F6  JSR sub_F680_set_chr_banks_24_27
C - - - - - 0x01EF32 07:EF22: A9 5C     LDA #con_chr_bank + $5C
C - - - - - 0x01EF34 07:EF24: 8D 98 04  STA ram_chr_spr_1
C - - - - - 0x01EF37 07:EF27: A9 5E     LDA #con_chr_bank + $5E
C - - - - - 0x01EF39 07:EF29: 8D 99 04  STA ram_chr_spr_2
C - - - - - 0x01EF3C 07:EF2C: 20 DD FE  JSR sub_FEDD_write_spr_chr_banks
C - - - - - 0x01EF3F 07:EF2F: 20 98 FE  JSR sub_FE98_nmi_off
C - - - - - 0x01EF42 07:EF32: A9 0E     LDA #$0E
C - - - - - 0x01EF44 07:EF34: 8D 90 04  STA ram_pal_spr_new
C - - - - - 0x01EF47 07:EF37: 20 B0 FC  JSR sub_FCB0_prepare_to_disable_interrupts
C - - - - - 0x01EF4A 07:EF3A: 20 75 D8  JSR sub_D875_clear_graphics
C - - - - - 0x01EF4D 07:EF3D: 20 14 E2  JSR sub_E214_create_black_screen
C - - - - - 0x01EF50 07:EF40: A9 2B     LDA #con_CD20_2B
C - - - - - 0x01EF52 07:EF42: 20 20 CD  JSR sub_CD20_draw_static_screen
C - - - - - 0x01EF55 07:EF45: 20 A9 F5  JSR sub_F5A9
C - - - - - 0x01EF58 07:EF48: A9 00     LDA #$00
C - - - - - 0x01EF5A 07:EF4A: D0 0A     BNE bra_EF56    ; bzk optimize, useless branch
C - - - - - 0x01EF5C 07:EF4C: AD F6 FF  LDA tbl_FFF6_debug_byte
C - - - - - 0x01EF5F 07:EF4F: 10 05     BPL bra_EF56
; display "sample version" on the title screen
C - - - - - 0x01EF61 07:EF51: A9 0B     LDA #con_F709_screen_0B
C - - - - - 0x01EF63 07:EF53: 20 9B F6  JSR sub_F69B_print_text
bra_EF56:
C - - - - - 0x01EF66 07:EF56: A9 00     LDA #$00
C - - - - - 0x01EF68 07:EF58: 8D 00 A0  STA $A000
C - - - - - 0x01EF6B 07:EF5B: 20 62 F6  JSR sub_F662
C - - - - - 0x01EF6E 07:EF5E: A2 08     LDX #$08
C - - - - - 0x01EF70 07:EF60: A9 00     LDA #$00    ; con_003C_00
bra_EF62_loop:
; 003C-0044
; includes clearing ram_state for 1p and 2p
C - - - - - 0x01EF72 07:EF62: 95 3C     STA ram_003C_obj,X ; 003C 003D 003E 003F 0040 0041 0042 0043 0044
C - - - - - 0x01EF74 07:EF64: CA        DEX
C - - - - - 0x01EF75 07:EF65: 10 FB     BPL bra_EF62_loop
C - - - - - 0x01EF77 07:EF67: A9 80     LDA #con_003C_80
C - - - - - 0x01EF79 07:EF69: 85 3E     STA ram_003C_obj + $02
C - - - - - 0x01EF7B 07:EF6B: A9 59     LDA #con_state_59
C - - - - - 0x01EF7D 07:EF6D: 85 45     STA ram_state + $02
C - - - - - 0x01EF7F 07:EF6F: A9 00     LDA #$00
C - - - - - 0x01EF81 07:EF71: 85 AF     STA ram_pos_Z_lo + $02
C - - - - - 0x01EF83 07:EF73: 85 B8     STA ram_pos_Z_hi + $02
C - - - - - 0x01EF85 07:EF75: 85 82     STA ram_pos_X_hi + $02
C - - - - - 0x01EF87 07:EF77: 85 9D     STA ram_pos_Y_hi + $02
C - - - - - 0x01EF89 07:EF79: A9 80     LDA #$80
C - - - - - 0x01EF8B 07:EF7B: 85 79     STA ram_pos_X_lo + $02
C - - - - - 0x01EF8D 07:EF7D: A0 66     LDY #$66
C - - - - - 0x01EF8F 07:EF7F: A9 00     LDA #$00
C - - - - - 0x01EF91 07:EF81: D0 02     BNE bra_EF85    ; bzk optimize, useless branch
C - - - - - 0x01EF93 07:EF83: A0 7E     LDY #$7E
bra_EF85:
C - - - - - 0x01EF95 07:EF85: 84 94     STY ram_pos_Y_lo + $02
C - - - - - 0x01EF97 07:EF87: 20 C3 FC  JSR sub_FCC3_clear_bg_and_spr_pattern
C - - - - - 0x01EF9A 07:EF8A: 20 33 FC  JSR sub_FC33
C - - - - - 0x01EF9D 07:EF8D: 20 A2 E7  JSR sub_E7A2
C - - - - - 0x01EFA0 07:EF90: 20 B0 FC  JSR sub_FCB0_prepare_to_disable_interrupts
C - - - - - 0x01EFA3 07:EF93: 20 42 FE  JSR sub_FE42_update_oam
C - - - - - 0x01EFA6 07:EF96: 20 DA FC  JSR sub_FCDA
C - - - - - 0x01EFA9 07:EF99: A9 40     LDA #con_nmi_0_irq_1
C - - - - - 0x01EFAB 07:EF9B: 85 EC     STA ram_nmi_flag
C - - - - - 0x01EFAD 07:EF9D: A9 00     LDA #$00
C - - - - - 0x01EFAF 07:EF9F: 85 F0     STA ram_00F0
C - - - - - 0x01EFB1 07:EFA1: 20 8C FE  JSR sub_FE8C_nmi_on
C - - - - - 0x01EFB4 07:EFA4: A9 01     LDA #con_music_menu
C - - - - - 0x01EFB6 07:EFA6: 20 10 FC  JSR sub_FC10_play_sound
C - - - - - 0x01EFB9 07:EFA9: A9 00     LDA #$00
C - - - - - 0x01EFBB 07:EFAB: F0 16     BEQ bra_EFC3    ; jmp


; bzk garbage
- - - - - - 0x01EFBD 07:EFAD: D0 14     BNE bra_EFC3
- - - - - - 0x01EFBF 07:EFAF: 20 14 E2  JSR sub_E214_create_black_screen
- - - - - - 0x01EFC2 07:EFB2: 20 CD FC  JSR sub_FCCD_set_bg_and_spr_pattern
- - - - - - 0x01EFC5 07:EFB5: 20 BC F5  JSR sub_F5BC
- - - - - - 0x01EFC8 07:EFB8: 20 8C FE  JSR sub_FE8C_nmi_on
- - - - - - 0x01EFCB 07:EFBB: A9 00     LDA #$00
- - - - - - 0x01EFCD 07:EFBD: 8D 2A 04  STA ram_042A
- - - - - - 0x01EFD0 07:EFC0: 4C EB EF  JMP loc_EFEB



bra_EFC3:
bra_EFC3_loop:
C - - - - - 0x01EFD3 07:EFC3: 20 33 FC  JSR sub_FC33
C - - - - - 0x01EFD6 07:EFC6: 20 A2 E7  JSR sub_E7A2
C - - - - - 0x01EFD9 07:EFC9: 20 D0 D6  JSR sub_D6D0
C - - - - - 0x01EFDC 07:EFCC: A5 45     LDA ram_state + $02
C - - - - - 0x01EFDE 07:EFCE: C9 7F     CMP #con_state_grabbed
C - - - - - 0x01EFE0 07:EFD0: F0 0C     BEQ bra_EFDE
bra_EFD2_infinite_loop:
C - - - - - 0x01EFE2 07:EFD2: A5 F1     LDA ram_00F1
C - - - - - 0x01EFE4 07:EFD4: C9 01     CMP #$01
C - - - - - 0x01EFE6 07:EFD6: 90 FA     BCC bra_EFD2_infinite_loop
C - - - - - 0x01EFE8 07:EFD8: A9 00     LDA #$00
C - - - - - 0x01EFEA 07:EFDA: 85 F1     STA ram_00F1
C - - - - - 0x01EFEC 07:EFDC: F0 E5     BEQ bra_EFC3_loop    ; jmp
bra_EFDE:
C - - - - - 0x01EFEE 07:EFDE: 20 48 F0  JSR sub_F048
C - - - - - 0x01EFF1 07:EFE1: A9 0A     LDA #$0A
C - - - - - 0x01EFF3 07:EFE3: 8D 2A 04  STA ram_042A
bra_EFE6_loop:
C - - - - - 0x01EFF6 07:EFE6: A9 04     LDA #$04
C - - - - - 0x01EFF8 07:EFE8: 8D 2B 04  STA ram_042B
loc_EFEB:
bra_EFEB_loop:
C - - - - - 0x01EFFB 07:EFEB: 20 78 FB  JSR sub_FB78_wait_for_nmi
C - - - - - 0x01EFFE 07:EFEE: AD 2A 04  LDA ram_042A
C - - - - - 0x01F001 07:EFF1: F0 13     BEQ bra_F006
C - - - - - 0x01F003 07:EFF3: CE 2B 04  DEC ram_042B
C - - - - - 0x01F006 07:EFF6: D0 0E     BNE bra_F006
C - - - - - 0x01F008 07:EFF8: A5 E8     LDA ram_for_2001
C - - - - - 0x01F00A 07:EFFA: 49 08     EOR #$08
C - - - - - 0x01F00C 07:EFFC: 85 E8     STA ram_for_2001
C - - - - - 0x01F00E 07:EFFE: CE 2A 04  DEC ram_042A
C - - - - - 0x01F011 07:F001: D0 E3     BNE bra_EFE6_loop
C - - - - - 0x01F013 07:F003: 20 48 F0  JSR sub_F048
bra_F006:
C - - - - - 0x01F016 07:F006: A5 E0     LDA ram_btn_press
C - - - - - 0x01F018 07:F008: 29 D0     AND #con_btns_SAB
C - - - - - 0x01F01A 07:F00A: F0 DF     BEQ bra_EFEB_loop
C - - - - - 0x01F01C 07:F00C: A9 01     LDA #$01
C - - - - - 0x01F01E 07:F00E: 8D 3F 06  STA ram_063F
bra_F011_loop:
C - - - - - 0x01F021 07:F011: 20 78 FB  JSR sub_FB78_wait_for_nmi
C - - - - - 0x01F024 07:F014: 20 D0 D6  JSR sub_D6D0
C - - - - - 0x01F027 07:F017: AD 3F 06  LDA ram_063F
C - - - - - 0x01F02A 07:F01A: 10 F5     BPL bra_F011_loop
C - - - - - 0x01F02C 07:F01C: A9 00     LDA #con_music_off
C - - - - - 0x01F02E 07:F01E: 20 10 FC  JSR sub_FC10_play_sound
C - - - - - 0x01F031 07:F021: A9 01     LDA #$01
C - - - - - 0x01F033 07:F023: 8D 00 A0  STA $A000
C - - - - - 0x01F036 07:F026: 60        RTS


; bzk garbage
- - - - - - 0x01F037 07:F027: A5 E8     LDA ram_for_2001
- - - - - - 0x01F039 07:F029: 29 E7     AND #$E7



bra_F02B:
loc_F02B:
C D 3 - - - 0x01F03B 07:F02B: 85 E8     STA ram_for_2001
C - - - - - 0x01F03D 07:F02D: 60        RTS



sub_F02E:
C - - - - - 0x01F03E 07:F02E: A5 E8     LDA ram_for_2001
C - - - - - 0x01F040 07:F030: 09 18     ORA #$18
C - - - - - 0x01F042 07:F032: D0 F7     BNE bra_F02B    ; jmp


; bzk garbage
- - - - - - 0x01F044 07:F034: A5 E8     LDA ram_for_2001
- - - - - - 0x01F046 07:F036: 29 EF     AND #$EF
- - - - - - 0x01F048 07:F038: 4C 2B F0  JMP loc_F02B


; bzk garbage
- - - - - - 0x01F04B 07:F03B: A5 E8     LDA ram_for_2001
- - - - - - 0x01F04D 07:F03D: 09 10     ORA #$10
- - - - - - 0x01F04F 07:F03F: D0 EA     BNE bra_F02B    ; jmp



sub_0x01F051:
C - - - - - 0x01F051 07:F041: A5 E8     LDA ram_for_2001
C - - - - - 0x01F053 07:F043: 29 F7     AND #$F7
C - - - - - 0x01F055 07:F045: 4C 2B F0  JMP loc_F02B



sub_F048:
sub_0x01F058:
C - - - - - 0x01F058 07:F048: A5 E8     LDA ram_for_2001
C - - - - - 0x01F05A 07:F04A: 09 08     ORA #$08
C - - - - - 0x01F05C 07:F04C: D0 DD     BNE bra_F02B    ; jmp



sub_F04E_display_copyright_screen:
; https://tcrf.net/Double_Dragon_II:_The_Revenge_(NES)#:~:text=Original%20title-,Glitched,-Copyright%20Screen
C - - - - - 0x01F05E 07:F04E: A9 00     LDA #$00
C - - - - - 0x01F060 07:F050: F0 40     BEQ bra_F092_RTS    ; jmp



; bzk garbage
- - - - - - 0x01F062 07:F052: 58        CLI
- - - - - - 0x01F063 07:F053: 20 98 FE  JSR sub_FE98_nmi_off
- - - - - - 0x01F066 07:F056: A9 00     LDA #$00    ; con_music_off
- - - - - - 0x01F068 07:F058: 8D BB 05  STA ram_05BB
- - - - - - 0x01F06B 07:F05B: 8D BC 05  STA ram_05BC
- - - - - - 0x01F06E 07:F05E: 20 10 FC  JSR sub_FC10_play_sound
- - - - - - 0x01F071 07:F061: A9 00     LDA #$00
- - - - - - 0x01F073 07:F063: 8D 90 04  STA ram_pal_spr_new
- - - - - - 0x01F076 07:F066: A9 30     LDA #$30
- - - - - - 0x01F078 07:F068: 8D 8F 04  STA ram_pal_bg_new
- - - - - - 0x01F07B 07:F06B: 20 75 D8  JSR sub_D875_clear_graphics
- - - - - - 0x01F07E 07:F06E: 20 14 E2  JSR sub_E214_create_black_screen
- - - - - - 0x01F081 07:F071: A2 2C     LDX #con_chr_bank + $2C
- - - - - - 0x01F083 07:F073: 20 88 F6  JSR sub_F688_set_chr_banks_2C_2F
- - - - - - 0x01F086 07:F076: 20 B0 FC  JSR sub_FCB0_prepare_to_disable_interrupts
- - - - - - 0x01F089 07:F079: 20 98 FE  JSR sub_FE98_nmi_off
- - - - - - 0x01F08C 07:F07C: A9 08     LDA #con_F709_screen_08
- - - - - - 0x01F08E 07:F07E: 20 9B F6  JSR sub_F69B_print_text
- - - - - - 0x01F091 07:F081: 20 38 F6  JSR sub_F638
- - - - - - 0x01F094 07:F084: 20 E7 FC  JSR sub_FCE7
- - - - - - 0x01F097 07:F087: 20 BC F5  JSR sub_F5BC
- - - - - - 0x01F09A 07:F08A: A9 14     LDA #$14
- - - - - - 0x01F09C 07:F08C: 20 5B FE  JSR sub_FE5B
- - - - - - 0x01F09F 07:F08F: 20 DC F5  JSR sub_F5DC
bra_F092_RTS:
C - - - - - 0x01F0A2 07:F092: 60        RTS



sub_F093:
C - - - - - 0x01F0A3 07:F093: 58        CLI
C - - - - - 0x01F0A4 07:F094: 20 98 FE  JSR sub_FE98_nmi_off
C - - - - - 0x01F0A7 07:F097: A9 00     LDA #$00    ; con_music_off
C - - - - - 0x01F0A9 07:F099: 8D BB 05  STA ram_05BB
C - - - - - 0x01F0AC 07:F09C: 8D BC 05  STA ram_05BC
C - - - - - 0x01F0AF 07:F09F: 20 10 FC  JSR sub_FC10_play_sound
C - - - - - 0x01F0B2 07:F0A2: A9 00     LDA #$00
C - - - - - 0x01F0B4 07:F0A4: 8D 90 04  STA ram_pal_spr_new
C - - - - - 0x01F0B7 07:F0A7: A9 30     LDA #$30
C - - - - - 0x01F0B9 07:F0A9: 8D 8F 04  STA ram_pal_bg_new
C - - - - - 0x01F0BC 07:F0AC: 20 75 D8  JSR sub_D875_clear_graphics
C - - - - - 0x01F0BF 07:F0AF: 20 14 E2  JSR sub_E214_create_black_screen
C - - - - - 0x01F0C2 07:F0B2: 20 80 F6  JSR sub_F680_set_chr_banks_24_27
C - - - - - 0x01F0C5 07:F0B5: 20 B0 FC  JSR sub_FCB0_prepare_to_disable_interrupts
C - - - - - 0x01F0C8 07:F0B8: 20 98 FE  JSR sub_FE98_nmi_off
C - - - - - 0x01F0CB 07:F0BB: A9 02     LDA #con_F709_screen_02
C - - - - - 0x01F0CD 07:F0BD: 20 9B F6  JSR sub_F69B_print_text
C - - - - - 0x01F0D0 07:F0C0: 20 38 F6  JSR sub_F638
C - - - - - 0x01F0D3 07:F0C3: 20 E7 FC  JSR sub_FCE7
C - - - - - 0x01F0D6 07:F0C6: 20 BC F5  JSR sub_F5BC
C - - - - - 0x01F0D9 07:F0C9: A9 00     LDA #$00
C - - - - - 0x01F0DB 07:F0CB: 85 FC     STA ram_00FC
C - - - - - 0x01F0DD 07:F0CD: 85 FD     STA ram_00FD
C - - - - - 0x01F0DF 07:F0CF: A9 60     LDA #$60
C - - - - - 0x01F0E1 07:F0D1: A0 00     LDY #$00
C - - - - - 0x01F0E3 07:F0D3: D0 02     BNE bra_F0D7    ; bzk optimize, useless branch
C - - - - - 0x01F0E5 07:F0D5: A9 30     LDA #$30
bra_F0D7:
C - - - - - 0x01F0E7 07:F0D7: 8D A5 04  STA ram_04A5_counter
C - - - - - 0x01F0EA 07:F0DA: A9 80     LDA #con_nmi_1_irq_0
C - - - - - 0x01F0EC 07:F0DC: 85 EC     STA ram_nmi_flag
C - - - - - 0x01F0EE 07:F0DE: A9 00     LDA #$00
C - - - - - 0x01F0F0 07:F0E0: 85 F0     STA ram_00F0
C - - - - - 0x01F0F2 07:F0E2: 20 8C FE  JSR sub_FE8C_nmi_on
bra_F0E5_loop:
C - - - - - 0x01F0F5 07:F0E5: 20 78 FB  JSR sub_FB78_wait_for_nmi
C - - - - - 0x01F0F8 07:F0E8: 20 10 F1  JSR sub_F110_enable_continues_in_the_game
C - - - - - 0x01F0FB 07:F0EB: 20 78 FB  JSR sub_FB78_wait_for_nmi
C - - - - - 0x01F0FE 07:F0EE: 20 10 F1  JSR sub_F110_enable_continues_in_the_game
C - - - - - 0x01F101 07:F0F1: 20 78 FB  JSR sub_FB78_wait_for_nmi
C - - - - - 0x01F104 07:F0F4: 20 10 F1  JSR sub_F110_enable_continues_in_the_game
C - - - - - 0x01F107 07:F0F7: CE A5 04  DEC ram_04A5_counter
C - - - - - 0x01F10A 07:F0FA: D0 E9     BNE bra_F0E5_loop
C - - - - - 0x01F10C 07:F0FC: A5 FD     LDA ram_00FD
C - - - - - 0x01F10E 07:F0FE: C9 FF     CMP #$FF
C - - - - - 0x01F110 07:F100: F0 0A     BEQ bra_F10C
C - - - - - 0x01F112 07:F102: A9 00     LDA #$00
C - - - - - 0x01F114 07:F104: F0 06     BEQ bra_F10C    ; jmp


; bzk garbage
- - - - - - 0x01F116 07:F106: A5 35     LDA ram_game_flags_1
- - - - - - 0x01F118 07:F108: 29 BF     AND #con_gf1_40 ^ $FF
- - - - - - 0x01F11A 07:F10A: 85 35     STA ram_game_flags_1



bra_F10C:
C - - - - - 0x01F11C 07:F10C: 20 DC F5  JSR sub_F5DC
C - - - - - 0x01F11F 07:F10F: 60        RTS



sub_F110_enable_continues_in_the_game:
; https://tcrf.net/Double_Dragon_II:_The_Revenge_(NES)#:~:text=on%20SUPREME%20MASTER.-,Continues,-are%20available%20by
C - - - - - 0x01F120 07:F110: A9 00     LDA #$00
C - - - - - 0x01F122 07:F112: F0 37     BEQ bra_F14B_RTS    ; jmp


; bzk garbage
- - - - - - 0x01F124 07:F114: A5 35     LDA ram_game_flags_1
- - - - - - 0x01F126 07:F116: 29 40     AND #con_gf1_40
- - - - - - 0x01F128 07:F118: F0 31     BEQ bra_F14B_RTS    ; if continues are enabled
- - - - - - 0x01F12A 07:F11A: A5 FC     LDA ram_00FC
- - - - - - 0x01F12C 07:F11C: C9 FF     CMP #$FF
- - - - - - 0x01F12E 07:F11E: F0 2B     BEQ bra_F14B_RTS
- - - - - - 0x01F130 07:F120: A5 E0     LDA ram_btn_press
- - - - - - 0x01F132 07:F122: 05 E1     ORA ram_btn_press + $01
- - - - - - 0x01F134 07:F124: F0 25     BEQ bra_F14B_RTS
- - - - - - 0x01F136 07:F126: 20 4C F1  JSR sub_F14C_check_cheat_code_input
- - - - - - 0x01F139 07:F129: B1 29     LDA (ram_0029),Y
- - - - - - 0x01F13B 07:F12B: C5 E0     CMP ram_btn_press
- - - - - - 0x01F13D 07:F12D: D0 18     BNE bra_F147_wrong_button
- - - - - - 0x01F13F 07:F12F: C8        INY
- - - - - - 0x01F140 07:F130: B1 29     LDA (ram_0029),Y
- - - - - - 0x01F142 07:F132: C5 E1     CMP ram_btn_press + $01
- - - - - - 0x01F144 07:F134: D0 11     BNE bra_F147_wrong_button
- - - - - - 0x01F146 07:F136: E6 FC     INC ram_00FC
- - - - - - 0x01F148 07:F138: 20 4C F1  JSR sub_F14C_check_cheat_code_input
- - - - - - 0x01F14B 07:F13B: B1 29     LDA (ram_0029),Y
- - - - - - 0x01F14D 07:F13D: C8        INY
- - - - - - 0x01F14E 07:F13E: 31 29     AND (ram_0029),Y
- - - - - - 0x01F150 07:F140: C9 FF     CMP #$FF
- - - - - - 0x01F152 07:F142: D0 07     BNE bra_F14B_RTS
- - - - - - 0x01F154 07:F144: 85 FD     STA ram_00FD
- - - - - - 0x01F156 07:F146: 60        RTS
bra_F147_wrong_button:
- - - - - - 0x01F157 07:F147: A9 FF     LDA #$FF
- - - - - - 0x01F159 07:F149: 85 FC     STA ram_00FC
bra_F14B_RTS:
C - - - - - 0x01F15B 07:F14B: 60        RTS



sub_F14C_check_cheat_code_input:
- - - - - - 0x01F15C 07:F14C: AE 22 04  LDX ram_mission_hi
- - - - - - 0x01F15F 07:F14F: BD 62 F1  LDA tbl_F162_offset,X
- - - - - - 0x01F162 07:F152: AA        TAX
- - - - - - 0x01F163 07:F153: BD 72 F1  LDA tbl_F172_buttons,X
- - - - - - 0x01F166 07:F156: 85 29     STA ram_0029
- - - - - - 0x01F168 07:F158: BD 73 F1  LDA tbl_F172_buttons + $01,X
- - - - - - 0x01F16B 07:F15B: 85 2A     STA ram_002A
- - - - - - 0x01F16D 07:F15D: A5 FC     LDA ram_00FC
- - - - - - 0x01F16F 07:F15F: 0A        ASL
- - - - - - 0x01F170 07:F160: A8        TAY
- - - - - - 0x01F171 07:F161: 60        RTS



tbl_F162_offset:
- - - - - - 0x01F172 07:F162: 00        .byte $00   ; 00
- - - - - - 0x01F173 07:F163: 00        .byte $00   ; 01
- - - - - - 0x01F174 07:F164: 00        .byte $00   ; 02
- - - - - - 0x01F175 07:F165: 02        .byte $02   ; 03
- - - - - - 0x01F176 07:F166: 02        .byte $02   ; 04
- - - - - - 0x01F177 07:F167: 02        .byte $02   ; 05
- - - - - - 0x01F178 07:F168: 02        .byte $02   ; 06
- - - - - - 0x01F179 07:F169: 04        .byte $04   ; 07
- - - - - - 0x01F17A 07:F16A: 04        .byte $04   ; 08
- - - - - - 0x01F17B 07:F16B: 04        .byte $04   ; 09
- - - - - - 0x01F17C 07:F16C: 04        .byte $04   ; 0A
- - - - - - 0x01F17D 07:F16D: 04        .byte $04   ; 0B
- - - - - - 0x01F17E 07:F16E: 04        .byte $04   ; 0C
- - - - - - 0x01F17F 07:F16F: 04        .byte $04   ; 0D
- - - - - - 0x01F180 07:F170: 04        .byte $04   ; 0E
- - - - - - 0x01F181 07:F171: 04        .byte $04   ; 0F



tbl_F172_buttons:
- - - - - - 0x01F182 07:F172: 78 F1     .word off_F178_00
- - - - - - 0x01F184 07:F174: 86 F1     .word off_F186_02
- - - - - - 0x01F186 07:F176: 96 F1     .word off_F196_04



off_F178_00:
- - - - - - 0x01F188 07:F178: 08        .byte con_btn_Up   ; 00
- - - - - - 0x01F189 07:F179: 00        .byte $00   ; 01
- - - - - - 0x01F18A 07:F17A: 01        .byte con_btn_Right   ; 02
- - - - - - 0x01F18B 07:F17B: 00        .byte $00   ; 03
- - - - - - 0x01F18C 07:F17C: 04        .byte con_btn_Down   ; 04
- - - - - - 0x01F18D 07:F17D: 00        .byte $00   ; 05
- - - - - - 0x01F18E 07:F17E: 02        .byte con_btn_Left   ; 06
- - - - - - 0x01F18F 07:F17F: 00        .byte $00   ; 07
- - - - - - 0x01F190 07:F180: 80        .byte con_btn_A   ; 08
- - - - - - 0x01F191 07:F181: 00        .byte $00   ; 09
- - - - - - 0x01F192 07:F182: 40        .byte con_btn_B   ; 0A
- - - - - - 0x01F193 07:F183: 00        .byte $00   ; 0B
- - - - - - 0x01F194 07:F184: FF        .byte $FF   ; 0C
- - - - - - 0x01F195 07:F185: FF        .byte $FF   ; 0D



off_F186_02:
- - - - - - 0x01F196 07:F186: 08        .byte con_btn_Up   ; 00
- - - - - - 0x01F197 07:F187: 00        .byte $00   ; 01
- - - - - - 0x01F198 07:F188: 04        .byte con_btn_Down   ; 02
- - - - - - 0x01F199 07:F189: 00        .byte $00   ; 03
- - - - - - 0x01F19A 07:F18A: 02        .byte con_btn_Left   ; 04
- - - - - - 0x01F19B 07:F18B: 00        .byte $00   ; 05
- - - - - - 0x01F19C 07:F18C: 01        .byte con_btn_Right   ; 06
- - - - - - 0x01F19D 07:F18D: 00        .byte $00   ; 07
- - - - - - 0x01F19E 07:F18E: 40        .byte con_btn_B   ; 08
- - - - - - 0x01F19F 07:F18F: 00        .byte $00   ; 09
- - - - - - 0x01F1A0 07:F190: 80        .byte con_btn_A   ; 0A
- - - - - - 0x01F1A1 07:F191: 00        .byte $00   ; 0B
- - - - - - 0x01F1A2 07:F192: 80        .byte con_btn_A   ; 0C
- - - - - - 0x01F1A3 07:F193: 00        .byte $00   ; 0D
- - - - - - 0x01F1A4 07:F194: FF        .byte $FF   ; 0E
- - - - - - 0x01F1A5 07:F195: FF        .byte $FF   ; 0F



off_F196_04:
- - - - - - 0x01F1A6 07:F196: 00        .byte $00   ; 00
- - - - - - 0x01F1A7 07:F197: 80        .byte con_btn_A   ; 01
- - - - - - 0x01F1A8 07:F198: 00        .byte $00   ; 02
- - - - - - 0x01F1A9 07:F199: 80        .byte con_btn_A   ; 03
- - - - - - 0x01F1AA 07:F19A: 00        .byte $00   ; 04
- - - - - - 0x01F1AB 07:F19B: 40        .byte con_btn_B   ; 05
- - - - - - 0x01F1AC 07:F19C: 00        .byte $00   ; 06
- - - - - - 0x01F1AD 07:F19D: 40        .byte con_btn_B   ; 07
- - - - - - 0x01F1AE 07:F19E: 00        .byte $00   ; 08
- - - - - - 0x01F1AF 07:F19F: 04        .byte con_btn_Down   ; 09
- - - - - - 0x01F1B0 07:F1A0: 00        .byte $00   ; 0A
- - - - - - 0x01F1B1 07:F1A1: 08        .byte con_btn_Up   ; 0B
- - - - - - 0x01F1B2 07:F1A2: 00        .byte $00   ; 0C
- - - - - - 0x01F1B3 07:F1A3: 01        .byte con_btn_Right   ; 0D
- - - - - - 0x01F1B4 07:F1A4: 00        .byte $00   ; 0E
- - - - - - 0x01F1B5 07:F1A5: 02        .byte con_btn_Left   ; 0F
- - - - - - 0x01F1B6 07:F1A6: FF        .byte $FF   ; 10
- - - - - - 0x01F1B7 07:F1A7: FF        .byte $FF   ; 11



sub_F1A8_final_cutscene:
C - - - - - 0x01F1B8 07:F1A8: 20 98 FE  JSR sub_FE98_nmi_off
C - - - - - 0x01F1BB 07:F1AB: 78        SEI
C - - - - - 0x01F1BC 07:F1AC: A9 00     LDA #$00    ; con_music_off
C - - - - - 0x01F1BE 07:F1AE: 8D BB 05  STA ram_05BB
C - - - - - 0x01F1C1 07:F1B1: 8D BC 05  STA ram_05BC
C - - - - - 0x01F1C4 07:F1B4: 20 10 FC  JSR sub_FC10_play_sound
C - - - - - 0x01F1C7 07:F1B7: 20 75 D8  JSR sub_D875_clear_graphics
C - - - - - 0x01F1CA 07:F1BA: 20 14 E2  JSR sub_E214_create_black_screen
C - - - - - 0x01F1CD 07:F1BD: A9 00     LDA #$00
C - - - - - 0x01F1CF 07:F1BF: 85 FC     STA ram_00FC
C - - - - - 0x01F1D1 07:F1C1: 85 FD     STA ram_00FD
C - - - - - 0x01F1D3 07:F1C3: A9 40     LDA #con_nmi_0_irq_1
C - - - - - 0x01F1D5 07:F1C5: 85 EC     STA ram_nmi_flag
C - - - - - 0x01F1D7 07:F1C7: A9 53     LDA #con_sfx_final_death
C - - - - - 0x01F1D9 07:F1C9: 20 10 FC  JSR sub_FC10_play_sound
bra_F1CC:
loc_F1CC:
C D 3 - - - 0x01F1DC 07:F1CC: 20 98 FE  JSR sub_FE98_nmi_off
C - - - - - 0x01F1DF 07:F1CF: A4 FC     LDY ram_00FC
C - - - - - 0x01F1E1 07:F1D1: B9 84 F2  LDA tbl_F284,Y  ; bzk optimize, useless, next LDA will overwtite it
C - - - - - 0x01F1E4 07:F1D4: A2 00     LDX #$00
C - - - - - 0x01F1E6 07:F1D6: D0 03     BNE bra_F1DB    ; bzk optimize, useless branch
C - - - - - 0x01F1E8 07:F1D8: B9 90 F2  LDA tbl_F290,Y
bra_F1DB:
C - - - - - 0x01F1EB 07:F1DB: 85 FF     STA ram_00FF
C - - - - - 0x01F1ED 07:F1DD: A9 00     LDA #$00
C - - - - - 0x01F1EF 07:F1DF: D0 07     BNE bra_F1E8    ; bzk optimize, useless branch
C - - - - - 0x01F1F1 07:F1E1: B9 78 F2  LDA tbl_F278_screen_id,Y
C - - - - - 0x01F1F4 07:F1E4: D0 05     BNE bra_F1EB
C - - - - - 0x01F1F6 07:F1E6: F0 3A     BEQ bra_F222    ; jmp


; bzk garbage
bra_F1E8:
- - - - - - 0x01F1F8 07:F1E8: B9 6C F2  LDA tbl_F26C,Y



bra_F1EB:
C - - - - - 0x01F1FB 07:F1EB: 20 20 CD  JSR sub_CD20_draw_static_screen
C - - - - - 0x01F1FE 07:F1EE: 20 38 F6  JSR sub_F638
C - - - - - 0x01F201 07:F1F1: 20 2E F0  JSR sub_F02E
C - - - - - 0x01F204 07:F1F4: A9 00     LDA #$00
C - - - - - 0x01F206 07:F1F6: 8D 53 06  STA ram_0653
C - - - - - 0x01F209 07:F1F9: 85 F0     STA ram_00F0
C - - - - - 0x01F20B 07:F1FB: 20 8C FE  JSR sub_FE8C_nmi_on
C - - - - - 0x01F20E 07:F1FE: A9 00     LDA #$00
C - - - - - 0x01F210 07:F200: 20 66 FB  JSR sub_FB66
bra_F203_loop:
C - - - - - 0x01F213 07:F203: 20 83 FB  JSR sub_FB83
C - - - - - 0x01F216 07:F206: A5 FC     LDA ram_00FC
C - - - - - 0x01F218 07:F208: C9 05     CMP #$05
C - - - - - 0x01F21A 07:F20A: D0 03     BNE bra_F20F
C - - - - - 0x01F21C 07:F20C: 20 27 B1  JSR sub_0x01B137
bra_F20F:
C - - - - - 0x01F21F 07:F20F: C6 FF     DEC ram_00FF
C - - - - - 0x01F221 07:F211: D0 F0     BNE bra_F203_loop
C - - - - - 0x01F223 07:F213: A5 FC     LDA ram_00FC
C - - - - - 0x01F225 07:F215: C9 0B     CMP #$0B
C - - - - - 0x01F227 07:F217: F0 44     BEQ bra_F25D_loop
C - - - - - 0x01F229 07:F219: C9 07     CMP #$07
C - - - - - 0x01F22B 07:F21B: F0 36     BEQ bra_F253
C - - - - - 0x01F22D 07:F21D: A9 01     LDA #$01
C - - - - - 0x01F22F 07:F21F: 20 66 FB  JSR sub_FB66
bra_F222:
C - - - - - 0x01F232 07:F222: E6 FC     INC ram_00FC
C - - - - - 0x01F234 07:F224: A5 FC     LDA ram_00FC
C - - - - - 0x01F236 07:F226: C9 06     CMP #$06
C - - - - - 0x01F238 07:F228: D0 07     BNE bra_F231
C - - - - - 0x01F23A 07:F22A: A9 07     LDA #$07
C - - - - - 0x01F23C 07:F22C: 85 FC     STA ram_00FC
C - - - - - 0x01F23E 07:F22E: 4C CC F1  JMP loc_F1CC
bra_F231:
C - - - - - 0x01F241 07:F231: C9 01     CMP #$01
C - - - - - 0x01F243 07:F233: D0 97     BNE bra_F1CC
C - - - - - 0x01F245 07:F235: A9 28     LDA #$28
C - - - - - 0x01F247 07:F237: 85 FF     STA ram_00FF
bra_F239_loop:
C - - - - - 0x01F249 07:F239: 20 83 FB  JSR sub_FB83
C - - - - - 0x01F24C 07:F23C: A5 FF     LDA ram_00FF
C - - - - - 0x01F24E 07:F23E: C9 14     CMP #$14
C - - - - - 0x01F250 07:F240: D0 0A     BNE bra_F24C
C - - - - - 0x01F252 07:F242: A9 00     LDA #con_music_off
C - - - - - 0x01F254 07:F244: 20 10 FC  JSR sub_FC10_play_sound
C - - - - - 0x01F257 07:F247: A9 13     LDA #con_music_final_cutscene
C - - - - - 0x01F259 07:F249: 20 10 FC  JSR sub_FC10_play_sound
bra_F24C:
C - - - - - 0x01F25C 07:F24C: C6 FF     DEC ram_00FF
C - - - - - 0x01F25E 07:F24E: D0 E9     BNE bra_F239_loop
C - - - - - 0x01F260 07:F250: 4C CC F1  JMP loc_F1CC
bra_F253:
C - - - - - 0x01F263 07:F253: 20 C0 AD  JSR sub_0x01ADD0
C - - - - - 0x01F266 07:F256: A9 09     LDA #$09
C - - - - - 0x01F268 07:F258: 85 FC     STA ram_00FC
C - - - - - 0x01F26A 07:F25A: 4C CC F1  JMP loc_F1CC
bra_F25D_loop:
C - - - - - 0x01F26D 07:F25D: A5 E0     LDA ram_btn_press
C - - - - - 0x01F26F 07:F25F: 29 10     AND #con_btn_Start
C - - - - - 0x01F271 07:F261: F0 FA     BEQ bra_F25D_loop
C - - - - - 0x01F273 07:F263: A9 00     LDA #con_music_off
C - - - - - 0x01F275 07:F265: 20 10 FC  JSR sub_FC10_play_sound
C - - - - - 0x01F278 07:F268: 20 75 D8  JSR sub_D875_clear_graphics
C - - - - - 0x01F27B 07:F26B: 60        RTS


; bzk garbage
tbl_F26C:
- - - - - - 0x01F27C 07:F26C: 52        .byte $52   ; 00
- - - - - - 0x01F27D 07:F26D: 32        .byte $32   ; 01
- - - - - - 0x01F27E 07:F26E: 33        .byte $33   ; 02
- - - - - - 0x01F27F 07:F26F: 34        .byte $34   ; 03
- - - - - - 0x01F280 07:F270: 35        .byte $35   ; 04
- - - - - - 0x01F281 07:F271: 36        .byte $36   ; 05
- - - - - - 0x01F282 07:F272: 37        .byte $37   ; 06
- - - - - - 0x01F283 07:F273: 38        .byte $38   ; 07
- - - - - - 0x01F284 07:F274: 00        .byte $00   ; 08
- - - - - - 0x01F285 07:F275: 39        .byte $39   ; 09
- - - - - - 0x01F286 07:F276: 53        .byte $53   ; 0A
- - - - - - 0x01F287 07:F277: 3A        .byte $3A   ; 0B



tbl_F278_screen_id:
- D 3 - - - 0x01F288 07:F278: 52        .byte con_CD20_52   ; 00
- D 3 - - - 0x01F289 07:F279: 00        .byte con_CD20_00   ; 01
- D 3 - - - 0x01F28A 07:F27A: 33        .byte con_CD20_33   ; 02
- D 3 - - - 0x01F28B 07:F27B: 34        .byte con_CD20_34   ; 03
- D 3 - - - 0x01F28C 07:F27C: 35        .byte con_CD20_35   ; 04
- D 3 - - - 0x01F28D 07:F27D: 36        .byte con_CD20_36   ; 05
- - - - - - 0x01F28E 07:F27E: 37        .byte con_CD20_37   ; 06
- D 3 - - - 0x01F28F 07:F27F: 38        .byte con_CD20_38   ; 07
- - - - - - 0x01F290 07:F280: 00        .byte con_CD20_00   ; 08
- D 3 - - - 0x01F291 07:F281: 39        .byte con_CD20_39   ; 09
- D 3 - - - 0x01F292 07:F282: 53        .byte con_CD20_53   ; 0A
- D 3 - - - 0x01F293 07:F283: 3A        .byte con_CD20_3A   ; 0B



tbl_F284:
- D 3 - - - 0x01F294 07:F284: 3C        .byte $3C   ; 00
- D 3 - - - 0x01F295 07:F285: C8        .byte $C8   ; 01
- D 3 - - - 0x01F296 07:F286: 78        .byte $78   ; 02
- D 3 - - - 0x01F297 07:F287: C8        .byte $C8   ; 03
- D 3 - - - 0x01F298 07:F288: C8        .byte $C8   ; 04
- D 3 - - - 0x01F299 07:F289: 64        .byte $64   ; 05
- - - - - - 0x01F29A 07:F28A: 3C        .byte $3C   ; 06
- D 3 - - - 0x01F29B 07:F28B: 01        .byte $01   ; 07
- - - - - - 0x01F29C 07:F28C: 01        .byte $01   ; 08
- D 3 - - - 0x01F29D 07:F28D: 78        .byte $78   ; 09
- D 3 - - - 0x01F29E 07:F28E: 78        .byte $78   ; 0A
- D 3 - - - 0x01F29F 07:F28F: 14        .byte $14   ; 0B



tbl_F290:
- D 3 - - - 0x01F2A0 07:F290: 3C        .byte $3C   ; 00
- D 3 - - - 0x01F2A1 07:F291: 01        .byte $01   ; 01
- D 3 - - - 0x01F2A2 07:F292: FF        .byte $FF   ; 02
- D 3 - - - 0x01F2A3 07:F293: D8        .byte $D8   ; 03
- D 3 - - - 0x01F2A4 07:F294: D8        .byte $D8   ; 04
- D 3 - - - 0x01F2A5 07:F295: 74        .byte $74   ; 05
- - - - - - 0x01F2A6 07:F296: 4C        .byte $4C   ; 06
- D 3 - - - 0x01F2A7 07:F297: 01        .byte $01   ; 07
- - - - - - 0x01F2A8 07:F298: 01        .byte $01   ; 08
- D 3 - - - 0x01F2A9 07:F299: 78        .byte $78   ; 09
- D 3 - - - 0x01F2AA 07:F29A: 78        .byte $78   ; 0A
- D 3 - - - 0x01F2AB 07:F29B: 14        .byte $14   ; 0B



sub_F29C:
- - - - - - 0x01F2AC 07:F29C: 58        CLI
- - - - - - 0x01F2AD 07:F29D: 20 98 FE  JSR sub_FE98_nmi_off
- - - - - - 0x01F2B0 07:F2A0: A9 00     LDA #$00    ; con_music_off
- - - - - - 0x01F2B2 07:F2A2: 8D BB 05  STA ram_05BB
- - - - - - 0x01F2B5 07:F2A5: 8D BC 05  STA ram_05BC
- - - - - - 0x01F2B8 07:F2A8: 20 10 FC  JSR sub_FC10_play_sound
- - - - - - 0x01F2BB 07:F2AB: A9 00     LDA #$00
- - - - - - 0x01F2BD 07:F2AD: 8D 90 04  STA ram_pal_spr_new
- - - - - - 0x01F2C0 07:F2B0: A9 30     LDA #$30
- - - - - - 0x01F2C2 07:F2B2: 8D 8F 04  STA ram_pal_bg_new
- - - - - - 0x01F2C5 07:F2B5: 20 75 D8  JSR sub_D875_clear_graphics
- - - - - - 0x01F2C8 07:F2B8: 20 14 E2  JSR sub_E214_create_black_screen
- - - - - - 0x01F2CB 07:F2BB: 20 80 F6  JSR sub_F680_set_chr_banks_24_27
- - - - - - 0x01F2CE 07:F2BE: 20 B0 FC  JSR sub_FCB0_prepare_to_disable_interrupts
- - - - - - 0x01F2D1 07:F2C1: 20 98 FE  JSR sub_FE98_nmi_off
- - - - - - 0x01F2D4 07:F2C4: AE 35 04  LDX ram_difficulty
- - - - - - 0x01F2D7 07:F2C7: BD E7 F2  LDA tbl_F2E7,X
- - - - - - 0x01F2DA 07:F2CA: 20 9B F6  JSR sub_F69B_print_text
- - - - - - 0x01F2DD 07:F2CD: 20 38 F6  JSR sub_F638
- - - - - - 0x01F2E0 07:F2D0: 20 E7 FC  JSR sub_FCE7
- - - - - - 0x01F2E3 07:F2D3: 20 BC F5  JSR sub_F5BC
- - - - - - 0x01F2E6 07:F2D6: A9 28     LDA #$28
- - - - - - 0x01F2E8 07:F2D8: 20 5B FE  JSR sub_FE5B
- - - - - - 0x01F2EB 07:F2DB: 20 DC F5  JSR sub_F5DC
- - - - - - 0x01F2EE 07:F2DE: A5 35     LDA ram_game_flags_1
- - - - - - 0x01F2F0 07:F2E0: 29 FB     AND #con_gf1_04 ^ $FF
- - - - - - 0x01F2F2 07:F2E2: 85 35     STA ram_game_flags_1
- - - - - - 0x01F2F4 07:F2E4: 60        RTS


; bzk garbage
- - - - - - 0x01F2F5 07:F2E5: 05        .byte $05   ; 00
- - - - - - 0x01F2F6 07:F2E6: 06        .byte $06   ; 01



tbl_F2E7:
; bzk bug, this table should have 3 bytes instead of 2
- - - - - - 0x01F2F7 07:F2E7: 09        .byte con_F709_screen_09   ; 00 easy
- - - - - - 0x01F2F8 07:F2E8: 0A        .byte con_F709_screen_0A   ; 01 normal



sub_F2E9:
C - - - - - 0x01F2F9 07:F2E9: A5 35     LDA ram_game_flags_1
C - - - - - 0x01F2FB 07:F2EB: 29 40     AND #con_gf1_40
C - - - - - 0x01F2FD 07:F2ED: F0 77     BEQ bra_F366_RTS
C - - - - - 0x01F2FF 07:F2EF: AE 22 04  LDX ram_mission_hi
C - - - - - 0x01F302 07:F2F2: BD 9E 95  LDA tbl_0x0195AE_checkpoint_mission,X
C - - - - - 0x01F305 07:F2F5: 8D 22 04  STA ram_mission_hi
C - - - - - 0x01F308 07:F2F8: A5 35     LDA ram_game_flags_1
C - - - - - 0x01F30A 07:F2FA: 09 10     ORA #con_gf1_10
C - - - - - 0x01F30C 07:F2FC: 85 35     STA ram_game_flags_1
C - - - - - 0x01F30E 07:F2FE: A9 00     LDA #con_music_off
C - - - - - 0x01F310 07:F300: 20 10 FC  JSR sub_FC10_play_sound
C - - - - - 0x01F313 07:F303: 20 6B FD  JSR sub_FD6B_read_joy_regs
C - - - - - 0x01F316 07:F306: 20 98 FE  JSR sub_FE98_nmi_off
C - - - - - 0x01F319 07:F309: 20 75 D8  JSR sub_D875_clear_graphics
C - - - - - 0x01F31C 07:F30C: 20 14 E2  JSR sub_E214_create_black_screen
C - - - - - 0x01F31F 07:F30F: 20 80 F6  JSR sub_F680_set_chr_banks_24_27
C - - - - - 0x01F322 07:F312: A9 04     LDA #con_F709_screen_04
C - - - - - 0x01F324 07:F314: 20 9B F6  JSR sub_F69B_print_text
C - - - - - 0x01F327 07:F317: A9 11     LDA #$11
C - - - - - 0x01F329 07:F319: 8D 90 04  STA ram_pal_spr_new
C - - - - - 0x01F32C 07:F31C: A9 30     LDA #$30
C - - - - - 0x01F32E 07:F31E: 8D 8F 04  STA ram_pal_bg_new
C - - - - - 0x01F331 07:F321: A9 AA     LDA #$AA
C - - - - - 0x01F333 07:F323: 20 80 F4  JSR sub_F480
C - - - - - 0x01F336 07:F326: 20 38 F6  JSR sub_F638
C - - - - - 0x01F339 07:F329: 20 9B F3  JSR sub_F39B_move_heart_cursor
C - - - - - 0x01F33C 07:F32C: 20 B0 FC  JSR sub_FCB0_prepare_to_disable_interrupts
C - - - - - 0x01F33F 07:F32F: 20 E7 FC  JSR sub_FCE7
C - - - - - 0x01F342 07:F332: 20 BC F5  JSR sub_F5BC
C - - - - - 0x01F345 07:F335: A9 01     LDA #con_music_menu
C - - - - - 0x01F347 07:F337: 20 10 FC  JSR sub_FC10_play_sound
C - - - - - 0x01F34A 07:F33A: A9 80     LDA #con_nmi_1_irq_0
C - - - - - 0x01F34C 07:F33C: 85 EC     STA ram_nmi_flag
C - - - - - 0x01F34E 07:F33E: A9 00     LDA #$00
C - - - - - 0x01F350 07:F340: 85 F0     STA ram_00F0
C - - - - - 0x01F352 07:F342: 20 8C FE  JSR sub_FE8C_nmi_on
bra_F345_loop:
C - - - - - 0x01F355 07:F345: A9 00     LDA #$00
C - - - - - 0x01F357 07:F347: 85 F1     STA ram_00F1
C - - - - - 0x01F359 07:F349: EE A5 04  INC ram_04A5_counter
C - - - - - 0x01F35C 07:F34C: 20 23 EE  JSR sub_EE23
C - - - - - 0x01F35F 07:F34F: A5 E0     LDA ram_btn_press
C - - - - - 0x01F361 07:F351: 29 10     AND #con_btn_Start
C - - - - - 0x01F363 07:F353: F0 F0     BEQ bra_F345_loop
C - - - - - 0x01F365 07:F355: 20 98 FE  JSR sub_FE98_nmi_off
C - - - - - 0x01F368 07:F358: A9 FC     LDA #con_music_ctrl_FC
C - - - - - 0x01F36A 07:F35A: 20 10 FC  JSR sub_FC10_play_sound
C - - - - - 0x01F36D 07:F35D: 20 DC F5  JSR sub_F5DC
C - - - - - 0x01F370 07:F360: A5 35     LDA ram_game_flags_1
C - - - - - 0x01F372 07:F362: 29 EF     AND #con_gf1_10 ^ $FF
C - - - - - 0x01F374 07:F364: 85 35     STA ram_game_flags_1
bra_F366_RTS:
C - - - - - 0x01F376 07:F366: 60        RTS



sub_F367:
C - - - - - 0x01F377 07:F367: A5 35     LDA ram_game_flags_1
C - - - - - 0x01F379 07:F369: 29 10     AND #con_gf1_10
C - - - - - 0x01F37B 07:F36B: F0 2D     BEQ bra_F39A_RTS
C - - - - - 0x01F37D 07:F36D: A5 E0     LDA ram_btn_press
C - - - - - 0x01F37F 07:F36F: 4A        LSR
C - - - - - 0x01F380 07:F370: 4A        LSR
C - - - - - 0x01F381 07:F371: 4A        LSR
C - - - - - 0x01F382 07:F372: 90 0F     BCC bra_F383    ; if not pressed down
C - - - - - 0x01F384 07:F374: A5 35     LDA ram_game_flags_1
C - - - - - 0x01F386 07:F376: 29 40     AND #con_gf1_40
C - - - - - 0x01F388 07:F378: F0 20     BEQ bra_F39A_RTS    ; if continues disabled
; disable continues
C - - - - - 0x01F38A 07:F37A: A5 35     LDA ram_game_flags_1
C - - - - - 0x01F38C 07:F37C: 29 BF     AND #con_gf1_40 ^ $FF
C - - - - - 0x01F38E 07:F37E: 85 35     STA ram_game_flags_1
C - - - - - 0x01F390 07:F380: 4C 92 F3  JMP loc_F392
bra_F383:
C - - - - - 0x01F393 07:F383: 4A        LSR
C - - - - - 0x01F394 07:F384: 90 14     BCC bra_F39A_RTS    ; if not pressed up
C - - - - - 0x01F396 07:F386: A5 35     LDA ram_game_flags_1
C - - - - - 0x01F398 07:F388: 29 40     AND #con_gf1_40
C - - - - - 0x01F39A 07:F38A: D0 0E     BNE bra_F39A_RTS    ; if continues enabled
; enable continues
C - - - - - 0x01F39C 07:F38C: A5 35     LDA ram_game_flags_1
C - - - - - 0x01F39E 07:F38E: 09 40     ORA #con_gf1_40
C - - - - - 0x01F3A0 07:F390: 85 35     STA ram_game_flags_1
loc_F392:
C D 3 - - - 0x01F3A2 07:F392: 20 9B F3  JSR sub_F39B_move_heart_cursor
C - - - - - 0x01F3A5 07:F395: A9 49     LDA #con_sfx_move_cursor
C - - - - - 0x01F3A7 07:F397: 20 10 FC  JSR sub_FC10_play_sound
bra_F39A_RTS:
C - - - - - 0x01F3AA 07:F39A: 60        RTS



sub_F39B_move_heart_cursor:
C - - - - - 0x01F3AB 07:F39B: A2 00     LDX #$00
C - - - - - 0x01F3AD 07:F39D: A0 00     LDY #$00
C - - - - - 0x01F3AF 07:F39F: A5 35     LDA ram_game_flags_1
C - - - - - 0x01F3B1 07:F3A1: 29 40     AND #con_gf1_40
C - - - - - 0x01F3B3 07:F3A3: F0 02     BEQ bra_F3A7_continues_disabled
C - - - - - 0x01F3B5 07:F3A5: A0 01     LDY #$01
bra_F3A7_continues_disabled:
; erase heart and draw it at new spot
C - - - - - 0x01F3B7 07:F3A7: 20 B3 F3  JSR sub_F3B3_print_tile
C - - - - - 0x01F3BA 07:F3AA: E8        INX
C - - - - - 0x01F3BB 07:F3AB: 98        TYA
C - - - - - 0x01F3BC 07:F3AC: 49 01     EOR #$01
C - - - - - 0x01F3BE 07:F3AE: A8        TAY
C - - - - - 0x01F3BF 07:F3AF: 20 B3 F3  JSR sub_F3B3_print_tile
C - - - - - 0x01F3C2 07:F3B2: 60        RTS



sub_F3B3_print_tile:
C - - - - - 0x01F3C3 07:F3B3: 8A        TXA
C - - - - - 0x01F3C4 07:F3B4: 0A        ASL
C - - - - - 0x01F3C5 07:F3B5: AA        TAX
C - - - - - 0x01F3C6 07:F3B6: AD 02 20  LDA $2002
C - - - - - 0x01F3C9 07:F3B9: BD D8 F3  LDA tbl_F3D7 + $01,X
C - - - - - 0x01F3CC 07:F3BC: 8D 06 20  STA $2006
C - - - - - 0x01F3CF 07:F3BF: BD D7 F3  LDA tbl_F3D7,X
C - - - - - 0x01F3D2 07:F3C2: 8D 06 20  STA $2006
C - - - - - 0x01F3D5 07:F3C5: A9 00     LDA #$00
C - - - - - 0x01F3D7 07:F3C7: F0 07     BEQ bra_F3D0    ; jmp


; bzk garbage
- - - - - - 0x01F3D9 07:F3C9: B9 DB F3  LDA tbl_F3DB,Y
- - - - - - 0x01F3DC 07:F3CC: 8D 07 20  STA $2007
- - - - - - 0x01F3DF 07:F3CF: 60        RTS



bra_F3D0:
C - - - - - 0x01F3E0 07:F3D0: B9 DD F3  LDA tbl_F3DD_tiles,Y
C - - - - - 0x01F3E3 07:F3D3: 8D 07 20  STA $2007
C - - - - - 0x01F3E6 07:F3D6: 60        RTS



tbl_F3D7:
- D 3 - - - 0x01F3E7 07:F3D7: 0A 21     .word $210A ; 00
- D 3 - - - 0x01F3E9 07:F3D9: 8A 21     .word $218A ; 01


; bzk garbage
tbl_F3DB:
- - - - - - 0x01F3EB 07:F3DB: 00        .byte $00   ; 
- - - - - - 0x01F3EC 07:F3DC: FF        .byte $FF   ; 



tbl_F3DD_tiles:
- D 3 - - - 0x01F3ED 07:F3DD: 00        .byte $00   ; 00
- D 3 - - - 0x01F3EE 07:F3DE: FC        .byte $FC   ; 01



sub_F3DF:
C - - - - - 0x01F3EF 07:F3DF: A5 35     LDA ram_game_flags_1
C - - - - - 0x01F3F1 07:F3E1: 09 20     ORA #con_gf1_20
C - - - - - 0x01F3F3 07:F3E3: 85 35     STA ram_game_flags_1
C - - - - - 0x01F3F5 07:F3E5: A9 00     LDA #con_music_off
C - - - - - 0x01F3F7 07:F3E7: 20 10 FC  JSR sub_FC10_play_sound
C - - - - - 0x01F3FA 07:F3EA: 20 6B FD  JSR sub_FD6B_read_joy_regs
C - - - - - 0x01F3FD 07:F3ED: 20 98 FE  JSR sub_FE98_nmi_off
C - - - - - 0x01F400 07:F3F0: 20 75 D8  JSR sub_D875_clear_graphics
C - - - - - 0x01F403 07:F3F3: 20 14 E2  JSR sub_E214_create_black_screen
C - - - - - 0x01F406 07:F3F6: 20 80 F6  JSR sub_F680_set_chr_banks_24_27
C - - - - - 0x01F409 07:F3F9: A0 01     LDY #con_F709_screen_01
C - - - - - 0x01F40B 07:F3FB: A9 00     LDA #$00
C - - - - - 0x01F40D 07:F3FD: D0 02     BNE bra_F401    ; bzk optimize, useless branch
C - - - - - 0x01F40F 07:F3FF: A0 00     LDY #con_F709_screen_00
bra_F401:
C - - - - - 0x01F411 07:F401: 98        TYA
C - - - - - 0x01F412 07:F402: 20 9B F6  JSR sub_F69B_print_text
C - - - - - 0x01F415 07:F405: A9 11     LDA #$11
C - - - - - 0x01F417 07:F407: 8D 90 04  STA ram_pal_spr_new
C - - - - - 0x01F41A 07:F40A: A9 30     LDA #$30
C - - - - - 0x01F41C 07:F40C: 8D 8F 04  STA ram_pal_bg_new
C - - - - - 0x01F41F 07:F40F: A9 AA     LDA #$AA
C - - - - - 0x01F421 07:F411: 20 80 F4  JSR sub_F480
C - - - - - 0x01F424 07:F414: 20 38 F6  JSR sub_F638
C - - - - - 0x01F427 07:F417: 20 B0 FC  JSR sub_FCB0_prepare_to_disable_interrupts
C - - - - - 0x01F42A 07:F41A: 20 E7 FC  JSR sub_FCE7
C - - - - - 0x01F42D 07:F41D: 20 BC F5  JSR sub_F5BC
C - - - - - 0x01F430 07:F420: A9 01     LDA #con_music_menu
C - - - - - 0x01F432 07:F422: 20 10 FC  JSR sub_FC10_play_sound
C - - - - - 0x01F435 07:F425: A9 80     LDA #con_nmi_1_irq_0
C - - - - - 0x01F437 07:F427: 85 EC     STA ram_nmi_flag
C - - - - - 0x01F439 07:F429: A9 00     LDA #$00
C - - - - - 0x01F43B 07:F42B: 85 F0     STA ram_00F0
C - - - - - 0x01F43D 07:F42D: 20 8C FE  JSR sub_FE8C_nmi_on
bra_F430_loop:
C - - - - - 0x01F440 07:F430: A9 00     LDA #$00
C - - - - - 0x01F442 07:F432: 85 F1     STA ram_00F1
C - - - - - 0x01F444 07:F434: EE A5 04  INC ram_04A5_counter
C - - - - - 0x01F447 07:F437: A5 34     LDA ram_game_mode
C - - - - - 0x01F449 07:F439: 29 BF     AND #con_gm_friendly_fire ^ $FF
C - - - - - 0x01F44B 07:F43B: 85 34     STA ram_game_mode
C - - - - - 0x01F44D 07:F43D: AE 34 04  LDX ram_0434
C - - - - - 0x01F450 07:F440: A5 34     LDA ram_game_mode
C - - - - - 0x01F452 07:F442: 29 3F     AND #(con_gm_friendly_fire + con_gm_2_players) ^ $FF
C - - - - - 0x01F454 07:F444: 1D 7D F4  ORA tbl_F47D,X
C - - - - - 0x01F457 07:F447: 85 34     STA ram_game_mode
C - - - - - 0x01F459 07:F449: 20 23 EE  JSR sub_EE23
C - - - - - 0x01F45C 07:F44C: A5 E0     LDA ram_btn_press
C - - - - - 0x01F45E 07:F44E: 29 10     AND #con_btn_Start
C - - - - - 0x01F460 07:F450: F0 DE     BEQ bra_F430_loop
C - - - - - 0x01F462 07:F452: A9 00     LDA #$00
C - - - - - 0x01F464 07:F454: F0 15     BEQ bra_F46B    ; jmp


; bzk garbage
- - - - - - 0x01F466 07:F456: AC 35 04  LDY ram_difficulty
- - - - - - 0x01F469 07:F459: AD 22 04  LDA ram_mission_hi
- - - - - - 0x01F46C 07:F45C: F0 0D     BEQ bra_F46B
- - - - - - 0x01F46E 07:F45E: D9 E4 94  CMP tbl_0x0194F4,Y
- - - - - - 0x01F471 07:F461: F0 08     BEQ bra_F46B
- - - - - - 0x01F473 07:F463: 90 06     BCC bra_F46B
- - - - - - 0x01F475 07:F465: B9 E4 94  LDA tbl_0x0194F4,Y
- - - - - - 0x01F478 07:F468: 8D 22 04  STA ram_mission_hi



bra_F46B:
C - - - - - 0x01F47B 07:F46B: 20 98 FE  JSR sub_FE98_nmi_off
C - - - - - 0x01F47E 07:F46E: A9 FC     LDA #con_music_ctrl_FC
C - - - - - 0x01F480 07:F470: 20 10 FC  JSR sub_FC10_play_sound
C - - - - - 0x01F483 07:F473: 20 DC F5  JSR sub_F5DC
C - - - - - 0x01F486 07:F476: A5 35     LDA ram_game_flags_1
C - - - - - 0x01F488 07:F478: 29 DF     AND #con_gf1_20 ^ $FF
C - - - - - 0x01F48A 07:F47A: 85 35     STA ram_game_flags_1
C - - - - - 0x01F48C 07:F47C: 60        RTS



tbl_F47D:
- D 3 - - - 0x01F48D 07:F47D: 00        .byte $00   ; 00 1 player
- D 3 - - - 0x01F48E 07:F47E: 80        .byte con_gm_2_players   ; 01 2 players A
- D 3 - - - 0x01F48F 07:F47F: C0        .byte con_gm_2_players + con_gm_friendly_fire   ; 02 2 players B



sub_F480:
C - - - - - 0x01F490 07:F480: A2 00     LDX #$00
C - - - - - 0x01F492 07:F482: 8E B1 05  STX ram_05B1
C - - - - - 0x01F495 07:F485: A2 3F     LDX #$3F
bra_F487_loop:  ; clear 05BD-05FC
C - - - - - 0x01F497 07:F487: 9D BD 05  STA ram_bg_attr_buffer,X
C - - - - - 0x01F49A 07:F48A: CA        DEX
C - - - - - 0x01F49B 07:F48B: 10 FA     BPL bra_F487_loop
bra_F48D_loop:
C - - - - - 0x01F49D 07:F48D: 20 B0 FC  JSR sub_FCB0_prepare_to_disable_interrupts
C - - - - - 0x01F4A0 07:F490: 20 70 C6  JSR sub_C670_write_buffer_to_ppu
C - - - - - 0x01F4A3 07:F493: 20 96 C5  JSR sub_C596
C - - - - - 0x01F4A6 07:F496: AD BB 05  LDA ram_05BB
C - - - - - 0x01F4A9 07:F499: CD BC 05  CMP ram_05BC
C - - - - - 0x01F4AC 07:F49C: D0 EF     BNE bra_F48D_loop
C - - - - - 0x01F4AE 07:F49E: 60        RTS



sub_F49F:
C - - - - - 0x01F4AF 07:F49F: A5 35     LDA ram_game_flags_1
C - - - - - 0x01F4B1 07:F4A1: 29 20     AND #con_gf1_20
C - - - - - 0x01F4B3 07:F4A3: F0 79     BEQ bra_F51E_RTS
C - - - - - 0x01F4B5 07:F4A5: A5 E0     LDA ram_btn_press
C - - - - - 0x01F4B7 07:F4A7: 4A        LSR
C - - - - - 0x01F4B8 07:F4A8: 90 16     BCC bra_F4C0
C - - - - - 0x01F4BA 07:F4AA: A0 00     LDY #$00
C - - - - - 0x01F4BC 07:F4AC: D0 12     BNE bra_F4C0    ; bzk optimize, useless branch
C - - - - - 0x01F4BE 07:F4AE: AE 35 04  LDX ram_difficulty
C - - - - - 0x01F4C1 07:F4B1: E0 02     CPX #$02
C - - - - - 0x01F4C3 07:F4B3: B0 0B     BCS bra_F4C0
C - - - - - 0x01F4C5 07:F4B5: A9 00     LDA #$00
C - - - - - 0x01F4C7 07:F4B7: 20 6E F5  JSR sub_F56E
C - - - - - 0x01F4CA 07:F4BA: EE 35 04  INC ram_difficulty
C - - - - - 0x01F4CD 07:F4BD: 4C 19 F5  JMP loc_F519_play_move_cursor_sfx
bra_F4C0:
C - - - - - 0x01F4D0 07:F4C0: 4A        LSR
C - - - - - 0x01F4D1 07:F4C1: 90 14     BCC bra_F4D7
C - - - - - 0x01F4D3 07:F4C3: A0 00     LDY #$00
C - - - - - 0x01F4D5 07:F4C5: D0 10     BNE bra_F4D7    ; bzk optimize, useless branch
C - - - - - 0x01F4D7 07:F4C7: AE 35 04  LDX ram_difficulty
C - - - - - 0x01F4DA 07:F4CA: F0 0B     BEQ bra_F4D7
C - - - - - 0x01F4DC 07:F4CC: A9 00     LDA #$00
C - - - - - 0x01F4DE 07:F4CE: 20 6E F5  JSR sub_F56E
C - - - - - 0x01F4E1 07:F4D1: CE 35 04  DEC ram_difficulty
C - - - - - 0x01F4E4 07:F4D4: 4C 19 F5  JMP loc_F519_play_move_cursor_sfx
bra_F4D7:
C - - - - - 0x01F4E7 07:F4D7: 4A        LSR
C - - - - - 0x01F4E8 07:F4D8: 90 12     BCC bra_F4EC
C - - - - - 0x01F4EA 07:F4DA: AE 34 04  LDX ram_0434
C - - - - - 0x01F4ED 07:F4DD: E0 02     CPX #$02
C - - - - - 0x01F4EF 07:F4DF: B0 0B     BCS bra_F4EC
C - - - - - 0x01F4F1 07:F4E1: A9 00     LDA #$00
C - - - - - 0x01F4F3 07:F4E3: 20 4E F5  JSR sub_F54E
C - - - - - 0x01F4F6 07:F4E6: EE 34 04  INC ram_0434
C - - - - - 0x01F4F9 07:F4E9: 4C 19 F5  JMP loc_F519_play_move_cursor_sfx
bra_F4EC:
C - - - - - 0x01F4FC 07:F4EC: 4A        LSR
C - - - - - 0x01F4FD 07:F4ED: 90 10     BCC bra_F4FF
C - - - - - 0x01F4FF 07:F4EF: AE 34 04  LDX ram_0434
C - - - - - 0x01F502 07:F4F2: F0 2A     BEQ bra_F51E_RTS
C - - - - - 0x01F504 07:F4F4: A9 00     LDA #$00
C - - - - - 0x01F506 07:F4F6: 20 4E F5  JSR sub_F54E
C - - - - - 0x01F509 07:F4F9: CE 34 04  DEC ram_0434
C - - - - - 0x01F50C 07:F4FC: 4C 19 F5  JMP loc_F519_play_move_cursor_sfx
bra_F4FF:
C - - - - - 0x01F50F 07:F4FF: A5 E0     LDA ram_btn_press
C - - - - - 0x01F511 07:F501: 29 20     AND #con_btn_Select
C - - - - - 0x01F513 07:F503: F0 19     BEQ bra_F51E_RTS
C - - - - - 0x01F515 07:F505: A9 00     LDA #$00
C - - - - - 0x01F517 07:F507: 20 6E F5  JSR sub_F56E
C - - - - - 0x01F51A 07:F50A: EE 35 04  INC ram_difficulty
C - - - - - 0x01F51D 07:F50D: AD 35 04  LDA ram_difficulty
C - - - - - 0x01F520 07:F510: C9 03     CMP #$03
C - - - - - 0x01F522 07:F512: 90 05     BCC bra_F519_not_overflow
C - - - - - 0x01F524 07:F514: A9 00     LDA #$00
C - - - - - 0x01F526 07:F516: 8D 35 04  STA ram_difficulty
bra_F519_not_overflow:
loc_F519_play_move_cursor_sfx:
C D 3 - - - 0x01F529 07:F519: A9 49     LDA #con_sfx_move_cursor
C - - - - - 0x01F52B 07:F51B: 20 10 FC  JSR sub_FC10_play_sound
bra_F51E_RTS:
C - - - - - 0x01F52E 07:F51E: 60        RTS



sub_F51F:
C - - - - - 0x01F52F 07:F51F: A5 35     LDA ram_game_flags_1
C - - - - - 0x01F531 07:F521: 29 20     AND #con_gf1_20
C - - - - - 0x01F533 07:F523: F0 28     BEQ bra_F54D_RTS
C - - - - - 0x01F535 07:F525: AD A5 04  LDA ram_04A5_counter
C - - - - - 0x01F538 07:F528: 29 10     AND #$10
C - - - - - 0x01F53A 07:F52A: F0 17     BEQ bra_F543
C - - - - - 0x01F53C 07:F52C: A9 FF     LDA #$FF
C - - - - - 0x01F53E 07:F52E: A0 00     LDY #$00
C - - - - - 0x01F540 07:F530: D0 02     BNE bra_F534    ; bzk optimize, useless branch
C - - - - - 0x01F542 07:F532: A9 FC     LDA #$FC
bra_F534:
C - - - - - 0x01F544 07:F534: 20 4E F5  JSR sub_F54E
C - - - - - 0x01F547 07:F537: A9 FF     LDA #$FF
C - - - - - 0x01F549 07:F539: A0 00     LDY #$00
C - - - - - 0x01F54B 07:F53B: D0 02     BNE bra_F53F    ; bzk optimize, useless branch
C - - - - - 0x01F54D 07:F53D: A9 FC     LDA #$FC
bra_F53F:
C - - - - - 0x01F54F 07:F53F: 20 6E F5  JSR sub_F56E
C - - - - - 0x01F552 07:F542: 60        RTS
bra_F543:
C - - - - - 0x01F553 07:F543: A9 00     LDA #$00
C - - - - - 0x01F555 07:F545: 20 4E F5  JSR sub_F54E
C - - - - - 0x01F558 07:F548: A9 00     LDA #$00
C - - - - - 0x01F55A 07:F54A: 20 6E F5  JSR sub_F56E
bra_F54D_RTS:
C - - - - - 0x01F55D 07:F54D: 60        RTS



sub_F54E:
; A = 00 FC
C - - - - - 0x01F55E 07:F54E: 48        PHA
C - - - - - 0x01F55F 07:F54F: AD 34 04  LDA ram_0434
C - - - - - 0x01F562 07:F552: 0A        ASL
C - - - - - 0x01F563 07:F553: AA        TAX
C - - - - - 0x01F564 07:F554: AD 02 20  LDA $2002
C - - - - - 0x01F567 07:F557: BD 69 F5  LDA tbl_F568_ppu + $01,X
C - - - - - 0x01F56A 07:F55A: 8D 06 20  STA $2006
C - - - - - 0x01F56D 07:F55D: BD 68 F5  LDA tbl_F568_ppu,X
C - - - - - 0x01F570 07:F560: 8D 06 20  STA $2006
C - - - - - 0x01F573 07:F563: 68        PLA
C - - - - - 0x01F574 07:F564: 8D 07 20  STA $2007
C - - - - - 0x01F577 07:F567: 60        RTS



tbl_F568_ppu:
- D 3 - - - 0x01F578 07:F568: 09 21     .word $2109 ; 00
- D 3 - - - 0x01F57A 07:F56A: 49 21     .word $2149 ; 01
- D 3 - - - 0x01F57C 07:F56C: 89 21     .word $2189 ; 02



sub_F56E:
C - - - - - 0x01F57E 07:F56E: 48        PHA
C - - - - - 0x01F57F 07:F56F: AD 35 04  LDA ram_difficulty
C - - - - - 0x01F582 07:F572: 0A        ASL
C - - - - - 0x01F583 07:F573: AA        TAX
C - - - - - 0x01F584 07:F574: AD 02 20  LDA $2002
C - - - - - 0x01F587 07:F577: A9 00     LDA #$00
C - - - - - 0x01F589 07:F579: F0 11     BEQ bra_F58C    ; jmp


; bzk garbage
- - - - - - 0x01F58B 07:F57B: BD 9E F5  LDA tbl_F59D + $01,X
- - - - - - 0x01F58E 07:F57E: 8D 06 20  STA $2006
- - - - - - 0x01F591 07:F581: BD 9D F5  LDA tbl_F59D,X
- - - - - - 0x01F594 07:F584: 8D 06 20  STA $2006
- - - - - - 0x01F597 07:F587: 68        PLA
- - - - - - 0x01F598 07:F588: 8D 07 20  STA $2007
- - - - - - 0x01F59B 07:F58B: 60        RTS



bra_F58C:
C - - - - - 0x01F59C 07:F58C: BD A4 F5  LDA tbl_F5A3 + $01,X
C - - - - - 0x01F59F 07:F58F: 8D 06 20  STA $2006
C - - - - - 0x01F5A2 07:F592: BD A3 F5  LDA tbl_F5A3,X
C - - - - - 0x01F5A5 07:F595: 8D 06 20  STA $2006
C - - - - - 0x01F5A8 07:F598: 68        PLA
C - - - - - 0x01F5A9 07:F599: 8D 07 20  STA $2007
C - - - - - 0x01F5AC 07:F59C: 60        RTS



tbl_F59D:
; bzk garbage
- - - - - - 0x01F5AD 07:F59D: 49 22     .word $2249 ; 00
- - - - - - 0x01F5AF 07:F59F: 89 22     .word $2289 ; 01
- - - - - - 0x01F5B1 07:F5A1: C9 22     .word $22C9 ; 02



tbl_F5A3:
- D 3 - - - 0x01F5B3 07:F5A3: 04 23     .word $2304 ; 00 easy
- D 3 - - - 0x01F5B5 07:F5A5: 0B 23     .word $230B ; 01 normal
- D 3 - - - 0x01F5B7 07:F5A7: 14 23     .word $2314 ; 02 difficult



sub_F5A9:
C - - - - - 0x01F5B9 07:F5A9: 20 47 E2  JSR sub_E247
C - - - - - 0x01F5BC 07:F5AC: A2 08     LDX #$08
bra_F5AE_loop:
C - - - - - 0x01F5BE 07:F5AE: 8A        TXA
C - - - - - 0x01F5BF 07:F5AF: 48        PHA
C - - - - - 0x01F5C0 07:F5B0: 20 B0 FC  JSR sub_FCB0_prepare_to_disable_interrupts
C - - - - - 0x01F5C3 07:F5B3: 20 70 C6  JSR sub_C670_write_buffer_to_ppu
C - - - - - 0x01F5C6 07:F5B6: 68        PLA
C - - - - - 0x01F5C7 07:F5B7: AA        TAX
C - - - - - 0x01F5C8 07:F5B8: CA        DEX
C - - - - - 0x01F5C9 07:F5B9: 10 F3     BPL bra_F5AE_loop
C - - - - - 0x01F5CB 07:F5BB: 60        RTS



sub_F5BC:
C - - - - - 0x01F5CC 07:F5BC: A2 00     LDX #$00
bra_F5BE:
C - - - - - 0x01F5CE 07:F5BE: 8E 3F 06  STX ram_063F
C - - - - - 0x01F5D1 07:F5C1: A0 02     LDY #$02
bra_F5C3_loop:
C - - - - - 0x01F5D3 07:F5C3: 98        TYA
C - - - - - 0x01F5D4 07:F5C4: 48        PHA
bra_F5C5_loop:
C - - - - - 0x01F5D5 07:F5C5: 20 B0 FC  JSR sub_FCB0_prepare_to_disable_interrupts
C - - - - - 0x01F5D8 07:F5C8: 20 42 FE  JSR sub_FE42_update_oam
C - - - - - 0x01F5DB 07:F5CB: 20 70 C6  JSR sub_C670_write_buffer_to_ppu
C - - - - - 0x01F5DE 07:F5CE: 20 D0 D6  JSR sub_D6D0
C - - - - - 0x01F5E1 07:F5D1: AD 3F 06  LDA ram_063F
C - - - - - 0x01F5E4 07:F5D4: 10 EF     BPL bra_F5C5_loop
C - - - - - 0x01F5E6 07:F5D6: 68        PLA
C - - - - - 0x01F5E7 07:F5D7: A8        TAY
C - - - - - 0x01F5E8 07:F5D8: 88        DEY
C - - - - - 0x01F5E9 07:F5D9: 10 E8     BPL bra_F5C3_loop
C - - - - - 0x01F5EB 07:F5DB: 60        RTS



sub_F5DC:
C - - - - - 0x01F5EC 07:F5DC: A2 01     LDX #$01
C - - - - - 0x01F5EE 07:F5DE: D0 DE     BNE bra_F5BE    ; jmp



sub_F5E0:
C - - - - - 0x01F5F0 07:F5E0: A5 E9     LDA ram_for_2000
C - - - - - 0x01F5F2 07:F5E2: 29 FC     AND #$FC
C - - - - - 0x01F5F4 07:F5E4: 0D 63 06  ORA ram_base_nmt
C - - - - - 0x01F5F7 07:F5E7: 49 02     EOR #$02
C - - - - - 0x01F5F9 07:F5E9: 85 E9     STA ram_for_2000
C - - - - - 0x01F5FB 07:F5EB: AD 02 20  LDA $2002
C - - - - - 0x01F5FE 07:F5EE: A9 00     LDA #$00    ; X
C - - - - - 0x01F600 07:F5F0: 8D 05 20  STA $2005
C - - - - - 0x01F603 07:F5F3: A9 D0     LDA #$D0    ; Y
C - - - - - 0x01F605 07:F5F5: 8D 05 20  STA $2005
C - - - - - 0x01F608 07:F5F8: A5 E9     LDA ram_for_2000
C - - - - - 0x01F60A 07:F5FA: 8D 00 20  STA $2000
C - - - - - 0x01F60D 07:F5FD: A2 2B     LDX #> $2B00
C - - - - - 0x01F60F 07:F5FF: AD 63 06  LDA ram_base_nmt
C - - - - - 0x01F612 07:F602: 29 02     AND #$02
C - - - - - 0x01F614 07:F604: F0 02     BEQ bra_F608
C - - - - - 0x01F616 07:F606: A2 23     LDX #> $2300
bra_F608:
C - - - - - 0x01F618 07:F608: 8E 06 20  STX $2006
C - - - - - 0x01F61B 07:F60B: A2 00     LDX #$00
C - - - - - 0x01F61D 07:F60D: 8E 06 20  STX $2006
C - - - - - 0x01F620 07:F610: 60        RTS



sub_F611:
C - - - - - 0x01F621 07:F611: A5 E9     LDA ram_for_2000
C - - - - - 0x01F623 07:F613: 29 FC     AND #$FC
C - - - - - 0x01F625 07:F615: 0D 63 06  ORA ram_base_nmt
C - - - - - 0x01F628 07:F618: 85 E9     STA ram_for_2000
C - - - - - 0x01F62A 07:F61A: AD 02 20  LDA $2002
C - - - - - 0x01F62D 07:F61D: AD 62 06  LDA ram_scroll_X_1
C - - - - - 0x01F630 07:F620: 8D 05 20  STA $2005
C - - - - - 0x01F633 07:F623: A9 F0     LDA #$F0    ; Y
C - - - - - 0x01F635 07:F625: 8D 05 20  STA $2005
C - - - - - 0x01F638 07:F628: A5 E9     LDA ram_for_2000
C - - - - - 0x01F63A 07:F62A: 8D 00 20  STA $2000
C - - - - - 0x01F63D 07:F62D: A9 2A     LDA #> $2A80
C - - - - - 0x01F63F 07:F62F: 8D 06 20  STA $2006
C - - - - - 0x01F642 07:F632: A9 80     LDA #< $2A80
C - - - - - 0x01F644 07:F634: 8D 06 20  STA $2006
C - - - - - 0x01F647 07:F637: 60        RTS



sub_F638:
; set base nametable to 2000 and reset scroll
C - - - - - 0x01F648 07:F638: AD 02 20  LDA $2002
C - - - - - 0x01F64B 07:F63B: A5 E9     LDA ram_for_2000
C - - - - - 0x01F64D 07:F63D: 29 FC     AND #$FC
C - - - - - 0x01F64F 07:F63F: 85 E9     STA ram_for_2000
C - - - - - 0x01F651 07:F641: 8D 00 20  STA $2000
C - - - - - 0x01F654 07:F644: A9 00     LDA #$00
C - - - - - 0x01F656 07:F646: 8D 05 20  STA $2005
C - - - - - 0x01F659 07:F649: 8D 05 20  STA $2005
C - - - - - 0x01F65C 07:F64C: 60        RTS


; bzk garbage, same as 0x01F648
- - - - - - 0x01F65D 07:F64D: AD 02 20  LDA $2002
- - - - - - 0x01F660 07:F650: A5 E9     LDA ram_for_2000
- - - - - - 0x01F662 07:F652: 29 FC     AND #$FC
- - - - - - 0x01F664 07:F654: 85 E9     STA ram_for_2000
- - - - - - 0x01F666 07:F656: 8D 00 20  STA $2000
- - - - - - 0x01F669 07:F659: A9 00     LDA #$00
- - - - - - 0x01F66B 07:F65B: 8D 05 20  STA $2005
- - - - - - 0x01F66E 07:F65E: 8D 05 20  STA $2005
- - - - - - 0x01F671 07:F661: 60        RTS



sub_F662:
C - - - - - 0x01F672 07:F662: AD 02 20  LDA $2002
C - - - - - 0x01F675 07:F665: A9 08     LDA #$08
C - - - - - 0x01F677 07:F667: 85 E9     STA ram_for_2000
C - - - - - 0x01F679 07:F669: 8D 00 20  STA $2000
C - - - - - 0x01F67C 07:F66C: A9 00     LDA #$00
C - - - - - 0x01F67E 07:F66E: 8D 05 20  STA $2005
C - - - - - 0x01F681 07:F671: 8D 05 20  STA $2005
C - - - - - 0x01F684 07:F674: 60        RTS



sub_F675_clear_plr_buttons:
; clear 00DC-00E3
; bzk optimize, clearing 00DC-00DF does nothing useful
C - - - - - 0x01F685 07:F675: A2 07     LDX #$07
C - - - - - 0x01F687 07:F677: A9 00     LDA #$00
bra_F679_loop:
; ram_btn_press
; ram_btn_hold
C - - - - - 0x01F689 07:F679: 9D DC 00  STA a: ram_00DC,X
C - - - - - 0x01F68C 07:F67C: CA        DEX
C - - - - - 0x01F68D 07:F67D: 10 FA     BPL bra_F679_loop
C - - - - - 0x01F68F 07:F67F: 60        RTS



sub_F680_set_chr_banks_24_27:
C - - - - - 0x01F690 07:F680: A2 30     LDX #con_chr_bank + $30
C - - - - - 0x01F692 07:F682: A9 00     LDA #$00
C - - - - - 0x01F694 07:F684: D0 02     BNE bra_F688    ; bzk optimize, useless branch
C - - - - - 0x01F696 07:F686: A2 24     LDX #con_chr_bank + $24
bra_F688:
sub_F688_set_chr_banks_2C_2F:
C - - - - - 0x01F698 07:F688: 8E 9C 04  STX ram_chr_bg_1
C - - - - - 0x01F69B 07:F68B: E8        INX ; con_chr_bank + $25
C - - - - - 0x01F69C 07:F68C: 8E 9D 04  STX ram_chr_bg_2
C - - - - - 0x01F69F 07:F68F: E8        INX ; con_chr_bank + $26
C - - - - - 0x01F6A0 07:F690: 8E 9E 04  STX ram_chr_bg_3
C - - - - - 0x01F6A3 07:F693: E8        INX ; con_chr_bank + $27
C - - - - - 0x01F6A4 07:F694: 8E 9F 04  STX ram_chr_bg_4
C - - - - - 0x01F6A7 07:F697: 20 A4 FE  JSR sub_FEA4_write_bg_chr_banks
C - - - - - 0x01F6AA 07:F69A: 60        RTS



sub_F69B_print_text:
C - - - - - 0x01F6AB 07:F69B: 0A        ASL
C - - - - - 0x01F6AC 07:F69C: AA        TAX
C - - - - - 0x01F6AD 07:F69D: BD 09 F7  LDA tbl_F709_text,X
C - - - - - 0x01F6B0 07:F6A0: 85 29     STA ram_0029
C - - - - - 0x01F6B2 07:F6A2: BD 0A F7  LDA tbl_F709_text + $01,X
C - - - - - 0x01F6B5 07:F6A5: 85 2A     STA ram_002A
C - - - - - 0x01F6B7 07:F6A7: 20 98 E7  JSR sub_E798_disable_rendering
C - - - - - 0x01F6BA 07:F6AA: A0 00     LDY #$00
loc_F6AC_loop:
C D 3 - - - 0x01F6BC 07:F6AC: AD 02 20  LDA $2002
C - - - - - 0x01F6BF 07:F6AF: C8        INY
C - - - - - 0x01F6C0 07:F6B0: B1 29     LDA (ram_0029),Y
C - - - - - 0x01F6C2 07:F6B2: 8D 06 20  STA $2006
C - - - - - 0x01F6C5 07:F6B5: 88        DEY
C - - - - - 0x01F6C6 07:F6B6: B1 29     LDA (ram_0029),Y
C - - - - - 0x01F6C8 07:F6B8: 8D 06 20  STA $2006
C - - - - - 0x01F6CB 07:F6BB: C8        INY
C - - - - - 0x01F6CC 07:F6BC: C8        INY
bra_F6BD_loop:
C - - - - - 0x01F6CD 07:F6BD: B1 29     LDA (ram_0029),Y
C - - - - - 0x01F6CF 07:F6BF: C9 01     CMP #$01
C - - - - - 0x01F6D1 07:F6C1: D0 04     BNE bra_F6C7_not_a_control_byte
; 01
C - - - - - 0x01F6D3 07:F6C3: C8        INY
C - - - - - 0x01F6D4 07:F6C4: 4C AC F6  JMP loc_F6AC_loop
bra_F6C7_not_a_control_byte:
C - - - - - 0x01F6D7 07:F6C7: C9 00     CMP #$00
C - - - - - 0x01F6D9 07:F6C9: F0 09     BEQ bra_F6D4_RTS    ; if not end token
; 00
C - - - - - 0x01F6DB 07:F6CB: 20 D5 F6  JSR sub_F6D5_convert_byte_into_tile
C - - - - - 0x01F6DE 07:F6CE: 8D 07 20  STA $2007
C - - - - - 0x01F6E1 07:F6D1: C8        INY
C - - - - - 0x01F6E2 07:F6D2: D0 E9     BNE bra_F6BD_loop
bra_F6D4_RTS:
C - - - - - 0x01F6E4 07:F6D4: 60        RTS



sub_F6D5_convert_byte_into_tile:
; 20 = space
; 21 = ©
; 2C = ,
; 2E = .
; 30-39 = +BA
; 41-5A = +8F
; the rest cases are byte = tile
    ; these bytes are 02-1F, 22-2B, 2D, 2F, 3A-40, 5B-FF
C - - - - - 0x01F6E5 07:F6D5: C9 20     CMP #$20
C - - - - - 0x01F6E7 07:F6D7: D0 03     BNE bra_F6DC
C - - - - - 0x01F6E9 07:F6D9: A9 00     LDA #$00    ; space
C - - - - - 0x01F6EB 07:F6DB: 60        RTS
bra_F6DC:
C - - - - - 0x01F6EC 07:F6DC: C9 21     CMP #$21
C - - - - - 0x01F6EE 07:F6DE: D0 03     BNE bra_F6E3
- - - - - - 0x01F6F0 07:F6E0: A9 FA     LDA #$FA    ; ©
- - - - - - 0x01F6F2 07:F6E2: 60        RTS
bra_F6E3:
C - - - - - 0x01F6F3 07:F6E3: C9 2C     CMP #$2C
C - - - - - 0x01F6F5 07:F6E5: D0 03     BNE bra_F6EA
- - - - - - 0x01F6F7 07:F6E7: A9 F7     LDA #$F7    ; ,
- - - - - - 0x01F6F9 07:F6E9: 60        RTS
bra_F6EA:
C - - - - - 0x01F6FA 07:F6EA: C9 2E     CMP #$2E
C - - - - - 0x01F6FC 07:F6EC: D0 03     BNE bra_F6F1
- - - - - - 0x01F6FE 07:F6EE: A9 F6     LDA #$F6    ; .
- - - - - - 0x01F700 07:F6F0: 60        RTS
bra_F6F1:
C - - - - - 0x01F701 07:F6F1: C9 30     CMP #$30
C - - - - - 0x01F703 07:F6F3: 90 08     BCC bra_F6FD
C - - - - - 0x01F705 07:F6F5: C9 3A     CMP #$3A
C - - - - - 0x01F707 07:F6F7: B0 04     BCS bra_F6FD
C - - - - - 0x01F709 07:F6F9: 18        CLC
C - - - - - 0x01F70A 07:F6FA: 69 BA     ADC #$BA
C - - - - - 0x01F70C 07:F6FC: 60        RTS
bra_F6FD:
C - - - - - 0x01F70D 07:F6FD: C9 41     CMP #$41
C - - - - - 0x01F70F 07:F6FF: 90 07     BCC bra_F708_RTS
C - - - - - 0x01F711 07:F701: C9 5B     CMP #$5B
C - - - - - 0x01F713 07:F703: B0 03     BCS bra_F708_RTS
C - - - - - 0x01F715 07:F705: 18        CLC
C - - - - - 0x01F716 07:F706: 69 8F     ADC #$8F
bra_F708_RTS:
C - - - - - 0x01F718 07:F708: 60        RTS



tbl_F709_text:
; see con_F709_screen
- D 3 - - - 0x01F719 07:F709: 21 F7     .word _off020_F721_00
- - - - - - 0x01F71B 07:F70B: 70 F7     .word _off020_F770_01
- D 3 - - - 0x01F71D 07:F70D: D2 F7     .word _off020_F7D2_02
- - - - - - 0x01F71F 07:F70F: DE F7     .word _off020_F7DE_03 ; unused, index not found
- D 3 - - - 0x01F721 07:F711: 20 F8     .word _off020_F820_04
- - - - - - 0x01F723 07:F713: 33 F8     .word _off020_F833_05 ; unused, index not found
- - - - - - 0x01F725 07:F715: 3E F8     .word _off020_F83E_06 ; unused, index not found
- - - - - - 0x01F727 07:F717: 47 F8     .word _off020_F847_07 ; unused, index not found
- - - - - - 0x01F729 07:F719: 52 F8     .word _off020_F852_08
- - - - - - 0x01F72B 07:F71B: 0C F9     .word _off020_F90C_09
- - - - - - 0x01F72D 07:F71D: 9D F9     .word _off020_F99D_0A
- D 3 - - - 0x01F72F 07:F71F: 7F FA     .word _off020_FA7F_0B_sample_version



_off020_F721_00:
- D 3 - I - 0x01F731 07:F721: 88 20     .word $2088
- D 3 - I - 0x01F733 07:F723: 44        .byte $44, $4F, $55, $42, $4C, $45, $20, $20   ; 
- D 3 - I - 0x01F73B 07:F72B: 44        .byte $44, $52, $41, $47, $4F, $4E   ; 
- D 3 - I - 0x01F741 07:F731: 01        .byte $01   ; 

- D 3 - I - 0x01F742 07:F732: 0A 21     .word $210A
- D 3 - I - 0x01F744 07:F734: 31        .byte $31, $50, $20, $50, $4C, $41, $59   ; 
- D 3 - I - 0x01F74B 07:F73B: 01        .byte $01   ; 

- D 3 - I - 0x01F74C 07:F73C: 4A 21     .word $214A
- D 3 - I - 0x01F74E 07:F73E: 32        .byte $32, $50, $20, $50, $4C, $41, $59, $20   ; 
- D 3 - I - 0x01F756 07:F746: 41        .byte $41   ; 
- D 3 - I - 0x01F757 07:F747: 01        .byte $01   ; 

- D 3 - I - 0x01F758 07:F748: 8A 21     .word $218A
- D 3 - I - 0x01F75A 07:F74A: 32        .byte $32, $50, $20, $50, $4C, $41, $59, $20   ; 
- D 3 - I - 0x01F762 07:F752: 42        .byte $42   ; 
- D 3 - I - 0x01F763 07:F753: 01        .byte $01   ; 

- D 3 - I - 0x01F764 07:F754: 05 23     .word $2305
- D 3 - I - 0x01F766 07:F756: 45        .byte $45, $41, $53, $59, $20, $20, $20, $4E   ; 
- D 3 - I - 0x01F76E 07:F75E: 4F        .byte $4F, $52, $4D, $41, $4C, $20, $20, $20   ; 
- D 3 - I - 0x01F776 07:F766: 44        .byte $44, $49, $46, $46, $49, $43, $55, $4C   ; 
- D 3 - I - 0x01F77E 07:F76E: 54        .byte $54   ; 
- D 3 - I - 0x01F77F 07:F76F: 00        .byte $00   ; end token



_off020_F770_01:
- - - - - - 0x01F780 07:F770: 85 20     .word $2085
- - - - - - 0x01F782 07:F772: 52        .byte $52, $45, $56, $45, $4E, $47, $45, $20   ; 
- - - - - - 0x01F78A 07:F77A: 4F        .byte $4F, $46, $20, $54, $48, $45, $20, $44   ; 
- - - - - - 0x01F792 07:F782: 52        .byte $52, $41, $47, $4F, $4E, $53, $2E   ; 
- - - - - - 0x01F799 07:F789: 01        .byte $01   ; 

- - - - - - 0x01F79A 07:F78A: 0A 21     .word $210A
- - - - - - 0x01F79C 07:F78C: 31        .byte $31, $50, $20, $50, $4C, $41, $59   ; 
- - - - - - 0x01F7A3 07:F793: 01        .byte $01   ; 

- - - - - - 0x01F7A4 07:F794: 4A 21     .word $214A
- - - - - - 0x01F7A6 07:F796: 32        .byte $32, $50, $20, $50, $4C, $41, $59, $20   ; 
- - - - - - 0x01F7AE 07:F79E: 41        .byte $41   ; 
- - - - - - 0x01F7AF 07:F79F: 01        .byte $01   ; 

- - - - - - 0x01F7B0 07:F7A0: 8A 21     .word $218A
- - - - - - 0x01F7B2 07:F7A2: 32        .byte $32, $50, $20, $50, $4C, $41, $59, $20   ; 
- - - - - - 0x01F7BA 07:F7AA: 42        .byte $42   ; 
- - - - - - 0x01F7BB 07:F7AB: 01        .byte $01   ; 

- - - - - - 0x01F7BC 07:F7AC: 4A 22     .word $224A
- - - - - - 0x01F7BE 07:F7AE: 50        .byte $50, $52, $41, $43, $54, $49, $43, $45   ; 
- - - - - - 0x01F7C6 07:F7B6: 01        .byte $01   ; 

- - - - - - 0x01F7C7 07:F7B7: 8A 22     .word $228A
- - - - - - 0x01F7C9 07:F7B9: 57        .byte $57, $41, $52, $52, $49, $4F, $52   ; 
- - - - - - 0x01F7D0 07:F7C0: 01        .byte $01   ; 

- - - - - - 0x01F7D1 07:F7C1: CA 22     .word $22CA
- - - - - - 0x01F7D3 07:F7C3: 53        .byte $53, $55, $50, $52, $45, $4D, $45, $20   ; 
- - - - - - 0x01F7DB 07:F7CB: 4D        .byte $4D, $41, $53, $54, $45, $52   ; 
- - - - - - 0x01F7E1 07:F7D1: 00        .byte $00   ; end token



_off020_F7D2_02:
- D 3 - I - 0x01F7E2 07:F7D2: CB 21     .word $21CB
- D 3 - I - 0x01F7E4 07:F7D4: 47        .byte $47, $41, $4D, $45, $20, $4F, $56, $45   ; 
- D 3 - I - 0x01F7EC 07:F7DC: 52        .byte $52   ; 
- D 3 - I - 0x01F7ED 07:F7DD: 00        .byte $00   ; end token



_off020_F7DE_03:
; bzk garbage
- - - - - - 0x01F7EE 07:F7DE: 05 21     .word $2105
- - - - - - 0x01F7F0 07:F7E0: 59        .byte $59, $4F, $55, $20, $48, $41, $56, $45   ; 
- - - - - - 0x01F7F8 07:F7E8: 20        .byte $20, $43, $4F, $4D, $50, $4C, $45, $54   ; 
- - - - - - 0x01F800 07:F7F0: 45        .byte $45, $44   ; 
- - - - - - 0x01F802 07:F7F2: 01        .byte $01   ; 

- - - - - - 0x01F803 07:F7F3: 50 21     .word $2150
- - - - - - 0x01F805 07:F7F5: 4C        .byte $4C, $45, $56, $45, $4C, $2E   ; 
- - - - - - 0x01F80B 07:F7FB: 01        .byte $01   ; 

- - - - - - 0x01F80C 07:F7FC: 05 22     .word $2205
- - - - - - 0x01F80E 07:F7FE: 54        .byte $54, $4F, $20, $43, $4F, $4E, $54, $49   ; 
- - - - - - 0x01F816 07:F806: 4E        .byte $4E, $55, $45   ; 
- - - - - - 0x01F819 07:F809: 01        .byte $01   ; 

- - - - - - 0x01F81A 07:F80A: 45 22     .word $2245
- - - - - - 0x01F81C 07:F80C: 20        .byte $20, $53, $45, $4C, $45, $43, $54, $20   ; 
- - - - - - 0x01F824 07:F814: 47        .byte $47, $41, $4D, $45, $20, $4C, $45, $56   ; 
- - - - - - 0x01F82C 07:F81C: 45        .byte $45, $4C, $2E   ; 
- - - - - - 0x01F82F 07:F81F: 00        .byte $00   ; end token



_off020_F820_04:
- D 3 - I - 0x01F830 07:F820: 0B 21     .word $210B
- D 3 - I - 0x01F832 07:F822: 43        .byte $43, $4F, $4E, $54, $49, $4E, $55, $45   ; 
- D 3 - I - 0x01F83A 07:F82A: 01        .byte $01   ; 

- D 3 - I - 0x01F83B 07:F82B: 8B 21     .word $218B
- D 3 - I - 0x01F83D 07:F82D: 53        .byte $53, $54, $41, $52, $54   ; 
- D 3 - I - 0x01F842 07:F832: 00        .byte $00   ; end token



_off020_F833_05:
; bzk garbage
- - - - - - 0x01F843 07:F833: 47 21     .word $2147
- - - - - - 0x01F845 07:F835: 50        .byte $50, $52, $41, $43, $54, $49, $43, $45   ; 
- - - - - - 0x01F84D 07:F83D: 00        .byte $00   ; end token



_off020_F83E_06:
; bzk garbage
- - - - - - 0x01F84E 07:F83E: 49 21     .word $2149
- - - - - - 0x01F850 07:F840: 4E        .byte $4E, $4F, $56, $49, $43, $45   ; 
- - - - - - 0x01F856 07:F846: 00        .byte $00   ; end token



_off020_F847_07:
; bzk garbage
- - - - - - 0x01F857 07:F847: 46 21     .word $2146
- - - - - - 0x01F859 07:F849: 20        .byte $20, $4D, $41, $53, $54, $45, $52, $20   ; 
- - - - - - 0x01F861 07:F851: 00        .byte $00   ; end token



_off020_F852_08:
- - - - - - 0x01F862 07:F852: A5 20     .word $20A5
- - - - - - 0x01F864 07:F854: 20        .byte $20, $20, $20, $20, $20, $4C, $49, $43   ; 
- - - - - - 0x01F86C 07:F85C: 45        .byte $45, $4E, $53, $45, $44, $20, $54, $4F   ; 
- - - - - - 0x01F874 07:F864: 01        .byte $01   ; 

- - - - - - 0x01F875 07:F865: E4 20     .word $20E4
- - - - - - 0x01F877 07:F867: 41        .byte $41, $43, $43, $4C, $41, $49, $4D, $20   ; 
- - - - - - 0x01F87F 07:F86F: 45        .byte $45, $4E, $54, $45, $52, $54, $41, $49   ; 
- - - - - - 0x01F887 07:F877: 4E        .byte $4E, $4D, $45, $4E, $54, $20, $49, $4E   ; 
- - - - - - 0x01F88F 07:F87F: 43        .byte $43, $2E   ; 
- - - - - - 0x01F891 07:F881: 01        .byte $01   ; 

- - - - - - 0x01F892 07:F882: 25 21     .word $2125
- - - - - - 0x01F894 07:F884: 46        .byte $46, $4F, $52, $20, $54, $48, $45, $20   ; 
- - - - - - 0x01F89C 07:F88C: 55        .byte $55, $53, $41, $20, $41, $4E, $44, $20   ; 
- - - - - - 0x01F8A4 07:F894: 43        .byte $43, $41, $4E, $41, $44, $41   ; 
- - - - - - 0x01F8AA 07:F89A: 01        .byte $01   ; 

- - - - - - 0x01F8AB 07:F89B: 66 21     .word $2166
- - - - - - 0x01F8AD 07:F89D: 42        .byte $42, $59, $20, $54, $45, $43, $48, $4E   ; 
- - - - - - 0x01F8B5 07:F8A5: 4F        .byte $4F, $53, $20, $4A, $41, $50, $41, $4E   ; 
- - - - - - 0x01F8BD 07:F8AD: 20        .byte $20, $43, $4F, $52, $50, $2E   ; 
- - - - - - 0x01F8C3 07:F8B3: 01        .byte $01   ; 

- - - - - - 0x01F8C4 07:F8B4: 05 22     .word $2205
- - - - - - 0x01F8C6 07:F8B6: 20        .byte $20, $20, $20, $20, $54, $4D, $20, $41   ; 
- - - - - - 0x01F8CE 07:F8BE: 4E        .byte $4E, $44, $20, $FF, $20, $31, $39, $38   ; 
- - - - - - 0x01F8D6 07:F8C6: 39        .byte $39   ; 
- - - - - - 0x01F8D7 07:F8C7: 01        .byte $01   ; 

- - - - - - 0x01F8D8 07:F8C8: 47 22     .word $2247
- - - - - - 0x01F8DA 07:F8CA: 54        .byte $54, $45, $43, $48, $4E, $4F, $53, $20   ; 
- - - - - - 0x01F8E2 07:F8D2: 4A        .byte $4A, $41, $50, $41, $4E, $20, $43, $4F   ; 
- - - - - - 0x01F8EA 07:F8DA: 52        .byte $52, $50, $2E   ; 
- - - - - - 0x01F8ED 07:F8DD: 01        .byte $01   ; 

- - - - - - 0x01F8EE 07:F8DE: A5 22     .word $22A5
- - - - - - 0x01F8F0 07:F8E0: 20        .byte $20, $20, $20, $20, $20, $4C, $49, $43   ; 
- - - - - - 0x01F8F8 07:F8E8: 45        .byte $45, $4E, $53, $45, $44, $20, $42, $59   ; 
- - - - - - 0x01F900 07:F8F0: 01        .byte $01   ; 

- - - - - - 0x01F901 07:F8F1: E5 22     .word $22E5
- - - - - - 0x01F903 07:F8F3: 4E        .byte $4E, $49, $4E, $54, $45, $4E, $44, $4F   ; 
- - - - - - 0x01F90B 07:F8FB: 20        .byte $20, $4F, $46, $20, $41, $4D, $45, $52   ; 
- - - - - - 0x01F913 07:F903: 49        .byte $49, $43, $41, $20, $49, $4E, $43, $2E   ; 
- - - - - - 0x01F91B 07:F90B: 00        .byte $00   ; end token



_off020_F90C_09:
- - - - - - 0x01F91C 07:F90C: 05 21     .word $2105
- - - - - - 0x01F91E 07:F90E: 59        .byte $59, $4F, $55, $20, $48, $41, $56, $45   ; 
- - - - - - 0x01F926 07:F916: 20        .byte $20, $43, $4F, $4D, $50, $4C, $45, $54   ; 
- - - - - - 0x01F92E 07:F91E: 45        .byte $45, $44, $20, $54, $48, $45   ; 
- - - - - - 0x01F934 07:F924: 01        .byte $01   ; 

- - - - - - 0x01F935 07:F925: 45 21     .word $2145
- - - - - - 0x01F937 07:F927: 50        .byte $50, $52, $41, $43, $54, $49, $43, $45   ; 
- - - - - - 0x01F93F 07:F92F: 20        .byte $20, $4C, $45, $56, $45, $4C, $2E   ; 
- - - - - - 0x01F946 07:F936: 01        .byte $01   ; 

- - - - - - 0x01F947 07:F937: 85 21     .word $2185
- - - - - - 0x01F949 07:F939: 4D        .byte $4D, $41, $4E, $59, $20, $4D, $4F, $52   ; 
- - - - - - 0x01F951 07:F941: 45        .byte $45, $20, $45, $4E, $45, $4D, $49, $45   ; 
- - - - - - 0x01F959 07:F949: 53        .byte $53, $20, $41, $4E, $44   ; 
- - - - - - 0x01F95E 07:F94E: 01        .byte $01   ; 

- - - - - - 0x01F95F 07:F94F: C5 21     .word $21C5
- - - - - - 0x01F961 07:F951: 43        .byte $43, $48, $41, $4C, $4C, $45, $4E, $47   ; 
- - - - - - 0x01F969 07:F959: 45        .byte $45, $53, $20, $41, $57, $41, $49, $54   ; 
- - - - - - 0x01F971 07:F961: 20        .byte $20, $59, $4F, $55, $2E   ; 
- - - - - - 0x01F976 07:F966: 01        .byte $01   ; 

- - - - - - 0x01F977 07:F967: 24 22     .word $2224
- - - - - - 0x01F979 07:F969: 20        .byte $20, $43, $48, $41, $52, $47, $45, $20   ; 
- - - - - - 0x01F981 07:F971: 4F        .byte $4F, $4E, $2C, $44, $52, $41, $47, $4F   ; 
- - - - - - 0x01F989 07:F979: 4E        .byte $4E, $53, $2C   ; 
- - - - - - 0x01F98C 07:F97C: 01        .byte $01   ; 

- - - - - - 0x01F98D 07:F97D: 62 22     .word $2262
- - - - - - 0x01F98F 07:F97F: 54        .byte $54, $48, $45, $20, $57, $41, $52, $52   ; 
- - - - - - 0x01F997 07:F987: 49        .byte $49, $4F, $52, $20, $4C, $45, $56, $45   ; 
- - - - - - 0x01F99F 07:F98F: 4C        .byte $4C, $20, $41, $57, $41, $49, $54, $53   ; 
- - - - - - 0x01F9A7 07:F997: 20        .byte $20, $59, $4F, $55, $2E   ; 
- - - - - - 0x01F9AC 07:F99C: 00        .byte $00   ; end token



_off020_F99D_0A:
- - - - - - 0x01F9AD 07:F99D: C3 20     .word $20C3
- - - - - - 0x01F9AF 07:F99F: 57        .byte $57, $45, $4C, $4C, $20, $44, $4F, $4E   ; 
- - - - - - 0x01F9B7 07:F9A7: 45        .byte $45, $2C, $44, $52, $41, $47, $4F, $4E   ; 
- - - - - - 0x01F9BF 07:F9AF: 53        .byte $53, $2C   ; 
- - - - - - 0x01F9C1 07:F9B1: 01        .byte $01   ; 

- - - - - - 0x01F9C2 07:F9B2: 03 21     .word $2103
- - - - - - 0x01F9C4 07:F9B4: 56        .byte $56, $45, $52, $59, $20, $46, $45, $57   ; 
- - - - - - 0x01F9CC 07:F9BC: 20        .byte $20, $48, $41, $56, $45, $20, $45, $56   ; 
- - - - - - 0x01F9D4 07:F9C4: 45        .byte $45, $52, $20, $4D, $41, $44, $45, $20   ; 
- - - - - - 0x01F9DC 07:F9CC: 49        .byte $49, $54   ; 
- - - - - - 0x01F9DE 07:F9CE: 01        .byte $01   ; 

- - - - - - 0x01F9DF 07:F9CF: 43 21     .word $2143
- - - - - - 0x01F9E1 07:F9D1: 54        .byte $54, $4F, $20, $54, $48, $45, $20, $45   ; 
- - - - - - 0x01F9E9 07:F9D9: 4E        .byte $4E, $44, $20, $4F, $46, $20, $54, $48   ; 
- - - - - - 0x01F9F1 07:F9E1: 45        .byte $45, $20, $57, $41, $52, $52, $49, $4F   ; 
- - - - - - 0x01F9F9 07:F9E9: 52        .byte $52   ; 
- - - - - - 0x01F9FA 07:F9EA: 01        .byte $01   ; 

- - - - - - 0x01F9FB 07:F9EB: 83 21     .word $2183
- - - - - - 0x01F9FD 07:F9ED: 4C        .byte $4C, $45, $56, $45, $4C, $2E, $42, $55   ; 
- - - - - - 0x01FA05 07:F9F5: 54        .byte $54, $20, $4E, $4F, $57, $20, $59, $4F   ; 
- - - - - - 0x01FA0D 07:F9FD: 55        .byte $55, $52, $20, $47, $52, $45, $41, $54   ; 
- - - - - - 0x01FA15 07:FA05: 45        .byte $45, $53, $54   ; 
- - - - - - 0x01FA18 07:FA08: 01        .byte $01   ; 

- - - - - - 0x01FA19 07:FA09: C3 21     .word $21C3
- - - - - - 0x01FA1B 07:FA0B: 43        .byte $43, $48, $41, $4C, $4C, $45, $4E, $47   ; 
- - - - - - 0x01FA23 07:FA13: 45        .byte $45, $20, $49, $53, $20, $41, $48, $45   ; 
- - - - - - 0x01FA2B 07:FA1B: 41        .byte $41, $44, $2E   ; 
- - - - - - 0x01FA2E 07:FA1E: 01        .byte $01   ; 

- - - - - - 0x01FA2F 07:FA1F: 23 22     .word $2223
- - - - - - 0x01FA31 07:FA21: 54        .byte $54, $48, $45, $20, $4D, $41, $53, $54   ; 
- - - - - - 0x01FA39 07:FA29: 45        .byte $45, $52, $20, $4C, $45, $56, $45, $4C   ; 
- - - - - - 0x01FA41 07:FA31: 20        .byte $20, $48, $41, $53, $20, $41, $4E   ; 
- - - - - - 0x01FA48 07:FA38: 01        .byte $01   ; 

- - - - - - 0x01FA49 07:FA39: 63 22     .word $2263
- - - - - - 0x01FA4B 07:FA3B: 45        .byte $45, $4E, $45, $4D, $59, $20, $53, $4F   ; 
- - - - - - 0x01FA53 07:FA43: 20        .byte $20, $45, $56, $49, $4C, $2C, $4E, $4F   ; 
- - - - - - 0x01FA5B 07:FA4B: 20        .byte $20, $4F, $4E, $45, $20, $48, $41, $53   ; 
- - - - - - 0x01FA63 07:FA53: 01        .byte $01   ; 

- - - - - - 0x01FA64 07:FA54: A3 22     .word $22A3
- - - - - - 0x01FA66 07:FA56: 45        .byte $45, $56, $45, $52, $20, $53, $45, $45   ; 
- - - - - - 0x01FA6E 07:FA5E: 4E        .byte $4E, $20, $48, $49, $4D, $20, $41, $4E   ; 
- - - - - - 0x01FA76 07:FA66: 44        .byte $44, $20, $53, $55, $52, $56, $49, $56   ; 
- - - - - - 0x01FA7E 07:FA6E: 45        .byte $45, $44, $2E   ; 
- - - - - - 0x01FA81 07:FA71: 01        .byte $01   ; 

- - - - - - 0x01FA82 07:FA72: EA 22     .word $22EA
- - - - - - 0x01FA84 07:FA74: 47        .byte $47, $4F, $4F, $44, $20, $4C, $55, $43   ; 
- - - - - - 0x01FA8C 07:FA7C: 4B        .byte $4B, $21   ; 
- - - - - - 0x01FA8E 07:FA7E: 00        .byte $00   ; end token



_off020_FA7F_0B_sample_version:
- D 3 - I - 0x01FA8F 07:FA7F: EA 22     .word $22EA
- D 3 - I - 0x01FA91 07:FA81: 53        .byte $53, $41, $4D, $50, $4C, $45, $20, $56   ; 
- D 3 - I - 0x01FA99 07:FA89: 45        .byte $45, $52, $53, $49, $4F, $4E, $20   ; 
- D 3 - I - 0x01FAA0 07:FA90: 00        .byte $00   ; end token



sub_FA91:
C - - - - - 0x01FAA1 07:FA91: A5 35     LDA ram_game_flags_1
C - - - - - 0x01FAA3 07:FA93: 09 02     ORA #con_gf1_02
C - - - - - 0x01FAA5 07:FA95: 85 35     STA ram_game_flags_1
sub_0x01FAA7:
C - - - - - 0x01FAA7 07:FA97: 20 98 FE  JSR sub_FE98_nmi_off
C - - - - - 0x01FAAA 07:FA9A: 78        SEI
C - - - - - 0x01FAAB 07:FA9B: A9 00     LDA #$00
C - - - - - 0x01FAAD 07:FA9D: 85 FC     STA ram_00FC
C - - - - - 0x01FAAF 07:FA9F: AE 22 04  LDX ram_mission_hi
C - - - - - 0x01FAB2 07:FAA2: BD AD FB  LDA tbl_FBAD,X
C - - - - - 0x01FAB5 07:FAA5: D0 01     BNE bra_FAA8
C - - - - - 0x01FAB7 07:FAA7: 60        RTS
bra_FAA8:
C - - - - - 0x01FAB8 07:FAA8: 85 FD     STA ram_00FD
loc_FAAA:
C D 3 - - - 0x01FABA 07:FAAA: 20 98 FE  JSR sub_FE98_nmi_off
C - - - - - 0x01FABD 07:FAAD: A5 35     LDA ram_game_flags_1
C - - - - - 0x01FABF 07:FAAF: 29 02     AND #con_gf1_02
C - - - - - 0x01FAC1 07:FAB1: F0 28     BEQ bra_FADB
C - - - - - 0x01FAC3 07:FAB3: AD 22 04  LDA ram_mission_hi
C - - - - - 0x01FAC6 07:FAB6: F0 03     BEQ bra_FABB
C - - - - - 0x01FAC8 07:FAB8: 4C 59 FB  JMP loc_FB59
bra_FABB:
; con_mission_id_00
C - - - - - 0x01FACB 07:FABB: A4 FC     LDY ram_00FC
C - - - - - 0x01FACD 07:FABD: A9 00     LDA #$00
C - - - - - 0x01FACF 07:FABF: F0 0B     BEQ bra_FACC    ; jmp


; bzk garbage
- - - - - - 0x01FAD1 07:FAC1: B9 98 FB  LDA tbl_FB98,Y
- - - - - - 0x01FAD4 07:FAC4: 85 FF     STA ram_00FF
- - - - - - 0x01FAD6 07:FAC6: B9 8E FB  LDA tbl_FB8E_static_screen,Y
- - - - - - 0x01FAD9 07:FAC9: 4C D4 FA  JMP loc_FAD4



bra_FACC:
C - - - - - 0x01FADC 07:FACC: B9 A7 FB  LDA tbl_FBA7,Y
C - - - - - 0x01FADF 07:FACF: 85 FF     STA ram_00FF
C - - - - - 0x01FAE1 07:FAD1: B9 A1 FB  LDA tbl_FBA1_static_screen,Y
loc_FAD4:
C - - - - - 0x01FAE4 07:FAD4: C9 FF     CMP #$FF
C - - - - - 0x01FAE6 07:FAD6: D0 2C     BNE bra_FB04
; FF
C - - - - - 0x01FAE8 07:FAD8: 4C 59 FB  JMP loc_FB59
bra_FADB:
C - - - - - 0x01FAEB 07:FADB: A5 34     LDA ram_game_mode
C - - - - - 0x01FAED 07:FADD: 29 04     AND #con_gm_04
C - - - - - 0x01FAEF 07:FADF: F0 09     BEQ bra_FAEA
- - - - - - 0x01FAF1 07:FAE1: A5 34     LDA ram_game_mode
- - - - - - 0x01FAF3 07:FAE3: 29 FB     AND #con_gm_04 ^ $FF
- - - - - - 0x01FAF5 07:FAE5: 85 34     STA ram_game_mode
- - - - - - 0x01FAF7 07:FAE7: 4C 59 FB  JMP loc_FB59
bra_FAEA:
C - - - - - 0x01FAFA 07:FAEA: AD 22 04  LDA ram_mission_hi
C - - - - - 0x01FAFD 07:FAED: 0A        ASL
C - - - - - 0x01FAFE 07:FAEE: AA        TAX
C - - - - - 0x01FAFF 07:FAEF: BD BD FB  LDA tbl_FBBD_cutscenes,X
C - - - - - 0x01FB02 07:FAF2: 85 29     STA ram_0029
C - - - - - 0x01FB04 07:FAF4: BD BE FB  LDA tbl_FBBD_cutscenes + $01,X
C - - - - - 0x01FB07 07:FAF7: 85 2A     STA ram_002A
C - - - - - 0x01FB09 07:FAF9: A9 C8     LDA #$C8
C - - - - - 0x01FB0B 07:FAFB: 85 FF     STA ram_00FF
C - - - - - 0x01FB0D 07:FAFD: A4 FC     LDY ram_00FC
C - - - - - 0x01FB0F 07:FAFF: B1 29     LDA (ram_0029),Y
C - - - - - 0x01FB11 07:FB01: 20 EB FB  JSR sub_FBEB_select_screen_based_on_who_is_alive
bra_FB04:
C - - - - - 0x01FB14 07:FB04: 20 20 CD  JSR sub_CD20_draw_static_screen
C - - - - - 0x01FB17 07:FB07: 20 38 F6  JSR sub_F638
C - - - - - 0x01FB1A 07:FB0A: 20 2E F0  JSR sub_F02E
C - - - - - 0x01FB1D 07:FB0D: A9 40     LDA #con_nmi_0_irq_1
C - - - - - 0x01FB1F 07:FB0F: 85 EC     STA ram_nmi_flag
C - - - - - 0x01FB21 07:FB11: A9 00     LDA #$00
C - - - - - 0x01FB23 07:FB13: 85 F0     STA ram_00F0
C - - - - - 0x01FB25 07:FB15: 20 8C FE  JSR sub_FE8C_nmi_on
C - - - - - 0x01FB28 07:FB18: A9 0E     LDA #con_music_mission_info
C - - - - - 0x01FB2A 07:FB1A: 20 10 FC  JSR sub_FC10_play_sound
C - - - - - 0x01FB2D 07:FB1D: A9 00     LDA #$00
C - - - - - 0x01FB2F 07:FB1F: 20 66 FB  JSR sub_FB66
bra_FB22_loop:
C - - - - - 0x01FB32 07:FB22: A9 00     LDA #$00
C - - - - - 0x01FB34 07:FB24: 85 F1     STA ram_00F1
bra_FB26_loop:
C - - - - - 0x01FB36 07:FB26: A5 E0     LDA ram_btn_press
C - - - - - 0x01FB38 07:FB28: 05 E1     ORA ram_btn_press + $01
C - - - - - 0x01FB3A 07:FB2A: 29 D0     AND #con_btns_SAB
C - - - - - 0x01FB3C 07:FB2C: D0 0A     BNE bra_FB38
C - - - - - 0x01FB3E 07:FB2E: A5 F1     LDA ram_00F1
C - - - - - 0x01FB40 07:FB30: C9 03     CMP #$03
C - - - - - 0x01FB42 07:FB32: 90 F2     BCC bra_FB26_loop
C - - - - - 0x01FB44 07:FB34: C6 FF     DEC ram_00FF
C - - - - - 0x01FB46 07:FB36: D0 EA     BNE bra_FB22_loop
bra_FB38:
C - - - - - 0x01FB48 07:FB38: 85 FE     STA ram_00FE
C - - - - - 0x01FB4A 07:FB3A: A9 01     LDA #$01
C - - - - - 0x01FB4C 07:FB3C: 20 66 FB  JSR sub_FB66
C - - - - - 0x01FB4F 07:FB3F: A5 35     LDA ram_game_flags_1
C - - - - - 0x01FB51 07:FB41: 29 02     AND #con_gf1_02
C - - - - - 0x01FB53 07:FB43: F0 0B     BEQ bra_FB50
C - - - - - 0x01FB55 07:FB45: A5 FE     LDA ram_00FE
C - - - - - 0x01FB57 07:FB47: 29 10     AND #$10
C - - - - - 0x01FB59 07:FB49: D0 0E     BNE bra_FB59
C - - - - - 0x01FB5B 07:FB4B: E6 FC     INC ram_00FC
C - - - - - 0x01FB5D 07:FB4D: 4C AA FA  JMP loc_FAAA
bra_FB50:
C - - - - - 0x01FB60 07:FB50: E6 FC     INC ram_00FC
C - - - - - 0x01FB62 07:FB52: C6 FD     DEC ram_00FD
C - - - - - 0x01FB64 07:FB54: F0 03     BEQ bra_FB59
C - - - - - 0x01FB66 07:FB56: 4C AA FA  JMP loc_FAAA
bra_FB59:
loc_FB59:
C D 3 - - - 0x01FB69 07:FB59: A9 00     LDA #con_music_off
C - - - - - 0x01FB6B 07:FB5B: 20 10 FC  JSR sub_FC10_play_sound
C - - - - - 0x01FB6E 07:FB5E: 20 98 FE  JSR sub_FE98_nmi_off
C - - - - - 0x01FB71 07:FB61: 78        SEI
C - - - - - 0x01FB72 07:FB62: 20 75 D8  JSR sub_D875_clear_graphics
C - - - - - 0x01FB75 07:FB65: 60        RTS



sub_FB66:
C - - - - - 0x01FB76 07:FB66: 8D 3F 06  STA ram_063F
bra_FB69_loop:
C - - - - - 0x01FB79 07:FB69: 20 78 FB  JSR sub_FB78_wait_for_nmi
C - - - - - 0x01FB7C 07:FB6C: 20 D0 D6  JSR sub_D6D0
C - - - - - 0x01FB7F 07:FB6F: AD 3F 06  LDA ram_063F
C - - - - - 0x01FB82 07:FB72: 10 F5     BPL bra_FB69_loop
C - - - - - 0x01FB84 07:FB74: 20 78 FB  JSR sub_FB78_wait_for_nmi
C - - - - - 0x01FB87 07:FB77: 60        RTS



sub_FB78_wait_for_nmi:
C - - - - - 0x01FB88 07:FB78: A9 00     LDA #$00
C - - - - - 0x01FB8A 07:FB7A: 85 F1     STA ram_00F1
bra_FB7C_loop:
C - - - - - 0x01FB8C 07:FB7C: A5 F1     LDA ram_00F1
C - - - - - 0x01FB8E 07:FB7E: C9 01     CMP #$01
C - - - - - 0x01FB90 07:FB80: 90 FA     BCC bra_FB7C_loop
C - - - - - 0x01FB92 07:FB82: 60        RTS



sub_FB83:
C - - - - - 0x01FB93 07:FB83: A9 00     LDA #$00
C - - - - - 0x01FB95 07:FB85: 85 F1     STA ram_00F1
bra_FB87_loop:
C - - - - - 0x01FB97 07:FB87: A5 F1     LDA ram_00F1
C - - - - - 0x01FB99 07:FB89: C9 03     CMP #$03
C - - - - - 0x01FB9B 07:FB8B: 90 FA     BCC bra_FB87_loop
C - - - - - 0x01FB9D 07:FB8D: 60        RTS



tbl_FB8E_static_screen:
- - - - - - 0x01FB9E 07:FB8E: 3D        .byte $3D   ; 00
- - - - - - 0x01FB9F 07:FB8F: 3E        .byte $3E   ; 01
- - - - - - 0x01FBA0 07:FB90: 3F        .byte $3F   ; 02
- - - - - - 0x01FBA1 07:FB91: 40        .byte $40   ; 03
- - - - - - 0x01FBA2 07:FB92: 4B        .byte $4B   ; 04
- - - - - - 0x01FBA3 07:FB93: 4C        .byte $4C   ; 05
- - - - - - 0x01FBA4 07:FB94: 4D        .byte $4D   ; 06
- - - - - - 0x01FBA5 07:FB95: 49        .byte $49   ; 07
- - - - - - 0x01FBA6 07:FB96: 4A        .byte $4A   ; 08
- - - - - - 0x01FBA7 07:FB97: FF        .byte $FF   ; 09



tbl_FB98:
- - - - - - 0x01FBA8 07:FB98: FF        .byte $FF   ; 00
- - - - - - 0x01FBA9 07:FB99: 78        .byte $78   ; 01
- - - - - - 0x01FBAA 07:FB9A: A0        .byte $A0   ; 02
- - - - - - 0x01FBAB 07:FB9B: 78        .byte $78   ; 03
- - - - - - 0x01FBAC 07:FB9C: 28        .byte $28   ; 04
- - - - - - 0x01FBAD 07:FB9D: 14        .byte $14   ; 05
- - - - - - 0x01FBAE 07:FB9E: 14        .byte $14   ; 06
- - - - - - 0x01FBAF 07:FB9F: 28        .byte $28   ; 07
- - - - - - 0x01FBB0 07:FBA0: A0        .byte $A0   ; 08



tbl_FBA1_static_screen:
- D 3 - - - 0x01FBB1 07:FBA1: 3D        .byte con_CD20_3D   ; 00
- D 3 - - - 0x01FBB2 07:FBA2: 4B        .byte con_CD20_4B   ; 01
- D 3 - - - 0x01FBB3 07:FBA3: 4C        .byte con_CD20_4C   ; 02
- D 3 - - - 0x01FBB4 07:FBA4: 4D        .byte con_CD20_4D   ; 03
- D 3 - - - 0x01FBB5 07:FBA5: 49        .byte con_CD20_49   ; 04
- D 3 - - - 0x01FBB6 07:FBA6: FF        .byte $FF   ; 05



tbl_FBA7:
- D 3 - - - 0x01FBB7 07:FBA7: FF        .byte $FF   ; 00
- D 3 - - - 0x01FBB8 07:FBA8: 78        .byte $78   ; 01
- D 3 - - - 0x01FBB9 07:FBA9: A0        .byte $A0   ; 02
- D 3 - - - 0x01FBBA 07:FBAA: 78        .byte $78   ; 03
- D 3 - - - 0x01FBBB 07:FBAB: 28        .byte $28   ; 04
- D 3 - - - 0x01FBBC 07:FBAC: 14        .byte $14   ; 05



tbl_FBAD:
- D 3 - - - 0x01FBBD 07:FBAD: 01        .byte $01   ; 00
- D 3 - - - 0x01FBBE 07:FBAE: 01        .byte $01   ; 01
- D 3 - - - 0x01FBBF 07:FBAF: 02        .byte $02   ; 02
- D 3 - - - 0x01FBC0 07:FBB0: 01        .byte $01   ; 03
- D 3 - - - 0x01FBC1 07:FBB1: 00        .byte $00   ; 04
- D 3 - - - 0x01FBC2 07:FBB2: 01        .byte $01   ; 05
- D 3 - - - 0x01FBC3 07:FBB3: 01        .byte $01   ; 06
- D 3 - - - 0x01FBC4 07:FBB4: 02        .byte $02   ; 07
- D 3 - - - 0x01FBC5 07:FBB5: 00        .byte $00   ; 08
- D 3 - - - 0x01FBC6 07:FBB6: 00        .byte $00   ; 09
- D 3 - - - 0x01FBC7 07:FBB7: 00        .byte $00   ; 0A
- D 3 - - - 0x01FBC8 07:FBB8: 00        .byte $00   ; 0B
- D 3 - - - 0x01FBC9 07:FBB9: 01        .byte $01   ; 0C
- D 3 - - - 0x01FBCA 07:FBBA: 02        .byte $02   ; 0D
- D 3 - - - 0x01FBCB 07:FBBB: 02        .byte $02   ; 0E


; bzk garbage
- - - - - - 0x01FBCC 07:FBBC: 00        .byte $00   ; 0F



tbl_FBBD_cutscenes:
- - - - - - 0x01FBCD 07:FBBD: DD FB     .word _off021_FBDD_00
- D 3 - - - 0x01FBCF 07:FBBF: DE FB     .word _off021_FBDE_01
- D 3 - - - 0x01FBD1 07:FBC1: DF FB     .word _off021_FBDF_02
- D 3 - - - 0x01FBD3 07:FBC3: E1 FB     .word _off021_FBE1_03
- - - - - - 0x01FBD5 07:FBC5: 00 00     .word $0000      ; 04 con_mission_id_04
- D 3 - - - 0x01FBD7 07:FBC7: E2 FB     .word _off021_FBE2_05
- D 3 - - - 0x01FBD9 07:FBC9: E3 FB     .word _off021_FBE3_06
- D 3 - - - 0x01FBDB 07:FBCB: E4 FB     .word _off021_FBE4_07
- - - - - - 0x01FBDD 07:FBCD: 00 00     .word $0000      ; 08 con_mission_id_08
- - - - - - 0x01FBDF 07:FBCF: 00 00     .word $0000      ; 09 con_mission_id_09
- - - - - - 0x01FBE1 07:FBD1: 00 00     .word $0000      ; 0A con_mission_id_0A
- - - - - - 0x01FBE3 07:FBD3: 00 00     .word $0000      ; 0B con_mission_id_0B
- D 3 - - - 0x01FBE5 07:FBD5: E6 FB     .word _off021_FBE6_0C
- D 3 - - - 0x01FBE7 07:FBD7: E7 FB     .word _off021_FBE7_0D
- D 3 - - - 0x01FBE9 07:FBD9: E9 FB     .word _off021_FBE9_0E


; bzk garbage
- - - - - - 0x01FBEB 07:FBDB: 00 00     .word $0000      ; 0F



_off021_FBDD_00:
; con_mission_id_00
- - - - - - 0x01FBED 07:FBDD: 4A        .byte con_CD20_4A   ; 

_off021_FBDE_01:
; con_mission_id_01
- D 3 - I - 0x01FBEE 07:FBDE: 45        .byte con_CD20_45   ; 

_off021_FBDF_02:
; con_mission_id_02
- D 3 - I - 0x01FBEF 07:FBDF: 3B        .byte con_CD20_3B   ; 
- D 3 - I - 0x01FBF0 07:FBE0: 3C        .byte con_CD20_3C   ; 

_off021_FBE1_03:
; con_mission_id_03
- D 3 - I - 0x01FBF1 07:FBE1: 44        .byte con_CD20_44   ; 

_off021_FBE2_05:
; con_mission_id_05
- D 3 - I - 0x01FBF2 07:FBE2: 43        .byte con_CD20_43   ; 

_off021_FBE3_06:
; con_mission_id_06
- D 3 - I - 0x01FBF3 07:FBE3: 42        .byte con_CD20_42   ; 

_off021_FBE4_07:
; con_mission_id_07
- D 3 - I - 0x01FBF4 07:FBE4: 4E        .byte con_CD20_4E   ; 
- D 3 - I - 0x01FBF5 07:FBE5: 4F        .byte con_CD20_4F   ; 

_off021_FBE6_0C:
; con_mission_id_0C
- D 3 - I - 0x01FBF6 07:FBE6: 41        .byte con_CD20_41   ; 

_off021_FBE7_0D:
; con_mission_id_0D
- D 3 - I - 0x01FBF7 07:FBE7: 50        .byte con_CD20_50   ; 
- D 3 - I - 0x01FBF8 07:FBE8: 51        .byte con_CD20_51   ; 

_off021_FBE9_0E:
; con_mission_id_0E
- D 3 - I - 0x01FBF9 07:FBE9: 31        .byte con_CD20_31   ; 
- D 3 - I - 0x01FBFA 07:FBEA: 46        .byte con_CD20_46   ; 



sub_FBEB_select_screen_based_on_who_is_alive:
C - - - - - 0x01FBFB 07:FBEB: C9 46     CMP #con_CD20_46
C - - - - - 0x01FBFD 07:FBED: D0 11     BNE bra_FC00_RTS
C - - - - - 0x01FBFF 07:FBEF: A0 48     LDY #con_CD20_48
C - - - - - 0x01FC01 07:FBF1: AD 32 04  LDA ram_lives
C - - - - - 0x01FC04 07:FBF4: F0 09     BEQ bra_FBFF    ; if 1p dead
C - - - - - 0x01FC06 07:FBF6: A0 47     LDY #con_CD20_47
C - - - - - 0x01FC08 07:FBF8: AD 33 04  LDA ram_lives + $01
C - - - - - 0x01FC0B 07:FBFB: F0 02     BEQ bra_FBFF    ; if 2p dead
; if both players are alive
- - - - - - 0x01FC0D 07:FBFD: A0 46     LDY #con_CD20_46
bra_FBFF:
C - - - - - 0x01FC0F 07:FBFF: 98        TYA
bra_FC00_RTS:
C - - - - - 0x01FC10 07:FC00: 60        RTS


; bzk garbage
- - - - - - 0x01FC11 07:FC01: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 



loc_FC10_play_sound:
sub_FC10_play_sound:
sub_0x01FC20_play_sound:
C D 3 - - - 0x01FC20 07:FC10: 8D FF 07  STA ram_sound_id
C - - - - - 0x01FC23 07:FC13: AD FF BF  LDA $BFFF   ; bank id
C - - - - - 0x01FC26 07:FC16: 48        PHA
C - - - - - 0x01FC27 07:FC17: A9 05     LDA #con_prg_bank + $05
C - - - - - 0x01FC29 07:FC19: 20 0D FF  JSR sub_FF0D_prg_bankswitch
C - - - - - 0x01FC2C 07:FC1C: 20 00 80  JSR sub_0x014010_load_sound_into_engine
loc_FC1F_restore_prg_bank:
C D 3 - - - 0x01FC2F 07:FC1F: 68        PLA
C - - - - - 0x01FC30 07:FC20: 20 0D FF  JSR sub_FF0D_prg_bankswitch
C - - - - - 0x01FC33 07:FC23: 60        RTS



sub_FC24_update_sound_engine:
C - - - - - 0x01FC34 07:FC24: AD FF BF  LDA $BFFF   ; bank id
C - - - - - 0x01FC37 07:FC27: 48        PHA
C - - - - - 0x01FC38 07:FC28: A9 05     LDA #con_prg_bank + $05
C - - - - - 0x01FC3A 07:FC2A: 20 0D FF  JSR sub_FF0D_prg_bankswitch
C - - - - - 0x01FC3D 07:FC2D: 20 03 80  JSR sub_0x014013_update_sound_engine
C - - - - - 0x01FC40 07:FC30: 4C 1F FC  JMP loc_FC1F_restore_prg_bank



sub_FC33:
C - - - - - 0x01FC43 07:FC33: AD FF BF  LDA $BFFF   ; bank id
C - - - - - 0x01FC46 07:FC36: 48        PHA
C - - - - - 0x01FC47 07:FC37: A9 02     LDA #con_prg_bank + $02
C - - - - - 0x01FC49 07:FC39: 20 0D FF  JSR sub_FF0D_prg_bankswitch
C - - - - - 0x01FC4C 07:FC3C: 20 00 80  JSR sub_0x008010
C - - - - - 0x01FC4F 07:FC3F: 4C 1F FC  JMP loc_FC1F_restore_prg_bank



sub_0x01FC52:
C - - - - - 0x01FC52 07:FC42: AD FF BF  LDA $BFFF   ; bank id
C - - - - - 0x01FC55 07:FC45: 48        PHA
C - - - - - 0x01FC56 07:FC46: A9 04     LDA #con_prg_bank + $04
C - - - - - 0x01FC58 07:FC48: 20 0D FF  JSR sub_FF0D_prg_bankswitch
C - - - - - 0x01FC5B 07:FC4B: 20 03 80  JSR sub_0x010013
C - - - - - 0x01FC5E 07:FC4E: 4C 1F FC  JMP loc_FC1F_restore_prg_bank



sub_0x01FC61:
C - - - - - 0x01FC61 07:FC51: AD FF BF  LDA $BFFF   ; bank id
C - - - - - 0x01FC64 07:FC54: 48        PHA
C - - - - - 0x01FC65 07:FC55: 8A        TXA
C - - - - - 0x01FC66 07:FC56: 48        PHA
C - - - - - 0x01FC67 07:FC57: A9 04     LDA #con_prg_bank + $04
C - - - - - 0x01FC69 07:FC59: 20 0D FF  JSR sub_FF0D_prg_bankswitch
C - - - - - 0x01FC6C 07:FC5C: 68        PLA
C - - - - - 0x01FC6D 07:FC5D: AA        TAX
C - - - - - 0x01FC6E 07:FC5E: 20 06 80  JSR sub_0x010016
C - - - - - 0x01FC71 07:FC61: 4C 1F FC  JMP loc_FC1F_restore_prg_bank



sub_FC64:
C - - - - - 0x01FC74 07:FC64: AD FF BF  LDA $BFFF   ; bank id
C - - - - - 0x01FC77 07:FC67: 48        PHA
C - - - - - 0x01FC78 07:FC68: A9 02     LDA #con_prg_bank + $02
C - - - - - 0x01FC7A 07:FC6A: 20 0D FF  JSR sub_FF0D_prg_bankswitch
C - - - - - 0x01FC7D 07:FC6D: 20 03 80  JSR sub_0x008013
C - - - - - 0x01FC80 07:FC70: 4C 1F FC  JMP loc_FC1F_restore_prg_bank



sub_0x01FC83:
C - - - - - 0x01FC83 07:FC73: AD FF BF  LDA $BFFF   ; bank id
C - - - - - 0x01FC86 07:FC76: 48        PHA
C - - - - - 0x01FC87 07:FC77: A9 04     LDA #con_prg_bank + $04
C - - - - - 0x01FC89 07:FC79: 20 0D FF  JSR sub_FF0D_prg_bankswitch
C - - - - - 0x01FC8C 07:FC7C: 20 00 80  JSR sub_0x010010
C - - - - - 0x01FC8F 07:FC7F: 4C 1F FC  JMP loc_FC1F_restore_prg_bank



sub_FC82:
C - - - - - 0x01FC92 07:FC82: AD FF BF  LDA $BFFF   ; bank id
C - - - - - 0x01FC95 07:FC85: 48        PHA
C - - - - - 0x01FC96 07:FC86: A9 02     LDA #con_prg_bank + $02
C - - - - - 0x01FC98 07:FC88: 20 0D FF  JSR sub_FF0D_prg_bankswitch
C - - - - - 0x01FC9B 07:FC8B: 20 06 80  JSR sub_0x008016
C - - - - - 0x01FC9E 07:FC8E: 4C 1F FC  JMP loc_FC1F_restore_prg_bank



sub_0x01FCA1:
C - - - - - 0x01FCA1 07:FC91: AD FF BF  LDA $BFFF   ; bank id
C - - - - - 0x01FCA4 07:FC94: 48        PHA
C - - - - - 0x01FCA5 07:FC95: A9 02     LDA #con_prg_bank + $02
C - - - - - 0x01FCA7 07:FC97: 20 0D FF  JSR sub_FF0D_prg_bankswitch
C - - - - - 0x01FCAA 07:FC9A: 20 09 80  JSR sub_0x008019
C - - - - - 0x01FCAD 07:FC9D: 4C 1F FC  JMP loc_FC1F_restore_prg_bank



loc_FCA0_jumping_spikes:
C D 3 - - - 0x01FCB0 07:FCA0: AD FF BF  LDA $BFFF   ; bank id
C - - - - - 0x01FCB3 07:FCA3: 48        PHA
C - - - - - 0x01FCB4 07:FCA4: A9 06     LDA #con_prg_bank + $06
C - - - - - 0x01FCB6 07:FCA6: 20 0D FF  JSR sub_FF0D_prg_bankswitch
C - - - - - 0x01FCB9 07:FCA9: 20 B0 AB  JSR sub_0x01ABC0_jumping_spikes
C - - - - - 0x01FCBC 07:FCAC: 4C 1F FC  JMP loc_FC1F_restore_prg_bank


; bzk garbage
- - - - - - 0x01FCBF 07:FCAF: 00        .byte $00   ; 



sub_FCB0_prepare_to_disable_interrupts:
C - - - - - 0x01FCC0 07:FCB0: 48        PHA
C - - - - - 0x01FCC1 07:FCB1: A5 EC     LDA ram_nmi_flag
C - - - - - 0x01FCC3 07:FCB3: 48        PHA
C - - - - - 0x01FCC4 07:FCB4: A9 00     LDA #con_nmi_0_irq_0
C - - - - - 0x01FCC6 07:FCB6: 85 EC     STA ram_nmi_flag
C - - - - - 0x01FCC8 07:FCB8: A5 E9     LDA ram_for_2000
C - - - - - 0x01FCCA 07:FCBA: 09 80     ORA #$80
C - - - - - 0x01FCCC 07:FCBC: 85 E9     STA ram_for_2000
C - - - - - 0x01FCCE 07:FCBE: 8D 00 20  STA $2000
bra_FCC1_infinite_loop:
C - - - - - 0x01FCD1 07:FCC1: D0 FE     BNE bra_FCC1_infinite_loop
sub_FCC3_clear_bg_and_spr_pattern:
sub_0x01FCD3_clear_bg_and_spr_pattern:
C - - - - - 0x01FCD3 07:FCC3: A5 E8     LDA ram_for_2001
C - - - - - 0x01FCD5 07:FCC5: 29 E7     AND #$E7
bra_FCC7:
loc_FCC7_write_bg_and_spr_pattern:
C - - - - - 0x01FCD7 07:FCC7: 85 E8     STA ram_for_2001
C - - - - - 0x01FCD9 07:FCC9: 8D 01 20  STA $2001
C - - - - - 0x01FCDC 07:FCCC: 60        RTS



sub_FCCD_set_bg_and_spr_pattern:
C - - - - - 0x01FCDD 07:FCCD: A5 E8     LDA ram_for_2001
C - - - - - 0x01FCDF 07:FCCF: 09 18     ORA #$18
C - - - - - 0x01FCE1 07:FCD1: D0 F4     BNE bra_FCC7    ; jmp


; bzk garbage
- - - - - - 0x01FCE3 07:FCD3: A5 E8     LDA ram_for_2001
- - - - - - 0x01FCE5 07:FCD5: 29 EF     AND #$EF
- - - - - - 0x01FCE7 07:FCD7: 4C C7 FC  JMP loc_FCC7_write_bg_and_spr_pattern



sub_FCDA:
C - - - - - 0x01FCEA 07:FCDA: A5 E8     LDA ram_for_2001
C - - - - - 0x01FCEC 07:FCDC: 09 10     ORA #$10
C - - - - - 0x01FCEE 07:FCDE: D0 E7     BNE bra_FCC7    ; jmp


; bzk garbage
- - - - - - 0x01FCF0 07:FCE0: A5 E8     LDA ram_for_2001
- - - - - - 0x01FCF2 07:FCE2: 29 F7     AND #$F7
- - - - - - 0x01FCF4 07:FCE4: 4C C7 FC  JMP loc_FCC7_write_bg_and_spr_pattern



sub_FCE7:
C - - - - - 0x01FCF7 07:FCE7: A5 E8     LDA ram_for_2001
C - - - - - 0x01FCF9 07:FCE9: 09 08     ORA #$08
C - - - - - 0x01FCFB 07:FCEB: D0 DA     BNE bra_FCC7    ; jmp


; bzk garbage
- - - - - - 0x01FCFD 07:FCED: AD 02 20  LDA $2002
- - - - - - 0x01FD00 07:FCF0: A5 E7     LDA ram_00E7
- - - - - - 0x01FD02 07:FCF2: 8D 05 20  STA $2005
- - - - - - 0x01FD05 07:FCF5: A5 E6     LDA ram_00E6
- - - - - - 0x01FD07 07:FCF7: 8D 05 20  STA $2005
- - - - - - 0x01FD0A 07:FCFA: A5 E9     LDA ram_for_2000
- - - - - - 0x01FD0C 07:FCFC: 8D 00 20  STA $2000
- - - - - - 0x01FD0F 07:FCFF: 60        RTS



sub_FD00_clear_nametable:
C - - - - - 0x01FD10 07:FD00: 85 04     STA ram_0004
C - - - - - 0x01FD12 07:FD02: 86 05     STX ram_0005
C - - - - - 0x01FD14 07:FD04: 84 06     STY ram_0006
C - - - - - 0x01FD16 07:FD06: AD 02 20  LDA $2002
C - - - - - 0x01FD19 07:FD09: A5 E9     LDA ram_for_2000
C - - - - - 0x01FD1B 07:FD0B: 29 FB     AND #$FB
C - - - - - 0x01FD1D 07:FD0D: 8D 00 20  STA $2000
C - - - - - 0x01FD20 07:FD10: 85 E9     STA ram_for_2000
C - - - - - 0x01FD22 07:FD12: A5 04     LDA ram_0004
C - - - - - 0x01FD24 07:FD14: 8D 06 20  STA $2006
C - - - - - 0x01FD27 07:FD17: A0 00     LDY #$00
C - - - - - 0x01FD29 07:FD19: 8C 06 20  STY $2006
C - - - - - 0x01FD2C 07:FD1C: A2 04     LDX #$04
C - - - - - 0x01FD2E 07:FD1E: C9 20     CMP #$20
C - - - - - 0x01FD30 07:FD20: B0 02     BCS bra_FD24
- - - - - - 0x01FD32 07:FD22: A6 06     LDX ram_0006
bra_FD24:
C - - - - - 0x01FD34 07:FD24: A0 00     LDY #$00
C - - - - - 0x01FD36 07:FD26: A5 05     LDA ram_0005
bra_FD28_loop:
C - - - - - 0x01FD38 07:FD28: 8D 07 20  STA $2007
C - - - - - 0x01FD3B 07:FD2B: 88        DEY
C - - - - - 0x01FD3C 07:FD2C: D0 FA     BNE bra_FD28_loop
C - - - - - 0x01FD3E 07:FD2E: CA        DEX
C - - - - - 0x01FD3F 07:FD2F: D0 F7     BNE bra_FD28_loop
C - - - - - 0x01FD41 07:FD31: A4 06     LDY ram_0006
C - - - - - 0x01FD43 07:FD33: A5 04     LDA ram_0004
C - - - - - 0x01FD45 07:FD35: C9 20     CMP #$20
C - - - - - 0x01FD47 07:FD37: 90 12     BCC bra_FD4B
C - - - - - 0x01FD49 07:FD39: 69 02     ADC #$02
C - - - - - 0x01FD4B 07:FD3B: 8D 06 20  STA $2006
C - - - - - 0x01FD4E 07:FD3E: A9 C0     LDA #$C0
C - - - - - 0x01FD50 07:FD40: 8D 06 20  STA $2006
C - - - - - 0x01FD53 07:FD43: A2 40     LDX #$40
bra_FD45_loop:
C - - - - - 0x01FD55 07:FD45: 8C 07 20  STY $2007
C - - - - - 0x01FD58 07:FD48: CA        DEX
C - - - - - 0x01FD59 07:FD49: D0 FA     BNE bra_FD45_loop
bra_FD4B:
C - - - - - 0x01FD5B 07:FD4B: A6 05     LDX ram_0005
C - - - - - 0x01FD5D 07:FD4D: 60        RTS



sub_FD4E_clear_0200_07FF:
C - - - - - 0x01FD5E 07:FD4E: 48        PHA
C - - - - - 0x01FD5F 07:FD4F: 8A        TXA
C - - - - - 0x01FD60 07:FD50: 84 05     STY ram_0005
C - - - - - 0x01FD62 07:FD52: 18        CLC
C - - - - - 0x01FD63 07:FD53: E5 05     SBC ram_0005
C - - - - - 0x01FD65 07:FD55: AA        TAX
C - - - - - 0x01FD66 07:FD56: 68        PLA
C - - - - - 0x01FD67 07:FD57: A0 00     LDY #$00
C - - - - - 0x01FD69 07:FD59: 84 04     STY ram_0004
bra_FD5B_loop:
C - - - - - 0x01FD6B 07:FD5B: 91 04     STA (ram_0004),Y
C - - - - - 0x01FD6D 07:FD5D: 88        DEY
C - - - - - 0x01FD6E 07:FD5E: D0 FB     BNE bra_FD5B_loop
C - - - - - 0x01FD70 07:FD60: C6 05     DEC ram_0005
C - - - - - 0x01FD72 07:FD62: E8        INX
C - - - - - 0x01FD73 07:FD63: D0 F6     BNE bra_FD5B_loop
C - - - - - 0x01FD75 07:FD65: 60        RTS


; bzk garbage
- - - - - - 0x01FD76 07:FD66: 20 D0 FD  JSR sub_FDD0
- - - - - - 0x01FD79 07:FD69: F0 06     BEQ bra_FD71



sub_FD6B_read_joy_regs:
C - - - - - 0x01FD7B 07:FD6B: 20 D0 FD  JSR sub_FDD0
C - - - - - 0x01FD7E 07:FD6E: 20 F2 FD  JSR sub_FDF2
bra_FD71:
C - - - - - 0x01FD81 07:FD71: A2 01     LDX #$01
bra_FD73_loop:
C - - - - - 0x01FD83 07:FD73: B5 E0     LDA ram_btn_press,X
C - - - - - 0x01FD85 07:FD75: A8        TAY
C - - - - - 0x01FD86 07:FD76: 55 E2     EOR ram_btn_hold,X
C - - - - - 0x01FD88 07:FD78: 35 E0     AND ram_btn_press,X
C - - - - - 0x01FD8A 07:FD7A: 95 E0     STA ram_btn_press,X
C - - - - - 0x01FD8C 07:FD7C: 94 E2     STY ram_btn_hold,X
C - - - - - 0x01FD8E 07:FD7E: CA        DEX
C - - - - - 0x01FD8F 07:FD7F: 10 F2     BPL bra_FD73_loop
C - - - - - 0x01FD91 07:FD81: 60        RTS


; bzk garbage
- - - - - - 0x01FD92 07:FD82: 20 D0 FD  JSR sub_FDD0
bra_FD85_loop:
- - - - - - 0x01FD95 07:FD85: A4 E0     LDY ram_btn_press
- - - - - - 0x01FD97 07:FD87: A5 E1     LDA ram_btn_press + $01
- - - - - - 0x01FD99 07:FD89: 48        PHA
- - - - - - 0x01FD9A 07:FD8A: 20 D0 FD  JSR sub_FDD0
- - - - - - 0x01FD9D 07:FD8D: 68        PLA
- - - - - - 0x01FD9E 07:FD8E: C5 E1     CMP ram_btn_press + $01
- - - - - - 0x01FDA0 07:FD90: D0 F3     BNE bra_FD85_loop
- - - - - - 0x01FDA2 07:FD92: C4 E0     CPY ram_btn_press
- - - - - - 0x01FDA4 07:FD94: D0 EF     BNE bra_FD85_loop
- - - - - - 0x01FDA6 07:FD96: F0 D9     BEQ bra_FD71    ; jmp
- - - - - - 0x01FDA8 07:FD98: 20 D0 FD  JSR sub_FDD0
- - - - - - 0x01FDAB 07:FD9B: 20 F2 FD  JSR sub_FDF2
bra_FD9E_loop:
- - - - - - 0x01FDAE 07:FD9E: A4 E0     LDY ram_btn_press
- - - - - - 0x01FDB0 07:FDA0: A5 E1     LDA ram_btn_press + $01
- - - - - - 0x01FDB2 07:FDA2: 48        PHA
- - - - - - 0x01FDB3 07:FDA3: 20 D0 FD  JSR sub_FDD0
- - - - - - 0x01FDB6 07:FDA6: 20 F2 FD  JSR sub_FDF2
- - - - - - 0x01FDB9 07:FDA9: 68        PLA
- - - - - - 0x01FDBA 07:FDAA: C5 E1     CMP ram_btn_press + $01
- - - - - - 0x01FDBC 07:FDAC: D0 F0     BNE bra_FD9E_loop
- - - - - - 0x01FDBE 07:FDAE: C4 E0     CPY ram_btn_press
- - - - - - 0x01FDC0 07:FDB0: D0 EC     BNE bra_FD9E_loop
- - - - - - 0x01FDC2 07:FDB2: F0 BD     BEQ bra_FD71    ; jmp
- - - - - - 0x01FDC4 07:FDB4: 20 D0 FD  JSR sub_FDD0
- - - - - - 0x01FDC7 07:FDB7: A5 04     LDA ram_0004
- - - - - - 0x01FDC9 07:FDB9: 85 E2     STA ram_btn_hold
- - - - - - 0x01FDCB 07:FDBB: A5 05     LDA ram_0005
- - - - - - 0x01FDCD 07:FDBD: 85 E3     STA ram_btn_hold + $01
- - - - - - 0x01FDCF 07:FDBF: A2 03     LDX #$03
bra_FDC1_loop:
- - - - - - 0x01FDD1 07:FDC1: B5 E0     LDA ram_btn_press,X
- - - - - - 0x01FDD3 07:FDC3: A8        TAY
- - - - - - 0x01FDD4 07:FDC4: 55 DC     EOR ram_00DC,X
- - - - - - 0x01FDD6 07:FDC6: 35 E0     AND ram_btn_press,X
- - - - - - 0x01FDD8 07:FDC8: 95 E0     STA ram_btn_press,X
- - - - - - 0x01FDDA 07:FDCA: 94 DC     STY ram_00DC,X
- - - - - - 0x01FDDC 07:FDCC: CA        DEX
- - - - - - 0x01FDDD 07:FDCD: 10 F2     BPL bra_FDC1_loop
- - - - - - 0x01FDDF 07:FDCF: 60        RTS



sub_FDD0:
C - - - - - 0x01FDE0 07:FDD0: A6 E5     LDX ram_00E5
C - - - - - 0x01FDE2 07:FDD2: E8        INX
C - - - - - 0x01FDE3 07:FDD3: 8E 16 40  STX $4016
C - - - - - 0x01FDE6 07:FDD6: CA        DEX
C - - - - - 0x01FDE7 07:FDD7: 8E 16 40  STX $4016
C - - - - - 0x01FDEA 07:FDDA: A2 08     LDX #$08
bra_FDDC_loop:
C - - - - - 0x01FDEC 07:FDDC: AD 16 40  LDA $4016
C - - - - - 0x01FDEF 07:FDDF: 4A        LSR
C - - - - - 0x01FDF0 07:FDE0: 26 E0     ROL ram_btn_press
C - - - - - 0x01FDF2 07:FDE2: 4A        LSR
C - - - - - 0x01FDF3 07:FDE3: 26 04     ROL ram_0004
C - - - - - 0x01FDF5 07:FDE5: AD 17 40  LDA $4017
C - - - - - 0x01FDF8 07:FDE8: 4A        LSR
C - - - - - 0x01FDF9 07:FDE9: 26 E1     ROL ram_btn_press + $01
C - - - - - 0x01FDFB 07:FDEB: 4A        LSR
C - - - - - 0x01FDFC 07:FDEC: 26 05     ROL ram_0005
C - - - - - 0x01FDFE 07:FDEE: CA        DEX
C - - - - - 0x01FDFF 07:FDEF: D0 EB     BNE bra_FDDC_loop
C - - - - - 0x01FE01 07:FDF1: 60        RTS



sub_FDF2:
C - - - - - 0x01FE02 07:FDF2: A5 04     LDA ram_0004
C - - - - - 0x01FE04 07:FDF4: 05 E0     ORA ram_btn_press
C - - - - - 0x01FE06 07:FDF6: 85 E0     STA ram_btn_press
C - - - - - 0x01FE08 07:FDF8: A5 05     LDA ram_0005
C - - - - - 0x01FE0A 07:FDFA: 05 E1     ORA ram_btn_press + $01
C - - - - - 0x01FE0C 07:FDFC: 85 E1     STA ram_btn_press + $01
C - - - - - 0x01FE0E 07:FDFE: 60        RTS


; bzk garbage
- - - - - - 0x01FE0F 07:FDFF: A9 15     LDA #$15
- - - - - - 0x01FE11 07:FE01: A2 14     LDX #$14
- - - - - - 0x01FE13 07:FE03: A0 16     LDY #$16
- - - - - - 0x01FE15 07:FE05: 86 04     STX ram_0004
- - - - - - 0x01FE17 07:FE07: D6 04     DEC ram_0004,X
- - - - - - 0x01FE19 07:FE09: 10 05     BPL bra_FE10
- - - - - - 0x01FE1B 07:FE0B: A9 09     LDA #$09
- - - - - - 0x01FE1D 07:FE0D: 95 04     STA ram_0004,X
- - - - - - 0x01FE1F 07:FE0F: 98        TYA
bra_FE10:
- - - - - - 0x01FE20 07:FE10: AA        TAX
bra_FE11_loop:
- - - - - - 0x01FE21 07:FE11: B5 04     LDA ram_0004,X
- - - - - - 0x01FE23 07:FE13: F0 02     BEQ bra_FE17
- - - - - - 0x01FE25 07:FE15: D6 04     DEC ram_0004,X
bra_FE17:
- - - - - - 0x01FE27 07:FE17: CA        DEX
- - - - - - 0x01FE28 07:FE18: E4 04     CPX ram_0004
- - - - - - 0x01FE2A 07:FE1A: D0 F5     BNE bra_FE11_loop
- - - - - - 0x01FE2C 07:FE1C: 60        RTS


; bzk garbage
- - - - - - 0x01FE2D 07:FE1D: 8A        TXA
- - - - - - 0x01FE2E 07:FE1E: 48        PHA
- - - - - - 0x01FE2F 07:FE1F: 98        TYA
- - - - - - 0x01FE30 07:FE20: 48        PHA
- - - - - - 0x01FE31 07:FE21: A2 17     LDX #$17
- - - - - - 0x01FE33 07:FE23: A0 02     LDY #$02
- - - - - - 0x01FE35 07:FE25: B5 00     LDA ram_0000,X
- - - - - - 0x01FE37 07:FE27: 29 02     AND #$02
- - - - - - 0x01FE39 07:FE29: 85 04     STA ram_0004
- - - - - - 0x01FE3B 07:FE2B: B5 01     LDA ram_0001,X
- - - - - - 0x01FE3D 07:FE2D: 29 02     AND #$02
- - - - - - 0x01FE3F 07:FE2F: 45 04     EOR ram_0004
- - - - - - 0x01FE41 07:FE31: 18        CLC
- - - - - - 0x01FE42 07:FE32: F0 01     BEQ bra_FE35
- - - - - - 0x01FE44 07:FE34: 38        SEC
bra_FE35:
bra_FE35_loop:
- - - - - - 0x01FE45 07:FE35: 76 00     ROR ram_0000,X
- - - - - - 0x01FE47 07:FE37: E8        INX
- - - - - - 0x01FE48 07:FE38: 88        DEY
- - - - - - 0x01FE49 07:FE39: D0 FA     BNE bra_FE35_loop
- - - - - - 0x01FE4B 07:FE3B: 68        PLA
- - - - - - 0x01FE4C 07:FE3C: A8        TAY
- - - - - - 0x01FE4D 07:FE3D: 68        PLA
- - - - - - 0x01FE4E 07:FE3E: AA        TAX
- - - - - - 0x01FE4F 07:FE3F: A5 17     LDA ram_0017
- - - - - - 0x01FE51 07:FE41: 60        RTS



sub_FE42_update_oam:
C - - - - - 0x01FE52 07:FE42: A9 00     LDA #< ram_oam
C - - - - - 0x01FE54 07:FE44: 8D 03 20  STA $2003
C - - - - - 0x01FE57 07:FE47: A9 02     LDA #> ram_oam
C - - - - - 0x01FE59 07:FE49: 8D 14 40  STA $4014
C - - - - - 0x01FE5C 07:FE4C: 60        RTS



sub_FE4D:
bra_FE4D_loop:
- - - - - - 0x01FE5D 07:FE4D: A6 04     LDX ram_0004
- - - - - - 0x01FE5F 07:FE4F: A2 FE     LDX #$FE
bra_FE51_garbage_loop:
- - - - - - 0x01FE61 07:FE51: EA        NOP
- - - - - - 0x01FE62 07:FE52: CA        DEX
- - - - - - 0x01FE63 07:FE53: D0 FC     BNE bra_FE51_garbage_loop
- - - - - - 0x01FE65 07:FE55: C5 04     CMP ram_0004
- - - - - - 0x01FE67 07:FE57: 88        DEY
- - - - - - 0x01FE68 07:FE58: D0 F3     BNE bra_FE4D_loop
- - - - - - 0x01FE6A 07:FE5A: 60        RTS



sub_FE5B:
; bzk optimize, A = 28
- - - - - - 0x01FE6B 07:FE5B: 85 13     STA ram_0013
loc_FE5D_loop:
- - - - - - 0x01FE6D 07:FE5D: A5 13     LDA ram_0013
- - - - - - 0x01FE6F 07:FE5F: 29 F0     AND #$F0
- - - - - - 0x01FE71 07:FE61: F0 18     BEQ bra_FE7B
- - - - - - 0x01FE73 07:FE63: A0 FA     LDY #$FA
- - - - - - 0x01FE75 07:FE65: 20 4D FE  JSR sub_FE4D
- - - - - - 0x01FE78 07:FE68: 20 4D FE  JSR sub_FE4D
- - - - - - 0x01FE7B 07:FE6B: 20 4D FE  JSR sub_FE4D
- - - - - - 0x01FE7E 07:FE6E: 20 4D FE  JSR sub_FE4D
- - - - - - 0x01FE81 07:FE71: A5 13     LDA ram_0013
- - - - - - 0x01FE83 07:FE73: 38        SEC
- - - - - - 0x01FE84 07:FE74: E9 10     SBC #$10
- - - - - - 0x01FE86 07:FE76: 85 13     STA ram_0013
- - - - - - 0x01FE88 07:FE78: 4C 5D FE  JMP loc_FE5D_loop
bra_FE7B:
- - - - - - 0x01FE8B 07:FE7B: A5 13     LDA ram_0013
- - - - - - 0x01FE8D 07:FE7D: 29 0F     AND #$0F
- - - - - - 0x01FE8F 07:FE7F: F0 0A     BEQ bra_FE8B_RTS
bra_FE81_loop:
- - - - - - 0x01FE91 07:FE81: A0 64     LDY #$64
- - - - - - 0x01FE93 07:FE83: 20 4D FE  JSR sub_FE4D
- - - - - - 0x01FE96 07:FE86: 38        SEC
- - - - - - 0x01FE97 07:FE87: E9 01     SBC #$01
- - - - - - 0x01FE99 07:FE89: D0 F6     BNE bra_FE81_loop
bra_FE8B_RTS:
- - - - - - 0x01FE9B 07:FE8B: 60        RTS



sub_FE8C_nmi_on:
sub_0x01FE9C_nmi_on:
C - - - - - 0x01FE9C 07:FE8C: 48        PHA
C - - - - - 0x01FE9D 07:FE8D: A5 E9     LDA ram_for_2000
C - - - - - 0x01FE9F 07:FE8F: 09 80     ORA #$80
C - - - - - 0x01FEA1 07:FE91: 85 E9     STA ram_for_2000
C - - - - - 0x01FEA3 07:FE93: 8D 00 20  STA $2000
C - - - - - 0x01FEA6 07:FE96: 68        PLA
C - - - - - 0x01FEA7 07:FE97: 60        RTS



sub_FE98_nmi_off:
sub_0x01FEA8_nmi_off:
C - - - - - 0x01FEA8 07:FE98: 48        PHA
C - - - - - 0x01FEA9 07:FE99: A5 E9     LDA ram_for_2000
C - - - - - 0x01FEAB 07:FE9B: 29 7F     AND #$7F
C - - - - - 0x01FEAD 07:FE9D: 85 E9     STA ram_for_2000
C - - - - - 0x01FEAF 07:FE9F: 8D 00 20  STA $2000
C - - - - - 0x01FEB2 07:FEA2: 68        PLA
C - - - - - 0x01FEB3 07:FEA3: 60        RTS



sub_FEA4_write_bg_chr_banks:
C - - - - - 0x01FEB4 07:FEA4: A9 82     LDA #$82
C - - - - - 0x01FEB6 07:FEA6: 8D EB 00  STA a: ram_for_8000
C - - - - - 0x01FEB9 07:FEA9: 8D 00 80  STA $8000
C - - - - - 0x01FEBC 07:FEAC: AD 9C 04  LDA ram_chr_bg_1
C - - - - - 0x01FEBF 07:FEAF: 8D 01 80  STA $8001
C - - - - - 0x01FEC2 07:FEB2: A9 83     LDA #$83
C - - - - - 0x01FEC4 07:FEB4: 8D EB 00  STA a: ram_for_8000
C - - - - - 0x01FEC7 07:FEB7: 8D 00 80  STA $8000
C - - - - - 0x01FECA 07:FEBA: AD 9D 04  LDA ram_chr_bg_2
C - - - - - 0x01FECD 07:FEBD: 8D 01 80  STA $8001
C - - - - - 0x01FED0 07:FEC0: A9 84     LDA #$84
C - - - - - 0x01FED2 07:FEC2: 8D EB 00  STA a: ram_for_8000
C - - - - - 0x01FED5 07:FEC5: 8D 00 80  STA $8000
C - - - - - 0x01FED8 07:FEC8: AD 9E 04  LDA ram_chr_bg_3
C - - - - - 0x01FEDB 07:FECB: 8D 01 80  STA $8001
C - - - - - 0x01FEDE 07:FECE: A9 85     LDA #$85
C - - - - - 0x01FEE0 07:FED0: 8D EB 00  STA a: ram_for_8000
C - - - - - 0x01FEE3 07:FED3: 8D 00 80  STA $8000
C - - - - - 0x01FEE6 07:FED6: AD 9F 04  LDA ram_chr_bg_4
C - - - - - 0x01FEE9 07:FED9: 8D 01 80  STA $8001
C - - - - - 0x01FEEC 07:FEDC: 60        RTS



loc_FEDD_write_spr_chr_banks:
sub_FEDD_write_spr_chr_banks:
sub_0x01FEED_write_spr_chr_banks:
C D 3 - - - 0x01FEED 07:FEDD: A5 E9     LDA ram_for_2000
C - - - - - 0x01FEEF 07:FEDF: 10 0F     BPL bra_FEF0
C - - - - - 0x01FEF1 07:FEE1: AD EC 00  LDA a: ram_nmi_flag
C - - - - - 0x01FEF4 07:FEE4: C9 C0     CMP #con_nmi_1_irq_1
C - - - - - 0x01FEF6 07:FEE6: D0 08     BNE bra_FEF0
C - - - - - 0x01FEF8 07:FEE8: AD 98 04  LDA ram_chr_spr_1
C - - - - - 0x01FEFB 07:FEEB: C9 40     CMP #con_chr_bank + $40
C - - - - - 0x01FEFD 07:FEED: F0 01     BEQ bra_FEF0
- - - - - - 0x01FEFF 07:FEEF: 80        .byte $80   ; bzk !!! ??? maybe bug or hacking protection
bra_FEF0:
C - - - - - 0x01FF00 07:FEF0: A9 80     LDA #$80
C - - - - - 0x01FF02 07:FEF2: 8D EB 00  STA a: ram_for_8000
C - - - - - 0x01FF05 07:FEF5: 8D 00 80  STA $8000
C - - - - - 0x01FF08 07:FEF8: AD 98 04  LDA ram_chr_spr_1
C - - - - - 0x01FF0B 07:FEFB: 8D 01 80  STA $8001
C - - - - - 0x01FF0E 07:FEFE: A9 81     LDA #$81
C - - - - - 0x01FF10 07:FF00: 8D EB 00  STA a: ram_for_8000
C - - - - - 0x01FF13 07:FF03: 8D 00 80  STA $8000
C - - - - - 0x01FF16 07:FF06: AD 99 04  LDA ram_chr_spr_2
C - - - - - 0x01FF19 07:FF09: 8D 01 80  STA $8001
C - - - - - 0x01FF1C 07:FF0C: 60        RTS



sub_FF0D_prg_bankswitch:
C - - - - - 0x01FF1D 07:FF0D: 48        PHA
C - - - - - 0x01FF1E 07:FF0E: 8A        TXA
C - - - - - 0x01FF1F 07:FF0F: 48        PHA
C - - - - - 0x01FF20 07:FF10: A9 87     LDA #$87
C - - - - - 0x01FF22 07:FF12: 8D EB 00  STA a: ram_for_8000
C - - - - - 0x01FF25 07:FF15: 8D 00 80  STA $8000
C - - - - - 0x01FF28 07:FF18: BA        TSX
C - - - - - 0x01FF29 07:FF19: BD 02 01  LDA ram_0102,X
C - - - - - 0x01FF2C 07:FF1C: 0A        ASL
C - - - - - 0x01FF2D 07:FF1D: 09 01     ORA #$01
C - - - - - 0x01FF2F 07:FF1F: 8D 01 80  STA $8001
C - - - - - 0x01FF32 07:FF22: A9 86     LDA #$86
C - - - - - 0x01FF34 07:FF24: 8D EB 00  STA a: ram_for_8000
C - - - - - 0x01FF37 07:FF27: 8D 00 80  STA $8000
C - - - - - 0x01FF3A 07:FF2A: BD 02 01  LDA ram_0102,X
C - - - - - 0x01FF3D 07:FF2D: 0A        ASL
C - - - - - 0x01FF3E 07:FF2E: 8D 01 80  STA $8001
C - - - - - 0x01FF41 07:FF31: 68        PLA
C - - - - - 0x01FF42 07:FF32: AA        TAX
C - - - - - 0x01FF43 07:FF33: 68        PLA
C - - - - - 0x01FF44 07:FF34: CD FF BF  CMP $BFFF   ; bank id
C - - - - - 0x01FF47 07:FF37: D0 01     BNE bra_FF3A
C - - - - - 0x01FF49 07:FF39: 60        RTS


; bzk garbage
; I've seen the same garbage bytes in Kunio-kun no Nekketsu Soccer League 0x01EF12
bra_FF3A:
- - - - - - 0x01FF4A 07:FF3A: EA        .byte $EA   ; 
- - - - - - 0x01FF4B 07:FF3B: AE        .byte $AE   ; 
- - - - - - 0x01FF4C 07:FF3C: FF        .byte $FF   ; 
- - - - - - 0x01FF4D 07:FF3D: BF        .byte $BF   ; 
- - - - - - 0x01FF4E 07:FF3E: 80        .byte $80   ; 
- - - - - - 0x01FF4F 07:FF3F: EA        .byte $EA   ; 



vec_FF40_NMI:
C - - - - - 0x01FF50 07:FF40: 24 EC     BIT ram_nmi_flag
C - - - - - 0x01FF52 07:FF42: 10 08     BPL bra_FF4C_nmi_is_disabled
C - - - - - 0x01FF54 07:FF44: 50 03     BVC bra_FF49_irq_is_disabled
; if both nmi and irq are enabled
C - - - - - 0x01FF56 07:FF46: 4C 9B EB  JMP loc_EB9B_nmi_1_irq_1
bra_FF49_irq_is_disabled:
C - - - - - 0x01FF59 07:FF49: 4C 6E EB  JMP loc_EB6E_nmi_1_irq_0
bra_FF4C_nmi_is_disabled:
C - - - - - 0x01FF5C 07:FF4C: 50 03     BVC bra_FF51_nmi_0_irq_0
; if only irq is enabled
C - - - - - 0x01FF5E 07:FF4E: 4C 50 EB  JMP loc_EB50_nmi_0_irq_1
bra_FF51_nmi_0_irq_0:
C - - - - - 0x01FF61 07:FF51: A5 E9     LDA ram_for_2000
C - - - - - 0x01FF63 07:FF53: 29 7F     AND #$7F
C - - - - - 0x01FF65 07:FF55: 85 E9     STA ram_for_2000
C - - - - - 0x01FF67 07:FF57: 8D 00 20  STA $2000
C - - - - - 0x01FF6A 07:FF5A: AD 02 20  LDA $2002
C - - - - - 0x01FF6D 07:FF5D: 68        PLA
C - - - - - 0x01FF6E 07:FF5E: 68        PLA
C - - - - - 0x01FF6F 07:FF5F: 68        PLA
C - - - - - 0x01FF70 07:FF60: 68        PLA
C - - - - - 0x01FF71 07:FF61: 85 EC     STA ram_nmi_flag
C - - - - - 0x01FF73 07:FF63: 68        PLA
C - - - - - 0x01FF74 07:FF64: 60        RTS



vec_FF65_RESET:
C D 3 - - - 0x01FF75 07:FF65: 78        SEI
C - - - - - 0x01FF76 07:FF66: A9 08     LDA #$08
C - - - - - 0x01FF78 07:FF68: 8D 00 20  STA $2000
C - - - - - 0x01FF7B 07:FF6B: 85 E9     STA ram_for_2000
C - - - - - 0x01FF7D 07:FF6D: A9 01     LDA #$01
C - - - - - 0x01FF7F 07:FF6F: 8D 00 A0  STA $A000
C - - - - - 0x01FF82 07:FF72: D8        CLD
C - - - - - 0x01FF83 07:FF73: A9 06     LDA #$06
C - - - - - 0x01FF85 07:FF75: 85 E8     STA ram_for_2001
C - - - - - 0x01FF87 07:FF77: 8D 01 20  STA $2001
C - - - - - 0x01FF8A 07:FF7A: A2 02     LDX #$02
bra_FF7C_loop:
C - - - - - 0x01FF8C 07:FF7C: AD 02 20  LDA $2002
C - - - - - 0x01FF8F 07:FF7F: 10 FB     BPL bra_FF7C_loop
C - - - - - 0x01FF91 07:FF81: CA        DEX
C - - - - - 0x01FF92 07:FF82: D0 F8     BNE bra_FF7C_loop
; X = 00
C - - - - - 0x01FF94 07:FF84: 86 E7     STX ram_00E7
C - - - - - 0x01FF96 07:FF86: 86 E6     STX ram_00E6
C - - - - - 0x01FF98 07:FF88: 86 E5     STX ram_00E5
C - - - - - 0x01FF9A 07:FF8A: 8E 16 40  STX $4016
C - - - - - 0x01FF9D 07:FF8D: A9 FF     LDA #$FF
C - - - - - 0x01FF9F 07:FF8F: 85 E4     STA ram_00E4
C - - - - - 0x01FFA1 07:FF91: A9 40     LDA #$40
C - - - - - 0x01FFA3 07:FF93: 8D 17 40  STA $4017
C - - - - - 0x01FFA6 07:FF96: A9 0F     LDA #$0F
C - - - - - 0x01FFA8 07:FF98: 8D 15 40  STA $4015
C - - - - - 0x01FFAB 07:FF9B: A9 10     LDA #$10
C - - - - - 0x01FFAD 07:FF9D: AA        TAX
bra_FF9E_loop:  ; bzk garbage loop
C - - - - - 0x01FFAE 07:FF9E: 8D 06 20  STA $2006
C - - - - - 0x01FFB1 07:FFA1: 8D 06 20  STA $2006
C - - - - - 0x01FFB4 07:FFA4: 49 00     EOR #$00
C - - - - - 0x01FFB6 07:FFA6: CA        DEX
C - - - - - 0x01FFB7 07:FFA7: D0 F5     BNE bra_FF9E_loop
C - - - - - 0x01FFB9 07:FFA9: A2 FF     LDX #$FF
C - - - - - 0x01FFBB 07:FFAB: 9A        TXS
C - - - - - 0x01FFBC 07:FFAC: A9 80     LDA #con_nmi_1_irq_0
C - - - - - 0x01FFBE 07:FFAE: 85 EC     STA ram_nmi_flag
C - - - - - 0x01FFC0 07:FFB0: A9 C0     LDA #$C0
C - - - - - 0x01FFC2 07:FFB2: 85 ED     STA ram_00ED
C - - - - - 0x01FFC4 07:FFB4: A9 00     LDA #$00
C - - - - - 0x01FFC6 07:FFB6: 8D F0 00  STA a: ram_00F0
C - - - - - 0x01FFC9 07:FFB9: 4C 0D ED  JMP loc_ED0D


; bzk garbage
- - - - - - 0x01FFCC 07:FFBC: 00        .byte $00, $00, $00, $00   ; 
- - - - - - 0x01FFD0 07:FFC0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01FFE0 07:FFD0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01FFF0 07:FFE0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x020000 07:FFF0: 00        .byte $00, $00, $00, $00, $00, $00   ; 



tbl_FFF6_debug_byte:
tbl_0x020006_debug_byte:
- D 3 - - - 0x020006 07:FFF6: 00        .byte con_debug   ; 


; bzk garbage
- - - - - - 0x020007 07:FFF7: 4C 65 FF  JMP vec_FF65_RESET



.segment "VECTORS"
- D 3 - - - 0x02000A 07:FFFA: 40 FF     .word vec_FF40_NMI
- D 3 - - - 0x02000C 07:FFFC: 65 FF     .word vec_FF65_RESET
- D 3 - - - 0x02000E 07:FFFE: 34 EC     .word vec_EC34_IRQ



