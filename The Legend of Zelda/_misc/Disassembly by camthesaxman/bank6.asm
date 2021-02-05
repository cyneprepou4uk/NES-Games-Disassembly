.include "nes.inc"
.include "zelda.inc"

;Program ROM Bank 6
.segment "PRG_6"
	.incbin "zelda_base.nes", $18010, $4000
