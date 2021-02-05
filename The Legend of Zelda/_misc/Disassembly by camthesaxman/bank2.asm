.include "nes.inc"
.include "zelda.inc"

;Program ROM Bank 2
.segment "PRG_2"
	.incbin "zelda_base.nes", $8010, $4000
