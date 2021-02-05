.include "nes.inc"
.include "zelda.inc"

;Program ROM Bank 3
.segment "PRG_3"
	.incbin "zelda_base.nes", $C010, $4000
