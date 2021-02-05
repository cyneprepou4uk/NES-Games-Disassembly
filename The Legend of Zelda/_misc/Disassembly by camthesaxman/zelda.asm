.include "nes.inc"
.include "zelda.inc"

;iNES header data
.segment "INESHDR"
	.byte "NES",$1A		; magic signature - Identify ourselves as a NES ROM.
	.byte $8			; number of 16kB banks - 8 of them.
	.byte $0			; number of 8kB VROM banks - LoZ does not use VROM.
	.byte $12, $0		; mapper type -  vertical mirroring, battery backed RAM

;Zero page
.segment "ZEROPAGE"
	local0:	.res 1
	.exportzp local0
	local1:	.res 1
	.exportzp local1
	local2:	.res 1
	.exportzp local2
	local3:	.res 1
	.exportzp local3
	local4:	.res 1
	.exportzp local4
	local5:	.res 1
	.exportzp local5
	.org $66
	musicData: .res 2	;0x66
	.exportzp musicData
	.org $E0
	gamePaused: .res 1
	.exportzp gamePaused
	.org $FE
	ppuMaskVal: .res 1
	.exportzp ppuMaskVal	;0xFE
	ppuCtrlVal: .res 1
	.exportzp ppuCtrlVal	;0xFF
	
.segment "WRAM"
	.org $600
	musicRequest: .res 1
	.export musicRequest
	unknown601: .res 1
	musicEffectRequest: .res 1
	.export musicEffectRequest
	unknown603: .res 1
	soundEffectRequest: .res 1
	.export soundEffectRequest
	currentSoundEffect: .res 1
	.export currentSoundEffect
	unknown606: .res 1
	currentMusicEffect: .res 1
	.export currentMusicEffect
	unknown608: .res 1
	currentMusic: .res 1
	.export currentMusic
	musicOffsetVoiceA: .res 1
	.export musicOffsetVoiceA
	musicOffsetVoiceB: .res 1
	.export musicOffsetVoiceB
	musicOffsetVoiceC: .res 1
	.export musicOffsetVoiceC
	musicOffsetVoiceD: .res 1
	.export musicOffsetVoiceD
	.org $610
	noteDuration: .res 1
	.export noteDuration
	musicTimer:	.res 1
	.export musicTimer
	
