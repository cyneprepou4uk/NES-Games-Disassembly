.segment "BANK_00"
.include "bank_ram.inc"
.include "bank_val.inc"
; 0x000010-0x00400F

; bzk keep stages data starting from 8000
; data is read via 0x00C46F, bank is selected via 0x00C6B6
    .incbin "stages/stage_00.bin"
    .incbin "stages/stage_01.bin"
    .incbin "stages/stage_02.bin"
    .incbin "stages/stage_03.bin"
    .incbin "stages/stage_04.bin"
    .incbin "stages/stage_05.bin"
    .incbin "stages/stage_06.bin"
    .incbin "stages/stage_07.bin"
    .incbin "stages/stage_08.bin"
    .incbin "stages/stage_09.bin"
    .incbin "stages/stage_0A.bin"
    .incbin "stages/stage_0B.bin"
    .incbin "stages/stage_0C.bin"
    .incbin "stages/stage_0D.bin"
    .incbin "stages/stage_0E.bin"
    .incbin "stages/stage_0F.bin"
    .incbin "stages/stage_10.bin"
    .incbin "stages/stage_11.bin"
    .incbin "stages/stage_12.bin"
    .incbin "stages/stage_13.bin"
    .incbin "stages/stage_14.bin"
    .incbin "stages/stage_15.bin"
    .incbin "stages/stage_16.bin"
    .incbin "stages/stage_17.bin"
    .incbin "stages/stage_18.bin"
    .incbin "stages/stage_19.bin"
    .incbin "stages/stage_1A.bin"
    .incbin "stages/stage_1B.bin"
    .incbin "stages/stage_1C.bin"
    .incbin "stages/stage_1D.bin"
    .incbin "stages/stage_1E.bin"
    .incbin "stages/stage_1F.bin"



; bzk garbage
- - - - - - 0x003C10 00:BC00: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003C18 00:BC08: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003C20 00:BC10: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003C28 00:BC18: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003C30 00:BC20: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003C38 00:BC28: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003C40 00:BC30: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003C48 00:BC38: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003C50 00:BC40: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003C58 00:BC48: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003C60 00:BC50: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003C68 00:BC58: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003C70 00:BC60: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003C78 00:BC68: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003C80 00:BC70: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003C88 00:BC78: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003C90 00:BC80: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003C98 00:BC88: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003CA0 00:BC90: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003CA8 00:BC98: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003CB0 00:BCA0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003CB8 00:BCA8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003CC0 00:BCB0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003CC8 00:BCB8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003CD0 00:BCC0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003CD8 00:BCC8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003CE0 00:BCD0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003CE8 00:BCD8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003CF0 00:BCE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003CF8 00:BCE8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003D00 00:BCF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003D08 00:BCF8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003D10 00:BD00: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003D18 00:BD08: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003D20 00:BD10: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003D28 00:BD18: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003D30 00:BD20: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003D38 00:BD28: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003D40 00:BD30: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003D48 00:BD38: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003D50 00:BD40: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003D58 00:BD48: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003D60 00:BD50: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003D68 00:BD58: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003D70 00:BD60: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003D78 00:BD68: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003D80 00:BD70: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003D88 00:BD78: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003D90 00:BD80: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003D98 00:BD88: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003DA0 00:BD90: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003DA8 00:BD98: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003DB0 00:BDA0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003DB8 00:BDA8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003DC0 00:BDB0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003DC8 00:BDB8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003DD0 00:BDC0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003DD8 00:BDC8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003DE0 00:BDD0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003DE8 00:BDD8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003DF0 00:BDE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003DF8 00:BDE8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003E00 00:BDF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003E08 00:BDF8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003E10 00:BE00: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003E18 00:BE08: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003E20 00:BE10: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003E28 00:BE18: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003E30 00:BE20: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003E38 00:BE28: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003E40 00:BE30: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003E48 00:BE38: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003E50 00:BE40: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003E58 00:BE48: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003E60 00:BE50: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003E68 00:BE58: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003E70 00:BE60: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003E78 00:BE68: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003E80 00:BE70: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003E88 00:BE78: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003E90 00:BE80: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003E98 00:BE88: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003EA0 00:BE90: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003EA8 00:BE98: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003EB0 00:BEA0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003EB8 00:BEA8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003EC0 00:BEB0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003EC8 00:BEB8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003ED0 00:BEC0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003ED8 00:BEC8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003EE0 00:BED0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003EE8 00:BED8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003EF0 00:BEE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003EF8 00:BEE8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003F00 00:BEF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003F08 00:BEF8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003F10 00:BF00: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003F18 00:BF08: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003F20 00:BF10: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003F28 00:BF18: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003F30 00:BF20: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003F38 00:BF28: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003F40 00:BF30: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003F48 00:BF38: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003F50 00:BF40: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003F58 00:BF48: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003F60 00:BF50: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003F68 00:BF58: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003F70 00:BF60: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003F78 00:BF68: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003F80 00:BF70: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003F88 00:BF78: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003F90 00:BF80: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003F98 00:BF88: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003FA0 00:BF90: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003FA8 00:BF98: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003FB0 00:BFA0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003FB8 00:BFA8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003FC0 00:BFB0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003FC8 00:BFB8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003FD0 00:BFC0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003FD8 00:BFC8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003FE0 00:BFD0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003FE8 00:BFD8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003FF0 00:BFE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003FF8 00:BFE8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x004000 00:BFF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x004008 00:BFF8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 



