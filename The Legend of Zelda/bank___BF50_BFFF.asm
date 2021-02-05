; content was copied from bank_00.asm
; it's a common identical include file for banks 00-06
; should be placed at the same address in all files (currently BF50)

; that's because of MMC1 stuff, read here about this
; https://wiki.nesdev.com/w/index.php/MMC1#Control_.28internal.2C_.248000-.249FFF.29



; most of this code is currently garbage and can be deleted (except jumps from SRAM, see exports)
; bzk recommended to delete all this shit and repoint SRAM jumps to bank_FF (see duplicates below)



; assembler doesn't require these exports (for now at least) as long as
; bank_s2.asm and bank_BF50_BFFF.asm are both included in bank_01.asm

; .export sub_inc_0x003FA8_set_control_register
; .export sub_inc_0x003FBC_prg_bankswitch
; .export loc_inc_0x003FBC_prg_bankswitch



; bzk garbage
ofs_BF50_RESET:
- - - - - - 0x003F60 00:BF50: 78        SEI
- - - - - - 0x003F61 00:BF51: D8        CLD
- - - - - - 0x003F62 00:BF52: A9 00     LDA #$00
- - - - - - 0x003F64 00:BF54: 8D 00 20  STA $2000
- - - - - - 0x003F67 00:BF57: A2 FF     LDX #$FF
- - - - - - 0x003F69 00:BF59: 9A        TXS
bra_BF5A_loop:
- - - - - - 0x003F6A 00:BF5A: AD 02 20  LDA $2002
- - - - - - 0x003F6D 00:BF5D: 29 80     AND #$80
- - - - - - 0x003F6F 00:BF5F: F0 F9     BEQ bra_BF5A_loop
bra_BF61_loop:
- - - - - - 0x003F71 00:BF61: AD 02 20  LDA $2002
- - - - - - 0x003F74 00:BF64: 29 80     AND #$80
- - - - - - 0x003F76 00:BF66: F0 F9     BEQ bra_BF61_loop
- - - - - - 0x003F78 00:BF68: 09 FF     ORA #$FF
- - - - - - 0x003F7A 00:BF6A: 8D 00 80  STA $8000
- - - - - - 0x003F7D 00:BF6D: 8D 00 A0  STA $A000
- - - - - - 0x003F80 00:BF70: 8D 00 C0  STA $C000
- - - - - - 0x003F83 00:BF73: 8D 00 E0  STA $E000
- - - - - - 0x003F86 00:BF76: A9 0F     LDA #$0F
- - - - - - 0x003F88 00:BF78: 20 98 BF  JSR sub_BF98_set_control_register
- - - - - - 0x003F8B 00:BF7B: A9 00     LDA #$00
- - - - - - 0x003F8D 00:BF7D: 8D 00 A0  STA $A000
- - - - - - 0x003F90 00:BF80: 4A        LSR
- - - - - - 0x003F91 00:BF81: 8D 00 A0  STA $A000
- - - - - - 0x003F94 00:BF84: 4A        LSR
- - - - - - 0x003F95 00:BF85: 8D 00 A0  STA $A000
- - - - - - 0x003F98 00:BF88: 4A        LSR
- - - - - - 0x003F99 00:BF89: 8D 00 A0  STA $A000
- - - - - - 0x003F9C 00:BF8C: 4A        LSR
- - - - - - 0x003F9D 00:BF8D: 8D 00 A0  STA $A000
- - - - - - 0x003FA0 00:BF90: A9 07     LDA #$07
- - - - - - 0x003FA2 00:BF92: 20 AC BF  JSR sub_BFAC_prg_bankswitch
- - - - - - 0x003FA5 00:BF95: 4C 40 E4  JMP loc_0x01E450



sub_BF98_set_control_register:
sub_inc_0x003FA8_set_control_register:
; same code as 0x01FFA8
- - - - - - 0x003FA8 00:BF98: 8D 00 80  STA $8000
- - - - - - 0x003FAB 00:BF9B: 4A        LSR
- - - - - - 0x003FAC 00:BF9C: 8D 00 80  STA $8000
- - - - - - 0x003FAF 00:BF9F: 4A        LSR
- - - - - - 0x003FB0 00:BFA0: 8D 00 80  STA $8000
- - - - - - 0x003FB3 00:BFA3: 4A        LSR
- - - - - - 0x003FB4 00:BFA4: 8D 00 80  STA $8000
- - - - - - 0x003FB7 00:BFA7: 4A        LSR
- - - - - - 0x003FB8 00:BFA8: 8D 00 80  STA $8000
- - - - - - 0x003FBB 00:BFAB: 60        RTS



sub_BFAC_prg_bankswitch:
sub_inc_0x003FBC_prg_bankswitch:
loc_inc_0x003FBC_prg_bankswitch:
; same code as 0x01FFBC
- - - - - - 0x003FBC 00:BFAC: 8D 00 E0  STA $E000
- - - - - - 0x003FBF 00:BFAF: 4A        LSR
- - - - - - 0x003FC0 00:BFB0: 8D 00 E0  STA $E000
- - - - - - 0x003FC3 00:BFB3: 4A        LSR
- - - - - - 0x003FC4 00:BFB4: 8D 00 E0  STA $E000
- - - - - - 0x003FC7 00:BFB7: 4A        LSR
- - - - - - 0x003FC8 00:BFB8: 8D 00 E0  STA $E000
- - - - - - 0x003FCB 00:BFBB: 4A        LSR
- - - - - - 0x003FCC 00:BFBC: 8D 00 E0  STA $E000
- - - - - - 0x003FCF 00:BFBF: 60        RTS


; bzk garbage
- - - - - - 0x003FD0 00:BFC0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003FD8 00:BFC8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003FE0 00:BFD0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003FE8 00:BFD8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003FF0 00:BFE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003FF8 00:BFE8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x004000 00:BFF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x004008 00:BFF8: FF        .byte $FF, $FF   ; 


; vectors
; bzk garbage
- - - - - - 0x00400A 00:BFFA: 84 E4     .word vec_0x01E494_NMI
- - - - - - 0x00400C 00:BFFC: 50 BF     .word ofs_BF50_RESET
- - - - - - 0x00400E 00:BFFE: F0 BF     .word $BFF0
