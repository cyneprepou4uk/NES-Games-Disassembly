.segment "BANK_FF"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
.org $C000  ; for listing file
; 0x01C010-0x02000F



.export sub_0x01D545
.export sub_0x01E28F
.export sub_0x01E7CA
.export sub_0x01F743
.export sub_0x01F83F
.export sub_0x01F8D3_move_object_down
.export sub_0x01F8FB_move_object_up
.export sub_0x01F921
.export loc_0x01F921
.export sub_0x01F9A9
.export sub_0x01FB02
.export tbl_0x01FB70
.export tbl_0x01FB90
.export sub_0x01FBB0
.export sub_0x01FC55
.export loc_0x01FC55
.export sub_0x01FC61
.export loc_0x01FC7F
.export sub_0x01FC7F
.export sub_0x01FC99
.export loc_0x01FC99
.export sub_0x01FCAE_play_music
.export sub_0x01FCB0_play_sfx
.export loc_0x01FCB0_play_sfx
.export sub_0x01FCC9
.export sub_0x01FCDC
.export sub_0x01FCEF_move_object_X_axis
.export loc_0x01FCEF_move_object_X_axis
.export loc_0x01FD10_move_object_Y_axis
.export sub_0x01FD10_move_object_Y_axis
.export sub_0x01FD22
.export sub_0x01FD43
.export sub_0x01FD5A
.export sub_0x01FDF5
.export sub_0x01FE54
.export sub_0x01FE64
.export sub_0x01FE74
.export loc_0x01FE74
.export tbl_0x01FE95_bits
.export sub_0x01FFBD



vec_C000_NMI:
vec_C000_IRQ:
C - - - - - 0x01C010 07:C000: 08        PHP
C - - - - - 0x01C011 07:C001: 48        PHA
C - - - - - 0x01C012 07:C002: 8A        TXA
C - - - - - 0x01C013 07:C003: 48        PHA
C - - - - - 0x01C014 07:C004: 98        TYA
C - - - - - 0x01C015 07:C005: 48        PHA
C - - - - - 0x01C016 07:C006: A5 EE     LDA ram_00EE
C - - - - - 0x01C018 07:C008: 05 9A     ORA ram_009A
C - - - - - 0x01C01A 07:C00A: D0 73     BNE bra_C07F
C - - - - - 0x01C01C 07:C00C: A5 FF     LDA ram_for_2000
C - - - - - 0x01C01E 07:C00E: 29 78     AND #$78
C - - - - - 0x01C020 07:C010: 8D 00 20  STA $2000
C - - - - - 0x01C023 07:C013: AD 02 20  LDA $2002
C - - - - - 0x01C026 07:C016: A9 00     LDA #$00    ; < ram_oam
C - - - - - 0x01C028 07:C018: 8D 01 20  STA $2001
C - - - - - 0x01C02B 07:C01B: 8D 03 20  STA $2003
C - - - - - 0x01C02E 07:C01E: A9 02     LDA #> ram_oam
C - - - - - 0x01C030 07:C020: 8D 14 40  STA $4014
C - - - - - 0x01C033 07:C023: A5 19     LDA ram_0019
C - - - - - 0x01C035 07:C025: F0 03     BEQ bra_C02A
C - - - - - 0x01C037 07:C027: 20 CB C0  JSR sub_C0CB_write_buffer_to_ppu
bra_C02A:
C - - - - - 0x01C03A 07:C02A: A5 1A     LDA ram_001A
C - - - - - 0x01C03C 07:C02C: F0 09     BEQ bra_C037
C - - - - - 0x01C03E 07:C02E: A9 00     LDA #$00
C - - - - - 0x01C040 07:C030: 85 1A     STA ram_001A
C - - - - - 0x01C042 07:C032: A2 40     LDX #$40
C - - - - - 0x01C044 07:C034: 20 CF C0  JSR sub_C0CF_write_buffer_to_ppu
bra_C037:
C - - - - - 0x01C047 07:C037: A5 18     LDA ram_0018
C - - - - - 0x01C049 07:C039: F0 29     BEQ bra_C064
C - - - - - 0x01C04B 07:C03B: A2 00     LDX #$00    ; > 3F00
C - - - - - 0x01C04D 07:C03D: 86 18     STX ram_0018
C - - - - - 0x01C04F 07:C03F: AD 02 20  LDA $2002
C - - - - - 0x01C052 07:C042: A9 3F     LDA #$3F    ; < 3F00
C - - - - - 0x01C054 07:C044: 8D 06 20  STA $2006
C - - - - - 0x01C057 07:C047: 8E 06 20  STX $2006
C - - - - - 0x01C05A 07:C04A: A0 20     LDY #$20
bra_C04C_loop:
C - - - - - 0x01C05C 07:C04C: BD 00 06  LDA ram_pal_buffer_1,X
C - - - - - 0x01C05F 07:C04F: 8D 07 20  STA $2007
C - - - - - 0x01C062 07:C052: E8        INX
C - - - - - 0x01C063 07:C053: 88        DEY
C - - - - - 0x01C064 07:C054: D0 F6     BNE bra_C04C_loop
C - - - - - 0x01C066 07:C056: A9 3F     LDA #$3F
C - - - - - 0x01C068 07:C058: 8D 06 20  STA $2006
C - - - - - 0x01C06B 07:C05B: 8C 06 20  STY $2006
C - - - - - 0x01C06E 07:C05E: 8C 06 20  STY $2006
C - - - - - 0x01C071 07:C061: 8C 06 20  STY $2006
bra_C064:
C - - - - - 0x01C074 07:C064: AD 02 20  LDA $2002
C - - - - - 0x01C077 07:C067: A5 FC     LDA ram_scroll_X_lo
C - - - - - 0x01C079 07:C069: 8D 05 20  STA $2005
C - - - - - 0x01C07C 07:C06C: A5 FA     LDA ram_scroll_Y_lo
C - - - - - 0x01C07E 07:C06E: 8D 05 20  STA $2005
C - - - - - 0x01C081 07:C071: A5 FE     LDA ram_for_2001
C - - - - - 0x01C083 07:C073: 8D 01 20  STA $2001
C - - - - - 0x01C086 07:C076: A5 FD     LDA ram_scroll_X_hi
C - - - - - 0x01C088 07:C078: 29 01     AND #$01
C - - - - - 0x01C08A 07:C07A: 05 FF     ORA ram_for_2000
C - - - - - 0x01C08C 07:C07C: 8D 00 20  STA $2000
bra_C07F:
C - - - - - 0x01C08F 07:C07F: E6 92     INC ram_nmi_cnt
C - - - - - 0x01C091 07:C081: A2 FF     LDX #$FF
C - - - - - 0x01C093 07:C083: 86 90     STX ram_0090
C - - - - - 0x01C095 07:C085: E8        INX
C - - - - - 0x01C096 07:C086: A0 04     LDY #$04
bra_C088_loop:
C - - - - - 0x01C098 07:C088: B5 80     LDA ram_0080,X
C - - - - - 0x01C09A 07:C08A: C9 01     CMP #$01
C - - - - - 0x01C09C 07:C08C: D0 08     BNE bra_C096
C - - - - - 0x01C09E 07:C08E: D6 81     DEC ram_0081,X
C - - - - - 0x01C0A0 07:C090: D0 04     BNE bra_C096
C - - - - - 0x01C0A2 07:C092: A9 04     LDA #$04
C - - - - - 0x01C0A4 07:C094: 95 80     STA ram_0080,X
bra_C096:
C - - - - - 0x01C0A6 07:C096: E8        INX
C - - - - - 0x01C0A7 07:C097: E8        INX
C - - - - - 0x01C0A8 07:C098: E8        INX
C - - - - - 0x01C0A9 07:C099: E8        INX
C - - - - - 0x01C0AA 07:C09A: 88        DEY
C - - - - - 0x01C0AB 07:C09B: D0 EB     BNE bra_C088_loop
C - - - - - 0x01C0AD 07:C09D: A9 05     LDA #$05
C - - - - - 0x01C0AF 07:C09F: 20 C8 FF  JSR sub_FFC8
loc_C0A2_loop:
C D 2 - - - 0x01C0B2 07:C0A2: A6 DB     LDX ram_queue_index_2
C - - - - - 0x01C0B4 07:C0A4: B5 DC     LDA ram_sfx_queue,X
C - - - - - 0x01C0B6 07:C0A6: C9 88     CMP #$88
C - - - - - 0x01C0B8 07:C0A8: F0 12     BEQ bra_C0BC
C - - - - - 0x01C0BA 07:C0AA: 48        PHA
C - - - - - 0x01C0BB 07:C0AB: A9 88     LDA #$88
C - - - - - 0x01C0BD 07:C0AD: 95 DC     STA ram_sfx_queue,X
C - - - - - 0x01C0BF 07:C0AF: E8        INX
C - - - - - 0x01C0C0 07:C0B0: 8A        TXA
C - - - - - 0x01C0C1 07:C0B1: 29 07     AND #$07
C - - - - - 0x01C0C3 07:C0B3: 85 DB     STA ram_queue_index_2
C - - - - - 0x01C0C5 07:C0B5: 68        PLA
C - - - - - 0x01C0C6 07:C0B6: 20 03 80  JSR sub_0x014013_prepare_new_sfx
C - - - - - 0x01C0C9 07:C0B9: 4C A2 C0  JMP loc_C0A2_loop
bra_C0BC:
C - - - - - 0x01C0CC 07:C0BC: 20 00 80  JSR sub_0x014010_update_music_engine
C - - - - - 0x01C0CF 07:C0BF: A5 BF     LDA ram_00BF
C - - - - - 0x01C0D1 07:C0C1: 20 C8 FF  JSR sub_FFC8
C - - - - - 0x01C0D4 07:C0C4: 68        PLA
C - - - - - 0x01C0D5 07:C0C5: A8        TAY
C - - - - - 0x01C0D6 07:C0C6: 68        PLA
C - - - - - 0x01C0D7 07:C0C7: AA        TAX
C - - - - - 0x01C0D8 07:C0C8: 68        PLA
C - - - - - 0x01C0D9 07:C0C9: 28        PLP
C - - - - - 0x01C0DA 07:C0CA: 40        RTI



sub_C0CB_write_buffer_to_ppu:
C - - - - - 0x01C0DB 07:C0CB: A2 00     LDX #$00
C - - - - - 0x01C0DD 07:C0CD: 86 19     STX ram_0019
sub_C0CF_write_buffer_to_ppu:
bra_C0CF_loop:
C - - - - - 0x01C0DF 07:C0CF: BD 80 07  LDA ram_ppu_buffer,X
C - - - - - 0x01C0E2 07:C0D2: 30 1B     BMI bra_C0EF_RTS
C - - - - - 0x01C0E4 07:C0D4: 8D 06 20  STA $2006
C - - - - - 0x01C0E7 07:C0D7: BD 81 07  LDA ram_ppu_buffer + $01,X
C - - - - - 0x01C0EA 07:C0DA: 8D 06 20  STA $2006
C - - - - - 0x01C0ED 07:C0DD: BC 82 07  LDY ram_ppu_buffer + $02,X
bra_C0E0_loop:
C - - - - - 0x01C0F0 07:C0E0: BD 83 07  LDA ram_ppu_buffer + $03,X
C - - - - - 0x01C0F3 07:C0E3: 8D 07 20  STA $2007
C - - - - - 0x01C0F6 07:C0E6: E8        INX
C - - - - - 0x01C0F7 07:C0E7: 88        DEY
C - - - - - 0x01C0F8 07:C0E8: 10 F6     BPL bra_C0E0_loop
C - - - - - 0x01C0FA 07:C0EA: E8        INX
C - - - - - 0x01C0FB 07:C0EB: E8        INX
C - - - - - 0x01C0FC 07:C0EC: E8        INX
C - - - - - 0x01C0FD 07:C0ED: D0 E0     BNE bra_C0CF_loop
bra_C0EF_RTS:
C - - - - - 0x01C0FF 07:C0EF: 60        RTS


; bzk garbage
- - - - - - 0x01C100 07:C0F0: A5 FF     LDA ram_for_2000
- - - - - - 0x01C102 07:C0F2: 29 11     AND #$11
- - - - - - 0x01C104 07:C0F4: 85 FF     STA ram_for_2000
- - - - - - 0x01C106 07:C0F6: 8D 00 20  STA $2000
- - - - - - 0x01C109 07:C0F9: 60        RTS


; bzk garbage
- - - - - - 0x01C10A 07:C0FA: A5 FF     LDA ram_for_2000
- - - - - - 0x01C10C 07:C0FC: 09 80     ORA #$80
- - - - - - 0x01C10E 07:C0FE: 85 FF     STA ram_for_2000
- - - - - - 0x01C110 07:C100: 8D 00 20  STA $2000
- - - - - - 0x01C113 07:C103: 60        RTS



sub_C104:
C - - - - - 0x01C114 07:C104: E6 EE     INC ram_00EE
C - - - - - 0x01C116 07:C106: A9 00     LDA #$00
C - - - - - 0x01C118 07:C108: 85 FE     STA ram_for_2001
C - - - - - 0x01C11A 07:C10A: 8D 01 20  STA $2001
C - - - - - 0x01C11D 07:C10D: 60        RTS



sub_C10E:
C - - - - - 0x01C11E 07:C10E: C6 EE     DEC ram_00EE
C - - - - - 0x01C120 07:C110: A9 1E     LDA #$1E
C - - - - - 0x01C122 07:C112: 85 FE     STA ram_for_2001
C - - - - - 0x01C124 07:C114: 8D 01 20  STA $2001
C - - - - - 0x01C127 07:C117: 60        RTS



sub_C118_read_joy_regs:
C - - - - - 0x01C128 07:C118: A2 01     LDX #$01
C - - - - - 0x01C12A 07:C11A: 8E 16 40  STX $4016
C - - - - - 0x01C12D 07:C11D: CA        DEX
C - - - - - 0x01C12E 07:C11E: 8E 16 40  STX $4016
C - - - - - 0x01C131 07:C121: A2 08     LDX #$08
bra_C123_loop:
C - - - - - 0x01C133 07:C123: AD 16 40  LDA $4016
C - - - - - 0x01C136 07:C126: 4A        LSR
C - - - - - 0x01C137 07:C127: 26 14     ROL ram_btn_press
C - - - - - 0x01C139 07:C129: 4A        LSR
C - - - - - 0x01C13A 07:C12A: 26 00     ROL ram_0000
C - - - - - 0x01C13C 07:C12C: AD 17 40  LDA $4017
C - - - - - 0x01C13F 07:C12F: 4A        LSR
C - - - - - 0x01C140 07:C130: 26 15     ROL ram_btn_press + $01
C - - - - - 0x01C142 07:C132: 4A        LSR
C - - - - - 0x01C143 07:C133: 26 01     ROL ram_0001
C - - - - - 0x01C145 07:C135: CA        DEX
C - - - - - 0x01C146 07:C136: D0 EB     BNE bra_C123_loop
C - - - - - 0x01C148 07:C138: A5 00     LDA ram_0000
C - - - - - 0x01C14A 07:C13A: 05 14     ORA ram_btn_press
C - - - - - 0x01C14C 07:C13C: 85 14     STA ram_btn_press
C - - - - - 0x01C14E 07:C13E: A5 01     LDA ram_0001
C - - - - - 0x01C150 07:C140: 05 15     ORA ram_btn_press + $01
C - - - - - 0x01C152 07:C142: 85 15     STA ram_btn_press + $01
C - - - - - 0x01C154 07:C144: A2 01     LDX #$01
bra_C146_loop:
C - - - - - 0x01C156 07:C146: B5 14     LDA ram_btn_press,X
C - - - - - 0x01C158 07:C148: A8        TAY
C - - - - - 0x01C159 07:C149: 55 16     EOR ram_btn_hold,X
C - - - - - 0x01C15B 07:C14B: 35 14     AND ram_btn_press,X
C - - - - - 0x01C15D 07:C14D: 95 14     STA ram_btn_press,X
C - - - - - 0x01C15F 07:C14F: 94 16     STY ram_btn_hold,X
C - - - - - 0x01C161 07:C151: CA        DEX
C - - - - - 0x01C162 07:C152: 10 F2     BPL bra_C146_loop
C - - - - - 0x01C164 07:C154: A2 03     LDX #$03
bra_C156_loop:
C - - - - - 0x01C166 07:C156: B5 14     LDA ram_btn_press,X
C - - - - - 0x01C168 07:C158: 29 0C     AND #con_btns_UD
C - - - - - 0x01C16A 07:C15A: C9 0C     CMP #con_btns_UD
C - - - - - 0x01C16C 07:C15C: F0 08     BEQ bra_C166
C - - - - - 0x01C16E 07:C15E: B5 14     LDA ram_btn_press,X
C - - - - - 0x01C170 07:C160: 29 03     AND #con_btns_LR
C - - - - - 0x01C172 07:C162: C9 03     CMP #con_btns_LR
C - - - - - 0x01C174 07:C164: D0 06     BNE bra_C16C
bra_C166:
; bzk this was logged from tas
; normally you're not allowed to press opposite buttons at the same time
C - - - - - 0x01C176 07:C166: B5 14     LDA ram_btn_press,X
C - - - - - 0x01C178 07:C168: 29 F0     AND #con_btns_SSAB
C - - - - - 0x01C17A 07:C16A: 95 14     STA ram_btn_press,X
bra_C16C:
C - - - - - 0x01C17C 07:C16C: CA        DEX
C - - - - - 0x01C17D 07:C16D: 10 E7     BPL bra_C156_loop
C - - - - - 0x01C17F 07:C16F: 60        RTS



sub_C170:
C - - - - - 0x01C180 07:C170: 85 00     STA ram_0000    ; ppu hi
C - - - - - 0x01C182 07:C172: 86 01     STX ram_0001    ; tile id
C - - - - - 0x01C184 07:C174: 84 02     STY ram_0002
C - - - - - 0x01C186 07:C176: AD 02 20  LDA $2002
C - - - - - 0x01C189 07:C179: A5 FF     LDA ram_for_2000
C - - - - - 0x01C18B 07:C17B: 29 FE     AND #$FE
C - - - - - 0x01C18D 07:C17D: 8D 00 20  STA $2000
C - - - - - 0x01C190 07:C180: A5 00     LDA ram_0000
C - - - - - 0x01C192 07:C182: 8D 06 20  STA $2006
C - - - - - 0x01C195 07:C185: A0 00     LDY #$00
C - - - - - 0x01C197 07:C187: 8C 06 20  STY $2006
C - - - - - 0x01C19A 07:C18A: A2 04     LDX #$04
; bzk optimize, useless check, no code writes < 20 into 0000
C - - - - - 0x01C19C 07:C18C: C9 20     CMP #$20
C - - - - - 0x01C19E 07:C18E: B0 02     BCS bra_C192
- - - - - - 0x01C1A0 07:C190: A6 02     LDX ram_0002
bra_C192:
C - - - - - 0x01C1A2 07:C192: A0 00     LDY #$00
C - - - - - 0x01C1A4 07:C194: A5 01     LDA ram_0001
bra_C196_loop:
C - - - - - 0x01C1A6 07:C196: 8D 07 20  STA $2007
C - - - - - 0x01C1A9 07:C199: 88        DEY
C - - - - - 0x01C1AA 07:C19A: D0 FA     BNE bra_C196_loop
C - - - - - 0x01C1AC 07:C19C: CA        DEX
C - - - - - 0x01C1AD 07:C19D: D0 F7     BNE bra_C196_loop
C - - - - - 0x01C1AF 07:C19F: A4 02     LDY ram_0002
C - - - - - 0x01C1B1 07:C1A1: A5 00     LDA ram_0000
; bzk optimize, useless check, no code writes < 20 into 0000
C - - - - - 0x01C1B3 07:C1A3: C9 20     CMP #$20
C - - - - - 0x01C1B5 07:C1A5: 90 12     BCC bra_C1B9
C - - - - - 0x01C1B7 07:C1A7: 69 02     ADC #$02
C - - - - - 0x01C1B9 07:C1A9: 8D 06 20  STA $2006
C - - - - - 0x01C1BC 07:C1AC: A9 C0     LDA #$C0
C - - - - - 0x01C1BE 07:C1AE: 8D 06 20  STA $2006
C - - - - - 0x01C1C1 07:C1B1: A2 40     LDX #$40
bra_C1B3_loop:
C - - - - - 0x01C1C3 07:C1B3: 8C 07 20  STY $2007
C - - - - - 0x01C1C6 07:C1B6: CA        DEX
C - - - - - 0x01C1C7 07:C1B7: D0 FA     BNE bra_C1B3_loop
bra_C1B9:
C - - - - - 0x01C1C9 07:C1B9: A6 01     LDX ram_0001
C - - - - - 0x01C1CB 07:C1BB: 60        RTS



sub_C1BC_hide_unused_sprites:
C - - - - - 0x01C1CC 07:C1BC: A6 97     LDX ram_spr_index
C - - - - - 0x01C1CE 07:C1BE: E0 04     CPX #$04
C - - - - - 0x01C1D0 07:C1C0: D0 05     BNE bra_C1C7
C - - - - - 0x01C1D2 07:C1C2: A9 F8     LDA #$F8
C - - - - - 0x01C1D4 07:C1C4: 8D 00 02  STA ram_spr_Y
bra_C1C7:
C - - - - - 0x01C1D7 07:C1C7: A9 F8     LDA #$F8
bra_C1C9_loop:
C - - - - - 0x01C1D9 07:C1C9: 9D 00 02  STA ram_spr_Y,X
C - - - - - 0x01C1DC 07:C1CC: E8        INX
C - - - - - 0x01C1DD 07:C1CD: E8        INX
C - - - - - 0x01C1DE 07:C1CE: E8        INX
C - - - - - 0x01C1DF 07:C1CF: E8        INX
C - - - - - 0x01C1E0 07:C1D0: D0 F7     BNE bra_C1C9_loop
C - - - - - 0x01C1E2 07:C1D2: 60        RTS



sub_C1D3_clear_all_objects:
; except 00 index
C - - - - - 0x01C1E3 07:C1D3: A2 0F     LDX #$0F
bra_C1D5_loop:
C - - - - - 0x01C1E5 07:C1D5: A9 00     LDA #$00
C - - - - - 0x01C1E7 07:C1D7: 9D 00 03  STA ram_obj_flags,X
C - - - - - 0x01C1EA 07:C1DA: 9D A0 04  STA ram_04A0_obj,X
C - - - - - 0x01C1ED 07:C1DD: A9 FF     LDA #$FF
C - - - - - 0x01C1EF 07:C1DF: 9D E0 03  STA ram_03E0_obj,X
C - - - - - 0x01C1F2 07:C1E2: CA        DEX
C - - - - - 0x01C1F3 07:C1E3: D0 F0     BNE bra_C1D5_loop
C - - - - - 0x01C1F5 07:C1E5: 60        RTS



sub_C1E6:
loc_C1E6:
C D 2 - - - 0x01C1F6 07:C1E6: A9 30     LDA #$30
C - - - - - 0x01C1F8 07:C1E8: A2 F0     LDX #$F0
C - - - - - 0x01C1FA 07:C1EA: D0 03     BNE bra_C1EF   ; jmp



sub_C1EC:
C - - - - - 0x01C1FC 07:C1EC: A9 10     LDA #$10
C - - - - - 0x01C1FE 07:C1EE: AA        TAX
bra_C1EF:
C - - - - - 0x01C1FF 07:C1EF: 85 0F     STA ram_000F
C - - - - - 0x01C201 07:C1F1: 86 0D     STX ram_000D
C - - - - - 0x01C203 07:C1F3: A0 04     LDY #$04
C - - - - - 0x01C205 07:C1F5: 84 0E     STY ram_000E
sub_C1F7:
bra_C1F7_loop:
C - - - - - 0x01C207 07:C1F7: A0 1F     LDY #$1F
bra_C1F9_loop:
C - - - - - 0x01C209 07:C1F9: B9 20 06  LDA ram_pal_buffer_2,Y
C - - - - - 0x01C20C 07:C1FC: 99 00 06  STA ram_pal_buffer_1,Y
C - - - - - 0x01C20F 07:C1FF: 88        DEY
C - - - - - 0x01C210 07:C200: 10 F7     BPL bra_C1F9_loop
C - - - - - 0x01C212 07:C202: A0 1F     LDY #$1F
bra_C204_loop:
C - - - - - 0x01C214 07:C204: B9 00 06  LDA ram_pal_buffer_1,Y
C - - - - - 0x01C217 07:C207: 38        SEC
C - - - - - 0x01C218 07:C208: E5 0F     SBC ram_000F
C - - - - - 0x01C21A 07:C20A: 10 02     BPL bra_C20E
C - - - - - 0x01C21C 07:C20C: A9 0F     LDA #$0F
bra_C20E:
C - - - - - 0x01C21E 07:C20E: 99 00 06  STA ram_pal_buffer_1,Y
C - - - - - 0x01C221 07:C211: 88        DEY
C - - - - - 0x01C222 07:C212: 10 F0     BPL bra_C204_loop
C - - - - - 0x01C224 07:C214: 84 18     STY ram_0018
C - - - - - 0x01C226 07:C216: A5 0E     LDA ram_000E
bra_C218_loop:
C - - - - - 0x01C228 07:C218: 48        PHA
C - - - - - 0x01C229 07:C219: 20 AD FF  JSR sub_FFAD
C - - - - - 0x01C22C 07:C21C: 68        PLA
C - - - - - 0x01C22D 07:C21D: 38        SEC
C - - - - - 0x01C22E 07:C21E: E9 01     SBC #$01
C - - - - - 0x01C230 07:C220: D0 F6     BNE bra_C218_loop
C - - - - - 0x01C232 07:C222: A5 0F     LDA ram_000F
C - - - - - 0x01C234 07:C224: 18        CLC
C - - - - - 0x01C235 07:C225: 65 0D     ADC ram_000D
C - - - - - 0x01C237 07:C227: 85 0F     STA ram_000F
C - - - - - 0x01C239 07:C229: C9 50     CMP #$50
C - - - - - 0x01C23B 07:C22B: F0 04     BEQ bra_C231_RTS
C - - - - - 0x01C23D 07:C22D: A5 0F     LDA ram_000F
C - - - - - 0x01C23F 07:C22F: 10 C6     BPL bra_C1F7_loop
bra_C231_RTS:
C - - - - - 0x01C241 07:C231: 60        RTS


; bzk garbage
- - - - - - 0x01C242 07:C232: 86 0E     STX ram_000E
- - - - - - 0x01C244 07:C234: 84 0F     STY ram_000F
- - - - - - 0x01C246 07:C236: 0A        ASL
- - - - - - 0x01C247 07:C237: A8        TAY
- - - - - - 0x01C248 07:C238: C8        INY
- - - - - - 0x01C249 07:C239: 68        PLA
- - - - - - 0x01C24A 07:C23A: 85 0C     STA ram_000C
- - - - - - 0x01C24C 07:C23C: 68        PLA
- - - - - - 0x01C24D 07:C23D: 85 0D     STA ram_000D
- - - - - - 0x01C24F 07:C23F: B1 0C     LDA (ram_000C),Y
- - - - - - 0x01C251 07:C241: AA        TAX
- - - - - - 0x01C252 07:C242: C8        INY
- - - - - - 0x01C253 07:C243: B1 0C     LDA (ram_000C),Y
- - - - - - 0x01C255 07:C245: 85 0D     STA ram_000D
- - - - - - 0x01C257 07:C247: 86 0C     STX ram_000C
- - - - - - 0x01C259 07:C249: A6 0E     LDX ram_000E
- - - - - - 0x01C25B 07:C24B: A4 0F     LDY ram_000F
- - - - - - 0x01C25D 07:C24D: 6C 0C 00  JMP (ram_000C)



sub_C250_roll_rng:
C - - - - - 0x01C260 07:C250: A2 00     LDX #$00
C - - - - - 0x01C262 07:C252: A0 04     LDY #$04
C - - - - - 0x01C264 07:C254: B5 E4     LDA ram_random,X
C - - - - - 0x01C266 07:C256: 29 02     AND #$02
C - - - - - 0x01C268 07:C258: 85 00     STA ram_0000
C - - - - - 0x01C26A 07:C25A: B5 E5     LDA ram_random + $01,X
C - - - - - 0x01C26C 07:C25C: 29 02     AND #$02
C - - - - - 0x01C26E 07:C25E: 45 00     EOR ram_0000
C - - - - - 0x01C270 07:C260: 18        CLC
C - - - - - 0x01C271 07:C261: F0 01     BEQ bra_C264
C - - - - - 0x01C273 07:C263: 38        SEC
bra_C264:
bra_C264_loop:
C - - - - - 0x01C274 07:C264: 76 E4     ROR ram_random,X
C - - - - - 0x01C276 07:C266: E8        INX
C - - - - - 0x01C277 07:C267: 88        DEY
C - - - - - 0x01C278 07:C268: D0 FA     BNE bra_C264_loop
C - - - - - 0x01C27A 07:C26A: 60        RTS



loc_C26B_write_chr_to_ppu:
sub_C26B_write_chr_to_ppu:
; see con_C2C4
C D 2 - - - 0x01C27B 07:C26B: A5 FF     LDA ram_for_2000
C - - - - - 0x01C27D 07:C26D: 29 FE     AND #$FE
C - - - - - 0x01C27F 07:C26F: 8D 00 20  STA $2000
C - - - - - 0x01C282 07:C272: BD C4 C2  LDA tbl_C2C4_chr_lo,X
C - - - - - 0x01C285 07:C275: 85 02     STA ram_0002
C - - - - - 0x01C287 07:C277: BD E4 C2  LDA tbl_C2E4_chr_hi,X
C - - - - - 0x01C28A 07:C27A: 85 03     STA ram_0003
C - - - - - 0x01C28C 07:C27C: A0 00     LDY #$00
bra_C27E_loop:
C - - - - - 0x01C28E 07:C27E: B1 02     LDA (ram_0002),Y
C - - - - - 0x01C290 07:C280: 30 41     BMI bra_C2C3_RTS
C - - - - - 0x01C292 07:C282: 20 CD FF  JSR sub_FFCD_prg_bankswitch
C - - - - - 0x01C295 07:C285: C8        INY
C - - - - - 0x01C296 07:C286: B1 02     LDA (ram_0002),Y
C - - - - - 0x01C298 07:C288: 85 04     STA ram_0004
C - - - - - 0x01C29A 07:C28A: C8        INY
C - - - - - 0x01C29B 07:C28B: B1 02     LDA (ram_0002),Y
C - - - - - 0x01C29D 07:C28D: 85 06     STA ram_0006
C - - - - - 0x01C29F 07:C28F: A2 00     LDX #$00
C - - - - - 0x01C2A1 07:C291: 86 05     STX ram_0005
C - - - - - 0x01C2A3 07:C293: C8        INY
C - - - - - 0x01C2A4 07:C294: AD 02 20  LDA $2002
C - - - - - 0x01C2A7 07:C297: B1 02     LDA (ram_0002),Y
C - - - - - 0x01C2A9 07:C299: 8D 06 20  STA $2006
C - - - - - 0x01C2AC 07:C29C: 8E 06 20  STX $2006
C - - - - - 0x01C2AF 07:C29F: 84 07     STY ram_0007
bra_C2A1_loop:
C - - - - - 0x01C2B1 07:C2A1: A0 00     LDY #$00
bra_C2A3_loop:
C - - - - - 0x01C2B3 07:C2A3: B1 05     LDA (ram_0005),Y
C - - - - - 0x01C2B5 07:C2A5: 8D 07 20  STA $2007
C - - - - - 0x01C2B8 07:C2A8: C8        INY
C - - - - - 0x01C2B9 07:C2A9: C0 10     CPY #$10
C - - - - - 0x01C2BB 07:C2AB: D0 F6     BNE bra_C2A3_loop
C - - - - - 0x01C2BD 07:C2AD: A5 05     LDA ram_0005
C - - - - - 0x01C2BF 07:C2AF: 18        CLC
C - - - - - 0x01C2C0 07:C2B0: 69 10     ADC #< $0010
C - - - - - 0x01C2C2 07:C2B2: 85 05     STA ram_0005
C - - - - - 0x01C2C4 07:C2B4: A5 06     LDA ram_0006
C - - - - - 0x01C2C6 07:C2B6: 69 00     ADC #> $0010
C - - - - - 0x01C2C8 07:C2B8: 85 06     STA ram_0006
C - - - - - 0x01C2CA 07:C2BA: C6 04     DEC ram_0004
C - - - - - 0x01C2CC 07:C2BC: D0 E3     BNE bra_C2A1_loop
C - - - - - 0x01C2CE 07:C2BE: A4 07     LDY ram_0007
C - - - - - 0x01C2D0 07:C2C0: C8        INY
C - - - - - 0x01C2D1 07:C2C1: D0 BB     BNE bra_C27E_loop
bra_C2C3_RTS:
C - - - - - 0x01C2D3 07:C2C3: 60        RTS



tbl_C2C4_chr_lo:
- D 2 - - - 0x01C2D4 07:C2C4: 04        .byte < _off011_C304_00   ; 
- D 2 - - - 0x01C2D5 07:C2C5: 1D        .byte < _off011_C31D_01   ; 
- D 2 - - - 0x01C2D6 07:C2C6: 36        .byte < _off011_C336_02   ; 
- D 2 - - - 0x01C2D7 07:C2C7: 53        .byte < _off011_C353_03   ; 
- D 2 - - - 0x01C2D8 07:C2C8: 68        .byte < _off011_C368_04   ; 
- D 2 - - - 0x01C2D9 07:C2C9: 81        .byte < _off011_C381_05   ; 
- - - - - - 0x01C2DA 07:C2CA: A2        .byte < _off011_C3A2_06   ; unused, no such index
- D 2 - - - 0x01C2DB 07:C2CB: AF        .byte < _off011_C3AF_07   ; 
- D 2 - - - 0x01C2DC 07:C2CC: B8        .byte < _off011_C3B8_08   ; 
- D 2 - - - 0x01C2DD 07:C2CD: D5        .byte < _off011_C3D5_09   ; 
- D 2 - - - 0x01C2DE 07:C2CE: E2        .byte < _off011_C3E2_0A   ; 
- D 2 - - - 0x01C2DF 07:C2CF: E7        .byte < _off011_C3E7_0B   ; 
- D 2 - - - 0x01C2E0 07:C2D0: FC        .byte < _off011_C3FC_0C   ; 
- D 2 - - - 0x01C2E1 07:C2D1: 01        .byte < _off011_C401_0D   ; 
- D 2 - - - 0x01C2E2 07:C2D2: 16        .byte < _off011_C416_0E   ; 
- D 2 - - - 0x01C2E3 07:C2D3: 2B        .byte < _off011_C42B_0F   ; 
- D 2 - - - 0x01C2E4 07:C2D4: 3C        .byte < _off011_C43C_10   ; 
- D 2 - - - 0x01C2E5 07:C2D5: 41        .byte < _off011_C441_11   ; 
- D 2 - - - 0x01C2E6 07:C2D6: 46        .byte < _off011_C446_12   ; 
- D 2 - - - 0x01C2E7 07:C2D7: 4B        .byte < _off011_C44B_13   ; 
- D 2 - - - 0x01C2E8 07:C2D8: 50        .byte < _off011_C450_14   ; 
- D 2 - - - 0x01C2E9 07:C2D9: 55        .byte < _off011_C455_15   ; 
- D 2 - - - 0x01C2EA 07:C2DA: 5E        .byte < _off011_C45E_16   ; 
- D 2 - - - 0x01C2EB 07:C2DB: 7B        .byte < _off011_C47B_17   ; 
- D 2 - - - 0x01C2EC 07:C2DC: 94        .byte < _off011_C494_18   ; 
- D 2 - - - 0x01C2ED 07:C2DD: B5        .byte < _off011_C4B5_19   ; 
- D 2 - - - 0x01C2EE 07:C2DE: CE        .byte < _off011_C4CE_1A   ; 
- D 2 - - - 0x01C2EF 07:C2DF: 36        .byte < _off011_C336_1B   ; 
- D 2 - - - 0x01C2F0 07:C2E0: E7        .byte < _off011_C4E7_1C   ; 
- D 2 - - - 0x01C2F1 07:C2E1: 00        .byte < _off011_C500_1D   ; 
- - - - - - 0x01C2F2 07:C2E2: 81        .byte < _off011_C381_1E   ; unused?
- - - - - - 0x01C2F3 07:C2E3: 29        .byte < _off011_C529_1F   ; unused, no such index

tbl_C2E4_chr_hi:
- D 2 - - - 0x01C2F4 07:C2E4: C3        .byte > _off011_C304_00   ; 
- D 2 - - - 0x01C2F5 07:C2E5: C3        .byte > _off011_C31D_01   ; 
- D 2 - - - 0x01C2F6 07:C2E6: C3        .byte > _off011_C336_02   ; 
- D 2 - - - 0x01C2F7 07:C2E7: C3        .byte > _off011_C353_03   ; 
- D 2 - - - 0x01C2F8 07:C2E8: C3        .byte > _off011_C368_04   ; 
- D 2 - - - 0x01C2F9 07:C2E9: C3        .byte > _off011_C381_05   ; 
- - - - - - 0x01C2FA 07:C2EA: C3        .byte > _off011_C3A2_06   ; unused, no such index
- D 2 - - - 0x01C2FB 07:C2EB: C3        .byte > _off011_C3AF_07   ; 
- D 2 - - - 0x01C2FC 07:C2EC: C3        .byte > _off011_C3B8_08   ; 
- D 2 - - - 0x01C2FD 07:C2ED: C3        .byte > _off011_C3D5_09   ; 
- D 2 - - - 0x01C2FE 07:C2EE: C3        .byte > _off011_C3E2_0A   ; 
- D 2 - - - 0x01C2FF 07:C2EF: C3        .byte > _off011_C3E7_0B   ; 
- D 2 - - - 0x01C300 07:C2F0: C3        .byte > _off011_C3FC_0C   ; 
- D 2 - - - 0x01C301 07:C2F1: C4        .byte > _off011_C401_0D   ; 
- D 2 - - - 0x01C302 07:C2F2: C4        .byte > _off011_C416_0E   ; 
- D 2 - - - 0x01C303 07:C2F3: C4        .byte > _off011_C42B_0F   ; 
- D 2 - - - 0x01C304 07:C2F4: C4        .byte > _off011_C43C_10   ; 
- D 2 - - - 0x01C305 07:C2F5: C4        .byte > _off011_C441_11   ; 
- D 2 - - - 0x01C306 07:C2F6: C4        .byte > _off011_C446_12   ; 
- D 2 - - - 0x01C307 07:C2F7: C4        .byte > _off011_C44B_13   ; 
- D 2 - - - 0x01C308 07:C2F8: C4        .byte > _off011_C450_14   ; 
- D 2 - - - 0x01C309 07:C2F9: C4        .byte > _off011_C455_15   ; 
- D 2 - - - 0x01C30A 07:C2FA: C4        .byte > _off011_C45E_16   ; 
- D 2 - - - 0x01C30B 07:C2FB: C4        .byte > _off011_C47B_17   ; 
- D 2 - - - 0x01C30C 07:C2FC: C4        .byte > _off011_C494_18   ; 
- D 2 - - - 0x01C30D 07:C2FD: C4        .byte > _off011_C4B5_19   ; 
- D 2 - - - 0x01C30E 07:C2FE: C4        .byte > _off011_C4CE_1A   ; 
- D 2 - - - 0x01C30F 07:C2FF: C3        .byte > _off011_C336_1B   ; 
- D 2 - - - 0x01C310 07:C300: C4        .byte > _off011_C4E7_1C   ; 
- D 2 - - - 0x01C311 07:C301: C5        .byte > _off011_C500_1D   ; 
- - - - - - 0x01C312 07:C302: C3        .byte > _off011_C381_1E   ; unused?
- - - - - - 0x01C313 07:C303: C5        .byte > _off011_C529_1F   ; unused, no such index



_off011_C304_00:
- D 2 - I - 0x01C314 07:C304: 02        .byte con_prg_bank + $02   ; 
- D 2 - I - 0x01C315 07:C305: C0        .byte $C0   ; 
- D 2 - I - 0x01C316 07:C306: 80        .byte > off_0x008010_chr
- D 2 - I - 0x01C317 07:C307: 00        .byte $00   ; 

- D 2 - I - 0x01C318 07:C308: 02        .byte con_prg_bank + $02   ; 
- D 2 - I - 0x01C319 07:C309: 10        .byte $10   ; 
- D 2 - I - 0x01C31A 07:C30A: 8C        .byte > off_0x008C10_chr
- D 2 - I - 0x01C31B 07:C30B: 0C        .byte $0C   ; 

- D 2 - I - 0x01C31C 07:C30C: 02        .byte con_prg_bank + $02   ; 
- D 2 - I - 0x01C31D 07:C30D: 10        .byte $10   ; 
- D 2 - I - 0x01C31E 07:C30E: 91        .byte > off_0x009110_chr
- D 2 - I - 0x01C31F 07:C30F: 0D        .byte $0D   ; 

- D 2 - I - 0x01C320 07:C310: 02        .byte con_prg_bank + $02   ; 
- D 2 - I - 0x01C321 07:C311: 10        .byte $10   ; 
- D 2 - I - 0x01C322 07:C312: 96        .byte > off_0x009610_chr
- D 2 - I - 0x01C323 07:C313: 0E        .byte $0E   ; 

- D 2 - I - 0x01C324 07:C314: 02        .byte con_prg_bank + $02   ; 
- D 2 - I - 0x01C325 07:C315: 10        .byte $10   ; 
- D 2 - I - 0x01C326 07:C316: BB        .byte > off_0x00BB10_chr
- D 2 - I - 0x01C327 07:C317: 0F        .byte $0F   ; 

- D 2 - I - 0x01C328 07:C318: 03        .byte con_prg_bank + $03   ; 
- D 2 - I - 0x01C329 07:C319: 00        .byte $00   ; 
- D 2 - I - 0x01C32A 07:C31A: 80        .byte > off_0x00C010_chr
- D 2 - I - 0x01C32B 07:C31B: 10        .byte $10   ; 

- D 2 - I - 0x01C32C 07:C31C: FF        .byte $FF   ; end token



_off011_C31D_01:
- D 2 - I - 0x01C32D 07:C31D: 02        .byte con_prg_bank + $02   ; 
- D 2 - I - 0x01C32E 07:C31E: C0        .byte $C0   ; 
- D 2 - I - 0x01C32F 07:C31F: 80        .byte > off_0x008010_chr
- D 2 - I - 0x01C330 07:C320: 00        .byte $00   ; 

- D 2 - I - 0x01C331 07:C321: 02        .byte con_prg_bank + $02   ; 
- D 2 - I - 0x01C332 07:C322: 10        .byte $10   ; 
- D 2 - I - 0x01C333 07:C323: 8C        .byte > off_0x008C10_chr
- D 2 - I - 0x01C334 07:C324: 0C        .byte $0C   ; 

- D 2 - I - 0x01C335 07:C325: 02        .byte con_prg_bank + $02   ; 
- D 2 - I - 0x01C336 07:C326: 10        .byte $10   ; 
- D 2 - I - 0x01C337 07:C327: 91        .byte > off_0x009110_chr
- D 2 - I - 0x01C338 07:C328: 0D        .byte $0D   ; 

- D 2 - I - 0x01C339 07:C329: 02        .byte con_prg_bank + $02   ; 
- D 2 - I - 0x01C33A 07:C32A: 20        .byte $20   ; 
- D 2 - I - 0x01C33B 07:C32B: AE        .byte > off_0x00AE10_chr
- D 2 - I - 0x01C33C 07:C32C: 0E        .byte $0E   ; 

- D 2 - I - 0x01C33D 07:C32D: 03        .byte con_prg_bank + $03   ; 
- D 2 - I - 0x01C33E 07:C32E: 40        .byte $40   ; 
- D 2 - I - 0x01C33F 07:C32F: 80        .byte > off_0x00C010_chr
- D 2 - I - 0x01C340 07:C330: 10        .byte $10   ; 

- D 2 - I - 0x01C341 07:C331: 03        .byte con_prg_bank + $03   ; 
- D 2 - I - 0x01C342 07:C332: C0        .byte $C0   ; 
- D 2 - I - 0x01C343 07:C333: 90        .byte > off_0x00D010_chr
- D 2 - I - 0x01C344 07:C334: 14        .byte $14   ; 

- D 2 - I - 0x01C345 07:C335: FF        .byte $FF   ; end token



_off011_C336_02:
_off011_C336_1B:
- D 2 - I - 0x01C346 07:C336: 02        .byte con_prg_bank + $02   ; 
- D 2 - I - 0x01C347 07:C337: C0        .byte $C0   ; 
- D 2 - I - 0x01C348 07:C338: 80        .byte > off_0x008010_chr
- D 2 - I - 0x01C349 07:C339: 00        .byte $00   ; 

- D 2 - I - 0x01C34A 07:C33A: 02        .byte con_prg_bank + $02   ; 
- D 2 - I - 0x01C34B 07:C33B: 10        .byte $10   ; 
- D 2 - I - 0x01C34C 07:C33C: 98        .byte > off_0x009810_chr
- D 2 - I - 0x01C34D 07:C33D: 0C        .byte $0C   ; 

- D 2 - I - 0x01C34E 07:C33E: 02        .byte con_prg_bank + $02   ; 
- D 2 - I - 0x01C34F 07:C33F: 10        .byte $10   ; 
- D 2 - I - 0x01C350 07:C340: 8D        .byte > off_0x008D10_chr
- D 2 - I - 0x01C351 07:C341: 0D        .byte $0D   ; 

- D 2 - I - 0x01C352 07:C342: 02        .byte con_prg_bank + $02   ; 
- D 2 - I - 0x01C353 07:C343: 10        .byte $10   ; 
- D 2 - I - 0x01C354 07:C344: 96        .byte > off_0x009610_chr
- D 2 - I - 0x01C355 07:C345: 0E        .byte $0E   ; 

- D 2 - I - 0x01C356 07:C346: 02        .byte con_prg_bank + $02   ; 
- D 2 - I - 0x01C357 07:C347: 10        .byte $10   ; 
- D 2 - I - 0x01C358 07:C348: 8F        .byte > off_0x008F10_chr
- D 2 - I - 0x01C359 07:C349: 0F        .byte $0F   ; 

- D 2 - I - 0x01C35A 07:C34A: 03        .byte con_prg_bank + $03   ; 
- D 2 - I - 0x01C35B 07:C34B: 40        .byte $40   ; 
- D 2 - I - 0x01C35C 07:C34C: 80        .byte > off_0x00C010_chr
- D 2 - I - 0x01C35D 07:C34D: 10        .byte $10   ; 

- D 2 - I - 0x01C35E 07:C34E: 03        .byte con_prg_bank + $03   ; 
- D 2 - I - 0x01C35F 07:C34F: C0        .byte $C0   ; 
- D 2 - I - 0x01C360 07:C350: 9C        .byte > off_0x00DC10_chr
- D 2 - I - 0x01C361 07:C351: 14        .byte $14   ; 

- D 2 - I - 0x01C362 07:C352: FF        .byte $FF   ; end token



_off011_C353_03:
- D 2 - I - 0x01C363 07:C353: 02        .byte con_prg_bank + $02   ; 
- D 2 - I - 0x01C364 07:C354: C0        .byte $C0   ; 
- D 2 - I - 0x01C365 07:C355: 80        .byte > off_0x008010_chr
- D 2 - I - 0x01C366 07:C356: 00        .byte $00   ; 

- D 2 - I - 0x01C367 07:C357: 02        .byte con_prg_bank + $02   ; 
- D 2 - I - 0x01C368 07:C358: 10        .byte $10   ; 
- D 2 - I - 0x01C369 07:C359: B0        .byte > off_0x00B010_chr
- D 2 - I - 0x01C36A 07:C35A: 0C        .byte $0C   ; 

- D 2 - I - 0x01C36B 07:C35B: 02        .byte con_prg_bank + $02   ; 
- D 2 - I - 0x01C36C 07:C35C: 30        .byte $30   ; 
- D 2 - I - 0x01C36D 07:C35D: 9D        .byte > off_0x009D10_chr
- D 2 - I - 0x01C36E 07:C35E: 0D        .byte $0D   ; 

- D 2 - I - 0x01C36F 07:C35F: 03        .byte con_prg_bank + $03   ; 
- D 2 - I - 0x01C370 07:C360: 40        .byte $40   ; 
- D 2 - I - 0x01C371 07:C361: 80        .byte > off_0x00C010_chr
- D 2 - I - 0x01C372 07:C362: 10        .byte $10   ; 

- D 2 - I - 0x01C373 07:C363: 03        .byte con_prg_bank + $03   ; 
- D 2 - I - 0x01C374 07:C364: C0        .byte $C0   ; 
- D 2 - I - 0x01C375 07:C365: A8        .byte > off_0x00E810_chr
- D 2 - I - 0x01C376 07:C366: 14        .byte $14   ; 

- D 2 - I - 0x01C377 07:C367: FF        .byte $FF   ; end token



_off011_C368_04:
- D 2 - I - 0x01C378 07:C368: 02        .byte con_prg_bank + $02   ; 
- D 2 - I - 0x01C379 07:C369: C0        .byte $C0   ; 
- D 2 - I - 0x01C37A 07:C36A: 80        .byte > off_0x008010_chr
- D 2 - I - 0x01C37B 07:C36B: 00        .byte $00   ; 

- D 2 - I - 0x01C37C 07:C36C: 02        .byte con_prg_bank + $02   ; 
- D 2 - I - 0x01C37D 07:C36D: 20        .byte $20   ; 
- D 2 - I - 0x01C37E 07:C36E: A0        .byte > off_0x00A010_chr
- D 2 - I - 0x01C37F 07:C36F: 0C        .byte $0C   ; 

- D 2 - I - 0x01C380 07:C370: 02        .byte con_prg_bank + $02   ; 
- D 2 - I - 0x01C381 07:C371: 10        .byte $10   ; 
- D 2 - I - 0x01C382 07:C372: 96        .byte > off_0x009610_chr
- D 2 - I - 0x01C383 07:C373: 0E        .byte $0E   ; 

- D 2 - I - 0x01C384 07:C374: 02        .byte con_prg_bank + $02   ; 
- D 2 - I - 0x01C385 07:C375: 10        .byte $10   ; 
- D 2 - I - 0x01C386 07:C376: A3        .byte > off_0x00A310_chr
- D 2 - I - 0x01C387 07:C377: 0F        .byte $0F   ; 

- D 2 - I - 0x01C388 07:C378: 03        .byte con_prg_bank + $03   ; 
- D 2 - I - 0x01C389 07:C379: 40        .byte $40   ; 
- D 2 - I - 0x01C38A 07:C37A: 80        .byte > off_0x00C010_chr
- D 2 - I - 0x01C38B 07:C37B: 10        .byte $10   ; 

- D 2 - I - 0x01C38C 07:C37C: 03        .byte con_prg_bank + $03   ; 
- D 2 - I - 0x01C38D 07:C37D: C0        .byte $C0   ; 
- D 2 - I - 0x01C38E 07:C37E: B4        .byte > off_0x00F410_chr
- D 2 - I - 0x01C38F 07:C37F: 14        .byte $14   ; 

- D 2 - I - 0x01C390 07:C380: FF        .byte $FF   ; end token



_off011_C381_05:
_off011_C381_1E:
- D 2 - I - 0x01C391 07:C381: 02        .byte con_prg_bank + $02   ; 
- D 2 - I - 0x01C392 07:C382: 10        .byte $10   ; 
- D 2 - I - 0x01C393 07:C383: 8C        .byte > off_0x008C10_chr
- D 2 - I - 0x01C394 07:C384: 0C        .byte $0C   ; 

- D 2 - I - 0x01C395 07:C385: 02        .byte con_prg_bank + $02   ; 
- D 2 - I - 0x01C396 07:C386: 10        .byte $10   ; 
- D 2 - I - 0x01C397 07:C387: B1        .byte > off_0x00B110_chr
- D 2 - I - 0x01C398 07:C388: 0D        .byte $0D   ; 

- D 2 - I - 0x01C399 07:C389: 02        .byte con_prg_bank + $02   ; 
- D 2 - I - 0x01C39A 07:C38A: 10        .byte $10   ; 
- D 2 - I - 0x01C39B 07:C38B: BE        .byte > off_0x00BE10_chr
- D 2 - I - 0x01C39C 07:C38C: 0E        .byte $0E   ; 

- D 2 - I - 0x01C39D 07:C38D: 02        .byte con_prg_bank + $02   ; 
- D 2 - I - 0x01C39E 07:C38E: 10        .byte $10   ; 
- D 2 - I - 0x01C39F 07:C38F: B3        .byte > off_0x00B310_chr
- D 2 - I - 0x01C3A0 07:C390: 0F        .byte $0F   ; 

- D 2 - I - 0x01C3A1 07:C391: 03        .byte con_prg_bank + $03   ; 
- D 2 - I - 0x01C3A2 07:C392: 10        .byte $10   ; 
- D 2 - I - 0x01C3A3 07:C393: 80        .byte > off_0x00C010_chr
- D 2 - I - 0x01C3A4 07:C394: 10        .byte $10   ; 

- D 2 - I - 0x01C3A5 07:C395: 01        .byte con_prg_bank + $01   ; 
- D 2 - I - 0x01C3A6 07:C396: 30        .byte $30   ; 
- D 2 - I - 0x01C3A7 07:C397: A9        .byte > off_0x006910_chr
- D 2 - I - 0x01C3A8 07:C398: 11        .byte $11   ; 

- D 2 - I - 0x01C3A9 07:C399: 03        .byte con_prg_bank + $03   ; 
- D 2 - I - 0x01C3AA 07:C39A: 10        .byte $10   ; 
- D 2 - I - 0x01C3AB 07:C39B: BF        .byte > off_0x00FF10_chr
- D 2 - I - 0x01C3AC 07:C39C: 14        .byte $14   ; 

- D 2 - I - 0x01C3AD 07:C39D: 01        .byte con_prg_bank + $01   ; 
- D 2 - I - 0x01C3AE 07:C39E: 80        .byte $80   ; 
- D 2 - I - 0x01C3AF 07:C39F: 98        .byte > off_0x005810_chr
- D 2 - I - 0x01C3B0 07:C3A0: 18        .byte $18   ; 

- D 2 - I - 0x01C3B1 07:C3A1: FF        .byte $FF   ; end token



_off011_C3A2_06:
- - - - - - 0x01C3B2 07:C3A2: 02        .byte con_prg_bank + $02   ; 
- - - - - - 0x01C3B3 07:C3A3: 10        .byte $10   ; 
- - - - - - 0x01C3B4 07:C3A4: 8C        .byte > off_0x008C10_chr
- - - - - - 0x01C3B5 07:C3A5: 0C        .byte $0C   ; 

- - - - - - 0x01C3B6 07:C3A6: 02        .byte con_prg_bank + $02   ; 
- - - - - - 0x01C3B7 07:C3A7: 30        .byte $30   ; 
- - - - - - 0x01C3B8 07:C3A8: 99        .byte > off_0x009910_chr
- - - - - - 0x01C3B9 07:C3A9: 0D        .byte $0D   ; 

- - - - - - 0x01C3BA 07:C3AA: 00        .byte con_prg_bank + $00   ; 
- - - - - - 0x01C3BB 07:C3AB: 80        .byte $80   ; 
- - - - - - 0x01C3BC 07:C3AC: AD        .byte > off_0x002D10_chr
- - - - - - 0x01C3BD 07:C3AD: 18        .byte $18   ; 

- - - - - - 0x01C3BE 07:C3AE: FF        .byte $FF   ; end token



_off011_C3AF_07:
- D 2 - I - 0x01C3BF 07:C3AF: 02        .byte con_prg_bank + $02   ; 
- D 2 - I - 0x01C3C0 07:C3B0: C0        .byte $C0   ; 
- D 2 - I - 0x01C3C1 07:C3B1: 80        .byte > off_0x008010_chr
- D 2 - I - 0x01C3C2 07:C3B2: 00        .byte $00   ; 

- D 2 - I - 0x01C3C3 07:C3B3: 03        .byte con_prg_bank + $03   ; 
- D 2 - I - 0x01C3C4 07:C3B4: 80        .byte $80   ; 
- D 2 - I - 0x01C3C5 07:C3B5: B8        .byte > off_0x00F810_chr
- D 2 - I - 0x01C3C6 07:C3B6: 18        .byte $18   ; 

- D 2 - I - 0x01C3C7 07:C3B7: FF        .byte $FF   ; end token



_off011_C3B8_08:
- D 2 - I - 0x01C3C8 07:C3B8: 02        .byte con_prg_bank + $02   ; 
- D 2 - I - 0x01C3C9 07:C3B9: 10        .byte $10   ; 
- D 2 - I - 0x01C3CA 07:C3BA: B6        .byte > off_0x00B610_chr
- D 2 - I - 0x01C3CB 07:C3BB: 0B        .byte $0B   ; 

- D 2 - I - 0x01C3CC 07:C3BC: 02        .byte con_prg_bank + $02   ; 
- D 2 - I - 0x01C3CD 07:C3BD: 10        .byte $10   ; 
- D 2 - I - 0x01C3CE 07:C3BE: 8C        .byte > off_0x008C10_chr
- D 2 - I - 0x01C3CF 07:C3BF: 0C        .byte $0C   ; 

- D 2 - I - 0x01C3D0 07:C3C0: 02        .byte con_prg_bank + $02   ; 
- D 2 - I - 0x01C3D1 07:C3C1: 10        .byte $10   ; 
- D 2 - I - 0x01C3D2 07:C3C2: B5        .byte > off_0x00B510_chr
- D 2 - I - 0x01C3D3 07:C3C3: 0D        .byte $0D   ; 

- D 2 - I - 0x01C3D4 07:C3C4: 02        .byte con_prg_bank + $02   ; 
- D 2 - I - 0x01C3D5 07:C3C5: 10        .byte $10   ; 
- D 2 - I - 0x01C3D6 07:C3C6: A2        .byte > off_0x00A210_chr
- D 2 - I - 0x01C3D7 07:C3C7: 0E        .byte $0E   ; 

- D 2 - I - 0x01C3D8 07:C3C8: 02        .byte con_prg_bank + $02   ; 
- D 2 - I - 0x01C3D9 07:C3C9: 10        .byte $10   ; 
- D 2 - I - 0x01C3DA 07:C3CA: B7        .byte > off_0x00B710_chr
- D 2 - I - 0x01C3DB 07:C3CB: 0F        .byte $0F   ; 

- D 2 - I - 0x01C3DC 07:C3CC: 03        .byte con_prg_bank + $03   ; 
- D 2 - I - 0x01C3DD 07:C3CD: 40        .byte $40   ; 
- D 2 - I - 0x01C3DE 07:C3CE: B8        .byte > off_0x00F810_chr
- D 2 - I - 0x01C3DF 07:C3CF: 18        .byte $18   ; 

- D 2 - I - 0x01C3E0 07:C3D0: 01        .byte con_prg_bank + $01   ; 
- D 2 - I - 0x01C3E1 07:C3D1: 40        .byte $40   ; 
- D 2 - I - 0x01C3E2 07:C3D2: AC        .byte > off_0x006C10_chr
- D 2 - I - 0x01C3E3 07:C3D3: 1C        .byte $1C   ; 

- D 2 - I - 0x01C3E4 07:C3D4: FF        .byte $FF   ; end token



_off011_C3D5_09:
- D 2 - I - 0x01C3E5 07:C3D5: 02        .byte con_prg_bank + $02   ; 
- D 2 - I - 0x01C3E6 07:C3D6: 20        .byte $20   ; 
- D 2 - I - 0x01C3E7 07:C3D7: A0        .byte > off_0x00A010_chr
- D 2 - I - 0x01C3E8 07:C3D8: 0C        .byte $0C   ; 

- D 2 - I - 0x01C3E9 07:C3D9: 02        .byte con_prg_bank + $02   ; 
- D 2 - I - 0x01C3EA 07:C3DA: 10        .byte $10   ; 
- D 2 - I - 0x01C3EB 07:C3DB: 96        .byte > off_0x009610_chr
- D 2 - I - 0x01C3EC 07:C3DC: 0E        .byte $0E   ; 

- D 2 - I - 0x01C3ED 07:C3DD: 02        .byte con_prg_bank + $02   ; 
- D 2 - I - 0x01C3EE 07:C3DE: 10        .byte $10   ; 
- D 2 - I - 0x01C3EF 07:C3DF: A3        .byte > off_0x00A310_chr
- D 2 - I - 0x01C3F0 07:C3E0: 0F        .byte $0F   ; 

- D 2 - I - 0x01C3F1 07:C3E1: FF        .byte $FF   ; end token



_off011_C3E2_0A:
- D 2 - I - 0x01C3F2 07:C3E2: 02        .byte con_prg_bank + $02   ; 
- D 2 - I - 0x01C3F3 07:C3E3: 40        .byte $40   ; 
- D 2 - I - 0x01C3F4 07:C3E4: 94        .byte > off_0x009410_chr
- D 2 - I - 0x01C3F5 07:C3E5: 0C        .byte $0C   ; 

- D 2 - I - 0x01C3F6 07:C3E6: FF        .byte $FF   ; end token



_off011_C3E7_0B:
- D 2 - I - 0x01C3F7 07:C3E7: 03        .byte con_prg_bank + $03   ; 
- D 2 - I - 0x01C3F8 07:C3E8: 10        .byte $10   ; 
- D 2 - I - 0x01C3F9 07:C3E9: 80        .byte > off_0x00C010_chr
- D 2 - I - 0x01C3FA 07:C3EA: 10        .byte $10   ; 

- D 2 - I - 0x01C3FB 07:C3EB: 05        .byte con_prg_bank + $05   ; 
- D 2 - I - 0x01C3FC 07:C3EC: 30        .byte $30   ; 
- D 2 - I - 0x01C3FD 07:C3ED: B5        .byte > off_0x017510_chr
- D 2 - I - 0x01C3FE 07:C3EE: 11        .byte $11   ; 

- D 2 - I - 0x01C3FF 07:C3EF: 05        .byte con_prg_bank + $05   ; 
- D 2 - I - 0x01C400 07:C3F0: 10        .byte $10   ; 
- D 2 - I - 0x01C401 07:C3F1: BB        .byte > off_0x017B10_chr
- D 2 - I - 0x01C402 07:C3F2: 14        .byte $14   ; 

- D 2 - I - 0x01C403 07:C3F3: 01        .byte con_prg_bank + $01   ; 
- D 2 - I - 0x01C404 07:C3F4: 10        .byte $10   ; 
- D 2 - I - 0x01C405 07:C3F5: BA        .byte > off_0x007A10_chr
- D 2 - I - 0x01C406 07:C3F6: 15        .byte $15   ; 

- D 2 - I - 0x01C407 07:C3F7: 01        .byte con_prg_bank + $01   ; 
- D 2 - I - 0x01C408 07:C3F8: 20        .byte $20   ; 
- D 2 - I - 0x01C409 07:C3F9: B8        .byte > off_0x007810_chr
- D 2 - I - 0x01C40A 07:C3FA: 16        .byte $16   ; 

- D 2 - I - 0x01C40B 07:C3FB: FF        .byte $FF   ; end token



_off011_C3FC_0C:
- D 2 - I - 0x01C40C 07:C3FC: 03        .byte con_prg_bank + $03   ; 
- D 2 - I - 0x01C40D 07:C3FD: 40        .byte $40   ; 
- D 2 - I - 0x01C40E 07:C3FE: 80        .byte > off_0x00C010_chr
- D 2 - I - 0x01C40F 07:C3FF: 10        .byte $10   ; 

- D 2 - I - 0x01C410 07:C400: FF        .byte $FF   ; end token



_off011_C401_0D:
- D 2 - I - 0x01C411 07:C401: 02        .byte con_prg_bank + $02   ; 
- D 2 - I - 0x01C412 07:C402: 40        .byte $40   ; 
- D 2 - I - 0x01C413 07:C403: A8        .byte > off_0x00A810_chr
- D 2 - I - 0x01C414 07:C404: 0C        .byte $0C   ; 

- D 2 - I - 0x01C415 07:C405: 03        .byte con_prg_bank + $03   ; 
- D 2 - I - 0x01C416 07:C406: 10        .byte $10   ; 
- D 2 - I - 0x01C417 07:C407: 80        .byte > off_0x00C010_chr
- D 2 - I - 0x01C418 07:C408: 10        .byte $10   ; 

- D 2 - I - 0x01C419 07:C409: 05        .byte con_prg_bank + $05   ; 
- D 2 - I - 0x01C41A 07:C40A: 30        .byte $30   ; 
- D 2 - I - 0x01C41B 07:C40B: B5        .byte > off_0x017510_chr
- D 2 - I - 0x01C41C 07:C40C: 11        .byte $11   ; 

- D 2 - I - 0x01C41D 07:C40D: 05        .byte con_prg_bank + $05   ; 
- D 2 - I - 0x01C41E 07:C40E: 10        .byte $10   ; 
- D 2 - I - 0x01C41F 07:C40F: BB        .byte > off_0x017B10_chr
- D 2 - I - 0x01C420 07:C410: 14        .byte $14   ; 

- D 2 - I - 0x01C421 07:C411: 02        .byte con_prg_bank + $02   ; 
- D 2 - I - 0x01C422 07:C412: 80        .byte $80   ; 
- D 2 - I - 0x01C423 07:C413: B8        .byte > off_0x00B810_chr
- D 2 - I - 0x01C424 07:C414: 18        .byte $18   ; 

- D 2 - I - 0x01C425 07:C415: FF        .byte $FF   ; end token



_off011_C416_0E:
- D 2 - I - 0x01C426 07:C416: 05        .byte con_prg_bank + $05   ; 
- D 2 - I - 0x01C427 07:C417: 40        .byte $40   ; 
- D 2 - I - 0x01C428 07:C418: BC        .byte > off_0x017C10_chr
- D 2 - I - 0x01C429 07:C419: 0C        .byte $0C   ; 

- D 2 - I - 0x01C42A 07:C41A: 03        .byte con_prg_bank + $03   ; 
- D 2 - I - 0x01C42B 07:C41B: 10        .byte $10   ; 
- D 2 - I - 0x01C42C 07:C41C: 80        .byte > off_0x00C010_chr
- D 2 - I - 0x01C42D 07:C41D: 10        .byte $10   ; 

- D 2 - I - 0x01C42E 07:C41E: 05        .byte con_prg_bank + $05   ; 
- D 2 - I - 0x01C42F 07:C41F: 30        .byte $30   ; 
- D 2 - I - 0x01C430 07:C420: B5        .byte > off_0x017510_chr
- D 2 - I - 0x01C431 07:C421: 11        .byte $11   ; 

- D 2 - I - 0x01C432 07:C422: 05        .byte con_prg_bank + $05   ; 
- D 2 - I - 0x01C433 07:C423: 10        .byte $10   ; 
- D 2 - I - 0x01C434 07:C424: BB        .byte > off_0x017B10_chr
- D 2 - I - 0x01C435 07:C425: 14        .byte $14   ; 

- D 2 - I - 0x01C436 07:C426: 01        .byte con_prg_bank + $01   ; 
- D 2 - I - 0x01C437 07:C427: 80        .byte $80   ; 
- D 2 - I - 0x01C438 07:C428: B0        .byte > off_0x007010_chr
- D 2 - I - 0x01C439 07:C429: 18        .byte $18   ; 

- D 2 - I - 0x01C43A 07:C42A: FF        .byte $FF   ; end token



_off011_C42B_0F:
- D 2 - I - 0x01C43B 07:C42B: 02        .byte con_prg_bank + $02   ; 
- D 2 - I - 0x01C43C 07:C42C: C0        .byte $C0   ; 
- D 2 - I - 0x01C43D 07:C42D: 80        .byte > off_0x008010_chr
- D 2 - I - 0x01C43E 07:C42E: 00        .byte $00   ; 

- D 2 - I - 0x01C43F 07:C42F: 01        .byte con_prg_bank + $01   ; 
- D 2 - I - 0x01C440 07:C430: 10        .byte $10   ; 
- D 2 - I - 0x01C441 07:C431: BC        .byte > off_0x007C10_chr
- D 2 - I - 0x01C442 07:C432: 04        .byte $04   ; 

- D 2 - I - 0x01C443 07:C433: 02        .byte con_prg_bank + $02   ; 
- D 2 - I - 0x01C444 07:C434: 40        .byte $40   ; 
- D 2 - I - 0x01C445 07:C435: B0        .byte > off_0x00B010_chr
- D 2 - I - 0x01C446 07:C436: 0C        .byte $0C   ; 

- D 2 - I - 0x01C447 07:C437: 05        .byte con_prg_bank + $05   ; 
- D 2 - I - 0x01C448 07:C438: C0        .byte $C0   ; 
- D 2 - I - 0x01C449 07:C439: B0        .byte > off_0x017010_chr
- D 2 - I - 0x01C44A 07:C43A: 10        .byte $10   ; 

- D 2 - I - 0x01C44B 07:C43B: FF        .byte $FF   ; end token



_off011_C43C_10:
- D 2 - I - 0x01C44C 07:C43C: 03        .byte con_prg_bank + $03   ; 
- D 2 - I - 0x01C44D 07:C43D: 40        .byte $40   ; 
- D 2 - I - 0x01C44E 07:C43E: 84        .byte > off_0x00C410_chr
- D 2 - I - 0x01C44F 07:C43F: 14        .byte $14   ; 

- D 2 - I - 0x01C450 07:C440: FF        .byte $FF   ; end token



_off011_C441_11:
- D 2 - I - 0x01C451 07:C441: 03        .byte con_prg_bank + $03   ; 
- D 2 - I - 0x01C452 07:C442: 40        .byte $40   ; 
- D 2 - I - 0x01C453 07:C443: 90        .byte > off_0x00D010_chr
- D 2 - I - 0x01C454 07:C444: 14        .byte $14   ; 

- D 2 - I - 0x01C455 07:C445: FF        .byte $FF   ; end token



_off011_C446_12:
- D 2 - I - 0x01C456 07:C446: 03        .byte con_prg_bank + $03   ; 
- D 2 - I - 0x01C457 07:C447: 40        .byte $40   ; 
- D 2 - I - 0x01C458 07:C448: 9C        .byte > off_0x00DC10_chr
- D 2 - I - 0x01C459 07:C449: 14        .byte $14   ; 

- D 2 - I - 0x01C45A 07:C44A: FF        .byte $FF   ; end token



_off011_C44B_13:
- D 2 - I - 0x01C45B 07:C44B: 03        .byte con_prg_bank + $03   ; 
- D 2 - I - 0x01C45C 07:C44C: 40        .byte $40   ; 
- D 2 - I - 0x01C45D 07:C44D: A8        .byte > off_0x00E810_chr
- D 2 - I - 0x01C45E 07:C44E: 14        .byte $14   ; 

- D 2 - I - 0x01C45F 07:C44F: FF        .byte $FF   ; end token



_off011_C450_14:
- D 2 - I - 0x01C460 07:C450: 03        .byte con_prg_bank + $03   ; 
- D 2 - I - 0x01C461 07:C451: 40        .byte $40   ; 
- D 2 - I - 0x01C462 07:C452: B4        .byte > off_0x00F410_chr
- D 2 - I - 0x01C463 07:C453: 14        .byte $14   ; 

- D 2 - I - 0x01C464 07:C454: FF        .byte $FF   ; end token



_off011_C455_15:
- D 2 - I - 0x01C465 07:C455: 01        .byte con_prg_bank + $01   ; 
- D 2 - I - 0x01C466 07:C456: 30        .byte $30   ; 
- D 2 - I - 0x01C467 07:C457: A9        .byte > off_0x006910_chr
- D 2 - I - 0x01C468 07:C458: 11        .byte $11   ; 

- D 2 - I - 0x01C469 07:C459: 03        .byte con_prg_bank + $03   ; 
- D 2 - I - 0x01C46A 07:C45A: 10        .byte $10   ; 
- D 2 - I - 0x01C46B 07:C45B: BF        .byte > off_0x00FF10_chr
- D 2 - I - 0x01C46C 07:C45C: 14        .byte $14   ; 

- D 2 - I - 0x01C46D 07:C45D: FF        .byte $FF   ; end token



_off011_C45E_16:
- D 2 - I - 0x01C46E 07:C45E: 02        .byte con_prg_bank + $02   ; 
- D 2 - I - 0x01C46F 07:C45F: 10        .byte $10   ; 
- D 2 - I - 0x01C470 07:C460: B6        .byte > off_0x00B610_chr
- D 2 - I - 0x01C471 07:C461: 0B        .byte $0B   ; 

- D 2 - I - 0x01C472 07:C462: 02        .byte con_prg_bank + $02   ; 
- D 2 - I - 0x01C473 07:C463: 10        .byte $10   ; 
- D 2 - I - 0x01C474 07:C464: B5        .byte > off_0x00B510_chr
- D 2 - I - 0x01C475 07:C465: 0D        .byte $0D   ; 

- D 2 - I - 0x01C476 07:C466: 02        .byte con_prg_bank + $02   ; 
- D 2 - I - 0x01C477 07:C467: 10        .byte $10   ; 
- D 2 - I - 0x01C478 07:C468: B7        .byte > off_0x00B710_chr
- D 2 - I - 0x01C479 07:C469: 0F        .byte $0F   ; 

- D 2 - I - 0x01C47A 07:C46A: 03        .byte con_prg_bank + $03   ; 
- D 2 - I - 0x01C47B 07:C46B: 10        .byte $10   ; 
- D 2 - I - 0x01C47C 07:C46C: 80        .byte > off_0x00C010_chr
- D 2 - I - 0x01C47D 07:C46D: 10        .byte $10   ; 

- D 2 - I - 0x01C47E 07:C46E: 05        .byte con_prg_bank + $05   ; 
- D 2 - I - 0x01C47F 07:C46F: 30        .byte $30   ; 
- D 2 - I - 0x01C480 07:C470: B5        .byte > off_0x017510_chr
- D 2 - I - 0x01C481 07:C471: 11        .byte $11   ; 

- D 2 - I - 0x01C482 07:C472: 05        .byte con_prg_bank + $05   ; 
- D 2 - I - 0x01C483 07:C473: 10        .byte $10   ; 
- D 2 - I - 0x01C484 07:C474: BB        .byte > off_0x017B10_chr
- D 2 - I - 0x01C485 07:C475: 14        .byte $14   ; 

- D 2 - I - 0x01C486 07:C476: 01        .byte con_prg_bank + $01   ; 
- D 2 - I - 0x01C487 07:C477: 40        .byte $40   ; 
- D 2 - I - 0x01C488 07:C478: AC        .byte > off_0x006C10_chr
- D 2 - I - 0x01C489 07:C479: 18        .byte $18   ; 

- D 2 - I - 0x01C48A 07:C47A: FF        .byte $FF   ; end token



_off011_C47B_17:
- D 2 - I - 0x01C48B 07:C47B: 02        .byte con_prg_bank + $02   ; 
- D 2 - I - 0x01C48C 07:C47C: 40        .byte $40   ; 
- D 2 - I - 0x01C48D 07:C47D: B4        .byte > off_0x00B410_chr
- D 2 - I - 0x01C48E 07:C47E: 0C        .byte $0C   ; 

- D 2 - I - 0x01C48F 07:C47F: 03        .byte con_prg_bank + $03   ; 
- D 2 - I - 0x01C490 07:C480: 10        .byte $10   ; 
- D 2 - I - 0x01C491 07:C481: 80        .byte > off_0x00C010_chr
- D 2 - I - 0x01C492 07:C482: 10        .byte $10   ; 

- D 2 - I - 0x01C493 07:C483: 05        .byte con_prg_bank + $05   ; 
- D 2 - I - 0x01C494 07:C484: 30        .byte $30   ; 
- D 2 - I - 0x01C495 07:C485: B5        .byte > off_0x017510_chr
- D 2 - I - 0x01C496 07:C486: 11        .byte $11   ; 

- D 2 - I - 0x01C497 07:C487: 05        .byte con_prg_bank + $05   ; 
- D 2 - I - 0x01C498 07:C488: 10        .byte $10   ; 
- D 2 - I - 0x01C499 07:C489: BB        .byte > off_0x017B10_chr
- D 2 - I - 0x01C49A 07:C48A: 14        .byte $14   ; 

- D 2 - I - 0x01C49B 07:C48B: 01        .byte con_prg_bank + $01   ; 
- D 2 - I - 0x01C49C 07:C48C: 40        .byte $40   ; 
- D 2 - I - 0x01C49D 07:C48D: A0        .byte > off_0x006010_chr
- D 2 - I - 0x01C49E 07:C48E: 18        .byte $18   ; 

- D 2 - I - 0x01C49F 07:C48F: 02        .byte con_prg_bank + $02   ; 
- D 2 - I - 0x01C4A0 07:C490: 40        .byte $40   ; 
- D 2 - I - 0x01C4A1 07:C491: AC        .byte > off_0x00AC10_chr
- D 2 - I - 0x01C4A2 07:C492: 1C        .byte $1C   ; 

- D 2 - I - 0x01C4A3 07:C493: FF        .byte $FF   ; end token



_off011_C494_18:
- D 2 - I - 0x01C4A4 07:C494: 02        .byte con_prg_bank + $02   ; 
- D 2 - I - 0x01C4A5 07:C495: 10        .byte $10   ; 
- D 2 - I - 0x01C4A6 07:C496: 9C        .byte > off_0x009C10_chr
- D 2 - I - 0x01C4A7 07:C497: 0C        .byte $0C   ; 

- D 2 - I - 0x01C4A8 07:C498: 02        .byte con_prg_bank + $02   ; 
- D 2 - I - 0x01C4A9 07:C499: 10        .byte $10   ; 
- D 2 - I - 0x01C4AA 07:C49A: 99        .byte > off_0x009910_chr
- D 2 - I - 0x01C4AB 07:C49B: 0D        .byte $0D   ; 

- D 2 - I - 0x01C4AC 07:C49C: 02        .byte con_prg_bank + $02   ; 
- D 2 - I - 0x01C4AD 07:C49D: 10        .byte $10   ; 
- D 2 - I - 0x01C4AE 07:C49E: B2        .byte > off_0x00B210_chr
- D 2 - I - 0x01C4AF 07:C49F: 0E        .byte $0E   ; 

- D 2 - I - 0x01C4B0 07:C4A0: 02        .byte con_prg_bank + $02   ; 
- D 2 - I - 0x01C4B1 07:C4A1: 10        .byte $10   ; 
- D 2 - I - 0x01C4B2 07:C4A2: 8F        .byte > off_0x008F10_chr
- D 2 - I - 0x01C4B3 07:C4A3: 0F        .byte $0F   ; 

- D 2 - I - 0x01C4B4 07:C4A4: 03        .byte con_prg_bank + $03   ; 
- D 2 - I - 0x01C4B5 07:C4A5: 10        .byte $10   ; 
- D 2 - I - 0x01C4B6 07:C4A6: 80        .byte > off_0x00C010_chr
- D 2 - I - 0x01C4B7 07:C4A7: 10        .byte $10   ; 

- D 2 - I - 0x01C4B8 07:C4A8: 05        .byte con_prg_bank + $05   ; 
- D 2 - I - 0x01C4B9 07:C4A9: 30        .byte $30   ; 
- D 2 - I - 0x01C4BA 07:C4AA: B5        .byte > off_0x017510_chr
- D 2 - I - 0x01C4BB 07:C4AB: 11        .byte $11   ; 

- D 2 - I - 0x01C4BC 07:C4AC: 05        .byte con_prg_bank + $05   ; 
- D 2 - I - 0x01C4BD 07:C4AD: 10        .byte $10   ; 
- D 2 - I - 0x01C4BE 07:C4AE: BB        .byte > off_0x017B10_chr
- D 2 - I - 0x01C4BF 07:C4AF: 14        .byte $14   ; 

- D 2 - I - 0x01C4C0 07:C4B0: 01        .byte con_prg_bank + $01   ; 
- D 2 - I - 0x01C4C1 07:C4B1: 80        .byte $80   ; 
- D 2 - I - 0x01C4C2 07:C4B2: A4        .byte > off_0x006410_chr
- D 2 - I - 0x01C4C3 07:C4B3: 18        .byte $18   ; 

- D 2 - I - 0x01C4C4 07:C4B4: FF        .byte $FF   ; end token



_off011_C4B5_19:
- D 2 - I - 0x01C4C5 07:C4B5: 02        .byte con_prg_bank + $02   ; 
- D 2 - I - 0x01C4C6 07:C4B6: C0        .byte $C0   ; 
- D 2 - I - 0x01C4C7 07:C4B7: 80        .byte > off_0x008010_chr
- D 2 - I - 0x01C4C8 07:C4B8: 00        .byte $00   ; 

- D 2 - I - 0x01C4C9 07:C4B9: 02        .byte con_prg_bank + $02   ; 
- D 2 - I - 0x01C4CA 07:C4BA: 10        .byte $10   ; 
- D 2 - I - 0x01C4CB 07:C4BB: 8C        .byte > off_0x008C10_chr
- D 2 - I - 0x01C4CC 07:C4BC: 0C        .byte $0C   ; 

- D 2 - I - 0x01C4CD 07:C4BD: 02        .byte con_prg_bank + $02   ; 
- D 2 - I - 0x01C4CE 07:C4BE: 10        .byte $10   ; 
- D 2 - I - 0x01C4CF 07:C4BF: 91        .byte > off_0x009110_chr
- D 2 - I - 0x01C4D0 07:C4C0: 0D        .byte $0D   ; 

- D 2 - I - 0x01C4D1 07:C4C1: 02        .byte con_prg_bank + $02   ; 
- D 2 - I - 0x01C4D2 07:C4C2: 20        .byte $20   ; 
- D 2 - I - 0x01C4D3 07:C4C3: 96        .byte > off_0x009610_chr
- D 2 - I - 0x01C4D4 07:C4C4: 0E        .byte $0E   ; 

- D 2 - I - 0x01C4D5 07:C4C5: 02        .byte con_prg_bank + $02   ; 
- D 2 - I - 0x01C4D6 07:C4C6: 10        .byte $10   ; 
- D 2 - I - 0x01C4D7 07:C4C7: BB        .byte > off_0x00BB10_chr
- D 2 - I - 0x01C4D8 07:C4C8: 0F        .byte $0F   ; 

- D 2 - I - 0x01C4D9 07:C4C9: 03        .byte con_prg_bank + $03   ; 
- D 2 - I - 0x01C4DA 07:C4CA: 00        .byte $00   ; 
- D 2 - I - 0x01C4DB 07:C4CB: 80        .byte > off_0x00C010_chr
- D 2 - I - 0x01C4DC 07:C4CC: 10        .byte $10   ; 

- D 2 - I - 0x01C4DD 07:C4CD: FF        .byte $FF   ; end token



_off011_C4CE_1A:
- D 2 - I - 0x01C4DE 07:C4CE: 02        .byte con_prg_bank + $02   ; 
- D 2 - I - 0x01C4DF 07:C4CF: C0        .byte $C0   ; 
- D 2 - I - 0x01C4E0 07:C4D0: 80        .byte > off_0x008010_chr
- D 2 - I - 0x01C4E1 07:C4D1: 00        .byte $00   ; 

- D 2 - I - 0x01C4E2 07:C4D2: 02        .byte con_prg_bank + $02   ; 
- D 2 - I - 0x01C4E3 07:C4D3: 10        .byte $10   ; 
- D 2 - I - 0x01C4E4 07:C4D4: 8C        .byte > off_0x008C10_chr
- D 2 - I - 0x01C4E5 07:C4D5: 0C        .byte $0C   ; 

- D 2 - I - 0x01C4E6 07:C4D6: 02        .byte con_prg_bank + $02   ; 
- D 2 - I - 0x01C4E7 07:C4D7: 10        .byte $10   ; 
- D 2 - I - 0x01C4E8 07:C4D8: 91        .byte > off_0x009110_chr
- D 2 - I - 0x01C4E9 07:C4D9: 0D        .byte $0D   ; 

- D 2 - I - 0x01C4EA 07:C4DA: 02        .byte con_prg_bank + $02   ; 
- D 2 - I - 0x01C4EB 07:C4DB: 20        .byte $20   ; 
- D 2 - I - 0x01C4EC 07:C4DC: AE        .byte > off_0x00AE10_chr
- D 2 - I - 0x01C4ED 07:C4DD: 0E        .byte $0E   ; 

- D 2 - I - 0x01C4EE 07:C4DE: 03        .byte con_prg_bank + $03   ; 
- D 2 - I - 0x01C4EF 07:C4DF: 40        .byte $40   ; 
- D 2 - I - 0x01C4F0 07:C4E0: 80        .byte > off_0x00C010_chr
- D 2 - I - 0x01C4F1 07:C4E1: 10        .byte $10   ; 

- D 2 - I - 0x01C4F2 07:C4E2: 03        .byte con_prg_bank + $03   ; 
- D 2 - I - 0x01C4F3 07:C4E3: C0        .byte $C0   ; 
- D 2 - I - 0x01C4F4 07:C4E4: 90        .byte > off_0x00D010_chr
- D 2 - I - 0x01C4F5 07:C4E5: 14        .byte $14   ; 

- D 2 - I - 0x01C4F6 07:C4E6: FF        .byte $FF   ; end token



_off011_C4E7_1C:
- D 2 - I - 0x01C4F7 07:C4E7: 02        .byte con_prg_bank + $02   ; 
- D 2 - I - 0x01C4F8 07:C4E8: C0        .byte $C0   ; 
- D 2 - I - 0x01C4F9 07:C4E9: 80        .byte > off_0x008010_chr
- D 2 - I - 0x01C4FA 07:C4EA: 00        .byte $00   ; 

- D 2 - I - 0x01C4FB 07:C4EB: 02        .byte con_prg_bank + $02   ; 
- D 2 - I - 0x01C4FC 07:C4EC: 10        .byte $10   ; 
- D 2 - I - 0x01C4FD 07:C4ED: B0        .byte > off_0x00B010_chr
- D 2 - I - 0x01C4FE 07:C4EE: 0C        .byte $0C   ; 

- D 2 - I - 0x01C4FF 07:C4EF: 02        .byte con_prg_bank + $02   ; 
- D 2 - I - 0x01C500 07:C4F0: 30        .byte $30   ; 
- D 2 - I - 0x01C501 07:C4F1: 9D        .byte > off_0x009D10_chr
- D 2 - I - 0x01C502 07:C4F2: 0D        .byte $0D   ; 

- D 2 - I - 0x01C503 07:C4F3: 03        .byte con_prg_bank + $03   ; 
- D 2 - I - 0x01C504 07:C4F4: 40        .byte $40   ; 
- D 2 - I - 0x01C505 07:C4F5: 80        .byte > off_0x00C010_chr
- D 2 - I - 0x01C506 07:C4F6: 10        .byte $10   ; 

- D 2 - I - 0x01C507 07:C4F7: 03        .byte con_prg_bank + $03   ; 
- D 2 - I - 0x01C508 07:C4F8: 40        .byte $40   ; 
- D 2 - I - 0x01C509 07:C4F9: A8        .byte > off_0x00E810_chr
- D 2 - I - 0x01C50A 07:C4FA: 14        .byte $14   ; 

- D 2 - I - 0x01C50B 07:C4FB: 00        .byte con_prg_bank + $00   ; 
- D 2 - I - 0x01C50C 07:C4FC: 80        .byte $80   ; 
- D 2 - I - 0x01C50D 07:C4FD: AD        .byte > off_0x002D10_chr
- D 2 - I - 0x01C50E 07:C4FE: 18        .byte $18   ; 

- D 2 - I - 0x01C50F 07:C4FF: FF        .byte $FF   ; end token



_off011_C500_1D:
- D 2 - I - 0x01C510 07:C500: 02        .byte con_prg_bank + $02   ; 
- D 2 - I - 0x01C511 07:C501: C0        .byte $C0   ; 
- D 2 - I - 0x01C512 07:C502: 80        .byte > off_0x008010_chr
- D 2 - I - 0x01C513 07:C503: 00        .byte $00   ; 

- D 2 - I - 0x01C514 07:C504: 02        .byte con_prg_bank + $02   ; 
- D 2 - I - 0x01C515 07:C505: 10        .byte $10   ; 
- D 2 - I - 0x01C516 07:C506: B6        .byte > off_0x00B610_chr
- D 2 - I - 0x01C517 07:C507: 0B        .byte $0B   ; 

- D 2 - I - 0x01C518 07:C508: 02        .byte con_prg_bank + $02   ; 
- D 2 - I - 0x01C519 07:C509: 10        .byte $10   ; 
- D 2 - I - 0x01C51A 07:C50A: 8C        .byte > off_0x008C10_chr
- D 2 - I - 0x01C51B 07:C50B: 0C        .byte $0C   ; 

- D 2 - I - 0x01C51C 07:C50C: 02        .byte con_prg_bank + $02   ; 
- D 2 - I - 0x01C51D 07:C50D: 10        .byte $10   ; 
- D 2 - I - 0x01C51E 07:C50E: B5        .byte > off_0x00B510_chr
- D 2 - I - 0x01C51F 07:C50F: 0D        .byte $0D   ; 

- D 2 - I - 0x01C520 07:C510: 02        .byte con_prg_bank + $02   ; 
- D 2 - I - 0x01C521 07:C511: 10        .byte $10   ; 
- D 2 - I - 0x01C522 07:C512: A2        .byte > off_0x00A210_chr
- D 2 - I - 0x01C523 07:C513: 0E        .byte $0E   ; 

- D 2 - I - 0x01C524 07:C514: 02        .byte con_prg_bank + $02   ; 
- D 2 - I - 0x01C525 07:C515: 10        .byte $10   ; 
- D 2 - I - 0x01C526 07:C516: B7        .byte > off_0x00B710_chr
- D 2 - I - 0x01C527 07:C517: 0F        .byte $0F   ; 

- D 2 - I - 0x01C528 07:C518: 03        .byte con_prg_bank + $03   ; 
- D 2 - I - 0x01C529 07:C519: 40        .byte $40   ; 
- D 2 - I - 0x01C52A 07:C51A: 80        .byte > off_0x00C010_chr
- D 2 - I - 0x01C52B 07:C51B: 10        .byte $10   ; 

- D 2 - I - 0x01C52C 07:C51C: 03        .byte con_prg_bank + $03   ; 
- D 2 - I - 0x01C52D 07:C51D: 40        .byte $40   ; 
- D 2 - I - 0x01C52E 07:C51E: B4        .byte > off_0x00F410_chr
- D 2 - I - 0x01C52F 07:C51F: 14        .byte $14   ; 

- D 2 - I - 0x01C530 07:C520: 03        .byte con_prg_bank + $03   ; 
- D 2 - I - 0x01C531 07:C521: 40        .byte $40   ; 
- D 2 - I - 0x01C532 07:C522: B8        .byte > off_0x00F810_chr
- D 2 - I - 0x01C533 07:C523: 18        .byte $18   ; 

- D 2 - I - 0x01C534 07:C524: 01        .byte con_prg_bank + $01   ; 
- D 2 - I - 0x01C535 07:C525: 40        .byte $40   ; 
- D 2 - I - 0x01C536 07:C526: AC        .byte > off_0x006C10_chr
- D 2 - I - 0x01C537 07:C527: 1C        .byte $1C   ; 

- D 2 - I - 0x01C538 07:C528: FF        .byte $FF   ; end token



_off011_C529_1F:
- - - - - - 0x01C539 07:C529: FF        .byte $FF   ; end token



sub_C52A:
C - - - - - 0x01C53A 07:C52A: 84 A0     STY ram_00A0
C - - - - - 0x01C53C 07:C52C: B9 19 C6  LDA tbl_C619_lo,Y
C - - - - - 0x01C53F 07:C52F: 85 A2     STA ram_00A2
C - - - - - 0x01C541 07:C531: B9 29 C6  LDA tbl_C629_hi,Y
C - - - - - 0x01C544 07:C534: 85 A3     STA ram_00A3
C - - - - - 0x01C546 07:C536: A9 00     LDA #$00
C - - - - - 0x01C548 07:C538: 85 A1     STA ram_00A1
C - - - - - 0x01C54A 07:C53A: 85 A5     STA ram_00A5
C - - - - - 0x01C54C 07:C53C: 60        RTS



sub_C53D:
C - - - - - 0x01C54D 07:C53D: A5 A5     LDA ram_00A5
C - - - - - 0x01C54F 07:C53F: D0 20     BNE bra_C561
C - - - - - 0x01C551 07:C541: A4 A1     LDY ram_00A1
C - - - - - 0x01C553 07:C543: B1 A2     LDA (ram_00A2),Y
C - - - - - 0x01C555 07:C545: 30 61     BMI bra_C5A8_RTS
C - - - - - 0x01C557 07:C547: 85 A4     STA ram_00A4
C - - - - - 0x01C559 07:C549: C8        INY
C - - - - - 0x01C55A 07:C54A: B1 A2     LDA (ram_00A2),Y
C - - - - - 0x01C55C 07:C54C: 85 A5     STA ram_00A5
C - - - - - 0x01C55E 07:C54E: C8        INY
C - - - - - 0x01C55F 07:C54F: A9 00     LDA #$00
C - - - - - 0x01C561 07:C551: 85 A6     STA ram_00A6
C - - - - - 0x01C563 07:C553: 85 A8     STA ram_00A8
C - - - - - 0x01C565 07:C555: B1 A2     LDA (ram_00A2),Y
C - - - - - 0x01C567 07:C557: 85 A7     STA ram_00A7
C - - - - - 0x01C569 07:C559: C8        INY
C - - - - - 0x01C56A 07:C55A: B1 A2     LDA (ram_00A2),Y
C - - - - - 0x01C56C 07:C55C: 85 A9     STA ram_00A9
C - - - - - 0x01C56E 07:C55E: C8        INY
C - - - - - 0x01C56F 07:C55F: 84 A1     STY ram_00A1
bra_C561:
C - - - - - 0x01C571 07:C561: A5 A9     LDA ram_00A9
C - - - - - 0x01C573 07:C563: 8D C0 07  STA ram_ppu_buffer + $40
C - - - - - 0x01C576 07:C566: A5 A8     LDA ram_00A8
C - - - - - 0x01C578 07:C568: 8D C1 07  STA ram_ppu_buffer + $41
C - - - - - 0x01C57B 07:C56B: A5 A4     LDA ram_00A4
C - - - - - 0x01C57D 07:C56D: 20 CD FF  JSR sub_FFCD_prg_bankswitch
C - - - - - 0x01C580 07:C570: A0 00     LDY #$00
bra_C572_loop:
C - - - - - 0x01C582 07:C572: B1 A6     LDA (ram_00A6),Y
C - - - - - 0x01C584 07:C574: 99 C3 07  STA ram_ppu_buffer + $43,Y
C - - - - - 0x01C587 07:C577: C8        INY
C - - - - - 0x01C588 07:C578: 98        TYA
C - - - - - 0x01C589 07:C579: 29 0F     AND #$0F
C - - - - - 0x01C58B 07:C57B: D0 F5     BNE bra_C572_loop
C - - - - - 0x01C58D 07:C57D: C6 A5     DEC ram_00A5
C - - - - - 0x01C58F 07:C57F: F0 04     BEQ bra_C585
C - - - - - 0x01C591 07:C581: C0 20     CPY #$20
C - - - - - 0x01C593 07:C583: D0 ED     BNE bra_C572_loop
bra_C585:
C - - - - - 0x01C595 07:C585: A9 FF     LDA #$FF
C - - - - - 0x01C597 07:C587: 99 C3 07  STA ram_ppu_buffer + $43,Y
C - - - - - 0x01C59A 07:C58A: 98        TYA
C - - - - - 0x01C59B 07:C58B: 18        CLC
C - - - - - 0x01C59C 07:C58C: 65 A6     ADC ram_00A6
C - - - - - 0x01C59E 07:C58E: 85 A6     STA ram_00A6
C - - - - - 0x01C5A0 07:C590: A5 A7     LDA ram_00A7
C - - - - - 0x01C5A2 07:C592: 69 00     ADC #$00
C - - - - - 0x01C5A4 07:C594: 85 A7     STA ram_00A7
C - - - - - 0x01C5A6 07:C596: 98        TYA
C - - - - - 0x01C5A7 07:C597: 18        CLC
C - - - - - 0x01C5A8 07:C598: 65 A8     ADC ram_00A8
C - - - - - 0x01C5AA 07:C59A: 85 A8     STA ram_00A8
C - - - - - 0x01C5AC 07:C59C: A5 A9     LDA ram_00A9
C - - - - - 0x01C5AE 07:C59E: 69 00     ADC #$00
C - - - - - 0x01C5B0 07:C5A0: 85 A9     STA ram_00A9
C - - - - - 0x01C5B2 07:C5A2: 88        DEY
C - - - - - 0x01C5B3 07:C5A3: 8C C2 07  STY ram_ppu_buffer + $42
C - - - - - 0x01C5B6 07:C5A6: 84 1A     STY ram_001A
bra_C5A8_RTS:
C - - - - - 0x01C5B8 07:C5A8: 60        RTS



_off012_C5A9_00:
- D 2 - I - 0x01C5B9 07:C5A9: 02        .byte con_prg_bank + $02   ; 
- D 2 - I - 0x01C5BA 07:C5AA: 10        .byte $10   ; 
- D 2 - I - 0x01C5BB 07:C5AB: B0        .byte > off_0x00B010_chr
- D 2 - I - 0x01C5BC 07:C5AC: 0C        .byte $0C   ; 

- D 2 - I - 0x01C5BD 07:C5AD: 02        .byte con_prg_bank + $02   ; 
- D 2 - I - 0x01C5BE 07:C5AE: 10        .byte $10   ; 
- D 2 - I - 0x01C5BF 07:C5AF: 91        .byte > off_0x009110_chr
- D 2 - I - 0x01C5C0 07:C5B0: 0D        .byte $0D   ; 

- D 2 - I - 0x01C5C1 07:C5B1: 02        .byte con_prg_bank + $02   ; 
- D 2 - I - 0x01C5C2 07:C5B2: 10        .byte $10   ; 
- D 2 - I - 0x01C5C3 07:C5B3: 96        .byte > off_0x009610_chr
- D 2 - I - 0x01C5C4 07:C5B4: 0E        .byte $0E   ; 

- D 2 - I - 0x01C5C5 07:C5B5: 02        .byte con_prg_bank + $02   ; 
- D 2 - I - 0x01C5C6 07:C5B6: 10        .byte $10   ; 
- D 2 - I - 0x01C5C7 07:C5B7: 9F        .byte > off_0x009F10_chr
- D 2 - I - 0x01C5C8 07:C5B8: 0F        .byte $0F   ; 

- D 2 - I - 0x01C5C9 07:C5B9: FF        .byte $FF   ; end token



_off012_C5BA_01:
- D 2 - I - 0x01C5CA 07:C5BA: 02        .byte con_prg_bank + $02   ; 
- D 2 - I - 0x01C5CB 07:C5BB: 40        .byte $40   ; 
- D 2 - I - 0x01C5CC 07:C5BC: 94        .byte > off_0x009410_chr
- D 2 - I - 0x01C5CD 07:C5BD: 0C        .byte $0C   ; 

- D 2 - I - 0x01C5CE 07:C5BE: FF        .byte $FF   ; end token



_off012_C5BF_02:
- D 2 - I - 0x01C5CF 07:C5BF: 02        .byte con_prg_bank + $02   ; 
- D 2 - I - 0x01C5D0 07:C5C0: 10        .byte $10   ; 
- D 2 - I - 0x01C5D1 07:C5C1: 8C        .byte > off_0x008C10_chr
- D 2 - I - 0x01C5D2 07:C5C2: 0C        .byte $0C   ; 

- D 2 - I - 0x01C5D3 07:C5C3: 02        .byte con_prg_bank + $02   ; 
- D 2 - I - 0x01C5D4 07:C5C4: 30        .byte $30   ; 
- D 2 - I - 0x01C5D5 07:C5C5: A9        .byte > off_0x00A910_chr
- D 2 - I - 0x01C5D6 07:C5C6: 0D        .byte $0D   ; 

- D 2 - I - 0x01C5D7 07:C5C7: FF        .byte $FF   ; end token



_off012_C5C8_03:
- D 2 - I - 0x01C5D8 07:C5C8: 02        .byte con_prg_bank + $02   ; 
- D 2 - I - 0x01C5D9 07:C5C9: 40        .byte $40   ; 
- D 2 - I - 0x01C5DA 07:C5CA: 90        .byte > off_0x009010_chr
- D 2 - I - 0x01C5DB 07:C5CB: 0C        .byte $0C   ; 

- D 2 - I - 0x01C5DC 07:C5CC: FF        .byte $FF   ; end token



_off012_C5CD_04:
- D 2 - I - 0x01C5DD 07:C5CD: 02        .byte con_prg_bank + $02   ; 
- D 2 - I - 0x01C5DE 07:C5CE: 10        .byte $10   ; 
- D 2 - I - 0x01C5DF 07:C5CF: 98        .byte > off_0x009810_chr
- D 2 - I - 0x01C5E0 07:C5D0: 0C        .byte $0C   ; 

- D 2 - I - 0x01C5E1 07:C5D1: 02        .byte con_prg_bank + $02   ; 
- D 2 - I - 0x01C5E2 07:C5D2: 30        .byte $30   ; 
- D 2 - I - 0x01C5E3 07:C5D3: A5        .byte > off_0x00A510_chr
- D 2 - I - 0x01C5E4 07:C5D4: 0D        .byte $0D   ; 

- D 2 - I - 0x01C5E5 07:C5D5: FF        .byte $FF   ; end token



_off012_C5D6_05:
- D 2 - I - 0x01C5E6 07:C5D6: 02        .byte con_prg_bank + $02   ; 
- D 2 - I - 0x01C5E7 07:C5D7: 10        .byte $10   ; 
- D 2 - I - 0x01C5E8 07:C5D8: 8C        .byte > off_0x008C10_chr
- D 2 - I - 0x01C5E9 07:C5D9: 0C        .byte $0C   ; 

- D 2 - I - 0x01C5EA 07:C5DA: 02        .byte con_prg_bank + $02   ; 
- D 2 - I - 0x01C5EB 07:C5DB: 30        .byte $30   ; 
- D 2 - I - 0x01C5EC 07:C5DC: 99        .byte > off_0x009910_chr
- D 2 - I - 0x01C5ED 07:C5DD: 0D        .byte $0D   ; 

- D 2 - I - 0x01C5EE 07:C5DE: FF        .byte $FF   ; end token



_off012_C5DF_06:
- D 2 - I - 0x01C5EF 07:C5DF: 02        .byte con_prg_bank + $02   ; 
- D 2 - I - 0x01C5F0 07:C5E0: 10        .byte $10   ; 
- D 2 - I - 0x01C5F1 07:C5E1: 96        .byte > off_0x009610_chr
- D 2 - I - 0x01C5F2 07:C5E2: 0E        .byte $0E   ; 

- D 2 - I - 0x01C5F3 07:C5E3: FF        .byte $FF   ; end token



_off012_C5E4_07:
- D 2 - I - 0x01C5F4 07:C5E4: 02        .byte con_prg_bank + $02   ; 
- D 2 - I - 0x01C5F5 07:C5E5: 10        .byte $10   ; 
- D 2 - I - 0x01C5F6 07:C5E6: 8C        .byte > off_0x008C10_chr
- D 2 - I - 0x01C5F7 07:C5E7: 0C        .byte $0C   ; 

- D 2 - I - 0x01C5F8 07:C5E8: 02        .byte con_prg_bank + $02   ; 
- D 2 - I - 0x01C5F9 07:C5E9: 10        .byte $10   ; 
- D 2 - I - 0x01C5FA 07:C5EA: 91        .byte > off_0x009110_chr
- D 2 - I - 0x01C5FB 07:C5EB: 0D        .byte $0D   ; 

- D 2 - I - 0x01C5FC 07:C5EC: 02        .byte con_prg_bank + $02   ; 
- D 2 - I - 0x01C5FD 07:C5ED: 20        .byte $20   ; 
- D 2 - I - 0x01C5FE 07:C5EE: 96        .byte > off_0x009610_chr
- D 2 - I - 0x01C5FF 07:C5EF: 0E        .byte $0E   ; 

- D 2 - I - 0x01C600 07:C5F0: 02        .byte con_prg_bank + $02   ; 
- D 2 - I - 0x01C601 07:C5F1: 10        .byte $10   ; 
- D 2 - I - 0x01C602 07:C5F2: BB        .byte > off_0x00BB10_chr
- D 2 - I - 0x01C603 07:C5F3: 0F        .byte $0F   ; 

- D 2 - I - 0x01C604 07:C5F4: FF        .byte $FF   ; end token



_off012_C5F5_08:
- D 2 - I - 0x01C605 07:C5F5: 02        .byte con_prg_bank + $02   ; 
- D 2 - I - 0x01C606 07:C5F6: 10        .byte $10   ; 
- D 2 - I - 0x01C607 07:C5F7: 8C        .byte > off_0x008C10_chr
- D 2 - I - 0x01C608 07:C5F8: 0C        .byte $0C   ; 

- D 2 - I - 0x01C609 07:C5F9: 02        .byte con_prg_bank + $02   ; 
- D 2 - I - 0x01C60A 07:C5FA: 10        .byte $10   ; 
- D 2 - I - 0x01C60B 07:C5FB: 91        .byte > off_0x009110_chr
- D 2 - I - 0x01C60C 07:C5FC: 0D        .byte $0D   ; 

- D 2 - I - 0x01C60D 07:C5FD: 02        .byte con_prg_bank + $02   ; 
- D 2 - I - 0x01C60E 07:C5FE: 10        .byte $10   ; 
- D 2 - I - 0x01C60F 07:C5FF: 8E        .byte > off_0x008E10_chr
- D 2 - I - 0x01C610 07:C600: 0E        .byte $0E   ; 

- D 2 - I - 0x01C611 07:C601: 02        .byte con_prg_bank + $02   ; 
- D 2 - I - 0x01C612 07:C602: 10        .byte $10   ; 
- D 2 - I - 0x01C613 07:C603: BF        .byte > off_0x00BF10_chr
- D 2 - I - 0x01C614 07:C604: 0F        .byte $0F   ; 

- D 2 - I - 0x01C615 07:C605: FF        .byte $FF   ; end token



_off012_C606_09:
- D 2 - I - 0x01C616 07:C606: 02        .byte con_prg_bank + $02   ; 
- D 2 - I - 0x01C617 07:C607: 10        .byte $10   ; 
- D 2 - I - 0x01C618 07:C608: 8C        .byte > off_0x008C10_chr
- D 2 - I - 0x01C619 07:C609: 0C        .byte $0C   ; 

- D 2 - I - 0x01C61A 07:C60A: 02        .byte con_prg_bank + $02   ; 
- D 2 - I - 0x01C61B 07:C60B: 10        .byte $10   ; 
- D 2 - I - 0x01C61C 07:C60C: 91        .byte > off_0x009110_chr
- D 2 - I - 0x01C61D 07:C60D: 0D        .byte $0D   ; 

- D 2 - I - 0x01C61E 07:C60E: 02        .byte con_prg_bank + $02   ; 
- D 2 - I - 0x01C61F 07:C60F: 20        .byte $20   ; 
- D 2 - I - 0x01C620 07:C610: AE        .byte > off_0x00AE10_chr
- D 2 - I - 0x01C621 07:C611: 0E        .byte $0E   ; 

- D 2 - I - 0x01C622 07:C612: FF        .byte $FF   ; end token



_off012_C613_0A:
_off012_C613_0B:
_off012_C613_0C:
_off012_C613_0D:
- D 2 - I - 0x01C623 07:C613: 00        .byte con_prg_bank + $00   ; 
- D 2 - I - 0x01C624 07:C614: 80        .byte $80   ; 
- D 2 - I - 0x01C625 07:C615: AD        .byte > off_0x002D10_chr
- D 2 - I - 0x01C626 07:C616: 18        .byte $18   ; 

- D 2 - I - 0x01C627 07:C617: FF        .byte $FF   ; end token



_off012_C618_0E:
_off012_C618_0F:
- D 2 - I - 0x01C628 07:C618: FF        .byte $FF   ; end token



tbl_C619_lo:
- D 2 - - - 0x01C629 07:C619: A9        .byte < _off012_C5A9_00   ; 
- D 2 - - - 0x01C62A 07:C61A: BA        .byte < _off012_C5BA_01   ; 
- D 2 - - - 0x01C62B 07:C61B: BF        .byte < _off012_C5BF_02   ; 
- D 2 - - - 0x01C62C 07:C61C: C8        .byte < _off012_C5C8_03   ; 
- D 2 - - - 0x01C62D 07:C61D: CD        .byte < _off012_C5CD_04   ; 
- D 2 - - - 0x01C62E 07:C61E: D6        .byte < _off012_C5D6_05   ; 
- D 2 - - - 0x01C62F 07:C61F: DF        .byte < _off012_C5DF_06   ; 
- D 2 - - - 0x01C630 07:C620: E4        .byte < _off012_C5E4_07   ; 
- D 2 - - - 0x01C631 07:C621: F5        .byte < _off012_C5F5_08   ; 
- D 2 - - - 0x01C632 07:C622: 06        .byte < _off012_C606_09   ; 
- - - - - - 0x01C633 07:C623: 13        .byte < _off012_C613_0A   ; unused, no such index 0x01DB15
- - - - - - 0x01C634 07:C624: 13        .byte < _off012_C613_0B   ; unused, no such index 0x01DB15
- - - - - - 0x01C635 07:C625: 13        .byte < _off012_C613_0C   ; unused, no such index 0x01DB15
- D 2 - - - 0x01C636 07:C626: 13        .byte < _off012_C613_0D   ; index from 0x01E057
- - - - - - 0x01C637 07:C627: 18        .byte < _off012_C618_0E   ; unused, no such index 0x01DB15
- D 2 - - - 0x01C638 07:C628: 18        .byte < _off012_C618_0F   ; 



tbl_C629_hi:
- D 2 - - - 0x01C639 07:C629: C5        .byte > _off012_C5A9_00   ; 
- D 2 - - - 0x01C63A 07:C62A: C5        .byte > _off012_C5BA_01   ; 
- D 2 - - - 0x01C63B 07:C62B: C5        .byte > _off012_C5BF_02   ; 
- D 2 - - - 0x01C63C 07:C62C: C5        .byte > _off012_C5C8_03   ; 
- D 2 - - - 0x01C63D 07:C62D: C5        .byte > _off012_C5CD_04   ; 
- D 2 - - - 0x01C63E 07:C62E: C5        .byte > _off012_C5D6_05   ; 
- D 2 - - - 0x01C63F 07:C62F: C5        .byte > _off012_C5DF_06   ; 
- D 2 - - - 0x01C640 07:C630: C5        .byte > _off012_C5E4_07   ; 
- D 2 - - - 0x01C641 07:C631: C5        .byte > _off012_C5F5_08   ; 
- D 2 - - - 0x01C642 07:C632: C6        .byte > _off012_C606_09   ; 
- - - - - - 0x01C643 07:C633: C6        .byte > _off012_C613_0A   ; unused, no such index 0x01DB15
- - - - - - 0x01C644 07:C634: C6        .byte > _off012_C613_0B   ; unused, no such index 0x01DB15
- - - - - - 0x01C645 07:C635: C6        .byte > _off012_C613_0C   ; unused, no such index 0x01DB15
- D 2 - - - 0x01C646 07:C636: C6        .byte > _off012_C613_0D   ; index from 0x01E057
- - - - - - 0x01C647 07:C637: C6        .byte > _off012_C618_0E   ; unused, no such index 0x01DB15
- D 2 - - - 0x01C648 07:C638: C6        .byte > _off012_C618_0F   ; 



ofs_C639:
C - - J - - 0x01C649 07:C639: A2 BF     LDX #$BF
C - - - - - 0x01C64B 07:C63B: 9A        TXS
C - - - - - 0x01C64C 07:C63C: A5 FF     LDA ram_for_2000
C - - - - - 0x01C64E 07:C63E: 8D 00 20  STA $2000
C - - - - - 0x01C651 07:C641: 20 AD FF  JSR sub_FFAD
C - - - - - 0x01C654 07:C644: A9 88     LDA #$88
C - - - - - 0x01C656 07:C646: 85 E4     STA ram_random
loc_C648:
C D 2 - - - 0x01C658 07:C648: 20 DB F2  JSR sub_F2DB
C - - - - - 0x01C65B 07:C64B: A9 00     LDA #$00
C - - - - - 0x01C65D 07:C64D: 85 E9     STA ram_stage
C - - - - - 0x01C65F 07:C64F: A9 02     LDA #$02
C - - - - - 0x01C661 07:C651: 85 B0     STA ram_lives
C - - - - - 0x01C663 07:C653: A9 03     LDA #$03
C - - - - - 0x01C665 07:C655: 85 B1     STA ram_hearts
C - - - - - 0x01C667 07:C657: A9 05     LDA #$05
C - - - - - 0x01C669 07:C659: 85 BA     STA ram_total_hearts
loc_C65B:
C D 2 - - - 0x01C66B 07:C65B: 20 18 C8  JSR sub_C818
loc_C65E:
C D 2 - - - 0x01C66E 07:C65E: A5 30     LDA ram_ariel_status
C - - - - - 0x01C670 07:C660: C9 07     CMP #con_ariel_damaged
C - - - - - 0x01C672 07:C662: F0 18     BEQ bra_C67C
C - - - - - 0x01C674 07:C664: A5 14     LDA ram_btn_press
C - - - - - 0x01C676 07:C666: 29 10     AND #con_btn_Start
C - - - - - 0x01C678 07:C668: F0 12     BEQ bra_C67C
C - - - - - 0x01C67A 07:C66A: A9 F3     LDA #con_sound_ctrl_pause
C - - - - - 0x01C67C 07:C66C: 20 A0 FC  JSR sub_FCA0_play_sfx
C - - - - - 0x01C67F 07:C66F: A9 1C     LDA #con_sfx_pause_menu
C - - - - - 0x01C681 07:C671: 20 A0 FC  JSR sub_FCA0_play_sfx
C - - - - - 0x01C684 07:C674: 20 A2 EA  JSR sub_EAA2
C - - - - - 0x01C687 07:C677: A9 F4     LDA #con_sound_ctrl_resume
C - - - - - 0x01C689 07:C679: 20 A0 FC  JSR sub_FCA0_play_sfx
bra_C67C:
C - - - - - 0x01C68C 07:C67C: 20 7E E8  JSR sub_E87E
C - - - - - 0x01C68F 07:C67F: 20 C5 C9  JSR sub_C9C5
C - - - - - 0x01C692 07:C682: 20 FB DB  JSR sub_DBFB
C - - - - - 0x01C695 07:C685: 20 6D E0  JSR sub_E06D
C - - - - - 0x01C698 07:C688: 20 17 E7  JSR sub_E717
C - - - - - 0x01C69B 07:C68B: 20 16 E8  JSR sub_E816
C - - - - - 0x01C69E 07:C68E: A5 E9     LDA ram_stage
C - - - - - 0x01C6A0 07:C690: C9 03     CMP #$03
C - - - - - 0x01C6A2 07:C692: D0 0C     BNE bra_C6A0
; if stage 4
C - - - - - 0x01C6A4 07:C694: A5 FD     LDA ram_scroll_X_hi
C - - - - - 0x01C6A6 07:C696: 18        CLC
C - - - - - 0x01C6A7 07:C697: 65 FB     ADC ram_scroll_Y_hi
C - - - - - 0x01C6A9 07:C699: C9 0E     CMP #$0E
C - - - - - 0x01C6AB 07:C69B: D0 03     BNE bra_C6A0
C - - - - - 0x01C6AD 07:C69D: 20 3D C5  JSR sub_C53D
bra_C6A0:
C - - - - - 0x01C6B0 07:C6A0: A9 06     LDA #con_prg_bank + $06
C - - - - - 0x01C6B2 07:C6A2: 20 CD FF  JSR sub_FFCD_prg_bankswitch
C - - - - - 0x01C6B5 07:C6A5: 20 00 80  JSR sub_0x018010_objects_handler
C - - - - - 0x01C6B8 07:C6A8: A5 E9     LDA ram_stage
C - - - - - 0x01C6BA 07:C6AA: C9 05     CMP #$05
C - - - - - 0x01C6BC 07:C6AC: D0 06     BNE bra_C6B4
; if final battle
C - - - - - 0x01C6BE 07:C6AE: A5 30     LDA ram_ariel_status
C - - - - - 0x01C6C0 07:C6B0: C9 09     CMP #con_ariel_spawning
C - - - - - 0x01C6C2 07:C6B2: F0 08     BEQ bra_C6BC
bra_C6B4:
C - - - - - 0x01C6C4 07:C6B4: A9 04     LDA #con_prg_bank + $04
C - - - - - 0x01C6C6 07:C6B6: 20 CD FF  JSR sub_FFCD_prg_bankswitch
C - - - - - 0x01C6C9 07:C6B9: 20 00 B6  JSR sub_0x013610_spawn_objects
bra_C6BC:
C - - - - - 0x01C6CC 07:C6BC: AD 30 03  LDA ram_pos_X_lo
C - - - - - 0x01C6CF 07:C6BF: 85 32     STA ram_0032
C - - - - - 0x01C6D1 07:C6C1: AD 40 03  LDA ram_pos_X_hi
C - - - - - 0x01C6D4 07:C6C4: 85 33     STA ram_0033
C - - - - - 0x01C6D6 07:C6C6: A5 FC     LDA ram_scroll_X_lo
C - - - - - 0x01C6D8 07:C6C8: 85 F7     STA ram_copy_scroll_X
C - - - - - 0x01C6DA 07:C6CA: AD 60 03  LDA ram_pos_Y_lo
C - - - - - 0x01C6DD 07:C6CD: 85 34     STA ram_0034
C - - - - - 0x01C6DF 07:C6CF: AD 70 03  LDA ram_pos_Y_hi
C - - - - - 0x01C6E2 07:C6D2: 85 35     STA ram_0035
C - - - - - 0x01C6E4 07:C6D4: A5 FA     LDA ram_scroll_Y_lo
C - - - - - 0x01C6E6 07:C6D6: 85 F8     STA ram_copy_scroll_Y
C - - - - - 0x01C6E8 07:C6D8: A9 04     LDA #$04    ; con_prg_bank + $04
C - - - - - 0x01C6EA 07:C6DA: 85 97     STA ram_spr_index
C - - - - - 0x01C6EC 07:C6DC: 20 CD FF  JSR sub_FFCD_prg_bankswitch
C - - - - - 0x01C6EF 07:C6DF: 20 BC C1  JSR sub_C1BC_hide_unused_sprites
C - - - - - 0x01C6F2 07:C6E2: 20 03 80  JSR sub_0x010013
C - - - - - 0x01C6F5 07:C6E5: A9 00     LDA #$00
C - - - - - 0x01C6F7 07:C6E7: 85 EE     STA ram_00EE
C - - - - - 0x01C6F9 07:C6E9: 20 50 C2  JSR sub_C250_roll_rng
C - - - - - 0x01C6FC 07:C6EC: 20 AD FF  JSR sub_FFAD
C - - - - - 0x01C6FF 07:C6EF: E6 EE     INC ram_00EE
C - - - - - 0x01C701 07:C6F1: A5 2F     LDA ram_002F
C - - - - - 0x01C703 07:C6F3: F0 10     BEQ bra_C705
C - - - - - 0x01C705 07:C6F5: C6 2F     DEC ram_002F
C - - - - - 0x01C707 07:C6F7: D0 0C     BNE bra_C705
C - - - - - 0x01C709 07:C6F9: A5 E9     LDA ram_stage
C - - - - - 0x01C70B 07:C6FB: C9 05     CMP #$05
C - - - - - 0x01C70D 07:C6FD: F0 03     BEQ bra_C702    ; if final battle
C - - - - - 0x01C70F 07:C6FF: 4C 9C EC  JMP loc_EC9C
bra_C702:
C - - - - - 0x01C712 07:C702: 4C A4 F4  JMP loc_F4A4
bra_C705:
C - - - - - 0x01C715 07:C705: 4C 5E C6  JMP loc_C65E



loc_C708:
C D 2 - - - 0x01C718 07:C708: A9 00     LDA #$00
C - - - - - 0x01C71A 07:C70A: 85 53     STA ram_0053
C - - - - - 0x01C71C 07:C70C: E6 E9     INC ram_stage
C - - - - - 0x01C71E 07:C70E: A5 E9     LDA ram_stage
C - - - - - 0x01C720 07:C710: C9 06     CMP #$06
C - - - - - 0x01C722 07:C712: D0 02     BNE bra_C716
- - - - - - 0x01C724 07:C714: A9 00     LDA #$00
bra_C716:
C - - - - - 0x01C726 07:C716: 85 E9     STA ram_stage
C - - - - - 0x01C728 07:C718: C9 05     CMP #$05
C - - - - - 0x01C72A 07:C71A: F0 03     BEQ bra_C71F    ; if final battle
C - - - - - 0x01C72C 07:C71C: 20 19 F4  JSR sub_F419
bra_C71F:
loc_C71F:
C D 2 - - - 0x01C72F 07:C71F: A9 03     LDA #$03
C - - - - - 0x01C731 07:C721: 85 B1     STA ram_hearts
C - - - - - 0x01C733 07:C723: A9 00     LDA #$00
C - - - - - 0x01C735 07:C725: 85 3A     STA ram_003A
C - - - - - 0x01C737 07:C727: 85 EE     STA ram_00EE
C - - - - - 0x01C739 07:C729: 85 B2     STA ram_item_fork
loc_C72B:
C - - - - - 0x01C73B 07:C72B: 85 B3     STA ram_item_pipe
C - - - - - 0x01C73D 07:C72D: 85 B4     STA ram_item_pearl_purple
C - - - - - 0x01C73F 07:C72F: 85 B5     STA ram_item_pearl_green
C - - - - - 0x01C741 07:C731: A0 03     LDY #$03
bra_C733_loop:
C - - - - - 0x01C743 07:C733: 99 07 05  STA ram_score_fork,Y
C - - - - - 0x01C746 07:C736: 99 0B 05  STA ram_score_pipe,Y
C - - - - - 0x01C749 07:C739: 99 0F 05  STA ram_score_pearl_purple,Y
C - - - - - 0x01C74C 07:C73C: 99 13 05  STA ram_score_pearl_green,Y
C - - - - - 0x01C74F 07:C73F: 88        DEY
C - - - - - 0x01C750 07:C740: 10 F1     BPL bra_C733_loop
C - - - - - 0x01C752 07:C742: 20 BA CB  JSR sub_CBBA
C - - - - - 0x01C755 07:C745: 4C 5B C6  JMP loc_C65B



tbl_C748_palette:
- D 2 - - - 0x01C758 07:C748: 11        .byte $11, $05, $14, $36   ; 
- D 2 - - - 0x01C75C 07:C74C: 0F        .byte $0F, $0B, $2B, $20   ; 
- D 2 - - - 0x01C760 07:C750: 0F        .byte $0F, $0F, $10, $20   ; 
- D 2 - - - 0x01C764 07:C754: 0F        .byte $0F, $05, $26, $37   ; 



tbl_C758_palette:
- D 2 - - - 0x01C768 07:C758: 03        .byte $03, $37, $29, $19   ; 
- D 2 - - - 0x01C76C 07:C75C: 0F        .byte $0F, $37, $27, $17   ; 
- D 2 - - - 0x01C770 07:C760: 0F        .byte $0F, $37, $17, $19   ; 
- D 2 - - - 0x01C774 07:C764: 0F        .byte $0F, $20, $10, $0F   ; 

- D 2 - - - 0x01C778 07:C768: 03        .byte $03, $0F, $0F, $0F   ; 
- D 2 - - - 0x01C77C 07:C76C: 0F        .byte $0F, $1B, $2B, $20   ; 
- D 2 - - - 0x01C780 07:C770: 0F        .byte $0F, $37, $29, $19   ; 
- D 2 - - - 0x01C784 07:C774: 0F        .byte $0F, $0F, $0F, $0F   ; 



tbl_C778_stage_palette:
; 00
- D 2 - - - 0x01C788 07:C778: 0F        .byte $0F, $00, $10, $20   ; 
- D 2 - - - 0x01C78C 07:C77C: 0F        .byte $0F, $04, $26, $36   ; 
; 01
- D 2 - - - 0x01C790 07:C780: 0F        .byte $0F, $00, $10, $20   ; 
- D 2 - - - 0x01C794 07:C784: 0F        .byte $0F, $04, $23, $36   ; 
; 02
- D 2 - - - 0x01C798 07:C788: 0F        .byte $0F, $13, $23, $36   ; 
- D 2 - - - 0x01C79C 07:C78C: 0F        .byte $0F, $06, $27, $37   ; 
; 03
- D 2 - - - 0x01C7A0 07:C790: 0F        .byte $0F, $00, $10, $20   ; 
- D 2 - - - 0x01C7A4 07:C794: 0F        .byte $0F, $18, $28, $37   ; 
; 04
- D 2 - - - 0x01C7A8 07:C798: 0F        .byte $0F, $0F, $29, $38   ; 
- D 2 - - - 0x01C7AC 07:C79C: 0F        .byte $0F, $03, $23, $34   ; 
; 05
- D 2 - - - 0x01C7B0 07:C7A0: 0F        .byte $0F, $16, $27, $37   ; 
- D 2 - - - 0x01C7B4 07:C7A4: 0F        .byte $0F, $01, $31, $20   ; 



tbl_C7A8:
; 00
- D 2 - - - 0x01C7B8 07:C7A8: 00        .byte $00   ; 
- D 2 - - - 0x01C7B9 07:C7A9: 00        .byte $00   ; 
- D 2 - - - 0x01C7BA 07:C7AA: 80        .byte $80   ; 
- D 2 - - - 0x01C7BB 07:C7AB: 00        .byte $00   ; 
; 01
- D 2 - - - 0x01C7BC 07:C7AC: 00        .byte $00   ; 
- D 2 - - - 0x01C7BD 07:C7AD: 00        .byte $00   ; 
- D 2 - - - 0x01C7BE 07:C7AE: 00        .byte $00   ; 
- D 2 - - - 0x01C7BF 07:C7AF: 00        .byte $00   ; 
; 02
- D 2 - - - 0x01C7C0 07:C7B0: 00        .byte $00   ; 
- D 2 - - - 0x01C7C1 07:C7B1: 00        .byte $00   ; 
- D 2 - - - 0x01C7C2 07:C7B2: 00        .byte $00   ; 
- D 2 - - - 0x01C7C3 07:C7B3: 00        .byte $00   ; 
; 03
- D 2 - - - 0x01C7C4 07:C7B4: 00        .byte $00   ; 
- D 2 - - - 0x01C7C5 07:C7B5: 00        .byte $00   ; 
- D 2 - - - 0x01C7C6 07:C7B6: 00        .byte $00   ; 
- D 2 - - - 0x01C7C7 07:C7B7: 81        .byte $81   ; 
; 04
- D 2 - - - 0x01C7C8 07:C7B8: 00        .byte $00   ; 
- D 2 - - - 0x01C7C9 07:C7B9: 00        .byte $00   ; 
- D 2 - - - 0x01C7CA 07:C7BA: 00        .byte $00   ; 
- D 2 - - - 0x01C7CB 07:C7BB: 00        .byte $00   ; 
; 05
- D 2 - - - 0x01C7CC 07:C7BC: 00        .byte $00   ; 
- D 2 - - - 0x01C7CD 07:C7BD: 00        .byte $00   ; 
- D 2 - - - 0x01C7CE 07:C7BE: 00        .byte $00   ; 
- D 2 - - - 0x01C7CF 07:C7BF: 00        .byte $00   ; 



tbl_C7C0_moon_spr_data:
- D 2 - - - 0x01C7D0 07:C7C0: 6F        .byte $6F, $CA, $02, $68   ; spr_Y, spr_T, spr_A, spr_X
- D 2 - - - 0x01C7D4 07:C7C4: 6F        .byte $6F, $C9, $02, $70   ; 
- D 2 - - - 0x01C7D8 07:C7C8: 6F        .byte $6F, $C8, $02, $78   ; 
- D 2 - - - 0x01C7DC 07:C7CC: 6F        .byte $6F, $C8, $42, $80   ; 
- D 2 - - - 0x01C7E0 07:C7D0: 6F        .byte $6F, $C9, $42, $88   ; 
- D 2 - - - 0x01C7E4 07:C7D4: 6F        .byte $6F, $CA, $42, $90   ; 
- D 2 - - - 0x01C7E8 07:C7D8: 77        .byte $77, $CB, $02, $60   ; 
- D 2 - - - 0x01C7EC 07:C7DC: 7F        .byte $7F, $CC, $02, $58   ; 
- D 2 - - - 0x01C7F0 07:C7E0: 87        .byte $87, $CD, $02, $58   ; 
- D 2 - - - 0x01C7F4 07:C7E4: 8F        .byte $8F, $CE, $02, $50   ; 
- D 2 - - - 0x01C7F8 07:C7E8: 97        .byte $97, $CF, $02, $50   ; 
- D 2 - - - 0x01C7FC 07:C7EC: 9F        .byte $9F, $CF, $82, $50   ; 
- D 2 - - - 0x01C800 07:C7F0: A7        .byte $A7, $CE, $82, $50   ; 
- D 2 - - - 0x01C804 07:C7F4: AF        .byte $AF, $CD, $82, $58   ; 
- D 2 - - - 0x01C808 07:C7F8: 77        .byte $77, $CB, $42, $98   ; 
- D 2 - - - 0x01C80C 07:C7FC: 7F        .byte $7F, $CC, $42, $A0   ; 
- D 2 - - - 0x01C810 07:C800: 87        .byte $87, $CD, $42, $A0   ; 
- D 2 - - - 0x01C814 07:C804: 8F        .byte $8F, $CE, $42, $A8   ; 
- D 2 - - - 0x01C818 07:C808: 97        .byte $97, $CF, $42, $A8   ; 
- D 2 - - - 0x01C81C 07:C80C: 9F        .byte $9F, $CF, $C2, $A8   ; 
- D 2 - - - 0x01C820 07:C810: A7        .byte $A7, $CE, $C2, $A8   ; 
- D 2 - - - 0x01C824 07:C814: AF        .byte $AF, $CD, $C2, $A0   ; 



sub_C818:
C - - - - - 0x01C828 07:C818: 20 EC C1  JSR sub_C1EC
C - - - - - 0x01C82B 07:C81B: 20 AD FF  JSR sub_FFAD
C - - - - - 0x01C82E 07:C81E: 20 D3 C1  JSR sub_C1D3_clear_all_objects
C - - - - - 0x01C831 07:C821: A9 04     LDA #$04
C - - - - - 0x01C833 07:C823: 85 97     STA ram_spr_index
C - - - - - 0x01C835 07:C825: 20 BC C1  JSR sub_C1BC_hide_unused_sprites
C - - - - - 0x01C838 07:C828: 20 AD FF  JSR sub_FFAD
C - - - - - 0x01C83B 07:C82B: 20 04 C1  JSR sub_C104
C - - - - - 0x01C83E 07:C82E: A4 53     LDY ram_0053
C - - - - - 0x01C840 07:C830: 84 9E     STY ram_009E
C - - - - - 0x01C842 07:C832: 84 9F     STY ram_009F
C - - - - - 0x01C844 07:C834: 84 B8     STY ram_00B8
C - - - - - 0x01C846 07:C836: F0 18     BEQ bra_C850
C - - - - - 0x01C848 07:C838: A9 04     LDA #con_prg_bank + $04
C - - - - - 0x01C84A 07:C83A: 20 CD FF  JSR sub_FFCD_prg_bankswitch
C - - - - - 0x01C84D 07:C83D: A6 E9     LDX ram_stage
C - - - - - 0x01C84F 07:C83F: BD A0 BF  LDA tbl_0x013FB0,X
C - - - - - 0x01C852 07:C842: 85 9E     STA ram_009E
C - - - - - 0x01C854 07:C844: 85 9F     STA ram_009F
C - - - - - 0x01C856 07:C846: A5 E9     LDA ram_stage
C - - - - - 0x01C858 07:C848: 18        CLC
C - - - - - 0x01C859 07:C849: 69 01     ADC #$01
C - - - - - 0x01C85B 07:C84B: 0A        ASL
C - - - - - 0x01C85C 07:C84C: 0A        ASL
C - - - - - 0x01C85D 07:C84D: A8        TAY
C - - - - - 0x01C85E 07:C84E: 85 B8     STA ram_00B8
bra_C850:
C - - - - - 0x01C860 07:C850: B9 A9 C9  LDA tbl_C9A9,Y
C - - - - - 0x01C863 07:C853: 85 FD     STA ram_scroll_X_hi
C - - - - - 0x01C865 07:C855: 8D 40 03  STA ram_pos_X_hi
C - - - - - 0x01C868 07:C858: 85 33     STA ram_0033
C - - - - - 0x01C86A 07:C85A: B9 AA C9  LDA tbl_C9A9 + $01,Y
C - - - - - 0x01C86D 07:C85D: 85 FB     STA ram_scroll_Y_hi
C - - - - - 0x01C86F 07:C85F: 8D 70 03  STA ram_pos_Y_hi
C - - - - - 0x01C872 07:C862: 85 35     STA ram_0035
C - - - - - 0x01C874 07:C864: 18        CLC
C - - - - - 0x01C875 07:C865: 65 FD     ADC ram_scroll_X_hi
C - - - - - 0x01C877 07:C867: 85 20     STA ram_0020
C - - - - - 0x01C879 07:C869: A5 FD     LDA ram_scroll_X_hi
C - - - - - 0x01C87B 07:C86B: 29 01     AND #$01
C - - - - - 0x01C87D 07:C86D: 4A        LSR
C - - - - - 0x01C87E 07:C86E: 6A        ROR
C - - - - - 0x01C87F 07:C86F: 4A        LSR
C - - - - - 0x01C880 07:C870: 85 22     STA ram_0022
C - - - - - 0x01C882 07:C872: A9 00     LDA #$00
C - - - - - 0x01C884 07:C874: 85 FC     STA ram_scroll_X_lo
C - - - - - 0x01C886 07:C876: 85 FA     STA ram_scroll_Y_lo
C - - - - - 0x01C888 07:C878: 20 7F D9  JSR sub_D97F
C - - - - - 0x01C88B 07:C87B: 20 D3 C1  JSR sub_C1D3_clear_all_objects
C - - - - - 0x01C88E 07:C87E: A9 60     LDA #$60
C - - - - - 0x01C890 07:C880: 85 0E     STA ram_000E
bra_C882_loop:
C - - - - - 0x01C892 07:C882: A9 01     LDA #$01
C - - - - - 0x01C894 07:C884: 85 01     STA ram_0001
C - - - - - 0x01C896 07:C886: 85 27     STA ram_0027
C - - - - - 0x01C898 07:C888: 20 BD D6  JSR sub_D6BD
C - - - - - 0x01C89B 07:C88B: 20 CB C0  JSR sub_C0CB_write_buffer_to_ppu
C - - - - - 0x01C89E 07:C88E: C6 0E     DEC ram_000E
C - - - - - 0x01C8A0 07:C890: D0 F0     BNE bra_C882_loop
C - - - - - 0x01C8A2 07:C892: A5 53     LDA ram_0053
C - - - - - 0x01C8A4 07:C894: F0 1B     BEQ bra_C8B1
C - - - - - 0x01C8A6 07:C896: A5 E9     LDA ram_stage
C - - - - - 0x01C8A8 07:C898: C9 03     CMP #$03
C - - - - - 0x01C8AA 07:C89A: 90 15     BCC bra_C8B1
C - - - - - 0x01C8AC 07:C89C: E9 03     SBC #$03
C - - - - - 0x01C8AE 07:C89E: 0A        ASL
C - - - - - 0x01C8AF 07:C89F: 0A        ASL
C - - - - - 0x01C8B0 07:C8A0: 0A        ASL
C - - - - - 0x01C8B1 07:C8A1: 0A        ASL
C - - - - - 0x01C8B2 07:C8A2: A8        TAY
C - - - - - 0x01C8B3 07:C8A3: A2 00     LDX #$00
bra_C8A5_loop:
C - - - - - 0x01C8B5 07:C8A5: B9 4D E0  LDA tbl_E04D_palette,Y
C - - - - - 0x01C8B8 07:C8A8: 9D 20 06  STA ram_pal_buffer_2,X
C - - - - - 0x01C8BB 07:C8AB: C8        INY
C - - - - - 0x01C8BC 07:C8AC: E8        INX
C - - - - - 0x01C8BD 07:C8AD: E0 10     CPX #$10
C - - - - - 0x01C8BF 07:C8AF: D0 F4     BNE bra_C8A5_loop
bra_C8B1:
C - - - - - 0x01C8C1 07:C8B1: A2 0F     LDX #$0F
bra_C8B3_loop:
C - - - - - 0x01C8C3 07:C8B3: BD 48 C7  LDA tbl_C748_palette,X
C - - - - - 0x01C8C6 07:C8B6: 9D 30 06  STA ram_pal_buffer_2 + $10,X
C - - - - - 0x01C8C9 07:C8B9: CA        DEX
C - - - - - 0x01C8CA 07:C8BA: 10 F7     BPL bra_C8B3_loop
C - - - - - 0x01C8CC 07:C8BC: AD 20 06  LDA ram_pal_buffer_2
C - - - - - 0x01C8CF 07:C8BF: 8D 30 06  STA ram_pal_buffer_2 + $10
C - - - - - 0x01C8D2 07:C8C2: A5 E9     LDA ram_stage
C - - - - - 0x01C8D4 07:C8C4: 0A        ASL
C - - - - - 0x01C8D5 07:C8C5: 0A        ASL
C - - - - - 0x01C8D6 07:C8C6: 0A        ASL
C - - - - - 0x01C8D7 07:C8C7: A8        TAY
C - - - - - 0x01C8D8 07:C8C8: A2 00     LDX #$00
bra_C8CA_loop:
C - - - - - 0x01C8DA 07:C8CA: B9 78 C7  LDA tbl_C778_stage_palette,Y
C - - - - - 0x01C8DD 07:C8CD: 9D 38 06  STA ram_pal_buffer_2 + $18,X
C - - - - - 0x01C8E0 07:C8D0: C8        INY
C - - - - - 0x01C8E1 07:C8D1: E8        INX
C - - - - - 0x01C8E2 07:C8D2: E0 08     CPX #$08
C - - - - - 0x01C8E4 07:C8D4: D0 F4     BNE bra_C8CA_loop
C - - - - - 0x01C8E6 07:C8D6: A5 53     LDA ram_0053
C - - - - - 0x01C8E8 07:C8D8: F0 23     BEQ bra_C8FD
C - - - - - 0x01C8EA 07:C8DA: A6 B8     LDX ram_00B8
C - - - - - 0x01C8EC 07:C8DC: A4 E9     LDY ram_stage
C - - - - - 0x01C8EE 07:C8DE: B9 FF DA  LDA tbl_DAFF,Y
C - - - - - 0x01C8F1 07:C8E1: 18        CLC
C - - - - - 0x01C8F2 07:C8E2: 7D AB C9  ADC tbl_C9A9 + $02,X
C - - - - - 0x01C8F5 07:C8E5: A8        TAY
C - - - - - 0x01C8F6 07:C8E6: B9 24 DB  LDA tbl_DB24,Y
C - - - - - 0x01C8F9 07:C8E9: F0 12     BEQ bra_C8FD
C - - - - - 0x01C8FB 07:C8EB: 0A        ASL
C - - - - - 0x01C8FC 07:C8EC: 0A        ASL
C - - - - - 0x01C8FD 07:C8ED: 0A        ASL
C - - - - - 0x01C8FE 07:C8EE: A8        TAY
C - - - - - 0x01C8FF 07:C8EF: A2 00     LDX #$00
bra_C8F1_loop:
C - - - - - 0x01C901 07:C8F1: B9 9B DB  LDA tbl_DBA3_palette - $08,Y
C - - - - - 0x01C904 07:C8F4: 9D 38 06  STA ram_pal_buffer_2 + $18,X
C - - - - - 0x01C907 07:C8F7: C8        INY
C - - - - - 0x01C908 07:C8F8: E8        INX
C - - - - - 0x01C909 07:C8F9: E0 08     CPX #$08
C - - - - - 0x01C90B 07:C8FB: D0 F4     BNE bra_C8F1_loop
bra_C8FD:
C - - - - - 0x01C90D 07:C8FD: 20 0E C1  JSR sub_C10E
C - - - - - 0x01C910 07:C900: 20 AD FF  JSR sub_FFAD
C - - - - - 0x01C913 07:C903: 20 E6 C1  JSR sub_C1E6
; con_music_stage_00
; con_music_stage_01
; con_music_stage_02
; con_music_stage_03
; con_music_stage_04
C - - - - - 0x01C916 07:C906: A5 E9     LDA ram_stage
C - - - - - 0x01C918 07:C908: 48        PHA
C - - - - - 0x01C919 07:C909: 18        CLC
C - - - - - 0x01C91A 07:C90A: 69 02     ADC #$02
C - - - - - 0x01C91C 07:C90C: C9 07     CMP #$07
C - - - - - 0x01C91E 07:C90E: D0 02     BNE bra_C912
C - - - - - 0x01C920 07:C910: A9 09     LDA #con_music_stage_05
bra_C912:
C - - - - - 0x01C922 07:C912: 20 9E FC  JSR sub_FC9E_play_music
C - - - - - 0x01C925 07:C915: 68        PLA
C - - - - - 0x01C926 07:C916: 0A        ASL
C - - - - - 0x01C927 07:C917: 0A        ASL
C - - - - - 0x01C928 07:C918: AA        TAX
C - - - - - 0x01C929 07:C919: A0 00     LDY #$00
bra_C91B_loop:
C - - - - - 0x01C92B 07:C91B: BD A8 C7  LDA tbl_C7A8,X
C - - - - - 0x01C92E 07:C91E: 99 00 01  STA ram_0100,Y
C - - - - - 0x01C931 07:C921: F0 08     BEQ bra_C92B
C - - - - - 0x01C933 07:C923: A9 00     LDA #$00
C - - - - - 0x01C935 07:C925: 99 04 01  STA ram_0104,Y
C - - - - - 0x01C938 07:C928: 99 08 01  STA ram_0108,Y
bra_C92B:
C - - - - - 0x01C93B 07:C92B: E8        INX
C - - - - - 0x01C93C 07:C92C: C8        INY
C - - - - - 0x01C93D 07:C92D: C0 04     CPY #$04
C - - - - - 0x01C93F 07:C92F: D0 EA     BNE bra_C91B_loop
C - - - - - 0x01C941 07:C931: A0 1F     LDY #$1F
C - - - - - 0x01C943 07:C933: A9 00     LDA #$00
C - - - - - 0x01C945 07:C935: 85 1D     STA ram_001D
bra_C937_loop:
C - - - - - 0x01C947 07:C937: 99 10 01  STA ram_0110,Y
C - - - - - 0x01C94A 07:C93A: 99 30 01  STA ram_0130,Y
C - - - - - 0x01C94D 07:C93D: 88        DEY
C - - - - - 0x01C94E 07:C93E: 10 F7     BPL bra_C937_loop
C - - - - - 0x01C950 07:C940: A9 02     LDA #$02
C - - - - - 0x01C952 07:C942: 8D 30 04  STA ram_0430_obj
C - - - - - 0x01C955 07:C945: A9 00     LDA #$00
C - - - - - 0x01C957 07:C947: 8D 48 04  STA ram_0448
C - - - - - 0x01C95A 07:C94A: 8D 18 04  STA ram_animation_cnt
C - - - - - 0x01C95D 07:C94D: 85 F7     STA ram_copy_scroll_X
C - - - - - 0x01C95F 07:C94F: 85 F8     STA ram_copy_scroll_Y
C - - - - - 0x01C961 07:C951: 85 52     STA ram_0052
C - - - - - 0x01C963 07:C953: 8D 60 03  STA ram_pos_Y_lo
C - - - - - 0x01C966 07:C956: 85 34     STA ram_0034
C - - - - - 0x01C968 07:C958: A9 09     LDA #con_ariel_spawning
C - - - - - 0x01C96A 07:C95A: 85 30     STA ram_ariel_status
C - - - - - 0x01C96C 07:C95C: 20 BA CB  JSR sub_CBBA
C - - - - - 0x01C96F 07:C95F: A5 53     LDA ram_0053
C - - - - - 0x01C971 07:C961: F0 0B     BEQ bra_C96E
C - - - - - 0x01C973 07:C963: A5 E9     LDA ram_stage
C - - - - - 0x01C975 07:C965: C9 03     CMP #$03
C - - - - - 0x01C977 07:C967: D0 05     BNE bra_C96E
; if stage 4
C - - - - - 0x01C979 07:C969: A9 00     LDA #$00
C - - - - - 0x01C97B 07:C96B: 8D 03 01  STA ram_0103
bra_C96E:
C - - - - - 0x01C97E 07:C96E: A9 C0     LDA #$C0
C - - - - - 0x01C980 07:C970: 8D 00 03  STA ram_obj_flags
C - - - - - 0x01C983 07:C973: 09 10     ORA #$10    ; D0
C - - - - - 0x01C985 07:C975: 8D 00 04  STA ram_0400_obj
C - - - - - 0x01C988 07:C978: A9 40     LDA #$40
C - - - - - 0x01C98A 07:C97A: 8D 30 03  STA ram_pos_X_lo
C - - - - - 0x01C98D 07:C97D: 85 32     STA ram_0032
C - - - - - 0x01C98F 07:C97F: A9 01     LDA #$01
C - - - - - 0x01C991 07:C981: 85 31     STA ram_0031
C - - - - - 0x01C993 07:C983: 85 27     STA ram_0027
C - - - - - 0x01C995 07:C985: 85 F9     STA ram_camera_direction
C - - - - - 0x01C997 07:C987: A6 B8     LDX ram_00B8
C - - - - - 0x01C999 07:C989: BC AB C9  LDY tbl_C9A9 + $02,X
C - - - - - 0x01C99C 07:C98C: 84 00     STY ram_0000
C - - - - - 0x01C99E 07:C98E: B1 70     LDA (ram_0070),Y
C - - - - - 0x01C9A0 07:C990: 48        PHA
C - - - - - 0x01C9A1 07:C991: 29 1F     AND #$1F
C - - - - - 0x01C9A3 07:C993: 85 51     STA ram_scroll_hi_max
C - - - - - 0x01C9A5 07:C995: 68        PLA
C - - - - - 0x01C9A6 07:C996: 29 F0     AND #$F0
C - - - - - 0x01C9A8 07:C998: 05 00     ORA ram_0000
C - - - - - 0x01C9AA 07:C99A: 85 50     STA ram_substage
C - - - - - 0x01C9AC 07:C99C: 29 C0     AND #$C0
C - - - - - 0x01C9AE 07:C99E: F0 08     BEQ bra_C9A8_RTS    ; if horisontal
; if vertical
- - - - - - 0x01C9B0 07:C9A0: A9 1D     LDA #$1D
- - - - - - 0x01C9B2 07:C9A2: 85 22     STA ram_0022
- - - - - - 0x01C9B4 07:C9A4: A9 08     LDA #$08
- - - - - - 0x01C9B6 07:C9A6: 85 27     STA ram_0027
bra_C9A8_RTS:
C - - - - - 0x01C9B8 07:C9A8: 60        RTS



tbl_C9A9:
; 00
- D 2 - - - 0x01C9B9 07:C9A9: 00        .byte $00   ; pos_X_hi
- D 2 - - - 0x01C9BA 07:C9AA: 00        .byte $00   ; pos_Y_hi
- D 2 - - - 0x01C9BB 07:C9AB: 00        .byte $00   ; ??? 002 index
- - - - - - 0x01C9BC 07:C9AC: 00        .byte $00   ; placeholder
; 01
- D 2 - - - 0x01C9BD 07:C9AD: 07        .byte $07   ; pos_X_hi
- D 2 - - - 0x01C9BE 07:C9AE: 02        .byte $02   ; pos_Y_hi
- D 2 - - - 0x01C9BF 07:C9AF: 02        .byte $02   ; ??? 002 index
- - - - - - 0x01C9C0 07:C9B0: 00        .byte $00   ; placeholder
; 02
- D 2 - - - 0x01C9C1 07:C9B1: 09        .byte $09   ; pos_X_hi
- D 2 - - - 0x01C9C2 07:C9B2: 04        .byte $04   ; pos_Y_hi
- D 2 - - - 0x01C9C3 07:C9B3: 04        .byte $04   ; ??? 002 index
- - - - - - 0x01C9C4 07:C9B4: 00        .byte $00   ; placeholder
; 03
- D 2 - - - 0x01C9C5 07:C9B5: 0D        .byte $0D   ; pos_X_hi
- D 2 - - - 0x01C9C6 07:C9B6: 02        .byte $02   ; pos_Y_hi
- D 2 - - - 0x01C9C7 07:C9B7: 04        .byte $04   ; ??? 002 index
- - - - - - 0x01C9C8 07:C9B8: 00        .byte $00   ; placeholder
; 04
- D 2 - - - 0x01C9C9 07:C9B9: 0A        .byte $0A   ; pos_X_hi
- D 2 - - - 0x01C9CA 07:C9BA: 04        .byte $04   ; pos_Y_hi
- D 2 - - - 0x01C9CB 07:C9BB: 05        .byte $05   ; ??? 002 index
- - - - - - 0x01C9CC 07:C9BC: 00        .byte $00   ; placeholder
; 05
- D 2 - - - 0x01C9CD 07:C9BD: 10        .byte $10   ; pos_X_hi
- D 2 - - - 0x01C9CE 07:C9BE: 04        .byte $04   ; pos_Y_hi
- D 2 - - - 0x01C9CF 07:C9BF: 06        .byte $06   ; ??? 002 index
- - - - - - 0x01C9D0 07:C9C0: 00        .byte $00   ; placeholder
; 06 unused?
- - - - - - 0x01C9D1 07:C9C1: 00        .byte $00   ; 
- - - - - - 0x01C9D2 07:C9C2: 00        .byte $00   ; 
- - - - - - 0x01C9D3 07:C9C3: 00        .byte $00   ; 
- - - - - - 0x01C9D4 07:C9C4: 00        .byte $00   ; 



sub_C9C5:
C - - - - - 0x01C9D5 07:C9C5: A9 40     LDA #$40
C - - - - - 0x01C9D7 07:C9C7: 85 99     STA ram_0099
C - - - - - 0x01C9D9 07:C9C9: A5 3B     LDA ram_003B
C - - - - - 0x01C9DB 07:C9CB: F0 02     BEQ bra_C9CF
C - - - - - 0x01C9DD 07:C9CD: C6 3B     DEC ram_003B
bra_C9CF:
C - - - - - 0x01C9DF 07:C9CF: A5 B1     LDA ram_hearts
C - - - - - 0x01C9E1 07:C9D1: F0 06     BEQ bra_C9D9
; if not dead
C - - - - - 0x01C9E3 07:C9D3: A5 3F     LDA ram_003F
C - - - - - 0x01C9E5 07:C9D5: F0 02     BEQ bra_C9D9
C - - - - - 0x01C9E7 07:C9D7: C6 3F     DEC ram_003F
bra_C9D9:
C - - - - - 0x01C9E9 07:C9D9: A2 00     LDX #$00
C - - - - - 0x01C9EB 07:C9DB: E6 38     INC ram_frame_cnt_1
C - - - - - 0x01C9ED 07:C9DD: A4 30     LDY ram_ariel_status
C - - - - - 0x01C9EF 07:C9DF: B9 EC C9  LDA tbl_C9EC_lo,Y
C - - - - - 0x01C9F2 07:C9E2: 85 00     STA ram_0000
C - - - - - 0x01C9F4 07:C9E4: B9 F6 C9  LDA tbl_C9F6_hi,Y
C - - - - - 0x01C9F7 07:C9E7: 85 01     STA ram_0001
C - - - - - 0x01C9F9 07:C9E9: 6C 00 00  JMP (ram_0000)



tbl_C9EC_lo:
- D 2 - - - 0x01C9FC 07:C9EC: 00        .byte < ofs_004_CA00_00_default   ; 
- D 2 - - - 0x01C9FD 07:C9ED: DD        .byte < ofs_004_CCDD_01_turning   ; 
- D 2 - - - 0x01C9FE 07:C9EE: 3E        .byte < ofs_004_CE3E_02_jumping_out_of_water   ; 
- D 2 - - - 0x01C9FF 07:C9EF: 12        .byte < ofs_004_CF12_03_attacking   ; 
- D 2 - - - 0x01CA00 07:C9F0: 9E        .byte < ofs_004_D09E_04_coming_to_ice   ; 
- D 2 - - - 0x01CA01 07:C9F1: 71        .byte < ofs_004_D171_05_coming_to_surface   ; 
- D 2 - - - 0x01CA02 07:C9F2: 49        .byte < ofs_004_D249_06_diving   ; 
- D 2 - - - 0x01CA03 07:C9F3: A5        .byte < ofs_004_D2A5_07_damaged   ; 
- D 2 - - - 0x01CA04 07:C9F4: 64        .byte < ofs_004_D364_08_waiting_for_boss   ; 
- D 2 - - - 0x01CA05 07:C9F5: 74        .byte < ofs_004_D374_09_spawning   ; 

tbl_C9F6_hi:
- D 2 - - - 0x01CA06 07:C9F6: CA        .byte > ofs_004_CA00_00_default   ; 
- D 2 - - - 0x01CA07 07:C9F7: CC        .byte > ofs_004_CCDD_01_turning   ; 
- D 2 - - - 0x01CA08 07:C9F8: CE        .byte > ofs_004_CE3E_02_jumping_out_of_water   ; 
- D 2 - - - 0x01CA09 07:C9F9: CF        .byte > ofs_004_CF12_03_attacking   ; 
- D 2 - - - 0x01CA0A 07:C9FA: D0        .byte > ofs_004_D09E_04_coming_to_ice   ; 
- D 2 - - - 0x01CA0B 07:C9FB: D1        .byte > ofs_004_D171_05_coming_to_surface   ; 
- D 2 - - - 0x01CA0C 07:C9FC: D2        .byte > ofs_004_D249_06_diving   ; 
- D 2 - - - 0x01CA0D 07:C9FD: D2        .byte > ofs_004_D2A5_07_damaged   ; 
- D 2 - - - 0x01CA0E 07:C9FE: D3        .byte > ofs_004_D364_08_waiting_for_boss   ; 
- D 2 - - - 0x01CA0F 07:C9FF: D3        .byte > ofs_004_D374_09_spawning   ; 



ofs_004_CA00_00_default:
; idle/moving/holding weapon
C - - J - - 0x01CA10 07:CA00: A5 14     LDA ram_btn_press
C - - - - - 0x01CA12 07:CA02: 29 80     AND #con_btn_A
C - - - - - 0x01CA14 07:CA04: D0 03     BNE bra_CA09
C - - - - - 0x01CA16 07:CA06: 4C 71 CA  JMP loc_CA71
bra_CA09:
C - - - - - 0x01CA19 07:CA09: A0 03     LDY #$03
C - - - - - 0x01CA1B 07:CA0B: 20 DF E3  JSR sub_E3DF
C - - - - - 0x01CA1E 07:CA0E: A5 10     LDA ram_0010
C - - - - - 0x01CA20 07:CA10: D0 5F     BNE bra_CA71
C - - - - - 0x01CA22 07:CA12: A6 3A     LDX ram_003A
C - - - - - 0x01CA24 07:CA14: A9 00     LDA #$00
C - - - - - 0x01CA26 07:CA16: 85 3A     STA ram_003A
C - - - - - 0x01CA28 07:CA18: BD 30 04  LDA ram_0430_obj,X
C - - - - - 0x01CA2B 07:CA1B: C9 40     CMP #$40
C - - - - - 0x01CA2D 07:CA1D: D0 2F     BNE bra_CA4E
C - - - - - 0x01CA2F 07:CA1F: A9 7E     LDA #< $047E
C - - - - - 0x01CA31 07:CA21: 9D A0 03  STA ram_spd_Y_lo,X
C - - - - - 0x01CA34 07:CA24: A9 04     LDA #> $047E
C - - - - - 0x01CA36 07:CA26: 9D B0 03  STA ram_spd_Y_hi,X
C - - - - - 0x01CA39 07:CA29: A9 80     LDA #< $0180
C - - - - - 0x01CA3B 07:CA2B: 9D 80 03  STA ram_spd_X_lo,X
C - - - - - 0x01CA3E 07:CA2E: A9 01     LDA #> $0180
C - - - - - 0x01CA40 07:CA30: 9D 90 03  STA ram_spd_X_hi,X
C - - - - - 0x01CA43 07:CA33: A9 81     LDA #$81
C - - - - - 0x01CA45 07:CA35: 9D 00 03  STA ram_obj_flags,X
C - - - - - 0x01CA48 07:CA38: A9 01     LDA #$01
C - - - - - 0x01CA4A 07:CA3A: 9D D0 03  STA ram_direction,X
C - - - - - 0x01CA4D 07:CA3D: A9 FF     LDA #$FF
C - - - - - 0x01CA4F 07:CA3F: 9D 60 04  STA ram_0460_obj,X
C - - - - - 0x01CA52 07:CA42: AD 00 04  LDA ram_0400_obj
C - - - - - 0x01CA55 07:CA45: 29 40     AND #$40
C - - - - - 0x01CA57 07:CA47: D0 05     BNE bra_CA4E
C - - - - - 0x01CA59 07:CA49: A9 02     LDA #$02
C - - - - - 0x01CA5B 07:CA4B: 9D D0 03  STA ram_direction,X
bra_CA4E:
C - - - - - 0x01CA5E 07:CA4E: A2 00     LDX #$00
C - - - - - 0x01CA60 07:CA50: A9 02     LDA #con_ariel_jumping_out_of_water
C - - - - - 0x01CA62 07:CA52: 85 30     STA ram_ariel_status
C - - - - - 0x01CA64 07:CA54: A9 1F     LDA #< $011F
C - - - - - 0x01CA66 07:CA56: 8D 80 03  STA ram_spd_X_lo
C - - - - - 0x01CA69 07:CA59: A9 01     LDA #> $011F
C - - - - - 0x01CA6B 07:CA5B: 8D 90 03  STA ram_spd_X_hi
C - - - - - 0x01CA6E 07:CA5E: A9 7E     LDA #< $047E
C - - - - - 0x01CA70 07:CA60: 8D A0 03  STA ram_spd_Y_lo
C - - - - - 0x01CA73 07:CA63: A9 04     LDA #> $047E
C - - - - - 0x01CA75 07:CA65: 8D B0 03  STA ram_spd_Y_hi
C - - - - - 0x01CA78 07:CA68: A9 08     LDA #$08
C - - - - - 0x01CA7A 07:CA6A: 85 39     STA ram_0039
C - - - - - 0x01CA7C 07:CA6C: A9 04     LDA #$04
C - - - - - 0x01CA7E 07:CA6E: 4C 45 FC  JMP loc_FC45
bra_CA71:
loc_CA71:
C D 2 - - - 0x01CA81 07:CA71: A5 3B     LDA ram_003B
C - - - - - 0x01CA83 07:CA73: D0 21     BNE bra_CA96
C - - - - - 0x01CA85 07:CA75: A5 14     LDA ram_btn_press
C - - - - - 0x01CA87 07:CA77: 29 80     AND #con_btn_A
C - - - - - 0x01CA89 07:CA79: F0 1B     BEQ bra_CA96
C - - - - - 0x01CA8B 07:CA7B: 20 20 CF  JSR sub_CF20
C - - - - - 0x01CA8E 07:CA7E: F0 16     BEQ bra_CA96
C - - - - - 0x01CA90 07:CA80: A9 12     LDA #con_sfx_shoot
C - - - - - 0x01CA92 07:CA82: 20 A0 FC  JSR sub_FCA0_play_sfx
C - - - - - 0x01CA95 07:CA85: A9 1E     LDA #$1E
C - - - - - 0x01CA97 07:CA87: 85 3B     STA ram_003B
C - - - - - 0x01CA99 07:CA89: A9 09     LDA #$09
C - - - - - 0x01CA9B 07:CA8B: 20 45 FC  JSR sub_FC45
C - - - - - 0x01CA9E 07:CA8E: A9 03     LDA #con_ariel_attacking
C - - - - - 0x01CAA0 07:CA90: 85 30     STA ram_ariel_status
C - - - - - 0x01CAA2 07:CA92: A9 00     LDA #$00
C - - - - - 0x01CAA4 07:CA94: 85 3A     STA ram_003A
bra_CA96:
C - - - - - 0x01CAA6 07:CA96: A5 16     LDA ram_btn_hold
C - - - - - 0x01CAA8 07:CA98: 29 03     AND #con_btns_LR
C - - - - - 0x01CAAA 07:CA9A: F0 27     BEQ bra_CAC3
C - - - - - 0x01CAAC 07:CA9C: 85 00     STA ram_0000
C - - - - - 0x01CAAE 07:CA9E: 29 01     AND #$01
C - - - - - 0x01CAB0 07:CAA0: 4A        LSR
C - - - - - 0x01CAB1 07:CAA1: 6A        ROR
C - - - - - 0x01CAB2 07:CAA2: 4A        LSR
C - - - - - 0x01CAB3 07:CAA3: 85 01     STA ram_0001
C - - - - - 0x01CAB5 07:CAA5: AD 00 04  LDA ram_0400_obj
C - - - - - 0x01CAB8 07:CAA8: 29 40     AND #$40
C - - - - - 0x01CABA 07:CAAA: C5 01     CMP ram_0001
C - - - - - 0x01CABC 07:CAAC: F0 36     BEQ bra_CAE4
C - - - - - 0x01CABE 07:CAAE: A5 31     LDA ram_0031
C - - - - - 0x01CAC0 07:CAB0: 29 0C     AND #$0C
C - - - - - 0x01CAC2 07:CAB2: 05 00     ORA ram_0000
C - - - - - 0x01CAC4 07:CAB4: 85 31     STA ram_0031
C - - - - - 0x01CAC6 07:CAB6: A9 01     LDA #con_ariel_turning
C - - - - - 0x01CAC8 07:CAB8: 85 30     STA ram_ariel_status
C - - - - - 0x01CACA 07:CABA: A9 00     LDA #$00
C - - - - - 0x01CACC 07:CABC: 85 3C     STA ram_003C
C - - - - - 0x01CACE 07:CABE: A9 03     LDA #$03
C - - - - - 0x01CAD0 07:CAC0: 4C 45 FC  JMP loc_FC45
bra_CAC3:
C - - - - - 0x01CAD3 07:CAC3: AD 90 03  LDA ram_spd_X_hi
C - - - - - 0x01CAD6 07:CAC6: 0D 80 03  ORA ram_spd_X_lo
C - - - - - 0x01CAD9 07:CAC9: F0 10     BEQ bra_CADB
C - - - - - 0x01CADB 07:CACB: 20 CA D3  JSR sub_D3CA
C - - - - - 0x01CADE 07:CACE: 20 E2 D3  JSR sub_D3E2_change_spd_X
C - - - - - 0x01CAE1 07:CAD1: B0 3B     BCS bra_CB0E
C - - - - - 0x01CAE3 07:CAD3: A9 00     LDA #$00
C - - - - - 0x01CAE5 07:CAD5: 8D 80 03  STA ram_spd_X_lo
C - - - - - 0x01CAE8 07:CAD8: 8D 90 03  STA ram_spd_X_hi
bra_CADB:
C - - - - - 0x01CAEB 07:CADB: A5 31     LDA ram_0031
C - - - - - 0x01CAED 07:CADD: 29 0C     AND #$0C
C - - - - - 0x01CAEF 07:CADF: 85 31     STA ram_0031
C - - - - - 0x01CAF1 07:CAE1: 4C 0E CB  JMP loc_CB0E
bra_CAE4:
C - - - - - 0x01CAF4 07:CAE4: A5 31     LDA ram_0031
C - - - - - 0x01CAF6 07:CAE6: 29 0C     AND #$0C
C - - - - - 0x01CAF8 07:CAE8: 05 00     ORA ram_0000
C - - - - - 0x01CAFA 07:CAEA: 85 31     STA ram_0031
C - - - - - 0x01CAFC 07:CAEC: A5 16     LDA ram_btn_hold
C - - - - - 0x01CAFE 07:CAEE: 29 40     AND #con_btn_B
C - - - - - 0x01CB00 07:CAF0: 4A        LSR
C - - - - - 0x01CB01 07:CAF1: 4A        LSR
C - - - - - 0x01CB02 07:CAF2: 05 31     ORA ram_0031
C - - - - - 0x01CB04 07:CAF4: A8        TAY
C - - - - - 0x01CB05 07:CAF5: AD 80 03  LDA ram_spd_X_lo
C - - - - - 0x01CB08 07:CAF8: 38        SEC
C - - - - - 0x01CB09 07:CAF9: F9 5D CC  SBC tbl_CC5D_spd_X_lo,Y
C - - - - - 0x01CB0C 07:CAFC: 85 00     STA ram_0000
C - - - - - 0x01CB0E 07:CAFE: AD 90 03  LDA ram_spd_X_hi
C - - - - - 0x01CB11 07:CB01: F9 7D CC  SBC tbl_CC7D_spd_X_hi,Y
C - - - - - 0x01CB14 07:CB04: 05 00     ORA ram_0000
C - - - - - 0x01CB16 07:CB06: F0 06     BEQ bra_CB0E
C - - - - - 0x01CB18 07:CB08: 20 1A D4  JSR sub_D41A
C - - - - - 0x01CB1B 07:CB0B: 20 35 D4  JSR sub_D435
bra_CB0E:
loc_CB0E:
C D 2 - - - 0x01CB1E 07:CB0E: A5 16     LDA ram_btn_hold
C - - - - - 0x01CB20 07:CB10: 29 0C     AND #con_btns_UD
C - - - - - 0x01CB22 07:CB12: F0 19     BEQ bra_CB2D
C - - - - - 0x01CB24 07:CB14: 85 00     STA ram_0000
C - - - - - 0x01CB26 07:CB16: A5 31     LDA ram_0031
C - - - - - 0x01CB28 07:CB18: 29 0C     AND #$0C
C - - - - - 0x01CB2A 07:CB1A: F0 2A     BEQ bra_CB46
C - - - - - 0x01CB2C 07:CB1C: C5 00     CMP ram_0000
C - - - - - 0x01CB2E 07:CB1E: F0 26     BEQ bra_CB46
C - - - - - 0x01CB30 07:CB20: A5 31     LDA ram_0031
C - - - - - 0x01CB32 07:CB22: 29 03     AND #$03
C - - - - - 0x01CB34 07:CB24: 05 00     ORA ram_0000
C - - - - - 0x01CB36 07:CB26: 85 31     STA ram_0031
C - - - - - 0x01CB38 07:CB28: F0 03     BEQ bra_CB2D
C - - - - - 0x01CB3A 07:CB2A: 4C 98 CB  JMP loc_CB98
bra_CB2D:
C - - - - - 0x01CB3D 07:CB2D: AD B0 03  LDA ram_spd_Y_hi
C - - - - - 0x01CB40 07:CB30: 0D A0 03  ORA ram_spd_Y_lo
C - - - - - 0x01CB43 07:CB33: F0 08     BEQ bra_CB3D
C - - - - - 0x01CB45 07:CB35: 20 CA D3  JSR sub_D3CA
C - - - - - 0x01CB48 07:CB38: 20 FE D3  JSR sub_D3FE_change_spd_Y
C - - - - - 0x01CB4B 07:CB3B: B0 5B     BCS bra_CB98
bra_CB3D:
C - - - - - 0x01CB4D 07:CB3D: A5 31     LDA ram_0031
C - - - - - 0x01CB4F 07:CB3F: 29 03     AND #$03
C - - - - - 0x01CB51 07:CB41: 85 31     STA ram_0031
C - - - - - 0x01CB53 07:CB43: 4C 98 CB  JMP loc_CB98
bra_CB46:
C - - - - - 0x01CB56 07:CB46: A5 31     LDA ram_0031
C - - - - - 0x01CB58 07:CB48: 29 03     AND #$03
C - - - - - 0x01CB5A 07:CB4A: 05 00     ORA ram_0000
C - - - - - 0x01CB5C 07:CB4C: 85 31     STA ram_0031
C - - - - - 0x01CB5E 07:CB4E: A5 16     LDA ram_btn_hold
C - - - - - 0x01CB60 07:CB50: 29 40     AND #con_btn_B
C - - - - - 0x01CB62 07:CB52: 4A        LSR
C - - - - - 0x01CB63 07:CB53: 4A        LSR
C - - - - - 0x01CB64 07:CB54: 05 31     ORA ram_0031
C - - - - - 0x01CB66 07:CB56: A8        TAY
C - - - - - 0x01CB67 07:CB57: 20 1A D4  JSR sub_D41A
C - - - - - 0x01CB6A 07:CB5A: AD A0 03  LDA ram_spd_Y_lo
C - - - - - 0x01CB6D 07:CB5D: 18        CLC
C - - - - - 0x01CB6E 07:CB5E: 65 36     ADC ram_0036
C - - - - - 0x01CB70 07:CB60: 8D A0 03  STA ram_spd_Y_lo
C - - - - - 0x01CB73 07:CB63: AD B0 03  LDA ram_spd_Y_hi
C - - - - - 0x01CB76 07:CB66: 69 00     ADC #$00
C - - - - - 0x01CB78 07:CB68: 8D B0 03  STA ram_spd_Y_hi
C - - - - - 0x01CB7B 07:CB6B: B9 9D CC  LDA tbl_CC9D_spd_Y_lo,Y
C - - - - - 0x01CB7E 07:CB6E: 38        SEC
C - - - - - 0x01CB7F 07:CB6F: ED A0 03  SBC ram_spd_Y_lo
C - - - - - 0x01CB82 07:CB72: B9 BD CC  LDA tbl_CCBD_spd_Y_hi,Y
C - - - - - 0x01CB85 07:CB75: ED B0 03  SBC ram_spd_Y_hi
C - - - - - 0x01CB88 07:CB78: B0 0F     BCS bra_CB89
C - - - - - 0x01CB8A 07:CB7A: B9 9D CC  LDA tbl_CC9D_spd_Y_lo,Y
C - - - - - 0x01CB8D 07:CB7D: 8D A0 03  STA ram_spd_Y_lo
C - - - - - 0x01CB90 07:CB80: B9 BD CC  LDA tbl_CCBD_spd_Y_hi,Y
C - - - - - 0x01CB93 07:CB83: 8D B0 03  STA ram_spd_Y_hi
C - - - - - 0x01CB96 07:CB86: 4C 98 CB  JMP loc_CB98
bra_CB89:
C - - - - - 0x01CB99 07:CB89: AD B0 03  LDA ram_spd_Y_hi
C - - - - - 0x01CB9C 07:CB8C: D0 0A     BNE bra_CB98
C - - - - - 0x01CB9E 07:CB8E: A9 66     LDA #$66
C - - - - - 0x01CBA0 07:CB90: CD A0 03  CMP ram_spd_Y_lo
C - - - - - 0x01CBA3 07:CB93: 90 03     BCC bra_CB98
C - - - - - 0x01CBA5 07:CB95: 8D A0 03  STA ram_spd_Y_lo
bra_CB98:
loc_CB98:
C D 2 - - - 0x01CBA8 07:CB98: AD 80 03  LDA ram_spd_X_lo
C - - - - - 0x01CBAB 07:CB9B: 0D 90 03  ORA ram_spd_X_hi
C - - - - - 0x01CBAE 07:CB9E: D0 49     BNE bra_CBE9
C - - - - - 0x01CBB0 07:CBA0: AD A0 03  LDA ram_spd_Y_lo
C - - - - - 0x01CBB3 07:CBA3: 0D B0 03  ORA ram_spd_Y_hi
C - - - - - 0x01CBB6 07:CBA6: D0 25     BNE bra_CBCD
C - - - - - 0x01CBB8 07:CBA8: 20 A9 D5  JSR sub_D5A9
C - - - - - 0x01CBBB 07:CBAB: 20 71 D4  JSR sub_D471
C - - - - - 0x01CBBE 07:CBAE: B0 0A     BCS bra_CBBA
C - - - - - 0x01CBC0 07:CBB0: A9 02     LDA #$02
C - - - - - 0x01CBC2 07:CBB2: CD 30 04  CMP ram_0430_obj
C - - - - - 0x01CBC5 07:CBB5: F0 15     BEQ bra_CBCC_RTS
C - - - - - 0x01CBC7 07:CBB7: 20 45 FC  JSR sub_FC45
bra_CBBA:
sub_CBBA:
loc_CBBA:
C D 2 - - - 0x01CBCA 07:CBBA: A9 10     LDA #$10
C - - - - - 0x01CBCC 07:CBBC: 85 36     STA ram_0036
C - - - - - 0x01CBCE 07:CBBE: A9 00     LDA #$00
C - - - - - 0x01CBD0 07:CBC0: 8D 80 03  STA ram_spd_X_lo
C - - - - - 0x01CBD3 07:CBC3: 8D 90 03  STA ram_spd_X_hi
C - - - - - 0x01CBD6 07:CBC6: 8D A0 03  STA ram_spd_Y_lo
C - - - - - 0x01CBD9 07:CBC9: 8D B0 03  STA ram_spd_Y_hi
bra_CBCC_RTS:
C - - - - - 0x01CBDC 07:CBCC: 60        RTS
bra_CBCD:
C - - - - - 0x01CBDD 07:CBCD: 20 71 D4  JSR sub_D471
C - - - - - 0x01CBE0 07:CBD0: B0 37     BCS bra_CC09
C - - - - - 0x01CBE2 07:CBD2: A5 31     LDA ram_0031
C - - - - - 0x01CBE4 07:CBD4: 29 08     AND #$08
C - - - - - 0x01CBE6 07:CBD6: D0 04     BNE bra_CBDC
C - - - - - 0x01CBE8 07:CBD8: A9 02     LDA #$02
C - - - - - 0x01CBEA 07:CBDA: D0 02     BNE bra_CBDE   ; jmp
bra_CBDC:
C - - - - - 0x01CBEC 07:CBDC: A9 15     LDA #$15
bra_CBDE:
C - - - - - 0x01CBEE 07:CBDE: CD 30 04  CMP ram_0430_obj
C - - - - - 0x01CBF1 07:CBE1: F0 26     BEQ bra_CC09
C - - - - - 0x01CBF3 07:CBE3: 20 45 FC  JSR sub_FC45
C - - - - - 0x01CBF6 07:CBE6: 4C 09 CC  JMP loc_CC09
bra_CBE9:
C - - - - - 0x01CBF9 07:CBE9: 20 71 D4  JSR sub_D471
C - - - - - 0x01CBFC 07:CBEC: B0 1B     BCS bra_CC09
C - - - - - 0x01CBFE 07:CBEE: A5 3A     LDA ram_003A
C - - - - - 0x01CC00 07:CBF0: F0 0D     BEQ bra_CBFF
C - - - - - 0x01CC02 07:CBF2: A9 0A     LDA #$0A
C - - - - - 0x01CC04 07:CBF4: CD 30 04  CMP ram_0430_obj
C - - - - - 0x01CC07 07:CBF7: F0 10     BEQ bra_CC09
C - - - - - 0x01CC09 07:CBF9: 20 45 FC  JSR sub_FC45
C - - - - - 0x01CC0C 07:CBFC: 4C 09 CC  JMP loc_CC09
bra_CBFF:
C - - - - - 0x01CC0F 07:CBFF: A9 01     LDA #$01
C - - - - - 0x01CC11 07:CC01: CD 30 04  CMP ram_0430_obj
C - - - - - 0x01CC14 07:CC04: F0 03     BEQ bra_CC09
C - - - - - 0x01CC16 07:CC06: 20 45 FC  JSR sub_FC45
bra_CC09:
loc_CC09:
C D 2 - - - 0x01CC19 07:CC09: A5 31     LDA ram_0031
C - - - - - 0x01CC1B 07:CC0B: 29 0C     AND #$0C
C - - - - - 0x01CC1D 07:CC0D: F0 28     BEQ bra_CC37
C - - - - - 0x01CC1F 07:CC0F: 29 04     AND #$04
C - - - - - 0x01CC21 07:CC11: D0 1F     BNE bra_CC32
C - - - - - 0x01CC23 07:CC13: A0 03     LDY #$03
C - - - - - 0x01CC25 07:CC15: 20 33 F7  JSR sub_F733
C - - - - - 0x01CC28 07:CC18: A5 10     LDA ram_0010
C - - - - - 0x01CC2A 07:CC1A: 29 10     AND #$10
C - - - - - 0x01CC2C 07:CC1C: D0 19     BNE bra_CC37
C - - - - - 0x01CC2E 07:CC1E: A0 02     LDY #$02
C - - - - - 0x01CC30 07:CC20: 20 DF E3  JSR sub_E3DF
C - - - - - 0x01CC33 07:CC23: A5 43     LDA ram_0043
C - - - - - 0x01CC35 07:CC25: D0 10     BNE bra_CC37
C - - - - - 0x01CC37 07:CC27: AD 60 03  LDA ram_pos_Y_lo
C - - - - - 0x01CC3A 07:CC2A: 85 11     STA ram_0011
C - - - - - 0x01CC3C 07:CC2C: 20 CD E6  JSR sub_E6CD
C - - - - - 0x01CC3F 07:CC2F: 4C 37 CC  JMP loc_CC37
bra_CC32:
C - - - - - 0x01CC42 07:CC32: A0 02     LDY #$02
C - - - - - 0x01CC44 07:CC34: 20 B1 F7  JSR sub_F7B1
bra_CC37:
loc_CC37:
C D 2 - - - 0x01CC47 07:CC37: 20 A9 D5  JSR sub_D5A9
C - - - - - 0x01CC4A 07:CC3A: 90 14     BCC bra_CC50_RTS
C - - - - - 0x01CC4C 07:CC3C: A5 31     LDA ram_0031
C - - - - - 0x01CC4E 07:CC3E: 29 03     AND #$03
C - - - - - 0x01CC50 07:CC40: F0 0E     BEQ bra_CC50_RTS
C - - - - - 0x01CC52 07:CC42: 29 01     AND #$01
C - - - - - 0x01CC54 07:CC44: F0 05     BEQ bra_CC4B
C - - - - - 0x01CC56 07:CC46: A0 04     LDY #$04
C - - - - - 0x01CC58 07:CC48: 4C 00 F6  JMP loc_F600
bra_CC4B:
C - - - - - 0x01CC5B 07:CC4B: A0 05     LDY #$05
C - - - - - 0x01CC5D 07:CC4D: 4C 75 F6  JMP loc_F675
bra_CC50_RTS:
C - - - - - 0x01CC60 07:CC50: 60        RTS


; bzk garbage
- - - - - - 0x01CC61 07:CC51: 27        .byte $27   ; 
- - - - - - 0x01CC62 07:CC52: 4E        .byte $4E   ; 
- - - - - - 0x01CC63 07:CC53: 01        .byte $01   ; 
- - - - - - 0x01CC64 07:CC54: 02        .byte $02   ; 
- - - - - - 0x01CC65 07:CC55: 9E        .byte $9E   ; 
- - - - - - 0x01CC66 07:CC56: 87        .byte $87   ; 
- - - - - - 0x01CC67 07:CC57: 04        .byte $04   ; 
- - - - - - 0x01CC68 07:CC58: 06        .byte $06   ; 
- - - - - - 0x01CC69 07:CC59: 04        .byte $04   ; 
- - - - - - 0x01CC6A 07:CC5A: 0C        .byte $0C   ; 
- - - - - - 0x01CC6B 07:CC5B: 03        .byte $03   ; 
- - - - - - 0x01CC6C 07:CC5C: 06        .byte $06   ; 



tbl_CC5D_spd_X_lo:
- - - - - - 0x01CC6D 07:CC5D: 00        .byte < $0000   ; 
- D 2 - - - 0x01CC6E 07:CC5E: 33        .byte < $0133   ; 
- D 2 - - - 0x01CC6F 07:CC5F: 33        .byte < $0133   ; 
- - - - - - 0x01CC70 07:CC60: 00        .byte < $0000   ; 
- - - - - - 0x01CC71 07:CC61: 00        .byte < $0000   ; 
- D 2 - - - 0x01CC72 07:CC62: D9        .byte < $00D9   ; 
- D 2 - - - 0x01CC73 07:CC63: D9        .byte < $00D9   ; 
- - - - - - 0x01CC74 07:CC64: 00        .byte < $0000   ; 
- - - - - - 0x01CC75 07:CC65: 00        .byte < $0000   ; 
- D 2 - - - 0x01CC76 07:CC66: D9        .byte < $00D9   ; 
- D 2 - - - 0x01CC77 07:CC67: D9        .byte < $00D9   ; 
- - - - - - 0x01CC78 07:CC68: 00        .byte < $0000   ; 
- - - - - - 0x01CC79 07:CC69: 00        .byte < $0000   ; 
- - - - - - 0x01CC7A 07:CC6A: 00        .byte < $0000   ; 
- - - - - - 0x01CC7B 07:CC6B: 00        .byte < $0000   ; 
- - - - - - 0x01CC7C 07:CC6C: 00        .byte < $0000   ; 
- - - - - - 0x01CC7D 07:CC6D: 00        .byte < $0000   ; 
- D 2 - - - 0x01CC7E 07:CC6E: 00        .byte < $0200   ; 
- D 2 - - - 0x01CC7F 07:CC6F: 00        .byte < $0200   ; 
- - - - - - 0x01CC80 07:CC70: 00        .byte < $0000   ; 
- - - - - - 0x01CC81 07:CC71: 00        .byte < $0000   ; 
- D 2 - - - 0x01CC82 07:CC72: 6A        .byte < $016A   ; 
- D 2 - - - 0x01CC83 07:CC73: 6A        .byte < $016A   ; 
- - - - - - 0x01CC84 07:CC74: 00        .byte < $0000   ; 
- - - - - - 0x01CC85 07:CC75: 00        .byte < $0000   ; 
- D 2 - - - 0x01CC86 07:CC76: 6A        .byte < $016A   ; 
- D 2 - - - 0x01CC87 07:CC77: 6A        .byte < $016A   ; 
- - - - - - 0x01CC88 07:CC78: 00        .byte < $0000   ; 
- - - - - - 0x01CC89 07:CC79: 00        .byte < $0000   ; 
- - - - - - 0x01CC8A 07:CC7A: 00        .byte < $0000   ; 
- - - - - - 0x01CC8B 07:CC7B: 00        .byte < $0000   ; 
- - - - - - 0x01CC8C 07:CC7C: 00        .byte < $0000   ; 



tbl_CC7D_spd_X_hi:
- - - - - - 0x01CC8D 07:CC7D: 00        .byte > $0000   ; 
- D 2 - - - 0x01CC8E 07:CC7E: 01        .byte > $0133   ; 
- D 2 - - - 0x01CC8F 07:CC7F: 01        .byte > $0133   ; 
- - - - - - 0x01CC90 07:CC80: 00        .byte > $0000   ; 
- - - - - - 0x01CC91 07:CC81: 00        .byte > $0000   ; 
- D 2 - - - 0x01CC92 07:CC82: 00        .byte > $00D9   ; 
- D 2 - - - 0x01CC93 07:CC83: 00        .byte > $00D9   ; 
- - - - - - 0x01CC94 07:CC84: 00        .byte > $0000   ; 
- - - - - - 0x01CC95 07:CC85: 00        .byte > $0000   ; 
- D 2 - - - 0x01CC96 07:CC86: 00        .byte > $00D9   ; 
- D 2 - - - 0x01CC97 07:CC87: 00        .byte > $00D9   ; 
- - - - - - 0x01CC98 07:CC88: 00        .byte > $0000   ; 
- - - - - - 0x01CC99 07:CC89: 00        .byte > $0000   ; 
- - - - - - 0x01CC9A 07:CC8A: 00        .byte > $0000   ; 
- - - - - - 0x01CC9B 07:CC8B: 00        .byte > $0000   ; 
- - - - - - 0x01CC9C 07:CC8C: 00        .byte > $0000   ; 
- - - - - - 0x01CC9D 07:CC8D: 00        .byte > $0000   ; 
- D 2 - - - 0x01CC9E 07:CC8E: 02        .byte > $0200   ; 
- D 2 - - - 0x01CC9F 07:CC8F: 02        .byte > $0200   ; 
- - - - - - 0x01CCA0 07:CC90: 00        .byte > $0000   ; 
- - - - - - 0x01CCA1 07:CC91: 00        .byte > $0000   ; 
- D 2 - - - 0x01CCA2 07:CC92: 01        .byte > $016A   ; 
- D 2 - - - 0x01CCA3 07:CC93: 01        .byte > $016A   ; 
- - - - - - 0x01CCA4 07:CC94: 00        .byte > $0000   ; 
- - - - - - 0x01CCA5 07:CC95: 00        .byte > $0000   ; 
- D 2 - - - 0x01CCA6 07:CC96: 01        .byte > $016A   ; 
- D 2 - - - 0x01CCA7 07:CC97: 01        .byte > $016A   ; 
- - - - - - 0x01CCA8 07:CC98: 00        .byte > $0000   ; 
- - - - - - 0x01CCA9 07:CC99: 00        .byte > $0000   ; 
- - - - - - 0x01CCAA 07:CC9A: 00        .byte > $0000   ; 
- - - - - - 0x01CCAB 07:CC9B: 00        .byte > $0000   ; 
- - - - - - 0x01CCAC 07:CC9C: 00        .byte > $0000   ; 



tbl_CC9D_spd_Y_lo:
- - - - - - 0x01CCAD 07:CC9D: 00        .byte < $0000   ; 
- - - - - - 0x01CCAE 07:CC9E: 00        .byte < $0000   ; 
- - - - - - 0x01CCAF 07:CC9F: 00        .byte < $0000   ; 
- - - - - - 0x01CCB0 07:CCA0: 00        .byte < $0000   ; 
- D 2 - - - 0x01CCB1 07:CCA1: 33        .byte < $0133   ; 
- D 2 - - - 0x01CCB2 07:CCA2: D9        .byte < $00D9   ; 
- D 2 - - - 0x01CCB3 07:CCA3: D9        .byte < $00D9   ; 
- - - - - - 0x01CCB4 07:CCA4: 00        .byte < $0000   ; 
- D 2 - - - 0x01CCB5 07:CCA5: 33        .byte < $0133   ; 
- D 2 - - - 0x01CCB6 07:CCA6: D9        .byte < $00D9   ; 
- D 2 - - - 0x01CCB7 07:CCA7: D9        .byte < $00D9   ; 
- - - - - - 0x01CCB8 07:CCA8: 00        .byte < $0000   ; 
- - - - - - 0x01CCB9 07:CCA9: 00        .byte < $0000   ; 
- - - - - - 0x01CCBA 07:CCAA: 00        .byte < $0000   ; 
- - - - - - 0x01CCBB 07:CCAB: 00        .byte < $0000   ; 
- - - - - - 0x01CCBC 07:CCAC: 00        .byte < $0000   ; 
- - - - - - 0x01CCBD 07:CCAD: 00        .byte < $0000   ; 
- - - - - - 0x01CCBE 07:CCAE: 00        .byte < $0000   ; 
- - - - - - 0x01CCBF 07:CCAF: 00        .byte < $0000   ; 
- - - - - - 0x01CCC0 07:CCB0: 00        .byte < $0000   ; 
- D 2 - - - 0x01CCC1 07:CCB1: 00        .byte < $0200   ; 
- D 2 - - - 0x01CCC2 07:CCB2: 6A        .byte < $016A   ; 
- D 2 - - - 0x01CCC3 07:CCB3: 6A        .byte < $016A   ; 
- - - - - - 0x01CCC4 07:CCB4: 00        .byte < $0000   ; 
- D 2 - - - 0x01CCC5 07:CCB5: 00        .byte < $0200   ; 
- D 2 - - - 0x01CCC6 07:CCB6: 6A        .byte < $016A   ; 
- D 2 - - - 0x01CCC7 07:CCB7: 6A        .byte < $016A   ; 
- - - - - - 0x01CCC8 07:CCB8: 00        .byte < $0000   ; 
- - - - - - 0x01CCC9 07:CCB9: 00        .byte < $0000   ; 
- - - - - - 0x01CCCA 07:CCBA: 00        .byte < $0000   ; 
- - - - - - 0x01CCCB 07:CCBB: 00        .byte < $0000   ; 
- - - - - - 0x01CCCC 07:CCBC: 00        .byte < $0000   ; 



tbl_CCBD_spd_Y_hi:
- - - - - - 0x01CCCD 07:CCBD: 00        .byte > $0000   ; 
- - - - - - 0x01CCCE 07:CCBE: 00        .byte > $0000   ; 
- - - - - - 0x01CCCF 07:CCBF: 00        .byte > $0000   ; 
- - - - - - 0x01CCD0 07:CCC0: 00        .byte > $0000   ; 
- D 2 - - - 0x01CCD1 07:CCC1: 01        .byte > $0133   ; 
- D 2 - - - 0x01CCD2 07:CCC2: 00        .byte > $00D9   ; 
- D 2 - - - 0x01CCD3 07:CCC3: 00        .byte > $00D9   ; 
- - - - - - 0x01CCD4 07:CCC4: 00        .byte > $0000   ; 
- D 2 - - - 0x01CCD5 07:CCC5: 01        .byte > $0133   ; 
- D 2 - - - 0x01CCD6 07:CCC6: 00        .byte > $00D9   ; 
- D 2 - - - 0x01CCD7 07:CCC7: 00        .byte > $00D9   ; 
- - - - - - 0x01CCD8 07:CCC8: 00        .byte > $0000   ; 
- - - - - - 0x01CCD9 07:CCC9: 00        .byte > $0000   ; 
- - - - - - 0x01CCDA 07:CCCA: 00        .byte > $0000   ; 
- - - - - - 0x01CCDB 07:CCCB: 00        .byte > $0000   ; 
- - - - - - 0x01CCDC 07:CCCC: 00        .byte > $0000   ; 
- - - - - - 0x01CCDD 07:CCCD: 00        .byte > $0000   ; 
- - - - - - 0x01CCDE 07:CCCE: 00        .byte > $0000   ; 
- - - - - - 0x01CCDF 07:CCCF: 00        .byte > $0000   ; 
- - - - - - 0x01CCE0 07:CCD0: 00        .byte > $0000   ; 
- D 2 - - - 0x01CCE1 07:CCD1: 02        .byte > $0200   ; 
- D 2 - - - 0x01CCE2 07:CCD2: 01        .byte > $016A   ; 
- D 2 - - - 0x01CCE3 07:CCD3: 01        .byte > $016A   ; 
- - - - - - 0x01CCE4 07:CCD4: 00        .byte > $0000   ; 
- D 2 - - - 0x01CCE5 07:CCD5: 02        .byte > $0200   ; 
- D 2 - - - 0x01CCE6 07:CCD6: 01        .byte > $016A   ; 
- D 2 - - - 0x01CCE7 07:CCD7: 01        .byte > $016A   ; 
- - - - - - 0x01CCE8 07:CCD8: 00        .byte > $0000   ; 
- - - - - - 0x01CCE9 07:CCD9: 00        .byte > $0000   ; 
- - - - - - 0x01CCEA 07:CCDA: 00        .byte > $0000   ; 
- - - - - - 0x01CCEB 07:CCDB: 00        .byte > $0000   ; 
- - - - - - 0x01CCEC 07:CCDC: 00        .byte > $0000   ; 



ofs_004_CCDD_01_turning:
; turning around
C - - J - - 0x01CCED 07:CCDD: AD 18 04  LDA ram_animation_cnt
C - - - - - 0x01CCF0 07:CCE0: C9 02     CMP #$02
C - - - - - 0x01CCF2 07:CCE2: F0 03     BEQ bra_CCE7
C - - - - - 0x01CCF4 07:CCE4: 4C 82 CD  JMP loc_CD82
bra_CCE7:
C - - - - - 0x01CCF7 07:CCE7: A5 14     LDA ram_btn_press
C - - - - - 0x01CCF9 07:CCE9: 29 80     AND #con_btn_A
C - - - - - 0x01CCFB 07:CCEB: F0 46     BEQ bra_CD33
C - - - - - 0x01CCFD 07:CCED: AD 00 04  LDA ram_0400_obj
C - - - - - 0x01CD00 07:CCF0: 48        PHA
C - - - - - 0x01CD01 07:CCF1: AD 30 04  LDA ram_0430_obj
C - - - - - 0x01CD04 07:CCF4: C9 03     CMP #$03
C - - - - - 0x01CD06 07:CCF6: D0 08     BNE bra_CD00
C - - - - - 0x01CD08 07:CCF8: AD 00 04  LDA ram_0400_obj
C - - - - - 0x01CD0B 07:CCFB: 49 40     EOR #$40
C - - - - - 0x01CD0D 07:CCFD: 8D 00 04  STA ram_0400_obj
bra_CD00:
C - - - - - 0x01CD10 07:CD00: 20 20 CF  JSR sub_CF20
C - - - - - 0x01CD13 07:CD03: 85 00     STA ram_0000
C - - - - - 0x01CD15 07:CD05: 68        PLA
C - - - - - 0x01CD16 07:CD06: 8D 00 04  STA ram_0400_obj
C - - - - - 0x01CD19 07:CD09: A5 00     LDA ram_0000
C - - - - - 0x01CD1B 07:CD0B: F0 26     BEQ bra_CD33
C - - - - - 0x01CD1D 07:CD0D: AD 30 04  LDA ram_0430_obj
C - - - - - 0x01CD20 07:CD10: C9 03     CMP #$03
C - - - - - 0x01CD22 07:CD12: D0 08     BNE bra_CD1C
C - - - - - 0x01CD24 07:CD14: AD 00 04  LDA ram_0400_obj
C - - - - - 0x01CD27 07:CD17: 49 40     EOR #$40
C - - - - - 0x01CD29 07:CD19: 8D 00 04  STA ram_0400_obj
bra_CD1C:
C - - - - - 0x01CD2C 07:CD1C: A9 12     LDA #con_sfx_shoot
C - - - - - 0x01CD2E 07:CD1E: 20 A0 FC  JSR sub_FCA0_play_sfx
C - - - - - 0x01CD31 07:CD21: A9 1E     LDA #$1E
C - - - - - 0x01CD33 07:CD23: 85 3B     STA ram_003B
C - - - - - 0x01CD35 07:CD25: A9 09     LDA #$09
C - - - - - 0x01CD37 07:CD27: 20 45 FC  JSR sub_FC45
C - - - - - 0x01CD3A 07:CD2A: A9 03     LDA #con_ariel_attacking
C - - - - - 0x01CD3C 07:CD2C: 85 30     STA ram_ariel_status
C - - - - - 0x01CD3E 07:CD2E: A9 00     LDA #$00
C - - - - - 0x01CD40 07:CD30: 85 3A     STA ram_003A
C - - - - - 0x01CD42 07:CD32: 60        RTS
bra_CD33:
C - - - - - 0x01CD43 07:CD33: AD 30 04  LDA ram_0430_obj
C - - - - - 0x01CD46 07:CD36: C9 03     CMP #$03
C - - - - - 0x01CD48 07:CD38: D0 0A     BNE bra_CD44
C - - - - - 0x01CD4A 07:CD3A: A9 06     LDA #$06
C - - - - - 0x01CD4C 07:CD3C: CD 48 04  CMP ram_0448
C - - - - - 0x01CD4F 07:CD3F: 90 03     BCC bra_CD44
C - - - - - 0x01CD51 07:CD41: 8D 48 04  STA ram_0448
bra_CD44:
C - - - - - 0x01CD54 07:CD44: AD 48 04  LDA ram_0448
C - - - - - 0x01CD57 07:CD47: C9 0A     CMP #$0A
C - - - - - 0x01CD59 07:CD49: D0 37     BNE bra_CD82
C - - - - - 0x01CD5B 07:CD4B: AD 30 04  LDA ram_0430_obj
C - - - - - 0x01CD5E 07:CD4E: C9 03     CMP #$03
C - - - - - 0x01CD60 07:CD50: D0 08     BNE bra_CD5A
C - - - - - 0x01CD62 07:CD52: AD 00 04  LDA ram_0400_obj
C - - - - - 0x01CD65 07:CD55: 49 40     EOR #$40
C - - - - - 0x01CD67 07:CD57: 8D 00 04  STA ram_0400_obj
bra_CD5A:
C - - - - - 0x01CD6A 07:CD5A: A9 01     LDA #$01
C - - - - - 0x01CD6C 07:CD5C: 20 45 FC  JSR sub_FC45
C - - - - - 0x01CD6F 07:CD5F: A9 00     LDA #$00    ; con_ariel_default
C - - - - - 0x01CD71 07:CD61: 85 30     STA ram_ariel_status
C - - - - - 0x01CD73 07:CD63: 8D A0 03  STA ram_spd_Y_lo
C - - - - - 0x01CD76 07:CD66: 8D B0 03  STA ram_spd_Y_hi
C - - - - - 0x01CD79 07:CD69: A5 16     LDA ram_btn_hold
C - - - - - 0x01CD7B 07:CD6B: 29 03     AND #con_btns_LR
C - - - - - 0x01CD7D 07:CD6D: 85 00     STA ram_0000
C - - - - - 0x01CD7F 07:CD6F: A5 31     LDA ram_0031
C - - - - - 0x01CD81 07:CD71: 29 03     AND #$03
C - - - - - 0x01CD83 07:CD73: F0 04     BEQ bra_CD79
C - - - - - 0x01CD85 07:CD75: C5 00     CMP ram_0000
C - - - - - 0x01CD87 07:CD77: F0 08     BEQ bra_CD81_RTS
bra_CD79:
C - - - - - 0x01CD89 07:CD79: A9 00     LDA #$00
C - - - - - 0x01CD8B 07:CD7B: 8D 80 03  STA ram_spd_X_lo
C - - - - - 0x01CD8E 07:CD7E: 8D 90 03  STA ram_spd_X_hi
bra_CD81_RTS:
C - - - - - 0x01CD91 07:CD81: 60        RTS
bra_CD82:
loc_CD82:
C D 2 - - - 0x01CD92 07:CD82: A5 16     LDA ram_btn_hold
C - - - - - 0x01CD94 07:CD84: 29 03     AND #con_btns_LR
C - - - - - 0x01CD96 07:CD86: F0 2A     BEQ bra_CDB2
C - - - - - 0x01CD98 07:CD88: 85 00     STA ram_0000
C - - - - - 0x01CD9A 07:CD8A: A5 31     LDA ram_0031
C - - - - - 0x01CD9C 07:CD8C: 29 03     AND #$03
C - - - - - 0x01CD9E 07:CD8E: C5 00     CMP ram_0000
C - - - - - 0x01CDA0 07:CD90: F0 20     BEQ bra_CDB2
C - - - - - 0x01CDA2 07:CD92: A9 03     LDA #$03
C - - - - - 0x01CDA4 07:CD94: CD 30 04  CMP ram_0430_obj
C - - - - - 0x01CDA7 07:CD97: D0 02     BNE bra_CD9B
C - - - - - 0x01CDA9 07:CD99: A9 84     LDA #$84
bra_CD9B:
C - - - - - 0x01CDAB 07:CD9B: 8D 30 04  STA ram_0430_obj
C - - - - - 0x01CDAE 07:CD9E: AD 18 04  LDA ram_animation_cnt
C - - - - - 0x01CDB1 07:CDA1: C9 01     CMP #$01
C - - - - - 0x01CDB3 07:CDA3: F0 05     BEQ bra_CDAA
C - - - - - 0x01CDB5 07:CDA5: 49 02     EOR #$02
C - - - - - 0x01CDB7 07:CDA7: 8D 18 04  STA ram_animation_cnt
bra_CDAA:
C - - - - - 0x01CDBA 07:CDAA: A5 31     LDA ram_0031
C - - - - - 0x01CDBC 07:CDAC: 29 0C     AND #$0C
C - - - - - 0x01CDBE 07:CDAE: 05 00     ORA ram_0000
C - - - - - 0x01CDC0 07:CDB0: 85 31     STA ram_0031
bra_CDB2:
C - - - - - 0x01CDC2 07:CDB2: A5 3C     LDA ram_003C
C - - - - - 0x01CDC4 07:CDB4: D0 24     BNE bra_CDDA
C - - - - - 0x01CDC6 07:CDB6: 20 CA D3  JSR sub_D3CA
C - - - - - 0x01CDC9 07:CDB9: 20 E2 D3  JSR sub_D3E2_change_spd_X
C - - - - - 0x01CDCC 07:CDBC: B0 0A     BCS bra_CDC8
C - - - - - 0x01CDCE 07:CDBE: E6 3C     INC ram_003C
C - - - - - 0x01CDD0 07:CDC0: A9 00     LDA #$00
C - - - - - 0x01CDD2 07:CDC2: 8D 80 03  STA ram_spd_X_lo
C - - - - - 0x01CDD5 07:CDC5: 8D 90 03  STA ram_spd_X_hi
bra_CDC8:
C - - - - - 0x01CDD8 07:CDC8: AD 00 04  LDA ram_0400_obj
C - - - - - 0x01CDDB 07:CDCB: 48        PHA
C - - - - - 0x01CDDC 07:CDCC: A5 31     LDA ram_0031
C - - - - - 0x01CDDE 07:CDCE: 49 03     EOR #$03
C - - - - - 0x01CDE0 07:CDD0: 20 FF CE  JSR sub_CEFF
C - - - - - 0x01CDE3 07:CDD3: 68        PLA
C - - - - - 0x01CDE4 07:CDD4: 8D 00 04  STA ram_0400_obj
C - - - - - 0x01CDE7 07:CDD7: 4C FD CD  JMP loc_CDFD
bra_CDDA:
C - - - - - 0x01CDEA 07:CDDA: A5 16     LDA ram_btn_hold
C - - - - - 0x01CDEC 07:CDDC: 29 03     AND #con_btns_LR
C - - - - - 0x01CDEE 07:CDDE: 85 00     STA ram_0000
C - - - - - 0x01CDF0 07:CDE0: A5 31     LDA ram_0031
C - - - - - 0x01CDF2 07:CDE2: 29 03     AND #$03
C - - - - - 0x01CDF4 07:CDE4: C5 00     CMP ram_0000
C - - - - - 0x01CDF6 07:CDE6: D0 15     BNE bra_CDFD
C - - - - - 0x01CDF8 07:CDE8: 20 1A D4  JSR sub_D41A
C - - - - - 0x01CDFB 07:CDEB: 20 2C D4  JSR sub_D42C
C - - - - - 0x01CDFE 07:CDEE: AD 00 04  LDA ram_0400_obj
C - - - - - 0x01CE01 07:CDF1: 48        PHA
C - - - - - 0x01CE02 07:CDF2: A5 31     LDA ram_0031
C - - - - - 0x01CE04 07:CDF4: 29 03     AND #$03
C - - - - - 0x01CE06 07:CDF6: 20 FF CE  JSR sub_CEFF
C - - - - - 0x01CE09 07:CDF9: 68        PLA
C - - - - - 0x01CE0A 07:CDFA: 8D 00 04  STA ram_0400_obj
bra_CDFD:
loc_CDFD:
C D 2 - - - 0x01CE0D 07:CDFD: A9 00     LDA #$00
C - - - - - 0x01CE0F 07:CDFF: 8D A0 03  STA ram_spd_Y_lo
C - - - - - 0x01CE12 07:CE02: A9 01     LDA #$01
C - - - - - 0x01CE14 07:CE04: 8D B0 03  STA ram_spd_Y_hi
C - - - - - 0x01CE17 07:CE07: A5 16     LDA ram_btn_hold
C - - - - - 0x01CE19 07:CE09: 29 0C     AND #con_btns_UD
C - - - - - 0x01CE1B 07:CE0B: F0 30     BEQ bra_CE3D_RTS
C - - - - - 0x01CE1D 07:CE0D: 85 00     STA ram_0000
C - - - - - 0x01CE1F 07:CE0F: A5 31     LDA ram_0031
C - - - - - 0x01CE21 07:CE11: 29 03     AND #$03
C - - - - - 0x01CE23 07:CE13: 05 00     ORA ram_0000
C - - - - - 0x01CE25 07:CE15: 29 04     AND #$04
C - - - - - 0x01CE27 07:CE17: D0 1F     BNE bra_CE38
C - - - - - 0x01CE29 07:CE19: A0 03     LDY #$03
C - - - - - 0x01CE2B 07:CE1B: 20 33 F7  JSR sub_F733
C - - - - - 0x01CE2E 07:CE1E: A5 10     LDA ram_0010
C - - - - - 0x01CE30 07:CE20: 29 10     AND #$10
C - - - - - 0x01CE32 07:CE22: D0 19     BNE bra_CE3D_RTS
C - - - - - 0x01CE34 07:CE24: A0 02     LDY #$02
C - - - - - 0x01CE36 07:CE26: 20 DF E3  JSR sub_E3DF
C - - - - - 0x01CE39 07:CE29: A5 43     LDA ram_0043
C - - - - - 0x01CE3B 07:CE2B: D0 10     BNE bra_CE3D_RTS
C - - - - - 0x01CE3D 07:CE2D: AD 60 03  LDA ram_pos_Y_lo
C - - - - - 0x01CE40 07:CE30: 85 11     STA ram_0011
C - - - - - 0x01CE42 07:CE32: 20 CD E6  JSR sub_E6CD
C - - - - - 0x01CE45 07:CE35: 4C 3D CE  JMP loc_CE3D_RTS
bra_CE38:
C - - - - - 0x01CE48 07:CE38: A0 02     LDY #$02
C - - - - - 0x01CE4A 07:CE3A: 20 B1 F7  JSR sub_F7B1
bra_CE3D_RTS:
loc_CE3D_RTS:
C D 2 - - - 0x01CE4D 07:CE3D: 60        RTS



ofs_004_CE3E_02_jumping_out_of_water:
; jumping out of water
C - - J - - 0x01CE4E 07:CE3E: AD 30 04  LDA ram_0430_obj
C - - - - - 0x01CE51 07:CE41: 29 03     AND #$03
C - - - - - 0x01CE53 07:CE43: D0 10     BNE bra_CE55
C - - - - - 0x01CE55 07:CE45: AD 18 04  LDA ram_animation_cnt
C - - - - - 0x01CE58 07:CE48: F0 F3     BEQ bra_CE3D_RTS
C - - - - - 0x01CE5A 07:CE4A: EE 30 04  INC ram_0430_obj
C - - - - - 0x01CE5D 07:CE4D: A9 00     LDA #$00
C - - - - - 0x01CE5F 07:CE4F: 8D 48 04  STA ram_0448
C - - - - - 0x01CE62 07:CE52: 8D 18 04  STA ram_animation_cnt
bra_CE55:
C - - - - - 0x01CE65 07:CE55: AD B0 03  LDA ram_spd_Y_hi
C - - - - - 0x01CE68 07:CE58: 30 2B     BMI bra_CE85
C - - - - - 0x01CE6A 07:CE5A: A5 39     LDA ram_0039
C - - - - - 0x01CE6C 07:CE5C: F0 04     BEQ bra_CE62
C - - - - - 0x01CE6E 07:CE5E: C6 39     DEC ram_0039
C - - - - - 0x01CE70 07:CE60: D0 0C     BNE bra_CE6E
bra_CE62:
C - - - - - 0x01CE72 07:CE62: A5 16     LDA ram_btn_hold
C - - - - - 0x01CE74 07:CE64: 29 80     AND #con_btn_A
C - - - - - 0x01CE76 07:CE66: D0 06     BNE bra_CE6E
C - - - - - 0x01CE78 07:CE68: 8D A0 03  STA ram_spd_Y_lo
C - - - - - 0x01CE7B 07:CE6B: 8D B0 03  STA ram_spd_Y_hi
bra_CE6E:
C - - - - - 0x01CE7E 07:CE6E: AD B0 03  LDA ram_spd_Y_hi
C - - - - - 0x01CE81 07:CE71: D0 29     BNE bra_CE9C
C - - - - - 0x01CE83 07:CE73: AD 30 04  LDA ram_0430_obj
C - - - - - 0x01CE86 07:CE76: 29 02     AND #$02
C - - - - - 0x01CE88 07:CE78: D0 22     BNE bra_CE9C
C - - - - - 0x01CE8A 07:CE7A: 8D 48 04  STA ram_0448
C - - - - - 0x01CE8D 07:CE7D: 8D 18 04  STA ram_animation_cnt
C - - - - - 0x01CE90 07:CE80: EE 30 04  INC ram_0430_obj
C - - - - - 0x01CE93 07:CE83: D0 17     BNE bra_CE9C
bra_CE85:
C - - - - - 0x01CE95 07:CE85: AD B0 03  LDA ram_spd_Y_hi
C - - - - - 0x01CE98 07:CE88: C9 FF     CMP #$FF
C - - - - - 0x01CE9A 07:CE8A: F0 10     BEQ bra_CE9C
C - - - - - 0x01CE9C 07:CE8C: AD 30 04  LDA ram_0430_obj
C - - - - - 0x01CE9F 07:CE8F: 29 01     AND #$01
C - - - - - 0x01CEA1 07:CE91: D0 09     BNE bra_CE9C
C - - - - - 0x01CEA3 07:CE93: 8D 48 04  STA ram_0448
C - - - - - 0x01CEA6 07:CE96: 8D 18 04  STA ram_animation_cnt
C - - - - - 0x01CEA9 07:CE99: EE 30 04  INC ram_0430_obj
bra_CE9C:
C - - - - - 0x01CEAC 07:CE9C: A0 02     LDY #$02
C - - - - - 0x01CEAE 07:CE9E: 20 2F F8  JSR sub_F82F
C - - - - - 0x01CEB1 07:CEA1: 90 47     BCC bra_CEEA
loc_CEA3:
C - - - - - 0x01CEB3 07:CEA3: A9 00     LDA #$00
C - - - - - 0x01CEB5 07:CEA5: 8D 80 03  STA ram_spd_X_lo
C - - - - - 0x01CEB8 07:CEA8: A9 01     LDA #$01
C - - - - - 0x01CEBA 07:CEAA: 8D 90 03  STA ram_spd_X_hi
C - - - - - 0x01CEBD 07:CEAD: A5 41     LDA ram_0041
C - - - - - 0x01CEBF 07:CEAF: C9 70     CMP #$70
C - - - - - 0x01CEC1 07:CEB1: F0 0F     BEQ bra_CEC2
C - - - - - 0x01CEC3 07:CEB3: A9 16     LDA #$16
C - - - - - 0x01CEC5 07:CEB5: 20 45 FC  JSR sub_FC45
C - - - - - 0x01CEC8 07:CEB8: A9 05     LDA #con_ariel_coming_to_surface
C - - - - - 0x01CECA 07:CEBA: 85 30     STA ram_ariel_status
C - - - - - 0x01CECC 07:CEBC: A9 17     LDA #con_sfx_17
C - - - - - 0x01CECE 07:CEBE: 20 A0 FC  JSR sub_FCA0_play_sfx
C - - - - - 0x01CED1 07:CEC1: 60        RTS
bra_CEC2:
C - - - - - 0x01CED2 07:CEC2: A9 33     LDA #$33
C - - - - - 0x01CED4 07:CEC4: 85 5D     STA ram_005D
C - - - - - 0x01CED6 07:CEC6: A9 02     LDA #$02
C - - - - - 0x01CED8 07:CEC8: 85 5E     STA ram_005E
C - - - - - 0x01CEDA 07:CECA: A9 30     LDA #$30
C - - - - - 0x01CEDC 07:CECC: 85 36     STA ram_0036
C - - - - - 0x01CEDE 07:CECE: A0 01     LDY #$01
C - - - - - 0x01CEE0 07:CED0: AD 00 04  LDA ram_0400_obj
C - - - - - 0x01CEE3 07:CED3: 29 40     AND #$40
C - - - - - 0x01CEE5 07:CED5: D0 02     BNE bra_CED9
C - - - - - 0x01CEE7 07:CED7: A0 02     LDY #$02
bra_CED9:
C - - - - - 0x01CEE9 07:CED9: 84 5C     STY ram_005C
C - - - - - 0x01CEEB 07:CEDB: A9 0B     LDA #$0B
C - - - - - 0x01CEED 07:CEDD: 20 45 FC  JSR sub_FC45
C - - - - - 0x01CEF0 07:CEE0: A9 04     LDA #con_ariel_coming_to_ice
C - - - - - 0x01CEF2 07:CEE2: 85 30     STA ram_ariel_status
C - - - - - 0x01CEF4 07:CEE4: A9 16     LDA #con_sfx_16
C - - - - - 0x01CEF6 07:CEE6: 20 A0 FC  JSR sub_FCA0_play_sfx
C - - - - - 0x01CEF9 07:CEE9: 60        RTS
bra_CEEA:
C - - - - - 0x01CEFA 07:CEEA: AD B0 03  LDA ram_spd_Y_hi
C - - - - - 0x01CEFD 07:CEED: 10 0E     BPL bra_CEFD
C - - - - - 0x01CEFF 07:CEEF: A0 02     LDY #$02
C - - - - - 0x01CF01 07:CEF1: 20 DF E3  JSR sub_E3DF
C - - - - - 0x01CF04 07:CEF4: A5 43     LDA ram_0043
C - - - - - 0x01CF06 07:CEF6: C9 40     CMP #$40
C - - - - - 0x01CF08 07:CEF8: D0 03     BNE bra_CEFD
C - - - - - 0x01CF0A 07:CEFA: 20 03 D2  JSR sub_D203
bra_CEFD:
C - - - - - 0x01CF0D 07:CEFD: A5 16     LDA ram_btn_hold
sub_CEFF:
C - - - - - 0x01CF0F 07:CEFF: 29 03     AND #con_btns_LR
C - - - - - 0x01CF11 07:CF01: F0 0E     BEQ bra_CF11_RTS
C - - - - - 0x01CF13 07:CF03: 29 01     AND #con_btn_Right
C - - - - - 0x01CF15 07:CF05: F0 05     BEQ bra_CF0C
C - - - - - 0x01CF17 07:CF07: A0 04     LDY #$04
C - - - - - 0x01CF19 07:CF09: 4C 00 F6  JMP loc_F600
bra_CF0C:
C - - - - - 0x01CF1C 07:CF0C: A0 05     LDY #$05
C - - - - - 0x01CF1E 07:CF0E: 4C 75 F6  JMP loc_F675
bra_CF11_RTS:
C - - - - - 0x01CF21 07:CF11: 60        RTS



ofs_004_CF12_03_attacking:
; shooting bubble/throwing object
C - - J - - 0x01CF22 07:CF12: A9 03     LDA #$03
C - - - - - 0x01CF24 07:CF14: CD 18 04  CMP ram_animation_cnt
C - - - - - 0x01CF27 07:CF17: D0 F8     BNE bra_CF11_RTS
C - - - - - 0x01CF29 07:CF19: A9 00     LDA #con_ariel_default
C - - - - - 0x01CF2B 07:CF1B: 85 30     STA ram_ariel_status
C - - - - - 0x01CF2D 07:CF1D: 4C BA CB  JMP loc_CBBA



sub_CF20:
C - - - - - 0x01CF30 07:CF20: A4 3A     LDY ram_003A
C - - - - - 0x01CF32 07:CF22: D0 03     BNE bra_CF27
C - - - - - 0x01CF34 07:CF24: 4C 89 CF  JMP loc_CF89
bra_CF27:
C - - - - - 0x01CF37 07:CF27: A9 00     LDA #$00
C - - - - - 0x01CF39 07:CF29: 85 3A     STA ram_003A
C - - - - - 0x01CF3B 07:CF2B: A5 16     LDA ram_btn_hold
C - - - - - 0x01CF3D 07:CF2D: 29 0B     AND #con_btns_LR + con_btn_Up
C - - - - - 0x01CF3F 07:CF2F: D0 11     BNE bra_CF42
C - - - - - 0x01CF41 07:CF31: A9 01     LDA #$01
C - - - - - 0x01CF43 07:CF33: 85 00     STA ram_0000
C - - - - - 0x01CF45 07:CF35: AD 00 04  LDA ram_0400_obj
C - - - - - 0x01CF48 07:CF38: 29 40     AND #$40
C - - - - - 0x01CF4A 07:CF3A: D0 04     BNE bra_CF40
C - - - - - 0x01CF4C 07:CF3C: A9 02     LDA #$02
C - - - - - 0x01CF4E 07:CF3E: 85 00     STA ram_0000
bra_CF40:
C - - - - - 0x01CF50 07:CF40: A5 00     LDA ram_0000
bra_CF42:
C - - - - - 0x01CF52 07:CF42: 99 D0 03  STA ram_direction,Y
C - - - - - 0x01CF55 07:CF45: A9 00     LDA #$00
C - - - - - 0x01CF57 07:CF47: 99 80 03  STA ram_spd_X_lo,Y
C - - - - - 0x01CF5A 07:CF4A: 99 A0 03  STA ram_spd_Y_lo,Y
C - - - - - 0x01CF5D 07:CF4D: A9 03     LDA #$03
C - - - - - 0x01CF5F 07:CF4F: 99 90 03  STA ram_spd_X_hi,Y
C - - - - - 0x01CF62 07:CF52: 99 B0 03  STA ram_spd_Y_hi,Y
C - - - - - 0x01CF65 07:CF55: A9 01     LDA #con_obj_id_projectile_player
C - - - - - 0x01CF67 07:CF57: 99 10 03  STA ram_obj_id,Y
C - - - - - 0x01CF6A 07:CF5A: AD 00 04  LDA ram_0400_obj
C - - - - - 0x01CF6D 07:CF5D: 29 40     AND #$40
C - - - - - 0x01CF6F 07:CF5F: F0 14     BEQ bra_CF75
C - - - - - 0x01CF71 07:CF61: AD 30 03  LDA ram_pos_X_lo
C - - - - - 0x01CF74 07:CF64: 18        CLC
C - - - - - 0x01CF75 07:CF65: 69 0C     ADC #< $000C
C - - - - - 0x01CF77 07:CF67: 99 30 03  STA ram_pos_X_lo,Y
C - - - - - 0x01CF7A 07:CF6A: AD 40 03  LDA ram_pos_X_hi
C - - - - - 0x01CF7D 07:CF6D: 69 00     ADC #> $000C
C - - - - - 0x01CF7F 07:CF6F: 99 40 03  STA ram_pos_X_hi,Y
C - - - - - 0x01CF82 07:CF72: A9 FF     LDA #$FF
C - - - - - 0x01CF84 07:CF74: 60        RTS
bra_CF75:
C - - - - - 0x01CF85 07:CF75: AD 30 03  LDA ram_pos_X_lo
C - - - - - 0x01CF88 07:CF78: 38        SEC
C - - - - - 0x01CF89 07:CF79: E9 0C     SBC #< $000C
C - - - - - 0x01CF8B 07:CF7B: 99 30 03  STA ram_pos_X_lo,Y
C - - - - - 0x01CF8E 07:CF7E: AD 40 03  LDA ram_pos_X_hi
C - - - - - 0x01CF91 07:CF81: E9 00     SBC #> $000C
C - - - - - 0x01CF93 07:CF83: 99 40 03  STA ram_pos_X_hi,Y
C - - - - - 0x01CF96 07:CF86: A9 FF     LDA #$FF
C - - - - - 0x01CF98 07:CF88: 60        RTS



loc_CF89:
C D 2 - - - 0x01CF99 07:CF89: A0 04     LDY #$04
C - - - - - 0x01CF9B 07:CF8B: 20 7F E2  JSR sub_E27F
C - - - - - 0x01CF9E 07:CF8E: A5 41     LDA ram_0041
C - - - - - 0x01CFA0 07:CF90: C9 90     CMP #$90
C - - - - - 0x01CFA2 07:CF92: D0 75     BNE bra_D009
C - - - - - 0x01CFA4 07:CF94: 20 83 D4  JSR sub_D483
C - - - - - 0x01CFA7 07:CF97: A0 00     LDY #$00
bra_CF99_loop:
C - - - - - 0x01CFA9 07:CF99: 20 44 FE  JSR sub_FE44
C - - - - - 0x01CFAC 07:CF9C: B0 66     BCS bra_D004
C - - - - - 0x01CFAE 07:CF9E: A9 14     LDA #$14
C - - - - - 0x01CFB0 07:CFA0: 20 45 FC  JSR sub_FC45
C - - - - - 0x01CFB3 07:CFA3: A9 80     LDA #$80
C - - - - - 0x01CFB5 07:CFA5: 9D 00 03  STA ram_obj_flags,X
C - - - - - 0x01CFB8 07:CFA8: A9 94     LDA #$94
C - - - - - 0x01CFBA 07:CFAA: 9D 00 04  STA ram_0400_obj,X
C - - - - - 0x01CFBD 07:CFAD: A9 00     LDA #$00
C - - - - - 0x01CFBF 07:CFAF: 9D C0 03  STA ram_03C0_obj,X
C - - - - - 0x01CFC2 07:CFB2: 9D A0 04  STA ram_04A0_obj,X
C - - - - - 0x01CFC5 07:CFB5: A9 04     LDA #con_obj_id_sand_splashes_player
C - - - - - 0x01CFC7 07:CFB7: 9D 10 03  STA ram_obj_id,X
C - - - - - 0x01CFCA 07:CFBA: B9 89 D0  LDA tbl_D089,Y
C - - - - - 0x01CFCD 07:CFBD: 9D 60 04  STA ram_0460_obj,X
C - - - - - 0x01CFD0 07:CFC0: AD 00 04  LDA ram_0400_obj
C - - - - - 0x01CFD3 07:CFC3: 29 40     AND #$40
C - - - - - 0x01CFD5 07:CFC5: F0 15     BEQ bra_CFDC
C - - - - - 0x01CFD7 07:CFC7: AD 30 03  LDA ram_pos_X_lo
C - - - - - 0x01CFDA 07:CFCA: 18        CLC
C - - - - - 0x01CFDB 07:CFCB: 79 8C D0  ADC tbl_D08C,Y
C - - - - - 0x01CFDE 07:CFCE: 9D 30 03  STA ram_pos_X_lo,X
C - - - - - 0x01CFE1 07:CFD1: AD 40 03  LDA ram_pos_X_hi
C - - - - - 0x01CFE4 07:CFD4: 69 00     ADC #$00
C - - - - - 0x01CFE6 07:CFD6: 9D 40 03  STA ram_pos_X_hi,X
C - - - - - 0x01CFE9 07:CFD9: 4C EE CF  JMP loc_CFEE
bra_CFDC:
C - - - - - 0x01CFEC 07:CFDC: AD 30 03  LDA ram_pos_X_lo
C - - - - - 0x01CFEF 07:CFDF: 38        SEC
C - - - - - 0x01CFF0 07:CFE0: F9 8C D0  SBC tbl_D08C,Y
C - - - - - 0x01CFF3 07:CFE3: 9D 30 03  STA ram_pos_X_lo,X
C - - - - - 0x01CFF6 07:CFE6: AD 40 03  LDA ram_pos_X_hi
C - - - - - 0x01CFF9 07:CFE9: E9 00     SBC #$00
C - - - - - 0x01CFFB 07:CFEB: 9D 40 03  STA ram_pos_X_hi,X
loc_CFEE:
C D 2 - - - 0x01CFFE 07:CFEE: A5 11     LDA ram_0011
C - - - - - 0x01D000 07:CFF0: 29 F0     AND #$F0
C - - - - - 0x01D002 07:CFF2: 38        SEC
C - - - - - 0x01D003 07:CFF3: F9 8F D0  SBC tbl_D08F,Y
C - - - - - 0x01D006 07:CFF6: 9D 60 03  STA ram_pos_Y_lo,X
C - - - - - 0x01D009 07:CFF9: AD 70 03  LDA ram_pos_Y_hi
C - - - - - 0x01D00C 07:CFFC: 9D 70 03  STA ram_pos_Y_hi,X
C - - - - - 0x01D00F 07:CFFF: C8        INY
C - - - - - 0x01D010 07:D000: C0 03     CPY #$03
C - - - - - 0x01D012 07:D002: D0 95     BNE bra_CF99_loop
bra_D004:
C - - - - - 0x01D014 07:D004: A2 00     LDX #$00
C - - - - - 0x01D016 07:D006: A9 FF     LDA #$FF
C - - - - - 0x01D018 07:D008: 60        RTS
bra_D009:
C - - - - - 0x01D019 07:D009: A0 02     LDY #$02
bra_D00B_loop:
C - - - - - 0x01D01B 07:D00B: B9 00 03  LDA ram_obj_flags,Y
C - - - - - 0x01D01E 07:D00E: 10 04     BPL bra_D014
C - - - - - 0x01D020 07:D010: 88        DEY
C - - - - - 0x01D021 07:D011: D0 F8     BNE bra_D00B_loop
C - - - - - 0x01D023 07:D013: 60        RTS
bra_D014:
C - - - - - 0x01D024 07:D014: 86 00     STX ram_0000
C - - - - - 0x01D026 07:D016: A6 3E     LDX ram_weapon_range
C - - - - - 0x01D028 07:D018: BD 96 D0  LDA tbl_D096,X
C - - - - - 0x01D02B 07:D01B: 99 60 04  STA ram_0460_obj,Y
C - - - - - 0x01D02E 07:D01E: A6 3D     LDX ram_weapon_power
C - - - - - 0x01D030 07:D020: BD 92 D0  LDA tbl_D092_power,X
C - - - - - 0x01D033 07:D023: 99 10 03  STA ram_obj_id,Y
C - - - - - 0x01D036 07:D026: BD 9A D0  LDA tbl_D09A,X
C - - - - - 0x01D039 07:D029: A6 00     LDX ram_0000
C - - - - - 0x01D03B 07:D02B: 20 51 FC  JSR sub_FC51
C - - - - - 0x01D03E 07:D02E: A9 00     LDA #$00
C - - - - - 0x01D040 07:D030: 99 C0 03  STA ram_03C0_obj,Y
C - - - - - 0x01D043 07:D033: 99 A0 04  STA ram_04A0_obj,Y
C - - - - - 0x01D046 07:D036: 99 70 04  STA ram_obj_timer,Y
C - - - - - 0x01D049 07:D039: 99 80 04  STA ram_0480_obj,Y
C - - - - - 0x01D04C 07:D03C: B9 00 04  LDA ram_0400_obj,Y
C - - - - - 0x01D04F 07:D03F: 29 BF     AND #$BF
C - - - - - 0x01D051 07:D041: 99 00 04  STA ram_0400_obj,Y
C - - - - - 0x01D054 07:D044: AD 60 03  LDA ram_pos_Y_lo
C - - - - - 0x01D057 07:D047: 99 60 03  STA ram_pos_Y_lo,Y
C - - - - - 0x01D05A 07:D04A: AD 70 03  LDA ram_pos_Y_hi
C - - - - - 0x01D05D 07:D04D: 99 70 03  STA ram_pos_Y_hi,Y
C - - - - - 0x01D060 07:D050: AD 00 04  LDA ram_0400_obj
C - - - - - 0x01D063 07:D053: 29 40     AND #$40
C - - - - - 0x01D065 07:D055: 0A        ASL
C - - - - - 0x01D066 07:D056: 0A        ASL
C - - - - - 0x01D067 07:D057: 2A        ROL
C - - - - - 0x01D068 07:D058: AA        TAX
C - - - - - 0x01D069 07:D059: 48        PHA
C - - - - - 0x01D06A 07:D05A: BD 83 D0  LDA tbl_D083,X
C - - - - - 0x01D06D 07:D05D: 99 D0 03  STA ram_direction,Y
C - - - - - 0x01D070 07:D060: 68        PLA
C - - - - - 0x01D071 07:D061: 0A        ASL
C - - - - - 0x01D072 07:D062: AA        TAX
C - - - - - 0x01D073 07:D063: AD 30 03  LDA ram_pos_X_lo
C - - - - - 0x01D076 07:D066: 18        CLC
C - - - - - 0x01D077 07:D067: 7D 85 D0  ADC tbl_D085_pos_X,X
C - - - - - 0x01D07A 07:D06A: 99 30 03  STA ram_pos_X_lo,Y
C - - - - - 0x01D07D 07:D06D: AD 40 03  LDA ram_pos_X_hi
C - - - - - 0x01D080 07:D070: 7D 86 D0  ADC tbl_D085_pos_X + $01,X
C - - - - - 0x01D083 07:D073: 99 40 03  STA ram_pos_X_hi,Y
C - - - - - 0x01D086 07:D076: A2 00     LDX #$00
C - - - - - 0x01D088 07:D078: A9 00     LDA #< $0200
C - - - - - 0x01D08A 07:D07A: 99 80 03  STA ram_spd_X_lo,Y
C - - - - - 0x01D08D 07:D07D: A9 02     LDA #> $0200
C - - - - - 0x01D08F 07:D07F: 99 90 03  STA ram_spd_X_hi,Y
C - - - - - 0x01D092 07:D082: 60        RTS



tbl_D083:
- D 2 - - - 0x01D093 07:D083: 02        .byte $02   ; 
- D 2 - - - 0x01D094 07:D084: 01        .byte $01   ; 



tbl_D085_pos_X:
- D 2 - - - 0x01D095 07:D085: F6 FF     .word $FFF6 ; 
- D 2 - - - 0x01D097 07:D087: 0A 00     .word $000A ; 



tbl_D089:
- D 2 - - - 0x01D099 07:D089: 00        .byte $00   ; 00
- D 2 - - - 0x01D09A 07:D08A: 08        .byte $08   ; 01
- D 2 - - - 0x01D09B 07:D08B: 10        .byte $10   ; 02

tbl_D08C:
- D 2 - - - 0x01D09C 07:D08C: 10        .byte $10   ; 00
- D 2 - - - 0x01D09D 07:D08D: 18        .byte $18   ; 01
- D 2 - - - 0x01D09E 07:D08E: 20        .byte $20   ; 02

tbl_D08F:
- D 2 - - - 0x01D09F 07:D08F: 00        .byte $00   ; 00
- D 2 - - - 0x01D0A0 07:D090: 10        .byte $10   ; 01
- D 2 - - - 0x01D0A1 07:D091: 00        .byte $00   ; 02



tbl_D092_power:
- D 2 - - - 0x01D0A2 07:D092: 26        .byte con_obj_id_weapon_power_00   ; 00
- D 2 - - - 0x01D0A3 07:D093: 27        .byte con_obj_id_weapon_power_01   ; 01
- D 2 - - - 0x01D0A4 07:D094: 28        .byte con_obj_id_weapon_power_02   ; 02
- D 2 - - - 0x01D0A5 07:D095: 29        .byte con_obj_id_weapon_power_03   ; 03

tbl_D096:
- D 2 - - - 0x01D0A6 07:D096: 18        .byte $18   ; 00
- D 2 - - - 0x01D0A7 07:D097: 24        .byte $24   ; 01
- D 2 - - - 0x01D0A8 07:D098: 30        .byte $30   ; 02
- D 2 - - - 0x01D0A9 07:D099: 3C        .byte $3C   ; 03

tbl_D09A:
- D 2 - - - 0x01D0AA 07:D09A: 17        .byte $17   ; 00
- D 2 - - - 0x01D0AB 07:D09B: 12        .byte $12   ; 01
- D 2 - - - 0x01D0AC 07:D09C: 18        .byte $18   ; 02
- D 2 - - - 0x01D0AD 07:D09D: 19        .byte $19   ; 03



ofs_004_D09E_04_coming_to_ice:
; after 02, activated once until 06
C - - J - - 0x01D0AE 07:D09E: A0 02     LDY #$02
C - - - - - 0x01D0B0 07:D0A0: 20 2F F8  JSR sub_F82F
C - - - - - 0x01D0B3 07:D0A3: B0 03     BCS bra_D0A8
C - - - - - 0x01D0B5 07:D0A5: 4C 56 D1  JMP loc_D156
bra_D0A8:
C - - - - - 0x01D0B8 07:D0A8: A5 41     LDA ram_0041
C - - - - - 0x01D0BA 07:D0AA: C9 70     CMP #$70
C - - - - - 0x01D0BC 07:D0AC: F0 16     BEQ bra_D0C4
C - - - - - 0x01D0BE 07:D0AE: A9 00     LDA #$00
C - - - - - 0x01D0C0 07:D0B0: 8D 80 03  STA ram_spd_X_lo
C - - - - - 0x01D0C3 07:D0B3: A9 01     LDA #$01
C - - - - - 0x01D0C5 07:D0B5: 8D 90 03  STA ram_spd_X_hi
C - - - - - 0x01D0C8 07:D0B8: A9 16     LDA #$16
C - - - - - 0x01D0CA 07:D0BA: 20 45 FC  JSR sub_FC45
C - - - - - 0x01D0CD 07:D0BD: A9 05     LDA #con_ariel_coming_to_surface
C - - - - - 0x01D0CF 07:D0BF: 85 30     STA ram_ariel_status
C - - - - - 0x01D0D1 07:D0C1: 4C A3 D1  JMP loc_D1A3
bra_D0C4:
loc_D0C4:
C - - - - - 0x01D0D4 07:D0C4: A5 14     LDA ram_btn_press
C - - - - - 0x01D0D6 07:D0C6: 29 80     AND #con_btn_A
C - - - - - 0x01D0D8 07:D0C8: D0 72     BNE bra_D13C
C - - - - - 0x01D0DA 07:D0CA: A9 0B     LDA #$0B
C - - - - - 0x01D0DC 07:D0CC: CD 30 04  CMP ram_0430_obj
C - - - - - 0x01D0DF 07:D0CF: F0 18     BEQ bra_D0E9
C - - - - - 0x01D0E1 07:D0D1: 20 45 FC  JSR sub_FC45
C - - - - - 0x01D0E4 07:D0D4: A9 30     LDA #$30
C - - - - - 0x01D0E6 07:D0D6: 85 36     STA ram_0036
C - - - - - 0x01D0E8 07:D0D8: A5 5C     LDA ram_005C
C - - - - - 0x01D0EA 07:D0DA: F0 08     BEQ bra_D0E4
C - - - - - 0x01D0EC 07:D0DC: A9 16     LDA #con_sfx_16
C - - - - - 0x01D0EE 07:D0DE: 20 A0 FC  JSR sub_FCA0_play_sfx
C - - - - - 0x01D0F1 07:D0E1: 4C E9 D0  JMP loc_D0E9
bra_D0E4:
C - - - - - 0x01D0F4 07:D0E4: A9 17     LDA #con_sfx_17
C - - - - - 0x01D0F6 07:D0E6: 20 A0 FC  JSR sub_FCA0_play_sfx
bra_D0E9:
loc_D0E9:
C D 2 - - - 0x01D0F9 07:D0E9: A5 5C     LDA ram_005C
C - - - - - 0x01D0FB 07:D0EB: F0 4C     BEQ bra_D139
C - - - - - 0x01D0FD 07:D0ED: A5 16     LDA ram_btn_hold
C - - - - - 0x01D0FF 07:D0EF: 29 03     AND #con_btns_LR
C - - - - - 0x01D101 07:D0F1: F0 04     BEQ bra_D0F7
C - - - - - 0x01D103 07:D0F3: C5 5C     CMP ram_005C
C - - - - - 0x01D105 07:D0F5: D0 06     BNE bra_D0FD
bra_D0F7:
C - - - - - 0x01D107 07:D0F7: A5 38     LDA ram_frame_cnt_1
C - - - - - 0x01D109 07:D0F9: 29 01     AND #$01
C - - - - - 0x01D10B 07:D0FB: D0 26     BNE bra_D123
bra_D0FD:
C - - - - - 0x01D10D 07:D0FD: A5 36     LDA ram_0036
C - - - - - 0x01D10F 07:D0FF: C9 10     CMP #$10
C - - - - - 0x01D111 07:D101: F0 0B     BEQ bra_D10E
C - - - - - 0x01D113 07:D103: 38        SEC
C - - - - - 0x01D114 07:D104: E9 01     SBC #$01
C - - - - - 0x01D116 07:D106: 85 36     STA ram_0036
C - - - - - 0x01D118 07:D108: B0 04     BCS bra_D10E
- - - - - - 0x01D11A 07:D10A: A9 10     LDA #$10
- - - - - - 0x01D11C 07:D10C: 85 36     STA ram_0036
bra_D10E:
C - - - - - 0x01D11E 07:D10E: A5 5D     LDA ram_005D
C - - - - - 0x01D120 07:D110: 38        SEC
C - - - - - 0x01D121 07:D111: E5 36     SBC ram_0036
C - - - - - 0x01D123 07:D113: 85 5D     STA ram_005D
C - - - - - 0x01D125 07:D115: 8D 80 03  STA ram_spd_X_lo
C - - - - - 0x01D128 07:D118: A5 5E     LDA ram_005E
C - - - - - 0x01D12A 07:D11A: E9 00     SBC #$00
C - - - - - 0x01D12C 07:D11C: 85 5E     STA ram_005E
C - - - - - 0x01D12E 07:D11E: 8D 90 03  STA ram_spd_X_hi
C - - - - - 0x01D131 07:D121: 90 08     BCC bra_D12B
bra_D123:
C - - - - - 0x01D133 07:D123: A5 5C     LDA ram_005C
C - - - - - 0x01D135 07:D125: 20 E2 D1  JSR sub_D1E2
C - - - - - 0x01D138 07:D128: 4C BB D1  JMP loc_D1BB
bra_D12B:
C - - - - - 0x01D13B 07:D12B: A9 00     LDA #$00
C - - - - - 0x01D13D 07:D12D: 85 5C     STA ram_005C
C - - - - - 0x01D13F 07:D12F: 8D 80 03  STA ram_spd_X_lo
C - - - - - 0x01D142 07:D132: 8D 90 03  STA ram_spd_X_hi
C - - - - - 0x01D145 07:D135: 85 5D     STA ram_005D
C - - - - - 0x01D147 07:D137: 85 5E     STA ram_005E
bra_D139:
C - - - - - 0x01D149 07:D139: 4C B3 D1  JMP loc_D1B3
bra_D13C:
C - - - - - 0x01D14C 07:D13C: A9 16     LDA #$16
C - - - - - 0x01D14E 07:D13E: 20 45 FC  JSR sub_FC45
C - - - - - 0x01D151 07:D141: A9 00     LDA #$00
C - - - - - 0x01D153 07:D143: 85 5C     STA ram_005C
C - - - - - 0x01D155 07:D145: A9 33     LDA #$33
C - - - - - 0x01D157 07:D147: 8D 80 03  STA ram_spd_X_lo
C - - - - - 0x01D15A 07:D14A: 85 5D     STA ram_005D
C - - - - - 0x01D15C 07:D14C: A9 02     LDA #$02
C - - - - - 0x01D15E 07:D14E: 8D 90 03  STA ram_spd_X_hi
C - - - - - 0x01D161 07:D151: 85 5E     STA ram_005E
C - - - - - 0x01D163 07:D153: 4C D1 D1  JMP loc_D1D1



loc_D156:
C D 2 - - - 0x01D166 07:D156: A5 16     LDA ram_btn_hold
C - - - - - 0x01D168 07:D158: 29 03     AND #con_btns_LR
C - - - - - 0x01D16A 07:D15A: F0 02     BEQ bra_D15E
C - - - - - 0x01D16C 07:D15C: 85 5C     STA ram_005C
bra_D15E:
C - - - - - 0x01D16E 07:D15E: AD 30 04  LDA ram_0430_obj
C - - - - - 0x01D171 07:D161: C9 16     CMP #$16
C - - - - - 0x01D173 07:D163: F0 77     BEQ bra_D1DC
C - - - - - 0x01D175 07:D165: C9 07     CMP #$07
C - - - - - 0x01D177 07:D167: F0 73     BEQ bra_D1DC
C - - - - - 0x01D179 07:D169: A9 07     LDA #$07
C - - - - - 0x01D17B 07:D16B: 20 45 FC  JSR sub_FC45
C - - - - - 0x01D17E 07:D16E: 4C DC D1  JMP loc_D1DC



ofs_004_D171_05_coming_to_surface:
; after 02, activated once until 06
C - - J - - 0x01D181 07:D171: A0 02     LDY #$02
C - - - - - 0x01D183 07:D173: 20 2F F8  JSR sub_F82F
C - - - - - 0x01D186 07:D176: 90 64     BCC bra_D1DC
C - - - - - 0x01D188 07:D178: A5 41     LDA ram_0041
C - - - - - 0x01D18A 07:D17A: C9 70     CMP #$70
C - - - - - 0x01D18C 07:D17C: D0 25     BNE bra_D1A3
- - - - - - 0x01D18E 07:D17E: A9 33     LDA #$33
- - - - - - 0x01D190 07:D180: 85 5D     STA ram_005D
- - - - - - 0x01D192 07:D182: A9 02     LDA #$02
- - - - - - 0x01D194 07:D184: 85 5E     STA ram_005E
- - - - - - 0x01D196 07:D186: A9 30     LDA #$30
- - - - - - 0x01D198 07:D188: 85 36     STA ram_0036
- - - - - - 0x01D19A 07:D18A: A0 01     LDY #$01
- - - - - - 0x01D19C 07:D18C: AD 00 04  LDA ram_0400_obj
- - - - - - 0x01D19F 07:D18F: 29 40     AND #$40
- - - - - - 0x01D1A1 07:D191: D0 02     BNE bra_D195
- - - - - - 0x01D1A3 07:D193: A0 02     LDY #$02
bra_D195:
- - - - - - 0x01D1A5 07:D195: 84 5C     STY ram_005C
- - - - - - 0x01D1A7 07:D197: A9 0B     LDA #$0B
- - - - - - 0x01D1A9 07:D199: 20 45 FC  JSR sub_FC45
- - - - - - 0x01D1AC 07:D19C: A9 04     LDA #con_ariel_coming_to_ice
- - - - - - 0x01D1AE 07:D19E: 85 30     STA ram_ariel_status
- - - - - - 0x01D1B0 07:D1A0: 4C C4 D0  JMP loc_D0C4
bra_D1A3:
loc_D1A3:
C D 2 - - - 0x01D1B3 07:D1A3: A5 14     LDA ram_btn_press
C - - - - - 0x01D1B5 07:D1A5: 29 80     AND #con_btn_A
C - - - - - 0x01D1B7 07:D1A7: D0 28     BNE bra_D1D1
C - - - - - 0x01D1B9 07:D1A9: AD 18 04  LDA ram_animation_cnt
C - - - - - 0x01D1BC 07:D1AC: F0 05     BEQ bra_D1B3
C - - - - - 0x01D1BE 07:D1AE: A9 17     LDA #con_sfx_17
C - - - - - 0x01D1C0 07:D1B0: 20 A0 FC  JSR sub_FCA0_play_sfx
bra_D1B3:
loc_D1B3:
C D 2 - - - 0x01D1C3 07:D1B3: A9 00     LDA #$00
C - - - - - 0x01D1C5 07:D1B5: 8D 48 04  STA ram_0448
C - - - - - 0x01D1C8 07:D1B8: 8D 18 04  STA ram_animation_cnt
loc_D1BB:
C D 2 - - - 0x01D1CB 07:D1BB: AD 00 04  LDA ram_0400_obj
C - - - - - 0x01D1CE 07:D1BE: 29 BF     AND #$BF
C - - - - - 0x01D1D0 07:D1C0: 85 00     STA ram_0000
C - - - - - 0x01D1D2 07:D1C2: A5 16     LDA ram_btn_hold
C - - - - - 0x01D1D4 07:D1C4: 29 03     AND #con_btns_LR
C - - - - - 0x01D1D6 07:D1C6: F0 08     BEQ bra_D1D0_RTS
C - - - - - 0x01D1D8 07:D1C8: 4A        LSR
C - - - - - 0x01D1D9 07:D1C9: 6A        ROR
C - - - - - 0x01D1DA 07:D1CA: 6A        ROR
C - - - - - 0x01D1DB 07:D1CB: 05 00     ORA ram_0000
C - - - - - 0x01D1DD 07:D1CD: 8D 00 04  STA ram_0400_obj
bra_D1D0_RTS:
C - - - - - 0x01D1E0 07:D1D0: 60        RTS
bra_D1D1:
loc_D1D1:
C D 2 - - - 0x01D1E1 07:D1D1: A9 00     LDA #$00
C - - - - - 0x01D1E3 07:D1D3: 8D A0 03  STA ram_spd_Y_lo
C - - - - - 0x01D1E6 07:D1D6: A9 02     LDA #$02
C - - - - - 0x01D1E8 07:D1D8: 8D B0 03  STA ram_spd_Y_hi
C - - - - - 0x01D1EB 07:D1DB: 60        RTS
bra_D1DC:
loc_D1DC:
C D 2 - - - 0x01D1EC 07:D1DC: A5 16     LDA ram_btn_hold
C - - - - - 0x01D1EE 07:D1DE: 29 03     AND #con_btns_LR
C - - - - - 0x01D1F0 07:D1E0: F0 11     BEQ bra_D1F3
sub_D1E2:
C - - - - - 0x01D1F2 07:D1E2: 29 01     AND #$01
C - - - - - 0x01D1F4 07:D1E4: F0 08     BEQ bra_D1EE
C - - - - - 0x01D1F6 07:D1E6: A0 04     LDY #$04
C - - - - - 0x01D1F8 07:D1E8: 20 00 F6  JSR sub_F600
C - - - - - 0x01D1FB 07:D1EB: 4C F3 D1  JMP loc_D1F3
bra_D1EE:
C - - - - - 0x01D1FE 07:D1EE: A0 05     LDY #$05
C - - - - - 0x01D200 07:D1F0: 20 75 F6  JSR sub_F675
bra_D1F3:
loc_D1F3:
C D 2 - - - 0x01D203 07:D1F3: AD B0 03  LDA ram_spd_Y_hi
C - - - - - 0x01D206 07:D1F6: 10 50     BPL bra_D248_RTS
C - - - - - 0x01D208 07:D1F8: A0 02     LDY #$02
C - - - - - 0x01D20A 07:D1FA: 20 DF E3  JSR sub_E3DF
C - - - - - 0x01D20D 07:D1FD: A5 43     LDA ram_0043
C - - - - - 0x01D20F 07:D1FF: C9 40     CMP #$40
C D 2 - I - 0x01D211 07:D201: D0 45     BNE bra_D248_RTS
; !!!
sub_D203:
loc_D203:
C D 2 - I - 0x01D213 07:D203: 20 54 FE  JSR sub_FE54
C - - - - - 0x01D216 07:D206: B0 2D     BCS bra_D235
C D 2 - I - 0x01D218 07:D208: A9 13     LDA #$13
C D 2 - I - 0x01D21A 07:D20A: 20 51 FC  JSR sub_FC51
C - - - - - 0x01D21D 07:D20D: B9 00 04  LDA ram_0400_obj,Y
C D 2 - I - 0x01D220 07:D210: 29 BF     AND #$BF
C D 2 - I - 0x01D222 07:D212: 99 00 04  STA ram_0400_obj,Y
C - - - - - 0x01D225 07:D215: BD 30 03  LDA ram_pos_X_lo,X
C D 2 - I - 0x01D228 07:D218: 99 30 03  STA ram_pos_X_lo,Y
C D 2 - I - 0x01D22B 07:D21B: BD 40 03  LDA ram_pos_X_hi,X
C - - - - - 0x01D22E 07:D21E: 99 40 03  STA ram_pos_X_hi,Y
C D 2 - I - 0x01D231 07:D221: BD 60 03  LDA ram_pos_Y_lo,X
C - - - - - 0x01D234 07:D224: 99 60 03  STA ram_pos_Y_lo,Y
C - - - - - 0x01D237 07:D227: BD 70 03  LDA ram_pos_Y_hi,X
C D 2 - I - 0x01D23A 07:D22A: 99 70 03  STA ram_pos_Y_hi,Y
C - - - - - 0x01D23D 07:D22D: A9 00     LDA #$00    ; con_obj_id_00
C - - - - - 0x01D23F 07:D22F: 99 C0 03  STA ram_03C0_obj,Y
C D 2 - I - 0x01D242 07:D232: 99 10 03  STA ram_obj_id,Y
bra_D235:
C - - - - - 0x01D245 07:D235: A9 15     LDA #con_sfx_15
C - - - - - 0x01D247 07:D237: 20 A0 FC  JSR sub_FCA0_play_sfx
C D 2 - I - 0x01D24A 07:D23A: A9 06     LDA #con_ariel_diving
C - - - - - 0x01D24C 07:D23C: 85 30     STA ram_ariel_status
C - - - - - 0x01D24E 07:D23E: A9 FC     LDA #$FC
C - - - - - 0x01D250 07:D240: CD B0 03  CMP ram_spd_Y_hi
C - - - - - 0x01D253 07:D243: 90 03     BCC bra_D248_RTS
C - - - - - 0x01D255 07:D245: 8D B0 03  STA ram_spd_Y_hi
bra_D248_RTS:
C - - - - - 0x01D258 07:D248: 60        RTS



ofs_004_D249_06_diving:
; diving into water after 02, 04 or 05
C - - J - - 0x01D259 07:D249: A0 00     LDY #$00
C - - - - - 0x01D25B 07:D24B: AD A0 03  LDA ram_spd_Y_lo
C - - - - - 0x01D25E 07:D24E: 18        CLC
C - - - - - 0x01D25F 07:D24F: 69 50     ADC #< $0050
C - - - - - 0x01D261 07:D251: 8D A0 03  STA ram_spd_Y_lo
C - - - - - 0x01D264 07:D254: AD B0 03  LDA ram_spd_Y_hi
C - - - - - 0x01D267 07:D257: 69 00     ADC #> $0050
C - - - - - 0x01D269 07:D259: 8D B0 03  STA ram_spd_Y_hi
C - - - - - 0x01D26C 07:D25C: 10 06     BPL bra_D264
C - - - - - 0x01D26E 07:D25E: 20 22 F9  JSR sub_F922
C - - - - - 0x01D271 07:D261: 4C 72 D2  JMP loc_D272
bra_D264:
C - - - - - 0x01D274 07:D264: 20 4A F9  JSR sub_F94A
C - - - - - 0x01D277 07:D267: C8        INY
C - - - - - 0x01D278 07:D268: A9 02     LDA #$02
C - - - - - 0x01D27A 07:D26A: CD 30 04  CMP ram_0430_obj
C - - - - - 0x01D27D 07:D26D: F0 03     BEQ bra_D272
C - - - - - 0x01D27F 07:D26F: 20 45 FC  JSR sub_FC45
bra_D272:
loc_D272:
C D 2 - - - 0x01D282 07:D272: 20 7F E2  JSR sub_E27F
C - - - - - 0x01D285 07:D275: A5 10     LDA ram_0010
C - - - - - 0x01D287 07:D277: 29 10     AND #$10
C - - - - - 0x01D289 07:D279: F0 0E     BEQ bra_D289
- - - - - - 0x01D28B 07:D27B: AD B0 03  LDA ram_spd_Y_hi
- - - - - - 0x01D28E 07:D27E: 10 06     BPL bra_D286
- - - - - - 0x01D290 07:D280: 20 EF E6  JSR sub_E6EF
- - - - - - 0x01D293 07:D283: 4C 89 D2  JMP loc_D289
bra_D286:
- - - - - - 0x01D296 07:D286: 20 CD E6  JSR sub_E6CD
bra_D289:
loc_D289:
C - - - - - 0x01D299 07:D289: AD B0 03  LDA ram_spd_Y_hi
C - - - - - 0x01D29C 07:D28C: 30 0A     BMI bra_D298
C - - - - - 0x01D29E 07:D28E: A9 02     LDA #$02
C - - - - - 0x01D2A0 07:D290: CD 30 04  CMP ram_0430_obj
C - - - - - 0x01D2A3 07:D293: F0 03     BEQ bra_D298
- - - - - - 0x01D2A5 07:D295: 20 45 FC  JSR sub_FC45
bra_D298:
C - - - - - 0x01D2A8 07:D298: AD B0 03  LDA ram_spd_Y_hi
C - - - - - 0x01D2AB 07:D29B: C9 02     CMP #$02
C - - - - - 0x01D2AD 07:D29D: D0 05     BNE bra_D2A4_RTS
C - - - - - 0x01D2AF 07:D29F: 20 BA CB  JSR sub_CBBA
; A = 00 (logged)
; con_ariel_default
C - - - - - 0x01D2B2 07:D2A2: 85 30     STA ram_ariel_status
bra_D2A4_RTS:
C - - - - - 0x01D2B4 07:D2A4: 60        RTS



ofs_004_D2A5_07_damaged:
; getting hit by something
C - - J - - 0x01D2B5 07:D2A5: A5 B1     LDA ram_hearts
C - - - - - 0x01D2B7 07:D2A7: F0 5C     BEQ bra_D305_already_dead
; if not dead
C - - - - - 0x01D2B9 07:D2A9: A9 60     LDA #$60
C - - - - - 0x01D2BB 07:D2AB: 85 3F     STA ram_003F
C - - - - - 0x01D2BD 07:D2AD: AD 60 04  LDA ram_0460_obj
C - - - - - 0x01D2C0 07:D2B0: C9 02     CMP #$02
C - - - - - 0x01D2C2 07:D2B2: D0 22     BNE bra_D2D6
C - - - - - 0x01D2C4 07:D2B4: A0 02     LDY #$02
C - - - - - 0x01D2C6 07:D2B6: 20 2F F8  JSR sub_F82F
C - - - - - 0x01D2C9 07:D2B9: 90 03     BCC bra_D2BE
- - - - - - 0x01D2CB 07:D2BB: 4C A3 CE  JMP loc_CEA3
bra_D2BE:
C - - - - - 0x01D2CE 07:D2BE: A0 05     LDY #$05
C - - - - - 0x01D2D0 07:D2C0: 20 7F E2  JSR sub_E27F
C - - - - - 0x01D2D3 07:D2C3: A5 42     LDA ram_0042
C - - - - - 0x01D2D5 07:D2C5: C9 40     CMP #$40
C - - - - - 0x01D2D7 07:D2C7: D0 3B     BNE bra_D304_RTS
C - - - - - 0x01D2D9 07:D2C9: A9 00     LDA #$00
C - - - - - 0x01D2DB 07:D2CB: 8D A0 03  STA ram_spd_Y_lo
C - - - - - 0x01D2DE 07:D2CE: A9 FE     LDA #$FE
C - - - - - 0x01D2E0 07:D2D0: 8D B0 03  STA ram_spd_Y_hi
C - - - - - 0x01D2E3 07:D2D3: 4C 03 D2  JMP loc_D203
bra_D2D6:
C - - - - - 0x01D2E6 07:D2D6: A0 04     LDY #$04
C - - - - - 0x01D2E8 07:D2D8: AD 00 04  LDA ram_0400_obj
C - - - - - 0x01D2EB 07:D2DB: 48        PHA
C - - - - - 0x01D2EC 07:D2DC: 20 B9 FC  JSR sub_FCB9
C - - - - - 0x01D2EF 07:D2DF: 68        PLA
C - - - - - 0x01D2F0 07:D2E0: 8D 00 04  STA ram_0400_obj
C - - - - - 0x01D2F3 07:D2E3: CE 70 04  DEC ram_obj_timer
C - - - - - 0x01D2F6 07:D2E6: D0 1C     BNE bra_D304_RTS
C - - - - - 0x01D2F8 07:D2E8: AD 60 04  LDA ram_0460_obj
; A = 00 (logged)
; con_ariel_default
C - - - - - 0x01D2FB 07:D2EB: 85 30     STA ram_ariel_status
C - - - - - 0x01D2FD 07:D2ED: 48        PHA
C - - - - - 0x01D2FE 07:D2EE: 20 BA CB  JSR sub_CBBA
C - - - - - 0x01D301 07:D2F1: 68        PLA
C - - - - - 0x01D302 07:D2F2: C9 04     CMP #$04
C - - - - - 0x01D304 07:D2F4: F0 04     BEQ bra_D2FA
C - - - - - 0x01D306 07:D2F6: C9 05     CMP #$05
C - - - - - 0x01D308 07:D2F8: D0 0A     BNE bra_D304_RTS
bra_D2FA:
C - - - - - 0x01D30A 07:D2FA: A9 00     LDA #$00
C - - - - - 0x01D30C 07:D2FC: 8D 80 03  STA ram_spd_X_lo
C - - - - - 0x01D30F 07:D2FF: A9 01     LDA #$01
C - - - - - 0x01D311 07:D301: 8D 90 03  STA ram_spd_X_hi
bra_D304_RTS:
C - - - - - 0x01D314 07:D304: 60        RTS
bra_D305_already_dead:
C - - - - - 0x01D315 07:D305: AD 80 04  LDA ram_0480_obj
C - - - - - 0x01D318 07:D308: C9 1E     CMP #$1E
C - - - - - 0x01D31A 07:D30A: B0 04     BCS bra_D310
C - - - - - 0x01D31C 07:D30C: EE 80 04  INC ram_0480_obj
C - - - - - 0x01D31F 07:D30F: 60        RTS
bra_D310:
C - - - - - 0x01D320 07:D310: AD 00 04  LDA ram_0400_obj
C - - - - - 0x01D323 07:D313: 48        PHA
C - - - - - 0x01D324 07:D314: A0 04     LDY #$04
C - - - - - 0x01D326 07:D316: 20 B9 FC  JSR sub_FCB9
C - - - - - 0x01D329 07:D319: 68        PLA
C - - - - - 0x01D32A 07:D31A: 8D 00 04  STA ram_0400_obj
C - - - - - 0x01D32D 07:D31D: AD 70 04  LDA ram_obj_timer
C - - - - - 0x01D330 07:D320: F0 05     BEQ bra_D327
C - - - - - 0x01D332 07:D322: CE 70 04  DEC ram_obj_timer
C - - - - - 0x01D335 07:D325: D0 DD     BNE bra_D304_RTS
bra_D327:
C - - - - - 0x01D337 07:D327: AD 80 04  LDA ram_0480_obj
C - - - - - 0x01D33A 07:D32A: EE 80 04  INC ram_0480_obj
C - - - - - 0x01D33D 07:D32D: 29 0F     AND #$0F
C - - - - - 0x01D33F 07:D32F: D0 17     BNE bra_D348
C - - - - - 0x01D341 07:D331: A0 1F     LDY #$1F
bra_D333_loop:
C - - - - - 0x01D343 07:D333: B9 00 06  LDA ram_pal_buffer_1,Y
C - - - - - 0x01D346 07:D336: 38        SEC
C - - - - - 0x01D347 07:D337: E9 10     SBC #$10
C - - - - - 0x01D349 07:D339: 10 02     BPL bra_D33D
C - - - - - 0x01D34B 07:D33B: A9 0F     LDA #$0F
bra_D33D:
C - - - - - 0x01D34D 07:D33D: 99 00 06  STA ram_pal_buffer_1,Y
C - - - - - 0x01D350 07:D340: 99 20 06  STA ram_pal_buffer_2,Y
C - - - - - 0x01D353 07:D343: 88        DEY
C - - - - - 0x01D354 07:D344: 10 ED     BPL bra_D333_loop
C - - - - - 0x01D356 07:D346: 84 18     STY ram_0018
bra_D348:
C - - - - - 0x01D358 07:D348: AD 80 04  LDA ram_0480_obj
C - - - - - 0x01D35B 07:D34B: 29 7F     AND #$7F
C - - - - - 0x01D35D 07:D34D: D0 11     BNE bra_D360_RTS
; A = 00
; con_ariel_default
C - - - - - 0x01D35F 07:D34F: 85 30     STA ram_ariel_status
C - - - - - 0x01D361 07:D351: A9 00     LDA #$00
C - - - - - 0x01D363 07:D353: 85 3D     STA ram_weapon_power
C - - - - - 0x01D365 07:D355: 85 3E     STA ram_weapon_range
C - - - - - 0x01D367 07:D357: 68        PLA
C - - - - - 0x01D368 07:D358: 68        PLA
C - - - - - 0x01D369 07:D359: C6 B0     DEC ram_lives
C - - - - - 0x01D36B 07:D35B: 30 04     BMI bra_D361_game_over
C - - - - - 0x01D36D 07:D35D: 4C 1F C7  JMP loc_C71F
bra_D360_RTS:
C - - - - - 0x01D370 07:D360: 60        RTS
bra_D361_game_over:
C - - - - - 0x01D371 07:D361: 4C C0 F4  JMP loc_F4C0_game_over_handler



ofs_004_D364_08_waiting_for_boss:
; waiting for boss, can't move
C - - J - - 0x01D374 07:D364: A9 00     LDA #$00
C - - - - - 0x01D376 07:D366: 8D 48 04  STA ram_0448
C - - - - - 0x01D379 07:D369: CE 60 04  DEC ram_0460_obj
C - - - - - 0x01D37C 07:D36C: D0 05     BNE bra_D373_RTS
C - - - - - 0x01D37E 07:D36E: AD 70 04  LDA ram_obj_timer
; con_ariel_default  con_ariel_coming_to_ice
C - - - - - 0x01D381 07:D371: 85 30     STA ram_ariel_status
bra_D373_RTS:
C - - - - - 0x01D383 07:D373: 60        RTS



ofs_004_D374_09_spawning:
; when level starts, she drops down
C - - J - - 0x01D384 07:D374: 20 11 F9  JSR sub_F911
C - - - - - 0x01D387 07:D377: A4 E9     LDY ram_stage
C - - - - - 0x01D389 07:D379: B9 B4 D3  LDA tbl_D3B4,Y
C - - - - - 0x01D38C 07:D37C: CD 60 03  CMP ram_pos_Y_lo
C - - - - - 0x01D38F 07:D37F: B0 32     BCS bra_D3B3_RTS
C - - - - - 0x01D391 07:D381: 8D 60 03  STA ram_pos_Y_lo
C - - - - - 0x01D394 07:D384: A5 E9     LDA ram_stage
C - - - - - 0x01D396 07:D386: C9 05     CMP #$05
C - - - - - 0x01D398 07:D388: D0 25     BNE bra_D3AF
; if final battle
C - - - - - 0x01D39A 07:D38A: A2 5A     LDX #$5A
C - - - - - 0x01D39C 07:D38C: 20 A6 FF  JSR sub_FFA6
C - - - - - 0x01D39F 07:D38F: A0 0F     LDY #$0F
bra_D391_loop:
C - - - - - 0x01D3A1 07:D391: B9 BA D3  LDA tbl_D3BA,Y
C - - - - - 0x01D3A4 07:D394: 99 20 06  STA ram_pal_buffer_2,Y
C - - - - - 0x01D3A7 07:D397: 88        DEY
C - - - - - 0x01D3A8 07:D398: 10 F7     BPL bra_D391_loop
C - - - - - 0x01D3AA 07:D39A: A9 00     LDA #$00
C - - - - - 0x01D3AC 07:D39C: 85 EE     STA ram_00EE
C - - - - - 0x01D3AE 07:D39E: A9 30     LDA #$30
C - - - - - 0x01D3B0 07:D3A0: 85 0F     STA ram_000F
C - - - - - 0x01D3B2 07:D3A2: A9 F0     LDA #$F0
C - - - - - 0x01D3B4 07:D3A4: 85 0D     STA ram_000D
C - - - - - 0x01D3B6 07:D3A6: A9 10     LDA #$10
C - - - - - 0x01D3B8 07:D3A8: 85 0E     STA ram_000E
C - - - - - 0x01D3BA 07:D3AA: 20 F7 C1  JSR sub_C1F7
C - - - - - 0x01D3BD 07:D3AD: E6 EE     INC ram_00EE
bra_D3AF:
C - - - - - 0x01D3BF 07:D3AF: A9 00     LDA #con_ariel_default
C - - - - - 0x01D3C1 07:D3B1: 85 30     STA ram_ariel_status
bra_D3B3_RTS:
C - - - - - 0x01D3C3 07:D3B3: 60        RTS



tbl_D3B4:
- D 2 - - - 0x01D3C4 07:D3B4: 78        .byte $78   ; 00
- D 2 - - - 0x01D3C5 07:D3B5: 78        .byte $78   ; 01
- D 2 - - - 0x01D3C6 07:D3B6: 78        .byte $78   ; 02
- D 2 - - - 0x01D3C7 07:D3B7: 78        .byte $78   ; 03
- D 2 - - - 0x01D3C8 07:D3B8: 78        .byte $78   ; 04
- D 2 - - - 0x01D3C9 07:D3B9: 90        .byte $90   ; 05



tbl_D3BA:
- D 2 - - - 0x01D3CA 07:D3BA: 0F        .byte $0F, $16, $27, $37   ; 
- D 2 - - - 0x01D3CE 07:D3BE: 0F        .byte $0F, $0A, $12, $22   ; 
- D 2 - - - 0x01D3D2 07:D3C2: 0F        .byte $0F, $0A, $1A, $2A   ; 
- D 2 - - - 0x01D3D6 07:D3C6: 0F        .byte $0F, $23, $13, $03   ; 



sub_D3CA:
C - - - - - 0x01D3DA 07:D3CA: A5 38     LDA ram_frame_cnt_1
C - - - - - 0x01D3DC 07:D3CC: 29 01     AND #$01
C - - - - - 0x01D3DE 07:D3CE: F0 11     BEQ bra_D3E1_RTS
C - - - - - 0x01D3E0 07:D3D0: A5 36     LDA ram_0036
C - - - - - 0x01D3E2 07:D3D2: C9 10     CMP #$10
C - - - - - 0x01D3E4 07:D3D4: F0 0B     BEQ bra_D3E1_RTS
C - - - - - 0x01D3E6 07:D3D6: 38        SEC
C - - - - - 0x01D3E7 07:D3D7: E9 01     SBC #$01
C - - - - - 0x01D3E9 07:D3D9: 85 36     STA ram_0036
C - - - - - 0x01D3EB 07:D3DB: B0 04     BCS bra_D3E1_RTS
- - - - - - 0x01D3ED 07:D3DD: A9 10     LDA #$10
- - - - - - 0x01D3EF 07:D3DF: 85 36     STA ram_0036
bra_D3E1_RTS:
C - - - - - 0x01D3F1 07:D3E1: 60        RTS



sub_D3E2_change_spd_X:
C - - - - - 0x01D3F2 07:D3E2: AD 80 03  LDA ram_spd_X_lo
C - - - - - 0x01D3F5 07:D3E5: 38        SEC
C - - - - - 0x01D3F6 07:D3E6: E5 36     SBC ram_0036
C - - - - - 0x01D3F8 07:D3E8: 8D 80 03  STA ram_spd_X_lo
C - - - - - 0x01D3FB 07:D3EB: AD 90 03  LDA ram_spd_X_hi
C - - - - - 0x01D3FE 07:D3EE: E9 00     SBC #$00
C - - - - - 0x01D400 07:D3F0: 8D 90 03  STA ram_spd_X_hi
C - - - - - 0x01D403 07:D3F3: B0 08     BCS bra_D3FD_RTS
C - - - - - 0x01D405 07:D3F5: A9 00     LDA #$00
C - - - - - 0x01D407 07:D3F7: 8D 80 03  STA ram_spd_X_lo
C - - - - - 0x01D40A 07:D3FA: 8D 90 03  STA ram_spd_X_hi
bra_D3FD_RTS:
C - - - - - 0x01D40D 07:D3FD: 60        RTS



sub_D3FE_change_spd_Y:
C - - - - - 0x01D40E 07:D3FE: AD A0 03  LDA ram_spd_Y_lo
C - - - - - 0x01D411 07:D401: 38        SEC
C - - - - - 0x01D412 07:D402: E5 36     SBC ram_0036
C - - - - - 0x01D414 07:D404: 8D A0 03  STA ram_spd_Y_lo
C - - - - - 0x01D417 07:D407: AD B0 03  LDA ram_spd_Y_hi
C - - - - - 0x01D41A 07:D40A: E9 00     SBC #$00
C - - - - - 0x01D41C 07:D40C: 8D B0 03  STA ram_spd_Y_hi
C - - - - - 0x01D41F 07:D40F: B0 08     BCS bra_D419_RTS
C - - - - - 0x01D421 07:D411: A9 00     LDA #$00
C - - - - - 0x01D423 07:D413: 8D A0 03  STA ram_spd_Y_lo
C - - - - - 0x01D426 07:D416: 8D B0 03  STA ram_spd_Y_hi
bra_D419_RTS:
C - - - - - 0x01D429 07:D419: 60        RTS



sub_D41A:
C - - - - - 0x01D42A 07:D41A: A5 38     LDA ram_frame_cnt_1
C - - - - - 0x01D42C 07:D41C: 29 01     AND #$01
C - - - - - 0x01D42E 07:D41E: F0 0B     BEQ bra_D42B_RTS
C - - - - - 0x01D430 07:D420: A5 36     LDA ram_0036
C - - - - - 0x01D432 07:D422: C9 20     CMP #$20
C - - - - - 0x01D434 07:D424: F0 05     BEQ bra_D42B_RTS
C - - - - - 0x01D436 07:D426: 18        CLC
C - - - - - 0x01D437 07:D427: 69 01     ADC #$01
C - - - - - 0x01D439 07:D429: 85 36     STA ram_0036
bra_D42B_RTS:
C - - - - - 0x01D43B 07:D42B: 60        RTS



sub_D42C:
C - - - - - 0x01D43C 07:D42C: A5 16     LDA ram_btn_hold
C - - - - - 0x01D43E 07:D42E: 29 40     AND #con_btn_B
C - - - - - 0x01D440 07:D430: 4A        LSR
C - - - - - 0x01D441 07:D431: 4A        LSR
C - - - - - 0x01D442 07:D432: 05 31     ORA ram_0031
C - - - - - 0x01D444 07:D434: A8        TAY
sub_D435:
C - - - - - 0x01D445 07:D435: AD 80 03  LDA ram_spd_X_lo
C - - - - - 0x01D448 07:D438: 18        CLC
C - - - - - 0x01D449 07:D439: 65 36     ADC ram_0036
C - - - - - 0x01D44B 07:D43B: 8D 80 03  STA ram_spd_X_lo
C - - - - - 0x01D44E 07:D43E: AD 90 03  LDA ram_spd_X_hi
C - - - - - 0x01D451 07:D441: 69 00     ADC #$00
C - - - - - 0x01D453 07:D443: 8D 90 03  STA ram_spd_X_hi
C - - - - - 0x01D456 07:D446: B9 5D CC  LDA tbl_CC5D_spd_X_lo,Y
C - - - - - 0x01D459 07:D449: 38        SEC
C - - - - - 0x01D45A 07:D44A: ED 80 03  SBC ram_spd_X_lo
C - - - - - 0x01D45D 07:D44D: B9 7D CC  LDA tbl_CC7D_spd_X_hi,Y
C - - - - - 0x01D460 07:D450: ED 90 03  SBC ram_spd_X_hi
C - - - - - 0x01D463 07:D453: B0 0C     BCS bra_D461
C - - - - - 0x01D465 07:D455: B9 5D CC  LDA tbl_CC5D_spd_X_lo,Y
C - - - - - 0x01D468 07:D458: 8D 80 03  STA ram_spd_X_lo
C - - - - - 0x01D46B 07:D45B: B9 7D CC  LDA tbl_CC7D_spd_X_hi,Y
C - - - - - 0x01D46E 07:D45E: 8D 90 03  STA ram_spd_X_hi
bra_D461:
C - - - - - 0x01D471 07:D461: AD 90 03  LDA ram_spd_X_hi
C - - - - - 0x01D474 07:D464: D0 0A     BNE bra_D470_RTS
C - - - - - 0x01D476 07:D466: A9 66     LDA #$66
C - - - - - 0x01D478 07:D468: CD 80 03  CMP ram_spd_X_lo
C - - - - - 0x01D47B 07:D46B: 90 03     BCC bra_D470_RTS
C - - - - - 0x01D47D 07:D46D: 8D 80 03  STA ram_spd_X_lo
bra_D470_RTS:
C - - - - - 0x01D480 07:D470: 60        RTS



sub_D471:
C - - - - - 0x01D481 07:D471: BD 30 04  LDA ram_0430_obj,X
C - - - - - 0x01D484 07:D474: C9 09     CMP #$09
C - - - - - 0x01D486 07:D476: D0 09     BNE bra_D481
C - - - - - 0x01D488 07:D478: A9 05     LDA #$05
C - - - - - 0x01D48A 07:D47A: DD 18 04  CMP ram_animation_cnt,X
C - - - - - 0x01D48D 07:D47D: F0 02     BEQ bra_D481
C - - - - - 0x01D48F 07:D47F: 38        SEC
C - - - - - 0x01D490 07:D480: 60        RTS
bra_D481:
C - - - - - 0x01D491 07:D481: 18        CLC
C - - - - - 0x01D492 07:D482: 60        RTS



sub_D483:
C - - - - - 0x01D493 07:D483: A5 11     LDA ram_0011
C - - - - - 0x01D495 07:D485: 29 F0     AND #$F0
C - - - - - 0x01D497 07:D487: 38        SEC
C - - - - - 0x01D498 07:D488: E5 FA     SBC ram_scroll_Y_lo
C - - - - - 0x01D49A 07:D48A: B0 04     BCS bra_D490
- - - - - - 0x01D49C 07:D48C: 49 FF     EOR #$FF
- - - - - - 0x01D49E 07:D48E: 69 01     ADC #$01
bra_D490:
C - - - - - 0x01D4A0 07:D490: 85 00     STA ram_0000
C - - - - - 0x01D4A2 07:D492: A2 00     LDX #$00
C - - - - - 0x01D4A4 07:D494: 86 01     STX ram_0001
loc_D496:
C D 2 - - - 0x01D4A6 07:D496: A0 0F     LDY #$0F
loc_D498_loop:
C D 2 - - - 0x01D4A8 07:D498: BD 00 04  LDA ram_0400_obj,X
C - - - - - 0x01D4AB 07:D49B: 30 03     BMI bra_D4A0
bra_D49D:
C - - - - - 0x01D4AD 07:D49D: 4C 2B D5  JMP loc_D52B
bra_D4A0:
C - - - - - 0x01D4B0 07:D4A0: B9 00 03  LDA ram_obj_flags,Y
C - - - - - 0x01D4B3 07:D4A3: 10 F8     BPL bra_D49D
C - - - - - 0x01D4B5 07:D4A5: B9 00 04  LDA ram_0400_obj,Y
C - - - - - 0x01D4B8 07:D4A8: 10 F3     BPL bra_D49D
C - - - - - 0x01D4BA 07:D4AA: 29 04     AND #$04
C - - - - - 0x01D4BC 07:D4AC: F0 7D     BEQ bra_D52B
C - - - - - 0x01D4BE 07:D4AE: C4 01     CPY ram_0001
C - - - - - 0x01D4C0 07:D4B0: F0 79     BEQ bra_D52B
C - - - - - 0x01D4C2 07:D4B2: BD 30 03  LDA ram_pos_X_lo,X
C - - - - - 0x01D4C5 07:D4B5: 38        SEC
C - - - - - 0x01D4C6 07:D4B6: F9 30 03  SBC ram_pos_X_lo,Y
C - - - - - 0x01D4C9 07:D4B9: 48        PHA
C - - - - - 0x01D4CA 07:D4BA: BD 40 03  LDA ram_pos_X_hi,X
C - - - - - 0x01D4CD 07:D4BD: F9 40 03  SBC ram_pos_X_hi,Y
C - - - - - 0x01D4D0 07:D4C0: 68        PLA
C - - - - - 0x01D4D1 07:D4C1: B0 04     BCS bra_D4C7
C - - - - - 0x01D4D3 07:D4C3: 49 FF     EOR #$FF
C - - - - - 0x01D4D5 07:D4C5: 69 01     ADC #$01
bra_D4C7:
C - - - - - 0x01D4D7 07:D4C7: C9 10     CMP #$10
C - - - - - 0x01D4D9 07:D4C9: B0 60     BCS bra_D52B
C - - - - - 0x01D4DB 07:D4CB: B9 60 03  LDA ram_pos_Y_lo,Y
C - - - - - 0x01D4DE 07:D4CE: 38        SEC
C - - - - - 0x01D4DF 07:D4CF: E5 FA     SBC ram_scroll_Y_lo
C - - - - - 0x01D4E1 07:D4D1: B0 02     BCS bra_D4D5
C - - - - - 0x01D4E3 07:D4D3: E9 0F     SBC #$0F
bra_D4D5:
C - - - - - 0x01D4E5 07:D4D5: 38        SEC
C - - - - - 0x01D4E6 07:D4D6: E5 00     SBC ram_0000
C - - - - - 0x01D4E8 07:D4D8: B0 04     BCS bra_D4DE
C - - - - - 0x01D4EA 07:D4DA: 49 FF     EOR #$FF
C - - - - - 0x01D4EC 07:D4DC: 69 01     ADC #$01
bra_D4DE:
C - - - - - 0x01D4EE 07:D4DE: C9 10     CMP #$10
C - - - - - 0x01D4F0 07:D4E0: B0 49     BCS bra_D52B
C - - - - - 0x01D4F2 07:D4E2: B9 30 04  LDA ram_0430_obj,Y
C - - - - - 0x01D4F5 07:D4E5: C9 40     CMP #$40
C - - - - - 0x01D4F7 07:D4E7: F0 0B     BEQ bra_D4F4
; check for hidden spots
C - - - - - 0x01D4F9 07:D4E9: B9 10 03  LDA ram_obj_id,Y
C - - - - - 0x01D4FC 07:D4EC: C9 4D     CMP #$4D
C - - - - - 0x01D4FE 07:D4EE: 90 3B     BCC bra_D52B
C - - - - - 0x01D500 07:D4F0: C9 57     CMP #$57
C - - - - - 0x01D502 07:D4F2: B0 37     BCS bra_D52B
; if 4D-56
bra_D4F4:
C - - - - - 0x01D504 07:D4F4: B9 10 03  LDA ram_obj_id,Y
C - - - - - 0x01D507 07:D4F7: C9 4D     CMP #con_obj_id_secret_heart_sand
C - - - - - 0x01D509 07:D4F9: F0 0B     BEQ bra_D506
C - - - - - 0x01D50B 07:D4FB: C9 52     CMP #con_obj_id_secret_item_sand
C - - - - - 0x01D50D 07:D4FD: F0 07     BEQ bra_D506
; if not hidden in sand
C - - - - - 0x01D50F 07:D4FF: B9 30 04  LDA ram_0430_obj,Y
C - - - - - 0x01D512 07:D502: C9 40     CMP #$40
C - - - - - 0x01D514 07:D504: D0 04     BNE bra_D50A
bra_D506:
C - - - - - 0x01D516 07:D506: E0 00     CPX #$00
C - - - - - 0x01D518 07:D508: D0 21     BNE bra_D52B
bra_D50A:
C - - - - - 0x01D51A 07:D50A: B9 00 04  LDA ram_0400_obj,Y
C - - - - - 0x01D51D 07:D50D: 29 FB     AND #$FB
C - - - - - 0x01D51F 07:D50F: 99 00 04  STA ram_0400_obj,Y
C - - - - - 0x01D522 07:D512: 86 02     STX ram_0002
C - - - - - 0x01D524 07:D514: 84 03     STY ram_0003
C - - - - - 0x01D526 07:D516: A6 03     LDX ram_0003
C - - - - - 0x01D528 07:D518: 20 64 FE  JSR sub_FE64
C - - - - - 0x01D52B 07:D51B: A6 02     LDX ram_0002
C - - - - - 0x01D52D 07:D51D: A4 03     LDY ram_0003
C - - - - - 0x01D52F 07:D51F: BD 30 04  LDA ram_0430_obj,X
C - - - - - 0x01D532 07:D522: C9 40     CMP #$40
C - - - - - 0x01D534 07:D524: D0 03     BNE bra_D529
C - - - - - 0x01D536 07:D526: 20 64 FE  JSR sub_FE64
bra_D529:
C - - - - - 0x01D539 07:D529: 18        CLC
C - - - - - 0x01D53A 07:D52A: 60        RTS
bra_D52B:
loc_D52B:
C D 2 - - - 0x01D53B 07:D52B: 88        DEY
C - - - - - 0x01D53C 07:D52C: C0 02     CPY #$02
C - - - - - 0x01D53E 07:D52E: F0 03     BEQ bra_D533
C - - - - - 0x01D540 07:D530: 4C 98 D4  JMP loc_D498_loop
bra_D533:
bra_D533_loop:
C - - - - - 0x01D543 07:D533: 38        SEC
C - - - - - 0x01D544 07:D534: 60        RTS



sub_0x01D545:
C - - - - - 0x01D545 07:D535: BD 00 04  LDA ram_0400_obj,X
C - - - - - 0x01D548 07:D538: 10 F9     BPL bra_D533_loop
C - - - - - 0x01D54A 07:D53A: 86 01     STX ram_0001
C - - - - - 0x01D54C 07:D53C: BD 60 03  LDA ram_pos_Y_lo,X
C - - - - - 0x01D54F 07:D53F: 38        SEC
C - - - - - 0x01D550 07:D540: E5 FA     SBC ram_scroll_Y_lo
C - - - - - 0x01D552 07:D542: B0 03     BCS bra_D547
C - - - - - 0x01D554 07:D544: E9 0F     SBC #$0F
C - - - - - 0x01D556 07:D546: 18        CLC
bra_D547:
C - - - - - 0x01D557 07:D547: 85 00     STA ram_0000
C - - - - - 0x01D559 07:D549: BD 70 03  LDA ram_pos_Y_hi,X
C - - - - - 0x01D55C 07:D54C: E5 FB     SBC ram_scroll_Y_hi
C - - - - - 0x01D55E 07:D54E: 29 01     AND #$01
C - - - - - 0x01D560 07:D550: D0 E1     BNE bra_D533_loop
C - - - - - 0x01D562 07:D552: 4C 96 D4  JMP loc_D496



sub_D555:
C - - - - - 0x01D565 07:D555: A0 0F     LDY #$0F
bra_D557_loop:
C - - - - - 0x01D567 07:D557: B9 00 03  LDA ram_obj_flags,Y
C - - - - - 0x01D56A 07:D55A: 10 1C     BPL bra_D578
C - - - - - 0x01D56C 07:D55C: B9 30 04  LDA ram_0430_obj,Y
C - - - - - 0x01D56F 07:D55F: C9 89     CMP #$89
C - - - - - 0x01D571 07:D561: D0 15     BNE bra_D578
C - - - - - 0x01D573 07:D563: B9 00 04  LDA ram_0400_obj,Y
C - - - - - 0x01D576 07:D566: 29 BF     AND #$BF
C - - - - - 0x01D578 07:D568: 99 00 04  STA ram_0400_obj,Y
C - - - - - 0x01D57B 07:D56B: A9 88     LDA #$88
C - - - - - 0x01D57D 07:D56D: 99 30 04  STA ram_0430_obj,Y
C - - - - - 0x01D580 07:D570: A9 00     LDA #$00
C - - - - - 0x01D582 07:D572: 99 48 04  STA ram_0448,Y
C - - - - - 0x01D585 07:D575: 99 18 04  STA ram_animation_cnt,Y
bra_D578:
C - - - - - 0x01D588 07:D578: 88        DEY
C - - - - - 0x01D589 07:D579: C0 02     CPY #$02
C - - - - - 0x01D58B 07:D57B: D0 DA     BNE bra_D557_loop
C - - - - - 0x01D58D 07:D57D: 60        RTS



sub_D57E:
C - - - - - 0x01D58E 07:D57E: A0 0F     LDY #$0F
bra_D580_loop:
C - - - - - 0x01D590 07:D580: B9 00 03  LDA ram_obj_flags,Y
C - - - - - 0x01D593 07:D583: 10 1E     BPL bra_D5A3
C - - - - - 0x01D595 07:D585: B9 30 04  LDA ram_0430_obj,Y
C - - - - - 0x01D598 07:D588: C9 85     CMP #$85
C - - - - - 0x01D59A 07:D58A: D0 17     BNE bra_D5A3
C - - - - - 0x01D59C 07:D58C: B9 00 04  LDA ram_0400_obj,Y
C - - - - - 0x01D59F 07:D58F: 29 04     AND #$04
C - - - - - 0x01D5A1 07:D591: D0 15     BNE bra_D5A8_RTS
C - - - - - 0x01D5A3 07:D593: B9 18 04  LDA ram_animation_cnt,Y
C - - - - - 0x01D5A6 07:D596: C9 0B     CMP #$0B
C - - - - - 0x01D5A8 07:D598: D0 0E     BNE bra_D5A8_RTS
C - - - - - 0x01D5AA 07:D59A: B9 00 04  LDA ram_0400_obj,Y
C - - - - - 0x01D5AD 07:D59D: 09 04     ORA #$04
C - - - - - 0x01D5AF 07:D59F: 99 00 04  STA ram_0400_obj,Y
C - - - - - 0x01D5B2 07:D5A2: 60        RTS
bra_D5A3:
C - - - - - 0x01D5B3 07:D5A3: 88        DEY
C - - - - - 0x01D5B4 07:D5A4: C0 02     CPY #$02
C - - - - - 0x01D5B6 07:D5A6: D0 D8     BNE bra_D580_loop
bra_D5A8_RTS:
C - - - - - 0x01D5B8 07:D5A8: 60        RTS



sub_D5A9:
C - - - - - 0x01D5B9 07:D5A9: A5 E9     LDA ram_stage
C - - - - - 0x01D5BB 07:D5AB: C9 05     CMP #$05
C - - - - - 0x01D5BD 07:D5AD: D0 3E     BNE bra_D5ED
; if final battle
C - - - - - 0x01D5BF 07:D5AF: 20 7E D5  JSR sub_D57E
C - - - - - 0x01D5C2 07:D5B2: A5 7A     LDA ram_007A
C - - - - - 0x01D5C4 07:D5B4: F0 37     BEQ bra_D5ED
C - - - - - 0x01D5C6 07:D5B6: 20 69 D6  JSR sub_D669
C - - - - - 0x01D5C9 07:D5B9: A5 7E     LDA ram_007E
C - - - - - 0x01D5CB 07:D5BB: F0 14     BEQ bra_D5D1
C - - - - - 0x01D5CD 07:D5BD: C6 7E     DEC ram_007E
C - - - - - 0x01D5CF 07:D5BF: E6 7D     INC ram_007D
C - - - - - 0x01D5D1 07:D5C1: A5 7B     LDA ram_007B
C - - - - - 0x01D5D3 07:D5C3: 18        CLC
C - - - - - 0x01D5D4 07:D5C4: 65 7D     ADC ram_007D
C - - - - - 0x01D5D6 07:D5C6: C9 B3     CMP #$B3
C - - - - - 0x01D5D8 07:D5C8: 90 02     BCC bra_D5CC
C - - - - - 0x01D5DA 07:D5CA: A9 B3     LDA #$B3
bra_D5CC:
C - - - - - 0x01D5DC 07:D5CC: 85 7B     STA ram_007B
C - - - - - 0x01D5DE 07:D5CE: 4C EF D5  JMP loc_D5EF
bra_D5D1:
C - - - - - 0x01D5E1 07:D5D1: C6 7D     DEC ram_007D
C - - - - - 0x01D5E3 07:D5D3: A9 01     LDA #$01
C - - - - - 0x01D5E5 07:D5D5: C5 7D     CMP ram_007D
C - - - - - 0x01D5E7 07:D5D7: 90 02     BCC bra_D5DB
- - - - - - 0x01D5E9 07:D5D9: 85 7D     STA ram_007D
bra_D5DB:
C - - - - - 0x01D5EB 07:D5DB: A5 7B     LDA ram_007B
C - - - - - 0x01D5ED 07:D5DD: 38        SEC
C - - - - - 0x01D5EE 07:D5DE: E5 7D     SBC ram_007D
C - - - - - 0x01D5F0 07:D5E0: B0 02     BCS bra_D5E4
C - - - - - 0x01D5F2 07:D5E2: A9 00     LDA #$00
bra_D5E4:
C - - - - - 0x01D5F4 07:D5E4: 85 7B     STA ram_007B
C - - - - - 0x01D5F6 07:D5E6: D0 07     BNE bra_D5EF
C - - - - - 0x01D5F8 07:D5E8: 85 7A     STA ram_007A
C - - - - - 0x01D5FA 07:D5EA: 20 55 D5  JSR sub_D555
bra_D5ED:
C - - - - - 0x01D5FD 07:D5ED: 38        SEC
C - - - - - 0x01D5FE 07:D5EE: 60        RTS
bra_D5EF:
loc_D5EF:
C D 2 - - - 0x01D5FF 07:D5EF: A5 7A     LDA ram_007A
C - - - - - 0x01D601 07:D5F1: 85 00     STA ram_0000
C - - - - - 0x01D603 07:D5F3: A5 7B     LDA ram_007B
C - - - - - 0x01D605 07:D5F5: 85 01     STA ram_0001
C - - - - - 0x01D607 07:D5F7: A9 00     LDA #$00
C - - - - - 0x01D609 07:D5F9: 85 02     STA ram_0002
C - - - - - 0x01D60B 07:D5FB: A5 31     LDA ram_0031
C - - - - - 0x01D60D 07:D5FD: 29 03     AND #$03
C - - - - - 0x01D60F 07:D5FF: F0 3F     BEQ bra_D640
C - - - - - 0x01D611 07:D601: C5 7A     CMP ram_007A
C - - - - - 0x01D613 07:D603: F0 2A     BEQ bra_D62F
C - - - - - 0x01D615 07:D605: 85 00     STA ram_0000
C - - - - - 0x01D617 07:D607: AD 80 03  LDA ram_spd_X_lo
C - - - - - 0x01D61A 07:D60A: 38        SEC
C - - - - - 0x01D61B 07:D60B: E5 7B     SBC ram_007B
C - - - - - 0x01D61D 07:D60D: 85 01     STA ram_0001
C - - - - - 0x01D61F 07:D60F: AD 90 03  LDA ram_spd_X_hi
C - - - - - 0x01D622 07:D612: E9 00     SBC #$00
C - - - - - 0x01D624 07:D614: 85 02     STA ram_0002
C - - - - - 0x01D626 07:D616: B0 28     BCS bra_D640
C - - - - - 0x01D628 07:D618: A5 7A     LDA ram_007A
C - - - - - 0x01D62A 07:D61A: 85 00     STA ram_0000
C - - - - - 0x01D62C 07:D61C: A5 01     LDA ram_0001
C - - - - - 0x01D62E 07:D61E: 49 FF     EOR #$FF
C - - - - - 0x01D630 07:D620: 69 01     ADC #$01
C - - - - - 0x01D632 07:D622: 85 01     STA ram_0001
C - - - - - 0x01D634 07:D624: A5 02     LDA ram_0002
C - - - - - 0x01D636 07:D626: 49 FF     EOR #$FF
C - - - - - 0x01D638 07:D628: 69 00     ADC #$00
C - - - - - 0x01D63A 07:D62A: 85 02     STA ram_0002
C - - - - - 0x01D63C 07:D62C: 4C 40 D6  JMP loc_D640
bra_D62F:
C - - - - - 0x01D63F 07:D62F: 85 00     STA ram_0000
C - - - - - 0x01D641 07:D631: AD 80 03  LDA ram_spd_X_lo
C - - - - - 0x01D644 07:D634: 18        CLC
C - - - - - 0x01D645 07:D635: 65 7B     ADC ram_007B
C - - - - - 0x01D647 07:D637: 85 01     STA ram_0001
C - - - - - 0x01D649 07:D639: AD 90 03  LDA ram_spd_X_hi
C - - - - - 0x01D64C 07:D63C: 69 00     ADC #$00
C - - - - - 0x01D64E 07:D63E: 85 02     STA ram_0002
bra_D640:
loc_D640:
C D 2 - - - 0x01D650 07:D640: AD 80 03  LDA ram_spd_X_lo
C - - - - - 0x01D653 07:D643: 48        PHA
C - - - - - 0x01D654 07:D644: AD 90 03  LDA ram_spd_X_hi
C - - - - - 0x01D657 07:D647: 48        PHA
C - - - - - 0x01D658 07:D648: AD 00 04  LDA ram_0400_obj
C - - - - - 0x01D65B 07:D64B: 48        PHA
C - - - - - 0x01D65C 07:D64C: A5 01     LDA ram_0001
C - - - - - 0x01D65E 07:D64E: 8D 80 03  STA ram_spd_X_lo
C - - - - - 0x01D661 07:D651: A5 02     LDA ram_0002
C - - - - - 0x01D663 07:D653: 8D 90 03  STA ram_spd_X_hi
C - - - - - 0x01D666 07:D656: A5 00     LDA ram_0000
C - - - - - 0x01D668 07:D658: 20 FF CE  JSR sub_CEFF
C - - - - - 0x01D66B 07:D65B: 68        PLA
C - - - - - 0x01D66C 07:D65C: 8D 00 04  STA ram_0400_obj
C - - - - - 0x01D66F 07:D65F: 68        PLA
C - - - - - 0x01D670 07:D660: 8D 90 03  STA ram_spd_X_hi
C - - - - - 0x01D673 07:D663: 68        PLA
C - - - - - 0x01D674 07:D664: 8D 80 03  STA ram_spd_X_lo
C - - - - - 0x01D677 07:D667: 18        CLC
bra_D668_RTS:
C - - - - - 0x01D678 07:D668: 60        RTS



sub_D669:
C - - - - - 0x01D679 07:D669: A5 7E     LDA ram_007E
C - - - - - 0x01D67B 07:D66B: F0 FB     BEQ bra_D668_RTS
C - - - - - 0x01D67D 07:D66D: 29 3F     AND #$3F
C - - - - - 0x01D67F 07:D66F: D0 F7     BNE bra_D668_RTS
C - - - - - 0x01D681 07:D671: 20 54 FE  JSR sub_FE54
C - - - - - 0x01D684 07:D674: B0 F2     BCS bra_D668_RTS
C - - - - - 0x01D686 07:D676: A9 8A     LDA #$8A
C - - - - - 0x01D688 07:D678: 20 51 FC  JSR sub_FC51
C - - - - - 0x01D68B 07:D67B: A9 00     LDA #$00
C - - - - - 0x01D68D 07:D67D: 99 40 03  STA ram_pos_X_hi,Y
C - - - - - 0x01D690 07:D680: 99 70 03  STA ram_pos_Y_hi,Y
C - - - - - 0x01D693 07:D683: 99 C0 03  STA ram_03C0_obj,Y
C - - - - - 0x01D696 07:D686: 99 30 03  STA ram_pos_X_lo,Y
C - - - - - 0x01D699 07:D689: 99 90 03  STA ram_spd_X_hi,Y
C - - - - - 0x01D69C 07:D68C: A9 B3     LDA #$B3
C - - - - - 0x01D69E 07:D68E: 99 80 03  STA ram_spd_X_lo,Y
C - - - - - 0x01D6A1 07:D691: A9 5D     LDA #con_obj_id_swimming_bubbles
C - - - - - 0x01D6A3 07:D693: 99 10 03  STA ram_obj_id,Y
C - - - - - 0x01D6A6 07:D696: A5 7A     LDA ram_007A
C - - - - - 0x01D6A8 07:D698: 99 D0 03  STA ram_direction,Y
C - - - - - 0x01D6AB 07:D69B: 29 01     AND #$01
C - - - - - 0x01D6AD 07:D69D: D0 05     BNE bra_D6A4
C - - - - - 0x01D6AF 07:D69F: A9 FC     LDA #$FC
C - - - - - 0x01D6B1 07:D6A1: 99 30 03  STA ram_pos_X_lo,Y
bra_D6A4:
C - - - - - 0x01D6B4 07:D6A4: 86 00     STX ram_0000
C - - - - - 0x01D6B6 07:D6A6: A6 1C     LDX ram_001C
C - - - - - 0x01D6B8 07:D6A8: BD BA D6  LDA tbl_D6BA,X
C - - - - - 0x01D6BB 07:D6AB: 99 60 03  STA ram_pos_Y_lo,Y
C - - - - - 0x01D6BE 07:D6AE: E8        INX
C - - - - - 0x01D6BF 07:D6AF: E0 03     CPX #$03
C - - - - - 0x01D6C1 07:D6B1: D0 02     BNE bra_D6B5
C - - - - - 0x01D6C3 07:D6B3: A2 00     LDX #$00
bra_D6B5:
C - - - - - 0x01D6C5 07:D6B5: 86 1C     STX ram_001C
C - - - - - 0x01D6C7 07:D6B7: A6 00     LDX ram_0000
C - - - - - 0x01D6C9 07:D6B9: 60        RTS



tbl_D6BA:
- D 2 - - - 0x01D6CA 07:D6BA: 88        .byte $88   ; 00
- D 2 - - - 0x01D6CB 07:D6BB: C8        .byte $C8   ; 01
- D 2 - - - 0x01D6CC 07:D6BC: A8        .byte $A8   ; 02



sub_D6BD:
loc_D6BD:
C D 2 - - - 0x01D6CD 07:D6BD: A5 01     LDA ram_0001
C - - - - - 0x01D6CF 07:D6BF: 85 26     STA ram_0026
C - - - - - 0x01D6D1 07:D6C1: F0 3A     BEQ bra_D6FD_RTS
C - - - - - 0x01D6D3 07:D6C3: A9 00     LDA #$00
C - - - - - 0x01D6D5 07:D6C5: 85 04     STA ram_0004
C - - - - - 0x01D6D7 07:D6C7: A9 1F     LDA #$1F
C - - - - - 0x01D6D9 07:D6C9: 85 05     STA ram_0005
bra_D6CB_loop:
C - - - - - 0x01D6DB 07:D6CB: A5 22     LDA ram_0022
C - - - - - 0x01D6DD 07:D6CD: 48        PHA
C - - - - - 0x01D6DE 07:D6CE: 29 07     AND #$07
C - - - - - 0x01D6E0 07:D6D0: 0A        ASL
C - - - - - 0x01D6E1 07:D6D1: 0A        ASL
C - - - - - 0x01D6E2 07:D6D2: 0A        ASL
C - - - - - 0x01D6E3 07:D6D3: 85 00     STA ram_0000
C - - - - - 0x01D6E5 07:D6D5: 68        PLA
C - - - - - 0x01D6E6 07:D6D6: 29 38     AND #$38
C - - - - - 0x01D6E8 07:D6D8: 4A        LSR
C - - - - - 0x01D6E9 07:D6D9: 4A        LSR
C - - - - - 0x01D6EA 07:D6DA: 4A        LSR
C - - - - - 0x01D6EB 07:D6DB: 05 00     ORA ram_0000
C - - - - - 0x01D6ED 07:D6DD: 85 21     STA ram_0021
C - - - - - 0x01D6EF 07:D6DF: 20 C7 D8  JSR sub_D8C7
C - - - - - 0x01D6F2 07:D6E2: 20 FE D6  JSR sub_D6FE
C - - - - - 0x01D6F5 07:D6E5: C6 26     DEC ram_0026
C - - - - - 0x01D6F7 07:D6E7: F0 0B     BEQ bra_D6F4
C - - - - - 0x01D6F9 07:D6E9: A5 05     LDA ram_0005
C - - - - - 0x01D6FB 07:D6EB: 85 04     STA ram_0004
C - - - - - 0x01D6FD 07:D6ED: 18        CLC
C - - - - - 0x01D6FE 07:D6EE: 69 1F     ADC #$1F
C - - - - - 0x01D700 07:D6F0: 85 05     STA ram_0005
C - - - - - 0x01D702 07:D6F2: D0 D7     BNE bra_D6CB_loop
bra_D6F4:
C - - - - - 0x01D704 07:D6F4: A6 05     LDX ram_0005
C - - - - - 0x01D706 07:D6F6: A9 FF     LDA #$FF
C - - - - - 0x01D708 07:D6F8: 9D 80 07  STA ram_ppu_buffer,X
C - - - - - 0x01D70B 07:D6FB: 85 19     STA ram_0019
bra_D6FD_RTS:
C - - - - - 0x01D70D 07:D6FD: 60        RTS



sub_D6FE:
C - - - - - 0x01D70E 07:D6FE: A5 22     LDA ram_0022
C - - - - - 0x01D710 07:D700: 29 40     AND #$40
C - - - - - 0x01D712 07:D702: 4A        LSR
C - - - - - 0x01D713 07:D703: 4A        LSR
C - - - - - 0x01D714 07:D704: 4A        LSR
C - - - - - 0x01D715 07:D705: 4A        LSR
C - - - - - 0x01D716 07:D706: 09 20     ORA #$20
C - - - - - 0x01D718 07:D708: 85 00     STA ram_0000
C - - - - - 0x01D71A 07:D70A: 09 03     ORA #$03
C - - - - - 0x01D71C 07:D70C: A6 04     LDX ram_0004
C - - - - - 0x01D71E 07:D70E: 9D 9C 07  STA ram_ppu_buffer + $1C,X
C - - - - - 0x01D721 07:D711: A5 22     LDA ram_0022
C - - - - - 0x01D723 07:D713: 48        PHA
C - - - - - 0x01D724 07:D714: 29 07     AND #$07
C - - - - - 0x01D726 07:D716: 4A        LSR
C - - - - - 0x01D727 07:D717: 18        CLC
C - - - - - 0x01D728 07:D718: 65 00     ADC ram_0000
C - - - - - 0x01D72A 07:D71A: 85 00     STA ram_0000
C - - - - - 0x01D72C 07:D71C: 68        PLA
C - - - - - 0x01D72D 07:D71D: 29 01     AND #$01
C - - - - - 0x01D72F 07:D71F: F0 02     BEQ bra_D723
C - - - - - 0x01D731 07:D721: A9 80     LDA #$80
bra_D723:
C - - - - - 0x01D733 07:D723: 85 01     STA ram_0001
C - - - - - 0x01D735 07:D725: A5 22     LDA ram_0022
C - - - - - 0x01D737 07:D727: 29 38     AND #$38
C - - - - - 0x01D739 07:D729: 4A        LSR
C - - - - - 0x01D73A 07:D72A: 05 01     ORA ram_0001
C - - - - - 0x01D73C 07:D72C: 85 01     STA ram_0001
C - - - - - 0x01D73E 07:D72E: A9 00     LDA #$00
C - - - - - 0x01D740 07:D730: 9D 9E 07  STA ram_ppu_buffer + $1E,X
C - - - - - 0x01D743 07:D733: A5 22     LDA ram_0022
C - - - - - 0x01D745 07:D735: 29 40     AND #$40
C - - - - - 0x01D747 07:D737: 05 21     ORA ram_0021
C - - - - - 0x01D749 07:D739: A8        TAY
C - - - - - 0x01D74A 07:D73A: A5 10     LDA ram_0010
C - - - - - 0x01D74C 07:D73C: 9D 9F 07  STA ram_ppu_buffer + $1F,X
C - - - - - 0x01D74F 07:D73F: 99 40 06  STA ram_bg_attr_buffer,Y
C - - - - - 0x01D752 07:D742: A5 21     LDA ram_0021
C - - - - - 0x01D754 07:D744: 09 C0     ORA #$C0
C - - - - - 0x01D756 07:D746: 9D 9D 07  STA ram_ppu_buffer + $1D,X
C - - - - - 0x01D759 07:D749: A2 03     LDX #$03
C - - - - - 0x01D75B 07:D74B: C9 F8     CMP #$F8
C - - - - - 0x01D75D 07:D74D: 90 17     BCC bra_D766
C - - - - - 0x01D75F 07:D74F: A4 05     LDY ram_0005
C - - - - - 0x01D761 07:D751: A2 03     LDX #$03
bra_D753_loop:
C - - - - - 0x01D763 07:D753: B9 80 07  LDA ram_ppu_buffer,Y
C - - - - - 0x01D766 07:D756: 99 72 07  STA ram_0772,Y
C - - - - - 0x01D769 07:D759: 88        DEY
C - - - - - 0x01D76A 07:D75A: CA        DEX
C - - - - - 0x01D76B 07:D75B: 10 F6     BPL bra_D753_loop
C - - - - - 0x01D76D 07:D75D: A5 04     LDA ram_0004
C - - - - - 0x01D76F 07:D75F: 18        CLC
C - - - - - 0x01D770 07:D760: 69 11     ADC #$11
C - - - - - 0x01D772 07:D762: 85 05     STA ram_0005
C - - - - - 0x01D774 07:D764: A2 01     LDX #$01
bra_D766:
C - - - - - 0x01D776 07:D766: 86 02     STX ram_0002
C - - - - - 0x01D778 07:D768: A2 00     LDX #$00
C - - - - - 0x01D77A 07:D76A: A4 04     LDY ram_0004
bra_D76C_loop:
C - - - - - 0x01D77C 07:D76C: A5 00     LDA ram_0000
C - - - - - 0x01D77E 07:D76E: 99 80 07  STA ram_ppu_buffer,Y
C - - - - - 0x01D781 07:D771: A5 01     LDA ram_0001
C - - - - - 0x01D783 07:D773: 99 81 07  STA ram_ppu_buffer + $01,Y
C - - - - - 0x01D786 07:D776: 18        CLC
C - - - - - 0x01D787 07:D777: 69 20     ADC #$20
C - - - - - 0x01D789 07:D779: 85 01     STA ram_0001
C - - - - - 0x01D78B 07:D77B: A9 03     LDA #$03
C - - - - - 0x01D78D 07:D77D: 99 82 07  STA ram_ppu_buffer + $02,Y
C - - - - - 0x01D790 07:D780: BD C0 06  LDA ram_06C0_unk,X
C - - - - - 0x01D793 07:D783: 99 83 07  STA ram_ppu_buffer + $03,Y
C - - - - - 0x01D796 07:D786: BD C1 06  LDA ram_06C0_unk + $01,X
C - - - - - 0x01D799 07:D789: 99 84 07  STA ram_ppu_buffer + $04,Y
C - - - - - 0x01D79C 07:D78C: BD C2 06  LDA ram_06C0_unk + $02,X
C - - - - - 0x01D79F 07:D78F: 99 85 07  STA ram_ppu_buffer + $05,Y
C - - - - - 0x01D7A2 07:D792: BD C3 06  LDA ram_06C0_unk + $03,X
C - - - - - 0x01D7A5 07:D795: 99 86 07  STA ram_ppu_buffer + $06,Y
C - - - - - 0x01D7A8 07:D798: C8        INY
C - - - - - 0x01D7A9 07:D799: C8        INY
C - - - - - 0x01D7AA 07:D79A: C8        INY
C - - - - - 0x01D7AB 07:D79B: C8        INY
C - - - - - 0x01D7AC 07:D79C: C8        INY
C - - - - - 0x01D7AD 07:D79D: C8        INY
C - - - - - 0x01D7AE 07:D79E: C8        INY
C - - - - - 0x01D7AF 07:D79F: E8        INX
C - - - - - 0x01D7B0 07:D7A0: E8        INX
C - - - - - 0x01D7B1 07:D7A1: E8        INX
C - - - - - 0x01D7B2 07:D7A2: E8        INX
C - - - - - 0x01D7B3 07:D7A3: C6 02     DEC ram_0002
C - - - - - 0x01D7B5 07:D7A5: 10 C5     BPL bra_D76C_loop
C - - - - - 0x01D7B7 07:D7A7: E6 05     INC ram_0005
C - - - - - 0x01D7B9 07:D7A9: A5 27     LDA ram_0027
C - - - - - 0x01D7BB 07:D7AB: 29 01     AND #$01
C - - - - - 0x01D7BD 07:D7AD: D0 11     BNE bra_D7C0
C - - - - - 0x01D7BF 07:D7AF: C6 22     DEC ram_0022
C - - - - - 0x01D7C1 07:D7B1: A5 22     LDA ram_0022
C - - - - - 0x01D7C3 07:D7B3: 29 7F     AND #$7F
C - - - - - 0x01D7C5 07:D7B5: 85 22     STA ram_0022
C - - - - - 0x01D7C7 07:D7B7: 29 3F     AND #$3F
C - - - - - 0x01D7C9 07:D7B9: C9 3F     CMP #$3F
C - - - - - 0x01D7CB 07:D7BB: D0 11     BNE bra_D7CE_RTS
C - - - - - 0x01D7CD 07:D7BD: C6 20     DEC ram_0020
C - - - - - 0x01D7CF 07:D7BF: 60        RTS
bra_D7C0:
C - - - - - 0x01D7D0 07:D7C0: E6 22     INC ram_0022
C - - - - - 0x01D7D2 07:D7C2: A5 22     LDA ram_0022
C - - - - - 0x01D7D4 07:D7C4: 29 7F     AND #$7F
C - - - - - 0x01D7D6 07:D7C6: 85 22     STA ram_0022
C - - - - - 0x01D7D8 07:D7C8: 29 3F     AND #$3F
C - - - - - 0x01D7DA 07:D7CA: D0 02     BNE bra_D7CE_RTS
C - - - - - 0x01D7DC 07:D7CC: E6 20     INC ram_0020
bra_D7CE_RTS:
C - - - - - 0x01D7DE 07:D7CE: 60        RTS



sub_D7CF:
C - - - - - 0x01D7DF 07:D7CF: A5 22     LDA ram_0022
C - - - - - 0x01D7E1 07:D7D1: 29 FC     AND #$FC
C - - - - - 0x01D7E3 07:D7D3: 0A        ASL
C - - - - - 0x01D7E4 07:D7D4: 85 21     STA ram_0021
C - - - - - 0x01D7E6 07:D7D6: 20 DA D7  JSR sub_D7DA
C - - - - - 0x01D7E9 07:D7D9: 60        RTS



sub_D7DA:
C - - - - - 0x01D7EA 07:D7DA: A5 FD     LDA ram_scroll_X_hi
C - - - - - 0x01D7EC 07:D7DC: 29 01     AND #$01
C - - - - - 0x01D7EE 07:D7DE: 0A        ASL
C - - - - - 0x01D7EF 07:D7DF: 0A        ASL
C - - - - - 0x01D7F0 07:D7E0: 09 20     ORA #$20
C - - - - - 0x01D7F2 07:D7E2: 85 00     STA ram_0000
C - - - - - 0x01D7F4 07:D7E4: 09 03     ORA #$03
C - - - - - 0x01D7F6 07:D7E6: 8D A3 07  STA ram_ppu_buffer + $23
C - - - - - 0x01D7F9 07:D7E9: A5 21     LDA ram_0021
C - - - - - 0x01D7FB 07:D7EB: 4A        LSR
C - - - - - 0x01D7FC 07:D7EC: 4A        LSR
C - - - - - 0x01D7FD 07:D7ED: 4A        LSR
C - - - - - 0x01D7FE 07:D7EE: 4A        LSR
C - - - - - 0x01D7FF 07:D7EF: 18        CLC
C - - - - - 0x01D800 07:D7F0: 65 00     ADC ram_0000
C - - - - - 0x01D802 07:D7F2: 8D 80 07  STA ram_ppu_buffer
C - - - - - 0x01D805 07:D7F5: A5 21     LDA ram_0021
C - - - - - 0x01D807 07:D7F7: 09 C0     ORA #$C0
C - - - - - 0x01D809 07:D7F9: 8D A4 07  STA ram_ppu_buffer + $24
C - - - - - 0x01D80C 07:D7FC: A5 22     LDA ram_0022
C - - - - - 0x01D80E 07:D7FE: 0A        ASL
C - - - - - 0x01D80F 07:D7FF: 0A        ASL
C - - - - - 0x01D810 07:D800: 0A        ASL
C - - - - - 0x01D811 07:D801: 0A        ASL
C - - - - - 0x01D812 07:D802: 0A        ASL
C - - - - - 0x01D813 07:D803: 8D 81 07  STA ram_ppu_buffer + $01
C - - - - - 0x01D816 07:D806: A9 1F     LDA #$1F
C - - - - - 0x01D818 07:D808: 8D 82 07  STA ram_ppu_buffer + $02
C - - - - - 0x01D81B 07:D80B: A9 07     LDA #$07
C - - - - - 0x01D81D 07:D80D: 8D A5 07  STA ram_ppu_buffer + $25
C - - - - - 0x01D820 07:D810: A9 00     LDA #$00
C - - - - - 0x01D822 07:D812: 85 03     STA ram_0003
loc_D814:
C D 2 - - - 0x01D824 07:D814: 20 C7 D8  JSR sub_D8C7
C - - - - - 0x01D827 07:D817: A5 22     LDA ram_0022
C - - - - - 0x01D829 07:D819: 29 01     AND #$01
C - - - - - 0x01D82B 07:D81B: D0 3B     BNE bra_D858
C - - - - - 0x01D82D 07:D81D: A5 FD     LDA ram_scroll_X_hi
C - - - - - 0x01D82F 07:D81F: 6A        ROR
C - - - - - 0x01D830 07:D820: 6A        ROR
C - - - - - 0x01D831 07:D821: 6A        ROR
C - - - - - 0x01D832 07:D822: 29 40     AND #$40
C - - - - - 0x01D834 07:D824: 05 21     ORA ram_0021
C - - - - - 0x01D836 07:D826: A8        TAY
C - - - - - 0x01D837 07:D827: A5 22     LDA ram_0022
C - - - - - 0x01D839 07:D829: 29 02     AND #$02
C - - - - - 0x01D83B 07:D82B: F0 10     BEQ bra_D83D
C - - - - - 0x01D83D 07:D82D: A5 10     LDA ram_0010
C - - - - - 0x01D83F 07:D82F: 29 F0     AND #$F0
C - - - - - 0x01D841 07:D831: 85 10     STA ram_0010
C - - - - - 0x01D843 07:D833: B9 40 06  LDA ram_bg_attr_buffer,Y
C - - - - - 0x01D846 07:D836: 29 0F     AND #$0F
C - - - - - 0x01D848 07:D838: 05 10     ORA ram_0010
C - - - - - 0x01D84A 07:D83A: 4C 4A D8  JMP loc_D84A
bra_D83D:
C - - - - - 0x01D84D 07:D83D: A5 10     LDA ram_0010
C - - - - - 0x01D84F 07:D83F: 29 0F     AND #$0F
C - - - - - 0x01D851 07:D841: 85 10     STA ram_0010
C - - - - - 0x01D853 07:D843: B9 40 06  LDA ram_bg_attr_buffer,Y
C - - - - - 0x01D856 07:D846: 29 F0     AND #$F0
C - - - - - 0x01D858 07:D848: 05 10     ORA ram_0010
loc_D84A:
C D 2 - - - 0x01D85A 07:D84A: 99 40 06  STA ram_bg_attr_buffer,Y
C - - - - - 0x01D85D 07:D84D: A5 03     LDA ram_0003
C - - - - - 0x01D85F 07:D84F: 4A        LSR
C - - - - - 0x01D860 07:D850: 4A        LSR
C - - - - - 0x01D861 07:D851: AA        TAX
C - - - - - 0x01D862 07:D852: B9 40 06  LDA ram_bg_attr_buffer,Y
C - - - - - 0x01D865 07:D855: 9D A6 07  STA ram_ppu_buffer + $26,X
bra_D858:
C - - - - - 0x01D868 07:D858: A5 22     LDA ram_0022
C - - - - - 0x01D86A 07:D85A: 29 03     AND #$03
C - - - - - 0x01D86C 07:D85C: 0A        ASL
C - - - - - 0x01D86D 07:D85D: 0A        ASL
C - - - - - 0x01D86E 07:D85E: A8        TAY
C - - - - - 0x01D86F 07:D85F: A6 03     LDX ram_0003
C - - - - - 0x01D871 07:D861: B9 C0 06  LDA ram_06C0_unk,Y
C - - - - - 0x01D874 07:D864: 9D 83 07  STA ram_ppu_buffer + $03,X
C - - - - - 0x01D877 07:D867: B9 C1 06  LDA ram_06C0_unk + $01,Y
C - - - - - 0x01D87A 07:D86A: 9D 84 07  STA ram_ppu_buffer + $04,X
C - - - - - 0x01D87D 07:D86D: B9 C2 06  LDA ram_06C0_unk + $02,Y
C - - - - - 0x01D880 07:D870: 9D 85 07  STA ram_ppu_buffer + $05,X
C - - - - - 0x01D883 07:D873: B9 C3 06  LDA ram_06C0_unk + $03,Y
C - - - - - 0x01D886 07:D876: 9D 86 07  STA ram_ppu_buffer + $06,X
C - - - - - 0x01D889 07:D879: E8        INX
C - - - - - 0x01D88A 07:D87A: E8        INX
C - - - - - 0x01D88B 07:D87B: E8        INX
C - - - - - 0x01D88C 07:D87C: E8        INX
C - - - - - 0x01D88D 07:D87D: E0 20     CPX #$20
C - - - - - 0x01D88F 07:D87F: F0 07     BEQ bra_D888
C - - - - - 0x01D891 07:D881: 86 03     STX ram_0003
C - - - - - 0x01D893 07:D883: E6 21     INC ram_0021
C - - - - - 0x01D895 07:D885: 4C 14 D8  JMP loc_D814
bra_D888:
C - - - - - 0x01D898 07:D888: A2 23     LDX #$23
C - - - - - 0x01D89A 07:D88A: A5 22     LDA ram_0022
C - - - - - 0x01D89C 07:D88C: 29 01     AND #$01
C - - - - - 0x01D89E 07:D88E: D0 02     BNE bra_D892
C - - - - - 0x01D8A0 07:D890: A2 2E     LDX #$2E
bra_D892:
C - - - - - 0x01D8A2 07:D892: A9 FF     LDA #$FF
C - - - - - 0x01D8A4 07:D894: 9D 80 07  STA ram_ppu_buffer,X
C - - - - - 0x01D8A7 07:D897: 85 19     STA ram_0019
C - - - - - 0x01D8A9 07:D899: A5 27     LDA ram_0027
C - - - - - 0x01D8AB 07:D89B: 29 04     AND #$04
C - - - - - 0x01D8AD 07:D89D: D0 12     BNE bra_D8B1
C - - - - - 0x01D8AF 07:D89F: C6 22     DEC ram_0022
C - - - - - 0x01D8B1 07:D8A1: 10 0D     BPL bra_D8B0_RTS
C - - - - - 0x01D8B3 07:D8A3: A9 1D     LDA #$1D
C - - - - - 0x01D8B5 07:D8A5: 85 22     STA ram_0022
C - - - - - 0x01D8B7 07:D8A7: A5 50     LDA ram_substage
C - - - - - 0x01D8B9 07:D8A9: 30 03     BMI bra_D8AE_vertical_up
C - - - - - 0x01D8BB 07:D8AB: C6 20     DEC ram_0020
C - - - - - 0x01D8BD 07:D8AD: 60        RTS
bra_D8AE_vertical_up:
C - - - - - 0x01D8BE 07:D8AE: E6 20     INC ram_0020
bra_D8B0_RTS:
C - - - - - 0x01D8C0 07:D8B0: 60        RTS
bra_D8B1:
C - - - - - 0x01D8C1 07:D8B1: E6 22     INC ram_0022
C - - - - - 0x01D8C3 07:D8B3: A5 22     LDA ram_0022
C - - - - - 0x01D8C5 07:D8B5: C9 1E     CMP #$1E
C - - - - - 0x01D8C7 07:D8B7: 90 F7     BCC bra_D8B0_RTS
C - - - - - 0x01D8C9 07:D8B9: A9 00     LDA #$00
C - - - - - 0x01D8CB 07:D8BB: 85 22     STA ram_0022
C - - - - - 0x01D8CD 07:D8BD: A5 50     LDA ram_substage
C - - - - - 0x01D8CF 07:D8BF: 30 03     BMI bra_D8C4_vertical_up
C - - - - - 0x01D8D1 07:D8C1: E6 20     INC ram_0020
C - - - - - 0x01D8D3 07:D8C3: 60        RTS
bra_D8C4_vertical_up:
C - - - - - 0x01D8D4 07:D8C4: C6 20     DEC ram_0020
C - - - - - 0x01D8D6 07:D8C6: 60        RTS



sub_D8C7:
C - - - - - 0x01D8D7 07:D8C7: A4 20     LDY ram_0020
C - - - - - 0x01D8D9 07:D8C9: 20 59 D9  JSR sub_D959
C - - - - - 0x01D8DC 07:D8CC: 20 36 D9  JSR sub_D936
C - - - - - 0x01D8DF 07:D8CF: A9 00     LDA #con_prg_bank + $00
C - - - - - 0x01D8E1 07:D8D1: 20 CD FF  JSR sub_FFCD_prg_bankswitch
C - - - - - 0x01D8E4 07:D8D4: A0 03     LDY #$03
C - - - - - 0x01D8E6 07:D8D6: 84 02     STY ram_0002    ; counter
C - - - - - 0x01D8E8 07:D8D8: A9 00     LDA #$00
C - - - - - 0x01D8EA 07:D8DA: 85 10     STA ram_0010
loc_D8DC_loop:
C D 2 - - - 0x01D8EC 07:D8DC: A4 02     LDY ram_0002    ; counter
C - - - - - 0x01D8EE 07:D8DE: BE 55 D9  LDX tbl_D955,Y
C - - - - - 0x01D8F1 07:D8E1: B1 00     LDA (ram_0000),Y
C - - - - - 0x01D8F3 07:D8E3: A8        TAY
C - - - - - 0x01D8F4 07:D8E4: B1 64     LDA (ram_stage_data_1),Y
C - - - - - 0x01D8F6 07:D8E6: 9D C0 06  STA ram_06C0_unk,X
C - - - - - 0x01D8F9 07:D8E9: B1 66     LDA (ram_stage_data_2),Y
C - - - - - 0x01D8FB 07:D8EB: 9D C1 06  STA ram_06C0_unk + $01,X
C - - - - - 0x01D8FE 07:D8EE: B1 68     LDA (ram_stage_data_3),Y
C - - - - - 0x01D900 07:D8F0: 9D C4 06  STA ram_06C0_unk + $04,X
C - - - - - 0x01D903 07:D8F3: B1 6A     LDA (ram_stage_data_4),Y
C - - - - - 0x01D905 07:D8F5: 9D C5 06  STA ram_06C0_unk + $05,X
C - - - - - 0x01D908 07:D8F8: B1 6C     LDA (ram_stage_data_5),Y
C - - - - - 0x01D90A 07:D8FA: 29 03     AND #$03
C - - - - - 0x01D90C 07:D8FC: 05 10     ORA ram_0010
C - - - - - 0x01D90E 07:D8FE: 85 10     STA ram_0010
C - - - - - 0x01D910 07:D900: C6 02     DEC ram_0002    ; counter
C - - - - - 0x01D912 07:D902: 30 07     BMI bra_D90B
C - - - - - 0x01D914 07:D904: 06 10     ASL ram_0010
C - - - - - 0x01D916 07:D906: 06 10     ASL ram_0010
C - - - - - 0x01D918 07:D908: 4C DC D8  JMP loc_D8DC_loop
bra_D90B:
C - - - - - 0x01D91B 07:D90B: A0 00     LDY #$00
bra_D90D_loop:
C - - - - - 0x01D91D 07:D90D: B9 10 01  LDA ram_0110,Y
C - - - - - 0x01D920 07:D910: 19 11 01  ORA ram_0111,Y
C - - - - - 0x01D923 07:D913: F0 1A     BEQ bra_D92F
C - - - - - 0x01D925 07:D915: B9 10 01  LDA ram_0110,Y
C - - - - - 0x01D928 07:D918: C5 20     CMP ram_0020
C - - - - - 0x01D92A 07:D91A: D0 13     BNE bra_D92F
C - - - - - 0x01D92C 07:D91C: B9 11 01  LDA ram_0111,Y
C - - - - - 0x01D92F 07:D91F: C5 21     CMP ram_0021
C - - - - - 0x01D931 07:D921: D0 0C     BNE bra_D92F
C - - - - - 0x01D933 07:D923: A0 07     LDY #$07
bra_D925_loop:
C - - - - - 0x01D935 07:D925: B9 66 E8  LDA tbl_E866,Y
C - - - - - 0x01D938 07:D928: 99 C0 06  STA ram_06C0_unk,Y
C - - - - - 0x01D93B 07:D92B: 88        DEY
C - - - - - 0x01D93C 07:D92C: 10 F7     BPL bra_D925_loop
C - - - - - 0x01D93E 07:D92E: 60        RTS
bra_D92F:
C - - - - - 0x01D93F 07:D92F: C8        INY
C - - - - - 0x01D940 07:D930: C8        INY
C - - - - - 0x01D941 07:D931: C0 20     CPY #$20
C - - - - - 0x01D943 07:D933: D0 D8     BNE bra_D90D_loop
C - - - - - 0x01D945 07:D935: 60        RTS



sub_D936:
C - - - - - 0x01D946 07:D936: A5 EA     LDA ram_00EA    ; con_prg_bank + $01
C - - - - - 0x01D948 07:D938: 20 CD FF  JSR sub_FFCD_prg_bankswitch
sub_D93B:
C - - - - - 0x01D94B 07:D93B: A9 00     LDA #$00
C - - - - - 0x01D94D 07:D93D: 85 01     STA ram_0001
C - - - - - 0x01D94F 07:D93F: A4 21     LDY ram_0021
C - - - - - 0x01D951 07:D941: B1 24     LDA (ram_0024),Y
C - - - - - 0x01D953 07:D943: 0A        ASL
C - - - - - 0x01D954 07:D944: 26 01     ROL ram_0001
C - - - - - 0x01D956 07:D946: 0A        ASL
C - - - - - 0x01D957 07:D947: 26 01     ROL ram_0001
C - - - - - 0x01D959 07:D949: 18        CLC
C - - - - - 0x01D95A 07:D94A: 65 62     ADC ram_0062
C - - - - - 0x01D95C 07:D94C: 85 00     STA ram_0000
C - - - - - 0x01D95E 07:D94E: A5 01     LDA ram_0001
C - - - - - 0x01D960 07:D950: 65 63     ADC ram_0063
C - - - - - 0x01D962 07:D952: 85 01     STA ram_0001
C - - - - - 0x01D964 07:D954: 60        RTS



tbl_D955:
- D 2 - - - 0x01D965 07:D955: 00        .byte $00   ; 00
- D 2 - - - 0x01D966 07:D956: 02        .byte $02   ; 01
- D 2 - - - 0x01D967 07:D957: 08        .byte $08   ; 02
- D 2 - - - 0x01D968 07:D958: 0A        .byte $0A   ; 03



sub_D959:
; bzk bug, sometimes Y can be FF from 0x01D8D9, this results in reading garbage data
; see walkthrough movie, frame 18075, it reads 0x01DBA7
C - - - - - 0x01D969 07:D959: B1 6E     LDA (ram_006E),Y
C - - - - - 0x01D96B 07:D95B: 48        PHA
C - - - - - 0x01D96C 07:D95C: A9 00     LDA #$00
C - - - - - 0x01D96E 07:D95E: 85 00     STA ram_0000
C - - - - - 0x01D970 07:D960: 68        PLA
; * 40
C - - - - - 0x01D971 07:D961: 0A        ASL
C - - - - - 0x01D972 07:D962: 26 00     ROL ram_0000
C - - - - - 0x01D974 07:D964: 0A        ASL
C - - - - - 0x01D975 07:D965: 26 00     ROL ram_0000
C - - - - - 0x01D977 07:D967: 0A        ASL
C - - - - - 0x01D978 07:D968: 26 00     ROL ram_0000
C - - - - - 0x01D97A 07:D96A: 0A        ASL
C - - - - - 0x01D97B 07:D96B: 26 00     ROL ram_0000
C - - - - - 0x01D97D 07:D96D: 0A        ASL
C - - - - - 0x01D97E 07:D96E: 26 00     ROL ram_0000
C - - - - - 0x01D980 07:D970: 0A        ASL
C - - - - - 0x01D981 07:D971: 26 00     ROL ram_0000
C - - - - - 0x01D983 07:D973: 18        CLC
C - - - - - 0x01D984 07:D974: 65 60     ADC ram_0060
C - - - - - 0x01D986 07:D976: 85 24     STA ram_0024
C - - - - - 0x01D988 07:D978: A5 00     LDA ram_0000
C - - - - - 0x01D98A 07:D97A: 65 61     ADC ram_0061
C - - - - - 0x01D98C 07:D97C: 85 25     STA ram_0025
C - - - - - 0x01D98E 07:D97E: 60        RTS



sub_D97F:
C - - - - - 0x01D98F 07:D97F: A5 E9     LDA ram_stage
; * 0A
C - - - - - 0x01D991 07:D981: 0A        ASL
C - - - - - 0x01D992 07:D982: 85 00     STA ram_0000
C - - - - - 0x01D994 07:D984: 0A        ASL
C - - - - - 0x01D995 07:D985: 0A        ASL
C - - - - - 0x01D996 07:D986: 65 00     ADC ram_0000
C - - - - - 0x01D998 07:D988: A8        TAY
C - - - - - 0x01D999 07:D989: B9 2A DA  LDA tbl_DA2A_stage_data,Y
C - - - - - 0x01D99C 07:D98C: 85 64     STA ram_stage_data_1
C - - - - - 0x01D99E 07:D98E: 85 66     STA ram_stage_data_2
C - - - - - 0x01D9A0 07:D990: 85 68     STA ram_stage_data_3
C - - - - - 0x01D9A2 07:D992: 85 6A     STA ram_stage_data_4
C - - - - - 0x01D9A4 07:D994: 85 6C     STA ram_stage_data_5
C - - - - - 0x01D9A6 07:D996: BE 2B DA  LDX tbl_DA2A_stage_data + $01,Y
C - - - - - 0x01D9A9 07:D999: 86 65     STX ram_stage_data_1 + $01
C - - - - - 0x01D9AB 07:D99B: E8        INX
C - - - - - 0x01D9AC 07:D99C: 86 67     STX ram_stage_data_2 + $01
C - - - - - 0x01D9AE 07:D99E: E8        INX
C - - - - - 0x01D9AF 07:D99F: 86 69     STX ram_stage_data_3 + $01
C - - - - - 0x01D9B1 07:D9A1: E8        INX
C - - - - - 0x01D9B2 07:D9A2: 86 6B     STX ram_stage_data_4 + $01
C - - - - - 0x01D9B4 07:D9A4: E8        INX
C - - - - - 0x01D9B5 07:D9A5: 86 6D     STX ram_stage_data_5 + $01
C - - - - - 0x01D9B7 07:D9A7: B9 2C DA  LDA tbl_DA2A_stage_data + $02,Y
C - - - - - 0x01D9BA 07:D9AA: 85 62     STA ram_0062
C - - - - - 0x01D9BC 07:D9AC: B9 2D DA  LDA tbl_DA2A_stage_data + $03,Y
C - - - - - 0x01D9BF 07:D9AF: 85 63     STA ram_0063
C - - - - - 0x01D9C1 07:D9B1: B9 2E DA  LDA tbl_DA2A_stage_data + $04,Y
C - - - - - 0x01D9C4 07:D9B4: 85 60     STA ram_0060
C - - - - - 0x01D9C6 07:D9B6: B9 2F DA  LDA tbl_DA2A_stage_data + $05,Y
C - - - - - 0x01D9C9 07:D9B9: 85 61     STA ram_0061
C - - - - - 0x01D9CB 07:D9BB: B9 30 DA  LDA tbl_DA2A_stage_data + $06,Y
C - - - - - 0x01D9CE 07:D9BE: 85 6E     STA ram_006E
C - - - - - 0x01D9D0 07:D9C0: B9 31 DA  LDA tbl_DA2A_stage_data + $07,Y
C - - - - - 0x01D9D3 07:D9C3: 85 6F     STA ram_006F
C - - - - - 0x01D9D5 07:D9C5: B9 32 DA  LDA tbl_DA2A_stage_data + $08,Y
C - - - - - 0x01D9D8 07:D9C8: 85 70     STA ram_0070
C - - - - - 0x01D9DA 07:D9CA: B9 33 DA  LDA tbl_DA2A_stage_data + $09,Y
C - - - - - 0x01D9DD 07:D9CD: 85 71     STA ram_0071
C - - - - - 0x01D9DF 07:D9CF: A4 E9     LDY ram_stage
C - - - - - 0x01D9E1 07:D9D1: B9 66 DA  LDA tbl_DA66,Y
C - - - - - 0x01D9E4 07:D9D4: 85 EA     STA ram_00EA
C - - - - - 0x01D9E6 07:D9D6: A5 E9     LDA ram_stage
C - - - - - 0x01D9E8 07:D9D8: 0A        ASL
C - - - - - 0x01D9E9 07:D9D9: 0A        ASL
C - - - - - 0x01D9EA 07:D9DA: 0A        ASL
C - - - - - 0x01D9EB 07:D9DB: 0A        ASL
C - - - - - 0x01D9EC 07:D9DC: A8        TAY
C - - - - - 0x01D9ED 07:D9DD: A2 00     LDX #$00
bra_D9DF_loop:
C - - - - - 0x01D9EF 07:D9DF: B9 43 DB  LDA tbl_DB43_palette,Y
C - - - - - 0x01D9F2 07:D9E2: 9D 00 06  STA ram_pal_buffer_1,X
C - - - - - 0x01D9F5 07:D9E5: 9D 20 06  STA ram_pal_buffer_2,X
C - - - - - 0x01D9F8 07:D9E8: C8        INY
C - - - - - 0x01D9F9 07:D9E9: E8        INX
C - - - - - 0x01D9FA 07:D9EA: E0 10     CPX #$10
C - - - - - 0x01D9FC 07:D9EC: D0 F1     BNE bra_D9DF_loop
C - - - - - 0x01D9FE 07:D9EE: A9 04     LDA #con_prg_bank + $04
C - - - - - 0x01DA00 07:D9F0: 20 CD FF  JSR sub_FFCD_prg_bankswitch
C - - - - - 0x01DA03 07:D9F3: A6 E9     LDX ram_stage
C - - - - - 0x01DA05 07:D9F5: BD C0 BF  LDA tbl_0x013FD0_lo,X
C - - - - - 0x01DA08 07:D9F8: 85 72     STA ram_0072
C - - - - - 0x01DA0A 07:D9FA: BD C8 BF  LDA tbl_0x013FD8_hi,X
C - - - - - 0x01DA0D 07:D9FD: 85 73     STA ram_0073
C - - - - - 0x01DA0F 07:D9FF: BD D0 BF  LDA tbl_0x013FE0_lo,X
C - - - - - 0x01DA12 07:DA02: 85 74     STA ram_0074
C - - - - - 0x01DA14 07:DA04: BD D8 BF  LDA tbl_0x013FE8_hi,X
C - - - - - 0x01DA17 07:DA07: 85 75     STA ram_0075
C - - - - - 0x01DA19 07:DA09: BD E0 BF  LDA tbl_0x013FF0_lo,X
C - - - - - 0x01DA1C 07:DA0C: 85 76     STA ram_0076
C - - - - - 0x01DA1E 07:DA0E: BD E8 BF  LDA tbl_0x013FF8_hi,X
C - - - - - 0x01DA21 07:DA11: 85 77     STA ram_0077
C - - - - - 0x01DA23 07:DA13: BD F0 BF  LDA tbl_0x014000_lo,X
C - - - - - 0x01DA26 07:DA16: 85 78     STA ram_0078
C - - - - - 0x01DA28 07:DA18: BD F8 BF  LDA tbl_0x014008_hi,X
C - - - - - 0x01DA2B 07:DA1B: 85 79     STA ram_0079
C - - - - - 0x01DA2D 07:DA1D: A5 53     LDA ram_0053
C - - - - - 0x01DA2F 07:DA1F: F0 06     BEQ bra_DA27
; con_C2C4_19  con_C2C4_1A  con_C2C4_1B  con_C2C4_1C  con_C2C4_1D  con_C2C4_1E
C - - - - - 0x01DA31 07:DA21: A5 E9     LDA ram_stage
C - - - - - 0x01DA33 07:DA23: 18        CLC
C - - - - - 0x01DA34 07:DA24: 69 19     ADC #$19
C - - - - - 0x01DA36 07:DA26: AA        TAX
bra_DA27:   ; con_C2C4_00  con_C2C4_01  con_C2C4_02  con_C2C4_03  con_C2C4_04  con_C2C4_05
C - - - - - 0x01DA37 07:DA27: 4C 6B C2  JMP loc_C26B_write_chr_to_ppu



tbl_DA2A_stage_data:
; 00
- D 2 - - - 0x01DA3A 07:DA2A: 00 80     .word _off014_0x000010_00
- D 2 - - - 0x01DA3C 07:DA2C: 00 85     .word _off015_0x000510_00
- D 2 - - - 0x01DA3E 07:DA2E: 00 80     .word _off016_0x004010_00
- D 2 - - - 0x01DA40 07:DA30: 98 DA     .word _off017_DA98_00
- D 2 - - - 0x01DA42 07:DA32: 6C DA     .word _off018_DA6C_00
; 01
- D 2 - - - 0x01DA44 07:DA34: 00 89     .word _off014_0x000910_01
- D 2 - - - 0x01DA46 07:DA36: 00 8E     .word _off015_0x000E10_01
- D 2 - - - 0x01DA48 07:DA38: 80 84     .word _off016_0x004490_01
- D 2 - - - 0x01DA4A 07:DA3A: AB DA     .word _off017_DAAB_01
- D 2 - - - 0x01DA4C 07:DA3C: 73 DA     .word _off018_DA73_01
; 02
- D 2 - - - 0x01DA4E 07:DA3E: 00 92     .word _off014_0x001210_02
- D 2 - - - 0x01DA50 07:DA40: 00 97     .word _off015_0x001710_02
- D 2 - - - 0x01DA52 07:DA42: 00 89     .word _off016_0x004910_02
- D 2 - - - 0x01DA54 07:DA44: BD DA     .word _off017_DABD_02
- D 2 - - - 0x01DA56 07:DA46: 7A DA     .word _off018_DA7A_02
; 03
- D 2 - - - 0x01DA58 07:DA48: 00 9B     .word _off014_0x001B10_03
- D 2 - - - 0x01DA5A 07:DA4A: 00 A0     .word _off015_0x002010_03
- D 2 - - - 0x01DA5C 07:DA4C: C0 8D     .word _off016_0x004DD0_03
- D 2 - - - 0x01DA5E 07:DA4E: D2 DA     .word _off017_DAD2_03
- D 2 - - - 0x01DA60 07:DA50: 83 DA     .word _off018_DA83_03
; 04
- D 2 - - - 0x01DA62 07:DA52: 00 A4     .word _off014_0x002410_04
- D 2 - - - 0x01DA64 07:DA54: 00 A9     .word _off015_0x002910_04
- D 2 - - - 0x01DA66 07:DA56: 40 92     .word _off016_0x005250_04
- D 2 - - - 0x01DA68 07:DA58: E5 DA     .word _off017_DAE5_04
- D 2 - - - 0x01DA6A 07:DA5A: 8D DA     .word _off018_DA8D_04
; 05
- D 2 - - - 0x01DA6C 07:DA5C: 00 80     .word _off014_0x000010_05
- D 2 - - - 0x01DA6E 07:DA5E: 00 85     .word _off015_0x000510_00
- D 2 - - - 0x01DA70 07:DA60: 00 80     .word _off016_0x004010_05
- D 2 - - - 0x01DA72 07:DA62: FC DA     .word _off017_DAFC_05
- D 2 - - - 0x01DA74 07:DA64: 96 DA     .word _off018_DA96_05



tbl_DA66:
; bzk optimize, same bytes
- D 2 - - - 0x01DA76 07:DA66: 01        .byte $01   ; 00
- D 2 - - - 0x01DA77 07:DA67: 01        .byte $01   ; 01
- D 2 - - - 0x01DA78 07:DA68: 01        .byte $01   ; 02
- D 2 - - - 0x01DA79 07:DA69: 01        .byte $01   ; 03
- D 2 - - - 0x01DA7A 07:DA6A: 01        .byte $01   ; 04
- D 2 - - - 0x01DA7B 07:DA6B: 01        .byte $01   ; 05



_off018_DA6C_00:
- D 2 - I - 0x01DA7C 07:DA6C: 05        .byte $05   ; AND 1F = scroll X/Y limit? (в зависимости от типа экрана)
- D 2 - I - 0x01DA7D 07:DA6D: 82        .byte $82   ; 
- D 2 - I - 0x01DA7E 07:DA6E: 04        .byte $04   ; 
- D 2 - I - 0x01DA7F 07:DA6F: 00        .byte $00   ; 
- D 2 - I - 0x01DA80 07:DA70: FF        .byte $FF   ; 
- - - - - - 0x01DA81 07:DA71: 00        .byte $00   ; 
- - - - - - 0x01DA82 07:DA72: FF        .byte $FF   ; 



_off018_DA73_01:
- D 2 - I - 0x01DA83 07:DA73: 04        .byte $04   ; 
- D 2 - I - 0x01DA84 07:DA74: 82        .byte $82   ; 
- D 2 - I - 0x01DA85 07:DA75: 01        .byte $01   ; 
- D 2 - I - 0x01DA86 07:DA76: 42        .byte $42   ; 
- D 2 - I - 0x01DA87 07:DA77: 02        .byte $02   ; 
- D 2 - I - 0x01DA88 07:DA78: 00        .byte $00   ; 
- D 2 - I - 0x01DA89 07:DA79: FF        .byte $FF   ; 



_off018_DA7A_02:
- D 2 - I - 0x01DA8A 07:DA7A: 07        .byte $07   ; 
- D 2 - I - 0x01DA8B 07:DA7B: 41        .byte $41   ; 
- D 2 - I - 0x01DA8C 07:DA7C: 02        .byte $02   ; 
- D 2 - I - 0x01DA8D 07:DA7D: 81        .byte $81   ; 
- D 2 - I - 0x01DA8E 07:DA7E: 01        .byte $01   ; 
- D 2 - I - 0x01DA8F 07:DA7F: 00        .byte $00   ; 
- D 2 - I - 0x01DA90 07:DA80: FF        .byte $FF   ; 
- - - - - - 0x01DA91 07:DA81: 00        .byte $00   ; 
- - - - - - 0x01DA92 07:DA82: FF        .byte $FF   ; 



_off018_DA83_03:
- D 2 - I - 0x01DA93 07:DA83: 02        .byte $02   ; 
- D 2 - I - 0x01DA94 07:DA84: 42        .byte $42   ; 
- D 2 - I - 0x01DA95 07:DA85: 02        .byte $02   ; 
- D 2 - I - 0x01DA96 07:DA86: 42        .byte $42   ; 
- D 2 - I - 0x01DA97 07:DA87: 01        .byte $01   ; 
- D 2 - I - 0x01DA98 07:DA88: 00        .byte $00   ; 
- D 2 - I - 0x01DA99 07:DA89: 00        .byte $00   ; 
- - - - - - 0x01DA9A 07:DA8A: FF        .byte $FF   ; 
- - - - - - 0x01DA9B 07:DA8B: 00        .byte $00   ; 
- - - - - - 0x01DA9C 07:DA8C: FF        .byte $FF   ; 



_off018_DA8D_04:
- D 2 - I - 0x01DA9D 07:DA8D: 06        .byte $06   ; 
- D 2 - I - 0x01DA9E 07:DA8E: 01        .byte $01   ; 
- D 2 - I - 0x01DA9F 07:DA8F: 02        .byte $02   ; 
- D 2 - I - 0x01DAA0 07:DA90: 83        .byte $83   ; 
- D 2 - I - 0x01DAA1 07:DA91: 01        .byte $01   ; 
- D 2 - I - 0x01DAA2 07:DA92: 81        .byte $81   ; 
- D 2 - I - 0x01DAA3 07:DA93: 00        .byte $00   ; 
- D 2 - I - 0x01DAA4 07:DA94: 00        .byte $00   ; 
- - - - - - 0x01DAA5 07:DA95: FF        .byte $FF   ; 



_off018_DA96_05:
- D 2 - I - 0x01DAA6 07:DA96: 00        .byte $00   ; 
- - - - - - 0x01DAA7 07:DA97: FF        .byte $FF   ; 



_off017_DA98_00:
- D 2 - I - 0x01DAA8 07:DA98: 00        .byte $00   ; 
- D 2 - I - 0x01DAA9 07:DA99: 01        .byte $01   ; 
- D 2 - I - 0x01DAAA 07:DA9A: 02        .byte $02   ; 
- D 2 - I - 0x01DAAB 07:DA9B: 03        .byte $03   ; 
- D 2 - I - 0x01DAAC 07:DA9C: 04        .byte $04   ; 
- D 2 - I - 0x01DAAD 07:DA9D: 05        .byte $05   ; 
- D 2 - I - 0x01DAAE 07:DA9E: 06        .byte $06   ; 
- D 2 - I - 0x01DAAF 07:DA9F: 07        .byte $07   ; 
- D 2 - I - 0x01DAB0 07:DAA0: 08        .byte $08   ; 
- D 2 - I - 0x01DAB1 07:DAA1: 09        .byte $09   ; 
- D 2 - I - 0x01DAB2 07:DAA2: 0A        .byte $0A   ; 
- D 2 - I - 0x01DAB3 07:DAA3: 0B        .byte $0B   ; 
- D 2 - I - 0x01DAB4 07:DAA4: 0C        .byte $0C   ; 
- D 2 - I - 0x01DAB5 07:DAA5: 0D        .byte $0D   ; 
- D 2 - I - 0x01DAB6 07:DAA6: 0E        .byte $0E   ; 
- D 2 - I - 0x01DAB7 07:DAA7: 0F        .byte $0F   ; 
- - - - - - 0x01DAB8 07:DAA8: FF        .byte $FF   ; 
- D 2 - I - 0x01DAB9 07:DAA9: 10        .byte $10   ; 
- - - - - - 0x01DABA 07:DAAA: FF        .byte $FF   ; 



_off017_DAAB_01:
- D 2 - I - 0x01DABB 07:DAAB: 00        .byte $00   ; 
- D 2 - I - 0x01DABC 07:DAAC: 01        .byte $01   ; 
- D 2 - I - 0x01DABD 07:DAAD: 02        .byte $02   ; 
- D 2 - I - 0x01DABE 07:DAAE: 03        .byte $03   ; 
- D 2 - I - 0x01DABF 07:DAAF: 04        .byte $04   ; 
- D 2 - I - 0x01DAC0 07:DAB0: 05        .byte $05   ; 
- D 2 - I - 0x01DAC1 07:DAB1: 0F        .byte $0F   ; 
- D 2 - I - 0x01DAC2 07:DAB2: 06        .byte $06   ; 
- D 2 - I - 0x01DAC3 07:DAB3: 07        .byte $07   ; 
- D 2 - I - 0x01DAC4 07:DAB4: 08        .byte $08   ; 
- D 2 - I - 0x01DAC5 07:DAB5: 09        .byte $09   ; 
- D 2 - I - 0x01DAC6 07:DAB6: 10        .byte $10   ; 
- D 2 - I - 0x01DAC7 07:DAB7: 0A        .byte $0A   ; 
- D 2 - I - 0x01DAC8 07:DAB8: 0B        .byte $0B   ; 
- D 2 - I - 0x01DAC9 07:DAB9: 0C        .byte $0C   ; 
- D 2 - I - 0x01DACA 07:DABA: 0D        .byte $0D   ; 
- D 2 - I - 0x01DACB 07:DABB: 0E        .byte $0E   ; 
- D 2 - I - 0x01DACC 07:DABC: FF        .byte $FF   ; 



_off017_DABD_02:
- D 2 - I - 0x01DACD 07:DABD: 00        .byte $00   ; 
- D 2 - I - 0x01DACE 07:DABE: 01        .byte $01   ; 
- D 2 - I - 0x01DACF 07:DABF: 02        .byte $02   ; 
- D 2 - I - 0x01DAD0 07:DAC0: 03        .byte $03   ; 
- D 2 - I - 0x01DAD1 07:DAC1: 04        .byte $04   ; 
- D 2 - I - 0x01DAD2 07:DAC2: 05        .byte $05   ; 
- D 2 - I - 0x01DAD3 07:DAC3: 07        .byte $07   ; 
- D 2 - I - 0x01DAD4 07:DAC4: 08        .byte $08   ; 
- D 2 - I - 0x01DAD5 07:DAC5: 09        .byte $09   ; 
- D 2 - I - 0x01DAD6 07:DAC6: 0A        .byte $0A   ; 
- D 2 - I - 0x01DAD7 07:DAC7: 0B        .byte $0B   ; 
- D 2 - I - 0x01DAD8 07:DAC8: 0C        .byte $0C   ; 
- D 2 - I - 0x01DAD9 07:DAC9: 0D        .byte $0D   ; 
- D 2 - I - 0x01DADA 07:DACA: 0E        .byte $0E   ; 
- D 2 - I - 0x01DADB 07:DACB: 0F        .byte $0F   ; 
- D 2 - I - 0x01DADC 07:DACC: 10        .byte $10   ; 
- D 2 - I - 0x01DADD 07:DACD: 11        .byte $11   ; 
- D 2 - I - 0x01DADE 07:DACE: 12        .byte $12   ; 
- D 2 - I - 0x01DADF 07:DACF: 12        .byte $12   ; 
- D 2 - I - 0x01DAE0 07:DAD0: 06        .byte $06   ; 
- - - - - - 0x01DAE1 07:DAD1: FF        .byte $FF   ; 



_off017_DAD2_03:
- D 2 - I - 0x01DAE2 07:DAD2: 00        .byte $00   ; 
- D 2 - I - 0x01DAE3 07:DAD3: 01        .byte $01   ; 
- D 2 - I - 0x01DAE4 07:DAD4: 02        .byte $02   ; 
- D 2 - I - 0x01DAE5 07:DAD5: 03        .byte $03   ; 
- D 2 - I - 0x01DAE6 07:DAD6: 04        .byte $04   ; 
- D 2 - I - 0x01DAE7 07:DAD7: 05        .byte $05   ; 
- D 2 - I - 0x01DAE8 07:DAD8: 06        .byte $06   ; 
- D 2 - I - 0x01DAE9 07:DAD9: 07        .byte $07   ; 
- D 2 - I - 0x01DAEA 07:DADA: 08        .byte $08   ; 
- D 2 - I - 0x01DAEB 07:DADB: 09        .byte $09   ; 
- D 2 - I - 0x01DAEC 07:DADC: 0A        .byte $0A   ; 
- D 2 - I - 0x01DAED 07:DADD: 0B        .byte $0B   ; 
- D 2 - I - 0x01DAEE 07:DADE: 0C        .byte $0C   ; 
- D 2 - I - 0x01DAEF 07:DADF: 0D        .byte $0D   ; 
- D 2 - I - 0x01DAF0 07:DAE0: 0E        .byte $0E   ; 
- D 2 - I - 0x01DAF1 07:DAE1: 0F        .byte $0F   ; 
- D 2 - I - 0x01DAF2 07:DAE2: 0F        .byte $0F   ; 
- D 2 - I - 0x01DAF3 07:DAE3: 10        .byte $10   ; 
- - - - - - 0x01DAF4 07:DAE4: FF        .byte $FF   ; 



_off017_DAE5_04:
- D 2 - I - 0x01DAF5 07:DAE5: 00        .byte $00   ; 
- D 2 - I - 0x01DAF6 07:DAE6: 01        .byte $01   ; 
- D 2 - I - 0x01DAF7 07:DAE7: 02        .byte $02   ; 
- D 2 - I - 0x01DAF8 07:DAE8: 03        .byte $03   ; 
- D 2 - I - 0x01DAF9 07:DAE9: 04        .byte $04   ; 
- D 2 - I - 0x01DAFA 07:DAEA: 05        .byte $05   ; 
- D 2 - I - 0x01DAFB 07:DAEB: 06        .byte $06   ; 
- D 2 - I - 0x01DAFC 07:DAEC: 07        .byte $07   ; 
- D 2 - I - 0x01DAFD 07:DAED: 08        .byte $08   ; 
- D 2 - I - 0x01DAFE 07:DAEE: 09        .byte $09   ; 
- D 2 - I - 0x01DAFF 07:DAEF: 0A        .byte $0A   ; 
- D 2 - I - 0x01DB00 07:DAF0: 0B        .byte $0B   ; 
- D 2 - I - 0x01DB01 07:DAF1: 0C        .byte $0C   ; 
- D 2 - I - 0x01DB02 07:DAF2: 0D        .byte $0D   ; 
- D 2 - I - 0x01DB03 07:DAF3: 0E        .byte $0E   ; 
- D 2 - I - 0x01DB04 07:DAF4: 0F        .byte $0F   ; 
- D 2 - I - 0x01DB05 07:DAF5: 10        .byte $10   ; 
- D 2 - I - 0x01DB06 07:DAF6: 11        .byte $11   ; 
- D 2 - I - 0x01DB07 07:DAF7: 12        .byte $12   ; 
- D 2 - I - 0x01DB08 07:DAF8: 13        .byte $13   ; 
- D 2 - I - 0x01DB09 07:DAF9: 14        .byte $14   ; 
- D 2 - I - 0x01DB0A 07:DAFA: 15        .byte $15   ; 
- D 2 - I - 0x01DB0B 07:DAFB: FF        .byte $FF   ; 



_off017_DAFC_05:
- D 2 - I - 0x01DB0C 07:DAFC: 11        .byte $11   ; 
- D 2 - I - 0x01DB0D 07:DAFD: 11        .byte $11   ; 
- - - - - - 0x01DB0E 07:DAFE: FF        .byte $FF   ; 



tbl_DAFF:
- D 2 - - - 0x01DB0F 07:DAFF: 00        .byte $00   ; 00
- D 2 - - - 0x01DB10 07:DB00: 04        .byte $04   ; 01
- D 2 - - - 0x01DB11 07:DB01: 0A        .byte $0A   ; 02
- D 2 - - - 0x01DB12 07:DB02: 10        .byte $10   ; 03
- D 2 - - - 0x01DB13 07:DB03: 17        .byte $17   ; 04
- - - - - - 0x01DB14 07:DB04: 17        .byte $17   ; 05



tbl_DB05_index:
; 00
- - - - - - 0x01DB15 07:DB05: 0F        .byte $0F   ; 
- D 2 - - - 0x01DB16 07:DB06: 08        .byte $08   ; 
- D 2 - - - 0x01DB17 07:DB07: 07        .byte $07   ; 
- D 2 - - - 0x01DB18 07:DB08: 02        .byte $02   ; 
; 04
- - - - - - 0x01DB19 07:DB09: 0F        .byte $0F   ; 
- D 2 - - - 0x01DB1A 07:DB0A: 08        .byte $08   ; 
- D 2 - - - 0x01DB1B 07:DB0B: 0F        .byte $0F   ; 
- D 2 - - - 0x01DB1C 07:DB0C: 0F        .byte $0F   ; 
- D 2 - - - 0x01DB1D 07:DB0D: 09        .byte $09   ; 
- D 2 - - - 0x01DB1E 07:DB0E: 03        .byte $03   ; 
; 0A
- - - - - - 0x01DB1F 07:DB0F: 0F        .byte $0F   ; 
- D 2 - - - 0x01DB20 07:DB10: 0F        .byte $0F   ; 
- D 2 - - - 0x01DB21 07:DB11: 0F        .byte $0F   ; 
- D 2 - - - 0x01DB22 07:DB12: 0F        .byte $0F   ; 
- D 2 - - - 0x01DB23 07:DB13: 0F        .byte $0F   ; 
- D 2 - - - 0x01DB24 07:DB14: 04        .byte $04   ; 
; 10
- - - - - - 0x01DB25 07:DB15: 0F        .byte $0F   ; 
- D 2 - - - 0x01DB26 07:DB16: 0F        .byte $0F   ; 
- D 2 - - - 0x01DB27 07:DB17: 00        .byte $00   ; 
- D 2 - - - 0x01DB28 07:DB18: 0F        .byte $0F   ; 
; 14
- D 2 - - - 0x01DB29 07:DB19: 0F        .byte $0F   ; 
- D 2 - - - 0x01DB2A 07:DB1A: 0F        .byte $0F   ; 
- D 2 - - - 0x01DB2B 07:DB1B: 05        .byte $05   ; 
- - - - - - 0x01DB2C 07:DB1C: 0F        .byte $0F   ; 
- - - - - - 0x01DB2D 07:DB1D: 0F        .byte $0F   ; 
- - - - - - 0x01DB2E 07:DB1E: 0F        .byte $0F   ; 
- D 2 - - - 0x01DB2F 07:DB1F: 01        .byte $01   ; 
- D 2 - - - 0x01DB30 07:DB20: 0F        .byte $0F   ; 
- - - - - - 0x01DB31 07:DB21: 0F        .byte $0F   ; 
- - - - - - 0x01DB32 07:DB22: 0F        .byte $0F   ; 
- D 2 - - - 0x01DB33 07:DB23: 06        .byte $06   ; 



tbl_DB24:
; 00
- - - - - - 0x01DB34 07:DB24: 00        .byte $00   ; 
- D 2 - - - 0x01DB35 07:DB25: 06        .byte $06   ; 
- D 2 - - - 0x01DB36 07:DB26: 0A        .byte $0A   ; 
- D 2 - - - 0x01DB37 07:DB27: 09        .byte $09   ; 
; 04
- - - - - - 0x01DB38 07:DB28: 00        .byte $00   ; 
- D 2 - - - 0x01DB39 07:DB29: 06        .byte $06   ; 
- D 2 - - - 0x01DB3A 07:DB2A: 00        .byte $00   ; 
- D 2 - - - 0x01DB3B 07:DB2B: 00        .byte $00   ; 
- D 2 - - - 0x01DB3C 07:DB2C: 0B        .byte $0B   ; 
- D 2 - - - 0x01DB3D 07:DB2D: 08        .byte $08   ; 
; 0A
- - - - - - 0x01DB3E 07:DB2E: 00        .byte $00   ; 
- D 2 - - - 0x01DB3F 07:DB2F: 00        .byte $00   ; 
- D 2 - - - 0x01DB40 07:DB30: 00        .byte $00   ; 
- D 2 - - - 0x01DB41 07:DB31: 00        .byte $00   ; 
- D 2 - - - 0x01DB42 07:DB32: 00        .byte $00   ; 
- D 2 - - - 0x01DB43 07:DB33: 01        .byte $01   ; 
; 10
- - - - - - 0x01DB44 07:DB34: 00        .byte $00   ; 
- D 2 - - - 0x01DB45 07:DB35: 00        .byte $00   ; 
- D 2 - - - 0x01DB46 07:DB36: 00        .byte $00   ; 
- D 2 - - - 0x01DB47 07:DB37: 00        .byte $00   ; 
; 14
- D 2 - - - 0x01DB48 07:DB38: 00        .byte $00   ; 
- D 2 - - - 0x01DB49 07:DB39: 00        .byte $00   ; 
- D 2 - - - 0x01DB4A 07:DB3A: 02        .byte $02   ; 



tbl_DB3B:
- D 2 - - - 0x01DB4B 07:DB3B: 05        .byte $05   ; 00
- D 2 - - - 0x01DB4C 07:DB3C: 05        .byte $05   ; 01
- D 2 - - - 0x01DB4D 07:DB3D: 05        .byte $05   ; 02
- D 2 - - - 0x01DB4E 07:DB3E: 03        .byte $03   ; 03
- D 2 - - - 0x01DB4F 07:DB3F: 03        .byte $03   ; 04
- D 2 - - - 0x01DB50 07:DB40: 03        .byte $03   ; 05
- D 2 - - - 0x01DB51 07:DB41: 07        .byte $07   ; 06
- D 2 - - - 0x01DB52 07:DB42: 04        .byte $04   ; 07



tbl_DB43_palette:
; 00
- D 2 - - - 0x01DB53 07:DB43: 0F        .byte $0F, $20, $26, $15   ; 
- D 2 - - - 0x01DB57 07:DB47: 0F        .byte $0F, $21, $11, $01   ; 
- D 2 - - - 0x01DB5B 07:DB4B: 0F        .byte $0F, $20, $0F, $10   ; 
- D 2 - - - 0x01DB5F 07:DB4F: 0F        .byte $0F, $20, $23, $13   ; 
; 01
- D 2 - - - 0x01DB63 07:DB53: 0F        .byte $0F, $3B, $2B, $1B   ; 
- D 2 - - - 0x01DB67 07:DB57: 0F        .byte $0F, $2C, $1C, $0C   ; 
- D 2 - - - 0x01DB6B 07:DB5B: 0F        .byte $0F, $37, $27, $17   ; 
- D 2 - - - 0x01DB6F 07:DB5F: 0F        .byte $0F, $27, $17, $07   ; 
; 02
- D 2 - - - 0x01DB73 07:DB63: 0F        .byte $0F, $20, $21, $11   ; 
- D 2 - - - 0x01DB77 07:DB67: 0F        .byte $0F, $20, $23, $13   ; 
- D 2 - - - 0x01DB7B 07:DB6B: 0F        .byte $0F, $17, $06, $11   ; 
- D 2 - - - 0x01DB7F 07:DB6F: 0F        .byte $0F, $22, $12, $11   ; 
; 03
- D 2 - - - 0x01DB83 07:DB73: 0F        .byte $0F, $36, $26, $03   ; 
- D 2 - - - 0x01DB87 07:DB77: 0F        .byte $0F, $20, $34, $26   ; 
- D 2 - - - 0x01DB8B 07:DB7B: 0F        .byte $0F, $2B, $1C, $1B   ; 
- D 2 - - - 0x01DB8F 07:DB7F: 0F        .byte $0F, $17, $07, $0F   ; 
; 04
- D 2 - - - 0x01DB93 07:DB83: 0F        .byte $0F, $36, $26, $15   ; 
- D 2 - - - 0x01DB97 07:DB87: 0F        .byte $0F, $26, $15, $05   ; 
- D 2 - - - 0x01DB9B 07:DB8B: 0F        .byte $0F, $31, $22, $1C   ; 
- D 2 - - - 0x01DB9F 07:DB8F: 0F        .byte $0F, $22, $1C, $01   ; 
; 05
- D 2 - - - 0x01DBA3 07:DB93: 0F        .byte $0F, $0F, $0F, $0F   ; 
- D 2 - I - 0x01DBA7 07:DB97: 0F        .byte $0F, $0F, $0F, $0F   ; 
- D 2 - - - 0x01DBAB 07:DB9B: 0F        .byte $0F, $0F, $0F, $0F   ; 
- D 2 - - - 0x01DBAF 07:DB9F: 0F        .byte $0F, $0F, $0F, $0F   ; 



tbl_DBA3_palette:
; 01
- D 2 - - - 0x01DBB3 07:DBA3: 0F        .byte $0F, $07, $26, $37   ; 
- D 2 - - - 0x01DBB7 07:DBA7: 0F        .byte $0F, $0C, $22, $33   ; 
; 02
- D 2 - - - 0x01DBBB 07:DBAB: 0F        .byte $0F, $00, $10, $20   ; 
- D 2 - - - 0x01DBBF 07:DBAF: 0F        .byte $0F, $0C, $22, $33   ; 
; 03
- D 2 - - - 0x01DBC3 07:DBB3: 0F        .byte $0F, $09, $19, $36   ; 
- D 2 - - - 0x01DBC7 07:DBB7: 0F        .byte $0F, $03, $14, $34   ; 
; 04
- D 2 - - - 0x01DBCB 07:DBBB: 0F        .byte $0F, $03, $23, $33   ; 
- D 2 - - - 0x01DBCF 07:DBBF: 0F        .byte $0F, $01, $22, $20   ; 
; 05
- D 2 - - - 0x01DBD3 07:DBC3: 0F        .byte $0F, $0F, $29, $38   ; 
- D 2 - - - 0x01DBD7 07:DBC7: 0F        .byte $0F, $03, $23, $34   ; 
; 06
- D 2 - - - 0x01DBDB 07:DBCB: 0F        .byte $0F, $00, $10, $20   ; 
- D 2 - - - 0x01DBDF 07:DBCF: 0F        .byte $0F, $04, $15, $35   ; 
; 07
- D 2 - - - 0x01DBE3 07:DBD3: 0F        .byte $0F, $0C, $19, $29   ; 
- D 2 - - - 0x01DBE7 07:DBD7: 0F        .byte $0F, $0F, $0F, $0F   ; 
; 08
- D 2 - - - 0x01DBEB 07:DBDB: 0F        .byte $0F, $00, $10, $20   ; 
- D 2 - - - 0x01DBEF 07:DBDF: 0F        .byte $0F, $08, $18, $27   ; 
; 09
- D 2 - - - 0x01DBF3 07:DBE3: 0F        .byte $0F, $0C, $22, $33   ; 
- D 2 - - - 0x01DBF7 07:DBE7: 0F        .byte $0F, $0F, $29, $38   ; 
; 0A
- D 2 - - - 0x01DBFB 07:DBEB: 0F        .byte $0F, $00, $10, $20   ; 
- D 2 - - - 0x01DBFF 07:DBEF: 0F        .byte $0F, $04, $26, $36   ; 
; 0B
- D 2 - - - 0x01DC03 07:DBF3: 0F        .byte $0F, $00, $10, $20   ; 
- D 2 - - - 0x01DC07 07:DBF7: 0F        .byte $0F, $04, $23, $36   ; 



sub_DBFB:
C D 2 - I - 0x01DC0B 07:DBFB: A5 E9     LDA ram_stage
C - - - - - 0x01DC0D 07:DBFD: C9 05     CMP #$05
C - - - - - 0x01DC0F 07:DBFF: F0 09     BEQ bra_DC0A    ; if final battle
C - - - - - 0x01DC11 07:DC01: A5 50     LDA ram_substage
C - - - - - 0x01DC13 07:DC03: 29 C0     AND #$C0
C - - - - - 0x01DC15 07:DC05: F0 2C     BEQ bra_DC33_horisontal
C - - - - - 0x01DC17 07:DC07: 4C 4A DD  JMP loc_DD4A_vertical
bra_DC0A:
C - - - - - 0x01DC1A 07:DC0A: A9 10     LDA #$10
C - - - - - 0x01DC1C 07:DC0C: CD 30 03  CMP ram_pos_X_lo
C - - - - - 0x01DC1F 07:DC0F: 90 03     BCC bra_DC14
C - - - - - 0x01DC21 07:DC11: 8D 30 03  STA ram_pos_X_lo
bra_DC14:
C - - - - - 0x01DC24 07:DC14: A9 F0     LDA #$F0
C - - - - - 0x01DC26 07:DC16: CD 30 03  CMP ram_pos_X_lo
C - - - - - 0x01DC29 07:DC19: B0 03     BCS bra_DC1E
C - - - - - 0x01DC2B 07:DC1B: 8D 30 03  STA ram_pos_X_lo
bra_DC1E:
C - - - - - 0x01DC2E 07:DC1E: A9 10     LDA #$10
C - - - - - 0x01DC30 07:DC20: CD 60 03  CMP ram_pos_Y_lo
C - - - - - 0x01DC33 07:DC23: 90 03     BCC bra_DC28
C - - - - - 0x01DC35 07:DC25: 8D 60 03  STA ram_pos_Y_lo
bra_DC28:
C - - - - - 0x01DC38 07:DC28: A9 E0     LDA #$E0
C - - - - - 0x01DC3A 07:DC2A: CD 60 03  CMP ram_pos_Y_lo
C - - - - - 0x01DC3D 07:DC2D: B0 03     BCS bra_DC32_RTS
C - - - - - 0x01DC3F 07:DC2F: 8D 60 03  STA ram_pos_Y_lo
bra_DC32_RTS:
C - - - - - 0x01DC42 07:DC32: 60        RTS
bra_DC33_horisontal:
C - - - - - 0x01DC43 07:DC33: A5 30     LDA ram_ariel_status
C - - - - - 0x01DC45 07:DC35: C9 02     CMP #con_ariel_jumping_out_of_water
C - - - - - 0x01DC47 07:DC37: F0 0A     BEQ bra_DC43
C - - - - - 0x01DC49 07:DC39: A9 E0     LDA #$E0
C - - - - - 0x01DC4B 07:DC3B: CD 60 03  CMP ram_pos_Y_lo
C - - - - - 0x01DC4E 07:DC3E: B0 03     BCS bra_DC43
C - - - - - 0x01DC50 07:DC40: 8D 60 03  STA ram_pos_Y_lo
bra_DC43:
C - - - - - 0x01DC53 07:DC43: A9 10     LDA #$10
C - - - - - 0x01DC55 07:DC45: CD 60 03  CMP ram_pos_Y_lo
C - - - - - 0x01DC58 07:DC48: 90 11     BCC bra_DC5B
C - - - - - 0x01DC5A 07:DC4A: A5 30     LDA ram_ariel_status
C - - - - - 0x01DC5C 07:DC4C: C9 02     CMP #con_ariel_jumping_out_of_water
C - - - - - 0x01DC5E 07:DC4E: F0 0B     BEQ bra_DC5B
C - - - - - 0x01DC60 07:DC50: A9 10     LDA #$10
C - - - - - 0x01DC62 07:DC52: 8D 60 03  STA ram_pos_Y_lo
C - - - - - 0x01DC65 07:DC55: A5 31     LDA ram_0031
C - - - - - 0x01DC67 07:DC57: 29 08     AND #$08
C - - - - - 0x01DC69 07:DC59: F0 00     BEQ bra_DC5B    ; bzk optimize, useless
bra_DC5B:
C - - - - - 0x01DC6B 07:DC5B: AD 30 03  LDA ram_pos_X_lo
C - - - - - 0x01DC6E 07:DC5E: 38        SEC
C - - - - - 0x01DC6F 07:DC5F: E5 FC     SBC ram_scroll_X_lo
C - - - - - 0x01DC71 07:DC61: 85 01     STA ram_0001
C - - - - - 0x01DC73 07:DC63: A5 32     LDA ram_0032
C - - - - - 0x01DC75 07:DC65: 38        SEC
C - - - - - 0x01DC76 07:DC66: ED 30 03  SBC ram_pos_X_lo
C - - - - - 0x01DC79 07:DC69: 85 00     STA ram_0000
C - - - - - 0x01DC7B 07:DC6B: F0 0F     BEQ bra_DC7C_RTS
C - - - - - 0x01DC7D 07:DC6D: 10 6A     BPL bra_DCD9
C - - - - - 0x01DC7F 07:DC6F: 49 FF     EOR #$FF
C - - - - - 0x01DC81 07:DC71: 18        CLC
C - - - - - 0x01DC82 07:DC72: 69 01     ADC #$01
C - - - - - 0x01DC84 07:DC74: 85 00     STA ram_0000
C - - - - - 0x01DC86 07:DC76: A5 01     LDA ram_0001
C - - - - - 0x01DC88 07:DC78: C9 80     CMP #$80
C - - - - - 0x01DC8A 07:DC7A: B0 01     BCS bra_DC7D
bra_DC7C_RTS:
C - - - - - 0x01DC8C 07:DC7C: 60        RTS
bra_DC7D:
C - - - - - 0x01DC8D 07:DC7D: A5 00     LDA ram_0000
C - - - - - 0x01DC8F 07:DC7F: C9 08     CMP #$08
C - - - - - 0x01DC91 07:DC81: 90 02     BCC bra_DC85
C - - - - - 0x01DC93 07:DC83: A9 08     LDA #$08
bra_DC85:
C - - - - - 0x01DC95 07:DC85: 18        CLC
C - - - - - 0x01DC96 07:DC86: 65 FC     ADC ram_scroll_X_lo
C - - - - - 0x01DC98 07:DC88: 85 FC     STA ram_scroll_X_lo
C - - - - - 0x01DC9A 07:DC8A: 08        PHP
C - - - - - 0x01DC9B 07:DC8B: A5 FD     LDA ram_scroll_X_hi
C - - - - - 0x01DC9D 07:DC8D: 69 00     ADC #$00
C - - - - - 0x01DC9F 07:DC8F: 85 FD     STA ram_scroll_X_hi
C - - - - - 0x01DCA1 07:DC91: 28        PLP
C - - - - - 0x01DCA2 07:DC92: A5 52     LDA ram_0052
C - - - - - 0x01DCA4 07:DC94: 69 00     ADC #$00
C - - - - - 0x01DCA6 07:DC96: 85 52     STA ram_0052
C - - - - - 0x01DCA8 07:DC98: C5 51     CMP ram_scroll_hi_max
C - - - - - 0x01DCAA 07:DC9A: D0 16     BNE bra_DCB2
C - - - - - 0x01DCAC 07:DC9C: A9 00     LDA #$00
C - - - - - 0x01DCAE 07:DC9E: 85 FC     STA ram_scroll_X_lo
C - - - - - 0x01DCB0 07:DCA0: 38        SEC
C - - - - - 0x01DCB1 07:DCA1: E5 F7     SBC ram_copy_scroll_X
C - - - - - 0x01DCB3 07:DCA3: 85 00     STA ram_0000
C - - - - - 0x01DCB5 07:DCA5: A9 F0     LDA #$F0
C - - - - - 0x01DCB7 07:DCA7: CD 30 03  CMP ram_pos_X_lo
C - - - - - 0x01DCBA 07:DCAA: B0 06     BCS bra_DCB2
C - - - - - 0x01DCBC 07:DCAC: 8D 30 03  STA ram_pos_X_lo
C - - - - - 0x01DCBF 07:DCAF: 4C EC DE  JMP loc_DEEC
bra_DCB2:
C - - - - - 0x01DCC2 07:DCB2: A5 F7     LDA ram_copy_scroll_X
C - - - - - 0x01DCC4 07:DCB4: 29 03     AND #$03
C - - - - - 0x01DCC6 07:DCB6: 18        CLC
C - - - - - 0x01DCC7 07:DCB7: 65 00     ADC ram_0000
C - - - - - 0x01DCC9 07:DCB9: 4A        LSR
C - - - - - 0x01DCCA 07:DCBA: 4A        LSR
C - - - - - 0x01DCCB 07:DCBB: 85 01     STA ram_0001
C - - - - - 0x01DCCD 07:DCBD: A5 27     LDA ram_0027
C - - - - - 0x01DCCF 07:DCBF: 29 01     AND #$01
C - - - - - 0x01DCD1 07:DCC1: D0 12     BNE bra_DCD5
C - - - - - 0x01DCD3 07:DCC3: E6 20     INC ram_0020
C - - - - - 0x01DCD5 07:DCC5: E6 20     INC ram_0020
C - - - - - 0x01DCD7 07:DCC7: E6 22     INC ram_0022
C - - - - - 0x01DCD9 07:DCC9: A5 22     LDA ram_0022
C - - - - - 0x01DCDB 07:DCCB: 29 7F     AND #$7F
C - - - - - 0x01DCDD 07:DCCD: 85 22     STA ram_0022
C - - - - - 0x01DCDF 07:DCCF: 29 3F     AND #$3F
C - - - - - 0x01DCE1 07:DCD1: D0 02     BNE bra_DCD5
C - - - - - 0x01DCE3 07:DCD3: E6 20     INC ram_0020
bra_DCD5:
C - - - - - 0x01DCE5 07:DCD5: A9 01     LDA #$01    ; camera is moving right
C - - - - - 0x01DCE7 07:DCD7: D0 69     BNE bra_DD42   ; jmp
bra_DCD9:
C - - - - - 0x01DCE9 07:DCD9: A5 01     LDA ram_0001
C - - - - - 0x01DCEB 07:DCDB: C9 81     CMP #$81
C - - - - - 0x01DCED 07:DCDD: 90 01     BCC bra_DCE0
C - - - - - 0x01DCEF 07:DCDF: 60        RTS
bra_DCE0:
C - - - - - 0x01DCF0 07:DCE0: A9 08     LDA #$08
C - - - - - 0x01DCF2 07:DCE2: C5 00     CMP ram_0000
C - - - - - 0x01DCF4 07:DCE4: B0 02     BCS bra_DCE8
- - - - - - 0x01DCF6 07:DCE6: 85 00     STA ram_0000
bra_DCE8:
C - - - - - 0x01DCF8 07:DCE8: A5 FC     LDA ram_scroll_X_lo
C - - - - - 0x01DCFA 07:DCEA: 38        SEC
C - - - - - 0x01DCFB 07:DCEB: E5 00     SBC ram_0000
C - - - - - 0x01DCFD 07:DCED: 85 FC     STA ram_scroll_X_lo
C - - - - - 0x01DCFF 07:DCEF: 08        PHP
C - - - - - 0x01DD00 07:DCF0: A5 FD     LDA ram_scroll_X_hi
C - - - - - 0x01DD02 07:DCF2: 85 01     STA ram_0001
C - - - - - 0x01DD04 07:DCF4: E9 00     SBC #$00
C - - - - - 0x01DD06 07:DCF6: 85 FD     STA ram_scroll_X_hi
C - - - - - 0x01DD08 07:DCF8: 28        PLP
C - - - - - 0x01DD09 07:DCF9: A5 52     LDA ram_0052
C - - - - - 0x01DD0B 07:DCFB: E9 00     SBC #$00
C - - - - - 0x01DD0D 07:DCFD: 85 52     STA ram_0052
C - - - - - 0x01DD0F 07:DCFF: 10 18     BPL bra_DD19
C - - - - - 0x01DD11 07:DD01: A9 00     LDA #$00
C - - - - - 0x01DD13 07:DD03: 85 FC     STA ram_scroll_X_lo
C - - - - - 0x01DD15 07:DD05: 85 52     STA ram_0052
C - - - - - 0x01DD17 07:DD07: A5 01     LDA ram_0001
C - - - - - 0x01DD19 07:DD09: 85 FD     STA ram_scroll_X_hi
C - - - - - 0x01DD1B 07:DD0B: A5 F7     LDA ram_copy_scroll_X
C - - - - - 0x01DD1D 07:DD0D: 85 00     STA ram_0000
C - - - - - 0x01DD1F 07:DD0F: A9 10     LDA #$10
C - - - - - 0x01DD21 07:DD11: CD 30 03  CMP ram_pos_X_lo
C - - - - - 0x01DD24 07:DD14: 90 03     BCC bra_DD19
C - - - - - 0x01DD26 07:DD16: 8D 30 03  STA ram_pos_X_lo
bra_DD19:
C - - - - - 0x01DD29 07:DD19: A5 F7     LDA ram_copy_scroll_X
C - - - - - 0x01DD2B 07:DD1B: 49 FF     EOR #$FF
C - - - - - 0x01DD2D 07:DD1D: 29 03     AND #$03
C - - - - - 0x01DD2F 07:DD1F: 18        CLC
C - - - - - 0x01DD30 07:DD20: 65 00     ADC ram_0000
C - - - - - 0x01DD32 07:DD22: 4A        LSR
C - - - - - 0x01DD33 07:DD23: 4A        LSR
C - - - - - 0x01DD34 07:DD24: 85 01     STA ram_0001
C - - - - - 0x01DD36 07:DD26: A5 27     LDA ram_0027
C - - - - - 0x01DD38 07:DD28: 29 02     AND #$02
C - - - - - 0x01DD3A 07:DD2A: D0 14     BNE bra_DD40
C - - - - - 0x01DD3C 07:DD2C: C6 20     DEC ram_0020
C - - - - - 0x01DD3E 07:DD2E: C6 20     DEC ram_0020
C - - - - - 0x01DD40 07:DD30: C6 22     DEC ram_0022
C - - - - - 0x01DD42 07:DD32: A5 22     LDA ram_0022
C - - - - - 0x01DD44 07:DD34: 29 7F     AND #$7F
C - - - - - 0x01DD46 07:DD36: 85 22     STA ram_0022
C - - - - - 0x01DD48 07:DD38: 29 3F     AND #$3F
C - - - - - 0x01DD4A 07:DD3A: C9 3F     CMP #$3F
C - - - - - 0x01DD4C 07:DD3C: D0 02     BNE bra_DD40
C - - - - - 0x01DD4E 07:DD3E: C6 20     DEC ram_0020
bra_DD40:
C - - - - - 0x01DD50 07:DD40: A9 02     LDA #$02    ; camera is moving left
bra_DD42:
C - - - - - 0x01DD52 07:DD42: 85 27     STA ram_0027
C - - - - - 0x01DD54 07:DD44: 85 F9     STA ram_camera_direction
C - - - - - 0x01DD56 07:DD46: 4C BD D6  JMP loc_D6BD
bra_DD49_RTS:
C - - - - - 0x01DD59 07:DD49: 60        RTS



loc_DD4A_vertical:
C D 2 - - - 0x01DD5A 07:DD4A: A9 10     LDA #$10
C - - - - - 0x01DD5C 07:DD4C: CD 30 03  CMP ram_pos_X_lo
C - - - - - 0x01DD5F 07:DD4F: B0 29     BCS bra_DD7A
C - - - - - 0x01DD61 07:DD51: A9 F0     LDA #$F0
C - - - - - 0x01DD63 07:DD53: CD 30 03  CMP ram_pos_X_lo
C - - - - - 0x01DD66 07:DD56: B0 25     BCS bra_DD7D
C - - - - - 0x01DD68 07:DD58: 8D 30 03  STA ram_pos_X_lo
C - - - - - 0x01DD6B 07:DD5B: A5 52     LDA ram_0052
C - - - - - 0x01DD6D 07:DD5D: C5 51     CMP ram_scroll_hi_max
C - - - - - 0x01DD6F 07:DD5F: D0 1C     BNE bra_DD7D
C - - - - - 0x01DD71 07:DD61: A5 FA     LDA ram_scroll_Y_lo
C - - - - - 0x01DD73 07:DD63: D0 18     BNE bra_DD7D
C - - - - - 0x01DD75 07:DD65: A9 01     LDA #$01
C - - - - - 0x01DD77 07:DD67: 85 27     STA ram_0027
C - - - - - 0x01DD79 07:DD69: 85 F9     STA ram_camera_direction
C - - - - - 0x01DD7B 07:DD6B: A2 60     LDX #$60
C - - - - - 0x01DD7D 07:DD6D: A5 FD     LDA ram_scroll_X_hi
C - - - - - 0x01DD7F 07:DD6F: 29 01     AND #$01
C - - - - - 0x01DD81 07:DD71: F0 02     BEQ bra_DD75
C - - - - - 0x01DD83 07:DD73: A2 20     LDX #$20
bra_DD75:
C - - - - - 0x01DD85 07:DD75: 86 22     STX ram_0022
C - - - - - 0x01DD87 07:DD77: 4C EC DE  JMP loc_DEEC
bra_DD7A:
C - - - - - 0x01DD8A 07:DD7A: 8D 30 03  STA ram_pos_X_lo
bra_DD7D:
C - - - - - 0x01DD8D 07:DD7D: AD 60 03  LDA ram_pos_Y_lo
C - - - - - 0x01DD90 07:DD80: 38        SEC
C - - - - - 0x01DD91 07:DD81: E5 FA     SBC ram_scroll_Y_lo
C - - - - - 0x01DD93 07:DD83: F0 28     BEQ bra_DDAD_RTS
C - - - - - 0x01DD95 07:DD85: 90 04     BCC bra_DD8B
C - - - - - 0x01DD97 07:DD87: C9 F0     CMP #$F0
C - - - - - 0x01DD99 07:DD89: 90 02     BCC bra_DD8D
bra_DD8B:
C - - - - - 0x01DD9B 07:DD8B: E9 0F     SBC #$0F
bra_DD8D:
C - - - - - 0x01DD9D 07:DD8D: 85 01     STA ram_0001
C - - - - - 0x01DD9F 07:DD8F: AD 00 04  LDA ram_0400_obj
C - - - - - 0x01DDA2 07:DD92: 30 04     BMI bra_DD98
- - - - - - 0x01DDA4 07:DD94: A9 00     LDA #$00
- - - - - - 0x01DDA6 07:DD96: 85 01     STA ram_0001
bra_DD98:
C - - - - - 0x01DDA8 07:DD98: A5 34     LDA ram_0034
C - - - - - 0x01DDAA 07:DD9A: 38        SEC
C - - - - - 0x01DDAB 07:DD9B: ED 60 03  SBC ram_pos_Y_lo
C - - - - - 0x01DDAE 07:DD9E: 85 00     STA ram_0000
C - - - - - 0x01DDB0 07:DDA0: F0 A7     BEQ bra_DD49_RTS
C - - - - - 0x01DDB2 07:DDA2: 30 03     BMI bra_DDA7
C - - - - - 0x01DDB4 07:DDA4: 4C 47 DE  JMP loc_DE47
bra_DDA7:
C - - - - - 0x01DDB7 07:DDA7: A5 01     LDA ram_0001
C - - - - - 0x01DDB9 07:DDA9: C9 80     CMP #$80
C - - - - - 0x01DDBB 07:DDAB: B0 01     BCS bra_DDAE
bra_DDAD_RTS:
C - - - - - 0x01DDBD 07:DDAD: 60        RTS
bra_DDAE:
C - - - - - 0x01DDBE 07:DDAE: A5 00     LDA ram_0000
C - - - - - 0x01DDC0 07:DDB0: 49 FF     EOR #$FF
C - - - - - 0x01DDC2 07:DDB2: 18        CLC
C - - - - - 0x01DDC3 07:DDB3: 69 01     ADC #$01
C - - - - - 0x01DDC5 07:DDB5: 29 0F     AND #$0F
C - - - - - 0x01DDC7 07:DDB7: C9 08     CMP #$08
C - - - - - 0x01DDC9 07:DDB9: 90 02     BCC bra_DDBD
- - - - - - 0x01DDCB 07:DDBB: A9 08     LDA #$08
bra_DDBD:
C - - - - - 0x01DDCD 07:DDBD: 85 00     STA ram_0000
C - - - - - 0x01DDCF 07:DDBF: 18        CLC
C - - - - - 0x01DDD0 07:DDC0: 65 FA     ADC ram_scroll_Y_lo
C - - - - - 0x01DDD2 07:DDC2: 85 FA     STA ram_scroll_Y_lo
C - - - - - 0x01DDD4 07:DDC4: C9 F0     CMP #$F0
C - - - - - 0x01DDD6 07:DDC6: 90 0C     BCC bra_DDD4
C - - - - - 0x01DDD8 07:DDC8: 29 0F     AND #$0F
C - - - - - 0x01DDDA 07:DDCA: 85 FA     STA ram_scroll_Y_lo
C - - - - - 0x01DDDC 07:DDCC: A5 50     LDA ram_substage
C - - - - - 0x01DDDE 07:DDCE: 30 10     BMI bra_DDE0_vertical_up
; if vertical down
C - - - - - 0x01DDE0 07:DDD0: E6 52     INC ram_0052
C - - - - - 0x01DDE2 07:DDD2: E6 FB     INC ram_scroll_Y_hi
bra_DDD4:
C - - - - - 0x01DDE4 07:DDD4: A5 50     LDA ram_substage
C - - - - - 0x01DDE6 07:DDD6: 30 0C     BMI bra_DDE4_vertical_up
; if vertical down
C - - - - - 0x01DDE8 07:DDD8: A5 52     LDA ram_0052
C - - - - - 0x01DDEA 07:DDDA: C5 51     CMP ram_scroll_hi_max
C - - - - - 0x01DDEC 07:DDDC: D0 21     BNE bra_DDFF
C - - - - - 0x01DDEE 07:DDDE: F0 0C     BEQ bra_DDEC   ; jmp
bra_DDE0_vertical_up:
C - - - - - 0x01DDF0 07:DDE0: C6 52     DEC ram_0052
C - - - - - 0x01DDF2 07:DDE2: C6 FB     DEC ram_scroll_Y_hi
bra_DDE4_vertical_up:
C - - - - - 0x01DDF4 07:DDE4: A5 52     LDA ram_0052
C - - - - - 0x01DDF6 07:DDE6: D0 17     BNE bra_DDFF
C - - - - - 0x01DDF8 07:DDE8: A5 FA     LDA ram_scroll_Y_lo
C - - - - - 0x01DDFA 07:DDEA: F0 13     BEQ bra_DDFF
bra_DDEC:
C - - - - - 0x01DDFC 07:DDEC: A9 00     LDA #$00
C - - - - - 0x01DDFE 07:DDEE: 85 FA     STA ram_scroll_Y_lo
C - - - - - 0x01DE00 07:DDF0: 38        SEC
C - - - - - 0x01DE01 07:DDF1: E5 F8     SBC ram_copy_scroll_Y
C - - - - - 0x01DE03 07:DDF3: 85 00     STA ram_0000
C - - - - - 0x01DE05 07:DDF5: A9 E0     LDA #$E0
C - - - - - 0x01DE07 07:DDF7: CD 60 03  CMP ram_pos_Y_lo
C - - - - - 0x01DE0A 07:DDFA: B0 03     BCS bra_DDFF
C - - - - - 0x01DE0C 07:DDFC: 8D 60 03  STA ram_pos_Y_lo
bra_DDFF:
C - - - - - 0x01DE0F 07:DDFF: A5 F8     LDA ram_copy_scroll_Y
C - - - - - 0x01DE11 07:DE01: 29 07     AND #$07
C - - - - - 0x01DE13 07:DE03: 18        CLC
C - - - - - 0x01DE14 07:DE04: 65 00     ADC ram_0000
C - - - - - 0x01DE16 07:DE06: 4A        LSR
C - - - - - 0x01DE17 07:DE07: 4A        LSR
C - - - - - 0x01DE18 07:DE08: 4A        LSR
C - - - - - 0x01DE19 07:DE09: 85 01     STA ram_0001
C - - - - - 0x01DE1B 07:DE0B: D0 03     BNE bra_DE10
C - - - - - 0x01DE1D 07:DE0D: 4C E4 DE  JMP loc_DEE4
bra_DE10:
C - - - - - 0x01DE20 07:DE10: A0 01     LDY #$01
C - - - - - 0x01DE22 07:DE12: A5 50     LDA ram_substage
C - - - - - 0x01DE24 07:DE14: 10 02     BPL bra_DE18_vertical_down
; if vertical up
C - - - - - 0x01DE26 07:DE16: A0 02     LDY #$02
bra_DE18_vertical_down:
C - - - - - 0x01DE28 07:DE18: 84 F9     STY ram_camera_direction
C - - - - - 0x01DE2A 07:DE1A: A5 27     LDA ram_0027
C - - - - - 0x01DE2C 07:DE1C: 29 04     AND #$04
C - - - - - 0x01DE2E 07:DE1E: D0 22     BNE bra_DE42
C - - - - - 0x01DE30 07:DE20: A5 50     LDA ram_substage
C - - - - - 0x01DE32 07:DE22: 30 05     BMI bra_DE29_vertical_up
; if vertical down
C - - - - - 0x01DE34 07:DE24: E6 20     INC ram_0020
C - - - - - 0x01DE36 07:DE26: 4C 2B DE  JMP loc_DE2B
bra_DE29_vertical_up:
C - - - - - 0x01DE39 07:DE29: C6 20     DEC ram_0020
loc_DE2B:
C D 2 - - - 0x01DE3B 07:DE2B: E6 22     INC ram_0022
C - - - - - 0x01DE3D 07:DE2D: A5 22     LDA ram_0022
C - - - - - 0x01DE3F 07:DE2F: C9 1E     CMP #$1E
C - - - - - 0x01DE41 07:DE31: 90 0F     BCC bra_DE42
C - - - - - 0x01DE43 07:DE33: A9 00     LDA #$00
C - - - - - 0x01DE45 07:DE35: 85 22     STA ram_0022
C - - - - - 0x01DE47 07:DE37: A5 50     LDA ram_substage
C - - - - - 0x01DE49 07:DE39: 30 05     BMI bra_DE40_vertical_up
; if vertical down
C - - - - - 0x01DE4B 07:DE3B: E6 20     INC ram_0020
C - - - - - 0x01DE4D 07:DE3D: 4C 42 DE  JMP loc_DE42
bra_DE40_vertical_up:
C - - - - - 0x01DE50 07:DE40: C6 20     DEC ram_0020
bra_DE42:
loc_DE42:
C D 2 - - - 0x01DE52 07:DE42: A9 04     LDA #$04
C - - - - - 0x01DE54 07:DE44: 4C E2 DE  JMP loc_DEE2



loc_DE47:
C D 2 - - - 0x01DE57 07:DE47: 29 0F     AND #$0F
C - - - - - 0x01DE59 07:DE49: C9 08     CMP #$08
C - - - - - 0x01DE5B 07:DE4B: 90 02     BCC bra_DE4F
C - - - - - 0x01DE5D 07:DE4D: A9 08     LDA #$08
bra_DE4F:
C - - - - - 0x01DE5F 07:DE4F: 85 00     STA ram_0000
C - - - - - 0x01DE61 07:DE51: A5 01     LDA ram_0001
C - - - - - 0x01DE63 07:DE53: C9 81     CMP #$81
C - - - - - 0x01DE65 07:DE55: 90 01     BCC bra_DE58
C - - - - - 0x01DE67 07:DE57: 60        RTS
bra_DE58:
C - - - - - 0x01DE68 07:DE58: A5 FA     LDA ram_scroll_Y_lo
C - - - - - 0x01DE6A 07:DE5A: 38        SEC
C - - - - - 0x01DE6B 07:DE5B: E5 00     SBC ram_0000
C - - - - - 0x01DE6D 07:DE5D: 85 FA     STA ram_scroll_Y_lo
C - - - - - 0x01DE6F 07:DE5F: B0 0C     BCS bra_DE6D
C - - - - - 0x01DE71 07:DE61: 29 EF     AND #$EF
C - - - - - 0x01DE73 07:DE63: 85 FA     STA ram_scroll_Y_lo
C - - - - - 0x01DE75 07:DE65: A5 50     LDA ram_substage
C - - - - - 0x01DE77 07:DE67: 30 13     BMI bra_DE7C_vertical_up
; if vertical down
C - - - - - 0x01DE79 07:DE69: C6 52     DEC ram_0052
C - - - - - 0x01DE7B 07:DE6B: C6 FB     DEC ram_scroll_Y_hi
bra_DE6D:
C - - - - - 0x01DE7D 07:DE6D: A5 50     LDA ram_substage
C - - - - - 0x01DE7F 07:DE6F: 30 0F     BMI bra_DE80_vertical_up
; if vertical down
C - - - - - 0x01DE81 07:DE71: A5 52     LDA ram_0052
C - - - - - 0x01DE83 07:DE73: 10 2D     BPL bra_DEA2
C - - - - - 0x01DE85 07:DE75: E6 FB     INC ram_scroll_Y_hi
C - - - - - 0x01DE87 07:DE77: E6 52     INC ram_0052
C - - - - - 0x01DE89 07:DE79: 4C 8A DE  JMP loc_DE8A
bra_DE7C_vertical_up:
C - - - - - 0x01DE8C 07:DE7C: E6 52     INC ram_0052
C - - - - - 0x01DE8E 07:DE7E: E6 FB     INC ram_scroll_Y_hi
bra_DE80_vertical_up:
C - - - - - 0x01DE90 07:DE80: A5 51     LDA ram_scroll_hi_max
C - - - - - 0x01DE92 07:DE82: C5 52     CMP ram_0052
C - - - - - 0x01DE94 07:DE84: B0 1C     BCS bra_DEA2
C - - - - - 0x01DE96 07:DE86: 85 52     STA ram_0052
C - - - - - 0x01DE98 07:DE88: C6 FB     DEC ram_scroll_Y_hi
loc_DE8A:
C D 2 - - - 0x01DE9A 07:DE8A: A9 00     LDA #$00
C - - - - - 0x01DE9C 07:DE8C: 85 FA     STA ram_scroll_Y_lo
C - - - - - 0x01DE9E 07:DE8E: A5 F8     LDA ram_copy_scroll_Y
C - - - - - 0x01DEA0 07:DE90: 85 00     STA ram_0000
C - - - - - 0x01DEA2 07:DE92: A5 30     LDA ram_ariel_status
C - - - - - 0x01DEA4 07:DE94: C9 02     CMP #con_ariel_jumping_out_of_water
C - - - - - 0x01DEA6 07:DE96: F0 0A     BEQ bra_DEA2
C - - - - - 0x01DEA8 07:DE98: A9 10     LDA #$10
C - - - - - 0x01DEAA 07:DE9A: CD 60 03  CMP ram_pos_Y_lo
C - - - - - 0x01DEAD 07:DE9D: 90 03     BCC bra_DEA2
C - - - - - 0x01DEAF 07:DE9F: 8D 60 03  STA ram_pos_Y_lo
bra_DEA2:
C - - - - - 0x01DEB2 07:DEA2: A5 F8     LDA ram_copy_scroll_Y
C - - - - - 0x01DEB4 07:DEA4: 49 FF     EOR #$FF
C - - - - - 0x01DEB6 07:DEA6: 29 07     AND #$07
C - - - - - 0x01DEB8 07:DEA8: 18        CLC
C - - - - - 0x01DEB9 07:DEA9: 65 00     ADC ram_0000
C - - - - - 0x01DEBB 07:DEAB: 4A        LSR
C - - - - - 0x01DEBC 07:DEAC: 4A        LSR
C - - - - - 0x01DEBD 07:DEAD: 4A        LSR
C - - - - - 0x01DEBE 07:DEAE: 85 01     STA ram_0001
C - - - - - 0x01DEC0 07:DEB0: F0 32     BEQ bra_DEE4
C - - - - - 0x01DEC2 07:DEB2: A5 27     LDA ram_0027
C - - - - - 0x01DEC4 07:DEB4: 29 08     AND #$08
C - - - - - 0x01DEC6 07:DEB6: D0 1E     BNE bra_DED6
C - - - - - 0x01DEC8 07:DEB8: A5 50     LDA ram_substage
C - - - - - 0x01DECA 07:DEBA: 30 05     BMI bra_DEC1_vertical_up
; if vertical down
C - - - - - 0x01DECC 07:DEBC: C6 20     DEC ram_0020
C - - - - - 0x01DECE 07:DEBE: 4C C3 DE  JMP loc_DEC3
bra_DEC1_vertical_up:
C - - - - - 0x01DED1 07:DEC1: E6 20     INC ram_0020
loc_DEC3:
C D 2 - - - 0x01DED3 07:DEC3: C6 22     DEC ram_0022
C - - - - - 0x01DED5 07:DEC5: 10 0F     BPL bra_DED6
C - - - - - 0x01DED7 07:DEC7: A9 1D     LDA #$1D
C - - - - - 0x01DED9 07:DEC9: 85 22     STA ram_0022
C - - - - - 0x01DEDB 07:DECB: A5 50     LDA ram_substage
C - - - - - 0x01DEDD 07:DECD: 30 05     BMI bra_DED4_vertical_up
; if vertical down
C - - - - - 0x01DEDF 07:DECF: C6 20     DEC ram_0020
C - - - - - 0x01DEE1 07:DED1: 4C D6 DE  JMP loc_DED6
bra_DED4_vertical_up:
C - - - - - 0x01DEE4 07:DED4: E6 20     INC ram_0020
bra_DED6:
loc_DED6:
C D 2 - - - 0x01DEE6 07:DED6: A0 01     LDY #$01    ; camera is moving down
C - - - - - 0x01DEE8 07:DED8: A5 50     LDA ram_substage
C - - - - - 0x01DEEA 07:DEDA: 30 02     BMI bra_DEDE_vertical_up
; if vertical down
C - - - - - 0x01DEEC 07:DEDC: A0 02     LDY #$02    ; camera is moving up
bra_DEDE_vertical_up:
C - - - - - 0x01DEEE 07:DEDE: 84 F9     STY ram_camera_direction
C - - - - - 0x01DEF0 07:DEE0: A9 08     LDA #$08
loc_DEE2:
C D 2 - - - 0x01DEF2 07:DEE2: 85 27     STA ram_0027
bra_DEE4:
loc_DEE4:
C D 2 - - - 0x01DEF4 07:DEE4: A5 01     LDA ram_0001
C - - - - - 0x01DEF6 07:DEE6: F0 03     BEQ bra_DEEB_RTS
C - - - - - 0x01DEF8 07:DEE8: 20 CF D7  JSR sub_D7CF
bra_DEEB_RTS:
C - - - - - 0x01DEFB 07:DEEB: 60        RTS



loc_DEEC:
C D 2 - - - 0x01DEFC 07:DEEC: A5 E9     LDA ram_stage
C - - - - - 0x01DEFE 07:DEEE: C9 04     CMP #$04
C - - - - - 0x01DF00 07:DEF0: D0 12     BNE bra_DF04
; if stage 5
C - - - - - 0x01DF02 07:DEF2: A5 50     LDA ram_substage
C - - - - - 0x01DF04 07:DEF4: 29 0F     AND #$0F
C - - - - - 0x01DF06 07:DEF6: F0 0C     BEQ bra_DF04
C - - - - - 0x01DF08 07:DEF8: C9 02     CMP #$02
C - - - - - 0x01DF0A 07:DEFA: F0 08     BEQ bra_DF04
C - - - - - 0x01DF0C 07:DEFC: C9 03     CMP #$03
C - - - - - 0x01DF0E 07:DEFE: F0 04     BEQ bra_DF04
C - - - - - 0x01DF10 07:DF00: C9 06     CMP #$06
C - - - - - 0x01DF12 07:DF02: D0 E7     BNE bra_DEEB_RTS    ; if 01?
bra_DF04:   ; 00 02 03 06
C - - - - - 0x01DF14 07:DF04: A5 50     LDA ram_substage
C - - - - - 0x01DF16 07:DF06: 29 0F     AND #$0F
C - - - - - 0x01DF18 07:DF08: A8        TAY
C - - - - - 0x01DF19 07:DF09: C8        INY
C - - - - - 0x01DF1A 07:DF0A: B1 70     LDA (ram_0070),Y
C - - - - - 0x01DF1C 07:DF0C: 85 09     STA ram_0009
C - - - - - 0x01DF1E 07:DF0E: C9 FF     CMP #$FF
C - - - - - 0x01DF20 07:DF10: D0 01     BNE bra_DF13
; FF
C - - - - - 0x01DF22 07:DF12: 60        RTS
bra_DF13:
C - - - - - 0x01DF23 07:DF13: A9 04     LDA #$04
C - - - - - 0x01DF25 07:DF15: 85 97     STA ram_spr_index
C - - - - - 0x01DF27 07:DF17: 20 BC C1  JSR sub_C1BC_hide_unused_sprites
C - - - - - 0x01DF2A 07:DF1A: 20 D3 C1  JSR sub_C1D3_clear_all_objects
C - - - - - 0x01DF2D 07:DF1D: A9 00     LDA #$00
C - - - - - 0x01DF2F 07:DF1F: 85 3A     STA ram_003A
C - - - - - 0x01DF31 07:DF21: A5 09     LDA ram_0009
C - - - - - 0x01DF33 07:DF23: 29 3F     AND #$3F
C - - - - - 0x01DF35 07:DF25: 38        SEC
C - - - - - 0x01DF36 07:DF26: 65 20     ADC ram_0020
C - - - - - 0x01DF38 07:DF28: 85 07     STA ram_0007
C - - - - - 0x01DF3A 07:DF2A: 85 2E     STA ram_002E
C - - - - - 0x01DF3C 07:DF2C: A4 E9     LDY ram_stage
C - - - - - 0x01DF3E 07:DF2E: A5 50     LDA ram_substage
C - - - - - 0x01DF40 07:DF30: 29 0F     AND #$0F
C - - - - - 0x01DF42 07:DF32: 38        SEC
C - - - - - 0x01DF43 07:DF33: 79 FF DA  ADC tbl_DAFF,Y
C - - - - - 0x01DF46 07:DF36: 48        PHA
C - - - - - 0x01DF47 07:DF37: AA        TAX
C - - - - - 0x01DF48 07:DF38: BC 05 DB  LDY tbl_DB05_index,X
C - - - - - 0x01DF4B 07:DF3B: 20 2A C5  JSR sub_C52A
C - - - - - 0x01DF4E 07:DF3E: 68        PLA
C - - - - - 0x01DF4F 07:DF3F: AA        TAX
C - - - - - 0x01DF50 07:DF40: BD 24 DB  LDA tbl_DB24,X
C - - - - - 0x01DF53 07:DF43: F0 17     BEQ bra_DF5C_loop
C - - - - - 0x01DF55 07:DF45: 0A        ASL
C - - - - - 0x01DF56 07:DF46: 0A        ASL
C - - - - - 0x01DF57 07:DF47: 0A        ASL
C - - - - - 0x01DF58 07:DF48: A8        TAY
C - - - - - 0x01DF59 07:DF49: A2 00     LDX #$00
bra_DF4B_loop:
C - - - - - 0x01DF5B 07:DF4B: B9 9B DB  LDA tbl_DBA3_palette - $08,Y
C - - - - - 0x01DF5E 07:DF4E: 9D 18 06  STA ram_pal_buffer_1 + $18,X
C - - - - - 0x01DF61 07:DF51: 9D 38 06  STA ram_pal_buffer_2 + $18,X
C - - - - - 0x01DF64 07:DF54: C8        INY
C - - - - - 0x01DF65 07:DF55: E8        INX
C - - - - - 0x01DF66 07:DF56: E0 08     CPX #$08
C - - - - - 0x01DF68 07:DF58: D0 F1     BNE bra_DF4B_loop
C - - - - - 0x01DF6A 07:DF5A: 86 18     STX ram_0018
bra_DF5C_loop:
C - - - - - 0x01DF6C 07:DF5C: A5 FC     LDA ram_scroll_X_lo
C - - - - - 0x01DF6E 07:DF5E: 18        CLC
C - - - - - 0x01DF6F 07:DF5F: 69 04     ADC #< $0004
C - - - - - 0x01DF71 07:DF61: 85 FC     STA ram_scroll_X_lo
C - - - - - 0x01DF73 07:DF63: A5 FD     LDA ram_scroll_X_hi
C - - - - - 0x01DF75 07:DF65: 69 00     ADC #> $0004
C - - - - - 0x01DF77 07:DF67: 85 FD     STA ram_scroll_X_hi
C - - - - - 0x01DF79 07:DF69: AD 20 03  LDA ram_pos_X_fr
C - - - - - 0x01DF7C 07:DF6C: 18        CLC
C - - - - - 0x01DF7D 07:DF6D: 69 80     ADC #< $0080
C - - - - - 0x01DF7F 07:DF6F: 8D 20 03  STA ram_pos_X_fr
C - - - - - 0x01DF82 07:DF72: AD 30 03  LDA ram_pos_X_lo
C - - - - - 0x01DF85 07:DF75: 69 00     ADC #> $0080
C - - - - - 0x01DF87 07:DF77: 8D 30 03  STA ram_pos_X_lo
C - - - - - 0x01DF8A 07:DF7A: AD 40 03  LDA ram_pos_X_hi
C - - - - - 0x01DF8D 07:DF7D: 69 00     ADC #$00
C - - - - - 0x01DF8F 07:DF7F: 8D 40 03  STA ram_pos_X_hi
C - - - - - 0x01DF92 07:DF82: A9 01     LDA #$01
C - - - - - 0x01DF94 07:DF84: 85 01     STA ram_0001
C - - - - - 0x01DF96 07:DF86: 20 BD D6  JSR sub_D6BD
C - - - - - 0x01DF99 07:DF89: A5 09     LDA ram_0009
C - - - - - 0x01DF9B 07:DF8B: 29 C0     AND #$C0
C - - - - - 0x01DF9D 07:DF8D: F0 0E     BEQ bra_DF9D
C - - - - - 0x01DF9F 07:DF8F: A5 22     LDA ram_0022
C - - - - - 0x01DFA1 07:DF91: 29 3F     AND #$3F
C - - - - - 0x01DFA3 07:DF93: D0 08     BNE bra_DF9D
C - - - - - 0x01DFA5 07:DF95: A5 20     LDA ram_0020
C - - - - - 0x01DFA7 07:DF97: 85 08     STA ram_0008
C - - - - - 0x01DFA9 07:DF99: A5 07     LDA ram_0007
C - - - - - 0x01DFAB 07:DF9B: 85 20     STA ram_0020
bra_DF9D:
C - - - - - 0x01DFAD 07:DF9D: 20 3D C5  JSR sub_C53D
C - - - - - 0x01DFB0 07:DFA0: A9 04     LDA #$04    ; con_prg_bank + $04
C - - - - - 0x01DFB2 07:DFA2: 85 97     STA ram_spr_index
C - - - - - 0x01DFB4 07:DFA4: 20 CD FF  JSR sub_FFCD_prg_bankswitch
C - - - - - 0x01DFB7 07:DFA7: 20 BC C1  JSR sub_C1BC_hide_unused_sprites
C - - - - - 0x01DFBA 07:DFAA: A5 30     LDA ram_ariel_status
C - - - - - 0x01DFBC 07:DFAC: F0 05     BEQ bra_DFB3    ; if con_ariel_default
C - - - - - 0x01DFBE 07:DFAE: A9 00     LDA #$00
C - - - - - 0x01DFC0 07:DFB0: 8D 48 04  STA ram_0448
bra_DFB3:
C - - - - - 0x01DFC3 07:DFB3: 20 03 80  JSR sub_0x010013
C - - - - - 0x01DFC6 07:DFB6: A9 00     LDA #$00
C - - - - - 0x01DFC8 07:DFB8: 85 EE     STA ram_00EE
C - - - - - 0x01DFCA 07:DFBA: 20 AD FF  JSR sub_FFAD
C - - - - - 0x01DFCD 07:DFBD: E6 EE     INC ram_00EE
C - - - - - 0x01DFCF 07:DFBF: AD 30 03  LDA ram_pos_X_lo
C - - - - - 0x01DFD2 07:DFC2: 85 32     STA ram_0032
C - - - - - 0x01DFD4 07:DFC4: AD 40 03  LDA ram_pos_X_hi
C - - - - - 0x01DFD7 07:DFC7: 85 33     STA ram_0033
C - - - - - 0x01DFD9 07:DFC9: A5 FC     LDA ram_scroll_X_lo
C - - - - - 0x01DFDB 07:DFCB: 85 F7     STA ram_copy_scroll_X
C - - - - - 0x01DFDD 07:DFCD: A5 FC     LDA ram_scroll_X_lo
C - - - - - 0x01DFDF 07:DFCF: D0 8B     BNE bra_DF5C_loop
C - - - - - 0x01DFE1 07:DFD1: A5 09     LDA ram_0009
C - - - - - 0x01DFE3 07:DFD3: 29 C0     AND #$C0
C - - - - - 0x01DFE5 07:DFD5: F0 04     BEQ bra_DFDB
C - - - - - 0x01DFE7 07:DFD7: A5 08     LDA ram_0008
C - - - - - 0x01DFE9 07:DFD9: 85 20     STA ram_0020
bra_DFDB:
C - - - - - 0x01DFEB 07:DFDB: A9 00     LDA #$00
C - - - - - 0x01DFED 07:DFDD: 85 52     STA ram_0052
C - - - - - 0x01DFEF 07:DFDF: E6 50     INC ram_substage
C - - - - - 0x01DFF1 07:DFE1: A5 50     LDA ram_substage
C - - - - - 0x01DFF3 07:DFE3: 29 0F     AND #$0F
C - - - - - 0x01DFF5 07:DFE5: 85 50     STA ram_substage
C - - - - - 0x01DFF7 07:DFE7: A8        TAY
C - - - - - 0x01DFF8 07:DFE8: B1 70     LDA (ram_0070),Y
C - - - - - 0x01DFFA 07:DFEA: 48        PHA
C - - - - - 0x01DFFB 07:DFEB: 29 1F     AND #$1F
C - - - - - 0x01DFFD 07:DFED: 85 51     STA ram_scroll_hi_max
C - - - - - 0x01DFFF 07:DFEF: 68        PLA
C - - - - - 0x01E000 07:DFF0: 29 C0     AND #$C0
C - - - - - 0x01E002 07:DFF2: 05 50     ORA ram_substage
C - - - - - 0x01E004 07:DFF4: 85 50     STA ram_substage
C - - - - - 0x01E006 07:DFF6: 29 C0     AND #$C0
C - - - - - 0x01E008 07:DFF8: D0 04     BNE bra_DFFE_vertical
; if horisontal
C - - - - - 0x01E00A 07:DFFA: A9 01     LDA #$01
C - - - - - 0x01E00C 07:DFFC: D0 10     BNE bra_E00E   ; jmp
bra_DFFE_vertical:
C - - - - - 0x01E00E 07:DFFE: 30 08     BMI bra_E008_vertical_up
; if vertical down
C - - - - - 0x01E010 07:E000: A9 00     LDA #$00
C - - - - - 0x01E012 07:E002: 85 22     STA ram_0022
C - - - - - 0x01E014 07:E004: A9 04     LDA #$04
C - - - - - 0x01E016 07:E006: D0 06     BNE bra_E00E   ; jmp
bra_E008_vertical_up:
C - - - - - 0x01E018 07:E008: A9 1D     LDA #$1D
C - - - - - 0x01E01A 07:E00A: 85 22     STA ram_0022
C - - - - - 0x01E01C 07:E00C: A9 08     LDA #$08
bra_E00E:
C - - - - - 0x01E01E 07:E00E: 85 27     STA ram_0027
C - - - - - 0x01E020 07:E010: A2 00     LDX #$00
C - - - - - 0x01E022 07:E012: A5 E9     LDA ram_stage
C - - - - - 0x01E024 07:E014: C9 03     CMP #$03
C - - - - - 0x01E026 07:E016: D0 20     BNE bra_E038
; if stage 4
C - - - - - 0x01E028 07:E018: A5 50     LDA ram_substage
C - - - - - 0x01E02A 07:E01A: 29 0F     AND #$0F
C - - - - - 0x01E02C 07:E01C: C9 05     CMP #$05
C - - - - - 0x01E02E 07:E01E: D0 18     BNE bra_E038
C - - - - - 0x01E030 07:E020: A0 00     LDY #$00
C - - - - - 0x01E032 07:E022: 8C 03 01  STY ram_0103
C - - - - - 0x01E035 07:E025: A2 00     LDX #$00
bra_E027_loop:
C - - - - - 0x01E037 07:E027: B9 4D E0  LDA tbl_E04D_palette,Y
C - - - - - 0x01E03A 07:E02A: 9D 00 06  STA ram_pal_buffer_1,X
C - - - - - 0x01E03D 07:E02D: 9D 20 06  STA ram_pal_buffer_2,X
C - - - - - 0x01E040 07:E030: C8        INY
C - - - - - 0x01E041 07:E031: E8        INX
C - - - - - 0x01E042 07:E032: E0 10     CPX #$10
C - - - - - 0x01E044 07:E034: D0 F1     BNE bra_E027_loop
C - - - - - 0x01E046 07:E036: 86 18     STX ram_0018
bra_E038:
C - - - - - 0x01E048 07:E038: A5 E9     LDA ram_stage
C - - - - - 0x01E04A 07:E03A: C9 03     CMP #$03
C - - - - - 0x01E04C 07:E03C: D0 0E     BNE bra_E04C_RTS
; if stage 4
C - - - - - 0x01E04E 07:E03E: A5 FD     LDA ram_scroll_X_hi
C - - - - - 0x01E050 07:E040: 18        CLC
C - - - - - 0x01E051 07:E041: 65 FB     ADC ram_scroll_Y_hi
C - - - - - 0x01E053 07:E043: C9 0E     CMP #$0E
C - - - - - 0x01E055 07:E045: D0 05     BNE bra_E04C_RTS
C - - - - - 0x01E057 07:E047: A0 0D     LDY #$0D
C - - - - - 0x01E059 07:E049: 20 2A C5  JSR sub_C52A
bra_E04C_RTS:
C - - - - - 0x01E05C 07:E04C: 60        RTS



tbl_E04D_palette:
- D 3 - - - 0x01E05D 07:E04D: 0F        .byte $0F, $36, $26, $03   ; 
- D 3 - - - 0x01E061 07:E051: 0F        .byte $0F, $37, $28, $18   ; 
- D 3 - - - 0x01E065 07:E055: 0F        .byte $0F, $2B, $1C, $1B   ; 
- D 3 - - - 0x01E069 07:E059: 0F        .byte $0F, $28, $18, $08   ; 

- D 3 - - - 0x01E06D 07:E05D: 0F        .byte $0F, $03, $23, $33   ; 
- D 3 - - - 0x01E071 07:E061: 0F        .byte $0F, $1C, $2C, $3C   ; 
- D 3 - - - 0x01E075 07:E065: 0F        .byte $0F, $31, $22, $1C   ; 
- D 3 - - - 0x01E079 07:E069: 0F        .byte $0F, $22, $1C, $01   ; 



sub_E06D:
C - - - - - 0x01E07D 07:E06D: A4 E9     LDY ram_stage
C - - - - - 0x01E07F 07:E06F: B9 61 E2  LDA tbl_E261,Y
C - - - - - 0x01E082 07:E072: F0 D8     BEQ bra_E04C_RTS
C - - - - - 0x01E084 07:E074: AD 40 03  LDA ram_pos_X_hi
C - - - - - 0x01E087 07:E077: 18        CLC
C - - - - - 0x01E088 07:E078: 6D 70 03  ADC ram_pos_Y_hi
C - - - - - 0x01E08B 07:E07B: D9 61 E2  CMP tbl_E261,Y
C - - - - - 0x01E08E 07:E07E: D0 15     BNE bra_E095
C - - - - - 0x01E090 07:E080: AD 30 03  LDA ram_pos_X_lo
C - - - - - 0x01E093 07:E083: 38        SEC
C - - - - - 0x01E094 07:E084: E9 70     SBC #$70
C - - - - - 0x01E096 07:E086: 90 C4     BCC bra_E04C_RTS
C - - - - - 0x01E098 07:E088: C9 20     CMP #$20
C - - - - - 0x01E09A 07:E08A: B0 C0     BCS bra_E04C_RTS
C - - - - - 0x01E09C 07:E08C: AD 60 03  LDA ram_pos_Y_lo
C - - - - - 0x01E09F 07:E08F: D9 67 E2  CMP tbl_E267,Y
C - - - - - 0x01E0A2 07:E092: F0 67     BEQ bra_E0FB
C - - - - - 0x01E0A4 07:E094: 60        RTS
bra_E095:
C - - - - - 0x01E0A5 07:E095: D9 6D E2  CMP tbl_E26D,Y
C - - - - - 0x01E0A8 07:E098: D0 B2     BNE bra_E04C_RTS
C - - - - - 0x01E0AA 07:E09A: AD 60 03  LDA ram_pos_Y_lo
C - - - - - 0x01E0AD 07:E09D: D9 73 E2  CMP tbl_E273,Y
C - - - - - 0x01E0B0 07:E0A0: D0 AA     BNE bra_E04C_RTS
C - - - - - 0x01E0B2 07:E0A2: A9 80     LDA #$80
C - - - - - 0x01E0B4 07:E0A4: 8D 30 03  STA ram_pos_X_lo
C - - - - - 0x01E0B7 07:E0A7: B9 61 E2  LDA tbl_E261,Y
C - - - - - 0x01E0BA 07:E0AA: 85 20     STA ram_0020
C - - - - - 0x01E0BC 07:E0AC: 20 71 E1  JSR sub_E171
C - - - - - 0x01E0BF 07:E0AF: AD F0 07  LDA ram_07F0
C - - - - - 0x01E0C2 07:E0B2: 85 22     STA ram_0022
C - - - - - 0x01E0C4 07:E0B4: AD F1 07  LDA ram_07F1
C - - - - - 0x01E0C7 07:E0B7: 85 27     STA ram_0027
C - - - - - 0x01E0C9 07:E0B9: AD F2 07  LDA ram_07F2
C - - - - - 0x01E0CC 07:E0BC: 85 20     STA ram_0020
C - - - - - 0x01E0CE 07:E0BE: AD F3 07  LDA ram_copy_substage
C - - - - - 0x01E0D1 07:E0C1: 85 50     STA ram_substage
C - - - - - 0x01E0D3 07:E0C3: AD F4 07  LDA ram_07F4
C - - - - - 0x01E0D6 07:E0C6: 85 51     STA ram_scroll_hi_max
C - - - - - 0x01E0D8 07:E0C8: AD F5 07  LDA ram_07F5
C - - - - - 0x01E0DB 07:E0CB: 85 52     STA ram_0052
C - - - - - 0x01E0DD 07:E0CD: AD F6 07  LDA ram_07F6
C - - - - - 0x01E0E0 07:E0D0: 85 FD     STA ram_scroll_X_hi
C - - - - - 0x01E0E2 07:E0D2: AD F7 07  LDA ram_07F7
C - - - - - 0x01E0E5 07:E0D5: 85 FB     STA ram_scroll_Y_hi
C - - - - - 0x01E0E7 07:E0D7: AD F8 07  LDA ram_07F8
C - - - - - 0x01E0EA 07:E0DA: 8D 40 03  STA ram_pos_X_hi
C - - - - - 0x01E0ED 07:E0DD: AD F9 07  LDA ram_07F9
C - - - - - 0x01E0F0 07:E0E0: 8D 70 03  STA ram_pos_Y_hi
C - - - - - 0x01E0F3 07:E0E3: AD FA 07  LDA ram_07FA
C - - - - - 0x01E0F6 07:E0E6: 85 FC     STA ram_scroll_X_lo
C - - - - - 0x01E0F8 07:E0E8: A9 04     LDA #con_prg_bank + $04
C - - - - - 0x01E0FA 07:E0EA: 20 CD FF  JSR sub_FFCD_prg_bankswitch
C - - - - - 0x01E0FD 07:E0ED: A4 E9     LDY ram_stage
C - - - - - 0x01E0FF 07:E0EF: B9 B8 BF  LDA tbl_0x013FC8,Y
C - - - - - 0x01E102 07:E0F2: 85 9E     STA ram_009E
C - - - - - 0x01E104 07:E0F4: 85 9F     STA ram_009F
C - - - - - 0x01E106 07:E0F6: A9 01     LDA #$01
C - - - - - 0x01E108 07:E0F8: 85 F9     STA ram_camera_direction
C - - - - - 0x01E10A 07:E0FA: 60        RTS
bra_E0FB:
C - - - - - 0x01E10B 07:E0FB: A5 22     LDA ram_0022
C - - - - - 0x01E10D 07:E0FD: 8D F0 07  STA ram_07F0
C - - - - - 0x01E110 07:E100: A5 27     LDA ram_0027
C - - - - - 0x01E112 07:E102: 8D F1 07  STA ram_07F1
C - - - - - 0x01E115 07:E105: A5 20     LDA ram_0020
C - - - - - 0x01E117 07:E107: 8D F2 07  STA ram_07F2
C - - - - - 0x01E11A 07:E10A: A5 50     LDA ram_substage
C - - - - - 0x01E11C 07:E10C: 8D F3 07  STA ram_copy_substage
C - - - - - 0x01E11F 07:E10F: A5 51     LDA ram_scroll_hi_max
C - - - - - 0x01E121 07:E111: 8D F4 07  STA ram_07F4
C - - - - - 0x01E124 07:E114: A5 52     LDA ram_0052
C - - - - - 0x01E126 07:E116: 8D F5 07  STA ram_07F5
C - - - - - 0x01E129 07:E119: A5 FD     LDA ram_scroll_X_hi
C - - - - - 0x01E12B 07:E11B: 8D F6 07  STA ram_07F6
C - - - - - 0x01E12E 07:E11E: A5 FB     LDA ram_scroll_Y_hi
C - - - - - 0x01E130 07:E120: 8D F7 07  STA ram_07F7
C - - - - - 0x01E133 07:E123: AD 40 03  LDA ram_pos_X_hi
C - - - - - 0x01E136 07:E126: 8D F8 07  STA ram_07F8
C - - - - - 0x01E139 07:E129: AD 70 03  LDA ram_pos_Y_hi
C - - - - - 0x01E13C 07:E12C: 8D F9 07  STA ram_07F9
C - - - - - 0x01E13F 07:E12F: A5 FC     LDA ram_scroll_X_lo
C - - - - - 0x01E141 07:E131: 8D FA 07  STA ram_07FA
C - - - - - 0x01E144 07:E134: AD 40 03  LDA ram_pos_X_hi
C - - - - - 0x01E147 07:E137: 85 FD     STA ram_scroll_X_hi
C - - - - - 0x01E149 07:E139: A9 80     LDA #$80
C - - - - - 0x01E14B 07:E13B: 8D 30 03  STA ram_pos_X_lo
C - - - - - 0x01E14E 07:E13E: A9 00     LDA #$00
C - - - - - 0x01E150 07:E140: 85 FC     STA ram_scroll_X_lo
C - - - - - 0x01E152 07:E142: 85 52     STA ram_0052
C - - - - - 0x01E154 07:E144: 85 51     STA ram_scroll_hi_max
C - - - - - 0x01E156 07:E146: B9 6D E2  LDA tbl_E26D,Y
C - - - - - 0x01E159 07:E149: 85 20     STA ram_0020
C - - - - - 0x01E15B 07:E14B: 20 71 E1  JSR sub_E171
C - - - - - 0x01E15E 07:E14E: A4 E9     LDY ram_stage
C - - - - - 0x01E160 07:E150: B9 6D E2  LDA tbl_E26D,Y
C - - - - - 0x01E163 07:E153: 38        SEC
C - - - - - 0x01E164 07:E154: E5 FD     SBC ram_scroll_X_hi
C - - - - - 0x01E166 07:E156: 85 FB     STA ram_scroll_Y_hi
C - - - - - 0x01E168 07:E158: 8D 70 03  STA ram_pos_Y_hi
C - - - - - 0x01E16B 07:E15B: A9 04     LDA #con_prg_bank + $04
C - - - - - 0x01E16D 07:E15D: 20 CD FF  JSR sub_FFCD_prg_bankswitch
C - - - - - 0x01E170 07:E160: B9 B0 BF  LDA tbl_0x013FC0,Y
C - - - - - 0x01E173 07:E163: 85 9E     STA ram_009E
C - - - - - 0x01E175 07:E165: 85 9F     STA ram_009F
C - - - - - 0x01E177 07:E167: A9 01     LDA #$01
C - - - - - 0x01E179 07:E169: 85 F9     STA ram_camera_direction
C - - - - - 0x01E17B 07:E16B: B9 79 E2  LDA tbl_E279,Y
C - - - - - 0x01E17E 07:E16E: 85 50     STA ram_substage
C - - - - - 0x01E180 07:E170: 60        RTS



sub_E171:
C - - - - - 0x01E181 07:E171: A9 00     LDA #$00
C - - - - - 0x01E183 07:E173: 85 3A     STA ram_003A
C - - - - - 0x01E185 07:E175: 20 BA CB  JSR sub_CBBA
C - - - - - 0x01E188 07:E178: AD 60 03  LDA ram_pos_Y_lo
C - - - - - 0x01E18B 07:E17B: C9 E0     CMP #$E0
C - - - - - 0x01E18D 07:E17D: D0 74     BNE bra_E1F3
C - - - - - 0x01E18F 07:E17F: A9 00     LDA #$00
C - - - - - 0x01E191 07:E181: 85 22     STA ram_0022
C - - - - - 0x01E193 07:E183: A9 04     LDA #$04
C - - - - - 0x01E195 07:E185: 85 27     STA ram_0027
C - - - - - 0x01E197 07:E187: A5 50     LDA ram_substage
C - - - - - 0x01E199 07:E189: 09 40     ORA #$40    ; during transition to a hidden area?
C - - - - - 0x01E19B 07:E18B: 85 50     STA ram_substage
C - - - - - 0x01E19D 07:E18D: 20 BC C1  JSR sub_C1BC_hide_unused_sprites
C - - - - - 0x01E1A0 07:E190: 20 D3 C1  JSR sub_C1D3_clear_all_objects
bra_E193_loop:
C - - - - - 0x01E1A3 07:E193: A5 FA     LDA ram_scroll_Y_lo
C - - - - - 0x01E1A5 07:E195: 18        CLC
C - - - - - 0x01E1A6 07:E196: 69 04     ADC #$04
C - - - - - 0x01E1A8 07:E198: 85 FA     STA ram_scroll_Y_lo
C - - - - - 0x01E1AA 07:E19A: C9 F0     CMP #$F0
C - - - - - 0x01E1AC 07:E19C: 90 06     BCC bra_E1A4
C - - - - - 0x01E1AE 07:E19E: A9 00     LDA #$00
C - - - - - 0x01E1B0 07:E1A0: 85 FA     STA ram_scroll_Y_lo
C - - - - - 0x01E1B2 07:E1A2: E6 FB     INC ram_scroll_Y_hi
bra_E1A4:
C - - - - - 0x01E1B4 07:E1A4: AD 50 03  LDA ram_pos_Y_fr
C - - - - - 0x01E1B7 07:E1A7: 18        CLC
C - - - - - 0x01E1B8 07:E1A8: 69 80     ADC #< $0080
C - - - - - 0x01E1BA 07:E1AA: 8D 50 03  STA ram_pos_Y_fr
C - - - - - 0x01E1BD 07:E1AD: AD 60 03  LDA ram_pos_Y_lo
C - - - - - 0x01E1C0 07:E1B0: 69 00     ADC #> $0080
C - - - - - 0x01E1C2 07:E1B2: 8D 60 03  STA ram_pos_Y_lo
C - - - - - 0x01E1C5 07:E1B5: C9 F0     CMP #$F0
C - - - - - 0x01E1C7 07:E1B7: 90 08     BCC bra_E1C1
C - - - - - 0x01E1C9 07:E1B9: A9 00     LDA #$00
C - - - - - 0x01E1CB 07:E1BB: 8D 60 03  STA ram_pos_Y_lo
C - - - - - 0x01E1CE 07:E1BE: EE 70 03  INC ram_pos_Y_hi
bra_E1C1:
C - - - - - 0x01E1D1 07:E1C1: A5 FA     LDA ram_scroll_Y_lo
C - - - - - 0x01E1D3 07:E1C3: 29 07     AND #$07
C - - - - - 0x01E1D5 07:E1C5: D0 03     BNE bra_E1CA
C - - - - - 0x01E1D7 07:E1C7: 20 CF D7  JSR sub_D7CF
bra_E1CA:
C - - - - - 0x01E1DA 07:E1CA: A9 04     LDA #$04    ; con_prg_bank + $04
C - - - - - 0x01E1DC 07:E1CC: 85 97     STA ram_spr_index
C - - - - - 0x01E1DE 07:E1CE: 20 CD FF  JSR sub_FFCD_prg_bankswitch
C - - - - - 0x01E1E1 07:E1D1: 20 BC C1  JSR sub_C1BC_hide_unused_sprites
C - - - - - 0x01E1E4 07:E1D4: A5 30     LDA ram_ariel_status
C - - - - - 0x01E1E6 07:E1D6: F0 05     BEQ bra_E1DD    ; if con_ariel_default
- - - - - - 0x01E1E8 07:E1D8: A9 00     LDA #$00
- - - - - - 0x01E1EA 07:E1DA: 8D 48 04  STA ram_0448
bra_E1DD:
C - - - - - 0x01E1ED 07:E1DD: 20 03 80  JSR sub_0x010013
C - - - - - 0x01E1F0 07:E1E0: A9 00     LDA #$00
C - - - - - 0x01E1F2 07:E1E2: 85 EE     STA ram_00EE
C - - - - - 0x01E1F4 07:E1E4: 20 AD FF  JSR sub_FFAD
C - - - - - 0x01E1F7 07:E1E7: E6 EE     INC ram_00EE
C - - - - - 0x01E1F9 07:E1E9: A5 FA     LDA ram_scroll_Y_lo
C - - - - - 0x01E1FB 07:E1EB: D0 A6     BNE bra_E193_loop
C - - - - - 0x01E1FD 07:E1ED: A9 18     LDA #$18
C - - - - - 0x01E1FF 07:E1EF: 8D 60 03  STA ram_pos_Y_lo
C - - - - - 0x01E202 07:E1F2: 60        RTS
bra_E1F3:
C - - - - - 0x01E203 07:E1F3: A9 1D     LDA #$1D
C - - - - - 0x01E205 07:E1F5: 85 22     STA ram_0022
C - - - - - 0x01E207 07:E1F7: A9 08     LDA #$08
C - - - - - 0x01E209 07:E1F9: 85 27     STA ram_0027
C - - - - - 0x01E20B 07:E1FB: A9 80     LDA #$80    ; during transition out of a hidden area?
C - - - - - 0x01E20D 07:E1FD: 85 50     STA ram_substage
C - - - - - 0x01E20F 07:E1FF: 20 BC C1  JSR sub_C1BC_hide_unused_sprites
C - - - - - 0x01E212 07:E202: 20 D3 C1  JSR sub_C1D3_clear_all_objects
bra_E205_loop:
C - - - - - 0x01E215 07:E205: A5 FA     LDA ram_scroll_Y_lo
C - - - - - 0x01E217 07:E207: 29 07     AND #$07
C - - - - - 0x01E219 07:E209: D0 03     BNE bra_E20E
C - - - - - 0x01E21B 07:E20B: 20 CF D7  JSR sub_D7CF
bra_E20E:
C - - - - - 0x01E21E 07:E20E: A5 FA     LDA ram_scroll_Y_lo
C - - - - - 0x01E220 07:E210: 38        SEC
C - - - - - 0x01E221 07:E211: E9 04     SBC #$04
C - - - - - 0x01E223 07:E213: 85 FA     STA ram_scroll_Y_lo
C - - - - - 0x01E225 07:E215: B0 06     BCS bra_E21D
C - - - - - 0x01E227 07:E217: A9 EC     LDA #$EC
C - - - - - 0x01E229 07:E219: 85 FA     STA ram_scroll_Y_lo
C - - - - - 0x01E22B 07:E21B: C6 FB     DEC ram_scroll_Y_hi
bra_E21D:
C - - - - - 0x01E22D 07:E21D: AD 50 03  LDA ram_pos_Y_fr
C - - - - - 0x01E230 07:E220: 38        SEC
C - - - - - 0x01E231 07:E221: E9 80     SBC #< $0080
C - - - - - 0x01E233 07:E223: 8D 50 03  STA ram_pos_Y_fr
C - - - - - 0x01E236 07:E226: AD 60 03  LDA ram_pos_Y_lo
C - - - - - 0x01E239 07:E229: E9 00     SBC #> $0080
C - - - - - 0x01E23B 07:E22B: 8D 60 03  STA ram_pos_Y_lo
C - - - - - 0x01E23E 07:E22E: B0 08     BCS bra_E238
C - - - - - 0x01E240 07:E230: A9 EF     LDA #$EF
C - - - - - 0x01E242 07:E232: 8D 60 03  STA ram_pos_Y_lo
C - - - - - 0x01E245 07:E235: CE 70 03  DEC ram_pos_Y_hi
bra_E238:
C - - - - - 0x01E248 07:E238: A9 04     LDA #$04    ; con_prg_bank + $04
C - - - - - 0x01E24A 07:E23A: 85 97     STA ram_spr_index
C - - - - - 0x01E24C 07:E23C: 20 CD FF  JSR sub_FFCD_prg_bankswitch
C - - - - - 0x01E24F 07:E23F: 20 BC C1  JSR sub_C1BC_hide_unused_sprites
C - - - - - 0x01E252 07:E242: A5 30     LDA ram_ariel_status
C - - - - - 0x01E254 07:E244: F0 05     BEQ bra_E24B    ; if con_ariel_default
C - - - - - 0x01E256 07:E246: A9 00     LDA #$00
C - - - - - 0x01E258 07:E248: 8D 48 04  STA ram_0448
bra_E24B:
C - - - - - 0x01E25B 07:E24B: 20 03 80  JSR sub_0x010013
C - - - - - 0x01E25E 07:E24E: A9 00     LDA #$00
C - - - - - 0x01E260 07:E250: 85 EE     STA ram_00EE
C - - - - - 0x01E262 07:E252: 20 AD FF  JSR sub_FFAD
C - - - - - 0x01E265 07:E255: E6 EE     INC ram_00EE
C - - - - - 0x01E267 07:E257: A5 FA     LDA ram_scroll_Y_lo
C - - - - - 0x01E269 07:E259: D0 AA     BNE bra_E205_loop
C - - - - - 0x01E26B 07:E25B: A9 D8     LDA #$D8
C - - - - - 0x01E26D 07:E25D: 8D 60 03  STA ram_pos_Y_lo
C - - - - - 0x01E270 07:E260: 60        RTS



tbl_E261:
- D 3 - - - 0x01E271 07:E261: 0A        .byte $0A   ; 00
- D 3 - - - 0x01E272 07:E262: 00        .byte $00   ; 01
- D 3 - - - 0x01E273 07:E263: 05        .byte $05   ; 02
- D 3 - - - 0x01E274 07:E264: 07        .byte $07   ; 03
- D 3 - - - 0x01E275 07:E265: 00        .byte $00   ; 04
- D 3 - - - 0x01E276 07:E266: 00        .byte $00   ; 05



tbl_E267:
- D 3 - - - 0x01E277 07:E267: E0        .byte $E0   ; 00
- - - - - - 0x01E278 07:E268: 00        .byte $00   ; 01
- D 3 - - - 0x01E279 07:E269: E0        .byte $E0   ; 02
- D 3 - - - 0x01E27A 07:E26A: 10        .byte $10   ; 03
- - - - - - 0x01E27B 07:E26B: 00        .byte $00   ; 04
- - - - - - 0x01E27C 07:E26C: 00        .byte $00   ; 05



tbl_E26D:
- D 3 - - - 0x01E27D 07:E26D: 11        .byte $11   ; 00
- - - - - - 0x01E27E 07:E26E: 00        .byte $00   ; 01
- D 3 - - - 0x01E27F 07:E26F: 13        .byte $13   ; 02
- D 3 - - - 0x01E280 07:E270: 11        .byte $11   ; 03
- - - - - - 0x01E281 07:E271: 00        .byte $00   ; 04
- - - - - - 0x01E282 07:E272: 00        .byte $00   ; 05



tbl_E273:
- D 3 - - - 0x01E283 07:E273: 10        .byte $10   ; 00
- - - - - - 0x01E284 07:E274: 00        .byte $00   ; 01
- D 3 - - - 0x01E285 07:E275: 10        .byte $10   ; 02
- D 3 - - - 0x01E286 07:E276: E0        .byte $E0   ; 03
- - - - - - 0x01E287 07:E277: 00        .byte $00   ; 04
- - - - - - 0x01E288 07:E278: 00        .byte $00   ; 05



tbl_E279:   ; hidden areas?
- D 3 - - - 0x01E289 07:E279: 05        .byte $05   ; 00
- - - - - - 0x01E28A 07:E27A: 00        .byte $00   ; 01
- D 3 - - - 0x01E28B 07:E27B: 07        .byte $07   ; 02
- D 3 - - - 0x01E28C 07:E27C: 08        .byte $08   ; 03
- - - - - - 0x01E28D 07:E27D: 00        .byte $00   ; 04
- - - - - - 0x01E28E 07:E27E: 00        .byte $00   ; 05



sub_E27F:
sub_0x01E28F:
C - - - - - 0x01E28F 07:E27F: B9 22 E6  LDA tbl_E622,Y
C - - - - - 0x01E292 07:E282: 85 40     STA ram_0040
C - - - - - 0x01E294 07:E284: 20 44 E5  JSR sub_E544
C - - - - - 0x01E297 07:E287: A8        TAY
C - - - - - 0x01E298 07:E288: B9 32 E6  LDA tbl_E632,Y
C - - - - - 0x01E29B 07:E28B: 85 05     STA ram_0005
C - - - - - 0x01E29D 07:E28D: A9 00     LDA #$00
C - - - - - 0x01E29F 07:E28F: 85 02     STA ram_0002
C - - - - - 0x01E2A1 07:E291: B9 33 E6  LDA tbl_E633,Y
C - - - - - 0x01E2A4 07:E294: 48        PHA
C - - - - - 0x01E2A5 07:E295: 18        CLC
C - - - - - 0x01E2A6 07:E296: 65 07     ADC ram_0007
C - - - - - 0x01E2A8 07:E298: 85 11     STA ram_0011
C - - - - - 0x01E2AA 07:E29A: 68        PLA
C - - - - - 0x01E2AB 07:E29B: 30 39     BMI bra_E2D6
C - - - - - 0x01E2AD 07:E29D: B0 06     BCS bra_E2A5
C - - - - - 0x01E2AF 07:E29F: A5 11     LDA ram_0011
C - - - - - 0x01E2B1 07:E2A1: C9 F0     CMP #$F0
C - - - - - 0x01E2B3 07:E2A3: 90 6A     BCC bra_E30F
bra_E2A5:
C - - - - - 0x01E2B5 07:E2A5: A5 11     LDA ram_0011
C - - - - - 0x01E2B7 07:E2A7: 69 0F     ADC #$0F
C - - - - - 0x01E2B9 07:E2A9: 85 11     STA ram_0011
C - - - - - 0x01E2BB 07:E2AB: A5 50     LDA ram_substage
C - - - - - 0x01E2BD 07:E2AD: 29 C0     AND #$C0
C - - - - - 0x01E2BF 07:E2AF: F0 22     BEQ bra_E2D3    ; if horisontal
C - - - - - 0x01E2C1 07:E2B1: 30 06     BMI bra_E2B9_vertical_up
; if vertical down
C - - - - - 0x01E2C3 07:E2B3: A5 52     LDA ram_0052
C - - - - - 0x01E2C5 07:E2B5: C5 51     CMP ram_scroll_hi_max
C - - - - - 0x01E2C7 07:E2B7: F0 1A     BEQ bra_E2D3
bra_E2B9_vertical_up:
C - - - - - 0x01E2C9 07:E2B9: A5 FA     LDA ram_scroll_Y_lo
C - - - - - 0x01E2CB 07:E2BB: D0 08     BNE bra_E2C5
C - - - - - 0x01E2CD 07:E2BD: A5 52     LDA ram_0052
C - - - - - 0x01E2CF 07:E2BF: F0 12     BEQ bra_E2D3
C - - - - - 0x01E2D1 07:E2C1: C5 51     CMP ram_scroll_hi_max
C - - - - - 0x01E2D3 07:E2C3: F0 0E     BEQ bra_E2D3
bra_E2C5:
C - - - - - 0x01E2D5 07:E2C5: A5 50     LDA ram_substage
C - - - - - 0x01E2D7 07:E2C7: 10 05     BPL bra_E2CE
C - - - - - 0x01E2D9 07:E2C9: C6 13     DEC ram_0013
C - - - - - 0x01E2DB 07:E2CB: 4C 0F E3  JMP loc_E30F
bra_E2CE:
C - - - - - 0x01E2DE 07:E2CE: E6 13     INC ram_0013
C - - - - - 0x01E2E0 07:E2D0: 4C 0F E3  JMP loc_E30F
bra_E2D3:
C - - - - - 0x01E2E3 07:E2D3: 4C 02 E3  JMP loc_E302
bra_E2D6:
C - - - - - 0x01E2E6 07:E2D6: B0 37     BCS bra_E30F
C - - - - - 0x01E2E8 07:E2D8: A5 11     LDA ram_0011
C - - - - - 0x01E2EA 07:E2DA: E9 0F     SBC #$0F
C - - - - - 0x01E2EC 07:E2DC: 85 11     STA ram_0011
C - - - - - 0x01E2EE 07:E2DE: A5 50     LDA ram_substage
C - - - - - 0x01E2F0 07:E2E0: 29 C0     AND #$C0
C - - - - - 0x01E2F2 07:E2E2: F0 1A     BEQ bra_E2FE    ; if horisontal
; if vertical
C - - - - - 0x01E2F4 07:E2E4: A5 FA     LDA ram_scroll_Y_lo
C - - - - - 0x01E2F6 07:E2E6: D0 08     BNE bra_E2F0
C - - - - - 0x01E2F8 07:E2E8: A5 52     LDA ram_0052
C - - - - - 0x01E2FA 07:E2EA: F0 12     BEQ bra_E2FE
C - - - - - 0x01E2FC 07:E2EC: C5 51     CMP ram_scroll_hi_max
C - - - - - 0x01E2FE 07:E2EE: F0 0E     BEQ bra_E2FE
bra_E2F0:
C - - - - - 0x01E300 07:E2F0: A5 50     LDA ram_substage
C - - - - - 0x01E302 07:E2F2: 10 05     BPL bra_E2F9_vertical_down
; if vertical up
C - - - - - 0x01E304 07:E2F4: E6 13     INC ram_0013
C - - - - - 0x01E306 07:E2F6: 4C 0F E3  JMP loc_E30F
bra_E2F9_vertical_down:
C - - - - - 0x01E309 07:E2F9: C6 13     DEC ram_0013
C - - - - - 0x01E30B 07:E2FB: 4C 0F E3  JMP loc_E30F
bra_E2FE:
C - - - - - 0x01E30E 07:E2FE: A9 00     LDA #$00
C - - - - - 0x01E310 07:E300: 85 11     STA ram_0011
loc_E302:
C D 3 - - - 0x01E312 07:E302: A4 05     LDY ram_0005
C - - - - - 0x01E314 07:E304: A9 00     LDA #$00
bra_E306_loop:
C - - - - - 0x01E316 07:E306: 99 42 00  STA ram_0042,Y
C - - - - - 0x01E319 07:E309: 88        DEY
C - - - - - 0x01E31A 07:E30A: 10 FA     BPL bra_E306_loop
C - - - - - 0x01E31C 07:E30C: 4C DC E3  JMP loc_E3DC
bra_E30F:
loc_E30F:
C D 3 - - - 0x01E31F 07:E30F: BD 70 03  LDA ram_pos_Y_hi,X
C - - - - - 0x01E322 07:E312: 30 EA     BMI bra_E2FE
C - - - - - 0x01E324 07:E314: A5 11     LDA ram_0011
C - - - - - 0x01E326 07:E316: 4A        LSR
C - - - - - 0x01E327 07:E317: 4A        LSR
C - - - - - 0x01E328 07:E318: 48        PHA
C - - - - - 0x01E329 07:E319: 29 38     AND #$38
C - - - - - 0x01E32B 07:E31B: 85 21     STA ram_0021
C - - - - - 0x01E32D 07:E31D: 68        PLA
C - - - - - 0x01E32E 07:E31E: 4A        LSR
C - - - - - 0x01E32F 07:E31F: 29 02     AND #$02
C - - - - - 0x01E331 07:E321: 85 03     STA ram_0003
C - - - - - 0x01E333 07:E323: A9 00     LDA #$00
C - - - - - 0x01E335 07:E325: 85 04     STA ram_0004
C - - - - - 0x01E337 07:E327: B9 34 E6  LDA tbl_E634,Y
C - - - - - 0x01E33A 07:E32A: 10 02     BPL bra_E32E
C - - - - - 0x01E33C 07:E32C: C6 04     DEC ram_0004
bra_E32E:
C - - - - - 0x01E33E 07:E32E: 18        CLC
C - - - - - 0x01E33F 07:E32F: 7D 30 03  ADC ram_pos_X_lo,X
C - - - - - 0x01E342 07:E332: 85 12     STA ram_0012
C - - - - - 0x01E344 07:E334: A5 13     LDA ram_0013
C - - - - - 0x01E346 07:E336: 65 04     ADC ram_0004
C - - - - - 0x01E348 07:E338: 85 13     STA ram_0013
C - - - - - 0x01E34A 07:E33A: A5 12     LDA ram_0012
C - - - - - 0x01E34C 07:E33C: 85 06     STA ram_0006
C - - - - - 0x01E34E 07:E33E: 4A        LSR
C - - - - - 0x01E34F 07:E33F: 4A        LSR
C - - - - - 0x01E350 07:E340: 4A        LSR
C - - - - - 0x01E351 07:E341: 4A        LSR
C - - - - - 0x01E352 07:E342: 48        PHA
C - - - - - 0x01E353 07:E343: 29 01     AND #$01
C - - - - - 0x01E355 07:E345: 05 03     ORA ram_0003
C - - - - - 0x01E357 07:E347: 85 03     STA ram_0003
C - - - - - 0x01E359 07:E349: 68        PLA
C - - - - - 0x01E35A 07:E34A: 4A        LSR
C - - - - - 0x01E35B 07:E34B: 05 21     ORA ram_0021
C - - - - - 0x01E35D 07:E34D: 85 21     STA ram_0021
loc_E34F:
C D 3 - - - 0x01E35F 07:E34F: A5 EA     LDA ram_00EA    ; con_prg_bank + $01
C - - - - - 0x01E361 07:E351: 20 CF FF  JSR sub_FFCF_prg_bankswitch
C - - - - - 0x01E364 07:E354: A4 13     LDY ram_0013
C - - - - - 0x01E366 07:E356: 20 59 D9  JSR sub_D959
bra_E359_loop:
C - - - - - 0x01E369 07:E359: A4 13     LDY ram_0013
C - - - - - 0x01E36B 07:E35B: B1 6E     LDA (ram_006E),Y
C - - - - - 0x01E36D 07:E35D: 10 04     BPL bra_E363
C - - - - - 0x01E36F 07:E35F: A9 00     LDA #$00
C - - - - - 0x01E371 07:E361: F0 2B     BEQ bra_E38E    ; jmp
bra_E363:
C - - - - - 0x01E373 07:E363: A5 EA     LDA ram_00EA    ; con_prg_bank + $01
C - - - - - 0x01E375 07:E365: 20 CF FF  JSR sub_FFCF_prg_bankswitch
C - - - - - 0x01E378 07:E368: 20 3B D9  JSR sub_D93B
C - - - - - 0x01E37B 07:E36B: A9 00     LDA #con_prg_bank + $00
C - - - - - 0x01E37D 07:E36D: 20 CF FF  JSR sub_FFCF_prg_bankswitch
bra_E370_loop:
C - - - - - 0x01E380 07:E370: 20 D4 E5  JSR sub_E5D4
C - - - - - 0x01E383 07:E373: B0 19     BCS bra_E38E
C - - - - - 0x01E385 07:E375: A4 03     LDY ram_0003
C - - - - - 0x01E387 07:E377: B1 00     LDA (ram_0000),Y
C - - - - - 0x01E389 07:E379: A8        TAY
C - - - - - 0x01E38A 07:E37A: B1 6C     LDA (ram_stage_data_5),Y
C - - - - - 0x01E38C 07:E37C: 29 F0     AND #$F0
C - - - - - 0x01E38E 07:E37E: C9 30     CMP #$30
C - - - - - 0x01E390 07:E380: D0 0C     BNE bra_E38E
C - - - - - 0x01E392 07:E382: 85 BE     STA ram_00BE
C - - - - - 0x01E394 07:E384: A5 13     LDA ram_0013
C - - - - - 0x01E396 07:E386: 85 2C     STA ram_002C
C - - - - - 0x01E398 07:E388: A5 21     LDA ram_0021
C - - - - - 0x01E39A 07:E38A: 85 2D     STA ram_002D
C - - - - - 0x01E39C 07:E38C: A9 30     LDA #$30
bra_E38E:
C - - - - - 0x01E39E 07:E38E: A4 02     LDY ram_0002
C - - - - - 0x01E3A0 07:E390: 99 42 00  STA ram_0042,Y
C - - - - - 0x01E3A3 07:E393: C5 41     CMP ram_0041
C - - - - - 0x01E3A5 07:E395: 90 02     BCC bra_E399
C - - - - - 0x01E3A7 07:E397: 85 41     STA ram_0041
bra_E399:
C - - - - - 0x01E3A9 07:E399: 05 10     ORA ram_0010
C - - - - - 0x01E3AB 07:E39B: 85 10     STA ram_0010
C - - - - - 0x01E3AD 07:E39D: E6 02     INC ram_0002
C - - - - - 0x01E3AF 07:E39F: A5 02     LDA ram_0002
C - - - - - 0x01E3B1 07:E3A1: C5 05     CMP ram_0005
C - - - - - 0x01E3B3 07:E3A3: F0 37     BEQ bra_E3DC
C - - - - - 0x01E3B5 07:E3A5: E6 40     INC ram_0040
C - - - - - 0x01E3B7 07:E3A7: A4 40     LDY ram_0040
C - - - - - 0x01E3B9 07:E3A9: A5 12     LDA ram_0012
C - - - - - 0x01E3BB 07:E3AB: 48        PHA
C - - - - - 0x01E3BC 07:E3AC: 29 10     AND #$10
C - - - - - 0x01E3BE 07:E3AE: 85 04     STA ram_0004
C - - - - - 0x01E3C0 07:E3B0: 68        PLA
C - - - - - 0x01E3C1 07:E3B1: 18        CLC
C - - - - - 0x01E3C2 07:E3B2: 79 34 E6  ADC tbl_E634,Y
C - - - - - 0x01E3C5 07:E3B5: 85 12     STA ram_0012
C - - - - - 0x01E3C7 07:E3B7: 29 10     AND #$10
C - - - - - 0x01E3C9 07:E3B9: C5 04     CMP ram_0004
C - - - - - 0x01E3CB 07:E3BB: F0 B3     BEQ bra_E370_loop
C - - - - - 0x01E3CD 07:E3BD: A5 03     LDA ram_0003
C - - - - - 0x01E3CF 07:E3BF: 49 01     EOR #$01
C - - - - - 0x01E3D1 07:E3C1: 85 03     STA ram_0003
C - - - - - 0x01E3D3 07:E3C3: 29 01     AND #$01
C - - - - - 0x01E3D5 07:E3C5: D0 A9     BNE bra_E370_loop
C - - - - - 0x01E3D7 07:E3C7: E6 21     INC ram_0021
C - - - - - 0x01E3D9 07:E3C9: A5 21     LDA ram_0021
C - - - - - 0x01E3DB 07:E3CB: 29 07     AND #$07
C - - - - - 0x01E3DD 07:E3CD: D0 8A     BNE bra_E359_loop
C - - - - - 0x01E3DF 07:E3CF: E6 13     INC ram_0013
C - - - - - 0x01E3E1 07:E3D1: C6 21     DEC ram_0021
C - - - - - 0x01E3E3 07:E3D3: A5 21     LDA ram_0021
C - - - - - 0x01E3E5 07:E3D5: 29 38     AND #$38
C - - - - - 0x01E3E7 07:E3D7: 85 21     STA ram_0021
C - - - - - 0x01E3E9 07:E3D9: 4C 4F E3  JMP loc_E34F
bra_E3DC:
loc_E3DC:   ; bzk optimize, JMP to JMP
C D 3 - - - 0x01E3EC 07:E3DC: 4C B3 E5  JMP loc_E5B3



sub_E3DF:
C - - - - - 0x01E3EF 07:E3DF: B9 5B E6  LDA tbl_E65B,Y
C - - - - - 0x01E3F2 07:E3E2: 85 40     STA ram_0040
C - - - - - 0x01E3F4 07:E3E4: 20 44 E5  JSR sub_E544
C - - - - - 0x01E3F7 07:E3E7: A8        TAY
C - - - - - 0x01E3F8 07:E3E8: B9 6B E6  LDA tbl_E66B,Y
C - - - - - 0x01E3FB 07:E3EB: 85 05     STA ram_0005
C - - - - - 0x01E3FD 07:E3ED: A9 00     LDA #$00
C - - - - - 0x01E3FF 07:E3EF: 85 02     STA ram_0002
C - - - - - 0x01E401 07:E3F1: A9 00     LDA #$00
C - - - - - 0x01E403 07:E3F3: 85 04     STA ram_0004
C - - - - - 0x01E405 07:E3F5: B9 6C E6  LDA tbl_E66C,Y
C - - - - - 0x01E408 07:E3F8: 10 02     BPL bra_E3FC
C - - - - - 0x01E40A 07:E3FA: C6 04     DEC ram_0004
bra_E3FC:
C - - - - - 0x01E40C 07:E3FC: 18        CLC
C - - - - - 0x01E40D 07:E3FD: 7D 30 03  ADC ram_pos_X_lo,X
C - - - - - 0x01E410 07:E400: 85 12     STA ram_0012
C - - - - - 0x01E412 07:E402: A5 13     LDA ram_0013
C - - - - - 0x01E414 07:E404: 65 04     ADC ram_0004
C - - - - - 0x01E416 07:E406: 85 13     STA ram_0013
C - - - - - 0x01E418 07:E408: A5 12     LDA ram_0012
C - - - - - 0x01E41A 07:E40A: 4A        LSR
C - - - - - 0x01E41B 07:E40B: 4A        LSR
C - - - - - 0x01E41C 07:E40C: 4A        LSR
C - - - - - 0x01E41D 07:E40D: 4A        LSR
C - - - - - 0x01E41E 07:E40E: 48        PHA
C - - - - - 0x01E41F 07:E40F: 29 01     AND #$01
C - - - - - 0x01E421 07:E411: 85 03     STA ram_0003
C - - - - - 0x01E423 07:E413: 68        PLA
C - - - - - 0x01E424 07:E414: 4A        LSR
C - - - - - 0x01E425 07:E415: 85 21     STA ram_0021
C - - - - - 0x01E427 07:E417: BD 70 03  LDA ram_pos_Y_hi,X
C - - - - - 0x01E42A 07:E41A: 30 3A     BMI bra_E456
C - - - - - 0x01E42C 07:E41C: A5 07     LDA ram_0007
C - - - - - 0x01E42E 07:E41E: 18        CLC
C - - - - - 0x01E42F 07:E41F: 79 6D E6  ADC tbl_E66D,Y
C - - - - - 0x01E432 07:E422: 85 11     STA ram_0011
C - - - - - 0x01E434 07:E424: B9 6D E6  LDA tbl_E66D,Y
C - - - - - 0x01E437 07:E427: 10 04     BPL bra_E42D
C - - - - - 0x01E439 07:E429: 90 2B     BCC bra_E456
C - - - - - 0x01E43B 07:E42B: B0 02     BCS bra_E42F   ; jmp
bra_E42D:
C - - - - - 0x01E43D 07:E42D: B0 06     BCS bra_E435
bra_E42F:
C - - - - - 0x01E43F 07:E42F: A5 11     LDA ram_0011
C - - - - - 0x01E441 07:E431: C9 F0     CMP #$F0
C - - - - - 0x01E443 07:E433: 90 40     BCC bra_E475
bra_E435:
- - - - - - 0x01E445 07:E435: A5 11     LDA ram_0011
- - - - - - 0x01E447 07:E437: 18        CLC
- - - - - - 0x01E448 07:E438: 69 10     ADC #$10
- - - - - - 0x01E44A 07:E43A: 85 11     STA ram_0011
- - - - - - 0x01E44C 07:E43C: A5 50     LDA ram_substage
- - - - - - 0x01E44E 07:E43E: 29 C0     AND #$C0
- - - - - - 0x01E450 07:E440: F0 0E     BEQ bra_E450_horisontal
; if vertical
- - - - - - 0x01E452 07:E442: A5 50     LDA ram_substage
- - - - - - 0x01E454 07:E444: 10 05     BPL bra_E44B_vertical_down
; if vertical up
- - - - - - 0x01E456 07:E446: C6 13     DEC ram_0013
- - - - - - 0x01E458 07:E448: 4C 75 E4  JMP loc_E475
bra_E44B_vertical_down:
- - - - - - 0x01E45B 07:E44B: E6 13     INC ram_0013
- - - - - - 0x01E45D 07:E44D: 4C 75 E4  JMP loc_E475
bra_E450_horisontal:
- - - - - - 0x01E460 07:E450: A9 EF     LDA #$EF
- - - - - - 0x01E462 07:E452: 85 11     STA ram_0011
- - - - - - 0x01E464 07:E454: D0 1F     BNE bra_E475
bra_E456:
C - - - - - 0x01E466 07:E456: A5 11     LDA ram_0011
C - - - - - 0x01E468 07:E458: 38        SEC
C - - - - - 0x01E469 07:E459: E9 10     SBC #$10
C - - - - - 0x01E46B 07:E45B: 85 11     STA ram_0011
C - - - - - 0x01E46D 07:E45D: A5 50     LDA ram_substage
C - - - - - 0x01E46F 07:E45F: 29 C0     AND #$C0
C - - - - - 0x01E471 07:E461: F0 0E     BEQ bra_E471_horisontal
; if vertical
C - - - - - 0x01E473 07:E463: A5 50     LDA ram_substage
C - - - - - 0x01E475 07:E465: 10 05     BPL bra_E46C_vertical_down
; if vertical up
C - - - - - 0x01E477 07:E467: E6 13     INC ram_0013
C - - - - - 0x01E479 07:E469: 4C 75 E4  JMP loc_E475
bra_E46C_vertical_down:
C - - - - - 0x01E47C 07:E46C: C6 13     DEC ram_0013
C - - - - - 0x01E47E 07:E46E: 4C 75 E4  JMP loc_E475
bra_E471_horisontal:
C - - - - - 0x01E481 07:E471: A9 00     LDA #$00
C - - - - - 0x01E483 07:E473: 85 11     STA ram_0011
bra_E475:
loc_E475:
C D 3 - - - 0x01E485 07:E475: A5 11     LDA ram_0011
C - - - - - 0x01E487 07:E477: 85 06     STA ram_0006
C - - - - - 0x01E489 07:E479: 4A        LSR
C - - - - - 0x01E48A 07:E47A: 4A        LSR
C - - - - - 0x01E48B 07:E47B: 48        PHA
C - - - - - 0x01E48C 07:E47C: 29 38     AND #$38
C - - - - - 0x01E48E 07:E47E: 05 21     ORA ram_0021
C - - - - - 0x01E490 07:E480: 85 21     STA ram_0021
C - - - - - 0x01E492 07:E482: 68        PLA
C - - - - - 0x01E493 07:E483: 4A        LSR
C - - - - - 0x01E494 07:E484: 29 02     AND #$02
C - - - - - 0x01E496 07:E486: 05 03     ORA ram_0003
C - - - - - 0x01E498 07:E488: 85 03     STA ram_0003
loc_E48A:
C D 3 - - - 0x01E49A 07:E48A: A5 EA     LDA ram_00EA    ; con_prg_bank + $01
C - - - - - 0x01E49C 07:E48C: 20 CF FF  JSR sub_FFCF_prg_bankswitch
C - - - - - 0x01E49F 07:E48F: A4 13     LDY ram_0013
C - - - - - 0x01E4A1 07:E491: 20 59 D9  JSR sub_D959
loc_E494:
C D 3 - - - 0x01E4A4 07:E494: A4 13     LDY ram_0013
C - - - - - 0x01E4A6 07:E496: B1 6E     LDA (ram_006E),Y
C - - - - - 0x01E4A8 07:E498: 10 04     BPL bra_E49E
C - - - - - 0x01E4AA 07:E49A: A9 00     LDA #$00
C - - - - - 0x01E4AC 07:E49C: F0 2B     BEQ bra_E4C9
bra_E49E:
C - - - - - 0x01E4AE 07:E49E: A5 EA     LDA ram_00EA    ; con_prg_bank + $01
C - - - - - 0x01E4B0 07:E4A0: 20 CF FF  JSR sub_FFCF_prg_bankswitch
C - - - - - 0x01E4B3 07:E4A3: 20 3B D9  JSR sub_D93B
C - - - - - 0x01E4B6 07:E4A6: A9 00     LDA #con_prg_bank + $00
C - - - - - 0x01E4B8 07:E4A8: 20 CF FF  JSR sub_FFCF_prg_bankswitch
loc_E4AB:
bra_E4AB_loop:
C D 3 - - - 0x01E4BB 07:E4AB: 20 D4 E5  JSR sub_E5D4
C - - - - - 0x01E4BE 07:E4AE: B0 19     BCS bra_E4C9
C - - - - - 0x01E4C0 07:E4B0: A4 03     LDY ram_0003
C - - - - - 0x01E4C2 07:E4B2: B1 00     LDA (ram_0000),Y
C - - - - - 0x01E4C4 07:E4B4: A8        TAY
C - - - - - 0x01E4C5 07:E4B5: B1 6C     LDA (ram_stage_data_5),Y
C - - - - - 0x01E4C7 07:E4B7: 29 F0     AND #$F0
C - - - - - 0x01E4C9 07:E4B9: C9 30     CMP #$30
C - - - - - 0x01E4CB 07:E4BB: D0 0C     BNE bra_E4C9
C - - - - - 0x01E4CD 07:E4BD: 85 BE     STA ram_00BE
C - - - - - 0x01E4CF 07:E4BF: A5 13     LDA ram_0013
C - - - - - 0x01E4D1 07:E4C1: 85 2C     STA ram_002C
C - - - - - 0x01E4D3 07:E4C3: A5 21     LDA ram_0021
C - - - - - 0x01E4D5 07:E4C5: 85 2D     STA ram_002D
C - - - - - 0x01E4D7 07:E4C7: A9 30     LDA #$30
bra_E4C9:
C - - - - - 0x01E4D9 07:E4C9: A4 02     LDY ram_0002
C - - - - - 0x01E4DB 07:E4CB: 99 42 00  STA ram_0042,Y
C - - - - - 0x01E4DE 07:E4CE: C5 41     CMP ram_0041
C - - - - - 0x01E4E0 07:E4D0: 90 02     BCC bra_E4D4
C - - - - - 0x01E4E2 07:E4D2: 85 41     STA ram_0041
bra_E4D4:
C - - - - - 0x01E4E4 07:E4D4: 05 10     ORA ram_0010
C - - - - - 0x01E4E6 07:E4D6: 85 10     STA ram_0010
C - - - - - 0x01E4E8 07:E4D8: E6 02     INC ram_0002
C - - - - - 0x01E4EA 07:E4DA: A5 02     LDA ram_0002
C - - - - - 0x01E4EC 07:E4DC: C5 05     CMP ram_0005
C - - - - - 0x01E4EE 07:E4DE: F0 61     BEQ bra_E541
C - - - - - 0x01E4F0 07:E4E0: E6 40     INC ram_0040
C - - - - - 0x01E4F2 07:E4E2: A4 40     LDY ram_0040
C - - - - - 0x01E4F4 07:E4E4: A5 11     LDA ram_0011
C - - - - - 0x01E4F6 07:E4E6: 48        PHA
C - - - - - 0x01E4F7 07:E4E7: 29 10     AND #$10
C - - - - - 0x01E4F9 07:E4E9: 85 04     STA ram_0004
C - - - - - 0x01E4FB 07:E4EB: 68        PLA
C - - - - - 0x01E4FC 07:E4EC: 18        CLC
C - - - - - 0x01E4FD 07:E4ED: 79 6D E6  ADC tbl_E66D,Y
C - - - - - 0x01E500 07:E4F0: 85 11     STA ram_0011
C - - - - - 0x01E502 07:E4F2: 29 10     AND #$10
C - - - - - 0x01E504 07:E4F4: C5 04     CMP ram_0004
C - - - - - 0x01E506 07:E4F6: F0 B3     BEQ bra_E4AB_loop
C - - - - - 0x01E508 07:E4F8: A5 11     LDA ram_0011
C - - - - - 0x01E50A 07:E4FA: C9 F0     CMP #$F0
C - - - - - 0x01E50C 07:E4FC: 90 2C     BCC bra_E52A
C - - - - - 0x01E50E 07:E4FE: 69 0F     ADC #$0F
C - - - - - 0x01E510 07:E500: 85 11     STA ram_0011
C - - - - - 0x01E512 07:E502: A5 27     LDA ram_0027
C - - - - - 0x01E514 07:E504: C9 04     CMP #$04
C - - - - - 0x01E516 07:E506: B0 08     BCS bra_E510
C - - - - - 0x01E518 07:E508: A9 EF     LDA #$EF
C - - - - - 0x01E51A 07:E50A: 85 11     STA ram_0011
C - - - - - 0x01E51C 07:E50C: A9 00     LDA #$00
C - - - - - 0x01E51E 07:E50E: F0 B9     BEQ bra_E4C9    ; jmp
bra_E510:
C - - - - - 0x01E520 07:E510: A5 03     LDA ram_0003
C - - - - - 0x01E522 07:E512: 29 FD     AND #$FD
C - - - - - 0x01E524 07:E514: 85 03     STA ram_0003
C - - - - - 0x01E526 07:E516: A5 21     LDA ram_0021
C - - - - - 0x01E528 07:E518: 29 07     AND #$07
C - - - - - 0x01E52A 07:E51A: 85 21     STA ram_0021
C - - - - - 0x01E52C 07:E51C: A5 50     LDA ram_substage
C - - - - - 0x01E52E 07:E51E: 10 05     BPL bra_E525
C - - - - - 0x01E530 07:E520: C6 13     DEC ram_0013
C - - - - - 0x01E532 07:E522: 4C 8A E4  JMP loc_E48A
bra_E525:
C - - - - - 0x01E535 07:E525: E6 13     INC ram_0013
C - - - - - 0x01E537 07:E527: 4C 8A E4  JMP loc_E48A
bra_E52A:
C - - - - - 0x01E53A 07:E52A: A5 03     LDA ram_0003
C - - - - - 0x01E53C 07:E52C: 49 02     EOR #$02
C - - - - - 0x01E53E 07:E52E: 85 03     STA ram_0003
C - - - - - 0x01E540 07:E530: 29 02     AND #$02
C - - - - - 0x01E542 07:E532: F0 03     BEQ bra_E537
C - - - - - 0x01E544 07:E534: 4C AB E4  JMP loc_E4AB
bra_E537:
C - - - - - 0x01E547 07:E537: A5 21     LDA ram_0021
C - - - - - 0x01E549 07:E539: 18        CLC
C - - - - - 0x01E54A 07:E53A: 69 08     ADC #$08
C - - - - - 0x01E54C 07:E53C: 85 21     STA ram_0021
C - - - - - 0x01E54E 07:E53E: 4C 94 E4  JMP loc_E494
bra_E541:
C - - - - - 0x01E551 07:E541: 4C B3 E5  JMP loc_E5B3



sub_E544:
C - - - - - 0x01E554 07:E544: 48        PHA
C - - - - - 0x01E555 07:E545: A5 50     LDA ram_substage
C - - - - - 0x01E557 07:E547: 29 C0     AND #$C0
C - - - - - 0x01E559 07:E549: F0 41     BEQ bra_E58C_horisontal
; if vertical
C - - - - - 0x01E55B 07:E54B: BD 40 03  LDA ram_pos_X_hi,X
C - - - - - 0x01E55E 07:E54E: 18        CLC
C - - - - - 0x01E55F 07:E54F: 7D 70 03  ADC ram_pos_Y_hi,X
C - - - - - 0x01E562 07:E552: 85 13     STA ram_0013
C - - - - - 0x01E564 07:E554: BD 60 03  LDA ram_pos_Y_lo,X
C - - - - - 0x01E567 07:E557: 85 07     STA ram_0007
C - - - - - 0x01E569 07:E559: BD 70 03  LDA ram_pos_Y_hi,X
C - - - - - 0x01E56C 07:E55C: C5 FB     CMP ram_scroll_Y_hi
C - - - - - 0x01E56E 07:E55E: F0 44     BEQ bra_E5A4
C - - - - - 0x01E570 07:E560: A5 FA     LDA ram_scroll_Y_lo
C - - - - - 0x01E572 07:E562: D0 40     BNE bra_E5A4
C - - - - - 0x01E574 07:E564: A5 52     LDA ram_0052
C - - - - - 0x01E576 07:E566: F0 0D     BEQ bra_E575
- - - - - - 0x01E578 07:E568: C5 51     CMP ram_scroll_hi_max
- - - - - - 0x01E57A 07:E56A: D0 38     BNE bra_E5A4
- - - - - - 0x01E57C 07:E56C: BD 70 03  LDA ram_pos_Y_hi,X
- - - - - - 0x01E57F 07:E56F: C5 FB     CMP ram_scroll_Y_hi
- - - - - - 0x01E581 07:E571: B0 0B     BCS bra_E57E
- - - - - - 0x01E583 07:E573: 90 2F     BCC bra_E5A4
bra_E575:
C - - - - - 0x01E585 07:E575: BD 70 03  LDA ram_pos_Y_hi,X
C - - - - - 0x01E588 07:E578: C5 FB     CMP ram_scroll_Y_hi
C - - - - - 0x01E58A 07:E57A: 90 02     BCC bra_E57E
C - - - - - 0x01E58C 07:E57C: B0 26     BCS bra_E5A4   ; jmp
bra_E57E:
- - - - - - 0x01E58E 07:E57E: BD 40 03  LDA ram_pos_X_hi,X
- - - - - - 0x01E591 07:E581: 18        CLC
- - - - - - 0x01E592 07:E582: 65 FB     ADC ram_scroll_Y_hi
- - - - - - 0x01E594 07:E584: 85 13     STA ram_0013
- - - - - - 0x01E596 07:E586: A9 00     LDA #$00
- - - - - - 0x01E598 07:E588: 85 07     STA ram_0007
- - - - - - 0x01E59A 07:E58A: F0 18     BEQ bra_E5A4
bra_E58C_horisontal:
C - - - - - 0x01E59C 07:E58C: BD 40 03  LDA ram_pos_X_hi,X
C - - - - - 0x01E59F 07:E58F: 18        CLC
C - - - - - 0x01E5A0 07:E590: 65 FB     ADC ram_scroll_Y_hi
C - - - - - 0x01E5A2 07:E592: 85 13     STA ram_0013
C - - - - - 0x01E5A4 07:E594: BD 60 03  LDA ram_pos_Y_lo,X
C - - - - - 0x01E5A7 07:E597: 85 07     STA ram_0007
C - - - - - 0x01E5A9 07:E599: BD 70 03  LDA ram_pos_Y_hi,X
C - - - - - 0x01E5AC 07:E59C: C5 FB     CMP ram_scroll_Y_hi
C - - - - - 0x01E5AE 07:E59E: F0 04     BEQ bra_E5A4
C - - - - - 0x01E5B0 07:E5A0: A9 00     LDA #$00
C - - - - - 0x01E5B2 07:E5A2: 85 07     STA ram_0007
bra_E5A4:
C - - - - - 0x01E5B4 07:E5A4: A9 00     LDA #$00
C - - - - - 0x01E5B6 07:E5A6: 85 10     STA ram_0010
C - - - - - 0x01E5B8 07:E5A8: 85 41     STA ram_0041
C - - - - - 0x01E5BA 07:E5AA: 85 BE     STA ram_00BE
C - - - - - 0x01E5BC 07:E5AC: A9 00     LDA #con_prg_bank + $00
C - - - - - 0x01E5BE 07:E5AE: 20 CF FF  JSR sub_FFCF_prg_bankswitch
C - - - - - 0x01E5C1 07:E5B1: 68        PLA
C - - - - - 0x01E5C2 07:E5B2: 60        RTS



loc_E5B3:
C D 3 - - - 0x01E5C3 07:E5B3: A5 10     LDA ram_0010
C - - - - - 0x01E5C5 07:E5B5: 29 10     AND #$10
C - - - - - 0x01E5C7 07:E5B7: D0 16     BNE bra_E5CF
C - - - - - 0x01E5C9 07:E5B9: BD 00 04  LDA ram_0400_obj,X
C - - - - - 0x01E5CC 07:E5BC: 29 DF     AND #$DF
C - - - - - 0x01E5CE 07:E5BE: 9D 00 04  STA ram_0400_obj,X
C - - - - - 0x01E5D1 07:E5C1: A5 41     LDA ram_0041
C - - - - - 0x01E5D3 07:E5C3: C9 20     CMP #$20
C - - - - - 0x01E5D5 07:E5C5: D0 08     BNE bra_E5CF
C - - - - - 0x01E5D7 07:E5C7: BD 00 04  LDA ram_0400_obj,X
C - - - - - 0x01E5DA 07:E5CA: 09 20     ORA #$20
C - - - - - 0x01E5DC 07:E5CC: 9D 00 04  STA ram_0400_obj,X
bra_E5CF:
C - - - - - 0x01E5DF 07:E5CF: A5 9B     LDA ram_009B
C - - - - - 0x01E5E1 07:E5D1: 4C CF FF  JMP loc_FFCF_prg_bankswitch



sub_E5D4:
C - - - - - 0x01E5E4 07:E5D4: A5 E9     LDA ram_stage
C - - - - - 0x01E5E6 07:E5D6: C9 05     CMP #$05
C - - - - - 0x01E5E8 07:E5D8: F0 22     BEQ bra_E5FC    ; if final battle
; if not final battle
C - - - - - 0x01E5EA 07:E5DA: AD 10 01  LDA ram_0110
C - - - - - 0x01E5ED 07:E5DD: 0D 11 01  ORA ram_0111
C - - - - - 0x01E5F0 07:E5E0: F0 3E     BEQ bra_E620
C - - - - - 0x01E5F2 07:E5E2: A0 00     LDY #$00
bra_E5E4_loop:
C - - - - - 0x01E5F4 07:E5E4: B9 10 01  LDA ram_0110,Y
C - - - - - 0x01E5F7 07:E5E7: C5 13     CMP ram_0013
C - - - - - 0x01E5F9 07:E5E9: D0 2F     BNE bra_E61A
C - - - - - 0x01E5FB 07:E5EB: B9 11 01  LDA ram_0111,Y
C - - - - - 0x01E5FE 07:E5EE: C5 21     CMP ram_0021
C - - - - - 0x01E600 07:E5F0: D0 28     BNE bra_E61A
C - - - - - 0x01E602 07:E5F2: A5 E9     LDA ram_stage
C - - - - - 0x01E604 07:E5F4: C9 01     CMP #$01
C - - - - - 0x01E606 07:E5F6: F0 08     BEQ bra_E600_stage_2
C - - - - - 0x01E608 07:E5F8: C9 02     CMP #$02
C - - - - - 0x01E60A 07:E5FA: F0 10     BEQ bra_E60C_stage_3
bra_E5FC:
C - - - - - 0x01E60C 07:E5FC: A9 40     LDA #$40
C - - - - - 0x01E60E 07:E5FE: 38        SEC
C - - - - - 0x01E60F 07:E5FF: 60        RTS
bra_E600_stage_2:
C - - - - - 0x01E610 07:E600: A5 13     LDA ram_0013
C - - - - - 0x01E612 07:E602: C9 09     CMP #$09
C - - - - - 0x01E614 07:E604: F0 10     BEQ bra_E616
C - - - - - 0x01E616 07:E606: C9 0A     CMP #$0A
C - - - - - 0x01E618 07:E608: F0 0C     BEQ bra_E616
C - - - - - 0x01E61A 07:E60A: D0 F0     BNE bra_E5FC   ; jmp
bra_E60C_stage_3:
C - - - - - 0x01E61C 07:E60C: A5 13     LDA ram_0013
C - - - - - 0x01E61E 07:E60E: C9 02     CMP #$02
C - - - - - 0x01E620 07:E610: F0 04     BEQ bra_E616
C - - - - - 0x01E622 07:E612: C9 04     CMP #$04
C - - - - - 0x01E624 07:E614: D0 E6     BNE bra_E5FC
bra_E616:
C - - - - - 0x01E626 07:E616: A9 00     LDA #$00
C - - - - - 0x01E628 07:E618: 38        SEC
C - - - - - 0x01E629 07:E619: 60        RTS
bra_E61A:
C - - - - - 0x01E62A 07:E61A: C8        INY
C - - - - - 0x01E62B 07:E61B: C8        INY
C - - - - - 0x01E62C 07:E61C: C0 20     CPY #$20
C - - - - - 0x01E62E 07:E61E: D0 C4     BNE bra_E5E4_loop
bra_E620:
C - - - - - 0x01E630 07:E620: 18        CLC
C - - - - - 0x01E631 07:E621: 60        RTS


; ???
tbl_E622:
- D 3 - - - 0x01E632 07:E622: 00        .byte $00   ; 00
- D 3 - - - 0x01E633 07:E623: 04        .byte $04   ; 01
- D 3 - - - 0x01E634 07:E624: 08        .byte $08   ; 02
- D 3 - - - 0x01E635 07:E625: 0C        .byte $0C   ; 03
- D 3 - - - 0x01E636 07:E626: 10        .byte $10   ; 04
- D 3 - - - 0x01E637 07:E627: 14        .byte $14   ; 05
- D 3 - - - 0x01E638 07:E628: 17        .byte $17   ; 06
- D 3 - - - 0x01E639 07:E629: 1B        .byte $1B   ; 07
- D 3 - - - 0x01E63A 07:E62A: 1F        .byte $1F   ; 08
- D 3 - - - 0x01E63B 07:E62B: 24        .byte $24   ; 09
- - - - - - 0x01E63C 07:E62C: 29        .byte $29   ; 0A
- - - - - - 0x01E63D 07:E62D: 29        .byte $29   ; 0B
- - - - - - 0x01E63E 07:E62E: 29        .byte $29   ; 0C
- - - - - - 0x01E63F 07:E62F: 29        .byte $29   ; 0D
- - - - - - 0x01E640 07:E630: 29        .byte $29   ; 0E
- - - - - - 0x01E641 07:E631: 29        .byte $29   ; 0F


; ???
tbl_E632:
- D 3 - - - 0x01E642 07:E632: 02        .byte $02   ; 
tbl_E633:
- D 3 - - - 0x01E643 07:E633: 08        .byte $08   ; 
tbl_E634:
- D 3 - - - 0x01E644 07:E634: F9        .byte $F9   ; 
- D 3 - - - 0x01E645 07:E635: 0E        .byte $0E   ; 
- D 3 - - - 0x01E646 07:E636: 02        .byte $02   ; 
- D 3 - - - 0x01E647 07:E637: F8        .byte $F8   ; 
- D 3 - - - 0x01E648 07:E638: F9        .byte $F9   ; 
- D 3 - - - 0x01E649 07:E639: 0E        .byte $0E   ; 
- D 3 - - - 0x01E64A 07:E63A: 02        .byte $02   ; 
- D 3 - - - 0x01E64B 07:E63B: 08        .byte $08   ; 
- D 3 - - - 0x01E64C 07:E63C: F8        .byte $F8   ; 
- D 3 - - - 0x01E64D 07:E63D: 10        .byte $10   ; 
- D 3 - - - 0x01E64E 07:E63E: 02        .byte $02   ; 
- D 3 - - - 0x01E64F 07:E63F: F8        .byte $F8   ; 
- D 3 - - - 0x01E650 07:E640: F8        .byte $F8   ; 
- D 3 - - - 0x01E651 07:E641: 10        .byte $10   ; 
- D 3 - - - 0x01E652 07:E642: 02        .byte $02   ; 
- D 3 - - - 0x01E653 07:E643: 10        .byte $10   ; 
- D 3 - - - 0x01E654 07:E644: F8        .byte $F8   ; 
- D 3 - - - 0x01E655 07:E645: 10        .byte $10   ; 
- D 3 - - - 0x01E656 07:E646: 01        .byte $01   ; 
- D 3 - - - 0x01E657 07:E647: 00        .byte $00   ; 
- D 3 - - - 0x01E658 07:E648: 00        .byte $00   ; 
- D 3 - - - 0x01E659 07:E649: 02        .byte $02   ; 
- D 3 - - - 0x01E65A 07:E64A: 04        .byte $04   ; 
- D 3 - - - 0x01E65B 07:E64B: FD        .byte $FD   ; 
- D 3 - - - 0x01E65C 07:E64C: 06        .byte $06   ; 
- D 3 - - - 0x01E65D 07:E64D: 02        .byte $02   ; 
- D 3 - - - 0x01E65E 07:E64E: FC        .byte $FC   ; 
- D 3 - - - 0x01E65F 07:E64F: FD        .byte $FD   ; 
- D 3 - - - 0x01E660 07:E650: 06        .byte $06   ; 
- D 3 - - - 0x01E661 07:E651: 03        .byte $03   ; 
- D 3 - - - 0x01E662 07:E652: 0C        .byte $0C   ; 
- D 3 - - - 0x01E663 07:E653: F5        .byte $F5   ; 
- D 3 - - - 0x01E664 07:E654: 0B        .byte $0B   ; 
- D 3 - - - 0x01E665 07:E655: 0B        .byte $0B   ; 
- D 3 - - - 0x01E666 07:E656: 03        .byte $03   ; 
- D 3 - - - 0x01E667 07:E657: F4        .byte $F4   ; 
- D 3 - - - 0x01E668 07:E658: F5        .byte $F5   ; 
- D 3 - - - 0x01E669 07:E659: 0B        .byte $0B   ; 
- D 3 - - - 0x01E66A 07:E65A: 0B        .byte $0B   ; 


; ???
tbl_E65B:
- D 3 - - - 0x01E66B 07:E65B: 00        .byte $00   ; 00
- D 3 - - - 0x01E66C 07:E65C: 04        .byte $04   ; 01
- D 3 - - - 0x01E66D 07:E65D: 08        .byte $08   ; 02
- D 3 - - - 0x01E66E 07:E65E: 0C        .byte $0C   ; 03
- D 3 - - - 0x01E66F 07:E65F: 0F        .byte $0F   ; 04
- D 3 - - - 0x01E670 07:E660: 13        .byte $13   ; 05
- D 3 - - - 0x01E671 07:E661: 17        .byte $17   ; 06
- - - - - - 0x01E672 07:E662: 17        .byte $17   ; 07
- D 3 - - - 0x01E673 07:E663: 1B        .byte $1B   ; 08
- D 3 - - - 0x01E674 07:E664: 1F        .byte $1F   ; 09
- D 3 - - - 0x01E675 07:E665: 23        .byte $23   ; 0A
- D 3 - - - 0x01E676 07:E666: 28        .byte $28   ; 0B
- D 3 - - - 0x01E677 07:E667: 2D        .byte $2D   ; 0C
- D 3 - - - 0x01E678 07:E668: 2D        .byte $2D   ; 0D
- - - - - - 0x01E679 07:E669: 30        .byte $30   ; 0E
- - - - - - 0x01E67A 07:E66A: 30        .byte $30   ; 0F


; ???
tbl_E66B:
- D 3 - - - 0x01E67B 07:E66B: 02        .byte $02   ; 
tbl_E66C:
- D 3 - - - 0x01E67C 07:E66C: 08        .byte $08   ; 
tbl_E66D:
- D 3 - - - 0x01E67D 07:E66D: F9        .byte $F9   ; 
- D 3 - - - 0x01E67E 07:E66E: 0E        .byte $0E   ; 
- D 3 - - - 0x01E67F 07:E66F: 02        .byte $02   ; 
- D 3 - - - 0x01E680 07:E670: F8        .byte $F8   ; 
- D 3 - - - 0x01E681 07:E671: F9        .byte $F9   ; 
- D 3 - - - 0x01E682 07:E672: 0E        .byte $0E   ; 
- D 3 - - - 0x01E683 07:E673: 02        .byte $02   ; 
- D 3 - - - 0x01E684 07:E674: 00        .byte $00   ; 
- D 3 - - - 0x01E685 07:E675: F8        .byte $F8   ; 
- D 3 - - - 0x01E686 07:E676: 08        .byte $08   ; 
- D 3 - - - 0x01E687 07:E677: 01        .byte $01   ; 
- D 3 - - - 0x01E688 07:E678: 00        .byte $00   ; 
- D 3 - - - 0x01E689 07:E679: F0        .byte $F0   ; 
- D 3 - - - 0x01E68A 07:E67A: 02        .byte $02   ; 
- D 3 - - - 0x01E68B 07:E67B: 09        .byte $09   ; 
- D 3 - - - 0x01E68C 07:E67C: F9        .byte $F9   ; 
- D 3 - - - 0x01E68D 07:E67D: 0E        .byte $0E   ; 
- D 3 - - - 0x01E68E 07:E67E: 02        .byte $02   ; 
- D 3 - - - 0x01E68F 07:E67F: F7        .byte $F7   ; 
- D 3 - - - 0x01E690 07:E680: F9        .byte $F9   ; 
- D 3 - - - 0x01E691 07:E681: 0E        .byte $0E   ; 
- D 3 - - - 0x01E692 07:E682: 02        .byte $02   ; 
- D 3 - - - 0x01E693 07:E683: 00        .byte $00   ; 
- D 3 - - - 0x01E694 07:E684: F9        .byte $F9   ; 
- D 3 - - - 0x01E695 07:E685: 0E        .byte $0E   ; 
- D 3 - - - 0x01E696 07:E686: 02        .byte $02   ; 
- D 3 - - - 0x01E697 07:E687: 04        .byte $04   ; 
- D 3 - - - 0x01E698 07:E688: FD        .byte $FD   ; 
- D 3 - - - 0x01E699 07:E689: 06        .byte $06   ; 
- D 3 - - - 0x01E69A 07:E68A: 02        .byte $02   ; 
- D 3 - - - 0x01E69B 07:E68B: FC        .byte $FC   ; 
- D 3 - - - 0x01E69C 07:E68C: FD        .byte $FD   ; 
- D 3 - - - 0x01E69D 07:E68D: 06        .byte $06   ; 
- D 3 - - - 0x01E69E 07:E68E: 03        .byte $03   ; 
- D 3 - - - 0x01E69F 07:E68F: 0C        .byte $0C   ; 
- D 3 - - - 0x01E6A0 07:E690: F5        .byte $F5   ; 
- D 3 - - - 0x01E6A1 07:E691: 0B        .byte $0B   ; 
- D 3 - - - 0x01E6A2 07:E692: 0B        .byte $0B   ; 
- D 3 - - - 0x01E6A3 07:E693: 03        .byte $03   ; 
- D 3 - - - 0x01E6A4 07:E694: F4        .byte $F4   ; 
- D 3 - - - 0x01E6A5 07:E695: F5        .byte $F5   ; 
- D 3 - - - 0x01E6A6 07:E696: 0B        .byte $0B   ; 
- D 3 - - - 0x01E6A7 07:E697: 0B        .byte $0B   ; 
- D 3 - - - 0x01E6A8 07:E698: 01        .byte $01   ; 
- D 3 - - - 0x01E6A9 07:E699: 00        .byte $00   ; 
- D 3 - - - 0x01E6AA 07:E69A: 00        .byte $00   ; 



sub_E69B:
C - - - - - 0x01E6AB 07:E69B: A5 12     LDA ram_0012
C - - - - - 0x01E6AD 07:E69D: 48        PHA
C - - - - - 0x01E6AE 07:E69E: 29 0F     AND #$0F
C - - - - - 0x01E6B0 07:E6A0: 85 12     STA ram_0012
C - - - - - 0x01E6B2 07:E6A2: BD 30 03  LDA ram_pos_X_lo,X
C - - - - - 0x01E6B5 07:E6A5: 38        SEC
C - - - - - 0x01E6B6 07:E6A6: E5 12     SBC ram_0012
C - - - - - 0x01E6B8 07:E6A8: 9D 30 03  STA ram_pos_X_lo,X
C - - - - - 0x01E6BB 07:E6AB: BD 40 03  LDA ram_pos_X_hi,X
C - - - - - 0x01E6BE 07:E6AE: E9 00     SBC #$00
C - - - - - 0x01E6C0 07:E6B0: 9D 40 03  STA ram_pos_X_hi,X
C - - - - - 0x01E6C3 07:E6B3: 68        PLA
C - - - - - 0x01E6C4 07:E6B4: 85 12     STA ram_0012
C - - - - - 0x01E6C6 07:E6B6: 60        RTS



sub_E6B7:
C - - - - - 0x01E6C7 07:E6B7: A5 12     LDA ram_0012
C - - - - - 0x01E6C9 07:E6B9: 29 0F     AND #$0F
C - - - - - 0x01E6CB 07:E6BB: 49 0F     EOR #$0F
C - - - - - 0x01E6CD 07:E6BD: 38        SEC
sub_E6BE:
C - - - - - 0x01E6CE 07:E6BE: 7D 30 03  ADC ram_pos_X_lo,X
C - - - - - 0x01E6D1 07:E6C1: 9D 30 03  STA ram_pos_X_lo,X
C - - - - - 0x01E6D4 07:E6C4: BD 40 03  LDA ram_pos_X_hi,X
C - - - - - 0x01E6D7 07:E6C7: 69 00     ADC #$00
C - - - - - 0x01E6D9 07:E6C9: 9D 40 03  STA ram_pos_X_hi,X
C - - - - - 0x01E6DC 07:E6CC: 60        RTS



sub_E6CD:
C - - - - - 0x01E6DD 07:E6CD: A5 11     LDA ram_0011
C - - - - - 0x01E6DF 07:E6CF: 29 0F     AND #$0F
C - - - - - 0x01E6E1 07:E6D1: 49 0F     EOR #$0F
sub_E6D3:
C - - - - - 0x01E6E3 07:E6D3: 38        SEC
sub_E6D4:
C - - - - - 0x01E6E4 07:E6D4: 7D 60 03  ADC ram_pos_Y_lo,X
C - - - - - 0x01E6E7 07:E6D7: 9D 60 03  STA ram_pos_Y_lo,X
C - - - - - 0x01E6EA 07:E6DA: C9 F0     CMP #$F0
C - - - - - 0x01E6EC 07:E6DC: 90 10     BCC bra_E6EE_RTS
- - - - - - 0x01E6EE 07:E6DE: 69 0F     ADC #$0F
- - - - - - 0x01E6F0 07:E6E0: 9D 60 03  STA ram_pos_Y_lo,X
- - - - - - 0x01E6F3 07:E6E3: A5 50     LDA ram_substage
- - - - - - 0x01E6F5 07:E6E5: 30 04     BMI bra_E6EB
- - - - - - 0x01E6F7 07:E6E7: FE 70 03  INC ram_pos_Y_hi,X
- - - - - - 0x01E6FA 07:E6EA: 60        RTS
bra_E6EB:
- - - - - - 0x01E6FB 07:E6EB: DE 70 03  DEC ram_pos_Y_hi,X
bra_E6EE_RTS:
C - - - - - 0x01E6FE 07:E6EE: 60        RTS



sub_E6EF:
C - - - - - 0x01E6FF 07:E6EF: A5 11     LDA ram_0011
C - - - - - 0x01E701 07:E6F1: 48        PHA
C - - - - - 0x01E702 07:E6F2: 29 0F     AND #$0F
C - - - - - 0x01E704 07:E6F4: 85 11     STA ram_0011
C - - - - - 0x01E706 07:E6F6: BD 60 03  LDA ram_pos_Y_lo,X
C - - - - - 0x01E709 07:E6F9: 38        SEC
C - - - - - 0x01E70A 07:E6FA: E5 11     SBC ram_0011
C - - - - - 0x01E70C 07:E6FC: 9D 60 03  STA ram_pos_Y_lo,X
C - - - - - 0x01E70F 07:E6FF: B0 12     BCS bra_E713
- - - - - - 0x01E711 07:E701: E9 0F     SBC #$0F
- - - - - - 0x01E713 07:E703: 9D 60 03  STA ram_pos_Y_lo,X
- - - - - - 0x01E716 07:E706: A5 50     LDA ram_substage
- - - - - - 0x01E718 07:E708: 30 06     BMI bra_E710
- - - - - - 0x01E71A 07:E70A: DE 70 03  DEC ram_pos_Y_hi,X
- - - - - - 0x01E71D 07:E70D: 4C 13 E7  JMP loc_E713
bra_E710:
- - - - - - 0x01E720 07:E710: FE 70 03  INC ram_pos_Y_hi,X
bra_E713:
loc_E713:
C - - - - - 0x01E723 07:E713: 68        PLA
C - - - - - 0x01E724 07:E714: 85 11     STA ram_0011
C - - - - - 0x01E726 07:E716: 60        RTS



sub_E717:
C - - - - - 0x01E727 07:E717: A5 B1     LDA ram_hearts
C - - - - - 0x01E729 07:E719: F0 29     BEQ bra_E744_RTS
; if not dead
C - - - - - 0x01E72B 07:E71B: A5 18     LDA ram_0018
C - - - - - 0x01E72D 07:E71D: 05 19     ORA ram_0019
C - - - - - 0x01E72F 07:E71F: D0 23     BNE bra_E744_RTS
C - - - - - 0x01E731 07:E721: A9 03     LDA #$03
C - - - - - 0x01E733 07:E723: 85 10     STA ram_0010
C - - - - - 0x01E735 07:E725: A5 18     LDA ram_0018
C - - - - - 0x01E737 07:E727: 29 01     AND #$01
C - - - - - 0x01E739 07:E729: 85 11     STA ram_0011
C - - - - - 0x01E73B 07:E72B: A9 00     LDA #$00
C - - - - - 0x01E73D 07:E72D: 85 18     STA ram_0018
bra_E72F_loop:
C - - - - - 0x01E73F 07:E72F: A6 10     LDX ram_0010
C - - - - - 0x01E741 07:E731: BD 00 01  LDA ram_0100,X
C - - - - - 0x01E744 07:E734: 10 06     BPL bra_E73C
C - - - - - 0x01E746 07:E736: 29 7F     AND #$7F
C - - - - - 0x01E748 07:E738: A8        TAY
C - - - - - 0x01E749 07:E739: 20 45 E7  JSR sub_E745
bra_E73C:
C - - - - - 0x01E74C 07:E73C: C6 10     DEC ram_0010
C - - - - - 0x01E74E 07:E73E: 10 EF     BPL bra_E72F_loop
C - - - - - 0x01E750 07:E740: A5 11     LDA ram_0011
C - - - - - 0x01E752 07:E742: 85 18     STA ram_0018
bra_E744_RTS:
C - - - - - 0x01E754 07:E744: 60        RTS



sub_E745:
C - - - - - 0x01E755 07:E745: B9 A7 E7  LDA tbl_E7A7_index,Y
C - - - - - 0x01E758 07:E748: A8        TAY
C - - - - - 0x01E759 07:E749: BD 08 01  LDA ram_0108,X
C - - - - - 0x01E75C 07:E74C: FE 08 01  INC ram_0108,X
C - - - - - 0x01E75F 07:E74F: D9 B0 E7  CMP tbl_E7AF + $01,Y
C - - - - - 0x01E762 07:E752: D0 3D     BNE bra_E791_RTS
C - - - - - 0x01E764 07:E754: A9 00     LDA #$00
C - - - - - 0x01E766 07:E756: 9D 08 01  STA ram_0108,X
C - - - - - 0x01E769 07:E759: BD 04 01  LDA ram_0104,X
C - - - - - 0x01E76C 07:E75C: FE 04 01  INC ram_0104,X
C - - - - - 0x01E76F 07:E75F: D9 AF E7  CMP tbl_E7AF,Y
C - - - - - 0x01E772 07:E762: D0 05     BNE bra_E769
C - - - - - 0x01E774 07:E764: A9 00     LDA #$00
C - - - - - 0x01E776 07:E766: 9D 04 01  STA ram_0104,X
bra_E769:
C - - - - - 0x01E779 07:E769: 98        TYA
C - - - - - 0x01E77A 07:E76A: 18        CLC
C - - - - - 0x01E77B 07:E76B: 7D 04 01  ADC ram_0104,X
C - - - - - 0x01E77E 07:E76E: AA        TAX
C - - - - - 0x01E77F 07:E76F: BD B1 E7  LDA tbl_E7AF + $02,X
C - - - - - 0x01E782 07:E772: 0A        ASL
C - - - - - 0x01E783 07:E773: 7D B1 E7  ADC tbl_E7AF + $02,X
C - - - - - 0x01E786 07:E776: AA        TAX
C - - - - - 0x01E787 07:E777: A5 10     LDA ram_0010
C - - - - - 0x01E789 07:E779: 0A        ASL
C - - - - - 0x01E78A 07:E77A: 0A        ASL
C - - - - - 0x01E78B 07:E77B: A8        TAY
C - - - - - 0x01E78C 07:E77C: A9 03     LDA #$03
C - - - - - 0x01E78E 07:E77E: 85 00     STA ram_0000
bra_E780_loop:
C - - - - - 0x01E790 07:E780: BD 92 E7  LDA tbl_E792,X
C - - - - - 0x01E793 07:E783: 99 01 06  STA ram_pal_buffer_1 + $01,Y
C - - - - - 0x01E796 07:E786: 99 21 06  STA ram_pal_buffer_2 + $01,Y
C - - - - - 0x01E799 07:E789: C8        INY
C - - - - - 0x01E79A 07:E78A: E8        INX
C - - - - - 0x01E79B 07:E78B: C6 00     DEC ram_0000
C - - - - - 0x01E79D 07:E78D: D0 F1     BNE bra_E780_loop
C - - - - - 0x01E79F 07:E78F: E6 11     INC ram_0011
bra_E791_RTS:
C - - - - - 0x01E7A1 07:E791: 60        RTS



tbl_E792:
- D 3 - - - 0x01E7A2 07:E792: 20        .byte $20, $0F, $10   ; 
- D 3 - - - 0x01E7A5 07:E795: 0F        .byte $0F, $10, $20   ; 
- D 3 - - - 0x01E7A8 07:E798: 10        .byte $10, $20, $0F   ; 
- D 3 - - - 0x01E7AB 07:E79B: 17        .byte $17, $07, $0F   ; 
- D 3 - - - 0x01E7AE 07:E79E: 17        .byte $17, $07, $06   ; 
- D 3 - - - 0x01E7B1 07:E7A1: 17        .byte $17, $07, $16   ; 
- - - - - - 0x01E7B4 07:E7A4: 17        .byte $17, $07, $26   ; 


; ???
tbl_E7A7_index:
- D 3 - - - 0x01E7B7 07:E7A7: 00        .byte $00   ; 
- D 3 - - - 0x01E7B8 07:E7A8: 05        .byte $05   ; 
- - - - - - 0x01E7B9 07:E7A9: 0B        .byte $0B   ; 
- - - - - - 0x01E7BA 07:E7AA: 0B        .byte $0B   ; 
- - - - - - 0x01E7BB 07:E7AB: 0B        .byte $0B   ; 
- - - - - - 0x01E7BC 07:E7AC: 0B        .byte $0B   ; 
- - - - - - 0x01E7BD 07:E7AD: 0B        .byte $0B   ; 
- - - - - - 0x01E7BE 07:E7AE: 0B        .byte $0B   ; 


; ???
tbl_E7AF:
; 00
- D 3 - - - 0x01E7BF 07:E7AF: 02        .byte $02   ; 
- D 3 - - - 0x01E7C0 07:E7B0: 08        .byte $08   ; 
- D 3 - - - 0x01E7C1 07:E7B1: 00        .byte $00   ; 
- D 3 - - - 0x01E7C2 07:E7B2: 01        .byte $01   ; 
- D 3 - - - 0x01E7C3 07:E7B3: 02        .byte $02   ; 
; 05
- D 3 - - - 0x01E7C4 07:E7B4: 03        .byte $03   ; 
- D 3 - - - 0x01E7C5 07:E7B5: 20        .byte $20   ; 
- D 3 - - - 0x01E7C6 07:E7B6: 03        .byte $03   ; 
- D 3 - - - 0x01E7C7 07:E7B7: 04        .byte $04   ; 
- D 3 - - - 0x01E7C8 07:E7B8: 05        .byte $05   ; 
; 0B
- D 3 - - - 0x01E7C9 07:E7B9: 04        .byte $04   ; 



sub_0x01E7CA:
C - - - - - 0x01E7CA 07:E7BA: A4 1D     LDY ram_001D
C - - - - - 0x01E7CC 07:E7BC: A5 2C     LDA ram_002C
C - - - - - 0x01E7CE 07:E7BE: E6 1D     INC ram_001D
C - - - - - 0x01E7D0 07:E7C0: E6 1D     INC ram_001D
C - - - - - 0x01E7D2 07:E7C2: 99 10 01  STA ram_0110,Y
C - - - - - 0x01E7D5 07:E7C5: A5 2D     LDA ram_002D
C - - - - - 0x01E7D7 07:E7C7: 99 11 01  STA ram_0111,Y
C - - - - - 0x01E7DA 07:E7CA: 4A        LSR
C - - - - - 0x01E7DB 07:E7CB: 4A        LSR
C - - - - - 0x01E7DC 07:E7CC: 4A        LSR
C - - - - - 0x01E7DD 07:E7CD: 29 07     AND #$07
C - - - - - 0x01E7DF 07:E7CF: A8        TAY
C - - - - - 0x01E7E0 07:E7D0: B9 6E E8  LDA tbl_E86E,Y
C - - - - - 0x01E7E3 07:E7D3: 85 2A     STA ram_002A
C - - - - - 0x01E7E5 07:E7D5: A5 2C     LDA ram_002C
C - - - - - 0x01E7E7 07:E7D7: 38        SEC
C - - - - - 0x01E7E8 07:E7D8: FD 70 03  SBC ram_pos_Y_hi,X
C - - - - - 0x01E7EB 07:E7DB: 29 01     AND #$01
C - - - - - 0x01E7ED 07:E7DD: 0A        ASL
C - - - - - 0x01E7EE 07:E7DE: 0A        ASL
C - - - - - 0x01E7EF 07:E7DF: 19 76 E8  ORA tbl_E876,Y
C - - - - - 0x01E7F2 07:E7E2: 85 2B     STA ram_002B
C - - - - - 0x01E7F4 07:E7E4: A5 2D     LDA ram_002D
C - - - - - 0x01E7F6 07:E7E6: 29 07     AND #$07
C - - - - - 0x01E7F8 07:E7E8: 0A        ASL
C - - - - - 0x01E7F9 07:E7E9: 0A        ASL
C - - - - - 0x01E7FA 07:E7EA: 05 2A     ORA ram_002A
C - - - - - 0x01E7FC 07:E7EC: 85 2A     STA ram_002A
C - - - - - 0x01E7FE 07:E7EE: A9 08     LDA #$08
C - - - - - 0x01E800 07:E7F0: 85 29     STA ram_0029
C - - - - - 0x01E802 07:E7F2: 20 64 FE  JSR sub_FE64
C - - - - - 0x01E805 07:E7F5: A0 00     LDY #$00
C - - - - - 0x01E807 07:E7F7: BD 10 03  LDA ram_obj_id,X
C - - - - - 0x01E80A 07:E7FA: C9 32     CMP #con_obj_id_rock_big
C - - - - - 0x01E80C 07:E7FC: F0 0C     BEQ bra_E80A
C - - - - - 0x01E80E 07:E7FE: A9 10     LDA #$10
C - - - - - 0x01E810 07:E800: 20 45 FC  JSR sub_FC45
C - - - - - 0x01E813 07:E803: A9 00     LDA #con_obj_id_00
C - - - - - 0x01E815 07:E805: 9D 10 03  STA ram_obj_id,X
C - - - - - 0x01E818 07:E808: F0 1A     BEQ bra_E824   ; jmp
bra_E80A:
C - - - - - 0x01E81A 07:E80A: A9 4F     LDA #$4F
C - - - - - 0x01E81C 07:E80C: 20 45 FC  JSR sub_FC45
C - - - - - 0x01E81F 07:E80F: A9 00     LDA #con_obj_id_00
C - - - - - 0x01E821 07:E811: 9D 10 03  STA ram_obj_id,X
C - - - - - 0x01E824 07:E814: F0 0E     BEQ bra_E824   ; jmp



sub_E816:
C - - - - - 0x01E826 07:E816: A5 29     LDA ram_0029
C - - - - - 0x01E828 07:E818: F0 43     BEQ bra_E85D_RTS
C - - - - - 0x01E82A 07:E81A: A5 1A     LDA ram_001A
C - - - - - 0x01E82C 07:E81C: D0 3F     BNE bra_E85D_RTS
C - - - - - 0x01E82E 07:E81E: C6 29     DEC ram_0029
C - - - - - 0x01E830 07:E820: D0 3B     BNE bra_E85D_RTS
C - - - - - 0x01E832 07:E822: A0 08     LDY #$08
bra_E824:
C - - - - - 0x01E834 07:E824: A5 2B     LDA ram_002B
C - - - - - 0x01E836 07:E826: 8D C0 07  STA ram_ppu_buffer + $40
C - - - - - 0x01E839 07:E829: 8D C7 07  STA ram_ppu_buffer + $47
C - - - - - 0x01E83C 07:E82C: A5 2A     LDA ram_002A
C - - - - - 0x01E83E 07:E82E: 8D C1 07  STA ram_ppu_buffer + $41
C - - - - - 0x01E841 07:E831: 09 20     ORA #$20
C - - - - - 0x01E843 07:E833: 8D C8 07  STA ram_ppu_buffer + $48
C - - - - - 0x01E846 07:E836: A9 03     LDA #$03
C - - - - - 0x01E848 07:E838: 8D C2 07  STA ram_ppu_buffer + $42
C - - - - - 0x01E84B 07:E83B: 8D C9 07  STA ram_ppu_buffer + $49
C - - - - - 0x01E84E 07:E83E: 86 00     STX ram_0000
C - - - - - 0x01E850 07:E840: A2 00     LDX #$00
bra_E842_loop:
C - - - - - 0x01E852 07:E842: B9 5E E8  LDA tbl_E85E,Y
C - - - - - 0x01E855 07:E845: 9D C3 07  STA ram_ppu_buffer + $43,X
C - - - - - 0x01E858 07:E848: B9 62 E8  LDA tbl_E862,Y
C - - - - - 0x01E85B 07:E84B: 9D CA 07  STA ram_ppu_buffer + $4A,X
C - - - - - 0x01E85E 07:E84E: C8        INY
C - - - - - 0x01E85F 07:E84F: E8        INX
C - - - - - 0x01E860 07:E850: E0 04     CPX #$04
C - - - - - 0x01E862 07:E852: D0 EE     BNE bra_E842_loop
C - - - - - 0x01E864 07:E854: A6 00     LDX ram_0000
C - - - - - 0x01E866 07:E856: A9 FF     LDA #$FF
C - - - - - 0x01E868 07:E858: 8D CE 07  STA ram_ppu_buffer + $4E
C - - - - - 0x01E86B 07:E85B: 85 1A     STA ram_001A
bra_E85D_RTS:
C - - - - - 0x01E86D 07:E85D: 60        RTS



tbl_E85E:
- D 3 - - - 0x01E86E 07:E85E: 24        .byte $24   ; 00
- D 3 - - - 0x01E86F 07:E85F: 25        .byte $25   ; 01
- D 3 - - - 0x01E870 07:E860: 26        .byte $26   ; 02
- D 3 - - - 0x01E871 07:E861: 27        .byte $27   ; 03

tbl_E862:
- D 3 - - - 0x01E872 07:E862: 34        .byte $34   ; 00
- D 3 - - - 0x01E873 07:E863: 35        .byte $35   ; 01
- D 3 - - - 0x01E874 07:E864: 36        .byte $36   ; 02
- D 3 - - - 0x01E875 07:E865: 37        .byte $37   ; 03



tbl_E866:
- D 3 - - - 0x01E876 07:E866: 2C        .byte $2C   ; 
- D 3 - - - 0x01E877 07:E867: 2D        .byte $2D   ; 
- D 3 - - - 0x01E878 07:E868: 2E        .byte $2E   ; 
- D 3 - - - 0x01E879 07:E869: 2F        .byte $2F   ; 
- D 3 - - - 0x01E87A 07:E86A: 3C        .byte $3C   ; 
- D 3 - - - 0x01E87B 07:E86B: 3D        .byte $3D   ; 
- D 3 - - - 0x01E87C 07:E86C: 3E        .byte $3E   ; 
- D 3 - - - 0x01E87D 07:E86D: 3F        .byte $3F   ; 



tbl_E86E:
- - - - - - 0x01E87E 07:E86E: 00        .byte $00   ; 00
- D 3 - - - 0x01E87F 07:E86F: 80        .byte $80   ; 01
- D 3 - - - 0x01E880 07:E870: 00        .byte $00   ; 02
- D 3 - - - 0x01E881 07:E871: 80        .byte $80   ; 03
- - - - - - 0x01E882 07:E872: 00        .byte $00   ; 04
- D 3 - - - 0x01E883 07:E873: 80        .byte $80   ; 05
- D 3 - - - 0x01E884 07:E874: 00        .byte $00   ; 06
- - - - - - 0x01E885 07:E875: 80        .byte $80   ; 07

tbl_E876:
- - - - - - 0x01E886 07:E876: 20        .byte $20   ; 00
- D 3 - - - 0x01E887 07:E877: 20        .byte $20   ; 01
- D 3 - - - 0x01E888 07:E878: 21        .byte $21   ; 02
- D 3 - - - 0x01E889 07:E879: 21        .byte $21   ; 03
- - - - - - 0x01E88A 07:E87A: 22        .byte $22   ; 04
- D 3 - - - 0x01E88B 07:E87B: 22        .byte $22   ; 05
- D 3 - - - 0x01E88C 07:E87C: 23        .byte $23   ; 06
- - - - - - 0x01E88D 07:E87D: 23        .byte $23   ; 07



sub_E87E:
C - - - - - 0x01E88E 07:E87E: A5 E9     LDA ram_stage
C - - - - - 0x01E890 07:E880: C9 04     CMP #$04
C - - - - - 0x01E892 07:E882: D0 3C     BNE bra_E8C0_RTS
; if stage 5
C - - - - - 0x01E894 07:E884: A0 00     LDY #$00
bra_E886_loop:
C - - - - - 0x01E896 07:E886: AD 40 03  LDA ram_pos_X_hi
C - - - - - 0x01E899 07:E889: D9 0C EA  CMP tbl_EA0C,Y
C - - - - - 0x01E89C 07:E88C: D0 2A     BNE bra_E8B8
C - - - - - 0x01E89E 07:E88E: AD 30 03  LDA ram_pos_X_lo
C - - - - - 0x01E8A1 07:E891: 38        SEC
C - - - - - 0x01E8A2 07:E892: F9 0D EA  SBC tbl_EA0C + $01,Y
C - - - - - 0x01E8A5 07:E895: B0 04     BCS bra_E89B
C - - - - - 0x01E8A7 07:E897: 49 FF     EOR #$FF
C - - - - - 0x01E8A9 07:E899: 69 01     ADC #$01
bra_E89B:
C - - - - - 0x01E8AB 07:E89B: C9 10     CMP #$10
C - - - - - 0x01E8AD 07:E89D: B0 19     BCS bra_E8B8
C - - - - - 0x01E8AF 07:E89F: AD 70 03  LDA ram_pos_Y_hi
C - - - - - 0x01E8B2 07:E8A2: D9 0E EA  CMP tbl_EA0C + $02,Y
C - - - - - 0x01E8B5 07:E8A5: D0 11     BNE bra_E8B8
C - - - - - 0x01E8B7 07:E8A7: AD 60 03  LDA ram_pos_Y_lo
C - - - - - 0x01E8BA 07:E8AA: 38        SEC
C - - - - - 0x01E8BB 07:E8AB: F9 0F EA  SBC tbl_EA0C + $03,Y
C - - - - - 0x01E8BE 07:E8AE: B0 04     BCS bra_E8B4
C - - - - - 0x01E8C0 07:E8B0: 49 FF     EOR #$FF
C - - - - - 0x01E8C2 07:E8B2: 69 01     ADC #$01
bra_E8B4:
C - - - - - 0x01E8C4 07:E8B4: C9 10     CMP #$10
C - - - - - 0x01E8C6 07:E8B6: 90 09     BCC bra_E8C1
bra_E8B8:
C - - - - - 0x01E8C8 07:E8B8: C8        INY
C - - - - - 0x01E8C9 07:E8B9: C8        INY
C - - - - - 0x01E8CA 07:E8BA: C8        INY
C - - - - - 0x01E8CB 07:E8BB: C8        INY
C - - - - - 0x01E8CC 07:E8BC: C0 2C     CPY #$2C
C - - - - - 0x01E8CE 07:E8BE: D0 C6     BNE bra_E886_loop
bra_E8C0_RTS:
C - - - - - 0x01E8D0 07:E8C0: 60        RTS
bra_E8C1:
C - - - - - 0x01E8D1 07:E8C1: A5 30     LDA ram_ariel_status
C - - - - - 0x01E8D3 07:E8C3: C9 07     CMP #con_ariel_damaged
C - - - - - 0x01E8D5 07:E8C5: F0 F9     BEQ bra_E8C0_RTS
C - - - - - 0x01E8D7 07:E8C7: A5 14     LDA ram_btn_press
C - - - - - 0x01E8D9 07:E8C9: 29 80     AND #con_btn_A
C - - - - - 0x01E8DB 07:E8CB: F0 F3     BEQ bra_E8C0_RTS
C - - - - - 0x01E8DD 07:E8CD: 98        TYA
C - - - - - 0x01E8DE 07:E8CE: 4A        LSR
C - - - - - 0x01E8DF 07:E8CF: 4A        LSR
C - - - - - 0x01E8E0 07:E8D0: 48        PHA
C - - - - - 0x01E8E1 07:E8D1: A9 00     LDA #$00
C - - - - - 0x01E8E3 07:E8D3: 85 EE     STA ram_00EE
C - - - - - 0x01E8E5 07:E8D5: 20 EC C1  JSR sub_C1EC
C - - - - - 0x01E8E8 07:E8D8: 20 D3 C1  JSR sub_C1D3_clear_all_objects
C - - - - - 0x01E8EB 07:E8DB: A9 04     LDA #$04
C - - - - - 0x01E8ED 07:E8DD: 85 97     STA ram_spr_index
C - - - - - 0x01E8EF 07:E8DF: 20 BC C1  JSR sub_C1BC_hide_unused_sprites
C - - - - - 0x01E8F2 07:E8E2: 20 AD FF  JSR sub_FFAD
C - - - - - 0x01E8F5 07:E8E5: 20 04 C1  JSR sub_C104
C - - - - - 0x01E8F8 07:E8E8: 68        PLA
C - - - - - 0x01E8F9 07:E8E9: A8        TAY
C - - - - - 0x01E8FA 07:E8EA: 85 0A     STA ram_000A
C - - - - - 0x01E8FC 07:E8EC: B9 8C EA  LDA tbl_EA8C_lo,Y
C - - - - - 0x01E8FF 07:E8EF: 85 08     STA ram_0008
C - - - - - 0x01E901 07:E8F1: B9 97 EA  LDA tbl_EA97_hi,Y
C - - - - - 0x01E904 07:E8F4: 85 09     STA ram_0009
C - - - - - 0x01E906 07:E8F6: A0 00     LDY #$00
C - - - - - 0x01E908 07:E8F8: 84 FC     STY ram_scroll_X_lo
C - - - - - 0x01E90A 07:E8FA: 84 FA     STY ram_scroll_Y_lo
C - - - - - 0x01E90C 07:E8FC: 84 F7     STY ram_copy_scroll_X
C - - - - - 0x01E90E 07:E8FE: 84 F8     STY ram_copy_scroll_Y
C - - - - - 0x01E910 07:E900: A5 0A     LDA ram_000A
C - - - - - 0x01E912 07:E902: C9 05     CMP #$05
C - - - - - 0x01E914 07:E904: F0 04     BEQ bra_E90A
C - - - - - 0x01E916 07:E906: C9 07     CMP #$07
C - - - - - 0x01E918 07:E908: D0 08     BNE bra_E912
bra_E90A:
C - - - - - 0x01E91A 07:E90A: A5 28     LDA ram_0028
C - - - - - 0x01E91C 07:E90C: C9 01     CMP #$01
C - - - - - 0x01E91E 07:E90E: D0 02     BNE bra_E912
C - - - - - 0x01E920 07:E910: A0 07     LDY #$07
bra_E912:
C - - - - - 0x01E922 07:E912: A5 0A     LDA ram_000A
C - - - - - 0x01E924 07:E914: 85 28     STA ram_0028
C - - - - - 0x01E926 07:E916: B1 08     LDA (ram_0008),Y
C - - - - - 0x01E928 07:E918: 85 0F     STA ram_000F
C - - - - - 0x01E92A 07:E91A: 85 20     STA ram_0020
C - - - - - 0x01E92C 07:E91C: C8        INY
C - - - - - 0x01E92D 07:E91D: B1 08     LDA (ram_0008),Y
C - - - - - 0x01E92F 07:E91F: 85 FD     STA ram_scroll_X_hi
C - - - - - 0x01E931 07:E921: 8D 40 03  STA ram_pos_X_hi
C - - - - - 0x01E934 07:E924: 85 33     STA ram_0033
C - - - - - 0x01E936 07:E926: C8        INY
C - - - - - 0x01E937 07:E927: B1 08     LDA (ram_0008),Y
C - - - - - 0x01E939 07:E929: 8D 30 03  STA ram_pos_X_lo
C - - - - - 0x01E93C 07:E92C: 85 32     STA ram_0032
C - - - - - 0x01E93E 07:E92E: C8        INY
C - - - - - 0x01E93F 07:E92F: B1 08     LDA (ram_0008),Y
C - - - - - 0x01E941 07:E931: 85 FB     STA ram_scroll_Y_hi
C - - - - - 0x01E943 07:E933: 8D 70 03  STA ram_pos_Y_hi
C - - - - - 0x01E946 07:E936: 85 35     STA ram_0035
C - - - - - 0x01E948 07:E938: C8        INY
C - - - - - 0x01E949 07:E939: B1 08     LDA (ram_0008),Y
C - - - - - 0x01E94B 07:E93B: 8D 60 03  STA ram_pos_Y_lo
C - - - - - 0x01E94E 07:E93E: 85 34     STA ram_0034
C - - - - - 0x01E950 07:E940: C8        INY
C - - - - - 0x01E951 07:E941: 84 0A     STY ram_000A
C - - - - - 0x01E953 07:E943: A5 FD     LDA ram_scroll_X_hi
C - - - - - 0x01E955 07:E945: 4A        LSR
C - - - - - 0x01E956 07:E946: 6A        ROR
C - - - - - 0x01E957 07:E947: 4A        LSR
C - - - - - 0x01E958 07:E948: 29 40     AND #$40
C - - - - - 0x01E95A 07:E94A: 38        SEC
C - - - - - 0x01E95B 07:E94B: E9 20     SBC #$20
C - - - - - 0x01E95D 07:E94D: 29 7F     AND #$7F
C - - - - - 0x01E95F 07:E94F: 85 22     STA ram_0022
C - - - - - 0x01E961 07:E951: A9 80     LDA #$80
C - - - - - 0x01E963 07:E953: 85 0B     STA ram_000B
bra_E955_loop:
C - - - - - 0x01E965 07:E955: A9 01     LDA #$01
C - - - - - 0x01E967 07:E957: 85 01     STA ram_0001
C - - - - - 0x01E969 07:E959: 85 27     STA ram_0027
C - - - - - 0x01E96B 07:E95B: 20 BD D6  JSR sub_D6BD
C - - - - - 0x01E96E 07:E95E: 20 CB C0  JSR sub_C0CB_write_buffer_to_ppu
C - - - - - 0x01E971 07:E961: C6 0B     DEC ram_000B
C - - - - - 0x01E973 07:E963: D0 F0     BNE bra_E955_loop
C - - - - - 0x01E975 07:E965: A4 0A     LDY ram_000A
C - - - - - 0x01E977 07:E967: B1 08     LDA (ram_0008),Y
C - - - - - 0x01E979 07:E969: 85 52     STA ram_0052
C - - - - - 0x01E97B 07:E96B: C8        INY
C - - - - - 0x01E97C 07:E96C: B1 08     LDA (ram_0008),Y
C - - - - - 0x01E97E 07:E96E: 85 0A     STA ram_000A
C - - - - - 0x01E980 07:E970: A8        TAY
C - - - - - 0x01E981 07:E971: B1 70     LDA (ram_0070),Y
C - - - - - 0x01E983 07:E973: 48        PHA
C - - - - - 0x01E984 07:E974: 29 1F     AND #$1F
C - - - - - 0x01E986 07:E976: 85 51     STA ram_scroll_hi_max
C - - - - - 0x01E988 07:E978: 68        PLA
C - - - - - 0x01E989 07:E979: 29 F0     AND #$F0
C - - - - - 0x01E98B 07:E97B: 05 0A     ORA ram_000A
C - - - - - 0x01E98D 07:E97D: 85 50     STA ram_substage
C - - - - - 0x01E98F 07:E97F: 29 C0     AND #$C0
C - - - - - 0x01E991 07:E981: F0 08     BEQ bra_E98B_horisontal
; if vertical
C - - - - - 0x01E993 07:E983: A9 1D     LDA #$1D
C - - - - - 0x01E995 07:E985: 85 22     STA ram_0022
C - - - - - 0x01E997 07:E987: A9 08     LDA #$08
C - - - - - 0x01E999 07:E989: 85 27     STA ram_0027
bra_E98B_horisontal:
C - - - - - 0x01E99B 07:E98B: A2 09     LDX #con_C2C4_09
C - - - - - 0x01E99D 07:E98D: A5 0A     LDA ram_000A
C - - - - - 0x01E99F 07:E98F: C9 03     CMP #$03
C - - - - - 0x01E9A1 07:E991: 90 01     BCC bra_E994
C - - - - - 0x01E9A3 07:E993: E8        INX ; con_C2C4_0A
bra_E994:
C - - - - - 0x01E9A4 07:E994: 20 6B C2  JSR sub_C26B_write_chr_to_ppu
C - - - - - 0x01E9A7 07:E997: 20 AD FF  JSR sub_FFAD
C - - - - - 0x01E9AA 07:E99A: A0 00     LDY #$00
C - - - - - 0x01E9AC 07:E99C: A2 07     LDX #con_C2C4_07
C - - - - - 0x01E9AE 07:E99E: A5 0A     LDA ram_000A
C - - - - - 0x01E9B0 07:E9A0: C9 06     CMP #$06
C - - - - - 0x01E9B2 07:E9A2: D0 05     BNE bra_E9A9
C - - - - - 0x01E9B4 07:E9A4: E8        INX ; con_C2C4_08
C - - - - - 0x01E9B5 07:E9A5: A0 08     LDY #$08
C - - - - - 0x01E9B7 07:E9A7: D0 00     BNE bra_E9A9   ; jmp    bzk optimize, useless
bra_E9A9:
C - - - - - 0x01E9B9 07:E9A9: 86 0A     STX ram_000A
C - - - - - 0x01E9BB 07:E9AB: A2 00     LDX #$00
bra_E9AD_loop:
C - - - - - 0x01E9BD 07:E9AD: B9 FC E9  LDA tbl_E9FC_palette,Y
C - - - - - 0x01E9C0 07:E9B0: 9D 20 06  STA ram_pal_buffer_2,X
C - - - - - 0x01E9C3 07:E9B3: C8        INY
C - - - - - 0x01E9C4 07:E9B4: E8        INX
C - - - - - 0x01E9C5 07:E9B5: E0 08     CPX #$08
C - - - - - 0x01E9C7 07:E9B7: D0 F4     BNE bra_E9AD_loop
C - - - - - 0x01E9C9 07:E9B9: A6 0A     LDX ram_000A
C - - - - - 0x01E9CB 07:E9BB: 20 6B C2  JSR sub_C26B_write_chr_to_ppu
C - - - - - 0x01E9CE 07:E9BE: A5 50     LDA ram_substage
C - - - - - 0x01E9D0 07:E9C0: 29 0F     AND #$0F
C - - - - - 0x01E9D2 07:E9C2: A8        TAY
C - - - - - 0x01E9D3 07:E9C3: B9 3B DB  LDA tbl_DB3B,Y
C - - - - - 0x01E9D6 07:E9C6: F0 12     BEQ bra_E9DA
C - - - - - 0x01E9D8 07:E9C8: 0A        ASL
C - - - - - 0x01E9D9 07:E9C9: 0A        ASL
C - - - - - 0x01E9DA 07:E9CA: 0A        ASL
C - - - - - 0x01E9DB 07:E9CB: A8        TAY
C - - - - - 0x01E9DC 07:E9CC: A2 00     LDX #$00
bra_E9CE_loop:
C - - - - - 0x01E9DE 07:E9CE: B9 9B DB  LDA tbl_DBA3_palette - $08,Y
C - - - - - 0x01E9E1 07:E9D1: 9D 38 06  STA ram_pal_buffer_2 + $18,X
C - - - - - 0x01E9E4 07:E9D4: C8        INY
C - - - - - 0x01E9E5 07:E9D5: E8        INX
C - - - - - 0x01E9E6 07:E9D6: E0 08     CPX #$08
C - - - - - 0x01E9E8 07:E9D8: D0 F4     BNE bra_E9CE_loop
bra_E9DA:
C - - - - - 0x01E9EA 07:E9DA: A9 04     LDA #con_prg_bank + $04
C - - - - - 0x01E9EC 07:E9DC: 20 CD FF  JSR sub_FFCD_prg_bankswitch
C - - - - - 0x01E9EF 07:E9DF: A4 0F     LDY ram_000F
C - - - - - 0x01E9F1 07:E9E1: B9 80 BF  LDA tbl_0x013F90,Y
C - - - - - 0x01E9F4 07:E9E4: 85 9E     STA ram_009E
C - - - - - 0x01E9F6 07:E9E6: 85 9F     STA ram_009F
C - - - - - 0x01E9F8 07:E9E8: A9 01     LDA #$01
C - - - - - 0x01E9FA 07:E9EA: 85 F9     STA ram_camera_direction
C - - - - - 0x01E9FC 07:E9EC: 20 0E C1  JSR sub_C10E
C - - - - - 0x01E9FF 07:E9EF: 20 AD FF  JSR sub_FFAD
C - - - - - 0x01EA02 07:E9F2: A9 00     LDA #$00
C - - - - - 0x01EA04 07:E9F4: 85 3A     STA ram_003A
C - - - - - 0x01EA06 07:E9F6: 20 BA CB  JSR sub_CBBA
C - - - - - 0x01EA09 07:E9F9: 4C E6 C1  JMP loc_C1E6



tbl_E9FC_palette:
; 00
- D 3 - - - 0x01EA0C 07:E9FC: 0F        .byte $0F, $36, $26, $15   ; 
- D 3 - - - 0x01EA10 07:EA00: 0F        .byte $0F, $26, $15, $05   ; 
; 08
- D 3 - - - 0x01EA14 07:EA04: 0F        .byte $0F, $03, $23, $33   ; 
- D 3 - - - 0x01EA18 07:EA08: 0F        .byte $0F, $1C, $2C, $3C   ; 



tbl_EA0C:
; teleport positions?
; 00
- D 3 - - - 0x01EA1C 07:EA0C: 01 90     .dbyt $0190 ; pos_X
- D 3 - - - 0x01EA1E 07:EA0E: 00 50     .dbyt $0050 ; pos_Y
; 01
- D 3 - - - 0x01EA20 07:EA10: 03 A0     .dbyt $03A0
- D 3 - - - 0x01EA22 07:EA12: 00 B0     .dbyt $00B0
; 02
- D 3 - - - 0x01EA24 07:EA14: 05 20     .dbyt $0520
- D 3 - - - 0x01EA26 07:EA16: 00 B0     .dbyt $00B0
; 03
- D 3 - - - 0x01EA28 07:EA18: 05 C0     .dbyt $05C0
- D 3 - - - 0x01EA2A 07:EA1A: 00 B0     .dbyt $00B0
; 04
- D 3 - - - 0x01EA2C 07:EA1C: 07 20     .dbyt $0720
- D 3 - - - 0x01EA2E 07:EA1E: 00 90     .dbyt $0090
; 05
- D 3 - - - 0x01EA30 07:EA20: 08 E0     .dbyt $08E0
- D 3 - - - 0x01EA32 07:EA22: 00 90     .dbyt $0090
; 06
- D 3 - - - 0x01EA34 07:EA24: 09 20     .dbyt $0920
- D 3 - - - 0x01EA36 07:EA26: 00 90     .dbyt $0090
; 07
- D 3 - - - 0x01EA38 07:EA28: 0E C0     .dbyt $0EC0
- D 3 - - - 0x01EA3A 07:EA2A: 03 50     .dbyt $0350
; 08
- D 3 - - - 0x01EA3C 07:EA2C: 0F 40     .dbyt $0F40
- D 3 - - - 0x01EA3E 07:EA2E: 03 B0     .dbyt $03B0
; 09
- D 3 - - - 0x01EA40 07:EA30: 0F C0     .dbyt $0FC0
- D 3 - - - 0x01EA42 07:EA32: 04 50     .dbyt $0450
; 0A
- D 3 - - - 0x01EA44 07:EA34: 10 30     .dbyt $1030
- D 3 - - - 0x01EA46 07:EA36: 04 90     .dbyt $0490



_off013_EA38_00:
- D 3 - I - 0x01EA48 07:EA38: 06        .byte $06   ; 
- D 3 - I - 0x01EA49 07:EA39: 07 20     .dbyt $0720 ; pos_X
- D 3 - I - 0x01EA4B 07:EA3B: 00 90     .dbyt $0090 ; pos_Y
- D 3 - I - 0x01EA4D 07:EA3D: 00        .byte $00   ; 
- D 3 - I - 0x01EA4E 07:EA3E: 01        .byte $01   ; 



_off013_EA3F_01:
- D 3 - I - 0x01EA4F 07:EA3F: 07        .byte $07   ; 
- D 3 - I - 0x01EA50 07:EA40: 08 E0     .dbyt $08E0 ; pos_X
- D 3 - I - 0x01EA52 07:EA42: 00 90     .dbyt $0090 ; pos_Y
- D 3 - I - 0x01EA54 07:EA44: 01        .byte $01   ; 
- D 3 - I - 0x01EA55 07:EA45: 01        .byte $01   ; 



_off013_EA46_02:
- D 3 - I - 0x01EA56 07:EA46: 08        .byte $08   ; 
- D 3 - I - 0x01EA57 07:EA47: 09 20     .dbyt $0920 ; pos_X
- D 3 - I - 0x01EA59 07:EA49: 00 90     .dbyt $0090 ; pos_Y
- D 3 - I - 0x01EA5B 07:EA4B: 00        .byte $00   ; 
- D 3 - I - 0x01EA5C 07:EA4C: 02        .byte $02   ; 



_off013_EA4D_03:
- D 3 - I - 0x01EA5D 07:EA4D: 06        .byte $06   ; 
- D 3 - I - 0x01EA5E 07:EA4E: 07 20     .dbyt $0720 ; pos_X
- D 3 - I - 0x01EA60 07:EA50: 00 90     .dbyt $0090 ; pos_Y
- D 3 - I - 0x01EA62 07:EA52: 00        .byte $00   ; 
- D 3 - I - 0x01EA63 07:EA53: 01        .byte $01   ; 



_off013_EA54_04:
- D 3 - I - 0x01EA64 07:EA54: 00        .byte $00   ; 
- D 3 - I - 0x01EA65 07:EA55: 01 90     .dbyt $0190 ; pos_X
- D 3 - I - 0x01EA67 07:EA57: 00 50     .dbyt $0050 ; pos_Y
- D 3 - I - 0x01EA69 07:EA59: 01        .byte $01   ; 
- D 3 - I - 0x01EA6A 07:EA5A: 00        .byte $00   ; 



_off013_EA5B_05:
- D 3 - I - 0x01EA6B 07:EA5B: 02        .byte $02   ; 
- D 3 - I - 0x01EA6C 07:EA5C: 03 A0     .dbyt $03A0 ; pos_X
- D 3 - I - 0x01EA6E 07:EA5E: 00 B0     .dbyt $00B0 ; pos_Y
- D 3 - I - 0x01EA70 07:EA60: 03        .byte $03   ; 
- D 3 - I - 0x01EA71 07:EA61: 00        .byte $00   ; 

- D 3 - I - 0x01EA72 07:EA62: 04        .byte $04   ; 
- D 3 - I - 0x01EA73 07:EA63: 05 20     .dbyt $0520 ; pos_X
- D 3 - I - 0x01EA75 07:EA65: 00 B0     .dbyt $00B0 ; pos_Y
- D 3 - I - 0x01EA77 07:EA67: 05        .byte $05   ; 
- D 3 - I - 0x01EA78 07:EA68: 00        .byte $00   ; 



_off013_EA69_06:
- D 3 - I - 0x01EA79 07:EA69: 04        .byte $04   ; 
- D 3 - I - 0x01EA7A 07:EA6A: 05 20     .dbyt $0520 ; pos_X
- D 3 - I - 0x01EA7C 07:EA6C: 00 B0     .dbyt $00B0 ; pos_Y
- D 3 - I - 0x01EA7E 07:EA6E: 05        .byte $05   ; 
- D 3 - I - 0x01EA7F 07:EA6F: 00        .byte $00   ; 



_off013_EA70_07:
- D 3 - I - 0x01EA80 07:EA70: 11        .byte $11   ; 
- D 3 - I - 0x01EA81 07:EA71: 0F 40     .dbyt $0F40 ; pos_X
- D 3 - I - 0x01EA83 07:EA73: 03 B0     .dbyt $03B0 ; pos_Y
- D 3 - I - 0x01EA85 07:EA75: 00        .byte $00   ; 
- D 3 - I - 0x01EA86 07:EA76: 05        .byte $05   ; 



_off013_EA77_08:
- D 3 - I - 0x01EA87 07:EA77: 10        .byte $10   ; 
- D 3 - I - 0x01EA88 07:EA78: 0E C0     .dbyt $0EC0 ; pos_X
- D 3 - I - 0x01EA8A 07:EA7A: 03 50     .dbyt $0350 ; pos_Y
- D 3 - I - 0x01EA8C 07:EA7C: 01        .byte $01   ; 
- D 3 - I - 0x01EA8D 07:EA7D: 04        .byte $04   ; 



_off013_EA7E_09:
- D 3 - I - 0x01EA8E 07:EA7E: 13        .byte $13   ; 
- D 3 - I - 0x01EA8F 07:EA7F: 10 30     .dbyt $1030 ; pos_X
- D 3 - I - 0x01EA91 07:EA81: 04 90     .dbyt $0490 ; pos_Y
- D 3 - I - 0x01EA93 07:EA83: 00        .byte $00   ; 
- D 3 - I - 0x01EA94 07:EA84: 06        .byte $06   ; 



_off013_EA85_0A:
- D 3 - I - 0x01EA95 07:EA85: 12        .byte $12   ; 
- D 3 - I - 0x01EA96 07:EA86: 0F C0     .dbyt $0FC0 ; pos_X
- D 3 - I - 0x01EA98 07:EA88: 04 50     .dbyt $0450 ; pos_Y
- D 3 - I - 0x01EA9A 07:EA8A: 01        .byte $01   ; 
- D 3 - I - 0x01EA9B 07:EA8B: 05        .byte $05   ; 



tbl_EA8C_lo:
- D 3 - - - 0x01EA9C 07:EA8C: 38 EA     .byte < _off013_EA38_00   ; 
- D 3 - - - 0x01EA9D 07:EA8D: 3F EA     .byte < _off013_EA3F_01   ; 
- D 3 - - - 0x01EA9E 07:EA8E: 46 EA     .byte < _off013_EA46_02   ; 
- D 3 - - - 0x01EA9F 07:EA8F: 4D EA     .byte < _off013_EA4D_03   ; 
- D 3 - - - 0x01EAA0 07:EA90: 54 EA     .byte < _off013_EA54_04   ; 
- D 3 - - - 0x01EAA1 07:EA91: 5B EA     .byte < _off013_EA5B_05   ; 
- D 3 - - - 0x01EAA2 07:EA92: 69 EA     .byte < _off013_EA69_06   ; 
- D 3 - - - 0x01EAA3 07:EA93: 70 EA     .byte < _off013_EA70_07   ; 
- D 3 - - - 0x01EAA4 07:EA94: 77 EA     .byte < _off013_EA77_08   ; 
- D 3 - - - 0x01EAA5 07:EA95: 7E EA     .byte < _off013_EA7E_09   ; 
- D 3 - - - 0x01EAA6 07:EA96: 85 EA     .byte < _off013_EA85_0A   ; 



tbl_EA97_hi:
- D 3 - - - 0x01EAA7 07:EA97: EA        .byte > _off013_EA38_00   ; 
- D 3 - - - 0x01EAA8 07:EA98: EA        .byte > _off013_EA3F_01   ; 
- D 3 - - - 0x01EAA9 07:EA99: EA        .byte > _off013_EA46_02   ; 
- D 3 - - - 0x01EAAA 07:EA9A: EA        .byte > _off013_EA4D_03   ; 
- D 3 - - - 0x01EAAB 07:EA9B: EA        .byte > _off013_EA54_04   ; 
- D 3 - - - 0x01EAAC 07:EA9C: EA        .byte > _off013_EA5B_05   ; 
- D 3 - - - 0x01EAAD 07:EA9D: EA        .byte > _off013_EA69_06   ; 
- D 3 - - - 0x01EAAE 07:EA9E: EA        .byte > _off013_EA70_07   ; 
- D 3 - - - 0x01EAAF 07:EA9F: EA        .byte > _off013_EA77_08   ; 
- D 3 - - - 0x01EAB0 07:EAA0: EA        .byte > _off013_EA7E_09   ; 
- D 3 - - - 0x01EAB1 07:EAA1: EA        .byte > _off013_EA85_0A   ; 



sub_EAA2:
C - - - - - 0x01EAB2 07:EAA2: A9 00     LDA #$00
C - - - - - 0x01EAB4 07:EAA4: 85 EE     STA ram_00EE
C - - - - - 0x01EAB6 07:EAA6: 20 EC C1  JSR sub_C1EC
C - - - - - 0x01EAB9 07:EAA9: A9 04     LDA #$04
C - - - - - 0x01EABB 07:EAAB: 85 97     STA ram_spr_index
C - - - - - 0x01EABD 07:EAAD: 20 BC C1  JSR sub_C1BC_hide_unused_sprites
C - - - - - 0x01EAC0 07:EAB0: 20 AD FF  JSR sub_FFAD
C - - - - - 0x01EAC3 07:EAB3: 20 04 C1  JSR sub_C104
C - - - - - 0x01EAC6 07:EAB6: A5 22     LDA ram_0022
C - - - - - 0x01EAC8 07:EAB8: 48        PHA
C - - - - - 0x01EAC9 07:EAB9: A5 27     LDA ram_0027
C - - - - - 0x01EACB 07:EABB: 48        PHA
C - - - - - 0x01EACC 07:EABC: A5 20     LDA ram_0020
C - - - - - 0x01EACE 07:EABE: 48        PHA
C - - - - - 0x01EACF 07:EABF: A5 FC     LDA ram_scroll_X_lo
C - - - - - 0x01EAD1 07:EAC1: 48        PHA
C - - - - - 0x01EAD2 07:EAC2: A5 FD     LDA ram_scroll_X_hi
C - - - - - 0x01EAD4 07:EAC4: 48        PHA
C - - - - - 0x01EAD5 07:EAC5: A5 FA     LDA ram_scroll_Y_lo
C - - - - - 0x01EAD7 07:EAC7: 48        PHA
C - - - - - 0x01EAD8 07:EAC8: A5 50     LDA ram_substage
C - - - - - 0x01EADA 07:EACA: 29 C0     AND #$C0
C - - - - - 0x01EADC 07:EACC: F0 08     BEQ bra_EAD6_horisontal
; if vertical
C - - - - - 0x01EADE 07:EACE: AD 40 03  LDA ram_pos_X_hi
C - - - - - 0x01EAE1 07:EAD1: 49 01     EOR #$01
C - - - - - 0x01EAE3 07:EAD3: 4C D9 EA  JMP loc_EAD9
bra_EAD6_horisontal:
C - - - - - 0x01EAE6 07:EAD6: AD 40 03  LDA ram_pos_X_hi
loc_EAD9:
C D 3 - - - 0x01EAE9 07:EAD9: 29 01     AND #$01
C - - - - - 0x01EAEB 07:EADB: 85 FD     STA ram_scroll_X_hi
C - - - - - 0x01EAED 07:EADD: 0A        ASL
C - - - - - 0x01EAEE 07:EADE: 0A        ASL
C - - - - - 0x01EAEF 07:EADF: 85 03     STA ram_0003
C - - - - - 0x01EAF1 07:EAE1: 09 20     ORA #$20    ; ppu hi
C - - - - - 0x01EAF3 07:EAE3: A2 00     LDX #$00    ; tile id
C - - - - - 0x01EAF5 07:EAE5: A0 00     LDY #$00
C - - - - - 0x01EAF7 07:EAE7: 20 70 C1  JSR sub_C170
C - - - - - 0x01EAFA 07:EAEA: A9 06     LDA #con_prg_bank + $06
C - - - - - 0x01EAFC 07:EAEC: 20 CD FF  JSR sub_FFCD_prg_bankswitch
C - - - - - 0x01EAFF 07:EAEF: A2 01     LDX #$01    ; pause
C - - - - - 0x01EB01 07:EAF1: 20 04 B0  JSR sub_0x01B014_draw_static_screen
C - - - - - 0x01EB04 07:EAF4: A0 12     LDY #$12
bra_EAF6_loop:
C - - - - - 0x01EB06 07:EAF6: B9 65 EC  LDA tbl_EC65_ppu_data,Y
C - - - - - 0x01EB09 07:EAF9: 99 80 07  STA ram_ppu_buffer,Y
C - - - - - 0x01EB0C 07:EAFC: 88        DEY
C - - - - - 0x01EB0D 07:EAFD: 10 F7     BPL bra_EAF6_loop
C - - - - - 0x01EB0F 07:EAFF: A5 B0     LDA ram_lives
C - - - - - 0x01EB11 07:EB01: D0 04     BNE bra_EB07
C - - - - - 0x01EB13 07:EB03: A9 22     LDA #$22
C - - - - - 0x01EB15 07:EB05: D0 02     BNE bra_EB09
bra_EB07:
C - - - - - 0x01EB17 07:EB07: 09 30     ORA #$30
bra_EB09:
C - - - - - 0x01EB19 07:EB09: 8D 91 07  STA ram_ppu_buffer + $11
C - - - - - 0x01EB1C 07:EB0C: A0 00     LDY #$00
bra_EB0E_loop:
C - - - - - 0x01EB1E 07:EB0E: B9 00 05  LDA ram_score_total,Y
C - - - - - 0x01EB21 07:EB11: D0 0C     BNE bra_EB1F
C - - - - - 0x01EB23 07:EB13: C8        INY
C - - - - - 0x01EB24 07:EB14: C0 07     CPY #$07
C - - - - - 0x01EB26 07:EB16: D0 F6     BNE bra_EB0E_loop
C - - - - - 0x01EB28 07:EB18: A9 22     LDA #$22
C - - - - - 0x01EB2A 07:EB1A: 8D 89 07  STA ram_ppu_buffer + $09
C - - - - - 0x01EB2D 07:EB1D: D0 13     BNE bra_EB32   ; jmp
bra_EB1F:
bra_EB1F_loop:
C - - - - - 0x01EB2F 07:EB1F: B9 00 05  LDA ram_score_total,Y
C - - - - - 0x01EB32 07:EB22: D0 04     BNE bra_EB28
C - - - - - 0x01EB34 07:EB24: A9 22     LDA #$22
C - - - - - 0x01EB36 07:EB26: D0 02     BNE bra_EB2A   ; jmp
bra_EB28:
C - - - - - 0x01EB38 07:EB28: 09 30     ORA #$30
bra_EB2A:
C - - - - - 0x01EB3A 07:EB2A: 99 83 07  STA ram_ppu_buffer + $03,Y
C - - - - - 0x01EB3D 07:EB2D: C8        INY
C - - - - - 0x01EB3E 07:EB2E: C0 07     CPY #$07
C - - - - - 0x01EB40 07:EB30: D0 ED     BNE bra_EB1F_loop
bra_EB32:
C - - - - - 0x01EB42 07:EB32: AD 80 07  LDA ram_ppu_buffer
C - - - - - 0x01EB45 07:EB35: 05 03     ORA ram_0003
C - - - - - 0x01EB47 07:EB37: 8D 80 07  STA ram_ppu_buffer
C - - - - - 0x01EB4A 07:EB3A: 20 CB C0  JSR sub_C0CB_write_buffer_to_ppu
C - - - - - 0x01EB4D 07:EB3D: A2 0B     LDX #con_C2C4_0B
C - - - - - 0x01EB4F 07:EB3F: 20 6B C2  JSR sub_C26B_write_chr_to_ppu
C - - - - - 0x01EB52 07:EB42: A2 07     LDX #$07
bra_EB44_loop:
C - - - - - 0x01EB54 07:EB44: BD 20 06  LDA ram_pal_buffer_2,X
C - - - - - 0x01EB57 07:EB47: 9D E8 07  STA ram_07E8_unk,X
C - - - - - 0x01EB5A 07:EB4A: BD 94 EC  LDA tbl_EC94_palette,X
C - - - - - 0x01EB5D 07:EB4D: 9D 20 06  STA ram_pal_buffer_2,X
C - - - - - 0x01EB60 07:EB50: CA        DEX
C - - - - - 0x01EB61 07:EB51: 10 F1     BPL bra_EB44_loop
C - - - - - 0x01EB63 07:EB53: A9 00     LDA #$00
C - - - - - 0x01EB65 07:EB55: 85 FC     STA ram_scroll_X_lo
C - - - - - 0x01EB67 07:EB57: 85 FA     STA ram_scroll_Y_lo
C - - - - - 0x01EB69 07:EB59: A0 07     LDY #$07
bra_EB5B_loop:
C - - - - - 0x01EB6B 07:EB5B: 99 10 04  STA ram_0410_unk,Y
C - - - - - 0x01EB6E 07:EB5E: 99 28 04  STA ram_0428_unk,Y
C - - - - - 0x01EB71 07:EB61: 99 58 04  STA ram_0458_unk,Y
C - - - - - 0x01EB74 07:EB64: 88        DEY
C - - - - - 0x01EB75 07:EB65: 10 F4     BPL bra_EB5B_loop
C - - - - - 0x01EB77 07:EB67: 20 0E C1  JSR sub_C10E
C - - - - - 0x01EB7A 07:EB6A: 20 AD FF  JSR sub_FFAD
C - - - - - 0x01EB7D 07:EB6D: 20 E6 C1  JSR sub_C1E6
loc_EB70:
C D 3 - - - 0x01EB80 07:EB70: A5 14     LDA ram_btn_press
C - - - - - 0x01EB82 07:EB72: 29 10     AND #con_btn_Start
C - - - - - 0x01EB84 07:EB74: D0 09     BNE bra_EB7F
C - - - - - 0x01EB86 07:EB76: 20 02 EC  JSR sub_EC02
C - - - - - 0x01EB89 07:EB79: 20 AD FF  JSR sub_FFAD
C - - - - - 0x01EB8C 07:EB7C: 4C 70 EB  JMP loc_EB70
bra_EB7F:
C - - - - - 0x01EB8F 07:EB7F: A9 1C     LDA #con_sfx_pause_menu
C - - - - - 0x01EB91 07:EB81: 20 A0 FC  JSR sub_FCA0_play_sfx
C - - - - - 0x01EB94 07:EB84: 20 EC C1  JSR sub_C1EC
C - - - - - 0x01EB97 07:EB87: A9 04     LDA #$04
C - - - - - 0x01EB99 07:EB89: 85 97     STA ram_spr_index
C - - - - - 0x01EB9B 07:EB8B: 20 BC C1  JSR sub_C1BC_hide_unused_sprites
C - - - - - 0x01EB9E 07:EB8E: 20 AD FF  JSR sub_FFAD
C - - - - - 0x01EBA1 07:EB91: 20 04 C1  JSR sub_C104
C - - - - - 0x01EBA4 07:EB94: A5 50     LDA ram_substage
C - - - - - 0x01EBA6 07:EB96: 29 C0     AND #$C0
C - - - - - 0x01EBA8 07:EB98: F0 0C     BEQ bra_EBA6_horisontal
; if vertical
C - - - - - 0x01EBAA 07:EB9A: A5 2E     LDA ram_002E
C - - - - - 0x01EBAC 07:EB9C: 85 20     STA ram_0020
C - - - - - 0x01EBAE 07:EB9E: AD 40 03  LDA ram_pos_X_hi
C - - - - - 0x01EBB1 07:EBA1: 49 01     EOR #$01
C - - - - - 0x01EBB3 07:EBA3: 4C B2 EB  JMP loc_EBB2
bra_EBA6_horisontal:
C - - - - - 0x01EBB6 07:EBA6: AD 40 03  LDA ram_pos_X_hi
C - - - - - 0x01EBB9 07:EBA9: 18        CLC
C - - - - - 0x01EBBA 07:EBAA: 6D 70 03  ADC ram_pos_Y_hi
C - - - - - 0x01EBBD 07:EBAD: 85 20     STA ram_0020
C - - - - - 0x01EBBF 07:EBAF: AD 40 03  LDA ram_pos_X_hi
loc_EBB2:
C D 3 - - - 0x01EBC2 07:EBB2: 29 01     AND #$01
C - - - - - 0x01EBC4 07:EBB4: 4A        LSR
C - - - - - 0x01EBC5 07:EBB5: 6A        ROR
C - - - - - 0x01EBC6 07:EBB6: 6A        ROR
C - - - - - 0x01EBC7 07:EBB7: 29 40     AND #$40
C - - - - - 0x01EBC9 07:EBB9: 85 22     STA ram_0022
C - - - - - 0x01EBCB 07:EBBB: A9 01     LDA #$01
C - - - - - 0x01EBCD 07:EBBD: 85 27     STA ram_0027
bra_EBBF_loop:
C - - - - - 0x01EBCF 07:EBBF: A9 01     LDA #$01
C - - - - - 0x01EBD1 07:EBC1: 85 01     STA ram_0001
C - - - - - 0x01EBD3 07:EBC3: 20 BD D6  JSR sub_D6BD
C - - - - - 0x01EBD6 07:EBC6: 20 CB C0  JSR sub_C0CB_write_buffer_to_ppu
C - - - - - 0x01EBD9 07:EBC9: A5 22     LDA ram_0022
C - - - - - 0x01EBDB 07:EBCB: 29 3F     AND #$3F
C - - - - - 0x01EBDD 07:EBCD: D0 F0     BNE bra_EBBF_loop
C - - - - - 0x01EBDF 07:EBCF: A2 0C     LDX #con_C2C4_0C
C - - - - - 0x01EBE1 07:EBD1: 20 6B C2  JSR sub_C26B_write_chr_to_ppu
; con_C2C4_10  con_C2C4_11  con_C2C4_12  con_C2C4_13  con_C2C4_14
C - - - - - 0x01EBE4 07:EBD4: A5 E9     LDA ram_stage
C - - - - - 0x01EBE6 07:EBD6: 09 10     ORA #$10
C - - - - - 0x01EBE8 07:EBD8: AA        TAX
C - - - - - 0x01EBE9 07:EBD9: 20 6B C2  JSR sub_C26B_write_chr_to_ppu
C - - - - - 0x01EBEC 07:EBDC: A2 07     LDX #$07
bra_EBDE_loop:
C - - - - - 0x01EBEE 07:EBDE: BD E8 07  LDA ram_07E8_unk,X
C - - - - - 0x01EBF1 07:EBE1: 9D 20 06  STA ram_pal_buffer_2,X
C - - - - - 0x01EBF4 07:EBE4: CA        DEX
C - - - - - 0x01EBF5 07:EBE5: 10 F7     BPL bra_EBDE_loop
C - - - - - 0x01EBF7 07:EBE7: 68        PLA
C - - - - - 0x01EBF8 07:EBE8: 85 FA     STA ram_scroll_Y_lo
C - - - - - 0x01EBFA 07:EBEA: 68        PLA
C - - - - - 0x01EBFB 07:EBEB: 85 FD     STA ram_scroll_X_hi
C - - - - - 0x01EBFD 07:EBED: 68        PLA
C - - - - - 0x01EBFE 07:EBEE: 85 FC     STA ram_scroll_X_lo
C - - - - - 0x01EC00 07:EBF0: 68        PLA
C - - - - - 0x01EC01 07:EBF1: 85 20     STA ram_0020
C - - - - - 0x01EC03 07:EBF3: 68        PLA
C - - - - - 0x01EC04 07:EBF4: 85 27     STA ram_0027
C - - - - - 0x01EC06 07:EBF6: 68        PLA
C - - - - - 0x01EC07 07:EBF7: 85 22     STA ram_0022
C - - - - - 0x01EC09 07:EBF9: 20 0E C1  JSR sub_C10E
C - - - - - 0x01EC0C 07:EBFC: 20 AD FF  JSR sub_FFAD
C - - - - - 0x01EC0F 07:EBFF: 4C E6 C1  JMP loc_C1E6



sub_EC02:
C - - - - - 0x01EC12 07:EC02: A0 07     LDY #$07
bra_EC04_loop:
C - - - - - 0x01EC14 07:EC04: B9 78 EC  LDA tbl_EC78,Y
C - - - - - 0x01EC17 07:EC07: 99 40 04  STA ram_0440_unk,Y
C - - - - - 0x01EC1A 07:EC0A: A9 00     LDA #$00
C - - - - - 0x01EC1C 07:EC0C: 99 10 04  STA ram_0410_unk,Y
C - - - - - 0x01EC1F 07:EC0F: 88        DEY
C - - - - - 0x01EC20 07:EC10: 10 F2     BPL bra_EC04_loop
C - - - - - 0x01EC22 07:EC12: A4 3D     LDY ram_weapon_power
C - - - - - 0x01EC24 07:EC14: B9 90 EC  LDA tbl_EC90,Y
C - - - - - 0x01EC27 07:EC17: 8D 41 04  STA ram_0440_unk + $01
C - - - - - 0x01EC2A 07:EC1A: A9 80     LDA #$80
C - - - - - 0x01EC2C 07:EC1C: 8D 10 04  STA ram_0410_unk
C - - - - - 0x01EC2F 07:EC1F: 8D 11 04  STA ram_0410_unk + $01
C - - - - - 0x01EC32 07:EC22: A4 3D     LDY ram_weapon_power
C - - - - - 0x01EC34 07:EC24: F0 06     BEQ bra_EC2C
bra_EC26_loop:
C - - - - - 0x01EC36 07:EC26: 99 11 04  STA ram_0410_unk + $01,Y
C - - - - - 0x01EC39 07:EC29: 88        DEY
C - - - - - 0x01EC3A 07:EC2A: D0 FA     BNE bra_EC26_loop
bra_EC2C:
C - - - - - 0x01EC3C 07:EC2C: A4 3E     LDY ram_weapon_range
C - - - - - 0x01EC3E 07:EC2E: F0 06     BEQ bra_EC36
bra_EC30_loop:
C - - - - - 0x01EC40 07:EC30: 99 14 04  STA ram_0410_unk + $04,Y
C - - - - - 0x01EC43 07:EC33: 88        DEY
C - - - - - 0x01EC44 07:EC34: D0 FA     BNE bra_EC30_loop
bra_EC36:
C - - - - - 0x01EC46 07:EC36: A9 04     LDA #$04    ; con_prg_bank + $04
C - - - - - 0x01EC48 07:EC38: 85 97     STA ram_spr_index
C - - - - - 0x01EC4A 07:EC3A: 20 CD FF  JSR sub_FFCD_prg_bankswitch
C - - - - - 0x01EC4D 07:EC3D: 20 BC C1  JSR sub_C1BC_hide_unused_sprites
C - - - - - 0x01EC50 07:EC40: A2 10     LDX #$10
C - - - - - 0x01EC52 07:EC42: 86 96     STX ram_0096
bra_EC44_loop:
C - - - - - 0x01EC54 07:EC44: BD 00 04  LDA ram_0400_obj,X
C - - - - - 0x01EC57 07:EC47: 10 13     BPL bra_EC5C
C - - - - - 0x01EC59 07:EC49: A9 00     LDA #$00
C - - - - - 0x01EC5B 07:EC4B: 85 10     STA ram_0010
C - - - - - 0x01EC5D 07:EC4D: 85 11     STA ram_0011
C - - - - - 0x01EC5F 07:EC4F: BD 70 EC  LDA tbl_EC80 - $10,X
C - - - - - 0x01EC62 07:EC52: 85 12     STA ram_0012
C - - - - - 0x01EC64 07:EC54: BD 78 EC  LDA tbl_EC88 - $10,X
C - - - - - 0x01EC67 07:EC57: 85 13     STA ram_0013
C - - - - - 0x01EC69 07:EC59: 20 00 80  JSR sub_0x010010
bra_EC5C:
C - - - - - 0x01EC6C 07:EC5C: E6 96     INC ram_0096
C - - - - - 0x01EC6E 07:EC5E: A6 96     LDX ram_0096
C - - - - - 0x01EC70 07:EC60: E0 18     CPX #$18
C - - - - - 0x01EC72 07:EC62: D0 E0     BNE bra_EC44_loop
C - - - - - 0x01EC74 07:EC64: 60        RTS



tbl_EC65_ppu_data:
- D 3 - - - 0x01EC75 07:EC65: 20 AB     .dbyt $20AB
- D 3 - - - 0x01EC77 07:EC67: 0E        .byte $0E   ; 
- D 3 - - - 0x01EC78 07:EC68: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $3F, $00   ; 

- D 3 - - - 0x01EC87 07:EC77: FF        .byte $FF   ; end token



tbl_EC78:
- D 3 - - - 0x01EC88 07:EC78: 48        .byte $48   ; 00
- D 3 - - - 0x01EC89 07:EC79: 00        .byte $00   ; 01
- D 3 - - - 0x01EC8A 07:EC7A: 4A        .byte $4A   ; 02
- D 3 - - - 0x01EC8B 07:EC7B: 4A        .byte $4A   ; 03
- D 3 - - - 0x01EC8C 07:EC7C: 4A        .byte $4A   ; 04
- D 3 - - - 0x01EC8D 07:EC7D: 4B        .byte $4B   ; 05
- D 3 - - - 0x01EC8E 07:EC7E: 4B        .byte $4B   ; 06
- D 3 - - - 0x01EC8F 07:EC7F: 4B        .byte $4B   ; 07



tbl_EC80:
- D 3 - - - 0x01EC90 07:EC80: 28        .byte $28   ; 10
- D 3 - - - 0x01EC91 07:EC81: AC        .byte $AC   ; 11
- D 3 - - - 0x01EC92 07:EC82: A4        .byte $A4   ; 12
- D 3 - - - 0x01EC93 07:EC83: A4        .byte $A4   ; 13
- D 3 - - - 0x01EC94 07:EC84: A4        .byte $A4   ; 14
- D 3 - - - 0x01EC95 07:EC85: C4        .byte $C4   ; 15
- D 3 - - - 0x01EC96 07:EC86: C4        .byte $C4   ; 16
- D 3 - - - 0x01EC97 07:EC87: C4        .byte $C4   ; 17



tbl_EC88:
- D 3 - - - 0x01EC98 07:EC88: B8        .byte $B8   ; 10
- D 3 - - - 0x01EC99 07:EC89: CC        .byte $CC   ; 11
- D 3 - - - 0x01EC9A 07:EC8A: 70        .byte $70   ; 12
- D 3 - - - 0x01EC9B 07:EC8B: 88        .byte $88   ; 13
- D 3 - - - 0x01EC9C 07:EC8C: A0        .byte $A0   ; 14
- D 3 - - - 0x01EC9D 07:EC8D: 70        .byte $70   ; 15
- D 3 - - - 0x01EC9E 07:EC8E: 88        .byte $88   ; 16
- D 3 - - - 0x01EC9F 07:EC8F: A0        .byte $A0   ; 17



tbl_EC90:
- D 3 - - - 0x01ECA0 07:EC90: 17        .byte $17   ; 00
- D 3 - - - 0x01ECA1 07:EC91: 12        .byte $12   ; 01
- D 3 - - - 0x01ECA2 07:EC92: 18        .byte $18   ; 02
- D 3 - - - 0x01ECA3 07:EC93: 19        .byte $19   ; 03



tbl_EC94_palette:
- D 3 - - - 0x01ECA4 07:EC94: 0F        .byte $0F, $20, $21, $11   ; 
- D 3 - - - 0x01ECA8 07:EC98: 0F        .byte $0F, $37, $16, $34   ; 



loc_EC9C:
C D 3 - - - 0x01ECAC 07:EC9C: A9 00     LDA #$00
C - - - - - 0x01ECAE 07:EC9E: 85 EE     STA ram_00EE
C - - - - - 0x01ECB0 07:ECA0: 20 EC C1  JSR sub_C1EC
C - - - - - 0x01ECB3 07:ECA3: A9 04     LDA #$04
C - - - - - 0x01ECB5 07:ECA5: 85 97     STA ram_spr_index
C - - - - - 0x01ECB7 07:ECA7: 20 BC C1  JSR sub_C1BC_hide_unused_sprites
C - - - - - 0x01ECBA 07:ECAA: 20 AD FF  JSR sub_FFAD
C - - - - - 0x01ECBD 07:ECAD: 20 04 C1  JSR sub_C104
C - - - - - 0x01ECC0 07:ECB0: A9 20     LDA #$20    ; ppu hi
C - - - - - 0x01ECC2 07:ECB2: A2 00     LDX #$00    ; tile id
C - - - - - 0x01ECC4 07:ECB4: A0 00     LDY #$00
C - - - - - 0x01ECC6 07:ECB6: 20 70 C1  JSR sub_C170
C - - - - - 0x01ECC9 07:ECB9: A9 06     LDA #con_prg_bank + $06
C - - - - - 0x01ECCB 07:ECBB: 20 CD FF  JSR sub_FFCD_prg_bankswitch
C - - - - - 0x01ECCE 07:ECBE: A2 02     LDX #$02    ; stage clear
C - - - - - 0x01ECD0 07:ECC0: 20 00 B0  JSR sub_0x01B010_draw_static_screen
C - - - - - 0x01ECD3 07:ECC3: A2 00     LDX #$00
C - - - - - 0x01ECD5 07:ECC5: 86 FC     STX ram_scroll_X_lo
C - - - - - 0x01ECD7 07:ECC7: 86 FD     STX ram_scroll_X_hi
C - - - - - 0x01ECD9 07:ECC9: 86 FA     STX ram_scroll_Y_lo
C - - - - - 0x01ECDB 07:ECCB: 86 FB     STX ram_scroll_Y_hi
bra_ECCD_loop:
C - - - - - 0x01ECDD 07:ECCD: BD 6B EF  LDA tbl_EF6B,X
C - - - - - 0x01ECE0 07:ECD0: 9D 80 07  STA ram_ppu_buffer,X
C - - - - - 0x01ECE3 07:ECD3: C9 FF     CMP #$FF
C - - - - - 0x01ECE5 07:ECD5: F0 03     BEQ bra_ECDA
C - - - - - 0x01ECE7 07:ECD7: E8        INX
C - - - - - 0x01ECE8 07:ECD8: D0 F3     BNE bra_ECCD_loop
bra_ECDA:
C - - - - - 0x01ECEA 07:ECDA: A5 B0     LDA ram_lives
C - - - - - 0x01ECEC 07:ECDC: D0 04     BNE bra_ECE2
- - - - - - 0x01ECEE 07:ECDE: A9 22     LDA #$22
- - - - - - 0x01ECF0 07:ECE0: D0 02     BNE bra_ECE4    ; jmp
bra_ECE2:
C - - - - - 0x01ECF2 07:ECE2: 09 30     ORA #$30
bra_ECE4:
C - - - - - 0x01ECF4 07:ECE4: 8D 91 07  STA ram_ppu_buffer + $11
C - - - - - 0x01ECF7 07:ECE7: A0 00     LDY #$00
bra_ECE9_loop:
C - - - - - 0x01ECF9 07:ECE9: B9 00 05  LDA ram_score_total,Y
C - - - - - 0x01ECFC 07:ECEC: D0 0C     BNE bra_ECFA
C - - - - - 0x01ECFE 07:ECEE: C8        INY
C - - - - - 0x01ECFF 07:ECEF: C0 07     CPY #$07
C - - - - - 0x01ED01 07:ECF1: D0 F6     BNE bra_ECE9_loop
C - - - - - 0x01ED03 07:ECF3: A9 22     LDA #$22
C - - - - - 0x01ED05 07:ECF5: 8D 89 07  STA ram_ppu_buffer + $09
C - - - - - 0x01ED08 07:ECF8: D0 13     BNE bra_ED0D   ; jmp
bra_ECFA:
bra_ECFA_loop:
C - - - - - 0x01ED0A 07:ECFA: B9 00 05  LDA ram_score_total,Y
C - - - - - 0x01ED0D 07:ECFD: F0 04     BEQ bra_ED03
C - - - - - 0x01ED0F 07:ECFF: 09 30     ORA #$30
C - - - - - 0x01ED11 07:ED01: D0 02     BNE bra_ED05   ; jmp
bra_ED03:
C - - - - - 0x01ED13 07:ED03: A9 22     LDA #$22
bra_ED05:
C - - - - - 0x01ED15 07:ED05: 99 83 07  STA ram_ppu_buffer + $03,Y
C - - - - - 0x01ED18 07:ED08: C8        INY
C - - - - - 0x01ED19 07:ED09: C0 07     CPY #$07
C - - - - - 0x01ED1B 07:ED0B: D0 ED     BNE bra_ECFA_loop
bra_ED0D:
C - - - - - 0x01ED1D 07:ED0D: A5 E9     LDA ram_stage
C - - - - - 0x01ED1F 07:ED0F: 0A        ASL
C - - - - - 0x01ED20 07:ED10: AA        TAX
C - - - - - 0x01ED21 07:ED11: BD BD EF  LDA tbl_EFBD,X
C - - - - - 0x01ED24 07:ED14: 8D 95 07  STA ram_ppu_buffer + $15
C - - - - - 0x01ED27 07:ED17: BD BE EF  LDA tbl_EFBD + $01,X
C - - - - - 0x01ED2A 07:ED1A: 8D 96 07  STA ram_ppu_buffer + $16
C - - - - - 0x01ED2D 07:ED1D: A2 00     LDX #$00
C - - - - - 0x01ED2F 07:ED1F: A0 1A     LDY #$1A
bra_ED21_loop:
C - - - - - 0x01ED31 07:ED21: B5 B2     LDA ram_items,X
C - - - - - 0x01ED33 07:ED23: F0 04     BEQ bra_ED29
C - - - - - 0x01ED35 07:ED25: 09 30     ORA #$30
C - - - - - 0x01ED37 07:ED27: D0 02     BNE bra_ED2B   ; jmp
bra_ED29:
C - - - - - 0x01ED39 07:ED29: A9 22     LDA #$22    ; 0 tile
bra_ED2B:
C - - - - - 0x01ED3B 07:ED2B: 99 84 07  STA ram_ppu_buffer + $04,Y
C - - - - - 0x01ED3E 07:ED2E: 98        TYA
C - - - - - 0x01ED3F 07:ED2F: 18        CLC
C - - - - - 0x01ED40 07:ED30: 69 0A     ADC #$0A
C - - - - - 0x01ED42 07:ED32: A8        TAY
C - - - - - 0x01ED43 07:ED33: E8        INX
C - - - - - 0x01ED44 07:ED34: E0 04     CPX #$04
C - - - - - 0x01ED46 07:ED36: D0 E9     BNE bra_ED21_loop
C - - - - - 0x01ED48 07:ED38: A2 00     LDX #$00
C - - - - - 0x01ED4A 07:ED3A: 86 00     STX ram_0000
C - - - - - 0x01ED4C 07:ED3C: A0 1A     LDY #$1A
bra_ED3E_loop:
C - - - - - 0x01ED4E 07:ED3E: BD 07 05  LDA ram_score_obj,X
C - - - - - 0x01ED51 07:ED41: F0 06     BEQ bra_ED49
C - - - - - 0x01ED53 07:ED43: E6 00     INC ram_0000
C - - - - - 0x01ED55 07:ED45: 09 30     ORA #$30
C - - - - - 0x01ED57 07:ED47: D0 06     BNE bra_ED4F   ; jmp
bra_ED49:
C - - - - - 0x01ED59 07:ED49: A5 00     LDA ram_0000
C - - - - - 0x01ED5B 07:ED4B: F0 02     BEQ bra_ED4F
C - - - - - 0x01ED5D 07:ED4D: A9 22     LDA #$22
bra_ED4F:
C - - - - - 0x01ED5F 07:ED4F: 99 86 07  STA ram_ppu_buffer + $06,Y
C - - - - - 0x01ED62 07:ED52: E8        INX
C - - - - - 0x01ED63 07:ED53: C8        INY
C - - - - - 0x01ED64 07:ED54: 8A        TXA
C - - - - - 0x01ED65 07:ED55: 29 03     AND #$03
C - - - - - 0x01ED67 07:ED57: D0 E5     BNE bra_ED3E_loop
C - - - - - 0x01ED69 07:ED59: A5 00     LDA ram_0000
C - - - - - 0x01ED6B 07:ED5B: D0 05     BNE bra_ED62
C - - - - - 0x01ED6D 07:ED5D: A9 22     LDA #$22
C - - - - - 0x01ED6F 07:ED5F: 99 85 07  STA ram_ppu_buffer + $05,Y
bra_ED62:
C - - - - - 0x01ED72 07:ED62: E0 10     CPX #$10
C - - - - - 0x01ED74 07:ED64: F0 0C     BEQ bra_ED72
C - - - - - 0x01ED76 07:ED66: A9 00     LDA #$00
C - - - - - 0x01ED78 07:ED68: 85 00     STA ram_0000
C - - - - - 0x01ED7A 07:ED6A: C8        INY
C - - - - - 0x01ED7B 07:ED6B: C8        INY
C - - - - - 0x01ED7C 07:ED6C: C8        INY
C - - - - - 0x01ED7D 07:ED6D: C8        INY
C - - - - - 0x01ED7E 07:ED6E: C8        INY
C - - - - - 0x01ED7F 07:ED6F: C8        INY
C - - - - - 0x01ED80 07:ED70: D0 CC     BNE bra_ED3E_loop
bra_ED72:
C - - - - - 0x01ED82 07:ED72: 20 CB C0  JSR sub_C0CB_write_buffer_to_ppu
C - - - - - 0x01ED85 07:ED75: A2 0B     LDX #con_C2C4_0B
C - - - - - 0x01ED87 07:ED77: 20 6B C2  JSR sub_C26B_write_chr_to_ppu
C - - - - - 0x01ED8A 07:ED7A: A9 0F     LDA #$0F
C - - - - - 0x01ED8C 07:ED7C: 8D 30 06  STA ram_pal_buffer_2 + $10
C - - - - - 0x01ED8F 07:ED7F: A9 20     LDA #$20
C - - - - - 0x01ED91 07:ED81: 8D 21 06  STA ram_pal_buffer_2 + $01
C - - - - - 0x01ED94 07:ED84: 20 0E C1  JSR sub_C10E
C - - - - - 0x01ED97 07:ED87: 20 AD FF  JSR sub_FFAD
C - - - - - 0x01ED9A 07:ED8A: 20 E6 C1  JSR sub_C1E6
C - - - - - 0x01ED9D 07:ED8D: A9 F0     LDA #con_sound_ctrl_F0
C - - - - - 0x01ED9F 07:ED8F: 20 A0 FC  JSR sub_FCA0_play_sfx
C - - - - - 0x01EDA2 07:ED92: E6 EE     INC ram_00EE
C - - - - - 0x01EDA4 07:ED94: 20 29 EF  JSR sub_EF29
C - - - - - 0x01EDA7 07:ED97: A9 00     LDA #$00
C - - - - - 0x01EDA9 07:ED99: 85 EE     STA ram_00EE
C - - - - - 0x01EDAB 07:ED9B: A2 B4     LDX #$B4
C - - - - - 0x01EDAD 07:ED9D: 20 A6 FF  JSR sub_FFA6
C - - - - - 0x01EDB0 07:EDA0: 20 C2 ED  JSR sub_EDC2
C - - - - - 0x01EDB3 07:EDA3: A9 00     LDA #$00
C - - - - - 0x01EDB5 07:EDA5: 85 B2     STA ram_item_fork
C - - - - - 0x01EDB7 07:EDA7: 85 B3     STA ram_item_pipe
C - - - - - 0x01EDB9 07:EDA9: 85 B4     STA ram_item_pearl_purple
C - - - - - 0x01EDBB 07:EDAB: 85 B5     STA ram_item_pearl_green
C - - - - - 0x01EDBD 07:EDAD: A2 78     LDX #$78
C - - - - - 0x01EDBF 07:EDAF: 20 A6 FF  JSR sub_FFA6
C - - - - - 0x01EDC2 07:EDB2: A9 0A     LDA #con_music_cutscene_2
C - - - - - 0x01EDC4 07:EDB4: 20 9E FC  JSR sub_FC9E_play_music
C - - - - - 0x01EDC7 07:EDB7: A5 E9     LDA ram_stage
C - - - - - 0x01EDC9 07:EDB9: 18        CLC
C - - - - - 0x01EDCA 07:EDBA: 69 08     ADC #$08
C - - - - - 0x01EDCC 07:EDBC: 20 CB EF  JSR sub_EFCB
C - - - - - 0x01EDCF 07:EDBF: 4C 08 C7  JMP loc_C708



sub_EDC2:
loc_EDC2:
C D 3 - - - 0x01EDD2 07:EDC2: A0 00     LDY #$00
C - - - - - 0x01EDD4 07:EDC4: 84 10     STY ram_0010
bra_EDC6_loop:
C - - - - - 0x01EDD6 07:EDC6: B9 95 07  LDA ram_ppu_buffer + $15,Y
C - - - - - 0x01EDD9 07:EDC9: D0 0A     BNE bra_EDD5
C - - - - - 0x01EDDB 07:EDCB: C8        INY
C - - - - - 0x01EDDC 07:EDCC: C0 03     CPY #$03
C - - - - - 0x01EDDE 07:EDCE: D0 F6     BNE bra_EDC6_loop
C - - - - - 0x01EDE0 07:EDD0: E6 10     INC ram_0010
C - - - - - 0x01EDE2 07:EDD2: 4C 28 EE  JMP loc_EE28
bra_EDD5:
bra_EDD5_loop:
C - - - - - 0x01EDE5 07:EDD5: B9 95 07  LDA ram_ppu_buffer + $15,Y
C - - - - - 0x01EDE8 07:EDD8: C9 22     CMP #$22
C - - - - - 0x01EDEA 07:EDDA: D0 04     BNE bra_EDE0
C - - - - - 0x01EDEC 07:EDDC: A9 00     LDA #$00
C - - - - - 0x01EDEE 07:EDDE: F0 02     BEQ bra_EDE2   ; jmp
bra_EDE0:
C - - - - - 0x01EDF0 07:EDE0: 29 0F     AND #$0F
bra_EDE2:
C - - - - - 0x01EDF2 07:EDE2: 99 95 07  STA ram_ppu_buffer + $15,Y
C - - - - - 0x01EDF5 07:EDE5: C8        INY
C - - - - - 0x01EDF6 07:EDE6: C0 05     CPY #$05
C - - - - - 0x01EDF8 07:EDE8: D0 EB     BNE bra_EDD5_loop
C - - - - - 0x01EDFA 07:EDEA: A0 02     LDY #$02
C - - - - - 0x01EDFC 07:EDEC: 18        CLC
bra_EDED_loop:
C - - - - - 0x01EDFD 07:EDED: B9 95 07  LDA ram_ppu_buffer + $15,Y
C - - - - - 0x01EE00 07:EDF0: E9 00     SBC #$00
C - - - - - 0x01EE02 07:EDF2: B0 02     BCS bra_EDF6
C - - - - - 0x01EE04 07:EDF4: A9 09     LDA #$09
bra_EDF6:
C - - - - - 0x01EE06 07:EDF6: 99 95 07  STA ram_ppu_buffer + $15,Y
C - - - - - 0x01EE09 07:EDF9: 88        DEY
C - - - - - 0x01EE0A 07:EDFA: 10 F1     BPL bra_EDED_loop
C - - - - - 0x01EE0C 07:EDFC: A0 00     LDY #$00
bra_EDFE_loop:
C - - - - - 0x01EE0E 07:EDFE: B9 95 07  LDA ram_ppu_buffer + $15,Y
C - - - - - 0x01EE11 07:EE01: D0 0F     BNE bra_EE12_loop
C - - - - - 0x01EE13 07:EE03: C8        INY
C - - - - - 0x01EE14 07:EE04: C0 03     CPY #$03
C - - - - - 0x01EE16 07:EE06: D0 F6     BNE bra_EDFE_loop
C - - - - - 0x01EE18 07:EE08: 8D 98 07  STA ram_ppu_buffer + $18
C - - - - - 0x01EE1B 07:EE0B: A9 22     LDA #$22
C - - - - - 0x01EE1D 07:EE0D: 8D 99 07  STA ram_ppu_buffer + $19
C - - - - - 0x01EE20 07:EE10: D0 13     BNE bra_EE25   ; jmp
bra_EE12_loop:
C - - - - - 0x01EE22 07:EE12: B9 95 07  LDA ram_ppu_buffer + $15,Y
C - - - - - 0x01EE25 07:EE15: F0 04     BEQ bra_EE1B
C - - - - - 0x01EE27 07:EE17: 09 30     ORA #$30
C - - - - - 0x01EE29 07:EE19: D0 02     BNE bra_EE1D   ; jmp
bra_EE1B:
C - - - - - 0x01EE2B 07:EE1B: A9 22     LDA #$22
bra_EE1D:
C - - - - - 0x01EE2D 07:EE1D: 99 95 07  STA ram_ppu_buffer + $15,Y
C - - - - - 0x01EE30 07:EE20: C8        INY
C - - - - - 0x01EE31 07:EE21: C0 05     CPY #$05
C - - - - - 0x01EE33 07:EE23: D0 ED     BNE bra_EE12_loop
bra_EE25:
C - - - - - 0x01EE35 07:EE25: 20 B9 EE  JSR sub_EEB9
loc_EE28:
C D 3 - - - 0x01EE38 07:EE28: A9 00     LDA #$00
C - - - - - 0x01EE3A 07:EE2A: 85 02     STA ram_0002
bra_EE2C_loop:
C - - - - - 0x01EE3C 07:EE2C: A5 02     LDA ram_0002
C - - - - - 0x01EE3E 07:EE2E: 0A        ASL
C - - - - - 0x01EE3F 07:EE2F: 0A        ASL
C - - - - - 0x01EE40 07:EE30: 85 03     STA ram_0003
C - - - - - 0x01EE42 07:EE32: AA        TAX
C - - - - - 0x01EE43 07:EE33: BD 07 05  LDA ram_score_obj,X
C - - - - - 0x01EE46 07:EE36: 1D 08 05  ORA ram_score_obj + $01,X
C - - - - - 0x01EE49 07:EE39: 1D 09 05  ORA ram_score_obj + $02,X
C - - - - - 0x01EE4C 07:EE3C: 1D 0A 05  ORA ram_score_obj + $03,X
C - - - - - 0x01EE4F 07:EE3F: D0 04     BNE bra_EE45
C - - - - - 0x01EE51 07:EE41: E6 10     INC ram_0010
C - - - - - 0x01EE53 07:EE43: D0 4E     BNE bra_EE93
bra_EE45:
C - - - - - 0x01EE55 07:EE45: A9 01     LDA #$01
C - - - - - 0x01EE57 07:EE47: 85 04     STA ram_0004
C - - - - - 0x01EE59 07:EE49: E8        INX
C - - - - - 0x01EE5A 07:EE4A: 18        CLC
bra_EE4B_loop:
C - - - - - 0x01EE5B 07:EE4B: BD 07 05  LDA ram_score_obj,X
C - - - - - 0x01EE5E 07:EE4E: E9 00     SBC #$00
C - - - - - 0x01EE60 07:EE50: B0 02     BCS bra_EE54
C - - - - - 0x01EE62 07:EE52: A9 09     LDA #$09
bra_EE54:
C - - - - - 0x01EE64 07:EE54: 9D 07 05  STA ram_score_obj,X
C - - - - - 0x01EE67 07:EE57: CA        DEX
C - - - - - 0x01EE68 07:EE58: C6 04     DEC ram_0004
C - - - - - 0x01EE6A 07:EE5A: 10 EF     BPL bra_EE4B_loop
C - - - - - 0x01EE6C 07:EE5C: B0 00     BCS bra_EE5E    ; bzk optimize, useless
bra_EE5E:
C - - - - - 0x01EE6E 07:EE5E: A6 02     LDX ram_0002
C - - - - - 0x01EE70 07:EE60: BC C7 EF  LDY tbl_EFC7,X
C - - - - - 0x01EE73 07:EE63: A6 03     LDX ram_0003
bra_EE65_loop:
C - - - - - 0x01EE75 07:EE65: BD 07 05  LDA ram_score_obj,X
C - - - - - 0x01EE78 07:EE68: D0 11     BNE bra_EE7B_loop
C - - - - - 0x01EE7A 07:EE6A: 99 80 07  STA ram_ppu_buffer,Y
C - - - - - 0x01EE7D 07:EE6D: C8        INY
C - - - - - 0x01EE7E 07:EE6E: E8        INX
C - - - - - 0x01EE7F 07:EE6F: 8A        TXA
C - - - - - 0x01EE80 07:EE70: 29 03     AND #$03
C - - - - - 0x01EE82 07:EE72: D0 F1     BNE bra_EE65_loop
C - - - - - 0x01EE84 07:EE74: A9 22     LDA #$22
C - - - - - 0x01EE86 07:EE76: 99 7F 07  STA ram_077F,Y
C - - - - - 0x01EE89 07:EE79: D0 15     BNE bra_EE90    ; jmp
bra_EE7B_loop:
C - - - - - 0x01EE8B 07:EE7B: BD 07 05  LDA ram_score_obj,X
C - - - - - 0x01EE8E 07:EE7E: F0 04     BEQ bra_EE84
C - - - - - 0x01EE90 07:EE80: 09 30     ORA #$30
C - - - - - 0x01EE92 07:EE82: D0 02     BNE bra_EE86   ; jmp
bra_EE84:
C - - - - - 0x01EE94 07:EE84: A9 22     LDA #$22
bra_EE86:
C - - - - - 0x01EE96 07:EE86: 99 80 07  STA ram_ppu_buffer,Y
C - - - - - 0x01EE99 07:EE89: C8        INY
C - - - - - 0x01EE9A 07:EE8A: E8        INX
C - - - - - 0x01EE9B 07:EE8B: 8A        TXA
C - - - - - 0x01EE9C 07:EE8C: 29 03     AND #$03
C - - - - - 0x01EE9E 07:EE8E: D0 EB     BNE bra_EE7B_loop
bra_EE90:
C - - - - - 0x01EEA0 07:EE90: 20 B9 EE  JSR sub_EEB9
bra_EE93:
C - - - - - 0x01EEA3 07:EE93: E6 02     INC ram_0002
C - - - - - 0x01EEA5 07:EE95: A5 02     LDA ram_0002
C - - - - - 0x01EEA7 07:EE97: C9 04     CMP #$04
C - - - - - 0x01EEA9 07:EE99: D0 91     BNE bra_EE2C_loop
C - - - - - 0x01EEAB 07:EE9B: 85 19     STA ram_0019
C - - - - - 0x01EEAD 07:EE9D: A9 1A     LDA #con_sfx_1A
C - - - - - 0x01EEAF 07:EE9F: 20 A0 FC  JSR sub_FCA0_play_sfx
C - - - - - 0x01EEB2 07:EEA2: A2 04     LDX #$04
C - - - - - 0x01EEB4 07:EEA4: A5 16     LDA ram_btn_hold
C - - - - - 0x01EEB6 07:EEA6: 29 80     AND #con_btn_A
C - - - - - 0x01EEB8 07:EEA8: F0 02     BEQ bra_EEAC
C - - - - - 0x01EEBA 07:EEAA: A2 01     LDX #$01
bra_EEAC:
C - - - - - 0x01EEBC 07:EEAC: 20 A6 FF  JSR sub_FFA6
C - - - - - 0x01EEBF 07:EEAF: A5 10     LDA ram_0010
C - - - - - 0x01EEC1 07:EEB1: C9 05     CMP #$05
C - - - - - 0x01EEC3 07:EEB3: F0 03     BEQ bra_EEB8_RTS
C - - - - - 0x01EEC5 07:EEB5: 4C C2 ED  JMP loc_EDC2
bra_EEB8_RTS:
C - - - - - 0x01EEC8 07:EEB8: 60        RTS



sub_EEB9:
C - - - - - 0x01EEC9 07:EEB9: A0 04     LDY #$04
C - - - - - 0x01EECB 07:EEBB: 38        SEC
bra_EEBC_loop:
C - - - - - 0x01EECC 07:EEBC: B9 00 05  LDA ram_score_total,Y
C - - - - - 0x01EECF 07:EEBF: 69 00     ADC #$00
C - - - - - 0x01EED1 07:EEC1: 99 00 05  STA ram_score_total,Y
C - - - - - 0x01EED4 07:EEC4: C0 02     CPY #$02
C - - - - - 0x01EED6 07:EEC6: D0 1B     BNE bra_EEE3
C - - - - - 0x01EED8 07:EEC8: 48        PHA
C - - - - - 0x01EED9 07:EEC9: 29 01     AND #$01
C - - - - - 0x01EEDB 07:EECB: D0 15     BNE bra_EEE2
C - - - - - 0x01EEDD 07:EECD: A5 B0     LDA ram_lives
C - - - - - 0x01EEDF 07:EECF: C9 09     CMP #$09
C - - - - - 0x01EEE1 07:EED1: F0 0F     BEQ bra_EEE2    ; if not overflow
C - - - - - 0x01EEE3 07:EED3: E6 B0     INC ram_lives
C - - - - - 0x01EEE5 07:EED5: A5 B0     LDA ram_lives
C - - - - - 0x01EEE7 07:EED7: D0 04     BNE bra_EEDD    ; jmp


; bzk garbage
; same code as 0x01ECEE and 0x01EB13
- - - - - - 0x01EEE9 07:EED9: A9 22     LDA #$22
- - - - - - 0x01EEEB 07:EEDB: D0 02     BNE bra_EEDF    ; jmp



bra_EEDD:
C - - - - - 0x01EEED 07:EEDD: 09 30     ORA #$30
bra_EEDF:
C - - - - - 0x01EEEF 07:EEDF: 8D 91 07  STA ram_ppu_buffer + $11
bra_EEE2:
C - - - - - 0x01EEF2 07:EEE2: 68        PLA
bra_EEE3:
C - - - - - 0x01EEF3 07:EEE3: C9 0A     CMP #$0A
C - - - - - 0x01EEF5 07:EEE5: 90 19     BCC bra_EF00
C - - - - - 0x01EEF7 07:EEE7: E9 0A     SBC #$0A
C - - - - - 0x01EEF9 07:EEE9: 99 00 05  STA ram_score_total,Y
C - - - - - 0x01EEFC 07:EEEC: 88        DEY
C - - - - - 0x01EEFD 07:EEED: 10 CD     BPL bra_EEBC_loop
; if score is maxed out
- - - - - - 0x01EEFF 07:EEEF: A9 09     LDA #$09
- - - - - - 0x01EF01 07:EEF1: 8D 00 05  STA ram_score_total
- - - - - - 0x01EF04 07:EEF4: 8D 01 05  STA ram_score_total + $01
- - - - - - 0x01EF07 07:EEF7: 8D 02 05  STA ram_score_total + $02
- - - - - - 0x01EF0A 07:EEFA: 8D 03 05  STA ram_score_total + $03
- - - - - - 0x01EF0D 07:EEFD: 8D 04 05  STA ram_score_total + $04
bra_EF00:
C - - - - - 0x01EF10 07:EF00: A0 00     LDY #$00
bra_EF02_loop:
C - - - - - 0x01EF12 07:EF02: B9 00 05  LDA ram_score_total,Y
C - - - - - 0x01EF15 07:EF05: D0 0E     BNE bra_EF15_loop
C - - - - - 0x01EF17 07:EF07: 99 83 07  STA ram_ppu_buffer + $03,Y
C - - - - - 0x01EF1A 07:EF0A: C8        INY
C - - - - - 0x01EF1B 07:EF0B: C0 07     CPY #$07
C - - - - - 0x01EF1D 07:EF0D: D0 F3     BNE bra_EF02_loop
- - - - - - 0x01EF1F 07:EF0F: A9 22     LDA #$22
- - - - - - 0x01EF21 07:EF11: 99 82 07  STA ram_ppu_buffer + $02,Y
- - - - - - 0x01EF24 07:EF14: 60        RTS
bra_EF15_loop:
C - - - - - 0x01EF25 07:EF15: B9 00 05  LDA ram_score_total,Y
C - - - - - 0x01EF28 07:EF18: F0 04     BEQ bra_EF1E
C - - - - - 0x01EF2A 07:EF1A: 09 30     ORA #$30
C - - - - - 0x01EF2C 07:EF1C: D0 02     BNE bra_EF20   ; jmp
bra_EF1E:
C - - - - - 0x01EF2E 07:EF1E: A9 22     LDA #$22
bra_EF20:
C - - - - - 0x01EF30 07:EF20: 99 83 07  STA ram_ppu_buffer + $03,Y
C - - - - - 0x01EF33 07:EF23: C8        INY
C - - - - - 0x01EF34 07:EF24: C0 07     CPY #$07
C - - - - - 0x01EF36 07:EF26: D0 ED     BNE bra_EF15_loop
C - - - - - 0x01EF38 07:EF28: 60        RTS



sub_EF29:
C - - - - - 0x01EF39 07:EF29: A0 04     LDY #$04
bra_EF2B_loop:
C - - - - - 0x01EF3B 07:EF2B: B9 AE EF  LDA tbl_EFAE,Y
C - - - - - 0x01EF3E 07:EF2E: 99 40 04  STA ram_0440_unk,Y
C - - - - - 0x01EF41 07:EF31: A9 80     LDA #$80
C - - - - - 0x01EF43 07:EF33: 99 10 04  STA ram_0410_unk,Y
C - - - - - 0x01EF46 07:EF36: A9 00     LDA #$00
C - - - - - 0x01EF48 07:EF38: 99 58 04  STA ram_0458_unk,Y
C - - - - - 0x01EF4B 07:EF3B: 99 28 04  STA ram_0428_unk,Y
C - - - - - 0x01EF4E 07:EF3E: 88        DEY
C - - - - - 0x01EF4F 07:EF3F: 10 EA     BPL bra_EF2B_loop
C - - - - - 0x01EF51 07:EF41: A9 04     LDA #$04    ; con_prg_bank + $04
C - - - - - 0x01EF53 07:EF43: 85 97     STA ram_spr_index
C - - - - - 0x01EF55 07:EF45: 20 CD FF  JSR sub_FFCD_prg_bankswitch
C - - - - - 0x01EF58 07:EF48: 20 BC C1  JSR sub_C1BC_hide_unused_sprites
; bzk I don't see a reason for a counter not being 00 by default (with corresponding changes)
C - - - - - 0x01EF5B 07:EF4B: A2 10     LDX #$10
C - - - - - 0x01EF5D 07:EF4D: 86 96     STX ram_0096
bra_EF4F_loop:
C - - - - - 0x01EF5F 07:EF4F: A9 00     LDA #$00
C - - - - - 0x01EF61 07:EF51: 85 10     STA ram_0010
C - - - - - 0x01EF63 07:EF53: 85 11     STA ram_0011
C - - - - - 0x01EF65 07:EF55: BD A3 EF  LDA tbl_EFB3 - $10,X
C - - - - - 0x01EF68 07:EF58: 85 12     STA ram_0012
C - - - - - 0x01EF6A 07:EF5A: BD A8 EF  LDA tbl_EFB8 - $10,X
C - - - - - 0x01EF6D 07:EF5D: 85 13     STA ram_0013
C - - - - - 0x01EF6F 07:EF5F: 20 00 80  JSR sub_0x010010
C - - - - - 0x01EF72 07:EF62: E6 96     INC ram_0096
C - - - - - 0x01EF74 07:EF64: A6 96     LDX ram_0096
C - - - - - 0x01EF76 07:EF66: E0 15     CPX #$15
C - - - - - 0x01EF78 07:EF68: D0 E5     BNE bra_EF4F_loop
C - - - - - 0x01EF7A 07:EF6A: 60        RTS



tbl_EF6B:
; counter is higher than string of bytes by 01
- D 3 - - - 0x01EF7B 07:EF6B: 20 AB     .dbyt $20AB
- D 3 - - - 0x01EF7D 07:EF6D: 0E        .byte $0E   ; counter
- D 3 - - - 0x01EF7E 07:EF6E: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $3F, $00   ; 

- D 3 - - - 0x01EF8D 07:EF7D: 21 8E     .dbyt $218E
- D 3 - - - 0x01EF8F 07:EF7F: 04        .byte $04   ; 
- D 3 - - - 0x01EF90 07:EF80: 00        .byte $00, $00, $22, $22, $22   ; 

- D 3 - - - 0x01EF95 07:EF85: 22 0E     .dbyt $220E
- D 3 - - - 0x01EF97 07:EF87: 06        .byte $06   ; 
- D 3 - - - 0x01EF98 07:EF88: 48        .byte $48, $00, $3F, $00, $00, $00, $00   ; 

- D 3 - - - 0x01EF9F 07:EF8F: 22 6E     .dbyt $226E
- D 3 - - - 0x01EFA1 07:EF91: 06        .byte $06   ; 
- D 3 - - - 0x01EFA2 07:EF92: 48        .byte $48, $00, $3F, $00, $00, $00, $00   ; 

- D 3 - - - 0x01EFA9 07:EF99: 22 CE     .dbyt $22CE
- D 3 - - - 0x01EFAB 07:EF9B: 06        .byte $06   ; 
- D 3 - - - 0x01EFAC 07:EF9C: 48        .byte $48, $00, $3F, $00, $00, $00, $00   ; 

- D 3 - - - 0x01EFB3 07:EFA3: 23 2E     .dbyt $232E
- D 3 - - - 0x01EFB5 07:EFA5: 06        .byte $06   ; 
- D 3 - - - 0x01EFB6 07:EFA6: 48        .byte $48, $00, $3F, $00, $00, $00, $00   ; 

- D 3 - - - 0x01EFBD 07:EFAD: FF        .byte $FF   ; end token



tbl_EFAE:
- D 3 - - - 0x01EFBE 07:EFAE: 48        .byte $48   ; 
- D 3 - - - 0x01EFBF 07:EFAF: 4C        .byte $4C   ; 
- D 3 - - - 0x01EFC0 07:EFB0: 4D        .byte $4D   ; 
- D 3 - - - 0x01EFC1 07:EFB1: 4A        .byte $4A   ; 
- D 3 - - - 0x01EFC2 07:EFB2: 4B        .byte $4B   ; 



tbl_EFB3:
- D 3 - - - 0x01EFC3 07:EFB3: 28        .byte $28   ; 10
- D 3 - - - 0x01EFC4 07:EFB4: 80        .byte $80   ; 11
- D 3 - - - 0x01EFC5 07:EFB5: 98        .byte $98   ; 12
- D 3 - - - 0x01EFC6 07:EFB6: B0        .byte $B0   ; 13
- D 3 - - - 0x01EFC7 07:EFB7: C8        .byte $C8   ; 14

tbl_EFB8:
- D 3 - - - 0x01EFC8 07:EFB8: B8        .byte $B8   ; 10
- D 3 - - - 0x01EFC9 07:EFB9: 68        .byte $68   ; 11
- D 3 - - - 0x01EFCA 07:EFBA: 68        .byte $68   ; 12
- D 3 - - - 0x01EFCB 07:EFBB: 68        .byte $68   ; 13
- D 3 - - - 0x01EFCC 07:EFBC: 68        .byte $68   ; 14



tbl_EFBD:
- D 3 - - - 0x01EFCD 07:EFBD: 00        .byte $00, $35   ; 00
- D 3 - - - 0x01EFCF 07:EFBF: 00        .byte $00, $36   ; 01
- D 3 - - - 0x01EFD1 07:EFC1: 00        .byte $00, $37   ; 02
- D 3 - - - 0x01EFD3 07:EFC3: 00        .byte $00, $38   ; 03
- D 3 - - - 0x01EFD5 07:EFC5: 31        .byte $31, $22   ; 04



tbl_EFC7:
- D 3 - - - 0x01EFD7 07:EFC7: 20        .byte $20   ; 00
- D 3 - - - 0x01EFD8 07:EFC8: 2A        .byte $2A   ; 01
- D 3 - - - 0x01EFD9 07:EFC9: 34        .byte $34   ; 02
- D 3 - - - 0x01EFDA 07:EFCA: 3E        .byte $3E   ; 03



sub_EFCB:
C - - - - - 0x01EFDB 07:EFCB: 85 54     STA ram_0054
C - - - - - 0x01EFDD 07:EFCD: A9 00     LDA #$00
C - - - - - 0x01EFDF 07:EFCF: 85 EE     STA ram_00EE
C - - - - - 0x01EFE1 07:EFD1: 20 EC C1  JSR sub_C1EC
C - - - - - 0x01EFE4 07:EFD4: A9 04     LDA #$04
C - - - - - 0x01EFE6 07:EFD6: 85 97     STA ram_spr_index
C - - - - - 0x01EFE8 07:EFD8: 20 BC C1  JSR sub_C1BC_hide_unused_sprites
C - - - - - 0x01EFEB 07:EFDB: 20 AD FF  JSR sub_FFAD
C - - - - - 0x01EFEE 07:EFDE: 20 04 C1  JSR sub_C104
C - - - - - 0x01EFF1 07:EFE1: A9 20     LDA #$20    ; ppu hi
C - - - - - 0x01EFF3 07:EFE3: A2 00     LDX #$00    ; tile id
C - - - - - 0x01EFF5 07:EFE5: A0 00     LDY #$00
C - - - - - 0x01EFF7 07:EFE7: 20 70 C1  JSR sub_C170
C - - - - - 0x01EFFA 07:EFEA: A9 06     LDA #con_prg_bank + $06
C - - - - - 0x01EFFC 07:EFEC: 20 CD FF  JSR sub_FFCD_prg_bankswitch
C - - - - - 0x01EFFF 07:EFEF: A5 54     LDA ram_0054
C - - - - - 0x01F001 07:EFF1: 18        CLC
C - - - - - 0x01F002 07:EFF2: 69 03     ADC #$03
C - - - - - 0x01F004 07:EFF4: AA        TAX
C - - - - - 0x01F005 07:EFF5: 20 00 B0  JSR sub_0x01B010_draw_static_screen
C - - - - - 0x01F008 07:EFF8: A9 04     LDA #con_prg_bank + $04
C - - - - - 0x01F00A 07:EFFA: 20 CD FF  JSR sub_FFCD_prg_bankswitch
C - - - - - 0x01F00D 07:EFFD: A6 54     LDX ram_0054
C - - - - - 0x01F00F 07:EFFF: BD 89 F2  LDA tbl_F289,X
; * 20
C - - - - - 0x01F012 07:F002: 0A        ASL
C - - - - - 0x01F013 07:F003: 0A        ASL
C - - - - - 0x01F014 07:F004: 0A        ASL
C - - - - - 0x01F015 07:F005: 0A        ASL
C - - - - - 0x01F016 07:F006: 0A        ASL
C - - - - - 0x01F017 07:F007: A8        TAY
; 08 * 20 = 100, will be reading from the next page
C - - - - - 0x01F018 07:F008: A9 00     LDA #$00
C - - - - - 0x01F01A 07:F00A: 69 B0     ADC #> tbl_0x013010_palette
C - - - - - 0x01F01C 07:F00C: 85 01     STA ram_0001
C - - - - - 0x01F01E 07:F00E: A9 00     LDA #< tbl_0x013010_palette
C - - - - - 0x01F020 07:F010: 85 00     STA ram_0000
C - - - - - 0x01F022 07:F012: A2 00     LDX #$00
C - - - - - 0x01F024 07:F014: 86 FC     STX ram_scroll_X_lo
C - - - - - 0x01F026 07:F016: 86 FA     STX ram_scroll_Y_lo
C - - - - - 0x01F028 07:F018: 86 FD     STX ram_scroll_X_hi
C - - - - - 0x01F02A 07:F01A: 86 FB     STX ram_scroll_Y_hi
C - - - - - 0x01F02C 07:F01C: 86 5A     STX ram_005A
bra_F01E_loop:
C - - - - - 0x01F02E 07:F01E: B1 00     LDA (ram_0000),Y
C - - - - - 0x01F030 07:F020: 9D 20 06  STA ram_pal_buffer_2,X
C - - - - - 0x01F033 07:F023: C8        INY
C - - - - - 0x01F034 07:F024: E8        INX
C - - - - - 0x01F035 07:F025: E0 20     CPX #$20
C - - - - - 0x01F037 07:F027: D0 F5     BNE bra_F01E_loop
C - - - - - 0x01F039 07:F029: A6 54     LDX ram_0054
C - - - - - 0x01F03B 07:F02B: BC 96 F2  LDY tbl_F296,X
C - - - - - 0x01F03E 07:F02E: 30 21     BMI bra_F051
C - - - - - 0x01F040 07:F030: 20 20 B1  JSR sub_0x013130
C - - - - - 0x01F043 07:F033: A0 00     LDY #$00
bra_F035_loop:
C - - - - - 0x01F045 07:F035: B1 00     LDA (ram_0000),Y
C - - - - - 0x01F047 07:F037: F0 18     BEQ bra_F051
C - - - - - 0x01F049 07:F039: 99 00 02  STA ram_spr_Y,Y
C - - - - - 0x01F04C 07:F03C: C8        INY
C - - - - - 0x01F04D 07:F03D: B1 00     LDA (ram_0000),Y
C - - - - - 0x01F04F 07:F03F: 99 00 02  STA ram_spr_T - $01,Y
C - - - - - 0x01F052 07:F042: C8        INY
C - - - - - 0x01F053 07:F043: B1 00     LDA (ram_0000),Y
C - - - - - 0x01F055 07:F045: 99 00 02  STA ram_spr_A - $02,Y
C - - - - - 0x01F058 07:F048: C8        INY
C - - - - - 0x01F059 07:F049: B1 00     LDA (ram_0000),Y
C - - - - - 0x01F05B 07:F04B: 99 00 02  STA ram_spr_X - $03,Y
C - - - - - 0x01F05E 07:F04E: C8        INY
C - - - - - 0x01F05F 07:F04F: D0 E4     BNE bra_F035_loop
bra_F051:
C - - - - - 0x01F061 07:F051: 84 55     STY ram_0055
C - - - - - 0x01F063 07:F053: 84 97     STY ram_spr_index
C - - - - - 0x01F065 07:F055: A4 54     LDY ram_0054
C - - - - - 0x01F067 07:F057: BE 7C F2  LDX tbl_F27C,Y
C - - - - - 0x01F06A 07:F05A: 20 6B C2  JSR sub_C26B_write_chr_to_ppu
C - - - - - 0x01F06D 07:F05D: 20 0E C1  JSR sub_C10E
C - - - - - 0x01F070 07:F060: 20 AD FF  JSR sub_FFAD
C - - - - - 0x01F073 07:F063: A9 00     LDA #$00
C - - - - - 0x01F075 07:F065: AA        TAX
bra_F066_loop:
C - - - - - 0x01F076 07:F066: 9D 28 04  STA ram_0428_unk,X  ; including ram_0430_obj
C - - - - - 0x01F079 07:F069: 9D 58 04  STA ram_0458_unk,X  ; including ram_0460_obj
C - - - - - 0x01F07C 07:F06C: E8        INX
C - - - - - 0x01F07D 07:F06D: E0 18     CPX #$18
C - - - - - 0x01F07F 07:F06F: D0 F5     BNE bra_F066_loop
C - - - - - 0x01F081 07:F071: 20 9C F0  JSR sub_F09C
C - - - - - 0x01F084 07:F074: A5 54     LDA ram_0054
C - - - - - 0x01F086 07:F076: C9 05     CMP #$05
C - - - - - 0x01F088 07:F078: D0 0A     BNE bra_F084
C - - - - - 0x01F08A 07:F07A: A2 78     LDX #$78
C - - - - - 0x01F08C 07:F07C: 20 A6 FF  JSR sub_FFA6
C - - - - - 0x01F08F 07:F07F: A9 00     LDA #con_music_title_screen
C - - - - - 0x01F091 07:F081: 20 9E FC  JSR sub_FC9E_play_music
bra_F084:
C - - - - - 0x01F094 07:F084: 20 E6 C1  JSR sub_C1E6
C - - - - - 0x01F097 07:F087: 20 30 F1  JSR sub_F130
C - - - - - 0x01F09A 07:F08A: A9 5A     LDA #$5A
C - - - - - 0x01F09C 07:F08C: 85 0D     STA ram_000D
bra_F08E_loop:
C - - - - - 0x01F09E 07:F08E: A5 16     LDA ram_btn_hold
C - - - - - 0x01F0A0 07:F090: 29 10     AND #con_btn_Start
C - - - - - 0x01F0A2 07:F092: D0 07     BNE bra_F09B_RTS
C - - - - - 0x01F0A4 07:F094: 20 9C F0  JSR sub_F09C
C - - - - - 0x01F0A7 07:F097: C6 0D     DEC ram_000D
C - - - - - 0x01F0A9 07:F099: D0 F3     BNE bra_F08E_loop
bra_F09B_RTS:
C - - - - - 0x01F0AB 07:F09B: 60        RTS



sub_F09C:
C - - - - - 0x01F0AC 07:F09C: 86 0E     STX ram_000E
C - - - - - 0x01F0AE 07:F09E: 84 0F     STY ram_000F
C - - - - - 0x01F0B0 07:F0A0: A6 54     LDX ram_0054
C - - - - - 0x01F0B2 07:F0A2: BD A3 F2  LDA tbl_F2A3,X
C - - - - - 0x01F0B5 07:F0A5: F0 7C     BEQ bra_F123
C - - - - - 0x01F0B7 07:F0A7: 85 08     STA ram_0008
C - - - - - 0x01F0B9 07:F0A9: BC B0 F2  LDY tbl_F2B0,X
C - - - - - 0x01F0BC 07:F0AC: 84 09     STY ram_0009
C - - - - - 0x01F0BE 07:F0AE: E0 05     CPX #$05
C - - - - - 0x01F0C0 07:F0B0: D0 10     BNE bra_F0C2
C - - - - - 0x01F0C2 07:F0B2: AD 28 04  LDA ram_0428_unk
C - - - - - 0x01F0C5 07:F0B5: C9 07     CMP #$07
C - - - - - 0x01F0C7 07:F0B7: 90 09     BCC bra_F0C2
C - - - - - 0x01F0C9 07:F0B9: AD 29 04  LDA ram_0428_unk + $01
C - - - - - 0x01F0CC 07:F0BC: C9 05     CMP #$05
C - - - - - 0x01F0CE 07:F0BE: B0 02     BCS bra_F0C2
C - - - - - 0x01F0D0 07:F0C0: E6 08     INC ram_0008
bra_F0C2:
C - - - - - 0x01F0D2 07:F0C2: A2 00     LDX #$00
bra_F0C4_loop:
C - - - - - 0x01F0D4 07:F0C4: B9 BD F2  LDA tbl_F2BD,Y
C - - - - - 0x01F0D7 07:F0C7: 9D 40 04  STA ram_0440_unk,X
C - - - - - 0x01F0DA 07:F0CA: A9 80     LDA #$80
C - - - - - 0x01F0DC 07:F0CC: 9D 10 04  STA ram_0410_unk,X
C - - - - - 0x01F0DF 07:F0CF: C8        INY
C - - - - - 0x01F0E0 07:F0D0: E8        INX
C - - - - - 0x01F0E1 07:F0D1: E4 08     CPX ram_0008
C - - - - - 0x01F0E3 07:F0D3: D0 EF     BNE bra_F0C4_loop
C - - - - - 0x01F0E5 07:F0D5: A5 08     LDA ram_0008
C - - - - - 0x01F0E7 07:F0D7: 09 10     ORA #$10
C - - - - - 0x01F0E9 07:F0D9: 85 08     STA ram_0008
C - - - - - 0x01F0EB 07:F0DB: A9 04     LDA #con_prg_bank + $04
C - - - - - 0x01F0ED 07:F0DD: 20 CF FF  JSR sub_FFCF_prg_bankswitch
C - - - - - 0x01F0F0 07:F0E0: A5 55     LDA ram_0055
C - - - - - 0x01F0F2 07:F0E2: 85 97     STA ram_spr_index
C - - - - - 0x01F0F4 07:F0E4: 20 BC C1  JSR sub_C1BC_hide_unused_sprites
C - - - - - 0x01F0F7 07:F0E7: A2 10     LDX #$10
C - - - - - 0x01F0F9 07:F0E9: 86 96     STX ram_0096
bra_F0EB_loop:
C - - - - - 0x01F0FB 07:F0EB: A4 09     LDY ram_0009
C - - - - - 0x01F0FD 07:F0ED: A9 00     LDA #$00
C - - - - - 0x01F0FF 07:F0EF: 85 10     STA ram_0010
C - - - - - 0x01F101 07:F0F1: 85 11     STA ram_0011
C - - - - - 0x01F103 07:F0F3: B9 C7 F2  LDA tbl_F2C7,Y
C - - - - - 0x01F106 07:F0F6: 85 12     STA ram_0012
C - - - - - 0x01F108 07:F0F8: B9 D1 F2  LDA tbl_F2D1,Y
C - - - - - 0x01F10B 07:F0FB: 85 13     STA ram_0013
C - - - - - 0x01F10D 07:F0FD: 20 00 80  JSR sub_0x010010
C - - - - - 0x01F110 07:F100: A6 96     LDX ram_0096
C - - - - - 0x01F112 07:F102: BD 30 04  LDA ram_0430_obj,X
C - - - - - 0x01F115 07:F105: C9 1B     CMP #$1B
C - - - - - 0x01F117 07:F107: D0 10     BNE bra_F119
C - - - - - 0x01F119 07:F109: A5 5A     LDA ram_005A
C - - - - - 0x01F11B 07:F10B: F0 07     BEQ bra_F114
C - - - - - 0x01F11D 07:F10D: BD 18 04  LDA ram_animation_cnt,X
C - - - - - 0x01F120 07:F110: C9 09     CMP #$09
C - - - - - 0x01F122 07:F112: D0 05     BNE bra_F119
bra_F114:
C - - - - - 0x01F124 07:F114: A9 00     LDA #$00
C - - - - - 0x01F126 07:F116: 9D 48 04  STA ram_0448,X
bra_F119:
C - - - - - 0x01F129 07:F119: E6 96     INC ram_0096
C - - - - - 0x01F12B 07:F11B: E6 09     INC ram_0009
C - - - - - 0x01F12D 07:F11D: A6 96     LDX ram_0096
C - - - - - 0x01F12F 07:F11F: E4 08     CPX ram_0008
C - - - - - 0x01F131 07:F121: D0 C8     BNE bra_F0EB_loop
bra_F123:
C - - - - - 0x01F133 07:F123: 20 AD FF  JSR sub_FFAD
C - - - - - 0x01F136 07:F126: A5 9B     LDA ram_009B    ; con_prg_bank + $00 01 02
C - - - - - 0x01F138 07:F128: 20 CD FF  JSR sub_FFCD_prg_bankswitch
C - - - - - 0x01F13B 07:F12B: A6 0E     LDX ram_000E
C - - - - - 0x01F13D 07:F12D: A4 0F     LDY ram_000F
C - - - - - 0x01F13F 07:F12F: 60        RTS



sub_F130:
C - - - - - 0x01F140 07:F130: A9 00     LDA #$00    ; con_prg_bank + $00
C - - - - - 0x01F142 07:F132: 85 56     STA ram_0056
C - - - - - 0x01F144 07:F134: 85 57     STA ram_0057
C - - - - - 0x01F146 07:F136: 20 CD FF  JSR sub_FFCD_prg_bankswitch
C - - - - - 0x01F149 07:F139: A6 54     LDX ram_0054
C - - - - - 0x01F14B 07:F13B: BD 00 B5  LDA tbl_0x003510_cutscene_text_lo,X
C - - - - - 0x01F14E 07:F13E: 85 58     STA ram_0058
C - - - - - 0x01F150 07:F140: BD 0E B5  LDA tbl_0x00351E_cutscene_text_hi,X
C - - - - - 0x01F153 07:F143: 85 59     STA ram_0059
C - - - - - 0x01F155 07:F145: 85 5B     STA ram_005B
loc_F147:
C D 3 - - - 0x01F157 07:F147: A6 57     LDX ram_0057
C - - - - - 0x01F159 07:F149: BD 72 F2  LDA tbl_F272_ppu_lo,X
C - - - - - 0x01F15C 07:F14C: 8D 81 07  STA ram_ppu_buffer + $01
C - - - - - 0x01F15F 07:F14F: BD 76 F2  LDA tbl_F276_ppu_hi,X
C - - - - - 0x01F162 07:F152: 8D 80 07  STA ram_ppu_buffer
loc_F155:
C D 3 - - - 0x01F165 07:F155: A2 00     LDX #$00
bra_F157_loop:
C - - - - - 0x01F167 07:F157: A5 5B     LDA ram_005B
C - - - - - 0x01F169 07:F159: 85 59     STA ram_0059
C - - - - - 0x01F16B 07:F15B: A4 56     LDY ram_0056
C - - - - - 0x01F16D 07:F15D: E6 56     INC ram_0056
C - - - - - 0x01F16F 07:F15F: D0 02     BNE bra_F163
C - - - - - 0x01F171 07:F161: E6 5B     INC ram_005B
bra_F163:
C - - - - - 0x01F173 07:F163: B1 58     LDA (ram_0058),Y
C - - - - - 0x01F175 07:F165: C9 0F     CMP #$0F
C - - - - - 0x01F177 07:F167: F0 0A     BEQ bra_F173_0F
C - - - - - 0x01F179 07:F169: C9 FD     CMP #$FD
C - - - - - 0x01F17B 07:F16B: B0 5F     BCS bra_F1CC_FD_FF
C - - - - - 0x01F17D 07:F16D: C9 80     CMP #$80
C - - - - - 0x01F17F 07:F16F: 90 14     BCC bra_F185
- - - - - - 0x01F181 07:F171: B0 0A     BCS bra_F17D    ; jmp
bra_F173_0F:
- - - - - - 0x01F183 07:F173: A9 78     LDA #$78
- - - - - - 0x01F185 07:F175: 9D 83 07  STA ram_ppu_buffer + $03,X
- - - - - - 0x01F188 07:F178: E8        INX
- - - - - - 0x01F189 07:F179: A9 6C     LDA #$6C
- - - - - - 0x01F18B 07:F17B: D0 08     BNE bra_F185    ; jmp
bra_F17D:
- - - - - - 0x01F18D 07:F17D: 29 7F     AND #$7F
- - - - - - 0x01F18F 07:F17F: 9D 83 07  STA ram_ppu_buffer + $03,X
- - - - - - 0x01F192 07:F182: E8        INX
- - - - - - 0x01F193 07:F183: A9 6D     LDA #$6D
bra_F185:
C - - - - - 0x01F195 07:F185: 9D 83 07  STA ram_ppu_buffer + $03,X
C - - - - - 0x01F198 07:F188: D0 03     BNE bra_F18D
- - - - - - 0x01F19A 07:F18A: E8        INX
- - - - - - 0x01F19B 07:F18B: D0 CA     BNE bra_F157_loop
bra_F18D:
C - - - - - 0x01F19D 07:F18D: 8E 82 07  STX ram_ppu_buffer + $02
C - - - - - 0x01F1A0 07:F190: A9 FF     LDA #$FF
C - - - - - 0x01F1A2 07:F192: 9D 84 07  STA ram_ppu_buffer + $04,X
C - - - - - 0x01F1A5 07:F195: 85 19     STA ram_0019
C - - - - - 0x01F1A7 07:F197: A9 04     LDA #$04
C - - - - - 0x01F1A9 07:F199: 85 0D     STA ram_000D
bra_F19B_loop:
C - - - - - 0x01F1AB 07:F19B: 20 9C F0  JSR sub_F09C
C - - - - - 0x01F1AE 07:F19E: A5 54     LDA ram_0054
C - - - - - 0x01F1B0 07:F1A0: C9 05     CMP #$05
C - - - - - 0x01F1B2 07:F1A2: F0 0E     BEQ bra_F1B2
C - - - - - 0x01F1B4 07:F1A4: C9 06     CMP #$06
C - - - - - 0x01F1B6 07:F1A6: F0 0A     BEQ bra_F1B2
C - - - - - 0x01F1B8 07:F1A8: C9 07     CMP #$07
C - - - - - 0x01F1BA 07:F1AA: F0 06     BEQ bra_F1B2
C - - - - - 0x01F1BC 07:F1AC: A5 16     LDA ram_btn_hold
C - - - - - 0x01F1BE 07:F1AE: 29 10     AND #con_btn_Start
C - - - - - 0x01F1C0 07:F1B0: D0 17     BNE bra_F1C9_exit_cutscene
bra_F1B2:
C - - - - - 0x01F1C2 07:F1B2: A5 16     LDA ram_btn_hold
C - - - - - 0x01F1C4 07:F1B4: 29 80     AND #con_btn_A
C - - - - - 0x01F1C6 07:F1B6: D0 04     BNE bra_F1BC
C - - - - - 0x01F1C8 07:F1B8: C6 0D     DEC ram_000D
C - - - - - 0x01F1CA 07:F1BA: D0 DF     BNE bra_F19B_loop
bra_F1BC:
C - - - - - 0x01F1CC 07:F1BC: AD 81 07  LDA ram_ppu_buffer + $01
C - - - - - 0x01F1CF 07:F1BF: 38        SEC
C - - - - - 0x01F1D0 07:F1C0: 6D 82 07  ADC ram_ppu_buffer + $02
C - - - - - 0x01F1D3 07:F1C3: 8D 81 07  STA ram_ppu_buffer + $01
C - - - - - 0x01F1D6 07:F1C6: 4C 55 F1  JMP loc_F155
bra_F1C9_exit_cutscene:
bra_F1C9_FF:
C - - - - - 0x01F1D9 07:F1C9: E6 5A     INC ram_005A
C - - - - - 0x01F1DB 07:F1CB: 60        RTS
bra_F1CC_FD_FF:
C - - - - - 0x01F1DC 07:F1CC: C9 FF     CMP #$FF
C - - - - - 0x01F1DE 07:F1CE: F0 F9     BEQ bra_F1C9_FF
C - - - - - 0x01F1E0 07:F1D0: E6 57     INC ram_0057
C - - - - - 0x01F1E2 07:F1D2: C9 FD     CMP #$FD
C - - - - - 0x01F1E4 07:F1D4: D0 03     BNE bra_F1D9
; FD new line
C - - - - - 0x01F1E6 07:F1D6: 4C 47 F1  JMP loc_F147
bra_F1D9:
; FE wait for input
; draw/hide cursor
C - - - - - 0x01F1E9 07:F1D9: A9 23     LDA #> $231B
C - - - - - 0x01F1EB 07:F1DB: 8D 80 07  STA ram_ppu_buffer
C - - - - - 0x01F1EE 07:F1DE: A9 1B     LDA #< $231B
C - - - - - 0x01F1F0 07:F1E0: 8D 81 07  STA ram_ppu_buffer + $01
C - - - - - 0x01F1F3 07:F1E3: A9 00     LDA #$00    ; tiles counter
C - - - - - 0x01F1F5 07:F1E5: 8D 82 07  STA ram_ppu_buffer + $02
C - - - - - 0x01F1F8 07:F1E8: A9 4A     LDA #$4A    ; cursor tile
C - - - - - 0x01F1FA 07:F1EA: 8D 83 07  STA ram_ppu_buffer + $03
C - - - - - 0x01F1FD 07:F1ED: A9 FF     LDA #$FF    ; close buffer
C - - - - - 0x01F1FF 07:F1EF: 8D 84 07  STA ram_ppu_buffer + $04
C - - - - - 0x01F202 07:F1F2: A9 00     LDA #$00
C - - - - - 0x01F204 07:F1F4: 85 0D     STA ram_000D
loc_F1F6_loop:
C D 3 - - - 0x01F206 07:F1F6: A5 14     LDA ram_btn_press
; bzk bug, should be checked for A only
C - - - - - 0x01F208 07:F1F8: 29 90     AND #con_btn_Start + con_btn_A
C - - - - - 0x01F20A 07:F1FA: D0 19     BNE bra_F215_continue_cutscene
C - - - - - 0x01F20C 07:F1FC: A5 0D     LDA ram_000D
C - - - - - 0x01F20E 07:F1FE: E6 0D     INC ram_000D
C - - - - - 0x01F210 07:F200: 4A        LSR
C - - - - - 0x01F211 07:F201: 4A        LSR
C - - - - - 0x01F212 07:F202: 4A        LSR
C - - - - - 0x01F213 07:F203: 4A        LSR
C - - - - - 0x01F214 07:F204: 29 01     AND #$01
C - - - - - 0x01F216 07:F206: A8        TAY
C - - - - - 0x01F217 07:F207: B9 7A F2  LDA tbl_F27A_cursor_tiles,Y
C - - - - - 0x01F21A 07:F20A: 8D 83 07  STA ram_ppu_buffer + $03
C - - - - - 0x01F21D 07:F20D: E6 19     INC ram_0019
C - - - - - 0x01F21F 07:F20F: 20 9C F0  JSR sub_F09C
C - - - - - 0x01F222 07:F212: 4C F6 F1  JMP loc_F1F6_loop
bra_F215_continue_cutscene:
C - - - - - 0x01F225 07:F215: A4 56     LDY ram_0056
C - - - - - 0x01F227 07:F217: B1 58     LDA (ram_0058),Y
C - - - - - 0x01F229 07:F219: 30 AE     BMI bra_F1C9_FF
C - - - - - 0x01F22B 07:F21B: A9 00     LDA #$00
C - - - - - 0x01F22D 07:F21D: 85 57     STA ram_0057
C - - - - - 0x01F22F 07:F21F: AD 72 F2  LDA tbl_F272_ppu_lo
C - - - - - 0x01F232 07:F222: 8D 81 07  STA ram_ppu_buffer + $01
C - - - - - 0x01F235 07:F225: AD 73 F2  LDA tbl_F272_ppu_lo + $01
C - - - - - 0x01F238 07:F228: 8D A0 07  STA ram_ppu_buffer + $20
C - - - - - 0x01F23B 07:F22B: AD 76 F2  LDA tbl_F276_ppu_hi
C - - - - - 0x01F23E 07:F22E: 8D 80 07  STA ram_ppu_buffer
C - - - - - 0x01F241 07:F231: AD 77 F2  LDA tbl_F276_ppu_hi + $01
C - - - - - 0x01F244 07:F234: 8D 9F 07  STA ram_ppu_buffer + $1F
C - - - - - 0x01F247 07:F237: A2 1B     LDX #$1B
C - - - - - 0x01F249 07:F239: 8E 82 07  STX ram_ppu_buffer + $02
C - - - - - 0x01F24C 07:F23C: 8E A1 07  STX ram_ppu_buffer + $21
C - - - - - 0x01F24F 07:F23F: A9 00     LDA #$00
bra_F241_loop:
C - - - - - 0x01F251 07:F241: 9D 83 07  STA ram_ppu_buffer + $03,X
C - - - - - 0x01F254 07:F244: 9D A2 07  STA ram_ppu_buffer + $22,X
C - - - - - 0x01F257 07:F247: CA        DEX
C - - - - - 0x01F258 07:F248: 10 F7     BPL bra_F241_loop
C - - - - - 0x01F25A 07:F24A: 8E BE 07  STX ram_ppu_buffer + $3E
C - - - - - 0x01F25D 07:F24D: 86 19     STX ram_0019
C - - - - - 0x01F25F 07:F24F: 20 9C F0  JSR sub_F09C
C - - - - - 0x01F262 07:F252: AD 74 F2  LDA tbl_F272_ppu_lo + $02
C - - - - - 0x01F265 07:F255: 8D 81 07  STA ram_ppu_buffer + $01
C - - - - - 0x01F268 07:F258: AD 75 F2  LDA tbl_F272_ppu_lo + $03
C - - - - - 0x01F26B 07:F25B: 8D A0 07  STA ram_ppu_buffer + $20
C - - - - - 0x01F26E 07:F25E: AD 78 F2  LDA tbl_F276_ppu_hi + $02
C - - - - - 0x01F271 07:F261: 8D 80 07  STA ram_ppu_buffer
C - - - - - 0x01F274 07:F264: AD 79 F2  LDA tbl_F276_ppu_hi + $03
C - - - - - 0x01F277 07:F267: 8D 9F 07  STA ram_ppu_buffer + $1F
C - - - - - 0x01F27A 07:F26A: E6 19     INC ram_0019
C - - - - - 0x01F27C 07:F26C: 20 9C F0  JSR sub_F09C
C - - - - - 0x01F27F 07:F26F: 4C 47 F1  JMP loc_F147



tbl_F272_ppu_lo:
- D 3 - - - 0x01F282 07:F272: 44        .byte < $2244   ; 00
- D 3 - - - 0x01F283 07:F273: 84        .byte < $2284   ; 01
- D 3 - - - 0x01F284 07:F274: C4        .byte < $22C4   ; 02
- D 3 - - - 0x01F285 07:F275: 04        .byte < $2304   ; 03

tbl_F276_ppu_hi:
- D 3 - - - 0x01F286 07:F276: 22        .byte > $2244   ; 00
- D 3 - - - 0x01F287 07:F277: 22        .byte > $2284   ; 01
- D 3 - - - 0x01F288 07:F278: 22        .byte > $22C4   ; 02
- D 3 - - - 0x01F289 07:F279: 23        .byte > $2304   ; 03



tbl_F27A_cursor_tiles:
- D 3 - - - 0x01F28A 07:F27A: 4A        .byte $4A   ; 00 cursor
- D 3 - - - 0x01F28B 07:F27B: 00        .byte $00   ; 01 empty



tbl_F27C:
- D 3 - - - 0x01F28C 07:F27C: 0D        .byte con_C2C4_0D   ; 00
- D 3 - - - 0x01F28D 07:F27D: 0E        .byte con_C2C4_0E   ; 01
- D 3 - - - 0x01F28E 07:F27E: 16        .byte con_C2C4_16   ; 02
- D 3 - - - 0x01F28F 07:F27F: 0E        .byte con_C2C4_0E   ; 03
- D 3 - - - 0x01F290 07:F280: 0E        .byte con_C2C4_0E   ; 04
- D 3 - - - 0x01F291 07:F281: 18        .byte con_C2C4_18   ; 05
- D 3 - - - 0x01F292 07:F282: 0E        .byte con_C2C4_0E   ; 06
- D 3 - - - 0x01F293 07:F283: 17        .byte con_C2C4_17   ; 07
- D 3 - - - 0x01F294 07:F284: 0E        .byte con_C2C4_0E   ; 08
- D 3 - - - 0x01F295 07:F285: 0E        .byte con_C2C4_0E   ; 09
- D 3 - - - 0x01F296 07:F286: 0E        .byte con_C2C4_0E   ; 0A
- D 3 - - - 0x01F297 07:F287: 0E        .byte con_C2C4_0E   ; 0B
- D 3 - - - 0x01F298 07:F288: 0E        .byte con_C2C4_0E   ; 0C



tbl_F289:
- D 3 - - - 0x01F299 07:F289: 00        .byte $00   ; 00
- D 3 - - - 0x01F29A 07:F28A: 01        .byte $01   ; 01
- D 3 - - - 0x01F29B 07:F28B: 02        .byte $02   ; 02
- D 3 - - - 0x01F29C 07:F28C: 03        .byte $03   ; 03
- D 3 - - - 0x01F29D 07:F28D: 04        .byte $04   ; 04
- D 3 - - - 0x01F29E 07:F28E: 05        .byte $05   ; 05
- D 3 - - - 0x01F29F 07:F28F: 06        .byte $06   ; 06
- D 3 - - - 0x01F2A0 07:F290: 07        .byte $07   ; 07
- D 3 - - - 0x01F2A1 07:F291: 08        .byte $08   ; 08
- D 3 - - - 0x01F2A2 07:F292: 08        .byte $08   ; 09
- D 3 - - - 0x01F2A3 07:F293: 08        .byte $08   ; 0A
- D 3 - - - 0x01F2A4 07:F294: 08        .byte $08   ; 0B
- D 3 - - - 0x01F2A5 07:F295: 08        .byte $08   ; 0C



tbl_F296:
- D 3 - - - 0x01F2A6 07:F296: 00        .byte $00   ; 00
- D 3 - - - 0x01F2A7 07:F297: 01        .byte $01   ; 01
- D 3 - - - 0x01F2A8 07:F298: 08        .byte $08   ; 02
- D 3 - - - 0x01F2A9 07:F299: 02        .byte $02   ; 03
- D 3 - - - 0x01F2AA 07:F29A: 03        .byte $03   ; 04
- D 3 - - - 0x01F2AB 07:F29B: 04        .byte $04   ; 05
- D 3 - - - 0x01F2AC 07:F29C: 05        .byte $05   ; 06
- D 3 - - - 0x01F2AD 07:F29D: 06        .byte $06   ; 07
- D 3 - - - 0x01F2AE 07:F29E: 07        .byte $07   ; 08
- D 3 - - - 0x01F2AF 07:F29F: 07        .byte $07   ; 09
- D 3 - - - 0x01F2B0 07:F2A0: 07        .byte $07   ; 0A
- D 3 - - - 0x01F2B1 07:F2A1: 07        .byte $07   ; 0B
- D 3 - - - 0x01F2B2 07:F2A2: 07        .byte $07   ; 0C



tbl_F2A3:
- D 3 - - - 0x01F2B3 07:F2A3: 00        .byte $00   ; 00
- D 3 - - - 0x01F2B4 07:F2A4: 03        .byte $03   ; 01
- D 3 - - - 0x01F2B5 07:F2A5: 01        .byte $01   ; 02
- D 3 - - - 0x01F2B6 07:F2A6: 00        .byte $00   ; 03
- D 3 - - - 0x01F2B7 07:F2A7: 00        .byte $00   ; 04
- D 3 - - - 0x01F2B8 07:F2A8: 01        .byte $01   ; 05
- D 3 - - - 0x01F2B9 07:F2A9: 00        .byte $00   ; 06
- D 3 - - - 0x01F2BA 07:F2AA: 00        .byte $00   ; 07
- D 3 - - - 0x01F2BB 07:F2AB: 01        .byte $01   ; 08
- D 3 - - - 0x01F2BC 07:F2AC: 01        .byte $01   ; 09
- D 3 - - - 0x01F2BD 07:F2AD: 01        .byte $01   ; 0A
- D 3 - - - 0x01F2BE 07:F2AE: 01        .byte $01   ; 0B
- D 3 - - - 0x01F2BF 07:F2AF: 02        .byte $02   ; 0C



tbl_F2B0:
- - - - - - 0x01F2C0 07:F2B0: 00        .byte $00   ; 00 never used
- D 3 - - - 0x01F2C1 07:F2B1: 00        .byte $00   ; 01
- D 3 - - - 0x01F2C2 07:F2B2: 03        .byte $03   ; 02
- - - - - - 0x01F2C3 07:F2B3: 00        .byte $00   ; 03 never used
- - - - - - 0x01F2C4 07:F2B4: 00        .byte $00   ; 04 never used
- D 3 - - - 0x01F2C5 07:F2B5: 04        .byte $04   ; 05
- - - - - - 0x01F2C6 07:F2B6: 00        .byte $00   ; 06 never used
- - - - - - 0x01F2C7 07:F2B7: 00        .byte $00   ; 07 never used
- D 3 - - - 0x01F2C8 07:F2B8: 06        .byte $06   ; 08
- D 3 - - - 0x01F2C9 07:F2B9: 09        .byte $09   ; 09
- D 3 - - - 0x01F2CA 07:F2BA: 06        .byte $06   ; 0A
- D 3 - - - 0x01F2CB 07:F2BB: 09        .byte $09   ; 0B
- D 3 - - - 0x01F2CC 07:F2BC: 07        .byte $07   ; 0C



tbl_F2BD:
- D 3 - - - 0x01F2CD 07:F2BD: 1C        .byte $1C   ; 00
- D 3 - - - 0x01F2CE 07:F2BE: 3A        .byte $3A   ; 01
- D 3 - - - 0x01F2CF 07:F2BF: 1D        .byte $1D   ; 02
- D 3 - - - 0x01F2D0 07:F2C0: 78        .byte $78   ; 03
- D 3 - - - 0x01F2D1 07:F2C1: 1B        .byte $1B   ; 04
- D 3 - - - 0x01F2D2 07:F2C2: 10        .byte $10   ; 05
- D 3 - - - 0x01F2D3 07:F2C3: 31        .byte $31   ; 06
- D 3 - - - 0x01F2D4 07:F2C4: 1C        .byte $1C   ; 07
- D 3 - - - 0x01F2D5 07:F2C5: 31        .byte $31   ; 08
- D 3 - - - 0x01F2D6 07:F2C6: 1C        .byte $1C   ; 09



tbl_F2C7:
- D 3 - - - 0x01F2D7 07:F2C7: 57        .byte $57   ; 00
- D 3 - - - 0x01F2D8 07:F2C8: 67        .byte $67   ; 01
- D 3 - - - 0x01F2D9 07:F2C9: 77        .byte $77   ; 02
- D 3 - - - 0x01F2DA 07:F2CA: 4F        .byte $4F   ; 03
- D 3 - - - 0x01F2DB 07:F2CB: 47        .byte $47   ; 04
- D 3 - - - 0x01F2DC 07:F2CC: 57        .byte $57   ; 05
- D 3 - - - 0x01F2DD 07:F2CD: 3F        .byte $3F   ; 06
- D 3 - - - 0x01F2DE 07:F2CE: 4F        .byte $4F   ; 07
- D 3 - - - 0x01F2DF 07:F2CF: 57        .byte $57   ; 08
- D 3 - - - 0x01F2E0 07:F2D0: 50        .byte $50   ; 09

tbl_F2D1:
- D 3 - - - 0x01F2E1 07:F2D1: A8        .byte $A8   ; 00
- D 3 - - - 0x01F2E2 07:F2D2: C8        .byte $C8   ; 01
- D 3 - - - 0x01F2E3 07:F2D3: A0        .byte $A0   ; 02
- D 3 - - - 0x01F2E4 07:F2D4: 80        .byte $80   ; 03
- D 3 - - - 0x01F2E5 07:F2D5: B0        .byte $B0   ; 04
- D 3 - - - 0x01F2E6 07:F2D6: A2        .byte $A2   ; 05
- D 3 - - - 0x01F2E7 07:F2D7: 98        .byte $98   ; 06
- D 3 - - - 0x01F2E8 07:F2D8: B8        .byte $B8   ; 07
- D 3 - - - 0x01F2E9 07:F2D9: 88        .byte $88   ; 08
- D 3 - - - 0x01F2EA 07:F2DA: A0        .byte $A0   ; 09



sub_F2DB:
C - - - - - 0x01F2EB 07:F2DB: A9 00     LDA #$00
C - - - - - 0x01F2ED 07:F2DD: 85 EE     STA ram_00EE
C - - - - - 0x01F2EF 07:F2DF: A9 04     LDA #$04
C - - - - - 0x01F2F1 07:F2E1: 85 97     STA ram_spr_index
C - - - - - 0x01F2F3 07:F2E3: 20 BC C1  JSR sub_C1BC_hide_unused_sprites
C - - - - - 0x01F2F6 07:F2E6: A9 F8     LDA #$F8
C - - - - - 0x01F2F8 07:F2E8: 8D 00 02  STA ram_spr_Y
C - - - - - 0x01F2FB 07:F2EB: 20 EC C1  JSR sub_C1EC
C - - - - - 0x01F2FE 07:F2EE: 20 AD FF  JSR sub_FFAD
C - - - - - 0x01F301 07:F2F1: 20 04 C1  JSR sub_C104
C - - - - - 0x01F304 07:F2F4: A9 20     LDA #$20    ; ppu hi
C - - - - - 0x01F306 07:F2F6: A2 00     LDX #$00    ; tile id
C - - - - - 0x01F308 07:F2F8: A0 00     LDY #$00
C - - - - - 0x01F30A 07:F2FA: 20 70 C1  JSR sub_C170
C - - - - - 0x01F30D 07:F2FD: A2 0B     LDX #con_C2C4_0B
C - - - - - 0x01F30F 07:F2FF: 20 6B C2  JSR sub_C26B_write_chr_to_ppu
C - - - - - 0x01F312 07:F302: A9 06     LDA #con_prg_bank + $06
C - - - - - 0x01F314 07:F304: 20 CD FF  JSR sub_FFCD_prg_bankswitch
C - - - - - 0x01F317 07:F307: A2 10     LDX #$10    ; copyrights
C - - - - - 0x01F319 07:F309: 20 00 B0  JSR sub_0x01B010_draw_static_screen
C - - - - - 0x01F31C 07:F30C: A2 0F     LDX #$0F
bra_F30E_loop:
C - - - - - 0x01F31E 07:F30E: BD 72 F4  LDA tbl_F472_palette,X
C - - - - - 0x01F321 07:F311: 9D 20 06  STA ram_pal_buffer_2,X
C - - - - - 0x01F324 07:F314: 9D 30 06  STA ram_pal_buffer_2 + $10,X
C - - - - - 0x01F327 07:F317: CA        DEX
C - - - - - 0x01F328 07:F318: 10 F4     BPL bra_F30E_loop
C - - - - - 0x01F32A 07:F31A: 20 0E C1  JSR sub_C10E
C - - - - - 0x01F32D 07:F31D: 20 AD FF  JSR sub_FFAD
C - - - - - 0x01F330 07:F320: 20 E6 C1  JSR sub_C1E6
C - - - - - 0x01F333 07:F323: A2 5A     LDX #$5A
C - - - - - 0x01F335 07:F325: 20 A6 FF  JSR sub_FFA6
C - - - - - 0x01F338 07:F328: 20 EC C1  JSR sub_C1EC
C - - - - - 0x01F33B 07:F32B: 20 AD FF  JSR sub_FFAD
C - - - - - 0x01F33E 07:F32E: 20 04 C1  JSR sub_C104
C - - - - - 0x01F341 07:F331: A9 20     LDA #$20    ; ppu hi
C - - - - - 0x01F343 07:F333: A2 00     LDX #$00    ; tile id
C - - - - - 0x01F345 07:F335: A0 FF     LDY #$FF
C - - - - - 0x01F347 07:F337: 20 70 C1  JSR sub_C170
C - - - - - 0x01F34A 07:F33A: A2 0F     LDX #con_C2C4_0F
C - - - - - 0x01F34C 07:F33C: 20 6B C2  JSR sub_C26B_write_chr_to_ppu
C - - - - - 0x01F34F 07:F33F: A9 06     LDA #con_prg_bank + $06
C - - - - - 0x01F351 07:F341: 20 CD FF  JSR sub_FFCD_prg_bankswitch
C - - - - - 0x01F354 07:F344: A2 00     LDX #$00    ; title
C - - - - - 0x01F356 07:F346: 20 00 B0  JSR sub_0x01B010_draw_static_screen
C - - - - - 0x01F359 07:F349: A0 1F     LDY #$1F
bra_F34B_loop:
C - - - - - 0x01F35B 07:F34B: B9 58 C7  LDA tbl_C758_palette,Y
C - - - - - 0x01F35E 07:F34E: 99 20 06  STA ram_pal_buffer_2,Y
C - - - - - 0x01F361 07:F351: 88        DEY
C - - - - - 0x01F362 07:F352: 10 F7     BPL bra_F34B_loop
; sprites for logo screen
C - - - - - 0x01F364 07:F354: A0 54     LDY #$54
bra_F356_loop:
C - - - - - 0x01F366 07:F356: B9 C0 C7  LDA tbl_C7C0_moon_spr_data,Y
C - - - - - 0x01F369 07:F359: 99 00 02  STA ram_spr_Y,Y
C - - - - - 0x01F36C 07:F35C: B9 C1 C7  LDA tbl_C7C0_moon_spr_data + $01,Y
C - - - - - 0x01F36F 07:F35F: 99 01 02  STA ram_spr_T,Y
C - - - - - 0x01F372 07:F362: B9 C2 C7  LDA tbl_C7C0_moon_spr_data + $02,Y
C - - - - - 0x01F375 07:F365: 99 02 02  STA ram_spr_A,Y
C - - - - - 0x01F378 07:F368: B9 C3 C7  LDA tbl_C7C0_moon_spr_data + $03,Y
C - - - - - 0x01F37B 07:F36B: 99 03 02  STA ram_spr_X,Y
C - - - - - 0x01F37E 07:F36E: 88        DEY
C - - - - - 0x01F37F 07:F36F: 88        DEY
C - - - - - 0x01F380 07:F370: 88        DEY
C - - - - - 0x01F381 07:F371: 88        DEY
C - - - - - 0x01F382 07:F372: 10 E2     BPL bra_F356_loop
C - - - - - 0x01F384 07:F374: A9 5C     LDA #$5C
C - - - - - 0x01F386 07:F376: 85 54     STA ram_0054
C - - - - - 0x01F388 07:F378: 85 97     STA ram_spr_index
C - - - - - 0x01F38A 07:F37A: 20 0E C1  JSR sub_C10E
C - - - - - 0x01F38D 07:F37D: 20 AD FF  JSR sub_FFAD
C - - - - - 0x01F390 07:F380: 20 E6 C1  JSR sub_C1E6
C - - - - - 0x01F393 07:F383: 20 D1 F3  JSR sub_F3D1
C - - - - - 0x01F396 07:F386: A9 00     LDA #$00    ; con_music_title_screen
C - - - - - 0x01F398 07:F388: 85 0E     STA ram_000E
C - - - - - 0x01F39A 07:F38A: 20 9E FC  JSR sub_FC9E_play_music
bra_F38D_loop:
C - - - - - 0x01F39D 07:F38D: 20 EB F3  JSR sub_F3EB
C - - - - - 0x01F3A0 07:F390: 20 AD FF  JSR sub_FFAD
C - - - - - 0x01F3A3 07:F393: A5 14     LDA ram_btn_press
C - - - - - 0x01F3A5 07:F395: 29 10     AND #con_btn_Start
C - - - - - 0x01F3A7 07:F397: F0 F4     BEQ bra_F38D_loop
C - - - - - 0x01F3A9 07:F399: A5 17     LDA ram_btn_hold + $01
C - - - - - 0x01F3AB 07:F39B: C9 C1     CMP #con_btns_AB + con_btn_Right
C - - - - - 0x01F3AD 07:F39D: D0 08     BNE bra_F3A7_skip_secret_menu
C - - - - - 0x01F3AF 07:F39F: A9 06     LDA #con_prg_bank + $06
C - - - - - 0x01F3B1 07:F3A1: 20 CD FF  JSR sub_FFCD_prg_bankswitch
C - - - - - 0x01F3B4 07:F3A4: 20 00 AC  JSR sub_0x01AC10_secret_menu_handler
bra_F3A7_skip_secret_menu:
C - - - - - 0x01F3B7 07:F3A7: A9 11     LDA #con_sfx_11
C - - - - - 0x01F3B9 07:F3A9: 20 A0 FC  JSR sub_FCA0_play_sfx
C - - - - - 0x01F3BC 07:F3AC: A2 3C     LDX #$3C
C - - - - - 0x01F3BE 07:F3AE: 20 A6 FF  JSR sub_FFA6
C - - - - - 0x01F3C1 07:F3B1: A9 01     LDA #con_music_cutscene_1
C - - - - - 0x01F3C3 07:F3B3: 20 9E FC  JSR sub_FC9E_play_music
C - - - - - 0x01F3C6 07:F3B6: A9 00     LDA #$00
C - - - - - 0x01F3C8 07:F3B8: 85 54     STA ram_0054
bra_F3BA_loop:
C - - - - - 0x01F3CA 07:F3BA: A5 54     LDA ram_0054
C - - - - - 0x01F3CC 07:F3BC: 20 CB EF  JSR sub_EFCB
C - - - - - 0x01F3CF 07:F3BF: A5 16     LDA ram_btn_hold
C - - - - - 0x01F3D1 07:F3C1: 29 10     AND #con_btn_Start
C - - - - - 0x01F3D3 07:F3C3: D0 54     BNE bra_F419
C - - - - - 0x01F3D5 07:F3C5: E6 54     INC ram_0054
C - - - - - 0x01F3D7 07:F3C7: A5 54     LDA ram_0054
C - - - - - 0x01F3D9 07:F3C9: C9 05     CMP #$05
C - - - - - 0x01F3DB 07:F3CB: D0 ED     BNE bra_F3BA_loop
C - - - - - 0x01F3DD 07:F3CD: 4C 19 F4  JMP loc_F419


; bzk garbage
- - - - - - 0x01F3E0 07:F3D0: 60        RTS



sub_F3D1:
C - - - - - 0x01F3E1 07:F3D1: A0 05     LDY #$05
bra_F3D3_loop:
C - - - - - 0x01F3E3 07:F3D3: A9 80     LDA #$80
C - - - - - 0x01F3E5 07:F3D5: 99 10 04  STA ram_0410_unk,Y
C - - - - - 0x01F3E8 07:F3D8: A9 1A     LDA #$1A
C - - - - - 0x01F3EA 07:F3DA: 99 40 04  STA ram_0440_unk,Y
C - - - - - 0x01F3ED 07:F3DD: B9 92 F4  LDA tbl_F492,Y
C - - - - - 0x01F3F0 07:F3E0: 99 28 04  STA ram_0428_unk,Y
C - - - - - 0x01F3F3 07:F3E3: A9 00     LDA #$00
C - - - - - 0x01F3F5 07:F3E5: 99 58 04  STA ram_0458_unk,Y
C - - - - - 0x01F3F8 07:F3E8: 88        DEY
C - - - - - 0x01F3F9 07:F3E9: 10 E8     BPL bra_F3D3_loop
sub_F3EB:
C - - - - - 0x01F3FB 07:F3EB: A5 54     LDA ram_0054
C - - - - - 0x01F3FD 07:F3ED: 85 97     STA ram_spr_index
C - - - - - 0x01F3FF 07:F3EF: 20 BC C1  JSR sub_C1BC_hide_unused_sprites
C - - - - - 0x01F402 07:F3F2: A9 04     LDA #con_prg_bank + $04
C - - - - - 0x01F404 07:F3F4: 20 CD FF  JSR sub_FFCD_prg_bankswitch
C - - - - - 0x01F407 07:F3F7: A2 10     LDX #$10
C - - - - - 0x01F409 07:F3F9: 86 96     STX ram_0096
bra_F3FB_loop:
C - - - - - 0x01F40B 07:F3FB: A6 96     LDX ram_0096
C - - - - - 0x01F40D 07:F3FD: A9 00     LDA #$00
C - - - - - 0x01F40F 07:F3FF: 85 10     STA ram_0010
C - - - - - 0x01F411 07:F401: 85 11     STA ram_0011
C - - - - - 0x01F413 07:F403: BD 88 F4  LDA tbl_F498 - $10,X
C - - - - - 0x01F416 07:F406: 85 12     STA ram_0012
C - - - - - 0x01F418 07:F408: BD 8E F4  LDA tbl_F49E - $10,X
C - - - - - 0x01F41B 07:F40B: 85 13     STA ram_0013
C - - - - - 0x01F41D 07:F40D: 20 00 80  JSR sub_0x010010
C - - - - - 0x01F420 07:F410: E6 96     INC ram_0096
C - - - - - 0x01F422 07:F412: A6 96     LDX ram_0096
C - - - - - 0x01F424 07:F414: E0 16     CPX #$16
C - - - - - 0x01F426 07:F416: D0 E3     BNE bra_F3FB_loop
C - - - - - 0x01F428 07:F418: 60        RTS



bra_F419:
sub_F419:
loc_F419:
C D 3 - - - 0x01F429 07:F419: A9 00     LDA #$00
C - - - - - 0x01F42B 07:F41B: 85 EE     STA ram_00EE
C - - - - - 0x01F42D 07:F41D: 20 EC C1  JSR sub_C1EC
C - - - - - 0x01F430 07:F420: A9 04     LDA #$04
C - - - - - 0x01F432 07:F422: 85 97     STA ram_spr_index
C - - - - - 0x01F434 07:F424: 20 BC C1  JSR sub_C1BC_hide_unused_sprites
C - - - - - 0x01F437 07:F427: 20 AD FF  JSR sub_FFAD
C - - - - - 0x01F43A 07:F42A: 20 04 C1  JSR sub_C104
C - - - - - 0x01F43D 07:F42D: A9 20     LDA #$20    ; ppu hi
C - - - - - 0x01F43F 07:F42F: A2 00     LDX #$00    ; tile id
C - - - - - 0x01F441 07:F431: A0 00     LDY #$00
C - - - - - 0x01F443 07:F433: 84 FC     STY ram_scroll_X_lo
C - - - - - 0x01F445 07:F435: 84 FD     STY ram_scroll_X_hi
C - - - - - 0x01F447 07:F437: 84 FA     STY ram_scroll_Y_lo
C - - - - - 0x01F449 07:F439: 84 FB     STY ram_scroll_Y_hi
C - - - - - 0x01F44B 07:F43B: 20 70 C1  JSR sub_C170
C - - - - - 0x01F44E 07:F43E: A2 0D     LDX #con_C2C4_0D
C - - - - - 0x01F450 07:F440: 20 6B C2  JSR sub_C26B_write_chr_to_ppu
C - - - - - 0x01F453 07:F443: A9 06     LDA #con_prg_bank + $06
C - - - - - 0x01F455 07:F445: 20 CD FF  JSR sub_FFCD_prg_bankswitch
C - - - - - 0x01F458 07:F448: A5 E9     LDA ram_stage
C - - - - - 0x01F45A 07:F44A: 18        CLC
C - - - - - 0x01F45B 07:F44B: 69 12     ADC #$12
C - - - - - 0x01F45D 07:F44D: AA        TAX
C - - - - - 0x01F45E 07:F44E: 20 00 B0  JSR sub_0x01B010_draw_static_screen
C - - - - - 0x01F461 07:F451: A0 0F     LDY #$0F
bra_F453_loop:
C - - - - - 0x01F463 07:F453: B9 72 F4  LDA tbl_F472_palette,Y
C - - - - - 0x01F466 07:F456: 99 20 06  STA ram_pal_buffer_2,Y
C - - - - - 0x01F469 07:F459: 99 30 06  STA ram_pal_buffer_2 + $10,Y
C - - - - - 0x01F46C 07:F45C: 88        DEY
C - - - - - 0x01F46D 07:F45D: 10 F4     BPL bra_F453_loop
C - - - - - 0x01F46F 07:F45F: 20 0E C1  JSR sub_C10E
C - - - - - 0x01F472 07:F462: 20 AD FF  JSR sub_FFAD
C - - - - - 0x01F475 07:F465: 20 E6 C1  JSR sub_C1E6
C - - - - - 0x01F478 07:F468: A9 0C     LDA #con_music_stage_preview
C - - - - - 0x01F47A 07:F46A: 20 9E FC  JSR sub_FC9E_play_music
C - - - - - 0x01F47D 07:F46D: A2 B4     LDX #$B4
C - - - - - 0x01F47F 07:F46F: 4C A6 FF  JMP loc_FFA6



tbl_F472_palette:
- D 3 - - - 0x01F482 07:F472: 0F        .byte $0F, $20, $20, $20   ; 
- D 3 - - - 0x01F486 07:F476: 0F        .byte $0F, $20, $20, $20   ; 
- D 3 - - - 0x01F48A 07:F47A: 0F        .byte $0F, $20, $20, $20   ; 
- D 3 - - - 0x01F48E 07:F47E: 0F        .byte $0F, $20, $20, $20   ; 

- D 3 - - - 0x01F492 07:F482: 0F        .byte $0F, $05, $14, $36   ; 
- D 3 - - - 0x01F496 07:F486: 0F        .byte $0F, $0B, $2B, $20   ; 
- D 3 - - - 0x01F49A 07:F48A: 0F        .byte $0F, $0F, $0F, $0F   ; 
- D 3 - - - 0x01F49E 07:F48E: 0F        .byte $0F, $0F, $0F, $0F   ; 



tbl_F492:
- D 3 - - - 0x01F4A2 07:F492: 00        .byte $00   ; 00
- D 3 - - - 0x01F4A3 07:F493: 02        .byte $02   ; 01
- D 3 - - - 0x01F4A4 07:F494: 03        .byte $03   ; 02
- D 3 - - - 0x01F4A5 07:F495: 00        .byte $00   ; 03
- D 3 - - - 0x01F4A6 07:F496: 01        .byte $01   ; 04
- D 3 - - - 0x01F4A7 07:F497: 03        .byte $03   ; 05



tbl_F498:
- D 3 - - - 0x01F4A8 07:F498: C4        .byte $C4   ; 10
- D 3 - - - 0x01F4A9 07:F499: D4        .byte $D4   ; 11
- D 3 - - - 0x01F4AA 07:F49A: DC        .byte $DC   ; 12
- D 3 - - - 0x01F4AB 07:F49B: D4        .byte $D4   ; 13
- D 3 - - - 0x01F4AC 07:F49C: BC        .byte $BC   ; 14
- D 3 - - - 0x01F4AD 07:F49D: DC        .byte $DC   ; 15
 
tbl_F49E:
- D 3 - - - 0x01F4AE 07:F49E: 4C        .byte $4C   ; 10
- D 3 - - - 0x01F4AF 07:F49F: 44        .byte $44   ; 11
- D 3 - - - 0x01F4B0 07:F4A0: 4C        .byte $4C   ; 12
- D 3 - - - 0x01F4B1 07:F4A1: 94        .byte $94   ; 13
- D 3 - - - 0x01F4B2 07:F4A2: AC        .byte $AC   ; 14
- D 3 - - - 0x01F4B3 07:F4A3: AC        .byte $AC   ; 15



loc_F4A4:
C D 3 - - - 0x01F4B4 07:F4A4: A9 F0     LDA #con_sound_ctrl_F0
C - - - - - 0x01F4B6 07:F4A6: 20 A0 FC  JSR sub_FCA0_play_sfx
C - - - - - 0x01F4B9 07:F4A9: A9 05     LDA #$05
C - - - - - 0x01F4BB 07:F4AB: 85 54     STA ram_0054
bra_F4AD_loop:
C - - - - - 0x01F4BD 07:F4AD: A5 54     LDA ram_0054
C - - - - - 0x01F4BF 07:F4AF: 20 CB EF  JSR sub_EFCB
C - - - - - 0x01F4C2 07:F4B2: E6 54     INC ram_0054
C - - - - - 0x01F4C4 07:F4B4: A5 54     LDA ram_0054
C - - - - - 0x01F4C6 07:F4B6: C9 08     CMP #$08
C - - - - - 0x01F4C8 07:F4B8: D0 F3     BNE bra_F4AD_loop
loc_F4BA:
C D 3 - - - 0x01F4CA 07:F4BA: 20 AD FF  JSR sub_FFAD
C - - - - - 0x01F4CD 07:F4BD: 4C BA F4  JMP loc_F4BA



loc_F4C0_game_over_handler:
C D 3 - - - 0x01F4D0 07:F4C0: A9 00     LDA #$00
C - - - - - 0x01F4D2 07:F4C2: 85 EE     STA ram_00EE
C - - - - - 0x01F4D4 07:F4C4: A9 04     LDA #$04
C - - - - - 0x01F4D6 07:F4C6: 85 97     STA ram_spr_index
C - - - - - 0x01F4D8 07:F4C8: 20 BC C1  JSR sub_C1BC_hide_unused_sprites
C - - - - - 0x01F4DB 07:F4CB: 20 AD FF  JSR sub_FFAD
C - - - - - 0x01F4DE 07:F4CE: 20 04 C1  JSR sub_C104
C - - - - - 0x01F4E1 07:F4D1: A9 20     LDA #$20    ; ppu hi
C - - - - - 0x01F4E3 07:F4D3: A2 00     LDX #$00    ; tile id
C - - - - - 0x01F4E5 07:F4D5: A0 00     LDY #$00
C - - - - - 0x01F4E7 07:F4D7: 20 70 C1  JSR sub_C170
C - - - - - 0x01F4EA 07:F4DA: A2 0B     LDX #con_C2C4_0B
C - - - - - 0x01F4EC 07:F4DC: 20 6B C2  JSR sub_C26B_write_chr_to_ppu
C - - - - - 0x01F4EF 07:F4DF: A9 06     LDA #con_prg_bank + $06
C - - - - - 0x01F4F1 07:F4E1: 20 CD FF  JSR sub_FFCD_prg_bankswitch
C - - - - - 0x01F4F4 07:F4E4: A2 11     LDX #$11    ; game over
C - - - - - 0x01F4F6 07:F4E6: 20 00 B0  JSR sub_0x01B010_draw_static_screen
C - - - - - 0x01F4F9 07:F4E9: A2 1F     LDX #$1F
bra_F4EB_loop:
C - - - - - 0x01F4FB 07:F4EB: BD 72 F4  LDA tbl_F472_palette,X
C - - - - - 0x01F4FE 07:F4EE: 9D 20 06  STA ram_pal_buffer_2,X
C - - - - - 0x01F501 07:F4F1: CA        DEX
C - - - - - 0x01F502 07:F4F2: 10 F7     BPL bra_F4EB_loop
C - - - - - 0x01F504 07:F4F4: A9 00     LDA #$00
C - - - - - 0x01F506 07:F4F6: 85 FC     STA ram_scroll_X_lo
C - - - - - 0x01F508 07:F4F8: 85 FD     STA ram_scroll_X_hi
C - - - - - 0x01F50A 07:F4FA: 85 FA     STA ram_scroll_Y_lo
C - - - - - 0x01F50C 07:F4FC: 85 FB     STA ram_scroll_Y_hi
C - - - - - 0x01F50E 07:F4FE: A9 7F     LDA #$7F
C - - - - - 0x01F510 07:F500: 8D 00 02  STA ram_spr_Y
C - - - - - 0x01F513 07:F503: A9 85     LDA #$85
C - - - - - 0x01F515 07:F505: 8D 01 02  STA ram_spr_T
C - - - - - 0x01F518 07:F508: A9 01     LDA #$01
C - - - - - 0x01F51A 07:F50A: 8D 02 02  STA ram_spr_A
C - - - - - 0x01F51D 07:F50D: A9 58     LDA #$58
C - - - - - 0x01F51F 07:F50F: 8D 03 02  STA ram_spr_X
C - - - - - 0x01F522 07:F512: 20 0E C1  JSR sub_C10E
C - - - - - 0x01F525 07:F515: 20 AD FF  JSR sub_FFAD
C - - - - - 0x01F528 07:F518: 20 E6 C1  JSR sub_C1E6
C - - - - - 0x01F52B 07:F51B: A9 0B     LDA #con_music_game_over
C - - - - - 0x01F52D 07:F51D: 20 9E FC  JSR sub_FC9E_play_music
C - - - - - 0x01F530 07:F520: A9 01     LDA #$01
C - - - - - 0x01F532 07:F522: 85 10     STA ram_0010
loc_F524_loop:
C D 3 - - - 0x01F534 07:F524: A5 14     LDA ram_btn_press
C - - - - - 0x01F536 07:F526: 29 10     AND #con_btn_Start
C - - - - - 0x01F538 07:F528: D0 32     BNE bra_F55C
C - - - - - 0x01F53A 07:F52A: A5 14     LDA ram_btn_press
C - - - - - 0x01F53C 07:F52C: 29 20     AND #con_btn_Select
C - - - - - 0x01F53E 07:F52E: F0 0E     BEQ bra_F53E
C - - - - - 0x01F540 07:F530: A5 10     LDA ram_0010
C - - - - - 0x01F542 07:F532: 49 01     EOR #$01
C - - - - - 0x01F544 07:F534: 85 10     STA ram_0010
C - - - - - 0x01F546 07:F536: A9 1E     LDA #con_sfx_option_select
C - - - - - 0x01F548 07:F538: 20 A0 FC  JSR sub_FCA0_play_sfx
C - - - - - 0x01F54B 07:F53B: 4C 4E F5  JMP loc_F54E
bra_F53E:
C - - - - - 0x01F54E 07:F53E: A5 14     LDA ram_btn_press
C - - - - - 0x01F550 07:F540: 29 0C     AND #con_btns_UD
C - - - - - 0x01F552 07:F542: F0 0A     BEQ bra_F54E
C - - - - - 0x01F554 07:F544: 4A        LSR
C - - - - - 0x01F555 07:F545: 4A        LSR
C - - - - - 0x01F556 07:F546: 4A        LSR
C - - - - - 0x01F557 07:F547: 85 10     STA ram_0010
C - - - - - 0x01F559 07:F549: A9 1E     LDA #con_sfx_option_select
C - - - - - 0x01F55B 07:F54B: 20 A0 FC  JSR sub_FCA0_play_sfx
bra_F54E:
loc_F54E:
C D 3 - - - 0x01F55E 07:F54E: A4 10     LDY ram_0010
C - - - - - 0x01F560 07:F550: B9 86 F5  LDA tbl_F586_cursor_Y_pos,Y
C - - - - - 0x01F563 07:F553: 8D 00 02  STA ram_spr_Y
C - - - - - 0x01F566 07:F556: 20 AD FF  JSR sub_FFAD
C - - - - - 0x01F569 07:F559: 4C 24 F5  JMP loc_F524_loop
bra_F55C:
C - - - - - 0x01F56C 07:F55C: A9 F2     LDA #con_sound_ctrl_F2
C - - - - - 0x01F56E 07:F55E: 20 A0 FC  JSR sub_FCA0_play_sfx
C - - - - - 0x01F571 07:F561: A9 11     LDA #con_sfx_11
C - - - - - 0x01F573 07:F563: 20 A0 FC  JSR sub_FCA0_play_sfx
C - - - - - 0x01F576 07:F566: A9 02     LDA #$02
C - - - - - 0x01F578 07:F568: 85 B0     STA ram_lives
C - - - - - 0x01F57A 07:F56A: A5 10     LDA ram_0010
C - - - - - 0x01F57C 07:F56C: D0 02     BNE bra_F570
; 00
C - - - - - 0x01F57E 07:F56E: 85 E9     STA ram_stage
bra_F570:
C - - - - - 0x01F580 07:F570: A9 00     LDA #$00
C - - - - - 0x01F582 07:F572: 85 53     STA ram_0053
; clear score
C - - - - - 0x01F584 07:F574: A0 06     LDY #$06
bra_F576_loop:
C - - - - - 0x01F586 07:F576: 99 00 05  STA ram_score_total,Y
C - - - - - 0x01F589 07:F579: 88        DEY
C - - - - - 0x01F58A 07:F57A: 10 FA     BPL bra_F576_loop
C - - - - - 0x01F58C 07:F57C: A5 10     LDA ram_0010
C - - - - - 0x01F58E 07:F57E: F0 03     BEQ bra_F583_end
; if continue
C - - - - - 0x01F590 07:F580: 4C 1F C7  JMP loc_C71F
bra_F583_end:
C - - - - - 0x01F593 07:F583: 4C 48 C6  JMP loc_C648



tbl_F586_cursor_Y_pos:
- D 3 - - - 0x01F596 07:F586: 8F        .byte $8F   ; 00 continue
- D 3 - - - 0x01F597 07:F587: 7F        .byte $7F   ; 01 end


; bzk garbage
- - - - - - 0x01F598 07:F588: A5 10     LDA ram_0010
- - - - - - 0x01F59A 07:F58A: F0 03     BEQ bra_F58F
- - - - - - 0x01F59C 07:F58C: 4C 2B C7  JMP loc_C72B
bra_F58F:
- - - - - - 0x01F59F 07:F58F: 4C 48 C6  JMP loc_C648


; bzk garbage
- - - - - - 0x01F5A2 07:F592: 8F        .byte $8F   ; 
- - - - - - 0x01F5A3 07:F593: 7F        .byte $7F   ; 


; bzk garbage
- - - - - - 0x01F5A4 07:F594: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01F5B0 07:F5A0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01F5C0 07:F5B0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01F5D0 07:F5C0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01F5E0 07:F5D0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01F5F0 07:F5E0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01F600 07:F5F0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 



loc_F600:
sub_F600:
C D 3 - - - 0x01F610 07:F600: AD 30 03  LDA ram_pos_X_lo
C - - - - - 0x01F613 07:F603: 85 02     STA ram_0002
C - - - - - 0x01F615 07:F605: AD 40 03  LDA ram_pos_X_hi
C - - - - - 0x01F618 07:F608: 85 03     STA ram_0003
C - - - - - 0x01F61A 07:F60A: BD 00 04  LDA ram_0400_obj,X
C - - - - - 0x01F61D 07:F60D: 09 40     ORA #$40
C - - - - - 0x01F61F 07:F60F: 9D 00 04  STA ram_0400_obj,X
C - - - - - 0x01F622 07:F612: 20 87 F8  JSR sub_F887_move_object_right
C - - - - - 0x01F625 07:F615: E0 00     CPX #$00
C - - - - - 0x01F627 07:F617: D0 1D     BNE bra_F636
C - - - - - 0x01F629 07:F619: 20 61 FA  JSR sub_FA61
C - - - - - 0x01F62C 07:F61C: 90 18     BCC bra_F636
C - - - - - 0x01F62E 07:F61E: 20 9B E6  JSR sub_E69B
C - - - - - 0x01F631 07:F621: AD 30 03  LDA ram_pos_X_lo
C - - - - - 0x01F634 07:F624: 38        SEC
C - - - - - 0x01F635 07:F625: E5 02     SBC ram_0002
C - - - - - 0x01F637 07:F627: 85 02     STA ram_0002
C - - - - - 0x01F639 07:F629: AD 40 03  LDA ram_pos_X_hi
C - - - - - 0x01F63C 07:F62C: E5 03     SBC ram_0003
C - - - - - 0x01F63E 07:F62E: 05 02     ORA ram_0002
C - - - - - 0x01F640 07:F630: B0 04     BCS bra_F636
C - - - - - 0x01F642 07:F632: C8        INY
C - - - - - 0x01F643 07:F633: 4C B0 F6  JMP loc_F6B0
bra_F636:
loc_F636:
C D 3 - - - 0x01F646 07:F636: 20 DF E3  JSR sub_E3DF
C - - - - - 0x01F649 07:F639: 18        CLC
C - - - - - 0x01F64A 07:F63A: A5 10     LDA ram_0010
C - - - - - 0x01F64C 07:F63C: 29 10     AND #$10
C - - - - - 0x01F64E 07:F63E: D0 03     BNE bra_F643
C - - - - - 0x01F650 07:F640: 4C C3 F6  JMP loc_F6C3
bra_F643:
C - - - - - 0x01F653 07:F643: 20 9B E6  JSR sub_E69B
C - - - - - 0x01F656 07:F646: E0 00     CPX #$00
C - - - - - 0x01F658 07:F648: F0 02     BEQ bra_F64C
bra_F64A:
C - - - - - 0x01F65A 07:F64A: 38        SEC
C - - - - - 0x01F65B 07:F64B: 60        RTS
bra_F64C:
C - - - - - 0x01F65C 07:F64C: A0 06     LDY #$06
C - - - - - 0x01F65E 07:F64E: 20 DF E3  JSR sub_E3DF
C - - - - - 0x01F661 07:F651: A5 42     LDA ram_0042
C - - - - - 0x01F663 07:F653: C9 60     CMP #$60
C - - - - - 0x01F665 07:F655: F0 17     BEQ bra_F66E
C - - - - - 0x01F667 07:F657: C9 80     CMP #$80
C - - - - - 0x01F669 07:F659: F0 13     BEQ bra_F66E
C - - - - - 0x01F66B 07:F65B: A5 43     LDA ram_0043
C - - - - - 0x01F66D 07:F65D: C9 A0     CMP #$A0
C - - - - - 0x01F66F 07:F65F: F0 04     BEQ bra_F665
C - - - - - 0x01F671 07:F661: C9 C0     CMP #$C0
C - - - - - 0x01F673 07:F663: D0 E5     BNE bra_F64A
bra_F665:
C - - - - - 0x01F675 07:F665: A9 01     LDA #$01
C - - - - - 0x01F677 07:F667: 85 11     STA ram_0011
C - - - - - 0x01F679 07:F669: 20 EF E6  JSR sub_E6EF
C - - - - - 0x01F67C 07:F66C: 38        SEC
C - - - - - 0x01F67D 07:F66D: 60        RTS
bra_F66E:
C - - - - - 0x01F67E 07:F66E: A9 01     LDA #$01
C - - - - - 0x01F680 07:F670: 20 D3 E6  JSR sub_E6D3
C - - - - - 0x01F683 07:F673: 38        SEC
C - - - - - 0x01F684 07:F674: 60        RTS



loc_F675:
sub_F675:
C D 3 - - - 0x01F685 07:F675: AD 30 03  LDA ram_pos_X_lo
C - - - - - 0x01F688 07:F678: 85 02     STA ram_0002
C - - - - - 0x01F68A 07:F67A: AD 40 03  LDA ram_pos_X_hi
C - - - - - 0x01F68D 07:F67D: 85 03     STA ram_0003
C - - - - - 0x01F68F 07:F67F: BD 00 04  LDA ram_0400_obj,X
C - - - - - 0x01F692 07:F682: 29 BF     AND #$BF
C - - - - - 0x01F694 07:F684: 9D 00 04  STA ram_0400_obj,X
C - - - - - 0x01F697 07:F687: 20 A5 F8  JSR sub_F8A5_move_object_left
C - - - - - 0x01F69A 07:F68A: E0 00     CPX #$00
C - - - - - 0x01F69C 07:F68C: D0 22     BNE bra_F6B0
C - - - - - 0x01F69E 07:F68E: 20 61 FA  JSR sub_FA61
C - - - - - 0x01F6A1 07:F691: 90 1D     BCC bra_F6B0
C - - - - - 0x01F6A3 07:F693: A5 12     LDA ram_0012
C - - - - - 0x01F6A5 07:F695: 18        CLC
C - - - - - 0x01F6A6 07:F696: 20 BE E6  JSR sub_E6BE
C - - - - - 0x01F6A9 07:F699: AD 30 03  LDA ram_pos_X_lo
C - - - - - 0x01F6AC 07:F69C: 38        SEC
C - - - - - 0x01F6AD 07:F69D: E5 02     SBC ram_0002
C - - - - - 0x01F6AF 07:F69F: 85 02     STA ram_0002
C - - - - - 0x01F6B1 07:F6A1: AD 40 03  LDA ram_pos_X_hi
C - - - - - 0x01F6B4 07:F6A4: E5 03     SBC ram_0003
C - - - - - 0x01F6B6 07:F6A6: 05 02     ORA ram_0002
C - - - - - 0x01F6B8 07:F6A8: F0 06     BEQ bra_F6B0
C - - - - - 0x01F6BA 07:F6AA: 90 04     BCC bra_F6B0
C - - - - - 0x01F6BC 07:F6AC: 88        DEY
C - - - - - 0x01F6BD 07:F6AD: 4C 36 F6  JMP loc_F636
bra_F6B0:
loc_F6B0:
C D 3 - - - 0x01F6C0 07:F6B0: 20 DF E3  JSR sub_E3DF
C - - - - - 0x01F6C3 07:F6B3: 18        CLC
C - - - - - 0x01F6C4 07:F6B4: A5 10     LDA ram_0010
C - - - - - 0x01F6C6 07:F6B6: 29 10     AND #$10
C - - - - - 0x01F6C8 07:F6B8: F0 09     BEQ bra_F6C3
C - - - - - 0x01F6CA 07:F6BA: 20 B7 E6  JSR sub_E6B7
C - - - - - 0x01F6CD 07:F6BD: E0 00     CPX #$00
C - - - - - 0x01F6CF 07:F6BF: F0 8B     BEQ bra_F64C
C - - - - - 0x01F6D1 07:F6C1: 38        SEC
C - - - - - 0x01F6D2 07:F6C2: 60        RTS
bra_F6C3:
loc_F6C3:
C D 3 - - - 0x01F6D3 07:F6C3: E0 00     CPX #$00
C - - - - - 0x01F6D5 07:F6C5: D0 14     BNE bra_F6DB
C - - - - - 0x01F6D7 07:F6C7: A5 42     LDA ram_0042
C - - - - - 0x01F6D9 07:F6C9: C9 60     CMP #$60
C - - - - - 0x01F6DB 07:F6CB: F0 23     BEQ bra_F6F0
C - - - - - 0x01F6DD 07:F6CD: C9 80     CMP #$80
C - - - - - 0x01F6DF 07:F6CF: F0 0C     BEQ bra_F6DD
C - - - - - 0x01F6E1 07:F6D1: A5 43     LDA ram_0043
C - - - - - 0x01F6E3 07:F6D3: C9 A0     CMP #$A0
C - - - - - 0x01F6E5 07:F6D5: F0 2F     BEQ bra_F706
C - - - - - 0x01F6E7 07:F6D7: C9 C0     CMP #$C0
C - - - - - 0x01F6E9 07:F6D9: F0 3C     BEQ bra_F717
bra_F6DB:
C - - - - - 0x01F6EB 07:F6DB: 18        CLC
C - - - - - 0x01F6EC 07:F6DC: 60        RTS
bra_F6DD:
C - - - - - 0x01F6ED 07:F6DD: A5 06     LDA ram_0006
C - - - - - 0x01F6EF 07:F6DF: 29 0F     AND #$0F
C - - - - - 0x01F6F1 07:F6E1: 85 00     STA ram_0000
C - - - - - 0x01F6F3 07:F6E3: A5 12     LDA ram_0012
C - - - - - 0x01F6F5 07:F6E5: 49 0F     EOR #$0F
C - - - - - 0x01F6F7 07:F6E7: 29 0F     AND #$0F
C - - - - - 0x01F6F9 07:F6E9: 38        SEC
C - - - - - 0x01F6FA 07:F6EA: E5 00     SBC ram_0000
C - - - - - 0x01F6FC 07:F6EC: 90 ED     BCC bra_F6DB
C - - - - - 0x01F6FE 07:F6EE: B0 0F     BCS bra_F6FF   ; jmp
bra_F6F0:
C - - - - - 0x01F700 07:F6F0: A5 06     LDA ram_0006
C - - - - - 0x01F702 07:F6F2: 29 0F     AND #$0F
C - - - - - 0x01F704 07:F6F4: 85 00     STA ram_0000
C - - - - - 0x01F706 07:F6F6: A5 12     LDA ram_0012
C - - - - - 0x01F708 07:F6F8: 29 0F     AND #$0F
C - - - - - 0x01F70A 07:F6FA: 38        SEC
C - - - - - 0x01F70B 07:F6FB: E5 00     SBC ram_0000
C - - - - - 0x01F70D 07:F6FD: 90 DC     BCC bra_F6DB
bra_F6FF:
C - - - - - 0x01F70F 07:F6FF: 85 11     STA ram_0011
C - - - - - 0x01F711 07:F701: 20 D3 E6  JSR sub_E6D3
C - - - - - 0x01F714 07:F704: 38        SEC
C - - - - - 0x01F715 07:F705: 60        RTS
bra_F706:
C - - - - - 0x01F716 07:F706: A5 11     LDA ram_0011
C - - - - - 0x01F718 07:F708: 29 0F     AND #$0F
C - - - - - 0x01F71A 07:F70A: 85 00     STA ram_0000
C - - - - - 0x01F71C 07:F70C: A5 12     LDA ram_0012
C - - - - - 0x01F71E 07:F70E: 29 0F     AND #$0F
C - - - - - 0x01F720 07:F710: 38        SEC
C - - - - - 0x01F721 07:F711: E5 00     SBC ram_0000
C - - - - - 0x01F723 07:F713: B0 C6     BCS bra_F6DB
C - - - - - 0x01F725 07:F715: 90 11     BCC bra_F728
bra_F717:
C - - - - - 0x01F727 07:F717: A5 11     LDA ram_0011
C - - - - - 0x01F729 07:F719: 29 0F     AND #$0F
C - - - - - 0x01F72B 07:F71B: 85 00     STA ram_0000
C - - - - - 0x01F72D 07:F71D: A5 12     LDA ram_0012
C - - - - - 0x01F72F 07:F71F: 49 0F     EOR #$0F
C - - - - - 0x01F731 07:F721: 29 0F     AND #$0F
C - - - - - 0x01F733 07:F723: 38        SEC
C - - - - - 0x01F734 07:F724: E5 00     SBC ram_0000
C - - - - - 0x01F736 07:F726: B0 B3     BCS bra_F6DB
bra_F728:
C - - - - - 0x01F738 07:F728: 49 FF     EOR #$FF
C - - - - - 0x01F73A 07:F72A: 69 01     ADC #$01
C - - - - - 0x01F73C 07:F72C: 85 11     STA ram_0011
C - - - - - 0x01F73E 07:F72E: 20 EF E6  JSR sub_E6EF
C - - - - - 0x01F741 07:F731: 38        SEC
C - - - - - 0x01F742 07:F732: 60        RTS



sub_F733:
loc_F733:
sub_0x01F743:
C D 3 - - - 0x01F743 07:F733: AD 60 03  LDA ram_pos_Y_lo
C - - - - - 0x01F746 07:F736: 38        SEC
C - - - - - 0x01F747 07:F737: E5 FA     SBC ram_scroll_Y_lo
C - - - - - 0x01F749 07:F739: 85 02     STA ram_0002
C - - - - - 0x01F74B 07:F73B: B0 04     BCS bra_F741
C - - - - - 0x01F74D 07:F73D: E9 0F     SBC #$0F
C - - - - - 0x01F74F 07:F73F: 85 02     STA ram_0002
bra_F741:
C - - - - - 0x01F751 07:F741: 20 EB F8  JSR sub_F8EB_move_object_up
C - - - - - 0x01F754 07:F744: E0 00     CPX #$00
C - - - - - 0x01F756 07:F746: D0 20     BNE bra_F768
C - - - - - 0x01F758 07:F748: 20 09 FA  JSR sub_FA09
C - - - - - 0x01F75B 07:F74B: 90 1B     BCC bra_F768
C - - - - - 0x01F75D 07:F74D: A5 11     LDA ram_0011
C - - - - - 0x01F75F 07:F74F: 18        CLC
C - - - - - 0x01F760 07:F750: 20 D4 E6  JSR sub_E6D4
C - - - - - 0x01F763 07:F753: AD 60 03  LDA ram_pos_Y_lo
C - - - - - 0x01F766 07:F756: 38        SEC
C - - - - - 0x01F767 07:F757: E5 FA     SBC ram_scroll_Y_lo
C - - - - - 0x01F769 07:F759: B0 02     BCS bra_F75D
C - - - - - 0x01F76B 07:F75B: E9 0F     SBC #$0F
bra_F75D:
C - - - - - 0x01F76D 07:F75D: 38        SEC
C - - - - - 0x01F76E 07:F75E: E5 02     SBC ram_0002
C - - - - - 0x01F770 07:F760: F0 06     BEQ bra_F768
C - - - - - 0x01F772 07:F762: 90 04     BCC bra_F768
C - - - - - 0x01F774 07:F764: 88        DEY
C - - - - - 0x01F775 07:F765: 4C E3 F7  JMP loc_F7E3
bra_F768:
loc_F768:
C D 3 - - - 0x01F778 07:F768: 20 7F E2  JSR sub_E27F
C - - - - - 0x01F77B 07:F76B: 18        CLC
C - - - - - 0x01F77C 07:F76C: A5 10     LDA ram_0010
C - - - - - 0x01F77E 07:F76E: 29 10     AND #$10
C - - - - - 0x01F780 07:F770: F0 05     BEQ bra_F777
C - - - - - 0x01F782 07:F772: 20 CD E6  JSR sub_E6CD
C - - - - - 0x01F785 07:F775: 38        SEC
C - - - - - 0x01F786 07:F776: 60        RTS
bra_F777:
C - - - - - 0x01F787 07:F777: A4 05     LDY ram_0005
C - - - - - 0x01F789 07:F779: B9 41 00  LDA ram_0041,Y
C - - - - - 0x01F78C 07:F77C: C9 60     CMP #$60
C - - - - - 0x01F78E 07:F77E: F0 19     BEQ bra_F799
C - - - - - 0x01F790 07:F780: A5 42     LDA ram_0042
C - - - - - 0x01F792 07:F782: C9 80     CMP #$80
C - - - - - 0x01F794 07:F784: D0 29     BNE bra_F7AF
C - - - - - 0x01F796 07:F786: A5 11     LDA ram_0011
C - - - - - 0x01F798 07:F788: 29 0F     AND #$0F
C - - - - - 0x01F79A 07:F78A: 85 00     STA ram_0000
C - - - - - 0x01F79C 07:F78C: A5 06     LDA ram_0006
C - - - - - 0x01F79E 07:F78E: 49 0F     EOR #$0F
C - - - - - 0x01F7A0 07:F790: 29 0F     AND #$0F
C - - - - - 0x01F7A2 07:F792: 38        SEC
C - - - - - 0x01F7A3 07:F793: E5 00     SBC ram_0000
C - - - - - 0x01F7A5 07:F795: 90 18     BCC bra_F7AF
C - - - - - 0x01F7A7 07:F797: B0 0F     BCS bra_F7A8   ; jmp
bra_F799:
C - - - - - 0x01F7A9 07:F799: A5 11     LDA ram_0011
C - - - - - 0x01F7AB 07:F79B: 29 0F     AND #$0F
C - - - - - 0x01F7AD 07:F79D: 85 00     STA ram_0000
C - - - - - 0x01F7AF 07:F79F: A5 12     LDA ram_0012
C - - - - - 0x01F7B1 07:F7A1: 29 0F     AND #$0F
C - - - - - 0x01F7B3 07:F7A3: 38        SEC
C - - - - - 0x01F7B4 07:F7A4: E5 00     SBC ram_0000
C - - - - - 0x01F7B6 07:F7A6: 90 07     BCC bra_F7AF
bra_F7A8:
C - - - - - 0x01F7B8 07:F7A8: 85 11     STA ram_0011
C - - - - - 0x01F7BA 07:F7AA: 20 D3 E6  JSR sub_E6D3
C - - - - - 0x01F7BD 07:F7AD: 38        SEC
C - - - - - 0x01F7BE 07:F7AE: 60        RTS
bra_F7AF:
C - - - - - 0x01F7BF 07:F7AF: 18        CLC
C - - - - - 0x01F7C0 07:F7B0: 60        RTS



sub_F7B1:
loc_F7B1:
C D 3 - - - 0x01F7C1 07:F7B1: AD 60 03  LDA ram_pos_Y_lo
C - - - - - 0x01F7C4 07:F7B4: 38        SEC
C - - - - - 0x01F7C5 07:F7B5: E5 FA     SBC ram_scroll_Y_lo
C - - - - - 0x01F7C7 07:F7B7: 85 02     STA ram_0002
C - - - - - 0x01F7C9 07:F7B9: B0 04     BCS bra_F7BF
C - - - - - 0x01F7CB 07:F7BB: E9 0F     SBC #$0F
C - - - - - 0x01F7CD 07:F7BD: 85 02     STA ram_0002
bra_F7BF:
C - - - - - 0x01F7CF 07:F7BF: 20 C3 F8  JSR sub_F8C3_move_object_down
C - - - - - 0x01F7D2 07:F7C2: E0 00     CPX #$00
C - - - - - 0x01F7D4 07:F7C4: D0 1D     BNE bra_F7E3
C - - - - - 0x01F7D6 07:F7C6: 20 09 FA  JSR sub_FA09
C - - - - - 0x01F7D9 07:F7C9: 90 18     BCC bra_F7E3
C - - - - - 0x01F7DB 07:F7CB: 20 EF E6  JSR sub_E6EF
C - - - - - 0x01F7DE 07:F7CE: AD 60 03  LDA ram_pos_Y_lo
C - - - - - 0x01F7E1 07:F7D1: 38        SEC
C - - - - - 0x01F7E2 07:F7D2: E5 FA     SBC ram_scroll_Y_lo
C - - - - - 0x01F7E4 07:F7D4: B0 02     BCS bra_F7D8
C - - - - - 0x01F7E6 07:F7D6: E9 0F     SBC #$0F
bra_F7D8:
C - - - - - 0x01F7E8 07:F7D8: 38        SEC
C - - - - - 0x01F7E9 07:F7D9: E5 02     SBC ram_0002
C - - - - - 0x01F7EB 07:F7DB: F0 06     BEQ bra_F7E3
C - - - - - 0x01F7ED 07:F7DD: B0 04     BCS bra_F7E3
C - - - - - 0x01F7EF 07:F7DF: C8        INY
C - - - - - 0x01F7F0 07:F7E0: 4C 68 F7  JMP loc_F768
bra_F7E3:
loc_F7E3:
C D 3 - - - 0x01F7F3 07:F7E3: 20 7F E2  JSR sub_E27F
C - - - - - 0x01F7F6 07:F7E6: 18        CLC
C - - - - - 0x01F7F7 07:F7E7: A5 10     LDA ram_0010
C - - - - - 0x01F7F9 07:F7E9: 29 10     AND #$10
C - - - - - 0x01F7FB 07:F7EB: F0 05     BEQ bra_F7F2
C - - - - - 0x01F7FD 07:F7ED: 20 EF E6  JSR sub_E6EF
C - - - - - 0x01F800 07:F7F0: 38        SEC
C - - - - - 0x01F801 07:F7F1: 60        RTS
bra_F7F2:
C - - - - - 0x01F802 07:F7F2: A4 05     LDY ram_0005
C - - - - - 0x01F804 07:F7F4: B9 41 00  LDA ram_0041,Y
C - - - - - 0x01F807 07:F7F7: C9 C0     CMP #$C0
C - - - - - 0x01F809 07:F7F9: F0 17     BEQ bra_F812
C - - - - - 0x01F80B 07:F7FB: A5 42     LDA ram_0042
C - - - - - 0x01F80D 07:F7FD: C9 A0     CMP #$A0
C - - - - - 0x01F80F 07:F7FF: D0 2D     BNE bra_F82E_RTS
C - - - - - 0x01F811 07:F801: A5 11     LDA ram_0011
C - - - - - 0x01F813 07:F803: 29 0F     AND #$0F
C - - - - - 0x01F815 07:F805: 85 00     STA ram_0000
C - - - - - 0x01F817 07:F807: A5 12     LDA ram_0012
C - - - - - 0x01F819 07:F809: 29 0F     AND #$0F
C - - - - - 0x01F81B 07:F80B: 38        SEC
C - - - - - 0x01F81C 07:F80C: E5 00     SBC ram_0000
C - - - - - 0x01F81E 07:F80E: 90 13     BCC bra_F823
C - - - - - 0x01F820 07:F810: B0 1C     BCS bra_F82E_RTS   ; jmp
bra_F812:
C - - - - - 0x01F822 07:F812: A5 11     LDA ram_0011
C - - - - - 0x01F824 07:F814: 29 0F     AND #$0F
C - - - - - 0x01F826 07:F816: 85 00     STA ram_0000
C - - - - - 0x01F828 07:F818: A5 06     LDA ram_0006
C - - - - - 0x01F82A 07:F81A: 49 0F     EOR #$0F
C - - - - - 0x01F82C 07:F81C: 29 0F     AND #$0F
C - - - - - 0x01F82E 07:F81E: 38        SEC
C - - - - - 0x01F82F 07:F81F: E5 00     SBC ram_0000
C - - - - - 0x01F831 07:F821: B0 0B     BCS bra_F82E_RTS
bra_F823:
C - - - - - 0x01F833 07:F823: 49 FF     EOR #$FF
C - - - - - 0x01F835 07:F825: 69 01     ADC #$01
C - - - - - 0x01F837 07:F827: 85 11     STA ram_0011
C - - - - - 0x01F839 07:F829: 20 EF E6  JSR sub_E6EF
C - - - - - 0x01F83C 07:F82C: 38        SEC
C - - - - - 0x01F83D 07:F82D: 60        RTS
bra_F82E_RTS:
C - - - - - 0x01F83E 07:F82E: 60        RTS



sub_F82F:
sub_0x01F83F:
C - - - - - 0x01F83F 07:F82F: BD B0 03  LDA ram_spd_Y_hi,X
C - - - - - 0x01F842 07:F832: 10 3B     BPL bra_F86F
C - - - - - 0x01F844 07:F834: BD 70 03  LDA ram_pos_Y_hi,X
C - - - - - 0x01F847 07:F837: 85 10     STA ram_0010
C - - - - - 0x01F849 07:F839: 20 22 F9  JSR sub_F922
C - - - - - 0x01F84C 07:F83C: E0 00     CPX #$00
C - - - - - 0x01F84E 07:F83E: F0 1B     BEQ bra_F85B
C - - - - - 0x01F850 07:F840: A5 50     LDA ram_substage
C - - - - - 0x01F852 07:F842: 29 C0     AND #$C0
C - - - - - 0x01F854 07:F844: F0 08     BEQ bra_F84E_horisontal
C - - - - - 0x01F856 07:F846: 30 13     BMI bra_F85B    ; if vertical up
; if vertical down
C - - - - - 0x01F858 07:F848: A5 52     LDA ram_0052
C - - - - - 0x01F85A 07:F84A: C5 51     CMP ram_scroll_hi_max
C - - - - - 0x01F85C 07:F84C: D0 0D     BNE bra_F85B
bra_F84E_horisontal:
C - - - - - 0x01F85E 07:F84E: A5 10     LDA ram_0010
C - - - - - 0x01F860 07:F850: DD 70 03  CMP ram_pos_Y_hi,X
C - - - - - 0x01F863 07:F853: F0 06     BEQ bra_F85B
C - - - - - 0x01F865 07:F855: A9 00     LDA #$00
C - - - - - 0x01F867 07:F857: 85 10     STA ram_0010
C - - - - - 0x01F869 07:F859: F0 03     BEQ bra_F85E    ; jmp
bra_F85B:
C - - - - - 0x01F86B 07:F85B: 20 7F E2  JSR sub_E27F
bra_F85E:
C - - - - - 0x01F86E 07:F85E: 20 70 F9  JSR sub_F970
C - - - - - 0x01F871 07:F861: A5 10     LDA ram_0010
C - - - - - 0x01F873 07:F863: 29 10     AND #$10
C - - - - - 0x01F875 07:F865: F0 1E     BEQ bra_F885
C - - - - - 0x01F877 07:F867: 20 EF E6  JSR sub_E6EF
C - - - - - 0x01F87A 07:F86A: 20 99 F9  JSR sub_F999
C - - - - - 0x01F87D 07:F86D: 38        SEC
C - - - - - 0x01F87E 07:F86E: 60        RTS
bra_F86F:
C - - - - - 0x01F87F 07:F86F: C8        INY
C - - - - - 0x01F880 07:F870: 20 4A F9  JSR sub_F94A
C - - - - - 0x01F883 07:F873: 20 7F E2  JSR sub_E27F
C - - - - - 0x01F886 07:F876: 20 70 F9  JSR sub_F970
C - - - - - 0x01F889 07:F879: A5 10     LDA ram_0010
C - - - - - 0x01F88B 07:F87B: 29 10     AND #$10
C - - - - - 0x01F88D 07:F87D: F0 06     BEQ bra_F885
C - - - - - 0x01F88F 07:F87F: 20 CD E6  JSR sub_E6CD
C - - - - - 0x01F892 07:F882: 20 99 F9  JSR sub_F999
bra_F885:
C - - - - - 0x01F895 07:F885: 18        CLC
C - - - - - 0x01F896 07:F886: 60        RTS



sub_F887_move_object_right:
loc_F887_move_object_right:
C D 3 - - - 0x01F897 07:F887: BD 20 03  LDA ram_pos_X_fr,X
C - - - - - 0x01F89A 07:F88A: 18        CLC
C - - - - - 0x01F89B 07:F88B: 7D 80 03  ADC ram_spd_X_lo,X
C - - - - - 0x01F89E 07:F88E: 9D 20 03  STA ram_pos_X_fr,X
C - - - - - 0x01F8A1 07:F891: BD 30 03  LDA ram_pos_X_lo,X
C - - - - - 0x01F8A4 07:F894: 7D 90 03  ADC ram_spd_X_hi,X
C - - - - - 0x01F8A7 07:F897: 9D 30 03  STA ram_pos_X_lo,X
C - - - - - 0x01F8AA 07:F89A: 90 08     BCC bra_F8A4_RTS
C - - - - - 0x01F8AC 07:F89C: BD 40 03  LDA ram_pos_X_hi,X
C - - - - - 0x01F8AF 07:F89F: 69 00     ADC #$00
C - - - - - 0x01F8B1 07:F8A1: 9D 40 03  STA ram_pos_X_hi,X
bra_F8A4_RTS:
C - - - - - 0x01F8B4 07:F8A4: 60        RTS



sub_F8A5_move_object_left:
loc_F8A5_move_object_left:
C D 3 - - - 0x01F8B5 07:F8A5: BD 20 03  LDA ram_pos_X_fr,X
C - - - - - 0x01F8B8 07:F8A8: 38        SEC
C - - - - - 0x01F8B9 07:F8A9: FD 80 03  SBC ram_spd_X_lo,X
C - - - - - 0x01F8BC 07:F8AC: 9D 20 03  STA ram_pos_X_fr,X
C - - - - - 0x01F8BF 07:F8AF: BD 30 03  LDA ram_pos_X_lo,X
C - - - - - 0x01F8C2 07:F8B2: FD 90 03  SBC ram_spd_X_hi,X
C - - - - - 0x01F8C5 07:F8B5: 9D 30 03  STA ram_pos_X_lo,X
C - - - - - 0x01F8C8 07:F8B8: B0 08     BCS bra_F8C2_RTS
C - - - - - 0x01F8CA 07:F8BA: BD 40 03  LDA ram_pos_X_hi,X
C - - - - - 0x01F8CD 07:F8BD: E9 00     SBC #$00
C - - - - - 0x01F8CF 07:F8BF: 9D 40 03  STA ram_pos_X_hi,X
bra_F8C2_RTS:
C - - - - - 0x01F8D2 07:F8C2: 60        RTS



sub_F8C3_move_object_down:
loc_F8C3_move_object_down:
sub_0x01F8D3_move_object_down:
C D 3 - - - 0x01F8D3 07:F8C3: BD 50 03  LDA ram_pos_Y_fr,X
C - - - - - 0x01F8D6 07:F8C6: 18        CLC
C - - - - - 0x01F8D7 07:F8C7: 7D A0 03  ADC ram_spd_Y_lo,X
C - - - - - 0x01F8DA 07:F8CA: 9D 50 03  STA ram_pos_Y_fr,X
C - - - - - 0x01F8DD 07:F8CD: BD 60 03  LDA ram_pos_Y_lo,X
C - - - - - 0x01F8E0 07:F8D0: 7D B0 03  ADC ram_spd_Y_hi,X
C - - - - - 0x01F8E3 07:F8D3: 9D 60 03  STA ram_pos_Y_lo,X
C - - - - - 0x01F8E6 07:F8D6: C9 F0     CMP #$F0
C - - - - - 0x01F8E8 07:F8D8: 90 10     BCC bra_F8EA_RTS
C - - - - - 0x01F8EA 07:F8DA: 69 0F     ADC #$0F
C - - - - - 0x01F8EC 07:F8DC: 9D 60 03  STA ram_pos_Y_lo,X
C - - - - - 0x01F8EF 07:F8DF: A5 50     LDA ram_substage
C - - - - - 0x01F8F1 07:F8E1: 10 04     BPL bra_F8E7
C - - - - - 0x01F8F3 07:F8E3: DE 70 03  DEC ram_pos_Y_hi,X
C - - - - - 0x01F8F6 07:F8E6: 60        RTS
bra_F8E7:
C - - - - - 0x01F8F7 07:F8E7: FE 70 03  INC ram_pos_Y_hi,X
bra_F8EA_RTS:
C - - - - - 0x01F8FA 07:F8EA: 60        RTS



sub_F8EB_move_object_up:
loc_F8EB_move_object_up:
sub_0x01F8FB_move_object_up:
C D 3 - - - 0x01F8FB 07:F8EB: BD 50 03  LDA ram_pos_Y_fr,X
C - - - - - 0x01F8FE 07:F8EE: 38        SEC
C - - - - - 0x01F8FF 07:F8EF: FD A0 03  SBC ram_spd_Y_lo,X
C - - - - - 0x01F902 07:F8F2: 9D 50 03  STA ram_pos_Y_fr,X
C - - - - - 0x01F905 07:F8F5: BD 60 03  LDA ram_pos_Y_lo,X
C - - - - - 0x01F908 07:F8F8: FD B0 03  SBC ram_spd_Y_hi,X
C - - - - - 0x01F90B 07:F8FB: 9D 60 03  STA ram_pos_Y_lo,X
C - - - - - 0x01F90E 07:F8FE: B0 10     BCS bra_F910_RTS
C - - - - - 0x01F910 07:F900: E9 0F     SBC #$0F
C - - - - - 0x01F912 07:F902: 9D 60 03  STA ram_pos_Y_lo,X
C - - - - - 0x01F915 07:F905: A5 50     LDA ram_substage
C - - - - - 0x01F917 07:F907: 10 04     BPL bra_F90D
C - - - - - 0x01F919 07:F909: FE 70 03  INC ram_pos_Y_hi,X
C - - - - - 0x01F91C 07:F90C: 60        RTS
bra_F90D:
C - - - - - 0x01F91D 07:F90D: DE 70 03  DEC ram_pos_Y_hi,X
bra_F910_RTS:
C - - - - - 0x01F920 07:F910: 60        RTS



sub_F911:
sub_0x01F921:
loc_0x01F921:
C D 3 - - - 0x01F921 07:F911: BD B0 03  LDA ram_spd_Y_hi,X
C - - - - - 0x01F924 07:F914: 10 06     BPL bra_F91C
C - - - - - 0x01F926 07:F916: 20 22 F9  JSR sub_F922
C - - - - - 0x01F929 07:F919: 4C 70 F9  JMP loc_F970
bra_F91C:
C - - - - - 0x01F92C 07:F91C: 20 4A F9  JSR sub_F94A
C - - - - - 0x01F92F 07:F91F: 4C 70 F9  JMP loc_F970



sub_F922:
C - - - - - 0x01F932 07:F922: BD 50 03  LDA ram_pos_Y_fr,X
C - - - - - 0x01F935 07:F925: 38        SEC
C - - - - - 0x01F936 07:F926: FD A0 03  SBC ram_spd_Y_lo,X
C - - - - - 0x01F939 07:F929: 9D 50 03  STA ram_pos_Y_fr,X
C - - - - - 0x01F93C 07:F92C: BD 60 03  LDA ram_pos_Y_lo,X
C - - - - - 0x01F93F 07:F92F: FD B0 03  SBC ram_spd_Y_hi,X
C - - - - - 0x01F942 07:F932: 9D 60 03  STA ram_pos_Y_lo,X
C - - - - - 0x01F945 07:F935: C9 F0     CMP #$F0
C - - - - - 0x01F947 07:F937: 90 10     BCC bra_F949_RTS
C - - - - - 0x01F949 07:F939: 69 0F     ADC #$0F
C - - - - - 0x01F94B 07:F93B: 9D 60 03  STA ram_pos_Y_lo,X
C - - - - - 0x01F94E 07:F93E: A5 50     LDA ram_substage
C - - - - - 0x01F950 07:F940: 10 04     BPL bra_F946
C - - - - - 0x01F952 07:F942: DE 70 03  DEC ram_pos_Y_hi,X
C - - - - - 0x01F955 07:F945: 60        RTS
bra_F946:
C - - - - - 0x01F956 07:F946: FE 70 03  INC ram_pos_Y_hi,X
bra_F949_RTS:
C - - - - - 0x01F959 07:F949: 60        RTS



sub_F94A:
C - - - - - 0x01F95A 07:F94A: BD 50 03  LDA ram_pos_Y_fr,X
C - - - - - 0x01F95D 07:F94D: 38        SEC
C - - - - - 0x01F95E 07:F94E: FD A0 03  SBC ram_spd_Y_lo,X
C - - - - - 0x01F961 07:F951: 9D 50 03  STA ram_pos_Y_fr,X
C - - - - - 0x01F964 07:F954: BD 60 03  LDA ram_pos_Y_lo,X
C - - - - - 0x01F967 07:F957: FD B0 03  SBC ram_spd_Y_hi,X
C - - - - - 0x01F96A 07:F95A: 9D 60 03  STA ram_pos_Y_lo,X
C - - - - - 0x01F96D 07:F95D: B0 10     BCS bra_F96F_RTS
C - - - - - 0x01F96F 07:F95F: E9 0F     SBC #$0F
C - - - - - 0x01F971 07:F961: 9D 60 03  STA ram_pos_Y_lo,X
C - - - - - 0x01F974 07:F964: A5 50     LDA ram_substage
C - - - - - 0x01F976 07:F966: 10 04     BPL bra_F96C
C - - - - - 0x01F978 07:F968: FE 70 03  INC ram_pos_Y_hi,X
C - - - - - 0x01F97B 07:F96B: 60        RTS
bra_F96C:
C - - - - - 0x01F97C 07:F96C: DE 70 03  DEC ram_pos_Y_hi,X
bra_F96F_RTS:
C - - - - - 0x01F97F 07:F96F: 60        RTS



sub_F970:
loc_F970:
C D 3 - - - 0x01F980 07:F970: BD A0 03  LDA ram_spd_Y_lo,X
C - - - - - 0x01F983 07:F973: 38        SEC
C - - - - - 0x01F984 07:F974: E5 99     SBC ram_0099
C - - - - - 0x01F986 07:F976: 9D A0 03  STA ram_spd_Y_lo,X
C - - - - - 0x01F989 07:F979: BD B0 03  LDA ram_spd_Y_hi,X
C - - - - - 0x01F98C 07:F97C: E9 00     SBC #$00
C - - - - - 0x01F98E 07:F97E: 9D B0 03  STA ram_spd_Y_hi,X
C - - - - - 0x01F991 07:F981: 10 15     BPL bra_F998_RTS
C - - - - - 0x01F993 07:F983: C9 F9     CMP #$F9
C - - - - - 0x01F995 07:F985: B0 11     BCS bra_F998_RTS
C - - - - - 0x01F997 07:F987: BD 30 04  LDA ram_0430_obj,X
C - - - - - 0x01F99A 07:F98A: C9 13     CMP #$13
C - - - - - 0x01F99C 07:F98C: F0 0A     BEQ bra_F998_RTS
C - - - - - 0x01F99E 07:F98E: A9 F9     LDA #> $F900
C - - - - - 0x01F9A0 07:F990: 9D B0 03  STA ram_spd_Y_hi,X
C - - - - - 0x01F9A3 07:F993: A9 00     LDA #< $F900
C - - - - - 0x01F9A5 07:F995: 9D A0 03  STA ram_spd_Y_lo,X
bra_F998_RTS:
C - - - - - 0x01F9A8 07:F998: 60        RTS



sub_F999:
sub_0x01F9A9:
C - - - - - 0x01F9A9 07:F999: A9 C0     LDA #< $FFC0
C - - - - - 0x01F9AB 07:F99B: 9D A0 03  STA ram_spd_Y_lo,X
C - - - - - 0x01F9AE 07:F99E: A9 FF     LDA #> $FFC0
C - - - - - 0x01F9B0 07:F9A0: 9D B0 03  STA ram_spd_Y_hi,X
C - - - - - 0x01F9B3 07:F9A3: 60        RTS


; bzk garbage
- - - - - - 0x01F9B4 07:F9A4: 38        SEC
- - - - - - 0x01F9B5 07:F9A5: BD 30 03  LDA ram_pos_X_lo,X
- - - - - - 0x01F9B8 07:F9A8: E5 10     SBC ram_0010
- - - - - - 0x01F9BA 07:F9AA: 9D 30 03  STA ram_pos_X_lo,X
- - - - - - 0x01F9BD 07:F9AD: BD 40 03  LDA ram_pos_X_hi,X
- - - - - - 0x01F9C0 07:F9B0: E9 00     SBC #$00
- - - - - - 0x01F9C2 07:F9B2: 9D 40 03  STA ram_pos_X_hi,X
- - - - - - 0x01F9C5 07:F9B5: 4C C9 F9  JMP loc_F9C9
- - - - - - 0x01F9C8 07:F9B8: 18        CLC
- - - - - - 0x01F9C9 07:F9B9: BD 30 03  LDA ram_pos_X_lo,X
- - - - - - 0x01F9CC 07:F9BC: 65 10     ADC ram_0010
- - - - - - 0x01F9CE 07:F9BE: 9D 30 03  STA ram_pos_X_lo,X
- - - - - - 0x01F9D1 07:F9C1: BD 40 03  LDA ram_pos_X_hi,X
- - - - - - 0x01F9D4 07:F9C4: 69 00     ADC #$00
- - - - - - 0x01F9D6 07:F9C6: 9D 40 03  STA ram_pos_X_hi,X
loc_F9C9:
- - - - - - 0x01F9D9 07:F9C9: 38        SEC
- - - - - - 0x01F9DA 07:F9CA: A5 02     LDA ram_0002
- - - - - - 0x01F9DC 07:F9CC: FD 30 03  SBC ram_pos_X_lo,X
- - - - - - 0x01F9DF 07:F9CF: A5 03     LDA ram_0003
- - - - - - 0x01F9E1 07:F9D1: FD 40 03  SBC ram_pos_X_hi,X
- - - - - - 0x01F9E4 07:F9D4: 60        RTS


; bzk garbage
- - - - - - 0x01F9E5 07:F9D5: 38        SEC
- - - - - - 0x01F9E6 07:F9D6: BD 60 03  LDA ram_pos_Y_lo,X
- - - - - - 0x01F9E9 07:F9D9: E5 11     SBC ram_0011
- - - - - - 0x01F9EB 07:F9DB: 9D 60 03  STA ram_pos_Y_lo,X
- - - - - - 0x01F9EE 07:F9DE: B0 1D     BCS bra_F9FD
- - - - - - 0x01F9F0 07:F9E0: DE 70 03  DEC ram_pos_Y_hi,X
- - - - - - 0x01F9F3 07:F9E3: 4C FD F9  JMP loc_F9FD
- - - - - - 0x01F9F6 07:F9E6: 18        CLC
- - - - - - 0x01F9F7 07:F9E7: BD 60 03  LDA ram_pos_Y_lo,X
- - - - - - 0x01F9FA 07:F9EA: 65 11     ADC ram_0011
- - - - - - 0x01F9FC 07:F9EC: 9D 60 03  STA ram_pos_Y_lo,X
- - - - - - 0x01F9FF 07:F9EF: B0 09     BCS bra_F9FA
- - - - - - 0x01FA01 07:F9F1: C9 F0     CMP #$F0
- - - - - - 0x01FA03 07:F9F3: 90 08     BCC bra_F9FD
- - - - - - 0x01FA05 07:F9F5: 69 0F     ADC #$0F
- - - - - - 0x01FA07 07:F9F7: 9D 60 03  STA ram_pos_Y_lo,X
bra_F9FA:
- - - - - - 0x01FA0A 07:F9FA: FE 70 03  INC ram_pos_Y_hi,X
bra_F9FD:
loc_F9FD:
- - - - - - 0x01FA0D 07:F9FD: 38        SEC
- - - - - - 0x01FA0E 07:F9FE: A5 02     LDA ram_0002
- - - - - - 0x01FA10 07:FA00: FD 60 03  SBC ram_pos_Y_lo,X
- - - - - - 0x01FA13 07:FA03: A5 03     LDA ram_0003
- - - - - - 0x01FA15 07:FA05: FD 70 03  SBC ram_pos_Y_hi,X
- - - - - - 0x01FA18 07:FA08: 60        RTS



sub_FA09:
C - - - - - 0x01FA19 07:FA09: BD 00 04  LDA ram_0400_obj,X
C - - - - - 0x01FA1C 07:FA0C: 10 51     BPL bra_FA5F
C - - - - - 0x01FA1E 07:FA0E: 84 00     STY ram_0000
C - - - - - 0x01FA20 07:FA10: A0 0F     LDY #$0F
C - - - - - 0x01FA22 07:FA12: 84 01     STY ram_0001
bra_FA14_loop:
C - - - - - 0x01FA24 07:FA14: B9 00 03  LDA ram_obj_flags,Y
C - - - - - 0x01FA27 07:FA17: 10 3C     BPL bra_FA55
C - - - - - 0x01FA29 07:FA19: B9 00 04  LDA ram_0400_obj,Y
C - - - - - 0x01FA2C 07:FA1C: 10 37     BPL bra_FA55
C - - - - - 0x01FA2E 07:FA1E: B9 C0 03  LDA ram_03C0_obj,Y
C - - - - - 0x01FA31 07:FA21: 10 32     BPL bra_FA55
C - - - - - 0x01FA33 07:FA23: B9 00 04  LDA ram_0400_obj,Y
C - - - - - 0x01FA36 07:FA26: 29 04     AND #$04
C - - - - - 0x01FA38 07:FA28: D0 2B     BNE bra_FA55
C - - - - - 0x01FA3A 07:FA2A: 20 B6 FA  JSR sub_FAB6
C - - - - - 0x01FA3D 07:FA2D: 20 CF FA  JSR sub_FACF
C - - - - - 0x01FA40 07:FA30: B9 C0 03  LDA ram_03C0_obj,Y
C - - - - - 0x01FA43 07:FA33: 29 1F     AND #$1F
C - - - - - 0x01FA45 07:FA35: A8        TAY
C - - - - - 0x01FA46 07:FA36: A5 12     LDA ram_0012
C - - - - - 0x01FA48 07:FA38: D9 80 FB  CMP tbl_FB80,Y
C - - - - - 0x01FA4B 07:FA3B: B0 18     BCS bra_FA55
C - - - - - 0x01FA4D 07:FA3D: 38        SEC
C - - - - - 0x01FA4E 07:FA3E: B9 60 FB  LDA tbl_FB60,Y
C - - - - - 0x01FA51 07:FA41: E5 11     SBC ram_0011
C - - - - - 0x01FA53 07:FA43: F0 10     BEQ bra_FA55
C - - - - - 0x01FA55 07:FA45: 90 0E     BCC bra_FA55
C - - - - - 0x01FA57 07:FA47: 85 11     STA ram_0011
C - - - - - 0x01FA59 07:FA49: C9 08     CMP #$08
C - - - - - 0x01FA5B 07:FA4B: 90 04     BCC bra_FA51
C - - - - - 0x01FA5D 07:FA4D: A9 08     LDA #$08
C - - - - - 0x01FA5F 07:FA4F: 85 11     STA ram_0011
bra_FA51:
C - - - - - 0x01FA61 07:FA51: A4 00     LDY ram_0000
C - - - - - 0x01FA63 07:FA53: 38        SEC
C - - - - - 0x01FA64 07:FA54: 60        RTS
bra_FA55:
C - - - - - 0x01FA65 07:FA55: C6 01     DEC ram_0001
C - - - - - 0x01FA67 07:FA57: A4 01     LDY ram_0001
C - - - - - 0x01FA69 07:FA59: C0 02     CPY #$02
C - - - - - 0x01FA6B 07:FA5B: D0 B7     BNE bra_FA14_loop
C - - - - - 0x01FA6D 07:FA5D: A4 00     LDY ram_0000
bra_FA5F:
C - - - - - 0x01FA6F 07:FA5F: 18        CLC
C - - - - - 0x01FA70 07:FA60: 60        RTS



sub_FA61:
C - - - - - 0x01FA71 07:FA61: BD 00 04  LDA ram_0400_obj,X
C - - - - - 0x01FA74 07:FA64: 10 4E     BPL bra_FAB4
C - - - - - 0x01FA76 07:FA66: 84 00     STY ram_0000
C - - - - - 0x01FA78 07:FA68: A0 0F     LDY #$0F
C - - - - - 0x01FA7A 07:FA6A: 84 01     STY ram_0001
bra_FA6C_loop:
C - - - - - 0x01FA7C 07:FA6C: B9 00 03  LDA ram_obj_flags,Y
C - - - - - 0x01FA7F 07:FA6F: 10 39     BPL bra_FAAA
C - - - - - 0x01FA81 07:FA71: B9 00 04  LDA ram_0400_obj,Y
C - - - - - 0x01FA84 07:FA74: 10 34     BPL bra_FAAA
C - - - - - 0x01FA86 07:FA76: 29 04     AND #$04
C - - - - - 0x01FA88 07:FA78: D0 30     BNE bra_FAAA
C - - - - - 0x01FA8A 07:FA7A: B9 C0 03  LDA ram_03C0_obj,Y
C - - - - - 0x01FA8D 07:FA7D: 10 2B     BPL bra_FAAA
C - - - - - 0x01FA8F 07:FA7F: 20 B6 FA  JSR sub_FAB6
C - - - - - 0x01FA92 07:FA82: 20 CF FA  JSR sub_FACF
C - - - - - 0x01FA95 07:FA85: B9 C0 03  LDA ram_03C0_obj,Y
C - - - - - 0x01FA98 07:FA88: 29 1F     AND #$1F
C - - - - - 0x01FA9A 07:FA8A: A8        TAY
C - - - - - 0x01FA9B 07:FA8B: A5 11     LDA ram_0011
C - - - - - 0x01FA9D 07:FA8D: D9 60 FB  CMP tbl_FB60,Y
C - - - - - 0x01FAA0 07:FA90: B0 18     BCS bra_FAAA
C - - - - - 0x01FAA2 07:FA92: 38        SEC
C - - - - - 0x01FAA3 07:FA93: B9 80 FB  LDA tbl_FB80,Y
C - - - - - 0x01FAA6 07:FA96: E5 12     SBC ram_0012
C - - - - - 0x01FAA8 07:FA98: F0 10     BEQ bra_FAAA
C - - - - - 0x01FAAA 07:FA9A: 90 0E     BCC bra_FAAA
C - - - - - 0x01FAAC 07:FA9C: 85 12     STA ram_0012
C - - - - - 0x01FAAE 07:FA9E: C9 08     CMP #$08
C - - - - - 0x01FAB0 07:FAA0: 90 04     BCC bra_FAA6
C - - - - - 0x01FAB2 07:FAA2: A9 08     LDA #$08
C - - - - - 0x01FAB4 07:FAA4: 85 12     STA ram_0012
bra_FAA6:
C - - - - - 0x01FAB6 07:FAA6: A4 00     LDY ram_0000
C - - - - - 0x01FAB8 07:FAA8: 38        SEC
C - - - - - 0x01FAB9 07:FAA9: 60        RTS
bra_FAAA:
C - - - - - 0x01FABA 07:FAAA: C6 01     DEC ram_0001
C - - - - - 0x01FABC 07:FAAC: A4 01     LDY ram_0001
C - - - - - 0x01FABE 07:FAAE: C0 02     CPY #$02
C - - - - - 0x01FAC0 07:FAB0: D0 BA     BNE bra_FA6C_loop
C - - - - - 0x01FAC2 07:FAB2: A4 00     LDY ram_0000
bra_FAB4:
C - - - - - 0x01FAC4 07:FAB4: 18        CLC
C - - - - - 0x01FAC5 07:FAB5: 60        RTS



sub_FAB6:
C - - - - - 0x01FAC6 07:FAB6: AD 30 03  LDA ram_pos_X_lo
C - - - - - 0x01FAC9 07:FAB9: 38        SEC
C - - - - - 0x01FACA 07:FABA: F9 30 03  SBC ram_pos_X_lo,Y
C - - - - - 0x01FACD 07:FABD: 48        PHA
C - - - - - 0x01FACE 07:FABE: AD 40 03  LDA ram_pos_X_hi
C - - - - - 0x01FAD1 07:FAC1: F9 40 03  SBC ram_pos_X_hi,Y
C - - - - - 0x01FAD4 07:FAC4: 68        PLA
C - - - - - 0x01FAD5 07:FAC5: B0 05     BCS bra_FACC
C - - - - - 0x01FAD7 07:FAC7: 49 FF     EOR #$FF
C - - - - - 0x01FAD9 07:FAC9: 69 01     ADC #$01
C - - - - - 0x01FADB 07:FACB: 18        CLC
bra_FACC:
C - - - - - 0x01FADC 07:FACC: 85 12     STA ram_0012
C - - - - - 0x01FADE 07:FACE: 60        RTS



sub_FACF:
C - - - - - 0x01FADF 07:FACF: B9 60 03  LDA ram_pos_Y_lo,Y
C - - - - - 0x01FAE2 07:FAD2: 38        SEC
C - - - - - 0x01FAE3 07:FAD3: E5 FA     SBC ram_scroll_Y_lo
C - - - - - 0x01FAE5 07:FAD5: B0 02     BCS bra_FAD9
C - - - - - 0x01FAE7 07:FAD7: E9 0F     SBC #$0F
bra_FAD9:
C - - - - - 0x01FAE9 07:FAD9: 85 11     STA ram_0011
C - - - - - 0x01FAEB 07:FADB: AD 60 03  LDA ram_pos_Y_lo
C - - - - - 0x01FAEE 07:FADE: 38        SEC
C - - - - - 0x01FAEF 07:FADF: E5 FA     SBC ram_scroll_Y_lo
C - - - - - 0x01FAF1 07:FAE1: B0 02     BCS bra_FAE5
C - - - - - 0x01FAF3 07:FAE3: E9 0F     SBC #$0F
bra_FAE5:
C - - - - - 0x01FAF5 07:FAE5: 38        SEC
C - - - - - 0x01FAF6 07:FAE6: E5 11     SBC ram_0011
C - - - - - 0x01FAF8 07:FAE8: B0 05     BCS bra_FAEF
C - - - - - 0x01FAFA 07:FAEA: 49 FF     EOR #$FF
C - - - - - 0x01FAFC 07:FAEC: 69 01     ADC #$01
C - - - - - 0x01FAFE 07:FAEE: 18        CLC
bra_FAEF:
C - - - - - 0x01FAFF 07:FAEF: 85 11     STA ram_0011
C - - - - - 0x01FB01 07:FAF1: 60        RTS



sub_0x01FB02:
C - - - - - 0x01FB02 07:FAF2: A5 30     LDA ram_ariel_status
C - - - - - 0x01FB04 07:FAF4: C9 07     CMP #$07
C - - - - - 0x01FB06 07:FAF6: B0 66     BCS bra_FB5E
; con_ariel_damaged  con_ariel_waiting_for_boss  con_ariel_spawning
C - - - - - 0x01FB08 07:FAF8: BD 00 04  LDA ram_0400_obj,X
C - - - - - 0x01FB0B 07:FAFB: 10 61     BPL bra_FB5E
C - - - - - 0x01FB0D 07:FAFD: 29 04     AND #$04
C - - - - - 0x01FB0F 07:FAFF: D0 5D     BNE bra_FB5E
C - - - - - 0x01FB11 07:FB01: BD C0 03  LDA ram_03C0_obj,X
C - - - - - 0x01FB14 07:FB04: 29 1F     AND #$1F
C - - - - - 0x01FB16 07:FB06: A8        TAY
C - - - - - 0x01FB17 07:FB07: AD 30 03  LDA ram_pos_X_lo
C - - - - - 0x01FB1A 07:FB0A: 38        SEC
C - - - - - 0x01FB1B 07:FB0B: FD 30 03  SBC ram_pos_X_lo,X
C - - - - - 0x01FB1E 07:FB0E: 48        PHA
C - - - - - 0x01FB1F 07:FB0F: AD 40 03  LDA ram_pos_X_hi
C - - - - - 0x01FB22 07:FB12: FD 40 03  SBC ram_pos_X_hi,X
C - - - - - 0x01FB25 07:FB15: 68        PLA
C - - - - - 0x01FB26 07:FB16: B0 04     BCS bra_FB1C
C - - - - - 0x01FB28 07:FB18: 49 FF     EOR #$FF
C - - - - - 0x01FB2A 07:FB1A: 69 01     ADC #$01
bra_FB1C:
C - - - - - 0x01FB2C 07:FB1C: D9 80 FB  CMP tbl_FB80,Y
C - - - - - 0x01FB2F 07:FB1F: B0 3D     BCS bra_FB5E
C - - - - - 0x01FB31 07:FB21: BD 60 03  LDA ram_pos_Y_lo,X
C - - - - - 0x01FB34 07:FB24: 38        SEC
C - - - - - 0x01FB35 07:FB25: E5 FA     SBC ram_scroll_Y_lo
C - - - - - 0x01FB37 07:FB27: B0 03     BCS bra_FB2C
C - - - - - 0x01FB39 07:FB29: E9 0F     SBC #$0F
C - - - - - 0x01FB3B 07:FB2B: 18        CLC
bra_FB2C:
C - - - - - 0x01FB3C 07:FB2C: 85 00     STA ram_0000
C - - - - - 0x01FB3E 07:FB2E: BD 70 03  LDA ram_pos_Y_hi,X
C - - - - - 0x01FB41 07:FB31: E5 FB     SBC ram_scroll_Y_hi
C - - - - - 0x01FB43 07:FB33: 29 01     AND #$01
C - - - - - 0x01FB45 07:FB35: D0 27     BNE bra_FB5E
C - - - - - 0x01FB47 07:FB37: AD 60 03  LDA ram_pos_Y_lo
C - - - - - 0x01FB4A 07:FB3A: 38        SEC
C - - - - - 0x01FB4B 07:FB3B: E5 FA     SBC ram_scroll_Y_lo
C - - - - - 0x01FB4D 07:FB3D: B0 03     BCS bra_FB42
C - - - - - 0x01FB4F 07:FB3F: E9 0F     SBC #$0F
C - - - - - 0x01FB51 07:FB41: 18        CLC
bra_FB42:
C - - - - - 0x01FB52 07:FB42: 85 1F     STA ram_001F
C - - - - - 0x01FB54 07:FB44: AD 70 03  LDA ram_pos_Y_hi
C - - - - - 0x01FB57 07:FB47: E5 FB     SBC ram_scroll_Y_hi
C - - - - - 0x01FB59 07:FB49: 29 01     AND #$01
C - - - - - 0x01FB5B 07:FB4B: D0 11     BNE bra_FB5E
C - - - - - 0x01FB5D 07:FB4D: A5 1F     LDA ram_001F
C - - - - - 0x01FB5F 07:FB4F: 38        SEC
C - - - - - 0x01FB60 07:FB50: E5 00     SBC ram_0000
C - - - - - 0x01FB62 07:FB52: B0 04     BCS bra_FB58
C - - - - - 0x01FB64 07:FB54: 49 FF     EOR #$FF
C - - - - - 0x01FB66 07:FB56: 69 01     ADC #$01
bra_FB58:
C - - - - - 0x01FB68 07:FB58: D9 60 FB  CMP tbl_FB60,Y
C - - - - - 0x01FB6B 07:FB5B: B0 01     BCS bra_FB5E
C - - - - - 0x01FB6D 07:FB5D: 60        RTS
bra_FB5E:
C - - - - - 0x01FB6E 07:FB5E: 38        SEC
C - - - - - 0x01FB6F 07:FB5F: 60        RTS



tbl_FB60:
tbl_0x01FB70:
- D 3 - - - 0x01FB70 07:FB60: 10        .byte $10   ; 00
- D 3 - - - 0x01FB71 07:FB61: 0C        .byte $0C   ; 01
- D 3 - - - 0x01FB72 07:FB62: 14        .byte $14   ; 02
- D 3 - - - 0x01FB73 07:FB63: 18        .byte $18   ; 03
- D 3 - - - 0x01FB74 07:FB64: 0C        .byte $0C   ; 04
- D 3 - - - 0x01FB75 07:FB65: 10        .byte $10   ; 05
- D 3 - - - 0x01FB76 07:FB66: 10        .byte $10   ; 06
- D 3 - - - 0x01FB77 07:FB67: 18        .byte $18   ; 07
- D 3 - - - 0x01FB78 07:FB68: 28        .byte $28   ; 08
- D 3 - - - 0x01FB79 07:FB69: 20        .byte $20   ; 09
- D 3 - - - 0x01FB7A 07:FB6A: 20        .byte $20   ; 0A
- - - - - - 0x01FB7B 07:FB6B: 08        .byte $08   ; 0B
- - - - - - 0x01FB7C 07:FB6C: 08        .byte $08   ; 0C
- - - - - - 0x01FB7D 07:FB6D: 08        .byte $08   ; 0D
- - - - - - 0x01FB7E 07:FB6E: 08        .byte $08   ; 0E
- - - - - - 0x01FB7F 07:FB6F: 08        .byte $08   ; 0F
- - - - - - 0x01FB80 07:FB70: 08        .byte $08   ; 10
- - - - - - 0x01FB81 07:FB71: 08        .byte $08   ; 11
- - - - - - 0x01FB82 07:FB72: 08        .byte $08   ; 12
- - - - - - 0x01FB83 07:FB73: 08        .byte $08   ; 13
- - - - - - 0x01FB84 07:FB74: 08        .byte $08   ; 14
- - - - - - 0x01FB85 07:FB75: 08        .byte $08   ; 15
- - - - - - 0x01FB86 07:FB76: 08        .byte $08   ; 16
- - - - - - 0x01FB87 07:FB77: 08        .byte $08   ; 17
- - - - - - 0x01FB88 07:FB78: 08        .byte $08   ; 18
- - - - - - 0x01FB89 07:FB79: 08        .byte $08   ; 19
- - - - - - 0x01FB8A 07:FB7A: 08        .byte $08   ; 1A
- - - - - - 0x01FB8B 07:FB7B: 08        .byte $08   ; 1B
- - - - - - 0x01FB8C 07:FB7C: 08        .byte $08   ; 1C
- - - - - - 0x01FB8D 07:FB7D: 08        .byte $08   ; 1D
- - - - - - 0x01FB8E 07:FB7E: 08        .byte $08   ; 1E
- - - - - - 0x01FB8F 07:FB7F: 08        .byte $08   ; 1F



tbl_FB80:
tbl_0x01FB90:
- D 3 - - - 0x01FB90 07:FB80: 11        .byte $11   ; 00
- D 3 - - - 0x01FB91 07:FB81: 0D        .byte $0D   ; 01
- D 3 - - - 0x01FB92 07:FB82: 15        .byte $15   ; 02
- D 3 - - - 0x01FB93 07:FB83: 15        .byte $15   ; 03
- D 3 - - - 0x01FB94 07:FB84: 15        .byte $15   ; 04
- D 3 - - - 0x01FB95 07:FB85: 19        .byte $19   ; 05
- D 3 - - - 0x01FB96 07:FB86: 21        .byte $21   ; 06
- D 3 - - - 0x01FB97 07:FB87: 19        .byte $19   ; 07
- D 3 - - - 0x01FB98 07:FB88: 41        .byte $41   ; 08
- D 3 - - - 0x01FB99 07:FB89: 19        .byte $19   ; 09
- D 3 - - - 0x01FB9A 07:FB8A: 11        .byte $11   ; 0A
- - - - - - 0x01FB9B 07:FB8B: 09        .byte $09   ; 0B
- - - - - - 0x01FB9C 07:FB8C: 09        .byte $09   ; 0C
- - - - - - 0x01FB9D 07:FB8D: 09        .byte $09   ; 0D
- - - - - - 0x01FB9E 07:FB8E: 09        .byte $09   ; 0E
- - - - - - 0x01FB9F 07:FB8F: 09        .byte $09   ; 0F
- - - - - - 0x01FBA0 07:FB90: 09        .byte $09   ; 10
- - - - - - 0x01FBA1 07:FB91: 09        .byte $09   ; 11
- - - - - - 0x01FBA2 07:FB92: 09        .byte $09   ; 12
- - - - - - 0x01FBA3 07:FB93: 09        .byte $09   ; 13
- - - - - - 0x01FBA4 07:FB94: 09        .byte $09   ; 14
- - - - - - 0x01FBA5 07:FB95: 09        .byte $09   ; 15
- - - - - - 0x01FBA6 07:FB96: 09        .byte $09   ; 16
- - - - - - 0x01FBA7 07:FB97: 09        .byte $09   ; 17
- - - - - - 0x01FBA8 07:FB98: 09        .byte $09   ; 18
- - - - - - 0x01FBA9 07:FB99: 09        .byte $09   ; 19
- - - - - - 0x01FBAA 07:FB9A: 09        .byte $09   ; 1A
- - - - - - 0x01FBAB 07:FB9B: 09        .byte $09   ; 1B
- - - - - - 0x01FBAC 07:FB9C: 09        .byte $09   ; 1C
- - - - - - 0x01FBAD 07:FB9D: 09        .byte $09   ; 1D
- - - - - - 0x01FBAE 07:FB9E: 09        .byte $09   ; 1E
- - - - - - 0x01FBAF 07:FB9F: 09        .byte $09   ; 1F



sub_0x01FBB0:
C - - - - - 0x01FBB0 07:FBA0: E0 03     CPX #$03
C - - - - - 0x01FBB2 07:FBA2: 90 BA     BCC bra_FB5E
C - - - - - 0x01FBB4 07:FBA4: A0 02     LDY #$02
loc_FBA6:
C D 3 - - - 0x01FBB6 07:FBA6: 38        SEC
C - - - - - 0x01FBB7 07:FBA7: B9 00 03  LDA ram_obj_flags,Y
C - - - - - 0x01FBBA 07:FBAA: 30 03     BMI bra_FBAF
bra_FBAC:
C - - - - - 0x01FBBC 07:FBAC: 4C 3D FC  JMP loc_FC3D
bra_FBAF:
C - - - - - 0x01FBBF 07:FBAF: B9 00 04  LDA ram_0400_obj,Y
C - - - - - 0x01FBC2 07:FBB2: 10 F8     BPL bra_FBAC
C - - - - - 0x01FBC4 07:FBB4: BD 00 04  LDA ram_0400_obj,X
C - - - - - 0x01FBC7 07:FBB7: 10 F3     BPL bra_FBAC
C - - - - - 0x01FBC9 07:FBB9: 29 04     AND #$04
C - - - - - 0x01FBCB 07:FBBB: D0 EF     BNE bra_FBAC
C - - - - - 0x01FBCD 07:FBBD: B9 10 03  LDA ram_obj_id,Y
C - - - - - 0x01FBD0 07:FBC0: F0 7B     BEQ bra_FC3D    ; if con_obj_id_00
C - - - - - 0x01FBD2 07:FBC2: BD 10 03  LDA ram_obj_id,X
C - - - - - 0x01FBD5 07:FBC5: F0 76     BEQ bra_FC3D    ; if con_obj_id_00
C - - - - - 0x01FBD7 07:FBC7: C9 04     CMP #con_obj_id_sand_splashes_player
C - - - - - 0x01FBD9 07:FBC9: F0 72     BEQ bra_FC3D
C - - - - - 0x01FBDB 07:FBCB: C9 5C     CMP #con_obj_id_half_trapped_enemy
C - - - - - 0x01FBDD 07:FBCD: F0 6E     BEQ bra_FC3D
C - - - - - 0x01FBDF 07:FBCF: C9 5D     CMP #con_obj_id_swimming_bubbles
C - - - - - 0x01FBE1 07:FBD1: F0 6A     BEQ bra_FC3D
C - - - - - 0x01FBE3 07:FBD3: 84 00     STY ram_0000
C - - - - - 0x01FBE5 07:FBD5: BD C0 03  LDA ram_03C0_obj,X
C - - - - - 0x01FBE8 07:FBD8: 29 1F     AND #$1F
C - - - - - 0x01FBEA 07:FBDA: A8        TAY
C - - - - - 0x01FBEB 07:FBDB: B9 80 FB  LDA tbl_FB80,Y
C - - - - - 0x01FBEE 07:FBDE: 85 01     STA ram_0001
C - - - - - 0x01FBF0 07:FBE0: B9 60 FB  LDA tbl_FB60,Y
C - - - - - 0x01FBF3 07:FBE3: 85 02     STA ram_0002
C - - - - - 0x01FBF5 07:FBE5: C6 02     DEC ram_0002
C - - - - - 0x01FBF7 07:FBE7: A4 00     LDY ram_0000
C - - - - - 0x01FBF9 07:FBE9: B9 30 03  LDA ram_pos_X_lo,Y
C - - - - - 0x01FBFC 07:FBEC: 38        SEC
C - - - - - 0x01FBFD 07:FBED: FD 30 03  SBC ram_pos_X_lo,X
C - - - - - 0x01FC00 07:FBF0: 48        PHA
C - - - - - 0x01FC01 07:FBF1: B9 40 03  LDA ram_pos_X_hi,Y
C - - - - - 0x01FC04 07:FBF4: FD 40 03  SBC ram_pos_X_hi,X
C - - - - - 0x01FC07 07:FBF7: 68        PLA
C - - - - - 0x01FC08 07:FBF8: B0 04     BCS bra_FBFE
C - - - - - 0x01FC0A 07:FBFA: 49 FF     EOR #$FF
C - - - - - 0x01FC0C 07:FBFC: 69 01     ADC #$01
bra_FBFE:
C - - - - - 0x01FC0E 07:FBFE: C5 01     CMP ram_0001
C - - - - - 0x01FC10 07:FC00: B0 3B     BCS bra_FC3D
C - - - - - 0x01FC12 07:FC02: BD 60 03  LDA ram_pos_Y_lo,X
C - - - - - 0x01FC15 07:FC05: 38        SEC
C - - - - - 0x01FC16 07:FC06: E5 FA     SBC ram_scroll_Y_lo
C - - - - - 0x01FC18 07:FC08: B0 03     BCS bra_FC0D
C - - - - - 0x01FC1A 07:FC0A: E9 0F     SBC #$0F
C - - - - - 0x01FC1C 07:FC0C: 18        CLC
bra_FC0D:
C - - - - - 0x01FC1D 07:FC0D: 85 03     STA ram_0003
C - - - - - 0x01FC1F 07:FC0F: BD 70 03  LDA ram_pos_Y_hi,X
C - - - - - 0x01FC22 07:FC12: E5 FB     SBC ram_scroll_Y_hi
C - - - - - 0x01FC24 07:FC14: 29 01     AND #$01
C - - - - - 0x01FC26 07:FC16: D0 25     BNE bra_FC3D
C - - - - - 0x01FC28 07:FC18: B9 60 03  LDA ram_pos_Y_lo,Y
C - - - - - 0x01FC2B 07:FC1B: 38        SEC
C - - - - - 0x01FC2C 07:FC1C: E5 FA     SBC ram_scroll_Y_lo
C - - - - - 0x01FC2E 07:FC1E: B0 03     BCS bra_FC23
C - - - - - 0x01FC30 07:FC20: E9 0F     SBC #$0F
C - - - - - 0x01FC32 07:FC22: 18        CLC
bra_FC23:
C - - - - - 0x01FC33 07:FC23: 85 1F     STA ram_001F
C - - - - - 0x01FC35 07:FC25: B9 70 03  LDA ram_pos_Y_hi,Y
C - - - - - 0x01FC38 07:FC28: E5 FB     SBC ram_scroll_Y_hi
C - - - - - 0x01FC3A 07:FC2A: 29 01     AND #$01
C - - - - - 0x01FC3C 07:FC2C: D0 0F     BNE bra_FC3D
C - - - - - 0x01FC3E 07:FC2E: A5 1F     LDA ram_001F
C - - - - - 0x01FC40 07:FC30: 38        SEC
C - - - - - 0x01FC41 07:FC31: E5 03     SBC ram_0003
C - - - - - 0x01FC43 07:FC33: B0 04     BCS bra_FC39
C - - - - - 0x01FC45 07:FC35: 49 FF     EOR #$FF
C - - - - - 0x01FC47 07:FC37: 69 01     ADC #$01
bra_FC39:
C - - - - - 0x01FC49 07:FC39: C5 02     CMP ram_0002
C - - - - - 0x01FC4B 07:FC3B: 90 07     BCC bra_FC44_RTS
bra_FC3D:
loc_FC3D:
C D 3 - - - 0x01FC4D 07:FC3D: 88        DEY
C - - - - - 0x01FC4E 07:FC3E: F0 03     BEQ bra_FC43
C - - - - - 0x01FC50 07:FC40: 4C A6 FB  JMP loc_FBA6
bra_FC43:
C - - - - - 0x01FC53 07:FC43: 38        SEC
bra_FC44_RTS:
C - - - - - 0x01FC54 07:FC44: 60        RTS



loc_FC45:
sub_FC45:
sub_0x01FC55:
loc_0x01FC55:
C D 3 - - - 0x01FC55 07:FC45: 9D 30 04  STA ram_0430_obj,X
C - - - - - 0x01FC58 07:FC48: A9 00     LDA #$00
C - - - - - 0x01FC5A 07:FC4A: 9D 18 04  STA ram_animation_cnt,X
C - - - - - 0x01FC5D 07:FC4D: 9D 48 04  STA ram_0448,X
C - - - - - 0x01FC60 07:FC50: 60        RTS



sub_FC51:
sub_0x01FC61:
C - - - - - 0x01FC61 07:FC51: 99 30 04  STA ram_0430_obj,Y
C - - - - - 0x01FC64 07:FC54: A9 00     LDA #$00
C - - - - - 0x01FC66 07:FC56: 99 18 04  STA ram_animation_cnt,Y
C - - - - - 0x01FC69 07:FC59: 99 48 04  STA ram_0448,Y
C - - - - - 0x01FC6C 07:FC5C: 99 70 03  STA ram_pos_Y_hi,Y
C - - - - - 0x01FC6F 07:FC5F: BD 00 04  LDA ram_0400_obj,X
C - - - - - 0x01FC72 07:FC62: 29 40     AND #$40
C - - - - - 0x01FC74 07:FC64: 09 90     ORA #$90
C - - - - - 0x01FC76 07:FC66: 99 00 04  STA ram_0400_obj,Y
C - - - - - 0x01FC79 07:FC69: A9 80     LDA #$80
C - - - - - 0x01FC7B 07:FC6B: 99 00 03  STA ram_obj_flags,Y
C - - - - - 0x01FC7E 07:FC6E: 60        RTS



loc_0x01FC7F:
sub_0x01FC7F:
C D 3 - - - 0x01FC7F 07:FC6F: A9 01     LDA #$01
C - - - - - 0x01FC81 07:FC71: 9D D0 03  STA ram_direction,X
C - - - - - 0x01FC84 07:FC74: BD 30 03  LDA ram_pos_X_lo,X
C - - - - - 0x01FC87 07:FC77: 38        SEC
C - - - - - 0x01FC88 07:FC78: ED 30 03  SBC ram_pos_X_lo
C - - - - - 0x01FC8B 07:FC7B: BD 40 03  LDA ram_pos_X_hi,X
C - - - - - 0x01FC8E 07:FC7E: ED 40 03  SBC ram_pos_X_hi
C - - - - - 0x01FC91 07:FC81: 90 05     BCC bra_FC88_RTS
C - - - - - 0x01FC93 07:FC83: A9 02     LDA #$02
C - - - - - 0x01FC95 07:FC85: 9D D0 03  STA ram_direction,X
bra_FC88_RTS:
C - - - - - 0x01FC98 07:FC88: 60        RTS



sub_0x01FC99:
loc_0x01FC99:
C D 3 - - - 0x01FC99 07:FC89: BD D0 03  LDA ram_direction,X
C - - - - - 0x01FC9C 07:FC8C: 6A        ROR
C - - - - - 0x01FC9D 07:FC8D: 6A        ROR
C - - - - - 0x01FC9E 07:FC8E: 6A        ROR
C - - - - - 0x01FC9F 07:FC8F: 29 40     AND #$40
C - - - - - 0x01FCA1 07:FC91: 85 00     STA ram_0000
C - - - - - 0x01FCA3 07:FC93: BD 00 04  LDA ram_0400_obj,X
C - - - - - 0x01FCA6 07:FC96: 29 BF     AND #$BF
C - - - - - 0x01FCA8 07:FC98: 05 00     ORA ram_0000
C - - - - - 0x01FCAA 07:FC9A: 9D 00 04  STA ram_0400_obj,X
C - - - - - 0x01FCAD 07:FC9D: 60        RTS



sub_FC9E_play_music:
sub_0x01FCAE_play_music:
C - - - - - 0x01FCAE 07:FC9E: 85 D9     STA ram_music_id
sub_FCA0_play_sfx:
sub_0x01FCB0_play_sfx:
loc_0x01FCB0_play_sfx:
C D 3 - - - 0x01FCB0 07:FCA0: 86 00     STX ram_0000
C - - - - - 0x01FCB2 07:FCA2: A6 DA     LDX ram_queue_index_1
C - - - - - 0x01FCB4 07:FCA4: 85 01     STA ram_0001
C - - - - - 0x01FCB6 07:FCA6: B5 DC     LDA ram_sfx_queue,X
C - - - - - 0x01FCB8 07:FCA8: C9 88     CMP #$88
C - - - - - 0x01FCBA 07:FCAA: D0 0A     BNE bra_FCB6
C - - - - - 0x01FCBC 07:FCAC: A5 01     LDA ram_0001
C - - - - - 0x01FCBE 07:FCAE: 95 DC     STA ram_sfx_queue,X
C - - - - - 0x01FCC0 07:FCB0: E8        INX
C - - - - - 0x01FCC1 07:FCB1: 8A        TXA
C - - - - - 0x01FCC2 07:FCB2: 29 07     AND #$07
C - - - - - 0x01FCC4 07:FCB4: 85 DA     STA ram_queue_index_1
bra_FCB6:
C - - - - - 0x01FCC6 07:FCB6: A6 00     LDX ram_0000
C - - - - - 0x01FCC8 07:FCB8: 60        RTS



sub_FCB9:
sub_0x01FCC9:
C - - - - - 0x01FCC9 07:FCB9: 18        CLC
C - - - - - 0x01FCCA 07:FCBA: BD D0 03  LDA ram_direction,X
C - - - - - 0x01FCCD 07:FCBD: 29 03     AND #$03
C - - - - - 0x01FCCF 07:FCBF: F0 50     BEQ bra_FD11_RTS
C - - - - - 0x01FCD1 07:FCC1: 29 01     AND #$01
C - - - - - 0x01FCD3 07:FCC3: F0 03     BEQ bra_FCC8
C - - - - - 0x01FCD5 07:FCC5: 4C 00 F6  JMP loc_F600
bra_FCC8:
C - - - - - 0x01FCD8 07:FCC8: C8        INY
C - - - - - 0x01FCD9 07:FCC9: 4C 75 F6  JMP loc_F675



sub_0x01FCDC:
C - - - - - 0x01FCDC 07:FCCC: 18        CLC
C - - - - - 0x01FCDD 07:FCCD: BD D0 03  LDA ram_direction,X
C - - - - - 0x01FCE0 07:FCD0: 29 0C     AND #$0C
C - - - - - 0x01FCE2 07:FCD2: F0 3D     BEQ bra_FD11_RTS
C - - - - - 0x01FCE4 07:FCD4: 29 04     AND #$04
C - - - - - 0x01FCE6 07:FCD6: F0 03     BEQ bra_FCDB
C - - - - - 0x01FCE8 07:FCD8: 4C B1 F7  JMP loc_F7B1
bra_FCDB:
C - - - - - 0x01FCEB 07:FCDB: C8        INY
C - - - - - 0x01FCEC 07:FCDC: 4C 33 F7  JMP loc_F733



sub_0x01FCEF_move_object_X_axis:
loc_0x01FCEF_move_object_X_axis:
C D 3 - - - 0x01FCEF 07:FCDF: BD D0 03  LDA ram_direction,X
C - - - - - 0x01FCF2 07:FCE2: 29 03     AND #$03
C - - - - - 0x01FCF4 07:FCE4: F0 2B     BEQ bra_FD11_RTS
C - - - - - 0x01FCF6 07:FCE6: 29 01     AND #$01
C - - - - - 0x01FCF8 07:FCE8: F0 0B     BEQ bra_FCF5_move_left
; move right
C - - - - - 0x01FCFA 07:FCEA: BD 00 04  LDA ram_0400_obj,X
C - - - - - 0x01FCFD 07:FCED: 09 40     ORA #$40
C - - - - - 0x01FCFF 07:FCEF: 9D 00 04  STA ram_0400_obj,X
C - - - - - 0x01FD02 07:FCF2: 4C 87 F8  JMP loc_F887_move_object_right
bra_FCF5_move_left:
C - - - - - 0x01FD05 07:FCF5: BD 00 04  LDA ram_0400_obj,X
C - - - - - 0x01FD08 07:FCF8: 29 BF     AND #$BF
C - - - - - 0x01FD0A 07:FCFA: 9D 00 04  STA ram_0400_obj,X
C - - - - - 0x01FD0D 07:FCFD: 4C A5 F8  JMP loc_F8A5_move_object_left



loc_0x01FD10_move_object_Y_axis:
sub_0x01FD10_move_object_Y_axis:
C D 3 - - - 0x01FD10 07:FD00: BD D0 03  LDA ram_direction,X
C - - - - - 0x01FD13 07:FD03: 29 0C     AND #$0C
C - - - - - 0x01FD15 07:FD05: F0 0A     BEQ bra_FD11_RTS
C - - - - - 0x01FD17 07:FD07: 29 04     AND #$04
C - - - - - 0x01FD19 07:FD09: F0 03     BEQ bra_FD0E_move_up
; move down
C - - - - - 0x01FD1B 07:FD0B: 4C C3 F8  JMP loc_F8C3_move_object_down
bra_FD0E_move_up:
C - - - - - 0x01FD1E 07:FD0E: 4C EB F8  JMP loc_F8EB_move_object_up
bra_FD11_RTS:
C - - - - - 0x01FD21 07:FD11: 60        RTS



sub_FD12:
sub_0x01FD22:
C - - - - - 0x01FD22 07:FD12: BD 60 03  LDA ram_pos_Y_lo,X
C - - - - - 0x01FD25 07:FD15: 38        SEC
C - - - - - 0x01FD26 07:FD16: E5 FA     SBC ram_scroll_Y_lo
C - - - - - 0x01FD28 07:FD18: B0 02     BCS bra_FD1C
C - - - - - 0x01FD2A 07:FD1A: E9 0F     SBC #$0F
bra_FD1C:
C - - - - - 0x01FD2C 07:FD1C: 85 00     STA ram_0000
C - - - - - 0x01FD2E 07:FD1E: AD 60 03  LDA ram_pos_Y_lo
C - - - - - 0x01FD31 07:FD21: 38        SEC
C - - - - - 0x01FD32 07:FD22: E5 FA     SBC ram_scroll_Y_lo
C - - - - - 0x01FD34 07:FD24: B0 02     BCS bra_FD28
C - - - - - 0x01FD36 07:FD26: E9 0F     SBC #$0F
bra_FD28:
C - - - - - 0x01FD38 07:FD28: 38        SEC
C - - - - - 0x01FD39 07:FD29: E5 00     SBC ram_0000
C - - - - - 0x01FD3B 07:FD2B: B0 05     BCS bra_FD32_RTS
C - - - - - 0x01FD3D 07:FD2D: 49 FF     EOR #$FF
C - - - - - 0x01FD3F 07:FD2F: 69 01     ADC #$01
C - - - - - 0x01FD41 07:FD31: 18        CLC
bra_FD32_RTS:
C - - - - - 0x01FD42 07:FD32: 60        RTS



sub_FD33:
sub_0x01FD43:
C - - - - - 0x01FD43 07:FD33: AD 30 03  LDA ram_pos_X_lo
C - - - - - 0x01FD46 07:FD36: 38        SEC
C - - - - - 0x01FD47 07:FD37: FD 30 03  SBC ram_pos_X_lo,X
C - - - - - 0x01FD4A 07:FD3A: 48        PHA
C - - - - - 0x01FD4B 07:FD3B: AD 40 03  LDA ram_pos_X_hi
C - - - - - 0x01FD4E 07:FD3E: FD 40 03  SBC ram_pos_X_hi,X
C - - - - - 0x01FD51 07:FD41: 68        PLA
C - - - - - 0x01FD52 07:FD42: B0 05     BCS bra_FD49_RTS
C - - - - - 0x01FD54 07:FD44: 49 FF     EOR #$FF
C - - - - - 0x01FD56 07:FD46: 69 01     ADC #$01
C - - - - - 0x01FD58 07:FD48: 18        CLC
bra_FD49_RTS:
C - - - - - 0x01FD59 07:FD49: 60        RTS



sub_FD4A:
sub_0x01FD5A:
C - - - - - 0x01FD5A 07:FD4A: A0 00     LDY #$00
C - - - - - 0x01FD5C 07:FD4C: 20 12 FD  JSR sub_FD12
C - - - - - 0x01FD5F 07:FD4F: B0 02     BCS bra_FD53
C - - - - - 0x01FD61 07:FD51: A0 04     LDY #$04
bra_FD53:
C - - - - - 0x01FD63 07:FD53: 85 00     STA ram_0000
C - - - - - 0x01FD65 07:FD55: 20 33 FD  JSR sub_FD33
C - - - - - 0x01FD68 07:FD58: B0 02     BCS bra_FD5C
C - - - - - 0x01FD6A 07:FD5A: C8        INY
C - - - - - 0x01FD6B 07:FD5B: C8        INY
bra_FD5C:
C - - - - - 0x01FD6C 07:FD5C: 85 01     STA ram_0001
C - - - - - 0x01FD6E 07:FD5E: C5 00     CMP ram_0000
C - - - - - 0x01FD70 07:FD60: B0 09     BCS bra_FD6B
C - - - - - 0x01FD72 07:FD62: 48        PHA
C - - - - - 0x01FD73 07:FD63: A5 00     LDA ram_0000
C - - - - - 0x01FD75 07:FD65: 85 01     STA ram_0001
C - - - - - 0x01FD77 07:FD67: 68        PLA
C - - - - - 0x01FD78 07:FD68: 85 00     STA ram_0000
C - - - - - 0x01FD7A 07:FD6A: C8        INY
bra_FD6B:
C - - - - - 0x01FD7B 07:FD6B: A9 00     LDA #$00
C - - - - - 0x01FD7D 07:FD6D: 85 02     STA ram_0002
C - - - - - 0x01FD7F 07:FD6F: A5 01     LDA ram_0001
C - - - - - 0x01FD81 07:FD71: 4A        LSR
C - - - - - 0x01FD82 07:FD72: 4A        LSR
C - - - - - 0x01FD83 07:FD73: C5 00     CMP ram_0000
C - - - - - 0x01FD85 07:FD75: B0 09     BCS bra_FD80
C - - - - - 0x01FD87 07:FD77: E6 02     INC ram_0002    ; 01
C - - - - - 0x01FD89 07:FD79: 0A        ASL
C - - - - - 0x01FD8A 07:FD7A: C5 00     CMP ram_0000
C - - - - - 0x01FD8C 07:FD7C: B0 02     BCS bra_FD80
C - - - - - 0x01FD8E 07:FD7E: E6 02     INC ram_0002    ; 02
bra_FD80:
C - - - - - 0x01FD90 07:FD80: 98        TYA
C - - - - - 0x01FD91 07:FD81: 0A        ASL
C - - - - - 0x01FD92 07:FD82: 0A        ASL
C - - - - - 0x01FD93 07:FD83: 18        CLC
C - - - - - 0x01FD94 07:FD84: 65 02     ADC ram_0002
C - - - - - 0x01FD96 07:FD86: A8        TAY
C - - - - - 0x01FD97 07:FD87: B9 8B FD  LDA tbl_FD8B,Y
C - - - - - 0x01FD9A 07:FD8A: 60        RTS



tbl_FD8B:
; 4th byte is a plceholder
- D 3 - - - 0x01FD9B 07:FD8B: 04        .byte $04, $05, $06, $04   ; 00
- D 3 - - - 0x01FD9F 07:FD8F: 08        .byte $08, $07, $06, $04   ; 01
- D 3 - - - 0x01FDA3 07:FD93: 0C        .byte $0C, $0B, $0A, $04   ; 02
- D 3 - - - 0x01FDA7 07:FD97: 08        .byte $08, $09, $0A, $04   ; 03
- D 3 - - - 0x01FDAB 07:FD9B: 04        .byte $04, $03, $02, $04   ; 04
- D 3 - - - 0x01FDAF 07:FD9F: 00        .byte $00, $01, $02, $04   ; 05
- D 3 - - - 0x01FDB3 07:FDA3: 0C        .byte $0C, $0D, $0E, $04   ; 06
- D 3 - - - 0x01FDB7 07:FDA7: 00        .byte $00, $0F, $0E, $04   ; 07



tbl_FDAB_direction:
; Right, Left, Down, Up
- D 3 - - - 0x01FDBB 07:FDAB: 08        .byte $08   ; 00 ---U
- D 3 - - - 0x01FDBC 07:FDAC: 09        .byte $09   ; 01 R--U
- D 3 - - - 0x01FDBD 07:FDAD: 09        .byte $09   ; 02 R--U
- D 3 - - - 0x01FDBE 07:FDAE: 09        .byte $09   ; 03 R--U
- D 3 - - - 0x01FDBF 07:FDAF: 01        .byte $01   ; 04 R---
- D 3 - - - 0x01FDC0 07:FDB0: 05        .byte $05   ; 05 R-D-
- D 3 - - - 0x01FDC1 07:FDB1: 05        .byte $05   ; 06 R-D-
- D 3 - - - 0x01FDC2 07:FDB2: 05        .byte $05   ; 07 R-D-
- D 3 - - - 0x01FDC3 07:FDB3: 04        .byte $04   ; 08 --D-
- D 3 - - - 0x01FDC4 07:FDB4: 06        .byte $06   ; 09 -LD-
- D 3 - - - 0x01FDC5 07:FDB5: 06        .byte $06   ; 0A -LD-
- D 3 - - - 0x01FDC6 07:FDB6: 06        .byte $06   ; 0B -LD-
- D 3 - - - 0x01FDC7 07:FDB7: 02        .byte $02   ; 0C -L--
- D 3 - - - 0x01FDC8 07:FDB8: 0A        .byte $0A   ; 0D -L-U
- D 3 - - - 0x01FDC9 07:FDB9: 0A        .byte $0A   ; 0E -L-U
- D 3 - - - 0x01FDCA 07:FDBA: 0A        .byte $0A   ; 0F -L-U




; bzk garbage
- - - - - - 0x01FDCB 07:FDBB: 20 4A FD  JSR sub_FD4A
- - - - - - 0x01FDCE 07:FDBE: 85 00     STA ram_0000
- - - - - - 0x01FDD0 07:FDC0: BD D0 03  LDA ram_direction,X
- - - - - - 0x01FDD3 07:FDC3: 18        CLC
- - - - - - 0x01FDD4 07:FDC4: 69 08     ADC #$08
- - - - - - 0x01FDD6 07:FDC6: 29 0F     AND #$0F
- - - - - - 0x01FDD8 07:FDC8: 38        SEC
- - - - - - 0x01FDD9 07:FDC9: E5 00     SBC ram_0000
- - - - - - 0x01FDDB 07:FDCB: 29 0F     AND #$0F
- - - - - - 0x01FDDD 07:FDCD: 38        SEC
- - - - - - 0x01FDDE 07:FDCE: E9 08     SBC #$08
- - - - - - 0x01FDE0 07:FDD0: F0 12     BEQ bra_FDE4_RTS
- - - - - - 0x01FDE2 07:FDD2: B0 05     BCS bra_FDD9
- - - - - - 0x01FDE4 07:FDD4: FE D0 03  INC ram_direction,X
- - - - - - 0x01FDE7 07:FDD7: D0 03     BNE bra_FDDC
bra_FDD9:
- - - - - - 0x01FDE9 07:FDD9: DE D0 03  DEC ram_direction,X
bra_FDDC:
- - - - - - 0x01FDEC 07:FDDC: BD D0 03  LDA ram_direction,X
- - - - - - 0x01FDEF 07:FDDF: 29 0F     AND #$0F
- - - - - - 0x01FDF1 07:FDE1: 9D D0 03  STA ram_direction,X
bra_FDE4_RTS:
- - - - - - 0x01FDF4 07:FDE4: 60        RTS



sub_0x01FDF5:
; A = 00-0F
; Y = 00 08 10
C - - - - - 0x01FDF5 07:FDE5: 85 00     STA ram_0000
C - - - - - 0x01FDF7 07:FDE7: 84 01     STY ram_0001
C - - - - - 0x01FDF9 07:FDE9: A8        TAY
C - - - - - 0x01FDFA 07:FDEA: B9 AB FD  LDA tbl_FDAB_direction,Y
C - - - - - 0x01FDFD 07:FDED: 9D D0 03  STA ram_direction,X
C - - - - - 0x01FE00 07:FDF0: A5 00     LDA ram_0000
C - - - - - 0x01FE02 07:FDF2: 29 07     AND #$07
C - - - - - 0x01FE04 07:FDF4: 05 01     ORA ram_0001
C - - - - - 0x01FE06 07:FDF6: A8        TAY
C - - - - - 0x01FE07 07:FDF7: B9 14 FE  LDA tbl_FE14_spd_lo,Y
C - - - - - 0x01FE0A 07:FDFA: 9D 80 03  STA ram_spd_X_lo,X
C - - - - - 0x01FE0D 07:FDFD: B9 2C FE  LDA tbl_FE2C_spd_hi,Y
C - - - - - 0x01FE10 07:FE00: 9D 90 03  STA ram_spd_X_hi,X
C - - - - - 0x01FE13 07:FE03: 98        TYA
C - - - - - 0x01FE14 07:FE04: 49 04     EOR #$04
C - - - - - 0x01FE16 07:FE06: A8        TAY
C - - - - - 0x01FE17 07:FE07: B9 14 FE  LDA tbl_FE14_spd_lo,Y
C - - - - - 0x01FE1A 07:FE0A: 9D A0 03  STA ram_spd_Y_lo,X
C - - - - - 0x01FE1D 07:FE0D: B9 2C FE  LDA tbl_FE2C_spd_hi,Y
C - - - - - 0x01FE20 07:FE10: 9D B0 03  STA ram_spd_Y_hi,X
C - - - - - 0x01FE23 07:FE13: 60        RTS



tbl_FE14_spd_lo:
; 00
- D 3 - - - 0x01FE24 07:FE14: 00        .byte < $0000   ; 00
- D 3 - - - 0x01FE25 07:FE15: C3        .byte < $00C3   ; 01
- D 3 - - - 0x01FE26 07:FE16: 6A        .byte < $016A   ; 02
- D 3 - - - 0x01FE27 07:FE17: D9        .byte < $01D9   ; 03
- D 3 - - - 0x01FE28 07:FE18: 00        .byte < $0200   ; 04
- D 3 - - - 0x01FE29 07:FE19: D9        .byte < $01D9   ; 05
- D 3 - - - 0x01FE2A 07:FE1A: 6A        .byte < $016A   ; 06
- D 3 - - - 0x01FE2B 07:FE1B: C3        .byte < $00C3   ; 07
; 08
- D 3 - - - 0x01FE2C 07:FE1C: 00        .byte < $0000   ; 00
- D 3 - - - 0x01FE2D 07:FE1D: 24        .byte < $0024   ; 01
- D 3 - - - 0x01FE2E 07:FE1E: 43        .byte < $0043   ; 02
- D 3 - - - 0x01FE2F 07:FE1F: 58        .byte < $0058   ; 03
- D 3 - - - 0x01FE30 07:FE20: 60        .byte < $0060   ; 04
- D 3 - - - 0x01FE31 07:FE21: 58        .byte < $0058   ; 05
- D 3 - - - 0x01FE32 07:FE22: 43        .byte < $0043   ; 06
- D 3 - - - 0x01FE33 07:FE23: 24        .byte < $0024   ; 07
; 10
- D 3 - - - 0x01FE34 07:FE24: 00        .byte < $0000   ; 00
- D 3 - - - 0x01FE35 07:FE25: 61        .byte < $0061   ; 01
- D 3 - - - 0x01FE36 07:FE26: B5        .byte < $00B5   ; 02
- D 3 - - - 0x01FE37 07:FE27: EC        .byte < $00EC   ; 03
- D 3 - - - 0x01FE38 07:FE28: 00        .byte < $0100   ; 04
- D 3 - - - 0x01FE39 07:FE29: EC        .byte < $00EC   ; 05
- D 3 - - - 0x01FE3A 07:FE2A: B5        .byte < $00B5   ; 06
- D 3 - - - 0x01FE3B 07:FE2B: 61        .byte < $0061   ; 07



tbl_FE2C_spd_hi:
; 00
- D 3 - - - 0x01FE3C 07:FE2C: 00        .byte > $0000   ; 00
- D 3 - - - 0x01FE3D 07:FE2D: 00        .byte > $00C3   ; 01
- D 3 - - - 0x01FE3E 07:FE2E: 01        .byte > $016A   ; 02
- D 3 - - - 0x01FE3F 07:FE2F: 01        .byte > $01D9   ; 03
- D 3 - - - 0x01FE40 07:FE30: 02        .byte > $0200   ; 04
- D 3 - - - 0x01FE41 07:FE31: 01        .byte > $01D9   ; 05
- D 3 - - - 0x01FE42 07:FE32: 01        .byte > $016A   ; 06
- D 3 - - - 0x01FE43 07:FE33: 00        .byte > $00C3   ; 07
; 08
- D 3 - - - 0x01FE44 07:FE34: 00        .byte > $0000   ; 00
- D 3 - - - 0x01FE45 07:FE35: 00        .byte > $0024   ; 01
- D 3 - - - 0x01FE46 07:FE36: 00        .byte > $0043   ; 02
- D 3 - - - 0x01FE47 07:FE37: 00        .byte > $0058   ; 03
- D 3 - - - 0x01FE48 07:FE38: 00        .byte > $0060   ; 04
- D 3 - - - 0x01FE49 07:FE39: 00        .byte > $0058   ; 05
- D 3 - - - 0x01FE4A 07:FE3A: 00        .byte > $0043   ; 06
- D 3 - - - 0x01FE4B 07:FE3B: 00        .byte > $0024   ; 07
; 10
- D 3 - - - 0x01FE4C 07:FE3C: 00        .byte > $0000   ; 00
- D 3 - - - 0x01FE4D 07:FE3D: 00        .byte > $0061   ; 01
- D 3 - - - 0x01FE4E 07:FE3E: 00        .byte > $00B5   ; 02
- D 3 - - - 0x01FE4F 07:FE3F: 00        .byte > $00EC   ; 03
- D 3 - - - 0x01FE50 07:FE40: 01        .byte > $0100   ; 04
- D 3 - - - 0x01FE51 07:FE41: 00        .byte > $00EC   ; 05
- D 3 - - - 0x01FE52 07:FE42: 00        .byte > $00B5   ; 06
- D 3 - - - 0x01FE53 07:FE43: 00        .byte > $0061   ; 07



sub_FE44:
sub_0x01FE54:
C - - - - - 0x01FE54 07:FE44: A2 0D     LDX #$0D
bra_FE46_loop:
C - - - - - 0x01FE56 07:FE46: BD 02 03  LDA ram_obj_flags + $02,X
C - - - - - 0x01FE59 07:FE49: 10 05     BPL bra_FE50
C - - - - - 0x01FE5B 07:FE4B: CA        DEX
C - - - - - 0x01FE5C 07:FE4C: D0 F8     BNE bra_FE46_loop
- - - - - - 0x01FE5E 07:FE4E: 38        SEC
- - - - - - 0x01FE5F 07:FE4F: 60        RTS
bra_FE50:
C - - - - - 0x01FE60 07:FE50: E8        INX
C - - - - - 0x01FE61 07:FE51: E8        INX
C - - - - - 0x01FE62 07:FE52: 18        CLC
C - - - - - 0x01FE63 07:FE53: 60        RTS



sub_FE54:
sub_0x01FE64:
C - - - - - 0x01FE64 07:FE54: A0 0D     LDY #$0D
bra_FE56_loop:
C - - - - - 0x01FE66 07:FE56: B9 02 03  LDA ram_obj_flags + $02,Y
C - - - - - 0x01FE69 07:FE59: 10 05     BPL bra_FE60
C - - - - - 0x01FE6B 07:FE5B: 88        DEY
C - - - - - 0x01FE6C 07:FE5C: D0 F8     BNE bra_FE56_loop
- - - - - - 0x01FE6E 07:FE5E: 38        SEC
- - - - - - 0x01FE6F 07:FE5F: 60        RTS
bra_FE60:
C - - - - - 0x01FE70 07:FE60: C8        INY
C - - - - - 0x01FE71 07:FE61: C8        INY
C - - - - - 0x01FE72 07:FE62: 18        CLC
C - - - - - 0x01FE73 07:FE63: 60        RTS



sub_FE64:
sub_0x01FE74:
loc_0x01FE74:
C D 3 - - - 0x01FE74 07:FE64: BD E0 03  LDA ram_03E0_obj,X
C - - - - - 0x01FE77 07:FE67: 29 07     AND #$07
C - - - - - 0x01FE79 07:FE69: A8        TAY
C - - - - - 0x01FE7A 07:FE6A: B9 85 FE  LDA tbl_FE85_bits,Y
C - - - - - 0x01FE7D 07:FE6D: 85 00     STA ram_0000
C - - - - - 0x01FE7F 07:FE6F: 49 FF     EOR #$FF
C - - - - - 0x01FE81 07:FE71: 85 01     STA ram_0001
C - - - - - 0x01FE83 07:FE73: BD E0 03  LDA ram_03E0_obj,X
C - - - - - 0x01FE86 07:FE76: 4A        LSR
C - - - - - 0x01FE87 07:FE77: 4A        LSR
C - - - - - 0x01FE88 07:FE78: 4A        LSR
C - - - - - 0x01FE89 07:FE79: A8        TAY
C - - - - - 0x01FE8A 07:FE7A: B9 30 01  LDA ram_0130,Y
C - - - - - 0x01FE8D 07:FE7D: 25 01     AND ram_0001
C - - - - - 0x01FE8F 07:FE7F: 05 00     ORA ram_0000
C - - - - - 0x01FE91 07:FE81: 99 30 01  STA ram_0130,Y
C - - - - - 0x01FE94 07:FE84: 60        RTS



tbl_FE85_bits:
tbl_0x01FE95_bits:
- D 3 - - - 0x01FE95 07:FE85: 01        .byte $01   ; 00
- D 3 - - - 0x01FE96 07:FE86: 02        .byte $02   ; 01
- D 3 - - - 0x01FE97 07:FE87: 04        .byte $04   ; 02
- D 3 - - - 0x01FE98 07:FE88: 08        .byte $08   ; 03
- D 3 - - - 0x01FE99 07:FE89: 10        .byte $10   ; 04
- D 3 - - - 0x01FE9A 07:FE8A: 20        .byte $20   ; 05
- D 3 - - - 0x01FE9B 07:FE8B: 40        .byte $40   ; 06
- D 3 - - - 0x01FE9C 07:FE8C: 80        .byte $80   ; 07


; bzk garbage
- - - - - - 0x01FE9D 07:FE8D: FF        .byte $FF, $FF, $FF   ; 
- - - - - - 0x01FEA0 07:FE90: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01FEB0 07:FEA0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 


; bzk garbage, copy of 0x01FED0
- - - - - - 0x01FEC0 07:FEB0: 78        SEI
- - - - - - 0x01FEC1 07:FEB1: D8        CLD
- - - - - - 0x01FEC2 07:FEB2: A2 00     LDX #$00
- - - - - - 0x01FEC4 07:FEB4: 8E 00 20  STX $2000
- - - - - - 0x01FEC7 07:FEB7: 8E 01 20  STX $2001
- - - - - - 0x01FECA 07:FEBA: CA        DEX
- - - - - - 0x01FECB 07:FEBB: 9A        TXS
- - - - - - 0x01FECC 07:FEBC: A0 04     LDY #$04
- - - - - - 0x01FECE 07:FEBE: AD        .byte $AD   ; 
- - - - - - 0x01FECF 07:FEBF: 02        .byte $02   ; 



vec_FEC0_RESET:
C - - - - - 0x01FED0 07:FEC0: 78        SEI
C - - - - - 0x01FED1 07:FEC1: D8        CLD
C - - - - - 0x01FED2 07:FEC2: A2 00     LDX #$00
C - - - - - 0x01FED4 07:FEC4: 8E 00 20  STX $2000
C - - - - - 0x01FED7 07:FEC7: 8E 01 20  STX $2001
C - - - - - 0x01FEDA 07:FECA: CA        DEX ; FF
C - - - - - 0x01FEDB 07:FECB: 9A        TXS
C - - - - - 0x01FEDC 07:FECC: A0 04     LDY #$04
bra_FECE_infinite_loop:
C - - - - - 0x01FEDE 07:FECE: AD 02 20  LDA $2002
C - - - - - 0x01FEE1 07:FED1: 10 FB     BPL bra_FECE_infinite_loop
bra_FED3:
C - - - - - 0x01FEE3 07:FED3: AD 02 20  LDA $2002
C - - - - - 0x01FEE6 07:FED6: 30 FB     BMI bra_FED3
C - - - - - 0x01FEE8 07:FED8: 88        DEY
C - - - - - 0x01FEE9 07:FED9: D0 F3     BNE bra_FECE_infinite_loop
; Y = 00
C - - - - - 0x01FEEB 07:FEDB: 8C 10 40  STY $4010
C - - - - - 0x01FEEE 07:FEDE: 8C 15 40  STY $4015
C - - - - - 0x01FEF1 07:FEE1: A9 40     LDA #$40
C - - - - - 0x01FEF3 07:FEE3: 8D 17 40  STA $4017
C - - - - - 0x01FEF6 07:FEE6: 98        TYA ; 00
bra_FEE7_loop:
C - - - - - 0x01FEF7 07:FEE7: 99 00 00  STA $0000,Y
C - - - - - 0x01FEFA 07:FEEA: 99 00 01  STA $0100,Y
C - - - - - 0x01FEFD 07:FEED: 99 00 02  STA $0200,Y
C - - - - - 0x01FF00 07:FEF0: 99 00 03  STA $0300,Y
C - - - - - 0x01FF03 07:FEF3: 99 00 04  STA $0400,Y
C - - - - - 0x01FF06 07:FEF6: 99 00 05  STA $0500,Y
C - - - - - 0x01FF09 07:FEF9: 99 00 06  STA $0600,Y
C - - - - - 0x01FF0C 07:FEFC: 99 00 07  STA $0700,Y
C - - - - - 0x01FF0F 07:FEFF: 88        DEY
C - - - - - 0x01FF10 07:FF00: D0 E5     BNE bra_FEE7_loop
C - - - - - 0x01FF12 07:FF02: A0 07     LDY #$07
C - - - - - 0x01FF14 07:FF04: A9 88     LDA #$88
bra_FF06_loop:
C - - - - - 0x01FF16 07:FF06: 99 DC 00  STA ram_sfx_queue,Y
C - - - - - 0x01FF19 07:FF09: 88        DEY
C - - - - - 0x01FF1A 07:FF0A: 10 FA     BPL bra_FF06_loop
C - - - - - 0x01FF1C 07:FF0C: A9 1E     LDA #$1E
C - - - - - 0x01FF1E 07:FF0E: 85 FE     STA ram_for_2001
C - - - - - 0x01FF20 07:FF10: 20 BC C1  JSR sub_C1BC_hide_unused_sprites
C - - - - - 0x01FF23 07:FF13: A9 20     LDA #$20    ; ppu hi
C - - - - - 0x01FF25 07:FF15: A2 FF     LDX #$FF    ; tile id
C - - - - - 0x01FF27 07:FF17: A0 00     LDY #$00
C - - - - - 0x01FF29 07:FF19: 20 70 C1  JSR sub_C170
C - - - - - 0x01FF2C 07:FF1C: A9 24     LDA #$24    ; ppu hi
C - - - - - 0x01FF2E 07:FF1E: A2 FF     LDX #$FF    ; tile id
C - - - - - 0x01FF30 07:FF20: A0 00     LDY #$00
C - - - - - 0x01FF32 07:FF22: 20 70 C1  JSR sub_C170
C - - - - - 0x01FF35 07:FF25: A9 C6     LDA #> ofs_C639
C - - - - - 0x01FF37 07:FF27: 85 94     STA ram_0094
C - - - - - 0x01FF39 07:FF29: A9 39     LDA #< ofs_C639
C - - - - - 0x01FF3B 07:FF2B: 85 93     STA ram_0093
C - - - - - 0x01FF3D 07:FF2D: A9 00     LDA #$00
C - - - - - 0x01FF3F 07:FF2F: 20 7E FF  JSR sub_FF7E
C - - - - - 0x01FF42 07:FF32: A9 90     LDA #$90
C - - - - - 0x01FF44 07:FF34: 85 FF     STA ram_for_2000
loc_FF36:
C D 3 - - - 0x01FF46 07:FF36: A2 FF     LDX #$FF
C - - - - - 0x01FF48 07:FF38: 9A        TXS
bra_FF39_loop:
loc_FF39_loop:
C D 3 - - - 0x01FF49 07:FF39: A2 00     LDX #$00
C - - - - - 0x01FF4B 07:FF3B: 86 90     STX ram_0090
C - - - - - 0x01FF4D 07:FF3D: A0 04     LDY #$04
bra_FF3F_loop:
C - - - - - 0x01FF4F 07:FF3F: B5 80     LDA ram_0080,X
C - - - - - 0x01FF51 07:FF41: C9 04     CMP #$04
C - - - - - 0x01FF53 07:FF43: B0 0A     BCS bra_FF4F
C - - - - - 0x01FF55 07:FF45: E8        INX
C - - - - - 0x01FF56 07:FF46: E8        INX
C - - - - - 0x01FF57 07:FF47: E8        INX
C - - - - - 0x01FF58 07:FF48: E8        INX
C - - - - - 0x01FF59 07:FF49: 88        DEY
C - - - - - 0x01FF5A 07:FF4A: D0 F3     BNE bra_FF3F_loop
C - - - - - 0x01FF5C 07:FF4C: 4C 39 FF  JMP loc_FF39_loop
bra_FF4F:
C - - - - - 0x01FF5F 07:FF4F: A5 90     LDA ram_0090
C - - - - - 0x01FF61 07:FF51: D0 E6     BNE bra_FF39_loop
C - - - - - 0x01FF63 07:FF53: 88        DEY
C - - - - - 0x01FF64 07:FF54: 98        TYA
C - - - - - 0x01FF65 07:FF55: 49 03     EOR #$03
C - - - - - 0x01FF67 07:FF57: 85 91     STA ram_0091
C - - - - - 0x01FF69 07:FF59: B4 80     LDY ram_0080,X
C - - - - - 0x01FF6B 07:FF5B: A9 02     LDA #$02
C - - - - - 0x01FF6D 07:FF5D: 95 80     STA ram_0080,X
C - - - - - 0x01FF6F 07:FF5F: C0 08     CPY #$08
C - - - - - 0x01FF71 07:FF61: D0 0B     BNE bra_FF6E
C - - - - - 0x01FF73 07:FF63: B5 82     LDA ram_0082,X
C - - - - - 0x01FF75 07:FF65: 85 93     STA ram_0093
C - - - - - 0x01FF77 07:FF67: B5 83     LDA ram_0083,X
C - - - - - 0x01FF79 07:FF69: 85 94     STA ram_0094
C - - - - - 0x01FF7B 07:FF6B: 6C 93 00  JMP (ram_0093)
bra_FF6E:
C - - - - - 0x01FF7E 07:FF6E: B5 82     LDA ram_0082,X
C - - - - - 0x01FF80 07:FF70: AA        TAX
C - - - - - 0x01FF81 07:FF71: 9A        TXS
C - - - - - 0x01FF82 07:FF72: A5 91     LDA ram_0091
C - - - - - 0x01FF84 07:FF74: D0 03     BNE bra_FF79
C - - - - - 0x01FF86 07:FF76: 20 18 C1  JSR sub_C118_read_joy_regs
bra_FF79:
C - - - - - 0x01FF89 07:FF79: 68        PLA
C - - - - - 0x01FF8A 07:FF7A: A8        TAY
C - - - - - 0x01FF8B 07:FF7B: 68        PLA
C - - - - - 0x01FF8C 07:FF7C: AA        TAX
C - - - - - 0x01FF8D 07:FF7D: 60        RTS



sub_FF7E:
C - - - - - 0x01FF8E 07:FF7E: 20 A2 FF  JSR sub_FFA2_asl_asl_tax
C - - - - - 0x01FF91 07:FF81: A5 93     LDA ram_0093
C - - - - - 0x01FF93 07:FF83: 95 82     STA ram_0082,X
C - - - - - 0x01FF95 07:FF85: A5 94     LDA ram_0094
C - - - - - 0x01FF97 07:FF87: 95 83     STA ram_0083,X
C - - - - - 0x01FF99 07:FF89: A9 08     LDA #$08
C - - - - - 0x01FF9B 07:FF8B: 95 80     STA ram_0080,X
C - - - - - 0x01FF9D 07:FF8D: 60        RTS


; bzk garbage
- - - - - - 0x01FF9E 07:FF8E: 20 A2 FF  JSR sub_FFA2_asl_asl_tax
- - - - - - 0x01FFA1 07:FF91: A9 00     LDA #$00
- - - - - - 0x01FFA3 07:FF93: 95 80     STA ram_0080,X
- - - - - - 0x01FFA5 07:FF95: 60        RTS


; bzk garbage
- - - - - - 0x01FFA6 07:FF96: 20 A0 FF  JSR sub_FFA0
- - - - - - 0x01FFA9 07:FF99: A9 00     LDA #$00
- - - - - - 0x01FFAB 07:FF9B: 95 80     STA ram_0080,X
- - - - - - 0x01FFAD 07:FF9D: 4C 36 FF  JMP loc_FF36



sub_FFA0:
C - - - - - 0x01FFB0 07:FFA0: A5 91     LDA ram_0091
sub_FFA2_asl_asl_tax:
C - - - - - 0x01FFB2 07:FFA2: 0A        ASL
C - - - - - 0x01FFB3 07:FFA3: 0A        ASL
C - - - - - 0x01FFB4 07:FFA4: AA        TAX
C - - - - - 0x01FFB5 07:FFA5: 60        RTS



sub_FFA6:
loc_FFA6:
bra_FFA6_loop:
C D 3 - - - 0x01FFB6 07:FFA6: 20 AD FF  JSR sub_FFAD
C - - - - - 0x01FFB9 07:FFA9: CA        DEX
C - - - - - 0x01FFBA 07:FFAA: D0 FA     BNE bra_FFA6_loop
C - - - - - 0x01FFBC 07:FFAC: 60        RTS



sub_FFAD:
sub_0x01FFBD:
C - - - - - 0x01FFBD 07:FFAD: A9 01     LDA #$01
C - - - - - 0x01FFBF 07:FFAF: 85 93     STA ram_0093
C - - - - - 0x01FFC1 07:FFB1: 8A        TXA
C - - - - - 0x01FFC2 07:FFB2: 48        PHA
C - - - - - 0x01FFC3 07:FFB3: 98        TYA
C - - - - - 0x01FFC4 07:FFB4: 48        PHA
C - - - - - 0x01FFC5 07:FFB5: 20 A0 FF  JSR sub_FFA0
C - - - - - 0x01FFC8 07:FFB8: A5 93     LDA ram_0093
C - - - - - 0x01FFCA 07:FFBA: 95 81     STA ram_0081,X
C - - - - - 0x01FFCC 07:FFBC: A9 01     LDA #$01
C - - - - - 0x01FFCE 07:FFBE: 95 80     STA ram_0080,X
C - - - - - 0x01FFD0 07:FFC0: 8A        TXA
C - - - - - 0x01FFD1 07:FFC1: A8        TAY
C - - - - - 0x01FFD2 07:FFC2: BA        TSX
C - - - - - 0x01FFD3 07:FFC3: 96 82     STX ram_0082,Y
C - - - - - 0x01FFD5 07:FFC5: 4C 36 FF  JMP loc_FF36



sub_FFC8:
C - - - - - 0x01FFD8 07:FFC8: AA        TAX
C - - - - - 0x01FFD9 07:FFC9: 9D DE FF  STA tbl_FFDE_prg_bank,X
C - - - - - 0x01FFDC 07:FFCC: 60        RTS



sub_FFCD_prg_bankswitch:
C - - - - - 0x01FFDD 07:FFCD: 85 9B     STA ram_009B
sub_FFCF_prg_bankswitch:
loc_FFCF_prg_bankswitch:
C D 3 - - - 0x01FFDF 07:FFCF: 85 BF     STA ram_00BF
C - - - - - 0x01FFE1 07:FFD1: 86 9C     STX ram_009C
C - - - - - 0x01FFE3 07:FFD3: 84 9D     STY ram_009D
C - - - - - 0x01FFE5 07:FFD5: AA        TAX
C - - - - - 0x01FFE6 07:FFD6: 9D DE FF  STA tbl_FFDE_prg_bank,X
C - - - - - 0x01FFE9 07:FFD9: A6 9C     LDX ram_009C
C - - - - - 0x01FFEB 07:FFDB: A4 9D     LDY ram_009D
C - - - - - 0x01FFED 07:FFDD: 60        RTS



tbl_FFDE_prg_bank:
- D 3 - - - 0x01FFEE 07:FFDE: 00        .byte $00   ; 
- D 3 - - - 0x01FFEF 07:FFDF: 01        .byte $01   ; 
- D 3 - - - 0x01FFF0 07:FFE0: 02        .byte $02   ; 
- D 3 - - - 0x01FFF1 07:FFE1: 03        .byte $03   ; 
- D 3 - - - 0x01FFF2 07:FFE2: 04        .byte $04   ; 
- D 3 - - - 0x01FFF3 07:FFE3: 05        .byte $05   ; 
- D 3 - - - 0x01FFF4 07:FFE4: 06        .byte $06   ; 


; bzk garbage
- - - - - - 0x01FFF5 07:FFE5: 00        .byte $00   ; 
- - - - - - 0x01FFF6 07:FFE6: 00        .byte $00   ; 
- - - - - - 0x01FFF7 07:FFE7: 00        .byte $00, $00, $38, $02, $00, $00, $08, $BE   ; 
- - - - - - 0x01FFFF 07:FFEF: 00        .byte $00   ; 
- - - - - - 0x020000 07:FFF0: 7E        .byte $7E   ; 
- - - - - - 0x020001 07:FFF1: 65        .byte $65   ; 
- - - - - - 0x020002 07:FFF2: 00        .byte $00, $00, $38, $02, $00, $00, $08, $BE   ; 



.out .sprintf("Free bytes in bank FF: 0x%04X [%d]", ($FFFA - *), ($FFFA - *))



.segment "VECTORS"
- D 3 - - - 0x02000A 07:FFFA: 00 C0     .word vec_C000_NMI
- D 3 - - - 0x02000C 07:FFFC: C0 FE     .word vec_FEC0_RESET
- - - - - - 0x02000E 07:FFFE: 00 C0     .word vec_C000_IRQ



