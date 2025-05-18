.segment "BANK_FF"
.include "bank_ram.inc"
.include "bank_val.inc"
.org $C000 ; for listing file
; 0x01C010-0x02000F



.export sub_0x01C185_wait_for_nmi_to_end
.export sub_0x01C4C4
.export sub_0x01C7D2_prepare_screen_data
.export sub_0x01C9B4_set_custom_buttons
.export loc_0x01C9FB_prg_bankswitch_0C
.export _off009_0x01CA05_00_felix
.export sub_0x01CE04
.export tbl_0x01CF91
.export sub_0x01DACE
.export tbl_0x01DD77
.export sub_0x01DDD3_add_score
.export loc_0x01DDD3_add_score
.export _off009_0x01DEEC_2C_cannon_315
.export _off009_0x01DEEC_2D_cannon_45
.export _off009_0x01DEEC_2E_cannon_90_180
.export _off009_0x01DEEC_2F
.export _off009_0x01DEF4_24_cloud_professor
.export _off009_0x01DEFA_25_cloud_kitty
.export sub_0x01DEFC
.export loc_0x01DF06
.export sub_0x01DF3E
.export sub_0x01DFBC
.export sub_0x01DFF5
.export loc_0x01DFF5
.export loc_0x01E024
.export sub_0x01E02C
.export loc_0x01E02C
.export loc_0x01E06E
.export sub_0x01E081_kill_enemy
.export loc_0x01E081_kill_enemy
.export sub_0x01E1D8_initialize_animation
.export loc_0x01E1D8_initialize_animation
.export tbl_0x01E519_round_data
.export sub_0x01E928_print_professor_text
.export sub_0x01F24D
.export sub_0x01F257
.export sub_0x01F261
.export sub_0x01F2A6
.export sub_0x01FF2A_play_sound
.export loc_0x01FF2A_play_sound


; bzk garbage
; fake read flags up to 0x01C09C because banks 06-0C
;  don't have end tokens at the end of their data
- D 2 - - - 0x01C010 07:C000: 00        .byte $00   ; 
- D 2 - - - 0x01C011 07:C001: 00        .byte $00   ; 
- D 2 - I - 0x01C012 07:C002: 00        .byte $00   ; 
- D 2 - I - 0x01C013 07:C003: 00        .byte $00   ; 
- D 2 - I - 0x01C014 07:C004: 00        .byte $00   ; 
- D 2 - I - 0x01C015 07:C005: 00        .byte $00   ; 
- D 2 - I - 0x01C016 07:C006: 00        .byte $00   ; 
- D 2 - I - 0x01C017 07:C007: 00        .byte $00   ; 
- D 2 - I - 0x01C018 07:C008: 00        .byte $00   ; 
- D 2 - I - 0x01C019 07:C009: 00        .byte $00   ; 
- D 2 - I - 0x01C01A 07:C00A: 00        .byte $00   ; 
- D 2 - I - 0x01C01B 07:C00B: 00        .byte $00   ; 
- D 2 - I - 0x01C01C 07:C00C: 00        .byte $00   ; 
- D 2 - I - 0x01C01D 07:C00D: 00        .byte $00   ; 
- D 2 - I - 0x01C01E 07:C00E: 00        .byte $00   ; 
- D 2 - I - 0x01C01F 07:C00F: 00        .byte $00   ; 



loc_C010_reset:
; fake read flags up to 0x01C09C because banks 06-0C
; don't have end tokens at the end of their data
C D 2 - - - 0x01C020 07:C010: A9 08     LDA #$08
C D 2 - I - 0x01C022 07:C012: 8D 00 20  STA $2000
C D 2 - I - 0x01C025 07:C015: 78        SEI
C D 2 - I - 0x01C026 07:C016: 8D 00 E0  STA $E000
C D 2 - I - 0x01C029 07:C019: A2 FF     LDX #$FF
C D 2 - I - 0x01C02B 07:C01B: 9A        TXS
C D 2 - I - 0x01C02C 07:C01C: D8        CLD
C D 2 - I - 0x01C02D 07:C01D: A2 08     LDX #$08
C D 2 - I - 0x01C02F 07:C01F: 8E 00 20  STX $2000
C D 2 - I - 0x01C032 07:C022: A2 00     LDX #$00
C D 2 - I - 0x01C034 07:C024: 8E 01 20  STX $2001
C D 2 - I - 0x01C037 07:C027: 8E 10 40  STX $4010
C D 2 - I - 0x01C03A 07:C02A: A5 40     LDA ram_0040_palette
C D 2 - I - 0x01C03C 07:C02C: 8D 17 40  STA $4017
C D 2 - I - 0x01C03F 07:C02F: CA        DEX
C D 2 - I - 0x01C040 07:C030: 9A        TXS
C D 2 - I - 0x01C041 07:C031: A2 10     LDX #$10
bra_C033_loop:
bra_C033_infinite_loop:
C D 2 - I - 0x01C043 07:C033: AD 02 20  LDA $2002
C D 2 - I - 0x01C046 07:C036: 10 FB     BPL bra_C033_infinite_loop
bra_C038_infinite_loop:
C D 2 - I - 0x01C048 07:C038: AD 02 20  LDA $2002
C D 2 - I - 0x01C04B 07:C03B: 30 FB     BMI bra_C038_infinite_loop
C D 2 - I - 0x01C04D 07:C03D: CA        DEX
C D 2 - I - 0x01C04E 07:C03E: D0 F3     BNE bra_C033_loop
C D 2 - I - 0x01C050 07:C040: A2 FF     LDX #$FF
C D 2 - I - 0x01C052 07:C042: 9A        TXS
C D 2 - I - 0x01C053 07:C043: A9 01     LDA #$01
C D 2 - I - 0x01C055 07:C045: 8D 00 A0  STA $A000
C D 2 - I - 0x01C058 07:C048: A9 00     LDA #$00
C D 2 - I - 0x01C05A 07:C04A: 8D 10 40  STA $4010
C D 2 - I - 0x01C05D 07:C04D: A9 40     LDA #$40
C D 2 - I - 0x01C05F 07:C04F: 8D 17 40  STA $4017
C D 2 - I - 0x01C062 07:C052: 8D 00 E0  STA $E000
C D 2 - I - 0x01C065 07:C055: AD 02 20  LDA $2002
C D 2 - I - 0x01C068 07:C058: A9 10     LDA #$10
C D 2 - I - 0x01C06A 07:C05A: AA        TAX
bra_C05B_loop:
C D 2 - I - 0x01C06B 07:C05B: 8D 06 20  STA $2006
C D 2 - I - 0x01C06E 07:C05E: 8D 06 20  STA $2006
C D 2 - I - 0x01C071 07:C061: 49 10     EOR #$10
C D 2 - I - 0x01C073 07:C063: CA        DEX
C D 2 - I - 0x01C074 07:C064: D0 F5     BNE bra_C05B_loop
; clear 0000-07FF
C D 2 - I - 0x01C076 07:C066: A9 07     LDA #> $0700
C D 2 - I - 0x01C078 07:C068: 85 01     STA ram_0000_t29_data + $01
C D 2 - I - 0x01C07A 07:C06A: A9 00     LDA #< $0700
C D 2 - I - 0x01C07C 07:C06C: A8        TAY ; 00
C D 2 - I - 0x01C07D 07:C06D: 85 00     STA ram_0000_t29_data
bra_C06F_loop:
C D 2 - I - 0x01C07F 07:C06F: 91 00     STA (ram_0000_t29_data),Y
C D 2 - I - 0x01C081 07:C071: C8        INY
C D 2 - I - 0x01C082 07:C072: D0 FB     BNE bra_C06F_loop
C D 2 - I - 0x01C084 07:C074: C6 01     DEC ram_0000_t29_data + $01
C D 2 - I - 0x01C086 07:C076: 10 F7     BPL bra_C06F_loop
C D 2 - I - 0x01C088 07:C078: A2 FF     LDX #$FF
C D 2 - I - 0x01C08A 07:C07A: 9A        TXS
C D 2 - I - 0x01C08B 07:C07B: 20 04 FF  JSR sub_FF04_turn_off_music_and_sfx
; clear 6000-7FFF
C D 2 - I - 0x01C08E 07:C07E: A9 80     LDA #$80
C D 2 - I - 0x01C090 07:C080: 8D 01 A0  STA $A001
C D 2 - I - 0x01C093 07:C083: A9 60     LDA #> $6000
C D 2 - I - 0x01C095 07:C085: 85 01     STA ram_0000_t24_data + $01
C D 2 - I - 0x01C097 07:C087: A9 00     LDA #< $6000
C D 2 - I - 0x01C099 07:C089: 85 00     STA ram_0000_t24_data
C D 2 - I - 0x01C09B 07:C08B: A8        TAY ; 00
bra_C08C_loop:
C D 2 - I - 0x01C09C 07:C08C: 91 00     STA (ram_0000_t24_data),Y
C - - - - - 0x01C09E 07:C08E: C8        INY
C - - - - - 0x01C09F 07:C08F: D0 FB     BNE bra_C08C_loop
C - - - - - 0x01C0A1 07:C091: E6 01     INC ram_0000_t24_data + $01
C - - - - - 0x01C0A3 07:C093: A5 01     LDA ram_0000_t24_data + $01
C - - - - - 0x01C0A5 07:C095: C9 80     CMP #> $8000
C - - - - - 0x01C0A7 07:C097: A9 00     LDA #$00
C - - - - - 0x01C0A9 07:C099: 90 F1     BCC bra_C08C_loop
; set hiscore to 0.000.000
C - - - - - 0x01C0AB 07:C09B: A9 03     LDA #> ram_hiscore
C - - - - - 0x01C0AD 07:C09D: 85 01     STA ram_0000_t23_data + $01
C - - - - - 0x01C0AF 07:C09F: A9 97     LDA #< ram_hiscore
C - - - - - 0x01C0B1 07:C0A1: 85 00     STA ram_0000_t23_data
C - - - - - 0x01C0B3 07:C0A3: A9 10     LDA #$10
C - - - - - 0x01C0B5 07:C0A5: A0 00     LDY #$00
bra_C0A7_loop:
C - - - - - 0x01C0B7 07:C0A7: 91 00     STA (ram_0000_t23_data),Y
C - - - - - 0x01C0B9 07:C0A9: C8        INY
C - - - - - 0x01C0BA 07:C0AA: C0 07     CPY #$07
C - - - - - 0x01C0BC 07:C0AC: 90 F9     BCC bra_C0A7_loop
; set hiscore to 10.000
C - - - - - 0x01C0BE 07:C0AE: A9 11     LDA #$11
C - - - - - 0x01C0C0 07:C0B0: 8D 99 03  STA ram_hiscore + $02
; 
C - - - - - 0x01C0C3 07:C0B3: A9 39     LDA #$39
C - - - - - 0x01C0C5 07:C0B5: 8D AD 03  STA ram_03AD
C - - - - - 0x01C0C8 07:C0B8: A9 FF     LDA #$FF
C - - - - - 0x01C0CA 07:C0BA: 8D 2D 04  STA ram_demo_round_index
C - - - - - 0x01C0CD 07:C0BD: 4C 3F C2  JMP loc_C23F



vec_C0C0_NMI:
; bzk optimize, interrupts don't require PHP/PLP,
; flags are restored via RTI
C - - - - - 0x01C0D0 07:C0C0: 08        PHP
C - - - - - 0x01C0D1 07:C0C1: 48        PHA
C - - - - - 0x01C0D2 07:C0C2: A5 00     LDA ram_0000_temp
C - - - - - 0x01C0D4 07:C0C4: 48        PHA
C - - - - - 0x01C0D5 07:C0C5: A5 01     LDA ram_0001_temp
C - - - - - 0x01C0D7 07:C0C7: 48        PHA
C - - - - - 0x01C0D8 07:C0C8: A5 02     LDA ram_0002_temp
C - - - - - 0x01C0DA 07:C0CA: 48        PHA
C - - - - - 0x01C0DB 07:C0CB: A5 03     LDA ram_0003_temp
C - - - - - 0x01C0DD 07:C0CD: 48        PHA
C - - - - - 0x01C0DE 07:C0CE: A5 04     LDA ram_0004_temp
C - - - - - 0x01C0E0 07:C0D0: 48        PHA
C - - - - - 0x01C0E1 07:C0D1: A5 05     LDA ram_0005_temp
C - - - - - 0x01C0E3 07:C0D3: 48        PHA
C - - - - - 0x01C0E4 07:C0D4: A5 06     LDA ram_0006_temp
C - - - - - 0x01C0E6 07:C0D6: 48        PHA
C - - - - - 0x01C0E7 07:C0D7: A5 07     LDA ram_0007_temp
C - - - - - 0x01C0E9 07:C0D9: 48        PHA
C - - - - - 0x01C0EA 07:C0DA: 8A        TXA
C - - - - - 0x01C0EB 07:C0DB: 48        PHA
C - - - - - 0x01C0EC 07:C0DC: 98        TYA
C - - - - - 0x01C0ED 07:C0DD: 48        PHA
C - - - - - 0x01C0EE 07:C0DE: A5 2C     LDA ram_for_8000
C - - - - - 0x01C0F0 07:C0E0: 48        PHA
C - - - - - 0x01C0F1 07:C0E1: A5 2B     LDA ram_prg_bank
C - - - - - 0x01C0F3 07:C0E3: 48        PHA
C - - - - - 0x01C0F4 07:C0E4: AD 02 20  LDA $2002
C - - - - - 0x01C0F7 07:C0E7: A5 29     LDA ram_nmi_flag
C - - - - - 0x01C0F9 07:C0E9: 29 80     AND #$80
C - - - - - 0x01C0FB 07:C0EB: D0 08     BNE bra_C0F5
C - - - - - 0x01C0FD 07:C0ED: AD 02 20  LDA $2002
C - - - - - 0x01C100 07:C0F0: A9 02     LDA #> ram_oam
C - - - - - 0x01C102 07:C0F2: 8D 14 40  STA $4014
bra_C0F5:
C - - - - - 0x01C105 07:C0F5: A9 00     LDA #$00
C - - - - - 0x01C107 07:C0F7: 85 2A     STA ram_002A_irq
C - - - - - 0x01C109 07:C0F9: A5 10     LDA ram_for_2000
C - - - - - 0x01C10B 07:C0FB: 29 7F     AND #$7F
C - - - - - 0x01C10D 07:C0FD: 8D 00 20  STA $2000
C - - - - - 0x01C110 07:C100: A5 11     LDA ram_for_2001
C - - - - - 0x01C112 07:C102: 48        PHA
C - - - - - 0x01C113 07:C103: 29 E1     AND #$E1
C - - - - - 0x01C115 07:C105: 8D 01 20  STA $2001
C - - - - - 0x01C118 07:C108: A5 29     LDA ram_nmi_flag
C - - - - - 0x01C11A 07:C10A: 29 80     AND #$80
C - - - - - 0x01C11C 07:C10C: D0 15     BNE bra_C123
C - - - - - 0x01C11E 07:C10E: A5 A4     LDA ram_00A4
C - - - - - 0x01C120 07:C110: D0 11     BNE bra_C123
C - - - - - 0x01C122 07:C112: A5 D5     LDA ram_00D5
C - - - - - 0x01C124 07:C114: D0 06     BNE bra_C11C
C - - - - - 0x01C126 07:C116: 20 42 C7  JSR sub_C742
C - - - - - 0x01C129 07:C119: 4C 23 C1  JMP loc_C123
bra_C11C:
C - - - - - 0x01C12C 07:C11C: 20 F1 C6  JSR sub_C6F1
C - - - - - 0x01C12F 07:C11F: A9 00     LDA #$00
C - - - - - 0x01C131 07:C121: 85 D5     STA ram_00D5
bra_C123:
loc_C123:
C D 2 - - - 0x01C133 07:C123: 20 C2 C4  JSR sub_C4C2
C - - - - - 0x01C136 07:C126: D0 03     BNE bra_C12B
C - - - - - 0x01C138 07:C128: 20 AE C8  JSR sub_C8AE
bra_C12B:
C - - - - - 0x01C13B 07:C12B: 20 FC C1  JSR sub_C1FC
C - - - - - 0x01C13E 07:C12E: 20 C6 C8  JSR sub_C8C6_write_chr_banks
C - - - - - 0x01C141 07:C131: 20 E2 C1  JSR sub_C1E2_prepare_irq
C - - - - - 0x01C144 07:C134: 68        PLA
C - - - - - 0x01C145 07:C135: 85 11     STA ram_for_2001
C - - - - - 0x01C147 07:C137: 8D 01 20  STA $2001
C - - - - - 0x01C14A 07:C13A: A5 29     LDA ram_nmi_flag
C - - - - - 0x01C14C 07:C13C: 09 80     ORA #$80
C - - - - - 0x01C14E 07:C13E: 85 29     STA ram_nmi_flag
C - - - - - 0x01C150 07:C140: 20 0D FF  JSR sub_FF0D_update_sound_engine
C - - - - - 0x01C153 07:C143: E6 36     INC ram_frm_cnt_2
C - - - - - 0x01C155 07:C145: A5 10     LDA ram_for_2000
C - - - - - 0x01C157 07:C147: 8D 00 20  STA $2000
C - - - - - 0x01C15A 07:C14A: 68        PLA
C - - - - - 0x01C15B 07:C14B: 85 2B     STA ram_prg_bank
C - - - - - 0x01C15D 07:C14D: 20 26 C2  JSR sub_C226
C - - - - - 0x01C160 07:C150: 68        PLA
C - - - - - 0x01C161 07:C151: 85 2C     STA ram_for_8000
C - - - - - 0x01C163 07:C153: 8D 00 80  STA $8000
C - - - - - 0x01C166 07:C156: 68        PLA
C - - - - - 0x01C167 07:C157: A8        TAY
C - - - - - 0x01C168 07:C158: 68        PLA
C - - - - - 0x01C169 07:C159: AA        TAX
C - - - - - 0x01C16A 07:C15A: 68        PLA
C - - - - - 0x01C16B 07:C15B: 85 07     STA ram_0007_temp
C - - - - - 0x01C16D 07:C15D: 68        PLA
C - - - - - 0x01C16E 07:C15E: 85 06     STA ram_0006_temp
C - - - - - 0x01C170 07:C160: 68        PLA
C - - - - - 0x01C171 07:C161: 85 05     STA ram_0005_temp
C - - - - - 0x01C173 07:C163: 68        PLA
C - - - - - 0x01C174 07:C164: 85 04     STA ram_0004_temp
C - - - - - 0x01C176 07:C166: 68        PLA
C - - - - - 0x01C177 07:C167: 85 03     STA ram_0003_temp
C - - - - - 0x01C179 07:C169: 68        PLA
C - - - - - 0x01C17A 07:C16A: 85 02     STA ram_0002_temp
C - - - - - 0x01C17C 07:C16C: 68        PLA
C - - - - - 0x01C17D 07:C16D: 85 01     STA ram_0001_temp
C - - - - - 0x01C17F 07:C16F: 68        PLA
C - - - - - 0x01C180 07:C170: 85 00     STA ram_0000_temp
C - - - - - 0x01C182 07:C172: 68        PLA
; bzk optimize, interrupts don't require PHP/PLP,
; flags are restored via RTI
C - - - - - 0x01C183 07:C173: 28        PLP
C - - - - - 0x01C184 07:C174: 40        RTI



sub_C175_wait_for_nmi_to_end:
sub_0x01C185_wait_for_nmi_to_end:
C - - - - - 0x01C185 07:C175: A5 29     LDA ram_nmi_flag
C - - - - - 0x01C187 07:C177: 29 7F     AND #$7F
C - - - - - 0x01C189 07:C179: 85 29     STA ram_nmi_flag
bra_C17B_infinite_loop:
C - - - - - 0x01C18B 07:C17B: A5 29     LDA ram_nmi_flag
C - - - - - 0x01C18D 07:C17D: 10 FC     BPL bra_C17B_infinite_loop
C - - - - - 0x01C18F 07:C17F: 20 3A C9  JSR sub_C93A_read_joy_regs_and_set_demo_buttons
C - - - - - 0x01C192 07:C182: E6 34     INC ram_frm_cnt_1
C - - - - - 0x01C194 07:C184: D0 02     BNE bra_C188_RTS
C - - - - - 0x01C196 07:C186: E6 35     INC ram_frm_cnt_1 + $01
bra_C188_RTS:
C - - - - - 0x01C198 07:C188: 60        RTS



vec_C189_IRQ:
; bzk optimize, interrupts don't require PHP/PLP,
; flags are restored via RTI
C - - - - - 0x01C199 07:C189: 08        PHP
C - - - - - 0x01C19A 07:C18A: 8D 00 E0  STA $E000
C - - - - - 0x01C19D 07:C18D: 48        PHA
C - - - - - 0x01C19E 07:C18E: A5 11     LDA ram_for_2001
C - - - - - 0x01C1A0 07:C190: 29 F1     AND #$F1
C - - - - - 0x01C1A2 07:C192: 8D 01 20  STA $2001
C - - - - - 0x01C1A5 07:C195: A9 82     LDA #$82
C - - - - - 0x01C1A7 07:C197: 8D 00 80  STA $8000
C - - - - - 0x01C1AA 07:C19A: A5 B3     LDA ram_irq_chr_bank
C - - - - - 0x01C1AC 07:C19C: 8D 01 80  STA $8001
C - - - - - 0x01C1AF 07:C19F: 8A        TXA
C - - - - - 0x01C1B0 07:C1A0: 48        PHA
C - - - - - 0x01C1B1 07:C1A1: 98        TYA
C - - - - - 0x01C1B2 07:C1A2: 48        PHA
; bzk optimize, make a garbage loop or something
C - - - - - 0x01C1B3 07:C1A3: EA        NOP
C - - - - - 0x01C1B4 07:C1A4: EA        NOP
C - - - - - 0x01C1B5 07:C1A5: EA        NOP
C - - - - - 0x01C1B6 07:C1A6: EA        NOP
C - - - - - 0x01C1B7 07:C1A7: EA        NOP
C - - - - - 0x01C1B8 07:C1A8: EA        NOP
C - - - - - 0x01C1B9 07:C1A9: EA        NOP
C - - - - - 0x01C1BA 07:C1AA: EA        NOP
C - - - - - 0x01C1BB 07:C1AB: EA        NOP
C - - - - - 0x01C1BC 07:C1AC: EA        NOP
C - - - - - 0x01C1BD 07:C1AD: EA        NOP
C - - - - - 0x01C1BE 07:C1AE: EA        NOP
C - - - - - 0x01C1BF 07:C1AF: EA        NOP
C - - - - - 0x01C1C0 07:C1B0: EA        NOP
C - - - - - 0x01C1C1 07:C1B1: EA        NOP
C - - - - - 0x01C1C2 07:C1B2: A5 10     LDA ram_for_2000
C - - - - - 0x01C1C4 07:C1B4: 29 FC     AND #$FC
C - - - - - 0x01C1C6 07:C1B6: 8D 00 20  STA $2000
C - - - - - 0x01C1C9 07:C1B9: A9 00     LDA #$00
C - - - - - 0x01C1CB 07:C1BB: 8D 06 20  STA $2006
C - - - - - 0x01C1CE 07:C1BE: 8D 06 20  STA $2006
C - - - - - 0x01C1D1 07:C1C1: AD 07 20  LDA $2007
C - - - - - 0x01C1D4 07:C1C4: A9 00     LDA #$00
C - - - - - 0x01C1D6 07:C1C6: 8D 05 20  STA $2005
C - - - - - 0x01C1D9 07:C1C9: 8D 05 20  STA $2005
C - - - - - 0x01C1DC 07:C1CC: A5 11     LDA ram_for_2001
C - - - - - 0x01C1DE 07:C1CE: 29 E9     AND #$E9
C - - - - - 0x01C1E0 07:C1D0: 8D 01 20  STA $2001
C - - - - - 0x01C1E3 07:C1D3: A5 2C     LDA ram_for_8000
C - - - - - 0x01C1E5 07:C1D5: 8D 00 80  STA $8000
C - - - - - 0x01C1E8 07:C1D8: 68        PLA
C - - - - - 0x01C1E9 07:C1D9: A8        TAY
C - - - - - 0x01C1EA 07:C1DA: 68        PLA
C - - - - - 0x01C1EB 07:C1DB: AA        TAX
C - - - - - 0x01C1EC 07:C1DC: 8D 01 E0  STA $E001
C - - - - - 0x01C1EF 07:C1DF: 68        PLA
; bzk optimize, interrupts don't require PHP/PLP,
; flags are restored via RTI
C - - - - - 0x01C1F0 07:C1E0: 28        PLP
C - - - - - 0x01C1F1 07:C1E1: 40        RTI



sub_C1E2_prepare_irq:
C - - - - - 0x01C1F2 07:C1E2: 8D 00 E0  STA $E000
; bzk optimize, ram_002A_irq is probably never >= 02
C - - - - - 0x01C1F5 07:C1E5: A6 2A     LDX ram_002A_irq
C - - - - - 0x01C1F7 07:C1E7: E0 02     CPX #$02
C - - - - - 0x01C1F9 07:C1E9: F0 10     BEQ bra_C1FB_RTS
C - - - - - 0x01C1FB 07:C1EB: B5 12     LDA ram_0012_scanline,X
C - - - - - 0x01C1FD 07:C1ED: F0 0C     BEQ bra_C1FB_RTS
C - - - - - 0x01C1FF 07:C1EF: 8D 00 C0  STA $C000
C - - - - - 0x01C202 07:C1F2: 8D 01 C0  STA $C001
C - - - - - 0x01C205 07:C1F5: 8D 01 E0  STA $E001
C - - - - - 0x01C208 07:C1F8: E8        INX ; 01
C - - - - - 0x01C209 07:C1F9: 86 2A     STX ram_002A_irq
bra_C1FB_RTS:
C - - - - - 0x01C20B 07:C1FB: 60        RTS



sub_C1FC:
; bzk optimize, ram_002A_irq is probably always = 00
C - - - - - 0x01C20C 07:C1FC: A6 2A     LDX ram_002A_irq
C - - - - - 0x01C20E 07:C1FE: A5 10     LDA ram_for_2000
C - - - - - 0x01C210 07:C200: 29 FC     AND #$FC
C - - - - - 0x01C212 07:C202: 85 10     STA ram_for_2000
C - - - - - 0x01C214 07:C204: B5 16     LDA ram_0016,X
C - - - - - 0x01C216 07:C206: 29 01     AND #$01
C - - - - - 0x01C218 07:C208: 05 10     ORA ram_for_2000
C - - - - - 0x01C21A 07:C20A: 85 10     STA ram_for_2000
C - - - - - 0x01C21C 07:C20C: B5 1A     LDA ram_001A,X
C - - - - - 0x01C21E 07:C20E: 29 01     AND #$01
C - - - - - 0x01C220 07:C210: 0A        ASL
C - - - - - 0x01C221 07:C211: 05 10     ORA ram_for_2000
C - - - - - 0x01C223 07:C213: 85 10     STA ram_for_2000
C - - - - - 0x01C225 07:C215: 8D 00 20  STA $2000
C - - - - - 0x01C228 07:C218: AD 02 20  LDA $2002
C - - - - - 0x01C22B 07:C21B: B5 14     LDA ram_0014,X
C - - - - - 0x01C22D 07:C21D: 8D 05 20  STA $2005
C - - - - - 0x01C230 07:C220: B5 18     LDA ram_0018,X
C - - - - - 0x01C232 07:C222: 8D 05 20  STA $2005
C - - - - - 0x01C235 07:C225: 60        RTS



sub_C226:
C - - - - - 0x01C236 07:C226: A2 86     LDX #$86
C - - - - - 0x01C238 07:C228: 86 2C     STX ram_for_8000
C - - - - - 0x01C23A 07:C22A: 8E 00 80  STX $8000
C - - - - - 0x01C23D 07:C22D: 29 3F     AND #$3F
C - - - - - 0x01C23F 07:C22F: 8D 01 80  STA $8001
C - - - - - 0x01C242 07:C232: E8        INX ; 87
C - - - - - 0x01C243 07:C233: 86 2C     STX ram_for_8000
C - - - - - 0x01C245 07:C235: 8E 00 80  STX $8000
C - - - - - 0x01C248 07:C238: 18        CLC
C - - - - - 0x01C249 07:C239: 69 01     ADC #$01
C - - - - - 0x01C24B 07:C23B: 8D 01 80  STA $8001
C - - - - - 0x01C24E 07:C23E: 60        RTS



loc_C23F:
C D 2 - - - 0x01C24F 07:C23F: A2 A8     LDX #$A8
C - - - - - 0x01C251 07:C241: 86 10     STX ram_for_2000
C - - - - - 0x01C253 07:C243: 8E 00 20  STX $2000
C - - - - - 0x01C256 07:C246: A2 06     LDX #$06
C - - - - - 0x01C258 07:C248: 86 11     STX ram_for_2001
C - - - - - 0x01C25A 07:C24A: 8E 01 20  STX $2001
C - - - - - 0x01C25D 07:C24D: 58        CLI
C - - - - - 0x01C25E 07:C24E: A9 00     LDA #con_0028_00
C - - - - - 0x01C260 07:C250: 85 28     STA ram_main_script
C - - - - - 0x01C262 07:C252: A9 04     LDA #$04
C - - - - - 0x01C264 07:C254: 85 73     STA ram_0073
C - - - - - 0x01C266 07:C256: EA        NOP ; bzk optimize
ofs_C257:
C - - - - - 0x01C267 07:C257: A5 28     LDA ram_main_script
C - - - - - 0x01C269 07:C259: 0A        ASL
C - - - - - 0x01C26A 07:C25A: A8        TAY
C - - - - - 0x01C26B 07:C25B: B9 6E C2  LDA tbl_C26E,Y
C - - - - - 0x01C26E 07:C25E: 85 00     STA ram_0000_t30_jmp
C - - - - - 0x01C270 07:C260: B9 6F C2  LDA tbl_C26E + $01,Y
C - - - - - 0x01C273 07:C263: 85 01     STA ram_0000_t30_jmp + $01
C - - - - - 0x01C275 07:C265: A9 C2     LDA #> (ofs_C257 - $01)
C - - - - - 0x01C277 07:C267: 48        PHA
C - - - - - 0x01C278 07:C268: A9 56     LDA #< (ofs_C257 - $01)
C - - - - - 0x01C27A 07:C26A: 48        PHA
C - - - - - 0x01C27B 07:C26B: 6C 00 00  JMP (ram_0000_t30_jmp)



tbl_C26E:
- D 2 - - - 0x01C27E 07:C26E: 7F C2     .word ofs_004_C27F_00_title_screen
- D 2 - - - 0x01C280 07:C270: 72 C3     .word ofs_004_C372_01
- - - - - - 0x01C282 07:C272: 7E C2     .word ofs_004_C27E_02_RTS
- - - - - - 0x01C284 07:C274: 7E C2     .word ofs_004_C27E_03_RTS
- D 2 - - - 0x01C286 07:C276: FE F2     .word ofs_004_F2FE_04
- D 2 - - - 0x01C288 07:C278: E4 F6     .word ofs_004_F6E4_05
- D 2 - - - 0x01C28A 07:C27A: E3 E1     .word ofs_004_E1E3_06_boss_defeated
- - - - - - 0x01C28C 07:C27C: CA E2     .word ofs_004_E2CA_07



ofs_004_C27E_02_RTS:
ofs_004_C27E_03_RTS:
- - - - - - 0x01C28E 07:C27E: 60        RTS



ofs_004_C27F_00_title_screen:
C - - J - - 0x01C28F 07:C27F: 20 E4 C9  JSR sub_C9E4_prg_bankswitch_0A
C - - - - - 0x01C292 07:C282: 20 00 80  JSR sub_0x014010_clear_addresses
C - - - - - 0x01C295 07:C285: A9 12     LDA #$12
C - - - - - 0x01C297 07:C287: 8D D3 03  STA ram_03D3
C - - - - - 0x01C29A 07:C28A: A9 34     LDA #$34
C - - - - - 0x01C29C 07:C28C: 8D D2 03  STA ram_03D2
C - - - - - 0x01C29F 07:C28F: A9 5A     LDA #$5A
C - - - - - 0x01C2A1 07:C291: 85 0F     STA ram_000F
C - - - - - 0x01C2A3 07:C293: A9 01     LDA #$01
C - - - - - 0x01C2A5 07:C295: 85 73     STA ram_0073
C - - - - - 0x01C2A7 07:C297: A9 05     LDA #$05
C - - - - - 0x01C2A9 07:C299: 8D D0 03  STA ram_03D0    ; bag jump counter
C - - - - - 0x01C2AC 07:C29C: 8D D1 03  STA ram_03D1
C - - - - - 0x01C2AF 07:C29F: A9 04     LDA #$04
C - - - - - 0x01C2B1 07:C2A1: 8D F9 03  STA ram_continues
C - - - - - 0x01C2B4 07:C2A4: A9 07     LDA #> $0744
C - - - - - 0x01C2B6 07:C2A6: 8D FB 03  STA ram_03FB
C - - - - - 0x01C2B9 07:C2A9: A9 44     LDA #< $0744
C - - - - - 0x01C2BB 07:C2AB: 8D FC 03  STA ram_03FC
C - - - - - 0x01C2BE 07:C2AE: 20 80 E1  JSR sub_E180_hide_all_sprites_and_clear_memory
C - - - - - 0x01C2C1 07:C2B1: A9 06     LDA #$06
C - - - - - 0x01C2C3 07:C2B3: 85 11     STA ram_for_2001
C - - - - - 0x01C2C5 07:C2B5: A9 80     LDA #$80
C - - - - - 0x01C2C7 07:C2B7: 8D C8 03  STA ram_language
C - - - - - 0x01C2CA 07:C2BA: A2 00     LDX #con_chr_bank + $00
C - - - - - 0x01C2CC 07:C2BC: 86 20     STX ram_chr_bank_bg_1
C - - - - - 0x01C2CE 07:C2BE: E8        INX ; con_chr_bank + $01
C - - - - - 0x01C2CF 07:C2BF: 86 22     STX ram_chr_bank_bg_2
C - - - - - 0x01C2D1 07:C2C1: E8        INX ; con_chr_bank + $02
C - - - - - 0x01C2D2 07:C2C2: 86 24     STX ram_chr_bank_bg_3
C - - - - - 0x01C2D4 07:C2C4: E8        INX ; con_chr_bank + $03
C - - - - - 0x01C2D5 07:C2C5: 86 26     STX ram_chr_bank_bg_4
C - - - - - 0x01C2D7 07:C2C7: A9 78     LDA #con_chr_bank + $78
C - - - - - 0x01C2D9 07:C2C9: 85 1C     STA ram_chr_bank_spr_1
C - - - - - 0x01C2DB 07:C2CB: 85 1D     STA ram_chr_bank_spr_1 + $01
; bzk optimize, ADC 02
C - - - - - 0x01C2DD 07:C2CD: 69 01     ADC #$01    ; 79
C - - - - - 0x01C2DF 07:C2CF: 69 01     ADC #$01    ; con_chr_bank + $7A
C - - - - - 0x01C2E1 07:C2D1: 85 1E     STA ram_chr_bank_spr_2
C - - - - - 0x01C2E3 07:C2D3: 85 1F     STA ram_chr_bank_spr_2 + $01
C - - - - - 0x01C2E5 07:C2D5: 20 DD C9  JSR sub_C9DD_prg_bankswitch_08
C - - - - - 0x01C2E8 07:C2D8: A9 00     LDA #< tbl_0x010010_title_screen_objects
C - - - - - 0x01C2EA 07:C2DA: 85 00     STA ram_0000_t14_screen_objects_data
C - - - - - 0x01C2EC 07:C2DC: A9 80     LDA #> tbl_0x010010_title_screen_objects
C - - - - - 0x01C2EE 07:C2DE: 85 01     STA ram_0000_t14_screen_objects_data + $01
C - - - - - 0x01C2F0 07:C2E0: A2 01     LDX #$01
C - - - - - 0x01C2F2 07:C2E2: 20 9F E1  JSR sub_E19F_prepare_screen_objects
C - - - - - 0x01C2F5 07:C2E5: A2 01     LDX #$01
C - - - - - 0x01C2F7 07:C2E7: A9 FF     LDA #$FF
C - - - - - 0x01C2F9 07:C2E9: 9D 58 06  STA ram_obj_pos_X_hi,X
C - - - - - 0x01C2FC 07:C2EC: A9 F0     LDA #< $FAF0
C - - - - - 0x01C2FE 07:C2EE: 9D B0 06  STA ram_obj_spd_X_fr,X
C - - - - - 0x01C301 07:C2F1: A9 FA     LDA #> $FAF0
C - - - - - 0x01C303 07:C2F3: 9D F2 06  STA ram_obj_spd_Y_lo,X
C - - - - - 0x01C306 07:C2F6: A9 10     LDA #< tbl_0x010020
C - - - - - 0x01C308 07:C2F8: 85 00     STA ram_0000_t09_screen_data
C - - - - - 0x01C30A 07:C2FA: A9 80     LDA #> tbl_0x010020
C - - - - - 0x01C30C 07:C2FC: 85 01     STA ram_0000_t09_screen_data + $01
C - - - - - 0x01C30E 07:C2FE: 20 C2 C7  JSR sub_C7C2_prepare_screen_data
C - - - - - 0x01C311 07:C301: 20 75 C1  JSR sub_C175_wait_for_nmi_to_end
C - - - - - 0x01C314 07:C304: A9 91     LDA #$91
C - - - - - 0x01C316 07:C306: 85 00     STA ram_0000_t72
C - - - - - 0x01C318 07:C308: A0 00     LDY #$00
bra_C30A_loop:
C - - - - - 0x01C31A 07:C30A: B9 97 03  LDA ram_hiscore,Y
C - - - - - 0x01C31D 07:C30D: 18        CLC
C - - - - - 0x01C31E 07:C30E: 69 A0     ADC #$A0
C - - - - - 0x01C320 07:C310: C9 B0     CMP #$B0
C - - - - - 0x01C322 07:C312: F0 07     BEQ bra_C31B
C - - - - - 0x01C324 07:C314: A2 00     LDX #$00
C - - - - - 0x01C326 07:C316: 86 00     STX ram_0000_t72
; bzk optimize, BEQ
C - - - - - 0x01C328 07:C318: 4C 1E C3  JMP loc_C31E
bra_C31B:
C - - - - - 0x01C32B 07:C31B: 38        SEC
C - - - - - 0x01C32C 07:C31C: E5 00     SBC ram_0000_t72
loc_C31E:
C D 2 - - - 0x01C32E 07:C31E: 99 00 60  STA ram_6000,Y
C - - - - - 0x01C331 07:C321: C8        INY
C - - - - - 0x01C332 07:C322: C0 07     CPY #$07
C - - - - - 0x01C334 07:C324: 90 E4     BCC bra_C30A_loop
C - - - - - 0x01C336 07:C326: A9 1C     LDA #< tbl_0x01002C
C - - - - - 0x01C338 07:C328: 85 00     STA ram_0000_t09_screen_data
C - - - - - 0x01C33A 07:C32A: A9 80     LDA #> tbl_0x01002C
C - - - - - 0x01C33C 07:C32C: 85 01     STA ram_0000_t09_screen_data + $01
C - - - - - 0x01C33E 07:C32E: 20 C2 C7  JSR sub_C7C2_prepare_screen_data
C - - - - - 0x01C341 07:C331: 20 75 C1  JSR sub_C175_wait_for_nmi_to_end
C - - - - - 0x01C344 07:C334: A0 0C     LDY #$0C
bra_C336_loop:
C - - - - - 0x01C346 07:C336: B9 1B 80  LDA tbl_0x01002C - $01,Y
C - - - - - 0x01C349 07:C339: 99 FF 6E  STA ram_data_6F00 - $01,Y
C - - - - - 0x01C34C 07:C33C: 88        DEY
C - - - - - 0x01C34D 07:C33D: D0 F7     BNE bra_C336_loop
C - - - - - 0x01C34F 07:C33F: A9 00     LDA #$00
C - - - - - 0x01C351 07:C341: 85 33     STA ram_round
C - - - - - 0x01C353 07:C343: 85 41     STA ram_0041_palette    ; con_0041_pal_00
C - - - - - 0x01C355 07:C345: A9 01     LDA #$01
C - - - - - 0x01C357 07:C347: 85 40     STA ram_0040_palette
C - - - - - 0x01C359 07:C349: 20 B4 C8  JSR sub_C8B4_prepare_palette
C - - - - - 0x01C35C 07:C34C: A9 00     LDA #$00
C - - - - - 0x01C35E 07:C34E: 85 18     STA ram_0018
C - - - - - 0x01C360 07:C350: 85 14     STA ram_0014
C - - - - - 0x01C362 07:C352: A9 01     LDA #$01
C - - - - - 0x01C364 07:C354: 85 1A     STA ram_001A
C - - - - - 0x01C366 07:C356: A9 00     LDA #$00
C - - - - - 0x01C368 07:C358: AA        TAX
C - - - - - 0x01C369 07:C359: 85 B7     STA ram_cam_pos_X_hi
C - - - - - 0x01C36B 07:C35B: 85 B8     STA ram_cam_pos_Y_hi
C - - - - - 0x01C36D 07:C35D: 85 B9     STA ram_cam_pos_X_lo
C - - - - - 0x01C36F 07:C35F: 85 BA     STA ram_cam_pos_Y_lo
C - - - - - 0x01C371 07:C361: 20 17 C4  JSR sub_C417
C - - - - - 0x01C374 07:C364: A9 21     LDA #con_music_title_screen
C - - - - - 0x01C376 07:C366: 20 1A FF  JSR sub_FF1A_play_sound
C - - - - - 0x01C379 07:C369: 20 BA C8  JSR sub_C8BA_prepare_screen_brightening
C - - - - - 0x01C37C 07:C36C: 20 B2 C9  JSR sub_C9B2_enable_rendering
                                       ;LDA #con_0028_01
C - - - - - 0x01C37F 07:C36F: E6 28     INC ram_main_script ; 00 -> 01
C - - - - - 0x01C381 07:C371: 60        RTS



loc_C372:
ofs_004_C372_01:
bra_C372_loop:
C D 2 J - - 0x01C382 07:C372: 20 AD C8  JSR sub_C8AD_RTS
C - - - - - 0x01C385 07:C375: 20 B4 C8  JSR sub_C8B4_prepare_palette
C - - - - - 0x01C388 07:C378: 20 2B E1  JSR sub_E12B
C - - - - - 0x01C38B 07:C37B: 20 D1 E1  JSR sub_E1D1_update_animation_for_all_objects
C - - - - - 0x01C38E 07:C37E: 20 DD C9  JSR sub_C9DD_prg_bankswitch_08
C - - - - - 0x01C391 07:C381: 20 43 C4  JSR sub_C443
C - - - - - 0x01C394 07:C384: 20 EB C9  JSR sub_C9EB_prg_bankswitch_0C
C - - - - - 0x01C397 07:C387: A9 00     LDA #$00
C - - - - - 0x01C399 07:C389: 85 B4     STA ram_index_oam
C - - - - - 0x01C39B 07:C38B: 85 B5     STA ram_full_oam_flag
C - - - - - 0x01C39D 07:C38D: A2 01     LDX #$01
C - - - - - 0x01C39F 07:C38F: 20 D7 E1  JSR sub_E1D7_sprite_engine
C - - - - - 0x01C3A2 07:C392: E8        INX ; 02
C - - - - - 0x01C3A3 07:C393: 20 D7 E1  JSR sub_E1D7_sprite_engine
C - - - - - 0x01C3A6 07:C396: E8        INX ; 03
C - - - - - 0x01C3A7 07:C397: 20 D7 E1  JSR sub_E1D7_sprite_engine
C - - - - - 0x01C3AA 07:C39A: 20 DD E1  JSR sub_E1DD_hide_unused_sprites
C - - - - - 0x01C3AD 07:C39D: 20 75 C1  JSR sub_C175_wait_for_nmi_to_end
C - - - - - 0x01C3B0 07:C3A0: AD FC 03  LDA ram_03FC
C - - - - - 0x01C3B3 07:C3A3: 38        SEC
C - - - - - 0x01C3B4 07:C3A4: E9 01     SBC #< $0001
C - - - - - 0x01C3B6 07:C3A6: 8D FC 03  STA ram_03FC
C - - - - - 0x01C3B9 07:C3A9: AD FB 03  LDA ram_03FB
C - - - - - 0x01C3BC 07:C3AC: E9 00     SBC #> $0001
C - - - - - 0x01C3BE 07:C3AE: 8D FB 03  STA ram_03FB
C - - - - - 0x01C3C1 07:C3B1: 0D FC 03  ORA ram_03FC
C - - - - - 0x01C3C4 07:C3B4: F0 35     BEQ bra_C3EB
C - - - - - 0x01C3C6 07:C3B6: AD D1 03  LDA ram_03D1
C - - - - - 0x01C3C9 07:C3B9: D0 00     BNE bra_C3BB
bra_C3BB:
C - - - - - 0x01C3CB 07:C3BB: A5 0F     LDA ram_000F
C - - - - - 0x01C3CD 07:C3BD: F0 05     BEQ bra_C3C4
C - - - - - 0x01C3CF 07:C3BF: C6 0F     DEC ram_000F
C - - - - - 0x01C3D1 07:C3C1: 4C 72 C3  JMP loc_C372
bra_C3C4:
C - - - - - 0x01C3D4 07:C3C4: A5 2D     LDA ram_002D_btn
C - - - - - 0x01C3D6 07:C3C6: 29 08     AND #con_btn_Start
C - - - - - 0x01C3D8 07:C3C8: F0 A8     BEQ bra_C372_loop
C - - - - - 0x01C3DA 07:C3CA: A9 06     LDA #con_0028_06
C - - - - - 0x01C3DC 07:C3CC: 85 28     STA ram_main_script
loc_C3CE:
C D 2 - - - 0x01C3DE 07:C3CE: 20 C0 C8  JSR sub_C8C0_prepare_screen_darkening
bra_C3D1_loop:
; wait until screen goes black
C - - - - - 0x01C3E1 07:C3D1: 20 B4 C8  JSR sub_C8B4_prepare_palette
C - - - - - 0x01C3E4 07:C3D4: 20 75 C1  JSR sub_C175_wait_for_nmi_to_end
C - - - - - 0x01C3E7 07:C3D7: AD E9 00  LDA a: ram_brightness_flag
C - - - - - 0x01C3EA 07:C3DA: D0 F5     BNE bra_C3D1_loop
C - - - - - 0x01C3EC 07:C3DC: 20 B9 C9  JSR sub_C9B9_disable_rendering
C - - - - - 0x01C3EF 07:C3DF: A9 F0     LDA #$F0
C - - - - - 0x01C3F1 07:C3E1: 85 34     STA ram_frm_cnt_1
bra_C3E3_loop:
C - - - - - 0x01C3F3 07:C3E3: 20 75 C1  JSR sub_C175_wait_for_nmi_to_end
C - - - - - 0x01C3F6 07:C3E6: A5 34     LDA ram_frm_cnt_1
C - - - - - 0x01C3F8 07:C3E8: D0 F9     BNE bra_C3E3_loop
C - - - - - 0x01C3FA 07:C3EA: 60        RTS
bra_C3EB:
C - - - - - 0x01C3FB 07:C3EB: 20 17 C4  JSR sub_C417
C - - - - - 0x01C3FE 07:C3EE: EE 2D 04  INC ram_demo_round_index
C - - - - - 0x01C401 07:C3F1: AE 2D 04  LDX ram_demo_round_index
C - - - - - 0x01C404 07:C3F4: E0 03     CPX #$03
C - - - - - 0x01C406 07:C3F6: 90 05     BCC bra_C3FD
C - - - - - 0x01C408 07:C3F8: A2 00     LDX #$00
C - - - - - 0x01C40A 07:C3FA: 8E 2D 04  STX ram_demo_round_index
bra_C3FD:
C - - - - - 0x01C40D 07:C3FD: BD 14 C4  LDA tbl_C414_demo_round,X
C - - - - - 0x01C410 07:C400: 85 33     STA ram_round
C - - - - - 0x01C412 07:C402: AA        TAX
C - - - - - 0x01C413 07:C403: BD A7 F6  LDA tbl_F6A7_round_type,X
C - - - - - 0x01C416 07:C406: 8D C5 03  STA ram_round_type
C - - - - - 0x01C419 07:C409: A9 01     LDA #$01    ; "demo" flag
C - - - - - 0x01C41B 07:C40B: 85 E4     STA ram_demo_flag
C - - - - - 0x01C41D 07:C40D: A9 04     LDA #con_0028_04
C - - - - - 0x01C41F 07:C40F: 85 28     STA ram_main_script
C - - - - - 0x01C421 07:C411: 4C CE C3  JMP loc_C3CE



tbl_C414_demo_round:
- D 2 - - - 0x01C424 07:C414: 00        .byte $00   ; 00 
- D 2 - - - 0x01C425 07:C415: 03        .byte $03   ; 01 
- D 2 - - - 0x01C426 07:C416: 0F        .byte $0F   ; 02 



sub_C417:
C - - - - - 0x01C427 07:C417: A9 03     LDA #> ram_score
C - - - - - 0x01C429 07:C419: 85 01     STA ram_0000_t18_score_data + $01
C - - - - - 0x01C42B 07:C41B: A9 9E     LDA #< ram_score
C - - - - - 0x01C42D 07:C41D: 85 00     STA ram_0000_t18_score_data
; set player score to 0.000.000
C - - - - - 0x01C42F 07:C41F: A9 10     LDA #$10
C - - - - - 0x01C431 07:C421: A0 00     LDY #$00
bra_C423_loop:
C - - - - - 0x01C433 07:C423: 91 00     STA (ram_0000_t18_score_data),Y
C - - - - - 0x01C435 07:C425: C8        INY
C - - - - - 0x01C436 07:C426: C0 0E     CPY #$0E
C - - - - - 0x01C438 07:C428: 90 F9     BCC bra_C423_loop
; 
C - - - - - 0x01C43A 07:C42A: A9 2C     LDA #$2C
C - - - - - 0x01C43C 07:C42C: 8D AE 03  STA ram_03AE
C - - - - - 0x01C43F 07:C42F: A9 12     LDA #$12
C - - - - - 0x01C441 07:C431: 8D A6 03  STA ram_03A5_lives + $01
C - - - - - 0x01C444 07:C434: A9 10     LDA #$10
C - - - - - 0x01C446 07:C436: 8D A7 03  STA ram_03A7_face_counter
C - - - - - 0x01C449 07:C439: 8D A8 03  STA ram_03A7_face_counter + $01
C - - - - - 0x01C44C 07:C43C: 60        RTS
bra_C43D:
C - - - - - 0x01C44D 07:C43D: A9 04     LDA #$04
C - - - - - 0x01C44F 07:C43F: 8D 17 06  STA ram_0616_obj + $01
bra_C442_RTS:
C - - - - - 0x01C452 07:C442: 60        RTS



sub_C443:
C - - - - - 0x01C453 07:C443: AD 17 06  LDA ram_0616_obj + $01
C - - - - - 0x01C456 07:C446: C9 05     CMP #$05
C - - - - - 0x01C458 07:C448: D0 51     BNE bra_C49B
C - - - - - 0x01C45A 07:C44A: AD D3 03  LDA ram_03D3
C - - - - - 0x01C45D 07:C44D: 48        PHA
C - - - - - 0x01C45E 07:C44E: AD D2 03  LDA ram_03D2
C - - - - - 0x01C461 07:C451: 48        PHA
C - - - - - 0x01C462 07:C452: 18        CLC
C - - - - - 0x01C463 07:C453: 2E D2 03  ROL ram_03D2
C - - - - - 0x01C466 07:C456: 2E D3 03  ROL ram_03D3
C - - - - - 0x01C469 07:C459: 18        CLC
C - - - - - 0x01C46A 07:C45A: 2E D2 03  ROL ram_03D2
C - - - - - 0x01C46D 07:C45D: 2E D3 03  ROL ram_03D3
C - - - - - 0x01C470 07:C460: 68        PLA
C - - - - - 0x01C471 07:C461: 18        CLC
C - - - - - 0x01C472 07:C462: 6D D2 03  ADC ram_03D2
C - - - - - 0x01C475 07:C465: 8D D2 03  STA ram_03D2
C - - - - - 0x01C478 07:C468: 68        PLA
C - - - - - 0x01C479 07:C469: 6D D3 03  ADC ram_03D3
C - - - - - 0x01C47C 07:C46C: 8D D3 03  STA ram_03D3
C - - - - - 0x01C47F 07:C46F: AD D2 03  LDA ram_03D2
C - - - - - 0x01C482 07:C472: 18        CLC
C - - - - - 0x01C483 07:C473: 69 71     ADC #$71
C - - - - - 0x01C485 07:C475: 8D D2 03  STA ram_03D2
C - - - - - 0x01C488 07:C478: AD D3 03  LDA ram_03D3
C - - - - - 0x01C48B 07:C47B: 69 47     ADC #$47
C - - - - - 0x01C48D 07:C47D: 8D D3 03  STA ram_03D3
C - - - - - 0x01C490 07:C480: 2A        ROL
C - - - - - 0x01C491 07:C481: C9 FE     CMP #$FE
C - - - - - 0x01C493 07:C483: B0 B8     BCS bra_C43D
C - - - - - 0x01C495 07:C485: AD D2 03  LDA ram_03D2
C - - - - - 0x01C498 07:C488: C9 96     CMP #$96
C - - - - - 0x01C49A 07:C48A: 90 0F     BCC bra_C49B
C - - - - - 0x01C49C 07:C48C: AD D3 03  LDA ram_03D3
C - - - - - 0x01C49F 07:C48F: 29 C7     AND #$C7
C - - - - - 0x01C4A1 07:C491: C9 08     CMP #$08
C - - - - - 0x01C4A3 07:C493: B0 06     BCS bra_C49B
C - - - - - 0x01C4A5 07:C495: 18        CLC
C - - - - - 0x01C4A6 07:C496: 69 02     ADC #$02
C - - - - - 0x01C4A8 07:C498: 4C B1 C4  JMP loc_C4B1
bra_C49B:
C - - - - - 0x01C4AB 07:C49B: EE D1 03  INC ram_03D1
C - - - - - 0x01C4AE 07:C49E: AD D1 03  LDA ram_03D1
C - - - - - 0x01C4B1 07:C4A1: 29 20     AND #$20
C - - - - - 0x01C4B3 07:C4A3: F0 9D     BEQ bra_C442_RTS
C - - - - - 0x01C4B5 07:C4A5: AD D1 03  LDA ram_03D1
C - - - - - 0x01C4B8 07:C4A8: 18        CLC
C - - - - - 0x01C4B9 07:C4A9: 69 01     ADC #$01
C - - - - - 0x01C4BB 07:C4AB: 29 1F     AND #$1F
C - - - - - 0x01C4BD 07:C4AD: C9 02     CMP #$02
C - - - - - 0x01C4BF 07:C4AF: B0 91     BCS bra_C442_RTS
loc_C4B1:
C D 2 - - - 0x01C4C1 07:C4B1: 18        CLC
C - - - - - 0x01C4C2 07:C4B2: 69 1A     ADC #$1A
sub_0x01C4C4:
C - - - - - 0x01C4C4 07:C4B4: 48        PHA
C - - - - - 0x01C4C5 07:C4B5: A9 08     LDA #$08
C - - - - - 0x01C4C7 07:C4B7: 85 3A     STA ram_003A
C - - - - - 0x01C4C9 07:C4B9: 85 2B     STA ram_prg_bank
C - - - - - 0x01C4CB 07:C4BB: 20 0C C9  JSR sub_C90C_prg_bankswitch
C - - - - - 0x01C4CE 07:C4BE: 68        PLA
C - - - - - 0x01C4CF 07:C4BF: 4C F2 82  JMP loc_0x010302_background_stuff_for_title_screen



sub_C4C2:
C - - - - - 0x01C4D2 07:C4C2: A5 A4     LDA ram_00A4
C - - - - - 0x01C4D4 07:C4C4: F0 23     BEQ bra_C4E9
bra_C4C6_loop:
C - - - - - 0x01C4D6 07:C4C6: C6 A4     DEC ram_00A4
C - - - - - 0x01C4D8 07:C4C8: 20 E5 C7  JSR sub_C7E5_prepare_screen_data_pointers
C - - - - - 0x01C4DB 07:C4CB: A9 00     LDA #> ram_0067_data
C - - - - - 0x01C4DD 07:C4CD: 85 01     STA ram_0000_t19_data + $01
C - - - - - 0x01C4DF 07:C4CF: A9 67     LDA #< ram_0067_data
C - - - - - 0x01C4E1 07:C4D1: 85 00     STA ram_0000_t19_data
C - - - - - 0x01C4E3 07:C4D3: A0 0B     LDY #$0B
bra_C4D5_loop:
C - - - - - 0x01C4E5 07:C4D5: B1 02     LDA (ram_0002_t01_data),Y
; also ram_0071_t01_data
C - - - - - 0x01C4E7 07:C4D7: 91 00     STA (ram_0000_t19_data),Y ; 0067 0068 0069 006A 006B 006C 006D 006E 006F 0070 0071 0072 
C - - - - - 0x01C4E9 07:C4D9: 88        DEY
C - - - - - 0x01C4EA 07:C4DA: 10 F9     BPL bra_C4D5_loop
C - - - - - 0x01C4EC 07:C4DC: 20 F9 C4  JSR sub_C4F9
C - - - - - 0x01C4EF 07:C4DF: A5 A4     LDA ram_00A4
C - - - - - 0x01C4F1 07:C4E1: D0 E3     BNE bra_C4C6_loop
bra_C4E3_00:
C - - - - - 0x01C4F3 07:C4E3: A9 FF     LDA #$FF
C - - - - - 0x01C4F5 07:C4E5: 60        RTS
bra_C4E6:
C - - - - - 0x01C4F6 07:C4E6: A9 00     LDA #$00
C - - - - - 0x01C4F8 07:C4E8: 60        RTS
bra_C4E9:
C - - - - - 0x01C4F9 07:C4E9: AD 08 03  LDA ram_0308
C - - - - - 0x01C4FC 07:C4EC: F0 F8     BEQ bra_C4E6
C - - - - - 0x01C4FE 07:C4EE: A9 00     LDA #$00
C - - - - - 0x01C500 07:C4F0: 8D 08 03  STA ram_0308
C - - - - - 0x01C503 07:C4F3: 20 03 C8  JSR sub_C803
C - - - - - 0x01C506 07:C4F6: A9 FF     LDA #$FF
C - - - - - 0x01C508 07:C4F8: 60        RTS



sub_C4F9:
C - - - - - 0x01C509 07:C4F9: A5 6A     LDA ram_006A
C - - - - - 0x01C50B 07:C4FB: F0 13     BEQ bra_C510_RTS
C - - - - - 0x01C50D 07:C4FD: A5 67     LDA ram_0067_unk
C - - - - - 0x01C50F 07:C4FF: F0 E2     BEQ bra_C4E3_00
C - - - - - 0x01C511 07:C501: C9 02     CMP #$02
C - - - - - 0x01C513 07:C503: F0 52     BEQ bra_C557_02_draw_round
C - - - - - 0x01C515 07:C505: C9 01     CMP #$01
C - - - - - 0x01C517 07:C507: F0 08     BEQ bra_C511_01
C - - - - - 0x01C519 07:C509: C9 03     CMP #$03
C - - - - - 0x01C51B 07:C50B: D0 03     BNE bra_C510_RTS
C - - - - - 0x01C51D 07:C50D: 4C 9B C6  JMP loc_C69B_03_draw_static_screen
bra_C510_RTS:
- - - - - - 0x01C520 07:C510: 60        RTS
bra_C511_01:
C - - - - - 0x01C521 07:C511: A5 68     LDA ram_0068_screen_prg_bank
C - - - - - 0x01C523 07:C513: 85 2B     STA ram_prg_bank
C - - - - - 0x01C525 07:C515: 20 0C C9  JSR sub_C90C_prg_bankswitch
C - - - - - 0x01C528 07:C518: A5 10     LDA ram_for_2000
C - - - - - 0x01C52A 07:C51A: 29 7B     AND #$7B
C - - - - - 0x01C52C 07:C51C: 8D 00 20  STA $2000
bra_C51F_loop:
C - - - - - 0x01C52F 07:C51F: AD 02 20  LDA $2002
C - - - - - 0x01C532 07:C522: A5 6C     LDA ram_006C_2006_hi
C - - - - - 0x01C534 07:C524: 8D 06 20  STA $2006
C - - - - - 0x01C537 07:C527: A5 6B     LDA ram_006C_2006_lo
C - - - - - 0x01C539 07:C529: 8D 06 20  STA $2006
C - - - - - 0x01C53C 07:C52C: A0 00     LDY #$00
C - - - - - 0x01C53E 07:C52E: A6 69     LDX ram_0069
bra_C530_loop:
C - - - - - 0x01C540 07:C530: B1 71     LDA (ram_0071_t01_data),Y
C - - - - - 0x01C542 07:C532: 8D 07 20  STA $2007
C - - - - - 0x01C545 07:C535: C8        INY
C - - - - - 0x01C546 07:C536: CA        DEX
C - - - - - 0x01C547 07:C537: D0 F7     BNE bra_C530_loop
C - - - - - 0x01C549 07:C539: 98        TYA
C - - - - - 0x01C54A 07:C53A: 18        CLC
C - - - - - 0x01C54B 07:C53B: 65 71     ADC ram_0071_t01_data
C - - - - - 0x01C54D 07:C53D: 85 71     STA ram_0071_t01_data
C - - - - - 0x01C54F 07:C53F: A9 00     LDA #$00
C - - - - - 0x01C551 07:C541: 65 72     ADC ram_0071_t01_data + $01
C - - - - - 0x01C553 07:C543: 85 72     STA ram_0071_t01_data + $01
C - - - - - 0x01C555 07:C545: A5 6B     LDA ram_006C_2006_lo
C - - - - - 0x01C557 07:C547: 18        CLC
C - - - - - 0x01C558 07:C548: 69 20     ADC #< $0020
C - - - - - 0x01C55A 07:C54A: 85 6B     STA ram_006C_2006_lo
C - - - - - 0x01C55C 07:C54C: A5 6C     LDA ram_006C_2006_hi
C - - - - - 0x01C55E 07:C54E: 69 00     ADC #> $0020
C - - - - - 0x01C560 07:C550: 85 6C     STA ram_006C_2006_hi
C - - - - - 0x01C562 07:C552: C6 6A     DEC ram_006A
C - - - - - 0x01C564 07:C554: D0 C9     BNE bra_C51F_loop
C - - - - - 0x01C566 07:C556: 60        RTS
bra_C557_02_draw_round:
C - - - - - 0x01C567 07:C557: A5 10     LDA ram_for_2000
C - - - - - 0x01C569 07:C559: 29 7F     AND #$7F
C - - - - - 0x01C56B 07:C55B: 09 04     ORA #$04
C - - - - - 0x01C56D 07:C55D: 8D 00 20  STA $2000
C - - - - - 0x01C570 07:C560: A0 00     LDY #$00
C - - - - - 0x01C572 07:C562: AD 02 20  LDA $2002
C - - - - - 0x01C575 07:C565: A5 6C     LDA ram_006C_2006_hi
C - - - - - 0x01C577 07:C567: 8D 06 20  STA $2006
C - - - - - 0x01C57A 07:C56A: A5 6B     LDA ram_006C_2006_lo
C - - - - - 0x01C57C 07:C56C: 8D 06 20  STA $2006
C - - - - - 0x01C57F 07:C56F: 20 F8 C5  JSR sub_C5F8
C - - - - - 0x01C582 07:C572: AD 02 20  LDA $2002
C - - - - - 0x01C585 07:C575: A9 28     LDA #> $2880
C - - - - - 0x01C587 07:C577: 8D 06 20  STA $2006
C - - - - - 0x01C58A 07:C57A: A5 6B     LDA ram_006C_2006_lo
C - - - - - 0x01C58C 07:C57C: 18        CLC
C - - - - - 0x01C58D 07:C57D: 69 80     ADC #< $2880
C - - - - - 0x01C58F 07:C57F: 8D 06 20  STA $2006
C - - - - - 0x01C592 07:C582: 20 8C C5  JSR sub_C58C
C - - - - - 0x01C595 07:C585: A9 00     LDA #$00
C - - - - - 0x01C597 07:C587: 85 69     STA ram_0069
C - - - - - 0x01C599 07:C589: 85 6A     STA ram_006A
C - - - - - 0x01C59B 07:C58B: 60        RTS



sub_C58C:
C - - - - - 0x01C59C 07:C58C: B1 71     LDA (ram_0071_t01_data),Y
C - - - - - 0x01C59E 07:C58E: C8        INY
C - - - - - 0x01C59F 07:C58F: 05 6D     ORA ram_006D
C - - - - - 0x01C5A1 07:C591: AA        TAX
C - - - - - 0x01C5A2 07:C592: BD 00 68  LDA ram_6800,X
C - - - - - 0x01C5A5 07:C595: 8D 07 20  STA $2007
C - - - - - 0x01C5A8 07:C598: BD 00 69  LDA ram_data_6900,X
C - - - - - 0x01C5AB 07:C59B: 8D 07 20  STA $2007
C - - - - - 0x01C5AE 07:C59E: B1 71     LDA (ram_0071_t01_data),Y
C - - - - - 0x01C5B0 07:C5A0: C8        INY
C - - - - - 0x01C5B1 07:C5A1: 05 6D     ORA ram_006D
C - - - - - 0x01C5B3 07:C5A3: AA        TAX
C - - - - - 0x01C5B4 07:C5A4: BD 00 68  LDA ram_6800,X
C - - - - - 0x01C5B7 07:C5A7: 8D 07 20  STA $2007
C - - - - - 0x01C5BA 07:C5AA: BD 00 69  LDA ram_data_6900,X
C - - - - - 0x01C5BD 07:C5AD: 8D 07 20  STA $2007
C - - - - - 0x01C5C0 07:C5B0: B1 71     LDA (ram_0071_t01_data),Y
C - - - - - 0x01C5C2 07:C5B2: C8        INY
C - - - - - 0x01C5C3 07:C5B3: 05 6D     ORA ram_006D
C - - - - - 0x01C5C5 07:C5B5: AA        TAX
C - - - - - 0x01C5C6 07:C5B6: BD 00 68  LDA ram_6800,X
C - - - - - 0x01C5C9 07:C5B9: 8D 07 20  STA $2007
C - - - - - 0x01C5CC 07:C5BC: BD 00 69  LDA ram_data_6900,X
C - - - - - 0x01C5CF 07:C5BF: 8D 07 20  STA $2007
C - - - - - 0x01C5D2 07:C5C2: B1 71     LDA (ram_0071_t01_data),Y
C - - - - - 0x01C5D4 07:C5C4: C8        INY
C - - - - - 0x01C5D5 07:C5C5: 05 6D     ORA ram_006D
C - - - - - 0x01C5D7 07:C5C7: AA        TAX
C - - - - - 0x01C5D8 07:C5C8: BD 00 68  LDA ram_6800,X
C - - - - - 0x01C5DB 07:C5CB: 8D 07 20  STA $2007
C - - - - - 0x01C5DE 07:C5CE: BD 00 69  LDA ram_data_6900,X
C - - - - - 0x01C5E1 07:C5D1: 8D 07 20  STA $2007
C - - - - - 0x01C5E4 07:C5D4: B1 71     LDA (ram_0071_t01_data),Y
C - - - - - 0x01C5E6 07:C5D6: C8        INY
C - - - - - 0x01C5E7 07:C5D7: 05 6D     ORA ram_006D
C - - - - - 0x01C5E9 07:C5D9: AA        TAX
C - - - - - 0x01C5EA 07:C5DA: BD 00 68  LDA ram_6800,X
C - - - - - 0x01C5ED 07:C5DD: 8D 07 20  STA $2007
C - - - - - 0x01C5F0 07:C5E0: BD 00 69  LDA ram_data_6900,X
C - - - - - 0x01C5F3 07:C5E3: 8D 07 20  STA $2007
C - - - - - 0x01C5F6 07:C5E6: B1 71     LDA (ram_0071_t01_data),Y
C - - - - - 0x01C5F8 07:C5E8: C8        INY
C - - - - - 0x01C5F9 07:C5E9: 05 6D     ORA ram_006D
C - - - - - 0x01C5FB 07:C5EB: AA        TAX
C - - - - - 0x01C5FC 07:C5EC: BD 00 68  LDA ram_6800,X
C - - - - - 0x01C5FF 07:C5EF: 8D 07 20  STA $2007
C - - - - - 0x01C602 07:C5F2: BD 00 69  LDA ram_data_6900,X
C - - - - - 0x01C605 07:C5F5: 8D 07 20  STA $2007
sub_C5F8:
C - - - - - 0x01C608 07:C5F8: B1 71     LDA (ram_0071_t01_data),Y
C - - - - - 0x01C60A 07:C5FA: C8        INY
C - - - - - 0x01C60B 07:C5FB: 05 6D     ORA ram_006D
C - - - - - 0x01C60D 07:C5FD: AA        TAX
C - - - - - 0x01C60E 07:C5FE: BD 00 68  LDA ram_6800,X
C - - - - - 0x01C611 07:C601: 8D 07 20  STA $2007
C - - - - - 0x01C614 07:C604: BD 00 69  LDA ram_data_6900,X
C - - - - - 0x01C617 07:C607: 8D 07 20  STA $2007
C - - - - - 0x01C61A 07:C60A: B1 71     LDA (ram_0071_t01_data),Y
C - - - - - 0x01C61C 07:C60C: C8        INY
C - - - - - 0x01C61D 07:C60D: 05 6D     ORA ram_006D
C - - - - - 0x01C61F 07:C60F: AA        TAX
C - - - - - 0x01C620 07:C610: BD 00 68  LDA ram_6800,X
C - - - - - 0x01C623 07:C613: 8D 07 20  STA $2007
C - - - - - 0x01C626 07:C616: BD 00 69  LDA ram_data_6900,X
C - - - - - 0x01C629 07:C619: 8D 07 20  STA $2007
C - - - - - 0x01C62C 07:C61C: B1 71     LDA (ram_0071_t01_data),Y
C - - - - - 0x01C62E 07:C61E: C8        INY
C - - - - - 0x01C62F 07:C61F: 05 6D     ORA ram_006D
C - - - - - 0x01C631 07:C621: AA        TAX
C - - - - - 0x01C632 07:C622: BD 00 68  LDA ram_6800,X
C - - - - - 0x01C635 07:C625: 8D 07 20  STA $2007
C - - - - - 0x01C638 07:C628: BD 00 69  LDA ram_data_6900,X
C - - - - - 0x01C63B 07:C62B: 8D 07 20  STA $2007
C - - - - - 0x01C63E 07:C62E: B1 71     LDA (ram_0071_t01_data),Y
C - - - - - 0x01C640 07:C630: C8        INY
C - - - - - 0x01C641 07:C631: 05 6D     ORA ram_006D
C - - - - - 0x01C643 07:C633: AA        TAX
C - - - - - 0x01C644 07:C634: BD 00 68  LDA ram_6800,X
C - - - - - 0x01C647 07:C637: 8D 07 20  STA $2007
C - - - - - 0x01C64A 07:C63A: BD 00 69  LDA ram_data_6900,X
C - - - - - 0x01C64D 07:C63D: 8D 07 20  STA $2007
C - - - - - 0x01C650 07:C640: B1 71     LDA (ram_0071_t01_data),Y
C - - - - - 0x01C652 07:C642: C8        INY
C - - - - - 0x01C653 07:C643: 05 6D     ORA ram_006D
C - - - - - 0x01C655 07:C645: AA        TAX
C - - - - - 0x01C656 07:C646: BD 00 68  LDA ram_6800,X
C - - - - - 0x01C659 07:C649: 8D 07 20  STA $2007
C - - - - - 0x01C65C 07:C64C: BD 00 69  LDA ram_data_6900,X
C - - - - - 0x01C65F 07:C64F: 8D 07 20  STA $2007
C - - - - - 0x01C662 07:C652: B1 71     LDA (ram_0071_t01_data),Y
C - - - - - 0x01C664 07:C654: C8        INY
C - - - - - 0x01C665 07:C655: 05 6D     ORA ram_006D
C - - - - - 0x01C667 07:C657: AA        TAX
C - - - - - 0x01C668 07:C658: BD 00 68  LDA ram_6800,X
C - - - - - 0x01C66B 07:C65B: 8D 07 20  STA $2007
C - - - - - 0x01C66E 07:C65E: BD 00 69  LDA ram_data_6900,X
C - - - - - 0x01C671 07:C661: 8D 07 20  STA $2007
C - - - - - 0x01C674 07:C664: B1 71     LDA (ram_0071_t01_data),Y
C - - - - - 0x01C676 07:C666: C8        INY
C - - - - - 0x01C677 07:C667: 05 6D     ORA ram_006D
C - - - - - 0x01C679 07:C669: AA        TAX
C - - - - - 0x01C67A 07:C66A: BD 00 68  LDA ram_6800,X
C - - - - - 0x01C67D 07:C66D: 8D 07 20  STA $2007
C - - - - - 0x01C680 07:C670: BD 00 69  LDA ram_data_6900,X
C - - - - - 0x01C683 07:C673: 8D 07 20  STA $2007
C - - - - - 0x01C686 07:C676: B1 71     LDA (ram_0071_t01_data),Y
C - - - - - 0x01C688 07:C678: C8        INY
C - - - - - 0x01C689 07:C679: 05 6D     ORA ram_006D
C - - - - - 0x01C68B 07:C67B: AA        TAX
C - - - - - 0x01C68C 07:C67C: BD 00 68  LDA ram_6800,X
C - - - - - 0x01C68F 07:C67F: 8D 07 20  STA $2007
C - - - - - 0x01C692 07:C682: BD 00 69  LDA ram_data_6900,X
C - - - - - 0x01C695 07:C685: 8D 07 20  STA $2007
C - - - - - 0x01C698 07:C688: B1 71     LDA (ram_0071_t01_data),Y
C - - - - - 0x01C69A 07:C68A: C8        INY
C - - - - - 0x01C69B 07:C68B: 05 6D     ORA ram_006D
C - - - - - 0x01C69D 07:C68D: AA        TAX
C - - - - - 0x01C69E 07:C68E: BD 00 68  LDA ram_6800,X
C - - - - - 0x01C6A1 07:C691: 8D 07 20  STA $2007
C - - - - - 0x01C6A4 07:C694: BD 00 69  LDA ram_data_6900,X
C - - - - - 0x01C6A7 07:C697: 8D 07 20  STA $2007
C - - - - - 0x01C6AA 07:C69A: 60        RTS



loc_C69B_03_draw_static_screen:
C D 2 - - - 0x01C6AB 07:C69B: A5 68     LDA ram_0068_screen_prg_bank
C - - - - - 0x01C6AD 07:C69D: 85 2B     STA ram_prg_bank
C - - - - - 0x01C6AF 07:C69F: 20 0C C9  JSR sub_C90C_prg_bankswitch
C - - - - - 0x01C6B2 07:C6A2: A5 10     LDA ram_for_2000
C - - - - - 0x01C6B4 07:C6A4: 29 7B     AND #$7B
C - - - - - 0x01C6B6 07:C6A6: 8D 00 20  STA $2000
C - - - - - 0x01C6B9 07:C6A9: AD 02 20  LDA $2002
C - - - - - 0x01C6BC 07:C6AC: A5 6C     LDA ram_006C_2006_hi
C - - - - - 0x01C6BE 07:C6AE: 8D 06 20  STA $2006
C - - - - - 0x01C6C1 07:C6B1: A9 00     LDA #$00
C - - - - - 0x01C6C3 07:C6B3: 8D 06 20  STA $2006
C - - - - - 0x01C6C6 07:C6B6: A0 00     LDY #$00
loc_C6B8_loop:
C D 2 - - - 0x01C6C8 07:C6B8: A0 00     LDY #$00
C - - - - - 0x01C6CA 07:C6BA: B1 71     LDA (ram_0071_t01_data),Y
C - - - - - 0x01C6CC 07:C6BC: 08        PHP
C - - - - - 0x01C6CD 07:C6BD: 29 7F     AND #$7F
C - - - - - 0x01C6CF 07:C6BF: AA        TAX
C - - - - - 0x01C6D0 07:C6C0: C8        INY
C - - - - - 0x01C6D1 07:C6C1: 28        PLP
C - - - - - 0x01C6D2 07:C6C2: F0 26     BEQ bra_C6EA_00
C - - - - - 0x01C6D4 07:C6C4: 30 18     BMI bra_C6DE
; 01-7F
C - - - - - 0x01C6D6 07:C6C6: B1 71     LDA (ram_0071_t01_data),Y
C - - - - - 0x01C6D8 07:C6C8: C8        INY
bra_C6C9_loop:
C - - - - - 0x01C6D9 07:C6C9: 8D 07 20  STA $2007
C - - - - - 0x01C6DC 07:C6CC: CA        DEX
C - - - - - 0x01C6DD 07:C6CD: D0 FA     BNE bra_C6C9_loop
loc_C6CF:
C D 2 - - - 0x01C6DF 07:C6CF: 98        TYA
C - - - - - 0x01C6E0 07:C6D0: 18        CLC
C - - - - - 0x01C6E1 07:C6D1: 65 71     ADC ram_0071_t01_data
C - - - - - 0x01C6E3 07:C6D3: 85 71     STA ram_0071_t01_data
C - - - - - 0x01C6E5 07:C6D5: A5 72     LDA ram_0071_t01_data + $01
C - - - - - 0x01C6E7 07:C6D7: 69 00     ADC #$00
C - - - - - 0x01C6E9 07:C6D9: 85 72     STA ram_0071_t01_data + $01
C - - - - - 0x01C6EB 07:C6DB: 4C B8 C6  JMP loc_C6B8_loop
bra_C6DE:
bra_C6DE_loop:
C - - - - - 0x01C6EE 07:C6DE: B1 71     LDA (ram_0071_t01_data),Y
C - - - - - 0x01C6F0 07:C6E0: C8        INY
C - - - - - 0x01C6F1 07:C6E1: 8D 07 20  STA $2007
C - - - - - 0x01C6F4 07:C6E4: CA        DEX
C - - - - - 0x01C6F5 07:C6E5: D0 F7     BNE bra_C6DE_loop
C - - - - - 0x01C6F7 07:C6E7: 4C CF C6  JMP loc_C6CF
bra_C6EA_00:
C - - - - - 0x01C6FA 07:C6EA: A9 00     LDA #$00
C - - - - - 0x01C6FC 07:C6EC: 85 69     STA ram_0069
C - - - - - 0x01C6FE 07:C6EE: 85 6A     STA ram_006A
C - - - - - 0x01C700 07:C6F0: 60        RTS



sub_C6F1:
C - - - - - 0x01C701 07:C6F1: A5 10     LDA ram_for_2000
C - - - - - 0x01C703 07:C6F3: 29 7B     AND #$7B
C - - - - - 0x01C705 07:C6F5: 8D 00 20  STA $2000
C - - - - - 0x01C708 07:C6F8: A4 D2     LDY ram_00D2_block_index
C - - - - - 0x01C70A 07:C6FA: AD 02 20  LDA $2002
C - - - - - 0x01C70D 07:C6FD: A5 D7     LDA ram_00D7_ppu_hi
C - - - - - 0x01C70F 07:C6FF: 8D 06 20  STA $2006
C - - - - - 0x01C712 07:C702: A5 D6     LDA ram_00D6_ppu_lo
C - - - - - 0x01C714 07:C704: 8D 06 20  STA $2006
C - - - - - 0x01C717 07:C707: B9 00 68  LDA ram_6800,Y
C - - - - - 0x01C71A 07:C70A: 8D 07 20  STA $2007
C - - - - - 0x01C71D 07:C70D: B9 80 68  LDA ram_6800 + $80,Y
C - - - - - 0x01C720 07:C710: 8D 07 20  STA $2007
C - - - - - 0x01C723 07:C713: AD 02 20  LDA $2002
C - - - - - 0x01C726 07:C716: A5 D7     LDA ram_00D7_ppu_hi
C - - - - - 0x01C728 07:C718: 8D 06 20  STA $2006
C - - - - - 0x01C72B 07:C71B: A5 D6     LDA ram_00D6_ppu_lo
C - - - - - 0x01C72D 07:C71D: 18        CLC
C - - - - - 0x01C72E 07:C71E: 69 20     ADC #$20
C - - - - - 0x01C730 07:C720: 8D 06 20  STA $2006
C - - - - - 0x01C733 07:C723: B9 00 69  LDA ram_data_6900,Y
C - - - - - 0x01C736 07:C726: 8D 07 20  STA $2007
C - - - - - 0x01C739 07:C729: B9 80 69  LDA ram_data_6900 + $80,Y
C - - - - - 0x01C73C 07:C72C: 8D 07 20  STA $2007
C - - - - - 0x01C73F 07:C72F: AD 02 20  LDA $2002
C - - - - - 0x01C742 07:C732: A5 DB     LDA ram_00DB_attr_ppu_hi
C - - - - - 0x01C744 07:C734: 8D 06 20  STA $2006
C - - - - - 0x01C747 07:C737: A5 DA     LDA ram_00DA_attr_ppu_lo
C - - - - - 0x01C749 07:C739: 8D 06 20  STA $2006
C - - - - - 0x01C74C 07:C73C: A5 D8     LDA ram_00D8
C - - - - - 0x01C74E 07:C73E: 8D 07 20  STA $2007
C - - - - - 0x01C751 07:C741: 60        RTS



sub_C742:
C - - - - - 0x01C752 07:C742: A5 12     LDA ram_0012_scanline
C - - - - - 0x01C754 07:C744: F0 7B     BEQ bra_C7C1_RTS
C - - - - - 0x01C756 07:C746: A5 10     LDA ram_for_2000
C - - - - - 0x01C758 07:C748: 29 7B     AND #$7B
C - - - - - 0x01C75A 07:C74A: 8D 00 20  STA $2000
C - - - - - 0x01C75D 07:C74D: AD 02 20  LDA $2002
C - - - - - 0x01C760 07:C750: A9 20     LDA #$20
C - - - - - 0x01C762 07:C752: 8D 06 20  STA $2006
C - - - - - 0x01C765 07:C755: AE AE 03  LDX ram_03AE
C - - - - - 0x01C768 07:C758: 8E 06 20  STX $2006
bra_C75B_loop:
C - - - - - 0x01C76B 07:C75B: BD 77 03  LDA ram_0377,X
C - - - - - 0x01C76E 07:C75E: 8D 07 20  STA $2007
C - - - - - 0x01C771 07:C761: E8        INX
C - - - - - 0x01C772 07:C762: E0 2D     CPX #$2D
C - - - - - 0x01C774 07:C764: 90 F5     BCC bra_C75B_loop
C - - - - - 0x01C776 07:C766: A9 20     LDA #$20
C - - - - - 0x01C778 07:C768: 8D 06 20  STA $2006
C - - - - - 0x01C77B 07:C76B: AE AD 03  LDX ram_03AD
C - - - - - 0x01C77E 07:C76E: 8E 06 20  STX $2006
bra_C771_loop:
C - - - - - 0x01C781 07:C771: BD 60 03  LDA ram_0309_buffer + $57,X
C - - - - - 0x01C784 07:C774: 8D 07 20  STA $2007
C - - - - - 0x01C787 07:C777: E8        INX
C - - - - - 0x01C788 07:C778: E0 3D     CPX #$3D
C - - - - - 0x01C78A 07:C77A: 90 F5     BCC bra_C771_loop
C - - - - - 0x01C78C 07:C77C: A9 20     LDA #> $2066
C - - - - - 0x01C78E 07:C77E: 8D 06 20  STA $2006
C - - - - - 0x01C791 07:C781: A9 66     LDA #< $2066
C - - - - - 0x01C793 07:C783: 8D 06 20  STA $2006
C - - - - - 0x01C796 07:C786: A2 00     LDX #$00
bra_C788_loop:
C - - - - - 0x01C798 07:C788: BD A5 03  LDA ram_03A5_lives,X
C - - - - - 0x01C79B 07:C78B: 8D 07 20  STA $2007
C - - - - - 0x01C79E 07:C78E: E8        INX
C - - - - - 0x01C79F 07:C78F: E0 02     CPX #$02
C - - - - - 0x01C7A1 07:C791: 90 F5     BCC bra_C788_loop
C - - - - - 0x01C7A3 07:C793: A9 20     LDA #> $2072
C - - - - - 0x01C7A5 07:C795: 8D 06 20  STA $2006
C - - - - - 0x01C7A8 07:C798: A9 72     LDA #< $2072
C - - - - - 0x01C7AA 07:C79A: 8D 06 20  STA $2006
C - - - - - 0x01C7AD 07:C79D: A2 00     LDX #$00
bra_C79F_loop:
C - - - - - 0x01C7AF 07:C79F: BD A7 03  LDA ram_03A7_face_counter,X
C - - - - - 0x01C7B2 07:C7A2: 8D 07 20  STA $2007
C - - - - - 0x01C7B5 07:C7A5: E8        INX
C - - - - - 0x01C7B6 07:C7A6: E0 02     CPX #$02
C - - - - - 0x01C7B8 07:C7A8: 90 F5     BCC bra_C79F_loop
C - - - - - 0x01C7BA 07:C7AA: A9 20     LDA #> $207A
C - - - - - 0x01C7BC 07:C7AC: 8D 06 20  STA $2006
C - - - - - 0x01C7BF 07:C7AF: A9 7A     LDA #< $207A
C - - - - - 0x01C7C1 07:C7B1: 8D 06 20  STA $2006
C - - - - - 0x01C7C4 07:C7B4: A2 00     LDX #$00
bra_C7B6_loop:
C - - - - - 0x01C7C6 07:C7B6: BD A9 03  LDA ram_time,X
C - - - - - 0x01C7C9 07:C7B9: 8D 07 20  STA $2007
C - - - - - 0x01C7CC 07:C7BC: E8        INX
C - - - - - 0x01C7CD 07:C7BD: E0 03     CPX #$03
C - - - - - 0x01C7CF 07:C7BF: 90 F5     BCC bra_C7B6_loop
bra_C7C1_RTS:
C - - - - - 0x01C7D1 07:C7C1: 60        RTS



sub_C7C2_prepare_screen_data:
sub_0x01C7D2_prepare_screen_data:
; in
    ; ram_0000_t09_screen_data
    ; ram_0073 = 
    ; ram_00A4 = 
; out
    ; ram_00A4 = 
bra_C7C2_loop:
C - - - - - 0x01C7D2 07:C7C2: A5 A4     LDA ram_00A4
C - - - - - 0x01C7D4 07:C7C4: C5 73     CMP ram_0073
C - - - - - 0x01C7D6 07:C7C6: D0 05     BNE bra_C7CD
C - - - - - 0x01C7D8 07:C7C8: 20 75 C1  JSR sub_C175_wait_for_nmi_to_end
C - - - - - 0x01C7DB 07:C7CB: A5 A4     LDA ram_00A4
bra_C7CD:
C - - - - - 0x01C7DD 07:C7CD: 48        PHA
C - - - - - 0x01C7DE 07:C7CE: 20 E5 C7  JSR sub_C7E5_prepare_screen_data_pointers
C - - - - - 0x01C7E1 07:C7D1: A2 0C     LDX #$0C
C - - - - - 0x01C7E3 07:C7D3: A0 00     LDY #$00
bra_C7D5_loop:
C - - - - - 0x01C7E5 07:C7D5: B1 00     LDA (ram_0000_t09_screen_data),Y
C - - - - - 0x01C7E7 07:C7D7: 91 02     STA (ram_0002_t01_data),Y
C - - - - - 0x01C7E9 07:C7D9: C8        INY
C - - - - - 0x01C7EA 07:C7DA: CA        DEX
C - - - - - 0x01C7EB 07:C7DB: D0 F8     BNE bra_C7D5_loop
C - - - - - 0x01C7ED 07:C7DD: 68        PLA
C - - - - - 0x01C7EE 07:C7DE: C5 A4     CMP ram_00A4
C - - - - - 0x01C7F0 07:C7E0: D0 E0     BNE bra_C7C2_loop
C - - - - - 0x01C7F2 07:C7E2: E6 A4     INC ram_00A4
C - - - - - 0x01C7F4 07:C7E4: 60        RTS



sub_C7E5_prepare_screen_data_pointers:
C - - - - - 0x01C7F5 07:C7E5: A9 74     LDA #< ram_0074
C - - - - - 0x01C7F7 07:C7E7: 85 02     STA ram_0002_t01_data
C - - - - - 0x01C7F9 07:C7E9: A9 00     LDA #> ram_0074
C - - - - - 0x01C7FB 07:C7EB: 85 03     STA ram_0002_t01_data + $01
C - - - - - 0x01C7FD 07:C7ED: A5 A4     LDA ram_00A4
C - - - - - 0x01C7FF 07:C7EF: F0 11     BEQ bra_C802_RTS
C - - - - - 0x01C801 07:C7F1: AA        TAX
bra_C7F2_loop:
C - - - - - 0x01C802 07:C7F2: A5 02     LDA ram_0002_t01_data
C - - - - - 0x01C804 07:C7F4: 18        CLC
C - - - - - 0x01C805 07:C7F5: 69 0C     ADC #< $000C
C - - - - - 0x01C807 07:C7F7: 85 02     STA ram_0002_t01_data
C - - - - - 0x01C809 07:C7F9: A5 03     LDA ram_0002_t01_data + $01
C - - - - - 0x01C80B 07:C7FB: 69 00     ADC #> $000C
C - - - - - 0x01C80D 07:C7FD: 85 03     STA ram_0002_t01_data + $01
C - - - - - 0x01C80F 07:C7FF: CA        DEX
C - - - - - 0x01C810 07:C800: D0 F0     BNE bra_C7F2_loop
bra_C802_RTS:
C - - - - - 0x01C812 07:C802: 60        RTS



sub_C803:
C - - - - - 0x01C813 07:C803: A5 10     LDA ram_for_2000
C - - - - - 0x01C815 07:C805: 29 7B     AND #$7B
C - - - - - 0x01C817 07:C807: 8D 00 20  STA $2000
C - - - - - 0x01C81A 07:C80A: A6 66     LDX ram_0066
C - - - - - 0x01C81C 07:C80C: AD 02 20  LDA $2002
C - - - - - 0x01C81F 07:C80F: A9 23     LDA #> $23D8
C - - - - - 0x01C821 07:C811: 85 00     STA ram_0000_t73_ppu_addr_hi
C - - - - - 0x01C823 07:C813: 8D 06 20  STA $2006
C - - - - - 0x01C826 07:C816: A9 D8     LDA #< $23D8
C - - - - - 0x01C828 07:C818: 18        CLC
C - - - - - 0x01C829 07:C819: 65 66     ADC ram_0066
C - - - - - 0x01C82B 07:C81B: 8D 06 20  STA $2006
C - - - - - 0x01C82E 07:C81E: 20 66 C8  JSR sub_C866
C - - - - - 0x01C831 07:C821: A9 40     LDA #$40
C - - - - - 0x01C833 07:C823: 18        CLC
C - - - - - 0x01C834 07:C824: 65 66     ADC ram_0066
C - - - - - 0x01C836 07:C826: AA        TAX
C - - - - - 0x01C837 07:C827: A9 2B     LDA #$2B    ; 2BC0
C - - - - - 0x01C839 07:C829: 85 00     STA ram_0000_t73_ppu_addr_hi
C - - - - - 0x01C83B 07:C82B: 8D 06 20  STA $2006
C - - - - - 0x01C83E 07:C82E: A9 C0     LDA #$C0    ; 2BC0
C - - - - - 0x01C840 07:C830: 18        CLC
C - - - - - 0x01C841 07:C831: 65 66     ADC ram_0066
C - - - - - 0x01C843 07:C833: 8D 06 20  STA $2006
C - - - - - 0x01C846 07:C836: BC F1 02  LDY ram_0309_buffer + $28 - $40,X
C - - - - - 0x01C849 07:C839: 8C 07 20  STY $2007
C - - - - - 0x01C84C 07:C83C: A4 00     LDY ram_0000_t73_ppu_addr_hi
C - - - - - 0x01C84E 07:C83E: 8C 06 20  STY $2006
C - - - - - 0x01C851 07:C841: 69 08     ADC #$08
C - - - - - 0x01C853 07:C843: 8D 06 20  STA $2006
C - - - - - 0x01C856 07:C846: BC F9 02  LDY ram_0309_buffer + $30 - $40,X
C - - - - - 0x01C859 07:C849: 8C 07 20  STY $2007
C - - - - - 0x01C85C 07:C84C: A4 00     LDY ram_0000_t73_ppu_addr_hi
C - - - - - 0x01C85E 07:C84E: 8C 06 20  STY $2006
C - - - - - 0x01C861 07:C851: 69 08     ADC #$08
C - - - - - 0x01C863 07:C853: 8D 06 20  STA $2006
C - - - - - 0x01C866 07:C856: BC 01 03  LDY ram_0309_buffer + $38 - $40,X
C - - - - - 0x01C869 07:C859: 8C 07 20  STY $2007
C - - - - - 0x01C86C 07:C85C: A4 00     LDY ram_0000_t73_ppu_addr_hi
C - - - - - 0x01C86E 07:C85E: 8C 06 20  STY $2006
C - - - - - 0x01C871 07:C861: 69 08     ADC #$08
C - - - - - 0x01C873 07:C863: 8D 06 20  STA $2006
sub_C866:
C - - - - - 0x01C876 07:C866: BC 09 03  LDY ram_0309_buffer,X
C - - - - - 0x01C879 07:C869: 8C 07 20  STY $2007
C - - - - - 0x01C87C 07:C86C: A4 00     LDY ram_0000_t73_ppu_addr_hi
C - - - - - 0x01C87E 07:C86E: 8C 06 20  STY $2006
C - - - - - 0x01C881 07:C871: 69 08     ADC #$08
C - - - - - 0x01C883 07:C873: 8D 06 20  STA $2006
C - - - - - 0x01C886 07:C876: BC 11 03  LDY ram_0309_buffer + $08,X
C - - - - - 0x01C889 07:C879: 8C 07 20  STY $2007
C - - - - - 0x01C88C 07:C87C: A4 00     LDY ram_0000_t73_ppu_addr_hi
C - - - - - 0x01C88E 07:C87E: 8C 06 20  STY $2006
C - - - - - 0x01C891 07:C881: 69 08     ADC #$08
C - - - - - 0x01C893 07:C883: 8D 06 20  STA $2006
C - - - - - 0x01C896 07:C886: BC 19 03  LDY ram_0309_buffer + $10,X
C - - - - - 0x01C899 07:C889: 8C 07 20  STY $2007
C - - - - - 0x01C89C 07:C88C: A4 00     LDY ram_0000_t73_ppu_addr_hi
C - - - - - 0x01C89E 07:C88E: 8C 06 20  STY $2006
C - - - - - 0x01C8A1 07:C891: 69 08     ADC #$08
C - - - - - 0x01C8A3 07:C893: 8D 06 20  STA $2006
C - - - - - 0x01C8A6 07:C896: BC 21 03  LDY ram_0309_buffer + $18,X
C - - - - - 0x01C8A9 07:C899: 8C 07 20  STY $2007
C - - - - - 0x01C8AC 07:C89C: A4 00     LDY ram_0000_t73_ppu_addr_hi
C - - - - - 0x01C8AE 07:C89E: 8C 06 20  STY $2006
C - - - - - 0x01C8B1 07:C8A1: 69 08     ADC #$08
C - - - - - 0x01C8B3 07:C8A3: 8D 06 20  STA $2006
C - - - - - 0x01C8B6 07:C8A6: BC 29 03  LDY ram_0309_buffer + $20,X
C - - - - - 0x01C8B9 07:C8A9: 8C 07 20  STY $2007
C - - - - - 0x01C8BC 07:C8AC: 60        RTS



sub_C8AD_RTS:
; bzk optimize
C - - - - - 0x01C8BD 07:C8AD: 60        RTS



sub_C8AE:
C - - - - - 0x01C8BE 07:C8AE: 20 DD C9  JSR sub_C9DD_prg_bankswitch_08
C - - - - - 0x01C8C1 07:C8B1: 4C 2F 83  JMP loc_0x01033F



sub_C8B4_prepare_palette:
C - - - - - 0x01C8C4 07:C8B4: 20 DD C9  JSR sub_C9DD_prg_bankswitch_08
C - - - - - 0x01C8C7 07:C8B7: 4C 61 83  JMP loc_0x010371_prepare_palette



sub_C8BA_prepare_screen_brightening:
C - - - - - 0x01C8CA 07:C8BA: 20 DD C9  JSR sub_C9DD_prg_bankswitch_08
C - - - - - 0x01C8CD 07:C8BD: 4C 16 84  JMP loc_0x010426_prepare_screen_brightening



sub_C8C0_prepare_screen_darkening:
C - - - - - 0x01C8D0 07:C8C0: 20 DD C9  JSR sub_C9DD_prg_bankswitch_08
C - - - - - 0x01C8D3 07:C8C3: 4C 23 84  JMP loc_0x010433_prepare_screen_darkening



sub_C8C6_write_chr_banks:
C - - - - - 0x01C8D6 07:C8C6: A6 2A     LDX ram_002A_irq
C - - - - - 0x01C8D8 07:C8C8: A0 80     LDY #$80
C - - - - - 0x01C8DA 07:C8CA: 84 2C     STY ram_for_8000
C - - - - - 0x01C8DC 07:C8CC: 8C 00 80  STY $8000
C - - - - - 0x01C8DF 07:C8CF: A5 1C     LDA ram_chr_bank_spr_1
C - - - - - 0x01C8E1 07:C8D1: 8D 01 80  STA $8001
C - - - - - 0x01C8E4 07:C8D4: C8        INY ; 81
C - - - - - 0x01C8E5 07:C8D5: 84 2C     STY ram_for_8000
C - - - - - 0x01C8E7 07:C8D7: 8C 00 80  STY $8000
C - - - - - 0x01C8EA 07:C8DA: A5 1E     LDA ram_chr_bank_spr_2
C - - - - - 0x01C8EC 07:C8DC: 8D 01 80  STA $8001
C - - - - - 0x01C8EF 07:C8DF: C8        INY ; 82
C - - - - - 0x01C8F0 07:C8E0: 84 2C     STY ram_for_8000
C - - - - - 0x01C8F2 07:C8E2: 8C 00 80  STY $8000
C - - - - - 0x01C8F5 07:C8E5: B5 20     LDA ram_chr_bank_bg_1,X
C - - - - - 0x01C8F7 07:C8E7: 8D 01 80  STA $8001
C - - - - - 0x01C8FA 07:C8EA: C8        INY ; 83
C - - - - - 0x01C8FB 07:C8EB: 84 2C     STY ram_for_8000
C - - - - - 0x01C8FD 07:C8ED: 8C 00 80  STY $8000
C - - - - - 0x01C900 07:C8F0: B5 22     LDA ram_chr_bank_bg_2,X
C - - - - - 0x01C902 07:C8F2: 8D 01 80  STA $8001
C - - - - - 0x01C905 07:C8F5: C8        INY ; 84
C - - - - - 0x01C906 07:C8F6: 84 2C     STY ram_for_8000
C - - - - - 0x01C908 07:C8F8: 8C 00 80  STY $8000
C - - - - - 0x01C90B 07:C8FB: B5 24     LDA ram_chr_bank_bg_3,X
C - - - - - 0x01C90D 07:C8FD: 8D 01 80  STA $8001
C - - - - - 0x01C910 07:C900: C8        INY ; 85
C - - - - - 0x01C911 07:C901: 84 2C     STY ram_for_8000
C - - - - - 0x01C913 07:C903: 8C 00 80  STY $8000
C - - - - - 0x01C916 07:C906: B5 26     LDA ram_chr_bank_bg_4,X
C - - - - - 0x01C918 07:C908: 8D 01 80  STA $8001
C - - - - - 0x01C91B 07:C90B: 60        RTS



sub_C90C_prg_bankswitch:
loc_C90C_prg_bankswitch:
bra_C90C_loop:
C D 2 - - - 0x01C91C 07:C90C: A5 2B     LDA ram_prg_bank
C - - - - - 0x01C91E 07:C90E: 09 80     ORA #$80
C - - - - - 0x01C920 07:C910: 85 2B     STA ram_prg_bank
C - - - - - 0x01C922 07:C912: A9 86     LDA #$86
C - - - - - 0x01C924 07:C914: 85 2C     STA ram_for_8000
C - - - - - 0x01C926 07:C916: 8D 00 80  STA $8000
C - - - - - 0x01C929 07:C919: A5 2B     LDA ram_prg_bank
C - - - - - 0x01C92B 07:C91B: 29 7F     AND #$7F
C - - - - - 0x01C92D 07:C91D: 8D 01 80  STA $8001
C - - - - - 0x01C930 07:C920: A9 87     LDA #$87
C - - - - - 0x01C932 07:C922: 85 2C     STA ram_for_8000
C - - - - - 0x01C934 07:C924: 8D 00 80  STA $8000
C - - - - - 0x01C937 07:C927: A5 2B     LDA ram_prg_bank
C - - - - - 0x01C939 07:C929: 29 7F     AND #$7F
C - - - - - 0x01C93B 07:C92B: 18        CLC
C - - - - - 0x01C93C 07:C92C: 69 01     ADC #$01
C - - - - - 0x01C93E 07:C92E: 8D 01 80  STA $8001
C - - - - - 0x01C941 07:C931: A5 2B     LDA ram_prg_bank
C - - - - - 0x01C943 07:C933: 10 D7     BPL bra_C90C_loop
C - - - - - 0x01C945 07:C935: 29 7F     AND #$7F
C - - - - - 0x01C947 07:C937: 85 2B     STA ram_prg_bank
C - - - - - 0x01C949 07:C939: 60        RTS



sub_C93A_read_joy_regs_and_set_demo_buttons:
C - - - - - 0x01C94A 07:C93A: A5 00     LDA ram_0000_temp
C - - - - - 0x01C94C 07:C93C: 48        PHA
C - - - - - 0x01C94D 07:C93D: A2 01     LDX #$01
bra_C93F_loop:
C - - - - - 0x01C94F 07:C93F: A0 01     LDY #$01
C - - - - - 0x01C951 07:C941: 8C 16 40  STY $4016
C - - - - - 0x01C954 07:C944: 88        DEY ; 00
C - - - - - 0x01C955 07:C945: 8C 16 40  STY $4016
C - - - - - 0x01C958 07:C948: A0 08     LDY #$08
bra_C94A_loop:
C - - - - - 0x01C95A 07:C94A: BD 16 40  LDA $4016,X
C - - - - - 0x01C95D 07:C94D: 1D 17 40  ORA $4017,X
C - - - - - 0x01C960 07:C950: 85 00     STA ram_0000_t74
C - - - - - 0x01C962 07:C952: 4A        LSR
C - - - - - 0x01C963 07:C953: 05 00     ORA ram_0000_t74
C - - - - - 0x01C965 07:C955: 4A        LSR
C - - - - - 0x01C966 07:C956: 76 2D     ROR ram_002D_btn,X
C - - - - - 0x01C968 07:C958: 88        DEY
C - - - - - 0x01C969 07:C959: D0 EF     BNE bra_C94A_loop
C - - - - - 0x01C96B 07:C95B: CA        DEX
C - - - - - 0x01C96C 07:C95C: 10 E1     BPL bra_C93F_loop
; Y = 00
C - - - - - 0x01C96E 07:C95E: A5 E4     LDA ram_demo_flag
C - - - - - 0x01C970 07:C960: F0 32     BEQ bra_C994_not_demo
C - - - - - 0x01C972 07:C962: C9 01     CMP #$01
C - - - - - 0x01C974 07:C964: F0 1E     BEQ bra_C984_demo
; bzk garbage, other values at ram_demo_flag are not used
- - - - - - 0x01C976 07:C966: A5 E7     LDA ram_data_btn_demo + $01
- - - - - - 0x01C978 07:C968: C9 60     CMP #$60
- - - - - - 0x01C97A 07:C96A: B0 15     BCS bra_C981
- - - - - - 0x01C97C 07:C96C: C9 58     CMP #$58
- - - - - - 0x01C97E 07:C96E: 90 11     BCC bra_C981
; 58-5F
- - - - - - 0x01C980 07:C970: A5 2D     LDA ram_002D_btn
- - - - - - 0x01C982 07:C972: 91 E6     STA (ram_data_btn_demo),Y
- - - - - - 0x01C984 07:C974: A5 E6     LDA ram_data_btn_demo
- - - - - - 0x01C986 07:C976: 18        CLC
- - - - - - 0x01C987 07:C977: 69 01     ADC #< $0001
- - - - - - 0x01C989 07:C979: 85 E6     STA ram_data_btn_demo
- - - - - - 0x01C98B 07:C97B: A5 E7     LDA ram_data_btn_demo + $01
- - - - - - 0x01C98D 07:C97D: 69 00     ADC #> $0001
- - - - - - 0x01C98F 07:C97F: 85 E7     STA ram_data_btn_demo + $01
bra_C981:
- - - - - - 0x01C991 07:C981: 4C 94 C9  JMP loc_C994
bra_C984_demo:
C - - - - - 0x01C994 07:C984: A5 E7     LDA ram_data_btn_demo + $01
; bzk optimize, it won't go as high as C0
C - - - - - 0x01C996 07:C986: C9 C0     CMP #$C0
C - - - - - 0x01C998 07:C988: B0 0A     BCS bra_C994    ; if not overflow
C - - - - - 0x01C99A 07:C98A: C9 80     CMP #$80
C - - - - - 0x01C99C 07:C98C: 90 06     BCC bra_C994    ; if not underflow
C - - - - - 0x01C99E 07:C98E: 20 F2 C9  JSR sub_C9F2_prg_bankswitch_04
; Y = 00
C - - - - - 0x01C9A1 07:C991: 20 02 82  JSR sub_0x008212_demo_buttons_handler
bra_C994:
bra_C994_not_demo:
loc_C994:
C D 2 - - - 0x01C9A4 07:C994: A5 2D     LDA ram_002D_btn
C - - - - - 0x01C9A6 07:C996: 48        PHA
C - - - - - 0x01C9A7 07:C997: 05 2F     ORA ram_002F_btn
C - - - - - 0x01C9A9 07:C999: 45 2F     EOR ram_002F_btn
C - - - - - 0x01C9AB 07:C99B: 85 2E     STA ram_002E_btn
C - - - - - 0x01C9AD 07:C99D: 68        PLA
C - - - - - 0x01C9AE 07:C99E: 85 2F     STA ram_002F_btn
C - - - - - 0x01C9B0 07:C9A0: 68        PLA
C - - - - - 0x01C9B1 07:C9A1: 85 00     STA ram_0000_temp
C - - - - - 0x01C9B3 07:C9A3: 60        RTS



sub_0x01C9B4_set_custom_buttons:
C - - - - - 0x01C9B4 07:C9A4: 85 00     STA ram_0000_t75_button
C - - - - - 0x01C9B6 07:C9A6: A5 2D     LDA ram_002D_btn
C - - - - - 0x01C9B8 07:C9A8: 29 08     AND #con_btn_Start
C - - - - - 0x01C9BA 07:C9AA: 05 00     ORA ram_0000_t75_button
C - - - - - 0x01C9BC 07:C9AC: 85 2D     STA ram_002D_btn
C - - - - - 0x01C9BE 07:C9AE: 48        PHA
C - - - - - 0x01C9BF 07:C9AF: 4C 94 C9  JMP loc_C994



sub_C9B2_enable_rendering:
C - - - - - 0x01C9C2 07:C9B2: A5 11     LDA ram_for_2001
C - - - - - 0x01C9C4 07:C9B4: 09 F8     ORA #$F8
C - - - - - 0x01C9C6 07:C9B6: 85 11     STA ram_for_2001
C - - - - - 0x01C9C8 07:C9B8: 60        RTS



sub_C9B9_disable_rendering:
C - - - - - 0x01C9C9 07:C9B9: A5 11     LDA ram_for_2001
C - - - - - 0x01C9CB 07:C9BB: 29 E1     AND #$E1
C - - - - - 0x01C9CD 07:C9BD: 85 11     STA ram_for_2001
C - - - - - 0x01C9CF 07:C9BF: 60        RTS


; bzk garbage
- - - - - - 0x01C9D0 07:C9C0: 60        RTS



sub_C9C1_prg_bankswitch_00:
C - - - - - 0x01C9D1 07:C9C1: A9 00     LDA #con_prg_bank + $00
C - - - - - 0x01C9D3 07:C9C3: 85 2B     STA ram_prg_bank
C - - - - - 0x01C9D5 07:C9C5: 4C 0C C9  JMP loc_C90C_prg_bankswitch



sub_C9C8_prg_bankswitch_02:
C - - - - - 0x01C9D8 07:C9C8: A9 02     LDA #con_prg_bank + $02
C - - - - - 0x01C9DA 07:C9CA: 85 2B     STA ram_prg_bank
C - - - - - 0x01C9DC 07:C9CC: 4C 0C C9  JMP loc_C90C_prg_bankswitch



loc_C9CF_prg_bankswitch_04:
C D 2 - - - 0x01C9DF 07:C9CF: A9 04     LDA #con_prg_bank + $04
C - - - - - 0x01C9E1 07:C9D1: 85 2B     STA ram_prg_bank
C - - - - - 0x01C9E3 07:C9D3: 4C 0C C9  JMP loc_C90C_prg_bankswitch


; bzk garbage
- - - - - - 0x01C9E6 07:C9D6: A9 06     LDA #con_prg_bank + $06
- - - - - - 0x01C9E8 07:C9D8: 85 2B     STA ram_prg_bank
- - - - - - 0x01C9EA 07:C9DA: 4C 0C C9  JMP loc_C90C_prg_bankswitch



sub_C9DD_prg_bankswitch_08:
C - - - - - 0x01C9ED 07:C9DD: A9 08     LDA #con_prg_bank + $08
C - - - - - 0x01C9EF 07:C9DF: 85 2B     STA ram_prg_bank
C - - - - - 0x01C9F1 07:C9E1: 4C 0C C9  JMP loc_C90C_prg_bankswitch



sub_C9E4_prg_bankswitch_0A:
C - - - - - 0x01C9F4 07:C9E4: A9 0A     LDA #con_prg_bank + $0A
C - - - - - 0x01C9F6 07:C9E6: 85 2B     STA ram_prg_bank
C - - - - - 0x01C9F8 07:C9E8: 4C 0C C9  JMP loc_C90C_prg_bankswitch



sub_C9EB_prg_bankswitch_0C:
loc_C9EB_prg_bankswitch_0C:
loc_0x01C9FB_prg_bankswitch_0C:
C D 2 - - - 0x01C9FB 07:C9EB: A9 0C     LDA #con_prg_bank + $0C
C - - - - - 0x01C9FD 07:C9ED: 85 2B     STA ram_prg_bank
C - - - - - 0x01C9FF 07:C9EF: 4C 0C C9  JMP loc_C90C_prg_bankswitch



sub_C9F2_prg_bankswitch_04:   ; bzk optimize
C - - - - - 0x01CA02 07:C9F2: 4C CF C9  JMP loc_C9CF_prg_bankswitch_04



_off009_0x01CA05_00_felix:
- D 2 - I - 0x01CA05 07:C9F5: 13 CA     .word ofs_005_00_CA13_01
- D 2 - I - 0x01CA07 07:C9F7: 13 CA     .word ofs_005_00_CA13_02
- D 2 - I - 0x01CA09 07:C9F9: 13 CA     .word ofs_005_00_CA13_03
- D 2 - I - 0x01CA0B 07:C9FB: 13 CA     .word ofs_005_00_CA13_04
- - - - - - 0x01CA0D 07:C9FD: 13 CA     .word ofs_005_00_CA13_05
- - - - - - 0x01CA0F 07:C9FF: 13 CA     .word ofs_005_00_CA13_06
- - - - - - 0x01CA11 07:CA01: 13 CA     .word ofs_005_00_CA13_07
- D 2 - I - 0x01CA13 07:CA03: 1A CA     .word ofs_005_00_CA1A_08_RTS
- - - - - - 0x01CA15 07:CA05: 13 CA     .word ofs_005_00_CA13_09
- D 2 - I - 0x01CA17 07:CA07: 08 CC     .word ofs_005_00_CC08_0A
- D 2 - I - 0x01CA19 07:CA09: 02 CC     .word ofs_005_00_CC02_0B
- D 2 - I - 0x01CA1B 07:CA0B: 02 CC     .word ofs_005_00_CC02_0C
- D 2 - I - 0x01CA1D 07:CA0D: C4 CB     .word ofs_005_00_CBC4_0D
- D 2 - I - 0x01CA1F 07:CA0F: E1 CB     .word ofs_005_00_CBE1_0E
- D 2 - I - 0x01CA21 07:CA11: 1B CA     .word ofs_005_00_CA1B_0F



ofs_005_00_CA13_01:
ofs_005_00_CA13_02:
ofs_005_00_CA13_03:
ofs_005_00_CA13_04:
ofs_005_00_CA13_05:
ofs_005_00_CA13_06:
ofs_005_00_CA13_07:
ofs_005_00_CA13_09:
C - - J - - 0x01CA23 07:CA13: 20 92 CF  JSR sub_CF92
; bzk optimize, JMP
C - - - - - 0x01CA26 07:CA16: 20 2F CC  JSR sub_CC2F
C - - - - - 0x01CA29 07:CA19: 60        RTS



ofs_005_00_CA1A_08_RTS:
C - - J - - 0x01CA2A 07:CA1A: 60        RTS



ofs_005_00_CA1B_0F:
C - - J - - 0x01CA2B 07:CA1B: A9 78     LDA #$78
C - - - - - 0x01CA2D 07:CA1D: 85 3C     STA ram_003C
C - - - - - 0x01CA2F 07:CA1F: BD F2 06  LDA ram_obj_spd_Y_lo,X
C - - - - - 0x01CA32 07:CA22: C9 80     CMP #$80
C - - - - - 0x01CA34 07:CA24: A9 40     LDA #$40
C - - - - - 0x01CA36 07:CA26: B0 1C     BCS bra_CA44
C - - - - - 0x01CA38 07:CA28: BD F2 06  LDA ram_obj_spd_Y_lo,X
C - - - - - 0x01CA3B 07:CA2B: C9 01     CMP #$01
C - - - - - 0x01CA3D 07:CA2D: A9 50     LDA #$50
C - - - - - 0x01CA3F 07:CA2F: B0 13     BCS bra_CA44
C - - - - - 0x01CA41 07:CA31: BD DC 06  LDA ram_obj_spd_Y_fr,X
C - - - - - 0x01CA44 07:CA34: C9 14     CMP #$14
C - - - - - 0x01CA46 07:CA36: A9 50     LDA #$50
C - - - - - 0x01CA48 07:CA38: B0 0A     BCS bra_CA44
C - - - - - 0x01CA4A 07:CA3A: A9 64     LDA #$64
C - - - - - 0x01CA4C 07:CA3C: 9D 34 07  STA ram_0734_obj,X
C - - - - - 0x01CA4F 07:CA3F: 20 C8 E1  JSR sub_E1C8_initialize_animation
C - - - - - 0x01CA52 07:CA42: A9 01     LDA #$01
bra_CA44:
C - - - - - 0x01CA54 07:CA44: 20 17 89  JSR sub_0x018927_add_spd_Y
C - - - - - 0x01CA57 07:CA47: BD F2 06  LDA ram_obj_spd_Y_lo,X
C - - - - - 0x01CA5A 07:CA4A: C9 06     CMP #> $0654
C - - - - - 0x01CA5C 07:CA4C: D0 0C     BNE bra_CA5A
C - - - - - 0x01CA5E 07:CA4E: BD DC 06  LDA ram_obj_spd_Y_fr,X
C - - - - - 0x01CA61 07:CA51: C9 54     CMP #< $0654
C - - - - - 0x01CA63 07:CA53: D0 05     BNE bra_CA5A
C - - - - - 0x01CA65 07:CA55: A9 1B     LDA #con_sfx_1B
C - - - - - 0x01CA67 07:CA57: 20 1A FF  JSR sub_FF1A_play_sound
bra_CA5A:
C - - - - - 0x01CA6A 07:CA5A: 20 37 89  JSR sub_0x018947_move_obj_Y_axis
C - - - - - 0x01CA6D 07:CA5D: C9 80     CMP #$80
C - - - - - 0x01CA6F 07:CA5F: B0 5D     BCS bra_CABE_RTS
C - - - - - 0x01CA71 07:CA61: C9 01     CMP #$01
C - - - - - 0x01CA73 07:CA63: 90 59     BCC bra_CABE_RTS
C - - - - - 0x01CA75 07:CA65: BD 84 06  LDA ram_obj_pos_Y_lo,X
C - - - - - 0x01CA78 07:CA68: C9 A0     CMP #$A0
C - - - - - 0x01CA7A 07:CA6A: 90 52     BCC bra_CABE_RTS
C - - - - - 0x01CA7C 07:CA6C: A9 FE     LDA #$FE
C - - - - - 0x01CA7E 07:CA6E: 8D CD 03  STA ram_03CD
C - - - - - 0x01CA81 07:CA71: A9 01     LDA #$01
C - - - - - 0x01CA83 07:CA73: 9D 9A 06  STA ram_obj_pos_Y_hi,X
C - - - - - 0x01CA86 07:CA76: A9 A0     LDA #$A0
C - - - - - 0x01CA88 07:CA78: 9D 84 06  STA ram_obj_pos_Y_lo,X
C - - - - - 0x01CA8B 07:CA7B: A9 00     LDA #$00
C - - - - - 0x01CA8D 07:CA7D: 9D DC 06  STA ram_obj_spd_Y_fr,X
C - - - - - 0x01CA90 07:CA80: 9D F2 06  STA ram_obj_spd_Y_lo,X
C - - - - - 0x01CA93 07:CA83: 9D 16 06  STA ram_0616_obj,X
C - - - - - 0x01CA96 07:CA86: A9 1C     LDA #con_chr_bank + $1C
C - - - - - 0x01CA98 07:CA88: 85 1C     STA ram_chr_bank_spr_1
C - - - - - 0x01CA9A 07:CA8A: AD FA 03  LDA ram_03FA
C - - - - - 0x01CA9D 07:CA8D: F0 2F     BEQ bra_CABE_RTS
C - - - - - 0x01CA9F 07:CA8F: 8A        TXA
C - - - - - 0x01CAA0 07:CA90: 48        PHA
C - - - - - 0x01CAA1 07:CA91: A2 05     LDX #$05
C - - - - - 0x01CAA3 07:CA93: A9 03     LDA #$03
C - - - - - 0x01CAA5 07:CA95: 9D 16 06  STA ram_0616_obj,X
C - - - - - 0x01CAA8 07:CA98: A5 BA     LDA ram_cam_pos_Y_lo
C - - - - - 0x01CAAA 07:CA9A: 18        CLC
C - - - - - 0x01CAAB 07:CA9B: 69 56     ADC #< $0056
C - - - - - 0x01CAAD 07:CA9D: 9D 84 06  STA ram_obj_pos_Y_lo,X
C - - - - - 0x01CAB0 07:CAA0: A5 B8     LDA ram_cam_pos_Y_hi
C - - - - - 0x01CAB2 07:CAA2: 69 00     ADC #> $0056
C - - - - - 0x01CAB4 07:CAA4: 9D 9A 06  STA ram_obj_pos_Y_hi,X
C - - - - - 0x01CAB7 07:CAA7: A5 B7     LDA ram_cam_pos_X_hi
C - - - - - 0x01CAB9 07:CAA9: 18        CLC
C - - - - - 0x01CABA 07:CAAA: 69 02     ADC #$02
C - - - - - 0x01CABC 07:CAAC: 9D 58 06  STA ram_obj_pos_X_hi,X
C - - - - - 0x01CABF 07:CAAF: A9 50     LDA #$50
C - - - - - 0x01CAC1 07:CAB1: 9D 1E 07  STA ram_071E_obj_queue_id,X
C - - - - - 0x01CAC4 07:CAB4: A9 02     LDA #$02
C - - - - - 0x01CAC6 07:CAB6: 9D 34 07  STA ram_0734_obj,X
C - - - - - 0x01CAC9 07:CAB9: 20 C8 E1  JSR sub_E1C8_initialize_animation
C - - - - - 0x01CACC 07:CABC: 68        PLA
C - - - - - 0x01CACD 07:CABD: AA        TAX
bra_CABE_RTS:
C - - - - - 0x01CACE 07:CABE: 60        RTS



loc_CABF:
C D 2 - - - 0x01CACF 07:CABF: AD 0D 04  LDA ram_040D
C - - - - - 0x01CAD2 07:CAC2: C9 08     CMP #$08
C - - - - - 0x01CAD4 07:CAC4: D0 03     BNE bra_CAC9
C - - - - - 0x01CAD6 07:CAC6: 4C 9F CB  JMP loc_CB9F
bra_CAC9:
C - - - - - 0x01CAD9 07:CAC9: 29 03     AND #$03
C - - - - - 0x01CADB 07:CACB: D0 09     BNE bra_CAD6
C - - - - - 0x01CADD 07:CACD: A5 05     LDA ram_0005_temp
C - - - - - 0x01CADF 07:CACF: C5 BB     CMP ram_00BB
C - - - - - 0x01CAE1 07:CAD1: D0 03     BNE bra_CAD6
C - - - - - 0x01CAE3 07:CAD3: 4C 90 CB  JMP loc_CB90
bra_CAD6:
C - - - - - 0x01CAE6 07:CAD6: AD 0E 04  LDA ram_040E
C - - - - - 0x01CAE9 07:CAD9: D0 7B     BNE bra_CB56
C - - - - - 0x01CAEB 07:CADB: A5 33     LDA ram_round
; * 04
C - - - - - 0x01CAED 07:CADD: 0A        ASL
C - - - - - 0x01CAEE 07:CADE: 0A        ASL
C - - - - - 0x01CAEF 07:CADF: A8        TAY
C - - - - - 0x01CAF0 07:CAE0: A5 05     LDA ram_0005_temp
C - - - - - 0x01CAF2 07:CAE2: 18        CLC
C - - - - - 0x01CAF3 07:CAE3: 6D CE 03  ADC ram_03CE
C - - - - - 0x01CAF6 07:CAE6: D9 68 DD  CMP tbl_DD67 + $01,Y
C - - - - - 0x01CAF9 07:CAE9: D0 03     BNE bra_CAEE
- - - - - - 0x01CAFB 07:CAEB: 4C 82 CB  JMP loc_CB82
bra_CAEE:
C - - - - - 0x01CAFE 07:CAEE: A5 05     LDA ram_0005_temp
C - - - - - 0x01CB00 07:CAF0: 18        CLC
C - - - - - 0x01CB01 07:CAF1: 6D CE 03  ADC ram_03CE
C - - - - - 0x01CB04 07:CAF4: 8D 0E 04  STA ram_040E
loc_CAF7:
C D 2 - - - 0x01CB07 07:CAF7: A5 04     LDA ram_0004_temp
C - - - - - 0x01CB09 07:CAF9: 09 0F     ORA #$0F
C - - - - - 0x01CB0B 07:CAFB: 8D 0F 04  STA ram_040F
C - - - - - 0x01CB0E 07:CAFE: A5 07     LDA ram_0007_temp
C - - - - - 0x01CB10 07:CB00: 29 01     AND #$01
C - - - - - 0x01CB12 07:CB02: C9 01     CMP #$01
C - - - - - 0x01CB14 07:CB04: A5 06     LDA ram_0006_temp
C - - - - - 0x01CB16 07:CB06: 6A        ROR
C - - - - - 0x01CB17 07:CB07: 8D 10 04  STA ram_0410
C - - - - - 0x01CB1A 07:CB0A: A9 01     LDA #$01
loc_CB0C:
C D 2 - - - 0x01CB1C 07:CB0C: 9D 6E 06  STA ram_obj_pos_Y_fr,X
C - - - - - 0x01CB1F 07:CB0F: A9 1C     LDA #con_sfx_1C
C - - - - - 0x01CB21 07:CB11: 20 1A FF  JSR sub_FF1A_play_sound
C - - - - - 0x01CB24 07:CB14: BD 16 06  LDA ram_0616_obj,X
C - - - - - 0x01CB27 07:CB17: 9D 2C 06  STA ram_obj_pos_X_fr,X
C - - - - - 0x01CB2A 07:CB1A: A9 0D     LDA #$0D
C - - - - - 0x01CB2C 07:CB1C: 9D 16 06  STA ram_0616_obj,X
C - - - - - 0x01CB2F 07:CB1F: A9 00     LDA #$00
C - - - - - 0x01CB31 07:CB21: 9D B0 06  STA ram_obj_spd_X_fr,X
C - - - - - 0x01CB34 07:CB24: 9D C6 06  STA ram_obj_spd_X_lo,X
C - - - - - 0x01CB37 07:CB27: 9D DC 06  STA ram_obj_spd_Y_fr,X
C - - - - - 0x01CB3A 07:CB2A: 9D F2 06  STA ram_obj_spd_Y_lo,X
C - - - - - 0x01CB3D 07:CB2D: A9 0C     LDA #con_obj_id_0C
C - - - - - 0x01CB3F 07:CB2F: 8D 01 06  STA ram_0600_obj_id + $01
C - - - - - 0x01CB42 07:CB32: A9 00     LDA #$00
C - - - - - 0x01CB44 07:CB34: 8D 17 06  STA ram_0616_obj + $01
C - - - - - 0x01CB47 07:CB37: A5 06     LDA ram_0006_temp
C - - - - - 0x01CB49 07:CB39: 29 F0     AND #$F0
C - - - - - 0x01CB4B 07:CB3B: 18        CLC
C - - - - - 0x01CB4C 07:CB3C: 69 1C     ADC #< $001C
C - - - - - 0x01CB4E 07:CB3E: 8D 85 06  STA ram_obj_pos_Y_lo + $01
C - - - - - 0x01CB51 07:CB41: A5 07     LDA ram_0007_temp
C - - - - - 0x01CB53 07:CB43: 69 00     ADC #> $001C
C - - - - - 0x01CB55 07:CB45: 8D 9B 06  STA ram_obj_pos_Y_hi + $01
C - - - - - 0x01CB58 07:CB48: A9 10     LDA #$10
C - - - - - 0x01CB5A 07:CB4A: 8D 35 07  STA ram_0734_obj + $01
C - - - - - 0x01CB5D 07:CB4D: A9 00     LDA #$00
C - - - - - 0x01CB5F 07:CB4F: 8D 61 07  STA ram_obj_anim_cnt + $01
C - - - - - 0x01CB62 07:CB52: 8D 77 07  STA ram_0776_obj_flags + $01    ; con_0776_spr_A + $00
C - - - - - 0x01CB65 07:CB55: 60        RTS
bra_CB56:
C - - - - - 0x01CB66 07:CB56: AD 12 04  LDA ram_0412
C - - - - - 0x01CB69 07:CB59: 30 2C     BMI bra_CB87
C - - - - - 0x01CB6B 07:CB5B: A5 04     LDA ram_0004_temp
C - - - - - 0x01CB6D 07:CB5D: C9 80     CMP #$80
C - - - - - 0x01CB6F 07:CB5F: 90 21     BCC bra_CB82
C - - - - - 0x01CB71 07:CB61: A5 33     LDA ram_round
; * 04
C - - - - - 0x01CB73 07:CB63: 0A        ASL
C - - - - - 0x01CB74 07:CB64: 0A        ASL
C - - - - - 0x01CB75 07:CB65: A8        TAY
C - - - - - 0x01CB76 07:CB66: B9 68 DD  LDA tbl_DD67 + $01,Y
C - - - - - 0x01CB79 07:CB69: 29 7F     AND #$7F
C - - - - - 0x01CB7B 07:CB6B: 8D 0E 04  STA ram_040E
C - - - - - 0x01CB7E 07:CB6E: B9 67 DD  LDA tbl_DD67,Y
C - - - - - 0x01CB81 07:CB71: 8D 0F 04  STA ram_040F
; bzk optimize, 4th bytes are either 00 or 01, no need for AND 01
C - - - - - 0x01CB84 07:CB74: B9 6A DD  LDA tbl_DD67 + $03,Y
C - - - - - 0x01CB87 07:CB77: 29 01     AND #$01
C - - - - - 0x01CB89 07:CB79: C9 01     CMP #$01
C - - - - - 0x01CB8B 07:CB7B: B9 69 DD  LDA tbl_DD67 + $02,Y
C - - - - - 0x01CB8E 07:CB7E: 6A        ROR
C - - - - - 0x01CB8F 07:CB7F: 8D 10 04  STA ram_0410
bra_CB82:
loc_CB82:
C - - - - - 0x01CB92 07:CB82: A9 02     LDA #$02
C - - - - - 0x01CB94 07:CB84: 4C 0C CB  JMP loc_CB0C
bra_CB87:
C - - - - - 0x01CB97 07:CB87: AD 12 04  LDA ram_0412
C - - - - - 0x01CB9A 07:CB8A: 18        CLC
C - - - - - 0x01CB9B 07:CB8B: E5 BB     SBC ram_00BB
C - - - - - 0x01CB9D 07:CB8D: 8D 12 04  STA ram_0412
loc_CB90:
C D 2 - - - 0x01CBA0 07:CB90: AD 11 04  LDA ram_0411
C - - - - - 0x01CBA3 07:CB93: D0 ED     BNE bra_CB82
C - - - - - 0x01CBA5 07:CB95: A9 00     LDA #$00
C - - - - - 0x01CBA7 07:CB97: 8D 0D 04  STA ram_040D
C - - - - - 0x01CBAA 07:CB9A: A9 03     LDA #$03
C - - - - - 0x01CBAC 07:CB9C: 4C 0C CB  JMP loc_CB0C



loc_CB9F:
C D 2 - - - 0x01CBAF 07:CB9F: A5 33     LDA ram_round
C - - - - - 0x01CBB1 07:CBA1: C9 16     CMP #$16
C - - - - - 0x01CBB3 07:CBA3: D0 DD     BNE bra_CB82
C - - - - - 0x01CBB5 07:CBA5: A5 05     LDA ram_0005_temp
C - - - - - 0x01CBB7 07:CBA7: 18        CLC
C - - - - - 0x01CBB8 07:CBA8: 69 01     ADC #$01
C - - - - - 0x01CBBA 07:CBAA: A8        TAY
C - - - - - 0x01CBBB 07:CBAB: D9 2F 04  CMP ram_042F,Y
C - - - - - 0x01CBBE 07:CBAE: F0 D2     BEQ bra_CB82
C - - - - - 0x01CBC0 07:CBB0: 8D 0E 04  STA ram_040E
C - - - - - 0x01CBC3 07:CBB3: 99 2F 04  STA ram_042F,Y
C - - - - - 0x01CBC6 07:CBB6: 8D 2F 04  STA ram_042F
C - - - - - 0x01CBC9 07:CBB9: A9 00     LDA #$00
C - - - - - 0x01CBCB 07:CBBB: 8D 0D 04  STA ram_040D
C - - - - - 0x01CBCE 07:CBBE: 8D 11 04  STA ram_0411
C - - - - - 0x01CBD1 07:CBC1: 4C F7 CA  JMP loc_CAF7



ofs_005_00_CBC4_0D:
C - - J - - 0x01CBD4 07:CBC4: A9 0E     LDA #$0E
C - - - - - 0x01CBD6 07:CBC6: 9D 16 06  STA ram_0616_obj,X
C - - - - - 0x01CBD9 07:CBC9: A9 08     LDA #$08
C - - - - - 0x01CBDB 07:CBCB: 8D 17 06  STA ram_0616_obj + $01
C - - - - - 0x01CBDE 07:CBCE: A5 B9     LDA ram_cam_pos_X_lo
C - - - - - 0x01CBE0 07:CBD0: 8D 43 06  STA ram_obj_pos_X_lo + $01
C - - - - - 0x01CBE3 07:CBD3: A5 B7     LDA ram_cam_pos_X_hi
C - - - - - 0x01CBE5 07:CBD5: 8D 59 06  STA ram_obj_pos_X_hi + $01
C - - - - - 0x01CBE8 07:CBD8: AD 77 07  LDA ram_0776_obj_flags + $01
C - - - - - 0x01CBEB 07:CBDB: 29 BF     AND #con_0776_flip_H ^ $FF
C - - - - - 0x01CBED 07:CBDD: 8D 77 07  STA ram_0776_obj_flags + $01
C - - - - - 0x01CBF0 07:CBE0: 60        RTS



ofs_005_00_CBE1_0E:
C - - J - - 0x01CBF1 07:CBE1: BD 84 06  LDA ram_obj_pos_Y_lo,X
C - - - - - 0x01CBF4 07:CBE4: 18        CLC
C - - - - - 0x01CBF5 07:CBE5: 69 01     ADC #< $0001
C - - - - - 0x01CBF7 07:CBE7: 9D 84 06  STA ram_obj_pos_Y_lo,X
C - - - - - 0x01CBFA 07:CBEA: BD 9A 06  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x01CBFD 07:CBED: 69 00     ADC #> $0001
C - - - - - 0x01CBFF 07:CBEF: 9D 9A 06  STA ram_obj_pos_Y_hi,X
C - - - - - 0x01CC02 07:CBF2: AD 85 06  LDA ram_obj_pos_Y_lo + $01
C - - - - - 0x01CC05 07:CBF5: 38        SEC
C - - - - - 0x01CC06 07:CBF6: FD 84 06  SBC ram_obj_pos_Y_lo,X
C - - - - - 0x01CC09 07:CBF9: 10 06     BPL bra_CC01_RTS
C - - - - - 0x01CC0B 07:CBFB: BD 6E 06  LDA ram_obj_pos_Y_fr,X
C - - - - - 0x01CC0E 07:CBFE: 8D 0C 04  STA ram_040C
bra_CC01_RTS:
C - - - - - 0x01CC11 07:CC01: 60        RTS



ofs_005_00_CC02_0B:
ofs_005_00_CC02_0C:
C - - J - - 0x01CC12 07:CC02: DE 16 06  DEC ram_0616_obj,X
C - - - - - 0x01CC15 07:CC05: 4C 37 89  JMP loc_0x018947_move_obj_Y_axis



ofs_005_00_CC08_0A:
C - - J - - 0x01CC18 07:CC08: BD 2C 06  LDA ram_obj_pos_X_fr,X
C - - - - - 0x01CC1B 07:CC0B: 9D 16 06  STA ram_0616_obj,X
C - - - - - 0x01CC1E 07:CC0E: BD 42 06  LDA ram_obj_pos_X_lo,X
C - - - - - 0x01CC21 07:CC11: 38        SEC
C - - - - - 0x01CC22 07:CC12: E9 08     SBC #< $0008
C - - - - - 0x01CC24 07:CC14: 8D 43 06  STA ram_obj_pos_X_lo + $01
C - - - - - 0x01CC27 07:CC17: BD 58 06  LDA ram_obj_pos_X_hi,X
C - - - - - 0x01CC2A 07:CC1A: E9 00     SBC #> $0008
C - - - - - 0x01CC2C 07:CC1C: 8D 59 06  STA ram_obj_pos_X_hi + $01
C - - - - - 0x01CC2F 07:CC1F: AD 43 06  LDA ram_obj_pos_X_lo + $01
C - - - - - 0x01CC32 07:CC22: 29 F0     AND #$F0
C - - - - - 0x01CC34 07:CC24: 8D 43 06  STA ram_obj_pos_X_lo + $01
C - - - - - 0x01CC37 07:CC27: A9 09     LDA #$09
C - - - - - 0x01CC39 07:CC29: 8D 17 06  STA ram_0616_obj + $01
C - - - - - 0x01CC3C 07:CC2C: 4C 37 89  JMP loc_0x018947_move_obj_Y_axis



sub_CC2F:
C - - - - - 0x01CC3F 07:CC2F: A5 2D     LDA ram_002D_btn
C - - - - - 0x01CC41 07:CC31: 29 20     AND #con_btn_Down
C - - - - - 0x01CC43 07:CC33: F0 34     BEQ bra_CC69_unable_to_duck
C - - - - - 0x01CC45 07:CC35: BD 84 06  LDA ram_obj_pos_Y_lo,X
C - - - - - 0x01CC48 07:CC38: 18        CLC
C - - - - - 0x01CC49 07:CC39: 69 10     ADC #< $0010
C - - - - - 0x01CC4B 07:CC3B: 85 06     STA ram_0006_temp
C - - - - - 0x01CC4D 07:CC3D: BD 9A 06  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x01CC50 07:CC40: 69 00     ADC #> $0010
C - - - - - 0x01CC52 07:CC42: 85 07     STA ram_0007_temp
C - - - - - 0x01CC54 07:CC44: BD 42 06  LDA ram_obj_pos_X_lo,X
C - - - - - 0x01CC57 07:CC47: 38        SEC
C - - - - - 0x01CC58 07:CC48: E9 08     SBC #< $0008
C - - - - - 0x01CC5A 07:CC4A: 85 04     STA ram_0004_temp
C - - - - - 0x01CC5C 07:CC4C: BD 58 06  LDA ram_obj_pos_X_hi,X
C - - - - - 0x01CC5F 07:CC4F: E9 00     SBC #> $0008
C - - - - - 0x01CC61 07:CC51: 85 05     STA ram_0005_temp
C - - - - - 0x01CC63 07:CC53: 20 51 F2  JSR sub_F251
C - - - - - 0x01CC66 07:CC56: C9 0E     CMP #$0E
C - - - - - 0x01CC68 07:CC58: D0 03     BNE bra_CC5D
C - - - - - 0x01CC6A 07:CC5A: 4C BF CA  JMP loc_CABF
bra_CC5D:
C - - - - - 0x01CC6D 07:CC5D: AD BF 03  LDA ram_03BF_weapon_upgrade
C - - - - - 0x01CC70 07:CC60: C9 03     CMP #$03
C - - - - - 0x01CC72 07:CC62: B0 05     BCS bra_CC69_unable_to_duck
; if weapon allows to duck
C - - - - - 0x01CC74 07:CC64: A9 07     LDA #$07    ; ducking
C - - - - - 0x01CC76 07:CC66: 8D C2 03  STA ram_03C2_felix_state
bra_CC69_unable_to_duck:
C - - - - - 0x01CC79 07:CC69: AD C6 03  LDA ram_03C6_previous_weapon
C - - - - - 0x01CC7C 07:CC6C: F0 08     BEQ bra_CC76
C - - - - - 0x01CC7E 07:CC6E: AD C0 03  LDA ram_03C0_weapon_timer_hi
C - - - - - 0x01CC81 07:CC71: D0 03     BNE bra_CC76
C - - - - - 0x01CC83 07:CC73: 4C 29 CD  JMP loc_CD29
bra_CC76:
C - - - - - 0x01CC86 07:CC76: AD FA 03  LDA ram_03FA
C - - - - - 0x01CC89 07:CC79: F0 03     BEQ bra_CC7E
C - - - - - 0x01CC8B 07:CC7B: 4C F3 CC  JMP loc_CCF3
bra_CC7E:
C - - - - - 0x01CC8E 07:CC7E: AD CD 03  LDA ram_03CD
C - - - - - 0x01CC91 07:CC81: C9 FF     CMP #$FF
C - - - - - 0x01CC93 07:CC83: D0 03     BNE bra_CC88
C - - - - - 0x01CC95 07:CC85: 4C E2 CC  JMP loc_CCE2
bra_CC88:
C - - - - - 0x01CC98 07:CC88: AD B9 03  LDA ram_03B9
C - - - - - 0x01CC9B 07:CC8B: 10 03     BPL bra_CC90
C - - - - - 0x01CC9D 07:CC8D: 4C BC CD  JMP loc_CDBC
bra_CC90:
C - - - - - 0x01CCA0 07:CC90: F0 03     BEQ bra_CC95
C - - - - - 0x01CCA2 07:CC92: 4C 50 CD  JMP loc_CD50
bra_CC95:
C - - - - - 0x01CCA5 07:CC95: A5 2E     LDA ram_002E_btn
C - - - - - 0x01CCA7 07:CC97: 29 02     AND #con_btn_B
C - - - - - 0x01CCA9 07:CC99: D0 03     BNE bra_CC9E
C - - - - - 0x01CCAB 07:CC9B: 4C B3 CC  JMP loc_CCB3
bra_CC9E:
C - - - - - 0x01CCAE 07:CC9E: BD 34 07  LDA ram_0734_obj,X
C - - - - - 0x01CCB1 07:CCA1: C9 05     CMP #$05
C - - - - - 0x01CCB3 07:CCA3: D0 03     BNE bra_CCA8
C - - - - - 0x01CCB5 07:CCA5: 4C B3 CC  JMP loc_CCB3
bra_CCA8:
C - - - - - 0x01CCB8 07:CCA8: AD C6 03  LDA ram_03C6_previous_weapon
C - - - - - 0x01CCBB 07:CCAB: F0 03     BEQ bra_CCB0
C - - - - - 0x01CCBD 07:CCAD: 4C 33 CE  JMP loc_CE33
bra_CCB0:
C - - - - - 0x01CCC0 07:CCB0: 4C 33 CE  JMP loc_CE33



loc_CCB3:
C D 2 - - - 0x01CCC3 07:CCB3: AD C4 03  LDA ram_03C4
C - - - - - 0x01CCC6 07:CCB6: F0 0C     BEQ bra_CCC4
C - - - - - 0x01CCC8 07:CCB8: BD 76 07  LDA ram_0776_obj_flags,X
C - - - - - 0x01CCCB 07:CCBB: 29 08     AND #con_0776_08
C - - - - - 0x01CCCD 07:CCBD: F0 22     BEQ bra_CCE1_RTS
C - - - - - 0x01CCCF 07:CCBF: A9 00     LDA #$00
C - - - - - 0x01CCD1 07:CCC1: 8D C4 03  STA ram_03C4
bra_CCC4:
C - - - - - 0x01CCD4 07:CCC4: AC BF 03  LDY ram_03BF_weapon_upgrade
C - - - - - 0x01CCD7 07:CCC7: B9 2F CF  LDA tbl_CF2F,Y
C - - - - - 0x01CCDA 07:CCCA: 18        CLC
C - - - - - 0x01CCDB 07:CCCB: 6D C2 03  ADC ram_03C2_felix_state
C - - - - - 0x01CCDE 07:CCCE: DD 34 07  CMP ram_0734_obj,X
C - - - - - 0x01CCE1 07:CCD1: F0 0E     BEQ bra_CCE1_RTS
loc_CCD3:
C D 2 - - - 0x01CCE3 07:CCD3: 9D 34 07  STA ram_0734_obj,X
C - - - - - 0x01CCE6 07:CCD6: 98        TYA
; * 04
C - - - - - 0x01CCE7 07:CCD7: 0A        ASL
C - - - - - 0x01CCE8 07:CCD8: 0A        ASL
C - - - - - 0x01CCE9 07:CCD9: 18        CLC
C - - - - - 0x01CCEA 07:CCDA: 69 10     ADC #$10
C - - - - - 0x01CCEC 07:CCDC: 85 1C     STA ram_chr_bank_spr_1
; bzk optimize, JMP
C - - - - - 0x01CCEE 07:CCDE: 20 C8 E1  JSR sub_E1C8_initialize_animation
bra_CCE1_RTS:
C - - - - - 0x01CCF1 07:CCE1: 60        RTS



loc_CCE2:
C D 2 - - - 0x01CCF2 07:CCE2: A9 00     LDA #$00
C - - - - - 0x01CCF4 07:CCE4: 8D C7 03  STA ram_03C7
C - - - - - 0x01CCF7 07:CCE7: AD C5 03  LDA ram_round_type
C - - - - - 0x01CCFA 07:CCEA: C9 04     CMP #$04
C - - - - - 0x01CCFC 07:CCEC: F0 05     BEQ bra_CCF3_space
; if not space
C - - - - - 0x01CCFE 07:CCEE: AD C6 03  LDA ram_03C6_previous_weapon
C - - - - - 0x01CD01 07:CCF1: D0 31     BNE bra_CD24
bra_CCF3_space:
loc_CCF3:
C D 2 - - - 0x01CD03 07:CCF3: A9 FF     LDA #$FF
C - - - - - 0x01CD05 07:CCF5: 8D CD 03  STA ram_03CD
C - - - - - 0x01CD08 07:CCF8: A9 19     LDA #con_sfx_19
C - - - - - 0x01CD0A 07:CCFA: 20 1A FF  JSR sub_FF1A_play_sound
C - - - - - 0x01CD0D 07:CCFD: A9 0F     LDA #$0F
C - - - - - 0x01CD0F 07:CCFF: 9D 16 06  STA ram_0616_obj,X
C - - - - - 0x01CD12 07:CD02: A9 00     LDA #< $F700
C - - - - - 0x01CD14 07:CD04: 9D DC 06  STA ram_obj_spd_Y_fr,X
C - - - - - 0x01CD17 07:CD07: A9 F7     LDA #> $F700
C - - - - - 0x01CD19 07:CD09: 9D F2 06  STA ram_obj_spd_Y_lo,X
C - - - - - 0x01CD1C 07:CD0C: A9 63     LDA #$63
C - - - - - 0x01CD1E 07:CD0E: 9D 34 07  STA ram_0734_obj,X
C - - - - - 0x01CD21 07:CD11: A9 20     LDA #con_chr_bank + $20
C - - - - - 0x01CD23 07:CD13: 85 1C     STA ram_chr_bank_spr_1
C - - - - - 0x01CD25 07:CD15: 20 C8 E1  JSR sub_E1C8_initialize_animation
C - - - - - 0x01CD28 07:CD18: A9 00     LDA #$00
C - - - - - 0x01CD2A 07:CD1A: 8D 17 06  STA ram_0616_obj + $01
C - - - - - 0x01CD2D 07:CD1D: 8D 18 06  STA ram_0616_obj + $02
C - - - - - 0x01CD30 07:CD20: 8D 19 06  STA ram_0616_obj + $03
C - - - - - 0x01CD33 07:CD23: 60        RTS
bra_CD24:
C - - - - - 0x01CD34 07:CD24: A9 B4     LDA #$B4
C - - - - - 0x01CD36 07:CD26: 8D CD 03  STA ram_03CD
loc_CD29:
C D 2 - - - 0x01CD39 07:CD29: A9 FC     LDA #$FC
C - - - - - 0x01CD3B 07:CD2B: 8D 1F 07  STA ram_071E_obj_queue_id + $01
C - - - - - 0x01CD3E 07:CD2E: 8D 20 07  STA ram_071E_obj_queue_id + $02
C - - - - - 0x01CD41 07:CD31: 8D 21 07  STA ram_071E_obj_queue_id + $03
C - - - - - 0x01CD44 07:CD34: A9 1D     LDA #con_sfx_1D
C - - - - - 0x01CD46 07:CD36: 20 1A FF  JSR sub_FF1A_play_sound
C - - - - - 0x01CD49 07:CD39: CE C6 03  DEC ram_03C6_previous_weapon
C - - - - - 0x01CD4C 07:CD3C: AD C5 03  LDA ram_round_type
; * 08
C - - - - - 0x01CD4F 07:CD3F: 0A        ASL
C - - - - - 0x01CD50 07:CD40: 0A        ASL
C - - - - - 0x01CD51 07:CD41: 0A        ASL
C - - - - - 0x01CD52 07:CD42: 18        CLC
C - - - - - 0x01CD53 07:CD43: 6D C6 03  ADC ram_03C6_previous_weapon
C - - - - - 0x01CD56 07:CD46: A8        TAY
C - - - - - 0x01CD57 07:CD47: B9 4B CF  LDA tbl_CF4B,Y
C - - - - - 0x01CD5A 07:CD4A: 8D BF 03  STA ram_03BF_weapon_upgrade
C - - - - - 0x01CD5D 07:CD4D: 4C 85 CD  JMP loc_CD85



loc_CD50:
C D 2 - - - 0x01CD60 07:CD50: A9 00     LDA #$00
C - - - - - 0x01CD62 07:CD52: 8D CD 03  STA ram_03CD
C - - - - - 0x01CD65 07:CD55: AD C5 03  LDA ram_round_type
; * 08
C - - - - - 0x01CD68 07:CD58: 0A        ASL
C - - - - - 0x01CD69 07:CD59: 0A        ASL
C - - - - - 0x01CD6A 07:CD5A: 0A        ASL
C - - - - - 0x01CD6B 07:CD5B: 38        SEC
C - - - - - 0x01CD6C 07:CD5C: 6D C6 03  ADC ram_03C6_previous_weapon
C - - - - - 0x01CD6F 07:CD5F: A8        TAY
C - - - - - 0x01CD70 07:CD60: B9 4C CF  LDA tbl_CF4B + $01,Y
C - - - - - 0x01CD73 07:CD63: C9 FF     CMP #$FF
C - - - - - 0x01CD75 07:CD65: D0 0C     BNE bra_CD73
C - - - - - 0x01CD77 07:CD67: AD C5 03  LDA ram_round_type
C - - - - - 0x01CD7A 07:CD6A: C9 04     CMP #$04
C - - - - - 0x01CD7C 07:CD6C: F0 05     BEQ bra_CD73    ; if space
; if not space
C - - - - - 0x01CD7E 07:CD6E: A9 55     LDA #$55
C - - - - - 0x01CD80 07:CD70: 8D C7 03  STA ram_03C7
bra_CD73:
C - - - - - 0x01CD83 07:CD73: B9 4B CF  LDA tbl_CF4B,Y
C - - - - - 0x01CD86 07:CD76: C9 FF     CMP #$FF
C - - - - - 0x01CD88 07:CD78: F0 42     BEQ bra_CDBC_max_weapon_upgrade
; if still able to upgrade
C - - - - - 0x01CD8A 07:CD7A: 8D BF 03  STA ram_03BF_weapon_upgrade
C - - - - - 0x01CD8D 07:CD7D: EE C6 03  INC ram_03C6_previous_weapon
C - - - - - 0x01CD90 07:CD80: A9 0C     LDA #con_sfx_0C
C - - - - - 0x01CD92 07:CD82: 20 1A FF  JSR sub_FF1A_play_sound
loc_CD85:
C D 2 - - - 0x01CD95 07:CD85: A9 00     LDA #$00
C - - - - - 0x01CD97 07:CD87: 8D B9 03  STA ram_03B9
C - - - - - 0x01CD9A 07:CD8A: A9 0A     LDA #> $0A96
C - - - - - 0x01CD9C 07:CD8C: 8D C0 03  STA ram_03C0_weapon_timer_hi
C - - - - - 0x01CD9F 07:CD8F: A9 96     LDA #< $0A96
C - - - - - 0x01CDA1 07:CD91: 8D C1 03  STA ram_03C1_weapon_timer_lo
C - - - - - 0x01CDA4 07:CD94: A9 00     LDA #$00
C - - - - - 0x01CDA6 07:CD96: 8D C4 03  STA ram_03C4
C - - - - - 0x01CDA9 07:CD99: AD BF 03  LDA ram_03BF_weapon_upgrade
C - - - - - 0x01CDAC 07:CD9C: A8        TAY
C - - - - - 0x01CDAD 07:CD9D: B9 3D CF  LDA tbl_CF3D,Y
C - - - - - 0x01CDB0 07:CDA0: 9D 16 06  STA ram_0616_obj,X
C - - - - - 0x01CDB3 07:CDA3: A9 01     LDA #$01
C - - - - - 0x01CDB5 07:CDA5: 8D C4 03  STA ram_03C4
C - - - - - 0x01CDB8 07:CDA8: A9 05     LDA #$05
C - - - - - 0x01CDBA 07:CDAA: 9D 34 07  STA ram_0734_obj,X
C - - - - - 0x01CDBD 07:CDAD: 20 C8 E1  JSR sub_E1C8_initialize_animation
C - - - - - 0x01CDC0 07:CDB0: A9 FC     LDA #$FC
C - - - - - 0x01CDC2 07:CDB2: 8D 1F 07  STA ram_071E_obj_queue_id + $01
C - - - - - 0x01CDC5 07:CDB5: 8D 20 07  STA ram_071E_obj_queue_id + $02
C - - - - - 0x01CDC8 07:CDB8: 8D 21 07  STA ram_071E_obj_queue_id + $03
C - - - - - 0x01CDCB 07:CDBB: 60        RTS
bra_CDBC_max_weapon_upgrade:
loc_CDBC:
C D 2 - - - 0x01CDCC 07:CDBC: AD B9 03  LDA ram_03B9
C - - - - - 0x01CDCF 07:CDBF: 29 7F     AND #$7F
C - - - - - 0x01CDD1 07:CDC1: 8D B9 03  STA ram_03B9
C - - - - - 0x01CDD4 07:CDC4: A9 16     LDA #con_sfx_16
C - - - - - 0x01CDD6 07:CDC6: 20 1A FF  JSR sub_FF1A_play_sound
C - - - - - 0x01CDD9 07:CDC9: A9 0A     LDA #> $0A96
C - - - - - 0x01CDDB 07:CDCB: 8D C0 03  STA ram_03C0_weapon_timer_hi
C - - - - - 0x01CDDE 07:CDCE: A9 96     LDA #< $0A96
C - - - - - 0x01CDE0 07:CDD0: 8D C1 03  STA ram_03C1_weapon_timer_lo
C - - - - - 0x01CDE3 07:CDD3: 8A        TXA
C - - - - - 0x01CDE4 07:CDD4: 48        PHA
C - - - - - 0x01CDE5 07:CDD5: AE B9 03  LDX ram_03B9
C - - - - - 0x01CDE8 07:CDD8: A9 00     LDA #$00
C - - - - - 0x01CDEA 07:CDDA: 8D B9 03  STA ram_03B9
C - - - - - 0x01CDED 07:CDDD: E0 02     CPX #$02
C - - - - - 0x01CDEF 07:CDDF: B0 03     BCS bra_CDE4
- - - - - - 0x01CDF1 07:CDE1: 4C 33 DA  JMP loc_DA33
bra_CDE4:
C - - - - - 0x01CDF4 07:CDE4: A9 04     LDA #$04
C - - - - - 0x01CDF6 07:CDE6: 9D 16 06  STA ram_0616_obj,X
C - - - - - 0x01CDF9 07:CDE9: A9 05     LDA #$05
C - - - - - 0x01CDFB 07:CDEB: 9D 34 07  STA ram_0734_obj,X
C - - - - - 0x01CDFE 07:CDEE: 20 C8 E1  JSR sub_E1C8_initialize_animation
C - - - - - 0x01CE01 07:CDF1: 4C 33 DA  JMP loc_DA33



sub_CDF4:
sub_0x01CE04:
C - - - - - 0x01CE04 07:CDF4: AD C5 03  LDA ram_round_type
; * 08
C - - - - - 0x01CE07 07:CDF7: 0A        ASL
C - - - - - 0x01CE08 07:CDF8: 0A        ASL
C - - - - - 0x01CE09 07:CDF9: 0A        ASL
C - - - - - 0x01CE0A 07:CDFA: 18        CLC
C - - - - - 0x01CE0B 07:CDFB: 6D C6 03  ADC ram_03C6_previous_weapon
C - - - - - 0x01CE0E 07:CDFE: 4C 0C CE  JMP loc_CE0C


; bzk garbage
- - - - - - 0x01CE11 07:CE01: A9 00     LDA #$00
- - - - - - 0x01CE13 07:CE03: 8D C6 03  STA ram_03C6_previous_weapon
- - - - - - 0x01CE16 07:CE06: AD C5 03  LDA ram_round_type
; * 08
- - - - - - 0x01CE19 07:CE09: 0A        ASL
- - - - - - 0x01CE1A 07:CE0A: 0A        ASL
- - - - - - 0x01CE1B 07:CE0B: 0A        ASL



loc_CE0C:
C D 2 - - - 0x01CE1C 07:CE0C: A8        TAY
C - - - - - 0x01CE1D 07:CE0D: B9 4B CF  LDA tbl_CF4B,Y
C - - - - - 0x01CE20 07:CE10: 8D BF 03  STA ram_03BF_weapon_upgrade
C - - - - - 0x01CE23 07:CE13: A8        TAY
C - - - - - 0x01CE24 07:CE14: B9 3D CF  LDA tbl_CF3D,Y
C - - - - - 0x01CE27 07:CE17: 9D 16 06  STA ram_0616_obj,X
; bzk optimize, Y already has necessary value
C - - - - - 0x01CE2A 07:CE1A: AC BF 03  LDY ram_03BF_weapon_upgrade
C - - - - - 0x01CE2D 07:CE1D: B9 2F CF  LDA tbl_CF2F,Y
C - - - - - 0x01CE30 07:CE20: 18        CLC
C - - - - - 0x01CE31 07:CE21: 6D C2 03  ADC ram_03C2_felix_state
; bzk optimize, same code as 0x01CCE3
C - - - - - 0x01CE34 07:CE24: 9D 34 07  STA ram_0734_obj,X
C - - - - - 0x01CE37 07:CE27: 98        TYA
; * 04
C - - - - - 0x01CE38 07:CE28: 0A        ASL
C - - - - - 0x01CE39 07:CE29: 0A        ASL
C - - - - - 0x01CE3A 07:CE2A: 18        CLC
C - - - - - 0x01CE3B 07:CE2B: 69 10     ADC #$10
C - - - - - 0x01CE3D 07:CE2D: 85 1C     STA ram_chr_bank_spr_1
; bzk optimize, JMP
C - - - - - 0x01CE3F 07:CE2F: 20 C8 E1  JSR sub_E1C8_initialize_animation
C - - - - - 0x01CE42 07:CE32: 60        RTS



loc_CE33:
C D 2 - - - 0x01CE43 07:CE33: A0 01     LDY #$01
C - - - - - 0x01CE45 07:CE35: B9 16 06  LDA ram_0616_obj,Y
C - - - - - 0x01CE48 07:CE38: F0 03     BEQ bra_CE3D
C - - - - - 0x01CE4A 07:CE3A: 4C B3 CC  JMP loc_CCB3
bra_CE3D:
C - - - - - 0x01CE4D 07:CE3D: B9 16 06  LDA ram_0616_obj,Y
C - - - - - 0x01CE50 07:CE40: F0 03     BEQ bra_CE45
- - - - - - 0x01CE52 07:CE42: 4C B3 CC  JMP loc_CCB3
bra_CE45:
C - - - - - 0x01CE55 07:CE45: A9 00     LDA #$00
C - - - - - 0x01CE57 07:CE47: 99 60 07  STA ram_obj_anim_cnt,Y
C - - - - - 0x01CE5A 07:CE4A: 99 DC 06  STA ram_obj_spd_Y_fr,Y
C - - - - - 0x01CE5D 07:CE4D: A9 FC     LDA #$FC    ; FC00
C - - - - - 0x01CE5F 07:CE4F: 99 F2 06  STA ram_obj_spd_Y_lo,Y
C - - - - - 0x01CE62 07:CE52: A9 00     LDA #$00
C - - - - - 0x01CE64 07:CE54: 99 4A 07  STA ram_obj_anim_timer,Y
C - - - - - 0x01CE67 07:CE57: 99 08 07  STA ram_0708_obj_flags,Y    ; con_0708_00
C - - - - - 0x01CE6A 07:CE5A: AD 84 06  LDA ram_obj_pos_Y_lo
C - - - - - 0x01CE6D 07:CE5D: 99 84 06  STA ram_obj_pos_Y_lo,Y
C - - - - - 0x01CE70 07:CE60: AD 9A 06  LDA ram_obj_pos_Y_hi
C - - - - - 0x01CE73 07:CE63: 99 9A 06  STA ram_obj_pos_Y_hi,Y
C - - - - - 0x01CE76 07:CE66: AD 42 06  LDA ram_obj_pos_X_lo
C - - - - - 0x01CE79 07:CE69: 99 42 06  STA ram_obj_pos_X_lo,Y
C - - - - - 0x01CE7C 07:CE6C: AD 58 06  LDA ram_obj_pos_X_hi
C - - - - - 0x01CE7F 07:CE6F: 99 58 06  STA ram_obj_pos_X_hi,Y
C - - - - - 0x01CE82 07:CE72: AE BF 03  LDX ram_03BF_weapon_upgrade
C - - - - - 0x01CE85 07:CE75: BD D6 CE  LDA tbl_CED6,X
C - - - - - 0x01CE88 07:CE78: 99 16 06  STA ram_0616_obj,Y
C - - - - - 0x01CE8B 07:CE7B: BD E5 CE  LDA tbl_CEE5,X
C - - - - - 0x01CE8E 07:CE7E: 99 1E 07  STA ram_071E_obj_queue_id,Y
C - - - - - 0x01CE91 07:CE81: BD F4 CE  LDA tbl_CEF4,X
C - - - - - 0x01CE94 07:CE84: 99 15 04  STA ram_0415,Y
C - - - - - 0x01CE97 07:CE87: BD 03 CF  LDA tbl_CF03,X
C - - - - - 0x01CE9A 07:CE8A: 99 19 04  STA ram_0419,Y
C - - - - - 0x01CE9D 07:CE8D: BD 12 CF  LDA tbl_CF12_weapon_damage,X
C - - - - - 0x01CEA0 07:CE90: 99 CE 07  STA ram_07CE_obj_hp,Y
C - - - - - 0x01CEA3 07:CE93: E8        INX
C - - - - - 0x01CEA4 07:CE94: 8A        TXA
C - - - - - 0x01CEA5 07:CE95: 99 34 07  STA ram_0734_obj,Y
C - - - - - 0x01CEA8 07:CE98: AD 76 07  LDA ram_0776_obj_flags
C - - - - - 0x01CEAB 07:CE9B: 29 40     AND #con_0776_flip_H
C - - - - - 0x01CEAD 07:CE9D: E0 04     CPX #$04
C - - - - - 0x01CEAF 07:CE9F: 90 02     BCC bra_CEA3
C - - - - - 0x01CEB1 07:CEA1: 09 04     ORA #con_0776_04
bra_CEA3:
C - - - - - 0x01CEB3 07:CEA3: 99 76 07  STA ram_0776_obj_flags,Y
C - - - - - 0x01CEB6 07:CEA6: CA        DEX
C - - - - - 0x01CEB7 07:CEA7: BD 73 CF  LDA tbl_CF73_weapon_sound,X
C - - - - - 0x01CEBA 07:CEAA: 20 1A FF  JSR sub_FF1A_play_sound
C - - - - - 0x01CEBD 07:CEAD: A2 00     LDX #$00
C - - - - - 0x01CEBF 07:CEAF: B9 16 06  LDA ram_0616_obj,Y
C - - - - - 0x01CEC2 07:CEB2: AC BF 03  LDY ram_03BF_weapon_upgrade
C - - - - - 0x01CEC5 07:CEB5: C9 06     CMP #$06
C - - - - - 0x01CEC7 07:CEB7: F0 0B     BEQ bra_CEC4
C - - - - - 0x01CEC9 07:CEB9: A9 01     LDA #$01
C - - - - - 0x01CECB 07:CEBB: 8D C4 03  STA ram_03C4
C - - - - - 0x01CECE 07:CEBE: B9 21 CF  LDA tbl_CF21,Y
C - - - - - 0x01CED1 07:CEC1: 4C D3 CC  JMP loc_CCD3
bra_CEC4:
C - - - - - 0x01CED4 07:CEC4: C0 0C     CPY #$0C
C - - - - - 0x01CED6 07:CEC6: F0 03     BEQ bra_CECB
C - - - - - 0x01CED8 07:CEC8: 4C B3 CC  JMP loc_CCB3
bra_CECB:
C - - - - - 0x01CEDB 07:CECB: A9 01     LDA #$01
C - - - - - 0x01CEDD 07:CECD: 8D C4 03  STA ram_03C4
C - - - - - 0x01CEE0 07:CED0: B9 21 CF  LDA tbl_CF21,Y
C - - - - - 0x01CEE3 07:CED3: 4C D3 CC  JMP loc_CCD3



tbl_CED6:
- - - - - - 0x01CEE6 07:CED6: 06        .byte $06   ; 00 
- D 2 - - - 0x01CEE7 07:CED7: 06        .byte $06   ; 01 con_weapon_boxing_glove
- D 2 - - - 0x01CEE8 07:CED8: 07        .byte $07   ; 02 con_weapon_magic_stars
- D 2 - - - 0x01CEE9 07:CED9: 04        .byte $04   ; 03 con_weapon_motorbike
- D 2 - - - 0x01CEEA 07:CEDA: 02        .byte $02   ; 04 con_weapon_tank
- D 2 - - - 0x01CEEB 07:CEDB: 02        .byte $02   ; 05 con_weapon_balloon
- D 2 - - - 0x01CEEC 07:CEDC: 06        .byte $06   ; 06 con_weapon_umbrella
- D 2 - - - 0x01CEED 07:CEDD: 03        .byte $03   ; 07 con_weapon_airplane
- D 2 - - - 0x01CEEE 07:CEDE: 03        .byte $03   ; 08 con_weapon_space_ship
- D 2 - - - 0x01CEEF 07:CEDF: 06        .byte $06   ; 09 con_weapon_snorkel
- D 2 - - - 0x01CEF0 07:CEE0: 04        .byte $04   ; 0A con_weapon_dolphin
- D 2 - - - 0x01CEF1 07:CEE1: 04        .byte $04   ; 0B con_weapon_turtle
- D 2 - - - 0x01CEF2 07:CEE2: 06        .byte $06   ; 0C con_weapon_boat
- D 2 - - - 0x01CEF3 07:CEE3: 03        .byte $03   ; 0D con_weapon_submarine


; bzk garbage
- - - - - - 0x01CEF4 07:CEE4: 00        .byte $00   ; 



tbl_CEE5:
- - - - - - 0x01CEF5 07:CEE5: 05        .byte $05   ; 00 
- D 2 - - - 0x01CEF6 07:CEE6: 0C        .byte $0C   ; 01 con_weapon_boxing_glove
- D 2 - - - 0x01CEF7 07:CEE7: 0C        .byte $0C   ; 02 con_weapon_magic_stars
- D 2 - - - 0x01CEF8 07:CEE8: 0E        .byte $0E   ; 03 con_weapon_motorbike
- D 2 - - - 0x01CEF9 07:CEE9: 08        .byte $08   ; 04 con_weapon_tank
- D 2 - - - 0x01CEFA 07:CEEA: 0E        .byte $0E   ; 05 con_weapon_balloon
- D 2 - - - 0x01CEFB 07:CEEB: 0C        .byte $0C   ; 06 con_weapon_umbrella
- D 2 - - - 0x01CEFC 07:CEEC: 0F        .byte $0F   ; 07 con_weapon_airplane
- D 2 - - - 0x01CEFD 07:CEED: 0E        .byte $0E   ; 08 con_weapon_space_ship
- D 2 - - - 0x01CEFE 07:CEEE: 0C        .byte $0C   ; 09 con_weapon_snorkel
- D 2 - - - 0x01CEFF 07:CEEF: 0E        .byte $0E   ; 0A con_weapon_dolphin
- D 2 - - - 0x01CF00 07:CEF0: 0E        .byte $0E   ; 0B con_weapon_turtle
- D 2 - - - 0x01CF01 07:CEF1: 0C        .byte $0C   ; 0C con_weapon_boat
- D 2 - - - 0x01CF02 07:CEF2: 0E        .byte $0E   ; 0D con_weapon_submarine


; bzk garbage
- - - - - - 0x01CF03 07:CEF3: 00        .byte $00   ; 



tbl_CEF4:
- - - - - - 0x01CF04 07:CEF4: 00        .byte $00   ; 00 
- D 2 - - - 0x01CF05 07:CEF5: 01        .byte $01   ; 01 con_weapon_boxing_glove
- D 2 - - - 0x01CF06 07:CEF6: 01        .byte $01   ; 02 con_weapon_magic_stars
- D 2 - - - 0x01CF07 07:CEF7: 08        .byte $08   ; 03 con_weapon_motorbike
- D 2 - - - 0x01CF08 07:CEF8: 08        .byte $08   ; 04 con_weapon_tank
- D 2 - - - 0x01CF09 07:CEF9: 08        .byte $08   ; 05 con_weapon_balloon
- D 2 - - - 0x01CF0A 07:CEFA: 01        .byte $01   ; 06 con_weapon_umbrella
- D 2 - - - 0x01CF0B 07:CEFB: 08        .byte $08   ; 07 con_weapon_airplane
- D 2 - - - 0x01CF0C 07:CEFC: 08        .byte $08   ; 08 con_weapon_space_ship
- D 2 - - - 0x01CF0D 07:CEFD: 01        .byte $01   ; 09 con_weapon_snorkel
- D 2 - - - 0x01CF0E 07:CEFE: 08        .byte $08   ; 0A con_weapon_dolphin
- D 2 - - - 0x01CF0F 07:CEFF: 08        .byte $08   ; 0B con_weapon_turtle
- D 2 - - - 0x01CF10 07:CF00: 01        .byte $01   ; 0C con_weapon_boat
- D 2 - - - 0x01CF11 07:CF01: 08        .byte $08   ; 0D con_weapon_submarine


; bzk garbage
- - - - - - 0x01CF12 07:CF02: 00        .byte $00   ; 



tbl_CF03:
- - - - - - 0x01CF13 07:CF03: 00        .byte $00   ; 00 
- D 2 - - - 0x01CF14 07:CF04: 08        .byte $08   ; 01 con_weapon_boxing_glove
- D 2 - - - 0x01CF15 07:CF05: 12        .byte $12   ; 02 con_weapon_magic_stars
- D 2 - - - 0x01CF16 07:CF06: 08        .byte $08   ; 03 con_weapon_motorbike
- D 2 - - - 0x01CF17 07:CF07: 08        .byte $08   ; 04 con_weapon_tank
- D 2 - - - 0x01CF18 07:CF08: 06        .byte $06   ; 05 con_weapon_balloon
- D 2 - - - 0x01CF19 07:CF09: 08        .byte $08   ; 06 con_weapon_umbrella
- D 2 - - - 0x01CF1A 07:CF0A: 08        .byte $08   ; 07 con_weapon_airplane
- D 2 - - - 0x01CF1B 07:CF0B: 08        .byte $08   ; 08 con_weapon_space_ship
- D 2 - - - 0x01CF1C 07:CF0C: 08        .byte $08   ; 09 con_weapon_snorkel
- D 2 - - - 0x01CF1D 07:CF0D: 08        .byte $08   ; 0A con_weapon_dolphin
- D 2 - - - 0x01CF1E 07:CF0E: 08        .byte $08   ; 0B con_weapon_turtle
- D 2 - - - 0x01CF1F 07:CF0F: 08        .byte $08   ; 0C con_weapon_boat
- D 2 - - - 0x01CF20 07:CF10: 07        .byte $07   ; 0D con_weapon_submarine


; bzk garbage
- - - - - - 0x01CF21 07:CF11: 00        .byte $00   ; 



tbl_CF12_weapon_damage:
- - - - - - 0x01CF22 07:CF12: 03        .byte $03   ; 00 
- D 2 - - - 0x01CF23 07:CF13: 05        .byte $05   ; 01 con_weapon_boxing_glove
- D 2 - - - 0x01CF24 07:CF14: 06        .byte $06   ; 02 con_weapon_magic_stars
- D 2 - - - 0x01CF25 07:CF15: 07        .byte $07   ; 03 con_weapon_motorbike
- D 2 - - - 0x01CF26 07:CF16: 08        .byte $08   ; 04 con_weapon_tank
- D 2 - - - 0x01CF27 07:CF17: 06        .byte $06   ; 05 con_weapon_balloon
- D 2 - - - 0x01CF28 07:CF18: 05        .byte $05   ; 06 con_weapon_umbrella
- D 2 - - - 0x01CF29 07:CF19: 08        .byte $08   ; 07 con_weapon_airplane
- D 2 - - - 0x01CF2A 07:CF1A: 0B        .byte $0B   ; 08 con_weapon_space_ship
- D 2 - - - 0x01CF2B 07:CF1B: 05        .byte $05   ; 09 con_weapon_snorkel
- D 2 - - - 0x01CF2C 07:CF1C: 07        .byte $07   ; 0A con_weapon_dolphin
- D 2 - - - 0x01CF2D 07:CF1D: 06        .byte $06   ; 0B con_weapon_turtle
- D 2 - - - 0x01CF2E 07:CF1E: 05        .byte $05   ; 0C con_weapon_boat
- D 2 - - - 0x01CF2F 07:CF1F: 07        .byte $07   ; 0D con_weapon_submarine


; bzk garbage
- - - - - - 0x01CF30 07:CF20: 00        .byte $00   ; 



tbl_CF21:
- - - - - - 0x01CF31 07:CF21: 06        .byte $06   ; 00 
- - - - - - 0x01CF32 07:CF22: 0D        .byte $0D   ; 01 con_weapon_boxing_glove
- D 2 - - - 0x01CF33 07:CF23: 14        .byte $14   ; 02 con_weapon_magic_stars
- D 2 - - - 0x01CF34 07:CF24: 1B        .byte $1B   ; 03 con_weapon_motorbike
- D 2 - - - 0x01CF35 07:CF25: 22        .byte $22   ; 04 con_weapon_tank
- D 2 - - - 0x01CF36 07:CF26: 29        .byte $29   ; 05 con_weapon_balloon
- - - - - - 0x01CF37 07:CF27: 30        .byte $30   ; 06 con_weapon_umbrella
- D 2 - - - 0x01CF38 07:CF28: 37        .byte $37   ; 07 con_weapon_airplane
- D 2 - - - 0x01CF39 07:CF29: 3E        .byte $3E   ; 08 con_weapon_space_ship
- - - - - - 0x01CF3A 07:CF2A: 45        .byte $45   ; 09 con_weapon_snorkel
- D 2 - - - 0x01CF3B 07:CF2B: 4C        .byte $4C   ; 0A con_weapon_dolphin
- D 2 - - - 0x01CF3C 07:CF2C: 53        .byte $53   ; 0B con_weapon_turtle
- D 2 - - - 0x01CF3D 07:CF2D: 5A        .byte $5A   ; 0C con_weapon_boat
- D 2 - - - 0x01CF3E 07:CF2E: 61        .byte $61   ; 0D con_weapon_submarine



tbl_CF2F:
- - - - - - 0x01CF3F 07:CF2F: 00        .byte $00   ; 00 
- D 2 - - - 0x01CF40 07:CF30: 07        .byte $07   ; 01 con_weapon_boxing_glove
- D 2 - - - 0x01CF41 07:CF31: 0E        .byte $0E   ; 02 con_weapon_magic_stars
- D 2 - - - 0x01CF42 07:CF32: 15        .byte $15   ; 03 con_weapon_motorbike
- D 2 - - - 0x01CF43 07:CF33: 1C        .byte $1C   ; 04 con_weapon_tank
- D 2 - - - 0x01CF44 07:CF34: 23        .byte $23   ; 05 con_weapon_balloon
- D 2 - - - 0x01CF45 07:CF35: 2A        .byte $2A   ; 06 con_weapon_umbrella
- D 2 - - - 0x01CF46 07:CF36: 31        .byte $31   ; 07 con_weapon_airplane
- D 2 - - - 0x01CF47 07:CF37: 38        .byte $38   ; 08 con_weapon_space_ship
- D 2 - - - 0x01CF48 07:CF38: 3F        .byte $3F   ; 09 con_weapon_snorkel
- D 2 - - - 0x01CF49 07:CF39: 46        .byte $46   ; 0A con_weapon_dolphin
- D 2 - - - 0x01CF4A 07:CF3A: 4D        .byte $4D   ; 0B con_weapon_turtle
- D 2 - - - 0x01CF4B 07:CF3B: 54        .byte $54   ; 0C con_weapon_boat
- D 2 - - - 0x01CF4C 07:CF3C: 5B        .byte $5B   ; 0D con_weapon_submarine



tbl_CF3D:
- - - - - - 0x01CF4D 07:CF3D: 01        .byte $01   ; 00 
- D 2 - - - 0x01CF4E 07:CF3E: 01        .byte $01   ; 01 con_weapon_boxing_glove
- D 2 - - - 0x01CF4F 07:CF3F: 01        .byte $01   ; 02 con_weapon_magic_stars
- D 2 - - - 0x01CF50 07:CF40: 01        .byte $01   ; 03 con_weapon_motorbike
- D 2 - - - 0x01CF51 07:CF41: 01        .byte $01   ; 04 con_weapon_tank
- D 2 - - - 0x01CF52 07:CF42: 04        .byte $04   ; 05 con_weapon_balloon
- D 2 - - - 0x01CF53 07:CF43: 04        .byte $04   ; 06 con_weapon_umbrella
- D 2 - - - 0x01CF54 07:CF44: 04        .byte $04   ; 07 con_weapon_airplane
- D 2 - - - 0x01CF55 07:CF45: 04        .byte $04   ; 08 con_weapon_space_ship
- D 2 - - - 0x01CF56 07:CF46: 03        .byte $03   ; 09 con_weapon_snorkel
- D 2 - - - 0x01CF57 07:CF47: 02        .byte $02   ; 0A con_weapon_dolphin
- D 2 - - - 0x01CF58 07:CF48: 03        .byte $03   ; 0B con_weapon_turtle
- D 2 - - - 0x01CF59 07:CF49: 02        .byte $02   ; 0C con_weapon_boat
- D 2 - - - 0x01CF5A 07:CF4A: 03        .byte $03   ; 0D con_weapon_submarine



tbl_CF4B:
; 00 normal
- D 2 - - - 0x01CF5B 07:CF4B: 01        .byte con_weapon_boxing_glove   ; 00 
- D 2 - - - 0x01CF5C 07:CF4C: 02        .byte con_weapon_magic_stars   ; 01 
- D 2 - - - 0x01CF5D 07:CF4D: 03        .byte con_weapon_motorbike   ; 02 
- D 2 - - - 0x01CF5E 07:CF4E: 04        .byte con_weapon_tank   ; 03 
- D 2 - - - 0x01CF5F 07:CF4F: FF        .byte $FF   ; 04 
- D 2 - - - 0x01CF60 07:CF50: FF        .byte $FF   ; 05 
- - - - - - 0x01CF61 07:CF51: FF        .byte $FF   ; 06 
- - - - - - 0x01CF62 07:CF52: FF        .byte $FF   ; 07 
; 01 aerial
- D 2 - - - 0x01CF63 07:CF53: 06        .byte con_weapon_umbrella   ; 08 
- D 2 - - - 0x01CF64 07:CF54: 05        .byte con_weapon_balloon   ; 09 
- D 2 - - - 0x01CF65 07:CF55: 07        .byte con_weapon_airplane   ; 0A 
- D 2 - - - 0x01CF66 07:CF56: FF        .byte $FF   ; 0B 
- D 2 - - - 0x01CF67 07:CF57: FF        .byte $FF   ; 0C 
- - - - - - 0x01CF68 07:CF58: FF        .byte $FF   ; 0D 
- - - - - - 0x01CF69 07:CF59: FF        .byte $FF   ; 0E 
- - - - - - 0x01CF6A 07:CF5A: FF        .byte $FF   ; 0F 
; 02 on water
- D 2 - - - 0x01CF6B 07:CF5B: 0C        .byte con_weapon_boat   ; 00 
- D 2 - - - 0x01CF6C 07:CF5C: 0A        .byte con_weapon_dolphin   ; 01 
- D 2 - - - 0x01CF6D 07:CF5D: FF        .byte $FF   ; 02 
- D 2 - - - 0x01CF6E 07:CF5E: FF        .byte $FF   ; 03 
- - - - - - 0x01CF6F 07:CF5F: FF        .byte $FF   ; 04 
- - - - - - 0x01CF70 07:CF60: FF        .byte $FF   ; 05 
- - - - - - 0x01CF71 07:CF61: FF        .byte $FF   ; 06 
- - - - - - 0x01CF72 07:CF62: FF        .byte $FF   ; 07 
; 03 underwater
- D 2 - - - 0x01CF73 07:CF63: 09        .byte con_weapon_snorkel   ; 08 
- D 2 - - - 0x01CF74 07:CF64: 0B        .byte con_weapon_turtle   ; 09 
- D 2 - - - 0x01CF75 07:CF65: 0D        .byte con_weapon_submarine   ; 0A 
- D 2 - - - 0x01CF76 07:CF66: FF        .byte $FF   ; 0B 
- - - - - - 0x01CF77 07:CF67: FF        .byte $FF   ; 0C 
- - - - - - 0x01CF78 07:CF68: FF        .byte $FF   ; 0D 
- - - - - - 0x01CF79 07:CF69: FF        .byte $FF   ; 0E 
- - - - - - 0x01CF7A 07:CF6A: FF        .byte $FF   ; 0F 
; 04 space
- D 2 - - - 0x01CF7B 07:CF6B: 01        .byte con_weapon_boxing_glove   ; 00 
- D 2 - - - 0x01CF7C 07:CF6C: 08        .byte con_weapon_space_ship   ; 01 
- D 2 - - - 0x01CF7D 07:CF6D: FF        .byte $FF   ; 02 
- D 2 - - - 0x01CF7E 07:CF6E: FF        .byte $FF   ; 03 
- - - - - - 0x01CF7F 07:CF6F: FF        .byte $FF   ; 04 
- - - - - - 0x01CF80 07:CF70: FF        .byte $FF   ; 05 
- - - - - - 0x01CF81 07:CF71: FF        .byte $FF   ; 06 
- - - - - - 0x01CF82 07:CF72: FF        .byte $FF   ; 07 



tbl_CF73_weapon_sound:
- - - - - - 0x01CF83 07:CF73: 0D        .byte con_sfx_0D   ; 00 
- D 2 - - - 0x01CF84 07:CF74: 0D        .byte con_sfx_0D   ; 01 con_weapon_boxing_glove
- D 2 - - - 0x01CF85 07:CF75: 08        .byte con_sfx_08   ; 02 con_weapon_magic_stars
- D 2 - - - 0x01CF86 07:CF76: 07        .byte con_sfx_07   ; 03 con_weapon_motorbike
- D 2 - - - 0x01CF87 07:CF77: 09        .byte con_sfx_09   ; 04 con_weapon_tank
- D 2 - - - 0x01CF88 07:CF78: 0A        .byte con_sfx_0A   ; 05 con_weapon_balloon
- D 2 - - - 0x01CF89 07:CF79: 0D        .byte con_sfx_0D   ; 06 con_weapon_umbrella
- D 2 - - - 0x01CF8A 07:CF7A: 0B        .byte con_sfx_0B   ; 07 con_weapon_airplane
- D 2 - - - 0x01CF8B 07:CF7B: 0D        .byte con_sfx_0D   ; 08 con_weapon_space_ship
- D 2 - - - 0x01CF8C 07:CF7C: 0D        .byte con_sfx_0D   ; 09 con_weapon_snorkel
- D 2 - - - 0x01CF8D 07:CF7D: 17        .byte con_sfx_17   ; 0A con_weapon_dolphin
- D 2 - - - 0x01CF8E 07:CF7E: 0D        .byte con_sfx_0D   ; 0B con_weapon_turtle
- D 2 - - - 0x01CF8F 07:CF7F: 0D        .byte con_sfx_0D   ; 0C con_weapon_boat
- D 2 - - - 0x01CF90 07:CF80: 0F        .byte con_sfx_0F   ; 0D con_weapon_submarine



tbl_CF81:
tbl_0x01CF91:
- D 2 - - - 0x01CF91 07:CF81: 00        .byte $00   ; 00 
- D 2 - - - 0x01CF92 07:CF82: 01        .byte $01   ; 01 
- D 2 - - - 0x01CF93 07:CF83: 00        .byte $00   ; 02 
- - - - - - 0x01CF94 07:CF84: 00        .byte $00   ; 03 
- D 2 - - - 0x01CF95 07:CF85: 02        .byte $02   ; 04 
- D 2 - - - 0x01CF96 07:CF86: 04        .byte $04   ; 05 
- - - - - - 0x01CF97 07:CF87: 00        .byte $00   ; 06 
- - - - - - 0x01CF98 07:CF88: 00        .byte $00   ; 07 
- - - - - - 0x01CF99 07:CF89: 00        .byte $00   ; 08 
- - - - - - 0x01CF9A 07:CF8A: 00        .byte $00   ; 09 
- - - - - - 0x01CF9B 07:CF8B: 00        .byte $00   ; 0A 
- - - - - - 0x01CF9C 07:CF8C: 00        .byte $00   ; 0B 
- - - - - - 0x01CF9D 07:CF8D: 00        .byte $00   ; 0C 
- - - - - - 0x01CF9E 07:CF8E: 00        .byte $00   ; 0D 
- D 2 - - - 0x01CF9F 07:CF8F: 01        .byte $01   ; 0E 
- D 2 - - - 0x01CFA0 07:CF90: 01        .byte $01   ; 0F 



bra_CF91_RTS:
C - - - - - 0x01CFA1 07:CF91: 60        RTS



sub_CF92:
C - - - - - 0x01CFA2 07:CF92: AD B7 03  LDA ram_03B7
C - - - - - 0x01CFA5 07:CF95: D0 FA     BNE bra_CF91_RTS
C - - - - - 0x01CFA7 07:CF97: AD C2 03  LDA ram_03C2_felix_state
C - - - - - 0x01CFAA 07:CF9A: 8D C3 03  STA ram_03C2_felix_prev_state
C - - - - - 0x01CFAD 07:CF9D: 20 77 D9  JSR sub_D977
C - - - - - 0x01CFB0 07:CFA0: 20 02 D7  JSR sub_D702
C - - - - - 0x01CFB3 07:CFA3: AD B2 03  LDA ram_03B2
C - - - - - 0x01CFB6 07:CFA6: F0 03     BEQ bra_CFAB
C - - - - - 0x01CFB8 07:CFA8: CE B2 03  DEC ram_03B2
bra_CFAB:
C - - - - - 0x01CFBB 07:CFAB: 20 98 D7  JSR sub_D798
C - - - - - 0x01CFBE 07:CFAE: 20 0B D9  JSR sub_D90B
C - - - - - 0x01CFC1 07:CFB1: A9 00     LDA #$00
C - - - - - 0x01CFC3 07:CFB3: 8D AF 03  STA ram_03AF
C - - - - - 0x01CFC6 07:CFB6: 20 38 D3  JSR sub_D338
C - - - - - 0x01CFC9 07:CFB9: 8A        TXA
C - - - - - 0x01CFCA 07:CFBA: 48        PHA
C - - - - - 0x01CFCB 07:CFBB: A8        TAY
C - - - - - 0x01CFCC 07:CFBC: 20 BB 8A  JSR sub_0x018ACB_object_handler
C - - - - - 0x01CFCF 07:CFBF: 68        PLA
C - - - - - 0x01CFD0 07:CFC0: AA        TAX
C - - - - - 0x01CFD1 07:CFC1: 20 14 D2  JSR sub_D214
C - - - - - 0x01CFD4 07:CFC4: AD B1 03  LDA ram_03B1
C - - - - - 0x01CFD7 07:CFC7: F0 03     BEQ bra_CFCC
C - - - - - 0x01CFD9 07:CFC9: 8D AF 03  STA ram_03AF
bra_CFCC:
C - - - - - 0x01CFDC 07:CFCC: AD C3 03  LDA ram_03C2_felix_prev_state
C - - - - - 0x01CFDF 07:CFCF: C9 07     CMP #$07
C - - - - - 0x01CFE1 07:CFD1: D0 32     BNE bra_D005
; if was not ducking
C - - - - - 0x01CFE3 07:CFD3: BD 42 06  LDA ram_obj_pos_X_lo,X
C - - - - - 0x01CFE6 07:CFD6: 85 04     STA ram_0004_temp
C - - - - - 0x01CFE8 07:CFD8: BD 58 06  LDA ram_obj_pos_X_hi,X
C - - - - - 0x01CFEB 07:CFDB: 85 05     STA ram_0005_temp
C - - - - - 0x01CFED 07:CFDD: BD 84 06  LDA ram_obj_pos_Y_lo,X
C - - - - - 0x01CFF0 07:CFE0: 38        SEC
C - - - - - 0x01CFF1 07:CFE1: E9 09     SBC #< $0009
C - - - - - 0x01CFF3 07:CFE3: 85 06     STA ram_0006_temp
C - - - - - 0x01CFF5 07:CFE5: BD 9A 06  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x01CFF8 07:CFE8: E9 00     SBC #> $0009
C - - - - - 0x01CFFA 07:CFEA: 85 07     STA ram_0007_temp
C - - - - - 0x01CFFC 07:CFEC: 20 51 F2  JSR sub_F251
C - - - - - 0x01CFFF 07:CFEF: C9 01     CMP #$01
C - - - - - 0x01D001 07:CFF1: F0 07     BEQ bra_CFFA
C - - - - - 0x01D003 07:CFF3: C9 0E     CMP #$0E
C - - - - - 0x01D005 07:CFF5: B0 03     BCS bra_CFFA
C - - - - - 0x01D007 07:CFF7: 4C 05 D0  JMP loc_D005
bra_CFFA:
C - - - - - 0x01D00A 07:CFFA: A5 2D     LDA ram_002D_btn
C - - - - - 0x01D00C 07:CFFC: 09 20     ORA #con_btn_Down
C - - - - - 0x01D00E 07:CFFE: 85 2D     STA ram_002D_btn
; breakpoint triggers only if an impassable block is above you
C - - - - - 0x01D010 07:D000: A9 07     LDA #$07    ; ducking while jumping
C - - - - - 0x01D012 07:D002: 8D C2 03  STA ram_03C2_felix_state
bra_D005:
loc_D005:
C D 2 - - - 0x01D015 07:D005: AD C3 03  LDA ram_03C2_felix_prev_state
C - - - - - 0x01D018 07:D008: C9 07     CMP #$07
C - - - - - 0x01D01A 07:D00A: D0 05     BNE bra_D011
; if was not ducking
C - - - - - 0x01D01C 07:D00C: AD AF 03  LDA ram_03AF
C - - - - - 0x01D01F 07:D00F: D0 12     BNE bra_D023
bra_D011:
C - - - - - 0x01D021 07:D011: A5 2D     LDA ram_002D_btn
C - - - - - 0x01D023 07:D013: 29 40     AND #con_btn_Left
C - - - - - 0x01D025 07:D015: F0 03     BEQ bra_D01A
C - - - - - 0x01D027 07:D017: 20 1A D6  JSR sub_D61A
bra_D01A:
C - - - - - 0x01D02A 07:D01A: A5 2D     LDA ram_002D_btn
C - - - - - 0x01D02C 07:D01C: 29 80     AND #con_btn_Right
C - - - - - 0x01D02E 07:D01E: F0 03     BEQ bra_D023
C - - - - - 0x01D030 07:D020: 20 8E D6  JSR sub_D68E
bra_D023:
C - - - - - 0x01D033 07:D023: 20 7E D8  JSR sub_D87E
C - - - - - 0x01D036 07:D026: 20 0F D9  JSR sub_D90F
C - - - - - 0x01D039 07:D029: 20 5F D0  JSR sub_D05F
C - - - - - 0x01D03C 07:D02C: AD AF 03  LDA ram_03AF
C - - - - - 0x01D03F 07:D02F: F0 17     BEQ bra_D048_RTS
C - - - - - 0x01D041 07:D031: BD 76 07  LDA ram_0776_obj_flags,X
C - - - - - 0x01D044 07:D034: 29 08     AND #con_0776_08
C - - - - - 0x01D046 07:D036: D0 05     BNE bra_D03D
C - - - - - 0x01D048 07:D038: A9 01     LDA #$01    ; default state while standing still
C - - - - - 0x01D04A 07:D03A: 8D C2 03  STA ram_03C2_felix_state
bra_D03D:
C - - - - - 0x01D04D 07:D03D: A5 2D     LDA ram_002D_btn
C - - - - - 0x01D04F 07:D03F: 29 C0     AND #con_btns_LR
C - - - - - 0x01D051 07:D041: F0 05     BEQ bra_D048_RTS
C - - - - - 0x01D053 07:D043: A9 02     LDA #$02    ; felix is moving
C - - - - - 0x01D055 07:D045: 8D C2 03  STA ram_03C2_felix_state
bra_D048_RTS:
C - - - - - 0x01D058 07:D048: 60        RTS



loc_D049:
- - - - - - 0x01D059 07:D049: A9 00     LDA #< $FF00
- - - - - - 0x01D05B 07:D04B: 9D B0 06  STA ram_obj_spd_X_fr,X
- - - - - - 0x01D05E 07:D04E: A9 FF     LDA #> $FF00
- - - - - - 0x01D060 07:D050: 9D C6 06  STA ram_obj_spd_X_lo,X
- - - - - - 0x01D063 07:D053: 60        RTS



bra_D054:
C - - - - - 0x01D064 07:D054: A9 00     LDA #< $0100
C - - - - - 0x01D066 07:D056: 9D B0 06  STA ram_obj_spd_X_fr,X
C - - - - - 0x01D069 07:D059: A9 01     LDA #> $0100
C - - - - - 0x01D06B 07:D05B: 9D C6 06  STA ram_obj_spd_X_lo,X
C - - - - - 0x01D06E 07:D05E: 60        RTS



sub_D05F:
C - - - - - 0x01D06F 07:D05F: BD 58 06  LDA ram_obj_pos_X_hi,X
C - - - - - 0x01D072 07:D062: 38        SEC
C - - - - - 0x01D073 07:D063: E5 BB     SBC ram_00BB
C - - - - - 0x01D075 07:D065: 30 4D     BMI bra_D0B4
C - - - - - 0x01D077 07:D067: D0 37     BNE bra_D0A0
C - - - - - 0x01D079 07:D069: AD 0D 04  LDA ram_040D
C - - - - - 0x01D07C 07:D06C: C9 01     CMP #$01
C - - - - - 0x01D07E 07:D06E: F0 44     BEQ bra_D0B4
C - - - - - 0x01D080 07:D070: 18        CLC
C - - - - - 0x01D081 07:D071: 6D 11 04  ADC ram_0411
C - - - - - 0x01D084 07:D074: C9 08     CMP #$08
C - - - - - 0x01D086 07:D076: F0 3C     BEQ bra_D0B4
C - - - - - 0x01D088 07:D078: A5 33     LDA ram_round
C - - - - - 0x01D08A 07:D07A: C9 17     CMP #$17
C - - - - - 0x01D08C 07:D07C: F0 36     BEQ bra_D0B4
C - - - - - 0x01D08E 07:D07E: BD 42 06  LDA ram_obj_pos_X_lo,X
C - - - - - 0x01D091 07:D081: 49 FF     EOR #$FF
; * 0.75
C - - - - - 0x01D093 07:D083: 4A        LSR
C - - - - - 0x01D094 07:D084: 85 00     STA ram_0000_t76
C - - - - - 0x01D096 07:D086: 4A        LSR
C - - - - - 0x01D097 07:D087: 18        CLC
C - - - - - 0x01D098 07:D088: 65 00     ADC ram_0000_t76
; / 10
C - - - - - 0x01D09A 07:D08A: 4A        LSR
C - - - - - 0x01D09B 07:D08B: 4A        LSR
C - - - - - 0x01D09C 07:D08C: 4A        LSR
C - - - - - 0x01D09D 07:D08D: 4A        LSR
C - - - - - 0x01D09E 07:D08E: 18        CLC
C - - - - - 0x01D09F 07:D08F: 69 05     ADC #$05
C - - - - - 0x01D0A1 07:D091: AA        TAX
C - - - - - 0x01D0A2 07:D092: A9 83     LDA #con_mus_cfg_83
C - - - - - 0x01D0A4 07:D094: 20 1A FF  JSR sub_FF1A_play_sound
C - - - - - 0x01D0A7 07:D097: A2 00     LDX #$00
C - - - - - 0x01D0A9 07:D099: BD 42 06  LDA ram_obj_pos_X_lo,X
C - - - - - 0x01D0AC 07:D09C: C9 DB     CMP #$DB
C - - - - - 0x01D0AE 07:D09E: 90 14     BCC bra_D0B4
bra_D0A0:
C - - - - - 0x01D0B0 07:D0A0: A5 2D     LDA ram_002D_btn
C - - - - - 0x01D0B2 07:D0A2: 09 80     ORA #con_btn_Right
C - - - - - 0x01D0B4 07:D0A4: 85 2D     STA ram_002D_btn
C - - - - - 0x01D0B6 07:D0A6: AD B3 03  LDA ram_03B3
C - - - - - 0x01D0B9 07:D0A9: 85 00     STA ram_0000_t77_spd_X_fr
C - - - - - 0x01D0BB 07:D0AB: 20 AF D6  JSR sub_D6AF
C - - - - - 0x01D0BE 07:D0AE: 20 8E D6  JSR sub_D68E
C - - - - - 0x01D0C1 07:D0B1: 4C EB D0  JMP loc_D0EB
bra_D0B4:
C - - - - - 0x01D0C4 07:D0B4: BD 42 06  LDA ram_obj_pos_X_lo,X
C - - - - - 0x01D0C7 07:D0B7: 38        SEC
C - - - - - 0x01D0C8 07:D0B8: E5 B9     SBC ram_cam_pos_X_lo
C - - - - - 0x01D0CA 07:D0BA: 85 04     STA ram_0004_temp
C - - - - - 0x01D0CC 07:D0BC: BD 58 06  LDA ram_obj_pos_X_hi,X
C - - - - - 0x01D0CF 07:D0BF: E5 B7     SBC ram_cam_pos_X_hi
C - - - - - 0x01D0D1 07:D0C1: 85 05     STA ram_0005_temp
C - - - - - 0x01D0D3 07:D0C3: A5 04     LDA ram_0004_temp
C - - - - - 0x01D0D5 07:D0C5: 38        SEC
C - - - - - 0x01D0D6 07:D0C6: E9 08     SBC #< $0008
C - - - - - 0x01D0D8 07:D0C8: A5 05     LDA ram_0005_temp
C - - - - - 0x01D0DA 07:D0CA: E9 00     SBC #> $0008
C - - - - - 0x01D0DC 07:D0CC: 30 86     BMI bra_D054
C - - - - - 0x01D0DE 07:D0CE: BD 42 06  LDA ram_obj_pos_X_lo,X
C - - - - - 0x01D0E1 07:D0D1: 38        SEC
C - - - - - 0x01D0E2 07:D0D2: E5 B9     SBC ram_cam_pos_X_lo
C - - - - - 0x01D0E4 07:D0D4: 85 04     STA ram_0004_temp
C - - - - - 0x01D0E6 07:D0D6: BD 58 06  LDA ram_obj_pos_X_hi,X
C - - - - - 0x01D0E9 07:D0D9: E5 B7     SBC ram_cam_pos_X_hi
C - - - - - 0x01D0EB 07:D0DB: 85 05     STA ram_0005_temp
C - - - - - 0x01D0ED 07:D0DD: A5 04     LDA ram_0004_temp
C - - - - - 0x01D0EF 07:D0DF: 38        SEC
C - - - - - 0x01D0F0 07:D0E0: E9 F0     SBC #< $00F0
C - - - - - 0x01D0F2 07:D0E2: A5 05     LDA ram_0005_temp
C - - - - - 0x01D0F4 07:D0E4: E9 00     SBC #> $00F0
C - - - - - 0x01D0F6 07:D0E6: 30 03     BMI bra_D0EB
- - - - - - 0x01D0F8 07:D0E8: 4C 49 D0  JMP loc_D049
bra_D0EB:
loc_D0EB:
C D 2 - - - 0x01D0FB 07:D0EB: BD C6 06  LDA ram_obj_spd_X_lo,X
C - - - - - 0x01D0FE 07:D0EE: 1D B0 06  ORA ram_obj_spd_X_fr,X
C - - - - - 0x01D101 07:D0F1: D0 03     BNE bra_D0F6
C - - - - - 0x01D103 07:D0F3: 4C 60 D1  JMP loc_D160
bra_D0F6:
C - - - - - 0x01D106 07:D0F6: BD C6 06  LDA ram_obj_spd_X_lo,X
C - - - - - 0x01D109 07:D0F9: 30 19     BMI bra_D114
C - - - - - 0x01D10B 07:D0FB: BD 42 06  LDA ram_obj_pos_X_lo,X
C - - - - - 0x01D10E 07:D0FE: 18        CLC
C - - - - - 0x01D10F 07:D0FF: 69 08     ADC #< $0008
C - - - - - 0x01D111 07:D101: 85 04     STA ram_0004_temp
C - - - - - 0x01D113 07:D103: BD 58 06  LDA ram_obj_pos_X_hi,X
C - - - - - 0x01D116 07:D106: 69 00     ADC #> $0008
C - - - - - 0x01D118 07:D108: 85 05     STA ram_0005_temp
C - - - - - 0x01D11A 07:D10A: A9 FD     LDA #$FD
C - - - - - 0x01D11C 07:D10C: 85 02     STA ram_0002_t11
C - - - - - 0x01D11E 07:D10E: 20 BE D1  JSR sub_D1BE
C - - - - - 0x01D121 07:D111: D0 1A     BNE bra_D12D
C - - - - - 0x01D123 07:D113: 60        RTS
bra_D114:
C - - - - - 0x01D124 07:D114: BD 42 06  LDA ram_obj_pos_X_lo,X
C - - - - - 0x01D127 07:D117: 38        SEC
C - - - - - 0x01D128 07:D118: E9 08     SBC #< $0008
C - - - - - 0x01D12A 07:D11A: 85 04     STA ram_0004_temp
C - - - - - 0x01D12C 07:D11C: BD 58 06  LDA ram_obj_pos_X_hi,X
C - - - - - 0x01D12F 07:D11F: E9 00     SBC #> $0008
C - - - - - 0x01D131 07:D121: 85 05     STA ram_0005_temp
C - - - - - 0x01D133 07:D123: A9 FB     LDA #$FB
C - - - - - 0x01D135 07:D125: 85 02     STA ram_0002_t11
C - - - - - 0x01D137 07:D127: 20 BE D1  JSR sub_D1BE
C - - - - - 0x01D13A 07:D12A: D0 01     BNE bra_D12D
C - - - - - 0x01D13C 07:D12C: 60        RTS
bra_D12D:
C - - - - - 0x01D13D 07:D12D: A9 00     LDA #$00
C - - - - - 0x01D13F 07:D12F: 85 00     STA ram_0000_t81
C - - - - - 0x01D141 07:D131: BD C6 06  LDA ram_obj_spd_X_lo,X
C - - - - - 0x01D144 07:D134: 10 02     BPL bra_D138
C - - - - - 0x01D146 07:D136: C6 00     DEC ram_0000_t81   ; -> FF
bra_D138:
C - - - - - 0x01D148 07:D138: BD 2C 06  LDA ram_obj_pos_X_fr,X
C - - - - - 0x01D14B 07:D13B: 38        SEC
C - - - - - 0x01D14C 07:D13C: FD B0 06  SBC ram_obj_spd_X_fr,X
C - - - - - 0x01D14F 07:D13F: 9D 2C 06  STA ram_obj_pos_X_fr,X
C - - - - - 0x01D152 07:D142: BD 42 06  LDA ram_obj_pos_X_lo,X
C - - - - - 0x01D155 07:D145: FD C6 06  SBC ram_obj_spd_X_lo,X
C - - - - - 0x01D158 07:D148: 9D 42 06  STA ram_obj_pos_X_lo,X
C - - - - - 0x01D15B 07:D14B: BD 58 06  LDA ram_obj_pos_X_hi,X
C - - - - - 0x01D15E 07:D14E: E5 00     SBC ram_0000_t81
C - - - - - 0x01D160 07:D150: 9D 58 06  STA ram_obj_pos_X_hi,X
C - - - - - 0x01D163 07:D153: A9 FA     LDA #$FA
C - - - - - 0x01D165 07:D155: 85 04     STA ram_0004_temp
C - - - - - 0x01D167 07:D157: 20 A5 D5  JSR sub_D5A5
C - - - - - 0x01D16A 07:D15A: 20 A5 D5  JSR sub_D5A5
C - - - - - 0x01D16D 07:D15D: 4C 91 D1  JMP loc_D191



loc_D160:
C D 2 - - - 0x01D170 07:D160: BD 42 06  LDA ram_obj_pos_X_lo,X
C - - - - - 0x01D173 07:D163: 18        CLC
C - - - - - 0x01D174 07:D164: 69 08     ADC #< $0008
C - - - - - 0x01D176 07:D166: 85 04     STA ram_0004_temp
C - - - - - 0x01D178 07:D168: BD 58 06  LDA ram_obj_pos_X_hi,X
C - - - - - 0x01D17B 07:D16B: 69 00     ADC #> $0008
C - - - - - 0x01D17D 07:D16D: 85 05     STA ram_0005_temp
C - - - - - 0x01D17F 07:D16F: A9 FD     LDA #$FD
C - - - - - 0x01D181 07:D171: 85 02     STA ram_0002_t11
C - - - - - 0x01D183 07:D173: 20 BE D1  JSR sub_D1BE
C - - - - - 0x01D186 07:D176: D0 19     BNE bra_D191
C - - - - - 0x01D188 07:D178: BD 42 06  LDA ram_obj_pos_X_lo,X
C - - - - - 0x01D18B 07:D17B: 38        SEC
C - - - - - 0x01D18C 07:D17C: E9 08     SBC #< $0008
C - - - - - 0x01D18E 07:D17E: 85 04     STA ram_0004_temp
C - - - - - 0x01D190 07:D180: BD 58 06  LDA ram_obj_pos_X_hi,X
C - - - - - 0x01D193 07:D183: E9 00     SBC #> $0008
C - - - - - 0x01D195 07:D185: 85 05     STA ram_0005_temp
C - - - - - 0x01D197 07:D187: A9 FB     LDA #$FB
C - - - - - 0x01D199 07:D189: 85 02     STA ram_0002_t11
C - - - - - 0x01D19B 07:D18B: 20 BE D1  JSR sub_D1BE
C - - - - - 0x01D19E 07:D18E: D0 01     BNE bra_D191
C - - - - - 0x01D1A0 07:D190: 60        RTS
bra_D191:
loc_D191:
C D 2 - - - 0x01D1A1 07:D191: A9 80     LDA #$80
C - - - - - 0x01D1A3 07:D193: 9D 2C 06  STA ram_obj_pos_X_fr,X
C - - - - - 0x01D1A6 07:D196: BD 42 06  LDA ram_obj_pos_X_lo,X
C - - - - - 0x01D1A9 07:D199: 29 F0     AND #$F0
C - - - - - 0x01D1AB 07:D19B: 85 04     STA ram_0004_temp
C - - - - - 0x01D1AD 07:D19D: BD 42 06  LDA ram_obj_pos_X_lo,X
C - - - - - 0x01D1B0 07:D1A0: 29 0F     AND #$0F
C - - - - - 0x01D1B2 07:D1A2: C9 08     CMP #$08
C - - - - - 0x01D1B4 07:D1A4: F0 17     BEQ bra_D1BD_RTS
C - - - - - 0x01D1B6 07:D1A6: C9 07     CMP #$07
C - - - - - 0x01D1B8 07:D1A8: F0 13     BEQ bra_D1BD_RTS
C - - - - - 0x01D1BA 07:D1AA: 90 09     BCC bra_D1B5
C - - - - - 0x01D1BC 07:D1AC: 38        SEC
C - - - - - 0x01D1BD 07:D1AD: E9 01     SBC #$01
C - - - - - 0x01D1BF 07:D1AF: 05 04     ORA ram_0004_temp
C - - - - - 0x01D1C1 07:D1B1: 9D 42 06  STA ram_obj_pos_X_lo,X
C - - - - - 0x01D1C4 07:D1B4: 60        RTS
bra_D1B5:
C - - - - - 0x01D1C5 07:D1B5: 18        CLC
C - - - - - 0x01D1C6 07:D1B6: 69 01     ADC #$01
C - - - - - 0x01D1C8 07:D1B8: 05 04     ORA ram_0004_temp
C - - - - - 0x01D1CA 07:D1BA: 9D 42 06  STA ram_obj_pos_X_lo,X
bra_D1BD_RTS:
C - - - - - 0x01D1CD 07:D1BD: 60        RTS



sub_D1BE:
; in
    ; ram_0002_t11 = FB/FD
; out
    ; Z
        ; 0 = 
        ; 1 = 
C - - - - - 0x01D1CE 07:D1BE: BD 84 06  LDA ram_obj_pos_Y_lo,X
C - - - - - 0x01D1D1 07:D1C1: 18        CLC
C - - - - - 0x01D1D2 07:D1C2: 69 01     ADC #< $0001
C - - - - - 0x01D1D4 07:D1C4: 85 06     STA ram_0006_temp
C - - - - - 0x01D1D6 07:D1C6: BD 9A 06  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x01D1D9 07:D1C9: 69 00     ADC #> $0001
C - - - - - 0x01D1DB 07:D1CB: 85 07     STA ram_0007_temp
C - - - - - 0x01D1DD 07:D1CD: 20 51 F2  JSR sub_F251
C - - - - - 0x01D1E0 07:D1D0: B9 81 CF  LDA tbl_CF81,Y
C - - - - - 0x01D1E3 07:D1D3: 25 02     AND ram_0002_t11
C - - - - - 0x01D1E5 07:D1D5: D0 3C     BNE bra_D213_RTS
C - - - - - 0x01D1E7 07:D1D7: A5 06     LDA ram_0006_temp
C - - - - - 0x01D1E9 07:D1D9: 38        SEC
C - - - - - 0x01D1EA 07:D1DA: E9 09     SBC #< $0009
C - - - - - 0x01D1EC 07:D1DC: 85 06     STA ram_0006_temp
C - - - - - 0x01D1EE 07:D1DE: A5 07     LDA ram_0007_temp
C - - - - - 0x01D1F0 07:D1E0: E9 00     SBC #> $0009
C - - - - - 0x01D1F2 07:D1E2: 85 07     STA ram_0007_temp
C - - - - - 0x01D1F4 07:D1E4: AD C3 03  LDA ram_03C2_felix_prev_state
C - - - - - 0x01D1F7 07:D1E7: C9 07     CMP #$07
C - - - - - 0x01D1F9 07:D1E9: F0 0A     BEQ bra_D1F5
; if was ducking
C - - - - - 0x01D1FB 07:D1EB: 20 51 F2  JSR sub_F251
C - - - - - 0x01D1FE 07:D1EE: B9 81 CF  LDA tbl_CF81,Y
C - - - - - 0x01D201 07:D1F1: 25 02     AND ram_0002_t11
C - - - - - 0x01D203 07:D1F3: D0 1E     BNE bra_D213_RTS
bra_D1F5:
C - - - - - 0x01D205 07:D1F5: AD B0 03  LDA ram_03B0
C - - - - - 0x01D208 07:D1F8: D0 16     BNE bra_D210
; C = 0 1
C - - - - - 0x01D20A 07:D1FA: A5 06     LDA ram_0006_temp
C - - - - - 0x01D20C 07:D1FC: 69 15     ADC #< $0015
C - - - - - 0x01D20E 07:D1FE: 85 06     STA ram_0006_temp
C - - - - - 0x01D210 07:D200: A5 07     LDA ram_0007_temp
C - - - - - 0x01D212 07:D202: 69 00     ADC #> $0015
C - - - - - 0x01D214 07:D204: 85 07     STA ram_0007_temp
C - - - - - 0x01D216 07:D206: 20 51 F2  JSR sub_F251
C - - - - - 0x01D219 07:D209: B9 81 CF  LDA tbl_CF81,Y
C - - - - - 0x01D21C 07:D20C: 25 02     AND ram_0002_t11
C - - - - - 0x01D21E 07:D20E: D0 03     BNE bra_D213_RTS
bra_D210:
C - - - - - 0x01D220 07:D210: A9 00     LDA #$00
C - - - - - 0x01D222 07:D212: 60        RTS
bra_D213_RTS:
; bzk optimize
C - - - - - 0x01D223 07:D213: 60        RTS



sub_D214:
C - - - - - 0x01D224 07:D214: 20 07 D6  JSR sub_D607
C - - - - - 0x01D227 07:D217: BD 8C 07  LDA ram_078C_obj,X
C - - - - - 0x01D22A 07:D21A: 1D A2 07  ORA ram_07A2_obj,X
C - - - - - 0x01D22D 07:D21D: F0 03     BEQ bra_D222
C - - - - - 0x01D22F 07:D21F: 4C 23 D5  JMP loc_D523
bra_D222:
loc_D222:
C D 2 - - - 0x01D232 07:D222: BD F2 06  LDA ram_obj_spd_Y_lo,X
C - - - - - 0x01D235 07:D225: 10 03     BPL bra_D22A
C - - - - - 0x01D237 07:D227: 4C 91 D4  JMP loc_D491
bra_D22A:
C - - - - - 0x01D23A 07:D22A: AD AF 03  LDA ram_03AF
C - - - - - 0x01D23D 07:D22D: C9 02     CMP #$02
C - - - - - 0x01D23F 07:D22F: D0 03     BNE bra_D234
C - - - - - 0x01D241 07:D231: 4C 91 D4  JMP loc_D491
bra_D234:
C - - - - - 0x01D244 07:D234: BD 84 06  LDA ram_obj_pos_Y_lo,X
C - - - - - 0x01D247 07:D237: 85 06     STA ram_0006_temp
C - - - - - 0x01D249 07:D239: BD 9A 06  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x01D24C 07:D23C: 85 07     STA ram_0007_temp
C - - - - - 0x01D24E 07:D23E: BD 42 06  LDA ram_obj_pos_X_lo,X
C - - - - - 0x01D251 07:D241: 38        SEC
C - - - - - 0x01D252 07:D242: E9 04     SBC #< $0004
C - - - - - 0x01D254 07:D244: 85 04     STA ram_0004_temp
C - - - - - 0x01D256 07:D246: BD 58 06  LDA ram_obj_pos_X_hi,X
C - - - - - 0x01D259 07:D249: E9 00     SBC #> $0004
C - - - - - 0x01D25B 07:D24B: 85 05     STA ram_0005_temp
C - - - - - 0x01D25D 07:D24D: 20 51 F2  JSR sub_F251
C - - - - - 0x01D260 07:D250: 29 FE     AND #$FE
C - - - - - 0x01D262 07:D252: C9 04     CMP #$04
C - - - - - 0x01D264 07:D254: D0 03     BNE bra_D259
C - - - - - 0x01D266 07:D256: 4C 1E D3  JMP loc_D31E
bra_D259:
C - - - - - 0x01D269 07:D259: BD 84 06  LDA ram_obj_pos_Y_lo,X
C - - - - - 0x01D26C 07:D25C: 18        CLC
C - - - - - 0x01D26D 07:D25D: 69 10     ADC #< $0010
C - - - - - 0x01D26F 07:D25F: 85 06     STA ram_0006_temp
C - - - - - 0x01D271 07:D261: BD 9A 06  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x01D274 07:D264: 69 00     ADC #> $0010
C - - - - - 0x01D276 07:D266: 85 07     STA ram_0007_temp
C - - - - - 0x01D278 07:D268: 20 51 F2  JSR sub_F251
C - - - - - 0x01D27B 07:D26B: C9 01     CMP #$01
C - - - - - 0x01D27D 07:D26D: F0 5A     BEQ bra_D2C9
C - - - - - 0x01D27F 07:D26F: C9 02     CMP #$02
C - - - - - 0x01D281 07:D271: D0 03     BNE bra_D276
C - - - - - 0x01D283 07:D273: 4C F4 D2  JMP loc_D2F4
bra_D276:
C - - - - - 0x01D286 07:D276: C9 0F     CMP #$0F
C - - - - - 0x01D288 07:D278: D0 03     BNE bra_D27D
C - - - - - 0x01D28A 07:D27A: 4C FE D2  JMP loc_D2FE
bra_D27D:
C - - - - - 0x01D28D 07:D27D: C9 0E     CMP #$0E
C - - - - - 0x01D28F 07:D27F: F0 48     BEQ bra_D2C9
C - - - - - 0x01D291 07:D281: BD 84 06  LDA ram_obj_pos_Y_lo,X
C - - - - - 0x01D294 07:D284: 85 06     STA ram_0006_temp
C - - - - - 0x01D296 07:D286: BD 9A 06  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x01D299 07:D289: 85 07     STA ram_0007_temp
C - - - - - 0x01D29B 07:D28B: BD 42 06  LDA ram_obj_pos_X_lo,X
C - - - - - 0x01D29E 07:D28E: 18        CLC
C - - - - - 0x01D29F 07:D28F: 69 04     ADC #< $0004
C - - - - - 0x01D2A1 07:D291: 85 04     STA ram_0004_temp
C - - - - - 0x01D2A3 07:D293: BD 58 06  LDA ram_obj_pos_X_hi,X
C - - - - - 0x01D2A6 07:D296: 69 00     ADC #> $0004
C - - - - - 0x01D2A8 07:D298: 85 05     STA ram_0005_temp
C - - - - - 0x01D2AA 07:D29A: 20 51 F2  JSR sub_F251
C - - - - - 0x01D2AD 07:D29D: 29 FE     AND #$FE
C - - - - - 0x01D2AF 07:D29F: C9 04     CMP #$04
C - - - - - 0x01D2B1 07:D2A1: D0 03     BNE bra_D2A6
C - - - - - 0x01D2B3 07:D2A3: 4C 1E D3  JMP loc_D31E
bra_D2A6:
C - - - - - 0x01D2B6 07:D2A6: BD 84 06  LDA ram_obj_pos_Y_lo,X
C - - - - - 0x01D2B9 07:D2A9: 18        CLC
C - - - - - 0x01D2BA 07:D2AA: 69 10     ADC #< $0010
C - - - - - 0x01D2BC 07:D2AC: 85 06     STA ram_0006_temp
C - - - - - 0x01D2BE 07:D2AE: BD 9A 06  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x01D2C1 07:D2B1: 69 00     ADC #> $0010
C - - - - - 0x01D2C3 07:D2B3: 85 07     STA ram_0007_temp
C - - - - - 0x01D2C5 07:D2B5: 20 51 F2  JSR sub_F251
C - - - - - 0x01D2C8 07:D2B8: C9 01     CMP #$01
C - - - - - 0x01D2CA 07:D2BA: F0 0D     BEQ bra_D2C9
C - - - - - 0x01D2CC 07:D2BC: C9 02     CMP #$02
C - - - - - 0x01D2CE 07:D2BE: F0 34     BEQ bra_D2F4
C - - - - - 0x01D2D0 07:D2C0: C9 0F     CMP #$0F
C - - - - - 0x01D2D2 07:D2C2: F0 3A     BEQ bra_D2FE
C - - - - - 0x01D2D4 07:D2C4: C9 0E     CMP #$0E
C - - - - - 0x01D2D6 07:D2C6: F0 01     BEQ bra_D2C9
C - - - - - 0x01D2D8 07:D2C8: 60        RTS
bra_D2C9:
C - - - - - 0x01D2D9 07:D2C9: 20 93 D5  JSR sub_D593
C - - - - - 0x01D2DC 07:D2CC: A9 00     LDA #$00
C - - - - - 0x01D2DE 07:D2CE: 9D DC 06  STA ram_obj_spd_Y_fr,X
C - - - - - 0x01D2E1 07:D2D1: 9D F2 06  STA ram_obj_spd_Y_lo,X
C - - - - - 0x01D2E4 07:D2D4: 9D 6E 06  STA ram_obj_pos_Y_fr,X
C - - - - - 0x01D2E7 07:D2D7: BD 84 06  LDA ram_obj_pos_Y_lo,X
C - - - - - 0x01D2EA 07:D2DA: 29 F0     AND #$F0
C - - - - - 0x01D2EC 07:D2DC: 9D 84 06  STA ram_obj_pos_Y_lo,X
C - - - - - 0x01D2EF 07:D2DF: AD C2 03  LDA ram_03C2_felix_state
C - - - - - 0x01D2F2 07:D2E2: C9 03     CMP #$03
C - - - - - 0x01D2F4 07:D2E4: D0 05     BNE bra_D2EB_not_jumping
; if jumping
C - - - - - 0x01D2F6 07:D2E6: A9 05     LDA #$05    ; felix is landing after jump
C - - - - - 0x01D2F8 07:D2E8: 8D C2 03  STA ram_03C2_felix_state
bra_D2EB_not_jumping:
C - - - - - 0x01D2FB 07:D2EB: A9 01     LDA #$01
C - - - - - 0x01D2FD 07:D2ED: 8D AF 03  STA ram_03AF
; bzk optimize, JMP
C - - - - - 0x01D300 07:D2F0: 20 3F D9  JSR sub_D93F
C - - - - - 0x01D303 07:D2F3: 60        RTS
bra_D2F4:
loc_D2F4:
C D 2 - - - 0x01D304 07:D2F4: BD 84 06  LDA ram_obj_pos_Y_lo,X
C - - - - - 0x01D307 07:D2F7: 29 0F     AND #$0F
C - - - - - 0x01D309 07:D2F9: C9 07     CMP #$07
C - - - - - 0x01D30B 07:D2FB: 90 CC     BCC bra_D2C9
C - - - - - 0x01D30D 07:D2FD: 60        RTS
bra_D2FE:
loc_D2FE:
C D 2 - - - 0x01D30E 07:D2FE: 8C AF 03  STY ram_03AF
C - - - - - 0x01D311 07:D301: BD 84 06  LDA ram_obj_pos_Y_lo,X
C - - - - - 0x01D314 07:D304: 29 0F     AND #$0F
C - - - - - 0x01D316 07:D306: C9 0A     CMP #$0A
C - - - - - 0x01D318 07:D308: B0 0B     BCS bra_D315
C - - - - - 0x01D31A 07:D30A: A9 00     LDA #< $0200
C - - - - - 0x01D31C 07:D30C: 9D DC 06  STA ram_obj_spd_Y_fr,X
C - - - - - 0x01D31F 07:D30F: A9 02     LDA #> $0200
C - - - - - 0x01D321 07:D311: 9D F2 06  STA ram_obj_spd_Y_lo,X
C - - - - - 0x01D324 07:D314: 60        RTS
bra_D315:
- - - - - - 0x01D325 07:D315: A9 00     LDA #$00
- - - - - - 0x01D327 07:D317: 9D DC 06  STA ram_obj_spd_Y_fr,X
- - - - - - 0x01D32A 07:D31A: 9D F2 06  STA ram_obj_spd_Y_lo,X
- - - - - - 0x01D32D 07:D31D: 60        RTS



loc_D31E:
C D 2 - - - 0x01D32E 07:D31E: 98        TYA
C - - - - - 0x01D32F 07:D31F: 85 02     STA ram_0002_t12
C - - - - - 0x01D331 07:D321: A5 06     LDA ram_0006_temp
C - - - - - 0x01D333 07:D323: 29 F0     AND #$F0
C - - - - - 0x01D335 07:D325: 85 06     STA ram_0006_temp
C - - - - - 0x01D337 07:D327: A5 02     LDA ram_0002_t12
C - - - - - 0x01D339 07:D329: C9 04     CMP #$04
C - - - - - 0x01D33B 07:D32B: D0 03     BNE bra_D330
C - - - - - 0x01D33D 07:D32D: 4C BC D3  JMP loc_D3BC
bra_D330:
C - - - - - 0x01D340 07:D330: C9 05     CMP #$05
C - - - - - 0x01D342 07:D332: D0 03     BNE bra_D337_RTS
C - - - - - 0x01D344 07:D334: 4C 5A D4  JMP loc_D45A
bra_D337_RTS:
- - - - - - 0x01D347 07:D337: 60        RTS



sub_D338:
C - - - - - 0x01D348 07:D338: A9 00     LDA #$00
C - - - - - 0x01D34A 07:D33A: 8D B0 03  STA ram_03B0
C - - - - - 0x01D34D 07:D33D: BD F2 06  LDA ram_obj_spd_Y_lo,X
C - - - - - 0x01D350 07:D340: 10 01     BPL bra_D343
C - - - - - 0x01D352 07:D342: 60        RTS
bra_D343:
C - - - - - 0x01D353 07:D343: BD 42 06  LDA ram_obj_pos_X_lo,X
C - - - - - 0x01D356 07:D346: 85 04     STA ram_0004_temp
C - - - - - 0x01D358 07:D348: BD 58 06  LDA ram_obj_pos_X_hi,X
C - - - - - 0x01D35B 07:D34B: 85 05     STA ram_0005_temp
C - - - - - 0x01D35D 07:D34D: BD 84 06  LDA ram_obj_pos_Y_lo,X
C - - - - - 0x01D360 07:D350: 18        CLC
C - - - - - 0x01D361 07:D351: 69 0F     ADC #< $000F
C - - - - - 0x01D363 07:D353: 85 06     STA ram_0006_temp
C - - - - - 0x01D365 07:D355: BD 9A 06  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x01D368 07:D358: 69 00     ADC #> $000F
C - - - - - 0x01D36A 07:D35A: 85 07     STA ram_0007_temp
C - - - - - 0x01D36C 07:D35C: 20 51 F2  JSR sub_F251
C - - - - - 0x01D36F 07:D35F: C9 04     CMP #$04
C - - - - - 0x01D371 07:D361: F0 25     BEQ bra_D388
C - - - - - 0x01D373 07:D363: C9 05     CMP #$05
C - - - - - 0x01D375 07:D365: D0 03     BNE bra_D36A
C - - - - - 0x01D377 07:D367: 4C 23 D4  JMP loc_D423
bra_D36A:
C - - - - - 0x01D37A 07:D36A: BD 84 06  LDA ram_obj_pos_Y_lo,X
C - - - - - 0x01D37D 07:D36D: 18        CLC
C - - - - - 0x01D37E 07:D36E: 69 0A     ADC #< $000A
C - - - - - 0x01D380 07:D370: 85 06     STA ram_0006_temp
C - - - - - 0x01D382 07:D372: BD 9A 06  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x01D385 07:D375: 69 00     ADC #> $000A
C - - - - - 0x01D387 07:D377: 85 07     STA ram_0007_temp
C - - - - - 0x01D389 07:D379: 20 51 F2  JSR sub_F251
C - - - - - 0x01D38C 07:D37C: C9 04     CMP #$04
C - - - - - 0x01D38E 07:D37E: F0 08     BEQ bra_D388
C - - - - - 0x01D390 07:D380: C9 05     CMP #$05
C - - - - - 0x01D392 07:D382: D0 03     BNE bra_D387_RTS
C - - - - - 0x01D394 07:D384: 4C 23 D4  JMP loc_D423
bra_D387_RTS:
C - - - - - 0x01D397 07:D387: 60        RTS
bra_D388:
C - - - - - 0x01D398 07:D388: A9 01     LDA #$01
C - - - - - 0x01D39A 07:D38A: 8D B0 03  STA ram_03B0
C - - - - - 0x01D39D 07:D38D: A5 06     LDA ram_0006_temp
C - - - - - 0x01D39F 07:D38F: 29 F0     AND #$F0
C - - - - - 0x01D3A1 07:D391: 85 06     STA ram_0006_temp
C - - - - - 0x01D3A3 07:D393: BD 42 06  LDA ram_obj_pos_X_lo,X
C - - - - - 0x01D3A6 07:D396: 29 0F     AND #$0F
C - - - - - 0x01D3A8 07:D398: 49 FF     EOR #$FF
C - - - - - 0x01D3AA 07:D39A: 38        SEC
C - - - - - 0x01D3AB 07:D39B: 65 06     ADC ram_0006_temp
C - - - - - 0x01D3AD 07:D39D: 85 06     STA ram_0006_temp
C - - - - - 0x01D3AF 07:D39F: A5 07     LDA ram_0007_temp
C - - - - - 0x01D3B1 07:D3A1: E9 00     SBC #$00
C - - - - - 0x01D3B3 07:D3A3: 85 07     STA ram_0007_temp
C - - - - - 0x01D3B5 07:D3A5: BD 84 06  LDA ram_obj_pos_Y_lo,X
C - - - - - 0x01D3B8 07:D3A8: 38        SEC
C - - - - - 0x01D3B9 07:D3A9: E5 06     SBC ram_0006_temp
C - - - - - 0x01D3BB 07:D3AB: BD 9A 06  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x01D3BE 07:D3AE: E5 07     SBC ram_0007_temp
C - - - - - 0x01D3C0 07:D3B0: 10 0A     BPL bra_D3BC
C - - - - - 0x01D3C2 07:D3B2: BD 84 06  LDA ram_obj_pos_Y_lo,X
C - - - - - 0x01D3C5 07:D3B5: 38        SEC
C - - - - - 0x01D3C6 07:D3B6: E5 06     SBC ram_0006_temp
C - - - - - 0x01D3C8 07:D3B8: C9 FE     CMP #$FE
C - - - - - 0x01D3CA 07:D3BA: 90 66     BCC bra_D422_RTS
bra_D3BC:
loc_D3BC:
C D 2 - - - 0x01D3CC 07:D3BC: A9 02     LDA #$02
C - - - - - 0x01D3CE 07:D3BE: 8D AF 03  STA ram_03AF
C - - - - - 0x01D3D1 07:D3C1: A5 06     LDA ram_0006_temp
C - - - - - 0x01D3D3 07:D3C3: 9D 84 06  STA ram_obj_pos_Y_lo,X
C - - - - - 0x01D3D6 07:D3C6: A5 07     LDA ram_0007_temp
C - - - - - 0x01D3D8 07:D3C8: 9D 9A 06  STA ram_obj_pos_Y_hi,X
C - - - - - 0x01D3DB 07:D3CB: BD 42 06  LDA ram_obj_pos_X_lo,X
C - - - - - 0x01D3DE 07:D3CE: 38        SEC
C - - - - - 0x01D3DF 07:D3CF: E9 01     SBC #< $0001
C - - - - - 0x01D3E1 07:D3D1: 85 04     STA ram_0004_temp
C - - - - - 0x01D3E3 07:D3D3: BD 58 06  LDA ram_obj_pos_X_hi,X
C - - - - - 0x01D3E6 07:D3D6: E9 00     SBC #> $0001
C - - - - - 0x01D3E8 07:D3D8: 85 05     STA ram_0005_temp
C - - - - - 0x01D3EA 07:D3DA: BD 84 06  LDA ram_obj_pos_Y_lo,X
C - - - - - 0x01D3ED 07:D3DD: 18        CLC
C - - - - - 0x01D3EE 07:D3DE: 69 0F     ADC #< $000F
C - - - - - 0x01D3F0 07:D3E0: 85 06     STA ram_0006_temp
C - - - - - 0x01D3F2 07:D3E2: BD 9A 06  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x01D3F5 07:D3E5: 69 00     ADC #> $000F
C - - - - - 0x01D3F7 07:D3E7: 85 07     STA ram_0007_temp
C - - - - - 0x01D3F9 07:D3E9: 20 51 F2  JSR sub_F251
C - - - - - 0x01D3FC 07:D3EC: C9 05     CMP #$05
C - - - - - 0x01D3FE 07:D3EE: F0 07     BEQ bra_D3F7
C - - - - - 0x01D400 07:D3F0: A9 18     LDA #$18
C - - - - - 0x01D402 07:D3F2: 85 00     STA ram_0000_t78_spd_X_fr
C - - - - - 0x01D404 07:D3F4: 20 3B D6  JSR sub_D63B
bra_D3F7:
C - - - - - 0x01D407 07:D3F7: BD 16 06  LDA ram_0616_obj,X
C - - - - - 0x01D40A 07:D3FA: C9 03     CMP #$03
C - - - - - 0x01D40C 07:D3FC: B0 19     BCS bra_D417
C - - - - - 0x01D40E 07:D3FE: BD B0 06  LDA ram_obj_spd_X_fr,X
C - - - - - 0x01D411 07:D401: 49 FF     EOR #$FF
C - - - - - 0x01D413 07:D403: 18        CLC
; bzk bug?
C - - - - - 0x01D414 07:D404: 65 01     ADC ram_0000_t12_data + $01
C - - - - - 0x01D416 07:D406: 9D DC 06  STA ram_obj_spd_Y_fr,X
C - - - - - 0x01D419 07:D409: BD C6 06  LDA ram_obj_spd_X_lo,X
C - - - - - 0x01D41C 07:D40C: 08        PHP
C - - - - - 0x01D41D 07:D40D: 49 FF     EOR #$FF
C - - - - - 0x01D41F 07:D40F: 28        PLP
C - - - - - 0x01D420 07:D410: 69 00     ADC #$00
C - - - - - 0x01D422 07:D412: 9D F2 06  STA ram_obj_spd_Y_lo,X
C - - - - - 0x01D425 07:D415: 10 08     BPL bra_D41F
bra_D417:
C - - - - - 0x01D427 07:D417: A9 00     LDA #$00
C - - - - - 0x01D429 07:D419: 9D DC 06  STA ram_obj_spd_Y_fr,X
C - - - - - 0x01D42C 07:D41C: 9D F2 06  STA ram_obj_spd_Y_lo,X
bra_D41F:
; bzk optimize, JMP
C - - - - - 0x01D42F 07:D41F: 20 3F D9  JSR sub_D93F
bra_D422_RTS:
C - - - - - 0x01D432 07:D422: 60        RTS



loc_D423:
C D 2 - - - 0x01D433 07:D423: A9 01     LDA #$01
C - - - - - 0x01D435 07:D425: 8D B0 03  STA ram_03B0
C - - - - - 0x01D438 07:D428: A5 06     LDA ram_0006_temp
C - - - - - 0x01D43A 07:D42A: 29 F0     AND #$F0
C - - - - - 0x01D43C 07:D42C: 85 06     STA ram_0006_temp
C - - - - - 0x01D43E 07:D42E: A9 0F     LDA #$0F
C - - - - - 0x01D440 07:D430: 38        SEC
C - - - - - 0x01D441 07:D431: FD 42 06  SBC ram_obj_pos_X_lo,X
C - - - - - 0x01D444 07:D434: 29 0F     AND #$0F
C - - - - - 0x01D446 07:D436: 49 FF     EOR #$FF
C - - - - - 0x01D448 07:D438: 38        SEC
C - - - - - 0x01D449 07:D439: 65 06     ADC ram_0006_temp
C - - - - - 0x01D44B 07:D43B: 85 06     STA ram_0006_temp
C - - - - - 0x01D44D 07:D43D: A5 07     LDA ram_0007_temp
C - - - - - 0x01D44F 07:D43F: E9 00     SBC #$00
C - - - - - 0x01D451 07:D441: 85 07     STA ram_0007_temp
C - - - - - 0x01D453 07:D443: BD 84 06  LDA ram_obj_pos_Y_lo,X
C - - - - - 0x01D456 07:D446: 38        SEC
C - - - - - 0x01D457 07:D447: E5 06     SBC ram_0006_temp
C - - - - - 0x01D459 07:D449: BD 9A 06  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x01D45C 07:D44C: E5 07     SBC ram_0007_temp
C - - - - - 0x01D45E 07:D44E: 10 0A     BPL bra_D45A
C - - - - - 0x01D460 07:D450: BD 84 06  LDA ram_obj_pos_Y_lo,X
C - - - - - 0x01D463 07:D453: 38        SEC
C - - - - - 0x01D464 07:D454: E5 06     SBC ram_0006_temp
C - - - - - 0x01D466 07:D456: C9 FE     CMP #$FE
C - - - - - 0x01D468 07:D458: 90 36     BCC bra_D490_RTS
bra_D45A:
loc_D45A:
C D 2 - - - 0x01D46A 07:D45A: A9 02     LDA #$02
C - - - - - 0x01D46C 07:D45C: 8D AF 03  STA ram_03AF
C - - - - - 0x01D46F 07:D45F: A5 06     LDA ram_0006_temp
C - - - - - 0x01D471 07:D461: 9D 84 06  STA ram_obj_pos_Y_lo,X
C - - - - - 0x01D474 07:D464: A5 07     LDA ram_0007_temp
C - - - - - 0x01D476 07:D466: 9D 9A 06  STA ram_obj_pos_Y_hi,X
C - - - - - 0x01D479 07:D469: A9 18     LDA #$18
C - - - - - 0x01D47B 07:D46B: 85 00     STA ram_0000_t77_spd_X_fr
C - - - - - 0x01D47D 07:D46D: 20 AF D6  JSR sub_D6AF
C - - - - - 0x01D480 07:D470: BD 16 06  LDA ram_0616_obj,X
C - - - - - 0x01D483 07:D473: C9 03     CMP #$03
C - - - - - 0x01D485 07:D475: B0 0E     BCS bra_D485
C - - - - - 0x01D487 07:D477: BD B0 06  LDA ram_obj_spd_X_fr,X
C - - - - - 0x01D48A 07:D47A: 9D DC 06  STA ram_obj_spd_Y_fr,X
C - - - - - 0x01D48D 07:D47D: BD C6 06  LDA ram_obj_spd_X_lo,X
C - - - - - 0x01D490 07:D480: 9D F2 06  STA ram_obj_spd_Y_lo,X
C - - - - - 0x01D493 07:D483: 10 08     BPL bra_D48D
bra_D485:
C - - - - - 0x01D495 07:D485: A9 00     LDA #$00
C - - - - - 0x01D497 07:D487: 9D DC 06  STA ram_obj_spd_Y_fr,X
C - - - - - 0x01D49A 07:D48A: 9D F2 06  STA ram_obj_spd_Y_lo,X
bra_D48D:
; bzk optimize, JMP
C - - - - - 0x01D49D 07:D48D: 20 3F D9  JSR sub_D93F
bra_D490_RTS:
C - - - - - 0x01D4A0 07:D490: 60        RTS



loc_D491:
C D 2 - - - 0x01D4A1 07:D491: BD 9A 06  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x01D4A4 07:D494: 10 0C     BPL bra_D4A2
C - - - - - 0x01D4A6 07:D496: BD 84 06  LDA ram_obj_pos_Y_lo,X
C - - - - - 0x01D4A9 07:D499: C9 D0     CMP #$D0
C - - - - - 0x01D4AB 07:D49B: B0 05     BCS bra_D4A2
C - - - - - 0x01D4AD 07:D49D: A9 D0     LDA #$D0
C - - - - - 0x01D4AF 07:D49F: 9D 84 06  STA ram_obj_pos_Y_lo,X
bra_D4A2:
C - - - - - 0x01D4B2 07:D4A2: BD 42 06  LDA ram_obj_pos_X_lo,X
C - - - - - 0x01D4B5 07:D4A5: 85 04     STA ram_0004_temp
C - - - - - 0x01D4B7 07:D4A7: BD 58 06  LDA ram_obj_pos_X_hi,X
C - - - - - 0x01D4BA 07:D4AA: 85 05     STA ram_0005_temp
C - - - - - 0x01D4BC 07:D4AC: AD C3 03  LDA ram_03C2_felix_prev_state
C - - - - - 0x01D4BF 07:D4AF: C9 07     CMP #$07
C - - - - - 0x01D4C1 07:D4B1: F0 38     BEQ bra_D4EB
; if was ducking
C - - - - - 0x01D4C3 07:D4B3: BD 84 06  LDA ram_obj_pos_Y_lo,X
C - - - - - 0x01D4C6 07:D4B6: 38        SEC
C - - - - - 0x01D4C7 07:D4B7: E9 09     SBC #< $0009
C - - - - - 0x01D4C9 07:D4B9: 85 06     STA ram_0006_temp
C - - - - - 0x01D4CB 07:D4BB: BD 9A 06  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x01D4CE 07:D4BE: E9 00     SBC #> $0009
C - - - - - 0x01D4D0 07:D4C0: 85 07     STA ram_0007_temp
C - - - - - 0x01D4D2 07:D4C2: 20 51 F2  JSR sub_F251
C - - - - - 0x01D4D5 07:D4C5: C9 01     CMP #$01
C - - - - - 0x01D4D7 07:D4C7: F0 05     BEQ bra_D4CE
C - - - - - 0x01D4D9 07:D4C9: C9 0E     CMP #$0E
C - - - - - 0x01D4DB 07:D4CB: B0 01     BCS bra_D4CE
C - - - - - 0x01D4DD 07:D4CD: 60        RTS
bra_D4CE:
C - - - - - 0x01D4DE 07:D4CE: A9 00     LDA #$00
C - - - - - 0x01D4E0 07:D4D0: 9D DC 06  STA ram_obj_spd_Y_fr,X
C - - - - - 0x01D4E3 07:D4D3: 9D F2 06  STA ram_obj_spd_Y_lo,X
C - - - - - 0x01D4E6 07:D4D6: 9D 6E 06  STA ram_obj_pos_Y_fr,X
C - - - - - 0x01D4E9 07:D4D9: A5 06     LDA ram_0006_temp
C - - - - - 0x01D4EB 07:D4DB: 29 F0     AND #$F0
C - - - - - 0x01D4ED 07:D4DD: 18        CLC
C - - - - - 0x01D4EE 07:D4DE: 69 19     ADC #< $0019
C - - - - - 0x01D4F0 07:D4E0: 9D 84 06  STA ram_obj_pos_Y_lo,X
C - - - - - 0x01D4F3 07:D4E3: A5 07     LDA ram_0007_temp
C - - - - - 0x01D4F5 07:D4E5: 69 00     ADC #> $0019
C - - - - - 0x01D4F7 07:D4E7: 9D 9A 06  STA ram_obj_pos_Y_hi,X
C - - - - - 0x01D4FA 07:D4EA: 60        RTS
bra_D4EB:
C - - - - - 0x01D4FB 07:D4EB: BD 84 06  LDA ram_obj_pos_Y_lo,X
C - - - - - 0x01D4FE 07:D4EE: 38        SEC
C - - - - - 0x01D4FF 07:D4EF: E9 01     SBC #< $0001
C - - - - - 0x01D501 07:D4F1: 85 06     STA ram_0006_temp
C - - - - - 0x01D503 07:D4F3: BD 9A 06  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x01D506 07:D4F6: E9 00     SBC #> $0001
C - - - - - 0x01D508 07:D4F8: 85 07     STA ram_0007_temp
C - - - - - 0x01D50A 07:D4FA: 20 51 F2  JSR sub_F251
C - - - - - 0x01D50D 07:D4FD: C9 01     CMP #$01
C - - - - - 0x01D50F 07:D4FF: F0 05     BEQ bra_D506
C - - - - - 0x01D511 07:D501: C9 0E     CMP #$0E
C - - - - - 0x01D513 07:D503: B0 01     BCS bra_D506
C - - - - - 0x01D515 07:D505: 60        RTS
bra_D506:
C - - - - - 0x01D516 07:D506: A9 00     LDA #$00
C - - - - - 0x01D518 07:D508: 9D DC 06  STA ram_obj_spd_Y_fr,X
C - - - - - 0x01D51B 07:D50B: 9D F2 06  STA ram_obj_spd_Y_lo,X
C - - - - - 0x01D51E 07:D50E: 9D 6E 06  STA ram_obj_pos_Y_fr,X
C - - - - - 0x01D521 07:D511: A5 06     LDA ram_0006_temp
C - - - - - 0x01D523 07:D513: 29 F0     AND #$F0
C - - - - - 0x01D525 07:D515: 18        CLC
C - - - - - 0x01D526 07:D516: 69 0F     ADC #< $000F
C - - - - - 0x01D528 07:D518: 9D 84 06  STA ram_obj_pos_Y_lo,X
C - - - - - 0x01D52B 07:D51B: A5 07     LDA ram_0007_temp
C - - - - - 0x01D52D 07:D51D: 69 00     ADC #> $000F
C - - - - - 0x01D52F 07:D51F: 9D 9A 06  STA ram_obj_pos_Y_hi,X
C - - - - - 0x01D532 07:D522: 60        RTS



loc_D523:
C D 2 - - - 0x01D533 07:D523: BD A2 07  LDA ram_07A2_obj,X
C - - - - - 0x01D536 07:D526: 48        PHA
C - - - - - 0x01D537 07:D527: A9 00     LDA #$00
C - - - - - 0x01D539 07:D529: 9D 8C 07  STA ram_078C_obj,X
C - - - - - 0x01D53C 07:D52C: 9D A2 07  STA ram_07A2_obj,X
C - - - - - 0x01D53F 07:D52F: 68        PLA
C - - - - - 0x01D540 07:D530: BC B8 07  LDY ram_07B8_obj,X
C - - - - - 0x01D543 07:D533: B9 00 06  LDA ram_0600_obj_id,Y
C - - - - - 0x01D546 07:D536: C9 10     CMP #con_obj_id_10
C - - - - - 0x01D548 07:D538: F0 50     BEQ bra_D58A_spring
; * 04
C - - - - - 0x01D54A 07:D53A: 0A        ASL
C - - - - - 0x01D54B 07:D53B: 0A        ASL
C - - - - - 0x01D54C 07:D53C: A8        TAY
C - - - - - 0x01D54D 07:D53D: A9 F2     LDA #$F2
C - - - - - 0x01D54F 07:D53F: 38        SEC
C - - - - - 0x01D550 07:D540: F9 2C A8  SBC tbl_0x01A83C_object_handler,Y
C - - - - - 0x01D553 07:D543: BC B8 07  LDY ram_07B8_obj,X
C - - - - - 0x01D556 07:D546: 18        CLC
C - - - - - 0x01D557 07:D547: 79 84 06  ADC ram_obj_pos_Y_lo,Y
C - - - - - 0x01D55A 07:D54A: 9D 84 06  STA ram_obj_pos_Y_lo,X
C - - - - - 0x01D55D 07:D54D: B9 9A 06  LDA ram_obj_pos_Y_hi,Y
C - - - - - 0x01D560 07:D550: 69 FF     ADC #$FF
C - - - - - 0x01D562 07:D552: 9D 9A 06  STA ram_obj_pos_Y_hi,X
C - - - - - 0x01D565 07:D555: BD DC 06  LDA ram_obj_spd_Y_fr,X
C - - - - - 0x01D568 07:D558: 38        SEC
C - - - - - 0x01D569 07:D559: ED 22 04  SBC ram_copy_obj_spd_Y_fr
C - - - - - 0x01D56C 07:D55C: BD F2 06  LDA ram_obj_spd_Y_lo,X
C - - - - - 0x01D56F 07:D55F: ED 23 04  SBC ram_copy_obj_spd_Y_lo
C - - - - - 0x01D572 07:D562: C9 80     CMP #$80
C - - - - - 0x01D574 07:D564: 90 03     BCC bra_D569
C - - - - - 0x01D576 07:D566: 4C 22 D2  JMP loc_D222
bra_D569:
C - - - - - 0x01D579 07:D569: 20 93 D5  JSR sub_D593
C - - - - - 0x01D57C 07:D56C: AD 22 04  LDA ram_copy_obj_spd_Y_fr
C - - - - - 0x01D57F 07:D56F: 9D DC 06  STA ram_obj_spd_Y_fr,X
C - - - - - 0x01D582 07:D572: AD 23 04  LDA ram_copy_obj_spd_Y_lo
C - - - - - 0x01D585 07:D575: 9D F2 06  STA ram_obj_spd_Y_lo,X
C - - - - - 0x01D588 07:D578: A9 00     LDA #$00
C - - - - - 0x01D58A 07:D57A: 9D 6E 06  STA ram_obj_pos_Y_fr,X
C - - - - - 0x01D58D 07:D57D: AD C2 03  LDA ram_03C2_felix_state
; bzk optimize, useless check, C is not needed later
C - - - - - 0x01D590 07:D580: C9 03     CMP #$03
C - - - - - 0x01D592 07:D582: A9 01     LDA #$01
C - - - - - 0x01D594 07:D584: 8D AF 03  STA ram_03AF
C - - - - - 0x01D597 07:D587: 4C 22 D2  JMP loc_D222
bra_D58A_spring:
C - - - - - 0x01D59A 07:D58A: A9 02     LDA #$02
C - - - - - 0x01D59C 07:D58C: 99 34 07  STA ram_0734_obj,Y
C - - - - - 0x01D59F 07:D58F: 4C 22 D2  JMP loc_D222
bra_D592_RTS:
C - - - - - 0x01D5A2 07:D592: 60        RTS



sub_D593:
C - - - - - 0x01D5A3 07:D593: AD C3 03  LDA ram_03C2_felix_prev_state
C - - - - - 0x01D5A6 07:D596: C9 07     CMP #$07
C - - - - - 0x01D5A8 07:D598: F0 75     BEQ bra_D60F
; if was ducking
C - - - - - 0x01D5AA 07:D59A: AD B5 03  LDA ram_03B5
C - - - - - 0x01D5AD 07:D59D: 85 04     STA ram_0004_temp
loc_D59F:
C D 2 - - - 0x01D5AF 07:D59F: A5 2D     LDA ram_002D_btn
C - - - - - 0x01D5B1 07:D5A1: 29 C0     AND #con_btns_LR
C - - - - - 0x01D5B3 07:D5A3: D0 ED     BNE bra_D592_RTS
sub_D5A5:
loc_D5A5:
C D 2 - - - 0x01D5B5 07:D5A5: BD B0 06  LDA ram_obj_spd_X_fr,X
C - - - - - 0x01D5B8 07:D5A8: 38        SEC
C - - - - - 0x01D5B9 07:D5A9: ED 20 04  SBC ram_copy_obj_spd_X_fr
C - - - - - 0x01D5BC 07:D5AC: 9D B0 06  STA ram_obj_spd_X_fr,X
C - - - - - 0x01D5BF 07:D5AF: BD C6 06  LDA ram_obj_spd_X_lo,X
C - - - - - 0x01D5C2 07:D5B2: ED 21 04  SBC ram_copy_obj_spd_X_lo
C - - - - - 0x01D5C5 07:D5B5: 9D C6 06  STA ram_obj_spd_X_lo,X
C - - - - - 0x01D5C8 07:D5B8: 1D B0 06  ORA ram_obj_spd_X_fr,X
C - - - - - 0x01D5CB 07:D5BB: F0 36     BEQ bra_D5F3
C - - - - - 0x01D5CD 07:D5BD: BD C6 06  LDA ram_obj_spd_X_lo,X
C - - - - - 0x01D5D0 07:D5C0: 30 16     BMI bra_D5D8
C - - - - - 0x01D5D2 07:D5C2: BD B0 06  LDA ram_obj_spd_X_fr,X
C - - - - - 0x01D5D5 07:D5C5: 38        SEC
C - - - - - 0x01D5D6 07:D5C6: E5 04     SBC ram_0004_temp
C - - - - - 0x01D5D8 07:D5C8: 9D B0 06  STA ram_obj_spd_X_fr,X
C - - - - - 0x01D5DB 07:D5CB: BD C6 06  LDA ram_obj_spd_X_lo,X
C - - - - - 0x01D5DE 07:D5CE: E9 00     SBC #$00
C - - - - - 0x01D5E0 07:D5D0: 9D C6 06  STA ram_obj_spd_X_lo,X
C - - - - - 0x01D5E3 07:D5D3: B0 1E     BCS bra_D5F3
C - - - - - 0x01D5E5 07:D5D5: 4C EB D5  JMP loc_D5EB
bra_D5D8:
C - - - - - 0x01D5E8 07:D5D8: BD B0 06  LDA ram_obj_spd_X_fr,X
C - - - - - 0x01D5EB 07:D5DB: 18        CLC
C - - - - - 0x01D5EC 07:D5DC: 65 04     ADC ram_0004_temp
C - - - - - 0x01D5EE 07:D5DE: 9D B0 06  STA ram_obj_spd_X_fr,X
C - - - - - 0x01D5F1 07:D5E1: BD C6 06  LDA ram_obj_spd_X_lo,X
C - - - - - 0x01D5F4 07:D5E4: 69 00     ADC #$00
C - - - - - 0x01D5F6 07:D5E6: 9D C6 06  STA ram_obj_spd_X_lo,X
C - - - - - 0x01D5F9 07:D5E9: 90 08     BCC bra_D5F3
loc_D5EB:
C D 2 - - - 0x01D5FB 07:D5EB: A9 00     LDA #$00
C - - - - - 0x01D5FD 07:D5ED: 9D B0 06  STA ram_obj_spd_X_fr,X
C - - - - - 0x01D600 07:D5F0: 9D C6 06  STA ram_obj_spd_X_lo,X
bra_D5F3:
C - - - - - 0x01D603 07:D5F3: BD B0 06  LDA ram_obj_spd_X_fr,X
C - - - - - 0x01D606 07:D5F6: 18        CLC
C - - - - - 0x01D607 07:D5F7: 6D 20 04  ADC ram_copy_obj_spd_X_fr
C - - - - - 0x01D60A 07:D5FA: 9D B0 06  STA ram_obj_spd_X_fr,X
C - - - - - 0x01D60D 07:D5FD: BD C6 06  LDA ram_obj_spd_X_lo,X
C - - - - - 0x01D610 07:D600: 6D 21 04  ADC ram_copy_obj_spd_X_lo
C - - - - - 0x01D613 07:D603: 9D C6 06  STA ram_obj_spd_X_lo,X
C - - - - - 0x01D616 07:D606: 60        RTS



sub_D607:
C - - - - - 0x01D617 07:D607: AD B6 03  LDA ram_03B6
C - - - - - 0x01D61A 07:D60A: 85 04     STA ram_0004_temp
C - - - - - 0x01D61C 07:D60C: 4C 9F D5  JMP loc_D59F



bra_D60F:
C - - - - - 0x01D61F 07:D60F: AD B5 03  LDA ram_03B5
; / 08
C - - - - - 0x01D622 07:D612: 4A        LSR
C - - - - - 0x01D623 07:D613: 4A        LSR
C - - - - - 0x01D624 07:D614: 4A        LSR
C - - - - - 0x01D625 07:D615: 85 04     STA ram_0004_temp
C - - - - - 0x01D627 07:D617: 4C A5 D5  JMP loc_D5A5



sub_D61A:
C - - - - - 0x01D62A 07:D61A: BD 76 07  LDA ram_0776_obj_flags,X
C - - - - - 0x01D62D 07:D61D: 09 40     ORA #con_0776_flip_H
C - - - - - 0x01D62F 07:D61F: 9D 76 07  STA ram_0776_obj_flags,X
C - - - - - 0x01D632 07:D622: AD B3 03  LDA ram_03B3
C - - - - - 0x01D635 07:D625: 85 00     STA ram_0000_t78_spd_X_fr
C - - - - - 0x01D637 07:D627: BD B0 06  LDA ram_obj_spd_X_fr,X
C - - - - - 0x01D63A 07:D62A: 18        CLC
C - - - - - 0x01D63B 07:D62B: ED 20 04  SBC ram_copy_obj_spd_X_fr
C - - - - - 0x01D63E 07:D62E: BD C6 06  LDA ram_obj_spd_X_lo,X
C - - - - - 0x01D641 07:D631: ED 21 04  SBC ram_copy_obj_spd_X_lo
C - - - - - 0x01D644 07:D634: 30 05     BMI bra_D63B
C - - - - - 0x01D646 07:D636: AD B4 03  LDA ram_03B4
C - - - - - 0x01D649 07:D639: 85 00     STA ram_0000_t78_spd_X_fr
bra_D63B:
sub_D63B:
C - - - - - 0x01D64B 07:D63B: BD B0 06  LDA ram_obj_spd_X_fr,X
C - - - - - 0x01D64E 07:D63E: 38        SEC
C - - - - - 0x01D64F 07:D63F: E5 00     SBC ram_0000_t78_spd_X_fr
C - - - - - 0x01D651 07:D641: 9D B0 06  STA ram_obj_spd_X_fr,X
C - - - - - 0x01D654 07:D644: BD C6 06  LDA ram_obj_spd_X_lo,X
C - - - - - 0x01D657 07:D647: E9 00     SBC #$00
C - - - - - 0x01D659 07:D649: 9D C6 06  STA ram_obj_spd_X_lo,X
C - - - - - 0x01D65C 07:D64C: 10 1F     BPL bra_D66D_RTS
C - - - - - 0x01D65E 07:D64E: BD 16 06  LDA ram_0616_obj,X
C - - - - - 0x01D661 07:D651: C9 03     CMP #$03
C - - - - - 0x01D663 07:D653: B0 19     BCS bra_D66E
bra_D655:
C - - - - - 0x01D665 07:D655: BD C6 06  LDA ram_obj_spd_X_lo,X
C - - - - - 0x01D668 07:D658: C9 FE     CMP #> $FEEB
C - - - - - 0x01D66A 07:D65A: B0 11     BCS bra_D66D_RTS
C - - - - - 0x01D66C 07:D65C: BD B0 06  LDA ram_obj_spd_X_fr,X
C - - - - - 0x01D66F 07:D65F: C9 EB     CMP #< $FEEB
C - - - - - 0x01D671 07:D661: B0 0A     BCS bra_D66D_RTS
C - - - - - 0x01D673 07:D663: A9 FD     LDA #> $FDEB
C - - - - - 0x01D675 07:D665: 9D C6 06  STA ram_obj_spd_X_lo,X
C - - - - - 0x01D678 07:D668: A9 EB     LDA #< $FDEB
C - - - - - 0x01D67A 07:D66A: 9D B0 06  STA ram_obj_spd_X_fr,X
bra_D66D_RTS:
C - - - - - 0x01D67D 07:D66D: 60        RTS
bra_D66E:
C - - - - - 0x01D67E 07:D66E: AD BF 03  LDA ram_03BF_weapon_upgrade
C - - - - - 0x01D681 07:D671: C9 07     CMP #con_weapon_airplane
C - - - - - 0x01D683 07:D673: F0 E0     BEQ bra_D655
C - - - - - 0x01D685 07:D675: BD C6 06  LDA ram_obj_spd_X_lo,X
C - - - - - 0x01D688 07:D678: C9 FF     CMP #> $FF56
C - - - - - 0x01D68A 07:D67A: B0 F1     BCS bra_D66D_RTS
C - - - - - 0x01D68C 07:D67C: BD B0 06  LDA ram_obj_spd_X_fr,X
C - - - - - 0x01D68F 07:D67F: C9 56     CMP #< $FF56
C - - - - - 0x01D691 07:D681: B0 EA     BCS bra_D66D_RTS
C - - - - - 0x01D693 07:D683: A9 FE     LDA #> $FE56
C - - - - - 0x01D695 07:D685: 9D C6 06  STA ram_obj_spd_X_lo,X
C - - - - - 0x01D698 07:D688: A9 56     LDA #< $FE56
C - - - - - 0x01D69A 07:D68A: 9D B0 06  STA ram_obj_spd_X_fr,X
C - - - - - 0x01D69D 07:D68D: 60        RTS



sub_D68E:
C - - - - - 0x01D69E 07:D68E: BD 76 07  LDA ram_0776_obj_flags,X
C - - - - - 0x01D6A1 07:D691: 29 BF     AND #con_0776_flip_H ^ $FF
C - - - - - 0x01D6A3 07:D693: 9D 76 07  STA ram_0776_obj_flags,X
C - - - - - 0x01D6A6 07:D696: AD B3 03  LDA ram_03B3
C - - - - - 0x01D6A9 07:D699: 85 00     STA ram_0000_t77_spd_X_fr
C - - - - - 0x01D6AB 07:D69B: BD B0 06  LDA ram_obj_spd_X_fr,X
C - - - - - 0x01D6AE 07:D69E: 38        SEC
C - - - - - 0x01D6AF 07:D69F: ED 20 04  SBC ram_copy_obj_spd_X_fr
C - - - - - 0x01D6B2 07:D6A2: BD C6 06  LDA ram_obj_spd_X_lo,X
C - - - - - 0x01D6B5 07:D6A5: ED 21 04  SBC ram_copy_obj_spd_X_lo
C - - - - - 0x01D6B8 07:D6A8: 10 05     BPL bra_D6AF
C - - - - - 0x01D6BA 07:D6AA: AD B4 03  LDA ram_03B4
C - - - - - 0x01D6BD 07:D6AD: 85 00     STA ram_0000_t77_spd_X_fr
bra_D6AF:
sub_D6AF:
C - - - - - 0x01D6BF 07:D6AF: BD B0 06  LDA ram_obj_spd_X_fr,X
C - - - - - 0x01D6C2 07:D6B2: 18        CLC
C - - - - - 0x01D6C3 07:D6B3: 65 00     ADC ram_0000_t77_spd_X_fr
C - - - - - 0x01D6C5 07:D6B5: 9D B0 06  STA ram_obj_spd_X_fr,X
C - - - - - 0x01D6C8 07:D6B8: BD C6 06  LDA ram_obj_spd_X_lo,X
C - - - - - 0x01D6CB 07:D6BB: 69 00     ADC #$00
C - - - - - 0x01D6CD 07:D6BD: 9D C6 06  STA ram_obj_spd_X_lo,X
C - - - - - 0x01D6D0 07:D6C0: 30 1F     BMI bra_D6E1_RTS
C - - - - - 0x01D6D2 07:D6C2: BD 16 06  LDA ram_0616_obj,X
C - - - - - 0x01D6D5 07:D6C5: C9 03     CMP #$03
C - - - - - 0x01D6D7 07:D6C7: B0 19     BCS bra_D6E2
bra_D6C9:
C - - - - - 0x01D6D9 07:D6C9: BD C6 06  LDA ram_obj_spd_X_lo,X
C - - - - - 0x01D6DC 07:D6CC: C9 02     CMP #> $0215
C - - - - - 0x01D6DE 07:D6CE: 90 11     BCC bra_D6E1_RTS
C - - - - - 0x01D6E0 07:D6D0: BD B0 06  LDA ram_obj_spd_X_fr,X
C - - - - - 0x01D6E3 07:D6D3: C9 15     CMP #< $0215
C - - - - - 0x01D6E5 07:D6D5: 90 0A     BCC bra_D6E1_RTS
C - - - - - 0x01D6E7 07:D6D7: A9 02     LDA #> $0215
C - - - - - 0x01D6E9 07:D6D9: 9D C6 06  STA ram_obj_spd_X_lo,X
C - - - - - 0x01D6EC 07:D6DC: A9 15     LDA #< $0215
C - - - - - 0x01D6EE 07:D6DE: 9D B0 06  STA ram_obj_spd_X_fr,X
bra_D6E1_RTS:
C - - - - - 0x01D6F1 07:D6E1: 60        RTS
bra_D6E2:
C - - - - - 0x01D6F2 07:D6E2: AD BF 03  LDA ram_03BF_weapon_upgrade
C - - - - - 0x01D6F5 07:D6E5: C9 07     CMP #con_weapon_airplane
C - - - - - 0x01D6F7 07:D6E7: F0 E0     BEQ bra_D6C9
C - - - - - 0x01D6F9 07:D6E9: BD C6 06  LDA ram_obj_spd_X_lo,X
C - - - - - 0x01D6FC 07:D6EC: C9 01     CMP #> $01AA
C - - - - - 0x01D6FE 07:D6EE: 90 F1     BCC bra_D6E1_RTS
C - - - - - 0x01D700 07:D6F0: BD B0 06  LDA ram_obj_spd_X_fr,X
C - - - - - 0x01D703 07:D6F3: C9 AA     CMP #< $01AA
C - - - - - 0x01D705 07:D6F5: 90 EA     BCC bra_D6E1_RTS
C - - - - - 0x01D707 07:D6F7: A9 01     LDA #> $01AA
C - - - - - 0x01D709 07:D6F9: 9D C6 06  STA ram_obj_spd_X_lo,X
C - - - - - 0x01D70C 07:D6FC: A9 AA     LDA #< $01AA
C - - - - - 0x01D70E 07:D6FE: 9D B0 06  STA ram_obj_spd_X_fr,X
C - - - - - 0x01D711 07:D701: 60        RTS



sub_D702:
C - - - - - 0x01D712 07:D702: AD B1 03  LDA ram_03B1
C - - - - - 0x01D715 07:D705: D0 25     BNE bra_D72C_RTS
C - - - - - 0x01D717 07:D707: A5 2D     LDA ram_002D_btn
C - - - - - 0x01D719 07:D709: 29 01     AND #con_btn_A
C - - - - - 0x01D71B 07:D70B: D0 0C     BNE bra_D719
C - - - - - 0x01D71D 07:D70D: BD F2 06  LDA ram_obj_spd_Y_lo,X
C - - - - - 0x01D720 07:D710: 10 07     BPL bra_D719
C - - - - - 0x01D722 07:D712: C9 FF     CMP #$FF
C - - - - - 0x01D724 07:D714: B0 03     BCS bra_D719
C - - - - - 0x01D726 07:D716: FE F2 06  INC ram_obj_spd_Y_lo,X
bra_D719:
C - - - - - 0x01D729 07:D719: BD 16 06  LDA ram_0616_obj,X
C - - - - - 0x01D72C 07:D71C: C9 03     CMP #$03
C - - - - - 0x01D72E 07:D71E: 90 03     BCC bra_D723
C - - - - - 0x01D730 07:D720: 4C 2D D7  JMP loc_D72D
bra_D723:
C - - - - - 0x01D733 07:D723: A9 06     LDA #$06
C - - - - - 0x01D735 07:D725: 85 3C     STA ram_003C
C - - - - - 0x01D737 07:D727: A9 2D     LDA #$2D
; bzk optimize, JMP
C - - - - - 0x01D739 07:D729: 20 17 89  JSR sub_0x018927_add_spd_Y
bra_D72C_RTS:
C - - - - - 0x01D73C 07:D72C: 60        RTS



loc_D72D:
C D 2 - - - 0x01D73D 07:D72D: C9 04     CMP #$04
C - - - - - 0x01D73F 07:D72F: D0 03     BNE bra_D734
C - - - - - 0x01D741 07:D731: 4C 44 D7  JMP loc_D744
bra_D734:
C - - - - - 0x01D744 07:D734: A5 2D     LDA ram_002D_btn
C - - - - - 0x01D746 07:D736: 29 10     AND #con_btn_Up
C - - - - - 0x01D748 07:D738: D0 3B     BNE bra_D775
C - - - - - 0x01D74A 07:D73A: A9 03     LDA #$03
C - - - - - 0x01D74C 07:D73C: 85 3C     STA ram_003C
C - - - - - 0x01D74E 07:D73E: A9 08     LDA #$08
; bzk optimize, JMP
C - - - - - 0x01D750 07:D740: 20 17 89  JSR sub_0x018927_add_spd_Y
C - - - - - 0x01D753 07:D743: 60        RTS



loc_D744:
C D 2 - - - 0x01D754 07:D744: AD C5 03  LDA ram_round_type
C - - - - - 0x01D757 07:D747: C9 04     CMP #$04
C - - - - - 0x01D759 07:D749: F0 1A     BEQ bra_D765_space
; if not space
C - - - - - 0x01D75B 07:D74B: BD F2 06  LDA ram_obj_spd_Y_lo,X
C - - - - - 0x01D75E 07:D74E: 30 05     BMI bra_D755
C - - - - - 0x01D760 07:D750: A9 04     LDA #$04    ; descending in aerial rounds
C - - - - - 0x01D762 07:D752: 8D C2 03  STA ram_03C2_felix_state
bra_D755:
C - - - - - 0x01D765 07:D755: A5 2D     LDA ram_002D_btn
C - - - - - 0x01D767 07:D757: 29 10     AND #con_btn_Up
C - - - - - 0x01D769 07:D759: D0 1A     BNE bra_D775
C - - - - - 0x01D76B 07:D75B: A9 02     LDA #$02
C - - - - - 0x01D76D 07:D75D: 85 3C     STA ram_003C
C - - - - - 0x01D76F 07:D75F: A9 06     LDA #$06
; bzk optimize, JMP
C - - - - - 0x01D771 07:D761: 20 17 89  JSR sub_0x018927_add_spd_Y
C - - - - - 0x01D774 07:D764: 60        RTS
bra_D765_space:
C - - - - - 0x01D775 07:D765: A5 2D     LDA ram_002D_btn
C - - - - - 0x01D777 07:D767: 29 10     AND #con_btn_Up
C - - - - - 0x01D779 07:D769: D0 0A     BNE bra_D775
C - - - - - 0x01D77B 07:D76B: A9 01     LDA #$01
C - - - - - 0x01D77D 07:D76D: 85 3C     STA ram_003C
C - - - - - 0x01D77F 07:D76F: A9 04     LDA #$04
; bzk optimize, JMP
C - - - - - 0x01D781 07:D771: 20 17 89  JSR sub_0x018927_add_spd_Y
C - - - - - 0x01D784 07:D774: 60        RTS
bra_D775:
C - - - - - 0x01D785 07:D775: 18        CLC
C - - - - - 0x01D786 07:D776: 7D DC 06  ADC ram_obj_spd_Y_fr,X
C - - - - - 0x01D789 07:D779: 9D DC 06  STA ram_obj_spd_Y_fr,X
C - - - - - 0x01D78C 07:D77C: BD F2 06  LDA ram_obj_spd_Y_lo,X
C - - - - - 0x01D78F 07:D77F: 69 00     ADC #$00
C - - - - - 0x01D791 07:D781: 9D F2 06  STA ram_obj_spd_Y_lo,X
C - - - - - 0x01D794 07:D784: 30 11     BMI bra_D797_RTS
C - - - - - 0x01D796 07:D786: A9 00     LDA #$00
C - - - - - 0x01D798 07:D788: 9D F2 06  STA ram_obj_spd_Y_lo,X
C - - - - - 0x01D79B 07:D78B: BD DC 06  LDA ram_obj_spd_Y_fr,X
C - - - - - 0x01D79E 07:D78E: C9 6A     CMP #$6A
C - - - - - 0x01D7A0 07:D790: 90 05     BCC bra_D797_RTS
C - - - - - 0x01D7A2 07:D792: A9 6A     LDA #$6A
C - - - - - 0x01D7A4 07:D794: 9D DC 06  STA ram_obj_spd_Y_fr,X
bra_D797_RTS:
C - - - - - 0x01D7A7 07:D797: 60        RTS



sub_D798:
C - - - - - 0x01D7A8 07:D798: AD 9A 06  LDA ram_obj_pos_Y_hi
C - - - - - 0x01D7AB 07:D79B: 30 07     BMI bra_D7A4
C - - - - - 0x01D7AD 07:D79D: C9 02     CMP #$02
C - - - - - 0x01D7AF 07:D79F: 90 03     BCC bra_D7A4
C - - - - - 0x01D7B1 07:D7A1: 4C 22 D8  JMP loc_D822
bra_D7A4:
C - - - - - 0x01D7B4 07:D7A4: BD 16 06  LDA ram_0616_obj,X
C - - - - - 0x01D7B7 07:D7A7: C9 03     CMP #$03
C - - - - - 0x01D7B9 07:D7A9: 90 03     BCC bra_D7AE
C - - - - - 0x01D7BB 07:D7AB: 4C 37 D8  JMP loc_D837
bra_D7AE:
C - - - - - 0x01D7BE 07:D7AE: AD AF 03  LDA ram_03AF
C - - - - - 0x01D7C1 07:D7B1: 0D B2 03  ORA ram_03B2
C - - - - - 0x01D7C4 07:D7B4: F0 3D     BEQ bra_D7F3_RTS
C - - - - - 0x01D7C6 07:D7B6: C9 0F     CMP #$0F
C - - - - - 0x01D7C8 07:D7B8: F0 3A     BEQ bra_D7F4
C - - - - - 0x01D7CA 07:D7BA: A5 2E     LDA ram_002E_btn
C - - - - - 0x01D7CC 07:D7BC: 29 01     AND #con_btn_A
C - - - - - 0x01D7CE 07:D7BE: F0 33     BEQ bra_D7F3_RTS
C - - - - - 0x01D7D0 07:D7C0: A9 FE     LDA #$FE
C - - - - - 0x01D7D2 07:D7C2: 85 00     STA ram_0000_t79_spd_Y_fr
C - - - - - 0x01D7D4 07:D7C4: A9 FA     LDA #$FA    ; FAFE
C - - - - - 0x01D7D6 07:D7C6: 85 01     STA ram_0001_t08_spd_Y_lo
C - - - - - 0x01D7D8 07:D7C8: BD C6 06  LDA ram_obj_spd_X_lo,X
C - - - - - 0x01D7DB 07:D7CB: 10 05     BPL bra_D7D2
C - - - - - 0x01D7DD 07:D7CD: 49 FF     EOR #$FF
C - - - - - 0x01D7DF 07:D7CF: 18        CLC
C - - - - - 0x01D7E0 07:D7D0: 69 01     ADC #$01
bra_D7D2:
C - - - - - 0x01D7E2 07:D7D2: C9 02     CMP #$02
C - - - - - 0x01D7E4 07:D7D4: 90 04     BCC bra_D7DA
C - - - - - 0x01D7E6 07:D7D6: A9 94     LDA #$94    ; FA94
C - - - - - 0x01D7E8 07:D7D8: 85 00     STA ram_0000_t79_spd_Y_fr
bra_D7DA:
C - - - - - 0x01D7EA 07:D7DA: A5 01     LDA ram_0001_t08_spd_Y_lo
C - - - - - 0x01D7EC 07:D7DC: 9D F2 06  STA ram_obj_spd_Y_lo,X
C - - - - - 0x01D7EF 07:D7DF: A5 00     LDA ram_0000_t79_spd_Y_fr
C - - - - - 0x01D7F1 07:D7E1: 9D DC 06  STA ram_obj_spd_Y_fr,X
loc_D7E4_jump:
C D 2 - - - 0x01D7F4 07:D7E4: A9 03     LDA #$03    ; felix is jumping
C - - - - - 0x01D7F6 07:D7E6: 8D C2 03  STA ram_03C2_felix_state
C - - - - - 0x01D7F9 07:D7E9: A9 0A     LDA #con_sfx_0A
C - - - - - 0x01D7FB 07:D7EB: 20 1A FF  JSR sub_FF1A_play_sound
C - - - - - 0x01D7FE 07:D7EE: A9 00     LDA #$00
C - - - - - 0x01D800 07:D7F0: 8D B1 03  STA ram_03B1
bra_D7F3_RTS:
loc_D7F3_RTS:   ; bzk optimize
C D 2 - - - 0x01D803 07:D7F3: 60        RTS
bra_D7F4:
loc_D7F4:
C D 2 - - - 0x01D804 07:D7F4: A5 2D     LDA ram_002D_btn
C - - - - - 0x01D806 07:D7F6: 29 01     AND #con_btn_A
C - - - - - 0x01D808 07:D7F8: D0 1B     BNE bra_D815
C - - - - - 0x01D80A 07:D7FA: BD 84 06  LDA ram_obj_pos_Y_lo,X
C - - - - - 0x01D80D 07:D7FD: 29 0F     AND #$0F
C - - - - - 0x01D80F 07:D7FF: C9 08     CMP #$08
C - - - - - 0x01D811 07:D801: 90 F0     BCC bra_D7F3_RTS
C - - - - - 0x01D813 07:D803: A9 00     LDA #$00
C - - - - - 0x01D815 07:D805: 9D 6E 06  STA ram_obj_pos_Y_fr,X
C - - - - - 0x01D818 07:D808: A9 80     LDA #< $F880
C - - - - - 0x01D81A 07:D80A: 9D DC 06  STA ram_obj_spd_Y_fr,X
C - - - - - 0x01D81D 07:D80D: A9 F8     LDA #> $F880
C - - - - - 0x01D81F 07:D80F: 9D F2 06  STA ram_obj_spd_Y_lo,X
C - - - - - 0x01D822 07:D812: 4C E4 D7  JMP loc_D7E4_jump
bra_D815:
C - - - - - 0x01D825 07:D815: A9 D6     LDA #< $F6D6
C - - - - - 0x01D827 07:D817: 9D DC 06  STA ram_obj_spd_Y_fr,X
C - - - - - 0x01D82A 07:D81A: A9 F6     LDA #> $F6D6
C - - - - - 0x01D82C 07:D81C: 9D F2 06  STA ram_obj_spd_Y_lo,X
C - - - - - 0x01D82F 07:D81F: 4C E4 D7  JMP loc_D7E4_jump



loc_D822:
C D 2 - - - 0x01D832 07:D822: A9 00     LDA #$00
C - - - - - 0x01D834 07:D824: 8D C6 03  STA ram_03C6_previous_weapon
C - - - - - 0x01D837 07:D827: A9 FF     LDA #$FF
C - - - - - 0x01D839 07:D829: 8D CD 03  STA ram_03CD
C - - - - - 0x01D83C 07:D82C: A9 01     LDA #$01
C - - - - - 0x01D83E 07:D82E: 9D 9A 06  STA ram_obj_pos_Y_hi,X
C - - - - - 0x01D841 07:D831: A9 90     LDA #$90
C - - - - - 0x01D843 07:D833: 9D 84 06  STA ram_obj_pos_Y_lo,X
C - - - - - 0x01D846 07:D836: 60        RTS



loc_D837:
C D 2 - - - 0x01D847 07:D837: C9 04     CMP #$04
C - - - - - 0x01D849 07:D839: D0 03     BNE bra_D83E
C - - - - - 0x01D84B 07:D83B: 4C 5B D8  JMP loc_D85B
bra_D83E:
C - - - - - 0x01D84E 07:D83E: AD AF 03  LDA ram_03AF
C - - - - - 0x01D851 07:D841: C9 0F     CMP #$0F
C - - - - - 0x01D853 07:D843: F0 AF     BEQ bra_D7F4
C - - - - - 0x01D855 07:D845: A5 2E     LDA ram_002E_btn
C - - - - - 0x01D857 07:D847: 29 01     AND #con_btn_A
C - - - - - 0x01D859 07:D849: F0 0F     BEQ bra_D85A_RTS
C - - - - - 0x01D85B 07:D84B: A9 FD     LDA #> $FDDC
C - - - - - 0x01D85D 07:D84D: 9D F2 06  STA ram_obj_spd_Y_lo,X
C - - - - - 0x01D860 07:D850: A9 DC     LDA #< $FDDC
C - - - - - 0x01D862 07:D852: 9D DC 06  STA ram_obj_spd_Y_fr,X
C - - - - - 0x01D865 07:D855: A9 03     LDA #$03    ; jumping during underwater rounds
C - - - - - 0x01D867 07:D857: 8D C2 03  STA ram_03C2_felix_state
bra_D85A_RTS:
C - - - - - 0x01D86A 07:D85A: 60        RTS



loc_D85B:
C D 2 - - - 0x01D86B 07:D85B: AD AF 03  LDA ram_03AF
C - - - - - 0x01D86E 07:D85E: C9 0F     CMP #$0F
C - - - - - 0x01D870 07:D860: D0 03     BNE bra_D865
C - - - - - 0x01D872 07:D862: 4C F4 D7  JMP loc_D7F4
bra_D865:
C - - - - - 0x01D875 07:D865: A5 2E     LDA ram_002E_btn
C - - - - - 0x01D877 07:D867: 29 01     AND #con_btn_A
C - - - - - 0x01D879 07:D869: D0 03     BNE bra_D86E
C - - - - - 0x01D87B 07:D86B: 4C F3 D7  JMP loc_D7F3_RTS
bra_D86E:
C - - - - - 0x01D87E 07:D86E: A9 FE     LDA #> $FE0F
C - - - - - 0x01D880 07:D870: 9D F2 06  STA ram_obj_spd_Y_lo,X
C - - - - - 0x01D883 07:D873: A9 0F     LDA #< $FE0F
C - - - - - 0x01D885 07:D875: 9D DC 06  STA ram_obj_spd_Y_fr,X
C - - - - - 0x01D888 07:D878: A9 03     LDA #$03    ; ascending in aerial rounds
C - - - - - 0x01D88A 07:D87A: 8D C2 03  STA ram_03C2_felix_state
C - - - - - 0x01D88D 07:D87D: 60        RTS



sub_D87E:
C - - - - - 0x01D88E 07:D87E: A9 00     LDA #$00
C - - - - - 0x01D890 07:D880: 8D B1 03  STA ram_03B1
C - - - - - 0x01D893 07:D883: 85 05     STA ram_0005_temp
C - - - - - 0x01D895 07:D885: BD 16 06  LDA ram_0616_obj,X
C - - - - - 0x01D898 07:D888: C9 02     CMP #$02
C - - - - - 0x01D89A 07:D88A: D0 5F     BNE bra_D8EB_RTS
C - - - - - 0x01D89C 07:D88C: BD 9A 06  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x01D89F 07:D88F: C9 01     CMP #$01
C - - - - - 0x01D8A1 07:D891: D0 58     BNE bra_D8EB_RTS
C - - - - - 0x01D8A3 07:D893: BD 84 06  LDA ram_obj_pos_Y_lo,X
C - - - - - 0x01D8A6 07:D896: C9 34     CMP #$34
C - - - - - 0x01D8A8 07:D898: 90 51     BCC bra_D8EB_RTS
C - - - - - 0x01D8AA 07:D89A: BD 84 06  LDA ram_obj_pos_Y_lo,X
C - - - - - 0x01D8AD 07:D89D: 38        SEC
C - - - - - 0x01D8AE 07:D89E: E9 3A     SBC #$3A
C - - - - - 0x01D8B0 07:D8A0: 90 3C     BCC bra_D8DE
C - - - - - 0x01D8B2 07:D8A2: 85 04     STA ram_0004_temp
C - - - - - 0x01D8B4 07:D8A4: 06 04     ASL ram_0004_temp
C - - - - - 0x01D8B6 07:D8A6: 26 05     ROL ram_0005_temp
C - - - - - 0x01D8B8 07:D8A8: 65 04     ADC ram_0004_temp
C - - - - - 0x01D8BA 07:D8AA: 85 04     STA ram_0004_temp
C - - - - - 0x01D8BC 07:D8AC: A5 05     LDA ram_0005_temp
C - - - - - 0x01D8BE 07:D8AE: 69 00     ADC #$00
C - - - - - 0x01D8C0 07:D8B0: 85 05     STA ram_0005_temp
C - - - - - 0x01D8C2 07:D8B2: A9 01     LDA #$01
C - - - - - 0x01D8C4 07:D8B4: 8D B1 03  STA ram_03B1
C - - - - - 0x01D8C7 07:D8B7: BD DC 06  LDA ram_obj_spd_Y_fr,X
C - - - - - 0x01D8CA 07:D8BA: 38        SEC
C - - - - - 0x01D8CB 07:D8BB: E5 04     SBC ram_0004_temp
C - - - - - 0x01D8CD 07:D8BD: 9D DC 06  STA ram_obj_spd_Y_fr,X
C - - - - - 0x01D8D0 07:D8C0: BD F2 06  LDA ram_obj_spd_Y_lo,X
C - - - - - 0x01D8D3 07:D8C3: E5 05     SBC ram_0005_temp
C - - - - - 0x01D8D5 07:D8C5: 9D F2 06  STA ram_obj_spd_Y_lo,X
C - - - - - 0x01D8D8 07:D8C8: 10 14     BPL bra_D8DE
C - - - - - 0x01D8DA 07:D8CA: C9 FC     CMP #$FC
C - - - - - 0x01D8DC 07:D8CC: B0 10     BCS bra_D8DE
C - - - - - 0x01D8DE 07:D8CE: A5 2D     LDA ram_002D_btn
C - - - - - 0x01D8E0 07:D8D0: 29 01     AND #con_btn_A
C - - - - - 0x01D8E2 07:D8D2: D0 20     BNE bra_D8F4_holding_jump_button
C - - - - - 0x01D8E4 07:D8D4: A9 00     LDA #< $FC00
C - - - - - 0x01D8E6 07:D8D6: 9D DC 06  STA ram_obj_spd_Y_fr,X
C - - - - - 0x01D8E9 07:D8D9: A9 FC     LDA #> $FC00
C - - - - - 0x01D8EB 07:D8DB: 9D F2 06  STA ram_obj_spd_Y_lo,X
bra_D8DE:
loc_D8DE:
C D 2 - - - 0x01D8EE 07:D8DE: A5 37     LDA ram_frm_cnt_3
C - - - - - 0x01D8F0 07:D8E0: 29 20     AND #$20
C - - - - - 0x01D8F2 07:D8E2: D0 08     BNE bra_D8EC
C - - - - - 0x01D8F4 07:D8E4: A9 17     LDA #$17
C - - - - - 0x01D8F6 07:D8E6: 85 00     STA ram_0000_t78_spd_X_fr
; bzk optimize, JMP
C - - - - - 0x01D8F8 07:D8E8: 20 3B D6  JSR sub_D63B
bra_D8EB_RTS:
C - - - - - 0x01D8FB 07:D8EB: 60        RTS
bra_D8EC:
C - - - - - 0x01D8FC 07:D8EC: A9 09     LDA #$09
C - - - - - 0x01D8FE 07:D8EE: 85 00     STA ram_0000_t77_spd_X_fr
; bzk optimize, JMP
C - - - - - 0x01D900 07:D8F0: 20 AF D6  JSR sub_D6AF
C - - - - - 0x01D903 07:D8F3: 60        RTS
bra_D8F4_holding_jump_button:
C - - - - - 0x01D904 07:D8F4: A9 00     LDA #< $FA00
C - - - - - 0x01D906 07:D8F6: 9D DC 06  STA ram_obj_spd_Y_fr,X
C - - - - - 0x01D909 07:D8F9: A9 FA     LDA #> $FA00
C - - - - - 0x01D90B 07:D8FB: 9D F2 06  STA ram_obj_spd_Y_lo,X
C - - - - - 0x01D90E 07:D8FE: A9 02     LDA #$02    ; quick floating out of the water (in sea rounds) while holding jump button
C - - - - - 0x01D910 07:D900: 8D C2 03  STA ram_03C2_felix_state
C - - - - - 0x01D913 07:D903: A9 00     LDA #$00
C - - - - - 0x01D915 07:D905: 8D B1 03  STA ram_03B1
C - - - - - 0x01D918 07:D908: 4C DE D8  JMP loc_D8DE



sub_D90B:   ; bzk optimize
; bzk optimize, JMP
C - - - - - 0x01D91B 07:D90B: 20 37 89  JSR sub_0x018947_move_obj_Y_axis
C - - - - - 0x01D91E 07:D90E: 60        RTS



sub_D90F:
C - - - - - 0x01D91F 07:D90F: A9 00     LDA #$00
C - - - - - 0x01D921 07:D911: 85 00     STA ram_0000_t80_pos_X_hi
C - - - - - 0x01D923 07:D913: BD B0 06  LDA ram_obj_spd_X_fr,X
C - - - - - 0x01D926 07:D916: 85 01     STA ram_0001_t09_spd_X_fr
C - - - - - 0x01D928 07:D918: BD C6 06  LDA ram_obj_spd_X_lo,X
C - - - - - 0x01D92B 07:D91B: 18        CLC
C - - - - - 0x01D92C 07:D91C: 6D 1D 04  ADC ram_041D
C - - - - - 0x01D92F 07:D91F: 85 02     STA ram_0002_t09_pos_X_lo
C - - - - - 0x01D931 07:D921: 10 02     BPL bra_D925
C - - - - - 0x01D933 07:D923: C6 00     DEC ram_0000_t80_pos_X_hi   ; -> FF
bra_D925:
C - - - - - 0x01D935 07:D925: BD 2C 06  LDA ram_obj_pos_X_fr,X
C - - - - - 0x01D938 07:D928: 18        CLC
C - - - - - 0x01D939 07:D929: 65 01     ADC ram_0001_t09_spd_X_fr
C - - - - - 0x01D93B 07:D92B: 9D 2C 06  STA ram_obj_pos_X_fr,X
C - - - - - 0x01D93E 07:D92E: BD 42 06  LDA ram_obj_pos_X_lo,X
C - - - - - 0x01D941 07:D931: 65 02     ADC ram_0002_t09_pos_X_lo
C - - - - - 0x01D943 07:D933: 9D 42 06  STA ram_obj_pos_X_lo,X
C - - - - - 0x01D946 07:D936: BD 58 06  LDA ram_obj_pos_X_hi,X
C - - - - - 0x01D949 07:D939: 65 00     ADC ram_0000_t80_pos_X_hi
C - - - - - 0x01D94B 07:D93B: 9D 58 06  STA ram_obj_pos_X_hi,X
C - - - - - 0x01D94E 07:D93E: 60        RTS



sub_D93F:
C - - - - - 0x01D94F 07:D93F: A5 D5     LDA ram_00D5
C - - - - - 0x01D951 07:D941: D0 32     BNE bra_D975_RTS
C - - - - - 0x01D953 07:D943: BD 84 06  LDA ram_obj_pos_Y_lo,X
C - - - - - 0x01D956 07:D946: 18        CLC
C - - - - - 0x01D957 07:D947: 69 10     ADC #< $0010
C - - - - - 0x01D959 07:D949: 85 06     STA ram_0006_temp
C - - - - - 0x01D95B 07:D94B: BD 9A 06  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x01D95E 07:D94E: 69 00     ADC #> $0010
C - - - - - 0x01D960 07:D950: 85 07     STA ram_0007_temp
C - - - - - 0x01D962 07:D952: BD 42 06  LDA ram_obj_pos_X_lo,X
C - - - - - 0x01D965 07:D955: 85 04     STA ram_0004_temp
C - - - - - 0x01D967 07:D957: BD 58 06  LDA ram_obj_pos_X_hi,X
C - - - - - 0x01D96A 07:D95A: 85 05     STA ram_0005_temp
C - - - - - 0x01D96C 07:D95C: 20 96 F2  JSR sub_F296
C - - - - - 0x01D96F 07:D95F: C9 30     CMP #$30
C - - - - - 0x01D971 07:D961: D0 12     BNE bra_D975_RTS
C - - - - - 0x01D973 07:D963: 48        PHA
C - - - - - 0x01D974 07:D964: 20 9D DB  JSR sub_DB9D
C - - - - - 0x01D977 07:D967: 68        PLA
C - - - - - 0x01D978 07:D968: 20 8A DA  JSR sub_DA8A
C - - - - - 0x01D97B 07:D96B: A9 0C     LDA #$0C
C - - - - - 0x01D97D 07:D96D: 8D B2 03  STA ram_03B2
C - - - - - 0x01D980 07:D970: A9 05     LDA #con_sfx_05
; bzk optimize, JMP
C - - - - - 0x01D982 07:D972: 20 1A FF  JSR sub_FF1A_play_sound
bra_D975_RTS:
C - - - - - 0x01D985 07:D975: 60        RTS
bra_D976_RTS:
loc_D976_RTS:
; bzk optimize
C D 2 - - - 0x01D986 07:D976: 60        RTS



sub_D977:
C - - - - - 0x01D987 07:D977: A5 D5     LDA ram_00D5
C - - - - - 0x01D989 07:D979: D0 FB     BNE bra_D976_RTS
C - - - - - 0x01D98B 07:D97B: BD 42 06  LDA ram_obj_pos_X_lo,X
C - - - - - 0x01D98E 07:D97E: 38        SEC
C - - - - - 0x01D98F 07:D97F: E9 04     SBC #< $0004
C - - - - - 0x01D991 07:D981: 85 04     STA ram_0004_temp
C - - - - - 0x01D993 07:D983: BD 58 06  LDA ram_obj_pos_X_hi,X
C - - - - - 0x01D996 07:D986: E9 00     SBC #> $0004
C - - - - - 0x01D998 07:D988: 85 05     STA ram_0005_temp
C - - - - - 0x01D99A 07:D98A: BD 84 06  LDA ram_obj_pos_Y_lo,X
C - - - - - 0x01D99D 07:D98D: 38        SEC
C - - - - - 0x01D99E 07:D98E: E9 08     SBC #< $0008
C - - - - - 0x01D9A0 07:D990: 85 06     STA ram_0006_temp
C - - - - - 0x01D9A2 07:D992: BD 9A 06  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x01D9A5 07:D995: E9 00     SBC #> $0008
C - - - - - 0x01D9A7 07:D997: 85 07     STA ram_0007_temp
C - - - - - 0x01D9A9 07:D999: 20 96 F2  JSR sub_F296
C - - - - - 0x01D9AC 07:D99C: C9 10     CMP #$10
C - - - - - 0x01D9AE 07:D99E: B0 54     BCS bra_D9F4
C - - - - - 0x01D9B0 07:D9A0: BD 84 06  LDA ram_obj_pos_Y_lo,X
C - - - - - 0x01D9B3 07:D9A3: 18        CLC
C - - - - - 0x01D9B4 07:D9A4: 69 08     ADC #< $0008
C - - - - - 0x01D9B6 07:D9A6: 85 06     STA ram_0006_temp
C - - - - - 0x01D9B8 07:D9A8: BD 9A 06  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x01D9BB 07:D9AB: 69 00     ADC #> $0008
C - - - - - 0x01D9BD 07:D9AD: 85 07     STA ram_0007_temp
C - - - - - 0x01D9BF 07:D9AF: 20 96 F2  JSR sub_F296
C - - - - - 0x01D9C2 07:D9B2: C9 10     CMP #$10
C - - - - - 0x01D9C4 07:D9B4: B0 3E     BCS bra_D9F4
C - - - - - 0x01D9C6 07:D9B6: BD 42 06  LDA ram_obj_pos_X_lo,X
C - - - - - 0x01D9C9 07:D9B9: 18        CLC
C - - - - - 0x01D9CA 07:D9BA: 69 04     ADC #< $0004
C - - - - - 0x01D9CC 07:D9BC: 85 04     STA ram_0004_temp
C - - - - - 0x01D9CE 07:D9BE: BD 58 06  LDA ram_obj_pos_X_hi,X
C - - - - - 0x01D9D1 07:D9C1: 69 00     ADC #> $0004
C - - - - - 0x01D9D3 07:D9C3: 85 05     STA ram_0005_temp
C - - - - - 0x01D9D5 07:D9C5: BD 84 06  LDA ram_obj_pos_Y_lo,X
C - - - - - 0x01D9D8 07:D9C8: 38        SEC
C - - - - - 0x01D9D9 07:D9C9: E9 08     SBC #< $0008
C - - - - - 0x01D9DB 07:D9CB: 85 06     STA ram_0006_temp
C - - - - - 0x01D9DD 07:D9CD: BD 9A 06  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x01D9E0 07:D9D0: E9 00     SBC #> $0008
C - - - - - 0x01D9E2 07:D9D2: 85 07     STA ram_0007_temp
C - - - - - 0x01D9E4 07:D9D4: 20 96 F2  JSR sub_F296
C - - - - - 0x01D9E7 07:D9D7: C9 10     CMP #$10
C - - - - - 0x01D9E9 07:D9D9: B0 19     BCS bra_D9F4
C - - - - - 0x01D9EB 07:D9DB: BD 84 06  LDA ram_obj_pos_Y_lo,X
C - - - - - 0x01D9EE 07:D9DE: 18        CLC
C - - - - - 0x01D9EF 07:D9DF: 69 08     ADC #< $0008
C - - - - - 0x01D9F1 07:D9E1: 85 06     STA ram_0006_temp
C - - - - - 0x01D9F3 07:D9E3: BD 9A 06  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x01D9F6 07:D9E6: 69 00     ADC #> $0008
C - - - - - 0x01D9F8 07:D9E8: 85 07     STA ram_0007_temp
C - - - - - 0x01D9FA 07:D9EA: 20 96 F2  JSR sub_F296
C - - - - - 0x01D9FD 07:D9ED: C9 10     CMP #$10
C - - - - - 0x01D9FF 07:D9EF: B0 03     BCS bra_D9F4
C - - - - - 0x01DA01 07:D9F1: 4C 76 D9  JMP loc_D976_RTS
bra_D9F4:
C - - - - - 0x01DA04 07:D9F4: C9 30     CMP #$30
C - - - - - 0x01DA06 07:D9F6: 90 03     BCC bra_D9FB
- - - - - - 0x01DA08 07:D9F8: 4C 76 D9  JMP loc_D976_RTS
bra_D9FB:
C - - - - - 0x01DA0B 07:D9FB: 48        PHA
C - - - - - 0x01DA0C 07:D9FC: 20 9D DB  JSR sub_DB9D
C - - - - - 0x01DA0F 07:D9FF: 20 75 DA  JSR sub_DA75
C - - - - - 0x01DA12 07:DA02: 68        PLA
C - - - - - 0x01DA13 07:DA03: 20 8A DA  JSR sub_DA8A
C - - - - - 0x01DA16 07:DA06: A9 14     LDA #con_sfx_14
C - - - - - 0x01DA18 07:DA08: 20 1A FF  JSR sub_FF1A_play_sound
C - - - - - 0x01DA1B 07:DA0B: A9 03     LDA #con_add_score_50p
C - - - - - 0x01DA1D 07:DA0D: 20 C3 DD  JSR sub_DDC3_add_score
C - - - - - 0x01DA20 07:DA10: 8A        TXA
C - - - - - 0x01DA21 07:DA11: 48        PHA
C - - - - - 0x01DA22 07:DA12: A2 01     LDX #$01
C - - - - - 0x01DA24 07:DA14: BD A7 03  LDA ram_03A7_face_counter,X
C - - - - - 0x01DA27 07:DA17: 18        CLC
C - - - - - 0x01DA28 07:DA18: 69 01     ADC #$01
C - - - - - 0x01DA2A 07:DA1A: C9 1A     CMP #$1A
C - - - - - 0x01DA2C 07:DA1C: 90 46     BCC bra_DA64
C - - - - - 0x01DA2E 07:DA1E: A9 10     LDA #$10
C - - - - - 0x01DA30 07:DA20: 9D A7 03  STA ram_03A7_face_counter,X
C - - - - - 0x01DA33 07:DA23: CA        DEX
C - - - - - 0x01DA34 07:DA24: BD A7 03  LDA ram_03A7_face_counter,X
C - - - - - 0x01DA37 07:DA27: 18        CLC
C - - - - - 0x01DA38 07:DA28: 69 01     ADC #$01
C - - - - - 0x01DA3A 07:DA2A: C9 1A     CMP #$1A
C - - - - - 0x01DA3C 07:DA2C: 90 36     BCC bra_DA64
C - - - - - 0x01DA3E 07:DA2E: A9 10     LDA #$10
C - - - - - 0x01DA40 07:DA30: 9D A7 03  STA ram_03A7_face_counter,X
loc_DA33:
C D 2 - - - 0x01DA43 07:DA33: A9 15     LDA #con_sfx_15
C - - - - - 0x01DA45 07:DA35: 20 1A FF  JSR sub_FF1A_play_sound
C - - - - - 0x01DA48 07:DA38: AD A5 03  LDA ram_03A5_lives
C - - - - - 0x01DA4B 07:DA3B: 18        CLC
C - - - - - 0x01DA4C 07:DA3C: 6D A6 03  ADC ram_03A5_lives + $01
C - - - - - 0x01DA4F 07:DA3F: C9 32     CMP #$32
C - - - - - 0x01DA51 07:DA41: F0 24     BEQ bra_DA67
C - - - - - 0x01DA53 07:DA43: A2 01     LDX #$01
C - - - - - 0x01DA55 07:DA45: BD A5 03  LDA ram_03A5_lives,X
C - - - - - 0x01DA58 07:DA48: 18        CLC
C - - - - - 0x01DA59 07:DA49: 69 01     ADC #$01
C - - - - - 0x01DA5B 07:DA4B: C9 1A     CMP #$1A
C - - - - - 0x01DA5D 07:DA4D: 90 1B     BCC bra_DA6A
C - - - - - 0x01DA5F 07:DA4F: A9 10     LDA #$10
C - - - - - 0x01DA61 07:DA51: 9D A5 03  STA ram_03A5_lives,X
C - - - - - 0x01DA64 07:DA54: CA        DEX
C - - - - - 0x01DA65 07:DA55: BD A5 03  LDA ram_03A5_lives,X
C - - - - - 0x01DA68 07:DA58: 18        CLC
C - - - - - 0x01DA69 07:DA59: 69 01     ADC #$01
C - - - - - 0x01DA6B 07:DA5B: C9 1A     CMP #$1A
C - - - - - 0x01DA6D 07:DA5D: 90 0B     BCC bra_DA6A
- - - - - - 0x01DA6F 07:DA5F: A9 10     LDA #$10
- - - - - - 0x01DA71 07:DA61: 9D A5 03  STA ram_03A5_lives,X
bra_DA64:
C - - - - - 0x01DA74 07:DA64: 9D A7 03  STA ram_03A7_face_counter,X
bra_DA67:
C - - - - - 0x01DA77 07:DA67: 68        PLA
C - - - - - 0x01DA78 07:DA68: AA        TAX
C - - - - - 0x01DA79 07:DA69: 60        RTS
bra_DA6A:
C - - - - - 0x01DA7A 07:DA6A: 9D A5 03  STA ram_03A5_lives,X
C - - - - - 0x01DA7D 07:DA6D: 68        PLA
C - - - - - 0x01DA7E 07:DA6E: AA        TAX
C - - - - - 0x01DA7F 07:DA6F: 60        RTS



sub_DA70:
C - - - - - 0x01DA80 07:DA70: 8A        TXA
C - - - - - 0x01DA81 07:DA71: 48        PHA
C - - - - - 0x01DA82 07:DA72: 4C 33 DA  JMP loc_DA33



sub_DA75:
C - - - - - 0x01DA85 07:DA75: AD A8 03  LDA ram_03A7_face_counter + $01
C - - - - - 0x01DA88 07:DA78: C9 19     CMP #$19
C - - - - - 0x01DA8A 07:DA7A: D0 03     BNE bra_DA7F
C - - - - - 0x01DA8C 07:DA7C: 20 CD DB  JSR sub_DBCD
bra_DA7F:
C - - - - - 0x01DA8F 07:DA7F: AD A8 03  LDA ram_03A7_face_counter + $01
C - - - - - 0x01DA92 07:DA82: C9 14     CMP #$14
C - - - - - 0x01DA94 07:DA84: D0 03     BNE bra_DA89_RTS
; bzk optimize, JMP
C - - - - - 0x01DA96 07:DA86: 20 5A DC  JSR sub_DC5A
bra_DA89_RTS:
C - - - - - 0x01DA99 07:DA89: 60        RTS



sub_DA8A:
; / 10
C - - - - - 0x01DA9A 07:DA8A: 4A        LSR
C - - - - - 0x01DA9B 07:DA8B: 4A        LSR
C - - - - - 0x01DA9C 07:DA8C: 4A        LSR
C - - - - - 0x01DA9D 07:DA8D: 4A        LSR
C - - - - - 0x01DA9E 07:DA8E: C9 03     CMP #$03
C - - - - - 0x01DAA0 07:DA90: 90 16     BCC bra_DAA8
C - - - - - 0x01DAA2 07:DA92: A5 D1     LDA ram_00D0_t01_data + $01
C - - - - - 0x01DAA4 07:DA94: 09 04     ORA #$04
C - - - - - 0x01DAA6 07:DA96: 85 D1     STA ram_00D0_t01_data + $01
C - - - - - 0x01DAA8 07:DA98: A0 00     LDY #$00
C - - - - - 0x01DAAA 07:DA9A: B1 D0     LDA (ram_00D0_t01_data),Y
C - - - - - 0x01DAAC 07:DA9C: A8        TAY
C - - - - - 0x01DAAD 07:DA9D: B9 00 6E  LDA ram_6E00,Y
C - - - - - 0x01DAB0 07:DAA0: 48        PHA
C - - - - - 0x01DAB1 07:DAA1: A5 D1     LDA ram_00D0_t01_data + $01
C - - - - - 0x01DAB3 07:DAA3: 29 FB     AND #$FB
C - - - - - 0x01DAB5 07:DAA5: 85 D1     STA ram_00D0_t01_data + $01
C - - - - - 0x01DAB7 07:DAA7: 68        PLA
bra_DAA8:
C - - - - - 0x01DAB8 07:DAA8: A8        TAY
C - - - - - 0x01DAB9 07:DAA9: B9 81 03  LDA ram_0381,Y
C - - - - - 0x01DABC 07:DAAC: 48        PHA
C - - - - - 0x01DABD 07:DAAD: A0 00     LDY #$00
C - - - - - 0x01DABF 07:DAAF: 91 D0     STA (ram_00D0_t01_data),Y
C - - - - - 0x01DAC1 07:DAB1: A5 D1     LDA ram_00D0_t01_data + $01
C - - - - - 0x01DAC3 07:DAB3: 09 04     ORA #$04
C - - - - - 0x01DAC5 07:DAB5: 85 D1     STA ram_00D0_t01_data + $01
C - - - - - 0x01DAC7 07:DAB7: B1 D0     LDA (ram_00D0_t01_data),Y
C - - - - - 0x01DAC9 07:DAB9: A8        TAY
C - - - - - 0x01DACA 07:DABA: 68        PLA
C - - - - - 0x01DACB 07:DABB: 99 00 6D  STA ram_6D00,Y
sub_0x01DACE:
C - - - - - 0x01DACE 07:DABE: 85 D2     STA ram_00D2_block_index
C - - - - - 0x01DAD0 07:DAC0: A5 D3     LDA ram_00D3
; / 08
C - - - - - 0x01DAD2 07:DAC2: 4A        LSR
C - - - - - 0x01DAD3 07:DAC3: 4A        LSR
C - - - - - 0x01DAD4 07:DAC4: 4A        LSR
C - - - - - 0x01DAD5 07:DAC5: 85 D3     STA ram_00D3
C - - - - - 0x01DAD7 07:DAC7: AD 06 03  LDA ram_0306
C - - - - - 0x01DADA 07:DACA: 29 E0     AND #$E0
C - - - - - 0x01DADC 07:DACC: 05 D3     ORA ram_00D3
C - - - - - 0x01DADE 07:DACE: 18        CLC
C - - - - - 0x01DADF 07:DACF: 69 80     ADC #< $2180
C - - - - - 0x01DAE1 07:DAD1: 85 D6     STA ram_00D6_ppu_lo
C - - - - - 0x01DAE3 07:DAD3: A9 00     LDA #$00
C - - - - - 0x01DAE5 07:DAD5: 69 21     ADC #> $2180
C - - - - - 0x01DAE7 07:DAD7: 85 D7     STA ram_00D7_ppu_hi
C - - - - - 0x01DAE9 07:DAD9: A9 00     LDA #$00
C - - - - - 0x01DAEB 07:DADB: 85 07     STA ram_0007_temp
C - - - - - 0x01DAED 07:DADD: A5 D4     LDA ram_00D4
C - - - - - 0x01DAEF 07:DADF: C9 09     CMP #$09
C - - - - - 0x01DAF1 07:DAE1: 90 12     BCC bra_DAF5
C - - - - - 0x01DAF3 07:DAE3: 38        SEC
C - - - - - 0x01DAF4 07:DAE4: 38        SEC
C - - - - - 0x01DAF5 07:DAE5: E9 09     SBC #$09
C - - - - - 0x01DAF7 07:DAE7: 85 D4     STA ram_00D4
C - - - - - 0x01DAF9 07:DAE9: A5 D6     LDA ram_00D6_ppu_lo
C - - - - - 0x01DAFB 07:DAEB: 29 1F     AND #$1F
C - - - - - 0x01DAFD 07:DAED: 85 D6     STA ram_00D6_ppu_lo
C - - - - - 0x01DAFF 07:DAEF: A9 28     LDA #$28
C - - - - - 0x01DB01 07:DAF1: 85 D7     STA ram_00D7_ppu_hi
C - - - - - 0x01DB03 07:DAF3: A5 D4     LDA ram_00D4
bra_DAF5:
; / 04
C - - - - - 0x01DB05 07:DAF5: 4A        LSR
C - - - - - 0x01DB06 07:DAF6: 66 07     ROR ram_0007_temp
C - - - - - 0x01DB08 07:DAF8: 4A        LSR
C - - - - - 0x01DB09 07:DAF9: 66 07     ROR ram_0007_temp
C - - - - - 0x01DB0B 07:DAFB: 85 08     STA ram_0008_temp
C - - - - - 0x01DB0D 07:DAFD: A0 04     LDY #$04
C - - - - - 0x01DB0F 07:DAFF: A5 D6     LDA ram_00D6_ppu_lo
C - - - - - 0x01DB11 07:DB01: 18        CLC
C - - - - - 0x01DB12 07:DB02: 65 07     ADC ram_0007_temp
C - - - - - 0x01DB14 07:DB04: 85 D6     STA ram_00D6_ppu_lo
C - - - - - 0x01DB16 07:DB06: A5 D7     LDA ram_00D7_ppu_hi
C - - - - - 0x01DB18 07:DB08: 65 08     ADC ram_0008_temp
C - - - - - 0x01DB1A 07:DB0A: 85 D7     STA ram_00D7_ppu_hi
C - - - - - 0x01DB1C 07:DB0C: 20 14 DB  JSR sub_DB14
C - - - - - 0x01DB1F 07:DB0F: A9 01     LDA #$01
C - - - - - 0x01DB21 07:DB11: 85 D5     STA ram_00D5
C - - - - - 0x01DB23 07:DB13: 60        RTS



sub_DB14:
C - - - - - 0x01DB24 07:DB14: 8A        TXA
C - - - - - 0x01DB25 07:DB15: 48        PHA
C - - - - - 0x01DB26 07:DB16: A4 D2     LDY ram_00D2_block_index
C - - - - - 0x01DB28 07:DB18: B9 00 6A  LDA ram_data_6A00,Y
C - - - - - 0x01DB2B 07:DB1B: 85 D9     STA ram_00D9
C - - - - - 0x01DB2D 07:DB1D: A5 D7     LDA ram_00D7_ppu_hi
C - - - - - 0x01DB2F 07:DB1F: 85 08     STA ram_0008_temp
C - - - - - 0x01DB31 07:DB21: 29 28     AND #$28
C - - - - - 0x01DB33 07:DB23: 09 03     ORA #$03
C - - - - - 0x01DB35 07:DB25: 85 DB     STA ram_00DB_attr_ppu_hi
C - - - - - 0x01DB37 07:DB27: A5 D6     LDA ram_00D6_ppu_lo
C - - - - - 0x01DB39 07:DB29: 85 07     STA ram_0007_temp
C - - - - - 0x01DB3B 07:DB2B: 29 03     AND #$03
C - - - - - 0x01DB3D 07:DB2D: 85 D8     STA ram_00D8
; / 04
C - - - - - 0x01DB3F 07:DB2F: 46 08     LSR ram_0008_temp
C - - - - - 0x01DB41 07:DB31: 66 07     ROR ram_0007_temp
C - - - - - 0x01DB43 07:DB33: 46 08     LSR ram_0008_temp
C - - - - - 0x01DB45 07:DB35: 66 07     ROR ram_0007_temp
C - - - - - 0x01DB47 07:DB37: A5 07     LDA ram_0007_temp
C - - - - - 0x01DB49 07:DB39: 29 07     AND #$07
C - - - - - 0x01DB4B 07:DB3B: 85 DA     STA ram_00DA_attr_ppu_lo
; / 04
C - - - - - 0x01DB4D 07:DB3D: 46 08     LSR ram_0008_temp
C - - - - - 0x01DB4F 07:DB3F: 66 07     ROR ram_0007_temp
C - - - - - 0x01DB51 07:DB41: 46 08     LSR ram_0008_temp
C - - - - - 0x01DB53 07:DB43: 66 07     ROR ram_0007_temp
C - - - - - 0x01DB55 07:DB45: A5 07     LDA ram_0007_temp
C - - - - - 0x01DB57 07:DB47: 29 04     AND #$04
C - - - - - 0x01DB59 07:DB49: 05 D8     ORA ram_00D8
C - - - - - 0x01DB5B 07:DB4B: 85 D8     STA ram_00D8
C - - - - - 0x01DB5D 07:DB4D: A5 07     LDA ram_0007_temp
C - - - - - 0x01DB5F 07:DB4F: 29 38     AND #$38
C - - - - - 0x01DB61 07:DB51: 05 DA     ORA ram_00DA_attr_ppu_lo
C - - - - - 0x01DB63 07:DB53: A8        TAY
C - - - - - 0x01DB64 07:DB54: 18        CLC
C - - - - - 0x01DB65 07:DB55: 69 C0     ADC #$C0
C - - - - - 0x01DB67 07:DB57: 85 DA     STA ram_00DA_attr_ppu_lo
C - - - - - 0x01DB69 07:DB59: A9 02     LDA #> $02F1    ; ram_0309_buffer ?
C - - - - - 0x01DB6B 07:DB5B: 85 08     STA ram_0007_t01_data + $01
C - - - - - 0x01DB6D 07:DB5D: A9 F1     LDA #< $02F1
C - - - - - 0x01DB6F 07:DB5F: 85 07     STA ram_0007_t01_data
C - - - - - 0x01DB71 07:DB61: A5 DB     LDA ram_00DB_attr_ppu_hi
C - - - - - 0x01DB73 07:DB63: 29 08     AND #$08
C - - - - - 0x01DB75 07:DB65: F0 08     BEQ bra_DB6F
C - - - - - 0x01DB77 07:DB67: A9 03     LDA #> $0331    ; ram_0309_buffer ?
C - - - - - 0x01DB79 07:DB69: 85 08     STA ram_0007_t01_data + $01
C - - - - - 0x01DB7B 07:DB6B: A9 31     LDA #< $0331
C - - - - - 0x01DB7D 07:DB6D: 85 07     STA ram_0007_t01_data
bra_DB6F:
C - - - - - 0x01DB7F 07:DB6F: B1 07     LDA (ram_0007_t01_data),Y
C - - - - - 0x01DB81 07:DB71: A6 D8     LDX ram_00D8
C - - - - - 0x01DB83 07:DB73: 3D 95 DB  AND tbl_DB95_nametable_attributes,X
C - - - - - 0x01DB86 07:DB76: 85 D8     STA ram_00D8
C - - - - - 0x01DB88 07:DB78: A5 D9     LDA ram_00D9
; / 40
C - - - - - 0x01DB8A 07:DB7A: 4A        LSR
C - - - - - 0x01DB8B 07:DB7B: 4A        LSR
C - - - - - 0x01DB8C 07:DB7C: 4A        LSR
C - - - - - 0x01DB8D 07:DB7D: 4A        LSR
C - - - - - 0x01DB8E 07:DB7E: 4A        LSR
C - - - - - 0x01DB8F 07:DB7F: 4A        LSR
C - - - - - 0x01DB90 07:DB80: 29 03     AND #$03
C - - - - - 0x01DB92 07:DB82: E8        INX
loc_DB83_loop:
C D 2 - - - 0x01DB93 07:DB83: CA        DEX
C - - - - - 0x01DB94 07:DB84: F0 06     BEQ bra_DB8C
; * 04
C - - - - - 0x01DB96 07:DB86: 0A        ASL
C - - - - - 0x01DB97 07:DB87: 0A        ASL
C - - - - - 0x01DB98 07:DB88: CA        DEX
C - - - - - 0x01DB99 07:DB89: 4C 83 DB  JMP loc_DB83_loop
bra_DB8C:
C - - - - - 0x01DB9C 07:DB8C: 05 D8     ORA ram_00D8
C - - - - - 0x01DB9E 07:DB8E: 85 D8     STA ram_00D8
C - - - - - 0x01DBA0 07:DB90: 91 07     STA (ram_0007_temp),Y
C - - - - - 0x01DBA2 07:DB92: 68        PLA
C - - - - - 0x01DBA3 07:DB93: AA        TAX
C - - - - - 0x01DBA4 07:DB94: 60        RTS



tbl_DB95_nametable_attributes:
- D 2 - - - 0x01DBA5 07:DB95: FC        .byte $FC   ; 00 
- - - - - - 0x01DBA6 07:DB96: FC        .byte $FC   ; 01 
- D 2 - - - 0x01DBA7 07:DB97: F3        .byte $F3   ; 02 
- - - - - - 0x01DBA8 07:DB98: F3        .byte $F3   ; 03 
- D 2 - - - 0x01DBA9 07:DB99: CF        .byte $CF   ; 04 
- - - - - - 0x01DBAA 07:DB9A: CF        .byte $CF   ; 05 
- D 2 - - - 0x01DBAB 07:DB9B: 3F        .byte $3F   ; 06 
- - - - - - 0x01DBAC 07:DB9C: 3F        .byte $3F   ; 07 



sub_DB9D:
C - - - - - 0x01DBAD 07:DB9D: A9 00     LDA #$00
C - - - - - 0x01DBAF 07:DB9F: 8D 7B 07  STA ram_0776_obj_flags + $05    ; con_0776_spr_A + $00
C - - - - - 0x01DBB2 07:DBA2: 8D 65 07  STA ram_obj_anim_cnt + $05
C - - - - - 0x01DBB5 07:DBA5: A9 08     LDA #$08
C - - - - - 0x01DBB7 07:DBA7: 8D 4F 07  STA ram_obj_anim_timer + $05
C - - - - - 0x01DBBA 07:DBAA: A5 04     LDA ram_0004_temp
C - - - - - 0x01DBBC 07:DBAC: 29 F3     AND #$F3
C - - - - - 0x01DBBE 07:DBAE: 69 06     ADC #$06
C - - - - - 0x01DBC0 07:DBB0: 8D 47 06  STA ram_obj_pos_X_lo + $05
C - - - - - 0x01DBC3 07:DBB3: A5 05     LDA ram_0005_temp
C - - - - - 0x01DBC5 07:DBB5: 8D 5D 06  STA ram_obj_pos_X_hi + $05
C - - - - - 0x01DBC8 07:DBB8: A5 06     LDA ram_0006_temp
C - - - - - 0x01DBCA 07:DBBA: 29 F3     AND #$F3
C - - - - - 0x01DBCC 07:DBBC: 69 06     ADC #$06
C - - - - - 0x01DBCE 07:DBBE: 8D 89 06  STA ram_obj_pos_Y_lo + $05
C - - - - - 0x01DBD1 07:DBC1: A5 07     LDA ram_0007_temp
C - - - - - 0x01DBD3 07:DBC3: 8D 9F 06  STA ram_obj_pos_Y_hi + $05
C - - - - - 0x01DBD6 07:DBC6: A9 02     LDA #$02
C - - - - - 0x01DBD8 07:DBC8: 8D 1B 06  STA ram_0616_obj + $05
C - - - - - 0x01DBDB 07:DBCB: 60        RTS
bra_DBCC_RTS:
; bzk optimize
C - - - - - 0x01DBDC 07:DBCC: 60        RTS



sub_DBCD:
C - - - - - 0x01DBDD 07:DBCD: A0 06     LDY #$06
C - - - - - 0x01DBDF 07:DBCF: B9 16 06  LDA ram_0616_obj,Y
C - - - - - 0x01DBE2 07:DBD2: F0 03     BEQ bra_DBD7
- - - - - - 0x01DBE4 07:DBD4: 20 4B DC  JSR sub_DC4B
bra_DBD7:
C - - - - - 0x01DBE7 07:DBD7: AD C7 03  LDA ram_03C7
C - - - - - 0x01DBEA 07:DBDA: C9 80     CMP #$80
C - - - - - 0x01DBEC 07:DBDC: 2E C7 03  ROL ram_03C7
C - - - - - 0x01DBEF 07:DBDF: 29 01     AND #$01
C - - - - - 0x01DBF1 07:DBE1: D0 E9     BNE bra_DBCC_RTS
C - - - - - 0x01DBF3 07:DBE3: A9 0E     LDA #con_obj_id_0E
C - - - - - 0x01DBF5 07:DBE5: 99 00 06  STA ram_0600_obj_id,Y
C - - - - - 0x01DBF8 07:DBE8: A9 01     LDA #$01
C - - - - - 0x01DBFA 07:DBEA: 99 34 07  STA ram_0734_obj,Y
C - - - - - 0x01DBFD 07:DBED: A9 48     LDA #con_0708_08 + con_0708_40
C - - - - - 0x01DBFF 07:DBEF: 99 08 07  STA ram_0708_obj_flags,Y
C - - - - - 0x01DC02 07:DBF2: A9 00     LDA #$00
C - - - - - 0x01DC04 07:DBF4: 99 76 07  STA ram_0776_obj_flags,Y    ; con_0776_spr_A + $00
C - - - - - 0x01DC07 07:DBF7: 99 60 07  STA ram_obj_anim_cnt,Y
C - - - - - 0x01DC0A 07:DBFA: A9 08     LDA #$08
C - - - - - 0x01DC0C 07:DBFC: 99 4A 07  STA ram_obj_anim_timer,Y
C - - - - - 0x01DC0F 07:DBFF: A5 04     LDA ram_0004_temp
C - - - - - 0x01DC11 07:DC01: 29 F0     AND #$F0
C - - - - - 0x01DC13 07:DC03: 09 08     ORA #$08
C - - - - - 0x01DC15 07:DC05: 99 42 06  STA ram_obj_pos_X_lo,Y
C - - - - - 0x01DC18 07:DC08: A5 05     LDA ram_0005_temp
C - - - - - 0x01DC1A 07:DC0A: 99 58 06  STA ram_obj_pos_X_hi,Y
C - - - - - 0x01DC1D 07:DC0D: A5 06     LDA ram_0006_temp
C - - - - - 0x01DC1F 07:DC0F: 29 F0     AND #$F0
C - - - - - 0x01DC21 07:DC11: 09 08     ORA #$08
C - - - - - 0x01DC23 07:DC13: 99 84 06  STA ram_obj_pos_Y_lo,Y
C - - - - - 0x01DC26 07:DC16: A5 07     LDA ram_0007_temp
C - - - - - 0x01DC28 07:DC18: 99 9A 06  STA ram_obj_pos_Y_hi,Y
C - - - - - 0x01DC2B 07:DC1B: A9 02     LDA #$02
C - - - - - 0x01DC2D 07:DC1D: 99 16 06  STA ram_0616_obj,Y
C - - - - - 0x01DC30 07:DC20: A9 00     LDA #$00
C - - - - - 0x01DC32 07:DC22: 99 B0 06  STA ram_obj_spd_X_fr,Y
C - - - - - 0x01DC35 07:DC25: 99 C6 06  STA ram_obj_spd_X_lo,Y
C - - - - - 0x01DC38 07:DC28: 99 DC 06  STA ram_obj_spd_Y_fr,Y
C - - - - - 0x01DC3B 07:DC2B: A9 FA     LDA #$FA    ; FA00
C - - - - - 0x01DC3D 07:DC2D: 99 F2 06  STA ram_obj_spd_Y_lo,Y
C - - - - - 0x01DC40 07:DC30: AD 16 06  LDA ram_0616_obj
C - - - - - 0x01DC43 07:DC33: C9 03     CMP #$03
C - - - - - 0x01DC45 07:DC35: 90 13     BCC bra_DC4A_RTS
C - - - - - 0x01DC47 07:DC37: C9 05     CMP #$05
C - - - - - 0x01DC49 07:DC39: B0 0F     BCS bra_DC4A_RTS
C - - - - - 0x01DC4B 07:DC3B: A9 03     LDA #$03
C - - - - - 0x01DC4D 07:DC3D: 99 16 06  STA ram_0616_obj,Y
C - - - - - 0x01DC50 07:DC40: A9 FC     LDA #> $FC00
C - - - - - 0x01DC52 07:DC42: 99 F2 06  STA ram_obj_spd_Y_lo,Y
C - - - - - 0x01DC55 07:DC45: A9 00     LDA #< $FC00
C - - - - - 0x01DC57 07:DC47: 99 DC 06  STA ram_obj_spd_Y_fr,Y
bra_DC4A_RTS:
C - - - - - 0x01DC5A 07:DC4A: 60        RTS



sub_DC4B:
- - - - - - 0x01DC5B 07:DC4B: A0 15     LDY #$15
bra_DC4D_loop:
- - - - - - 0x01DC5D 07:DC4D: B9 16 06  LDA ram_0616_obj,Y
- - - - - - 0x01DC60 07:DC50: F0 07     BEQ bra_DC59_RTS
- - - - - - 0x01DC62 07:DC52: 88        DEY
- - - - - - 0x01DC63 07:DC53: C0 0A     CPY #$0A
- - - - - - 0x01DC65 07:DC55: B0 F6     BCS bra_DC4D_loop
- - - - - - 0x01DC67 07:DC57: A0 06     LDY #$06
bra_DC59_RTS:
- - - - - - 0x01DC69 07:DC59: 60        RTS



sub_DC5A:
C - - - - - 0x01DC6A 07:DC5A: A0 07     LDY #$07
C - - - - - 0x01DC6C 07:DC5C: B9 16 06  LDA ram_0616_obj,Y
C - - - - - 0x01DC6F 07:DC5F: 19 17 06  ORA ram_0616_obj + $01,Y
C - - - - - 0x01DC72 07:DC62: 19 18 06  ORA ram_0616_obj + $02,Y
C - - - - - 0x01DC75 07:DC65: F0 03     BEQ bra_DC6A
C - - - - - 0x01DC77 07:DC67: 20 48 DD  JSR sub_DD48
bra_DC6A:
C - - - - - 0x01DC7A 07:DC6A: A9 0D     LDA #con_obj_id_0D
C - - - - - 0x01DC7C 07:DC6C: 99 00 06  STA ram_0600_obj_id,Y
C - - - - - 0x01DC7F 07:DC6F: 99 01 06  STA ram_0600_obj_id + $01,Y
C - - - - - 0x01DC82 07:DC72: 99 02 06  STA ram_0600_obj_id + $02,Y
C - - - - - 0x01DC85 07:DC75: A9 01     LDA #$01
C - - - - - 0x01DC87 07:DC77: 99 34 07  STA ram_0734_obj,Y
C - - - - - 0x01DC8A 07:DC7A: 99 35 07  STA ram_0734_obj + $01,Y
C - - - - - 0x01DC8D 07:DC7D: 99 36 07  STA ram_0734_obj + $02,Y
C - - - - - 0x01DC90 07:DC80: A9 48     LDA #con_0708_08 + con_0708_40
C - - - - - 0x01DC92 07:DC82: 99 08 07  STA ram_0708_obj_flags,Y
C - - - - - 0x01DC95 07:DC85: 99 09 07  STA ram_0708_obj_flags + $01,Y
C - - - - - 0x01DC98 07:DC88: 99 0A 07  STA ram_0708_obj_flags + $02,Y
C - - - - - 0x01DC9B 07:DC8B: A9 00     LDA #$00
C - - - - - 0x01DC9D 07:DC8D: 99 76 07  STA ram_0776_obj_flags,Y    ; con_0776_spr_A + $00
C - - - - - 0x01DCA0 07:DC90: 99 77 07  STA ram_0776_obj_flags + $01,Y    ; con_0776_spr_A + $00
C - - - - - 0x01DCA3 07:DC93: 99 78 07  STA ram_0776_obj_flags + $02,Y    ; con_0776_spr_A + $00
C - - - - - 0x01DCA6 07:DC96: 99 60 07  STA ram_obj_anim_cnt,Y
C - - - - - 0x01DCA9 07:DC99: 99 61 07  STA ram_obj_anim_cnt + $01,Y
C - - - - - 0x01DCAC 07:DC9C: 99 62 07  STA ram_obj_anim_cnt + $02,Y
C - - - - - 0x01DCAF 07:DC9F: A9 08     LDA #$08
C - - - - - 0x01DCB1 07:DCA1: 99 4A 07  STA ram_obj_anim_timer,Y
C - - - - - 0x01DCB4 07:DCA4: 99 4B 07  STA ram_obj_anim_timer + $01,Y
C - - - - - 0x01DCB7 07:DCA7: 99 4C 07  STA ram_obj_anim_timer + $02,Y
C - - - - - 0x01DCBA 07:DCAA: A5 04     LDA ram_0004_temp
C - - - - - 0x01DCBC 07:DCAC: 29 F0     AND #$F0
C - - - - - 0x01DCBE 07:DCAE: 09 08     ORA #$08
C - - - - - 0x01DCC0 07:DCB0: 99 42 06  STA ram_obj_pos_X_lo,Y
C - - - - - 0x01DCC3 07:DCB3: 09 0C     ORA #$0C
C - - - - - 0x01DCC5 07:DCB5: 99 43 06  STA ram_obj_pos_X_lo + $01,Y
C - - - - - 0x01DCC8 07:DCB8: 49 0F     EOR #$0F
C - - - - - 0x01DCCA 07:DCBA: 99 44 06  STA ram_obj_pos_X_lo + $02,Y
C - - - - - 0x01DCCD 07:DCBD: A5 05     LDA ram_0005_temp
C - - - - - 0x01DCCF 07:DCBF: 99 58 06  STA ram_obj_pos_X_hi,Y
C - - - - - 0x01DCD2 07:DCC2: 99 59 06  STA ram_obj_pos_X_hi + $01,Y
C - - - - - 0x01DCD5 07:DCC5: 99 5A 06  STA ram_obj_pos_X_hi + $02,Y
C - - - - - 0x01DCD8 07:DCC8: A5 06     LDA ram_0006_temp
C - - - - - 0x01DCDA 07:DCCA: 29 F0     AND #$F0
C - - - - - 0x01DCDC 07:DCCC: 09 08     ORA #$08
C - - - - - 0x01DCDE 07:DCCE: 99 84 06  STA ram_obj_pos_Y_lo,Y
C - - - - - 0x01DCE1 07:DCD1: 99 85 06  STA ram_obj_pos_Y_lo + $01,Y
C - - - - - 0x01DCE4 07:DCD4: 99 86 06  STA ram_obj_pos_Y_lo + $02,Y
C - - - - - 0x01DCE7 07:DCD7: A5 07     LDA ram_0007_temp
C - - - - - 0x01DCE9 07:DCD9: 99 9A 06  STA ram_obj_pos_Y_hi,Y
C - - - - - 0x01DCEC 07:DCDC: 99 9B 06  STA ram_obj_pos_Y_hi + $01,Y
C - - - - - 0x01DCEF 07:DCDF: 99 9C 06  STA ram_obj_pos_Y_hi + $02,Y
C - - - - - 0x01DCF2 07:DCE2: A9 00     LDA #$00
C - - - - - 0x01DCF4 07:DCE4: 99 DC 06  STA ram_obj_spd_Y_fr,Y
C - - - - - 0x01DCF7 07:DCE7: 99 DD 06  STA ram_obj_spd_Y_fr + $01,Y
C - - - - - 0x01DCFA 07:DCEA: 99 DE 06  STA ram_obj_spd_Y_fr + $02,Y
C - - - - - 0x01DCFD 07:DCED: 99 B0 06  STA ram_obj_spd_X_fr,Y
C - - - - - 0x01DD00 07:DCF0: A9 80     LDA #$80
C - - - - - 0x01DD02 07:DCF2: 99 B1 06  STA ram_obj_spd_X_fr + $01,Y
C - - - - - 0x01DD05 07:DCF5: 99 B2 06  STA ram_obj_spd_X_fr + $02,Y
C - - - - - 0x01DD08 07:DCF8: A9 00     LDA #$00
C - - - - - 0x01DD0A 07:DCFA: 99 C6 06  STA ram_obj_spd_X_lo,Y  ; 0000
C - - - - - 0x01DD0D 07:DCFD: 99 C7 06  STA ram_obj_spd_X_lo + $01,Y    ; 0080
C - - - - - 0x01DD10 07:DD00: A9 FF     LDA #$FF    ; FF80
C - - - - - 0x01DD12 07:DD02: 99 C8 06  STA ram_obj_spd_X_lo + $02,Y
C - - - - - 0x01DD15 07:DD05: A9 FA     LDA #$FA    ; FA00
C - - - - - 0x01DD17 07:DD07: 99 F2 06  STA ram_obj_spd_Y_lo,Y
C - - - - - 0x01DD1A 07:DD0A: 99 F3 06  STA ram_obj_spd_Y_lo + $01,Y
C - - - - - 0x01DD1D 07:DD0D: 99 F4 06  STA ram_obj_spd_Y_lo + $02,Y
C - - - - - 0x01DD20 07:DD10: A9 02     LDA #$02
C - - - - - 0x01DD22 07:DD12: 99 16 06  STA ram_0616_obj,Y
C - - - - - 0x01DD25 07:DD15: 99 17 06  STA ram_0616_obj + $01,Y
C - - - - - 0x01DD28 07:DD18: 99 18 06  STA ram_0616_obj + $02,Y
C - - - - - 0x01DD2B 07:DD1B: AD 16 06  LDA ram_0616_obj
C - - - - - 0x01DD2E 07:DD1E: C9 03     CMP #$03
C - - - - - 0x01DD30 07:DD20: 90 25     BCC bra_DD47_RTS
C - - - - - 0x01DD32 07:DD22: C9 05     CMP #$05
C - - - - - 0x01DD34 07:DD24: B0 21     BCS bra_DD47_RTS
C - - - - - 0x01DD36 07:DD26: A9 03     LDA #$03
C - - - - - 0x01DD38 07:DD28: 99 16 06  STA ram_0616_obj,Y
C - - - - - 0x01DD3B 07:DD2B: 99 17 06  STA ram_0616_obj + $01,Y
C - - - - - 0x01DD3E 07:DD2E: 99 18 06  STA ram_0616_obj + $02,Y
C - - - - - 0x01DD41 07:DD31: A9 FB     LDA #> $FB00
C - - - - - 0x01DD43 07:DD33: 99 F2 06  STA ram_obj_spd_Y_lo,Y
C - - - - - 0x01DD46 07:DD36: 99 F3 06  STA ram_obj_spd_Y_lo + $01,Y
C - - - - - 0x01DD49 07:DD39: 99 F4 06  STA ram_obj_spd_Y_lo + $02,Y
C - - - - - 0x01DD4C 07:DD3C: A9 00     LDA #< $FB00
C - - - - - 0x01DD4E 07:DD3E: 99 DC 06  STA ram_obj_spd_Y_fr,Y
C - - - - - 0x01DD51 07:DD41: 99 DD 06  STA ram_obj_spd_Y_fr + $01,Y
C - - - - - 0x01DD54 07:DD44: 99 DE 06  STA ram_obj_spd_Y_fr + $02,Y
bra_DD47_RTS:
C - - - - - 0x01DD57 07:DD47: 60        RTS



sub_DD48:
C - - - - - 0x01DD58 07:DD48: 8A        TXA
C - - - - - 0x01DD59 07:DD49: 48        PHA
C - - - - - 0x01DD5A 07:DD4A: A2 00     LDX #$00
C - - - - - 0x01DD5C 07:DD4C: A0 15     LDY #$15
bra_DD4E_loop:
C - - - - - 0x01DD5E 07:DD4E: B9 16 06  LDA ram_0616_obj,Y
C - - - - - 0x01DD61 07:DD51: F0 0C     BEQ bra_DD5F
- - - - - - 0x01DD63 07:DD53: A2 00     LDX #$00
bra_DD55_loop:
C - - - - - 0x01DD65 07:DD55: 88        DEY
C - - - - - 0x01DD66 07:DD56: C0 0A     CPY #$0A
C - - - - - 0x01DD68 07:DD58: B0 F4     BCS bra_DD4E_loop
- - - - - - 0x01DD6A 07:DD5A: A0 07     LDY #$07
- - - - - - 0x01DD6C 07:DD5C: 68        PLA
- - - - - - 0x01DD6D 07:DD5D: AA        TAX
- - - - - - 0x01DD6E 07:DD5E: 60        RTS
bra_DD5F:
C - - - - - 0x01DD6F 07:DD5F: E8        INX
C - - - - - 0x01DD70 07:DD60: E0 03     CPX #$03
C - - - - - 0x01DD72 07:DD62: 90 F1     BCC bra_DD55_loop
C - - - - - 0x01DD74 07:DD64: 68        PLA
C - - - - - 0x01DD75 07:DD65: AA        TAX
C - - - - - 0x01DD76 07:DD66: 60        RTS



tbl_DD67:
tbl_0x01DD77:
; only 2nd byte is read mostly, via 0x000087 and 0x01CAF6 
;                                              +-------------------- 
;                                              |    +--------------- 
;                                              |    |    +---------- 
;                                              |    |    |    +----- 
;                                              |    |    |    |
- - - - - - 0x01DD77 07:DD67: 5F        .byte $5F, $8C, $60, $00   ; 00 1-1
- - - - - - 0x01DD7B 07:DD6B: 4F        .byte $4F, $88, $60, $00   ; 01 1-2
- - - - - - 0x01DD7F 07:DD6F: 4F        .byte $4F, $84, $40, $00   ; 02 1-3
- - - - - - 0x01DD83 07:DD73: 2F        .byte $2F, $88, $30, $00   ; 03 2-1
- D 2 - - - 0x01DD87 07:DD77: 6F        .byte $6F, $08, $40, $01   ; 04 2-2
- - - - - - 0x01DD8B 07:DD7B: 6F        .byte $6F, $08, $E0, $00   ; 05 2-3
- - - - - - 0x01DD8F 07:DD7F: 2F        .byte $2F, $08, $20, $00   ; 06 3-1
- - - - - - 0x01DD93 07:DD83: 5F        .byte $5F, $0C, $20, $01   ; 07 3-2
- - - - - - 0x01DD97 07:DD87: 0F        .byte $0F, $8A, $F0, $00   ; 08 3-3
- - - - - - 0x01DD9B 07:DD8B: 4F        .byte $4F, $84, $60, $00   ; 09 4-1
- - - - - - 0x01DD9F 07:DD8F: 6F        .byte $6F, $88, $60, $00   ; 0A 4-2
- - - - - - 0x01DDA3 07:DD93: 2F        .byte $2F, $88, $60, $00   ; 0B 4-3
- - - - - - 0x01DDA7 07:DD97: 6F        .byte $6F, $08, $00, $01   ; 0C 5-1
- - - - - - 0x01DDAB 07:DD9B: 4F        .byte $4F, $9C, $30, $00   ; 0D 5-2
- - - - - - 0x01DDAF 07:DD9F: 6F        .byte $6F, $08, $E0, $00   ; 0E 5-3
- - - - - - 0x01DDB3 07:DDA3: 4F        .byte $4F, $94, $60, $00   ; 0F 6-1
- - - - - - 0x01DDB7 07:DDA7: 5F        .byte $5F, $88, $A0, $00   ; 10 6-2
- - - - - - 0x01DDBB 07:DDAB: 6F        .byte $6F, $14, $E0, $00   ; 11 7-1
- - - - - - 0x01DDBF 07:DDAF: 6F        .byte $6F, $88, $40, $00   ; 12 7-2
- - - - - - 0x01DDC3 07:DDB3: 00        .byte $00, $00, $00, $00   ; 13 8-1
- - - - - - 0x01DDC7 07:DDB7: 6F        .byte $6F, $08, $B0, $00   ; 14 9-1
- - - - - - 0x01DDCB 07:DDBB: 5F        .byte $5F, $08, $E0, $00   ; 15 9-2
- - - - - - 0x01DDCF 07:DDBF: 00        .byte $00, $80, $00, $00   ; 16 9-3



sub_DDC3_add_score:
sub_0x01DDD3_add_score:
loc_0x01DDD3_add_score:
; in
    ; A = con_add_score
        ; each tick adds a cetrain amout of points from 0x01DE86 table
; bzk optimize, no A values > 1F, no need for AND 1F
C D 2 - - - 0x01DDD3 07:DDC3: 29 1F     AND #$1F
; * 06
C - - - - - 0x01DDD5 07:DDC5: 0A        ASL
C - - - - - 0x01DDD6 07:DDC6: 85 00     STA ram_0000_t37
C - - - - - 0x01DDD8 07:DDC8: 0A        ASL
C - - - - - 0x01DDD9 07:DDC9: 65 00     ADC ram_0000_t37
; bzk optimize, prepare proper values beforehand, without SBC 01
C - - - - - 0x01DDDB 07:DDCB: 38        SEC
C - - - - - 0x01DDDC 07:DDCC: E9 01     SBC #$01
C - - - - - 0x01DDDE 07:DDCE: 18        CLC
C - - - - - 0x01DDDF 07:DDCF: 69 76     ADC #< tbl_DE76_score
C - - - - - 0x01DDE1 07:DDD1: 85 00     STA ram_0000_t16_score_data
C - - - - - 0x01DDE3 07:DDD3: A9 DE     LDA #> tbl_DE76_score
C - - - - - 0x01DDE5 07:DDD5: 69 00     ADC #$00
C - - - - - 0x01DDE7 07:DDD7: 85 01     STA ram_0000_t16_score_data + $01
C - - - - - 0x01DDE9 07:DDD9: 8A        TXA
C - - - - - 0x01DDEA 07:DDDA: 48        PHA
C - - - - - 0x01DDEB 07:DDDB: 98        TYA
C - - - - - 0x01DDEC 07:DDDC: 48        PHA
C - - - - - 0x01DDED 07:DDDD: 20 61 DE  JSR sub_DE61
C - - - - - 0x01DDF0 07:DDE0: 48        PHA
C - - - - - 0x01DDF1 07:DDE1: A0 06     LDY #$06
C - - - - - 0x01DDF3 07:DDE3: 18        CLC
bra_DDE4_loop:
C - - - - - 0x01DDF4 07:DDE4: B9 9D 03  LDA ram_hiscore + $06,Y
C - - - - - 0x01DDF7 07:DDE7: 71 00     ADC (ram_0000_t16_score_data),Y
C - - - - - 0x01DDF9 07:DDE9: C9 1A     CMP #$1A
C - - - - - 0x01DDFB 07:DDEB: 90 03     BCC bra_DDF0
C - - - - - 0x01DDFD 07:DDED: 38        SEC
C - - - - - 0x01DDFE 07:DDEE: E9 0A     SBC #$0A
bra_DDF0:
C - - - - - 0x01DE00 07:DDF0: 99 9D 03  STA ram_hiscore + $06,Y
C - - - - - 0x01DE03 07:DDF3: 08        PHP
C - - - - - 0x01DE04 07:DDF4: C9 10     CMP #$10
C - - - - - 0x01DE06 07:DDF6: F0 02     BEQ bra_DDFA
C - - - - - 0x01DE08 07:DDF8: 98        TYA
C - - - - - 0x01DE09 07:DDF9: AA        TAX
bra_DDFA:
C - - - - - 0x01DE0A 07:DDFA: 28        PLP
C - - - - - 0x01DE0B 07:DDFB: 88        DEY
C - - - - - 0x01DE0C 07:DDFC: D0 E6     BNE bra_DDE4_loop
C - - - - - 0x01DE0E 07:DDFE: 90 0A     BCC bra_DE0A
- - - - - - 0x01DE10 07:DE00: A0 06     LDY #$06
- - - - - - 0x01DE12 07:DE02: A9 19     LDA #$19
bra_DE04_loop:
- - - - - - 0x01DE14 07:DE04: 99 9D 03  STA ram_hiscore + $06,Y
- - - - - - 0x01DE17 07:DE07: 88        DEY
- - - - - - 0x01DE18 07:DE08: D0 FA     BNE bra_DE04_loop
bra_DE0A:
C - - - - - 0x01DE1A 07:DE0A: CA        DEX
C - - - - - 0x01DE1B 07:DE0B: 8A        TXA
C - - - - - 0x01DE1C 07:DE0C: 18        CLC
C - - - - - 0x01DE1D 07:DE0D: 69 27     ADC #$27
C - - - - - 0x01DE1F 07:DE0F: CD AE 03  CMP ram_03AE
C - - - - - 0x01DE22 07:DE12: B0 03     BCS bra_DE17
C - - - - - 0x01DE24 07:DE14: 8D AE 03  STA ram_03AE
bra_DE17:
C - - - - - 0x01DE27 07:DE17: 68        PLA
C - - - - - 0x01DE28 07:DE18: C9 FF     CMP #$FF
C - - - - - 0x01DE2A 07:DE1A: F0 18     BEQ bra_DE34
C - - - - - 0x01DE2C 07:DE1C: 85 00     STA ram_0000_t38
C - - - - - 0x01DE2E 07:DE1E: 20 61 DE  JSR sub_DE61
C - - - - - 0x01DE31 07:DE21: C5 00     CMP ram_0000_t38
C - - - - - 0x01DE33 07:DE23: F0 0F     BEQ bra_DE34
C - - - - - 0x01DE35 07:DE25: C9 15     CMP #$15
C - - - - - 0x01DE37 07:DE27: F0 08     BEQ bra_DE31
C - - - - - 0x01DE39 07:DE29: C9 40     CMP #$40
C - - - - - 0x01DE3B 07:DE2B: F0 04     BEQ bra_DE31
C - - - - - 0x01DE3D 07:DE2D: C9 60     CMP #$60
C - - - - - 0x01DE3F 07:DE2F: D0 03     BNE bra_DE34
bra_DE31:
C - - - - - 0x01DE41 07:DE31: 20 70 DA  JSR sub_DA70
bra_DE34:
C - - - - - 0x01DE44 07:DE34: A0 FF     LDY #$FF
bra_DE36_loop:
C - - - - - 0x01DE46 07:DE36: C8        INY
C - - - - - 0x01DE47 07:DE37: C0 07     CPY #$07
C - - - - - 0x01DE49 07:DE39: B0 21     BCS bra_DE5C
C - - - - - 0x01DE4B 07:DE3B: B9 9E 03  LDA ram_score,Y
C - - - - - 0x01DE4E 07:DE3E: D9 97 03  CMP ram_hiscore,Y
C - - - - - 0x01DE51 07:DE41: F0 F3     BEQ bra_DE36_loop
C - - - - - 0x01DE53 07:DE43: 90 17     BCC bra_DE5C
loc_DE45_loop:
C D 2 - - - 0x01DE55 07:DE45: 99 97 03  STA ram_hiscore,Y
C - - - - - 0x01DE58 07:DE48: C8        INY
C - - - - - 0x01DE59 07:DE49: C0 07     CPY #$07
C - - - - - 0x01DE5B 07:DE4B: B0 06     BCS bra_DE53
C - - - - - 0x01DE5D 07:DE4D: B9 9E 03  LDA ram_score,Y
C - - - - - 0x01DE60 07:DE50: 4C 45 DE  JMP loc_DE45_loop
bra_DE53:
C - - - - - 0x01DE63 07:DE53: AD AE 03  LDA ram_03AE
C - - - - - 0x01DE66 07:DE56: 18        CLC
C - - - - - 0x01DE67 07:DE57: 69 10     ADC #$10
C - - - - - 0x01DE69 07:DE59: 8D AD 03  STA ram_03AD
bra_DE5C:
C - - - - - 0x01DE6C 07:DE5C: 68        PLA
C - - - - - 0x01DE6D 07:DE5D: A8        TAY
C - - - - - 0x01DE6E 07:DE5E: 68        PLA
C - - - - - 0x01DE6F 07:DE5F: AA        TAX
C - - - - - 0x01DE70 07:DE60: 60        RTS



sub_DE61:
; out
    ; A = 
C - - - - - 0x01DE71 07:DE61: AD 9E 03  LDA ram_score
C - - - - - 0x01DE74 07:DE64: C9 11     CMP #$11
C - - - - - 0x01DE76 07:DE66: A9 FF     LDA #$FF
C - - - - - 0x01DE78 07:DE68: B0 0B     BCS bra_DE75_RTS
C - - - - - 0x01DE7A 07:DE6A: AD 9F 03  LDA ram_score + $01
; * 10
C - - - - - 0x01DE7D 07:DE6D: 0A        ASL
C - - - - - 0x01DE7E 07:DE6E: 0A        ASL
C - - - - - 0x01DE7F 07:DE6F: 0A        ASL
C - - - - - 0x01DE80 07:DE70: 0A        ASL
C - - - - - 0x01DE81 07:DE71: 18        CLC
C - - - - - 0x01DE82 07:DE72: 6D A0 03  ADC ram_score + $02
bra_DE75_RTS:
C - - - - - 0x01DE85 07:DE75: 60        RTS



tbl_DE76_score:
; see con_add_score
- - - - - - 0x01DE86 07:DE76: 00        .byte $00, $00, $00, $00, $00, $01   ; 00 10   unused, index not found
- D 2 - I - 0x01DE8C 07:DE7C: 00        .byte $00, $00, $00, $00, $00, $02   ; 01 20   
- - - - - - 0x01DE92 07:DE82: 00        .byte $00, $00, $00, $00, $00, $03   ; 02 30   unused, index not found
- D 2 - I - 0x01DE98 07:DE88: 00        .byte $00, $00, $00, $00, $00, $05   ; 03 50   
- D 2 - I - 0x01DE9E 07:DE8E: 00        .byte $00, $00, $00, $00, $01, $00   ; 04 100  
- D 2 - I - 0x01DEA4 07:DE94: 00        .byte $00, $00, $00, $00, $01, $05   ; 05 150  
- D 2 - I - 0x01DEAA 07:DE9A: 00        .byte $00, $00, $00, $00, $02, $00   ; 06 200  
- - - - - - 0x01DEB0 07:DEA0: 00        .byte $00, $00, $00, $00, $02, $05   ; 07 250  unused, index not found
- D 2 - I - 0x01DEB6 07:DEA6: 00        .byte $00, $00, $00, $00, $03, $00   ; 08 300  
- - - - - - 0x01DEBC 07:DEAC: 00        .byte $00, $00, $00, $00, $04, $00   ; 09 400  unused, index not found
- D 2 - I - 0x01DEC2 07:DEB2: 00        .byte $00, $00, $00, $00, $05, $00   ; 0A 500  
; bzk garbage
- - - - - - 0x01DEC8 07:DEB8: 00        .byte $00, $00, $00, $00, $06, $00   ; 0B 600  unused, index not found
- - - - - - 0x01DECE 07:DEBE: 00        .byte $00, $00, $00, $00, $07, $00   ; 0C 700  unused, index not found
- - - - - - 0x01DED4 07:DEC4: 00        .byte $00, $00, $00, $00, $08, $00   ; 0D 800  unused, index not found
- - - - - - 0x01DEDA 07:DECA: 00        .byte $00, $00, $00, $00, $09, $00   ; 0E 900  unused, index not found
- - - - - - 0x01DEE0 07:DED0: 00        .byte $00, $00, $00, $01, $00, $00   ; 0F 1000 unused, index not found
- - - - - - 0x01DEE6 07:DED6: 00        .byte $00, $00, $00, $02, $00, $00   ; 10 2000 unused, index not found



_off009_0x01DEEC_2C_cannon_315:
_off009_0x01DEEC_2D_cannon_45:
_off009_0x01DEEC_2E_cannon_90_180:
_off009_0x01DEEC_2F:
- D 2 - I - 0x01DEEC 07:DEDC: 63 9A     .word ofs_005_2C_0x019A73_01
- D 2 - I - 0x01DEEE 07:DEDE: 82 99     .word ofs_005_2C_0x019992_02
- - - - - - 0x01DEF0 07:DEE0: EE 94     .word ofs_005_2C_0x0194FE_03
- - - - - - 0x01DEF2 07:DEE2: 82 99     .word ofs_005_2C_0x019992_04



_off009_0x01DEF4_24_cloud_professor:
- D 2 - I - 0x01DEF4 07:DEE4: 1E 9E     .word ofs_005_24_0x019E2E_01
- - - - - - 0x01DEF6 07:DEE6: 28 9E     .word ofs_005_24_0x019E38_02
- D 2 - I - 0x01DEF8 07:DEE8: 28 9E     .word ofs_005_24_0x019E38_03



_off009_0x01DEFA_25_cloud_kitty:
- D 2 - I - 0x01DEFA 07:DEEA: 6D 9E     .word ofs_005_25_0x019E7D_01



sub_0x01DEFC:
; bzk optimize, move to bank 0C
C - - - - - 0x01DEFC 07:DEEC: A9 09     LDA #$09
C - - - - - 0x01DEFE 07:DEEE: 85 3C     STA ram_003C
C - - - - - 0x01DF00 07:DEF0: A9 19     LDA #$19
; bzk optimize, JMP
C - - - - - 0x01DF02 07:DEF2: 20 17 89  JSR sub_0x018927_add_spd_Y
C - - - - - 0x01DF05 07:DEF5: 60        RTS



loc_0x01DF06:
C D 2 - - - 0x01DF06 07:DEF6: A9 0B     LDA #$0B
C - - - - - 0x01DF08 07:DEF8: 99 34 07  STA ram_0734_obj,Y
C - - - - - 0x01DF0B 07:DEFB: 8A        TXA
C - - - - - 0x01DF0C 07:DEFC: 48        PHA
C - - - - - 0x01DF0D 07:DEFD: 98        TYA
C - - - - - 0x01DF0E 07:DEFE: 29 03     AND #$03
C - - - - - 0x01DF10 07:DF00: AA        TAX
C - - - - - 0x01DF11 07:DF01: BD 26 DF  LDA tbl_DF26_spd_X_fr,X
C - - - - - 0x01DF14 07:DF04: 99 B0 06  STA ram_obj_spd_X_fr,Y
C - - - - - 0x01DF17 07:DF07: A9 FF     LDA #$FF
C - - - - - 0x01DF19 07:DF09: 99 C6 06  STA ram_obj_spd_X_lo,Y
C - - - - - 0x01DF1C 07:DF0C: BD 2A DF  LDA tbl_DF2A_spd_Y_fr,X
C - - - - - 0x01DF1F 07:DF0F: 38        SEC
C - - - - - 0x01DF20 07:DF10: E9 50     SBC #< $0050
C - - - - - 0x01DF22 07:DF12: 99 DC 06  STA ram_obj_spd_Y_fr,Y
C - - - - - 0x01DF25 07:DF15: A9 00     LDA #$00
C - - - - - 0x01DF27 07:DF17: E9 00     SBC #> $0050
C - - - - - 0x01DF29 07:DF19: 99 F2 06  STA ram_obj_spd_Y_lo,Y
C - - - - - 0x01DF2C 07:DF1C: 68        PLA
C - - - - - 0x01DF2D 07:DF1D: AA        TAX
C - - - - - 0x01DF2E 07:DF1E: A9 18     LDA #con_sfx_18
C - - - - - 0x01DF30 07:DF20: 20 1A FF  JSR sub_FF1A_play_sound
C - - - - - 0x01DF33 07:DF23: A9 00     LDA #$00
C - - - - - 0x01DF35 07:DF25: 60        RTS



tbl_DF26_spd_X_fr:
- D 2 - - - 0x01DF36 07:DF26: 20        .byte < $FF20   ; 00 
- D 2 - - - 0x01DF37 07:DF27: 20        .byte < $FF20   ; 01 
- D 2 - - - 0x01DF38 07:DF28: 50        .byte < $FF50   ; 02 
- D 2 - - - 0x01DF39 07:DF29: 50        .byte < $FF50   ; 03 



tbl_DF2A_spd_Y_fr:
- D 2 - - - 0x01DF3A 07:DF2A: 30        .byte < $0030   ; 00 
- D 2 - - - 0x01DF3B 07:DF2B: 70        .byte < $0070   ; 01 
- D 2 - - - 0x01DF3C 07:DF2C: 00        .byte < $0000   ; 02 
- D 2 - - - 0x01DF3D 07:DF2D: A0        .byte < $00A0   ; 03 



sub_0x01DF3E:
C - - - - - 0x01DF3E 07:DF2E: C9 06     CMP #$06
C - - - - - 0x01DF40 07:DF30: D0 23     BNE bra_DF55
C - - - - - 0x01DF42 07:DF32: AD 20 06  LDA ram_0616_obj + $0A
C - - - - - 0x01DF45 07:DF35: C9 03     CMP #$03
C - - - - - 0x01DF47 07:DF37: 90 1C     BCC bra_DF55
C - - - - - 0x01DF49 07:DF39: A9 16     LDA #con_obj_id_16
C - - - - - 0x01DF4B 07:DF3B: 99 00 06  STA ram_0600_obj_id,Y
C - - - - - 0x01DF4E 07:DF3E: A9 03     LDA #$03
C - - - - - 0x01DF50 07:DF40: 99 16 06  STA ram_0616_obj,Y
C - - - - - 0x01DF53 07:DF43: 99 34 07  STA ram_0734_obj,Y
C - - - - - 0x01DF56 07:DF46: A9 00     LDA #con_0708_00
C - - - - - 0x01DF58 07:DF48: 99 08 07  STA ram_0708_obj_flags,Y
C - - - - - 0x01DF5B 07:DF4B: C0 15     CPY #$15
C - - - - - 0x01DF5D 07:DF4D: D0 06     BNE bra_DF55
C - - - - - 0x01DF5F 07:DF4F: 99 16 06  STA ram_0616_obj,Y
C - - - - - 0x01DF62 07:DF52: A9 01     LDA #$01
C - - - - - 0x01DF64 07:DF54: 60        RTS
bra_DF55:
C - - - - - 0x01DF65 07:DF55: 86 00     STX ram_0000_t69_save_X
C - - - - - 0x01DF67 07:DF57: AA        TAX
C - - - - - 0x01DF68 07:DF58: B9 84 06  LDA ram_obj_pos_Y_lo,Y
C - - - - - 0x01DF6B 07:DF5B: 18        CLC
C - - - - - 0x01DF6C 07:DF5C: 69 10     ADC #< $0010
C - - - - - 0x01DF6E 07:DF5E: 99 84 06  STA ram_obj_pos_Y_lo,Y
C - - - - - 0x01DF71 07:DF61: B9 9A 06  LDA ram_obj_pos_Y_hi,Y
C - - - - - 0x01DF74 07:DF64: 69 00     ADC #> $0010
C - - - - - 0x01DF76 07:DF66: 99 9A 06  STA ram_obj_pos_Y_hi,Y
C - - - - - 0x01DF79 07:DF69: B9 84 06  LDA ram_obj_pos_Y_lo,Y
C - - - - - 0x01DF7C 07:DF6C: 38        SEC
C - - - - - 0x01DF7D 07:DF6D: FD ED A0  SBC tbl_0x01A0FD_pos_Y_lo,X
C - - - - - 0x01DF80 07:DF70: 99 84 06  STA ram_obj_pos_Y_lo,Y
C - - - - - 0x01DF83 07:DF73: B9 9A 06  LDA ram_obj_pos_Y_hi,Y
C - - - - - 0x01DF86 07:DF76: E9 00     SBC #$00
C - - - - - 0x01DF88 07:DF78: 99 9A 06  STA ram_obj_pos_Y_hi,Y
C - - - - - 0x01DF8B 07:DF7B: B9 76 07  LDA ram_0776_obj_flags,Y
C - - - - - 0x01DF8E 07:DF7E: 29 40     AND #con_0776_flip_H
C - - - - - 0x01DF90 07:DF80: F0 15     BEQ bra_DF97
C - - - - - 0x01DF92 07:DF82: B9 42 06  LDA ram_obj_pos_X_lo,Y
C - - - - - 0x01DF95 07:DF85: 18        CLC
C - - - - - 0x01DF96 07:DF86: 7D E4 A0  ADC tbl_0x01A0F4_pos_X_lo,X
C - - - - - 0x01DF99 07:DF89: 99 42 06  STA ram_obj_pos_X_lo,Y
C - - - - - 0x01DF9C 07:DF8C: B9 58 06  LDA ram_obj_pos_X_hi,Y
C - - - - - 0x01DF9F 07:DF8F: 69 00     ADC #$00
C - - - - - 0x01DFA1 07:DF91: 99 58 06  STA ram_obj_pos_X_hi,Y
C - - - - - 0x01DFA4 07:DF94: A6 00     LDX ram_0000_t69_save_X
C - - - - - 0x01DFA6 07:DF96: 60        RTS
bra_DF97:
C - - - - - 0x01DFA7 07:DF97: B9 42 06  LDA ram_obj_pos_X_lo,Y
C - - - - - 0x01DFAA 07:DF9A: 38        SEC
C - - - - - 0x01DFAB 07:DF9B: FD E4 A0  SBC tbl_0x01A0F4_pos_X_lo,X
C - - - - - 0x01DFAE 07:DF9E: 99 42 06  STA ram_obj_pos_X_lo,Y
C - - - - - 0x01DFB1 07:DFA1: B9 58 06  LDA ram_obj_pos_X_hi,Y
C - - - - - 0x01DFB4 07:DFA4: E9 00     SBC #$00
C - - - - - 0x01DFB6 07:DFA6: 99 58 06  STA ram_obj_pos_X_hi,Y
C - - - - - 0x01DFB9 07:DFA9: A6 00     LDX ram_0000_t69_save_X
C - - - - - 0x01DFBB 07:DFAB: 60        RTS



sub_0x01DFBC:
; out
    ; Z
        ; 0 = 
        ; 1 = 
C - - - - - 0x01DFBC 07:DFAC: BD 08 07  LDA ram_0708_obj_flags,X
C - - - - - 0x01DFBF 07:DFAF: 29 10     AND #con_0708_10
C - - - - - 0x01DFC1 07:DFB1: F0 20     BEQ bra_DFD3
C - - - - - 0x01DFC3 07:DFB3: BD DC 06  LDA ram_obj_spd_Y_fr,X
C - - - - - 0x01DFC6 07:DFB6: 8D 22 04  STA ram_copy_obj_spd_Y_fr
C - - - - - 0x01DFC9 07:DFB9: BD F2 06  LDA ram_obj_spd_Y_lo,X
C - - - - - 0x01DFCC 07:DFBC: 8D 23 04  STA ram_copy_obj_spd_Y_lo
C - - - - - 0x01DFCF 07:DFBF: BD B0 06  LDA ram_obj_spd_X_fr,X
C - - - - - 0x01DFD2 07:DFC2: 8D 20 04  STA ram_copy_obj_spd_X_fr
C - - - - - 0x01DFD5 07:DFC5: BD C6 06  LDA ram_obj_spd_X_lo,X
C - - - - - 0x01DFD8 07:DFC8: 8D 21 04  STA ram_copy_obj_spd_X_lo
C - - - - - 0x01DFDB 07:DFCB: BD 08 07  LDA ram_0708_obj_flags,X
C - - - - - 0x01DFDE 07:DFCE: 29 EF     AND #con_0708_10 ^ $FF
C - - - - - 0x01DFE0 07:DFD0: 9D 08 07  STA ram_0708_obj_flags,X
bra_DFD3:
C - - - - - 0x01DFE3 07:DFD3: BD A2 07  LDA ram_07A2_obj,X
C - - - - - 0x01DFE6 07:DFD6: 1D 8C 07  ORA ram_078C_obj,X
C - - - - - 0x01DFE9 07:DFD9: F0 41     BEQ bra_E01C
C - - - - - 0x01DFEB 07:DFDB: BC B8 07  LDY ram_07B8_obj,X
; bzk optimize, no need for CPY 00
C - - - - - 0x01DFEE 07:DFDE: C0 00     CPY #$00
C - - - - - 0x01DFF0 07:DFE0: F0 03     BEQ bra_DFE5    ; if felix
; if not felix, but his weapon
C - - - - - 0x01DFF2 07:DFE2: 4C 71 E0  JMP loc_E071_kill_enemy
bra_DFE5:
sub_0x01DFF5:
loc_0x01DFF5:
C D 2 - - - 0x01DFF5 07:DFE5: BC B8 07  LDY ram_07B8_obj,X
C - - - - - 0x01DFF8 07:DFE8: C0 00     CPY #$00
C - - - - - 0x01DFFA 07:DFEA: D0 28     BNE bra_E014
C - - - - - 0x01DFFC 07:DFEC: AD C2 03  LDA ram_03C2_felix_state
C - - - - - 0x01DFFF 07:DFEF: C9 07     CMP #$07
C - - - - - 0x01E001 07:DFF1: D0 05     BNE bra_DFF8_not_ducking
; if ducking
C - - - - - 0x01E003 07:DFF3: BD A2 07  LDA ram_07A2_obj,X
C - - - - - 0x01E006 07:DFF6: 30 1C     BMI bra_E014
bra_DFF8_not_ducking:
C - - - - - 0x01E008 07:DFF8: AD CD 03  LDA ram_03CD
C - - - - - 0x01E00B 07:DFFB: D0 17     BNE bra_E014
C - - - - - 0x01E00D 07:DFFD: BD A2 07  LDA ram_07A2_obj,X
C D 3 - - - 0x01E010 07:E000: 29 7F     AND #$7F
C - - - - - 0x01E012 07:E002: C9 07     CMP #$07
C - - - - - 0x01E014 07:E004: 90 0E     BCC bra_E014
C - - - - - 0x01E016 07:E006: BD 8C 07  LDA ram_078C_obj,X
C - - - - - 0x01E019 07:E009: 29 7F     AND #$7F
C - - - - - 0x01E01B 07:E00B: C9 02     CMP #$02
C - - - - - 0x01E01D 07:E00D: 90 05     BCC bra_E014
C - - - - - 0x01E01F 07:E00F: A9 FF     LDA #$FF
C - - - - - 0x01E021 07:E011: 8D CD 03  STA ram_03CD
bra_E014:
loc_E014:
loc_0x01E024:
C D 3 - - - 0x01E024 07:E014: A9 00     LDA #$00
C - - - - - 0x01E026 07:E016: 9D A2 07  STA ram_07A2_obj,X
C - - - - - 0x01E029 07:E019: 9D 8C 07  STA ram_078C_obj,X
bra_E01C:
sub_0x01E02C:
loc_0x01E02C:
C D 3 - - - 0x01E02C 07:E01C: BD 42 06  LDA ram_obj_pos_X_lo,X
C - - - - - 0x01E02F 07:E01F: 85 00     STA ram_0000_t70_pos_X_lo
C - - - - - 0x01E031 07:E021: BD 58 06  LDA ram_obj_pos_X_hi,X
C - - - - - 0x01E034 07:E024: C9 80     CMP #$80
C - - - - - 0x01E036 07:E026: 6A        ROR
C - - - - - 0x01E037 07:E027: 66 00     ROR ram_0000_t70_pos_X_lo
C - - - - - 0x01E039 07:E029: C9 80     CMP #$80
C - - - - - 0x01E03B 07:E02B: 6A        ROR
C - - - - - 0x01E03C 07:E02C: 66 00     ROR ram_0000_t70_pos_X_lo
C - - - - - 0x01E03E 07:E02E: C9 80     CMP #$80
C - - - - - 0x01E040 07:E030: 6A        ROR
C - - - - - 0x01E041 07:E031: 66 00     ROR ram_0000_t70_pos_X_lo
C - - - - - 0x01E043 07:E033: 85 01     STA ram_0001_t07
C - - - - - 0x01E045 07:E035: A5 00     LDA ram_0000_t70_pos_X_lo
C - - - - - 0x01E047 07:E037: 38        SEC
C - - - - - 0x01E048 07:E038: ED 95 03  SBC ram_0395
C - - - - - 0x01E04B 07:E03B: A5 01     LDA ram_0001_t07
C - - - - - 0x01E04D 07:E03D: ED 96 03  SBC ram_0396
C - - - - - 0x01E050 07:E040: 29 50     AND #$50
C - - - - - 0x01E052 07:E042: D0 10     BNE bra_E054
C - - - - - 0x01E054 07:E044: AD 93 03  LDA ram_0393
C - - - - - 0x01E057 07:E047: 38        SEC
C - - - - - 0x01E058 07:E048: E5 00     SBC ram_0000_t70_pos_X_lo
C - - - - - 0x01E05A 07:E04A: AD 94 03  LDA ram_0394
C - - - - - 0x01E05D 07:E04D: E5 01     SBC ram_0001_t07
C - - - - - 0x01E05F 07:E04F: 29 80     AND #$80
C - - - - - 0x01E061 07:E051: D0 01     BNE bra_E054
C - - - - - 0x01E063 07:E053: 60        RTS
bra_E054:
C - - - - - 0x01E064 07:E054: BC 1E 07  LDY ram_071E_obj_queue_id,X
C - - - - - 0x01E067 07:E057: B9 00 78  LDA ram_7800_round_obj_flags,Y
C - - - - - 0x01E06A 07:E05A: 29 40     AND #$40
C - - - - - 0x01E06C 07:E05C: D0 10     BNE bra_E06E
loc_0x01E06E:
C D 3 - - - 0x01E06E 07:E05E: A9 00     LDA #$00
C - - - - - 0x01E070 07:E060: 9D 16 06  STA ram_0616_obj,X
C - - - - - 0x01E073 07:E063: BC 1E 07  LDY ram_071E_obj_queue_id,X
C - - - - - 0x01E076 07:E066: B9 00 79  LDA ram_7900_round_obj_id,Y
C - - - - - 0x01E079 07:E069: 29 7F     AND #$7F
C - - - - - 0x01E07B 07:E06B: 99 00 79  STA ram_7900_round_obj_id,Y
bra_E06E:
C - - - - - 0x01E07E 07:E06E: A9 01     LDA #$01
C - - - - - 0x01E080 07:E070: 60        RTS



loc_E071_kill_enemy:
sub_0x01E081_kill_enemy:
loc_0x01E081_kill_enemy:
; in
    ; X = object index which is getting hit by object Y
    ; Y = object index which hits object Y
; out
    ; Z
        ; 0 = 
        ; 1 = 
C D 3 - - - 0x01E081 07:E071: B9 16 06  LDA ram_0616_obj,Y ; 0617
; check if weapon is active
; bzk optimize, useless check, an enemy can only be killed
; with a weapon, and this subroutine is not called otherwise
C - - - - - 0x01E084 07:E074: F0 9E     BEQ bra_E014
C - - - - - 0x01E086 07:E076: AD C6 03  LDA ram_03C6_previous_weapon
C - - - - - 0x01E089 07:E079: D0 0E     BNE bra_E089
C - - - - - 0x01E08B 07:E07B: B9 76 07  LDA ram_0776_obj_flags,Y
C - - - - - 0x01E08E 07:E07E: 0A        ASL
C - - - - - 0x01E08F 07:E07F: 5D 8C 07  EOR ram_078C_obj,X
C - - - - - 0x01E092 07:E082: 29 80     AND #$80    ; con_0776_flip_V ?
C - - - - - 0x01E094 07:E084: F0 03     BEQ bra_E089
C - - - - - 0x01E096 07:E086: 4C 14 E0  JMP loc_E014
bra_E089:
C - - - - - 0x01E099 07:E089: B9 CE 07  LDA ram_07CE_obj_hp,Y
C - - - - - 0x01E09C 07:E08C: D0 03     BNE bra_E091
C - - - - - 0x01E09E 07:E08E: 4C 14 E0  JMP loc_E014
bra_E091:
C - - - - - 0x01E0A1 07:E091: 85 00     STA ram_0000_t82_damage
C - - - - - 0x01E0A3 07:E093: BD 16 06  LDA ram_0616_obj,X
C - - - - - 0x01E0A6 07:E096: C9 02     CMP #$02
C - - - - - 0x01E0A8 07:E098: F0 0D     BEQ bra_E0A7
C - - - - - 0x01E0AA 07:E09A: A9 00     LDA #$00
C - - - - - 0x01E0AC 07:E09C: 99 CE 07  STA ram_07CE_obj_hp,Y
C - - - - - 0x01E0AF 07:E09F: A9 F8     LDA #$F8
C - - - - - 0x01E0B1 07:E0A1: 99 1E 07  STA ram_071E_obj_queue_id,Y
C - - - - - 0x01E0B4 07:E0A4: 4C AF E0  JMP loc_E0AF
bra_E0A7:
C - - - - - 0x01E0B7 07:E0A7: BD F2 06  LDA ram_obj_spd_Y_lo,X
C - - - - - 0x01E0BA 07:E0AA: 10 03     BPL bra_E0AF
C - - - - - 0x01E0BC 07:E0AC: 4C 14 E0  JMP loc_E014
bra_E0AF:
loc_E0AF:
C D 3 - - - 0x01E0BF 07:E0AF: A9 05     LDA #con_sfx_05
C - - - - - 0x01E0C1 07:E0B1: 20 1A FF  JSR sub_FF1A_play_sound
C - - - - - 0x01E0C4 07:E0B4: BD CE 07  LDA ram_07CE_obj_hp,X
C - - - - - 0x01E0C7 07:E0B7: 38        SEC
C - - - - - 0x01E0C8 07:E0B8: E5 00     SBC ram_0000_t82_damage
C - - - - - 0x01E0CA 07:E0BA: 9D CE 07  STA ram_07CE_obj_hp,X
C - - - - - 0x01E0CD 07:E0BD: 90 03     BCC bra_E0C2
C - - - - - 0x01E0CF 07:E0BF: 4C 14 E0  JMP loc_E014
bra_E0C2:
C - - - - - 0x01E0D2 07:E0C2: A9 00     LDA #$00
C - - - - - 0x01E0D4 07:E0C4: 9D CE 07  STA ram_07CE_obj_hp,X
C - - - - - 0x01E0D7 07:E0C7: 98        TYA
C - - - - - 0x01E0D8 07:E0C8: 48        PHA
C - - - - - 0x01E0D9 07:E0C9: BC 00 06  LDY ram_0600_obj_id,X
C - - - - - 0x01E0DC 07:E0CC: B9 E6 A0  LDA tbl_0x01A107_score - $11,Y
C - - - - - 0x01E0DF 07:E0CF: F0 03     BEQ bra_E0D4_skip
C - - - - - 0x01E0E1 07:E0D1: 20 C3 DD  JSR sub_DDC3_add_score
bra_E0D4_skip:
C - - - - - 0x01E0E4 07:E0D4: 68        PLA
C - - - - - 0x01E0E5 07:E0D5: A8        TAY
C - - - - - 0x01E0E6 07:E0D6: A9 1A     LDA #con_sfx_1A
C - - - - - 0x01E0E8 07:E0D8: 20 1A FF  JSR sub_FF1A_play_sound
C - - - - - 0x01E0EB 07:E0DB: A9 02     LDA #$02
C - - - - - 0x01E0ED 07:E0DD: 9D 16 06  STA ram_0616_obj,X
C - - - - - 0x01E0F0 07:E0E0: A9 00     LDA #< $FA00
C - - - - - 0x01E0F2 07:E0E2: 9D DC 06  STA ram_obj_spd_Y_fr,X
C - - - - - 0x01E0F5 07:E0E5: A9 FA     LDA #> $FA00
C - - - - - 0x01E0F7 07:E0E7: 9D F2 06  STA ram_obj_spd_Y_lo,X
; when you kill an enemy, it flips vertically
C - - - - - 0x01E0FA 07:E0EA: BD 76 07  LDA ram_0776_obj_flags,X
C - - - - - 0x01E0FD 07:E0ED: 09 80     ORA #con_0776_flip_V
C - - - - - 0x01E0FF 07:E0EF: 9D 76 07  STA ram_0776_obj_flags,X
C - - - - - 0x01E102 07:E0F2: BD 08 07  LDA ram_0708_obj_flags,X
C - - - - - 0x01E105 07:E0F5: 09 40     ORA #con_0708_40
C - - - - - 0x01E107 07:E0F7: 9D 08 07  STA ram_0708_obj_flags,X
C - - - - - 0x01E10A 07:E0FA: A9 00     LDA #< $0100
C - - - - - 0x01E10C 07:E0FC: 9D B0 06  STA ram_obj_spd_X_fr,X
C - - - - - 0x01E10F 07:E0FF: A9 01     LDA #> $0100
C - - - - - 0x01E111 07:E101: 9D C6 06  STA ram_obj_spd_X_lo,X
C - - - - - 0x01E114 07:E104: AD BF 03  LDA ram_03BF_weapon_upgrade
C - - - - - 0x01E117 07:E107: C9 02     CMP #con_weapon_magic_stars
C - - - - - 0x01E119 07:E109: F0 18     BEQ bra_E123
C - - - - - 0x01E11B 07:E10B: B9 C6 06  LDA ram_obj_spd_X_lo,Y
C - - - - - 0x01E11E 07:E10E: 10 05     BPL bra_E115
bra_E110:
C - - - - - 0x01E120 07:E110: A9 FF     LDA #$FF
C - - - - - 0x01E122 07:E112: 9D C6 06  STA ram_obj_spd_X_lo,X
bra_E115:
loc_E115:
C D 3 - - - 0x01E125 07:E115: A9 00     LDA #$00
C - - - - - 0x01E127 07:E117: 9D A2 07  STA ram_07A2_obj,X
C - - - - - 0x01E12A 07:E11A: 9D 8C 07  STA ram_078C_obj,X
C - - - - - 0x01E12D 07:E11D: 9D B8 07  STA ram_07B8_obj,X
C - - - - - 0x01E130 07:E120: A9 01     LDA #$01
C - - - - - 0x01E132 07:E122: 60        RTS
bra_E123:
C - - - - - 0x01E133 07:E123: BD 8C 07  LDA ram_078C_obj,X
C - - - - - 0x01E136 07:E126: 30 E8     BMI bra_E110
C - - - - - 0x01E138 07:E128: 4C 15 E1  JMP loc_E115



sub_E12B:
C - - - - - 0x01E13B 07:E12B: 20 EB C9  JSR sub_C9EB_prg_bankswitch_0C
C - - - - - 0x01E13E 07:E12E: A2 06     LDX #$06
bra_E130_loop:
C - - - - - 0x01E140 07:E130: 20 56 E1  JSR sub_E156_object_handler
C - - - - - 0x01E143 07:E133: EA        NOP ; bzk optimize
C - - - - - 0x01E144 07:E134: E8        INX
C - - - - - 0x01E145 07:E135: E0 16     CPX #$16
C - - - - - 0x01E147 07:E137: D0 F7     BNE bra_E130_loop
C - - - - - 0x01E149 07:E139: A2 00     LDX #$00
bra_E13B_loop:
C - - - - - 0x01E14B 07:E13B: 20 56 E1  JSR sub_E156_object_handler
C - - - - - 0x01E14E 07:E13E: EA        NOP ; bzk optimize
C - - - - - 0x01E14F 07:E13F: E8        INX
C - - - - - 0x01E150 07:E140: E0 06     CPX #$06
C - - - - - 0x01E152 07:E142: D0 F7     BNE bra_E13B_loop
C - - - - - 0x01E154 07:E144: A9 00     LDA #$00
C - - - - - 0x01E156 07:E146: 8D 20 04  STA ram_copy_obj_spd_X_fr
C - - - - - 0x01E159 07:E149: 8D 21 04  STA ram_copy_obj_spd_X_lo
C - - - - - 0x01E15C 07:E14C: 8D 22 04  STA ram_copy_obj_spd_Y_fr
C - - - - - 0x01E15F 07:E14F: 8D 23 04  STA ram_copy_obj_spd_Y_lo
C - - - - - 0x01E162 07:E152: 8D 1D 04  STA ram_041D
C - - - - - 0x01E165 07:E155: 60        RTS



sub_E156_object_handler:
C - - - - - 0x01E166 07:E156: BD 16 06  LDA ram_0616_obj,X
C - - - - - 0x01E169 07:E159: F0 24     BEQ bra_E17F_RTS
C - - - - - 0x01E16B 07:E15B: BD 00 06  LDA ram_0600_obj_id,X
C - - - - - 0x01E16E 07:E15E: 38        SEC
C - - - - - 0x01E16F 07:E15F: 2A        ROL
C - - - - - 0x01E170 07:E160: 0A        ASL
C - - - - - 0x01E171 07:E161: A8        TAY
C - - - - - 0x01E172 07:E162: B9 2C A8  LDA tbl_0x01A83C_object_handler,Y
C - - - - - 0x01E175 07:E165: 85 00     STA ram_0000_t15_data
C - - - - - 0x01E177 07:E167: B9 2D A8  LDA tbl_0x01A83C_object_handler + $01,Y
C - - - - - 0x01E17A 07:E16A: 85 01     STA ram_0000_t15_data + $01
C - - - - - 0x01E17C 07:E16C: BD 16 06  LDA ram_0616_obj,X
C - - - - - 0x01E17F 07:E16F: 0A        ASL
C - - - - - 0x01E180 07:E170: A8        TAY
C - - - - - 0x01E181 07:E171: 88        DEY
C - - - - - 0x01E182 07:E172: 88        DEY
C - - - - - 0x01E183 07:E173: B1 00     LDA (ram_0000_t15_data),Y
C - - - - - 0x01E185 07:E175: 85 02     STA ram_0002_t02_jmp
C - - - - - 0x01E187 07:E177: C8        INY
C - - - - - 0x01E188 07:E178: B1 00     LDA (ram_0000_t15_data),Y
C - - - - - 0x01E18A 07:E17A: 85 03     STA ram_0002_t02_jmp + $01
C - - - - - 0x01E18C 07:E17C: 6C 02 00  JMP (ram_0002_t02_jmp)
bra_E17F_RTS:
C - - - - - 0x01E18F 07:E17F: 60        RTS



sub_E180_hide_all_sprites_and_clear_memory:
C - - - - - 0x01E190 07:E180: A9 FF     LDA #$FF
C - - - - - 0x01E192 07:E182: A0 00     LDY #$00
C - - - - - 0x01E194 07:E184: 84 B4     STY ram_index_oam
C - - - - - 0x01E196 07:E186: 84 B5     STY ram_full_oam_flag
bra_E188_loop:
C - - - - - 0x01E198 07:E188: 99 00 02  STA ram_spr_Y,Y
C - - - - - 0x01E19B 07:E18B: C8        INY
C - - - - - 0x01E19C 07:E18C: C8        INY
C - - - - - 0x01E19D 07:E18D: C8        INY
C - - - - - 0x01E19E 07:E18E: C8        INY
C - - - - - 0x01E19F 07:E18F: D0 F7     BNE bra_E188_loop
; clear 0600-07FF
C - - - - - 0x01E1A1 07:E191: A9 00     LDA #$00
C - - - - - 0x01E1A3 07:E193: A2 00     LDX #$00
bra_E195_loop:
C - - - - - 0x01E1A5 07:E195: 9D 00 06  STA $0600,X
C - - - - - 0x01E1A8 07:E198: 9D 00 07  STA $0700,X
C - - - - - 0x01E1AB 07:E19B: E8        INX
C - - - - - 0x01E1AC 07:E19C: D0 F7     BNE bra_E195_loop
C - - - - - 0x01E1AE 07:E19E: 60        RTS



sub_E19F_prepare_screen_objects:
; in
    ; X = initial object index
C - - - - - 0x01E1AF 07:E19F: A0 00     LDY #$00
loc_E1A1_loop:
C D 3 - - - 0x01E1B1 07:E1A1: B1 00     LDA (ram_0000_t14_screen_objects_data),Y
C - - - - - 0x01E1B3 07:E1A3: C9 FF     CMP #$FF
C - - - - - 0x01E1B5 07:E1A5: F0 20     BEQ bra_E1C7_RTS
C - - - - - 0x01E1B7 07:E1A7: 9D 00 06  STA ram_0600_obj_id,X
C - - - - - 0x01E1BA 07:E1AA: C8        INY
C - - - - - 0x01E1BB 07:E1AB: B1 00     LDA (ram_0000_t14_screen_objects_data),Y
C - - - - - 0x01E1BD 07:E1AD: 9D 16 06  STA ram_0616_obj,X
C - - - - - 0x01E1C0 07:E1B0: C8        INY
C - - - - - 0x01E1C1 07:E1B1: B1 00     LDA (ram_0000_t14_screen_objects_data),Y
C - - - - - 0x01E1C3 07:E1B3: 9D 34 07  STA ram_0734_obj,X
C - - - - - 0x01E1C6 07:E1B6: C8        INY
C - - - - - 0x01E1C7 07:E1B7: B1 00     LDA (ram_0000_t14_screen_objects_data),Y
C - - - - - 0x01E1C9 07:E1B9: 9D 42 06  STA ram_obj_pos_X_lo,X
C - - - - - 0x01E1CC 07:E1BC: C8        INY
C - - - - - 0x01E1CD 07:E1BD: B1 00     LDA (ram_0000_t14_screen_objects_data),Y
C - - - - - 0x01E1CF 07:E1BF: 9D 84 06  STA ram_obj_pos_Y_lo,X
C - - - - - 0x01E1D2 07:E1C2: C8        INY
C - - - - - 0x01E1D3 07:E1C3: E8        INX ; next object
C - - - - - 0x01E1D4 07:E1C4: 4C A1 E1  JMP loc_E1A1_loop
bra_E1C7_RTS:
C - - - - - 0x01E1D7 07:E1C7: 60        RTS



sub_E1C8_initialize_animation:
sub_0x01E1D8_initialize_animation:
loc_0x01E1D8_initialize_animation:
C D 3 - - - 0x01E1D8 07:E1C8: 20 C8 C9  JSR sub_C9C8_prg_bankswitch_02
C - - - - - 0x01E1DB 07:E1CB: 20 00 80  JSR sub_0x004010_initialize_animation
C - - - - - 0x01E1DE 07:E1CE: 4C EB C9  JMP loc_C9EB_prg_bankswitch_0C



sub_E1D1_update_animation_for_all_objects:
C - - - - - 0x01E1E1 07:E1D1: 20 C8 C9  JSR sub_C9C8_prg_bankswitch_02
C - - - - - 0x01E1E4 07:E1D4: 4C 17 80  JMP loc_0x004027_update_animation_for_all_objects



sub_E1D7_sprite_engine:
; in
    ; X = object index
C - - - - - 0x01E1E7 07:E1D7: 20 C8 C9  JSR sub_C9C8_prg_bankswitch_02
C - - - - - 0x01E1EA 07:E1DA: 4C 62 80  JMP loc_0x004072_sprite_engine



sub_E1DD_hide_unused_sprites:
loc_E1DD_hide_unused_sprites:
C D 3 - - - 0x01E1ED 07:E1DD: 20 C8 C9  JSR sub_C9C8_prg_bankswitch_02
C - - - - - 0x01E1F0 07:E1E0: 4C 4E 81  JMP loc_0x00415E_hide_unused_sprites



ofs_004_E1E3_06_boss_defeated:
; professor calling/felix laughing/game over/the end
C - - J - - 0x01E1F3 07:E1E3: 20 75 C1  JSR sub_C175_wait_for_nmi_to_end
C - - - - - 0x01E1F6 07:E1E6: 20 B9 C9  JSR sub_C9B9_disable_rendering
C - - - - - 0x01E1F9 07:E1E9: A5 33     LDA ram_round
C - - - - - 0x01E1FB 07:E1EB: C9 17     CMP #$17
; bzk optimize, BEQ to 0x01E205
C - - - - - 0x01E1FD 07:E1ED: D0 03     BNE bra_E1F2
C - - - - - 0x01E1FF 07:E1EF: 4C F5 E1  JMP loc_E1F5
bra_E1F2:
C - - - - - 0x01E202 07:E1F2: 20 04 FF  JSR sub_FF04_turn_off_music_and_sfx
loc_E1F5:
C D 3 - - - 0x01E205 07:E1F5: 20 80 E1  JSR sub_E180_hide_all_sprites_and_clear_memory
C - - - - - 0x01E208 07:E1F8: A9 00     LDA #$00
C - - - - - 0x01E20A 07:E1FA: 85 D5     STA ram_00D5
C - - - - - 0x01E20C 07:E1FC: 8D CE 03  STA ram_03CE
C - - - - - 0x01E20F 07:E1FF: 8D CF 03  STA ram_03CF
C - - - - - 0x01E212 07:E202: 8D 08 03  STA ram_0308
C - - - - - 0x01E215 07:E205: 8D BB 03  STA ram_text_pointer
C - - - - - 0x01E218 07:E208: 8D BC 03  STA ram_text_pointer + $01
C - - - - - 0x01E21B 07:E20B: 8D BD 03  STA ram_03BD
C - - - - - 0x01E21E 07:E20E: 8D BE 03  STA ram_03BE
C - - - - - 0x01E221 07:E211: A5 33     LDA ram_round
C - - - - - 0x01E223 07:E213: C9 18     CMP #$18
C - - - - - 0x01E225 07:E215: D0 03     BNE bra_E21A_not_game_over
C - - - - - 0x01E227 07:E217: 4C 45 E5  JMP loc_E545_game_over
bra_E21A_not_game_over:
C - - - - - 0x01E22A 07:E21A: A6 33     LDX ram_round
C - - - - - 0x01E22C 07:E21C: BD 09 E5  LDA tbl_E509_round_data,X
C - - - - - 0x01E22F 07:E21F: 29 70     AND #$70
C - - - - - 0x01E231 07:E221: F0 03     BEQ bra_E226
C - - - - - 0x01E233 07:E223: 4C 4F E3  JMP loc_E34F
bra_E226:
C - - - - - 0x01E236 07:E226: 20 80 E1  JSR sub_E180_hide_all_sprites_and_clear_memory
C - - - - - 0x01E239 07:E229: A9 06     LDA #$06
C - - - - - 0x01E23B 07:E22B: 85 11     STA ram_for_2001
C - - - - - 0x01E23D 07:E22D: A9 01     LDA #$01
C - - - - - 0x01E23F 07:E22F: 85 1A     STA ram_001A
C - - - - - 0x01E241 07:E231: A9 00     LDA #$00
C - - - - - 0x01E243 07:E233: 85 12     STA ram_0012_scanline
C - - - - - 0x01E245 07:E235: 85 18     STA ram_0018
C - - - - - 0x01E247 07:E237: 85 14     STA ram_0014
C - - - - - 0x01E249 07:E239: AA        TAX ; 00
C - - - - - 0x01E24A 07:E23A: 85 B7     STA ram_cam_pos_X_hi
C - - - - - 0x01E24C 07:E23C: 85 B8     STA ram_cam_pos_Y_hi
C - - - - - 0x01E24E 07:E23E: 85 B9     STA ram_cam_pos_X_lo
C - - - - - 0x01E250 07:E240: 85 BA     STA ram_cam_pos_Y_lo
C - - - - - 0x01E252 07:E242: A5 33     LDA ram_round
C - - - - - 0x01E254 07:E244: C9 17     CMP #$17
C - - - - - 0x01E256 07:E246: D0 03     BNE bra_E24B
C - - - - - 0x01E258 07:E248: 4C 16 E7  JMP loc_E716_the_end_screen
bra_E24B:
C - - - - - 0x01E25B 07:E24B: A5 33     LDA ram_round
C - - - - - 0x01E25D 07:E24D: F0 03     BEQ bra_E252
C - - - - - 0x01E25F 07:E24F: 20 1B E7  JSR sub_E71B_felix_laughing_screen
bra_E252:
C - - - - - 0x01E262 07:E252: A6 33     LDX ram_round
C - - - - - 0x01E264 07:E254: BD 09 E5  LDA tbl_E509_round_data,X
C - - - - - 0x01E267 07:E257: 29 7F     AND #$7F
C - - - - - 0x01E269 07:E259: C9 07     CMP #$07
C - - - - - 0x01E26B 07:E25B: 90 03     BCC bra_E260
C - - - - - 0x01E26D 07:E25D: 18        CLC
C - - - - - 0x01E26E 07:E25E: 69 01     ADC #$01
bra_E260:
C - - - - - 0x01E270 07:E260: 29 0F     AND #$0F
C - - - - - 0x01E272 07:E262: 4A        LSR
C - - - - - 0x01E273 07:E263: 90 03     BCC bra_E268_professor_calling
C - - - - - 0x01E275 07:E265: 4C 4F E3  JMP loc_E34F
bra_E268_professor_calling:
C - - - - - 0x01E278 07:E268: 8D 07 04  STA ram_0407
C - - - - - 0x01E27B 07:E26B: A9 6C     LDA #con_chr_bank + $6C
C - - - - - 0x01E27D 07:E26D: 85 20     STA ram_chr_bank_bg_1
C - - - - - 0x01E27F 07:E26F: 18        CLC
C - - - - - 0x01E280 07:E270: 69 01     ADC #$01    ; con_chr_bank + $6D
C - - - - - 0x01E282 07:E272: 85 22     STA ram_chr_bank_bg_2
C - - - - - 0x01E284 07:E274: 69 01     ADC #$01    ; con_chr_bank + $6E
C - - - - - 0x01E286 07:E276: 85 24     STA ram_chr_bank_bg_3
C - - - - - 0x01E288 07:E278: A9 0B     LDA #con_chr_bank + $0B
C - - - - - 0x01E28A 07:E27A: 85 26     STA ram_chr_bank_bg_4
C - - - - - 0x01E28C 07:E27C: A9 44     LDA #con_chr_bank + $44
C - - - - - 0x01E28E 07:E27E: 85 1C     STA ram_chr_bank_spr_1
C - - - - - 0x01E290 07:E280: 85 1D     STA ram_chr_bank_spr_1 + $01
C - - - - - 0x01E292 07:E282: A9 42     LDA #con_chr_bank + $42
C - - - - - 0x01E294 07:E284: 85 1E     STA ram_chr_bank_spr_2
C - - - - - 0x01E296 07:E286: 85 1F     STA ram_chr_bank_spr_2 + $01
C - - - - - 0x01E298 07:E288: A9 00     LDA #$00
C - - - - - 0x01E29A 07:E28A: 85 40     STA ram_0040_palette
C - - - - - 0x01E29C 07:E28C: A9 0D     LDA #con_0041_pal_0D
C - - - - - 0x01E29E 07:E28E: 85 41     STA ram_0041_palette
C - - - - - 0x01E2A0 07:E290: 20 B4 C8  JSR sub_C8B4_prepare_palette
C - - - - - 0x01E2A3 07:E293: A9 A8     LDA #< tbl_E8A8_phone_call_screen
C - - - - - 0x01E2A5 07:E295: 85 00     STA ram_0000_t09_screen_data
C - - - - - 0x01E2A7 07:E297: A9 E8     LDA #> tbl_E8A8_phone_call_screen
C - - - - - 0x01E2A9 07:E299: 85 01     STA ram_0000_t09_screen_data + $01
C - - - - - 0x01E2AB 07:E29B: 20 C2 C7  JSR sub_C7C2_prepare_screen_data
C - - - - - 0x01E2AE 07:E29E: 20 75 C1  JSR sub_C175_wait_for_nmi_to_end
C - - - - - 0x01E2B1 07:E2A1: A9 71     LDA #< tbl_E871_phone_call_objects
C - - - - - 0x01E2B3 07:E2A3: 85 00     STA ram_0000_t14_screen_objects_data
C - - - - - 0x01E2B5 07:E2A5: A9 E8     LDA #> tbl_E871_phone_call_objects
C - - - - - 0x01E2B7 07:E2A7: 85 01     STA ram_0000_t14_screen_objects_data + $01
C - - - - - 0x01E2B9 07:E2A9: A2 01     LDX #$01
C - - - - - 0x01E2BB 07:E2AB: 20 9F E1  JSR sub_E19F_prepare_screen_objects
C - - - - - 0x01E2BE 07:E2AE: A9 FF     LDA #$FF
C - - - - - 0x01E2C0 07:E2B0: 8D 59 06  STA ram_obj_pos_X_hi + $01
C - - - - - 0x01E2C3 07:E2B3: A9 01     LDA #$01
C - - - - - 0x01E2C5 07:E2B5: 8D 5C 06  STA ram_obj_pos_X_hi + $04
C - - - - - 0x01E2C8 07:E2B8: A9 00     LDA #$00
C - - - - - 0x01E2CA 07:E2BA: 8D B8 03  STA ram_03B8
C - - - - - 0x01E2CD 07:E2BD: A9 27     LDA #con_music_phone_call
C - - - - - 0x01E2CF 07:E2BF: 20 1A FF  JSR sub_FF1A_play_sound
C - - - - - 0x01E2D2 07:E2C2: 20 BA C8  JSR sub_C8BA_prepare_screen_brightening
C - - - - - 0x01E2D5 07:E2C5: 20 B2 C9  JSR sub_C9B2_enable_rendering
                                       ;LDA #con_0028_07
C - - - - - 0x01E2D8 07:E2C8: E6 28     INC ram_main_script ; 06 -> 07
ofs_004_E2CA_07:    ; bzk optimize
C - - - - - 0x01E2DA 07:E2CA: 4C D8 E2  JMP loc_E2D8



bra_E2CD_loop:
C - - - - - 0x01E2DD 07:E2CD: A9 FE     LDA #$FE
C - - - - - 0x01E2DF 07:E2CF: 8D B8 03  STA ram_03B8
C - - - - - 0x01E2E2 07:E2D2: AD 07 04  LDA ram_0407
C - - - - - 0x01E2E5 07:E2D5: 20 18 E9  JSR sub_E918_print_professor_text
loc_E2D8:
loc_E2D8_loop:
C D 3 - - - 0x01E2E8 07:E2D8: 20 4A E8  JSR sub_E84A
C - - - - - 0x01E2EB 07:E2DB: AD B8 03  LDA ram_03B8
C - - - - - 0x01E2EE 07:E2DE: C9 FF     CMP #$FF
C - - - - - 0x01E2F0 07:E2E0: F0 EB     BEQ bra_E2CD_loop
C - - - - - 0x01E2F2 07:E2E2: 20 2B E1  JSR sub_E12B
C - - - - - 0x01E2F5 07:E2E5: 20 D1 E1  JSR sub_E1D1_update_animation_for_all_objects
C - - - - - 0x01E2F8 07:E2E8: A9 00     LDA #$00
C - - - - - 0x01E2FA 07:E2EA: 85 B4     STA ram_index_oam
C - - - - - 0x01E2FC 07:E2EC: 85 B5     STA ram_full_oam_flag
C - - - - - 0x01E2FE 07:E2EE: A2 00     LDX #$00
bra_E2F0_loop:
C - - - - - 0x01E300 07:E2F0: 20 D7 E1  JSR sub_E1D7_sprite_engine
C - - - - - 0x01E303 07:E2F3: E8        INX
C - - - - - 0x01E304 07:E2F4: E0 06     CPX #$06
C - - - - - 0x01E306 07:E2F6: 90 F8     BCC bra_E2F0_loop
C - - - - - 0x01E308 07:E2F8: 20 DD E1  JSR sub_E1DD_hide_unused_sprites
C - - - - - 0x01E30B 07:E2FB: AD D4 03  LDA ram_03D4
C - - - - - 0x01E30E 07:E2FE: 48        PHA
C - - - - - 0x01E30F 07:E2FF: 20 9B E9  JSR sub_E99B
C - - - - - 0x01E312 07:E302: 20 EB C9  JSR sub_C9EB_prg_bankswitch_0C
C - - - - - 0x01E315 07:E305: 68        PLA
C - - - - - 0x01E316 07:E306: CD D4 03  CMP ram_03D4
C - - - - - 0x01E319 07:E309: F0 1A     BEQ bra_E325
C - - - - - 0x01E31B 07:E30B: AD B8 03  LDA ram_03B8
C - - - - - 0x01E31E 07:E30E: C9 FE     CMP #$FE
C - - - - - 0x01E320 07:E310: D0 13     BNE bra_E325
C - - - - - 0x01E322 07:E312: AD D4 03  LDA ram_03D4
C - - - - - 0x01E325 07:E315: 29 01     AND #$01
C - - - - - 0x01E327 07:E317: F0 0C     BEQ bra_E325
C - - - - - 0x01E329 07:E319: AD D5 03  LDA ram_03D5
C - - - - - 0x01E32C 07:E31C: 29 03     AND #$03
C - - - - - 0x01E32E 07:E31E: AA        TAX
C - - - - - 0x01E32F 07:E31F: BD 94 EA  LDA tbl_EA94_sound,X
C - - - - - 0x01E332 07:E322: 20 1A FF  JSR sub_FF1A_play_sound
bra_E325:
C - - - - - 0x01E335 07:E325: A9 0A     LDA #con_chr_bank + $0A
C - - - - - 0x01E337 07:E327: 85 26     STA ram_chr_bank_bg_4
C - - - - - 0x01E339 07:E329: AD C8 03  LDA ram_language
C - - - - - 0x01E33C 07:E32C: F0 04     BEQ bra_E332
C - - - - - 0x01E33E 07:E32E: A9 6F     LDA #con_chr_bank + $6F
C - - - - - 0x01E340 07:E330: 85 26     STA ram_chr_bank_bg_4
bra_E332:
C - - - - - 0x01E342 07:E332: 20 75 C1  JSR sub_C175_wait_for_nmi_to_end
C - - - - - 0x01E345 07:E335: AD 17 06  LDA ram_0616_obj + $01
C - - - - - 0x01E348 07:E338: F0 09     BEQ bra_E343
C - - - - - 0x01E34A 07:E33A: A5 2D     LDA ram_002D_btn
C - - - - - 0x01E34C 07:E33C: 29 08     AND #con_btn_Start
C - - - - - 0x01E34E 07:E33E: D0 03     BNE bra_E343
C - - - - - 0x01E350 07:E340: 4C D8 E2  JMP loc_E2D8_loop
bra_E343:
C - - - - - 0x01E353 07:E343: 20 C0 C8  JSR sub_C8C0_prepare_screen_darkening
C - - - - - 0x01E356 07:E346: 20 48 E8  JSR sub_E848_RTS
C - - - - - 0x01E359 07:E349: 20 2E E8  JSR sub_E82E
; bzk optimize, useless JMP
C - - - - - 0x01E35C 07:E34C: 4C 4F E3  JMP loc_E34F



loc_E34F:
C D 3 - - - 0x01E35F 07:E34F: 20 75 C1  JSR sub_C175_wait_for_nmi_to_end
C - - - - - 0x01E362 07:E352: 20 B9 C9  JSR sub_C9B9_disable_rendering
C - - - - - 0x01E365 07:E355: 20 04 FF  JSR sub_FF04_turn_off_music_and_sfx
C - - - - - 0x01E368 07:E358: 20 80 E1  JSR sub_E180_hide_all_sprites_and_clear_memory
C - - - - - 0x01E36B 07:E35B: A9 06     LDA #$06
C - - - - - 0x01E36D 07:E35D: 85 11     STA ram_for_2001
C - - - - - 0x01E36F 07:E35F: A9 04     LDA #$04
C - - - - - 0x01E371 07:E361: 85 73     STA ram_0073
C - - - - - 0x01E373 07:E363: A9 00     LDA #$00
C - - - - - 0x01E375 07:E365: 85 12     STA ram_0012_scanline
C - - - - - 0x01E377 07:E367: A9 70     LDA #con_chr_bank + $70
C - - - - - 0x01E379 07:E369: 85 20     STA ram_chr_bank_bg_1
C - - - - - 0x01E37B 07:E36B: 18        CLC
C - - - - - 0x01E37C 07:E36C: 69 01     ADC #$01    ; con_chr_bank + $71
C - - - - - 0x01E37E 07:E36E: 85 22     STA ram_chr_bank_bg_2
C - - - - - 0x01E380 07:E370: 69 01     ADC #$01    ; con_chr_bank + $72
C - - - - - 0x01E382 07:E372: 85 24     STA ram_chr_bank_bg_3
C - - - - - 0x01E384 07:E374: 69 01     ADC #$01    ; con_chr_bank + $73
C - - - - - 0x01E386 07:E376: 85 26     STA ram_chr_bank_bg_4
C - - - - - 0x01E388 07:E378: 69 01     ADC #$01    ; con_chr_bank + $74
C - - - - - 0x01E38A 07:E37A: 85 1C     STA ram_chr_bank_spr_1
C - - - - - 0x01E38C 07:E37C: 85 1D     STA ram_chr_bank_spr_1 + $01
; bzk optimize, ADC 02
C - - - - - 0x01E38E 07:E37E: 69 01     ADC #$01    ; 75
C - - - - - 0x01E390 07:E380: 69 01     ADC #$01    ; con_chr_bank + $76
C - - - - - 0x01E392 07:E382: 85 1E     STA ram_chr_bank_spr_2
C - - - - - 0x01E394 07:E384: 85 1F     STA ram_chr_bank_spr_2 + $01
C - - - - - 0x01E396 07:E386: A9 B4     LDA #< tbl_E8B4_felix_world_screen
C - - - - - 0x01E398 07:E388: 85 00     STA ram_0000_t09_screen_data
C - - - - - 0x01E39A 07:E38A: A9 E8     LDA #> tbl_E8B4_felix_world_screen
C - - - - - 0x01E39C 07:E38C: 85 01     STA ram_0000_t09_screen_data + $01
C - - - - - 0x01E39E 07:E38E: 20 C2 C7  JSR sub_C7C2_prepare_screen_data
C - - - - - 0x01E3A1 07:E391: 20 75 C1  JSR sub_C175_wait_for_nmi_to_end
C - - - - - 0x01E3A4 07:E394: A9 00     LDA #$00
C - - - - - 0x01E3A6 07:E396: 85 00     STA ram_0000_t89
C - - - - - 0x01E3A8 07:E398: A6 33     LDX ram_round
C - - - - - 0x01E3AA 07:E39A: BD 09 E5  LDA tbl_E509_round_data,X
; bzk optimize, do baknswitch first, without PHA + PLA
C - - - - - 0x01E3AD 07:E39D: 48        PHA
C - - - - - 0x01E3AE 07:E39E: 20 C8 C9  JSR sub_C9C8_prg_bankswitch_02
C - - - - - 0x01E3B1 07:E3A1: 68        PLA
C - - - - - 0x01E3B2 07:E3A2: 29 0F     AND #$0F
C - - - - - 0x01E3B4 07:E3A4: F0 6C     BEQ bra_E412
C - - - - - 0x01E3B6 07:E3A6: 38        SEC
C - - - - - 0x01E3B7 07:E3A7: E9 01     SBC #$01
; / 04
C - - - - - 0x01E3B9 07:E3A9: 4A        LSR
C - - - - - 0x01E3BA 07:E3AA: 66 00     ROR ram_0000_t89
C - - - - - 0x01E3BC 07:E3AC: 4A        LSR
C - - - - - 0x01E3BD 07:E3AD: 66 00     ROR ram_0000_t89
C - - - - - 0x01E3BF 07:E3AF: 85 01     STA ram_0000_t13_data + $01
C - - - - - 0x01E3C1 07:E3B1: A9 68     LDA #< tbl_0x007578_felix_world_image_tiles
C - - - - - 0x01E3C3 07:E3B3: 18        CLC
C - - - - - 0x01E3C4 07:E3B4: 65 00     ADC ram_0000_t89
C - - - - - 0x01E3C6 07:E3B6: 85 00     STA ram_0000_t13_data
C - - - - - 0x01E3C8 07:E3B8: A9 B5     LDA #> tbl_0x007578_felix_world_image_tiles
C - - - - - 0x01E3CA 07:E3BA: 65 01     ADC ram_0000_t13_data + $01
C - - - - - 0x01E3CC 07:E3BC: 85 01     STA ram_0000_t13_data + $01
C - - - - - 0x01E3CE 07:E3BE: A0 00     LDY #$00
bra_E3C0_loop:
C - - - - - 0x01E3D0 07:E3C0: B1 00     LDA (ram_0000_t13_data),Y
C - - - - - 0x01E3D2 07:E3C2: 99 00 60  STA ram_6000,Y
C - - - - - 0x01E3D5 07:E3C5: C8        INY
C - - - - - 0x01E3D6 07:E3C6: C0 40     CPY #$40
C - - - - - 0x01E3D8 07:E3C8: 90 F6     BCC bra_E3C0_loop
C - - - - - 0x01E3DA 07:E3CA: A9 21     LDA #< tbl_E521
C - - - - - 0x01E3DC 07:E3CC: 85 00     STA ram_0000_t09_screen_data
C - - - - - 0x01E3DE 07:E3CE: A9 E5     LDA #> tbl_E521
C - - - - - 0x01E3E0 07:E3D0: 85 01     STA ram_0000_t09_screen_data + $01
C - - - - - 0x01E3E2 07:E3D2: 20 C2 C7  JSR sub_C7C2_prepare_screen_data
C - - - - - 0x01E3E5 07:E3D5: 20 75 C1  JSR sub_C175_wait_for_nmi_to_end
; bzk optimize, useless LDA + STA
C - - - - - 0x01E3E8 07:E3D8: A9 00     LDA #$00
C - - - - - 0x01E3EA 07:E3DA: 85 00     STA ram_0000_t90_useless
C - - - - - 0x01E3EC 07:E3DC: A6 33     LDX ram_round
C - - - - - 0x01E3EE 07:E3DE: BD 09 E5  LDA tbl_E509_round_data,X
C - - - - - 0x01E3F1 07:E3E1: 29 0F     AND #$0F
C - - - - - 0x01E3F3 07:E3E3: C9 05     CMP #$05
C - - - - - 0x01E3F5 07:E3E5: 08        PHP
C - - - - - 0x01E3F6 07:E3E6: A9 00     LDA #$00
C - - - - - 0x01E3F8 07:E3E8: 28        PLP
C - - - - - 0x01E3F9 07:E3E9: D0 02     BNE bra_E3ED
C - - - - - 0x01E3FB 07:E3EB: A9 0C     LDA #$0C
bra_E3ED:
C - - - - - 0x01E3FD 07:E3ED: 18        CLC
C - - - - - 0x01E3FE 07:E3EE: 69 68     ADC #< tbl_0x007778
C - - - - - 0x01E400 07:E3F0: 85 00     STA ram_0000_t10_data
C - - - - - 0x01E402 07:E3F2: A9 B7     LDA #> tbl_0x007778
C - - - - - 0x01E404 07:E3F4: 69 00     ADC #$00
C - - - - - 0x01E406 07:E3F6: 85 01     STA ram_0000_t10_data + $01
C - - - - - 0x01E408 07:E3F8: A0 00     LDY #$00
bra_E3FA_loop:
C - - - - - 0x01E40A 07:E3FA: B1 00     LDA (ram_0000_t10_data),Y
C - - - - - 0x01E40C 07:E3FC: 99 00 60  STA ram_6000,Y
C - - - - - 0x01E40F 07:E3FF: C8        INY
C - - - - - 0x01E410 07:E400: C0 0E     CPY #$0E
C - - - - - 0x01E412 07:E402: 90 F6     BCC bra_E3FA_loop
C - - - - - 0x01E414 07:E404: A9 2D     LDA #< tbl_E52D
C - - - - - 0x01E416 07:E406: 85 00     STA ram_0000_t09_screen_data
C - - - - - 0x01E418 07:E408: A9 E5     LDA #> tbl_E52D
C - - - - - 0x01E41A 07:E40A: 85 01     STA ram_0000_t09_screen_data + $01
C - - - - - 0x01E41C 07:E40C: 20 C2 C7  JSR sub_C7C2_prepare_screen_data
C - - - - - 0x01E41F 07:E40F: 20 75 C1  JSR sub_C175_wait_for_nmi_to_end
bra_E412:
; display round number between rounds
C - - - - - 0x01E422 07:E412: A6 33     LDX ram_round
C - - - - - 0x01E424 07:E414: BD 09 E5  LDA tbl_E509_round_data,X
C - - - - - 0x01E427 07:E417: 29 0F     AND #$0F
C - - - - - 0x01E429 07:E419: 18        CLC
C - - - - - 0x01E42A 07:E41A: 69 17     ADC #$17
C - - - - - 0x01E42C 07:E41C: 8D 00 60  STA ram_6000
C - - - - - 0x01E42F 07:E41F: A9 5A     LDA #$5A
C - - - - - 0x01E431 07:E421: 8D 02 60  STA ram_6002
C - - - - - 0x01E434 07:E424: BD 09 E5  LDA tbl_E509_round_data,X
C - - - - - 0x01E437 07:E427: 29 70     AND #$70
; / 10
C - - - - - 0x01E439 07:E429: 4A        LSR
C - - - - - 0x01E43A 07:E42A: 4A        LSR
C - - - - - 0x01E43B 07:E42B: 4A        LSR
C - - - - - 0x01E43C 07:E42C: 4A        LSR
C - - - - - 0x01E43D 07:E42D: 18        CLC
C - - - - - 0x01E43E 07:E42E: 69 17     ADC #$17
C - - - - - 0x01E440 07:E430: 8D 04 60  STA ram_6004
C - - - - - 0x01E443 07:E433: A9 70     LDA #$70
C - - - - - 0x01E445 07:E435: 8D 01 60  STA ram_6001
C - - - - - 0x01E448 07:E438: 8D 03 60  STA ram_6003
C - - - - - 0x01E44B 07:E43B: A9 39     LDA #< tbl_E539
C - - - - - 0x01E44D 07:E43D: 85 00     STA ram_0000_t09_screen_data
C - - - - - 0x01E44F 07:E43F: A9 E5     LDA #> tbl_E539
C - - - - - 0x01E451 07:E441: 85 01     STA ram_0000_t09_screen_data + $01
C - - - - - 0x01E453 07:E443: 20 C2 C7  JSR sub_C7C2_prepare_screen_data
C - - - - - 0x01E456 07:E446: 20 75 C1  JSR sub_C175_wait_for_nmi_to_end
C - - - - - 0x01E459 07:E449: A9 8B     LDA #< tbl_E88B_felix_world_screen_objects
C - - - - - 0x01E45B 07:E44B: 85 00     STA ram_0000_t14_screen_objects_data
C - - - - - 0x01E45D 07:E44D: A9 E8     LDA #> tbl_E88B_felix_world_screen_objects
C - - - - - 0x01E45F 07:E44F: 85 01     STA ram_0000_t14_screen_objects_data + $01
C - - - - - 0x01E461 07:E451: A2 01     LDX #$01
C - - - - - 0x01E463 07:E453: 20 9F E1  JSR sub_E19F_prepare_screen_objects
C - - - - - 0x01E466 07:E456: A9 00     LDA #$00
C - - - - - 0x01E468 07:E458: 8D C4 03  STA ram_03C4
C - - - - - 0x01E46B 07:E45B: A9 02     LDA #$02    ; moving right at felix world screen
C - - - - - 0x01E46D 07:E45D: 8D C2 03  STA ram_03C2_felix_state
C - - - - - 0x01E470 07:E460: A2 01     LDX #$01
C - - - - - 0x01E472 07:E462: 20 F4 CD  JSR sub_CDF4
C - - - - - 0x01E475 07:E465: A6 33     LDX ram_round
C - - - - - 0x01E477 07:E467: BD A7 F6  LDA tbl_F6A7_round_type,X
C - - - - - 0x01E47A 07:E46A: A8        TAY
C - - - - - 0x01E47B 07:E46B: CC C5 03  CPY ram_round_type
C - - - - - 0x01E47E 07:E46E: F0 05     BEQ bra_E475
C - - - - - 0x01E480 07:E470: A9 01     LDA #$01
C - - - - - 0x01E482 07:E472: 8D B1 06  STA ram_obj_spd_X_fr + $01
bra_E475:
C - - - - - 0x01E485 07:E475: 8C C5 03  STY ram_round_type
C - - - - - 0x01E488 07:E478: B9 FD 03  LDA ram_03FD_unk,Y
C - - - - - 0x01E48B 07:E47B: 8D C6 03  STA ram_03C6_previous_weapon
C - - - - - 0x01E48E 07:E47E: B9 02 04  LDA ram_0402_unk,Y
C - - - - - 0x01E491 07:E481: 8D C7 03  STA ram_03C7
C - - - - - 0x01E494 07:E484: E0 13     CPX #$13
C - - - - - 0x01E496 07:E486: D0 05     BNE bra_E48D
C - - - - - 0x01E498 07:E488: A9 01     LDA #$01
C - - - - - 0x01E49A 07:E48A: 8D C6 03  STA ram_03C6_previous_weapon
bra_E48D:
C - - - - - 0x01E49D 07:E48D: A9 01     LDA #$01
C - - - - - 0x01E49F 07:E48F: 8D 17 06  STA ram_0616_obj + $01
C - - - - - 0x01E4A2 07:E492: A9 FF     LDA #$FF
C - - - - - 0x01E4A4 07:E494: 8D 59 06  STA ram_obj_pos_X_hi + $01
C - - - - - 0x01E4A7 07:E497: A9 00     LDA #$00
C - - - - - 0x01E4A9 07:E499: 85 40     STA ram_0040_palette
C - - - - - 0x01E4AB 07:E49B: A9 0E     LDA #con_0041_pal_0E
C - - - - - 0x01E4AD 07:E49D: 85 41     STA ram_0041_palette
C - - - - - 0x01E4AF 07:E49F: A6 33     LDX ram_round
C - - - - - 0x01E4B1 07:E4A1: BD 09 E5  LDA tbl_E509_round_data,X
C - - - - - 0x01E4B4 07:E4A4: 29 0F     AND #$0F
C - - - - - 0x01E4B6 07:E4A6: C9 03     CMP #$03
C - - - - - 0x01E4B8 07:E4A8: D0 04     BNE bra_E4AE
C - - - - - 0x01E4BA 07:E4AA: A9 13     LDA #con_0041_pal_13
C - - - - - 0x01E4BC 07:E4AC: 85 41     STA ram_0041_palette
bra_E4AE:
C - - - - - 0x01E4BE 07:E4AE: 20 B4 C8  JSR sub_C8B4_prepare_palette
C - - - - - 0x01E4C1 07:E4B1: A9 00     LDA #$00
C - - - - - 0x01E4C3 07:E4B3: 85 18     STA ram_0018
C - - - - - 0x01E4C5 07:E4B5: 85 14     STA ram_0014
C - - - - - 0x01E4C7 07:E4B7: A9 01     LDA #$01
C - - - - - 0x01E4C9 07:E4B9: 85 1A     STA ram_001A
C - - - - - 0x01E4CB 07:E4BB: A9 00     LDA #$00
C - - - - - 0x01E4CD 07:E4BD: AA        TAX
C - - - - - 0x01E4CE 07:E4BE: 85 B7     STA ram_cam_pos_X_hi
C - - - - - 0x01E4D0 07:E4C0: 85 B8     STA ram_cam_pos_Y_hi
C - - - - - 0x01E4D2 07:E4C2: 85 B9     STA ram_cam_pos_X_lo
C - - - - - 0x01E4D4 07:E4C4: 85 BA     STA ram_cam_pos_Y_lo
; felix world music between rounds
C - - - - - 0x01E4D6 07:E4C6: A9 21     LDA #con_music_title_screen
C - - - - - 0x01E4D8 07:E4C8: 20 1A FF  JSR sub_FF1A_play_sound
C - - - - - 0x01E4DB 07:E4CB: 20 BA C8  JSR sub_C8BA_prepare_screen_brightening
C - - - - - 0x01E4DE 07:E4CE: 20 B2 C9  JSR sub_C9B2_enable_rendering
                                       ;LDA #con_0028_08
                                       ;LDA #con_0028_09
C - - - - - 0x01E4E1 07:E4D1: E6 28     INC ram_main_script ; 07/08 -> 08/09
bra_E4D3_loop:
C - - - - - 0x01E4E3 07:E4D3: 20 AD C8  JSR sub_C8AD_RTS
C - - - - - 0x01E4E6 07:E4D6: 20 B4 C8  JSR sub_C8B4_prepare_palette
C - - - - - 0x01E4E9 07:E4D9: 20 2B E1  JSR sub_E12B
C - - - - - 0x01E4EC 07:E4DC: 20 D1 E1  JSR sub_E1D1_update_animation_for_all_objects
C - - - - - 0x01E4EF 07:E4DF: A9 00     LDA #$00
C - - - - - 0x01E4F1 07:E4E1: 85 B4     STA ram_index_oam
C - - - - - 0x01E4F3 07:E4E3: 85 B5     STA ram_full_oam_flag
C - - - - - 0x01E4F5 07:E4E5: A2 01     LDX #$01
C - - - - - 0x01E4F7 07:E4E7: 20 D7 E1  JSR sub_E1D7_sprite_engine
C - - - - - 0x01E4FA 07:E4EA: 20 DD E1  JSR sub_E1DD_hide_unused_sprites
C - - - - - 0x01E4FD 07:E4ED: 20 75 C1  JSR sub_C175_wait_for_nmi_to_end
C - - - - - 0x01E500 07:E4F0: AD 1F 07  LDA ram_071E_obj_queue_id + $01
C - - - - - 0x01E503 07:E4F3: D0 06     BNE bra_E4FB
C - - - - - 0x01E505 07:E4F5: A5 2D     LDA ram_002D_btn
C - - - - - 0x01E507 07:E4F7: 29 08     AND #con_btn_Start
C - - - - - 0x01E509 07:E4F9: F0 D8     BEQ bra_E4D3_loop
bra_E4FB:
C - - - - - 0x01E50B 07:E4FB: 20 C0 C8  JSR sub_C8C0_prepare_screen_darkening
C - - - - - 0x01E50E 07:E4FE: 20 48 E8  JSR sub_E848_RTS
C - - - - - 0x01E511 07:E501: 20 2E E8  JSR sub_E82E
C - - - - - 0x01E514 07:E504: A9 04     LDA #con_0028_04
C - - - - - 0x01E516 07:E506: 85 28     STA ram_main_script
C - - - - - 0x01E518 07:E508: 60        RTS



tbl_E509_round_data:
tbl_0x01E519_round_data:
;                                              +----------------------- ??? flag (bit7)
;                                              |     +----------------- lo round number (bit4-6)
;                                              |     |           +----- hi round number (bit0-3)/index for "felix world" image between rounds
;                                              |     |           |
- D 3 - - - 0x01E519 07:E509: 00        .byte $00 + $00 * $10 + $00   ; 00 1-1
- D 3 - - - 0x01E51A 07:E50A: 10        .byte $00 + $01 * $10 + $00   ; 01 1-2
- D 3 - - - 0x01E51B 07:E50B: 20        .byte $00 + $02 * $10 + $00   ; 02 1-3
- D 3 - - - 0x01E51C 07:E50C: 01        .byte $00 + $00 * $10 + $01   ; 03 2-1
- D 3 - - - 0x01E51D 07:E50D: 11        .byte $00 + $01 * $10 + $01   ; 04 2-2
- D 3 - - - 0x01E51E 07:E50E: 21        .byte $00 + $02 * $10 + $01   ; 05 2-3
- D 3 - - - 0x01E51F 07:E50F: 02        .byte $00 + $00 * $10 + $02   ; 06 3-1
- D 3 - - - 0x01E520 07:E510: 12        .byte $00 + $01 * $10 + $02   ; 07 3-2
- D 3 - - - 0x01E521 07:E511: 22        .byte $00 + $02 * $10 + $02   ; 08 3-3
- D 3 - - - 0x01E522 07:E512: 03        .byte $00 + $00 * $10 + $03   ; 09 4-1
- D 3 - - - 0x01E523 07:E513: 93        .byte $80 + $01 * $10 + $03   ; 0A 4-2
- D 3 - - - 0x01E524 07:E514: A3        .byte $80 + $02 * $10 + $03   ; 0B 4-3
- D 3 - - - 0x01E525 07:E515: 04        .byte $00 + $00 * $10 + $04   ; 0C 5-1
- D 3 - - - 0x01E526 07:E516: 94        .byte $80 + $01 * $10 + $04   ; 0D 5-2
- D 3 - - - 0x01E527 07:E517: 24        .byte $00 + $02 * $10 + $04   ; 0E 5-3
- D 3 - - - 0x01E528 07:E518: 85        .byte $80 + $00 * $10 + $05   ; 0F 6-1
- D 3 - - - 0x01E529 07:E519: 15        .byte $00 + $01 * $10 + $05   ; 10 6-2
- D 3 - - - 0x01E52A 07:E51A: 86        .byte $80 + $00 * $10 + $06   ; 11 7-1
- D 3 - - - 0x01E52B 07:E51B: 16        .byte $00 + $01 * $10 + $06   ; 12 7-2
- D 3 - - - 0x01E52C 07:E51C: 07        .byte $00 + $00 * $10 + $07   ; 13 8-1
- D 3 - - - 0x01E52D 07:E51D: 08        .byte $00 + $00 * $10 + $08   ; 14 9-1
- D 3 - - - 0x01E52E 07:E51E: 18        .byte $00 + $01 * $10 + $08   ; 15 9-2
- D 3 - - - 0x01E52F 07:E51F: A8        .byte $80 + $02 * $10 + $08   ; 16 9-3
- D 3 - - - 0x01E530 07:E520: 00        .byte $00 + $00 * $10 + $00   ; 17 The End screen



tbl_E521:
- D 3 - I - 0x01E531 07:E521: 01        .byte $01   ; ??? 001
- D 3 - I - 0x01E532 07:E522: 01        .byte con_prg_bank + $01   ; 
- D 3 - I - 0x01E533 07:E523: 10        .byte $10   ; 
- D 3 - I - 0x01E534 07:E524: 04        .byte $04   ; 
- D 3 - I - 0x01E535 07:E525: C8 28     .word $28C8 ; ppu address
- D 3 - I - 0x01E537 07:E527: 00        .byte $00   ; 
- D 3 - I - 0x01E538 07:E528: 20        .byte $20   ; 
- D 3 - I - 0x01E539 07:E529: 00        .byte $00   ; 
- D 3 - I - 0x01E53A 07:E52A: 20        .byte $20   ; 
- D 3 - I - 0x01E53B 07:E52B: 00 60     .word ram_6000 ; 



tbl_E52D:
- D 3 - I - 0x01E53D 07:E52D: 01        .byte $01   ; ??? 001
- D 3 - I - 0x01E53E 07:E52E: 01        .byte con_prg_bank + $01   ; 
- D 3 - I - 0x01E53F 07:E52F: 0C        .byte $0C   ; 
- D 3 - I - 0x01E540 07:E530: 01        .byte $01   ; 
- D 3 - I - 0x01E541 07:E531: CA 2B     .word $2BCA ; ppu address
- D 3 - I - 0x01E543 07:E533: 00        .byte $00   ; 
- D 3 - I - 0x01E544 07:E534: 20        .byte $20   ; 
- D 3 - I - 0x01E545 07:E535: 00        .byte $00   ; 
- D 3 - I - 0x01E546 07:E536: 20        .byte $20   ; 
- D 3 - I - 0x01E547 07:E537: 00 60     .word ram_6000 ; 



tbl_E539:
- D 3 - I - 0x01E549 07:E539: 01        .byte $01   ; ??? 001
- D 3 - I - 0x01E54A 07:E53A: 01        .byte con_prg_bank + $01   ; 
- D 3 - I - 0x01E54B 07:E53B: 05        .byte $05   ; 
- D 3 - I - 0x01E54C 07:E53C: 01        .byte $01   ; 
- D 3 - I - 0x01E54D 07:E53D: B1 29     .word $29B1 ; ppu address
- D 3 - I - 0x01E54F 07:E53F: 00        .byte $00   ; 
- D 3 - I - 0x01E550 07:E540: 20        .byte $20   ; 
- D 3 - I - 0x01E551 07:E541: 00        .byte $00   ; 
- D 3 - I - 0x01E552 07:E542: 20        .byte $20   ; 
- D 3 - I - 0x01E553 07:E543: 00 60     .word ram_6000 ; 



loc_E545_game_over:
C D 3 - - - 0x01E555 07:E545: A9 00     LDA #$00
C - - - - - 0x01E557 07:E547: 85 33     STA ram_round
C - - - - - 0x01E559 07:E549: 20 80 E1  JSR sub_E180_hide_all_sprites_and_clear_memory
C - - - - - 0x01E55C 07:E54C: A9 06     LDA #$06
C - - - - - 0x01E55E 07:E54E: 85 11     STA ram_for_2001
C - - - - - 0x01E560 07:E550: A9 00     LDA #$00
C - - - - - 0x01E562 07:E552: 85 12     STA ram_0012_scanline
C - - - - - 0x01E564 07:E554: A9 74     LDA #con_chr_bank + $74
C - - - - - 0x01E566 07:E556: 85 20     STA ram_chr_bank_bg_1
C - - - - - 0x01E568 07:E558: 18        CLC
C - - - - - 0x01E569 07:E559: 69 01     ADC #$01    ; con_chr_bank + $75
C - - - - - 0x01E56B 07:E55B: 85 22     STA ram_chr_bank_bg_2
C - - - - - 0x01E56D 07:E55D: 69 01     ADC #$01    ; con_chr_bank + $76
C - - - - - 0x01E56F 07:E55F: 85 24     STA ram_chr_bank_bg_3
C - - - - - 0x01E571 07:E561: 69 01     ADC #$01    ; con_chr_bank + $77
C - - - - - 0x01E573 07:E563: 85 26     STA ram_chr_bank_bg_4
C - - - - - 0x01E575 07:E565: 69 01     ADC #$01    ; con_chr_bank + $78
C - - - - - 0x01E577 07:E567: 85 1C     STA ram_chr_bank_spr_1
C - - - - - 0x01E579 07:E569: 85 1D     STA ram_chr_bank_spr_1 + $01
; bzk optimize, ADC 02
C - - - - - 0x01E57B 07:E56B: 69 01     ADC #$01    ; 79
C - - - - - 0x01E57D 07:E56D: 69 01     ADC #$01    ; con_chr_bank + $7A
C - - - - - 0x01E57F 07:E56F: 85 1E     STA ram_chr_bank_spr_2
C - - - - - 0x01E581 07:E571: 85 1F     STA ram_chr_bank_spr_2 + $01
C - - - - - 0x01E583 07:E573: A9 1A     LDA #$1A
C - - - - - 0x01E585 07:E575: 8D 00 60  STA ram_6000
C - - - - - 0x01E588 07:E578: A9 00     LDA #$00
C - - - - - 0x01E58A 07:E57A: 8D 01 60  STA ram_6001
C - - - - - 0x01E58D 07:E57D: 8D 02 60  STA ram_6002
C - - - - - 0x01E590 07:E580: A9 11     LDA #$11
C - - - - - 0x01E592 07:E582: 8D 03 60  STA ram_6003
C - - - - - 0x01E595 07:E585: A9 10     LDA #$10
C - - - - - 0x01E597 07:E587: 8D 04 60  STA ram_6004
C - - - - - 0x01E59A 07:E58A: A9 C0     LDA #< tbl_E8C0
C - - - - - 0x01E59C 07:E58C: 85 00     STA ram_0000_t09_screen_data
C - - - - - 0x01E59E 07:E58E: A9 E8     LDA #> tbl_E8C0
C - - - - - 0x01E5A0 07:E590: 85 01     STA ram_0000_t09_screen_data + $01
C - - - - - 0x01E5A2 07:E592: 20 C2 C7  JSR sub_C7C2_prepare_screen_data
C - - - - - 0x01E5A5 07:E595: 20 75 C1  JSR sub_C175_wait_for_nmi_to_end
C - - - - - 0x01E5A8 07:E598: AD F9 03  LDA ram_continues
C - - - - - 0x01E5AB 07:E59B: 18        CLC
C - - - - - 0x01E5AC 07:E59C: 69 0F     ADC #$0F
C - - - - - 0x01E5AE 07:E59E: 8D 05 60  STA ram_6005
C - - - - - 0x01E5B1 07:E5A1: A9 FC     LDA #< tbl_E8FC
C - - - - - 0x01E5B3 07:E5A3: 85 00     STA ram_0000_t09_screen_data
C - - - - - 0x01E5B5 07:E5A5: A9 E8     LDA #> tbl_E8FC
C - - - - - 0x01E5B7 07:E5A7: 85 01     STA ram_0000_t09_screen_data + $01
C - - - - - 0x01E5B9 07:E5A9: 20 C2 C7  JSR sub_C7C2_prepare_screen_data
C - - - - - 0x01E5BC 07:E5AC: 20 75 C1  JSR sub_C175_wait_for_nmi_to_end
C - - - - - 0x01E5BF 07:E5AF: A9 00     LDA #$00
C - - - - - 0x01E5C1 07:E5B1: 85 40     STA ram_0040_palette
C - - - - - 0x01E5C3 07:E5B3: A9 0F     LDA #con_0041_pal_0F
C - - - - - 0x01E5C5 07:E5B5: 85 41     STA ram_0041_palette
C - - - - - 0x01E5C7 07:E5B7: 20 B4 C8  JSR sub_C8B4_prepare_palette
C - - - - - 0x01E5CA 07:E5BA: A9 91     LDA #< tbl_E891_game_over_objects
C - - - - - 0x01E5CC 07:E5BC: 85 00     STA ram_0000_t14_screen_objects_data
C - - - - - 0x01E5CE 07:E5BE: A9 E8     LDA #> tbl_E891_game_over_objects
C - - - - - 0x01E5D0 07:E5C0: 85 01     STA ram_0000_t14_screen_objects_data + $01
C - - - - - 0x01E5D2 07:E5C2: A2 01     LDX #$01
C - - - - - 0x01E5D4 07:E5C4: 20 9F E1  JSR sub_E19F_prepare_screen_objects
C - - - - - 0x01E5D7 07:E5C7: A2 01     LDX #$01
C - - - - - 0x01E5D9 07:E5C9: A9 01     LDA #$01
C - - - - - 0x01E5DB 07:E5CB: 9D 58 06  STA ram_obj_pos_X_hi,X
C - - - - - 0x01E5DE 07:E5CE: A9 FF     LDA #> $FF20
C - - - - - 0x01E5E0 07:E5D0: 9D C6 06  STA ram_obj_spd_X_lo,X
C - - - - - 0x01E5E3 07:E5D3: A9 20     LDA #< $FF20
C - - - - - 0x01E5E5 07:E5D5: 9D B0 06  STA ram_obj_spd_X_fr,X
C - - - - - 0x01E5E8 07:E5D8: A9 FA     LDA #$FA
C - - - - - 0x01E5EA 07:E5DA: 9D F2 06  STA ram_obj_spd_Y_lo,X
C - - - - - 0x01E5ED 07:E5DD: A2 02     LDX #$02
C - - - - - 0x01E5EF 07:E5DF: A9 01     LDA #$01
C - - - - - 0x01E5F1 07:E5E1: 9D 58 06  STA ram_obj_pos_X_hi,X
C - - - - - 0x01E5F4 07:E5E4: A9 FF     LDA #$FF
C - - - - - 0x01E5F6 07:E5E6: 9D 9A 06  STA ram_obj_pos_Y_hi,X
C - - - - - 0x01E5F9 07:E5E9: A9 FE     LDA #> $FE00
C - - - - - 0x01E5FB 07:E5EB: 9D C6 06  STA ram_obj_spd_X_lo,X
C - - - - - 0x01E5FE 07:E5EE: A9 00     LDA #< $FE00
C - - - - - 0x01E600 07:E5F0: 9D B0 06  STA ram_obj_spd_X_fr,X
C - - - - - 0x01E603 07:E5F3: A9 00     LDA #$00
C - - - - - 0x01E605 07:E5F5: 9D F2 06  STA ram_obj_spd_Y_lo,X
; bzk optimize, move to 0x01E612
C - - - - - 0x01E608 07:E5F8: A9 00     LDA #$00
C - - - - - 0x01E60A 07:E5FA: 85 18     STA ram_0018
C - - - - - 0x01E60C 07:E5FC: 85 14     STA ram_0014
C - - - - - 0x01E60E 07:E5FE: A9 01     LDA #$01
C - - - - - 0x01E610 07:E600: 85 1A     STA ram_001A
C - - - - - 0x01E612 07:E602: A9 00     LDA #$00
C - - - - - 0x01E614 07:E604: AA        TAX ; 00 bzk optimize, is this necessary?
C - - - - - 0x01E615 07:E605: 85 B7     STA ram_cam_pos_X_hi
C - - - - - 0x01E617 07:E607: 85 B8     STA ram_cam_pos_Y_hi
C - - - - - 0x01E619 07:E609: 85 B9     STA ram_cam_pos_X_lo
C - - - - - 0x01E61B 07:E60B: 85 BA     STA ram_cam_pos_Y_lo
C - - - - - 0x01E61D 07:E60D: 20 75 C1  JSR sub_C175_wait_for_nmi_to_end
C - - - - - 0x01E620 07:E610: A9 2D     LDA #con_music_game_over
C - - - - - 0x01E622 07:E612: 20 1A FF  JSR sub_FF1A_play_sound
C - - - - - 0x01E625 07:E615: 20 BA C8  JSR sub_C8BA_prepare_screen_brightening
C - - - - - 0x01E628 07:E618: 20 B2 C9  JSR sub_C9B2_enable_rendering
                                       ;LDA #con_0028_07
C - - - - - 0x01E62B 07:E61B: E6 28     INC ram_main_script ; 06 -> 07
loc_E61D:
C D 3 - - - 0x01E62D 07:E61D: 20 AD C8  JSR sub_C8AD_RTS
C - - - - - 0x01E630 07:E620: 20 B4 C8  JSR sub_C8B4_prepare_palette
C - - - - - 0x01E633 07:E623: 20 2B E1  JSR sub_E12B
C - - - - - 0x01E636 07:E626: 20 D1 E1  JSR sub_E1D1_update_animation_for_all_objects
C - - - - - 0x01E639 07:E629: A9 00     LDA #$00
C - - - - - 0x01E63B 07:E62B: 85 B4     STA ram_index_oam
C - - - - - 0x01E63D 07:E62D: 85 B5     STA ram_full_oam_flag
C - - - - - 0x01E63F 07:E62F: A2 01     LDX #$01
C - - - - - 0x01E641 07:E631: 20 D7 E1  JSR sub_E1D7_sprite_engine
C - - - - - 0x01E644 07:E634: A2 02     LDX #$02
C - - - - - 0x01E646 07:E636: 20 D7 E1  JSR sub_E1D7_sprite_engine
C - - - - - 0x01E649 07:E639: 20 DD E1  JSR sub_E1DD_hide_unused_sprites
C - - - - - 0x01E64C 07:E63C: A5 2E     LDA ram_002E_btn
C - - - - - 0x01E64E 07:E63E: 29 30     AND #con_btns_UD
C - - - - - 0x01E650 07:E640: F0 17     BEQ bra_E659
C - - - - - 0x01E652 07:E642: A9 E4     LDA #< tbl_E8E4
C - - - - - 0x01E654 07:E644: 85 00     STA ram_0000_t09_screen_data
C - - - - - 0x01E656 07:E646: A9 E8     LDA #> tbl_E8E4
C - - - - - 0x01E658 07:E648: 85 01     STA ram_0000_t09_screen_data + $01
C - - - - - 0x01E65A 07:E64A: 20 C2 C7  JSR sub_C7C2_prepare_screen_data
C - - - - - 0x01E65D 07:E64D: A5 2E     LDA ram_002E_btn
C - - - - - 0x01E65F 07:E64F: 29 10     AND #con_btn_Up
C - - - - - 0x01E661 07:E651: F0 03     BEQ bra_E656
C - - - - - 0x01E663 07:E653: 4C FC E6  JMP loc_E6FC
bra_E656:
C - - - - - 0x01E666 07:E656: 4C 09 E7  JMP loc_E709
bra_E659:
loc_E659:
C D 3 - - - 0x01E669 07:E659: AD 17 06  LDA ram_0616_obj + $01
C - - - - - 0x01E66C 07:E65C: 18        CLC
C - - - - - 0x01E66D 07:E65D: 6D 18 06  ADC ram_0616_obj + $02
C - - - - - 0x01E670 07:E660: C9 16     CMP #$16
C - - - - - 0x01E672 07:E662: D0 35     BNE bra_E699
C - - - - - 0x01E674 07:E664: EE F8 03  INC ram_03F8
C - - - - - 0x01E677 07:E667: AD F8 03  LDA ram_03F8
C - - - - - 0x01E67A 07:E66A: C9 3C     CMP #$3C
C - - - - - 0x01E67C 07:E66C: 90 2B     BCC bra_E699
C - - - - - 0x01E67E 07:E66E: AD F9 03  LDA ram_continues
C - - - - - 0x01E681 07:E671: C9 01     CMP #$01
C - - - - - 0x01E683 07:E673: F0 0B     BEQ bra_E680
C - - - - - 0x01E685 07:E675: A9 F0     LDA #< tbl_E8F0
C - - - - - 0x01E687 07:E677: 85 00     STA ram_0000_t09_screen_data
C - - - - - 0x01E689 07:E679: A9 E8     LDA #> tbl_E8F0
C - - - - - 0x01E68B 07:E67B: 85 01     STA ram_0000_t09_screen_data + $01
C - - - - - 0x01E68D 07:E67D: 20 C2 C7  JSR sub_C7C2_prepare_screen_data
bra_E680:
C - - - - - 0x01E690 07:E680: A9 00     LDA #$00
C - - - - - 0x01E692 07:E682: 8D F8 03  STA ram_03F8
C - - - - - 0x01E695 07:E685: 8D 03 60  STA ram_6003
C - - - - - 0x01E698 07:E688: CE 04 60  DEC ram_6004
C - - - - - 0x01E69B 07:E68B: AD 04 60  LDA ram_6004
C - - - - - 0x01E69E 07:E68E: C9 10     CMP #$10
C - - - - - 0x01E6A0 07:E690: F0 13     BEQ bra_E6A5
C - - - - - 0x01E6A2 07:E692: B0 05     BCS bra_E699
C - - - - - 0x01E6A4 07:E694: A9 19     LDA #$19
C - - - - - 0x01E6A6 07:E696: 8D 04 60  STA ram_6004
bra_E699:
C - - - - - 0x01E6A9 07:E699: 20 75 C1  JSR sub_C175_wait_for_nmi_to_end
C - - - - - 0x01E6AC 07:E69C: A5 2D     LDA ram_002D_btn
C - - - - - 0x01E6AE 07:E69E: 29 0B     AND #con_btn_Start + con_btns_AB
C - - - - - 0x01E6B0 07:E6A0: D0 08     BNE bra_E6AA
C - - - - - 0x01E6B2 07:E6A2: 4C 1D E6  JMP loc_E61D
bra_E6A5:
C - - - - - 0x01E6B5 07:E6A5: A9 00     LDA #$00
C - - - - - 0x01E6B7 07:E6A7: 8D 00 60  STA ram_6000
bra_E6AA:
C - - - - - 0x01E6BA 07:E6AA: A9 00     LDA #$00
C - - - - - 0x01E6BC 07:E6AC: 8D CE 03  STA ram_03CE
C - - - - - 0x01E6BF 07:E6AF: 8D CF 03  STA ram_03CF
C - - - - - 0x01E6C2 07:E6B2: 8D 0E 04  STA ram_040E
C - - - - - 0x01E6C5 07:E6B5: 8D 0D 04  STA ram_040D
C - - - - - 0x01E6C8 07:E6B8: 8D 0C 04  STA ram_040C
C - - - - - 0x01E6CB 07:E6BB: 8D 11 04  STA ram_0411
C - - - - - 0x01E6CE 07:E6BE: 8D 12 04  STA ram_0412
C - - - - - 0x01E6D1 07:E6C1: AD 00 60  LDA ram_6000
C - - - - - 0x01E6D4 07:E6C4: F0 12     BEQ bra_E6D8
C - - - - - 0x01E6D6 07:E6C6: CE F9 03  DEC ram_continues
C - - - - - 0x01E6D9 07:E6C9: F0 0D     BEQ bra_E6D8
; restore round if continue was selected
C - - - - - 0x01E6DB 07:E6CB: AD F7 03  LDA ram_copy_round
C - - - - - 0x01E6DE 07:E6CE: 85 33     STA ram_round
C - - - - - 0x01E6E0 07:E6D0: 20 17 C4  JSR sub_C417
C - - - - - 0x01E6E3 07:E6D3: A9 04     LDA #con_0028_04
C - - - - - 0x01E6E5 07:E6D5: 4C DA E6  JMP loc_E6DA
bra_E6D8:
C - - - - - 0x01E6E8 07:E6D8: A9 00     LDA #con_0028_00
loc_E6DA:
C D 3 - - - 0x01E6EA 07:E6DA: 85 28     STA ram_main_script
C - - - - - 0x01E6EC 07:E6DC: 20 C0 C8  JSR sub_C8C0_prepare_screen_darkening
bra_E6DF_loop:
; wait until screen goes black
C - - - - - 0x01E6EF 07:E6DF: 20 B4 C8  JSR sub_C8B4_prepare_palette
C - - - - - 0x01E6F2 07:E6E2: 20 75 C1  JSR sub_C175_wait_for_nmi_to_end
C - - - - - 0x01E6F5 07:E6E5: AD E9 00  LDA a: ram_brightness_flag
C - - - - - 0x01E6F8 07:E6E8: D0 F5     BNE bra_E6DF_loop
C - - - - - 0x01E6FA 07:E6EA: 20 04 FF  JSR sub_FF04_turn_off_music_and_sfx
C - - - - - 0x01E6FD 07:E6ED: 20 B9 C9  JSR sub_C9B9_disable_rendering
C - - - - - 0x01E700 07:E6F0: A9 F0     LDA #$F0
C - - - - - 0x01E702 07:E6F2: 85 34     STA ram_frm_cnt_1
bra_E6F4_loop:
C - - - - - 0x01E704 07:E6F4: 20 75 C1  JSR sub_C175_wait_for_nmi_to_end
C - - - - - 0x01E707 07:E6F7: A5 34     LDA ram_frm_cnt_1
C - - - - - 0x01E709 07:E6F9: D0 F9     BNE bra_E6F4_loop
C - - - - - 0x01E70B 07:E6FB: 60        RTS



loc_E6FC:
C D 3 - - - 0x01E70C 07:E6FC: A9 1A     LDA #$1A
C - - - - - 0x01E70E 07:E6FE: 8D 00 60  STA ram_6000
C - - - - - 0x01E711 07:E701: A9 00     LDA #$00
C - - - - - 0x01E713 07:E703: 8D 02 60  STA ram_6002
C - - - - - 0x01E716 07:E706: 4C 59 E6  JMP loc_E659



loc_E709:
C D 3 - - - 0x01E719 07:E709: A9 1A     LDA #$1A
C - - - - - 0x01E71B 07:E70B: 8D 02 60  STA ram_6002
C - - - - - 0x01E71E 07:E70E: A9 00     LDA #$00
C - - - - - 0x01E720 07:E710: 8D 00 60  STA ram_6000
C - - - - - 0x01E723 07:E713: 4C 59 E6  JMP loc_E659



loc_E716_the_end_screen:
C D 3 - - - 0x01E726 07:E716: A9 01     LDA #$01
C - - - - - 0x01E728 07:E718: 8D 1F 04  STA ram_041F_screen_flag
sub_E71B_felix_laughing_screen:
; bzk optimize, same code as 0x01E564
C - - - - - 0x01E72B 07:E71B: A9 74     LDA #con_chr_bank + $74
C - - - - - 0x01E72D 07:E71D: 85 20     STA ram_chr_bank_bg_1
C - - - - - 0x01E72F 07:E71F: 18        CLC
C - - - - - 0x01E730 07:E720: 69 01     ADC #$01    ; con_chr_bank + $75
C - - - - - 0x01E732 07:E722: 85 22     STA ram_chr_bank_bg_2
C - - - - - 0x01E734 07:E724: 69 01     ADC #$01    ; con_chr_bank + $76
C - - - - - 0x01E736 07:E726: 85 24     STA ram_chr_bank_bg_3
C - - - - - 0x01E738 07:E728: 69 01     ADC #$01    ; con_chr_bank + $77
C - - - - - 0x01E73A 07:E72A: 85 26     STA ram_chr_bank_bg_4
C - - - - - 0x01E73C 07:E72C: 69 01     ADC #$01    ; con_chr_bank + $78
C - - - - - 0x01E73E 07:E72E: 85 1C     STA ram_chr_bank_spr_1
C - - - - - 0x01E740 07:E730: 85 1D     STA ram_chr_bank_spr_1 + $01
; bzk optimize, ADC 02
C - - - - - 0x01E742 07:E732: 69 01     ADC #$01    ; 79
C - - - - - 0x01E744 07:E734: 69 01     ADC #$01    ; con_chr_bank + $7A
C - - - - - 0x01E746 07:E736: 85 1E     STA ram_chr_bank_spr_2
C - - - - - 0x01E748 07:E738: 85 1F     STA ram_chr_bank_spr_2 + $01
C - - - - - 0x01E74A 07:E73A: A9 01     LDA #$01
C - - - - - 0x01E74C 07:E73C: 85 40     STA ram_0040_palette
C - - - - - 0x01E74E 07:E73E: A9 0F     LDA #con_0041_pal_0F
C - - - - - 0x01E750 07:E740: 85 41     STA ram_0041_palette
C - - - - - 0x01E752 07:E742: A9 CC     LDA #< tbl_E8CC_felix_laughing_screen
C - - - - - 0x01E754 07:E744: 85 00     STA ram_0000_t09_screen_data
C - - - - - 0x01E756 07:E746: A9 E8     LDA #> tbl_E8CC_felix_laughing_screen
C - - - - - 0x01E758 07:E748: 85 01     STA ram_0000_t09_screen_data + $01
C - - - - - 0x01E75A 07:E74A: AD 1F 04  LDA ram_041F_screen_flag
C - - - - - 0x01E75D 07:E74D: F0 0C     BEQ bra_E75B_felix_laughing
; if "the end" screen
C - - - - - 0x01E75F 07:E74F: A9 12     LDA #con_0041_pal_12
C - - - - - 0x01E761 07:E751: 85 41     STA ram_0041_palette
C - - - - - 0x01E763 07:E753: A9 D8     LDA #< tbl_E8D8_the_end_screen
C - - - - - 0x01E765 07:E755: 85 00     STA ram_0000_t09_screen_data
C - - - - - 0x01E767 07:E757: A9 E8     LDA #> tbl_E8D8_the_end_screen
C - - - - - 0x01E769 07:E759: 85 01     STA ram_0000_t09_screen_data + $01
bra_E75B_felix_laughing:
C - - - - - 0x01E76B 07:E75B: 20 C2 C7  JSR sub_C7C2_prepare_screen_data
C - - - - - 0x01E76E 07:E75E: 20 75 C1  JSR sub_C175_wait_for_nmi_to_end
C - - - - - 0x01E771 07:E761: 20 B4 C8  JSR sub_C8B4_prepare_palette
C - - - - - 0x01E774 07:E764: A9 9C     LDA #< tbl_E89C_felix_laughing_screen_objects
C - - - - - 0x01E776 07:E766: 85 00     STA ram_0000_t14_screen_objects_data
C - - - - - 0x01E778 07:E768: A9 E8     LDA #> tbl_E89C_felix_laughing_screen_objects
C - - - - - 0x01E77A 07:E76A: 85 01     STA ram_0000_t14_screen_objects_data + $01
C - - - - - 0x01E77C 07:E76C: AD 1F 04  LDA ram_041F_screen_flag
C - - - - - 0x01E77F 07:E76F: F0 14     BEQ bra_E785_felix_laughing
; if "the end" screen
C - - - - - 0x01E781 07:E771: A9 44     LDA #con_chr_bank + $44
C - - - - - 0x01E783 07:E773: 85 1C     STA ram_chr_bank_spr_1
C - - - - - 0x01E785 07:E775: 85 1D     STA ram_chr_bank_spr_1 + $01
C - - - - - 0x01E787 07:E777: A9 46     LDA #con_chr_bank + $46
C - - - - - 0x01E789 07:E779: 85 1E     STA ram_chr_bank_spr_2
C - - - - - 0x01E78B 07:E77B: 85 1F     STA ram_chr_bank_spr_2 + $01
C - - - - - 0x01E78D 07:E77D: A9 A2     LDA #< tbl_E8A2_the_end_screen_objects
C - - - - - 0x01E78F 07:E77F: 85 00     STA ram_0000_t14_screen_objects_data
C - - - - - 0x01E791 07:E781: A9 E8     LDA #> tbl_E8A2_the_end_screen_objects
C - - - - - 0x01E793 07:E783: 85 01     STA ram_0000_t14_screen_objects_data + $01
bra_E785_felix_laughing:
C - - - - - 0x01E795 07:E785: A2 01     LDX #$01
C - - - - - 0x01E797 07:E787: 20 9F E1  JSR sub_E19F_prepare_screen_objects
C - - - - - 0x01E79A 07:E78A: A9 1E     LDA #$1E
C - - - - - 0x01E79C 07:E78C: 8D 2B 04  STA ram_042B
C - - - - - 0x01E79F 07:E78F: A9 02     LDA #con_sfx_02
C - - - - - 0x01E7A1 07:E791: 85 00     STA ram_0000_t84
C - - - - - 0x01E7A3 07:E793: AD 1F 04  LDA ram_041F_screen_flag
C - - - - - 0x01E7A6 07:E796: F0 18     BEQ bra_E7B0_felix_laughing
; if "the end" screen
C - - - - - 0x01E7A8 07:E798: A9 01     LDA #> $01FD
C - - - - - 0x01E7AA 07:E79A: 8D 59 06  STA ram_obj_pos_X_hi + $01
C - - - - - 0x01E7AD 07:E79D: A9 FD     LDA #< $01FD
C - - - - - 0x01E7AF 07:E79F: 8D C7 06  STA ram_obj_spd_X_lo + $01
C - - - - - 0x01E7B2 07:E7A2: A9 50     LDA #$50
C - - - - - 0x01E7B4 07:E7A4: 8D DD 06  STA ram_obj_spd_Y_fr + $01
C - - - - - 0x01E7B7 07:E7A7: A9 4D     LDA #$4D
C - - - - - 0x01E7B9 07:E7A9: 8D CF 07  STA ram_07CE_obj_hp + $01
C - - - - - 0x01E7BC 07:E7AC: A9 00     LDA #con_sfx_00
C - - - - - 0x01E7BE 07:E7AE: 85 00     STA ram_0000_t84
bra_E7B0_felix_laughing:
C - - - - - 0x01E7C0 07:E7B0: A5 00     LDA ram_0000_t84
C - - - - - 0x01E7C2 07:E7B2: 20 1A FF  JSR sub_FF1A_play_sound
C - - - - - 0x01E7C5 07:E7B5: 20 BA C8  JSR sub_C8BA_prepare_screen_brightening
C - - - - - 0x01E7C8 07:E7B8: 20 B2 C9  JSR sub_C9B2_enable_rendering
                                       ;LDA #con_0028_07
C - - - - - 0x01E7CB 07:E7BB: E6 28     INC ram_main_script ; 06 -> 07
bra_E7BD_loop:
C - - - - - 0x01E7CD 07:E7BD: 20 AD C8  JSR sub_C8AD_RTS
C - - - - - 0x01E7D0 07:E7C0: 20 B4 C8  JSR sub_C8B4_prepare_palette
C - - - - - 0x01E7D3 07:E7C3: 20 2B E1  JSR sub_E12B
C - - - - - 0x01E7D6 07:E7C6: 20 D1 E1  JSR sub_E1D1_update_animation_for_all_objects
C - - - - - 0x01E7D9 07:E7C9: A9 00     LDA #$00
C - - - - - 0x01E7DB 07:E7CB: 85 B4     STA ram_index_oam
C - - - - - 0x01E7DD 07:E7CD: 85 B5     STA ram_full_oam_flag
C - - - - - 0x01E7DF 07:E7CF: A2 01     LDX #$01
C - - - - - 0x01E7E1 07:E7D1: 20 D7 E1  JSR sub_E1D7_sprite_engine
C - - - - - 0x01E7E4 07:E7D4: 20 DD E1  JSR sub_E1DD_hide_unused_sprites
C - - - - - 0x01E7E7 07:E7D7: 20 75 C1  JSR sub_C175_wait_for_nmi_to_end
C - - - - - 0x01E7EA 07:E7DA: AD 1F 04  LDA ram_041F_screen_flag
C - - - - - 0x01E7ED 07:E7DD: D0 09     BNE bra_E7E8_the_end
; if felix laughing
C - - - - - 0x01E7EF 07:E7DF: A9 87     LDA #con_mus_cfg_87
C - - - - - 0x01E7F1 07:E7E1: 20 1A FF  JSR sub_FF1A_play_sound
C - - - - - 0x01E7F4 07:E7E4: E0 02     CPX #$02
C - - - - - 0x01E7F6 07:E7E6: D0 10     BNE bra_E7F8
bra_E7E8_the_end:
C - - - - - 0x01E7F8 07:E7E8: A5 2D     LDA ram_002D_btn
C - - - - - 0x01E7FA 07:E7EA: 29 08     AND #con_btn_Start
C - - - - - 0x01E7FC 07:E7EC: F0 CF     BEQ bra_E7BD_loop
C - - - - - 0x01E7FE 07:E7EE: AD 1F 04  LDA ram_041F_screen_flag
C - - - - - 0x01E801 07:E7F1: F0 05     BEQ bra_E7F8    ; if the end
; if felix laughing
C - - - - - 0x01E803 07:E7F3: AD 2B 04  LDA ram_042B
C - - - - - 0x01E806 07:E7F6: D0 C5     BNE bra_E7BD_loop
bra_E7F8:
C - - - - - 0x01E808 07:E7F8: 20 C0 C8  JSR sub_C8C0_prepare_screen_darkening
bra_E7FB_loop:
; wait until screen goes black
C - - - - - 0x01E80B 07:E7FB: 20 B4 C8  JSR sub_C8B4_prepare_palette
C - - - - - 0x01E80E 07:E7FE: 20 75 C1  JSR sub_C175_wait_for_nmi_to_end
C - - - - - 0x01E811 07:E801: AD E9 00  LDA a: ram_brightness_flag
C - - - - - 0x01E814 07:E804: D0 F5     BNE bra_E7FB_loop
C - - - - - 0x01E816 07:E806: 20 04 FF  JSR sub_FF04_turn_off_music_and_sfx
C - - - - - 0x01E819 07:E809: 20 B9 C9  JSR sub_C9B9_disable_rendering
C - - - - - 0x01E81C 07:E80C: A9 F0     LDA #$F0
C - - - - - 0x01E81E 07:E80E: 85 34     STA ram_frm_cnt_1
bra_E810_loop:
C - - - - - 0x01E820 07:E810: 20 75 C1  JSR sub_C175_wait_for_nmi_to_end
C - - - - - 0x01E823 07:E813: A5 34     LDA ram_frm_cnt_1
C - - - - - 0x01E825 07:E815: D0 F9     BNE bra_E810_loop
C - - - - - 0x01E827 07:E817: 20 75 C1  JSR sub_C175_wait_for_nmi_to_end
C - - - - - 0x01E82A 07:E81A: 20 B9 C9  JSR sub_C9B9_disable_rendering
C - - - - - 0x01E82D 07:E81D: 20 04 FF  JSR sub_FF04_turn_off_music_and_sfx
C - - - - - 0x01E830 07:E820: 20 80 E1  JSR sub_E180_hide_all_sprites_and_clear_memory
C - - - - - 0x01E833 07:E823: AD 1F 04  LDA ram_041F_screen_flag
; bzk optimize, BEQ to RTS
C - - - - - 0x01E836 07:E826: D0 01     BNE bra_E829_felix_laughing
; if the end
C - - - - - 0x01E838 07:E828: 60        RTS
bra_E829_felix_laughing:
C - - - - - 0x01E839 07:E829: A9 00     LDA #con_0028_00
C - - - - - 0x01E83B 07:E82B: 85 28     STA ram_main_script
C - - - - - 0x01E83D 07:E82D: 60        RTS



sub_E82E:
bra_E82E_loop:
; wait until screen goes black
C - - - - - 0x01E83E 07:E82E: 20 B4 C8  JSR sub_C8B4_prepare_palette
C - - - - - 0x01E841 07:E831: 20 75 C1  JSR sub_C175_wait_for_nmi_to_end
C - - - - - 0x01E844 07:E834: AD E9 00  LDA a: ram_brightness_flag
C - - - - - 0x01E847 07:E837: D0 F5     BNE bra_E82E_loop
C - - - - - 0x01E849 07:E839: 20 B9 C9  JSR sub_C9B9_disable_rendering
C - - - - - 0x01E84C 07:E83C: A9 F0     LDA #$F0
C - - - - - 0x01E84E 07:E83E: 85 34     STA ram_frm_cnt_1
bra_E840_loop:
C - - - - - 0x01E850 07:E840: 20 75 C1  JSR sub_C175_wait_for_nmi_to_end
C - - - - - 0x01E853 07:E843: A5 34     LDA ram_frm_cnt_1
C - - - - - 0x01E855 07:E845: D0 F9     BNE bra_E840_loop
C - - - - - 0x01E857 07:E847: 60        RTS



sub_E848_RTS:
; bzk optimize
C - - - - - 0x01E858 07:E848: 60        RTS


; bzk garbage
- - - - - - 0x01E859 07:E849: 60        RTS



sub_E84A:
C - - - - - 0x01E85A 07:E84A: 20 C8 C9  JSR sub_C9C8_prg_bankswitch_02
C - - - - - 0x01E85D 07:E84D: AD B8 03  LDA ram_03B8
C - - - - - 0x01E860 07:E850: C9 98     CMP #$98
C - - - - - 0x01E862 07:E852: B0 1C     BCS bra_E870_RTS
; of 00-97
C - - - - - 0x01E864 07:E854: 38        SEC
C - - - - - 0x01E865 07:E855: E9 78     SBC #$78
C - - - - - 0x01E867 07:E857: 90 14     BCC bra_E86D    ; if 00-77
; if 78-97
C - - - - - 0x01E869 07:E859: AA        TAX
C - - - - - 0x01E86A 07:E85A: BD F7 B1  LDA tbl_0x007207_index,X
C - - - - - 0x01E86D 07:E85D: AA        TAX
C - - - - - 0x01E86E 07:E85E: BD 17 B2  LDA tbl_0x007227_colors,X
C - - - - - 0x01E871 07:E861: 85 47     STA ram_0046_pal_buffer + $01
C - - - - - 0x01E873 07:E863: BD 1C B2  LDA tbl_0x00722C_colors,X
C - - - - - 0x01E876 07:E866: 85 48     STA ram_0046_pal_buffer + $02
C - - - - - 0x01E878 07:E868: BD 21 B2  LDA tbl_0x007231_colors,X
C - - - - - 0x01E87B 07:E86B: 85 49     STA ram_0046_pal_buffer + $03
bra_E86D:
C - - - - - 0x01E87D 07:E86D: EE B8 03  INC ram_03B8
bra_E870_RTS:
C - - - - - 0x01E880 07:E870: 60        RTS



tbl_E871_phone_call_objects:
; 01 
- D 3 - I - 0x01E881 07:E871: 01        .byte con_obj_id_01   ; 
- D 3 - I - 0x01E882 07:E872: 01        .byte $01   ; ram_0616_obj
- D 3 - I - 0x01E883 07:E873: 01        .byte $01   ; ram_0734_obj
- D 3 - I - 0x01E884 07:E874: E0        .byte $E0   ; ram_obj_pos_X_lo
- D 3 - I - 0x01E885 07:E875: C9        .byte $C9   ; ram_obj_pos_Y_lo
; 02 
- D 3 - I - 0x01E886 07:E876: 01        .byte con_obj_id_01   ; 
- D 3 - I - 0x01E887 07:E877: 08        .byte $08   ; ram_0616_obj
- D 3 - I - 0x01E888 07:E878: 06        .byte $06   ; ram_0734_obj
- D 3 - I - 0x01E889 07:E879: A4        .byte $A4   ; ram_obj_pos_X_lo
- D 3 - I - 0x01E88A 07:E87A: 5E        .byte $5E   ; ram_obj_pos_Y_lo
; 03 
- D 3 - I - 0x01E88B 07:E87B: 01        .byte con_obj_id_01   ; 
- D 3 - I - 0x01E88C 07:E87C: 08        .byte $08   ; ram_0616_obj
- D 3 - I - 0x01E88D 07:E87D: 07        .byte $07   ; ram_0734_obj
- D 3 - I - 0x01E88E 07:E87E: D8        .byte $D8   ; ram_obj_pos_X_lo
- D 3 - I - 0x01E88F 07:E87F: 58        .byte $58   ; ram_obj_pos_Y_lo
; 04 
- D 3 - I - 0x01E890 07:E880: 01        .byte con_obj_id_01   ; 
- D 3 - I - 0x01E891 07:E881: 08        .byte $08   ; ram_0616_obj
- D 3 - I - 0x01E892 07:E882: 05        .byte $05   ; ram_0734_obj
- D 3 - I - 0x01E893 07:E883: 10        .byte $10   ; ram_obj_pos_X_lo
- D 3 - I - 0x01E894 07:E884: C9        .byte $C9   ; ram_obj_pos_Y_lo
; 05 
- D 3 - I - 0x01E895 07:E885: 01        .byte con_obj_id_01   ; 
- D 3 - I - 0x01E896 07:E886: 08        .byte $08   ; ram_0616_obj
- D 3 - I - 0x01E897 07:E887: 0C        .byte $0C   ; ram_0734_obj
- D 3 - I - 0x01E898 07:E888: B4        .byte $B4   ; ram_obj_pos_X_lo
- D 3 - I - 0x01E899 07:E889: 2E        .byte $2E   ; ram_obj_pos_Y_lo
; 
- D 3 - I - 0x01E89A 07:E88A: FF        .byte $FF   ; end token



tbl_E88B_felix_world_screen_objects:
; 01 
- D 3 - I - 0x01E89B 07:E88B: 03        .byte con_obj_id_03   ; 
- D 3 - I - 0x01E89C 07:E88C: 01        .byte $01   ; ram_0616_obj
- D 3 - I - 0x01E89D 07:E88D: 01        .byte $01   ; ram_0734_obj
- D 3 - I - 0x01E89E 07:E88E: E8        .byte $E8   ; ram_obj_pos_X_lo
- D 3 - I - 0x01E89F 07:E88F: AF        .byte $AF   ; ram_obj_pos_Y_lo
; 
- D 3 - I - 0x01E8A0 07:E890: FF        .byte $FF   ; end token



tbl_E891_game_over_objects:
; 01 
- D 3 - I - 0x01E8A1 07:E891: 01        .byte con_obj_id_01   ; 
- D 3 - I - 0x01E8A2 07:E892: 0A        .byte $0A   ; ram_0616_obj
- D 3 - I - 0x01E8A3 07:E893: 09        .byte $09   ; ram_0734_obj
- D 3 - I - 0x01E8A4 07:E894: 10        .byte $10   ; ram_obj_pos_X_lo
- D 3 - I - 0x01E8A5 07:E895: 66        .byte $66   ; ram_obj_pos_Y_lo
; 02 
- D 3 - I - 0x01E8A6 07:E896: 04        .byte con_obj_id_04   ; 
- D 3 - I - 0x01E8A7 07:E897: 0A        .byte $0A   ; ram_0616_obj
- D 3 - I - 0x01E8A8 07:E898: 09        .byte $09   ; ram_0734_obj
- D 3 - I - 0x01E8A9 07:E899: 9A        .byte $9A   ; ram_obj_pos_X_lo
- D 3 - I - 0x01E8AA 07:E89A: 80        .byte $80   ; ram_obj_pos_Y_lo
; 
- D 3 - I - 0x01E8AB 07:E89B: FF        .byte $FF   ; end token



tbl_E89C_felix_laughing_screen_objects:
; 01 
- D 3 - I - 0x01E8AC 07:E89C: 01        .byte con_obj_id_01   ; 
- D 3 - I - 0x01E8AD 07:E89D: 08        .byte $08   ; ram_0616_obj
- D 3 - I - 0x01E8AE 07:E89E: 08        .byte $08   ; ram_0734_obj
- D 3 - I - 0x01E8AF 07:E89F: 80        .byte $80   ; ram_obj_pos_X_lo
- D 3 - I - 0x01E8B0 07:E8A0: 88        .byte $88   ; ram_obj_pos_Y_lo
; 
- D 3 - I - 0x01E8B1 07:E8A1: FF        .byte $FF   ; end token



tbl_E8A2_the_end_screen_objects:
; 01 
- D 3 - I - 0x01E8B2 07:E8A2: 01        .byte con_obj_id_01   ; 
- D 3 - I - 0x01E8B3 07:E8A3: 0C        .byte $0C   ; ram_0616_obj
- D 3 - I - 0x01E8B4 07:E8A4: 0D        .byte $0D   ; ram_0734_obj
- D 3 - I - 0x01E8B5 07:E8A5: 20        .byte $20   ; ram_obj_pos_X_lo
- D 3 - I - 0x01E8B6 07:E8A6: A0        .byte $A0   ; ram_obj_pos_Y_lo
; 
- D 3 - I - 0x01E8B7 07:E8A7: FF        .byte $FF   ; end token



tbl_E8A8_phone_call_screen:
- D 3 - I - 0x01E8B8 07:E8A8: 03        .byte $03   ; ??? 001
- D 3 - I - 0x01E8B9 07:E8A9: 02        .byte con_prg_bank + $02   ; 
- D 3 - I - 0x01E8BA 07:E8AA: 20        .byte $20   ; 
- D 3 - I - 0x01E8BB 07:E8AB: 08        .byte $08   ; 
- D 3 - I - 0x01E8BC 07:E8AC: 00 28     .word $2800 ; ppu address
- D 3 - I - 0x01E8BE 07:E8AE: 00        .byte $00   ; 
- D 3 - I - 0x01E8BF 07:E8AF: 20        .byte $20   ; 
- D 3 - I - 0x01E8C0 07:E8B0: 00        .byte $00   ; 
- D 3 - I - 0x01E8C1 07:E8B1: 20        .byte $20   ; 
- D 3 - I - 0x01E8C2 07:E8B2: 26 B2     .word off_0x007236_phone_call_screen



tbl_E8B4_felix_world_screen:
- D 3 - I - 0x01E8C4 07:E8B4: 03        .byte $03   ; ??? 001
- D 3 - I - 0x01E8C5 07:E8B5: 02        .byte con_prg_bank + $02   ; 
- D 3 - I - 0x01E8C6 07:E8B6: 20        .byte $20   ; 
- D 3 - I - 0x01E8C7 07:E8B7: 08        .byte $08   ; 
- D 3 - I - 0x01E8C8 07:E8B8: 00 28     .word $2800 ; ppu address
- D 3 - I - 0x01E8CA 07:E8BA: 00        .byte $00   ; 
- D 3 - I - 0x01E8CB 07:E8BB: 20        .byte $20   ; 
- D 3 - I - 0x01E8CC 07:E8BC: 00        .byte $00   ; 
- D 3 - I - 0x01E8CD 07:E8BD: 20        .byte $20   ; 
- D 3 - I - 0x01E8CE 07:E8BE: C1 B3     .word off_0x0073D1_felix_world_screen



tbl_E8C0:
- D 3 - I - 0x01E8D0 07:E8C0: 03        .byte $03   ; ??? 001
- D 3 - I - 0x01E8D1 07:E8C1: 02        .byte con_prg_bank + $02   ; 
- D 3 - I - 0x01E8D2 07:E8C2: 20        .byte $20   ; 
- D 3 - I - 0x01E8D3 07:E8C3: 08        .byte $08   ; 
- D 3 - I - 0x01E8D4 07:E8C4: 00 28     .word $2800 ; ppu address
- D 3 - I - 0x01E8D6 07:E8C6: 00        .byte $00   ; 
- D 3 - I - 0x01E8D7 07:E8C7: 20        .byte $20   ; 
- D 3 - I - 0x01E8D8 07:E8C8: 00        .byte $00   ; 
- D 3 - I - 0x01E8D9 07:E8C9: 20        .byte $20   ; 
- D 3 - I - 0x01E8DA 07:E8CA: 80 B7     .word off_0x007790_game_over_screen



tbl_E8CC_felix_laughing_screen:
- D 3 - I - 0x01E8DC 07:E8CC: 03        .byte $03   ; ??? 001
- D 3 - I - 0x01E8DD 07:E8CD: 02        .byte con_prg_bank + $02   ; 
- D 3 - I - 0x01E8DE 07:E8CE: 20        .byte $20   ; 
- D 3 - I - 0x01E8DF 07:E8CF: 08        .byte $08   ; 
- D 3 - I - 0x01E8E0 07:E8D0: 00 28     .word $2800 ; ppu address
- D 3 - I - 0x01E8E2 07:E8D2: 00        .byte $00   ; 
- D 3 - I - 0x01E8E3 07:E8D3: 20        .byte $20   ; 
- D 3 - I - 0x01E8E4 07:E8D4: 00        .byte $00   ; 
- D 3 - I - 0x01E8E5 07:E8D5: 20        .byte $20   ; 
- D 3 - I - 0x01E8E6 07:E8D6: 5F BA     .word off_0x007A6F_felix_laughing_screen



tbl_E8D8_the_end_screen:
- D 3 - I - 0x01E8E8 07:E8D8: 03        .byte $03   ; ??? 001
- D 3 - I - 0x01E8E9 07:E8D9: 02        .byte con_prg_bank + $02   ; 
- D 3 - I - 0x01E8EA 07:E8DA: 20        .byte $20   ; 
- D 3 - I - 0x01E8EB 07:E8DB: 08        .byte $08   ; 
- D 3 - I - 0x01E8EC 07:E8DC: 00 28     .word $2800 ; ppu address
- D 3 - I - 0x01E8EE 07:E8DE: 00        .byte $00   ; 
- D 3 - I - 0x01E8EF 07:E8DF: 20        .byte $20   ; 
- D 3 - I - 0x01E8F0 07:E8E0: 00        .byte $00   ; 
- D 3 - I - 0x01E8F1 07:E8E1: 20        .byte $20   ; 
- D 3 - I - 0x01E8F2 07:E8E2: DA BA     .word off_0x007AEA_the_end_screen



tbl_E8E4:
- D 3 - I - 0x01E8F4 07:E8E4: 01        .byte $01   ; ??? 001
- D 3 - I - 0x01E8F5 07:E8E5: 02        .byte con_prg_bank + $02   ; 
- D 3 - I - 0x01E8F6 07:E8E6: 01        .byte $01   ; 
- D 3 - I - 0x01E8F7 07:E8E7: 03        .byte $03   ; 
- D 3 - I - 0x01E8F8 07:E8E8: D3 2A     .word $2AD3 ; ppu address
- D 3 - I - 0x01E8FA 07:E8EA: 00        .byte $00   ; 
- D 3 - I - 0x01E8FB 07:E8EB: 20        .byte $20   ; 
- D 3 - I - 0x01E8FC 07:E8EC: 00        .byte $00   ; 
- D 3 - I - 0x01E8FD 07:E8ED: 20        .byte $20   ; 
- D 3 - I - 0x01E8FE 07:E8EE: 00 60     .word ram_6000 ; 



tbl_E8F0:
- D 3 - I - 0x01E900 07:E8F0: 01        .byte $01   ; ??? 001
- D 3 - I - 0x01E901 07:E8F1: 02        .byte con_prg_bank + $02   ; 
- D 3 - I - 0x01E902 07:E8F2: 02        .byte $02   ; 
- D 3 - I - 0x01E903 07:E8F3: 01        .byte $01   ; 
- D 3 - I - 0x01E904 07:E8F4: 5A 2B     .word $2B5A ; ppu address
- D 3 - I - 0x01E906 07:E8F6: 00        .byte $00   ; 
- D 3 - I - 0x01E907 07:E8F7: 20        .byte $20   ; 
- D 3 - I - 0x01E908 07:E8F8: 00        .byte $00   ; 
- D 3 - I - 0x01E909 07:E8F9: 20        .byte $20   ; 
- D 3 - I - 0x01E90A 07:E8FA: 03 60     .word ram_6003 ; 



tbl_E8FC:
- D 3 - I - 0x01E90C 07:E8FC: 01        .byte $01   ; ??? 001
- D 3 - I - 0x01E90D 07:E8FD: 02        .byte con_prg_bank + $02   ; 
- D 3 - I - 0x01E90E 07:E8FE: 01        .byte $01   ; 
- D 3 - I - 0x01E90F 07:E8FF: 01        .byte $01   ; 
- D 3 - I - 0x01E910 07:E900: DD 2A     .word $2ADD ; ppu address
- D 3 - I - 0x01E912 07:E902: 00        .byte $00   ; 
- D 3 - I - 0x01E913 07:E903: 20        .byte $20   ; 
- D 3 - I - 0x01E914 07:E904: 00        .byte $00   ; 
- D 3 - I - 0x01E915 07:E905: 20        .byte $20   ; 
- D 3 - I - 0x01E916 07:E906: 05 60     .word ram_6005 ; 



bra_E908_japanese:
- - - - - - 0x01E918 07:E908: BD 46 BF  LDA tbl_0x007F56_professor_text_japanese,X
- - - - - - 0x01E91B 07:E90B: 8D BB 03  STA ram_text_pointer
- - - - - - 0x01E91E 07:E90E: E8        INX
- - - - - - 0x01E91F 07:E90F: BD 46 BF  LDA tbl_0x007F56_professor_text_japanese,X
- - - - - - 0x01E922 07:E912: 8D BC 03  STA ram_text_pointer + $01
- - - - - - 0x01E925 07:E915: 4C 3F E9  JMP loc_E93F



sub_E918_print_professor_text:
sub_0x01E928_print_professor_text:
C - - - - - 0x01E928 07:E918: 48        PHA
C - - - - - 0x01E929 07:E919: 20 C8 C9  JSR sub_C9C8_prg_bankswitch_02
C - - - - - 0x01E92C 07:E91C: 68        PLA
C - - - - - 0x01E92D 07:E91D: A2 03     LDX #$03
C - - - - - 0x01E92F 07:E91F: 8E FF 60  STX ram_60FF
C - - - - - 0x01E932 07:E922: C9 05     CMP #$05
C - - - - - 0x01E934 07:E924: D0 05     BNE bra_E92B
C - - - - - 0x01E936 07:E926: A2 01     LDX #$01
C - - - - - 0x01E938 07:E928: 8E FF 60  STX ram_60FF
bra_E92B:
C - - - - - 0x01E93B 07:E92B: 0A        ASL
C - - - - - 0x01E93C 07:E92C: AA        TAX
C - - - - - 0x01E93D 07:E92D: AD C8 03  LDA ram_language
C - - - - - 0x01E940 07:E930: F0 D6     BEQ bra_E908_japanese
; if english
C - - - - - 0x01E942 07:E932: BD 22 BE  LDA tbl_0x007E32_professor_text_english,X
C - - - - - 0x01E945 07:E935: 8D BB 03  STA ram_text_pointer
C - - - - - 0x01E948 07:E938: E8        INX
C - - - - - 0x01E949 07:E939: BD 22 BE  LDA tbl_0x007E32_professor_text_english,X
C - - - - - 0x01E94C 07:E93C: 8D BC 03  STA ram_text_pointer + $01
loc_E93F:
C - - - - - 0x01E94F 07:E93F: 20 60 E9  JSR sub_E960
C - - - - - 0x01E952 07:E942: A9 6A     LDA #< tbl_0x007F7A
C - - - - - 0x01E954 07:E944: 85 00     STA ram_0000_t09_screen_data
C - - - - - 0x01E956 07:E946: A9 BF     LDA #> tbl_0x007F7A
C - - - - - 0x01E958 07:E948: 85 01     STA ram_0000_t09_screen_data + $01
C - - - - - 0x01E95A 07:E94A: 20 C2 C7  JSR sub_C7C2_prepare_screen_data
C - - - - - 0x01E95D 07:E94D: AD B8 03  LDA ram_03B8
C - - - - - 0x01E960 07:E950: C9 98     CMP #$98
C - - - - - 0x01E962 07:E952: 90 03     BCC bra_E957
C - - - - - 0x01E964 07:E954: 4C EB C9  JMP loc_C9EB_prg_bankswitch_0C
bra_E957:
C - - - - - 0x01E967 07:E957: 20 75 C1  JSR sub_C175_wait_for_nmi_to_end
C - - - - - 0x01E96A 07:E95A: 20 75 C1  JSR sub_C175_wait_for_nmi_to_end
C - - - - - 0x01E96D 07:E95D: 4C EB C9  JMP loc_C9EB_prg_bankswitch_0C



sub_E960:
C - - - - - 0x01E970 07:E960: A9 00     LDA #< ram_6000
C - - - - - 0x01E972 07:E962: 85 00     STA ram_0000_t17_data
C - - - - - 0x01E974 07:E964: A9 60     LDA #> ram_6000
C - - - - - 0x01E976 07:E966: 85 01     STA ram_0000_t17_data + $01
C - - - - - 0x01E978 07:E968: A9 00     LDA #$00
C - - - - - 0x01E97A 07:E96A: 8D BD 03  STA ram_03BD
C - - - - - 0x01E97D 07:E96D: 8D BE 03  STA ram_03BE
C - - - - - 0x01E980 07:E970: A8        TAY ; 00
C - - - - - 0x01E981 07:E971: AD C8 03  LDA ram_language
C - - - - - 0x01E984 07:E974: D0 05     BNE bra_E97B_english
; if japanese
- - - - - - 0x01E986 07:E976: A9 10     LDA #$10
- - - - - - 0x01E988 07:E978: 8D BD 03  STA ram_03BD
bra_E97B_english:
C - - - - - 0x01E98B 07:E97B: A9 1F     LDA #$1F
bra_E97D_loop:
C - - - - - 0x01E98D 07:E97D: 91 00     STA (ram_0000_t17_data),Y
C - - - - - 0x01E98F 07:E97F: C8        INY
C - - - - - 0x01E990 07:E980: C0 70     CPY #$70
C - - - - - 0x01E992 07:E982: D0 F9     BNE bra_E97D_loop
C - - - - - 0x01E994 07:E984: 60        RTS



bra_E985:
- - - - - - 0x01E995 07:E985: A5 2D     LDA ram_002D_btn
- - - - - - 0x01E997 07:E987: 29 03     AND #con_btns_AB
- - - - - - 0x01E999 07:E989: F0 03     BEQ bra_E98E
- - - - - - 0x01E99B 07:E98B: 20 60 E9  JSR sub_E960
bra_E98E:
- - - - - - 0x01E99E 07:E98E: A9 6A     LDA #< tbl_0x007F7A
- - - - - - 0x01E9A0 07:E990: 85 00     STA ram_0000_t09_screen_data
- - - - - - 0x01E9A2 07:E992: A9 BF     LDA #> tbl_0x007F7A
- - - - - - 0x01E9A4 07:E994: 85 01     STA ram_0000_t09_screen_data + $01
; bzk optimize, JMP
- - - - - - 0x01E9A6 07:E996: 20 C2 C7  JSR sub_C7C2_prepare_screen_data
- - - - - - 0x01E9A9 07:E999: 60        RTS
bra_E99A_RTS:
C - - - - - 0x01E9AA 07:E99A: 60        RTS



sub_E99B:
C - - - - - 0x01E9AB 07:E99B: 20 C8 C9  JSR sub_C9C8_prg_bankswitch_02
C - - - - - 0x01E9AE 07:E99E: AD BC 03  LDA ram_text_pointer + $01
C - - - - - 0x01E9B1 07:E9A1: F0 F7     BEQ bra_E99A_RTS
C - - - - - 0x01E9B3 07:E9A3: AD BE 03  LDA ram_03BE
C - - - - - 0x01E9B6 07:E9A6: D0 DD     BNE bra_E985
C - - - - - 0x01E9B8 07:E9A8: A5 36     LDA ram_frm_cnt_2
C - - - - - 0x01E9BA 07:E9AA: 2D FF 60  AND ram_60FF
C - - - - - 0x01E9BD 07:E9AD: D0 EB     BNE bra_E99A_RTS
C - - - - - 0x01E9BF 07:E9AF: AD BB 03  LDA ram_text_pointer
C - - - - - 0x01E9C2 07:E9B2: 85 00     STA ram_0000_t22_text_data
C - - - - - 0x01E9C4 07:E9B4: AD BC 03  LDA ram_text_pointer + $01
C - - - - - 0x01E9C7 07:E9B7: 85 01     STA ram_0000_t22_text_data + $01
C - - - - - 0x01E9C9 07:E9B9: AE BD 03  LDX ram_03BD
C - - - - - 0x01E9CC 07:E9BC: A0 00     LDY #$00
C - - - - - 0x01E9CE 07:E9BE: AD C8 03  LDA ram_language
C - - - - - 0x01E9D1 07:E9C1: D0 03     BNE bra_E9C6_english
; if japanese
- - - - - - 0x01E9D3 07:E9C3: 4C 65 EA  JMP loc_EA65_japanese
bra_E9C6_english:
loc_E9C6:
C - - - - - 0x01E9D6 07:E9C6: B1 00     LDA (ram_0000_t22_text_data),Y
C - - - - - 0x01E9D8 07:E9C8: D0 03     BNE bra_E9CD
C - - - - - 0x01E9DA 07:E9CA: 4C 58 EA  JMP loc_EA58_00_end_token
bra_E9CD:
C - - - - - 0x01E9DD 07:E9CD: C9 0D     CMP #$0D
C - - - - - 0x01E9DF 07:E9CF: F0 63     BEQ bra_EA34_0D_new_line
C - - - - - 0x01E9E1 07:E9D1: C9 FF     CMP #$FF
C - - - - - 0x01E9E3 07:E9D3: F0 76     BEQ bra_EA4B_FF
C - - - - - 0x01E9E5 07:E9D5: C9 20     CMP #$20
C - - - - - 0x01E9E7 07:E9D7: F0 14     BEQ bra_E9ED_20
C - - - - - 0x01E9E9 07:E9D9: C9 A0     CMP #$A0
C - - - - - 0x01E9EB 07:E9DB: 90 03     BCC bra_E9E0
- - - - - - 0x01E9ED 07:E9DD: 18        CLC
- - - - - - 0x01E9EE 07:E9DE: 69 20     ADC #$20
bra_E9E0:
C - - - - - 0x01E9F0 07:E9E0: 18        CLC
C - - - - - 0x01E9F1 07:E9E1: 6D C8 03  ADC ram_language
C - - - - - 0x01E9F4 07:E9E4: 9D 00 60  STA ram_6000,X
C - - - - - 0x01E9F7 07:E9E7: 8D D5 03  STA ram_03D5
C - - - - - 0x01E9FA 07:E9EA: EE D4 03  INC ram_03D4
bra_E9ED_20:
loc_E9ED:
C - - - - - 0x01E9FD 07:E9ED: C8        INY
C - - - - - 0x01E9FE 07:E9EE: B1 00     LDA (ram_0000_t22_text_data),Y
C - - - - - 0x01EA00 07:E9F0: C9 DE     CMP #$DE
C - - - - - 0x01EA02 07:E9F2: D0 03     BNE bra_E9F7
- - - - - - 0x01EA04 07:E9F4: 4C 84 EA  JMP loc_EA84_DE
bra_E9F7:
C - - - - - 0x01EA07 07:E9F7: C9 DF     CMP #$DF
C - - - - - 0x01EA09 07:E9F9: D0 03     BNE bra_E9FE
- - - - - - 0x01EA0B 07:E9FB: 4C 8C EA  JMP loc_EA8C_DF
bra_E9FE:
C - - - - - 0x01EA0E 07:E9FE: 88        DEY
loc_E9FF:
C - - - - - 0x01EA0F 07:E9FF: E8        INX
C - - - - - 0x01EA10 07:EA00: 8A        TXA
C - - - - - 0x01EA11 07:EA01: 29 0F     AND #$0F
C - - - - - 0x01EA13 07:EA03: D0 01     BNE bra_EA06
C - - - - - 0x01EA15 07:EA05: CA        DEX
bra_EA06:
loc_EA06:
C D 3 - - - 0x01EA16 07:EA06: A5 00     LDA ram_0000_t22_text_data
C - - - - - 0x01EA18 07:EA08: C0 01     CPY #$01
C - - - - - 0x01EA1A 07:EA0A: 69 01     ADC #< $0001
C - - - - - 0x01EA1C 07:EA0C: 8D BB 03  STA ram_text_pointer
C - - - - - 0x01EA1F 07:EA0F: A5 01     LDA ram_0000_t22_text_data + $01
C - - - - - 0x01EA21 07:EA11: 69 00     ADC #> $0001
C - - - - - 0x01EA23 07:EA13: 8D BC 03  STA ram_text_pointer + $01
C - - - - - 0x01EA26 07:EA16: 8E BD 03  STX ram_03BD
C - - - - - 0x01EA29 07:EA19: A9 52     LDA #< tbl_0x007F62
C - - - - - 0x01EA2B 07:EA1B: 85 00     STA ram_0000_t09_screen_data
C - - - - - 0x01EA2D 07:EA1D: A9 BF     LDA #> tbl_0x007F62
C - - - - - 0x01EA2F 07:EA1F: 85 01     STA ram_0000_t09_screen_data + $01
C - - - - - 0x01EA31 07:EA21: AD BB 03  LDA ram_text_pointer
C - - - - - 0x01EA34 07:EA24: 29 01     AND #$01
C - - - - - 0x01EA36 07:EA26: F0 08     BEQ bra_EA30
C - - - - - 0x01EA38 07:EA28: A9 5E     LDA #< tbl_0x007F6E
C - - - - - 0x01EA3A 07:EA2A: 85 00     STA ram_0000_t09_screen_data
C - - - - - 0x01EA3C 07:EA2C: A9 BF     LDA #> tbl_0x007F6E
C - - - - - 0x01EA3E 07:EA2E: 85 01     STA ram_0000_t09_screen_data + $01
bra_EA30:
; bzk optimize, JMP
C - - - - - 0x01EA40 07:EA30: 20 C2 C7  JSR sub_C7C2_prepare_screen_data
bra_EA33_RTS:
loc_EA33_RTS:   ; bzk optimize
C D 3 - - - 0x01EA43 07:EA33: 60        RTS
bra_EA34_0D_new_line:
C - - - - - 0x01EA44 07:EA34: 8A        TXA
C - - - - - 0x01EA45 07:EA35: 29 F0     AND #$F0
C - - - - - 0x01EA47 07:EA37: 18        CLC
C - - - - - 0x01EA48 07:EA38: 69 10     ADC #$10
C - - - - - 0x01EA4A 07:EA3A: AA        TAX
C - - - - - 0x01EA4B 07:EA3B: AD C8 03  LDA ram_language
C - - - - - 0x01EA4E 07:EA3E: F0 03     BEQ bra_EA43_janapese
; if english
C - - - - - 0x01EA50 07:EA40: 4C 06 EA  JMP loc_EA06
bra_EA43_janapese:
- - - - - - 0x01EA53 07:EA43: 8A        TXA
- - - - - - 0x01EA54 07:EA44: 18        CLC
- - - - - - 0x01EA55 07:EA45: 69 10     ADC #$10
- - - - - - 0x01EA57 07:EA47: AA        TAX
- - - - - - 0x01EA58 07:EA48: 4C 06 EA  JMP loc_EA06
bra_EA4B_FF:
- - - - - - 0x01EA5B 07:EA4B: A9 10     LDA #$10
- - - - - - 0x01EA5D 07:EA4D: 8D 67 60  STA ram_6067
- - - - - - 0x01EA60 07:EA50: A9 01     LDA #$01
- - - - - - 0x01EA62 07:EA52: 8D BE 03  STA ram_03BE
- - - - - - 0x01EA65 07:EA55: 4C 06 EA  JMP loc_EA06



loc_EA58_00_end_token:
C D 3 - - - 0x01EA68 07:EA58: AD B8 03  LDA ram_03B8
C - - - - - 0x01EA6B 07:EA5B: C9 FE     CMP #$FE
C - - - - - 0x01EA6D 07:EA5D: D0 D4     BNE bra_EA33_RTS
; FE
C - - - - - 0x01EA6F 07:EA5F: CE B8 03  DEC ram_03B8
C - - - - - 0x01EA72 07:EA62: 4C 33 EA  JMP loc_EA33_RTS



loc_EA65_japanese:
- - - - - - 0x01EA75 07:EA65: B1 00     LDA (ram_0000_t22_text_data),Y
- - - - - - 0x01EA77 07:EA67: C9 30     CMP #$30
- - - - - - 0x01EA79 07:EA69: B0 03     BCS bra_EA6E
; 00-2F
- - - - - - 0x01EA7B 07:EA6B: 4C C6 E9  JMP loc_E9C6
bra_EA6E:
- - - - - - 0x01EA7E 07:EA6E: C9 3A     CMP #$3A
- - - - - - 0x01EA80 07:EA70: 90 03     BCC bra_EA75
; 30-39
- - - - - - 0x01EA82 07:EA72: 4C C6 E9  JMP loc_E9C6
bra_EA75:
; 3A+
- - - - - - 0x01EA85 07:EA75: 18        CLC
- - - - - - 0x01EA86 07:EA76: 69 80     ADC #$80
- - - - - - 0x01EA88 07:EA78: 9D 00 60  STA ram_6000,X
- - - - - - 0x01EA8B 07:EA7B: 8D D5 03  STA ram_03D5
- - - - - - 0x01EA8E 07:EA7E: EE D4 03  INC ram_03D4
- - - - - - 0x01EA91 07:EA81: 4C ED E9  JMP loc_E9ED



loc_EA84_DE:
- - - - - - 0x01EA94 07:EA84: A9 FE     LDA #$FE
- - - - - - 0x01EA96 07:EA86: 9D F0 5F  STA $5FF0,X ; !!!
- - - - - - 0x01EA99 07:EA89: 4C FF E9  JMP loc_E9FF



loc_EA8C_DF:
- - - - - - 0x01EA9C 07:EA8C: A9 FF     LDA #$FF
- - - - - - 0x01EA9E 07:EA8E: 9D F0 5F  STA $5FF0,X ; !!!
- - - - - - 0x01EAA1 07:EA91: 4C FF E9  JMP loc_E9FF



tbl_EA94_sound:
- D 3 - - - 0x01EAA4 07:EA94: 09        .byte con_sfx_09   ; 00 
- D 3 - - - 0x01EAA5 07:EA95: 18        .byte con_sfx_18   ; 01 
- D 3 - - - 0x01EAA6 07:EA96: 09        .byte con_sfx_09   ; 02 
- D 3 - - - 0x01EAA7 07:EA97: 18        .byte con_sfx_18   ; 03 



sub_EA98:
C - - - - - 0x01EAA8 07:EA98: A9 04     LDA #$04
C - - - - - 0x01EAAA 07:EA9A: 85 73     STA ram_0073
C - - - - - 0x01EAAC 07:EA9C: A5 3A     LDA ram_003A
C - - - - - 0x01EAAE 07:EA9E: 85 2B     STA ram_prg_bank
C - - - - - 0x01EAB0 07:EAA0: 20 0C C9  JSR sub_C90C_prg_bankswitch
C - - - - - 0x01EAB3 07:EAA3: A9 00     LDA #$00
C - - - - - 0x01EAB5 07:EAA5: 8D 06 03  STA ram_0306
C - - - - - 0x01EAB8 07:EAA8: 8D 00 03  STA ram_0300
C - - - - - 0x01EABB 07:EAAB: 8D 01 03  STA ram_0301
C - - - - - 0x01EABE 07:EAAE: 8D 1E 04  STA ram_041E
C - - - - - 0x01EAC1 07:EAB1: AD 42 06  LDA ram_obj_pos_X_lo
C - - - - - 0x01EAC4 07:EAB4: 38        SEC
C - - - - - 0x01EAC5 07:EAB5: E9 70     SBC #< $0070
C - - - - - 0x01EAC7 07:EAB7: 85 00     STA ram_0000_t83_lo
C - - - - - 0x01EAC9 07:EAB9: AD 58 06  LDA ram_obj_pos_X_hi
C - - - - - 0x01EACC 07:EABC: E9 00     SBC #> $0070
C - - - - - 0x01EACE 07:EABE: 85 01     STA ram_0001_t10_hi
C - - - - - 0x01EAD0 07:EAC0: 20 41 EC  JSR sub_EC41
C - - - - - 0x01EAD3 07:EAC3: A5 01     LDA ram_0001_t10_hi
C - - - - - 0x01EAD5 07:EAC5: C9 80     CMP #$80
C - - - - - 0x01EAD7 07:EAC7: 66 01     ROR ram_0001_t10_hi
C - - - - - 0x01EAD9 07:EAC9: 66 00     ROR ram_0000_t83_lo
C - - - - - 0x01EADB 07:EACB: C9 80     CMP #$80
C - - - - - 0x01EADD 07:EACD: 66 01     ROR ram_0001_t10_hi
C - - - - - 0x01EADF 07:EACF: 66 00     ROR ram_0000_t83_lo
C - - - - - 0x01EAE1 07:EAD1: C9 80     CMP #$80
C - - - - - 0x01EAE3 07:EAD3: 66 01     ROR ram_0001_t10_hi
C - - - - - 0x01EAE5 07:EAD5: 66 00     ROR ram_0000_t83_lo
C - - - - - 0x01EAE7 07:EAD7: A5 00     LDA ram_0000_t83_lo
C - - - - - 0x01EAE9 07:EAD9: 29 FE     AND #$FE
C - - - - - 0x01EAEB 07:EADB: 18        CLC
C - - - - - 0x01EAEC 07:EADC: 69 F0     ADC #< $FFF0
C - - - - - 0x01EAEE 07:EADE: 8D 00 03  STA ram_0300
C - - - - - 0x01EAF1 07:EAE1: A5 01     LDA ram_0001_t10_hi
C - - - - - 0x01EAF3 07:EAE3: 69 FF     ADC #> $FFF0
C - - - - - 0x01EAF5 07:EAE5: 8D 01 03  STA ram_0301
C - - - - - 0x01EAF8 07:EAE8: A9 20     LDA #$20
C - - - - - 0x01EAFA 07:EAEA: 85 0E     STA ram_000E_t03
bra_EAEC_loop:
C - - - - - 0x01EAFC 07:EAEC: AD 00 03  LDA ram_0300
C - - - - - 0x01EAFF 07:EAEF: 85 00     STA ram_0000_t04_data
C - - - - - 0x01EB01 07:EAF1: 18        CLC
C - - - - - 0x01EB02 07:EAF2: 69 02     ADC #< $0002
C - - - - - 0x01EB04 07:EAF4: 8D 00 03  STA ram_0300
C - - - - - 0x01EB07 07:EAF7: AD 01 03  LDA ram_0301
C - - - - - 0x01EB0A 07:EAFA: 85 01     STA ram_0000_t04_data + $01
C - - - - - 0x01EB0C 07:EAFC: 69 00     ADC #> $0002
C - - - - - 0x01EB0E 07:EAFE: 8D 01 03  STA ram_0301
C - - - - - 0x01EB11 07:EB01: 20 B8 EF  JSR sub_EFB8
C - - - - - 0x01EB14 07:EB04: C6 0E     DEC ram_000E_t03
C - - - - - 0x01EB16 07:EB06: D0 E4     BNE bra_EAEC_loop
C - - - - - 0x01EB18 07:EB08: AD 42 06  LDA ram_obj_pos_X_lo
C - - - - - 0x01EB1B 07:EB0B: 38        SEC
C - - - - - 0x01EB1C 07:EB0C: E9 70     SBC #< $0070
C - - - - - 0x01EB1E 07:EB0E: 85 00     STA ram_0000_t83_lo
C - - - - - 0x01EB20 07:EB10: AD 58 06  LDA ram_obj_pos_X_hi
C - - - - - 0x01EB23 07:EB13: E9 00     SBC #> $0070
C - - - - - 0x01EB25 07:EB15: 85 01     STA ram_0001_t10_hi
C - - - - - 0x01EB27 07:EB17: 20 41 EC  JSR sub_EC41
C - - - - - 0x01EB2A 07:EB1A: A5 00     LDA ram_0000_t83_lo
C - - - - - 0x01EB2C 07:EB1C: 85 B9     STA ram_cam_pos_X_lo
C - - - - - 0x01EB2E 07:EB1E: A5 01     LDA ram_0001_t10_hi
C - - - - - 0x01EB30 07:EB20: 85 B7     STA ram_cam_pos_X_hi
C - - - - - 0x01EB32 07:EB22: A5 00     LDA ram_0000_t83_lo
C - - - - - 0x01EB34 07:EB24: 18        CLC
C - - - - - 0x01EB35 07:EB25: 69 F8     ADC #< $00F8
C - - - - - 0x01EB37 07:EB27: 85 14     STA ram_0014
C - - - - - 0x01EB39 07:EB29: A5 01     LDA ram_0001_t10_hi
C - - - - - 0x01EB3B 07:EB2B: 69 00     ADC #> $00F8
C - - - - - 0x01EB3D 07:EB2D: 85 16     STA ram_0016
C - - - - - 0x01EB3F 07:EB2F: A5 01     LDA ram_0001_t10_hi
C - - - - - 0x01EB41 07:EB31: C9 80     CMP #$80
C - - - - - 0x01EB43 07:EB33: 66 01     ROR ram_0001_t10_hi
C - - - - - 0x01EB45 07:EB35: 66 00     ROR ram_0000_t83_lo
C - - - - - 0x01EB47 07:EB37: C9 80     CMP #$80
C - - - - - 0x01EB49 07:EB39: 66 01     ROR ram_0001_t10_hi
C - - - - - 0x01EB4B 07:EB3B: 66 00     ROR ram_0000_t83_lo
C - - - - - 0x01EB4D 07:EB3D: C9 80     CMP #$80
C - - - - - 0x01EB4F 07:EB3F: 66 01     ROR ram_0001_t10_hi
C - - - - - 0x01EB51 07:EB41: 66 00     ROR ram_0000_t83_lo
C - - - - - 0x01EB53 07:EB43: A5 00     LDA ram_0000_t83_lo
C - - - - - 0x01EB55 07:EB45: 38        SEC
C - - - - - 0x01EB56 07:EB46: E9 39     SBC #< $0039
C - - - - - 0x01EB58 07:EB48: 8D 02 03  STA ram_0302
C - - - - - 0x01EB5B 07:EB4B: A5 01     LDA ram_0001_t10_hi
C - - - - - 0x01EB5D 07:EB4D: E9 00     SBC #> $0039
C - - - - - 0x01EB5F 07:EB4F: 8D 03 03  STA ram_0303
C - - - - - 0x01EB62 07:EB52: AD 02 03  LDA ram_0302
C - - - - - 0x01EB65 07:EB55: 29 FE     AND #$FE
C - - - - - 0x01EB67 07:EB57: 8D 02 03  STA ram_0302
C - - - - - 0x01EB6A 07:EB5A: A5 00     LDA ram_0000_t83_lo
C - - - - - 0x01EB6C 07:EB5C: 38        SEC
C - - - - - 0x01EB6D 07:EB5D: E9 38     SBC #$38
C - - - - - 0x01EB6F 07:EB5F: 29 1F     AND #$1F
C - - - - - 0x01EB71 07:EB61: 8D 06 03  STA ram_0306
C - - - - - 0x01EB74 07:EB64: A5 00     LDA ram_0000_t83_lo
C - - - - - 0x01EB76 07:EB66: 38        SEC
C - - - - - 0x01EB77 07:EB67: E9 18     SBC #< $0018
C - - - - - 0x01EB79 07:EB69: 8D 00 03  STA ram_0300
C - - - - - 0x01EB7C 07:EB6C: A5 01     LDA ram_0001_t10_hi
C - - - - - 0x01EB7E 07:EB6E: E9 00     SBC #> $0018
C - - - - - 0x01EB80 07:EB70: 8D 01 03  STA ram_0301
C - - - - - 0x01EB83 07:EB73: AD 00 03  LDA ram_0300
C - - - - - 0x01EB86 07:EB76: 29 FE     AND #$FE
C - - - - - 0x01EB88 07:EB78: 8D 00 03  STA ram_0300
C - - - - - 0x01EB8B 07:EB7B: A9 38     LDA #$38
C - - - - - 0x01EB8D 07:EB7D: 85 0E     STA ram_000E_t02
bra_EB7F_loop:
C - - - - - 0x01EB8F 07:EB7F: 20 7B ED  JSR sub_ED7B
C - - - - - 0x01EB92 07:EB82: C6 0E     DEC ram_000E_t02
C - - - - - 0x01EB94 07:EB84: D0 F9     BNE bra_EB7F_loop
C - - - - - 0x01EB96 07:EB86: A9 A1     LDA #< tbl_EBA1
C - - - - - 0x01EB98 07:EB88: 85 00     STA ram_0000_t09_screen_data
C - - - - - 0x01EB9A 07:EB8A: A9 EB     LDA #> tbl_EBA1
C - - - - - 0x01EB9C 07:EB8C: 85 01     STA ram_0000_t09_screen_data + $01
C - - - - - 0x01EB9E 07:EB8E: 20 C2 C7  JSR sub_C7C2_prepare_screen_data
C - - - - - 0x01EBA1 07:EB91: A9 AD     LDA #< tbl_EBAD
C - - - - - 0x01EBA3 07:EB93: 85 00     STA ram_0000_t09_screen_data
C - - - - - 0x01EBA5 07:EB95: A9 EB     LDA #> tbl_EBAD
C - - - - - 0x01EBA7 07:EB97: 85 01     STA ram_0000_t09_screen_data + $01
C - - - - - 0x01EBA9 07:EB99: 20 C2 C7  JSR sub_C7C2_prepare_screen_data
C - - - - - 0x01EBAC 07:EB9C: A9 01     LDA #$01
C - - - - - 0x01EBAE 07:EB9E: 85 73     STA ram_0073
C - - - - - 0x01EBB0 07:EBA0: 60        RTS



tbl_EBA1:
- D 3 - I - 0x01EBB1 07:EBA1: 01        .byte $01   ; ??? 001
- D 3 - I - 0x01EBB2 07:EBA2: 00        .byte con_prg_bank + $00   ; 
- D 3 - I - 0x01EBB3 07:EBA3: 28        .byte $28   ; 
- D 3 - I - 0x01EBB4 07:EBA4: 01        .byte $01   ; 
- D 3 - I - 0x01EBB5 07:EBA5: D8 23     .word $23D8 ; ppu address
- D 3 - I - 0x01EBB7 07:EBA7: 00        .byte $00   ; 
- D 3 - I - 0x01EBB8 07:EBA8: 20        .byte $20   ; 
- D 3 - I - 0x01EBB9 07:EBA9: 00        .byte $00   ; 
- D 3 - I - 0x01EBBA 07:EBAA: 20        .byte $20   ; 
- D 3 - I - 0x01EBBB 07:EBAB: 09 03     .word ram_0309_buffer ; 



tbl_EBAD:
- D 3 - I - 0x01EBBD 07:EBAD: 01        .byte $01   ; ??? 001
- D 3 - I - 0x01EBBE 07:EBAE: 00        .byte con_prg_bank + $00   ; 
- D 3 - I - 0x01EBBF 07:EBAF: 40        .byte $40   ; 
- D 3 - I - 0x01EBC0 07:EBB0: 01        .byte $01   ; 
- D 3 - I - 0x01EBC1 07:EBB1: C0 2B     .word $2BC0 ; ppu address
- D 3 - I - 0x01EBC3 07:EBB3: 00        .byte $00   ; 
- D 3 - I - 0x01EBC4 07:EBB4: 20        .byte $20   ; 
- D 3 - I - 0x01EBC5 07:EBB5: 00        .byte $00   ; 
- D 3 - I - 0x01EBC6 07:EBB6: 20        .byte $20   ; 
- D 3 - I - 0x01EBC7 07:EBB7: 31 03     .word ram_0309_buffer + $28 ; 



sub_EBB9:
; bzk optimize, single JSR to here
C - - - - - 0x01EBC9 07:EBB9: A5 3A     LDA ram_003A
C - - - - - 0x01EBCB 07:EBBB: 85 2B     STA ram_prg_bank
C - - - - - 0x01EBCD 07:EBBD: 20 0C C9  JSR sub_C90C_prg_bankswitch
C - - - - - 0x01EBD0 07:EBC0: 20 29 EC  JSR sub_EC29
C - - - - - 0x01EBD3 07:EBC3: 20 05 EC  JSR sub_EC05
; bzk optimize, JMP
C - - - - - 0x01EBD6 07:EBC6: 20 CA EB  JSR sub_EBCA
C - - - - - 0x01EBD9 07:EBC9: 60        RTS



sub_EBCA:
; bzk optimize, single JSR to here
C - - - - - 0x01EBDA 07:EBCA: A5 00     LDA ram_0000_t83_lo
C - - - - - 0x01EBDC 07:EBCC: 38        SEC
C - - - - - 0x01EBDD 07:EBCD: E5 B9     SBC ram_cam_pos_X_lo
C - - - - - 0x01EBDF 07:EBCF: 85 05     STA ram_0005_temp
C - - - - - 0x01EBE1 07:EBD1: A5 01     LDA ram_0001_t10_hi
C - - - - - 0x01EBE3 07:EBD3: E5 B7     SBC ram_cam_pos_X_hi
C - - - - - 0x01EBE5 07:EBD5: 85 06     STA ram_0006_temp
C - - - - - 0x01EBE7 07:EBD7: A5 05     LDA ram_0005_temp
C - - - - - 0x01EBE9 07:EBD9: 18        CLC
C - - - - - 0x01EBEA 07:EBDA: 65 14     ADC ram_0014
C - - - - - 0x01EBEC 07:EBDC: 85 14     STA ram_0014
C - - - - - 0x01EBEE 07:EBDE: A5 06     LDA ram_0006_temp
C - - - - - 0x01EBF0 07:EBE0: 65 16     ADC ram_0016
C - - - - - 0x01EBF2 07:EBE2: 85 16     STA ram_0016
C - - - - - 0x01EBF4 07:EBE4: A5 B9     LDA ram_cam_pos_X_lo
C - - - - - 0x01EBF6 07:EBE6: 29 F8     AND #$F8
C - - - - - 0x01EBF8 07:EBE8: 85 04     STA ram_0004_temp
C - - - - - 0x01EBFA 07:EBEA: A5 01     LDA ram_0001_t10_hi
C - - - - - 0x01EBFC 07:EBEC: 85 B7     STA ram_cam_pos_X_hi
C - - - - - 0x01EBFE 07:EBEE: A5 00     LDA ram_0000_t83_lo
C - - - - - 0x01EC00 07:EBF0: 85 B9     STA ram_cam_pos_X_lo
C - - - - - 0x01EC02 07:EBF2: A5 00     LDA ram_0000_t83_lo
C - - - - - 0x01EC04 07:EBF4: 29 F8     AND #$F8
C - - - - - 0x01EC06 07:EBF6: C5 04     CMP ram_0004_temp
C - - - - - 0x01EC08 07:EBF8: F0 0A     BEQ bra_EC04_RTS
C - - - - - 0x01EC0A 07:EBFA: A5 06     LDA ram_0006_temp
C - - - - - 0x01EC0C 07:EBFC: 10 03     BPL bra_EC01
C - - - - - 0x01EC0E 07:EBFE: 4C D7 ED  JMP loc_EDD7
bra_EC01:
C - - - - - 0x01EC11 07:EC01: 4C 7B ED  JMP loc_ED7B
bra_EC04_RTS:
C - - - - - 0x01EC14 07:EC04: 60        RTS



sub_EC05:
; bzk optimize, single JSR to here
C - - - - - 0x01EC15 07:EC05: A5 02     LDA ram_0002_temp
C - - - - - 0x01EC17 07:EC07: 38        SEC
C - - - - - 0x01EC18 07:EC08: E9 90     SBC #$90
C - - - - - 0x01EC1A 07:EC0A: B0 0E     BCS bra_EC1A
C - - - - - 0x01EC1C 07:EC0C: A5 02     LDA ram_0002_temp
C - - - - - 0x01EC1E 07:EC0E: 18        CLC
C - - - - - 0x01EC1F 07:EC0F: 69 60     ADC #$60
C - - - - - 0x01EC21 07:EC11: 85 18     STA ram_0018
C - - - - - 0x01EC23 07:EC13: A9 00     LDA #$00
C - - - - - 0x01EC25 07:EC15: 85 1A     STA ram_001A
C - - - - - 0x01EC27 07:EC17: 4C 20 EC  JMP loc_EC20
bra_EC1A:
C - - - - - 0x01EC2A 07:EC1A: 85 18     STA ram_0018
C - - - - - 0x01EC2C 07:EC1C: A9 01     LDA #$01
C - - - - - 0x01EC2E 07:EC1E: 85 1A     STA ram_001A
loc_EC20:
C D 3 - - - 0x01EC30 07:EC20: A5 02     LDA ram_0002_temp
C - - - - - 0x01EC32 07:EC22: 85 BA     STA ram_cam_pos_Y_lo
C - - - - - 0x01EC34 07:EC24: A5 03     LDA ram_0003_temp
C - - - - - 0x01EC36 07:EC26: 85 B8     STA ram_cam_pos_Y_hi
C - - - - - 0x01EC38 07:EC28: 60        RTS



sub_EC29:
; bzk optimize, single JSR to here
C - - - - - 0x01EC39 07:EC29: AD 42 06  LDA ram_obj_pos_X_lo
C - - - - - 0x01EC3C 07:EC2C: 38        SEC
C - - - - - 0x01EC3D 07:EC2D: E9 70     SBC #< $0070
C - - - - - 0x01EC3F 07:EC2F: 85 00     STA ram_0000_t83_lo
C - - - - - 0x01EC41 07:EC31: AD 58 06  LDA ram_obj_pos_X_hi
C - - - - - 0x01EC44 07:EC34: E9 00     SBC #> $0070
C - - - - - 0x01EC46 07:EC36: 85 01     STA ram_0001_t10_hi
C - - - - - 0x01EC48 07:EC38: A5 33     LDA ram_round
C - - - - - 0x01EC4A 07:EC3A: C9 13     CMP #$13
C - - - - - 0x01EC4C 07:EC3C: D0 03     BNE bra_EC41
C - - - - - 0x01EC4E 07:EC3E: 4C DF EC  JMP loc_ECDF_round_in_space
bra_EC41:
sub_EC41:
loc_EC41:
C D 3 - - - 0x01EC51 07:EC41: AD 84 06  LDA ram_obj_pos_Y_lo
C - - - - - 0x01EC54 07:EC44: 38        SEC
C - - - - - 0x01EC55 07:EC45: E9 60     SBC #< $0060
C - - - - - 0x01EC57 07:EC47: 85 02     STA ram_0002_temp
C - - - - - 0x01EC59 07:EC49: AD 9A 06  LDA ram_obj_pos_Y_hi
C - - - - - 0x01EC5C 07:EC4C: E9 00     SBC #> $0060
C - - - - - 0x01EC5E 07:EC4E: 85 03     STA ram_0003_temp
C - - - - - 0x01EC60 07:EC50: A5 02     LDA ram_0002_temp
C - - - - - 0x01EC62 07:EC52: 38        SEC
C - - - - - 0x01EC63 07:EC53: E5 BA     SBC ram_cam_pos_Y_lo
C - - - - - 0x01EC65 07:EC55: 85 02     STA ram_0002_temp
C - - - - - 0x01EC67 07:EC57: A5 03     LDA ram_0003_temp
C - - - - - 0x01EC69 07:EC59: E5 B8     SBC ram_cam_pos_Y_hi
C - - - - - 0x01EC6B 07:EC5B: 85 03     STA ram_0003_temp
C - - - - - 0x01EC6D 07:EC5D: 30 14     BMI bra_EC73
C - - - - - 0x01EC6F 07:EC5F: A5 02     LDA ram_0002_temp
C - - - - - 0x01EC71 07:EC61: C9 01     CMP #$01
C - - - - - 0x01EC73 07:EC63: 90 22     BCC bra_EC87
C - - - - - 0x01EC75 07:EC65: 38        SEC
C - - - - - 0x01EC76 07:EC66: E9 01     SBC #< $0001
C - - - - - 0x01EC78 07:EC68: 85 02     STA ram_0002_temp
C - - - - - 0x01EC7A 07:EC6A: A5 03     LDA ram_0003_temp
C - - - - - 0x01EC7C 07:EC6C: E9 00     SBC #> $0001
C - - - - - 0x01EC7E 07:EC6E: 85 03     STA ram_0003_temp
C - - - - - 0x01EC80 07:EC70: 4C 8D EC  JMP loc_EC8D
bra_EC73:
C - - - - - 0x01EC83 07:EC73: A5 02     LDA ram_0002_temp
C - - - - - 0x01EC85 07:EC75: C9 D0     CMP #$D0
C - - - - - 0x01EC87 07:EC77: B0 0E     BCS bra_EC87
C - - - - - 0x01EC89 07:EC79: 18        CLC
C - - - - - 0x01EC8A 07:EC7A: 69 30     ADC #< $0030
C - - - - - 0x01EC8C 07:EC7C: 85 02     STA ram_0002_temp
C - - - - - 0x01EC8E 07:EC7E: A5 03     LDA ram_0003_temp
C - - - - - 0x01EC90 07:EC80: 69 00     ADC #> $0030
C - - - - - 0x01EC92 07:EC82: 85 03     STA ram_0003_temp
C - - - - - 0x01EC94 07:EC84: 4C 8D EC  JMP loc_EC8D
bra_EC87:
C - - - - - 0x01EC97 07:EC87: A9 00     LDA #$00
C - - - - - 0x01EC99 07:EC89: 85 02     STA ram_0002_temp
C - - - - - 0x01EC9B 07:EC8B: 85 03     STA ram_0003_temp
loc_EC8D:
C D 3 - - - 0x01EC9D 07:EC8D: A5 BA     LDA ram_cam_pos_Y_lo
C - - - - - 0x01EC9F 07:EC8F: 18        CLC
C - - - - - 0x01ECA0 07:EC90: 65 02     ADC ram_0002_temp
C - - - - - 0x01ECA2 07:EC92: 85 02     STA ram_0002_temp
C - - - - - 0x01ECA4 07:EC94: A5 B8     LDA ram_cam_pos_Y_hi
C - - - - - 0x01ECA6 07:EC96: 65 03     ADC ram_0003_temp
C - - - - - 0x01ECA8 07:EC98: 85 03     STA ram_0003_temp
C - - - - - 0x01ECAA 07:EC9A: A5 01     LDA ram_0001_t10_hi
C - - - - - 0x01ECAC 07:EC9C: 10 06     BPL bra_ECA4
C - - - - - 0x01ECAE 07:EC9E: A9 00     LDA #$00
C - - - - - 0x01ECB0 07:ECA0: 85 00     STA ram_0000_t83_lo
C - - - - - 0x01ECB2 07:ECA2: 85 01     STA ram_0001_t10_hi
bra_ECA4:
C - - - - - 0x01ECB4 07:ECA4: A9 00     LDA #$00
C - - - - - 0x01ECB6 07:ECA6: 8D 1E 04  STA ram_041E
C - - - - - 0x01ECB9 07:ECA9: A5 00     LDA ram_0000_t83_lo
C - - - - - 0x01ECBB 07:ECAB: 38        SEC
C - - - - - 0x01ECBC 07:ECAC: E5 BD     SBC ram_00BD
C - - - - - 0x01ECBE 07:ECAE: A5 01     LDA ram_0001_t10_hi
C - - - - - 0x01ECC0 07:ECB0: E5 BB     SBC ram_00BB
C - - - - - 0x01ECC2 07:ECB2: 90 0D     BCC bra_ECC1
C - - - - - 0x01ECC4 07:ECB4: A9 01     LDA #$01
C - - - - - 0x01ECC6 07:ECB6: 8D 1E 04  STA ram_041E
C - - - - - 0x01ECC9 07:ECB9: A5 BB     LDA ram_00BB
C - - - - - 0x01ECCB 07:ECBB: 85 01     STA ram_0001_t10_hi
C - - - - - 0x01ECCD 07:ECBD: A5 BD     LDA ram_00BD
C - - - - - 0x01ECCF 07:ECBF: 85 00     STA ram_0000_t83_lo
bra_ECC1:
C - - - - - 0x01ECD1 07:ECC1: A5 03     LDA ram_0003_temp
C - - - - - 0x01ECD3 07:ECC3: 10 06     BPL bra_ECCB
C - - - - - 0x01ECD5 07:ECC5: A9 00     LDA #$00
C - - - - - 0x01ECD7 07:ECC7: 85 02     STA ram_0002_temp
C - - - - - 0x01ECD9 07:ECC9: 85 03     STA ram_0003_temp
bra_ECCB:
C - - - - - 0x01ECDB 07:ECCB: A5 BE     LDA ram_00BE
C - - - - - 0x01ECDD 07:ECCD: 38        SEC
C - - - - - 0x01ECDE 07:ECCE: E5 02     SBC ram_0002_temp
C - - - - - 0x01ECE0 07:ECD0: A5 BC     LDA ram_00BC
C - - - - - 0x01ECE2 07:ECD2: E5 03     SBC ram_0003_temp
C - - - - - 0x01ECE4 07:ECD4: B0 08     BCS bra_ECDE_RTS
C - - - - - 0x01ECE6 07:ECD6: A5 BE     LDA ram_00BE
C - - - - - 0x01ECE8 07:ECD8: 85 02     STA ram_0002_temp
C - - - - - 0x01ECEA 07:ECDA: A5 BC     LDA ram_00BC
C - - - - - 0x01ECEC 07:ECDC: 85 03     STA ram_0003_temp
bra_ECDE_RTS:
C - - - - - 0x01ECEE 07:ECDE: 60        RTS



loc_ECDF_round_in_space:
; round 8-1
C D 3 - - - 0x01ECEF 07:ECDF: A9 00     LDA #$00
C - - - - - 0x01ECF1 07:ECE1: 85 02     STA ram_0002_temp
C - - - - - 0x01ECF3 07:ECE3: A5 36     LDA ram_frm_cnt_2
C - - - - - 0x01ECF5 07:ECE5: 29 03     AND #$03
C - - - - - 0x01ECF7 07:ECE7: F0 04     BEQ bra_ECED
C - - - - - 0x01ECF9 07:ECE9: A9 01     LDA #$01
C - - - - - 0x01ECFB 07:ECEB: 85 02     STA ram_0002_temp
bra_ECED:
C - - - - - 0x01ECFD 07:ECED: A5 B9     LDA ram_cam_pos_X_lo
C - - - - - 0x01ECFF 07:ECEF: 18        CLC
C - - - - - 0x01ED00 07:ECF0: 65 02     ADC ram_0002_temp
C - - - - - 0x01ED02 07:ECF2: 85 00     STA ram_0000_t83_lo
C - - - - - 0x01ED04 07:ECF4: A5 B7     LDA ram_cam_pos_X_hi
C - - - - - 0x01ED06 07:ECF6: 69 00     ADC #$00
C - - - - - 0x01ED08 07:ECF8: 85 01     STA ram_0001_t10_hi
C - - - - - 0x01ED0A 07:ECFA: AD 42 06  LDA ram_obj_pos_X_lo
C - - - - - 0x01ED0D 07:ECFD: 18        CLC
C - - - - - 0x01ED0E 07:ECFE: 65 02     ADC ram_0002_temp
C - - - - - 0x01ED10 07:ED00: 8D 42 06  STA ram_obj_pos_X_lo
C - - - - - 0x01ED13 07:ED03: AD 58 06  LDA ram_obj_pos_X_hi
C - - - - - 0x01ED16 07:ED06: 69 00     ADC #$00
C - - - - - 0x01ED18 07:ED08: 8D 58 06  STA ram_obj_pos_X_hi
C - - - - - 0x01ED1B 07:ED0B: AD 43 06  LDA ram_obj_pos_X_lo + $01
C - - - - - 0x01ED1E 07:ED0E: 18        CLC
C - - - - - 0x01ED1F 07:ED0F: 65 02     ADC ram_0002_temp
C - - - - - 0x01ED21 07:ED11: 8D 43 06  STA ram_obj_pos_X_lo + $01
C - - - - - 0x01ED24 07:ED14: AD 59 06  LDA ram_obj_pos_X_hi + $01
C - - - - - 0x01ED27 07:ED17: 69 00     ADC #$00
C - - - - - 0x01ED29 07:ED19: 8D 59 06  STA ram_obj_pos_X_hi + $01
C - - - - - 0x01ED2C 07:ED1C: AD 44 06  LDA ram_obj_pos_X_lo + $02
C - - - - - 0x01ED2F 07:ED1F: 18        CLC
C - - - - - 0x01ED30 07:ED20: 65 02     ADC ram_0002_temp
C - - - - - 0x01ED32 07:ED22: 8D 44 06  STA ram_obj_pos_X_lo + $02
C - - - - - 0x01ED35 07:ED25: AD 5A 06  LDA ram_obj_pos_X_hi + $02
C - - - - - 0x01ED38 07:ED28: 69 00     ADC #$00
C - - - - - 0x01ED3A 07:ED2A: 8D 5A 06  STA ram_obj_pos_X_hi + $02
C - - - - - 0x01ED3D 07:ED2D: AD 45 06  LDA ram_obj_pos_X_lo + $03
C - - - - - 0x01ED40 07:ED30: 18        CLC
C - - - - - 0x01ED41 07:ED31: 65 02     ADC ram_0002_temp
C - - - - - 0x01ED43 07:ED33: 8D 45 06  STA ram_obj_pos_X_lo + $03
C - - - - - 0x01ED46 07:ED36: AD 5B 06  LDA ram_obj_pos_X_hi + $03
C - - - - - 0x01ED49 07:ED39: 69 00     ADC #$00
C - - - - - 0x01ED4B 07:ED3B: 8D 5B 06  STA ram_obj_pos_X_hi + $03
C - - - - - 0x01ED4E 07:ED3E: AD 1E 04  LDA ram_041E
C - - - - - 0x01ED51 07:ED41: F0 03     BEQ bra_ED46
C - - - - - 0x01ED53 07:ED43: 4C 41 EC  JMP loc_EC41
bra_ED46:
C - - - - - 0x01ED56 07:ED46: AD 42 06  LDA ram_obj_pos_X_lo
C - - - - - 0x01ED59 07:ED49: 38        SEC
C - - - - - 0x01ED5A 07:ED4A: E5 B9     SBC ram_cam_pos_X_lo
C - - - - - 0x01ED5C 07:ED4C: 85 04     STA ram_0004_temp
C - - - - - 0x01ED5E 07:ED4E: AD 58 06  LDA ram_obj_pos_X_hi
C - - - - - 0x01ED61 07:ED51: E5 B7     SBC ram_cam_pos_X_hi
C - - - - - 0x01ED63 07:ED53: 85 05     STA ram_0005_temp
C - - - - - 0x01ED65 07:ED55: A5 04     LDA ram_0004_temp
C - - - - - 0x01ED67 07:ED57: 38        SEC
C - - - - - 0x01ED68 07:ED58: E9 C0     SBC #< $00C0
C - - - - - 0x01ED6A 07:ED5A: A5 05     LDA ram_0005_temp
C - - - - - 0x01ED6C 07:ED5C: E9 00     SBC #> $00C0
C - - - - - 0x01ED6E 07:ED5E: 10 03     BPL bra_ED63
C - - - - - 0x01ED70 07:ED60: 4C 41 EC  JMP loc_EC41
bra_ED63:
C - - - - - 0x01ED73 07:ED63: AD C6 06  LDA ram_obj_spd_X_lo
C - - - - - 0x01ED76 07:ED66: 10 03     BPL bra_ED6B
C - - - - - 0x01ED78 07:ED68: 4C 41 EC  JMP loc_EC41
bra_ED6B:
C - - - - - 0x01ED7B 07:ED6B: A9 00     LDA #$00
C - - - - - 0x01ED7D 07:ED6D: 8D 2C 06  STA ram_obj_pos_X_fr
C - - - - - 0x01ED80 07:ED70: 8D B0 06  STA ram_obj_spd_X_fr
C - - - - - 0x01ED83 07:ED73: A9 00     LDA #$00    ; bzk optimize, loading the same A
C - - - - - 0x01ED85 07:ED75: 8D C6 06  STA ram_obj_spd_X_lo
C - - - - - 0x01ED88 07:ED78: 4C 41 EC  JMP loc_EC41



sub_ED7B:
loc_ED7B:
C D 3 - - - 0x01ED8B 07:ED7B: AD 00 03  LDA ram_0300
C - - - - - 0x01ED8E 07:ED7E: 18        CLC
C - - - - - 0x01ED8F 07:ED7F: 69 0E     ADC #< $000E
C - - - - - 0x01ED91 07:ED81: 85 00     STA ram_0000_t04_data
C - - - - - 0x01ED93 07:ED83: AD 01 03  LDA ram_0301
C - - - - - 0x01ED96 07:ED86: 69 00     ADC #> $000E
C - - - - - 0x01ED98 07:ED88: 85 01     STA ram_0000_t04_data + $01
C - - - - - 0x01ED9A 07:ED8A: 20 52 EF  JSR sub_EF52
C - - - - - 0x01ED9D 07:ED8D: AD 00 03  LDA ram_0300
C - - - - - 0x01EDA0 07:ED90: 20 36 EE  JSR sub_EE36
C - - - - - 0x01EDA3 07:ED93: EE 06 03  INC ram_0306
C - - - - - 0x01EDA6 07:ED96: AD 06 03  LDA ram_0306
C - - - - - 0x01EDA9 07:ED99: 29 1F     AND #$1F
C - - - - - 0x01EDAB 07:ED9B: 8D 06 03  STA ram_0306
C - - - - - 0x01EDAE 07:ED9E: 29 01     AND #$01
C - - - - - 0x01EDB0 07:EDA0: D0 12     BNE bra_EDB4
C - - - - - 0x01EDB2 07:EDA2: AD 00 03  LDA ram_0300
C - - - - - 0x01EDB5 07:EDA5: 18        CLC
C - - - - - 0x01EDB6 07:EDA6: 69 02     ADC #< $0002
C - - - - - 0x01EDB8 07:EDA8: 8D 00 03  STA ram_0300
C - - - - - 0x01EDBB 07:EDAB: AD 01 03  LDA ram_0301
C - - - - - 0x01EDBE 07:EDAE: 69 00     ADC #> $0002
C - - - - - 0x01EDC0 07:EDB0: 8D 01 03  STA ram_0301
C - - - - - 0x01EDC3 07:EDB3: 60        RTS
bra_EDB4:
C - - - - - 0x01EDC4 07:EDB4: AD 02 03  LDA ram_0302
C - - - - - 0x01EDC7 07:EDB7: 18        CLC
C - - - - - 0x01EDC8 07:EDB8: 69 02     ADC #< $0002
C - - - - - 0x01EDCA 07:EDBA: 8D 02 03  STA ram_0302
C - - - - - 0x01EDCD 07:EDBD: AD 03 03  LDA ram_0303
C - - - - - 0x01EDD0 07:EDC0: 69 00     ADC #> $0002
C - - - - - 0x01EDD2 07:EDC2: 8D 03 03  STA ram_0303
C - - - - - 0x01EDD5 07:EDC5: AD 02 03  LDA ram_0302
C - - - - - 0x01EDD8 07:EDC8: 18        CLC
C - - - - - 0x01EDD9 07:EDC9: 69 F4     ADC #< $FFF4
C - - - - - 0x01EDDB 07:EDCB: 8D 95 03  STA ram_0395
C - - - - - 0x01EDDE 07:EDCE: AD 03 03  LDA ram_0303
C - - - - - 0x01EDE1 07:EDD1: 69 FF     ADC #> $FFF4
C - - - - - 0x01EDE3 07:EDD3: 8D 96 03  STA ram_0396
C - - - - - 0x01EDE6 07:EDD6: 60        RTS



loc_EDD7:
C D 3 - - - 0x01EDE7 07:EDD7: AD 02 03  LDA ram_0302
C - - - - - 0x01EDEA 07:EDDA: 18        CLC
C - - - - - 0x01EDEB 07:EDDB: 69 F2     ADC #< $FFF2
C - - - - - 0x01EDED 07:EDDD: 85 00     STA ram_0000_t04_data
C - - - - - 0x01EDEF 07:EDDF: AD 03 03  LDA ram_0303
C - - - - - 0x01EDF2 07:EDE2: 69 FF     ADC #> $FFF2
C - - - - - 0x01EDF4 07:EDE4: 85 01     STA ram_0000_t04_data + $01
C - - - - - 0x01EDF6 07:EDE6: 20 85 EF  JSR sub_EF85
C - - - - - 0x01EDF9 07:EDE9: CE 06 03  DEC ram_0306
C - - - - - 0x01EDFC 07:EDEC: AD 06 03  LDA ram_0306
C - - - - - 0x01EDFF 07:EDEF: 29 1F     AND #$1F
C - - - - - 0x01EE01 07:EDF1: 8D 06 03  STA ram_0306
C - - - - - 0x01EE04 07:EDF4: AD 02 03  LDA ram_0302
C - - - - - 0x01EE07 07:EDF7: 20 36 EE  JSR sub_EE36
C - - - - - 0x01EE0A 07:EDFA: AD 06 03  LDA ram_0306
C - - - - - 0x01EE0D 07:EDFD: 29 01     AND #$01
C - - - - - 0x01EE0F 07:EDFF: D0 12     BNE bra_EE13
C - - - - - 0x01EE11 07:EE01: AD 02 03  LDA ram_0302
C - - - - - 0x01EE14 07:EE04: 38        SEC
C - - - - - 0x01EE15 07:EE05: E9 02     SBC #< $0002
C - - - - - 0x01EE17 07:EE07: 8D 02 03  STA ram_0302
C - - - - - 0x01EE1A 07:EE0A: AD 03 03  LDA ram_0303
C - - - - - 0x01EE1D 07:EE0D: E9 00     SBC #> $0002
C - - - - - 0x01EE1F 07:EE0F: 8D 03 03  STA ram_0303
C - - - - - 0x01EE22 07:EE12: 60        RTS
bra_EE13:
C - - - - - 0x01EE23 07:EE13: AD 00 03  LDA ram_0300
C - - - - - 0x01EE26 07:EE16: 38        SEC
C - - - - - 0x01EE27 07:EE17: E9 02     SBC #< $0002
C - - - - - 0x01EE29 07:EE19: 8D 00 03  STA ram_0300
C - - - - - 0x01EE2C 07:EE1C: AD 01 03  LDA ram_0301
C - - - - - 0x01EE2F 07:EE1F: E9 00     SBC #> $0002
C - - - - - 0x01EE31 07:EE21: 8D 01 03  STA ram_0301
C - - - - - 0x01EE34 07:EE24: AD 00 03  LDA ram_0300
C - - - - - 0x01EE37 07:EE27: 18        CLC
C - - - - - 0x01EE38 07:EE28: 69 0C     ADC #< $000C
C - - - - - 0x01EE3A 07:EE2A: 8D 93 03  STA ram_0393
C - - - - - 0x01EE3D 07:EE2D: AD 01 03  LDA ram_0301
C - - - - - 0x01EE40 07:EE30: 69 00     ADC #> $000C
C - - - - - 0x01EE42 07:EE32: 8D 94 03  STA ram_0394
C - - - - - 0x01EE45 07:EE35: 60        RTS



sub_EE36:
C - - - - - 0x01EE46 07:EE36: A0 06     LDY #$06    ; ram_6000
C - - - - - 0x01EE48 07:EE38: 84 C7     STY ram_00C7_temp
C - - - - - 0x01EE4A 07:EE3A: 29 3E     AND #$3E
; * 10
C - - - - - 0x01EE4C 07:EE3C: 0A        ASL
C - - - - - 0x01EE4D 07:EE3D: 26 C7     ROL ram_00C7_temp
C - - - - - 0x01EE4F 07:EE3F: 0A        ASL
C - - - - - 0x01EE50 07:EE40: 26 C7     ROL ram_00C7_temp
C - - - - - 0x01EE52 07:EE42: 0A        ASL
C - - - - - 0x01EE53 07:EE43: 26 C7     ROL ram_00C7_temp
C - - - - - 0x01EE55 07:EE45: 0A        ASL
C - - - - - 0x01EE56 07:EE46: 26 C7     ROL ram_00C7_temp
C - - - - - 0x01EE58 07:EE48: 85 C6     STA ram_00C6_temp
C - - - - - 0x01EE5A 07:EE4A: A9 A5     LDA #< ram_00A5
C - - - - - 0x01EE5C 07:EE4C: 85 00     STA ram_0000_t09_screen_data
C - - - - - 0x01EE5E 07:EE4E: A9 00     LDA #> ram_00A5
C - - - - - 0x01EE60 07:EE50: 85 01     STA ram_0000_t09_screen_data + $01
C - - - - - 0x01EE62 07:EE52: A0 00     LDY #$00
C - - - - - 0x01EE64 07:EE54: A9 02     LDA #$02
C - - - - - 0x01EE66 07:EE56: 91 00     STA (ram_0000_t09_screen_data),Y
C - - - - - 0x01EE68 07:EE58: C8        INY ; 01
C - - - - - 0x01EE69 07:EE59: A9 00     LDA #$00
C - - - - - 0x01EE6B 07:EE5B: 91 00     STA (ram_0000_t09_screen_data),Y
C - - - - - 0x01EE6D 07:EE5D: C8        INY ; 02
C - - - - - 0x01EE6E 07:EE5E: A9 09     LDA #$09
C - - - - - 0x01EE70 07:EE60: 91 00     STA (ram_0000_t09_screen_data),Y
C - - - - - 0x01EE72 07:EE62: C8        INY ; 03
C - - - - - 0x01EE73 07:EE63: A9 0F     LDA #$0F
C - - - - - 0x01EE75 07:EE65: 91 00     STA (ram_0000_t09_screen_data),Y
C - - - - - 0x01EE77 07:EE67: C8        INY ; 04
C - - - - - 0x01EE78 07:EE68: AD 06 03  LDA ram_0306
C - - - - - 0x01EE7B 07:EE6B: 18        CLC
C - - - - - 0x01EE7C 07:EE6C: 69 80     ADC #$80
C - - - - - 0x01EE7E 07:EE6E: 91 00     STA (ram_0000_t09_screen_data),Y
C - - - - - 0x01EE80 07:EE70: A9 00     LDA #$00
C - - - - - 0x01EE82 07:EE72: 69 21     ADC #$21
C - - - - - 0x01EE84 07:EE74: C8        INY ; 05
C - - - - - 0x01EE85 07:EE75: 91 00     STA (ram_0000_t09_screen_data),Y
; bzk optimize, useless INY
C - - - - - 0x01EE87 07:EE77: C8        INY ; 06
C - - - - - 0x01EE88 07:EE78: A0 06     LDY #$06
C - - - - - 0x01EE8A 07:EE7A: A9 00     LDA #$00
C - - - - - 0x01EE8C 07:EE7C: AD 06 03  LDA ram_0306
C - - - - - 0x01EE8F 07:EE7F: 4A        LSR
C - - - - - 0x01EE90 07:EE80: A9 00     LDA #$00
C - - - - - 0x01EE92 07:EE82: 90 02     BCC bra_EE86
C - - - - - 0x01EE94 07:EE84: A9 80     LDA #$80
bra_EE86:
C - - - - - 0x01EE96 07:EE86: 91 00     STA (ram_0000_t09_screen_data),Y
C - - - - - 0x01EE98 07:EE88: A0 0A     LDY #$0A
C - - - - - 0x01EE9A 07:EE8A: A5 C6     LDA ram_00C6_temp
C - - - - - 0x01EE9C 07:EE8C: 91 00     STA (ram_0000_t09_screen_data),Y
C - - - - - 0x01EE9E 07:EE8E: 48        PHA
C - - - - - 0x01EE9F 07:EE8F: C8        INY ; 0B
C - - - - - 0x01EEA0 07:EE90: A5 C7     LDA ram_00C7_temp
C - - - - - 0x01EEA2 07:EE92: 91 00     STA (ram_0000_t09_screen_data),Y
C - - - - - 0x01EEA4 07:EE94: 48        PHA
C - - - - - 0x01EEA5 07:EE95: 20 C2 C7  JSR sub_C7C2_prepare_screen_data
C - - - - - 0x01EEA8 07:EE98: 68        PLA
C - - - - - 0x01EEA9 07:EE99: 85 03     STA ram_0002_t07_data + $01
C - - - - - 0x01EEAB 07:EE9B: 68        PLA
C - - - - - 0x01EEAC 07:EE9C: 85 02     STA ram_0002_t07_data
C - - - - - 0x01EEAE 07:EE9E: AD 06 03  LDA ram_0306
C - - - - - 0x01EEB1 07:EEA1: 29 01     AND #$01
C - - - - - 0x01EEB3 07:EEA3: D0 03     BNE bra_EEA8
C - - - - - 0x01EEB5 07:EEA5: 4C 4D EF  JMP loc_EF4D_RTS
bra_EEA8:
C - - - - - 0x01EEB8 07:EEA8: A9 03     LDA #$03
C - - - - - 0x01EEBA 07:EEAA: 8D 08 03  STA ram_0308
C - - - - - 0x01EEBD 07:EEAD: AD 06 03  LDA ram_0306
; / 04
C - - - - - 0x01EEC0 07:EEB0: 4A        LSR
C - - - - - 0x01EEC1 07:EEB1: 4A        LSR
C - - - - - 0x01EEC2 07:EEB2: 85 66     STA ram_0066
C - - - - - 0x01EEC4 07:EEB4: 90 03     BCC bra_EEB9
C - - - - - 0x01EEC6 07:EEB6: 4C D5 EE  JMP loc_EED5
bra_EEB9:
C - - - - - 0x01EEC9 07:EEB9: 48        PHA
C - - - - - 0x01EECA 07:EEBA: AA        TAX
C - - - - - 0x01EECB 07:EEBB: A9 33     LDA #$33
C - - - - - 0x01EECD 07:EEBD: 85 01     STA ram_0001_t18_33_or_CC
C - - - - - 0x01EECF 07:EEBF: A0 00     LDY #$00
C - - - - - 0x01EED1 07:EEC1: A9 09     LDA #$09
C - - - - - 0x01EED3 07:EEC3: 85 07     STA ram_0007_temp
C - - - - - 0x01EED5 07:EEC5: 20 F1 EE  JSR sub_EEF1
C - - - - - 0x01EED8 07:EEC8: 68        PLA
C - - - - - 0x01EED9 07:EEC9: 18        CLC
C - - - - - 0x01EEDA 07:EECA: 69 28     ADC #$28
C - - - - - 0x01EEDC 07:EECC: AA        TAX
C - - - - - 0x01EEDD 07:EECD: A9 18     LDA #$18
C - - - - - 0x01EEDF 07:EECF: 85 07     STA ram_0007_temp
; bzk optimize, JMP
C - - - - - 0x01EEE1 07:EED1: 20 F1 EE  JSR sub_EEF1
C - - - - - 0x01EEE4 07:EED4: 60        RTS



loc_EED5:
C D 3 - - - 0x01EEE5 07:EED5: 48        PHA
C - - - - - 0x01EEE6 07:EED6: AA        TAX
C - - - - - 0x01EEE7 07:EED7: A9 CC     LDA #$CC
C - - - - - 0x01EEE9 07:EED9: 85 01     STA ram_0001_t18_33_or_CC
C - - - - - 0x01EEEB 07:EEDB: A0 00     LDY #$00
C - - - - - 0x01EEED 07:EEDD: A9 09     LDA #$09
C - - - - - 0x01EEEF 07:EEDF: 85 07     STA ram_0007_temp
C - - - - - 0x01EEF1 07:EEE1: 20 F1 EE  JSR sub_EEF1
C - - - - - 0x01EEF4 07:EEE4: 68        PLA
C - - - - - 0x01EEF5 07:EEE5: 18        CLC
C - - - - - 0x01EEF6 07:EEE6: 69 28     ADC #$28
C - - - - - 0x01EEF8 07:EEE8: AA        TAX
C - - - - - 0x01EEF9 07:EEE9: A9 18     LDA #$18
C - - - - - 0x01EEFB 07:EEEB: 85 07     STA ram_0007_temp
; bzk optimize, JMP
C - - - - - 0x01EEFD 07:EEED: 20 F1 EE  JSR sub_EEF1
C - - - - - 0x01EF00 07:EEF0: 60        RTS



sub_EEF1:
loc_EEF1:
C D 3 - - - 0x01EF01 07:EEF1: 84 04     STY ram_0004_temp
C - - - - - 0x01EF03 07:EEF3: B1 02     LDA (ram_0002_t07_data),Y
C - - - - - 0x01EF05 07:EEF5: A8        TAY
C - - - - - 0x01EF06 07:EEF6: B9 00 6A  LDA ram_data_6A00,Y
C - - - - - 0x01EF09 07:EEF9: 2A        ROL
C - - - - - 0x01EF0A 07:EEFA: 2A        ROL
C - - - - - 0x01EF0B 07:EEFB: 2A        ROL
C - - - - - 0x01EF0C 07:EEFC: 29 03     AND #$03
C - - - - - 0x01EF0E 07:EEFE: A8        TAY
C - - - - - 0x01EF0F 07:EEFF: B9 4E EF  LDA tbl_EF4E,Y
C - - - - - 0x01EF12 07:EF02: 29 0F     AND #$0F
C - - - - - 0x01EF14 07:EF04: 85 00     STA ram_0000_t85
C - - - - - 0x01EF16 07:EF06: E6 04     INC ram_0004_temp
C - - - - - 0x01EF18 07:EF08: A4 04     LDY ram_0004_temp
C - - - - - 0x01EF1A 07:EF0A: C4 07     CPY ram_0007_temp
C - - - - - 0x01EF1C 07:EF0C: F0 2F     BEQ bra_EF3D
C - - - - - 0x01EF1E 07:EF0E: B1 02     LDA (ram_0002_t07_data),Y
C - - - - - 0x01EF20 07:EF10: A8        TAY
C - - - - - 0x01EF21 07:EF11: B9 00 6A  LDA ram_data_6A00,Y
C - - - - - 0x01EF24 07:EF14: 2A        ROL
C - - - - - 0x01EF25 07:EF15: 2A        ROL
C - - - - - 0x01EF26 07:EF16: 2A        ROL
C - - - - - 0x01EF27 07:EF17: 29 03     AND #$03
C - - - - - 0x01EF29 07:EF19: A8        TAY
C - - - - - 0x01EF2A 07:EF1A: B9 4E EF  LDA tbl_EF4E,Y
C - - - - - 0x01EF2D 07:EF1D: 29 F0     AND #$F0
C - - - - - 0x01EF2F 07:EF1F: 05 00     ORA ram_0000_t85
C - - - - - 0x01EF31 07:EF21: 25 01     AND ram_0001_t18_33_or_CC
C - - - - - 0x01EF33 07:EF23: 85 00     STA ram_0000_t86
C - - - - - 0x01EF35 07:EF25: A5 01     LDA ram_0001_t18_33_or_CC
C - - - - - 0x01EF37 07:EF27: 49 FF     EOR #$FF
C - - - - - 0x01EF39 07:EF29: 3D 09 03  AND ram_0309_buffer,X
C - - - - - 0x01EF3C 07:EF2C: 05 00     ORA ram_0000_t86
C - - - - - 0x01EF3E 07:EF2E: 9D 09 03  STA ram_0309_buffer,X
C - - - - - 0x01EF41 07:EF31: 8A        TXA
C - - - - - 0x01EF42 07:EF32: 18        CLC
C - - - - - 0x01EF43 07:EF33: 69 08     ADC #$08
C - - - - - 0x01EF45 07:EF35: AA        TAX
C - - - - - 0x01EF46 07:EF36: E6 04     INC ram_0004_temp
C - - - - - 0x01EF48 07:EF38: A4 04     LDY ram_0004_temp
C - - - - - 0x01EF4A 07:EF3A: 4C F1 EE  JMP loc_EEF1
bra_EF3D:
C - - - - - 0x01EF4D 07:EF3D: 25 01     AND ram_0001_t18_33_or_CC
C - - - - - 0x01EF4F 07:EF3F: 85 00     STA ram_0000_t87
C - - - - - 0x01EF51 07:EF41: A5 01     LDA ram_0001_t18_33_or_CC
C - - - - - 0x01EF53 07:EF43: 49 FF     EOR #$FF
C - - - - - 0x01EF55 07:EF45: 3D 09 03  AND ram_0309_buffer,X
C - - - - - 0x01EF58 07:EF48: 05 00     ORA ram_0000_t87
C - - - - - 0x01EF5A 07:EF4A: 9D 09 03  STA ram_0309_buffer,X
loc_EF4D_RTS:   ; bzk optimize
C D 3 - - - 0x01EF5D 07:EF4D: 60        RTS



tbl_EF4E:
- D 3 - - - 0x01EF5E 07:EF4E: 00        .byte $00   ; 
- D 3 - - - 0x01EF5F 07:EF4F: 55        .byte $55   ; 
- D 3 - - - 0x01EF60 07:EF50: AA        .byte $AA   ; 
- D 3 - - - 0x01EF61 07:EF51: FF        .byte $FF   ; 



sub_EF52:
C - - - - - 0x01EF62 07:EF52: AD 06 03  LDA ram_0306
C - - - - - 0x01EF65 07:EF55: 29 01     AND #$01
C - - - - - 0x01EF67 07:EF57: D0 03     BNE bra_EF5C
C - - - - - 0x01EF69 07:EF59: 4C B8 EF  JMP loc_EFB8
bra_EF5C:
C - - - - - 0x01EF6C 07:EF5C: AD 00 03  LDA ram_0300
C - - - - - 0x01EF6F 07:EF5F: 18        CLC
C - - - - - 0x01EF70 07:EF60: 69 0C     ADC #< $000C
C - - - - - 0x01EF72 07:EF62: 85 00     STA ram_0000_t88_lo
C - - - - - 0x01EF74 07:EF64: 8D 93 03  STA ram_0393
C - - - - - 0x01EF77 07:EF67: AD 01 03  LDA ram_0301
C - - - - - 0x01EF7A 07:EF6A: 69 00     ADC #> $000C
C - - - - - 0x01EF7C 07:EF6C: 85 01     STA ram_0001_t11_hi
C - - - - - 0x01EF7E 07:EF6E: 8D 94 03  STA ram_0394
C - - - - - 0x01EF81 07:EF71: 20 25 F2  JSR sub_F225
C - - - - - 0x01EF84 07:EF74: A9 01     LDA #con_0708_01
C - - - - - 0x01EF86 07:EF76: 8D 92 03  STA ram_0392_for_0708
C - - - - - 0x01EF89 07:EF79: A9 FF     LDA #$FF
C - - - - - 0x01EF8B 07:EF7B: 85 02     STA ram_0002_temp
C - - - - - 0x01EF8D 07:EF7D: A9 00     LDA #$00
C - - - - - 0x01EF8F 07:EF7F: 85 03     STA ram_0003_temp
; bzk optimize, JMP
C - - - - - 0x01EF91 07:EF81: 20 14 F1  JSR sub_F114_spawn_object
C - - - - - 0x01EF94 07:EF84: 60        RTS



sub_EF85:
C - - - - - 0x01EF95 07:EF85: AD 06 03  LDA ram_0306
C - - - - - 0x01EF98 07:EF88: 29 01     AND #$01
C - - - - - 0x01EF9A 07:EF8A: D0 03     BNE bra_EF8F
C - - - - - 0x01EF9C 07:EF8C: 4C B8 EF  JMP loc_EFB8
bra_EF8F:
C - - - - - 0x01EF9F 07:EF8F: AD 02 03  LDA ram_0302
C - - - - - 0x01EFA2 07:EF92: 18        CLC
C - - - - - 0x01EFA3 07:EF93: 69 F4     ADC #< $FFF4
C - - - - - 0x01EFA5 07:EF95: 85 00     STA ram_0000_t88_lo
C - - - - - 0x01EFA7 07:EF97: 8D 95 03  STA ram_0395
C - - - - - 0x01EFAA 07:EF9A: AD 03 03  LDA ram_0303
C - - - - - 0x01EFAD 07:EF9D: 69 FF     ADC #> $FFF4
C - - - - - 0x01EFAF 07:EF9F: 85 01     STA ram_0001_t11_hi
C - - - - - 0x01EFB1 07:EFA1: 8D 96 03  STA ram_0396
C - - - - - 0x01EFB4 07:EFA4: 20 E8 F1  JSR sub_F1E8
C - - - - - 0x01EFB7 07:EFA7: A9 00     LDA #con_0708_00
C - - - - - 0x01EFB9 07:EFA9: 8D 92 03  STA ram_0392_for_0708
; bzk optimize, loading the same A
C - - - - - 0x01EFBC 07:EFAC: A9 00     LDA #$00
C - - - - - 0x01EFBE 07:EFAE: 85 02     STA ram_0002_temp
C - - - - - 0x01EFC0 07:EFB0: A9 40     LDA #$40
C - - - - - 0x01EFC2 07:EFB2: 85 03     STA ram_0003_temp
; bzk optimize, JMP
C - - - - - 0x01EFC4 07:EFB4: 20 14 F1  JSR sub_F114_spawn_object
C - - - - - 0x01EFC7 07:EFB7: 60        RTS



sub_EFB8:
loc_EFB8:
C D 3 - - - 0x01EFC8 07:EFB8: A9 06     LDA #$06    ; ram_6000
C - - - - - 0x01EFCA 07:EFBA: 85 C7     STA ram_00C7_temp
C - - - - - 0x01EFCC 07:EFBC: A5 00     LDA ram_0000_t04_data
C - - - - - 0x01EFCE 07:EFBE: 29 3E     AND #$3E
; * 10
C - - - - - 0x01EFD0 07:EFC0: 0A        ASL
C - - - - - 0x01EFD1 07:EFC1: 26 C7     ROL ram_00C7_temp
C - - - - - 0x01EFD3 07:EFC3: 0A        ASL
C - - - - - 0x01EFD4 07:EFC4: 26 C7     ROL ram_00C7_temp
C - - - - - 0x01EFD6 07:EFC6: 0A        ASL
C - - - - - 0x01EFD7 07:EFC7: 26 C7     ROL ram_00C7_temp
C - - - - - 0x01EFD9 07:EFC9: 0A        ASL
C - - - - - 0x01EFDA 07:EFCA: 26 C7     ROL ram_00C7_temp
C - - - - - 0x01EFDC 07:EFCC: 85 C6     STA ram_00C6_temp
C - - - - - 0x01EFDE 07:EFCE: 20 65 F0  JSR sub_F065
C - - - - - 0x01EFE1 07:EFD1: 20 71 F0  JSR sub_F071
C - - - - - 0x01EFE4 07:EFD4: A5 00     LDA ram_0000_t04_data
C - - - - - 0x01EFE6 07:EFD6: 85 04     STA ram_0004_t08_data
C - - - - - 0x01EFE8 07:EFD8: 18        CLC
C - - - - - 0x01EFE9 07:EFD9: 6D 04 03  ADC ram_0304_round_data
C - - - - - 0x01EFEC 07:EFDC: 85 00     STA ram_0000_t04_data
C - - - - - 0x01EFEE 07:EFDE: A5 01     LDA ram_0000_t04_data + $01
C - - - - - 0x01EFF0 07:EFE0: 85 05     STA ram_0004_t08_data + $01
C - - - - - 0x01EFF2 07:EFE2: 6D 05 03  ADC ram_0304_round_data + $01
C - - - - - 0x01EFF5 07:EFE5: 85 01     STA ram_0000_t04_data + $01
C - - - - - 0x01EFF7 07:EFE7: A0 00     LDY #$00
C - - - - - 0x01EFF9 07:EFE9: 8C 91 03  STY ram_0391
C - - - - - 0x01EFFC 07:EFEC: B1 00     LDA (ram_0000_t04_data),Y
C - - - - - 0x01EFFE 07:EFEE: 85 CC     STA ram_00CC_t01_data
C - - - - - 0x01F000 07:EFF0: C8        INY ; 01
C - - - - - 0x01F001 07:EFF1: B1 00     LDA (ram_0000_t04_data),Y
C - - - - - 0x01F003 07:EFF3: 30 05     BMI bra_EFFA_80_FF
; 00-7F
C - - - - - 0x01F005 07:EFF5: 09 80     ORA #$80
C - - - - - 0x01F007 07:EFF7: 8D 91 03  STA ram_0391
bra_EFFA_80_FF:
C - - - - - 0x01F00A 07:EFFA: 29 BF     AND #$BF
C - - - - - 0x01F00C 07:EFFC: 85 CD     STA ram_00CC_t01_data + $01
C - - - - - 0x01F00E 07:EFFE: A2 00     LDX #$00
C - - - - - 0x01F010 07:F000: A0 00     LDY #$00
C - - - - - 0x01F012 07:F002: B1 CC     LDA (ram_00CC_t01_data),Y
C - - - - - 0x01F014 07:F004: 10 0B     BPL bra_F011_00_7F
; 80-FF
C - - - - - 0x01F016 07:F006: C9 FC     CMP #$FC
C - - - - - 0x01F018 07:F008: 90 1A     BCC bra_F024_80_FB
C - - - - - 0x01F01A 07:F00A: 4C 3D F0  JMP loc_F03D_FC_FF
bra_F00D_loop:
C - - - - - 0x01F01D 07:F00D: B1 CC     LDA (ram_00CC_t01_data),Y
C - - - - - 0x01F01F 07:F00F: 30 13     BMI bra_F024_80_FF
; 00-7F
bra_F011_00_7F:
C - - - - - 0x01F021 07:F011: 81 C6     STA (ram_00C6_temp,X)
C - - - - - 0x01F023 07:F013: E6 C6     INC ram_00C6_temp
loc_F015_next:
C D 3 - - - 0x01F025 07:F015: C8        INY
C - - - - - 0x01F026 07:F016: A5 C6     LDA ram_00C6_temp
C - - - - - 0x01F028 07:F018: 29 1F     AND #$1F
C - - - - - 0x01F02A 07:F01A: C9 18     CMP #$18
C - - - - - 0x01F02C 07:F01C: 90 EF     BCC bra_F00D_loop
C - - - - - 0x01F02E 07:F01E: AD 91 03  LDA ram_0391
C - - - - - 0x01F031 07:F021: D0 65     BNE bra_F088
C - - - - - 0x01F033 07:F023: 60        RTS
bra_F024_80_FF:
bra_F024_80_FB:
C - - - - - 0x01F034 07:F024: 84 02     STY ram_0002_temp
C - - - - - 0x01F036 07:F026: 0A        ASL
C - - - - - 0x01F037 07:F027: A8        TAY
C - - - - - 0x01F038 07:F028: B1 CE     LDA (ram_00CE_t01_data),Y
C - - - - - 0x01F03A 07:F02A: 85 03     STA ram_0003_temp
C - - - - - 0x01F03C 07:F02C: C8        INY
C - - - - - 0x01F03D 07:F02D: B1 CE     LDA (ram_00CE_t01_data),Y
C - - - - - 0x01F03F 07:F02F: A4 03     LDY ram_0003_temp
bra_F031_loop:
C - - - - - 0x01F041 07:F031: 81 C6     STA (ram_00C6_temp,X)
C - - - - - 0x01F043 07:F033: E6 C6     INC ram_00C6_temp
C - - - - - 0x01F045 07:F035: 88        DEY
C - - - - - 0x01F046 07:F036: D0 F9     BNE bra_F031_loop
C - - - - - 0x01F048 07:F038: A4 02     LDY ram_0002_temp
C - - - - - 0x01F04A 07:F03A: 4C 15 F0  JMP loc_F015_next



loc_F03D_FC_FF:
C D 3 - - - 0x01F04D 07:F03D: C8        INY
C - - - - - 0x01F04E 07:F03E: 84 02     STY ram_0002_temp
C - - - - - 0x01F050 07:F040: 29 03     AND #$03
C - - - - - 0x01F052 07:F042: AA        TAX
C - - - - - 0x01F053 07:F043: B1 CC     LDA (ram_00CC_t01_data),Y
C - - - - - 0x01F055 07:F045: 18        CLC
C - - - - - 0x01F056 07:F046: 7D 61 F0  ADC tbl_F061_index,X
C - - - - - 0x01F059 07:F049: 85 03     STA ram_0003_temp
C - - - - - 0x01F05B 07:F04B: BC 61 F0  LDY tbl_F061_index,X
C - - - - - 0x01F05E 07:F04E: A2 00     LDX #$00
bra_F050_loop:
C - - - - - 0x01F060 07:F050: B9 17 A6  LDA tbl_0x016627,Y
C - - - - - 0x01F063 07:F053: 81 C6     STA (ram_00C6_temp,X)
C - - - - - 0x01F065 07:F055: E6 C6     INC ram_00C6_temp
C - - - - - 0x01F067 07:F057: C8        INY
C - - - - - 0x01F068 07:F058: C4 03     CPY ram_0003_temp
C - - - - - 0x01F06A 07:F05A: 90 F4     BCC bra_F050_loop
C - - - - - 0x01F06C 07:F05C: A4 02     LDY ram_0002_temp
C - - - - - 0x01F06E 07:F05E: 4C 15 F0  JMP loc_F015_next



tbl_F061_index:
- D 3 - - - 0x01F071 07:F061: 00        .byte $00   ; FC 
- D 3 - - - 0x01F072 07:F062: 18        .byte $18   ; FD 
- D 3 - - - 0x01F073 07:F063: 30        .byte $30   ; FE 
- D 3 - - - 0x01F074 07:F064: 48        .byte $48   ; FF 



sub_F065:
C - - - - - 0x01F075 07:F065: A5 01     LDA ram_0000_t04_data + $01
; bzk optimize, BPL to RTS
C - - - - - 0x01F077 07:F067: 30 01     BMI bra_F06A
C - - - - - 0x01F079 07:F069: 60        RTS
bra_F06A:
C - - - - - 0x01F07A 07:F06A: A9 00     LDA #$00
C - - - - - 0x01F07C 07:F06C: 85 00     STA ram_0000_t04_data
C - - - - - 0x01F07E 07:F06E: 85 01     STA ram_0000_t04_data + $01
C - - - - - 0x01F080 07:F070: 60        RTS



sub_F071:
C - - - - - 0x01F081 07:F071: A5 01     LDA ram_0000_t04_data + $01
C - - - - - 0x01F083 07:F073: C5 C4     CMP ram_00C4_t01_hi
; bzk optimize, BCC to RTS
C - - - - - 0x01F085 07:F075: B0 01     BCS bra_F078
C - - - - - 0x01F087 07:F077: 60        RTS
bra_F078:
C - - - - - 0x01F088 07:F078: A5 00     LDA ram_0000_t04_data
C - - - - - 0x01F08A 07:F07A: C5 C5     CMP ram_00C5_t01_lo
; bzk optimize, BCC to RTS
C - - - - - 0x01F08C 07:F07C: B0 01     BCS bra_F07F
C - - - - - 0x01F08E 07:F07E: 60        RTS
bra_F07F:
C - - - - - 0x01F08F 07:F07F: A5 C3     LDA ram_00C3_t01_lo
C - - - - - 0x01F091 07:F081: 85 00     STA ram_0000_t04_data
C - - - - - 0x01F093 07:F083: A5 C2     LDA ram_00C2_t01_hi
C - - - - - 0x01F095 07:F085: 85 01     STA ram_0000_t04_data + $01
C - - - - - 0x01F097 07:F087: 60        RTS



bra_F088:
C - - - - - 0x01F098 07:F088: A5 C6     LDA ram_00C6_temp
C - - - - - 0x01F09A 07:F08A: 29 E0     AND #$E0
C - - - - - 0x01F09C 07:F08C: 85 C6     STA ram_00C6_temp
C - - - - - 0x01F09E 07:F08E: A5 E2     LDA ram_00E2
C - - - - - 0x01F0A0 07:F090: 18        CLC
C - - - - - 0x01F0A1 07:F091: 65 04     ADC ram_0004_t08_data
C - - - - - 0x01F0A3 07:F093: 85 04     STA ram_0004_t08_data
C - - - - - 0x01F0A5 07:F095: A5 E3     LDA ram_00E3
C - - - - - 0x01F0A7 07:F097: 65 05     ADC ram_0004_t08_data + $01
C - - - - - 0x01F0A9 07:F099: 4A        LSR
C - - - - - 0x01F0AA 07:F09A: 66 04     ROR ram_0004_t08_data
C - - - - - 0x01F0AC 07:F09C: 18        CLC
C - - - - - 0x01F0AD 07:F09D: 69 70     ADC #$70    ; > ram_7000
C - - - - - 0x01F0AF 07:F09F: 85 05     STA ram_0004_t08_data + $01
C - - - - - 0x01F0B1 07:F0A1: A0 00     LDY #$00
C - - - - - 0x01F0B3 07:F0A3: B1 04     LDA (ram_0004_t08_data),Y
C - - - - - 0x01F0B5 07:F0A5: A8        TAY
C - - - - - 0x01F0B6 07:F0A6: A2 00     LDX #$00
loc_F0A8_loop:
C D 3 - - - 0x01F0B8 07:F0A8: B9 00 6C  LDA ram_6C00,Y
C - - - - - 0x01F0BB 07:F0AB: 30 1C     BMI bra_F0C9_80_FF
; 00-7F
C - - - - - 0x01F0BD 07:F0AD: 29 1F     AND #$1F
C - - - - - 0x01F0BF 07:F0AF: 05 C6     ORA ram_00C6_temp
C - - - - - 0x01F0C1 07:F0B1: 85 04     STA ram_0004_t06_data
C - - - - - 0x01F0C3 07:F0B3: A5 C7     LDA ram_00C7_temp
C - - - - - 0x01F0C5 07:F0B5: 85 05     STA ram_0004_t06_data + $01
C - - - - - 0x01F0C7 07:F0B7: B9 00 6D  LDA ram_6D00,Y
C - - - - - 0x01F0CA 07:F0BA: 81 04     STA (ram_0004_t06_data,X)
C - - - - - 0x01F0CC 07:F0BC: A5 C7     LDA ram_00C7_temp
C - - - - - 0x01F0CE 07:F0BE: 09 04     ORA #$04
C - - - - - 0x01F0D0 07:F0C0: 85 05     STA ram_0004_t06_data + $01
C - - - - - 0x01F0D2 07:F0C2: 98        TYA
C - - - - - 0x01F0D3 07:F0C3: 81 04     STA (ram_0004_t06_data,X)
C - - - - - 0x01F0D5 07:F0C5: C8        INY
C - - - - - 0x01F0D6 07:F0C6: 4C A8 F0  JMP loc_F0A8_loop
bra_F0C9_80_FF:
C - - - - - 0x01F0D9 07:F0C9: 29 1F     AND #$1F
C - - - - - 0x01F0DB 07:F0CB: 05 C6     ORA ram_00C6_temp
C - - - - - 0x01F0DD 07:F0CD: 85 04     STA ram_0004_t07_data
C - - - - - 0x01F0DF 07:F0CF: A5 C7     LDA ram_00C7_temp
C - - - - - 0x01F0E1 07:F0D1: 85 05     STA ram_0004_t07_data + $01
C - - - - - 0x01F0E3 07:F0D3: B9 00 6D  LDA ram_6D00,Y
C - - - - - 0x01F0E6 07:F0D6: 81 04     STA (ram_0004_t07_data,X)
C - - - - - 0x01F0E8 07:F0D8: A5 C7     LDA ram_00C7_temp
C - - - - - 0x01F0EA 07:F0DA: 09 04     ORA #$04
C - - - - - 0x01F0EC 07:F0DC: 85 05     STA ram_0004_t07_data + $01
C - - - - - 0x01F0EE 07:F0DE: 98        TYA
C - - - - - 0x01F0EF 07:F0DF: 81 04     STA (ram_0004_t07_data,X)
C - - - - - 0x01F0F1 07:F0E1: 60        RTS



bra_F0E2:
C - - - - - 0x01F0F2 07:F0E2: A9 00     LDA #$00
C - - - - - 0x01F0F4 07:F0E4: 60        RTS



sub_F0E5:
C - - - - - 0x01F0F5 07:F0E5: A5 01     LDA ram_0001_t11_hi
C - - - - - 0x01F0F7 07:F0E7: 30 F9     BMI bra_F0E2
C - - - - - 0x01F0F9 07:F0E9: A5 01     LDA ram_0001_t11_hi
C - - - - - 0x01F0FB 07:F0EB: C5 C4     CMP ram_00C4_t01_hi
C - - - - - 0x01F0FD 07:F0ED: 90 06     BCC bra_F0F5
C - - - - - 0x01F0FF 07:F0EF: A5 00     LDA ram_0000_t88_lo
C - - - - - 0x01F101 07:F0F1: C5 C5     CMP ram_00C5_t01_lo
C - - - - - 0x01F103 07:F0F3: B0 ED     BCS bra_F0E2
bra_F0F5:
C - - - - - 0x01F105 07:F0F5: A5 E2     LDA ram_00E2
C - - - - - 0x01F107 07:F0F7: 18        CLC
C - - - - - 0x01F108 07:F0F8: 65 00     ADC ram_0000_t88_lo
C - - - - - 0x01F10A 07:F0FA: 85 04     STA ram_0004_t01_data
C - - - - - 0x01F10C 07:F0FC: A5 E3     LDA ram_00E3
C - - - - - 0x01F10E 07:F0FE: 65 01     ADC ram_0001_t11_hi
C - - - - - 0x01F110 07:F100: 4A        LSR
C - - - - - 0x01F111 07:F101: 66 04     ROR ram_0004_t01_data
C - - - - - 0x01F113 07:F103: 18        CLC
C - - - - - 0x01F114 07:F104: 69 74     ADC #$74    ; > ram_7400
C - - - - - 0x01F116 07:F106: 85 05     STA ram_0004_t01_data + $01
C - - - - - 0x01F118 07:F108: A0 00     LDY #$00
C - - - - - 0x01F11A 07:F10A: C9 78     CMP #$78
C - - - - - 0x01F11C 07:F10C: B0 D4     BCS bra_F0E2
C - - - - - 0x01F11E 07:F10E: B1 04     LDA (ram_0004_t01_data),Y
C - - - - - 0x01F120 07:F110: F0 D0     BEQ bra_F0E2
C - - - - - 0x01F122 07:F112: A8        TAY
C - - - - - 0x01F123 07:F113: 60        RTS



sub_F114_spawn_object:
C - - - - - 0x01F124 07:F114: 20 E5 F0  JSR sub_F0E5
C - - - - - 0x01F127 07:F117: F0 C9     BEQ bra_F0E2
C - - - - - 0x01F129 07:F119: A2 0A     LDX #$0A
C - - - - - 0x01F12B 07:F11B: 88        DEY
loc_F11C_loop:
C D 3 - - - 0x01F12C 07:F11C: C8        INY
C - - - - - 0x01F12D 07:F11D: B9 00 78  LDA ram_7800_round_obj_flags,Y
C - - - - - 0x01F130 07:F120: 09 40     ORA #$40
C - - - - - 0x01F132 07:F122: 99 00 78  STA ram_7800_round_obj_flags,Y
C - - - - - 0x01F135 07:F125: B9 00 79  LDA ram_7900_round_obj_id,Y
C - - - - - 0x01F138 07:F128: 10 03     BPL bra_F12D_find_empty_slot
; if object has already spawned
C - - - - - 0x01F13A 07:F12A: 4C DF F1  JMP loc_F1DF_skip
bra_F12D_find_empty_slot:
bra_F12D_loop:
C - - - - - 0x01F13D 07:F12D: BD 16 06  LDA ram_0616_obj,X
C - - - - - 0x01F140 07:F130: F0 06     BEQ bra_F138_found
C - - - - - 0x01F142 07:F132: E8        INX
C - - - - - 0x01F143 07:F133: E0 16     CPX #$16
C - - - - - 0x01F145 07:F135: 90 F6     BCC bra_F12D_loop
; if not found
- - - - - - 0x01F147 07:F137: 60        RTS
bra_F138_found:
C - - - - - 0x01F148 07:F138: A9 00     LDA #$00
C - - - - - 0x01F14A 07:F13A: 9D 2C 06  STA ram_obj_pos_X_fr,X
C - - - - - 0x01F14D 07:F13D: 9D 6E 06  STA ram_obj_pos_Y_fr,X
C - - - - - 0x01F150 07:F140: 9D B0 06  STA ram_obj_spd_X_fr,X
C - - - - - 0x01F153 07:F143: 9D C6 06  STA ram_obj_spd_X_lo,X
C - - - - - 0x01F156 07:F146: 9D DC 06  STA ram_obj_spd_Y_fr,X
C - - - - - 0x01F159 07:F149: 9D F2 06  STA ram_obj_spd_Y_lo,X
C - - - - - 0x01F15C 07:F14C: 9D 34 07  STA ram_0734_obj,X
C - - - - - 0x01F15F 07:F14F: 9D 4A 07  STA ram_obj_anim_timer,X
C - - - - - 0x01F162 07:F152: 9D 60 07  STA ram_obj_anim_cnt,X
C - - - - - 0x01F165 07:F155: 9D 76 07  STA ram_0776_obj_flags,X
C - - - - - 0x01F168 07:F158: 9D 8C 07  STA ram_078C_obj,X
C - - - - - 0x01F16B 07:F15B: 9D A2 07  STA ram_07A2_obj,X
C - - - - - 0x01F16E 07:F15E: 9D B8 07  STA ram_07B8_obj,X
C - - - - - 0x01F171 07:F161: 9D CE 07  STA ram_07CE_obj_hp,X
C - - - - - 0x01F174 07:F164: 98        TYA
C - - - - - 0x01F175 07:F165: 9D 1E 07  STA ram_071E_obj_queue_id,X
C - - - - - 0x01F178 07:F168: A9 01     LDA #$01
C - - - - - 0x01F17A 07:F16A: 9D 16 06  STA ram_0616_obj,X
C - - - - - 0x01F17D 07:F16D: B9 00 79  LDA ram_7900_round_obj_id,Y
C - - - - - 0x01F180 07:F170: 9D 00 06  STA ram_0600_obj_id,X
C - - - - - 0x01F183 07:F173: 09 80     ORA #$80
C - - - - - 0x01F185 07:F175: 99 00 79  STA ram_7900_round_obj_id,Y
C - - - - - 0x01F188 07:F178: C9 90     CMP #con_obj_id_10 + $80
C - - - - - 0x01F18A 07:F17A: F0 0D     BEQ bra_F189
C - - - - - 0x01F18C 07:F17C: 38        SEC
C - - - - - 0x01F18D 07:F17D: E9 91     SBC #$91
C - - - - - 0x01F18F 07:F17F: A8        TAY
C - - - - - 0x01F190 07:F180: B9 D6 03  LDA ram_03D6_obj_spr_A,Y
C - - - - - 0x01F193 07:F183: 9D 76 07  STA ram_0776_obj_flags,X
C - - - - - 0x01F196 07:F186: BC 1E 07  LDY ram_071E_obj_queue_id,X
bra_F189:
C - - - - - 0x01F199 07:F189: A9 00     LDA #$00
C - - - - - 0x01F19B 07:F18B: 85 04     STA ram_0004_temp
C - - - - - 0x01F19D 07:F18D: B9 00 78  LDA ram_7800_round_obj_flags,Y
C - - - - - 0x01F1A0 07:F190: 29 1F     AND #$1F
; * 10
C - - - - - 0x01F1A2 07:F192: 0A        ASL
C - - - - - 0x01F1A3 07:F193: 26 04     ROL ram_0004_temp
C - - - - - 0x01F1A5 07:F195: 0A        ASL
C - - - - - 0x01F1A6 07:F196: 26 04     ROL ram_0004_temp
C - - - - - 0x01F1A8 07:F198: 0A        ASL
C - - - - - 0x01F1A9 07:F199: 26 04     ROL ram_0004_temp
C - - - - - 0x01F1AB 07:F19B: 0A        ASL
C - - - - - 0x01F1AC 07:F19C: 26 04     ROL ram_0004_temp
C - - - - - 0x01F1AE 07:F19E: 18        CLC
C - - - - - 0x01F1AF 07:F19F: 69 08     ADC #$08
C - - - - - 0x01F1B1 07:F1A1: 9D 84 06  STA ram_obj_pos_Y_lo,X
C - - - - - 0x01F1B4 07:F1A4: A5 04     LDA ram_0004_temp
C - - - - - 0x01F1B6 07:F1A6: 9D 9A 06  STA ram_obj_pos_Y_hi,X
C - - - - - 0x01F1B9 07:F1A9: A5 01     LDA ram_0001_t11_hi
C - - - - - 0x01F1BB 07:F1AB: 85 04     STA ram_0004_temp
C - - - - - 0x01F1BD 07:F1AD: A5 00     LDA ram_0000_t88_lo
; * 08
C - - - - - 0x01F1BF 07:F1AF: 0A        ASL
C - - - - - 0x01F1C0 07:F1B0: 26 04     ROL ram_0004_temp
C - - - - - 0x01F1C2 07:F1B2: 0A        ASL
C - - - - - 0x01F1C3 07:F1B3: 26 04     ROL ram_0004_temp
C - - - - - 0x01F1C5 07:F1B5: 0A        ASL
C - - - - - 0x01F1C6 07:F1B6: 26 04     ROL ram_0004_temp
C - - - - - 0x01F1C8 07:F1B8: 09 08     ORA #$08
C - - - - - 0x01F1CA 07:F1BA: 9D 42 06  STA ram_obj_pos_X_lo,X
C - - - - - 0x01F1CD 07:F1BD: A5 04     LDA ram_0004_temp
C - - - - - 0x01F1CF 07:F1BF: 9D 58 06  STA ram_obj_pos_X_hi,X
C - - - - - 0x01F1D2 07:F1C2: BD 76 07  LDA ram_0776_obj_flags,X
C - - - - - 0x01F1D5 07:F1C5: 05 03     ORA ram_0003_temp
C - - - - - 0x01F1D7 07:F1C7: 9D 76 07  STA ram_0776_obj_flags,X
C - - - - - 0x01F1DA 07:F1CA: A5 02     LDA ram_0002_temp
C - - - - - 0x01F1DC 07:F1CC: 9D C6 06  STA ram_obj_spd_X_lo,X
C - - - - - 0x01F1DF 07:F1CF: A9 80     LDA #$80
C - - - - - 0x01F1E1 07:F1D1: 9D B0 06  STA ram_obj_spd_X_fr,X
C - - - - - 0x01F1E4 07:F1D4: A9 01     LDA #$01
C - - - - - 0x01F1E6 07:F1D6: 9D 34 07  STA ram_0734_obj,X
C - - - - - 0x01F1E9 07:F1D9: AD 92 03  LDA ram_0392_for_0708
C - - - - - 0x01F1EC 07:F1DC: 9D 08 07  STA ram_0708_obj_flags,X
loc_F1DF_skip:
C D 3 - - - 0x01F1EF 07:F1DF: B9 00 78  LDA ram_7800_round_obj_flags,Y
C - - - - - 0x01F1F2 07:F1E2: 30 03     BMI bra_F1E7_RTS
C - - - - - 0x01F1F4 07:F1E4: 4C 1C F1  JMP loc_F11C_loop
bra_F1E7_RTS:
C - - - - - 0x01F1F7 07:F1E7: 60        RTS



sub_F1E8:
C - - - - - 0x01F1F8 07:F1E8: A5 00     LDA ram_0000_t88_lo
C - - - - - 0x01F1FA 07:F1EA: 48        PHA
C - - - - - 0x01F1FB 07:F1EB: A5 01     LDA ram_0001_t11_hi
C - - - - - 0x01F1FD 07:F1ED: 48        PHA
C - - - - - 0x01F1FE 07:F1EE: AD 00 03  LDA ram_0300
C - - - - - 0x01F201 07:F1F1: 18        CLC
C - - - - - 0x01F202 07:F1F2: 69 0C     ADC #< $000C
C - - - - - 0x01F204 07:F1F4: 85 00     STA ram_0000_t88_lo
C - - - - - 0x01F206 07:F1F6: AD 01 03  LDA ram_0301
C - - - - - 0x01F209 07:F1F9: 69 00     ADC #> $000C
C - - - - - 0x01F20B 07:F1FB: 85 01     STA ram_0001_t11_hi
loc_F1FD:
C D 3 - - - 0x01F20D 07:F1FD: 20 E5 F0  JSR sub_F0E5
C - - - - - 0x01F210 07:F200: F0 1C     BEQ bra_F21E
C - - - - - 0x01F212 07:F202: A2 08     LDX #$08
C - - - - - 0x01F214 07:F204: 88        DEY
loc_F205_loop:
C D 3 - - - 0x01F215 07:F205: C8        INY
C - - - - - 0x01F216 07:F206: B9 00 79  LDA ram_7900_round_obj_id,Y
C - - - - - 0x01F219 07:F209: 30 03     BMI bra_F20E
C - - - - - 0x01F21B 07:F20B: 4C 16 F2  JMP loc_F216
bra_F20E:
C - - - - - 0x01F21E 07:F20E: B9 00 78  LDA ram_7800_round_obj_flags,Y
C - - - - - 0x01F221 07:F211: 29 BF     AND #$BF
C - - - - - 0x01F223 07:F213: 99 00 78  STA ram_7800_round_obj_flags,Y
loc_F216:
C D 3 - - - 0x01F226 07:F216: B9 00 78  LDA ram_7800_round_obj_flags,Y
C - - - - - 0x01F229 07:F219: 30 03     BMI bra_F21E
C - - - - - 0x01F22B 07:F21B: 4C 05 F2  JMP loc_F205_loop
bra_F21E:
C - - - - - 0x01F22E 07:F21E: 68        PLA
C - - - - - 0x01F22F 07:F21F: 85 01     STA ram_0001_t11_hi
C - - - - - 0x01F231 07:F221: 68        PLA
C - - - - - 0x01F232 07:F222: 85 00     STA ram_0000_t88_lo
C - - - - - 0x01F234 07:F224: 60        RTS



sub_F225:
C - - - - - 0x01F235 07:F225: A5 00     LDA ram_0000_t88_lo
C - - - - - 0x01F237 07:F227: 48        PHA
C - - - - - 0x01F238 07:F228: A5 01     LDA ram_0001_t11_hi
C - - - - - 0x01F23A 07:F22A: 48        PHA
C - - - - - 0x01F23B 07:F22B: AD 02 03  LDA ram_0302
C - - - - - 0x01F23E 07:F22E: 18        CLC
C - - - - - 0x01F23F 07:F22F: 69 F4     ADC #< $FFF4
C - - - - - 0x01F241 07:F231: 85 00     STA ram_0000_t88_lo
C - - - - - 0x01F243 07:F233: AD 03 03  LDA ram_0303
C - - - - - 0x01F246 07:F236: 69 FF     ADC #> $FFF4
C - - - - - 0x01F248 07:F238: 85 01     STA ram_0001_t11_hi
C - - - - - 0x01F24A 07:F23A: 4C FD F1  JMP loc_F1FD



sub_0x01F24D:
C - - - - - 0x01F24D 07:F23D: BD 84 06  LDA ram_obj_pos_Y_lo,X
C - - - - - 0x01F250 07:F240: 85 06     STA ram_0006_temp
C - - - - - 0x01F252 07:F242: BD 9A 06  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x01F255 07:F245: 85 07     STA ram_0007_temp
sub_0x01F257:
C - - - - - 0x01F257 07:F247: BD 42 06  LDA ram_obj_pos_X_lo,X
C - - - - - 0x01F25A 07:F24A: 85 04     STA ram_0004_temp
C - - - - - 0x01F25C 07:F24C: BD 58 06  LDA ram_obj_pos_X_hi,X
C - - - - - 0x01F25F 07:F24F: 85 05     STA ram_0005_temp
sub_F251:   ; check which block are you near to?
sub_0x01F261:
C - - - - - 0x01F261 07:F251: A0 00     LDY #$00
C - - - - - 0x01F263 07:F253: A5 07     LDA ram_0007_temp
C - - - - - 0x01F265 07:F255: 30 1E     BMI bra_F275
C - - - - - 0x01F267 07:F257: F0 14     BEQ bra_F26D
C - - - - - 0x01F269 07:F259: 4A        LSR
C - - - - - 0x01F26A 07:F25A: D0 04     BNE bra_F260
C - - - - - 0x01F26C 07:F25C: A5 06     LDA ram_0006_temp
C - - - - - 0x01F26E 07:F25E: 10 10     BPL bra_F270
bra_F260:
C - - - - - 0x01F270 07:F260: A0 17     LDY #$17
C - - - - - 0x01F272 07:F262: 20 75 F2  JSR sub_F275
C - - - - - 0x01F275 07:F265: F0 05     BEQ bra_F26C_RTS
C - - - - - 0x01F277 07:F267: A9 01     LDA #$01
C - - - - - 0x01F279 07:F269: A8        TAY ; 01
C - - - - - 0x01F27A 07:F26A: 85 0F     STA ram_000F
bra_F26C_RTS:
C - - - - - 0x01F27C 07:F26C: 60        RTS
bra_F26D:
C - - - - - 0x01F27D 07:F26D: 4A        LSR
C - - - - - 0x01F27E 07:F26E: A5 06     LDA ram_0006_temp
bra_F270:
C - - - - - 0x01F280 07:F270: 6A        ROR
; / 08
C - - - - - 0x01F281 07:F271: 4A        LSR
C - - - - - 0x01F282 07:F272: 4A        LSR
C - - - - - 0x01F283 07:F273: 4A        LSR
C - - - - - 0x01F284 07:F274: A8        TAY
bra_F275:
sub_F275:
C - - - - - 0x01F285 07:F275: A5 05     LDA ram_0005_temp
C - - - - - 0x01F287 07:F277: 29 01     AND #$01
C - - - - - 0x01F289 07:F279: 09 30     ORA #$30
C - - - - - 0x01F28B 07:F27B: 85 01     STA ram_0000_t12_data + $01
C - - - - - 0x01F28D 07:F27D: A5 04     LDA ram_0004_temp
C - - - - - 0x01F28F 07:F27F: 29 F0     AND #$F0
C - - - - - 0x01F291 07:F281: 0A        ASL
C - - - - - 0x01F292 07:F282: 26 01     ROL ram_0000_t12_data + $01
C - - - - - 0x01F294 07:F284: 85 00     STA ram_0000_t12_data
C - - - - - 0x01F296 07:F286: B1 00     LDA (ram_0000_t12_data),Y
C - - - - - 0x01F298 07:F288: A8        TAY
C - - - - - 0x01F299 07:F289: B1 CA     LDA (ram_00CA_t01_data),Y
C - - - - - 0x01F29B 07:F28B: 29 0F     AND #$0F
C - - - - - 0x01F29D 07:F28D: A8        TAY
C - - - - - 0x01F29E 07:F28E: 85 0F     STA ram_000F
C - - - - - 0x01F2A0 07:F290: 60        RTS



loc_F291:
C D 3 - - - 0x01F2A1 07:F291: A9 00     LDA #$00
C - - - - - 0x01F2A3 07:F293: 85 0F     STA ram_000F
C - - - - - 0x01F2A5 07:F295: 60        RTS



sub_F296:
sub_0x01F2A6:
C - - - - - 0x01F2A6 07:F296: A5 07     LDA ram_0007_temp
C - - - - - 0x01F2A8 07:F298: 10 03     BPL bra_F29D
C - - - - - 0x01F2AA 07:F29A: 4C 91 F2  JMP loc_F291
bra_F29D:
C - - - - - 0x01F2AD 07:F29D: A5 06     LDA ram_0006_temp
C - - - - - 0x01F2AF 07:F29F: 38        SEC
C - - - - - 0x01F2B0 07:F2A0: E9 80     SBC #$80
C - - - - - 0x01F2B2 07:F2A2: A5 07     LDA ram_0007_temp
C - - - - - 0x01F2B4 07:F2A4: E9 01     SBC #$01
C - - - - - 0x01F2B6 07:F2A6: 90 03     BCC bra_F2AB
C - - - - - 0x01F2B8 07:F2A8: 4C 91 F2  JMP loc_F291
bra_F2AB:
C - - - - - 0x01F2BB 07:F2AB: A5 05     LDA ram_0005_temp
C - - - - - 0x01F2BD 07:F2AD: 10 03     BPL bra_F2B2
- - - - - - 0x01F2BF 07:F2AF: 4C 91 F2  JMP loc_F291
bra_F2B2:
C - - - - - 0x01F2C2 07:F2B2: A5 04     LDA ram_0004_temp
C - - - - - 0x01F2C4 07:F2B4: 38        SEC
C - - - - - 0x01F2C5 07:F2B5: E5 BD     SBC ram_00BD
C - - - - - 0x01F2C7 07:F2B7: 85 08     STA ram_0008_temp
C - - - - - 0x01F2C9 07:F2B9: A5 05     LDA ram_0005_temp
C - - - - - 0x01F2CB 07:F2BB: E5 BB     SBC ram_00BB
C - - - - - 0x01F2CD 07:F2BD: 85 09     STA ram_0009_t01
C - - - - - 0x01F2CF 07:F2BF: A5 08     LDA ram_0008_temp
C - - - - - 0x01F2D1 07:F2C1: 38        SEC
C - - - - - 0x01F2D2 07:F2C2: E9 F0     SBC #< $00F0
C - - - - - 0x01F2D4 07:F2C4: A5 09     LDA ram_0009_t01
C - - - - - 0x01F2D6 07:F2C6: E9 00     SBC #> $00F0
C - - - - - 0x01F2D8 07:F2C8: 30 03     BMI bra_F2CD
C - - - - - 0x01F2DA 07:F2CA: 4C 91 F2  JMP loc_F291
bra_F2CD:
C - - - - - 0x01F2DD 07:F2CD: A5 05     LDA ram_0005_temp
C - - - - - 0x01F2DF 07:F2CF: 29 01     AND #$01
C - - - - - 0x01F2E1 07:F2D1: 09 30     ORA #$30
C - - - - - 0x01F2E3 07:F2D3: 85 01     STA ram_0000_t11_data + $01
C - - - - - 0x01F2E5 07:F2D5: A5 04     LDA ram_0004_temp
C - - - - - 0x01F2E7 07:F2D7: 29 F0     AND #$F0
C - - - - - 0x01F2E9 07:F2D9: 85 D3     STA ram_00D3
C - - - - - 0x01F2EB 07:F2DB: 0A        ASL
C - - - - - 0x01F2EC 07:F2DC: 26 01     ROL ram_0000_t11_data + $01
C - - - - - 0x01F2EE 07:F2DE: 85 00     STA ram_0000_t11_data
C - - - - - 0x01F2F0 07:F2E0: A5 07     LDA ram_0007_temp
C - - - - - 0x01F2F2 07:F2E2: 4A        LSR
C - - - - - 0x01F2F3 07:F2E3: A5 06     LDA ram_0006_temp
C - - - - - 0x01F2F5 07:F2E5: 6A        ROR
; / 08
C - - - - - 0x01F2F6 07:F2E6: 4A        LSR
C - - - - - 0x01F2F7 07:F2E7: 4A        LSR
C - - - - - 0x01F2F8 07:F2E8: 4A        LSR
C - - - - - 0x01F2F9 07:F2E9: 85 D4     STA ram_00D4
C - - - - - 0x01F2FB 07:F2EB: A8        TAY
C - - - - - 0x01F2FC 07:F2EC: 05 00     ORA ram_0000_t11_data
C - - - - - 0x01F2FE 07:F2EE: 85 D0     STA ram_00D0_t01_data
C - - - - - 0x01F300 07:F2F0: A5 01     LDA ram_0000_t11_data + $01
C - - - - - 0x01F302 07:F2F2: 85 D1     STA ram_00D0_t01_data + $01
C - - - - - 0x01F304 07:F2F4: B1 00     LDA (ram_0000_t11_data),Y
C - - - - - 0x01F306 07:F2F6: A8        TAY
C - - - - - 0x01F307 07:F2F7: B1 CA     LDA (ram_00CA_t01_data),Y
C - - - - - 0x01F309 07:F2F9: 29 30     AND #$30
C - - - - - 0x01F30B 07:F2FB: 85 0F     STA ram_000F
C - - - - - 0x01F30D 07:F2FD: 60        RTS



ofs_004_F2FE_04:
C - - J - - 0x01F30E 07:F2FE: 20 B9 C9  JSR sub_C9B9_disable_rendering
C - - - - - 0x01F311 07:F301: 20 04 FF  JSR sub_FF04_turn_off_music_and_sfx
C - - - - - 0x01F314 07:F304: 20 80 E1  JSR sub_E180_hide_all_sprites_and_clear_memory
C - - - - - 0x01F317 07:F307: A0 00     LDY #$00
bra_F309_loop:
C - - - - - 0x01F319 07:F309: 98        TYA
; * 04
C - - - - - 0x01F31A 07:F30A: 0A        ASL
C - - - - - 0x01F31B 07:F30B: 0A        ASL
C - - - - - 0x01F31C 07:F30C: 99 00 02  STA ram_spr_Y,Y
C - - - - - 0x01F31F 07:F30F: C8        INY
C - - - - - 0x01F320 07:F310: A9 E1     LDA #$E1
C - - - - - 0x01F322 07:F312: 99 00 02  STA ram_spr_T - $01,Y
C - - - - - 0x01F325 07:F315: C8        INY
C - - - - - 0x01F326 07:F316: C8        INY
C - - - - - 0x01F327 07:F317: A9 F8     LDA #$F8
C - - - - - 0x01F329 07:F319: 99 00 02  STA ram_spr_X - $03,Y
C - - - - - 0x01F32C 07:F31C: C8        INY
C - - - - - 0x01F32D 07:F31D: C0 30     CPY #$30
C - - - - - 0x01F32F 07:F31F: 90 E8     BCC bra_F309_loop
C - - - - - 0x01F331 07:F321: A9 00     LDA #$00
C - - - - - 0x01F333 07:F323: 85 E7     STA ram_data_btn_demo + $01
C - - - - - 0x01F335 07:F325: 85 E5     STA ram_btn_demo
C - - - - - 0x01F337 07:F327: 8D F6 03  STA ram_03F6
C - - - - - 0x01F33A 07:F32A: A9 08     LDA #con_chr_bank + $08
C - - - - - 0x01F33C 07:F32C: 85 B3     STA ram_irq_chr_bank
C - - - - - 0x01F33E 07:F32E: A9 01     LDA #$01
C - - - - - 0x01F340 07:F330: 85 E8     STA ram_timer_demo_btn
; bzk optimize, bits 1-7 are not used in ram_demo_flag
C - - - - - 0x01F342 07:F332: A5 E4     LDA ram_demo_flag
C - - - - - 0x01F344 07:F334: 29 01     AND #$01
C - - - - - 0x01F346 07:F336: 85 E4     STA ram_demo_flag
C - - - - - 0x01F348 07:F338: A5 E4     LDA ram_demo_flag   ; bzk optimize, loading the same A
C - - - - - 0x01F34A 07:F33A: F0 23     BEQ bra_F35F_not_demo
; if demo
C - - - - - 0x01F34C 07:F33C: A9 00     LDA #$00
C - - - - - 0x01F34E 07:F33E: 8D CE 03  STA ram_03CE
C - - - - - 0x01F351 07:F341: 8D CF 03  STA ram_03CF
C - - - - - 0x01F354 07:F344: 8D 0D 04  STA ram_040D
C - - - - - 0x01F357 07:F347: 8D 0C 04  STA ram_040C
C - - - - - 0x01F35A 07:F34A: 8D 11 04  STA ram_0411
C - - - - - 0x01F35D 07:F34D: 8D 0E 04  STA ram_040E
C - - - - - 0x01F360 07:F350: 8D 12 04  STA ram_0412
C - - - - - 0x01F363 07:F353: 8D 2F 04  STA ram_042F
C - - - - - 0x01F366 07:F356: 8D 30 04  STA ram_0430
C - - - - - 0x01F369 07:F359: 8D 31 04  STA ram_0431
C - - - - - 0x01F36C 07:F35C: 8D 32 04  STA ram_0432
bra_F35F_not_demo:
C - - - - - 0x01F36F 07:F35F: A5 33     LDA ram_round
C - - - - - 0x01F371 07:F361: 8D F7 03  STA ram_copy_round
C - - - - - 0x01F374 07:F364: A9 00     LDA #$00
C - - - - - 0x01F376 07:F366: 85 D5     STA ram_00D5
C - - - - - 0x01F378 07:F368: 8D B7 03  STA ram_03B7
C - - - - - 0x01F37B 07:F36B: 8D CD 03  STA ram_03CD
C - - - - - 0x01F37E 07:F36E: 8D FA 03  STA ram_03FA
C - - - - - 0x01F381 07:F371: 8D C4 03  STA ram_03C4
C - - - - - 0x01F384 07:F374: 8D B9 03  STA ram_03B9
C - - - - - 0x01F387 07:F377: 8D AF 03  STA ram_03AF
C - - - - - 0x01F38A 07:F37A: 8D B0 03  STA ram_03B0
C - - - - - 0x01F38D 07:F37D: 8D B1 03  STA ram_03B1
C - - - - - 0x01F390 07:F380: 8D 1D 04  STA ram_041D
C - - - - - 0x01F393 07:F383: A9 03     LDA #$03    ; jumping when respawning
C - - - - - 0x01F395 07:F385: 8D C2 03  STA ram_03C2_felix_state
C - - - - - 0x01F398 07:F388: A9 00     LDA #< ram_data_6A00
C - - - - - 0x01F39A 07:F38A: 85 CA     STA ram_00CA_t01_data
C - - - - - 0x01F39C 07:F38C: A9 6A     LDA #> ram_data_6A00
C - - - - - 0x01F39E 07:F38E: 85 CB     STA ram_00CA_t01_data + $01
C - - - - - 0x01F3A0 07:F390: A9 15     LDA #$15
C - - - - - 0x01F3A2 07:F392: 85 39     STA ram_0039
C - - - - - 0x01F3A4 07:F394: A9 BC     LDA #$BC
C - - - - - 0x01F3A6 07:F396: 85 12     STA ram_0012_scanline
C - - - - - 0x01F3A8 07:F398: A9 00     LDA #$00
C - - - - - 0x01F3AA 07:F39A: 85 15     STA ram_0015
C - - - - - 0x01F3AC 07:F39C: A9 00     LDA #$00
C - - - - - 0x01F3AE 07:F39E: 85 19     STA ram_0019
C - - - - - 0x01F3B0 07:F3A0: A9 00     LDA #$00
C - - - - - 0x01F3B2 07:F3A2: 85 1B     STA ram_001B
C - - - - - 0x01F3B4 07:F3A4: A9 8E     LDA #< tbl_FA8E
C - - - - - 0x01F3B6 07:F3A6: 85 00     STA ram_0000_t14_screen_objects_data
C - - - - - 0x01F3B8 07:F3A8: A9 FA     LDA #> tbl_FA8E
C - - - - - 0x01F3BA 07:F3AA: 85 01     STA ram_0000_t14_screen_objects_data + $01
C - - - - - 0x01F3BC 07:F3AC: A2 00     LDX #$00
C - - - - - 0x01F3BE 07:F3AE: 20 9F E1  JSR sub_E19F_prepare_screen_objects
C - - - - - 0x01F3C1 07:F3B1: A9 08     LDA #$08
C - - - - - 0x01F3C3 07:F3B3: 8D 15 04  STA ram_0415
C - - - - - 0x01F3C6 07:F3B6: 8D 16 04  STA ram_0416
C - - - - - 0x01F3C9 07:F3B9: 8D 17 04  STA ram_0417
C - - - - - 0x01F3CC 07:F3BC: 8D 18 04  STA ram_0418
C - - - - - 0x01F3CF 07:F3BF: A9 10     LDA #$10
C - - - - - 0x01F3D1 07:F3C1: 8D 19 04  STA ram_0419
C - - - - - 0x01F3D4 07:F3C4: A9 08     LDA #$08
C - - - - - 0x01F3D6 07:F3C6: 8D 1A 04  STA ram_041A
C - - - - - 0x01F3D9 07:F3C9: 8D 1B 04  STA ram_041B
C - - - - - 0x01F3DC 07:F3CC: 8D 1C 04  STA ram_041C
C - - - - - 0x01F3DF 07:F3CF: AD 0D 04  LDA ram_040D
C - - - - - 0x01F3E2 07:F3D2: D0 28     BNE bra_F3FC
C - - - - - 0x01F3E4 07:F3D4: A9 12     LDA #$12
C - - - - - 0x01F3E6 07:F3D6: 8D A9 03  STA ram_time
C - - - - - 0x01F3E9 07:F3D9: A9 10     LDA #$10
C - - - - - 0x01F3EB 07:F3DB: 8D AA 03  STA ram_time + $01
C - - - - - 0x01F3EE 07:F3DE: 8D AB 03  STA ram_time + $02
C - - - - - 0x01F3F1 07:F3E1: A6 33     LDX ram_round
C - - - - - 0x01F3F3 07:F3E3: BD 09 E5  LDA tbl_E509_round_data,X
C - - - - - 0x01F3F6 07:F3E6: 10 05     BPL bra_F3ED
C - - - - - 0x01F3F8 07:F3E8: A9 15     LDA #$15
C - - - - - 0x01F3FA 07:F3EA: 8D AA 03  STA ram_time + $01
bra_F3ED:
C - - - - - 0x01F3FD 07:F3ED: A9 00     LDA #$00
C - - - - - 0x01F3FF 07:F3EF: 8D AC 03  STA ram_03AC
C - - - - - 0x01F402 07:F3F2: A9 0A     LDA #> $0A96
C - - - - - 0x01F404 07:F3F4: 8D C0 03  STA ram_03C0_weapon_timer_hi
C - - - - - 0x01F407 07:F3F7: A9 96     LDA #< $0A96
C - - - - - 0x01F409 07:F3F9: 8D C1 03  STA ram_03C1_weapon_timer_lo
bra_F3FC:
C - - - - - 0x01F40C 07:F3FC: A9 C1     LDA #< tbl_FAC1_status_bar
C - - - - - 0x01F40E 07:F3FE: 85 00     STA ram_0000_t09_screen_data
C - - - - - 0x01F410 07:F400: A9 FA     LDA #> tbl_FAC1_status_bar
C - - - - - 0x01F412 07:F402: 85 01     STA ram_0000_t09_screen_data + $01
C - - - - - 0x01F414 07:F404: 20 C2 C7  JSR sub_C7C2_prepare_screen_data
C - - - - - 0x01F417 07:F407: 20 75 C1  JSR sub_C175_wait_for_nmi_to_end
C - - - - - 0x01F41A 07:F40A: A9 30     LDA #$30
C - - - - - 0x01F41C 07:F40C: 8D 42 06  STA ram_obj_pos_X_lo
C - - - - - 0x01F41F 07:F40F: A9 00     LDA #$00
C - - - - - 0x01F421 07:F411: 8D 58 06  STA ram_obj_pos_X_hi
C - - - - - 0x01F424 07:F414: AD 0C 04  LDA ram_040C
C - - - - - 0x01F427 07:F417: C9 03     CMP #$03
C - - - - - 0x01F429 07:F419: D0 20     BNE bra_F43B
C - - - - - 0x01F42B 07:F41B: A5 33     LDA ram_round
C - - - - - 0x01F42D 07:F41D: C9 16     CMP #$16
C - - - - - 0x01F42F 07:F41F: D0 1A     BNE bra_F43B
C - - - - - 0x01F431 07:F421: AD 11 04  LDA ram_0411
C - - - - - 0x01F434 07:F424: D0 15     BNE bra_F43B
C - - - - - 0x01F436 07:F426: A9 30     LDA #$30
C - - - - - 0x01F438 07:F428: 8D 42 06  STA ram_obj_pos_X_lo
C - - - - - 0x01F43B 07:F42B: A9 F0     LDA #$F0
C - - - - - 0x01F43D 07:F42D: 8D 84 06  STA ram_obj_pos_Y_lo
C - - - - - 0x01F440 07:F430: AD 0E 04  LDA ram_040E
C - - - - - 0x01F443 07:F433: F0 4E     BEQ bra_F483
C - - - - - 0x01F445 07:F435: 38        SEC
C - - - - - 0x01F446 07:F436: E9 01     SBC #$01
C - - - - - 0x01F448 07:F438: 4C 64 F4  JMP loc_F464
bra_F43B:
C - - - - - 0x01F44B 07:F43B: AD 0E 04  LDA ram_040E
C - - - - - 0x01F44E 07:F43E: F0 46     BEQ bra_F486
C - - - - - 0x01F450 07:F440: AD 0D 04  LDA ram_040D
C - - - - - 0x01F453 07:F443: F0 41     BEQ bra_F486
C - - - - - 0x01F455 07:F445: C9 08     CMP #$08
C - - - - - 0x01F457 07:F447: B0 3D     BCS bra_F486
C - - - - - 0x01F459 07:F449: C9 01     CMP #$01
C - - - - - 0x01F45B 07:F44B: D0 10     BNE bra_F45D
C - - - - - 0x01F45D 07:F44D: A9 30     LDA #$30
C - - - - - 0x01F45F 07:F44F: 8D 42 06  STA ram_obj_pos_X_lo
C - - - - - 0x01F462 07:F452: A9 80     LDA #$80
C - - - - - 0x01F464 07:F454: 8D 84 06  STA ram_obj_pos_Y_lo
C - - - - - 0x01F467 07:F457: 20 C7 F6  JSR sub_F6C7
C - - - - - 0x01F46A 07:F45A: 4C 86 F4  JMP loc_F486
bra_F45D:
C - - - - - 0x01F46D 07:F45D: AD 0E 04  LDA ram_040E
C - - - - - 0x01F470 07:F460: 38        SEC
C - - - - - 0x01F471 07:F461: ED CE 03  SBC ram_03CE
loc_F464:
C D 3 - - - 0x01F474 07:F464: 8D 58 06  STA ram_obj_pos_X_hi
C - - - - - 0x01F477 07:F467: AD 0F 04  LDA ram_040F
C - - - - - 0x01F47A 07:F46A: 8D 42 06  STA ram_obj_pos_X_lo
C - - - - - 0x01F47D 07:F46D: A9 00     LDA #$00
C - - - - - 0x01F47F 07:F46F: 8D 9A 06  STA ram_obj_pos_Y_hi
C - - - - - 0x01F482 07:F472: AD 10 04  LDA ram_0410
C - - - - - 0x01F485 07:F475: 38        SEC
C - - - - - 0x01F486 07:F476: E9 08     SBC #$08
C - - - - - 0x01F488 07:F478: 29 F8     AND #$F8
C - - - - - 0x01F48A 07:F47A: 8D 84 06  STA ram_obj_pos_Y_lo
C - - - - - 0x01F48D 07:F47D: 0E 84 06  ASL ram_obj_pos_Y_lo
C - - - - - 0x01F490 07:F480: 2E 9A 06  ROL ram_obj_pos_Y_hi
bra_F483:
C - - - - - 0x01F493 07:F483: 20 C7 F6  JSR sub_F6C7
bra_F486:
loc_F486:
C D 3 - - - 0x01F496 07:F486: 20 37 FC  JSR sub_FC37
C - - - - - 0x01F499 07:F489: 20 75 C1  JSR sub_C175_wait_for_nmi_to_end
C - - - - - 0x01F49C 07:F48C: AD 0D 04  LDA ram_040D
C - - - - - 0x01F49F 07:F48F: C9 08     CMP #$08
C - - - - - 0x01F4A1 07:F491: F0 03     BEQ bra_F496
C - - - - - 0x01F4A3 07:F493: 4C DB F5  JMP loc_F5DB
bra_F496:
C - - - - - 0x01F4A6 07:F496: AD 11 04  LDA ram_0411
C - - - - - 0x01F4A9 07:F499: F0 03     BEQ bra_F49E
C - - - - - 0x01F4AB 07:F49B: 4C 99 F5  JMP loc_F599
bra_F49E:
C - - - - - 0x01F4AE 07:F49E: A4 33     LDY ram_round
C - - - - - 0x01F4B0 07:F4A0: C8        INY
C - - - - - 0x01F4B1 07:F4A1: B9 09 E5  LDA tbl_E509_round_data,Y
C - - - - - 0x01F4B4 07:F4A4: 29 70     AND #$70
C - - - - - 0x01F4B6 07:F4A6: F0 03     BEQ bra_F4AB
- - - - - - 0x01F4B8 07:F4A8: 4C 99 F5  JMP loc_F599
bra_F4AB:
C - - - - - 0x01F4BB 07:F4AB: A2 0A     LDX #$0A
C - - - - - 0x01F4BD 07:F4AD: A9 27     LDA #con_obj_id_27
C - - - - - 0x01F4BF 07:F4AF: 9D 00 06  STA ram_0600_obj_id,X
C - - - - - 0x01F4C2 07:F4B2: A9 00     LDA #$00
C - - - - - 0x01F4C4 07:F4B4: 9D 1E 07  STA ram_071E_obj_queue_id,X
C - - - - - 0x01F4C7 07:F4B7: A9 40     LDA #$40
C - - - - - 0x01F4C9 07:F4B9: 8D 00 78  STA ram_7800_round_obj_flags
C - - - - - 0x01F4CC 07:F4BC: A9 01     LDA #$01
C - - - - - 0x01F4CE 07:F4BE: 9D 9A 06  STA ram_obj_pos_Y_hi,X
C - - - - - 0x01F4D1 07:F4C1: A9 00     LDA #$00
C - - - - - 0x01F4D3 07:F4C3: 9D 84 06  STA ram_obj_pos_Y_lo,X
C - - - - - 0x01F4D6 07:F4C6: A9 D0     LDA #$D0
C - - - - - 0x01F4D8 07:F4C8: 9D 42 06  STA ram_obj_pos_X_lo,X
C - - - - - 0x01F4DB 07:F4CB: A9 FF     LDA #> $FF80
C - - - - - 0x01F4DD 07:F4CD: 9D C6 06  STA ram_obj_spd_X_lo,X
C - - - - - 0x01F4E0 07:F4D0: A9 80     LDA #< $FF80
C - - - - - 0x01F4E2 07:F4D2: 9D B0 06  STA ram_obj_spd_X_fr,X
C - - - - - 0x01F4E5 07:F4D5: A4 33     LDY ram_round
C - - - - - 0x01F4E7 07:F4D7: B9 09 E5  LDA tbl_E509_round_data,Y
C - - - - - 0x01F4EA 07:F4DA: 29 0F     AND #$0F
C - - - - - 0x01F4EC 07:F4DC: 18        CLC
C - - - - - 0x01F4ED 07:F4DD: 69 03     ADC #$03
C - - - - - 0x01F4EF 07:F4DF: 9D 16 06  STA ram_0616_obj,X
C - - - - - 0x01F4F2 07:F4E2: 9D 34 07  STA ram_0734_obj,X
C - - - - - 0x01F4F5 07:F4E5: 38        SEC
C - - - - - 0x01F4F6 07:F4E6: E9 03     SBC #$03
C - - - - - 0x01F4F8 07:F4E8: A8        TAY
C - - - - - 0x01F4F9 07:F4E9: B9 BE F6  LDA tbl_F6BE,Y
C - - - - - 0x01F4FC 07:F4EC: 9D CE 07  STA ram_07CE_obj_hp,X
C - - - - - 0x01F4FF 07:F4EF: C0 08     CPY #$08
C - - - - - 0x01F501 07:F4F1: D0 05     BNE bra_F4F8
C - - - - - 0x01F503 07:F4F3: A9 FE     LDA #$FE
C - - - - - 0x01F505 07:F4F5: 9D 9A 06  STA ram_obj_pos_Y_hi,X
bra_F4F8:
C - - - - - 0x01F508 07:F4F8: AD 12 04  LDA ram_0412
C - - - - - 0x01F50B 07:F4FB: 10 2F     BPL bra_F52C
C - - - - - 0x01F50D 07:F4FD: C0 08     CPY #$08
C - - - - - 0x01F50F 07:F4FF: D0 2B     BNE bra_F52C
C - - - - - 0x01F511 07:F501: AD 42 06  LDA ram_obj_pos_X_lo
C - - - - - 0x01F514 07:F504: 29 0F     AND #$0F
C - - - - - 0x01F516 07:F506: C9 0F     CMP #$0F
C - - - - - 0x01F518 07:F508: D0 22     BNE bra_F52C
C - - - - - 0x01F51A 07:F50A: AD 2A 04  LDA ram_042A
C - - - - - 0x01F51D 07:F50D: 9D 42 06  STA ram_obj_pos_X_lo,X
C - - - - - 0x01F520 07:F510: AD 2B 04  LDA ram_042B
C - - - - - 0x01F523 07:F513: 9D 58 06  STA ram_obj_pos_X_hi,X
C - - - - - 0x01F526 07:F516: AD 2C 04  LDA ram_042C
C - - - - - 0x01F529 07:F519: 9D CE 07  STA ram_07CE_obj_hp,X
C - - - - - 0x01F52C 07:F51C: A9 00     LDA #$00
C - - - - - 0x01F52E 07:F51E: 9D B0 06  STA ram_obj_spd_X_fr,X
C - - - - - 0x01F531 07:F521: 9D C6 06  STA ram_obj_spd_X_lo,X
C - - - - - 0x01F534 07:F524: 9D 9A 06  STA ram_obj_pos_Y_hi,X
C - - - - - 0x01F537 07:F527: A9 80     LDA #$80
C - - - - - 0x01F539 07:F529: 9D 84 06  STA ram_obj_pos_Y_lo,X
bra_F52C:
C - - - - - 0x01F53C 07:F52C: A6 33     LDX ram_round
C - - - - - 0x01F53E 07:F52E: BD 09 E5  LDA tbl_E509_round_data,X
C - - - - - 0x01F541 07:F531: 29 0F     AND #$0F
C - - - - - 0x01F543 07:F533: A8        TAY
C - - - - - 0x01F544 07:F534: A2 0B     LDX #$0B
C - - - - - 0x01F546 07:F536: A9 26     LDA #con_obj_id_26
C - - - - - 0x01F548 07:F538: 9D 00 06  STA ram_0600_obj_id,X
C - - - - - 0x01F54B 07:F53B: A9 00     LDA #$00
C - - - - - 0x01F54D 07:F53D: 9D 1E 07  STA ram_071E_obj_queue_id,X
C - - - - - 0x01F550 07:F540: A9 01     LDA #$01
C - - - - - 0x01F552 07:F542: 9D 16 06  STA ram_0616_obj,X
C - - - - - 0x01F555 07:F545: 9D 34 07  STA ram_0734_obj,X
C - - - - - 0x01F558 07:F548: A9 20     LDA #$20
C - - - - - 0x01F55A 07:F54A: 9D 42 06  STA ram_obj_pos_X_lo,X
C - - - - - 0x01F55D 07:F54D: B9 87 F6  LDA tbl_F687,Y
C - - - - - 0x01F560 07:F550: 9D 84 06  STA ram_obj_pos_Y_lo,X
C - - - - - 0x01F563 07:F553: A9 14     LDA #$14
C - - - - - 0x01F565 07:F555: 9D CE 07  STA ram_07CE_obj_hp,X
C - - - - - 0x01F568 07:F558: 20 DD C9  JSR sub_C9DD_prg_bankswitch_08
C - - - - - 0x01F56B 07:F55B: A9 00     LDA #< ram_data_6F00
C - - - - - 0x01F56D 07:F55D: 85 00     STA ram_0000_t08_data
C - - - - - 0x01F56F 07:F55F: A9 6F     LDA #> ram_data_6F00
C - - - - - 0x01F571 07:F561: 85 01     STA ram_0000_t08_data + $1
C - - - - - 0x01F573 07:F563: A0 1F     LDY #$1F
bra_F565_loop:
C - - - - - 0x01F575 07:F565: B9 B0 86  LDA tbl_0x0106C0_boss_score_spr_data,Y
C - - - - - 0x01F578 07:F568: 91 00     STA (ram_0000_t08_data),Y
C - - - - - 0x01F57A 07:F56A: 88        DEY
C - - - - - 0x01F57B 07:F56B: D0 F8     BNE bra_F565_loop
; Y = 00
; bzk optimize, delete LDA + STA, use BMI at 0x01F57B
C - - - - - 0x01F57D 07:F56D: B9 B0 86  LDA tbl_0x0106C0_boss_score_spr_data,Y
C - - - - - 0x01F580 07:F570: 91 00     STA (ram_0000_t08_data),Y
C - - - - - 0x01F582 07:F572: A4 33     LDY ram_round
C - - - - - 0x01F584 07:F574: B9 09 E5  LDA tbl_E509_round_data,Y
C - - - - - 0x01F587 07:F577: 29 0F     AND #$0F
C - - - - - 0x01F589 07:F579: 18        CLC
C - - - - - 0x01F58A 07:F57A: 69 01     ADC #$01
C - - - - - 0x01F58C 07:F57C: 0A        ASL
C - - - - - 0x01F58D 07:F57D: 69 C1     ADC #$C1
C - - - - - 0x01F58F 07:F57F: A0 1B     LDY #$1B
C - - - - - 0x01F591 07:F581: 91 00     STA (ram_0000_t08_data),Y
C - - - - - 0x01F593 07:F583: A9 00     LDA #$00
C - - - - - 0x01F595 07:F585: 8D 24 04  STA ram_0424
C - - - - - 0x01F598 07:F588: 8D 25 04  STA ram_0425
C - - - - - 0x01F59B 07:F58B: 8D 26 04  STA ram_0426
C - - - - - 0x01F59E 07:F58E: 8D 28 04  STA ram_0428
C - - - - - 0x01F5A1 07:F591: 8D 29 04  STA ram_0429
C - - - - - 0x01F5A4 07:F594: A9 04     LDA #$04
C - - - - - 0x01F5A6 07:F596: 8D 27 04  STA ram_0427
loc_F599:
C D 3 - - - 0x01F5A9 07:F599: A5 33     LDA ram_round
C - - - - - 0x01F5AB 07:F59B: C9 16     CMP #$16
C - - - - - 0x01F5AD 07:F59D: D0 11     BNE bra_F5B0
C - - - - - 0x01F5AF 07:F59F: AD 11 04  LDA ram_0411
C - - - - - 0x01F5B2 07:F5A2: F0 37     BEQ bra_F5DB
C - - - - - 0x01F5B4 07:F5A4: A9 7A     LDA #con_chr_bank + $7A
C - - - - - 0x01F5B6 07:F5A6: 85 1E     STA ram_chr_bank_spr_2
C - - - - - 0x01F5B8 07:F5A8: A9 6F     LDA #con_chr_bank + $6F
C - - - - - 0x01F5BA 07:F5AA: 85 26     STA ram_chr_bank_bg_4
C - - - - - 0x01F5BC 07:F5AC: A9 11     LDA #con_0041_pal_11
C - - - - - 0x01F5BE 07:F5AE: 85 41     STA ram_0041_palette
bra_F5B0:
C - - - - - 0x01F5C0 07:F5B0: A2 17     LDX #$17
bra_F5B2_loop:
C - - - - - 0x01F5C2 07:F5B2: BD 40 60  LDA ram_6040,X
C - - - - - 0x01F5C5 07:F5B5: A8        TAY
C - - - - - 0x01F5C6 07:F5B6: B9 00 6A  LDA ram_data_6A00,Y
C - - - - - 0x01F5C9 07:F5B9: 29 0F     AND #$0F
C - - - - - 0x01F5CB 07:F5BB: C9 0E     CMP #$0E
C - - - - - 0x01F5CD 07:F5BD: F0 03     BEQ bra_F5C2
C - - - - - 0x01F5CF 07:F5BF: CA        DEX
C - - - - - 0x01F5D0 07:F5C0: D0 F0     BNE bra_F5B2_loop
bra_F5C2:
C - - - - - 0x01F5D2 07:F5C2: E0 00     CPX #$00
C - - - - - 0x01F5D4 07:F5C4: F0 15     BEQ bra_F5DB
C - - - - - 0x01F5D6 07:F5C6: 8A        TXA
; * 08
C - - - - - 0x01F5D7 07:F5C7: 0A        ASL
C - - - - - 0x01F5D8 07:F5C8: 0A        ASL
C - - - - - 0x01F5D9 07:F5C9: 0A        ASL
C - - - - - 0x01F5DA 07:F5CA: 38        SEC
C - - - - - 0x01F5DB 07:F5CB: E9 08     SBC #$08
C - - - - - 0x01F5DD 07:F5CD: 29 F8     AND #$F8
C - - - - - 0x01F5DF 07:F5CF: 8D 84 06  STA ram_obj_pos_Y_lo
C - - - - - 0x01F5E2 07:F5D2: 0E 84 06  ASL ram_obj_pos_Y_lo
C - - - - - 0x01F5E5 07:F5D5: 2E 9A 06  ROL ram_obj_pos_Y_hi
C - - - - - 0x01F5E8 07:F5D8: 20 C7 F6  JSR sub_F6C7
bra_F5DB:
loc_F5DB:
C D 3 - - - 0x01F5EB 07:F5DB: A5 E4     LDA ram_demo_flag
C - - - - - 0x01F5ED 07:F5DD: C9 01     CMP #$01
C - - - - - 0x01F5EF 07:F5DF: D0 07     BNE bra_F5E8_not_demo
; if demo
C - - - - - 0x01F5F1 07:F5E1: A9 83     LDA #con_mus_cfg_83
C - - - - - 0x01F5F3 07:F5E3: A2 07     LDX #$07
C - - - - - 0x01F5F5 07:F5E5: 20 1A FF  JSR sub_FF1A_play_sound
bra_F5E8_not_demo:
C - - - - - 0x01F5F8 07:F5E8: 20 75 C1  JSR sub_C175_wait_for_nmi_to_end
C - - - - - 0x01F5FB 07:F5EB: AD 0D 04  LDA ram_040D
C - - - - - 0x01F5FE 07:F5EE: C9 08     CMP #$08
C - - - - - 0x01F600 07:F5F0: D0 15     BNE bra_F607
C - - - - - 0x01F602 07:F5F2: A5 33     LDA ram_round
C - - - - - 0x01F604 07:F5F4: C9 16     CMP #$16
C - - - - - 0x01F606 07:F5F6: D0 05     BNE bra_F5FD
C - - - - - 0x01F608 07:F5F8: AD 11 04  LDA ram_0411
C - - - - - 0x01F60B 07:F5FB: D0 1C     BNE bra_F619
bra_F5FD:
C - - - - - 0x01F60D 07:F5FD: AD 11 04  LDA ram_0411
C - - - - - 0x01F610 07:F600: D0 05     BNE bra_F607
C - - - - - 0x01F612 07:F602: A9 2F     LDA #con_music_boss_fight
C - - - - - 0x01F614 07:F604: 4C 16 F6  JMP loc_F616
bra_F607:
C - - - - - 0x01F617 07:F607: C9 02     CMP #$02
C - - - - - 0x01F619 07:F609: D0 05     BNE bra_F610
C - - - - - 0x01F61B 07:F60B: A9 00     LDA #$00
C - - - - - 0x01F61D 07:F60D: 8D 0D 04  STA ram_040D
bra_F610:
; bzk optimize, LDX
C - - - - - 0x01F620 07:F610: A5 33     LDA ram_round
C - - - - - 0x01F622 07:F612: AA        TAX
C - - - - - 0x01F623 07:F613: BD 90 F6  LDA tbl_F690,X
loc_F616:
C D 3 - - - 0x01F626 07:F616: 20 1A FF  JSR sub_FF1A_play_sound
bra_F619:
C - - - - - 0x01F629 07:F619: A2 00     LDX #$00
C - - - - - 0x01F62B 07:F61B: 20 F4 CD  JSR sub_CDF4
C - - - - - 0x01F62E 07:F61E: A5 33     LDA ram_round
C - - - - - 0x01F630 07:F620: C9 13     CMP #$13
C - - - - - 0x01F632 07:F622: D0 0A     BNE bra_F62E
; if round in space (8-1)
C - - - - - 0x01F634 07:F624: AD C6 03  LDA ram_03C6_previous_weapon
C - - - - - 0x01F637 07:F627: D0 05     BNE bra_F62E
C - - - - - 0x01F639 07:F629: A9 01     LDA #$01
C - - - - - 0x01F63B 07:F62B: 8D B9 03  STA ram_03B9
bra_F62E:
C - - - - - 0x01F63E 07:F62E: A5 41     LDA ram_0041_palette
C - - - - - 0x01F640 07:F630: C9 11     CMP #con_0041_pal_11
C - - - - - 0x01F642 07:F632: D0 1A     BNE bra_F64E
C - - - - - 0x01F644 07:F634: A9 10     LDA #$10
C - - - - - 0x01F646 07:F636: 8D A9 03  STA ram_time
C - - - - - 0x01F649 07:F639: 8D AA 03  STA ram_time + $01
C - - - - - 0x01F64C 07:F63C: 8D AB 03  STA ram_time + $02
C - - - - - 0x01F64F 07:F63F: AD C6 03  LDA ram_03C6_previous_weapon
C - - - - - 0x01F652 07:F642: F0 0A     BEQ bra_F64E
C - - - - - 0x01F654 07:F644: A9 FF     LDA #$FF
C - - - - - 0x01F656 07:F646: 8D C6 03  STA ram_03C6_previous_weapon
C - - - - - 0x01F659 07:F649: A9 01     LDA #$01
C - - - - - 0x01F65B 07:F64B: 8D B9 03  STA ram_03B9
bra_F64E:
C - - - - - 0x01F65E 07:F64E: A9 00     LDA #$00
C - - - - - 0x01F660 07:F650: 85 36     STA ram_frm_cnt_2
C - - - - - 0x01F662 07:F652: 85 37     STA ram_frm_cnt_3
C - - - - - 0x01F664 07:F654: 85 38     STA ram_0038
C - - - - - 0x01F666 07:F656: 85 2D     STA ram_002D_btn
C - - - - - 0x01F668 07:F658: 85 2E     STA ram_002E_btn
C - - - - - 0x01F66A 07:F65A: 85 2F     STA ram_002F_btn
C - - - - - 0x01F66C 07:F65C: 85 E6     STA ram_data_btn_demo
C - - - - - 0x01F66E 07:F65E: A9 58     LDA #$58    ; 5800, checked at 0x01C99A
C - - - - - 0x01F670 07:F660: 85 E7     STA ram_data_btn_demo + $01
C - - - - - 0x01F672 07:F662: A5 E4     LDA ram_demo_flag
C - - - - - 0x01F674 07:F664: C9 01     CMP #$01
C - - - - - 0x01F676 07:F666: D0 10     BNE bra_F678_not_demo
; if demo
C - - - - - 0x01F678 07:F668: AD 2D 04  LDA ram_demo_round_index
C - - - - - 0x01F67B 07:F66B: 0A        ASL
C - - - - - 0x01F67C 07:F66C: AA        TAX
C - - - - - 0x01F67D 07:F66D: BD 81 F6  LDA tbl_F681_demo_buttons,X
C - - - - - 0x01F680 07:F670: 85 E6     STA ram_data_btn_demo
C - - - - - 0x01F682 07:F672: E8        INX
C - - - - - 0x01F683 07:F673: BD 81 F6  LDA tbl_F681_demo_buttons,X
C - - - - - 0x01F686 07:F676: 85 E7     STA ram_data_btn_demo + $01
bra_F678_not_demo:
C - - - - - 0x01F688 07:F678: 20 BA C8  JSR sub_C8BA_prepare_screen_brightening
C - - - - - 0x01F68B 07:F67B: 20 B2 C9  JSR sub_C9B2_enable_rendering
                                       ;LDA #con_0028_05
C - - - - - 0x01F68E 07:F67E: E6 28     INC ram_main_script ; 04 -> 05
C - - - - - 0x01F690 07:F680: 60        RTS



tbl_F681_demo_buttons:
- D 3 - - - 0x01F691 07:F681: 00 80     .word off_0x008010_demo_buttons_00
- D 3 - - - 0x01F693 07:F683: 92 80     .word off_0x0080A2_demo_buttons_01
- D 3 - - - 0x01F695 07:F685: 32 81     .word off_0x008142_demo_buttons_01



tbl_F687:
- D 3 - - - 0x01F697 07:F687: 20        .byte $20   ; 00 
- D 3 - - - 0x01F698 07:F688: FF        .byte $FF   ; 01 
- D 3 - - - 0x01F699 07:F689: 40        .byte $40   ; 02 
- D 3 - - - 0x01F69A 07:F68A: 40        .byte $40   ; 03 
- D 3 - - - 0x01F69B 07:F68B: 20        .byte $20   ; 04 
- D 3 - - - 0x01F69C 07:F68C: 10        .byte $10   ; 05 
- D 3 - - - 0x01F69D 07:F68D: 00        .byte $00   ; 06 
- - - - - - 0x01F69E 07:F68E: FF        .byte $FF   ; 07 
- D 3 - - - 0x01F69F 07:F68F: FF        .byte $FF   ; 08 



tbl_F690:
- D 3 - - - 0x01F6A0 07:F690: 22        .byte con_music_ost_1   ; 00 
- D 3 - - - 0x01F6A1 07:F691: 22        .byte con_music_ost_1   ; 01 
- D 3 - - - 0x01F6A2 07:F692: 22        .byte con_music_ost_1   ; 02 
- D 3 - - - 0x01F6A3 07:F693: 2C        .byte con_music_ost_2   ; 03 
- D 3 - - - 0x01F6A4 07:F694: 2C        .byte con_music_ost_2   ; 04 
- D 3 - - - 0x01F6A5 07:F695: 2C        .byte con_music_ost_2   ; 05 
- D 3 - - - 0x01F6A6 07:F696: 28        .byte con_music_ost_3   ; 06 
- D 3 - - - 0x01F6A7 07:F697: 28        .byte con_music_ost_3   ; 07 
- D 3 - - - 0x01F6A8 07:F698: 28        .byte con_music_ost_3   ; 08 
- D 3 - - - 0x01F6A9 07:F699: 25        .byte con_music_ost_4   ; 09 
- D 3 - - - 0x01F6AA 07:F69A: 25        .byte con_music_ost_4   ; 0A 
- D 3 - - - 0x01F6AB 07:F69B: 24        .byte con_music_ost_5   ; 0B 
- D 3 - - - 0x01F6AC 07:F69C: 29        .byte con_music_ost_6   ; 0C 
- D 3 - - - 0x01F6AD 07:F69D: 29        .byte con_music_ost_6   ; 0D 
- D 3 - - - 0x01F6AE 07:F69E: 29        .byte con_music_ost_6   ; 0E 
- D 3 - - - 0x01F6AF 07:F69F: 26        .byte con_music_ost_7   ; 0F 
- D 3 - - - 0x01F6B0 07:F6A0: 24        .byte con_music_ost_5   ; 10 
- D 3 - - - 0x01F6B1 07:F6A1: 26        .byte con_music_ost_7   ; 11 
- D 3 - - - 0x01F6B2 07:F6A2: 26        .byte con_music_ost_7   ; 12 
- D 3 - - - 0x01F6B3 07:F6A3: 23        .byte con_music_ost_8   ; 13 
- D 3 - - - 0x01F6B4 07:F6A4: 24        .byte con_music_ost_5   ; 14 
- D 3 - - - 0x01F6B5 07:F6A5: 24        .byte con_music_ost_5   ; 15 
- D 3 - - - 0x01F6B6 07:F6A6: 24        .byte con_music_ost_5   ; 16 



tbl_F6A7_round_type:
- D 3 - - - 0x01F6B7 07:F6A7: 00        .byte $00   ; 00 normal
- D 3 - - - 0x01F6B8 07:F6A8: 00        .byte $00   ; 01 normal
- D 3 - - - 0x01F6B9 07:F6A9: 00        .byte $00   ; 02 normal
- D 3 - - - 0x01F6BA 07:F6AA: 01        .byte $01   ; 03 aerial
- D 3 - - - 0x01F6BB 07:F6AB: 00        .byte $00   ; 04 normal
- D 3 - - - 0x01F6BC 07:F6AC: 00        .byte $00   ; 05 normal
- D 3 - - - 0x01F6BD 07:F6AD: 00        .byte $00   ; 06 normal
- D 3 - - - 0x01F6BE 07:F6AE: 00        .byte $00   ; 07 normal
- D 3 - - - 0x01F6BF 07:F6AF: 01        .byte $01   ; 08 aerial
- D 3 - - - 0x01F6C0 07:F6B0: 00        .byte $00   ; 09 normal
- D 3 - - - 0x01F6C1 07:F6B1: 02        .byte $02   ; 0A on water
- D 3 - - - 0x01F6C2 07:F6B2: 03        .byte $03   ; 0B underwater
- D 3 - - - 0x01F6C3 07:F6B3: 00        .byte $00   ; 0C normal
- D 3 - - - 0x01F6C4 07:F6B4: 01        .byte $01   ; 0D aerial
- D 3 - - - 0x01F6C5 07:F6B5: 00        .byte $00   ; 0E normal
- D 3 - - - 0x01F6C6 07:F6B6: 02        .byte $02   ; 0F on water
- D 3 - - - 0x01F6C7 07:F6B7: 03        .byte $03   ; 00 underwater
- D 3 - - - 0x01F6C8 07:F6B8: 00        .byte $00   ; 01 normal
- D 3 - - - 0x01F6C9 07:F6B9: 00        .byte $00   ; 02 normal
- D 3 - - - 0x01F6CA 07:F6BA: 04        .byte $04   ; 03 space
- D 3 - - - 0x01F6CB 07:F6BB: 00        .byte $00   ; 04 normal
- D 3 - - - 0x01F6CC 07:F6BC: 00        .byte $00   ; 05 normal
- D 3 - - - 0x01F6CD 07:F6BD: 00        .byte $00   ; 06 normal



tbl_F6BE:
- D 3 - - - 0x01F6CE 07:F6BE: 28        .byte $28   ; 00 
- D 3 - - - 0x01F6CF 07:F6BF: 28        .byte $28   ; 01 
- D 3 - - - 0x01F6D0 07:F6C0: 28        .byte $28   ; 02 
- D 3 - - - 0x01F6D1 07:F6C1: 28        .byte $28   ; 03 
- D 3 - - - 0x01F6D2 07:F6C2: 28        .byte $28   ; 04 
- D 3 - - - 0x01F6D3 07:F6C3: 28        .byte $28   ; 05 
- D 3 - - - 0x01F6D4 07:F6C4: 28        .byte $28   ; 06 
- - - - - - 0x01F6D5 07:F6C5: 28        .byte $28   ; 07 
- D 3 - - - 0x01F6D6 07:F6C6: 64        .byte $64   ; 08 



sub_F6C7:
C - - - - - 0x01F6D7 07:F6C7: A5 33     LDA ram_round
C - - - - - 0x01F6D9 07:F6C9: C9 16     CMP #$16
C - - - - - 0x01F6DB 07:F6CB: D0 0C     BNE bra_F6D9
C - - - - - 0x01F6DD 07:F6CD: AD 12 04  LDA ram_0412
C - - - - - 0x01F6E0 07:F6D0: 30 07     BMI bra_F6D9
C - - - - - 0x01F6E2 07:F6D2: AD 11 04  LDA ram_0411
C - - - - - 0x01F6E5 07:F6D5: C9 02     CMP #$02
C - - - - - 0x01F6E7 07:F6D7: 90 05     BCC bra_F6DE
bra_F6D9:
C - - - - - 0x01F6E9 07:F6D9: A9 1C     LDA #con_sfx_1C
C - - - - - 0x01F6EB 07:F6DB: 20 1A FF  JSR sub_FF1A_play_sound
bra_F6DE:
C - - - - - 0x01F6EE 07:F6DE: A9 F7     LDA #$F7
C - - - - - 0x01F6F0 07:F6E0: 8D F2 06  STA ram_obj_spd_Y_lo
C - - - - - 0x01F6F3 07:F6E3: 60        RTS



loc_F6E4:
ofs_004_F6E4_05:
C D 3 J - - 0x01F6F4 07:F6E4: A5 2E     LDA ram_002E_btn
C - - - - - 0x01F6F6 07:F6E6: 29 08     AND #con_btn_Start
C - - - - - 0x01F6F8 07:F6E8: F0 03     BEQ bra_F6ED
C - - - - - 0x01F6FA 07:F6EA: 4C F4 F8  JMP loc_F8F4
bra_F6ED:
C - - - - - 0x01F6FD 07:F6ED: AD F6 03  LDA ram_03F6
C - - - - - 0x01F700 07:F6F0: F0 03     BEQ bra_F6F5
C - - - - - 0x01F702 07:F6F2: 4C 8E F8  JMP loc_F88E
bra_F6F5:
C - - - - - 0x01F705 07:F6F5: E6 37     INC ram_frm_cnt_3
C - - - - - 0x01F707 07:F6F7: AD A9 03  LDA ram_time
C - - - - - 0x01F70A 07:F6FA: 0D AA 03  ORA ram_time + $01
C - - - - - 0x01F70D 07:F6FD: 0D AB 03  ORA ram_time + $02
C - - - - - 0x01F710 07:F700: C9 10     CMP #$10
C - - - - - 0x01F712 07:F702: D0 03     BNE bra_F707
C - - - - - 0x01F714 07:F704: 4C 34 F9  JMP loc_F934
bra_F707:
C - - - - - 0x01F717 07:F707: AD B7 03  LDA ram_03B7
C - - - - - 0x01F71A 07:F70A: F0 58     BEQ bra_F764
C - - - - - 0x01F71C 07:F70C: A9 86     LDA #con_mus_cfg_86
C - - - - - 0x01F71E 07:F70E: 20 1A FF  JSR sub_FF1A_play_sound
C - - - - - 0x01F721 07:F711: E0 2E     CPX #$2E
C - - - - - 0x01F723 07:F713: D0 03     BNE bra_F718
C - - - - - 0x01F725 07:F715: 4C FF F7  JMP loc_F7FF
bra_F718:
C - - - - - 0x01F728 07:F718: AD C6 03  LDA ram_03C6_previous_weapon
C - - - - - 0x01F72B 07:F71B: F0 34     BEQ bra_F751
C - - - - - 0x01F72D 07:F71D: AD C0 03  LDA ram_03C0_weapon_timer_hi
C - - - - - 0x01F730 07:F720: F0 2F     BEQ bra_F751
C - - - - - 0x01F732 07:F722: AD C1 03  LDA ram_03C1_weapon_timer_lo
C - - - - - 0x01F735 07:F725: 38        SEC
C - - - - - 0x01F736 07:F726: E9 01     SBC #$01
C - - - - - 0x01F738 07:F728: 29 0F     AND #$0F
C - - - - - 0x01F73A 07:F72A: 8D C1 03  STA ram_03C1_weapon_timer_lo
C - - - - - 0x01F73D 07:F72D: D0 1F     BNE bra_F74E
C - - - - - 0x01F73F 07:F72F: A9 06     LDA #con_add_score_200p
C - - - - - 0x01F741 07:F731: 20 C3 DD  JSR sub_DDC3_add_score
C - - - - - 0x01F744 07:F734: A9 17     LDA #con_sfx_17
C - - - - - 0x01F746 07:F736: 20 1A FF  JSR sub_FF1A_play_sound
C - - - - - 0x01F749 07:F739: A9 0F     LDA #$0F
C - - - - - 0x01F74B 07:F73B: 8D C1 03  STA ram_03C1_weapon_timer_lo
C - - - - - 0x01F74E 07:F73E: AD C0 03  LDA ram_03C0_weapon_timer_hi
C - - - - - 0x01F751 07:F741: 38        SEC
C - - - - - 0x01F752 07:F742: E9 01     SBC #$01
C - - - - - 0x01F754 07:F744: 8D C0 03  STA ram_03C0_weapon_timer_hi
C - - - - - 0x01F757 07:F747: B0 05     BCS bra_F74E
- - - - - - 0x01F759 07:F749: A9 00     LDA #$00
- - - - - - 0x01F75B 07:F74B: 8D C0 03  STA ram_03C0_weapon_timer_hi
bra_F74E:
C - - - - - 0x01F75E 07:F74E: 4C FF F7  JMP loc_F7FF
bra_F751:
C - - - - - 0x01F761 07:F751: A9 01     LDA #con_add_score_20p
C - - - - - 0x01F763 07:F753: 20 C3 DD  JSR sub_DDC3_add_score
C - - - - - 0x01F766 07:F756: A5 37     LDA ram_frm_cnt_3
C - - - - - 0x01F768 07:F758: 29 07     AND #$07
C - - - - - 0x01F76A 07:F75A: D0 6A     BNE bra_F7C6
C - - - - - 0x01F76C 07:F75C: A9 16     LDA #con_sfx_16
C - - - - - 0x01F76E 07:F75E: 20 1A FF  JSR sub_FF1A_play_sound
C - - - - - 0x01F771 07:F761: 4C C6 F7  JMP loc_F7C6
bra_F764:
loc_F764:
C D 3 - - - 0x01F774 07:F764: 20 AD C8  JSR sub_C8AD_RTS
C - - - - - 0x01F777 07:F767: 20 B4 C8  JSR sub_C8B4_prepare_palette
C - - - - - 0x01F77A 07:F76A: 20 2B E1  JSR sub_E12B
C - - - - - 0x01F77D 07:F76D: A0 01     LDY #$01
C - - - - - 0x01F77F 07:F76F: 20 BB 8A  JSR sub_0x018ACB_object_handler
C - - - - - 0x01F782 07:F772: 20 D1 E1  JSR sub_E1D1_update_animation_for_all_objects
C - - - - - 0x01F785 07:F775: AD 58 06  LDA ram_obj_pos_X_hi
C - - - - - 0x01F788 07:F778: CD CF 03  CMP ram_03CF
C - - - - - 0x01F78B 07:F77B: 90 03     BCC bra_F780
C - - - - - 0x01F78D 07:F77D: 8D CF 03  STA ram_03CF
bra_F780:
C - - - - - 0x01F790 07:F780: AD 11 04  LDA ram_0411
C - - - - - 0x01F793 07:F783: C9 01     CMP #$01
C - - - - - 0x01F795 07:F785: F0 78     BEQ bra_F7FF
C - - - - - 0x01F797 07:F787: AD C6 03  LDA ram_03C6_previous_weapon
C - - - - - 0x01F79A 07:F78A: F0 26     BEQ bra_F7B2
C - - - - - 0x01F79C 07:F78C: A5 37     LDA ram_frm_cnt_3
C - - - - - 0x01F79E 07:F78E: 29 01     AND #$01
C - - - - - 0x01F7A0 07:F790: F0 20     BEQ bra_F7B2
C - - - - - 0x01F7A2 07:F792: AD C1 03  LDA ram_03C1_weapon_timer_lo
C - - - - - 0x01F7A5 07:F795: 38        SEC
C - - - - - 0x01F7A6 07:F796: E9 01     SBC #$01
C - - - - - 0x01F7A8 07:F798: 8D C1 03  STA ram_03C1_weapon_timer_lo
C - - - - - 0x01F7AB 07:F79B: D0 15     BNE bra_F7B2
C - - - - - 0x01F7AD 07:F79D: A9 96     LDA #$96
C - - - - - 0x01F7AF 07:F79F: 8D C1 03  STA ram_03C1_weapon_timer_lo
C - - - - - 0x01F7B2 07:F7A2: AD C0 03  LDA ram_03C0_weapon_timer_hi
C - - - - - 0x01F7B5 07:F7A5: 38        SEC
C - - - - - 0x01F7B6 07:F7A6: E9 01     SBC #$01
C - - - - - 0x01F7B8 07:F7A8: 8D C0 03  STA ram_03C0_weapon_timer_hi
C - - - - - 0x01F7BB 07:F7AB: B0 05     BCS bra_F7B2
- - - - - - 0x01F7BD 07:F7AD: A9 00     LDA #$00
- - - - - - 0x01F7BF 07:F7AF: 8D C0 03  STA ram_03C0_weapon_timer_hi
bra_F7B2:
C - - - - - 0x01F7C2 07:F7B2: AD 11 04  LDA ram_0411
C - - - - - 0x01F7C5 07:F7B5: D0 48     BNE bra_F7FF
C - - - - - 0x01F7C7 07:F7B7: EE AC 03  INC ram_03AC
C - - - - - 0x01F7CA 07:F7BA: AD AC 03  LDA ram_03AC
C - - - - - 0x01F7CD 07:F7BD: C9 3C     CMP #$3C
C - - - - - 0x01F7CF 07:F7BF: 90 3E     BCC bra_F7FF
C - - - - - 0x01F7D1 07:F7C1: A9 00     LDA #$00
C - - - - - 0x01F7D3 07:F7C3: 8D AC 03  STA ram_03AC
bra_F7C6:
loc_F7C6:
C D 3 - - - 0x01F7D6 07:F7C6: A2 02     LDX #$02
C - - - - - 0x01F7D8 07:F7C8: BD A9 03  LDA ram_time,X
C - - - - - 0x01F7DB 07:F7CB: 38        SEC
C - - - - - 0x01F7DC 07:F7CC: E9 01     SBC #$01
C - - - - - 0x01F7DE 07:F7CE: C9 10     CMP #$10
C - - - - - 0x01F7E0 07:F7D0: B0 2A     BCS bra_F7FC
C - - - - - 0x01F7E2 07:F7D2: A9 19     LDA #$19
C - - - - - 0x01F7E4 07:F7D4: 9D A9 03  STA ram_time,X
C - - - - - 0x01F7E7 07:F7D7: CA        DEX
C - - - - - 0x01F7E8 07:F7D8: BD A9 03  LDA ram_time,X
C - - - - - 0x01F7EB 07:F7DB: 38        SEC
C - - - - - 0x01F7EC 07:F7DC: E9 01     SBC #$01
C - - - - - 0x01F7EE 07:F7DE: C9 10     CMP #$10
C - - - - - 0x01F7F0 07:F7E0: B0 1A     BCS bra_F7FC
C - - - - - 0x01F7F2 07:F7E2: A9 19     LDA #$19
C - - - - - 0x01F7F4 07:F7E4: 9D A9 03  STA ram_time,X
C - - - - - 0x01F7F7 07:F7E7: CA        DEX
C - - - - - 0x01F7F8 07:F7E8: BD A9 03  LDA ram_time,X
C - - - - - 0x01F7FB 07:F7EB: 38        SEC
C - - - - - 0x01F7FC 07:F7EC: E9 01     SBC #$01
C - - - - - 0x01F7FE 07:F7EE: C9 10     CMP #$10
C - - - - - 0x01F800 07:F7F0: B0 0A     BCS bra_F7FC
C - - - - - 0x01F802 07:F7F2: A9 10     LDA #$10
C - - - - - 0x01F804 07:F7F4: 9D A9 03  STA ram_time,X
C - - - - - 0x01F807 07:F7F7: E8        INX
C - - - - - 0x01F808 07:F7F8: 9D A9 03  STA ram_time,X
C - - - - - 0x01F80B 07:F7FB: E8        INX
bra_F7FC:
C - - - - - 0x01F80C 07:F7FC: 9D A9 03  STA ram_time,X
bra_F7FF:
loc_F7FF:
C D 3 - - - 0x01F80F 07:F7FF: AD B7 03  LDA ram_03B7
C - - - - - 0x01F812 07:F802: D0 3D     BNE bra_F841
C - - - - - 0x01F814 07:F804: AD 42 06  LDA ram_obj_pos_X_lo
C - - - - - 0x01F817 07:F807: 38        SEC
C - - - - - 0x01F818 07:F808: E9 32     SBC #< $0032
C - - - - - 0x01F81A 07:F80A: 85 04     STA ram_0004_temp
C - - - - - 0x01F81C 07:F80C: AD 58 06  LDA ram_obj_pos_X_hi
C - - - - - 0x01F81F 07:F80F: E9 00     SBC #> $0032
C - - - - - 0x01F821 07:F811: 85 05     STA ram_0005_temp
C - - - - - 0x01F823 07:F813: A5 04     LDA ram_0004_temp
C - - - - - 0x01F825 07:F815: 38        SEC
C - - - - - 0x01F826 07:F816: E5 BD     SBC ram_00BD
C - - - - - 0x01F828 07:F818: 85 08     STA ram_0008_temp
C - - - - - 0x01F82A 07:F81A: A5 05     LDA ram_0005_temp
C - - - - - 0x01F82C 07:F81C: E5 BB     SBC ram_00BB
C - - - - - 0x01F82E 07:F81E: 85 09     STA ram_0009_t02
C - - - - - 0x01F830 07:F820: A5 08     LDA ram_0008_temp
C - - - - - 0x01F832 07:F822: 38        SEC
C - - - - - 0x01F833 07:F823: E9 F0     SBC #< $00F0
C - - - - - 0x01F835 07:F825: A5 09     LDA ram_0009_t02
C - - - - - 0x01F837 07:F827: E9 00     SBC #> $00F0
C - - - - - 0x01F839 07:F829: 30 16     BMI bra_F841
C - - - - - 0x01F83B 07:F82B: AD B7 03  LDA ram_03B7
C - - - - - 0x01F83E 07:F82E: D0 11     BNE bra_F841
C - - - - - 0x01F840 07:F830: A9 01     LDA #$01
C - - - - - 0x01F842 07:F832: 8D B7 03  STA ram_03B7
C - - - - - 0x01F845 07:F835: A9 83     LDA #con_mus_cfg_83
C - - - - - 0x01F847 07:F837: A2 10     LDX #$10
C - - - - - 0x01F849 07:F839: 20 1A FF  JSR sub_FF1A_play_sound
C - - - - - 0x01F84C 07:F83C: A9 2E     LDA #con_music_round_complete
C - - - - - 0x01F84E 07:F83E: 20 1A FF  JSR sub_FF1A_play_sound
bra_F841:
C - - - - - 0x01F851 07:F841: AD 0C 04  LDA ram_040C
C - - - - - 0x01F854 07:F844: F0 31     BEQ bra_F877
C - - - - - 0x01F856 07:F846: C9 03     CMP #$03
C - - - - - 0x01F858 07:F848: D0 03     BNE bra_F84D
C - - - - - 0x01F85A 07:F84A: 4C 07 FA  JMP loc_FA07
bra_F84D:
C - - - - - 0x01F85D 07:F84D: 0D 0D 04  ORA ram_040D
C - - - - - 0x01F860 07:F850: 29 01     AND #$01
C - - - - - 0x01F862 07:F852: F0 03     BEQ bra_F857
C - - - - - 0x01F864 07:F854: 4C F7 F9  JMP loc_F9F7
bra_F857:
C - - - - - 0x01F867 07:F857: A9 F7     LDA #$F7
C - - - - - 0x01F869 07:F859: 8D F2 06  STA ram_obj_spd_Y_lo
C - - - - - 0x01F86C 07:F85C: A9 0C     LDA #$0C
C - - - - - 0x01F86E 07:F85E: 8D 16 06  STA ram_0616_obj
C - - - - - 0x01F871 07:F861: AD 84 06  LDA ram_obj_pos_Y_lo
C - - - - - 0x01F874 07:F864: 38        SEC
C - - - - - 0x01F875 07:F865: E9 10     SBC #< $0010
C - - - - - 0x01F877 07:F867: 8D 84 06  STA ram_obj_pos_Y_lo
C - - - - - 0x01F87A 07:F86A: AD 9A 06  LDA ram_obj_pos_Y_hi
C - - - - - 0x01F87D 07:F86D: E9 00     SBC #> $0010
C - - - - - 0x01F87F 07:F86F: 8D 9A 06  STA ram_obj_pos_Y_hi
C - - - - - 0x01F882 07:F872: A9 00     LDA #$00
C - - - - - 0x01F884 07:F874: 8D 0C 04  STA ram_040C
bra_F877:
C - - - - - 0x01F887 07:F877: AD CD 03  LDA ram_03CD
C - - - - - 0x01F88A 07:F87A: 0D FA 03  ORA ram_03FA
C - - - - - 0x01F88D 07:F87D: C9 FE     CMP #$FE
C - - - - - 0x01F88F 07:F87F: D0 03     BNE bra_F884
C - - - - - 0x01F891 07:F881: 4C 49 F9  JMP loc_F949
bra_F884:
C - - - - - 0x01F894 07:F884: A5 3A     LDA ram_003A
C - - - - - 0x01F896 07:F886: 85 2B     STA ram_prg_bank
C - - - - - 0x01F898 07:F888: 20 0C C9  JSR sub_C90C_prg_bankswitch
C - - - - - 0x01F89B 07:F88B: 20 B9 EB  JSR sub_EBB9
loc_F88E:
C D 3 - - - 0x01F89E 07:F88E: 20 CD FA  JSR sub_FACD
C - - - - - 0x01F8A1 07:F891: A5 33     LDA ram_round
C - - - - - 0x01F8A3 07:F893: C9 16     CMP #$16
C - - - - - 0x01F8A5 07:F895: D0 13     BNE bra_F8AA
C - - - - - 0x01F8A7 07:F897: A5 36     LDA ram_frm_cnt_2
; / 04
C - - - - - 0x01F8A9 07:F899: 4A        LSR
C - - - - - 0x01F8AA 07:F89A: 4A        LSR
C - - - - - 0x01F8AB 07:F89B: C9 04     CMP #$04
C - - - - - 0x01F8AD 07:F89D: B0 0B     BCS bra_F8AA
C - - - - - 0x01F8AF 07:F89F: AA        TAX
C - - - - - 0x01F8B0 07:F8A0: BD 2F FC  LDA tbl_FC2F,X
C - - - - - 0x01F8B3 07:F8A3: 85 48     STA ram_0046_pal_buffer + $02
C - - - - - 0x01F8B5 07:F8A5: BD 33 FC  LDA tbl_FC33,X
C - - - - - 0x01F8B8 07:F8A8: 85 49     STA ram_0046_pal_buffer + $03
bra_F8AA:
C - - - - - 0x01F8BA 07:F8AA: A5 33     LDA ram_round
C - - - - - 0x01F8BC 07:F8AC: 18        CLC
C - - - - - 0x01F8BD 07:F8AD: 6D 11 04  ADC ram_0411
C - - - - - 0x01F8C0 07:F8B0: C9 17     CMP #$17
C - - - - - 0x01F8C2 07:F8B2: B0 29     BCS bra_F8DD
C - - - - - 0x01F8C4 07:F8B4: E6 38     INC ram_0038
C - - - - - 0x01F8C6 07:F8B6: A5 38     LDA ram_0038
C - - - - - 0x01F8C8 07:F8B8: C9 0B     CMP #$0B
C - - - - - 0x01F8CA 07:F8BA: 90 21     BCC bra_F8DD
C - - - - - 0x01F8CC 07:F8BC: A9 00     LDA #$00
C - - - - - 0x01F8CE 07:F8BE: 85 38     STA ram_0038
C - - - - - 0x01F8D0 07:F8C0: E6 26     INC ram_chr_bank_bg_4
C - - - - - 0x01F8D2 07:F8C2: A5 26     LDA ram_chr_bank_bg_4
C - - - - - 0x01F8D4 07:F8C4: 29 03     AND #$03
C - - - - - 0x01F8D6 07:F8C6: 18        CLC
C - - - - - 0x01F8D7 07:F8C7: 65 B1     ADC ram_offset_chr_bank_bg_4
C - - - - - 0x01F8D9 07:F8C9: 85 26     STA ram_chr_bank_bg_4
C - - - - - 0x01F8DB 07:F8CB: 29 03     AND #$03
C - - - - - 0x01F8DD 07:F8CD: C9 03     CMP #$03
C - - - - - 0x01F8DF 07:F8CF: D0 0C     BNE bra_F8DD
C - - - - - 0x01F8E1 07:F8D1: A5 39     LDA ram_0039
C - - - - - 0x01F8E3 07:F8D3: C9 80     CMP #$80
C - - - - - 0x01F8E5 07:F8D5: 26 39     ROL ram_0039
C - - - - - 0x01F8E7 07:F8D7: 90 04     BCC bra_F8DD
C - - - - - 0x01F8E9 07:F8D9: A5 B2     LDA ram_copy_chr_bank_bg_4
C - - - - - 0x01F8EB 07:F8DB: 85 26     STA ram_chr_bank_bg_4
bra_F8DD:
C - - - - - 0x01F8ED 07:F8DD: 20 75 C1  JSR sub_C175_wait_for_nmi_to_end
C - - - - - 0x01F8F0 07:F8E0: AD F6 03  LDA ram_03F6
C - - - - - 0x01F8F3 07:F8E3: D0 03     BNE bra_F8E8
C - - - - - 0x01F8F5 07:F8E5: 4C E4 F6  JMP loc_F6E4
bra_F8E8:
C - - - - - 0x01F8F8 07:F8E8: A5 E4     LDA ram_demo_flag
C - - - - - 0x01F8FA 07:F8EA: C9 01     CMP #$01
C - - - - - 0x01F8FC 07:F8EC: D0 03     BNE bra_F8F1_not_demo
; if demo
C - - - - - 0x01F8FE 07:F8EE: 4C EC F9  JMP loc_F9EC
bra_F8F1_not_demo:
C - - - - - 0x01F901 07:F8F1: 4C E4 F6  JMP loc_F6E4



loc_F8F4:
C D 3 - - - 0x01F904 07:F8F4: AD F6 03  LDA ram_03F6
C - - - - - 0x01F907 07:F8F7: 45 2E     EOR ram_002E_btn
C - - - - - 0x01F909 07:F8F9: 29 08     AND #con_btn_Start
C - - - - - 0x01F90B 07:F8FB: 8D F6 03  STA ram_03F6
C - - - - - 0x01F90E 07:F8FE: AD F6 03  LDA ram_03F6
C - - - - - 0x01F911 07:F901: F0 1D     BEQ bra_F920
C - - - - - 0x01F913 07:F903: A9 13     LDA #con_sfx_pause_on
C - - - - - 0x01F915 07:F905: 20 1A FF  JSR sub_FF1A_play_sound
C - - - - - 0x01F918 07:F908: A2 05     LDX #$05
C - - - - - 0x01F91A 07:F90A: A9 83     LDA #con_mus_cfg_83
C - - - - - 0x01F91C 07:F90C: 20 1A FF  JSR sub_FF1A_play_sound
C - - - - - 0x01F91F 07:F90F: 8E 2E 04  STX ram_042E
C - - - - - 0x01F922 07:F912: A5 E4     LDA ram_demo_flag
C - - - - - 0x01F924 07:F914: F0 03     BEQ bra_F919_demo
; if not demo
C - - - - - 0x01F926 07:F916: 4C 8E F8  JMP loc_F88E
bra_F919_demo:
C - - - - - 0x01F929 07:F919: A9 09     LDA #con_chr_bank + $09
C - - - - - 0x01F92B 07:F91B: 85 B3     STA ram_irq_chr_bank
C - - - - - 0x01F92D 07:F91D: 4C 8E F8  JMP loc_F88E
bra_F920:
C - - - - - 0x01F930 07:F920: A9 12     LDA #con_sfx_pause_off
C - - - - - 0x01F932 07:F922: 20 1A FF  JSR sub_FF1A_play_sound
C - - - - - 0x01F935 07:F925: AE 2E 04  LDX ram_042E
C - - - - - 0x01F938 07:F928: A9 83     LDA #con_mus_cfg_83
C - - - - - 0x01F93A 07:F92A: 20 1A FF  JSR sub_FF1A_play_sound
C - - - - - 0x01F93D 07:F92D: A9 08     LDA #con_chr_bank + $08
C - - - - - 0x01F93F 07:F92F: 85 B3     STA ram_irq_chr_bank
C - - - - - 0x01F941 07:F931: 4C 8E F8  JMP loc_F88E



loc_F934:
C D 3 - - - 0x01F944 07:F934: AD B7 03  LDA ram_03B7
C - - - - - 0x01F947 07:F937: F0 03     BEQ bra_F93C
C - - - - - 0x01F949 07:F939: 4C 20 FA  JMP loc_FA20
bra_F93C:
C - - - - - 0x01F94C 07:F93C: AD 11 04  LDA ram_0411
C - - - - - 0x01F94F 07:F93F: F0 03     BEQ bra_F944
C - - - - - 0x01F951 07:F941: 4C 64 F7  JMP loc_F764
bra_F944:
C - - - - - 0x01F954 07:F944: A9 01     LDA #$01
C - - - - - 0x01F956 07:F946: 8D FA 03  STA ram_03FA
loc_F949:
C D 3 - - - 0x01F959 07:F949: AD B7 03  LDA ram_03B7
C - - - - - 0x01F95C 07:F94C: F0 03     BEQ bra_F951
- - - - - - 0x01F95E 07:F94E: 4C 20 FA  JMP loc_FA20
bra_F951:
C - - - - - 0x01F961 07:F951: AD FA 03  LDA ram_03FA
C - - - - - 0x01F964 07:F954: F0 03     BEQ bra_F959
C - - - - - 0x01F966 07:F956: 4C 64 F7  JMP loc_F764
bra_F959:
C - - - - - 0x01F969 07:F959: AD 0D 04  LDA ram_040D
C - - - - - 0x01F96C 07:F95C: 29 09     AND #$09
C - - - - - 0x01F96E 07:F95E: F0 07     BEQ bra_F967
- - - - - - 0x01F970 07:F960: C9 08     CMP #$08
- - - - - - 0x01F972 07:F962: A9 00     LDA #$00
- - - - - - 0x01F974 07:F964: 8D 0D 04  STA ram_040D
bra_F967:
C - - - - - 0x01F977 07:F967: A9 00     LDA #$00
C - - - - - 0x01F979 07:F969: 8D C6 03  STA ram_03C6_previous_weapon
C - - - - - 0x01F97C 07:F96C: 8D C7 03  STA ram_03C7
C - - - - - 0x01F97F 07:F96F: A5 E4     LDA ram_demo_flag
C - - - - - 0x01F981 07:F971: C9 01     CMP #$01
C - - - - - 0x01F983 07:F973: F0 77     BEQ bra_F9EC_demo
; if not demo
C - - - - - 0x01F985 07:F975: AD CE 03  LDA ram_03CE
C - - - - - 0x01F988 07:F978: 18        CLC
C - - - - - 0x01F989 07:F979: 6D CF 03  ADC ram_03CF
C - - - - - 0x01F98C 07:F97C: 38        SEC
C - - - - - 0x01F98D 07:F97D: E9 01     SBC #$01
C - - - - - 0x01F98F 07:F97F: 30 0D     BMI bra_F98E
C - - - - - 0x01F991 07:F981: 29 FC     AND #$FC
C - - - - - 0x01F993 07:F983: CD CE 03  CMP ram_03CE
C - - - - - 0x01F996 07:F986: 90 06     BCC bra_F98E
C - - - - - 0x01F998 07:F988: 8D CE 03  STA ram_03CE
C - - - - - 0x01F99B 07:F98B: 8D 12 04  STA ram_0412
bra_F98E:
C - - - - - 0x01F99E 07:F98E: A9 00     LDA #$00
C - - - - - 0x01F9A0 07:F990: 8D CF 03  STA ram_03CF
C - - - - - 0x01F9A3 07:F993: 85 E2     STA ram_00E2
C - - - - - 0x01F9A5 07:F995: 8D 0D 04  STA ram_040D
C - - - - - 0x01F9A8 07:F998: 8D 0C 04  STA ram_040C
C - - - - - 0x01F9AB 07:F99B: 8D 11 04  STA ram_0411
C - - - - - 0x01F9AE 07:F99E: 8D 0E 04  STA ram_040E
C - - - - - 0x01F9B1 07:F9A1: 8D 2F 04  STA ram_042F
C - - - - - 0x01F9B4 07:F9A4: 8D 30 04  STA ram_0430
C - - - - - 0x01F9B7 07:F9A7: 8D 31 04  STA ram_0431
C - - - - - 0x01F9BA 07:F9AA: 8D 32 04  STA ram_0432
C - - - - - 0x01F9BD 07:F9AD: A2 01     LDX #$01
C - - - - - 0x01F9BF 07:F9AF: BD A5 03  LDA ram_03A5_lives,X
C - - - - - 0x01F9C2 07:F9B2: 38        SEC
C - - - - - 0x01F9C3 07:F9B3: E9 01     SBC #$01
C - - - - - 0x01F9C5 07:F9B5: C9 10     CMP #$10
C - - - - - 0x01F9C7 07:F9B7: B0 10     BCS bra_F9C9
C - - - - - 0x01F9C9 07:F9B9: A9 19     LDA #$19
C - - - - - 0x01F9CB 07:F9BB: 9D A5 03  STA ram_03A5_lives,X
C - - - - - 0x01F9CE 07:F9BE: CA        DEX ; 00
C - - - - - 0x01F9CF 07:F9BF: BD A5 03  LDA ram_03A5_lives,X
C - - - - - 0x01F9D2 07:F9C2: 38        SEC
C - - - - - 0x01F9D3 07:F9C3: E9 01     SBC #$01
C - - - - - 0x01F9D5 07:F9C5: C9 10     CMP #$10
C - - - - - 0x01F9D7 07:F9C7: 90 17     BCC bra_F9E0_game_over
bra_F9C9:
C - - - - - 0x01F9D9 07:F9C9: 9D A5 03  STA ram_03A5_lives,X
C - - - - - 0x01F9DC 07:F9CC: A5 BB     LDA ram_00BB
C - - - - - 0x01F9DE 07:F9CE: CD CF 03  CMP ram_03CF
C - - - - - 0x01F9E1 07:F9D1: B0 03     BCS bra_F9D6
- - - - - - 0x01F9E3 07:F9D3: 8D CF 03  STA ram_03CF
bra_F9D6:
C - - - - - 0x01F9E6 07:F9D6: A9 00     LDA #$00
C - - - - - 0x01F9E8 07:F9D8: 8D 11 04  STA ram_0411
C - - - - - 0x01F9EB 07:F9DB: A9 04     LDA #con_0028_04
C - - - - - 0x01F9ED 07:F9DD: 4C 63 FA  JMP loc_FA63
bra_F9E0_game_over:
C - - - - - 0x01F9F0 07:F9E0: A9 10     LDA #$10
C - - - - - 0x01F9F2 07:F9E2: 9D A6 03  STA ram_03A5_lives + $01,X
C - - - - - 0x01F9F5 07:F9E5: A9 18     LDA #$18    ; Game Over
C - - - - - 0x01F9F7 07:F9E7: 85 33     STA ram_round
C - - - - - 0x01F9F9 07:F9E9: 4C 5C FA  JMP loc_FA5C
bra_F9EC_demo:
loc_F9EC:
C D 3 - - - 0x01F9FC 07:F9EC: A9 00     LDA #$00
C - - - - - 0x01F9FE 07:F9EE: 85 E4     STA ram_demo_flag   ; "not demo" flag
C - - - - - 0x01FA00 07:F9F0: 85 E7     STA ram_data_btn_demo + $01
C - - - - - 0x01FA02 07:F9F2: A9 00     LDA #con_0028_00
C - - - - - 0x01FA04 07:F9F4: 4C 63 FA  JMP loc_FA63



loc_F9F7:
C D 3 - - - 0x01FA07 07:F9F7: EE 0D 04  INC ram_040D
C - - - - - 0x01FA0A 07:F9FA: A9 00     LDA #$00
C - - - - - 0x01FA0C 07:F9FC: 8D 0C 04  STA ram_040C
C - - - - - 0x01FA0F 07:F9FF: 8D CD 03  STA ram_03CD
C - - - - - 0x01FA12 07:FA02: A9 04     LDA #con_0028_04
C - - - - - 0x01FA14 07:FA04: 4C 63 FA  JMP loc_FA63



loc_FA07:
C D 3 - - - 0x01FA17 07:FA07: AD 0D 04  LDA ram_040D
C - - - - - 0x01FA1A 07:FA0A: C9 08     CMP #$08
C - - - - - 0x01FA1C 07:FA0C: F0 05     BEQ bra_FA13
C - - - - - 0x01FA1E 07:FA0E: A9 FF     LDA #$FF
C - - - - - 0x01FA20 07:FA10: 8D 11 04  STA ram_0411
bra_FA13:
C - - - - - 0x01FA23 07:FA13: EE 11 04  INC ram_0411
C - - - - - 0x01FA26 07:FA16: A9 08     LDA #$08
C - - - - - 0x01FA28 07:FA18: 8D 0D 04  STA ram_040D
C - - - - - 0x01FA2B 07:FA1B: A9 04     LDA #con_0028_04
C - - - - - 0x01FA2D 07:FA1D: 4C 63 FA  JMP loc_FA63



loc_FA20:
C D 3 - - - 0x01FA30 07:FA20: A5 33     LDA ram_round
C - - - - - 0x01FA32 07:FA22: 18        CLC
C - - - - - 0x01FA33 07:FA23: 69 01     ADC #$01
C - - - - - 0x01FA35 07:FA25: 85 33     STA ram_round
C - - - - - 0x01FA37 07:FA27: A9 00     LDA #$00
C - - - - - 0x01FA39 07:FA29: 8D CD 03  STA ram_03CD
C - - - - - 0x01FA3C 07:FA2C: 8D CE 03  STA ram_03CE
C - - - - - 0x01FA3F 07:FA2F: 8D CF 03  STA ram_03CF
C - - - - - 0x01FA42 07:FA32: 8D 0D 04  STA ram_040D
C - - - - - 0x01FA45 07:FA35: 8D 0C 04  STA ram_040C
C - - - - - 0x01FA48 07:FA38: 8D 11 04  STA ram_0411
C - - - - - 0x01FA4B 07:FA3B: 8D 0E 04  STA ram_040E
C - - - - - 0x01FA4E 07:FA3E: 8D 12 04  STA ram_0412
C - - - - - 0x01FA51 07:FA41: 8D 2F 04  STA ram_042F
C - - - - - 0x01FA54 07:FA44: 8D 30 04  STA ram_0430
C - - - - - 0x01FA57 07:FA47: 8D 31 04  STA ram_0431
C - - - - - 0x01FA5A 07:FA4A: 8D 32 04  STA ram_0432
C - - - - - 0x01FA5D 07:FA4D: AE C5 03  LDX ram_round_type
C - - - - - 0x01FA60 07:FA50: AD C6 03  LDA ram_03C6_previous_weapon
C - - - - - 0x01FA63 07:FA53: 9D FD 03  STA ram_03FD_unk,X
C - - - - - 0x01FA66 07:FA56: AD C7 03  LDA ram_03C7
C - - - - - 0x01FA69 07:FA59: 9D 02 04  STA ram_0402_unk,X
loc_FA5C:
C D 3 - - - 0x01FA6C 07:FA5C: A9 06     LDA #con_0028_06
; bzk optimize, delete JMP after deleting following garbage
C - - - - - 0x01FA6E 07:FA5E: 4C 63 FA  JMP loc_FA63


; bzk garbage
- - - - - - 0x01FA71 07:FA61: A9 00     LDA #$00



loc_FA63:
C D 3 - - - 0x01FA73 07:FA63: 85 28     STA ram_main_script
C - - - - - 0x01FA75 07:FA65: 20 C0 C8  JSR sub_C8C0_prepare_screen_darkening
bra_FA68_loop:
; wait until screen goes black
C - - - - - 0x01FA78 07:FA68: 20 B4 C8  JSR sub_C8B4_prepare_palette
C - - - - - 0x01FA7B 07:FA6B: 20 75 C1  JSR sub_C175_wait_for_nmi_to_end
C - - - - - 0x01FA7E 07:FA6E: AD E9 00  LDA a: ram_brightness_flag
C - - - - - 0x01FA81 07:FA71: D0 F5     BNE bra_FA68_loop
C - - - - - 0x01FA83 07:FA73: A5 33     LDA ram_round
C - - - - - 0x01FA85 07:FA75: C9 17     CMP #$17
; bzk optimize, BEQ to 0x01FA8F
C - - - - - 0x01FA87 07:FA77: D0 03     BNE bra_FA7C
C - - - - - 0x01FA89 07:FA79: 4C 7F FA  JMP loc_FA7F_the_end
bra_FA7C:
C - - - - - 0x01FA8C 07:FA7C: 20 04 FF  JSR sub_FF04_turn_off_music_and_sfx
loc_FA7F_the_end:
C D 3 - - - 0x01FA8F 07:FA7F: 20 B9 C9  JSR sub_C9B9_disable_rendering
C - - - - - 0x01FA92 07:FA82: A9 F0     LDA #$F0
C - - - - - 0x01FA94 07:FA84: 85 34     STA ram_frm_cnt_1
bra_FA86_loop:
C - - - - - 0x01FA96 07:FA86: 20 75 C1  JSR sub_C175_wait_for_nmi_to_end
C - - - - - 0x01FA99 07:FA89: A5 34     LDA ram_frm_cnt_1
C - - - - - 0x01FA9B 07:FA8B: D0 F9     BNE bra_FA86_loop
C - - - - - 0x01FA9D 07:FA8D: 60        RTS



tbl_FA8E:
; 00 
- D 3 - I - 0x01FA9E 07:FA8E: 00        .byte con_obj_id_00   ; 
- D 3 - I - 0x01FA9F 07:FA8F: 01        .byte $01   ; ram_0616_obj
- D 3 - I - 0x01FAA0 07:FA90: 03        .byte $03   ; ram_0734_obj
- D 3 - I - 0x01FAA1 07:FA91: 30        .byte $30   ; ram_obj_pos_X_lo
- D 3 - I - 0x01FAA2 07:FA92: 80        .byte $80   ; ram_obj_pos_Y_lo
; 01 
- D 3 - I - 0x01FAA3 07:FA93: 0C        .byte con_obj_id_0C   ; 
- D 3 - I - 0x01FAA4 07:FA94: 00        .byte $00   ; ram_0616_obj
- D 3 - I - 0x01FAA5 07:FA95: 01        .byte $01   ; ram_0734_obj
- D 3 - I - 0x01FAA6 07:FA96: 30        .byte $30   ; ram_obj_pos_X_lo
- D 3 - I - 0x01FAA7 07:FA97: 80        .byte $80   ; ram_obj_pos_Y_lo
; 02 
- D 3 - I - 0x01FAA8 07:FA98: 0C        .byte con_obj_id_0C   ; 
- D 3 - I - 0x01FAA9 07:FA99: 00        .byte $00   ; ram_0616_obj
- D 3 - I - 0x01FAAA 07:FA9A: 01        .byte $01   ; ram_0734_obj
- D 3 - I - 0x01FAAB 07:FA9B: 30        .byte $30   ; ram_obj_pos_X_lo
- D 3 - I - 0x01FAAC 07:FA9C: 80        .byte $80   ; ram_obj_pos_Y_lo
; 03 
- D 3 - I - 0x01FAAD 07:FA9D: 0B        .byte con_obj_id_0B   ; 
- D 3 - I - 0x01FAAE 07:FA9E: 01        .byte $01   ; ram_0616_obj
- D 3 - I - 0x01FAAF 07:FA9F: 01        .byte $01   ; ram_0734_obj
- D 3 - I - 0x01FAB0 07:FAA0: 30        .byte $30   ; ram_obj_pos_X_lo
- D 3 - I - 0x01FAB1 07:FAA1: 80        .byte $80   ; ram_obj_pos_Y_lo
; 04 
- D 3 - I - 0x01FAB2 07:FAA2: 00        .byte con_obj_id_00   ; 
- D 3 - I - 0x01FAB3 07:FAA3: 00        .byte $00   ; ram_0616_obj
- D 3 - I - 0x01FAB4 07:FAA4: 01        .byte $01   ; ram_0734_obj
- D 3 - I - 0x01FAB5 07:FAA5: 30        .byte $30   ; ram_obj_pos_X_lo
- D 3 - I - 0x01FAB6 07:FAA6: 80        .byte $80   ; ram_obj_pos_Y_lo
; 05 
- D 3 - I - 0x01FAB7 07:FAA7: 0F        .byte con_obj_id_0F   ; 
- D 3 - I - 0x01FAB8 07:FAA8: 00        .byte $00   ; ram_0616_obj
- D 3 - I - 0x01FAB9 07:FAA9: 01        .byte $01   ; ram_0734_obj
- D 3 - I - 0x01FABA 07:FAAA: 30        .byte $30   ; ram_obj_pos_X_lo
- D 3 - I - 0x01FABB 07:FAAB: 80        .byte $80   ; ram_obj_pos_Y_lo
; 06 
- D 3 - I - 0x01FABC 07:FAAC: 0E        .byte con_obj_id_0E   ; 
- D 3 - I - 0x01FABD 07:FAAD: 00        .byte $00   ; ram_0616_obj
- D 3 - I - 0x01FABE 07:FAAE: 01        .byte $01   ; ram_0734_obj
- D 3 - I - 0x01FABF 07:FAAF: 30        .byte $30   ; ram_obj_pos_X_lo
- D 3 - I - 0x01FAC0 07:FAB0: 80        .byte $80   ; ram_obj_pos_Y_lo
; 07 
- D 3 - I - 0x01FAC1 07:FAB1: 0D        .byte con_obj_id_0D   ; 
- D 3 - I - 0x01FAC2 07:FAB2: 00        .byte $00   ; ram_0616_obj
- D 3 - I - 0x01FAC3 07:FAB3: 01        .byte $01   ; ram_0734_obj
- D 3 - I - 0x01FAC4 07:FAB4: 30        .byte $30   ; ram_obj_pos_X_lo
- D 3 - I - 0x01FAC5 07:FAB5: 80        .byte $80   ; ram_obj_pos_Y_lo
; 08 
- D 3 - I - 0x01FAC6 07:FAB6: 0D        .byte con_obj_id_0D   ; 
- D 3 - I - 0x01FAC7 07:FAB7: 00        .byte $00   ; ram_0616_obj
- D 3 - I - 0x01FAC8 07:FAB8: 01        .byte $01   ; ram_0734_obj
- D 3 - I - 0x01FAC9 07:FAB9: 30        .byte $30   ; ram_obj_pos_X_lo
- D 3 - I - 0x01FACA 07:FABA: 80        .byte $80   ; ram_obj_pos_Y_lo
; 09 
- D 3 - I - 0x01FACB 07:FABB: 0D        .byte con_obj_id_0D   ; 
- D 3 - I - 0x01FACC 07:FABC: 00        .byte $00   ; ram_0616_obj
- D 3 - I - 0x01FACD 07:FABD: 01        .byte $01   ; ram_0734_obj
- D 3 - I - 0x01FACE 07:FABE: 30        .byte $30   ; ram_obj_pos_X_lo
- D 3 - I - 0x01FACF 07:FABF: 80        .byte $80   ; ram_obj_pos_Y_lo
; 
- D 3 - I - 0x01FAD0 07:FAC0: FF        .byte $FF   ; end token



tbl_FAC1_status_bar:
- D 3 - I - 0x01FAD1 07:FAC1: 03        .byte $03   ; ??? 001
- D 3 - I - 0x01FAD2 07:FAC2: 08        .byte con_prg_bank + $08   ; 
- D 3 - I - 0x01FAD3 07:FAC3: 20        .byte $20   ; 
- D 3 - I - 0x01FAD4 07:FAC4: 06        .byte $06   ; 
- D 3 - I - 0x01FAD5 07:FAC5: 00 20     .word $2000 ; ppu address
- D 3 - I - 0x01FAD7 07:FAC7: 00        .byte $00   ; 
- D 3 - I - 0x01FAD8 07:FAC8: 20        .byte $20   ; 
- D 3 - I - 0x01FAD9 07:FAC9: 00        .byte $00   ; 
- D 3 - I - 0x01FADA 07:FACA: 20        .byte $20   ; 
- D 3 - I - 0x01FADB 07:FACB: 2A 86     .word off_0x01063A_status_bar



sub_FACD:
C - - - - - 0x01FADD 07:FACD: 20 C8 C9  JSR sub_C9C8_prg_bankswitch_02
C - - - - - 0x01FAE0 07:FAD0: A9 30     LDA #$30
C - - - - - 0x01FAE2 07:FAD2: 85 B4     STA ram_index_oam
C - - - - - 0x01FAE4 07:FAD4: A9 00     LDA #$00
C - - - - - 0x01FAE6 07:FAD6: 85 B5     STA ram_full_oam_flag
C - - - - - 0x01FAE8 07:FAD8: A5 36     LDA ram_frm_cnt_2
C - - - - - 0x01FAEA 07:FADA: 8D 33 04  STA ram_0433
C - - - - - 0x01FAED 07:FADD: 29 01     AND #$01
C - - - - - 0x01FAEF 07:FADF: F0 05     BEQ bra_FAE6
C - - - - - 0x01FAF1 07:FAE1: 20 79 FB  JSR sub_FB79
C - - - - - 0x01FAF4 07:FAE4: A9 01     LDA #$01
bra_FAE6:
C - - - - - 0x01FAF6 07:FAE6: A2 16     LDX #$16
C - - - - - 0x01FAF8 07:FAE8: 86 B6     STX ram_00B6
C - - - - - 0x01FAFA 07:FAEA: C9 00     CMP #$00
C - - - - - 0x01FAFC 07:FAEC: F0 02     BEQ bra_FAF0
C - - - - - 0x01FAFE 07:FAEE: A9 16     LDA #$16
bra_FAF0:
bra_FAF0_loop:
C - - - - - 0x01FB00 07:FAF0: 48        PHA
C - - - - - 0x01FB01 07:FAF1: A8        TAY
C - - - - - 0x01FB02 07:FAF2: 20 0D FB  JSR sub_FB0D
C - - - - - 0x01FB05 07:FAF5: 68        PLA
C - - - - - 0x01FB06 07:FAF6: 18        CLC
C - - - - - 0x01FB07 07:FAF7: 69 01     ADC #$01
C - - - - - 0x01FB09 07:FAF9: C6 B6     DEC ram_00B6
C - - - - - 0x01FB0B 07:FAFB: D0 F3     BNE bra_FAF0_loop
C - - - - - 0x01FB0D 07:FAFD: AD 33 04  LDA ram_0433
C - - - - - 0x01FB10 07:FB00: 29 01     AND #$01
C - - - - - 0x01FB12 07:FB02: F0 03     BEQ bra_FB07
C - - - - - 0x01FB14 07:FB04: 4C DD E1  JMP loc_E1DD_hide_unused_sprites
bra_FB07:
C - - - - - 0x01FB17 07:FB07: 20 79 FB  JSR sub_FB79
C - - - - - 0x01FB1A 07:FB0A: 4C DD E1  JMP loc_E1DD_hide_unused_sprites



sub_FB0D:
C - - - - - 0x01FB1D 07:FB0D: BE 4D FB  LDX tbl_FB4D,Y
C - - - - - 0x01FB20 07:FB10: E0 04     CPX #$04
C - - - - - 0x01FB22 07:FB12: 90 03     BCC bra_FB17
C - - - - - 0x01FB24 07:FB14: 4C 62 80  JMP loc_0x004072_sprite_engine
bra_FB17:
C - - - - - 0x01FB27 07:FB17: AD C6 03  LDA ram_03C6_previous_weapon
C - - - - - 0x01FB2A 07:FB1A: F0 0E     BEQ bra_FB2A
C - - - - - 0x01FB2C 07:FB1C: AD C0 03  LDA ram_03C0_weapon_timer_hi
C - - - - - 0x01FB2F 07:FB1F: C9 03     CMP #$03
C - - - - - 0x01FB31 07:FB21: B0 07     BCS bra_FB2A
C - - - - - 0x01FB33 07:FB23: A5 36     LDA ram_frm_cnt_2
C - - - - - 0x01FB35 07:FB25: 29 04     AND #$04
C - - - - - 0x01FB37 07:FB27: D0 01     BNE bra_FB2A
C - - - - - 0x01FB39 07:FB29: 60        RTS
bra_FB2A:
C - - - - - 0x01FB3A 07:FB2A: AD CD 03  LDA ram_03CD
C - - - - - 0x01FB3D 07:FB2D: F0 1B     BEQ bra_FB4A
C - - - - - 0x01FB3F 07:FB2F: C9 F0     CMP #$F0
C - - - - - 0x01FB41 07:FB31: B0 0C     BCS bra_FB3F
C - - - - - 0x01FB43 07:FB33: E0 00     CPX #$00
C - - - - - 0x01FB45 07:FB35: D0 08     BNE bra_FB3F
C - - - - - 0x01FB47 07:FB37: AC F6 03  LDY ram_03F6
C - - - - - 0x01FB4A 07:FB3A: D0 03     BNE bra_FB3F
C - - - - - 0x01FB4C 07:FB3C: CE CD 03  DEC ram_03CD
bra_FB3F:
C - - - - - 0x01FB4F 07:FB3F: C9 A0     CMP #$A0
C - - - - - 0x01FB51 07:FB41: B0 07     BCS bra_FB4A
C - - - - - 0x01FB53 07:FB43: A5 36     LDA ram_frm_cnt_2
C - - - - - 0x01FB55 07:FB45: 29 04     AND #$04
C - - - - - 0x01FB57 07:FB47: F0 01     BEQ bra_FB4A
C - - - - - 0x01FB59 07:FB49: 60        RTS
bra_FB4A:
C - - - - - 0x01FB5A 07:FB4A: 4C 62 80  JMP loc_0x004072_sprite_engine



tbl_FB4D:
- D 3 - - - 0x01FB5D 07:FB4D: 01        .byte $01   ; 00 
- D 3 - - - 0x01FB5E 07:FB4E: 00        .byte $00   ; 01 
- D 3 - - - 0x01FB5F 07:FB4F: 02        .byte $02   ; 02 
- D 3 - - - 0x01FB60 07:FB50: 03        .byte $03   ; 03 
- D 3 - - - 0x01FB61 07:FB51: 04        .byte $04   ; 04 
- D 3 - - - 0x01FB62 07:FB52: 06        .byte $06   ; 05 
- D 3 - - - 0x01FB63 07:FB53: 07        .byte $07   ; 06 
- D 3 - - - 0x01FB64 07:FB54: 08        .byte $08   ; 07 
- D 3 - - - 0x01FB65 07:FB55: 09        .byte $09   ; 08 
- D 3 - - - 0x01FB66 07:FB56: 0A        .byte $0A   ; 09 
- D 3 - - - 0x01FB67 07:FB57: 0B        .byte $0B   ; 0A 
- D 3 - - - 0x01FB68 07:FB58: 0C        .byte $0C   ; 0B 
- D 3 - - - 0x01FB69 07:FB59: 0D        .byte $0D   ; 0C 
- D 3 - - - 0x01FB6A 07:FB5A: 0E        .byte $0E   ; 0D 
- D 3 - - - 0x01FB6B 07:FB5B: 0F        .byte $0F   ; 0E 
- D 3 - - - 0x01FB6C 07:FB5C: 10        .byte $10   ; 0F 
- D 3 - - - 0x01FB6D 07:FB5D: 11        .byte $11   ; 10 
- D 3 - - - 0x01FB6E 07:FB5E: 12        .byte $12   ; 11 
- D 3 - - - 0x01FB6F 07:FB5F: 13        .byte $13   ; 12 
- D 3 - - - 0x01FB70 07:FB60: 14        .byte $14   ; 13 
- D 3 - - - 0x01FB71 07:FB61: 15        .byte $15   ; 14 
- D 3 - - - 0x01FB72 07:FB62: 05        .byte $05   ; 15 
- D 3 - - - 0x01FB73 07:FB63: 15        .byte $15   ; 16 
- D 3 - - - 0x01FB74 07:FB64: 14        .byte $14   ; 17 
- D 3 - - - 0x01FB75 07:FB65: 13        .byte $13   ; 18 
- D 3 - - - 0x01FB76 07:FB66: 12        .byte $12   ; 19 
- D 3 - - - 0x01FB77 07:FB67: 11        .byte $11   ; 1A 
- D 3 - - - 0x01FB78 07:FB68: 10        .byte $10   ; 1B 
- D 3 - - - 0x01FB79 07:FB69: 0F        .byte $0F   ; 1C 
- D 3 - - - 0x01FB7A 07:FB6A: 0E        .byte $0E   ; 1D 
- D 3 - - - 0x01FB7B 07:FB6B: 0D        .byte $0D   ; 1E 
- D 3 - - - 0x01FB7C 07:FB6C: 0C        .byte $0C   ; 1F 
- D 3 - - - 0x01FB7D 07:FB6D: 0B        .byte $0B   ; 20 
- D 3 - - - 0x01FB7E 07:FB6E: 0A        .byte $0A   ; 21 
- D 3 - - - 0x01FB7F 07:FB6F: 09        .byte $09   ; 22 
- D 3 - - - 0x01FB80 07:FB70: 08        .byte $08   ; 23 
- D 3 - - - 0x01FB81 07:FB71: 07        .byte $07   ; 24 
- D 3 - - - 0x01FB82 07:FB72: 06        .byte $06   ; 25 
- D 3 - - - 0x01FB83 07:FB73: 04        .byte $04   ; 26 
- D 3 - - - 0x01FB84 07:FB74: 03        .byte $03   ; 27 
- D 3 - - - 0x01FB85 07:FB75: 02        .byte $02   ; 28 
- D 3 - - - 0x01FB86 07:FB76: 05        .byte $05   ; 29 
- D 3 - - - 0x01FB87 07:FB77: 01        .byte $01   ; 2A 
- D 3 - - - 0x01FB88 07:FB78: 00        .byte $00   ; 2B 



sub_FB79:
C - - - - - 0x01FB89 07:FB79: A5 B5     LDA ram_full_oam_flag
C - - - - - 0x01FB8B 07:FB7B: F0 03     BEQ bra_FB80
C - - - - - 0x01FB8D 07:FB7D: 4C 0B FC  JMP loc_FC0B_RTS
bra_FB80:
C - - - - - 0x01FB90 07:FB80: AD 34 07  LDA ram_0734_obj
C - - - - - 0x01FB93 07:FB83: C9 63     CMP #$63
C - - - - - 0x01FB95 07:FB85: 90 03     BCC bra_FB8A
C - - - - - 0x01FB97 07:FB87: 4C 0B FC  JMP loc_FC0B_RTS
bra_FB8A:
C - - - - - 0x01FB9A 07:FB8A: C9 05     CMP #$05
C - - - - - 0x01FB9C 07:FB8C: D0 03     BNE bra_FB91
C - - - - - 0x01FB9E 07:FB8E: 4C 0B FC  JMP loc_FC0B_RTS
bra_FB91:
C - - - - - 0x01FBA1 07:FB91: AD C6 03  LDA ram_03C6_previous_weapon
C - - - - - 0x01FBA4 07:FB94: D0 18     BNE bra_FBAE
C - - - - - 0x01FBA6 07:FB96: A2 00     LDX #$00
C - - - - - 0x01FBA8 07:FB98: A4 B4     LDY ram_index_oam
bra_FB9A_loop:
C - - - - - 0x01FBAA 07:FB9A: BD 0F FC  LDA tbl_FC0F_spr_data,X
C - - - - - 0x01FBAD 07:FB9D: 99 00 02  STA ram_oam,Y
C - - - - - 0x01FBB0 07:FBA0: C8        INY
C - - - - - 0x01FBB1 07:FBA1: D0 03     BNE bra_FBA6
- - - - - - 0x01FBB3 07:FBA3: 4C 0C FC  JMP loc_FC0C
bra_FBA6:
C - - - - - 0x01FBB6 07:FBA6: E8        INX
C - - - - - 0x01FBB7 07:FBA7: E0 18     CPX #$18
C - - - - - 0x01FBB9 07:FBA9: 90 EF     BCC bra_FB9A_loop
C - - - - - 0x01FBBB 07:FBAB: 84 B4     STY ram_index_oam
C - - - - - 0x01FBBD 07:FBAD: 60        RTS
bra_FBAE:
C - - - - - 0x01FBBE 07:FBAE: A2 00     LDX #$00
C - - - - - 0x01FBC0 07:FBB0: A4 B4     LDY ram_index_oam
bra_FBB2_loop:
C - - - - - 0x01FBC2 07:FBB2: BD 27 FC  LDA tbl_FC27_spr_data,X
C - - - - - 0x01FBC5 07:FBB5: 99 00 02  STA ram_oam,Y
C - - - - - 0x01FBC8 07:FBB8: C8        INY
C - - - - - 0x01FBC9 07:FBB9: F0 51     BEQ bra_FC0C
C - - - - - 0x01FBCB 07:FBBB: E8        INX
C - - - - - 0x01FBCC 07:FBBC: E0 08     CPX #$08
C - - - - - 0x01FBCE 07:FBBE: 90 F2     BCC bra_FBB2_loop
C - - - - - 0x01FBD0 07:FBC0: A9 00     LDA #$00
C - - - - - 0x01FBD2 07:FBC2: 8D 14 04  STA ram_0414
C - - - - - 0x01FBD5 07:FBC5: A9 5D     LDA #$5D
C - - - - - 0x01FBD7 07:FBC7: 8D 13 04  STA ram_0413_spr_T
C - - - - - 0x01FBDA 07:FBCA: AD C0 03  LDA ram_03C0_weapon_timer_hi
C - - - - - 0x01FBDD 07:FBCD: F0 39     BEQ bra_FC08
C - - - - - 0x01FBDF 07:FBCF: AA        TAX
C - - - - - 0x01FBE0 07:FBD0: 38        SEC
C - - - - - 0x01FBE1 07:FBD1: E9 05     SBC #$05
C - - - - - 0x01FBE3 07:FBD3: 90 07     BCC bra_FBDC
C - - - - - 0x01FBE5 07:FBD5: F0 05     BEQ bra_FBDC
C - - - - - 0x01FBE7 07:FBD7: 8D 14 04  STA ram_0414
C - - - - - 0x01FBEA 07:FBDA: A2 05     LDX #$05
bra_FBDC:
bra_FBDC_loop:
C - - - - - 0x01FBEC 07:FBDC: EC 14 04  CPX ram_0414
C - - - - - 0x01FBEF 07:FBDF: D0 05     BNE bra_FBE6
C - - - - - 0x01FBF1 07:FBE1: A9 57     LDA #$57
C - - - - - 0x01FBF3 07:FBE3: 8D 13 04  STA ram_0413_spr_T
bra_FBE6:
C - - - - - 0x01FBF6 07:FBE6: A9 10     LDA #$10
C - - - - - 0x01FBF8 07:FBE8: 99 00 02  STA ram_spr_Y,Y
C - - - - - 0x01FBFB 07:FBEB: AD 13 04  LDA ram_0413_spr_T
C - - - - - 0x01FBFE 07:FBEE: 99 01 02  STA ram_spr_T,Y
C - - - - - 0x01FC01 07:FBF1: A9 01     LDA #$01
C - - - - - 0x01FC03 07:FBF3: 99 02 02  STA ram_spr_A,Y
C - - - - - 0x01FC06 07:FBF6: 8A        TXA
; * 08
C - - - - - 0x01FC07 07:FBF7: 0A        ASL
C - - - - - 0x01FC08 07:FBF8: 0A        ASL
C - - - - - 0x01FC09 07:FBF9: 0A        ASL
C - - - - - 0x01FC0A 07:FBFA: 69 18     ADC #$18
C - - - - - 0x01FC0C 07:FBFC: 99 03 02  STA ram_spr_X,Y
C - - - - - 0x01FC0F 07:FBFF: C8        INY
C - - - - - 0x01FC10 07:FC00: C8        INY
C - - - - - 0x01FC11 07:FC01: C8        INY
C - - - - - 0x01FC12 07:FC02: C8        INY
C - - - - - 0x01FC13 07:FC03: F0 07     BEQ bra_FC0C
C - - - - - 0x01FC15 07:FC05: CA        DEX
C - - - - - 0x01FC16 07:FC06: D0 D4     BNE bra_FBDC_loop
bra_FC08:
C - - - - - 0x01FC18 07:FC08: 84 B4     STY ram_index_oam
C - - - - - 0x01FC1A 07:FC0A: 60        RTS
loc_FC0B_RTS:   ; bzk optimize
C D 3 - - - 0x01FC1B 07:FC0B: 60        RTS
bra_FC0C:
loc_FC0C:
C - - - - - 0x01FC1C 07:FC0C: E6 B5     INC ram_full_oam_flag
C - - - - - 0x01FC1E 07:FC0E: 60        RTS



tbl_FC0F_spr_data:
;                                              +------------------- spr_Y
;                                              |    +-------------- spr_T
;                                              |    |    +--------- spr_A
;                                              |    |    |    +---- spr_X
;                                              |    |    |    |
- D 3 - - - 0x01FC1F 07:FC0F: 10        .byte $10, $79, $00, $10   ; 
- D 3 - - - 0x01FC23 07:FC13: 10        .byte $10, $7B, $00, $18   ; 
- D 3 - - - 0x01FC27 07:FC17: 18        .byte $18, $71, $01, $20   ; 
- D 3 - - - 0x01FC2B 07:FC1B: 18        .byte $18, $73, $01, $28   ; 
- D 3 - - - 0x01FC2F 07:FC1F: 18        .byte $18, $75, $01, $30   ; 
- D 3 - - - 0x01FC33 07:FC23: 18        .byte $18, $77, $01, $38   ; 



tbl_FC27_spr_data:
;                                              +------------------- spr_Y
;                                              |    +-------------- spr_T
;                                              |    |    +--------- spr_A
;                                              |    |    |    +---- spr_X
;                                              |    |    |    |
- D 3 - - - 0x01FC37 07:FC27: 10        .byte $10, $79, $01, $10   ; 
- D 3 - - - 0x01FC3B 07:FC2B: 10        .byte $10, $7B, $01, $18   ; 



tbl_FC2F:
- D 3 - - - 0x01FC3F 07:FC2F: 27        .byte $27   ; 
- D 3 - - - 0x01FC40 07:FC30: 38        .byte $38   ; 
- D 3 - - - 0x01FC41 07:FC31: 27        .byte $27   ; 
- D 3 - - - 0x01FC42 07:FC32: 38        .byte $38   ; 



tbl_FC33:
- D 3 - - - 0x01FC43 07:FC33: 28        .byte $28   ; 
- D 3 - - - 0x01FC44 07:FC34: 27        .byte $27   ; 
- D 3 - - - 0x01FC45 07:FC35: 37        .byte $37   ; 
- D 3 - - - 0x01FC46 07:FC36: 27        .byte $27   ; 



sub_FC37:
C - - - - - 0x01FC47 07:FC37: 20 C1 C9  JSR sub_C9C1_prg_bankswitch_00
C - - - - - 0x01FC4A 07:FC3A: 20 9F 80  JSR sub_0x0000AF_prepare_config_for_area
C - - - - - 0x01FC4D 07:FC3D: A9 0A     LDA #$0A
C - - - - - 0x01FC4F 07:FC3F: 85 2B     STA ram_prg_bank
C - - - - - 0x01FC51 07:FC41: 20 0C C9  JSR sub_C90C_prg_bankswitch
C - - - - - 0x01FC54 07:FC44: A0 00     LDY #$00
bra_FC46_loop:
C - - - - - 0x01FC56 07:FC46: B1 C8     LDA (ram_00C8_t01_data),Y
C - - - - - 0x01FC58 07:FC48: 99 00 68  STA ram_6800,Y
C - - - - - 0x01FC5B 07:FC4B: C8        INY
C - - - - - 0x01FC5C 07:FC4C: D0 F8     BNE bra_FC46_loop
C - - - - - 0x01FC5E 07:FC4E: E6 C9     INC ram_00C8_t01_data + $01
bra_FC50_loop:
C - - - - - 0x01FC60 07:FC50: B1 C8     LDA (ram_00C8_t01_data),Y
C - - - - - 0x01FC62 07:FC52: 99 00 69  STA ram_data_6900,Y
C - - - - - 0x01FC65 07:FC55: C8        INY
C - - - - - 0x01FC66 07:FC56: D0 F8     BNE bra_FC50_loop
C - - - - - 0x01FC68 07:FC58: E6 C9     INC ram_00C8_t01_data + $01
bra_FC5A_loop:
C - - - - - 0x01FC6A 07:FC5A: B1 C8     LDA (ram_00C8_t01_data),Y
C - - - - - 0x01FC6C 07:FC5C: 99 00 6A  STA ram_data_6A00,Y
C - - - - - 0x01FC6F 07:FC5F: C8        INY
C - - - - - 0x01FC70 07:FC60: D0 F8     BNE bra_FC5A_loop
C - - - - - 0x01FC72 07:FC62: 20 A5 FE  JSR sub_FEA5
C - - - - - 0x01FC75 07:FC65: A9 00     LDA #$00
C - - - - - 0x01FC77 07:FC67: 85 BA     STA ram_cam_pos_Y_lo
C - - - - - 0x01FC79 07:FC69: 85 B8     STA ram_cam_pos_Y_hi
C - - - - - 0x01FC7B 07:FC6B: 85 B9     STA ram_cam_pos_X_lo
C - - - - - 0x01FC7D 07:FC6D: 85 B7     STA ram_cam_pos_X_hi
C - - - - - 0x01FC7F 07:FC6F: A5 BB     LDA ram_00BB
C - - - - - 0x01FC81 07:FC71: 18        CLC
C - - - - - 0x01FC82 07:FC72: 69 01     ADC #$01
C - - - - - 0x01FC84 07:FC74: 85 C0     STA ram_00C0_useless
C - - - - - 0x01FC86 07:FC76: 18        CLC
C - - - - - 0x01FC87 07:FC77: 69 01     ADC #$01
C - - - - - 0x01FC89 07:FC79: 85 C1     STA ram_00C1_useless
C - - - - - 0x01FC8B 07:FC7B: A9 E0     LDA #$E0
C - - - - - 0x01FC8D 07:FC7D: 85 C2     STA ram_00C2_t01_hi
C - - - - - 0x01FC8F 07:FC7F: A5 BB     LDA ram_00BB
C - - - - - 0x01FC91 07:FC81: 38        SEC
C - - - - - 0x01FC92 07:FC82: 2A        ROL
C - - - - - 0x01FC93 07:FC83: 26 C2     ROL ram_00C2_t01_hi
C - - - - - 0x01FC95 07:FC85: 2A        ROL
C - - - - - 0x01FC96 07:FC86: 26 C2     ROL ram_00C2_t01_hi
C - - - - - 0x01FC98 07:FC88: 2A        ROL
C - - - - - 0x01FC99 07:FC89: 26 C2     ROL ram_00C2_t01_hi
C - - - - - 0x01FC9B 07:FC8B: 2A        ROL
C - - - - - 0x01FC9C 07:FC8C: 26 C2     ROL ram_00C2_t01_hi
C - - - - - 0x01FC9E 07:FC8E: 2A        ROL
C - - - - - 0x01FC9F 07:FC8F: 26 C2     ROL ram_00C2_t01_hi
C - - - - - 0x01FCA1 07:FC91: 85 C3     STA ram_00C3_t01_lo
; bzk optimize, useless LDA
C - - - - - 0x01FCA3 07:FC93: A5 C3     LDA ram_00C3_t01_lo
C - - - - - 0x01FCA5 07:FC95: 18        CLC
C - - - - - 0x01FCA6 07:FC96: 69 02     ADC #< $0002
C - - - - - 0x01FCA8 07:FC98: 85 C5     STA ram_00C5_t01_lo
C - - - - - 0x01FCAA 07:FC9A: A5 C2     LDA ram_00C2_t01_hi
C - - - - - 0x01FCAC 07:FC9C: 69 00     ADC #> $0002
C - - - - - 0x01FCAE 07:FC9E: 85 C4     STA ram_00C4_t01_hi
C - - - - - 0x01FCB0 07:FCA0: A5 3A     LDA ram_003A
C - - - - - 0x01FCB2 07:FCA2: 85 2B     STA ram_prg_bank
C - - - - - 0x01FCB4 07:FCA4: 20 0C C9  JSR sub_C90C_prg_bankswitch
C - - - - - 0x01FCB7 07:FCA7: A0 00     LDY #$00
bra_FCA9_loop:
C - - - - - 0x01FCB9 07:FCA9: B1 DE     LDA (ram_00DE),Y
C - - - - - 0x01FCBB 07:FCAB: 99 79 03  STA ram_0379,Y
C - - - - - 0x01FCBE 07:FCAE: C8        INY
C - - - - - 0x01FCBF 07:FCAF: C0 08     CPY #$08
C - - - - - 0x01FCC1 07:FCB1: 90 F6     BCC bra_FCA9_loop
bra_FCB3_loop:
C - - - - - 0x01FCC3 07:FCB3: B1 DE     LDA (ram_00DE),Y
C - - - - - 0x01FCC5 07:FCB5: 99 81 03  STA ram_0389 - $08,Y
C - - - - - 0x01FCC8 07:FCB8: C8        INY
C - - - - - 0x01FCC9 07:FCB9: C0 10     CPY #$10
C - - - - - 0x01FCCB 07:FCBB: 90 F6     BCC bra_FCB3_loop
C - - - - - 0x01FCCD 07:FCBD: 84 04     STY ram_0004_temp
C - - - - - 0x01FCCF 07:FCBF: A5 DC     LDA ram_00DC
C - - - - - 0x01FCD1 07:FCC1: 38        SEC
C - - - - - 0x01FCD2 07:FCC2: E9 01     SBC #< $0001
C - - - - - 0x01FCD4 07:FCC4: 85 DC     STA ram_00DC
C - - - - - 0x01FCD6 07:FCC6: A5 DD     LDA ram_00DD
C - - - - - 0x01FCD8 07:FCC8: E9 00     SBC #> $0001
C - - - - - 0x01FCDA 07:FCCA: 85 DD     STA ram_00DD
C - - - - - 0x01FCDC 07:FCCC: A9 6C     LDA #> ram_6C00
C - - - - - 0x01FCDE 07:FCCE: 85 01     STA ram_0000_t07_data + $01
C - - - - - 0x01FCE0 07:FCD0: A9 00     LDA #< ram_6C00
C - - - - - 0x01FCE2 07:FCD2: 85 00     STA ram_0000_t07_data
C - - - - - 0x01FCE4 07:FCD4: A9 6D     LDA #> ram_6D00
C - - - - - 0x01FCE6 07:FCD6: 85 03     STA ram_0002_t08_data + $01
C - - - - - 0x01FCE8 07:FCD8: A9 00     LDA #< ram_6D00
C - - - - - 0x01FCEA 07:FCDA: 85 02     STA ram_0002_t08_data
C - - - - - 0x01FCEC 07:FCDC: A0 01     LDY #$01
bra_FCDE_loop:
C - - - - - 0x01FCEE 07:FCDE: B1 DC     LDA (ram_00DC),Y
C - - - - - 0x01FCF0 07:FCE0: 91 00     STA (ram_0000_t07_data),Y
C - - - - - 0x01FCF2 07:FCE2: 29 60     AND #$60
C - - - - - 0x01FCF4 07:FCE4: 18        CLC
; / 20
C - - - - - 0x01FCF5 07:FCE5: 4A        LSR
C - - - - - 0x01FCF6 07:FCE6: 4A        LSR
C - - - - - 0x01FCF7 07:FCE7: 4A        LSR
C - - - - - 0x01FCF8 07:FCE8: 4A        LSR
C - - - - - 0x01FCF9 07:FCE9: 4A        LSR
C - - - - - 0x01FCFA 07:FCEA: C9 03     CMP #$03
C - - - - - 0x01FCFC 07:FCEC: 90 0E     BCC bra_FCFC
C - - - - - 0x01FCFE 07:FCEE: 84 05     STY ram_0005_temp
C - - - - - 0x01FD00 07:FCF0: A4 04     LDY ram_0004_temp
C - - - - - 0x01FD02 07:FCF2: B1 DE     LDA (ram_00DE),Y
C - - - - - 0x01FD04 07:FCF4: C8        INY
C - - - - - 0x01FD05 07:FCF5: 84 04     STY ram_0004_temp
C - - - - - 0x01FD07 07:FCF7: A4 05     LDY ram_0005_temp
C - - - - - 0x01FD09 07:FCF9: 99 00 6E  STA ram_6E00,Y
bra_FCFC:
C - - - - - 0x01FD0C 07:FCFC: AA        TAX
C - - - - - 0x01FD0D 07:FCFD: BD 71 03  LDA ram_0371,X
C - - - - - 0x01FD10 07:FD00: 91 02     STA (ram_0002_t08_data),Y
C - - - - - 0x01FD12 07:FD02: C8        INY
C - - - - - 0x01FD13 07:FD03: D0 D9     BNE bra_FCDE_loop
C - - - - - 0x01FD15 07:FD05: A9 70     LDA #> ram_7000
C - - - - - 0x01FD17 07:FD07: 85 01     STA ram_0000_t06_data + $01
C - - - - - 0x01FD19 07:FD09: A9 00     LDA #< ram_7000
C - - - - - 0x01FD1B 07:FD0B: 85 00     STA ram_0000_t06_data
C - - - - - 0x01FD1D 07:FD0D: A8        TAY ; 00
bra_FD0E_loop:
C - - - - - 0x01FD1E 07:FD0E: 91 00     STA (ram_0000_t06_data),Y
C - - - - - 0x01FD20 07:FD10: C8        INY
C - - - - - 0x01FD21 07:FD11: D0 FB     BNE bra_FD0E_loop
C - - - - - 0x01FD23 07:FD13: E6 01     INC ram_0000_t06_data + $01
C - - - - - 0x01FD25 07:FD15: A5 01     LDA ram_0000_t06_data + $01
C - - - - - 0x01FD27 07:FD17: C9 74     CMP #> (ram_7000 + $400)
C - - - - - 0x01FD29 07:FD19: A9 00     LDA #$00
C - - - - - 0x01FD2B 07:FD1B: 90 F1     BCC bra_FD0E_loop
C - - - - - 0x01FD2D 07:FD1D: A9 00     LDA #< $0000
C - - - - - 0x01FD2F 07:FD1F: 85 02     STA ram_0002_t06_data
C - - - - - 0x01FD31 07:FD21: A9 00     LDA #> $0000
C - - - - - 0x01FD33 07:FD23: 85 03     STA ram_0002_t06_data + $01
C - - - - - 0x01FD35 07:FD25: A0 01     LDY #$01
loc_FD27_loop:
C D 3 - - - 0x01FD37 07:FD27: 98        TYA
C - - - - - 0x01FD38 07:FD28: 48        PHA
C - - - - - 0x01FD39 07:FD29: A0 00     LDY #$00
C - - - - - 0x01FD3B 07:FD2B: AD 04 03  LDA ram_0304_round_data
C - - - - - 0x01FD3E 07:FD2E: 18        CLC
C - - - - - 0x01FD3F 07:FD2F: 65 02     ADC ram_0002_t06_data
C - - - - - 0x01FD41 07:FD31: 85 04     STA ram_0004_t04_data
C - - - - - 0x01FD43 07:FD33: AD 05 03  LDA ram_0304_round_data + $01
C - - - - - 0x01FD46 07:FD36: 65 03     ADC ram_0002_t06_data + $01
C - - - - - 0x01FD48 07:FD38: 85 05     STA ram_0004_t04_data + $01
C - - - - - 0x01FD4A 07:FD3A: A5 04     LDA ram_0004_t04_data
C - - - - - 0x01FD4C 07:FD3C: 38        SEC
C - - - - - 0x01FD4D 07:FD3D: E5 E2     SBC ram_00E2
C - - - - - 0x01FD4F 07:FD3F: 85 04     STA ram_0004_t04_data
C - - - - - 0x01FD51 07:FD41: A5 05     LDA ram_0004_t04_data + $01
C - - - - - 0x01FD53 07:FD43: E5 E3     SBC ram_00E3
C - - - - - 0x01FD55 07:FD45: 85 05     STA ram_0004_t04_data + $01
C - - - - - 0x01FD57 07:FD47: B1 04     LDA (ram_0004_t04_data),Y
C - - - - - 0x01FD59 07:FD49: C8        INY
C - - - - - 0x01FD5A 07:FD4A: 11 04     ORA (ram_0004_t04_data),Y
C - - - - - 0x01FD5C 07:FD4C: F0 39     BEQ bra_FD87
C - - - - - 0x01FD5E 07:FD4E: B1 04     LDA (ram_0004_t04_data),Y
C - - - - - 0x01FD60 07:FD50: 30 23     BMI bra_FD75
C - - - - - 0x01FD62 07:FD52: A5 03     LDA ram_0002_t06_data + $01
C - - - - - 0x01FD64 07:FD54: 4A        LSR
C - - - - - 0x01FD65 07:FD55: 85 05     STA ram_0004_t05_data + $01
C - - - - - 0x01FD67 07:FD57: A5 02     LDA ram_0002_t06_data
C - - - - - 0x01FD69 07:FD59: 6A        ROR
C - - - - - 0x01FD6A 07:FD5A: 85 04     STA ram_0004_t05_data
C - - - - - 0x01FD6C 07:FD5C: A5 05     LDA ram_0004_t05_data + $01
C - - - - - 0x01FD6E 07:FD5E: 18        CLC
C - - - - - 0x01FD6F 07:FD5F: 69 70     ADC #$70    ; ram_7000
C - - - - - 0x01FD71 07:FD61: 85 05     STA ram_0004_t05_data + $01
C - - - - - 0x01FD73 07:FD63: 68        PLA
C - - - - - 0x01FD74 07:FD64: A0 00     LDY #$00
C - - - - - 0x01FD76 07:FD66: 91 04     STA (ram_0004_t05_data),Y
C - - - - - 0x01FD78 07:FD68: A8        TAY
loc_FD69_loop:
C D 3 - - - 0x01FD79 07:FD69: B9 00 6C  LDA ram_6C00,Y
C - - - - - 0x01FD7C 07:FD6C: 30 04     BMI bra_FD72
C - - - - - 0x01FD7E 07:FD6E: C8        INY
C - - - - - 0x01FD7F 07:FD6F: 4C 69 FD  JMP loc_FD69_loop
bra_FD72:
C - - - - - 0x01FD82 07:FD72: C8        INY
C - - - - - 0x01FD83 07:FD73: 98        TYA
C - - - - - 0x01FD84 07:FD74: 48        PHA
bra_FD75:
C - - - - - 0x01FD85 07:FD75: 68        PLA
C - - - - - 0x01FD86 07:FD76: A8        TAY
C - - - - - 0x01FD87 07:FD77: A5 02     LDA ram_0002_t06_data
C - - - - - 0x01FD89 07:FD79: 18        CLC
C - - - - - 0x01FD8A 07:FD7A: 69 02     ADC #< $0002
C - - - - - 0x01FD8C 07:FD7C: 85 02     STA ram_0002_t06_data
C - - - - - 0x01FD8E 07:FD7E: A5 03     LDA ram_0002_t06_data + $01
C - - - - - 0x01FD90 07:FD80: 69 00     ADC #> $0002
C - - - - - 0x01FD92 07:FD82: 85 03     STA ram_0002_t06_data + $01
C - - - - - 0x01FD94 07:FD84: 4C 27 FD  JMP loc_FD27_loop
bra_FD87:
C - - - - - 0x01FD97 07:FD87: 68        PLA
C - - - - - 0x01FD98 07:FD88: A5 3A     LDA ram_003A
C - - - - - 0x01FD9A 07:FD8A: 85 2B     STA ram_prg_bank
C - - - - - 0x01FD9C 07:FD8C: 20 0C C9  JSR sub_C90C_prg_bankswitch
C - - - - - 0x01FD9F 07:FD8F: A9 00     LDA #$00
C - - - - - 0x01FDA1 07:FD91: 8D 00 78  STA ram_7800_round_obj_flags
C - - - - - 0x01FDA4 07:FD94: A5 E0     LDA ram_00E0
C - - - - - 0x01FDA6 07:FD96: 38        SEC
C - - - - - 0x01FDA7 07:FD97: E9 01     SBC #< $0001
C - - - - - 0x01FDA9 07:FD99: 85 E0     STA ram_00E0
C - - - - - 0x01FDAB 07:FD9B: A5 E1     LDA ram_00E1
C - - - - - 0x01FDAD 07:FD9D: E9 00     SBC #> $0001
C - - - - - 0x01FDAF 07:FD9F: 85 E1     STA ram_00E1
C - - - - - 0x01FDB1 07:FDA1: A9 79     LDA #> ram_7900_round_obj_id
C - - - - - 0x01FDB3 07:FDA3: 85 01     STA ram_0000_t05_data + $01
C - - - - - 0x01FDB5 07:FDA5: A9 00     LDA #< ram_7900_round_obj_id
C - - - - - 0x01FDB7 07:FDA7: 85 00     STA ram_0000_t05_data
C - - - - - 0x01FDB9 07:FDA9: A0 01     LDY #$01
bra_FDAB_loop:
C - - - - - 0x01FDBB 07:FDAB: B1 E0     LDA (ram_00E0),Y
C - - - - - 0x01FDBD 07:FDAD: F0 05     BEQ bra_FDB4
C - - - - - 0x01FDBF 07:FDAF: 91 00     STA (ram_0000_t05_data),Y
C - - - - - 0x01FDC1 07:FDB1: C8        INY
C - - - - - 0x01FDC2 07:FDB2: D0 F7     BNE bra_FDAB_loop   ; jmp
bra_FDB4:
C - - - - - 0x01FDC4 07:FDB4: 98        TYA
C - - - - - 0x01FDC5 07:FDB5: 18        CLC
C - - - - - 0x01FDC6 07:FDB6: 65 E0     ADC ram_00E0
C - - - - - 0x01FDC8 07:FDB8: 85 E0     STA ram_00E0
C - - - - - 0x01FDCA 07:FDBA: A5 E1     LDA ram_00E1
C - - - - - 0x01FDCC 07:FDBC: 69 00     ADC #$00
C - - - - - 0x01FDCE 07:FDBE: 85 E1     STA ram_00E1
C - - - - - 0x01FDD0 07:FDC0: A9 78     LDA #> ram_7800_round_obj_flags
C - - - - - 0x01FDD2 07:FDC2: 85 01     STA ram_0000_t03_data + $01
C - - - - - 0x01FDD4 07:FDC4: A9 00     LDA #< ram_7800_round_obj_flags
C - - - - - 0x01FDD6 07:FDC6: 85 00     STA ram_0000_t03_data
C - - - - - 0x01FDD8 07:FDC8: A0 01     LDY #$01
bra_FDCA_loop:
C - - - - - 0x01FDDA 07:FDCA: B1 E0     LDA (ram_00E0),Y
C - - - - - 0x01FDDC 07:FDCC: 91 00     STA (ram_0000_t03_data),Y
C - - - - - 0x01FDDE 07:FDCE: C8        INY
C - - - - - 0x01FDDF 07:FDCF: D0 F9     BNE bra_FDCA_loop
C - - - - - 0x01FDE1 07:FDD1: A9 74     LDA #> ram_7400
C - - - - - 0x01FDE3 07:FDD3: 85 01     STA ram_0000_t02_data + $01
C - - - - - 0x01FDE5 07:FDD5: A9 00     LDA #< ram_7400
C - - - - - 0x01FDE7 07:FDD7: 85 00     STA ram_0000_t02_data
C - - - - - 0x01FDE9 07:FDD9: A8        TAY ; 00
bra_FDDA_loop:
C - - - - - 0x01FDEA 07:FDDA: 91 00     STA (ram_0000_t02_data),Y
C - - - - - 0x01FDEC 07:FDDC: C8        INY
C - - - - - 0x01FDED 07:FDDD: D0 FB     BNE bra_FDDA_loop
C - - - - - 0x01FDEF 07:FDDF: E6 01     INC ram_0000_t02_data + $01
C - - - - - 0x01FDF1 07:FDE1: A5 01     LDA ram_0000_t02_data + $01
C - - - - - 0x01FDF3 07:FDE3: C9 78     CMP #$78
C - - - - - 0x01FDF5 07:FDE5: A9 00     LDA #$00
C - - - - - 0x01FDF7 07:FDE7: 90 F1     BCC bra_FDDA_loop
C - - - - - 0x01FDF9 07:FDE9: A5 3A     LDA ram_003A
C - - - - - 0x01FDFB 07:FDEB: 85 2B     STA ram_prg_bank
C - - - - - 0x01FDFD 07:FDED: 20 0C C9  JSR sub_C90C_prg_bankswitch
C - - - - - 0x01FE00 07:FDF0: A9 00     LDA #$00
C - - - - - 0x01FE02 07:FDF2: 85 02     STA ram_0002_temp
C - - - - - 0x01FE04 07:FDF4: A9 00     LDA #$00
C - - - - - 0x01FE06 07:FDF6: 85 03     STA ram_0003_temp
C - - - - - 0x01FE08 07:FDF8: A0 01     LDY #$01
loc_FDFA_loop:
C D 3 - - - 0x01FE0A 07:FDFA: 98        TYA
C - - - - - 0x01FE0B 07:FDFB: 48        PHA
C - - - - - 0x01FE0C 07:FDFC: A0 00     LDY #$00
C - - - - - 0x01FE0E 07:FDFE: AD 04 03  LDA ram_0304_round_data
C - - - - - 0x01FE11 07:FE01: 18        CLC
C - - - - - 0x01FE12 07:FE02: 65 02     ADC ram_0002_temp
C - - - - - 0x01FE14 07:FE04: 85 04     STA ram_0004_t02_data
C - - - - - 0x01FE16 07:FE06: AD 05 03  LDA ram_0304_round_data + $01
C - - - - - 0x01FE19 07:FE09: 65 03     ADC ram_0003_temp
C - - - - - 0x01FE1B 07:FE0B: 85 05     STA ram_0004_t02_data + $01
C - - - - - 0x01FE1D 07:FE0D: A5 04     LDA ram_0004_t02_data
C - - - - - 0x01FE1F 07:FE0F: 38        SEC
C - - - - - 0x01FE20 07:FE10: E5 E2     SBC ram_00E2
C - - - - - 0x01FE22 07:FE12: 85 04     STA ram_0004_t02_data
C - - - - - 0x01FE24 07:FE14: A5 05     LDA ram_0004_t02_data + $01
C - - - - - 0x01FE26 07:FE16: E5 E3     SBC ram_00E3
C - - - - - 0x01FE28 07:FE18: 85 05     STA ram_0004_t02_data + $01
C - - - - - 0x01FE2A 07:FE1A: B1 04     LDA (ram_0004_t02_data),Y
C - - - - - 0x01FE2C 07:FE1C: C8        INY
C - - - - - 0x01FE2D 07:FE1D: 11 04     ORA (ram_0004_t02_data),Y
C - - - - - 0x01FE2F 07:FE1F: F0 3B     BEQ bra_FE5C
C - - - - - 0x01FE31 07:FE21: B1 04     LDA (ram_0004_t02_data),Y
C - - - - - 0x01FE33 07:FE23: 29 40     AND #$40
C - - - - - 0x01FE35 07:FE25: F0 23     BEQ bra_FE4A
C - - - - - 0x01FE37 07:FE27: A5 03     LDA ram_0003_temp
C - - - - - 0x01FE39 07:FE29: 4A        LSR
C - - - - - 0x01FE3A 07:FE2A: 85 05     STA ram_0004_t03_data + $01
C - - - - - 0x01FE3C 07:FE2C: A5 02     LDA ram_0002_temp
C - - - - - 0x01FE3E 07:FE2E: 6A        ROR
C - - - - - 0x01FE3F 07:FE2F: 85 04     STA ram_0004_t03_data
C - - - - - 0x01FE41 07:FE31: A5 05     LDA ram_0004_t03_data + $01
C - - - - - 0x01FE43 07:FE33: 18        CLC
C - - - - - 0x01FE44 07:FE34: 69 74     ADC #$74    ; > ram_7400
C - - - - - 0x01FE46 07:FE36: 85 05     STA ram_0004_t03_data + $01
C - - - - - 0x01FE48 07:FE38: 68        PLA
C - - - - - 0x01FE49 07:FE39: A0 00     LDY #$00
C - - - - - 0x01FE4B 07:FE3B: 91 04     STA (ram_0004_t03_data),Y
C - - - - - 0x01FE4D 07:FE3D: A8        TAY
loc_FE3E_loop:
C D 3 - - - 0x01FE4E 07:FE3E: B9 00 78  LDA ram_7800_round_obj_flags,Y
C - - - - - 0x01FE51 07:FE41: 30 04     BMI bra_FE47
C - - - - - 0x01FE53 07:FE43: C8        INY
C - - - - - 0x01FE54 07:FE44: 4C 3E FE  JMP loc_FE3E_loop
bra_FE47:
C - - - - - 0x01FE57 07:FE47: C8        INY
C - - - - - 0x01FE58 07:FE48: 98        TYA
C - - - - - 0x01FE59 07:FE49: 48        PHA
bra_FE4A:
C - - - - - 0x01FE5A 07:FE4A: 68        PLA
C - - - - - 0x01FE5B 07:FE4B: A8        TAY
C - - - - - 0x01FE5C 07:FE4C: A5 02     LDA ram_0002_temp
C - - - - - 0x01FE5E 07:FE4E: 18        CLC
C - - - - - 0x01FE5F 07:FE4F: 69 02     ADC #< $0002
C - - - - - 0x01FE61 07:FE51: 85 02     STA ram_0002_temp
C - - - - - 0x01FE63 07:FE53: A5 03     LDA ram_0003_temp
C - - - - - 0x01FE65 07:FE55: 69 00     ADC #> $0002
C - - - - - 0x01FE67 07:FE57: 85 03     STA ram_0003_temp
C - - - - - 0x01FE69 07:FE59: 4C FA FD  JMP loc_FDFA_loop
bra_FE5C:
C - - - - - 0x01FE6C 07:FE5C: 68        PLA
C - - - - - 0x01FE6D 07:FE5D: 20 98 EA  JSR sub_EA98
C - - - - - 0x01FE70 07:FE60: A9 60     LDA #$60
C - - - - - 0x01FE72 07:FE62: 85 18     STA ram_0018
C - - - - - 0x01FE74 07:FE64: A9 00     LDA #$00
C - - - - - 0x01FE76 07:FE66: 85 1A     STA ram_001A
C - - - - - 0x01FE78 07:FE68: A9 00     LDA #$00
C - - - - - 0x01FE7A 07:FE6A: 8D AF 03  STA ram_03AF
C - - - - - 0x01FE7D 07:FE6D: A9 30     LDA #$30
C - - - - - 0x01FE7F 07:FE6F: 8D B3 03  STA ram_03B3
C - - - - - 0x01FE82 07:FE72: A9 60     LDA #$60
C - - - - - 0x01FE84 07:FE74: 8D B4 03  STA ram_03B4
C - - - - - 0x01FE87 07:FE77: A9 50     LDA #$50
C - - - - - 0x01FE89 07:FE79: 8D B5 03  STA ram_03B5
C - - - - - 0x01FE8C 07:FE7C: A9 06     LDA #$06
C - - - - - 0x01FE8E 07:FE7E: 8D B6 03  STA ram_03B6
C - - - - - 0x01FE91 07:FE81: A5 33     LDA ram_round
C - - - - - 0x01FE93 07:FE83: C9 0F     CMP #$0F
C - - - - - 0x01FE95 07:FE85: F0 09     BEQ bra_FE90
C - - - - - 0x01FE97 07:FE87: C9 11     CMP #$11
C - - - - - 0x01FE99 07:FE89: F0 05     BEQ bra_FE90
C - - - - - 0x01FE9B 07:FE8B: C9 12     CMP #$12
C - - - - - 0x01FE9D 07:FE8D: F0 01     BEQ bra_FE90
C - - - - - 0x01FE9F 07:FE8F: 60        RTS
bra_FE90:
C - - - - - 0x01FEA0 07:FE90: A9 10     LDA #$10
C - - - - - 0x01FEA2 07:FE92: 8D B3 03  STA ram_03B3
C - - - - - 0x01FEA5 07:FE95: A9 18     LDA #$18
C - - - - - 0x01FEA7 07:FE97: 8D B4 03  STA ram_03B4
C - - - - - 0x01FEAA 07:FE9A: A9 10     LDA #$10
C - - - - - 0x01FEAC 07:FE9C: 8D B5 03  STA ram_03B5
C - - - - - 0x01FEAF 07:FE9F: A9 04     LDA #$04
C - - - - - 0x01FEB1 07:FEA1: 8D B6 03  STA ram_03B6
C - - - - - 0x01FEB4 07:FEA4: 60        RTS



sub_FEA5:
C - - - - - 0x01FEB5 07:FEA5: AD 0D 04  LDA ram_040D
C - - - - - 0x01FEB8 07:FEA8: C9 01     CMP #$01
C - - - - - 0x01FEBA 07:FEAA: D0 3F     BNE bra_FEEB_RTS
C - - - - - 0x01FEBC 07:FEAC: A4 33     LDY ram_round
C - - - - - 0x01FEBE 07:FEAE: B9 09 E5  LDA tbl_E509_round_data,Y
C - - - - - 0x01FEC1 07:FEB1: 29 0F     AND #$0F
C - - - - - 0x01FEC3 07:FEB3: A8        TAY
C - - - - - 0x01FEC4 07:FEB4: B9 EC FE  LDA tbl_FEEC,Y
; * 04
C - - - - - 0x01FEC7 07:FEB7: 0A        ASL
C - - - - - 0x01FEC8 07:FEB8: 0A        ASL
C - - - - - 0x01FEC9 07:FEB9: 85 00     STA ram_0000_t35
; * 10 (40)
C - - - - - 0x01FECB 07:FEBB: 0A        ASL
C - - - - - 0x01FECC 07:FEBC: 0A        ASL
C - - - - - 0x01FECD 07:FEBD: 0A        ASL
C - - - - - 0x01FECE 07:FEBE: 0A        ASL
C - - - - - 0x01FECF 07:FEBF: 0D 16 6A  ORA ram_data_6A00 + $16
C - - - - - 0x01FED2 07:FEC2: 8D 16 6A  STA ram_data_6A00 + $16
C - - - - - 0x01FED5 07:FEC5: A5 00     LDA ram_0000_t35
C - - - - - 0x01FED7 07:FEC7: 29 C0     AND #$C0
C - - - - - 0x01FED9 07:FEC9: 85 00     STA ram_0000_t35
C - - - - - 0x01FEDB 07:FECB: AD 62 6A  LDA ram_data_6A00 + $62
C - - - - - 0x01FEDE 07:FECE: 05 00     ORA ram_0000_t35
C - - - - - 0x01FEE0 07:FED0: 8D 62 6A  STA ram_data_6A00 + $62
C - - - - - 0x01FEE3 07:FED3: AD 63 6A  LDA ram_data_6A00 + $63
C - - - - - 0x01FEE6 07:FED6: 05 00     ORA ram_0000_t35
C - - - - - 0x01FEE8 07:FED8: 8D 63 6A  STA ram_data_6A00 + $63
C - - - - - 0x01FEEB 07:FEDB: AD 6A 6A  LDA ram_data_6A00 + $6A
C - - - - - 0x01FEEE 07:FEDE: 05 00     ORA ram_0000_t35
C - - - - - 0x01FEF0 07:FEE0: 8D 6A 6A  STA ram_data_6A00 + $6A
C - - - - - 0x01FEF3 07:FEE3: AD 6B 6A  LDA ram_data_6A00 + $6B
C - - - - - 0x01FEF6 07:FEE6: 05 00     ORA ram_0000_t35
C - - - - - 0x01FEF8 07:FEE8: 8D 6B 6A  STA ram_data_6A00 + $6B
bra_FEEB_RTS:
C - - - - - 0x01FEFB 07:FEEB: 60        RTS



tbl_FEEC:
- D 3 - - - 0x01FEFC 07:FEEC: 00        .byte $00   ; 00 
- D 3 - - - 0x01FEFD 07:FEED: 00        .byte $00   ; 01 
- D 3 - - - 0x01FEFE 07:FEEE: 00        .byte $00   ; 02 
- D 3 - - - 0x01FEFF 07:FEEF: 00        .byte $00   ; 03 
- D 3 - - - 0x01FF00 07:FEF0: 00        .byte $00   ; 04 
- D 3 - - - 0x01FF01 07:FEF1: 01        .byte $01   ; 05 
- D 3 - - - 0x01FF02 07:FEF2: 20        .byte $20   ; 06 
- - - - - - 0x01FF03 07:FEF3: 00        .byte $00   ; 07 
- D 3 - - - 0x01FF04 07:FEF4: 00        .byte $00   ; 08 
- - - - - - 0x01FF05 07:FEF5: 60        .byte $60   ; 09 



sub_E19F_prg_bankswitch_00:
C - - - - - 0x01FF06 07:FEF6: 48        PHA
C - - - - - 0x01FF07 07:FEF7: 8A        TXA
C - - - - - 0x01FF08 07:FEF8: 48        PHA
C - - - - - 0x01FF09 07:FEF9: A5 2B     LDA ram_prg_bank
C - - - - - 0x01FF0B 07:FEFB: 85 3B     STA ram_copy_prg_bank
C - - - - - 0x01FF0D 07:FEFD: 20 C1 C9  JSR sub_C9C1_prg_bankswitch_00
C - - - - - 0x01FF10 07:FF00: 68        PLA
C - - - - - 0x01FF11 07:FF01: AA        TAX
C - - - - - 0x01FF12 07:FF02: 68        PLA
C - - - - - 0x01FF13 07:FF03: 60        RTS



sub_FF04_turn_off_music_and_sfx:
C - - - - - 0x01FF14 07:FF04: 20 F6 FE  JSR sub_E19F_prg_bankswitch_00
C - - - - - 0x01FF17 07:FF07: 20 71 85  JSR sub_0x000581_turn_off_music_and_sfx
C - - - - - 0x01FF1A 07:FF0A: 4C 28 FF  JMP loc_FF28_restore_prg_bank



sub_FF0D_update_sound_engine:
C - - - - - 0x01FF1D 07:FF0D: 20 C1 C9  JSR sub_C9C1_prg_bankswitch_00
; bzk optimize, JMP
C - - - - - 0x01FF20 07:FF10: 20 18 86  JSR sub_0x000628_update_sound_engine
C - - - - - 0x01FF23 07:FF13: 60        RTS



bra_FF14_demo:
C - - - - - 0x01FF24 07:FF14: 68        PLA
C - - - - - 0x01FF25 07:FF15: C9 20     CMP #$20
C - - - - - 0x01FF27 07:FF17: B0 09     BCS bra_FF22
C - - - - - 0x01FF29 07:FF19: 60        RTS



sub_FF1A_play_sound:
sub_0x01FF2A_play_sound:
loc_0x01FF2A_play_sound:
C D 3 - - - 0x01FF2A 07:FF1A: 48        PHA
C - - - - - 0x01FF2B 07:FF1B: A5 E4     LDA ram_demo_flag
C - - - - - 0x01FF2D 07:FF1D: C9 01     CMP #$01
C - - - - - 0x01FF2F 07:FF1F: F0 F3     BEQ bra_FF14_demo
; if not demo
C - - - - - 0x01FF31 07:FF21: 68        PLA
bra_FF22:
C - - - - - 0x01FF32 07:FF22: 20 F6 FE  JSR sub_E19F_prg_bankswitch_00
C - - - - - 0x01FF35 07:FF25: 20 DE 85  JSR sub_0x0005EE_play_sound
loc_FF28_restore_prg_bank:
C D 3 - - - 0x01FF38 07:FF28: 48        PHA
C - - - - - 0x01FF39 07:FF29: 8A        TXA
C - - - - - 0x01FF3A 07:FF2A: 48        PHA
C - - - - - 0x01FF3B 07:FF2B: A5 3B     LDA ram_copy_prg_bank
C - - - - - 0x01FF3D 07:FF2D: 85 2B     STA ram_prg_bank
C - - - - - 0x01FF3F 07:FF2F: 20 0C C9  JSR sub_C90C_prg_bankswitch
C - - - - - 0x01FF42 07:FF32: 68        PLA
C - - - - - 0x01FF43 07:FF33: AA        TAX
C - - - - - 0x01FF44 07:FF34: 68        PLA
C - - - - - 0x01FF45 07:FF35: 60        RTS


; bzk garbage
- - - - - - 0x01FF46 07:FF36: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01FF50 07:FF40: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01FF60 07:FF50: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01FF70 07:FF60: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01FF80 07:FF70: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01FF90 07:FF80: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01FFA0 07:FF90: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01FFB0 07:FFA0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01FFC0 07:FFB0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01FFD0 07:FFC0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 



vec_FFD0_RESET:
C - - - - - 0x01FFE0 07:FFD0: A9 08     LDA #$08
C - - - - - 0x01FFE2 07:FFD2: 8D 00 20  STA $2000
C - - - - - 0x01FFE5 07:FFD5: 78        SEI
C - - - - - 0x01FFE6 07:FFD6: D8        CLD
C - - - - - 0x01FFE7 07:FFD7: A9 00     LDA #$00
C - - - - - 0x01FFE9 07:FFD9: 8D 00 80  STA $8000
C - - - - - 0x01FFEC 07:FFDC: 4C 10 C0  JMP loc_C010_reset


; bzk garbage
- - - - - - 0x01FFEF 07:FFDF: 00        .byte $00   ; 


; bzk garbage
- - - - - - 0x01FFF0 07:FFE0: 46        .byte "FELIX THE CAT(U)"


; bzk garbage
- - - - - - 0x020000 07:FFF0: 15        .byte $15   ; 
- - - - - - 0x020001 07:FFF1: 15        .byte $15   ; 
- - - - - - 0x020002 07:FFF2: E8        .byte $E8   ; 
- - - - - - 0x020003 07:FFF3: CC        .byte $CC   ; 
- - - - - - 0x020004 07:FFF4: 33        .byte $33   ; 
- - - - - - 0x020005 07:FFF5: 84        .byte $84   ; 
- - - - - - 0x020006 07:FFF6: 01        .byte $01   ; 
- - - - - - 0x020007 07:FFF7: 0F        .byte $0F   ; 
- - - - - - 0x020008 07:FFF8: 18        .byte $18   ; 
- - - - - - 0x020009 07:FFF9: 6D        .byte $6D   ; 



.out .sprintf("Free bytes in bank FF: 0x%04X [%d]", ($FFFA - *), ($FFFA - *))



.segment "VECTORS"
- D 3 - - - 0x02000A 07:FFFA: C0 C0     .word vec_C0C0_NMI
- D 3 - - - 0x02000C 07:FFFC: D0 FF     .word vec_FFD0_RESET
- D 3 - - - 0x02000E 07:FFFE: 89 C1     .word vec_C189_IRQ



