.segment "BANK_FF"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
.org $C000  ; for listing file
; 0x000010-0x00400F

vec_C000_RESET:
C - - - - - 0x000010 00:C000: 4C 94 C0  JMP loc_C094



tbl_C003_hidden_text:
- - - - - - 0x000013 00:C003: 20        .byte "  VERSION 1 1984 05 29 BY KIKU  "


; bzk garbage
- - - - - - 0x000033 00:C023: 00        .byte $00, $00, $00   ; 



sub_C026_set_A_to_2007:   ; bzk optimize, this wastes a lot of cycles just for a single STA
C - - - - - 0x000036 00:C026: 8D 07 20  STA $2007
C - - - - - 0x000039 00:C029: 60        RTS


; bzk garbage
- - - - - - 0x00003A 00:C02A: 00        .byte $00, $00, $00, $00, $00, $00   ; 



tbl_C030_default_32_colors:
; background
- D 2 - - - 0x000040 00:C030: 0F        .byte $0F, $30, $25, $21   ; 
- D 2 - - - 0x000044 00:C034: 0F        .byte $0F, $30, $36, $26   ; 
- D 2 - - - 0x000048 00:C038: 0F        .byte $0F, $30, $19, $29   ; 
- D 2 - - - 0x00004C 00:C03C: 0F        .byte $0F, $30, $2C, $27   ; 
; sprites
- D 2 - - - 0x000050 00:C040: 0F        .byte $0F, $28, $20, $3C   ; 
- D 2 - - - 0x000054 00:C044: 0F        .byte $0F, $26, $30, $35   ; 
- D 2 - - - 0x000058 00:C048: 0F        .byte $0F, $10, $30, $36   ; 
- D 2 - - - 0x00005C 00:C04C: 0F        .byte $0F, $29, $30, $16   ; 



tbl_C050_round_bg_colors:
- D 2 - - - 0x000060 00:C050: 0F        .byte $0F, $30, $19, $29   ; 
- D 2 - - - 0x000064 00:C054: 0F        .byte $0F, $30, $2C, $27   ; 

- D 2 - - - 0x000068 00:C058: 0F        .byte $0F, $30, $18, $28   ; 
- D 2 - - - 0x00006C 00:C05C: 0F        .byte $0F, $30, $2C, $21   ; 

- D 2 - - - 0x000070 00:C060: 0F        .byte $0F, $30, $19, $29   ; 
- D 2 - - - 0x000074 00:C064: 0F        .byte $0F, $30, $2C, $27   ; 

- D 2 - - - 0x000078 00:C068: 0F        .byte $0F, $30, $11, $21   ; 
- D 2 - - - 0x00007C 00:C06C: 0F        .byte $0F, $30, $2C, $29   ; 


; bzk optimize
tbl_C070:
- D 2 - - - 0x000080 00:C070: 00        .byte $00   ; 
tbl_C071:
- D 2 - - - 0x000081 00:C071: 00        .byte $00   ; 


; used for demo
tbl_C072_buttons:
tbl_C072_timer:
- D 2 - - - 0x000082 00:C072: 02        .byte con_btn_Left   ; buttons
- D 2 - - - 0x000083 00:C073: 0E        .byte $0E   ; timer

- D 2 - - - 0x000084 00:C074: 82        .byte con_btn_A + con_btn_Left   ; 
- D 2 - - - 0x000085 00:C075: 02        .byte $02   ; 

- D 2 - - - 0x000086 00:C076: 01        .byte con_btn_Right   ; 
- D 2 - - - 0x000087 00:C077: 2A        .byte $2A   ; 

- D 2 - - - 0x000088 00:C078: 81        .byte con_btn_A + con_btn_Right   ; 
- D 2 - - - 0x000089 00:C079: 02        .byte $02   ; 

- D 2 - - - 0x00008A 00:C07A: 01        .byte con_btn_Right   ; 
- D 2 - - - 0x00008B 00:C07B: 02        .byte $02   ; 

- D 2 - - - 0x00008C 00:C07C: 00        .byte $00   ; 
- D 2 - - - 0x00008D 00:C07D: 18        .byte $18   ; 

- D 2 - - - 0x00008E 00:C07E: 02        .byte con_btn_Left   ; 
- D 2 - - - 0x00008F 00:C07F: 44        .byte $44   ; 

- D 2 - - - 0x000090 00:C080: 04        .byte con_btn_Down   ; 
- D 2 - - - 0x000091 00:C081: 2D        .byte $2D   ; 

- D 2 - - - 0x000092 00:C082: 00        .byte $00   ; 
- D 2 - - - 0x000093 00:C083: 02        .byte $02   ; 

- D 2 - - - 0x000094 00:C084: 01        .byte con_btn_Right   ; 
- D 2 - - - 0x000095 00:C085: 1B        .byte $1B   ; 

- D 2 - - - 0x000096 00:C086: 00        .byte $00   ; 
- D 2 - - - 0x000097 00:C087: 26        .byte $26   ; 

- D 2 - - - 0x000098 00:C088: 02        .byte con_btn_Left   ; 
- D 2 - - - 0x000099 00:C089: 18        .byte $18   ; 

- D 2 - - - 0x00009A 00:C08A: 82        .byte con_btn_A + con_btn_Left   ; 
- D 2 - - - 0x00009B 00:C08B: 02        .byte $02   ; 

- D 2 - - - 0x00009C 00:C08C: 02        .byte con_btn_Left   ; 
- D 2 - - - 0x00009D 00:C08D: 02        .byte $02   ; 

- D 2 - - - 0x00009E 00:C08E: 00        .byte $00   ; 
- D 2 - - - 0x00009F 00:C08F: 1E        .byte $1E   ; 

- D 2 - - - 0x0000A0 00:C090: 01        .byte con_btn_Right   ; 
- D 2 - - - 0x0000A1 00:C091: 22        .byte $22   ; 

- D 2 - - - 0x0000A2 00:C092: 02        .byte con_btn_Left   ; 
- D 2 - - - 0x0000A3 00:C093: 64        .byte $64   ; 



loc_C094:
C D 2 - - - 0x0000A4 00:C094: A2 FF     LDX #$FF
C - - - - - 0x0000A6 00:C096: 9A        TXS
C - - - - - 0x0000A7 00:C097: A9 00     LDA #$00
C - - - - - 0x0000A9 00:C099: AA        TAX
bra_C09A_loop:
C - - - - - 0x0000AA 00:C09A: 95 00     STA ram_0000,X
C - - - - - 0x0000AC 00:C09C: E8        INX
C - - - - - 0x0000AD 00:C09D: E0 E8     CPX #$E8
C - - - - - 0x0000AF 00:C09F: D0 F9     BNE bra_C09A_loop
C - - - - - 0x0000B1 00:C0A1: A9 00     LDA #$00
C - - - - - 0x0000B3 00:C0A3: AA        TAX
bra_C0A4_loop:
C - - - - - 0x0000B4 00:C0A4: 20 B0 C0  JSR sub_C0B0_clear_several_pages
C - - - - - 0x0000B7 00:C0A7: 9D 00 05  STA ram_0500,X
C - - - - - 0x0000BA 00:C0AA: E8        INX
C - - - - - 0x0000BB 00:C0AB: D0 F7     BNE bra_C0A4_loop
C - - - - - 0x0000BD 00:C0AD: 4C AB C1  JMP loc_C1AB



sub_C0B0_clear_several_pages:
C - - - - - 0x0000C0 00:C0B0: 9D 00 02  STA ram_0200,X
C - - - - - 0x0000C3 00:C0B3: 9D 00 03  STA ram_0300,X
C - - - - - 0x0000C6 00:C0B6: 9D 00 04  STA ram_0400,X
C - - - - - 0x0000C9 00:C0B9: 9D 00 06  STA ram_0600,X
C - - - - - 0x0000CC 00:C0BC: 9D 00 07  STA ram_oam,X
C - - - - - 0x0000CF 00:C0BF: 60        RTS



vec_C0C0_NMI:
C - - - - - 0x0000D0 00:C0C0: 85 1C     STA ram_001C
C - - - - - 0x0000D2 00:C0C2: 86 1D     STX ram_001D
C - - - - - 0x0000D4 00:C0C4: 84 1E     STY ram_001E
C - - - - - 0x0000D6 00:C0C6: A9 00     LDA #< ram_oam
C - - - - - 0x0000D8 00:C0C8: 8D 03 20  STA $2003
C - - - - - 0x0000DB 00:C0CB: A9 07     LDA #> ram_oam
C - - - - - 0x0000DD 00:C0CD: 8D 14 40  STA $4014
C - - - - - 0x0000E0 00:C0D0: A9 00     LDA #$00
C - - - - - 0x0000E2 00:C0D2: 85 26     STA ram_0026
C - - - - - 0x0000E4 00:C0D4: A9 00     LDA #< ram_0200
C - - - - - 0x0000E6 00:C0D6: 85 14     STA ram_0014
C - - - - - 0x0000E8 00:C0D8: A9 02     LDA #> ram_0200
C - - - - - 0x0000EA 00:C0DA: 85 15     STA ram_0015
C - - - - - 0x0000EC 00:C0DC: A0 00     LDY #$00
C - - - - - 0x0000EE 00:C0DE: B1 14     LDA (ram_0014),Y
C - - - - - 0x0000F0 00:C0E0: F0 27     BEQ bra_C109
C - - - - - 0x0000F2 00:C0E2: A9 00     LDA #$00
C - - - - - 0x0000F4 00:C0E4: 91 14     STA (ram_0014),Y
C - - - - - 0x0000F6 00:C0E6: C8        INY
loc_C0E7:
C D 2 - - - 0x0000F7 00:C0E7: B1 14     LDA (ram_0014),Y
C - - - - - 0x0000F9 00:C0E9: AA        TAX
C - - - - - 0x0000FA 00:C0EA: 29 C0     AND #$C0
C - - - - - 0x0000FC 00:C0EC: F0 17     BEQ bra_C105
C - - - - - 0x0000FE 00:C0EE: C9 80     CMP #$80
C - - - - - 0x000100 00:C0F0: F0 03     BEQ bra_C0F5
- - - - - - 0x000102 00:C0F2: 4C 05 C1  JMP loc_C105
bra_C0F5:
C - - - - - 0x000105 00:C0F5: 20 90 C1  JSR sub_C190
C - - - - - 0x000108 00:C0F8: AA        TAX
bra_C0F9_loop:
C - - - - - 0x000109 00:C0F9: B1 14     LDA (ram_0014),Y
C - - - - - 0x00010B 00:C0FB: 20 26 C0  JSR sub_C026_set_A_to_2007
C - - - - - 0x00010E 00:C0FE: C8        INY
C - - - - - 0x00010F 00:C0FF: CA        DEX
C - - - - - 0x000110 00:C100: D0 F7     BNE bra_C0F9_loop
C - - - - - 0x000112 00:C102: 4C E7 C0  JMP loc_C0E7
bra_C105:
loc_C105:
C - - - - - 0x000115 00:C105: A9 01     LDA #$01
C - - - - - 0x000117 00:C107: 85 27     STA ram_0027
bra_C109:
C - - - - - 0x000119 00:C109: A9 01     LDA #$01
C - - - - - 0x00011B 00:C10B: 8D 16 40  STA $4016
C - - - - - 0x00011E 00:C10E: A9 00     LDA #$00
C - - - - - 0x000120 00:C110: 8D 16 40  STA $4016
C - - - - - 0x000123 00:C113: A2 00     LDX #$00
C - - - - - 0x000125 00:C115: A0 08     LDY #$08
bra_C117_loop:
C - - - - - 0x000127 00:C117: 8A        TXA
C - - - - - 0x000128 00:C118: 0A        ASL
C - - - - - 0x000129 00:C119: AA        TAX
C - - - - - 0x00012A 00:C11A: AD 16 40  LDA $4016
C - - - - - 0x00012D 00:C11D: 29 01     AND #$01
C - - - - - 0x00012F 00:C11F: F0 01     BEQ bra_C122
C - - - - - 0x000131 00:C121: E8        INX
bra_C122:
C - - - - - 0x000132 00:C122: 88        DEY
C - - - - - 0x000133 00:C123: D0 F2     BNE bra_C117_loop
C - - - - - 0x000135 00:C125: 86 1A     STX ram_btn_hold
C - - - - - 0x000137 00:C127: A2 00     LDX #$00
C - - - - - 0x000139 00:C129: A0 08     LDY #$08
bra_C12B_loop:
C - - - - - 0x00013B 00:C12B: 8A        TXA
C - - - - - 0x00013C 00:C12C: 0A        ASL
C - - - - - 0x00013D 00:C12D: AA        TAX
C - - - - - 0x00013E 00:C12E: AD 17 40  LDA $4017
C - - - - - 0x000141 00:C131: 29 01     AND #$01
C - - - - - 0x000143 00:C133: F0 01     BEQ bra_C136
C - - - - - 0x000145 00:C135: E8        INX
bra_C136:
C - - - - - 0x000146 00:C136: 88        DEY
C - - - - - 0x000147 00:C137: D0 F2     BNE bra_C12B_loop
C - - - - - 0x000149 00:C139: 86 1B     STX ram_btn_hold + $01
C - - - - - 0x00014B 00:C13B: A5 CC     LDA ram_00CC
C - - - - - 0x00014D 00:C13D: F0 3E     BEQ bra_C17D
C - - - - - 0x00014F 00:C13F: C9 02     CMP #$02
C - - - - - 0x000151 00:C141: F0 1A     BEQ bra_C15D
C - - - - - 0x000153 00:C143: AE 23 07  LDX ram_spr_X + $20
C - - - - - 0x000156 00:C146: AC 20 07  LDY ram_spr_Y + $20
C - - - - - 0x000159 00:C149: C8        INY
C - - - - - 0x00015A 00:C14A: C8        INY
C - - - - - 0x00015B 00:C14B: 20 FC DF  JSR sub_DFFC
C - - - - - 0x00015E 00:C14E: C6 CD     DEC ram_scroll_pos_Y
C - - - - - 0x000160 00:C150: C6 CD     DEC ram_scroll_pos_Y
C - - - - - 0x000162 00:C152: A5 CD     LDA ram_scroll_pos_Y
C - - - - - 0x000164 00:C154: C9 F9     CMP #$F9
C - - - - - 0x000166 00:C156: D0 1B     BNE bra_C173
C - - - - - 0x000168 00:C158: E6 CC     INC ram_00CC
C - - - - - 0x00016A 00:C15A: 4C 73 C1  JMP loc_C173
bra_C15D:
C - - - - - 0x00016D 00:C15D: AE 23 07  LDX ram_spr_X + $20
C - - - - - 0x000170 00:C160: AC 20 07  LDY ram_spr_Y + $20
C - - - - - 0x000173 00:C163: 88        DEY
C - - - - - 0x000174 00:C164: 20 FC DF  JSR sub_DFFC
C - - - - - 0x000177 00:C167: E6 CD     INC ram_scroll_pos_Y
C - - - - - 0x000179 00:C169: A5 CD     LDA ram_scroll_pos_Y
C - - - - - 0x00017B 00:C16B: C9 FF     CMP #$FF
C - - - - - 0x00017D 00:C16D: D0 04     BNE bra_C173
C - - - - - 0x00017F 00:C16F: A9 00     LDA #$00
C - - - - - 0x000181 00:C171: 85 CC     STA ram_00CC
bra_C173:
loc_C173:
C D 2 - - - 0x000183 00:C173: A9 00     LDA #$00
C - - - - - 0x000185 00:C175: 8D 05 20  STA $2005
C - - - - - 0x000188 00:C178: A5 CD     LDA ram_scroll_pos_Y
C - - - - - 0x00018A 00:C17A: 8D 05 20  STA $2005
bra_C17D:
C - - - - - 0x00018D 00:C17D: 20 A7 F1  JSR sub_F1A7
C - - - - - 0x000190 00:C180: 20 F2 F1  JSR sub_F1F2
C - - - - - 0x000193 00:C183: 20 3D F2  JSR sub_F23D
C - - - - - 0x000196 00:C186: 20 A4 F2  JSR sub_F2A4
C - - - - - 0x000199 00:C189: A5 1C     LDA ram_001C
C - - - - - 0x00019B 00:C18B: A6 1D     LDX ram_001D
C - - - - - 0x00019D 00:C18D: A4 1E     LDY ram_001E
C - - - - - 0x00019F 00:C18F: 40        RTI



sub_C190:
C - - - - - 0x0001A0 00:C190: 8A        TXA
C - - - - - 0x0001A1 00:C191: 29 3F     AND #$3F
C - - - - - 0x0001A3 00:C193: 85 1F     STA ram_001F
C - - - - - 0x0001A5 00:C195: C8        INY
C - - - - - 0x0001A6 00:C196: B1 14     LDA (ram_0014),Y
C - - - - - 0x0001A8 00:C198: 48        PHA
C - - - - - 0x0001A9 00:C199: C8        INY
C - - - - - 0x0001AA 00:C19A: B1 14     LDA (ram_0014),Y
C - - - - - 0x0001AC 00:C19C: AA        TAX
C - - - - - 0x0001AD 00:C19D: 68        PLA
C - - - - - 0x0001AE 00:C19E: C8        INY
C - - - - - 0x0001AF 00:C19F: 8D 06 20  STA $2006
C - - - - - 0x0001B2 00:C1A2: 8E 06 20  STX $2006
C - - - - - 0x0001B5 00:C1A5: 20 83 EF  JSR sub_EF83
C - - - - - 0x0001B8 00:C1A8: A5 1F     LDA ram_001F
C - - - - - 0x0001BA 00:C1AA: 60        RTS



loc_C1AB:
C D 2 - - - 0x0001BB 00:C1AB: A2 FF     LDX #$FF
C - - - - - 0x0001BD 00:C1AD: 9A        TXS
C - - - - - 0x0001BE 00:C1AE: A9 10     LDA #$10
C - - - - - 0x0001C0 00:C1B0: 8D 00 20  STA $2000
C - - - - - 0x0001C3 00:C1B3: A9 01     LDA #$01
C - - - - - 0x0001C5 00:C1B5: 85 27     STA ram_0027
C - - - - - 0x0001C7 00:C1B7: A9 00     LDA #$00
C - - - - - 0x0001C9 00:C1B9: 8D 00 02  STA ram_0200
C - - - - - 0x0001CC 00:C1BC: 20 AA EF  JSR sub_EFAA
C - - - - - 0x0001CF 00:C1BF: 20 1B F3  JSR sub_F31B
C - - - - - 0x0001D2 00:C1C2: A9 01     LDA #$01
C - - - - - 0x0001D4 00:C1C4: 85 20     STA ram_current_round
C - - - - - 0x0001D6 00:C1C6: 20 84 E9  JSR sub_E984
C - - - - - 0x0001D9 00:C1C9: A2 00     LDX #$00
bra_C1CB_loop:
C - - - - - 0x0001DB 00:C1CB: BD 00 06  LDA ram_0600,X
C - - - - - 0x0001DE 00:C1CE: 9D 00 05  STA ram_0500,X
C - - - - - 0x0001E1 00:C1D1: E8        INX
C - - - - - 0x0001E2 00:C1D2: D0 F7     BNE bra_C1CB_loop
C - - - - - 0x0001E4 00:C1D4: A9 00     LDA #$00
C - - - - - 0x0001E6 00:C1D6: 85 BA     STA ram_00BA
C - - - - - 0x0001E8 00:C1D8: 85 BB     STA ram_00BB
C - - - - - 0x0001EA 00:C1DA: A9 00     LDA #$00    ; bzk optimize, loading same A
C - - - - - 0x0001EC 00:C1DC: 85 B8     STA ram_00B8
C - - - - - 0x0001EE 00:C1DE: 85 B9     STA ram_00B9
C - - - - - 0x0001F0 00:C1E0: 85 BC     STA ram_00BC
C - - - - - 0x0001F2 00:C1E2: 85 BD     STA ram_00BD
C - - - - - 0x0001F4 00:C1E4: A9 03     LDA #$03
C - - - - - 0x0001F6 00:C1E6: 85 EB     STA ram_00EB
C - - - - - 0x0001F8 00:C1E8: A9 80     LDA #$80
C - - - - - 0x0001FA 00:C1EA: 85 2F     STA ram_002F
C - - - - - 0x0001FC 00:C1EC: 4C EF C1  JMP loc_C1EF



loc_C1EF:
C D 2 - - - 0x0001FF 00:C1EF: A2 FF     LDX #$FF
C - - - - - 0x000201 00:C1F1: 9A        TXS
C - - - - - 0x000202 00:C1F2: A9 10     LDA #$10
C - - - - - 0x000204 00:C1F4: 8D 00 20  STA $2000
C - - - - - 0x000207 00:C1F7: A9 00     LDA #$00
C - - - - - 0x000209 00:C1F9: AA        TAX
bra_C1FA_loop:
C - - - - - 0x00020A 00:C1FA: 95 00     STA ram_0000,X
C - - - - - 0x00020C 00:C1FC: E8        INX
C - - - - - 0x00020D 00:C1FD: E0 2F     CPX #$2F
C - - - - - 0x00020F 00:C1FF: D0 F9     BNE bra_C1FA_loop
C - - - - - 0x000211 00:C201: E8        INX
bra_C202_loop:
C - - - - - 0x000212 00:C202: 95 00     STA ram_0000,X
C - - - - - 0x000214 00:C204: E8        INX
C - - - - - 0x000215 00:C205: E0 B8     CPX #$B8
C - - - - - 0x000217 00:C207: D0 F9     BNE bra_C202_loop
C - - - - - 0x000219 00:C209: E8        INX
C - - - - - 0x00021A 00:C20A: E8        INX
C - - - - - 0x00021B 00:C20B: E8        INX
C - - - - - 0x00021C 00:C20C: E8        INX
C - - - - - 0x00021D 00:C20D: E8        INX
C - - - - - 0x00021E 00:C20E: E8        INX
bra_C20F_loop:
C - - - - - 0x00021F 00:C20F: 95 00     STA ram_0000,X
C - - - - - 0x000221 00:C211: E8        INX
C - - - - - 0x000222 00:C212: E0 E8     CPX #$E8
C - - - - - 0x000224 00:C214: D0 F9     BNE bra_C20F_loop
C - - - - - 0x000226 00:C216: A9 00     LDA #$00
C - - - - - 0x000228 00:C218: AA        TAX
bra_C219_loop:
C - - - - - 0x000229 00:C219: 20 B0 C0  JSR sub_C0B0_clear_several_pages
C - - - - - 0x00022C 00:C21C: E8        INX
C - - - - - 0x00022D 00:C21D: D0 FA     BNE bra_C219_loop
C - - - - - 0x00022F 00:C21F: A9 01     LDA #$01
C - - - - - 0x000231 00:C221: 85 27     STA ram_0027
C - - - - - 0x000233 00:C223: A9 00     LDA #$00
C - - - - - 0x000235 00:C225: 8D 00 02  STA ram_0200
C - - - - - 0x000238 00:C228: 20 AA EF  JSR sub_EFAA
C - - - - - 0x00023B 00:C22B: A5 EB     LDA ram_00EB
C - - - - - 0x00023D 00:C22D: 18        CLC
C - - - - - 0x00023E 00:C22E: 69 01     ADC #$01
C - - - - - 0x000240 00:C230: 29 03     AND #$03
C - - - - - 0x000242 00:C232: 85 EB     STA ram_00EB
C - - - - - 0x000244 00:C234: A9 00     LDA #$00
C - - - - - 0x000246 00:C236: 85 E8     STA ram_00E8
C - - - - - 0x000248 00:C238: 85 E9     STA ram_00E9
C - - - - - 0x00024A 00:C23A: 20 73 EC  JSR sub_EC73
C - - - - - 0x00024D 00:C23D: A9 01     LDA #$01
C - - - - - 0x00024F 00:C23F: A6 A7     LDX ram_00A7
C - - - - - 0x000251 00:C241: F0 02     BEQ bra_C245
C - - - - - 0x000253 00:C243: A9 0A     LDA #$0A
bra_C245:
C - - - - - 0x000255 00:C245: 85 C4     STA ram_00C4
C - - - - - 0x000257 00:C247: 85 C5     STA ram_00C5
C - - - - - 0x000259 00:C249: 85 20     STA ram_current_round
C - - - - - 0x00025B 00:C24B: A9 02     LDA #$02
C - - - - - 0x00025D 00:C24D: 85 BE     STA ram_00BE
C - - - - - 0x00025F 00:C24F: 85 BF     STA ram_00BF
C - - - - - 0x000261 00:C251: 85 22     STA ram_0022
C - - - - - 0x000263 00:C253: A9 01     LDA #$01
C - - - - - 0x000265 00:C255: 85 E5     STA ram_00E5
C - - - - - 0x000267 00:C257: A9 00     LDA #$00
C - - - - - 0x000269 00:C259: 85 E2     STA ram_00E2
C - - - - - 0x00026B 00:C25B: 85 CE     STA ram_00CE
C - - - - - 0x00026D 00:C25D: 85 CF     STA ram_00CF
C - - - - - 0x00026F 00:C25F: 4C 0C C3  JMP loc_C30C



sub_C262_check_round_info:
C - - - - - 0x000272 00:C262: A6 20     LDX ram_current_round
C - - - - - 0x000274 00:C264: CA        DEX
C - - - - - 0x000275 00:C265: BD 92 C4  LDA tbl_C492_round_data,X
C - - - - - 0x000278 00:C268: 60        RTS



sub_C269:
C - - - - - 0x000279 00:C269: 20 44 E5  JSR sub_E544
C - - - - - 0x00027C 00:C26C: 20 79 E5  JSR sub_E579
C - - - - - 0x00027F 00:C26F: 60        RTS



sub_C270:
C - - - - - 0x000280 00:C270: 20 69 C2  JSR sub_C269
C - - - - - 0x000283 00:C273: 20 08 EC  JSR sub_EC08
C - - - - - 0x000286 00:C276: 60        RTS



loc_C277:
C D 2 - - - 0x000287 00:C277: A2 FF     LDX #$FF
C - - - - - 0x000289 00:C279: 9A        TXS
C - - - - - 0x00028A 00:C27A: 20 08 EC  JSR sub_EC08
C - - - - - 0x00028D 00:C27D: A9 01     LDA #$01
C - - - - - 0x00028F 00:C27F: 85 26     STA ram_0026
C - - - - - 0x000291 00:C281: 85 E5     STA ram_00E5
bra_C283_infinite_loop:
C - - - - - 0x000293 00:C283: A5 26     LDA ram_0026
C - - - - - 0x000295 00:C285: D0 FC     BNE bra_C283_infinite_loop
C - - - - - 0x000297 00:C287: 20 B5 C6  JSR sub_C6B5
C - - - - - 0x00029A 00:C28A: A9 00     LDA #$00
C - - - - - 0x00029C 00:C28C: 85 8F     STA ram_008F
C - - - - - 0x00029E 00:C28E: 20 69 C2  JSR sub_C269
C - - - - - 0x0002A1 00:C291: 20 21 CD  JSR sub_CD21
C - - - - - 0x0002A4 00:C294: 20 62 C2  JSR sub_C262_check_round_info
C - - - - - 0x0002A7 00:C297: D0 29     BNE bra_C2C2
C - - - - - 0x0002A9 00:C299: 20 AF CC  JSR sub_CCAF
C - - - - - 0x0002AC 00:C29C: 20 08 EC  JSR sub_EC08
C - - - - - 0x0002AF 00:C29F: A9 20     LDA #$20
C - - - - - 0x0002B1 00:C2A1: 20 3D CD  JSR sub_CD3D
C - - - - - 0x0002B4 00:C2A4: A9 80     LDA #$80
C - - - - - 0x0002B6 00:C2A6: 20 3D CD  JSR sub_CD3D
C - - - - - 0x0002B9 00:C2A9: 20 79 CE  JSR sub_CE79
C - - - - - 0x0002BC 00:C2AC: A0 40     LDY #$40
C - - - - - 0x0002BE 00:C2AE: A9 20     LDA #$20
C - - - - - 0x0002C0 00:C2B0: 20 91 D1  JSR sub_D191_set_spr_Y
C - - - - - 0x0002C3 00:C2B3: A9 08     LDA #$08
C - - - - - 0x0002C5 00:C2B5: 20 A1 D1  JSR sub_D1A1_set_spr_T
C - - - - - 0x0002C8 00:C2B8: A9 01     LDA #$01
C - - - - - 0x0002CA 00:C2BA: 20 B7 D1  JSR sub_D1B7_set_spr_A
C - - - - - 0x0002CD 00:C2BD: A9 44     LDA #$44
C - - - - - 0x0002CF 00:C2BF: 20 C4 D1  JSR sub_D1C4_set_spr_X
bra_C2C2:
loc_C2C2:
C D 2 - - - 0x0002D2 00:C2C2: A9 0C     LDA #$0C
C - - - - - 0x0002D4 00:C2C4: 20 0C C6  JSR sub_C60C_garbage_loop
bra_C2C7_infinite_loop:
C - - - - - 0x0002D7 00:C2C7: A5 34     LDA ram_0034
C - - - - - 0x0002D9 00:C2C9: D0 FC     BNE bra_C2C7_infinite_loop
loc_C2CB:
C D 2 - - - 0x0002DB 00:C2CB: 20 AA EF  JSR sub_EFAA
C - - - - - 0x0002DE 00:C2CE: A5 E1     LDA ram_00E1
C - - - - - 0x0002E0 00:C2D0: F0 1B     BEQ bra_C2ED
C - - - - - 0x0002E2 00:C2D2: A6 C5     LDX ram_00C5
C - - - - - 0x0002E4 00:C2D4: E0 32     CPX #$32
C - - - - - 0x0002E6 00:C2D6: D0 09     BNE bra_C2E1
- - - - - - 0x0002E8 00:C2D8: 20 C8 C7  JSR sub_C7C8_game_completed_message
- - - - - - 0x0002EB 00:C2DB: A2 00     LDX #$00
- - - - - - 0x0002ED 00:C2DD: A9 01     LDA #$01
- - - - - - 0x0002EF 00:C2DF: 85 E9     STA ram_00E9
bra_C2E1:
C - - - - - 0x0002F1 00:C2E1: E8        INX
C - - - - - 0x0002F2 00:C2E2: 86 C5     STX ram_00C5
C - - - - - 0x0002F4 00:C2E4: 86 20     STX ram_current_round
C - - - - - 0x0002F6 00:C2E6: A5 BF     LDA ram_00BF
C - - - - - 0x0002F8 00:C2E8: 85 22     STA ram_0022
C - - - - - 0x0002FA 00:C2EA: 4C 49 C3  JMP loc_C349
bra_C2ED:
C - - - - - 0x0002FD 00:C2ED: A6 C4     LDX ram_00C4
C - - - - - 0x0002FF 00:C2EF: E0 32     CPX #$32
C - - - - - 0x000301 00:C2F1: D0 09     BNE bra_C2FC
C - - - - - 0x000303 00:C2F3: 20 C8 C7  JSR sub_C7C8_game_completed_message
C - - - - - 0x000306 00:C2F6: A2 00     LDX #$00
C - - - - - 0x000308 00:C2F8: A9 01     LDA #$01
C - - - - - 0x00030A 00:C2FA: 85 E8     STA ram_00E8
bra_C2FC:
C - - - - - 0x00030C 00:C2FC: E8        INX
C - - - - - 0x00030D 00:C2FD: 86 C4     STX ram_00C4
C - - - - - 0x00030F 00:C2FF: 86 20     STX ram_current_round
C - - - - - 0x000311 00:C301: A5 BE     LDA ram_00BE
C - - - - - 0x000313 00:C303: 85 22     STA ram_0022
C - - - - - 0x000315 00:C305: 4C 49 C3  JMP loc_C349



loc_C308:
C D 2 - - - 0x000318 00:C308: A9 00     LDA #$00
C - - - - - 0x00031A 00:C30A: 85 E5     STA ram_00E5
loc_C30C:
C D 2 - - - 0x00031C 00:C30C: A2 FF     LDX #$FF
C - - - - - 0x00031E 00:C30E: 9A        TXS
C - - - - - 0x00031F 00:C30F: 20 AA EF  JSR sub_EFAA
C - - - - - 0x000322 00:C312: A5 E0     LDA ram_00E0
C - - - - - 0x000324 00:C314: F0 2B     BEQ bra_C341
C - - - - - 0x000326 00:C316: A5 E1     LDA ram_00E1
C - - - - - 0x000328 00:C318: F0 11     BEQ bra_C32B
C - - - - - 0x00032A 00:C31A: A5 BF     LDA ram_00BF
C - - - - - 0x00032C 00:C31C: 30 11     BMI bra_C32F
bra_C31E:
C - - - - - 0x00032E 00:C31E: A5 BF     LDA ram_00BF
C - - - - - 0x000330 00:C320: 85 22     STA ram_0022
C - - - - - 0x000332 00:C322: A5 C5     LDA ram_00C5
C - - - - - 0x000334 00:C324: 85 20     STA ram_current_round
C - - - - - 0x000336 00:C326: A9 01     LDA #$01
C - - - - - 0x000338 00:C328: 4C 39 C3  JMP loc_C339
bra_C32B:
C - - - - - 0x00033B 00:C32B: A5 BE     LDA ram_00BE
C - - - - - 0x00033D 00:C32D: 30 EF     BMI bra_C31E
bra_C32F:
C - - - - - 0x00033F 00:C32F: A5 BE     LDA ram_00BE
C - - - - - 0x000341 00:C331: 85 22     STA ram_0022
C - - - - - 0x000343 00:C333: A5 C4     LDA ram_00C4
C - - - - - 0x000345 00:C335: 85 20     STA ram_current_round
C - - - - - 0x000347 00:C337: A9 00     LDA #$00
loc_C339:
C D 2 - - - 0x000349 00:C339: 85 E1     STA ram_00E1
C - - - - - 0x00034B 00:C33B: 20 38 C4  JSR sub_C438
C - - - - - 0x00034E 00:C33E: 4C 49 C3  JMP loc_C349
bra_C341:
C - - - - - 0x000351 00:C341: A5 BE     LDA ram_00BE
C - - - - - 0x000353 00:C343: 85 22     STA ram_0022
C - - - - - 0x000355 00:C345: A5 C4     LDA ram_00C4
C - - - - - 0x000357 00:C347: 85 20     STA ram_current_round
loc_C349:
C D 2 - - - 0x000359 00:C349: A2 05     LDX #$05
C - - - - - 0x00035B 00:C34B: A5 20     LDA ram_current_round
C - - - - - 0x00035D 00:C34D: C9 07     CMP #$07
C - - - - - 0x00035F 00:C34F: B0 02     BCS bra_C353
C - - - - - 0x000361 00:C351: AA        TAX
C - - - - - 0x000362 00:C352: CA        DEX
bra_C353:
C - - - - - 0x000363 00:C353: BD 8C C4  LDA tbl_C48C,X
C - - - - - 0x000366 00:C356: 85 21     STA ram_0021
C - - - - - 0x000368 00:C358: A9 00     LDA #$00
C - - - - - 0x00036A 00:C35A: 85 E3     STA ram_00E3
C - - - - - 0x00036C 00:C35C: 85 CC     STA ram_00CC
C - - - - - 0x00036E 00:C35E: 20 10 C4  JSR sub_C410
C - - - - - 0x000371 00:C361: 20 4D EF  JSR sub_EF4D_clear_nametable
C - - - - - 0x000374 00:C364: A9 01     LDA #$01
C - - - - - 0x000376 00:C366: 20 0C C6  JSR sub_C60C_garbage_loop
C - - - - - 0x000379 00:C369: 20 62 C2  JSR sub_C262_check_round_info
C - - - - - 0x00037C 00:C36C: 85 8F     STA ram_008F
C - - - - - 0x00037E 00:C36E: 20 75 E9  JSR sub_E975
C - - - - - 0x000381 00:C371: 20 CD E3  JSR sub_E3CD
C - - - - - 0x000384 00:C374: A5 0F     LDA ram_000F
C - - - - - 0x000386 00:C376: F0 1F     BEQ bra_C397_no_error
; error screen if player not existed or something after using game editor
- - - - - - 0x000388 00:C378: 20 4D EF  JSR sub_EF4D_clear_nametable
- - - - - - 0x00038B 00:C37B: 20 AA EF  JSR sub_EFAA
- - - - - - 0x00038E 00:C37E: 20 6C EF  JSR sub_EF6C
- - - - - - 0x000391 00:C381: A9 00     LDA #< tbl_C400_txt___round_error
- - - - - - 0x000393 00:C383: 85 00     STA ram_0000
- - - - - - 0x000395 00:C385: A9 C4     LDA #> tbl_C400_txt___round_error
- - - - - - 0x000397 00:C387: 85 01     STA ram_0001
- - - - - - 0x000399 00:C389: 20 28 EC  JSR sub_EC28_print_tiles_on_black_bg
- - - - - - 0x00039C 00:C38C: 20 76 EF  JSR sub_EF76
- - - - - - 0x00039F 00:C38F: A9 14     LDA #$14
- - - - - - 0x0003A1 00:C391: 20 0C C6  JSR sub_C60C_garbage_loop
- - - - - - 0x0003A4 00:C394: 4C EF C1  JMP loc_C1EF
bra_C397_no_error:
C - - - - - 0x0003A7 00:C397: 20 7A DA  JSR sub_DA7A
C - - - - - 0x0003AA 00:C39A: 20 39 D5  JSR sub_D539
C - - - - - 0x0003AD 00:C39D: 20 D4 D1  JSR sub_D1D4
C - - - - - 0x0003B0 00:C3A0: 20 5C D0  JSR sub_D05C
C - - - - - 0x0003B3 00:C3A3: 20 BF CE  JSR sub_CEBF
C - - - - - 0x0003B6 00:C3A6: 20 A7 CB  JSR sub_CBA7
C - - - - - 0x0003B9 00:C3A9: 20 F0 CA  JSR sub_CAF0
C - - - - - 0x0003BC 00:C3AC: 20 A1 C9  JSR sub_C9A1
C - - - - - 0x0003BF 00:C3AF: 20 3E D0  JSR sub_D03E
C - - - - - 0x0003C2 00:C3B2: A5 A7     LDA ram_00A7
C - - - - - 0x0003C4 00:C3B4: D0 16     BNE bra_C3CC
C - - - - - 0x0003C6 00:C3B6: A5 E5     LDA ram_00E5
C - - - - - 0x0003C8 00:C3B8: F0 06     BEQ bra_C3C0
C - - - - - 0x0003CA 00:C3BA: A5 8F     LDA ram_008F
C - - - - - 0x0003CC 00:C3BC: D0 13     BNE bra_C3D1
C - - - - - 0x0003CE 00:C3BE: F0 04     BEQ bra_C3C4
bra_C3C0:
C - - - - - 0x0003D0 00:C3C0: A5 CE     LDA ram_00CE
C - - - - - 0x0003D2 00:C3C2: F0 08     BEQ bra_C3CC
bra_C3C4:
C - - - - - 0x0003D4 00:C3C4: 20 63 F1  JSR sub_F163
C - - - - - 0x0003D7 00:C3C7: A9 08     LDA #$08
C - - - - - 0x0003D9 00:C3C9: 20 0C C6  JSR sub_C60C_garbage_loop
bra_C3CC:
C - - - - - 0x0003DC 00:C3CC: A9 02     LDA #$02
C - - - - - 0x0003DE 00:C3CE: 20 0C C6  JSR sub_C60C_garbage_loop
bra_C3D1:
C - - - - - 0x0003E1 00:C3D1: A9 86     LDA #$86
C - - - - - 0x0003E3 00:C3D3: 20 E8 DF  JSR sub_DFE8
C - - - - - 0x0003E6 00:C3D6: A9 02     LDA #$02
C - - - - - 0x0003E8 00:C3D8: 20 0C C6  JSR sub_C60C_garbage_loop
C - - - - - 0x0003EB 00:C3DB: A5 8F     LDA ram_008F
C - - - - - 0x0003ED 00:C3DD: 85 CE     STA ram_00CE
C - - - - - 0x0003EF 00:C3DF: A9 01     LDA #$01
C - - - - - 0x0003F1 00:C3E1: 85 24     STA ram_0024
C - - - - - 0x0003F3 00:C3E3: A9 00     LDA #$00
C - - - - - 0x0003F5 00:C3E5: 85 E5     STA ram_00E5
C - - - - - 0x0003F7 00:C3E7: 85 3F     STA ram_003F
C - - - - - 0x0003F9 00:C3E9: A5 A7     LDA ram_00A7
C - - - - - 0x0003FB 00:C3EB: D0 10     BNE bra_C3FD
C - - - - - 0x0003FD 00:C3ED: 20 DC F2  JSR sub_F2DC
C - - - - - 0x000400 00:C3F0: A5 8F     LDA ram_008F
C - - - - - 0x000402 00:C3F2: D0 06     BNE bra_C3FA
C - - - - - 0x000404 00:C3F4: 20 1B F0  JSR sub_F01B
C - - - - - 0x000407 00:C3F7: 4C C4 C4  JMP loc_C4C4
bra_C3FA:
C - - - - - 0x00040A 00:C3FA: 20 39 F0  JSR sub_F039
bra_C3FD:
C - - - - - 0x00040D 00:C3FD: 4C C4 C4  JMP loc_C4C4



tbl_C400_txt___round_error:
- - - - - - 0x000410 00:C400: AA 21     .word $21AA
- - - - - - 0x000412 00:C402: 52        .byte "ROUND ERROR"
- - - - - - 0x00041D 00:C40D: 00        .byte $00   ; 

- - - - - - 0x00041E 00:C40E: FF FF     .word $FFFF ; end token



sub_C410:
C - - - - - 0x000420 00:C410: 20 62 C2  JSR sub_C262_check_round_info
C - - - - - 0x000423 00:C413: F0 22     BEQ bra_C437_RTS
C - - - - - 0x000425 00:C415: 20 4D EF  JSR sub_EF4D_clear_nametable
C - - - - - 0x000428 00:C418: 20 AA EF  JSR sub_EFAA
C - - - - - 0x00042B 00:C41B: 20 6C EF  JSR sub_EF6C
C - - - - - 0x00042E 00:C41E: A9 7B     LDA #< tbl_C47B_txt___bonus_round
C - - - - - 0x000430 00:C420: 85 00     STA ram_0000
C - - - - - 0x000432 00:C422: A9 C4     LDA #> tbl_C47B_txt___bonus_round
C - - - - - 0x000434 00:C424: 85 01     STA ram_0001
C - - - - - 0x000436 00:C426: 20 28 EC  JSR sub_EC28_print_tiles_on_black_bg
C - - - - - 0x000439 00:C429: 20 76 EF  JSR sub_EF76
C - - - - - 0x00043C 00:C42C: 20 D4 F2  JSR sub_F2D4
C - - - - - 0x00043F 00:C42F: 20 04 F0  JSR sub_F004
C - - - - - 0x000442 00:C432: A9 07     LDA #$07
C - - - - - 0x000444 00:C434: 20 0C C6  JSR sub_C60C_garbage_loop
bra_C437_RTS:
C - - - - - 0x000447 00:C437: 60        RTS



sub_C438:
C - - - - - 0x000448 00:C438: 20 4D EF  JSR sub_EF4D_clear_nametable
C - - - - - 0x00044B 00:C43B: 20 AA EF  JSR sub_EFAA
C - - - - - 0x00044E 00:C43E: 20 6C EF  JSR sub_EF6C
C - - - - - 0x000451 00:C441: A9 61     LDA #< tbl_C461_txt___player_I
C - - - - - 0x000453 00:C443: 85 00     STA ram_0000
C - - - - - 0x000455 00:C445: A9 C4     LDA #> tbl_C461_txt___player_I
C - - - - - 0x000457 00:C447: 85 01     STA ram_0001
C - - - - - 0x000459 00:C449: A5 E1     LDA ram_00E1
C - - - - - 0x00045B 00:C44B: F0 08     BEQ bra_C455
C - - - - - 0x00045D 00:C44D: A9 6E     LDA #< tbl_C46E_txt___player_II
C - - - - - 0x00045F 00:C44F: 85 00     STA ram_0000
C - - - - - 0x000461 00:C451: A9 C4     LDA #> tbl_C46E_txt___player_II
C - - - - - 0x000463 00:C453: 85 01     STA ram_0001
bra_C455:
C - - - - - 0x000465 00:C455: 20 28 EC  JSR sub_EC28_print_tiles_on_black_bg
C - - - - - 0x000468 00:C458: 20 76 EF  JSR sub_EF76
C - - - - - 0x00046B 00:C45B: A9 08     LDA #$08
C - - - - - 0x00046D 00:C45D: 20 0C C6  JSR sub_C60C_garbage_loop
C - - - - - 0x000470 00:C460: 60        RTS



tbl_C461_txt___player_I:
- D 2 - I - 0x000471 00:C461: AC 21     .word $21AC
- D 2 - I - 0x000473 00:C463: 50        .byte "PLAYER "
- D 2 - I - 0x00047A 00:C46A: 3A        .byte $3A   ; I
- D 2 - I - 0x00047B 00:C46B: 00        .byte $00   ; 

- D 2 - I - 0x00047C 00:C46C: FF FF     .word $FFFF ; end token



tbl_C46E_txt___player_II:
- D 2 - I - 0x00047E 00:C46E: AC 21     .word $21AC
- D 2 - I - 0x000480 00:C470: 50        .byte "PLAYER "
- D 2 - I - 0x000487 00:C477: 3B        .byte $3B   ; II
- D 2 - I - 0x000488 00:C478: 00        .byte $00   ; 

- D 2 - I - 0x000489 00:C479: FF FF     .word $FFFF ; end token



tbl_C47B_txt___bonus_round:
- D 2 - I - 0x00048B 00:C47B: AA 21     .word $21AA
- D 2 - I - 0x00048D 00:C47D: 42        .byte "BONUS ROUND!"
- D 2 - I - 0x000499 00:C489: 00        .byte $00   ; 

- D 2 - I - 0x00049A 00:C48A: FF FF     .word $FFFF ; end token



tbl_C48C:
- D 2 - - - 0x00049C 00:C48C: 28        .byte $28   ; 00
- D 2 - - - 0x00049D 00:C48D: 32        .byte $32   ; 01
- D 2 - - - 0x00049E 00:C48E: 3C        .byte $3C   ; 02
- D 2 - - - 0x00049F 00:C48F: 46        .byte $46   ; 03
- D 2 - - - 0x0004A0 00:C490: 50        .byte $50   ; 04
- D 2 - - - 0x0004A1 00:C491: 5A        .byte $5A   ; 05



tbl_C492_round_data:
- D 2 - - - 0x0004A2 00:C492: 00        .byte $00   ; 1
- D 2 - - - 0x0004A3 00:C493: 00        .byte $00   ; 2
- D 2 - - - 0x0004A4 00:C494: 01        .byte $01   ; 3
- D 2 - - - 0x0004A5 00:C495: 00        .byte $00   ; 4
- D 2 - - - 0x0004A6 00:C496: 00        .byte $00   ; 5
- D 2 - - - 0x0004A7 00:C497: 00        .byte $00   ; 6
- D 2 - - - 0x0004A8 00:C498: 00        .byte $00   ; 7
- D 2 - - - 0x0004A9 00:C499: 02        .byte $02   ; 8
- D 2 - - - 0x0004AA 00:C49A: 00        .byte $00   ; 9
- D 2 - - - 0x0004AB 00:C49B: 00        .byte $00   ; 10
- D 2 - - - 0x0004AC 00:C49C: 00        .byte $00   ; 11
- D 2 - - - 0x0004AD 00:C49D: 00        .byte $00   ; 12
- D 2 - - - 0x0004AE 00:C49E: 03        .byte $03   ; 13
- D 2 - - - 0x0004AF 00:C49F: 00        .byte $00   ; 14
- D 2 - - - 0x0004B0 00:C4A0: 00        .byte $00   ; 15
- D 2 - - - 0x0004B1 00:C4A1: 00        .byte $00   ; 16
- D 2 - - - 0x0004B2 00:C4A2: 00        .byte $00   ; 17
- D 2 - - - 0x0004B3 00:C4A3: 04        .byte $04   ; 18
- D 2 - - - 0x0004B4 00:C4A4: 00        .byte $00   ; 19
- D 2 - - - 0x0004B5 00:C4A5: 00        .byte $00   ; 20
- D 2 - - - 0x0004B6 00:C4A6: 00        .byte $00   ; 21
- D 2 - - - 0x0004B7 00:C4A7: 00        .byte $00   ; 22
- D 2 - - - 0x0004B8 00:C4A8: 04        .byte $04   ; 23
- D 2 - - - 0x0004B9 00:C4A9: 00        .byte $00   ; 24
- D 2 - - - 0x0004BA 00:C4AA: 00        .byte $00   ; 25
- D 2 - - - 0x0004BB 00:C4AB: 00        .byte $00   ; 26
- D 2 - - - 0x0004BC 00:C4AC: 00        .byte $00   ; 27
- D 2 - - - 0x0004BD 00:C4AD: 04        .byte $04   ; 28
- D 2 - - - 0x0004BE 00:C4AE: 00        .byte $00   ; 29
- D 2 - - - 0x0004BF 00:C4AF: 00        .byte $00   ; 30
- D 2 - - - 0x0004C0 00:C4B0: 00        .byte $00   ; 31
- D 2 - - - 0x0004C1 00:C4B1: 00        .byte $00   ; 32
- D 2 - - - 0x0004C2 00:C4B2: 04        .byte $04   ; 33
- D 2 - - - 0x0004C3 00:C4B3: 00        .byte $00   ; 34
- D 2 - - - 0x0004C4 00:C4B4: 00        .byte $00   ; 35
- D 2 - - - 0x0004C5 00:C4B5: 00        .byte $00   ; 36
- D 2 - - - 0x0004C6 00:C4B6: 00        .byte $00   ; 37
- D 2 - - - 0x0004C7 00:C4B7: 04        .byte $04   ; 38
- D 2 - - - 0x0004C8 00:C4B8: 00        .byte $00   ; 39
- D 2 - - - 0x0004C9 00:C4B9: 00        .byte $00   ; 40
- D 2 - - - 0x0004CA 00:C4BA: 00        .byte $00   ; 41
- D 2 - - - 0x0004CB 00:C4BB: 00        .byte $00   ; 42
- D 2 - - - 0x0004CC 00:C4BC: 04        .byte $04   ; 43
- D 2 - - - 0x0004CD 00:C4BD: 00        .byte $00   ; 44
- D 2 - - - 0x0004CE 00:C4BE: 00        .byte $00   ; 45
- D 2 - - - 0x0004CF 00:C4BF: 00        .byte $00   ; 46
- D 2 - - - 0x0004D0 00:C4C0: 00        .byte $00   ; 47
- D 2 - - - 0x0004D1 00:C4C1: 04        .byte $04   ; 48
- D 2 - - - 0x0004D2 00:C4C2: 00        .byte $00   ; 49
- D 2 - - - 0x0004D3 00:C4C3: 00        .byte $00   ; 50



loc_C4C4:
C D 2 - - - 0x0004D4 00:C4C4: A2 FF     LDX #$FF
C - - - - - 0x0004D6 00:C4C6: 9A        TXS
C - - - - - 0x0004D7 00:C4C7: A9 01     LDA #$01
C - - - - - 0x0004D9 00:C4C9: 85 26     STA ram_0026
C - - - - - 0x0004DB 00:C4CB: A5 A7     LDA ram_00A7
C - - - - - 0x0004DD 00:C4CD: D0 26     BNE bra_C4F5
C - - - - - 0x0004DF 00:C4CF: A5 1A     LDA ram_btn_hold
C - - - - - 0x0004E1 00:C4D1: 29 10     AND #con_btn_Start
C - - - - - 0x0004E3 00:C4D3: D0 26     BNE bra_C4FB
C - - - - - 0x0004E5 00:C4D5: A5 E1     LDA ram_00E1
C - - - - - 0x0004E7 00:C4D7: D0 0F     BNE bra_C4E8
C - - - - - 0x0004E9 00:C4D9: A5 1A     LDA ram_btn_hold
C - - - - - 0x0004EB 00:C4DB: 05 1B     ORA ram_btn_hold + $01
C - - - - - 0x0004ED 00:C4DD: 29 C0     AND #con_btns_AB
C - - - - - 0x0004EF 00:C4DF: D0 1A     BNE bra_C4FB
C - - - - - 0x0004F1 00:C4E1: A9 00     LDA #$00
C - - - - - 0x0004F3 00:C4E3: 85 24     STA ram_0024
C - - - - - 0x0004F5 00:C4E5: 4C FB C4  JMP loc_C4FB
bra_C4E8:
C - - - - - 0x0004F8 00:C4E8: A5 1B     LDA ram_btn_hold + $01
C - - - - - 0x0004FA 00:C4EA: 29 C0     AND #con_btns_AB
C - - - - - 0x0004FC 00:C4EC: D0 0D     BNE bra_C4FB
C - - - - - 0x0004FE 00:C4EE: A9 00     LDA #$00
C - - - - - 0x000500 00:C4F0: 85 24     STA ram_0024
C - - - - - 0x000502 00:C4F2: 4C FB C4  JMP loc_C4FB
bra_C4F5:
C - - - - - 0x000505 00:C4F5: A9 00     LDA #$00
C - - - - - 0x000507 00:C4F7: 85 24     STA ram_0024
C - - - - - 0x000509 00:C4F9: 85 25     STA ram_0025
bra_C4FB:
loc_C4FB:
C D 2 - - - 0x00050B 00:C4FB: 20 C9 DA  JSR sub_DAC9
C - - - - - 0x00050E 00:C4FE: 20 5F D5  JSR sub_D55F
C - - - - - 0x000511 00:C501: 20 F3 D1  JSR sub_D1F3
C - - - - - 0x000514 00:C504: 20 82 D0  JSR sub_D082
C - - - - - 0x000517 00:C507: 20 EC CE  JSR sub_CEEC
C - - - - - 0x00051A 00:C50A: 20 AE C9  JSR sub_C9AE
C - - - - - 0x00051D 00:C50D: 20 B9 CB  JSR sub_CBB9
C - - - - - 0x000520 00:C510: 20 94 CD  JSR sub_CD94
C - - - - - 0x000523 00:C513: 20 6A CB  JSR sub_CB6A
C - - - - - 0x000526 00:C516: 20 08 D0  JSR sub_D008
C - - - - - 0x000529 00:C519: 20 5E CB  JSR sub_CB5E
C - - - - - 0x00052C 00:C51C: 20 70 C2  JSR sub_C270
bra_C51F_infinite_loop:
C - - - - - 0x00052F 00:C51F: A5 26     LDA ram_0026
C - - - - - 0x000531 00:C521: D0 FC     BNE bra_C51F_infinite_loop
C - - - - - 0x000533 00:C523: A6 E5     LDX ram_00E5
C - - - - - 0x000535 00:C525: CA        DEX
C - - - - - 0x000536 00:C526: E4 2B     CPX ram_002B
C - - - - - 0x000538 00:C528: D0 03     BNE bra_C52D
C - - - - - 0x00053A 00:C52A: 4C 77 C2  JMP loc_C277
bra_C52D:
C - - - - - 0x00053D 00:C52D: 20 8C C6  JSR sub_C68C
C - - - - - 0x000540 00:C530: 20 49 C5  JSR sub_C549
C - - - - - 0x000543 00:C533: A5 A7     LDA ram_00A7
C - - - - - 0x000545 00:C535: F0 0F     BEQ bra_C546
C - - - - - 0x000547 00:C537: A5 1A     LDA ram_btn_hold
C - - - - - 0x000549 00:C539: 29 10     AND #con_btn_Start
C - - - - - 0x00054B 00:C53B: D0 06     BNE bra_C543
C - - - - - 0x00054D 00:C53D: A5 1A     LDA ram_btn_hold
C - - - - - 0x00054F 00:C53F: 29 20     AND #con_btn_Select
C - - - - - 0x000551 00:C541: F0 03     BEQ bra_C546
bra_C543:
C - - - - - 0x000553 00:C543: 4C EF C1  JMP loc_C1EF
bra_C546:
C - - - - - 0x000556 00:C546: 4C C4 C4  JMP loc_C4C4



sub_C549:
C - - - - - 0x000559 00:C549: A5 A7     LDA ram_00A7
C - - - - - 0x00055B 00:C54B: D0 12     BNE bra_C55F_RTS
C - - - - - 0x00055D 00:C54D: A5 34     LDA ram_0034
C - - - - - 0x00055F 00:C54F: 05 38     ORA ram_0038
C - - - - - 0x000561 00:C551: D0 0C     BNE bra_C55F_RTS
C - - - - - 0x000563 00:C553: A5 1A     LDA ram_btn_hold
C - - - - - 0x000565 00:C555: 29 10     AND #con_btn_Start
C - - - - - 0x000567 00:C557: D0 20     BNE bra_C579
C - - - - - 0x000569 00:C559: A5 1A     LDA ram_btn_hold
C - - - - - 0x00056B 00:C55B: 29 20     AND #con_btn_Select
C - - - - - 0x00056D 00:C55D: D0 01     BNE bra_C560
bra_C55F_RTS:
C - - - - - 0x00056F 00:C55F: 60        RTS
bra_C560:
C - - - - - 0x000570 00:C560: 20 1B F3  JSR sub_F31B
bra_C563_infinite_loop:
C - - - - - 0x000573 00:C563: A5 1A     LDA ram_btn_hold
C - - - - - 0x000575 00:C565: 29 10     AND #con_btn_Start
C - - - - - 0x000577 00:C567: D0 0D     BNE bra_C576
C - - - - - 0x000579 00:C569: A5 1A     LDA ram_btn_hold
C - - - - - 0x00057B 00:C56B: 29 20     AND #con_btn_Select
C - - - - - 0x00057D 00:C56D: D0 F4     BNE bra_C563_infinite_loop
C - - - - - 0x00057F 00:C56F: A9 01     LDA #$01
C - - - - - 0x000581 00:C571: 85 CF     STA ram_00CF
C - - - - - 0x000583 00:C573: 4C CB C2  JMP loc_C2CB
bra_C576:
- - - - - - 0x000586 00:C576: 4C 52 DB  JMP loc_DB52
bra_C579:
C - - - - - 0x000589 00:C579: A5 24     LDA ram_0024
C - - - - - 0x00058B 00:C57B: D0 E2     BNE bra_C55F_RTS
C - - - - - 0x00058D 00:C57D: 20 D4 F2  JSR sub_F2D4
C - - - - - 0x000590 00:C580: A9 07     LDA #$07
C - - - - - 0x000592 00:C582: 8D 15 40  STA $4015
C - - - - - 0x000595 00:C585: 20 8D F0  JSR sub_F08D
C - - - - - 0x000598 00:C588: A2 00     LDX #$00
bra_C58A_loop:
C - - - - - 0x00059A 00:C58A: BD 00 07  LDA ram_oam,X
C - - - - - 0x00059D 00:C58D: 9D 00 04  STA ram_0400,X
C - - - - - 0x0005A0 00:C590: E8        INX
C - - - - - 0x0005A1 00:C591: D0 F7     BNE bra_C58A_loop
C - - - - - 0x0005A3 00:C593: A2 00     LDX #$00
bra_C595_loop:
C - - - - - 0x0005A5 00:C595: A9 F8     LDA #$F8
C - - - - - 0x0005A7 00:C597: 9D 00 07  STA ram_oam,X
C - - - - - 0x0005AA 00:C59A: E8        INX
C - - - - - 0x0005AB 00:C59B: D0 F8     BNE bra_C595_loop
bra_C59D_infinite_loop:
C - - - - - 0x0005AD 00:C59D: A5 1A     LDA ram_btn_hold
C - - - - - 0x0005AF 00:C59F: 29 10     AND #con_btn_Start
C - - - - - 0x0005B1 00:C5A1: D0 FA     BNE bra_C59D_infinite_loop
bra_C5A3_infinite_loop:
C - - - - - 0x0005B3 00:C5A3: A5 1A     LDA ram_btn_hold
C - - - - - 0x0005B5 00:C5A5: 29 10     AND #con_btn_Start
C - - - - - 0x0005B7 00:C5A7: F0 FA     BEQ bra_C5A3_infinite_loop
C - - - - - 0x0005B9 00:C5A9: A2 00     LDX #$00
bra_C5AB_loop:
C - - - - - 0x0005BB 00:C5AB: BD 00 04  LDA ram_0400,X
C - - - - - 0x0005BE 00:C5AE: 9D 00 07  STA ram_oam,X
C - - - - - 0x0005C1 00:C5B1: E8        INX
C - - - - - 0x0005C2 00:C5B2: D0 F7     BNE bra_C5AB_loop
bra_C5B4_infinite_loop:
C - - - - - 0x0005C4 00:C5B4: A5 1A     LDA ram_btn_hold
C - - - - - 0x0005C6 00:C5B6: 29 10     AND #con_btn_Start
C - - - - - 0x0005C8 00:C5B8: D0 FA     BNE bra_C5B4_infinite_loop
C - - - - - 0x0005CA 00:C5BA: A5 1A     LDA ram_btn_hold
C - - - - - 0x0005CC 00:C5BC: C9 E2     CMP #con_btns_AB + con_btn_Left + con_btn_Select
C - - - - - 0x0005CE 00:C5BE: D0 06     BNE bra_C5C6
- - - - - - 0x0005D0 00:C5C0: A5 1B     LDA ram_btn_hold + $01
- - - - - - 0x0005D2 00:C5C2: C9 41     CMP #con_btn_B + con_btn_Right
- - - - - - 0x0005D4 00:C5C4: F0 18     BEQ bra_C5DE_hidden_text
bra_C5C6:
C - - - - - 0x0005D6 00:C5C6: 20 8D F0  JSR sub_F08D
C - - - - - 0x0005D9 00:C5C9: A9 05     LDA #$05
C - - - - - 0x0005DB 00:C5CB: 20 0C C6  JSR sub_C60C_garbage_loop
C - - - - - 0x0005DE 00:C5CE: 20 DC F2  JSR sub_F2DC
C - - - - - 0x0005E1 00:C5D1: A5 E5     LDA ram_00E5
C - - - - - 0x0005E3 00:C5D3: D0 08     BNE bra_C5DD_RTS
C - - - - - 0x0005E5 00:C5D5: A5 57     LDA ram_0057
C - - - - - 0x0005E7 00:C5D7: D0 04     BNE bra_C5DD_RTS
C - - - - - 0x0005E9 00:C5D9: A9 01     LDA #$01
C - - - - - 0x0005EB 00:C5DB: 85 3C     STA ram_003C
bra_C5DD_RTS:
C - - - - - 0x0005ED 00:C5DD: 60        RTS
bra_C5DE_hidden_text:
; https://tcrf.net/Nuts_%26_Milk
- - - - - - 0x0005EE 00:C5DE: 20 1B F3  JSR sub_F31B
- - - - - - 0x0005F1 00:C5E1: 20 AA EF  JSR sub_EFAA
- - - - - - 0x0005F4 00:C5E4: 20 4D EF  JSR sub_EF4D_clear_nametable
- - - - - - 0x0005F7 00:C5E7: 20 6C EF  JSR sub_EF6C
- - - - - - 0x0005FA 00:C5EA: A9 21     LDA #> $21E0
- - - - - - 0x0005FC 00:C5EC: 8D 06 20  STA $2006
- - - - - - 0x0005FF 00:C5EF: A2 E0     LDX #< $21E0
- - - - - - 0x000601 00:C5F1: 8E 06 20  STX $2006
- - - - - - 0x000604 00:C5F4: A2 00     LDX #$00
bra_C5F6_loop:
- - - - - - 0x000606 00:C5F6: BD 03 C0  LDA tbl_C003_hidden_text,X
- - - - - - 0x000609 00:C5F9: 20 26 C0  JSR sub_C026_set_A_to_2007
- - - - - - 0x00060C 00:C5FC: E8        INX
- - - - - - 0x00060D 00:C5FD: E0 20     CPX #$20
- - - - - - 0x00060F 00:C5FF: D0 F5     BNE bra_C5F6_loop
- - - - - - 0x000611 00:C601: 20 76 EF  JSR sub_EF76
- - - - - - 0x000614 00:C604: A9 14     LDA #$14
- - - - - - 0x000616 00:C606: 20 0C C6  JSR sub_C60C_garbage_loop
- - - - - - 0x000619 00:C609: 4C CB C2  JMP loc_C2CB



sub_C60C_garbage_loop:
C - - - - - 0x00061C 00:C60C: A0 00     LDY #$00
bra_C60E_loop:
C - - - - - 0x00061E 00:C60E: 20 17 C6  JSR sub_C617_garbage_loop
C - - - - - 0x000621 00:C611: 38        SEC
C - - - - - 0x000622 00:C612: E9 01     SBC #$01
C - - - - - 0x000624 00:C614: D0 F8     BNE bra_C60E_loop
C - - - - - 0x000626 00:C616: 60        RTS



sub_C617_garbage_loop:
C - - - - - 0x000627 00:C617: A2 00     LDX #$00
bra_C619_loop:
C - - - - - 0x000629 00:C619: CA        DEX
C - - - - - 0x00062A 00:C61A: D0 FD     BNE bra_C619_loop
C - - - - - 0x00062C 00:C61C: 88        DEY
C - - - - - 0x00062D 00:C61D: D0 FA     BNE bra_C619_loop
C - - - - - 0x00062F 00:C61F: 60        RTS



sub_C620:
C - - - - - 0x000630 00:C620: A5 A7     LDA ram_00A7
C - - - - - 0x000632 00:C622: F0 1D     BEQ bra_C641
C - - - - - 0x000634 00:C624: 98        TYA
C - - - - - 0x000635 00:C625: 48        PHA
C - - - - - 0x000636 00:C626: A5 A2     LDA ram_00A2
C - - - - - 0x000638 00:C628: D0 10     BNE bra_C63A
C - - - - - 0x00063A 00:C62A: A4 A0     LDY ram_00A0
C - - - - - 0x00063C 00:C62C: B9 70 C0  LDA tbl_C072_buttons - $02,Y
C - - - - - 0x00063F 00:C62F: 85 A1     STA ram_00A1
C - - - - - 0x000641 00:C631: B9 71 C0  LDA tbl_C072_timer - $01,Y
C - - - - - 0x000644 00:C634: 85 A2     STA ram_00A2
C - - - - - 0x000646 00:C636: C8        INY
C - - - - - 0x000647 00:C637: C8        INY
C - - - - - 0x000648 00:C638: 84 A0     STY ram_00A0
bra_C63A:
C - - - - - 0x00064A 00:C63A: C6 A2     DEC ram_00A2
C - - - - - 0x00064C 00:C63C: 68        PLA
C - - - - - 0x00064D 00:C63D: A8        TAY
C - - - - - 0x00064E 00:C63E: A5 A1     LDA ram_00A1
C - - - - - 0x000650 00:C640: 60        RTS
bra_C641:
C - - - - - 0x000651 00:C641: A5 A8     LDA ram_00A8
C - - - - - 0x000653 00:C643: C9 02     CMP #$02
C - - - - - 0x000655 00:C645: F0 42     BEQ bra_C689
C - - - - - 0x000657 00:C647: A5 E0     LDA ram_00E0
C - - - - - 0x000659 00:C649: D0 07     BNE bra_C652
C - - - - - 0x00065B 00:C64B: A5 1A     LDA ram_btn_hold
C - - - - - 0x00065D 00:C64D: D0 0C     BNE bra_C65B
C - - - - - 0x00065F 00:C64F: 4C 56 C6  JMP loc_C656
bra_C652:
C - - - - - 0x000662 00:C652: A5 E1     LDA ram_00E1
C - - - - - 0x000664 00:C654: F0 05     BEQ bra_C65B
loc_C656:
C D 2 - - - 0x000666 00:C656: A5 1B     LDA ram_btn_hold + $01
C - - - - - 0x000668 00:C658: 4C 5D C6  JMP loc_C65D
bra_C65B:
C - - - - - 0x00066B 00:C65B: A5 1A     LDA ram_btn_hold
loc_C65D:
C D 2 - - - 0x00066D 00:C65D: 85 EA     STA ram_00EA
C - - - - - 0x00066F 00:C65F: 29 40     AND #con_btn_B
C - - - - - 0x000671 00:C661: 0A        ASL
C - - - - - 0x000672 00:C662: 05 EA     ORA ram_00EA
C - - - - - 0x000674 00:C664: 48        PHA
C - - - - - 0x000675 00:C665: 8A        TXA
C - - - - - 0x000676 00:C666: 48        PHA
C - - - - - 0x000677 00:C667: 98        TYA
C - - - - - 0x000678 00:C668: 48        PHA
C - - - - - 0x000679 00:C669: AD 20 07  LDA ram_spr_Y + $20
C - - - - - 0x00067C 00:C66C: 29 0F     AND #$0F
C - - - - - 0x00067E 00:C66E: D0 0B     BNE bra_C67B
C - - - - - 0x000680 00:C670: AE 23 07  LDX ram_spr_X + $20
C - - - - - 0x000683 00:C673: AC 20 07  LDY ram_spr_Y + $20
C - - - - - 0x000686 00:C676: 20 56 E0  JSR sub_E056
C - - - - - 0x000689 00:C679: F0 06     BEQ bra_C681
bra_C67B:
C - - - - - 0x00068B 00:C67B: 68        PLA
C - - - - - 0x00068C 00:C67C: A8        TAY
C - - - - - 0x00068D 00:C67D: 68        PLA
C - - - - - 0x00068E 00:C67E: AA        TAX
C - - - - - 0x00068F 00:C67F: 68        PLA
C - - - - - 0x000690 00:C680: 60        RTS
bra_C681:
C - - - - - 0x000691 00:C681: 68        PLA
C - - - - - 0x000692 00:C682: A8        TAY
C - - - - - 0x000693 00:C683: 68        PLA
C - - - - - 0x000694 00:C684: AA        TAX
C - - - - - 0x000695 00:C685: 68        PLA
C - - - - - 0x000696 00:C686: 29 F7     AND #$F7
C - - - - - 0x000698 00:C688: 60        RTS
bra_C689:
- - - - - - 0x000699 00:C689: A9 00     LDA #$00
- - - - - - 0x00069B 00:C68B: 60        RTS



sub_C68C:
C - - - - - 0x00069C 00:C68C: A5 1A     LDA ram_btn_hold
C - - - - - 0x00069E 00:C68E: 05 1B     ORA ram_btn_hold + $01
C - - - - - 0x0006A0 00:C690: F0 07     BEQ bra_C699_nothing_pressed
C - - - - - 0x0006A2 00:C692: A5 23     LDA ram_0023
C - - - - - 0x0006A4 00:C694: 18        CLC
C - - - - - 0x0006A5 00:C695: 69 03     ADC #$03
C - - - - - 0x0006A7 00:C697: 85 23     STA ram_0023
bra_C699_nothing_pressed:
C - - - - - 0x0006A9 00:C699: E6 23     INC ram_0023
C - - - - - 0x0006AB 00:C69B: 60        RTS



sub_C69C:
C - - - - - 0x0006AC 00:C69C: A9 01     LDA #$01
C - - - - - 0x0006AE 00:C69E: 4C BA C6  JMP loc_C6BA    ; bzk optimize, BNE


; bzk garbage
- - - - - - 0x0006B1 00:C6A1: A9 02     LDA #$02
- - - - - - 0x0006B3 00:C6A3: 4C BA C6  JMP loc_C6BA



sub_C6A6:
C - - - - - 0x0006B6 00:C6A6: A9 05     LDA #$05
C - - - - - 0x0006B8 00:C6A8: 4C BA C6  JMP loc_C6BA    ; bzk optimize, BNE



sub_C6AB:
C - - - - - 0x0006BB 00:C6AB: A9 08     LDA #$08
C - - - - - 0x0006BD 00:C6AD: 4C BA C6  JMP loc_C6BA    ; bzk optimize, BNE


; bzk garbage
- - - - - - 0x0006C0 00:C6B0: A9 10     LDA #$10
- - - - - - 0x0006C2 00:C6B2: 4C BA C6  JMP loc_C6BA



sub_C6B5:
C - - - - - 0x0006C5 00:C6B5: A5 21     LDA ram_0021
C - - - - - 0x0006C7 00:C6B7: 4C BA C6  JMP loc_C6BA    ; bzk optimize, no need for JMP



loc_C6BA:
C D 2 - - - 0x0006CA 00:C6BA: 85 A6     STA ram_00A6
C - - - - - 0x0006CC 00:C6BC: A5 A7     LDA ram_00A7
C - - - - - 0x0006CE 00:C6BE: D0 24     BNE bra_C6E4_RTS
C - - - - - 0x0006D0 00:C6C0: A5 E1     LDA ram_00E1
C - - - - - 0x0006D2 00:C6C2: F0 10     BEQ bra_C6D4
C - - - - - 0x0006D4 00:C6C4: A5 BC     LDA ram_00BC
C - - - - - 0x0006D6 00:C6C6: 18        CLC
C - - - - - 0x0006D7 00:C6C7: 65 A6     ADC ram_00A6
C - - - - - 0x0006D9 00:C6C9: 85 BC     STA ram_00BC
C - - - - - 0x0006DB 00:C6CB: A5 BD     LDA ram_00BD
C - - - - - 0x0006DD 00:C6CD: 69 00     ADC #$00
C - - - - - 0x0006DF 00:C6CF: 85 BD     STA ram_00BD
C - - - - - 0x0006E1 00:C6D1: 4C F9 C6  JMP loc_C6F9
bra_C6D4:
C - - - - - 0x0006E4 00:C6D4: A5 B8     LDA ram_00B8
C - - - - - 0x0006E6 00:C6D6: 18        CLC
C - - - - - 0x0006E7 00:C6D7: 65 A6     ADC ram_00A6
C - - - - - 0x0006E9 00:C6D9: 85 B8     STA ram_00B8
C - - - - - 0x0006EB 00:C6DB: A5 B9     LDA ram_00B9
C - - - - - 0x0006ED 00:C6DD: 69 00     ADC #$00
C - - - - - 0x0006EF 00:C6DF: 85 B9     STA ram_00B9
C - - - - - 0x0006F1 00:C6E1: 4C E5 C6  JMP loc_C6E5
bra_C6E4_RTS:
C - - - - - 0x0006F4 00:C6E4: 60        RTS



loc_C6E5:
C D 2 - - - 0x0006F5 00:C6E5: A5 B8     LDA ram_00B8
C - - - - - 0x0006F7 00:C6E7: 38        SEC
C - - - - - 0x0006F8 00:C6E8: E5 BA     SBC ram_00BA
C - - - - - 0x0006FA 00:C6EA: A5 B9     LDA ram_00B9
C - - - - - 0x0006FC 00:C6EC: E5 BB     SBC ram_00BB
C - - - - - 0x0006FE 00:C6EE: 90 08     BCC bra_C6F8_RTS
C - - - - - 0x000700 00:C6F0: A5 B8     LDA ram_00B8
C - - - - - 0x000702 00:C6F2: 85 BA     STA ram_00BA
C - - - - - 0x000704 00:C6F4: A5 B9     LDA ram_00B9
C - - - - - 0x000706 00:C6F6: 85 BB     STA ram_00BB
bra_C6F8_RTS:
C - - - - - 0x000708 00:C6F8: 60        RTS



loc_C6F9:
C D 2 - - - 0x000709 00:C6F9: A5 BC     LDA ram_00BC
C - - - - - 0x00070B 00:C6FB: 38        SEC
C - - - - - 0x00070C 00:C6FC: E5 BA     SBC ram_00BA
C - - - - - 0x00070E 00:C6FE: A5 BD     LDA ram_00BD
C - - - - - 0x000710 00:C700: E5 BB     SBC ram_00BB
C - - - - - 0x000712 00:C702: 90 08     BCC bra_C70C_RTS
C - - - - - 0x000714 00:C704: A5 BC     LDA ram_00BC
C - - - - - 0x000716 00:C706: 85 BA     STA ram_00BA
C - - - - - 0x000718 00:C708: A5 BD     LDA ram_00BD
C - - - - - 0x00071A 00:C70A: 85 BB     STA ram_00BB
bra_C70C_RTS:
C - - - - - 0x00071C 00:C70C: 60        RTS



sub_C70D:
C - - - - - 0x00071D 00:C70D: 20 3E C7  JSR sub_C73E
C - - - - - 0x000720 00:C710: A9 B1     LDA #< ram_00B1
C - - - - - 0x000722 00:C712: 85 00     STA ram_0000
C - - - - - 0x000724 00:C714: A9 00     LDA #> ram_00B1
C - - - - - 0x000726 00:C716: 85 01     STA ram_0001
C - - - - - 0x000728 00:C718: 4C 34 C7  JMP loc_C734



sub_C71B:
C - - - - - 0x00072B 00:C71B: 20 3E C7  JSR sub_C73E
C - - - - - 0x00072E 00:C71E: A9 B3     LDA #< ram_00B3
C - - - - - 0x000730 00:C720: 85 00     STA ram_0000
C - - - - - 0x000732 00:C722: A9 00     LDA #> ram_00B3
C - - - - - 0x000734 00:C724: 85 01     STA ram_0001
C - - - - - 0x000736 00:C726: 4C 34 C7  JMP loc_C734



sub_C729:
C - - - - - 0x000739 00:C729: 20 3E C7  JSR sub_C73E
C - - - - - 0x00073C 00:C72C: A9 B4     LDA #< ram_00B4
C - - - - - 0x00073E 00:C72E: 85 00     STA ram_0000
C - - - - - 0x000740 00:C730: A9 00     LDA #> ram_00B4
C - - - - - 0x000742 00:C732: 85 01     STA ram_0001
loc_C734:
C D 2 - - - 0x000744 00:C734: A5 E6     LDA ram_00E6
C - - - - - 0x000746 00:C736: F0 03     BEQ bra_C73B
C - - - - - 0x000748 00:C738: 4C 5B EC  JMP loc_EC5B
bra_C73B:
C - - - - - 0x00074B 00:C73B: 4C D7 EB  JMP loc_EBD7_print_text



sub_C73E:
C - - - - - 0x00074E 00:C73E: 8A        TXA
C - - - - - 0x00074F 00:C73F: 48        PHA
C - - - - - 0x000750 00:C740: 98        TYA
C - - - - - 0x000751 00:C741: 48        PHA
C - - - - - 0x000752 00:C742: A5 B6     LDA ram_00B6
C - - - - - 0x000754 00:C744: 85 00     STA ram_0000
C - - - - - 0x000756 00:C746: A5 B7     LDA ram_00B7
C - - - - - 0x000758 00:C748: 85 01     STA ram_0001
C - - - - - 0x00075A 00:C74A: A9 BE     LDA #< tbl_C7BE
C - - - - - 0x00075C 00:C74C: 85 02     STA ram_0002
C - - - - - 0x00075E 00:C74E: A9 C7     LDA #> tbl_C7BE
C - - - - - 0x000760 00:C750: 85 03     STA ram_0003
C - - - - - 0x000762 00:C752: A9 B0     LDA #< ram_00B0
C - - - - - 0x000764 00:C754: 85 06     STA ram_0006
C - - - - - 0x000766 00:C756: A9 00     LDA #> ram_00B0
C - - - - - 0x000768 00:C758: 85 07     STA ram_0007
C - - - - - 0x00076A 00:C75A: A2 05     LDX #$05
bra_C75C_loop:
C - - - - - 0x00076C 00:C75C: A9 00     LDA #$00
C - - - - - 0x00076E 00:C75E: 85 08     STA ram_0008
C - - - - - 0x000770 00:C760: A0 00     LDY #$00
C - - - - - 0x000772 00:C762: B1 02     LDA (ram_0002),Y
C - - - - - 0x000774 00:C764: 85 04     STA ram_0004
C - - - - - 0x000776 00:C766: C8        INY
C - - - - - 0x000777 00:C767: B1 02     LDA (ram_0002),Y
C - - - - - 0x000779 00:C769: 85 05     STA ram_0005
loc_C76B_loop:
C D 2 - - - 0x00077B 00:C76B: A5 00     LDA ram_0000
C - - - - - 0x00077D 00:C76D: 38        SEC
C - - - - - 0x00077E 00:C76E: E5 04     SBC ram_0004
C - - - - - 0x000780 00:C770: 85 00     STA ram_0000
C - - - - - 0x000782 00:C772: A5 01     LDA ram_0001
C - - - - - 0x000784 00:C774: E5 05     SBC ram_0005
C - - - - - 0x000786 00:C776: 85 01     STA ram_0001
C - - - - - 0x000788 00:C778: 90 05     BCC bra_C77F
C - - - - - 0x00078A 00:C77A: E6 08     INC ram_0008
C - - - - - 0x00078C 00:C77C: 4C 6B C7  JMP loc_C76B_loop
bra_C77F:
C - - - - - 0x00078F 00:C77F: A5 00     LDA ram_0000
C - - - - - 0x000791 00:C781: 18        CLC
C - - - - - 0x000792 00:C782: 65 04     ADC ram_0004
C - - - - - 0x000794 00:C784: 85 00     STA ram_0000
C - - - - - 0x000796 00:C786: A5 01     LDA ram_0001
C - - - - - 0x000798 00:C788: 65 05     ADC ram_0005
C - - - - - 0x00079A 00:C78A: 85 01     STA ram_0001
C - - - - - 0x00079C 00:C78C: A0 00     LDY #$00
C - - - - - 0x00079E 00:C78E: A5 08     LDA ram_0008
C - - - - - 0x0007A0 00:C790: 09 30     ORA #$30
C - - - - - 0x0007A2 00:C792: 91 06     STA (ram_0006),Y
C - - - - - 0x0007A4 00:C794: A5 02     LDA ram_0002
C - - - - - 0x0007A6 00:C796: 18        CLC
C - - - - - 0x0007A7 00:C797: 69 02     ADC #$02
C - - - - - 0x0007A9 00:C799: 85 02     STA ram_0002
C - - - - - 0x0007AB 00:C79B: A5 03     LDA ram_0003
C - - - - - 0x0007AD 00:C79D: 69 00     ADC #$00
C - - - - - 0x0007AF 00:C79F: 85 03     STA ram_0003
C - - - - - 0x0007B1 00:C7A1: E6 06     INC ram_0006
C - - - - - 0x0007B3 00:C7A3: D0 02     BNE bra_C7A7_not_overflow
- - - - - - 0x0007B5 00:C7A5: E6 07     INC ram_0007
bra_C7A7_not_overflow:
C - - - - - 0x0007B7 00:C7A7: CA        DEX
C - - - - - 0x0007B8 00:C7A8: D0 B2     BNE bra_C75C_loop
C - - - - - 0x0007BA 00:C7AA: A9 00     LDA #$00
C - - - - - 0x0007BC 00:C7AC: 85 B5     STA ram_00B5
C - - - - - 0x0007BE 00:C7AE: 68        PLA
C - - - - - 0x0007BF 00:C7AF: A8        TAY
C - - - - - 0x0007C0 00:C7B0: 68        PLA
C - - - - - 0x0007C1 00:C7B1: AA        TAX
C - - - - - 0x0007C2 00:C7B2: 20 53 E9  JSR sub_E953_calculate_ppu_addr
C - - - - - 0x0007C5 00:C7B5: A5 00     LDA ram_0000
C - - - - - 0x0007C7 00:C7B7: 85 02     STA ram_0002
C - - - - - 0x0007C9 00:C7B9: A5 01     LDA ram_0001
C - - - - - 0x0007CB 00:C7BB: 85 03     STA ram_0003
C - - - - - 0x0007CD 00:C7BD: 60        RTS



tbl_C7BE:
; 00
- D 2 - I - 0x0007CE 00:C7BE: 10        .byte $10   ; 
- D 2 - I - 0x0007CF 00:C7BF: 27        .byte $27   ; 
; 01
- D 2 - I - 0x0007D0 00:C7C0: E8        .byte $E8   ; 
- D 2 - I - 0x0007D1 00:C7C1: 03        .byte $03   ; 
; 02
- D 2 - I - 0x0007D2 00:C7C2: 64        .byte $64   ; 
- D 2 - I - 0x0007D3 00:C7C3: 00        .byte $00   ; 
; 03
- D 2 - I - 0x0007D4 00:C7C4: 0A        .byte $0A   ; 
- D 2 - I - 0x0007D5 00:C7C5: 00        .byte $00   ; 
; 04
- D 2 - I - 0x0007D6 00:C7C6: 01        .byte $01   ; 
- D 2 - I - 0x0007D7 00:C7C7: 00        .byte $00   ; 



sub_C7C8_game_completed_message:
C - - - - - 0x0007D8 00:C7C8: A5 CF     LDA ram_00CF
C - - - - - 0x0007DA 00:C7CA: D0 56     BNE bra_C822_RTS
C - - - - - 0x0007DC 00:C7CC: 20 4D EF  JSR sub_EF4D_clear_nametable
C - - - - - 0x0007DF 00:C7CF: 20 AA EF  JSR sub_EFAA
C - - - - - 0x0007E2 00:C7D2: 20 6C EF  JSR sub_EF6C
C - - - - - 0x0007E5 00:C7D5: A9 23     LDA #< tbl_C823_txt___perfect_congratulations
C - - - - - 0x0007E7 00:C7D7: 85 00     STA ram_0000
C - - - - - 0x0007E9 00:C7D9: A9 C8     LDA #> tbl_C823_txt___perfect_congratulations
C - - - - - 0x0007EB 00:C7DB: 85 01     STA ram_0001
C - - - - - 0x0007ED 00:C7DD: 20 28 EC  JSR sub_EC28_print_tiles_on_black_bg
C - - - - - 0x0007F0 00:C7E0: A2 84     LDX #$84
C - - - - - 0x0007F2 00:C7E2: A0 70     LDY #$70
C - - - - - 0x0007F4 00:C7E4: 20 FC DF  JSR sub_DFFC
C - - - - - 0x0007F7 00:C7E7: A9 86     LDA #$86
C - - - - - 0x0007F9 00:C7E9: 20 E8 DF  JSR sub_DFE8
C - - - - - 0x0007FC 00:C7EC: A9 01     LDA #$01
C - - - - - 0x0007FE 00:C7EE: 8D 22 07  STA ram_spr_A + $20
C - - - - - 0x000801 00:C7F1: 8D 26 07  STA ram_spr_A + $24
C - - - - - 0x000804 00:C7F4: 8D 2A 07  STA ram_spr_A + $28
C - - - - - 0x000807 00:C7F7: 8D 2E 07  STA ram_spr_A + $2C
C - - - - - 0x00080A 00:C7FA: A2 7C     LDX #$7C
C - - - - - 0x00080C 00:C7FC: A0 74     LDY #$74
C - - - - - 0x00080E 00:C7FE: 20 83 CD  JSR sub_CD83
C - - - - - 0x000811 00:C801: A2 6C     LDX #$6C
C - - - - - 0x000813 00:C803: A0 70     LDY #$70
C - - - - - 0x000815 00:C805: 20 4D CD  JSR sub_CD4D
C - - - - - 0x000818 00:C808: A9 01     LDA #$01
C - - - - - 0x00081A 00:C80A: 20 0C C6  JSR sub_C60C_garbage_loop
C - - - - - 0x00081D 00:C80D: 20 76 EF  JSR sub_EF76
C - - - - - 0x000820 00:C810: 20 D4 F2  JSR sub_F2D4
C - - - - - 0x000823 00:C813: 20 46 F0  JSR sub_F046
bra_C816_infinite_loop:
C - - - - - 0x000826 00:C816: A5 34     LDA ram_0034
C - - - - - 0x000828 00:C818: D0 FC     BNE bra_C816_infinite_loop
C - - - - - 0x00082A 00:C81A: A9 04     LDA #$04
C - - - - - 0x00082C 00:C81C: 20 0C C6  JSR sub_C60C_garbage_loop
C - - - - - 0x00082F 00:C81F: 20 AA EF  JSR sub_EFAA
bra_C822_RTS:
C - - - - - 0x000832 00:C822: 60        RTS



tbl_C823_txt___perfect_congratulations:
- D 2 - I - 0x000833 00:C823: 8C 21     .word $218C
- D 2 - I - 0x000835 00:C825: 50        .byte "PERFECT!"
- D 2 - I - 0x00083D 00:C82D: 00        .byte $00   ; 

- D 2 - I - 0x00083E 00:C82E: 28 22     .word $2228
- D 2 - I - 0x000840 00:C830: 43        .byte "CONGRATULATIONS!"
- D 2 - I - 0x000850 00:C840: 00        .byte $00   ; 

- D 2 - I - 0x000851 00:C841: FF FF     .word $FFFF ; end token



sub_C843:
C - - - - - 0x000853 00:C843: A9 00     LDA #$00
C - - - - - 0x000855 00:C845: 85 8F     STA ram_008F
C - - - - - 0x000857 00:C847: 20 69 C2  JSR sub_C269
C - - - - - 0x00085A 00:C84A: 20 21 CD  JSR sub_CD21
C - - - - - 0x00085D 00:C84D: 20 6C EF  JSR sub_EF6C
C - - - - - 0x000860 00:C850: A9 3F     LDA #> $3F00
C - - - - - 0x000862 00:C852: 8D 06 20  STA $2006
C - - - - - 0x000865 00:C855: A2 00     LDX #< $3F00
C - - - - - 0x000867 00:C857: 8E 06 20  STX $2006
C - - - - - 0x00086A 00:C85A: A9 04     LDA #$04
C - - - - - 0x00086C 00:C85C: 85 44     STA ram_0044
bra_C85E:
C - - - - - 0x00086E 00:C85E: A5 20     LDA ram_current_round
C - - - - - 0x000870 00:C860: 29 03     AND #$03
C - - - - - 0x000872 00:C862: 0A        ASL
C - - - - - 0x000873 00:C863: 0A        ASL
C - - - - - 0x000874 00:C864: AA        TAX
C - - - - - 0x000875 00:C865: A0 04     LDY #$04
bra_C867:
C - - - - - 0x000877 00:C867: BD 51 C9  LDA tbl_C951_first_4_bg_colors,X
C - - - - - 0x00087A 00:C86A: 20 26 C0  JSR sub_C026_set_A_to_2007
C - - - - - 0x00087D 00:C86D: E8        INX
C - - - - - 0x00087E 00:C86E: 88        DEY
C - - - - - 0x00087F 00:C86F: D0 F6     BNE bra_C867
C - - - - - 0x000881 00:C871: C6 44     DEC ram_0044
C - - - - - 0x000883 00:C873: D0 E9     BNE bra_C85E
C - - - - - 0x000885 00:C875: A9 20     LDA #> $20C0
C - - - - - 0x000887 00:C877: 8D 06 20  STA $2006
C - - - - - 0x00088A 00:C87A: A2 C0     LDX #< $20C0
C - - - - - 0x00088C 00:C87C: 8E 06 20  STX $2006
C - - - - - 0x00088F 00:C87F: A0 18     LDY #$18
bra_C881_loop:
C - - - - - 0x000891 00:C881: A2 20     LDX #$20
bra_C883_loop:
C - - - - - 0x000893 00:C883: A9 20     LDA #con_ppu_tile + $20
C - - - - - 0x000895 00:C885: 20 26 C0  JSR sub_C026_set_A_to_2007
C - - - - - 0x000898 00:C888: CA        DEX
C - - - - - 0x000899 00:C889: D0 F8     BNE bra_C883_loop
C - - - - - 0x00089B 00:C88B: 88        DEY
C - - - - - 0x00089C 00:C88C: D0 F3     BNE bra_C881_loop
C - - - - - 0x00089E 00:C88E: A9 00     LDA #$00
C - - - - - 0x0008A0 00:C890: 85 44     STA ram_0044
C - - - - - 0x0008A2 00:C892: A5 20     LDA ram_current_round
C - - - - - 0x0008A4 00:C894: 29 03     AND #$03
C - - - - - 0x0008A6 00:C896: 0A        ASL
C - - - - - 0x0008A7 00:C897: 0A        ASL
C - - - - - 0x0008A8 00:C898: 0A        ASL
C - - - - - 0x0008A9 00:C899: 85 45     STA ram_0045
loc_C89B_loop:
C D 2 - - - 0x0008AB 00:C89B: A4 44     LDY ram_0044
C - - - - - 0x0008AD 00:C89D: B9 61 C9  LDA tbl_C961,Y
C - - - - - 0x0008B0 00:C8A0: 85 40     STA ram_0040
C - - - - - 0x0008B2 00:C8A2: F0 6A     BEQ bra_C90E_exit_loop
C - - - - - 0x0008B4 00:C8A4: B9 62 C9  LDA tbl_C961 + $01,Y
C - - - - - 0x0008B7 00:C8A7: 85 42     STA ram_0042
C - - - - - 0x0008B9 00:C8A9: B9 63 C9  LDA tbl_C961 + $02,Y
C - - - - - 0x0008BC 00:C8AC: 85 46     STA ram_0046
bra_C8AE_loop:
C - - - - - 0x0008BE 00:C8AE: A6 40     LDX ram_0040
C - - - - - 0x0008C0 00:C8B0: A4 42     LDY ram_0042
C - - - - - 0x0008C2 00:C8B2: 20 53 E9  JSR sub_E953_calculate_ppu_addr
C - - - - - 0x0008C5 00:C8B5: A5 00     LDA ram_0000
C - - - - - 0x0008C7 00:C8B7: 85 02     STA ram_0002
C - - - - - 0x0008C9 00:C8B9: A5 01     LDA ram_0001
C - - - - - 0x0008CB 00:C8BB: 85 03     STA ram_0003
C - - - - - 0x0008CD 00:C8BD: A9 31     LDA #< tbl_C931
C - - - - - 0x0008CF 00:C8BF: 85 00     STA ram_0000
C - - - - - 0x0008D1 00:C8C1: A9 C9     LDA #> tbl_C931
C - - - - - 0x0008D3 00:C8C3: 85 01     STA ram_0001
C - - - - - 0x0008D5 00:C8C5: A5 00     LDA ram_0000
C - - - - - 0x0008D7 00:C8C7: 18        CLC
C - - - - - 0x0008D8 00:C8C8: 65 45     ADC ram_0045
C - - - - - 0x0008DA 00:C8CA: 85 00     STA ram_0000
C - - - - - 0x0008DC 00:C8CC: A5 01     LDA ram_0001
C - - - - - 0x0008DE 00:C8CE: 69 00     ADC #$00
C - - - - - 0x0008E0 00:C8D0: 85 01     STA ram_0001
C - - - - - 0x0008E2 00:C8D2: 20 89 C9  JSR sub_C989
C - - - - - 0x0008E5 00:C8D5: A6 40     LDX ram_0040
C - - - - - 0x0008E7 00:C8D7: A4 42     LDY ram_0042
C - - - - - 0x0008E9 00:C8D9: C8        INY
C - - - - - 0x0008EA 00:C8DA: 20 53 E9  JSR sub_E953_calculate_ppu_addr
C - - - - - 0x0008ED 00:C8DD: A5 00     LDA ram_0000
C - - - - - 0x0008EF 00:C8DF: 85 02     STA ram_0002
C - - - - - 0x0008F1 00:C8E1: A5 01     LDA ram_0001
C - - - - - 0x0008F3 00:C8E3: 85 03     STA ram_0003
C - - - - - 0x0008F5 00:C8E5: A9 35     LDA #< tbl_C935
C - - - - - 0x0008F7 00:C8E7: 85 00     STA ram_0000
C - - - - - 0x0008F9 00:C8E9: A9 C9     LDA #> tbl_C935
C - - - - - 0x0008FB 00:C8EB: 85 01     STA ram_0001
C - - - - - 0x0008FD 00:C8ED: A5 00     LDA ram_0000
C - - - - - 0x0008FF 00:C8EF: 18        CLC
C - - - - - 0x000900 00:C8F0: 65 45     ADC ram_0045
C - - - - - 0x000902 00:C8F2: 85 00     STA ram_0000
C - - - - - 0x000904 00:C8F4: A5 01     LDA ram_0001
C - - - - - 0x000906 00:C8F6: 69 00     ADC #$00
C - - - - - 0x000908 00:C8F8: 85 01     STA ram_0001
C - - - - - 0x00090A 00:C8FA: 20 89 C9  JSR sub_C989
C - - - - - 0x00090D 00:C8FD: E6 40     INC ram_0040
C - - - - - 0x00090F 00:C8FF: E6 40     INC ram_0040
C - - - - - 0x000911 00:C901: C6 46     DEC ram_0046
C - - - - - 0x000913 00:C903: D0 A9     BNE bra_C8AE_loop
C - - - - - 0x000915 00:C905: E6 44     INC ram_0044
C - - - - - 0x000917 00:C907: E6 44     INC ram_0044
C - - - - - 0x000919 00:C909: E6 44     INC ram_0044
C - - - - - 0x00091B 00:C90B: 4C 9B C8  JMP loc_C89B_loop
bra_C90E_exit_loop:
C - - - - - 0x00091E 00:C90E: A9 01     LDA #$01
C - - - - - 0x000920 00:C910: 20 0C C6  JSR sub_C60C_garbage_loop
C - - - - - 0x000923 00:C913: 20 76 EF  JSR sub_EF76
C - - - - - 0x000926 00:C916: 20 64 F0  JSR sub_F064
C - - - - - 0x000929 00:C919: A9 14     LDA #$14
C - - - - - 0x00092B 00:C91B: 20 0C C6  JSR sub_C60C_garbage_loop
C - - - - - 0x00092E 00:C91E: A6 22     LDX ram_0022
C - - - - - 0x000930 00:C920: E0 09     CPX #$09
C - - - - - 0x000932 00:C922: F0 01     BEQ bra_C925
C - - - - - 0x000934 00:C924: E8        INX
bra_C925:
C - - - - - 0x000935 00:C925: 86 22     STX ram_0022
C - - - - - 0x000937 00:C927: A5 E1     LDA ram_00E1
C - - - - - 0x000939 00:C929: D0 03     BNE bra_C92E
C - - - - - 0x00093B 00:C92B: 86 BE     STX ram_00BE
C - - - - - 0x00093D 00:C92D: 60        RTS
bra_C92E:
- - - - - - 0x00093E 00:C92E: 86 BF     STX ram_00BF
- - - - - - 0x000940 00:C930: 60        RTS



tbl_C931:
; 00
- D 2 - I - 0x000941 00:C931: 02        .byte $02   ; 
- D 2 - I - 0x000942 00:C932: 03        .byte $03   ; 
- D 2 - I - 0x000943 00:C933: 00        .byte $00   ; 
- - - - - - 0x000944 00:C934: 00        .byte $00   ; 
tbl_C935:
- D 2 - I - 0x000945 00:C935: 12        .byte $12   ; 
- D 2 - I - 0x000946 00:C936: 13        .byte $13   ; 
- D 2 - I - 0x000947 00:C937: 00        .byte $00   ; 
- - - - - - 0x000948 00:C938: 00        .byte $00   ; 
; 01
- D 2 - I - 0x000949 00:C939: 8E        .byte $8E   ; 
- D 2 - I - 0x00094A 00:C93A: 8F        .byte $8F   ; 
- D 2 - I - 0x00094B 00:C93B: 00        .byte $00   ; 
- - - - - - 0x00094C 00:C93C: 00        .byte $00   ; 

- D 2 - I - 0x00094D 00:C93D: 9E        .byte $9E   ; 
- D 2 - I - 0x00094E 00:C93E: 9F        .byte $9F   ; 
- D 2 - I - 0x00094F 00:C93F: 00        .byte $00   ; 
- - - - - - 0x000950 00:C940: 00        .byte $00   ; 
; 02
- D 2 - I - 0x000951 00:C941: FA        .byte $FA   ; 
- D 2 - I - 0x000952 00:C942: FB        .byte $FB   ; 
- D 2 - I - 0x000953 00:C943: 00        .byte $00   ; 
- - - - - - 0x000954 00:C944: 00        .byte $00   ; 

- D 2 - I - 0x000955 00:C945: FC        .byte $FC   ; 
- D 2 - I - 0x000956 00:C946: FD        .byte $FD   ; 
- D 2 - I - 0x000957 00:C947: 00        .byte $00   ; 
- - - - - - 0x000958 00:C948: 00        .byte $00   ; 
; 03
- D 2 - I - 0x000959 00:C949: 8E        .byte $8E   ; 
- D 2 - I - 0x00095A 00:C94A: 8F        .byte $8F   ; 
- D 2 - I - 0x00095B 00:C94B: 00        .byte $00   ; 
- - - - - - 0x00095C 00:C94C: 00        .byte $00   ; 

- D 2 - I - 0x00095D 00:C94D: 9E        .byte $9E   ; 
- D 2 - I - 0x00095E 00:C94E: 9F        .byte $9F   ; 
- D 2 - I - 0x00095F 00:C94F: 00        .byte $00   ; 
- - - - - - 0x000960 00:C950: 00        .byte $00   ; 



tbl_C951_first_4_bg_colors:
; 00
- D 2 - - - 0x000961 00:C951: 0F        .byte $0F, $30, $1A, $27   ; 
; 01
- D 2 - - - 0x000965 00:C955: 0F        .byte $0F, $30, $29, $24   ; 
; 02
- D 2 - - - 0x000969 00:C959: 0F        .byte $0F, $30, $2A, $26   ; 
; 03
- D 2 - - - 0x00096D 00:C95D: 0F        .byte $0F, $30, $39, $21   ; 



tbl_C961:
- D 2 - - - 0x000971 00:C961: 06        .byte $06   ; 
- D 2 - - - 0x000972 00:C962: 08        .byte $08   ; 
- D 2 - - - 0x000973 00:C963: 02        .byte $02   ; 

- D 2 - - - 0x000974 00:C964: 16        .byte $16   ; 
- D 2 - - - 0x000975 00:C965: 08        .byte $08   ; 
- D 2 - - - 0x000976 00:C966: 02        .byte $02   ; 

- D 2 - - - 0x000977 00:C967: 04        .byte $04   ; 
- D 2 - - - 0x000978 00:C968: 0A        .byte $0A   ; 
- D 2 - - - 0x000979 00:C969: 04        .byte $04   ; 

- D 2 - - - 0x00097A 00:C96A: 14        .byte $14   ; 
- D 2 - - - 0x00097B 00:C96B: 0A        .byte $0A   ; 
- D 2 - - - 0x00097C 00:C96C: 04        .byte $04   ; 

- D 2 - - - 0x00097D 00:C96D: 04        .byte $04   ; 
- D 2 - - - 0x00097E 00:C96E: 0C        .byte $0C   ; 
- D 2 - - - 0x00097F 00:C96F: 05        .byte $05   ; 

- D 2 - - - 0x000980 00:C970: 12        .byte $12   ; 
- D 2 - - - 0x000981 00:C971: 0C        .byte $0C   ; 
- D 2 - - - 0x000982 00:C972: 05        .byte $05   ; 

- D 2 - - - 0x000983 00:C973: 04        .byte $04   ; 
- D 2 - - - 0x000984 00:C974: 0E        .byte $0E   ; 
- D 2 - - - 0x000985 00:C975: 0C        .byte $0C   ; 

- D 2 - - - 0x000986 00:C976: 04        .byte $04   ; 
- D 2 - - - 0x000987 00:C977: 10        .byte $10   ; 
- D 2 - - - 0x000988 00:C978: 0C        .byte $0C   ; 

- D 2 - - - 0x000989 00:C979: 06        .byte $06   ; 
- D 2 - - - 0x00098A 00:C97A: 12        .byte $12   ; 
- D 2 - - - 0x00098B 00:C97B: 0A        .byte $0A   ; 

- D 2 - - - 0x00098C 00:C97C: 08        .byte $08   ; 
- D 2 - - - 0x00098D 00:C97D: 14        .byte $14   ; 
- D 2 - - - 0x00098E 00:C97E: 08        .byte $08   ; 

- D 2 - - - 0x00098F 00:C97F: 0A        .byte $0A   ; 
- D 2 - - - 0x000990 00:C980: 16        .byte $16   ; 
- D 2 - - - 0x000991 00:C981: 06        .byte $06   ; 

- D 2 - - - 0x000992 00:C982: 0C        .byte $0C   ; 
- D 2 - - - 0x000993 00:C983: 18        .byte $18   ; 
- D 2 - - - 0x000994 00:C984: 04        .byte $04   ; 

- D 2 - - - 0x000995 00:C985: 0E        .byte $0E   ; 
- D 2 - - - 0x000996 00:C986: 1A        .byte $1A   ; 
- D 2 - - - 0x000997 00:C987: 02        .byte $02   ; 

- D 2 - - - 0x000998 00:C988: 00        .byte $00   ; end token



sub_C989:
C - - - - - 0x000999 00:C989: A5 03     LDA ram_0003
C - - - - - 0x00099B 00:C98B: 8D 06 20  STA $2006
C - - - - - 0x00099E 00:C98E: A5 02     LDA ram_0002
C - - - - - 0x0009A0 00:C990: 8D 06 20  STA $2006
C - - - - - 0x0009A3 00:C993: A0 00     LDY #$00
loc_C995:
C D 2 - - - 0x0009A5 00:C995: B1 00     LDA (ram_0000),Y
C - - - - - 0x0009A7 00:C997: F0 07     BEQ bra_C9A0_RTS
C - - - - - 0x0009A9 00:C999: 20 26 C0  JSR sub_C026_set_A_to_2007
C - - - - - 0x0009AC 00:C99C: C8        INY
C - - - - - 0x0009AD 00:C99D: 4C 95 C9  JMP loc_C995
bra_C9A0_RTS:
C - - - - - 0x0009B0 00:C9A0: 60        RTS



sub_C9A1:
bra_C9A1:
C - - - - - 0x0009B1 00:C9A1: A2 AC     LDX #< ram_00AC
C - - - - - 0x0009B3 00:C9A3: A0 04     LDY #$04
C - - - - - 0x0009B5 00:C9A5: 20 34 CD  JSR sub_CD34_clear_00xx
C - - - - - 0x0009B8 00:C9A8: A9 00     LDA #$00
C - - - - - 0x0009BA 00:C9AA: 20 3D CD  JSR sub_CD3D
C - - - - - 0x0009BD 00:C9AD: 60        RTS



sub_C9AE:
C - - - - - 0x0009BE 00:C9AE: A5 57     LDA ram_0057
C - - - - - 0x0009C0 00:C9B0: D0 16     BNE bra_C9C8_RTS
C - - - - - 0x0009C2 00:C9B2: A5 E5     LDA ram_00E5
C - - - - - 0x0009C4 00:C9B4: D0 EB     BNE bra_C9A1
C - - - - - 0x0009C6 00:C9B6: A5 9B     LDA ram_009B
C - - - - - 0x0009C8 00:C9B8: D0 0E     BNE bra_C9C8_RTS
C - - - - - 0x0009CA 00:C9BA: A5 E1     LDA ram_00E1
C - - - - - 0x0009CC 00:C9BC: F0 06     BEQ bra_C9C4
C - - - - - 0x0009CE 00:C9BE: A5 E9     LDA ram_00E9
C - - - - - 0x0009D0 00:C9C0: F0 06     BEQ bra_C9C8_RTS
C - - - - - 0x0009D2 00:C9C2: D0 05     BNE bra_C9C9
bra_C9C4:
C - - - - - 0x0009D4 00:C9C4: A5 E8     LDA ram_00E8
C - - - - - 0x0009D6 00:C9C6: D0 01     BNE bra_C9C9
bra_C9C8_RTS:
C - - - - - 0x0009D8 00:C9C8: 60        RTS
bra_C9C9:
C - - - - - 0x0009D9 00:C9C9: A5 AC     LDA ram_00AC
C - - - - - 0x0009DB 00:C9CB: D0 46     BNE bra_CA13
C - - - - - 0x0009DD 00:C9CD: E6 AF     INC ram_00AF
C - - - - - 0x0009DF 00:C9CF: A5 AF     LDA ram_00AF
C - - - - - 0x0009E1 00:C9D1: C9 64     CMP #$64
C - - - - - 0x0009E3 00:C9D3: D0 3D     BNE bra_CA12_RTS
C - - - - - 0x0009E5 00:C9D5: A2 00     LDX #$00
C - - - - - 0x0009E7 00:C9D7: AD 23 07  LDA ram_spr_X + $20
C - - - - - 0x0009EA 00:C9DA: C9 78     CMP #$78
C - - - - - 0x0009EC 00:C9DC: 90 02     BCC bra_C9E0
C - - - - - 0x0009EE 00:C9DE: A2 05     LDX #$05
bra_C9E0:
C - - - - - 0x0009F0 00:C9E0: BD B6 CA  LDA tbl_CAB6_spr_data,X
C - - - - - 0x0009F3 00:C9E3: 85 AD     STA ram_00AD
C - - - - - 0x0009F5 00:C9E5: BD B9 CA  LDA tbl_CAB6_spr_data + $03,X
C - - - - - 0x0009F8 00:C9E8: 85 AE     STA ram_00AE
C - - - - - 0x0009FA 00:C9EA: A9 01     LDA #$01
C - - - - - 0x0009FC 00:C9EC: 85 AC     STA ram_00AC
C - - - - - 0x0009FE 00:C9EE: A9 02     LDA #$02
C - - - - - 0x000A00 00:C9F0: 85 AF     STA ram_00AF
C - - - - - 0x000A02 00:C9F2: A0 00     LDY #$00
C - - - - - 0x000A04 00:C9F4: BD B7 CA  LDA tbl_CAB6_spr_data + $01,X
C - - - - - 0x000A07 00:C9F7: 20 C4 D1  JSR sub_D1C4_set_spr_X
C - - - - - 0x000A0A 00:C9FA: BD B8 CA  LDA tbl_CAB6_spr_data + $02,X
C - - - - - 0x000A0D 00:C9FD: 20 A1 D1  JSR sub_D1A1_set_spr_T
C - - - - - 0x000A10 00:CA00: AD 20 07  LDA ram_spr_Y + $20
C - - - - - 0x000A13 00:CA03: C9 30     CMP #$30
C - - - - - 0x000A15 00:CA05: B0 02     BCS bra_CA09
C - - - - - 0x000A17 00:CA07: A9 30     LDA #$30
bra_CA09:
C - - - - - 0x000A19 00:CA09: 20 91 D1  JSR sub_D191_set_spr_Y
C - - - - - 0x000A1C 00:CA0C: BD BA CA  LDA tbl_CAB6_spr_data + $04,X
C - - - - - 0x000A1F 00:CA0F: 20 B7 D1  JSR sub_D1B7_set_spr_A
bra_CA12_RTS:
C - - - - - 0x000A22 00:CA12: 60        RTS
bra_CA13:
C - - - - - 0x000A23 00:CA13: C9 02     CMP #$02
C - - - - - 0x000A25 00:CA15: F0 52     BEQ bra_CA69
C - - - - - 0x000A27 00:CA17: 20 79 CA  JSR sub_CA79
C - - - - - 0x000A2A 00:CA1A: A5 AC     LDA ram_00AC
C - - - - - 0x000A2C 00:CA1C: C9 02     CMP #$02
C - - - - - 0x000A2E 00:CA1E: F0 49     BEQ bra_CA69
C - - - - - 0x000A30 00:CA20: A0 00     LDY #$00
C - - - - - 0x000A32 00:CA22: AE 03 07  LDX ram_spr_X
C - - - - - 0x000A35 00:CA25: A5 AD     LDA ram_00AD
C - - - - - 0x000A37 00:CA27: F0 07     BEQ bra_CA30
C - - - - - 0x000A39 00:CA29: E8        INX
C - - - - - 0x000A3A 00:CA2A: E0 F0     CPX #$F0
C - - - - - 0x000A3C 00:CA2C: D0 07     BNE bra_CA35
- - - - - - 0x000A3E 00:CA2E: F0 35     BEQ bra_CA65    ; jmp
bra_CA30:
C - - - - - 0x000A40 00:CA30: CA        DEX
C - - - - - 0x000A41 00:CA31: E0 00     CPX #$00    ; bzk optimize, no need for CPX 00
C - - - - - 0x000A43 00:CA33: F0 30     BEQ bra_CA65
bra_CA35:
C - - - - - 0x000A45 00:CA35: 8A        TXA
C - - - - - 0x000A46 00:CA36: 20 C4 D1  JSR sub_D1C4_set_spr_X
C - - - - - 0x000A49 00:CA39: A6 AE     LDX ram_00AE
C - - - - - 0x000A4B 00:CA3B: E0 2F     CPX #$2F
C - - - - - 0x000A4D 00:CA3D: D0 02     BNE bra_CA41
C - - - - - 0x000A4F 00:CA3F: A2 FF     LDX #$FF
bra_CA41:
C - - - - - 0x000A51 00:CA41: E8        INX
C - - - - - 0x000A52 00:CA42: 86 AE     STX ram_00AE
C - - - - - 0x000A54 00:CA44: AD 00 07  LDA ram_spr_Y
C - - - - - 0x000A57 00:CA47: 18        CLC
C - - - - - 0x000A58 00:CA48: 7D C0 CA  ADC tbl_CAC0_spr_Y_offset,X
C - - - - - 0x000A5B 00:CA4B: 20 91 D1  JSR sub_D191_set_spr_Y
C - - - - - 0x000A5E 00:CA4E: A6 AF     LDX ram_00AF
C - - - - - 0x000A60 00:CA50: E0 06     CPX #$06
C - - - - - 0x000A62 00:CA52: D0 02     BNE bra_CA56
C - - - - - 0x000A64 00:CA54: A2 00     LDX #$00
bra_CA56:
C - - - - - 0x000A66 00:CA56: E8        INX
C - - - - - 0x000A67 00:CA57: E8        INX
C - - - - - 0x000A68 00:CA58: 86 AF     STX ram_00AF
C - - - - - 0x000A6A 00:CA5A: AD 01 07  LDA ram_spr_T
C - - - - - 0x000A6D 00:CA5D: 29 F8     AND #$F8
C - - - - - 0x000A6F 00:CA5F: 05 AF     ORA ram_00AF
C - - - - - 0x000A71 00:CA61: 20 A1 D1  JSR sub_D1A1_set_spr_T
C - - - - - 0x000A74 00:CA64: 60        RTS
bra_CA65:
- - - - - - 0x000A75 00:CA65: 20 A1 C9  JSR sub_C9A1
- - - - - - 0x000A78 00:CA68: 60        RTS
bra_CA69:
C - - - - - 0x000A79 00:CA69: C6 AF     DEC ram_00AF
C - - - - - 0x000A7B 00:CA6B: D0 04     BNE bra_CA71
C - - - - - 0x000A7D 00:CA6D: 20 A1 C9  JSR sub_C9A1
C - - - - - 0x000A80 00:CA70: 60        RTS
bra_CA71:
C - - - - - 0x000A81 00:CA71: A0 00     LDY #$00
C - - - - - 0x000A83 00:CA73: A9 EC     LDA #$EC
C - - - - - 0x000A85 00:CA75: 20 A1 D1  JSR sub_D1A1_set_spr_T
C - - - - - 0x000A88 00:CA78: 60        RTS



sub_CA79:
C - - - - - 0x000A89 00:CA79: A5 AC     LDA ram_00AC
C - - - - - 0x000A8B 00:CA7B: F0 38     BEQ bra_CAB5_RTS
C - - - - - 0x000A8D 00:CA7D: A5 57     LDA ram_0057
C - - - - - 0x000A8F 00:CA7F: D0 34     BNE bra_CAB5_RTS
C - - - - - 0x000A91 00:CA81: AD 03 07  LDA ram_spr_X
C - - - - - 0x000A94 00:CA84: 38        SEC
C - - - - - 0x000A95 00:CA85: ED 23 07  SBC ram_spr_X + $20
C - - - - - 0x000A98 00:CA88: 20 A1 D2  JSR sub_D2A1
C - - - - - 0x000A9B 00:CA8B: AA        TAX
C - - - - - 0x000A9C 00:CA8C: AD 00 07  LDA ram_spr_Y
C - - - - - 0x000A9F 00:CA8F: 38        SEC
C - - - - - 0x000AA0 00:CA90: ED 20 07  SBC ram_spr_Y + $20
C - - - - - 0x000AA3 00:CA93: 20 A1 D2  JSR sub_D2A1
C - - - - - 0x000AA6 00:CA96: A8        TAY
C - - - - - 0x000AA7 00:CA97: E0 0A     CPX #$0A
C - - - - - 0x000AA9 00:CA99: B0 1A     BCS bra_CAB5_RTS
C - - - - - 0x000AAB 00:CA9B: C0 0A     CPY #$0A
C - - - - - 0x000AAD 00:CA9D: B0 16     BCS bra_CAB5_RTS
C - - - - - 0x000AAF 00:CA9F: AD 02 07  LDA ram_spr_A
C - - - - - 0x000AB2 00:CAA2: F0 03     BEQ bra_CAA7
- - - - - - 0x000AB4 00:CAA4: 4C 69 D6  JMP loc_D669
bra_CAA7:
C - - - - - 0x000AB7 00:CAA7: A9 14     LDA #$14
C - - - - - 0x000AB9 00:CAA9: 85 AF     STA ram_00AF
C - - - - - 0x000ABB 00:CAAB: A9 02     LDA #$02
C - - - - - 0x000ABD 00:CAAD: 85 AC     STA ram_00AC
C - - - - - 0x000ABF 00:CAAF: 20 B1 F0  JSR sub_F0B1
C - - - - - 0x000AC2 00:CAB2: 20 A6 C6  JSR sub_C6A6
bra_CAB5_RTS:
C - - - - - 0x000AC5 00:CAB5: 60        RTS



tbl_CAB6_spr_data:
; 00
- D 2 - - - 0x000AC6 00:CAB6: 00        .byte $00   ; 
- D 2 - - - 0x000AC7 00:CAB7: F0        .byte $F0   ; spr_X
- D 2 - - - 0x000AC8 00:CAB8: 22        .byte $22   ; spr_T
- D 2 - - - 0x000AC9 00:CAB9: 00        .byte $00   ; 
- D 2 - - - 0x000ACA 00:CABA: 00        .byte $00   ; spr_A
; 05
- D 2 - - - 0x000ACB 00:CABB: 01        .byte $01   ; 
- D 2 - - - 0x000ACC 00:CABC: 00        .byte $00   ; spr_X
- D 2 - - - 0x000ACD 00:CABD: 2A        .byte $2A   ; spr_T
- D 2 - - - 0x000ACE 00:CABE: 18        .byte $18   ; 
- D 2 - - - 0x000ACF 00:CABF: 03        .byte $03   ; spr_A



tbl_CAC0_spr_Y_offset:
- D 2 - - - 0x000AD0 00:CAC0: FC        .byte $FC   ; 00
- D 2 - - - 0x000AD1 00:CAC1: FC        .byte $FC   ; 01
- D 2 - - - 0x000AD2 00:CAC2: FE        .byte $FE   ; 02
- D 2 - - - 0x000AD3 00:CAC3: FE        .byte $FE   ; 03
- D 2 - - - 0x000AD4 00:CAC4: FE        .byte $FE   ; 04
- D 2 - - - 0x000AD5 00:CAC5: FF        .byte $FF   ; 05
- D 2 - - - 0x000AD6 00:CAC6: FF        .byte $FF   ; 06
- D 2 - - - 0x000AD7 00:CAC7: FF        .byte $FF   ; 07
- D 2 - - - 0x000AD8 00:CAC8: FF        .byte $FF   ; 08
- D 2 - - - 0x000AD9 00:CAC9: FF        .byte $FF   ; 09
- D 2 - - - 0x000ADA 00:CACA: 00        .byte $00   ; 0A
- D 2 - - - 0x000ADB 00:CACB: 00        .byte $00   ; 0B
- D 2 - - - 0x000ADC 00:CACC: 00        .byte $00   ; 0C
- D 2 - - - 0x000ADD 00:CACD: 00        .byte $00   ; 0D
- D 2 - - - 0x000ADE 00:CACE: 01        .byte $01   ; 0E
- D 2 - - - 0x000ADF 00:CACF: 01        .byte $01   ; 0F
- D 2 - - - 0x000AE0 00:CAD0: 01        .byte $01   ; 10
- D 2 - - - 0x000AE1 00:CAD1: 01        .byte $01   ; 11
- D 2 - - - 0x000AE2 00:CAD2: 01        .byte $01   ; 12
- D 2 - - - 0x000AE3 00:CAD3: 02        .byte $02   ; 13
- D 2 - - - 0x000AE4 00:CAD4: 02        .byte $02   ; 14
- D 2 - - - 0x000AE5 00:CAD5: 02        .byte $02   ; 15
- D 2 - - - 0x000AE6 00:CAD6: 04        .byte $04   ; 16
- D 2 - - - 0x000AE7 00:CAD7: 04        .byte $04   ; 17
- D 2 - - - 0x000AE8 00:CAD8: 04        .byte $04   ; 18
- D 2 - - - 0x000AE9 00:CAD9: 04        .byte $04   ; 19
- D 2 - - - 0x000AEA 00:CADA: 02        .byte $02   ; 1A
- D 2 - - - 0x000AEB 00:CADB: 02        .byte $02   ; 1B
- D 2 - - - 0x000AEC 00:CADC: 02        .byte $02   ; 1C
- D 2 - - - 0x000AED 00:CADD: 01        .byte $01   ; 1D
- D 2 - - - 0x000AEE 00:CADE: 01        .byte $01   ; 1E
- D 2 - - - 0x000AEF 00:CADF: 01        .byte $01   ; 1F
- D 2 - - - 0x000AF0 00:CAE0: 01        .byte $01   ; 20
- D 2 - - - 0x000AF1 00:CAE1: 01        .byte $01   ; 21
- D 2 - - - 0x000AF2 00:CAE2: 00        .byte $00   ; 22
- D 2 - - - 0x000AF3 00:CAE3: 00        .byte $00   ; 23
- D 2 - - - 0x000AF4 00:CAE4: 00        .byte $00   ; 24
- D 2 - - - 0x000AF5 00:CAE5: 00        .byte $00   ; 25
- D 2 - - - 0x000AF6 00:CAE6: FF        .byte $FF   ; 26
- D 2 - - - 0x000AF7 00:CAE7: FF        .byte $FF   ; 27
- D 2 - - - 0x000AF8 00:CAE8: FF        .byte $FF   ; 28
- D 2 - - - 0x000AF9 00:CAE9: FF        .byte $FF   ; 29
- D 2 - - - 0x000AFA 00:CAEA: FF        .byte $FF   ; 2A
- D 2 - - - 0x000AFB 00:CAEB: FE        .byte $FE   ; 2B
- D 2 - - - 0x000AFC 00:CAEC: FE        .byte $FE   ; 2C
- D 2 - - - 0x000AFD 00:CAED: FE        .byte $FE   ; 2D
- D 2 - - - 0x000AFE 00:CAEE: FC        .byte $FC   ; 2E
- D 2 - - - 0x000AFF 00:CAEF: FC        .byte $FC   ; 2F



sub_CAF0:
C - - - - - 0x000B00 00:CAF0: A9 F8     LDA #$F8
C - - - - - 0x000B02 00:CAF2: 8D 1C 07  STA ram_spr_Y + $1C
C - - - - - 0x000B05 00:CAF5: 8D 1D 07  STA ram_spr_T + $1C
C - - - - - 0x000B08 00:CAF8: 8D 1E 07  STA ram_spr_A + $1C
C - - - - - 0x000B0B 00:CAFB: 8D 1F 07  STA ram_spr_X + $1C
C - - - - - 0x000B0E 00:CAFE: A9 00     LDA #$00
C - - - - - 0x000B10 00:CB00: 85 9C     STA ram_009C
C - - - - - 0x000B12 00:CB02: 85 9D     STA ram_009D
C - - - - - 0x000B14 00:CB04: 60        RTS



sub_CB05:
C - - - - - 0x000B15 00:CB05: A5 53     LDA ram_0053
C - - - - - 0x000B17 00:CB07: F0 54     BEQ bra_CB5D_RTS
C - - - - - 0x000B19 00:CB09: AD 20 07  LDA ram_spr_Y + $20
C - - - - - 0x000B1C 00:CB0C: 29 0F     AND #$0F
C - - - - - 0x000B1E 00:CB0E: D0 4D     BNE bra_CB5D_RTS
C - - - - - 0x000B20 00:CB10: AE 23 07  LDX ram_spr_X + $20
C - - - - - 0x000B23 00:CB13: AC 20 07  LDY ram_spr_Y + $20
C - - - - - 0x000B26 00:CB16: 20 1D E0  JSR sub_E01D
C - - - - - 0x000B29 00:CB19: C9 01     CMP #$01
C - - - - - 0x000B2B 00:CB1B: F0 04     BEQ bra_CB21
C - - - - - 0x000B2D 00:CB1D: C9 02     CMP #$02
C - - - - - 0x000B2F 00:CB1F: D0 3C     BNE bra_CB5D_RTS
bra_CB21:
C - - - - - 0x000B31 00:CB21: AD 21 07  LDA ram_spr_T + $20
C - - - - - 0x000B34 00:CB24: C9 80     CMP #$80
C - - - - - 0x000B36 00:CB26: 90 35     BCC bra_CB5D_RTS
C - - - - - 0x000B38 00:CB28: 29 08     AND #$08
C - - - - - 0x000B3A 00:CB2A: F0 0B     BEQ bra_CB37
C - - - - - 0x000B3C 00:CB2C: AD 23 07  LDA ram_spr_X + $20
C - - - - - 0x000B3F 00:CB2F: 18        CLC
C - - - - - 0x000B40 00:CB30: 69 0E     ADC #$0E
C - - - - - 0x000B42 00:CB32: A2 7E     LDX #$7E
C - - - - - 0x000B44 00:CB34: 4C 3F CB  JMP loc_CB3F    ; bzk optimize, BNE
bra_CB37:
C - - - - - 0x000B47 00:CB37: AD 23 07  LDA ram_spr_X + $20
C - - - - - 0x000B4A 00:CB3A: 38        SEC
C - - - - - 0x000B4B 00:CB3B: E9 06     SBC #$06
C - - - - - 0x000B4D 00:CB3D: A2 6E     LDX #$6E
loc_CB3F:
C D 2 - - - 0x000B4F 00:CB3F: 8D 1F 07  STA ram_spr_X + $1C
C - - - - - 0x000B52 00:CB42: AD 20 07  LDA ram_spr_Y + $20
C - - - - - 0x000B55 00:CB45: 29 F0     AND #$F0
C - - - - - 0x000B57 00:CB47: 18        CLC
C - - - - - 0x000B58 00:CB48: 69 08     ADC #$08
C - - - - - 0x000B5A 00:CB4A: 8D 1C 07  STA ram_spr_Y + $1C
C - - - - - 0x000B5D 00:CB4D: 8E 1D 07  STX ram_spr_T + $1C
C - - - - - 0x000B60 00:CB50: A9 00     LDA #$00
C - - - - - 0x000B62 00:CB52: 8D 1E 07  STA ram_spr_A + $1C
C - - - - - 0x000B65 00:CB55: A9 01     LDA #$01
C - - - - - 0x000B67 00:CB57: 85 9C     STA ram_009C
C - - - - - 0x000B69 00:CB59: A9 05     LDA #$05
C - - - - - 0x000B6B 00:CB5B: 85 9D     STA ram_009D
bra_CB5D_RTS:
C - - - - - 0x000B6D 00:CB5D: 60        RTS



sub_CB5E:
C - - - - - 0x000B6E 00:CB5E: A5 9C     LDA ram_009C
C - - - - - 0x000B70 00:CB60: F0 07     BEQ bra_CB69_RTS
C - - - - - 0x000B72 00:CB62: C6 9D     DEC ram_009D
C - - - - - 0x000B74 00:CB64: D0 03     BNE bra_CB69_RTS
C - - - - - 0x000B76 00:CB66: 20 F0 CA  JSR sub_CAF0
bra_CB69_RTS:
C - - - - - 0x000B79 00:CB69: 60        RTS



sub_CB6A:
C - - - - - 0x000B7A 00:CB6A: A5 9A     LDA ram_009A
C - - - - - 0x000B7C 00:CB6C: F0 01     BEQ bra_CB6F
C - - - - - 0x000B7E 00:CB6E: 60        RTS
bra_CB6F:
C - - - - - 0x000B7F 00:CB6F: A5 E5     LDA ram_00E5
C - - - - - 0x000B81 00:CB71: D0 2D     BNE bra_CBA0_RTS
C - - - - - 0x000B83 00:CB73: A5 57     LDA ram_0057
C - - - - - 0x000B85 00:CB75: D0 29     BNE bra_CBA0_RTS
C - - - - - 0x000B87 00:CB77: A5 8F     LDA ram_008F
C - - - - - 0x000B89 00:CB79: F0 09     BEQ bra_CB84
C - - - - - 0x000B8B 00:CB7B: A6 E3     LDX ram_00E3
C - - - - - 0x000B8D 00:CB7D: E0 0A     CPX #$0A
C - - - - - 0x000B8F 00:CB7F: D0 0B     BNE bra_CB8C
C - - - - - 0x000B91 00:CB81: 4C 8A CB  JMP loc_CB8A
bra_CB84:
C - - - - - 0x000B94 00:CB84: A6 E3     LDX ram_00E3
C - - - - - 0x000B96 00:CB86: E0 64     CPX #$64
C - - - - - 0x000B98 00:CB88: D0 02     BNE bra_CB8C
loc_CB8A:
C D 2 - - - 0x000B9A 00:CB8A: A2 FF     LDX #$FF
bra_CB8C:
C - - - - - 0x000B9C 00:CB8C: E8        INX
C - - - - - 0x000B9D 00:CB8D: 86 E3     STX ram_00E3
C - - - - - 0x000B9F 00:CB8F: E0 00     CPX #$00    ; bzk optimize, no need for CPX 00
C - - - - - 0x000BA1 00:CB91: D0 0D     BNE bra_CBA0_RTS
C - - - - - 0x000BA3 00:CB93: C6 21     DEC ram_0021
C - - - - - 0x000BA5 00:CB95: A5 21     LDA ram_0021
C - - - - - 0x000BA7 00:CB97: F0 08     BEQ bra_CBA1
C - - - - - 0x000BA9 00:CB99: C9 0A     CMP #$0A
C - - - - - 0x000BAB 00:CB9B: B0 03     BCS bra_CBA0_RTS
C - - - - - 0x000BAD 00:CB9D: 20 80 F0  JSR sub_F080
bra_CBA0_RTS:
C - - - - - 0x000BB0 00:CBA0: 60        RTS
bra_CBA1:
C - - - - - 0x000BB1 00:CBA1: 20 70 C2  JSR sub_C270
C - - - - - 0x000BB4 00:CBA4: 4C 69 D6  JMP loc_D669



sub_CBA7:
C - - - - - 0x000BB7 00:CBA7: A9 70     LDA #$70
C - - - - - 0x000BB9 00:CBA9: 20 3D CD  JSR sub_CD3D
C - - - - - 0x000BBC 00:CBAC: A9 80     LDA #$80
C - - - - - 0x000BBE 00:CBAE: 20 3D CD  JSR sub_CD3D
C - - - - - 0x000BC1 00:CBB1: A2 A8     LDX #< ram_00A8
C - - - - - 0x000BC3 00:CBB3: A0 04     LDY #$04
C - - - - - 0x000BC5 00:CBB5: 20 34 CD  JSR sub_CD34_clear_00xx
bra_CBB8_RTS:
C - - - - - 0x000BC8 00:CBB8: 60        RTS



sub_CBB9:
C - - - - - 0x000BC9 00:CBB9: A5 9A     LDA ram_009A
C - - - - - 0x000BCB 00:CBBB: F0 01     BEQ bra_CBBE
C - - - - - 0x000BCD 00:CBBD: 60        RTS
bra_CBBE:
C - - - - - 0x000BCE 00:CBBE: A5 8F     LDA ram_008F
C - - - - - 0x000BD0 00:CBC0: F0 01     BEQ bra_CBC3
bra_CBC2_RTS:
C - - - - - 0x000BD2 00:CBC2: 60        RTS
bra_CBC3:
C - - - - - 0x000BD3 00:CBC3: A5 E5     LDA ram_00E5
C - - - - - 0x000BD5 00:CBC5: D0 FB     BNE bra_CBC2_RTS
C - - - - - 0x000BD7 00:CBC7: A5 57     LDA ram_0057
C - - - - - 0x000BD9 00:CBC9: D0 F7     BNE bra_CBC2_RTS
C - - - - - 0x000BDB 00:CBCB: A5 E4     LDA ram_00E4
C - - - - - 0x000BDD 00:CBCD: C5 2C     CMP ram_002C
C - - - - - 0x000BDF 00:CBCF: D0 E7     BNE bra_CBB8_RTS
C - - - - - 0x000BE1 00:CBD1: 20 79 CC  JSR sub_CC79
C - - - - - 0x000BE4 00:CBD4: A2 30     LDX #$30
C - - - - - 0x000BE6 00:CBD6: A0 30     LDY #$30
C - - - - - 0x000BE8 00:CBD8: 20 4D CD  JSR sub_CD4D
C - - - - - 0x000BEB 00:CBDB: E6 AA     INC ram_00AA
C - - - - - 0x000BED 00:CBDD: A5 AA     LDA ram_00AA
C - - - - - 0x000BEF 00:CBDF: 29 3F     AND #$3F
C - - - - - 0x000BF1 00:CBE1: C9 20     CMP #$20
C - - - - - 0x000BF3 00:CBE3: 90 0A     BCC bra_CBEF
C - - - - - 0x000BF5 00:CBE5: A2 48     LDX #$48
C - - - - - 0x000BF7 00:CBE7: A0 20     LDY #$20
C - - - - - 0x000BF9 00:CBE9: 20 68 CD  JSR sub_CD68
C - - - - - 0x000BFC 00:CBEC: 4C F4 CB  JMP loc_CBF4
bra_CBEF:
C - - - - - 0x000BFF 00:CBEF: A9 70     LDA #$70
C - - - - - 0x000C01 00:CBF1: 20 3D CD  JSR sub_CD3D
loc_CBF4:
C D 2 - - - 0x000C04 00:CBF4: AD 23 07  LDA ram_spr_X + $20
C - - - - - 0x000C07 00:CBF7: 38        SEC
C - - - - - 0x000C08 00:CBF8: ED 83 07  SBC ram_spr_X + $80
C - - - - - 0x000C0B 00:CBFB: 20 A1 D2  JSR sub_D2A1
C - - - - - 0x000C0E 00:CBFE: AA        TAX
C - - - - - 0x000C0F 00:CBFF: AD 20 07  LDA ram_spr_Y + $20
C - - - - - 0x000C12 00:CC02: 38        SEC
C - - - - - 0x000C13 00:CC03: ED 80 07  SBC ram_spr_Y + $80
C - - - - - 0x000C16 00:CC06: 20 A1 D2  JSR sub_D2A1
C - - - - - 0x000C19 00:CC09: A8        TAY
C - - - - - 0x000C1A 00:CC0A: E0 0E     CPX #$0E
C - - - - - 0x000C1C 00:CC0C: B0 33     BCS bra_CC41_RTS
C - - - - - 0x000C1E 00:CC0E: C0 0E     CPY #$0E
C - - - - - 0x000C20 00:CC10: B0 2F     BCS bra_CC41_RTS
C - - - - - 0x000C22 00:CC12: A9 70     LDA #$70
C - - - - - 0x000C24 00:CC14: 20 3D CD  JSR sub_CD3D
C - - - - - 0x000C27 00:CC17: A2 3C     LDX #$3C
C - - - - - 0x000C29 00:CC19: A0 30     LDY #$30
C - - - - - 0x000C2B 00:CC1B: 20 FC DF  JSR sub_DFFC
C - - - - - 0x000C2E 00:CC1E: A9 86     LDA #$86
C - - - - - 0x000C30 00:CC20: 20 E8 DF  JSR sub_DFE8
C - - - - - 0x000C33 00:CC23: A2 34     LDX #$34
C - - - - - 0x000C35 00:CC25: A0 34     LDY #$34
C - - - - - 0x000C37 00:CC27: 20 83 CD  JSR sub_CD83
C - - - - - 0x000C3A 00:CC2A: A2 24     LDX #$24
C - - - - - 0x000C3C 00:CC2C: A0 30     LDY #$30
C - - - - - 0x000C3E 00:CC2E: 20 4D CD  JSR sub_CD4D
C - - - - - 0x000C41 00:CC31: 20 F8 CC  JSR sub_CCF8
C - - - - - 0x000C44 00:CC34: 20 F0 CA  JSR sub_CAF0
C - - - - - 0x000C47 00:CC37: 20 42 CC  JSR sub_CC42
C - - - - - 0x000C4A 00:CC3A: A9 01     LDA #$01
C - - - - - 0x000C4C 00:CC3C: 85 E5     STA ram_00E5
C - - - - - 0x000C4E 00:CC3E: 20 44 F1  JSR sub_F144
bra_CC41_RTS:
C - - - - - 0x000C51 00:CC41: 60        RTS



sub_CC42:
C - - - - - 0x000C52 00:CC42: A5 60     LDA ram_0060
C - - - - - 0x000C54 00:CC44: C9 02     CMP #$02
C - - - - - 0x000C56 00:CC46: F0 0C     BEQ bra_CC54
C - - - - - 0x000C58 00:CC48: A9 02     LDA #$02
C - - - - - 0x000C5A 00:CC4A: 85 67     STA ram_0067
C - - - - - 0x000C5C 00:CC4C: A9 0B     LDA #$0B
C - - - - - 0x000C5E 00:CC4E: 85 61     STA ram_0061
C - - - - - 0x000C60 00:CC50: A9 14     LDA #$14
C - - - - - 0x000C62 00:CC52: 85 65     STA ram_0065
bra_CC54:
C - - - - - 0x000C64 00:CC54: A5 68     LDA ram_0068
C - - - - - 0x000C66 00:CC56: C9 02     CMP #$02
C - - - - - 0x000C68 00:CC58: F0 0C     BEQ bra_CC66
C - - - - - 0x000C6A 00:CC5A: A9 02     LDA #$02
C - - - - - 0x000C6C 00:CC5C: 85 6F     STA ram_006F
C - - - - - 0x000C6E 00:CC5E: A9 0B     LDA #$0B
C - - - - - 0x000C70 00:CC60: 85 69     STA ram_0069
C - - - - - 0x000C72 00:CC62: A9 14     LDA #$14
C - - - - - 0x000C74 00:CC64: 85 6D     STA ram_006D
bra_CC66:
C - - - - - 0x000C76 00:CC66: A5 70     LDA ram_0070
C - - - - - 0x000C78 00:CC68: C9 02     CMP #$02
C - - - - - 0x000C7A 00:CC6A: F0 0C     BEQ bra_CC78_RTS
C - - - - - 0x000C7C 00:CC6C: A9 02     LDA #$02
C - - - - - 0x000C7E 00:CC6E: 85 77     STA ram_0077
C - - - - - 0x000C80 00:CC70: A9 0B     LDA #$0B
C - - - - - 0x000C82 00:CC72: 85 71     STA ram_0071
C - - - - - 0x000C84 00:CC74: A9 14     LDA #$14
C - - - - - 0x000C86 00:CC76: 85 75     STA ram_0075
bra_CC78_RTS:
C - - - - - 0x000C88 00:CC78: 60        RTS



sub_CC79:
C - - - - - 0x000C89 00:CC79: A5 A8     LDA ram_00A8
C - - - - - 0x000C8B 00:CC7B: F0 01     BEQ bra_CC7E
C - - - - - 0x000C8D 00:CC7D: 60        RTS
bra_CC7E:
C - - - - - 0x000C8E 00:CC7E: A9 01     LDA #$01
C - - - - - 0x000C90 00:CC80: 85 A8     STA ram_00A8
C - - - - - 0x000C92 00:CC82: 20 21 CD  JSR sub_CD21
C - - - - - 0x000C95 00:CC85: A9 C4     LDA #< $20C4
C - - - - - 0x000C97 00:CC87: 85 02     STA ram_0002
C - - - - - 0x000C99 00:CC89: A9 20     LDA #> $20C4
C - - - - - 0x000C9B 00:CC8B: 85 03     STA ram_0003
C - - - - - 0x000C9D 00:CC8D: A9 DC     LDA #< tbl_CCDC_tiles___house_window_opened_1
C - - - - - 0x000C9F 00:CC8F: 85 00     STA ram_0000
C - - - - - 0x000CA1 00:CC91: A9 CC     LDA #> tbl_CCDC_tiles___house_window_opened_1
C - - - - - 0x000CA3 00:CC93: 85 01     STA ram_0001
C - - - - - 0x000CA5 00:CC95: 20 D7 EB  JSR sub_EBD7_print_text
C - - - - - 0x000CA8 00:CC98: A9 E4     LDA #< $20E4
C - - - - - 0x000CAA 00:CC9A: 85 02     STA ram_0002
C - - - - - 0x000CAC 00:CC9C: A9 20     LDA #> $20E4
C - - - - - 0x000CAE 00:CC9E: 85 03     STA ram_0003
C - - - - - 0x000CB0 00:CCA0: A9 E3     LDA #< tbl_CCE3_tiles___house_window_opened_2
C - - - - - 0x000CB2 00:CCA2: 85 00     STA ram_0000
C - - - - - 0x000CB4 00:CCA4: A9 CC     LDA #> tbl_CCE3_tiles___house_window_opened_2
C - - - - - 0x000CB6 00:CCA6: 85 01     STA ram_0001
C - - - - - 0x000CB8 00:CCA8: 20 D7 EB  JSR sub_EBD7_print_text
C - - - - - 0x000CBB 00:CCAB: 20 21 CD  JSR sub_CD21
C - - - - - 0x000CBE 00:CCAE: 60        RTS



sub_CCAF:
C - - - - - 0x000CBF 00:CCAF: 20 21 CD  JSR sub_CD21
C - - - - - 0x000CC2 00:CCB2: A9 C4     LDA #< $20C4
C - - - - - 0x000CC4 00:CCB4: 85 02     STA ram_0002
C - - - - - 0x000CC6 00:CCB6: A9 20     LDA #> $20C4
C - - - - - 0x000CC8 00:CCB8: 85 03     STA ram_0003
C - - - - - 0x000CCA 00:CCBA: A9 EA     LDA #< tbl_CCEA_tiles___house_window_closed_1
C - - - - - 0x000CCC 00:CCBC: 85 00     STA ram_0000
C - - - - - 0x000CCE 00:CCBE: A9 CC     LDA #> tbl_CCEA_tiles___house_window_closed_1
C - - - - - 0x000CD0 00:CCC0: 85 01     STA ram_0001
C - - - - - 0x000CD2 00:CCC2: 20 D7 EB  JSR sub_EBD7_print_text
C - - - - - 0x000CD5 00:CCC5: A9 E4     LDA #< $20E4
C - - - - - 0x000CD7 00:CCC7: 85 02     STA ram_0002
C - - - - - 0x000CD9 00:CCC9: A9 20     LDA #> $20E4
C - - - - - 0x000CDB 00:CCCB: 85 03     STA ram_0003
C - - - - - 0x000CDD 00:CCCD: A9 F1     LDA #< tbl_CCF1_tiles___house_window_closed_2
C - - - - - 0x000CDF 00:CCCF: 85 00     STA ram_0000
C - - - - - 0x000CE1 00:CCD1: A9 CC     LDA #> tbl_CCF1_tiles___house_window_closed_2
C - - - - - 0x000CE3 00:CCD3: 85 01     STA ram_0001
C - - - - - 0x000CE5 00:CCD5: 20 D7 EB  JSR sub_EBD7_print_text
C - - - - - 0x000CE8 00:CCD8: 20 21 CD  JSR sub_CD21
C - - - - - 0x000CEB 00:CCDB: 60        RTS



tbl_CCDC_tiles___house_window_opened_1:
- D 2 - I - 0x000CEC 00:CCDC: DA        .byte $DA, $DB, $20, $20, $DE, $DF   ; 
- D 2 - I - 0x000CF2 00:CCE2: 00        .byte $00   ; 

tbl_CCE3_tiles___house_window_opened_2:
- D 2 - I - 0x000CF3 00:CCE3: EA        .byte $EA, $EB, $20, $20, $EE, $EF   ; 
- D 2 - I - 0x000CF9 00:CCE9: 00        .byte $00   ; 



tbl_CCEA_tiles___house_window_closed_1:
- D 2 - I - 0x000CFA 00:CCEA: DA        .byte $DA, $DB, $DC, $DD, $DE, $DF   ; 
- D 2 - I - 0x000D00 00:CCF0: 00        .byte $00   ; 

tbl_CCF1_tiles___house_window_closed_2:
- D 2 - I - 0x000D01 00:CCF1: EA        .byte $EA, $EB, $EC, $ED, $EE, $EF   ; 
- D 2 - I - 0x000D07 00:CCF7: 00        .byte $00   ; 



sub_CCF8:
C - - - - - 0x000D08 00:CCF8: 20 21 CD  JSR sub_CD21
C - - - - - 0x000D0B 00:CCFB: A9 C4     LDA #< $20C4
C - - - - - 0x000D0D 00:CCFD: 85 02     STA ram_0002
C - - - - - 0x000D0F 00:CCFF: A9 20     LDA #> $20C4
C - - - - - 0x000D11 00:CD01: 85 03     STA ram_0003
C - - - - - 0x000D13 00:CD03: 20 15 CD  JSR sub_CD15
C - - - - - 0x000D16 00:CD06: A9 E4     LDA #< $20E4
C - - - - - 0x000D18 00:CD08: 85 02     STA ram_0002
C - - - - - 0x000D1A 00:CD0A: A9 20     LDA #> $20E4
C - - - - - 0x000D1C 00:CD0C: 85 03     STA ram_0003
C - - - - - 0x000D1E 00:CD0E: 20 15 CD  JSR sub_CD15
C - - - - - 0x000D21 00:CD11: 20 21 CD  JSR sub_CD21
C - - - - - 0x000D24 00:CD14: 60        RTS



sub_CD15:
C - - - - - 0x000D25 00:CD15: A9 2D     LDA #< tbl_CD2D_tiles___6_spaces
C - - - - - 0x000D27 00:CD17: 85 00     STA ram_0000
C - - - - - 0x000D29 00:CD19: A9 CD     LDA #> tbl_CD2D_tiles___6_spaces
C - - - - - 0x000D2B 00:CD1B: 85 01     STA ram_0001
C - - - - - 0x000D2D 00:CD1D: 20 D7 EB  JSR sub_EBD7_print_text
C - - - - - 0x000D30 00:CD20: 60        RTS



sub_CD21:
C - - - - - 0x000D31 00:CD21: 20 08 EC  JSR sub_EC08
C - - - - - 0x000D34 00:CD24: A9 01     LDA #$01
C - - - - - 0x000D36 00:CD26: 85 26     STA ram_0026
bra_CD28_infinite_loop:
C - - - - - 0x000D38 00:CD28: A5 26     LDA ram_0026
C - - - - - 0x000D3A 00:CD2A: D0 FC     BNE bra_CD28_infinite_loop
C - - - - - 0x000D3C 00:CD2C: 60        RTS



tbl_CD2D_tiles___6_spaces:
- D 2 - I - 0x000D3D 00:CD2D: 20        .byte "      "
- D 2 - I - 0x000D43 00:CD33: 00        .byte $00   ; 



sub_CD34_clear_00xx:
; X = offset, Y = counter
bra_CD34_loop:
C - - - - - 0x000D44 00:CD34: A9 00     LDA #$00
C - - - - - 0x000D46 00:CD36: 95 00     STA ram_0000,X
C - - - - - 0x000D48 00:CD38: E8        INX
C - - - - - 0x000D49 00:CD39: 88        DEY
C - - - - - 0x000D4A 00:CD3A: D0 F8     BNE bra_CD34_loop
C - - - - - 0x000D4C 00:CD3C: 60        RTS



sub_CD3D:
C - - - - - 0x000D4D 00:CD3D: A8        TAY
C - - - - - 0x000D4E 00:CD3E: A9 F8     LDA #$F8
C - - - - - 0x000D50 00:CD40: 20 91 D1  JSR sub_D191_set_spr_Y
C - - - - - 0x000D53 00:CD43: 20 A1 D1  JSR sub_D1A1_set_spr_T
C - - - - - 0x000D56 00:CD46: 20 B7 D1  JSR sub_D1B7_set_spr_A
C - - - - - 0x000D59 00:CD49: 20 C4 D1  JSR sub_D1C4_set_spr_X
C - - - - - 0x000D5C 00:CD4C: 60        RTS



sub_CD4D:
C - - - - - 0x000D5D 00:CD4D: 86 40     STX ram_0040
C - - - - - 0x000D5F 00:CD4F: 84 42     STY ram_0042
C - - - - - 0x000D61 00:CD51: A0 80     LDY #$80
C - - - - - 0x000D63 00:CD53: A5 42     LDA ram_0042
C - - - - - 0x000D65 00:CD55: 20 91 D1  JSR sub_D191_set_spr_Y
C - - - - - 0x000D68 00:CD58: A9 E0     LDA #$E0
C - - - - - 0x000D6A 00:CD5A: 20 A1 D1  JSR sub_D1A1_set_spr_T
C - - - - - 0x000D6D 00:CD5D: A9 21     LDA #$21
C - - - - - 0x000D6F 00:CD5F: 20 B7 D1  JSR sub_D1B7_set_spr_A
C - - - - - 0x000D72 00:CD62: A5 40     LDA ram_0040
C - - - - - 0x000D74 00:CD64: 20 C4 D1  JSR sub_D1C4_set_spr_X
C - - - - - 0x000D77 00:CD67: 60        RTS



sub_CD68:
C - - - - - 0x000D78 00:CD68: 86 40     STX ram_0040
C - - - - - 0x000D7A 00:CD6A: 84 42     STY ram_0042
C - - - - - 0x000D7C 00:CD6C: A0 70     LDY #$70
C - - - - - 0x000D7E 00:CD6E: A5 42     LDA ram_0042
C - - - - - 0x000D80 00:CD70: 20 91 D1  JSR sub_D191_set_spr_Y
C - - - - - 0x000D83 00:CD73: A9 E2     LDA #$E2
C - - - - - 0x000D85 00:CD75: 20 A1 D1  JSR sub_D1A1_set_spr_T
C - - - - - 0x000D88 00:CD78: A9 00     LDA #$00
C - - - - - 0x000D8A 00:CD7A: 20 B7 D1  JSR sub_D1B7_set_spr_A
C - - - - - 0x000D8D 00:CD7D: A5 40     LDA ram_0040
C - - - - - 0x000D8F 00:CD7F: 20 C4 D1  JSR sub_D1C4_set_spr_X
C - - - - - 0x000D92 00:CD82: 60        RTS



sub_CD83:
C - - - - - 0x000D93 00:CD83: 8E 1B 07  STX ram_spr_X + $18
C - - - - - 0x000D96 00:CD86: 8C 18 07  STY ram_spr_Y + $18
C - - - - - 0x000D99 00:CD89: A9 EF     LDA #$EF
C - - - - - 0x000D9B 00:CD8B: 8D 19 07  STA ram_spr_T + $18
C - - - - - 0x000D9E 00:CD8E: A9 01     LDA #$01
C - - - - - 0x000DA0 00:CD90: 8D 1A 07  STA ram_spr_A + $18
C - - - - - 0x000DA3 00:CD93: 60        RTS



sub_CD94:
C - - - - - 0x000DA4 00:CD94: A5 9A     LDA ram_009A
C - - - - - 0x000DA6 00:CD96: F0 01     BEQ bra_CD99
C - - - - - 0x000DA8 00:CD98: 60        RTS
bra_CD99:
C - - - - - 0x000DA9 00:CD99: A5 8F     LDA ram_008F
C - - - - - 0x000DAB 00:CD9B: D0 01     BNE bra_CD9E
bra_CD9D_RTS:
C - - - - - 0x000DAD 00:CD9D: 60        RTS
bra_CD9E:
C - - - - - 0x000DAE 00:CD9E: A5 57     LDA ram_0057
C - - - - - 0x000DB0 00:CDA0: D0 FB     BNE bra_CD9D_RTS
C - - - - - 0x000DB2 00:CDA2: A5 A8     LDA ram_00A8
C - - - - - 0x000DB4 00:CDA4: D0 09     BNE bra_CDAF
C - - - - - 0x000DB6 00:CDA6: A9 01     LDA #$01
C - - - - - 0x000DB8 00:CDA8: 85 A8     STA ram_00A8
C - - - - - 0x000DBA 00:CDAA: A9 50     LDA #$50
C - - - - - 0x000DBC 00:CDAC: 8D 80 07  STA ram_spr_Y + $80
bra_CDAF:
C - - - - - 0x000DBF 00:CDAF: E6 A9     INC ram_00A9
C - - - - - 0x000DC1 00:CDB1: A5 A9     LDA ram_00A9
C - - - - - 0x000DC3 00:CDB3: 29 0F     AND #$0F
C - - - - - 0x000DC5 00:CDB5: AA        TAX
C - - - - - 0x000DC6 00:CDB6: BD 4F CE  LDA tbl_CE4F,X
C - - - - - 0x000DC9 00:CDB9: 18        CLC
C - - - - - 0x000DCA 00:CDBA: 6D 80 07  ADC ram_spr_Y + $80
C - - - - - 0x000DCD 00:CDBD: A8        TAY
C - - - - - 0x000DCE 00:CDBE: A2 70     LDX #$70
C - - - - - 0x000DD0 00:CDC0: 20 4D CD  JSR sub_CD4D
C - - - - - 0x000DD3 00:CDC3: E6 AA     INC ram_00AA
C - - - - - 0x000DD5 00:CDC5: A5 AA     LDA ram_00AA
C - - - - - 0x000DD7 00:CDC7: 29 3F     AND #$3F
C - - - - - 0x000DD9 00:CDC9: C9 20     CMP #$20
C - - - - - 0x000DDB 00:CDCB: 90 0A     BCC bra_CDD7
C - - - - - 0x000DDD 00:CDCD: A2 80     LDX #$80
C - - - - - 0x000DDF 00:CDCF: A0 44     LDY #$44
C - - - - - 0x000DE1 00:CDD1: 20 68 CD  JSR sub_CD68
C - - - - - 0x000DE4 00:CDD4: 4C DC CD  JMP loc_CDDC
bra_CDD7:
C - - - - - 0x000DE7 00:CDD7: A9 70     LDA #$70
C - - - - - 0x000DE9 00:CDD9: 20 3D CD  JSR sub_CD3D
loc_CDDC:
C D 2 - - - 0x000DEC 00:CDDC: AD 23 07  LDA ram_spr_X + $20
C - - - - - 0x000DEF 00:CDDF: 38        SEC
C - - - - - 0x000DF0 00:CDE0: ED 83 07  SBC ram_spr_X + $80
C - - - - - 0x000DF3 00:CDE3: 20 A1 D2  JSR sub_D2A1
C - - - - - 0x000DF6 00:CDE6: AA        TAX
C - - - - - 0x000DF7 00:CDE7: AD 20 07  LDA ram_spr_Y + $20
C - - - - - 0x000DFA 00:CDEA: 38        SEC
C - - - - - 0x000DFB 00:CDEB: ED 80 07  SBC ram_spr_Y + $80
C - - - - - 0x000DFE 00:CDEE: 20 A1 D2  JSR sub_D2A1
C - - - - - 0x000E01 00:CDF1: A8        TAY
C - - - - - 0x000E02 00:CDF2: E0 0E     CPX #$0E
C - - - - - 0x000E04 00:CDF4: B0 58     BCS bra_CE4E_RTS
C - - - - - 0x000E06 00:CDF6: C0 0E     CPY #$0E
C - - - - - 0x000E08 00:CDF8: B0 54     BCS bra_CE4E_RTS
C - - - - - 0x000E0A 00:CDFA: 20 DC F2  JSR sub_F2DC
C - - - - - 0x000E0D 00:CDFD: A9 30     LDA #$30
C - - - - - 0x000E0F 00:CDFF: 20 3D CD  JSR sub_CD3D
C - - - - - 0x000E12 00:CE02: A9 70     LDA #$70
C - - - - - 0x000E14 00:CE04: 20 3D CD  JSR sub_CD3D
C - - - - - 0x000E17 00:CE07: A2 84     LDX #$84
C - - - - - 0x000E19 00:CE09: A0 50     LDY #$50
C - - - - - 0x000E1B 00:CE0B: 20 FC DF  JSR sub_DFFC
C - - - - - 0x000E1E 00:CE0E: A9 86     LDA #$86
C - - - - - 0x000E20 00:CE10: 20 E8 DF  JSR sub_DFE8
C - - - - - 0x000E23 00:CE13: A2 7C     LDX #$7C
C - - - - - 0x000E25 00:CE15: A0 54     LDY #$54
C - - - - - 0x000E27 00:CE17: 20 83 CD  JSR sub_CD83
C - - - - - 0x000E2A 00:CE1A: A2 6C     LDX #$6C
C - - - - - 0x000E2C 00:CE1C: A0 50     LDY #$50
C - - - - - 0x000E2E 00:CE1E: 20 4D CD  JSR sub_CD4D
C - - - - - 0x000E31 00:CE21: 20 F0 CA  JSR sub_CAF0
C - - - - - 0x000E34 00:CE24: 20 68 D0  JSR sub_D068
C - - - - - 0x000E37 00:CE27: 20 A1 C9  JSR sub_C9A1
C - - - - - 0x000E3A 00:CE2A: A9 02     LDA #$02
C - - - - - 0x000E3C 00:CE2C: 20 0C C6  JSR sub_C60C_garbage_loop
C - - - - - 0x000E3F 00:CE2F: 20 5F CE  JSR sub_CE5F
C - - - - - 0x000E42 00:CE32: 20 9A F0  JSR sub_F09A
C - - - - - 0x000E45 00:CE35: A9 03     LDA #$03
C - - - - - 0x000E47 00:CE37: 20 0C C6  JSR sub_C60C_garbage_loop
C - - - - - 0x000E4A 00:CE3A: 20 88 CE  JSR sub_CE88
C - - - - - 0x000E4D 00:CE3D: 20 B1 F0  JSR sub_F0B1
C - - - - - 0x000E50 00:CE40: A9 04     LDA #$04
C - - - - - 0x000E52 00:CE42: 20 0C C6  JSR sub_C60C_garbage_loop
C - - - - - 0x000E55 00:CE45: 20 D4 F2  JSR sub_F2D4
C - - - - - 0x000E58 00:CE48: 20 43 C8  JSR sub_C843
C - - - - - 0x000E5B 00:CE4B: 4C 77 C2  JMP loc_C277
bra_CE4E_RTS:
C - - - - - 0x000E5E 00:CE4E: 60        RTS



tbl_CE4F:
- D 2 - - - 0x000E5F 00:CE4F: 00        .byte $00   ; 00
- D 2 - - - 0x000E60 00:CE50: 00        .byte $00   ; 01
- D 2 - - - 0x000E61 00:CE51: 00        .byte $00   ; 02
- D 2 - - - 0x000E62 00:CE52: 00        .byte $00   ; 03
- D 2 - - - 0x000E63 00:CE53: 00        .byte $00   ; 04
- D 2 - - - 0x000E64 00:CE54: 00        .byte $00   ; 05
- D 2 - - - 0x000E65 00:CE55: 00        .byte $00   ; 06
- D 2 - - - 0x000E66 00:CE56: 00        .byte $00   ; 07
- D 2 - - - 0x000E67 00:CE57: FC        .byte $FC   ; 08
- D 2 - - - 0x000E68 00:CE58: FE        .byte $FE   ; 09
- D 2 - - - 0x000E69 00:CE59: FF        .byte $FF   ; 0A
- D 2 - - - 0x000E6A 00:CE5A: 00        .byte $00   ; 0B
- D 2 - - - 0x000E6B 00:CE5B: 00        .byte $00   ; 0C
- D 2 - - - 0x000E6C 00:CE5C: 01        .byte $01   ; 0D
- D 2 - - - 0x000E6D 00:CE5D: 02        .byte $02   ; 0E
- D 2 - - - 0x000E6E 00:CE5E: 04        .byte $04   ; 0F



sub_CE5F:
C - - - - - 0x000E6F 00:CE5F: 20 79 CE  JSR sub_CE79
C - - - - - 0x000E72 00:CE62: A0 40     LDY #$40
C - - - - - 0x000E74 00:CE64: A9 48     LDA #$48
C - - - - - 0x000E76 00:CE66: 20 91 D1  JSR sub_D191_set_spr_Y
C - - - - - 0x000E79 00:CE69: A9 08     LDA #$08
C - - - - - 0x000E7B 00:CE6B: 20 A1 D1  JSR sub_D1A1_set_spr_T
C - - - - - 0x000E7E 00:CE6E: A9 01     LDA #$01
C - - - - - 0x000E80 00:CE70: 20 B7 D1  JSR sub_D1B7_set_spr_A
C - - - - - 0x000E83 00:CE73: A9 78     LDA #$78
C - - - - - 0x000E85 00:CE75: 20 C4 D1  JSR sub_D1C4_set_spr_X
C - - - - - 0x000E88 00:CE78: 60        RTS



sub_CE79:
C - - - - - 0x000E89 00:CE79: A9 F8     LDA #$F8
C - - - - - 0x000E8B 00:CE7B: 8D 18 07  STA ram_spr_Y + $18
C - - - - - 0x000E8E 00:CE7E: 8D 19 07  STA ram_spr_T + $18
C - - - - - 0x000E91 00:CE81: 8D 1A 07  STA ram_spr_A + $18
C - - - - - 0x000E94 00:CE84: 8D 1B 07  STA ram_spr_X + $18
C - - - - - 0x000E97 00:CE87: 60        RTS



sub_CE88:
C - - - - - 0x000E98 00:CE88: A0 40     LDY #$40
C - - - - - 0x000E9A 00:CE8A: A2 00     LDX #$00
bra_CE8C_loop:
C - - - - - 0x000E9C 00:CE8C: BD AF CE  LDA tbl_CEAF_spr_Y,X
C - - - - - 0x000E9F 00:CE8F: 20 91 D1  JSR sub_D191_set_spr_Y
C - - - - - 0x000EA2 00:CE92: BD B3 CE  LDA tbl_CEB3_spr_T,X
C - - - - - 0x000EA5 00:CE95: 20 A1 D1  JSR sub_D1A1_set_spr_T
C - - - - - 0x000EA8 00:CE98: BD B7 CE  LDA tbl_CEB7_spr_A,X
C - - - - - 0x000EAB 00:CE9B: 20 B7 D1  JSR sub_D1B7_set_spr_A
C - - - - - 0x000EAE 00:CE9E: BD BB CE  LDA tbl_CEBB_spr_X,X
C - - - - - 0x000EB1 00:CEA1: 20 C4 D1  JSR sub_D1C4_set_spr_X
C - - - - - 0x000EB4 00:CEA4: 98        TYA
C - - - - - 0x000EB5 00:CEA5: 18        CLC
C - - - - - 0x000EB6 00:CEA6: 69 10     ADC #$10
C - - - - - 0x000EB8 00:CEA8: A8        TAY
C - - - - - 0x000EB9 00:CEA9: E8        INX
C - - - - - 0x000EBA 00:CEAA: E0 04     CPX #$04
C - - - - - 0x000EBC 00:CEAC: D0 DE     BNE bra_CE8C_loop
C - - - - - 0x000EBE 00:CEAE: 60        RTS



tbl_CEAF_spr_Y:
- D 2 - - - 0x000EBF 00:CEAF: 34        .byte $34   ; 00
- D 2 - - - 0x000EC0 00:CEB0: 34        .byte $34   ; 01
- D 2 - - - 0x000EC1 00:CEB1: 44        .byte $44   ; 02
- D 2 - - - 0x000EC2 00:CEB2: 44        .byte $44   ; 03

tbl_CEB3_spr_T:
- D 2 - - - 0x000EC3 00:CEB3: 48        .byte $48   ; 00
- D 2 - - - 0x000EC4 00:CEB4: 4A        .byte $4A   ; 01
- D 2 - - - 0x000EC5 00:CEB5: 68        .byte $68   ; 02
- D 2 - - - 0x000EC6 00:CEB6: 6A        .byte $6A   ; 03

tbl_CEB7_spr_A:
- D 2 - - - 0x000EC7 00:CEB7: 01        .byte $01   ; 00
- D 2 - - - 0x000EC8 00:CEB8: 01        .byte $01   ; 01
- D 2 - - - 0x000EC9 00:CEB9: 01        .byte $01   ; 02
- D 2 - - - 0x000ECA 00:CEBA: 01        .byte $01   ; 03

tbl_CEBB_spr_X:
- D 2 - - - 0x000ECB 00:CEBB: 70        .byte $70   ; 00
- D 2 - - - 0x000ECC 00:CEBC: 80        .byte $80   ; 01
- D 2 - - - 0x000ECD 00:CEBD: 70        .byte $70   ; 02
- D 2 - - - 0x000ECE 00:CEBE: 80        .byte $80   ; 03



sub_CEBF:
C - - - - - 0x000ECF 00:CEBF: A2 00     LDX #$00
bra_CEC1_loop:
C - - - - - 0x000ED1 00:CEC1: BD CC CE  LDA tbl_CECC,X
C - - - - - 0x000ED4 00:CEC4: 95 78     STA ram_0078,X
C - - - - - 0x000ED6 00:CEC6: E8        INX
C - - - - - 0x000ED7 00:CEC7: E0 10     CPX #$10
C - - - - - 0x000ED9 00:CEC9: D0 F6     BNE bra_CEC1_loop
C - - - - - 0x000EDB 00:CECB: 60        RTS



tbl_CECC:
- D 2 - - - 0x000EDC 00:CECC: 00        .byte $00   ; 00
- D 2 - - - 0x000EDD 00:CECD: 01        .byte $01   ; 01
- D 2 - - - 0x000EDE 00:CECE: 64        .byte $64   ; 02
- D 2 - - - 0x000EDF 00:CECF: 01        .byte $01   ; 03
- D 2 - - - 0x000EE0 00:CED0: 00        .byte $00   ; 04
- D 2 - - - 0x000EE1 00:CED1: 00        .byte $00   ; 05
- D 2 - - - 0x000EE2 00:CED2: 96        .byte $96   ; 06
- D 2 - - - 0x000EE3 00:CED3: 00        .byte $00   ; 07
- D 2 - - - 0x000EE4 00:CED4: 00        .byte $00   ; 08
- D 2 - - - 0x000EE5 00:CED5: 01        .byte $01   ; 09
- D 2 - - - 0x000EE6 00:CED6: 32        .byte $32   ; 0A
- D 2 - - - 0x000EE7 00:CED7: 01        .byte $01   ; 0B
- D 2 - - - 0x000EE8 00:CED8: 00        .byte $00   ; 0C
- D 2 - - - 0x000EE9 00:CED9: 00        .byte $00   ; 0D
- D 2 - - - 0x000EEA 00:CEDA: C8        .byte $C8   ; 0E
- D 2 - - - 0x000EEB 00:CEDB: 00        .byte $00   ; 0F



tbl_CEDC_spr_Y:
- D 2 - - - 0x000EEC 00:CEDC: 38        .byte $38   ; 00
- D 2 - - - 0x000EED 00:CEDD: 60        .byte $60   ; 01
- D 2 - - - 0x000EEE 00:CEDE: 88        .byte $88   ; 02
- D 2 - - - 0x000EEF 00:CEDF: B0        .byte $B0   ; 03

tbl_CEE0_spr_T:
- D 2 - - - 0x000EF0 00:CEE0: 40        .byte $40   ; 00
- D 2 - - - 0x000EF1 00:CEE1: 50        .byte $50   ; 01
- D 2 - - - 0x000EF2 00:CEE2: 40        .byte $40   ; 02
- D 2 - - - 0x000EF3 00:CEE3: 50        .byte $50   ; 03

tbl_CEE4_spr_A:
- D 2 - - - 0x000EF4 00:CEE4: 03        .byte $03   ; 00
- D 2 - - - 0x000EF5 00:CEE5: 03        .byte $03   ; 01
- D 2 - - - 0x000EF6 00:CEE6: 03        .byte $03   ; 02
- D 2 - - - 0x000EF7 00:CEE7: 03        .byte $03   ; 03

tbl_CEE8_spr_X:
- D 2 - - - 0x000EF8 00:CEE8: 00        .byte $00   ; 00
- D 2 - - - 0x000EF9 00:CEE9: F8        .byte $F8   ; 01
- D 2 - - - 0x000EFA 00:CEEA: 00        .byte $00   ; 02
- D 2 - - - 0x000EFB 00:CEEB: F8        .byte $F8   ; 03



sub_CEEC:
C - - - - - 0x000EFC 00:CEEC: A5 9A     LDA ram_009A
C - - - - - 0x000EFE 00:CEEE: F0 01     BEQ bra_CEF1
C - - - - - 0x000F00 00:CEF0: 60        RTS
bra_CEF1:
C - - - - - 0x000F01 00:CEF1: A5 8F     LDA ram_008F
C - - - - - 0x000F03 00:CEF3: D0 01     BNE bra_CEF6
C - - - - - 0x000F05 00:CEF5: 60        RTS
bra_CEF6:
C - - - - - 0x000F06 00:CEF6: A5 57     LDA ram_0057
C - - - - - 0x000F08 00:CEF8: D0 3C     BNE bra_CF36_RTS
C - - - - - 0x000F0A 00:CEFA: A9 00     LDA #$00
C - - - - - 0x000F0C 00:CEFC: 85 44     STA ram_0044
C - - - - - 0x000F0E 00:CEFE: A9 00     LDA #$00
C - - - - - 0x000F10 00:CF00: 85 45     STA ram_0045
C - - - - - 0x000F12 00:CF02: A5 8F     LDA ram_008F
C - - - - - 0x000F14 00:CF04: 85 47     STA ram_0047
bra_CF06:
C - - - - - 0x000F16 00:CF06: A6 44     LDX ram_0044
C - - - - - 0x000F18 00:CF08: A0 00     LDY #$00
bra_CF0A_loop:
C - - - - - 0x000F1A 00:CF0A: B5 78     LDA ram_0078,X
C - - - - - 0x000F1C 00:CF0C: 99 58 00  STA ram_0058,Y
C - - - - - 0x000F1F 00:CF0F: E8        INX
C - - - - - 0x000F20 00:CF10: C8        INY
C - - - - - 0x000F21 00:CF11: C0 04     CPY #$04
C - - - - - 0x000F23 00:CF13: D0 F5     BNE bra_CF0A_loop
C - - - - - 0x000F25 00:CF15: 20 37 CF  JSR sub_CF37
C - - - - - 0x000F28 00:CF18: A6 44     LDX ram_0044
C - - - - - 0x000F2A 00:CF1A: A0 00     LDY #$00
bra_CF1C_loop:
C - - - - - 0x000F2C 00:CF1C: B9 58 00  LDA ram_0058,Y
C - - - - - 0x000F2F 00:CF1F: 95 78     STA ram_0078,X
C - - - - - 0x000F31 00:CF21: E8        INX
C - - - - - 0x000F32 00:CF22: C8        INY
C - - - - - 0x000F33 00:CF23: C0 04     CPY #$04
C - - - - - 0x000F35 00:CF25: D0 F5     BNE bra_CF1C_loop
C - - - - - 0x000F37 00:CF27: A5 44     LDA ram_0044
C - - - - - 0x000F39 00:CF29: 18        CLC
C - - - - - 0x000F3A 00:CF2A: 69 04     ADC #$04
C - - - - - 0x000F3C 00:CF2C: 85 44     STA ram_0044
C - - - - - 0x000F3E 00:CF2E: E6 45     INC ram_0045
C - - - - - 0x000F40 00:CF30: A5 45     LDA ram_0045
C - - - - - 0x000F42 00:CF32: C5 47     CMP ram_0047
C - - - - - 0x000F44 00:CF34: D0 D0     BNE bra_CF06
bra_CF36_RTS:
C - - - - - 0x000F46 00:CF36: 60        RTS



sub_CF37:
C - - - - - 0x000F47 00:CF37: A5 58     LDA ram_0058
C - - - - - 0x000F49 00:CF39: D0 3D     BNE bra_CF78
C - - - - - 0x000F4B 00:CF3B: E6 5A     INC ram_005A
C - - - - - 0x000F4D 00:CF3D: A5 5A     LDA ram_005A
C - - - - - 0x000F4F 00:CF3F: C9 64     CMP #$64
C - - - - - 0x000F51 00:CF41: D0 24     BNE bra_CF67_RTS
C - - - - - 0x000F53 00:CF43: A4 45     LDY ram_0045
C - - - - - 0x000F55 00:CF45: A6 44     LDX ram_0044
C - - - - - 0x000F57 00:CF47: B9 DC CE  LDA tbl_CEDC_spr_Y,Y
C - - - - - 0x000F5A 00:CF4A: 9D 30 07  STA ram_spr_Y + $30,X
C - - - - - 0x000F5D 00:CF4D: B9 E0 CE  LDA tbl_CEE0_spr_T,Y
C - - - - - 0x000F60 00:CF50: 9D 31 07  STA ram_spr_T + $30,X
C - - - - - 0x000F63 00:CF53: B9 E4 CE  LDA tbl_CEE4_spr_A,Y
C - - - - - 0x000F66 00:CF56: 9D 32 07  STA ram_spr_A + $30,X
C - - - - - 0x000F69 00:CF59: B9 E8 CE  LDA tbl_CEE8_spr_X,Y
C - - - - - 0x000F6C 00:CF5C: 9D 33 07  STA ram_spr_X + $30,X
C - - - - - 0x000F6F 00:CF5F: A9 01     LDA #$01
C - - - - - 0x000F71 00:CF61: 85 58     STA ram_0058
C - - - - - 0x000F73 00:CF63: A9 00     LDA #$00
C - - - - - 0x000F75 00:CF65: 85 5A     STA ram_005A
bra_CF67_RTS:
C - - - - - 0x000F77 00:CF67: 60        RTS



loc_CF68:
C D 2 - - - 0x000F78 00:CF68: A6 44     LDX ram_0044
C - - - - - 0x000F7A 00:CF6A: A9 60     LDA #$60
C - - - - - 0x000F7C 00:CF6C: 9D 31 07  STA ram_spr_T + $30,X
C - - - - - 0x000F7F 00:CF6F: A9 00     LDA #$00
C - - - - - 0x000F81 00:CF71: 85 58     STA ram_0058
C - - - - - 0x000F83 00:CF73: A9 00     LDA #$00    ; bzk optimize, loading same A
C - - - - - 0x000F85 00:CF75: 85 5A     STA ram_005A
C - - - - - 0x000F87 00:CF77: 60        RTS



bra_CF78:   ; bzk
C - - - - - 0x000F88 00:CF78: 20 D2 CF  JSR sub_CFD2
C - - - - - 0x000F8B 00:CF7B: A6 44     LDX ram_0044
C - - - - - 0x000F8D 00:CF7D: BD 31 07  LDA ram_spr_T + $30,X
C - - - - - 0x000F90 00:CF80: 18        CLC
C - - - - - 0x000F91 00:CF81: 69 01     ADC #$01
C - - - - - 0x000F93 00:CF83: 29 F3     AND #$F3
C - - - - - 0x000F95 00:CF85: 9D 31 07  STA ram_spr_T + $30,X
C - - - - - 0x000F98 00:CF88: A5 59     LDA ram_0059
C - - - - - 0x000F9A 00:CF8A: F0 0D     BEQ bra_CF99
C - - - - - 0x000F9C 00:CF8C: FE 33 07  INC ram_spr_X + $30,X
C - - - - - 0x000F9F 00:CF8F: BD 33 07  LDA ram_spr_X + $30,X
C - - - - - 0x000FA2 00:CF92: C9 F8     CMP #$F8
C - - - - - 0x000FA4 00:CF94: D0 0E     BNE bra_CFA4
C - - - - - 0x000FA6 00:CF96: 4C 68 CF  JMP loc_CF68
bra_CF99:
C - - - - - 0x000FA9 00:CF99: DE 33 07  DEC ram_spr_X + $30,X
C - - - - - 0x000FAC 00:CF9C: BD 33 07  LDA ram_spr_X + $30,X
C - - - - - 0x000FAF 00:CF9F: D0 03     BNE bra_CFA4
C - - - - - 0x000FB1 00:CFA1: 4C 68 CF  JMP loc_CF68
bra_CFA4:
C - - - - - 0x000FB4 00:CFA4: A5 5B     LDA ram_005B
C - - - - - 0x000FB6 00:CFA6: F0 16     BEQ bra_CFBE
C - - - - - 0x000FB8 00:CFA8: FE 30 07  INC ram_spr_Y + $30,X
C - - - - - 0x000FBB 00:CFAB: E6 5A     INC ram_005A
C - - - - - 0x000FBD 00:CFAD: A5 5A     LDA ram_005A
C - - - - - 0x000FBF 00:CFAF: C9 28     CMP #$28
C - - - - - 0x000FC1 00:CFB1: D0 1E     BNE bra_CFD1_RTS
C - - - - - 0x000FC3 00:CFB3: A9 00     LDA #$00
C - - - - - 0x000FC5 00:CFB5: 85 5A     STA ram_005A
C - - - - - 0x000FC7 00:CFB7: A9 00     LDA #$00    ; bzk optimize, loading same A
C - - - - - 0x000FC9 00:CFB9: 85 5B     STA ram_005B
C - - - - - 0x000FCB 00:CFBB: 4C D1 CF  JMP loc_CFD1_RTS
bra_CFBE:
C - - - - - 0x000FCE 00:CFBE: DE 30 07  DEC ram_spr_Y + $30,X
C - - - - - 0x000FD1 00:CFC1: E6 5A     INC ram_005A
C - - - - - 0x000FD3 00:CFC3: A5 5A     LDA ram_005A
C - - - - - 0x000FD5 00:CFC5: C9 28     CMP #$28
C - - - - - 0x000FD7 00:CFC7: D0 08     BNE bra_CFD1_RTS
C - - - - - 0x000FD9 00:CFC9: A9 00     LDA #$00
C - - - - - 0x000FDB 00:CFCB: 85 5A     STA ram_005A
C - - - - - 0x000FDD 00:CFCD: A9 01     LDA #$01
C - - - - - 0x000FDF 00:CFCF: 85 5B     STA ram_005B
bra_CFD1_RTS:
loc_CFD1_RTS:
C D 2 - - - 0x000FE1 00:CFD1: 60        RTS



sub_CFD2:
C - - - - - 0x000FE2 00:CFD2: A6 44     LDX ram_0044
C - - - - - 0x000FE4 00:CFD4: AD 23 07  LDA ram_spr_X + $20
C - - - - - 0x000FE7 00:CFD7: 18        CLC
C - - - - - 0x000FE8 00:CFD8: 69 08     ADC #$08
C - - - - - 0x000FEA 00:CFDA: 85 46     STA ram_0046
C - - - - - 0x000FEC 00:CFDC: BD 33 07  LDA ram_spr_X + $30,X
C - - - - - 0x000FEF 00:CFDF: 18        CLC
C - - - - - 0x000FF0 00:CFE0: 69 04     ADC #$04
C - - - - - 0x000FF2 00:CFE2: 38        SEC
C - - - - - 0x000FF3 00:CFE3: E5 46     SBC ram_0046
C - - - - - 0x000FF5 00:CFE5: 20 A1 D2  JSR sub_D2A1
C - - - - - 0x000FF8 00:CFE8: C9 08     CMP #$08
C - - - - - 0x000FFA 00:CFEA: B0 1B     BCS bra_D007_RTS
C - - - - - 0x000FFC 00:CFEC: AD 20 07  LDA ram_spr_Y + $20
C - - - - - 0x000FFF 00:CFEF: 18        CLC
C - - - - - 0x001000 00:CFF0: 69 08     ADC #$08
C - - - - - 0x001002 00:CFF2: 85 46     STA ram_0046
C - - - - - 0x001004 00:CFF4: BD 30 07  LDA ram_spr_Y + $30,X
C - - - - - 0x001007 00:CFF7: 18        CLC
C - - - - - 0x001008 00:CFF8: 69 04     ADC #$04
C - - - - - 0x00100A 00:CFFA: 38        SEC
C - - - - - 0x00100B 00:CFFB: E5 46     SBC ram_0046
C - - - - - 0x00100D 00:CFFD: 20 A1 D2  JSR sub_D2A1
C - - - - - 0x001010 00:D000: C9 08     CMP #$08
C - - - - - 0x001012 00:D002: B0 03     BCS bra_D007_RTS
C - - - - - 0x001014 00:D004: 4C 69 D6  JMP loc_D669
bra_D007_RTS:
C - - - - - 0x001017 00:D007: 60        RTS



sub_D008:
C - - - - - 0x001018 00:D008: A5 9A     LDA ram_009A
C - - - - - 0x00101A 00:D00A: F0 01     BEQ bra_D00D
C - - - - - 0x00101C 00:D00C: 60        RTS
bra_D00D:
C - - - - - 0x00101D 00:D00D: A5 8C     LDA ram_008C
C - - - - - 0x00101F 00:D00F: F0 11     BEQ bra_D022_RTS
C - - - - - 0x001021 00:D011: E6 8D     INC ram_008D
C - - - - - 0x001023 00:D013: A5 8D     LDA ram_008D
C - - - - - 0x001025 00:D015: C9 0A     CMP #$0A
C - - - - - 0x001027 00:D017: D0 09     BNE bra_D022_RTS
C - - - - - 0x001029 00:D019: A9 60     LDA #$60
C - - - - - 0x00102B 00:D01B: 20 34 D0  JSR sub_D034
C - - - - - 0x00102E 00:D01E: A9 00     LDA #$00
C - - - - - 0x001030 00:D020: 85 8C     STA ram_008C
bra_D022_RTS:
C - - - - - 0x001032 00:D022: 60        RTS



sub_D023:
C - - - - - 0x001033 00:D023: 8E 13 07  STX ram_spr_X + $10
C - - - - - 0x001036 00:D026: 8A        TXA
C - - - - - 0x001037 00:D027: 18        CLC
C - - - - - 0x001038 00:D028: 69 08     ADC #$08
C - - - - - 0x00103A 00:D02A: 8D 17 07  STA ram_spr_X + $14
C - - - - - 0x00103D 00:D02D: 8C 10 07  STY ram_spr_Y + $10
C - - - - - 0x001040 00:D030: 8C 14 07  STY ram_spr_Y + $14
C - - - - - 0x001043 00:D033: 60        RTS



sub_D034:
C - - - - - 0x001044 00:D034: 8D 11 07  STA ram_spr_T + $10
C - - - - - 0x001047 00:D037: 18        CLC
C - - - - - 0x001048 00:D038: 69 01     ADC #$01
C - - - - - 0x00104A 00:D03A: 8D 15 07  STA ram_spr_T + $14
C - - - - - 0x00104D 00:D03D: 60        RTS



sub_D03E:
C - - - - - 0x00104E 00:D03E: A2 00     LDX #$00
bra_D040_loop:
C - - - - - 0x001050 00:D040: BD 00 06  LDA ram_0600,X
C - - - - - 0x001053 00:D043: C9 05     CMP #$05
C - - - - - 0x001055 00:D045: F0 0C     BEQ bra_D053
C - - - - - 0x001057 00:D047: C9 06     CMP #$06
C - - - - - 0x001059 00:D049: F0 08     BEQ bra_D053
C - - - - - 0x00105B 00:D04B: C9 08     CMP #$08
C - - - - - 0x00105D 00:D04D: F0 04     BEQ bra_D053
C - - - - - 0x00105F 00:D04F: C9 09     CMP #$09
C - - - - - 0x001061 00:D051: D0 05     BNE bra_D058
bra_D053:
C - - - - - 0x001063 00:D053: A9 00     LDA #$00
C - - - - - 0x001065 00:D055: 9D 00 06  STA ram_0600,X
bra_D058:
C - - - - - 0x001068 00:D058: E8        INX
C - - - - - 0x001069 00:D059: D0 E5     BNE bra_D040_loop
C - - - - - 0x00106B 00:D05B: 60        RTS



sub_D05C:
C - - - - - 0x00106C 00:D05C: A2 90     LDX #< ram_0090
C - - - - - 0x00106E 00:D05E: A0 0A     LDY #$0A
C - - - - - 0x001070 00:D060: 20 34 CD  JSR sub_CD34_clear_00xx
C - - - - - 0x001073 00:D063: A9 00     LDA #$00
C - - - - - 0x001075 00:D065: 85 E4     STA ram_00E4
C - - - - - 0x001077 00:D067: 60        RTS



sub_D068:
C - - - - - 0x001078 00:D068: A9 90     LDA #$90
C - - - - - 0x00107A 00:D06A: 20 3D CD  JSR sub_CD3D
C - - - - - 0x00107D 00:D06D: A9 A0     LDA #$A0
C - - - - - 0x00107F 00:D06F: 20 3D CD  JSR sub_CD3D
C - - - - - 0x001082 00:D072: A9 B0     LDA #$B0
C - - - - - 0x001084 00:D074: 20 3D CD  JSR sub_CD3D
C - - - - - 0x001087 00:D077: A9 C0     LDA #$C0
C - - - - - 0x001089 00:D079: 20 3D CD  JSR sub_CD3D
C - - - - - 0x00108C 00:D07C: A9 D0     LDA #$D0
C - - - - - 0x00108E 00:D07E: 20 3D CD  JSR sub_CD3D
C - - - - - 0x001091 00:D081: 60        RTS



sub_D082:
C - - - - - 0x001092 00:D082: A5 9A     LDA ram_009A
C - - - - - 0x001094 00:D084: F0 01     BEQ bra_D087
C - - - - - 0x001096 00:D086: 60        RTS
bra_D087:
C - - - - - 0x001097 00:D087: A9 90     LDA #$90
C - - - - - 0x001099 00:D089: 85 06     STA ram_0006
C - - - - - 0x00109B 00:D08B: A9 00     LDA #$00
C - - - - - 0x00109D 00:D08D: 85 07     STA ram_0007
C - - - - - 0x00109F 00:D08F: A9 90     LDA #$90
C - - - - - 0x0010A1 00:D091: 85 08     STA ram_0008
C - - - - - 0x0010A3 00:D093: A9 07     LDA #$07
C - - - - - 0x0010A5 00:D095: 85 09     STA ram_0009
C - - - - - 0x0010A7 00:D097: A5 2C     LDA ram_002C
C - - - - - 0x0010A9 00:D099: 85 49     STA ram_0049
bra_D09B_loop:
C - - - - - 0x0010AB 00:D09B: A0 00     LDY #$00
C - - - - - 0x0010AD 00:D09D: B1 06     LDA (ram_0006),Y
C - - - - - 0x0010AF 00:D09F: 85 58     STA ram_0058
C - - - - - 0x0010B1 00:D0A1: C8        INY
C - - - - - 0x0010B2 00:D0A2: B1 06     LDA (ram_0006),Y
C - - - - - 0x0010B4 00:D0A4: 85 59     STA ram_0059
C - - - - - 0x0010B6 00:D0A6: A0 03     LDY #$03
bra_D0A8_loop:
C - - - - - 0x0010B8 00:D0A8: B1 08     LDA (ram_0008),Y
C - - - - - 0x0010BA 00:D0AA: 99 5A 00  STA ram_005A,Y
C - - - - - 0x0010BD 00:D0AD: 88        DEY
C - - - - - 0x0010BE 00:D0AE: 10 F8     BPL bra_D0A8_loop
C - - - - - 0x0010C0 00:D0B0: 20 DB D0  JSR sub_D0DB
C - - - - - 0x0010C3 00:D0B3: A0 00     LDY #$00
C - - - - - 0x0010C5 00:D0B5: A5 58     LDA ram_0058
C - - - - - 0x0010C7 00:D0B7: 91 06     STA (ram_0006),Y
C - - - - - 0x0010C9 00:D0B9: C8        INY
C - - - - - 0x0010CA 00:D0BA: A5 59     LDA ram_0059
C - - - - - 0x0010CC 00:D0BC: 91 06     STA (ram_0006),Y
C - - - - - 0x0010CE 00:D0BE: A0 03     LDY #$03
bra_D0C0_loop:
C - - - - - 0x0010D0 00:D0C0: B9 5A 00  LDA ram_005A,Y
C - - - - - 0x0010D3 00:D0C3: 91 08     STA (ram_0008),Y
C - - - - - 0x0010D5 00:D0C5: 88        DEY
C - - - - - 0x0010D6 00:D0C6: 10 F8     BPL bra_D0C0_loop
C - - - - - 0x0010D8 00:D0C8: A5 06     LDA ram_0006
C - - - - - 0x0010DA 00:D0CA: 18        CLC
C - - - - - 0x0010DB 00:D0CB: 69 02     ADC #$02
C - - - - - 0x0010DD 00:D0CD: 85 06     STA ram_0006
C - - - - - 0x0010DF 00:D0CF: A5 08     LDA ram_0008
C - - - - - 0x0010E1 00:D0D1: 18        CLC
C - - - - - 0x0010E2 00:D0D2: 69 10     ADC #$10
C - - - - - 0x0010E4 00:D0D4: 85 08     STA ram_0008
C - - - - - 0x0010E6 00:D0D6: C6 49     DEC ram_0049
C - - - - - 0x0010E8 00:D0D8: D0 C1     BNE bra_D09B_loop
C - - - - - 0x0010EA 00:D0DA: 60        RTS



sub_D0DB:
C - - - - - 0x0010EB 00:D0DB: A5 58     LDA ram_0058
C - - - - - 0x0010ED 00:D0DD: D0 38     BNE bra_D117
C - - - - - 0x0010EF 00:D0DF: A5 57     LDA ram_0057
C - - - - - 0x0010F1 00:D0E1: D0 33     BNE bra_D116_RTS
C - - - - - 0x0010F3 00:D0E3: A5 E5     LDA ram_00E5
C - - - - - 0x0010F5 00:D0E5: D0 2F     BNE bra_D116_RTS
C - - - - - 0x0010F7 00:D0E7: 20 5D D1  JSR sub_D15D
C - - - - - 0x0010FA 00:D0EA: A5 5D     LDA ram_005D
C - - - - - 0x0010FC 00:D0EC: 38        SEC
C - - - - - 0x0010FD 00:D0ED: ED 23 07  SBC ram_spr_X + $20
C - - - - - 0x001100 00:D0F0: 20 A1 D2  JSR sub_D2A1
C - - - - - 0x001103 00:D0F3: AA        TAX
C - - - - - 0x001104 00:D0F4: A5 5A     LDA ram_005A
C - - - - - 0x001106 00:D0F6: 38        SEC
C - - - - - 0x001107 00:D0F7: ED 20 07  SBC ram_spr_Y + $20
C - - - - - 0x00110A 00:D0FA: 20 A1 D2  JSR sub_D2A1
C - - - - - 0x00110D 00:D0FD: A8        TAY
C - - - - - 0x00110E 00:D0FE: E0 0C     CPX #$0C
C - - - - - 0x001110 00:D100: B0 14     BCS bra_D116_RTS
C - - - - - 0x001112 00:D102: C0 0C     CPY #$0C
C - - - - - 0x001114 00:D104: B0 10     BCS bra_D116_RTS
C - - - - - 0x001116 00:D106: A9 01     LDA #$01
C - - - - - 0x001118 00:D108: 85 58     STA ram_0058
C - - - - - 0x00111A 00:D10A: A9 1E     LDA #$1E
C - - - - - 0x00111C 00:D10C: 85 59     STA ram_0059
C - - - - - 0x00111E 00:D10E: 20 9A F0  JSR sub_F09A
C - - - - - 0x001121 00:D111: 20 AB C6  JSR sub_C6AB
C - - - - - 0x001124 00:D114: E6 E4     INC ram_00E4
bra_D116_RTS:
C - - - - - 0x001126 00:D116: 60        RTS
bra_D117:
C - - - - - 0x001127 00:D117: A5 59     LDA ram_0059
C - - - - - 0x001129 00:D119: F0 3C     BEQ bra_D157
C - - - - - 0x00112B 00:D11B: C6 59     DEC ram_0059
C - - - - - 0x00112D 00:D11D: A2 60     LDX #$60
C - - - - - 0x00112F 00:D11F: C9 01     CMP #$01
C - - - - - 0x001131 00:D121: F0 1A     BEQ bra_D13D
C - - - - - 0x001133 00:D123: A2 CC     LDX #$CC
C - - - - - 0x001135 00:D125: C9 0F     CMP #$0F
C - - - - - 0x001137 00:D127: 90 14     BCC bra_D13D
C - - - - - 0x001139 00:D129: A2 CA     LDX #$CA
C - - - - - 0x00113B 00:D12B: C9 15     CMP #$15
C - - - - - 0x00113D 00:D12D: 90 0E     BCC bra_D13D
C - - - - - 0x00113F 00:D12F: A2 C8     LDX #$C8
C - - - - - 0x001141 00:D131: C9 18     CMP #$18
C - - - - - 0x001143 00:D133: 90 08     BCC bra_D13D
C - - - - - 0x001145 00:D135: A2 C6     LDX #$C6
C - - - - - 0x001147 00:D137: C9 1B     CMP #$1B
C - - - - - 0x001149 00:D139: 90 02     BCC bra_D13D
C - - - - - 0x00114B 00:D13B: A2 C4     LDX #$C4
bra_D13D:
C - - - - - 0x00114D 00:D13D: 8A        TXA
C - - - - - 0x00114E 00:D13E: A4 08     LDY ram_0008
C - - - - - 0x001150 00:D140: 85 5B     STA ram_005B
C - - - - - 0x001152 00:D142: 20 A1 D1  JSR sub_D1A1_set_spr_T
C - - - - - 0x001155 00:D145: A9 02     LDA #$02
C - - - - - 0x001157 00:D147: 85 5C     STA ram_005C
C - - - - - 0x001159 00:D149: 20 B7 D1  JSR sub_D1B7_set_spr_A
C - - - - - 0x00115C 00:D14C: A5 5A     LDA ram_005A
C - - - - - 0x00115E 00:D14E: 38        SEC
C - - - - - 0x00115F 00:D14F: E9 01     SBC #$01
C - - - - - 0x001161 00:D151: 85 5A     STA ram_005A
C - - - - - 0x001163 00:D153: 20 91 D1  JSR sub_D191_set_spr_Y
C - - - - - 0x001166 00:D156: 60        RTS
bra_D157:
C - - - - - 0x001167 00:D157: A5 08     LDA ram_0008
C - - - - - 0x001169 00:D159: 20 3D CD  JSR sub_CD3D
C - - - - - 0x00116C 00:D15C: 60        RTS



sub_D15D:
C - - - - - 0x00116D 00:D15D: A5 8F     LDA ram_008F
C - - - - - 0x00116F 00:D15F: F0 2F     BEQ bra_D190_RTS
C - - - - - 0x001171 00:D161: A5 59     LDA ram_0059
C - - - - - 0x001173 00:D163: F0 17     BEQ bra_D17C
C - - - - - 0x001175 00:D165: A5 5A     LDA ram_005A
C - - - - - 0x001177 00:D167: 18        CLC
C - - - - - 0x001178 00:D168: 65 8F     ADC ram_008F
C - - - - - 0x00117A 00:D16A: 85 5A     STA ram_005A
C - - - - - 0x00117C 00:D16C: A4 08     LDY ram_0008
C - - - - - 0x00117E 00:D16E: 20 91 D1  JSR sub_D191_set_spr_Y
C - - - - - 0x001181 00:D171: C9 A0     CMP #$A0
C - - - - - 0x001183 00:D173: 90 1B     BCC bra_D190_RTS
C - - - - - 0x001185 00:D175: A9 00     LDA #$00
C - - - - - 0x001187 00:D177: 85 59     STA ram_0059
C - - - - - 0x001189 00:D179: 4C 90 D1  JMP loc_D190_RTS
bra_D17C:
C - - - - - 0x00118C 00:D17C: A5 5A     LDA ram_005A
C - - - - - 0x00118E 00:D17E: 38        SEC
C - - - - - 0x00118F 00:D17F: E5 8F     SBC ram_008F
C - - - - - 0x001191 00:D181: 85 5A     STA ram_005A
C - - - - - 0x001193 00:D183: A4 08     LDY ram_0008
C - - - - - 0x001195 00:D185: 20 91 D1  JSR sub_D191_set_spr_Y
C - - - - - 0x001198 00:D188: C9 60     CMP #$60
C - - - - - 0x00119A 00:D18A: B0 04     BCS bra_D190_RTS
C - - - - - 0x00119C 00:D18C: A9 01     LDA #$01
C - - - - - 0x00119E 00:D18E: 85 59     STA ram_0059
bra_D190_RTS:
loc_D190_RTS:
C D 2 - - - 0x0011A0 00:D190: 60        RTS



sub_D191_set_spr_Y:
C - - - - - 0x0011A1 00:D191: 99 00 07  STA ram_spr_Y,Y
C - - - - - 0x0011A4 00:D194: 99 04 07  STA ram_spr_Y + $04,Y
C - - - - - 0x0011A7 00:D197: 18        CLC
C - - - - - 0x0011A8 00:D198: 69 08     ADC #$08
C - - - - - 0x0011AA 00:D19A: 99 08 07  STA ram_spr_Y + $08,Y
C - - - - - 0x0011AD 00:D19D: 99 0C 07  STA ram_spr_Y + $0C,Y
C - - - - - 0x0011B0 00:D1A0: 60        RTS



sub_D1A1_set_spr_T:
C - - - - - 0x0011B1 00:D1A1: 99 01 07  STA ram_spr_T,Y
C - - - - - 0x0011B4 00:D1A4: 18        CLC
C - - - - - 0x0011B5 00:D1A5: 69 01     ADC #$01
C - - - - - 0x0011B7 00:D1A7: 99 05 07  STA ram_spr_T + $04,Y
C - - - - - 0x0011BA 00:D1AA: 18        CLC
C - - - - - 0x0011BB 00:D1AB: 69 0F     ADC #$0F
C - - - - - 0x0011BD 00:D1AD: 99 0D 07  STA ram_spr_T + $0C,Y
C - - - - - 0x0011C0 00:D1B0: 18        CLC
C - - - - - 0x0011C1 00:D1B1: 69 01     ADC #$01
C - - - - - 0x0011C3 00:D1B3: 99 09 07  STA ram_spr_T + $08,Y
C - - - - - 0x0011C6 00:D1B6: 60        RTS



sub_D1B7_set_spr_A:
C - - - - - 0x0011C7 00:D1B7: 99 02 07  STA ram_spr_A,Y
C - - - - - 0x0011CA 00:D1BA: 99 06 07  STA ram_spr_A + $04,Y
C - - - - - 0x0011CD 00:D1BD: 99 0A 07  STA ram_spr_A + $08,Y
C - - - - - 0x0011D0 00:D1C0: 99 0E 07  STA ram_spr_A + $0C,Y
C - - - - - 0x0011D3 00:D1C3: 60        RTS



sub_D1C4_set_spr_X:
C - - - - - 0x0011D4 00:D1C4: 99 03 07  STA ram_spr_X,Y
C - - - - - 0x0011D7 00:D1C7: 99 0F 07  STA ram_spr_X + $0C,Y
C - - - - - 0x0011DA 00:D1CA: 18        CLC
C - - - - - 0x0011DB 00:D1CB: 69 08     ADC #$08
C - - - - - 0x0011DD 00:D1CD: 99 07 07  STA ram_spr_X + $04,Y
C - - - - - 0x0011E0 00:D1D0: 99 0B 07  STA ram_spr_X + $08,Y
C - - - - - 0x0011E3 00:D1D3: 60        RTS



sub_D1D4:
C - - - - - 0x0011E4 00:D1D4: A2 00     LDX #$00
C - - - - - 0x0011E6 00:D1D6: 8A        TXA
C - - - - - 0x0011E7 00:D1D7: A0 04     LDY #$04
bra_D1D9_loop:
C - - - - - 0x0011E9 00:D1D9: 95 88     STA ram_0088,X
C - - - - - 0x0011EB 00:D1DB: E8        INX
C - - - - - 0x0011EC 00:D1DC: 88        DEY
C - - - - - 0x0011ED 00:D1DD: D0 FA     BNE bra_D1D9_loop
C - - - - - 0x0011EF 00:D1DF: 60        RTS



sub_D1E0:
C - - - - - 0x0011F0 00:D1E0: A5 8F     LDA ram_008F
C - - - - - 0x0011F2 00:D1E2: F0 0E     BEQ bra_D1F2_RTS
C - - - - - 0x0011F4 00:D1E4: A9 60     LDA #$60
C - - - - - 0x0011F6 00:D1E6: A0 E0     LDY #$E0
C - - - - - 0x0011F8 00:D1E8: 20 A1 D1  JSR sub_D1A1_set_spr_T
C - - - - - 0x0011FB 00:D1EB: A9 60     LDA #$60
C - - - - - 0x0011FD 00:D1ED: A0 F0     LDY #$F0
C - - - - - 0x0011FF 00:D1EF: 20 A1 D1  JSR sub_D1A1_set_spr_T
bra_D1F2_RTS:
C - - - - - 0x001202 00:D1F2: 60        RTS



sub_D1F3:
C - - - - - 0x001203 00:D1F3: A5 9A     LDA ram_009A
C - - - - - 0x001205 00:D1F5: F0 01     BEQ bra_D1F8
C - - - - - 0x001207 00:D1F7: 60        RTS
bra_D1F8:
C - - - - - 0x001208 00:D1F8: A9 88     LDA #$88
C - - - - - 0x00120A 00:D1FA: 85 02     STA ram_0002
C - - - - - 0x00120C 00:D1FC: A9 00     LDA #$00
C - - - - - 0x00120E 00:D1FE: 85 03     STA ram_0003
C - - - - - 0x001210 00:D200: A9 E0     LDA #$E0
C - - - - - 0x001212 00:D202: 85 45     STA ram_0045
C - - - - - 0x001214 00:D204: A9 02     LDA #$02
C - - - - - 0x001216 00:D206: 85 46     STA ram_0046
bra_D208:
C - - - - - 0x001218 00:D208: 20 1E D2  JSR sub_D21E
C - - - - - 0x00121B 00:D20B: A5 02     LDA ram_0002
C - - - - - 0x00121D 00:D20D: 18        CLC
C - - - - - 0x00121E 00:D20E: 69 02     ADC #$02
C - - - - - 0x001220 00:D210: 85 02     STA ram_0002
C - - - - - 0x001222 00:D212: A5 45     LDA ram_0045
C - - - - - 0x001224 00:D214: 18        CLC
C - - - - - 0x001225 00:D215: 69 10     ADC #$10
C - - - - - 0x001227 00:D217: 85 45     STA ram_0045
C - - - - - 0x001229 00:D219: C6 46     DEC ram_0046
C - - - - - 0x00122B 00:D21B: D0 EB     BNE bra_D208
C - - - - - 0x00122D 00:D21D: 60        RTS



sub_D21E:
C - - - - - 0x00122E 00:D21E: A0 00     LDY #$00
C - - - - - 0x001230 00:D220: B1 02     LDA (ram_0002),Y
C - - - - - 0x001232 00:D222: F0 16     BEQ bra_D23A_RTS
C - - - - - 0x001234 00:D224: C8        INY
C - - - - - 0x001235 00:D225: B1 02     LDA (ram_0002),Y
C - - - - - 0x001237 00:D227: 38        SEC
C - - - - - 0x001238 00:D228: E9 01     SBC #$01
C - - - - - 0x00123A 00:D22A: 91 02     STA (ram_0002),Y
C - - - - - 0x00123C 00:D22C: D0 0C     BNE bra_D23A_RTS
C - - - - - 0x00123E 00:D22E: 88        DEY
C - - - - - 0x00123F 00:D22F: A9 00     LDA #$00
C - - - - - 0x001241 00:D231: 91 02     STA (ram_0002),Y
C - - - - - 0x001243 00:D233: A9 C0     LDA #$C0
C - - - - - 0x001245 00:D235: A4 45     LDY ram_0045
C - - - - - 0x001247 00:D237: 20 A1 D1  JSR sub_D1A1_set_spr_T
bra_D23A_RTS:
C - - - - - 0x00124A 00:D23A: 60        RTS



sub_D23B:
C - - - - - 0x00124B 00:D23B: A9 88     LDA #< ram_0088
C - - - - - 0x00124D 00:D23D: 85 02     STA ram_0002
C - - - - - 0x00124F 00:D23F: A9 00     LDA #> ram_0088
C - - - - - 0x001251 00:D241: 85 03     STA ram_0003
C - - - - - 0x001253 00:D243: A9 E0     LDA #$E0
C - - - - - 0x001255 00:D245: 85 45     STA ram_0045
C - - - - - 0x001257 00:D247: A9 02     LDA #$02
C - - - - - 0x001259 00:D249: 85 46     STA ram_0046
C - - - - - 0x00125B 00:D24B: A9 01     LDA #$01
C - - - - - 0x00125D 00:D24D: 85 44     STA ram_0044
bra_D24F_loop:
C - - - - - 0x00125F 00:D24F: 20 67 D2  JSR sub_D267
C - - - - - 0x001262 00:D252: A5 02     LDA ram_0002
C - - - - - 0x001264 00:D254: 18        CLC
C - - - - - 0x001265 00:D255: 69 02     ADC #$02
C - - - - - 0x001267 00:D257: 85 02     STA ram_0002
C - - - - - 0x001269 00:D259: A5 45     LDA ram_0045
C - - - - - 0x00126B 00:D25B: 18        CLC
C - - - - - 0x00126C 00:D25C: 69 10     ADC #$10
C - - - - - 0x00126E 00:D25E: 85 45     STA ram_0045
C - - - - - 0x001270 00:D260: C6 46     DEC ram_0046
C - - - - - 0x001272 00:D262: D0 EB     BNE bra_D24F_loop
C - - - - - 0x001274 00:D264: A5 44     LDA ram_0044
C - - - - - 0x001276 00:D266: 60        RTS



sub_D267:
C - - - - - 0x001277 00:D267: A0 00     LDY #$00
C - - - - - 0x001279 00:D269: B1 02     LDA (ram_0002),Y
C - - - - - 0x00127B 00:D26B: D0 33     BNE bra_D2A0_RTS
C - - - - - 0x00127D 00:D26D: A4 45     LDY ram_0045
C - - - - - 0x00127F 00:D26F: A5 28     LDA ram_0028
C - - - - - 0x001281 00:D271: 18        CLC
C - - - - - 0x001282 00:D272: 69 08     ADC #$08
C - - - - - 0x001284 00:D274: 29 F0     AND #$F0
C - - - - - 0x001286 00:D276: D9 03 07  CMP ram_spr_X,Y
C - - - - - 0x001289 00:D279: D0 25     BNE bra_D2A0_RTS
C - - - - - 0x00128B 00:D27B: A5 29     LDA ram_0029
C - - - - - 0x00128D 00:D27D: 18        CLC
C - - - - - 0x00128E 00:D27E: 69 10     ADC #$10
C - - - - - 0x001290 00:D280: 29 F0     AND #$F0
C - - - - - 0x001292 00:D282: D9 00 07  CMP ram_spr_Y,Y
C - - - - - 0x001295 00:D285: D0 19     BNE bra_D2A0_RTS
C - - - - - 0x001297 00:D287: A0 00     LDY #$00
C - - - - - 0x001299 00:D289: A9 01     LDA #$01
C - - - - - 0x00129B 00:D28B: 91 02     STA (ram_0002),Y
C - - - - - 0x00129D 00:D28D: C8        INY
C - - - - - 0x00129E 00:D28E: A9 03     LDA #$03
C - - - - - 0x0012A0 00:D290: 91 02     STA (ram_0002),Y
C - - - - - 0x0012A2 00:D292: A9 C2     LDA #$C2
C - - - - - 0x0012A4 00:D294: A4 45     LDY ram_0045
C - - - - - 0x0012A6 00:D296: 20 A1 D1  JSR sub_D1A1_set_spr_T
C - - - - - 0x0012A9 00:D299: A9 00     LDA #$00
C - - - - - 0x0012AB 00:D29B: 85 44     STA ram_0044
C - - - - - 0x0012AD 00:D29D: 20 C8 F0  JSR sub_F0C8
bra_D2A0_RTS:
C - - - - - 0x0012B0 00:D2A0: 60        RTS



sub_D2A1:
C - - - - - 0x0012B1 00:D2A1: C9 80     CMP #$80
C - - - - - 0x0012B3 00:D2A3: 90 05     BCC bra_D2AA_RTS
C - - - - - 0x0012B5 00:D2A5: 49 FF     EOR #$FF
C - - - - - 0x0012B7 00:D2A7: 18        CLC
C - - - - - 0x0012B8 00:D2A8: 69 01     ADC #$01
bra_D2AA_RTS:
C - - - - - 0x0012BA 00:D2AA: 60        RTS



sub_D2AB:
C - - - - - 0x0012BB 00:D2AB: 18        CLC
C - - - - - 0x0012BC 00:D2AC: 7D D5 DF  ADC tbl_DFD5,X
C - - - - - 0x0012BF 00:D2AF: A8        TAY
C - - - - - 0x0012C0 00:D2B0: E0 0B     CPX #$0B
C - - - - - 0x0012C2 00:D2B2: B0 07     BCS bra_D2BB_RTS
C - - - - - 0x0012C4 00:D2B4: C9 C8     CMP #$C8
C - - - - - 0x0012C6 00:D2B6: 90 03     BCC bra_D2BB_RTS
C - - - - - 0x0012C8 00:D2B8: A9 00     LDA #$00
C - - - - - 0x0012CA 00:D2BA: A8        TAY
bra_D2BB_RTS:
C - - - - - 0x0012CB 00:D2BB: 60        RTS



sub_D2BC:
C - - - - - 0x0012CC 00:D2BC: 86 C0     STX ram_00C0
C - - - - - 0x0012CE 00:D2BE: 84 C1     STY ram_00C1
C - - - - - 0x0012D0 00:D2C0: A9 00     LDA #$00
C - - - - - 0x0012D2 00:D2C2: 85 0F     STA ram_000F
C - - - - - 0x0012D4 00:D2C4: A5 5F     LDA ram_005F
C - - - - - 0x0012D6 00:D2C6: D0 12     BNE bra_D2DA
C - - - - - 0x0012D8 00:D2C8: A6 D3     LDX ram_00D3
C - - - - - 0x0012DA 00:D2CA: A4 D0     LDY ram_00D0
C - - - - - 0x0012DC 00:D2CC: 20 7B E0  JSR sub_E07B
C - - - - - 0x0012DF 00:D2CF: D0 0C     BNE bra_D2DD
C - - - - - 0x0012E1 00:D2D1: A6 D3     LDX ram_00D3
C - - - - - 0x0012E3 00:D2D3: A4 D0     LDY ram_00D0
C - - - - - 0x0012E5 00:D2D5: 20 42 E0  JSR sub_E042
C - - - - - 0x0012E8 00:D2D8: D0 03     BNE bra_D2DD
bra_D2DA:
C - - - - - 0x0012EA 00:D2DA: 4C 32 D5  JMP loc_D532
bra_D2DD:
C - - - - - 0x0012ED 00:D2DD: A5 5C     LDA ram_005C
C - - - - - 0x0012EF 00:D2DF: F0 3B     BEQ bra_D31C
C - - - - - 0x0012F1 00:D2E1: A5 D0     LDA ram_00D0
C - - - - - 0x0012F3 00:D2E3: C9 D0     CMP #$D0
C - - - - - 0x0012F5 00:D2E5: F0 1F     BEQ bra_D306
C - - - - - 0x0012F7 00:D2E7: A5 D0     LDA ram_00D0
C - - - - - 0x0012F9 00:D2E9: 29 0F     AND #$0F
C - - - - - 0x0012FB 00:D2EB: D0 0B     BNE bra_D2F8
C - - - - - 0x0012FD 00:D2ED: A6 D3     LDX ram_00D3
C - - - - - 0x0012FF 00:D2EF: A4 D0     LDY ram_00D0
C - - - - - 0x001301 00:D2F1: 20 42 E0  JSR sub_E042
C - - - - - 0x001304 00:D2F4: C9 03     CMP #$03
C - - - - - 0x001306 00:D2F6: D0 07     BNE bra_D2FF
bra_D2F8:
C - - - - - 0x001308 00:D2F8: A9 04     LDA #$04
C - - - - - 0x00130A 00:D2FA: 85 0F     STA ram_000F
C - - - - - 0x00130C 00:D2FC: 4C 32 D5  JMP loc_D532
bra_D2FF:
C - - - - - 0x00130F 00:D2FF: A9 00     LDA #$00
C - - - - - 0x001311 00:D301: 85 5C     STA ram_005C
C - - - - - 0x001313 00:D303: 4C 1C D3  JMP loc_D31C
bra_D306:
- - - - - - 0x001316 00:D306: 20 46 D8  JSR sub_D846
- - - - - - 0x001319 00:D309: A9 00     LDA #$00
- - - - - - 0x00131B 00:D30B: 85 0F     STA ram_000F
- - - - - - 0x00131D 00:D30D: 4C 32 D5  JMP loc_D532



sub_D310:   ; bzk
C - - - - - 0x001320 00:D310: A5 D0     LDA ram_00D0
C - - - - - 0x001322 00:D312: 38        SEC
C - - - - - 0x001323 00:D313: ED 20 07  SBC ram_spr_Y + $20
C - - - - - 0x001326 00:D316: 20 A1 D2  JSR sub_D2A1
C - - - - - 0x001329 00:D319: C9 02     CMP #$02
C - - - - - 0x00132B 00:D31B: 60        RTS



bra_D31C:   ; bzk
loc_D31C:
C D 2 - - - 0x00132C 00:D31C: 20 10 D3  JSR sub_D310
C - - - - - 0x00132F 00:D31F: 90 03     BCC bra_D324
C - - - - - 0x001331 00:D321: 4C C2 D3  JMP loc_D3C2
bra_D324:
loc_D324:
C D 2 - - - 0x001334 00:D324: A5 D3     LDA ram_00D3
C - - - - - 0x001336 00:D326: CD 23 07  CMP ram_spr_X + $20
C - - - - - 0x001339 00:D329: 90 46     BCC bra_D371
C - - - - - 0x00133B 00:D32B: A6 D3     LDX ram_00D3
C - - - - - 0x00133D 00:D32D: A4 D0     LDY ram_00D0
C - - - - - 0x00133F 00:D32F: 20 7B E0  JSR sub_E07B
C - - - - - 0x001342 00:D332: F0 04     BEQ bra_D338
C - - - - - 0x001344 00:D334: C9 03     CMP #$03
C - - - - - 0x001346 00:D336: D0 7F     BNE bra_D3B7
bra_D338:
C - - - - - 0x001348 00:D338: A9 02     LDA #$02
C - - - - - 0x00134A 00:D33A: 85 0F     STA ram_000F
C - - - - - 0x00134C 00:D33C: A5 D3     LDA ram_00D3
C - - - - - 0x00134E 00:D33E: C9 10     CMP #$10
C - - - - - 0x001350 00:D340: 90 28     BCC bra_D36A
C - - - - - 0x001352 00:D342: A6 D3     LDX ram_00D3
C - - - - - 0x001354 00:D344: A4 D0     LDY ram_00D0
C - - - - - 0x001356 00:D346: 20 42 E0  JSR sub_E042
C - - - - - 0x001359 00:D349: A0 0F     LDY #$0F
C - - - - - 0x00135B 00:D34B: B1 00     LDA (ram_0000),Y
C - - - - - 0x00135D 00:D34D: D0 1B     BNE bra_D36A
C - - - - - 0x00135F 00:D34F: A6 D3     LDX ram_00D3
C - - - - - 0x001361 00:D351: A4 D0     LDY ram_00D0
C - - - - - 0x001363 00:D353: 20 AB E0  JSR sub_E0AB
C - - - - - 0x001366 00:D356: D0 12     BNE bra_D36A
C - - - - - 0x001368 00:D358: A5 D3     LDA ram_00D3
C - - - - - 0x00136A 00:D35A: 29 0F     AND #$0F
C - - - - - 0x00136C 00:D35C: D0 0C     BNE bra_D36A
C - - - - - 0x00136E 00:D35E: A9 82     LDA #$82
C - - - - - 0x001370 00:D360: 85 0F     STA ram_000F
C - - - - - 0x001372 00:D362: A9 02     LDA #$02
C - - - - - 0x001374 00:D364: 85 5B     STA ram_005B
C - - - - - 0x001376 00:D366: A9 02     LDA #$02    ; bzk optimize, loading same A
C - - - - - 0x001378 00:D368: 85 5A     STA ram_005A
bra_D36A:
C - - - - - 0x00137A 00:D36A: A9 00     LDA #$00
C - - - - - 0x00137C 00:D36C: 85 5E     STA ram_005E
C - - - - - 0x00137E 00:D36E: 4C 32 D5  JMP loc_D532
bra_D371:
C - - - - - 0x001381 00:D371: A6 D3     LDX ram_00D3
C - - - - - 0x001383 00:D373: A4 D0     LDY ram_00D0
C - - - - - 0x001385 00:D375: 20 7B E0  JSR sub_E07B
C - - - - - 0x001388 00:D378: F0 04     BEQ bra_D37E
C - - - - - 0x00138A 00:D37A: C9 03     CMP #$03
C - - - - - 0x00138C 00:D37C: D0 39     BNE bra_D3B7
bra_D37E:
C - - - - - 0x00138E 00:D37E: A9 01     LDA #$01
C - - - - - 0x001390 00:D380: 85 0F     STA ram_000F
C - - - - - 0x001392 00:D382: A9 E0     LDA #$E0
C - - - - - 0x001394 00:D384: C5 D3     CMP ram_00D3
C - - - - - 0x001396 00:D386: 90 28     BCC bra_D3B0
C - - - - - 0x001398 00:D388: A6 D3     LDX ram_00D3
C - - - - - 0x00139A 00:D38A: A4 D0     LDY ram_00D0
C - - - - - 0x00139C 00:D38C: 20 42 E0  JSR sub_E042
C - - - - - 0x00139F 00:D38F: A0 11     LDY #$11
C - - - - - 0x0013A1 00:D391: B1 00     LDA (ram_0000),Y
C - - - - - 0x0013A3 00:D393: D0 1B     BNE bra_D3B0
C - - - - - 0x0013A5 00:D395: A6 D3     LDX ram_00D3
C - - - - - 0x0013A7 00:D397: A4 D0     LDY ram_00D0
C - - - - - 0x0013A9 00:D399: 20 AB E0  JSR sub_E0AB
C - - - - - 0x0013AC 00:D39C: D0 12     BNE bra_D3B0
C - - - - - 0x0013AE 00:D39E: A5 D3     LDA ram_00D3
C - - - - - 0x0013B0 00:D3A0: 29 0F     AND #$0F
C - - - - - 0x0013B2 00:D3A2: D0 0C     BNE bra_D3B0
C - - - - - 0x0013B4 00:D3A4: A9 81     LDA #$81
C - - - - - 0x0013B6 00:D3A6: 85 0F     STA ram_000F
C - - - - - 0x0013B8 00:D3A8: A9 02     LDA #$02
C - - - - - 0x0013BA 00:D3AA: 85 5B     STA ram_005B
C - - - - - 0x0013BC 00:D3AC: A9 01     LDA #$01
C - - - - - 0x0013BE 00:D3AE: 85 5A     STA ram_005A
bra_D3B0:
C - - - - - 0x0013C0 00:D3B0: A9 01     LDA #$01
C - - - - - 0x0013C2 00:D3B2: 85 5E     STA ram_005E
C - - - - - 0x0013C4 00:D3B4: 4C 32 D5  JMP loc_D532
bra_D3B7:
- - - - - - 0x0013C7 00:D3B7: A9 01     LDA #$01
- - - - - - 0x0013C9 00:D3B9: 85 5C     STA ram_005C
- - - - - - 0x0013CB 00:D3BB: A9 04     LDA #$04
- - - - - - 0x0013CD 00:D3BD: 85 0F     STA ram_000F
- - - - - - 0x0013CF 00:D3BF: 4C 32 D5  JMP loc_D532



loc_D3C2:
C D 2 - - - 0x0013D2 00:D3C2: A5 D0     LDA ram_00D0
C - - - - - 0x0013D4 00:D3C4: CD 20 07  CMP ram_spr_Y + $20
C - - - - - 0x0013D7 00:D3C7: 90 7B     BCC bra_D444
C - - - - - 0x0013D9 00:D3C9: A6 D3     LDX ram_00D3
C - - - - - 0x0013DB 00:D3CB: A4 D0     LDY ram_00D0
C - - - - - 0x0013DD 00:D3CD: 20 7B E0  JSR sub_E07B
C - - - - - 0x0013E0 00:D3D0: C9 03     CMP #$03
C - - - - - 0x0013E2 00:D3D2: D0 39     BNE bra_D40D
C - - - - - 0x0013E4 00:D3D4: A5 D3     LDA ram_00D3
C - - - - - 0x0013E6 00:D3D6: 38        SEC
C - - - - - 0x0013E7 00:D3D7: ED 23 07  SBC ram_spr_X + $20
C - - - - - 0x0013EA 00:D3DA: 20 A1 D2  JSR sub_D2A1
C - - - - - 0x0013ED 00:D3DD: C9 10     CMP #$10
C - - - - - 0x0013EF 00:D3DF: 90 18     BCC bra_D3F9
C - - - - - 0x0013F1 00:D3E1: A6 D3     LDX ram_00D3
C - - - - - 0x0013F3 00:D3E3: A4 D0     LDY ram_00D0
C - - - - - 0x0013F5 00:D3E5: 20 AB E0  JSR sub_E0AB
C - - - - - 0x0013F8 00:D3E8: F0 1C     BEQ bra_D406
C - - - - - 0x0013FA 00:D3EA: C9 03     CMP #$03
C - - - - - 0x0013FC 00:D3EC: F0 0B     BEQ bra_D3F9
C - - - - - 0x0013FE 00:D3EE: A9 01     LDA #$01
C - - - - - 0x001400 00:D3F0: 85 5C     STA ram_005C
C - - - - - 0x001402 00:D3F2: A9 04     LDA #$04
C - - - - - 0x001404 00:D3F4: 85 0F     STA ram_000F
C - - - - - 0x001406 00:D3F6: 4C 32 D5  JMP loc_D532
bra_D3F9:
C - - - - - 0x001409 00:D3F9: A5 D3     LDA ram_00D3
C - - - - - 0x00140B 00:D3FB: 18        CLC
C - - - - - 0x00140C 00:D3FC: 69 08     ADC #$08
C - - - - - 0x00140E 00:D3FE: 29 F0     AND #$F0
C - - - - - 0x001410 00:D400: AA        TAX
C - - - - - 0x001411 00:D401: A4 D0     LDY ram_00D0
C - - - - - 0x001413 00:D403: 20 61 DA  JSR sub_DA61
bra_D406:
C - - - - - 0x001416 00:D406: A9 08     LDA #$08
C - - - - - 0x001418 00:D408: 85 0F     STA ram_000F
C - - - - - 0x00141A 00:D40A: 4C 32 D5  JMP loc_D532
bra_D40D:
C - - - - - 0x00141D 00:D40D: A6 D3     LDX ram_00D3
C - - - - - 0x00141F 00:D40F: A4 D0     LDY ram_00D0
C - - - - - 0x001421 00:D411: 20 AB E0  JSR sub_E0AB
C - - - - - 0x001424 00:D414: C9 03     CMP #$03
C - - - - - 0x001426 00:D416: D0 63     BNE bra_D47B
C - - - - - 0x001428 00:D418: A6 D3     LDX ram_00D3
C - - - - - 0x00142A 00:D41A: A4 D0     LDY ram_00D0
C - - - - - 0x00142C 00:D41C: 20 42 E0  JSR sub_E042
C - - - - - 0x00142F 00:D41F: C9 03     CMP #$03
C - - - - - 0x001431 00:D421: F0 58     BEQ bra_D47B
C - - - - - 0x001433 00:D423: A5 50     LDA ram_0050
C - - - - - 0x001435 00:D425: F0 03     BEQ bra_D42A
C - - - - - 0x001437 00:D427: 4C 24 D3  JMP loc_D324
bra_D42A:
C - - - - - 0x00143A 00:D42A: A5 D3     LDA ram_00D3
C - - - - - 0x00143C 00:D42C: 29 0F     AND #$0F
C - - - - - 0x00143E 00:D42E: D0 4B     BNE bra_D47B
C - - - - - 0x001440 00:D430: A9 00     LDA #$00
C - - - - - 0x001442 00:D432: 85 5B     STA ram_005B
C - - - - - 0x001444 00:D434: A9 08     LDA #$08
C - - - - - 0x001446 00:D436: 85 5A     STA ram_005A
C - - - - - 0x001448 00:D438: A9 8E     LDA #$8E
C - - - - - 0x00144A 00:D43A: 20 45 DA  JSR sub_DA45
C - - - - - 0x00144D 00:D43D: A9 80     LDA #$80
C - - - - - 0x00144F 00:D43F: 85 0F     STA ram_000F
C - - - - - 0x001451 00:D441: 4C 32 D5  JMP loc_D532
bra_D444:
C - - - - - 0x001454 00:D444: A6 D3     LDX ram_00D3
C - - - - - 0x001456 00:D446: A4 D0     LDY ram_00D0
C - - - - - 0x001458 00:D448: 20 7B E0  JSR sub_E07B
C - - - - - 0x00145B 00:D44B: C9 03     CMP #$03
C - - - - - 0x00145D 00:D44D: D0 14     BNE bra_D463
C - - - - - 0x00145F 00:D44F: A6 D3     LDX ram_00D3
C - - - - - 0x001461 00:D451: A4 D0     LDY ram_00D0
C - - - - - 0x001463 00:D453: 20 42 E0  JSR sub_E042
C - - - - - 0x001466 00:D456: F0 04     BEQ bra_D45C
C - - - - - 0x001468 00:D458: C9 03     CMP #$03
C - - - - - 0x00146A 00:D45A: D0 1F     BNE bra_D47B
bra_D45C:
C - - - - - 0x00146C 00:D45C: A9 04     LDA #$04
C - - - - - 0x00146E 00:D45E: 85 0F     STA ram_000F
C - - - - - 0x001470 00:D460: 4C 32 D5  JMP loc_D532
bra_D463:
C - - - - - 0x001473 00:D463: A5 D3     LDA ram_00D3
C - - - - - 0x001475 00:D465: 29 0F     AND #$0F
C - - - - - 0x001477 00:D467: D0 12     BNE bra_D47B
C - - - - - 0x001479 00:D469: A6 D3     LDX ram_00D3
C - - - - - 0x00147B 00:D46B: A4 D0     LDY ram_00D0
C - - - - - 0x00147D 00:D46D: 20 42 E0  JSR sub_E042
C - - - - - 0x001480 00:D470: C9 03     CMP #$03
C - - - - - 0x001482 00:D472: D0 07     BNE bra_D47B
C - - - - - 0x001484 00:D474: A9 04     LDA #$04
C - - - - - 0x001486 00:D476: 85 0F     STA ram_000F
C - - - - - 0x001488 00:D478: 4C 32 D5  JMP loc_D532
bra_D47B:
C - - - - - 0x00148B 00:D47B: A5 5E     LDA ram_005E
C - - - - - 0x00148D 00:D47D: D0 5E     BNE bra_D4DD
C - - - - - 0x00148F 00:D47F: A9 02     LDA #$02
C - - - - - 0x001491 00:D481: 85 0F     STA ram_000F
C - - - - - 0x001493 00:D483: A5 D3     LDA ram_00D3
C - - - - - 0x001495 00:D485: C9 08     CMP #$08
C - - - - - 0x001497 00:D487: B0 03     BCS bra_D48C
C - - - - - 0x001499 00:D489: 4C D4 D4  JMP loc_D4D4
bra_D48C:
C - - - - - 0x00149C 00:D48C: A6 D3     LDX ram_00D3
C - - - - - 0x00149E 00:D48E: A4 D0     LDY ram_00D0
C - - - - - 0x0014A0 00:D490: 20 42 E0  JSR sub_E042
C - - - - - 0x0014A3 00:D493: A0 0F     LDY #$0F
C - - - - - 0x0014A5 00:D495: B1 00     LDA (ram_0000),Y
C - - - - - 0x0014A7 00:D497: D0 1B     BNE bra_D4B4
C - - - - - 0x0014A9 00:D499: A6 D3     LDX ram_00D3
C - - - - - 0x0014AB 00:D49B: A4 D0     LDY ram_00D0
C - - - - - 0x0014AD 00:D49D: 20 AB E0  JSR sub_E0AB
C - - - - - 0x0014B0 00:D4A0: D0 12     BNE bra_D4B4
C - - - - - 0x0014B2 00:D4A2: A5 D3     LDA ram_00D3
C - - - - - 0x0014B4 00:D4A4: 29 0F     AND #$0F
C - - - - - 0x0014B6 00:D4A6: D0 1F     BNE bra_D4C7
C - - - - - 0x0014B8 00:D4A8: A9 82     LDA #$82
C - - - - - 0x0014BA 00:D4AA: 85 0F     STA ram_000F
C - - - - - 0x0014BC 00:D4AC: A9 02     LDA #$02
C - - - - - 0x0014BE 00:D4AE: 85 5B     STA ram_005B
C - - - - - 0x0014C0 00:D4B0: A9 02     LDA #$02    ; bzk optimize, loading same A
C - - - - - 0x0014C2 00:D4B2: 85 5A     STA ram_005A
bra_D4B4:
C - - - - - 0x0014C4 00:D4B4: A5 D3     LDA ram_00D3
C - - - - - 0x0014C6 00:D4B6: 29 0F     AND #$0F
C - - - - - 0x0014C8 00:D4B8: D0 0D     BNE bra_D4C7
C - - - - - 0x0014CA 00:D4BA: A6 D3     LDX ram_00D3
C - - - - - 0x0014CC 00:D4BC: A4 D0     LDY ram_00D0
C - - - - - 0x0014CE 00:D4BE: 20 BF E0  JSR sub_E0BF
C - - - - - 0x0014D1 00:D4C1: F0 04     BEQ bra_D4C7
C - - - - - 0x0014D3 00:D4C3: C9 03     CMP #$03
C - - - - - 0x0014D5 00:D4C5: D0 0D     BNE bra_D4D4
bra_D4C7:
C - - - - - 0x0014D7 00:D4C7: A6 D3     LDX ram_00D3
C - - - - - 0x0014D9 00:D4C9: A5 D0     LDA ram_00D0
C - - - - - 0x0014DB 00:D4CB: 29 F0     AND #$F0
C - - - - - 0x0014DD 00:D4CD: A8        TAY
C - - - - - 0x0014DE 00:D4CE: 20 61 DA  JSR sub_DA61
C - - - - - 0x0014E1 00:D4D1: 4C 32 D5  JMP loc_D532
bra_D4D4:
loc_D4D4:
C D 2 - - - 0x0014E4 00:D4D4: A5 5E     LDA ram_005E
C - - - - - 0x0014E6 00:D4D6: 49 01     EOR #$01
C - - - - - 0x0014E8 00:D4D8: 85 5E     STA ram_005E
C - - - - - 0x0014EA 00:D4DA: 4C 32 D5  JMP loc_D532
bra_D4DD:
C - - - - - 0x0014ED 00:D4DD: A9 01     LDA #$01
C - - - - - 0x0014EF 00:D4DF: 85 0F     STA ram_000F
C - - - - - 0x0014F1 00:D4E1: A5 D3     LDA ram_00D3
C - - - - - 0x0014F3 00:D4E3: C9 E8     CMP #$E8
C - - - - - 0x0014F5 00:D4E5: 90 03     BCC bra_D4EA
C - - - - - 0x0014F7 00:D4E7: 4C D4 D4  JMP loc_D4D4
bra_D4EA:
C - - - - - 0x0014FA 00:D4EA: A6 D3     LDX ram_00D3
C - - - - - 0x0014FC 00:D4EC: A4 D0     LDY ram_00D0
C - - - - - 0x0014FE 00:D4EE: 20 42 E0  JSR sub_E042
C - - - - - 0x001501 00:D4F1: A0 11     LDY #$11
C - - - - - 0x001503 00:D4F3: B1 00     LDA (ram_0000),Y
C - - - - - 0x001505 00:D4F5: D0 1B     BNE bra_D512
C - - - - - 0x001507 00:D4F7: A6 D3     LDX ram_00D3
C - - - - - 0x001509 00:D4F9: A4 D0     LDY ram_00D0
C - - - - - 0x00150B 00:D4FB: 20 AB E0  JSR sub_E0AB
C - - - - - 0x00150E 00:D4FE: D0 12     BNE bra_D512
C - - - - - 0x001510 00:D500: A5 D3     LDA ram_00D3
C - - - - - 0x001512 00:D502: 29 0F     AND #$0F
C - - - - - 0x001514 00:D504: D0 1F     BNE bra_D525
C - - - - - 0x001516 00:D506: A9 81     LDA #$81
C - - - - - 0x001518 00:D508: 85 0F     STA ram_000F
C - - - - - 0x00151A 00:D50A: A9 02     LDA #$02
C - - - - - 0x00151C 00:D50C: 85 5B     STA ram_005B
C - - - - - 0x00151E 00:D50E: A9 01     LDA #$01
C - - - - - 0x001520 00:D510: 85 5A     STA ram_005A
bra_D512:
C - - - - - 0x001522 00:D512: A5 D3     LDA ram_00D3
C - - - - - 0x001524 00:D514: 29 0F     AND #$0F
C - - - - - 0x001526 00:D516: D0 0D     BNE bra_D525
C - - - - - 0x001528 00:D518: A6 D3     LDX ram_00D3
C - - - - - 0x00152A 00:D51A: A4 D0     LDY ram_00D0
C - - - - - 0x00152C 00:D51C: 20 C7 E0  JSR sub_E0C7
C - - - - - 0x00152F 00:D51F: F0 04     BEQ bra_D525
C - - - - - 0x001531 00:D521: C9 03     CMP #$03
C - - - - - 0x001533 00:D523: D0 AF     BNE bra_D4D4
bra_D525:
C - - - - - 0x001535 00:D525: A6 D3     LDX ram_00D3
C - - - - - 0x001537 00:D527: A5 D0     LDA ram_00D0
C - - - - - 0x001539 00:D529: 29 F0     AND #$F0
C - - - - - 0x00153B 00:D52B: A8        TAY
C - - - - - 0x00153C 00:D52C: 20 61 DA  JSR sub_DA61
C - - - - - 0x00153F 00:D52F: 4C 32 D5  JMP loc_D532



loc_D532:
C D 2 - - - 0x001542 00:D532: A6 C0     LDX ram_00C0
C - - - - - 0x001544 00:D534: A4 C1     LDY ram_00C1
C - - - - - 0x001546 00:D536: A5 0F     LDA ram_000F
C - - - - - 0x001548 00:D538: 60        RTS



sub_D539:
C - - - - - 0x001549 00:D539: A2 58     LDX #< ram_0058
C - - - - - 0x00154B 00:D53B: A0 20     LDY #$20
C - - - - - 0x00154D 00:D53D: 20 34 CD  JSR sub_CD34_clear_00xx
C - - - - - 0x001550 00:D540: A9 00     LDA #$00
C - - - - - 0x001552 00:D542: 85 9B     STA ram_009B
C - - - - - 0x001554 00:D544: 60        RTS



sub_D545:
C - - - - - 0x001555 00:D545: A5 8F     LDA ram_008F
C - - - - - 0x001557 00:D547: F0 15     BEQ bra_D55E_RTS
C - - - - - 0x001559 00:D549: A9 60     LDA #$60
C - - - - - 0x00155B 00:D54B: A0 40     LDY #$40
C - - - - - 0x00155D 00:D54D: 20 A1 D1  JSR sub_D1A1_set_spr_T
C - - - - - 0x001560 00:D550: A9 60     LDA #$60
C - - - - - 0x001562 00:D552: A0 50     LDY #$50
C - - - - - 0x001564 00:D554: 20 A1 D1  JSR sub_D1A1_set_spr_T
C - - - - - 0x001567 00:D557: A9 60     LDA #$60
C - - - - - 0x001569 00:D559: A0 60     LDY #$60
C - - - - - 0x00156B 00:D55B: 20 A1 D1  JSR sub_D1A1_set_spr_T
bra_D55E_RTS:
C - - - - - 0x00156E 00:D55E: 60        RTS



sub_D55F:
C - - - - - 0x00156F 00:D55F: A5 E5     LDA ram_00E5
C - - - - - 0x001571 00:D561: F0 05     BEQ bra_D568
C - - - - - 0x001573 00:D563: A5 9A     LDA ram_009A
C - - - - - 0x001575 00:D565: F0 11     BEQ bra_D578
C - - - - - 0x001577 00:D567: 60        RTS
bra_D568:
C - - - - - 0x001578 00:D568: A5 9B     LDA ram_009B
C - - - - - 0x00157A 00:D56A: 18        CLC
C - - - - - 0x00157B 00:D56B: 69 01     ADC #$01
C - - - - - 0x00157D 00:D56D: 85 9B     STA ram_009B
C - - - - - 0x00157F 00:D56F: C9 03     CMP #$03
C - - - - - 0x001581 00:D571: F0 01     BEQ bra_D574
C - - - - - 0x001583 00:D573: 60        RTS
bra_D574:
C - - - - - 0x001584 00:D574: A9 00     LDA #$00
C - - - - - 0x001586 00:D576: 85 9B     STA ram_009B
bra_D578:
C - - - - - 0x001588 00:D578: A9 60     LDA #< ram_0060
C - - - - - 0x00158A 00:D57A: 85 06     STA ram_0006
C - - - - - 0x00158C 00:D57C: A9 00     LDA #> ram_0060
C - - - - - 0x00158E 00:D57E: 85 07     STA ram_0007
C - - - - - 0x001590 00:D580: A9 40     LDA #< (ram_oam + $40)
C - - - - - 0x001592 00:D582: 85 08     STA ram_0008
C - - - - - 0x001594 00:D584: A9 07     LDA #> (ram_oam + $40)
C - - - - - 0x001596 00:D586: 85 09     STA ram_0009
C - - - - - 0x001598 00:D588: A9 00     LDA #$00
C - - - - - 0x00159A 00:D58A: 85 0D     STA ram_000D
C - - - - - 0x00159C 00:D58C: A5 2B     LDA ram_002B
C - - - - - 0x00159E 00:D58E: 85 49     STA ram_0049
C - - - - - 0x0015A0 00:D590: A9 00     LDA #$00
C - - - - - 0x0015A2 00:D592: 85 E7     STA ram_00E7
bra_D594_loop:
C - - - - - 0x0015A4 00:D594: A2 00     LDX #$00
C - - - - - 0x0015A6 00:D596: A0 00     LDY #$00
bra_D598_loop:
C - - - - - 0x0015A8 00:D598: B1 06     LDA (ram_0006),Y
C - - - - - 0x0015AA 00:D59A: 95 58     STA ram_0058,X
C - - - - - 0x0015AC 00:D59C: C8        INY
C - - - - - 0x0015AD 00:D59D: E8        INX
C - - - - - 0x0015AE 00:D59E: C0 08     CPY #$08
C - - - - - 0x0015B0 00:D5A0: D0 F6     BNE bra_D598_loop
C - - - - - 0x0015B2 00:D5A2: A0 00     LDY #$00
bra_D5A4_loop:
C - - - - - 0x0015B4 00:D5A4: B1 08     LDA (ram_0008),Y
C - - - - - 0x0015B6 00:D5A6: 99 D0 00  STA ram_00D0,Y
C - - - - - 0x0015B9 00:D5A9: C8        INY
C - - - - - 0x0015BA 00:D5AA: C0 10     CPY #$10
C - - - - - 0x0015BC 00:D5AC: D0 F6     BNE bra_D5A4_loop
C - - - - - 0x0015BE 00:D5AE: A5 D3     LDA ram_00D3
C - - - - - 0x0015C0 00:D5B0: 85 C2     STA ram_00C2
C - - - - - 0x0015C2 00:D5B2: A5 D0     LDA ram_00D0
C - - - - - 0x0015C4 00:D5B4: 85 C3     STA ram_00C3
C - - - - - 0x0015C6 00:D5B6: 20 F4 D6  JSR sub_D6F4
C - - - - - 0x0015C9 00:D5B9: 20 79 D6  JSR sub_D679
C - - - - - 0x0015CC 00:D5BC: 20 47 D6  JSR sub_D647
C - - - - - 0x0015CF 00:D5BF: 20 F3 D5  JSR sub_D5F3
C - - - - - 0x0015D2 00:D5C2: A2 00     LDX #$00
C - - - - - 0x0015D4 00:D5C4: A0 00     LDY #$00
bra_D5C6_loop:
C - - - - - 0x0015D6 00:D5C6: B5 58     LDA ram_0058,X
C - - - - - 0x0015D8 00:D5C8: 91 06     STA (ram_0006),Y
C - - - - - 0x0015DA 00:D5CA: C8        INY
C - - - - - 0x0015DB 00:D5CB: E8        INX
C - - - - - 0x0015DC 00:D5CC: C0 08     CPY #$08
C - - - - - 0x0015DE 00:D5CE: D0 F6     BNE bra_D5C6_loop
C - - - - - 0x0015E0 00:D5D0: A0 00     LDY #$00
bra_D5D2_loop:
C - - - - - 0x0015E2 00:D5D2: B9 D0 00  LDA ram_00D0,Y
C - - - - - 0x0015E5 00:D5D5: 91 08     STA (ram_0008),Y
C - - - - - 0x0015E7 00:D5D7: C8        INY
C - - - - - 0x0015E8 00:D5D8: C0 10     CPY #$10
C - - - - - 0x0015EA 00:D5DA: D0 F6     BNE bra_D5D2_loop
C - - - - - 0x0015EC 00:D5DC: A5 06     LDA ram_0006
C - - - - - 0x0015EE 00:D5DE: 18        CLC
C - - - - - 0x0015EF 00:D5DF: 69 08     ADC #$08
C - - - - - 0x0015F1 00:D5E1: 85 06     STA ram_0006
C - - - - - 0x0015F3 00:D5E3: A5 08     LDA ram_0008
C - - - - - 0x0015F5 00:D5E5: 18        CLC
C - - - - - 0x0015F6 00:D5E6: 69 10     ADC #$10
C - - - - - 0x0015F8 00:D5E8: 85 08     STA ram_0008
C - - - - - 0x0015FA 00:D5EA: E6 0D     INC ram_000D
C - - - - - 0x0015FC 00:D5EC: E6 0D     INC ram_000D
C - - - - - 0x0015FE 00:D5EE: C6 49     DEC ram_0049
C - - - - - 0x001600 00:D5F0: D0 A2     BNE bra_D594_loop
C - - - - - 0x001602 00:D5F2: 60        RTS



sub_D5F3:
C - - - - - 0x001603 00:D5F3: A5 5F     LDA ram_005F
C - - - - - 0x001605 00:D5F5: 05 57     ORA ram_0057
C - - - - - 0x001607 00:D5F7: D0 4D     BNE bra_D646_RTS
C - - - - - 0x001609 00:D5F9: A5 50     LDA ram_0050
C - - - - - 0x00160B 00:D5FB: F0 49     BEQ bra_D646_RTS
C - - - - - 0x00160D 00:D5FD: A5 8C     LDA ram_008C
C - - - - - 0x00160F 00:D5FF: D0 45     BNE bra_D646_RTS
C - - - - - 0x001611 00:D601: A5 D3     LDA ram_00D3
C - - - - - 0x001613 00:D603: 38        SEC
C - - - - - 0x001614 00:D604: ED 23 07  SBC ram_spr_X + $20
C - - - - - 0x001617 00:D607: 20 A1 D2  JSR sub_D2A1
C - - - - - 0x00161A 00:D60A: AA        TAX
C - - - - - 0x00161B 00:D60B: A5 D0     LDA ram_00D0
C - - - - - 0x00161D 00:D60D: 38        SEC
C - - - - - 0x00161E 00:D60E: ED 20 07  SBC ram_spr_Y + $20
C - - - - - 0x001621 00:D611: 38        SEC
C - - - - - 0x001622 00:D612: E9 10     SBC #$10
C - - - - - 0x001624 00:D614: 20 A1 D2  JSR sub_D2A1
C - - - - - 0x001627 00:D617: A8        TAY
C - - - - - 0x001628 00:D618: E0 0C     CPX #$0C
C - - - - - 0x00162A 00:D61A: B0 2A     BCS bra_D646_RTS
C - - - - - 0x00162C 00:D61C: C0 08     CPY #$08
C - - - - - 0x00162E 00:D61E: B0 26     BCS bra_D646_RTS
C - - - - - 0x001630 00:D620: A6 D3     LDX ram_00D3
C - - - - - 0x001632 00:D622: A5 D0     LDA ram_00D0
C - - - - - 0x001634 00:D624: 38        SEC
C - - - - - 0x001635 00:D625: E9 08     SBC #$08
C - - - - - 0x001637 00:D627: A8        TAY
C - - - - - 0x001638 00:D628: 20 23 D0  JSR sub_D023
C - - - - - 0x00163B 00:D62B: A9 00     LDA #$00
C - - - - - 0x00163D 00:D62D: 8D 12 07  STA ram_spr_A + $10
C - - - - - 0x001640 00:D630: 8D 16 07  STA ram_spr_A + $14
C - - - - - 0x001643 00:D633: A9 EA     LDA #$EA
C - - - - - 0x001645 00:D635: 20 34 D0  JSR sub_D034
C - - - - - 0x001648 00:D638: A9 01     LDA #$01
C - - - - - 0x00164A 00:D63A: 85 8C     STA ram_008C
C - - - - - 0x00164C 00:D63C: A9 00     LDA #$00
C - - - - - 0x00164E 00:D63E: 85 8D     STA ram_008D
C - - - - - 0x001650 00:D640: 20 B1 F0  JSR sub_F0B1
C - - - - - 0x001653 00:D643: 20 9C C6  JSR sub_C69C
bra_D646_RTS:
C - - - - - 0x001656 00:D646: 60        RTS



sub_D647:
C - - - - - 0x001657 00:D647: A5 5F     LDA ram_005F
C - - - - - 0x001659 00:D649: 05 57     ORA ram_0057
C - - - - - 0x00165B 00:D64B: D0 2B     BNE bra_D678_RTS
C - - - - - 0x00165D 00:D64D: A5 D3     LDA ram_00D3
C - - - - - 0x00165F 00:D64F: 38        SEC
C - - - - - 0x001660 00:D650: ED 23 07  SBC ram_spr_X + $20
C - - - - - 0x001663 00:D653: 20 A1 D2  JSR sub_D2A1
C - - - - - 0x001666 00:D656: AA        TAX
C - - - - - 0x001667 00:D657: A5 D0     LDA ram_00D0
C - - - - - 0x001669 00:D659: 38        SEC
C - - - - - 0x00166A 00:D65A: ED 20 07  SBC ram_spr_Y + $20
C - - - - - 0x00166D 00:D65D: 20 A1 D2  JSR sub_D2A1
C - - - - - 0x001670 00:D660: A8        TAY
C - - - - - 0x001671 00:D661: E0 0A     CPX #$0A
C - - - - - 0x001673 00:D663: B0 13     BCS bra_D678_RTS
C - - - - - 0x001675 00:D665: C0 0A     CPY #$0A
C - - - - - 0x001677 00:D667: B0 0F     BCS bra_D678_RTS
loc_D669:
C D 2 - - - 0x001679 00:D669: A9 02     LDA #$02
C - - - - - 0x00167B 00:D66B: 85 57     STA ram_0057
C - - - - - 0x00167D 00:D66D: A9 03     LDA #$03
C - - - - - 0x00167F 00:D66F: 85 51     STA ram_0051
C - - - - - 0x001681 00:D671: A9 14     LDA #$14
C - - - - - 0x001683 00:D673: 85 55     STA ram_0055
C - - - - - 0x001685 00:D675: 20 E8 F0  JSR sub_F0E8
bra_D678_RTS:
C - - - - - 0x001688 00:D678: 60        RTS



sub_D679:
C - - - - - 0x001689 00:D679: A5 E7     LDA ram_00E7
C - - - - - 0x00168B 00:D67B: 05 5F     ORA ram_005F
C - - - - - 0x00168D 00:D67D: 05 58     ORA ram_0058
C - - - - - 0x00168F 00:D67F: D0 69     BNE bra_D6EA_RTS
C - - - - - 0x001691 00:D681: A9 40     LDA #< (ram_oam + $40)
C - - - - - 0x001693 00:D683: 85 0A     STA ram_000A
C - - - - - 0x001695 00:D685: A9 07     LDA #> (ram_oam + $40)
C - - - - - 0x001697 00:D687: 85 0B     STA ram_000B
C - - - - - 0x001699 00:D689: A9 60     LDA #< ram_0060
C - - - - - 0x00169B 00:D68B: 85 10     STA ram_0010
C - - - - - 0x00169D 00:D68D: A9 00     LDA #> ram_0060
C - - - - - 0x00169F 00:D68F: 85 11     STA ram_0011
C - - - - - 0x0016A1 00:D691: A5 2B     LDA ram_002B
C - - - - - 0x0016A3 00:D693: 85 0C     STA ram_000C
bra_D695_loop:
C - - - - - 0x0016A5 00:D695: A5 0C     LDA ram_000C
C - - - - - 0x0016A7 00:D697: C5 49     CMP ram_0049
C - - - - - 0x0016A9 00:D699: F0 3D     BEQ bra_D6D8
C - - - - - 0x0016AB 00:D69B: A0 07     LDY #$07
C - - - - - 0x0016AD 00:D69D: B1 10     LDA (ram_0010),Y
C - - - - - 0x0016AF 00:D69F: D0 37     BNE bra_D6D8
C - - - - - 0x0016B1 00:D6A1: A0 00     LDY #$00
C - - - - - 0x0016B3 00:D6A3: B1 10     LDA (ram_0010),Y
C - - - - - 0x0016B5 00:D6A5: D0 31     BNE bra_D6D8
C - - - - - 0x0016B7 00:D6A7: A0 03     LDY #$03
C - - - - - 0x0016B9 00:D6A9: B1 0A     LDA (ram_000A),Y
C - - - - - 0x0016BB 00:D6AB: 38        SEC
C - - - - - 0x0016BC 00:D6AC: E5 D3     SBC ram_00D3
C - - - - - 0x0016BE 00:D6AE: 20 A1 D2  JSR sub_D2A1
C - - - - - 0x0016C1 00:D6B1: AA        TAX
C - - - - - 0x0016C2 00:D6B2: A0 00     LDY #$00
C - - - - - 0x0016C4 00:D6B4: B1 0A     LDA (ram_000A),Y
C - - - - - 0x0016C6 00:D6B6: 38        SEC
C - - - - - 0x0016C7 00:D6B7: E5 D0     SBC ram_00D0
C - - - - - 0x0016C9 00:D6B9: 20 A1 D2  JSR sub_D2A1
C - - - - - 0x0016CC 00:D6BC: A8        TAY
C - - - - - 0x0016CD 00:D6BD: E0 0E     CPX #$0E
C - - - - - 0x0016CF 00:D6BF: B0 17     BCS bra_D6D8
C - - - - - 0x0016D1 00:D6C1: C0 0E     CPY #$0E
C - - - - - 0x0016D3 00:D6C3: B0 13     BCS bra_D6D8
C - - - - - 0x0016D5 00:D6C5: A6 C2     LDX ram_00C2
C - - - - - 0x0016D7 00:D6C7: A4 C3     LDY ram_00C3
C - - - - - 0x0016D9 00:D6C9: 20 61 DA  JSR sub_DA61
C - - - - - 0x0016DC 00:D6CC: A6 5A     LDX ram_005A
C - - - - - 0x0016DE 00:D6CE: BD EB D6  LDA tbl_D6EB,X
C - - - - - 0x0016E1 00:D6D1: 85 5A     STA ram_005A
C - - - - - 0x0016E3 00:D6D3: A9 01     LDA #$01
C - - - - - 0x0016E5 00:D6D5: 85 E7     STA ram_00E7
C - - - - - 0x0016E7 00:D6D7: 60        RTS
bra_D6D8:
C - - - - - 0x0016E8 00:D6D8: A5 0A     LDA ram_000A
C - - - - - 0x0016EA 00:D6DA: 18        CLC
C - - - - - 0x0016EB 00:D6DB: 69 10     ADC #$10
C - - - - - 0x0016ED 00:D6DD: 85 0A     STA ram_000A
C - - - - - 0x0016EF 00:D6DF: A5 10     LDA ram_0010
C - - - - - 0x0016F1 00:D6E1: 18        CLC
C - - - - - 0x0016F2 00:D6E2: 69 08     ADC #$08
C - - - - - 0x0016F4 00:D6E4: 85 10     STA ram_0010
C - - - - - 0x0016F6 00:D6E6: C6 0C     DEC ram_000C
C - - - - - 0x0016F8 00:D6E8: D0 AB     BNE bra_D695_loop
bra_D6EA_RTS:
C - - - - - 0x0016FA 00:D6EA: 60        RTS



tbl_D6EB:
- - - - - - 0x0016FB 00:D6EB: 00        .byte $00   ; 00
- D 2 - - - 0x0016FC 00:D6EC: 02        .byte $02   ; 01
- D 2 - - - 0x0016FD 00:D6ED: 01        .byte $01   ; 02
- - - - - - 0x0016FE 00:D6EE: 00        .byte $00   ; 03
- D 2 - - - 0x0016FF 00:D6EF: 08        .byte $08   ; 04
- - - - - - 0x001700 00:D6F0: 00        .byte $00   ; 05
- - - - - - 0x001701 00:D6F1: 00        .byte $00   ; 06
- - - - - - 0x001702 00:D6F2: 00        .byte $00   ; 07
- D 2 - - - 0x001703 00:D6F3: 04        .byte $04   ; 08



sub_D6F4:
C - - - - - 0x001704 00:D6F4: A5 5F     LDA ram_005F
C - - - - - 0x001706 00:D6F6: D0 03     BNE bra_D6FB
C - - - - - 0x001708 00:D6F8: 4C A9 D7  JMP loc_D7A9
bra_D6FB:
C - - - - - 0x00170B 00:D6FB: C9 02     CMP #$02
C - - - - - 0x00170D 00:D6FD: F0 7A     BEQ bra_D779
C - - - - - 0x00170F 00:D6FF: C6 5D     DEC ram_005D
C - - - - - 0x001711 00:D701: F0 4E     BEQ bra_D751
C - - - - - 0x001713 00:D703: A5 5D     LDA ram_005D
C - - - - - 0x001715 00:D705: A2 66     LDX #$66
C - - - - - 0x001717 00:D707: C9 0A     CMP #$0A
C - - - - - 0x001719 00:D709: 90 25     BCC bra_D730
C - - - - - 0x00171B 00:D70B: A2 64     LDX #$64
C - - - - - 0x00171D 00:D70D: C9 14     CMP #$14
C - - - - - 0x00171F 00:D70F: 90 1F     BCC bra_D730
C - - - - - 0x001721 00:D711: A2 60     LDX #$60
C - - - - - 0x001723 00:D713: C9 23     CMP #$23
C - - - - - 0x001725 00:D715: 90 19     BCC bra_D730
C - - - - - 0x001727 00:D717: A2 00     LDX #$00
C - - - - - 0x001729 00:D719: C9 28     CMP #$28
C - - - - - 0x00172B 00:D71B: 90 0E     BCC bra_D72B
C - - - - - 0x00172D 00:D71D: A2 02     LDX #$02
C - - - - - 0x00172F 00:D71F: C9 2D     CMP #$2D
C - - - - - 0x001731 00:D721: 90 08     BCC bra_D72B
C - - - - - 0x001733 00:D723: A2 06     LDX #$06
C - - - - - 0x001735 00:D725: C9 63     CMP #$63
C - - - - - 0x001737 00:D727: 90 02     BCC bra_D72B
C - - - - - 0x001739 00:D729: A2 60     LDX #$60
bra_D72B:
C - - - - - 0x00173B 00:D72B: 8A        TXA
C - - - - - 0x00173C 00:D72C: 20 45 DA  JSR sub_DA45
C - - - - - 0x00173F 00:D72F: 60        RTS
bra_D730:
C - - - - - 0x001740 00:D730: A5 E5     LDA ram_00E5
C - - - - - 0x001742 00:D732: F0 0D     BEQ bra_D741
C - - - - - 0x001744 00:D734: A9 60     LDA #$60
C - - - - - 0x001746 00:D736: 20 45 DA  JSR sub_DA45
C - - - - - 0x001749 00:D739: A2 F8     LDX #$F8
C - - - - - 0x00174B 00:D73B: A0 F8     LDY #$F8
C - - - - - 0x00174D 00:D73D: 20 61 DA  JSR sub_DA61
C - - - - - 0x001750 00:D740: 60        RTS
bra_D741:
C - - - - - 0x001751 00:D741: 8A        TXA
C - - - - - 0x001752 00:D742: 20 45 DA  JSR sub_DA45
C - - - - - 0x001755 00:D745: A6 0D     LDX ram_000D
C - - - - - 0x001757 00:D747: B5 C6     LDA ram_00C6,X
C - - - - - 0x001759 00:D749: A8        TAY
C - - - - - 0x00175A 00:D74A: B5 C7     LDA ram_00C7,X
C - - - - - 0x00175C 00:D74C: AA        TAX
C - - - - - 0x00175D 00:D74D: 20 61 DA  JSR sub_DA61
C - - - - - 0x001760 00:D750: 60        RTS
bra_D751:
C - - - - - 0x001761 00:D751: A5 E5     LDA ram_00E5
C - - - - - 0x001763 00:D753: F0 05     BEQ bra_D75A
C - - - - - 0x001765 00:D755: E6 E5     INC ram_00E5
C - - - - - 0x001767 00:D757: 4C 78 D7  JMP loc_D778_RTS
bra_D75A:
C - - - - - 0x00176A 00:D75A: AD 35 E9  LDA tbl_E935    ; bzk optimize, loading 86 from address instead of immediate for some reason
C - - - - - 0x00176D 00:D75D: 20 45 DA  JSR sub_DA45
C - - - - - 0x001770 00:D760: A9 00     LDA #$00
C - - - - - 0x001772 00:D762: 85 58     STA ram_0058
C - - - - - 0x001774 00:D764: A9 00     LDA #$00
C - - - - - 0x001776 00:D766: 85 59     STA ram_0059
C - - - - - 0x001778 00:D768: A9 04     LDA #$04
C - - - - - 0x00177A 00:D76A: 85 5A     STA ram_005A
C - - - - - 0x00177C 00:D76C: A9 00     LDA #$00
C - - - - - 0x00177E 00:D76E: 85 5B     STA ram_005B
C - - - - - 0x001780 00:D770: A9 00     LDA #$00
C - - - - - 0x001782 00:D772: 85 5C     STA ram_005C
C - - - - - 0x001784 00:D774: A9 00     LDA #$00
C - - - - - 0x001786 00:D776: 85 5F     STA ram_005F
bra_D778_RTS:
loc_D778_RTS:
C D 2 - - - 0x001788 00:D778: 60        RTS



bra_D779:   ; bzk
C - - - - - 0x001789 00:D779: A5 5D     LDA ram_005D
C - - - - - 0x00178B 00:D77B: F0 05     BEQ bra_D782
C - - - - - 0x00178D 00:D77D: C6 5D     DEC ram_005D
C - - - - - 0x00178F 00:D77F: 4C 94 D7  JMP loc_D794
bra_D782:
C - - - - - 0x001792 00:D782: A6 59     LDX ram_0059
C - - - - - 0x001794 00:D784: E0 12     CPX #$12
C - - - - - 0x001796 00:D786: F0 02     BEQ bra_D78A
C - - - - - 0x001798 00:D788: E6 59     INC ram_0059
bra_D78A:
C - - - - - 0x00179A 00:D78A: A5 D0     LDA ram_00D0
C - - - - - 0x00179C 00:D78C: 20 AB D2  JSR sub_D2AB
C - - - - - 0x00179F 00:D78F: A6 D3     LDX ram_00D3
C - - - - - 0x0017A1 00:D791: 20 61 DA  JSR sub_DA61
loc_D794:
C D 2 - - - 0x0017A4 00:D794: A9 6C     LDA #$6C
C - - - - - 0x0017A6 00:D796: 20 45 DA  JSR sub_DA45
C - - - - - 0x0017A9 00:D799: A5 D0     LDA ram_00D0
C - - - - - 0x0017AB 00:D79B: C9 D8     CMP #$D8
C - - - - - 0x0017AD 00:D79D: 90 09     BCC bra_D7A8_RTS
C - - - - - 0x0017AF 00:D79F: A5 59     LDA ram_0059
C - - - - - 0x0017B1 00:D7A1: C9 0B     CMP #$0B
C - - - - - 0x0017B3 00:D7A3: 90 03     BCC bra_D7A8_RTS
C - - - - - 0x0017B5 00:D7A5: 4C 40 D8  JMP loc_D840
bra_D7A8_RTS:
C - - - - - 0x0017B8 00:D7A8: 60        RTS



loc_D7A9:
C D 2 - - - 0x0017B9 00:D7A9: A5 57     LDA ram_0057
C - - - - - 0x0017BB 00:D7AB: D0 CB     BNE bra_D778_RTS
C - - - - - 0x0017BD 00:D7AD: A9 00     LDA #$00
C - - - - - 0x0017BF 00:D7AF: 85 48     STA ram_0048
C - - - - - 0x0017C1 00:D7B1: A6 D3     LDX ram_00D3
C - - - - - 0x0017C3 00:D7B3: A4 D0     LDY ram_00D0
C - - - - - 0x0017C5 00:D7B5: 86 4A     STX ram_004A
C - - - - - 0x0017C7 00:D7B7: 84 4B     STY ram_004B
C - - - - - 0x0017C9 00:D7B9: A5 58     LDA ram_0058
C - - - - - 0x0017CB 00:D7BB: D0 6C     BNE bra_D829
C - - - - - 0x0017CD 00:D7BD: C0 D0     CPY #$D0
C - - - - - 0x0017CF 00:D7BF: 90 07     BCC bra_D7C8
- - - - - - 0x0017D1 00:D7C1: C0 E0     CPY #$E0
- - - - - - 0x0017D3 00:D7C3: B0 03     BCS bra_D7C8
- - - - - - 0x0017D5 00:D7C5: 4C 46 D8  JMP loc_D846
bra_D7C8:
C - - - - - 0x0017D8 00:D7C8: 20 BC D2  JSR sub_D2BC
C - - - - - 0x0017DB 00:D7CB: 29 0F     AND #$0F
C - - - - - 0x0017DD 00:D7CD: F0 4C     BEQ bra_D81B
C - - - - - 0x0017DF 00:D7CF: 48        PHA
C - - - - - 0x0017E0 00:D7D0: 85 5A     STA ram_005A
C - - - - - 0x0017E2 00:D7D2: C9 03     CMP #$03
C - - - - - 0x0017E4 00:D7D4: 90 39     BCC bra_D80F
C - - - - - 0x0017E6 00:D7D6: A9 00     LDA #$00
C - - - - - 0x0017E8 00:D7D8: 85 5B     STA ram_005B
C - - - - - 0x0017EA 00:D7DA: A6 D3     LDX ram_00D3
C - - - - - 0x0017EC 00:D7DC: A4 D0     LDY ram_00D0
C - - - - - 0x0017EE 00:D7DE: 20 7B E0  JSR sub_E07B
C - - - - - 0x0017F1 00:D7E1: C9 03     CMP #$03
C - - - - - 0x0017F3 00:D7E3: D0 23     BNE bra_D808
C - - - - - 0x0017F5 00:D7E5: A6 D3     LDX ram_00D3
C - - - - - 0x0017F7 00:D7E7: A4 D0     LDY ram_00D0
C - - - - - 0x0017F9 00:D7E9: 20 BF E0  JSR sub_E0BF
C - - - - - 0x0017FC 00:D7EC: C9 03     CMP #$03
C - - - - - 0x0017FE 00:D7EE: D0 0B     BNE bra_D7FB
C - - - - - 0x001800 00:D7F0: A6 D3     LDX ram_00D3
C - - - - - 0x001802 00:D7F2: A4 D0     LDY ram_00D0
C - - - - - 0x001804 00:D7F4: 20 C7 E0  JSR sub_E0C7
C - - - - - 0x001807 00:D7F7: C9 03     CMP #$03
C - - - - - 0x001809 00:D7F9: F0 0D     BEQ bra_D808
bra_D7FB:
C - - - - - 0x00180B 00:D7FB: A5 D3     LDA ram_00D3
C - - - - - 0x00180D 00:D7FD: 18        CLC
C - - - - - 0x00180E 00:D7FE: 69 08     ADC #$08
C - - - - - 0x001810 00:D800: 29 F0     AND #$F0
C - - - - - 0x001812 00:D802: AA        TAX
C - - - - - 0x001813 00:D803: A4 D0     LDY ram_00D0
C - - - - - 0x001815 00:D805: 20 61 DA  JSR sub_DA61
bra_D808:
C - - - - - 0x001818 00:D808: A6 D3     LDX ram_00D3
C - - - - - 0x00181A 00:D80A: A4 D0     LDY ram_00D0
C - - - - - 0x00181C 00:D80C: 4C 17 D8  JMP loc_D817
bra_D80F:
C - - - - - 0x00181F 00:D80F: A5 5B     LDA ram_005B
C - - - - - 0x001821 00:D811: C9 02     CMP #$02
C - - - - - 0x001823 00:D813: F0 02     BEQ bra_D817
C - - - - - 0x001825 00:D815: E6 5B     INC ram_005B
bra_D817:
loc_D817:
C D 2 - - - 0x001827 00:D817: 68        PLA
C - - - - - 0x001828 00:D818: 4C 5C D8  JMP loc_D85C
bra_D81B:
C - - - - - 0x00182B 00:D81B: A9 00     LDA #$00
C - - - - - 0x00182D 00:D81D: 85 5B     STA ram_005B
C - - - - - 0x00182F 00:D81F: A5 D1     LDA ram_00D1
C - - - - - 0x001831 00:D821: 29 F8     AND #$F8
C - - - - - 0x001833 00:D823: 18        CLC
C - - - - - 0x001834 00:D824: 69 06     ADC #$06
C - - - - - 0x001836 00:D826: 4C 9C D8  JMP loc_D89C
bra_D829:
C - - - - - 0x001839 00:D829: A6 59     LDX ram_0059
C - - - - - 0x00183B 00:D82B: E0 12     CPX #$12
C - - - - - 0x00183D 00:D82D: F0 02     BEQ bra_D831
C - - - - - 0x00183F 00:D82F: E6 59     INC ram_0059
bra_D831:
C - - - - - 0x001841 00:D831: A5 D0     LDA ram_00D0
C - - - - - 0x001843 00:D833: 20 AB D2  JSR sub_D2AB
C - - - - - 0x001846 00:D836: A6 D3     LDX ram_00D3
C - - - - - 0x001848 00:D838: C0 D0     CPY #$D0
C - - - - - 0x00184A 00:D83A: 90 1A     BCC bra_D856
C - - - - - 0x00184C 00:D83C: C0 E0     CPY #$E0
C - - - - - 0x00184E 00:D83E: B0 16     BCS bra_D856
loc_D840:
C D 2 - - - 0x001850 00:D840: A5 59     LDA ram_0059
C - - - - - 0x001852 00:D842: C9 0F     CMP #$0F
C - - - - - 0x001854 00:D844: 90 0F     BCC bra_D855_RTS
sub_D846:
loc_D846:
C - - - - - 0x001856 00:D846: A9 01     LDA #$01
C - - - - - 0x001858 00:D848: 85 5F     STA ram_005F
C - - - - - 0x00185A 00:D84A: A9 32     LDA #$32
C - - - - - 0x00185C 00:D84C: 85 5D     STA ram_005D
C - - - - - 0x00185E 00:D84E: A6 D3     LDX ram_00D3
C - - - - - 0x001860 00:D850: A0 D8     LDY #$D8
C - - - - - 0x001862 00:D852: 20 61 DA  JSR sub_DA61
bra_D855_RTS:
C - - - - - 0x001865 00:D855: 60        RTS
bra_D856:
C - - - - - 0x001866 00:D856: A9 01     LDA #$01
C - - - - - 0x001868 00:D858: 85 48     STA ram_0048
C - - - - - 0x00186A 00:D85A: A5 5A     LDA ram_005A
loc_D85C:
C D 2 - - - 0x00186C 00:D85C: 85 44     STA ram_0044
C - - - - - 0x00186E 00:D85E: A5 D1     LDA ram_00D1
C - - - - - 0x001870 00:D860: 85 45     STA ram_0045
C - - - - - 0x001872 00:D862: A5 5A     LDA ram_005A
C - - - - - 0x001874 00:D864: 85 46     STA ram_0046
C - - - - - 0x001876 00:D866: A9 02     LDA #$02
C - - - - - 0x001878 00:D868: 85 47     STA ram_0047
C - - - - - 0x00187A 00:D86A: A5 58     LDA ram_0058
C - - - - - 0x00187C 00:D86C: F0 04     BEQ bra_D872
C - - - - - 0x00187E 00:D86E: A5 5B     LDA ram_005B
C - - - - - 0x001880 00:D870: 85 47     STA ram_0047
bra_D872:
C - - - - - 0x001882 00:D872: 20 D6 E0  JSR sub_E0D6
C - - - - - 0x001885 00:D875: A5 45     LDA ram_0045
C - - - - - 0x001887 00:D877: 85 D1     STA ram_00D1
C - - - - - 0x001889 00:D879: A5 46     LDA ram_0046
C - - - - - 0x00188B 00:D87B: 85 5A     STA ram_005A
C - - - - - 0x00188D 00:D87D: 20 61 DA  JSR sub_DA61
C - - - - - 0x001890 00:D880: A5 58     LDA ram_0058
C - - - - - 0x001892 00:D882: F0 09     BEQ bra_D88D
C - - - - - 0x001894 00:D884: A5 D1     LDA ram_00D1
C - - - - - 0x001896 00:D886: 29 FB     AND #$FB
C - - - - - 0x001898 00:D888: 09 02     ORA #$02
C - - - - - 0x00189A 00:D88A: 4C 9C D8  JMP loc_D89C    ; bzk optimize, BNE
bra_D88D:
C - - - - - 0x00189D 00:D88D: A5 D1     LDA ram_00D1
C - - - - - 0x00189F 00:D88F: 18        CLC
C - - - - - 0x0018A0 00:D890: 69 02     ADC #$02
C - - - - - 0x0018A2 00:D892: 29 06     AND #$06
C - - - - - 0x0018A4 00:D894: 85 44     STA ram_0044
C - - - - - 0x0018A6 00:D896: A5 D1     LDA ram_00D1
C - - - - - 0x0018A8 00:D898: 29 F8     AND #$F8
C - - - - - 0x0018AA 00:D89A: 05 44     ORA ram_0044
loc_D89C:
C D 2 - - - 0x0018AC 00:D89C: 20 45 DA  JSR sub_DA45
C - - - - - 0x0018AF 00:D89F: 20 AC D8  JSR sub_D8AC
C - - - - - 0x0018B2 00:D8A2: 20 22 D9  JSR sub_D922
C - - - - - 0x0018B5 00:D8A5: 20 DD D9  JSR sub_D9DD
C - - - - - 0x0018B8 00:D8A8: 20 1A DA  JSR sub_DA1A
C - - - - - 0x0018BB 00:D8AB: 60        RTS



sub_D8AC:
C - - - - - 0x0018BC 00:D8AC: A5 58     LDA ram_0058
C - - - - - 0x0018BE 00:D8AE: D0 33     BNE bra_D8E3_RTS
C - - - - - 0x0018C0 00:D8B0: A6 D3     LDX ram_00D3
C - - - - - 0x0018C2 00:D8B2: A4 D0     LDY ram_00D0
C - - - - - 0x0018C4 00:D8B4: 20 42 E0  JSR sub_E042
C - - - - - 0x0018C7 00:D8B7: F0 2B     BEQ bra_D8E4
C - - - - - 0x0018C9 00:D8B9: C9 03     CMP #$03
C - - - - - 0x0018CB 00:D8BB: F0 26     BEQ bra_D8E3_RTS
C - - - - - 0x0018CD 00:D8BD: A6 D3     LDX ram_00D3
C - - - - - 0x0018CF 00:D8BF: A4 D0     LDY ram_00D0
C - - - - - 0x0018D1 00:D8C1: 20 8F E0  JSR sub_E08F
C - - - - - 0x0018D4 00:D8C4: C9 03     CMP #$03
C - - - - - 0x0018D6 00:D8C6: F0 11     BEQ bra_D8D9
C - - - - - 0x0018D8 00:D8C8: A5 5A     LDA ram_005A
C - - - - - 0x0018DA 00:D8CA: C9 04     CMP #$04
C - - - - - 0x0018DC 00:D8CC: D0 0B     BNE bra_D8D9
- - - - - - 0x0018DE 00:D8CE: A6 4A     LDX ram_004A
- - - - - - 0x0018E0 00:D8D0: A5 D0     LDA ram_00D0
- - - - - - 0x0018E2 00:D8D2: 29 F8     AND #$F8
- - - - - - 0x0018E4 00:D8D4: A8        TAY
- - - - - - 0x0018E5 00:D8D5: 20 61 DA  JSR sub_DA61
- - - - - - 0x0018E8 00:D8D8: 60        RTS
bra_D8D9:
C - - - - - 0x0018E9 00:D8D9: A6 D3     LDX ram_00D3
C - - - - - 0x0018EB 00:D8DB: A5 D0     LDA ram_00D0
C - - - - - 0x0018ED 00:D8DD: 29 F8     AND #$F8
C - - - - - 0x0018EF 00:D8DF: A8        TAY
C - - - - - 0x0018F0 00:D8E0: 20 61 DA  JSR sub_DA61
bra_D8E3_RTS:
C - - - - - 0x0018F3 00:D8E3: 60        RTS
bra_D8E4:
C - - - - - 0x0018F4 00:D8E4: A6 D3     LDX ram_00D3
C - - - - - 0x0018F6 00:D8E6: A4 D0     LDY ram_00D0
C - - - - - 0x0018F8 00:D8E8: 20 8F E0  JSR sub_E08F
C - - - - - 0x0018FB 00:D8EB: C9 03     CMP #$03
C - - - - - 0x0018FD 00:D8ED: F0 F4     BEQ bra_D8E3_RTS
C - - - - - 0x0018FF 00:D8EF: A5 5A     LDA ram_005A
C - - - - - 0x001901 00:D8F1: C9 03     CMP #$03
C - - - - - 0x001903 00:D8F3: B0 14     BCS bra_D909
C - - - - - 0x001905 00:D8F5: A6 D3     LDX ram_00D3
C - - - - - 0x001907 00:D8F7: A4 D0     LDY ram_00D0
C - - - - - 0x001909 00:D8F9: 20 8F E0  JSR sub_E08F
C - - - - - 0x00190C 00:D8FC: F0 0B     BEQ bra_D909
- - - - - - 0x00190E 00:D8FE: C9 03     CMP #$03
- - - - - - 0x001910 00:D900: F0 07     BEQ bra_D909
- - - - - - 0x001912 00:D902: A6 4A     LDX ram_004A
- - - - - - 0x001914 00:D904: A4 4B     LDY ram_004B
- - - - - - 0x001916 00:D906: 4C 61 DA  JMP loc_DA61
bra_D909:
C - - - - - 0x001919 00:D909: A5 5B     LDA ram_005B
C - - - - - 0x00191B 00:D90B: C9 02     CMP #$02
C - - - - - 0x00191D 00:D90D: B0 0A     BCS bra_D919
C - - - - - 0x00191F 00:D90F: A5 5A     LDA ram_005A
C - - - - - 0x001921 00:D911: C9 08     CMP #$08
C - - - - - 0x001923 00:D913: F0 04     BEQ bra_D919
C - - - - - 0x001925 00:D915: A9 04     LDA #$04
C - - - - - 0x001927 00:D917: 85 5A     STA ram_005A
bra_D919:
C - - - - - 0x001929 00:D919: A9 01     LDA #$01
C - - - - - 0x00192B 00:D91B: 85 58     STA ram_0058
C - - - - - 0x00192D 00:D91D: A9 0B     LDA #$0B
C - - - - - 0x00192F 00:D91F: 85 59     STA ram_0059
C - - - - - 0x001931 00:D921: 60        RTS



sub_D922:
C - - - - - 0x001932 00:D922: A5 58     LDA ram_0058
C - - - - - 0x001934 00:D924: F0 5E     BEQ bra_D984_RTS
C - - - - - 0x001936 00:D926: A6 D3     LDX ram_00D3
C - - - - - 0x001938 00:D928: A4 D0     LDY ram_00D0
C - - - - - 0x00193A 00:D92A: 20 8F E0  JSR sub_E08F
C - - - - - 0x00193D 00:D92D: F0 28     BEQ bra_D957
C - - - - - 0x00193F 00:D92F: C9 03     CMP #$03
C - - - - - 0x001941 00:D931: F0 24     BEQ bra_D957
C - - - - - 0x001943 00:D933: A6 4A     LDX ram_004A
C - - - - - 0x001945 00:D935: A4 4B     LDY ram_004B
C - - - - - 0x001947 00:D937: 20 61 DA  JSR sub_DA61
C - - - - - 0x00194A 00:D93A: A6 D3     LDX ram_00D3
C - - - - - 0x00194C 00:D93C: A4 D0     LDY ram_00D0
C - - - - - 0x00194E 00:D93E: 20 42 E0  JSR sub_E042
C - - - - - 0x001951 00:D941: D0 27     BNE bra_D96A
C - - - - - 0x001953 00:D943: A5 D1     LDA ram_00D1
C - - - - - 0x001955 00:D945: 29 FB     AND #$FB
C - - - - - 0x001957 00:D947: 09 02     ORA #$02
C - - - - - 0x001959 00:D949: 20 45 DA  JSR sub_DA45
C - - - - - 0x00195C 00:D94C: A9 01     LDA #$01
C - - - - - 0x00195E 00:D94E: 85 58     STA ram_0058
C - - - - - 0x001960 00:D950: A9 0B     LDA #$0B
C - - - - - 0x001962 00:D952: 85 59     STA ram_0059
C - - - - - 0x001964 00:D954: 4C 80 D9  JMP loc_D980
bra_D957:
C - - - - - 0x001967 00:D957: A6 D3     LDX ram_00D3
C - - - - - 0x001969 00:D959: A4 D0     LDY ram_00D0
C - - - - - 0x00196B 00:D95B: 20 42 E0  JSR sub_E042
C - - - - - 0x00196E 00:D95E: F0 24     BEQ bra_D984_RTS
C - - - - - 0x001970 00:D960: C9 07     CMP #$07
C - - - - - 0x001972 00:D962: F0 21     BEQ bra_D985
C - - - - - 0x001974 00:D964: A5 59     LDA ram_0059
C - - - - - 0x001976 00:D966: C9 0B     CMP #$0B
C - - - - - 0x001978 00:D968: 90 0A     BCC bra_D974
bra_D96A:
C - - - - - 0x00197A 00:D96A: A6 D3     LDX ram_00D3
C - - - - - 0x00197C 00:D96C: A5 D0     LDA ram_00D0
C - - - - - 0x00197E 00:D96E: 29 F8     AND #$F8
C - - - - - 0x001980 00:D970: A8        TAY
C - - - - - 0x001981 00:D971: 20 61 DA  JSR sub_DA61
bra_D974:
C - - - - - 0x001984 00:D974: A9 00     LDA #$00
C - - - - - 0x001986 00:D976: 85 58     STA ram_0058
C - - - - - 0x001988 00:D978: 20 BC D2  JSR sub_D2BC
C - - - - - 0x00198B 00:D97B: 29 80     AND #$80
C - - - - - 0x00198D 00:D97D: F0 01     BEQ bra_D980
C - - - - - 0x00198F 00:D97F: 60        RTS
bra_D980:
loc_D980:
C D 2 - - - 0x001990 00:D980: A9 00     LDA #$00
C - - - - - 0x001992 00:D982: 85 5B     STA ram_005B
bra_D984_RTS:
C - - - - - 0x001994 00:D984: 60        RTS
bra_D985:
C - - - - - 0x001995 00:D985: A6 D3     LDX ram_00D3
C - - - - - 0x001997 00:D987: A5 D0     LDA ram_00D0
C - - - - - 0x001999 00:D989: 29 F0     AND #$F0
C - - - - - 0x00199B 00:D98B: A8        TAY
C - - - - - 0x00199C 00:D98C: 20 61 DA  JSR sub_DA61
C - - - - - 0x00199F 00:D98F: A5 D3     LDA ram_00D3
C - - - - - 0x0019A1 00:D991: 85 28     STA ram_0028
C - - - - - 0x0019A3 00:D993: A5 D0     LDA ram_00D0
C - - - - - 0x0019A5 00:D995: 85 29     STA ram_0029
C - - - - - 0x0019A7 00:D997: 20 3B D2  JSR sub_D23B
C - - - - - 0x0019AA 00:D99A: D0 37     BNE bra_D9D3_RTS
C - - - - - 0x0019AC 00:D99C: A2 00     LDX #$00
C - - - - - 0x0019AE 00:D99E: 20 BC D2  JSR sub_D2BC
C - - - - - 0x0019B1 00:D9A1: 29 02     AND #$02
C - - - - - 0x0019B3 00:D9A3: F0 08     BEQ bra_D9AD
C - - - - - 0x0019B5 00:D9A5: 20 D4 D9  JSR sub_D9D4
C - - - - - 0x0019B8 00:D9A8: A2 02     LDX #$02
C - - - - - 0x0019BA 00:D9AA: 4C B9 D9  JMP loc_D9B9
bra_D9AD:
C - - - - - 0x0019BD 00:D9AD: 20 BC D2  JSR sub_D2BC
C - - - - - 0x0019C0 00:D9B0: 29 01     AND #$01
C - - - - - 0x0019C2 00:D9B2: F0 05     BEQ bra_D9B9
C - - - - - 0x0019C4 00:D9B4: 20 D4 D9  JSR sub_D9D4
C - - - - - 0x0019C7 00:D9B7: A2 01     LDX #$01
bra_D9B9:
loc_D9B9:
C D 2 - - - 0x0019C9 00:D9B9: 86 5A     STX ram_005A
C - - - - - 0x0019CB 00:D9BB: A2 03     LDX #$03
C - - - - - 0x0019CD 00:D9BD: 20 BC D2  JSR sub_D2BC
C - - - - - 0x0019D0 00:D9C0: 29 80     AND #$80
C - - - - - 0x0019D2 00:D9C2: F0 02     BEQ bra_D9C6
C - - - - - 0x0019D4 00:D9C4: A2 00     LDX #$00
bra_D9C6:
C - - - - - 0x0019D6 00:D9C6: 86 59     STX ram_0059
C - - - - - 0x0019D8 00:D9C8: A6 D3     LDX ram_00D3
C - - - - - 0x0019DA 00:D9CA: A5 D0     LDA ram_00D0
C - - - - - 0x0019DC 00:D9CC: 18        CLC
C - - - - - 0x0019DD 00:D9CD: 69 04     ADC #$04
C - - - - - 0x0019DF 00:D9CF: A8        TAY
C - - - - - 0x0019E0 00:D9D0: 20 61 DA  JSR sub_DA61
bra_D9D3_RTS:
C - - - - - 0x0019E3 00:D9D3: 60        RTS



sub_D9D4:
C - - - - - 0x0019E4 00:D9D4: A5 5B     LDA ram_005B
C - - - - - 0x0019E6 00:D9D6: D0 04     BNE bra_D9DC_RTS
C - - - - - 0x0019E8 00:D9D8: A9 01     LDA #$01
C - - - - - 0x0019EA 00:D9DA: 85 5B     STA ram_005B
bra_D9DC_RTS:
C - - - - - 0x0019EC 00:D9DC: 60        RTS



sub_D9DD:
C - - - - - 0x0019ED 00:D9DD: A5 58     LDA ram_0058
C - - - - - 0x0019EF 00:D9DF: D0 38     BNE bra_DA19_RTS
C - - - - - 0x0019F1 00:D9E1: A6 D3     LDX ram_00D3
C - - - - - 0x0019F3 00:D9E3: A4 D0     LDY ram_00D0
C - - - - - 0x0019F5 00:D9E5: 20 8F E0  JSR sub_E08F
C - - - - - 0x0019F8 00:D9E8: F0 2F     BEQ bra_DA19_RTS
C - - - - - 0x0019FA 00:D9EA: C9 03     CMP #$03
C - - - - - 0x0019FC 00:D9EC: F0 2B     BEQ bra_DA19_RTS
C - - - - - 0x0019FE 00:D9EE: A6 4A     LDX ram_004A
C - - - - - 0x001A00 00:D9F0: A4 4B     LDY ram_004B
C - - - - - 0x001A02 00:D9F2: 20 61 DA  JSR sub_DA61
C - - - - - 0x001A05 00:D9F5: A5 5E     LDA ram_005E
C - - - - - 0x001A07 00:D9F7: 49 01     EOR #$01
C - - - - - 0x001A09 00:D9F9: 85 5E     STA ram_005E
C - - - - - 0x001A0B 00:D9FB: A6 D3     LDX ram_00D3
C - - - - - 0x001A0D 00:D9FD: A4 D0     LDY ram_00D0
C - - - - - 0x001A0F 00:D9FF: 20 42 E0  JSR sub_E042
C - - - - - 0x001A12 00:DA02: D0 15     BNE bra_DA19_RTS
- - - - - - 0x001A14 00:DA04: A5 D1     LDA ram_00D1
- - - - - - 0x001A16 00:DA06: 29 FB     AND #$FB
- - - - - - 0x001A18 00:DA08: 09 02     ORA #$02
- - - - - - 0x001A1A 00:DA0A: 20 45 DA  JSR sub_DA45
- - - - - - 0x001A1D 00:DA0D: A9 01     LDA #$01
- - - - - - 0x001A1F 00:DA0F: 85 58     STA ram_0058
- - - - - - 0x001A21 00:DA11: A9 0B     LDA #$0B
- - - - - - 0x001A23 00:DA13: 85 59     STA ram_0059
- - - - - - 0x001A25 00:DA15: A9 00     LDA #$00
- - - - - - 0x001A27 00:DA17: 85 5B     STA ram_005B
bra_DA19_RTS:
C - - - - - 0x001A29 00:DA19: 60        RTS



sub_DA1A:
C - - - - - 0x001A2A 00:DA1A: A5 58     LDA ram_0058
C - - - - - 0x001A2C 00:DA1C: D0 26     BNE bra_DA44_RTS
C - - - - - 0x001A2E 00:DA1E: 20 BC D2  JSR sub_D2BC
C - - - - - 0x001A31 00:DA21: 29 80     AND #$80
C - - - - - 0x001A33 00:DA23: F0 1F     BEQ bra_DA44_RTS
C - - - - - 0x001A35 00:DA25: A6 D3     LDX ram_00D3
C - - - - - 0x001A37 00:DA27: A4 D0     LDY ram_00D0
C - - - - - 0x001A39 00:DA29: 20 42 E0  JSR sub_E042
C - - - - - 0x001A3C 00:DA2C: C9 01     CMP #$01
C - - - - - 0x001A3E 00:DA2E: F0 08     BEQ bra_DA38
C - - - - - 0x001A40 00:DA30: C9 02     CMP #$02
C - - - - - 0x001A42 00:DA32: F0 04     BEQ bra_DA38
C - - - - - 0x001A44 00:DA34: C9 07     CMP #$07
C - - - - - 0x001A46 00:DA36: D0 0C     BNE bra_DA44_RTS
bra_DA38:
C - - - - - 0x001A48 00:DA38: A9 01     LDA #$01
C - - - - - 0x001A4A 00:DA3A: 85 58     STA ram_0058
C - - - - - 0x001A4C 00:DA3C: A9 03     LDA #$03
C - - - - - 0x001A4E 00:DA3E: 85 59     STA ram_0059
C - - - - - 0x001A50 00:DA40: A9 01     LDA #$01    ; bzk optimize, loading same A = 01 a bit higher
C - - - - - 0x001A52 00:DA42: 85 48     STA ram_0048
bra_DA44_RTS:
C - - - - - 0x001A54 00:DA44: 60        RTS



sub_DA45:
C - - - - - 0x001A55 00:DA45: 48        PHA
C - - - - - 0x001A56 00:DA46: A5 8F     LDA ram_008F
C - - - - - 0x001A58 00:DA48: F0 06     BEQ bra_DA50
C - - - - - 0x001A5A 00:DA4A: 68        PLA
C - - - - - 0x001A5B 00:DA4B: A9 60     LDA #$60
C - - - - - 0x001A5D 00:DA4D: 4C 51 DA  JMP loc_DA51    ; bzk optimize, BNE
bra_DA50:
C - - - - - 0x001A60 00:DA50: 68        PLA
loc_DA51:
C D 2 - - - 0x001A61 00:DA51: AA        TAX
C - - - - - 0x001A62 00:DA52: 86 D1     STX ram_00D1
C - - - - - 0x001A64 00:DA54: E8        INX
C - - - - - 0x001A65 00:DA55: 86 D5     STX ram_00D5
C - - - - - 0x001A67 00:DA57: 18        CLC
C - - - - - 0x001A68 00:DA58: 69 10     ADC #$10
C - - - - - 0x001A6A 00:DA5A: 85 DD     STA ram_00DD
C - - - - - 0x001A6C 00:DA5C: AA        TAX
C - - - - - 0x001A6D 00:DA5D: E8        INX
C - - - - - 0x001A6E 00:DA5E: 86 D9     STX ram_00D9
C - - - - - 0x001A70 00:DA60: 60        RTS



sub_DA61:
loc_DA61:
C - - - - - 0x001A71 00:DA61: 86 D3     STX ram_00D3
C - - - - - 0x001A73 00:DA63: 86 DF     STX ram_00DF
C - - - - - 0x001A75 00:DA65: 8A        TXA
C - - - - - 0x001A76 00:DA66: 18        CLC
C - - - - - 0x001A77 00:DA67: 69 08     ADC #$08
C - - - - - 0x001A79 00:DA69: 85 D7     STA ram_00D7
C - - - - - 0x001A7B 00:DA6B: 85 DB     STA ram_00DB
C - - - - - 0x001A7D 00:DA6D: 84 D0     STY ram_00D0
C - - - - - 0x001A7F 00:DA6F: 84 D4     STY ram_00D4
C - - - - - 0x001A81 00:DA71: 98        TYA
C - - - - - 0x001A82 00:DA72: 18        CLC
C - - - - - 0x001A83 00:DA73: 69 08     ADC #$08
C - - - - - 0x001A85 00:DA75: 85 D8     STA ram_00D8
C - - - - - 0x001A87 00:DA77: 85 DC     STA ram_00DC
C - - - - - 0x001A89 00:DA79: 60        RTS



sub_DA7A:
C - - - - - 0x001A8A 00:DA7A: A2 50     LDX #< ram_0050
C - - - - - 0x001A8C 00:DA7C: A0 08     LDY #$08
C - - - - - 0x001A8E 00:DA7E: 20 34 CD  JSR sub_CD34_clear_00xx
C - - - - - 0x001A91 00:DA81: A9 00     LDA #$00
C - - - - - 0x001A93 00:DA83: 85 9A     STA ram_009A
C - - - - - 0x001A95 00:DA85: 85 EC     STA ram_00EC
C - - - - - 0x001A97 00:DA87: 60        RTS



tbl_DA88_txt___game_over:
- D 2 - I - 0x001A98 00:DA88: 20        .byte " GAME  OVER "
- D 2 - I - 0x001AA4 00:DA94: 00        .byte $00   ; 



tbl_DA95_txt___player_I:
- D 2 - I - 0x001AA5 00:DA95: 20        .byte "  PLAYER "
- D 2 - I - 0x001AAE 00:DA9E: 3A        .byte $3A   ; I
- D 2 - I - 0x001AAF 00:DA9F: 20        .byte "  " 
- D 2 - I - 0x001AB1 00:DAA1: 00        .byte $00   ; 



tbl_DAA2_txt___player_II:
- D 2 - I - 0x001AB2 00:DAA2: 20        .byte "  PLAYER "
- D 2 - I - 0x001ABB 00:DAAB: 3B        .byte $3B   ; II
- D 2 - I - 0x001ABC 00:DAAC: 20        .byte "  "
- D 2 - I - 0x001ABE 00:DAAE: 00        .byte $00   ; 



tbl_DAAF_tiles___12_spaces:
- D 2 - I - 0x001ABF 00:DAAF: 20        .byte "            "
- D 2 - I - 0x001ACB 00:DABB: 00        .byte $00   ; 



tbl_DABC_txt___no_bonus:
- D 2 - I - 0x001ACC 00:DABC: 20        .byte "  NO BONUS  "
- D 2 - I - 0x001AD8 00:DAC8: 00        .byte $00   ; 



sub_DAC9:
C - - - - - 0x001AD9 00:DAC9: A5 9A     LDA ram_009A
C - - - - - 0x001ADB 00:DACB: 18        CLC
C - - - - - 0x001ADC 00:DACC: 69 01     ADC #$01
C - - - - - 0x001ADE 00:DACE: 29 01     AND #$01
C - - - - - 0x001AE0 00:DAD0: 85 9A     STA ram_009A
C - - - - - 0x001AE2 00:DAD2: F0 01     BEQ bra_DAD5
C - - - - - 0x001AE4 00:DAD4: 60        RTS
bra_DAD5:
C - - - - - 0x001AE5 00:DAD5: A9 00     LDA #$00
C - - - - - 0x001AE7 00:DAD7: 85 9A     STA ram_009A
C - - - - - 0x001AE9 00:DAD9: A5 E5     LDA ram_00E5
C - - - - - 0x001AEB 00:DADB: F0 01     BEQ bra_DADE
C - - - - - 0x001AED 00:DADD: 60        RTS
bra_DADE:
C - - - - - 0x001AEE 00:DADE: A5 57     LDA ram_0057
C - - - - - 0x001AF0 00:DAE0: D0 03     BNE bra_DAE5
C - - - - - 0x001AF2 00:DAE2: 4C 52 DC  JMP loc_DC52
bra_DAE5:
C - - - - - 0x001AF5 00:DAE5: C9 02     CMP #$02
C - - - - - 0x001AF7 00:DAE7: F0 36     BEQ bra_DB1F
C - - - - - 0x001AF9 00:DAE9: C6 55     DEC ram_0055
C - - - - - 0x001AFB 00:DAEB: F0 65     BEQ bra_DB52
C - - - - - 0x001AFD 00:DAED: A5 55     LDA ram_0055
C - - - - - 0x001AFF 00:DAEF: C9 19     CMP #$19
C - - - - - 0x001B01 00:DAF1: D0 05     BNE bra_DAF8
C - - - - - 0x001B03 00:DAF3: 48        PHA
C - - - - - 0x001B04 00:DAF4: 20 82 F1  JSR sub_F182
C - - - - - 0x001B07 00:DAF7: 68        PLA
bra_DAF8:
C - - - - - 0x001B08 00:DAF8: A2 60     LDX #$60
C - - - - - 0x001B0A 00:DAFA: C9 23     CMP #$23
C - - - - - 0x001B0C 00:DAFC: 90 0E     BCC bra_DB0C
C - - - - - 0x001B0E 00:DAFE: A2 00     LDX #$00
C - - - - - 0x001B10 00:DB00: C9 28     CMP #$28
C - - - - - 0x001B12 00:DB02: 90 08     BCC bra_DB0C
C - - - - - 0x001B14 00:DB04: A2 02     LDX #$02
C - - - - - 0x001B16 00:DB06: C9 2D     CMP #$2D
C - - - - - 0x001B18 00:DB08: 90 02     BCC bra_DB0C
C - - - - - 0x001B1A 00:DB0A: A2 06     LDX #$06
bra_DB0C:
C - - - - - 0x001B1C 00:DB0C: 8A        TXA
C - - - - - 0x001B1D 00:DB0D: 20 E8 DF  JSR sub_DFE8
C - - - - - 0x001B20 00:DB10: A9 00     LDA #$00
C - - - - - 0x001B22 00:DB12: 8D 22 07  STA ram_spr_A + $20
C - - - - - 0x001B25 00:DB15: 8D 26 07  STA ram_spr_A + $24
C - - - - - 0x001B28 00:DB18: 8D 2A 07  STA ram_spr_A + $28
C - - - - - 0x001B2B 00:DB1B: 8D 2E 07  STA ram_spr_A + $2C
C - - - - - 0x001B2E 00:DB1E: 60        RTS
bra_DB1F:
C - - - - - 0x001B2F 00:DB1F: A5 55     LDA ram_0055
C - - - - - 0x001B31 00:DB21: F0 05     BEQ bra_DB28
C - - - - - 0x001B33 00:DB23: C6 55     DEC ram_0055
C - - - - - 0x001B35 00:DB25: 4C 3C DB  JMP loc_DB3C
bra_DB28:
C - - - - - 0x001B38 00:DB28: A6 51     LDX ram_0051
C - - - - - 0x001B3A 00:DB2A: E0 12     CPX #$12
C - - - - - 0x001B3C 00:DB2C: F0 02     BEQ bra_DB30
C - - - - - 0x001B3E 00:DB2E: E6 51     INC ram_0051
bra_DB30:
C - - - - - 0x001B40 00:DB30: AD 20 07  LDA ram_spr_Y + $20
C - - - - - 0x001B43 00:DB33: 20 AB D2  JSR sub_D2AB
C - - - - - 0x001B46 00:DB36: AE 23 07  LDX ram_spr_X + $20
C - - - - - 0x001B49 00:DB39: 20 FC DF  JSR sub_DFFC
loc_DB3C:
C D 2 - - - 0x001B4C 00:DB3C: A9 6C     LDA #$6C
C - - - - - 0x001B4E 00:DB3E: 20 E8 DF  JSR sub_DFE8
C - - - - - 0x001B51 00:DB41: AD 20 07  LDA ram_spr_Y + $20
C - - - - - 0x001B54 00:DB44: C9 D8     CMP #$D8
C - - - - - 0x001B56 00:DB46: 90 09     BCC bra_DB51_RTS
C - - - - - 0x001B58 00:DB48: A5 51     LDA ram_0051
C - - - - - 0x001B5A 00:DB4A: C9 0B     CMP #$0B
C - - - - - 0x001B5C 00:DB4C: 90 03     BCC bra_DB51_RTS
C - - - - - 0x001B5E 00:DB4E: 4C 2C DD  JMP loc_DD2C
bra_DB51_RTS:
C - - - - - 0x001B61 00:DB51: 60        RTS



bra_DB52:   ; bzk
loc_DB52:
C - - - - - 0x001B62 00:DB52: A5 A7     LDA ram_00A7
C - - - - - 0x001B64 00:DB54: F0 03     BEQ bra_DB59
C - - - - - 0x001B66 00:DB56: 4C EF C1  JMP loc_C1EF
bra_DB59:
C - - - - - 0x001B69 00:DB59: A5 8F     LDA ram_008F
C - - - - - 0x001B6B 00:DB5B: F0 19     BEQ bra_DB76
C - - - - - 0x001B6D 00:DB5D: 20 AA EF  JSR sub_EFAA
C - - - - - 0x001B70 00:DB60: A9 BC     LDA #< tbl_DABC_txt___no_bonus
C - - - - - 0x001B72 00:DB62: 85 00     STA ram_0000
C - - - - - 0x001B74 00:DB64: A9 DA     LDA #> tbl_DABC_txt___no_bonus
C - - - - - 0x001B76 00:DB66: 85 01     STA ram_0001
C - - - - - 0x001B78 00:DB68: A9 2A     LDA #< $212A
C - - - - - 0x001B7A 00:DB6A: 85 02     STA ram_0002
C - - - - - 0x001B7C 00:DB6C: A9 21     LDA #> $212A
C - - - - - 0x001B7E 00:DB6E: 85 03     STA ram_0003
C - - - - - 0x001B80 00:DB70: 20 D7 EB  JSR sub_EBD7_print_text
C - - - - - 0x001B83 00:DB73: 4C 26 DC  JMP loc_DC26
bra_DB76:
C - - - - - 0x001B86 00:DB76: A5 E0     LDA ram_00E0
C - - - - - 0x001B88 00:DB78: D0 47     BNE bra_DBC1
C - - - - - 0x001B8A 00:DB7A: C6 BE     DEC ram_00BE
C - - - - - 0x001B8C 00:DB7C: 10 40     BPL bra_DBBE
C - - - - - 0x001B8E 00:DB7E: A9 FF     LDA #$FF
C - - - - - 0x001B90 00:DB80: 85 E2     STA ram_00E2
loc_DB82:
C D 2 - - - 0x001B92 00:DB82: 20 AA EF  JSR sub_EFAA
C - - - - - 0x001B95 00:DB85: A9 AF     LDA #< tbl_DAAF_tiles___12_spaces
C - - - - - 0x001B97 00:DB87: 85 00     STA ram_0000
C - - - - - 0x001B99 00:DB89: A9 DA     LDA #> tbl_DAAF_tiles___12_spaces
C - - - - - 0x001B9B 00:DB8B: 85 01     STA ram_0001
C - - - - - 0x001B9D 00:DB8D: A9 CA     LDA #< $21CA
C - - - - - 0x001B9F 00:DB8F: 85 02     STA ram_0002
C - - - - - 0x001BA1 00:DB91: A9 21     LDA #> $21CA
C - - - - - 0x001BA3 00:DB93: 85 03     STA ram_0003
C - - - - - 0x001BA5 00:DB95: 20 D7 EB  JSR sub_EBD7_print_text
C - - - - - 0x001BA8 00:DB98: A9 88     LDA #< tbl_DA88_txt___game_over
C - - - - - 0x001BAA 00:DB9A: 85 00     STA ram_0000
C - - - - - 0x001BAC 00:DB9C: A9 DA     LDA #> tbl_DA88_txt___game_over
C - - - - - 0x001BAE 00:DB9E: 85 01     STA ram_0001
C - - - - - 0x001BB0 00:DBA0: A9 EA     LDA #< $21EA
C - - - - - 0x001BB2 00:DBA2: 85 02     STA ram_0002
C - - - - - 0x001BB4 00:DBA4: A9 21     LDA #> $21EA
C - - - - - 0x001BB6 00:DBA6: 85 03     STA ram_0003
C - - - - - 0x001BB8 00:DBA8: 20 D7 EB  JSR sub_EBD7_print_text
C - - - - - 0x001BBB 00:DBAB: A9 AF     LDA #< tbl_DAAF_tiles___12_spaces
C - - - - - 0x001BBD 00:DBAD: 85 00     STA ram_0000
C - - - - - 0x001BBF 00:DBAF: A9 DA     LDA #> tbl_DAAF_tiles___12_spaces
C - - - - - 0x001BC1 00:DBB1: 85 01     STA ram_0001
C - - - - - 0x001BC3 00:DBB3: A9 0A     LDA #< $220A
C - - - - - 0x001BC5 00:DBB5: 85 02     STA ram_0002
C - - - - - 0x001BC7 00:DBB7: A9 22     LDA #> $220A
C - - - - - 0x001BC9 00:DBB9: 85 03     STA ram_0003
C - - - - - 0x001BCB 00:DBBB: 20 D7 EB  JSR sub_EBD7_print_text
bra_DBBE:
C - - - - - 0x001BCE 00:DBBE: 4C 26 DC  JMP loc_DC26
bra_DBC1:
C - - - - - 0x001BD1 00:DBC1: A5 E1     LDA ram_00E1
C - - - - - 0x001BD3 00:DBC3: D0 1F     BNE bra_DBE4
C - - - - - 0x001BD5 00:DBC5: A9 01     LDA #$01
C - - - - - 0x001BD7 00:DBC7: 85 E1     STA ram_00E1
C - - - - - 0x001BD9 00:DBC9: C6 BE     DEC ram_00BE
C - - - - - 0x001BDB 00:DBCB: 10 F1     BPL bra_DBBE
C - - - - - 0x001BDD 00:DBCD: A5 E2     LDA ram_00E2
C - - - - - 0x001BDF 00:DBCF: 09 F0     ORA #$F0
C - - - - - 0x001BE1 00:DBD1: 85 E2     STA ram_00E2
C - - - - - 0x001BE3 00:DBD3: 20 03 DC  JSR sub_DC03_print_12_spaces
C - - - - - 0x001BE6 00:DBD6: A9 95     LDA #< tbl_DA95_txt___player_I
C - - - - - 0x001BE8 00:DBD8: 85 00     STA ram_0000
C - - - - - 0x001BEA 00:DBDA: A9 DA     LDA #> tbl_DA95_txt___player_I
C - - - - - 0x001BEC 00:DBDC: 85 01     STA ram_0001
C - - - - - 0x001BEE 00:DBDE: 20 17 DC  JSR sub_DC17
C - - - - - 0x001BF1 00:DBE1: 4C 82 DB  JMP loc_DB82
bra_DBE4:
C - - - - - 0x001BF4 00:DBE4: A9 00     LDA #$00
C - - - - - 0x001BF6 00:DBE6: 85 E1     STA ram_00E1
C - - - - - 0x001BF8 00:DBE8: C6 BF     DEC ram_00BF
C - - - - - 0x001BFA 00:DBEA: 10 D2     BPL bra_DBBE
C - - - - - 0x001BFC 00:DBEC: A5 E2     LDA ram_00E2
C - - - - - 0x001BFE 00:DBEE: 09 0F     ORA #$0F
C - - - - - 0x001C00 00:DBF0: 85 E2     STA ram_00E2
C - - - - - 0x001C02 00:DBF2: 20 03 DC  JSR sub_DC03_print_12_spaces
C - - - - - 0x001C05 00:DBF5: A9 A2     LDA #< tbl_DAA2_txt___player_II
C - - - - - 0x001C07 00:DBF7: 85 00     STA ram_0000
C - - - - - 0x001C09 00:DBF9: A9 DA     LDA #> tbl_DAA2_txt___player_II
C - - - - - 0x001C0B 00:DBFB: 85 01     STA ram_0001
C - - - - - 0x001C0D 00:DBFD: 20 17 DC  JSR sub_DC17
C - - - - - 0x001C10 00:DC00: 4C 82 DB  JMP loc_DB82



sub_DC03_print_12_spaces:
C - - - - - 0x001C13 00:DC03: A9 AF     LDA #< tbl_DAAF_tiles___12_spaces
C - - - - - 0x001C15 00:DC05: 85 00     STA ram_0000
C - - - - - 0x001C17 00:DC07: A9 DA     LDA #> tbl_DAAF_tiles___12_spaces
C - - - - - 0x001C19 00:DC09: 85 01     STA ram_0001
C - - - - - 0x001C1B 00:DC0B: A9 8A     LDA #< $218A
C - - - - - 0x001C1D 00:DC0D: 85 02     STA ram_0002
C - - - - - 0x001C1F 00:DC0F: A9 21     LDA #> $218A
C - - - - - 0x001C21 00:DC11: 85 03     STA ram_0003
C - - - - - 0x001C23 00:DC13: 20 D7 EB  JSR sub_EBD7_print_text
C - - - - - 0x001C26 00:DC16: 60        RTS



sub_DC17:
C - - - - - 0x001C27 00:DC17: A9 AA     LDA #< $21AA
C - - - - - 0x001C29 00:DC19: 85 02     STA ram_0002
C - - - - - 0x001C2B 00:DC1B: A9 21     LDA #> $21AA
C - - - - - 0x001C2D 00:DC1D: 85 03     STA ram_0003
C - - - - - 0x001C2F 00:DC1F: 20 D7 EB  JSR sub_EBD7_print_text
C - - - - - 0x001C32 00:DC22: 20 21 CD  JSR sub_CD21
C - - - - - 0x001C35 00:DC25: 60        RTS



loc_DC26:
C D 2 - - - 0x001C36 00:DC26: 20 21 CD  JSR sub_CD21
C - - - - - 0x001C39 00:DC29: A9 00     LDA #$00
C - - - - - 0x001C3B 00:DC2B: 85 8F     STA ram_008F
C - - - - - 0x001C3D 00:DC2D: 20 70 C2  JSR sub_C270
C - - - - - 0x001C40 00:DC30: A9 07     LDA #$07
C - - - - - 0x001C42 00:DC32: 20 0C C6  JSR sub_C60C_garbage_loop
C - - - - - 0x001C45 00:DC35: A5 E2     LDA ram_00E2
C - - - - - 0x001C47 00:DC37: F0 0E     BEQ bra_DC47
C - - - - - 0x001C49 00:DC39: A9 14     LDA #$14
C - - - - - 0x001C4B 00:DC3B: 20 0C C6  JSR sub_C60C_garbage_loop
C - - - - - 0x001C4E 00:DC3E: A5 E2     LDA ram_00E2
C - - - - - 0x001C50 00:DC40: C9 FF     CMP #$FF
C - - - - - 0x001C52 00:DC42: D0 03     BNE bra_DC47
C - - - - - 0x001C54 00:DC44: 4C EF C1  JMP loc_C1EF
bra_DC47:
C - - - - - 0x001C57 00:DC47: 20 62 C2  JSR sub_C262_check_round_info
C - - - - - 0x001C5A 00:DC4A: F0 03     BEQ bra_DC4F
C - - - - - 0x001C5C 00:DC4C: 4C C2 C2  JMP loc_C2C2
bra_DC4F:
C - - - - - 0x001C5F 00:DC4F: 4C 08 C3  JMP loc_C308



loc_DC52:
C D 2 - - - 0x001C62 00:DC52: A9 00     LDA #$00
C - - - - - 0x001C64 00:DC54: 85 48     STA ram_0048
C - - - - - 0x001C66 00:DC56: AE 23 07  LDX ram_spr_X + $20
C - - - - - 0x001C69 00:DC59: AC 20 07  LDY ram_spr_Y + $20
C - - - - - 0x001C6C 00:DC5C: 86 4A     STX ram_004A
C - - - - - 0x001C6E 00:DC5E: 84 4B     STY ram_004B
C - - - - - 0x001C70 00:DC60: A5 50     LDA ram_0050
C - - - - - 0x001C72 00:DC62: F0 03     BEQ bra_DC67
C - - - - - 0x001C74 00:DC64: 4C 05 DD  JMP loc_DD05
bra_DC67:
C - - - - - 0x001C77 00:DC67: C0 D0     CPY #$D0
C - - - - - 0x001C79 00:DC69: 90 07     BCC bra_DC72
- - - - - - 0x001C7B 00:DC6B: C0 E0     CPY #$E0
- - - - - - 0x001C7D 00:DC6D: B0 03     BCS bra_DC72
; D0-DF
- - - - - - 0x001C7F 00:DC6F: 4C 2C DD  JMP loc_DD2C
bra_DC72:
C - - - - - 0x001C82 00:DC72: AD 21 07  LDA ram_spr_T + $20
C - - - - - 0x001C85 00:DC75: C9 80     CMP #$80
C - - - - - 0x001C87 00:DC77: B0 1C     BCS bra_DC95
C - - - - - 0x001C89 00:DC79: A9 4E     LDA #$4E
C - - - - - 0x001C8B 00:DC7B: 20 E8 DF  JSR sub_DFE8
C - - - - - 0x001C8E 00:DC7E: E6 A3     INC ram_00A3
C - - - - - 0x001C90 00:DC80: A5 A3     LDA ram_00A3
C - - - - - 0x001C92 00:DC82: C9 14     CMP #$14
C - - - - - 0x001C94 00:DC84: 90 6C     BCC bra_DCF2
C - - - - - 0x001C96 00:DC86: 20 20 C6  JSR sub_C620
C - - - - - 0x001C99 00:DC89: 29 C0     AND #con_btns_AB
C - - - - - 0x001C9B 00:DC8B: F0 65     BEQ bra_DCF2
C - - - - - 0x001C9D 00:DC8D: A9 86     LDA #$86
C - - - - - 0x001C9F 00:DC8F: 20 E8 DF  JSR sub_DFE8
C - - - - - 0x001CA2 00:DC92: 4C F2 DC  JMP loc_DCF2
bra_DC95:
C - - - - - 0x001CA5 00:DC95: 20 20 C6  JSR sub_C620
C - - - - - 0x001CA8 00:DC98: 29 0F     AND #con_btns_Dpad
C - - - - - 0x001CAA 00:DC9A: F0 56     BEQ bra_DCF2
C - - - - - 0x001CAC 00:DC9C: 48        PHA
C - - - - - 0x001CAD 00:DC9D: 85 52     STA ram_0052
C - - - - - 0x001CAF 00:DC9F: C9 03     CMP #$03
C - - - - - 0x001CB1 00:DCA1: 90 43     BCC bra_DCE6
C - - - - - 0x001CB3 00:DCA3: A9 00     LDA #$00
C - - - - - 0x001CB5 00:DCA5: 85 53     STA ram_0053
C - - - - - 0x001CB7 00:DCA7: AE 23 07  LDX ram_spr_X + $20
C - - - - - 0x001CBA 00:DCAA: AC 20 07  LDY ram_spr_Y + $20
C - - - - - 0x001CBD 00:DCAD: 20 56 E0  JSR sub_E056
C - - - - - 0x001CC0 00:DCB0: C9 03     CMP #$03
C - - - - - 0x001CC2 00:DCB2: D0 29     BNE bra_DCDD
C - - - - - 0x001CC4 00:DCB4: AE 23 07  LDX ram_spr_X + $20
C - - - - - 0x001CC7 00:DCB7: AC 20 07  LDY ram_spr_Y + $20
C - - - - - 0x001CCA 00:DCBA: 20 BF E0  JSR sub_E0BF
C - - - - - 0x001CCD 00:DCBD: C9 03     CMP #$03
C - - - - - 0x001CCF 00:DCBF: D0 0D     BNE bra_DCCE
C - - - - - 0x001CD1 00:DCC1: AE 23 07  LDX ram_spr_X + $20
C - - - - - 0x001CD4 00:DCC4: AC 20 07  LDY ram_spr_Y + $20
C - - - - - 0x001CD7 00:DCC7: 20 C7 E0  JSR sub_E0C7
C - - - - - 0x001CDA 00:DCCA: C9 03     CMP #$03
C - - - - - 0x001CDC 00:DCCC: F0 0F     BEQ bra_DCDD
bra_DCCE:
C - - - - - 0x001CDE 00:DCCE: AD 23 07  LDA ram_spr_X + $20
C - - - - - 0x001CE1 00:DCD1: 18        CLC
C - - - - - 0x001CE2 00:DCD2: 69 08     ADC #$08
C - - - - - 0x001CE4 00:DCD4: 29 F0     AND #$F0
C - - - - - 0x001CE6 00:DCD6: AA        TAX
C - - - - - 0x001CE7 00:DCD7: AC 20 07  LDY ram_spr_Y + $20
C - - - - - 0x001CEA 00:DCDA: 20 FC DF  JSR sub_DFFC
bra_DCDD:
C - - - - - 0x001CED 00:DCDD: AE 23 07  LDX ram_spr_X + $20
C - - - - - 0x001CF0 00:DCE0: AC 20 07  LDY ram_spr_Y + $20
C - - - - - 0x001CF3 00:DCE3: 4C EE DC  JMP loc_DCEE
bra_DCE6:
C - - - - - 0x001CF6 00:DCE6: A5 53     LDA ram_0053
C - - - - - 0x001CF8 00:DCE8: C9 02     CMP #$02
C - - - - - 0x001CFA 00:DCEA: F0 02     BEQ bra_DCEE
C - - - - - 0x001CFC 00:DCEC: E6 53     INC ram_0053
bra_DCEE:
loc_DCEE:
C D 2 - - - 0x001CFE 00:DCEE: 68        PLA
C - - - - - 0x001CFF 00:DCEF: 4C 49 DD  JMP loc_DD49
bra_DCF2:
loc_DCF2:
C D 2 - - - 0x001D02 00:DCF2: A9 00     LDA #$00
C - - - - - 0x001D04 00:DCF4: 85 53     STA ram_0053
C - - - - - 0x001D06 00:DCF6: AD 21 07  LDA ram_spr_T + $20
C - - - - - 0x001D09 00:DCF9: C9 80     CMP #$80
C - - - - - 0x001D0B 00:DCFB: 90 05     BCC bra_DD02
C - - - - - 0x001D0D 00:DCFD: 29 F8     AND #$F8
C - - - - - 0x001D0F 00:DCFF: 18        CLC
C - - - - - 0x001D10 00:DD00: 69 06     ADC #$06
bra_DD02:
C - - - - - 0x001D12 00:DD02: 4C 96 DD  JMP loc_DD96



loc_DD05:
C D 2 - - - 0x001D15 00:DD05: A6 51     LDX ram_0051
C - - - - - 0x001D17 00:DD07: E0 12     CPX #$12
C - - - - - 0x001D19 00:DD09: D0 0E     BNE bra_DD19
C - - - - - 0x001D1B 00:DD0B: E6 EC     INC ram_00EC
C - - - - - 0x001D1D 00:DD0D: A5 EC     LDA ram_00EC
C - - - - - 0x001D1F 00:DD0F: C9 05     CMP #$05
C - - - - - 0x001D21 00:DD11: D0 03     BNE bra_DD16
C - - - - - 0x001D23 00:DD13: 20 ED EF  JSR sub_EFED
bra_DD16:
C - - - - - 0x001D26 00:DD16: 4C 1B DD  JMP loc_DD1B
bra_DD19:
C - - - - - 0x001D29 00:DD19: E6 51     INC ram_0051
loc_DD1B:
C D 2 - - - 0x001D2B 00:DD1B: AD 20 07  LDA ram_spr_Y + $20
C - - - - - 0x001D2E 00:DD1E: 20 AB D2  JSR sub_D2AB
C - - - - - 0x001D31 00:DD21: AE 23 07  LDX ram_spr_X + $20
C - - - - - 0x001D34 00:DD24: C0 D0     CPY #$D0
C - - - - - 0x001D36 00:DD26: 90 1B     BCC bra_DD43
C - - - - - 0x001D38 00:DD28: C0 E0     CPY #$E0
C - - - - - 0x001D3A 00:DD2A: B0 17     BCS bra_DD43
loc_DD2C:
C D 2 - - - 0x001D3C 00:DD2C: A9 01     LDA #$01
C - - - - - 0x001D3E 00:DD2E: 85 57     STA ram_0057
C - - - - - 0x001D40 00:DD30: A9 32     LDA #$32
C - - - - - 0x001D42 00:DD32: 85 55     STA ram_0055
C - - - - - 0x001D44 00:DD34: AE 23 07  LDX ram_spr_X + $20
C - - - - - 0x001D47 00:DD37: A0 D8     LDY #$D8
C - - - - - 0x001D49 00:DD39: 20 FC DF  JSR sub_DFFC
C - - - - - 0x001D4C 00:DD3C: A9 00     LDA #$00
C - - - - - 0x001D4E 00:DD3E: 85 34     STA ram_0034
C - - - - - 0x001D50 00:DD40: 85 3C     STA ram_003C
C - - - - - 0x001D52 00:DD42: 60        RTS
bra_DD43:
C - - - - - 0x001D53 00:DD43: A9 01     LDA #$01
C - - - - - 0x001D55 00:DD45: 85 48     STA ram_0048
C - - - - - 0x001D57 00:DD47: A5 52     LDA ram_0052
loc_DD49:
C D 2 - - - 0x001D59 00:DD49: 85 44     STA ram_0044
C - - - - - 0x001D5B 00:DD4B: AD 21 07  LDA ram_spr_T + $20
C - - - - - 0x001D5E 00:DD4E: 85 45     STA ram_0045
C - - - - - 0x001D60 00:DD50: A5 52     LDA ram_0052
C - - - - - 0x001D62 00:DD52: 85 46     STA ram_0046
C - - - - - 0x001D64 00:DD54: A9 02     LDA #$02
C - - - - - 0x001D66 00:DD56: 85 47     STA ram_0047
C - - - - - 0x001D68 00:DD58: A5 50     LDA ram_0050
C - - - - - 0x001D6A 00:DD5A: F0 04     BEQ bra_DD60
C - - - - - 0x001D6C 00:DD5C: A5 53     LDA ram_0053
C - - - - - 0x001D6E 00:DD5E: 85 47     STA ram_0047
bra_DD60:
C - - - - - 0x001D70 00:DD60: 20 D6 E0  JSR sub_E0D6
C - - - - - 0x001D73 00:DD63: A5 45     LDA ram_0045
C - - - - - 0x001D75 00:DD65: 8D 21 07  STA ram_spr_T + $20
C - - - - - 0x001D78 00:DD68: A5 46     LDA ram_0046
C - - - - - 0x001D7A 00:DD6A: 85 52     STA ram_0052
C - - - - - 0x001D7C 00:DD6C: 20 FC DF  JSR sub_DFFC
C - - - - - 0x001D7F 00:DD6F: A5 50     LDA ram_0050
C - - - - - 0x001D81 00:DD71: F0 0E     BEQ bra_DD81
C - - - - - 0x001D83 00:DD73: AD 21 07  LDA ram_spr_T + $20
C - - - - - 0x001D86 00:DD76: C9 80     CMP #$80
C - - - - - 0x001D88 00:DD78: 90 1C     BCC bra_DD96
C - - - - - 0x001D8A 00:DD7A: 29 FB     AND #$FB
C - - - - - 0x001D8C 00:DD7C: 09 02     ORA #$02
C - - - - - 0x001D8E 00:DD7E: 4C 96 DD  JMP loc_DD96
bra_DD81:
C - - - - - 0x001D91 00:DD81: AD 21 07  LDA ram_spr_T + $20
C - - - - - 0x001D94 00:DD84: C9 80     CMP #$80
C - - - - - 0x001D96 00:DD86: 90 0E     BCC bra_DD96
C - - - - - 0x001D98 00:DD88: 18        CLC
C - - - - - 0x001D99 00:DD89: 69 02     ADC #$02
C - - - - - 0x001D9B 00:DD8B: 29 06     AND #$06
C - - - - - 0x001D9D 00:DD8D: 85 44     STA ram_0044
C - - - - - 0x001D9F 00:DD8F: AD 21 07  LDA ram_spr_T + $20
C - - - - - 0x001DA2 00:DD92: 29 F8     AND #$F8
C - - - - - 0x001DA4 00:DD94: 05 44     ORA ram_0044
bra_DD96:
loc_DD96:
C D 2 - - - 0x001DA6 00:DD96: AA        TAX
C - - - - - 0x001DA7 00:DD97: A5 EC     LDA ram_00EC
C - - - - - 0x001DA9 00:DD99: C9 07     CMP #$07
C - - - - - 0x001DAB 00:DD9B: 90 07     BCC bra_DDA4
C - - - - - 0x001DAD 00:DD9D: 29 03     AND #$03
C - - - - - 0x001DAF 00:DD9F: AA        TAX
C - - - - - 0x001DB0 00:DDA0: BD B5 DD  LDA tbl_DDB5,X
C - - - - - 0x001DB3 00:DDA3: AA        TAX
bra_DDA4:
C - - - - - 0x001DB4 00:DDA4: 8A        TXA
C - - - - - 0x001DB5 00:DDA5: 20 E8 DF  JSR sub_DFE8
C - - - - - 0x001DB8 00:DDA8: 20 C2 DD  JSR sub_DDC2
C - - - - - 0x001DBB 00:DDAB: 20 47 DE  JSR sub_DE47
C - - - - - 0x001DBE 00:DDAE: 20 56 DF  JSR sub_DF56
C - - - - - 0x001DC1 00:DDB1: 20 96 DF  JSR sub_DF96
C - - - - - 0x001DC4 00:DDB4: 60        RTS



tbl_DDB5:
- D 2 - - - 0x001DC5 00:DDB5: 44        .byte $44   ; 00
- D 2 - - - 0x001DC6 00:DDB6: 4E        .byte $4E   ; 01
- D 2 - - - 0x001DC7 00:DDB7: 46        .byte $46   ; 02
- D 2 - - - 0x001DC8 00:DDB8: 4C        .byte $4C   ; 03



tbl_DDB9:
- - - - - - 0x001DC9 00:DDB9: 86        .byte $86   ; 00
- D 2 - - - 0x001DCA 00:DDBA: A6        .byte $A6   ; 01
- D 2 - - - 0x001DCB 00:DDBB: AE        .byte $AE   ; 02
- - - - - - 0x001DCC 00:DDBC: 86        .byte $86   ; 03
- - - - - - 0x001DCD 00:DDBD: 86        .byte $86   ; 04
- - - - - - 0x001DCE 00:DDBE: 86        .byte $86   ; 05
- - - - - - 0x001DCF 00:DDBF: 86        .byte $86   ; 06
- - - - - - 0x001DD0 00:DDC0: 86        .byte $86   ; 07
- D 2 - - - 0x001DD1 00:DDC1: 8E        .byte $8E   ; 08



sub_DDC2:
C - - - - - 0x001DD2 00:DDC2: A5 CC     LDA ram_00CC
C - - - - - 0x001DD4 00:DDC4: D0 3E     BNE bra_DE04_RTS
C - - - - - 0x001DD6 00:DDC6: A5 50     LDA ram_0050
C - - - - - 0x001DD8 00:DDC8: D0 3A     BNE bra_DE04_RTS
C - - - - - 0x001DDA 00:DDCA: AE 23 07  LDX ram_spr_X + $20
C - - - - - 0x001DDD 00:DDCD: AC 20 07  LDY ram_spr_Y + $20
C - - - - - 0x001DE0 00:DDD0: 20 1D E0  JSR sub_E01D
C - - - - - 0x001DE3 00:DDD3: F0 30     BEQ bra_DE05
C - - - - - 0x001DE5 00:DDD5: C9 03     CMP #$03
C - - - - - 0x001DE7 00:DDD7: F0 2B     BEQ bra_DE04_RTS
C - - - - - 0x001DE9 00:DDD9: AE 23 07  LDX ram_spr_X + $20
C - - - - - 0x001DEC 00:DDDC: AC 20 07  LDY ram_spr_Y + $20
C - - - - - 0x001DEF 00:DDDF: 20 56 E0  JSR sub_E056
C - - - - - 0x001DF2 00:DDE2: C9 03     CMP #$03
C - - - - - 0x001DF4 00:DDE4: F0 12     BEQ bra_DDF8
C - - - - - 0x001DF6 00:DDE6: A5 52     LDA ram_0052
C - - - - - 0x001DF8 00:DDE8: C9 04     CMP #$04
C - - - - - 0x001DFA 00:DDEA: D0 0C     BNE bra_DDF8
C - - - - - 0x001DFC 00:DDEC: A6 4A     LDX ram_004A
C - - - - - 0x001DFE 00:DDEE: AD 20 07  LDA ram_spr_Y + $20
C - - - - - 0x001E01 00:DDF1: 29 F8     AND #$F8
C - - - - - 0x001E03 00:DDF3: A8        TAY
C - - - - - 0x001E04 00:DDF4: 20 FC DF  JSR sub_DFFC
C - - - - - 0x001E07 00:DDF7: 60        RTS
bra_DDF8:
C - - - - - 0x001E08 00:DDF8: AE 23 07  LDX ram_spr_X + $20
C - - - - - 0x001E0B 00:DDFB: AD 20 07  LDA ram_spr_Y + $20
C - - - - - 0x001E0E 00:DDFE: 29 F8     AND #$F8
C - - - - - 0x001E10 00:DE00: A8        TAY
C - - - - - 0x001E11 00:DE01: 20 FC DF  JSR sub_DFFC
bra_DE04_RTS:
C - - - - - 0x001E14 00:DE04: 60        RTS
bra_DE05:
C - - - - - 0x001E15 00:DE05: AE 23 07  LDX ram_spr_X + $20
C - - - - - 0x001E18 00:DE08: AC 20 07  LDY ram_spr_Y + $20
C - - - - - 0x001E1B 00:DE0B: 20 56 E0  JSR sub_E056
C - - - - - 0x001E1E 00:DE0E: C9 03     CMP #$03
C - - - - - 0x001E20 00:DE10: F0 F2     BEQ bra_DE04_RTS
C - - - - - 0x001E22 00:DE12: A5 52     LDA ram_0052
C - - - - - 0x001E24 00:DE14: C9 03     CMP #$03
C - - - - - 0x001E26 00:DE16: B0 16     BCS bra_DE2E
C - - - - - 0x001E28 00:DE18: AE 23 07  LDX ram_spr_X + $20
C - - - - - 0x001E2B 00:DE1B: AC 20 07  LDY ram_spr_Y + $20
C - - - - - 0x001E2E 00:DE1E: 20 56 E0  JSR sub_E056
C - - - - - 0x001E31 00:DE21: F0 0B     BEQ bra_DE2E
- - - - - - 0x001E33 00:DE23: C9 03     CMP #$03
- - - - - - 0x001E35 00:DE25: F0 07     BEQ bra_DE2E
- - - - - - 0x001E37 00:DE27: A6 4A     LDX ram_004A
- - - - - - 0x001E39 00:DE29: A4 4B     LDY ram_004B
- - - - - - 0x001E3B 00:DE2B: 4C FC DF  JMP loc_DFFC
bra_DE2E:
C - - - - - 0x001E3E 00:DE2E: A5 53     LDA ram_0053
C - - - - - 0x001E40 00:DE30: C9 02     CMP #$02
C - - - - - 0x001E42 00:DE32: B0 0A     BCS bra_DE3E
C - - - - - 0x001E44 00:DE34: A5 52     LDA ram_0052
C - - - - - 0x001E46 00:DE36: C9 08     CMP #$08
C - - - - - 0x001E48 00:DE38: F0 04     BEQ bra_DE3E
C - - - - - 0x001E4A 00:DE3A: A9 04     LDA #$04
C - - - - - 0x001E4C 00:DE3C: 85 52     STA ram_0052
bra_DE3E:
C - - - - - 0x001E4E 00:DE3E: A9 01     LDA #$01
C - - - - - 0x001E50 00:DE40: 85 50     STA ram_0050
C - - - - - 0x001E52 00:DE42: A9 0B     LDA #$0B
C - - - - - 0x001E54 00:DE44: 85 51     STA ram_0051
bra_DE46_RTS:
C - - - - - 0x001E56 00:DE46: 60        RTS



sub_DE47:
C - - - - - 0x001E57 00:DE47: A5 50     LDA ram_0050
C - - - - - 0x001E59 00:DE49: F0 FB     BEQ bra_DE46_RTS
C - - - - - 0x001E5B 00:DE4B: AE 23 07  LDX ram_spr_X + $20
C - - - - - 0x001E5E 00:DE4E: AC 20 07  LDY ram_spr_Y + $20
C - - - - - 0x001E61 00:DE51: 20 56 E0  JSR sub_E056
C - - - - - 0x001E64 00:DE54: F0 3A     BEQ bra_DE90
C - - - - - 0x001E66 00:DE56: C9 03     CMP #$03
C - - - - - 0x001E68 00:DE58: F0 2B     BEQ bra_DE85
C - - - - - 0x001E6A 00:DE5A: A6 4A     LDX ram_004A
C - - - - - 0x001E6C 00:DE5C: A4 4B     LDY ram_004B
C - - - - - 0x001E6E 00:DE5E: 20 FC DF  JSR sub_DFFC
C - - - - - 0x001E71 00:DE61: AE 23 07  LDX ram_spr_X + $20
C - - - - - 0x001E74 00:DE64: AC 20 07  LDY ram_spr_Y + $20
C - - - - - 0x001E77 00:DE67: 20 1D E0  JSR sub_E01D
C - - - - - 0x001E7A 00:DE6A: D0 40     BNE bra_DEAC
C - - - - - 0x001E7C 00:DE6C: AD 21 07  LDA ram_spr_T + $20
C - - - - - 0x001E7F 00:DE6F: C9 80     CMP #$80
C - - - - - 0x001E81 00:DE71: 90 07     BCC bra_DE7A
C - - - - - 0x001E83 00:DE73: 29 FB     AND #$FB
C - - - - - 0x001E85 00:DE75: 09 02     ORA #$02
C - - - - - 0x001E87 00:DE77: 20 E8 DF  JSR sub_DFE8
bra_DE7A:
C - - - - - 0x001E8A 00:DE7A: A9 01     LDA #$01
C - - - - - 0x001E8C 00:DE7C: 85 50     STA ram_0050
C - - - - - 0x001E8E 00:DE7E: A9 0B     LDA #$0B
C - - - - - 0x001E90 00:DE80: 85 51     STA ram_0051
C - - - - - 0x001E92 00:DE82: 4C D5 DE  JMP loc_DED5
bra_DE85:
C - - - - - 0x001E95 00:DE85: A6 52     LDX ram_0052
C - - - - - 0x001E97 00:DE87: BD B9 DD  LDA tbl_DDB9,X
C - - - - - 0x001E9A 00:DE8A: 20 E8 DF  JSR sub_DFE8
C - - - - - 0x001E9D 00:DE8D: 20 E8 EF  JSR sub_EFE8
bra_DE90:
C - - - - - 0x001EA0 00:DE90: AE 23 07  LDX ram_spr_X + $20
C - - - - - 0x001EA3 00:DE93: AC 20 07  LDY ram_spr_Y + $20
C - - - - - 0x001EA6 00:DE96: 20 1D E0  JSR sub_E01D
C - - - - - 0x001EA9 00:DE99: F0 3E     BEQ bra_DED9_RTS
C - - - - - 0x001EAB 00:DE9B: C9 07     CMP #$07
C - - - - - 0x001EAD 00:DE9D: F0 4A     BEQ bra_DEE9
C - - - - - 0x001EAF 00:DE9F: C9 03     CMP #$03
C - - - - - 0x001EB1 00:DEA1: F0 03     BEQ bra_DEA6
C - - - - - 0x001EB3 00:DEA3: 20 28 F1  JSR sub_F128
bra_DEA6:
C - - - - - 0x001EB6 00:DEA6: A5 51     LDA ram_0051
C - - - - - 0x001EB8 00:DEA8: C9 0B     CMP #$0B
C - - - - - 0x001EBA 00:DEAA: 90 0F     BCC bra_DEBB
bra_DEAC:
C - - - - - 0x001EBC 00:DEAC: AE 23 07  LDX ram_spr_X + $20
C - - - - - 0x001EBF 00:DEAF: AD 20 07  LDA ram_spr_Y + $20
C - - - - - 0x001EC2 00:DEB2: 29 F8     AND #$F8
C - - - - - 0x001EC4 00:DEB4: A8        TAY
C - - - - - 0x001EC5 00:DEB5: 20 FC DF  JSR sub_DFFC
C - - - - - 0x001EC8 00:DEB8: 20 05 CB  JSR sub_CB05
bra_DEBB:
C - - - - - 0x001ECB 00:DEBB: A9 00     LDA #$00
C - - - - - 0x001ECD 00:DEBD: 85 50     STA ram_0050
C - - - - - 0x001ECF 00:DEBF: 85 EC     STA ram_00EC
C - - - - - 0x001ED1 00:DEC1: 85 A3     STA ram_00A3
C - - - - - 0x001ED3 00:DEC3: AD 21 07  LDA ram_spr_T + $20
C - - - - - 0x001ED6 00:DEC6: C9 80     CMP #$80
C - - - - - 0x001ED8 00:DEC8: 90 14     BCC bra_DEDE
C - - - - - 0x001EDA 00:DECA: 20 20 C6  JSR sub_C620
C - - - - - 0x001EDD 00:DECD: 29 80     AND #con_btn_A
C - - - - - 0x001EDF 00:DECF: F0 04     BEQ bra_DED5
C - - - - - 0x001EE1 00:DED1: A5 24     LDA ram_0024
C - - - - - 0x001EE3 00:DED3: F0 05     BEQ bra_DEDA
bra_DED5:
loc_DED5:
C D 2 - - - 0x001EE5 00:DED5: A9 00     LDA #$00
C - - - - - 0x001EE7 00:DED7: 85 53     STA ram_0053
bra_DED9_RTS:
C - - - - - 0x001EE9 00:DED9: 60        RTS
bra_DEDA:
C - - - - - 0x001EEA 00:DEDA: 20 0C F1  JSR sub_F10C
C - - - - - 0x001EED 00:DEDD: 60        RTS
bra_DEDE:
C - - - - - 0x001EEE 00:DEDE: A9 FF     LDA #$FF
C - - - - - 0x001EF0 00:DEE0: 85 CD     STA ram_scroll_pos_Y
C - - - - - 0x001EF2 00:DEE2: A9 01     LDA #$01
C - - - - - 0x001EF4 00:DEE4: 85 CC     STA ram_00CC
C - - - - - 0x001EF6 00:DEE6: 4C D5 DE  JMP loc_DED5
bra_DEE9:
C - - - - - 0x001EF9 00:DEE9: AE 23 07  LDX ram_spr_X + $20
C - - - - - 0x001EFC 00:DEEC: AD 20 07  LDA ram_spr_Y + $20
C - - - - - 0x001EFF 00:DEEF: 29 F0     AND #$F0
C - - - - - 0x001F01 00:DEF1: A8        TAY
C - - - - - 0x001F02 00:DEF2: 20 FC DF  JSR sub_DFFC
C - - - - - 0x001F05 00:DEF5: AD 23 07  LDA ram_spr_X + $20
C - - - - - 0x001F08 00:DEF8: 85 28     STA ram_0028
C - - - - - 0x001F0A 00:DEFA: AD 20 07  LDA ram_spr_Y + $20
C - - - - - 0x001F0D 00:DEFD: 85 29     STA ram_0029
C - - - - - 0x001F0F 00:DEFF: 20 3B D2  JSR sub_D23B
C - - - - - 0x001F12 00:DF02: D0 48     BNE bra_DF4C_RTS
C - - - - - 0x001F14 00:DF04: A6 52     LDX ram_0052
C - - - - - 0x001F16 00:DF06: 20 20 C6  JSR sub_C620
C - - - - - 0x001F19 00:DF09: 29 02     AND #con_btn_Left
C - - - - - 0x001F1B 00:DF0B: F0 08     BEQ bra_DF15
C - - - - - 0x001F1D 00:DF0D: 20 4D DF  JSR sub_DF4D
C - - - - - 0x001F20 00:DF10: A2 02     LDX #$02
C - - - - - 0x001F22 00:DF12: 4C 21 DF  JMP loc_DF21
bra_DF15:
C - - - - - 0x001F25 00:DF15: 20 20 C6  JSR sub_C620
C - - - - - 0x001F28 00:DF18: 29 01     AND #con_btn_Right
C - - - - - 0x001F2A 00:DF1A: F0 05     BEQ bra_DF21
C - - - - - 0x001F2C 00:DF1C: 20 4D DF  JSR sub_DF4D
C - - - - - 0x001F2F 00:DF1F: A2 01     LDX #$01
bra_DF21:
loc_DF21:
C D 2 - - - 0x001F31 00:DF21: 86 52     STX ram_0052
C - - - - - 0x001F33 00:DF23: A2 03     LDX #$03
C - - - - - 0x001F35 00:DF25: AD 21 07  LDA ram_spr_T + $20
C - - - - - 0x001F38 00:DF28: C9 80     CMP #$80
C - - - - - 0x001F3A 00:DF2A: 90 11     BCC bra_DF3D
C - - - - - 0x001F3C 00:DF2C: 20 20 C6  JSR sub_C620
C - - - - - 0x001F3F 00:DF2F: 29 80     AND #con_btn_A
C - - - - - 0x001F41 00:DF31: F0 0A     BEQ bra_DF3D
C - - - - - 0x001F43 00:DF33: A5 24     LDA ram_0024
C - - - - - 0x001F45 00:DF35: D0 06     BNE bra_DF3D
C - - - - - 0x001F47 00:DF37: A9 01     LDA #$01
C - - - - - 0x001F49 00:DF39: 85 24     STA ram_0024
C - - - - - 0x001F4B 00:DF3B: A2 00     LDX #$00
bra_DF3D:
C - - - - - 0x001F4D 00:DF3D: 86 51     STX ram_0051
C - - - - - 0x001F4F 00:DF3F: AE 23 07  LDX ram_spr_X + $20
C - - - - - 0x001F52 00:DF42: AD 20 07  LDA ram_spr_Y + $20
C - - - - - 0x001F55 00:DF45: 18        CLC
C - - - - - 0x001F56 00:DF46: 69 04     ADC #$04
C - - - - - 0x001F58 00:DF48: A8        TAY
C - - - - - 0x001F59 00:DF49: 20 FC DF  JSR sub_DFFC
bra_DF4C_RTS:
C - - - - - 0x001F5C 00:DF4C: 60        RTS



sub_DF4D:
C - - - - - 0x001F5D 00:DF4D: A5 53     LDA ram_0053
C - - - - - 0x001F5F 00:DF4F: D0 04     BNE bra_DF55_RTS
C - - - - - 0x001F61 00:DF51: A9 01     LDA #$01
C - - - - - 0x001F63 00:DF53: 85 53     STA ram_0053
bra_DF55_RTS:
C - - - - - 0x001F65 00:DF55: 60        RTS



sub_DF56:
C - - - - - 0x001F66 00:DF56: A5 50     LDA ram_0050
C - - - - - 0x001F68 00:DF58: D0 3B     BNE bra_DF95_RTS
C - - - - - 0x001F6A 00:DF5A: AE 23 07  LDX ram_spr_X + $20
C - - - - - 0x001F6D 00:DF5D: AC 20 07  LDY ram_spr_Y + $20
C - - - - - 0x001F70 00:DF60: 20 56 E0  JSR sub_E056
C - - - - - 0x001F73 00:DF63: F0 30     BEQ bra_DF95_RTS
C - - - - - 0x001F75 00:DF65: C9 03     CMP #$03
C - - - - - 0x001F77 00:DF67: F0 2C     BEQ bra_DF95_RTS
C - - - - - 0x001F79 00:DF69: A6 4A     LDX ram_004A
C - - - - - 0x001F7B 00:DF6B: A4 4B     LDY ram_004B
C - - - - - 0x001F7D 00:DF6D: 20 FC DF  JSR sub_DFFC
C - - - - - 0x001F80 00:DF70: AE 23 07  LDX ram_spr_X + $20
C - - - - - 0x001F83 00:DF73: AC 20 07  LDY ram_spr_Y + $20
C - - - - - 0x001F86 00:DF76: 20 1D E0  JSR sub_E01D
C - - - - - 0x001F89 00:DF79: D0 1A     BNE bra_DF95_RTS
- - - - - - 0x001F8B 00:DF7B: AD 21 07  LDA ram_spr_T + $20
- - - - - - 0x001F8E 00:DF7E: C9 80     CMP #$80
- - - - - - 0x001F90 00:DF80: 90 07     BCC bra_DF89
- - - - - - 0x001F92 00:DF82: 29 FB     AND #$FB
- - - - - - 0x001F94 00:DF84: 09 02     ORA #$02
- - - - - - 0x001F96 00:DF86: 20 E8 DF  JSR sub_DFE8
bra_DF89:
- - - - - - 0x001F99 00:DF89: A9 01     LDA #$01
- - - - - - 0x001F9B 00:DF8B: 85 50     STA ram_0050
- - - - - - 0x001F9D 00:DF8D: A9 0B     LDA #$0B
- - - - - - 0x001F9F 00:DF8F: 85 51     STA ram_0051
- - - - - - 0x001FA1 00:DF91: A9 00     LDA #$00
- - - - - - 0x001FA3 00:DF93: 85 53     STA ram_0053
bra_DF95_RTS:
C - - - - - 0x001FA5 00:DF95: 60        RTS



sub_DF96:
C - - - - - 0x001FA6 00:DF96: A5 50     LDA ram_0050
C - - - - - 0x001FA8 00:DF98: D0 3A     BNE bra_DFD4_RTS
C - - - - - 0x001FAA 00:DF9A: AD 21 07  LDA ram_spr_T + $20
C - - - - - 0x001FAD 00:DF9D: C9 80     CMP #$80
C - - - - - 0x001FAF 00:DF9F: 90 33     BCC bra_DFD4_RTS
C - - - - - 0x001FB1 00:DFA1: 20 20 C6  JSR sub_C620
C - - - - - 0x001FB4 00:DFA4: 29 80     AND #con_btn_A
C - - - - - 0x001FB6 00:DFA6: F0 2C     BEQ bra_DFD4_RTS
C - - - - - 0x001FB8 00:DFA8: A5 24     LDA ram_0024
C - - - - - 0x001FBA 00:DFAA: D0 28     BNE bra_DFD4_RTS
C - - - - - 0x001FBC 00:DFAC: A9 01     LDA #$01
C - - - - - 0x001FBE 00:DFAE: 85 24     STA ram_0024
C - - - - - 0x001FC0 00:DFB0: AE 23 07  LDX ram_spr_X + $20
C - - - - - 0x001FC3 00:DFB3: AC 20 07  LDY ram_spr_Y + $20
C - - - - - 0x001FC6 00:DFB6: 20 1D E0  JSR sub_E01D
C - - - - - 0x001FC9 00:DFB9: C9 01     CMP #$01
C - - - - - 0x001FCB 00:DFBB: F0 08     BEQ bra_DFC5
C - - - - - 0x001FCD 00:DFBD: C9 02     CMP #$02
C - - - - - 0x001FCF 00:DFBF: F0 04     BEQ bra_DFC5
C - - - - - 0x001FD1 00:DFC1: C9 07     CMP #$07
C - - - - - 0x001FD3 00:DFC3: D0 0F     BNE bra_DFD4_RTS
bra_DFC5:
C - - - - - 0x001FD5 00:DFC5: A9 01     LDA #$01
C - - - - - 0x001FD7 00:DFC7: 85 50     STA ram_0050
C - - - - - 0x001FD9 00:DFC9: A9 03     LDA #$03
C - - - - - 0x001FDB 00:DFCB: 85 51     STA ram_0051
C - - - - - 0x001FDD 00:DFCD: A9 01     LDA #$01
C - - - - - 0x001FDF 00:DFCF: 85 48     STA ram_0048
C - - - - - 0x001FE1 00:DFD1: 20 0C F1  JSR sub_F10C
bra_DFD4_RTS:
C - - - - - 0x001FE4 00:DFD4: 60        RTS



tbl_DFD5:
- D 2 - - - 0x001FE5 00:DFD5: F0        .byte $F0   ; 00
- D 2 - - - 0x001FE6 00:DFD6: F8        .byte $F8   ; 01
- D 2 - - - 0x001FE7 00:DFD7: F8        .byte $F8   ; 02
- D 2 - - - 0x001FE8 00:DFD8: F8        .byte $F8   ; 03
- D 2 - - - 0x001FE9 00:DFD9: FB        .byte $FB   ; 04
- D 2 - - - 0x001FEA 00:DFDA: FD        .byte $FD   ; 05
- D 2 - - - 0x001FEB 00:DFDB: FE        .byte $FE   ; 06
- D 2 - - - 0x001FEC 00:DFDC: FE        .byte $FE   ; 07
- D 2 - - - 0x001FED 00:DFDD: FE        .byte $FE   ; 08
- D 2 - - - 0x001FEE 00:DFDE: FF        .byte $FF   ; 09
- D 2 - - - 0x001FEF 00:DFDF: 00        .byte $00   ; 0A
- D 2 - - - 0x001FF0 00:DFE0: 00        .byte $00   ; 0B
- D 2 - - - 0x001FF1 00:DFE1: 01        .byte $01   ; 0C
- D 2 - - - 0x001FF2 00:DFE2: 02        .byte $02   ; 0D
- D 2 - - - 0x001FF3 00:DFE3: 02        .byte $02   ; 0E
- D 2 - - - 0x001FF4 00:DFE4: 02        .byte $02   ; 0F
- D 2 - - - 0x001FF5 00:DFE5: 03        .byte $03   ; 10
- D 2 - - - 0x001FF6 00:DFE6: 05        .byte $05   ; 11
- D 2 - - - 0x001FF7 00:DFE7: 08        .byte $08   ; 12



sub_DFE8:
C - - - - - 0x001FF8 00:DFE8: AA        TAX
C - - - - - 0x001FF9 00:DFE9: 8E 21 07  STX ram_spr_T + $20
C - - - - - 0x001FFC 00:DFEC: E8        INX
C - - - - - 0x001FFD 00:DFED: 8E 25 07  STX ram_spr_T + $24
C - - - - - 0x002000 00:DFF0: 18        CLC
C - - - - - 0x002001 00:DFF1: 69 10     ADC #$10
C - - - - - 0x002003 00:DFF3: 8D 2D 07  STA ram_spr_T + $2C
C - - - - - 0x002006 00:DFF6: AA        TAX
C - - - - - 0x002007 00:DFF7: E8        INX
C - - - - - 0x002008 00:DFF8: 8E 29 07  STX ram_spr_T + $28
C - - - - - 0x00200B 00:DFFB: 60        RTS



sub_DFFC:
loc_DFFC:
C - - - - - 0x00200C 00:DFFC: 8E 23 07  STX ram_spr_X + $20
C - - - - - 0x00200F 00:DFFF: 8E 2F 07  STX ram_spr_X + $2C
C - - - - - 0x002012 00:E002: 8A        TXA
C - - - - - 0x002013 00:E003: 18        CLC
C - - - - - 0x002014 00:E004: 69 08     ADC #$08
C - - - - - 0x002016 00:E006: 8D 27 07  STA ram_spr_X + $24
C - - - - - 0x002019 00:E009: 8D 2B 07  STA ram_spr_X + $28
C - - - - - 0x00201C 00:E00C: 8C 20 07  STY ram_spr_Y + $20
C - - - - - 0x00201F 00:E00F: 8C 24 07  STY ram_spr_Y + $24
C - - - - - 0x002022 00:E012: 98        TYA
C - - - - - 0x002023 00:E013: 18        CLC
C - - - - - 0x002024 00:E014: 69 08     ADC #$08
C - - - - - 0x002026 00:E016: 8D 28 07  STA ram_spr_Y + $28
C - - - - - 0x002029 00:E019: 8D 2C 07  STA ram_spr_Y + $2C
C - - - - - 0x00202C 00:E01C: 60        RTS



sub_E01D:
C - - - - - 0x00202D 00:E01D: A5 53     LDA ram_0053
C - - - - - 0x00202F 00:E01F: F0 21     BEQ bra_E042
C - - - - - 0x002031 00:E021: AD 21 07  LDA ram_spr_T + $20
C - - - - - 0x002034 00:E024: C9 80     CMP #$80
C - - - - - 0x002036 00:E026: 90 1A     BCC bra_E042
C - - - - - 0x002038 00:E028: A5 52     LDA ram_0052
C - - - - - 0x00203A 00:E02A: C9 03     CMP #$03
C - - - - - 0x00203C 00:E02C: B0 14     BCS bra_E042
C - - - - - 0x00203E 00:E02E: C9 02     CMP #$02
C - - - - - 0x002040 00:E030: D0 07     BNE bra_E039
C - - - - - 0x002042 00:E032: 8A        TXA
C - - - - - 0x002043 00:E033: 18        CLC
C - - - - - 0x002044 00:E034: 69 0B     ADC #$0B
C - - - - - 0x002046 00:E036: 4C 3D E0  JMP loc_E03D
bra_E039:
C - - - - - 0x002049 00:E039: 8A        TXA
C - - - - - 0x00204A 00:E03A: 18        CLC
C - - - - - 0x00204B 00:E03B: 69 04     ADC #$04
loc_E03D:
C D 3 - - - 0x00204D 00:E03D: 85 28     STA ram_0028
C - - - - - 0x00204F 00:E03F: 4C 48 E0  JMP loc_E048
bra_E042:
sub_E042:
C - - - - - 0x002052 00:E042: 8A        TXA
C - - - - - 0x002053 00:E043: 18        CLC
C - - - - - 0x002054 00:E044: 69 08     ADC #$08
C - - - - - 0x002056 00:E046: 85 28     STA ram_0028
loc_E048:
C D 3 - - - 0x002058 00:E048: 98        TYA
C - - - - - 0x002059 00:E049: 38        SEC
C - - - - - 0x00205A 00:E04A: E9 20     SBC #$20
C - - - - - 0x00205C 00:E04C: 85 29     STA ram_0029
C - - - - - 0x00205E 00:E04E: 20 CF E0  JSR sub_E0CF
C - - - - - 0x002061 00:E051: A0 10     LDY #$10
C - - - - - 0x002063 00:E053: B1 00     LDA (ram_0000),Y
C - - - - - 0x002065 00:E055: 60        RTS



sub_E056:
C - - - - - 0x002066 00:E056: A5 53     LDA ram_0053
C - - - - - 0x002068 00:E058: F0 21     BEQ bra_E07B
C - - - - - 0x00206A 00:E05A: AD 21 07  LDA ram_spr_T + $20
C - - - - - 0x00206D 00:E05D: C9 80     CMP #$80
C - - - - - 0x00206F 00:E05F: 90 1A     BCC bra_E07B
C - - - - - 0x002071 00:E061: A5 52     LDA ram_0052
C - - - - - 0x002073 00:E063: C9 03     CMP #$03
C - - - - - 0x002075 00:E065: B0 14     BCS bra_E07B
C - - - - - 0x002077 00:E067: C9 02     CMP #$02
C - - - - - 0x002079 00:E069: D0 07     BNE bra_E072
C - - - - - 0x00207B 00:E06B: 8A        TXA
C - - - - - 0x00207C 00:E06C: 18        CLC
C - - - - - 0x00207D 00:E06D: 69 06     ADC #$06
C - - - - - 0x00207F 00:E06F: 4C 76 E0  JMP loc_E076
bra_E072:
C - - - - - 0x002082 00:E072: 8A        TXA
C - - - - - 0x002083 00:E073: 18        CLC
C - - - - - 0x002084 00:E074: 69 09     ADC #$09
loc_E076:
C D 3 - - - 0x002086 00:E076: 85 28     STA ram_0028
C - - - - - 0x002088 00:E078: 4C 81 E0  JMP loc_E081
bra_E07B:
sub_E07B:
C - - - - - 0x00208B 00:E07B: 8A        TXA
C - - - - - 0x00208C 00:E07C: 18        CLC
C - - - - - 0x00208D 00:E07D: 69 08     ADC #$08
C - - - - - 0x00208F 00:E07F: 85 28     STA ram_0028
loc_E081:
C D 3 - - - 0x002091 00:E081: 98        TYA
C - - - - - 0x002092 00:E082: 38        SEC
C - - - - - 0x002093 00:E083: E9 18     SBC #$18
C - - - - - 0x002095 00:E085: 85 29     STA ram_0029
C - - - - - 0x002097 00:E087: 20 CF E0  JSR sub_E0CF
C - - - - - 0x00209A 00:E08A: A0 00     LDY #$00
C - - - - - 0x00209C 00:E08C: B1 00     LDA (ram_0000),Y
C - - - - - 0x00209E 00:E08E: 60        RTS



sub_E08F:
C - - - - - 0x00209F 00:E08F: A5 5B     LDA ram_005B
C - - - - - 0x0020A1 00:E091: F0 E8     BEQ bra_E07B
C - - - - - 0x0020A3 00:E093: A5 5A     LDA ram_005A
C - - - - - 0x0020A5 00:E095: C9 03     CMP #$03
C - - - - - 0x0020A7 00:E097: B0 E2     BCS bra_E07B
C - - - - - 0x0020A9 00:E099: C9 02     CMP #$02
C - - - - - 0x0020AB 00:E09B: D0 07     BNE bra_E0A4
C - - - - - 0x0020AD 00:E09D: 8A        TXA
C - - - - - 0x0020AE 00:E09E: 18        CLC
C - - - - - 0x0020AF 00:E09F: 69 06     ADC #$06
C - - - - - 0x0020B1 00:E0A1: 4C 76 E0  JMP loc_E076
bra_E0A4:
C - - - - - 0x0020B4 00:E0A4: 8A        TXA
C - - - - - 0x0020B5 00:E0A5: 18        CLC
C - - - - - 0x0020B6 00:E0A6: 69 0A     ADC #$0A
C - - - - - 0x0020B8 00:E0A8: 4C 76 E0  JMP loc_E076



sub_E0AB:
C - - - - - 0x0020BB 00:E0AB: 8A        TXA
C - - - - - 0x0020BC 00:E0AC: 18        CLC
C - - - - - 0x0020BD 00:E0AD: 69 08     ADC #$08
C - - - - - 0x0020BF 00:E0AF: 85 28     STA ram_0028
C - - - - - 0x0020C1 00:E0B1: 98        TYA
C - - - - - 0x0020C2 00:E0B2: 38        SEC
C - - - - - 0x0020C3 00:E0B3: E9 28     SBC #$28
C - - - - - 0x0020C5 00:E0B5: 85 29     STA ram_0029
C - - - - - 0x0020C7 00:E0B7: 20 CF E0  JSR sub_E0CF
C - - - - - 0x0020CA 00:E0BA: A0 00     LDY #$00
C - - - - - 0x0020CC 00:E0BC: B1 00     LDA (ram_0000),Y
C - - - - - 0x0020CE 00:E0BE: 60        RTS



sub_E0BF:
C - - - - - 0x0020CF 00:E0BF: 20 7B E0  JSR sub_E07B
C - - - - - 0x0020D2 00:E0C2: C6 00     DEC ram_0000
C - - - - - 0x0020D4 00:E0C4: B1 00     LDA (ram_0000),Y
C - - - - - 0x0020D6 00:E0C6: 60        RTS



sub_E0C7:
C - - - - - 0x0020D7 00:E0C7: 20 7B E0  JSR sub_E07B
C - - - - - 0x0020DA 00:E0CA: E6 00     INC ram_0000
C - - - - - 0x0020DC 00:E0CC: B1 00     LDA (ram_0000),Y
C - - - - - 0x0020DE 00:E0CE: 60        RTS



sub_E0CF:
C - - - - - 0x0020DF 00:E0CF: 20 DC E8  JSR sub_E8DC
C - - - - - 0x0020E2 00:E0D2: 20 6D E3  JSR sub_E36D
C - - - - - 0x0020E5 00:E0D5: 60        RTS



sub_E0D6:
C - - - - - 0x0020E6 00:E0D6: A5 44     LDA ram_0044
C - - - - - 0x0020E8 00:E0D8: 29 02     AND #$02
C - - - - - 0x0020EA 00:E0DA: D0 35     BNE bra_E111
C - - - - - 0x0020EC 00:E0DC: A5 44     LDA ram_0044
C - - - - - 0x0020EE 00:E0DE: 29 01     AND #$01
C - - - - - 0x0020F0 00:E0E0: D0 41     BNE bra_E123
C - - - - - 0x0020F2 00:E0E2: A5 48     LDA ram_0048
C - - - - - 0x0020F4 00:E0E4: D0 0C     BNE bra_E0F2_RTS
C - - - - - 0x0020F6 00:E0E6: A5 44     LDA ram_0044
C - - - - - 0x0020F8 00:E0E8: 29 04     AND #$04
C - - - - - 0x0020FA 00:E0EA: D0 16     BNE bra_E102
C - - - - - 0x0020FC 00:E0EC: A5 44     LDA ram_0044
C - - - - - 0x0020FE 00:E0EE: 29 08     AND #$08
C - - - - - 0x002100 00:E0F0: D0 01     BNE bra_E0F3
bra_E0F2_RTS:
C - - - - - 0x002102 00:E0F2: 60        RTS
bra_E0F3:
C - - - - - 0x002103 00:E0F3: 88        DEY
C - - - - - 0x002104 00:E0F4: 88        DEY
C - - - - - 0x002105 00:E0F5: A5 45     LDA ram_0045
C - - - - - 0x002107 00:E0F7: 29 C7     AND #$C7
C - - - - - 0x002109 00:E0F9: 09 08     ORA #$08
C - - - - - 0x00210B 00:E0FB: 85 45     STA ram_0045
C - - - - - 0x00210D 00:E0FD: A9 08     LDA #$08
C - - - - - 0x00210F 00:E0FF: 85 46     STA ram_0046
C - - - - - 0x002111 00:E101: 60        RTS
bra_E102:
C - - - - - 0x002112 00:E102: C8        INY
C - - - - - 0x002113 00:E103: C8        INY
C - - - - - 0x002114 00:E104: A5 45     LDA ram_0045
C - - - - - 0x002116 00:E106: 29 C7     AND #$C7
C - - - - - 0x002118 00:E108: 09 00     ORA #$00
C - - - - - 0x00211A 00:E10A: 85 45     STA ram_0045
C - - - - - 0x00211C 00:E10C: A9 04     LDA #$04
C - - - - - 0x00211E 00:E10E: 85 46     STA ram_0046
C - - - - - 0x002120 00:E110: 60        RTS
bra_E111:
C - - - - - 0x002121 00:E111: 8A        TXA
C - - - - - 0x002122 00:E112: 38        SEC
C - - - - - 0x002123 00:E113: E5 47     SBC ram_0047
C - - - - - 0x002125 00:E115: AA        TAX
C - - - - - 0x002126 00:E116: A5 45     LDA ram_0045
C - - - - - 0x002128 00:E118: 29 C7     AND #$C7
C - - - - - 0x00212A 00:E11A: 09 28     ORA #$28
C - - - - - 0x00212C 00:E11C: 85 45     STA ram_0045
C - - - - - 0x00212E 00:E11E: A9 02     LDA #$02
C - - - - - 0x002130 00:E120: 85 46     STA ram_0046
C - - - - - 0x002132 00:E122: 60        RTS
bra_E123:
C - - - - - 0x002133 00:E123: 8A        TXA
C - - - - - 0x002134 00:E124: 18        CLC
C - - - - - 0x002135 00:E125: 65 47     ADC ram_0047
C - - - - - 0x002137 00:E127: AA        TAX
C - - - - - 0x002138 00:E128: A5 45     LDA ram_0045
C - - - - - 0x00213A 00:E12A: 29 C7     AND #$C7
C - - - - - 0x00213C 00:E12C: 09 20     ORA #$20
C - - - - - 0x00213E 00:E12E: 85 45     STA ram_0045
C - - - - - 0x002140 00:E130: A9 01     LDA #$01
C - - - - - 0x002142 00:E132: 85 46     STA ram_0046
C - - - - - 0x002144 00:E134: 60        RTS



sub_E135:
C - - - - - 0x002145 00:E135: A2 00     LDX #$00
bra_E137_loop:
C - - - - - 0x002147 00:E137: BD AD E3  LDA tbl_E3AD,X
C - - - - - 0x00214A 00:E13A: 9D 80 02  STA ram_0280,X
C - - - - - 0x00214D 00:E13D: E8        INX
C - - - - - 0x00214E 00:E13E: E0 20     CPX #$20
C - - - - - 0x002150 00:E140: D0 F5     BNE bra_E137_loop
C - - - - - 0x002152 00:E142: A9 01     LDA #$01
C - - - - - 0x002154 00:E144: 85 8E     STA ram_008E
C - - - - - 0x002156 00:E146: A9 01     LDA #$01    ; bzk optimize, loading same A
C - - - - - 0x002158 00:E148: 85 E0     STA ram_00E0
C - - - - - 0x00215A 00:E14A: A9 01     LDA #$01    ; bzk optimize, loading same A
C - - - - - 0x00215C 00:E14C: 85 20     STA ram_current_round
C - - - - - 0x00215E 00:E14E: A9 07     LDA #$07
C - - - - - 0x002160 00:E150: 85 28     STA ram_0028
C - - - - - 0x002162 00:E152: A9 05     LDA #$05
C - - - - - 0x002164 00:E154: 85 29     STA ram_0029
C - - - - - 0x002166 00:E156: A9 00     LDA #$00
C - - - - - 0x002168 00:E158: 85 2A     STA ram_002A
C - - - - - 0x00216A 00:E15A: 20 4D EF  JSR sub_EF4D_clear_nametable
C - - - - - 0x00216D 00:E15D: 20 75 E9  JSR sub_E975
C - - - - - 0x002170 00:E160: 20 CD E3  JSR sub_E3CD
C - - - - - 0x002173 00:E163: 20 0F E3  JSR sub_E30F
C - - - - - 0x002176 00:E166: 20 41 E2  JSR sub_E241
loc_E169_loop:
bra_E169_loop:
C D 3 - - - 0x002179 00:E169: 20 75 E9  JSR sub_E975
C - - - - - 0x00217C 00:E16C: 20 82 E3  JSR sub_E382
C - - - - - 0x00217F 00:E16F: A5 9E     LDA ram_009E
C - - - - - 0x002181 00:E171: D0 3B     BNE bra_E1AE
C - - - - - 0x002183 00:E173: A5 9F     LDA ram_009F
C - - - - - 0x002185 00:E175: D0 37     BNE bra_E1AE
C - - - - - 0x002187 00:E177: A9 80     LDA #$80
C - - - - - 0x002189 00:E179: 85 00     STA ram_0000
C - - - - - 0x00218B 00:E17B: A0 00     LDY #$00
bra_E17D_loop:  ; check all 8 buttons
C - - - - - 0x00218D 00:E17D: A5 1A     LDA ram_btn_hold
C - - - - - 0x00218F 00:E17F: 25 00     AND ram_0000
C - - - - - 0x002191 00:E181: D0 09     BNE bra_E18C
C - - - - - 0x002193 00:E183: C8        INY
C - - - - - 0x002194 00:E184: C8        INY
C - - - - - 0x002195 00:E185: 46 00     LSR ram_0000
C - - - - - 0x002197 00:E187: 90 F4     BCC bra_E17D_loop
C - - - - - 0x002199 00:E189: 4C 9F E1  JMP loc_E19F    ; nothing pressed
bra_E18C:
C - - - - - 0x00219C 00:E18C: B9 C1 E1  LDA tbl_E1C1_level_editor_control,Y
C - - - - - 0x00219F 00:E18F: 85 00     STA ram_0000
C - - - - - 0x0021A1 00:E191: B9 C2 E1  LDA tbl_E1C1_level_editor_control + $01,Y
C - - - - - 0x0021A4 00:E194: 85 01     STA ram_0001
C - - - - - 0x0021A6 00:E196: 20 9C E1  JSR sub_E19C
C - - - - - 0x0021A9 00:E199: 4C 9F E1  JMP loc_E19F

sub_E19C:
C - - - - - 0x0021AC 00:E19C: 6C 00 00  JMP (ram_0000)

loc_E19F:
C D 3 - - - 0x0021AF 00:E19F: A5 1B     LDA ram_btn_hold + $01
C - - - - - 0x0021B1 00:E1A1: 29 80     AND #con_btn_A
C - - - - - 0x0021B3 00:E1A3: F0 09     BEQ bra_E1AE
- - - - - - 0x0021B5 00:E1A5: A5 1B     LDA ram_btn_hold + $01
- - - - - - 0x0021B7 00:E1A7: 29 40     AND #con_btn_B
- - - - - - 0x0021B9 00:E1A9: F0 03     BEQ bra_E1AE
- - - - - - 0x0021BB 00:E1AB: 20 02 E2  JSR sub_E202
bra_E1AE:
C - - - - - 0x0021BE 00:E1AE: A5 1A     LDA ram_btn_hold
C - - - - - 0x0021C0 00:E1B0: D0 B7     BNE bra_E169_loop
C - - - - - 0x0021C2 00:E1B2: A5 1B     LDA ram_btn_hold + $01
C - - - - - 0x0021C4 00:E1B4: D0 B3     BNE bra_E169_loop
C - - - - - 0x0021C6 00:E1B6: A9 00     LDA #$00
C - - - - - 0x0021C8 00:E1B8: 85 9E     STA ram_009E
C - - - - - 0x0021CA 00:E1BA: A9 00     LDA #$00    ; bzk optimize, loading same A
C - - - - - 0x0021CC 00:E1BC: 85 9F     STA ram_009F
C - - - - - 0x0021CE 00:E1BE: 4C 69 E1  JMP loc_E169_loop



tbl_E1C1_level_editor_control:   ; press buttons to do something in the editor
- D 3 - - - 0x0021D1 00:E1C1: 9D E2     .word ofs_000_E29D_00_A
- D 3 - - - 0x0021D3 00:E1C3: 15 E2     .word ofs_000_E215_01_B
- D 3 - - - 0x0021D5 00:E1C5: 2E E2     .word ofs_000_E22E_02_Select
- D 3 - - - 0x0021D7 00:E1C7: D1 E1     .word ofs_000_E1D1_03_Start
- D 3 - - - 0x0021D9 00:E1C9: D7 E2     .word ofs_000_E2D7_04_Up
- D 3 - - - 0x0021DB 00:E1CB: E5 E2     .word ofs_000_E2E5_05_Down
- D 3 - - - 0x0021DD 00:E1CD: F3 E2     .word ofs_000_E2F3_06_Left
- D 3 - - - 0x0021DF 00:E1CF: 01 E3     .word ofs_000_E301_07_Right



ofs_000_E1D1_03_Start:
C - - J - - 0x0021E1 00:E1D1: A9 00     LDA #$00
C - - - - - 0x0021E3 00:E1D3: 85 8E     STA ram_008E
C - - - - - 0x0021E5 00:E1D5: 68        PLA
C - - - - - 0x0021E6 00:E1D6: 68        PLA
C - - - - - 0x0021E7 00:E1D7: 60        RTS


; bzk garbage
- - - - - - 0x0021E8 00:E1D8: A6 20     LDX ram_current_round
- - - - - - 0x0021EA 00:E1DA: E0 01     CPX #$01
- - - - - - 0x0021EC 00:E1DC: D0 02     BNE bra_E1E0
- - - - - - 0x0021EE 00:E1DE: A2 00     LDX #$00
bra_E1E0:
- - - - - - 0x0021F0 00:E1E0: E8        INX
- - - - - - 0x0021F1 00:E1E1: 86 20     STX ram_current_round
- - - - - - 0x0021F3 00:E1E3: A9 01     LDA #$01
- - - - - - 0x0021F5 00:E1E5: 85 9F     STA ram_009F
- - - - - - 0x0021F7 00:E1E7: 20 75 E9  JSR sub_E975
- - - - - - 0x0021FA 00:E1EA: 4C B1 E2  JMP loc_E2B1
- - - - - - 0x0021FD 00:E1ED: A6 20     LDX ram_current_round
- - - - - - 0x0021FF 00:E1EF: E0 01     CPX #$01
- - - - - - 0x002201 00:E1F1: D0 02     BNE bra_E1F5
- - - - - - 0x002203 00:E1F3: A2 02     LDX #$02
bra_E1F5:
- - - - - - 0x002205 00:E1F5: CA        DEX
- - - - - - 0x002206 00:E1F6: 86 20     STX ram_current_round
- - - - - - 0x002208 00:E1F8: A9 01     LDA #$01
- - - - - - 0x00220A 00:E1FA: 85 9F     STA ram_009F
- - - - - - 0x00220C 00:E1FC: 20 75 E9  JSR sub_E975
- - - - - - 0x00220F 00:E1FF: 4C B1 E2  JMP loc_E2B1



sub_E202:
- - - - - - 0x002212 00:E202: 20 75 E9  JSR sub_E975
- - - - - - 0x002215 00:E205: A2 00     LDX #$00
- - - - - - 0x002217 00:E207: 8A        TXA
bra_E208_loop:  ; clear 0600-06FF
- - - - - - 0x002218 00:E208: 9D 00 06  STA ram_0600,X
- - - - - - 0x00221B 00:E20B: E8        INX
- - - - - - 0x00221C 00:E20C: D0 FA     BNE bra_E208_loop
- - - - - - 0x00221E 00:E20E: A9 01     LDA #$01
- - - - - - 0x002220 00:E210: 85 9F     STA ram_009F
- - - - - - 0x002222 00:E212: 4C B1 E2  JMP loc_E2B1



ofs_000_E215_01_B:
C - - J - - 0x002225 00:E215: A5 1A     LDA ram_btn_hold
C - - - - - 0x002227 00:E217: 29 0F     AND #con_btns_Dpad
C - - - - - 0x002229 00:E219: D0 13     BNE bra_E22E
C - - - - - 0x00222B 00:E21B: A6 2A     LDX ram_002A
C - - - - - 0x00222D 00:E21D: E0 09     CPX #$09
C - - - - - 0x00222F 00:E21F: D0 02     BNE bra_E223
C - - - - - 0x002231 00:E221: A2 FF     LDX #$FF
bra_E223:
C - - - - - 0x002233 00:E223: E8        INX
C - - - - - 0x002234 00:E224: E0 04     CPX #$04
C - - - - - 0x002236 00:E226: D0 01     BNE bra_E229
C - - - - - 0x002238 00:E228: E8        INX
bra_E229:
C - - - - - 0x002239 00:E229: 86 2A     STX ram_002A
C - - - - - 0x00223B 00:E22B: 4C 41 E2  JMP loc_E241
bra_E22E:
ofs_000_E22E_02_Select:
C - - J - - 0x00223E 00:E22E: A6 2A     LDX ram_002A
C - - - - - 0x002240 00:E230: E0 00     CPX #$00    ; bzk optimize, no need for CPX 00
C - - - - - 0x002242 00:E232: D0 02     BNE bra_E236
C - - - - - 0x002244 00:E234: A2 0A     LDX #$0A
bra_E236:
C - - - - - 0x002246 00:E236: CA        DEX
C - - - - - 0x002247 00:E237: E0 04     CPX #$04
C - - - - - 0x002249 00:E239: D0 01     BNE bra_E23C
C - - - - - 0x00224B 00:E23B: CA        DEX
bra_E23C:
C - - - - - 0x00224C 00:E23C: 86 2A     STX ram_002A
C - - - - - 0x00224E 00:E23E: 4C 41 E2  JMP loc_E241



sub_E241:
loc_E241:
C D 3 - - - 0x002251 00:E241: A5 2A     LDA ram_002A
C - - - - - 0x002253 00:E243: D0 0B     BNE bra_E250_not_empty_block
C - - - - - 0x002255 00:E245: A9 ED     LDA #< tbl_E8ED_empty_block_data
C - - - - - 0x002257 00:E247: 85 00     STA ram_0000
C - - - - - 0x002259 00:E249: A9 E8     LDA #> tbl_E8ED_empty_block_data
C - - - - - 0x00225B 00:E24B: 85 01     STA ram_0001
C - - - - - 0x00225D 00:E24D: 4C 60 E2  JMP loc_E260_read_block_data
bra_E250_not_empty_block:
C - - - - - 0x002260 00:E250: A5 2A     LDA ram_002A    ; 002A = 01+
C - - - - - 0x002262 00:E252: 0A        ASL
C - - - - - 0x002263 00:E253: 0A        ASL
C - - - - - 0x002264 00:E254: 0A        ASL
C - - - - - 0x002265 00:E255: 18        CLC
C - - - - - 0x002266 00:E256: 69 F5     ADC #< tbl_E8F5_block_data
C - - - - - 0x002268 00:E258: 85 00     STA ram_0000
C - - - - - 0x00226A 00:E25A: A9 E8     LDA #> tbl_E8F5_block_data
C - - - - - 0x00226C 00:E25C: 69 00     ADC #$00
C - - - - - 0x00226E 00:E25E: 85 01     STA ram_0001
loc_E260_read_block_data:
C D 3 - - - 0x002270 00:E260: A0 00     LDY #$00
C - - - - - 0x002272 00:E262: B1 00     LDA (ram_0000),Y
C - - - - - 0x002274 00:E264: 8D 91 02  STA ram_0291
C - - - - - 0x002277 00:E267: C8        INY
C - - - - - 0x002278 00:E268: B1 00     LDA (ram_0000),Y
C - - - - - 0x00227A 00:E26A: 8D 95 02  STA ram_0295
C - - - - - 0x00227D 00:E26D: C8        INY
C - - - - - 0x00227E 00:E26E: B1 00     LDA (ram_0000),Y
C - - - - - 0x002280 00:E270: 8D 99 02  STA ram_0299
C - - - - - 0x002283 00:E273: C8        INY
C - - - - - 0x002284 00:E274: B1 00     LDA (ram_0000),Y
C - - - - - 0x002286 00:E276: 8D 9D 02  STA ram_029D
C - - - - - 0x002289 00:E279: A2 02     LDX #$02
C - - - - - 0x00228B 00:E27B: A5 2A     LDA ram_002A
C - - - - - 0x00228D 00:E27D: C9 08     CMP #$08
C - - - - - 0x00228F 00:E27F: 90 03     BCC bra_E284
C - - - - - 0x002291 00:E281: 29 01     AND #$01
C - - - - - 0x002293 00:E283: AA        TAX
bra_E284:
C - - - - - 0x002294 00:E284: 8A        TXA
C - - - - - 0x002295 00:E285: 8D 92 02  STA ram_0292
C - - - - - 0x002298 00:E288: 8D 96 02  STA ram_0296
C - - - - - 0x00229B 00:E28B: 8D 9A 02  STA ram_029A
C - - - - - 0x00229E 00:E28E: 8D 9E 02  STA ram_029E
C - - - - - 0x0022A1 00:E291: 20 9C E2  JSR sub_E29C_RTS
C - - - - - 0x0022A4 00:E294: 20 70 C2  JSR sub_C270
C - - - - - 0x0022A7 00:E297: A9 01     LDA #$01
C - - - - - 0x0022A9 00:E299: 85 9E     STA ram_009E
C - - - - - 0x0022AB 00:E29B: 60        RTS



sub_E29C_RTS:
C - - - - - 0x0022AC 00:E29C: 60        RTS



ofs_000_E29D_00_A:
C - - J - - 0x0022AD 00:E29D: 20 75 E9  JSR sub_E975
C - - - - - 0x0022B0 00:E2A0: 20 6D E3  JSR sub_E36D
C - - - - - 0x0022B3 00:E2A3: A0 00     LDY #$00
C - - - - - 0x0022B5 00:E2A5: B1 00     LDA (ram_0000),Y
C - - - - - 0x0022B7 00:E2A7: 85 9D     STA ram_009D
C - - - - - 0x0022B9 00:E2A9: A5 2A     LDA ram_002A
C - - - - - 0x0022BB 00:E2AB: 91 00     STA (ram_0000),Y
C - - - - - 0x0022BD 00:E2AD: A9 01     LDA #$01
C - - - - - 0x0022BF 00:E2AF: 85 9E     STA ram_009E
loc_E2B1:
C - - - - - 0x0022C1 00:E2B1: 20 62 C2  JSR sub_C262_check_round_info
C - - - - - 0x0022C4 00:E2B4: D0 14     BNE bra_E2CA
C - - - - - 0x0022C6 00:E2B6: A9 00     LDA #$00
C - - - - - 0x0022C8 00:E2B8: 8D 42 06  STA ram_0642
C - - - - - 0x0022CB 00:E2BB: 8D 43 06  STA ram_0643
C - - - - - 0x0022CE 00:E2BE: 8D 44 06  STA ram_0644
C - - - - - 0x0022D1 00:E2C1: 8D 52 06  STA ram_0652
C - - - - - 0x0022D4 00:E2C4: 8D 53 06  STA ram_0653
C - - - - - 0x0022D7 00:E2C7: 8D 54 06  STA ram_0654
bra_E2CA:
C - - - - - 0x0022DA 00:E2CA: 20 CD E3  JSR sub_E3CD
C - - - - - 0x0022DD 00:E2CD: 20 13 EA  JSR sub_EA13
C - - - - - 0x0022E0 00:E2D0: 20 9C E2  JSR sub_E29C_RTS
C - - - - - 0x0022E3 00:E2D3: 20 70 C2  JSR sub_C270
C - - - - - 0x0022E6 00:E2D6: 60        RTS



ofs_000_E2D7_04_Up:
C - - J - - 0x0022E7 00:E2D7: A6 29     LDX ram_0029
C - - - - - 0x0022E9 00:E2D9: E0 02     CPX #$02
C - - - - - 0x0022EB 00:E2DB: D0 02     BNE bra_E2DF
C - - - - - 0x0022ED 00:E2DD: A2 0C     LDX #$0C
bra_E2DF:
C - - - - - 0x0022EF 00:E2DF: CA        DEX
C - - - - - 0x0022F0 00:E2E0: 86 29     STX ram_0029
C - - - - - 0x0022F2 00:E2E2: 4C 0F E3  JMP loc_E30F



ofs_000_E2E5_05_Down:
C - - J - - 0x0022F5 00:E2E5: A6 29     LDX ram_0029
C - - - - - 0x0022F7 00:E2E7: E0 0B     CPX #$0B
C - - - - - 0x0022F9 00:E2E9: D0 02     BNE bra_E2ED
C - - - - - 0x0022FB 00:E2EB: A2 01     LDX #$01
bra_E2ED:
C - - - - - 0x0022FD 00:E2ED: E8        INX
C - - - - - 0x0022FE 00:E2EE: 86 29     STX ram_0029
C - - - - - 0x002300 00:E2F0: 4C 0F E3  JMP loc_E30F



ofs_000_E2F3_06_Left:
C - - J - - 0x002303 00:E2F3: A6 28     LDX ram_0028
C - - - - - 0x002305 00:E2F5: E0 00     CPX #$00    ; bzk optimize, no need for CPX 00
C - - - - - 0x002307 00:E2F7: D0 02     BNE bra_E2FB
C - - - - - 0x002309 00:E2F9: A2 10     LDX #$10
bra_E2FB:
C - - - - - 0x00230B 00:E2FB: CA        DEX
C - - - - - 0x00230C 00:E2FC: 86 28     STX ram_0028
C - - - - - 0x00230E 00:E2FE: 4C 0F E3  JMP loc_E30F



ofs_000_E301_07_Right:
C - - J - - 0x002311 00:E301: A6 28     LDX ram_0028
C - - - - - 0x002313 00:E303: E0 0F     CPX #$0F
C - - - - - 0x002315 00:E305: D0 02     BNE bra_E309
- - - - - - 0x002317 00:E307: A2 FF     LDX #$FF
bra_E309:
C - - - - - 0x002319 00:E309: E8        INX
C - - - - - 0x00231A 00:E30A: 86 28     STX ram_0028
C - - - - - 0x00231C 00:E30C: 4C 0F E3  JMP loc_E30F



sub_E30F:
loc_E30F:
C D 3 - - - 0x00231F 00:E30F: A5 28     LDA ram_0028
C - - - - - 0x002321 00:E311: 85 40     STA ram_0040
C - - - - - 0x002323 00:E313: A5 29     LDA ram_0029
C - - - - - 0x002325 00:E315: 85 42     STA ram_0042
C - - - - - 0x002327 00:E317: 06 40     ASL ram_0040
C - - - - - 0x002329 00:E319: 06 42     ASL ram_0042
C - - - - - 0x00232B 00:E31B: 20 64 E3  JSR sub_E364
C - - - - - 0x00232E 00:E31E: 8C 80 02  STY ram_0280
C - - - - - 0x002331 00:E321: 8E 83 02  STX ram_0283
C - - - - - 0x002334 00:E324: 8C 90 02  STY ram_0290
C - - - - - 0x002337 00:E327: 8E 93 02  STX ram_0293
C - - - - - 0x00233A 00:E32A: E6 40     INC ram_0040
C - - - - - 0x00233C 00:E32C: 20 64 E3  JSR sub_E364
C - - - - - 0x00233F 00:E32F: 8C 84 02  STY ram_0284
C - - - - - 0x002342 00:E332: 8E 87 02  STX ram_0287
C - - - - - 0x002345 00:E335: 8C 94 02  STY ram_0294
C - - - - - 0x002348 00:E338: 8E 97 02  STX ram_0297
C - - - - - 0x00234B 00:E33B: E6 42     INC ram_0042
C - - - - - 0x00234D 00:E33D: 20 64 E3  JSR sub_E364
C - - - - - 0x002350 00:E340: 8C 8C 02  STY ram_028C
C - - - - - 0x002353 00:E343: 8E 8F 02  STX ram_028F
C - - - - - 0x002356 00:E346: 8C 9C 02  STY ram_029C
C - - - - - 0x002359 00:E349: 8E 9F 02  STX ram_029F
C - - - - - 0x00235C 00:E34C: C6 40     DEC ram_0040
C - - - - - 0x00235E 00:E34E: 20 64 E3  JSR sub_E364
C - - - - - 0x002361 00:E351: 8C 88 02  STY ram_0288
C - - - - - 0x002364 00:E354: 8E 8B 02  STX ram_028B
C - - - - - 0x002367 00:E357: 8C 98 02  STY ram_0298
C - - - - - 0x00236A 00:E35A: 8E 9B 02  STX ram_029B
C - - - - - 0x00236D 00:E35D: C6 42     DEC ram_0042
C - - - - - 0x00236F 00:E35F: A9 01     LDA #$01
C - - - - - 0x002371 00:E361: 85 9E     STA ram_009E
C - - - - - 0x002373 00:E363: 60        RTS



sub_E364:
C - - - - - 0x002374 00:E364: 20 CF E8  JSR sub_E8CF
C - - - - - 0x002377 00:E367: 98        TYA
C - - - - - 0x002378 00:E368: 18        CLC
C - - - - - 0x002379 00:E369: 69 20     ADC #$20
C - - - - - 0x00237B 00:E36B: A8        TAY
C - - - - - 0x00237C 00:E36C: 60        RTS



sub_E36D:
C - - - - - 0x00237D 00:E36D: A5 29     LDA ram_0029
C - - - - - 0x00237F 00:E36F: 0A        ASL
C - - - - - 0x002380 00:E370: 0A        ASL
C - - - - - 0x002381 00:E371: 0A        ASL
C - - - - - 0x002382 00:E372: 0A        ASL
C - - - - - 0x002383 00:E373: 18        CLC
C - - - - - 0x002384 00:E374: 69 40     ADC #$40
C - - - - - 0x002386 00:E376: 18        CLC
C - - - - - 0x002387 00:E377: 65 28     ADC ram_0028
C - - - - - 0x002389 00:E379: 85 00     STA ram_0000
C - - - - - 0x00238B 00:E37B: A9 06     LDA #$06
C - - - - - 0x00238D 00:E37D: 69 00     ADC #$00
C - - - - - 0x00238F 00:E37F: 85 01     STA ram_0001
C - - - - - 0x002391 00:E381: 60        RTS



sub_E382:
C - - - - - 0x002392 00:E382: A2 00     LDX #$00
C - - - - - 0x002394 00:E384: A0 00     LDY #$00
bra_E386_loop:
C - - - - - 0x002396 00:E386: B9 80 02  LDA ram_0280,Y
C - - - - - 0x002399 00:E389: 9D 00 07  STA ram_oam,X
C - - - - - 0x00239C 00:E38C: E8        INX
C - - - - - 0x00239D 00:E38D: C8        INY
C - - - - - 0x00239E 00:E38E: C0 20     CPY #$20
C - - - - - 0x0023A0 00:E390: D0 F4     BNE bra_E386_loop
C - - - - - 0x0023A2 00:E392: A2 FF     LDX #$FF
C - - - - - 0x0023A4 00:E394: E6 4D     INC ram_004D
C - - - - - 0x0023A6 00:E396: A5 4D     LDA ram_004D
C - - - - - 0x0023A8 00:E398: 29 7F     AND #$7F
C - - - - - 0x0023AA 00:E39A: C9 40     CMP #$40
C - - - - - 0x0023AC 00:E39C: 90 02     BCC bra_E3A0
C - - - - - 0x0023AE 00:E39E: A2 20     LDX #$20
bra_E3A0:
C - - - - - 0x0023B0 00:E3A0: 8E 81 02  STX ram_0281
C - - - - - 0x0023B3 00:E3A3: 8E 85 02  STX ram_0285
C - - - - - 0x0023B6 00:E3A6: 8E 89 02  STX ram_0289
C - - - - - 0x0023B9 00:E3A9: 8E 8D 02  STX ram_028D
C - - - - - 0x0023BC 00:E3AC: 60        RTS



tbl_E3AD:
- D 3 - - - 0x0023BD 00:E3AD: 20        .byte $20   ; 00
- D 3 - - - 0x0023BE 00:E3AE: FF        .byte $FF   ; 01
- D 3 - - - 0x0023BF 00:E3AF: 01        .byte $01   ; 02
- D 3 - - - 0x0023C0 00:E3B0: 00        .byte $00   ; 03
- D 3 - - - 0x0023C1 00:E3B1: 20        .byte $20   ; 04
- D 3 - - - 0x0023C2 00:E3B2: FF        .byte $FF   ; 05
- D 3 - - - 0x0023C3 00:E3B3: 41        .byte $41   ; 06
- D 3 - - - 0x0023C4 00:E3B4: 08        .byte $08   ; 07
- D 3 - - - 0x0023C5 00:E3B5: 28        .byte $28   ; 08
- D 3 - - - 0x0023C6 00:E3B6: FF        .byte $FF   ; 09
- D 3 - - - 0x0023C7 00:E3B7: 81        .byte $81   ; 0A
- D 3 - - - 0x0023C8 00:E3B8: 08        .byte $08   ; 0B
- D 3 - - - 0x0023C9 00:E3B9: 28        .byte $28   ; 0C
- D 3 - - - 0x0023CA 00:E3BA: FF        .byte $FF   ; 0D
- D 3 - - - 0x0023CB 00:E3BB: C1        .byte $C1   ; 0E
- D 3 - - - 0x0023CC 00:E3BC: 00        .byte $00   ; 0F
- D 3 - - - 0x0023CD 00:E3BD: 20        .byte $20   ; 10
- D 3 - - - 0x0023CE 00:E3BE: 20        .byte $20   ; 11
- D 3 - - - 0x0023CF 00:E3BF: 02        .byte $02   ; 12
- D 3 - - - 0x0023D0 00:E3C0: 00        .byte $00   ; 13
- D 3 - - - 0x0023D1 00:E3C1: 20        .byte $20   ; 14
- D 3 - - - 0x0023D2 00:E3C2: 20        .byte $20   ; 15
- D 3 - - - 0x0023D3 00:E3C3: 02        .byte $02   ; 16
- D 3 - - - 0x0023D4 00:E3C4: 08        .byte $08   ; 17
- D 3 - - - 0x0023D5 00:E3C5: 28        .byte $28   ; 18
- D 3 - - - 0x0023D6 00:E3C6: 20        .byte $20   ; 19
- D 3 - - - 0x0023D7 00:E3C7: 02        .byte $02   ; 1A
- D 3 - - - 0x0023D8 00:E3C8: 08        .byte $08   ; 1B
- D 3 - - - 0x0023D9 00:E3C9: 28        .byte $28   ; 1C
- D 3 - - - 0x0023DA 00:E3CA: 20        .byte $20   ; 1D
- D 3 - - - 0x0023DB 00:E3CB: 02        .byte $02   ; 1E
- D 3 - - - 0x0023DC 00:E3CC: 00        .byte $00   ; 1F



sub_E3CD:
C - - - - - 0x0023DD 00:E3CD: 20 AA EF  JSR sub_EFAA
C - - - - - 0x0023E0 00:E3D0: 20 6C EF  JSR sub_EF6C
C - - - - - 0x0023E3 00:E3D3: A9 3F     LDA #> $3F00
C - - - - - 0x0023E5 00:E3D5: 8D 06 20  STA $2006
C - - - - - 0x0023E8 00:E3D8: A2 00     LDX #< $3F00
C - - - - - 0x0023EA 00:E3DA: 8E 06 20  STX $2006
C - - - - - 0x0023ED 00:E3DD: A2 00     LDX #$00
bra_E3DF_loop:
C - - - - - 0x0023EF 00:E3DF: BD 30 C0  LDA tbl_C030_default_32_colors,X
C - - - - - 0x0023F2 00:E3E2: 20 26 C0  JSR sub_C026_set_A_to_2007
C - - - - - 0x0023F5 00:E3E5: E8        INX
C - - - - - 0x0023F6 00:E3E6: E0 20     CPX #$20
C - - - - - 0x0023F8 00:E3E8: D0 F5     BNE bra_E3DF_loop
C - - - - - 0x0023FA 00:E3EA: A9 3F     LDA #> $3F08
C - - - - - 0x0023FC 00:E3EC: 8D 06 20  STA $2006
C - - - - - 0x0023FF 00:E3EF: A2 08     LDX #< $3F08
C - - - - - 0x002401 00:E3F1: 8E 06 20  STX $2006
C - - - - - 0x002404 00:E3F4: A6 20     LDX ram_current_round
C - - - - - 0x002406 00:E3F6: CA        DEX
C - - - - - 0x002407 00:E3F7: 8A        TXA
C - - - - - 0x002408 00:E3F8: 29 03     AND #$03
C - - - - - 0x00240A 00:E3FA: 0A        ASL
C - - - - - 0x00240B 00:E3FB: 0A        ASL
C - - - - - 0x00240C 00:E3FC: 0A        ASL
C - - - - - 0x00240D 00:E3FD: AA        TAX
C - - - - - 0x00240E 00:E3FE: A0 08     LDY #$08
bra_E400_loop:      ; 3F08-3F0F
C - - - - - 0x002410 00:E400: BD 50 C0  LDA tbl_C050_round_bg_colors,X
C - - - - - 0x002413 00:E403: 20 26 C0  JSR sub_C026_set_A_to_2007
C - - - - - 0x002416 00:E406: E8        INX
C - - - - - 0x002417 00:E407: 88        DEY
C - - - - - 0x002418 00:E408: D0 F6     BNE bra_E400_loop
C - - - - - 0x00241A 00:E40A: A9 23     LDA #> $23C0
C - - - - - 0x00241C 00:E40C: 8D 06 20  STA $2006
C - - - - - 0x00241F 00:E40F: A2 C0     LDX #< $23C0
C - - - - - 0x002421 00:E411: 8E 06 20  STX $2006
C - - - - - 0x002424 00:E414: A0 40     LDY #$40
bra_E416_loop:      ; 23C0-23FF
C - - - - - 0x002426 00:E416: A9 00     LDA #con_ppu_attr + $00
C - - - - - 0x002428 00:E418: 20 26 C0  JSR sub_C026_set_A_to_2007
C - - - - - 0x00242B 00:E41B: 88        DEY
C - - - - - 0x00242C 00:E41C: D0 F8     BNE bra_E416_loop
C - - - - - 0x00242E 00:E41E: 20 C7 E5  JSR sub_E5C7
C - - - - - 0x002431 00:E421: 20 B3 E5  JSR sub_E5B3
C - - - - - 0x002434 00:E424: A9 23     LDA #> $2380
C - - - - - 0x002436 00:E426: 8D 06 20  STA $2006
C - - - - - 0x002439 00:E429: A2 80     LDX #< $2380
C - - - - - 0x00243B 00:E42B: 8E 06 20  STX $2006
C - - - - - 0x00243E 00:E42E: A2 20     LDX #$20
bra_E430_loop:      ; 2380-239F
C - - - - - 0x002440 00:E430: A9 68     LDA #con_ppu_tile + $68     ; water waves
C - - - - - 0x002442 00:E432: 20 26 C0  JSR sub_C026_set_A_to_2007
C - - - - - 0x002445 00:E435: CA        DEX
C - - - - - 0x002446 00:E436: D0 F8     BNE bra_E430_loop
C - - - - - 0x002448 00:E438: A2 20     LDX #$20
bra_E43A_loop:      ; 23A0-23BF
C - - - - - 0x00244A 00:E43A: A9 78     LDA #con_ppu_tile + $78     ; water (not visible in NTSC)
C - - - - - 0x00244C 00:E43C: 20 26 C0  JSR sub_C026_set_A_to_2007
C - - - - - 0x00244F 00:E43F: CA        DEX
C - - - - - 0x002450 00:E440: D0 F8     BNE bra_E43A_loop
C - - - - - 0x002452 00:E442: A9 86     LDA #< tbl_E486_txt___hud_info
C - - - - - 0x002454 00:E444: 85 00     STA ram_0000
C - - - - - 0x002456 00:E446: A9 E4     LDA #> tbl_E486_txt___hud_info
C - - - - - 0x002458 00:E448: 85 01     STA ram_0001
C - - - - - 0x00245A 00:E44A: 20 28 EC  JSR sub_EC28_print_tiles_on_black_bg
C - - - - - 0x00245D 00:E44D: A5 E0     LDA ram_00E0
C - - - - - 0x00245F 00:E44F: F0 0B     BEQ bra_E45C_skip_p2
C - - - - - 0x002461 00:E451: A9 CD     LDA #< tbl_E4CD_txt___hud_info_p2
C - - - - - 0x002463 00:E453: 85 00     STA ram_0000
C - - - - - 0x002465 00:E455: A9 E4     LDA #> tbl_E4CD_txt___hud_info_p2
C - - - - - 0x002467 00:E457: 85 01     STA ram_0001
C - - - - - 0x002469 00:E459: 20 28 EC  JSR sub_EC28_print_tiles_on_black_bg
bra_E45C_skip_p2:
C - - - - - 0x00246C 00:E45C: 20 62 C2  JSR sub_C262_check_round_info
C - - - - - 0x00246F 00:E45F: F0 0E     BEQ bra_E46F_not_bonus_round
C - - - - - 0x002471 00:E461: A9 DA     LDA #< tbl_E4DA_tiles___big_bonus_box
C - - - - - 0x002473 00:E463: 85 00     STA ram_0000
C - - - - - 0x002475 00:E465: A9 E4     LDA #> tbl_E4DA_tiles___big_bonus_box
C - - - - - 0x002477 00:E467: 85 01     STA ram_0001
C - - - - - 0x002479 00:E469: 20 28 EC  JSR sub_EC28_print_tiles_on_black_bg
C - - - - - 0x00247C 00:E46C: 4C 7A E4  JMP loc_E47A
bra_E46F_not_bonus_round:
C - - - - - 0x00247F 00:E46F: A9 1E     LDA #< tbl_E51E_tiles___house
C - - - - - 0x002481 00:E471: 85 00     STA ram_0000
C - - - - - 0x002483 00:E473: A9 E5     LDA #> tbl_E51E_tiles___house
C - - - - - 0x002485 00:E475: 85 01     STA ram_0001
C - - - - - 0x002487 00:E477: 20 28 EC  JSR sub_EC28_print_tiles_on_black_bg
loc_E47A:
C D 3 - - - 0x00248A 00:E47A: 20 69 C2  JSR sub_C269
C - - - - - 0x00248D 00:E47D: 20 45 D5  JSR sub_D545
C - - - - - 0x002490 00:E480: 20 E0 D1  JSR sub_D1E0
C - - - - - 0x002493 00:E483: 4C 76 EF  JMP loc_EF76



tbl_E486_txt___hud_info:
- D 3 - I - 0x002496 00:E486: 63 20     .word $2063
- D 3 - I - 0x002498 00:E488: 3D        .byte $3D   ; I-
- D 3 - I - 0x002499 00:E489: 30        .byte "000000 "
- D 3 - I - 0x0024A0 00:E490: 2C        .byte $2C, $2D, $2E   ; TOP
- D 3 - I - 0x0024A3 00:E493: 30        .byte "000000         "
- D 3 - I - 0x0024B2 00:E4A2: 00        .byte $00   ; 

- D 3 - I - 0x0024B3 00:E4A3: 8C 20     .word $208C
- D 3 - I - 0x0024B5 00:E4A5: 22        .byte $22, $2F, $3E, $3F, $2A        ; MILK
- D 3 - I - 0x0024BA 00:E4AA: 22        .byte $22, $23, $24, $25, $26, $2A   ; BONUS
- D 3 - I - 0x0024C0 00:E4B0: 22        .byte $22, $5B, $5C, $5D, $5E, $2A   ; ROUND
- D 3 - I - 0x0024C6 00:E4B6: 00        .byte $00   ; 

- D 3 - I - 0x0024C7 00:E4B7: AC 20     .word $20AC
- D 3 - I - 0x0024C9 00:E4B9: 29        .byte $29, $20, $30, $20, $2B        ; MILK
- D 3 - I - 0x0024CE 00:E4BE: 29        .byte $29, $30, $30, $30, $30, $2B   ; BONUS
- D 3 - I - 0x0024D4 00:E4C4: 29        .byte $29, $20, $30, $30, $20, $2B   ; ROUND
- D 3 - I - 0x0024DA 00:E4CA: 00        .byte $00   ; 

- D 3 - I - 0x0024DB 00:E4CB: FF FF     .word $FFFF ; end token



tbl_E4CD_txt___hud_info_p2:
- D 3 - I - 0x0024DD 00:E4CD: 75 20     .word $2075
- D 3 - I - 0x0024DF 00:E4CF: 3C        .byte $3C, $3D   ; II-
- D 3 - I - 0x0024E1 00:E4D1: 30        .byte "000000"
- D 3 - I - 0x0024E7 00:E4D7: 00        .byte $00   ; 
- D 3 - I - 0x0024E8 00:E4D8: FF FF     .word $FFFF ; end token



tbl_E4DA_tiles___big_bonus_box:
- D 3 - I - 0x0024EA 00:E4DA: 8C 21     .word $218C
- D 3 - I - 0x0024EC 00:E4DC: 86        .byte $86, $87, $87, $87, $87, $87, $87, $88   ; 
- D 3 - I - 0x0024F4 00:E4E4: 00        .byte $00   ; 

- D 3 - I - 0x0024F5 00:E4E5: AC 21     .word $21AC
- D 3 - I - 0x0024F7 00:E4E7: 89        .byte $89, $8A, $8B, $8B, $8B, $8B, $8C, $99   ; 
- D 3 - I - 0x0024FF 00:E4EF: 00        .byte $00   ; 

- D 3 - I - 0x002500 00:E4F0: CC 21     .word $21CC
- D 3 - I - 0x002502 00:E4F2: 89        .byte $89, $8D, $23, $24, $25, $26, $9D, $99   ; BONUS
- D 3 - I - 0x00250A 00:E4FA: 00        .byte $00   ; 

- D 3 - I - 0x00250B 00:E4FB: EC 21     .word $21EC
- D 3 - I - 0x00250D 00:E4FD: 89        .byte $89, $8D, $30, $30, $30, $30, $9D, $99   ; 0000
- D 3 - I - 0x002515 00:E505: 00        .byte $00   ; 

- D 3 - I - 0x002516 00:E506: 0C 22     .word $220C
- D 3 - I - 0x002518 00:E508: 89        .byte $89, $9A, $9B, $9B, $9B, $9B, $9C, $99   ; 
- D 3 - I - 0x002520 00:E510: 00        .byte $00   ; 

- D 3 - I - 0x002521 00:E511: 2C 22     .word $222C
- D 3 - I - 0x002523 00:E513: 96        .byte $96, $97, $97, $97, $97, $97, $97, $98   ; 
- D 3 - I - 0x00252B 00:E51B: 00        .byte $00   ; 

- D 3 - I - 0x00252C 00:E51C: FF FF     .word $FFFF ; end token



tbl_E51E_tiles___house:
- D 3 - I - 0x00252E 00:E51E: 84 20     .word $2084
- D 3 - I - 0x002530 00:E520: BA        .byte $BA, $BB, $BC, $BD, $BE, $BF   ; 
- D 3 - I - 0x002536 00:E526: 00        .byte $00   ; 

- D 3 - I - 0x002537 00:E527: A4 20     .word $20A4
- D 3 - I - 0x002539 00:E529: CA        .byte $CA, $CB, $CC, $CD, $CE, $CF   ; 
- D 3 - I - 0x00253F 00:E52F: 00        .byte $00   ; 

- D 3 - I - 0x002540 00:E530: C4 20     .word $20C4
- D 3 - I - 0x002542 00:E532: DA        .byte $DA, $DB, $DC, $DD, $DE, $DF   ; 
- D 3 - I - 0x002548 00:E538: 00        .byte $00   ; 

- D 3 - I - 0x002549 00:E539: E4 20     .word $20E4
- D 3 - I - 0x00254B 00:E53B: EA        .byte $EA, $EB, $EC, $ED, $EE, $EF   ; 
- D 3 - I - 0x002551 00:E541: 00        .byte $00   ; 

- D 3 - I - 0x002552 00:E542: FF FF     .word $FFFF ; end token



sub_E544:
C - - - - - 0x002554 00:E544: A2 0E     LDX #$0E
C - - - - - 0x002556 00:E546: A0 05     LDY #$05
C - - - - - 0x002558 00:E548: A5 22     LDA ram_0022
C - - - - - 0x00255A 00:E54A: 85 B6     STA ram_00B6
C - - - - - 0x00255C 00:E54C: A9 00     LDA #$00
C - - - - - 0x00255E 00:E54E: 85 B7     STA ram_00B7
C - - - - - 0x002560 00:E550: 20 29 C7  JSR sub_C729
C - - - - - 0x002563 00:E553: A2 12     LDX #$12
C - - - - - 0x002565 00:E555: A0 05     LDY #$05
C - - - - - 0x002567 00:E557: A5 21     LDA ram_0021
C - - - - - 0x002569 00:E559: 85 B6     STA ram_00B6
C - - - - - 0x00256B 00:E55B: 20 AB E5  JSR sub_E5AB
C - - - - - 0x00256E 00:E55E: A2 19     LDX #$19
C - - - - - 0x002570 00:E560: A0 05     LDY #$05
C - - - - - 0x002572 00:E562: A5 20     LDA ram_current_round
C - - - - - 0x002574 00:E564: 85 B6     STA ram_00B6
C - - - - - 0x002576 00:E566: 20 AB E5  JSR sub_E5AB
C - - - - - 0x002579 00:E569: A5 8F     LDA ram_008F
C - - - - - 0x00257B 00:E56B: F0 0B     BEQ bra_E578_RTS
C - - - - - 0x00257D 00:E56D: A2 0E     LDX #$0E
C - - - - - 0x00257F 00:E56F: A0 0F     LDY #$0F
C - - - - - 0x002581 00:E571: A5 21     LDA ram_0021
C - - - - - 0x002583 00:E573: 85 B6     STA ram_00B6
C - - - - - 0x002585 00:E575: 20 AB E5  JSR sub_E5AB
bra_E578_RTS:
C - - - - - 0x002588 00:E578: 60        RTS



sub_E579:
C - - - - - 0x002589 00:E579: A2 04     LDX #$04
C - - - - - 0x00258B 00:E57B: A0 03     LDY #$03
C - - - - - 0x00258D 00:E57D: A5 B8     LDA ram_00B8
C - - - - - 0x00258F 00:E57F: 85 B6     STA ram_00B6
C - - - - - 0x002591 00:E581: A5 B9     LDA ram_00B9
C - - - - - 0x002593 00:E583: 85 B7     STA ram_00B7
C - - - - - 0x002595 00:E585: 20 0D C7  JSR sub_C70D
C - - - - - 0x002598 00:E588: A2 0E     LDX #$0E
C - - - - - 0x00259A 00:E58A: A0 03     LDY #$03
C - - - - - 0x00259C 00:E58C: A5 BA     LDA ram_00BA
C - - - - - 0x00259E 00:E58E: 85 B6     STA ram_00B6
C - - - - - 0x0025A0 00:E590: A5 BB     LDA ram_00BB
C - - - - - 0x0025A2 00:E592: 85 B7     STA ram_00B7
C - - - - - 0x0025A4 00:E594: 20 0D C7  JSR sub_C70D
C - - - - - 0x0025A7 00:E597: A5 E0     LDA ram_00E0
C - - - - - 0x0025A9 00:E599: F0 0F     BEQ bra_E5AA_RTS
C - - - - - 0x0025AB 00:E59B: A2 17     LDX #$17
C - - - - - 0x0025AD 00:E59D: A0 03     LDY #$03
C - - - - - 0x0025AF 00:E59F: A5 BC     LDA ram_00BC
C - - - - - 0x0025B1 00:E5A1: 85 B6     STA ram_00B6
C - - - - - 0x0025B3 00:E5A3: A5 BD     LDA ram_00BD
C - - - - - 0x0025B5 00:E5A5: 85 B7     STA ram_00B7
C - - - - - 0x0025B7 00:E5A7: 20 0D C7  JSR sub_C70D
bra_E5AA_RTS:
C - - - - - 0x0025BA 00:E5AA: 60        RTS



sub_E5AB:
C - - - - - 0x0025BB 00:E5AB: A9 00     LDA #$00
C - - - - - 0x0025BD 00:E5AD: 85 B7     STA ram_00B7
C - - - - - 0x0025BF 00:E5AF: 20 1B C7  JSR sub_C71B
C - - - - - 0x0025C2 00:E5B2: 60        RTS



sub_E5B3:
C - - - - - 0x0025C3 00:E5B3: A2 00     LDX #$00
bra_E5B5_loop:
C - - - - - 0x0025C5 00:E5B5: BD 00 06  LDA ram_0600,X
C - - - - - 0x0025C8 00:E5B8: C9 0A     CMP #$0A
C - - - - - 0x0025CA 00:E5BA: 90 05     BCC bra_E5C1
- - - - - - 0x0025CC 00:E5BC: A9 00     LDA #$00
- - - - - - 0x0025CE 00:E5BE: 9D 00 06  STA ram_0600,X
bra_E5C1:
C - - - - - 0x0025D1 00:E5C1: E8        INX
C - - - - - 0x0025D2 00:E5C2: E0 D0     CPX #$D0
C - - - - - 0x0025D4 00:E5C4: D0 EF     BNE bra_E5B5_loop
C - - - - - 0x0025D6 00:E5C6: 60        RTS



sub_E5C7:
C - - - - - 0x0025D7 00:E5C7: A9 40     LDA #< ram_0640
C - - - - - 0x0025D9 00:E5C9: 85 10     STA ram_0010
C - - - - - 0x0025DB 00:E5CB: A9 06     LDA #> ram_0640
C - - - - - 0x0025DD 00:E5CD: 85 11     STA ram_0011
C - - - - - 0x0025DF 00:E5CF: A9 C8     LDA #< $23C8
C - - - - - 0x0025E1 00:E5D1: 85 16     STA ram_0016
C - - - - - 0x0025E3 00:E5D3: A9 23     LDA #> $23C8
C - - - - - 0x0025E5 00:E5D5: 85 17     STA ram_0017
C - - - - - 0x0025E7 00:E5D7: A9 40     LDA #< (ram_oam + $40)
C - - - - - 0x0025E9 00:E5D9: 85 02     STA ram_0002
C - - - - - 0x0025EB 00:E5DB: A9 07     LDA #> (ram_oam + $40)
C - - - - - 0x0025ED 00:E5DD: 85 03     STA ram_0003
C - - - - - 0x0025EF 00:E5DF: A9 90     LDA #$90
C - - - - - 0x0025F1 00:E5E1: 85 04     STA ram_0004
C - - - - - 0x0025F3 00:E5E3: A9 07     LDA #$07
C - - - - - 0x0025F5 00:E5E5: 85 05     STA ram_0005
C - - - - - 0x0025F7 00:E5E7: A9 E0     LDA #< (ram_oam + $E0)
C - - - - - 0x0025F9 00:E5E9: 85 06     STA ram_0006
C - - - - - 0x0025FB 00:E5EB: A9 07     LDA #> (ram_oam + $E0)
C - - - - - 0x0025FD 00:E5ED: 85 07     STA ram_0007
C - - - - - 0x0025FF 00:E5EF: A9 C6     LDA #< ram_00C6
C - - - - - 0x002601 00:E5F1: 85 08     STA ram_0008
C - - - - - 0x002603 00:E5F3: A9 00     LDA #> ram_00C6
C - - - - - 0x002605 00:E5F5: 85 09     STA ram_0009
C - - - - - 0x002607 00:E5F7: A9 00     LDA #$00
C - - - - - 0x002609 00:E5F9: 85 2B     STA ram_002B
C - - - - - 0x00260B 00:E5FB: 85 2C     STA ram_002C
C - - - - - 0x00260D 00:E5FD: 85 2D     STA ram_002D
C - - - - - 0x00260F 00:E5FF: 85 2E     STA ram_002E
C - - - - - 0x002611 00:E601: A2 0C     LDX #$0C
C - - - - - 0x002613 00:E603: A9 00     LDA #$00
bra_E605_loop:
C - - - - - 0x002615 00:E605: 95 90     STA ram_0090,X
C - - - - - 0x002617 00:E607: CA        DEX
C - - - - - 0x002618 00:E608: 10 FB     BPL bra_E605_loop
C - - - - - 0x00261A 00:E60A: A9 04     LDA #$04
C - - - - - 0x00261C 00:E60C: 85 42     STA ram_0042
C - - - - - 0x00261E 00:E60E: A9 06     LDA #$06
C - - - - - 0x002620 00:E610: 85 43     STA ram_0043
bra_E612_loop:
C - - - - - 0x002622 00:E612: A9 00     LDA #$00
C - - - - - 0x002624 00:E614: 85 40     STA ram_0040
C - - - - - 0x002626 00:E616: A9 08     LDA #$08
C - - - - - 0x002628 00:E618: 85 41     STA ram_0041
bra_E61A_loop:
C - - - - - 0x00262A 00:E61A: 20 58 E6  JSR sub_E658
C - - - - - 0x00262D 00:E61D: E6 10     INC ram_0010
C - - - - - 0x00262F 00:E61F: E6 10     INC ram_0010
C - - - - - 0x002631 00:E621: A5 40     LDA ram_0040
C - - - - - 0x002633 00:E623: 18        CLC
C - - - - - 0x002634 00:E624: 69 04     ADC #$04
C - - - - - 0x002636 00:E626: 85 40     STA ram_0040
C - - - - - 0x002638 00:E628: C6 41     DEC ram_0041
C - - - - - 0x00263A 00:E62A: D0 EE     BNE bra_E61A_loop
C - - - - - 0x00263C 00:E62C: A5 10     LDA ram_0010
C - - - - - 0x00263E 00:E62E: 18        CLC
C - - - - - 0x00263F 00:E62F: 69 10     ADC #$10
C - - - - - 0x002641 00:E631: 85 10     STA ram_0010
C - - - - - 0x002643 00:E633: A5 42     LDA ram_0042
C - - - - - 0x002645 00:E635: 18        CLC
C - - - - - 0x002646 00:E636: 69 04     ADC #$04
C - - - - - 0x002648 00:E638: 85 42     STA ram_0042
C - - - - - 0x00264A 00:E63A: C6 43     DEC ram_0043
C - - - - - 0x00264C 00:E63C: D0 D4     BNE bra_E612_loop
C - - - - - 0x00264E 00:E63E: A5 2B     LDA ram_002B
C - - - - - 0x002650 00:E640: F0 11     BEQ bra_E653
C - - - - - 0x002652 00:E642: A5 2C     LDA ram_002C
C - - - - - 0x002654 00:E644: F0 0D     BEQ bra_E653
C - - - - - 0x002656 00:E646: A5 2D     LDA ram_002D
C - - - - - 0x002658 00:E648: F0 09     BEQ bra_E653
C - - - - - 0x00265A 00:E64A: A5 2E     LDA ram_002E
C - - - - - 0x00265C 00:E64C: F0 05     BEQ bra_E653
C - - - - - 0x00265E 00:E64E: A9 00     LDA #$00
C - - - - - 0x002660 00:E650: 85 0F     STA ram_000F
C - - - - - 0x002662 00:E652: 60        RTS
bra_E653:
C - - - - - 0x002663 00:E653: A9 01     LDA #$01
C - - - - - 0x002665 00:E655: 85 0F     STA ram_000F
C - - - - - 0x002667 00:E657: 60        RTS



sub_E658:
C - - - - - 0x002668 00:E658: A9 00     LDA #$00
C - - - - - 0x00266A 00:E65A: 85 44     STA ram_0044
C - - - - - 0x00266C 00:E65C: A0 00     LDY #$00
C - - - - - 0x00266E 00:E65E: B1 10     LDA (ram_0010),Y
C - - - - - 0x002670 00:E660: 20 C6 E6  JSR sub_E6C6
C - - - - - 0x002673 00:E663: A0 00     LDY #$00
C - - - - - 0x002675 00:E665: 91 10     STA (ram_0010),Y
C - - - - - 0x002677 00:E667: 8A        TXA
C - - - - - 0x002678 00:E668: 29 03     AND #$03
C - - - - - 0x00267A 00:E66A: 05 44     ORA ram_0044
C - - - - - 0x00267C 00:E66C: 85 44     STA ram_0044
C - - - - - 0x00267E 00:E66E: E6 40     INC ram_0040
C - - - - - 0x002680 00:E670: E6 40     INC ram_0040
C - - - - - 0x002682 00:E672: A0 01     LDY #$01
C - - - - - 0x002684 00:E674: B1 10     LDA (ram_0010),Y
C - - - - - 0x002686 00:E676: 20 C6 E6  JSR sub_E6C6
C - - - - - 0x002689 00:E679: A0 01     LDY #$01
C - - - - - 0x00268B 00:E67B: 91 10     STA (ram_0010),Y
C - - - - - 0x00268D 00:E67D: 8A        TXA
C - - - - - 0x00268E 00:E67E: 29 0C     AND #$0C
C - - - - - 0x002690 00:E680: 05 44     ORA ram_0044
C - - - - - 0x002692 00:E682: 85 44     STA ram_0044
C - - - - - 0x002694 00:E684: E6 42     INC ram_0042
C - - - - - 0x002696 00:E686: E6 42     INC ram_0042
C - - - - - 0x002698 00:E688: A0 11     LDY #$11
C - - - - - 0x00269A 00:E68A: B1 10     LDA (ram_0010),Y
C - - - - - 0x00269C 00:E68C: 20 C6 E6  JSR sub_E6C6
C - - - - - 0x00269F 00:E68F: A0 11     LDY #$11
C - - - - - 0x0026A1 00:E691: 91 10     STA (ram_0010),Y
C - - - - - 0x0026A3 00:E693: 8A        TXA
C - - - - - 0x0026A4 00:E694: 29 C0     AND #$C0
C - - - - - 0x0026A6 00:E696: 05 44     ORA ram_0044
C - - - - - 0x0026A8 00:E698: 85 44     STA ram_0044
C - - - - - 0x0026AA 00:E69A: C6 40     DEC ram_0040
C - - - - - 0x0026AC 00:E69C: C6 40     DEC ram_0040
C - - - - - 0x0026AE 00:E69E: A0 10     LDY #$10
C - - - - - 0x0026B0 00:E6A0: B1 10     LDA (ram_0010),Y
C - - - - - 0x0026B2 00:E6A2: 20 C6 E6  JSR sub_E6C6
C - - - - - 0x0026B5 00:E6A5: A0 10     LDY #$10
C - - - - - 0x0026B7 00:E6A7: 91 10     STA (ram_0010),Y
C - - - - - 0x0026B9 00:E6A9: 8A        TXA
C - - - - - 0x0026BA 00:E6AA: 29 30     AND #$30
C - - - - - 0x0026BC 00:E6AC: 05 44     ORA ram_0044
C - - - - - 0x0026BE 00:E6AE: 85 44     STA ram_0044
C - - - - - 0x0026C0 00:E6B0: C6 42     DEC ram_0042
C - - - - - 0x0026C2 00:E6B2: C6 42     DEC ram_0042
C - - - - - 0x0026C4 00:E6B4: A5 17     LDA ram_0017
C - - - - - 0x0026C6 00:E6B6: 8D 06 20  STA $2006
C - - - - - 0x0026C9 00:E6B9: A5 16     LDA ram_0016
C - - - - - 0x0026CB 00:E6BB: 8D 06 20  STA $2006
C - - - - - 0x0026CE 00:E6BE: A5 44     LDA ram_0044
C - - - - - 0x0026D0 00:E6C0: 20 26 C0  JSR sub_C026_set_A_to_2007
C - - - - - 0x0026D3 00:E6C3: E6 16     INC ram_0016
C - - - - - 0x0026D5 00:E6C5: 60        RTS



sub_E6C6:
bra_E6C6_loop:
C - - - - - 0x0026D6 00:E6C6: 29 0F     AND #$0F
C - - - - - 0x0026D8 00:E6C8: 85 4E     STA ram_004E
C - - - - - 0x0026DA 00:E6CA: 0A        ASL
C - - - - - 0x0026DB 00:E6CB: 0A        ASL
C - - - - - 0x0026DC 00:E6CC: 0A        ASL
C - - - - - 0x0026DD 00:E6CD: 18        CLC
C - - - - - 0x0026DE 00:E6CE: 69 F5     ADC #< tbl_E8F5_block_data
C - - - - - 0x0026E0 00:E6D0: 85 12     STA ram_0012
C - - - - - 0x0026E2 00:E6D2: 85 18     STA ram_0018
C - - - - - 0x0026E4 00:E6D4: A9 E8     LDA #> tbl_E8F5_block_data
C - - - - - 0x0026E6 00:E6D6: 69 00     ADC #$00
C - - - - - 0x0026E8 00:E6D8: 85 13     STA ram_0013
C - - - - - 0x0026EA 00:E6DA: 85 19     STA ram_0019
C - - - - - 0x0026EC 00:E6DC: A5 4E     LDA ram_004E
C - - - - - 0x0026EE 00:E6DE: C9 04     CMP #$04
C - - - - - 0x0026F0 00:E6E0: 90 08     BCC bra_E6EA
C - - - - - 0x0026F2 00:E6E2: A9 F5     LDA #< tbl_E8F5_block_data
C - - - - - 0x0026F4 00:E6E4: 85 12     STA ram_0012
C - - - - - 0x0026F6 00:E6E6: A9 E8     LDA #> tbl_E8F5_block_data
C - - - - - 0x0026F8 00:E6E8: 85 13     STA ram_0013
bra_E6EA:
C - - - - - 0x0026FA 00:E6EA: A6 40     LDX ram_0040
C - - - - - 0x0026FC 00:E6EC: A4 42     LDY ram_0042
C - - - - - 0x0026FE 00:E6EE: 20 45 E9  JSR sub_E945
C - - - - - 0x002701 00:E6F1: A0 00     LDY #$00
C - - - - - 0x002703 00:E6F3: B1 12     LDA (ram_0012),Y
C - - - - - 0x002705 00:E6F5: 20 26 C0  JSR sub_C026_set_A_to_2007
C - - - - - 0x002708 00:E6F8: C8        INY
C - - - - - 0x002709 00:E6F9: B1 12     LDA (ram_0012),Y
C - - - - - 0x00270B 00:E6FB: 20 26 C0  JSR sub_C026_set_A_to_2007
C - - - - - 0x00270E 00:E6FE: A6 40     LDX ram_0040
C - - - - - 0x002710 00:E700: A4 42     LDY ram_0042
C - - - - - 0x002712 00:E702: C8        INY
C - - - - - 0x002713 00:E703: 20 45 E9  JSR sub_E945
C - - - - - 0x002716 00:E706: A0 02     LDY #$02
C - - - - - 0x002718 00:E708: B1 12     LDA (ram_0012),Y
C - - - - - 0x00271A 00:E70A: 20 26 C0  JSR sub_C026_set_A_to_2007
C - - - - - 0x00271D 00:E70D: C8        INY
C - - - - - 0x00271E 00:E70E: B1 12     LDA (ram_0012),Y
C - - - - - 0x002720 00:E710: 20 26 C0  JSR sub_C026_set_A_to_2007
C - - - - - 0x002723 00:E713: C8        INY
C - - - - - 0x002724 00:E714: B1 12     LDA (ram_0012),Y
C - - - - - 0x002726 00:E716: 85 4F     STA ram_004F
C - - - - - 0x002728 00:E718: 20 2A E7  JSR sub_E72A
C - - - - - 0x00272B 00:E71B: E0 00     CPX #$00
C - - - - - 0x00272D 00:E71D: F0 06     BEQ bra_E725
C - - - - - 0x00272F 00:E71F: A5 9D     LDA ram_009D
C - - - - - 0x002731 00:E721: C5 4E     CMP ram_004E
C - - - - - 0x002733 00:E723: D0 A1     BNE bra_E6C6_loop
bra_E725:
C - - - - - 0x002735 00:E725: A6 4F     LDX ram_004F
C - - - - - 0x002737 00:E727: A5 4E     LDA ram_004E
C - - - - - 0x002739 00:E729: 60        RTS



sub_E72A:
C - - - - - 0x00273A 00:E72A: A5 4E     LDA ram_004E
C - - - - - 0x00273C 00:E72C: C9 05     CMP #$05
C - - - - - 0x00273E 00:E72E: D0 03     BNE bra_E733
C - - - - - 0x002740 00:E730: 4C 96 E7  JMP loc_E796
bra_E733:
C - - - - - 0x002743 00:E733: C9 06     CMP #$06
C - - - - - 0x002745 00:E735: D0 03     BNE bra_E73A
C - - - - - 0x002747 00:E737: 4C 96 E7  JMP loc_E796
bra_E73A:
C - - - - - 0x00274A 00:E73A: C9 07     CMP #$07
C - - - - - 0x00274C 00:E73C: D0 03     BNE bra_E741
C - - - - - 0x00274E 00:E73E: 4C BB E7  JMP loc_E7BB
bra_E741:
C - - - - - 0x002751 00:E741: C9 08     CMP #$08
C - - - - - 0x002753 00:E743: D0 03     BNE bra_E748
C - - - - - 0x002755 00:E745: 4C 52 E7  JMP loc_E752
bra_E748:
C - - - - - 0x002758 00:E748: C9 09     CMP #$09
C - - - - - 0x00275A 00:E74A: D0 03     BNE bra_E74F
C - - - - - 0x00275C 00:E74C: 4C 71 E8  JMP loc_E871
bra_E74F:
C - - - - - 0x00275F 00:E74F: A2 00     LDX #$00
C - - - - - 0x002761 00:E751: 60        RTS



loc_E752:
C D 3 - - - 0x002762 00:E752: A5 2B     LDA ram_002B
C - - - - - 0x002764 00:E754: C9 03     CMP #$03
C - - - - - 0x002766 00:E756: D0 03     BNE bra_E75B
C - - - - - 0x002768 00:E758: 4C E0 E7  JMP loc_E7E0
bra_E75B:
C - - - - - 0x00276B 00:E75B: 20 EB E7  JSR sub_E7EB
C - - - - - 0x00276E 00:E75E: C9 02     CMP #$02
C - - - - - 0x002770 00:E760: D0 03     BNE bra_E765
C - - - - - 0x002772 00:E762: 4C E0 E7  JMP loc_E7E0
bra_E765:
C - - - - - 0x002775 00:E765: E6 2B     INC ram_002B
C - - - - - 0x002777 00:E767: A5 02     LDA ram_0002
C - - - - - 0x002779 00:E769: 85 0A     STA ram_000A
C - - - - - 0x00277B 00:E76B: A5 03     LDA ram_0003
C - - - - - 0x00277D 00:E76D: 85 0B     STA ram_000B
C - - - - - 0x00277F 00:E76F: 20 F5 E7  JSR sub_E7F5
C - - - - - 0x002782 00:E772: A5 0A     LDA ram_000A
C - - - - - 0x002784 00:E774: 85 02     STA ram_0002
C - - - - - 0x002786 00:E776: A5 0B     LDA ram_000B
C - - - - - 0x002788 00:E778: 85 03     STA ram_0003
C - - - - - 0x00278A 00:E77A: A0 00     LDY #$00
C - - - - - 0x00278C 00:E77C: A5 42     LDA ram_0042
C - - - - - 0x00278E 00:E77E: 0A        ASL
C - - - - - 0x00278F 00:E77F: 0A        ASL
C - - - - - 0x002790 00:E780: 0A        ASL
C - - - - - 0x002791 00:E781: 91 08     STA (ram_0008),Y
C - - - - - 0x002793 00:E783: A0 01     LDY #$01
C - - - - - 0x002795 00:E785: A5 40     LDA ram_0040
C - - - - - 0x002797 00:E787: 0A        ASL
C - - - - - 0x002798 00:E788: 0A        ASL
C - - - - - 0x002799 00:E789: 0A        ASL
C - - - - - 0x00279A 00:E78A: 91 08     STA (ram_0008),Y
C - - - - - 0x00279C 00:E78C: A5 08     LDA ram_0008
C - - - - - 0x00279E 00:E78E: 18        CLC
C - - - - - 0x00279F 00:E78F: 69 02     ADC #$02
C - - - - - 0x0027A1 00:E791: 85 08     STA ram_0008
C - - - - - 0x0027A3 00:E793: 4C E3 E7  JMP loc_E7E3



loc_E796:
C D 3 - - - 0x0027A6 00:E796: A5 2C     LDA ram_002C
C - - - - - 0x0027A8 00:E798: C9 05     CMP #$05
C - - - - - 0x0027AA 00:E79A: F0 44     BEQ bra_E7E0
C - - - - - 0x0027AC 00:E79C: 20 EB E7  JSR sub_E7EB
C - - - - - 0x0027AF 00:E79F: C9 02     CMP #$02
C - - - - - 0x0027B1 00:E7A1: F0 3D     BEQ bra_E7E0
C - - - - - 0x0027B3 00:E7A3: E6 2C     INC ram_002C
C - - - - - 0x0027B5 00:E7A5: A5 04     LDA ram_0004
C - - - - - 0x0027B7 00:E7A7: 85 0A     STA ram_000A
C - - - - - 0x0027B9 00:E7A9: A5 05     LDA ram_0005
C - - - - - 0x0027BB 00:E7AB: 85 0B     STA ram_000B
C - - - - - 0x0027BD 00:E7AD: 20 F5 E7  JSR sub_E7F5
C - - - - - 0x0027C0 00:E7B0: A5 0A     LDA ram_000A
C - - - - - 0x0027C2 00:E7B2: 85 04     STA ram_0004
C - - - - - 0x0027C4 00:E7B4: A5 0B     LDA ram_000B
C - - - - - 0x0027C6 00:E7B6: 85 05     STA ram_0005
C - - - - - 0x0027C8 00:E7B8: 4C E3 E7  JMP loc_E7E3



loc_E7BB:
C D 3 - - - 0x0027CB 00:E7BB: A5 2D     LDA ram_002D
C - - - - - 0x0027CD 00:E7BD: C9 02     CMP #$02
C - - - - - 0x0027CF 00:E7BF: F0 1F     BEQ bra_E7E0
C - - - - - 0x0027D1 00:E7C1: 20 EB E7  JSR sub_E7EB
C - - - - - 0x0027D4 00:E7C4: C9 02     CMP #$02
C - - - - - 0x0027D6 00:E7C6: F0 18     BEQ bra_E7E0
C - - - - - 0x0027D8 00:E7C8: E6 2D     INC ram_002D
C - - - - - 0x0027DA 00:E7CA: A5 06     LDA ram_0006
C - - - - - 0x0027DC 00:E7CC: 85 0A     STA ram_000A
C - - - - - 0x0027DE 00:E7CE: A5 07     LDA ram_0007
C - - - - - 0x0027E0 00:E7D0: 85 0B     STA ram_000B
C - - - - - 0x0027E2 00:E7D2: 20 F5 E7  JSR sub_E7F5
C - - - - - 0x0027E5 00:E7D5: A5 0A     LDA ram_000A
C - - - - - 0x0027E7 00:E7D7: 85 06     STA ram_0006
C - - - - - 0x0027E9 00:E7D9: A5 0B     LDA ram_000B
C - - - - - 0x0027EB 00:E7DB: 85 07     STA ram_0007
C - - - - - 0x0027ED 00:E7DD: 4C E3 E7  JMP loc_E7E3
bra_E7E0:
loc_E7E0:   ; bzk optimize, LDX 01 + RTS instead of JMP
C D 3 - - - 0x0027F0 00:E7E0: A2 01     LDX #$01
C - - - - - 0x0027F2 00:E7E2: 60        RTS



loc_E7E3:
C D 3 - - - 0x0027F3 00:E7E3: 20 EB E7  JSR sub_E7EB
C - - - - - 0x0027F6 00:E7E6: F6 90     INC ram_0090,X
C - - - - - 0x0027F8 00:E7E8: A2 00     LDX #$00
C - - - - - 0x0027FA 00:E7EA: 60        RTS



sub_E7EB:
C - - - - - 0x0027FB 00:E7EB: A5 42     LDA ram_0042
C - - - - - 0x0027FD 00:E7ED: 38        SEC
C - - - - - 0x0027FE 00:E7EE: E9 04     SBC #$04
C - - - - - 0x002800 00:E7F0: 4A        LSR
C - - - - - 0x002801 00:E7F1: AA        TAX
C - - - - - 0x002802 00:E7F2: B5 90     LDA ram_0090,X
C - - - - - 0x002804 00:E7F4: 60        RTS



sub_E7F5:
C - - - - - 0x002805 00:E7F5: 20 CF E8  JSR sub_E8CF
C - - - - - 0x002808 00:E7F8: A0 00     LDY #$00
C - - - - - 0x00280A 00:E7FA: 91 0A     STA (ram_000A),Y
C - - - - - 0x00280C 00:E7FC: A0 03     LDY #$03
C - - - - - 0x00280E 00:E7FE: 8A        TXA
C - - - - - 0x00280F 00:E7FF: 91 0A     STA (ram_000A),Y
C - - - - - 0x002811 00:E801: E6 40     INC ram_0040
C - - - - - 0x002813 00:E803: 20 CF E8  JSR sub_E8CF
C - - - - - 0x002816 00:E806: A0 04     LDY #$04
C - - - - - 0x002818 00:E808: 91 0A     STA (ram_000A),Y
C - - - - - 0x00281A 00:E80A: A0 07     LDY #$07
C - - - - - 0x00281C 00:E80C: 8A        TXA
C - - - - - 0x00281D 00:E80D: 91 0A     STA (ram_000A),Y
C - - - - - 0x00281F 00:E80F: E6 42     INC ram_0042
C - - - - - 0x002821 00:E811: 20 CF E8  JSR sub_E8CF
C - - - - - 0x002824 00:E814: A0 08     LDY #$08
C - - - - - 0x002826 00:E816: 91 0A     STA (ram_000A),Y
C - - - - - 0x002828 00:E818: A0 0B     LDY #$0B
C - - - - - 0x00282A 00:E81A: 8A        TXA
C - - - - - 0x00282B 00:E81B: 91 0A     STA (ram_000A),Y
C - - - - - 0x00282D 00:E81D: C6 40     DEC ram_0040
C - - - - - 0x00282F 00:E81F: 20 CF E8  JSR sub_E8CF
C - - - - - 0x002832 00:E822: A0 0C     LDY #$0C
C - - - - - 0x002834 00:E824: 91 0A     STA (ram_000A),Y
C - - - - - 0x002836 00:E826: A0 0F     LDY #$0F
C - - - - - 0x002838 00:E828: 8A        TXA
C - - - - - 0x002839 00:E829: 91 0A     STA (ram_000A),Y
C - - - - - 0x00283B 00:E82B: C6 42     DEC ram_0042
C - - - - - 0x00283D 00:E82D: A0 00     LDY #$00
C - - - - - 0x00283F 00:E82F: B1 18     LDA (ram_0018),Y
C - - - - - 0x002841 00:E831: A0 01     LDY #$01
C - - - - - 0x002843 00:E833: 91 0A     STA (ram_000A),Y
C - - - - - 0x002845 00:E835: A0 01     LDY #$01
C - - - - - 0x002847 00:E837: B1 18     LDA (ram_0018),Y
C - - - - - 0x002849 00:E839: A0 05     LDY #$05
C - - - - - 0x00284B 00:E83B: 91 0A     STA (ram_000A),Y
C - - - - - 0x00284D 00:E83D: A0 03     LDY #$03
C - - - - - 0x00284F 00:E83F: B1 18     LDA (ram_0018),Y
C - - - - - 0x002851 00:E841: A0 09     LDY #$09
C - - - - - 0x002853 00:E843: 91 0A     STA (ram_000A),Y
C - - - - - 0x002855 00:E845: A0 02     LDY #$02
C - - - - - 0x002857 00:E847: B1 18     LDA (ram_0018),Y
C - - - - - 0x002859 00:E849: A0 0D     LDY #$0D
C - - - - - 0x00285B 00:E84B: 91 0A     STA (ram_000A),Y
C - - - - - 0x00285D 00:E84D: A0 04     LDY #$04
C - - - - - 0x00285F 00:E84F: B1 18     LDA (ram_0018),Y
C - - - - - 0x002861 00:E851: 29 03     AND #$03
C - - - - - 0x002863 00:E853: A0 02     LDY #$02
C - - - - - 0x002865 00:E855: 91 0A     STA (ram_000A),Y
C - - - - - 0x002867 00:E857: A0 06     LDY #$06
C - - - - - 0x002869 00:E859: 91 0A     STA (ram_000A),Y
C - - - - - 0x00286B 00:E85B: A0 0A     LDY #$0A
C - - - - - 0x00286D 00:E85D: 91 0A     STA (ram_000A),Y
C - - - - - 0x00286F 00:E85F: A0 0E     LDY #$0E
C - - - - - 0x002871 00:E861: 91 0A     STA (ram_000A),Y
C - - - - - 0x002873 00:E863: A5 0A     LDA ram_000A
C - - - - - 0x002875 00:E865: 18        CLC
C - - - - - 0x002876 00:E866: 69 10     ADC #$10
C - - - - - 0x002878 00:E868: 85 0A     STA ram_000A
C - - - - - 0x00287A 00:E86A: A5 0B     LDA ram_000B
C - - - - - 0x00287C 00:E86C: 69 00     ADC #$00
C - - - - - 0x00287E 00:E86E: 85 0B     STA ram_000B
C - - - - - 0x002880 00:E870: 60        RTS



loc_E871:
C D 3 - - - 0x002881 00:E871: A5 2E     LDA ram_002E
C - - - - - 0x002883 00:E873: F0 03     BEQ bra_E878
C - - - - - 0x002885 00:E875: 4C E0 E7  JMP loc_E7E0
bra_E878:
C - - - - - 0x002888 00:E878: 20 EB E7  JSR sub_E7EB
C - - - - - 0x00288B 00:E87B: C9 02     CMP #$02
C - - - - - 0x00288D 00:E87D: D0 03     BNE bra_E882
C - - - - - 0x00288F 00:E87F: 4C E0 E7  JMP loc_E7E0
bra_E882:
C - - - - - 0x002892 00:E882: E6 2E     INC ram_002E
C - - - - - 0x002894 00:E884: 20 CF E8  JSR sub_E8CF
C - - - - - 0x002897 00:E887: 8D 20 07  STA ram_spr_Y + $20
C - - - - - 0x00289A 00:E88A: 8E 23 07  STX ram_spr_X + $20
C - - - - - 0x00289D 00:E88D: E6 40     INC ram_0040
C - - - - - 0x00289F 00:E88F: 20 CF E8  JSR sub_E8CF
C - - - - - 0x0028A2 00:E892: 8D 24 07  STA ram_spr_Y + $24
C - - - - - 0x0028A5 00:E895: 8E 27 07  STX ram_spr_X + $24
C - - - - - 0x0028A8 00:E898: E6 42     INC ram_0042
C - - - - - 0x0028AA 00:E89A: 20 CF E8  JSR sub_E8CF
C - - - - - 0x0028AD 00:E89D: 8D 28 07  STA ram_spr_Y + $28
C - - - - - 0x0028B0 00:E8A0: 8E 2B 07  STX ram_spr_X + $28
C - - - - - 0x0028B3 00:E8A3: C6 40     DEC ram_0040
C - - - - - 0x0028B5 00:E8A5: 20 CF E8  JSR sub_E8CF
C - - - - - 0x0028B8 00:E8A8: 8D 2C 07  STA ram_spr_Y + $2C
C - - - - - 0x0028BB 00:E8AB: 8E 2F 07  STX ram_spr_X + $2C
C - - - - - 0x0028BE 00:E8AE: C6 42     DEC ram_0042
C - - - - - 0x0028C0 00:E8B0: A9 60     LDA #$60
C - - - - - 0x0028C2 00:E8B2: 20 E8 DF  JSR sub_DFE8
C - - - - - 0x0028C5 00:E8B5: A5 8E     LDA ram_008E
C - - - - - 0x0028C7 00:E8B7: F0 05     BEQ bra_E8BE
C - - - - - 0x0028C9 00:E8B9: A9 86     LDA #$86
C - - - - - 0x0028CB 00:E8BB: 20 E8 DF  JSR sub_DFE8
bra_E8BE:
C - - - - - 0x0028CE 00:E8BE: A9 01     LDA #$01
C - - - - - 0x0028D0 00:E8C0: 8D 22 07  STA ram_spr_A + $20
C - - - - - 0x0028D3 00:E8C3: 8D 26 07  STA ram_spr_A + $24
C - - - - - 0x0028D6 00:E8C6: 8D 2A 07  STA ram_spr_A + $28
C - - - - - 0x0028D9 00:E8C9: 8D 2E 07  STA ram_spr_A + $2C
C - - - - - 0x0028DC 00:E8CC: 4C E3 E7  JMP loc_E7E3



sub_E8CF:
C - - - - - 0x0028DF 00:E8CF: A5 40     LDA ram_0040
C - - - - - 0x0028E1 00:E8D1: 0A        ASL
C - - - - - 0x0028E2 00:E8D2: 0A        ASL
C - - - - - 0x0028E3 00:E8D3: 0A        ASL
C - - - - - 0x0028E4 00:E8D4: AA        TAX
C - - - - - 0x0028E5 00:E8D5: A5 42     LDA ram_0042
C - - - - - 0x0028E7 00:E8D7: 0A        ASL
C - - - - - 0x0028E8 00:E8D8: 0A        ASL
C - - - - - 0x0028E9 00:E8D9: 0A        ASL
C - - - - - 0x0028EA 00:E8DA: A8        TAY
C - - - - - 0x0028EB 00:E8DB: 60        RTS



sub_E8DC:
C - - - - - 0x0028EC 00:E8DC: A5 28     LDA ram_0028
C - - - - - 0x0028EE 00:E8DE: 4A        LSR
C - - - - - 0x0028EF 00:E8DF: 4A        LSR
C - - - - - 0x0028F0 00:E8E0: 4A        LSR
C - - - - - 0x0028F1 00:E8E1: 4A        LSR
C - - - - - 0x0028F2 00:E8E2: 85 28     STA ram_0028
C - - - - - 0x0028F4 00:E8E4: A5 29     LDA ram_0029
C - - - - - 0x0028F6 00:E8E6: 4A        LSR
C - - - - - 0x0028F7 00:E8E7: 4A        LSR
C - - - - - 0x0028F8 00:E8E8: 4A        LSR
C - - - - - 0x0028F9 00:E8E9: 4A        LSR
C - - - - - 0x0028FA 00:E8EA: 85 29     STA ram_0029
C - - - - - 0x0028FC 00:E8EC: 60        RTS



tbl_E8ED_empty_block_data:
; 00
- D 3 - I - 0x0028FD 00:E8ED: 0A        .byte $0A   ; 
- D 3 - I - 0x0028FE 00:E8EE: 0B        .byte $0B   ; 
- D 3 - I - 0x0028FF 00:E8EF: 1A        .byte $1A   ; 
- D 3 - I - 0x002900 00:E8F0: 1B        .byte $1B   ; 
- - - - - - 0x002901 00:E8F1: 00        .byte $00   ; 
- - - - - - 0x002902 00:E8F2: 00        .byte $00   ; 
- - - - - - 0x002903 00:E8F3: 00        .byte $00   ; 
- - - - - - 0x002904 00:E8F4: 00        .byte $00   ; 

; bzk last 3 bytes of data for each block are unused (4 bytes in 0x0028FD)
; because the game does a lazy (but fast) index calculation
; block index * 8

; one of 2 routines reads first 4 bytes, another reads all 5

tbl_E8F5_block_data:
; 00 empty
- D 3 - I - 0x002905 00:E8F5: 20        .byte $20   ; 
- D 3 - I - 0x002906 00:E8F6: 20        .byte $20   ; 
- D 3 - I - 0x002907 00:E8F7: 20        .byte $20   ; 
- D 3 - I - 0x002908 00:E8F8: 20        .byte $20   ; 
- D 3 - I - 0x002909 00:E8F9: 00        .byte $00   ; 
- - - - - - 0x00290A 00:E8FA: 00        .byte $00   ; placeholder
- - - - - - 0x00290B 00:E8FB: 00        .byte $00   ; placeholder
- - - - - - 0x00290C 00:E8FC: 00        .byte $00   ; placeholder
; 01 pipe
- D 3 - I - 0x00290D 00:E8FD: 62        .byte $62   ; 
- D 3 - I - 0x00290E 00:E8FE: 63        .byte $63   ; 
- D 3 - I - 0x00290F 00:E8FF: 72        .byte $72   ; 
- D 3 - I - 0x002910 00:E900: 73        .byte $73   ; 
- D 3 - I - 0x002911 00:E901: AA        .byte $AA   ; 
- - - - - - 0x002912 00:E902: 00        .byte $00   ; 
- - - - - - 0x002913 00:E903: 00        .byte $00   ; 
- - - - - - 0x002914 00:E904: 00        .byte $00   ; 
; 02 brick
- D 3 - I - 0x002915 00:E905: 04        .byte $04   ; 
- D 3 - I - 0x002916 00:E906: 05        .byte $05   ; 
- D 3 - I - 0x002917 00:E907: 14        .byte $14   ; 
- D 3 - I - 0x002918 00:E908: 15        .byte $15   ; 
- D 3 - I - 0x002919 00:E909: FF        .byte $FF   ; 
- - - - - - 0x00291A 00:E90A: 00        .byte $00   ; 
- - - - - - 0x00291B 00:E90B: 00        .byte $00   ; 
- - - - - - 0x00291C 00:E90C: 00        .byte $00   ; 
; 03 ladder
- D 3 - I - 0x00291D 00:E90D: 6F        .byte $6F   ; 
- D 3 - I - 0x00291E 00:E90E: 6F        .byte $6F   ; 
- D 3 - I - 0x00291F 00:E90F: 7F        .byte $7F   ; 
- D 3 - I - 0x002920 00:E910: 7F        .byte $7F   ; 
- D 3 - I - 0x002921 00:E911: 55        .byte $55   ; 
- - - - - - 0x002922 00:E912: 00        .byte $00   ; 
- - - - - - 0x002923 00:E913: 00        .byte $00   ; 
- - - - - - 0x002924 00:E914: 00        .byte $00   ; 
; 04 heart (unused)
- - - - - - 0x002925 00:E915: 08        .byte $08   ; 
- - - - - - 0x002926 00:E916: 09        .byte $09   ; 
- - - - - - 0x002927 00:E917: 18        .byte $18   ; 
- - - - - - 0x002928 00:E918: 19        .byte $19   ; 
- - - - - - 0x002929 00:E919: 55        .byte $55   ; 
- - - - - - 0x00292A 00:E91A: 00        .byte $00   ; 
- - - - - - 0x00292B 00:E91B: 00        .byte $00   ; 
- - - - - - 0x00292C 00:E91C: 00        .byte $00   ; 
; 05 apple
- D 3 - I - 0x00292D 00:E91D: 0C        .byte $0C   ; 
- D 3 - I - 0x00292E 00:E91E: 0D        .byte $0D   ; 
- D 3 - I - 0x00292F 00:E91F: 1C        .byte $1C   ; 
- D 3 - I - 0x002930 00:E920: 1D        .byte $1D   ; 
- D 3 - I - 0x002931 00:E921: FF        .byte $FF   ; 
- - - - - - 0x002932 00:E922: 00        .byte $00   ; 
- - - - - - 0x002933 00:E923: 00        .byte $00   ; 
- - - - - - 0x002934 00:E924: 00        .byte $00   ; 
; 06 banana
- D 3 - I - 0x002935 00:E925: 0E        .byte $0E   ; 
- D 3 - I - 0x002936 00:E926: 0F        .byte $0F   ; 
- D 3 - I - 0x002937 00:E927: 1E        .byte $1E   ; 
- D 3 - I - 0x002938 00:E928: 1F        .byte $1F   ; 
- D 3 - I - 0x002939 00:E929: AA        .byte $AA   ; 
- - - - - - 0x00293A 00:E92A: 00        .byte $00   ; 
- - - - - - 0x00293B 00:E92B: 00        .byte $00   ; 
- - - - - - 0x00293C 00:E92C: 00        .byte $00   ; 
; 07 spring (пружина)
- D 3 - I - 0x00293D 00:E92D: C0        .byte $C0   ; 
- D 3 - I - 0x00293E 00:E92E: C1        .byte $C1   ; 
- D 3 - I - 0x00293F 00:E92F: D0        .byte $D0   ; 
- D 3 - I - 0x002940 00:E930: D1        .byte $D1   ; 
- D 3 - I - 0x002941 00:E931: FF        .byte $FF   ; 
- - - - - - 0x002942 00:E932: 00        .byte $00   ; 
- - - - - - 0x002943 00:E933: 00        .byte $00   ; 
- - - - - - 0x002944 00:E934: 00        .byte $00   ; 
; 08 enemy
tbl_E935:   ; bzk single byte in the middle of the table, change to LDA #$86
- D 3 - I - 0x002945 00:E935: 86        .byte $86   ; 
- D 3 - I - 0x002946 00:E936: 87        .byte $87   ; 
- D 3 - I - 0x002947 00:E937: 96        .byte $96   ; 
- D 3 - I - 0x002948 00:E938: 97        .byte $97   ; 
- D 3 - I - 0x002949 00:E939: 00        .byte $00   ; 
- - - - - - 0x00294A 00:E93A: 00        .byte $00   ; 
- - - - - - 0x00294B 00:E93B: 00        .byte $00   ; 
- - - - - - 0x00294C 00:E93C: 00        .byte $00   ; 
; 09 player
- D 3 - I - 0x00294D 00:E93D: 86        .byte $86   ; 
- D 3 - I - 0x00294E 00:E93E: 87        .byte $87   ; 
- D 3 - I - 0x00294F 00:E93F: 96        .byte $96   ; 
- D 3 - I - 0x002950 00:E940: 97        .byte $97   ; 
- - - - - - 0x002951 00:E941: 55        .byte $55   ; 
- - - - - - 0x002952 00:E942: 00        .byte $00   ; 
- - - - - - 0x002953 00:E943: 00        .byte $00   ; 
- - - - - - 0x002954 00:E944: 00        .byte $00   ; 



sub_E945:
C - - - - - 0x002955 00:E945: 20 53 E9  JSR sub_E953_calculate_ppu_addr
C - - - - - 0x002958 00:E948: A5 01     LDA ram_0001
C - - - - - 0x00295A 00:E94A: 8D 06 20  STA $2006
C - - - - - 0x00295D 00:E94D: A5 00     LDA ram_0000
C - - - - - 0x00295F 00:E94F: 8D 06 20  STA $2006
C - - - - - 0x002962 00:E952: 60        RTS



sub_E953_calculate_ppu_addr:
C - - - - - 0x002963 00:E953: 84 00     STY ram_0000
C - - - - - 0x002965 00:E955: A9 00     LDA #$00
C - - - - - 0x002967 00:E957: 06 00     ASL ram_0000
C - - - - - 0x002969 00:E959: 2A        ROL
C - - - - - 0x00296A 00:E95A: 06 00     ASL ram_0000
C - - - - - 0x00296C 00:E95C: 2A        ROL
C - - - - - 0x00296D 00:E95D: 06 00     ASL ram_0000
C - - - - - 0x00296F 00:E95F: 2A        ROL
C - - - - - 0x002970 00:E960: 06 00     ASL ram_0000
C - - - - - 0x002972 00:E962: 2A        ROL
C - - - - - 0x002973 00:E963: 06 00     ASL ram_0000
C - - - - - 0x002975 00:E965: 2A        ROL
C - - - - - 0x002976 00:E966: 85 01     STA ram_0001
C - - - - - 0x002978 00:E968: 8A        TXA
C - - - - - 0x002979 00:E969: 18        CLC
C - - - - - 0x00297A 00:E96A: 65 00     ADC ram_0000
C - - - - - 0x00297C 00:E96C: 85 00     STA ram_0000
C - - - - - 0x00297E 00:E96E: A5 01     LDA ram_0001
C - - - - - 0x002980 00:E970: 69 20     ADC #$20
C - - - - - 0x002982 00:E972: 85 01     STA ram_0001
C - - - - - 0x002984 00:E974: 60        RTS



sub_E975:
C - - - - - 0x002985 00:E975: A6 20     LDX ram_current_round
C - - - - - 0x002987 00:E977: CA        DEX
C - - - - - 0x002988 00:E978: D0 0A     BNE bra_E984
bra_E97A_loop:
C - - - - - 0x00298A 00:E97A: BD 00 05  LDA ram_0500,X
C - - - - - 0x00298D 00:E97D: 9D 00 06  STA ram_0600,X
C - - - - - 0x002990 00:E980: E8        INX
C - - - - - 0x002991 00:E981: D0 F7     BNE bra_E97A_loop
C - - - - - 0x002993 00:E983: 60        RTS
bra_E984:
sub_E984:
C - - - - - 0x002994 00:E984: 20 B9 EB  JSR sub_EBB9
C - - - - - 0x002997 00:E987: A2 00     LDX #$00
C - - - - - 0x002999 00:E989: A0 B0     LDY #$B0
C - - - - - 0x00299B 00:E98B: 84 05     STY ram_0005
C - - - - - 0x00299D 00:E98D: A0 0D     LDY #$0D
C - - - - - 0x00299F 00:E98F: 84 04     STY ram_0004
bra_E991_loop:
C - - - - - 0x0029A1 00:E991: A4 04     LDY ram_0004
C - - - - - 0x0029A3 00:E993: B1 00     LDA (ram_0000),Y
C - - - - - 0x0029A5 00:E995: 85 08     STA ram_0008
C - - - - - 0x0029A7 00:E997: E6 04     INC ram_0004
bra_E999_loop:
C - - - - - 0x0029A9 00:E999: A9 00     LDA #$00
C - - - - - 0x0029AB 00:E99B: 85 07     STA ram_0007
C - - - - - 0x0029AD 00:E99D: 85 06     STA ram_0006
C - - - - - 0x0029AF 00:E99F: 46 08     LSR ram_0008
C - - - - - 0x0029B1 00:E9A1: 66 06     ROR ram_0006
C - - - - - 0x0029B3 00:E9A3: 46 08     LSR ram_0008
C - - - - - 0x0029B5 00:E9A5: 26 06     ROL ram_0006
C - - - - - 0x0029B7 00:E9A7: 26 06     ROL ram_0006
C - - - - - 0x0029B9 00:E9A9: 46 08     LSR ram_0008
C - - - - - 0x0029BB 00:E9AB: 66 07     ROR ram_0007
C - - - - - 0x0029BD 00:E9AD: 46 08     LSR ram_0008
C - - - - - 0x0029BF 00:E9AF: 26 07     ROL ram_0007
C - - - - - 0x0029C1 00:E9B1: 26 07     ROL ram_0007
C - - - - - 0x0029C3 00:E9B3: E6 07     INC ram_0007
bra_E9B5_loop:
C - - - - - 0x0029C5 00:E9B5: C6 05     DEC ram_0005
C - - - - - 0x0029C7 00:E9B7: A4 05     LDY ram_0005
C - - - - - 0x0029C9 00:E9B9: A5 06     LDA ram_0006
C - - - - - 0x0029CB 00:E9BB: 99 50 06  STA ram_0650,Y
C - - - - - 0x0029CE 00:E9BE: 98        TYA
C - - - - - 0x0029CF 00:E9BF: F0 0C     BEQ bra_E9CD
C - - - - - 0x0029D1 00:E9C1: C6 07     DEC ram_0007
C - - - - - 0x0029D3 00:E9C3: D0 F0     BNE bra_E9B5_loop
C - - - - - 0x0029D5 00:E9C5: E8        INX
C - - - - - 0x0029D6 00:E9C6: 8A        TXA
C - - - - - 0x0029D7 00:E9C7: 29 01     AND #$01
C - - - - - 0x0029D9 00:E9C9: F0 C6     BEQ bra_E991_loop
C - - - - - 0x0029DB 00:E9CB: D0 CC     BNE bra_E999_loop
bra_E9CD:
C - - - - - 0x0029DD 00:E9CD: A0 01     LDY #$01
C - - - - - 0x0029DF 00:E9CF: 84 04     STY ram_0004
C - - - - - 0x0029E1 00:E9D1: A9 00     LDA #$00
C - - - - - 0x0029E3 00:E9D3: 85 05     STA ram_0005
C - - - - - 0x0029E5 00:E9D5: A9 09     LDA #$09
C - - - - - 0x0029E7 00:E9D7: 85 08     STA ram_0008
C - - - - - 0x0029E9 00:E9D9: A2 01     LDX #$01
C - - - - - 0x0029EB 00:E9DB: 20 F8 E9  JSR sub_E9F8
C - - - - - 0x0029EE 00:E9DE: C6 08     DEC ram_0008
C - - - - - 0x0029F0 00:E9E0: A2 03     LDX #$03
C - - - - - 0x0029F2 00:E9E2: 20 F8 E9  JSR sub_E9F8
C - - - - - 0x0029F5 00:E9E5: C6 08     DEC ram_0008
C - - - - - 0x0029F7 00:E9E7: A2 02     LDX #$02
C - - - - - 0x0029F9 00:E9E9: 20 F8 E9  JSR sub_E9F8
C - - - - - 0x0029FC 00:E9EC: C6 08     DEC ram_0008
C - - - - - 0x0029FE 00:E9EE: C6 08     DEC ram_0008
C - - - - - 0x002A00 00:E9F0: A0 0C     LDY #$0C
C - - - - - 0x002A02 00:E9F2: B1 00     LDA (ram_0000),Y
C - - - - - 0x002A04 00:E9F4: 85 05     STA ram_0005
C - - - - - 0x002A06 00:E9F6: A2 05     LDX #$05
bra_E9F8_loop:
sub_E9F8:
C - - - - - 0x002A08 00:E9F8: A4 04     LDY ram_0004
C - - - - - 0x002A0A 00:E9FA: B1 00     LDA (ram_0000),Y
C - - - - - 0x002A0C 00:E9FC: A8        TAY
C - - - - - 0x002A0D 00:E9FD: C8        INY
C - - - - - 0x002A0E 00:E9FE: D0 06     BNE bra_EA06
loc_EA00:
C D 3 - - - 0x002A10 00:EA00: E6 04     INC ram_0004
C - - - - - 0x002A12 00:EA02: CA        DEX
C - - - - - 0x002A13 00:EA03: D0 F3     BNE bra_E9F8_loop
C - - - - - 0x002A15 00:EA05: 60        RTS
bra_EA06:
C - - - - - 0x002A16 00:EA06: 88        DEY
C - - - - - 0x002A17 00:EA07: A5 08     LDA ram_0008
C - - - - - 0x002A19 00:EA09: 26 05     ROL ram_0005
C - - - - - 0x002A1B 00:EA0B: 69 00     ADC #$00
C - - - - - 0x002A1D 00:EA0D: 99 50 06  STA ram_0650,Y
C - - - - - 0x002A20 00:EA10: 4C 00 EA  JMP loc_EA00



sub_EA13:
C - - - - - 0x002A23 00:EA13: A6 20     LDX ram_current_round
C - - - - - 0x002A25 00:EA15: CA        DEX
C - - - - - 0x002A26 00:EA16: D0 0A     BNE bra_EA22
bra_EA18_loop:
C - - - - - 0x002A28 00:EA18: BD 00 06  LDA ram_0600,X
C - - - - - 0x002A2B 00:EA1B: 9D 00 05  STA ram_0500,X
C - - - - - 0x002A2E 00:EA1E: E8        INX
C - - - - - 0x002A2F 00:EA1F: D0 F7     BNE bra_EA18_loop
C - - - - - 0x002A31 00:EA21: 60        RTS
bra_EA22:
; bzk garbage, never used because you can only edit round 01h
; Full Lever Editor hidden functions
; https://tcrf.net/Nuts_%26_Milk
- - - - - - 0x002A32 00:EA22: A0 01     LDY #$01
- - - - - - 0x002A34 00:EA24: A9 09     LDA #$09
- - - - - - 0x002A36 00:EA26: A2 01     LDX #$01
- - - - - - 0x002A38 00:EA28: 20 92 EB  JSR sub_EB92
- - - - - - 0x002A3B 00:EA2B: A9 08     LDA #$08
- - - - - - 0x002A3D 00:EA2D: A2 03     LDX #$03
- - - - - - 0x002A3F 00:EA2F: 20 92 EB  JSR sub_EB92
- - - - - - 0x002A42 00:EA32: A9 07     LDA #$07
- - - - - - 0x002A44 00:EA34: A2 02     LDX #$02
- - - - - - 0x002A46 00:EA36: 20 92 EB  JSR sub_EB92
- - - - - - 0x002A49 00:EA39: A9 B0     LDA #$B0
- - - - - - 0x002A4B 00:EA3B: 85 05     STA ram_0005
- - - - - - 0x002A4D 00:EA3D: A9 06     LDA #$06
- - - - - - 0x002A4F 00:EA3F: 85 06     STA ram_0006
- - - - - - 0x002A51 00:EA41: A9 80     LDA #$80
- - - - - - 0x002A53 00:EA43: 85 07     STA ram_0007
- - - - - - 0x002A55 00:EA45: A9 00     LDA #$00
- - - - - - 0x002A57 00:EA47: 8D 0C 04  STA ram_040C
- - - - - - 0x002A5A 00:EA4A: A2 05     LDX #$05
bra_EA4C_loop:
- - - - - - 0x002A5C 00:EA4C: A5 06     LDA ram_0006
- - - - - - 0x002A5E 00:EA4E: 20 8A EB  JSR sub_EB8A
- - - - - - 0x002A61 00:EA51: B0 13     BCS bra_EA66
- - - - - - 0x002A63 00:EA53: 99 00 04  STA ram_0400,Y
- - - - - - 0x002A66 00:EA56: C8        INY
- - - - - - 0x002A67 00:EA57: A5 07     LDA ram_0007
- - - - - - 0x002A69 00:EA59: 0D 0C 04  ORA ram_040C
- - - - - - 0x002A6C 00:EA5C: 8D 0C 04  STA ram_040C
- - - - - - 0x002A6F 00:EA5F: 46 07     LSR ram_0007
- - - - - - 0x002A71 00:EA61: CA        DEX
- - - - - - 0x002A72 00:EA62: D0 E8     BNE bra_EA4C_loop
- - - - - - 0x002A74 00:EA64: F0 19     BEQ bra_EA7F
bra_EA66:
- - - - - - 0x002A76 00:EA66: A9 B0     LDA #$B0
- - - - - - 0x002A78 00:EA68: 85 05     STA ram_0005
- - - - - - 0x002A7A 00:EA6A: A9 00     LDA #$00
- - - - - - 0x002A7C 00:EA6C: 85 07     STA ram_0007
- - - - - - 0x002A7E 00:EA6E: C6 06     DEC ram_0006
- - - - - - 0x002A80 00:EA70: A5 06     LDA ram_0006
- - - - - - 0x002A82 00:EA72: C9 04     CMP #$04
- - - - - - 0x002A84 00:EA74: D0 D6     BNE bra_EA4C_loop
bra_EA76_loop:
- - - - - - 0x002A86 00:EA76: A9 FF     LDA #$FF
- - - - - - 0x002A88 00:EA78: 99 00 04  STA ram_0400,Y
- - - - - - 0x002A8B 00:EA7B: C8        INY
- - - - - - 0x002A8C 00:EA7C: CA        DEX
- - - - - - 0x002A8D 00:EA7D: D0 F7     BNE bra_EA76_loop
bra_EA7F:
- - - - - - 0x002A8F 00:EA7F: C8        INY
- - - - - - 0x002A90 00:EA80: A9 00     LDA #$00
- - - - - - 0x002A92 00:EA82: 85 06     STA ram_0006
- - - - - - 0x002A94 00:EA84: 85 08     STA ram_0008
- - - - - - 0x002A96 00:EA86: AA        TAX
- - - - - - 0x002A97 00:EA87: A9 B0     LDA #$B0
- - - - - - 0x002A99 00:EA89: 85 05     STA ram_0005
- - - - - - 0x002A9B 00:EA8B: 84 04     STY ram_0004
- - - - - - 0x002A9D 00:EA8D: A9 00     LDA #$00
- - - - - - 0x002A9F 00:EA8F: 85 07     STA ram_0007
bra_EA91:
- - - - - - 0x002AA1 00:EA91: C6 05     DEC ram_0005
- - - - - - 0x002AA3 00:EA93: A4 05     LDY ram_0005
- - - - - - 0x002AA5 00:EA95: B9 50 06  LDA ram_0650,Y
- - - - - - 0x002AA8 00:EA98: A8        TAY
- - - - - - 0x002AA9 00:EA99: C9 04     CMP #$04
- - - - - - 0x002AAB 00:EA9B: B0 08     BCS bra_EAA5
- - - - - - 0x002AAD 00:EA9D: C5 06     CMP ram_0006
- - - - - - 0x002AAF 00:EA9F: F0 04     BEQ bra_EAA5
- - - - - - 0x002AB1 00:EAA1: E6 05     INC ram_0005
- - - - - - 0x002AB3 00:EAA3: D0 0E     BNE bra_EAB3
bra_EAA5:
- - - - - - 0x002AB5 00:EAA5: E6 07     INC ram_0007
- - - - - - 0x002AB7 00:EAA7: A5 07     LDA ram_0007
- - - - - - 0x002AB9 00:EAA9: C9 04     CMP #$04
- - - - - - 0x002ABB 00:EAAB: F0 10     BEQ bra_EABD
- - - - - - 0x002ABD 00:EAAD: A4 05     LDY ram_0005
- - - - - - 0x002ABF 00:EAAF: F0 0C     BEQ bra_EABD
- - - - - - 0x002AC1 00:EAB1: D0 DE     BNE bra_EA91
bra_EAB3:
- - - - - - 0x002AC3 00:EAB3: A5 07     LDA ram_0007
- - - - - - 0x002AC5 00:EAB5: D0 06     BNE bra_EABD
- - - - - - 0x002AC7 00:EAB7: 84 06     STY ram_0006
- - - - - - 0x002AC9 00:EAB9: F0 D6     BEQ bra_EA91
- - - - - - 0x002ACB 00:EABB: E6 05     INC ram_0005
bra_EABD:
- - - - - - 0x002ACD 00:EABD: C6 07     DEC ram_0007
- - - - - - 0x002ACF 00:EABF: 46 06     LSR ram_0006
- - - - - - 0x002AD1 00:EAC1: 66 08     ROR ram_0008
- - - - - - 0x002AD3 00:EAC3: 46 06     LSR ram_0006
- - - - - - 0x002AD5 00:EAC5: 66 08     ROR ram_0008
- - - - - - 0x002AD7 00:EAC7: 46 07     LSR ram_0007
- - - - - - 0x002AD9 00:EAC9: 66 08     ROR ram_0008
- - - - - - 0x002ADB 00:EACB: 46 07     LSR ram_0007
- - - - - - 0x002ADD 00:EACD: 66 08     ROR ram_0008
- - - - - - 0x002ADF 00:EACF: A9 00     LDA #$00
- - - - - - 0x002AE1 00:EAD1: 85 07     STA ram_0007
- - - - - - 0x002AE3 00:EAD3: E8        INX
- - - - - - 0x002AE4 00:EAD4: 8A        TXA
- - - - - - 0x002AE5 00:EAD5: 29 01     AND #$01
- - - - - - 0x002AE7 00:EAD7: F0 06     BEQ bra_EADF
- - - - - - 0x002AE9 00:EAD9: A4 05     LDY ram_0005
- - - - - - 0x002AEB 00:EADB: F0 E0     BEQ bra_EABD
- - - - - - 0x002AED 00:EADD: D0 B2     BNE bra_EA91
bra_EADF:
- - - - - - 0x002AEF 00:EADF: A4 04     LDY ram_0004
- - - - - - 0x002AF1 00:EAE1: A5 08     LDA ram_0008
- - - - - - 0x002AF3 00:EAE3: 99 00 04  STA ram_0400,Y
- - - - - - 0x002AF6 00:EAE6: E6 04     INC ram_0004
- - - - - - 0x002AF8 00:EAE8: A4 05     LDY ram_0005
- - - - - - 0x002AFA 00:EAEA: F0 02     BEQ bra_EAEE
- - - - - - 0x002AFC 00:EAEC: D0 A3     BNE bra_EA91
bra_EAEE:
- - - - - - 0x002AFE 00:EAEE: A5 04     LDA ram_0004
- - - - - - 0x002B00 00:EAF0: 8D 00 04  STA ram_0400
- - - - - - 0x002B03 00:EAF3: 20 B9 EB  JSR sub_EBB9
- - - - - - 0x002B06 00:EAF6: A2 00     LDX #$00
- - - - - - 0x002B08 00:EAF8: AD 00 04  LDA ram_0400
- - - - - - 0x002B0B 00:EAFB: 38        SEC
- - - - - - 0x002B0C 00:EAFC: E1 00     SBC (ram_0000,X)
- - - - - - 0x002B0E 00:EAFE: F0 79     BEQ bra_EB79
- - - - - - 0x002B10 00:EB00: B0 49     BCS bra_EB4B
- - - - - - 0x002B12 00:EB02: 85 04     STA ram_0004
- - - - - - 0x002B14 00:EB04: A9 00     LDA #$00
- - - - - - 0x002B16 00:EB06: 38        SEC
- - - - - - 0x002B17 00:EB07: E5 04     SBC ram_0004
- - - - - - 0x002B19 00:EB09: 85 04     STA ram_0004
- - - - - - 0x002B1B 00:EB0B: A9 F8     LDA #$F8
- - - - - - 0x002B1D 00:EB0D: 85 02     STA ram_0002
- - - - - - 0x002B1F 00:EB0F: A9 FF     LDA #$FF
- - - - - - 0x002B21 00:EB11: 85 03     STA ram_0003
- - - - - - 0x002B23 00:EB13: E6 20     INC ram_current_round
- - - - - - 0x002B25 00:EB15: 20 B9 EB  JSR sub_EBB9
- - - - - - 0x002B28 00:EB18: C6 20     DEC ram_current_round
- - - - - - 0x002B2A 00:EB1A: A5 00     LDA ram_0000
- - - - - - 0x002B2C 00:EB1C: 38        SEC
- - - - - - 0x002B2D 00:EB1D: E5 04     SBC ram_0004
- - - - - - 0x002B2F 00:EB1F: 85 00     STA ram_0000
- - - - - - 0x002B31 00:EB21: A5 01     LDA ram_0001
- - - - - - 0x002B33 00:EB23: E9 00     SBC #$00
- - - - - - 0x002B35 00:EB25: 85 01     STA ram_0001
- - - - - - 0x002B37 00:EB27: A4 04     LDY ram_0004
- - - - - - 0x002B39 00:EB29: A2 00     LDX #$00
- - - - - - 0x002B3B 00:EB2B: A5 00     LDA ram_0000
- - - - - - 0x002B3D 00:EB2D: D0 02     BNE bra_EB31
- - - - - - 0x002B3F 00:EB2F: C6 01     DEC ram_0001
bra_EB31:
- - - - - - 0x002B41 00:EB31: C6 00     DEC ram_0000
bra_EB33_loop:
- - - - - - 0x002B43 00:EB33: E6 00     INC ram_0000
- - - - - - 0x002B45 00:EB35: D0 02     BNE bra_EB39
- - - - - - 0x002B47 00:EB37: E6 01     INC ram_0001
bra_EB39:
- - - - - - 0x002B49 00:EB39: B1 00     LDA (ram_0000),Y
- - - - - - 0x002B4B 00:EB3B: 81 00     STA (ram_0000,X)
- - - - - - 0x002B4D 00:EB3D: A5 01     LDA ram_0001
- - - - - - 0x002B4F 00:EB3F: C5 03     CMP ram_0003
- - - - - - 0x002B51 00:EB41: D0 F0     BNE bra_EB33_loop
- - - - - - 0x002B53 00:EB43: A5 00     LDA ram_0000
- - - - - - 0x002B55 00:EB45: C5 02     CMP ram_0002
- - - - - - 0x002B57 00:EB47: D0 EA     BNE bra_EB33_loop
- - - - - - 0x002B59 00:EB49: F0 2E     BEQ bra_EB79
bra_EB4B:
- - - - - - 0x002B5B 00:EB4B: 85 04     STA ram_0004
- - - - - - 0x002B5D 00:EB4D: 20 B9 EB  JSR sub_EBB9
- - - - - - 0x002B60 00:EB50: A9 F8     LDA #$F8
- - - - - - 0x002B62 00:EB52: 38        SEC
- - - - - - 0x002B63 00:EB53: E5 04     SBC ram_0004
- - - - - - 0x002B65 00:EB55: 85 02     STA ram_0002
- - - - - - 0x002B67 00:EB57: A9 FF     LDA #$FF
- - - - - - 0x002B69 00:EB59: E9 00     SBC #$00
- - - - - - 0x002B6B 00:EB5B: 85 03     STA ram_0003
- - - - - - 0x002B6D 00:EB5D: A2 00     LDX #$00
- - - - - - 0x002B6F 00:EB5F: A4 04     LDY ram_0004
bra_EB61_loop:
- - - - - - 0x002B71 00:EB61: A1 02     LDA (ram_0002,X)
- - - - - - 0x002B73 00:EB63: 91 02     STA (ram_0002),Y
- - - - - - 0x002B75 00:EB65: A5 02     LDA ram_0002
- - - - - - 0x002B77 00:EB67: D0 02     BNE bra_EB6B
- - - - - - 0x002B79 00:EB69: C6 03     DEC ram_0003
bra_EB6B:
- - - - - - 0x002B7B 00:EB6B: C6 02     DEC ram_0002
- - - - - - 0x002B7D 00:EB6D: A5 01     LDA ram_0001
- - - - - - 0x002B7F 00:EB6F: C5 03     CMP ram_0003
- - - - - - 0x002B81 00:EB71: D0 EE     BNE bra_EB61_loop
- - - - - - 0x002B83 00:EB73: A5 00     LDA ram_0000
- - - - - - 0x002B85 00:EB75: C5 02     CMP ram_0002
- - - - - - 0x002B87 00:EB77: D0 E8     BNE bra_EB61_loop
bra_EB79:
- - - - - - 0x002B89 00:EB79: 20 B9 EB  JSR sub_EBB9
- - - - - - 0x002B8C 00:EB7C: A0 00     LDY #$00
bra_EB7E:
- - - - - - 0x002B8E 00:EB7E: B9 00 04  LDA ram_0400,Y
- - - - - - 0x002B91 00:EB81: 91 00     STA (ram_0000),Y
- - - - - - 0x002B93 00:EB83: C8        INY
- - - - - - 0x002B94 00:EB84: CC 00 04  CPY ram_0400
- - - - - - 0x002B97 00:EB87: D0 F5     BNE bra_EB7E
- - - - - - 0x002B99 00:EB89: 60        RTS


; bzk garbage 0x002A32
sub_EB8A:
- - - - - - 0x002B9A 00:EB8A: 84 04     STY ram_0004
- - - - - - 0x002B9C 00:EB8C: 20 A5 EB  JSR sub_EBA5
- - - - - - 0x002B9F 00:EB8F: A4 04     LDY ram_0004
- - - - - - 0x002BA1 00:EB91: 60        RTS


; bzk garbage 0x002A32
sub_EB92:
- - - - - - 0x002BA2 00:EB92: 48        PHA
- - - - - - 0x002BA3 00:EB93: A9 B0     LDA #$B0
- - - - - - 0x002BA5 00:EB95: 85 05     STA ram_0005
- - - - - - 0x002BA7 00:EB97: 68        PLA
bra_EB98_loop:
- - - - - - 0x002BA8 00:EB98: 48        PHA
- - - - - - 0x002BA9 00:EB99: 20 8A EB  JSR sub_EB8A
- - - - - - 0x002BAC 00:EB9C: 99 00 04  STA ram_0400,Y
- - - - - - 0x002BAF 00:EB9F: C8        INY
- - - - - - 0x002BB0 00:EBA0: 68        PLA
- - - - - - 0x002BB1 00:EBA1: CA        DEX
- - - - - - 0x002BB2 00:EBA2: D0 F4     BNE bra_EB98_loop
- - - - - - 0x002BB4 00:EBA4: 60        RTS


; bzk garbage 0x002A32
sub_EBA5:
bra_EBA5_loop:
- - - - - - 0x002BB5 00:EBA5: A4 05     LDY ram_0005
- - - - - - 0x002BB7 00:EBA7: D0 04     BNE bra_EBAD
- - - - - - 0x002BB9 00:EBA9: A9 FF     LDA #$FF
- - - - - - 0x002BBB 00:EBAB: 38        SEC
- - - - - - 0x002BBC 00:EBAC: 60        RTS
bra_EBAD:
- - - - - - 0x002BBD 00:EBAD: C6 05     DEC ram_0005
- - - - - - 0x002BBF 00:EBAF: A4 05     LDY ram_0005
- - - - - - 0x002BC1 00:EBB1: D9 50 06  CMP ram_0650,Y
- - - - - - 0x002BC4 00:EBB4: D0 EF     BNE bra_EBA5_loop
- - - - - - 0x002BC6 00:EBB6: 98        TYA
- - - - - - 0x002BC7 00:EBB7: 18        CLC
- - - - - - 0x002BC8 00:EBB8: 60        RTS



sub_EBB9:
; the way the game knows where to read round data is instead
; of having a lookup table with lo/hi addresses, it has a 
; byte with size of a next round, which is placed right before round data.
; the game keeps adding that byte to the base pointer, until it finds
; where data for the wanted round is located.

; bzk suppose this byte with size also used as a counter of how
; much bytes from rounds data needs to be read
C - - - - - 0x002BC9 00:EBB9: A0 00     LDY #$00
C - - - - - 0x002BCB 00:EBBB: A9 00     LDA #< tbl_F600_rounds_data
C - - - - - 0x002BCD 00:EBBD: 85 00     STA ram_0000
C - - - - - 0x002BCF 00:EBBF: A9 F6     LDA #> tbl_F600_rounds_data
C - - - - - 0x002BD1 00:EBC1: 85 01     STA ram_0001
C - - - - - 0x002BD3 00:EBC3: A6 20     LDX ram_current_round
loc_EBC5_loop:
C D 3 - - - 0x002BD5 00:EBC5: CA        DEX
C - - - - - 0x002BD6 00:EBC6: D0 01     BNE bra_EBC9_calculate_next_address
C - - - - - 0x002BD8 00:EBC8: 60        RTS
bra_EBC9_calculate_next_address:
C - - - - - 0x002BD9 00:EBC9: B1 00     LDA (ram_0000),Y
C - - - - - 0x002BDB 00:EBCB: 18        CLC
C - - - - - 0x002BDC 00:EBCC: 65 00     ADC ram_0000
C - - - - - 0x002BDE 00:EBCE: 85 00     STA ram_0000
C - - - - - 0x002BE0 00:EBD0: 90 02     BCC bra_EBD4_not_overflow
C - - - - - 0x002BE2 00:EBD2: E6 01     INC ram_0001
bra_EBD4_not_overflow:
C - - - - - 0x002BE4 00:EBD4: 4C C5 EB  JMP loc_EBC5_loop



loc_EBD7_print_text:
sub_EBD7_print_text:
bra_EBD7_infinite_loop:
C D 3 - - - 0x002BE7 00:EBD7: AD 00 02  LDA ram_0200
C - - - - - 0x002BEA 00:EBDA: D0 FB     BNE bra_EBD7_infinite_loop
C - - - - - 0x002BEC 00:EBDC: A0 00     LDY #$00
bra_EBDE_loop:
C - - - - - 0x002BEE 00:EBDE: B1 00     LDA (ram_0000),Y
C - - - - - 0x002BF0 00:EBE0: F0 03     BEQ bra_EBE5
C - - - - - 0x002BF2 00:EBE2: C8        INY
C - - - - - 0x002BF3 00:EBE3: D0 F9     BNE bra_EBDE_loop
bra_EBE5:
C - - - - - 0x002BF5 00:EBE5: 84 0F     STY ram_000F
C - - - - - 0x002BF7 00:EBE7: A6 27     LDX ram_0027
C - - - - - 0x002BF9 00:EBE9: 98        TYA
C - - - - - 0x002BFA 00:EBEA: 09 80     ORA #$80
C - - - - - 0x002BFC 00:EBEC: 20 17 EC  JSR sub_EC17_write_to_buffer
C - - - - - 0x002BFF 00:EBEF: A5 03     LDA ram_0003
C - - - - - 0x002C01 00:EBF1: 20 17 EC  JSR sub_EC17_write_to_buffer
C - - - - - 0x002C04 00:EBF4: A5 02     LDA ram_0002
C - - - - - 0x002C06 00:EBF6: 20 17 EC  JSR sub_EC17_write_to_buffer
C - - - - - 0x002C09 00:EBF9: A0 00     LDY #$00
bra_EBFB:
C - - - - - 0x002C0B 00:EBFB: B1 00     LDA (ram_0000),Y
C - - - - - 0x002C0D 00:EBFD: 20 17 EC  JSR sub_EC17_write_to_buffer
C - - - - - 0x002C10 00:EC00: C8        INY
C - - - - - 0x002C11 00:EC01: C4 0F     CPY ram_000F
C - - - - - 0x002C13 00:EC03: D0 F6     BNE bra_EBFB
C - - - - - 0x002C15 00:EC05: 86 27     STX ram_0027
C - - - - - 0x002C17 00:EC07: 60        RTS



sub_EC08:
C - - - - - 0x002C18 00:EC08: A6 27     LDX ram_0027
C - - - - - 0x002C1A 00:EC0A: A9 00     LDA #$00
C - - - - - 0x002C1C 00:EC0C: 20 17 EC  JSR sub_EC17_write_to_buffer
C - - - - - 0x002C1F 00:EC0F: 86 27     STX ram_0027
C - - - - - 0x002C21 00:EC11: A9 01     LDA #$01
C - - - - - 0x002C23 00:EC13: 8D 00 02  STA ram_0200
C - - - - - 0x002C26 00:EC16: 60        RTS



sub_EC17_write_to_buffer:
C - - - - - 0x002C27 00:EC17: 9D 00 02  STA ram_0200,X
C - - - - - 0x002C2A 00:EC1A: E8        INX
C - - - - - 0x002C2B 00:EC1B: E0 40     CPX #$40
C - - - - - 0x002C2D 00:EC1D: F0 01     BEQ bra_EC20_buffer_overflow
C - - - - - 0x002C2F 00:EC1F: 60        RTS
bra_EC20_buffer_overflow:
- - - - - - 0x002C30 00:EC20: A9 00     LDA #$00
- - - - - - 0x002C32 00:EC22: 8D 01 02  STA ram_0201
- - - - - - 0x002C35 00:EC25: A2 02     LDX #$02
- - - - - - 0x002C37 00:EC27: 60        RTS



sub_EC28_print_tiles_on_black_bg:
; compared to 0x002BE7, this one doesn't use buffer,
; and can print several lines at once
bra_EC28_loop:
C - - - - - 0x002C38 00:EC28: A0 00     LDY #$00
C - - - - - 0x002C3A 00:EC2A: B1 00     LDA (ram_0000),Y
C - - - - - 0x002C3C 00:EC2C: 85 02     STA ram_0002
C - - - - - 0x002C3E 00:EC2E: C8        INY
C - - - - - 0x002C3F 00:EC2F: B1 00     LDA (ram_0000),Y
C - - - - - 0x002C41 00:EC31: 85 03     STA ram_0003
C - - - - - 0x002C43 00:EC33: C8        INY
C - - - - - 0x002C44 00:EC34: 25 02     AND ram_0002
C - - - - - 0x002C46 00:EC36: C9 FF     CMP #$FF
C - - - - - 0x002C48 00:EC38: F0 20     BEQ bra_EC5A_RTS
C - - - - - 0x002C4A 00:EC3A: A5 03     LDA ram_0003
C - - - - - 0x002C4C 00:EC3C: 8D 06 20  STA $2006
C - - - - - 0x002C4F 00:EC3F: A5 02     LDA ram_0002
C - - - - - 0x002C51 00:EC41: 8D 06 20  STA $2006
bra_EC44_loop:
C - - - - - 0x002C54 00:EC44: B1 00     LDA (ram_0000),Y
C - - - - - 0x002C56 00:EC46: F0 06     BEQ bra_EC4E
C - - - - - 0x002C58 00:EC48: 20 26 C0  JSR sub_C026_set_A_to_2007
C - - - - - 0x002C5B 00:EC4B: C8        INY
C - - - - - 0x002C5C 00:EC4C: D0 F6     BNE bra_EC44_loop
bra_EC4E:
C - - - - - 0x002C5E 00:EC4E: 98        TYA
C - - - - - 0x002C5F 00:EC4F: 38        SEC
C - - - - - 0x002C60 00:EC50: 65 00     ADC ram_0000
C - - - - - 0x002C62 00:EC52: 85 00     STA ram_0000
C - - - - - 0x002C64 00:EC54: 90 D2     BCC bra_EC28_loop
C - - - - - 0x002C66 00:EC56: E6 01     INC ram_0001
C - - - - - 0x002C68 00:EC58: D0 CE     BNE bra_EC28_loop
bra_EC5A_RTS:
C - - - - - 0x002C6A 00:EC5A: 60        RTS



loc_EC5B:
C D 3 - - - 0x002C6B 00:EC5B: A5 03     LDA ram_0003
C - - - - - 0x002C6D 00:EC5D: 8D 06 20  STA $2006
C - - - - - 0x002C70 00:EC60: A5 02     LDA ram_0002
C - - - - - 0x002C72 00:EC62: 8D 06 20  STA $2006
C - - - - - 0x002C75 00:EC65: A0 00     LDY #$00
loc_EC67:
C D 3 - - - 0x002C77 00:EC67: B1 00     LDA (ram_0000),Y
C - - - - - 0x002C79 00:EC69: F0 07     BEQ bra_EC72_RTS
C - - - - - 0x002C7B 00:EC6B: 20 26 C0  JSR sub_C026_set_A_to_2007
C - - - - - 0x002C7E 00:EC6E: C8        INY
C - - - - - 0x002C7F 00:EC6F: 4C 67 EC  JMP loc_EC67
bra_EC72_RTS:
C - - - - - 0x002C82 00:EC72: 60        RTS



sub_EC73:
loc_EC73:
C D 3 - - - 0x002C83 00:EC73: 20 AA EF  JSR sub_EFAA
C - - - - - 0x002C86 00:EC76: 20 4D EF  JSR sub_EF4D_clear_nametable
C - - - - - 0x002C89 00:EC79: 20 6C EF  JSR sub_EF6C
C - - - - - 0x002C8C 00:EC7C: A9 3F     LDA #> $3F00
C - - - - - 0x002C8E 00:EC7E: 8D 06 20  STA $2006
C - - - - - 0x002C91 00:EC81: A2 00     LDX #< $3F00
C - - - - - 0x002C93 00:EC83: 8E 06 20  STX $2006
C - - - - - 0x002C96 00:EC86: A2 00     LDX #$00
bra_EC88_loop:
C - - - - - 0x002C98 00:EC88: BD 30 C0  LDA tbl_C030_default_32_colors,X
C - - - - - 0x002C9B 00:EC8B: 20 26 C0  JSR sub_C026_set_A_to_2007
C - - - - - 0x002C9E 00:EC8E: E8        INX
C - - - - - 0x002C9F 00:EC8F: E0 20     CPX #$20
C - - - - - 0x002CA1 00:EC91: D0 F5     BNE bra_EC88_loop
C - - - - - 0x002CA3 00:EC93: A9 3F     LDA #> $3F06
C - - - - - 0x002CA5 00:EC95: 8D 06 20  STA $2006
C - - - - - 0x002CA8 00:EC98: A2 06     LDX #< $3F06
C - - - - - 0x002CAA 00:EC9A: 8E 06 20  STX $2006
C - - - - - 0x002CAD 00:EC9D: A9 2A     LDA #con_ppu_color + $2A
C - - - - - 0x002CAF 00:EC9F: 20 26 C0  JSR sub_C026_set_A_to_2007
C - - - - - 0x002CB2 00:ECA2: A9 21     LDA #con_ppu_color + $21
C - - - - - 0x002CB4 00:ECA4: 20 26 C0  JSR sub_C026_set_A_to_2007
C - - - - - 0x002CB7 00:ECA7: A9 3F     LDA #> $3F0D
C - - - - - 0x002CB9 00:ECA9: 8D 06 20  STA $2006
C - - - - - 0x002CBC 00:ECAC: A2 0D     LDX #< $3F0D
C - - - - - 0x002CBE 00:ECAE: 8E 06 20  STX $2006
C - - - - - 0x002CC1 00:ECB1: A9 26     LDA #con_ppu_color + $26
C - - - - - 0x002CC3 00:ECB3: 20 26 C0  JSR sub_C026_set_A_to_2007
C - - - - - 0x002CC6 00:ECB6: A9 23     LDA #> $23C0
C - - - - - 0x002CC8 00:ECB8: 8D 06 20  STA $2006
C - - - - - 0x002CCB 00:ECBB: A2 C0     LDX #< $23C0
C - - - - - 0x002CCD 00:ECBD: 8E 06 20  STX $2006
C - - - - - 0x002CD0 00:ECC0: A2 20     LDX #$20
bra_ECC2_loop:      ; 23C0-23DF
C - - - - - 0x002CD2 00:ECC2: A9 55     LDA #con_ppu_attr + $55
C - - - - - 0x002CD4 00:ECC4: 20 26 C0  JSR sub_C026_set_A_to_2007
C - - - - - 0x002CD7 00:ECC7: CA        DEX
C - - - - - 0x002CD8 00:ECC8: D0 F8     BNE bra_ECC2_loop
C - - - - - 0x002CDA 00:ECCA: A2 10     LDX #$10
bra_ECCC_loop:      ; 23E0-23EF
C - - - - - 0x002CDC 00:ECCC: A9 FF     LDA #con_ppu_attr + $FF
C - - - - - 0x002CDE 00:ECCE: 20 26 C0  JSR sub_C026_set_A_to_2007
C - - - - - 0x002CE1 00:ECD1: CA        DEX
C - - - - - 0x002CE2 00:ECD2: D0 F8     BNE bra_ECCC_loop
C - - - - - 0x002CE4 00:ECD4: A2 10     LDX #$10
bra_ECD6_loop:      ; 23F0-23FF
C - - - - - 0x002CE6 00:ECD6: A9 5F     LDA #con_ppu_attr + $5F
C - - - - - 0x002CE8 00:ECD8: 20 26 C0  JSR sub_C026_set_A_to_2007
C - - - - - 0x002CEB 00:ECDB: CA        DEX
C - - - - - 0x002CEC 00:ECDC: D0 F8     BNE bra_ECD6_loop
C - - - - - 0x002CEE 00:ECDE: A9 DC     LDA #< tbl_EDDC_tiles___title_screen
C - - - - - 0x002CF0 00:ECE0: 85 00     STA ram_0000
C - - - - - 0x002CF2 00:ECE2: A9 ED     LDA #> tbl_EDDC_tiles___title_screen
C - - - - - 0x002CF4 00:ECE4: 85 01     STA ram_0001
C - - - - - 0x002CF6 00:ECE6: 20 28 EC  JSR sub_EC28_print_tiles_on_black_bg
C - - - - - 0x002CF9 00:ECE9: 20 76 EF  JSR sub_EF76
C - - - - - 0x002CFC 00:ECEC: 20 1B F3  JSR sub_F31B
C - - - - - 0x002CFF 00:ECEF: A5 EB     LDA ram_00EB
C - - - - - 0x002D01 00:ECF1: D0 06     BNE bra_ECF9
C - - - - - 0x002D03 00:ECF3: 20 D4 F2  JSR sub_F2D4
C - - - - - 0x002D06 00:ECF6: 20 46 F0  JSR sub_F046
bra_ECF9:
C - - - - - 0x002D09 00:ECF9: A9 00     LDA #$00
C - - - - - 0x002D0B 00:ECFB: 85 A7     STA ram_00A7
C - - - - - 0x002D0D 00:ECFD: A9 04     LDA #$04
C - - - - - 0x002D0F 00:ECFF: 85 A3     STA ram_00A3
C - - - - - 0x002D11 00:ED01: A9 00     LDA #$00
C - - - - - 0x002D13 00:ED03: 85 A4     STA ram_00A4
C - - - - - 0x002D15 00:ED05: A9 00     LDA #$00    ; bzk optimize, loading same A = 00 a bit higher
C - - - - - 0x002D17 00:ED07: 85 A5     STA ram_00A5
C - - - - - 0x002D19 00:ED09: A9 00     LDA #$00    ; bzk optimize, loading same A = 00 a bit higher
C - - - - - 0x002D1B 00:ED0B: 85 E1     STA ram_00E1
C - - - - - 0x002D1D 00:ED0D: A5 2F     LDA ram_002F
C - - - - - 0x002D1F 00:ED0F: 38        SEC
C - - - - - 0x002D20 00:ED10: E9 80     SBC #$80
C - - - - - 0x002D22 00:ED12: 4A        LSR
C - - - - - 0x002D23 00:ED13: 4A        LSR
C - - - - - 0x002D24 00:ED14: 4A        LSR
C - - - - - 0x002D25 00:ED15: 4A        LSR
C - - - - - 0x002D26 00:ED16: 85 E0     STA ram_00E0
C - - - - - 0x002D28 00:ED18: 20 C7 ED  JSR sub_EDC7
C - - - - - 0x002D2B 00:ED1B: A9 01     LDA #$01
C - - - - - 0x002D2D 00:ED1D: 85 26     STA ram_0026
bra_ED1F_infinite_loop:
C - - - - - 0x002D2F 00:ED1F: A5 26     LDA ram_0026
C - - - - - 0x002D31 00:ED21: D0 FC     BNE bra_ED1F_infinite_loop
bra_ED23_infinite_loop:
C - - - - - 0x002D33 00:ED23: A5 1A     LDA ram_btn_hold
C - - - - - 0x002D35 00:ED25: D0 FC     BNE bra_ED23_infinite_loop
bra_ED27_loop:
loc_ED27_loop:
C D 3 - - - 0x002D37 00:ED27: A5 EB     LDA ram_00EB
C - - - - - 0x002D39 00:ED29: D0 07     BNE bra_ED32
C - - - - - 0x002D3B 00:ED2B: A5 34     LDA ram_0034
C - - - - - 0x002D3D 00:ED2D: F0 0F     BEQ bra_ED3E
C - - - - - 0x002D3F 00:ED2F: 4C 5B ED  JMP loc_ED5B
bra_ED32:
C - - - - - 0x002D42 00:ED32: C6 A5     DEC ram_00A5
C - - - - - 0x002D44 00:ED34: D0 25     BNE bra_ED5B
C - - - - - 0x002D46 00:ED36: C6 A4     DEC ram_00A4
C - - - - - 0x002D48 00:ED38: D0 21     BNE bra_ED5B
C - - - - - 0x002D4A 00:ED3A: C6 A3     DEC ram_00A3
C - - - - - 0x002D4C 00:ED3C: D0 1D     BNE bra_ED5B
bra_ED3E:
C - - - - - 0x002D4E 00:ED3E: A9 02     LDA #$02
C - - - - - 0x002D50 00:ED40: 85 A0     STA ram_00A0
C - - - - - 0x002D52 00:ED42: AD 70 C0  LDA tbl_C070
C - - - - - 0x002D55 00:ED45: 85 A1     STA ram_00A1
C - - - - - 0x002D57 00:ED47: AD 71 C0  LDA tbl_C071
C - - - - - 0x002D5A 00:ED4A: 85 A2     STA ram_00A2
C - - - - - 0x002D5C 00:ED4C: A9 00     LDA #$00
C - - - - - 0x002D5E 00:ED4E: 85 E0     STA ram_00E0
C - - - - - 0x002D60 00:ED50: A9 01     LDA #$01
C - - - - - 0x002D62 00:ED52: 85 A7     STA ram_00A7
C - - - - - 0x002D64 00:ED54: 20 AA EF  JSR sub_EFAA
C - - - - - 0x002D67 00:ED57: 20 1B F3  JSR sub_F31B
C - - - - - 0x002D6A 00:ED5A: 60        RTS
bra_ED5B:
loc_ED5B:
C D 3 - - - 0x002D6B 00:ED5B: 20 C7 ED  JSR sub_EDC7
C - - - - - 0x002D6E 00:ED5E: A5 1A     LDA ram_btn_hold
C - - - - - 0x002D70 00:ED60: 29 10     AND #con_btn_Start
C - - - - - 0x002D72 00:ED62: D0 2B     BNE bra_ED8F
C - - - - - 0x002D74 00:ED64: A5 1A     LDA ram_btn_hold
C - - - - - 0x002D76 00:ED66: 29 20     AND #con_btn_Select
C - - - - - 0x002D78 00:ED68: F0 BD     BEQ bra_ED27_loop
C - - - - - 0x002D7A 00:ED6A: A4 E0     LDY ram_00E0
C - - - - - 0x002D7C 00:ED6C: A6 2F     LDX ram_002F
C - - - - - 0x002D7E 00:ED6E: C0 04     CPY #$04
C - - - - - 0x002D80 00:ED70: D0 04     BNE bra_ED76
C - - - - - 0x002D82 00:ED72: A0 FF     LDY #$FF
C - - - - - 0x002D84 00:ED74: A2 70     LDX #$70
bra_ED76:
C - - - - - 0x002D86 00:ED76: 8A        TXA
C - - - - - 0x002D87 00:ED77: 18        CLC
C - - - - - 0x002D88 00:ED78: 69 10     ADC #$10
C - - - - - 0x002D8A 00:ED7A: 85 2F     STA ram_002F
C - - - - - 0x002D8C 00:ED7C: 8D 00 07  STA ram_spr_Y
C - - - - - 0x002D8F 00:ED7F: C8        INY
C - - - - - 0x002D90 00:ED80: 84 E0     STY ram_00E0
bra_ED82_infinite_loop:
C - - - - - 0x002D92 00:ED82: A5 1A     LDA ram_btn_hold
C - - - - - 0x002D94 00:ED84: 29 20     AND #con_btn_Select
C - - - - - 0x002D96 00:ED86: D0 FA     BNE bra_ED82_infinite_loop
C - - - - - 0x002D98 00:ED88: A9 04     LDA #$04
C - - - - - 0x002D9A 00:ED8A: 85 A3     STA ram_00A3
C - - - - - 0x002D9C 00:ED8C: 4C 27 ED  JMP loc_ED27_loop
bra_ED8F:
C - - - - - 0x002D9F 00:ED8F: 20 AA EF  JSR sub_EFAA
C - - - - - 0x002DA2 00:ED92: 20 1B F3  JSR sub_F31B
C - - - - - 0x002DA5 00:ED95: A5 E0     LDA ram_00E0
C - - - - - 0x002DA7 00:ED97: C9 04     CMP #$04
C - - - - - 0x002DA9 00:ED99: F0 26     BEQ bra_EDC1
C - - - - - 0x002DAB 00:ED9B: AA        TAX
C - - - - - 0x002DAC 00:ED9C: 4A        LSR
C - - - - - 0x002DAD 00:ED9D: 85 E0     STA ram_00E0
C - - - - - 0x002DAF 00:ED9F: 8A        TXA
C - - - - - 0x002DB0 00:EDA0: 29 01     AND #$01
C - - - - - 0x002DB2 00:EDA2: 85 E8     STA ram_00E8
C - - - - - 0x002DB4 00:EDA4: 85 E9     STA ram_00E9
C - - - - - 0x002DB6 00:EDA6: A9 00     LDA #$00
C - - - - - 0x002DB8 00:EDA8: 85 A0     STA ram_00A0
C - - - - - 0x002DBA 00:EDAA: A9 00     LDA #$00    ; bzk optimize, loading same A
C - - - - - 0x002DBC 00:EDAC: 85 A1     STA ram_00A1
C - - - - - 0x002DBE 00:EDAE: A9 00     LDA #$00    ; bzk optimize, loading same A
C - - - - - 0x002DC0 00:EDB0: 85 A2     STA ram_00A2
C - - - - - 0x002DC2 00:EDB2: A9 00     LDA #$00    ; bzk optimize, loading same A
C - - - - - 0x002DC4 00:EDB4: 85 A7     STA ram_00A7
C - - - - - 0x002DC6 00:EDB6: A9 00     LDA #$00    ; bzk optimize, loading same A
C - - - - - 0x002DC8 00:EDB8: 85 B8     STA ram_00B8
C - - - - - 0x002DCA 00:EDBA: 85 B9     STA ram_00B9
C - - - - - 0x002DCC 00:EDBC: 85 BC     STA ram_00BC
C - - - - - 0x002DCE 00:EDBE: 85 BD     STA ram_00BD
C - - - - - 0x002DD0 00:EDC0: 60        RTS
bra_EDC1:
C - - - - - 0x002DD1 00:EDC1: 20 35 E1  JSR sub_E135
C - - - - - 0x002DD4 00:EDC4: 4C 73 EC  JMP loc_EC73



sub_EDC7:
C - - - - - 0x002DD7 00:EDC7: A5 2F     LDA ram_002F
C - - - - - 0x002DD9 00:EDC9: 8D 00 07  STA ram_spr_Y
C - - - - - 0x002DDC 00:EDCC: A9 FE     LDA #$FE
C - - - - - 0x002DDE 00:EDCE: 8D 01 07  STA ram_spr_T
C - - - - - 0x002DE1 00:EDD1: A9 01     LDA #$01
C - - - - - 0x002DE3 00:EDD3: 8D 02 07  STA ram_spr_A
C - - - - - 0x002DE6 00:EDD6: A9 38     LDA #$38
C - - - - - 0x002DE8 00:EDD8: 8D 03 07  STA ram_spr_X
C - - - - - 0x002DEB 00:EDDB: 60        RTS



tbl_EDDC_tiles___title_screen:
- D 3 - I - 0x002DEC 00:EDDC: 65 20     .word $2065
- D 3 - I - 0x002DEE 00:EDDE: 64        .byte $64, $65, $20, $64, $65, $20, $64, $65, $20, $64, $65, $20, $64, $66, $66, $65, $20, $64, $66, $66, $66, $65   ; NUTS (1)
- D 3 - I - 0x002E04 00:EDF4: 00        .byte $00   ; 

- D 3 - I - 0x002E05 00:EDF5: 85 20     .word $2085
- D 3 - I - 0x002E07 00:EDF7: 66        .byte $66, $66, $67, $66, $66, $20, $66, $66, $20, $66, $66, $20, $74, $66, $66, $75, $20, $A0, $66, $66, $A3, $A4   ; NUTS (2)
- D 3 - I - 0x002E1D 00:EE0D: 00        .byte $00   ; 

- D 3 - I - 0x002E1E 00:EE0E: A5 20     .word $20A5
- D 3 - I - 0x002E20 00:EE10: 66        .byte $66, $66, $77, $66, $66, $20, $66, $66, $20, $66, $66, $20, $20, $66, $66, $20, $20, $B0, $B1, $B2, $B3, $B4   ; NUTS (3)
- D 3 - I - 0x002E36 00:EE26: 00        .byte $00   ; 

- D 3 - I - 0x002E37 00:EE27: C5 20     .word $20C5
- D 3 - I - 0x002E39 00:EE29: 66        .byte $66, $66, $76, $66, $66, $20, $66, $66, $20, $66, $66, $20, $20, $66, $66, $20, $20, $C0, $C1, $66, $66, $C4   ; NUTS (4)
- D 3 - I - 0x002E4F 00:EE3F: 00        .byte $00   ; 

- D 3 - I - 0x002E50 00:EE40: E5 20     .word $20E5
- D 3 - I - 0x002E52 00:EE42: 74        .byte $74, $75, $20, $74, $75, $20, $74, $66, $6A, $66, $75, $20, $20, $74, $75, $20, $20, $74, $66, $66, $66, $75   ; NUTS (5)
- D 3 - I - 0x002E68 00:EE58: 00        .byte $00   ; 

- D 3 - I - 0x002E69 00:EE59: 0F 21     .word $210F
- D 3 - I - 0x002E6B 00:EE5B: 06        .byte $06, $07   ; & (1)
- D 3 - I - 0x002E6D 00:EE5D: 00        .byte $00   ; 

- D 3 - I - 0x002E6E 00:EE5E: 2F 21     .word $212F
- D 3 - I - 0x002E70 00:EE60: 16        .byte $16, $17   ; & (2)
- D 3 - I - 0x002E72 00:EE62: 00        .byte $00   ; 

- D 3 - I - 0x002E73 00:EE63: 45 21     .word $2145
- D 3 - I - 0x002E75 00:EE65: 64        .byte $64, $65, $20, $64, $65, $20, $64, $66, $66, $65, $20, $64, $65, $20, $20, $20, $20, $64, $65, $20, $64, $65   ; MILK (1)
- D 3 - I - 0x002E8B 00:EE7B: 00        .byte $00   ; 

- D 3 - I - 0x002E8C 00:EE7C: 65 21     .word $2165
- D 3 - I - 0x002E8E 00:EE7E: 66        .byte $66, $66, $79, $66, $66, $20, $74, $66, $66, $75, $20, $66, $66, $20, $20, $20, $20, $66, $66, $6B, $66, $6D   ; MILK (2)
- D 3 - I - 0x002EA4 00:EE94: 00        .byte $00   ; 

- D 3 - I - 0x002EA5 00:EE95: 85 21     .word $2185
- D 3 - I - 0x002EA7 00:EE97: 66        .byte $66, $66, $69, $66, $66, $20, $20, $66, $66, $20, $20, $66, $66, $20, $20, $20, $20, $66, $66, $66, $66, $6E   ; MILK (3)
- D 3 - I - 0x002EBD 00:EEAD: 00        .byte $00   ; 

- D 3 - I - 0x002EBE 00:EEAE: A5 21     .word $21A5
- D 3 - I - 0x002EC0 00:EEB0: 66        .byte $66, $66, $20, $66, $66, $20, $64, $66, $66, $65, $20, $66, $66, $66, $66, $65, $20, $66, $66, $6C, $66, $5F   ; MILK (4)
- D 3 - I - 0x002ED6 00:EEC6: 00        .byte $00   ; 

- D 3 - I - 0x002ED7 00:EEC7: C5 21     .word $21C5
- D 3 - I - 0x002ED9 00:EEC9: 74        .byte $74, $75, $20, $74, $75, $20, $74, $66, $66, $75, $20, $74, $66, $66, $66, $75, $20, $74, $75, $20, $74, $75   ; MILK (5)
- D 3 - I - 0x002EEF 00:EEDF: 00        .byte $00   ; 

- D 3 - I - 0x002EF0 00:EEE0: 09 22     .word $2209
- D 3 - I - 0x002EF2 00:EEE2: 31        .byte "1 PLAYER GAME A"
- D 3 - I - 0x002F01 00:EEF1: 00        .byte $00   ; 

- D 3 - I - 0x002F02 00:EEF2: 49 22     .word $2249
- D 3 - I - 0x002F04 00:EEF4: 31        .byte "1 PLAYER GAME B"
- D 3 - I - 0x002F13 00:EF03: 00        .byte $00   ; 

- D 3 - I - 0x002F14 00:EF04: 89 22     .word $2289
- D 3 - I - 0x002F16 00:EF06: 32        .byte "2 PLAYER GAME A"
- D 3 - I - 0x002F25 00:EF15: 00        .byte $00   ; 

- D 3 - I - 0x002F26 00:EF16: C9 22     .word $22C9
- D 3 - I - 0x002F28 00:EF18: 32        .byte "2 PLAYER GAME B"
- D 3 - I - 0x002F37 00:EF27: 00        .byte $00   ; 

- D 3 - I - 0x002F38 00:EF28: 0B 23     .word $230B
- D 3 - I - 0x002F3A 00:EF2A: 47        .byte "GAME EDITOR"
- D 3 - I - 0x002F45 00:EF35: 00        .byte $00   ; 

- D 3 - I - 0x002F46 00:EF36: 48 23     .word $2348
- D 3 - I - 0x002F48 00:EF38: 40        .byte "@ 1984 HUDSON SOFT"
- D 3 - I - 0x002F5A 00:EF4A: 00        .byte $00   ; 

- D 3 - I - 0x002F5B 00:EF4B: FF FF     .word $FFFF ; end token



sub_EF4D_clear_nametable:
C - - - - - 0x002F5D 00:EF4D: 20 6C EF  JSR sub_EF6C
C - - - - - 0x002F60 00:EF50: A9 20     LDA #> $2000
C - - - - - 0x002F62 00:EF52: 8D 06 20  STA $2006
C - - - - - 0x002F65 00:EF55: A2 00     LDX #< $2000
C - - - - - 0x002F67 00:EF57: 8E 06 20  STX $2006
C - - - - - 0x002F6A 00:EF5A: A2 C0     LDX #$C0
C - - - - - 0x002F6C 00:EF5C: A0 04     LDY #$04
bra_EF5E_loop:      ; 2000-23BF
C - - - - - 0x002F6E 00:EF5E: A9 20     LDA #con_ppu_tile + $20
C - - - - - 0x002F70 00:EF60: 20 26 C0  JSR sub_C026_set_A_to_2007
C - - - - - 0x002F73 00:EF63: CA        DEX
C - - - - - 0x002F74 00:EF64: D0 F8     BNE bra_EF5E_loop
C - - - - - 0x002F76 00:EF66: 88        DEY
C - - - - - 0x002F77 00:EF67: D0 F5     BNE bra_EF5E_loop
C - - - - - 0x002F79 00:EF69: 4C 76 EF  JMP loc_EF76



sub_EF6C:
C - - - - - 0x002F7C 00:EF6C: A9 01     LDA #$01
C - - - - - 0x002F7E 00:EF6E: 85 E6     STA ram_00E6
C - - - - - 0x002F80 00:EF70: 20 D0 EF  JSR sub_EFD0
C - - - - - 0x002F83 00:EF73: 4C A1 EF  JMP loc_EFA1



sub_EF76:
loc_EF76:
C D 3 - - - 0x002F86 00:EF76: A9 00     LDA #$00
C - - - - - 0x002F88 00:EF78: 85 E6     STA ram_00E6
C - - - - - 0x002F8A 00:EF7A: 20 83 EF  JSR sub_EF83
C - - - - - 0x002F8D 00:EF7D: 20 8E EF  JSR sub_EF8E
C - - - - - 0x002F90 00:EF80: 4C C7 EF  JMP loc_EFC7



sub_EF83:
C - - - - - 0x002F93 00:EF83: A9 00     LDA #$00
C - - - - - 0x002F95 00:EF85: 8D 05 20  STA $2005
C - - - - - 0x002F98 00:EF88: A9 FF     LDA #$FF
C - - - - - 0x002F9A 00:EF8A: 8D 05 20  STA $2005
C - - - - - 0x002F9D 00:EF8D: 60        RTS



sub_EF8E:
C - - - - - 0x002F9E 00:EF8E: 20 BC EF  JSR sub_EFBC_wait_for_next_vblank
C - - - - - 0x002FA1 00:EF91: A9 00     LDA #< ram_oam
C - - - - - 0x002FA3 00:EF93: 8D 03 20  STA $2003
C - - - - - 0x002FA6 00:EF96: A9 07     LDA #> ram_oam
C - - - - - 0x002FA8 00:EF98: 8D 14 40  STA $4014
C - - - - - 0x002FAB 00:EF9B: A9 1E     LDA #$1E
C - - - - - 0x002FAD 00:EF9D: 8D 01 20  STA $2001
C - - - - - 0x002FB0 00:EFA0: 60        RTS



loc_EFA1:
C D 3 - - - 0x002FB1 00:EFA1: 20 BC EF  JSR sub_EFBC_wait_for_next_vblank
C - - - - - 0x002FB4 00:EFA4: A9 00     LDA #$00
C - - - - - 0x002FB6 00:EFA6: 8D 01 20  STA $2001
C - - - - - 0x002FB9 00:EFA9: 60        RTS



sub_EFAA:
C - - - - - 0x002FBA 00:EFAA: A9 00     LDA #$00
C - - - - - 0x002FBC 00:EFAC: 85 10     STA ram_0010
C - - - - - 0x002FBE 00:EFAE: A9 07     LDA #$07
C - - - - - 0x002FC0 00:EFB0: 85 11     STA ram_0011
C - - - - - 0x002FC2 00:EFB2: A0 00     LDY #$00
C - - - - - 0x002FC4 00:EFB4: A9 F8     LDA #$F8
bra_EFB6_loop:
C - - - - - 0x002FC6 00:EFB6: 91 10     STA (ram_0010),Y
C - - - - - 0x002FC8 00:EFB8: C8        INY
C - - - - - 0x002FC9 00:EFB9: D0 FB     BNE bra_EFB6_loop
C - - - - - 0x002FCB 00:EFBB: 60        RTS



sub_EFBC_wait_for_next_vblank:
bra_EFBC_infinite_loop:
C - - - - - 0x002FCC 00:EFBC: AD 02 20  LDA $2002
C - - - - - 0x002FCF 00:EFBF: 30 FB     BMI bra_EFBC_infinite_loop
bra_EFC1_infinite_loop:
C - - - - - 0x002FD1 00:EFC1: AD 02 20  LDA $2002
C - - - - - 0x002FD4 00:EFC4: 10 FB     BPL bra_EFC1_infinite_loop
C - - - - - 0x002FD6 00:EFC6: 60        RTS



loc_EFC7:
C D 3 - - - 0x002FD7 00:EFC7: 20 BC EF  JSR sub_EFBC_wait_for_next_vblank
C - - - - - 0x002FDA 00:EFCA: A9 90     LDA #$90
C - - - - - 0x002FDC 00:EFCC: 8D 00 20  STA $2000
C - - - - - 0x002FDF 00:EFCF: 60        RTS



sub_EFD0:
C - - - - - 0x002FE0 00:EFD0: A9 00     LDA #$00
C - - - - - 0x002FE2 00:EFD2: 8D 00 02  STA ram_0200
C - - - - - 0x002FE5 00:EFD5: 8D 01 02  STA ram_0201
bra_EFD8_infinite_loop:
C - - - - - 0x002FE8 00:EFD8: AD 00 02  LDA ram_0200
C - - - - - 0x002FEB 00:EFDB: D0 FB     BNE bra_EFD8_infinite_loop
C - - - - - 0x002FED 00:EFDD: A9 10     LDA #$10
C - - - - - 0x002FEF 00:EFDF: 8D 00 20  STA $2000
C - - - - - 0x002FF2 00:EFE2: 60        RTS


; bzk garbage
- - - - - - 0x002FF3 00:EFE3: A9 00     LDA #$00
- - - - - - 0x002FF5 00:EFE5: 85 34     STA ram_0034
- - - - - - 0x002FF7 00:EFE7: 60        RTS



sub_EFE8:   ; bzk optimize, transfer this code instead of JSR
C - - - - - 0x002FF8 00:EFE8: A9 00     LDA #$00
C - - - - - 0x002FFA 00:EFEA: 85 38     STA ram_0038
C - - - - - 0x002FFC 00:EFEC: 60        RTS



sub_EFED:
C - - - - - 0x002FFD 00:EFED: 48        PHA
C - - - - - 0x002FFE 00:EFEE: A5 A7     LDA ram_00A7
C - - - - - 0x003000 00:EFF0: D0 10     BNE bra_F002
C - - - - - 0x003002 00:EFF2: A9 DA     LDA #< tbl_F5DA
C - - - - - 0x003004 00:EFF4: 85 36     STA ram_0036
C - - - - - 0x003006 00:EFF6: A9 F5     LDA #> tbl_F5DA
C - - - - - 0x003008 00:EFF8: 85 37     STA ram_0037
C - - - - - 0x00300A 00:EFFA: A9 01     LDA #$01
C - - - - - 0x00300C 00:EFFC: 85 38     STA ram_0038
C - - - - - 0x00300E 00:EFFE: A9 02     LDA #$02
C - - - - - 0x003010 00:F000: 85 39     STA ram_0039
bra_F002:
C - - - - - 0x003012 00:F002: 68        PLA
C - - - - - 0x003013 00:F003: 60        RTS



sub_F004:
C - - - - - 0x003014 00:F004: A9 B9     LDA #< tbl_F5B9
C - - - - - 0x003016 00:F006: 85 32     STA ram_0032
C - - - - - 0x003018 00:F008: A9 F5     LDA #> tbl_F5B9
C - - - - - 0x00301A 00:F00A: 85 33     STA ram_0033
C - - - - - 0x00301C 00:F00C: A9 BA     LDA #< (tbl_F5B9 + $01)
C - - - - - 0x00301E 00:F00E: 85 36     STA ram_0036
C - - - - - 0x003020 00:F010: A9 F5     LDA #> (tbl_F5B9 + $01)
C - - - - - 0x003022 00:F012: 85 37     STA ram_0037
sub_F014:
C - - - - - 0x003024 00:F014: A9 01     LDA #$01
C - - - - - 0x003026 00:F016: 85 34     STA ram_0034
C - - - - - 0x003028 00:F018: 85 38     STA ram_0038
C - - - - - 0x00302A 00:F01A: 60        RTS



sub_F01B:
C - - - - - 0x00302B 00:F01B: A5 20     LDA ram_current_round
C - - - - - 0x00302D 00:F01D: 29 01     AND #$01
C - - - - - 0x00302F 00:F01F: D0 0B     BNE bra_F02C
C - - - - - 0x003031 00:F021: A9 44     LDA #< tbl_F544
C - - - - - 0x003033 00:F023: 85 3A     STA ram_003A
C - - - - - 0x003035 00:F025: A9 F5     LDA #> tbl_F544
C - - - - - 0x003037 00:F027: 85 3B     STA ram_003B
C - - - - - 0x003039 00:F029: 4C 34 F0  JMP loc_F034
bra_F02C:
C - - - - - 0x00303C 00:F02C: A9 03     LDA #< tbl_F503
C - - - - - 0x00303E 00:F02E: 85 3A     STA ram_003A
C - - - - - 0x003040 00:F030: A9 F5     LDA #> tbl_F503
C - - - - - 0x003042 00:F032: 85 3B     STA ram_003B
loc_F034:
C D 3 - - - 0x003044 00:F034: A9 01     LDA #$01
C - - - - - 0x003046 00:F036: 85 3C     STA ram_003C
C - - - - - 0x003048 00:F038: 60        RTS



sub_F039:
C - - - - - 0x003049 00:F039: A9 7B     LDA #< (tbl_F37A + $01)
C - - - - - 0x00304B 00:F03B: 85 3A     STA ram_003A
C - - - - - 0x00304D 00:F03D: A9 F3     LDA #> (tbl_F37A + $01)
C - - - - - 0x00304F 00:F03F: 85 3B     STA ram_003B
C - - - - - 0x003051 00:F041: A9 01     LDA #$01
C - - - - - 0x003053 00:F043: 85 3C     STA ram_003C
C - - - - - 0x003055 00:F045: 60        RTS



sub_F046:
C - - - - - 0x003056 00:F046: A9 7A     LDA #< tbl_F37A
C - - - - - 0x003058 00:F048: 85 32     STA ram_0032
C - - - - - 0x00305A 00:F04A: A9 F3     LDA #> tbl_F37A
C - - - - - 0x00305C 00:F04C: 85 33     STA ram_0033
C - - - - - 0x00305E 00:F04E: A9 7B     LDA #< (tbl_F37A + $01)
C - - - - - 0x003060 00:F050: 85 36     STA ram_0036
C - - - - - 0x003062 00:F052: A9 F3     LDA #> (tbl_F37A + $01)
C - - - - - 0x003064 00:F054: 85 37     STA ram_0037
C - - - - - 0x003066 00:F056: A9 7C     LDA #< (tbl_F37A + $02)
C - - - - - 0x003068 00:F058: 85 3A     STA ram_003A
C - - - - - 0x00306A 00:F05A: A9 F3     LDA #> (tbl_F37A + $02)
C - - - - - 0x00306C 00:F05C: 85 3B     STA ram_003B
sub_F05E:
C - - - - - 0x00306E 00:F05E: 20 14 F0  JSR sub_F014
C - - - - - 0x003071 00:F061: 85 3C     STA ram_003C
C - - - - - 0x003073 00:F063: 60        RTS



sub_F064:
C - - - - - 0x003074 00:F064: A9 DA     LDA #< tbl_F3DA
C - - - - - 0x003076 00:F066: 85 32     STA ram_0032
C - - - - - 0x003078 00:F068: A9 F3     LDA #> tbl_F3DA
C - - - - - 0x00307A 00:F06A: 85 33     STA ram_0033
C - - - - - 0x00307C 00:F06C: A9 DB     LDA #< (tbl_F3DA + $01)
C - - - - - 0x00307E 00:F06E: 85 36     STA ram_0036
C - - - - - 0x003080 00:F070: A9 F3     LDA #> (tbl_F3DA + $01)
C - - - - - 0x003082 00:F072: 85 37     STA ram_0037
C - - - - - 0x003084 00:F074: A9 DC     LDA #< (tbl_F3DA + $02)
C - - - - - 0x003086 00:F076: 85 3A     STA ram_003A
C - - - - - 0x003088 00:F078: A9 F3     LDA #> (tbl_F3DA + $02)
C - - - - - 0x00308A 00:F07A: 85 3B     STA ram_003B
C - - - - - 0x00308C 00:F07C: 20 5E F0  JSR sub_F05E
C - - - - - 0x00308F 00:F07F: 60        RTS



sub_F080:
C - - - - - 0x003090 00:F080: A9 B6     LDA #< tbl_F5B6
C - - - - - 0x003092 00:F082: 85 32     STA ram_0032
C - - - - - 0x003094 00:F084: A9 F5     LDA #> tbl_F5B6
C - - - - - 0x003096 00:F086: 85 33     STA ram_0033
C - - - - - 0x003098 00:F088: A9 01     LDA #$01
C - - - - - 0x00309A 00:F08A: 85 34     STA ram_0034
C - - - - - 0x00309C 00:F08C: 60        RTS



sub_F08D:
C - - - - - 0x00309D 00:F08D: A9 AA     LDA #< tbl_F5AA
C - - - - - 0x00309F 00:F08F: 85 32     STA ram_0032
C - - - - - 0x0030A1 00:F091: A9 F5     LDA #> tbl_F5AA
C - - - - - 0x0030A3 00:F093: 85 33     STA ram_0033
C - - - - - 0x0030A5 00:F095: A9 01     LDA #$01
C - - - - - 0x0030A7 00:F097: 85 34     STA ram_0034
C - - - - - 0x0030A9 00:F099: 60        RTS



sub_F09A:
C - - - - - 0x0030AA 00:F09A: 48        PHA
C - - - - - 0x0030AB 00:F09B: A5 A7     LDA ram_00A7
C - - - - - 0x0030AD 00:F09D: D0 10     BNE bra_F0AF
C - - - - - 0x0030AF 00:F09F: A9 85     LDA #< tbl_F585
C - - - - - 0x0030B1 00:F0A1: 85 32     STA ram_0032
C - - - - - 0x0030B3 00:F0A3: A9 F5     LDA #> tbl_F585
C - - - - - 0x0030B5 00:F0A5: 85 33     STA ram_0033
C - - - - - 0x0030B7 00:F0A7: A9 01     LDA #$01
C - - - - - 0x0030B9 00:F0A9: 85 34     STA ram_0034
C - - - - - 0x0030BB 00:F0AB: A9 04     LDA #$04
C - - - - - 0x0030BD 00:F0AD: 85 35     STA ram_0035
bra_F0AF:
C - - - - - 0x0030BF 00:F0AF: 68        PLA
C - - - - - 0x0030C0 00:F0B0: 60        RTS



sub_F0B1:
C - - - - - 0x0030C1 00:F0B1: 48        PHA
C - - - - - 0x0030C2 00:F0B2: A5 A7     LDA ram_00A7
C - - - - - 0x0030C4 00:F0B4: D0 10     BNE bra_F0C6
C - - - - - 0x0030C6 00:F0B6: A9 8B     LDA #< tbl_F58B
C - - - - - 0x0030C8 00:F0B8: 85 32     STA ram_0032
C - - - - - 0x0030CA 00:F0BA: A9 F5     LDA #> tbl_F58B
C - - - - - 0x0030CC 00:F0BC: 85 33     STA ram_0033
C - - - - - 0x0030CE 00:F0BE: A9 01     LDA #$01
C - - - - - 0x0030D0 00:F0C0: 85 34     STA ram_0034
C - - - - - 0x0030D2 00:F0C2: A9 04     LDA #$04
C - - - - - 0x0030D4 00:F0C4: 85 35     STA ram_0035
bra_F0C6:
C - - - - - 0x0030D6 00:F0C6: 68        PLA
C - - - - - 0x0030D7 00:F0C7: 60        RTS



sub_F0C8:
C - - - - - 0x0030D8 00:F0C8: 48        PHA
C - - - - - 0x0030D9 00:F0C9: A5 A7     LDA ram_00A7
C - - - - - 0x0030DB 00:F0CB: D0 19     BNE bra_F0E6
C - - - - - 0x0030DD 00:F0CD: A5 38     LDA ram_0038
C - - - - - 0x0030DF 00:F0CF: D0 15     BNE bra_F0E6
C - - - - - 0x0030E1 00:F0D1: A9 94     LDA #< tbl_F594
C - - - - - 0x0030E3 00:F0D3: 85 36     STA ram_0036
C - - - - - 0x0030E5 00:F0D5: A9 F5     LDA #> tbl_F594
C - - - - - 0x0030E7 00:F0D7: 85 37     STA ram_0037
C - - - - - 0x0030E9 00:F0D9: A9 01     LDA #$01
C - - - - - 0x0030EB 00:F0DB: 85 38     STA ram_0038
C - - - - - 0x0030ED 00:F0DD: A9 02     LDA #$02
C - - - - - 0x0030EF 00:F0DF: 85 39     STA ram_0039
C - - - - - 0x0030F1 00:F0E1: A9 AC     LDA #$AC
C - - - - - 0x0030F3 00:F0E3: 8D 05 40  STA $4005
bra_F0E6:
C - - - - - 0x0030F6 00:F0E6: 68        PLA
C - - - - - 0x0030F7 00:F0E7: 60        RTS



sub_F0E8:
C - - - - - 0x0030F8 00:F0E8: 48        PHA
C - - - - - 0x0030F9 00:F0E9: A5 A7     LDA ram_00A7
C - - - - - 0x0030FB 00:F0EB: D0 1D     BNE bra_F10A
C - - - - - 0x0030FD 00:F0ED: A9 00     LDA #$00
C - - - - - 0x0030FF 00:F0EF: 85 3C     STA ram_003C
C - - - - - 0x003101 00:F0F1: A9 01     LDA #$01
C - - - - - 0x003103 00:F0F3: 85 3F     STA ram_003F
C - - - - - 0x003105 00:F0F5: A9 99     LDA #< tbl_F599
C - - - - - 0x003107 00:F0F7: 85 36     STA ram_0036
C - - - - - 0x003109 00:F0F9: A9 F5     LDA #> tbl_F599
C - - - - - 0x00310B 00:F0FB: 85 37     STA ram_0037
C - - - - - 0x00310D 00:F0FD: A9 01     LDA #$01
C - - - - - 0x00310F 00:F0FF: 85 38     STA ram_0038
C - - - - - 0x003111 00:F101: A9 02     LDA #$02
C - - - - - 0x003113 00:F103: 85 39     STA ram_0039
C - - - - - 0x003115 00:F105: A9 AC     LDA #$AC
C - - - - - 0x003117 00:F107: 8D 05 40  STA $4005
bra_F10A:
C - - - - - 0x00311A 00:F10A: 68        PLA
C - - - - - 0x00311B 00:F10B: 60        RTS



sub_F10C:
C - - - - - 0x00311C 00:F10C: 48        PHA
C - - - - - 0x00311D 00:F10D: A5 A7     LDA ram_00A7
C - - - - - 0x00311F 00:F10F: D0 15     BNE bra_F126
C - - - - - 0x003121 00:F111: A9 91     LDA #< tbl_F591
C - - - - - 0x003123 00:F113: 85 36     STA ram_0036
C - - - - - 0x003125 00:F115: A9 F5     LDA #> tbl_F591
C - - - - - 0x003127 00:F117: 85 37     STA ram_0037
C - - - - - 0x003129 00:F119: A9 01     LDA #$01
C - - - - - 0x00312B 00:F11B: 85 38     STA ram_0038
C - - - - - 0x00312D 00:F11D: A9 02     LDA #$02
C - - - - - 0x00312F 00:F11F: 85 39     STA ram_0039
C - - - - - 0x003131 00:F121: A9 AC     LDA #$AC
C - - - - - 0x003133 00:F123: 8D 05 40  STA $4005
bra_F126:
C - - - - - 0x003136 00:F126: 68        PLA
C - - - - - 0x003137 00:F127: 60        RTS



sub_F128:
C - - - - - 0x003138 00:F128: 48        PHA
C - - - - - 0x003139 00:F129: A5 A7     LDA ram_00A7
C - - - - - 0x00313B 00:F12B: D0 15     BNE bra_F142
C - - - - - 0x00313D 00:F12D: A9 97     LDA #< tbl_F597
C - - - - - 0x00313F 00:F12F: 85 36     STA ram_0036
C - - - - - 0x003141 00:F131: A9 F5     LDA #> tbl_F597
C - - - - - 0x003143 00:F133: 85 37     STA ram_0037
C - - - - - 0x003145 00:F135: A9 01     LDA #$01
C - - - - - 0x003147 00:F137: 85 38     STA ram_0038
C - - - - - 0x003149 00:F139: A9 02     LDA #$02
C - - - - - 0x00314B 00:F13B: 85 39     STA ram_0039
C - - - - - 0x00314D 00:F13D: A9 B3     LDA #$B3
C - - - - - 0x00314F 00:F13F: 8D 05 40  STA $4005
bra_F142:
C - - - - - 0x003152 00:F142: 68        PLA
C - - - - - 0x003153 00:F143: 60        RTS



sub_F144:
C - - - - - 0x003154 00:F144: 20 D4 F2  JSR sub_F2D4
C - - - - - 0x003157 00:F147: A9 3D     LDA #< tbl_F43D
C - - - - - 0x003159 00:F149: 85 32     STA ram_0032
C - - - - - 0x00315B 00:F14B: A9 F4     LDA #> tbl_F43D
C - - - - - 0x00315D 00:F14D: 85 33     STA ram_0033
C - - - - - 0x00315F 00:F14F: A9 3E     LDA #< (tbl_F43D + $01)
C - - - - - 0x003161 00:F151: 85 36     STA ram_0036
C - - - - - 0x003163 00:F153: A9 F4     LDA #> (tbl_F43D + $01)
C - - - - - 0x003165 00:F155: 85 37     STA ram_0037
C - - - - - 0x003167 00:F157: A9 3F     LDA #< (tbl_F43D + $02)
C - - - - - 0x003169 00:F159: 85 3A     STA ram_003A
C - - - - - 0x00316B 00:F15B: A9 F4     LDA #> (tbl_F43D + $02)
C - - - - - 0x00316D 00:F15D: 85 3B     STA ram_003B
C - - - - - 0x00316F 00:F15F: 20 5E F0  JSR sub_F05E
C - - - - - 0x003172 00:F162: 60        RTS



sub_F163:
C - - - - - 0x003173 00:F163: 20 D4 F2  JSR sub_F2D4
C - - - - - 0x003176 00:F166: A9 9D     LDA #< tbl_F49D
C - - - - - 0x003178 00:F168: 85 32     STA ram_0032
C - - - - - 0x00317A 00:F16A: A9 F4     LDA #> tbl_F49D
C - - - - - 0x00317C 00:F16C: 85 33     STA ram_0033
C - - - - - 0x00317E 00:F16E: A9 9E     LDA #< (tbl_F49D + $01)
C - - - - - 0x003180 00:F170: 85 36     STA ram_0036
C - - - - - 0x003182 00:F172: A9 F4     LDA #> (tbl_F49D + $01)
C - - - - - 0x003184 00:F174: 85 37     STA ram_0037
C - - - - - 0x003186 00:F176: A9 9F     LDA #< (tbl_F49D + $02)
C - - - - - 0x003188 00:F178: 85 3A     STA ram_003A
C - - - - - 0x00318A 00:F17A: A9 F4     LDA #> (tbl_F49D + $02)
C - - - - - 0x00318C 00:F17C: 85 3B     STA ram_003B
C - - - - - 0x00318E 00:F17E: 20 5E F0  JSR sub_F05E
C - - - - - 0x003191 00:F181: 60        RTS



sub_F182:
C - - - - - 0x003192 00:F182: 48        PHA
C - - - - - 0x003193 00:F183: A5 A7     LDA ram_00A7
C - - - - - 0x003195 00:F185: D0 1E     BNE bra_F1A5
C - - - - - 0x003197 00:F187: 20 D4 F2  JSR sub_F2D4
C - - - - - 0x00319A 00:F18A: A9 D0     LDA #< tbl_F4D0
C - - - - - 0x00319C 00:F18C: 85 32     STA ram_0032
C - - - - - 0x00319E 00:F18E: A9 F4     LDA #> tbl_F4D0
C - - - - - 0x0031A0 00:F190: 85 33     STA ram_0033
C - - - - - 0x0031A2 00:F192: A9 D1     LDA #< (tbl_F4D0 + $01)
C - - - - - 0x0031A4 00:F194: 85 36     STA ram_0036
C - - - - - 0x0031A6 00:F196: A9 F4     LDA #> (tbl_F4D0 + $01)
C - - - - - 0x0031A8 00:F198: 85 37     STA ram_0037
C - - - - - 0x0031AA 00:F19A: A9 D2     LDA #< (tbl_F4D0 + $02)
C - - - - - 0x0031AC 00:F19C: 85 3A     STA ram_003A
C - - - - - 0x0031AE 00:F19E: A9 F4     LDA #> (tbl_F4D0 + $02)
C - - - - - 0x0031B0 00:F1A0: 85 3B     STA ram_003B
C - - - - - 0x0031B2 00:F1A2: 20 5E F0  JSR sub_F05E
bra_F1A5:
C - - - - - 0x0031B5 00:F1A5: 68        PLA
C - - - - - 0x0031B6 00:F1A6: 60        RTS



sub_F1A7:
C - - - - - 0x0031B7 00:F1A7: A5 34     LDA ram_0034
C - - - - - 0x0031B9 00:F1A9: D0 01     BNE bra_F1AC
C - - - - - 0x0031BB 00:F1AB: 60        RTS
bra_F1AC:
C - - - - - 0x0031BC 00:F1AC: A2 05     LDX #$05
C - - - - - 0x0031BE 00:F1AE: A5 3E     LDA ram_003E
C - - - - - 0x0031C0 00:F1B0: F0 02     BEQ bra_F1B4
C - - - - - 0x0031C2 00:F1B2: A2 09     LDX #$09
bra_F1B4:
C - - - - - 0x0031C4 00:F1B4: E6 35     INC ram_0035
C - - - - - 0x0031C6 00:F1B6: E4 35     CPX ram_0035
C - - - - - 0x0031C8 00:F1B8: F0 01     BEQ bra_F1BB
C - - - - - 0x0031CA 00:F1BA: 60        RTS
bra_F1BB:
C - - - - - 0x0031CB 00:F1BB: A9 00     LDA #$00
C - - - - - 0x0031CD 00:F1BD: 85 35     STA ram_0035
C - - - - - 0x0031CF 00:F1BF: A0 00     LDY #$00
C - - - - - 0x0031D1 00:F1C1: B1 32     LDA (ram_0032),Y
C - - - - - 0x0031D3 00:F1C3: D0 05     BNE bra_F1CA
C - - - - - 0x0031D5 00:F1C5: A9 00     LDA #$00
C - - - - - 0x0031D7 00:F1C7: 85 34     STA ram_0034
C - - - - - 0x0031D9 00:F1C9: 60        RTS
bra_F1CA:
C - - - - - 0x0031DA 00:F1CA: 20 29 F3  JSR sub_F329
C - - - - - 0x0031DD 00:F1CD: F0 0C     BEQ bra_F1DB
C - - - - - 0x0031DF 00:F1CF: A5 30     LDA ram_0030
C - - - - - 0x0031E1 00:F1D1: 8D 02 40  STA $4002
C - - - - - 0x0031E4 00:F1D4: A5 31     LDA ram_0031
C - - - - - 0x0031E6 00:F1D6: 09 20     ORA #$20
C - - - - - 0x0031E8 00:F1D8: 8D 03 40  STA $4003
bra_F1DB:
C - - - - - 0x0031EB 00:F1DB: A5 3E     LDA ram_003E
C - - - - - 0x0031ED 00:F1DD: F0 0C     BEQ bra_F1EB
C - - - - - 0x0031EF 00:F1DF: E6 32     INC ram_0032
C - - - - - 0x0031F1 00:F1E1: D0 02     BNE bra_F1E5
- - - - - - 0x0031F3 00:F1E3: E6 33     INC ram_0033
bra_F1E5:
C - - - - - 0x0031F5 00:F1E5: E6 32     INC ram_0032
C - - - - - 0x0031F7 00:F1E7: D0 02     BNE bra_F1EB
C - - - - - 0x0031F9 00:F1E9: E6 33     INC ram_0033
bra_F1EB:
C - - - - - 0x0031FB 00:F1EB: E6 32     INC ram_0032
C - - - - - 0x0031FD 00:F1ED: D0 02     BNE bra_F1F1_RTS
C - - - - - 0x0031FF 00:F1EF: E6 33     INC ram_0033
bra_F1F1_RTS:
C - - - - - 0x003201 00:F1F1: 60        RTS



sub_F1F2:
C - - - - - 0x003202 00:F1F2: A5 38     LDA ram_0038
C - - - - - 0x003204 00:F1F4: D0 01     BNE bra_F1F7
C - - - - - 0x003206 00:F1F6: 60        RTS
bra_F1F7:
C - - - - - 0x003207 00:F1F7: A2 03     LDX #$03
C - - - - - 0x003209 00:F1F9: A5 3E     LDA ram_003E
C - - - - - 0x00320B 00:F1FB: F0 02     BEQ bra_F1FF
C - - - - - 0x00320D 00:F1FD: A2 09     LDX #$09
bra_F1FF:
C - - - - - 0x00320F 00:F1FF: E6 39     INC ram_0039
C - - - - - 0x003211 00:F201: E4 39     CPX ram_0039
C - - - - - 0x003213 00:F203: F0 01     BEQ bra_F206
C - - - - - 0x003215 00:F205: 60        RTS
bra_F206:
C - - - - - 0x003216 00:F206: A9 00     LDA #$00
C - - - - - 0x003218 00:F208: 85 39     STA ram_0039
C - - - - - 0x00321A 00:F20A: A0 00     LDY #$00    ; bzk optimize, TAY
C - - - - - 0x00321C 00:F20C: B1 36     LDA (ram_0036),Y
C - - - - - 0x00321E 00:F20E: D0 05     BNE bra_F215    ; bzk optimize, if A = 00 then no branch, so no need for LDA 00
C - - - - - 0x003220 00:F210: A9 00     LDA #$00
C - - - - - 0x003222 00:F212: 85 38     STA ram_0038
C - - - - - 0x003224 00:F214: 60        RTS
bra_F215:
C - - - - - 0x003225 00:F215: 20 29 F3  JSR sub_F329
C - - - - - 0x003228 00:F218: F0 0C     BEQ bra_F226
C - - - - - 0x00322A 00:F21A: A5 30     LDA ram_0030
C - - - - - 0x00322C 00:F21C: 8D 06 40  STA $4006
C - - - - - 0x00322F 00:F21F: A5 31     LDA ram_0031
C - - - - - 0x003231 00:F221: 09 20     ORA #$20
C - - - - - 0x003233 00:F223: 8D 07 40  STA $4007
bra_F226:
C - - - - - 0x003236 00:F226: A5 3E     LDA ram_003E
C - - - - - 0x003238 00:F228: F0 0C     BEQ bra_F236
C - - - - - 0x00323A 00:F22A: E6 36     INC ram_0036
C - - - - - 0x00323C 00:F22C: D0 02     BNE bra_F230
C - - - - - 0x00323E 00:F22E: E6 37     INC ram_0037
bra_F230:
C - - - - - 0x003240 00:F230: E6 36     INC ram_0036
C - - - - - 0x003242 00:F232: D0 02     BNE bra_F236
C - - - - - 0x003244 00:F234: E6 37     INC ram_0037
bra_F236:
C - - - - - 0x003246 00:F236: E6 36     INC ram_0036
C - - - - - 0x003248 00:F238: D0 02     BNE bra_F23C_RTS
- - - - - - 0x00324A 00:F23A: E6 37     INC ram_0037
bra_F23C_RTS:
C - - - - - 0x00324C 00:F23C: 60        RTS



sub_F23D:
C - - - - - 0x00324D 00:F23D: A5 3C     LDA ram_003C
C - - - - - 0x00324F 00:F23F: D0 01     BNE bra_F242
C - - - - - 0x003251 00:F241: 60        RTS
bra_F242:
C - - - - - 0x003252 00:F242: A2 09     LDX #$09
C - - - - - 0x003254 00:F244: E6 3D     INC ram_003D
C - - - - - 0x003256 00:F246: E4 3D     CPX ram_003D
C - - - - - 0x003258 00:F248: F0 01     BEQ bra_F24B
C - - - - - 0x00325A 00:F24A: 60        RTS
bra_F24B:
C - - - - - 0x00325B 00:F24B: A9 00     LDA #$00
C - - - - - 0x00325D 00:F24D: 85 3D     STA ram_003D
bra_F24F:
C - - - - - 0x00325F 00:F24F: A0 00     LDY #$00
C - - - - - 0x003261 00:F251: B1 3A     LDA (ram_003A),Y
C - - - - - 0x003263 00:F253: D0 1A     BNE bra_F26F
C - - - - - 0x003265 00:F255: A5 8F     LDA ram_008F
C - - - - - 0x003267 00:F257: D0 06     BNE bra_F25F
C - - - - - 0x003269 00:F259: 20 1B F0  JSR sub_F01B
C - - - - - 0x00326C 00:F25C: 4C 62 F2  JMP loc_F262
bra_F25F:
C - - - - - 0x00326F 00:F25F: 20 39 F0  JSR sub_F039
loc_F262:
C D 3 - - - 0x003272 00:F262: A5 3F     LDA ram_003F
C - - - - - 0x003274 00:F264: D0 04     BNE bra_F26A
C - - - - - 0x003276 00:F266: A5 3E     LDA ram_003E
C - - - - - 0x003278 00:F268: F0 E5     BEQ bra_F24F
bra_F26A:
C - - - - - 0x00327A 00:F26A: A9 00     LDA #$00
C - - - - - 0x00327C 00:F26C: 85 3C     STA ram_003C
C - - - - - 0x00327E 00:F26E: 60        RTS
bra_F26F:
C - - - - - 0x00327F 00:F26F: 20 29 F3  JSR sub_F329
C - - - - - 0x003282 00:F272: F0 15     BEQ bra_F289
C - - - - - 0x003284 00:F274: A5 30     LDA ram_0030
C - - - - - 0x003286 00:F276: 8D 0A 40  STA $400A
C - - - - - 0x003289 00:F279: A5 31     LDA ram_0031
C - - - - - 0x00328B 00:F27B: 09 10     ORA #$10
C - - - - - 0x00328D 00:F27D: 8D 0B 40  STA $400B
C - - - - - 0x003290 00:F280: A5 57     LDA ram_0057
C - - - - - 0x003292 00:F282: D0 05     BNE bra_F289
C - - - - - 0x003294 00:F284: A9 01     LDA #$01
C - - - - - 0x003296 00:F286: 8D 0F 40  STA $400F
bra_F289:
C - - - - - 0x003299 00:F289: A5 8F     LDA ram_008F
C - - - - - 0x00329B 00:F28B: D0 04     BNE bra_F291
C - - - - - 0x00329D 00:F28D: A5 3E     LDA ram_003E
C - - - - - 0x00329F 00:F28F: F0 0C     BEQ bra_F29D
bra_F291:
C - - - - - 0x0032A1 00:F291: E6 3A     INC ram_003A
C - - - - - 0x0032A3 00:F293: D0 02     BNE bra_F297
C - - - - - 0x0032A5 00:F295: E6 3B     INC ram_003B
bra_F297:
C - - - - - 0x0032A7 00:F297: E6 3A     INC ram_003A
C - - - - - 0x0032A9 00:F299: D0 02     BNE bra_F29D
- - - - - - 0x0032AB 00:F29B: E6 3B     INC ram_003B
bra_F29D:
C - - - - - 0x0032AD 00:F29D: E6 3A     INC ram_003A
C - - - - - 0x0032AF 00:F29F: D0 02     BNE bra_F2A3_RTS
C - - - - - 0x0032B1 00:F2A1: E6 3B     INC ram_003B
bra_F2A3_RTS:
C - - - - - 0x0032B3 00:F2A3: 60        RTS



sub_F2A4:
C - - - - - 0x0032B4 00:F2A4: A5 A7     LDA ram_00A7
C - - - - - 0x0032B6 00:F2A6: D0 28     BNE bra_F2D0_RTS
C - - - - - 0x0032B8 00:F2A8: A6 57     LDX ram_0057
C - - - - - 0x0032BA 00:F2AA: CA        DEX
C - - - - - 0x0032BB 00:F2AB: D0 23     BNE bra_F2D0_RTS
C - - - - - 0x0032BD 00:F2AD: A5 55     LDA ram_0055
C - - - - - 0x0032BF 00:F2AF: A2 02     LDX #$02
C - - - - - 0x0032C1 00:F2B1: C9 31     CMP #$31
C - - - - - 0x0032C3 00:F2B3: F0 0B     BEQ bra_F2C0
C - - - - - 0x0032C5 00:F2B5: CA        DEX
C - - - - - 0x0032C6 00:F2B6: C9 2E     CMP #$2E
C - - - - - 0x0032C8 00:F2B8: F0 06     BEQ bra_F2C0
C - - - - - 0x0032CA 00:F2BA: CA        DEX
C - - - - - 0x0032CB 00:F2BB: C9 2B     CMP #$2B
C - - - - - 0x0032CD 00:F2BD: F0 01     BEQ bra_F2C0
C - - - - - 0x0032CF 00:F2BF: 60        RTS
bra_F2C0:
C - - - - - 0x0032D0 00:F2C0: A9 0A     LDA #$0A
C - - - - - 0x0032D2 00:F2C2: 8D 0C 40  STA $400C
C - - - - - 0x0032D5 00:F2C5: BD D1 F2  LDA tbl_F2D1,X
C - - - - - 0x0032D8 00:F2C8: 8D 0E 40  STA $400E
C - - - - - 0x0032DB 00:F2CB: A9 40     LDA #$40
C - - - - - 0x0032DD 00:F2CD: 8D 0F 40  STA $400F
bra_F2D0_RTS:
C - - - - - 0x0032E0 00:F2D0: 60        RTS



tbl_F2D1:
- D 3 - - - 0x0032E1 00:F2D1: 0C        .byte $0C   ; 00
- D 3 - - - 0x0032E2 00:F2D2: 05        .byte $05   ; 01
- D 3 - - - 0x0032E3 00:F2D3: 08        .byte $08   ; 02



sub_F2D4:
C - - - - - 0x0032E4 00:F2D4: 20 E4 F2  JSR sub_F2E4
C - - - - - 0x0032E7 00:F2D7: A9 01     LDA #$01
C - - - - - 0x0032E9 00:F2D9: 85 3E     STA ram_003E
C - - - - - 0x0032EB 00:F2DB: 60        RTS



sub_F2DC:
C - - - - - 0x0032EC 00:F2DC: 20 E4 F2  JSR sub_F2E4
C - - - - - 0x0032EF 00:F2DF: A9 00     LDA #$00
C - - - - - 0x0032F1 00:F2E1: 85 3E     STA ram_003E
C - - - - - 0x0032F3 00:F2E3: 60        RTS



sub_F2E4:
C - - - - - 0x0032F4 00:F2E4: A9 0F     LDA #$0F
C - - - - - 0x0032F6 00:F2E6: 8D 15 40  STA $4015
C - - - - - 0x0032F9 00:F2E9: A9 00     LDA #$00
C - - - - - 0x0032FB 00:F2EB: 85 35     STA ram_0035
C - - - - - 0x0032FD 00:F2ED: 85 34     STA ram_0034
C - - - - - 0x0032FF 00:F2EF: 85 39     STA ram_0039
C - - - - - 0x003301 00:F2F1: 85 38     STA ram_0038
C - - - - - 0x003303 00:F2F3: 85 3D     STA ram_003D
C - - - - - 0x003305 00:F2F5: 85 3C     STA ram_003C
C - - - - - 0x003307 00:F2F7: A9 CA     LDA #$CA
C - - - - - 0x003309 00:F2F9: 8D 00 40  STA $4000
C - - - - - 0x00330C 00:F2FC: A9 00     LDA #$00
C - - - - - 0x00330E 00:F2FE: 8D 01 40  STA $4001
C - - - - - 0x003311 00:F301: A9 C4     LDA #$C4
C - - - - - 0x003313 00:F303: 8D 04 40  STA $4004
C - - - - - 0x003316 00:F306: A9 00     LDA #$00
C - - - - - 0x003318 00:F308: 8D 05 40  STA $4005
C - - - - - 0x00331B 00:F30B: A9 20     LDA #$20
C - - - - - 0x00331D 00:F30D: 8D 08 40  STA $4008
C - - - - - 0x003320 00:F310: A9 00     LDA #$00
C - - - - - 0x003322 00:F312: 8D 0C 40  STA $400C
C - - - - - 0x003325 00:F315: A9 00     LDA #$00
C - - - - - 0x003327 00:F317: 8D 0E 40  STA $400E
C - - - - - 0x00332A 00:F31A: 60        RTS



sub_F31B:
C - - - - - 0x00332B 00:F31B: A9 00     LDA #$00
C - - - - - 0x00332D 00:F31D: 8D 15 40  STA $4015
C - - - - - 0x003330 00:F320: A9 00     LDA #$00
C - - - - - 0x003332 00:F322: 85 34     STA ram_0034
C - - - - - 0x003334 00:F324: 85 38     STA ram_0038
C - - - - - 0x003336 00:F326: 85 3C     STA ram_003C
C - - - - - 0x003338 00:F328: 60        RTS



sub_F329:
C - - - - - 0x003339 00:F329: A2 00     LDX #$00
C - - - - - 0x00333B 00:F32B: 86 30     STX ram_0030
C - - - - - 0x00333D 00:F32D: 86 31     STX ram_0031
C - - - - - 0x00333F 00:F32F: C9 81     CMP #$81
C - - - - - 0x003341 00:F331: F0 2A     BEQ bra_F35D
C - - - - - 0x003343 00:F333: 48        PHA
C - - - - - 0x003344 00:F334: 29 0F     AND #$0F
C - - - - - 0x003346 00:F336: 0A        ASL
C - - - - - 0x003347 00:F337: 18        CLC
C - - - - - 0x003348 00:F338: 69 62     ADC #< tbl_F362
C - - - - - 0x00334A 00:F33A: 85 30     STA ram_0030
C - - - - - 0x00334C 00:F33C: A9 F3     LDA #> tbl_F362
C - - - - - 0x00334E 00:F33E: 69 00     ADC #$00
C - - - - - 0x003350 00:F340: 85 31     STA ram_0031
C - - - - - 0x003352 00:F342: A0 00     LDY #$00
C - - - - - 0x003354 00:F344: B1 30     LDA (ram_0030),Y
C - - - - - 0x003356 00:F346: AA        TAX
C - - - - - 0x003357 00:F347: C8        INY
C - - - - - 0x003358 00:F348: B1 30     LDA (ram_0030),Y
C - - - - - 0x00335A 00:F34A: 85 31     STA ram_0031
C - - - - - 0x00335C 00:F34C: 86 30     STX ram_0030
C - - - - - 0x00335E 00:F34E: 68        PLA
C - - - - - 0x00335F 00:F34F: 4A        LSR
C - - - - - 0x003360 00:F350: 4A        LSR
C - - - - - 0x003361 00:F351: 4A        LSR
C - - - - - 0x003362 00:F352: 4A        LSR
C - - - - - 0x003363 00:F353: AA        TAX
C - - - - - 0x003364 00:F354: F0 07     BEQ bra_F35D
bra_F356_loop:
C - - - - - 0x003366 00:F356: 46 31     LSR ram_0031
C - - - - - 0x003368 00:F358: 66 30     ROR ram_0030
C - - - - - 0x00336A 00:F35A: CA        DEX
C - - - - - 0x00336B 00:F35B: D0 F9     BNE bra_F356_loop
bra_F35D:
C - - - - - 0x00336D 00:F35D: A5 30     LDA ram_0030
C - - - - - 0x00336F 00:F35F: 05 31     ORA ram_0031
C - - - - - 0x003371 00:F361: 60        RTS



tbl_F362:
- D 3 - I - 0x003372 00:F362: AE 06     .word $06AE  ; 00
- - - - - - 0x003374 00:F364: 4E 06     .word $064E  ; 01 never used?
- D 3 - I - 0x003376 00:F366: F3 05     .word $05F3  ; 02
- D 3 - I - 0x003378 00:F368: 9E 05     .word $059E  ; 03
- D 3 - I - 0x00337A 00:F36A: 4D 05     .word $054D  ; 04
- D 3 - I - 0x00337C 00:F36C: 01 05     .word $0501  ; 05
- D 3 - I - 0x00337E 00:F36E: B9 04     .word $04B9  ; 06
- D 3 - I - 0x003380 00:F370: 75 04     .word $0475  ; 07
- D 3 - I - 0x003382 00:F372: 35 04     .word $0435  ; 08
- D 3 - I - 0x003384 00:F374: F8 03     .word $03F8  ; 09
- D 3 - I - 0x003386 00:F376: BF 03     .word $03BF  ; 0A
- D 3 - I - 0x003388 00:F378: 89 03     .word $0389  ; 0B



tbl_F37A:
- D 3 - I - 0x00338A 00:F37A: 34        .byte $30 + $04   ; 
- D 3 - I - 0x00338B 00:F37B: 30        .byte $30   ; 
- D 3 - I - 0x00338C 00:F37C: 20        .byte $20   ; 

- D 3 - I - 0x00338D 00:F37D: 81        .byte $80 + $01   ; 
- D 3 - I - 0x00338E 00:F37E: 27        .byte $27   ; 
- D 3 - I - 0x00338F 00:F37F: 81        .byte $81   ; 

- D 3 - I - 0x003390 00:F380: 81        .byte $80 + $01   ; 
- D 3 - I - 0x003391 00:F381: 24        .byte $24   ; 
- D 3 - I - 0x003392 00:F382: 81        .byte $81   ; 

- D 3 - I - 0x003393 00:F383: 37        .byte $30 + $07   ; 
- D 3 - I - 0x003394 00:F384: 27        .byte $27   ; 
- D 3 - I - 0x003395 00:F385: 20        .byte $20   ; 

- D 3 - I - 0x003396 00:F386: 81        .byte $80 + $01   ; 
- D 3 - I - 0x003397 00:F387: 30        .byte $30   ; 
- D 3 - I - 0x003398 00:F388: 20        .byte $20   ; 

- D 3 - I - 0x003399 00:F389: 81        .byte $80 + $01   ; 
- D 3 - I - 0x00339A 00:F38A: 27        .byte $27   ; 
- D 3 - I - 0x00339B 00:F38B: 81        .byte $81   ; 

- D 3 - I - 0x00339C 00:F38C: 34        .byte $30 + $04   ; 
- D 3 - I - 0x00339D 00:F38D: 24        .byte $24   ; 
- D 3 - I - 0x00339E 00:F38E: 81        .byte $81   ; 

- D 3 - I - 0x00339F 00:F38F: 81        .byte $80 + $01   ; 
- D 3 - I - 0x0033A0 00:F390: 27        .byte $27   ; 
- D 3 - I - 0x0033A1 00:F391: 81        .byte $81   ; 

- D 3 - I - 0x0033A2 00:F392: 32        .byte $30 + $02   ; 
- D 3 - I - 0x0033A3 00:F393: 2B        .byte $2B   ; 
- D 3 - I - 0x0033A4 00:F394: 1B        .byte $1B   ; 

- D 3 - I - 0x0033A5 00:F395: 81        .byte $80 + $01   ; 
- D 3 - I - 0x0033A6 00:F396: 28        .byte $28   ; 
- D 3 - I - 0x0033A7 00:F397: 81        .byte $81   ; 

- D 3 - I - 0x0033A8 00:F398: 81        .byte $80 + $01   ; 
- D 3 - I - 0x0033A9 00:F399: 24        .byte $24   ; 
- D 3 - I - 0x0033AA 00:F39A: 81        .byte $81   ; 

- D 3 - I - 0x0033AB 00:F39B: 34        .byte $30 + $04   ; 
- D 3 - I - 0x0033AC 00:F39C: 28        .byte $28   ; 
- D 3 - I - 0x0033AD 00:F39D: 1B        .byte $1B   ; 

- D 3 - I - 0x0033AE 00:F39E: 81        .byte $80 + $01   ; 
- D 3 - I - 0x0033AF 00:F39F: 2B        .byte $2B   ; 
- D 3 - I - 0x0033B0 00:F3A0: 1B        .byte $1B   ; 

- D 3 - I - 0x0033B1 00:F3A1: 81        .byte $80 + $01   ; 
- D 3 - I - 0x0033B2 00:F3A2: 28        .byte $28   ; 
- D 3 - I - 0x0033B3 00:F3A3: 81        .byte $81   ; 

- D 3 - I - 0x0033B4 00:F3A4: 32        .byte $30 + $02   ; 
- D 3 - I - 0x0033B5 00:F3A5: 24        .byte $24   ; 
- D 3 - I - 0x0033B6 00:F3A6: 81        .byte $81   ; 

- D 3 - I - 0x0033B7 00:F3A7: 81        .byte $80 + $01   ; 
- D 3 - I - 0x0033B8 00:F3A8: 28        .byte $28   ; 
- D 3 - I - 0x0033B9 00:F3A9: 81        .byte $81   ; 

- D 3 - I - 0x0033BA 00:F3AA: 30        .byte $30 + $00   ; 
- D 3 - I - 0x0033BB 00:F3AB: 29        .byte $29   ; 
- D 3 - I - 0x0033BC 00:F3AC: 19        .byte $19   ; 

- D 3 - I - 0x0033BD 00:F3AD: 81        .byte $80 + $01   ; 
- D 3 - I - 0x0033BE 00:F3AE: 25        .byte $25   ; 
- D 3 - I - 0x0033BF 00:F3AF: 81        .byte $81   ; 

- D 3 - I - 0x0033C0 00:F3B0: 81        .byte $80 + $01   ; 
- D 3 - I - 0x0033C1 00:F3B1: 20        .byte $20   ; 
- D 3 - I - 0x0033C2 00:F3B2: 81        .byte $81   ; 

- D 3 - I - 0x0033C3 00:F3B3: 32        .byte $30 + $02   ; 
- D 3 - I - 0x0033C4 00:F3B4: 25        .byte $25   ; 
- D 3 - I - 0x0033C5 00:F3B5: 19        .byte $19   ; 

- D 3 - I - 0x0033C6 00:F3B6: 81        .byte $80 + $01   ; 
- D 3 - I - 0x0033C7 00:F3B7: 29        .byte $29   ; 
- D 3 - I - 0x0033C8 00:F3B8: 19        .byte $19   ; 

- D 3 - I - 0x0033C9 00:F3B9: 81        .byte $80 + $01   ; 
- D 3 - I - 0x0033CA 00:F3BA: 25        .byte $25   ; 
- D 3 - I - 0x0033CB 00:F3BB: 81        .byte $81   ; 

- D 3 - I - 0x0033CC 00:F3BC: 30        .byte $30 + $00   ; 
- D 3 - I - 0x0033CD 00:F3BD: 20        .byte $20   ; 
- D 3 - I - 0x0033CE 00:F3BE: 81        .byte $81   ; 

- D 3 - I - 0x0033CF 00:F3BF: 81        .byte $80 + $01   ; 
- D 3 - I - 0x0033D0 00:F3C0: 25        .byte $25   ; 
- D 3 - I - 0x0033D1 00:F3C1: 81        .byte $81   ; 

- D 3 - I - 0x0033D2 00:F3C2: 29        .byte $20 + $09   ; 
- D 3 - I - 0x0033D3 00:F3C3: 29        .byte $29   ; 
- D 3 - I - 0x0033D4 00:F3C4: 17        .byte $17   ; 

- D 3 - I - 0x0033D5 00:F3C5: 81        .byte $80 + $01   ; 
- D 3 - I - 0x0033D6 00:F3C6: 24        .byte $24   ; 
- D 3 - I - 0x0033D7 00:F3C7: 81        .byte $81   ; 

- D 3 - I - 0x0033D8 00:F3C8: 81        .byte $80 + $01   ; 
- D 3 - I - 0x0033D9 00:F3C9: 20        .byte $20   ; 
- D 3 - I - 0x0033DA 00:F3CA: 81        .byte $81   ; 

- D 3 - I - 0x0033DB 00:F3CB: 81        .byte $80 + $01   ; 
- D 3 - I - 0x0033DC 00:F3CC: 24        .byte $24   ; 
- D 3 - I - 0x0033DD 00:F3CD: 17        .byte $17   ; 

- D 3 - I - 0x0033DE 00:F3CE: 81        .byte $80 + $01   ; 
- D 3 - I - 0x0033DF 00:F3CF: 29        .byte $29   ; 
- D 3 - I - 0x0033E0 00:F3D0: 17        .byte $17   ; 

- D 3 - I - 0x0033E1 00:F3D1: 81        .byte $80 + $01   ; 
- D 3 - I - 0x0033E2 00:F3D2: 24        .byte $24   ; 
- D 3 - I - 0x0033E3 00:F3D3: 81        .byte $81   ; 

- D 3 - I - 0x0033E4 00:F3D4: 81        .byte $80 + $01   ; 
- D 3 - I - 0x0033E5 00:F3D5: 20        .byte $20   ; 
- D 3 - I - 0x0033E6 00:F3D6: 81        .byte $81   ; 

- D 3 - I - 0x0033E7 00:F3D7: 81        .byte $80 + $01   ; 
- D 3 - I - 0x0033E8 00:F3D8: 24        .byte $24   ; 
- D 3 - I - 0x0033E9 00:F3D9: 81        .byte $81   ; 



tbl_F3DA:
- D 3 - I - 0x0033EA 00:F3DA: 32        .byte $30 + $02   ; 
- D 3 - I - 0x0033EB 00:F3DB: 29        .byte $29   ; 
- D 3 - I - 0x0033EC 00:F3DC: 19        .byte $19   ; 

- D 3 - I - 0x0033ED 00:F3DD: 81        .byte $80 + $01   ; 
- D 3 - I - 0x0033EE 00:F3DE: 22        .byte $22   ; 
- D 3 - I - 0x0033EF 00:F3DF: 81        .byte $81   ; 

- D 3 - I - 0x0033F0 00:F3E0: 81        .byte $80 + $01   ; 
- D 3 - I - 0x0033F1 00:F3E1: 29        .byte $29   ; 
- D 3 - I - 0x0033F2 00:F3E2: 81        .byte $81   ; 

- D 3 - I - 0x0033F3 00:F3E3: 34        .byte $30 + $04   ; 
- D 3 - I - 0x0033F4 00:F3E4: 22        .byte $22   ; 
- D 3 - I - 0x0033F5 00:F3E5: 19        .byte $19   ; 

- D 3 - I - 0x0033F6 00:F3E6: 81        .byte $80 + $01   ; 
- D 3 - I - 0x0033F7 00:F3E7: 29        .byte $29   ; 
- D 3 - I - 0x0033F8 00:F3E8: 19        .byte $19   ; 

- D 3 - I - 0x0033F9 00:F3E9: 81        .byte $80 + $01   ; 
- D 3 - I - 0x0033FA 00:F3EA: 22        .byte $22   ; 
- D 3 - I - 0x0033FB 00:F3EB: 81        .byte $81   ; 

- D 3 - I - 0x0033FC 00:F3EC: 32        .byte $30 + $02   ; 
- D 3 - I - 0x0033FD 00:F3ED: 29        .byte $29   ; 
- D 3 - I - 0x0033FE 00:F3EE: 81        .byte $81   ; 

- D 3 - I - 0x0033FF 00:F3EF: 81        .byte $80 + $01   ; 
- D 3 - I - 0x003400 00:F3F0: 22        .byte $22   ; 
- D 3 - I - 0x003401 00:F3F1: 81        .byte $81   ; 

- D 3 - I - 0x003402 00:F3F2: 37        .byte $30 + $07   ; 
- D 3 - I - 0x003403 00:F3F3: 2B        .byte $2B   ; 
- D 3 - I - 0x003404 00:F3F4: 1B        .byte $1B   ; 

- D 3 - I - 0x003405 00:F3F5: 81        .byte $80 + $01   ; 
- D 3 - I - 0x003406 00:F3F6: 27        .byte $27   ; 
- D 3 - I - 0x003407 00:F3F7: 81        .byte $81   ; 

- D 3 - I - 0x003408 00:F3F8: 81        .byte $80 + $01   ; 
- D 3 - I - 0x003409 00:F3F9: 22        .byte $22   ; 
- D 3 - I - 0x00340A 00:F3FA: 81        .byte $81   ; 

- D 3 - I - 0x00340B 00:F3FB: 33        .byte $30 + $03   ; 
- D 3 - I - 0x00340C 00:F3FC: 27        .byte $27   ; 
- D 3 - I - 0x00340D 00:F3FD: 1B        .byte $1B   ; 

- D 3 - I - 0x00340E 00:F3FE: 81        .byte $80 + $01   ; 
- D 3 - I - 0x00340F 00:F3FF: 2B        .byte $2B   ; 
- D 3 - I - 0x003410 00:F400: 1B        .byte $1B   ; 

- D 3 - I - 0x003411 00:F401: 81        .byte $80 + $01   ; 
- D 3 - I - 0x003412 00:F402: 27        .byte $27   ; 
- D 3 - I - 0x003413 00:F403: 81        .byte $81   ; 

- D 3 - I - 0x003414 00:F404: 34        .byte $30 + $04   ; 
- D 3 - I - 0x003415 00:F405: 29        .byte $29   ; 
- D 3 - I - 0x003416 00:F406: 81        .byte $81   ; 

- D 3 - I - 0x003417 00:F407: 81        .byte $80 + $01   ; 
- D 3 - I - 0x003418 00:F408: 2B        .byte $2B   ; 
- D 3 - I - 0x003419 00:F409: 81        .byte $81   ; 

- D 3 - I - 0x00341A 00:F40A: 30        .byte $30 + $00   ; 
- D 3 - I - 0x00341B 00:F40B: 30        .byte $30   ; 
- D 3 - I - 0x00341C 00:F40C: 20        .byte $20   ; 

- D 3 - I - 0x00341D 00:F40D: 30        .byte $30 + $00   ; 
- D 3 - I - 0x00341E 00:F40E: 34        .byte $34   ; 
- D 3 - I - 0x00341F 00:F40F: 81        .byte $81   ; 

- D 3 - I - 0x003420 00:F410: 34        .byte $30 + $04   ; 
- D 3 - I - 0x003421 00:F411: 37        .byte $37   ; 
- D 3 - I - 0x003422 00:F412: 17        .byte $17   ; 

- D 3 - I - 0x003423 00:F413: 27        .byte $20 + $07   ; 
- D 3 - I - 0x003424 00:F414: 30        .byte $30   ; 
- D 3 - I - 0x003425 00:F415: 81        .byte $81   ; 

- D 3 - I - 0x003426 00:F416: 30        .byte $30 + $00   ; 
- D 3 - I - 0x003427 00:F417: 34        .byte $34   ; 
- D 3 - I - 0x003428 00:F418: 19        .byte $19   ; 

- D 3 - I - 0x003429 00:F419: 34        .byte $30 + $04   ; 
- D 3 - I - 0x00342A 00:F41A: 37        .byte $37   ; 
- D 3 - I - 0x00342B 00:F41B: 81        .byte $81   ; 

- D 3 - I - 0x00342C 00:F41C: 30        .byte $30 + $00   ; 
- D 3 - I - 0x00342D 00:F41D: 34        .byte $34   ; 
- D 3 - I - 0x00342E 00:F41E: 1B        .byte $1B   ; 

- D 3 - I - 0x00342F 00:F41F: 34        .byte $30 + $04   ; 
- D 3 - I - 0x003430 00:F420: 37        .byte $37   ; 
- D 3 - I - 0x003431 00:F421: 81        .byte $81   ; 

- D 3 - I - 0x003432 00:F422: 37        .byte $30 + $07   ; 
- D 3 - I - 0x003433 00:F423: 40        .byte $40   ; 
- D 3 - I - 0x003434 00:F424: 20        .byte $20   ; 

- D 3 - I - 0x003435 00:F425: 81        .byte $80 + $01   ; 
- D 3 - I - 0x003436 00:F426: 81        .byte $81   ; 
- D 3 - I - 0x003437 00:F427: 81        .byte $81   ; 

- D 3 - I - 0x003438 00:F428: 81        .byte $80 + $01   ; 
- D 3 - I - 0x003439 00:F429: 81        .byte $81   ; 
- D 3 - I - 0x00343A 00:F42A: 17        .byte $17   ; 

- D 3 - I - 0x00343B 00:F42B: 81        .byte $80 + $01   ; 
- D 3 - I - 0x00343C 00:F42C: 81        .byte $81   ; 
- D 3 - I - 0x00343D 00:F42D: 81        .byte $81   ; 

- D 3 - I - 0x00343E 00:F42E: 81        .byte $80 + $01   ; 
- D 3 - I - 0x00343F 00:F42F: 81        .byte $81   ; 
- D 3 - I - 0x003440 00:F430: 20        .byte $20   ; 

- D 3 - I - 0x003441 00:F431: 81        .byte $80 + $01   ; 
- D 3 - I - 0x003442 00:F432: 81        .byte $81   ; 
- D 3 - I - 0x003443 00:F433: 81        .byte $81   ; 

- D 3 - I - 0x003444 00:F434: 81        .byte $80 + $01   ; 
- D 3 - I - 0x003445 00:F435: 81        .byte $81   ; 
- D 3 - I - 0x003446 00:F436: 81        .byte $81   ; 

- D 3 - I - 0x003447 00:F437: 81        .byte $80 + $01   ; 
- D 3 - I - 0x003448 00:F438: 81        .byte $81   ; 
- D 3 - I - 0x003449 00:F439: 81        .byte $81   ; 

- D 3 - I - 0x00344A 00:F43A: 00        .byte $00 + $00   ; 
- D 3 - I - 0x00344B 00:F43B: 00        .byte $00   ; 
- D 3 - I - 0x00344C 00:F43C: 00        .byte $00   ; 



tbl_F43D:
- D 3 - I - 0x00344D 00:F43D: 34        .byte $30 + $04   ; 
- D 3 - I - 0x00344E 00:F43E: 30        .byte $30   ; 
- D 3 - I - 0x00344F 00:F43F: 20        .byte $20   ; 

- D 3 - I - 0x003450 00:F440: 81        .byte $80 + $01   ; 
- D 3 - I - 0x003451 00:F441: 81        .byte $81   ; 
- D 3 - I - 0x003452 00:F442: 81        .byte $81   ; 

- D 3 - I - 0x003453 00:F443: 34        .byte $30 + $04   ; 
- D 3 - I - 0x003454 00:F444: 24        .byte $24   ; 
- D 3 - I - 0x003455 00:F445: 81        .byte $81   ; 

- D 3 - I - 0x003456 00:F446: 81        .byte $80 + $01   ; 
- D 3 - I - 0x003457 00:F447: 27        .byte $27   ; 
- D 3 - I - 0x003458 00:F448: 81        .byte $81   ; 

- D 3 - I - 0x003459 00:F449: 34        .byte $30 + $04   ; 
- D 3 - I - 0x00345A 00:F44A: 30        .byte $30   ; 
- D 3 - I - 0x00345B 00:F44B: 17        .byte $17   ; 

- D 3 - I - 0x00345C 00:F44C: 81        .byte $80 + $01   ; 
- D 3 - I - 0x00345D 00:F44D: 81        .byte $81   ; 
- D 3 - I - 0x00345E 00:F44E: 81        .byte $81   ; 

- D 3 - I - 0x00345F 00:F44F: 32        .byte $30 + $02   ; 
- D 3 - I - 0x003460 00:F450: 24        .byte $24   ; 
- D 3 - I - 0x003461 00:F451: 81        .byte $81   ; 

- D 3 - I - 0x003462 00:F452: 34        .byte $30 + $04   ; 
- D 3 - I - 0x003463 00:F453: 27        .byte $27   ; 
- D 3 - I - 0x003464 00:F454: 81        .byte $81   ; 

- D 3 - I - 0x003465 00:F455: 35        .byte $30 + $05   ; 
- D 3 - I - 0x003466 00:F456: 30        .byte $30   ; 
- D 3 - I - 0x003467 00:F457: 15        .byte $15   ; 

- D 3 - I - 0x003468 00:F458: 81        .byte $80 + $01   ; 
- D 3 - I - 0x003469 00:F459: 81        .byte $81   ; 
- D 3 - I - 0x00346A 00:F45A: 81        .byte $81   ; 

- D 3 - I - 0x00346B 00:F45B: 32        .byte $30 + $02   ; 
- D 3 - I - 0x00346C 00:F45C: 25        .byte $25   ; 
- D 3 - I - 0x00346D 00:F45D: 81        .byte $81   ; 

- D 3 - I - 0x00346E 00:F45E: 81        .byte $80 + $01   ; 
- D 3 - I - 0x00346F 00:F45F: 29        .byte $29   ; 
- D 3 - I - 0x003470 00:F460: 81        .byte $81   ; 

- D 3 - I - 0x003471 00:F461: 32        .byte $30 + $02   ; 
- D 3 - I - 0x003472 00:F462: 81        .byte $81   ; 
- D 3 - I - 0x003473 00:F463: 20        .byte $20   ; 

- D 3 - I - 0x003474 00:F464: 81        .byte $80 + $01   ; 
- D 3 - I - 0x003475 00:F465: 25        .byte $25   ; 
- D 3 - I - 0x003476 00:F466: 81        .byte $81   ; 

- D 3 - I - 0x003477 00:F467: 81        .byte $80 + $01   ; 
- D 3 - I - 0x003478 00:F468: 29        .byte $29   ; 
- D 3 - I - 0x003479 00:F469: 81        .byte $81   ; 

- D 3 - I - 0x00347A 00:F46A: 81        .byte $80 + $01   ; 
- D 3 - I - 0x00347B 00:F46B: 81        .byte $81   ; 
- D 3 - I - 0x00347C 00:F46C: 81        .byte $81   ; 

- D 3 - I - 0x00347D 00:F46D: 2B        .byte $20 + $0B   ; 
- D 3 - I - 0x00347E 00:F46E: 25        .byte $25   ; 
- D 3 - I - 0x00347F 00:F46F: 17        .byte $17   ; 

- D 3 - I - 0x003480 00:F470: 29        .byte $20 + $09   ; 
- D 3 - I - 0x003481 00:F471: 81        .byte $81   ; 
- D 3 - I - 0x003482 00:F472: 81        .byte $81   ; 

- D 3 - I - 0x003483 00:F473: 27        .byte $20 + $07   ; 
- D 3 - I - 0x003484 00:F474: 22        .byte $22   ; 
- D 3 - I - 0x003485 00:F475: 81        .byte $81   ; 

- D 3 - I - 0x003486 00:F476: 2B        .byte $20 + $0B   ; 
- D 3 - I - 0x003487 00:F477: 81        .byte $81   ; 
- D 3 - I - 0x003488 00:F478: 81        .byte $81   ; 

- D 3 - I - 0x003489 00:F479: 29        .byte $20 + $09   ; 
- D 3 - I - 0x00348A 00:F47A: 1B        .byte $1B   ; 
- D 3 - I - 0x00348B 00:F47B: 1B        .byte $1B   ; 

- D 3 - I - 0x00348C 00:F47C: 27        .byte $20 + $07   ; 
- D 3 - I - 0x00348D 00:F47D: 81        .byte $81   ; 
- D 3 - I - 0x00348E 00:F47E: 81        .byte $81   ; 

- D 3 - I - 0x00348F 00:F47F: 29        .byte $20 + $09   ; 
- D 3 - I - 0x003490 00:F480: 22        .byte $22   ; 
- D 3 - I - 0x003491 00:F481: 81        .byte $81   ; 

- D 3 - I - 0x003492 00:F482: 2B        .byte $20 + $0B   ; 
- D 3 - I - 0x003493 00:F483: 81        .byte $81   ; 
- D 3 - I - 0x003494 00:F484: 81        .byte $81   ; 

- D 3 - I - 0x003495 00:F485: 30        .byte $30 + $00   ; 
- D 3 - I - 0x003496 00:F486: 27        .byte $27   ; 
- D 3 - I - 0x003497 00:F487: 20        .byte $20   ; 

- D 3 - I - 0x003498 00:F488: 81        .byte $80 + $01   ; 
- D 3 - I - 0x003499 00:F489: 81        .byte $81   ; 
- D 3 - I - 0x00349A 00:F48A: 81        .byte $81   ; 

- D 3 - I - 0x00349B 00:F48B: 30        .byte $30 + $00   ; 
- D 3 - I - 0x00349C 00:F48C: 23        .byte $23   ; 
- D 3 - I - 0x00349D 00:F48D: 81        .byte $81   ; 

- D 3 - I - 0x00349E 00:F48E: 81        .byte $80 + $01   ; 
- D 3 - I - 0x00349F 00:F48F: 24        .byte $24   ; 
- D 3 - I - 0x0034A0 00:F490: 81        .byte $81   ; 

- D 3 - I - 0x0034A1 00:F491: 30        .byte $30 + $00   ; 
- D 3 - I - 0x0034A2 00:F492: 20        .byte $20   ; 
- D 3 - I - 0x0034A3 00:F493: 20        .byte $20   ; 

- D 3 - I - 0x0034A4 00:F494: 81        .byte $80 + $01   ; 
- D 3 - I - 0x0034A5 00:F495: 81        .byte $81   ; 
- D 3 - I - 0x0034A6 00:F496: 81        .byte $81   ; 

- D 3 - I - 0x0034A7 00:F497: 81        .byte $80 + $01   ; 
- D 3 - I - 0x0034A8 00:F498: 81        .byte $81   ; 
- D 3 - I - 0x0034A9 00:F499: 81        .byte $81   ; 

- D 3 - I - 0x0034AA 00:F49A: 00        .byte $00 + $00   ; 
- D 3 - I - 0x0034AB 00:F49B: 00        .byte $00   ; 
- D 3 - I - 0x0034AC 00:F49C: 00        .byte $00   ; 



tbl_F49D:
- D 3 - I - 0x0034AD 00:F49D: 37        .byte $30 + $07   ; 
- D 3 - I - 0x0034AE 00:F49E: 28        .byte $28   ; 
- D 3 - I - 0x0034AF 00:F49F: 15        .byte $15   ; 

- D 3 - I - 0x0034B0 00:F4A0: 35        .byte $30 + $05   ; 
- D 3 - I - 0x0034B1 00:F4A1: 29        .byte $29   ; 
- D 3 - I - 0x0034B2 00:F4A2: 81        .byte $81   ; 

- D 3 - I - 0x0034B3 00:F4A3: 81        .byte $80 + $01   ; 
- D 3 - I - 0x0034B4 00:F4A4: 30        .byte $30   ; 
- D 3 - I - 0x0034B5 00:F4A5: 81        .byte $81   ; 

- D 3 - I - 0x0034B6 00:F4A6: 35        .byte $30 + $05   ; 
- D 3 - I - 0x0034B7 00:F4A7: 29        .byte $29   ; 
- D 3 - I - 0x0034B8 00:F4A8: 15        .byte $15   ; 

- D 3 - I - 0x0034B9 00:F4A9: 35        .byte $30 + $05   ; 
- D 3 - I - 0x0034BA 00:F4AA: 23        .byte $23   ; 
- D 3 - I - 0x0034BB 00:F4AB: 20        .byte $20   ; 

- D 3 - I - 0x0034BC 00:F4AC: 34        .byte $30 + $04   ; 
- D 3 - I - 0x0034BD 00:F4AD: 24        .byte $24   ; 
- D 3 - I - 0x0034BE 00:F4AE: 81        .byte $81   ; 

- D 3 - I - 0x0034BF 00:F4AF: 81        .byte $80 + $01   ; 
- D 3 - I - 0x0034C0 00:F4B0: 27        .byte $27   ; 
- D 3 - I - 0x0034C1 00:F4B1: 81        .byte $81   ; 

- D 3 - I - 0x0034C2 00:F4B2: 34        .byte $30 + $04   ; 
- D 3 - I - 0x0034C3 00:F4B3: 24        .byte $24   ; 
- D 3 - I - 0x0034C4 00:F4B4: 20        .byte $20   ; 

- D 3 - I - 0x0034C5 00:F4B5: 37        .byte $30 + $07   ; 
- D 3 - I - 0x0034C6 00:F4B6: 27        .byte $27   ; 
- D 3 - I - 0x0034C7 00:F4B7: 17        .byte $17   ; 

- D 3 - I - 0x0034C8 00:F4B8: 35        .byte $30 + $05   ; 
- D 3 - I - 0x0034C9 00:F4B9: 29        .byte $29   ; 
- D 3 - I - 0x0034CA 00:F4BA: 81        .byte $81   ; 

- D 3 - I - 0x0034CB 00:F4BB: 34        .byte $30 + $04   ; 
- D 3 - I - 0x0034CC 00:F4BC: 2B        .byte $2B   ; 
- D 3 - I - 0x0034CD 00:F4BD: 1B        .byte $1B   ; 

- D 3 - I - 0x0034CE 00:F4BE: 32        .byte $30 + $02   ; 
- D 3 - I - 0x0034CF 00:F4BF: 32        .byte $32   ; 
- D 3 - I - 0x0034D0 00:F4C0: 81        .byte $81   ; 

- D 3 - I - 0x0034D1 00:F4C1: 30        .byte $30 + $00   ; 
- D 3 - I - 0x0034D2 00:F4C2: 30        .byte $30   ; 
- D 3 - I - 0x0034D3 00:F4C3: 20        .byte $20   ; 

- D 3 - I - 0x0034D4 00:F4C4: 81        .byte $80 + $01   ; 
- D 3 - I - 0x0034D5 00:F4C5: 81        .byte $81   ; 
- D 3 - I - 0x0034D6 00:F4C6: 81        .byte $81   ; 

- D 3 - I - 0x0034D7 00:F4C7: 81        .byte $80 + $01   ; 
- D 3 - I - 0x0034D8 00:F4C8: 81        .byte $81   ; 
- D 3 - I - 0x0034D9 00:F4C9: 81        .byte $81   ; 

- - - - - - 0x0034DA 00:F4CA: 81        .byte $80 + $01   ; 
- - - - - - 0x0034DB 00:F4CB: 81        .byte $81   ; 
- - - - - - 0x0034DC 00:F4CC: 81        .byte $81   ; 

- - - - - - 0x0034DD 00:F4CD: 00        .byte $00 + $00   ; 
- - - - - - 0x0034DE 00:F4CE: 00        .byte $00   ; 
- - - - - - 0x0034DF 00:F4CF: 00        .byte $00   ; 



tbl_F4D0:
- D 3 - I - 0x0034E0 00:F4D0: 30        .byte $30 + $00   ; 
- D 3 - I - 0x0034E1 00:F4D1: 20        .byte $20   ; 
- D 3 - I - 0x0034E2 00:F4D2: 20        .byte $20   ; 

- D 3 - I - 0x0034E3 00:F4D3: 81        .byte $80 + $01   ; 
- D 3 - I - 0x0034E4 00:F4D4: 81        .byte $81   ; 
- D 3 - I - 0x0034E5 00:F4D5: 81        .byte $81   ; 

- D 3 - I - 0x0034E6 00:F4D6: 27        .byte $20 + $07   ; 
- D 3 - I - 0x0034E7 00:F4D7: 17        .byte $17   ; 
- D 3 - I - 0x0034E8 00:F4D8: 24        .byte $24   ; 

- D 3 - I - 0x0034E9 00:F4D9: 27        .byte $20 + $07   ; 
- D 3 - I - 0x0034EA 00:F4DA: 17        .byte $17   ; 
- D 3 - I - 0x0034EB 00:F4DB: 81        .byte $81   ; 

- D 3 - I - 0x0034EC 00:F4DC: 28        .byte $20 + $08   ; 
- D 3 - I - 0x0034ED 00:F4DD: 18        .byte $18   ; 
- D 3 - I - 0x0034EE 00:F4DE: 17        .byte $17   ; 

- D 3 - I - 0x0034EF 00:F4DF: 81        .byte $80 + $01   ; 
- D 3 - I - 0x0034F0 00:F4E0: 81        .byte $81   ; 
- D 3 - I - 0x0034F1 00:F4E1: 81        .byte $81   ; 

- D 3 - I - 0x0034F2 00:F4E2: 24        .byte $20 + $04   ; 
- D 3 - I - 0x0034F3 00:F4E3: 14        .byte $14   ; 
- D 3 - I - 0x0034F4 00:F4E4: 24        .byte $24   ; 

- D 3 - I - 0x0034F5 00:F4E5: 25        .byte $20 + $05   ; 
- D 3 - I - 0x0034F6 00:F4E6: 15        .byte $15   ; 
- D 3 - I - 0x0034F7 00:F4E7: 81        .byte $81   ; 

- D 3 - I - 0x0034F8 00:F4E8: 27        .byte $20 + $07   ; 
- D 3 - I - 0x0034F9 00:F4E9: 17        .byte $17   ; 
- D 3 - I - 0x0034FA 00:F4EA: 1B        .byte $1B   ; 

- D 3 - I - 0x0034FB 00:F4EB: 29        .byte $20 + $09   ; 
- D 3 - I - 0x0034FC 00:F4EC: 19        .byte $19   ; 
- D 3 - I - 0x0034FD 00:F4ED: 81        .byte $81   ; 

- D 3 - I - 0x0034FE 00:F4EE: 2B        .byte $20 + $0B   ; 
- D 3 - I - 0x0034FF 00:F4EF: 1B        .byte $1B   ; 
- D 3 - I - 0x003500 00:F4F0: 22        .byte $22   ; 

- D 3 - I - 0x003501 00:F4F1: 81        .byte $80 + $01   ; 
- D 3 - I - 0x003502 00:F4F2: 81        .byte $81   ; 
- D 3 - I - 0x003503 00:F4F3: 81        .byte $81   ; 

- D 3 - I - 0x003504 00:F4F4: 30        .byte $30 + $00   ; 
- D 3 - I - 0x003505 00:F4F5: 20        .byte $20   ; 
- D 3 - I - 0x003506 00:F4F6: 20        .byte $20   ; 

- D 3 - I - 0x003507 00:F4F7: 81        .byte $80 + $01   ; 
- D 3 - I - 0x003508 00:F4F8: 81        .byte $81   ; 
- D 3 - I - 0x003509 00:F4F9: 81        .byte $81   ; 

- D 3 - I - 0x00350A 00:F4FA: 81        .byte $80 + $01   ; 
- D 3 - I - 0x00350B 00:F4FB: 81        .byte $81   ; 
- D 3 - I - 0x00350C 00:F4FC: 81        .byte $81   ; 

- D 3 - I - 0x00350D 00:F4FD: 81        .byte $80 + $01   ; 
- D 3 - I - 0x00350E 00:F4FE: 81        .byte $81   ; 
- D 3 - I - 0x00350F 00:F4FF: 81        .byte $81   ; 

- D 3 - I - 0x003510 00:F500: 00        .byte $00 + $00   ; 
- D 3 - I - 0x003511 00:F501: 00        .byte $00   ; 
- D 3 - I - 0x003512 00:F502: 00        .byte $00   ; 



tbl_F503:
- D 3 - I - 0x003513 00:F503: 20        .byte $20   ; 
- D 3 - I - 0x003514 00:F504: 81        .byte $81   ; 
- D 3 - I - 0x003515 00:F505: 81        .byte $81   ; 
- D 3 - I - 0x003516 00:F506: 27        .byte $27   ; 
- D 3 - I - 0x003517 00:F507: 81        .byte $81   ; 
- D 3 - I - 0x003518 00:F508: 81        .byte $81   ; 
- D 3 - I - 0x003519 00:F509: 24        .byte $24   ; 
- D 3 - I - 0x00351A 00:F50A: 81        .byte $81   ; 
- D 3 - I - 0x00351B 00:F50B: 20        .byte $20   ; 
- D 3 - I - 0x00351C 00:F50C: 81        .byte $81   ; 
- D 3 - I - 0x00351D 00:F50D: 81        .byte $81   ; 
- D 3 - I - 0x00351E 00:F50E: 27        .byte $27   ; 
- D 3 - I - 0x00351F 00:F50F: 81        .byte $81   ; 
- D 3 - I - 0x003520 00:F510: 81        .byte $81   ; 
- D 3 - I - 0x003521 00:F511: 24        .byte $24   ; 
- D 3 - I - 0x003522 00:F512: 81        .byte $81   ; 
- D 3 - I - 0x003523 00:F513: 25        .byte $25   ; 
- D 3 - I - 0x003524 00:F514: 81        .byte $81   ; 
- D 3 - I - 0x003525 00:F515: 81        .byte $81   ; 
- D 3 - I - 0x003526 00:F516: 30        .byte $30   ; 
- D 3 - I - 0x003527 00:F517: 81        .byte $81   ; 
- D 3 - I - 0x003528 00:F518: 81        .byte $81   ; 
- D 3 - I - 0x003529 00:F519: 29        .byte $29   ; 
- D 3 - I - 0x00352A 00:F51A: 81        .byte $81   ; 
- D 3 - I - 0x00352B 00:F51B: 25        .byte $25   ; 
- D 3 - I - 0x00352C 00:F51C: 81        .byte $81   ; 
- D 3 - I - 0x00352D 00:F51D: 81        .byte $81   ; 
- D 3 - I - 0x00352E 00:F51E: 30        .byte $30   ; 
- D 3 - I - 0x00352F 00:F51F: 81        .byte $81   ; 
- D 3 - I - 0x003530 00:F520: 81        .byte $81   ; 
- D 3 - I - 0x003531 00:F521: 29        .byte $29   ; 
- D 3 - I - 0x003532 00:F522: 81        .byte $81   ; 
- D 3 - I - 0x003533 00:F523: 20        .byte $20   ; 
- D 3 - I - 0x003534 00:F524: 81        .byte $81   ; 
- D 3 - I - 0x003535 00:F525: 81        .byte $81   ; 
- D 3 - I - 0x003536 00:F526: 27        .byte $27   ; 
- D 3 - I - 0x003537 00:F527: 81        .byte $81   ; 
- D 3 - I - 0x003538 00:F528: 81        .byte $81   ; 
- D 3 - I - 0x003539 00:F529: 24        .byte $24   ; 
- D 3 - I - 0x00353A 00:F52A: 81        .byte $81   ; 
- D 3 - I - 0x00353B 00:F52B: 20        .byte $20   ; 
- D 3 - I - 0x00353C 00:F52C: 81        .byte $81   ; 
- D 3 - I - 0x00353D 00:F52D: 81        .byte $81   ; 
- D 3 - I - 0x00353E 00:F52E: 27        .byte $27   ; 
- D 3 - I - 0x00353F 00:F52F: 81        .byte $81   ; 
- D 3 - I - 0x003540 00:F530: 81        .byte $81   ; 
- D 3 - I - 0x003541 00:F531: 24        .byte $24   ; 
- D 3 - I - 0x003542 00:F532: 81        .byte $81   ; 
- D 3 - I - 0x003543 00:F533: 17        .byte $17   ; 
- D 3 - I - 0x003544 00:F534: 81        .byte $81   ; 
- D 3 - I - 0x003545 00:F535: 81        .byte $81   ; 
- D 3 - I - 0x003546 00:F536: 1B        .byte $1B   ; 
- D 3 - I - 0x003547 00:F537: 81        .byte $81   ; 
- D 3 - I - 0x003548 00:F538: 81        .byte $81   ; 
- D 3 - I - 0x003549 00:F539: 22        .byte $22   ; 
- D 3 - I - 0x00354A 00:F53A: 81        .byte $81   ; 
- D 3 - I - 0x00354B 00:F53B: 17        .byte $17   ; 
- D 3 - I - 0x00354C 00:F53C: 81        .byte $81   ; 
- D 3 - I - 0x00354D 00:F53D: 81        .byte $81   ; 
- D 3 - I - 0x00354E 00:F53E: 1B        .byte $1B   ; 
- D 3 - I - 0x00354F 00:F53F: 81        .byte $81   ; 
- D 3 - I - 0x003550 00:F540: 81        .byte $81   ; 
- D 3 - I - 0x003551 00:F541: 22        .byte $22   ; 
- D 3 - I - 0x003552 00:F542: 81        .byte $81   ; 
- D 3 - I - 0x003553 00:F543: 00        .byte $00   ; 



tbl_F544:
- D 3 - I - 0x003554 00:F544: 20        .byte $20   ; 
- D 3 - I - 0x003555 00:F545: 81        .byte $81   ; 
- D 3 - I - 0x003556 00:F546: 24        .byte $24   ; 
- D 3 - I - 0x003557 00:F547: 81        .byte $81   ; 
- D 3 - I - 0x003558 00:F548: 27        .byte $27   ; 
- D 3 - I - 0x003559 00:F549: 81        .byte $81   ; 
- D 3 - I - 0x00355A 00:F54A: 17        .byte $17   ; 
- D 3 - I - 0x00355B 00:F54B: 20        .byte $20   ; 
- D 3 - I - 0x00355C 00:F54C: 81        .byte $81   ; 
- D 3 - I - 0x00355D 00:F54D: 20        .byte $20   ; 
- D 3 - I - 0x00355E 00:F54E: 24        .byte $24   ; 
- D 3 - I - 0x00355F 00:F54F: 81        .byte $81   ; 
- D 3 - I - 0x003560 00:F550: 27        .byte $27   ; 
- D 3 - I - 0x003561 00:F551: 81        .byte $81   ; 
- D 3 - I - 0x003562 00:F552: 20        .byte $20   ; 
- D 3 - I - 0x003563 00:F553: 81        .byte $81   ; 
- D 3 - I - 0x003564 00:F554: 25        .byte $25   ; 
- D 3 - I - 0x003565 00:F555: 81        .byte $81   ; 
- D 3 - I - 0x003566 00:F556: 29        .byte $29   ; 
- D 3 - I - 0x003567 00:F557: 81        .byte $81   ; 
- D 3 - I - 0x003568 00:F558: 30        .byte $30   ; 
- D 3 - I - 0x003569 00:F559: 81        .byte $81   ; 
- D 3 - I - 0x00356A 00:F55A: 20        .byte $20   ; 
- D 3 - I - 0x00356B 00:F55B: 25        .byte $25   ; 
- D 3 - I - 0x00356C 00:F55C: 81        .byte $81   ; 
- D 3 - I - 0x00356D 00:F55D: 25        .byte $25   ; 
- D 3 - I - 0x00356E 00:F55E: 29        .byte $29   ; 
- D 3 - I - 0x00356F 00:F55F: 81        .byte $81   ; 
- D 3 - I - 0x003570 00:F560: 30        .byte $30   ; 
- D 3 - I - 0x003571 00:F561: 81        .byte $81   ; 
- D 3 - I - 0x003572 00:F562: 1B        .byte $1B   ; 
- D 3 - I - 0x003573 00:F563: 81        .byte $81   ; 
- D 3 - I - 0x003574 00:F564: 20        .byte $20   ; 
- D 3 - I - 0x003575 00:F565: 81        .byte $81   ; 
- D 3 - I - 0x003576 00:F566: 24        .byte $24   ; 
- D 3 - I - 0x003577 00:F567: 81        .byte $81   ; 
- D 3 - I - 0x003578 00:F568: 27        .byte $27   ; 
- D 3 - I - 0x003579 00:F569: 81        .byte $81   ; 
- D 3 - I - 0x00357A 00:F56A: 17        .byte $17   ; 
- D 3 - I - 0x00357B 00:F56B: 20        .byte $20   ; 
- D 3 - I - 0x00357C 00:F56C: 81        .byte $81   ; 
- D 3 - I - 0x00357D 00:F56D: 20        .byte $20   ; 
- D 3 - I - 0x00357E 00:F56E: 24        .byte $24   ; 
- D 3 - I - 0x00357F 00:F56F: 81        .byte $81   ; 
- D 3 - I - 0x003580 00:F570: 27        .byte $27   ; 
- D 3 - I - 0x003581 00:F571: 81        .byte $81   ; 
- D 3 - I - 0x003582 00:F572: 20        .byte $20   ; 
- D 3 - I - 0x003583 00:F573: 81        .byte $81   ; 
- D 3 - I - 0x003584 00:F574: 25        .byte $25   ; 
- D 3 - I - 0x003585 00:F575: 81        .byte $81   ; 
- D 3 - I - 0x003586 00:F576: 22        .byte $22   ; 
- D 3 - I - 0x003587 00:F577: 81        .byte $81   ; 
- D 3 - I - 0x003588 00:F578: 1B        .byte $1B   ; 
- D 3 - I - 0x003589 00:F579: 81        .byte $81   ; 
- D 3 - I - 0x00358A 00:F57A: 25        .byte $25   ; 
- D 3 - I - 0x00358B 00:F57B: 22        .byte $22   ; 
- D 3 - I - 0x00358C 00:F57C: 81        .byte $81   ; 
- D 3 - I - 0x00358D 00:F57D: 1B        .byte $1B   ; 
- D 3 - I - 0x00358E 00:F57E: 17        .byte $17   ; 
- D 3 - I - 0x00358F 00:F57F: 81        .byte $81   ; 
- D 3 - I - 0x003590 00:F580: 19        .byte $19   ; 
- D 3 - I - 0x003591 00:F581: 81        .byte $81   ; 
- D 3 - I - 0x003592 00:F582: 1B        .byte $1B   ; 
- D 3 - I - 0x003593 00:F583: 81        .byte $81   ; 
- D 3 - I - 0x003594 00:F584: 00        .byte $00   ; 



tbl_F585:
- D 3 - I - 0x003595 00:F585: 14        .byte $14   ; 
- D 3 - I - 0x003596 00:F586: 24        .byte $24   ; 
- D 3 - I - 0x003597 00:F587: 34        .byte $34   ; 
- D 3 - I - 0x003598 00:F588: 44        .byte $44   ; 
- D 3 - I - 0x003599 00:F589: 40        .byte $40   ; 
- D 3 - I - 0x00359A 00:F58A: 00        .byte $00   ; 



tbl_F58B:
- D 3 - I - 0x00359B 00:F58B: 17        .byte $17   ; 
- D 3 - I - 0x00359C 00:F58C: 27        .byte $27   ; 
- D 3 - I - 0x00359D 00:F58D: 37        .byte $37   ; 
- D 3 - I - 0x00359E 00:F58E: 47        .byte $47   ; 
- D 3 - I - 0x00359F 00:F58F: 44        .byte $44   ; 
- D 3 - I - 0x0035A0 00:F590: 00        .byte $00   ; 



tbl_F591:
- D 3 - I - 0x0035A1 00:F591: 20        .byte $20   ; 
- D 3 - I - 0x0035A2 00:F592: 22        .byte $22   ; 
- D 3 - I - 0x0035A3 00:F593: 00        .byte $00   ; 



tbl_F594:
- D 3 - I - 0x0035A4 00:F594: 24        .byte $24   ; 
- D 3 - I - 0x0035A5 00:F595: 28        .byte $28   ; 
- D 3 - I - 0x0035A6 00:F596: 00        .byte $00   ; 



tbl_F597:
- D 3 - I - 0x0035A7 00:F597: 10        .byte $10   ; 
- D 3 - I - 0x0035A8 00:F598: 00        .byte $00   ; 



tbl_F599:
- D 3 - I - 0x0035A9 00:F599: 50        .byte $50   ; 
- D 3 - I - 0x0035AA 00:F59A: 48        .byte $48   ; 
- D 3 - I - 0x0035AB 00:F59B: 44        .byte $44   ; 
- D 3 - I - 0x0035AC 00:F59C: 40        .byte $40   ; 
- D 3 - I - 0x0035AD 00:F59D: 40        .byte $40   ; 
- D 3 - I - 0x0035AE 00:F59E: 38        .byte $38   ; 
- D 3 - I - 0x0035AF 00:F59F: 34        .byte $34   ; 
- D 3 - I - 0x0035B0 00:F5A0: 30        .byte $30   ; 
- D 3 - I - 0x0035B1 00:F5A1: 30        .byte $30   ; 
- D 3 - I - 0x0035B2 00:F5A2: 28        .byte $28   ; 
- D 3 - I - 0x0035B3 00:F5A3: 24        .byte $24   ; 
- D 3 - I - 0x0035B4 00:F5A4: 20        .byte $20   ; 
- D 3 - I - 0x0035B5 00:F5A5: 20        .byte $20   ; 
- D 3 - I - 0x0035B6 00:F5A6: 18        .byte $18   ; 
- D 3 - I - 0x0035B7 00:F5A7: 14        .byte $14   ; 
- D 3 - I - 0x0035B8 00:F5A8: 10        .byte $10   ; 
- D 3 - I - 0x0035B9 00:F5A9: 00        .byte $00   ; 



tbl_F5AA:
- D 3 - I - 0x0035BA 00:F5AA: 40        .byte $40   ; 
- - - - - - 0x0035BB 00:F5AB: 81        .byte $81   ; 
- - - - - - 0x0035BC 00:F5AC: 81        .byte $81   ; 
- D 3 - I - 0x0035BD 00:F5AD: 3B        .byte $3B   ; 
- - - - - - 0x0035BE 00:F5AE: 81        .byte $81   ; 
- - - - - - 0x0035BF 00:F5AF: 81        .byte $81   ; 
- D 3 - I - 0x0035C0 00:F5B0: 40        .byte $40   ; 
- - - - - - 0x0035C1 00:F5B1: 81        .byte $81   ; 
- - - - - - 0x0035C2 00:F5B2: 81        .byte $81   ; 
- D 3 - I - 0x0035C3 00:F5B3: 00        .byte $00   ; 
- - - - - - 0x0035C4 00:F5B4: 00        .byte $00   ; 
- - - - - - 0x0035C5 00:F5B5: 00        .byte $00   ; 



tbl_F5B6:
- D 3 - I - 0x0035C6 00:F5B6: 50        .byte $50   ; 
- D 3 - I - 0x0035C7 00:F5B7: 40        .byte $40   ; 
- D 3 - I - 0x0035C8 00:F5B8: 00        .byte $00   ; 



tbl_F5B9:
- D 3 - I - 0x0035C9 00:F5B9: 37        .byte $30 + $07   ; 
- D 3 - I - 0x0035CA 00:F5BA: 34        .byte $34   ; 
- - - - - - 0x0035CB 00:F5BB: 81        .byte $81   ; placeholder

- D 3 - I - 0x0035CC 00:F5BC: 37        .byte $30 + $07   ; 
- D 3 - I - 0x0035CD 00:F5BD: 34        .byte $34   ; 
- - - - - - 0x0035CE 00:F5BE: 81        .byte $81   ; 

- D 3 - I - 0x0035CF 00:F5BF: 37        .byte $30 + $07   ; 
- D 3 - I - 0x0035D0 00:F5C0: 34        .byte $34   ; 
- - - - - - 0x0035D1 00:F5C1: 81        .byte $81   ; 

- D 3 - I - 0x0035D2 00:F5C2: 39        .byte $30 + $09   ; 
- D 3 - I - 0x0035D3 00:F5C3: 36        .byte $36   ; 
- - - - - - 0x0035D4 00:F5C4: 81        .byte $81   ; 

- D 3 - I - 0x0035D5 00:F5C5: 39        .byte $30 + $09   ; 
- D 3 - I - 0x0035D6 00:F5C6: 36        .byte $36   ; 
- - - - - - 0x0035D7 00:F5C7: 81        .byte $81   ; 

- D 3 - I - 0x0035D8 00:F5C8: 39        .byte $30 + $09   ; 
- D 3 - I - 0x0035D9 00:F5C9: 36        .byte $36   ; 
- - - - - - 0x0035DA 00:F5CA: 81        .byte $81   ; 

- D 3 - I - 0x0035DB 00:F5CB: 4B        .byte $40 + $0B   ; 
- D 3 - I - 0x0035DC 00:F5CC: 38        .byte $38   ; 
- - - - - - 0x0035DD 00:F5CD: 81        .byte $81   ; 

- D 3 - I - 0x0035DE 00:F5CE: 81        .byte $80 + $01   ; 
- D 3 - I - 0x0035DF 00:F5CF: 81        .byte $81   ; 
- - - - - - 0x0035E0 00:F5D0: 81        .byte $81   ; 

- D 3 - I - 0x0035E1 00:F5D1: 81        .byte $80 + $01   ; 
- D 3 - I - 0x0035E2 00:F5D2: 81        .byte $81   ; 
- - - - - - 0x0035E3 00:F5D3: 81        .byte $81   ; 

- D 3 - I - 0x0035E4 00:F5D4: 81        .byte $80 + $01   ; 
- D 3 - I - 0x0035E5 00:F5D5: 81        .byte $81   ; 
- - - - - - 0x0035E6 00:F5D6: 81        .byte $81   ; 

- D 3 - I - 0x0035E7 00:F5D7: 00        .byte $00 + $00   ; 
- D 3 - I - 0x0035E8 00:F5D8: 00        .byte $00   ; 
- - - - - - 0x0035E9 00:F5D9: 00        .byte $00   ; 




tbl_F5DA:
- D 3 - I - 0x0035EA 00:F5DA: 4A        .byte $4A   ; 
- D 3 - I - 0x0035EB 00:F5DB: 44        .byte $44   ; 
- D 3 - I - 0x0035EC 00:F5DC: 42        .byte $42   ; 
- D 3 - I - 0x0035ED 00:F5DD: 40        .byte $40   ; 
- D 3 - I - 0x0035EE 00:F5DE: 3A        .byte $3A   ; 
- D 3 - I - 0x0035EF 00:F5DF: 34        .byte $34   ; 
- D 3 - I - 0x0035F0 00:F5E0: 32        .byte $32   ; 
- D 3 - I - 0x0035F1 00:F5E1: 30        .byte $30   ; 
- D 3 - I - 0x0035F2 00:F5E2: 00        .byte $00   ; 


; bzk garbage
- - - - - - 0x0035F3 00:F5E3: FF        .byte $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0035F8 00:F5E8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003600 00:F5F0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003608 00:F5F8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 



tbl_F600_rounds_data:
.scope
_round_01:
- D 3 - I - 0x003610 00:F600: 2A        .byte _round_02 - _round_01
    .incbin "rounds/round_01.bin"

_round_02:
- D 3 - I - 0x00363A 00:F62A: 2E        .byte _round_03 - _round_02
    .incbin "rounds/round_02.bin"

_round_03:
- D 3 - I - 0x003668 00:F658: 2E        .byte _round_04 - _round_03
    .incbin "rounds/round_03.bin"

_round_04:
- D 3 - I - 0x003696 00:F686: 2C        .byte _round_05 - _round_04
    .incbin "rounds/round_04.bin"

_round_05:
- D 3 - I - 0x0036C2 00:F6B2: 2C        .byte _round_06 - _round_05
    .incbin "rounds/round_05.bin"

_round_06:
- D 3 - I - 0x0036EE 00:F6DE: 37        .byte _round_07 - _round_06
    .incbin "rounds/round_06.bin"

_round_07:
- D 3 - I - 0x003725 00:F715: 3B        .byte _round_08 - _round_07
    .incbin "rounds/round_07.bin"

_round_08:
- D 3 - I - 0x003760 00:F750: 34        .byte _round_09 - _round_08
    .incbin "rounds/round_08.bin"

_round_09:
- D 3 - I - 0x003794 00:F784: 29        .byte _round_10 - _round_09
    .incbin "rounds/round_09.bin"

_round_10:
- D 3 - I - 0x0037BD 00:F7AD: 2D        .byte _round_11 - _round_10
    .incbin "rounds/round_10.bin"

_round_11:
- D 3 - I - 0x0037EA 00:F7DA: 2A        .byte _round_12 - _round_11
    .incbin "rounds/round_11.bin"

_round_12:
- D 3 - I - 0x003814 00:F804: 2F        .byte _round_13 - _round_12
    .incbin "rounds/round_12.bin"

_round_13:
- D 3 - I - 0x003843 00:F833: 2F        .byte _round_14 - _round_13
    .incbin "rounds/round_13.bin"

_round_14:
- D 3 - I - 0x003872 00:F862: 3F        .byte _round_15 - _round_14
    .incbin "rounds/round_14.bin"

_round_15:
- D 3 - I - 0x0038B1 00:F8A1: 2B        .byte _round_16 - _round_15
    .incbin "rounds/round_15.bin"

_round_16:
- D 3 - I - 0x0038DC 00:F8CC: 35        .byte _round_17 - _round_16
    .incbin "rounds/round_16.bin"

_round_17:
- D 3 - I - 0x003911 00:F901: 26        .byte _round_18 - _round_17
    .incbin "rounds/round_17.bin"

_round_18:
- D 3 - I - 0x003937 00:F927: 3F        .byte _round_19 - _round_18
    .incbin "rounds/round_18.bin"

_round_19:
- D 3 - I - 0x003976 00:F966: 2B        .byte _round_20 - _round_19
    .incbin "rounds/round_19.bin"

_round_20:
- D 3 - I - 0x0039A1 00:F991: 2F        .byte _round_21 - _round_20
    .incbin "rounds/round_20.bin"

_round_21:
- D 3 - I - 0x0039D0 00:F9C0: 2C        .byte _round_22 - _round_21
    .incbin "rounds/round_21.bin"

_round_22:
- D 3 - I - 0x0039FC 00:F9EC: 32        .byte _round_23 - _round_22
    .incbin "rounds/round_22.bin"

_round_23:
- D 3 - I - 0x003A2E 00:FA1E: 3A        .byte _round_24 - _round_23
    .incbin "rounds/round_23.bin"

_round_24:
- D 3 - I - 0x003A68 00:FA58: 37        .byte _round_25 - _round_24
    .incbin "rounds/round_24.bin"

_round_25:
- D 3 - I - 0x003A9F 00:FA8F: 34        .byte _round_26 - _round_25
    .incbin "rounds/round_25.bin"

_round_26:
- D 3 - I - 0x003AD3 00:FAC3: 38        .byte _round_27 - _round_26
    .incbin "rounds/round_26.bin"

_round_27:
- D 3 - I - 0x003B0B 00:FAFB: 33        .byte _round_28 - _round_27
    .incbin "rounds/round_27.bin"

_round_28:
- D 3 - I - 0x003B3E 00:FB2E: 3B        .byte _round_29 - _round_28
    .incbin "rounds/round_28.bin"

_round_29:
- D 3 - I - 0x003B79 00:FB69: 38        .byte _round_30 - _round_29
    .incbin "rounds/round_29.bin"

_round_30:
- D 3 - I - 0x003BB1 00:FBA1: 50        .byte _round_31 - _round_30
    .incbin "rounds/round_30.bin"

_round_31:
- D 3 - I - 0x003C01 00:FBF1: 2B        .byte _round_32 - _round_31
    .incbin "rounds/round_31.bin"

_round_32:
- D 3 - I - 0x003C2C 00:FC1C: 26        .byte _round_33 - _round_32
    .incbin "rounds/round_32.bin"

_round_33:
- D 3 - I - 0x003C52 00:FC42: 3B        .byte _round_34 - _round_33
    .incbin "rounds/round_33.bin"

_round_34:
- D 3 - I - 0x003C8D 00:FC7D: 2D        .byte _round_35 - _round_34
    .incbin "rounds/round_34.bin"

_round_35:
- D 3 - I - 0x003CBA 00:FCAA: 26        .byte _round_36 - _round_35
    .incbin "rounds/round_35.bin"

_round_36:
- D 3 - I - 0x003CE0 00:FCD0: 26        .byte _round_37 - _round_36
    .incbin "rounds/round_36.bin"

_round_37:
- D 3 - I - 0x003D06 00:FCF6: 2F        .byte _round_38 - _round_37
    .incbin "rounds/round_37.bin"

_round_38:
- D 3 - I - 0x003D35 00:FD25: 2E        .byte _round_39 - _round_38
    .incbin "rounds/round_38.bin"

_round_39:
- D 3 - I - 0x003D63 00:FD53: 38        .byte _round_40 - _round_39
    .incbin "rounds/round_39.bin"

_round_40:
- D 3 - I - 0x003D9B 00:FD8B: 2F        .byte _round_41 - _round_40
    .incbin "rounds/round_40.bin"

_round_41:
- D 3 - I - 0x003DCA 00:FDBA: 2E        .byte _round_42 - _round_41
    .incbin "rounds/round_41.bin"

_round_42:
- D 3 - I - 0x003DF8 00:FDE8: 3D        .byte _round_43 - _round_42
    .incbin "rounds/round_42.bin"

_round_43:
- D 3 - I - 0x003E35 00:FE25: 34        .byte _round_44 - _round_43
    .incbin "rounds/round_43.bin"

_round_44:
- D 3 - I - 0x003E69 00:FE59: 30        .byte _round_45 - _round_44
    .incbin "rounds/round_44.bin"

_round_45:
- D 3 - I - 0x003E99 00:FE89: 28        .byte _round_46 - _round_45
    .incbin "rounds/round_45.bin"

_round_46:
- D 3 - I - 0x003EC1 00:FEB1: 2B        .byte _round_47 - _round_46
    .incbin "rounds/round_46.bin"

_round_47:
- D 3 - I - 0x003EEC 00:FEDC: 34        .byte _round_48 - _round_47
    .incbin "rounds/round_47.bin"

_round_48:
- D 3 - I - 0x003F20 00:FF10: 2C        .byte _round_49 - _round_48
    .incbin "rounds/round_48.bin"

_round_49:
- D 3 - I - 0x003F4C 00:FF3C: 37        .byte _round_50 - _round_49
    .incbin "rounds/round_49.bin"

_round_50:
- - - - - - 0x003F83 00:FF73: 38        .byte _round_51 - _round_50
    .incbin "rounds/round_50.bin"

_round_51:
.endscope


; bzk garbage
- - - - - - 0x003FBB 00:FFAB: 23        .byte $23   ; 
- - - - - - 0x003FBC 00:FFAC: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003FC4 00:FFB4: FF        .byte $FF, $FF, $FF   ; 
- - - - - - 0x003FC7 00:FFB7: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x003FCF 00:FFBF: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x003FD7 00:FFC7: 00        .byte $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x003FDE 00:FFCE: 23        .byte $23   ; 
- - - - - - 0x003FDF 00:FFCF: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003FE7 00:FFD7: FF        .byte $FF, $FF, $FF   ; 
- - - - - - 0x003FEA 00:FFDA: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x003FF2 00:FFE2: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x003FFA 00:FFEA: 00        .byte $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x004000 00:FFF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x004008 00:FFF8: FF        .byte $FF   ; 


; bzk garbage
vec_FFF9_IRQ:
- - - - - - 0x004009 00:FFF9: 40        RTI



.out .sprintf("Free bytes in bank FF: 0x%X [%d]", ($FFFA - *), ($FFFA - *))



.segment "VECTORS"
- D 3 - - - 0x00400A 00:FFFA: C0 C0     .word vec_C0C0_NMI
- D 3 - - - 0x00400C 00:FFFC: 00 C0     .word vec_C000_RESET
- - - - - - 0x00400E 00:FFFE: F9 FF     .word vec_FFF9_IRQ



