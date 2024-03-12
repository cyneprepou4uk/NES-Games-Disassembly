.segment "BANK_03"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
.org $8000  ; for listing file
; 0x00C010-0x01000F



; !!! bzk low byte of all chr pointers must be 00
; if you want to read a custom low byte, deal with 0x01C2AC



.export off_0x00C010_chr
.export off_0x00C410_chr
.export off_0x00D010_chr
.export off_0x00DC10_chr
.export off_0x00E810_chr
.export off_0x00F410_chr
.export off_0x00F810_chr
.export off_0x00FF10_chr



off_0x00C010_chr:   ; reading up to 9FFF
    .incbin "incbin/chr/03___8000_83FF.chr"
off_0x00C410_chr:   ; reading up to 87FF only
    .incbin "incbin/chr/03___8400_8FFF.chr"
off_0x00D010_chr:   ; reading up to 93FF/9BFF
    .incbin "incbin/chr/03___9000_9BFF.chr"
off_0x00DC10_chr:   ; reading up to 9FFF/A7FF
    .incbin "incbin/chr/03___9C00_A7FF.chr"



off_0x00E810_chr:   ; sometimes reading up to ABFF only
    .incbin "incbin/chr/03___A800_B3FF.chr"



off_0x00F410_chr:   ; sometimes reading up to B7FF only
    .incbin "incbin/chr/03___B400_B7FF.chr"
off_0x00F810_chr:   ; reading up to BBFF/BFFF
    .incbin "incbin/chr/03___B800_BEFF.chr"
off_0x00FF10_chr:
    .incbin "incbin/chr/03___BF00_BFFF.chr"



.out .sprintf("Free bytes in bank 03: 0x%04X [%d]", ($C000 - *), ($C000 - *))



