.segment "BANK_02"
.include "bank_ram.inc"
.include "bank_val.inc"
.org $8000  ; for listing file
; 0x008010-0x00C00F



; !!! bzk low byte of all chr pointers must be 00
; if you want to read a custom low byte, deal with 0x01C2AC



.export off_0x008010_chr
.export off_0x008C10_chr
.export off_0x008D10_chr
.export off_0x008E10_chr
.export off_0x008F10_chr
.export off_0x009010_chr
.export off_0x009110_chr
.export off_0x009410_chr
.export off_0x009610_chr
.export off_0x009810_chr
.export off_0x009910_chr
.export off_0x009C10_chr
.export off_0x009D10_chr
.export off_0x009F10_chr
.export off_0x00A010_chr
.export off_0x00A210_chr
.export off_0x00A310_chr
.export off_0x00A510_chr
.export off_0x00A810_chr
.export off_0x00A910_chr
.export off_0x00AC10_chr
.export off_0x00AE10_chr
.export off_0x00B010_chr
.export off_0x00B110_chr
.export off_0x00B210_chr
.export off_0x00B310_chr
.export off_0x00B410_chr
.export off_0x00B510_chr
.export off_0x00B610_chr
.export off_0x00B710_chr
.export off_0x00B810_chr
.export off_0x00BB10_chr
.export off_0x00BE10_chr
.export off_0x00BF10_chr



off_0x008010_chr:
    .incbin "incbin/chr/02___8000_8BFF.chr"



off_0x008C10_chr:
    .incbin "incbin/chr/02___8C00_8CFF.chr"



off_0x008D10_chr:
    .incbin "incbin/chr/02___8D00_8DFF.chr"



off_0x008E10_chr:
    .incbin "incbin/chr/02___8E00_8EFF.chr"



off_0x008F10_chr:
    .incbin "incbin/chr/02___8F00_8FFF.chr"



off_0x009010_chr:   ; reading up to 93FF
    .incbin "incbin/chr/02___9000_90FF.chr"
off_0x009110_chr:   ; reading up to 91FF only
    .incbin "incbin/chr/02___9100_93FF.chr"



off_0x009410_chr:   ; reading up to 97FF
    .incbin "incbin/chr/02___9400_95FF.chr"
off_0x009610_chr:   ; reading up to 96FF/97FF
    .incbin "incbin/chr/02___9600_97FF.chr"



off_0x009810_chr:
    .incbin "incbin/chr/02___9800_98FF.chr"



off_0x009910_chr:   ; reading up to 99FF/9BFF
    .incbin "incbin/chr/02___9900_9BFF.chr"



off_0x009C10_chr:
    .incbin "incbin/chr/02___9C00_9CFF.chr"



off_0x009D10_chr:   ; reading up to 9FFF
    .incbin "incbin/chr/02___9D00_9EFF.chr"
off_0x009F10_chr:
    .incbin "incbin/chr/02___9F00_9FFF.chr"



off_0x00A010_chr:
    .incbin "incbin/chr/02___A000_A1FF.chr"



off_0x00A210_chr:
    .incbin "incbin/chr/02___A200_A2FF.chr"



off_0x00A310_chr:
    .incbin "incbin/chr/02___A300_A3FF.chr"


; bzk garbage, unused tiles, safe to delete
    .incbin "incbin/chr/02___A400_A4FF.chr"



off_0x00A510_chr:
    .incbin "incbin/chr/02___A500_A7FF.chr"



off_0x00A810_chr:   ; reading up to ABFF
    .incbin "incbin/chr/02___A800_A8FF.chr"
off_0x00A910_chr:
    .incbin "incbin/chr/02___A900_ABFF.chr"



off_0x00AC10_chr:   ; reading up to AFFF
    .incbin "incbin/chr/02___AC00_ADFF.chr"
off_0x00AE10_chr:
    .incbin "incbin/chr/02___AE00_AFFF.chr"



off_0x00B010_chr:   ; reading up to B0FF/B3FF
    .incbin "incbin/chr/02___B000_B0FF.chr"
off_0x00B110_chr:
    .incbin "incbin/chr/02___B100_B1FF.chr"
off_0x00B210_chr:
    .incbin "incbin/chr/02___B200_B2FF.chr"
off_0x00B310_chr:
    .incbin "incbin/chr/02___B300_B3FF.chr"



off_0x00B410_chr:   ; reading up to B7FF
    .incbin "incbin/chr/02___B400_B4FF.chr"
off_0x00B510_chr:
    .incbin "incbin/chr/02___B500_B5FF.chr"
off_0x00B610_chr:
    .incbin "incbin/chr/02___B600_B6FF.chr"
off_0x00B710_chr:
    .incbin "incbin/chr/02___B700_B7FF.chr"



off_0x00B810_chr:   ; reading up to BFFF
    .incbin "incbin/chr/02___B800_BAFF.chr"
off_0x00BB10_chr:   ; reading up to BBFF only
    .incbin "incbin/chr/02___BB00_BDFF.chr"
off_0x00BE10_chr:
    .incbin "incbin/chr/02___BE00_BEFF.chr"
off_0x00BF10_chr:
    .incbin "incbin/chr/02___BF00_BFFF.chr"



