.segment "BANK_FF"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
.org $C000  ; for listing file
; 0x000010-0x00400F



tbl_C000_lo:
- D 2 - - - 0x000010 00:C000: 01        .byte < ram_ppu_buffer ;   00 ; logo screen, mountain counter
- D 2 - - - 0x000011 00:C001: 4C        .byte < (ram_0500_data + $4C) ;   01 ; logo screen palette
- D 2 - - - 0x000012 00:C002: B8        .byte < _off000_C6B8_02 ; 
- D 2 - - - 0x000013 00:C003: E3        .byte < _off000_C6E3_03 ; 
- D 2 - - - 0x000014 00:C004: 94        .byte < _off000_C694_04 ; 
- D 2 - - - 0x000015 00:C005: 00        .byte < ram_0400_data ;   05 ; logo screen bg data
- D 2 - - - 0x000016 00:C006: ED        .byte < _off000_C6ED_06 ; 
- D 2 - - - 0x000017 00:C007: DF        .byte < (ram_0400_data + $DF) ;   07 ; score counting screen palette, see 0x005295
- D 2 - - - 0x000018 00:C008: 81        .byte < (ram_0400_data + $81) ;   08 ; score counting screen bg data (additional data for 2nd player)
- D 2 - - - 0x000019 00:C009: 00        .byte < ram_0600_data ;   09 ; 



tbl_C00A_hi:
- D 2 - - - 0x00001A 00:C00A: 03        .byte > ram_ppu_buffer ;   00 ; 
- D 2 - - - 0x00001B 00:C00B: 05        .byte > (ram_0500_data + $4C) ;   01 ; 
- D 2 - - - 0x00001C 00:C00C: C6        .byte > _off000_C6B8_02 ; 
- D 2 - - - 0x00001D 00:C00D: C6        .byte > _off000_C6E3_03 ; 
- D 2 - - - 0x00001E 00:C00E: C6        .byte > _off000_C694_04 ; 
- D 2 - - - 0x00001F 00:C00F: 04        .byte > ram_0400_data ;   04 ; 
- D 2 - - - 0x000020 00:C010: C6        .byte > _off000_C6ED_06 ; 
- D 2 - - - 0x000021 00:C011: 04        .byte > (ram_0400_data + $DF) ;   06 ; 
- D 2 - - - 0x000022 00:C012: 04        .byte > (ram_0400_data + $81) ;   07 ; 
- D 2 - - - 0x000023 00:C013: 06        .byte > ram_0600_data ;   08 ; 



vec_C014_RESET:
C - - - - - 0x000024 00:C014: 78        SEI
C - - - - - 0x000025 00:C015: D8        CLD
C - - - - - 0x000026 00:C016: A9 10     LDA #$10
C - - - - - 0x000028 00:C018: 8D 00 20  STA $2000
C - - - - - 0x00002B 00:C01B: A2 FF     LDX #$FF
C - - - - - 0x00002D 00:C01D: 9A        TXS
; bzk optimize, BIT + BPL
bra_C01E_infinite_loop:
C - - - - - 0x00002E 00:C01E: AD 02 20  LDA $2002
C - - - - - 0x000031 00:C021: 0A        ASL
C - - - - - 0x000032 00:C022: 90 FA     BCC bra_C01E_infinite_loop
bra_C024_infinite_loop:
C - - - - - 0x000034 00:C024: AD 02 20  LDA $2002
C - - - - - 0x000037 00:C027: 0A        ASL
C - - - - - 0x000038 00:C028: 90 FA     BCC bra_C024_infinite_loop
C - - - - - 0x00003A 00:C02A: A0 07     LDY #$07
C - - - - - 0x00003C 00:C02C: 84 01     STY ram_0001
C - - - - - 0x00003E 00:C02E: A0 00     LDY #$00
C - - - - - 0x000040 00:C030: 84 00     STY ram_0000
C - - - - - 0x000042 00:C032: 98        TYA ; 00
C - - - - - 0x000043 00:C033: A2 5A     LDX #$5A
C - - - - - 0x000045 00:C035: EC 80 07  CPX ram_reset_check
C - - - - - 0x000048 00:C038: D0 07     BNE bra_C041_it_is_first_launch
C - - - - - 0x00004A 00:C03A: EC 81 07  CPX ram_reset_check + $01
C - - - - - 0x00004D 00:C03D: D0 02     BNE bra_C041_it_is_first_launch
; if it is a manual reset, it means the game was already loaded once
; clear 0000-07EC and keep score
C - - - - - 0x00004F 00:C03F: A0 EC     LDY #$EC
; clear 0000-07FF
bra_C041_it_is_first_launch:
bra_C041_loop:
C - - - - - 0x000051 00:C041: 91 00     STA (ram_0000),Y
C - - - - - 0x000053 00:C043: 88        DEY
C - - - - - 0x000054 00:C044: D0 FB     BNE bra_C041_loop
C - - - - - 0x000056 00:C046: C6 01     DEC ram_0001
C - - - - - 0x000058 00:C048: 10 F7     BPL bra_C041_loop
C - - - - - 0x00005A 00:C04A: A9 5A     LDA #$5A
C - - - - - 0x00005C 00:C04C: 8D 80 07  STA ram_reset_check
C - - - - - 0x00005F 00:C04F: 8D 81 07  STA ram_reset_check + $01
C - - - - - 0x000062 00:C052: 20 5E C0  JSR sub_C05E
C - - - - - 0x000065 00:C055: 20 41 C1  JSR sub_C141_enable_nmi
loc_C058_infinite_loop:
C D 2 - - - 0x000068 00:C058: 20 CE CA  JSR sub_CACE_generate_random
C - - - - - 0x00006B 00:C05B: 4C 58 C0  JMP loc_C058_infinite_loop



sub_C05E:
C - - - - - 0x00006E 00:C05E: A9 00     LDA #$00
C - - - - - 0x000070 00:C060: 8D 11 40  STA $4011
C - - - - - 0x000073 00:C063: A9 0F     LDA #$0F
C - - - - - 0x000075 00:C065: 8D 15 40  STA $4015
C - - - - - 0x000078 00:C068: A9 06     LDA #$06
C - - - - - 0x00007A 00:C06A: 8D 01 20  STA $2001
sub_C06D:
C - - - - - 0x00007D 00:C06D: 20 83 C8  JSR sub_C883
sub_C070:
C - - - - - 0x000080 00:C070: 20 9A C8  JSR sub_C89A
C - - - - - 0x000083 00:C073: 4C 1D C8  JMP loc_C81D_hide_all_sprites



vec_C076_NMI:
C - - - - - 0x000086 00:C076: 48        PHA
C - - - - - 0x000087 00:C077: 8A        TXA
C - - - - - 0x000088 00:C078: 48        PHA
C - - - - - 0x000089 00:C079: 98        TYA
C - - - - - 0x00008A 00:C07A: 48        PHA
C - - - - - 0x00008B 00:C07B: A5 10     LDA ram_for_2000
C - - - - - 0x00008D 00:C07D: A6 DE     LDX ram_00DE_flag
C - - - - - 0x00008F 00:C07F: F0 02     BEQ bra_C083
C - - - - - 0x000091 00:C081: 49 02     EOR #$02
bra_C083:
C - - - - - 0x000093 00:C083: 29 7F     AND #$7F
C - - - - - 0x000095 00:C085: 20 48 C1  JSR sub_C148_set_2000
C - - - - - 0x000098 00:C088: A5 52     LDA ram_buffer_offset
C - - - - - 0x00009A 00:C08A: D0 09     BNE bra_C095
C - - - - - 0x00009C 00:C08C: A5 11     LDA ram_for_2001
C - - - - - 0x00009E 00:C08E: 09 1E     ORA #$1E
C - - - - - 0x0000A0 00:C090: 8D 01 20  STA $2001
C - - - - - 0x0000A3 00:C093: 85 11     STA ram_for_2001
bra_C095:
C - - - - - 0x0000A5 00:C095: A9 00     LDA #< ram_oam
C - - - - - 0x0000A7 00:C097: 8D 03 20  STA $2003
C - - - - - 0x0000AA 00:C09A: A9 02     LDA #> ram_oam
C - - - - - 0x0000AC 00:C09C: 8D 14 40  STA $4014
C - - - - - 0x0000AF 00:C09F: A6 52     LDX ram_buffer_offset
C - - - - - 0x0000B1 00:C0A1: 20 50 C1  JSR sub_C150
; A = 00
C - - - - - 0x0000B4 00:C0A4: 85 52     STA ram_buffer_offset
C - - - - - 0x0000B6 00:C0A6: 85 DE     STA ram_00DE_flag
C - - - - - 0x0000B8 00:C0A8: A9 3F     LDA #> $3F00
C - - - - - 0x0000BA 00:C0AA: 8D 06 20  STA $2006
C - - - - - 0x0000BD 00:C0AD: A9 00     LDA #< $3F00
C - - - - - 0x0000BF 00:C0AF: 8D 06 20  STA $2006
; A = 00
C - - - - - 0x0000C2 00:C0B2: 8D 06 20  STA $2006
C - - - - - 0x0000C5 00:C0B5: 8D 06 20  STA $2006
C - - - - - 0x0000C8 00:C0B8: AD 02 20  LDA $2002
C - - - - - 0x0000CB 00:C0BB: 20 81 CB  JSR sub_CB81_set_scroll
C - - - - - 0x0000CE 00:C0BE: A5 10     LDA ram_for_2000
C - - - - - 0x0000D0 00:C0C0: 8D 00 20  STA $2000
C - - - - - 0x0000D3 00:C0C3: 20 ED CA  JSR sub_CAED_read_joy_regs
C - - - - - 0x0000D6 00:C0C6: 20 1E F9  JSR sub_F91E_update_sound_engine
C - - - - - 0x0000D9 00:C0C9: A5 53     LDA ram_0053_flag
C - - - - - 0x0000DB 00:C0CB: F0 06     BEQ bra_C0D3
C - - - - - 0x0000DD 00:C0CD: 20 20 C6  JSR sub_C620
C - - - - - 0x0000E0 00:C0D0: 4C 26 C1  JMP loc_C126
bra_C0D3:
C - - - - - 0x0000E3 00:C0D3: A5 51     LDA ram_0051
C - - - - - 0x0000E5 00:C0D5: F0 4F     BEQ bra_C126
C - - - - - 0x0000E7 00:C0D7: AE 4C 03  LDX ram_034C
C - - - - - 0x0000EA 00:C0DA: F0 3E     BEQ bra_C11A_00
- - - - - - 0x0000EC 00:C0DC: CA        DEX
- - - - - - 0x0000ED 00:C0DD: F0 24     BEQ bra_C103_01
- - - - - - 0x0000EF 00:C0DF: CA        DEX
- - - - - - 0x0000F0 00:C0E0: D0 1E     BNE bra_C100_03_04
; 02
- - - - - - 0x0000F2 00:C0E2: A5 11     LDA ram_for_2001
- - - - - - 0x0000F4 00:C0E4: 29 EF     AND #$EF
- - - - - - 0x0000F6 00:C0E6: 8D 01 20  STA $2001
- - - - - - 0x0000F9 00:C0E9: 85 11     STA ram_for_2001
- - - - - - 0x0000FB 00:C0EB: A5 15     LDA ram_btn_press
- - - - - - 0x0000FD 00:C0ED: 29 10     AND #con_btn_Start
- - - - - - 0x0000FF 00:C0EF: F0 47     BEQ bra_C138_exit_nmi
; if pause was set
- - - - - - 0x000101 00:C0F1: A0 40     LDY #con_music_unpause
bra_C0F3:
- - - - - - 0x000103 00:C0F3: 84 FB     STY ram_music_1
- - - - - - 0x000105 00:C0F5: A9 40     LDA #$40
- - - - - - 0x000107 00:C0F7: 8D 4D 03  STA ram_034D_pause_timer
bra_C0FA:
- - - - - - 0x00010A 00:C0FA: EE 4C 03  INC ram_034C
- - - - - - 0x00010D 00:C0FD: 4C 38 C1  JMP loc_C138_exit_nmi
bra_C100_03_04:
- - - - - - 0x000110 00:C100: CA        DEX
- - - - - - 0x000111 00:C101: D0 07     BNE bra_C10A_04
; 03
bra_C103_01:
- - - - - - 0x000113 00:C103: CE 4D 03  DEC ram_034D_pause_timer
- - - - - - 0x000116 00:C106: F0 F2     BEQ bra_C0FA
- - - - - - 0x000118 00:C108: D0 2E     BNE bra_C138_exit_nmi    ; jmp
bra_C10A_04:
- - - - - - 0x00011A 00:C10A: A5 11     LDA ram_for_2001
- - - - - - 0x00011C 00:C10C: 09 10     ORA #$10
- - - - - - 0x00011E 00:C10E: 8D 01 20  STA $2001
- - - - - - 0x000121 00:C111: 85 11     STA ram_for_2001
- - - - - - 0x000123 00:C113: A9 00     LDA #$00
- - - - - - 0x000125 00:C115: 8D 4C 03  STA ram_034C
- - - - - - 0x000128 00:C118: F0 1E     BEQ bra_C138_exit_nmi    ; jmp
bra_C11A_00:
C - - - - - 0x00012A 00:C11A: A0 20     LDY #con_music_pause
C - - - - - 0x00012C 00:C11C: A5 15     LDA ram_btn_press
C - - - - - 0x00012E 00:C11E: 29 10     AND #con_btn_Start
C - - - - - 0x000130 00:C120: F0 04     BEQ bra_C126
C - - - - - 0x000132 00:C122: A5 55     LDA ram_0055
C - - - - - 0x000134 00:C124: D0 CD     BNE bra_C0F3
bra_C126:
loc_C126:
C D 2 - - - 0x000136 00:C126: 20 9D CB  JSR sub_CB9D_decrease_all_timers
C - - - - - 0x000139 00:C129: E6 50     INC ram_frm_cnt
C - - - - - 0x00013B 00:C12B: A5 51     LDA ram_0051
C - - - - - 0x00013D 00:C12D: D0 06     BNE bra_C135
C - - - - - 0x00013F 00:C12F: 20 37 C4  JSR sub_C437
C - - - - - 0x000142 00:C132: 4C 38 C1  JMP loc_C138_exit_nmi
bra_C135:
C - - - - - 0x000145 00:C135: 20 4A C4  JSR sub_C44A
bra_C138_exit_nmi:
loc_C138_exit_nmi:
C D 2 - - - 0x000148 00:C138: 20 41 C1  JSR sub_C141_enable_nmi
C - - - - - 0x00014B 00:C13B: 68        PLA
C - - - - - 0x00014C 00:C13C: A8        TAY
C - - - - - 0x00014D 00:C13D: 68        PLA
C - - - - - 0x00014E 00:C13E: AA        TAX
C - - - - - 0x00014F 00:C13F: 68        PLA
C - - - - - 0x000150 00:C140: 40        RTI



sub_C141_enable_nmi:
C - - - - - 0x000151 00:C141: AD 02 20  LDA $2002
C - - - - - 0x000154 00:C144: A5 10     LDA ram_for_2000
C - - - - - 0x000156 00:C146: 09 80     ORA #$80
sub_C148_set_2000:
C - - - - - 0x000158 00:C148: 85 10     STA ram_for_2000
C - - - - - 0x00015A 00:C14A: 8D 00 20  STA $2000
C - - - - - 0x00015D 00:C14D: 60        RTS



sub_C14E:
loc_C14E:
C D 2 - - - 0x00015E 00:C14E: A2 00     LDX #$00
sub_C150:
C - - - - - 0x000160 00:C150: BD 00 C0  LDA tbl_C000_lo,X
C - - - - - 0x000163 00:C153: 85 00     STA ram_0000
C - - - - - 0x000165 00:C155: BD 0A C0  LDA tbl_C00A_hi,X
C - - - - - 0x000168 00:C158: 85 01     STA ram_0001
C - - - - - 0x00016A 00:C15A: 20 78 CB  JSR sub_CB78
sub_C15D:
C - - - - - 0x00016D 00:C15D: A9 00     LDA #$00
C - - - - - 0x00016F 00:C15F: 8D 00 03  STA ram_buffer_index
C - - - - - 0x000172 00:C162: 8D 01 03  STA ram_ppu_buffer
C - - - - - 0x000175 00:C165: 60        RTS



ofs_000_C166_00:
C - - J - - 0x000176 00:C166: A5 43     LDA ram_0043_timer
C - - - - - 0x000178 00:C168: D0 6C     BNE bra_C1D6_RTS
C - - - - - 0x00017A 00:C16A: 20 91 C8  JSR sub_C891_write_00_to_2001
C - - - - - 0x00017D 00:C16D: A6 57     LDX ram_0057_script
C - - - - - 0x00017F 00:C16F: D0 11     BNE bra_C182
C - - - - - 0x000181 00:C171: A9 80     LDA #con_music_off
C - - - - - 0x000183 00:C173: 85 FB     STA ram_music_1
C - - - - - 0x000185 00:C175: 20 6D C0  JSR sub_C06D
C - - - - - 0x000188 00:C178: A2 00     LDX #$00    ; logo screen bg data
C - - - - - 0x00018A 00:C17A: 20 FB C6  JSR sub_C6FB_copy_data_from_ppu
C - - - - - 0x00018D 00:C17D: A9 01     LDA #$01
bra_C17F_loop:
C - - - - - 0x00018F 00:C17F: 4C 18 C2  JMP loc_C218
bra_C182:
C - - - - - 0x000192 00:C182: CA        DEX
C - - - - - 0x000193 00:C183: D0 04     BNE bra_C189
C - - - - - 0x000195 00:C185: A9 05     LDA #$05
C - - - - - 0x000197 00:C187: D0 F6     BNE bra_C17F_loop    ; jmp
bra_C189:
C - - - - - 0x000199 00:C189: CA        DEX
C - - - - - 0x00019A 00:C18A: D0 0F     BNE bra_C19B
C - - - - - 0x00019C 00:C18C: A9 F9     LDA #$F9
C - - - - - 0x00019E 00:C18E: 85 00     STA ram_0000
C - - - - - 0x0001A0 00:C190: 20 4C CA  JSR sub_CA4C
C - - - - - 0x0001A3 00:C193: A9 F1     LDA #$F1
C - - - - - 0x0001A5 00:C195: 20 E0 C8  JSR sub_C8E0
C - - - - - 0x0001A8 00:C198: 4C 1A C2  JMP loc_C21A
bra_C19B:
C - - - - - 0x0001AB 00:C19B: A9 00     LDA #$00
C - - - - - 0x0001AD 00:C19D: 85 56     STA ram_mountain_completed
C - - - - - 0x0001AF 00:C19F: 85 57     STA ram_0057_script
C - - - - - 0x0001B1 00:C1A1: 8D FA 03  STA ram_03FA
C - - - - - 0x0001B4 00:C1A4: 8D FB 03  STA ram_03FB
C - - - - - 0x0001B7 00:C1A7: 85 13     STA ram_scroll_Y
C - - - - - 0x0001B9 00:C1A9: 85 22     STA ram_0022_plr
C - - - - - 0x0001BB 00:C1AB: 85 23     STA ram_0022_plr + $01
C - - - - - 0x0001BD 00:C1AD: A2 09     LDX #$09
bra_C1AF_loop:
C - - - - - 0x0001BF 00:C1AF: 9D 60 03  STA ram_plr_counters,X
C - - - - - 0x0001C2 00:C1B2: CA        DEX
C - - - - - 0x0001C3 00:C1B3: 10 FA     BPL bra_C1AF_loop
C - - - - - 0x0001C5 00:C1B5: 85 4D     STA ram_004D_timer
C - - - - - 0x0001C7 00:C1B7: 20 E0 C8  JSR sub_C8E0
C - - - - - 0x0001CA 00:C1BA: 20 C0 C4  JSR sub_C4C0_update_game_mode_cursor
C - - - - - 0x0001CD 00:C1BD: A5 54     LDA ram_0054_timer
C - - - - - 0x0001CF 00:C1BF: D0 0F     BNE bra_C1D0
C - - - - - 0x0001D1 00:C1C1: A9 03     LDA #$03
C - - - - - 0x0001D3 00:C1C3: 85 54     STA ram_0054_timer
C - - - - - 0x0001D5 00:C1C5: A9 58     LDA #$58
C - - - - - 0x0001D7 00:C1C7: 85 4D     STA ram_004D_timer
C - - - - - 0x0001D9 00:C1C9: A9 09     LDA #$09
C - - - - - 0x0001DB 00:C1CB: 85 31     STA ram_main_timer
C - - - - - 0x0001DD 00:C1CD: 4A        LSR ; 04 con_music_logo
C - - - - - 0x0001DE 00:C1CE: 85 FB     STA ram_music_1
bra_C1D0:
C - - - - - 0x0001E0 00:C1D0: A9 80     LDA #$80
C - - - - - 0x0001E2 00:C1D2: 85 4E     STA ram_spawn_timer_lo_bird
C - - - - - 0x0001E4 00:C1D4: E6 51     INC ram_0051
bra_C1D6_RTS:
C - - - - - 0x0001E6 00:C1D6: 60        RTS



sub_C1D7:
ofs_000_C1D7_01:
C - - - - - 0x0001E7 00:C1D7: 20 91 C8  JSR sub_C891_write_00_to_2001
C - - - - - 0x0001EA 00:C1DA: A5 57     LDA ram_0057_script
C - - - - - 0x0001EC 00:C1DC: D0 12     BNE bra_C1F0
C - - - - - 0x0001EE 00:C1DE: 20 70 C0  JSR sub_C070
C - - - - - 0x0001F1 00:C1E1: A5 10     LDA ram_for_2000
C - - - - - 0x0001F3 00:C1E3: 29 FD     AND #$FD
C - - - - - 0x0001F5 00:C1E5: 85 10     STA ram_for_2000
C - - - - - 0x0001F7 00:C1E7: A9 9F     LDA #$9F
C - - - - - 0x0001F9 00:C1E9: 85 13     STA ram_scroll_Y
C - - - - - 0x0001FB 00:C1EB: A9 04     LDA #$04
C - - - - - 0x0001FD 00:C1ED: 4C 18 C2  JMP loc_C218
bra_C1F0:
C - - - - - 0x000200 00:C1F0: C9 01     CMP #$01
C - - - - - 0x000202 00:C1F2: F0 26     BEQ bra_C21A
C - - - - - 0x000204 00:C1F4: C9 02     CMP #$02
C - - - - - 0x000206 00:C1F6: D0 25     BNE bra_C21D
C - - - - - 0x000208 00:C1F8: A9 00     LDA #$00
C - - - - - 0x00020A 00:C1FA: 85 7C     STA ram_007C
C - - - - - 0x00020C 00:C1FC: A2 77     LDX #$77
bra_C1FE_loop:
; 0078-00EF
C - - - - - 0x00020E 00:C1FE: 95 78     STA ram_range_0078_00EF,X
C - - - - - 0x000210 00:C200: E0 01     CPX #$01
C - - - - - 0x000212 00:C202: 90 03     BCC bra_C207
; X = 01-77
; 0381-03F7
C - - - - - 0x000214 00:C204: 9D 80 03  STA ram_range_0381_03F7 - $01,X
bra_C207:
C - - - - - 0x000217 00:C207: CA        DEX
C - - - - - 0x000218 00:C208: 10 F4     BPL bra_C1FE_loop
C - - - - - 0x00021A 00:C20A: 20 A7 C5  JSR sub_C5A7_generate_map
C - - - - - 0x00021D 00:C20D: A9 01     LDA #$01
C - - - - - 0x00021F 00:C20F: 85 DA     STA ram_00DA_plr
C - - - - - 0x000221 00:C211: A9 04     LDA #$04
C - - - - - 0x000223 00:C213: 85 90     STA ram_0090
C - - - - - 0x000225 00:C215: 4A        LSR ; 02
C - - - - - 0x000226 00:C216: 85 DB     STA ram_00DA_plr + $01
loc_C218:
C D 2 - - - 0x000228 00:C218: 85 52     STA ram_buffer_offset
bra_C21A:
loc_C21A:
C D 2 - - - 0x00022A 00:C21A: E6 57     INC ram_0057_script
C - - - - - 0x00022C 00:C21C: 60        RTS
bra_C21D:
C - - - - - 0x00022D 00:C21D: C9 03     CMP #$03
C - - - - - 0x00022F 00:C21F: D0 1A     BNE bra_C23B
C - - - - - 0x000231 00:C221: 20 9D E7  JSR sub_E79D
C - - - - - 0x000234 00:C224: 20 C2 E4  JSR sub_E4C2
C - - - - - 0x000237 00:C227: 20 42 C5  JSR sub_C542_generate_map
C - - - - - 0x00023A 00:C22A: 20 D7 C4  JSR sub_C4D7
C - - - - - 0x00023D 00:C22D: 20 AB DF  JSR sub_DFAB
C - - - - - 0x000240 00:C230: 20 16 DD  JSR sub_DD16
C - - - - - 0x000243 00:C233: 20 1D DD  JSR sub_DD1D
C - - - - - 0x000246 00:C236: E6 57     INC ram_0057_script
C - - - - - 0x000248 00:C238: 4C 5E E0  JMP loc_E05E
bra_C23B:
C - - - - - 0x00024B 00:C23B: A9 00     LDA #$00
C - - - - - 0x00024D 00:C23D: A0 90     LDY #$90
bra_C23F_loop:
; 0060-00EF
C - - - - - 0x00024F 00:C23F: 99 5F 00  STA ram_0060_plr - $01,Y
C - - - - - 0x000252 00:C242: 88        DEY
C - - - - - 0x000253 00:C243: D0 FA     BNE bra_C23F_loop
C - - - - - 0x000255 00:C245: A9 04     LDA #$04
C - - - - - 0x000257 00:C247: 85 90     STA ram_0090
C - - - - - 0x000259 00:C249: A9 38     LDA #$38
C - - - - - 0x00025B 00:C24B: 85 64     STA ram_plr_pos_X
C - - - - - 0x00025D 00:C24D: A9 B8     LDA #$B8
C - - - - - 0x00025F 00:C24F: 85 65     STA ram_plr_pos_X + $01
C - - - - - 0x000261 00:C251: A2 01     LDX #$01
bra_C253_loop:
C - - - - - 0x000263 00:C253: A9 00     LDA #$00
C - - - - - 0x000265 00:C255: 95 5A     STA ram_005A_plr,X
C - - - - - 0x000267 00:C257: 95 6A     STA ram_plr_handler,X
C - - - - - 0x000269 00:C259: B5 20     LDA ram_plr_lives,X
C - - - - - 0x00026B 00:C25B: 30 17     BMI bra_C274
C - - - - - 0x00026D 00:C25D: A9 01     LDA #$01
C - - - - - 0x00026F 00:C25F: 8D 7A 03  STA ram_037A_useless
C - - - - - 0x000272 00:C262: 85 62     STA ram_0062_plr
C - - - - - 0x000274 00:C264: 95 5A     STA ram_005A_plr,X
C - - - - - 0x000276 00:C266: 95 6A     STA ram_plr_handler,X
C - - - - - 0x000278 00:C268: 4A        LSR ; 00
C - - - - - 0x000279 00:C269: 95 2F     STA ram_002F_plr,X
C - - - - - 0x00027B 00:C26B: 8D 3F 06  STA ram_0600_data + $3F
C - - - - - 0x00027E 00:C26E: 95 2D     STA ram_002D_plr,X
C - - - - - 0x000280 00:C270: A9 C0     LDA #$C0
C - - - - - 0x000282 00:C272: 95 66     STA ram_plr_pos_Y,X
bra_C274:
C - - - - - 0x000284 00:C274: CA        DEX
C - - - - - 0x000285 00:C275: 10 DC     BPL bra_C253_loop
C - - - - - 0x000287 00:C277: A2 02     LDX #$02
bra_C279_loop:
C - - - - - 0x000289 00:C279: 20 9E F1  JSR sub_F19E
C - - - - - 0x00028C 00:C27C: CA        DEX
C - - - - - 0x00028D 00:C27D: 10 FA     BPL bra_C279_loop
C - - - - - 0x00028F 00:C27F: A9 05     LDA #$05
C - - - - - 0x000291 00:C281: 85 8B     STA ram_008B
C - - - - - 0x000293 00:C283: A9 80     LDA #$80
C - - - - - 0x000295 00:C285: 85 3D     STA ram_spawn_timer_lo_bear
C - - - - - 0x000297 00:C287: A9 01     LDA #$01
C - - - - - 0x000299 00:C289: 85 2C     STA ram_spawn_timer_hi_bear
C - - - - - 0x00029B 00:C28B: A9 1A     LDA #$1A
C - - - - - 0x00029D 00:C28D: 85 4A     STA ram_004A_plr_timer
C - - - - - 0x00029F 00:C28F: A9 21     LDA #$21
C - - - - - 0x0002A1 00:C291: 85 4B     STA ram_004A_plr_timer + $01
C - - - - - 0x0002A3 00:C293: A9 22     LDA #$22
C - - - - - 0x0002A5 00:C295: 85 39     STA ram_0039_useless_timer
C - - - - - 0x0002A7 00:C297: 20 0C F8  JSR sub_F80C
C - - - - - 0x0002AA 00:C29A: A6 55     LDX ram_0055
C - - - - - 0x0002AC 00:C29C: E0 01     CPX #$01
C - - - - - 0x0002AE 00:C29E: D0 0B     BNE bra_C2AB
C - - - - - 0x0002B0 00:C2A0: A9 02     LDA #con_music_background
C - - - - - 0x0002B2 00:C2A2: 85 FB     STA ram_music_1
C - - - - - 0x0002B4 00:C2A4: 20 02 E0  JSR sub_E002
loc_C2A7:
C D 2 - - - 0x0002B7 00:C2A7: A9 01     LDA #$01
C - - - - - 0x0002B9 00:C2A9: 85 8D     STA ram_008D
bra_C2AB:
loc_C2AB:
C D 2 - - - 0x0002BB 00:C2AB: E6 57     INC ram_0057_script
ofs_000_C2AD_03:
C - - - - - 0x0002BD 00:C2AD: E6 51     INC ram_0051
C - - - - - 0x0002BF 00:C2AF: 60        RTS



ofs_000_C2B0_04:
C - - J - - 0x0002C0 00:C2B0: 20 91 C8  JSR sub_C891_write_00_to_2001
C - - - - - 0x0002C3 00:C2B3: A6 57     LDX ram_0057_script
C - - - - - 0x0002C5 00:C2B5: D0 0D     BNE bra_C2C4
C - - - - - 0x0002C7 00:C2B7: 20 6D C0  JSR sub_C06D
C - - - - - 0x0002CA 00:C2BA: A2 01     LDX #$01    ; score cointing screen bg data
C - - - - - 0x0002CC 00:C2BC: 20 FB C6  JSR sub_C6FB_copy_data_from_ppu
C - - - - - 0x0002CF 00:C2BF: A9 07     LDA #$07
bra_C2C1:
C - - - - - 0x0002D1 00:C2C1: 4C 18 C2  JMP loc_C218
bra_C2C4:
C - - - - - 0x0002D4 00:C2C4: CA        DEX
C - - - - - 0x0002D5 00:C2C5: D0 07     BNE bra_C2CE
C - - - - - 0x0002D7 00:C2C7: 20 24 F5  JSR sub_F524
C - - - - - 0x0002DA 00:C2CA: A9 05     LDA #$05
C - - - - - 0x0002DC 00:C2CC: D0 F3     BNE bra_C2C1    ; jmp
bra_C2CE:
C - - - - - 0x0002DE 00:C2CE: CA        DEX
C - - - - - 0x0002DF 00:C2CF: D0 08     BNE bra_C2D9
C - - - - - 0x0002E1 00:C2D1: A5 58     LDA ram_game_mode
C - - - - - 0x0002E3 00:C2D3: F0 04     BEQ bra_C2D9    ; if 1p
; if 2p
C - - - - - 0x0002E5 00:C2D5: A9 08     LDA #$08
C - - - - - 0x0002E7 00:C2D7: D0 E8     BNE bra_C2C1    ; jmp
bra_C2D9:
C - - - - - 0x0002E9 00:C2D9: 20 86 F5  JSR sub_F586
C - - - - - 0x0002EC 00:C2DC: A9 00     LDA #$00
C - - - - - 0x0002EE 00:C2DE: 85 84     STA ram_0084_plr
C - - - - - 0x0002F0 00:C2E0: A9 10     LDA #$10
C - - - - - 0x0002F2 00:C2E2: 85 37     STA ram_0037_plr_timer
C - - - - - 0x0002F4 00:C2E4: 85 38     STA ram_0037_plr_timer + $01
C - - - - - 0x0002F6 00:C2E6: A9 68     LDA #$68
C - - - - - 0x0002F8 00:C2E8: 85 34     STA ram_0034_timer
C - - - - - 0x0002FA 00:C2EA: 4C AB C2  JMP loc_C2AB



ofs_000_C2ED_02:
C - - J - - 0x0002FD 00:C2ED: A6 57     LDX ram_0057_script
C - - - - - 0x0002FF 00:C2EF: D0 33     BNE bra_C324
C - - - - - 0x000301 00:C2F1: 20 1D C8  JSR sub_C81D_hide_all_sprites
C - - - - - 0x000304 00:C2F4: A9 01     LDA #$01
C - - - - - 0x000306 00:C2F6: 85 27     STA ram_0027_flag
C - - - - - 0x000308 00:C2F8: 4A        LSR ; 00
C - - - - - 0x000309 00:C2F9: 8D FB 05  STA ram_05FB
C - - - - - 0x00030C 00:C2FC: A2 07     LDX #$07
; 07F8-07FF
bra_C2FE_loop:
C - - - - - 0x00030E 00:C2FE: 9D F8 07  STA ram_07F8,X ; 07F8 07F9 07FA 07FB 07FC 07FD 07FE 07FF 
C - - - - - 0x000311 00:C301: CA        DEX
C - - - - - 0x000312 00:C302: 10 FA     BPL bra_C2FE_loop
C - - - - - 0x000314 00:C304: A9 40     LDA #$40
C - - - - - 0x000316 00:C306: 8D FA 07  STA ram_07FA
C - - - - - 0x000319 00:C309: 8D FE 07  STA ram_07FE
C - - - - - 0x00031C 00:C30C: A6 58     LDX ram_game_mode
bra_C30E_loop:
C - - - - - 0x00031E 00:C30E: B5 6A     LDA ram_plr_handler,X
C - - - - - 0x000320 00:C310: C9 07     CMP #$07
C - - - - - 0x000322 00:C312: D0 06     BNE bra_C31A
- - - - - - 0x000324 00:C314: B5 5A     LDA ram_005A_plr,X
- - - - - - 0x000326 00:C316: F0 02     BEQ bra_C31A
- - - - - - 0x000328 00:C318: D6 20     DEC ram_plr_lives,X
bra_C31A:
C - - - - - 0x00032A 00:C31A: CA        DEX
C - - - - - 0x00032B 00:C31B: 10 F1     BPL bra_C30E_loop
C - - - - - 0x00032D 00:C31D: A9 06     LDA #$06
C - - - - - 0x00032F 00:C31F: 85 7A     STA ram_007A
C - - - - - 0x000331 00:C321: 4C 18 C2  JMP loc_C218
bra_C324:
C - - - - - 0x000334 00:C324: CA        DEX
C - - - - - 0x000335 00:C325: D0 22     BNE bra_C349
C - - - - - 0x000337 00:C327: C6 13     DEC ram_scroll_Y
C - - - - - 0x000339 00:C329: C6 13     DEC ram_scroll_Y
C - - - - - 0x00033B 00:C32B: A6 26     LDX ram_0026_flag
C - - - - - 0x00033D 00:C32D: E0 02     CPX #$02
C - - - - - 0x00033F 00:C32F: D0 07     BNE bra_C338
C - - - - - 0x000341 00:C331: A2 00     LDX #$00
C - - - - - 0x000343 00:C333: 20 8D C3  JSR sub_C38D
C - - - - - 0x000346 00:C336: A2 01     LDX #$01
bra_C338:
C - - - - - 0x000348 00:C338: 20 8D C3  JSR sub_C38D
C - - - - - 0x00034B 00:C33B: 20 BF EC  JSR sub_ECBF
C - - - - - 0x00034E 00:C33E: A5 13     LDA ram_scroll_Y
C - - - - - 0x000350 00:C340: C9 20     CMP #$20
C - - - - - 0x000352 00:C342: B0 48     BCS bra_C38C_RTS
C - - - - - 0x000354 00:C344: A9 03     LDA #$03
C - - - - - 0x000356 00:C346: 4C 18 C2  JMP loc_C218
bra_C349:
C - - - - - 0x000359 00:C349: CA        DEX
C - - - - - 0x00035A 00:C34A: D0 07     BNE bra_C353
C - - - - - 0x00035C 00:C34C: E6 57     INC ram_0057_script
C - - - - - 0x00035E 00:C34E: A2 0A     LDX #$0A
C - - - - - 0x000360 00:C350: 4C 91 F6  JMP loc_F691
bra_C353:
C - - - - - 0x000363 00:C353: A9 00     LDA #$00
C - - - - - 0x000365 00:C355: 85 6A     STA ram_plr_handler
C - - - - - 0x000367 00:C357: 85 6B     STA ram_plr_handler + $01
C - - - - - 0x000369 00:C359: 85 5A     STA ram_005A_plr
C - - - - - 0x00036B 00:C35B: 85 5B     STA ram_005A_plr + $01
C - - - - - 0x00036D 00:C35D: 8D 52 03  STA ram_0352_plr
C - - - - - 0x000370 00:C360: 8D 53 03  STA ram_0352_plr + $01
C - - - - - 0x000373 00:C363: A6 26     LDX ram_0026_flag
C - - - - - 0x000375 00:C365: E0 02     CPX #$02
C - - - - - 0x000377 00:C367: D0 07     BNE bra_C370
C - - - - - 0x000379 00:C369: A2 00     LDX #$00
C - - - - - 0x00037B 00:C36B: 20 99 C3  JSR sub_C399
C - - - - - 0x00037E 00:C36E: A2 01     LDX #$01
bra_C370:
C - - - - - 0x000380 00:C370: 20 99 C3  JSR sub_C399
C - - - - - 0x000383 00:C373: A9 15     LDA #$15
C - - - - - 0x000385 00:C375: 85 D7     STA ram_giant_bird_Y_pos
C - - - - - 0x000387 00:C377: A9 00     LDA #$00
C - - - - - 0x000389 00:C379: 85 D5     STA ram_00D4 + $01
C - - - - - 0x00038B 00:C37B: 85 D4     STA ram_00D4
C - - - - - 0x00038D 00:C37D: 20 0F F6  JSR sub_F60F
C - - - - - 0x000390 00:C380: 20 F2 F6  JSR sub_F6F2
C - - - - - 0x000393 00:C383: 20 62 E5  JSR sub_E562
C - - - - - 0x000396 00:C386: A9 04     LDA #con_music_logo
C - - - - - 0x000398 00:C388: 85 FB     STA ram_music_1
C - - - - - 0x00039A 00:C38A: E6 51     INC ram_0051
bra_C38C_RTS:
C - - - - - 0x00039C 00:C38C: 60        RTS



sub_C38D:
C - - - - - 0x00039D 00:C38D: F6 66     INC ram_plr_pos_Y,X
C - - - - - 0x00039F 00:C38F: F6 66     INC ram_plr_pos_Y,X
C - - - - - 0x0003A1 00:C391: A9 00     LDA #$00
C - - - - - 0x0003A3 00:C393: 95 70     STA ram_0070_plr,X
C - - - - - 0x0003A5 00:C395: 95 6C     STA ram_006C_plr,X
C - - - - - 0x0003A7 00:C397: F0 06     BEQ bra_C39F    ; jmp



sub_C399:
C - - - - - 0x0003A9 00:C399: A9 01     LDA #$01
C - - - - - 0x0003AB 00:C39B: 95 6A     STA ram_plr_handler,X
C - - - - - 0x0003AD 00:C39D: 95 5A     STA ram_005A_plr,X
bra_C39F:
C - - - - - 0x0003AF 00:C39F: 86 5F     STX ram_plr_index
C - - - - - 0x0003B1 00:C3A1: 4C FF CD  JMP loc_CDFF



ofs_000_C3A4_05:
C - - J - - 0x0003B4 00:C3A4: A5 57     LDA ram_0057_script
C - - - - - 0x0003B6 00:C3A6: C9 06     CMP #$06
C - - - - - 0x0003B8 00:C3A8: F0 22     BEQ bra_C3CC
C - - - - - 0x0003BA 00:C3AA: 20 D7 C1  JSR sub_C1D7
C - - - - - 0x0003BD 00:C3AD: A5 57     LDA ram_0057_script
C - - - - - 0x0003BF 00:C3AF: C9 05     CMP #$05
C - - - - - 0x0003C1 00:C3B1: D0 18     BNE bra_C3CB_RTS
C - - - - - 0x0003C3 00:C3B3: A5 53     LDA ram_0053_flag
C - - - - - 0x0003C5 00:C3B5: D0 0A     BNE bra_C3C1
C - - - - - 0x0003C7 00:C3B7: A9 00     LDA #$00
C - - - - - 0x0003C9 00:C3B9: A2 0E     LDX #$0E
; 07F0-07FE
bra_C3BB_loop:
C - - - - - 0x0003CB 00:C3BB: 9D F0 07  STA ram_07F0,X
C - - - - - 0x0003CE 00:C3BE: CA        DEX
C - - - - - 0x0003CF 00:C3BF: 10 FA     BPL bra_C3BB_loop
bra_C3C1:
C - - - - - 0x0003D1 00:C3C1: 20 1D C8  JSR sub_C81D_hide_all_sprites
C - - - - - 0x0003D4 00:C3C4: 20 0F F6  JSR sub_F60F
C - - - - - 0x0003D7 00:C3C7: E6 57     INC ram_0057_script
C - - - - - 0x0003D9 00:C3C9: C6 51     DEC ram_0051
bra_C3CB_RTS:
C - - - - - 0x0003DB 00:C3CB: 60        RTS
bra_C3CC:
C - - - - - 0x0003DC 00:C3CC: A2 0A     LDX #$0A
C - - - - - 0x0003DE 00:C3CE: 20 91 F6  JSR sub_F691
C - - - - - 0x0003E1 00:C3D1: A9 70     LDA #$70
C - - - - - 0x0003E3 00:C3D3: 85 D6     STA ram_giant_bird_X_pos
C - - - - - 0x0003E5 00:C3D5: 0A        ASL ; E0
C - - - - - 0x0003E6 00:C3D6: 85 D7     STA ram_giant_bird_Y_pos
C - - - - - 0x0003E8 00:C3D8: A9 00     LDA #$00
C - - - - - 0x0003EA 00:C3DA: 85 D4     STA ram_00D4
C - - - - - 0x0003EC 00:C3DC: 85 D5     STA ram_00D4 + $01
C - - - - - 0x0003EE 00:C3DE: A9 04     LDA #$04
C - - - - - 0x0003F0 00:C3E0: 85 1F     STA ram_001F_timer
C - - - - - 0x0003F2 00:C3E2: 4A        LSR ; 02
C - - - - - 0x0003F3 00:C3E3: 85 7A     STA ram_007A
C - - - - - 0x0003F5 00:C3E5: 4C A7 C2  JMP loc_C2A7



ofs_001_C3E8_05:
C - - J - - 0x0003F8 00:C3E8: A5 D7     LDA ram_giant_bird_Y_pos
C - - - - - 0x0003FA 00:C3EA: C9 1D     CMP #$1D
C - - - - - 0x0003FC 00:C3EC: 90 35     BCC bra_C423
C - - - - - 0x0003FE 00:C3EE: C9 80     CMP #$80
C - - - - - 0x000400 00:C3F0: D0 27     BNE bra_C419
C - - - - - 0x000402 00:C3F2: C6 13     DEC ram_scroll_Y
C - - - - - 0x000404 00:C3F4: C6 13     DEC ram_scroll_Y
C - - - - - 0x000406 00:C3F6: 20 EA D8  JSR sub_D8EA
C - - - - - 0x000409 00:C3F9: A5 13     LDA ram_scroll_Y
C - - - - - 0x00040B 00:C3FB: C9 02     CMP #$02
C - - - - - 0x00040D 00:C3FD: B0 0C     BCS bra_C40B
C - - - - - 0x00040F 00:C3FF: A6 7A     LDX ram_007A
C - - - - - 0x000411 00:C401: F0 16     BEQ bra_C419
C - - - - - 0x000413 00:C403: A9 03     LDA #$03
C - - - - - 0x000415 00:C405: CA        DEX
C - - - - - 0x000416 00:C406: F0 01     BEQ bra_C409
C - - - - - 0x000418 00:C408: 0A        ASL ; 06
bra_C409:
C - - - - - 0x000419 00:C409: 85 52     STA ram_buffer_offset
bra_C40B:
C - - - - - 0x00041B 00:C40B: C6 1F     DEC ram_001F_timer
C - - - - - 0x00041D 00:C40D: D0 07     BNE bra_C416
C - - - - - 0x00041F 00:C40F: A9 04     LDA #$04
C - - - - - 0x000421 00:C411: 85 1F     STA ram_001F_timer
C - - - - - 0x000423 00:C413: 20 EC F2  JSR sub_F2EC
bra_C416:
C - - - - - 0x000426 00:C416: 4C 1D C4  JMP loc_C41D
bra_C419:
C - - - - - 0x000429 00:C419: C6 D7     DEC ram_giant_bird_Y_pos
C - - - - - 0x00042B 00:C41B: C6 D7     DEC ram_giant_bird_Y_pos
loc_C41D:
C D 2 - - - 0x00042D 00:C41D: 20 37 F7  JSR sub_F737
C - - - - - 0x000430 00:C420: 4C 7E F6  JMP loc_F67E
bra_C423:
C - - - - - 0x000433 00:C423: A5 46     LDA ram_0046_timer
C - - - - - 0x000435 00:C425: D0 04     BNE bra_C42B
C - - - - - 0x000437 00:C427: A9 10     LDA #$10
C - - - - - 0x000439 00:C429: 85 46     STA ram_0046_timer
bra_C42B:
C - - - - - 0x00043B 00:C42B: C9 01     CMP #$01
C - - - - - 0x00043D 00:C42D: D0 07     BNE bra_C436_RTS
C - - - - - 0x00043F 00:C42F: A9 01     LDA #$01
C - - - - - 0x000441 00:C431: 20 F5 D4  JSR sub_D4F5
C - - - - - 0x000444 00:C434: C6 54     DEC ram_0054_timer
bra_C436_RTS:
C - - - - - 0x000446 00:C436: 60        RTS



sub_C437:
C - - - - - 0x000447 00:C437: A5 34     LDA ram_0034_timer
C - - - - - 0x000449 00:C439: D0 FB     BNE bra_C436_RTS
C - - - - - 0x00044B 00:C43B: 20 26 C7  JSR sub_C726_jump_to_pointers_after_jsr___0055
- D 2 - I - 0x00044E 00:C43E: 66 C1     .word ofs_000_C166_00
- D 2 - I - 0x000450 00:C440: D7 C1     .word ofs_000_C1D7_01
- D 2 - I - 0x000452 00:C442: ED C2     .word ofs_000_C2ED_02
- D 2 - I - 0x000454 00:C444: AD C2     .word ofs_000_C2AD_03
- D 2 - I - 0x000456 00:C446: B0 C2     .word ofs_000_C2B0_04
- D 2 - I - 0x000458 00:C448: A4 C3     .word ofs_000_C3A4_05



sub_C44A:
C - - - - - 0x00045A 00:C44A: A9 00     LDA #$00
C - - - - - 0x00045C 00:C44C: 85 57     STA ram_0057_script
C - - - - - 0x00045E 00:C44E: 20 26 C7  JSR sub_C726_jump_to_pointers_after_jsr___0055
- D 2 - I - 0x000461 00:C451: 60 C4     .word ofs_001_C460_00
- D 2 - I - 0x000463 00:C453: FB CB     .word ofs_001_CBFB_01
- D 2 - I - 0x000465 00:C455: 9E CC     .word ofs_001_CC9E_02
- D 2 - I - 0x000467 00:C457: 67 CC     .word ofs_001_CC67_03
- D 2 - I - 0x000469 00:C459: 6C CC     .word ofs_001_CC6C_04
- D 2 - I - 0x00046B 00:C45B: E8 C3     .word ofs_001_C3E8_05



tbl_C45D_game_mode_cursor:
- D 2 - - - 0x00046D 00:C45D: 6F        .byte $6F   ; spr_T
- D 2 - - - 0x00046E 00:C45E: 00        .byte $00   ; spr_A
- D 2 - - - 0x00046F 00:C45F: 38        .byte $38   ; spr_X



ofs_001_C460_00:
C - - J - - 0x000470 00:C460: A5 59     LDA ram_mountain_current
C - - - - - 0x000472 00:C462: 29 1F     AND #$1F
C - - - - - 0x000474 00:C464: 85 59     STA ram_mountain_current
C - - - - - 0x000476 00:C466: 20 3E F5  JSR sub_F53E
C - - - - - 0x000479 00:C469: A5 4E     LDA ram_spawn_timer_lo_bird
C - - - - - 0x00047B 00:C46B: D0 17     BNE bra_C484_not_demo_yet
; A = 00
C - - - - - 0x00047D 00:C46D: 8D 15 40  STA $4015
C - - - - - 0x000480 00:C470: 85 58     STA ram_game_mode
C - - - - - 0x000482 00:C472: A5 59     LDA ram_mountain_current
C - - - - - 0x000484 00:C474: 8D FE 03  STA ram_03FE
C - - - - - 0x000487 00:C477: AD FD 03  LDA ram_03FD
C - - - - - 0x00048A 00:C47A: 29 03     AND #$03
C - - - - - 0x00048C 00:C47C: 85 59     STA ram_mountain_current
C - - - - - 0x00048E 00:C47E: A9 01     LDA #$01
C - - - - - 0x000490 00:C480: 85 53     STA ram_0053_flag
C - - - - - 0x000492 00:C482: D0 20     BNE bra_C4A4    ; jmp
bra_C484_not_demo_yet:
C - - - - - 0x000494 00:C484: A5 4D     LDA ram_004D_timer
C - - - - - 0x000496 00:C486: C9 01     CMP #$01
C - - - - - 0x000498 00:C488: D0 06     BNE bra_C490_logo_music_still_plays
; A = 01
C - - - - - 0x00049A 00:C48A: 4A        LSR ; 00
C - - - - - 0x00049B 00:C48B: 85 4D     STA ram_004D_timer
C - - - - - 0x00049D 00:C48D: 6A        ROR ; con_music_off
C - - - - - 0x00049E 00:C48E: 85 FB     STA ram_music_1
bra_C490_logo_music_still_plays:
C - - - - - 0x0004A0 00:C490: A5 15     LDA ram_btn_press
C - - - - - 0x0004A2 00:C492: 29 20     AND #con_btn_Select
C - - - - - 0x0004A4 00:C494: F0 08     BEQ bra_C49E
C - - - - - 0x0004A6 00:C496: 20 BA C4  JSR sub_C4BA_toggle_game_mode_and_update_cursor
C - - - - - 0x0004A9 00:C499: A9 80     LDA #$80
C - - - - - 0x0004AB 00:C49B: 85 4E     STA ram_spawn_timer_lo_bird
C - - - - - 0x0004AD 00:C49D: 60        RTS
bra_C49E:
C - - - - - 0x0004AE 00:C49E: A5 15     LDA ram_btn_press
C - - - - - 0x0004B0 00:C4A0: 29 10     AND #con_btn_Start
C - - - - - 0x0004B2 00:C4A2: F0 15     BEQ bra_C4B9_RTS
bra_C4A4:
C - - - - - 0x0004B4 00:C4A4: A9 05     LDA #$05
C - - - - - 0x0004B6 00:C4A6: 20 F5 D4  JSR sub_D4F5
C - - - - - 0x0004B9 00:C4A9: A9 01     LDA #con_music_mountain_preview
C - - - - - 0x0004BB 00:C4AB: 85 FB     STA ram_music_1
C - - - - - 0x0004BD 00:C4AD: A9 03     LDA #$03
C - - - - - 0x0004BF 00:C4AF: 85 20     STA ram_plr_lives
C - - - - - 0x0004C1 00:C4B1: A4 58     LDY ram_game_mode
C - - - - - 0x0004C3 00:C4B3: D0 02     BNE bra_C4B7    ; if 2p
; if 1p, disable lives for 2p
C - - - - - 0x0004C5 00:C4B5: A9 FC     LDA #$FC
bra_C4B7:
C - - - - - 0x0004C7 00:C4B7: 85 21     STA ram_plr_lives + $01
bra_C4B9_RTS:
C - - - - - 0x0004C9 00:C4B9: 60        RTS



sub_C4BA_toggle_game_mode_and_update_cursor:
C - - - - - 0x0004CA 00:C4BA: A5 58     LDA ram_game_mode
C - - - - - 0x0004CC 00:C4BC: 49 01     EOR #$01
C - - - - - 0x0004CE 00:C4BE: 85 58     STA ram_game_mode
sub_C4C0_update_game_mode_cursor:
C - - - - - 0x0004D0 00:C4C0: A9 7F     LDA #$7F
C - - - - - 0x0004D2 00:C4C2: A4 58     LDY ram_game_mode
C - - - - - 0x0004D4 00:C4C4: F0 02     BEQ bra_C4C8    ; if 1p
; if 2p
C - - - - - 0x0004D6 00:C4C6: A9 8F     LDA #$8F
bra_C4C8:
C - - - - - 0x0004D8 00:C4C8: 8D 00 02  STA ram_spr_Y
C - - - - - 0x0004DB 00:C4CB: A2 02     LDX #$02
bra_C4CD_loop:
C - - - - - 0x0004DD 00:C4CD: BD 5D C4  LDA tbl_C45D_game_mode_cursor,X
C - - - - - 0x0004E0 00:C4D0: 9D 01 02  STA ram_oam + $01,X
C - - - - - 0x0004E3 00:C4D3: CA        DEX
C - - - - - 0x0004E4 00:C4D4: 10 F7     BPL bra_C4CD_loop
C - - - - - 0x0004E6 00:C4D6: 60        RTS



sub_C4D7:
C - - - - - 0x0004E7 00:C4D7: A0 17     LDY #$17
bra_C4D9_loop:
C - - - - - 0x0004E9 00:C4D9: A9 00     LDA #$00
C - - - - - 0x0004EB 00:C4DB: 99 C0 04  STA ram_0400_data + $C0,Y
C - - - - - 0x0004EE 00:C4DE: A9 FF     LDA #$FF
C - - - - - 0x0004F0 00:C4E0: 99 C0 05  STA ram_0500_data + $C0,Y
C - - - - - 0x0004F3 00:C4E3: 88        DEY
C - - - - - 0x0004F4 00:C4E4: 10 F3     BPL bra_C4D9_loop
C - - - - - 0x0004F6 00:C4E6: A0 01     LDY #$01
bra_C4E8_loop:
C - - - - - 0x0004F8 00:C4E8: 99 C3 04  STA ram_0400_data + $C3,Y
C - - - - - 0x0004FB 00:C4EB: 99 CB 04  STA ram_0400_data + $CB,Y
C - - - - - 0x0004FE 00:C4EE: 99 D3 04  STA ram_0400_data + $D3,Y
C - - - - - 0x000501 00:C4F1: 88        DEY
C - - - - - 0x000502 00:C4F2: 10 F4     BPL bra_C4E8_loop
C - - - - - 0x000504 00:C4F4: A2 00     LDX #$00
bra_C4F6_loop:
C - - - - - 0x000506 00:C4F6: A9 00     LDA #$00
C - - - - - 0x000508 00:C4F8: 9D 30 04  STA ram_0400_data + $30,X ; 0430 0448 0460 0478 0490 04A8 
C - - - - - 0x00050B 00:C4FB: 9D 47 04  STA ram_0400_data + $47,X ; 0447 045F 0477 048F 04A7 04BF 
C - - - - - 0x00050E 00:C4FE: E0 48     CPX #$48
C - - - - - 0x000510 00:C500: 90 06     BCC bra_C508
C - - - - - 0x000512 00:C502: 9D 31 04  STA ram_0400_data + $31,X ; 0479 0491 04A9 
C - - - - - 0x000515 00:C505: 9D 46 04  STA ram_0400_data + $46,X ; 048E 04A6 04BE 
bra_C508:
C - - - - - 0x000518 00:C508: 8A        TXA
C - - - - - 0x000519 00:C509: 18        CLC
C - - - - - 0x00051A 00:C50A: 69 18     ADC #$18
C - - - - - 0x00051C 00:C50C: AA        TAX
C - - - - - 0x00051D 00:C50D: E0 90     CPX #$90
C - - - - - 0x00051F 00:C50F: 90 E5     BCC bra_C4F6_loop
C - - - - - 0x000521 00:C511: 60        RTS



tbl_C512:
- D 2 - - - 0x000522 00:C512: 00        .byte $00, $00, $00   ; 00 
- D 2 - - - 0x000525 00:C515: FF        .byte $FF, $FF, $FF   ; 01 
- D 2 - - - 0x000528 00:C518: F3        .byte $F3, $E7, $CF   ; 02 
- D 2 - - - 0x00052B 00:C51B: 33        .byte $33, $33, $33   ; 03 
- D 2 - - - 0x00052E 00:C51E: 0F        .byte $0F, $0F, $0F   ; 04 
- D 2 - - - 0x000531 00:C521: 33        .byte $33, $00, $CC   ; 05 
- D 2 - - - 0x000534 00:C524: FF        .byte $FF, $0F, $FF   ; 06 
- D 2 - - - 0x000537 00:C527: C3        .byte $C3, $FC, $3F   ; 07 
- D 2 - - - 0x00053A 00:C52A: F0        .byte $F0, $F0, $F0   ; 08 
- D 2 - - - 0x00053D 00:C52D: F0        .byte $F0, $00, $0F   ; 09 
- D 2 - - - 0x000540 00:C530: CF        .byte $CF, $CF, $3F   ; 0A 
- D 2 - - - 0x000543 00:C533: F0        .byte $F0, $00, $FF   ; 0B 
- D 2 - - - 0x000546 00:C536: CC        .byte $CC, $CC, $CC   ; 0C 
- D 2 - - - 0x000549 00:C539: F3        .byte $F3, $33, $00   ; 0D 
- D 2 - - - 0x00054C 00:C53C: FC        .byte $FC, $FC, $FF   ; 0E 
- D 2 - - - 0x00054F 00:C53F: FC        .byte $FC, $00, $3F   ; 0F 



sub_C542_generate_map:
C - - - - - 0x000552 00:C542: 20 2B E7  JSR sub_E72B
C - - - - - 0x000555 00:C545: A9 BF     LDA #$BF    ; max address offset?
C - - - - - 0x000557 00:C547: 85 0C     STA ram_000C
C - - - - - 0x000559 00:C549: A9 00     LDA #< ram_0400_data
C - - - - - 0x00055B 00:C54B: 85 0D     STA ram_000D
C - - - - - 0x00055D 00:C54D: A9 04     LDA #> ram_0400_data
C - - - - - 0x00055F 00:C54F: 85 0E     STA ram_000E
C - - - - - 0x000561 00:C551: A2 07     LDX #$07
bra_C553_loop:
C - - - - - 0x000563 00:C553: B5 04     LDA ram_0004,X
C - - - - - 0x000565 00:C555: 0A        ASL
C - - - - - 0x000566 00:C556: 18        CLC
C - - - - - 0x000567 00:C557: 75 04     ADC ram_0004,X
C - - - - - 0x000569 00:C559: A8        TAY
C - - - - - 0x00056A 00:C55A: B9 12 C5  LDA tbl_C512,Y
C - - - - - 0x00056D 00:C55D: 85 00     STA ram_0000
C - - - - - 0x00056F 00:C55F: B9 13 C5  LDA tbl_C512 + $01,Y
C - - - - - 0x000572 00:C562: 85 01     STA ram_0001
C - - - - - 0x000574 00:C564: B9 14 C5  LDA tbl_C512 + $02,Y
C - - - - - 0x000577 00:C567: 85 02     STA ram_0002
C - - - - - 0x000579 00:C569: A4 0C     LDY ram_000C
C - - - - - 0x00057B 00:C56B: A9 01     LDA #$01
C - - - - - 0x00057D 00:C56D: 85 1F     STA ram_001F_timer
C - - - - - 0x00057F 00:C56F: 20 D3 C5  JSR sub_C5D3_generate_map
C - - - - - 0x000582 00:C572: 84 0C     STY ram_000C
C - - - - - 0x000584 00:C574: CA        DEX
C - - - - - 0x000585 00:C575: 10 DC     BPL bra_C553_loop
C - - - - - 0x000587 00:C577: A2 C0     LDX #$C0
bra_C579_loop:
C - - - - - 0x000589 00:C579: A9 00     LDA #$00
C - - - - - 0x00058B 00:C57B: 0E 85 07  ASL ram_0785
C - - - - - 0x00058E 00:C57E: B0 02     BCS bra_C582
C - - - - - 0x000590 00:C580: A9 01     LDA #$01
bra_C582:
C - - - - - 0x000592 00:C582: 85 00     STA ram_0000
C - - - - - 0x000594 00:C584: A0 18     LDY #$18
bra_C586_loop:
; 0400-04BF
C - - - - - 0x000596 00:C586: BD FF 03  LDA ram_0400_data - $01,X
C - - - - - 0x000599 00:C589: 30 07     BMI bra_C592
C - - - - - 0x00059B 00:C58B: A5 00     LDA ram_0000
C - - - - - 0x00059D 00:C58D: 9D FF 03  STA ram_0400_data - $01,X
C - - - - - 0x0005A0 00:C590: D0 05     BNE bra_C597
bra_C592:
C - - - - - 0x0005A2 00:C592: A9 FF     LDA #$FF
; 0518-05BF
C - - - - - 0x0005A4 00:C594: 9D FF 04  STA ram_0500_data - $01,X
bra_C597:
C - - - - - 0x0005A7 00:C597: CA        DEX
C - - - - - 0x0005A8 00:C598: F0 38     BEQ bra_C5D2_RTS
C - - - - - 0x0005AA 00:C59A: 88        DEY
C - - - - - 0x0005AB 00:C59B: D0 E9     BNE bra_C586_loop
C - - - - - 0x0005AD 00:C59D: F0 DA     BEQ bra_C579_loop   ; jmp



tbl_C59F:
- D 2 - - - 0x0005AF 00:C59F: F0        .byte $F0   ; 00 
- D 2 - - - 0x0005B0 00:C5A0: 0F        .byte $0F   ; 01 
- D 2 - - - 0x0005B1 00:C5A1: E7        .byte $E7   ; 02 
- D 2 - - - 0x0005B2 00:C5A2: 3C        .byte $3C   ; 03 
- D 2 - - - 0x0005B3 00:C5A3: FC        .byte $FC   ; 04 
- D 2 - - - 0x0005B4 00:C5A4: 3F        .byte $3F   ; 05 
- D 2 - - - 0x0005B5 00:C5A5: CF        .byte $CF   ; 06 
- D 2 - - - 0x0005B6 00:C5A6: E3        .byte $E3   ; 07 



sub_C5A7_generate_map:
C - - - - - 0x0005B7 00:C5A7: A0 D7     LDY #$D7
bra_C5A9_loop:
C - - - - - 0x0005B9 00:C5A9: 98        TYA
C - - - - - 0x0005BA 00:C5AA: 48        PHA
C - - - - - 0x0005BB 00:C5AB: 20 CE CA  JSR sub_CACE_generate_random
C - - - - - 0x0005BE 00:C5AE: A2 02     LDX #$02
bra_C5B0_loop:
C - - - - - 0x0005C0 00:C5B0: B5 18     LDA ram_random,X
C - - - - - 0x0005C2 00:C5B2: 29 07     AND #$07
C - - - - - 0x0005C4 00:C5B4: A8        TAY
C - - - - - 0x0005C5 00:C5B5: B9 9F C5  LDA tbl_C59F,Y
C - - - - - 0x0005C8 00:C5B8: 95 00     STA ram_0000,X
C - - - - - 0x0005CA 00:C5BA: CA        DEX
C - - - - - 0x0005CB 00:C5BB: 10 F3     BPL bra_C5B0_loop
C - - - - - 0x0005CD 00:C5BD: 68        PLA
C - - - - - 0x0005CE 00:C5BE: A8        TAY
C - - - - - 0x0005CF 00:C5BF: A9 00     LDA #< ram_0500_data
C - - - - - 0x0005D1 00:C5C1: 85 0D     STA ram_000D
C - - - - - 0x0005D3 00:C5C3: A9 05     LDA #> ram_0500_data
C - - - - - 0x0005D5 00:C5C5: 85 0E     STA ram_000E
C - - - - - 0x0005D7 00:C5C7: A9 00     LDA #$00
C - - - - - 0x0005D9 00:C5C9: 85 1F     STA ram_001F_timer
C - - - - - 0x0005DB 00:C5CB: 20 D3 C5  JSR sub_C5D3_generate_map
C - - - - - 0x0005DE 00:C5CE: C0 FF     CPY #$FF
C - - - - - 0x0005E0 00:C5D0: D0 D7     BNE bra_C5A9_loop
bra_C5D2_RTS:
C - - - - - 0x0005E2 00:C5D2: 60        RTS



sub_C5D3_generate_map:
C - - - - - 0x0005E3 00:C5D3: A9 00     LDA #$00
C - - - - - 0x0005E5 00:C5D5: 85 0F     STA ram_000F
C - - - - - 0x0005E7 00:C5D7: A9 18     LDA #$18
C - - - - - 0x0005E9 00:C5D9: 85 03     STA ram_0003    ; loop counter
bra_C5DB_loop:
C - - - - - 0x0005EB 00:C5DB: 46 00     LSR ram_0000
C - - - - - 0x0005ED 00:C5DD: 66 01     ROR ram_0001
C - - - - - 0x0005EF 00:C5DF: 66 02     ROR ram_0002
C - - - - - 0x0005F1 00:C5E1: 08        PHP
C - - - - - 0x0005F2 00:C5E2: A5 1F     LDA ram_001F_timer
C - - - - - 0x0005F4 00:C5E4: D0 07     BNE bra_C5ED
C - - - - - 0x0005F6 00:C5E6: A5 0F     LDA ram_000F
C - - - - - 0x0005F8 00:C5E8: F0 05     BEQ bra_C5EF
C - - - - - 0x0005FA 00:C5EA: A9 01     LDA #$01
C - - - - - 0x0005FC 00:C5EC: 2C        .byte $2C   ; BIT opcode
bra_C5ED:
C - - - - - 0x0005FD 00:C5ED: A9 00     LDA #$00
bra_C5EF:
C - - - - - 0x0005FF 00:C5EF: 2A        ROL
C - - - - - 0x000600 00:C5F0: F0 0A     BEQ bra_C5FC
C - - - - - 0x000602 00:C5F2: C9 03     CMP #$03
C - - - - - 0x000604 00:C5F4: B0 03     BCS bra_C5F9
C - - - - - 0x000606 00:C5F6: A9 02     LDA #$02
C - - - - - 0x000608 00:C5F8: 2C        .byte $2C   ; BIT opcode
bra_C5F9:
C - - - - - 0x000609 00:C5F9: A9 01     LDA #$01
C - - - - - 0x00060B 00:C5FB: 2C        .byte $2C   ; BIT opcode
bra_C5FC:
C - - - - - 0x00060C 00:C5FC: A9 FF     LDA #$FF
; 0400-04BF, 0500-05D7
C - - - - - 0x00060E 00:C5FE: 91 0D     STA (ram_000D),Y
C - - - - - 0x000610 00:C600: 28        PLP
C - - - - - 0x000611 00:C601: B0 05     BCS bra_C608
C - - - - - 0x000613 00:C603: A9 00     LDA #$00
C - - - - - 0x000615 00:C605: 85 0F     STA ram_000F
C - - - - - 0x000617 00:C607: 2C        .byte $2C   ; BIT opcode
bra_C608:
C - - - - - 0x000618 00:C608: E6 0F     INC ram_000F
C - - - - - 0x00061A 00:C60A: 88        DEY
C - - - - - 0x00061B 00:C60B: C6 03     DEC ram_0003    ; loop counter
C - - - - - 0x00061D 00:C60D: D0 CC     BNE bra_C5DB_loop
bra_C60F_RTS:
C D 2 - - - 0x00061F 00:C60F: 60        RTS



tbl_C610:
- D 2 - - - 0x000620 00:C610: 11        .byte $11   ; 00 
- D 2 - - - 0x000621 00:C611: 22        .byte $22   ; 01 
- D 2 - - - 0x000622 00:C612: 11        .byte $11   ; 02 
- D 2 - - - 0x000623 00:C613: 38        .byte $38   ; 03 
- D 2 - - - 0x000624 00:C614: 29        .byte $29   ; 04 
- D 2 - - - 0x000625 00:C615: 28        .byte $28   ; 05 
- D 2 - - - 0x000626 00:C616: 19        .byte $19   ; 06 
- D 2 - - - 0x000627 00:C617: 21        .byte $21   ; 07 
- D 2 - - - 0x000628 00:C618: 1A        .byte $1A   ; 08 
- D 2 - - - 0x000629 00:C619: 28        .byte $28   ; 09 
- D 2 - - - 0x00062A 00:C61A: 2A        .byte $2A   ; 0A 
- D 2 - - - 0x00062B 00:C61B: 12        .byte $12   ; 0B 
- D 2 - - - 0x00062C 00:C61C: 2A        .byte $2A   ; 0C 
- D 2 - - - 0x00062D 00:C61D: 22        .byte $22   ; 0D 
- D 2 - - - 0x00062E 00:C61E: 14        .byte $14   ; 0E 
- D 2 - - - 0x00062F 00:C61F: 12        .byte $12   ; 0F 



sub_C620:
C - - - - - 0x000630 00:C620: A5 14     LDA ram_btn_hold
C - - - - - 0x000632 00:C622: 29 30     AND #con_btns_SS
C - - - - - 0x000634 00:C624: F0 14     BEQ bra_C63A
bra_C626:
C - - - - - 0x000636 00:C626: AD FE 03  LDA ram_03FE
C - - - - - 0x000639 00:C629: 85 59     STA ram_mountain_current
C - - - - - 0x00063B 00:C62B: A9 0F     LDA #$0F
C - - - - - 0x00063D 00:C62D: 8D 15 40  STA $4015
C - - - - - 0x000640 00:C630: A9 00     LDA #$00
C - - - - - 0x000642 00:C632: 85 53     STA ram_0053_flag
C - - - - - 0x000644 00:C634: EE FD 03  INC ram_03FD
C - - - - - 0x000647 00:C637: 4C F5 D4  JMP loc_D4F5
bra_C63A:
C - - - - - 0x00064A 00:C63A: A5 55     LDA ram_0055
C - - - - - 0x00064C 00:C63C: C9 01     CMP #$01
C - - - - - 0x00064E 00:C63E: D0 CF     BNE bra_C60F_RTS
C - - - - - 0x000650 00:C640: A5 51     LDA ram_0051
C - - - - - 0x000652 00:C642: F0 CB     BEQ bra_C60F_RTS
C - - - - - 0x000654 00:C644: A5 66     LDA ram_plr_pos_Y
C - - - - - 0x000656 00:C646: C9 D4     CMP #$D4
C - - - - - 0x000658 00:C648: B0 DC     BCS bra_C626
C - - - - - 0x00065A 00:C64A: AD FA 03  LDA ram_03FA
C - - - - - 0x00065D 00:C64D: 29 0F     AND #$0F
C - - - - - 0x00065F 00:C64F: AA        TAX
C - - - - - 0x000660 00:C650: BD 10 C6  LDA tbl_C610,X
C - - - - - 0x000663 00:C653: BC 0F C6  LDY tbl_C610 - $01,X
C - - - - - 0x000666 00:C656: AE FB 03  LDX ram_03FB
C - - - - - 0x000669 00:C659: D0 09     BNE bra_C664
C - - - - - 0x00066B 00:C65B: A8        TAY
C - - - - - 0x00066C 00:C65C: 29 F0     AND #$F0
C - - - - - 0x00066E 00:C65E: 8D FB 03  STA ram_03FB
C - - - - - 0x000671 00:C661: EE FA 03  INC ram_03FA
bra_C664:
C - - - - - 0x000674 00:C664: 98        TYA
C - - - - - 0x000675 00:C665: 29 0F     AND #con_btns_Dpad
C - - - - - 0x000677 00:C667: 85 14     STA ram_btn_hold
C - - - - - 0x000679 00:C669: 98        TYA
C - - - - - 0x00067A 00:C66A: 0A        ASL
C - - - - - 0x00067B 00:C66B: 0A        ASL
C - - - - - 0x00067C 00:C66C: 0A        ASL
C - - - - - 0x00067D 00:C66D: 0A        ASL
C - - - - - 0x00067E 00:C66E: 05 14     ORA ram_btn_hold
C - - - - - 0x000680 00:C670: 29 C3     AND #con_btns_AB + con_btns_LR
C - - - - - 0x000682 00:C672: 85 14     STA ram_btn_hold
C - - - - - 0x000684 00:C674: 85 15     STA ram_btn_press
C - - - - - 0x000686 00:C676: A5 50     LDA ram_frm_cnt
C - - - - - 0x000688 00:C678: 29 01     AND #$01
C - - - - - 0x00068A 00:C67A: D0 03     BNE bra_C67F_RTS
C - - - - - 0x00068C 00:C67C: CE FB 03  DEC ram_03FB
bra_C67F_RTS:
C - - - - - 0x00068F 00:C67F: 60        RTS



tbl_C680:
; 00 
- D 2 - - - 0x000690 00:C680: 22 CD     .dbyt $22CD ; 
- D 2 - - - 0x000692 00:C682: 05        .byte $05   ; 
- - - - - - 0x000693 00:C683: 00        .byte $00   ; placeholder
; 01 
- D 2 - - - 0x000694 00:C684: 23 06     .dbyt $2306 ; 
- D 2 - - - 0x000696 00:C686: 05        .byte $05   ; 
- - - - - - 0x000697 00:C687: 00        .byte $00   ; placeholder
; 02 
- D 2 - - - 0x000698 00:C688: 23 14     .dbyt $2314 ; 
- D 2 - - - 0x00069A 00:C68A: 05        .byte $05   ; 
- - - - - - 0x00069B 00:C68B: 00        .byte $00   ; placeholder
; 03 
- D 2 - - - 0x00069C 00:C68C: 28 C3     .dbyt $28C3 ; 
- D 2 - - - 0x00069E 00:C68E: 04        .byte $04   ; 
- - - - - - 0x00069F 00:C68F: 00        .byte $00   ; placeholder
; 04 
- D 2 - - - 0x0006A0 00:C690: 20 C3     .dbyt $20C3 ; 
- D 2 - - - 0x0006A2 00:C692: 04        .byte $04   ; 
- - - - - - 0x0006A3 00:C693: 00        .byte $00   ; placeholder



; for _off000_
con_00                                  = $00 ; horisontally write ?? tiles
con_40                                  = $40 ; horisontally write a tile ?? times
con_80                                  = $80 ; vertically write ?? tiles
con_C0                                  = $C0 ; vertically write a tile ?? times



_off000_C694_04:
- D 2 - I - 0x0006A4 00:C694: 3F 00     .dbyt $3F00 ; 
- D 2 - I - 0x0006A6 00:C696: 20        .byte con_00 + $20   ; 
- D 2 - I - 0x0006A7 00:C697: 0F        .byte $0F, $30, $21, $01   ; 
- D 2 - I - 0x0006AB 00:C69B: 0F        .byte $0F, $26, $2A, $30   ; 
- D 2 - I - 0x0006AF 00:C69F: 0F        .byte $0F, $38, $29, $0A   ; 
- D 2 - I - 0x0006B3 00:C6A3: 0F        .byte $0F, $27, $17, $07   ; 

- D 2 - I - 0x0006B7 00:C6A7: 0F        .byte $0F, $30, $11, $26   ; 
- D 2 - I - 0x0006BB 00:C6AB: 0F        .byte $0F, $30, $15, $26   ; 
- D 2 - I - 0x0006BF 00:C6AF: 0F        .byte $0F, $30, $21, $12   ; 
- D 2 - I - 0x0006C3 00:C6B3: 0F        .byte $0F, $38, $29, $0A   ; 

- D 2 - I - 0x0006C7 00:C6B7: 00        .byte $00   ; end token



_off000_C6B8_02:
- D 2 - I - 0x0006C8 00:C6B8: 23 E8     .dbyt $23E8 ; 
- D 2 - I - 0x0006CA 00:C6BA: 58        .byte con_40 + $18   ; 
- D 2 - I - 0x0006CB 00:C6BB: FF        .byte $FF   ; 

- D 2 - I - 0x0006CC 00:C6BC: 23 E0     .dbyt $23E0 ; 
- D 2 - I - 0x0006CE 00:C6BE: 02        .byte con_00 + $02   ; 
- D 2 - I - 0x0006CF 00:C6BF: F0        .byte $F0, $30   ; 

- D 2 - I - 0x0006D1 00:C6C1: 23 E6     .dbyt $23E6 ; 
- D 2 - I - 0x0006D3 00:C6C3: 02        .byte con_00 + $02   ; 
- D 2 - I - 0x0006D4 00:C6C4: C0        .byte $C0, $F0   ; 

- D 2 - I - 0x0006D6 00:C6C6: 2B C0     .dbyt $2BC0 ; 
- D 2 - I - 0x0006D8 00:C6C8: 48        .byte con_40 + $08   ; 
- D 2 - I - 0x0006D9 00:C6C9: FF        .byte $FF   ; 

- D 2 - I - 0x0006DA 00:C6CA: 2B C8     .dbyt $2BC8 ; 
- D 2 - I - 0x0006DC 00:C6CC: 48        .byte con_40 + $08   ; 
- D 2 - I - 0x0006DD 00:C6CD: AF        .byte $AF   ; 

- D 2 - I - 0x0006DE 00:C6CE: 2B D0     .dbyt $2BD0 ; 
- D 2 - I - 0x0006E0 00:C6D0: 50        .byte con_40 + $10   ; 
- D 2 - I - 0x0006E1 00:C6D1: AA        .byte $AA   ; 

- D 2 - I - 0x0006E2 00:C6D2: 2B E0     .dbyt $2BE0 ; 
- D 2 - I - 0x0006E4 00:C6D4: 48        .byte con_40 + $08   ; 
- D 2 - I - 0x0006E5 00:C6D5: 0A        .byte $0A   ; 

- D 2 - I - 0x0006E6 00:C6D6: 2B C9     .dbyt $2BC9 ; 
- D 2 - I - 0x0006E8 00:C6D8: 46        .byte con_40 + $06   ; 
- D 2 - I - 0x0006E9 00:C6D9: FF        .byte $FF   ; 

- D 2 - I - 0x0006EA 00:C6DA: 2A 40     .dbyt $2A40 ; 
- D 2 - I - 0x0006EC 00:C6DC: 60        .byte con_40 + $20   ; 
- D 2 - I - 0x0006ED 00:C6DD: 31        .byte $31   ; 

- D 2 - I - 0x0006EE 00:C6DE: 2A 60     .dbyt $2A60 ; 
- D 2 - I - 0x0006F0 00:C6E0: 7F        .byte con_40 + $3F   ; 
- D 2 - I - 0x0006F1 00:C6E1: 32        .byte $32   ; 

- D 2 - I - 0x0006F2 00:C6E2: 00        .byte $00   ; end token



_off000_C6E3_03:
- D 2 - I - 0x0006F3 00:C6E3: 23 E0     .dbyt $23E0 ; 
- D 2 - I - 0x0006F5 00:C6E5: 60        .byte con_40 + $20   ; 
- D 2 - I - 0x0006F6 00:C6E6: 00        .byte $00   ; 

- D 2 - I - 0x0006F7 00:C6E7: 23 C8     .dbyt $23C8 ; 
- D 2 - I - 0x0006F9 00:C6E9: 02        .byte con_00 + $02   ; 
- D 2 - I - 0x0006FA 00:C6EA: 44        .byte $44, $55   ; 

- D 2 - I - 0x0006FC 00:C6EC: 00        .byte $00   ; end token



_off000_C6ED_06:
- D 2 - I - 0x0006FD 00:C6ED: 2B C0     .dbyt $2BC0 ; 
- D 2 - I - 0x0006FF 00:C6EF: 71        .byte con_40 + $31   ; 
- D 2 - I - 0x000700 00:C6F0: 00        .byte $00   ; 

- D 2 - I - 0x000701 00:C6F1: 2B C8     .dbyt $2BC8 ; 
- D 2 - I - 0x000703 00:C6F3: 02        .byte con_00 + $02   ; 
- D 2 - I - 0x000704 00:C6F4: 44        .byte $44, $55   ; 

- D 2 - I - 0x000706 00:C6F6: 00        .byte $00   ; end token



tbl_C6F7_ppu_lo:
- D 2 - - - 0x000707 00:C6F7: A0        .byte < _off000_0x0050B0_05_00   ; 00 
- D 2 - - - 0x000708 00:C6F8: 04        .byte < _off000_0x005214_05_01   ; 01 



tbl_C6F9_ppu_hi:
- D 2 - - - 0x000709 00:C6F9: 10        .byte > _off000_0x0050B0_05_00   ; 00 
- D 2 - - - 0x00070A 00:C6FA: 12        .byte > _off000_0x005214_05_01   ; 01 



sub_C6FB_copy_data_from_ppu:
C - - - - - 0x00070B 00:C6FB: 20 91 C8  JSR sub_C891_write_00_to_2001
C - - - - - 0x00070E 00:C6FE: BD F9 C6  LDA tbl_C6F9_ppu_hi,X
C - - - - - 0x000711 00:C701: 8D 06 20  STA $2006
C - - - - - 0x000714 00:C704: BD F7 C6  LDA tbl_C6F7_ppu_lo,X
C - - - - - 0x000717 00:C707: 8D 06 20  STA $2006
C - - - - - 0x00071A 00:C70A: AD 07 20  LDA $2007   ; dummy read
C - - - - - 0x00071D 00:C70D: A9 00     LDA #< ram_0400_data
C - - - - - 0x00071F 00:C70F: 85 00     STA ram_0000
C - - - - - 0x000721 00:C711: A8        TAY ; 00
C - - - - - 0x000722 00:C712: A9 04     LDA #> ram_0400_data
C - - - - - 0x000724 00:C714: 85 01     STA ram_0001
C - - - - - 0x000726 00:C716: A2 02     LDX #$02
bra_C718_loop:
; 0400-05FF
C - - - - - 0x000728 00:C718: AD 07 20  LDA $2007   ; actual read
C - - - - - 0x00072B 00:C71B: 91 00     STA (ram_0000),Y
C - - - - - 0x00072D 00:C71D: C8        INY
C - - - - - 0x00072E 00:C71E: D0 F8     BNE bra_C718_loop
C - - - - - 0x000730 00:C720: E6 01     INC ram_0001
C - - - - - 0x000732 00:C722: CA        DEX
C - - - - - 0x000733 00:C723: D0 F3     BNE bra_C718_loop
C - - - - - 0x000735 00:C725: 60        RTS



sub_C726_jump_to_pointers_after_jsr___0055:
C - - - - - 0x000736 00:C726: A5 55     LDA ram_0055
sub_C728_jump_to_pointers_after_jsr:
C - - - - - 0x000738 00:C728: 0A        ASL
C - - - - - 0x000739 00:C729: A8        TAY
C - - - - - 0x00073A 00:C72A: 68        PLA
C - - - - - 0x00073B 00:C72B: 85 00     STA ram_0000
C - - - - - 0x00073D 00:C72D: 68        PLA
C - - - - - 0x00073E 00:C72E: 85 01     STA ram_0001
C - - - - - 0x000740 00:C730: C8        INY
C - - - - - 0x000741 00:C731: B1 00     LDA (ram_0000),Y
C - - - - - 0x000743 00:C733: 85 02     STA ram_0002
C - - - - - 0x000745 00:C735: C8        INY
C - - - - - 0x000746 00:C736: B1 00     LDA (ram_0000),Y
C - - - - - 0x000748 00:C738: 85 03     STA ram_0003
C - - - - - 0x00074A 00:C73A: 6C 02 00  JMP (ram_0002)



loc_C73D:
C D 2 - - - 0x00074D 00:C73D: 85 03     STA ram_0003
C - - - - - 0x00074F 00:C73F: 8A        TXA
C - - - - - 0x000750 00:C740: 48        PHA
C - - - - - 0x000751 00:C741: 98        TYA
C - - - - - 0x000752 00:C742: 48        PHA
C - - - - - 0x000753 00:C743: A9 02     LDA #$02
C - - - - - 0x000755 00:C745: 85 05     STA ram_0005
C - - - - - 0x000757 00:C747: A9 0F     LDA #$0F
C - - - - - 0x000759 00:C749: 25 03     AND ram_0003
C - - - - - 0x00075B 00:C74B: 85 07     STA ram_0007
C - - - - - 0x00075D 00:C74D: A5 03     LDA ram_0003
C - - - - - 0x00075F 00:C74F: 4A        LSR
C - - - - - 0x000760 00:C750: 4A        LSR
C - - - - - 0x000761 00:C751: 4A        LSR
C - - - - - 0x000762 00:C752: 4A        LSR
C - - - - - 0x000763 00:C753: 85 06     STA ram_0006
C - - - - - 0x000765 00:C755: AA        TAX
C - - - - - 0x000766 00:C756: A9 00     LDA #$00
C - - - - - 0x000768 00:C758: 18        CLC
bra_C759_loop:
C - - - - - 0x000769 00:C759: 65 07     ADC ram_0007
C - - - - - 0x00076B 00:C75B: CA        DEX
C - - - - - 0x00076C 00:C75C: D0 FB     BNE bra_C759_loop
C - - - - - 0x00076E 00:C75E: 85 08     STA ram_0008
C - - - - - 0x000770 00:C760: AA        TAX
C - - - - - 0x000771 00:C761: A5 0E     LDA ram_000E
C - - - - - 0x000773 00:C763: F0 0A     BEQ bra_C76F
C - - - - - 0x000775 00:C765: 20 77 C7  JSR sub_C777
C - - - - - 0x000778 00:C768: A5 0F     LDA ram_000F
C - - - - - 0x00077A 00:C76A: F0 03     BEQ bra_C76F
C - - - - - 0x00077C 00:C76C: 20 C1 C7  JSR sub_C7C1
bra_C76F:
C - - - - - 0x00077F 00:C76F: 20 F5 C7  JSR sub_C7F5
C - - - - - 0x000782 00:C772: 68        PLA
C - - - - - 0x000783 00:C773: A8        TAY
C - - - - - 0x000784 00:C774: 68        PLA
C - - - - - 0x000785 00:C775: AA        TAX
C - - - - - 0x000786 00:C776: 60        RTS



sub_C777:
C - - - - - 0x000787 00:C777: A5 02     LDA ram_0002
C - - - - - 0x000789 00:C779: A0 01     LDY #$01
bra_C77B_loop:
C - - - - - 0x00078B 00:C77B: 91 04     STA (ram_0004),Y
C - - - - - 0x00078D 00:C77D: 18        CLC
C - - - - - 0x00078E 00:C77E: 69 01     ADC #$01
C - - - - - 0x000790 00:C780: C8        INY
C - - - - - 0x000791 00:C781: 48        PHA
C - - - - - 0x000792 00:C782: B1 04     LDA (ram_0004),Y
C - - - - - 0x000794 00:C784: 29 3F     AND #$3F
C - - - - - 0x000796 00:C786: 91 04     STA (ram_0004),Y
C - - - - - 0x000798 00:C788: 8A        TXA
C - - - - - 0x000799 00:C789: 48        PHA
C - - - - - 0x00079A 00:C78A: A5 0D     LDA ram_000D
C - - - - - 0x00079C 00:C78C: 29 03     AND #$03
C - - - - - 0x00079E 00:C78E: A6 09     LDX ram_0009
C - - - - - 0x0007A0 00:C790: E0 03     CPX #$03
C - - - - - 0x0007A2 00:C792: 30 11     BMI bra_C7A5
C - - - - - 0x0007A4 00:C794: E0 18     CPX #$18
C - - - - - 0x0007A6 00:C796: B0 0D     BCS bra_C7A5
C - - - - - 0x0007A8 00:C798: A6 55     LDX ram_0055
C - - - - - 0x0007AA 00:C79A: CA        DEX
C - - - - - 0x0007AB 00:C79B: D0 08     BNE bra_C7A5
C - - - - - 0x0007AD 00:C79D: A6 09     LDX ram_0009
C - - - - - 0x0007AF 00:C79F: E0 03     CPX #$03
C - - - - - 0x0007B1 00:C7A1: F0 02     BEQ bra_C7A5
C - - - - - 0x0007B3 00:C7A3: 09 20     ORA #$20
bra_C7A5:
C - - - - - 0x0007B5 00:C7A5: 91 04     STA (ram_0004),Y
C - - - - - 0x0007B7 00:C7A7: 68        PLA
C - - - - - 0x0007B8 00:C7A8: AA        TAX
C - - - - - 0x0007B9 00:C7A9: 46 0A     LSR ram_000A
C - - - - - 0x0007BB 00:C7AB: 66 0B     ROR ram_000B
C - - - - - 0x0007BD 00:C7AD: 66 0C     ROR ram_000C
C - - - - - 0x0007BF 00:C7AF: 66 0D     ROR ram_000D
C - - - - - 0x0007C1 00:C7B1: 46 0A     LSR ram_000A
C - - - - - 0x0007C3 00:C7B3: 66 0B     ROR ram_000B
C - - - - - 0x0007C5 00:C7B5: 66 0C     ROR ram_000C
C - - - - - 0x0007C7 00:C7B7: 66 0D     ROR ram_000D
C - - - - - 0x0007C9 00:C7B9: 68        PLA
C - - - - - 0x0007CA 00:C7BA: C8        INY
C - - - - - 0x0007CB 00:C7BB: C8        INY
C - - - - - 0x0007CC 00:C7BC: C8        INY
C - - - - - 0x0007CD 00:C7BD: CA        DEX
C - - - - - 0x0007CE 00:C7BE: D0 BB     BNE bra_C77B_loop
C - - - - - 0x0007D0 00:C7C0: 60        RTS



sub_C7C1:
C - - - - - 0x0007D1 00:C7C1: A0 01     LDY #$01
C - - - - - 0x0007D3 00:C7C3: 84 0A     STY ram_000A
C - - - - - 0x0007D5 00:C7C5: A5 08     LDA ram_0008
C - - - - - 0x0007D7 00:C7C7: 38        SEC
C - - - - - 0x0007D8 00:C7C8: E5 06     SBC ram_0006
bra_C7CA_loop:
C - - - - - 0x0007DA 00:C7CA: A8        TAY
C - - - - - 0x0007DB 00:C7CB: 85 0B     STA ram_000B
C - - - - - 0x0007DD 00:C7CD: A6 06     LDX ram_0006
bra_C7CF_loop:
C - - - - - 0x0007DF 00:C7CF: 98        TYA
C - - - - - 0x0007E0 00:C7D0: 48        PHA
C - - - - - 0x0007E1 00:C7D1: 18        CLC
C - - - - - 0x0007E2 00:C7D2: 98        TYA
C - - - - - 0x0007E3 00:C7D3: 65 02     ADC ram_0002
C - - - - - 0x0007E5 00:C7D5: A4 0A     LDY ram_000A
C - - - - - 0x0007E7 00:C7D7: 91 04     STA (ram_0004),Y
C - - - - - 0x0007E9 00:C7D9: C8        INY
C - - - - - 0x0007EA 00:C7DA: B1 04     LDA (ram_0004),Y
C - - - - - 0x0007EC 00:C7DC: 29 3F     AND #$3F
C - - - - - 0x0007EE 00:C7DE: 49 40     EOR #$40
C - - - - - 0x0007F0 00:C7E0: 91 04     STA (ram_0004),Y
C - - - - - 0x0007F2 00:C7E2: C8        INY
C - - - - - 0x0007F3 00:C7E3: C8        INY
C - - - - - 0x0007F4 00:C7E4: C8        INY
C - - - - - 0x0007F5 00:C7E5: 84 0A     STY ram_000A
C - - - - - 0x0007F7 00:C7E7: 68        PLA
C - - - - - 0x0007F8 00:C7E8: A8        TAY
C - - - - - 0x0007F9 00:C7E9: C8        INY
C - - - - - 0x0007FA 00:C7EA: CA        DEX
C - - - - - 0x0007FB 00:C7EB: D0 E2     BNE bra_C7CF_loop
C - - - - - 0x0007FD 00:C7ED: A5 0B     LDA ram_000B
C - - - - - 0x0007FF 00:C7EF: 38        SEC
C - - - - - 0x000800 00:C7F0: E5 06     SBC ram_0006
C - - - - - 0x000802 00:C7F2: 10 D6     BPL bra_C7CA_loop
C - - - - - 0x000804 00:C7F4: 60        RTS



sub_C7F5:
C - - - - - 0x000805 00:C7F5: A0 00     LDY #$00
bra_C7F7_loop:
C - - - - - 0x000807 00:C7F7: A6 06     LDX ram_0006
C - - - - - 0x000809 00:C7F9: A5 01     LDA ram_0001
C - - - - - 0x00080B 00:C7FB: 85 09     STA ram_0009
bra_C7FD_loop:
C - - - - - 0x00080D 00:C7FD: A5 09     LDA ram_0009
C - - - - - 0x00080F 00:C7FF: 91 04     STA (ram_0004),Y
C - - - - - 0x000811 00:C801: 18        CLC
C - - - - - 0x000812 00:C802: 69 08     ADC #$08
C - - - - - 0x000814 00:C804: 85 09     STA ram_0009
C - - - - - 0x000816 00:C806: C8        INY
C - - - - - 0x000817 00:C807: C8        INY
C - - - - - 0x000818 00:C808: C8        INY
C - - - - - 0x000819 00:C809: A5 00     LDA ram_0000
C - - - - - 0x00081B 00:C80B: 91 04     STA (ram_0004),Y
C - - - - - 0x00081D 00:C80D: C8        INY
C - - - - - 0x00081E 00:C80E: CA        DEX
C - - - - - 0x00081F 00:C80F: D0 EC     BNE bra_C7FD_loop
C - - - - - 0x000821 00:C811: A5 00     LDA ram_0000
C - - - - - 0x000823 00:C813: 18        CLC
C - - - - - 0x000824 00:C814: 69 08     ADC #$08
C - - - - - 0x000826 00:C816: 85 00     STA ram_0000
C - - - - - 0x000828 00:C818: C6 07     DEC ram_0007
C - - - - - 0x00082A 00:C81A: D0 DB     BNE bra_C7F7_loop
C - - - - - 0x00082C 00:C81C: 60        RTS



loc_C81D_hide_all_sprites:
sub_C81D_hide_all_sprites:
C D 2 - - - 0x00082D 00:C81D: A2 40     LDX #$40
C - - - - - 0x00082F 00:C81F: A9 00     LDA #$00
sub_C821_hide_sprites_starting_from_A:
loc_C821_hide_sprites_starting_from_A:
C D 2 - - - 0x000831 00:C821: 85 04     STA ram_0004
C - - - - - 0x000833 00:C823: A9 02     LDA #> ram_oam
C - - - - - 0x000835 00:C825: 85 05     STA ram_0005
C - - - - - 0x000837 00:C827: A0 00     LDY #$00
bra_C829_loop:
C - - - - - 0x000839 00:C829: A9 F8     LDA #$F8
C - - - - - 0x00083B 00:C82B: 91 04     STA (ram_0004),Y
C - - - - - 0x00083D 00:C82D: C8        INY
C - - - - - 0x00083E 00:C82E: C8        INY
C - - - - - 0x00083F 00:C82F: A9 00     LDA #$00
C - - - - - 0x000841 00:C831: 91 04     STA (ram_0004),Y
C - - - - - 0x000843 00:C833: C8        INY
C - - - - - 0x000844 00:C834: C8        INY
C - - - - - 0x000845 00:C835: CA        DEX
C - - - - - 0x000846 00:C836: D0 F1     BNE bra_C829_loop
C - - - - - 0x000848 00:C838: 60        RTS



tbl_C839_lo:
- D 2 - - - 0x000849 00:C839: 22        .byte $22   ; 00 
- D 2 - - - 0x00084A 00:C83A: 17        .byte $17   ; 01 
- - - - - - 0x00084B 00:C83B: 22        .byte $22   ; 02 
- - - - - - 0x00084C 00:C83C: 27        .byte $27   ; 03 



sub_C83D:
C - - - - - 0x00084D 00:C83D: 86 0F     STX ram_000F
C - - - - - 0x00084F 00:C83F: AA        TAX
C - - - - - 0x000850 00:C840: B5 E0     LDA ram_00E0_plr,X
C - - - - - 0x000852 00:C842: D0 0F     BNE bra_C853
C - - - - - 0x000854 00:C844: 95 E6     STA ram_00E6_plr,X
C - - - - - 0x000856 00:C846: A9 08     LDA #$08
C - - - - - 0x000858 00:C848: 95 E8     STA ram_00E8_plr,X
C - - - - - 0x00085A 00:C84A: A9 F0     LDA #$F0
C - - - - - 0x00085C 00:C84C: 95 EA     STA ram_00EA_plr,X
C - - - - - 0x00085E 00:C84E: F6 E0     INC ram_00E0_plr,X
C - - - - - 0x000860 00:C850: 4C 68 C8  JMP loc_C868
bra_C853:
C - - - - - 0x000863 00:C853: B5 E6     LDA ram_00E6_plr,X
C - - - - - 0x000865 00:C855: C9 08     CMP #$08
C - - - - - 0x000867 00:C857: B0 0F     BCS bra_C868
C - - - - - 0x000869 00:C859: B4 2F     LDY ram_002F_plr,X
C - - - - - 0x00086B 00:C85B: B5 E8     LDA ram_00E8_plr,X
C - - - - - 0x00086D 00:C85D: 79 39 C8  ADC tbl_C839_lo,Y
C - - - - - 0x000870 00:C860: 95 E8     STA ram_00E8_plr,X
C - - - - - 0x000872 00:C862: B5 E6     LDA ram_00E6_plr,X
C - - - - - 0x000874 00:C864: 69 00     ADC #$00
C - - - - - 0x000876 00:C866: 95 E6     STA ram_00E6_plr,X
bra_C868:
loc_C868:
C D 2 - - - 0x000878 00:C868: B5 EA     LDA ram_00EA_plr,X
C - - - - - 0x00087A 00:C86A: 38        SEC
C - - - - - 0x00087B 00:C86B: F5 E2     SBC ram_00E2_plr,X
C - - - - - 0x00087D 00:C86D: 95 EA     STA ram_00EA_plr,X
C - - - - - 0x00087F 00:C86F: A5 01     LDA ram_0001
C - - - - - 0x000881 00:C871: F5 E4     SBC ram_00E4_plr,X
C - - - - - 0x000883 00:C873: 48        PHA
C - - - - - 0x000884 00:C874: 18        CLC
C - - - - - 0x000885 00:C875: B5 EA     LDA ram_00EA_plr,X
C - - - - - 0x000887 00:C877: 75 E8     ADC ram_00E8_plr,X
C - - - - - 0x000889 00:C879: 95 EA     STA ram_00EA_plr,X
C - - - - - 0x00088B 00:C87B: 68        PLA
C - - - - - 0x00088C 00:C87C: 75 E6     ADC ram_00E6_plr,X
C - - - - - 0x00088E 00:C87E: 85 01     STA ram_0001
C - - - - - 0x000890 00:C880: A6 0F     LDX ram_000F
C - - - - - 0x000892 00:C882: 60        RTS



sub_C883:
C - - - - - 0x000893 00:C883: A9 10     LDA #$10
C - - - - - 0x000895 00:C885: 20 48 C1  JSR sub_C148_set_2000
C - - - - - 0x000898 00:C888: A9 00     LDA #$00
C - - - - - 0x00089A 00:C88A: 85 12     STA ram_scroll_X
C - - - - - 0x00089C 00:C88C: 85 13     STA ram_scroll_Y
C - - - - - 0x00089E 00:C88E: 4C 81 CB  JMP loc_CB81_set_scroll



sub_C891_write_00_to_2001:
C - - - - - 0x0008A1 00:C891: A9 00     LDA #$00
C - - - - - 0x0008A3 00:C893: 8D 01 20  STA $2001
C - - - - - 0x0008A6 00:C896: 60        RTS


; bzk garbage
- - - - - - 0x0008A7 00:C897: 20 5D C1  JSR sub_C15D



sub_C89A:
C - - - - - 0x0008AA 00:C89A: 20 91 C8  JSR sub_C891_write_00_to_2001
C - - - - - 0x0008AD 00:C89D: A9 20     LDA #$20
C - - - - - 0x0008AF 00:C89F: 20 A4 C8  JSR sub_C8A4
C - - - - - 0x0008B2 00:C8A2: A9 28     LDA #$28
sub_C8A4:
C - - - - - 0x0008B4 00:C8A4: 85 00     STA ram_0000
C - - - - - 0x0008B6 00:C8A6: AD 02 20  LDA $2002
C - - - - - 0x0008B9 00:C8A9: A5 10     LDA ram_for_2000
C - - - - - 0x0008BB 00:C8AB: 29 FB     AND #$FB
C - - - - - 0x0008BD 00:C8AD: 8D 00 20  STA $2000
C - - - - - 0x0008C0 00:C8B0: A5 00     LDA ram_0000
C - - - - - 0x0008C2 00:C8B2: 8D 06 20  STA $2006
C - - - - - 0x0008C5 00:C8B5: A9 00     LDA #$00
C - - - - - 0x0008C7 00:C8B7: 8D 06 20  STA $2006
C - - - - - 0x0008CA 00:C8BA: A8        TAY ; 00
C - - - - - 0x0008CB 00:C8BB: A2 04     LDX #$04
C - - - - - 0x0008CD 00:C8BD: A9 38     LDA #$38
bra_C8BF_loop:
C - - - - - 0x0008CF 00:C8BF: 8D 07 20  STA $2007
C - - - - - 0x0008D2 00:C8C2: 88        DEY
C - - - - - 0x0008D3 00:C8C3: D0 FA     BNE bra_C8BF_loop
C - - - - - 0x0008D5 00:C8C5: CA        DEX
C - - - - - 0x0008D6 00:C8C6: D0 F7     BNE bra_C8BF_loop
C - - - - - 0x0008D8 00:C8C8: A5 00     LDA ram_0000
C - - - - - 0x0008DA 00:C8CA: 18        CLC
C - - - - - 0x0008DB 00:C8CB: 69 03     ADC #$03
C - - - - - 0x0008DD 00:C8CD: 8D 06 20  STA $2006
C - - - - - 0x0008E0 00:C8D0: A9 C0     LDA #$C0
C - - - - - 0x0008E2 00:C8D2: 8D 06 20  STA $2006
C - - - - - 0x0008E5 00:C8D5: A0 40     LDY #$40
C - - - - - 0x0008E7 00:C8D7: A9 00     LDA #$00
bra_C8D9_loop:
C - - - - - 0x0008E9 00:C8D9: 8D 07 20  STA $2007
C - - - - - 0x0008EC 00:C8DC: 88        DEY
C - - - - - 0x0008ED 00:C8DD: D0 FA     BNE bra_C8D9_loop
C - - - - - 0x0008EF 00:C8DF: 60        RTS



sub_C8E0:
loc_C8E0:
C D 2 - - - 0x0008F0 00:C8E0: 85 00     STA ram_0000
C - - - - - 0x0008F2 00:C8E2: A6 00     LDX ram_0000
C - - - - - 0x0008F4 00:C8E4: 20 EE C8  JSR sub_C8EE
C - - - - - 0x0008F7 00:C8E7: A5 00     LDA ram_0000
C - - - - - 0x0008F9 00:C8E9: 4A        LSR
C - - - - - 0x0008FA 00:C8EA: 4A        LSR
C - - - - - 0x0008FB 00:C8EB: 4A        LSR
C - - - - - 0x0008FC 00:C8EC: 4A        LSR
C - - - - - 0x0008FD 00:C8ED: AA        TAX
sub_C8EE:
C - - - - - 0x0008FE 00:C8EE: E8        INX
C - - - - - 0x0008FF 00:C8EF: 8A        TXA
C - - - - - 0x000900 00:C8F0: 29 0F     AND #$0F
C - - - - - 0x000902 00:C8F2: C9 09     CMP #$09
C - - - - - 0x000904 00:C8F4: B0 54     BCS bra_C94A_RTS
C - - - - - 0x000906 00:C8F6: 0A        ASL
C - - - - - 0x000907 00:C8F7: 0A        ASL
C - - - - - 0x000908 00:C8F8: A8        TAY
C - - - - - 0x000909 00:C8F9: AE 00 03  LDX ram_buffer_index
C - - - - - 0x00090C 00:C8FC: B9 80 C6  LDA tbl_C680,Y
C - - - - - 0x00090F 00:C8FF: 9D 01 03  STA ram_ppu_buffer,X
C - - - - - 0x000912 00:C902: 20 8C CB  JSR sub_CB8C
C - - - - - 0x000915 00:C905: C8        INY
C - - - - - 0x000916 00:C906: B9 80 C6  LDA tbl_C680,Y
C - - - - - 0x000919 00:C909: 9D 01 03  STA ram_ppu_buffer,X
C - - - - - 0x00091C 00:C90C: 20 8C CB  JSR sub_CB8C
C - - - - - 0x00091F 00:C90F: C8        INY
C - - - - - 0x000920 00:C910: B9 80 C6  LDA tbl_C680,Y
C - - - - - 0x000923 00:C913: 29 07     AND #$07
C - - - - - 0x000925 00:C915: 9D 01 03  STA ram_ppu_buffer,X
C - - - - - 0x000928 00:C918: 85 01     STA ram_0001
C - - - - - 0x00092A 00:C91A: 8A        TXA
C - - - - - 0x00092B 00:C91B: 38        SEC
C - - - - - 0x00092C 00:C91C: 65 01     ADC ram_0001
C - - - - - 0x00092E 00:C91E: 20 8E CB  JSR sub_CB8E
C - - - - - 0x000931 00:C921: AA        TAX
C - - - - - 0x000932 00:C922: 8E 00 03  STX ram_buffer_index
C - - - - - 0x000935 00:C925: A9 00     LDA #$00
C - - - - - 0x000937 00:C927: 9D 01 03  STA ram_ppu_buffer,X
C - - - - - 0x00093A 00:C92A: C8        INY
bra_C92B_loop:
C - - - - - 0x00093B 00:C92B: CA        DEX
C - - - - - 0x00093C 00:C92C: B9 EC 07  LDA ram_07EC,Y
C - - - - - 0x00093F 00:C92F: 29 0F     AND #$0F
C - - - - - 0x000941 00:C931: 9D 01 03  STA ram_ppu_buffer,X
C - - - - - 0x000944 00:C934: C6 01     DEC ram_0001
C - - - - - 0x000946 00:C936: F0 12     BEQ bra_C94A_RTS
C - - - - - 0x000948 00:C938: CA        DEX
C - - - - - 0x000949 00:C939: B9 EC 07  LDA ram_07EC,Y
C - - - - - 0x00094C 00:C93C: 29 F0     AND #$F0
C - - - - - 0x00094E 00:C93E: 4A        LSR
C - - - - - 0x00094F 00:C93F: 4A        LSR
C - - - - - 0x000950 00:C940: 4A        LSR
C - - - - - 0x000951 00:C941: 4A        LSR
C - - - - - 0x000952 00:C942: 9D 01 03  STA ram_ppu_buffer,X
C - - - - - 0x000955 00:C945: 88        DEY
C - - - - - 0x000956 00:C946: C6 01     DEC ram_0001
C - - - - - 0x000958 00:C948: D0 E1     BNE bra_C92B_loop
bra_C94A_RTS:
C - - - - - 0x00095A 00:C94A: 60        RTS



sub_C94B:
C - - - - - 0x00095B 00:C94B: A2 FF     LDX #$FF
C - - - - - 0x00095D 00:C94D: 2C        .byte $2C   ; BIT opcode
sub_C94E:
C - - - - - 0x00095E 00:C94E: A2 00     LDX #$00
C - - - - - 0x000960 00:C950: 85 00     STA ram_0000
C - - - - - 0x000962 00:C952: 86 04     STX ram_0004
C - - - - - 0x000964 00:C954: A2 00     LDX #$00
C - - - - - 0x000966 00:C956: 86 05     STX ram_0005
C - - - - - 0x000968 00:C958: 86 06     STX ram_0006
C - - - - - 0x00096A 00:C95A: 86 07     STX ram_0007
C - - - - - 0x00096C 00:C95C: A5 01     LDA ram_0001
C - - - - - 0x00096E 00:C95E: 29 08     AND #$08
C - - - - - 0x000970 00:C960: D0 01     BNE bra_C963
C - - - - - 0x000972 00:C962: E8        INX
bra_C963:
C - - - - - 0x000973 00:C963: A5 00     LDA ram_0000
C - - - - - 0x000975 00:C965: 95 06     STA ram_0006,X
C - - - - - 0x000977 00:C967: A5 01     LDA ram_0001
C - - - - - 0x000979 00:C969: 29 07     AND #$07
C - - - - - 0x00097B 00:C96B: 0A        ASL
C - - - - - 0x00097C 00:C96C: 0A        ASL
C - - - - - 0x00097D 00:C96D: AA        TAX
C - - - - - 0x00097E 00:C96E: A5 04     LDA ram_0004
C - - - - - 0x000980 00:C970: F0 23     BEQ bra_C995
C - - - - - 0x000982 00:C972: BD F0 07  LDA ram_07F0,X
C - - - - - 0x000985 00:C975: F0 23     BEQ bra_C99A
bra_C977:
C - - - - - 0x000987 00:C977: 18        CLC
C - - - - - 0x000988 00:C978: 20 44 CA  JSR sub_CA44
C - - - - - 0x00098B 00:C97B: 20 D7 C9  JSR sub_C9D7
C - - - - - 0x00098E 00:C97E: 20 2C CA  JSR sub_CA2C
C - - - - - 0x000991 00:C981: 85 03     STA ram_0003
C - - - - - 0x000993 00:C983: A5 06     LDA ram_0006
C - - - - - 0x000995 00:C985: 20 D7 C9  JSR sub_C9D7
C - - - - - 0x000998 00:C988: 20 36 CA  JSR sub_CA36
C - - - - - 0x00099B 00:C98B: 85 03     STA ram_0003
C - - - - - 0x00099D 00:C98D: A5 05     LDA ram_0005
C - - - - - 0x00099F 00:C98F: 20 D7 C9  JSR sub_C9D7
C - - - - - 0x0009A2 00:C992: 4C 40 CA  JMP loc_CA40
bra_C995:
C - - - - - 0x0009A5 00:C995: BD F0 07  LDA ram_07F0,X
C - - - - - 0x0009A8 00:C998: F0 DD     BEQ bra_C977
bra_C99A:
C - - - - - 0x0009AA 00:C99A: 38        SEC
C - - - - - 0x0009AB 00:C99B: 20 44 CA  JSR sub_CA44
C - - - - - 0x0009AE 00:C99E: 20 29 CA  JSR sub_CA29
C - - - - - 0x0009B1 00:C9A1: 85 03     STA ram_0003
C - - - - - 0x0009B3 00:C9A3: A5 06     LDA ram_0006
C - - - - - 0x0009B5 00:C9A5: 20 33 CA  JSR sub_CA33
C - - - - - 0x0009B8 00:C9A8: 85 03     STA ram_0003
C - - - - - 0x0009BA 00:C9AA: A5 05     LDA ram_0005
C - - - - - 0x0009BC 00:C9AC: 20 3D CA  JSR sub_CA3D
C - - - - - 0x0009BF 00:C9AF: D0 0A     BNE bra_C9BB
C - - - - - 0x0009C1 00:C9B1: BD F2 07  LDA ram_07F2,X
C - - - - - 0x0009C4 00:C9B4: D0 05     BNE bra_C9BB
C - - - - - 0x0009C6 00:C9B6: BD F3 07  LDA ram_07F3,X
C - - - - - 0x0009C9 00:C9B9: F0 07     BEQ bra_C9C2
bra_C9BB:
C - - - - - 0x0009CB 00:C9BB: B0 19     BCS bra_C9D6_RTS
- - - - - - 0x0009CD 00:C9BD: BD F0 07  LDA ram_07F0,X
- - - - - - 0x0009D0 00:C9C0: 49 FF     EOR #$FF
bra_C9C2:
C - - - - - 0x0009D2 00:C9C2: 9D F0 07  STA ram_07F0,X
C - - - - - 0x0009D5 00:C9C5: 38        SEC
C - - - - - 0x0009D6 00:C9C6: A9 00     LDA #$00
C - - - - - 0x0009D8 00:C9C8: 85 03     STA ram_0003
C - - - - - 0x0009DA 00:C9CA: BD F3 07  LDA ram_07F3,X
C - - - - - 0x0009DD 00:C9CD: 20 29 CA  JSR sub_CA29
C - - - - - 0x0009E0 00:C9D0: 20 33 CA  JSR sub_CA33
C - - - - - 0x0009E3 00:C9D3: 20 3D CA  JSR sub_CA3D
bra_C9D6_RTS:
C - - - - - 0x0009E6 00:C9D6: 60        RTS



sub_C9D7:
C - - - - - 0x0009E7 00:C9D7: 20 1A CA  JSR sub_CA1A
C - - - - - 0x0009EA 00:C9DA: 65 01     ADC ram_0001
C - - - - - 0x0009EC 00:C9DC: C9 0A     CMP #$0A
C - - - - - 0x0009EE 00:C9DE: 90 02     BCC bra_C9E2
C - - - - - 0x0009F0 00:C9E0: 69 05     ADC #$05
bra_C9E2:
C - - - - - 0x0009F2 00:C9E2: 18        CLC
C - - - - - 0x0009F3 00:C9E3: 65 02     ADC ram_0002
C - - - - - 0x0009F5 00:C9E5: 85 02     STA ram_0002
C - - - - - 0x0009F7 00:C9E7: A5 03     LDA ram_0003
C - - - - - 0x0009F9 00:C9E9: 29 F0     AND #$F0
C - - - - - 0x0009FB 00:C9EB: 65 02     ADC ram_0002
C - - - - - 0x0009FD 00:C9ED: 90 04     BCC bra_C9F3
bra_C9EF:
C - - - - - 0x0009FF 00:C9EF: 69 5F     ADC #$5F
C - - - - - 0x000A01 00:C9F1: 38        SEC
C - - - - - 0x000A02 00:C9F2: 60        RTS
bra_C9F3:
C - - - - - 0x000A03 00:C9F3: C9 A0     CMP #$A0
C - - - - - 0x000A05 00:C9F5: B0 F8     BCS bra_C9EF
C - - - - - 0x000A07 00:C9F7: 60        RTS



sub_C9F8:
C - - - - - 0x000A08 00:C9F8: 20 1A CA  JSR sub_CA1A
C - - - - - 0x000A0B 00:C9FB: E5 01     SBC ram_0001
C - - - - - 0x000A0D 00:C9FD: 85 01     STA ram_0001
C - - - - - 0x000A0F 00:C9FF: B0 0A     BCS bra_CA0B
C - - - - - 0x000A11 00:CA01: 69 0A     ADC #$0A
C - - - - - 0x000A13 00:CA03: 85 01     STA ram_0001
C - - - - - 0x000A15 00:CA05: A5 02     LDA ram_0002
C - - - - - 0x000A17 00:CA07: 69 0F     ADC #$0F
C - - - - - 0x000A19 00:CA09: 85 02     STA ram_0002
bra_CA0B:
C - - - - - 0x000A1B 00:CA0B: A5 03     LDA ram_0003
C - - - - - 0x000A1D 00:CA0D: 29 F0     AND #$F0
C - - - - - 0x000A1F 00:CA0F: 38        SEC
C - - - - - 0x000A20 00:CA10: E5 02     SBC ram_0002
C - - - - - 0x000A22 00:CA12: B0 03     BCS bra_CA17
C - - - - - 0x000A24 00:CA14: 69 A0     ADC #$A0
C - - - - - 0x000A26 00:CA16: 18        CLC
bra_CA17:
C - - - - - 0x000A27 00:CA17: 05 01     ORA ram_0001
C - - - - - 0x000A29 00:CA19: 60        RTS



sub_CA1A:
C - - - - - 0x000A2A 00:CA1A: 48        PHA
C - - - - - 0x000A2B 00:CA1B: 29 0F     AND #$0F
C - - - - - 0x000A2D 00:CA1D: 85 01     STA ram_0001
C - - - - - 0x000A2F 00:CA1F: 68        PLA
C - - - - - 0x000A30 00:CA20: 29 F0     AND #$F0
C - - - - - 0x000A32 00:CA22: 85 02     STA ram_0002
C - - - - - 0x000A34 00:CA24: A5 03     LDA ram_0003
C - - - - - 0x000A36 00:CA26: 29 0F     AND #$0F
C - - - - - 0x000A38 00:CA28: 60        RTS



sub_CA29:
C - - - - - 0x000A39 00:CA29: 20 F8 C9  JSR sub_C9F8
sub_CA2C:
C - - - - - 0x000A3C 00:CA2C: 9D F3 07  STA ram_07F3,X
C - - - - - 0x000A3F 00:CA2F: BD F2 07  LDA ram_07F2,X
C - - - - - 0x000A42 00:CA32: 60        RTS



sub_CA33:
C - - - - - 0x000A43 00:CA33: 20 F8 C9  JSR sub_C9F8
sub_CA36:
C - - - - - 0x000A46 00:CA36: 9D F2 07  STA ram_07F2,X
C - - - - - 0x000A49 00:CA39: BD F1 07  LDA ram_07F1,X
C - - - - - 0x000A4C 00:CA3C: 60        RTS



sub_CA3D:
C - - - - - 0x000A4D 00:CA3D: 20 F8 C9  JSR sub_C9F8
loc_CA40:
C D 2 - - - 0x000A50 00:CA40: 9D F1 07  STA ram_07F1,X
C - - - - - 0x000A53 00:CA43: 60        RTS



sub_CA44:
C - - - - - 0x000A54 00:CA44: BD F3 07  LDA ram_07F3,X
C - - - - - 0x000A57 00:CA47: 85 03     STA ram_0003
C - - - - - 0x000A59 00:CA49: A5 07     LDA ram_0007
C - - - - - 0x000A5B 00:CA4B: 60        RTS



sub_CA4C:
C - - - - - 0x000A5C 00:CA4C: A9 00     LDA #$00
C - - - - - 0x000A5E 00:CA4E: 85 04     STA ram_0004
C - - - - - 0x000A60 00:CA50: 18        CLC
C - - - - - 0x000A61 00:CA51: A5 00     LDA ram_0000
C - - - - - 0x000A63 00:CA53: 69 10     ADC #$10
C - - - - - 0x000A65 00:CA55: 29 F0     AND #$F0
C - - - - - 0x000A67 00:CA57: 4A        LSR
C - - - - - 0x000A68 00:CA58: 4A        LSR
C - - - - - 0x000A69 00:CA59: A8        TAY
C - - - - - 0x000A6A 00:CA5A: A5 00     LDA ram_0000
C - - - - - 0x000A6C 00:CA5C: 29 07     AND #$07
C - - - - - 0x000A6E 00:CA5E: 0A        ASL
C - - - - - 0x000A6F 00:CA5F: 0A        ASL
C - - - - - 0x000A70 00:CA60: AA        TAX
bra_CA61_loop:
C - - - - - 0x000A71 00:CA61: B9 EC 07  LDA ram_07EC,Y
C - - - - - 0x000A74 00:CA64: F0 5B     BEQ bra_CAC1
- - - - - - 0x000A76 00:CA66: BD F0 07  LDA ram_07F0,X
- - - - - - 0x000A79 00:CA69: F0 29     BEQ bra_CA94
bra_CA6B:
C - - - - - 0x000A7B 00:CA6B: 38        SEC
C - - - - - 0x000A7C 00:CA6C: B9 EF 07  LDA ram_07EF,Y
C - - - - - 0x000A7F 00:CA6F: 85 03     STA ram_0003
C - - - - - 0x000A81 00:CA71: BD F3 07  LDA ram_07F3,X
C - - - - - 0x000A84 00:CA74: 20 F8 C9  JSR sub_C9F8
C - - - - - 0x000A87 00:CA77: B9 EE 07  LDA ram_07EE,Y
C - - - - - 0x000A8A 00:CA7A: 85 03     STA ram_0003
C - - - - - 0x000A8C 00:CA7C: BD F2 07  LDA ram_07F2,X
C - - - - - 0x000A8F 00:CA7F: 20 F8 C9  JSR sub_C9F8
C - - - - - 0x000A92 00:CA82: B9 ED 07  LDA ram_07ED,Y
C - - - - - 0x000A95 00:CA85: 85 03     STA ram_0003
C - - - - - 0x000A97 00:CA87: BD F1 07  LDA ram_07F1,X
C - - - - - 0x000A9A 00:CA8A: 20 F8 C9  JSR sub_C9F8
C - - - - - 0x000A9D 00:CA8D: B0 37     BCS bra_CAC6
C - - - - - 0x000A9F 00:CA8F: B9 EC 07  LDA ram_07EC,Y
C - - - - - 0x000AA2 00:CA92: D0 37     BNE bra_CACB
bra_CA94:
C - - - - - 0x000AA4 00:CA94: A9 FF     LDA #$FF
C - - - - - 0x000AA6 00:CA96: 85 04     STA ram_0004
C - - - - - 0x000AA8 00:CA98: 38        SEC
bra_CA99:
C - - - - - 0x000AA9 00:CA99: 98        TYA
C - - - - - 0x000AAA 00:CA9A: D0 24     BNE bra_CAC0_RTS
C - - - - - 0x000AAC 00:CA9C: 90 16     BCC bra_CAB4
C - - - - - 0x000AAE 00:CA9E: 8A        TXA
C - - - - - 0x000AAF 00:CA9F: 48        PHA
C - - - - - 0x000AB0 00:CAA0: 98        TYA
C - - - - - 0x000AB1 00:CAA1: 48        PHA
C - - - - - 0x000AB2 00:CAA2: A0 00     LDY #$00
bra_CAA4_loop:
C - - - - - 0x000AB4 00:CAA4: BD F0 07  LDA ram_07F0,X
C - - - - - 0x000AB7 00:CAA7: 99 EC 07  STA ram_07EC,Y
C - - - - - 0x000ABA 00:CAAA: E8        INX
C - - - - - 0x000ABB 00:CAAB: C8        INY
C - - - - - 0x000ABC 00:CAAC: C0 04     CPY #$04
C - - - - - 0x000ABE 00:CAAE: 90 F4     BCC bra_CAA4_loop
C - - - - - 0x000AC0 00:CAB0: 68        PLA
C - - - - - 0x000AC1 00:CAB1: A8        TAY
C - - - - - 0x000AC2 00:CAB2: 68        PLA
C - - - - - 0x000AC3 00:CAB3: AA        TAX
bra_CAB4:
C - - - - - 0x000AC4 00:CAB4: A5 00     LDA ram_0000
C - - - - - 0x000AC6 00:CAB6: 29 08     AND #$08
C - - - - - 0x000AC8 00:CAB8: F0 06     BEQ bra_CAC0_RTS
C - - - - - 0x000ACA 00:CABA: CA        DEX
C - - - - - 0x000ACB 00:CABB: CA        DEX
C - - - - - 0x000ACC 00:CABC: CA        DEX
C - - - - - 0x000ACD 00:CABD: CA        DEX
C - - - - - 0x000ACE 00:CABE: 10 A1     BPL bra_CA61_loop
bra_CAC0_RTS:
C - - - - - 0x000AD0 00:CAC0: 60        RTS
bra_CAC1:
C - - - - - 0x000AD1 00:CAC1: BD F0 07  LDA ram_07F0,X
C - - - - - 0x000AD4 00:CAC4: F0 A5     BEQ bra_CA6B
bra_CAC6:
C - - - - - 0x000AD6 00:CAC6: B9 EC 07  LDA ram_07EC,Y
C - - - - - 0x000AD9 00:CAC9: D0 C9     BNE bra_CA94
bra_CACB:
C - - - - - 0x000ADB 00:CACB: 18        CLC
C - - - - - 0x000ADC 00:CACC: 90 CB     BCC bra_CA99    ; jmp



sub_CACE_generate_random:
C - - - - - 0x000ADE 00:CACE: A2 00     LDX #$00
C - - - - - 0x000AE0 00:CAD0: A0 05     LDY #$05
C - - - - - 0x000AE2 00:CAD2: A5 18     LDA ram_random
C - - - - - 0x000AE4 00:CAD4: D0 02     BNE bra_CAD8
C - - - - - 0x000AE6 00:CAD6: A9 37     LDA #$37
bra_CAD8:
C - - - - - 0x000AE8 00:CAD8: 29 02     AND #$02
C - - - - - 0x000AEA 00:CADA: 85 00     STA ram_0000
C - - - - - 0x000AEC 00:CADC: A5 19     LDA ram_random + $01
C - - - - - 0x000AEE 00:CADE: 29 02     AND #$02
C - - - - - 0x000AF0 00:CAE0: 45 00     EOR ram_0000
C - - - - - 0x000AF2 00:CAE2: 18        CLC
C - - - - - 0x000AF3 00:CAE3: F0 01     BEQ bra_CAE6
C - - - - - 0x000AF5 00:CAE5: 38        SEC
bra_CAE6:
bra_CAE6_loop:
C - - - - - 0x000AF6 00:CAE6: 76 18     ROR ram_random,X
C - - - - - 0x000AF8 00:CAE8: E8        INX
C - - - - - 0x000AF9 00:CAE9: 88        DEY
C - - - - - 0x000AFA 00:CAEA: D0 FA     BNE bra_CAE6_loop
C - - - - - 0x000AFC 00:CAEC: 60        RTS



sub_CAED_read_joy_regs:
C - - - - - 0x000AFD 00:CAED: 20 35 CB  JSR sub_CB35
C - - - - - 0x000B00 00:CAF0: A9 01     LDA #$01
C - - - - - 0x000B02 00:CAF2: 8D 16 40  STA $4016
C - - - - - 0x000B05 00:CAF5: A2 00     LDX #$00
C - - - - - 0x000B07 00:CAF7: A9 00     LDA #$00
C - - - - - 0x000B09 00:CAF9: 8D 16 40  STA $4016
C - - - - - 0x000B0C 00:CAFC: 20 00 CB  JSR sub_CB00
C - - - - - 0x000B0F 00:CAFF: E8        INX
sub_CB00:
C - - - - - 0x000B10 00:CB00: A0 08     LDY #$08
bra_CB02_loop:
C - - - - - 0x000B12 00:CB02: 48        PHA
C - - - - - 0x000B13 00:CB03: BD 16 40  LDA $4016,X
C - - - - - 0x000B16 00:CB06: 85 00     STA ram_0000
C - - - - - 0x000B18 00:CB08: 4A        LSR
C - - - - - 0x000B19 00:CB09: 05 00     ORA ram_0000
C - - - - - 0x000B1B 00:CB0B: 4A        LSR
C - - - - - 0x000B1C 00:CB0C: 68        PLA
C - - - - - 0x000B1D 00:CB0D: 2A        ROL
C - - - - - 0x000B1E 00:CB0E: 88        DEY
C - - - - - 0x000B1F 00:CB0F: D0 F1     BNE bra_CB02_loop
C - - - - - 0x000B21 00:CB11: 86 00     STX ram_0000
C - - - - - 0x000B23 00:CB13: 06 00     ASL ram_0000
C - - - - - 0x000B25 00:CB15: A6 00     LDX ram_0000
C - - - - - 0x000B27 00:CB17: B4 14     LDY ram_btn_hold,X
C - - - - - 0x000B29 00:CB19: 84 00     STY ram_0000
C - - - - - 0x000B2B 00:CB1B: 95 14     STA ram_btn_hold,X
C - - - - - 0x000B2D 00:CB1D: 95 15     STA ram_btn_press,X
C - - - - - 0x000B2F 00:CB1F: A0 04     LDY #$04
bra_CB21_loop:
C - - - - - 0x000B31 00:CB21: A5 02     LDA ram_0002
C - - - - - 0x000B33 00:CB23: 24 00     BIT ram_0000
C - - - - - 0x000B35 00:CB25: F0 06     BEQ bra_CB2D
C - - - - - 0x000B37 00:CB27: B5 15     LDA ram_btn_press,X
C - - - - - 0x000B39 00:CB29: 25 01     AND ram_0001
C - - - - - 0x000B3B 00:CB2B: 95 15     STA ram_btn_press,X
bra_CB2D:
C - - - - - 0x000B3D 00:CB2D: 38        SEC
C - - - - - 0x000B3E 00:CB2E: 66 01     ROR ram_0001
C - - - - - 0x000B40 00:CB30: 46 02     LSR ram_0002
C - - - - - 0x000B42 00:CB32: 88        DEY
C - - - - - 0x000B43 00:CB33: D0 EC     BNE bra_CB21_loop
sub_CB35:
C - - - - - 0x000B45 00:CB35: A9 7F     LDA #$7F
C - - - - - 0x000B47 00:CB37: 85 01     STA ram_0001
C - - - - - 0x000B49 00:CB39: A9 80     LDA #$80
C - - - - - 0x000B4B 00:CB3B: 85 02     STA ram_0002
C - - - - - 0x000B4D 00:CB3D: 60        RTS



bra_CB3E_loop:
C - - - - - 0x000B4E 00:CB3E: 8D 06 20  STA $2006
C - - - - - 0x000B51 00:CB41: C8        INY
C - - - - - 0x000B52 00:CB42: B1 00     LDA (ram_0000),Y
C - - - - - 0x000B54 00:CB44: 8D 06 20  STA $2006
C - - - - - 0x000B57 00:CB47: C8        INY
C - - - - - 0x000B58 00:CB48: B1 00     LDA (ram_0000),Y
C - - - - - 0x000B5A 00:CB4A: 0A        ASL
C - - - - - 0x000B5B 00:CB4B: 48        PHA
C - - - - - 0x000B5C 00:CB4C: A5 10     LDA ram_for_2000
C - - - - - 0x000B5E 00:CB4E: 09 04     ORA #$04
C - - - - - 0x000B60 00:CB50: B0 02     BCS bra_CB54
C - - - - - 0x000B62 00:CB52: 29 FB     AND #$FB
bra_CB54:
C - - - - - 0x000B64 00:CB54: 20 48 C1  JSR sub_C148_set_2000
C - - - - - 0x000B67 00:CB57: 68        PLA
C - - - - - 0x000B68 00:CB58: 0A        ASL
C - - - - - 0x000B69 00:CB59: 90 03     BCC bra_CB5E
C - - - - - 0x000B6B 00:CB5B: 09 02     ORA #$02
C - - - - - 0x000B6D 00:CB5D: C8        INY
bra_CB5E:
C - - - - - 0x000B6E 00:CB5E: 4A        LSR
C - - - - - 0x000B6F 00:CB5F: 4A        LSR
C - - - - - 0x000B70 00:CB60: AA        TAX
bra_CB61_loop:
C - - - - - 0x000B71 00:CB61: B0 01     BCS bra_CB64
C - - - - - 0x000B73 00:CB63: C8        INY
bra_CB64:
C - - - - - 0x000B74 00:CB64: B1 00     LDA (ram_0000),Y
C - - - - - 0x000B76 00:CB66: 8D 07 20  STA $2007
C - - - - - 0x000B79 00:CB69: CA        DEX
C - - - - - 0x000B7A 00:CB6A: D0 F5     BNE bra_CB61_loop
C - - - - - 0x000B7C 00:CB6C: 38        SEC
C - - - - - 0x000B7D 00:CB6D: 98        TYA
C - - - - - 0x000B7E 00:CB6E: 65 00     ADC ram_0000
C - - - - - 0x000B80 00:CB70: 85 00     STA ram_0000
C - - - - - 0x000B82 00:CB72: A9 00     LDA #$00
C - - - - - 0x000B84 00:CB74: 65 01     ADC ram_0001
C - - - - - 0x000B86 00:CB76: 85 01     STA ram_0001
sub_CB78:
C - - - - - 0x000B88 00:CB78: AE 02 20  LDX $2002
C - - - - - 0x000B8B 00:CB7B: A0 00     LDY #$00
C - - - - - 0x000B8D 00:CB7D: B1 00     LDA (ram_0000),Y
C - - - - - 0x000B8F 00:CB7F: D0 BD     BNE bra_CB3E_loop
; if buffer is closed
sub_CB81_set_scroll:
loc_CB81_set_scroll:
C D 2 - - - 0x000B91 00:CB81: A5 12     LDA ram_scroll_X
C - - - - - 0x000B93 00:CB83: 8D 05 20  STA $2005
C - - - - - 0x000B96 00:CB86: A5 13     LDA ram_scroll_Y
C - - - - - 0x000B98 00:CB88: 8D 05 20  STA $2005
C - - - - - 0x000B9B 00:CB8B: 60        RTS



sub_CB8C:
C - - - - - 0x000B9C 00:CB8C: E8        INX
C - - - - - 0x000B9D 00:CB8D: 8A        TXA
sub_CB8E:
C - - - - - 0x000B9E 00:CB8E: C9 3F     CMP #$3F
C - - - - - 0x000BA0 00:CB90: 90 0A     BCC bra_CB9C_RTS
- - - - - - 0x000BA2 00:CB92: AE 00 03  LDX ram_buffer_index
- - - - - - 0x000BA5 00:CB95: A9 00     LDA #$00
- - - - - - 0x000BA7 00:CB97: 9D 01 03  STA ram_ppu_buffer,X
- - - - - - 0x000BAA 00:CB9A: 68        PLA
- - - - - - 0x000BAB 00:CB9B: 68        PLA
bra_CB9C_RTS:
C - - - - - 0x000BAC 00:CB9C: 60        RTS



sub_CB9D_decrease_all_timers:
C - - - - - 0x000BAD 00:CB9D: A2 09     LDX #$09    ; 0032-003B
C - - - - - 0x000BAF 00:CB9F: C6 31     DEC ram_main_timer
C - - - - - 0x000BB1 00:CBA1: 10 06     BPL bra_CBA9
C - - - - - 0x000BB3 00:CBA3: A9 0A     LDA #$0A
C - - - - - 0x000BB5 00:CBA5: 85 31     STA ram_main_timer
C - - - - - 0x000BB7 00:CBA7: A2 1D     LDX #$1D    ; 0032-004F
bra_CBA9:
bra_CBA9_loop:
C - - - - - 0x000BB9 00:CBA9: B5 32     LDA ram_timers,X
C - - - - - 0x000BBB 00:CBAB: F0 02     BEQ bra_CBAF
; if timer is still ticking
C - - - - - 0x000BBD 00:CBAD: D6 32     DEC ram_timers,X
bra_CBAF:
C - - - - - 0x000BBF 00:CBAF: CA        DEX
C - - - - - 0x000BC0 00:CBB0: 10 F7     BPL bra_CBA9_loop
C - - - - - 0x000BC2 00:CBB2: 60        RTS



tbl_CBB3:
- D 2 - - - 0x000BC3 00:CBB3: 5C        .byte $5C   ; 00 
- D 2 - - - 0x000BC4 00:CBB4: 62        .byte $62   ; 01 
- D 2 - - - 0x000BC5 00:CBB5: 5C        .byte $5C   ; 02 
- D 2 - - - 0x000BC6 00:CBB6: 56        .byte $56   ; 03 
- - - - - - 0x000BC7 00:CBB7: 6E        .byte $6E   ; 04 
- D 2 - - - 0x000BC8 00:CBB8: 74        .byte $74   ; 05 
- D 2 - - - 0x000BC9 00:CBB9: 8C        .byte $8C   ; 06 
- D 2 - - - 0x000BCA 00:CBBA: 92        .byte $92   ; 07 
- - - - - - 0x000BCB 00:CBBB: 7A        .byte $7A   ; 08 
- D 2 - - - 0x000BCC 00:CBBC: 80        .byte $80   ; 09 
- D 2 - - - 0x000BCD 00:CBBD: 86        .byte $86   ; 0A 
- D 2 - - - 0x000BCE 00:CBBE: 00        .byte $00   ; 0B 



tbl_CBBF_oam_lo:
- D 2 - - - 0x000BCF 00:CBBF: 00        .byte < (ram_spr_Y + $00)   ; 00 
- D 2 - - - 0x000BD0 00:CBC0: 24        .byte < (ram_spr_Y + $24)   ; 01 



tbl_CBC1:
- D 2 - - - 0x000BD1 00:CBC1: D6        .byte $D6   ; 00 
- D 2 - - - 0x000BD2 00:CBC2: 17        .byte $17   ; 01 
- - - - - - 0x000BD3 00:CBC3: 6E        .byte $6E   ; 02 
- D 2 - - - 0x000BD4 00:CBC4: 6F        .byte $6F   ; 03 
- D 2 - - - 0x000BD5 00:CBC5: 16        .byte $16   ; 04 



tbl_CBC6:
; 00 
- D 2 - - - 0x000BD6 00:CBC6: 10        .byte $10, $08   ; 
- D 2 - - - 0x000BD8 00:CBC8: F8        .byte $F8, $08   ; 
; 01 
- D 2 - - - 0x000BDA 00:CBCA: 08        .byte $08, $F8   ; 
- D 2 - - - 0x000BDC 00:CBCC: 00        .byte $00, $F8   ; 
; 02 
- - - - - - 0x000BDE 00:CBCE: 08        .byte $08, $F8   ; 
- - - - - - 0x000BE0 00:CBD0: 00        .byte $00, $F8   ; 
; 03 
- D 2 - - - 0x000BE2 00:CBD2: F8        .byte $F8, $00   ; 
- D 2 - - - 0x000BE4 00:CBD4: 10        .byte $10, $00   ; 
; 04 
- D 2 - - - 0x000BE6 00:CBD6: F8        .byte $F8, $10   ; 
- D 2 - - - 0x000BE8 00:CBD8: 10        .byte $10, $10   ; 



tbl_CBDA:
- D 2 - - - 0x000BEA 00:CBDA: FF        .byte $FF   ; 00 
- D 2 - - - 0x000BEB 00:CBDB: 01        .byte $01   ; 01 



tbl_CBDC:
- D 2 - - - 0x000BEC 00:CBDC: F2        .byte $F2, $F0   ; 00 
- D 2 - - - 0x000BEE 00:CBDE: 49        .byte $49, $50   ; 01 
- D 2 - - - 0x000BF0 00:CBE0: 79        .byte $79, $80   ; 02 
- D 2 - - - 0x000BF2 00:CBE2: A9        .byte $A9, $B0   ; 03 
- D 2 - - - 0x000BF4 00:CBE4: D9        .byte $D9, $E2   ; 04 
- D 2 - - - 0x000BF6 00:CBE6: F1        .byte $F1, $FA   ; 05 



tbl_CBE8:
- D 2 - - - 0x000BF8 00:CBE8: 4A        .byte $4A   ; 00 
- D 2 - - - 0x000BF9 00:CBE9: 7A        .byte $7A   ; 01 
- D 2 - - - 0x000BFA 00:CBEA: AA        .byte $AA   ; 02 
- D 2 - - - 0x000BFB 00:CBEB: DA        .byte $DA   ; 03 
- D 2 - - - 0x000BFC 00:CBEC: F5        .byte $F5   ; 04 



tbl_CBED:
- D 2 - - - 0x000BFD 00:CBED: 80        .byte $80   ; 00 
- D 2 - - - 0x000BFE 00:CBEE: 40        .byte $40   ; 01 
- D 2 - - - 0x000BFF 00:CBEF: 20        .byte $20   ; 02 
- D 2 - - - 0x000C00 00:CBF0: 10        .byte $10   ; 03 
- D 2 - - - 0x000C01 00:CBF1: 08        .byte $08   ; 04 
- D 2 - - - 0x000C02 00:CBF2: 04        .byte $04   ; 05 
- D 2 - - - 0x000C03 00:CBF3: 02        .byte $02   ; 06 
- D 2 - - - 0x000C04 00:CBF4: 01        .byte $01   ; 07 



tbl_CBF5:
- D 2 - - - 0x000C05 00:CBF5: 00        .byte $00   ; 00 
- D 2 - - - 0x000C06 00:CBF6: 04        .byte $04   ; 01 
- D 2 - - - 0x000C07 00:CBF7: 08        .byte $08   ; 02 



tbl_CBF8:
- D 2 - - - 0x000C08 00:CBF8: 04        .byte $04   ; 00 
- D 2 - - - 0x000C09 00:CBF9: 02        .byte $02   ; 01 
- D 2 - - - 0x000C0A 00:CBFA: FE        .byte $FE   ; 02 



ofs_001_CBFB_01:
C - - J - - 0x000C0B 00:CBFB: A5 8C     LDA ram_008C_flag
C - - - - - 0x000C0D 00:CBFD: D0 5F     BNE bra_CC5E
C - - - - - 0x000C0F 00:CBFF: A5 15     LDA ram_btn_press
C - - - - - 0x000C11 00:CC01: 85 70     STA ram_0070_plr
C - - - - - 0x000C13 00:CC03: A2 00     LDX #$00
C - - - - - 0x000C15 00:CC05: 20 13 CD  JSR sub_CD13
C - - - - - 0x000C18 00:CC08: A2 00     LDX #$00
C - - - - - 0x000C1A 00:CC0A: 20 99 DA  JSR sub_DA99
C - - - - - 0x000C1D 00:CC0D: A5 58     LDA ram_game_mode
C - - - - - 0x000C1F 00:CC0F: F0 0E     BEQ bra_CC1F    ; if 1p
; if 2p
C - - - - - 0x000C21 00:CC11: A5 17     LDA ram_btn_press + $02
C - - - - - 0x000C23 00:CC13: 85 71     STA ram_0070_plr + $01
C - - - - - 0x000C25 00:CC15: A2 01     LDX #$01
C - - - - - 0x000C27 00:CC17: 20 13 CD  JSR sub_CD13
C - - - - - 0x000C2A 00:CC1A: A2 01     LDX #$01
C - - - - - 0x000C2C 00:CC1C: 20 99 DA  JSR sub_DA99
bra_CC1F:
C - - - - - 0x000C2F 00:CC1F: 20 EC EF  JSR sub_EFEC
C - - - - - 0x000C32 00:CC22: 20 89 E1  JSR sub_E189
C - - - - - 0x000C35 00:CC25: 20 6A DC  JSR sub_DC6A
C - - - - - 0x000C38 00:CC28: 20 E5 D1  JSR sub_D1E5
C - - - - - 0x000C3B 00:CC2B: 20 22 DE  JSR sub_DE22
C - - - - - 0x000C3E 00:CC2E: 20 0D EE  JSR sub_EE0D
C - - - - - 0x000C41 00:CC31: 20 9A EF  JSR sub_EF9A
C - - - - - 0x000C44 00:CC34: 20 0B F1  JSR sub_F10B
C - - - - - 0x000C47 00:CC37: 20 AC D3  JSR sub_D3AC
C - - - - - 0x000C4A 00:CC3A: 20 12 D2  JSR sub_D212
C - - - - - 0x000C4D 00:CC3D: 20 01 D3  JSR sub_D301
C - - - - - 0x000C50 00:CC40: 20 7F EB  JSR sub_EB7F
C - - - - - 0x000C53 00:CC43: 20 23 EC  JSR sub_EC23
C - - - - - 0x000C56 00:CC46: 20 38 F8  JSR sub_F838
C - - - - - 0x000C59 00:CC49: 20 93 D4  JSR sub_D493
C - - - - - 0x000C5C 00:CC4C: 20 9A E2  JSR sub_E29A
C - - - - - 0x000C5F 00:CC4F: 20 B9 E0  JSR sub_E0B9
C - - - - - 0x000C62 00:CC52: 20 CC D9  JSR sub_D9CC
C - - - - - 0x000C65 00:CC55: 20 4B DA  JSR sub_DA4B
C - - - - - 0x000C68 00:CC58: 20 2E EB  JSR sub_EB2E
C - - - - - 0x000C6B 00:CC5B: 20 BF EC  JSR sub_ECBF
bra_CC5E:
C - - - - - 0x000C6E 00:CC5E: 20 63 D4  JSR sub_D463
C - - - - - 0x000C71 00:CC61: 20 2F D8  JSR sub_D82F
C - - - - - 0x000C74 00:CC64: 4C DE D7  JMP loc_D7DE



ofs_001_CC67_03:
C - - J - - 0x000C77 00:CC67: A9 04     LDA #$04
C - - - - - 0x000C79 00:CC69: 4C F5 D4  JMP loc_D4F5



ofs_001_CC6C_04:
C - - J - - 0x000C7C 00:CC6C: 20 71 F4  JSR sub_F471
C - - - - - 0x000C7F 00:CC6F: 20 8F E8  JSR sub_E88F
C - - - - - 0x000C82 00:CC72: A5 45     LDA ram_0045_timer
C - - - - - 0x000C84 00:CC74: F0 05     BEQ bra_CC7B
C - - - - - 0x000C86 00:CC76: C9 01     CMP #$01
C - - - - - 0x000C88 00:CC78: F0 04     BEQ bra_CC7E
C - - - - - 0x000C8A 00:CC7A: 60        RTS
bra_CC7B:
C - - - - - 0x000C8B 00:CC7B: 4C F2 E8  JMP loc_E8F2
bra_CC7E:
C - - - - - 0x000C8E 00:CC7E: A5 20     LDA ram_plr_lives
C - - - - - 0x000C90 00:CC80: C9 80     CMP #$80
C - - - - - 0x000C92 00:CC82: F0 13     BEQ bra_CC97
C - - - - - 0x000C94 00:CC84: E6 59     INC ram_mountain_current
C - - - - - 0x000C96 00:CC86: A5 59     LDA ram_mountain_current
C - - - - - 0x000C98 00:CC88: C9 63     CMP #$63
C - - - - - 0x000C9A 00:CC8A: 90 04     BCC bra_CC90_not_overflow
- - - - - - 0x000C9C 00:CC8C: A9 00     LDA #$00
- - - - - - 0x000C9E 00:CC8E: 85 59     STA ram_mountain_current
bra_CC90_not_overflow:
C - - - - - 0x000CA0 00:CC90: E6 56     INC ram_mountain_completed
C - - - - - 0x000CA2 00:CC92: A9 01     LDA #$01
C - - - - - 0x000CA4 00:CC94: 4C F5 D4  JMP loc_D4F5
bra_CC97:
C - - - - - 0x000CA7 00:CC97: A9 00     LDA #$00
C - - - - - 0x000CA9 00:CC99: 85 51     STA ram_0051
C - - - - - 0x000CAB 00:CC9B: 85 55     STA ram_0055
C - - - - - 0x000CAD 00:CC9D: 60        RTS



ofs_001_CC9E_02:
C - - J - - 0x000CAE 00:CC9E: A9 06     LDA #$06
C - - - - - 0x000CB0 00:CCA0: C5 6A     CMP ram_plr_handler
C - - - - - 0x000CB2 00:CCA2: F0 49     BEQ bra_CCED
C - - - - - 0x000CB4 00:CCA4: C5 6B     CMP ram_plr_handler + $01
C - - - - - 0x000CB6 00:CCA6: F0 45     BEQ bra_CCED
C - - - - - 0x000CB8 00:CCA8: A5 8C     LDA ram_008C_flag
C - - - - - 0x000CBA 00:CCAA: D0 38     BNE bra_CCE4
C - - - - - 0x000CBC 00:CCAC: A6 26     LDX ram_0026_flag
C - - - - - 0x000CBE 00:CCAE: E0 02     CPX #$02
C - - - - - 0x000CC0 00:CCB0: D0 07     BNE bra_CCB9
C - - - - - 0x000CC2 00:CCB2: A2 00     LDX #$00
C - - - - - 0x000CC4 00:CCB4: 20 F6 CC  JSR sub_CCF6
C - - - - - 0x000CC7 00:CCB7: A2 01     LDX #$01
bra_CCB9:
C - - - - - 0x000CC9 00:CCB9: 20 F6 CC  JSR sub_CCF6
C - - - - - 0x000CCC 00:CCBC: 20 12 D2  JSR sub_D212
C - - - - - 0x000CCF 00:CCBF: 20 8B F7  JSR sub_F78B
C - - - - - 0x000CD2 00:CCC2: 20 01 D3  JSR sub_D301
C - - - - - 0x000CD5 00:CCC5: 20 A4 F6  JSR sub_F6A4
C - - - - - 0x000CD8 00:CCC8: 20 1D F7  JSR sub_F71D
C - - - - - 0x000CDB 00:CCCB: 20 2E EB  JSR sub_EB2E
C - - - - - 0x000CDE 00:CCCE: 20 77 E2  JSR sub_E277
C - - - - - 0x000CE1 00:CCD1: 20 3C E3  JSR sub_E33C
C - - - - - 0x000CE4 00:CCD4: 20 BF EC  JSR sub_ECBF
C - - - - - 0x000CE7 00:CCD7: A5 8D     LDA ram_008D
C - - - - - 0x000CE9 00:CCD9: C9 2F     CMP #$2F
C - - - - - 0x000CEB 00:CCDB: 30 04     BMI bra_CCE1
C - - - - - 0x000CED 00:CCDD: A5 27     LDA ram_0027_flag
C - - - - - 0x000CEF 00:CCDF: D0 03     BNE bra_CCE4
bra_CCE1:
C - - - - - 0x000CF1 00:CCE1: 20 EC F2  JSR sub_F2EC
bra_CCE4:
C - - - - - 0x000CF4 00:CCE4: 20 24 D7  JSR sub_D724
C - - - - - 0x000CF7 00:CCE7: 20 AF D8  JSR sub_D8AF
C - - - - - 0x000CFA 00:CCEA: 4C 90 D8  JMP loc_D890
bra_CCED:
C - - - - - 0x000CFD 00:CCED: A5 4D     LDA ram_004D_timer
C - - - - - 0x000CFF 00:CCEF: D0 21     BNE bra_CD12_RTS
C - - - - - 0x000D01 00:CCF1: A9 03     LDA #$03
C - - - - - 0x000D03 00:CCF3: 4C F5 D4  JMP loc_D4F5



sub_CCF6:
C - - - - - 0x000D06 00:CCF6: 86 5F     STX ram_plr_index
C - - - - - 0x000D08 00:CCF8: 8A        TXA
C - - - - - 0x000D09 00:CCF9: 0A        ASL
C - - - - - 0x000D0A 00:CCFA: A8        TAY
C - - - - - 0x000D0B 00:CCFB: B9 15 00  LDA ram_btn_press,Y
C - - - - - 0x000D0E 00:CCFE: 95 70     STA ram_0070_plr,X
C - - - - - 0x000D10 00:CD00: 20 52 D5  JSR sub_D552
C - - - - - 0x000D13 00:CD03: BD 52 03  LDA ram_0352_plr,X
C - - - - - 0x000D16 00:CD06: D0 05     BNE bra_CD0D
C - - - - - 0x000D18 00:CD08: A6 5F     LDX ram_plr_index
C - - - - - 0x000D1A 00:CD0A: 20 9C D5  JSR sub_D59C
bra_CD0D:
C - - - - - 0x000D1D 00:CD0D: A6 5F     LDX ram_plr_index
C - - - - - 0x000D1F 00:CD0F: 20 07 D5  JSR sub_D507
bra_CD12_RTS:
C - - - - - 0x000D22 00:CD12: 60        RTS



sub_CD13:
C - - - - - 0x000D23 00:CD13: 86 5F     STX ram_plr_index
C - - - - - 0x000D25 00:CD15: B5 5A     LDA ram_005A_plr,X
C - - - - - 0x000D27 00:CD17: F0 48     BEQ bra_CD61_RTS
C - - - - - 0x000D29 00:CD19: B4 6A     LDY ram_plr_handler,X
C - - - - - 0x000D2B 00:CD1B: 88        DEY
C - - - - - 0x000D2C 00:CD1C: 98        TYA
C - - - - - 0x000D2D 00:CD1D: 20 28 C7  JSR sub_C728_jump_to_pointers_after_jsr
- D 2 - I - 0x000D30 00:CD20: 32 CD     .word ofs_002_CD32_01
- D 2 - I - 0x000D32 00:CD22: 5D CE     .word ofs_002_CE5D_02
- D 2 - I - 0x000D34 00:CD24: 38 CD     .word ofs_002_CD38_03
- D 2 - I - 0x000D36 00:CD26: 08 D0     .word ofs_002_D008_04
- D 2 - I - 0x000D38 00:CD28: 5D D0     .word ofs_002_D05D_05
- D 2 - I - 0x000D3A 00:CD2A: 08 D0     .word ofs_002_D008_06
- D 2 - I - 0x000D3C 00:CD2C: AA D0     .word ofs_002_D0AA_07
- D 2 - I - 0x000D3E 00:CD2E: 08 D0     .word ofs_002_D008_08
- - - - - - 0x000D40 00:CD30: 00 D5     .word ofs_002_D500_09_RTS



ofs_002_CD32_01:
C - - J - - 0x000D42 00:CD32: 20 B0 CD  JSR sub_CDB0
C - - - - - 0x000D45 00:CD35: 4C 3B CD  JMP loc_CD3B



ofs_002_CD38_03:
C - - J - - 0x000D48 00:CD38: 20 C6 CF  JSR sub_CFC6
loc_CD3B:
C D 2 - - - 0x000D4B 00:CD3B: 20 62 CD  JSR sub_CD62
C - - - - - 0x000D4E 00:CD3E: B0 21     BCS bra_CD61_RTS
C - - - - - 0x000D50 00:CD40: A9 05     LDA #$05
C - - - - - 0x000D52 00:CD42: 95 E8     STA ram_00E8_plr,X
C - - - - - 0x000D54 00:CD44: 95 6E     STA ram_006E_plr,X
C - - - - - 0x000D56 00:CD46: A9 04     LDA #$04
C - - - - - 0x000D58 00:CD48: 95 E6     STA ram_00E6_plr,X
C - - - - - 0x000D5A 00:CD4A: 4A        LSR ; 02
C - - - - - 0x000D5B 00:CD4B: 95 6A     STA ram_plr_handler,X
C - - - - - 0x000D5D 00:CD4D: 4A        LSR ; 01
C - - - - - 0x000D5E 00:CD4E: 95 E0     STA ram_00E0_plr,X
C - - - - - 0x000D60 00:CD50: 95 86     STA ram_0086_plr,X
C - - - - - 0x000D62 00:CD52: 4A        LSR ; 00
C - - - - - 0x000D63 00:CD53: 95 88     STA ram_0088_plr,X
C - - - - - 0x000D65 00:CD55: B4 68     LDY ram_0068_plr,X
C - - - - - 0x000D67 00:CD57: F0 08     BEQ bra_CD61_RTS
C - - - - - 0x000D69 00:CD59: B9 F8 CB  LDA tbl_CBF8,Y
C - - - - - 0x000D6C 00:CD5C: 18        CLC
C - - - - - 0x000D6D 00:CD5D: 75 64     ADC ram_plr_pos_X,X
C - - - - - 0x000D6F 00:CD5F: 95 64     STA ram_plr_pos_X,X
bra_CD61_RTS:
C - - - - - 0x000D71 00:CD61: 60        RTS



sub_CD62:
C - - - - - 0x000D72 00:CD62: A9 00     LDA #$00
C - - - - - 0x000D74 00:CD64: 95 82     STA ram_0082_plr,X
C - - - - - 0x000D76 00:CD66: A9 06     LDA #$06
bra_CD68_loop:
C - - - - - 0x000D78 00:CD68: 85 01     STA ram_0001
C - - - - - 0x000D7A 00:CD6A: B5 64     LDA ram_plr_pos_X,X
C - - - - - 0x000D7C 00:CD6C: 18        CLC
C - - - - - 0x000D7D 00:CD6D: 65 01     ADC ram_0001
C - - - - - 0x000D7F 00:CD6F: 20 B4 DB  JSR sub_DBB4
C - - - - - 0x000D82 00:CD72: 30 0F     BMI bra_CD83
C - - - - - 0x000D84 00:CD74: C9 04     CMP #$04
C - - - - - 0x000D86 00:CD76: D0 13     BNE bra_CD8B
C - - - - - 0x000D88 00:CD78: C8        INY
C - - - - - 0x000D89 00:CD79: B1 03     LDA (ram_0003),Y
C - - - - - 0x000D8B 00:CD7B: 10 0E     BPL bra_CD8B
C - - - - - 0x000D8D 00:CD7D: 88        DEY
C - - - - - 0x000D8E 00:CD7E: 88        DEY
C - - - - - 0x000D8F 00:CD7F: B1 03     LDA (ram_0003),Y
C - - - - - 0x000D91 00:CD81: 10 08     BPL bra_CD8B
bra_CD83:
C - - - - - 0x000D93 00:CD83: A9 09     LDA #$09
C - - - - - 0x000D95 00:CD85: C5 01     CMP ram_0001
C - - - - - 0x000D97 00:CD87: D0 DF     BNE bra_CD68_loop
C - - - - - 0x000D99 00:CD89: 18        CLC
C - - - - - 0x000D9A 00:CD8A: 60        RTS
bra_CD8B:
C - - - - - 0x000D9B 00:CD8B: 38        SEC
C - - - - - 0x000D9C 00:CD8C: 60        RTS



tbl_CD8D:
- D 2 - - - 0x000D9D 00:CD8D: 02        .byte $02   ; 00 
- - - - - - 0x000D9E 00:CD8E: 09        .byte $09   ; 01 
- - - - - - 0x000D9F 00:CD8F: 06        .byte $06   ; 02 
- D 2 - - - 0x000DA0 00:CD90: 04        .byte $04   ; 03 



tbl_CD91:
- D 2 - - - 0x000DA1 00:CD91: 04        .byte $04   ; 00 
- - - - - - 0x000DA2 00:CD92: 02        .byte $02   ; 01 
- - - - - - 0x000DA3 00:CD93: 02        .byte $02   ; 02 
- D 2 - - - 0x000DA4 00:CD94: 04        .byte $04   ; 03 



sub_CD95:
C - - - - - 0x000DA5 00:CD95: F6 60     INC ram_0060_plr,X
C - - - - - 0x000DA7 00:CD97: B5 60     LDA ram_0060_plr,X
C - - - - - 0x000DA9 00:CD99: D9 8D CD  CMP tbl_CD8D,Y
C - - - - - 0x000DAC 00:CD9C: 90 11     BCC bra_CDAF_RTS
C - - - - - 0x000DAE 00:CD9E: A9 00     LDA #$00
C - - - - - 0x000DB0 00:CDA0: 95 60     STA ram_0060_plr,X
C - - - - - 0x000DB2 00:CDA2: F6 6C     INC ram_006C_plr,X
C - - - - - 0x000DB4 00:CDA4: B5 6C     LDA ram_006C_plr,X
C - - - - - 0x000DB6 00:CDA6: D9 91 CD  CMP tbl_CD91,Y
C - - - - - 0x000DB9 00:CDA9: 90 04     BCC bra_CDAF_RTS
C - - - - - 0x000DBB 00:CDAB: A9 00     LDA #$00
C - - - - - 0x000DBD 00:CDAD: 95 6C     STA ram_006C_plr,X
bra_CDAF_RTS:
C - - - - - 0x000DBF 00:CDAF: 60        RTS



sub_CDB0:
loc_CDB0:
C D 2 - - - 0x000DC0 00:CDB0: A5 55     LDA ram_0055
C - - - - - 0x000DC2 00:CDB2: C9 01     CMP #$01
C - - - - - 0x000DC4 00:CDB4: D0 0E     BNE bra_CDC4
C - - - - - 0x000DC6 00:CDB6: 8A        TXA
C - - - - - 0x000DC7 00:CDB7: 0A        ASL
C - - - - - 0x000DC8 00:CDB8: A8        TAY
C - - - - - 0x000DC9 00:CDB9: B9 14 00  LDA ram_btn_hold,Y
C - - - - - 0x000DCC 00:CDBC: 29 40     AND #con_btn_B
C - - - - - 0x000DCE 00:CDBE: F0 04     BEQ bra_CDC4
C - - - - - 0x000DD0 00:CDC0: A9 05     LDA #$05
C - - - - - 0x000DD2 00:CDC2: D0 17     BNE bra_CDDB    ; jmp
bra_CDC4:
C - - - - - 0x000DD4 00:CDC4: B5 70     LDA ram_0070_plr,X
C - - - - - 0x000DD6 00:CDC6: 29 01     AND #$01
C - - - - - 0x000DD8 00:CDC8: D0 15     BNE bra_CDDF
C - - - - - 0x000DDA 00:CDCA: B5 70     LDA ram_0070_plr,X
C - - - - - 0x000DDC 00:CDCC: 29 02     AND #$02
C - - - - - 0x000DDE 00:CDCE: D0 19     BNE bra_CDE9
bra_CDD0:
C - - - - - 0x000DE0 00:CDD0: B5 68     LDA ram_0068_plr,X
C - - - - - 0x000DE2 00:CDD2: F0 2B     BEQ bra_CDFF
C - - - - - 0x000DE4 00:CDD4: B5 6E     LDA ram_006E_plr,X
C - - - - - 0x000DE6 00:CDD6: 4A        LSR
C - - - - - 0x000DE7 00:CDD7: 95 32     STA ram_0032_plr_timer,X
C - - - - - 0x000DE9 00:CDD9: A9 03     LDA #$03
bra_CDDB:
C - - - - - 0x000DEB 00:CDDB: 95 6A     STA ram_plr_handler,X
C - - - - - 0x000DED 00:CDDD: D0 20     BNE bra_CDFF    ; jmp
bra_CDDF:
C - - - - - 0x000DEF 00:CDDF: A9 01     LDA #$01
C - - - - - 0x000DF1 00:CDE1: B4 68     LDY ram_0068_plr,X
C - - - - - 0x000DF3 00:CDE3: C0 02     CPY #$02
C - - - - - 0x000DF5 00:CDE5: F0 E9     BEQ bra_CDD0
C - - - - - 0x000DF7 00:CDE7: D0 08     BNE bra_CDF1    ; jmp
bra_CDE9:
C - - - - - 0x000DF9 00:CDE9: A9 02     LDA #$02
C - - - - - 0x000DFB 00:CDEB: B4 68     LDY ram_0068_plr,X
C - - - - - 0x000DFD 00:CDED: C0 01     CPY #$01
C - - - - - 0x000DFF 00:CDEF: F0 DF     BEQ bra_CDD0
bra_CDF1:
C - - - - - 0x000E01 00:CDF1: 95 68     STA ram_0068_plr,X
C - - - - - 0x000E03 00:CDF3: 29 01     AND #$01
C - - - - - 0x000E05 00:CDF5: 95 62     STA ram_0062_plr,X
C - - - - - 0x000E07 00:CDF7: 20 43 D1  JSR sub_D143
C - - - - - 0x000E0A 00:CDFA: A0 00     LDY #$00
C - - - - - 0x000E0C 00:CDFC: 20 95 CD  JSR sub_CD95
bra_CDFF:
loc_CDFF:
C D 2 - - - 0x000E0F 00:CDFF: B4 6C     LDY ram_006C_plr,X
C - - - - - 0x000E11 00:CE01: 20 7C D1  JSR sub_D17C
C - - - - - 0x000E14 00:CE04: A0 D9     LDY #$D9
C - - - - - 0x000E16 00:CE06: A5 55     LDA ram_0055
C - - - - - 0x000E18 00:CE08: C9 01     CMP #$01
C - - - - - 0x000E1A 00:CE0A: F0 1D     BEQ bra_CE29
C - - - - - 0x000E1C 00:CE0C: BC BF CB  LDY tbl_CBBF_oam_lo,X
C - - - - - 0x000E1F 00:CE0F: A2 00     LDX #$00
bra_CE11_loop:
C - - - - - 0x000E21 00:CE11: 98        TYA
C - - - - - 0x000E22 00:CE12: 18        CLC
C - - - - - 0x000E23 00:CE13: 7D F5 CB  ADC tbl_CBF5,X
C - - - - - 0x000E26 00:CE16: A8        TAY
C - - - - - 0x000E27 00:CE17: B9 05 02  LDA ram_spr_T + $04,Y
C - - - - - 0x000E2A 00:CE1A: 18        CLC
C - - - - - 0x000E2B 00:CE1B: 69 77     ADC #$77
C - - - - - 0x000E2D 00:CE1D: 99 05 02  STA ram_spr_T + $04,Y
C - - - - - 0x000E30 00:CE20: E8        INX
C - - - - - 0x000E31 00:CE21: E0 04     CPX #$04
C - - - - - 0x000E33 00:CE23: 90 EC     BCC bra_CE11_loop
C - - - - - 0x000E35 00:CE25: A0 DF     LDY #$DF
C - - - - - 0x000E37 00:CE27: A6 5F     LDX ram_plr_index
bra_CE29:
C - - - - - 0x000E39 00:CE29: B5 70     LDA ram_0070_plr,X
C - - - - - 0x000E3B 00:CE2B: 29 03     AND #$03
C - - - - - 0x000E3D 00:CE2D: D0 14     BNE bra_CE43
C - - - - - 0x000E3F 00:CE2F: 98        TYA
C - - - - - 0x000E40 00:CE30: 48        PHA
C - - - - - 0x000E41 00:CE31: BC BF CB  LDY tbl_CBBF_oam_lo,X
C - - - - - 0x000E44 00:CE34: B5 62     LDA ram_0062_plr,X
C - - - - - 0x000E46 00:CE36: D0 07     BNE bra_CE3F
C - - - - - 0x000E48 00:CE38: 68        PLA
C - - - - - 0x000E49 00:CE39: 99 09 02  STA ram_spr_T + $08,Y
C - - - - - 0x000E4C 00:CE3C: 4C 43 CE  JMP loc_CE43
bra_CE3F:
C - - - - - 0x000E4F 00:CE3F: 68        PLA
C - - - - - 0x000E50 00:CE40: 99 15 02  STA ram_spr_T + $14,Y
bra_CE43:
loc_CE43:
sub_CE43:
C D 2 - - - 0x000E53 00:CE43: B5 70     LDA ram_0070_plr,X
C - - - - - 0x000E55 00:CE45: 29 80     AND #$80
C - - - - - 0x000E57 00:CE47: F0 13     BEQ bra_CE5C_RTS
C - - - - - 0x000E59 00:CE49: A5 55     LDA ram_0055
C - - - - - 0x000E5B 00:CE4B: C9 01     CMP #$01
C - - - - - 0x000E5D 00:CE4D: F0 05     BEQ bra_CE54
C - - - - - 0x000E5F 00:CE4F: D6 66     DEC ram_plr_pos_Y,X
C - - - - - 0x000E61 00:CE51: A9 02     LDA #$02
C - - - - - 0x000E63 00:CE53: 2C        .byte $2C   ; BIT opcode
bra_CE54:
C - - - - - 0x000E64 00:CE54: A9 04     LDA #$04
C - - - - - 0x000E66 00:CE56: 95 6A     STA ram_plr_handler,X
C - - - - - 0x000E68 00:CE58: A9 04     LDA #con_sfx_3_plr_jump
C - - - - - 0x000E6A 00:CE5A: 85 FF     STA ram_sfx_3
bra_CE5C_RTS:
C - - - - - 0x000E6C 00:CE5C: 60        RTS



sub_CE5D:
ofs_002_CE5D_02:
C - - - - - 0x000E6D 00:CE5D: A9 A8     LDA #$A8
C - - - - - 0x000E6F 00:CE5F: 95 E2     STA ram_00E2_plr,X
C - - - - - 0x000E71 00:CE61: A9 03     LDA #$03
C - - - - - 0x000E73 00:CE63: 95 E4     STA ram_00E4_plr,X
C - - - - - 0x000E75 00:CE65: B5 68     LDA ram_0068_plr,X
C - - - - - 0x000E77 00:CE67: D0 2A     BNE bra_CE93
C - - - - - 0x000E79 00:CE69: B5 E6     LDA ram_00E6_plr,X
C - - - - - 0x000E7B 00:CE6B: C9 03     CMP #$03
C - - - - - 0x000E7D 00:CE6D: 90 24     BCC bra_CE93
C - - - - - 0x000E7F 00:CE6F: B5 70     LDA ram_0070_plr,X
C - - - - - 0x000E81 00:CE71: 29 03     AND #$03
C - - - - - 0x000E83 00:CE73: F0 1E     BEQ bra_CE93
C - - - - - 0x000E85 00:CE75: 95 68     STA ram_0068_plr,X
C - - - - - 0x000E87 00:CE77: C9 01     CMP #$01
C - - - - - 0x000E89 00:CE79: F0 03     BEQ bra_CE7E
C - - - - - 0x000E8B 00:CE7B: A9 00     LDA #$00
C - - - - - 0x000E8D 00:CE7D: 2C        .byte $2C   ; BIT opcode
bra_CE7E:
C - - - - - 0x000E8E 00:CE7E: A9 01     LDA #$01
C - - - - - 0x000E90 00:CE80: 95 62     STA ram_0062_plr,X
C - - - - - 0x000E92 00:CE82: A9 0F     LDA #$0F
C - - - - - 0x000E94 00:CE84: 95 6E     STA ram_006E_plr,X
C - - - - - 0x000E96 00:CE86: D0 0B     BNE bra_CE93    ; jmp
sub_CE88:
C - - - - - 0x000E98 00:CE88: A9 F0     LDA #$F0
C - - - - - 0x000E9A 00:CE8A: 2C        .byte $2C   ; BIT opcode
sub_CE8B:
C - - - - - 0x000E9B 00:CE8B: 2C A9 B0  LDA #$B0
C - - - - - 0x000E9D 00:CE8D: 95 E2     STA ram_00E2_plr,X
C - - - - - 0x000E9F 00:CE8F: A9 00     LDA #$00
C - - - - - 0x000EA1 00:CE91: 95 E4     STA ram_00E4_plr,X
bra_CE93:
C - - - - - 0x000EA3 00:CE93: B5 68     LDA ram_0068_plr,X
C - - - - - 0x000EA5 00:CE95: F0 03     BEQ bra_CE9A
C - - - - - 0x000EA7 00:CE97: 20 60 D1  JSR sub_D160
bra_CE9A:
C - - - - - 0x000EAA 00:CE9A: 20 33 D1  JSR sub_D133
C - - - - - 0x000EAD 00:CE9D: 20 EF CE  JSR sub_CEEF
C - - - - - 0x000EB0 00:CEA0: 20 1A CF  JSR sub_CF1A
C - - - - - 0x000EB3 00:CEA3: 90 2B     BCC bra_CED0
C - - - - - 0x000EB5 00:CEA5: A5 0E     LDA ram_000E
C - - - - - 0x000EB7 00:CEA7: 38        SEC
C - - - - - 0x000EB8 00:CEA8: E9 19     SBC #$19
C - - - - - 0x000EBA 00:CEAA: 95 66     STA ram_plr_pos_Y,X
C - - - - - 0x000EBC 00:CEAC: A9 00     LDA #$00
C - - - - - 0x000EBE 00:CEAE: 95 E0     STA ram_00E0_plr,X
C - - - - - 0x000EC0 00:CEB0: 95 86     STA ram_0086_plr,X
C - - - - - 0x000EC2 00:CEB2: 95 88     STA ram_0088_plr,X
C - - - - - 0x000EC4 00:CEB4: 95 60     STA ram_0060_plr,X
C - - - - - 0x000EC6 00:CEB6: A6 5F     LDX ram_plr_index
C - - - - - 0x000EC8 00:CEB8: A9 01     LDA #$01
C - - - - - 0x000ECA 00:CEBA: 95 6A     STA ram_plr_handler,X
C - - - - - 0x000ECC 00:CEBC: B5 68     LDA ram_0068_plr,X
C - - - - - 0x000ECE 00:CEBE: F0 2E     BEQ bra_CEEE_RTS
C - - - - - 0x000ED0 00:CEC0: A9 03     LDA #$03
C - - - - - 0x000ED2 00:CEC2: 95 6A     STA ram_plr_handler,X
C - - - - - 0x000ED4 00:CEC4: B5 6E     LDA ram_006E_plr,X
C - - - - - 0x000ED6 00:CEC6: B4 5A     LDY ram_005A_plr,X
C - - - - - 0x000ED8 00:CEC8: C0 08     CPY #$08
C - - - - - 0x000EDA 00:CECA: B0 01     BCS bra_CECD
C - - - - - 0x000EDC 00:CECC: 4A        LSR
bra_CECD:
C - - - - - 0x000EDD 00:CECD: 4A        LSR
C - - - - - 0x000EDE 00:CECE: 95 32     STA ram_0032_plr_timer,X
bra_CED0:
C - - - - - 0x000EE0 00:CED0: B5 6A     LDA ram_plr_handler,X
C - - - - - 0x000EE2 00:CED2: C9 04     CMP #$04
C - - - - - 0x000EE4 00:CED4: B0 18     BCS bra_CEEE_RTS
C - - - - - 0x000EE6 00:CED6: A0 07     LDY #$07
C - - - - - 0x000EE8 00:CED8: 4C 7C D1  JMP loc_D17C



sub_CEDB:
C - - - - - 0x000EEB 00:CEDB: A0 00     LDY #$00
bra_CEDD_loop:
C - - - - - 0x000EED 00:CEDD: D9 DC CB  CMP tbl_CBDC,Y
C - - - - - 0x000EF0 00:CEE0: 90 05     BCC bra_CEE7
C - - - - - 0x000EF2 00:CEE2: D9 DD CB  CMP tbl_CBDC + $01,Y
C - - - - - 0x000EF5 00:CEE5: 90 07     BCC bra_CEEE_RTS
bra_CEE7:
C - - - - - 0x000EF7 00:CEE7: C8        INY
C - - - - - 0x000EF8 00:CEE8: C8        INY
C - - - - - 0x000EF9 00:CEE9: C0 0C     CPY #$0C
C - - - - - 0x000EFB 00:CEEB: D0 F0     BNE bra_CEDD_loop
C - - - - - 0x000EFD 00:CEED: 38        SEC
bra_CEEE_RTS:
C - - - - - 0x000EFE 00:CEEE: 60        RTS



sub_CEEF:
C - - - - - 0x000EFF 00:CEEF: B5 86     LDA ram_0086_plr,X
C - - - - - 0x000F01 00:CEF1: D0 26     BNE bra_CF19_RTS
C - - - - - 0x000F03 00:CEF3: B5 66     LDA ram_plr_pos_Y,X
C - - - - - 0x000F05 00:CEF5: 18        CLC
C - - - - - 0x000F06 00:CEF6: 69 FA     ADC #$FA
C - - - - - 0x000F08 00:CEF8: 20 DB CE  JSR sub_CEDB
C - - - - - 0x000F0B 00:CEFB: B0 1C     BCS bra_CF19_RTS
C - - - - - 0x000F0D 00:CEFD: 20 5B CF  JSR sub_CF5B
C - - - - - 0x000F10 00:CF00: 85 0B     STA ram_000B
C - - - - - 0x000F12 00:CF02: B5 64     LDA ram_plr_pos_X,X
C - - - - - 0x000F14 00:CF04: 18        CLC
C - - - - - 0x000F15 00:CF05: 69 08     ADC #$08
C - - - - - 0x000F17 00:CF07: 20 B0 DB  JSR sub_DBB0
C - - - - - 0x000F1A 00:CF0A: 10 06     BPL bra_CF12
C - - - - - 0x000F1C 00:CF0C: A4 0B     LDY ram_000B
C - - - - - 0x000F1E 00:CF0E: F0 09     BEQ bra_CF19_RTS
C - - - - - 0x000F20 00:CF10: D0 03     BNE bra_CF15    ; jmp
bra_CF12:
C - - - - - 0x000F22 00:CF12: A9 08     LDA #$08
C - - - - - 0x000F24 00:CF14: 2C        .byte $2C   ; BIT opcode
bra_CF15:
C - - - - - 0x000F25 00:CF15: A9 06     LDA #$06
C - - - - - 0x000F27 00:CF17: 95 6A     STA ram_plr_handler,X
bra_CF19_RTS:
C - - - - - 0x000F29 00:CF19: 60        RTS



sub_CF1A:
C - - - - - 0x000F2A 00:CF1A: B5 66     LDA ram_plr_pos_Y,X
C - - - - - 0x000F2C 00:CF1C: 18        CLC
C - - - - - 0x000F2D 00:CF1D: 69 18     ADC #$18
C - - - - - 0x000F2F 00:CF1F: 20 DB CE  JSR sub_CEDB
C - - - - - 0x000F32 00:CF22: B0 2D     BCS bra_CF51
C - - - - - 0x000F34 00:CF24: 98        TYA
C - - - - - 0x000F35 00:CF25: 84 07     STY ram_0007
C - - - - - 0x000F37 00:CF27: D5 88     CMP ram_0088_plr,X
C - - - - - 0x000F39 00:CF29: F0 2A     BEQ bra_CF55
C - - - - - 0x000F3B 00:CF2B: B9 DC CB  LDA tbl_CBDC,Y
C - - - - - 0x000F3E 00:CF2E: 85 0E     STA ram_000E
C - - - - - 0x000F40 00:CF30: B5 E6     LDA ram_00E6_plr,X
C - - - - - 0x000F42 00:CF32: C9 03     CMP #$03
C - - - - - 0x000F44 00:CF34: B0 10     BCS bra_CF46
C - - - - - 0x000F46 00:CF36: C9 02     CMP #$02
C - - - - - 0x000F48 00:CF38: 90 1B     BCC bra_CF55
C - - - - - 0x000F4A 00:CF3A: B5 6A     LDA ram_plr_handler,X
C - - - - - 0x000F4C 00:CF3C: C9 08     CMP #$08
C - - - - - 0x000F4E 00:CF3E: F0 06     BEQ bra_CF46
C - - - - - 0x000F50 00:CF40: B5 E8     LDA ram_00E8_plr,X
C - - - - - 0x000F52 00:CF42: C9 C0     CMP #$C0
C - - - - - 0x000F54 00:CF44: 90 0F     BCC bra_CF55
bra_CF46:
C - - - - - 0x000F56 00:CF46: A4 07     LDY ram_0007
C - - - - - 0x000F58 00:CF48: 94 88     STY ram_0088_plr,X
C - - - - - 0x000F5A 00:CF4A: 20 62 CD  JSR sub_CD62
C - - - - - 0x000F5D 00:CF4D: 90 06     BCC bra_CF55
C - - - - - 0x000F5F 00:CF4F: 38        SEC
C - - - - - 0x000F60 00:CF50: 60        RTS
bra_CF51:
C - - - - - 0x000F61 00:CF51: A9 00     LDA #$00
C - - - - - 0x000F63 00:CF53: 95 88     STA ram_0088_plr,X
bra_CF55:
C - - - - - 0x000F65 00:CF55: 18        CLC
C - - - - - 0x000F66 00:CF56: 60        RTS



tbl_CF57:
- D 2 - - - 0x000F67 00:CF57: 01        .byte $01   ; 00 
- D 2 - - - 0x000F68 00:CF58: 80        .byte $80   ; 01 



tbl_CF59:
- D 2 - - - 0x000F69 00:CF59: 03        .byte $03   ; 00 
- D 2 - - - 0x000F6A 00:CF5A: 0D        .byte $0D   ; 01 



sub_CF5B:
C - - - - - 0x000F6B 00:CF5B: A9 01     LDA #$01
C - - - - - 0x000F6D 00:CF5D: 95 82     STA ram_0082_plr,X
C - - - - - 0x000F6F 00:CF5F: 4A        LSR ; 00
C - - - - - 0x000F70 00:CF60: 85 0A     STA ram_000A
C - - - - - 0x000F72 00:CF62: A9 08     LDA #$08
C - - - - - 0x000F74 00:CF64: 20 C0 CF  JSR sub_CFC0
C - - - - - 0x000F77 00:CF67: 30 04     BMI bra_CF6D
C - - - - - 0x000F79 00:CF69: A9 FF     LDA #$FF
C - - - - - 0x000F7B 00:CF6B: D0 3A     BNE bra_CFA7    ; jmp
bra_CF6D:
C - - - - - 0x000F7D 00:CF6D: B5 68     LDA ram_0068_plr,X
C - - - - - 0x000F7F 00:CF6F: D0 18     BNE bra_CF89
C - - - - - 0x000F81 00:CF71: A9 06     LDA #$06
C - - - - - 0x000F83 00:CF73: 20 C0 CF  JSR sub_CFC0
C - - - - - 0x000F86 00:CF76: 30 04     BMI bra_CF7C
C - - - - - 0x000F88 00:CF78: A9 E0     LDA #$E0
C - - - - - 0x000F8A 00:CF7A: 85 0A     STA ram_000A
bra_CF7C:
C - - - - - 0x000F8C 00:CF7C: A9 0A     LDA #$0A
C - - - - - 0x000F8E 00:CF7E: 20 C0 CF  JSR sub_CFC0
C - - - - - 0x000F91 00:CF81: 30 26     BMI bra_CFA9
C - - - - - 0x000F93 00:CF83: A5 0A     LDA ram_000A
C - - - - - 0x000F95 00:CF85: 09 07     ORA #$07
C - - - - - 0x000F97 00:CF87: D0 1E     BNE bra_CFA7    ; jmp
bra_CF89:
C - - - - - 0x000F99 00:CF89: A9 01     LDA #$01
C - - - - - 0x000F9B 00:CF8B: 85 0C     STA ram_000C
C - - - - - 0x000F9D 00:CF8D: B4 62     LDY ram_0062_plr,X
C - - - - - 0x000F9F 00:CF8F: B9 59 CF  LDA tbl_CF59,Y
C - - - - - 0x000FA2 00:CF92: 20 C0 CF  JSR sub_CFC0
C - - - - - 0x000FA5 00:CF95: 10 02     BPL bra_CF99
C - - - - - 0x000FA7 00:CF97: C6 0C     DEC ram_000C
bra_CF99:
C - - - - - 0x000FA9 00:CF99: B4 68     LDY ram_0068_plr,X
C - - - - - 0x000FAB 00:CF9B: 88        DEY
C - - - - - 0x000FAC 00:CF9C: A5 0C     LDA ram_000C
C - - - - - 0x000FAE 00:CF9E: D0 04     BNE bra_CFA4
C - - - - - 0x000FB0 00:CFA0: A9 00     LDA #$00
C - - - - - 0x000FB2 00:CFA2: F0 03     BEQ bra_CFA7    ; jmp
bra_CFA4:
C - - - - - 0x000FB4 00:CFA4: B9 57 CF  LDA tbl_CF57,Y
bra_CFA7:
C - - - - - 0x000FB7 00:CFA7: 85 0A     STA ram_000A
bra_CFA9:
C - - - - - 0x000FB9 00:CFA9: B5 64     LDA ram_plr_pos_X,X
C - - - - - 0x000FBB 00:CFAB: 18        CLC
C - - - - - 0x000FBC 00:CFAC: 69 08     ADC #$08
C - - - - - 0x000FBE 00:CFAE: 29 07     AND #$07
C - - - - - 0x000FC0 00:CFB0: A8        TAY
C - - - - - 0x000FC1 00:CFB1: B9 ED CB  LDA tbl_CBED,Y
C - - - - - 0x000FC4 00:CFB4: 05 0A     ORA ram_000A
C - - - - - 0x000FC6 00:CFB6: C5 0A     CMP ram_000A
C - - - - - 0x000FC8 00:CFB8: D0 03     BNE bra_CFBD
C - - - - - 0x000FCA 00:CFBA: A9 01     LDA #$01
C - - - - - 0x000FCC 00:CFBC: 60        RTS
bra_CFBD:
C - - - - - 0x000FCD 00:CFBD: A9 00     LDA #$00
C - - - - - 0x000FCF 00:CFBF: 60        RTS



sub_CFC0:
C - - - - - 0x000FD0 00:CFC0: 18        CLC
C - - - - - 0x000FD1 00:CFC1: 75 64     ADC ram_plr_pos_X,X
C - - - - - 0x000FD3 00:CFC3: 4C B4 DB  JMP loc_DBB4



sub_CFC6:
loc_CFC6:
C D 2 - - - 0x000FD6 00:CFC6: B5 68     LDA ram_0068_plr,X
C - - - - - 0x000FD8 00:CFC8: F0 09     BEQ bra_CFD3
C - - - - - 0x000FDA 00:CFCA: C9 01     CMP #$01
C - - - - - 0x000FDC 00:CFCC: F0 03     BEQ bra_CFD1
C - - - - - 0x000FDE 00:CFCE: D6 64     DEC ram_plr_pos_X,X
C - - - - - 0x000FE0 00:CFD0: 2C        .byte $2C   ; BIT opcode
bra_CFD1:
C - - - - - 0x000FE1 00:CFD1: F6 64     INC ram_plr_pos_X,X
bra_CFD3:
C - - - - - 0x000FE3 00:CFD3: A0 05     LDY #$05
C - - - - - 0x000FE5 00:CFD5: 20 7C D1  JSR sub_D17C
C - - - - - 0x000FE8 00:CFD8: B5 32     LDA ram_0032_plr_timer,X
C - - - - - 0x000FEA 00:CFDA: F0 0F     BEQ bra_CFEB
C - - - - - 0x000FEC 00:CFDC: B5 5A     LDA ram_005A_plr,X
C - - - - - 0x000FEE 00:CFDE: C9 06     CMP #$06
C - - - - - 0x000FF0 00:CFE0: 90 09     BCC bra_CFEB
C - - - - - 0x000FF2 00:CFE2: B5 70     LDA ram_0070_plr,X
C - - - - - 0x000FF4 00:CFE4: 29 40     AND #$40
C - - - - - 0x000FF6 00:CFE6: F0 14     BEQ bra_CFFC
- - - - - - 0x000FF8 00:CFE8: A9 05     LDA #$05
- - - - - - 0x000FFA 00:CFEA: 2C        .byte $2C   ; BIT opcode
bra_CFEB:
sub_CFEB:
C - - - - - 0x000FFB 00:CFEB: A9 01     LDA #$01
C - - - - - 0x000FFD 00:CFED: 95 6A     STA ram_plr_handler,X
loc_CFEF:
C D 2 - - - 0x000FFF 00:CFEF: A9 00     LDA #$00
C - - - - - 0x001001 00:CFF1: 95 32     STA ram_0032_plr_timer,X
C - - - - - 0x001003 00:CFF3: 95 68     STA ram_0068_plr,X
C - - - - - 0x001005 00:CFF5: 95 60     STA ram_0060_plr,X
C - - - - - 0x001007 00:CFF7: 95 6C     STA ram_006C_plr,X
C - - - - - 0x001009 00:CFF9: 95 6E     STA ram_006E_plr,X
bra_CFFB_RTS:
C - - - - - 0x00100B 00:CFFB: 60        RTS
bra_CFFC:
C - - - - - 0x00100C 00:CFFC: B5 70     LDA ram_0070_plr,X
C - - - - - 0x00100E 00:CFFE: 29 80     AND #$80
C - - - - - 0x001010 00:D000: F0 F9     BEQ bra_CFFB_RTS
C - - - - - 0x001012 00:D002: 20 43 CE  JSR sub_CE43
C - - - - - 0x001015 00:D005: 4C EF CF  JMP loc_CFEF



ofs_002_D008_04:
ofs_002_D008_06:
ofs_002_D008_08:
C - - J - - 0x001018 00:D008: B5 6A     LDA ram_plr_handler,X
C - - - - - 0x00101A 00:D00A: C9 06     CMP #$06
C - - - - - 0x00101C 00:D00C: F0 0A     BEQ bra_D018
C - - - - - 0x00101E 00:D00E: C9 08     CMP #$08
C - - - - - 0x001020 00:D010: F0 0C     BEQ bra_D01E
C - - - - - 0x001022 00:D012: 20 5D CE  JSR sub_CE5D
C - - - - - 0x001025 00:D015: 4C 21 D0  JMP loc_D021
bra_D018:
C - - - - - 0x001028 00:D018: 20 88 CE  JSR sub_CE88
C - - - - - 0x00102B 00:D01B: 4C 21 D0  JMP loc_D021
bra_D01E:
C - - - - - 0x00102E 00:D01E: 20 8B CE  JSR sub_CE8B
loc_D021:
C D 2 - - - 0x001031 00:D021: B5 E0     LDA ram_00E0_plr,X
C - - - - - 0x001033 00:D023: F0 D6     BEQ bra_CFFB_RTS
C - - - - - 0x001035 00:D025: A6 5F     LDX ram_plr_index
C - - - - - 0x001037 00:D027: B5 86     LDA ram_0086_plr,X
C - - - - - 0x001039 00:D029: D0 24     BNE bra_D04F
C - - - - - 0x00103B 00:D02B: B5 6A     LDA ram_plr_handler,X
C - - - - - 0x00103D 00:D02D: C9 04     CMP #$04
C - - - - - 0x00103F 00:D02F: F0 1E     BEQ bra_D04F
C - - - - - 0x001041 00:D031: A5 5F     LDA ram_plr_index
C - - - - - 0x001043 00:D033: 0A        ASL
C - - - - - 0x001044 00:D034: 0A        ASL
C - - - - - 0x001045 00:D035: A8        TAY
C - - - - - 0x001046 00:D036: B9 1C 02  LDA ram_spr_Y + $1C,Y
C - - - - - 0x001049 00:D039: 38        SEC
C - - - - - 0x00104A 00:D03A: E9 01     SBC #$01
C - - - - - 0x00104C 00:D03C: 20 DB CE  JSR sub_CEDB
C - - - - - 0x00104F 00:D03F: B0 0E     BCS bra_D04F
C - - - - - 0x001051 00:D041: B5 E6     LDA ram_00E6_plr,X
C - - - - - 0x001053 00:D043: C9 03     CMP #$03
C - - - - - 0x001055 00:D045: B0 08     BCS bra_D04F
C - - - - - 0x001057 00:D047: A9 01     LDA #$01
C - - - - - 0x001059 00:D049: 95 80     STA ram_0080_plr,X
C - - - - - 0x00105B 00:D04B: 95 86     STA ram_0086_plr,X
C - - - - - 0x00105D 00:D04D: 95 82     STA ram_0082_plr,X
bra_D04F:
C - - - - - 0x00105F 00:D04F: A0 07     LDY #$07
C - - - - - 0x001061 00:D051: B5 60     LDA ram_0060_plr,X
C - - - - - 0x001063 00:D053: C9 0B     CMP #$0B
C - - - - - 0x001065 00:D055: B0 03     BCS bra_D05A
C - - - - - 0x001067 00:D057: F6 60     INC ram_0060_plr,X
C - - - - - 0x001069 00:D059: 88        DEY
bra_D05A:
C - - - - - 0x00106A 00:D05A: 4C 7C D1  JMP loc_D17C



ofs_002_D05D_05:
C - - J - - 0x00106D 00:D05D: F6 60     INC ram_0060_plr,X
C - - - - - 0x00106F 00:D05F: B5 60     LDA ram_0060_plr,X
C - - - - - 0x001071 00:D061: C9 14     CMP #$14
C - - - - - 0x001073 00:D063: B0 17     BCS bra_D07C
C - - - - - 0x001075 00:D065: C9 01     CMP #$01
C - - - - - 0x001077 00:D067: 90 92     BCC bra_CFFB_RTS
C - - - - - 0x001079 00:D069: A0 0A     LDY #$0A
C - - - - - 0x00107B 00:D06B: C9 0B     CMP #$0B
C - - - - - 0x00107D 00:D06D: B0 0A     BCS bra_D079
C - - - - - 0x00107F 00:D06F: C9 07     CMP #$07
C - - - - - 0x001081 00:D071: B0 04     BCS bra_D077
C - - - - - 0x001083 00:D073: A0 07     LDY #$07
C - - - - - 0x001085 00:D075: D0 02     BNE bra_D079    ; jmp
bra_D077:
C - - - - - 0x001087 00:D077: A0 09     LDY #$09
bra_D079:
C - - - - - 0x001089 00:D079: 4C 7C D1  JMP loc_D17C
bra_D07C:
loc_D07C:
C D 2 - - - 0x00108C 00:D07C: A9 01     LDA #$01
C - - - - - 0x00108E 00:D07E: 95 6A     STA ram_plr_handler,X
C - - - - - 0x001090 00:D080: 4A        LSR ; 00
C - - - - - 0x001091 00:D081: 95 60     STA ram_0060_plr,X
C - - - - - 0x001093 00:D083: A8        TAY ; 00
C - - - - - 0x001094 00:D084: F0 F3     BEQ bra_D079    ; jmp



tbl_D086_spr_T:
- D 2 - - - 0x001096 00:D086: 8E D0     .word off_D08E_00
- D 2 - - - 0x001098 00:D088: 94 D0     .word off_D094_01
- D 2 - - - 0x00109A 00:D08A: 9A D0     .word off_D09A_02
- D 2 - - - 0x00109C 00:D08C: A0 D0     .word off_D0A0_03



off_D08E_00:
- D 2 - I - 0x00109E 00:D08E: 68        .byte $68, $69, $6A, $6B, $6C, $6D   ; 

off_D094_01:
- D 2 - I - 0x0010A4 00:D094: 6A        .byte $6A, $69, $68, $6D, $6C, $6B   ; 

off_D09A_02:
- D 2 - I - 0x0010AA 00:D09A: 6D        .byte $6D, $6C, $6B, $6A, $69, $68   ; 

off_D0A0_03:
- D 2 - I - 0x0010B0 00:D0A0: 6B        .byte $6B, $6C, $6D, $68, $69, $6A   ; 



tbl_D0A6:
- D 2 - - - 0x0010B6 00:D0A6: 00        .byte $00   ; 00 
- D 2 - - - 0x0010B7 00:D0A7: 80        .byte $80   ; 01 
- D 2 - - - 0x0010B8 00:D0A8: C0        .byte $C0   ; 02 
- D 2 - - - 0x0010B9 00:D0A9: 40        .byte $40   ; 03 



ofs_002_D0AA_07:
C - - J - - 0x0010BA 00:D0AA: B5 32     LDA ram_0032_plr_timer,X
C - - - - - 0x0010BC 00:D0AC: F0 1C     BEQ bra_D0CA
C - - - - - 0x0010BE 00:D0AE: C9 10     CMP #$10
C - - - - - 0x0010C0 00:D0B0: F0 06     BEQ bra_D0B8
C - - - - - 0x0010C2 00:D0B2: B0 0C     BCS bra_D0C0
C - - - - - 0x0010C4 00:D0B4: A0 0B     LDY #$0B
C - - - - - 0x0010C6 00:D0B6: D0 0F     BNE bra_D0C7    ; jmp
bra_D0B8:
sub_D0B8:
C - - - - - 0x0010C8 00:D0B8: 8A        TXA
C - - - - - 0x0010C9 00:D0B9: 18        CLC
C - - - - - 0x0010CA 00:D0BA: 69 0B     ADC #$0B
C - - - - - 0x0010CC 00:D0BC: AA        TAX
C - - - - - 0x0010CD 00:D0BD: 4C 91 F6  JMP loc_F691
bra_D0C0:
C - - - - - 0x0010D0 00:D0C0: A9 00     LDA #$00
C - - - - - 0x0010D2 00:D0C2: 95 E0     STA ram_00E0_plr,X
C - - - - - 0x0010D4 00:D0C4: 60        RTS



sub_D0C5:
C - - - - - 0x0010D5 00:D0C5: A0 00     LDY #$00
bra_D0C7:
C - - - - - 0x0010D7 00:D0C7: 4C 7C D1  JMP loc_D17C
bra_D0CA:
C - - - - - 0x0010DA 00:D0CA: A6 5F     LDX ram_plr_index
C - - - - - 0x0010DC 00:D0CC: 20 27 D1  JSR sub_D127
C - - - - - 0x0010DF 00:D0CF: 20 C5 D0  JSR sub_D0C5
C - - - - - 0x0010E2 00:D0D2: A0 03     LDY #$03
C - - - - - 0x0010E4 00:D0D4: 20 95 CD  JSR sub_CD95
C - - - - - 0x0010E7 00:D0D7: B5 6C     LDA ram_006C_plr,X
C - - - - - 0x0010E9 00:D0D9: 0A        ASL
C - - - - - 0x0010EA 00:D0DA: A8        TAY
C - - - - - 0x0010EB 00:D0DB: B9 86 D0  LDA tbl_D086_spr_T,Y
C - - - - - 0x0010EE 00:D0DE: 85 00     STA ram_0000
C - - - - - 0x0010F0 00:D0E0: B9 87 D0  LDA tbl_D086_spr_T + $01,Y
C - - - - - 0x0010F3 00:D0E3: 85 01     STA ram_0001
C - - - - - 0x0010F5 00:D0E5: B4 6C     LDY ram_006C_plr,X
C - - - - - 0x0010F7 00:D0E7: B9 A6 D0  LDA tbl_D0A6,Y
C - - - - - 0x0010FA 00:D0EA: 85 02     STA ram_0002
C - - - - - 0x0010FC 00:D0EC: A9 01     LDA #$01
C - - - - - 0x0010FE 00:D0EE: E0 00     CPX #$00
C - - - - - 0x001100 00:D0F0: F0 02     BEQ bra_D0F4
C - - - - - 0x001102 00:D0F2: A9 25     LDA #$25
bra_D0F4:
C - - - - - 0x001104 00:D0F4: AA        TAX
C - - - - - 0x001105 00:D0F5: A0 00     LDY #$00
bra_D0F7_loop:
C - - - - - 0x001107 00:D0F7: B1 00     LDA (ram_0000),Y
C - - - - - 0x001109 00:D0F9: 9D 00 02  STA ram_spr_T - $01,X
C - - - - - 0x00110C 00:D0FC: E8        INX
C - - - - - 0x00110D 00:D0FD: BD 00 02  LDA ram_spr_A - $02,X
C - - - - - 0x001110 00:D100: 29 03     AND #$03
C - - - - - 0x001112 00:D102: 05 02     ORA ram_0002
C - - - - - 0x001114 00:D104: 9D 00 02  STA ram_spr_A - $02,X
C - - - - - 0x001117 00:D107: E8        INX
C - - - - - 0x001118 00:D108: E8        INX
C - - - - - 0x001119 00:D109: E8        INX
C - - - - - 0x00111A 00:D10A: C8        INY
C - - - - - 0x00111B 00:D10B: C0 06     CPY #$06
C - - - - - 0x00111D 00:D10D: 90 E8     BCC bra_D0F7_loop
C - - - - - 0x00111F 00:D10F: A6 5F     LDX ram_plr_index
sub_D111:
C - - - - - 0x001121 00:D111: B5 32     LDA ram_0032_plr_timer,X
C - - - - - 0x001123 00:D113: D0 11     BNE bra_D126_RTS
C - - - - - 0x001125 00:D115: A0 0B     LDY #$0B
bra_D117_loop:
C - - - - - 0x001127 00:D117: B9 90 00  LDA ram_0091_obj - $01,Y
C - - - - - 0x00112A 00:D11A: C9 20     CMP #$20
C - - - - - 0x00112C 00:D11C: D0 05     BNE bra_D123
C - - - - - 0x00112E 00:D11E: A9 FF     LDA #$FF
C - - - - - 0x001130 00:D120: 99 90 00  STA ram_0091_obj - $01,Y
bra_D123:
C - - - - - 0x001133 00:D123: 88        DEY
C - - - - - 0x001134 00:D124: D0 F1     BNE bra_D117_loop
bra_D126_RTS:
C - - - - - 0x001136 00:D126: 60        RTS



sub_D127:
C - - - - - 0x001137 00:D127: A9 01     LDA #$01
C - - - - - 0x001139 00:D129: 95 E4     STA ram_00E4_plr,X
C - - - - - 0x00113B 00:D12B: A9 80     LDA #$80
C - - - - - 0x00113D 00:D12D: 95 E2     STA ram_00E2_plr,X
C - - - - - 0x00113F 00:D12F: A9 01     LDA #$01
C - - - - - 0x001141 00:D131: 95 2F     STA ram_002F_plr,X
sub_D133:
C - - - - - 0x001143 00:D133: B5 66     LDA ram_plr_pos_Y,X
C - - - - - 0x001145 00:D135: 85 01     STA ram_0001
C - - - - - 0x001147 00:D137: A5 5F     LDA ram_plr_index
C - - - - - 0x001149 00:D139: 20 3D C8  JSR sub_C83D
C - - - - - 0x00114C 00:D13C: A6 5F     LDX ram_plr_index
C - - - - - 0x00114E 00:D13E: A5 01     LDA ram_0001
C - - - - - 0x001150 00:D140: 95 66     STA ram_plr_pos_Y,X
C - - - - - 0x001152 00:D142: 60        RTS



sub_D143:
C - - - - - 0x001153 00:D143: B4 6A     LDY ram_plr_handler,X
C - - - - - 0x001155 00:D145: C0 01     CPY #$01
C - - - - - 0x001157 00:D147: D0 17     BNE bra_D160
C - - - - - 0x001159 00:D149: B5 6E     LDA ram_006E_plr,X
C - - - - - 0x00115B 00:D14B: C9 18     CMP #$18
C - - - - - 0x00115D 00:D14D: B0 02     BCS bra_D151
C - - - - - 0x00115F 00:D14F: F6 6E     INC ram_006E_plr,X
bra_D151:
C - - - - - 0x001161 00:D151: B5 76     LDA ram_0076_plr,X
C - - - - - 0x001163 00:D153: 18        CLC
C - - - - - 0x001164 00:D154: 69 20     ADC #$20
C - - - - - 0x001166 00:D156: 95 76     STA ram_0076_plr,X
C - - - - - 0x001168 00:D158: 90 17     BCC bra_D171
C - - - - - 0x00116A 00:D15A: 20 71 D1  JSR sub_D171
C - - - - - 0x00116D 00:D15D: 4C 71 D1  JMP loc_D171
bra_D160:
sub_D160:
C - - - - - 0x001170 00:D160: A9 90     LDA #$90
C - - - - - 0x001172 00:D162: B4 6E     LDY ram_006E_plr,X
C - - - - - 0x001174 00:D164: C0 0C     CPY #$0C
C - - - - - 0x001176 00:D166: B0 02     BCS bra_D16A
C - - - - - 0x001178 00:D168: A9 45     LDA #$45
bra_D16A:
C - - - - - 0x00117A 00:D16A: 18        CLC
C - - - - - 0x00117B 00:D16B: 75 72     ADC ram_0072_plr,X
C - - - - - 0x00117D 00:D16D: 95 72     STA ram_0072_plr,X
C - - - - - 0x00117F 00:D16F: 90 0A     BCC bra_D17B_RTS
bra_D171:
sub_D171:
loc_D171:
C D 2 - - - 0x001181 00:D171: B4 62     LDY ram_0062_plr,X
C - - - - - 0x001183 00:D173: B9 DA CB  LDA tbl_CBDA,Y
C - - - - - 0x001186 00:D176: 18        CLC
C - - - - - 0x001187 00:D177: 75 64     ADC ram_plr_pos_X,X
C - - - - - 0x001189 00:D179: 95 64     STA ram_plr_pos_X,X
bra_D17B_RTS:
C - - - - - 0x00118B 00:D17B: 60        RTS



sub_D17C:
loc_D17C:
C D 2 - - - 0x00118C 00:D17C: B9 B3 CB  LDA tbl_CBB3,Y
C - - - - - 0x00118F 00:D17F: 85 02     STA ram_0002
C - - - - - 0x001191 00:D181: 98        TYA
C - - - - - 0x001192 00:D182: 48        PHA
C - - - - - 0x001193 00:D183: A6 5F     LDX ram_plr_index
C - - - - - 0x001195 00:D185: B5 64     LDA ram_plr_pos_X,X
C - - - - - 0x001197 00:D187: 85 00     STA ram_0000
C - - - - - 0x001199 00:D189: B5 66     LDA ram_plr_pos_Y,X
C - - - - - 0x00119B 00:D18B: C0 0A     CPY #$0A
C - - - - - 0x00119D 00:D18D: D0 03     BNE bra_D192
C - - - - - 0x00119F 00:D18F: 38        SEC
C - - - - - 0x0011A0 00:D190: E9 08     SBC #$08
bra_D192:
C - - - - - 0x0011A2 00:D192: 85 01     STA ram_0001
C - - - - - 0x0011A4 00:D194: B5 62     LDA ram_0062_plr,X
C - - - - - 0x0011A6 00:D196: 85 0F     STA ram_000F
C - - - - - 0x0011A8 00:D198: 8A        TXA
C - - - - - 0x0011A9 00:D199: A8        TAY
C - - - - - 0x0011AA 00:D19A: C8        INY
C - - - - - 0x0011AB 00:D19B: 20 DB D1  JSR sub_D1DB
C - - - - - 0x0011AE 00:D19E: 68        PLA
C - - - - - 0x0011AF 00:D19F: C9 0B     CMP #$0B
C - - - - - 0x0011B1 00:D1A1: F0 04     BEQ bra_D1A7
C - - - - - 0x0011B3 00:D1A3: C9 06     CMP #$06
C - - - - - 0x0011B5 00:D1A5: B0 04     BCS bra_D1AB
bra_D1A7:
C - - - - - 0x0011B7 00:D1A7: A9 F8     LDA #$F8
C - - - - - 0x0011B9 00:D1A9: D0 27     BNE bra_D1D2    ; jmp
bra_D1AB:
C - - - - - 0x0011BB 00:D1AB: 38        SEC
C - - - - - 0x0011BC 00:D1AC: E9 06     SBC #$06
C - - - - - 0x0011BE 00:D1AE: 85 07     STA ram_0007
C - - - - - 0x0011C0 00:D1B0: A4 07     LDY ram_0007
C - - - - - 0x0011C2 00:D1B2: B9 C1 CB  LDA tbl_CBC1,Y
C - - - - - 0x0011C5 00:D1B5: 85 02     STA ram_0002
C - - - - - 0x0011C7 00:D1B7: A5 07     LDA ram_0007
C - - - - - 0x0011C9 00:D1B9: 0A        ASL
C - - - - - 0x0011CA 00:D1BA: 0A        ASL
C - - - - - 0x0011CB 00:D1BB: A8        TAY
C - - - - - 0x0011CC 00:D1BC: A6 5F     LDX ram_plr_index
C - - - - - 0x0011CE 00:D1BE: B5 62     LDA ram_0062_plr,X
C - - - - - 0x0011D0 00:D1C0: F0 02     BEQ bra_D1C4
C - - - - - 0x0011D2 00:D1C2: C8        INY
C - - - - - 0x0011D3 00:D1C3: C8        INY
bra_D1C4:
C - - - - - 0x0011D4 00:D1C4: B9 C6 CB  LDA tbl_CBC6,Y
C - - - - - 0x0011D7 00:D1C7: 18        CLC
C - - - - - 0x0011D8 00:D1C8: 75 64     ADC ram_plr_pos_X,X
C - - - - - 0x0011DA 00:D1CA: 85 00     STA ram_0000
C - - - - - 0x0011DC 00:D1CC: B9 C7 CB  LDA tbl_CBC6 + $01,Y
C - - - - - 0x0011DF 00:D1CF: 18        CLC
C - - - - - 0x0011E0 00:D1D0: 75 66     ADC ram_plr_pos_Y,X
bra_D1D2:
C - - - - - 0x0011E2 00:D1D2: 85 01     STA ram_0001
C - - - - - 0x0011E4 00:D1D4: A0 0B     LDY #$0B
C - - - - - 0x0011E6 00:D1D6: E0 00     CPX #$00
C - - - - - 0x0011E8 00:D1D8: F0 01     BEQ bra_D1DB
C - - - - - 0x0011EA 00:D1DA: C8        INY
bra_D1DB:
sub_D1DB:
C - - - - - 0x0011EB 00:D1DB: A9 01     LDA #$01
C - - - - - 0x0011ED 00:D1DD: 85 0E     STA ram_000E
C - - - - - 0x0011EF 00:D1DF: 20 FC EA  JSR sub_EAFC
C - - - - - 0x0011F2 00:D1E2: A6 5F     LDX ram_plr_index
C - - - - - 0x0011F4 00:D1E4: 60        RTS



sub_D1E5:
C - - - - - 0x0011F5 00:D1E5: A2 01     LDX #$01
bra_D1E7_loop:
C - - - - - 0x0011F7 00:D1E7: B5 5A     LDA ram_005A_plr,X
C - - - - - 0x0011F9 00:D1E9: F0 0A     BEQ bra_D1F5
C - - - - - 0x0011FB 00:D1EB: B5 66     LDA ram_plr_pos_Y,X
C - - - - - 0x0011FD 00:D1ED: 18        CLC
C - - - - - 0x0011FE 00:D1EE: 69 18     ADC #$18
C - - - - - 0x001200 00:D1F0: 20 F9 D1  JSR sub_D1F9
C - - - - - 0x001203 00:D1F3: 95 5A     STA ram_005A_plr,X
bra_D1F5:
C - - - - - 0x001205 00:D1F5: CA        DEX
C - - - - - 0x001206 00:D1F6: 10 EF     BPL bra_D1E7_loop
C - - - - - 0x001208 00:D1F8: 60        RTS



sub_D1F9:
C - - - - - 0x001209 00:D1F9: A0 00     LDY #$00
bra_D1FB_loop:
C - - - - - 0x00120B 00:D1FB: D9 E8 CB  CMP tbl_CBE8,Y
C - - - - - 0x00120E 00:D1FE: 90 06     BCC bra_D206
C - - - - - 0x001210 00:D200: C8        INY
C - - - - - 0x001211 00:D201: C0 05     CPY #$05
C - - - - - 0x001213 00:D203: D0 F6     BNE bra_D1FB_loop
- - - - - - 0x001215 00:D205: 88        DEY
bra_D206:
C - - - - - 0x001216 00:D206: 84 0A     STY ram_000A
C - - - - - 0x001218 00:D208: A5 90     LDA ram_0090
C - - - - - 0x00121A 00:D20A: 38        SEC
C - - - - - 0x00121B 00:D20B: E5 0A     SBC ram_000A
C - - - - - 0x00121D 00:D20D: D0 02     BNE bra_D211_RTS
C - - - - - 0x00121F 00:D20F: A9 01     LDA #$01
bra_D211_RTS:
C - - - - - 0x001221 00:D211: 60        RTS



sub_D212:
C - - - - - 0x001222 00:D212: A5 5A     LDA ram_005A_plr
C - - - - - 0x001224 00:D214: 25 5B     AND ram_005A_plr + $01
C - - - - - 0x001226 00:D216: F0 F9     BEQ bra_D211_RTS
C - - - - - 0x001228 00:D218: A5 2D     LDA ram_002D_plr
C - - - - - 0x00122A 00:D21A: 05 2E     ORA ram_002D_plr + $01
C - - - - - 0x00122C 00:D21C: D0 F3     BNE bra_D211_RTS
C - - - - - 0x00122E 00:D21E: A9 07     LDA #$07
C - - - - - 0x001230 00:D220: C5 6A     CMP ram_plr_handler
C - - - - - 0x001232 00:D222: F0 ED     BEQ bra_D211_RTS
C - - - - - 0x001234 00:D224: C5 6B     CMP ram_plr_handler + $01
C - - - - - 0x001236 00:D226: F0 E9     BEQ bra_D211_RTS
C - - - - - 0x001238 00:D228: 20 D9 D2  JSR sub_D2D9
C - - - - - 0x00123B 00:D22B: B0 E4     BCS bra_D211_RTS
C - - - - - 0x00123D 00:D22D: A9 00     LDA #$00
C - - - - - 0x00123F 00:D22F: 85 02     STA ram_0002
C - - - - - 0x001241 00:D231: A5 6A     LDA ram_plr_handler
C - - - - - 0x001243 00:D233: 4A        LSR
C - - - - - 0x001244 00:D234: B0 24     BCS bra_D25A
C - - - - - 0x001246 00:D236: A5 00     LDA ram_0000
C - - - - - 0x001248 00:D238: C9 09     CMP #$09
C - - - - - 0x00124A 00:D23A: B0 1E     BCS bra_D25A
C - - - - - 0x00124C 00:D23C: A5 66     LDA ram_plr_pos_Y
C - - - - - 0x00124E 00:D23E: C5 67     CMP ram_plr_pos_Y + $01
C - - - - - 0x001250 00:D240: B0 07     BCS bra_D249
C - - - - - 0x001252 00:D242: C9 C3     CMP #$C3
C - - - - - 0x001254 00:D244: B0 05     BCS bra_D24B
C - - - - - 0x001256 00:D246: C6 66     DEC ram_plr_pos_Y
C - - - - - 0x001258 00:D248: 2C        .byte $2C   ; BIT opcode
bra_D249:
C - - - - - 0x001259 00:D249: E6 66     INC ram_plr_pos_Y
bra_D24B:
C - - - - - 0x00125B 00:D24B: A5 62     LDA ram_0062_plr
C - - - - - 0x00125D 00:D24D: F0 03     BEQ bra_D252
C - - - - - 0x00125F 00:D24F: E6 64     INC ram_plr_pos_X
C - - - - - 0x001261 00:D251: 2C        .byte $2C   ; BIT opcode
bra_D252:
C - - - - - 0x001262 00:D252: C6 64     DEC ram_plr_pos_X
C - - - - - 0x001264 00:D254: A9 01     LDA #$01
C - - - - - 0x001266 00:D256: 85 02     STA ram_0002
C - - - - - 0x001268 00:D258: D0 0F     BNE bra_D269    ; jmp
bra_D25A:
C - - - - - 0x00126A 00:D25A: A2 00     LDX #$00
C - - - - - 0x00126C 00:D25C: A5 03     LDA ram_0003
C - - - - - 0x00126E 00:D25E: 10 04     BPL bra_D264
C - - - - - 0x001270 00:D260: A9 00     LDA #$00
C - - - - - 0x001272 00:D262: F0 02     BEQ bra_D266    ; jmp
bra_D264:
C - - - - - 0x001274 00:D264: A9 01     LDA #$01
bra_D266:
C - - - - - 0x001276 00:D266: 20 BC D2  JSR sub_D2BC
bra_D269:
C - - - - - 0x001279 00:D269: A5 6B     LDA ram_plr_handler + $01
C - - - - - 0x00127B 00:D26B: 29 01     AND #$01
C - - - - - 0x00127D 00:D26D: D0 47     BNE bra_D2B6
C - - - - - 0x00127F 00:D26F: A5 00     LDA ram_0000
C - - - - - 0x001281 00:D271: C9 09     CMP #$09
C - - - - - 0x001283 00:D273: B0 41     BCS bra_D2B6
C - - - - - 0x001285 00:D275: A5 67     LDA ram_plr_pos_Y + $01
C - - - - - 0x001287 00:D277: C5 66     CMP ram_plr_pos_Y
C - - - - - 0x001289 00:D279: B0 07     BCS bra_D282
C - - - - - 0x00128B 00:D27B: C9 C3     CMP #$C3
C - - - - - 0x00128D 00:D27D: B0 05     BCS bra_D284
C - - - - - 0x00128F 00:D27F: C6 67     DEC ram_plr_pos_Y + $01
C - - - - - 0x001291 00:D281: 2C        .byte $2C   ; BIT opcode
bra_D282:
C - - - - - 0x001292 00:D282: E6 67     INC ram_plr_pos_Y + $01
bra_D284:
C - - - - - 0x001294 00:D284: A5 02     LDA ram_0002
C - - - - - 0x001296 00:D286: F0 2D     BEQ bra_D2B5_RTS
C - - - - - 0x001298 00:D288: A5 E6     LDA ram_00E6_plr
C - - - - - 0x00129A 00:D28A: 48        PHA
C - - - - - 0x00129B 00:D28B: A5 E7     LDA ram_00E6_plr + $01
C - - - - - 0x00129D 00:D28D: 85 E6     STA ram_00E6_plr
C - - - - - 0x00129F 00:D28F: 68        PLA
C - - - - - 0x0012A0 00:D290: 85 E7     STA ram_00E6_plr + $01
C - - - - - 0x0012A2 00:D292: A5 E8     LDA ram_00E8_plr
C - - - - - 0x0012A4 00:D294: 48        PHA
C - - - - - 0x0012A5 00:D295: A5 E9     LDA ram_00E8_plr + $01
C - - - - - 0x0012A7 00:D297: 85 E8     STA ram_00E8_plr
C - - - - - 0x0012A9 00:D299: 68        PLA
C - - - - - 0x0012AA 00:D29A: 85 E9     STA ram_00E8_plr + $01
C - - - - - 0x0012AC 00:D29C: A2 01     LDX #$01
bra_D29E_loop:
C - - - - - 0x0012AE 00:D29E: B5 E6     LDA ram_00E6_plr,X
C - - - - - 0x0012B0 00:D2A0: C9 06     CMP #$06
C - - - - - 0x0012B2 00:D2A2: 90 04     BCC bra_D2A8
C - - - - - 0x0012B4 00:D2A4: A9 05     LDA #$05
C - - - - - 0x0012B6 00:D2A6: 95 E6     STA ram_00E6_plr,X
bra_D2A8:
C - - - - - 0x0012B8 00:D2A8: CA        DEX
C - - - - - 0x0012B9 00:D2A9: 10 F3     BPL bra_D29E_loop
C - - - - - 0x0012BB 00:D2AB: A9 00     LDA #$00
C - - - - - 0x0012BD 00:D2AD: 85 86     STA ram_0086_plr
C - - - - - 0x0012BF 00:D2AF: 85 87     STA ram_0086_plr + $01
C - - - - - 0x0012C1 00:D2B1: 85 88     STA ram_0088_plr
C - - - - - 0x0012C3 00:D2B3: 85 89     STA ram_0088_plr + $01
bra_D2B5_RTS:
C - - - - - 0x0012C5 00:D2B5: 60        RTS
bra_D2B6:
C - - - - - 0x0012C6 00:D2B6: A2 01     LDX #$01
C - - - - - 0x0012C8 00:D2B8: A5 62     LDA ram_0062_plr
C - - - - - 0x0012CA 00:D2BA: 49 01     EOR #$01
sub_D2BC:   ; X = 00
C - - - - - 0x0012CC 00:D2BC: 95 62     STA ram_0062_plr,X
C - - - - - 0x0012CE 00:D2BE: F0 07     BEQ bra_D2C7
C - - - - - 0x0012D0 00:D2C0: F6 64     INC ram_plr_pos_X,X
C - - - - - 0x0012D2 00:D2C2: F6 64     INC ram_plr_pos_X,X
C - - - - - 0x0012D4 00:D2C4: 4C CB D2  JMP loc_D2CB
bra_D2C7:
C - - - - - 0x0012D7 00:D2C7: D6 64     DEC ram_plr_pos_X,X
C - - - - - 0x0012D9 00:D2C9: D6 64     DEC ram_plr_pos_X,X
loc_D2CB:
C D 2 - - - 0x0012DB 00:D2CB: B5 68     LDA ram_0068_plr,X
C - - - - - 0x0012DD 00:D2CD: 4A        LSR
C - - - - - 0x0012DE 00:D2CE: 90 02     BCC bra_D2D2
C - - - - - 0x0012E0 00:D2D0: A9 02     LDA #$02
bra_D2D2:
C - - - - - 0x0012E2 00:D2D2: 95 68     STA ram_0068_plr,X
C - - - - - 0x0012E4 00:D2D4: A9 18     LDA #$18
C - - - - - 0x0012E6 00:D2D6: 95 6E     STA ram_006E_plr,X
C - - - - - 0x0012E8 00:D2D8: 60        RTS



sub_D2D9:
C - - - - - 0x0012E9 00:D2D9: A5 64     LDA ram_plr_pos_X
C - - - - - 0x0012EB 00:D2DB: 38        SEC
C - - - - - 0x0012EC 00:D2DC: E5 65     SBC ram_plr_pos_X + $01
C - - - - - 0x0012EE 00:D2DE: 85 03     STA ram_0003
C - - - - - 0x0012F0 00:D2E0: 20 F9 D2  JSR sub_D2F9_EOR_if_negative
C - - - - - 0x0012F3 00:D2E3: 85 00     STA ram_0000
C - - - - - 0x0012F5 00:D2E5: C9 0A     CMP #$0A
C - - - - - 0x0012F7 00:D2E7: B0 0F     BCS bra_D2F8_RTS
C - - - - - 0x0012F9 00:D2E9: A5 66     LDA ram_plr_pos_Y
C - - - - - 0x0012FB 00:D2EB: 38        SEC
C - - - - - 0x0012FC 00:D2EC: E5 67     SBC ram_plr_pos_Y + $01
C - - - - - 0x0012FE 00:D2EE: 20 F9 D2  JSR sub_D2F9_EOR_if_negative
C - - - - - 0x001301 00:D2F1: 85 01     STA ram_0001
C - - - - - 0x001303 00:D2F3: C9 15     CMP #$15
C - - - - - 0x001305 00:D2F5: 90 01     BCC bra_D2F8_RTS
C - - - - - 0x001307 00:D2F7: 38        SEC
bra_D2F8_RTS:
C - - - - - 0x001308 00:D2F8: 60        RTS



sub_D2F9_EOR_if_negative:
C - - - - - 0x001309 00:D2F9: 10 05     BPL bra_D300_RTS
sub_D2FB_EOR:
C - - - - - 0x00130B 00:D2FB: 49 FF     EOR #$FF
C - - - - - 0x00130D 00:D2FD: 18        CLC
C - - - - - 0x00130E 00:D2FE: 69 01     ADC #$01
bra_D300_RTS:
C - - - - - 0x001310 00:D300: 60        RTS



sub_D301:
C - - - - - 0x001311 00:D301: A2 00     LDX #$00
C - - - - - 0x001313 00:D303: 20 08 D3  JSR sub_D308
C - - - - - 0x001316 00:D306: A2 01     LDX #$01
sub_D308:
C - - - - - 0x001318 00:D308: B5 5A     LDA ram_005A_plr,X
C - - - - - 0x00131A 00:D30A: F0 65     BEQ bra_D371_RTS
C - - - - - 0x00131C 00:D30C: B5 6A     LDA ram_plr_handler,X
C - - - - - 0x00131E 00:D30E: F0 61     BEQ bra_D371_RTS
C - - - - - 0x001320 00:D310: C9 07     CMP #$07
C - - - - - 0x001322 00:D312: F0 5D     BEQ bra_D371_RTS
C - - - - - 0x001324 00:D314: C9 09     CMP #$09
C - - - - - 0x001326 00:D316: F0 59     BEQ bra_D371_RTS
C - - - - - 0x001328 00:D318: B5 2D     LDA ram_002D_plr,X
C - - - - - 0x00132A 00:D31A: D0 55     BNE bra_D371_RTS
C - - - - - 0x00132C 00:D31C: B5 64     LDA ram_plr_pos_X,X
C - - - - - 0x00132E 00:D31E: 18        CLC
C - - - - - 0x00132F 00:D31F: 69 08     ADC #$08
C - - - - - 0x001331 00:D321: 85 0A     STA ram_000A
C - - - - - 0x001333 00:D323: B5 66     LDA ram_plr_pos_Y,X
C - - - - - 0x001335 00:D325: 18        CLC
C - - - - - 0x001336 00:D326: 69 0C     ADC #$0C
C - - - - - 0x001338 00:D328: 85 0B     STA ram_000B
C - - - - - 0x00133A 00:D32A: 8A        TXA
C - - - - - 0x00133B 00:D32B: 48        PHA
C - - - - - 0x00133C 00:D32C: A0 00     LDY #$00
bra_D32E_loop:
C - - - - - 0x00133E 00:D32E: A9 01     LDA #$01
C - - - - - 0x001340 00:D330: 20 1D DB  JSR sub_DB1D
C - - - - - 0x001343 00:D333: B0 07     BCS bra_D33C
C - - - - - 0x001345 00:D335: C8        INY
C - - - - - 0x001346 00:D336: C0 0B     CPY #$0B
C - - - - - 0x001348 00:D338: 90 F4     BCC bra_D32E_loop
C - - - - - 0x00134A 00:D33A: 68        PLA
C - - - - - 0x00134B 00:D33B: 60        RTS
bra_D33C:
C - - - - - 0x00134C 00:D33C: 68        PLA
C - - - - - 0x00134D 00:D33D: AA        TAX
C - - - - - 0x00134E 00:D33E: A5 55     LDA ram_0055
C - - - - - 0x001350 00:D340: C9 02     CMP #$02
C - - - - - 0x001352 00:D342: F0 4F     BEQ bra_D393
C - - - - - 0x001354 00:D344: C0 01     CPY #$01
C - - - - - 0x001356 00:D346: F0 2A     BEQ bra_D372
C - - - - - 0x001358 00:D348: 20 46 D4  JSR sub_D446
; triggers when an enemy touches you
C - - - - - 0x00135B 00:D34B: A9 20     LDA #$20
C - - - - - 0x00135D 00:D34D: 99 91 00  STA ram_0091_obj,Y ; 0091 0093 
C - - - - - 0x001360 00:D350: C0 02     CPY #$02
C - - - - - 0x001362 00:D352: 90 1D     BCC bra_D371_RTS
; 02+
C - - - - - 0x001364 00:D354: C0 08     CPY #$08
C - - - - - 0x001366 00:D356: B0 19     BCS bra_D371_RTS
; 02-07
C - - - - - 0x001368 00:D358: C0 05     CPY #$05
C - - - - - 0x00136A 00:D35A: B0 0B     BCS bra_D367_05_07
; 02-04
C - - - - - 0x00136C 00:D35C: B9 94 00  LDA ram_0091_obj + $03,Y ; 0096 
C - - - - - 0x00136F 00:D35F: 10 10     BPL bra_D371_RTS
- - - - - - 0x001371 00:D361: A9 20     LDA #$20
- - - - - - 0x001373 00:D363: 99 94 00  STA ram_0091_obj + $03,Y
- - - - - - 0x001376 00:D366: 60        RTS
bra_D367_05_07:
C - - - - - 0x001377 00:D367: B9 8E 00  LDA ram_0091_obj - $03,Y
C - - - - - 0x00137A 00:D36A: 10 05     BPL bra_D371_RTS
C - - - - - 0x00137C 00:D36C: A9 20     LDA #$20
C - - - - - 0x00137E 00:D36E: 99 8E 00  STA ram_0091_obj - $03,Y
bra_D371_RTS:
C - - - - - 0x001381 00:D371: 60        RTS
bra_D372:
- - - - - - 0x001382 00:D372: A0 01     LDY #$01
- - - - - - 0x001384 00:D374: A5 00     LDA ram_0000
- - - - - - 0x001386 00:D376: 30 07     BMI bra_D37F
- - - - - - 0x001388 00:D378: D6 64     DEC ram_plr_pos_X,X
- - - - - - 0x00138A 00:D37A: D6 64     DEC ram_plr_pos_X,X
- - - - - - 0x00138C 00:D37C: C8        INY
- - - - - - 0x00138D 00:D37D: D0 04     BNE bra_D383
bra_D37F:
- - - - - - 0x00138F 00:D37F: F6 64     INC ram_plr_pos_X,X
- - - - - - 0x001391 00:D381: F6 64     INC ram_plr_pos_X,X
bra_D383:
- - - - - - 0x001393 00:D383: B5 6A     LDA ram_plr_handler,X
- - - - - - 0x001395 00:D385: 29 01     AND #$01
- - - - - - 0x001397 00:D387: F0 07     BEQ bra_D390_RTS
- - - - - - 0x001399 00:D389: 94 68     STY ram_0068_plr,X
- - - - - - 0x00139B 00:D38B: 98        TYA
- - - - - - 0x00139C 00:D38C: 29 01     AND #$01
- - - - - - 0x00139E 00:D38E: 95 62     STA ram_0062_plr,X
bra_D390_RTS:
- - - - - - 0x0013A0 00:D390: 60        RTS



tbl_D391_plr_counters_start_address:
- D 2 - - - 0x0013A1 00:D391: 00        .byte $00   ; 00 1p
- D 2 - - - 0x0013A2 00:D392: 05        .byte $05   ; 01 2p



bra_D393:
C - - - - - 0x0013A3 00:D393: C0 03     CPY #$03
C - - - - - 0x0013A5 00:D395: 90 14     BCC bra_D3AB_RTS
C - - - - - 0x0013A7 00:D397: C0 09     CPY #$09
C - - - - - 0x0013A9 00:D399: B0 10     BCS bra_D3AB_RTS
C - - - - - 0x0013AB 00:D39B: A9 01     LDA #$01
C - - - - - 0x0013AD 00:D39D: 99 91 00  STA ram_0091_obj,Y
C - - - - - 0x0013B0 00:D3A0: BD 91 D3  LDA tbl_D391_plr_counters_start_address,X
C - - - - - 0x0013B3 00:D3A3: AA        TAX
C - - - - - 0x0013B4 00:D3A4: FE 61 03  INC ram_plr_counter_fruits,X
C - - - - - 0x0013B7 00:D3A7: A9 10     LDA #con_sfx_2_collect_fruit
C - - - - - 0x0013B9 00:D3A9: 85 FE     STA ram_sfx_2
bra_D3AB_RTS:
C - - - - - 0x0013BB 00:D3AB: 60        RTS



sub_D3AC:
C - - - - - 0x0013BC 00:D3AC: A2 00     LDX #$00
C - - - - - 0x0013BE 00:D3AE: 20 B3 D3  JSR sub_D3B3
C - - - - - 0x0013C1 00:D3B1: A2 01     LDX #$01
sub_D3B3:
C - - - - - 0x0013C3 00:D3B3: B5 5A     LDA ram_005A_plr,X
C - - - - - 0x0013C5 00:D3B5: F0 3E     BEQ bra_D3F5_RTS
C - - - - - 0x0013C7 00:D3B7: 8A        TXA
C - - - - - 0x0013C8 00:D3B8: 0A        ASL
C - - - - - 0x0013C9 00:D3B9: 0A        ASL
C - - - - - 0x0013CA 00:D3BA: A8        TAY
C - - - - - 0x0013CB 00:D3BB: B9 1C 02  LDA ram_spr_Y + $1C,Y
C - - - - - 0x0013CE 00:D3BE: 18        CLC
C - - - - - 0x0013CF 00:D3BF: 69 0A     ADC #$0A
C - - - - - 0x0013D1 00:D3C1: 85 0B     STA ram_000B
C - - - - - 0x0013D3 00:D3C3: B9 1F 02  LDA ram_spr_X + $1C,Y
C - - - - - 0x0013D6 00:D3C6: 18        CLC
C - - - - - 0x0013D7 00:D3C7: 69 04     ADC #$04
C - - - - - 0x0013D9 00:D3C9: 85 0A     STA ram_000A
C - - - - - 0x0013DB 00:D3CB: 86 09     STX ram_0009
C - - - - - 0x0013DD 00:D3CD: A0 0A     LDY #$0A
bra_D3CF_loop:
C - - - - - 0x0013DF 00:D3CF: A6 09     LDX ram_0009
C - - - - - 0x0013E1 00:D3D1: C0 00     CPY #$00
C - - - - - 0x0013E3 00:D3D3: F0 04     BEQ bra_D3D9
C - - - - - 0x0013E5 00:D3D5: C0 08     CPY #$08
C - - - - - 0x0013E7 00:D3D7: 90 06     BCC bra_D3DF
bra_D3D9:
C - - - - - 0x0013E9 00:D3D9: B5 6A     LDA ram_plr_handler,X
C - - - - - 0x0013EB 00:D3DB: C9 04     CMP #$04
C - - - - - 0x0013ED 00:D3DD: F0 0C     BEQ bra_D3EB
bra_D3DF:
C - - - - - 0x0013EF 00:D3DF: B5 6A     LDA ram_plr_handler,X
C - - - - - 0x0013F1 00:D3E1: C9 05     CMP #$05
C - - - - - 0x0013F3 00:D3E3: D0 0D     BNE bra_D3F2
C - - - - - 0x0013F5 00:D3E5: B5 60     LDA ram_0060_plr,X
C - - - - - 0x0013F7 00:D3E7: C9 09     CMP #$09
C - - - - - 0x0013F9 00:D3E9: D0 07     BNE bra_D3F2
bra_D3EB:
C - - - - - 0x0013FB 00:D3EB: A9 00     LDA #$00
C - - - - - 0x0013FD 00:D3ED: 20 1D DB  JSR sub_DB1D
C - - - - - 0x001400 00:D3F0: B0 04     BCS bra_D3F6
bra_D3F2:
C - - - - - 0x001402 00:D3F2: 88        DEY
C - - - - - 0x001403 00:D3F3: 10 DA     BPL bra_D3CF_loop
bra_D3F5_RTS:
C - - - - - 0x001405 00:D3F5: 60        RTS
bra_D3F6:
C - - - - - 0x001406 00:D3F6: A6 09     LDX ram_0009
; triggers when you hit an object (enemy, ice block carried by a seal) with a hammer
C - - - - - 0x001408 00:D3F8: A9 01     LDA #$01
C - - - - - 0x00140A 00:D3FA: C0 01     CPY #$01
C - - - - - 0x00140C 00:D3FC: D0 02     BNE bra_D400
- - - - - - 0x00140E 00:D3FE: A9 05     LDA #$05
bra_D400:
C - - - - - 0x001410 00:D400: 99 91 00  STA ram_0091_obj,Y
C - - - - - 0x001413 00:D403: A9 00     LDA #$00
C - - - - - 0x001415 00:D405: 99 B1 03  STA ram_03B1_obj,Y
C - - - - - 0x001418 00:D408: A9 FF     LDA #$FF
C - - - - - 0x00141A 00:D40A: 99 D2 03  STA ram_03D2_obj,Y
C - - - - - 0x00141D 00:D40D: 8A        TXA
C - - - - - 0x00141E 00:D40E: 48        PHA
C - - - - - 0x00141F 00:D40F: 20 21 D4  JSR sub_D421
C - - - - - 0x001422 00:D412: 68        PLA
C - - - - - 0x001423 00:D413: AA        TAX
C - - - - - 0x001424 00:D414: C0 00     CPY #$00
C - - - - - 0x001426 00:D416: F0 DD     BEQ bra_D3F5_RTS
C - - - - - 0x001428 00:D418: C0 08     CPY #$08
C - - - - - 0x00142A 00:D41A: B0 D9     BCS bra_D3F5_RTS
C - - - - - 0x00142C 00:D41C: 86 5F     STX ram_plr_index
C - - - - - 0x00142E 00:D41E: 4C 7C D0  JMP loc_D07C



sub_D421:
C - - - - - 0x001431 00:D421: BD 91 D3  LDA tbl_D391_plr_counters_start_address,X
C - - - - - 0x001434 00:D424: AA        TAX
C - - - - - 0x001435 00:D425: C0 00     CPY #$00
C - - - - - 0x001437 00:D427: D0 08     BNE bra_D431
C - - - - - 0x001439 00:D429: FE 63 03  INC ram_plr_counter_birds,X
C - - - - - 0x00143C 00:D42C: A9 01     LDA #con_sfx_2_kill_bird
C - - - - - 0x00143E 00:D42E: 85 FE     STA ram_sfx_2
C - - - - - 0x001440 00:D430: 60        RTS
bra_D431:
C - - - - - 0x001441 00:D431: C0 05     CPY #$05
C - - - - - 0x001443 00:D433: 90 07     BCC bra_D43C
C - - - - - 0x001445 00:D435: C0 08     CPY #$08
C - - - - - 0x001447 00:D437: B0 08     BCS bra_D441
C - - - - - 0x001449 00:D439: FE 62 03  INC ram_plr_counter_ice,X
bra_D43C:
C - - - - - 0x00144C 00:D43C: A9 08     LDA #con_sfx_3_kill_seal_or_ice
C - - - - - 0x00144E 00:D43E: 85 FF     STA ram_sfx_3
C - - - - - 0x001450 00:D440: 60        RTS
bra_D441:
C - - - - - 0x001451 00:D441: A9 02     LDA #con_sfx_1_block_placed_or_destroyed
C - - - - - 0x001453 00:D443: 85 FC     STA ram_sfx_1
C - - - - - 0x001455 00:D445: 60        RTS



sub_D446:
C - - - - - 0x001456 00:D446: A9 07     LDA #$07
C - - - - - 0x001458 00:D448: 95 6A     STA ram_plr_handler,X
C - - - - - 0x00145A 00:D44A: B5 5A     LDA ram_005A_plr,X
C - - - - - 0x00145C 00:D44C: 9D 82 03  STA ram_0382_obj,X
C - - - - - 0x00145F 00:D44F: 8A        TXA
C - - - - - 0x001460 00:D450: 48        PHA
C - - - - - 0x001461 00:D451: 18        CLC
C - - - - - 0x001462 00:D452: 69 0D     ADC #$0D
C - - - - - 0x001464 00:D454: AA        TAX
C - - - - - 0x001465 00:D455: 20 91 F6  JSR sub_F691
C - - - - - 0x001468 00:D458: 68        PLA
C - - - - - 0x001469 00:D459: AA        TAX
C - - - - - 0x00146A 00:D45A: A9 40     LDA #$40
C - - - - - 0x00146C 00:D45C: 95 32     STA ram_0032_plr_timer,X
C - - - - - 0x00146E 00:D45E: A9 01     LDA #con_sfx_3_plr_deadh
C - - - - - 0x001470 00:D460: 85 FF     STA ram_sfx_3
C - - - - - 0x001472 00:D462: 60        RTS



sub_D463:
C - - - - - 0x001473 00:D463: A2 00     LDX #$00
bra_D465_loop:
C - - - - - 0x001475 00:D465: B5 5A     LDA ram_005A_plr,X
C - - - - - 0x001477 00:D467: F0 1E     BEQ bra_D487
C - - - - - 0x001479 00:D469: B5 66     LDA ram_plr_pos_Y,X
C - - - - - 0x00147B 00:D46B: 18        CLC
C - - - - - 0x00147C 00:D46C: 69 19     ADC #$19
C - - - - - 0x00147E 00:D46E: 20 DB CE  JSR sub_CEDB
C - - - - - 0x001481 00:D471: B0 14     BCS bra_D487
C - - - - - 0x001483 00:D473: C0 0A     CPY #$0A
C - - - - - 0x001485 00:D475: D0 10     BNE bra_D487
C - - - - - 0x001487 00:D477: A9 00     LDA #$00
C - - - - - 0x001489 00:D479: 95 5A     STA ram_005A_plr,X
C - - - - - 0x00148B 00:D47B: 95 E0     STA ram_00E0_plr,X
C - - - - - 0x00148D 00:D47D: B5 2D     LDA ram_002D_plr,X
C - - - - - 0x00148F 00:D47F: D0 02     BNE bra_D483
C - - - - - 0x001491 00:D481: D6 20     DEC ram_plr_lives,X
bra_D483:
C - - - - - 0x001493 00:D483: A9 08     LDA #$08
C - - - - - 0x001495 00:D485: 95 3F     STA ram_003F_plr_timer,X
bra_D487:
C - - - - - 0x001497 00:D487: E8        INX
C - - - - - 0x001498 00:D488: E0 02     CPX #$02
C - - - - - 0x00149A 00:D48A: D0 D9     BNE bra_D465_loop
bra_D48C_RTS:
C - - - - - 0x00149C 00:D48C: 60        RTS



tbl_D48D:
- D 2 - - - 0x00149D 00:D48D: 2C        .byte $2C   ; 00 
- D 2 - - - 0x00149E 00:D48E: 64        .byte $64   ; 01 
- D 2 - - - 0x00149F 00:D48F: AC        .byte $AC   ; 02 



tbl_D490:
- D 2 - - - 0x0014A0 00:D490: 4C        .byte $4C   ; 00 
- D 2 - - - 0x0014A1 00:D491: 94        .byte $94   ; 01 
- D 2 - - - 0x0014A2 00:D492: CC        .byte $CC   ; 02 



sub_D493:
C - - - - - 0x0014A3 00:D493: A2 01     LDX #$01
bra_D495_loop:
C - - - - - 0x0014A5 00:D495: B5 5A     LDA ram_005A_plr,X
C - - - - - 0x0014A7 00:D497: C9 09     CMP #$09
C - - - - - 0x0014A9 00:D499: D0 33     BNE bra_D4CE
C - - - - - 0x0014AB 00:D49B: A0 02     LDY #$02
bra_D49D_loop:
C - - - - - 0x0014AD 00:D49D: B5 64     LDA ram_plr_pos_X,X
C - - - - - 0x0014AF 00:D49F: D9 8D D4  CMP tbl_D48D,Y
C - - - - - 0x0014B2 00:D4A2: 90 05     BCC bra_D4A9
C - - - - - 0x0014B4 00:D4A4: D9 90 D4  CMP tbl_D490,Y
C - - - - - 0x0014B7 00:D4A7: 90 05     BCC bra_D4AE
bra_D4A9:
C - - - - - 0x0014B9 00:D4A9: 88        DEY
C - - - - - 0x0014BA 00:D4AA: 10 F1     BPL bra_D49D_loop
C - - - - - 0x0014BC 00:D4AC: 30 20     BMI bra_D4CE    ; jmp
bra_D4AE:
C - - - - - 0x0014BE 00:D4AE: B5 E6     LDA ram_00E6_plr,X
C - - - - - 0x0014C0 00:D4B0: C9 03     CMP #$03
C - - - - - 0x0014C2 00:D4B2: 90 0C     BCC bra_D4C0
C - - - - - 0x0014C4 00:D4B4: B5 66     LDA ram_plr_pos_Y,X
C - - - - - 0x0014C6 00:D4B6: C9 14     CMP #$14
C - - - - - 0x0014C8 00:D4B8: B0 14     BCS bra_D4CE
C - - - - - 0x0014CA 00:D4BA: C9 10     CMP #$10
C - - - - - 0x0014CC 00:D4BC: B0 14     BCS bra_D4D2
C - - - - - 0x0014CE 00:D4BE: 90 0E     BCC bra_D4CE    ; jmp
bra_D4C0:
C - - - - - 0x0014D0 00:D4C0: B5 66     LDA ram_plr_pos_Y,X
C - - - - - 0x0014D2 00:D4C2: C9 2C     CMP #$2C
C - - - - - 0x0014D4 00:D4C4: B0 08     BCS bra_D4CE
C - - - - - 0x0014D6 00:D4C6: C9 28     CMP #$28
C - - - - - 0x0014D8 00:D4C8: 90 04     BCC bra_D4CE
- - - - - - 0x0014DA 00:D4CA: A9 03     LDA #$03
- - - - - - 0x0014DC 00:D4CC: 95 E6     STA ram_00E6_plr,X
bra_D4CE:
C - - - - - 0x0014DE 00:D4CE: CA        DEX
C - - - - - 0x0014DF 00:D4CF: 10 C4     BPL bra_D495_loop
C - - - - - 0x0014E1 00:D4D1: 60        RTS
bra_D4D2:
C - - - - - 0x0014E2 00:D4D2: A9 10     LDA #$10
C - - - - - 0x0014E4 00:D4D4: 95 66     STA ram_plr_pos_Y,X
C - - - - - 0x0014E6 00:D4D6: A9 09     LDA #$09
C - - - - - 0x0014E8 00:D4D8: C5 5A     CMP ram_005A_plr
C - - - - - 0x0014EA 00:D4DA: F0 08     BEQ bra_D4E4
C - - - - - 0x0014EC 00:D4DC: C5 5B     CMP ram_005A_plr + $01
C - - - - - 0x0014EE 00:D4DE: D0 AC     BNE bra_D48C_RTS
C - - - - - 0x0014F0 00:D4E0: A9 01     LDA #$01
C - - - - - 0x0014F2 00:D4E2: D0 0A     BNE bra_D4EE    ; jmp
bra_D4E4:
C - - - - - 0x0014F4 00:D4E4: A9 00     LDA #$00
C - - - - - 0x0014F6 00:D4E6: A4 5B     LDY ram_005A_plr + $01
C - - - - - 0x0014F8 00:D4E8: C0 09     CPY #$09
C - - - - - 0x0014FA 00:D4EA: D0 02     BNE bra_D4EE
C - - - - - 0x0014FC 00:D4EC: A9 02     LDA #$02
bra_D4EE:
C - - - - - 0x0014FE 00:D4EE: 85 26     STA ram_0026_flag
C - - - - - 0x001500 00:D4F0: A9 02     LDA #$02
C - - - - - 0x001502 00:D4F2: 2C        .byte $2C   ; BIT opcode
C - - - - - 0x001503 00:D4F3: A9 01     LDA #$01
sub_D4F5:
loc_D4F5:
C D 2 - - - 0x001505 00:D4F5: 85 55     STA ram_0055
C - - - - - 0x001507 00:D4F7: A9 80     LDA #con_music_off
C - - - - - 0x001509 00:D4F9: 85 FB     STA ram_music_1
C - - - - - 0x00150B 00:D4FB: 0A        ASL ; 00
C - - - - - 0x00150C 00:D4FC: 85 34     STA ram_0034_timer
C - - - - - 0x00150E 00:D4FE: 85 51     STA ram_0051
ofs_002_D500_09_RTS:
C - - - - - 0x001510 00:D500: 60        RTS



tbl_D501:
- D 2 - - - 0x001511 00:D501: 01        .byte $01   ; 00 
- D 2 - - - 0x001512 00:D502: 02        .byte $02   ; 01 
- - - - - - 0x001513 00:D503: 04        .byte $04   ; 02 
- - - - - - 0x001514 00:D504: 04        .byte $04   ; 03  



tbl_D505:
- D 2 - - - 0x001515 00:D505: 0A        .byte $0A   ; 00 
- D 2 - - - 0x001516 00:D506: 05        .byte $05   ; 01 



sub_D507:
C - - - - - 0x001517 00:D507: A5 13     LDA ram_scroll_Y
C - - - - - 0x001519 00:D509: D0 3C     BNE bra_D547
C - - - - - 0x00151B 00:D50B: B5 66     LDA ram_plr_pos_Y,X
C - - - - - 0x00151D 00:D50D: C9 26     CMP #$26
C - - - - - 0x00151F 00:D50F: B0 36     BCS bra_D547
C - - - - - 0x001521 00:D511: AD 61 03  LDA ram_plr_counter_fruits
C - - - - - 0x001524 00:D514: 6D 66 03  ADC ram_plr_counter_fruits + $05
C - - - - - 0x001527 00:D517: 4A        LSR
C - - - - - 0x001528 00:D518: 29 03     AND #$03
C - - - - - 0x00152A 00:D51A: A8        TAY
C - - - - - 0x00152B 00:D51B: B9 01 D5  LDA tbl_D501,Y
C - - - - - 0x00152E 00:D51E: 85 01     STA ram_0001
C - - - - - 0x001530 00:D520: A4 D5     LDY ram_00D4 + $01
C - - - - - 0x001532 00:D522: B9 05 D5  LDA tbl_D505,Y
C - - - - - 0x001535 00:D525: 18        CLC
C - - - - - 0x001536 00:D526: 65 D6     ADC ram_giant_bird_X_pos
C - - - - - 0x001538 00:D528: 85 00     STA ram_0000
C - - - - - 0x00153A 00:D52A: D5 64     CMP ram_plr_pos_X,X
C - - - - - 0x00153C 00:D52C: B0 19     BCS bra_D547
C - - - - - 0x00153E 00:D52E: 65 01     ADC ram_0001
C - - - - - 0x001540 00:D530: D5 64     CMP ram_plr_pos_X,X
C - - - - - 0x001542 00:D532: 90 13     BCC bra_D547
C - - - - - 0x001544 00:D534: A5 00     LDA ram_0000
C - - - - - 0x001546 00:D536: 95 64     STA ram_plr_pos_X,X
C - - - - - 0x001548 00:D538: E8        INX
C - - - - - 0x001549 00:D539: 86 1E     STX ram_001E
C - - - - - 0x00154B 00:D53B: CA        DEX
C - - - - - 0x00154C 00:D53C: A9 06     LDA #$06
C - - - - - 0x00154E 00:D53E: 95 6A     STA ram_plr_handler,X
C - - - - - 0x001550 00:D540: A9 10     LDA #con_music_mountain_complete
C - - - - - 0x001552 00:D542: 85 FB     STA ram_music_1
C - - - - - 0x001554 00:D544: 0A        ASL ; 20
C - - - - - 0x001555 00:D545: 85 4D     STA ram_004D_timer
bra_D547:
C - - - - - 0x001557 00:D547: A5 5F     LDA ram_plr_index
C - - - - - 0x001559 00:D549: 0A        ASL
C - - - - - 0x00155A 00:D54A: 0A        ASL
C - - - - - 0x00155B 00:D54B: A8        TAY
C - - - - - 0x00155C 00:D54C: A9 F8     LDA #$F8
C - - - - - 0x00155E 00:D54E: 99 1C 02  STA ram_spr_Y + $1C,Y
C - - - - - 0x001561 00:D551: 60        RTS



sub_D552:
C - - - - - 0x001562 00:D552: B5 6A     LDA ram_plr_handler,X
C - - - - - 0x001564 00:D554: C9 01     CMP #$01
C - - - - - 0x001566 00:D556: F0 09     BEQ bra_D561
C - - - - - 0x001568 00:D558: C9 02     CMP #$02
C - - - - - 0x00156A 00:D55A: F0 0B     BEQ bra_D567
C - - - - - 0x00156C 00:D55C: C9 03     CMP #$03
C - - - - - 0x00156E 00:D55E: F0 04     BEQ bra_D564
C - - - - - 0x001570 00:D560: 60        RTS
bra_D561:
C - - - - - 0x001571 00:D561: 4C B0 CD  JMP loc_CDB0
bra_D564:
C - - - - - 0x001574 00:D564: 4C C6 CF  JMP loc_CFC6
bra_D567:
C - - - - - 0x001577 00:D567: A9 A8     LDA #$A8
C - - - - - 0x001579 00:D569: 95 E2     STA ram_00E2_plr,X
C - - - - - 0x00157B 00:D56B: A9 03     LDA #$03
C - - - - - 0x00157D 00:D56D: 95 E4     STA ram_00E4_plr,X
C - - - - - 0x00157F 00:D56F: B5 68     LDA ram_0068_plr,X
C - - - - - 0x001581 00:D571: D0 1A     BNE bra_D58D
C - - - - - 0x001583 00:D573: B5 E6     LDA ram_00E6_plr,X
C - - - - - 0x001585 00:D575: C9 03     CMP #$03
C - - - - - 0x001587 00:D577: 90 14     BCC bra_D58D
C - - - - - 0x001589 00:D579: B5 70     LDA ram_0070_plr,X
C - - - - - 0x00158B 00:D57B: 29 03     AND #$03
C - - - - - 0x00158D 00:D57D: F0 0E     BEQ bra_D58D
C - - - - - 0x00158F 00:D57F: 95 68     STA ram_0068_plr,X
C - - - - - 0x001591 00:D581: C9 01     CMP #$01
C - - - - - 0x001593 00:D583: F0 02     BEQ bra_D587
C - - - - - 0x001595 00:D585: A9 00     LDA #$00
bra_D587:
C - - - - - 0x001597 00:D587: 95 62     STA ram_0062_plr,X
C - - - - - 0x001599 00:D589: A9 0F     LDA #$0F
C - - - - - 0x00159B 00:D58B: 95 6E     STA ram_006E_plr,X
bra_D58D:
C - - - - - 0x00159D 00:D58D: B5 68     LDA ram_0068_plr,X
C - - - - - 0x00159F 00:D58F: F0 03     BEQ bra_D594
C - - - - - 0x0015A1 00:D591: 20 60 D1  JSR sub_D160
bra_D594:
C - - - - - 0x0015A4 00:D594: 20 33 D1  JSR sub_D133
C - - - - - 0x0015A7 00:D597: A0 07     LDY #$07
C - - - - - 0x0015A9 00:D599: 4C 7C D1  JMP loc_D17C



sub_D59C:
C - - - - - 0x0015AC 00:D59C: A9 00     LDA #$00
C - - - - - 0x0015AE 00:D59E: 95 2A     STA ram_002A_plr,X
C - - - - - 0x0015B0 00:D5A0: A5 13     LDA ram_scroll_Y
C - - - - - 0x0015B2 00:D5A2: 18        CLC
C - - - - - 0x0015B3 00:D5A3: 75 66     ADC ram_plr_pos_Y,X
C - - - - - 0x0015B5 00:D5A5: B0 09     BCS bra_D5B0
C - - - - - 0x0015B7 00:D5A7: 95 28     STA ram_0028_plr,X
C - - - - - 0x0015B9 00:D5A9: A4 27     LDY ram_0027_flag
C - - - - - 0x0015BB 00:D5AB: F0 07     BEQ bra_D5B4
C - - - - - 0x0015BD 00:D5AD: 38        SEC
C - - - - - 0x0015BE 00:D5AE: E9 10     SBC #$10
bra_D5B0:
C - - - - - 0x0015C0 00:D5B0: 95 28     STA ram_0028_plr,X
C - - - - - 0x0015C2 00:D5B2: F6 2A     INC ram_002A_plr,X
bra_D5B4:
C - - - - - 0x0015C4 00:D5B4: B5 2A     LDA ram_002A_plr,X
C - - - - - 0x0015C6 00:D5B6: 85 09     STA ram_0009
C - - - - - 0x0015C8 00:D5B8: B5 28     LDA ram_0028_plr,X
C - - - - - 0x0015CA 00:D5BA: 85 0B     STA ram_000B
C - - - - - 0x0015CC 00:D5BC: 18        CLC
C - - - - - 0x0015CD 00:D5BD: 69 18     ADC #$18
C - - - - - 0x0015CF 00:D5BF: 85 0A     STA ram_000A
C - - - - - 0x0015D1 00:D5C1: 90 02     BCC bra_D5C5_not_overflow
C - - - - - 0x0015D3 00:D5C3: E6 09     INC ram_0009
bra_D5C5_not_overflow:
C - - - - - 0x0015D5 00:D5C5: B5 64     LDA ram_plr_pos_X,X
C - - - - - 0x0015D7 00:D5C7: 85 0D     STA ram_000D
C - - - - - 0x0015D9 00:D5C9: 18        CLC
C - - - - - 0x0015DA 00:D5CA: 69 10     ADC #$10
C - - - - - 0x0015DC 00:D5CC: 85 0C     STA ram_000C
C - - - - - 0x0015DE 00:D5CE: BD 52 03  LDA ram_0352_plr,X
C - - - - - 0x0015E1 00:D5D1: D0 75     BNE bra_D648
C - - - - - 0x0015E3 00:D5D3: A0 00     LDY #$00
bra_D5D5_loop:
C - - - - - 0x0015E5 00:D5D5: B9 E0 06  LDA ram_06E0_bouns_stage_data,Y
C - - - - - 0x0015E8 00:D5D8: 30 29     BMI bra_D603
C - - - - - 0x0015EA 00:D5DA: C5 09     CMP ram_0009
C - - - - - 0x0015EC 00:D5DC: D0 25     BNE bra_D603
C - - - - - 0x0015EE 00:D5DE: B9 68 06  LDA ram_0668_data,Y
C - - - - - 0x0015F1 00:D5E1: E9 08     SBC #$08
C - - - - - 0x0015F3 00:D5E3: D5 64     CMP ram_plr_pos_X,X
C - - - - - 0x0015F5 00:D5E5: B0 1C     BCS bra_D603
C - - - - - 0x0015F7 00:D5E7: B9 86 06  LDA ram_0686_data,Y
C - - - - - 0x0015FA 00:D5EA: 38        SEC
C - - - - - 0x0015FB 00:D5EB: E9 08     SBC #$08
C - - - - - 0x0015FD 00:D5ED: D5 64     CMP ram_plr_pos_X,X
C - - - - - 0x0015FF 00:D5EF: 90 12     BCC bra_D603
C - - - - - 0x001601 00:D5F1: A5 0A     LDA ram_000A
C - - - - - 0x001603 00:D5F3: E9 03     SBC #$03
C - - - - - 0x001605 00:D5F5: D9 A4 06  CMP ram_06A4,Y
C - - - - - 0x001608 00:D5F8: F0 1D     BEQ bra_D617
C - - - - - 0x00160A 00:D5FA: B0 07     BCS bra_D603
C - - - - - 0x00160C 00:D5FC: 69 04     ADC #$04
C - - - - - 0x00160E 00:D5FE: D9 A4 06  CMP ram_06A4,Y
C - - - - - 0x001611 00:D601: B0 14     BCS bra_D617
bra_D603:
C - - - - - 0x001613 00:D603: C8        INY
C - - - - - 0x001614 00:D604: C0 1E     CPY #$1E
C - - - - - 0x001616 00:D606: D0 CD     BNE bra_D5D5_loop
C - - - - - 0x001618 00:D608: A9 02     LDA #$02
C - - - - - 0x00161A 00:D60A: D5 6A     CMP ram_plr_handler,X
C - - - - - 0x00161C 00:D60C: F0 2D     BEQ bra_D63B
C - - - - - 0x00161E 00:D60E: 95 6A     STA ram_plr_handler,X
C - - - - - 0x001620 00:D610: A9 03     LDA #$03
C - - - - - 0x001622 00:D612: 95 E6     STA ram_00E6_plr,X
C - - - - - 0x001624 00:D614: 4A        LSR ; 01
C - - - - - 0x001625 00:D615: D0 22     BNE bra_D639
bra_D617:
C - - - - - 0x001627 00:D617: 98        TYA
C - - - - - 0x001628 00:D618: 9D 83 07  STA ram_0783_plr,X
C - - - - - 0x00162B 00:D61B: B5 6A     LDA ram_plr_handler,X
C - - - - - 0x00162D 00:D61D: C9 01     CMP #$01
C - - - - - 0x00162F 00:D61F: F0 0E     BEQ bra_D62F
C - - - - - 0x001631 00:D621: C9 03     CMP #$03
C - - - - - 0x001633 00:D623: F0 16     BEQ bra_D63B
C - - - - - 0x001635 00:D625: B5 E6     LDA ram_00E6_plr,X
C - - - - - 0x001637 00:D627: C9 03     CMP #$03
C - - - - - 0x001639 00:D629: 90 10     BCC bra_D63B
C - - - - - 0x00163B 00:D62B: A9 03     LDA #$03
C - - - - - 0x00163D 00:D62D: 95 6A     STA ram_plr_handler,X
bra_D62F:
C - - - - - 0x00163F 00:D62F: B9 A4 06  LDA ram_06A4,Y
C - - - - - 0x001642 00:D632: 38        SEC
C - - - - - 0x001643 00:D633: E9 19     SBC #$19
C - - - - - 0x001645 00:D635: 95 28     STA ram_0028_plr,X
C - - - - - 0x001647 00:D637: A9 00     LDA #$00
bra_D639:
C - - - - - 0x001649 00:D639: 95 E0     STA ram_00E0_plr,X
bra_D63B:
C - - - - - 0x00164B 00:D63B: 20 E0 D6  JSR sub_D6E0
C - - - - - 0x00164E 00:D63E: B5 28     LDA ram_0028_plr,X
C - - - - - 0x001650 00:D640: 38        SEC
C - - - - - 0x001651 00:D641: E5 0B     SBC ram_000B
C - - - - - 0x001653 00:D643: 18        CLC
C - - - - - 0x001654 00:D644: 75 66     ADC ram_plr_pos_Y,X
C - - - - - 0x001656 00:D646: 95 66     STA ram_plr_pos_Y,X
bra_D648:
C - - - - - 0x001658 00:D648: A6 5F     LDX ram_plr_index
C - - - - - 0x00165A 00:D64A: A9 00     LDA #$00
C - - - - - 0x00165C 00:D64C: 9D 52 03  STA ram_0352_plr,X
C - - - - - 0x00165F 00:D64F: B5 6A     LDA ram_plr_handler,X
C - - - - - 0x001661 00:D651: F0 78     BEQ bra_D6CB_RTS
C - - - - - 0x001663 00:D653: A5 13     LDA ram_scroll_Y
C - - - - - 0x001665 00:D655: 15 2A     ORA ram_002A_plr,X
C - - - - - 0x001667 00:D657: D0 10     BNE bra_D669
C - - - - - 0x001669 00:D659: B5 64     LDA ram_plr_pos_X,X
C - - - - - 0x00166B 00:D65B: C9 2B     CMP #$2B
C - - - - - 0x00166D 00:D65D: 90 6D     BCC bra_D6CC
C - - - - - 0x00166F 00:D65F: C9 C6     CMP #$C6
C - - - - - 0x001671 00:D661: B0 69     BCS bra_D6CC
C - - - - - 0x001673 00:D663: B5 28     LDA ram_0028_plr,X
C - - - - - 0x001675 00:D665: C9 58     CMP #$58
C - - - - - 0x001677 00:D667: 90 62     BCC bra_D6CB_RTS
bra_D669:
C - - - - - 0x001679 00:D669: A9 00     LDA #$00
C - - - - - 0x00167B 00:D66B: 85 09     STA ram_0009
C - - - - - 0x00167D 00:D66D: B5 28     LDA ram_0028_plr,X
C - - - - - 0x00167F 00:D66F: 38        SEC
C - - - - - 0x001680 00:D670: E9 57     SBC #$57
C - - - - - 0x001682 00:D672: 90 0C     BCC bra_D680
C - - - - - 0x001684 00:D674: B4 2A     LDY ram_002A_plr,X
C - - - - - 0x001686 00:D676: 84 09     STY ram_0009
C - - - - - 0x001688 00:D678: F0 0A     BEQ bra_D684
C - - - - - 0x00168A 00:D67A: 18        CLC
C - - - - - 0x00168B 00:D67B: 69 20     ADC #$20
C - - - - - 0x00168D 00:D67D: 4C 84 D6  JMP loc_D684
bra_D680:
C - - - - - 0x001690 00:D680: B4 2A     LDY ram_002A_plr,X
C - - - - - 0x001692 00:D682: F0 13     BEQ bra_D697
bra_D684:
loc_D684:
C D 2 - - - 0x001694 00:D684: A0 00     LDY #$00
bra_D686_loop:
C - - - - - 0x001696 00:D686: C9 38     CMP #$38
C - - - - - 0x001698 00:D688: 90 05     BCC bra_D68F
C - - - - - 0x00169A 00:D68A: E9 38     SBC #$38
C - - - - - 0x00169C 00:D68C: C8        INY
C - - - - - 0x00169D 00:D68D: D0 F7     BNE bra_D686_loop
bra_D68F:
C - - - - - 0x00169F 00:D68F: A5 09     LDA ram_0009
C - - - - - 0x0016A1 00:D691: F0 04     BEQ bra_D697
C - - - - - 0x0016A3 00:D693: C8        INY
C - - - - - 0x0016A4 00:D694: C8        INY
C - - - - - 0x0016A5 00:D695: C8        INY
C - - - - - 0x0016A6 00:D696: C8        INY
bra_D697:
C - - - - - 0x0016A7 00:D697: A9 A8     LDA #$A8
bra_D699_loop:
C - - - - - 0x0016A9 00:D699: C0 00     CPY #$00
C - - - - - 0x0016AB 00:D69B: F0 06     BEQ bra_D6A3
C - - - - - 0x0016AD 00:D69D: 18        CLC
C - - - - - 0x0016AE 00:D69E: 69 08     ADC #$08
C - - - - - 0x0016B0 00:D6A0: 88        DEY
C - - - - - 0x0016B1 00:D6A1: D0 F6     BNE bra_D699_loop
bra_D6A3:
C - - - - - 0x0016B3 00:D6A3: 85 0A     STA ram_000A
C - - - - - 0x0016B5 00:D6A5: 38        SEC
C - - - - - 0x0016B6 00:D6A6: E9 A8     SBC #$A8
C - - - - - 0x0016B8 00:D6A8: 85 09     STA ram_0009
C - - - - - 0x0016BA 00:D6AA: A9 48     LDA #$48
C - - - - - 0x0016BC 00:D6AC: 38        SEC
C - - - - - 0x0016BD 00:D6AD: E5 09     SBC ram_0009
C - - - - - 0x0016BF 00:D6AF: 85 0B     STA ram_000B
C - - - - - 0x0016C1 00:D6B1: B5 64     LDA ram_plr_pos_X,X
C - - - - - 0x0016C3 00:D6B3: C5 0A     CMP ram_000A
C - - - - - 0x0016C5 00:D6B5: 90 08     BCC bra_D6BF
C - - - - - 0x0016C7 00:D6B7: A5 0A     LDA ram_000A
C - - - - - 0x0016C9 00:D6B9: 95 64     STA ram_plr_pos_X,X
C - - - - - 0x0016CB 00:D6BB: A9 00     LDA #$00
C - - - - - 0x0016CD 00:D6BD: F0 0A     BEQ bra_D6C9    ; jmp
bra_D6BF:
C - - - - - 0x0016CF 00:D6BF: C5 0B     CMP ram_000B
C - - - - - 0x0016D1 00:D6C1: B0 08     BCS bra_D6CB_RTS
C - - - - - 0x0016D3 00:D6C3: A5 0B     LDA ram_000B
C - - - - - 0x0016D5 00:D6C5: 95 64     STA ram_plr_pos_X,X
C - - - - - 0x0016D7 00:D6C7: A9 01     LDA #$01
bra_D6C9:
C - - - - - 0x0016D9 00:D6C9: 95 62     STA ram_0062_plr,X
bra_D6CB_RTS:
C - - - - - 0x0016DB 00:D6CB: 60        RTS
bra_D6CC:
C - - - - - 0x0016DC 00:D6CC: A9 02     LDA #$02
C - - - - - 0x0016DE 00:D6CE: D5 6A     CMP ram_plr_handler,X
C - - - - - 0x0016E0 00:D6D0: F0 0A     BEQ bra_D6DC
- - - - - - 0x0016E2 00:D6D2: 95 6A     STA ram_plr_handler,X
- - - - - - 0x0016E4 00:D6D4: A9 03     LDA #$03
- - - - - - 0x0016E6 00:D6D6: 95 E6     STA ram_00E6_plr,X
- - - - - - 0x0016E8 00:D6D8: A9 01     LDA #$01
- - - - - - 0x0016EA 00:D6DA: 95 E0     STA ram_00E0_plr,X
bra_D6DC:
C - - - - - 0x0016EC 00:D6DC: FE 52 03  INC ram_0352_plr,X
C - - - - - 0x0016EF 00:D6DF: 60        RTS



sub_D6E0:
C - - - - - 0x0016F0 00:D6E0: B5 E6     LDA ram_00E6_plr,X
C - - - - - 0x0016F2 00:D6E2: C9 04     CMP #$04
C - - - - - 0x0016F4 00:D6E4: B0 34     BCS bra_D71A_RTS
C - - - - - 0x0016F6 00:D6E6: A0 00     LDY #$00
bra_D6E8_loop:
C - - - - - 0x0016F8 00:D6E8: B9 E0 06  LDA ram_06E0_bouns_stage_data,Y
C - - - - - 0x0016FB 00:D6EB: 30 28     BMI bra_D715
C - - - - - 0x0016FD 00:D6ED: D5 2A     CMP ram_002A_plr,X
C - - - - - 0x0016FF 00:D6EF: D0 24     BNE bra_D715
C - - - - - 0x001701 00:D6F1: A5 0B     LDA ram_000B
C - - - - - 0x001703 00:D6F3: 38        SEC
C - - - - - 0x001704 00:D6F4: E9 02     SBC #$02
C - - - - - 0x001706 00:D6F6: D9 C2 06  CMP ram_06C2_data,Y
C - - - - - 0x001709 00:D6F9: B0 1A     BCS bra_D715
C - - - - - 0x00170B 00:D6FB: 69 04     ADC #$04
C - - - - - 0x00170D 00:D6FD: D9 C2 06  CMP ram_06C2_data,Y
C - - - - - 0x001710 00:D700: 90 13     BCC bra_D715
C - - - - - 0x001712 00:D702: B9 68 06  LDA ram_0668_data,Y
C - - - - - 0x001715 00:D705: E9 0A     SBC #$0A
C - - - - - 0x001717 00:D707: D5 64     CMP ram_plr_pos_X,X
C - - - - - 0x001719 00:D709: B0 0A     BCS bra_D715
C - - - - - 0x00171B 00:D70B: B9 86 06  LDA ram_0686_data,Y
C - - - - - 0x00171E 00:D70E: 38        SEC
C - - - - - 0x00171F 00:D70F: E9 06     SBC #$06
C - - - - - 0x001721 00:D711: D5 64     CMP ram_plr_pos_X,X
C - - - - - 0x001723 00:D713: B0 06     BCS bra_D71B
bra_D715:
C - - - - - 0x001725 00:D715: C8        INY
C - - - - - 0x001726 00:D716: C0 1E     CPY #$1E
C - - - - - 0x001728 00:D718: D0 CE     BNE bra_D6E8_loop
bra_D71A_RTS:
C - - - - - 0x00172A 00:D71A: 60        RTS
bra_D71B:
C - - - - - 0x00172B 00:D71B: A9 04     LDA #$04
C - - - - - 0x00172D 00:D71D: 95 E6     STA ram_00E6_plr,X
C - - - - - 0x00172F 00:D71F: A9 20     LDA #$20
C - - - - - 0x001731 00:D721: 95 E8     STA ram_00E8_plr,X
bra_D723_RTS:
C - - - - - 0x001733 00:D723: 60        RTS



sub_D724:
C - - - - - 0x001734 00:D724: A2 01     LDX #$01
bra_D726_loop:
C - - - - - 0x001736 00:D726: B5 6A     LDA ram_plr_handler,X
C - - - - - 0x001738 00:D728: C9 06     CMP #$06
C - - - - - 0x00173A 00:D72A: F0 20     BEQ bra_D74C
C - - - - - 0x00173C 00:D72C: B5 66     LDA ram_plr_pos_Y,X
C - - - - - 0x00173E 00:D72E: C9 D4     CMP #$D4
C - - - - - 0x001740 00:D730: 90 1A     BCC bra_D74C
C - - - - - 0x001742 00:D732: A9 F8     LDA #$F8
C - - - - - 0x001744 00:D734: 95 66     STA ram_plr_pos_Y,X
C - - - - - 0x001746 00:D736: A9 00     LDA #$00
C - - - - - 0x001748 00:D738: 95 6A     STA ram_plr_handler,X
C - - - - - 0x00174A 00:D73A: 95 5A     STA ram_005A_plr,X
C - - - - - 0x00174C 00:D73C: B5 20     LDA ram_plr_lives,X
C - - - - - 0x00174E 00:D73E: 30 0C     BMI bra_D74C
C - - - - - 0x001750 00:D740: 8A        TXA
C - - - - - 0x001751 00:D741: 48        PHA
C - - - - - 0x001752 00:D742: BD BF CB  LDA tbl_CBBF_oam_lo,X
C - - - - - 0x001755 00:D745: A2 06     LDX #$06
C - - - - - 0x001757 00:D747: 20 21 C8  JSR sub_C821_hide_sprites_starting_from_A
C - - - - - 0x00175A 00:D74A: 68        PLA
C - - - - - 0x00175B 00:D74B: AA        TAX
bra_D74C:
C - - - - - 0x00175C 00:D74C: CA        DEX
C - - - - - 0x00175D 00:D74D: 10 D7     BPL bra_D726_loop
C - - - - - 0x00175F 00:D74F: A5 6A     LDA ram_plr_handler
C - - - - - 0x001761 00:D751: D0 D0     BNE bra_D723_RTS
C - - - - - 0x001763 00:D753: A5 6B     LDA ram_plr_handler + $01
C - - - - - 0x001765 00:D755: D0 CC     BNE bra_D723_RTS
C - - - - - 0x001767 00:D757: 85 1E     STA ram_001E
C - - - - - 0x001769 00:D759: A9 03     LDA #$03
C - - - - - 0x00176B 00:D75B: 4C F5 D4  JMP loc_D4F5



tbl_D75E:
- D 2 - - - 0x00176E 00:D75E: 80        .byte $80   ; 00 
- D 2 - - - 0x00176F 00:D75F: 5D        .byte $5D   ; 01 
- D 2 - - - 0x001770 00:D760: 3E        .byte $3E   ; 02 
- D 2 - - - 0x001771 00:D761: 1F        .byte $1F   ; 03 



tbl_D762:
- D 2 - - - 0x001772 00:D762: 02        .byte < (ram_0500_data + $02)   ; 00 
- D 2 - - - 0x001773 00:D763: 00        .byte < (ram_0500_data + $00)   ; 01 
- D 2 - - - 0x001774 00:D764: 18        .byte < (ram_0500_data + $18)   ; 02 
- D 2 - - - 0x001775 00:D765: 30        .byte < (ram_0500_data + $30)   ; 03 
- D 2 - - - 0x001776 00:D766: 48        .byte < (ram_0500_data + $48)   ; 04 
- D 2 - - - 0x001777 00:D767: 60        .byte < (ram_0500_data + $60)   ; 05 
- D 2 - - - 0x001778 00:D768: 78        .byte < (ram_0500_data + $78)   ; 06 
- D 2 - - - 0x001779 00:D769: 90        .byte < (ram_0500_data + $90)   ; 07 
- D 2 - - - 0x00177A 00:D76A: A8        .byte < (ram_0500_data + $A8)   ; 08 
- D 2 - - - 0x00177B 00:D76B: C0        .byte < (ram_0500_data + $C0)   ; 09 
- - - - - - 0x00177C 00:D76C: D8        .byte < (ram_0500_data + $D8)   ; 0A 



tbl_D76D_ppu_hi:
- D 2 - I - 0x00177D 00:D76D: 2A        .byte > $2A20   ; 00 
- D 2 - I - 0x00177E 00:D76E: 29        .byte > $2960   ; 01 
- D 2 - I - 0x00177F 00:D76F: 28        .byte > $28A0   ; 02 
- D 2 - I - 0x001780 00:D770: 23        .byte > $23A0   ; 03 
- D 2 - I - 0x001781 00:D771: 22        .byte > $22E0   ; 04 
- D 2 - I - 0x001782 00:D772: 22        .byte > $2220   ; 05 
- D 2 - I - 0x001783 00:D773: 21        .byte > $2160   ; 06 
- D 2 - I - 0x001784 00:D774: 20        .byte > $20A0   ; 07 
- D 2 - I - 0x001785 00:D775: 2B        .byte > $2BA0   ; 08 



tbl_D776_ppu_lo:
- D 2 - I - 0x001786 00:D776: 20        .byte < $2A20   ; 00 
- D 2 - I - 0x001787 00:D777: 60        .byte < $2960   ; 01 
- D 2 - I - 0x001788 00:D778: A0        .byte < $28A0   ; 02 
- D 2 - I - 0x001789 00:D779: A0        .byte < $23A0   ; 03 
- D 2 - I - 0x00178A 00:D77A: E0        .byte < $22E0   ; 04 
- D 2 - I - 0x00178B 00:D77B: 20        .byte < $2220   ; 05 
- D 2 - I - 0x00178C 00:D77C: 60        .byte < $2160   ; 06 
- D 2 - I - 0x00178D 00:D77D: A0        .byte < $20A0   ; 07 
- D 2 - I - 0x00178E 00:D77E: A0        .byte < $2BA0   ; 08 



tbl_D77F_match:
- D 2 - - - 0x00178F 00:D77F: 00        .byte $00   ; 00 
- D 2 - - - 0x001790 00:D780: 01        .byte $01   ; 01 
- D 2 - - - 0x001791 00:D781: 02        .byte $02   ; 02 
- D 2 - - - 0x001792 00:D782: 03        .byte $03   ; 03 
- D 2 - - - 0x001793 00:D783: 04        .byte $04   ; 04 
- D 2 - - - 0x001794 00:D784: FF        .byte $FF   ; 05 



tbl_D785_replace:
- D 2 - - - 0x001795 00:D785: EB        .byte $EB   ; 00 
- D 2 - - - 0x001796 00:D786: 90        .byte $90   ; 01 
- - - - - - 0x001797 00:D787: 91        .byte $91   ; 02 
- D 2 - - - 0x001798 00:D788: EB        .byte $EB   ; 03 
- D 2 - - - 0x001799 00:D789: EB        .byte $EB   ; 04 
- D 2 - - - 0x00179A 00:D78A: 38        .byte $38   ; 05 



tbl_D78B_ppu_hi:
- - - - - - 0x00179B 00:D78B: 2A        .byte > $2A40   ; 00 
- D 2 - - - 0x00179C 00:D78C: 29        .byte > $2980   ; 01 
- D 2 - - - 0x00179D 00:D78D: 28        .byte > $28C0   ; 02 
- D 2 - - - 0x00179E 00:D78E: 28        .byte > $2800   ; 03 
- D 2 - - - 0x00179F 00:D78F: 23        .byte > $2300   ; 04 
- D 2 - - - 0x0017A0 00:D790: 22        .byte > $2240   ; 05 
- D 2 - - - 0x0017A1 00:D791: 21        .byte > $2180   ; 06 
- D 2 - - - 0x0017A2 00:D792: 20        .byte > $20C0   ; 07 
- D 2 - - - 0x0017A3 00:D793: 20        .byte > $2000   ; 08 



tbl_D794_ppu_lo:
- - - - - - 0x0017A4 00:D794: 40        .byte < $2A40   ; 00 
- D 2 - - - 0x0017A5 00:D795: 80        .byte < $2980   ; 01 
- D 2 - - - 0x0017A6 00:D796: C0        .byte < $28C0   ; 02 
- D 2 - - - 0x0017A7 00:D797: 00        .byte < $2800   ; 03 
- D 2 - - - 0x0017A8 00:D798: 00        .byte < $2300   ; 04 
- D 2 - - - 0x0017A9 00:D799: 40        .byte < $2240   ; 05 
- D 2 - - - 0x0017AA 00:D79A: 80        .byte < $2180   ; 06 
- D 2 - - - 0x0017AB 00:D79B: C0        .byte < $20C0   ; 07 
- D 2 - - - 0x0017AC 00:D79C: 00        .byte < $2000   ; 08 



tbl_D79D_replace:
- - - - - - 0x0017AD 00:D79D: EB        .byte $EB   ; 00 
- D 2 - - - 0x0017AE 00:D79E: 90        .byte $90   ; 01 
- D 2 - - - 0x0017AF 00:D79F: 92        .byte $92   ; 02 
- - - - - - 0x0017B0 00:D7A0: EB        .byte $EB   ; 03 
- D 2 - - - 0x0017B1 00:D7A1: EB        .byte $EB   ; 04 
- D 2 - - - 0x0017B2 00:D7A2: 38        .byte $38   ; 05 



tbl_D7A3_pos_X:
- D 2 - - - 0x0017B3 00:D7A3: 20        .byte $20   ; 00 
- D 2 - - - 0x0017B4 00:D7A4: 20        .byte $20   ; 01 
- D 2 - - - 0x0017B5 00:D7A5: 20        .byte $20   ; 02 
- D 2 - - - 0x0017B6 00:D7A6: 28        .byte $28   ; 03 
- D 2 - - - 0x0017B7 00:D7A7: 28        .byte $28   ; 04 
- D 2 - - - 0x0017B8 00:D7A8: 28        .byte $28   ; 05 
- D 2 - - - 0x0017B9 00:D7A9: 30        .byte $30   ; 06 
- D 2 - - - 0x0017BA 00:D7AA: 30        .byte $30   ; 07 
- D 2 - - - 0x0017BB 00:D7AB: 30        .byte $30   ; 08 
- D 2 - - - 0x0017BC 00:D7AC: 30        .byte $30   ; 09 



tbl_D7AD_pos_X:
- D 2 - - - 0x0017BD 00:D7AD: E0        .byte $E0   ; 00 
- D 2 - - - 0x0017BE 00:D7AE: E0        .byte $E0   ; 01 
- D 2 - - - 0x0017BF 00:D7AF: E0        .byte $E0   ; 02 
- D 2 - - - 0x0017C0 00:D7B0: D8        .byte $D8   ; 03 
- D 2 - - - 0x0017C1 00:D7B1: D8        .byte $D8   ; 04 
- D 2 - - - 0x0017C2 00:D7B2: D8        .byte $D8   ; 05 
- D 2 - - - 0x0017C3 00:D7B3: D0        .byte $D0   ; 06 
- D 2 - - - 0x0017C4 00:D7B4: D0        .byte $D0   ; 07 
- D 2 - - - 0x0017C5 00:D7B5: D0        .byte $D0   ; 08 
- D 2 - - - 0x0017C6 00:D7B6: D0        .byte $D0   ; 09 



tbl_D7B7_pos_Y:
- D 2 - - - 0x0017C7 00:D7B7: 0C        .byte $0C   ; 00 
- D 2 - - - 0x0017C8 00:D7B8: 08        .byte $08   ; 01 
- D 2 - - - 0x0017C9 00:D7B9: 0C        .byte $0C   ; 02 
- D 2 - - - 0x0017CA 00:D7BA: 0C        .byte $0C   ; 03 
- D 2 - - - 0x0017CB 00:D7BB: 0C        .byte $0C   ; 04 
- D 2 - - - 0x0017CC 00:D7BC: 08        .byte $08   ; 05 



tbl_D7BD_pos_X:
- D 2 - - - 0x0017CD 00:D7BD: 08        .byte $08   ; 00 
- D 2 - - - 0x0017CE 00:D7BE: 08        .byte $08   ; 01 
- D 2 - - - 0x0017CF 00:D7BF: 08        .byte $08   ; 02 
- D 2 - - - 0x0017D0 00:D7C0: 08        .byte $08   ; 03 
- D 2 - - - 0x0017D1 00:D7C1: 08        .byte $08   ; 04 
- D 2 - - - 0x0017D2 00:D7C2: 04        .byte $04   ; 05 
- D 2 - - - 0x0017D3 00:D7C3: 04        .byte $04   ; 06 
- - - - - - 0x0017D4 00:D7C4: 04        .byte $04   ; 07 
- D 2 - - - 0x0017D5 00:D7C5: 04        .byte $04   ; 08 
- D 2 - - - 0x0017D6 00:D7C6: 04        .byte $04   ; 09 
- D 2 - - - 0x0017D7 00:D7C7: 04        .byte $04   ; 0A 



tbl_D7C8:
- D 2 - - - 0x0017D8 00:D7C8: 0B        .byte $0B   ; 00 
- D 2 - - - 0x0017D9 00:D7C9: 10        .byte $10   ; 01 
- D 2 - - - 0x0017DA 00:D7CA: 0B        .byte $0B   ; 02 
- D 2 - - - 0x0017DB 00:D7CB: 0B        .byte $0B   ; 03 
- D 2 - - - 0x0017DC 00:D7CC: 0B        .byte $0B   ; 04 
- D 2 - - - 0x0017DD 00:D7CD: 08        .byte $08   ; 05 
- D 2 - - - 0x0017DE 00:D7CE: 08        .byte $08   ; 06 
- - - - - - 0x0017DF 00:D7CF: 08        .byte $08   ; 07 
- D 2 - - - 0x0017E0 00:D7D0: 08        .byte $08   ; 08 
- D 2 - - - 0x0017E1 00:D7D1: 08        .byte $08   ; 09 
- - - - - - 0x0017E2 00:D7D2: 08        .byte $08   ; 0A 



tbl_D7D3:
- D 2 - - - 0x0017E3 00:D7D3: 08        .byte $08   ; 00 
- D 2 - - - 0x0017E4 00:D7D4: 0C        .byte $0C   ; 01 
- D 2 - - - 0x0017E5 00:D7D5: 08        .byte $08   ; 02 
- D 2 - - - 0x0017E6 00:D7D6: 08        .byte $08   ; 03 
- D 2 - - - 0x0017E7 00:D7D7: 08        .byte $08   ; 04 
- D 2 - - - 0x0017E8 00:D7D8: 08        .byte $08   ; 05 
- D 2 - - - 0x0017E9 00:D7D9: 08        .byte $08   ; 06 
- - - - - - 0x0017EA 00:D7DA: 08        .byte $08   ; 07 
- D 2 - - - 0x0017EB 00:D7DB: 06        .byte $06   ; 08 
- D 2 - - - 0x0017EC 00:D7DC: 06        .byte $06   ; 09 
- D 2 - - - 0x0017ED 00:D7DD: 06        .byte $06   ; 0A 



loc_D7DE:
C D 2 - - - 0x0017EE 00:D7DE: A5 8C     LDA ram_008C_flag
C - - - - - 0x0017F0 00:D7E0: D0 4C     BNE bra_D82E_RTS
C - - - - - 0x0017F2 00:D7E2: A5 3D     LDA ram_spawn_timer_lo_bear
C - - - - - 0x0017F4 00:D7E4: D0 16     BNE bra_D7FC
C - - - - - 0x0017F6 00:D7E6: A5 2C     LDA ram_spawn_timer_hi_bear
C - - - - - 0x0017F8 00:D7E8: F0 07     BEQ bra_D7F1
C - - - - - 0x0017FA 00:D7EA: C6 2C     DEC ram_spawn_timer_hi_bear
C - - - - - 0x0017FC 00:D7EC: A9 FF     LDA #$FF
C - - - - - 0x0017FE 00:D7EE: 85 3D     STA ram_spawn_timer_lo_bear
C - - - - - 0x001800 00:D7F0: 60        RTS
bra_D7F1:
C - - - - - 0x001801 00:D7F1: A5 7C     LDA ram_007C
C - - - - - 0x001803 00:D7F3: D0 03     BNE bra_D7F8
C - - - - - 0x001805 00:D7F5: E6 7C     INC ram_007C
C - - - - - 0x001807 00:D7F7: 60        RTS
bra_D7F8:
C - - - - - 0x001808 00:D7F8: C9 80     CMP #$80
C - - - - - 0x00180A 00:D7FA: F0 1A     BEQ bra_D816
bra_D7FC:
C - - - - - 0x00180C 00:D7FC: A2 01     LDX #$01
bra_D7FE_loop:
C - - - - - 0x00180E 00:D7FE: B5 6A     LDA ram_plr_handler,X
C - - - - - 0x001810 00:D800: C9 01     CMP #$01
C - - - - - 0x001812 00:D802: D0 06     BNE bra_D80A
C - - - - - 0x001814 00:D804: A5 90     LDA ram_0090
C - - - - - 0x001816 00:D806: D5 5A     CMP ram_005A_plr,X
C - - - - - 0x001818 00:D808: F0 05     BEQ bra_D80F
bra_D80A:
C - - - - - 0x00181A 00:D80A: CA        DEX
C - - - - - 0x00181B 00:D80B: 10 F1     BPL bra_D7FE_loop
C - - - - - 0x00181D 00:D80D: 30 1F     BMI bra_D82E_RTS    ; jmp
bra_D80F:
C - - - - - 0x00181F 00:D80F: A9 01     LDA #$01
C - - - - - 0x001821 00:D811: 8D 76 03  STA ram_0376_flag
C - - - - - 0x001824 00:D814: D0 03     BNE bra_D819    ; jmp
bra_D816:
C - - - - - 0x001826 00:D816: 20 15 E2  JSR sub_E215
bra_D819:
C - - - - - 0x001829 00:D819: A5 90     LDA ram_0090
C - - - - - 0x00182B 00:D81B: C9 09     CMP #$09
C - - - - - 0x00182D 00:D81D: F0 0F     BEQ bra_D82E_RTS
loc_D81F:
C D 2 - - - 0x00182F 00:D81F: A9 0C     LDA #$0C
C - - - - - 0x001831 00:D821: 85 8B     STA ram_008B
C - - - - - 0x001833 00:D823: 85 8C     STA ram_008C_flag
C - - - - - 0x001835 00:D825: E6 90     INC ram_0090
C - - - - - 0x001837 00:D827: A5 8A     LDA ram_008A
C - - - - - 0x001839 00:D829: 18        CLC
C - - - - - 0x00183A 00:D82A: 69 06     ADC #$06
C - - - - - 0x00183C 00:D82C: 85 8A     STA ram_008A
bra_D82E_RTS:
C - - - - - 0x00183E 00:D82E: 60        RTS



sub_D82F:
C - - - - - 0x00183F 00:D82F: A5 8C     LDA ram_008C_flag
C - - - - - 0x001841 00:D831: F0 54     BEQ bra_D887_RTS
C - - - - - 0x001843 00:D833: 20 7A E2  JSR sub_E27A
C - - - - - 0x001846 00:D836: 20 02 E0  JSR sub_E002
C - - - - - 0x001849 00:D839: 20 51 EC  JSR sub_EC51
C - - - - - 0x00184C 00:D83C: 20 0F D9  JSR sub_D90F
C - - - - - 0x00184F 00:D83F: A2 00     LDX #$00
C - - - - - 0x001851 00:D841: 20 11 D1  JSR sub_D111
C - - - - - 0x001854 00:D844: A2 01     LDX #$01
C - - - - - 0x001856 00:D846: 20 11 D1  JSR sub_D111
C - - - - - 0x001859 00:D849: A5 13     LDA ram_scroll_Y
C - - - - - 0x00185B 00:D84B: 38        SEC
C - - - - - 0x00185C 00:D84C: E9 04     SBC #$04
C - - - - - 0x00185E 00:D84E: 85 13     STA ram_scroll_Y
C - - - - - 0x001860 00:D850: 20 EA D8  JSR sub_D8EA
C - - - - - 0x001863 00:D853: C6 8B     DEC ram_008B
C - - - - - 0x001865 00:D855: D0 30     BNE bra_D887_RTS
C - - - - - 0x001867 00:D857: A9 00     LDA #$00
C - - - - - 0x001869 00:D859: 85 8C     STA ram_008C_flag
C - - - - - 0x00186B 00:D85B: 20 FD D8  JSR sub_D8FD_reset_bear_spawn_timer
C - - - - - 0x00186E 00:D85E: 20 3D E6  JSR sub_E63D
C - - - - - 0x001871 00:D861: A2 07     LDX #$07
bra_D863_loop:
C - - - - - 0x001873 00:D863: E0 00     CPX #$00
C - - - - - 0x001875 00:D865: F0 1D     BEQ bra_D884
C - - - - - 0x001877 00:D867: B5 91     LDA ram_0091_obj,X
C - - - - - 0x001879 00:D869: F0 19     BEQ bra_D884
C - - - - - 0x00187B 00:D86B: A5 90     LDA ram_0090
C - - - - - 0x00187D 00:D86D: 38        SEC
C - - - - - 0x00187E 00:D86E: F5 B2     SBC ram_00B2_obj,X
C - - - - - 0x001880 00:D870: C9 04     CMP #$04
C - - - - - 0x001882 00:D872: 90 10     BCC bra_D884
- - - - - - 0x001884 00:D874: 20 88 D8  JSR sub_D888
- - - - - - 0x001887 00:D877: E0 02     CPX #$02
- - - - - - 0x001889 00:D879: 90 09     BCC bra_D884
- - - - - - 0x00188B 00:D87B: E0 05     CPX #$05
- - - - - - 0x00188D 00:D87D: B0 05     BCS bra_D884
- - - - - - 0x00188F 00:D87F: A9 00     LDA #$00
- - - - - - 0x001891 00:D881: 9D 82 03  STA ram_0382_obj,X
bra_D884:
C - - - - - 0x001894 00:D884: CA        DEX
C - - - - - 0x001895 00:D885: 10 DC     BPL bra_D863_loop
bra_D887_RTS:
C - - - - - 0x001897 00:D887: 60        RTS



sub_D888:
loc_D888:
C D 2 - - - 0x001898 00:D888: 8A        TXA
C - - - - - 0x001899 00:D889: 18        CLC
C - - - - - 0x00189A 00:D88A: 69 83     ADC #$83
C - - - - - 0x00189C 00:D88C: 9D E8 03  STA ram_03E8_obj,X
C - - - - - 0x00189F 00:D88F: 60        RTS



loc_D890:
C D 2 - - - 0x0018A0 00:D890: A5 8C     LDA ram_008C_flag
C - - - - - 0x0018A2 00:D892: D0 11     BNE bra_D8A5_RTS
C - - - - - 0x0018A4 00:D894: A2 01     LDX #$01
bra_D896_loop:
C - - - - - 0x0018A6 00:D896: B5 6A     LDA ram_plr_handler,X
C - - - - - 0x0018A8 00:D898: C9 01     CMP #$01
C - - - - - 0x0018AA 00:D89A: D0 06     BNE bra_D8A2
C - - - - - 0x0018AC 00:D89C: B5 66     LDA ram_plr_pos_Y,X
C - - - - - 0x0018AE 00:D89E: C9 60     CMP #$60
C - - - - - 0x0018B0 00:D8A0: 90 04     BCC bra_D8A6
bra_D8A2:
C D 2 - - - 0x0018B2 00:D8A2: CA        DEX
C - - - - - 0x0018B3 00:D8A3: 10 F1     BPL bra_D896_loop
bra_D8A5_RTS:
C - - - - - 0x0018B5 00:D8A5: 60        RTS
bra_D8A6:
C - - - - - 0x0018B6 00:D8A6: A5 13     LDA ram_scroll_Y
C - - - - - 0x0018B8 00:D8A8: 05 27     ORA ram_0027_flag
C - - - - - 0x0018BA 00:D8AA: F0 F9     BEQ bra_D8A5_RTS
C D 2 - - - 0x0018BC 00:D8AC: 4C 1F D8  JMP loc_D81F



sub_D8AF:
C - - - - - 0x0018BF 00:D8AF: A5 8C     LDA ram_008C_flag
C - - - - - 0x0018C1 00:D8B1: F0 F2     BEQ bra_D8A5_RTS
C - - - - - 0x0018C3 00:D8B3: A5 13     LDA ram_scroll_Y
C - - - - - 0x0018C5 00:D8B5: 38        SEC
C - - - - - 0x0018C6 00:D8B6: E9 04     SBC #$04
C - - - - - 0x0018C8 00:D8B8: 85 13     STA ram_scroll_Y
C - - - - - 0x0018CA 00:D8BA: C9 F0     CMP #$F0
C - - - - - 0x0018CC 00:D8BC: 90 0A     BCC bra_D8C8
C - - - - - 0x0018CE 00:D8BE: A5 27     LDA ram_0027_flag
C - - - - - 0x0018D0 00:D8C0: D0 04     BNE bra_D8C6
; A = 00
C - - - - - 0x0018D2 00:D8C2: 85 13     STA ram_scroll_Y
C - - - - - 0x0018D4 00:D8C4: F0 02     BEQ bra_D8C8    ; jmp
bra_D8C6:
C - - - - - 0x0018D6 00:D8C6: C6 27     DEC ram_0027_flag
bra_D8C8:
C - - - - - 0x0018D8 00:D8C8: 20 EA D8  JSR sub_D8EA
C - - - - - 0x0018DB 00:D8CB: 20 77 E2  JSR sub_E277
C - - - - - 0x0018DE 00:D8CE: 20 51 EC  JSR sub_EC51
C - - - - - 0x0018E1 00:D8D1: 20 0F D9  JSR sub_D90F
C - - - - - 0x0018E4 00:D8D4: A5 13     LDA ram_scroll_Y
C - - - - - 0x0018E6 00:D8D6: F0 04     BEQ bra_D8DC
C - - - - - 0x0018E8 00:D8D8: C6 8B     DEC ram_008B
C - - - - - 0x0018EA 00:D8DA: D0 C9     BNE bra_D8A5_RTS
bra_D8DC:
C - - - - - 0x0018EC 00:D8DC: A9 00     LDA #$00
C - - - - - 0x0018EE 00:D8DE: 85 8C     STA ram_008C_flag
C - - - - - 0x0018F0 00:D8E0: A5 24     LDA ram_0024
C - - - - - 0x0018F2 00:D8E2: 18        CLC
C - - - - - 0x0018F3 00:D8E3: 69 06     ADC #$06
C - - - - - 0x0018F5 00:D8E5: 85 24     STA ram_0024
C - - - - - 0x0018F7 00:D8E7: 4C 73 E5  JMP loc_E573



sub_D8EA:
C - - - - - 0x0018FA 00:D8EA: A5 13     LDA ram_scroll_Y
C - - - - - 0x0018FC 00:D8EC: 29 F0     AND #$F0
C - - - - - 0x0018FE 00:D8EE: C9 F0     CMP #$F0
C - - - - - 0x001900 00:D8F0: D0 0A     BNE bra_D8FC_RTS
C - - - - - 0x001902 00:D8F2: A5 13     LDA ram_scroll_Y
C - - - - - 0x001904 00:D8F4: 29 EF     AND #$EF
C - - - - - 0x001906 00:D8F6: 85 13     STA ram_scroll_Y
C - - - - - 0x001908 00:D8F8: E6 DE     INC ram_00DE_flag
C - - - - - 0x00190A 00:D8FA: C6 7A     DEC ram_007A
bra_D8FC_RTS:
C - - - - - 0x00190C 00:D8FC: 60        RTS



sub_D8FD_reset_bear_spawn_timer:
loc_D8FD_reset_bear_spawn_timer:
C D 2 - - - 0x00190D 00:D8FD: A4 56     LDY ram_mountain_completed
C - - - - - 0x00190F 00:D8FF: C0 04     CPY #$04
C - - - - - 0x001911 00:D901: 90 02     BCC bra_D905_not_overflow
C - - - - - 0x001913 00:D903: A0 04     LDY #$04
bra_D905_not_overflow:
C - - - - - 0x001915 00:D905: B9 5E D7  LDA tbl_D75E,Y
C - - - - - 0x001918 00:D908: 85 3D     STA ram_spawn_timer_lo_bear
C - - - - - 0x00191A 00:D90A: A9 01     LDA #$01
C - - - - - 0x00191C 00:D90C: 85 2C     STA ram_spawn_timer_hi_bear
bra_D90E_RTS:
C - - - - - 0x00191E 00:D90E: 60        RTS



sub_D90F:
C - - - - - 0x00191F 00:D90F: A5 8D     LDA ram_008D
C - - - - - 0x001921 00:D911: C5 8A     CMP ram_008A
C - - - - - 0x001923 00:D913: B0 F9     BCS bra_D90E_RTS
C - - - - - 0x001925 00:D915: 4C EC F2  JMP loc_F2EC



tbl_D918:
- D 2 - - - 0x001928 00:D918: F8        .byte $F8   ; 00 
- D 2 - - - 0x001929 00:D919: 08        .byte $08   ; 01 



tbl_D91A:
- D 2 - - - 0x00192A 00:D91A: 00        .byte $00   ; 00 
- D 2 - - - 0x00192B 00:D91B: 05        .byte $05   ; 01 



sub_D91C:
C - - - - - 0x00192C 00:D91C: 8A        TXA
C - - - - - 0x00192D 00:D91D: 48        PHA
C - - - - - 0x00192E 00:D91E: 98        TYA
C - - - - - 0x00192F 00:D91F: 48        PHA
C - - - - - 0x001930 00:D920: 8A        TXA
C - - - - - 0x001931 00:D921: 0A        ASL
C - - - - - 0x001932 00:D922: 0A        ASL
C - - - - - 0x001933 00:D923: A8        TAY
C - - - - - 0x001934 00:D924: B9 1C 02  LDA ram_spr_Y + $1C,Y
C - - - - - 0x001937 00:D927: 85 0B     STA ram_000B
C - - - - - 0x001939 00:D929: B9 1F 02  LDA ram_spr_X + $1C,Y
C - - - - - 0x00193C 00:D92C: 85 0A     STA ram_000A
C - - - - - 0x00193E 00:D92E: B5 62     LDA ram_0062_plr,X
C - - - - - 0x001940 00:D930: 85 0C     STA ram_000C
C - - - - - 0x001942 00:D932: 8A        TXA
C - - - - - 0x001943 00:D933: 48        PHA
C - - - - - 0x001944 00:D934: BD 1A D9  LDA tbl_D91A,X
C - - - - - 0x001947 00:D937: AA        TAX
C - - - - - 0x001948 00:D938: BD 64 03  LDA ram_plr_counter_blocks,X
C - - - - - 0x00194B 00:D93B: C9 63     CMP #$63
C - - - - - 0x00194D 00:D93D: B0 03     BCS bra_D942_not_overflow
C - - - - - 0x00194F 00:D93F: FE 64 03  INC ram_plr_counter_blocks,X
bra_D942_not_overflow:
C - - - - - 0x001952 00:D942: 68        PLA
C - - - - - 0x001953 00:D943: AA        TAX
C - - - - - 0x001954 00:D944: A0 00     LDY #$00
bra_D946_loop:
C - - - - - 0x001956 00:D946: B9 D0 02  LDA ram_spr_Y + $D0,Y
C - - - - - 0x001959 00:D949: C9 F8     CMP #$F8
C - - - - - 0x00195B 00:D94B: F0 0A     BEQ bra_D957
C - - - - - 0x00195D 00:D94D: C8        INY
C - - - - - 0x00195E 00:D94E: C8        INY
C - - - - - 0x00195F 00:D94F: C8        INY
C - - - - - 0x001960 00:D950: C8        INY
C - - - - - 0x001961 00:D951: C0 18     CPY #$18
C - - - - - 0x001963 00:D953: 90 F1     BCC bra_D946_loop
- - - - - - 0x001965 00:D955: B0 51     BCS bra_D9A8    ; jmp
bra_D957:
; ram_giant_bird_Y_pos
C - - - - - 0x001967 00:D957: B5 D7     LDA ram_00D7,X ; 00D7 00D8 
C - - - - - 0x001969 00:D959: C9 06     CMP #$06
C - - - - - 0x00196B 00:D95B: B0 0A     BCS bra_D967
C - - - - - 0x00196D 00:D95D: C9 03     CMP #$03
C - - - - - 0x00196F 00:D95F: 90 03     BCC bra_D964
C - - - - - 0x001971 00:D961: 20 AD D9  JSR sub_D9AD
bra_D964:
C - - - - - 0x001974 00:D964: A9 03     LDA #$03
C - - - - - 0x001976 00:D966: 2C        .byte $2C   ; BIT opcode
bra_D967:
C - - - - - 0x001977 00:D967: A9 02     LDA #$02
C - - - - - 0x001979 00:D969: 99 D2 02  STA ram_spr_A + $D0,Y
C - - - - - 0x00197C 00:D96C: A6 0C     LDX ram_000C
C - - - - - 0x00197E 00:D96E: BD 18 D9  LDA tbl_D918,X
C - - - - - 0x001981 00:D971: 18        CLC
C - - - - - 0x001982 00:D972: 65 0A     ADC ram_000A
C - - - - - 0x001984 00:D974: 99 D3 02  STA ram_spr_X + $D0,Y
C - - - - - 0x001987 00:D977: A5 0B     LDA ram_000B
C - - - - - 0x001989 00:D979: 38        SEC
C - - - - - 0x00198A 00:D97A: E9 08     SBC #$08
C - - - - - 0x00198C 00:D97C: 99 D0 02  STA ram_spr_Y + $D0,Y
C - - - - - 0x00198F 00:D97F: A9 0B     LDA #$0B
C - - - - - 0x001991 00:D981: AE 3E 06  LDX ram_0600_data + $3E
C - - - - - 0x001994 00:D984: D0 02     BNE bra_D988
C - - - - - 0x001996 00:D986: A9 0A     LDA #$0A
bra_D988:
C - - - - - 0x001998 00:D988: 99 D1 02  STA ram_spr_T + $D0,Y
C - - - - - 0x00199B 00:D98B: 98        TYA
C - - - - - 0x00199C 00:D98C: 4A        LSR
C - - - - - 0x00199D 00:D98D: 4A        LSR
C - - - - - 0x00199E 00:D98E: A8        TAY
C - - - - - 0x00199F 00:D98F: A9 00     LDA #$00
C - - - - - 0x0019A1 00:D991: 99 50 06  STA ram_0600_data + $50,Y
C - - - - - 0x0019A4 00:D994: 99 40 06  STA ram_0600_data + $40,Y
C - - - - - 0x0019A7 00:D997: 99 60 06  STA ram_0600_data + $60,Y
C - - - - - 0x0019AA 00:D99A: A9 FE     LDA #$FE
C - - - - - 0x0019AC 00:D99C: 99 48 06  STA ram_0600_data + $48,Y
C - - - - - 0x0019AF 00:D99F: A5 0C     LDA ram_000C
C - - - - - 0x0019B1 00:D9A1: D0 02     BNE bra_D9A5
C - - - - - 0x0019B3 00:D9A3: A9 FF     LDA #$FF
bra_D9A5:
C - - - - - 0x0019B5 00:D9A5: 99 58 06  STA ram_0600_data + $58,Y
bra_D9A8:
C - - - - - 0x0019B8 00:D9A8: 68        PLA
C - - - - - 0x0019B9 00:D9A9: A8        TAY
C - - - - - 0x0019BA 00:D9AA: 68        PLA
C - - - - - 0x0019BB 00:D9AB: AA        TAX
C - - - - - 0x0019BC 00:D9AC: 60        RTS



sub_D9AD:
C - - - - - 0x0019BD 00:D9AD: AD 3F 06  LDA ram_0600_data + $3F
C - - - - - 0x0019C0 00:D9B0: 0D 01 03  ORA ram_ppu_buffer
C - - - - - 0x0019C3 00:D9B3: D0 0E     BNE bra_D9C3_RTS
C - - - - - 0x0019C5 00:D9B5: 8A        TXA
C - - - - - 0x0019C6 00:D9B6: 48        PHA
C - - - - - 0x0019C7 00:D9B7: A2 0F     LDX #$0F
C - - - - - 0x0019C9 00:D9B9: 20 91 F6  JSR sub_F691
C - - - - - 0x0019CC 00:D9BC: A9 01     LDA #$01
C - - - - - 0x0019CE 00:D9BE: 8D 3F 06  STA ram_0600_data + $3F
C - - - - - 0x0019D1 00:D9C1: 68        PLA
C - - - - - 0x0019D2 00:D9C2: AA        TAX
bra_D9C3_RTS:
C - - - - - 0x0019D3 00:D9C3: 60        RTS



tbl_D9C4:
; 01 
- D 2 - - - 0x0019D4 00:D9C4: 00        .byte $00   ; 00 
- D 2 - - - 0x0019D5 00:D9C5: 40        .byte $40   ; 01 
- D 2 - - - 0x0019D6 00:D9C6: C0        .byte $C0   ; 02 
- D 2 - - - 0x0019D7 00:D9C7: 80        .byte $80   ; 03 
; 02 
- D 2 - - - 0x0019D8 00:D9C8: 40        .byte $40   ; 00 
- D 2 - - - 0x0019D9 00:D9C9: 00        .byte $00   ; 01 
- D 2 - - - 0x0019DA 00:D9CA: 80        .byte $80   ; 02 
- D 2 - - - 0x0019DB 00:D9CB: C0        .byte $C0   ; 03 



sub_D9CC:
C - - - - - 0x0019DC 00:D9CC: A0 14     LDY #$14
bra_D9CE_loop:
C - - - - - 0x0019DE 00:D9CE: B9 D0 02  LDA ram_spr_Y + $D0,Y
C - - - - - 0x0019E1 00:D9D1: C9 F8     CMP #$F8
C - - - - - 0x0019E3 00:D9D3: F0 6F     BEQ bra_DA44
C - - - - - 0x0019E5 00:D9D5: 98        TYA
C - - - - - 0x0019E6 00:D9D6: 4A        LSR
C - - - - - 0x0019E7 00:D9D7: 4A        LSR
C - - - - - 0x0019E8 00:D9D8: AA        TAX
C - - - - - 0x0019E9 00:D9D9: BD 50 06  LDA ram_0600_data + $50,X
C - - - - - 0x0019EC 00:D9DC: 18        CLC
C - - - - - 0x0019ED 00:D9DD: 7D 40 06  ADC ram_0600_data + $40,X
C - - - - - 0x0019F0 00:D9E0: 9D 40 06  STA ram_0600_data + $40,X
C - - - - - 0x0019F3 00:D9E3: B9 D0 02  LDA ram_spr_Y + $D0,Y
C - - - - - 0x0019F6 00:D9E6: 7D 48 06  ADC ram_0600_data + $48,X
C - - - - - 0x0019F9 00:D9E9: 99 D0 02  STA ram_spr_Y + $D0,Y
C - - - - - 0x0019FC 00:D9EC: C9 F4     CMP #$F4
C - - - - - 0x0019FE 00:D9EE: B0 4A     BCS bra_DA3A
C - - - - - 0x001A00 00:D9F0: BD 58 06  LDA ram_0600_data + $58,X
C - - - - - 0x001A03 00:D9F3: 85 03     STA ram_0003
C - - - - - 0x001A05 00:D9F5: 79 D3 02  ADC ram_spr_X + $D0,Y
C - - - - - 0x001A08 00:D9F8: 99 D3 02  STA ram_spr_X + $D0,Y
C - - - - - 0x001A0B 00:D9FB: FE 60 06  INC ram_0600_data + $60,X
C - - - - - 0x001A0E 00:D9FE: 8A        TXA
C - - - - - 0x001A0F 00:D9FF: 48        PHA
C - - - - - 0x001A10 00:DA00: BD 60 06  LDA ram_0600_data + $60,X
C - - - - - 0x001A13 00:DA03: 29 30     AND #$30
C - - - - - 0x001A15 00:DA05: 4A        LSR
C - - - - - 0x001A16 00:DA06: 4A        LSR
C - - - - - 0x001A17 00:DA07: 4A        LSR
C - - - - - 0x001A18 00:DA08: 4A        LSR
C - - - - - 0x001A19 00:DA09: A6 03     LDX ram_0003
C - - - - - 0x001A1B 00:DA0B: CA        DEX
C - - - - - 0x001A1C 00:DA0C: F0 03     BEQ bra_DA11
C - - - - - 0x001A1E 00:DA0E: 18        CLC
C - - - - - 0x001A1F 00:DA0F: 69 04     ADC #$04
bra_DA11:
C - - - - - 0x001A21 00:DA11: AA        TAX
C - - - - - 0x001A22 00:DA12: B9 D2 02  LDA ram_spr_A + $D0,Y
C - - - - - 0x001A25 00:DA15: 29 03     AND #$03
C - - - - - 0x001A27 00:DA17: 1D C4 D9  ORA tbl_D9C4,X
C - - - - - 0x001A2A 00:DA1A: 99 D2 02  STA ram_spr_A + $D0,Y
C - - - - - 0x001A2D 00:DA1D: 68        PLA
C - - - - - 0x001A2E 00:DA1E: AA        TAX
C - - - - - 0x001A2F 00:DA1F: BD 48 06  LDA ram_0600_data + $48,X
C - - - - - 0x001A32 00:DA22: C9 05     CMP #$05
C - - - - - 0x001A34 00:DA24: 10 1E     BPL bra_DA44
C - - - - - 0x001A36 00:DA26: BD 50 06  LDA ram_0600_data + $50,X
C - - - - - 0x001A39 00:DA29: 18        CLC
C - - - - - 0x001A3A 00:DA2A: 69 40     ADC #< $0040
C - - - - - 0x001A3C 00:DA2C: 9D 50 06  STA ram_0600_data + $50,X
C - - - - - 0x001A3F 00:DA2F: BD 48 06  LDA ram_0600_data + $48,X
C - - - - - 0x001A42 00:DA32: 69 00     ADC #> $0040
C - - - - - 0x001A44 00:DA34: 9D 48 06  STA ram_0600_data + $48,X
C - - - - - 0x001A47 00:DA37: 4C 44 DA  JMP loc_DA44
bra_DA3A:
C - - - - - 0x001A4A 00:DA3A: A9 F8     LDA #$F8
C - - - - - 0x001A4C 00:DA3C: 99 D0 02  STA ram_spr_Y + $D0,Y
C - - - - - 0x001A4F 00:DA3F: A9 00     LDA #$00
C - - - - - 0x001A51 00:DA41: 99 D3 02  STA ram_spr_X + $D0,Y
bra_DA44:
loc_DA44:
C D 2 - - - 0x001A54 00:DA44: 88        DEY
C - - - - - 0x001A55 00:DA45: 88        DEY
C - - - - - 0x001A56 00:DA46: 88        DEY
C - - - - - 0x001A57 00:DA47: 88        DEY
C - - - - - 0x001A58 00:DA48: 10 84     BPL bra_D9CE_loop
C - - - - - 0x001A5A 00:DA4A: 60        RTS



sub_DA4B:
C - - - - - 0x001A5B 00:DA4B: A2 01     LDX #$01
bra_DA4D_loop:
C - - - - - 0x001A5D 00:DA4D: B5 66     LDA ram_plr_pos_Y,X
C - - - - - 0x001A5F 00:DA4F: 18        CLC
C - - - - - 0x001A60 00:DA50: 69 0C     ADC #$0C
C - - - - - 0x001A62 00:DA52: 20 F9 D1  JSR sub_D1F9
C - - - - - 0x001A65 00:DA55: A8        TAY
C - - - - - 0x001A66 00:DA56: C0 09     CPY #$09
C - - - - - 0x001A68 00:DA58: F0 39     BEQ bra_DA93
C - - - - - 0x001A6A 00:DA5A: CC 86 07  CPY ram_0786
C - - - - - 0x001A6D 00:DA5D: F0 05     BEQ bra_DA64
C - - - - - 0x001A6F 00:DA5F: CC 87 07  CPY ram_0787
C - - - - - 0x001A72 00:DA62: D0 2F     BNE bra_DA93
bra_DA64:
C - - - - - 0x001A74 00:DA64: B9 2F 06  LDA ram_0600_data + $2F,Y
C - - - - - 0x001A77 00:DA67: C9 01     CMP #$01
C - - - - - 0x001A79 00:DA69: D0 28     BNE bra_DA93
C - - - - - 0x001A7B 00:DA6B: B5 64     LDA ram_plr_pos_X,X
C - - - - - 0x001A7D 00:DA6D: 38        SEC
C - - - - - 0x001A7E 00:DA6E: E9 02     SBC #$02
C - - - - - 0x001A80 00:DA70: D9 A3 D7  CMP tbl_D7A3_pos_X,Y
C - - - - - 0x001A83 00:DA73: 90 12     BCC bra_DA87
C - - - - - 0x001A85 00:DA75: 18        CLC
C - - - - - 0x001A86 00:DA76: 69 12     ADC #$12
C - - - - - 0x001A88 00:DA78: D9 AD D7  CMP tbl_D7AD_pos_X,Y
C - - - - - 0x001A8B 00:DA7B: 90 16     BCC bra_DA93
C - - - - - 0x001A8D 00:DA7D: B9 AD D7  LDA tbl_D7AD_pos_X,Y
C - - - - - 0x001A90 00:DA80: 38        SEC
C - - - - - 0x001A91 00:DA81: E9 10     SBC #$10
C - - - - - 0x001A93 00:DA83: A0 00     LDY #$00
C - - - - - 0x001A95 00:DA85: F0 08     BEQ bra_DA8F    ; jmp
bra_DA87:
C - - - - - 0x001A97 00:DA87: B9 A3 D7  LDA tbl_D7A3_pos_X,Y
C - - - - - 0x001A9A 00:DA8A: 38        SEC
C - - - - - 0x001A9B 00:DA8B: E9 FE     SBC #$FE
C - - - - - 0x001A9D 00:DA8D: A0 01     LDY #$01
bra_DA8F:
C - - - - - 0x001A9F 00:DA8F: 95 64     STA ram_plr_pos_X,X
C - - - - - 0x001AA1 00:DA91: 94 62     STY ram_0062_plr,X
bra_DA93:
C - - - - - 0x001AA3 00:DA93: CA        DEX
C - - - - - 0x001AA4 00:DA94: 10 B7     BPL bra_DA4D_loop
C - - - - - 0x001AA6 00:DA96: 60        RTS



tbl_DA97:
- D 2 - - - 0x001AA7 00:DA97: FC        .byte $FC   ; 00 
- D 2 - - - 0x001AA8 00:DA98: 0C        .byte $0C   ; 01 



sub_DA99:
C - - - - - 0x001AA9 00:DA99: 20 C9 DD  JSR sub_DDC9
C - - - - - 0x001AAC 00:DA9C: 90 35     BCC bra_DAD3
C - - - - - 0x001AAE 00:DA9E: A9 00     LDA #$00
C - - - - - 0x001AB0 00:DAA0: 95 80     STA ram_0080_plr,X
C - - - - - 0x001AB2 00:DAA2: A9 04     LDA #$04
C - - - - - 0x001AB4 00:DAA4: 85 00     STA ram_0000
C - - - - - 0x001AB6 00:DAA6: 20 B2 DA  JSR sub_DAB2
C - - - - - 0x001AB9 00:DAA9: 90 29     BCC bra_DAD4_RTS
C - - - - - 0x001ABB 00:DAAB: B4 62     LDY ram_0062_plr,X
C - - - - - 0x001ABD 00:DAAD: B9 97 DA  LDA tbl_DA97,Y
C - - - - - 0x001AC0 00:DAB0: 85 00     STA ram_0000
sub_DAB2:
C - - - - - 0x001AC2 00:DAB2: 20 D5 DA  JSR sub_DAD5
C - - - - - 0x001AC5 00:DAB5: B0 05     BCS bra_DABC
bra_DAB7:
C - - - - - 0x001AC7 00:DAB7: A9 04     LDA #con_sfx_1_04
C - - - - - 0x001AC9 00:DAB9: 85 FC     STA ram_sfx_1
C - - - - - 0x001ACB 00:DABB: 60        RTS
bra_DABC:
C - - - - - 0x001ACC 00:DABC: 20 B4 DB  JSR sub_DBB4
C - - - - - 0x001ACF 00:DABF: 94 5C     STY ram_005C_plr,X
C - - - - - 0x001AD1 00:DAC1: A5 03     LDA ram_0003
C - - - - - 0x001AD3 00:DAC3: 95 7D     STA ram_007D_plr,X
C - - - - - 0x001AD5 00:DAC5: 20 F2 DA  JSR sub_DAF2
C - - - - - 0x001AD8 00:DAC8: B0 ED     BCS bra_DAB7
C - - - - - 0x001ADA 00:DACA: 20 1C D9  JSR sub_D91C
C - - - - - 0x001ADD 00:DACD: B5 84     LDA ram_0084_plr,X
C - - - - - 0x001ADF 00:DACF: 09 01     ORA #$01
C - - - - - 0x001AE1 00:DAD1: 95 84     STA ram_0084_plr,X
bra_DAD3:
C - - - - - 0x001AE3 00:DAD3: 18        CLC
bra_DAD4_RTS:
C - - - - - 0x001AE4 00:DAD4: 60        RTS



sub_DAD5:
C - - - - - 0x001AE5 00:DAD5: 8A        TXA
C - - - - - 0x001AE6 00:DAD6: 0A        ASL
C - - - - - 0x001AE7 00:DAD7: 0A        ASL
C - - - - - 0x001AE8 00:DAD8: A8        TAY
C - - - - - 0x001AE9 00:DAD9: B9 1F 02  LDA ram_spr_X + $1C,Y
C - - - - - 0x001AEC 00:DADC: 18        CLC
C - - - - - 0x001AED 00:DADD: 65 00     ADC ram_0000
C - - - - - 0x001AEF 00:DADF: B4 5A     LDY ram_005A_plr,X
C - - - - - 0x001AF1 00:DAE1: C8        INY
C - - - - - 0x001AF2 00:DAE2: C0 0A     CPY #$0A
C - - - - - 0x001AF4 00:DAE4: B0 ED     BCS bra_DAD3
C - - - - - 0x001AF6 00:DAE6: D9 A3 D7  CMP tbl_D7A3_pos_X,Y
C - - - - - 0x001AF9 00:DAE9: 90 E8     BCC bra_DAD3
C - - - - - 0x001AFB 00:DAEB: D9 AD D7  CMP tbl_D7AD_pos_X,Y
C - - - - - 0x001AFE 00:DAEE: B0 E3     BCS bra_DAD3
bra_DAF0:
C - - - - - 0x001B00 00:DAF0: 38        SEC
C - - - - - 0x001B01 00:DAF1: 60        RTS



sub_DAF2:
C - - - - - 0x001B02 00:DAF2: A9 00     LDA #$00
C - - - - - 0x001B04 00:DAF4: 8D 3E 06  STA ram_0600_data + $3E
C - - - - - 0x001B07 00:DAF7: B1 03     LDA (ram_0003),Y
C - - - - - 0x001B09 00:DAF9: F0 F5     BEQ bra_DAF0
C - - - - - 0x001B0B 00:DAFB: C9 03     CMP #$03
C - - - - - 0x001B0D 00:DAFD: 10 F1     BPL bra_DAF0
C - - - - - 0x001B0F 00:DAFF: C9 FF     CMP #$FF
C - - - - - 0x001B11 00:DB01: F0 ED     BEQ bra_DAF0
C - - - - - 0x001B13 00:DB03: C9 02     CMP #$02
C - - - - - 0x001B15 00:DB05: D0 07     BNE bra_DB0E
C - - - - - 0x001B17 00:DB07: 48        PHA
C - - - - - 0x001B18 00:DB08: A9 01     LDA #$01
C - - - - - 0x001B1A 00:DB0A: 8D 3E 06  STA ram_0600_data + $3E
C - - - - - 0x001B1D 00:DB0D: 68        PLA
bra_DB0E:
C - - - - - 0x001B1E 00:DB0E: 18        CLC
C - - - - - 0x001B1F 00:DB0F: 65 02     ADC ram_0002
C - - - - - 0x001B21 00:DB11: 91 03     STA (ram_0003),Y
C - - - - - 0x001B23 00:DB13: C9 03     CMP #$03
C - - - - - 0x001B25 00:DB15: 30 04     BMI bra_DB1B
C - - - - - 0x001B27 00:DB17: A9 FF     LDA #$FF
C - - - - - 0x001B29 00:DB19: 91 03     STA (ram_0003),Y
bra_DB1B:
C - - - - - 0x001B2B 00:DB1B: 18        CLC
C - - - - - 0x001B2C 00:DB1C: 60        RTS



sub_DB1D:
C - - - - - 0x001B2D 00:DB1D: 85 08     STA ram_0008
C - - - - - 0x001B2F 00:DB1F: D0 0B     BNE bra_DB2C
C - - - - - 0x001B31 00:DB21: C0 08     CPY #$08
C - - - - - 0x001B33 00:DB23: 90 07     BCC bra_DB2C
C - - - - - 0x001B35 00:DB25: B9 91 00  LDA ram_0091_obj,Y ; 0099 009A 009B 
C - - - - - 0x001B38 00:DB28: C9 02     CMP #$02
C - - - - - 0x001B3A 00:DB2A: F0 05     BEQ bra_DB31
bra_DB2C:
C - - - - - 0x001B3C 00:DB2C: B9 91 00  LDA ram_0091_obj,Y ; 0091 0092 0093 0094 0095 0096 0097 0098 0099 009A 009B 
C - - - - - 0x001B3F 00:DB2F: 10 73     BPL bra_DBA4
bra_DB31:
C - - - - - 0x001B41 00:DB31: A5 55     LDA ram_0055
C - - - - - 0x001B43 00:DB33: F0 30     BEQ bra_DB65
C - - - - - 0x001B45 00:DB35: C9 02     CMP #$02
C - - - - - 0x001B47 00:DB37: F0 2C     BEQ bra_DB65
C - - - - - 0x001B49 00:DB39: C0 08     CPY #$08
C - - - - - 0x001B4B 00:DB3B: B0 28     BCS bra_DB65
C - - - - - 0x001B4D 00:DB3D: B6 B2     LDX ram_00B2_obj,Y
C - - - - - 0x001B4F 00:DB3F: A5 08     LDA ram_0008
C - - - - - 0x001B51 00:DB41: D0 11     BNE bra_DB54
C - - - - - 0x001B53 00:DB43: B9 9C 00  LDA ram_009C_obj_pos_X,Y
C - - - - - 0x001B56 00:DB46: 30 03     BMI bra_DB4B
C - - - - - 0x001B58 00:DB48: A9 10     LDA #$10
C - - - - - 0x001B5A 00:DB4A: 2C        .byte $2C   ; BIT opcode
bra_DB4B:
C - - - - - 0x001B5B 00:DB4B: A9 F8     LDA #$F8
C - - - - - 0x001B5D 00:DB4D: 18        CLC
C - - - - - 0x001B5E 00:DB4E: 79 9C 00  ADC ram_009C_obj_pos_X,Y
C - - - - - 0x001B61 00:DB51: 4C 57 DB  JMP loc_DB57
bra_DB54:
C - - - - - 0x001B64 00:DB54: B9 9C 00  LDA ram_009C_obj_pos_X,Y
loc_DB57:
C D 2 - - - 0x001B67 00:DB57: 18        CLC
C - - - - - 0x001B68 00:DB58: 79 BD D7  ADC tbl_D7BD_pos_X,Y
; bzk bug, this refs to 0x0018B2 when X = FF
C - - - - - 0x001B6B 00:DB5B: DD A3 D7  CMP tbl_D7A3_pos_X,X
C - - - - - 0x001B6E 00:DB5E: 90 44     BCC bra_DBA4
; bzk bug, this refs to 0x0018BC when X = FF
C - - - - - 0x001B70 00:DB60: DD AD D7  CMP tbl_D7AD_pos_X,X
C - - - - - 0x001B73 00:DB63: B0 3F     BCS bra_DBA4
bra_DB65:
C - - - - - 0x001B75 00:DB65: B9 9C 00  LDA ram_009C_obj_pos_X,Y
C - - - - - 0x001B78 00:DB68: 18        CLC
C - - - - - 0x001B79 00:DB69: 79 BD D7  ADC tbl_D7BD_pos_X,Y
C - - - - - 0x001B7C 00:DB6C: 38        SEC
C - - - - - 0x001B7D 00:DB6D: E5 0A     SBC ram_000A
C - - - - - 0x001B7F 00:DB6F: 85 00     STA ram_0000
C - - - - - 0x001B81 00:DB71: 20 F9 D2  JSR sub_D2F9_EOR_if_negative
C - - - - - 0x001B84 00:DB74: 48        PHA
C - - - - - 0x001B85 00:DB75: A5 08     LDA ram_0008
C - - - - - 0x001B87 00:DB77: F0 08     BEQ bra_DB81
C - - - - - 0x001B89 00:DB79: 68        PLA
C - - - - - 0x001B8A 00:DB7A: D9 D3 D7  CMP tbl_D7D3,Y
C - - - - - 0x001B8D 00:DB7D: B0 25     BCS bra_DBA4
C - - - - - 0x001B8F 00:DB7F: 90 05     BCC bra_DB86    ; jmp
bra_DB81:
C - - - - - 0x001B91 00:DB81: 68        PLA
C - - - - - 0x001B92 00:DB82: C9 0C     CMP #$0C
C - - - - - 0x001B94 00:DB84: B0 1E     BCS bra_DBA4
bra_DB86:
C - - - - - 0x001B96 00:DB86: B9 A7 00  LDA ram_00A7_obj_pos_Y,Y
C - - - - - 0x001B99 00:DB89: 18        CLC
C - - - - - 0x001B9A 00:DB8A: 79 B7 D7  ADC tbl_D7B7_pos_Y,Y
C - - - - - 0x001B9D 00:DB8D: 38        SEC
C - - - - - 0x001B9E 00:DB8E: E5 0B     SBC ram_000B
C - - - - - 0x001BA0 00:DB90: 20 F9 D2  JSR sub_D2F9_EOR_if_negative
C - - - - - 0x001BA3 00:DB93: 48        PHA
C - - - - - 0x001BA4 00:DB94: C0 00     CPY #$00
C - - - - - 0x001BA6 00:DB96: D0 04     BNE bra_DB9C
C - - - - - 0x001BA8 00:DB98: A5 08     LDA ram_0008
C - - - - - 0x001BAA 00:DB9A: F0 0A     BEQ bra_DBA6
bra_DB9C:
C - - - - - 0x001BAC 00:DB9C: 68        PLA
C - - - - - 0x001BAD 00:DB9D: D9 C8 D7  CMP tbl_D7C8,Y
C - - - - - 0x001BB0 00:DBA0: B0 02     BCS bra_DBA4
bra_DBA2:
C - - - - - 0x001BB2 00:DBA2: 38        SEC
C - - - - - 0x001BB3 00:DBA3: 60        RTS
bra_DBA4:
C - - - - - 0x001BB4 00:DBA4: 18        CLC
C - - - - - 0x001BB5 00:DBA5: 60        RTS
bra_DBA6:
C - - - - - 0x001BB6 00:DBA6: 68        PLA
C - - - - - 0x001BB7 00:DBA7: C9 10     CMP #$10
C - - - - - 0x001BB9 00:DBA9: B0 F9     BCS bra_DBA4
C - - - - - 0x001BBB 00:DBAB: 90 F5     BCC bra_DBA2    ; jmp
bra_DBAD:
C - - - - - 0x001BBD 00:DBAD: A9 FF     LDA #$FF
C - - - - - 0x001BBF 00:DBAF: 60        RTS



sub_DBB0:
C - - - - - 0x001BC0 00:DBB0: A0 05     LDY #$05
C - - - - - 0x001BC2 00:DBB2: D0 02     BNE bra_DBB6    ; jmp



sub_DBB4:
loc_DBB4:
C D 2 - - - 0x001BC4 00:DBB4: A0 04     LDY #$04
bra_DBB6:
C - - - - - 0x001BC6 00:DBB6: 84 04     STY ram_0004
C - - - - - 0x001BC8 00:DBB8: 85 00     STA ram_0000
C - - - - - 0x001BCA 00:DBBA: A9 FF     LDA #$FF
C - - - - - 0x001BCC 00:DBBC: 9D 83 07  STA ram_0783_plr,X
C - - - - - 0x001BCF 00:DBBF: A9 00     LDA #$00
C - - - - - 0x001BD1 00:DBC1: 9D 43 03  STA ram_0343_plr,X
C - - - - - 0x001BD4 00:DBC4: B4 5A     LDY ram_005A_plr,X
C - - - - - 0x001BD6 00:DBC6: B5 82     LDA ram_0082_plr,X
C - - - - - 0x001BD8 00:DBC8: F0 01     BEQ bra_DBCB
C - - - - - 0x001BDA 00:DBCA: C8        INY
bra_DBCB:
; ram_giant_bird_Y_pos
C - - - - - 0x001BDB 00:DBCB: 94 D7     STY ram_00D7,X ; 00D7 00D8 
C - - - - - 0x001BDD 00:DBCD: C0 0A     CPY #$0A
C - - - - - 0x001BDF 00:DBCF: B0 DC     BCS bra_DBAD
C - - - - - 0x001BE1 00:DBD1: A5 00     LDA ram_0000
C - - - - - 0x001BE3 00:DBD3: D9 A3 D7  CMP tbl_D7A3_pos_X,Y
C - - - - - 0x001BE6 00:DBD6: 90 7E     BCC bra_DC56
C - - - - - 0x001BE8 00:DBD8: D9 AD D7  CMP tbl_D7AD_pos_X,Y
C - - - - - 0x001BEB 00:DBDB: B0 79     BCS bra_DC56
C - - - - - 0x001BED 00:DBDD: A9 02     LDA #$02
C - - - - - 0x001BEF 00:DBDF: 85 02     STA ram_0002
C - - - - - 0x001BF1 00:DBE1: A5 00     LDA ram_0000
C - - - - - 0x001BF3 00:DBE3: 20 BF ED  JSR sub_EDBF
C - - - - - 0x001BF6 00:DBE6: 95 D4     STA ram_00D4,X
; ram_giant_bird_Y_pos
C - - - - - 0x001BF8 00:DBE8: B4 D7     LDY ram_00D7,X ; 00D7 00D8 
C - - - - - 0x001BFA 00:DBEA: B9 62 D7  LDA tbl_D762,Y
C - - - - - 0x001BFD 00:DBED: 85 03     STA ram_0003
C - - - - - 0x001BFF 00:DBEF: B5 D4     LDA ram_00D4,X
C - - - - - 0x001C01 00:DBF1: 38        SEC
C - - - - - 0x001C02 00:DBF2: E9 04     SBC #$04
C - - - - - 0x001C04 00:DBF4: 48        PHA
C - - - - - 0x001C05 00:DBF5: A8        TAY
C - - - - - 0x001C06 00:DBF6: B1 03     LDA (ram_0003),Y
C - - - - - 0x001C08 00:DBF8: 10 03     BPL bra_DBFD
C - - - - - 0x001C0A 00:DBFA: FE 43 03  INC ram_0343_plr,X
bra_DBFD:
; ram_giant_bird_Y_pos
C - - - - - 0x001C0D 00:DBFD: B5 D7     LDA ram_00D7,X ; 00D7 00D8 
C - - - - - 0x001C0F 00:DBFF: A0 00     LDY #$00
C - - - - - 0x001C11 00:DC01: CD 86 07  CMP ram_0786
C - - - - - 0x001C14 00:DC04: F0 06     BEQ bra_DC0C
C - - - - - 0x001C16 00:DC06: C8        INY
C - - - - - 0x001C17 00:DC07: CD 87 07  CMP ram_0787
C - - - - - 0x001C1A 00:DC0A: D0 41     BNE bra_DC4D
bra_DC0C:
C - - - - - 0x001C1C 00:DC0C: 84 00     STY ram_0000
C - - - - - 0x001C1E 00:DC0E: B5 6A     LDA ram_plr_handler,X
C - - - - - 0x001C20 00:DC10: C9 04     CMP #$04
C - - - - - 0x001C22 00:DC12: F0 04     BEQ bra_DC18
C - - - - - 0x001C24 00:DC14: C9 02     CMP #$02
C - - - - - 0x001C26 00:DC16: D0 1C     BNE bra_DC34
bra_DC18:
C - - - - - 0x001C28 00:DC18: B5 68     LDA ram_0068_plr,X
C - - - - - 0x001C2A 00:DC1A: F0 18     BEQ bra_DC34
C - - - - - 0x001C2C 00:DC1C: B9 D7 07  LDA ram_07D0_obj + $07,Y ; 07D7 07D8 
C - - - - - 0x001C2F 00:DC1F: F0 0A     BEQ bra_DC2B
C - - - - - 0x001C31 00:DC21: B5 68     LDA ram_0068_plr,X
C - - - - - 0x001C33 00:DC23: C9 01     CMP #$01
C - - - - - 0x001C35 00:DC25: D0 0D     BNE bra_DC34
C - - - - - 0x001C37 00:DC27: A9 14     LDA #$14
C - - - - - 0x001C39 00:DC29: D0 0B     BNE bra_DC36    ; jmp
bra_DC2B:
C - - - - - 0x001C3B 00:DC2B: B5 68     LDA ram_0068_plr,X
C - - - - - 0x001C3D 00:DC2D: C9 02     CMP #$02
C - - - - - 0x001C3F 00:DC2F: D0 03     BNE bra_DC34
C - - - - - 0x001C41 00:DC31: A9 04     LDA #$04
C - - - - - 0x001C43 00:DC33: 2C        .byte $2C   ; BIT opcode
bra_DC34:
C - - - - - 0x001C44 00:DC34: 2C A9 09  LDA #$09
bra_DC36:
C - - - - - 0x001C46 00:DC36: 18        CLC
C - - - - - 0x001C47 00:DC37: 75 64     ADC ram_plr_pos_X,X
C - - - - - 0x001C49 00:DC39: D9 88 07  CMP ram_0788,Y
C - - - - - 0x001C4C 00:DC3C: 90 05     BCC bra_DC43
C - - - - - 0x001C4E 00:DC3E: D9 8A 07  CMP ram_078A,Y
C - - - - - 0x001C51 00:DC41: 90 16     BCC bra_DC59
bra_DC43:
C - - - - - 0x001C53 00:DC43: D9 8C 07  CMP ram_078C,Y
C - - - - - 0x001C56 00:DC46: 90 05     BCC bra_DC4D
C - - - - - 0x001C58 00:DC48: D9 8E 07  CMP ram_078E,Y
C - - - - - 0x001C5B 00:DC4B: 90 0C     BCC bra_DC59
bra_DC4D:
C - - - - - 0x001C5D 00:DC4D: B5 2D     LDA ram_002D_plr,X
C - - - - - 0x001C5F 00:DC4F: D0 0D     BNE bra_DC5E
C - - - - - 0x001C61 00:DC51: 68        PLA
C - - - - - 0x001C62 00:DC52: A8        TAY
bra_DC53:
C - - - - - 0x001C63 00:DC53: B1 03     LDA (ram_0003),Y
C - - - - - 0x001C65 00:DC55: 60        RTS
bra_DC56:
C - - - - - 0x001C66 00:DC56: A9 00     LDA #$00
bra_DC58_RTS:
C - - - - - 0x001C68 00:DC58: 60        RTS
bra_DC59:
C - - - - - 0x001C69 00:DC59: A5 00     LDA ram_0000
C - - - - - 0x001C6B 00:DC5B: 9D 83 07  STA ram_0783_plr,X
bra_DC5E:
C - - - - - 0x001C6E 00:DC5E: 68        PLA
C - - - - - 0x001C6F 00:DC5F: A8        TAY
C - - - - - 0x001C70 00:DC60: B1 03     LDA (ram_0003),Y
C - - - - - 0x001C72 00:DC62: 30 F2     BMI bra_DC56
C - - - - - 0x001C74 00:DC64: C9 04     CMP #$04
C - - - - - 0x001C76 00:DC66: F0 EE     BEQ bra_DC56
C - - - - - 0x001C78 00:DC68: D0 E9     BNE bra_DC53    ; jmp



sub_DC6A:
C - - - - - 0x001C7A 00:DC6A: AD 01 03  LDA ram_ppu_buffer
C - - - - - 0x001C7D 00:DC6D: D0 E9     BNE bra_DC58_RTS
C - - - - - 0x001C7F 00:DC6F: 8D 00 03  STA ram_buffer_index
C - - - - - 0x001C82 00:DC72: A5 84     LDA ram_0084_plr
C - - - - - 0x001C84 00:DC74: F0 0A     BEQ bra_DC80
C - - - - - 0x001C86 00:DC76: A2 00     LDX #$00
C - - - - - 0x001C88 00:DC78: A0 00     LDY #$00
C - - - - - 0x001C8A 00:DC7A: 20 97 DC  JSR sub_DC97
C - - - - - 0x001C8D 00:DC7D: 20 A9 DD  JSR sub_DDA9
bra_DC80:
C - - - - - 0x001C90 00:DC80: A5 85     LDA ram_0084_plr + $01
C - - - - - 0x001C92 00:DC82: F0 D4     BEQ bra_DC58_RTS
C - - - - - 0x001C94 00:DC84: A2 01     LDX #$01
C - - - - - 0x001C96 00:DC86: AC 00 03  LDY ram_buffer_index
C - - - - - 0x001C99 00:DC89: 20 97 DC  JSR sub_DC97
C - - - - - 0x001C9C 00:DC8C: 4C A9 DD  JMP loc_DDA9



tbl_DC8F:
; 03 
- D 2 - - - 0x001C9F 00:DC8F: 6C D7     .word tbl_D76D_ppu_hi - $01
- D 2 - - - 0x001CA1 00:DC91: 75 D7     .word tbl_D776_ppu_lo - $01
; 07 
- D 2 - - - 0x001CA3 00:DC93: 8A D7     .word tbl_D78B_ppu_hi - $01
- D 2 - - - 0x001CA5 00:DC95: 93 D7     .word tbl_D794_ppu_lo - $01



sub_DC97:
C - - - - - 0x001CA7 00:DC97: B5 84     LDA ram_0084_plr,X
C - - - - - 0x001CA9 00:DC99: 29 01     AND #$01
C - - - - - 0x001CAB 00:DC9B: D0 07     BNE bra_DCA4
C - - - - - 0x001CAD 00:DC9D: B5 84     LDA ram_0084_plr,X
C - - - - - 0x001CAF 00:DC9F: 29 02     AND #$02
C - - - - - 0x001CB1 00:DCA1: D0 0A     BNE bra_DCAD
- - - - - - 0x001CB3 00:DCA3: 60        RTS
bra_DCA4:
C - - - - - 0x001CB4 00:DCA4: 20 B6 DD  JSR sub_DDB6
C - - - - - 0x001CB7 00:DCA7: 20 F0 DC  JSR sub_DCF0
C - - - - - 0x001CBA 00:DCAA: 4C B3 DC  JMP loc_DCB3
bra_DCAD:
C - - - - - 0x001CBD 00:DCAD: 20 B6 DD  JSR sub_DDB6
C - - - - - 0x001CC0 00:DCB0: 20 F6 DC  JSR sub_DCF6
loc_DCB3:
sub_DCB3:   ; X = 02
; ram_giant_bird_Y_pos
; also ram_00D9
C D 2 - - - 0x001CC3 00:DCB3: B5 D7     LDA ram_00D7,X ; 00D7 00D8 00D9 
C - - - - - 0x001CC5 00:DCB5: 48        PHA
C - - - - - 0x001CC6 00:DCB6: A8        TAY
C - - - - - 0x001CC7 00:DCB7: B1 05     LDA (ram_0005),Y
C - - - - - 0x001CC9 00:DCB9: 20 EA DC  JSR sub_DCEA_write_A_to_ppu_buffer
C - - - - - 0x001CCC 00:DCBC: C8        INY
C - - - - - 0x001CCD 00:DCBD: 84 00     STY ram_0000
C - - - - - 0x001CCF 00:DCBF: 68        PLA
C - - - - - 0x001CD0 00:DCC0: A8        TAY
; also ram_giant_bird_X_pos
C - - - - - 0x001CD1 00:DCC1: B5 D4     LDA ram_00D4,X ; 00D4 00D5 00D6 
C - - - - - 0x001CD3 00:DCC3: 18        CLC
C - - - - - 0x001CD4 00:DCC4: 71 07     ADC (ram_0007),Y
C - - - - - 0x001CD6 00:DCC6: 20 EA DC  JSR sub_DCEA_write_A_to_ppu_buffer
C - - - - - 0x001CD9 00:DCC9: C8        INY
C - - - - - 0x001CDA 00:DCCA: A9 01     LDA #$01
C - - - - - 0x001CDC 00:DCCC: 99 01 03  STA ram_ppu_buffer,Y
C - - - - - 0x001CDF 00:DCCF: C8        INY
C - - - - - 0x001CE0 00:DCD0: 84 00     STY ram_0000
; also ram_007F
C - - - - - 0x001CE2 00:DCD2: B5 7D     LDA ram_007D_plr,X ; 007D 007E 007F 
C - - - - - 0x001CE4 00:DCD4: 85 03     STA ram_0003
; also ram_005E
C - - - - - 0x001CE6 00:DCD6: B4 5C     LDY ram_005C_plr,X ; 005C 005D 005E 
C - - - - - 0x001CE8 00:DCD8: 20 12 DE  JSR sub_DE12_convert_byte
C - - - - - 0x001CEB 00:DCDB: 20 EA DC  JSR sub_DCEA_write_A_to_ppu_buffer
C - - - - - 0x001CEE 00:DCDE: A9 00     LDA #$00
C - - - - - 0x001CF0 00:DCE0: 99 02 03  STA ram_ppu_buffer + $01,Y
C - - - - - 0x001CF3 00:DCE3: C8        INY
C - - - - - 0x001CF4 00:DCE4: 8C 00 03  STY ram_buffer_index
C - - - - - 0x001CF7 00:DCE7: A6 0F     LDX ram_000F
C - - - - - 0x001CF9 00:DCE9: 60        RTS



sub_DCEA_write_A_to_ppu_buffer:
C - - - - - 0x001CFA 00:DCEA: A4 00     LDY ram_0000
C - - - - - 0x001CFC 00:DCEC: 99 01 03  STA ram_ppu_buffer,Y
C - - - - - 0x001CFF 00:DCEF: 60        RTS



sub_DCF0:
C - - - - - 0x001D00 00:DCF0: A9 04     LDA #$04
C - - - - - 0x001D02 00:DCF2: A0 03     LDY #$03
C - - - - - 0x001D04 00:DCF4: D0 04     BNE bra_DCFA    ; jmp



sub_DCF6:
C - - - - - 0x001D06 00:DCF6: A9 05     LDA #$05
C - - - - - 0x001D08 00:DCF8: A0 07     LDY #$07
bra_DCFA:
C - - - - - 0x001D0A 00:DCFA: 85 04     STA ram_0004
C - - - - - 0x001D0C 00:DCFC: A2 03     LDX #$03
; 0005-0008
bra_DCFE_loop:
C - - - - - 0x001D0E 00:DCFE: B9 8F DC  LDA tbl_DC8F,Y
C - - - - - 0x001D11 00:DD01: 95 05     STA ram_0005,X
C - - - - - 0x001D13 00:DD03: 88        DEY
C - - - - - 0x001D14 00:DD04: CA        DEX
C - - - - - 0x001D15 00:DD05: 10 F7     BPL bra_DCFE_loop
C - - - - - 0x001D17 00:DD07: A4 00     LDY ram_0000
C - - - - - 0x001D19 00:DD09: A6 0F     LDX ram_000F
bra_DD0B_RTS:
C - - - - - 0x001D1B 00:DD0B: 60        RTS



tbl_DD0C:
- - - - - - 0x001D1C 00:DD0C: 18        .byte $18   ; 00 
- D 2 - - - 0x001D1D 00:DD0D: 18        .byte $18   ; 01 
- D 2 - - - 0x001D1E 00:DD0E: 18        .byte $18   ; 02 
- D 2 - - - 0x001D1F 00:DD0F: 16        .byte $16   ; 03 
- D 2 - - - 0x001D20 00:DD10: 16        .byte $16   ; 04 
- D 2 - - - 0x001D21 00:DD11: 16        .byte $16   ; 05 
- D 2 - - - 0x001D22 00:DD12: 14        .byte $14   ; 06 
- D 2 - - - 0x001D23 00:DD13: 14        .byte $14   ; 07 
- D 2 - - - 0x001D24 00:DD14: 14        .byte $14   ; 08 
- D 2 - - - 0x001D25 00:DD15: 14        .byte $14   ; 09 



sub_DD16:
C - - - - - 0x001D26 00:DD16: 20 F6 DC  JSR sub_DCF6
C - - - - - 0x001D29 00:DD19: A2 01     LDX #$01
C - - - - - 0x001D2B 00:DD1B: D0 05     BNE bra_DD22    ; jmp



sub_DD1D:
C - - - - - 0x001D2D 00:DD1D: 20 F0 DC  JSR sub_DCF0
C - - - - - 0x001D30 00:DD20: A2 00     LDX #$00
bra_DD22:
C - - - - - 0x001D32 00:DD22: 86 0B     STX ram_000B
loc_DD24_loop:
C D 2 - - - 0x001D34 00:DD24: B5 DA     LDA ram_00DA_plr,X
C - - - - - 0x001D36 00:DD26: C9 0A     CMP #$0A
C - - - - - 0x001D38 00:DD28: F0 E1     BEQ bra_DD0B_RTS
C - - - - - 0x001D3A 00:DD2A: A8        TAY
C - - - - - 0x001D3B 00:DD2B: AA        TAX
C - - - - - 0x001D3C 00:DD2C: 20 A1 DD  JSR sub_DDA1
C - - - - - 0x001D3F 00:DD2F: 18        CLC
C - - - - - 0x001D40 00:DD30: 7D 62 D7  ADC tbl_D762,X
C - - - - - 0x001D43 00:DD33: 85 03     STA ram_0003
C - - - - - 0x001D45 00:DD35: 20 A1 DD  JSR sub_DDA1
C - - - - - 0x001D48 00:DD38: 18        CLC
C - - - - - 0x001D49 00:DD39: 69 04     ADC #$04
C - - - - - 0x001D4B 00:DD3B: 18        CLC
; Y is always >= 01 here
C - - - - - 0x001D4C 00:DD3C: 71 07     ADC (ram_0007),Y
C - - - - - 0x001D4E 00:DD3E: 8D 02 03  STA ram_ppu_buffer + $01
C - - - - - 0x001D51 00:DD41: BD 0C DD  LDA tbl_DD0C,X
C - - - - - 0x001D54 00:DD44: 8D 03 03  STA ram_ppu_buffer + $02
C - - - - - 0x001D57 00:DD47: B1 05     LDA (ram_0005),Y
C - - - - - 0x001D59 00:DD49: 8D 01 03  STA ram_ppu_buffer
C - - - - - 0x001D5C 00:DD4C: A0 00     LDY #$00
C - - - - - 0x001D5E 00:DD4E: 84 02     STY ram_0002
bra_DD50_loop:
C - - - - - 0x001D60 00:DD50: 20 12 DE  JSR sub_DE12_convert_byte
C - - - - - 0x001D63 00:DD53: A4 02     LDY ram_0002
C - - - - - 0x001D65 00:DD55: 99 04 03  STA ram_ppu_buffer + $03,Y
C - - - - - 0x001D68 00:DD58: C8        INY
C - - - - - 0x001D69 00:DD59: 84 02     STY ram_0002
C - - - - - 0x001D6B 00:DD5B: 98        TYA
C - - - - - 0x001D6C 00:DD5C: DD 0C DD  CMP tbl_DD0C,X
C - - - - - 0x001D6F 00:DD5F: 90 EF     BCC bra_DD50_loop
C - - - - - 0x001D71 00:DD61: A9 00     LDA #$00
C - - - - - 0x001D73 00:DD63: 99 04 03  STA ram_ppu_buffer + $03,Y
C - - - - - 0x001D76 00:DD66: A6 0B     LDX ram_000B
C - - - - - 0x001D78 00:DD68: D0 2D     BNE bra_DD97
C - - - - - 0x001D7A 00:DD6A: B4 DA     LDY ram_00DA_plr,X
C - - - - - 0x001D7C 00:DD6C: B9 2F 06  LDA ram_0600_data + $2F,Y
C - - - - - 0x001D7F 00:DD6F: 10 26     BPL bra_DD97
C - - - - - 0x001D81 00:DD71: 85 00     STA ram_0000
C - - - - - 0x001D83 00:DD73: A0 03     LDY #$03
bra_DD75_loop:
C - - - - - 0x001D85 00:DD75: A5 00     LDA ram_0000
C - - - - - 0x001D87 00:DD77: BE 01 03  LDX ram_ppu_buffer,Y
C - - - - - 0x001D8A 00:DD7A: F0 1B     BEQ bra_DD97
C - - - - - 0x001D8C 00:DD7C: E0 38     CPX #$38
C - - - - - 0x001D8E 00:DD7E: F0 14     BEQ bra_DD94
C - - - - - 0x001D90 00:DD80: E0 EB     CPX #$EB
C - - - - - 0x001D92 00:DD82: D0 0D     BNE bra_DD91
C - - - - - 0x001D94 00:DD84: C9 90     CMP #$90
C - - - - - 0x001D96 00:DD86: 90 09     BCC bra_DD91
C - - - - - 0x001D98 00:DD88: C9 D3     CMP #$D3
C - - - - - 0x001D9A 00:DD8A: F0 03     BEQ bra_DD8F
C - - - - - 0x001D9C 00:DD8C: A9 8F     LDA #$8F
C - - - - - 0x001D9E 00:DD8E: 2C        .byte $2C   ; BIT opcode
bra_DD8F:
C - - - - - 0x001D9F 00:DD8F: A9 8C     LDA #$8C
bra_DD91:
C - - - - - 0x001DA1 00:DD91: 99 01 03  STA ram_ppu_buffer,Y
bra_DD94:
C - - - - - 0x001DA4 00:DD94: C8        INY
C - - - - - 0x001DA5 00:DD95: D0 DE     BNE bra_DD75_loop
bra_DD97:
C - - - - - 0x001DA7 00:DD97: 20 4E C1  JSR sub_C14E
C - - - - - 0x001DAA 00:DD9A: A6 0B     LDX ram_000B
C - - - - - 0x001DAC 00:DD9C: F6 DA     INC ram_00DA_plr,X
C - - - - - 0x001DAE 00:DD9E: 4C 24 DD  JMP loc_DD24_loop



sub_DDA1:
C - - - - - 0x001DB1 00:DDA1: A9 18     LDA #$18
C - - - - - 0x001DB3 00:DDA3: 38        SEC
C - - - - - 0x001DB4 00:DDA4: FD 0C DD  SBC tbl_DD0C,X
C - - - - - 0x001DB7 00:DDA7: 4A        LSR
C - - - - - 0x001DB8 00:DDA8: 60        RTS



sub_DDA9:
loc_DDA9:
C D 2 - - - 0x001DB9 00:DDA9: A9 02     LDA #con_sfx_1_block_placed_or_destroyed
C - - - - - 0x001DBB 00:DDAB: 85 FC     STA ram_sfx_1
C - - - - - 0x001DBD 00:DDAD: A5 0E     LDA ram_000E
C - - - - - 0x001DBF 00:DDAF: 49 FF     EOR #$FF
C - - - - - 0x001DC1 00:DDB1: 35 84     AND ram_0084_plr,X
C - - - - - 0x001DC3 00:DDB3: 95 84     STA ram_0084_plr,X
C - - - - - 0x001DC5 00:DDB5: 60        RTS



sub_DDB6:
C - - - - - 0x001DC6 00:DDB6: 85 0E     STA ram_000E
C - - - - - 0x001DC8 00:DDB8: 86 0F     STX ram_000F
C - - - - - 0x001DCA 00:DDBA: 84 00     STY ram_0000
C - - - - - 0x001DCC 00:DDBC: 60        RTS



loc_DDBD_convert_byte:
C D 2 - - - 0x001DCD 00:DDBD: A0 06     LDY #$06
bra_DDBF_loop:
C - - - - - 0x001DCF 00:DDBF: 88        DEY
C - - - - - 0x001DD0 00:DDC0: D9 7F D7  CMP tbl_D77F_match,Y
C - - - - - 0x001DD3 00:DDC3: D0 FA     BNE bra_DDBF_loop
C - - - - - 0x001DD5 00:DDC5: B9 85 D7  LDA tbl_D785_replace,Y
C - - - - - 0x001DD8 00:DDC8: 60        RTS



sub_DDC9:
C - - - - - 0x001DD9 00:DDC9: B5 80     LDA ram_0080_plr,X
C - - - - - 0x001DDB 00:DDCB: F0 43     BEQ bra_DE10
C - - - - - 0x001DDD 00:DDCD: A9 00     LDA #$00
C - - - - - 0x001DDF 00:DDCF: 95 80     STA ram_0080_plr,X
C - - - - - 0x001DE1 00:DDD1: A9 04     LDA #$04
C - - - - - 0x001DE3 00:DDD3: 85 00     STA ram_0000
C - - - - - 0x001DE5 00:DDD5: 20 E1 DD  JSR sub_DDE1
C - - - - - 0x001DE8 00:DDD8: 90 37     BCC bra_DE11_RTS
C - - - - - 0x001DEA 00:DDDA: B4 62     LDY ram_0062_plr,X
C - - - - - 0x001DEC 00:DDDC: B9 97 DA  LDA tbl_DA97,Y
C - - - - - 0x001DEF 00:DDDF: 85 00     STA ram_0000
sub_DDE1:
C - - - - - 0x001DF1 00:DDE1: 20 D5 DA  JSR sub_DAD5
C - - - - - 0x001DF4 00:DDE4: B0 06     BCS bra_DDEC
C - - - - - 0x001DF6 00:DDE6: A9 04     LDA #con_sfx_1_04
C - - - - - 0x001DF8 00:DDE8: 85 FC     STA ram_sfx_1
C - - - - - 0x001DFA 00:DDEA: 18        CLC
C - - - - - 0x001DFB 00:DDEB: 60        RTS
bra_DDEC:
C - - - - - 0x001DFC 00:DDEC: 20 B0 DB  JSR sub_DBB0
C - - - - - 0x001DFF 00:DDEF: A5 90     LDA ram_0090
C - - - - - 0x001E01 00:DDF1: 38        SEC
; ram_giant_bird_Y_pos
C - - - - - 0x001E02 00:DDF2: F5 D7     SBC ram_00D7,X ; 00D7 00D8 
C - - - - - 0x001E04 00:DDF4: C9 03     CMP #$03
C - - - - - 0x001E06 00:DDF6: B0 18     BCS bra_DE10
C - - - - - 0x001E08 00:DDF8: 94 5C     STY ram_005C_plr,X
C - - - - - 0x001E0A 00:DDFA: A5 03     LDA ram_0003
C - - - - - 0x001E0C 00:DDFC: 95 7D     STA ram_007D_plr,X ; 007D 007E 
C - - - - - 0x001E0E 00:DDFE: 20 F2 DA  JSR sub_DAF2
C - - - - - 0x001E11 00:DE01: 90 04     BCC bra_DE07
C - - - - - 0x001E13 00:DE03: B5 82     LDA ram_0082_plr,X
C - - - - - 0x001E15 00:DE05: D0 0A     BNE bra_DE11_RTS
bra_DE07:
C - - - - - 0x001E17 00:DE07: 20 1C D9  JSR sub_D91C
C - - - - - 0x001E1A 00:DE0A: B5 84     LDA ram_0084_plr,X
C - - - - - 0x001E1C 00:DE0C: 09 02     ORA #$02
C - - - - - 0x001E1E 00:DE0E: 95 84     STA ram_0084_plr,X
bra_DE10:
C - - - - - 0x001E20 00:DE10: 18        CLC
bra_DE11_RTS:
C - - - - - 0x001E21 00:DE11: 60        RTS



sub_DE12_convert_byte:
; out
    ; A = converted byte
C - - - - - 0x001E22 00:DE12: A5 04     LDA ram_0004
C - - - - - 0x001E24 00:DE14: C9 05     CMP #$05
C - - - - - 0x001E26 00:DE16: F0 05     BEQ bra_DE1D    ; if indirect 0500+
; if indirect 0400+
C - - - - - 0x001E28 00:DE18: B1 03     LDA (ram_0003),Y
C - - - - - 0x001E2A 00:DE1A: 4C BD DD  JMP loc_DDBD_convert_byte
bra_DE1D:
C - - - - - 0x001E2D 00:DE1D: B1 03     LDA (ram_0003),Y
C - - - - - 0x001E2F 00:DE1F: 4C EA DE  JMP loc_DEEA_convert_byte



sub_DE22:
C - - - - - 0x001E32 00:DE22: AD 01 03  LDA ram_ppu_buffer
C - - - - - 0x001E35 00:DE25: D0 EA     BNE bra_DE11_RTS
C - - - - - 0x001E37 00:DE27: 8D 00 03  STA ram_buffer_index
C - - - - - 0x001E3A 00:DE2A: A9 05     LDA #$05
C - - - - - 0x001E3C 00:DE2C: 85 0F     STA ram_000F
bra_DE2E_loop:
C - - - - - 0x001E3E 00:DE2E: AA        TAX
C - - - - - 0x001E3F 00:DE2F: B5 91     LDA ram_0091_obj,X ; 0096 0097 0098 
C - - - - - 0x001E41 00:DE31: 10 69     BPL bra_DE9C
C - - - - - 0x001E43 00:DE33: B5 B2     LDA ram_00B2_obj,X ; 00B7 00B8 
C - - - - - 0x001E45 00:DE35: F0 65     BEQ bra_DE9C
C - - - - - 0x001E47 00:DE37: 85 D9     STA ram_00D9
C - - - - - 0x001E49 00:DE39: B5 9C     LDA ram_009C_obj_pos_X,X ; 00A1 00A2 
C - - - - - 0x001E4B 00:DE3B: 18        CLC
C - - - - - 0x001E4C 00:DE3C: 69 08     ADC #$08
C - - - - - 0x001E4E 00:DE3E: 85 0E     STA ram_000E
C - - - - - 0x001E50 00:DE40: A9 00     LDA #$00
C - - - - - 0x001E52 00:DE42: 85 0D     STA ram_000D
loc_DE44:
C D 2 - - - 0x001E54 00:DE44: 20 B2 DE  JSR sub_DEB2
C - - - - - 0x001E57 00:DE47: 10 5C     BPL bra_DEA5
C - - - - - 0x001E59 00:DE49: A9 01     LDA #$01
C - - - - - 0x001E5B 00:DE4B: 91 03     STA (ram_0003),Y
C - - - - - 0x001E5D 00:DE4D: A2 02     LDX #$02
; bzk optimize, X = 2
C - - - - - 0x001E5F 00:DE4F: 94 5C     STY ram_005E - $02,X
C - - - - - 0x001E61 00:DE51: A5 03     LDA ram_0003
; bzk optimize, X = 2
C - - - - - 0x001E63 00:DE53: 95 7D     STA ram_007F - $02,X
C - - - - - 0x001E65 00:DE55: A5 0E     LDA ram_000E
C - - - - - 0x001E67 00:DE57: 20 BF ED  JSR sub_EDBF
C - - - - - 0x001E6A 00:DE5A: 85 D6     STA ram_giant_bird_X_pos
C - - - - - 0x001E6C 00:DE5C: 20 F0 DC  JSR sub_DCF0
C - - - - - 0x001E6F 00:DE5F: AC 00 03  LDY ram_buffer_index
C - - - - - 0x001E72 00:DE62: 84 00     STY ram_0000
C - - - - - 0x001E74 00:DE64: A2 02     LDX #$02
C - - - - - 0x001E76 00:DE66: 20 B3 DC  JSR sub_DCB3
C - - - - - 0x001E79 00:DE69: A4 D9     LDY ram_00D9
C - - - - - 0x001E7B 00:DE6B: B9 2F 06  LDA ram_0600_data + $2F,Y
C - - - - - 0x001E7E 00:DE6E: 10 13     BPL bra_DE83
- - - - - - 0x001E80 00:DE70: C9 90     CMP #$90
- - - - - - 0x001E82 00:DE72: B0 09     BCS bra_DE7D
- - - - - - 0x001E84 00:DE74: C9 8C     CMP #$8C
- - - - - - 0x001E86 00:DE76: F0 03     BEQ bra_DE7B
- - - - - - 0x001E88 00:DE78: A9 CD     LDA #$CD
- - - - - - 0x001E8A 00:DE7A: 2C        .byte $2C   ; BIT opcode
bra_DE7B:
- - - - - - 0x001E8B 00:DE7B: A9 D3     LDA #$D3
bra_DE7D:
- - - - - - 0x001E8D 00:DE7D: AC 00 03  LDY ram_buffer_index
- - - - - - 0x001E90 00:DE80: 99 00 03  STA ram_ppu_buffer - $01,Y
bra_DE83:
C - - - - - 0x001E93 00:DE83: A5 0D     LDA ram_000D
C - - - - - 0x001E95 00:DE85: D0 22     BNE bra_DEA9
C - - - - - 0x001E97 00:DE87: A6 0F     LDX ram_000F
C - - - - - 0x001E99 00:DE89: B5 BD     LDA ram_00BD_obj,X
C - - - - - 0x001E9B 00:DE8B: 30 03     BMI bra_DE90
C - - - - - 0x001E9D 00:DE8D: A9 08     LDA #$08
C - - - - - 0x001E9F 00:DE8F: 2C        .byte $2C   ; BIT opcode
bra_DE90:
C - - - - - 0x001E90 00:DE90: A9 F8     LDA #$F8
C - - - - - 0x001EA2 00:DE92: 85 0D     STA ram_000D
C - - - - - 0x001EA4 00:DE94: 18        CLC
C - - - - - 0x001EA5 00:DE95: 65 0E     ADC ram_000E
C - - - - - 0x001EA7 00:DE97: 85 0E     STA ram_000E
C - - - - - 0x001EA9 00:DE99: 4C 44 DE  JMP loc_DE44
bra_DE9C:
C - - - - - 0x001EAC 00:DE9C: E6 0F     INC ram_000F
C - - - - - 0x001EAE 00:DE9E: A5 0F     LDA ram_000F
C - - - - - 0x001EB0 00:DEA0: C9 08     CMP #$08
C - - - - - 0x001EB2 00:DEA2: 90 8A     BCC bra_DE2E_loop
C - - - - - 0x001EB4 00:DEA4: 60        RTS
bra_DEA5:
C - - - - - 0x001EB5 00:DEA5: A5 0D     LDA ram_000D
C - - - - - 0x001EB7 00:DEA7: F0 F3     BEQ bra_DE9C
bra_DEA9:
C - - - - - 0x001EB9 00:DEA9: A9 02     LDA #con_sfx_1_block_placed_or_destroyed
C - - - - - 0x001EBB 00:DEAB: 85 FC     STA ram_sfx_1
C - - - - - 0x001EBD 00:DEAD: A6 0F     LDX ram_000F
C - - - - - 0x001EBF 00:DEAF: 4C 88 D8  JMP loc_D888



sub_DEB2:
loc_DEB2:
C D 2 - - - 0x001EC2 00:DEB2: A6 0F     LDX ram_000F
C - - - - - 0x001EC4 00:DEB4: B5 B2     LDA ram_00B2_obj,X ; 00B3 00B4 00B5 00B7 00B8 
C - - - - - 0x001EC6 00:DEB6: 29 0F     AND #$0F
C - - - - - 0x001EC8 00:DEB8: 2C        .byte $2C   ; BIT opcode
sub_DEB9:
C - - - - - 0x001EC9 00:DEB9: A5 0F     LDA ram_000F
C - - - - - 0x001ECB 00:DEBB: 48        PHA
C - - - - - 0x001ECC 00:DEBC: A5 0E     LDA ram_000E
C - - - - - 0x001ECE 00:DEBE: C9 20     CMP #$20
C - - - - - 0x001ED0 00:DEC0: 90 22     BCC bra_DEE4
C - - - - - 0x001ED2 00:DEC2: C9 E0     CMP #$E0
C - - - - - 0x001ED4 00:DEC4: B0 1E     BCS bra_DEE4
C - - - - - 0x001ED6 00:DEC6: 20 BF ED  JSR sub_EDBF
C - - - - - 0x001ED9 00:DEC9: 38        SEC
C - - - - - 0x001EDA 00:DECA: E9 04     SBC #$04
C - - - - - 0x001EDC 00:DECC: 85 02     STA ram_0002
C - - - - - 0x001EDE 00:DECE: 68        PLA
C - - - - - 0x001EDF 00:DECF: A8        TAY
C - - - - - 0x001EE0 00:DED0: B9 62 D7  LDA tbl_D762,Y
C - - - - - 0x001EE3 00:DED3: 85 03     STA ram_0003
C - - - - - 0x001EE5 00:DED5: A9 05     LDA #$05
C - - - - - 0x001EE7 00:DED7: 85 04     STA ram_0004
C - - - - - 0x001EE9 00:DED9: A4 02     LDY ram_0002
C - - - - - 0x001EEB 00:DEDB: B1 03     LDA (ram_0003),Y
C - - - - - 0x001EED 00:DEDD: 85 02     STA ram_0002
C - - - - - 0x001EEF 00:DEDF: C6 04     DEC ram_0004
C - - - - - 0x001EF1 00:DEE1: B1 03     LDA (ram_0003),Y
C - - - - - 0x001EF3 00:DEE3: 60        RTS
bra_DEE4:
C - - - - - 0x001EF4 00:DEE4: 68        PLA
C - - - - - 0x001EF5 00:DEE5: A9 01     LDA #$01
C - - - - - 0x001EF7 00:DEE7: 85 02     STA ram_0002
C - - - - - 0x001EF9 00:DEE9: 60        RTS



loc_DEEA_convert_byte:
C D 2 - - - 0x001EFA 00:DEEA: A0 06     LDY #$06
bra_DEEC_loop:
C - - - - - 0x001EFC 00:DEEC: 88        DEY
C - - - - - 0x001EFD 00:DEED: D9 7F D7  CMP tbl_D77F_match,Y
C - - - - - 0x001F00 00:DEF0: D0 FA     BNE bra_DEEC_loop
C - - - - - 0x001F02 00:DEF2: B9 9D D7  LDA tbl_D79D_replace,Y
C - - - - - 0x001F05 00:DEF5: 60        RTS



tbl_DEF6:
- D 2 - - - 0x001F06 00:DEF6: 50        .byte $50   ; 00 
- D 2 - - - 0x001F07 00:DEF7: 80        .byte $80   ; 01 
- D 2 - - - 0x001F08 00:DEF8: B0        .byte $B0   ; 02 
- D 2 - - - 0x001F09 00:DEF9: E0        .byte $E0   ; 03 



tbl_DEFA:
- D 2 - - - 0x001F0A 00:DEFA: 00        .byte $00   ; 00 
- D 2 - - - 0x001F0B 00:DEFB: 00        .byte $00   ; 01 
- D 2 - - - 0x001F0C 00:DEFC: 00        .byte $00   ; 02 
- D 2 - - - 0x001F0D 00:DEFD: 02        .byte $02   ; 03 
- D 2 - - - 0x001F0E 00:DEFE: 04        .byte $04   ; 04 
- D 2 - - - 0x001F0F 00:DEFF: 07        .byte $07   ; 05 
- D 2 - - - 0x001F10 00:DF00: 08        .byte $08   ; 06 
- D 2 - - - 0x001F11 00:DF01: 0C        .byte $0C   ; 07 
- D 2 - - - 0x001F12 00:DF02: 0E        .byte $0E   ; 08 
- D 2 - - - 0x001F13 00:DF03: 12        .byte $12   ; 09 
- D 2 - - - 0x001F14 00:DF04: 12        .byte $12   ; 0A 
- D 2 - - - 0x001F15 00:DF05: 15        .byte $15   ; 0B 
- D 2 - - - 0x001F16 00:DF06: 17        .byte $17   ; 0C 
- D 2 - - - 0x001F17 00:DF07: 17        .byte $17   ; 0D 
- D 2 - - - 0x001F18 00:DF08: 18        .byte $18   ; 0E 
- D 2 - - - 0x001F19 00:DF09: 23        .byte $23   ; 0F 
- D 2 - - - 0x001F1A 00:DF0A: 23        .byte $23   ; 10 
- D 2 - - - 0x001F1B 00:DF0B: 26        .byte $26   ; 11 
- D 2 - - - 0x001F1C 00:DF0C: 2D        .byte $2D   ; 12 
- D 2 - - - 0x001F1D 00:DF0D: 30        .byte $30   ; 13 
- D 2 - - - 0x001F1E 00:DF0E: 39        .byte $39   ; 14 
- D 2 - - - 0x001F1F 00:DF0F: 44        .byte $44   ; 15 
- D 2 - - - 0x001F20 00:DF10: 4E        .byte $4E   ; 16 
- D 2 - - - 0x001F21 00:DF11: 53        .byte $53   ; 17 
- D 2 - - - 0x001F22 00:DF12: 5A        .byte $5A   ; 18 
- D 2 - - - 0x001F23 00:DF13: 60        .byte $60   ; 19 
- D 2 - - - 0x001F24 00:DF14: 6A        .byte $6A   ; 1A 
- D 2 - - - 0x001F25 00:DF15: 6E        .byte $6E   ; 1B 
- D 2 - - - 0x001F26 00:DF16: 6F        .byte $6F   ; 1C 
- D 2 - - - 0x001F27 00:DF17: 73        .byte $73   ; 1D 
- D 2 - - - 0x001F28 00:DF18: 78        .byte $78   ; 1E 
- D 2 - - - 0x001F29 00:DF19: 81        .byte $81   ; 1F 
- D 2 - - - 0x001F2A 00:DF1A: 89        .byte $89   ; 20 



tbl_DF1B:
;                                                    +----------- 
;                                                    |     +----- 
;                                                    |     |
- - - - - - 0x001F2B 00:DF1B: 89        .byte $20 * $04 + $09   ; 00 
- D 2 - - - 0x001F2C 00:DF1C: 85        .byte $20 * $04 + $05   ; 01 
- D 2 - - - 0x001F2D 00:DF1D: B2        .byte $20 * $05 + $12   ; 02 
- D 2 - - - 0x001F2E 00:DF1E: 91        .byte $20 * $04 + $11   ; 03 
- D 2 - - - 0x001F2F 00:DF1F: AB        .byte $20 * $05 + $0B   ; 04 
- D 2 - - - 0x001F30 00:DF20: 27        .byte $20 * $01 + $07   ; 05 
- D 2 - - - 0x001F31 00:DF21: 67        .byte $20 * $03 + $07   ; 06 
- D 2 - - - 0x001F32 00:DF22: 6C        .byte $20 * $03 + $0C   ; 07 
- D 2 - - - 0x001F33 00:DF23: 93        .byte $20 * $04 + $13   ; 08 
- D 2 - - - 0x001F34 00:DF24: 27        .byte $20 * $01 + $07   ; 09 
- D 2 - - - 0x001F35 00:DF25: 65        .byte $20 * $03 + $05   ; 0A 
- D 2 - - - 0x001F36 00:DF26: 81        .byte $20 * $04 + $01   ; 0B 
- D 2 - - - 0x001F37 00:DF27: 8D        .byte $20 * $04 + $0D   ; 0C 
- D 2 - - - 0x001F38 00:DF28: CB        .byte $20 * $06 + $0B   ; 0D 
- D 2 - - - 0x001F39 00:DF29: F2        .byte $20 * $07 + $12   ; 0E 
- D 2 - - - 0x001F3A 00:DF2A: 22        .byte $20 * $01 + $02   ; 0F 
- D 2 - - - 0x001F3B 00:DF2B: A2        .byte $20 * $05 + $02   ; 10 
- D 2 - - - 0x001F3C 00:DF2C: AE        .byte $20 * $05 + $0E   ; 11 
- D 2 - - - 0x001F3D 00:DF2D: C8        .byte $20 * $06 + $08   ; 12 
- D 2 - - - 0x001F3E 00:DF2E: 27        .byte $20 * $01 + $07   ; 13 
- D 2 - - - 0x001F3F 00:DF2F: C7        .byte $20 * $06 + $07   ; 14 
- D 2 - - - 0x001F40 00:DF30: D0        .byte $20 * $06 + $10   ; 15 
- D 2 - - - 0x001F41 00:DF31: C4        .byte $20 * $06 + $04   ; 16 
- D 2 - - - 0x001F42 00:DF32: D2        .byte $20 * $06 + $12   ; 17 
- D 2 - - - 0x001F43 00:DF33: 81        .byte $20 * $04 + $01   ; 18 
- D 2 - - - 0x001F44 00:DF34: 4A        .byte $20 * $02 + $0A   ; 19 
- D 2 - - - 0x001F45 00:DF35: 84        .byte $20 * $04 + $04   ; 1A 
- D 2 - - - 0x001F46 00:DF36: 8C        .byte $20 * $04 + $0C   ; 1B 
- D 2 - - - 0x001F47 00:DF37: 94        .byte $20 * $04 + $14   ; 1C 
- D 2 - - - 0x001F48 00:DF38: A8        .byte $20 * $05 + $08   ; 1D 
- D 2 - - - 0x001F49 00:DF39: C2        .byte $20 * $06 + $02   ; 1E 
- D 2 - - - 0x001F4A 00:DF3A: 44        .byte $20 * $02 + $04   ; 1F 
- D 2 - - - 0x001F4B 00:DF3B: 4A        .byte $20 * $02 + $0A   ; 20 
- D 2 - - - 0x001F4C 00:DF3C: 50        .byte $20 * $02 + $10   ; 21 
- D 2 - - - 0x001F4D 00:DF3D: CA        .byte $20 * $06 + $0A   ; 22 
- D 2 - - - 0x001F4E 00:DF3E: D1        .byte $20 * $06 + $11   ; 23 
- D 2 - - - 0x001F4F 00:DF3F: 48        .byte $20 * $02 + $08   ; 24 
- D 2 - - - 0x001F50 00:DF40: 70        .byte $20 * $03 + $10   ; 25 
- D 2 - - - 0x001F51 00:DF41: 84        .byte $20 * $04 + $04   ; 26 
- D 2 - - - 0x001F52 00:DF42: 26        .byte $20 * $01 + $06   ; 27 
- D 2 - - - 0x001F53 00:DF43: 2E        .byte $20 * $01 + $0E   ; 28 
- D 2 - - - 0x001F54 00:DF44: 64        .byte $20 * $03 + $04   ; 29 
- D 2 - - - 0x001F55 00:DF45: 70        .byte $20 * $03 + $10   ; 2A 
- D 2 - - - 0x001F56 00:DF46: C7        .byte $20 * $06 + $07   ; 2B 
- D 2 - - - 0x001F57 00:DF47: CD        .byte $20 * $06 + $0D   ; 2C 
- D 2 - - - 0x001F58 00:DF48: D3        .byte $20 * $06 + $13   ; 2D 
- D 2 - - - 0x001F59 00:DF49: A2        .byte $20 * $05 + $02   ; 2E 
- D 2 - - - 0x001F5A 00:DF4A: AB        .byte $20 * $05 + $0B   ; 2F 
- D 2 - - - 0x001F5B 00:DF4B: B1        .byte $20 * $05 + $11   ; 30 
- D 2 - - - 0x001F5C 00:DF4C: 2C        .byte $20 * $01 + $0C   ; 31 
- D 2 - - - 0x001F5D 00:DF4D: 85        .byte $20 * $04 + $05   ; 32 
- D 2 - - - 0x001F5E 00:DF4E: 8B        .byte $20 * $04 + $0B   ; 33 
- D 2 - - - 0x001F5F 00:DF4F: 91        .byte $20 * $04 + $11   ; 34 
- D 2 - - - 0x001F60 00:DF50: 96        .byte $20 * $04 + $16   ; 35 
- D 2 - - - 0x001F61 00:DF51: A7        .byte $20 * $05 + $07   ; 36 
- D 2 - - - 0x001F62 00:DF52: AE        .byte $20 * $05 + $0E   ; 37 
- D 2 - - - 0x001F63 00:DF53: CF        .byte $20 * $06 + $0F   ; 38 
- D 2 - - - 0x001F64 00:DF54: D4        .byte $20 * $06 + $14   ; 39 
- D 2 - - - 0x001F65 00:DF55: 27        .byte $20 * $01 + $07   ; 3A 
- D 2 - - - 0x001F66 00:DF56: 44        .byte $20 * $02 + $04   ; 3B 
- D 2 - - - 0x001F67 00:DF57: 50        .byte $20 * $02 + $10   ; 3C 
- D 2 - - - 0x001F68 00:DF58: 63        .byte $20 * $03 + $03   ; 3D 
- D 2 - - - 0x001F69 00:DF59: 6D        .byte $20 * $03 + $0D   ; 3E 
- D 2 - - - 0x001F6A 00:DF5A: 86        .byte $20 * $04 + $06   ; 3F 
- D 2 - - - 0x001F6B 00:DF5B: 90        .byte $20 * $04 + $10   ; 40 
- D 2 - - - 0x001F6C 00:DF5C: A3        .byte $20 * $05 + $03   ; 41 
- D 2 - - - 0x001F6D 00:DF5D: A9        .byte $20 * $05 + $09   ; 42 
- D 2 - - - 0x001F6E 00:DF5E: AF        .byte $20 * $05 + $0F   ; 43 
- D 2 - - - 0x001F6F 00:DF5F: E3        .byte $20 * $07 + $03   ; 44 
- D 2 - - - 0x001F70 00:DF60: E5        .byte $20 * $07 + $05   ; 45 
- D 2 - - - 0x001F71 00:DF61: ED        .byte $20 * $07 + $0D   ; 46 
- D 2 - - - 0x001F72 00:DF62: F4        .byte $20 * $07 + $14   ; 47 
- D 2 - - - 0x001F73 00:DF63: 48        .byte $20 * $02 + $08   ; 48 
- D 2 - - - 0x001F74 00:DF64: 4F        .byte $20 * $02 + $0F   ; 49 
- D 2 - - - 0x001F75 00:DF65: A3        .byte $20 * $05 + $03   ; 4A 
- D 2 - - - 0x001F76 00:DF66: AB        .byte $20 * $05 + $0B   ; 4B 
- D 2 - - - 0x001F77 00:DF67: B3        .byte $20 * $05 + $13   ; 4C 
- D 2 - - - 0x001F78 00:DF68: C3        .byte $20 * $06 + $03   ; 4D 
- D 2 - - - 0x001F79 00:DF69: CB        .byte $20 * $06 + $0B   ; 4E 
- D 2 - - - 0x001F7A 00:DF6A: 6D        .byte $20 * $03 + $0D   ; 4F 
- D 2 - - - 0x001F7B 00:DF6B: 92        .byte $20 * $04 + $12   ; 50 
- D 2 - - - 0x001F7C 00:DF6C: A5        .byte $20 * $05 + $05   ; 51 
- D 2 - - - 0x001F7D 00:DF6D: AF        .byte $20 * $05 + $0F   ; 52 
- D 2 - - - 0x001F7E 00:DF6E: EB        .byte $20 * $07 + $0B   ; 53 
- D 2 - - - 0x001F7F 00:DF6F: 64        .byte $20 * $03 + $04   ; 54 
- D 2 - - - 0x001F80 00:DF70: 88        .byte $20 * $04 + $08   ; 55 
- D 2 - - - 0x001F81 00:DF71: 8E        .byte $20 * $04 + $0E   ; 56 
- D 2 - - - 0x001F82 00:DF72: 94        .byte $20 * $04 + $14   ; 57 
- D 2 - - - 0x001F83 00:DF73: AC        .byte $20 * $05 + $0C   ; 58 
- D 2 - - - 0x001F84 00:DF74: EC        .byte $20 * $07 + $0C   ; 59 
- D 2 - - - 0x001F85 00:DF75: F2        .byte $20 * $07 + $12   ; 5A 
- D 2 - - - 0x001F86 00:DF76: A7        .byte $20 * $05 + $07   ; 5B 
- D 2 - - - 0x001F87 00:DF77: AE        .byte $20 * $05 + $0E   ; 5C 
- D 2 - - - 0x001F88 00:DF78: C4        .byte $20 * $06 + $04   ; 5D 
- D 2 - - - 0x001F89 00:DF79: C7        .byte $20 * $06 + $07   ; 5E 
- D 2 - - - 0x001F8A 00:DF7A: D3        .byte $20 * $06 + $13   ; 5F 
- D 2 - - - 0x001F8B 00:DF7B: CE        .byte $20 * $06 + $0E   ; 60 
- D 2 - - - 0x001F8C 00:DF7C: 23        .byte $20 * $01 + $03   ; 61 
- D 2 - - - 0x001F8D 00:DF7D: 64        .byte $20 * $03 + $04   ; 62 
- D 2 - - - 0x001F8E 00:DF7E: 8E        .byte $20 * $04 + $0E   ; 63 
- D 2 - - - 0x001F8F 00:DF7F: A9        .byte $20 * $05 + $09   ; 64 
- D 2 - - - 0x001F90 00:DF80: D0        .byte $20 * $06 + $10   ; 65 
- D 2 - - - 0x001F91 00:DF81: E4        .byte $20 * $07 + $04   ; 66 
- D 2 - - - 0x001F92 00:DF82: E9        .byte $20 * $07 + $09   ; 67 
- D 2 - - - 0x001F93 00:DF83: C8        .byte $20 * $06 + $08   ; 68 
- D 2 - - - 0x001F94 00:DF84: D0        .byte $20 * $06 + $10   ; 69 
- D 2 - - - 0x001F95 00:DF85: D4        .byte $20 * $06 + $14   ; 6A 
- D 2 - - - 0x001F96 00:DF86: 8B        .byte $20 * $04 + $0B   ; 6B 
- D 2 - - - 0x001F97 00:DF87: C9        .byte $20 * $06 + $09   ; 6C 
- D 2 - - - 0x001F98 00:DF88: D4        .byte $20 * $06 + $14   ; 6D 
- D 2 - - - 0x001F99 00:DF89: CF        .byte $20 * $06 + $0F   ; 6E 
- D 2 - - - 0x001F9A 00:DF8A: CB        .byte $20 * $06 + $0B   ; 6F 
- D 2 - - - 0x001F9B 00:DF8B: 88        .byte $20 * $04 + $08   ; 70 
- D 2 - - - 0x001F9C 00:DF8C: 90        .byte $20 * $04 + $10   ; 71 
- D 2 - - - 0x001F9D 00:DF8D: A4        .byte $20 * $05 + $04   ; 72 
- D 2 - - - 0x001F9E 00:DF8E: D4        .byte $20 * $06 + $14   ; 73 
- D 2 - - - 0x001F9F 00:DF8F: C7        .byte $20 * $06 + $07   ; 74 
- D 2 - - - 0x001FA0 00:DF90: D0        .byte $20 * $06 + $10   ; 75 
- D 2 - - - 0x001FA1 00:DF91: E2        .byte $20 * $07 + $02   ; 76 
- D 2 - - - 0x001FA2 00:DF92: E9        .byte $20 * $07 + $09   ; 77 
- D 2 - - - 0x001FA3 00:DF93: F1        .byte $20 * $07 + $11   ; 78 
- D 2 - - - 0x001FA4 00:DF94: 2B        .byte $20 * $01 + $0B   ; 79 
- D 2 - - - 0x001FA5 00:DF95: 50        .byte $20 * $02 + $10   ; 7A 
- D 2 - - - 0x001FA6 00:DF96: 67        .byte $20 * $03 + $07   ; 7B 
- D 2 - - - 0x001FA7 00:DF97: 70        .byte $20 * $03 + $10   ; 7C 
- D 2 - - - 0x001FA8 00:DF98: 82        .byte $20 * $04 + $02   ; 7D 
- D 2 - - - 0x001FA9 00:DF99: 8B        .byte $20 * $04 + $0B   ; 7E 
- D 2 - - - 0x001FAA 00:DF9A: C2        .byte $20 * $06 + $02   ; 7F 
- D 2 - - - 0x001FAB 00:DF9B: C9        .byte $20 * $06 + $09   ; 80 
- D 2 - - - 0x001FAC 00:DF9C: D1        .byte $20 * $06 + $11   ; 81 
- D 2 - - - 0x001FAD 00:DF9D: 48        .byte $20 * $02 + $08   ; 82 
- D 2 - - - 0x001FAE 00:DF9E: 51        .byte $20 * $02 + $11   ; 83 
- D 2 - - - 0x001FAF 00:DF9F: 87        .byte $20 * $04 + $07   ; 84 
- D 2 - - - 0x001FB0 00:DFA0: 95        .byte $20 * $04 + $15   ; 85 
- D 2 - - - 0x001FB1 00:DFA1: B0        .byte $20 * $05 + $10   ; 86 
- D 2 - - - 0x001FB2 00:DFA2: E4        .byte $20 * $07 + $04   ; 87 
- D 2 - - - 0x001FB3 00:DFA3: ED        .byte $20 * $07 + $0D   ; 88 
- D 2 - - - 0x001FB4 00:DFA4: F5        .byte $20 * $07 + $15   ; 89 



sub_DFA5:
C - - - - - 0x001FB5 00:DFA5: A5 59     LDA ram_mountain_current
C - - - - - 0x001FB7 00:DFA7: 29 1F     AND #$1F
C - - - - - 0x001FB9 00:DFA9: A8        TAY
C - - - - - 0x001FBA 00:DFAA: 60        RTS



sub_DFAB:
C - - - - - 0x001FBB 00:DFAB: 20 EA DF  JSR sub_DFEA
C - - - - - 0x001FBE 00:DFAE: F0 39     BEQ bra_DFE9_RTS
C - - - - - 0x001FC0 00:DFB0: AA        TAX
bra_DFB1_loop:
C - - - - - 0x001FC1 00:DFB1: A9 04     LDA #$04
C - - - - - 0x001FC3 00:DFB3: 85 04     STA ram_0004
C - - - - - 0x001FC5 00:DFB5: 85 06     STA ram_0006
C - - - - - 0x001FC7 00:DFB7: 20 F8 DF  JSR sub_DFF8
C - - - - - 0x001FCA 00:DFBA: BD 1B DF  LDA tbl_DF1B,X
C - - - - - 0x001FCD 00:DFBD: 29 1F     AND #$1F
C - - - - - 0x001FCF 00:DFBF: 18        CLC
C - - - - - 0x001FD0 00:DFC0: 79 62 D7  ADC tbl_D762,Y
C - - - - - 0x001FD3 00:DFC3: 38        SEC
C - - - - - 0x001FD4 00:DFC4: E9 01     SBC #$01
C - - - - - 0x001FD6 00:DFC6: 85 03     STA ram_0003
C - - - - - 0x001FD8 00:DFC8: 18        CLC
C - - - - - 0x001FD9 00:DFC9: 69 18     ADC #$18
C - - - - - 0x001FDB 00:DFCB: 85 05     STA ram_0005
C - - - - - 0x001FDD 00:DFCD: A0 02     LDY #$02
bra_DFCF_loop:
C - - - - - 0x001FDF 00:DFCF: A9 03     LDA #$03
C - - - - - 0x001FE1 00:DFD1: 91 03     STA (ram_0003),Y
C - - - - - 0x001FE3 00:DFD3: C0 01     CPY #$01
C - - - - - 0x001FE5 00:DFD5: D0 0A     BNE bra_DFE1
C - - - - - 0x001FE7 00:DFD7: A9 04     LDA #$04
C - - - - - 0x001FE9 00:DFD9: 91 05     STA (ram_0005),Y
C - - - - - 0x001FEB 00:DFDB: E6 06     INC ram_0006
C - - - - - 0x001FED 00:DFDD: 91 05     STA (ram_0005),Y
C - - - - - 0x001FEF 00:DFDF: C6 06     DEC ram_0006
bra_DFE1:
C - - - - - 0x001FF1 00:DFE1: 88        DEY
C - - - - - 0x001FF2 00:DFE2: 10 EB     BPL bra_DFCF_loop
C - - - - - 0x001FF4 00:DFE4: CA        DEX
C - - - - - 0x001FF5 00:DFE5: E4 0A     CPX ram_000A
C - - - - - 0x001FF7 00:DFE7: D0 C8     BNE bra_DFB1_loop
bra_DFE9_RTS:
C - - - - - 0x001FF9 00:DFE9: 60        RTS



sub_DFEA:
C - - - - - 0x001FFA 00:DFEA: 20 A5 DF  JSR sub_DFA5
C - - - - - 0x001FFD 00:DFED: B9 FA DE  LDA tbl_DEFA,Y
C - - - - - 0x002000 00:DFF0: 85 0A     STA ram_000A
C - - - - - 0x002002 00:DFF2: B9 FB DE  LDA tbl_DEFA + $01,Y
C - - - - - 0x002005 00:DFF5: C5 0A     CMP ram_000A
C - - - - - 0x002007 00:DFF7: 60        RTS



sub_DFF8:
C - - - - - 0x002008 00:DFF8: BD 1B DF  LDA tbl_DF1B,X
; / 20
C - - - - - 0x00200B 00:DFFB: 4A        LSR
C - - - - - 0x00200C 00:DFFC: 4A        LSR
C - - - - - 0x00200D 00:DFFD: 4A        LSR
C - - - - - 0x00200E 00:DFFE: 4A        LSR
C - - - - - 0x00200F 00:DFFF: 4A        LSR
C - - - - - 0x002010 00:E000: A8        TAY
C - - - - - 0x002011 00:E001: 60        RTS



sub_E002:
C - - - - - 0x002012 00:E002: A2 0B     LDX #$0B
bra_E004_loop:
C - - - - - 0x002014 00:E004: A9 00     LDA #$00
C - - - - - 0x002016 00:E006: 9D 00 06  STA ram_0600_data,X
C - - - - - 0x002019 00:E009: 9D 10 06  STA ram_0600_data + $10,X
C - - - - - 0x00201C 00:E00C: 9D 20 06  STA ram_0600_data + $20,X
C - - - - - 0x00201F 00:E00F: CA        DEX
C - - - - - 0x002020 00:E010: 10 F2     BPL bra_E004_loop
C - - - - - 0x002022 00:E012: 20 EA DF  JSR sub_DFEA
C - - - - - 0x002025 00:E015: F0 46     BEQ bra_E05D_RTS
C - - - - - 0x002027 00:E017: 85 0B     STA ram_000B
C - - - - - 0x002029 00:E019: A2 00     LDX #$00
bra_E01B_loop:
C - - - - - 0x00202B 00:E01B: A4 0B     LDY ram_000B
; bzk optimize, JSR to 0x002008
C - - - - - 0x00202D 00:E01D: B9 1B DF  LDA tbl_DF1B,Y
; / 20
C - - - - - 0x002030 00:E020: 4A        LSR
C - - - - - 0x002031 00:E021: 4A        LSR
C - - - - - 0x002032 00:E022: 4A        LSR
C - - - - - 0x002033 00:E023: 4A        LSR
C - - - - - 0x002034 00:E024: 4A        LSR
C - - - - - 0x002035 00:E025: 85 00     STA ram_0000
C - - - - - 0x002037 00:E027: A5 90     LDA ram_0090
C - - - - - 0x002039 00:E029: 38        SEC
C - - - - - 0x00203A 00:E02A: E5 00     SBC ram_0000
C - - - - - 0x00203C 00:E02C: C9 04     CMP #$04
C - - - - - 0x00203E 00:E02E: B0 24     BCS bra_E054
C - - - - - 0x002040 00:E030: A8        TAY
C - - - - - 0x002041 00:E031: B9 F6 DE  LDA tbl_DEF6,Y
C - - - - - 0x002044 00:E034: 9D 10 06  STA ram_0600_data + $10,X
C - - - - - 0x002047 00:E037: A4 0B     LDY ram_000B
C - - - - - 0x002049 00:E039: B9 1B DF  LDA tbl_DF1B,Y
C - - - - - 0x00204C 00:E03C: 29 1F     AND #$1F
C - - - - - 0x00204E 00:E03E: 69 04     ADC #$04
C - - - - - 0x002050 00:E040: 0A        ASL
C - - - - - 0x002051 00:E041: 0A        ASL
C - - - - - 0x002052 00:E042: 0A        ASL
C - - - - - 0x002053 00:E043: 9D 00 06  STA ram_0600_data,X
C - - - - - 0x002056 00:E046: B9 1B DF  LDA tbl_DF1B,Y
C - - - - - 0x002059 00:E049: 29 1F     AND #$1F
C - - - - - 0x00205B 00:E04B: 18        CLC
C - - - - - 0x00205C 00:E04C: 69 05     ADC #$05
C - - - - - 0x00205E 00:E04E: 0A        ASL
C - - - - - 0x00205F 00:E04F: 0A        ASL
C - - - - - 0x002060 00:E050: 0A        ASL
C - - - - - 0x002061 00:E051: 9D 20 06  STA ram_0600_data + $20,X
bra_E054:
C - - - - - 0x002064 00:E054: E8        INX
C - - - - - 0x002065 00:E055: C6 0B     DEC ram_000B
C - - - - - 0x002067 00:E057: A5 0B     LDA ram_000B
C - - - - - 0x002069 00:E059: C5 0A     CMP ram_000A
C - - - - - 0x00206B 00:E05B: D0 BE     BNE bra_E01B_loop
bra_E05D_RTS:
C - - - - - 0x00206D 00:E05D: 60        RTS



loc_E05E:
C D 3 - - - 0x00206E 00:E05E: 20 EA DF  JSR sub_DFEA
C - - - - - 0x002071 00:E061: F0 FA     BEQ bra_E05D_RTS
C - - - - - 0x002073 00:E063: 85 01     STA ram_0001
C - - - - - 0x002075 00:E065: A9 00     LDA #$00
C - - - - - 0x002077 00:E067: 85 00     STA ram_0000
bra_E069_loop:
C - - - - - 0x002079 00:E069: A6 01     LDX ram_0001
C - - - - - 0x00207B 00:E06B: 20 F8 DF  JSR sub_DFF8
C - - - - - 0x00207E 00:E06E: B9 94 D7  LDA tbl_D794_ppu_lo,Y
C - - - - - 0x002081 00:E071: 85 02     STA ram_0002
C - - - - - 0x002083 00:E073: B9 8B D7  LDA tbl_D78B_ppu_hi,Y
C - - - - - 0x002086 00:E076: 20 A7 E0  JSR sub_E0A7
C - - - - - 0x002089 00:E079: 20 97 E0  JSR sub_E097
C - - - - - 0x00208C 00:E07C: A5 00     LDA ram_0000
C - - - - - 0x00208E 00:E07E: 18        CLC
C - - - - - 0x00208F 00:E07F: 69 04     ADC #$04
C - - - - - 0x002091 00:E081: 85 00     STA ram_0000
C - - - - - 0x002093 00:E083: C9 38     CMP #$38
C - - - - - 0x002095 00:E085: B0 08     BCS bra_E08F
C - - - - - 0x002097 00:E087: C6 01     DEC ram_0001
C - - - - - 0x002099 00:E089: A5 01     LDA ram_0001
C - - - - - 0x00209B 00:E08B: C5 0A     CMP ram_000A
C - - - - - 0x00209D 00:E08D: D0 DA     BNE bra_E069_loop
bra_E08F:
C - - - - - 0x00209F 00:E08F: A4 00     LDY ram_0000
C - - - - - 0x0020A1 00:E091: 8C 00 03  STY ram_buffer_index
C - - - - - 0x0020A4 00:E094: 4C 4E C1  JMP loc_C14E



sub_E097:
C - - - - - 0x0020A7 00:E097: A9 C5     LDA #$C5
C - - - - - 0x0020A9 00:E099: 99 03 03  STA ram_ppu_buffer + $02,Y
C - - - - - 0x0020AC 00:E09C: A9 EB     LDA #$EB
C - - - - - 0x0020AE 00:E09E: 99 04 03  STA ram_ppu_buffer + $03,Y
C - - - - - 0x0020B1 00:E0A1: A9 00     LDA #$00
C - - - - - 0x0020B3 00:E0A3: 99 05 03  STA ram_ppu_buffer + $04,Y
C - - - - - 0x0020B6 00:E0A6: 60        RTS



sub_E0A7:
C - - - - - 0x0020B7 00:E0A7: 20 EA DC  JSR sub_DCEA_write_A_to_ppu_buffer
C - - - - - 0x0020BA 00:E0AA: BD 1B DF  LDA tbl_DF1B,X
C - - - - - 0x0020BD 00:E0AD: 29 1F     AND #$1F
C - - - - - 0x0020BF 00:E0AF: 18        CLC
C - - - - - 0x0020C0 00:E0B0: 69 04     ADC #$04
C - - - - - 0x0020C2 00:E0B2: 18        CLC
C - - - - - 0x0020C3 00:E0B3: 65 02     ADC ram_0002
C - - - - - 0x0020C5 00:E0B5: 99 02 03  STA ram_ppu_buffer + $01,Y
C - - - - - 0x0020C8 00:E0B8: 60        RTS



sub_E0B9:
C - - - - - 0x0020C9 00:E0B9: A2 00     LDX #$00
C - - - - - 0x0020CB 00:E0BB: 20 C0 E0  JSR sub_E0C0
C - - - - - 0x0020CE 00:E0BE: A2 01     LDX #$01
sub_E0C0:
C - - - - - 0x0020D0 00:E0C0: B5 3A     LDA ram_003A_plr_timer,X
C - - - - - 0x0020D2 00:E0C2: D0 57     BNE bra_E11B
C - - - - - 0x0020D4 00:E0C4: B5 5A     LDA ram_005A_plr,X
C - - - - - 0x0020D6 00:E0C6: F0 52     BEQ bra_E11A_RTS
C - - - - - 0x0020D8 00:E0C8: B5 6A     LDA ram_plr_handler,X
C - - - - - 0x0020DA 00:E0CA: C9 07     CMP #$07
C - - - - - 0x0020DC 00:E0CC: F0 4C     BEQ bra_E11A_RTS
C - - - - - 0x0020DE 00:E0CE: B5 2D     LDA ram_002D_plr,X
C - - - - - 0x0020E0 00:E0D0: D0 48     BNE bra_E11A_RTS
C - - - - - 0x0020E2 00:E0D2: B5 64     LDA ram_plr_pos_X,X
C - - - - - 0x0020E4 00:E0D4: 18        CLC
C - - - - - 0x0020E5 00:E0D5: 69 08     ADC #$08
C - - - - - 0x0020E7 00:E0D7: 85 0A     STA ram_000A
C - - - - - 0x0020E9 00:E0D9: B5 66     LDA ram_plr_pos_Y,X
C - - - - - 0x0020EB 00:E0DB: 18        CLC
C - - - - - 0x0020EC 00:E0DC: 69 0C     ADC #$0C
C - - - - - 0x0020EE 00:E0DE: 85 0B     STA ram_000B
C - - - - - 0x0020F0 00:E0E0: A0 00     LDY #$00
bra_E0E2_loop:
C - - - - - 0x0020F2 00:E0E2: B9 00 06  LDA ram_0600_data,Y
C - - - - - 0x0020F5 00:E0E5: F0 2E     BEQ bra_E115
C - - - - - 0x0020F7 00:E0E7: 18        CLC
C - - - - - 0x0020F8 00:E0E8: 69 04     ADC #$04
C - - - - - 0x0020FA 00:E0EA: 38        SEC
C - - - - - 0x0020FB 00:E0EB: E5 0A     SBC ram_000A
C - - - - - 0x0020FD 00:E0ED: 85 00     STA ram_0000
C - - - - - 0x0020FF 00:E0EF: 20 F9 D2  JSR sub_D2F9_EOR_if_negative
C - - - - - 0x002102 00:E0F2: C9 0C     CMP #$0C
C - - - - - 0x002104 00:E0F4: B0 1F     BCS bra_E115
C - - - - - 0x002106 00:E0F6: B9 10 06  LDA ram_0600_data + $10,Y
C - - - - - 0x002109 00:E0F9: 38        SEC
C - - - - - 0x00210A 00:E0FA: E9 1C     SBC #$1C
C - - - - - 0x00210C 00:E0FC: 38        SEC
C - - - - - 0x00210D 00:E0FD: E5 0B     SBC ram_000B
C - - - - - 0x00210F 00:E0FF: 20 F9 D2  JSR sub_D2F9_EOR_if_negative
C - - - - - 0x002112 00:E102: 48        PHA
C - - - - - 0x002113 00:E103: B5 E6     LDA ram_00E6_plr,X
C - - - - - 0x002115 00:E105: C9 02     CMP #$02
C - - - - - 0x002117 00:E107: B0 07     BCS bra_E110
C - - - - - 0x002119 00:E109: 68        PLA
C - - - - - 0x00211A 00:E10A: C9 1C     CMP #$1C
C - - - - - 0x00211C 00:E10C: 90 21     BCC bra_E12F
C - - - - - 0x00211E 00:E10E: B0 05     BCS bra_E115    ; jmp
bra_E110:
C - - - - - 0x002120 00:E110: 68        PLA
C - - - - - 0x002121 00:E111: C9 24     CMP #$24
C - - - - - 0x002123 00:E113: 90 1A     BCC bra_E12F
bra_E115:
C - - - - - 0x002125 00:E115: C8        INY
C - - - - - 0x002126 00:E116: C0 0B     CPY #$0B
C - - - - - 0x002128 00:E118: 90 C8     BCC bra_E0E2_loop
bra_E11A_RTS:
C - - - - - 0x00212A 00:E11A: 60        RTS
bra_E11B:
C - - - - - 0x00212B 00:E11B: A5 50     LDA ram_frm_cnt
C - - - - - 0x00212D 00:E11D: 29 01     AND #$01
C - - - - - 0x00212F 00:E11F: F0 0D     BEQ bra_E12E_RTS
C - - - - - 0x002131 00:E121: B5 68     LDA ram_0068_plr,X
C - - - - - 0x002133 00:E123: F0 09     BEQ bra_E12E_RTS
C - - - - - 0x002135 00:E125: C9 02     CMP #$02
C - - - - - 0x002137 00:E127: F0 03     BEQ bra_E12C
C - - - - - 0x002139 00:E129: F6 64     INC ram_plr_pos_X,X
C - - - - - 0x00213B 00:E12B: 2C        .byte $2C   ; BIT opcode
bra_E12C:
C - - - - - 0x00213C 00:E12C: D6 64     DEC ram_plr_pos_X,X
bra_E12E_RTS:
C - - - - - 0x00213E 00:E12E: 60        RTS
bra_E12F:
C - - - - - 0x00213F 00:E12F: 48        PHA
C - - - - - 0x002140 00:E130: B5 E6     LDA ram_00E6_plr,X
C - - - - - 0x002142 00:E132: C9 02     CMP #$02
C - - - - - 0x002144 00:E134: B0 07     BCS bra_E13D
C - - - - - 0x002146 00:E136: 68        PLA
C - - - - - 0x002147 00:E137: C9 18     CMP #$18
C - - - - - 0x002149 00:E139: 90 1D     BCC bra_E158
C - - - - - 0x00214B 00:E13B: B0 05     BCS bra_E142    ; jmp
bra_E13D:
C - - - - - 0x00214D 00:E13D: 68        PLA
C - - - - - 0x00214E 00:E13E: C9 23     CMP #$23
C - - - - - 0x002150 00:E140: 90 16     BCC bra_E158
bra_E142:
C - - - - - 0x002152 00:E142: B5 68     LDA ram_0068_plr,X
C - - - - - 0x002154 00:E144: F0 12     BEQ bra_E158
C - - - - - 0x002156 00:E146: A5 00     LDA ram_0000
C - - - - - 0x002158 00:E148: C9 03     CMP #$03
C - - - - - 0x00215A 00:E14A: 90 07     BCC bra_E153
C - - - - - 0x00215C 00:E14C: C9 FD     CMP #$FD
C - - - - - 0x00215E 00:E14E: B0 03     BCS bra_E153
C - - - - - 0x002160 00:E150: 20 76 E1  JSR sub_E176
bra_E153:
C - - - - - 0x002163 00:E153: A9 08     LDA #$08
C - - - - - 0x002165 00:E155: 95 3A     STA ram_003A_plr_timer,X
C - - - - - 0x002167 00:E157: 60        RTS
bra_E158:
C - - - - - 0x002168 00:E158: A5 00     LDA ram_0000
C - - - - - 0x00216A 00:E15A: 30 09     BMI bra_E165
C - - - - - 0x00216C 00:E15C: B9 00 06  LDA ram_0600_data,Y
C - - - - - 0x00216F 00:E15F: 38        SEC
C - - - - - 0x002170 00:E160: E9 10     SBC #$10
C - - - - - 0x002172 00:E162: 4C 6B E1  JMP loc_E16B
bra_E165:
C - - - - - 0x002175 00:E165: B9 00 06  LDA ram_0600_data,Y
C - - - - - 0x002178 00:E168: 18        CLC
C - - - - - 0x002179 00:E169: 69 07     ADC #$07
loc_E16B:
C D 3 - - - 0x00217B 00:E16B: 95 64     STA ram_plr_pos_X,X
C - - - - - 0x00217D 00:E16D: B5 6A     LDA ram_plr_handler,X
C - - - - - 0x00217F 00:E16F: 29 01     AND #$01
C - - - - - 0x002181 00:E171: D0 11     BNE bra_E184_RTS
C - - - - - 0x002183 00:E173: 4C 76 E1  JMP loc_E176



sub_E176:
loc_E176:
C D 3 - - - 0x002186 00:E176: A5 00     LDA ram_0000
C - - - - - 0x002188 00:E178: 0A        ASL
C - - - - - 0x002189 00:E179: A9 01     LDA #$01
C - - - - - 0x00218B 00:E17B: B0 01     BCS bra_E17E
C - - - - - 0x00218D 00:E17D: 0A        ASL ; 02
bra_E17E:
C - - - - - 0x00218E 00:E17E: 95 68     STA ram_0068_plr,X
C - - - - - 0x002190 00:E180: 29 01     AND #$01
C - - - - - 0x002192 00:E182: 95 62     STA ram_0062_plr,X
bra_E184_RTS:
C - - - - - 0x002194 00:E184: 60        RTS



tbl_E185_pos_Y:
- D 3 - - - 0x002195 00:E185: 28        .byte $28   ; 00 
- D 3 - - - 0x002196 00:E186: 58        .byte $58   ; 01 
- - - - - - 0x002197 00:E187: 88        .byte $88   ; 02 
- - - - - - 0x002198 00:E188: B8        .byte $B8   ; 03 



sub_E189:
C - - - - - 0x002199 00:E189: A6 90     LDX ram_0090
C - - - - - 0x00219B 00:E18B: E0 09     CPX #$09
C - - - - - 0x00219D 00:E18D: F0 51     BEQ bra_E1E0_RTS
C - - - - - 0x00219F 00:E18F: A6 7C     LDX ram_007C
C - - - - - 0x0021A1 00:E191: CA        DEX
C - - - - - 0x0021A2 00:E192: D0 4D     BNE bra_E1E1
C - - - - - 0x0021A4 00:E194: A2 02     LDX #$02
bra_E196_loop:
C - - - - - 0x0021A6 00:E196: B5 99     LDA ram_0091_obj + $08,X ; 0099 009A 009B 
C - - - - - 0x0021A8 00:E198: D0 46     BNE bra_E1E0_RTS
C - - - - - 0x0021AA 00:E19A: CA        DEX
C - - - - - 0x0021AB 00:E19B: 10 F9     BPL bra_E196_loop
C - - - - - 0x0021AD 00:E19D: A4 92     LDY ram_0091_obj + $01
C - - - - - 0x0021AF 00:E19F: D0 3F     BNE bra_E1E0_RTS
; Y = 00
C - - - - - 0x0021B1 00:E1A1: 8A        TXA
C - - - - - 0x0021B2 00:E1A2: 20 3E E2  JSR sub_E23E
C - - - - - 0x0021B5 00:E1A5: 85 92     STA ram_0091_obj + $01
C - - - - - 0x0021B7 00:E1A7: 8D D3 03  STA ram_03D2_obj + $01
C - - - - - 0x0021BA 00:E1AA: 8C 76 03  STY ram_0376_flag
C - - - - - 0x0021BD 00:E1AD: 8C B2 03  STY ram_03B1_obj + $01
C - - - - - 0x0021C0 00:E1B0: 8C C8 03  STY ram_03C7_obj + $01
C - - - - - 0x0021C3 00:E1B3: A9 40     LDA #$40
C - - - - - 0x0021C5 00:E1B5: 8D BD 03  STA ram_03BC_obj + $01
C - - - - - 0x0021C8 00:E1B8: 0A        ASL ; 80
C - - - - - 0x0021C9 00:E1B9: 8D A7 03  STA ram_03A6_obj + $01
C - - - - - 0x0021CC 00:E1BC: C8        INY ; 01
C - - - - - 0x0021CD 00:E1BD: 84 BE     STY ram_00BD_obj + $01
C - - - - - 0x0021CF 00:E1BF: A9 04     LDA #$04
C - - - - - 0x0021D1 00:E1C1: 85 9D     STA ram_009C_obj_pos_X + $01
C - - - - - 0x0021D3 00:E1C3: A6 90     LDX ram_0090
C - - - - - 0x0021D5 00:E1C5: E8        INX
bra_E1C6_loop:
C - - - - - 0x0021D6 00:E1C6: CA        DEX
C - - - - - 0x0021D7 00:E1C7: EC 86 07  CPX ram_0786
C - - - - - 0x0021DA 00:E1CA: F0 FA     BEQ bra_E1C6_loop
C - - - - - 0x0021DC 00:E1CC: EC 87 07  CPX ram_0787
C - - - - - 0x0021DF 00:E1CF: F0 F5     BEQ bra_E1C6_loop
C - - - - - 0x0021E1 00:E1D1: 86 B3     STX ram_00B2_obj + $01
C - - - - - 0x0021E3 00:E1D3: A5 90     LDA ram_0090
C - - - - - 0x0021E5 00:E1D5: 38        SEC
C - - - - - 0x0021E6 00:E1D6: E5 B3     SBC ram_00B2_obj + $01
C - - - - - 0x0021E8 00:E1D8: AA        TAX
C - - - - - 0x0021E9 00:E1D9: BD 85 E1  LDA tbl_E185_pos_Y,X
C - - - - - 0x0021EC 00:E1DC: 85 A8     STA ram_00A7_obj_pos_Y + $01
C - - - - - 0x0021EE 00:E1DE: E6 7C     INC ram_007C
bra_E1E0_RTS:
C - - - - - 0x0021F0 00:E1E0: 60        RTS
bra_E1E1:
C - - - - - 0x0021F1 00:E1E1: CA        DEX
C - - - - - 0x0021F2 00:E1E2: D0 0A     BNE bra_E1EE
bra_E1E4:
C - - - - - 0x0021F4 00:E1E4: AD 76 03  LDA ram_0376_flag
C - - - - - 0x0021F7 00:E1E7: D0 2C     BNE bra_E215
C - - - - - 0x0021F9 00:E1E9: C6 DF     DEC ram_00DF_counter
C - - - - - 0x0021FB 00:E1EB: F0 15     BEQ bra_E202
C - - - - - 0x0021FD 00:E1ED: 60        RTS
bra_E1EE:
C - - - - - 0x0021FE 00:E1EE: CA        DEX
C - - - - - 0x0021FF 00:E1EF: D0 29     BNE bra_E21A
C - - - - - 0x002201 00:E1F1: AD 76 03  LDA ram_0376_flag
C - - - - - 0x002204 00:E1F4: D0 1F     BNE bra_E215
C - - - - - 0x002206 00:E1F6: A5 A8     LDA ram_00A7_obj_pos_Y + $01
C - - - - - 0x002208 00:E1F8: C9 17     CMP #$17
C - - - - - 0x00220A 00:E1FA: D0 E8     BNE bra_E1E4
- - - - - - 0x00220C 00:E1FC: A5 9D     LDA ram_009C_obj_pos_X + $01
- - - - - - 0x00220E 00:E1FE: C9 78     CMP #$78
- - - - - - 0x002210 00:E200: D0 E2     BNE bra_E1E4
bra_E202:
C - - - - - 0x002212 00:E202: A9 04     LDA #$04
C - - - - - 0x002214 00:E204: 85 7C     STA ram_007C
C - - - - - 0x002216 00:E206: A9 0C     LDA #$0C
C - - - - - 0x002218 00:E208: 85 DF     STA ram_00DF_counter
C - - - - - 0x00221A 00:E20A: A5 92     LDA ram_0091_obj + $01
C - - - - - 0x00221C 00:E20C: C9 FF     CMP #$FF
C - - - - - 0x00221E 00:E20E: D0 04     BNE bra_E214_RTS
C - - - - - 0x002220 00:E210: A9 04     LDA #$04
C - - - - - 0x002222 00:E212: 85 92     STA ram_0091_obj + $01
bra_E214_RTS:
C - - - - - 0x002224 00:E214: 60        RTS
bra_E215:
sub_E215:
C - - - - - 0x002225 00:E215: A9 00     LDA #$00
C - - - - - 0x002227 00:E217: 85 7C     STA ram_007C
C - - - - - 0x002229 00:E219: 60        RTS
bra_E21A:
C - - - - - 0x00222A 00:E21A: CA        DEX
C - - - - - 0x00222B 00:E21B: D0 18     BNE bra_E235
C - - - - - 0x00222D 00:E21D: C6 DF     DEC ram_00DF_counter
C - - - - - 0x00222F 00:E21F: 10 04     BPL bra_E225
C - - - - - 0x002231 00:E221: A9 03     LDA #$03
C - - - - - 0x002233 00:E223: D0 19     BNE bra_E23E    ; jmp
bra_E225:
C - - - - - 0x002235 00:E225: F0 ED     BEQ bra_E214_RTS
C - - - - - 0x002237 00:E227: A5 92     LDA ram_0091_obj + $01
C - - - - - 0x002239 00:E229: C9 04     CMP #$04
C - - - - - 0x00223B 00:E22B: D0 07     BNE bra_E234_RTS
C - - - - - 0x00223D 00:E22D: A5 A8     LDA ram_00A7_obj_pos_Y + $01
C - - - - - 0x00223F 00:E22F: 38        SEC
C - - - - - 0x002240 00:E230: E9 01     SBC #$01
C - - - - - 0x002242 00:E232: 85 A8     STA ram_00A7_obj_pos_Y + $01
bra_E234_RTS:
C - - - - - 0x002244 00:E234: 60        RTS
bra_E235:
C - - - - - 0x002245 00:E235: CA        DEX
C - - - - - 0x002246 00:E236: D0 19     BNE bra_E251
C - - - - - 0x002248 00:E238: C6 DF     DEC ram_00DF_counter
C - - - - - 0x00224A 00:E23A: D0 07     BNE bra_E243
C - - - - - 0x00224C 00:E23C: A9 10     LDA #$10
bra_E23E:
sub_E23E:
C - - - - - 0x00224E 00:E23E: 85 DF     STA ram_00DF_counter
C - - - - - 0x002250 00:E240: E6 7C     INC ram_007C
C - - - - - 0x002252 00:E242: 60        RTS
bra_E243:
C - - - - - 0x002253 00:E243: A5 92     LDA ram_0091_obj + $01
C - - - - - 0x002255 00:E245: C9 04     CMP #$04
C - - - - - 0x002257 00:E247: D0 07     BNE bra_E250_RTS
C - - - - - 0x002259 00:E249: A9 05     LDA #$05
C - - - - - 0x00225B 00:E24B: 18        CLC
C - - - - - 0x00225C 00:E24C: 65 A8     ADC ram_00A7_obj_pos_Y + $01
C - - - - - 0x00225E 00:E24E: 85 A8     STA ram_00A7_obj_pos_Y + $01
bra_E250_RTS:
C - - - - - 0x002260 00:E250: 60        RTS
bra_E251:
C - - - - - 0x002261 00:E251: CA        DEX
C - - - - - 0x002262 00:E252: D0 FC     BNE bra_E250_RTS
C - - - - - 0x002264 00:E254: C6 DF     DEC ram_00DF_counter
C - - - - - 0x002266 00:E256: D0 F8     BNE bra_E250_RTS
C - - - - - 0x002268 00:E258: A5 92     LDA ram_0091_obj + $01
C - - - - - 0x00226A 00:E25A: C9 04     CMP #$04
C - - - - - 0x00226C 00:E25C: D0 07     BNE bra_E265
C - - - - - 0x00226E 00:E25E: A9 FF     LDA #$FF
C - - - - - 0x002270 00:E260: 85 92     STA ram_0091_obj + $01
C - - - - - 0x002272 00:E262: 8D D3 03  STA ram_03D2_obj + $01
bra_E265:
C - - - - - 0x002275 00:E265: AD 76 03  LDA ram_0376_flag
C - - - - - 0x002278 00:E268: D0 AB     BNE bra_E215
C - - - - - 0x00227A 00:E26A: A9 80     LDA #$80
C - - - - - 0x00227C 00:E26C: 85 7C     STA ram_007C
C - - - - - 0x00227E 00:E26E: A9 02     LDA #con_sfx_3_bear_jump
C - - - - - 0x002280 00:E270: 85 FF     STA ram_sfx_3
C - - - - - 0x002282 00:E272: 60        RTS



tbl_E273:
- D 3 - - - 0x002283 00:E273: 00        .byte $00   ; 00 
- D 3 - - - 0x002284 00:E274: 18        .byte $18   ; 01 
- D 3 - - - 0x002285 00:E275: 30        .byte $30   ; 02 
- D 3 - - - 0x002286 00:E276: 48        .byte $48   ; 03 



sub_E277:
C - - - - - 0x002287 00:E277: A2 03     LDX #$03
C - - - - - 0x002289 00:E279: 2C        .byte $2C   ; BIT opcode



sub_E27A:
C - - - - - 0x00228A 00:E27A: A2 01     LDX #$01
bra_E27C_loop:
C - - - - - 0x00228C 00:E27C: BD 73 E2  LDA tbl_E273,X
C - - - - - 0x00228F 00:E27F: A8        TAY
C - - - - - 0x002290 00:E280: BD 86 07  LDA ram_0786,X ; 0786 0787 0788 0789 
C - - - - - 0x002293 00:E283: F0 11     BEQ bra_E296
C - - - - - 0x002295 00:E285: B9 A0 02  LDA ram_spr_Y + $A0,Y
C - - - - - 0x002298 00:E288: C9 EC     CMP #$EC
C - - - - - 0x00229A 00:E28A: 90 0A     BCC bra_E296
C - - - - - 0x00229C 00:E28C: A9 00     LDA #$00
C - - - - - 0x00229E 00:E28E: 9D 86 07  STA ram_0786,X ; 0786 0787 0788 0789 
C - - - - - 0x0022A1 00:E291: A9 FF     LDA #$FF
C - - - - - 0x0022A3 00:E293: 9D F5 06  STA ram_06E0_bouns_stage_data + $15,X ; 06F5 06F6 06F7 06F8 
bra_E296:
C - - - - - 0x0022A6 00:E296: CA        DEX
C - - - - - 0x0022A7 00:E297: 10 E3     BPL bra_E27C_loop
C - - - - - 0x0022A9 00:E299: 60        RTS



sub_E29A:
C - - - - - 0x0022AA 00:E29A: A2 08     LDX #$08
C - - - - - 0x0022AC 00:E29C: 20 03 E3  JSR sub_E303
C - - - - - 0x0022AF 00:E29F: A0 2C     LDY #$2C
C - - - - - 0x0022B1 00:E2A1: A2 01     LDX #$01
bra_E2A3_loop:
C - - - - - 0x0022B3 00:E2A3: BD 86 07  LDA ram_0786,X
C - - - - - 0x0022B6 00:E2A6: F0 16     BEQ bra_E2BE
C - - - - - 0x0022B8 00:E2A8: 20 21 E3  JSR sub_E321
C - - - - - 0x0022BB 00:E2AB: 8A        TXA
C - - - - - 0x0022BC 00:E2AC: 18        CLC
C - - - - - 0x0022BD 00:E2AD: 69 06     ADC #$06
C - - - - - 0x0022BF 00:E2AF: A8        TAY
bra_E2B0_loop:
C - - - - - 0x0022C0 00:E2B0: BD B7 07  LDA ram_07B0_obj + $07,X
C - - - - - 0x0022C3 00:E2B3: 18        CLC
C - - - - - 0x0022C4 00:E2B4: 79 88 07  ADC ram_0788,Y
C - - - - - 0x0022C7 00:E2B7: 99 88 07  STA ram_0788,Y
C - - - - - 0x0022CA 00:E2BA: 88        DEY
C - - - - - 0x0022CB 00:E2BB: 88        DEY
C - - - - - 0x0022CC 00:E2BC: 10 F2     BPL bra_E2B0_loop
bra_E2BE:
C - - - - - 0x0022CE 00:E2BE: A0 14     LDY #$14
C - - - - - 0x0022D0 00:E2C0: CA        DEX
C - - - - - 0x0022D1 00:E2C1: 10 E0     BPL bra_E2A3_loop
C - - - - - 0x0022D3 00:E2C3: A0 01     LDY #$01
bra_E2C5_loop:
C - - - - - 0x0022D5 00:E2C5: B9 6A 00  LDA ram_plr_handler,Y
C - - - - - 0x0022D8 00:E2C8: C9 01     CMP #$01
C - - - - - 0x0022DA 00:E2CA: F0 04     BEQ bra_E2D0
C - - - - - 0x0022DC 00:E2CC: C9 03     CMP #$03
C - - - - - 0x0022DE 00:E2CE: D0 24     BNE bra_E2F4
bra_E2D0:
C - - - - - 0x0022E0 00:E2D0: B6 5A     LDX ram_005A_plr,Y
C - - - - - 0x0022E2 00:E2D2: F0 20     BEQ bra_E2F4
C - - - - - 0x0022E4 00:E2D4: E0 02     CPX #$02
C - - - - - 0x0022E6 00:E2D6: 30 1C     BMI bra_E2F4
C - - - - - 0x0022E8 00:E2D8: E0 09     CPX #$09
C - - - - - 0x0022EA 00:E2DA: F0 18     BEQ bra_E2F4
C - - - - - 0x0022EC 00:E2DC: B9 2D 00  LDA ram_002D_plr,Y
C - - - - - 0x0022EF 00:E2DF: D0 05     BNE bra_E2E6
C - - - - - 0x0022F1 00:E2E1: B9 43 03  LDA ram_0343_plr,Y
C - - - - - 0x0022F4 00:E2E4: D0 06     BNE bra_E2EC
bra_E2E6:
C - - - - - 0x0022F6 00:E2E6: BD AE 07  LDA ram_07B0_obj - $02,X ; 07B0 07B1 07B2 07B3 07B4 07B5 07B6 
C - - - - - 0x0022F9 00:E2E9: 20 FB E2  JSR sub_E2FB
bra_E2EC:
C - - - - - 0x0022FC 00:E2EC: BE 83 07  LDX ram_0783_plr,Y
C - - - - - 0x0022FF 00:E2EF: 30 03     BMI bra_E2F4
C - - - - - 0x002301 00:E2F1: 20 F8 E2  JSR sub_E2F8
bra_E2F4:
C - - - - - 0x002304 00:E2F4: 88        DEY
C - - - - - 0x002305 00:E2F5: 10 CE     BPL bra_E2C5_loop
C - - - - - 0x002307 00:E2F7: 60        RTS



sub_E2F8:
C - - - - - 0x002308 00:E2F8: BD B7 07  LDA ram_07B0_obj + $07,X
sub_E2FB:
C - - - - - 0x00230B 00:E2FB: 18        CLC
C - - - - - 0x00230C 00:E2FC: 79 64 00  ADC ram_plr_pos_X,Y
C - - - - - 0x00230F 00:E2FF: 99 64 00  STA ram_plr_pos_X,Y
C - - - - - 0x002312 00:E302: 60        RTS



sub_E303:
bra_E303_loop:
C - - - - - 0x002313 00:E303: BD C0 07  LDA ram_07C0_obj,X ; 07C0 07C1 07C2 07C3 07C4 07C5 07C6 07C7 07C8 07C9 07CA 
C - - - - - 0x002316 00:E306: 18        CLC
C - - - - - 0x002317 00:E307: 7D A0 07  ADC ram_07A0_obj,X ; 07A0 07A1 07A2 07A3 07A4 07A5 07A6 07A7 07A8 07A9 07AA 
C - - - - - 0x00231A 00:E30A: 9D C0 07  STA ram_07C0_obj,X ; 07C0 07C1 07C2 07C3 07C4 07C5 07C6 07C7 07C8 07C9 07CA 
C - - - - - 0x00231D 00:E30D: A9 00     LDA #$00
C - - - - - 0x00231F 00:E30F: 7D 90 07  ADC ram_0790_obj,X ; 0790 0791 0792 0793 0794 0795 0796 0797 0798 0799 079A 
C - - - - - 0x002322 00:E312: BC D0 07  LDY ram_07D0_obj,X ; 07D0 07D1 07D2 07D3 07D4 07D5 07D6 07D7 07D8 07D9 07DA 
C - - - - - 0x002325 00:E315: F0 03     BEQ bra_E31A
C - - - - - 0x002327 00:E317: 20 FB D2  JSR sub_D2FB_EOR
bra_E31A:
C - - - - - 0x00232A 00:E31A: 9D B0 07  STA ram_07B0_obj,X ; 07B0 07B1 07B2 07B3 07B4 07B5 07B6 07B7 07B8 07B9 07BA 
C - - - - - 0x00232D 00:E31D: CA        DEX
C - - - - - 0x00232E 00:E31E: 10 E3     BPL bra_E303_loop
C - - - - - 0x002330 00:E320: 60        RTS



sub_E321:
C - - - - - 0x002331 00:E321: A9 05     LDA #$05
C - - - - - 0x002333 00:E323: 85 01     STA ram_0001
bra_E325_loop:
C - - - - - 0x002335 00:E325: BD B7 07  LDA ram_07B0_obj + $07,X ; 07B7 07B8 07B9 07BA 
C - - - - - 0x002338 00:E328: 18        CLC
C - - - - - 0x002339 00:E329: 79 A3 02  ADC ram_spr_X + $A0,Y
C - - - - - 0x00233C 00:E32C: 99 A3 02  STA ram_spr_X + $A0,Y
C - - - - - 0x00233F 00:E32F: 88        DEY
C - - - - - 0x002340 00:E330: 88        DEY
C - - - - - 0x002341 00:E331: 88        DEY
C - - - - - 0x002342 00:E332: 88        DEY
C - - - - - 0x002343 00:E333: C6 01     DEC ram_0001
C - - - - - 0x002345 00:E335: 10 EE     BPL bra_E325_loop
C - - - - - 0x002347 00:E337: 60        RTS



tbl_E338:
- D 3 - - - 0x002348 00:E338: 14        .byte $14   ; 00 
- D 3 - - - 0x002349 00:E339: 2C        .byte $2C   ; 01 
- D 3 - - - 0x00234A 00:E33A: 44        .byte $44   ; 02 
- D 3 - - - 0x00234B 00:E33B: 5C        .byte $5C   ; 03 



sub_E33C:
C - - - - - 0x00234C 00:E33C: A2 0A     LDX #$0A
C - - - - - 0x00234E 00:E33E: 20 03 E3  JSR sub_E303
C - - - - - 0x002351 00:E341: A2 03     LDX #$03
bra_E343_loop:
C - - - - - 0x002353 00:E343: BD 86 07  LDA ram_0786,X ; 0786 0787 0788 0789 
C - - - - - 0x002356 00:E346: F0 1A     BEQ bra_E362
C - - - - - 0x002358 00:E348: BD 38 E3  LDA tbl_E338,X
C - - - - - 0x00235B 00:E34B: A8        TAY
C - - - - - 0x00235C 00:E34C: 20 21 E3  JSR sub_E321
C - - - - - 0x00235F 00:E34F: BD B7 07  LDA ram_07B0_obj + $07,X ; 07B7 07B8 07B9 07BA 
C - - - - - 0x002362 00:E352: 48        PHA
C - - - - - 0x002363 00:E353: 18        CLC
C - - - - - 0x002364 00:E354: 7D 82 06  ADC ram_0668_data + $1A,X ; 0682 0683 0684 0685 
C - - - - - 0x002367 00:E357: 9D 82 06  STA ram_0668_data + $1A,X ; 0682 0683 0684 0685 
C - - - - - 0x00236A 00:E35A: 68        PLA
C - - - - - 0x00236B 00:E35B: 18        CLC
C - - - - - 0x00236C 00:E35C: 7D A0 06  ADC ram_0686_data + $1A,X ; 06A0 06A1 06A2 06A3 
C - - - - - 0x00236F 00:E35F: 9D A0 06  STA ram_0686_data + $1A,X ; 06A0 06A1 06A2 06A3 
bra_E362:
C - - - - - 0x002372 00:E362: CA        DEX
C - - - - - 0x002373 00:E363: 10 DE     BPL bra_E343_loop
C - - - - - 0x002375 00:E365: A0 01     LDY #$01
bra_E367_loop:
C - - - - - 0x002377 00:E367: B9 6A 00  LDA ram_plr_handler,Y
C - - - - - 0x00237A 00:E36A: C9 01     CMP #$01
C - - - - - 0x00237C 00:E36C: F0 04     BEQ bra_E372
C - - - - - 0x00237E 00:E36E: C9 03     CMP #$03
C - - - - - 0x002380 00:E370: D0 0C     BNE bra_E37E
bra_E372:
C - - - - - 0x002382 00:E372: B9 83 07  LDA ram_0783_plr,Y
C - - - - - 0x002385 00:E375: 38        SEC
C - - - - - 0x002386 00:E376: E9 1A     SBC #$1A
C - - - - - 0x002388 00:E378: 30 04     BMI bra_E37E
C - - - - - 0x00238A 00:E37A: AA        TAX
C - - - - - 0x00238B 00:E37B: 20 F8 E2  JSR sub_E2F8
bra_E37E:
C - - - - - 0x00238E 00:E37E: 88        DEY
C - - - - - 0x00238F 00:E37F: 10 E6     BPL bra_E367_loop
C - - - - - 0x002391 00:E381: 60        RTS



tbl_E382:
;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 3 - - - 0x002392 00:E382: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $A1, $00, $00, $00, $00, $B0, $00   ; 00 
- D 3 - - - 0x0023A2 00:E392: 30        .byte $30, $00, $00, $B1, $00, $08, $A1, $00, $30, $00, $B0, $A3, $F0, $00, $00, $C5   ; 10 
- D 3 - - - 0x0023B2 00:E3A2: 00        .byte $00, $B3, $32, $A0, $D4, $00, $23, $08, $B6, $00, $C3, $31, $00, $08, $08, $B1   ; 20 
- D 3 - - - 0x0023C2 00:E3B2: 23        .byte $23, $00, $E6, $24, $A5, $00, $32, $D5, $00, $C4, $B7, $30, $23, $3C, $F3, $D7   ; 30 
- D 3 - - - 0x0023D2 00:E3C2: 00        .byte $00, $86, $00, $2B, $33, $D7, $34, $00, $B6, $08, $00, $08, $76, $2A, $23, $00   ; 40 
- D 3 - - - 0x0023E2 00:E3D2: B2        .byte $B2, $33, $A6, $34, $E6, $33, $75, $00, $20, $A6, $00, $C6, $D5, $00, $3A, $00   ; 50 
- D 3 - - - 0x0023F2 00:E3E2: E4        .byte $E4, $F7, $00, $D6, $00, $22, $00, $A6, $D7, $D7, $00, $C6, $00, $00, $33, $F6   ; 60 
- D 3 - - - 0x002402 00:E3F2: 20        .byte $20, $31, $22, $33, $A4, $B6, $24, $75, $A4, $00, $38, $34, $A5, $34, $38, $F4   ; 70 
- D 3 - - - 0x002412 00:E402: A4        .byte $A4, $00, $00, $D6, $2B, $C4, $00, $32, $24, $00, $B5, $D3, $29, $22, $34, $24   ; 80 
- D 3 - - - 0x002422 00:E412: F2        .byte $F2, $B6, $00, $94, $08, $A5, $00, $00, $D6, $00, $00, $00, $00, $24, $00, $C5   ; 90 
- D 3 - - - 0x002432 00:E422: 00        .byte $00, $00, $76, $65, $23, $34, $34, $D6, $00, $C6, $B5, $22, $32, $34, $E7, $00   ; A0 
- D 3 - - - 0x002442 00:E432: 66        .byte $66, $76, $A6, $00, $24, $C7, $E5, $00, $F5, $2B, $00, $20, $C7, $F6, $00, $33   ; B0 
- D 3 - - - 0x002452 00:E442: E5        .byte $E5, $00, $F6, $34, $33, $D6, $20, $00, $33, $A6, $00, $67, $D6, $23, $3B, $00   ; C0 
- D 3 - - - 0x002462 00:E452: 7D        .byte $7D, $E6, $00, $FD, $23, $76, $24, $33, $C7, $23, $E7, $9E, $00, $3B, $2E, $D7   ; D0 



tbl_E462:
- D 3 - - - 0x002472 00:E462: 00        .byte $00   ; 00 
- D 3 - - - 0x002473 00:E463: 40        .byte $40   ; 01 
- D 3 - - - 0x002474 00:E464: 40        .byte $40   ; 02 
- D 3 - - - 0x002475 00:E465: 00        .byte $00   ; 03 
- D 3 - - - 0x002476 00:E466: 40        .byte $40   ; 04 
- D 3 - - - 0x002477 00:E467: 6D        .byte $6D   ; 05 
- D 3 - - - 0x002478 00:E468: 74        .byte $74   ; 06 
- D 3 - - - 0x002479 00:E469: 20        .byte $20   ; 07 
- D 3 - - - 0x00247A 00:E46A: 00        .byte $00   ; 08 
- D 3 - - - 0x00247B 00:E46B: 10        .byte $10   ; 09 
- D 3 - - - 0x00247C 00:E46C: 2A        .byte $2A   ; 0A 
- D 3 - - - 0x00247D 00:E46D: 01        .byte $01   ; 0B 
- D 3 - - - 0x00247E 00:E46E: 41        .byte $41   ; 0C 
- D 3 - - - 0x00247F 00:E46F: 0A        .byte $0A   ; 0D 
- D 3 - - - 0x002480 00:E470: 48        .byte $48   ; 0E 
- D 3 - - - 0x002481 00:E471: 00        .byte $00   ; 0F 



tbl_E472:
- D 3 - - - 0x002482 00:E472: 00        .byte $00   ; 00 
- D 3 - - - 0x002483 00:E473: 48        .byte $48   ; 01 
- D 3 - - - 0x002484 00:E474: 00        .byte $00   ; 02 
- D 3 - - - 0x002485 00:E475: 00        .byte $00   ; 03 
- D 3 - - - 0x002486 00:E476: 69        .byte $69   ; 04 
- D 3 - - - 0x002487 00:E477: 24        .byte $24   ; 05 
- D 3 - - - 0x002488 00:E478: 24        .byte $24   ; 06 
- D 3 - - - 0x002489 00:E479: 00        .byte $00   ; 07 
- D 3 - - - 0x00248A 00:E47A: 00        .byte $00   ; 08 
- D 3 - - - 0x00248B 00:E47B: 44        .byte $44   ; 09 
- D 3 - - - 0x00248C 00:E47C: 21        .byte $21   ; 0A 
- D 3 - - - 0x00248D 00:E47D: 61        .byte $61   ; 0B 
- D 3 - - - 0x00248E 00:E47E: 04        .byte $04   ; 0C 
- D 3 - - - 0x00248F 00:E47F: 08        .byte $08   ; 0D 
- D 3 - - - 0x002490 00:E480: 12        .byte $12   ; 0E 
- D 3 - - - 0x002491 00:E481: 10        .byte $10   ; 0F 



tbl_E482:
- D 3 - - - 0x002492 00:E482: 00        .byte $00   ; 00 
- D 3 - - - 0x002493 00:E483: 40        .byte $40   ; 01 
- D 3 - - - 0x002494 00:E484: 09        .byte $09   ; 02 
- D 3 - - - 0x002495 00:E485: 40        .byte $40   ; 03 
- D 3 - - - 0x002496 00:E486: 68        .byte $68   ; 04 
- D 3 - - - 0x002497 00:E487: 04        .byte $04   ; 05 
- D 3 - - - 0x002498 00:E488: 48        .byte $48   ; 06 
- D 3 - - - 0x002499 00:E489: 00        .byte $00   ; 07 
- D 3 - - - 0x00249A 00:E48A: 02        .byte $02   ; 08 
- D 3 - - - 0x00249B 00:E48B: 6C        .byte $6C   ; 09 
- D 3 - - - 0x00249C 00:E48C: 08        .byte $08   ; 0A 
- D 3 - - - 0x00249D 00:E48D: 04        .byte $04   ; 0B 
- D 3 - - - 0x00249E 00:E48E: 10        .byte $10   ; 0C 
- D 3 - - - 0x00249F 00:E48F: 48        .byte $48   ; 0D 
- D 3 - - - 0x0024A0 00:E490: 00        .byte $00   ; 0E 
- D 3 - - - 0x0024A1 00:E491: 66        .byte $66   ; 0F 



tbl_E492:
- D 3 - - - 0x0024A2 00:E492: FF        .byte $FF   ; 00 
- D 3 - - - 0x0024A3 00:E493: F7        .byte $F7   ; 01 
- D 3 - - - 0x0024A4 00:E494: B7        .byte $B7   ; 02 
- D 3 - - - 0x0024A5 00:E495: FF        .byte $FF   ; 03 
- D 3 - - - 0x0024A6 00:E496: 9E        .byte $9E   ; 04 
- D 3 - - - 0x0024A7 00:E497: D6        .byte $D6   ; 05 
- D 3 - - - 0x0024A8 00:E498: FB        .byte $FB   ; 06 
- D 3 - - - 0x0024A9 00:E499: DF        .byte $DF   ; 07 
- D 3 - - - 0x0024AA 00:E49A: FF        .byte $FF   ; 08 
- D 3 - - - 0x0024AB 00:E49B: AF        .byte $AF   ; 09 
- D 3 - - - 0x0024AC 00:E49C: D6        .byte $D6   ; 0A 
- D 3 - - - 0x0024AD 00:E49D: FE        .byte $FE   ; 0B 
- D 3 - - - 0x0024AE 00:E49E: BB        .byte $BB   ; 0C 
- D 3 - - - 0x0024AF 00:E49F: F5        .byte $F5   ; 0D 
- D 3 - - - 0x0024B0 00:E4A0: E5        .byte $E5   ; 0E 
- D 3 - - - 0x0024B1 00:E4A1: EF        .byte $EF   ; 0F 



tbl_E4A2:
- D 3 - - - 0x0024B2 00:E4A2: 00        .byte $00, $80   ; 00 
- D 3 - - - 0x0024B4 00:E4A4: 00        .byte $00, $A0   ; 01 
- D 3 - - - 0x0024B6 00:E4A6: 00        .byte $00, $C0   ; 02 
- D 3 - - - 0x0024B8 00:E4A8: 00        .byte $00, $E0   ; 03 
- D 3 - - - 0x0024BA 00:E4AA: 01        .byte $01, $00   ; 04 
- D 3 - - - 0x0024BC 00:E4AC: 01        .byte $01, $40   ; 05 
- D 3 - - - 0x0024BE 00:E4AE: 01        .byte $01, $80   ; 06 
- D 3 - - - 0x0024C0 00:E4B0: 02        .byte $02, $00   ; 07 



tbl_E4B2:
- D 3 - - - 0x0024C2 00:E4B2: E8        .byte $E8   ; 00 
- D 3 - - - 0x0024C3 00:E4B3: 02        .byte $02   ; 01 
- D 3 - - - 0x0024C4 00:E4B4: 00        .byte $00   ; 02 
- D 3 - - - 0x0024C5 00:E4B5: 1C        .byte $1C   ; 03 
- D 3 - - - 0x0024C6 00:E4B6: 00        .byte $00   ; 04 
tbl_E4B7:   ; bzk bug probably, both tables share 0x0024C8 byte
- D 3 - - - 0x0024C7 00:E4B7: 18        .byte $18   ; 00 (05) 
- D 3 - - - 0x0024C8 00:E4B8: 48        .byte $48   ; 01 
- D 3 - - - 0x0024C9 00:E4B9: 78        .byte $78   ; 02 
- D 3 - - - 0x0024CA 00:E4BA: A8        .byte $A8   ; 03 



tbl_E4BB:
- - - - - - 0x0024CB 00:E4BB: D8        .byte $D8   ; 00 
- D 3 - - - 0x0024CC 00:E4BC: FE        .byte $FE   ; 01 
- D 3 - - - 0x0024CD 00:E4BD: FF        .byte $FF   ; 02 
- D 3 - - - 0x0024CE 00:E4BE: DC        .byte $DC   ; 03 
- D 3 - - - 0x0024CF 00:E4BF: FE        .byte $FE   ; 04 
- D 3 - - - 0x0024D0 00:E4C0: FF        .byte $FF   ; 05 
- D 3 - - - 0x0024D1 00:E4C1: DC        .byte $DC   ; 06 



sub_E4C2:
C - - - - - 0x0024D2 00:E4C2: 20 23 E5  JSR sub_E523
C - - - - - 0x0024D5 00:E4C5: 20 19 E7  JSR sub_E719
C - - - - - 0x0024D8 00:E4C8: 85 00     STA ram_0000
C - - - - - 0x0024DA 00:E4CA: A0 00     LDY #$00
bra_E4CC_loop:
C - - - - - 0x0024DC 00:E4CC: A6 00     LDX ram_0000
C - - - - - 0x0024DE 00:E4CE: BD 82 E3  LDA tbl_E382,X
C - - - - - 0x0024E1 00:E4D1: 85 01     STA ram_0001
C - - - - - 0x0024E3 00:E4D3: 29 E0     AND #$E0
C - - - - - 0x0024E5 00:E4D5: F0 2B     BEQ bra_E502
C - - - - - 0x0024E7 00:E4D7: C9 61     CMP #$61
C - - - - - 0x0024E9 00:E4D9: B0 27     BCS bra_E502
C - - - - - 0x0024EB 00:E4DB: 48        PHA
C - - - - - 0x0024EC 00:E4DC: A5 01     LDA ram_0001
C - - - - - 0x0024EE 00:E4DE: 29 07     AND #$07
C - - - - - 0x0024F0 00:E4E0: AA        TAX
C - - - - - 0x0024F1 00:E4E1: 68        PLA
C - - - - - 0x0024F2 00:E4E2: C9 60     CMP #$60
C - - - - - 0x0024F4 00:E4E4: D0 06     BNE bra_E4EC
C - - - - - 0x0024F6 00:E4E6: CA        DEX
C - - - - - 0x0024F7 00:E4E7: CA        DEX
C - - - - - 0x0024F8 00:E4E8: 10 02     BPL bra_E4EC
- - - - - - 0x0024FA 00:E4EA: A2 06     LDX #$06
bra_E4EC:
C - - - - - 0x0024FC 00:E4EC: 8A        TXA
C - - - - - 0x0024FD 00:E4ED: 0A        ASL
C - - - - - 0x0024FE 00:E4EE: AA        TAX
C - - - - - 0x0024FF 00:E4EF: BD A2 E4  LDA tbl_E4A2,X
C - - - - - 0x002502 00:E4F2: 99 90 07  STA ram_0790_obj,Y ; 0790 0791 0792 0793 0794 0795 0796 
C - - - - - 0x002505 00:E4F5: BD A3 E4  LDA tbl_E4A2 + $01,X
C - - - - - 0x002508 00:E4F8: 99 A0 07  STA ram_07A0_obj,Y ; 07A0 07A1 07A2 07A3 07A4 07A5 07A6 
C - - - - - 0x00250B 00:E4FB: A5 01     LDA ram_0001
C - - - - - 0x00250D 00:E4FD: 29 10     AND #$10
C - - - - - 0x00250F 00:E4FF: 99 D0 07  STA ram_07D0_obj,Y ; 07D0 07D1 07D2 07D3 07D4 07D5 07D6 
bra_E502:
C - - - - - 0x002512 00:E502: A5 01     LDA ram_0001
C - - - - - 0x002514 00:E504: 4A        LSR
C - - - - - 0x002515 00:E505: 4A        LSR
C - - - - - 0x002516 00:E506: 4A        LSR
C - - - - - 0x002517 00:E507: 4A        LSR
C - - - - - 0x002518 00:E508: 6E 85 07  ROR ram_0785
C - - - - - 0x00251B 00:E50B: E6 00     INC ram_0000
C - - - - - 0x00251D 00:E50D: C8        INY
C - - - - - 0x00251E 00:E50E: C0 07     CPY #$07
C - - - - - 0x002520 00:E510: D0 BA     BNE bra_E4CC_loop
C - - - - - 0x002522 00:E512: A0 05     LDY #$05
C - - - - - 0x002524 00:E514: 8C 82 07  STY ram_0782
bra_E517_loop:
C - - - - - 0x002527 00:E517: AC 82 07  LDY ram_0782
C - - - - - 0x00252A 00:E51A: 20 40 E6  JSR sub_E640
C - - - - - 0x00252D 00:E51D: CE 82 07  DEC ram_0782
C - - - - - 0x002530 00:E520: D0 F5     BNE bra_E517_loop
C - - - - - 0x002532 00:E522: 60        RTS



sub_E523:
C - - - - - 0x002533 00:E523: A9 00     LDA #$00
C - - - - - 0x002535 00:E525: A2 2D     LDX #$2D
bra_E527_loop:
; 0790-07BD
C - - - - - 0x002537 00:E527: 9D 90 07  STA ram_range_0790_07BD,X
C - - - - - 0x00253A 00:E52A: CA        DEX
C - - - - - 0x00253B 00:E52B: 10 FA     BPL bra_E527_loop
C - - - - - 0x00253D 00:E52D: A2 03     LDX #$03
bra_E52F_loop:
C - - - - - 0x00253F 00:E52F: 9D 86 07  STA ram_0786,X
C - - - - - 0x002542 00:E532: CA        DEX
C - - - - - 0x002543 00:E533: 10 FA     BPL bra_E52F_loop
C - - - - - 0x002545 00:E535: 8D 85 07  STA ram_0785
C - - - - - 0x002548 00:E538: 60        RTS



tbl_E539:
- D 3 - - - 0x002549 00:E539: CB        .byte $CB   ; 00 
- D 3 - - - 0x00254A 00:E53A: 1B        .byte $1B   ; 01 
- D 3 - - - 0x00254B 00:E53B: FF        .byte $FF   ; 02 
- D 3 - - - 0x00254C 00:E53C: 4A        .byte $4A   ; 03 
- D 3 - - - 0x00254D 00:E53D: 92        .byte $92   ; 04 
- D 3 - - - 0x00254E 00:E53E: 1B        .byte $1B   ; 05 
- D 3 - - - 0x00254F 00:E53F: A4        .byte $A4   ; 06 
- D 3 - - - 0x002550 00:E540: FF        .byte $FF   ; 07 
- D 3 - - - 0x002551 00:E541: 0B        .byte $0B   ; 08 
- D 3 - - - 0x002552 00:E542: 50        .byte $50   ; 09 
- D 3 - - - 0x002553 00:E543: 95        .byte $95   ; 0A 
- D 3 - - - 0x002554 00:E544: DA        .byte $DA   ; 0B 
- D 3 - - - 0x002555 00:E545: E9        .byte $E9   ; 0C 
- D 3 - - - 0x002556 00:E546: FF        .byte $FF   ; 0D 
- D 3 - - - 0x002557 00:E547: CB        .byte $CB   ; 0E 
- D 3 - - - 0x002558 00:E548: A1        .byte $A1   ; 0F 
- D 3 - - - 0x002559 00:E549: 65        .byte $65   ; 10 
- D 3 - - - 0x00255A 00:E54A: FF        .byte $FF   ; 11 
- D 3 - - - 0x00255B 00:E54B: 9B        .byte $9B   ; 12 
- D 3 - - - 0x00255C 00:E54C: DE        .byte $DE   ; 13 
- D 3 - - - 0x00255D 00:E54D: FF        .byte $FF   ; 14 
- D 3 - - - 0x00255E 00:E54E: 8B        .byte $8B   ; 15 
- D 3 - - - 0x00255F 00:E54F: 55        .byte $55   ; 16 
- D 3 - - - 0x002560 00:E550: A0        .byte $A0   ; 17 
- D 3 - - - 0x002561 00:E551: 64        .byte $64   ; 18 
- D 3 - - - 0x002562 00:E552: FF        .byte $FF   ; 19 
- D 3 - - - 0x002563 00:E553: D5        .byte $D5   ; 1A 
- D 3 - - - 0x002564 00:E554: FF        .byte $FF   ; 1B 
- D 3 - - - 0x002565 00:E555: 52        .byte $52   ; 1C 
- D 3 - - - 0x002566 00:E556: 96        .byte $96   ; 1D 
- D 3 - - - 0x002567 00:E557: 5A        .byte $5A   ; 1E 
- D 3 - - - 0x002568 00:E558: E8        .byte $E8   ; 1F 
- D 3 - - - 0x002569 00:E559: FF        .byte $FF   ; 20 



tbl_E55A:
- D 3 - - - 0x00256A 00:E55A: 00        .byte $00   ; 00 
- D 3 - - - 0x00256B 00:E55B: 03        .byte $03   ; 01 
- D 3 - - - 0x00256C 00:E55C: 08        .byte $08   ; 02 
- D 3 - - - 0x00256D 00:E55D: 0E        .byte $0E   ; 03 
- D 3 - - - 0x00256E 00:E55E: 12        .byte $12   ; 04 
- D 3 - - - 0x00256F 00:E55F: 15        .byte $15   ; 05 
- D 3 - - - 0x002570 00:E560: 1A        .byte $1A   ; 06 
- D 3 - - - 0x002571 00:E561: 1C        .byte $1C   ; 07 



sub_E562:
C - - - - - 0x002572 00:E562: 20 23 E5  JSR sub_E523
C - - - - - 0x002575 00:E565: A9 19     LDA #$19
C - - - - - 0x002577 00:E567: 85 24     STA ram_0024
C - - - - - 0x002579 00:E569: A5 59     LDA ram_mountain_current
C - - - - - 0x00257B 00:E56B: 29 07     AND #$07
C - - - - - 0x00257D 00:E56D: AA        TAX
C - - - - - 0x00257E 00:E56E: BD 5A E5  LDA tbl_E55A,X
C - - - - - 0x002581 00:E571: 85 25     STA ram_0025
loc_E573:
C D 3 - - - 0x002583 00:E573: A6 25     LDX ram_0025
C - - - - - 0x002585 00:E575: BD 39 E5  LDA tbl_E539,X
C - - - - - 0x002588 00:E578: 48        PHA
C - - - - - 0x002589 00:E579: 29 3F     AND #$3F
C - - - - - 0x00258B 00:E57B: C5 24     CMP ram_0024
C - - - - - 0x00258D 00:E57D: F0 04     BEQ bra_E583
C - - - - - 0x00258F 00:E57F: 90 02     BCC bra_E583
C - - - - - 0x002591 00:E581: 68        PLA
C - - - - - 0x002592 00:E582: 60        RTS
bra_E583:
C - - - - - 0x002593 00:E583: E6 25     INC ram_0025
C - - - - - 0x002595 00:E585: A0 03     LDY #$03
bra_E587_loop:
C - - - - - 0x002597 00:E587: B9 86 07  LDA ram_0786,Y
C - - - - - 0x00259A 00:E58A: F0 03     BEQ bra_E58F
C - - - - - 0x00259C 00:E58C: 88        DEY
C - - - - - 0x00259D 00:E58D: 10 F8     BPL bra_E587_loop
bra_E58F:
C - - - - - 0x00259F 00:E58F: 68        PLA
C - - - - - 0x0025A0 00:E590: 99 86 07  STA ram_0786,Y
C - - - - - 0x0025A3 00:E593: 48        PHA
C - - - - - 0x0025A4 00:E594: A2 00     LDX #$00
C - - - - - 0x0025A6 00:E596: 29 40     AND #$40
C - - - - - 0x0025A8 00:E598: D0 01     BNE bra_E59B
C - - - - - 0x0025AA 00:E59A: CA        DEX
bra_E59B:
C - - - - - 0x0025AB 00:E59B: 8A        TXA
C - - - - - 0x0025AC 00:E59C: 99 D7 07  STA ram_07D0_obj + $07,Y ; 07D7 07D8 07D9 07DA 
C - - - - - 0x0025AF 00:E59F: 68        PLA
C - - - - - 0x0025B0 00:E5A0: 48        PHA
C - - - - - 0x0025B1 00:E5A1: A2 C0     LDX #$C0
C - - - - - 0x0025B3 00:E5A3: 29 80     AND #$80
C - - - - - 0x0025B5 00:E5A5: D0 02     BNE bra_E5A9
C - - - - - 0x0025B7 00:E5A7: A2 80     LDX #$80
bra_E5A9:
C - - - - - 0x0025B9 00:E5A9: 8A        TXA
C - - - - - 0x0025BA 00:E5AA: 99 A7 07  STA ram_07A0_obj + $07,Y ; 07A7 07A8 07A9 07AA 
C - - - - - 0x0025BD 00:E5AD: A9 00     LDA #$00
C - - - - - 0x0025BF 00:E5AF: 99 97 07  STA ram_0790_obj + $07,Y ; 0797 0798 0799 079A 
C - - - - - 0x0025C2 00:E5B2: A2 06     LDX #$06
C - - - - - 0x0025C4 00:E5B4: A5 59     LDA ram_mountain_current
C - - - - - 0x0025C6 00:E5B6: 29 04     AND #$04
C - - - - - 0x0025C8 00:E5B8: F0 01     BEQ bra_E5BB
C - - - - - 0x0025CA 00:E5BA: AA        TAX
bra_E5BB:
C - - - - - 0x0025CB 00:E5BB: 86 03     STX ram_0003
C - - - - - 0x0025CD 00:E5BD: 68        PLA
C - - - - - 0x0025CE 00:E5BE: 29 3F     AND #$3F
C - - - - - 0x0025D0 00:E5C0: 48        PHA
C - - - - - 0x0025D1 00:E5C1: C9 1E     CMP #$1E
C - - - - - 0x0025D3 00:E5C3: 30 03     BMI bra_E5C8
C - - - - - 0x0025D5 00:E5C5: A2 00     LDX #$00
C - - - - - 0x0025D7 00:E5C7: 2C        .byte $2C   ; BIT opcode
bra_E5C8:
C - - - - - 0x0025D8 00:E5C8: A2 01     LDX #$01
C - - - - - 0x0025DA 00:E5CA: 8A        TXA
C - - - - - 0x0025DB 00:E5CB: 99 FA 06  STA ram_06E0_bouns_stage_data + $1A,Y ; 06FA 06FB 06FC 06FD 
C - - - - - 0x0025DE 00:E5CE: 68        PLA
C - - - - - 0x0025DF 00:E5CF: AA        TAX
C - - - - - 0x0025E0 00:E5D0: A9 DE     LDA #$DE
bra_E5D2_loop:
C - - - - - 0x0025E2 00:E5D2: 38        SEC
C - - - - - 0x0025E3 00:E5D3: E9 08     SBC #$08
C - - - - - 0x0025E5 00:E5D5: CA        DEX
C - - - - - 0x0025E6 00:E5D6: D0 FA     BNE bra_E5D2_loop
C - - - - - 0x0025E8 00:E5D8: 85 08     STA ram_0008
C - - - - - 0x0025EA 00:E5DA: 99 BE 06  STA ram_06BE,Y ; 06BE 06BF 06C0 06C1 
C - - - - - 0x0025ED 00:E5DD: 18        CLC
C - - - - - 0x0025EE 00:E5DE: 69 05     ADC #$05
C - - - - - 0x0025F0 00:E5E0: 99 DC 06  STA ram_06C2_data + $1A,Y ; 06DC 06DD 06DE 06DF 
C - - - - - 0x0025F3 00:E5E3: A9 E8     LDA #$E8
C - - - - - 0x0025F5 00:E5E5: 99 82 06  STA ram_0668_data + $1A,Y ; 0682 0683 0684 0685 
C - - - - - 0x0025F8 00:E5E8: A9 18     LDA #$18
C - - - - - 0x0025FA 00:E5EA: A6 03     LDX ram_0003
C - - - - - 0x0025FC 00:E5EC: E0 04     CPX #$04
C - - - - - 0x0025FE 00:E5EE: D0 02     BNE bra_E5F2
C - - - - - 0x002600 00:E5F0: A9 08     LDA #$08
bra_E5F2:
C - - - - - 0x002602 00:E5F2: 99 A0 06  STA ram_0686_data + $1A,Y ; 06A0 06A1 06A2 06A3 
C - - - - - 0x002605 00:E5F5: A5 27     LDA ram_0027_flag
C - - - - - 0x002607 00:E5F7: F0 06     BEQ bra_E5FF
C - - - - - 0x002609 00:E5F9: A5 08     LDA ram_0008
C - - - - - 0x00260B 00:E5FB: 18        CLC
C - - - - - 0x00260C 00:E5FC: 69 10     ADC #$10
C - - - - - 0x00260E 00:E5FE: 2C        .byte $2C   ; BIT opcode
bra_E5FF:
C - - - - - 0x00260F 00:E5FF: A5 08     LDA ram_0008
C - - - - - 0x002611 00:E601: 38        SEC
C - - - - - 0x002612 00:E602: E5 13     SBC ram_scroll_Y
C - - - - - 0x002614 00:E604: 85 05     STA ram_0005
C - - - - - 0x002616 00:E606: C6 05     DEC ram_0005
C - - - - - 0x002618 00:E608: A9 DC     LDA #$DC
C - - - - - 0x00261A 00:E60A: 85 07     STA ram_0007
C - - - - - 0x00261C 00:E60C: A9 E8     LDA #$E8
C - - - - - 0x00261E 00:E60E: 85 01     STA ram_0001
C - - - - - 0x002620 00:E610: B9 73 E2  LDA tbl_E273,Y
C - - - - - 0x002623 00:E613: A8        TAY
loc_E614:
C D 3 - - - 0x002624 00:E614: A9 00     LDA #$00
C - - - - - 0x002626 00:E616: 99 A2 02  STA ram_spr_A + $A0,Y
C - - - - - 0x002629 00:E619: A5 05     LDA ram_0005
C - - - - - 0x00262B 00:E61B: 99 A0 02  STA ram_spr_Y + $A0,Y
C - - - - - 0x00262E 00:E61E: 20 81 E8  JSR sub_E881
C - - - - - 0x002631 00:E621: A5 07     LDA ram_0007
C - - - - - 0x002633 00:E623: 99 A1 02  STA ram_spr_T + $A0,Y
C - - - - - 0x002636 00:E626: A9 FF     LDA #$FF
C - - - - - 0x002638 00:E628: 85 07     STA ram_0007
C - - - - - 0x00263A 00:E62A: C6 03     DEC ram_0003
C - - - - - 0x00263C 00:E62C: F0 07     BEQ bra_E635
C - - - - - 0x00263E 00:E62E: C8        INY
C - - - - - 0x00263F 00:E62F: C8        INY
C - - - - - 0x002640 00:E630: C8        INY
C - - - - - 0x002641 00:E631: C8        INY
C - - - - - 0x002642 00:E632: 4C 14 E6  JMP loc_E614
bra_E635:
C - - - - - 0x002645 00:E635: A9 FE     LDA #$FE
C - - - - - 0x002647 00:E637: 99 A1 02  STA ram_spr_T + $A0,Y
C - - - - - 0x00264A 00:E63A: 4C 73 E5  JMP loc_E573



sub_E63D:
C - - - - - 0x00264D 00:E63D: A4 90     LDY ram_0090
C - - - - - 0x00264F 00:E63F: C8        INY
sub_E640:
C - - - - - 0x002650 00:E640: C0 09     CPY #$09
C - - - - - 0x002652 00:E642: 10 09     BPL bra_E64D_RTS
C - - - - - 0x002654 00:E644: C0 01     CPY #$01
C - - - - - 0x002656 00:E646: F0 05     BEQ bra_E64D_RTS
C - - - - - 0x002658 00:E648: 20 4E E6  JSR sub_E64E
C - - - - - 0x00265B 00:E64B: B0 15     BCS bra_E662
bra_E64D_RTS:
C - - - - - 0x00265D 00:E64D: 60        RTS



sub_E64E:
C - - - - - 0x00265E 00:E64E: 20 19 E7  JSR sub_E719
C - - - - - 0x002661 00:E651: 85 0C     STA ram_000C
C - - - - - 0x002663 00:E653: 98        TYA
C - - - - - 0x002664 00:E654: 18        CLC
C - - - - - 0x002665 00:E655: 65 0C     ADC ram_000C
C - - - - - 0x002667 00:E657: AA        TAX
C - - - - - 0x002668 00:E658: BD 80 E3  LDA tbl_E382 - $02,X
C - - - - - 0x00266B 00:E65B: 85 0C     STA ram_000C
C - - - - - 0x00266D 00:E65D: 29 E0     AND #$E0
C - - - - - 0x00266F 00:E65F: C9 60     CMP #$60
C - - - - - 0x002671 00:E661: 60        RTS



bra_E662:
C - - - - - 0x002672 00:E662: 85 0E     STA ram_000E
C - - - - - 0x002674 00:E664: 84 00     STY ram_0000
C - - - - - 0x002676 00:E666: A2 05     LDX #$05
bra_E668_loop:
C - - - - - 0x002678 00:E668: BD B2 E4  LDA tbl_E4B2,X
C - - - - - 0x00267B 00:E66B: 95 01     STA ram_0001,X
C - - - - - 0x00267D 00:E66D: CA        DEX
C - - - - - 0x00267E 00:E66E: 10 F8     BPL bra_E668_loop
C - - - - - 0x002680 00:E670: A5 0C     LDA ram_000C
C - - - - - 0x002682 00:E672: 29 10     AND #$10
C - - - - - 0x002684 00:E674: D0 02     BNE bra_E678
C - - - - - 0x002686 00:E676: E6 05     INC ram_0005
bra_E678:
C - - - - - 0x002688 00:E678: A5 0C     LDA ram_000C
C - - - - - 0x00268A 00:E67A: 29 07     AND #$07
C - - - - - 0x00268C 00:E67C: 0A        ASL
C - - - - - 0x00268D 00:E67D: AA        TAX
C - - - - - 0x00268E 00:E67E: BD A2 E4  LDA tbl_E4A2,X
C - - - - - 0x002691 00:E681: 85 06     STA ram_0006
C - - - - - 0x002693 00:E683: BD A3 E4  LDA tbl_E4A2 + $01,X
C - - - - - 0x002696 00:E686: 85 07     STA ram_0007
C - - - - - 0x002698 00:E688: A5 19     LDA ram_random + $01
C - - - - - 0x00269A 00:E68A: 29 1F     AND #$1F
C - - - - - 0x00269C 00:E68C: 18        CLC
C - - - - - 0x00269D 00:E68D: 69 80     ADC #$80
C - - - - - 0x00269F 00:E68F: A6 0E     LDX ram_000E
C - - - - - 0x0026A1 00:E691: E0 E0     CPX #$E0
C - - - - - 0x0026A3 00:E693: F0 06     BEQ bra_E69B
C - - - - - 0x0026A5 00:E695: E0 C0     CPX #$C0
C - - - - - 0x0026A7 00:E697: D0 0C     BNE bra_E6A5
C - - - - - 0x0026A9 00:E699: A9 F0     LDA #$F0
bra_E69B:
C - - - - - 0x0026AB 00:E69B: 18        CLC
C - - - - - 0x0026AC 00:E69C: 65 03     ADC ram_0003
C - - - - - 0x0026AE 00:E69E: 85 03     STA ram_0003
C - - - - - 0x0026B0 00:E6A0: 18        CLC
C - - - - - 0x0026B1 00:E6A1: 69 1B     ADC #$1B
C - - - - - 0x0026B3 00:E6A3: 85 04     STA ram_0004
bra_E6A5:
C - - - - - 0x0026B5 00:E6A5: A2 00     LDX #$00
C - - - - - 0x0026B7 00:E6A7: AD 86 07  LDA ram_0786
C - - - - - 0x0026BA 00:E6AA: F0 01     BEQ bra_E6AD
C - - - - - 0x0026BC 00:E6AC: E8        INX ; 01
bra_E6AD:
C - - - - - 0x0026BD 00:E6AD: A5 05     LDA ram_0005
C - - - - - 0x0026BF 00:E6AF: 9D D7 07  STA ram_07D0_obj + $07,X ; 07D7 07D8 
C - - - - - 0x0026C2 00:E6B2: A5 06     LDA ram_0006
C - - - - - 0x0026C4 00:E6B4: 9D 97 07  STA ram_0790_obj + $07,X ; 0797 0798 
C - - - - - 0x0026C7 00:E6B7: A5 07     LDA ram_0007
C - - - - - 0x0026C9 00:E6B9: 9D A7 07  STA ram_07A0_obj + $07,X ; 07A7 07A8 
C - - - - - 0x0026CC 00:E6BC: A0 00     LDY #$00
bra_E6BE_loop:
C - - - - - 0x0026CE 00:E6BE: B9 00 00  LDA ram_0000,Y ; 0000 0001 0002 0003 0004 
C - - - - - 0x0026D1 00:E6C1: 9D 86 07  STA ram_0786,X ; 0786 0787 0788 0789 078A 078B 078C 078D 078E 078F 
C - - - - - 0x0026D4 00:E6C4: E8        INX
C - - - - - 0x0026D5 00:E6C5: E8        INX
C - - - - - 0x0026D6 00:E6C6: C8        INY
C - - - - - 0x0026D7 00:E6C7: C0 05     CPY #$05
C - - - - - 0x0026D9 00:E6C9: D0 F3     BNE bra_E6BE_loop
C - - - - - 0x0026DB 00:E6CB: A0 00     LDY #$00
C - - - - - 0x0026DD 00:E6CD: E0 0A     CPX #$0A
C - - - - - 0x0026DF 00:E6CF: F0 02     BEQ bra_E6D3
C - - - - - 0x0026E1 00:E6D1: A0 18     LDY #$18
bra_E6D3:
C - - - - - 0x0026E3 00:E6D3: A2 06     LDX #$06
C - - - - - 0x0026E5 00:E6D5: 86 0A     STX ram_000A
loc_E6D7:
bra_E6D7_loop:
C D 3 - - - 0x0026E7 00:E6D7: A9 22     LDA #$22
C - - - - - 0x0026E9 00:E6D9: 99 A2 02  STA ram_spr_A + $A0,Y
C - - - - - 0x0026EC 00:E6DC: A6 0A     LDX ram_000A
C - - - - - 0x0026EE 00:E6DE: BD BB E4  LDA tbl_E4BB,X
C - - - - - 0x0026F1 00:E6E1: E0 03     CPX #$03
C - - - - - 0x0026F3 00:E6E3: F0 04     BEQ bra_E6E9
C - - - - - 0x0026F5 00:E6E5: E0 04     CPX #$04
C - - - - - 0x0026F7 00:E6E7: D0 08     BNE bra_E6F1
bra_E6E9:
C - - - - - 0x0026F9 00:E6E9: A6 0E     LDX ram_000E
C - - - - - 0x0026FB 00:E6EB: E0 E0     CPX #$E0
C - - - - - 0x0026FD 00:E6ED: F0 02     BEQ bra_E6F1
C - - - - - 0x0026FF 00:E6EF: A9 FF     LDA #$FF
bra_E6F1:
C - - - - - 0x002701 00:E6F1: 99 A1 02  STA ram_spr_T + $A0,Y
C - - - - - 0x002704 00:E6F4: 20 81 E8  JSR sub_E881
C - - - - - 0x002707 00:E6F7: A5 90     LDA ram_0090
C - - - - - 0x002709 00:E6F9: 38        SEC
C - - - - - 0x00270A 00:E6FA: E5 00     SBC ram_0000
C - - - - - 0x00270C 00:E6FC: AA        TAX
C - - - - - 0x00270D 00:E6FD: E8        INX
C - - - - - 0x00270E 00:E6FE: BD B7 E4  LDA tbl_E4B7,X
C - - - - - 0x002711 00:E701: 99 A0 02  STA ram_spr_Y + $A0,Y
C - - - - - 0x002714 00:E704: C8        INY
C - - - - - 0x002715 00:E705: C8        INY
C - - - - - 0x002716 00:E706: C8        INY
C - - - - - 0x002717 00:E707: C8        INY
C - - - - - 0x002718 00:E708: C6 0A     DEC ram_000A
C - - - - - 0x00271A 00:E70A: F0 1A     BEQ bra_E726_RTS
C - - - - - 0x00271C 00:E70C: A5 0A     LDA ram_000A
C - - - - - 0x00271E 00:E70E: C9 03     CMP #$03
C - - - - - 0x002720 00:E710: D0 C5     BNE bra_E6D7_loop
C - - - - - 0x002722 00:E712: A5 03     LDA ram_0003
C - - - - - 0x002724 00:E714: 85 01     STA ram_0001
C - - - - - 0x002726 00:E716: 4C D7 E6  JMP loc_E6D7



sub_E719:
C - - - - - 0x002729 00:E719: A5 59     LDA ram_mountain_current
C - - - - - 0x00272B 00:E71B: 29 1F     AND #$1F
C - - - - - 0x00272D 00:E71D: AA        TAX
C - - - - - 0x00272E 00:E71E: A9 F9     LDA #$F9
bra_E720_loop:
C - - - - - 0x002730 00:E720: 18        CLC
C - - - - - 0x002731 00:E721: 69 07     ADC #$07
C - - - - - 0x002733 00:E723: CA        DEX
C - - - - - 0x002734 00:E724: 10 FA     BPL bra_E720_loop
bra_E726_RTS:
C - - - - - 0x002736 00:E726: 60        RTS



tbl_E727:
- D 3 - - - 0x002737 00:E727: D3        .byte $D3   ; 00 
- D 3 - - - 0x002738 00:E728: 8C        .byte $8C   ; 08 
- D 3 - - - 0x002739 00:E729: CD        .byte $CD   ; 10 
- D 3 - - - 0x00273A 00:E72A: 8F        .byte $8F   ; 18 



sub_E72B:
C - - - - - 0x00273B 00:E72B: A5 59     LDA ram_mountain_current
C - - - - - 0x00273D 00:E72D: AA        TAX
C - - - - - 0x00273E 00:E72E: 29 0F     AND #$0F
C - - - - - 0x002740 00:E730: A8        TAY
C - - - - - 0x002741 00:E731: B9 92 E4  LDA tbl_E492,Y
C - - - - - 0x002744 00:E734: 85 00     STA ram_0000
C - - - - - 0x002746 00:E736: B9 82 E4  LDA tbl_E482,Y
C - - - - - 0x002749 00:E739: 85 01     STA ram_0001
C - - - - - 0x00274B 00:E73B: B9 72 E4  LDA tbl_E472,Y
C - - - - - 0x00274E 00:E73E: 85 02     STA ram_0002
C - - - - - 0x002750 00:E740: B9 62 E4  LDA tbl_E462,Y
C - - - - - 0x002753 00:E743: 85 03     STA ram_0003
C - - - - - 0x002755 00:E745: A0 07     LDY #$07
bra_E747_loop:
C - - - - - 0x002757 00:E747: A9 00     LDA #$00
C - - - - - 0x002759 00:E749: A2 03     LDX #$03
bra_E74B_loop:
C - - - - - 0x00275B 00:E74B: 56 00     LSR ram_0000,X
C - - - - - 0x00275D 00:E74D: 2A        ROL
C - - - - - 0x00275E 00:E74E: CA        DEX
C - - - - - 0x00275F 00:E74F: 10 FA     BPL bra_E74B_loop
C - - - - - 0x002761 00:E751: 48        PHA
C - - - - - 0x002762 00:E752: C8        INY
C - - - - - 0x002763 00:E753: 20 4E E6  JSR sub_E64E
C - - - - - 0x002766 00:E756: 88        DEY
C - - - - - 0x002767 00:E757: C9 A0     CMP #$A0
C - - - - - 0x002769 00:E759: 68        PLA
C - - - - - 0x00276A 00:E75A: 90 02     BCC bra_E75E
C - - - - - 0x00276C 00:E75C: A9 00     LDA #$00
bra_E75E:
C - - - - - 0x00276E 00:E75E: 99 04 00  STA ram_0004,Y
C - - - - - 0x002771 00:E761: A5 0C     LDA ram_000C
C - - - - - 0x002773 00:E763: AA        TAX
C - - - - - 0x002774 00:E764: 29 E0     AND #$E0
C - - - - - 0x002776 00:E766: C9 A0     CMP #$A0
C - - - - - 0x002778 00:E768: B0 12     BCS bra_E77C
C - - - - - 0x00277A 00:E76A: 29 70     AND #$70
C - - - - - 0x00277C 00:E76C: F0 0B     BEQ bra_E779
C - - - - - 0x00277E 00:E76E: 8A        TXA
C - - - - - 0x00277F 00:E76F: 4A        LSR
C - - - - - 0x002780 00:E770: 4A        LSR
C - - - - - 0x002781 00:E771: 4A        LSR
C - - - - - 0x002782 00:E772: 29 03     AND #$03
C - - - - - 0x002784 00:E774: AA        TAX
C - - - - - 0x002785 00:E775: BD 27 E7  LDA tbl_E727,X
C - - - - - 0x002788 00:E778: 2C        .byte $2C   ; BIT opcode
bra_E779:
C - - - - - 0x002789 00:E779: A9 00     LDA #$00
C - - - - - 0x00278B 00:E77B: 2C        .byte $2C   ; BIT opcode
bra_E77C:
C - - - - - 0x00278C 00:E77C: A9 01     LDA #$01
C - - - - - 0x00278E 00:E77E: 99 30 06  STA ram_0600_data + $30,Y
C - - - - - 0x002791 00:E781: 88        DEY
C - - - - - 0x002792 00:E782: D0 C3     BNE bra_E747_loop
C - - - - - 0x002794 00:E784: A9 01     LDA #$01
C - - - - - 0x002796 00:E786: 85 04     STA ram_0004
C - - - - - 0x002798 00:E788: 4A        LSR ; 00
C - - - - - 0x002799 00:E789: 99 30 06  STA ram_0600_data + $30,Y
C - - - - - 0x00279C 00:E78C: 60        RTS



tbl_E78D:
- D 3 - - - 0x00279D 00:E78D: 21        .byte $21   ; 00 
- D 3 - - - 0x00279E 00:E78E: 4E        .byte $4E   ; 01 
- D 3 - - - 0x00279F 00:E78F: 20        .byte $20   ; 02 
- D 3 - - - 0x0027A0 00:E790: 4D        .byte $4D   ; 03 



tbl_E791:
- D 3 - - - 0x0027A1 00:E791: 42        .byte $42   ; 01 
- D 3 - - - 0x0027A2 00:E792: 42        .byte $42   ; 02 
- D 3 - - - 0x0027A3 00:E793: 42        .byte $42   ; 03 
- D 3 - - - 0x0027A4 00:E794: 42        .byte $42   ; 04 
- D 3 - - - 0x0027A5 00:E795: 42        .byte $42   ; 05 
- D 3 - - - 0x0027A6 00:E796: 48        .byte $48   ; 06 
- D 3 - - - 0x0027A7 00:E797: 4E        .byte $4E   ; 07 
- D 3 - - - 0x0027A8 00:E798: 9D        .byte $9D   ; 08 
- D 3 - - - 0x0027A9 00:E799: 9D        .byte $9D   ; 09 
- D 3 - - - 0x0027AA 00:E79A: 9D        .byte $9D   ; 0A 
- D 3 - - - 0x0027AB 00:E79B: 9D        .byte $9D   ; 0B 
- D 3 - - - 0x0027AC 00:E79C: 9D        .byte $9D   ; 0C 



sub_E79D:
C - - - - - 0x0027AD 00:E79D: A9 08     LDA #$08
C - - - - - 0x0027AF 00:E79F: 85 0F     STA ram_000F
loc_E7A1:
C D 3 - - - 0x0027B1 00:E7A1: A4 0F     LDY ram_000F
C - - - - - 0x0027B3 00:E7A3: C0 01     CPY #$01
C - - - - - 0x0027B5 00:E7A5: F0 0B     BEQ bra_E7B2
C - - - - - 0x0027B7 00:E7A7: 20 4E E6  JSR sub_E64E
C - - - - - 0x0027BA 00:E7AA: C9 81     CMP #$81
C - - - - - 0x0027BC 00:E7AC: 90 04     BCC bra_E7B2
C - - - - - 0x0027BE 00:E7AE: A9 01     LDA #$01
C - - - - - 0x0027C0 00:E7B0: D0 06     BNE bra_E7B8    ; jmp
bra_E7B2:
C - - - - - 0x0027C2 00:E7B2: A9 A4     LDA #$A4
C - - - - - 0x0027C4 00:E7B4: 85 04     STA ram_0004
C - - - - - 0x0027C6 00:E7B6: A9 00     LDA #$00
bra_E7B8:
C - - - - - 0x0027C8 00:E7B8: 85 0D     STA ram_000D
C - - - - - 0x0027CA 00:E7BA: A6 0F     LDX ram_000F
C - - - - - 0x0027CC 00:E7BC: BD 8B D7  LDA tbl_D78B_ppu_hi,X
C - - - - - 0x0027CF 00:E7BF: 85 01     STA ram_0001
C - - - - - 0x0027D1 00:E7C1: BD 94 D7  LDA tbl_D794_ppu_lo,X
C - - - - - 0x0027D4 00:E7C4: 85 00     STA ram_0000
C - - - - - 0x0027D6 00:E7C6: A0 00     LDY #$00
C - - - - - 0x0027D8 00:E7C8: 8C 6C 06  STY ram_0668_data + $04
bra_E7CB:
C - - - - - 0x0027DB 00:E7CB: A9 86     LDA #$86
C - - - - - 0x0027DD 00:E7CD: 99 02 06  STA ram_0600_data + $02,Y
C - - - - - 0x0027E0 00:E7D0: A5 00     LDA ram_0000
C - - - - - 0x0027E2 00:E7D2: 99 01 06  STA ram_0600_data + $01,Y
C - - - - - 0x0027E5 00:E7D5: A5 01     LDA ram_0001
C - - - - - 0x0027E7 00:E7D7: 99 00 06  STA ram_0600_data,Y
C - - - - - 0x0027EA 00:E7DA: E6 00     INC ram_0000
C - - - - - 0x0027EC 00:E7DC: A6 0D     LDX ram_000D
C - - - - - 0x0027EE 00:E7DE: F0 07     BEQ bra_E7E7
C - - - - - 0x0027F0 00:E7E0: BD 90 E7  LDA tbl_E791 - $01,X
C - - - - - 0x0027F3 00:E7E3: 85 04     STA ram_0004
C - - - - - 0x0027F5 00:E7E5: E6 0D     INC ram_000D
bra_E7E7:
C - - - - - 0x0027F7 00:E7E7: A2 06     LDX #$06
C - - - - - 0x0027F9 00:E7E9: C8        INY
C - - - - - 0x0027FA 00:E7EA: C8        INY
C - - - - - 0x0027FB 00:E7EB: C8        INY
C - - - - - 0x0027FC 00:E7EC: C0 30     CPY #$30
C - - - - - 0x0027FE 00:E7EE: D0 07     BNE bra_E7F7
C - - - - - 0x002800 00:E7F0: A5 00     LDA ram_0000
C - - - - - 0x002802 00:E7F2: 18        CLC
C - - - - - 0x002803 00:E7F3: 69 14     ADC #$14
C - - - - - 0x002805 00:E7F5: 85 00     STA ram_0000
bra_E7F7:
bra_E7F7_loop:
C - - - - - 0x002807 00:E7F7: A5 04     LDA ram_0004
C - - - - - 0x002809 00:E7F9: 99 00 06  STA ram_0600_data,Y
C - - - - - 0x00280C 00:E7FC: E6 04     INC ram_0004
C - - - - - 0x00280E 00:E7FE: C8        INY
C - - - - - 0x00280F 00:E7FF: C0 6C     CPY #$6C
C - - - - - 0x002811 00:E801: F0 0A     BEQ bra_E80D
C - - - - - 0x002813 00:E803: CA        DEX
C - - - - - 0x002814 00:E804: D0 F1     BNE bra_E7F7_loop
C - - - - - 0x002816 00:E806: A9 EB     LDA #$EB
C - - - - - 0x002818 00:E808: 99 FF 05  STA ram_0600_data - $01,Y
C - - - - - 0x00281B 00:E80B: D0 BE     BNE bra_E7CB    ; jmp
bra_E80D:
C - - - - - 0x00281D 00:E80D: A5 0F     LDA ram_000F
C - - - - - 0x00281F 00:E80F: 0A        ASL
C - - - - - 0x002820 00:E810: 18        CLC
C - - - - - 0x002821 00:E811: 69 EA     ADC #$EA
C - - - - - 0x002823 00:E813: A0 03     LDY #$03
bra_E815_loop:
C - - - - - 0x002825 00:E815: C0 01     CPY #$01
C - - - - - 0x002827 00:E817: D0 03     BNE bra_E81C
C - - - - - 0x002829 00:E819: 18        CLC
C - - - - - 0x00282A 00:E81A: 69 01     ADC #$01
bra_E81C:
C - - - - - 0x00282C 00:E81C: BE 8D E7  LDX tbl_E78D,Y
C - - - - - 0x00282F 00:E81F: 9D 00 06  STA ram_0600_data,X
C - - - - - 0x002832 00:E822: 88        DEY
C - - - - - 0x002833 00:E823: 10 F0     BPL bra_E815_loop
C - - - - - 0x002835 00:E825: A5 0F     LDA ram_000F
C - - - - - 0x002837 00:E827: C9 06     CMP #$06
C - - - - - 0x002839 00:E829: 10 4A     BPL bra_E875
C - - - - - 0x00283B 00:E82B: A0 08     LDY #$08
C - - - - - 0x00283D 00:E82D: C9 03     CMP #$03
C - - - - - 0x00283F 00:E82F: 10 02     BPL bra_E833
C - - - - - 0x002841 00:E831: A0 10     LDY #$10
bra_E833:
C - - - - - 0x002843 00:E833: 84 0A     STY ram_000A
C - - - - - 0x002845 00:E835: A2 05     LDX #$05
bra_E837_loop:
C - - - - - 0x002847 00:E837: A4 0A     LDY ram_000A
C - - - - - 0x002849 00:E839: A9 38     LDA #$38
C - - - - - 0x00284B 00:E83B: 85 06     STA ram_0006
C - - - - - 0x00284D 00:E83D: 85 07     STA ram_0007
C - - - - - 0x00284F 00:E83F: 85 08     STA ram_0008
C - - - - - 0x002851 00:E841: 85 09     STA ram_0009
bra_E843_loop:
C - - - - - 0x002853 00:E843: 66 06     ROR ram_0006
C - - - - - 0x002855 00:E845: 66 07     ROR ram_0007
C - - - - - 0x002857 00:E847: 7E 39 06  ROR ram_0600_data + $39,X
C - - - - - 0x00285A 00:E84A: 7E 42 06  ROR ram_0600_data + $42,X
C - - - - - 0x00285D 00:E84D: 7E 4B 06  ROR ram_0600_data + $4B,X
C - - - - - 0x002860 00:E850: 7E 54 06  ROR ram_0600_data + $54,X
C - - - - - 0x002863 00:E853: 7E 5D 06  ROR ram_0600_data + $5D,X
C - - - - - 0x002866 00:E856: 7E 66 06  ROR ram_0600_data + $66,X
C - - - - - 0x002869 00:E859: 26 08     ROL ram_0008
C - - - - - 0x00286B 00:E85B: 26 09     ROL ram_0009
C - - - - - 0x00286D 00:E85D: 3E 30 06  ROL ram_0600_data + $30,X
C - - - - - 0x002870 00:E860: 3E 27 06  ROL ram_0600_data + $27,X
C - - - - - 0x002873 00:E863: 3E 1E 06  ROL ram_0600_data + $1E,X
C - - - - - 0x002876 00:E866: 3E 15 06  ROL ram_0600_data + $15,X
C - - - - - 0x002879 00:E869: 3E 0C 06  ROL ram_0600_data + $0C,X
C - - - - - 0x00287C 00:E86C: 3E 03 06  ROL ram_0600_data + $03,X
C - - - - - 0x00287F 00:E86F: 88        DEY
C - - - - - 0x002880 00:E870: D0 D1     BNE bra_E843_loop
C - - - - - 0x002882 00:E872: CA        DEX
C - - - - - 0x002883 00:E873: 10 C2     BPL bra_E837_loop
bra_E875:
C - - - - - 0x002885 00:E875: A2 09     LDX #$09
C - - - - - 0x002887 00:E877: 20 50 C1  JSR sub_C150
C - - - - - 0x00288A 00:E87A: C6 0F     DEC ram_000F
C - - - - - 0x00288C 00:E87C: F0 0D     BEQ bra_E88B_RTS
C - - - - - 0x00288E 00:E87E: 4C A1 E7  JMP loc_E7A1



sub_E881:
C - - - - - 0x002891 00:E881: A5 01     LDA ram_0001
C - - - - - 0x002893 00:E883: 99 A3 02  STA ram_spr_X + $A0,Y
C - - - - - 0x002896 00:E886: 18        CLC
C - - - - - 0x002897 00:E887: 69 08     ADC #$08
C - - - - - 0x002899 00:E889: 85 01     STA ram_0001
bra_E88B_RTS:
C - - - - - 0x00289B 00:E88B: 60        RTS


; bzk garbage?
- - - - - - 0x00289C 00:E88C: FF        .byte $FF   ; 



tbl_E88D:
- D 3 - - - 0x00289D 00:E88D: 00        .byte $00   ; 00 
- D 3 - - - 0x00289E 00:E88E: 05        .byte $05   ; 01 



sub_E88F:
C - - - - - 0x00289F 00:E88F: A2 01     LDX #$01
bra_E891_loop:
C - - - - - 0x0028A1 00:E891: B5 22     LDA ram_0022_plr,X
C - - - - - 0x0028A3 00:E893: D0 16     BNE bra_E8AB
C - - - - - 0x0028A5 00:E895: B5 20     LDA ram_plr_lives,X
C - - - - - 0x0028A7 00:E897: 30 12     BMI bra_E8AB
C - - - - - 0x0028A9 00:E899: BC 8D E8  LDY tbl_E88D,X
C - - - - - 0x0028AC 00:E89C: B9 61 03  LDA ram_plr_counter_fruits,Y
C - - - - - 0x0028AF 00:E89F: F0 0A     BEQ bra_E8AB
C - - - - - 0x0028B1 00:E8A1: A5 56     LDA ram_mountain_completed
C - - - - - 0x0028B3 00:E8A3: C9 04     CMP #$04
C - - - - - 0x0028B5 00:E8A5: D0 04     BNE bra_E8AB
C - - - - - 0x0028B7 00:E8A7: 95 22     STA ram_0022_plr,X
C - - - - - 0x0028B9 00:E8A9: F6 20     INC ram_plr_lives,X
bra_E8AB:
C - - - - - 0x0028BB 00:E8AB: CA        DEX
C - - - - - 0x0028BC 00:E8AC: 10 E3     BPL bra_E891_loop
C - - - - - 0x0028BE 00:E8AE: 60        RTS



tbl_E8AF:
- D 3 - - - 0x0028BF 00:E8AF: 21        .byte $21   ; 01 
- D 3 - - - 0x0028C0 00:E8B0: 67        .byte $67   ; 02 
- D 3 - - - 0x0028C1 00:E8B1: 07        .byte $07   ; 03 
- D 3 - - - 0x0028C2 00:E8B2: 38        .byte $38   ; 04 
- D 3 - - - 0x0028C3 00:E8B3: 38        .byte $38   ; 05 
- D 3 - - - 0x0028C4 00:E8B4: 00        .byte $00   ; 06 
- D 3 - - - 0x0028C5 00:E8B5: 00        .byte $00   ; 07 
- D 3 - - - 0x0028C6 00:E8B6: 5C        .byte $5C   ; 08 
- D 3 - - - 0x0028C7 00:E8B7: 38        .byte $38   ; 09 
- D 3 - - - 0x0028C8 00:E8B8: 00        .byte $00   ; 0A 
- D 3 - - - 0x0028C9 00:E8B9: 21        .byte $21   ; 0B 
- D 3 - - - 0x0028CA 00:E8BA: 75        .byte $75   ; 0C 
- D 3 - - - 0x0028CB 00:E8BB: 07        .byte $07   ; 0D 
- D 3 - - - 0x0028CC 00:E8BC: 38        .byte $38   ; 0E 
- D 3 - - - 0x0028CD 00:E8BD: 38        .byte $38   ; 0F 
- D 3 - - - 0x0028CE 00:E8BE: 00        .byte $00   ; 10 
- D 3 - - - 0x0028CF 00:E8BF: 00        .byte $00   ; 11 
- D 3 - - - 0x0028D0 00:E8C0: 5C        .byte $5C   ; 12 
- D 3 - - - 0x0028D1 00:E8C1: 38        .byte $38   ; 13 
- D 3 - - - 0x0028D2 00:E8C2: 00        .byte $00   ; 14 
- D 3 - - - 0x0028D3 00:E8C3: 00        .byte $00   ; 15 



tbl_E8C4:
- D 3 - - - 0x0028D4 00:E8C4: 24        .byte $24   ; 01 
- D 3 - - - 0x0028D5 00:E8C5: 27        .byte $27   ; 02 
- D 3 - - - 0x0028D6 00:E8C6: 24        .byte $24   ; 03 
- D 3 - - - 0x0028D7 00:E8C7: 27        .byte $27   ; 04 



tbl_E8C8:
- D 3 - - - 0x0028D8 00:E8C8: 60        .byte $60   ; 01 
- D 3 - - - 0x0028D9 00:E8C9: 6E        .byte $6E   ; 02 
- D 3 - - - 0x0028DA 00:E8CA: 81        .byte $81   ; 03 
- D 3 - - - 0x0028DB 00:E8CB: 97        .byte $97   ; 04 



tbl_E8CC:
- D 3 - - - 0x0028DC 00:E8CC: 52        .byte $52   ; 01 
- D 3 - - - 0x0028DD 00:E8CD: AC        .byte $AC   ; 02 
- D 3 - - - 0x0028DE 00:E8CE: E0        .byte $E0   ; 03 
- D 3 - - - 0x0028DF 00:E8CF: 0A        .byte $0A   ; 04 



tbl_E8D0:
- D 3 - - - 0x0028E0 00:E8D0: 13        .byte $13   ; 01 
- D 3 - - - 0x0028E1 00:E8D1: 08        .byte $08   ; 02 
- D 3 - - - 0x0028E2 00:E8D2: 15        .byte $15   ; 03 
- D 3 - - - 0x0028E3 00:E8D3: 1B        .byte $1B   ; 04 



tbl_E8D4:
- D 3 - - - 0x0028E4 00:E8D4: 01        .byte $01   ; 00 
- D 3 - - - 0x0028E5 00:E8D5: 00        .byte $00   ; 01 
tbl_E8D6:
- - - - - - 0x0028E6 00:E8D6: 28        .byte $28   ; 00 (02) 
- D 3 - - - 0x0028E7 00:E8D7: 50        .byte $50   ; 01 (03) 
- D 3 - - - 0x0028E8 00:E8D8: 04        .byte $04   ; 02 (04) 
tbl_E8D9:
- D 3 - - - 0x0028E9 00:E8D9: 08        .byte $08   ; 00 (03) 
- D 3 - - - 0x0028EA 00:E8DA: 00        .byte $00   ; 01 
- - - - - - 0x0028EB 00:E8DB: 00        .byte $00   ; 02 
- D 3 - - - 0x0028EC 00:E8DC: 00        .byte $00   ; 03 
- D 3 - - - 0x0028ED 00:E8DD: 00        .byte $00   ; 04 



tbl_E8DE:
- D 3 - - - 0x0028EE 00:E8DE: 03        .byte $03   ; 00 
- D 3 - - - 0x0028EF 00:E8DF: 05        .byte $05   ; 01 
- D 3 - - - 0x0028F0 00:E8E0: 06        .byte $06   ; 02 
- D 3 - - - 0x0028F1 00:E8E1: 07        .byte $07   ; 03 
- D 3 - - - 0x0028F2 00:E8E2: 08        .byte $08   ; 04 
- D 3 - - - 0x0028F3 00:E8E3: 0A        .byte $0A   ; 05 
- D 3 - - - 0x0028F4 00:E8E4: 14        .byte $14   ; 06 
- D 3 - - - 0x0028F5 00:E8E5: 1E        .byte $1E   ; 07 
- D 3 - - - 0x0028F6 00:E8E6: 28        .byte $28   ; 08 
- D 3 - - - 0x0028F7 00:E8E7: 32        .byte $32   ; 09 



tbl_E8E8:
- D 3 - - - 0x0028F8 00:E8E8: 1E        .byte $1E   ; 00 
- D 3 - - - 0x0028F9 00:E8E9: 32        .byte $32   ; 01 
- - - - - - 0x0028FA 00:E8EA: 3C        .byte $3C   ; 02 
- D 3 - - - 0x0028FB 00:E8EB: 46        .byte $46   ; 03 
- D 3 - - - 0x0028FC 00:E8EC: 50        .byte $50   ; 04 
- - - - - - 0x0028FD 00:E8ED: 01        .byte $01   ; 05 
- - - - - - 0x0028FE 00:E8EE: 02        .byte $02   ; 06 
- - - - - - 0x0028FF 00:E8EF: 03        .byte $03   ; 07 
- D 3 - - - 0x002900 00:E8F0: 04        .byte $04   ; 08 
- D 3 - - - 0x002901 00:E8F1: 05        .byte $05   ; 09 



loc_E8F2:
C D 3 - - - 0x002902 00:E8F2: A5 34     LDA ram_0034_timer
C - - - - - 0x002904 00:E8F4: D0 0D     BNE bra_E903
C - - - - - 0x002906 00:E8F6: AC A3 03  LDY ram_03A3
C - - - - - 0x002909 00:E8F9: F0 05     BEQ bra_E900
C - - - - - 0x00290B 00:E8FB: A5 50     LDA ram_frm_cnt
C - - - - - 0x00290D 00:E8FD: 4A        LSR
C - - - - - 0x00290E 00:E8FE: 90 1A     BCC bra_E91A
bra_E900:
C - - - - - 0x002910 00:E900: 4C CE E9  JMP loc_E9CE
bra_E903:
C - - - - - 0x002913 00:E903: AC A3 03  LDY ram_03A3
C - - - - - 0x002916 00:E906: F0 04     BEQ bra_E90C
C - - - - - 0x002918 00:E908: C9 31     CMP #$31
C - - - - - 0x00291A 00:E90A: F0 03     BEQ bra_E90F
bra_E90C:
C - - - - - 0x00291C 00:E90C: 4C 35 EA  JMP loc_EA35
bra_E90F:
C - - - - - 0x00291F 00:E90F: A2 09     LDX #$09
bra_E911_loop:
C - - - - - 0x002921 00:E911: BD 60 03  LDA ram_plr_counters,X
C - - - - - 0x002924 00:E914: 9D 8F 03  STA ram_038F,X
C - - - - - 0x002927 00:E917: CA        DEX
C - - - - - 0x002928 00:E918: 10 F7     BPL bra_E911_loop
bra_E91A:
C - - - - - 0x00292A 00:E91A: A2 15     LDX #$15
bra_E91C_loop:
C - - - - - 0x00292C 00:E91C: BD AE E8  LDA tbl_E8AF - $01,X
C - - - - - 0x00292F 00:E91F: 9D 00 03  STA ram_ppu_buffer - $01,X
C - - - - - 0x002932 00:E922: CA        DEX
C - - - - - 0x002933 00:E923: D0 F7     BNE bra_E91C_loop
bra_E925_loop:
C - - - - - 0x002935 00:E925: AC A3 03  LDY ram_03A3
bra_E928_loop:
C - - - - - 0x002938 00:E928: F0 1D     BEQ bra_E947
C - - - - - 0x00293A 00:E92A: BD 02 03  LDA ram_ppu_buffer + $01,X
C - - - - - 0x00293D 00:E92D: 18        CLC
C - - - - - 0x00293E 00:E92E: 69 40     ADC #< $0040
C - - - - - 0x002940 00:E930: 9D 02 03  STA ram_ppu_buffer + $01,X
C - - - - - 0x002943 00:E933: BD 01 03  LDA ram_ppu_buffer,X
C - - - - - 0x002946 00:E936: 69 00     ADC #> $0040
C - - - - - 0x002948 00:E938: 9D 01 03  STA ram_ppu_buffer,X
C - - - - - 0x00294B 00:E93B: 88        DEY
C - - - - - 0x00294C 00:E93C: D0 EA     BNE bra_E928_loop
C - - - - - 0x00294E 00:E93E: 8A        TXA
C - - - - - 0x00294F 00:E93F: 18        CLC
C - - - - - 0x002950 00:E940: 69 0A     ADC #$0A
C - - - - - 0x002952 00:E942: AA        TAX
C - - - - - 0x002953 00:E943: E0 0B     CPX #$0B
C - - - - - 0x002955 00:E945: 90 DE     BCC bra_E925_loop
bra_E947:
C - - - - - 0x002957 00:E947: AC A3 03  LDY ram_03A3
C - - - - - 0x00295A 00:E94A: A2 00     LDX #$00
bra_E94C_loop:
C - - - - - 0x00295C 00:E94C: 98        TYA
C - - - - - 0x00295D 00:E94D: 48        PHA
C - - - - - 0x00295E 00:E94E: B9 99 03  LDA ram_0399,Y
C - - - - - 0x002961 00:E951: 20 4A EA  JSR sub_EA4A_get_tens
C - - - - - 0x002964 00:E954: 9D 0A 03  STA ram_ppu_buffer + $09,X
C - - - - - 0x002967 00:E957: 98        TYA
C - - - - - 0x002968 00:E958: 9D 09 03  STA ram_ppu_buffer + $08,X
C - - - - - 0x00296B 00:E95B: 20 5C EA  JSR sub_EA5C
C - - - - - 0x00296E 00:E95E: 68        PLA
C - - - - - 0x00296F 00:E95F: A8        TAY
C - - - - - 0x002970 00:E960: B9 99 03  LDA ram_0399,Y
C - - - - - 0x002973 00:E963: D9 8F 03  CMP ram_038F,Y
C - - - - - 0x002976 00:E966: F0 0C     BEQ bra_E974
C - - - - - 0x002978 00:E968: C9 63     CMP #$63
C - - - - - 0x00297A 00:E96A: B0 08     BCS bra_E974    ; if overflow
C - - - - - 0x00297C 00:E96C: B9 99 03  LDA ram_0399,Y
C - - - - - 0x00297F 00:E96F: 69 01     ADC #$01
C - - - - - 0x002981 00:E971: 99 99 03  STA ram_0399,Y
bra_E974:
C - - - - - 0x002984 00:E974: C8        INY
C - - - - - 0x002985 00:E975: C8        INY
C - - - - - 0x002986 00:E976: C8        INY
C - - - - - 0x002987 00:E977: C8        INY
C - - - - - 0x002988 00:E978: C8        INY
C - - - - - 0x002989 00:E979: 8A        TXA
C - - - - - 0x00298A 00:E97A: 18        CLC
C - - - - - 0x00298B 00:E97B: 69 0A     ADC #$0A
C - - - - - 0x00298D 00:E97D: AA        TAX
C - - - - - 0x00298E 00:E97E: E0 0B     CPX #$0B
C - - - - - 0x002990 00:E980: 90 CA     BCC bra_E94C_loop
C - - - - - 0x002992 00:E982: A6 58     LDX ram_game_mode
C - - - - - 0x002994 00:E984: D0 03     BNE bra_E989    ; if 2p
; if 1p
; X = 00
- - - - - - 0x002996 00:E986: 8E 0B 03  STX ram_ppu_buffer + $0A
bra_E989:
C - - - - - 0x002999 00:E989: AC A3 03  LDY ram_03A3
C - - - - - 0x00299C 00:E98C: 88        DEY
C - - - - - 0x00299D 00:E98D: D0 0A     BNE bra_E999
C - - - - - 0x00299F 00:E98F: A5 20     LDA ram_plr_lives
C - - - - - 0x0029A1 00:E991: C9 80     CMP #$80
C - - - - - 0x0029A3 00:E993: D0 04     BNE bra_E999
C - - - - - 0x0029A5 00:E995: 8C 01 03  STY ram_ppu_buffer
C - - - - - 0x0029A8 00:E998: 60        RTS
bra_E999:
bra_E999_loop:
C - - - - - 0x0029A9 00:E999: 8A        TXA
C - - - - - 0x0029AA 00:E99A: 86 06     STX ram_0006
C - - - - - 0x0029AC 00:E99C: 48        PHA
C - - - - - 0x0029AD 00:E99D: AE A3 03  LDX ram_03A3
C - - - - - 0x0029B0 00:E9A0: BD CB E8  LDA tbl_E8CC - $01,X
C - - - - - 0x0029B3 00:E9A3: E0 01     CPX #$01
C - - - - - 0x0029B5 00:E9A5: D0 03     BNE bra_E9AA
C - - - - - 0x0029B7 00:E9A7: AD FE 05  LDA ram_05FE
bra_E9AA:
C - - - - - 0x0029BA 00:E9AA: 85 02     STA ram_0002
C - - - - - 0x0029BC 00:E9AC: BD C7 E8  LDA tbl_E8C8 - $01,X
C - - - - - 0x0029BF 00:E9AF: 85 01     STA ram_0001
C - - - - - 0x0029C1 00:E9B1: 85 0E     STA ram_000E
C - - - - - 0x0029C3 00:E9B3: BD CF E8  LDA tbl_E8D0 - $01,X
C - - - - - 0x0029C6 00:E9B6: 18        CLC
C - - - - - 0x0029C7 00:E9B7: 65 06     ADC ram_0006
C - - - - - 0x0029C9 00:E9B9: A8        TAY
C - - - - - 0x0029CA 00:E9BA: BD C3 E8  LDA tbl_E8C4 - $01,X
C - - - - - 0x0029CD 00:E9BD: A6 06     LDX ram_0006
C - - - - - 0x0029CF 00:E9BF: F0 02     BEQ bra_E9C3
C - - - - - 0x0029D1 00:E9C1: 69 70     ADC #$70
bra_E9C3:
C - - - - - 0x0029D3 00:E9C3: 85 00     STA ram_0000
C - - - - - 0x0029D5 00:E9C5: 20 FC EA  JSR sub_EAFC
C - - - - - 0x0029D8 00:E9C8: 68        PLA
C - - - - - 0x0029D9 00:E9C9: AA        TAX
C - - - - - 0x0029DA 00:E9CA: CA        DEX
C - - - - - 0x0029DB 00:E9CB: 10 CC     BPL bra_E999_loop
C - - - - - 0x0029DD 00:E9CD: 60        RTS



loc_E9CE:
C D 3 - - - 0x0029DE 00:E9CE: B9 60 03  LDA ram_plr_counter_stage_bonus,Y
C - - - - - 0x0029E1 00:E9D1: 19 65 03  ORA ram_plr_counter_stage_bonus + $05,Y
C - - - - - 0x0029E4 00:E9D4: F0 64     BEQ bra_EA3A
C - - - - - 0x0029E6 00:E9D6: A5 58     LDA ram_game_mode
C - - - - - 0x0029E8 00:E9D8: 85 0E     STA ram_000E
C - - - - - 0x0029EA 00:E9DA: 98        TYA
bra_E9DB_loop:
C - - - - - 0x0029EB 00:E9DB: AA        TAX
C - - - - - 0x0029EC 00:E9DC: 48        PHA
C - - - - - 0x0029ED 00:E9DD: BD 60 03  LDA ram_plr_counter_stage_bonus,X
C - - - - - 0x0029F0 00:E9E0: F0 44     BEQ bra_EA26
C - - - - - 0x0029F2 00:E9E2: DE 60 03  DEC ram_plr_counter_stage_bonus,X
C - - - - - 0x0029F5 00:E9E5: B9 D9 E8  LDA tbl_E8D9,Y
C - - - - - 0x0029F8 00:E9E8: C0 01     CPY #$01
C - - - - - 0x0029FA 00:E9EA: D0 09     BNE bra_E9F5
C - - - - - 0x0029FC 00:E9EC: 20 8E EA  JSR sub_EA8E
C - - - - - 0x0029FF 00:E9EF: C0 05     CPY #$05
C - - - - - 0x002A01 00:E9F1: 90 02     BCC bra_E9F5
C - - - - - 0x002A03 00:E9F3: A9 08     LDA #$08
bra_E9F5:
C - - - - - 0x002A05 00:E9F5: E0 05     CPX #$05
C - - - - - 0x002A07 00:E9F7: 69 00     ADC #$00
C - - - - - 0x002A09 00:E9F9: 85 01     STA ram_0001
C - - - - - 0x002A0B 00:E9FB: AC A3 03  LDY ram_03A3
C - - - - - 0x002A0E 00:E9FE: B9 D4 E8  LDA tbl_E8D4,Y
C - - - - - 0x002A11 00:EA01: AE A3 03  LDX ram_03A3
C - - - - - 0x002A14 00:EA04: E0 04     CPX #$04
C - - - - - 0x002A16 00:EA06: F0 0C     BEQ bra_EA14
C - - - - - 0x002A18 00:EA08: E0 01     CPX #$01
C - - - - - 0x002A1A 00:EA0A: D0 0B     BNE bra_EA17
C - - - - - 0x002A1C 00:EA0C: 20 8E EA  JSR sub_EA8E
C - - - - - 0x002A1F 00:EA0F: B9 E8 E8  LDA tbl_E8E8,Y
C - - - - - 0x002A22 00:EA12: D0 03     BNE bra_EA17
bra_EA14:
C - - - - - 0x002A24 00:EA14: 20 97 EA  JSR sub_EA97_check_mountain_limit
bra_EA17:
C - - - - - 0x002A27 00:EA17: 20 4A EA  JSR sub_EA4A_get_tens
C - - - - - 0x002A2A 00:EA1A: 85 00     STA ram_0000
C - - - - - 0x002A2C 00:EA1C: 98        TYA
C - - - - - 0x002A2D 00:EA1D: 0A        ASL
C - - - - - 0x002A2E 00:EA1E: 0A        ASL
C - - - - - 0x002A2F 00:EA1F: 0A        ASL
C - - - - - 0x002A30 00:EA20: 0A        ASL
C - - - - - 0x002A31 00:EA21: 65 00     ADC ram_0000
C - - - - - 0x002A33 00:EA23: 20 4E C9  JSR sub_C94E
bra_EA26:
C - - - - - 0x002A36 00:EA26: AC A3 03  LDY ram_03A3
C - - - - - 0x002A39 00:EA29: 68        PLA
C - - - - - 0x002A3A 00:EA2A: 18        CLC
C - - - - - 0x002A3B 00:EA2B: 69 05     ADC #$05
C - - - - - 0x002A3D 00:EA2D: C6 0E     DEC ram_000E
C - - - - - 0x002A3F 00:EA2F: 10 AA     BPL bra_E9DB_loop
C - - - - - 0x002A41 00:EA31: A9 08     LDA #con_sfx_2_08
C - - - - - 0x002A43 00:EA33: 85 FE     STA ram_sfx_2
loc_EA35:
C D 3 - - - 0x002A45 00:EA35: A5 58     LDA ram_game_mode
C - - - - - 0x002A47 00:EA37: 4C E0 C8  JMP loc_C8E0
bra_EA3A:
C - - - - - 0x002A4A 00:EA3A: C0 04     CPY #$04
C - - - - - 0x002A4C 00:EA3C: 90 04     BCC bra_EA42
C - - - - - 0x002A4E 00:EA3E: A2 10     LDX #$10
C - - - - - 0x002A50 00:EA40: 86 45     STX ram_0045_timer
bra_EA42:
C - - - - - 0x002A52 00:EA42: EE A3 03  INC ram_03A3
C - - - - - 0x002A55 00:EA45: A9 40     LDA #$40
C - - - - - 0x002A57 00:EA47: 85 34     STA ram_0034_timer
bra_EA49_RTS:
C - - - - - 0x002A59 00:EA49: 60        RTS



sub_EA4A_get_tens:
; in
    ; A = hex number
; out
    ; Y = decimal tens
C - - - - - 0x002A5A 00:EA4A: A0 00     LDY #$00
bra_EA4C_loop:
C - - - - - 0x002A5C 00:EA4C: C9 0A     CMP #$0A
C - - - - - 0x002A5E 00:EA4E: 90 F9     BCC bra_EA49_RTS
C - - - - - 0x002A60 00:EA50: E9 0A     SBC #$0A
C - - - - - 0x002A62 00:EA52: C8        INY
C - - - - - 0x002A63 00:EA53: D0 F7     BNE bra_EA4C_loop    ; jmp



sub_EA55:
C - - - - - 0x002A65 00:EA55: 20 8E EA  JSR sub_EA8E
C - - - - - 0x002A68 00:EA58: B9 DE E8  LDA tbl_E8DE,Y
C - - - - - 0x002A6B 00:EA5B: 60        RTS



sub_EA5C:
C - - - - - 0x002A6C 00:EA5C: AC A3 03  LDY ram_03A3
C - - - - - 0x002A6F 00:EA5F: C0 01     CPY #$01
C - - - - - 0x002A71 00:EA61: F0 0B     BEQ bra_EA6E
C - - - - - 0x002A73 00:EA63: C0 04     CPY #$04
C - - - - - 0x002A75 00:EA65: F0 17     BEQ bra_EA7E
; if Y = 02 or 03
C - - - - - 0x002A77 00:EA67: B9 D6 E8  LDA tbl_E8D6,Y
C - - - - - 0x002A7A 00:EA6A: 9D 05 03  STA ram_ppu_buffer + $04,X
C - - - - - 0x002A7D 00:EA6D: 60        RTS
bra_EA6E:
C - - - - - 0x002A7E 00:EA6E: 20 55 EA  JSR sub_EA55
C - - - - - 0x002A81 00:EA71: 20 4A EA  JSR sub_EA4A_get_tens
C - - - - - 0x002A84 00:EA74: 9D 05 03  STA ram_ppu_buffer + $04,X
C - - - - - 0x002A87 00:EA77: 98        TYA
C - - - - - 0x002A88 00:EA78: F0 03     BEQ bra_EA7D_RTS
C - - - - - 0x002A8A 00:EA7A: 9D 04 03  STA ram_ppu_buffer + $03,X
bra_EA7D_RTS:
C - - - - - 0x002A8D 00:EA7D: 60        RTS
bra_EA7E:
C - - - - - 0x002A8E 00:EA7E: 20 97 EA  JSR sub_EA97_check_mountain_limit
C - - - - - 0x002A91 00:EA81: 20 4A EA  JSR sub_EA4A_get_tens
C - - - - - 0x002A94 00:EA84: 9D 06 03  STA ram_ppu_buffer + $05,X
C - - - - - 0x002A97 00:EA87: 98        TYA
C - - - - - 0x002A98 00:EA88: F0 03     BEQ bra_EA8D_RTS
C - - - - - 0x002A9A 00:EA8A: 9D 05 03  STA ram_ppu_buffer + $04,X
bra_EA8D_RTS:
C - - - - - 0x002A9D 00:EA8D: 60        RTS



sub_EA8E:
C - - - - - 0x002A9E 00:EA8E: A4 56     LDY ram_mountain_completed
C - - - - - 0x002AA0 00:EA90: C0 0A     CPY #$0A
C - - - - - 0x002AA2 00:EA92: 90 02     BCC bra_EA96_RTS
C - - - - - 0x002AA4 00:EA94: A0 09     LDY #$09
bra_EA96_RTS:
C - - - - - 0x002AA6 00:EA96: 60        RTS



sub_EA97_check_mountain_limit:
C - - - - - 0x002AA7 00:EA97: A4 59     LDY ram_mountain_current
C - - - - - 0x002AA9 00:EA99: C8        INY
C - - - - - 0x002AAA 00:EA9A: 98        TYA
C - - - - - 0x002AAB 00:EA9B: C9 21     CMP #$21
C - - - - - 0x002AAD 00:EA9D: 90 02     BCC bra_EAA1_RTS    ; if not overflow
; make mountain 0
C - - - - - 0x002AAF 00:EA9F: E9 20     SBC #$20
bra_EAA1_RTS:
C - - - - - 0x002AB1 00:EAA1: 60        RTS



tbl_EAA2_oam_lo:
- D 3 - - - 0x002AB2 00:EAA2: 00        .byte < (ram_spr_Y + $00)   ; 01 
- D 3 - - - 0x002AB3 00:EAA3: 24        .byte < (ram_spr_Y + $24)   ; 02 
- D 3 - - - 0x002AB4 00:EAA4: 60        .byte < (ram_spr_Y + $60)   ; 03 
- D 3 - - - 0x002AB5 00:EAA5: 40        .byte < (ram_spr_Y + $40)   ; 04 
- D 3 - - - 0x002AB6 00:EAA6: 70        .byte < (ram_spr_Y + $70)   ; 05 
- D 3 - - - 0x002AB7 00:EAA7: 88        .byte < (ram_spr_Y + $88)   ; 06 
- - - - - - 0x002AB8 00:EAA8: A0        .byte < (ram_spr_Y + $A0)   ; 07 
- D 3 - - - 0x002AB9 00:EAA9: 80        .byte < (ram_spr_Y + $80)   ; 08 
- D 3 - - - 0x002ABA 00:EAAA: 98        .byte < (ram_spr_Y + $98)   ; 09 
- - - - - - 0x002ABB 00:EAAB: B0        .byte < (ram_spr_Y + $B0)   ; 0A 
- D 3 - - - 0x002ABC 00:EAAC: 1C        .byte < (ram_spr_Y + $1C)   ; 0B 
- D 3 - - - 0x002ABD 00:EAAD: 20        .byte < (ram_spr_Y + $20)   ; 0C 
- D 3 - - - 0x002ABE 00:EAAE: E0        .byte < (ram_spr_Y + $E0)   ; 0D 
- D 3 - - - 0x002ABF 00:EAAF: 40        .byte < (ram_spr_Y + $40)   ; 0E 
- D 3 - - - 0x002AC0 00:EAB0: 60        .byte < (ram_spr_Y + $60)   ; 0F 
- D 3 - - - 0x002AC1 00:EAB1: 70        .byte < (ram_spr_Y + $70)   ; 10 
- D 3 - - - 0x002AC2 00:EAB2: 80        .byte < (ram_spr_Y + $80)   ; 11 
- D 3 - - - 0x002AC3 00:EAB3: 90        .byte < (ram_spr_Y + $90)   ; 12 
- D 3 - - - 0x002AC4 00:EAB4: A0        .byte < (ram_spr_Y + $A0)   ; 13 
- D 3 - - - 0x002AC5 00:EAB5: B0        .byte < (ram_spr_Y + $B0)   ; 14 
- D 3 - - - 0x002AC6 00:EAB6: 5C        .byte < (ram_spr_Y + $5C)   ; 15 
- D 3 - - - 0x002AC7 00:EAB7: 6C        .byte < (ram_spr_Y + $6C)   ; 16 
- - - - - - 0x002AC8 00:EAB8: 7C        .byte < (ram_spr_Y + $7C)   ; 17 
- D 3 - - - 0x002AC9 00:EAB9: 40        .byte < (ram_spr_Y + $40)   ; 18 
- D 3 - - - 0x002ACA 00:EABA: 48        .byte < (ram_spr_Y + $48)   ; 19 
- D 3 - - - 0x002ACB 00:EABB: 50        .byte < (ram_spr_Y + $50)   ; 1A 
- D 3 - - - 0x002ACC 00:EABC: 1C        .byte < (ram_spr_Y + $1C)   ; 1B 
- D 3 - - - 0x002ACD 00:EABD: 20        .byte < (ram_spr_Y + $20)   ; 1C 
- D 3 - - - 0x002ACE 00:EABE: 00        .byte < (ram_spr_Y + $00)   ; 1D 
- D 3 - - - 0x002ACF 00:EABF: 20        .byte < (ram_spr_Y + $20)   ; 1E 



tbl_EAC0_attributes:
- D 3 - - - 0x002AD0 00:EAC0: 00        .byte $00   ; 01 
- D 3 - - - 0x002AD1 00:EAC1: 55        .byte $55   ; 02 
- D 3 - - - 0x002AD2 00:EAC2: 55        .byte $55   ; 03 
- D 3 - - - 0x002AD3 00:EAC3: 55        .byte $55   ; 04 
- D 3 - - - 0x002AD4 00:EAC4: 00        .byte $00   ; 05 
- D 3 - - - 0x002AD5 00:EAC5: 00        .byte $00   ; 06 
- - - - - - 0x002AD6 00:EAC6: 00        .byte $00   ; 07 
- D 3 - - - 0x002AD7 00:EAC7: AA        .byte $AA   ; 08 
- D 3 - - - 0x002AD8 00:EAC8: AA        .byte $AA   ; 09 
- - - - - - 0x002AD9 00:EAC9: AA        .byte $AA   ; 0A 
- D 3 - - - 0x002ADA 00:EACA: 00        .byte $00   ; 0B 
- D 3 - - - 0x002ADB 00:EACB: 55        .byte $55   ; 0C 
- D 3 - - - 0x002ADC 00:EACC: FF        .byte $FF   ; 0D 
- D 3 - - - 0x002ADD 00:EACD: AA        .byte $AA   ; 0E 
- D 3 - - - 0x002ADE 00:EACE: FF        .byte $FF   ; 0F 
- D 3 - - - 0x002ADF 00:EACF: FF        .byte $FF   ; 10 
- D 3 - - - 0x002AE0 00:EAD0: FF        .byte $FF   ; 11 
- D 3 - - - 0x002AE1 00:EAD1: FF        .byte $FF   ; 12 
- D 3 - - - 0x002AE2 00:EAD2: FF        .byte $FF   ; 13 
- D 3 - - - 0x002AE3 00:EAD3: FF        .byte $FF   ; 14 
- D 3 - - - 0x002AE4 00:EAD4: 55        .byte $55   ; 15 
- D 3 - - - 0x002AE5 00:EAD5: 55        .byte $55   ; 16 
- - - - - - 0x002AE6 00:EAD6: 55        .byte $55   ; 17 
- D 3 - - - 0x002AE7 00:EAD7: AA        .byte $AA   ; 18 
- D 3 - - - 0x002AE8 00:EAD8: AA        .byte $AA   ; 19 
- D 3 - - - 0x002AE9 00:EAD9: AA        .byte $AA   ; 1A 
- D 3 - - - 0x002AEA 00:EADA: AA        .byte $AA   ; 1B 
- D 3 - - - 0x002AEB 00:EADB: AA        .byte $AA   ; 1C 
- D 3 - - - 0x002AEC 00:EADC: 00        .byte $00   ; 1D 
- D 3 - - - 0x002AED 00:EADD: 55        .byte $55   ; 1E 



tbl_EADE:
- D 3 - - - 0x002AEE 00:EADE: 32        .byte $32   ; 01 
- D 3 - - - 0x002AEF 00:EADF: 32        .byte $32   ; 02 
- D 3 - - - 0x002AF0 00:EAE0: 22        .byte $22   ; 03 
- D 3 - - - 0x002AF1 00:EAE1: 42        .byte $42   ; 04 
- D 3 - - - 0x002AF2 00:EAE2: 22        .byte $22   ; 05 
- D 3 - - - 0x002AF3 00:EAE3: 22        .byte $22   ; 06 
- - - - - - 0x002AF4 00:EAE4: 22        .byte $22   ; 07 
- D 3 - - - 0x002AF5 00:EAE5: 21        .byte $21   ; 08 
- D 3 - - - 0x002AF6 00:EAE6: 21        .byte $21   ; 09 
- - - - - - 0x002AF7 00:EAE7: 21        .byte $21   ; 0A 
- D 3 - - - 0x002AF8 00:EAE8: 11        .byte $11   ; 0B 
- D 3 - - - 0x002AF9 00:EAE9: 11        .byte $11   ; 0C 
- D 3 - - - 0x002AFA 00:EAEA: 22        .byte $22   ; 0D 
- D 3 - - - 0x002AFB 00:EAEB: 24        .byte $24   ; 0E 
- D 3 - - - 0x002AFC 00:EAEC: 22        .byte $22   ; 0F 
- D 3 - - - 0x002AFD 00:EAED: 22        .byte $22   ; 10 
- D 3 - - - 0x002AFE 00:EAEE: 22        .byte $22   ; 11 
- D 3 - - - 0x002AFF 00:EAEF: 22        .byte $22   ; 12 
- D 3 - - - 0x002B00 00:EAF0: 22        .byte $22   ; 13 
- D 3 - - - 0x002B01 00:EAF1: 22        .byte $22   ; 14 
- D 3 - - - 0x002B02 00:EAF2: 22        .byte $22   ; 15 
- D 3 - - - 0x002B03 00:EAF3: 22        .byte $22   ; 16 
- - - - - - 0x002B04 00:EAF4: 22        .byte $22   ; 17 
- D 3 - - - 0x002B05 00:EAF5: 21        .byte $21   ; 18 
- D 3 - - - 0x002B06 00:EAF6: 21        .byte $21   ; 19 
- D 3 - - - 0x002B07 00:EAF7: 21        .byte $21   ; 1A 
- D 3 - - - 0x002B08 00:EAF8: 11        .byte $11   ; 1B 
- D 3 - - - 0x002B09 00:EAF9: 11        .byte $11   ; 1C 
- D 3 - - - 0x002B0A 00:EAFA: 24        .byte $24   ; 1D 
- D 3 - - - 0x002B0B 00:EAFB: 24        .byte $24   ; 1E 



sub_EAFC:
loc_EAFC:
C D 3 - - - 0x002B0C 00:EAFC: 84 09     STY ram_0009
C - - - - - 0x002B0E 00:EAFE: B9 A1 EA  LDA tbl_EAA2_oam_lo - $01,Y
C - - - - - 0x002B11 00:EB01: 85 04     STA ram_0004
C - - - - - 0x002B13 00:EB03: B9 BF EA  LDA tbl_EAC0_attributes - $01,Y
C - - - - - 0x002B16 00:EB06: 85 0A     STA ram_000A
C - - - - - 0x002B18 00:EB08: 85 0B     STA ram_000B
C - - - - - 0x002B1A 00:EB0A: 85 0C     STA ram_000C
C - - - - - 0x002B1C 00:EB0C: 85 0D     STA ram_000D
C - - - - - 0x002B1E 00:EB0E: B9 DD EA  LDA tbl_EADE - $01,Y
C - - - - - 0x002B21 00:EB11: 4C 3D C7  JMP loc_C73D



tbl_EB14:
- - - - - - 0x002B24 00:EB14: 06        .byte $06   ; 01 
- - - - - - 0x002B25 00:EB15: 06        .byte $06   ; 02 
- D 3 - - - 0x002B26 00:EB16: 04        .byte $04   ; 03 
- D 3 - - - 0x002B27 00:EB17: 08        .byte $08   ; 04 
- D 3 - - - 0x002B28 00:EB18: 04        .byte $04   ; 05 
- D 3 - - - 0x002B29 00:EB19: 04        .byte $04   ; 06 
- - - - - - 0x002B2A 00:EB1A: 04        .byte $04   ; 07 
- D 3 - - - 0x002B2B 00:EB1B: 02        .byte $02   ; 08 
- D 3 - - - 0x002B2C 00:EB1C: 02        .byte $02   ; 09 
- - - - - - 0x002B2D 00:EB1D: 02        .byte $02   ; 0A 
- - - - - - 0x002B2E 00:EB1E: 01        .byte $01   ; 0B 
- - - - - - 0x002B2F 00:EB1F: 01        .byte $01   ; 0C 
- - - - - - 0x002B30 00:EB20: 04        .byte $04   ; 0D 
- - - - - - 0x002B31 00:EB21: 06        .byte $06   ; 0E 
- D 3 - - - 0x002B32 00:EB22: 04        .byte $04   ; 0F 
- D 3 - - - 0x002B33 00:EB23: 04        .byte $04   ; 10 
- D 3 - - - 0x002B34 00:EB24: 04        .byte $04   ; 11 
- D 3 - - - 0x002B35 00:EB25: 04        .byte $04   ; 12 
- - - - - - 0x002B36 00:EB26: 04        .byte $04   ; 13 
- - - - - - 0x002B37 00:EB27: 04        .byte $04   ; 14 
- - - - - - 0x002B38 00:EB28: 04        .byte $04   ; 15 
- - - - - - 0x002B39 00:EB29: 04        .byte $04   ; 16 
- - - - - - 0x002B3A 00:EB2A: 04        .byte $04   ; 17 
- D 3 - - - 0x002B3B 00:EB2B: 02        .byte $02   ; 18 
- D 3 - - - 0x002B3C 00:EB2C: 02        .byte $02   ; 19 
- D 3 - - - 0x002B3D 00:EB2D: 02        .byte $02   ; 1A 



sub_EB2E:
C - - - - - 0x002B3E 00:EB2E: A2 0A     LDX #$0A
bra_EB30_loop:
C - - - - - 0x002B40 00:EB30: BD E8 03  LDA ram_03E8_obj,X ; 03E8 03E9 03EA 03EB 03EC 03ED 03EE 03EF 03F0 03F1 03F2 
C - - - - - 0x002B43 00:EB33: F0 33     BEQ bra_EB68
C - - - - - 0x002B45 00:EB35: 48        PHA
C - - - - - 0x002B46 00:EB36: 29 1F     AND #$1F
C - - - - - 0x002B48 00:EB38: F0 28     BEQ bra_EB62
C - - - - - 0x002B4A 00:EB3A: A8        TAY
C - - - - - 0x002B4B 00:EB3B: 68        PLA
C - - - - - 0x002B4C 00:EB3C: 30 2E     BMI bra_EB6C
C - - - - - 0x002B4E 00:EB3E: 29 40     AND #$40
C - - - - - 0x002B50 00:EB40: 85 0E     STA ram_000E
C - - - - - 0x002B52 00:EB42: B5 9C     LDA ram_009C_obj_pos_X,X ; 009C 009D 009E 009F 00A0 00A1 00A2 00A4 00A5 00A6 
C - - - - - 0x002B54 00:EB44: 85 00     STA ram_0000
C - - - - - 0x002B56 00:EB46: B5 A7     LDA ram_00A7_obj_pos_Y,X ; 00A7 00A8 00A9 00AA 00AB 00AC 00AD 00AF 00B0 00B1 
C - - - - - 0x002B58 00:EB48: 85 01     STA ram_0001
C - - - - - 0x002B5A 00:EB4A: BD DD 03  LDA ram_03DD_obj,X ; 03DD 03DE 03DF 03E0 03E1 03E2 03E3 03E5 03E6 03E7 
C - - - - - 0x002B5D 00:EB4D: 85 02     STA ram_0002
C - - - - - 0x002B5F 00:EB4F: B5 BD     LDA ram_00BD_obj,X ; 00BD 00BE 00BF 00C0 00C1 00C2 00C3 00C5 00C6 00C7 
C - - - - - 0x002B61 00:EB51: 10 03     BPL bra_EB56
C - - - - - 0x002B63 00:EB53: A9 00     LDA #$00
C - - - - - 0x002B65 00:EB55: 2C        .byte $2C   ; BIT opcode
bra_EB56:
C - - - - - 0x002B66 00:EB56: A9 01     LDA #$01
C - - - - - 0x002B68 00:EB58: 85 0F     STA ram_000F
C - - - - - 0x002B6A 00:EB5A: 8A        TXA
C - - - - - 0x002B6B 00:EB5B: 48        PHA
C - - - - - 0x002B6C 00:EB5C: 20 FC EA  JSR sub_EAFC
loc_EB5F:
C D 3 - - - 0x002B6F 00:EB5F: 68        PLA
C - - - - - 0x002B70 00:EB60: AA        TAX
C - - - - - 0x002B71 00:EB61: 24        .byte $24   ; BIT opcode
bra_EB62:
C - - - - - 0x002B72 00:EB62: 68        PLA
C - - - - - 0x002B73 00:EB63: A9 00     LDA #$00
C - - - - - 0x002B75 00:EB65: 9D E8 03  STA ram_03E8_obj,X ; 03E8 03E9 03EA 03EB 03EC 03ED 03EE 03F0 03F1 03F2 
bra_EB68:
C - - - - - 0x002B78 00:EB68: CA        DEX
C - - - - - 0x002B79 00:EB69: 10 C5     BPL bra_EB30_loop
bra_EB6B_RTS:
C - - - - - 0x002B7B 00:EB6B: 60        RTS
bra_EB6C:
; triggers when a seal puts ice to cover a hole
C - - - - - 0x002B7C 00:EB6C: A9 00     LDA #$00
C - - - - - 0x002B7E 00:EB6E: 95 91     STA ram_0091_obj,X ; 0091 0092 0093 0094 0095 0096 0097 0099 009A 
C - - - - - 0x002B80 00:EB70: 8A        TXA
C - - - - - 0x002B81 00:EB71: 48        PHA
C - - - - - 0x002B82 00:EB72: B9 13 EB  LDA tbl_EB14 - $01,Y
C - - - - - 0x002B85 00:EB75: AA        TAX
C - - - - - 0x002B86 00:EB76: B9 A1 EA  LDA tbl_EAA2_oam_lo - $01,Y
C - - - - - 0x002B89 00:EB79: 20 21 C8  JSR sub_C821_hide_sprites_starting_from_A
C - - - - - 0x002B8C 00:EB7C: 4C 5F EB  JMP loc_EB5F



sub_EB7F:
C - - - - - 0x002B8F 00:EB7F: A2 00     LDX #$00
C - - - - - 0x002B91 00:EB81: 20 8A EB  JSR sub_EB8A
C - - - - - 0x002B94 00:EB84: A5 58     LDA ram_game_mode
C - - - - - 0x002B96 00:EB86: F0 E3     BEQ bra_EB6B_RTS    ; if 1p
; if 2p
C - - - - - 0x002B98 00:EB88: A2 01     LDX #$01
sub_EB8A:
C - - - - - 0x002B9A 00:EB8A: B5 5A     LDA ram_005A_plr,X
C - - - - - 0x002B9C 00:EB8C: D0 DD     BNE bra_EB6B_RTS
C - - - - - 0x002B9E 00:EB8E: B5 20     LDA ram_plr_lives,X
C - - - - - 0x002BA0 00:EB90: 30 D9     BMI bra_EB6B_RTS
C - - - - - 0x002BA2 00:EB92: 8A        TXA
C - - - - - 0x002BA3 00:EB93: 48        PHA
C - - - - - 0x002BA4 00:EB94: 0A        ASL
C - - - - - 0x002BA5 00:EB95: 0A        ASL
C - - - - - 0x002BA6 00:EB96: A8        TAY
C - - - - - 0x002BA7 00:EB97: A9 F8     LDA #$F8
C - - - - - 0x002BA9 00:EB99: 99 1C 02  STA ram_spr_Y + $1C,Y
C - - - - - 0x002BAC 00:EB9C: BD A2 EA  LDA tbl_EAA2_oam_lo,X
C - - - - - 0x002BAF 00:EB9F: A2 06     LDX #$06
C - - - - - 0x002BB1 00:EBA1: 20 21 C8  JSR sub_C821_hide_sprites_starting_from_A
C - - - - - 0x002BB4 00:EBA4: 68        PLA
C - - - - - 0x002BB5 00:EBA5: AA        TAX
C - - - - - 0x002BB6 00:EBA6: B5 3F     LDA ram_003F_plr_timer,X
C - - - - - 0x002BB8 00:EBA8: D0 C1     BNE bra_EB6B_RTS
C - - - - - 0x002BBA 00:EBAA: 20 EB CF  JSR sub_CFEB
C - - - - - 0x002BBD 00:EBAD: 95 E0     STA ram_00E0_plr,X
C - - - - - 0x002BBF 00:EBAF: 95 80     STA ram_0080_plr,X
C - - - - - 0x002BC1 00:EBB1: 95 86     STA ram_0086_plr,X
C - - - - - 0x002BC3 00:EBB3: A9 00     LDA #$00
C - - - - - 0x002BC5 00:EBB5: 95 2F     STA ram_002F_plr,X
C - - - - - 0x002BC7 00:EBB7: A5 90     LDA ram_0090
C - - - - - 0x002BC9 00:EBB9: 38        SEC
C - - - - - 0x002BCA 00:EBBA: E9 03     SBC #$03
C - - - - - 0x002BCC 00:EBBC: 85 00     STA ram_0000
C - - - - - 0x002BCE 00:EBBE: BD 82 03  LDA ram_0382_obj,X
C - - - - - 0x002BD1 00:EBC1: C5 90     CMP ram_0090
C - - - - - 0x002BD3 00:EBC3: B0 09     BCS bra_EBCE
C - - - - - 0x002BD5 00:EBC5: C5 00     CMP ram_0000
C - - - - - 0x002BD7 00:EBC7: B0 0A     BCS bra_EBD3
C - - - - - 0x002BD9 00:EBC9: A5 00     LDA ram_0000
C - - - - - 0x002BDB 00:EBCB: 4C D3 EB  JMP loc_EBD3
bra_EBCE:
- - - - - - 0x002BDE 00:EBCE: A5 00     LDA ram_0000
- - - - - - 0x002BE0 00:EBD0: 18        CLC
- - - - - - 0x002BE1 00:EBD1: 69 02     ADC #$02
loc_EBD3:
bra_EBD3:
bra_EBD3_loop:
C D 3 - - - 0x002BE3 00:EBD3: CD 86 07  CMP ram_0786
C - - - - - 0x002BE6 00:EBD6: F0 05     BEQ bra_EBDD
C - - - - - 0x002BE8 00:EBD8: CD 87 07  CMP ram_0787
C - - - - - 0x002BEB 00:EBDB: D0 0C     BNE bra_EBE9
bra_EBDD:
C - - - - - 0x002BED 00:EBDD: 38        SEC
C - - - - - 0x002BEE 00:EBDE: E9 01     SBC #$01
C - - - - - 0x002BF0 00:EBE0: C5 00     CMP ram_0000
C - - - - - 0x002BF2 00:EBE2: B0 EF     BCS bra_EBD3_loop
C - - - - - 0x002BF4 00:EBE4: 69 03     ADC #$03
C - - - - - 0x002BF6 00:EBE6: 4C D3 EB  JMP loc_EBD3
bra_EBE9:
C - - - - - 0x002BF9 00:EBE9: 95 5A     STA ram_005A_plr,X
C - - - - - 0x002BFB 00:EBEB: 20 D5 ED  JSR sub_EDD5
C - - - - - 0x002BFE 00:EBEE: 38        SEC
C - - - - - 0x002BFF 00:EBEF: E9 08     SBC #$08
C - - - - - 0x002C01 00:EBF1: 95 66     STA ram_plr_pos_Y,X
C - - - - - 0x002C03 00:EBF3: B5 5A     LDA ram_005A_plr,X
C - - - - - 0x002C05 00:EBF5: 85 0F     STA ram_000F
C - - - - - 0x002C07 00:EBF7: B5 64     LDA ram_plr_pos_X,X
C - - - - - 0x002C09 00:EBF9: 18        CLC
C - - - - - 0x002C0A 00:EBFA: 69 08     ADC #$08
C - - - - - 0x002C0C 00:EBFC: 85 0E     STA ram_000E
bra_EBFE_loop:
C - - - - - 0x002C0E 00:EBFE: 20 B9 DE  JSR sub_DEB9
C - - - - - 0x002C11 00:EC01: 30 04     BMI bra_EC07
C - - - - - 0x002C13 00:EC03: C9 03     CMP #$03
C - - - - - 0x002C15 00:EC05: D0 0B     BNE bra_EC12
bra_EC07:
C - - - - - 0x002C17 00:EC07: A5 0E     LDA ram_000E
C - - - - - 0x002C19 00:EC09: 18        CLC
C - - - - - 0x002C1A 00:EC0A: 69 08     ADC #$08
C - - - - - 0x002C1C 00:EC0C: 85 0E     STA ram_000E
C - - - - - 0x002C1E 00:EC0E: C9 E0     CMP #$E0
C - - - - - 0x002C20 00:EC10: 90 EC     BCC bra_EBFE_loop
bra_EC12:
C - - - - - 0x002C22 00:EC12: A5 0E     LDA ram_000E
C - - - - - 0x002C24 00:EC14: 38        SEC
C - - - - - 0x002C25 00:EC15: E9 08     SBC #$08
C - - - - - 0x002C27 00:EC17: 95 64     STA ram_plr_pos_X,X
C - - - - - 0x002C29 00:EC19: A9 01     LDA #$01
C - - - - - 0x002C2B 00:EC1B: 95 2D     STA ram_002D_plr,X
C - - - - - 0x002C2D 00:EC1D: 20 B8 D0  JSR sub_D0B8
C - - - - - 0x002C30 00:EC20: 4C FD D8  JMP loc_D8FD_reset_bear_spawn_timer



sub_EC23:
C - - - - - 0x002C33 00:EC23: A2 00     LDX #$00
C - - - - - 0x002C35 00:EC25: 20 2A EC  JSR sub_EC2A
C - - - - - 0x002C38 00:EC28: A2 01     LDX #$01
sub_EC2A:
C - - - - - 0x002C3A 00:EC2A: B5 2D     LDA ram_002D_plr,X
C - - - - - 0x002C3C 00:EC2C: F0 22     BEQ bra_EC50_RTS
C - - - - - 0x002C3E 00:EC2E: B5 20     LDA ram_plr_lives,X
C - - - - - 0x002C40 00:EC30: 30 1E     BMI bra_EC50_RTS
C - - - - - 0x002C42 00:EC32: 8A        TXA
C - - - - - 0x002C43 00:EC33: 0A        ASL
C - - - - - 0x002C44 00:EC34: A8        TAY
C - - - - - 0x002C45 00:EC35: B9 14 00  LDA ram_btn_hold,Y
C - - - - - 0x002C48 00:EC38: 15 70     ORA ram_0070_plr,X
C - - - - - 0x002C4A 00:EC3A: 29 CF     AND #con_btns_SS ^ $FF
C - - - - - 0x002C4C 00:EC3C: F0 04     BEQ bra_EC42
C - - - - - 0x002C4E 00:EC3E: A9 00     LDA #$00
C - - - - - 0x002C50 00:EC40: 95 2D     STA ram_002D_plr,X
bra_EC42:
C - - - - - 0x002C52 00:EC42: A5 50     LDA ram_frm_cnt
C - - - - - 0x002C54 00:EC44: 29 01     AND #$01
C - - - - - 0x002C56 00:EC46: F0 08     BEQ bra_EC50_RTS
C - - - - - 0x002C58 00:EC48: BD A2 EA  LDA tbl_EAA2_oam_lo,X
C - - - - - 0x002C5B 00:EC4B: A2 06     LDX #$06
C - - - - - 0x002C5D 00:EC4D: 4C 21 C8  JMP loc_C821_hide_sprites_starting_from_A
bra_EC50_RTS:
C - - - - - 0x002C60 00:EC50: 60        RTS



sub_EC51:
C - - - - - 0x002C61 00:EC51: A2 07     LDX #$07
bra_EC53_loop:
C - - - - - 0x002C63 00:EC53: B5 91     LDA ram_0091_obj,X ; 0091 0092 0093 0094 0095 0096 0097 0098 
C - - - - - 0x002C65 00:EC55: F0 1D     BEQ bra_EC74
C - - - - - 0x002C67 00:EC57: B5 A7     LDA ram_00A7_obj_pos_Y,X
C - - - - - 0x002C69 00:EC59: E0 00     CPX #$00
C - - - - - 0x002C6B 00:EC5B: D0 06     BNE bra_EC63
C - - - - - 0x002C6D 00:EC5D: C9 F0     CMP #$F0
C - - - - - 0x002C6F 00:EC5F: 90 02     BCC bra_EC63
C - - - - - 0x002C71 00:EC61: A9 EC     LDA #$EC
bra_EC63:
C - - - - - 0x002C73 00:EC63: 18        CLC
C - - - - - 0x002C74 00:EC64: 69 04     ADC #$04
C - - - - - 0x002C76 00:EC66: 95 A7     STA ram_00A7_obj_pos_Y,X
C - - - - - 0x002C78 00:EC68: E0 00     CPX #$00
C - - - - - 0x002C7A 00:EC6A: F0 08     BEQ bra_EC74
C - - - - - 0x002C7C 00:EC6C: C9 F8     CMP #$F8
C - - - - - 0x002C7E 00:EC6E: 90 04     BCC bra_EC74
C - - - - - 0x002C80 00:EC70: A9 00     LDA #$00
C - - - - - 0x002C82 00:EC72: 95 91     STA ram_0091_obj,X ; 0093 0094 0095 0096 0097 
bra_EC74:
C - - - - - 0x002C84 00:EC74: E0 02     CPX #$02
C - - - - - 0x002C86 00:EC76: B0 0A     BCS bra_EC82
C - - - - - 0x002C88 00:EC78: B5 5A     LDA ram_005A_plr,X
C - - - - - 0x002C8A 00:EC7A: F0 06     BEQ bra_EC82
C - - - - - 0x002C8C 00:EC7C: B5 66     LDA ram_plr_pos_Y,X
C - - - - - 0x002C8E 00:EC7E: 69 04     ADC #$04
C - - - - - 0x002C90 00:EC80: 95 66     STA ram_plr_pos_Y,X
bra_EC82:
C - - - - - 0x002C92 00:EC82: E0 03     CPX #$03
C - - - - - 0x002C94 00:EC84: B0 0C     BCS bra_EC92
C - - - - - 0x002C96 00:EC86: B5 AF     LDA ram_00A7_obj_pos_Y + $08,X ; 00AF 00B0 00B1 
C - - - - - 0x002C98 00:EC88: F0 08     BEQ bra_EC92
C - - - - - 0x002C9A 00:EC8A: C9 F0     CMP #$F0
C - - - - - 0x002C9C 00:EC8C: B0 04     BCS bra_EC92
C - - - - - 0x002C9E 00:EC8E: 69 04     ADC #$04
C - - - - - 0x002CA0 00:EC90: 95 AF     STA ram_00A7_obj_pos_Y + $08,X ; 00AF 00B0 
bra_EC92:
C - - - - - 0x002CA2 00:EC92: CA        DEX
C - - - - - 0x002CA3 00:EC93: 10 BE     BPL bra_EC53_loop
C - - - - - 0x002CA5 00:EC95: A2 E4     LDX #$E4
C - - - - - 0x002CA7 00:EC97: A5 55     LDA ram_0055
C - - - - - 0x002CA9 00:EC99: C9 02     CMP #$02
C - - - - - 0x002CAB 00:EC9B: D0 02     BNE bra_EC9F
C - - - - - 0x002CAD 00:EC9D: A2 FC     LDX #$FC
bra_EC9F:
bra_EC9F_loop:
C - - - - - 0x002CAF 00:EC9F: BD 00 02  LDA ram_spr_Y,X
C - - - - - 0x002CB2 00:ECA2: C9 F2     CMP #$F2
C - - - - - 0x002CB4 00:ECA4: 90 02     BCC bra_ECA8
C - - - - - 0x002CB6 00:ECA6: A9 F4     LDA #$F4
bra_ECA8:
C - - - - - 0x002CB8 00:ECA8: 18        CLC
C - - - - - 0x002CB9 00:ECA9: 69 04     ADC #$04
C - - - - - 0x002CBB 00:ECAB: 9D 00 02  STA ram_spr_Y,X
C - - - - - 0x002CBE 00:ECAE: CA        DEX
C - - - - - 0x002CBF 00:ECAF: CA        DEX
C - - - - - 0x002CC0 00:ECB0: CA        DEX
C - - - - - 0x002CC1 00:ECB1: CA        DEX
C - - - - - 0x002CC2 00:ECB2: E0 FC     CPX #$FC
C - - - - - 0x002CC4 00:ECB4: D0 E9     BNE bra_EC9F_loop
C - - - - - 0x002CC6 00:ECB6: 60        RTS



tbl_ECB7:
; 00 
- D 3 - - - 0x002CC7 00:ECB7: 20        .byte $20   ; 00 
- D 3 - - - 0x002CC8 00:ECB8: F0        .byte $F0   ; 01 
- D 3 - - - 0x002CC9 00:ECB9: 30        .byte $30   ; 02 
- D 3 - - - 0x002CCA 00:ECBA: 1D        .byte $1D   ; 03 
; 01 
- D 3 - - - 0x002CCB 00:ECBB: C0        .byte $C0   ; 00 
- D 3 - - - 0x002CCC 00:ECBC: F0        .byte $F0   ; 01 
- D 3 - - - 0x002CCD 00:ECBD: 30        .byte $30   ; 02 
- D 3 - - - 0x002CCE 00:ECBE: 1E        .byte $1E   ; 03 



sub_ECBF:
C - - - - - 0x002CCF 00:ECBF: A6 58     LDX ram_game_mode
bra_ECC1_loop:
C - - - - - 0x002CD1 00:ECC1: B5 20     LDA ram_plr_lives,X
C - - - - - 0x002CD3 00:ECC3: 30 02     BMI bra_ECC7
C - - - - - 0x002CD5 00:ECC5: A9 FB     LDA #$FB
bra_ECC7:
C - - - - - 0x002CD7 00:ECC7: 49 FF     EOR #$FF
C - - - - - 0x002CD9 00:ECC9: 20 F0 EC  JSR sub_ECF0
C - - - - - 0x002CDC 00:ECCC: CA        DEX
C - - - - - 0x002CDD 00:ECCD: 10 F2     BPL bra_ECC1_loop
C - - - - - 0x002CDF 00:ECCF: A9 FC     LDA #$FC
C - - - - - 0x002CE1 00:ECD1: C5 20     CMP ram_plr_lives
C - - - - - 0x002CE3 00:ECD3: D0 33     BNE bra_ED08_RTS
C - - - - - 0x002CE5 00:ECD5: A4 58     LDY ram_game_mode
C - - - - - 0x002CE7 00:ECD7: F0 04     BEQ bra_ECDD    ; if 1p
; if 2p
C - - - - - 0x002CE9 00:ECD9: C5 21     CMP ram_plr_lives + $01
C - - - - - 0x002CEB 00:ECDB: D0 2B     BNE bra_ED08_RTS
bra_ECDD:
C - - - - - 0x002CED 00:ECDD: A4 43     LDY ram_0043_timer
C - - - - - 0x002CEF 00:ECDF: F0 27     BEQ bra_ED08_RTS
C - - - - - 0x002CF1 00:ECE1: 88        DEY
C - - - - - 0x002CF2 00:ECE2: D0 24     BNE bra_ED08_RTS
C - - - - - 0x002CF4 00:ECE4: A9 80     LDA #$80
C - - - - - 0x002CF6 00:ECE6: 85 20     STA ram_plr_lives
C - - - - - 0x002CF8 00:ECE8: 0A        ASL ; 00
C - - - - - 0x002CF9 00:ECE9: 85 1E     STA ram_001E
C - - - - - 0x002CFB 00:ECEB: A9 04     LDA #$04
C - - - - - 0x002CFD 00:ECED: 4C F5 D4  JMP loc_D4F5



sub_ECF0:
C - - - - - 0x002D00 00:ECF0: 20 28 C7  JSR sub_C728_jump_to_pointers_after_jsr
- D 3 - I - 0x002D03 00:ECF3: 10 ED     .word ofs_003_ED10_00
- D 3 - I - 0x002D05 00:ECF5: FD EC     .word ofs_003_ECFD_01
- D 3 - I - 0x002D07 00:ECF7: 09 ED     .word ofs_003_ED09_02
- D 3 - I - 0x002D09 00:ECF9: 08 ED     .word ofs_003_ED08_03_RTS
- D 3 - I - 0x002D0B 00:ECFB: 70 ED     .word ofs_003_ED70_04



ofs_003_ECFD_01:
C - - J - - 0x002D0D 00:ECFD: 20 51 ED  JSR sub_ED51
C - - - - - 0x002D10 00:ED00: B0 06     BCS bra_ED08_RTS
C - - - - - 0x002D12 00:ED02: A9 10     LDA #$10
C - - - - - 0x002D14 00:ED04: 85 43     STA ram_0043_timer
C - - - - - 0x002D16 00:ED06: D6 20     DEC ram_plr_lives,X
bra_ED08_RTS:
ofs_003_ED08_03_RTS:
C - - - - - 0x002D18 00:ED08: 60        RTS



ofs_003_ED09_02:
C - - J - - 0x002D19 00:ED09: A4 43     LDY ram_0043_timer
C - - - - - 0x002D1B 00:ED0B: 88        DEY
C - - - - - 0x002D1C 00:ED0C: D0 FA     BNE bra_ED08_RTS
C - - - - - 0x002D1E 00:ED0E: F0 04     BEQ bra_ED14    ; jmp
ofs_003_ED10_00:
C - - J - - 0x002D20 00:ED10: A9 01     LDA #con_sfx_1_plr_game_over
C - - - - - 0x002D22 00:ED12: 85 FC     STA ram_sfx_1
bra_ED14:
C - - - - - 0x002D24 00:ED14: D6 20     DEC ram_plr_lives,X
C - - - - - 0x002D26 00:ED16: 20 63 ED  JSR sub_ED63_TXA_ASL_ASL_TAY
bra_ED19_loop:
C - - - - - 0x002D29 00:ED19: B9 B7 EC  LDA tbl_ECB7,Y
C - - - - - 0x002D2C 00:ED1C: 99 58 03  STA ram_0358,Y
C - - - - - 0x002D2F 00:ED1F: C8        INY
C - - - - - 0x002D30 00:ED20: 98        TYA
C - - - - - 0x002D31 00:ED21: 29 03     AND #$03
C - - - - - 0x002D33 00:ED23: D0 F4     BNE bra_ED19_loop
sub_ED25:
C - - - - - 0x002D35 00:ED25: 8A        TXA
C - - - - - 0x002D36 00:ED26: 48        PHA
C - - - - - 0x002D37 00:ED27: 20 63 ED  JSR sub_ED63_TXA_ASL_ASL_TAY
C - - - - - 0x002D3A 00:ED2A: A2 00     LDX #$00
bra_ED2C_loop:
C - - - - - 0x002D3C 00:ED2C: B9 58 03  LDA ram_0358,Y
C - - - - - 0x002D3F 00:ED2F: 95 00     STA ram_0000,X
C - - - - - 0x002D41 00:ED31: C8        INY
C - - - - - 0x002D42 00:ED32: E8        INX
C - - - - - 0x002D43 00:ED33: E0 04     CPX #$04
C - - - - - 0x002D45 00:ED35: D0 F5     BNE bra_ED2C_loop
C - - - - - 0x002D47 00:ED37: A0 01     LDY #$01
C - - - - - 0x002D49 00:ED39: 84 0E     STY ram_000E
C - - - - - 0x002D4B 00:ED3B: 88        DEY
C - - - - - 0x002D4C 00:ED3C: 84 0F     STY ram_000F
C - - - - - 0x002D4E 00:ED3E: A4 03     LDY ram_0003
C - - - - - 0x002D50 00:ED40: 20 FC EA  JSR sub_EAFC
C - - - - - 0x002D53 00:ED43: A0 00     LDY #$00
C - - - - - 0x002D55 00:ED45: 68        PLA
C - - - - - 0x002D56 00:ED46: AA        TAX
C - - - - - 0x002D57 00:ED47: F0 02     BEQ bra_ED4B
C - - - - - 0x002D59 00:ED49: A0 20     LDY #$20
bra_ED4B:
C - - - - - 0x002D5B 00:ED4B: A9 35     LDA #$35
C - - - - - 0x002D5D 00:ED4D: 99 19 02  STA ram_spr_T + $18,Y
C - - - - - 0x002D60 00:ED50: 60        RTS



sub_ED51:
C - - - - - 0x002D61 00:ED51: 20 25 ED  JSR sub_ED25
C - - - - - 0x002D64 00:ED54: 20 63 ED  JSR sub_ED63_TXA_ASL_ASL_TAY
C - - - - - 0x002D67 00:ED57: B9 59 03  LDA ram_0358 + $01,Y ; 0359 035D 
C - - - - - 0x002D6A 00:ED5A: 38        SEC
C - - - - - 0x002D6B 00:ED5B: E9 02     SBC #$02
C - - - - - 0x002D6D 00:ED5D: 99 59 03  STA ram_0358 + $01,Y ; 0359 035D 
C - - - - - 0x002D70 00:ED60: C9 30     CMP #$30
C - - - - - 0x002D72 00:ED62: 60        RTS



sub_ED63_TXA_ASL_ASL_TAY:
C - - - - - 0x002D73 00:ED63: 8A        TXA
C - - - - - 0x002D74 00:ED64: 0A        ASL
C - - - - - 0x002D75 00:ED65: 0A        ASL
C - - - - - 0x002D76 00:ED66: A8        TAY
C - - - - - 0x002D77 00:ED67: 60        RTS



tbl_ED68_oam_lo:
- D 3 - - - 0x002D78 00:ED68: E8        .byte < (ram_spr_Y + $E8)   ; 00 
- D 3 - - - 0x002D79 00:ED69: F4        .byte < (ram_spr_Y + $F4)   ; 01 



tbl_ED6A:
- D 3 - - - 0x002D7A 00:ED6A: 00        .byte $00   ; 00 
- D 3 - - - 0x002D7B 00:ED6B: 01        .byte $01   ; 01 



tbl_ED6C:
- D 3 - - - 0x002D7C 00:ED6C: 38        .byte $38   ; 00 
- D 3 - - - 0x002D7D 00:ED6D: B0        .byte $B0   ; 01 



tbl_ED6E:
- D 3 - - - 0x002D7E 00:ED6E: 00        .byte $00   ; 00 
- D 3 - - - 0x002D7F 00:ED6F: 0C        .byte $0C   ; 01 



ofs_003_ED70_04:
C - - J - - 0x002D80 00:ED70: A5 55     LDA ram_0055
C - - - - - 0x002D82 00:ED72: C9 02     CMP #$02
C - - - - - 0x002D84 00:ED74: F0 48     BEQ bra_EDBE_RTS
C - - - - - 0x002D86 00:ED76: 8A        TXA
C - - - - - 0x002D87 00:ED77: 48        PHA
C - - - - - 0x002D88 00:ED78: BD 68 ED  LDA tbl_ED68_oam_lo,X
C - - - - - 0x002D8B 00:ED7B: A2 03     LDX #$03
C - - - - - 0x002D8D 00:ED7D: 20 21 C8  JSR sub_C821_hide_sprites_starting_from_A
C - - - - - 0x002D90 00:ED80: 68        PLA
C - - - - - 0x002D91 00:ED81: 48        PHA
C - - - - - 0x002D92 00:ED82: AA        TAX
C - - - - - 0x002D93 00:ED83: B4 20     LDY ram_plr_lives,X
C - - - - - 0x002D95 00:ED85: 88        DEY
C - - - - - 0x002D96 00:ED86: 30 34     BMI bra_EDBC
C - - - - - 0x002D98 00:ED88: C0 03     CPY #$03
C - - - - - 0x002D9A 00:ED8A: 90 02     BCC bra_ED8E_not_overflow
C - - - - - 0x002D9C 00:ED8C: A0 02     LDY #$02
bra_ED8E_not_overflow:
C - - - - - 0x002D9E 00:ED8E: BD 6A ED  LDA tbl_ED6A,X
C - - - - - 0x002DA1 00:ED91: 85 02     STA ram_0002
C - - - - - 0x002DA3 00:ED93: BD 6C ED  LDA tbl_ED6C,X
C - - - - - 0x002DA6 00:ED96: 85 03     STA ram_0003
C - - - - - 0x002DA8 00:ED98: BD 6E ED  LDA tbl_ED6E,X
C - - - - - 0x002DAB 00:ED9B: AA        TAX
bra_ED9C_loop:
C - - - - - 0x002DAC 00:ED9C: A9 21     LDA #$21
C - - - - - 0x002DAE 00:ED9E: 9D E8 02  STA ram_spr_Y + $E8,X
C - - - - - 0x002DB1 00:EDA1: A9 36     LDA #$36
C - - - - - 0x002DB3 00:EDA3: 9D E9 02  STA ram_spr_T + $E8,X
C - - - - - 0x002DB6 00:EDA6: A5 02     LDA ram_0002
C - - - - - 0x002DB8 00:EDA8: 9D EA 02  STA ram_spr_A + $E8,X
C - - - - - 0x002DBB 00:EDAB: A5 03     LDA ram_0003
C - - - - - 0x002DBD 00:EDAD: 9D EB 02  STA ram_spr_X + $E8,X
C - - - - - 0x002DC0 00:EDB0: E8        INX
C - - - - - 0x002DC1 00:EDB1: E8        INX
C - - - - - 0x002DC2 00:EDB2: E8        INX
C - - - - - 0x002DC3 00:EDB3: E8        INX
C - - - - - 0x002DC4 00:EDB4: 18        CLC
C - - - - - 0x002DC5 00:EDB5: 69 08     ADC #$08
C - - - - - 0x002DC7 00:EDB7: 85 03     STA ram_0003
C - - - - - 0x002DC9 00:EDB9: 88        DEY
C - - - - - 0x002DCA 00:EDBA: 10 E0     BPL bra_ED9C_loop
bra_EDBC:
C - - - - - 0x002DCC 00:EDBC: 68        PLA
C - - - - - 0x002DCD 00:EDBD: AA        TAX
bra_EDBE_RTS:
C - - - - - 0x002DCE 00:EDBE: 60        RTS



sub_EDBF:
C - - - - - 0x002DCF 00:EDBF: 48        PHA
C - - - - - 0x002DD0 00:EDC0: 29 80     AND #$80
C - - - - - 0x002DD2 00:EDC2: 4A        LSR
C - - - - - 0x002DD3 00:EDC3: 4A        LSR
C - - - - - 0x002DD4 00:EDC4: 4A        LSR
C - - - - - 0x002DD5 00:EDC5: 85 00     STA ram_0000
C - - - - - 0x002DD7 00:EDC7: 68        PLA
C - - - - - 0x002DD8 00:EDC8: 29 78     AND #$78
C - - - - - 0x002DDA 00:EDCA: 4A        LSR
C - - - - - 0x002DDB 00:EDCB: 4A        LSR
C - - - - - 0x002DDC 00:EDCC: 4A        LSR
C - - - - - 0x002DDD 00:EDCD: 65 00     ADC ram_0000
C - - - - - 0x002DDF 00:EDCF: 60        RTS


; bzk garbage
- - - - - - 0x002DE0 00:EDD0: A5 5A     LDA ram_005A_plr
- - - - - - 0x002DE2 00:EDD2: 2C        .byte $2C   ; BIT opcode
- - - - - - 0x002DE3 00:EDD3: A5 5B     LDA ram_005A_plr + $01



sub_EDD5:
C - - - - - 0x002DE5 00:EDD5: 85 00     STA ram_0000
C - - - - - 0x002DE7 00:EDD7: A5 90     LDA ram_0090
C - - - - - 0x002DE9 00:EDD9: 38        SEC
C - - - - - 0x002DEA 00:EDDA: E5 00     SBC ram_0000
C - - - - - 0x002DEC 00:EDDC: A8        TAY
C - - - - - 0x002DED 00:EDDD: A9 08     LDA #$08
bra_EDDF_loop:
C - - - - - 0x002DEF 00:EDDF: 18        CLC
C - - - - - 0x002DF0 00:EDE0: 69 30     ADC #$30
C - - - - - 0x002DF2 00:EDE2: 88        DEY
C - - - - - 0x002DF3 00:EDE3: 10 FA     BPL bra_EDDF_loop
C - - - - - 0x002DF5 00:EDE5: 60        RTS



tbl_EDE6_offset:
- D 3 - - - 0x002DF6 00:EDE6: 00        .byte $00   ; 01 
- D 3 - - - 0x002DF7 00:EDE7: 05        .byte $05   ; 02 
- D 3 - - - 0x002DF8 00:EDE8: 05        .byte $05   ; 03 
- - - - - - 0x002DF9 00:EDE9: 05        .byte $05   ; 04 
- D 3 - - - 0x002DFA 00:EDEA: 0A        .byte $0A   ; 05 
- D 3 - - - 0x002DFB 00:EDEB: 0A        .byte $0A   ; 06 
- - - - - - 0x002DFC 00:EDEC: 0A        .byte $0A   ; 07 



tbl_EDED_pos_Y:
- - - - - - 0x002DFD 00:EDED: 68        .byte $68   ; 
- D 3 - - - 0x002DFE 00:EDEE: 98        .byte $98   ; 
- D 3 - - - 0x002DFF 00:EDEF: C8        .byte $C8   ; 
- - - - - - 0x002E00 00:EDF0: F0        .byte $F0   ; 



tbl_EDF1:
; 00 
- D 3 - - - 0x002E01 00:EDF1: 18        .byte $18   ; 00 
- D 3 - - - 0x002E02 00:EDF2: 20        .byte $20   ; 01 
- D 3 - - - 0x002E03 00:EDF3: 28        .byte $28   ; 02 
- D 3 - - - 0x002E04 00:EDF4: 20        .byte $20   ; 03 
- D 3 - - - 0x002E05 00:EDF5: FF        .byte $FF   ; 04 
; 05 
- D 3 - - - 0x002E06 00:EDF6: A0        .byte $A0   ; 00 
- D 3 - - - 0x002E07 00:EDF7: A4        .byte $A4   ; 01 
- D 3 - - - 0x002E08 00:EDF8: A8        .byte $A8   ; 02 
- D 3 - - - 0x002E09 00:EDF9: A4        .byte $A4   ; 03 
- D 3 - - - 0x002E0A 00:EDFA: FF        .byte $FF   ; 04 
; 0A 
- D 3 - - - 0x002E0B 00:EDFB: AC        .byte $AC   ; 00 
- - - - - - 0x002E0C 00:EDFC: FF        .byte $FF   ; 01 



tbl_EDFD:
- D 3 - - - 0x002E0D 00:EDFD: 12        .byte $12   ; 00 
- D 3 - - - 0x002E0E 00:EDFE: 14        .byte $14   ; 01 
- D 3 - - - 0x002E0F 00:EDFF: FF        .byte $FF   ; 02 



tbl_EE00_pos_Y:
- - - - - - 0x002E10 00:EE00: FE        .byte $FE   ; 00 
- - - - - - 0x002E11 00:EE01: 00        .byte $00   ; 01 
- - - - - - 0x002E12 00:EE02: FF        .byte $FF   ; 02 
- - - - - - 0x002E13 00:EE03: 00        .byte $00   ; 03 
- - - - - - 0x002E14 00:EE04: FF        .byte $FF   ; 04 
- - - - - - 0x002E15 00:EE05: 00        .byte $00   ; 05 
- - - - - - 0x002E16 00:EE06: 00        .byte $00   ; 06 
- - - - - - 0x002E17 00:EE07: 00        .byte $00   ; 07 
- - - - - - 0x002E18 00:EE08: 01        .byte $01   ; 08 
- - - - - - 0x002E19 00:EE09: 00        .byte $00   ; 09 
- - - - - - 0x002E1A 00:EE0A: 01        .byte $01   ; 0A 
- - - - - - 0x002E1B 00:EE0B: 00        .byte $00   ; 0B 
- - - - - - 0x002E1C 00:EE0C: 02        .byte $02   ; 0C 



sub_EE0D:
C - - - - - 0x002E1D 00:EE0D: A2 07     LDX #$07
bra_EE0F_loop:
C - - - - - 0x002E1F 00:EE0F: E0 00     CPX #$00
C - - - - - 0x002E21 00:EE11: F0 41     BEQ bra_EE54
C - - - - - 0x002E23 00:EE13: BD E8 03  LDA ram_03E8_obj,X ; 03E9 03EA 03EB 03EC 03ED 03EE 03EF 
C - - - - - 0x002E26 00:EE16: 30 3C     BMI bra_EE54
C - - - - - 0x002E28 00:EE18: B5 91     LDA ram_0091_obj,X ; 0092 0093 0094 0095 0096 0097 0098 
C - - - - - 0x002E2A 00:EE1A: F0 38     BEQ bra_EE54
C - - - - - 0x002E2C 00:EE1C: 10 3A     BPL bra_EE58
C - - - - - 0x002E2E 00:EE1E: 20 70 EF  JSR sub_EF70
C - - - - - 0x002E31 00:EE21: 90 03     BCC bra_EE26
C - - - - - 0x002E33 00:EE23: 20 7B EF  JSR sub_EF7B
bra_EE26:
C - - - - - 0x002E36 00:EE26: 20 56 EF  JSR sub_EF56
C - - - - - 0x002E39 00:EE29: E0 01     CPX #$01
C - - - - - 0x002E3B 00:EE2B: D0 04     BNE bra_EE31
C - - - - - 0x002E3D 00:EE2D: A5 3D     LDA ram_spawn_timer_lo_bear
C - - - - - 0x002E3F 00:EE2F: F0 07     BEQ bra_EE38
bra_EE31:
C - - - - - 0x002E41 00:EE31: B5 9C     LDA ram_009C_obj_pos_X,X
C - - - - - 0x002E43 00:EE33: D0 03     BNE bra_EE38
C - - - - - 0x002E45 00:EE35: 4C BD EE  JMP loc_EEBD
bra_EE38:
C - - - - - 0x002E48 00:EE38: 20 8E EF  JSR sub_EF8E
C - - - - - 0x002E4B 00:EE3B: C9 FF     CMP #$FF
C - - - - - 0x002E4D 00:EE3D: D0 05     BNE bra_EE44
C - - - - - 0x002E4F 00:EE3F: A9 00     LDA #$00
C - - - - - 0x002E51 00:EE41: 9D B1 03  STA ram_03B1_obj,X
bra_EE44:
C - - - - - 0x002E54 00:EE44: 20 8E EF  JSR sub_EF8E
C - - - - - 0x002E57 00:EE47: 9D DD 03  STA ram_03DD_obj,X
bra_EE4A:
loc_EE4A:
C D 3 - - - 0x002E5A 00:EE4A: 8A        TXA
C - - - - - 0x002E5B 00:EE4B: 18        CLC
C - - - - - 0x002E5C 00:EE4C: 69 03     ADC #$03
C - - - - - 0x002E5E 00:EE4E: 1D E8 03  ORA ram_03E8_obj,X
C - - - - - 0x002E61 00:EE51: 9D E8 03  STA ram_03E8_obj,X
bra_EE54:
C - - - - - 0x002E64 00:EE54: CA        DEX
C - - - - - 0x002E65 00:EE55: 10 B8     BPL bra_EE0F_loop
C - - - - - 0x002E67 00:EE57: 60        RTS
bra_EE58:
C - - - - - 0x002E68 00:EE58: E0 01     CPX #$01
C - - - - - 0x002E6A 00:EE5A: F0 4B     BEQ bra_EEA7
C - - - - - 0x002E6C 00:EE5C: C9 01     CMP #$01
C - - - - - 0x002E6E 00:EE5E: D0 65     BNE bra_EEC5
C - - - - - 0x002E70 00:EE60: E0 05     CPX #$05
C - - - - - 0x002E72 00:EE62: B0 46     BCS bra_EEAA
C - - - - - 0x002E74 00:EE64: A9 00     LDA #$00
C - - - - - 0x002E76 00:EE66: 9D 82 03  STA ram_0382_obj,X
C - - - - - 0x002E79 00:EE69: FE D2 03  INC ram_03D2_obj,X
C - - - - - 0x002E7C 00:EE6C: BD D2 03  LDA ram_03D2_obj,X
C - - - - - 0x002E7F 00:EE6F: 29 07     AND #$07
C - - - - - 0x002E81 00:EE71: D0 0F     BNE bra_EE82
C - - - - - 0x002E83 00:EE73: 20 4E EF  JSR sub_EF4E
C - - - - - 0x002E86 00:EE76: A8        TAY
C - - - - - 0x002E87 00:EE77: BD D2 03  LDA ram_03D2_obj,X
C - - - - - 0x002E8A 00:EE7A: 29 0F     AND #$0F
C - - - - - 0x002E8C 00:EE7C: D0 04     BNE bra_EE82
C - - - - - 0x002E8E 00:EE7E: 98        TYA
C - - - - - 0x002E8F 00:EE7F: 9D B1 03  STA ram_03B1_obj,X
bra_EE82:
C - - - - - 0x002E92 00:EE82: 20 70 EF  JSR sub_EF70
C - - - - - 0x002E95 00:EE85: 90 06     BCC bra_EE8D
C - - - - - 0x002E97 00:EE87: BD B1 03  LDA ram_03B1_obj,X
C - - - - - 0x002E9A 00:EE8A: 20 7D EF  JSR sub_EF7D
bra_EE8D:
C - - - - - 0x002E9D 00:EE8D: B5 9C     LDA ram_009C_obj_pos_X,X
C - - - - - 0x002E9F 00:EE8F: F0 2C     BEQ bra_EEBD
C - - - - - 0x002EA1 00:EE91: 20 42 EF  JSR sub_EF42
C - - - - - 0x002EA4 00:EE94: 10 07     BPL bra_EE9D
- - - - - - 0x002EA6 00:EE96: F6 91     INC ram_0091_obj,X ; 0093 0094 
- - - - - - 0x002EA8 00:EE98: A9 00     LDA #$00
- - - - - - 0x002EAA 00:EE9A: 9D B1 03  STA ram_03B1_obj,X ; 03B3 03B4 
bra_EE9D:
loc_EE9D:
C D 3 - - - 0x002EAD 00:EE9D: A9 06     LDA #$06
C - - - - - 0x002EAF 00:EE9F: 9D DD 03  STA ram_03DD_obj,X ; 03DF 03E0 
loc_EEA2:
C - - - - - 0x002EB2 00:EEA2: 20 6A EF  JSR sub_EF6A
C - - - - - 0x002EB5 00:EEA5: D0 A3     BNE bra_EE4A
bra_EEA7:
C - - - - - 0x002EB7 00:EEA7: 4C 06 EF  JMP loc_EF06
bra_EEAA:
C - - - - - 0x002EBA 00:EEAA: A9 10     LDA #$10
C - - - - - 0x002EBC 00:EEAC: 9D BC 03  STA ram_03BC_obj,X ; 03C1 03C2 
C - - - - - 0x002EBF 00:EEAF: 20 56 EF  JSR sub_EF56
C - - - - - 0x002EC2 00:EEB2: BC B1 03  LDY ram_03B1_obj,X ; 03B6 03B7 
C - - - - - 0x002EC5 00:EEB5: B9 FD ED  LDA tbl_EDFD,Y
C - - - - - 0x002EC8 00:EEB8: 9D DD 03  STA ram_03DD_obj,X ; 03E2 03E3 
C - - - - - 0x002ECB 00:EEBB: 10 05     BPL bra_EEC2
bra_EEBD:
loc_EEBD:
C D 3 - - - 0x002ECD 00:EEBD: A9 80     LDA #$80
C - - - - - 0x002ECF 00:EEBF: 9D E8 03  STA ram_03E8_obj,X ; 03E9 03EA 03EB 03ED 03EE 
bra_EEC2:
C - - - - - 0x002ED2 00:EEC2: 4C 4A EE  JMP loc_EE4A
bra_EEC5:
C - - - - - 0x002ED5 00:EEC5: C9 02     CMP #$02
C - - - - - 0x002ED7 00:EEC7: D0 F9     BNE bra_EEC2
C - - - - - 0x002ED9 00:EEC9: F6 A7     INC ram_00A7_obj_pos_Y,X
C - - - - - 0x002EDB 00:EECB: 20 70 EF  JSR sub_EF70
C - - - - - 0x002EDE 00:EECE: 90 33     BCC bra_EF03
C - - - - - 0x002EE0 00:EED0: 20 6A EF  JSR sub_EF6A
C - - - - - 0x002EE3 00:EED3: F6 A7     INC ram_00A7_obj_pos_Y,X
C - - - - - 0x002EE5 00:EED5: A5 90     LDA ram_0090
C - - - - - 0x002EE7 00:EED7: 38        SEC
C - - - - - 0x002EE8 00:EED8: F5 B2     SBC ram_00B2_obj,X ; 00B4 00B5 
C - - - - - 0x002EEA 00:EEDA: 85 05     STA ram_0005
C - - - - - 0x002EEC 00:EEDC: A8        TAY
C - - - - - 0x002EED 00:EEDD: B9 ED ED  LDA tbl_EDED_pos_Y,Y
C - - - - - 0x002EF0 00:EEE0: D5 A7     CMP ram_00A7_obj_pos_Y,X ; 00A9 00AA 
C - - - - - 0x002EF2 00:EEE2: B0 1F     BCS bra_EF03
C - - - - - 0x002EF4 00:EEE4: 95 A7     STA ram_00A7_obj_pos_Y,X ; 00A9 00AA 
C - - - - - 0x002EF6 00:EEE6: A5 05     LDA ram_0005
C - - - - - 0x002EF8 00:EEE8: C9 03     CMP #$03
C - - - - - 0x002EFA 00:EEEA: B0 D1     BCS bra_EEBD
C - - - - - 0x002EFC 00:EEEC: D6 B2     DEC ram_00B2_obj,X ; 00B4 00B5 
C - - - - - 0x002EFE 00:EEEE: 20 42 EF  JSR sub_EF42
C - - - - - 0x002F01 00:EEF1: 30 10     BMI bra_EF03
C - - - - - 0x002F03 00:EEF3: A9 01     LDA #$01
C - - - - - 0x002F05 00:EEF5: 95 91     STA ram_0091_obj,X ; 0093 0094 
C - - - - - 0x002F07 00:EEF7: 4A        LSR ; 00
C - - - - - 0x002F08 00:EEF8: 9D B1 03  STA ram_03B1_obj,X ; 03B3 03B4 
C - - - - - 0x002F0B 00:EEFB: A9 FF     LDA #$FF
C - - - - - 0x002F0D 00:EEFD: 9D D2 03  STA ram_03D2_obj,X ; 03D4 03D5 
C - - - - - 0x002F10 00:EF00: 20 6A EF  JSR sub_EF6A
bra_EF03:
C - - - - - 0x002F13 00:EF03: 4C 9D EE  JMP loc_EE9D
loc_EF06:
C D 3 - - - 0x002F16 00:EF06: C9 04     CMP #$04
C - - - - - 0x002F18 00:EF08: F0 B8     BEQ bra_EEC2
- - - - - - 0x002F1A 00:EF0A: C9 05     CMP #$05
- - - - - - 0x002F1C 00:EF0C: D0 B4     BNE bra_EEC2
- - - - - - 0x002F1E 00:EF0E: 20 70 EF  JSR sub_EF70
- - - - - - 0x002F21 00:EF11: 90 06     BCC bra_EF19
- - - - - - 0x002F23 00:EF13: 20 6A EF  JSR sub_EF6A
- - - - - - 0x002F26 00:EF16: 20 7B EF  JSR sub_EF7B
bra_EF19:
- - - - - - 0x002F29 00:EF19: B5 9C     LDA ram_009C_obj_pos_X,X ; 009D 
- - - - - - 0x002F2B 00:EF1B: F0 A0     BEQ bra_EEBD
- - - - - - 0x002F2D 00:EF1D: 20 83 EF  JSR sub_EF83
- - - - - - 0x002F30 00:EF20: 90 18     BCC bra_EF3A
- - - - - - 0x002F32 00:EF22: BD B1 03  LDA ram_03B1_obj,X
- - - - - - 0x002F35 00:EF25: A8        TAY
- - - - - - 0x002F36 00:EF26: B9 00 EE  LDA tbl_EE00_pos_Y,Y
- - - - - - 0x002F39 00:EF29: 18        CLC
- - - - - - 0x002F3A 00:EF2A: 75 A7     ADC ram_00A7_obj_pos_Y,X ; 00A8 
- - - - - - 0x002F3C 00:EF2C: 95 A7     STA ram_00A7_obj_pos_Y,X ; 00A8 
- - - - - - 0x002F3E 00:EF2E: FE B1 03  INC ram_03B1_obj,X ; 03B2 
- - - - - - 0x002F41 00:EF31: C0 0C     CPY #$0C
- - - - - - 0x002F43 00:EF33: D0 05     BNE bra_EF3A
- - - - - - 0x002F45 00:EF35: A9 00     LDA #$00
- - - - - - 0x002F47 00:EF37: 9D B1 03  STA ram_03B1_obj,X ; 03B2 
bra_EF3A:
- - - - - - 0x002F4A 00:EF3A: A9 98     LDA #$98
- - - - - - 0x002F4C 00:EF3C: 9D DD 03  STA ram_03DD_obj,X ; 03DE 
- - - - - - 0x002F4F 00:EF3F: 4C A2 EE  JMP loc_EEA2



sub_EF42:
C - - - - - 0x002F52 00:EF42: B5 9C     LDA ram_009C_obj_pos_X,X ; 009E 009F 
C - - - - - 0x002F54 00:EF44: 18        CLC
C - - - - - 0x002F55 00:EF45: 69 08     ADC #$08
sub_EF47:
C - - - - - 0x002F57 00:EF47: 85 0E     STA ram_000E
C - - - - - 0x002F59 00:EF49: 86 0F     STX ram_000F
C - - - - - 0x002F5B 00:EF4B: 4C B2 DE  JMP loc_DEB2



sub_EF4E:
C - - - - - 0x002F5E 00:EF4E: B5 BD     LDA ram_00BD_obj,X
C - - - - - 0x002F60 00:EF50: 20 FB D2  JSR sub_D2FB_EOR
C - - - - - 0x002F63 00:EF53: 95 BD     STA ram_00BD_obj,X
C - - - - - 0x002F65 00:EF55: 60        RTS



sub_EF56:
C - - - - - 0x002F66 00:EF56: BD D2 03  LDA ram_03D2_obj,X
C - - - - - 0x002F69 00:EF59: C9 FF     CMP #$FF
C - - - - - 0x002F6B 00:EF5B: D0 05     BNE bra_EF62
C - - - - - 0x002F6D 00:EF5D: FE D2 03  INC ram_03D2_obj,X
C - - - - - 0x002F70 00:EF60: F0 08     BEQ bra_EF6A
bra_EF62:
C - - - - - 0x002F72 00:EF62: 20 83 EF  JSR sub_EF83
C - - - - - 0x002F75 00:EF65: 90 08     BCC bra_EF6F_RTS
C - - - - - 0x002F77 00:EF67: FE B1 03  INC ram_03B1_obj,X
bra_EF6A:
sub_EF6A:
C - - - - - 0x002F7A 00:EF6A: A9 40     LDA #$40
C - - - - - 0x002F7C 00:EF6C: 9D E8 03  STA ram_03E8_obj,X
bra_EF6F_RTS:
C - - - - - 0x002F7F 00:EF6F: 60        RTS



sub_EF70:
C - - - - - 0x002F80 00:EF70: BD A6 03  LDA ram_03A6_obj,X ; 03A6 03A7 03A8 03A9 03AB 03AC 
C - - - - - 0x002F83 00:EF73: 18        CLC
C - - - - - 0x002F84 00:EF74: 7D C7 03  ADC ram_03C7_obj,X ; 03C7 03C8 03C9 03CA 03CC 03CD 
C - - - - - 0x002F87 00:EF77: 9D C7 03  STA ram_03C7_obj,X ; 03C7 03C8 03C9 03CA 03CC 03CD 
C - - - - - 0x002F8A 00:EF7A: 60        RTS



sub_EF7B:
C - - - - - 0x002F8B 00:EF7B: B5 BD     LDA ram_00BD_obj,X
sub_EF7D:
loc_EF7D:
C D 3 - - - 0x002F8D 00:EF7D: 18        CLC
C - - - - - 0x002F8E 00:EF7E: 75 9C     ADC ram_009C_obj_pos_X,X
C - - - - - 0x002F90 00:EF80: 95 9C     STA ram_009C_obj_pos_X,X
C - - - - - 0x002F92 00:EF82: 60        RTS



sub_EF83:
C - - - - - 0x002F93 00:EF83: BD BC 03  LDA ram_03BC_obj,X
C - - - - - 0x002F96 00:EF86: 18        CLC
C - - - - - 0x002F97 00:EF87: 7D D2 03  ADC ram_03D2_obj,X
C - - - - - 0x002F9A 00:EF8A: 9D D2 03  STA ram_03D2_obj,X
C - - - - - 0x002F9D 00:EF8D: 60        RTS



sub_EF8E:
C - - - - - 0x002F9E 00:EF8E: BD B1 03  LDA ram_03B1_obj,X
C - - - - - 0x002FA1 00:EF91: 18        CLC
C - - - - - 0x002FA2 00:EF92: 7D E5 ED  ADC tbl_EDE6_offset - $01,X
C - - - - - 0x002FA5 00:EF95: A8        TAY
C - - - - - 0x002FA6 00:EF96: B9 F1 ED  LDA tbl_EDF1,Y
C - - - - - 0x002FA9 00:EF99: 60        RTS



sub_EF9A:
C - - - - - 0x002FAA 00:EF9A: A4 DC     LDY ram_00DC
C - - - - - 0x002FAC 00:EF9C: 88        DEY
C - - - - - 0x002FAD 00:EF9D: 88        DEY
C - - - - - 0x002FAE 00:EF9E: 30 17     BMI bra_EFB7
- - - - - - 0x002FB0 00:EFA0: D0 06     BNE bra_EFA8
- - - - - - 0x002FB2 00:EFA2: A9 18     LDA #$18
- - - - - - 0x002FB4 00:EFA4: 85 DD     STA ram_00DD_temp
- - - - - - 0x002FB6 00:EFA6: E6 DC     INC ram_00DC
bra_EFA8:
- - - - - - 0x002FB8 00:EFA8: E6 A8     INC ram_00A7_obj_pos_Y + $01
- - - - - - 0x002FBA 00:EFAA: E6 A8     INC ram_00A7_obj_pos_Y + $01
- - - - - - 0x002FBC 00:EFAC: C6 DD     DEC ram_00DD_temp
- - - - - - 0x002FBE 00:EFAE: D0 06     BNE bra_EFB6_RTS
- - - - - - 0x002FC0 00:EFB0: A9 00     LDA #$00
- - - - - - 0x002FC2 00:EFB2: 85 DC     STA ram_00DC
- - - - - - 0x002FC4 00:EFB4: C6 B3     DEC ram_00B2_obj + $01
bra_EFB6_RTS:
- - - - - - 0x002FC6 00:EFB6: 60        RTS
bra_EFB7:
C - - - - - 0x002FC7 00:EFB7: A2 01     LDX #$01
; bzk optimize, X = 1
C - - - - - 0x002FC9 00:EFB9: B5 91     LDA ram_0091_obj,X
C - - - - - 0x002FCB 00:EFBB: F0 24     BEQ bra_EFE1_RTS
C - - - - - 0x002FCD 00:EFBD: A5 90     LDA ram_0090
C - - - - - 0x002FCF 00:EFBF: 38        SEC
; bzk optimize, X = 1
C - - - - - 0x002FD0 00:EFC0: F5 B2     SBC ram_00B2_obj,X
C - - - - - 0x002FD2 00:EFC2: C9 04     CMP #$04
C - - - - - 0x002FD4 00:EFC4: 90 05     BCC bra_EFCB
- - - - - - 0x002FD6 00:EFC6: A9 84     LDA #$84
- - - - - - 0x002FD8 00:EFC8: 9D E8 03  STA ram_03E8_obj,X ; 03E9 
bra_EFCB:
; bzk optimize, X = 1
C - - - - - 0x002FDB 00:EFCB: B5 9C     LDA ram_009C_obj_pos_X,X ; 009D 
; bzk optimize, X = 1
C - - - - - 0x002FDD 00:EFCD: B4 BD     LDY ram_00BD_obj,X ; 00BE 
C - - - - - 0x002FDF 00:EFCF: 30 02     BMI bra_EFD3
C - - - - - 0x002FE1 00:EFD1: 69 08     ADC #$08
bra_EFD3:
C - - - - - 0x002FE3 00:EFD3: 20 47 EF  JSR sub_EF47
C - - - - - 0x002FE6 00:EFD6: 10 09     BPL bra_EFE1_RTS
C - - - - - 0x002FE8 00:EFD8: A5 DC     LDA ram_00DC
C - - - - - 0x002FEA 00:EFDA: D0 03     BNE bra_EFDF
C - - - - - 0x002FEC 00:EFDC: 20 4E EF  JSR sub_EF4E
bra_EFDF:
C - - - - - 0x002FEF 00:EFDF: E6 DC     INC ram_00DC
bra_EFE1_RTS:
C - - - - - 0x002FF1 00:EFE1: 60        RTS



tbl_EFE2:
- D 3 - - - 0x002FF2 00:EFE2: 18        .byte $18   ; 02 
- D 3 - - - 0x002FF3 00:EFE3: 30        .byte $30   ; 03 



tbl_EFE4:
- D 3 - - - 0x002FF4 00:EFE4: 40        .byte $40   ; 00 
- D 3 - - - 0x002FF5 00:EFE5: 40        .byte $40   ; 01 
- D 3 - - - 0x002FF6 00:EFE6: 50        .byte $50   ; 02 
- D 3 - - - 0x002FF7 00:EFE7: 60        .byte $60   ; 03 
- D 3 - - - 0x002FF8 00:EFE8: 70        .byte $70   ; 04 
- D 3 - - - 0x002FF9 00:EFE9: 80        .byte $80   ; 05 
- D 3 - - - 0x002FFA 00:EFEA: 90        .byte $90   ; 06 
- D 3 - - - 0x002FFB 00:EFEB: 98        .byte $98   ; 07 



sub_EFEC:
C - - - - - 0x002FFC 00:EFEC: A2 02     LDX #$02
C - - - - - 0x002FFE 00:EFEE: 20 F3 EF  JSR sub_EFF3
C - - - - - 0x003001 00:EFF1: A2 03     LDX #$03
sub_EFF3:
; X = 02 03
C - - - - - 0x003003 00:EFF3: B5 91     LDA ram_0091_obj,X ; 0093 0094 
C - - - - - 0x003005 00:EFF5: F0 44     BEQ bra_F03B
C - - - - - 0x003007 00:EFF7: 10 1B     BPL bra_F014_RTS
C - - - - - 0x003009 00:EFF9: 20 42 EF  JSR sub_EF42
C - - - - - 0x00300C 00:EFFC: 10 16     BPL bra_F014_RTS
C - - - - - 0x00300E 00:EFFE: BD A6 03  LDA ram_03A6_obj,X ; 03A8 03A9 
C - - - - - 0x003011 00:F001: C9 C0     CMP #$C0
C - - - - - 0x003013 00:F003: D0 10     BNE bra_F015
C - - - - - 0x003015 00:F005: A9 04     LDA #con_sfx_2_04
C - - - - - 0x003017 00:F007: 85 FE     STA ram_sfx_2
C - - - - - 0x003019 00:F009: 4A        LSR ; 02
C - - - - - 0x00301A 00:F00A: 95 91     STA ram_0091_obj,X ; 0093 0094 
C - - - - - 0x00301C 00:F00C: A9 00     LDA #$00
C - - - - - 0x00301E 00:F00E: 9D D2 03  STA ram_03D2_obj,X ; 03D4 03D5 
C - - - - - 0x003021 00:F011: 9D 82 03  STA ram_0382_obj,X ; 0384 0385 
bra_F014_RTS:
C - - - - - 0x003024 00:F014: 60        RTS
bra_F015:
C - - - - - 0x003025 00:F015: B5 B2     LDA ram_00B2_obj,X ; 00B4 00B5 
C - - - - - 0x003027 00:F017: 9D 86 03  STA ram_0382_obj + $04,X ; 0388 0389 
C - - - - - 0x00302A 00:F01A: B5 BD     LDA ram_00BD_obj,X ; 00BF 00C0 
C - - - - - 0x00302C 00:F01C: 9D 82 03  STA ram_0382_obj,X ; 0384 0385 
C - - - - - 0x00302F 00:F01F: A9 C0     LDA #$C0
C - - - - - 0x003031 00:F021: 9D A6 03  STA ram_03A6_obj,X ; 03A8 03A9 
C - - - - - 0x003034 00:F024: BD E0 EF  LDA tbl_EFE2 - $02,X
C - - - - - 0x003037 00:F027: 95 48     STA ram_004A_plr_timer - $02,X ; 004A 004B 
C - - - - - 0x003039 00:F029: 20 4E EF  JSR sub_EF4E
C - - - - - 0x00303C 00:F02C: 4C 7D EF  JMP loc_EF7D



tbl_F02F:
- D 3 - - - 0x00303F 00:F02F: 01        .byte $01   ; 00 
- D 3 - - - 0x003040 00:F030: 03        .byte $03   ; 01 
- D 3 - - - 0x003041 00:F031: 05        .byte $05   ; 02 
- D 3 - - - 0x003042 00:F032: 03        .byte $03   ; 03 
- D 3 - - - 0x003043 00:F033: 05        .byte $05   ; 04 
- D 3 - - - 0x003044 00:F034: 03        .byte $03   ; 05 
- D 3 - - - 0x003045 00:F035: 05        .byte $05   ; 06 
- D 3 - - - 0x003046 00:F036: 07        .byte $07   ; 07 
- D 3 - - - 0x003047 00:F037: 05        .byte $05   ; 08 
- D 3 - - - 0x003048 00:F038: 07        .byte $07   ; 09 
- D 3 - - - 0x003049 00:F039: 06        .byte $06   ; 0A 
- D 3 - - - 0x00304A 00:F03A: 07        .byte $07   ; 0B 



bra_F03B:
C - - - - - 0x00304B 00:F03B: BD 82 03  LDA ram_0382_obj,X ; 0384 0385 
C - - - - - 0x00304E 00:F03E: F0 03     BEQ bra_F043
C - - - - - 0x003050 00:F040: 4C C9 F0  JMP loc_F0C9
bra_F043:
C - - - - - 0x003053 00:F043: B5 48     LDA ram_004A_plr_timer - $02,X
C - - - - - 0x003055 00:F045: D0 CD     BNE bra_F014_RTS
C - - - - - 0x003057 00:F047: B5 16     LDA ram_random - $02,X
C - - - - - 0x003059 00:F049: 29 01     AND #$01
C - - - - - 0x00305B 00:F04B: D0 02     BNE bra_F04F
C - - - - - 0x00305D 00:F04D: A9 FF     LDA #$FF
bra_F04F:
C - - - - - 0x00305F 00:F04F: 95 BD     STA ram_00BD_obj,X ; 00BF 00C0 
C - - - - - 0x003061 00:F051: 95 9C     STA ram_009C_obj_pos_X,X ; 009E 009F 
C - - - - - 0x003063 00:F053: 8A        TXA
C - - - - - 0x003064 00:F054: 38        SEC
C - - - - - 0x003065 00:F055: E9 02     SBC #$02
C - - - - - 0x003067 00:F057: 85 00     STA ram_0000
C - - - - - 0x003069 00:F059: A5 90     LDA ram_0090
C - - - - - 0x00306B 00:F05B: 38        SEC
C - - - - - 0x00306C 00:F05C: E9 04     SBC #$04
C - - - - - 0x00306E 00:F05E: 0A        ASL
C - - - - - 0x00306F 00:F05F: 18        CLC
C - - - - - 0x003070 00:F060: 65 00     ADC ram_0000
C - - - - - 0x003072 00:F062: A8        TAY
C - - - - - 0x003073 00:F063: B9 2F F0  LDA tbl_F02F,Y
C - - - - - 0x003076 00:F066: C0 0B     CPY #$0B
C - - - - - 0x003078 00:F068: D0 0B     BNE bra_F075
C - - - - - 0x00307A 00:F06A: C9 07     CMP #$07
C - - - - - 0x00307C 00:F06C: D0 07     BNE bra_F075
C - - - - - 0x00307E 00:F06E: A5 19     LDA ram_random + $01
C - - - - - 0x003080 00:F070: 29 01     AND #$01
C - - - - - 0x003082 00:F072: 18        CLC
C - - - - - 0x003083 00:F073: 69 07     ADC #$07
bra_F075:
sub_F075:
C - - - - - 0x003085 00:F075: CD 86 07  CMP ram_0786
C - - - - - 0x003088 00:F078: F0 05     BEQ bra_F07F
C - - - - - 0x00308A 00:F07A: CD 87 07  CMP ram_0787
C - - - - - 0x00308D 00:F07D: D0 13     BNE bra_F092
bra_F07F:
C - - - - - 0x00308F 00:F07F: 18        CLC
C - - - - - 0x003090 00:F080: 69 01     ADC #$01
C - - - - - 0x003092 00:F082: CD 86 07  CMP ram_0786
C - - - - - 0x003095 00:F085: F0 41     BEQ bra_F0C8_RTS
C - - - - - 0x003097 00:F087: CD 87 07  CMP ram_0787
C - - - - - 0x00309A 00:F08A: F0 3C     BEQ bra_F0C8_RTS
C - - - - - 0x00309C 00:F08C: C5 90     CMP ram_0090
C - - - - - 0x00309E 00:F08E: F0 02     BEQ bra_F092
C - - - - - 0x0030A0 00:F090: B0 36     BCS bra_F0C8_RTS
bra_F092:
C - - - - - 0x0030A2 00:F092: C9 09     CMP #$09
C - - - - - 0x0030A4 00:F094: B0 32     BCS bra_F0C8_RTS
C - - - - - 0x0030A6 00:F096: 85 00     STA ram_0000
C - - - - - 0x0030A8 00:F098: A5 90     LDA ram_0090
C - - - - - 0x0030AA 00:F09A: 38        SEC
C - - - - - 0x0030AB 00:F09B: E9 04     SBC #$04
C - - - - - 0x0030AD 00:F09D: C5 00     CMP ram_0000
C - - - - - 0x0030AF 00:F09F: B0 27     BCS bra_F0C8_RTS
C - - - - - 0x0030B1 00:F0A1: A5 00     LDA ram_0000
C - - - - - 0x0030B3 00:F0A3: 95 B2     STA ram_00B2_obj,X
C - - - - - 0x0030B5 00:F0A5: A9 FF     LDA #$FF
C - - - - - 0x0030B7 00:F0A7: 95 91     STA ram_0091_obj,X
C D 3 - - - 0x0030B9 00:F0A9: 9D D2 03  STA ram_03D2_obj,X
C - - - - - 0x0030BC 00:F0AC: A5 56     LDA ram_mountain_completed
C - - - - - 0x0030BE 00:F0AE: 29 07     AND #$07
C - - - - - 0x0030C0 00:F0B0: A8        TAY
C - - - - - 0x0030C1 00:F0B1: B9 E4 EF  LDA tbl_EFE4,Y
C - - - - - 0x0030C4 00:F0B4: 9D A6 03  STA ram_03A6_obj,X ; 03A8 03A9 
C - - - - - 0x0030C7 00:F0B7: A9 40     LDA #$40
C - - - - - 0x0030C9 00:F0B9: 9D BC 03  STA ram_03BC_obj,X ; 03BE 03BF 
C - - - - - 0x0030CC 00:F0BC: B5 B2     LDA ram_00B2_obj,X ; 00B4 00B5 
C - - - - - 0x0030CE 00:F0BE: 20 D5 ED  JSR sub_EDD5
C - - - - - 0x0030D1 00:F0C1: 95 A7     STA ram_00A7_obj_pos_Y,X
C - - - - - 0x0030D3 00:F0C3: BD E0 EF  LDA tbl_EFE2 - $02,X
C - - - - - 0x0030D6 00:F0C6: 95 48     STA ram_004A_plr_timer - $02,X
bra_F0C8_RTS:
C - - - - - 0x0030D8 00:F0C8: 60        RTS



loc_F0C9:
; X = 02 03
C D 3 - - - 0x0030D9 00:F0C9: 95 BD     STA ram_00BD_obj,X ; 00BF 00C0 
C - - - - - 0x0030DB 00:F0CB: 95 9C     STA ram_009C_obj_pos_X,X ; 009E 009F 
C - - - - - 0x0030DD 00:F0CD: A9 00     LDA #$00
C - - - - - 0x0030DF 00:F0CF: 9D 82 03  STA ram_0382_obj,X ; 0384 0385 
C - - - - - 0x0030E2 00:F0D2: 85 00     STA ram_0000
C - - - - - 0x0030E4 00:F0D4: BD 86 03  LDA ram_0382_obj + $04,X ; 0388 0389 
C - - - - - 0x0030E7 00:F0D7: 20 75 F0  JSR sub_F075
; triggers when a seal respawns carrying an ice block,
; or when he realises that he needs an ice block and starts running back
C - - - - - 0x0030EA 00:F0DA: 8A        TXA
C - - - - - 0x0030EB 00:F0DB: 48        PHA
bra_F0DC_loop:
C - - - - - 0x0030EC 00:F0DC: B5 91     LDA ram_0091_obj,X ; 0093 0094 009E 009F 00A9 00AA 00B4 00B5 00BF 00C0 
C - - - - - 0x0030EE 00:F0DE: 95 94     STA ram_0091_obj + $03,X ; 0096 0097 00A1 00A2 00AC 00AD 00B7 00B8 00C2 00C3 
C - - - - - 0x0030F0 00:F0E0: BD A6 03  LDA ram_03A6_obj,X ; 03A8 03A9 03B3 03B4 03BE 03BF 03C9 03CA 03D4 03D5 
C - - - - - 0x0030F3 00:F0E3: 9D A9 03  STA ram_03A6_obj + $03,X ; 03AB 03AC 03B6 03B7 03C1 03C2 03CC 03CD 03D7 03D8 
C - - - - - 0x0030F6 00:F0E6: 8A        TXA
C - - - - - 0x0030F7 00:F0E7: 18        CLC
C - - - - - 0x0030F8 00:F0E8: 69 0B     ADC #$0B
C - - - - - 0x0030FA 00:F0EA: AA        TAX
C - - - - - 0x0030FB 00:F0EB: E0 37     CPX #$37
C - - - - - 0x0030FD 00:F0ED: 90 ED     BCC bra_F0DC_loop
C - - - - - 0x0030FF 00:F0EF: 68        PLA
C - - - - - 0x003100 00:F0F0: AA        TAX
C - - - - - 0x003101 00:F0F1: A9 0E     LDA #$0E
C - - - - - 0x003103 00:F0F3: B4 BD     LDY ram_00BD_obj,X ; 00BF 00C0 
C - - - - - 0x003105 00:F0F5: 10 02     BPL bra_F0F9
C - - - - - 0x003107 00:F0F7: A9 FA     LDA #$FA
bra_F0F9:
C - - - - - 0x003109 00:F0F9: 18        CLC
C - - - - - 0x00310A 00:F0FA: 75 9C     ADC ram_009C_obj_pos_X,X ; 009E 009F 
C - - - - - 0x00310C 00:F0FC: 95 9F     STA ram_009C_obj_pos_X + $03,X ; 00A1 00A2 
C - - - - - 0x00310E 00:F0FE: A9 00     LDA #$00            
C - - - - - 0x003110 00:F100: 9D B4 03  STA ram_03B1_obj + $03,X ; 03B6 03B7 
C - - - - - 0x003113 00:F103: 9D BF 03  STA ram_03BC_obj + $03,X ; 03C1 03C2 
C - - - - - 0x003116 00:F106: 60        RTS



tbl_F107:
- D 3 - - - 0x003117 00:F107: 10        .byte $10   ; 00 
- D 3 - - - 0x003118 00:F108: 0E        .byte $0E   ; 01 
- D 3 - - - 0x003119 00:F109: 0C        .byte $0C   ; 02 
- D 3 - - - 0x00311A 00:F10A: 0C        .byte $0C   ; 03 



sub_F10B:
C - - - - - 0x00311B 00:F10B: A2 02     LDX #$02
C - - - - - 0x00311D 00:F10D: A5 59     LDA ram_mountain_current
C - - - - - 0x00311F 00:F10F: C9 20     CMP #$20
C - - - - - 0x003121 00:F111: B0 09     BCS bra_F11C
C - - - - - 0x003123 00:F113: A6 56     LDX ram_mountain_completed
C - - - - - 0x003125 00:F115: F0 23     BEQ bra_F13A_RTS
C - - - - - 0x003127 00:F117: CA        DEX
C - - - - - 0x003128 00:F118: F0 02     BEQ bra_F11C
C - - - - - 0x00312A 00:F11A: A2 01     LDX #$01
bra_F11C:
bra_F11C_loop:
C - - - - - 0x00312C 00:F11C: 8A        TXA
C - - - - - 0x00312D 00:F11D: 18        CLC
C - - - - - 0x00312E 00:F11E: 69 18     ADC #$18
C - - - - - 0x003130 00:F120: 09 40     ORA #$40
C - - - - - 0x003132 00:F122: 9D F0 03  STA ram_03E8_obj + $08,X ; 03F0 03F1 03F2 
C - - - - - 0x003135 00:F125: B5 C5     LDA ram_00BD_obj + $08,X ; 00C5 00C6 00C7 
C - - - - - 0x003137 00:F127: 69 60     ADC #$60
C - - - - - 0x003139 00:F129: 95 C5     STA ram_00BD_obj + $08,X ; 00C5 00C6 00C7 
C - - - - - 0x00313B 00:F12B: B5 99     LDA ram_0091_obj + $08,X ; 0099 009A 009B 
C - - - - - 0x00313D 00:F12D: C9 20     CMP #$20
C - - - - - 0x00313F 00:F12F: F0 06     BEQ bra_F137
C - - - - - 0x003141 00:F131: 18        CLC
C - - - - - 0x003142 00:F132: 69 01     ADC #$01
C - - - - - 0x003144 00:F134: 20 3B F1  JSR sub_F13B
bra_F137:
C - - - - - 0x003147 00:F137: CA        DEX
C - - - - - 0x003148 00:F138: 10 E2     BPL bra_F11C_loop
bra_F13A_RTS:
C - - - - - 0x00314A 00:F13A: 60        RTS



sub_F13B:
C - - - - - 0x00314B 00:F13B: 20 28 C7  JSR sub_C728_jump_to_pointers_after_jsr
- D 3 - I - 0x00314E 00:F13E: 8D F1     .word ofs_004_F18D_FF
- D 3 - I - 0x003150 00:F140: 48 F1     .word ofs_004_F148_00
- D 3 - I - 0x003152 00:F142: 96 F1     .word ofs_004_F196_01
- D 3 - I - 0x003154 00:F144: 56 F1     .word ofs_004_F156_02
- - - - - - 0x003156 00:F146: 50 F1     .word ofs_004_F150_03



ofs_004_F148_00:
C - - J - - 0x003158 00:F148: DE CF 03  DEC ram_03C7_obj + $08,X ; 03CF 03D0 03D1 
C - - - - - 0x00315B 00:F14B: D0 03     BNE bra_F150
C - - - - - 0x00315D 00:F14D: 20 AE F1  JSR sub_F1AE
bra_F150:
ofs_004_F150_03:
C - - - - - 0x003160 00:F150: A9 00     LDA #$00
C - - - - - 0x003162 00:F152: 9D F0 03  STA ram_03E8_obj + $08,X ; 03F0 03F1 03F2 
C - - - - - 0x003165 00:F155: 60        RTS



ofs_004_F156_02:
C - - J - - 0x003166 00:F156: DE DA 03  DEC ram_03D2_obj + $08,X ; 03DA 03DB 03DC 
C - - - - - 0x003169 00:F159: D0 08     BNE bra_F163
C - - - - - 0x00316B 00:F15B: A9 02     LDA #con_sfx_2_02
C - - - - - 0x00316D 00:F15D: 85 FE     STA ram_sfx_2
C - - - - - 0x00316F 00:F15F: A9 FF     LDA #$FF
C - - - - - 0x003171 00:F161: 95 99     STA ram_0091_obj + $08,X ; 0099 009A 
bra_F163:
C - - - - - 0x003173 00:F163: 20 22 F2  JSR sub_F222
C - - - - - 0x003176 00:F166: 30 0C     BMI bra_F174
C - - - - - 0x003178 00:F168: 8A        TXA
C - - - - - 0x003179 00:F169: 0A        ASL
C - - - - - 0x00317A 00:F16A: 0A        ASL
C - - - - - 0x00317B 00:F16B: 0A        ASL
C - - - - - 0x00317C 00:F16C: 18        CLC
C - - - - - 0x00317D 00:F16D: 69 08     ADC #$08
C - - - - - 0x00317F 00:F16F: 79 88 07  ADC ram_0788,Y ; 0788 0789 
C - - - - - 0x003182 00:F172: 95 A4     STA ram_009C_obj_pos_X + $08,X ; 00A4 00A5 
bra_F174:
C - - - - - 0x003184 00:F174: BD DA 03  LDA ram_03D2_obj + $08,X ; 03DA 03DB 03DC 
C - - - - - 0x003187 00:F177: 0A        ASL
C - - - - - 0x003188 00:F178: 2A        ROL
C - - - - - 0x003189 00:F179: 2A        ROL
C - - - - - 0x00318A 00:F17A: 29 03     AND #$03
C - - - - - 0x00318C 00:F17C: A8        TAY
C - - - - - 0x00318D 00:F17D: B9 07 F1  LDA tbl_F107,Y
C - - - - - 0x003190 00:F180: 9D E5 03  STA ram_03DD_obj + $08,X ; 03E5 03E6 03E7 
C - - - - - 0x003193 00:F183: B5 AF     LDA ram_00A7_obj_pos_Y + $08,X ; 00AF 00B0 00B1 
C - - - - - 0x003195 00:F185: 29 F8     AND #$F8
C - - - - - 0x003197 00:F187: 95 AF     STA ram_00A7_obj_pos_Y + $08,X ; 00AF 00B0 00B1 
C - - - - - 0x003199 00:F189: 20 F3 F1  JSR sub_F1F3
bra_F18C_RTS:
C - - - - - 0x00319C 00:F18C: 60        RTS



ofs_004_F18D_FF:
C - - J - - 0x00319D 00:F18D: A9 02     LDA #$02
C - - - - - 0x00319F 00:F18F: 20 15 F2  JSR sub_F215_add_to_falling_ice_pos_Y
C - - - - - 0x0031A2 00:F192: C9 F0     CMP #$F0
C - - - - - 0x0031A4 00:F194: 90 F6     BCC bra_F18C_RTS
bra_F196:
ofs_004_F196_01:
C - - J - - 0x0031A6 00:F196: BD F0 03  LDA ram_03E8_obj + $08,X ; 03F0 03F1 
C - - - - - 0x0031A9 00:F199: 09 80     ORA #$80
C - - - - - 0x0031AB 00:F19B: 9D F0 03  STA ram_03E8_obj + $08,X ; 03F0 03F1 
sub_F19E:
C - - - - - 0x0031AE 00:F19E: 20 AB F7  JSR sub_F7AB_get_random_value
C - - - - - 0x0031B1 00:F1A1: 0A        ASL
C - - - - - 0x0031B2 00:F1A2: 0A        ASL
C - - - - - 0x0031B3 00:F1A3: 9D CF 03  STA ram_03C7_obj + $08,X ; 03CF 03D0 03D1 
C - - - - - 0x0031B6 00:F1A6: A9 00     LDA #$00
C - - - - - 0x0031B8 00:F1A8: 9D DA 03  STA ram_03D2_obj + $08,X ; 03DA 03DB 03DC 
C - - - - - 0x0031BB 00:F1AB: 60        RTS



tbl_F1AC_falling_ice_pos_Y_offset:
- D 3 - - - 0x0031BC 00:F1AC: 07        .byte $07   ; 01 
- D 3 - - - 0x0031BD 00:F1AD: 03        .byte $03   ; 02 



sub_F1AE:
C - - - - - 0x0031BE 00:F1AE: A5 92     LDA ram_0091_obj + $01
C - - - - - 0x0031C0 00:F1B0: 05 7C     ORA ram_007C
C - - - - - 0x0031C2 00:F1B2: D0 E2     BNE bra_F196
C - - - - - 0x0031C4 00:F1B4: B5 18     LDA ram_random,X
C - - - - - 0x0031C6 00:F1B6: 29 F8     AND #$F8
C - - - - - 0x0031C8 00:F1B8: C9 38     CMP #$38
C - - - - - 0x0031CA 00:F1BA: 90 07     BCC bra_F1C3
C - - - - - 0x0031CC 00:F1BC: C9 C9     CMP #$C9
C - - - - - 0x0031CE 00:F1BE: 90 05     BCC bra_F1C5
C - - - - - 0x0031D0 00:F1C0: E9 38     SBC #$38
C - - - - - 0x0031D2 00:F1C2: 2C        .byte $2C   ; BIT opcode
bra_F1C3:
C - - - - - 0x0031D3 00:F1C3: 69 38     ADC #$38
bra_F1C5:
C - - - - - 0x0031D5 00:F1C5: C5 A4     CMP ram_009C_obj_pos_X + $08
C - - - - - 0x0031D7 00:F1C7: F0 54     BEQ bra_F21D
C - - - - - 0x0031D9 00:F1C9: C5 A5     CMP ram_009C_obj_pos_X + $09
C - - - - - 0x0031DB 00:F1CB: F0 50     BEQ bra_F21D
C - - - - - 0x0031DD 00:F1CD: C5 A6     CMP ram_009C_obj_pos_X + $0A
C - - - - - 0x0031DF 00:F1CF: F0 4C     BEQ bra_F21D
C - - - - - 0x0031E1 00:F1D1: 95 A4     STA ram_009C_obj_pos_X + $08,X ; 00A4 00A5 00A6 
C - - - - - 0x0031E3 00:F1D3: A5 90     LDA ram_0090
C - - - - - 0x0031E5 00:F1D5: A8        TAY
C - - - - - 0x0031E6 00:F1D6: 88        DEY
C - - - - - 0x0031E7 00:F1D7: 88        DEY
C - - - - - 0x0031E8 00:F1D8: 38        SEC
C - - - - - 0x0031E9 00:F1D9: E9 08     SBC #$08
C - - - - - 0x0031EB 00:F1DB: F0 06     BEQ bra_F1E3
C - - - - - 0x0031ED 00:F1DD: 10 08     BPL bra_F1E7
C - - - - - 0x0031EF 00:F1DF: A9 20     LDA #$20    ; falling ice position
C - - - - - 0x0031F1 00:F1E1: C8        INY
C - - - - - 0x0031F2 00:F1E2: 2C        .byte $2C   ; BIT opcode
bra_F1E3:
C - - - - - 0x0031F3 00:F1E3: A9 50     LDA #$50
C - - - - - 0x0031F5 00:F1E5: C8        INY
C - - - - - 0x0031F6 00:F1E6: 2C        .byte $2C   ; BIT opcode
bra_F1E7:
C - - - - - 0x0031F7 00:F1E7: A9 80     LDA #$80
C - - - - - 0x0031F9 00:F1E9: 95 AF     STA ram_00A7_obj_pos_Y + $08,X ; 00AF 00B0 00B1 
C - - - - - 0x0031FB 00:F1EB: C8        INY
C - - - - - 0x0031FC 00:F1EC: 98        TYA
C - - - - - 0x0031FD 00:F1ED: 95 BA     STA ram_00B2_obj + $08,X ; 00BA 00BB 00BC 
C - - - - - 0x0031FF 00:F1EF: A9 02     LDA #$02
C - - - - - 0x003201 00:F1F1: 95 99     STA ram_0091_obj + $08,X ; 0099 009A 009B 
sub_F1F3:
C - - - - - 0x003203 00:F1F3: 20 22 F2  JSR sub_F222
C - - - - - 0x003206 00:F1F6: 10 29     BPL bra_F221_RTS
C - - - - - 0x003208 00:F1F8: 8A        TXA
C - - - - - 0x003209 00:F1F9: 48        PHA
C - - - - - 0x00320A 00:F1FA: B5 A4     LDA ram_009C_obj_pos_X + $08,X ; 00A4 00A5 00A6 
C - - - - - 0x00320C 00:F1FC: 85 0E     STA ram_000E
C - - - - - 0x00320E 00:F1FE: B5 BA     LDA ram_00B2_obj + $08,X ; 00BA 00BB 00BC 
C - - - - - 0x003210 00:F200: 85 0F     STA ram_000F
C - - - - - 0x003212 00:F202: 20 B9 DE  JSR sub_DEB9
C - - - - - 0x003215 00:F205: A8        TAY
C - - - - - 0x003216 00:F206: 30 13     BMI bra_F21B
C - - - - - 0x003218 00:F208: 68        PLA
C - - - - - 0x003219 00:F209: AA        TAX
C - - - - - 0x00321A 00:F20A: A4 02     LDY ram_0002
C - - - - - 0x00321C 00:F20C: 30 13     BMI bra_F221_RTS
C - - - - - 0x00321E 00:F20E: C0 04     CPY #$04
C - - - - - 0x003220 00:F210: F0 0B     BEQ bra_F21D
C - - - - - 0x003222 00:F212: B9 AB F1  LDA tbl_F1AC_falling_ice_pos_Y_offset - $01,Y
sub_F215_add_to_falling_ice_pos_Y:
C - - - - - 0x003225 00:F215: 18        CLC
C - - - - - 0x003226 00:F216: 75 AF     ADC ram_00A7_obj_pos_Y + $08,X ; 00AF 00B0 00B1 
C - - - - - 0x003228 00:F218: 95 AF     STA ram_00A7_obj_pos_Y + $08,X ; 00AF 00B0 00B1 
C - - - - - 0x00322A 00:F21A: 60        RTS
bra_F21B:
C - - - - - 0x00322B 00:F21B: 68        PLA
C - - - - - 0x00322C 00:F21C: AA        TAX
bra_F21D:
C - - - - - 0x00322D 00:F21D: A9 01     LDA #$01
C - - - - - 0x00322F 00:F21F: 95 99     STA ram_0091_obj + $08,X ; 0099 009A 
bra_F221_RTS:
C - - - - - 0x003231 00:F221: 60        RTS



sub_F222:
C - - - - - 0x003232 00:F222: A0 01     LDY #$01
C - - - - - 0x003234 00:F224: B5 BA     LDA ram_00B2_obj + $08,X ; 00BA 00BB 00BC 
bra_F226_loop:
C - - - - - 0x003236 00:F226: D9 86 07  CMP ram_0786,Y ; 0786 0787 
C - - - - - 0x003239 00:F229: F0 03     BEQ bra_F22E_RTS
C - - - - - 0x00323B 00:F22B: 88        DEY
C - - - - - 0x00323C 00:F22C: 10 F8     BPL bra_F226_loop
bra_F22E_RTS:
C - - - - - 0x00323E 00:F22E: 60        RTS



tbl_F22F:
- D 3 - - - 0x00323F 00:F22F: 0E        .byte $0E   ; 00 
- D 3 - - - 0x003240 00:F230: 39        .byte $39   ; 01 
- D 3 - - - 0x003241 00:F231: 38        .byte $38   ; 02 
- D 3 - - - 0x003242 00:F232: 37        .byte $37   ; 03 
- D 3 - - - 0x003243 00:F233: 36        .byte $36   ; 04 
- D 3 - - - 0x003244 00:F234: 1B        .byte $1B   ; 05 
- D 3 - - - 0x003245 00:F235: 1A        .byte $1A   ; 06 
- D 3 - - - 0x003246 00:F236: 19        .byte $19   ; 07 
- D 3 - - - 0x003247 00:F237: 18        .byte $18   ; 08 
- D 3 - - - 0x003248 00:F238: 38        .byte $38   ; 09 
- D 3 - - - 0x003249 00:F239: 34        .byte $34   ; 0A 
- D 3 - - - 0x00324A 00:F23A: 5B        .byte $5B   ; 0B 
- D 3 - - - 0x00324B 00:F23B: 5A        .byte $5A   ; 0C 
- D 3 - - - 0x00324C 00:F23C: 93        .byte $93   ; 0D 
- D 3 - - - 0x00324D 00:F23D: 91        .byte $91   ; 0E 
- D 3 - - - 0x00324E 00:F23E: 38        .byte $38   ; 0F 
- D 3 - - - 0x00324F 00:F23F: 38        .byte $38   ; 10 



tbl_F240:
; 0D 
- D 3 - - - 0x003250 00:F240: 91        .byte $91   ; 00 
- D 3 - - - 0x003251 00:F241: 3A        .byte $3A   ; 01 
- D 3 - - - 0x003252 00:F242: 33        .byte $33   ; 02 
- D 3 - - - 0x003253 00:F243: 36        .byte $36   ; 03 
- D 3 - - - 0x003254 00:F244: 3D        .byte $3D   ; 04 
- D 3 - - - 0x003255 00:F245: 38        .byte $38   ; 05 
; 13 
- D 3 - - - 0x003256 00:F246: 4D        .byte $4D   ; 00 
- D 3 - - - 0x003257 00:F247: 53        .byte $53   ; 01 
- D 3 - - - 0x003258 00:F248: 53        .byte $53   ; 02 
- D 3 - - - 0x003259 00:F249: 53        .byte $53   ; 03 
- D 3 - - - 0x00325A 00:F24A: 53        .byte $53   ; 04 
- D 3 - - - 0x00325B 00:F24B: A9        .byte $A9   ; 05 
; 19 
- D 3 - - - 0x00325C 00:F24C: AF        .byte $AF   ; 00 
- D 3 - - - 0x00325D 00:F24D: 3A        .byte $3A   ; 01 
- D 3 - - - 0x00325E 00:F24E: 3B        .byte $3B   ; 02 
- D 3 - - - 0x00325F 00:F24F: 3C        .byte $3C   ; 03 
- D 3 - - - 0x003260 00:F250: 3D        .byte $3D   ; 04 
- D 3 - - - 0x003261 00:F251: B5        .byte $B5   ; 05 
; 1F 
- D 3 - - - 0x003262 00:F252: AF        .byte $AF   ; 00 
- D 3 - - - 0x003263 00:F253: 04        .byte $04   ; 01 
- D 3 - - - 0x003264 00:F254: 00        .byte $00   ; 02 
- D 3 - - - 0x003265 00:F255: 5D        .byte $5D   ; 03 
- D 3 - - - 0x003266 00:F256: 00        .byte $00   ; 04 
- D 3 - - - 0x003267 00:F257: B5        .byte $B5   ; 05 
; 25 
- D 3 - - - 0x003268 00:F258: BB        .byte $BB   ; 00 
- D 3 - - - 0x003269 00:F259: C1        .byte $C1   ; 01 
- D 3 - - - 0x00326A 00:F25A: C1        .byte $C1   ; 02 
- D 3 - - - 0x00326B 00:F25B: C1        .byte $C1   ; 03 
- D 3 - - - 0x00326C 00:F25C: C1        .byte $C1   ; 04 
- D 3 - - - 0x00326D 00:F25D: C7        .byte $C7   ; 05 



tbl_F25E_offset:
- D 3 - - - 0x00326E 00:F25E: 0D        .byte $0D   ; 00 
- D 3 - - - 0x00326F 00:F25F: 13        .byte $13   ; 01 
- D 3 - - - 0x003270 00:F260: 19        .byte $19   ; 02 
- D 3 - - - 0x003271 00:F261: 1F        .byte $1F   ; 03 
- D 3 - - - 0x003272 00:F262: 25        .byte $25   ; 04 
- D 3 - - - 0x003273 00:F263: 13        .byte $13   ; 05 
- D 3 - - - 0x003274 00:F264: 19        .byte $19   ; 06 
- D 3 - - - 0x003275 00:F265: 1F        .byte $1F   ; 07 
- D 3 - - - 0x003276 00:F266: 25        .byte $25   ; 08 



tbl_F267:
- D 3 - - - 0x003277 00:F267: 01        .byte $01   ; 00 
- D 3 - - - 0x003278 00:F268: 01        .byte $01   ; 01 
- D 3 - - - 0x003279 00:F269: 01        .byte $01   ; 02 
- D 3 - - - 0x00327A 00:F26A: 01        .byte $01   ; 03 
- D 3 - - - 0x00327B 00:F26B: 05        .byte $05   ; 04 
- D 3 - - - 0x00327C 00:F26C: 05        .byte $05   ; 05 
- D 3 - - - 0x00327D 00:F26D: 05        .byte $05   ; 06 
- D 3 - - - 0x00327E 00:F26E: 09        .byte $09   ; 07 
- D 3 - - - 0x00327F 00:F26F: 0B        .byte $0B   ; 08 
- D 3 - - - 0x003280 00:F270: 0C        .byte $0C   ; 09 
- D 3 - - - 0x003281 00:F271: 0F        .byte $0F   ; 0A 
- D 3 - - - 0x003282 00:F272: 10        .byte $10   ; 0B 
- D 3 - - - 0x003283 00:F273: 11        .byte $11   ; 0C 
- D 3 - - - 0x003284 00:F274: 13        .byte $13   ; 0D 
- D 3 - - - 0x003285 00:F275: 15        .byte $15   ; 0E 
- D 3 - - - 0x003286 00:F276: 16        .byte $16   ; 0F 
- D 3 - - - 0x003287 00:F277: 1A        .byte $1A   ; 10 
- D 3 - - - 0x003288 00:F278: 1A        .byte $1A   ; 11 
- D 3 - - - 0x003289 00:F279: 1A        .byte $1A   ; 12 
- D 3 - - - 0x00328A 00:F27A: 1A        .byte $1A   ; 13 
- D 3 - - - 0x00328B 00:F27B: 1A        .byte $1A   ; 14 
- D 3 - - - 0x00328C 00:F27C: 1A        .byte $1A   ; 15 
- D 3 - - - 0x00328D 00:F27D: 1B        .byte $1B   ; 16 
- D 3 - - - 0x00328E 00:F27E: 1B        .byte $1B   ; 17 
- D 3 - - - 0x00328F 00:F27F: 1E        .byte $1E   ; 18 
- D 3 - - - 0x003290 00:F280: 1F        .byte $1F   ; 19 
- D 3 - - - 0x003291 00:F281: 1F        .byte $1F   ; 1A 
- D 3 - - - 0x003292 00:F282: 20        .byte $20   ; 1B 
- D 3 - - - 0x003293 00:F283: 21        .byte $21   ; 1C 
- D 3 - - - 0x003294 00:F284: 21        .byte $21   ; 1D 
- D 3 - - - 0x003295 00:F285: 24        .byte $24   ; 1E 
- D 3 - - - 0x003296 00:F286: 24        .byte $24   ; 1F 
- D 3 - - - 0x003297 00:F287: 24        .byte $24   ; 20 
- D 3 - - - 0x003298 00:F288: 24        .byte $24   ; 21 
- D 3 - - - 0x003299 00:F289: 26        .byte $26   ; 22 
- D 3 - - - 0x00329A 00:F28A: 29        .byte $29   ; 23 
- D 3 - - - 0x00329B 00:F28B: 2A        .byte $2A   ; 24 
- D 3 - - - 0x00329C 00:F28C: 2E        .byte $2E   ; 25 
- D 3 - - - 0x00329D 00:F28D: 2E        .byte $2E   ; 26 
- D 3 - - - 0x00329E 00:F28E: 2E        .byte $2E   ; 27 
- D 3 - - - 0x00329F 00:F28F: 2E        .byte $2E   ; 28 
- D 3 - - - 0x0032A0 00:F290: 00        .byte $00   ; 29 



tbl_F291:
- D 3 - - - 0x0032A1 00:F291: A1        .byte $A1   ; 00 
- D 3 - - - 0x0032A2 00:F292: A9        .byte $A9   ; 01 
- D 3 - - - 0x0032A3 00:F293: B1        .byte $B1   ; 02 
- D 3 - - - 0x0032A4 00:F294: D9        .byte $D9   ; 03 
- D 3 - - - 0x0032A5 00:F295: 66        .byte $66   ; 04 
- D 3 - - - 0x0032A6 00:F296: AD        .byte $AD   ; 05 
- D 3 - - - 0x0032A7 00:F297: 76        .byte $76   ; 06 
- D 3 - - - 0x0032A8 00:F298: 74        .byte $74   ; 07 
- D 3 - - - 0x0032A9 00:F299: 6A        .byte $6A   ; 08 
- D 3 - - - 0x0032AA 00:F29A: 6A        .byte $6A   ; 09 
- D 3 - - - 0x0032AB 00:F29B: 72        .byte $72   ; 0A 
- D 3 - - - 0x0032AC 00:F29C: 72        .byte $72   ; 0B 
- D 3 - - - 0x0032AD 00:F29D: C5        .byte $C5   ; 0C 
- D 3 - - - 0x0032AE 00:F29E: 74        .byte $74   ; 0D 
- D 3 - - - 0x0032AF 00:F29F: 55        .byte $55   ; 0E 
- D 3 - - - 0x0032B0 00:F2A0: AC        .byte $AC   ; 0F 
- D 3 - - - 0x0032B1 00:F2A1: AA        .byte $AA   ; 10 
- D 3 - - - 0x0032B2 00:F2A2: B0        .byte $B0   ; 11 
- D 3 - - - 0x0032B3 00:F2A3: 67        .byte $67   ; 12 
- D 3 - - - 0x0032B4 00:F2A4: 4D        .byte $4D   ; 13 
- D 3 - - - 0x0032B5 00:F2A5: 52        .byte $52   ; 14 
- D 3 - - - 0x0032B6 00:F2A6: 77        .byte $77   ; 15 
- D 3 - - - 0x0032B7 00:F2A7: 66        .byte $66   ; 16 
- D 3 - - - 0x0032B8 00:F2A8: F2        .byte $F2   ; 17 
- D 3 - - - 0x0032B9 00:F2A9: 8C        .byte $8C   ; 18 
- D 3 - - - 0x0032BA 00:F2AA: 69        .byte $69   ; 19 
- D 3 - - - 0x0032BB 00:F2AB: 6F        .byte $6F   ; 1A 
- D 3 - - - 0x0032BC 00:F2AC: 70        .byte $70   ; 1B 
- D 3 - - - 0x0032BD 00:F2AD: 6E        .byte $6E   ; 1C 
- D 3 - - - 0x0032BE 00:F2AE: 48        .byte $48   ; 1D 
- D 3 - - - 0x0032BF 00:F2AF: 48        .byte $48   ; 1E 
- D 3 - - - 0x0032C0 00:F2B0: 4A        .byte $4A   ; 1F 
- D 3 - - - 0x0032C1 00:F2B1: 71        .byte $71   ; 20 
- D 3 - - - 0x0032C2 00:F2B2: 53        .byte $53   ; 21 
- D 3 - - - 0x0032C3 00:F2B3: 4C        .byte $4C   ; 22 
- D 3 - - - 0x0032C4 00:F2B4: 6E        .byte $6E   ; 23 
- D 3 - - - 0x0032C5 00:F2B5: AD        .byte $AD   ; 24 
- D 3 - - - 0x0032C6 00:F2B6: 0C        .byte $0C   ; 25 
- D 3 - - - 0x0032C7 00:F2B7: 51        .byte $51   ; 26 
- D 3 - - - 0x0032C8 00:F2B8: A6        .byte $A6   ; 27 
- D 3 - - - 0x0032C9 00:F2B9: B4        .byte $B4   ; 28 



tbl_F2BA:
- D 3 - - - 0x0032CA 00:F2BA: FF        .byte $FF   ; 00 
- D 3 - - - 0x0032CB 00:F2BB: FF        .byte $FF   ; 01 
- D 3 - - - 0x0032CC 00:F2BC: FF        .byte $FF   ; 02 
- D 3 - - - 0x0032CD 00:F2BD: FF        .byte $FF   ; 03 
- D 3 - - - 0x0032CE 00:F2BE: FF        .byte $FF   ; 04 
- D 3 - - - 0x0032CF 00:F2BF: FF        .byte $FF   ; 05 
- D 3 - - - 0x0032D0 00:F2C0: FF        .byte $FF   ; 06 
- D 3 - - - 0x0032D1 00:F2C1: 1B        .byte $1B   ; 07 
- D 3 - - - 0x0032D2 00:F2C2: 0A        .byte $0A   ; 08 
- D 3 - - - 0x0032D3 00:F2C3: 41        .byte $41   ; 09 
- D 3 - - - 0x0032D4 00:F2C4: 0B        .byte $0B   ; 0A 
- D 3 - - - 0x0032D5 00:F2C5: D4        .byte $D4   ; 0B 
- D 3 - - - 0x0032D6 00:F2C6: 9E        .byte $9E   ; 0C 
- D 3 - - - 0x0032D7 00:F2C7: 02        .byte $02   ; 0D 
- D 3 - - - 0x0032D8 00:F2C8: 88        .byte $88   ; 0E 
- D 3 - - - 0x0032D9 00:F2C9: D8        .byte $D8   ; 0F 
- D 3 - - - 0x0032DA 00:F2CA: 02        .byte $02   ; 10 
- D 3 - - - 0x0032DB 00:F2CB: 02        .byte $02   ; 11 
- D 3 - - - 0x0032DC 00:F2CC: 04        .byte $04   ; 12 
- D 3 - - - 0x0032DD 00:F2CD: 04        .byte $04   ; 13 
- D 3 - - - 0x0032DE 00:F2CE: 04        .byte $04   ; 14 
- D 3 - - - 0x0032DF 00:F2CF: 04        .byte $04   ; 15 
- D 3 - - - 0x0032E0 00:F2D0: 10        .byte $10   ; 16 
- D 3 - - - 0x0032E1 00:F2D1: 10        .byte $10   ; 17 
- D 3 - - - 0x0032E2 00:F2D2: 01        .byte $01   ; 18 
- D 3 - - - 0x0032E3 00:F2D3: 40        .byte $40   ; 19 
- D 3 - - - 0x0032E4 00:F2D4: 60        .byte $60   ; 1A 
- D 3 - - - 0x0032E5 00:F2D5: 80        .byte $80   ; 1B 
- D 3 - - - 0x0032E6 00:F2D6: 02        .byte $02   ; 1C 
- D 3 - - - 0x0032E7 00:F2D7: 80        .byte $80   ; 1D 
- D 3 - - - 0x0032E8 00:F2D8: 20        .byte $20   ; 1E 
- D 3 - - - 0x0032E9 00:F2D9: 2B        .byte $2B   ; 1F 
- D 3 - - - 0x0032EA 00:F2DA: 09        .byte $09   ; 20 
- D 3 - - - 0x0032EB 00:F2DB: A2        .byte $A2   ; 21 
- D 3 - - - 0x0032EC 00:F2DC: 80        .byte $80   ; 22 
- D 3 - - - 0x0032ED 00:F2DD: 98        .byte $98   ; 23 
- D 3 - - - 0x0032EE 00:F2DE: 46        .byte $46   ; 24 
- D 3 - - - 0x0032EF 00:F2DF: A8        .byte $A8   ; 25 
- D 3 - - - 0x0032F0 00:F2E0: 28        .byte $28   ; 26 
- D 3 - - - 0x0032F1 00:F2E1: FF        .byte $FF   ; 27 
- D 3 - - - 0x0032F2 00:F2E2: FF        .byte $FF   ; 28 
- D 3 - - - 0x0032F3 00:F2E3: FF        .byte $FF   ; 29 



tbl_F2E4:
- D 3 - - - 0x0032F4 00:F2E4: E5        .byte $E5   ; 00 
- D 3 - - - 0x0032F5 00:F2E5: 38        .byte $38   ; 01 
- D 3 - - - 0x0032F6 00:F2E6: 38        .byte $38   ; 02 
- D 3 - - - 0x0032F7 00:F2E7: D9        .byte $D9   ; 03 
- D 3 - - - 0x0032F8 00:F2E8: 38        .byte $38   ; 04 
- D 3 - - - 0x0032F9 00:F2E9: 38        .byte $38   ; 05 
- D 3 - - - 0x0032FA 00:F2EA: DF        .byte $DF   ; 06 
- D 3 - - - 0x0032FB 00:F2EB: 38        .byte $38   ; 07 



sub_F2EC:
loc_F2EC:
C D 3 - - - 0x0032FC 00:F2EC: A5 52     LDA ram_buffer_offset
C - - - - - 0x0032FE 00:F2EE: 0D 00 03  ORA ram_buffer_index
C - - - - - 0x003301 00:F2F1: D0 67     BNE bra_F35A_RTS
C - - - - - 0x003303 00:F2F3: A5 8D     LDA ram_008D
C - - - - - 0x003305 00:F2F5: A8        TAY
C - - - - - 0x003306 00:F2F6: F0 62     BEQ bra_F35A_RTS
C - - - - - 0x003308 00:F2F8: C9 01     CMP #$01
C - - - - - 0x00330A 00:F2FA: F0 09     BEQ bra_F305
C - - - - - 0x00330C 00:F2FC: C9 3E     CMP #$3E
C - - - - - 0x00330E 00:F2FE: 90 2E     BCC bra_F32E
C - - - - - 0x003310 00:F300: A9 00     LDA #$00
C - - - - - 0x003312 00:F302: 85 8D     STA ram_008D
C - - - - - 0x003314 00:F304: 60        RTS
bra_F305:
C - - - - - 0x003315 00:F305: A9 FF     LDA #$FF
C - - - - - 0x003317 00:F307: A2 77     LDX #$77
bra_F309_loop:
C - - - - - 0x003319 00:F309: 9D 68 06  STA ram_0668_data,X
C - - - - - 0x00331C 00:F30C: CA        DEX
C - - - - - 0x00331D 00:F30D: 10 FA     BPL bra_F309_loop
C - - - - - 0x00331F 00:F30F: A9 00     LDA #$00
C - - - - - 0x003321 00:F311: 8D 46 03  STA ram_0346
C - - - - - 0x003324 00:F314: 8D 47 03  STA ram_0347
C - - - - - 0x003327 00:F317: A9 D8     LDA #$D8
C - - - - - 0x003329 00:F319: 8D 4A 03  STA ram_034A
C - - - - - 0x00332C 00:F31C: 20 5B F4  JSR sub_F45B
C - - - - - 0x00332F 00:F31F: A5 59     LDA ram_mountain_current
C - - - - - 0x003331 00:F321: 29 07     AND #$07
C - - - - - 0x003333 00:F323: AA        TAX
C - - - - - 0x003334 00:F324: A9 00     LDA #$00
C - - - - - 0x003336 00:F326: 38        SEC
bra_F327_loop:
C - - - - - 0x003337 00:F327: 6A        ROR
C - - - - - 0x003338 00:F328: CA        DEX
C - - - - - 0x003339 00:F329: 10 FC     BPL bra_F327_loop
C - - - - - 0x00333B 00:F32B: 8D 45 03  STA ram_0345
bra_F32E:
C - - - - - 0x00333E 00:F32E: 20 5B F3  JSR sub_F35B
C - - - - - 0x003341 00:F331: 20 D2 F3  JSR sub_F3D2
C - - - - - 0x003344 00:F334: E6 8D     INC ram_008D
C - - - - - 0x003346 00:F336: A5 8D     LDA ram_008D
C - - - - - 0x003348 00:F338: A2 08     LDX #$08
bra_F33A_loop:
C - - - - - 0x00334A 00:F33A: DD 2F F2  CMP tbl_F22F,X
C - - - - - 0x00334D 00:F33D: F0 04     BEQ bra_F343
C - - - - - 0x00334F 00:F33F: CA        DEX
C - - - - - 0x003350 00:F340: 10 F8     BPL bra_F33A_loop
C - - - - - 0x003352 00:F342: 60        RTS
bra_F343:
C - - - - - 0x003353 00:F343: A0 15     LDY #$15
C - - - - - 0x003355 00:F345: 8A        TXA
C - - - - - 0x003356 00:F346: F0 02     BEQ bra_F34A
C - - - - - 0x003358 00:F348: A0 06     LDY #$06
bra_F34A:
C - - - - - 0x00335A 00:F34A: BD 5E F2  LDA tbl_F25E_offset,X
C - - - - - 0x00335D 00:F34D: AA        TAX
bra_F34E_loop:
C - - - - - 0x00335E 00:F34E: BD 38 F2  LDA tbl_F240 - 8,X
C - - - - - 0x003361 00:F351: 99 05 03  STA ram_ppu_buffer + $04,Y
C - - - - - 0x003364 00:F354: CA        DEX
C - - - - - 0x003365 00:F355: 30 03     BMI bra_F35A_RTS
C - - - - - 0x003367 00:F357: 88        DEY
C - - - - - 0x003368 00:F358: D0 F4     BNE bra_F34E_loop
bra_F35A_RTS:
C - - - - - 0x00336A 00:F35A: 60        RTS



sub_F35B:
C - - - - - 0x00336B 00:F35B: A9 38     LDA #$38
C - - - - - 0x00336D 00:F35D: 2C        .byte $2C   ; BIT opcode
C - - - - - 0x00336E 00:F35E: 2C A9 90  LDA #$90
C - - - - - 0x003370 00:F360: A0 1F     LDY #$1F
bra_F362_loop:
C - - - - - 0x003372 00:F362: 99 04 03  STA ram_ppu_buffer + $03,Y
C - - - - - 0x003375 00:F365: 88        DEY
C - - - - - 0x003376 00:F366: 10 FA     BPL bra_F362_loop
C - - - - - 0x003378 00:F368: A9 23     LDA #$23
C - - - - - 0x00337A 00:F36A: 8D 00 03  STA ram_buffer_index
C - - - - - 0x00337D 00:F36D: AD 49 03  LDA ram_0349_ppu_hi
C - - - - - 0x003380 00:F370: 8D 01 03  STA ram_ppu_buffer
C - - - - - 0x003383 00:F373: AD 48 03  LDA ram_0348_ppu_lo
C - - - - - 0x003386 00:F376: 8D 02 03  STA ram_ppu_buffer + $01
C - - - - - 0x003389 00:F379: A9 20     LDA #$20
C - - - - - 0x00338B 00:F37B: 8D 03 03  STA ram_ppu_buffer + $02
C - - - - - 0x00338E 00:F37E: A9 00     LDA #$00
C - - - - - 0x003390 00:F380: 8D 24 03  STA ram_ppu_buffer + $23
C - - - - - 0x003393 00:F383: A4 8D     LDY ram_008D
C - - - - - 0x003395 00:F385: C0 2E     CPY #$2E
C - - - - - 0x003397 00:F387: B0 48     BCS bra_F3D1_RTS
C - - - - - 0x003399 00:F389: 88        DEY
C - - - - - 0x00339A 00:F38A: 98        TYA
C - - - - - 0x00339B 00:F38B: A0 00     LDY #$00
bra_F38D_loop:
C - - - - - 0x00339D 00:F38D: 38        SEC
C - - - - - 0x00339E 00:F38E: E9 07     SBC #$07
C - - - - - 0x0033A0 00:F390: 90 03     BCC bra_F395
C - - - - - 0x0033A2 00:F392: C8        INY
C - - - - - 0x0033A3 00:F393: B0 F8     BCS bra_F38D_loop    ; jmp
bra_F395:
C - - - - - 0x0033A5 00:F395: 98        TYA
C - - - - - 0x0033A6 00:F396: 85 00     STA ram_0000
C - - - - - 0x0033A8 00:F398: 49 FF     EOR #$FF
C - - - - - 0x0033AA 00:F39A: 38        SEC
C - - - - - 0x0033AB 00:F39B: 69 1D     ADC #$1D
C - - - - - 0x0033AD 00:F39D: 48        PHA
C - - - - - 0x0033AE 00:F39E: A8        TAY
bra_F39F_loop:
C - - - - - 0x0033AF 00:F39F: A2 04     LDX #$04
bra_F3A1_loop:
; 0019-001D
C - - - - - 0x0033B1 00:F3A1: 36 19     ROL ram_random + $01,X
C - - - - - 0x0033B3 00:F3A3: CA        DEX
C - - - - - 0x0033B4 00:F3A4: 10 FB     BPL bra_F3A1_loop
C - - - - - 0x0033B6 00:F3A6: A5 19     LDA ram_random + $01
C - - - - - 0x0033B8 00:F3A8: 29 07     AND #$07
C - - - - - 0x0033BA 00:F3AA: AA        TAX
C - - - - - 0x0033BB 00:F3AB: BD E4 F2  LDA tbl_F2E4,X
C - - - - - 0x0033BE 00:F3AE: 99 04 03  STA ram_ppu_buffer + $03,Y
C - - - - - 0x0033C1 00:F3B1: 88        DEY
C - - - - - 0x0033C2 00:F3B2: C4 00     CPY ram_0000
C - - - - - 0x0033C4 00:F3B4: D0 E9     BNE bra_F39F_loop
C - - - - - 0x0033C6 00:F3B6: 68        PLA
C - - - - - 0x0033C7 00:F3B7: A8        TAY
C - - - - - 0x0033C8 00:F3B8: 20 BD F3  JSR sub_F3BD
C - - - - - 0x0033CB 00:F3BB: A4 00     LDY ram_0000
sub_F3BD:
C - - - - - 0x0033CD 00:F3BD: A5 8D     LDA ram_008D
C - - - - - 0x0033CF 00:F3BF: 29 01     AND #$01
C - - - - - 0x0033D1 00:F3C1: D0 03     BNE bra_F3C6
C - - - - - 0x0033D3 00:F3C3: A9 55     LDA #$55
C - - - - - 0x0033D5 00:F3C5: 2C        .byte $2C   ; BIT opcode
bra_F3C6:
C - - - - - 0x0033D6 00:F3C6: A9 58     LDA #$58
C - - - - - 0x0033D8 00:F3C8: 99 04 03  STA ram_ppu_buffer + $03,Y
C - - - - - 0x0033DB 00:F3CB: 99 05 03  STA ram_ppu_buffer + $04,Y
C - - - - - 0x0033DE 00:F3CE: 99 06 03  STA ram_ppu_buffer + $05,Y
bra_F3D1_RTS:
C - - - - - 0x0033E1 00:F3D1: 60        RTS



sub_F3D2:
loc_F3D2:
C D 3 - - - 0x0033E2 00:F3D2: AC 46 03  LDY ram_0346
C - - - - - 0x0033E5 00:F3D5: B9 BA F2  LDA tbl_F2BA,Y
C - - - - - 0x0033E8 00:F3D8: 2D 45 03  AND ram_0345
C - - - - - 0x0033EB 00:F3DB: F0 53     BEQ bra_F430
C - - - - - 0x0033ED 00:F3DD: B9 67 F2  LDA tbl_F267,Y
C - - - - - 0x0033F0 00:F3E0: C5 8D     CMP ram_008D
C - - - - - 0x0033F2 00:F3E2: D0 52     BNE bra_F436
C - - - - - 0x0033F4 00:F3E4: B9 91 F2  LDA tbl_F291,Y
C - - - - - 0x0033F7 00:F3E7: 48        PHA
C - - - - - 0x0033F8 00:F3E8: 29 1F     AND #$1F
C - - - - - 0x0033FA 00:F3EA: A8        TAY
C - - - - - 0x0033FB 00:F3EB: 68        PLA
C - - - - - 0x0033FC 00:F3EC: 4A        LSR
C - - - - - 0x0033FD 00:F3ED: 4A        LSR
C - - - - - 0x0033FE 00:F3EE: 4A        LSR
C - - - - - 0x0033FF 00:F3EF: 4A        LSR
C - - - - - 0x003400 00:F3F0: 4A        LSR
C - - - - - 0x003401 00:F3F1: AA        TAX
C - - - - - 0x003402 00:F3F2: 84 00     STY ram_0000
C - - - - - 0x003404 00:F3F4: 86 01     STX ram_0001
C - - - - - 0x003406 00:F3F6: A9 EB     LDA #$EB
bra_F3F8_loop:
C - - - - - 0x003408 00:F3F8: 99 04 03  STA ram_ppu_buffer + $03,Y
C - - - - - 0x00340B 00:F3FB: C8        INY
C - - - - - 0x00340C 00:F3FC: CA        DEX
C - - - - - 0x00340D 00:F3FD: 10 F9     BPL bra_F3F8_loop
C - - - - - 0x00340F 00:F3FF: AC 47 03  LDY ram_0347
C - - - - - 0x003412 00:F402: A5 00     LDA ram_0000
C - - - - - 0x003414 00:F404: 48        PHA
C - - - - - 0x003415 00:F405: 0A        ASL
C - - - - - 0x003416 00:F406: 0A        ASL
C - - - - - 0x003417 00:F407: 0A        ASL
C - - - - - 0x003418 00:F408: 99 68 06  STA ram_0668_data,Y
C - - - - - 0x00341B 00:F40B: 68        PLA
C - - - - - 0x00341C 00:F40C: 38        SEC
C - - - - - 0x00341D 00:F40D: 65 01     ADC ram_0001
C - - - - - 0x00341F 00:F40F: 0A        ASL
C - - - - - 0x003420 00:F410: 0A        ASL
C - - - - - 0x003421 00:F411: 0A        ASL
C - - - - - 0x003422 00:F412: 99 86 06  STA ram_0686_data,Y
C - - - - - 0x003425 00:F415: AD 4A 03  LDA ram_034A
C - - - - - 0x003428 00:F418: 99 A4 06  STA ram_06A4,Y
C - - - - - 0x00342B 00:F41B: 18        CLC
C - - - - - 0x00342C 00:F41C: 69 03     ADC #$03
C - - - - - 0x00342E 00:F41E: 99 C2 06  STA ram_06C2_data,Y
C - - - - - 0x003431 00:F421: A9 00     LDA #$00
C - - - - - 0x003433 00:F423: A2 1D     LDX #$1D
C - - - - - 0x003435 00:F425: E4 8D     CPX ram_008D
C - - - - - 0x003437 00:F427: 90 01     BCC bra_F42A
C - - - - - 0x003439 00:F429: 2A        ROL
bra_F42A:
C - - - - - 0x00343A 00:F42A: 99 E0 06  STA ram_06E0_bouns_stage_data,Y
C - - - - - 0x00343D 00:F42D: EE 47 03  INC ram_0347
bra_F430:
C - - - - - 0x003440 00:F430: EE 46 03  INC ram_0346
C - - - - - 0x003443 00:F433: 4C D2 F3  JMP loc_F3D2
bra_F436:
C - - - - - 0x003446 00:F436: AD 4A 03  LDA ram_034A
C - - - - - 0x003449 00:F439: 38        SEC
C - - - - - 0x00344A 00:F43A: E9 08     SBC #$08
C - - - - - 0x00344C 00:F43C: 8D 4A 03  STA ram_034A
C - - - - - 0x00344F 00:F43F: AD 48 03  LDA ram_0348_ppu_lo
C - - - - - 0x003452 00:F442: 38        SEC
C - - - - - 0x003453 00:F443: E9 20     SBC #< $0020
C - - - - - 0x003455 00:F445: 8D 48 03  STA ram_0348_ppu_lo
C - - - - - 0x003458 00:F448: AD 49 03  LDA ram_0349_ppu_hi
C - - - - - 0x00345B 00:F44B: E9 00     SBC #> $0020
C - - - - - 0x00345D 00:F44D: 8D 49 03  STA ram_0349_ppu_hi
C - - - - - 0x003460 00:F450: C9 1F     CMP #$1F
C - - - - - 0x003462 00:F452: F0 07     BEQ bra_F45B
C - - - - - 0x003464 00:F454: C9 27     CMP #$27
C - - - - - 0x003466 00:F456: D0 0D     BNE bra_F465_RTS
C - - - - - 0x003468 00:F458: A9 23     LDA #$23    ; > $23A0
C - - - - - 0x00346A 00:F45A: 2C        .byte $2C   ; BIT opcode
bra_F45B:
sub_F45B:
C - - - - - 0x00346B 00:F45B: A9 2B     LDA #$2B    ; > $2BA0
C - - - - - 0x00346D 00:F45D: 8D 49 03  STA ram_0349_ppu_hi
C - - - - - 0x003470 00:F460: A9 A0     LDA #$A0    ; < $23A0 or < $2BA0
C - - - - - 0x003472 00:F462: 8D 48 03  STA ram_0348_ppu_lo
bra_F465_RTS:
C - - - - - 0x003475 00:F465: 60        RTS



tbl_F466:
- D 3 - - - 0x003476 00:F466: EE        .byte $EE   ; 00 
- D 3 - - - 0x003477 00:F467: F4        .byte $F4   ; 01 
- D 3 - - - 0x003478 00:F468: 38        .byte $38   ; 02 
- D 3 - - - 0x003479 00:F469: E8        .byte $E8   ; 03 



tbl_F46A:
- D 3 - - - 0x00347A 00:F46A: 20        .byte $20   ; 00 
- D 3 - - - 0x00347B 00:F46B: 90        .byte $90   ; 01 



tbl_F46C:
- D 3 - - - 0x00347C 00:F46C: 1E        .byte $1E   ; 00 
- - - - - - 0x00347D 00:F46D: 00        .byte $00   ; 01 
- D 3 - - - 0x00347E 00:F46E: 10        .byte $10   ; 02 



tbl_F46F:
- D 3 - - - 0x00347F 00:F46F: 00        .byte $00   ; 00 
- D 3 - - - 0x003480 00:F470: 24        .byte $24   ; 01 



sub_F471:
C - - - - - 0x003481 00:F471: A6 58     LDX ram_game_mode
C - - - - - 0x003483 00:F473: A5 84     LDA ram_0084_plr
C - - - - - 0x003485 00:F475: D0 22     BNE bra_F499_loop
bra_F477_loop:
C - - - - - 0x003487 00:F477: A0 00     LDY #$00
C - - - - - 0x003489 00:F479: 94 6C     STY ram_006C_plr,X
C - - - - - 0x00348B 00:F47B: C8        INY ; 01
C - - - - - 0x00348C 00:F47C: 94 E4     STY ram_00E4_plr,X
C - - - - - 0x00348E 00:F47E: C8        INY ; 02
C - - - - - 0x00348F 00:F47F: 94 6A     STY ram_plr_handler,X
C - - - - - 0x003491 00:F481: A9 F0     LDA #$F0
C - - - - - 0x003493 00:F483: 95 E2     STA ram_00E2_plr,X
C - - - - - 0x003495 00:F485: A9 3F     LDA #$3F
C - - - - - 0x003497 00:F487: 95 66     STA ram_plr_pos_Y,X
C - - - - - 0x003499 00:F489: CA        DEX
C - - - - - 0x00349A 00:F48A: 10 EB     BPL bra_F477_loop
C - - - - - 0x00349C 00:F48C: A6 1E     LDX ram_001E
C - - - - - 0x00349E 00:F48E: F0 04     BEQ bra_F494
C - - - - - 0x0034A0 00:F490: A9 00     LDA #$00
C - - - - - 0x0034A2 00:F492: 95 69     STA ram_plr_handler - $01,X
bra_F494:
C - - - - - 0x0034A4 00:F494: E6 84     INC ram_0084_plr
C - - - - - 0x0034A6 00:F496: 4C 3B F6  JMP loc_F63B
bra_F499_loop:
C - - - - - 0x0034A9 00:F499: B5 37     LDA ram_0037_plr_timer,X
C - - - - - 0x0034AB 00:F49B: D0 03     BNE bra_F4A0
C - - - - - 0x0034AD 00:F49D: 20 04 F5  JSR sub_F504
bra_F4A0:
C - - - - - 0x0034B0 00:F4A0: B5 66     LDA ram_plr_pos_Y,X
C - - - - - 0x0034B2 00:F4A2: 85 01     STA ram_0001
C - - - - - 0x0034B4 00:F4A4: B5 6A     LDA ram_plr_handler,X
C - - - - - 0x0034B6 00:F4A6: 15 6C     ORA ram_006C_plr,X
C - - - - - 0x0034B8 00:F4A8: 48        PHA
C - - - - - 0x0034B9 00:F4A9: C9 01     CMP #$01
C - - - - - 0x0034BB 00:F4AB: D0 1C     BNE bra_F4C9
C - - - - - 0x0034BD 00:F4AD: A5 01     LDA ram_0001
C - - - - - 0x0034BF 00:F4AF: C9 3F     CMP #$3F
C - - - - - 0x0034C1 00:F4B1: D0 04     BNE bra_F4B7
C - - - - - 0x0034C3 00:F4B3: A9 04     LDA #con_sfx_3_plr_jump
C - - - - - 0x0034C5 00:F4B5: 85 FF     STA ram_sfx_3
bra_F4B7:
C - - - - - 0x0034C7 00:F4B7: A9 00     LDA #$00
C - - - - - 0x0034C9 00:F4B9: 95 2F     STA ram_002F_plr,X
C - - - - - 0x0034CB 00:F4BB: 8A        TXA
C - - - - - 0x0034CC 00:F4BC: 20 3D C8  JSR sub_C83D
C - - - - - 0x0034CF 00:F4BF: A5 01     LDA ram_0001
C - - - - - 0x0034D1 00:F4C1: C9 3F     CMP #$3F
C - - - - - 0x0034D3 00:F4C3: 90 02     BCC bra_F4C7_not_overflow
C - - - - - 0x0034D5 00:F4C5: A9 3F     LDA #$3F
bra_F4C7_not_overflow:
C - - - - - 0x0034D7 00:F4C7: 95 66     STA ram_plr_pos_Y,X
bra_F4C9:
C - - - - - 0x0034D9 00:F4C9: 68        PLA
C - - - - - 0x0034DA 00:F4CA: 48        PHA
C - - - - - 0x0034DB 00:F4CB: A8        TAY
C - - - - - 0x0034DC 00:F4CC: B9 66 F4  LDA tbl_F466,Y
C - - - - - 0x0034DF 00:F4CF: 85 02     STA ram_0002
C - - - - - 0x0034E1 00:F4D1: BD 6A F4  LDA tbl_F46A,X
C - - - - - 0x0034E4 00:F4D4: 85 00     STA ram_0000
C - - - - - 0x0034E6 00:F4D6: 85 0E     STA ram_000E
C - - - - - 0x0034E8 00:F4D8: A9 00     LDA #$00
C - - - - - 0x0034EA 00:F4DA: 85 0F     STA ram_000F
C - - - - - 0x0034EC 00:F4DC: 8A        TXA
C - - - - - 0x0034ED 00:F4DD: 48        PHA
C - - - - - 0x0034EE 00:F4DE: A8        TAY
C - - - - - 0x0034EF 00:F4DF: C8        INY
C - - - - - 0x0034F0 00:F4E0: 20 FC EA  JSR sub_EAFC
C - - - - - 0x0034F3 00:F4E3: 68        PLA
C - - - - - 0x0034F4 00:F4E4: AA        TAX
C - - - - - 0x0034F5 00:F4E5: 68        PLA
C - - - - - 0x0034F6 00:F4E6: C9 01     CMP #$01
C - - - - - 0x0034F8 00:F4E8: D0 16     BNE bra_F500
C - - - - - 0x0034FA 00:F4EA: BD 6F F4  LDA tbl_F46F,X
C - - - - - 0x0034FD 00:F4ED: A8        TAY
C - - - - - 0x0034FE 00:F4EE: B9 03 02  LDA ram_spr_X,Y
C - - - - - 0x003501 00:F4F1: 18        CLC
C - - - - - 0x003502 00:F4F2: 69 08     ADC #$08
C - - - - - 0x003504 00:F4F4: 99 03 02  STA ram_spr_X,Y
C - - - - - 0x003507 00:F4F7: B9 0F 02  LDA ram_spr_X + $0C,Y
C - - - - - 0x00350A 00:F4FA: 18        CLC
C - - - - - 0x00350B 00:F4FB: 69 08     ADC #$08
C - - - - - 0x00350D 00:F4FD: 99 0F 02  STA ram_spr_X + $0C,Y
bra_F500:
C - - - - - 0x003510 00:F500: CA        DEX
C - - - - - 0x003511 00:F501: 10 96     BPL bra_F499_loop
C - - - - - 0x003513 00:F503: 60        RTS



sub_F504:
C - - - - - 0x003514 00:F504: B4 6A     LDY ram_plr_handler,X
C - - - - - 0x003516 00:F506: B9 6C F4  LDA tbl_F46C,Y
C - - - - - 0x003519 00:F509: 95 37     STA ram_0037_plr_timer,X
C - - - - - 0x00351B 00:F50B: B5 6C     LDA ram_006C_plr,X
C - - - - - 0x00351D 00:F50D: 49 01     EOR #$01
C - - - - - 0x00351F 00:F50F: 95 6C     STA ram_006C_plr,X
C - - - - - 0x003521 00:F511: D0 04     BNE bra_F517
C - - - - - 0x003523 00:F513: A9 08     LDA #con_sfx_3_kill_seal_or_ice
C - - - - - 0x003525 00:F515: 85 FF     STA ram_sfx_3
bra_F517:
C - - - - - 0x003527 00:F517: A9 00     LDA #$00
C - - - - - 0x003529 00:F519: 95 E0     STA ram_00E0_plr,X
C - - - - - 0x00352B 00:F51B: 60        RTS



tbl_F51C_start_index:
- D 3 - - - 0x00352C 00:F51C: 20        .byte $20   ; 01 041B-0420
- D 3 - - - 0x00352D 00:F51D: 89        .byte $89   ; 02 0484-0489



tbl_F51E:
- D 3 - - - 0x00352E 00:F51E: 94        .byte $94   ; 00 
- D 3 - - - 0x00352F 00:F51F: 3B        .byte $3B   ; 01 
- D 3 - - - 0x003530 00:F520: 5A        .byte $5A   ; 02 
- D 3 - - - 0x003531 00:F521: 5A        .byte $5A   ; 03 
- D 3 - - - 0x003532 00:F522: 3D        .byte $3D   ; 04 
- D 3 - - - 0x003533 00:F523: 8E        .byte $8E   ; 05 



sub_F524:
C - - - - - 0x003534 00:F524: A6 1E     LDX ram_001E
C - - - - - 0x003536 00:F526: F0 0F     BEQ bra_F537_RTS
C - - - - - 0x003538 00:F528: BC 1B F5  LDY tbl_F51C_start_index - $01,X
C - - - - - 0x00353B 00:F52B: A2 05     LDX #$05
bra_F52D_loop:
C - - - - - 0x00353D 00:F52D: BD 1E F5  LDA tbl_F51E,X
C - - - - - 0x003540 00:F530: 99 00 04  STA ram_0400_data,Y
C - - - - - 0x003543 00:F533: 88        DEY
C - - - - - 0x003544 00:F534: CA        DEX
C - - - - - 0x003545 00:F535: 10 F6     BPL bra_F52D_loop
bra_F537_RTS:
C - - - - - 0x003547 00:F537: 60        RTS



tbl_F538:
; 02 
- D 3 - - - 0x003548 00:F538: 22        .byte $22   ; 00 
- D 3 - - - 0x003549 00:F539: 93        .byte $93   ; 01 
- D 3 - - - 0x00354A 00:F53A: 02        .byte $02   ; 02 
; 05 
- D 3 - - - 0x00354B 00:F53B: 20        .byte $20   ; 00 
- D 3 - - - 0x00354C 00:F53C: 73        .byte $73   ; 01 
- D 3 - - - 0x00354D 00:F53D: 02        .byte $02   ; 02 



sub_F53E:
C - - - - - 0x00354E 00:F53E: A4 59     LDY ram_mountain_current
C - - - - - 0x003550 00:F540: 88        DEY
C - - - - - 0x003551 00:F541: A5 14     LDA ram_btn_hold
C - - - - - 0x003553 00:F543: 29 0F     AND #con_btns_Dpad
C - - - - - 0x003555 00:F545: F0 19     BEQ bra_F560
C - - - - - 0x003557 00:F547: 29 05     AND #con_btn_Down + con_btn_Right
C - - - - - 0x003559 00:F549: F0 02     BEQ bra_F54D
C - - - - - 0x00355B 00:F54B: C8        INY
C - - - - - 0x00355C 00:F54C: C8        INY
bra_F54D:
C - - - - - 0x00355D 00:F54D: 98        TYA
C - - - - - 0x00355E 00:F54E: 29 1F     AND #$1F
C - - - - - 0x003560 00:F550: A4 37     LDY ram_0037_plr_timer
C - - - - - 0x003562 00:F552: D0 0E     BNE bra_F562
C - - - - - 0x003564 00:F554: 85 59     STA ram_mountain_current
C - - - - - 0x003566 00:F556: A9 80     LDA #$80
C - - - - - 0x003568 00:F558: 85 4E     STA ram_spawn_timer_lo_bird
C - - - - - 0x00356A 00:F55A: A9 08     LDA #con_sfx_2_08
C - - - - - 0x00356C 00:F55C: 85 FE     STA ram_sfx_2
C - - - - - 0x00356E 00:F55E: A9 0F     LDA #$0F
bra_F560:
C - - - - - 0x003570 00:F560: 85 37     STA ram_0037_plr_timer
bra_F562:
C - - - - - 0x003572 00:F562: A0 02     LDY #$02
loc_F564:
C D 3 - - - 0x003574 00:F564: A2 02     LDX #$02
bra_F566_loop:
C - - - - - 0x003576 00:F566: B9 38 F5  LDA tbl_F538,Y
C - - - - - 0x003579 00:F569: 9D 01 03  STA ram_ppu_buffer,X
C - - - - - 0x00357C 00:F56C: 88        DEY
C - - - - - 0x00357D 00:F56D: CA        DEX
C - - - - - 0x00357E 00:F56E: 10 F6     BPL bra_F566_loop
C - - - - - 0x003580 00:F570: E8        INX
C - - - - - 0x003581 00:F571: 8E 06 03  STX ram_ppu_buffer + $05
C - - - - - 0x003584 00:F574: A4 59     LDY ram_mountain_current
C - - - - - 0x003586 00:F576: C8        INY
C - - - - - 0x003587 00:F577: 98        TYA
C - - - - - 0x003588 00:F578: 20 4A EA  JSR sub_EA4A_get_tens
C - - - - - 0x00358B 00:F57B: 8C 04 03  STY ram_ppu_buffer + $03
C - - - - - 0x00358E 00:F57E: 8D 05 03  STA ram_ppu_buffer + $04
C - - - - - 0x003591 00:F581: 60        RTS



tbl_F582:
- D 3 - - - 0x003592 00:F582: 00        .byte $00   ; 01 
- D 3 - - - 0x003593 00:F583: 05        .byte $05   ; 02 



tbl_F584:
- D 3 - - - 0x003594 00:F584: 00        .byte $00   ; 01 
- D 3 - - - 0x003595 00:F585: 0E        .byte $0E   ; 02 



sub_F586:
C - - - - - 0x003596 00:F586: A6 1E     LDX ram_001E
C - - - - - 0x003598 00:F588: F0 3A     BEQ bra_F5C4
C - - - - - 0x00359A 00:F58A: A9 21     LDA #$21
C - - - - - 0x00359C 00:F58C: 8D 01 03  STA ram_ppu_buffer
C - - - - - 0x00359F 00:F58F: A9 48     LDA #$48
C - - - - - 0x0035A1 00:F591: 18        CLC
C - - - - - 0x0035A2 00:F592: 7D 83 F5  ADC tbl_F584 - $01,X
C - - - - - 0x0035A5 00:F595: 8D 02 03  STA ram_ppu_buffer + $01
C - - - - - 0x0035A8 00:F598: A9 05     LDA #$05
C - - - - - 0x0035AA 00:F59A: 8D 03 03  STA ram_ppu_buffer + $02
C - - - - - 0x0035AD 00:F59D: 20 55 EA  JSR sub_EA55
C - - - - - 0x0035B0 00:F5A0: A6 1E     LDX ram_001E
C - - - - - 0x0035B2 00:F5A2: BC 81 F5  LDY tbl_F582 - $01,X
C - - - - - 0x0035B5 00:F5A5: 99 60 03  STA ram_plr_counter_stage_bonus,Y
C - - - - - 0x0035B8 00:F5A8: 20 4A EA  JSR sub_EA4A_get_tens
C - - - - - 0x0035BB 00:F5AB: C0 00     CPY #$00
C - - - - - 0x0035BD 00:F5AD: D0 02     BNE bra_F5B1
C - - - - - 0x0035BF 00:F5AF: A0 38     LDY #$38
bra_F5B1:
C - - - - - 0x0035C1 00:F5B1: 8C 04 03  STY ram_ppu_buffer + $03
C - - - - - 0x0035C4 00:F5B4: 8D 05 03  STA ram_ppu_buffer + $04
C - - - - - 0x0035C7 00:F5B7: A2 03     LDX #$03
C - - - - - 0x0035C9 00:F5B9: A9 00     LDA #$00
bra_F5BB_loop:
C - - - - - 0x0035CB 00:F5BB: 9D 06 03  STA ram_ppu_buffer + $05,X
C - - - - - 0x0035CE 00:F5BE: CA        DEX
C - - - - - 0x0035CF 00:F5BF: 10 FA     BPL bra_F5BB_loop
C - - - - - 0x0035D1 00:F5C1: 20 4E C1  JSR sub_C14E
bra_F5C4:
C - - - - - 0x0035D4 00:F5C4: A0 05     LDY #$05
C - - - - - 0x0035D6 00:F5C6: 4C 64 F5  JMP loc_F564



tbl_F5C9:
- D 3 - - - 0x0035D9 00:F5C9: 52        .byte $52   ; 00 
- D 3 - - - 0x0035DA 00:F5CA: 70        .byte $70   ; 01 
- D 3 - - - 0x0035DB 00:F5CB: AE        .byte $AE   ; 02 
- D 3 - - - 0x0035DC 00:F5CC: B6        .byte $B6   ; 03 
- D 3 - - - 0x0035DD 00:F5CD: BA        .byte $BA   ; 04 
- D 3 - - - 0x0035DE 00:F5CE: C2        .byte $C2   ; 05 
- D 3 - - - 0x0035DF 00:F5CF: C6        .byte $C6   ; 06 
- D 3 - - - 0x0035E0 00:F5D0: CA        .byte $CA   ; 07 
- D 3 - - - 0x0035E1 00:F5D1: BE        .byte $BE   ; 08 
- D 3 - - - 0x0035E2 00:F5D2: FA        .byte $FA   ; 09 



tbl_F5D3:
- D 3 - - - 0x0035E3 00:F5D3: 30        .byte $30   ; 00 
- D 3 - - - 0x0035E4 00:F5D4: 13        .byte $13   ; 01 
- D 3 - - - 0x0035E5 00:F5D5: 01        .byte $01   ; 02 
- D 3 - - - 0x0035E6 00:F5D6: 30        .byte $30   ; 03 
- D 3 - - - 0x0035E7 00:F5D7: 16        .byte $16   ; 04 
- D 3 - - - 0x0035E8 00:F5D8: 19        .byte $19   ; 05 
- D 3 - - - 0x0035E9 00:F5D9: 30        .byte $30   ; 06 
- D 3 - - - 0x0035EA 00:F5DA: 39        .byte $39   ; 07 
- D 3 - - - 0x0035EB 00:F5DB: 29        .byte $29   ; 08 
- D 3 - - - 0x0035EC 00:F5DC: 30        .byte $30   ; 09 
- D 3 - - - 0x0035ED 00:F5DD: 3A        .byte $3A   ; 0A 
- D 3 - - - 0x0035EE 00:F5DE: 1A        .byte $1A   ; 0B 
- D 3 - - - 0x0035EF 00:F5DF: 29        .byte $29   ; 0C 
- D 3 - - - 0x0035F0 00:F5E0: 26        .byte $26   ; 0D 
- D 3 - - - 0x0035F1 00:F5E1: 07        .byte $07   ; 0E 
- D 3 - - - 0x0035F2 00:F5E2: 30        .byte $30   ; 0F 
- D 3 - - - 0x0035F3 00:F5E3: 16        .byte $16   ; 10 
- D 3 - - - 0x0035F4 00:F5E4: 19        .byte $19   ; 11 
- D 3 - - - 0x0035F5 00:F5E5: 30        .byte $30   ; 12 
- D 3 - - - 0x0035F6 00:F5E6: 16        .byte $16   ; 13 
- D 3 - - - 0x0035F7 00:F5E7: 26        .byte $26   ; 14 
- D 3 - - - 0x0035F8 00:F5E8: 30        .byte $30   ; 15 
- D 3 - - - 0x0035F9 00:F5E9: 17        .byte $17   ; 16 
- D 3 - - - 0x0035FA 00:F5EA: 29        .byte $29   ; 17 
- D 3 - - - 0x0035FB 00:F5EB: 30        .byte $30   ; 18 
- D 3 - - - 0x0035FC 00:F5EC: 17        .byte $17   ; 19 
- D 3 - - - 0x0035FD 00:F5ED: 06        .byte $06   ; 1A 
- D 3 - - - 0x0035FE 00:F5EE: 30        .byte $30   ; 1B 
- D 3 - - - 0x0035FF 00:F5EF: 17        .byte $17   ; 1C 
- D 3 - - - 0x003600 00:F5F0: 06        .byte $06   ; 1D 
- D 3 - - - 0x003601 00:F5F1: 30        .byte $30   ; 1E 
- D 3 - - - 0x003602 00:F5F2: 16        .byte $16   ; 1F 
- D 3 - - - 0x003603 00:F5F3: 27        .byte $27   ; 20 
- D 3 - - - 0x003604 00:F5F4: 30        .byte $30   ; 21 
- D 3 - - - 0x003605 00:F5F5: 11        .byte $11   ; 22 
- D 3 - - - 0x003606 00:F5F6: 26        .byte $26   ; 23 
- D 3 - - - 0x003607 00:F5F7: 30        .byte $30   ; 24 
- D 3 - - - 0x003608 00:F5F8: 15        .byte $15   ; 25 



tbl_F5F9:
- D 3 - - - 0x003609 00:F5F9: 26        .byte $26   ; 00 
- D 3 - - - 0x00360A 00:F5FA: 30        .byte $30   ; 01 
- D 3 - - - 0x00360B 00:F5FB: 21        .byte $21   ; 02 
- D 3 - - - 0x00360C 00:F5FC: 26        .byte $26   ; 03 
- D 3 - - - 0x00360D 00:F5FD: 30        .byte $30   ; 04 
- D 3 - - - 0x00360E 00:F5FE: 25        .byte $25   ; 05 
- D 3 - - - 0x00360F 00:F5FF: 26        .byte $26   ; 06 
- D 3 - - - 0x003610 00:F600: 27        .byte $27   ; 07 
- D 3 - - - 0x003611 00:F601: 17        .byte $17   ; 08 
- D 3 - - - 0x003612 00:F602: 07        .byte $07   ; 09 
- D 3 - - - 0x003613 00:F603: 18        .byte $18   ; 0A 
- D 3 - - - 0x003614 00:F604: 10        .byte $10   ; 0B 
- D 3 - - - 0x003615 00:F605: 14        .byte $14   ; 0C 
- D 3 - - - 0x003616 00:F606: 10        .byte $10   ; 0D 
- D 3 - - - 0x003617 00:F607: 14        .byte $14   ; 0E 
- D 3 - - - 0x003618 00:F608: 1C        .byte $1C   ; 0F 



tbl_F609:
- D 3 - - - 0x003619 00:F609: 3F        .byte $3F   ; 00 
- D 3 - - - 0x00361A 00:F60A: 1C        .byte $1C   ; 01 
- D 3 - - - 0x00361B 00:F60B: 04        .byte $04   ; 02 
- D 3 - - - 0x00361C 00:F60C: 0F        .byte $0F   ; 03 



tbl_F60D:   ; bzk optimize, same bytes
- D 3 - - - 0x00361D 00:F60D: F0        .byte $F0   ; 00 
- - - - - - 0x00361E 00:F60E: F0        .byte $F0   ; 01 



sub_F60F:
C - - - - - 0x00361F 00:F60F: 20 3B F6  JSR sub_F63B
C - - - - - 0x003622 00:F612: A5 55     LDA ram_0055
C - - - - - 0x003624 00:F614: 29 01     AND #$01
C - - - - - 0x003626 00:F616: 45 51     EOR ram_0051
C - - - - - 0x003628 00:F618: AA        TAX
C - - - - - 0x003629 00:F619: BD 0D F6  LDA tbl_F60D,X
C - - - - - 0x00362C 00:F61C: 8D FD 05  STA ram_05FD
C - - - - - 0x00362F 00:F61F: A9 78     LDA #$78
C - - - - - 0x003631 00:F621: 8D FC 05  STA ram_05FC
loc_F624:
C D 3 - - - 0x003634 00:F624: A2 02     LDX #$02
bra_F626_loop:
C - - - - - 0x003636 00:F626: BD FC 05  LDA ram_05FC,X
C - - - - - 0x003639 00:F629: 95 00     STA ram_0000,X
C - - - - - 0x00363B 00:F62B: CA        DEX
C - - - - - 0x00363C 00:F62C: 10 F8     BPL bra_F626_loop
C - - - - - 0x00363E 00:F62E: A0 0D     LDY #$0D
sub_F630:
C - - - - - 0x003640 00:F630: A5 D5     LDA ram_00D4 + $01
C - - - - - 0x003642 00:F632: 85 0F     STA ram_000F
C - - - - - 0x003644 00:F634: A9 01     LDA #$01
C - - - - - 0x003646 00:F636: 85 0E     STA ram_000E
C - - - - - 0x003648 00:F638: 4C FC EA  JMP loc_EAFC



loc_F63B:
sub_F63B:
C D 3 - - - 0x00364B 00:F63B: A5 56     LDA ram_mountain_completed
bra_F63D_loop:
C - - - - - 0x00364D 00:F63D: C9 0A     CMP #$0A
C - - - - - 0x00364F 00:F63F: 90 04     BCC bra_F645
C - - - - - 0x003651 00:F641: E9 0A     SBC #$0A
C - - - - - 0x003653 00:F643: B0 F8     BCS bra_F63D_loop
bra_F645:
C - - - - - 0x003655 00:F645: AA        TAX
C - - - - - 0x003656 00:F646: BD C9 F5  LDA tbl_F5C9,X
C - - - - - 0x003659 00:F649: 8D FE 05  STA ram_05FE
sub_F64C:
C - - - - - 0x00365C 00:F64C: 86 0F     STX ram_000F
C - - - - - 0x00365E 00:F64E: 8A        TXA
C - - - - - 0x00365F 00:F64F: 0A        ASL
C - - - - - 0x003660 00:F650: 18        CLC
C - - - - - 0x003661 00:F651: 65 0F     ADC ram_000F
C - - - - - 0x003663 00:F653: A8        TAY
C - - - - - 0x003664 00:F654: AE 00 03  LDX ram_buffer_index
C - - - - - 0x003667 00:F657: A9 00     LDA #$00
C - - - - - 0x003669 00:F659: 9D 08 03  STA ram_ppu_buffer + $07,X
C - - - - - 0x00366C 00:F65C: A9 03     LDA #$03
C - - - - - 0x00366E 00:F65E: 85 00     STA ram_0000
bra_F660_loop:
C - - - - - 0x003670 00:F660: B9 D3 F5  LDA tbl_F5D3,Y
C - - - - - 0x003673 00:F663: 9D 05 03  STA ram_ppu_buffer + $04,X
C - - - - - 0x003676 00:F666: C8        INY
C - - - - - 0x003677 00:F667: E8        INX
C - - - - - 0x003678 00:F668: C6 00     DEC ram_0000
C - - - - - 0x00367A 00:F66A: D0 F4     BNE bra_F660_loop
C - - - - - 0x00367C 00:F66C: AE 00 03  LDX ram_buffer_index
C - - - - - 0x00367F 00:F66F: A0 00     LDY #$00
bra_F671_loop:
C - - - - - 0x003681 00:F671: B9 09 F6  LDA tbl_F609,Y
C - - - - - 0x003684 00:F674: 9D 01 03  STA ram_ppu_buffer,X
C - - - - - 0x003687 00:F677: E8        INX
C - - - - - 0x003688 00:F678: C8        INY
C - - - - - 0x003689 00:F679: C0 04     CPY #$04
C - - - - - 0x00368B 00:F67B: D0 F4     BNE bra_F671_loop
C - - - - - 0x00368D 00:F67D: 60        RTS



loc_F67E:
C D 3 - - - 0x00368E 00:F67E: A5 D6     LDA ram_giant_bird_X_pos
C - - - - - 0x003690 00:F680: 18        CLC
C - - - - - 0x003691 00:F681: 69 0A     ADC #$0A
C - - - - - 0x003693 00:F683: 8D FC 05  STA ram_05FC
C - - - - - 0x003696 00:F686: A5 D7     LDA ram_giant_bird_Y_pos
C - - - - - 0x003698 00:F688: 18        CLC
C - - - - - 0x003699 00:F689: 69 0E     ADC #$0E
C - - - - - 0x00369B 00:F68B: 8D FD 05  STA ram_05FD
C - - - - - 0x00369E 00:F68E: 4C 24 F6  JMP loc_F624



loc_F691:
sub_F691:
C D 3 - - - 0x0036A1 00:F691: 98        TYA
C - - - - - 0x0036A2 00:F692: 48        PHA
C - - - - - 0x0036A3 00:F693: BD F9 F5  LDA tbl_F5F9,X
C - - - - - 0x0036A6 00:F696: 48        PHA
C - - - - - 0x0036A7 00:F697: 20 4C F6  JSR sub_F64C
C - - - - - 0x0036AA 00:F69A: 68        PLA
C - - - - - 0x0036AB 00:F69B: AC 00 03  LDY ram_buffer_index
C - - - - - 0x0036AE 00:F69E: 99 02 03  STA ram_ppu_buffer + $01,Y
C - - - - - 0x0036B1 00:F6A1: 68        PLA
C - - - - - 0x0036B2 00:F6A2: A8        TAY
C - - - - - 0x0036B3 00:F6A3: 60        RTS



sub_F6A4:
C - - - - - 0x0036B4 00:F6A4: A5 3B     LDA ram_003A_plr_timer + $01
C - - - - - 0x0036B6 00:F6A6: D0 32     BNE bra_F6DA_RTS
C - - - - - 0x0036B8 00:F6A8: AD FA 07  LDA ram_07FA
C - - - - - 0x0036BB 00:F6AB: 0D FB 07  ORA ram_07FB
C - - - - - 0x0036BE 00:F6AE: F0 2B     BEQ bra_F6DB
C - - - - - 0x0036C0 00:F6B0: A9 02     LDA #$02
C - - - - - 0x0036C2 00:F6B2: 85 01     STA ram_0001
C - - - - - 0x0036C4 00:F6B4: A9 01     LDA #$01
C - - - - - 0x0036C6 00:F6B6: AC FB 07  LDY ram_07FB
C - - - - - 0x0036C9 00:F6B9: F0 02     BEQ bra_F6BD
C - - - - - 0x0036CB 00:F6BB: A9 11     LDA #$11
bra_F6BD:
C - - - - - 0x0036CD 00:F6BD: 48        PHA
C - - - - - 0x0036CE 00:F6BE: 20 4B C9  JSR sub_C94B
C - - - - - 0x0036D1 00:F6C1: A9 03     LDA #$03
C - - - - - 0x0036D3 00:F6C3: 85 01     STA ram_0001
C - - - - - 0x0036D5 00:F6C5: 68        PLA
C - - - - - 0x0036D6 00:F6C6: 20 4B C9  JSR sub_C94B
C - - - - - 0x0036D9 00:F6C9: A9 23     LDA #$23
C - - - - - 0x0036DB 00:F6CB: 20 E0 C8  JSR sub_C8E0
C - - - - - 0x0036DE 00:F6CE: A9 5D     LDA #$5D
C - - - - - 0x0036E0 00:F6D0: 8D 06 03  STA ram_ppu_buffer + $05
C - - - - - 0x0036E3 00:F6D3: 8D 0D 03  STA ram_ppu_buffer + $0C
C - - - - - 0x0036E6 00:F6D6: A9 06     LDA #$06
C - - - - - 0x0036E8 00:F6D8: 85 3B     STA ram_003A_plr_timer + $01
bra_F6DA_RTS:
C - - - - - 0x0036EA 00:F6DA: 60        RTS
bra_F6DB:
C - - - - - 0x0036EB 00:F6DB: 85 1E     STA ram_001E
C - - - - - 0x0036ED 00:F6DD: A9 06     LDA #$06
C - - - - - 0x0036EF 00:F6DF: 85 6A     STA ram_plr_handler
C - - - - - 0x0036F1 00:F6E1: A9 0A     LDA #$0A
C - - - - - 0x0036F3 00:F6E3: 85 4D     STA ram_004D_timer
C - - - - - 0x0036F5 00:F6E5: A9 80     LDA #con_music_off
C - - - - - 0x0036F7 00:F6E7: 85 FB     STA ram_music_1
C - - - - - 0x0036F9 00:F6E9: 60        RTS



tbl_F6EA_fruit_pos_Y:
; at bonus stages
- D 3 - - - 0x0036FA 00:F6EA: 10        .byte $10   ; 00 
- D 3 - - - 0x0036FB 00:F6EB: 40        .byte $40   ; 01 
- D 3 - - - 0x0036FC 00:F6EC: 98        .byte $98   ; 02 
- D 3 - - - 0x0036FD 00:F6ED: 98        .byte $98   ; 03 



tbl_F6EE_fruit_pos_X:
; at bonus stages
- D 3 - - - 0x0036FE 00:F6EE: 60        .byte $60   ; 00 
- D 3 - - - 0x0036FF 00:F6EF: A0        .byte $A0   ; 01 
- D 3 - - - 0x003700 00:F6F0: 30        .byte $30   ; 02 
- D 3 - - - 0x003701 00:F6F1: C0        .byte $C0   ; 03 



sub_F6F2:
C - - - - - 0x003702 00:F6F2: A2 0A     LDX #$0A
bra_F6F4_loop:
C - - - - - 0x003704 00:F6F4: A9 00     LDA #$00
C - - - - - 0x003706 00:F6F6: 95 91     STA ram_0091_obj,X ; 0091 0092 0093 0094 0095 0096 0097 0098 0099 009A 009B 
C - - - - - 0x003708 00:F6F8: E0 04     CPX #$04
C - - - - - 0x00370A 00:F6FA: B0 1D     BCS bra_F719
; X = 00-03
C - - - - - 0x00370C 00:F6FC: BD EE F6  LDA tbl_F6EE_fruit_pos_X,X
C - - - - - 0x00370F 00:F6FF: 95 9F     STA ram_009C_obj_pos_X + $03,X ; 009F 00A0 00A1 00A2 
C - - - - - 0x003711 00:F701: BD EA F6  LDA tbl_F6EA_fruit_pos_Y,X
C - - - - - 0x003714 00:F704: 95 AA     STA ram_00A7_obj_pos_Y + $03,X ; 00AA 00AB 00AC 00AD 
C - - - - - 0x003716 00:F706: A9 FF     LDA #$FF
C - - - - - 0x003718 00:F708: 95 94     STA ram_0091_obj + $03,X ; 0094 0095 0096 0097 
C - - - - - 0x00371A 00:F70A: 95 C0     STA ram_00BD_obj + $03,X ; 00C0 00C1 00C2 00C3 
C - - - - - 0x00371C 00:F70C: AD FE 05  LDA ram_05FE
C - - - - - 0x00371F 00:F70F: 9D E0 03  STA ram_03DD_obj + $03,X ; 03E0 03E1 03E2 03E3 
C - - - - - 0x003722 00:F712: 8A        TXA
C - - - - - 0x003723 00:F713: 18        CLC
C - - - - - 0x003724 00:F714: 69 4F     ADC #$4F
C - - - - - 0x003726 00:F716: 9D EB 03  STA ram_03E8_obj + $03,X ; 03EB 03EC 03ED 03EE 
bra_F719:
C - - - - - 0x003729 00:F719: CA        DEX
C - - - - - 0x00372A 00:F71A: 10 D8     BPL bra_F6F4_loop
C - - - - - 0x00372C 00:F71C: 60        RTS



sub_F71D:
C - - - - - 0x00372D 00:F71D: A2 03     LDX #$03
bra_F71F_loop:
C - - - - - 0x00372F 00:F71F: B5 94     LDA ram_0091_obj + $03,X
C - - - - - 0x003731 00:F721: C9 01     CMP #$01
C - - - - - 0x003733 00:F723: D0 07     BNE bra_F72C
C - - - - - 0x003735 00:F725: 8A        TXA
C - - - - - 0x003736 00:F726: 18        CLC
C - - - - - 0x003737 00:F727: 69 8F     ADC #$8F
C - - - - - 0x003739 00:F729: 9D EB 03  STA ram_03E8_obj + $03,X
bra_F72C:
C - - - - - 0x00373C 00:F72C: CA        DEX
C - - - - - 0x00373D 00:F72D: 10 F0     BPL bra_F71F_loop
C - - - - - 0x00373F 00:F72F: 60        RTS



tbl_F730:
- D 3 - - - 0x003740 00:F730: 3E        .byte $3E   ; 00 
- D 3 - - - 0x003741 00:F731: 46        .byte $46   ; 01 
- D 3 - - - 0x003742 00:F732: 46        .byte $46   ; 02 



tbl_F733:
- D 3 - - - 0x003743 00:F733: 50        .byte $50   ; 00 
- D 3 - - - 0x003744 00:F734: 51        .byte $51   ; 01 
- D 3 - - - 0x003745 00:F735: 4E        .byte $4E   ; 02 
- D 3 - - - 0x003746 00:F736: 4F        .byte $4F   ; 03 



sub_F737:
loc_F737:
C D 3 - - - 0x003747 00:F737: E6 D3     INC ram_00D3
C - - - - - 0x003749 00:F739: A5 D3     LDA ram_00D3
C - - - - - 0x00374B 00:F73B: C9 08     CMP #$08
C - - - - - 0x00374D 00:F73D: 90 10     BCC bra_F74F
C - - - - - 0x00374F 00:F73F: A9 00     LDA #$00
C - - - - - 0x003751 00:F741: 85 D3     STA ram_00D3
C - - - - - 0x003753 00:F743: E6 D4     INC ram_00D4
C - - - - - 0x003755 00:F745: A5 D4     LDA ram_00D4
C - - - - - 0x003757 00:F747: C9 03     CMP #$03
C - - - - - 0x003759 00:F749: 90 04     BCC bra_F74F
C - - - - - 0x00375B 00:F74B: A9 00     LDA #$00
C - - - - - 0x00375D 00:F74D: 85 D4     STA ram_00D4
bra_F74F:
C - - - - - 0x00375F 00:F74F: A4 D4     LDY ram_00D4
C - - - - - 0x003761 00:F751: B9 30 F7  LDA tbl_F730,Y
C - - - - - 0x003764 00:F754: 85 02     STA ram_0002
C - - - - - 0x003766 00:F756: A0 0E     LDY #$0E
C - - - - - 0x003768 00:F758: A5 D6     LDA ram_giant_bird_X_pos
C - - - - - 0x00376A 00:F75A: 85 00     STA ram_0000
C - - - - - 0x00376C 00:F75C: A5 D7     LDA ram_giant_bird_Y_pos
C - - - - - 0x00376E 00:F75E: 85 01     STA ram_0001
C - - - - - 0x003770 00:F760: 20 30 F6  JSR sub_F630
C - - - - - 0x003773 00:F763: A5 D4     LDA ram_00D4
C - - - - - 0x003775 00:F765: C9 02     CMP #$02
C - - - - - 0x003777 00:F767: D0 21     BNE bra_F78A_RTS
C - - - - - 0x003779 00:F769: A0 0C     LDY #$0C
C - - - - - 0x00377B 00:F76B: A2 03     LDX #$03
C - - - - - 0x00377D 00:F76D: A5 D5     LDA ram_00D4 + $01
C - - - - - 0x00377F 00:F76F: D0 02     BNE bra_F773
C - - - - - 0x003781 00:F771: A2 51     LDX #$51
bra_F773:
bra_F773_loop:
C - - - - - 0x003783 00:F773: A5 D5     LDA ram_00D4 + $01
C - - - - - 0x003785 00:F775: D0 06     BNE bra_F77D
C - - - - - 0x003787 00:F777: 8A        TXA
C - - - - - 0x003788 00:F778: 99 51 02  STA ram_spr_T + $50,Y
C - - - - - 0x00378B 00:F77B: D0 06     BNE bra_F783
bra_F77D:
C - - - - - 0x00378D 00:F77D: BD 33 F7  LDA tbl_F733,X
C - - - - - 0x003790 00:F780: 99 41 02  STA ram_spr_T + $40,Y
bra_F783:
C - - - - - 0x003793 00:F783: CA        DEX
C - - - - - 0x003794 00:F784: 88        DEY
C - - - - - 0x003795 00:F785: 88        DEY
C - - - - - 0x003796 00:F786: 88        DEY
C - - - - - 0x003797 00:F787: 88        DEY
C - - - - - 0x003798 00:F788: 10 E9     BPL bra_F773_loop
bra_F78A_RTS:
C - - - - - 0x00379A 00:F78A: 60        RTS



sub_F78B:
C - - - - - 0x00379B 00:F78B: A9 FF     LDA #$FF
C - - - - - 0x00379D 00:F78D: A6 D5     LDX ram_00D4 + $01
C - - - - - 0x00379F 00:F78F: F0 02     BEQ bra_F793
C - - - - - 0x0037A1 00:F791: A9 01     LDA #$01
bra_F793:
C - - - - - 0x0037A3 00:F793: 18        CLC
C - - - - - 0x0037A4 00:F794: 65 D6     ADC ram_giant_bird_X_pos
C - - - - - 0x0037A6 00:F796: 85 D6     STA ram_giant_bird_X_pos
C - - - - - 0x0037A8 00:F798: C9 60     CMP #$60
C - - - - - 0x0037AA 00:F79A: D0 06     BNE bra_F7A2
C - - - - - 0x0037AC 00:F79C: A5 19     LDA ram_random + $01
C - - - - - 0x0037AE 00:F79E: 29 01     AND #$01
C - - - - - 0x0037B0 00:F7A0: 85 D5     STA ram_00D4 + $01
bra_F7A2:
C - - - - - 0x0037B2 00:F7A2: A5 13     LDA ram_scroll_Y
C - - - - - 0x0037B4 00:F7A4: 05 27     ORA ram_0027_flag
C - - - - - 0x0037B6 00:F7A6: D0 E2     BNE bra_F78A_RTS
C - - - - - 0x0037B8 00:F7A8: 4C 37 F7  JMP loc_F737



sub_F7AB_get_random_value:
; X = 00-02
C - - - - - 0x0037BB 00:F7AB: A5 56     LDA ram_mountain_completed
C - - - - - 0x0037BD 00:F7AD: 29 3C     AND #$3C
C - - - - - 0x0037BF 00:F7AF: 49 3C     EOR #$3C
C - - - - - 0x0037C1 00:F7B1: 0A        ASL
C - - - - - 0x0037C2 00:F7B2: 0A        ASL
C - - - - - 0x0037C3 00:F7B3: 09 0F     ORA #$0F
C - - - - - 0x0037C5 00:F7B5: 35 18     AND ram_random,X
C - - - - - 0x0037C7 00:F7B7: 60        RTS



tbl_F7B8:
- D 3 - - - 0x0037C8 00:F7B8: FF        .byte $FF   ; 00 
- D 3 - - - 0x0037C9 00:F7B9: 08        .byte $08   ; 01 
- D 3 - - - 0x0037CA 00:F7BA: 11        .byte $11   ; 02 
- D 3 - - - 0x0037CB 00:F7BB: 1E        .byte $1E   ; 03 



tbl_F7BC:
- D 3 - - - 0x0037CC 00:F7BC: 04        .byte $04   ; 00 
- D 3 - - - 0x0037CD 00:F7BD: 00        .byte $00   ; 01 
- D 3 - - - 0x0037CE 00:F7BE: 06        .byte $06   ; 02 
- D 3 - - - 0x0037CF 00:F7BF: 03        .byte $03   ; 03 
- D 3 - - - 0x0037D0 00:F7C0: 05        .byte $05   ; 04 
- D 3 - - - 0x0037D1 00:F7C1: 00        .byte $00   ; 05 
- D 3 - - - 0x0037D2 00:F7C2: 06        .byte $06   ; 06 
- D 3 - - - 0x0037D3 00:F7C3: 02        .byte $02   ; 07 
- - - - - - 0x0037D4 00:F7C4: FF        .byte $FF   ; 08 
- D 3 - - - 0x0037D5 00:F7C5: 05        .byte $05   ; 09 
- D 3 - - - 0x0037D6 00:F7C6: 01        .byte $01   ; 0A 
- D 3 - - - 0x0037D7 00:F7C7: 07        .byte $07   ; 0B 
- D 3 - - - 0x0037D8 00:F7C8: 02        .byte $02   ; 0C 
- D 3 - - - 0x0037D9 00:F7C9: 04        .byte $04   ; 0D 
- D 3 - - - 0x0037DA 00:F7CA: 01        .byte $01   ; 0E 
- D 3 - - - 0x0037DB 00:F7CB: 07        .byte $07   ; 0F 
- D 3 - - - 0x0037DC 00:F7CC: 03        .byte $03   ; 00 
- - - - - - 0x0037DD 00:F7CD: FF        .byte $FF   ; 11 
- D 3 - - - 0x0037DE 00:F7CE: 04        .byte $04   ; 12 
- D 3 - - - 0x0037DF 00:F7CF: 00        .byte $00   ; 13 
- D 3 - - - 0x0037E0 00:F7D0: 06        .byte $06   ; 14 
- D 3 - - - 0x0037E1 00:F7D1: 03        .byte $03   ; 15 
- D 3 - - - 0x0037E2 00:F7D2: 05        .byte $05   ; 16 
- D 3 - - - 0x0037E3 00:F7D3: 00        .byte $00   ; 17 
- D 3 - - - 0x0037E4 00:F7D4: 04        .byte $04   ; 18 
- D 3 - - - 0x0037E5 00:F7D5: 01        .byte $01   ; 19 
- D 3 - - - 0x0037E6 00:F7D6: 07        .byte $07   ; 1A 
- D 3 - - - 0x0037E7 00:F7D7: 02        .byte $02   ; 1B 
- D 3 - - - 0x0037E8 00:F7D8: 04        .byte $04   ; 1C 
- D 3 - - - 0x0037E9 00:F7D9: 00        .byte $00   ; 1D 
- - - - - - 0x0037EA 00:F7DA: FF        .byte $FF   ; 1E 
- D 3 - - - 0x0037EB 00:F7DB: 05        .byte $05   ; 1F 
- D 3 - - - 0x0037EC 00:F7DC: 01        .byte $01   ; 20 
- D 3 - - - 0x0037ED 00:F7DD: 07        .byte $07   ; 21 
- D 3 - - - 0x0037EE 00:F7DE: 02        .byte $02   ; 22 
- D 3 - - - 0x0037EF 00:F7DF: 04        .byte $04   ; 23 
- D 3 - - - 0x0037F0 00:F7E0: 01        .byte $01   ; 24 
- D 3 - - - 0x0037F1 00:F7E1: 05        .byte $05   ; 25 
- D 3 - - - 0x0037F2 00:F7E2: 00        .byte $00   ; 26 
- D 3 - - - 0x0037F3 00:F7E3: 06        .byte $06   ; 27 
- D 3 - - - 0x0037F4 00:F7E4: 03        .byte $03   ; 28 
- D 3 - - - 0x0037F5 00:F7E5: 05        .byte $05   ; 29 
- D 3 - - - 0x0037F6 00:F7E6: 01        .byte $01   ; 2A 
- - - - - - 0x0037F7 00:F7E7: FF        .byte $FF   ; 2B 



tbl_F7E8_pos_X:
- D 3 - - - 0x0037F8 00:F7E8: 10        .byte $10   ; 00 
- D 3 - - - 0x0037F9 00:F7E9: F0        .byte $F0   ; 01 
- D 3 - - - 0x0037FA 00:F7EA: 10        .byte $10   ; 02 
- D 3 - - - 0x0037FB 00:F7EB: F0        .byte $F0   ; 03 



tbl_F7EC:
- D 3 - - - 0x0037FC 00:F7EC: 00        .byte $00   ; 00 
- D 3 - - - 0x0037FD 00:F7ED: 00        .byte $00   ; 01 
- D 3 - - - 0x0037FE 00:F7EE: 00        .byte $00   ; 02 
- D 3 - - - 0x0037FF 00:F7EF: 00        .byte $00   ; 03 
- D 3 - - - 0x003800 00:F7F0: 01        .byte $01   ; 04 
- D 3 - - - 0x003801 00:F7F1: 00        .byte $00   ; 05 
- D 3 - - - 0x003802 00:F7F2: 01        .byte $01   ; 06 
- D 3 - - - 0x003803 00:F7F3: 01        .byte $01   ; 07 
- D 3 - - - 0x003804 00:F7F4: 01        .byte $01   ; 08 
- D 3 - - - 0x003805 00:F7F5: 01        .byte $01   ; 09 
- D 3 - - - 0x003806 00:F7F6: 01        .byte $01   ; 0A 
- D 3 - - - 0x003807 00:F7F7: 02        .byte $02   ; 0B 
- D 3 - - - 0x003808 00:F7F8: 01        .byte $01   ; 0C 
- D 3 - - - 0x003809 00:F7F9: 02        .byte $02   ; 0D 
- D 3 - - - 0x00380A 00:F7FA: 02        .byte $02   ; 0E 
- D 3 - - - 0x00380B 00:F7FB: 02        .byte $02   ; 0F 
- D 3 - - - 0x00380C 00:F7FC: 02        .byte $02   ; 10 
- D 3 - - - 0x00380D 00:F7FD: 02        .byte $02   ; 11 
- D 3 - - - 0x00380E 00:F7FE: 02        .byte $02   ; 12 
- D 3 - - - 0x00380F 00:F7FF: 02        .byte $02   ; 13 
- D 3 - - - 0x003810 00:F800: 03        .byte $03   ; 14 
- D 3 - - - 0x003811 00:F801: 02        .byte $02   ; 15 
- D 3 - - - 0x003812 00:F802: 03        .byte $03   ; 16 
- D 3 - - - 0x003813 00:F803: 03        .byte $03   ; 17 
- D 3 - - - 0x003814 00:F804: 03        .byte $03   ; 18 
- D 3 - - - 0x003815 00:F805: 03        .byte $03   ; 19 
- D 3 - - - 0x003816 00:F806: 03        .byte $03   ; 1A 
- D 3 - - - 0x003817 00:F807: 04        .byte $04   ; 1B 
- D 3 - - - 0x003818 00:F808: 03        .byte $03   ; 1C 
- D 3 - - - 0x003819 00:F809: 04        .byte $04   ; 1D 
- D 3 - - - 0x00381A 00:F80A: 04        .byte $04   ; 1E 
- D 3 - - - 0x00381B 00:F80B: 04        .byte $04   ; 1F 



sub_F80C:
C - - - - - 0x00381C 00:F80C: A5 18     LDA ram_random
C - - - - - 0x00381E 00:F80E: 29 03     AND #$03
C - - - - - 0x003820 00:F810: A8        TAY
C - - - - - 0x003821 00:F811: A9 20     LDA #$20
C - - - - - 0x003823 00:F813: 85 A7     STA ram_00A7_obj_pos_Y
C - - - - - 0x003825 00:F815: B9 E8 F7  LDA tbl_F7E8_pos_X,Y
C - - - - - 0x003828 00:F818: 85 9C     STA ram_009C_obj_pos_X
C - - - - - 0x00382A 00:F81A: B9 B8 F7  LDA tbl_F7B8,Y
C - - - - - 0x00382D 00:F81D: 8D BC 03  STA ram_03BC_obj
C - - - - - 0x003830 00:F820: A9 00     LDA #$00
C - - - - - 0x003832 00:F822: 8D B1 03  STA ram_03B1_obj
C - - - - - 0x003835 00:F825: 85 91     STA ram_0091_obj
C - - - - - 0x003837 00:F827: A5 56     LDA ram_mountain_completed
C - - - - - 0x003839 00:F829: C9 3D     CMP #$3D
C - - - - - 0x00383B 00:F82B: 90 02     BCC bra_F82F_not_overflow
- - - - - - 0x00383D 00:F82D: A9 3D     LDA #$3D
bra_F82F_not_overflow:
C - - - - - 0x00383F 00:F82F: 0A        ASL
C - - - - - 0x003840 00:F830: 0A        ASL
C - - - - - 0x003841 00:F831: 18        CLC
C - - - - - 0x003842 00:F832: 69 2F     ADC #$2F
C - - - - - 0x003844 00:F834: 8D A6 03  STA ram_03A6_obj
C - - - - - 0x003847 00:F837: 60        RTS



sub_F838:
C - - - - - 0x003848 00:F838: A9 03     LDA #$03
C - - - - - 0x00384A 00:F83A: 8D E8 03  STA ram_03E8_obj
C - - - - - 0x00384D 00:F83D: A5 91     LDA ram_0091_obj
C - - - - - 0x00384F 00:F83F: F0 36     BEQ bra_F877
C - - - - - 0x003851 00:F841: C9 20     CMP #$20
C - - - - - 0x003853 00:F843: F0 53     BEQ bra_F898_RTS
C - - - - - 0x003855 00:F845: C9 01     CMP #$01
C - - - - - 0x003857 00:F847: F0 50     BEQ bra_F899
C - - - - - 0x003859 00:F849: C9 02     CMP #$02
C - - - - - 0x00385B 00:F84B: F0 2F     BEQ bra_F87C
C - - - - - 0x00385D 00:F84D: A2 00     LDX #$00
C - - - - - 0x00385F 00:F84F: 20 70 EF  JSR sub_EF70
C - - - - - 0x003862 00:F852: 90 08     BCC bra_F85C
C - - - - - 0x003864 00:F854: 20 DB F8  JSR sub_F8DB
C - - - - - 0x003867 00:F857: 30 03     BMI bra_F85C
C - - - - - 0x003869 00:F859: 20 AC F8  JSR sub_F8AC
bra_F85C:
C - - - - - 0x00386C 00:F85C: A5 B2     LDA ram_00B2_obj
C - - - - - 0x00386E 00:F85E: 4A        LSR
C - - - - - 0x00386F 00:F85F: 6A        ROR
C - - - - - 0x003870 00:F860: 49 80     EOR #$80
C - - - - - 0x003872 00:F862: 85 BD     STA ram_00BD_obj
C - - - - - 0x003874 00:F864: A5 50     LDA ram_frm_cnt
C - - - - - 0x003876 00:F866: 29 08     AND #$08
C - - - - - 0x003878 00:F868: 4A        LSR
C - - - - - 0x003879 00:F869: 09 E0     ORA #$E0
bra_F86B:
C - - - - - 0x00387B 00:F86B: 8D DD 03  STA ram_03DD_obj
C - - - - - 0x00387E 00:F86E: AD E8 03  LDA ram_03E8_obj
C - - - - - 0x003881 00:F871: 09 40     ORA #$40
C - - - - - 0x003883 00:F873: 8D E8 03  STA ram_03E8_obj
C - - - - - 0x003886 00:F876: 60        RTS
bra_F877:   ; A = 00
C - - - - - 0x003887 00:F877: 8D E8 03  STA ram_03E8_obj
C - - - - - 0x00388A 00:F87A: F0 0D     BEQ bra_F889    ; jmp
bra_F87C:
C - - - - - 0x00388C 00:F87C: 20 AB F7  JSR sub_F7AB_get_random_value
C - - - - - 0x00388F 00:F87F: 85 4E     STA ram_spawn_timer_lo_bird
C - - - - - 0x003891 00:F881: AD E8 03  LDA ram_03E8_obj
C - - - - - 0x003894 00:F884: 09 80     ORA #$80
C - - - - - 0x003896 00:F886: 8D E8 03  STA ram_03E8_obj
bra_F889:
C - - - - - 0x003899 00:F889: A5 4E     LDA ram_spawn_timer_lo_bird
C - - - - - 0x00389B 00:F88B: D0 0B     BNE bra_F898_RTS
C - - - - - 0x00389D 00:F88D: A5 91     LDA ram_0091_obj
C - - - - - 0x00389F 00:F88F: 30 07     BMI bra_F898_RTS
C - - - - - 0x0038A1 00:F891: 20 0C F8  JSR sub_F80C
C - - - - - 0x0038A4 00:F894: A9 FF     LDA #$FF
C - - - - - 0x0038A6 00:F896: 85 91     STA ram_0091_obj
bra_F898_RTS:
C - - - - - 0x0038A8 00:F898: 60        RTS
bra_F899:
C - - - - - 0x0038A9 00:F899: A5 A7     LDA ram_00A7_obj_pos_Y
C - - - - - 0x0038AB 00:F89B: 18        CLC
C - - - - - 0x0038AC 00:F89C: 69 02     ADC #$02
C - - - - - 0x0038AE 00:F89E: 85 A7     STA ram_00A7_obj_pos_Y
C - - - - - 0x0038B0 00:F8A0: C9 F0     CMP #$F0
C - - - - - 0x0038B2 00:F8A2: 90 04     BCC bra_F8A8
C - - - - - 0x0038B4 00:F8A4: A9 02     LDA #$02
C - - - - - 0x0038B6 00:F8A6: 85 91     STA ram_0091_obj
bra_F8A8:
C - - - - - 0x0038B8 00:F8A8: A9 B2     LDA #$B2
C - - - - - 0x0038BA 00:F8AA: D0 BF     BNE bra_F86B    ; jmp



sub_F8AC:
C - - - - - 0x0038BC 00:F8AC: AC B1 03  LDY ram_03B1_obj
C - - - - - 0x0038BF 00:F8AF: B9 EC F7  LDA tbl_F7EC,Y
C - - - - - 0x0038C2 00:F8B2: 48        PHA
C - - - - - 0x0038C3 00:F8B3: A5 B2     LDA ram_00B2_obj
C - - - - - 0x0038C5 00:F8B5: 29 01     AND #$01
C - - - - - 0x0038C7 00:F8B7: F0 05     BEQ bra_F8BE
C - - - - - 0x0038C9 00:F8B9: 68        PLA
C - - - - - 0x0038CA 00:F8BA: 20 FB D2  JSR sub_D2FB_EOR
C - - - - - 0x0038CD 00:F8BD: 48        PHA
bra_F8BE:
C - - - - - 0x0038CE 00:F8BE: 68        PLA
C - - - - - 0x0038CF 00:F8BF: 20 7D EF  JSR sub_EF7D
C - - - - - 0x0038D2 00:F8C2: A5 B2     LDA ram_00B2_obj
C - - - - - 0x0038D4 00:F8C4: 29 02     AND #$02
C - - - - - 0x0038D6 00:F8C6: F0 03     BEQ bra_F8CB
C - - - - - 0x0038D8 00:F8C8: C6 A7     DEC ram_00A7_obj_pos_Y
C - - - - - 0x0038DA 00:F8CA: 2C        .byte $2C   ; BIT opcode
bra_F8CB:
C - - - - - 0x0038DB 00:F8CB: E6 A7     INC ram_00A7_obj_pos_Y
C - - - - - 0x0038DD 00:F8CD: A5 B2     LDA ram_00B2_obj
C - - - - - 0x0038DF 00:F8CF: 29 04     AND #$04
C - - - - - 0x0038E1 00:F8D1: D0 04     BNE bra_F8D7
C - - - - - 0x0038E3 00:F8D3: EE B1 03  INC ram_03B1_obj
C - - - - - 0x0038E6 00:F8D6: 60        RTS
bra_F8D7:
C - - - - - 0x0038E7 00:F8D7: CE B1 03  DEC ram_03B1_obj
C - - - - - 0x0038EA 00:F8DA: 60        RTS



sub_F8DB:
C - - - - - 0x0038EB 00:F8DB: AD B1 03  LDA ram_03B1_obj
C - - - - - 0x0038EE 00:F8DE: 29 1F     AND #$1F
C - - - - - 0x0038F0 00:F8E0: D0 12     BNE bra_F8F4
bra_F8E2_loop:
C - - - - - 0x0038F2 00:F8E2: EE BC 03  INC ram_03BC_obj
C - - - - - 0x0038F5 00:F8E5: AC BC 03  LDY ram_03BC_obj
C - - - - - 0x0038F8 00:F8E8: B9 BC F7  LDA tbl_F7BC,Y
C - - - - - 0x0038FB 00:F8EB: 29 04     AND #$04
C - - - - - 0x0038FD 00:F8ED: F0 02     BEQ bra_F8F1
C - - - - - 0x0038FF 00:F8EF: A9 1F     LDA #$1F
bra_F8F1:
C - - - - - 0x003901 00:F8F1: 8D B1 03  STA ram_03B1_obj
bra_F8F4:
C - - - - - 0x003904 00:F8F4: A5 9C     LDA ram_009C_obj_pos_X
C - - - - - 0x003906 00:F8F6: C9 0F     CMP #$0F
C - - - - - 0x003908 00:F8F8: 90 17     BCC bra_F911
C - - - - - 0x00390A 00:F8FA: C9 F1     CMP #$F1
C - - - - - 0x00390C 00:F8FC: B0 13     BCS bra_F911
C - - - - - 0x00390E 00:F8FE: A5 A7     LDA ram_00A7_obj_pos_Y
C - - - - - 0x003910 00:F900: C9 F0     CMP #$F0
C - - - - - 0x003912 00:F902: B0 0D     BCS bra_F911
C - - - - - 0x003914 00:F904: AC BC 03  LDY ram_03BC_obj
C - - - - - 0x003917 00:F907: 30 D9     BMI bra_F8E2_loop
C - - - - - 0x003919 00:F909: B9 BC F7  LDA tbl_F7BC,Y
C - - - - - 0x00391C 00:F90C: C9 FF     CMP #$FF
C - - - - - 0x00391E 00:F90E: D0 09     BNE bra_F919
- - - - - - 0x003920 00:F910: 2C        .byte $2C   ; BIT opcode
bra_F911:
C - - - - - 0x003921 00:F911: A9 FF     LDA #$FF
C - - - - - 0x003923 00:F913: 48        PHA
C - - - - - 0x003924 00:F914: A9 02     LDA #$02
C - - - - - 0x003926 00:F916: 85 91     STA ram_0091_obj
C - - - - - 0x003928 00:F918: 68        PLA
bra_F919:
C - - - - - 0x003929 00:F919: 85 B2     STA ram_00B2_obj
C - - - - - 0x00392B 00:F91B: 60        RTS


; bzk garbage
- - - - - - 0x00392C 00:F91C: FF        .byte $FF   ; 
- - - - - - 0x00392D 00:F91D: FF        .byte $FF   ; 



sub_F91E_update_sound_engine:
C - - - - - 0x00392E 00:F91E: A9 FF     LDA #$FF
C - - - - - 0x003930 00:F920: 8D 17 40  STA $4017
C - - - - - 0x003933 00:F923: 20 EB F9  JSR sub_F9EB_play_sfx_3
C - - - - - 0x003936 00:F926: 20 C4 FA  JSR sub_FAC4_play_sfx_2
C - - - - - 0x003939 00:F929: 20 A1 FB  JSR sub_FBA1_play_sfx_1
C - - - - - 0x00393C 00:F92C: 20 FC FB  JSR sub_FBFC_initialize_music
C - - - - - 0x00393F 00:F92F: A9 00     LDA #$00
C - - - - - 0x003941 00:F931: 85 FF     STA ram_sfx_3    ; con_sfx_3_00
C - - - - - 0x003943 00:F933: 85 FE     STA ram_sfx_2    ; con_sfx_2_00
C - - - - - 0x003945 00:F935: 85 FC     STA ram_sfx_1    ; con_sfx_1_00
C - - - - - 0x003947 00:F937: 85 FB     STA ram_music_1    ; con_music_00
C - - - - - 0x003949 00:F939: AC 11 07  LDY ram_0711_se
C - - - - - 0x00394C 00:F93C: A5 F3     LDA ram_music_2
C - - - - - 0x00394E 00:F93E: 29 0C     AND #$0C
C - - - - - 0x003950 00:F940: F0 07     BEQ bra_F949
C - - - - - 0x003952 00:F942: EE 11 07  INC ram_0711_se
C - - - - - 0x003955 00:F945: C0 30     CPY #$30
C - - - - - 0x003957 00:F947: 90 06     BCC bra_F94F
bra_F949:
C - - - - - 0x003959 00:F949: 98        TYA
C - - - - - 0x00395A 00:F94A: F0 03     BEQ bra_F94F
C - - - - - 0x00395C 00:F94C: CE 11 07  DEC ram_0711_se
bra_F94F:
C - - - - - 0x00395F 00:F94F: 8C 11 40  STY $4011
C - - - - - 0x003962 00:F952: 60        RTS



sub_F953_set_4000_4001:
C - - - - - 0x003963 00:F953: 8E 00 40  STX $4000
C - - - - - 0x003966 00:F956: 8C 01 40  STY $4001
C - - - - - 0x003969 00:F959: 60        RTS



sub_F95A_set_4004_4005:
C - - - - - 0x00396A 00:F95A: 8E 04 40  STX $4004
C - - - - - 0x00396D 00:F95D: 8C 05 40  STY $4005
C - - - - - 0x003970 00:F960: 60        RTS



sub_F961_set_4000_4001_4002x_4003x:
C - - - - - 0x003971 00:F961: 20 53 F9  JSR sub_F953_set_4000_4001
sub_F964_set_4002x_4003x:
C - - - - - 0x003974 00:F964: A2 00     LDX #$00
bra_F966:
C - - - - - 0x003976 00:F966: A8        TAY
C - - - - - 0x003977 00:F967: B9 01 FF  LDA tbl_FF01,Y
C - - - - - 0x00397A 00:F96A: F0 0B     BEQ bra_F977_RTS
; 4002 4006 400A
C - - - - - 0x00397C 00:F96C: 9D 02 40  STA $4002,X
C - - - - - 0x00397F 00:F96F: B9 00 FF  LDA tbl_FF00,Y
C - - - - - 0x003982 00:F972: 09 08     ORA #$08
; 4003 4007 400B
C - - - - - 0x003984 00:F974: 9D 03 40  STA $4003,X
bra_F977_RTS:
C - - - - - 0x003987 00:F977: 60        RTS



sub_F978_set_4004_4005_4006_4007:
C - - - - - 0x003988 00:F978: 20 5A F9  JSR sub_F95A_set_4004_4005
sub_F97B_set_4006_4007:
C - - - - - 0x00398B 00:F97B: A2 04     LDX #$04
C - - - - - 0x00398D 00:F97D: D0 E7     BNE bra_F966    ; jmp



sub_F97F_set_400A_400B:
C - - - - - 0x00398F 00:F97F: A2 08     LDX #$08
C - - - - - 0x003991 00:F981: D0 E3     BNE bra_F966    ; jmp



sub_F983:
C - - - - - 0x003993 00:F983: AA        TAX
C - - - - - 0x003994 00:F984: 6A        ROR
C - - - - - 0x003995 00:F985: 8A        TXA
C - - - - - 0x003996 00:F986: 2A        ROL
C - - - - - 0x003997 00:F987: 2A        ROL
C - - - - - 0x003998 00:F988: 2A        ROL
C - - - - - 0x003999 00:F989: 29 07     AND #$07
C - - - - - 0x00399B 00:F98B: 18        CLC
C - - - - - 0x00399C 00:F98C: 65 F5     ADC ram_00F5_se
C - - - - - 0x00399E 00:F98E: A8        TAY
C - - - - - 0x00399F 00:F98F: B9 40 FF  LDA tbl_FF40,Y
C - - - - - 0x0039A2 00:F992: 60        RTS



tbl_F993:
- D 3 - - - 0x0039A3 00:F993: 98        .byte $98   ; 00 
- D 3 - - - 0x0039A4 00:F994: 5A        .byte $5A   ; 01 
- D 3 - - - 0x0039A5 00:F995: 99        .byte $99   ; 02 
- D 3 - - - 0x0039A6 00:F996: 9B        .byte $9B   ; 03 
- D 3 - - - 0x0039A7 00:F997: 5A        .byte $5A   ; 04 
- D 3 - - - 0x0039A8 00:F998: 5C        .byte $5C   ; 05 
- D 3 - - - 0x0039A9 00:F999: 9B        .byte $9B   ; 06 
- D 3 - - - 0x0039AA 00:F99A: 5D        .byte $5D   ; 07 
- D 3 - - - 0x0039AB 00:F99B: 9C        .byte $9C   ; 08 
- D 3 - - - 0x0039AC 00:F99C: 9E        .byte $9E   ; 09 
- D 3 - - - 0x0039AD 00:F99D: 5D        .byte $5D   ; 0A 
- D 3 - - - 0x0039AE 00:F99E: 5F        .byte $5F   ; 0B 



tbl_F99F:
- D 3 - - - 0x0039AF 00:F99F: BF        .byte $BF   ; 00 
- D 3 - - - 0x0039B0 00:F9A0: BE        .byte $BE   ; 01 
- D 3 - - - 0x0039B1 00:F9A1: AA        .byte $AA   ; 02 
- D 3 - - - 0x0039B2 00:F9A2: A9        .byte $A9   ; 03 
- D 3 - - - 0x0039B3 00:F9A3: 98        .byte $98   ; 04 
- D 3 - - - 0x0039B4 00:F9A4: 97        .byte $97   ; 05 
- D 3 - - - 0x0039B5 00:F9A5: 87        .byte $87   ; 06 
- D 3 - - - 0x0039B6 00:F9A6: 86        .byte $86   ; 07 
- D 3 - - - 0x0039B7 00:F9A7: 78        .byte $78   ; 08 
- D 3 - - - 0x0039B8 00:F9A8: 77        .byte $77   ; 09 
- D 3 - - - 0x0039B9 00:F9A9: 6B        .byte $6B   ; 0A 
- D 3 - - - 0x0039BA 00:F9AA: 6A        .byte $6A   ; 0B 



bra_F9AB_FF_01:
C - - - - - 0x0039BB 00:F9AB: 84 F0     STY ram_copy_sfx_3
C - - - - - 0x0039BD 00:F9AD: A9 2F     LDA #$2F
C - - - - - 0x0039BF 00:F9AF: 85 F4     STA ram_00F4
bra_F9B1_F0_01:
C - - - - - 0x0039C1 00:F9B1: A5 F4     LDA ram_00F4
C - - - - - 0x0039C3 00:F9B3: 4A        LSR
C - - - - - 0x0039C4 00:F9B4: 4A        LSR
C - - - - - 0x0039C5 00:F9B5: A8        TAY
C - - - - - 0x0039C6 00:F9B6: B9 9F F9  LDA tbl_F99F,Y
C - - - - - 0x0039C9 00:F9B9: 8D 02 40  STA $4002
C - - - - - 0x0039CC 00:F9BC: A9 08     LDA #$08
C - - - - - 0x0039CE 00:F9BE: 8D 03 40  STA $4003
C - - - - - 0x0039D1 00:F9C1: BE 93 F9  LDX tbl_F993,Y
C - - - - - 0x0039D4 00:F9C4: A0 81     LDY #$81
C - - - - - 0x0039D6 00:F9C6: D0 67     BNE bra_FA2F    ; jmp
bra_F9C8_FF_02:
C - - - - - 0x0039D8 00:F9C8: 84 F0     STY ram_copy_sfx_3
C - - - - - 0x0039DA 00:F9CA: A9 20     LDA #$20
C - - - - - 0x0039DC 00:F9CC: 85 F4     STA ram_00F4
C - - - - - 0x0039DE 00:F9CE: D0 06     BNE bra_F9D6    ; jmp
bra_F9D0_F0_02:
C - - - - - 0x0039E0 00:F9D0: A5 F4     LDA ram_00F4
C - - - - - 0x0039E2 00:F9D2: C9 1B     CMP #$1B
C - - - - - 0x0039E4 00:F9D4: D0 5C     BNE bra_FA32
bra_F9D6:
C - - - - - 0x0039E6 00:F9D6: A2 88     LDX #$88    ; 4000
C - - - - - 0x0039E8 00:F9D8: A0 D3     LDY #$D3    ; 4001
C - - - - - 0x0039EA 00:F9DA: A9 00     LDA #$00
C - - - - - 0x0039EC 00:F9DC: 20 61 F9  JSR sub_F961_set_4000_4001_4002x_4003x
C - - - - - 0x0039EF 00:F9DF: A9 20     LDA #$20
C - - - - - 0x0039F1 00:F9E1: 20 7F F9  JSR sub_F97F_set_400A_400B
C - - - - - 0x0039F4 00:F9E4: A9 1C     LDA #$1C
C - - - - - 0x0039F6 00:F9E6: 8D 08 40  STA $4008
C - - - - - 0x0039F9 00:F9E9: D0 47     BNE bra_FA32    ; jmp



sub_F9EB_play_sfx_3:
C - - - - - 0x0039FB 00:F9EB: A4 FF     LDY ram_sfx_3
C - - - - - 0x0039FD 00:F9ED: A5 F0     LDA ram_copy_sfx_3
C - - - - - 0x0039FF 00:F9EF: 46 FF     LSR ram_sfx_3
C - - - - - 0x003A01 00:F9F1: B0 B8     BCS bra_F9AB_FF_01
C - - - - - 0x003A03 00:F9F3: 4A        LSR
C - - - - - 0x003A04 00:F9F4: B0 BB     BCS bra_F9B1_F0_01
C - - - - - 0x003A06 00:F9F6: 46 FF     LSR ram_sfx_3
C - - - - - 0x003A08 00:F9F8: B0 CE     BCS bra_F9C8_FF_02
C - - - - - 0x003A0A 00:F9FA: 4A        LSR
C - - - - - 0x003A0B 00:F9FB: B0 D3     BCS bra_F9D0_F0_02
C - - - - - 0x003A0D 00:F9FD: 46 FF     LSR ram_sfx_3
C - - - - - 0x003A0F 00:F9FF: B0 0B     BCS bra_FA0C_FF_04
C - - - - - 0x003A11 00:FA01: 4A        LSR
C - - - - - 0x003A12 00:FA02: B0 17     BCS bra_FA1B_F0_04
C - - - - - 0x003A14 00:FA04: 46 FF     LSR ram_sfx_3
C - - - - - 0x003A16 00:FA06: B0 38     BCS bra_FA40_FF_08
C - - - - - 0x003A18 00:FA08: 4A        LSR
C - - - - - 0x003A19 00:FA09: B0 3F     BCS bra_FA4A_F0_08
C - - - - - 0x003A1B 00:FA0B: 60        RTS
bra_FA0C_FF_04:
C - - - - - 0x003A1C 00:FA0C: 84 F0     STY ram_copy_sfx_3
C - - - - - 0x003A1E 00:FA0E: A9 28     LDA #$28
C - - - - - 0x003A20 00:FA10: 85 F4     STA ram_00F4
C - - - - - 0x003A22 00:FA12: A2 9A     LDX #$9A    ; 4000
C - - - - - 0x003A24 00:FA14: A0 A7     LDY #$A7    ; 4001
C - - - - - 0x003A26 00:FA16: A9 36     LDA #$36
C - - - - - 0x003A28 00:FA18: 20 61 F9  JSR sub_F961_set_4000_4001_4002x_4003x
bra_FA1B_F0_04:
C - - - - - 0x003A2B 00:FA1B: A5 F4     LDA ram_00F4
C - - - - - 0x003A2D 00:FA1D: C9 25     CMP #$25
C - - - - - 0x003A2F 00:FA1F: D0 06     BNE bra_FA27
C - - - - - 0x003A31 00:FA21: A2 47     LDX #$47
C - - - - - 0x003A33 00:FA23: A0 F6     LDY #$F6
C - - - - - 0x003A35 00:FA25: D0 08     BNE bra_FA2F    ; jmp
bra_FA27:
C - - - - - 0x003A37 00:FA27: C9 20     CMP #$20
C - - - - - 0x003A39 00:FA29: D0 07     BNE bra_FA32
C - - - - - 0x003A3B 00:FA2B: A0 BC     LDY #$BC
C - - - - - 0x003A3D 00:FA2D: A2 4C     LDX #$4C
bra_FA2F:
C - - - - - 0x003A3F 00:FA2F: 20 53 F9  JSR sub_F953_set_4000_4001
bra_FA32:
C - - - - - 0x003A42 00:FA32: C6 F4     DEC ram_00F4
C - - - - - 0x003A44 00:FA34: D0 09     BNE bra_FA3F_RTS
sub_FA36:
C - - - - - 0x003A46 00:FA36: A9 00     LDA #$00
C - - - - - 0x003A48 00:FA38: 85 F0     STA ram_copy_sfx_3
sub_FA3A:
C - - - - - 0x003A4A 00:FA3A: A9 90     LDA #$90
C - - - - - 0x003A4C 00:FA3C: 8D 00 40  STA $4000
bra_FA3F_RTS:
C - - - - - 0x003A4F 00:FA3F: 60        RTS
bra_FA40_FF_08:
C - - - - - 0x003A50 00:FA40: 84 F0     STY ram_copy_sfx_3
C - - - - - 0x003A52 00:FA42: A9 0B     LDA #$0B
C - - - - - 0x003A54 00:FA44: 85 F4     STA ram_00F4
C - - - - - 0x003A56 00:FA46: A9 57     LDA #$57
C - - - - - 0x003A58 00:FA48: D0 08     BNE bra_FA52    ; jmp
bra_FA4A_F0_08:
C - - - - - 0x003A5A 00:FA4A: A5 F4     LDA ram_00F4
C - - - - - 0x003A5C 00:FA4C: C9 07     CMP #$07
C - - - - - 0x003A5E 00:FA4E: D0 E2     BNE bra_FA32
C - - - - - 0x003A60 00:FA50: A9 02     LDA #$02
bra_FA52:
C - - - - - 0x003A62 00:FA52: 8D 02 40  STA $4002
C - - - - - 0x003A65 00:FA55: A9 3B     LDA #$3B
C - - - - - 0x003A67 00:FA57: 8D 03 40  STA $4003
C - - - - - 0x003A6A 00:FA5A: A2 BD     LDX #$BD
C - - - - - 0x003A6C 00:FA5C: A0 8A     LDY #$8A
C - - - - - 0x003A6E 00:FA5E: D0 CF     BNE bra_FA2F    ; jmp



tbl_FA60:
- D 3 - - - 0x003A70 00:FA60: 20        .byte $20   ; 01 
- D 3 - - - 0x003A71 00:FA61: 1E        .byte $1E   ; 02 
- D 3 - - - 0x003A72 00:FA62: 1C        .byte $1C   ; 03 
- D 3 - - - 0x003A73 00:FA63: 1A        .byte $1A   ; 04 



bra_FA64_FE_01:
C D 3 - - - 0x003A74 00:FA64: 84 F1     STY ram_copy_sfx_2
C - - - - - 0x003A76 00:FA66: A9 30     LDA #$30
C - - - - - 0x003A78 00:FA68: 8D 12 07  STA ram_0712_se
bra_FA6B_F1_01:
C - - - - - 0x003A7B 00:FA6B: AD 12 07  LDA ram_0712_se
C - - - - - 0x003A7E 00:FA6E: A2 03     LDX #$03
bra_FA70_loop:
C - - - - - 0x003A80 00:FA70: 4A        LSR
C - - - - - 0x003A81 00:FA71: B0 42     BCS bra_FAB5
C - - - - - 0x003A83 00:FA73: CA        DEX
C - - - - - 0x003A84 00:FA74: D0 FA     BNE bra_FA70_loop
C - - - - - 0x003A86 00:FA76: A8        TAY
; bzk bug, this refs to 0x003A74/0x003A75 when Y = 05/06
C - - - - - 0x003A87 00:FA77: B9 5F FA  LDA tbl_FA60 - $01,Y
C - - - - - 0x003A8A 00:FA7A: A0 8B     LDY #$8B
bra_FA7C:
C - - - - - 0x003A8C 00:FA7C: A2 B8     LDX #$B8
C - - - - - 0x003A8E 00:FA7E: 20 78 F9  JSR sub_F978_set_4004_4005_4006_4007
C - - - - - 0x003A91 00:FA81: D0 32     BNE bra_FAB5
bra_FA83_FE_02:
C - - - - - 0x003A93 00:FA83: 84 F1     STY ram_copy_sfx_2
C - - - - - 0x003A95 00:FA85: A9 5E     LDA #$5E
C - - - - - 0x003A97 00:FA87: 8D 12 07  STA ram_0712_se
C - - - - - 0x003A9A 00:FA8A: A9 91     LDA #$91
C - - - - - 0x003A9C 00:FA8C: 8D 09 07  STA ram_0709_se
C - - - - - 0x003A9F 00:FA8F: A9 3C     LDA #$3C
C - - - - - 0x003AA1 00:FA91: 20 7B F9  JSR sub_F97B_set_4006_4007
bra_FA94_F1_02:
C - - - - - 0x003AA4 00:FA94: AD 09 07  LDA ram_0709_se
C - - - - - 0x003AA7 00:FA97: 8D 04 40  STA $4004
C - - - - - 0x003AAA 00:FA9A: C9 95     CMP #$95
C - - - - - 0x003AAC 00:FA9C: F0 03     BEQ bra_FAA1
C - - - - - 0x003AAE 00:FA9E: EE 09 07  INC ram_0709_se
bra_FAA1:
C - - - - - 0x003AB1 00:FAA1: AD 12 07  LDA ram_0712_se
C - - - - - 0x003AB4 00:FAA4: 29 07     AND #$07
C - - - - - 0x003AB6 00:FAA6: D0 04     BNE bra_FAAC
C - - - - - 0x003AB8 00:FAA8: A9 9F     LDA #$9F
C - - - - - 0x003ABA 00:FAAA: D0 06     BNE bra_FAB2    ; jmp
bra_FAAC:
C - - - - - 0x003ABC 00:FAAC: C9 06     CMP #$06
C - - - - - 0x003ABE 00:FAAE: D0 05     BNE bra_FAB5
C - - - - - 0x003AC0 00:FAB0: A9 A3     LDA #$A3
bra_FAB2:
C - - - - - 0x003AC2 00:FAB2: 8D 05 40  STA $4005
bra_FAB5:
bra_FAB5_F1_04:
bra_FAB5_F1_10:
loc_FAB5:
C D 3 - - - 0x003AC5 00:FAB5: CE 12 07  DEC ram_0712_se
C - - - - - 0x003AC8 00:FAB8: D0 09     BNE bra_FAC3_RTS
C - - - - - 0x003ACA 00:FABA: A9 00     LDA #$00
C - - - - - 0x003ACC 00:FABC: 85 F1     STA ram_copy_sfx_2
C - - - - - 0x003ACE 00:FABE: A9 90     LDA #$90
C - - - - - 0x003AD0 00:FAC0: 8D 04 40  STA $4004
bra_FAC3_RTS:
C - - - - - 0x003AD3 00:FAC3: 60        RTS



sub_FAC4_play_sfx_2:
C - - - - - 0x003AD4 00:FAC4: A4 FE     LDY ram_sfx_2
C - - - - - 0x003AD6 00:FAC6: A5 F1     LDA ram_copy_sfx_2
C - - - - - 0x003AD8 00:FAC8: 46 FE     LSR ram_sfx_2
C - - - - - 0x003ADA 00:FACA: B0 98     BCS bra_FA64_FE_01
C - - - - - 0x003ADC 00:FACC: 4A        LSR
C - - - - - 0x003ADD 00:FACD: B0 9C     BCS bra_FA6B_F1_01
C - - - - - 0x003ADF 00:FACF: 46 FE     LSR ram_sfx_2
C - - - - - 0x003AE1 00:FAD1: B0 B0     BCS bra_FA83_FE_02
C - - - - - 0x003AE3 00:FAD3: 4A        LSR
C - - - - - 0x003AE4 00:FAD4: B0 BE     BCS bra_FA94_F1_02
C - - - - - 0x003AE6 00:FAD6: 46 FE     LSR ram_sfx_2
C - - - - - 0x003AE8 00:FAD8: B0 12     BCS bra_FAEC_FE_04
C - - - - - 0x003AEA 00:FADA: 4A        LSR
C - - - - - 0x003AEB 00:FADB: B0 D8     BCS bra_FAB5_F1_04
C - - - - - 0x003AED 00:FADD: 4A        LSR
C - - - - - 0x003AEE 00:FADE: B0 29     BCS bra_FB09_F1_08
C - - - - - 0x003AF0 00:FAE0: 46 FE     LSR ram_sfx_2
C - - - - - 0x003AF2 00:FAE2: B0 15     BCS bra_FAF9_FE_08
C - - - - - 0x003AF4 00:FAE4: 46 FE     LSR ram_sfx_2
C - - - - - 0x003AF6 00:FAE6: B0 2F     BCS bra_FB17_FE_10
C - - - - - 0x003AF8 00:FAE8: 4A        LSR
C - - - - - 0x003AF9 00:FAE9: B0 CA     BCS bra_FAB5_F1_10
C - - - - - 0x003AFB 00:FAEB: 60        RTS
bra_FAEC_FE_04:
C - - - - - 0x003AFC 00:FAEC: 84 F1     STY ram_copy_sfx_2
C - - - - - 0x003AFE 00:FAEE: A9 20     LDA #$20
C - - - - - 0x003B00 00:FAF0: 8D 12 07  STA ram_0712_se
C - - - - - 0x003B03 00:FAF3: A9 18     LDA #$18
C - - - - - 0x003B05 00:FAF5: A0 B3     LDY #$B3
C - - - - - 0x003B07 00:FAF7: D0 83     BNE bra_FA7C    ; jmp
bra_FAF9_FE_08:
C - - - - - 0x003B09 00:FAF9: 84 F1     STY ram_copy_sfx_2
C - - - - - 0x003B0B 00:FAFB: A9 08     LDA #$08
C - - - - - 0x003B0D 00:FAFD: 8D 12 07  STA ram_0712_se
C - - - - - 0x003B10 00:FB00: A2 1F     LDX #$1F
C - - - - - 0x003B12 00:FB02: A0 7F     LDY #$7F
C - - - - - 0x003B14 00:FB04: A9 04     LDA #$04
C - - - - - 0x003B16 00:FB06: 20 78 F9  JSR sub_F978_set_4004_4005_4006_4007
bra_FB09_F1_08:
C - - - - - 0x003B19 00:FB09: AD 12 07  LDA ram_0712_se
C - - - - - 0x003B1C 00:FB0C: C9 04     CMP #$04
C - - - - - 0x003B1E 00:FB0E: D0 A5     BNE bra_FAB5
C - - - - - 0x003B20 00:FB10: A9 A9     LDA #$A9
C - - - - - 0x003B22 00:FB12: 8D 06 40  STA $4006
C - - - - - 0x003B25 00:FB15: D0 9E     BNE bra_FAB5    ; jmp
bra_FB17_FE_10:
C - - - - - 0x003B27 00:FB17: 84 F1     STY ram_copy_sfx_2
C - - - - - 0x003B29 00:FB19: A9 18     LDA #$18
C - - - - - 0x003B2B 00:FB1B: 8D 12 07  STA ram_0712_se
C - - - - - 0x003B2E 00:FB1E: A2 1F     LDX #$1F
C - - - - - 0x003B30 00:FB20: A0 92     LDY #$92
C - - - - - 0x003B32 00:FB22: A9 3E     LDA #$3E
C - - - - - 0x003B34 00:FB24: 20 78 F9  JSR sub_F978_set_4004_4005_4006_4007
C - - - - - 0x003B37 00:FB27: A9 08     LDA #$08
C - - - - - 0x003B39 00:FB29: 8D 07 40  STA $4007
C - - - - - 0x003B3C 00:FB2C: AD 12 07  LDA ram_0712_se
C - - - - - 0x003B3F 00:FB2F: C9 10     CMP #$10
C - - - - - 0x003B41 00:FB31: D0 05     BNE bra_FB38
- - - - - - 0x003B43 00:FB33: A9 32     LDA #$32
- - - - - - 0x003B45 00:FB35: 8D 06 40  STA $4006
bra_FB38:
C - - - - - 0x003B48 00:FB38: 4C B5 FA  JMP loc_FAB5



tbl_FB3B:
- D 3 - - - 0x003B4B 00:FB3B: 16        .byte $16   ; 00 
- D 3 - - - 0x003B4C 00:FB3C: 10        .byte $10   ; 01 
- D 3 - - - 0x003B4D 00:FB3D: 17        .byte $17   ; 02 
- D 3 - - - 0x003B4E 00:FB3E: 18        .byte $18   ; 03 
- D 3 - - - 0x003B4F 00:FB3F: 19        .byte $19   ; 04 
- D 3 - - - 0x003B50 00:FB40: 1A        .byte $1A   ; 05 
- D 3 - - - 0x003B51 00:FB41: 1B        .byte $1B   ; 06 
- D 3 - - - 0x003B52 00:FB42: 1F        .byte $1F   ; 07 
- D 3 - - - 0x003B53 00:FB43: 1F        .byte $1F   ; 08 
- D 3 - - - 0x003B54 00:FB44: 1F        .byte $1F   ; 09 
- D 3 - - - 0x003B55 00:FB45: 1F        .byte $1F   ; 0A 
- D 3 - - - 0x003B56 00:FB46: 1C        .byte $1C   ; 0B 
- D 3 - - - 0x003B57 00:FB47: 1A        .byte $1A   ; 0C 
- D 3 - - - 0x003B58 00:FB48: 17        .byte $17   ; 0D 
- D 3 - - - 0x003B59 00:FB49: 15        .byte $15   ; 0E 
- D 3 - - - 0x003B5A 00:FB4A: 14        .byte $14   ; 0F 



tbl_FB4B:
- D 3 - - - 0x003B5B 00:FB4B: 02        .byte $02   ; 00 
- D 3 - - - 0x003B5C 00:FB4C: 04        .byte $04   ; 10 
- D 3 - - - 0x003B5D 00:FB4D: 06        .byte $06   ; 20 
- D 3 - - - 0x003B5E 00:FB4E: 08        .byte $08   ; 30 
- D 3 - - - 0x003B5F 00:FB4F: 0A        .byte $0A   ; 40 
- D 3 - - - 0x003B60 00:FB50: 0B        .byte $0B   ; 50 
- D 3 - - - 0x003B61 00:FB51: 0C        .byte $0C   ; 60 



tbl_FB52:
- D 3 - - - 0x003B62 00:FB52: 0D        .byte $0D   ; 00 
- D 3 - - - 0x003B63 00:FB53: 10        .byte $10   ; 01 
- D 3 - - - 0x003B64 00:FB54: 14        .byte $14   ; 02 
- D 3 - - - 0x003B65 00:FB55: 19        .byte $19   ; 03 
- D 3 - - - 0x003B66 00:FB56: 1B        .byte $1B   ; 04 
- D 3 - - - 0x003B67 00:FB57: 1D        .byte $1D   ; 05 
- D 3 - - - 0x003B68 00:FB58: 1F        .byte $1F   ; 06 
- D 3 - - - 0x003B69 00:FB59: 1F        .byte $1F   ; 07 
- D 3 - - - 0x003B6A 00:FB5A: 13        .byte $13   ; 08 
- D 3 - - - 0x003B6B 00:FB5B: 15        .byte $15   ; 09 
- D 3 - - - 0x003B6C 00:FB5C: 1A        .byte $1A   ; 0A 
- D 3 - - - 0x003B6D 00:FB5D: 1C        .byte $1C   ; 0B 
- D 3 - - - 0x003B6E 00:FB5E: 1E        .byte $1E   ; 0C 
- D 3 - - - 0x003B6F 00:FB5F: 1F        .byte $1F   ; 0D 
- D 3 - - - 0x003B70 00:FB60: 1F        .byte $1F   ; 0E 
- D 3 - - - 0x003B71 00:FB61: 1F        .byte $1F   ; 0F 



tbl_FB62:
- D 3 - - - 0x003B72 00:FB62: 1F        .byte $1F   ; 00 
- D 3 - - - 0x003B73 00:FB63: 06        .byte $06   ; 01 
- D 3 - - - 0x003B74 00:FB64: 0A        .byte $0A   ; 02 
- D 3 - - - 0x003B75 00:FB65: 0B        .byte $0B   ; 03 
- D 3 - - - 0x003B76 00:FB66: 09        .byte $09   ; 04 
- D 3 - - - 0x003B77 00:FB67: 0C        .byte $0C   ; 05 
- D 3 - - - 0x003B78 00:FB68: 0F        .byte $0F   ; 06 
- D 3 - - - 0x003B79 00:FB69: 0E        .byte $0E   ; 07 



tbl_FB6A:
- D 3 - - - 0x003B7A 00:FB6A: 0F        .byte $0F   ; 00 
- D 3 - - - 0x003B7B 00:FB6B: 10        .byte $10   ; 01 
- D 3 - - - 0x003B7C 00:FB6C: 1F        .byte $1F   ; 02 
- D 3 - - - 0x003B7D 00:FB6D: 1F        .byte $1F   ; 03 



tbl_FB6E:
- D 3 - - - 0x003B7E 00:FB6E: 1F        .byte $1F   ; 00 
- D 3 - - - 0x003B7F 00:FB6F: 09        .byte $09   ; 01 
- D 3 - - - 0x003B80 00:FB70: 0B        .byte $0B   ; 02 



bra_FB71_FC_01:
C - - - - - 0x003B81 00:FB71: 84 F2     STY ram_copy_sfx_1
C - - - - - 0x003B83 00:FB73: A9 7F     LDA #$7F
C - - - - - 0x003B85 00:FB75: 8D 0E 07  STA ram_070E_se
bra_FB78_F2_01:
C - - - - - 0x003B88 00:FB78: AD 0E 07  LDA ram_070E_se
C - - - - - 0x003B8B 00:FB7B: 4A        LSR
C - - - - - 0x003B8C 00:FB7C: 4A        LSR
C - - - - - 0x003B8D 00:FB7D: 4A        LSR
C - - - - - 0x003B8E 00:FB7E: 4A        LSR
C - - - - - 0x003B8F 00:FB7F: A8        TAY
C - - - - - 0x003B90 00:FB80: BE 4B FB  LDX tbl_FB4B,Y
C - - - - - 0x003B93 00:FB83: AD 0E 07  LDA ram_070E_se
C - - - - - 0x003B96 00:FB86: 29 0F     AND #$0F
C - - - - - 0x003B98 00:FB88: A8        TAY
C - - - - - 0x003B99 00:FB89: B9 3B FB  LDA tbl_FB3B,Y
bra_FB8C:
loc_FB8C:
C D 3 - - - 0x003B9C 00:FB8C: 8D 0C 40  STA $400C
C - - - - - 0x003B9F 00:FB8F: 8E 0E 40  STX $400E
C - - - - - 0x003BA2 00:FB92: A9 08     LDA #$08
C - - - - - 0x003BA4 00:FB94: 8D 0F 40  STA $400F
C - - - - - 0x003BA7 00:FB97: CE 0E 07  DEC ram_070E_se
C - - - - - 0x003BAA 00:FB9A: D0 04     BNE bra_FBA0_RTS
C - - - - - 0x003BAC 00:FB9C: A9 00     LDA #$00
C - - - - - 0x003BAE 00:FB9E: 85 F2     STA ram_copy_sfx_1
bra_FBA0_RTS:
C - - - - - 0x003BB0 00:FBA0: 60        RTS



sub_FBA1_play_sfx_1:
C - - - - - 0x003BB1 00:FBA1: A4 FC     LDY ram_sfx_1
C - - - - - 0x003BB3 00:FBA3: A5 F2     LDA ram_copy_sfx_1
C - - - - - 0x003BB5 00:FBA5: 46 FC     LSR ram_sfx_1
C - - - - - 0x003BB7 00:FBA7: B0 C8     BCS bra_FB71_FC_01
C - - - - - 0x003BB9 00:FBA9: 4A        LSR
C - - - - - 0x003BBA 00:FBAA: B0 CC     BCS bra_FB78_F2_01
C - - - - - 0x003BBC 00:FBAC: 46 FC     LSR ram_sfx_1
C - - - - - 0x003BBE 00:FBAE: B0 0B     BCS bra_FBBB_FC_02
C - - - - - 0x003BC0 00:FBB0: 4A        LSR
C - - - - - 0x003BC1 00:FBB1: B0 18     BCS bra_FBCB_FF_02
C - - - - - 0x003BC3 00:FBB3: 46 FC     LSR ram_sfx_1
C - - - - - 0x003BC5 00:FBB5: B0 24     BCS bra_FBDB_FC_04
C - - - - - 0x003BC7 00:FBB7: 4A        LSR
C - - - - - 0x003BC8 00:FBB8: B0 31     BCS bra_FBEB_FF_04
C - - - - - 0x003BCA 00:FBBA: 60        RTS
bra_FBBB_FC_02:
C - - - - - 0x003BCB 00:FBBB: 84 F2     STY ram_copy_sfx_1
C - - - - - 0x003BCD 00:FBBD: A9 10     LDA #$10
C - - - - - 0x003BCF 00:FBBF: 8D 0E 07  STA ram_070E_se
C - - - - - 0x003BD2 00:FBC2: A5 F0     LDA ram_copy_sfx_3
C - - - - - 0x003BD4 00:FBC4: C9 04     CMP #$04
C - - - - - 0x003BD6 00:FBC6: D0 03     BNE bra_FBCB
C - - - - - 0x003BD8 00:FBC8: 20 36 FA  JSR sub_FA36
bra_FBCB_FF_02:
bra_FBCB:
C - - - - - 0x003BDB 00:FBCB: AD 0E 07  LDA ram_070E_se
C - - - - - 0x003BDE 00:FBCE: 4A        LSR
C - - - - - 0x003BDF 00:FBCF: A8        TAY
C - - - - - 0x003BE0 00:FBD0: BE 62 FB  LDX tbl_FB62,Y
C - - - - - 0x003BE3 00:FBD3: AC 0E 07  LDY ram_070E_se
C - - - - - 0x003BE6 00:FBD6: B9 52 FB  LDA tbl_FB52,Y
C - - - - - 0x003BE9 00:FBD9: D0 B1     BNE bra_FB8C    ; jmp
bra_FBDB_FC_04:
C - - - - - 0x003BEB 00:FBDB: 84 F2     STY ram_copy_sfx_1
C - - - - - 0x003BED 00:FBDD: A9 04     LDA #$04
C - - - - - 0x003BEF 00:FBDF: 8D 0E 07  STA ram_070E_se
C - - - - - 0x003BF2 00:FBE2: A5 F0     LDA ram_copy_sfx_3
C - - - - - 0x003BF4 00:FBE4: C9 04     CMP #$04
C - - - - - 0x003BF6 00:FBE6: D0 03     BNE bra_FBEB
C - - - - - 0x003BF8 00:FBE8: 20 36 FA  JSR sub_FA36
bra_FBEB_FF_04:
bra_FBEB:
C - - - - - 0x003BFB 00:FBEB: AD 0E 07  LDA ram_070E_se
C - - - - - 0x003BFE 00:FBEE: 4A        LSR
C - - - - - 0x003BFF 00:FBEF: A8        TAY
C - - - - - 0x003C00 00:FBF0: BE 6E FB  LDX tbl_FB6E,Y
C - - - - - 0x003C03 00:FBF3: AC 0E 07  LDY ram_070E_se
C - - - - - 0x003C06 00:FBF6: B9 6A FB  LDA tbl_FB6A,Y
C - - - - - 0x003C09 00:FBF9: 4C 8C FB  JMP loc_FB8C



sub_FBFC_initialize_music:
C - - - - - 0x003C0C 00:FBFC: A5 FB     LDA ram_music_1
C - - - - - 0x003C0E 00:FBFE: D0 05     BNE bra_FC05
C - - - - - 0x003C10 00:FC00: A5 F3     LDA ram_music_2
C - - - - - 0x003C12 00:FC02: D0 4D     BNE bra_FC51
C - - - - - 0x003C14 00:FC04: 60        RTS
bra_FC05:
C - - - - - 0x003C15 00:FC05: C9 20     CMP #con_music_pause
C - - - - - 0x003C17 00:FC07: D0 08     BNE bra_FC11
- - - - - - 0x003C19 00:FC09: A5 F3     LDA ram_music_2
- - - - - - 0x003C1B 00:FC0B: 29 0E     AND #$0E
- - - - - - 0x003C1D 00:FC0D: 85 FD     STA ram_00FD_music
- - - - - - 0x003C1F 00:FC0F: A5 FB     LDA ram_music_1
bra_FC11:
C - - - - - 0x003C21 00:FC11: 85 F3     STA ram_music_2
C - - - - - 0x003C23 00:FC13: A0 00     LDY #$00
C - - - - - 0x003C25 00:FC15: 84 F8     STY ram_00F8_se
bra_FC17_loop:
C - - - - - 0x003C27 00:FC17: C8        INY
C - - - - - 0x003C28 00:FC18: 4A        LSR
C - - - - - 0x003C29 00:FC19: 90 FC     BCC bra_FC17_loop
C - - - - - 0x003C2B 00:FC1B: B9 21 FD  LDA tbl_FD22_offset - $01,Y
C - - - - - 0x003C2E 00:FC1E: A8        TAY
C - - - - - 0x003C2F 00:FC1F: B9 22 FD  LDA tbl_FD2A - $08,Y
C - - - - - 0x003C32 00:FC22: 85 F5     STA ram_00F5_se
C - - - - - 0x003C34 00:FC24: B9 23 FD  LDA tbl_FD2A - $07,Y
C - - - - - 0x003C37 00:FC27: 85 F6     STA ram_00F6_se_data
C - - - - - 0x003C39 00:FC29: B9 24 FD  LDA tbl_FD2A - $06,Y
C - - - - - 0x003C3C 00:FC2C: 85 F7     STA ram_00F6_se_data + $01
C - - - - - 0x003C3E 00:FC2E: B9 25 FD  LDA tbl_FD2A - $05,Y
C - - - - - 0x003C41 00:FC31: 85 FA     STA ram_00FA_se
C - - - - - 0x003C43 00:FC33: B9 26 FD  LDA tbl_FD2A - $04,Y
C - - - - - 0x003C46 00:FC36: 85 F9     STA ram_00F9_se
C - - - - - 0x003C48 00:FC38: B9 27 FD  LDA tbl_FD2A - $03,Y
C - - - - - 0x003C4B 00:FC3B: 8D 05 07  STA ram_0705_useless
C - - - - - 0x003C4E 00:FC3E: A9 01     LDA #$01
C - - - - - 0x003C50 00:FC40: 8D 01 07  STA ram_0701_se
C - - - - - 0x003C53 00:FC43: 8D 03 07  STA ram_0703_se
C - - - - - 0x003C56 00:FC46: 8D 04 07  STA ram_0704_se
C - - - - - 0x003C59 00:FC49: 8D 06 07  STA ram_0706_useless
C - - - - - 0x003C5C 00:FC4C: A9 7F     LDA #$7F
C - - - - - 0x003C5E 00:FC4E: 8D 00 07  STA ram_0700_se
bra_FC51:
C - - - - - 0x003C61 00:FC51: CE 01 07  DEC ram_0701_se
C - - - - - 0x003C64 00:FC54: D0 56     BNE bra_FCAC
C - - - - - 0x003C66 00:FC56: A4 F8     LDY ram_00F8_se
C - - - - - 0x003C68 00:FC58: E6 F8     INC ram_00F8_se
C - - - - - 0x003C6A 00:FC5A: B1 F6     LDA (ram_00F6_se_data),Y
C - - - - - 0x003C6C 00:FC5C: D0 26     BNE bra_FC84
C - - - - - 0x003C6E 00:FC5E: A5 F3     LDA ram_music_2
C - - - - - 0x003C70 00:FC60: C9 40     CMP #con_music_unpause
C - - - - - 0x003C72 00:FC62: D0 04     BNE bra_FC68
- - - - - - 0x003C74 00:FC64: A5 FD     LDA ram_00FD_music
- - - - - - 0x003C76 00:FC66: D0 A9     BNE bra_FC11
bra_FC68:
C - - - - - 0x003C78 00:FC68: C9 02     CMP #con_music_background
C - - - - - 0x003C7A 00:FC6A: F0 A5     BEQ bra_FC11
C - - - - - 0x003C7C 00:FC6C: 29 0C     AND #$0C
C - - - - - 0x003C7E 00:FC6E: F0 09     BEQ bra_FC79
C - - - - - 0x003C80 00:FC70: 4A        LSR
C - - - - - 0x003C81 00:FC71: C9 04     CMP #$04
C - - - - - 0x003C83 00:FC73: F0 9C     BEQ bra_FC11
C - - - - - 0x003C85 00:FC75: A9 08     LDA #con_music_08
C - - - - - 0x003C87 00:FC77: D0 98     BNE bra_FC11    ; jmp
bra_FC79:
C - - - - - 0x003C89 00:FC79: A9 00     LDA #con_music_00
C - - - - - 0x003C8B 00:FC7B: 85 F3     STA ram_music_2
C - - - - - 0x003C8D 00:FC7D: 20 3A FA  JSR sub_FA3A
C - - - - - 0x003C90 00:FC80: 8D 04 40  STA $4004
C - - - - - 0x003C93 00:FC83: 60        RTS
bra_FC84:
C - - - - - 0x003C94 00:FC84: 20 83 F9  JSR sub_F983
C - - - - - 0x003C97 00:FC87: 8D 01 07  STA ram_0701_se
C - - - - - 0x003C9A 00:FC8A: A5 F1     LDA ram_copy_sfx_2
C - - - - - 0x003C9C 00:FC8C: D0 36     BNE bra_FCC4
C - - - - - 0x003C9E 00:FC8E: 8A        TXA
C - - - - - 0x003C9F 00:FC8F: 29 3E     AND #$3E
C - - - - - 0x003CA1 00:FC91: 20 7B F9  JSR sub_F97B_set_4006_4007
C - - - - - 0x003CA4 00:FC94: A8        TAY
C - - - - - 0x003CA5 00:FC95: F0 02     BEQ bra_FC99
C - - - - - 0x003CA7 00:FC97: A0 1F     LDY #$1F
bra_FC99:
C - - - - - 0x003CA9 00:FC99: 8C 02 07  STY ram_0702_se
C - - - - - 0x003CAC 00:FC9C: A2 84     LDX #$84
C - - - - - 0x003CAE 00:FC9E: AD 01 07  LDA ram_0701_se
C - - - - - 0x003CB1 00:FCA1: C9 10     CMP #$10
C - - - - - 0x003CB3 00:FCA3: B0 02     BCS bra_FCA7
C - - - - - 0x003CB5 00:FCA5: A2 82     LDX #$82
bra_FCA7:
C - - - - - 0x003CB7 00:FCA7: A0 7F     LDY #$7F
C - - - - - 0x003CB9 00:FCA9: 20 5A F9  JSR sub_F95A_set_4004_4005
bra_FCAC:
C - - - - - 0x003CBC 00:FCAC: A5 F1     LDA ram_copy_sfx_2
C - - - - - 0x003CBE 00:FCAE: D0 14     BNE bra_FCC4
C - - - - - 0x003CC0 00:FCB0: A5 F3     LDA ram_music_2
C - - - - - 0x003CC2 00:FCB2: 29 0C     AND #$0C
C - - - - - 0x003CC4 00:FCB4: F0 0E     BEQ bra_FCC4
C - - - - - 0x003CC6 00:FCB6: AC 02 07  LDY ram_0702_se
C - - - - - 0x003CC9 00:FCB9: F0 03     BEQ bra_FCBE
C - - - - - 0x003CCB 00:FCBB: CE 02 07  DEC ram_0702_se
bra_FCBE:
C - - - - - 0x003CCE 00:FCBE: B9 D9 FF  LDA tbl_FFD9,Y
C - - - - - 0x003CD1 00:FCC1: 8D 04 40  STA $4004
bra_FCC4:
C - - - - - 0x003CD4 00:FCC4: A4 F9     LDY ram_00F9_se
C - - - - - 0x003CD6 00:FCC6: F0 32     BEQ bra_FCFA
C - - - - - 0x003CD8 00:FCC8: CE 03 07  DEC ram_0703_se
C - - - - - 0x003CDB 00:FCCB: D0 2D     BNE bra_FCFA
bra_FCCD_loop:
C - - - - - 0x003CDD 00:FCCD: A4 F9     LDY ram_00F9_se
C - - - - - 0x003CDF 00:FCCF: E6 F9     INC ram_00F9_se
C - - - - - 0x003CE1 00:FCD1: B1 F6     LDA (ram_00F6_se_data),Y
C - - - - - 0x003CE3 00:FCD3: D0 0B     BNE bra_FCE0
- - - - - - 0x003CE5 00:FCD5: A4 F9     LDY ram_00F9_se
- - - - - - 0x003CE7 00:FCD7: E6 F9     INC ram_00F9_se
- - - - - - 0x003CE9 00:FCD9: B1 F6     LDA (ram_00F6_se_data),Y
- - - - - - 0x003CEB 00:FCDB: 8D 00 07  STA ram_0700_se
- - - - - - 0x003CEE 00:FCDE: D0 ED     BNE bra_FCCD_loop
bra_FCE0:
C - - - - - 0x003CF0 00:FCE0: 20 83 F9  JSR sub_F983
C - - - - - 0x003CF3 00:FCE3: 8D 03 07  STA ram_0703_se
C - - - - - 0x003CF6 00:FCE6: 8A        TXA
C - - - - - 0x003CF7 00:FCE7: 29 3E     AND #$3E
C - - - - - 0x003CF9 00:FCE9: 20 64 F9  JSR sub_F964_set_4002x_4003x
C - - - - - 0x003CFC 00:FCEC: D0 04     BNE bra_FCF2
C - - - - - 0x003CFE 00:FCEE: A2 10     LDX #$10
C - - - - - 0x003D00 00:FCF0: D0 02     BNE bra_FCF4    ; jmp
bra_FCF2:
C - - - - - 0x003D02 00:FCF2: A2 06     LDX #$06
bra_FCF4:
C - - - - - 0x003D04 00:FCF4: AC 00 07  LDY ram_0700_se
C - - - - - 0x003D07 00:FCF7: 20 53 F9  JSR sub_F953_set_4000_4001
bra_FCFA:
C - - - - - 0x003D0A 00:FCFA: A4 FA     LDY ram_00FA_se
C - - - - - 0x003D0C 00:FCFC: F0 23     BEQ bra_FD21_RTS
C - - - - - 0x003D0E 00:FCFE: CE 04 07  DEC ram_0704_se
C - - - - - 0x003D11 00:FD01: D0 1E     BNE bra_FD21_RTS
C - - - - - 0x003D13 00:FD03: E6 FA     INC ram_00FA_se
C - - - - - 0x003D15 00:FD05: B1 F6     LDA (ram_00F6_se_data),Y
C - - - - - 0x003D17 00:FD07: 20 83 F9  JSR sub_F983
C - - - - - 0x003D1A 00:FD0A: 8D 04 07  STA ram_0704_se
C - - - - - 0x003D1D 00:FD0D: 18        CLC
C - - - - - 0x003D1E 00:FD0E: 69 FE     ADC #$FE
C - - - - - 0x003D20 00:FD10: C9 0E     CMP #$0E
C - - - - - 0x003D22 00:FD12: 90 02     BCC bra_FD16_not_overflow
C - - - - - 0x003D24 00:FD14: A9 0E     LDA #$0E
bra_FD16_not_overflow:
C - - - - - 0x003D26 00:FD16: 0A        ASL
C - - - - - 0x003D27 00:FD17: 0A        ASL
C - - - - - 0x003D28 00:FD18: 8D 08 40  STA $4008
C - - - - - 0x003D2B 00:FD1B: 8A        TXA
C - - - - - 0x003D2C 00:FD1C: 29 3E     AND #$3E
C - - - - - 0x003D2E 00:FD1E: 20 7F F9  JSR sub_F97F_set_400A_400B
bra_FD21_RTS:
C - - - - - 0x003D31 00:FD21: 60        RTS



tbl_FD22_offset:
- D 3 - - - 0x003D32 00:FD22: 21        .byte $21   ; 01 
- D 3 - - - 0x003D33 00:FD23: 08        .byte $08   ; 02 
- D 3 - - - 0x003D34 00:FD24: 0D        .byte $0D   ; 04 
- D 3 - - - 0x003D35 00:FD25: 12        .byte $12   ; 08 
- D 3 - - - 0x003D36 00:FD26: 26        .byte $26   ; 10 
- - - - - - 0x003D37 00:FD27: 17        .byte $17   ; 20 
- - - - - - 0x003D38 00:FD28: 17        .byte $17   ; 40 
- D 3 - - - 0x003D39 00:FD29: 1C        .byte $1C   ; 80 



tbl_FD2A:
; 08
- D 3 - - - 0x003D3A 00:FD2A: 06        .byte $06   ; 
- D 3 - - - 0x003D3B 00:FD2B: 4A FE     .word _off002_FE4A_02
- D 3 - - - 0x003D3D 00:FD2D: 09        .byte off_FE53_02_1 - _off002_FE4A_02
- D 3 - - - 0x003D3E 00:FD2E: 00        .byte off_FE4A_02_2 - _off002_FE4A_02
; 0D
- D 3 - - - 0x003D3F 00:FD2F: 06        .byte $06   ; 
- D 3 - - - 0x003D40 00:FD30: 4D FD     .word _off002_FD4D_04
- D 3 - - - 0x003D42 00:FD32: 82        .byte off_FDCF_04_1 - _off002_FD4D_04
- D 3 - - - 0x003D43 00:FD33: 42        .byte off_FD8F_04_2 - _off002_FD4D_04
; 12
- D 3 - - - 0x003D44 00:FD34: 06        .byte $06   ; 
- D 3 - - - 0x003D45 00:FD35: EF FD     .word _off002_FDEF_08
- D 3 - - - 0x003D47 00:FD37: 49        .byte off_FE38_08_1 - _off002_FDEF_08
- D 3 - - - 0x003D48 00:FD38: 25        .byte off_FE14_08_2 - _off002_FDEF_08
; 17
- D 3 - - - 0x003D49 00:FD39: 00        .byte $00   ; 
- - - - - - 0x003D4A 00:FD3A: D2 FF     .word _off002_FFD2_20_40
- - - - - - 0x003D4C 00:FD3C: 00        .byte off_FFD2_20_40_1 - _off002_FFD2_20_40
- - - - - - 0x003D4D 00:FD3D: 00        .byte off_FFD2_20_40_2 - _off002_FFD2_20_40
; 1C
- D 3 - - - 0x003D4E 00:FD3E: 00        .byte $00   ; 
- D 3 - - - 0x003D4F 00:FD3F: D8 FF     .word _off002_FFD8_80
- D 3 - - - 0x003D51 00:FD41: 00        .byte off_FFD8_80_1 - _off002_FFD8_80
- D 3 - - - 0x003D52 00:FD42: 00        .byte off_FFD8_80_2 - _off002_FFD8_80
; 21
- D 3 - - - 0x003D53 00:FD43: 06        .byte $06   ; 
- D 3 - - - 0x003D54 00:FD44: B9 FE     .word _off002_FEB9_01
- D 3 - - - 0x003D56 00:FD46: 95        .byte off_FF4E_01_1 - _off002_FEB9_01
- D 3 - - - 0x003D57 00:FD47: 24        .byte off_FEDD_01_2 - _off002_FEB9_01
; 26
- D 3 - - - 0x003D58 00:FD48: 06        .byte $06   ; 
- D 3 - - - 0x003D59 00:FD49: 71 FF     .word _off002_FF71_10
- D 3 - - - 0x003D5B 00:FD4B: 40        .byte off_FFB1_10_1 - _off002_FF71_10
- D 3 - - - 0x003D5C 00:FD4C: 28        .byte off_FF99_10_2 - _off002_FF71_10



_off002_FD4D_04:
- D 3 - I - 0x003D5D 00:FD4D: 42        .byte $42   ; 
- D 3 - I - 0x003D5E 00:FD4E: 02        .byte $02   ; 
- D 3 - I - 0x003D5F 00:FD4F: 04        .byte $04   ; 
- D 3 - I - 0x003D60 00:FD50: 82        .byte $82   ; 
- D 3 - I - 0x003D61 00:FD51: 04        .byte $04   ; 
- D 3 - I - 0x003D62 00:FD52: 30        .byte $30   ; 
- D 3 - I - 0x003D63 00:FD53: 04        .byte $04   ; 
- D 3 - I - 0x003D64 00:FD54: 30        .byte $30   ; 
- D 3 - I - 0x003D65 00:FD55: 44        .byte $44   ; 
- D 3 - I - 0x003D66 00:FD56: 02        .byte $02   ; 
- D 3 - I - 0x003D67 00:FD57: 04        .byte $04   ; 
- D 3 - I - 0x003D68 00:FD58: 4B        .byte $4B   ; 
- D 3 - I - 0x003D69 00:FD59: 84        .byte $84   ; 
- D 3 - I - 0x003D6A 00:FD5A: 02        .byte $02   ; 
- D 3 - I - 0x003D6B 00:FD5B: 28        .byte $28   ; 
- D 3 - I - 0x003D6C 00:FD5C: AF        .byte $AF   ; 
- D 3 - I - 0x003D6D 00:FD5D: E9        .byte $E9   ; 
- D 3 - I - 0x003D6E 00:FD5E: EF        .byte $EF   ; 
- D 3 - I - 0x003D6F 00:FD5F: 42        .byte $42   ; 
- D 3 - I - 0x003D70 00:FD60: 02        .byte $02   ; 
- D 3 - I - 0x003D71 00:FD61: 04        .byte $04   ; 
- D 3 - I - 0x003D72 00:FD62: 82        .byte $82   ; 
- D 3 - I - 0x003D73 00:FD63: 84        .byte $84   ; 
- D 3 - I - 0x003D74 00:FD64: 44        .byte $44   ; 
- D 3 - I - 0x003D75 00:FD65: 02        .byte $02   ; 
- D 3 - I - 0x003D76 00:FD66: 04        .byte $04   ; 
- D 3 - I - 0x003D77 00:FD67: 4B        .byte $4B   ; 
- D 3 - I - 0x003D78 00:FD68: 84        .byte $84   ; 
- D 3 - I - 0x003D79 00:FD69: 02        .byte $02   ; 
- D 3 - I - 0x003D7A 00:FD6A: 28        .byte $28   ; 
- D 3 - I - 0x003D7B 00:FD6B: AF        .byte $AF   ; 
- D 3 - I - 0x003D7C 00:FD6C: E9        .byte $E9   ; 
- D 3 - I - 0x003D7D 00:FD6D: EF        .byte $EF   ; 
- D 3 - I - 0x003D7E 00:FD6E: 82        .byte $82   ; 
- D 3 - I - 0x003D7F 00:FD6F: 45        .byte $45   ; 
- D 3 - I - 0x003D80 00:FD70: 6D        .byte $6D   ; 
- D 3 - I - 0x003D81 00:FD71: 8A        .byte $8A   ; 
- D 3 - I - 0x003D82 00:FD72: 48        .byte $48   ; 
- D 3 - I - 0x003D83 00:FD73: 02        .byte $02   ; 
- D 3 - I - 0x003D84 00:FD74: 04        .byte $04   ; 
- D 3 - I - 0x003D85 00:FD75: 6E        .byte $6E   ; 
- D 3 - I - 0x003D86 00:FD76: 02        .byte $02   ; 
- D 3 - I - 0x003D87 00:FD77: 28        .byte $28   ; 
- D 3 - I - 0x003D88 00:FD78: 66        .byte $66   ; 
- D 3 - I - 0x003D89 00:FD79: 02        .byte $02   ; 
- D 3 - I - 0x003D8A 00:FD7A: 24        .byte $24   ; 
- D 3 - I - 0x003D8B 00:FD7B: 60        .byte $60   ; 
- D 3 - I - 0x003D8C 00:FD7C: 02        .byte $02   ; 
- D 3 - I - 0x003D8D 00:FD7D: E2        .byte $E2   ; 
- D 3 - I - 0x003D8E 00:FD7E: 28        .byte $28   ; 
- D 3 - I - 0x003D8F 00:FD7F: AB        .byte $AB   ; 
- D 3 - I - 0x003D90 00:FD80: ED        .byte $ED   ; 
- D 3 - I - 0x003D91 00:FD81: C5        .byte $C5   ; 
- D 3 - I - 0x003D92 00:FD82: 91        .byte $91   ; 
- D 3 - I - 0x003D93 00:FD83: CF        .byte $CF   ; 
- D 3 - I - 0x003D94 00:FD84: CB        .byte $CB   ; 
- D 3 - I - 0x003D95 00:FD85: 85        .byte $85   ; 
- D 3 - I - 0x003D96 00:FD86: EF        .byte $EF   ; 
- D 3 - I - 0x003D97 00:FD87: E9        .byte $E9   ; 
- D 3 - I - 0x003D98 00:FD88: A7        .byte $A7   ; 
- D 3 - I - 0x003D99 00:FD89: E5        .byte $E5   ; 
- D 3 - I - 0x003D9A 00:FD8A: E1        .byte $E1   ; 
- D 3 - I - 0x003D9B 00:FD8B: 9B        .byte $9B   ; 
- D 3 - I - 0x003D9C 00:FD8C: E1        .byte $E1   ; 
- D 3 - I - 0x003D9D 00:FD8D: E5        .byte $E5   ; 
- D 3 - I - 0x003D9E 00:FD8E: 00        .byte $00   ; 



off_FD8F_04_2:
- D 3 - I - 0x003D9F 00:FD8F: 42        .byte $42   ; 
- D 3 - I - 0x003DA0 00:FD90: 02        .byte $02   ; 
- D 3 - I - 0x003DA1 00:FD91: 22        .byte $22   ; 
- D 3 - I - 0x003DA2 00:FD92: 82        .byte $82   ; 
- D 3 - I - 0x003DA3 00:FD93: A2        .byte $A2   ; 
- D 3 - I - 0x003DA4 00:FD94: 62        .byte $62   ; 
- D 3 - I - 0x003DA5 00:FD95: 02        .byte $02   ; 
- D 3 - I - 0x003DA6 00:FD96: 22        .byte $22   ; 
- D 3 - I - 0x003DA7 00:FD97: 63        .byte $63   ; 
- D 3 - I - 0x003DA8 00:FD98: A2        .byte $A2   ; 
- D 3 - I - 0x003DA9 00:FD99: 02        .byte $02   ; 
- D 3 - I - 0x003DAA 00:FD9A: 1E        .byte $1E   ; 
- D 3 - I - 0x003DAB 00:FD9B: A5        .byte $A5   ; 
- D 3 - I - 0x003DAC 00:FD9C: DF        .byte $DF   ; 
- D 3 - I - 0x003DAD 00:FD9D: E5        .byte $E5   ; 
- D 3 - I - 0x003DAE 00:FD9E: 42        .byte $42   ; 
- D 3 - I - 0x003DAF 00:FD9F: 02        .byte $02   ; 
- D 3 - I - 0x003DB0 00:FDA0: 22        .byte $22   ; 
- D 3 - I - 0x003DB1 00:FDA1: 82        .byte $82   ; 
- D 3 - I - 0x003DB2 00:FDA2: A2        .byte $A2   ; 
- D 3 - I - 0x003DB3 00:FDA3: 62        .byte $62   ; 
- D 3 - I - 0x003DB4 00:FDA4: 02        .byte $02   ; 
- D 3 - I - 0x003DB5 00:FDA5: 22        .byte $22   ; 
- D 3 - I - 0x003DB6 00:FDA6: 63        .byte $63   ; 
- D 3 - I - 0x003DB7 00:FDA7: A2        .byte $A2   ; 
- D 3 - I - 0x003DB8 00:FDA8: 02        .byte $02   ; 
- D 3 - I - 0x003DB9 00:FDA9: 1E        .byte $1E   ; 
- D 3 - I - 0x003DBA 00:FDAA: A5        .byte $A5   ; 
- D 3 - I - 0x003DBB 00:FDAB: DF        .byte $DF   ; 
- D 3 - I - 0x003DBC 00:FDAC: E5        .byte $E5   ; 
- D 3 - I - 0x003DBD 00:FDAD: 82        .byte $82   ; 
- D 3 - I - 0x003DBE 00:FDAE: 61        .byte $61   ; 
- D 3 - I - 0x003DBF 00:FDAF: 61        .byte $61   ; 
- D 3 - I - 0x003DC0 00:FDB0: AC        .byte $AC   ; 
- D 3 - I - 0x003DC1 00:FDB1: 6C        .byte $6C   ; 
- D 3 - I - 0x003DC2 00:FDB2: 02        .byte $02   ; 
- D 3 - I - 0x003DC3 00:FDB3: 2C        .byte $2C   ; 
- D 3 - I - 0x003DC4 00:FDB4: 68        .byte $68   ; 
- D 3 - I - 0x003DC5 00:FDB5: 02        .byte $02   ; 
- D 3 - I - 0x003DC6 00:FDB6: 24        .byte $24   ; 
- D 3 - I - 0x003DC7 00:FDB7: 60        .byte $60   ; 
- D 3 - I - 0x003DC8 00:FDB8: 02        .byte $02   ; 
- D 3 - I - 0x003DC9 00:FDB9: 1E        .byte $1E   ; 
- D 3 - I - 0x003DCA 00:FDBA: 5A        .byte $5A   ; 
- D 3 - I - 0x003DCB 00:FDBB: 02        .byte $02   ; 
- D 3 - I - 0x003DCC 00:FDBC: 1A        .byte $1A   ; 
- D 3 - I - 0x003DCD 00:FDBD: 43        .byte $43   ; 
- D 3 - I - 0x003DCE 00:FDBE: 02        .byte $02   ; 
- D 3 - I - 0x003DCF 00:FDBF: 24        .byte $24   ; 
- D 3 - I - 0x003DD0 00:FDC0: A5        .byte $A5   ; 
- D 3 - I - 0x003DD1 00:FDC1: E7        .byte $E7   ; 
- D 3 - I - 0x003DD2 00:FDC2: ED        .byte $ED   ; 
- D 3 - I - 0x003DD3 00:FDC3: 8B        .byte $8B   ; 
- D 3 - I - 0x003DD4 00:FDC4: C9        .byte $C9   ; 
- D 3 - I - 0x003DD5 00:FDC5: C5        .byte $C5   ; 
- D 3 - I - 0x003DD6 00:FDC6: AD        .byte $AD   ; 
- D 3 - I - 0x003DD7 00:FDC7: E9        .byte $E9   ; 
- D 3 - I - 0x003DD8 00:FDC8: E1        .byte $E1   ; 
- D 3 - I - 0x003DD9 00:FDC9: A1        .byte $A1   ; 
- D 3 - I - 0x003DDA 00:FDCA: DF        .byte $DF   ; 
- D 3 - I - 0x003DDB 00:FDCB: DB        .byte $DB   ; 
- D 3 - I - 0x003DDC 00:FDCC: B3        .byte $B3   ; 
- D 3 - I - 0x003DDD 00:FDCD: DB        .byte $DB   ; 
- D 3 - I - 0x003DDE 00:FDCE: DF        .byte $DF   ; 



off_FDCF_04_1:
- D 3 - I - 0x003DDF 00:FDCF: 9A        .byte $9A   ; 
- D 3 - I - 0x003DE0 00:FDD0: A2        .byte $A2   ; 
- D 3 - I - 0x003DE1 00:FDD1: A8        .byte $A8   ; 
- D 3 - I - 0x003DE2 00:FDD2: AC        .byte $AC   ; 
- D 3 - I - 0x003DE3 00:FDD3: AE        .byte $AE   ; 
- D 3 - I - 0x003DE4 00:FDD4: AC        .byte $AC   ; 
- D 3 - I - 0x003DE5 00:FDD5: A8        .byte $A8   ; 
- D 3 - I - 0x003DE6 00:FDD6: A2        .byte $A2   ; 
- D 3 - I - 0x003DE7 00:FDD7: 9A        .byte $9A   ; 
- D 3 - I - 0x003DE8 00:FDD8: A2        .byte $A2   ; 
- D 3 - I - 0x003DE9 00:FDD9: A8        .byte $A8   ; 
- D 3 - I - 0x003DEA 00:FDDA: AC        .byte $AC   ; 
- D 3 - I - 0x003DEB 00:FDDB: AE        .byte $AE   ; 
- D 3 - I - 0x003DEC 00:FDDC: AC        .byte $AC   ; 
- D 3 - I - 0x003DED 00:FDDD: A8        .byte $A8   ; 
- D 3 - I - 0x003DEE 00:FDDE: A2        .byte $A2   ; 
- D 3 - I - 0x003DEF 00:FDDF: A4        .byte $A4   ; 
- D 3 - I - 0x003DF0 00:FDE0: AC        .byte $AC   ; 
- D 3 - I - 0x003DF1 00:FDE1: 84        .byte $84   ; 
- D 3 - I - 0x003DF2 00:FDE2: 88        .byte $88   ; 
- D 3 - I - 0x003DF3 00:FDE3: 8A        .byte $8A   ; 
- D 3 - I - 0x003DF4 00:FDE4: 88        .byte $88   ; 
- D 3 - I - 0x003DF5 00:FDE5: 84        .byte $84   ; 
- D 3 - I - 0x003DF6 00:FDE6: AC        .byte $AC   ; 
- D 3 - I - 0x003DF7 00:FDE7: 9A        .byte $9A   ; 
- D 3 - I - 0x003DF8 00:FDE8: A2        .byte $A2   ; 
- D 3 - I - 0x003DF9 00:FDE9: A8        .byte $A8   ; 
- D 3 - I - 0x003DFA 00:FDEA: AC        .byte $AC   ; 
- D 3 - I - 0x003DFB 00:FDEB: AE        .byte $AE   ; 
- D 3 - I - 0x003DFC 00:FDEC: AC        .byte $AC   ; 
- D 3 - I - 0x003DFD 00:FDED: A8        .byte $A8   ; 
- D 3 - I - 0x003DFE 00:FDEE: A2        .byte $A2   ; 



_off002_FDEF_08:
- D 3 - I - 0x003DFF 00:FDEF: A7        .byte $A7   ; 
- D 3 - I - 0x003E00 00:FDF0: E9        .byte $E9   ; 
- D 3 - I - 0x003E01 00:FDF1: E9        .byte $E9   ; 
- D 3 - I - 0x003E02 00:FDF2: A7        .byte $A7   ; 
- D 3 - I - 0x003E03 00:FDF3: E9        .byte $E9   ; 
- D 3 - I - 0x003E04 00:FDF4: E9        .byte $E9   ; 
- D 3 - I - 0x003E05 00:FDF5: 87        .byte $87   ; 
- D 3 - I - 0x003E06 00:FDF6: C9        .byte $C9   ; 
- D 3 - I - 0x003E07 00:FDF7: C9        .byte $C9   ; 
- D 3 - I - 0x003E08 00:FDF8: 87        .byte $87   ; 
- D 3 - I - 0x003E09 00:FDF9: C9        .byte $C9   ; 
- D 3 - I - 0x003E0A 00:FDFA: C9        .byte $C9   ; 
- D 3 - I - 0x003E0B 00:FDFB: 92        .byte $92   ; 
- D 3 - I - 0x003E0C 00:FDFC: 8E        .byte $8E   ; 
- D 3 - I - 0x003E0D 00:FDFD: 4A        .byte $4A   ; 
- D 3 - I - 0x003E0E 00:FDFE: 02        .byte $02   ; 
- D 3 - I - 0x003E0F 00:FDFF: 84        .byte $84   ; 
- D 3 - I - 0x003E10 00:FE00: 04        .byte $04   ; 
- D 3 - I - 0x003E11 00:FE01: 44        .byte $44   ; 
- D 3 - I - 0x003E12 00:FE02: 02        .byte $02   ; 
- D 3 - I - 0x003E13 00:FE03: A2        .byte $A2   ; 
- D 3 - I - 0x003E14 00:FE04: 02        .byte $02   ; 
- D 3 - I - 0x003E15 00:FE05: A4        .byte $A4   ; 
- D 3 - I - 0x003E16 00:FE06: A6        .byte $A6   ; 
- D 3 - I - 0x003E17 00:FE07: A9        .byte $A9   ; 
- D 3 - I - 0x003E18 00:FE08: E7        .byte $E7   ; 
- D 3 - I - 0x003E19 00:FE09: E9        .byte $E9   ; 
- D 3 - I - 0x003E1A 00:FE0A: AB        .byte $AB   ; 
- D 3 - I - 0x003E1B 00:FE0B: E9        .byte $E9   ; 
- D 3 - I - 0x003E1C 00:FE0C: EB        .byte $EB   ; 
- D 3 - I - 0x003E1D 00:FE0D: AD        .byte $AD   ; 
- D 3 - I - 0x003E1E 00:FE0E: EB        .byte $EB   ; 
- D 3 - I - 0x003E1F 00:FE0F: ED        .byte $ED   ; 
- D 3 - I - 0x003E20 00:FE10: B1        .byte $B1   ; 
- D 3 - I - 0x003E21 00:FE11: ED        .byte $ED   ; 
- D 3 - I - 0x003E22 00:FE12: F1        .byte $F1   ; 
- D 3 - I - 0x003E23 00:FE13: 00        .byte $00   ; 



off_FE14_08_2:
- D 3 - I - 0x003E24 00:FE14: 9F        .byte $9F   ; 
- D 3 - I - 0x003E25 00:FE15: DF        .byte $DF   ; 
- D 3 - I - 0x003E26 00:FE16: DF        .byte $DF   ; 
- D 3 - I - 0x003E27 00:FE17: 9F        .byte $9F   ; 
- D 3 - I - 0x003E28 00:FE18: DF        .byte $DF   ; 
- D 3 - I - 0x003E29 00:FE19: DF        .byte $DF   ; 
- D 3 - I - 0x003E2A 00:FE1A: A7        .byte $A7   ; 
- D 3 - I - 0x003E2B 00:FE1B: E7        .byte $E7   ; 
- D 3 - I - 0x003E2C 00:FE1C: E7        .byte $E7   ; 
- D 3 - I - 0x003E2D 00:FE1D: AD        .byte $AD   ; 
- D 3 - I - 0x003E2E 00:FE1E: ED        .byte $ED   ; 
- D 3 - I - 0x003E2F 00:FE1F: ED        .byte $ED   ; 
- D 3 - I - 0x003E30 00:FE20: 88        .byte $88   ; 
- D 3 - I - 0x003E31 00:FE21: 88        .byte $88   ; 
- D 3 - I - 0x003E32 00:FE22: 44        .byte $44   ; 
- D 3 - I - 0x003E33 00:FE23: 02        .byte $02   ; 
- D 3 - I - 0x003E34 00:FE24: AC        .byte $AC   ; 
- D 3 - I - 0x003E35 00:FE25: 2C        .byte $2C   ; 
- D 3 - I - 0x003E36 00:FE26: 68        .byte $68   ; 
- D 3 - I - 0x003E37 00:FE27: 02        .byte $02   ; 
- D 3 - I - 0x003E38 00:FE28: 9A        .byte $9A   ; 
- D 3 - I - 0x003E39 00:FE29: 02        .byte $02   ; 
- D 3 - I - 0x003E3A 00:FE2A: 9E        .byte $9E   ; 
- D 3 - I - 0x003E3B 00:FE2B: A0        .byte $A0   ; 
- D 3 - I - 0x003E3C 00:FE2C: BB        .byte $BB   ; 
- D 3 - I - 0x003E3D 00:FE2D: F9        .byte $F9   ; 
- D 3 - I - 0x003E3E 00:FE2E: FB        .byte $FB   ; 
- D 3 - I - 0x003E3F 00:FE2F: 9B        .byte $9B   ; 
- D 3 - I - 0x003E40 00:FE30: FB        .byte $FB   ; 
- D 3 - I - 0x003E41 00:FE31: DB        .byte $DB   ; 
- D 3 - I - 0x003E42 00:FE32: 9D        .byte $9D   ; 
- D 3 - I - 0x003E43 00:FE33: DB        .byte $DB   ; 
- D 3 - I - 0x003E44 00:FE34: DD        .byte $DD   ; 
- D 3 - I - 0x003E45 00:FE35: A9        .byte $A9   ; 
- D 3 - I - 0x003E46 00:FE36: E5        .byte $E5   ; 
- D 3 - I - 0x003E47 00:FE37: E9        .byte $E9   ; 



off_FE38_08_1:
- D 3 - I - 0x003E48 00:FE38: A8        .byte $A8   ; 
- D 3 - I - 0x003E49 00:FE39: B0        .byte $B0   ; 
- D 3 - I - 0x003E4A 00:FE3A: 88        .byte $88   ; 
- D 3 - I - 0x003E4B 00:FE3B: 90        .byte $90   ; 
- D 3 - I - 0x003E4C 00:FE3C: 98        .byte $98   ; 
- D 3 - I - 0x003E4D 00:FE3D: 98        .byte $98   ; 
- D 3 - I - 0x003E4E 00:FE3E: 54        .byte $54   ; 
- D 3 - I - 0x003E4F 00:FE3F: 02        .byte $02   ; 
- D 3 - I - 0x003E50 00:FE40: 8E        .byte $8E   ; 
- D 3 - I - 0x003E51 00:FE41: 0E        .byte $0E   ; 
- D 3 - I - 0x003E52 00:FE42: 9A        .byte $9A   ; 
- D 3 - I - 0x003E53 00:FE43: A2        .byte $A2   ; 
- D 3 - I - 0x003E54 00:FE44: A4        .byte $A4   ; 
- D 3 - I - 0x003E55 00:FE45: A6        .byte $A6   ; 
- D 3 - I - 0x003E56 00:FE46: A8        .byte $A8   ; 
- D 3 - I - 0x003E57 00:FE47: AA        .byte $AA   ; 
- D 3 - I - 0x003E58 00:FE48: AC        .byte $AC   ; 
- D 3 - I - 0x003E59 00:FE49: B0        .byte $B0   ; 



_off002_FE4A_02:
off_FE4A_02_2:
- D 3 - I - 0x003E5A 00:FE4A: 03        .byte $03   ; 
- D 3 - I - 0x003E5B 00:FE4B: 03        .byte $03   ; 
- D 3 - I - 0x003E5C 00:FE4C: 03        .byte $03   ; 
- D 3 - I - 0x003E5D 00:FE4D: 03        .byte $03   ; 
- D 3 - I - 0x003E5E 00:FE4E: 03        .byte $03   ; 
- D 3 - I - 0x003E5F 00:FE4F: 03        .byte $03   ; 
- D 3 - I - 0x003E60 00:FE50: 03        .byte $03   ; 
- D 3 - I - 0x003E61 00:FE51: 03        .byte $03   ; 
- D 3 - I - 0x003E62 00:FE52: 00        .byte $00   ; 



off_FE53_02_1:
- D 3 - I - 0x003E63 00:FE53: 68        .byte $68   ; 
- D 3 - I - 0x003E64 00:FE54: 02        .byte $02   ; 
- D 3 - I - 0x003E65 00:FE55: 22        .byte $22   ; 
- D 3 - I - 0x003E66 00:FE56: 64        .byte $64   ; 
- D 3 - I - 0x003E67 00:FE57: 02        .byte $02   ; 
- D 3 - I - 0x003E68 00:FE58: 28        .byte $28   ; 
- D 3 - I - 0x003E69 00:FE59: 42        .byte $42   ; 
- D 3 - I - 0x003E6A 00:FE5A: 02        .byte $02   ; 
- D 3 - I - 0x003E6B 00:FE5B: 04        .byte $04   ; 
- D 3 - I - 0x003E6C 00:FE5C: 30        .byte $30   ; 
- D 3 - I - 0x003E6D 00:FE5D: 04        .byte $04   ; 
- D 3 - I - 0x003E6E 00:FE5E: 30        .byte $30   ; 
- D 3 - I - 0x003E6F 00:FE5F: 04        .byte $04   ; 
- D 3 - I - 0x003E70 00:FE60: 68        .byte $68   ; 
- D 3 - I - 0x003E71 00:FE61: 02        .byte $02   ; 
- D 3 - I - 0x003E72 00:FE62: 22        .byte $22   ; 
- D 3 - I - 0x003E73 00:FE63: 64        .byte $64   ; 
- D 3 - I - 0x003E74 00:FE64: 02        .byte $02   ; 
- D 3 - I - 0x003E75 00:FE65: 28        .byte $28   ; 
- D 3 - I - 0x003E76 00:FE66: 42        .byte $42   ; 
- D 3 - I - 0x003E77 00:FE67: 02        .byte $02   ; 
- D 3 - I - 0x003E78 00:FE68: 04        .byte $04   ; 
- D 3 - I - 0x003E79 00:FE69: 30        .byte $30   ; 
- D 3 - I - 0x003E7A 00:FE6A: 04        .byte $04   ; 
- D 3 - I - 0x003E7B 00:FE6B: 30        .byte $30   ; 
- D 3 - I - 0x003E7C 00:FE6C: 04        .byte $04   ; 
- D 3 - I - 0x003E7D 00:FE6D: 6C        .byte $6C   ; 
- D 3 - I - 0x003E7E 00:FE6E: 02        .byte $02   ; 
- D 3 - I - 0x003E7F 00:FE6F: 24        .byte $24   ; 
- D 3 - I - 0x003E80 00:FE70: 68        .byte $68   ; 
- D 3 - I - 0x003E81 00:FE71: 02        .byte $02   ; 
- D 3 - I - 0x003E82 00:FE72: 2C        .byte $2C   ; 
- D 3 - I - 0x003E83 00:FE73: 42        .byte $42   ; 
- D 3 - I - 0x003E84 00:FE74: 02        .byte $02   ; 
- D 3 - I - 0x003E85 00:FE75: 08        .byte $08   ; 
- D 3 - I - 0x003E86 00:FE76: 06        .byte $06   ; 
- D 3 - I - 0x003E87 00:FE77: 08        .byte $08   ; 
- D 3 - I - 0x003E88 00:FE78: 06        .byte $06   ; 
- D 3 - I - 0x003E89 00:FE79: 08        .byte $08   ; 
- D 3 - I - 0x003E8A 00:FE7A: 6C        .byte $6C   ; 
- D 3 - I - 0x003E8B 00:FE7B: 02        .byte $02   ; 
- D 3 - I - 0x003E8C 00:FE7C: 24        .byte $24   ; 
- D 3 - I - 0x003E8D 00:FE7D: 68        .byte $68   ; 
- D 3 - I - 0x003E8E 00:FE7E: 02        .byte $02   ; 
- D 3 - I - 0x003E8F 00:FE7F: 2C        .byte $2C   ; 
- D 3 - I - 0x003E90 00:FE80: 42        .byte $42   ; 
- D 3 - I - 0x003E91 00:FE81: 02        .byte $02   ; 
- D 3 - I - 0x003E92 00:FE82: 08        .byte $08   ; 
- D 3 - I - 0x003E93 00:FE83: 06        .byte $06   ; 
- D 3 - I - 0x003E94 00:FE84: 08        .byte $08   ; 
- D 3 - I - 0x003E95 00:FE85: 06        .byte $06   ; 
- D 3 - I - 0x003E96 00:FE86: 08        .byte $08   ; 
- D 3 - I - 0x003E97 00:FE87: 70        .byte $70   ; 
- D 3 - I - 0x003E98 00:FE88: 02        .byte $02   ; 
- D 3 - I - 0x003E99 00:FE89: 28        .byte $28   ; 
- D 3 - I - 0x003E9A 00:FE8A: 6C        .byte $6C   ; 
- D 3 - I - 0x003E9B 00:FE8B: 02        .byte $02   ; 
- D 3 - I - 0x003E9C 00:FE8C: 30        .byte $30   ; 
- D 3 - I - 0x003E9D 00:FE8D: 42        .byte $42   ; 
- D 3 - I - 0x003E9E 00:FE8E: 02        .byte $02   ; 
- D 3 - I - 0x003E9F 00:FE8F: 0E        .byte $0E   ; 
- D 3 - I - 0x003EA0 00:FE90: 0C        .byte $0C   ; 
- D 3 - I - 0x003EA1 00:FE91: 0E        .byte $0E   ; 
- D 3 - I - 0x003EA2 00:FE92: 0C        .byte $0C   ; 
- D 3 - I - 0x003EA3 00:FE93: 0E        .byte $0E   ; 
- D 3 - I - 0x003EA4 00:FE94: 70        .byte $70   ; 
- D 3 - I - 0x003EA5 00:FE95: 02        .byte $02   ; 
- D 3 - I - 0x003EA6 00:FE96: 28        .byte $28   ; 
- D 3 - I - 0x003EA7 00:FE97: 6C        .byte $6C   ; 
- D 3 - I - 0x003EA8 00:FE98: 02        .byte $02   ; 
- D 3 - I - 0x003EA9 00:FE99: 30        .byte $30   ; 
- D 3 - I - 0x003EAA 00:FE9A: 42        .byte $42   ; 
- D 3 - I - 0x003EAB 00:FE9B: 02        .byte $02   ; 
- D 3 - I - 0x003EAC 00:FE9C: 0E        .byte $0E   ; 
- D 3 - I - 0x003EAD 00:FE9D: 0C        .byte $0C   ; 
- D 3 - I - 0x003EAE 00:FE9E: 0E        .byte $0E   ; 
- D 3 - I - 0x003EAF 00:FE9F: 0C        .byte $0C   ; 
- D 3 - I - 0x003EB0 00:FEA0: 0E        .byte $0E   ; 
- D 3 - I - 0x003EB1 00:FEA1: 8D        .byte $8D   ; 
- D 3 - I - 0x003EB2 00:FEA2: C5        .byte $C5   ; 
- D 3 - I - 0x003EB3 00:FEA3: E9        .byte $E9   ; 
- D 3 - I - 0x003EB4 00:FEA4: 8D        .byte $8D   ; 
- D 3 - I - 0x003EB5 00:FEA5: C5        .byte $C5   ; 
- D 3 - I - 0x003EB6 00:FEA6: E9        .byte $E9   ; 
- D 3 - I - 0x003EB7 00:FEA7: 8F        .byte $8F   ; 
- D 3 - I - 0x003EB8 00:FEA8: C9        .byte $C9   ; 
- D 3 - I - 0x003EB9 00:FEA9: ED        .byte $ED   ; 
- D 3 - I - 0x003EBA 00:FEAA: 8F        .byte $8F   ; 
- D 3 - I - 0x003EBB 00:FEAB: C9        .byte $C9   ; 
- D 3 - I - 0x003EBC 00:FEAC: ED        .byte $ED   ; 
- D 3 - I - 0x003EBD 00:FEAD: 91        .byte $91   ; 
- D 3 - I - 0x003EBE 00:FEAE: C9        .byte $C9   ; 
- D 3 - I - 0x003EBF 00:FEAF: C5        .byte $C5   ; 
- D 3 - I - 0x003EC0 00:FEB0: 91        .byte $91   ; 
- D 3 - I - 0x003EC1 00:FEB1: C9        .byte $C9   ; 
- D 3 - I - 0x003EC2 00:FEB2: C5        .byte $C5   ; 
- D 3 - I - 0x003EC3 00:FEB3: 93        .byte $93   ; 
- D 3 - I - 0x003EC4 00:FEB4: CF        .byte $CF   ; 
- D 3 - I - 0x003EC5 00:FEB5: C9        .byte $C9   ; 
- D 3 - I - 0x003EC6 00:FEB6: B1        .byte $B1   ; 
- D 3 - I - 0x003EC7 00:FEB7: EF        .byte $EF   ; 
- D 3 - I - 0x003EC8 00:FEB8: ED        .byte $ED   ; 



_off002_FEB9_01:
- D 3 - I - 0x003EC9 00:FEB9: 5A        .byte $5A   ; 
- D 3 - I - 0x003ECA 00:FEBA: 5C        .byte $5C   ; 
- D 3 - I - 0x003ECB 00:FEBB: 5E        .byte $5E   ; 
- D 3 - I - 0x003ECC 00:FEBC: 60        .byte $60   ; 
- D 3 - I - 0x003ECD 00:FEBD: A2        .byte $A2   ; 
- D 3 - I - 0x003ECE 00:FEBE: 69        .byte $69   ; 
- D 3 - I - 0x003ECF 00:FEBF: 67        .byte $67   ; 
- D 3 - I - 0x003ED0 00:FEC0: 6B        .byte $6B   ; 
- D 3 - I - 0x003ED1 00:FEC1: A8        .byte $A8   ; 
- D 3 - I - 0x003ED2 00:FEC2: 84        .byte $84   ; 
- D 3 - I - 0x003ED3 00:FEC3: 68        .byte $68   ; 
- D 3 - I - 0x003ED4 00:FEC4: 66        .byte $66   ; 
- D 3 - I - 0x003ED5 00:FEC5: 02        .byte $02   ; 
- D 3 - I - 0x003ED6 00:FEC6: 24        .byte $24   ; 
- D 3 - I - 0x003ED7 00:FEC7: 60        .byte $60   ; 
- D 3 - I - 0x003ED8 00:FEC8: 02        .byte $02   ; 
- D 3 - I - 0x003ED9 00:FEC9: 9A        .byte $9A   ; 
- D 3 - I - 0x003EDA 00:FECA: 1A        .byte $1A   ; 
- D 3 - I - 0x003EDB 00:FECB: 9D        .byte $9D   ; 
- D 3 - I - 0x003EDC 00:FECC: DF        .byte $DF   ; 
- D 3 - I - 0x003EDD 00:FECD: E1        .byte $E1   ; 
- D 3 - I - 0x003EDE 00:FECE: A3        .byte $A3   ; 
- D 3 - I - 0x003EDF 00:FECF: E5        .byte $E5   ; 
- D 3 - I - 0x003EE0 00:FED0: E7        .byte $E7   ; 
- D 3 - I - 0x003EE1 00:FED1: A9        .byte $A9   ; 
- D 3 - I - 0x003EE2 00:FED2: EB        .byte $EB   ; 
- D 3 - I - 0x003EE3 00:FED3: ED        .byte $ED   ; 
- D 3 - I - 0x003EE4 00:FED4: F0        .byte $F0   ; 
- D 3 - I - 0x003EE5 00:FED5: 42        .byte $42   ; 
- D 3 - I - 0x003EE6 00:FED6: 02        .byte $02   ; 
- D 3 - I - 0x003EE7 00:FED7: 04        .byte $04   ; 
- D 3 - I - 0x003EE8 00:FED8: 4A        .byte $4A   ; 
- D 3 - I - 0x003EE9 00:FED9: 02        .byte $02   ; 
- D 3 - I - 0x003EEA 00:FEDA: CC        .byte $CC   ; 
- D 3 - I - 0x003EEB 00:FEDB: 02        .byte $02   ; 
- D 3 - I - 0x003EEC 00:FEDC: 00        .byte $00   ; 



off_FEDD_01_2:
- D 3 - I - 0x003EED 00:FEDD: 72        .byte $72   ; 
- D 3 - I - 0x003EEE 00:FEDE: 74        .byte $74   ; 
- D 3 - I - 0x003EEF 00:FEDF: 76        .byte $76   ; 
- D 3 - I - 0x003EF0 00:FEE0: 78        .byte $78   ; 
- D 3 - I - 0x003EF1 00:FEE1: BA        .byte $BA   ; 
- D 3 - I - 0x003EF2 00:FEE2: 5F        .byte $5F   ; 
- D 3 - I - 0x003EF3 00:FEE3: 5D        .byte $5D   ; 
- D 3 - I - 0x003EF4 00:FEE4: 61        .byte $61   ; 
- D 3 - I - 0x003EF5 00:FEE5: 9E        .byte $9E   ; 
- D 3 - I - 0x003EF6 00:FEE6: A8        .byte $A8   ; 
- D 3 - I - 0x003EF7 00:FEE7: 5E        .byte $5E   ; 
- D 3 - I - 0x003EF8 00:FEE8: 5C        .byte $5C   ; 
- D 3 - I - 0x003EF9 00:FEE9: 02        .byte $02   ; 
- D 3 - I - 0x003EFA 00:FEEA: 1A        .byte $1A   ; 
- D 3 - I - 0x003EFB 00:FEEB: 78        .byte $78   ; 
- D 3 - I - 0x003EFC 00:FEEC: 02        .byte $02   ; 
- D 3 - I - 0x003EFD 00:FEED: B2        .byte $B2   ; 
- D 3 - I - 0x003EFE 00:FEEE: 38        .byte $38   ; 
- D 3 - I - 0x003EFF 00:FEEF: B1        .byte $B1   ; 
- D 3 - I - 0x003F00 00:FEF0: DB        .byte $DB   ; 
- D 3 - I - 0x003F01 00:FEF1: DD        .byte $DD   ; 
- D 3 - I - 0x003F02 00:FEF2: 9F        .byte $9F   ; 
- D 3 - I - 0x003F03 00:FEF3: E1        .byte $E1   ; 
- D 3 - I - 0x003F04 00:FEF4: E3        .byte $E3   ; 
- D 3 - I - 0x003F05 00:FEF5: A5        .byte $A5   ; 
- D 3 - I - 0x003F06 00:FEF6: E7        .byte $E7   ; 
- D 3 - I - 0x003F07 00:FEF7: E9        .byte $E9   ; 
- D 3 - I - 0x003F08 00:FEF8: EC        .byte $EC   ; 
- D 3 - I - 0x003F09 00:FEF9: 42        .byte $42   ; 
- D 3 - I - 0x003F0A 00:FEFA: 02        .byte $02   ; 
- D 3 - I - 0x003F0B 00:FEFB: 28        .byte $28   ; 
- D 3 - I - 0x003F0C 00:FEFC: 6E        .byte $6E   ; 
- D 3 - I - 0x003F0D 00:FEFD: 02        .byte $02   ; 
- D 3 - I - 0x003F0E 00:FEFE: F0        .byte $F0   ; 
- D 3 - I - 0x003F0F 00:FEFF: 02        .byte $02   ; 



tbl_FF00:
- D 3 - - - 0x003F10 00:FF00: 03        .byte $03   ; 
tbl_FF01:
- D 3 - - - 0x003F11 00:FF01: 57        .byte $57   ; 
- - - - - - 0x003F12 00:FF02: 00        .byte $00   ; 
- D 3 - - - 0x003F13 00:FF03: 00        .byte $00   ; 
- D 3 - - - 0x003F14 00:FF04: 00        .byte $00   ; 
- D 3 - - - 0x003F15 00:FF05: D4        .byte $D4   ; 
- D 3 - - - 0x003F16 00:FF06: 00        .byte $00   ; 
- D 3 - - - 0x003F17 00:FF07: C8        .byte $C8   ; 
- D 3 - - - 0x003F18 00:FF08: 00        .byte $00   ; 
- D 3 - - - 0x003F19 00:FF09: BD        .byte $BD   ; 
- D 3 - - - 0x003F1A 00:FF0A: 00        .byte $00   ; 
- D 3 - - - 0x003F1B 00:FF0B: B2        .byte $B2   ; 
- D 3 - - - 0x003F1C 00:FF0C: 00        .byte $00   ; 
- D 3 - - - 0x003F1D 00:FF0D: A8        .byte $A8   ; 
- D 3 - - - 0x003F1E 00:FF0E: 00        .byte $00   ; 
- D 3 - - - 0x003F1F 00:FF0F: 9F        .byte $9F   ; 
- D 3 - - - 0x003F20 00:FF10: 00        .byte $00   ; 
- D 3 - - - 0x003F21 00:FF11: 96        .byte $96   ; 
- D 3 - - - 0x003F22 00:FF12: 00        .byte $00   ; 
- D 3 - - - 0x003F23 00:FF13: 8D        .byte $8D   ; 
- D 3 - - - 0x003F24 00:FF14: 00        .byte $00   ; 
- D 3 - - - 0x003F25 00:FF15: 7E        .byte $7E   ; 
- - - - - - 0x003F26 00:FF16: 00        .byte $00   ; 
- - - - - - 0x003F27 00:FF17: 76        .byte $76   ; 
- D 3 - - - 0x003F28 00:FF18: 00        .byte $00   ; 
- D 3 - - - 0x003F29 00:FF19: 70        .byte $70   ; 
- D 3 - - - 0x003F2A 00:FF1A: 01        .byte $01   ; 
- D 3 - - - 0x003F2B 00:FF1B: AB        .byte $AB   ; 
- D 3 - - - 0x003F2C 00:FF1C: 01        .byte $01   ; 
- D 3 - - - 0x003F2D 00:FF1D: 93        .byte $93   ; 
- D 3 - - - 0x003F2E 00:FF1E: 01        .byte $01   ; 
- D 3 - - - 0x003F2F 00:FF1F: 7C        .byte $7C   ; 
- D 3 - - - 0x003F30 00:FF20: 01        .byte $01   ; 
- D 3 - - - 0x003F31 00:FF21: 67        .byte $67   ; 
- D 3 - - - 0x003F32 00:FF22: 01        .byte $01   ; 
- D 3 - - - 0x003F33 00:FF23: 52        .byte $52   ; 
- D 3 - - - 0x003F34 00:FF24: 01        .byte $01   ; 
- D 3 - - - 0x003F35 00:FF25: 3F        .byte $3F   ; 
- D 3 - - - 0x003F36 00:FF26: 01        .byte $01   ; 
- D 3 - - - 0x003F37 00:FF27: 2D        .byte $2D   ; 
- D 3 - - - 0x003F38 00:FF28: 01        .byte $01   ; 
- D 3 - - - 0x003F39 00:FF29: 1C        .byte $1C   ; 
- D 3 - - - 0x003F3A 00:FF2A: 01        .byte $01   ; 
- D 3 - - - 0x003F3B 00:FF2B: 0C        .byte $0C   ; 
- D 3 - - - 0x003F3C 00:FF2C: 00        .byte $00   ; 
- D 3 - - - 0x003F3D 00:FF2D: FD        .byte $FD   ; 
- D 3 - - - 0x003F3E 00:FF2E: 00        .byte $00   ; 
- D 3 - - - 0x003F3F 00:FF2F: EE        .byte $EE   ; 
- D 3 - - - 0x003F40 00:FF30: 00        .byte $00   ; 
- D 3 - - - 0x003F41 00:FF31: E1        .byte $E1   ; 
- D 3 - - - 0x003F42 00:FF32: 02        .byte $02   ; 
- D 3 - - - 0x003F43 00:FF33: 3A        .byte $3A   ; 
- D 3 - - - 0x003F44 00:FF34: 02        .byte $02   ; 
- D 3 - - - 0x003F45 00:FF35: 1A        .byte $1A   ; 
- D 3 - - - 0x003F46 00:FF36: 01        .byte $01   ; 
- D 3 - - - 0x003F47 00:FF37: FC        .byte $FC   ; 
- D 3 - - - 0x003F48 00:FF38: 01        .byte $01   ; 
- D 3 - - - 0x003F49 00:FF39: DF        .byte $DF   ; 
- D 3 - - - 0x003F4A 00:FF3A: 01        .byte $01   ; 
- D 3 - - - 0x003F4B 00:FF3B: C4        .byte $C4   ; 
- D 3 - - - 0x003F4C 00:FF3C: 00        .byte $00   ; 
- D 3 - - - 0x003F4D 00:FF3D: 0E        .byte $0E   ; 
- D 3 - - - 0x003F4E 00:FF3E: 04        .byte $04   ; 
- D 3 - - - 0x003F4F 00:FF3F: 75        .byte $75   ; 



tbl_FF40:
; 00 
- - - - - - 0x003F50 00:FF40: 05        .byte $05   ; 00 
- - - - - - 0x003F51 00:FF41: 0A        .byte $0A   ; 01 
- - - - - - 0x003F52 00:FF42: 14        .byte $14   ; 02 
- - - - - - 0x003F53 00:FF43: 28        .byte $28   ; 03 
- - - - - - 0x003F54 00:FF44: 50        .byte $50   ; 04 
- - - - - - 0x003F55 00:FF45: 1E        .byte $1E   ; 05 
; 06 
- D 3 - - - 0x003F56 00:FF46: 05        .byte $05   ; 00 
- D 3 - - - 0x003F57 00:FF47: 0A        .byte $0A   ; 01 
- D 3 - - - 0x003F58 00:FF48: 14        .byte $14   ; 02 
- D 3 - - - 0x003F59 00:FF49: 28        .byte $28   ; 03 
- D 3 - - - 0x003F5A 00:FF4A: 50        .byte $50   ; 04 
- D 3 - - - 0x003F5B 00:FF4B: 1E        .byte $1E   ; 05 
- D 3 - - - 0x003F5C 00:FF4C: 06        .byte $06   ; 06 
- D 3 - - - 0x003F5D 00:FF4D: 07        .byte $07   ; 07 



off_FF4E_01_1:
- D 3 - I - 0x003F5E 00:FF4E: 5A        .byte $5A   ; 
- D 3 - I - 0x003F5F 00:FF4F: 5C        .byte $5C   ; 
- D 3 - I - 0x003F60 00:FF50: 5E        .byte $5E   ; 
- D 3 - I - 0x003F61 00:FF51: 60        .byte $60   ; 
- D 3 - I - 0x003F62 00:FF52: A2        .byte $A2   ; 
- D 3 - I - 0x003F63 00:FF53: 69        .byte $69   ; 
- D 3 - I - 0x003F64 00:FF54: 67        .byte $67   ; 
- D 3 - I - 0x003F65 00:FF55: 6B        .byte $6B   ; 
- D 3 - I - 0x003F66 00:FF56: A8        .byte $A8   ; 
- D 3 - I - 0x003F67 00:FF57: 84        .byte $84   ; 
- D 3 - I - 0x003F68 00:FF58: 68        .byte $68   ; 
- D 3 - I - 0x003F69 00:FF59: 66        .byte $66   ; 
- D 3 - I - 0x003F6A 00:FF5A: 02        .byte $02   ; 
- D 3 - I - 0x003F6B 00:FF5B: 24        .byte $24   ; 
- D 3 - I - 0x003F6C 00:FF5C: 60        .byte $60   ; 
- D 3 - I - 0x003F6D 00:FF5D: 02        .byte $02   ; 
- D 3 - I - 0x003F6E 00:FF5E: 9A        .byte $9A   ; 
- D 3 - I - 0x003F6F 00:FF5F: 28        .byte $28   ; 
- D 3 - I - 0x003F70 00:FF60: AB        .byte $AB   ; 
- D 3 - I - 0x003F71 00:FF61: ED        .byte $ED   ; 
- D 3 - I - 0x003F72 00:FF62: EF        .byte $EF   ; 
- D 3 - I - 0x003F73 00:FF63: B1        .byte $B1   ; 
- D 3 - I - 0x003F74 00:FF64: C5        .byte $C5   ; 
- D 3 - I - 0x003F75 00:FF65: C7        .byte $C7   ; 
- D 3 - I - 0x003F76 00:FF66: 89        .byte $89   ; 
- D 3 - I - 0x003F77 00:FF67: CB        .byte $CB   ; 
- D 3 - I - 0x003F78 00:FF68: CD        .byte $CD   ; 
- D 3 - I - 0x003F79 00:FF69: D0        .byte $D0   ; 
- D 3 - I - 0x003F7A 00:FF6A: 42        .byte $42   ; 
- D 3 - I - 0x003F7B 00:FF6B: 02        .byte $02   ; 
- D 3 - I - 0x003F7C 00:FF6C: 04        .byte $04   ; 
- D 3 - I - 0x003F7D 00:FF6D: 4A        .byte $4A   ; 
- D 3 - I - 0x003F7E 00:FF6E: 02        .byte $02   ; 
- D 3 - I - 0x003F7F 00:FF6F: CC        .byte $CC   ; 
- D 3 - I - 0x003F80 00:FF70: 02        .byte $02   ; 



_off002_FF71_10:
- D 3 - I - 0x003F81 00:FF71: A3        .byte $A3   ; 
- D 3 - I - 0x003F82 00:FF72: E3        .byte $E3   ; 
- D 3 - I - 0x003F83 00:FF73: E3        .byte $E3   ; 
- D 3 - I - 0x003F84 00:FF74: 64        .byte $64   ; 
- D 3 - I - 0x003F85 00:FF75: 02        .byte $02   ; 
- D 3 - I - 0x003F86 00:FF76: A6        .byte $A6   ; 
- D 3 - I - 0x003F87 00:FF77: 28        .byte $28   ; 
- D 3 - I - 0x003F88 00:FF78: 2A        .byte $2A   ; 
- D 3 - I - 0x003F89 00:FF79: 28        .byte $28   ; 
- D 3 - I - 0x003F8A 00:FF7A: 2A        .byte $2A   ; 
- D 3 - I - 0x003F8B 00:FF7B: 28        .byte $28   ; 
- D 3 - I - 0x003F8C 00:FF7C: A7        .byte $A7   ; 
- D 3 - I - 0x003F8D 00:FF7D: E9        .byte $E9   ; 
- D 3 - I - 0x003F8E 00:FF7E: C5        .byte $C5   ; 
- D 3 - I - 0x003F8F 00:FF7F: 4A        .byte $4A   ; 
- D 3 - I - 0x003F90 00:FF80: 02        .byte $02   ; 
- D 3 - I - 0x003F91 00:FF81: 84        .byte $84   ; 
- D 3 - I - 0x003F92 00:FF82: 2E        .byte $2E   ; 
- D 3 - I - 0x003F93 00:FF83: A9        .byte $A9   ; 
- D 3 - I - 0x003F94 00:FF84: E7        .byte $E7   ; 
- D 3 - I - 0x003F95 00:FF85: E5        .byte $E5   ; 
- D 3 - I - 0x003F96 00:FF86: A3        .byte $A3   ; 
- D 3 - I - 0x003F97 00:FF87: E3        .byte $E3   ; 
- D 3 - I - 0x003F98 00:FF88: E3        .byte $E3   ; 
- D 3 - I - 0x003F99 00:FF89: 64        .byte $64   ; 
- D 3 - I - 0x003F9A 00:FF8A: 02        .byte $02   ; 
- D 3 - I - 0x003F9B 00:FF8B: A6        .byte $A6   ; 
- D 3 - I - 0x003F9C 00:FF8C: 28        .byte $28   ; 
- D 3 - I - 0x003F9D 00:FF8D: 2A        .byte $2A   ; 
- D 3 - I - 0x003F9E 00:FF8E: 28        .byte $28   ; 
- D 3 - I - 0x003F9F 00:FF8F: 2A        .byte $2A   ; 
- D 3 - I - 0x003FA0 00:FF90: 28        .byte $28   ; 
- D 3 - I - 0x003FA1 00:FF91: 52        .byte $52   ; 
- D 3 - I - 0x003FA2 00:FF92: 02        .byte $02   ; 
- D 3 - I - 0x003FA3 00:FF93: 0E        .byte $0E   ; 
- D 3 - I - 0x003FA4 00:FF94: 4A        .byte $4A   ; 
- D 3 - I - 0x003FA5 00:FF95: 02        .byte $02   ; 
- D 3 - I - 0x003FA6 00:FF96: C4        .byte $C4   ; 
- D 3 - I - 0x003FA7 00:FF97: 02        .byte $02   ; 
- D 3 - I - 0x003FA8 00:FF98: 00        .byte $00   ; 



off_FF99_10_2:
- D 3 - I - 0x003FA9 00:FF99: 9B        .byte $9B   ; 
- D 3 - I - 0x003FAA 00:FF9A: DB        .byte $DB   ; 
- D 3 - I - 0x003FAB 00:FF9B: DB        .byte $DB   ; 
- D 3 - I - 0x003FAC 00:FF9C: 5E        .byte $5E   ; 
- D 3 - I - 0x003FAD 00:FF9D: 02        .byte $02   ; 
- D 3 - I - 0x003FAE 00:FF9E: 9A        .byte $9A   ; 
- D 3 - I - 0x003FAF 00:FF9F: 9E        .byte $9E   ; 
- D 3 - I - 0x003FB0 00:FFA0: 02        .byte $02   ; 
- D 3 - I - 0x003FB1 00:FFA1: 03        .byte $03   ; 
- D 3 - I - 0x003FB2 00:FFA2: 9B        .byte $9B   ; 
- D 3 - I - 0x003FB3 00:FFA3: DB        .byte $DB   ; 
- D 3 - I - 0x003FB4 00:FFA4: DB        .byte $DB   ; 
- D 3 - I - 0x003FB5 00:FFA5: 5E        .byte $5E   ; 
- D 3 - I - 0x003FB6 00:FFA6: 02        .byte $02   ; 
- D 3 - I - 0x003FB7 00:FFA7: 9A        .byte $9A   ; 
- D 3 - I - 0x003FB8 00:FFA8: 9E        .byte $9E   ; 
- D 3 - - - 0x003FB9 00:FFA9: 02        .byte $02   ; 
- D 3 - I - 0x003FBA 00:FFAA: 48        .byte $48   ; 
- D 3 - I - 0x003FBB 00:FFAB: 02        .byte $02   ; 
- D 3 - I - 0x003FBC 00:FFAC: 08        .byte $08   ; 
- D 3 - I - 0x003FBD 00:FFAD: 44        .byte $44   ; 
- D 3 - I - 0x003FBE 00:FFAE: 02        .byte $02   ; 
- D 3 - I - 0x003FBF 00:FFAF: E8        .byte $E8   ; 
- D 3 - I - 0x003FC0 00:FFB0: 02        .byte $02   ; 



off_FFB1_10_1:
- D 3 - I - 0x003FC1 00:FFB1: A9        .byte $A9   ; 
- D 3 - I - 0x003FC2 00:FFB2: E9        .byte $E9   ; 
- D 3 - I - 0x003FC3 00:FFB3: E9        .byte $E9   ; 
- D 3 - I - 0x003FC4 00:FFB4: 6C        .byte $6C   ; 
- D 3 - I - 0x003FC5 00:FFB5: 02        .byte $02   ; 
- D 3 - I - 0x003FC6 00:FFB6: AA        .byte $AA   ; 
- D 3 - I - 0x003FC7 00:FFB7: B0        .byte $B0   ; 
- D 3 - I - 0x003FC8 00:FFB8: 02        .byte $02   ; 
- D 3 - I - 0x003FC9 00:FFB9: A7        .byte $A7   ; 
- D 3 - I - 0x003FCA 00:FFBA: E9        .byte $E9   ; 
- D 3 - I - 0x003FCB 00:FFBB: C5        .byte $C5   ; 
- D 3 - I - 0x003FCC 00:FFBC: 4A        .byte $4A   ; 
- D 3 - I - 0x003FCD 00:FFBD: 02        .byte $02   ; 
- D 3 - I - 0x003FCE 00:FFBE: 84        .byte $84   ; 
- D 3 - I - 0x003FCF 00:FFBF: 2E        .byte $2E   ; 
- D 3 - I - 0x003FD0 00:FFC0: A9        .byte $A9   ; 
- D 3 - I - 0x003FD1 00:FFC1: E7        .byte $E7   ; 
- D 3 - I - 0x003FD2 00:FFC2: E5        .byte $E5   ; 
- D 3 - I - 0x003FD3 00:FFC3: A9        .byte $A9   ; 
- D 3 - I - 0x003FD4 00:FFC4: E9        .byte $E9   ; 
- D 3 - I - 0x003FD5 00:FFC5: E9        .byte $E9   ; 
- D 3 - I - 0x003FD6 00:FFC6: 6C        .byte $6C   ; 
- D 3 - I - 0x003FD7 00:FFC7: 02        .byte $02   ; 
- D 3 - I - 0x003FD8 00:FFC8: AA        .byte $AA   ; 
- D 3 - I - 0x003FD9 00:FFC9: B0        .byte $B0   ; 
- D 3 - I - 0x003FDA 00:FFCA: 02        .byte $02   ; 
- D 3 - I - 0x003FDB 00:FFCB: 58        .byte $58   ; 
- D 3 - I - 0x003FDC 00:FFCC: 02        .byte $02   ; 
- D 3 - I - 0x003FDD 00:FFCD: 18        .byte $18   ; 
- D 3 - I - 0x003FDE 00:FFCE: 54        .byte $54   ; 
- D 3 - I - 0x003FDF 00:FFCF: 02        .byte $02   ; 
- D 3 - I - 0x003FE0 00:FFD0: CC        .byte $CC   ; 
- D 3 - I - 0x003FE1 00:FFD1: 02        .byte $02   ; 



_off002_FFD2_20_40:
off_FFD2_20_40_1:
off_FFD2_20_40_2:
- - - - - - 0x003FE2 00:FFD2: 28        .byte $28   ; 
- - - - - - 0x003FE3 00:FFD3: 26        .byte $26   ; 
- - - - - - 0x003FE4 00:FFD4: 28        .byte $28   ; 
- - - - - - 0x003FE5 00:FFD5: 26        .byte $26   ; 
- - - - - - 0x003FE6 00:FFD6: E8        .byte $E8   ; 
- - - - - - 0x003FE7 00:FFD7: 00        .byte $00   ; 



_off002_FFD8_80:
off_FFD8_80_1:
off_FFD8_80_2:
- D 3 - I - 0x003FE8 00:FFD8: 00        .byte $00   ; 



tbl_FFD9:
- D 3 - - - 0x003FE9 00:FFD9: 50        .byte $50   ; 00 
- D 3 - - - 0x003FEA 00:FFDA: 51        .byte $51   ; 01 
- D 3 - - - 0x003FEB 00:FFDB: 51        .byte $51   ; 02 
- D 3 - - - 0x003FEC 00:FFDC: 51        .byte $51   ; 03 
- D 3 - - - 0x003FED 00:FFDD: 51        .byte $51   ; 04 
- D 3 - - - 0x003FEE 00:FFDE: 51        .byte $51   ; 05 
- D 3 - - - 0x003FEF 00:FFDF: 51        .byte $51   ; 06 
- D 3 - - - 0x003FF0 00:FFE0: 51        .byte $51   ; 07 
- D 3 - - - 0x003FF1 00:FFE1: 51        .byte $51   ; 08 
- D 3 - - - 0x003FF2 00:FFE2: 52        .byte $52   ; 09 
- D 3 - - - 0x003FF3 00:FFE3: 52        .byte $52   ; 0A 
- D 3 - - - 0x003FF4 00:FFE4: 52        .byte $52   ; 0B 
- D 3 - - - 0x003FF5 00:FFE5: 52        .byte $52   ; 0C 
- D 3 - - - 0x003FF6 00:FFE6: 52        .byte $52   ; 0D 
- D 3 - - - 0x003FF7 00:FFE7: 52        .byte $52   ; 0E 
- D 3 - - - 0x003FF8 00:FFE8: 53        .byte $53   ; 0F 
- D 3 - - - 0x003FF9 00:FFE9: 53        .byte $53   ; 10 
- D 3 - - - 0x003FFA 00:FFEA: 53        .byte $53   ; 11 
- D 3 - - - 0x003FFB 00:FFEB: 53        .byte $53   ; 12 
- D 3 - - - 0x003FFC 00:FFEC: 53        .byte $53   ; 13 
- D 3 - - - 0x003FFD 00:FFED: 54        .byte $54   ; 14 
- D 3 - - - 0x003FFE 00:FFEE: 54        .byte $54   ; 15 
- D 3 - - - 0x003FFF 00:FFEF: 54        .byte $54   ; 16 
vec_FFF0_IRQ:
- D 3 - - - 0x004000 00:FFF0: 54        .byte $54   ; 17 
- D 3 - - - 0x004001 00:FFF1: 55        .byte $55   ; 18 
- D 3 - - - 0x004002 00:FFF2: 55        .byte $55   ; 19 
- D 3 - - - 0x004003 00:FFF3: 55        .byte $55   ; 1A 
- D 3 - - - 0x004004 00:FFF4: 56        .byte $56   ; 1B 
- D 3 - - - 0x004005 00:FFF5: 56        .byte $56   ; 1C 
- D 3 - - - 0x004006 00:FFF6: 56        .byte $56   ; 1D 
- D 3 - - - 0x004007 00:FFF7: 56        .byte $56   ; 1E 
- D 3 - - - 0x004008 00:FFF8: 57        .byte $57   ; 1F 


; bzk garbage?
- - - - - - 0x004009 00:FFF9: FF        .byte $FF   ; 



.out .sprintf("Free bytes in bank FF: 0x%04X [%d]", ($FFFA - *), ($FFFA - *))



.segment "VECTORS"
- D 3 - - - 0x00400A 00:FFFA: 76 C0     .word vec_C076_NMI
- D 3 - - - 0x00400C 00:FFFC: 14 C0     .word vec_C014_RESET
- - - - - - 0x00400E 00:FFFE: F0 FF     .word vec_FFF0_IRQ



