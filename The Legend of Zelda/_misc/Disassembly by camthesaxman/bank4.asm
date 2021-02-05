.include "nes.inc"
.include "zelda.inc"

;Program ROM Bank 4
.segment "PRG_4"
	.incbin "zelda_base.nes", $10010, $4000
