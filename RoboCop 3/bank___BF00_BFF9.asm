; bzk code must be placed at the same address in banks 00-06 (currently BF00)

; content was copied from bank_00.asm
; it's a common identical include file for banks 00-06

; that's because of MMC1 stuff, read here about this
; https://wiki.nesdev.com/w/index.php/MMC1#Control_.28internal.2C_.248000-.249FFF.29

; _inc_ in label names means this label is used to go
; into included asm file from main asm bank files



vec_inc_0x003F10_RESET:
- - - - - - 0x003F10 00:BF00: 78        SEI
- - - - - - 0x003F11 00:BF01: D8        CLD
- - - - - - 0x003F12 00:BF02: A9 EF     LDA #$EF
- - - - - - 0x003F14 00:BF04: 8D 00 80  STA $8000
- - - - - - 0x003F17 00:BF07: EE 00 80  INC $8000
- - - - - - 0x003F1A 00:BF0A: A2 00     LDX #$00
- - - - - - 0x003F1C 00:BF0C: 8E 00 20  STX $2000
- - - - - - 0x003F1F 00:BF0F: 8E 01 20  STX $2001
- - - - - - 0x003F22 00:BF12: 8E 02 20  STX $2002
- - - - - - 0x003F25 00:BF15: 8E 03 20  STX $2003
- - - - - - 0x003F28 00:BF18: 8E 04 20  STX $2004
- - - - - - 0x003F2B 00:BF1B: 8E 14 40  STX $4014
- - - - - - 0x003F2E 00:BF1E: CA        DEX
- - - - - - 0x003F2F 00:BF1F: 9A        TXS
bra_BF20_infinite_loop:
- - - - - - 0x003F30 00:BF20: 2C 02 20  BIT $2002
- - - - - - 0x003F33 00:BF23: 10 FB     BPL bra_BF20_infinite_loop
bra_BF25_infinite_loop:
- - - - - - 0x003F35 00:BF25: 2C 02 20  BIT $2002
- - - - - - 0x003F38 00:BF28: 30 FB     BMI bra_BF25_infinite_loop
bra_BF2A_infinite_loop:
- - - - - - 0x003F3A 00:BF2A: 2C 02 20  BIT $2002
- - - - - - 0x003F3D 00:BF2D: 10 FB     BPL bra_BF2A_infinite_loop
bra_BF2F_infinite_loop:
- - - - - - 0x003F3F 00:BF2F: 2C 02 20  BIT $2002
- - - - - - 0x003F42 00:BF32: 30 FB     BMI bra_BF2F_infinite_loop
- - - - - - 0x003F44 00:BF34: A9 80     LDA #$80
- - - - - - 0x003F46 00:BF36: 8D 00 A0  STA $A000
- - - - - - 0x003F49 00:BF39: 8D 00 C0  STA $C000
- - - - - - 0x003F4C 00:BF3C: 8D 00 E0  STA $E000
- - - - - - 0x003F4F 00:BF3F: A9 80     LDA #$80
- - - - - - 0x003F51 00:BF41: 8D 00 80  STA $8000
- - - - - - 0x003F54 00:BF44: A9 1E     LDA #$1E
- - - - - - 0x003F56 00:BF46: 8D 00 80  STA $8000
- - - - - - 0x003F59 00:BF49: 4A        LSR
- - - - - - 0x003F5A 00:BF4A: 8D 00 80  STA $8000
- - - - - - 0x003F5D 00:BF4D: 4A        LSR
- - - - - - 0x003F5E 00:BF4E: 8D 00 80  STA $8000
- - - - - - 0x003F61 00:BF51: 4A        LSR
- - - - - - 0x003F62 00:BF52: 8D 00 80  STA $8000
- - - - - - 0x003F65 00:BF55: 4A        LSR
- - - - - - 0x003F66 00:BF56: 8D 00 80  STA $8000
- - - - - - 0x003F69 00:BF59: A9 80     LDA #$80
- - - - - - 0x003F6B 00:BF5B: 8D 00 E0  STA $E000
- - - - - - 0x003F6E 00:BF5E: A9 07     LDA #$07
- - - - - - 0x003F70 00:BF60: 8D 00 E0  STA $E000
- - - - - - 0x003F73 00:BF63: 4A        LSR
- - - - - - 0x003F74 00:BF64: 8D 00 E0  STA $E000
- - - - - - 0x003F77 00:BF67: 4A        LSR
- - - - - - 0x003F78 00:BF68: 8D 00 E0  STA $E000
- - - - - - 0x003F7B 00:BF6B: 4A        LSR
- - - - - - 0x003F7C 00:BF6C: 8D 00 E0  STA $E000
- - - - - - 0x003F7F 00:BF6F: 4A        LSR
- - - - - - 0x003F80 00:BF70: 8D 00 E0  STA $E000
- - - - - - 0x003F83 00:BF73: A9 80     LDA #$80
- - - - - - 0x003F85 00:BF75: 8D 00 80  STA $8000
- - - - - - 0x003F88 00:BF78: A9 1A     LDA #$1A
- - - - - - 0x003F8A 00:BF7A: 8D 00 80  STA $8000
- - - - - - 0x003F8D 00:BF7D: 4A        LSR
- - - - - - 0x003F8E 00:BF7E: 8D 00 80  STA $8000
- - - - - - 0x003F91 00:BF81: 4A        LSR
- - - - - - 0x003F92 00:BF82: 8D 00 80  STA $8000
- - - - - - 0x003F95 00:BF85: 4A        LSR
- - - - - - 0x003F96 00:BF86: 8D 00 80  STA $8000
- - - - - - 0x003F99 00:BF89: 4A        LSR
- - - - - - 0x003F9A 00:BF8A: 8D 00 80  STA $8000
- - - - - - 0x003F9D 00:BF8D: A9 80     LDA #$80
- - - - - - 0x003F9F 00:BF8F: 8D 00 E0  STA $E000
- - - - - - 0x003FA2 00:BF92: A9 02     LDA #$02
- - - - - - 0x003FA4 00:BF94: 8D 00 E0  STA $E000
- - - - - - 0x003FA7 00:BF97: 4A        LSR
- - - - - - 0x003FA8 00:BF98: 8D 00 E0  STA $E000
- - - - - - 0x003FAB 00:BF9B: 4A        LSR
- - - - - - 0x003FAC 00:BF9C: 8D 00 E0  STA $E000
- - - - - - 0x003FAF 00:BF9F: 4A        LSR
- - - - - - 0x003FB0 00:BFA0: 8D 00 E0  STA $E000
- - - - - - 0x003FB3 00:BFA3: 4A        LSR
- - - - - - 0x003FB4 00:BFA4: 8D 00 E0  STA $E000
- - - - - - 0x003FB7 00:BFA7: 4C 00 C0  JMP loc_0x01C010



vec_inc_0x003FBA_NMI:
- - - - - - 0x003FBA 00:BFAA: 48        PHA
- - - - - - 0x003FBB 00:BFAB: AD 02 20  LDA $2002
- - - - - - 0x003FBE 00:BFAE: 68        PLA
vec_inc_0x003FBF_IRQ:
- - - - - - 0x003FBF 00:BFAF: 40        RTI


; bzk garbage
- - - - - - 0x003FC0 00:BFB0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x003FD0 00:BFC0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x003FE0 00:BFD0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x003FF0 00:BFE0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x004000 00:BFF0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 