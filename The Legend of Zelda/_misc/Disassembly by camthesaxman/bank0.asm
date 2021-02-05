.include "nes.inc"
.include "zelda.inc"
.include "notes.inc"
.include "songs.inc"

;Program ROM Bank 0
.segment "PRG_0"

;9825
.proc process_audio
.export process_audio
		LDA gamePaused
		BEQ lbl_9835
		LDA #$00		;Silence all channels
		STA APU_CHANCTRL
		LDA #$0F
		STA APU_CHANCTRL
		BNE lbl_9846
	lbl_9835:
		LDA #$FF
		STA $4017
		JSR process_music_effect
		JSR sub_99a0
		JSR sub_9b85
		JSR process_music
	lbl_9846:
		JSR process_sound_effect
		LDA #$00
		STA $0604
		STA $0603
		STA $0602
		STA $0601
		STA $0600
		RTS
.endproc
	
.byte $1C
.byte $4C
.byte $27
.byte $5C
.byte $46
.byte $67
.byte $07
.byte $95
.byte $50
.byte $08
.byte $08
.byte $08
.byte $08
.byte $08
.byte $90
.byte $08
.byte $08
.byte $08
.byte $08
.byte $08
.byte $08
.byte $08
.byte $08
.byte $08
.byte $08
.byte $08
.byte $08
.byte $00
.byte $82
.byte $4A
.byte $48
.byte $4A
.byte $08
.byte $08
.byte $08
.byte $08
.byte $08
.byte $08
.byte $00
.byte $9F
.byte $1E
.byte $22
.byte $24
.byte $26
.byte $9F
.byte $28
.byte $2A
.byte $2C
.byte $2E
.byte $9A
.byte $28
.byte $2A
.byte $2C
.byte $2E
.byte $9C
.byte $28
.byte $2A
.byte $2C
.byte $2E
.byte $96
.byte $28
.byte $2A
.byte $2C
.byte $2E
.byte $98
.byte $28
.byte $2A
.byte $2C
.byte $2E
.byte $00
.byte $99
.byte $42
.byte $4A
.byte $50
.byte $54
.byte $00
.byte $99
.byte $70
.byte $0A
.byte $70
.byte $0E
.byte $70
.byte $10
.byte $9F
.byte $70
.byte $2A
.byte $12
.byte $1E
.byte $2A
.byte $70
.byte $1E
.byte $00
.byte $9A
.byte $42
.byte $08
.byte $08
.byte $56
.byte $08
.byte $08
.byte $00
.byte $08
.byte $08
.byte $00
.byte $9F
.byte $40
.byte $30
.byte $40
.byte $3A
.byte $28
.byte $00
lbl_98c9:
	JMP sub_9d46
process_sound_effect:
	LDA soundEffectRequest
	BMI lbl_98c9
	BEQ lbl_98dc
	CMP #$40
	BNE lbl_98e2
	LDX $0605
	BEQ lbl_98e2
lbl_98dc:
	LDA $0605
	BNE lbl_98f1
	RTS
lbl_98e2:
	STA $0605
	LDY #$00
lbl_98e7:
	INY
	LSR
	BCC lbl_98e7
	LDA $985A,Y
	STA $060E
lbl_98f1:
	LDY $060E
	INC $060E
	LDA $985B,Y
	BMI lbl_9911
	BNE lbl_991d
	LDX #$90
	STX APU_PULSE1CTRL
	LDX #$18
	STX $4003
	LDX #$00
	STX APU_PULSE1FTUNE
	STX $0605
	RTS
lbl_9911:
	STA APU_PULSE1CTRL
	LDY $060E
	INC $060E
	LDA $985B,Y
lbl_991d:
	JSR sub_9c0d
	LDA #$7F
	STA APU_PULSE1RAMP
	RTS
lbl_9926:
	LDA #$0F
	STA APU_CHANCTRL
	LDA #$00
	STA $0608
	STA currentMusicEffect
	STA $061A
	STA $05F6
	RTS
lbl_993a:
	STY $0606
	LDA #$05
	STA $69
	LDA $0604
	AND #$EF
	BNE lbl_994b
	STA $0604
lbl_994b:
	LDY $69
	LDA $9FBB,Y
	BNE lbl_996e
lbl_9952:
	STY $0606
	LDA #$38
	STA $69
lbl_9959:
	LDA #$0D
	STA $68
lbl_995d:
	DEC $68
	LDY $68
	BEQ lbl_9959
	CPY #$07
	BCC lbl_996b
	LDA #$10
	BNE lbl_997b
lbl_996b:
	LDA $9EF8,Y
lbl_996e:
	TAX
	AND #$0F
	STA APU_NOISEFREQ1
	TXA
	LSR
	LSR
	LSR
	LSR
	ORA #$10
lbl_997b:
	STA APU_NOISECTRL
	LDA #$08
	STA APU_NOISEFREQ2
	DEC $69
lbl_9985:
	BNE lbl_9991
	LDA #$F0
	STA APU_NOISECTRL
	LDA #$00
	STA $0606
lbl_9991:
	RTS
lbl_9992:
	STY $0606
	LDA #$0A
	STA $69
lbl_9999:
	LDY $69
	LDA $9FB1,Y
	BNE lbl_996e
sub_99a0:
	LDY $0603
	BMI lbl_9926
	LDA $0606
	LSR $0603
	BCS lbl_9992
	LSR
	BCS lbl_9999
	LSR $0603
	BCS lbl_993a
	LSR
	BCS lbl_994b
	LSR $0603
	BCS lbl_99e7
	LSR
	BCS lbl_99ee
	LSR $0603
	BCS lbl_9952
	LSR
	BCS lbl_995d
	LSR $0603
	BCS lbl_99d9
	LSR
	BCS lbl_99e0
	LSR
	BCS lbl_9a09
	LSR $0603
	BCS lbl_99fd
	RTS
lbl_99d9:
	STY $0606
	LDA #$18
	STA $69
lbl_99e0:
	LDY $69
	LDA $9A3C,Y
	BNE lbl_996e
lbl_99e7:
	STY $0606
	LDA #$20
	STA $69
lbl_99ee:
	LDA $69
	LSR
	TAY
	LDX #$0E
	STX APU_NOISEFREQ1
	LDA $9FC0,Y
	JMP lbl_997b
lbl_99fd:
	STY $0606
	LDA #$D0
	STA $05F3
	LDA #$10
	STA $68
lbl_9a09:
	LDA $05F3
	CMP #$BF
	BCC lbl_9a14
	INC $68
	BNE lbl_9a28
lbl_9a14:
	LDA $05F3
	LSR
	BCC lbl_9a28
	LSR
	BCC lbl_9a28
	LSR
	BCC lbl_9a28
	LDA $68
	CMP #$10
	BEQ lbl_9a28
	DEC $68
lbl_9a28:
	LDA $68
	STA APU_NOISECTRL
	LDX #$03
	STX APU_NOISEFREQ1
	LDA #$08
	STA APU_NOISEFREQ2
	DEC $05F3
	JMP lbl_9985
.byte $1F
.byte $2F
.byte $2E
.byte $3F
.byte $3F
.byte $4C
.byte $4E
.byte $5F
.byte $6F
.byte $6F
.byte $7E
.byte $8F
.byte $9E
.byte $AF
.byte $BE
.byte $CF
.byte $DE
.byte $EF
.byte $FE
.byte $FD
.byte $FE
.byte $FF
.byte $FF
.byte $FE
.byte $0C
.byte $08
.byte $11
.byte $1C
.byte $28
.byte $33
.byte $40
.byte $62
.byte $8A
.byte $4E
.byte $58
.byte $60
.byte $8A
.byte $5E
.byte $94
.byte $60
.byte $00
.byte $8A
.byte $42
.byte $06
.byte $3C
.byte $30
.byte $2E
.byte $3E
.byte $44
.byte $CC
.byte $02
.byte $00
.byte $83
.byte $40
.byte $42
.byte $48
.byte $4A
.byte $02
.byte $50
.byte $4C
.byte $54
.byte $94
.byte $56
.byte $00
.byte $94
.byte $3A
.byte $3E
.byte $A8
.byte $50
.byte $8A
.byte $4E
.byte $02
.byte $CC
.byte $4A
.byte $00
.byte $81
.byte $28
.byte $3E
.byte $24
.byte $82
.byte $3A
.byte $81
.byte $16
.byte $30
.byte $1A
.byte $82
.byte $34
.byte $00
.byte $94
.byte $56
.byte $42
.byte $02
.byte $4C
.byte $52
.byte $42
.byte $5C
.byte $4A
.byte $5A
.byte $02
.byte $4C
.byte $5A
.byte $56
.byte $02
.byte $50
.byte $4C
.byte $5A
.byte $02
.byte $54
.byte $5A
.byte $58
.byte $02
.byte $50
.byte $54
.byte $4C
.byte $42
.byte $02
.byte $4C
.byte $50
.byte $48
.byte $4A
.byte $50
.byte $00
.byte $8A
.byte $08
.byte $08
.byte $08
.byte $85
.byte $3C
.byte $3A
.byte $38
.byte $36
.byte $3A
.byte $38
.byte $36
.byte $34
.byte $38
.byte $36
.byte $34
.byte $32
.byte $36
.byte $34
.byte $32
.byte $30
.byte $34
.byte $32
.byte $30
.byte $2E
.byte $2A
.byte $28
.byte $A8
.byte $26
.byte $00
process_music_effect:
	LDA musicEffectRequest
	BMI lbl_9ae2
	BNE lbl_9ae7
	LDA currentMusicEffect
	BNE lbl_9afa
	RTS
lbl_9ae2:
	JSR sub_9d46
	LDA #$80
lbl_9ae7:
	STA currentMusicEffect
	LDY #$00
lbl_9aec:
	INY
	LSR
	BCC lbl_9aec
	LDA $9A54,Y
	STA $0618
	LDA #$01
	STA $6F
lbl_9afa:
	DEC $6F
	BNE lbl_9b47
	LDY $0618
	INC $0618
	LDA $9A55,Y
	BMI lbl_9b25
	BNE lbl_9b32
	LDA currentMusicEffect
	CMP #$40
	BEQ lbl_9ae7
	LDX #$90
	STX APU_PULSE2CTRL
	LDX #$18
	STX APU_PULSE2STUNE
	LDX #$00
	STX currentMusicEffect
	STX APU_PULSE2FTUNE
	RTS
lbl_9b25:
	AND #$7F
	STA $6E
	LDY $0618
	INC $0618
	LDA $9A55,Y
lbl_9b32:
	JSR sub_9c2b
	LDA #$7F
	STA APU_PULSE2RAMP
	LDA #$86
	STA APU_PULSE2CTRL
	LDA $6E
	STA $6F
	LDA #$1F
	STA $6D
lbl_9b47:
	LDA currentMusicEffect
	AND #$90
	BEQ lbl_9b64
	LDY $6D
	BEQ lbl_9b54
	DEC $6D
lbl_9b54:
	LDA $9B65,Y
	STA APU_PULSE2CTRL
	LDA $6F
	LDX $6B
	JSR sub_9c54
	STX APU_PULSE2FTUNE
lbl_9b64:
	RTS
.byte $95
.byte $96
.byte $97
.byte $98
.byte $99
.byte $9A
.byte $9B
.byte $9C
.byte $9D
.byte $9E
.byte $9F
.byte $9F
.byte $9F
.byte $9F
.byte $9F
.byte $9F
.byte $9F
.byte $9F
.byte $9F
.byte $9F
.byte $9F
.byte $9F
.byte $9F
.byte $9E
.byte $9D
.byte $9C
.byte $9B
.byte $9A
.byte $99
.byte $98
.byte $97
.byte $96

.proc sub_9b85
		LDA $0601
		BMI lbl_9bb3
		BNE lbl_9baf
		LDA $0608
		BEQ lbl_9ba9
		DEC $05F2
		BNE return
		LDA $0608
		BMI lbl_9bb3
		AND #$70
		BNE lbl_9baf
		LDA #$00
		STA $0608
		LDA #$0F
		STA APU_CHANCTRL
	lbl_9ba9:
		LDA $05F6
		BNE lbl_9bb7
	return:
		RTS
	lbl_9baf:
		LDX #$00
		BEQ lbl_9bb7
	lbl_9bb3:
		LDX #$7F
		AND #$F0
	lbl_9bb7:
		STX APU_MODDA
		STA $0608
		TAX
		AND #$F0
		BEQ lbl_9bc5
		STA $05F6
	lbl_9bc5:
		TXA
		LDY #$00
	lbl_9bc8:
		INY
		LSR
		BCC lbl_9bc8
		LDA $9BFB,Y
		STA APU_MODCTRL
		LDA $9BED,Y
		STA APU_MODADDR
		LDA $9BF4,Y
		STA APU_MODLEN
		LDA #$A0
		STA $05F2
		LDA #$0F
		STA APU_CHANCTRL
		LDA #$1F
		STA APU_CHANCTRL
		RTS
.endproc

.byte $00
.byte $4C
.byte $80
.byte $1D
.byte $20
.byte $28
.byte $4C
.byte $75
.byte $C0
.byte $40
.byte $0A
.byte $B0
.byte $90
.byte $D0
.byte $0F
.byte $0F
.byte $0D
.byte $0F
.byte $0E
.byte $0F
.byte $0E

.proc sub_9c03
		STY APU_PULSE1RAMP
		STX APU_PULSE1CTRL
		RTS
.endproc

.byte $20
.byte $03
.byte $9C
sub_9c0d:
	TAY
	LDA $9F01,Y
	BEQ lbl_9c20
	STA $6A
	STA APU_PULSE1FTUNE
	LDA noteTable,Y
	ORA #$08
	STA $4003
lbl_9c20:
	RTS
	
.proc sub_9c21
		STX APU_PULSE2CTRL
		STY APU_PULSE2RAMP
		RTS
.endproc

.byte $20
.byte $21
.byte $9C

.proc sub_9c2b
		TAY
		LDA $9F01,Y
		BEQ lbl_9c20
		STA $6B
		STA APU_PULSE2FTUNE
		LDA noteTable,Y
		ORA #$08
		STA APU_PULSE2STUNE
		RTS
.endproc

.proc sub_9c3f
		TAY
		LDA $9F01,Y
		BEQ lbl_9c20
		STA $05F0
		STA APU_TRIFREQ1
		LDA noteTable,Y
		ORA #$08
		STA APU_TRIFREQ2
		RTS
.endproc

.proc sub_9c54
		CMP #$10
		BCC return
		LSR
		LSR
		LSR
		BCS lbl_9c62
		TXA
		ADC #$01
		BNE lbl_9c66
	lbl_9c62:
		TXA
		CLC
		ADC #$FF
	lbl_9c66:
		TAX
	return:
		RTS
.endproc	

lbl_9c68:
	JMP lbl_9d2c
;9C6B
.proc process_music
		LDA musicRequest	;Check if a song is requested
		BNE start_song		;If so, start it.
		LDA currentMusic
		BNE lbl_9c68
		RTS
.endproc
	
start_song:
	STA currentMusic
	BMI lbl_9c93
	CMP #6
	BNE lbl_9c83
	LDY #$24
	BNE lbl_9ce5
lbl_9c83:
	CMP #$01
	BEQ lbl_9c9b
	CMP #$40
	BEQ lbl_9c97
	CMP #$10
	BNE lbl_9c9f
	LDY #$11
	BNE lbl_9c9d
	
lbl_9c93:
	LDY #$19
	BNE lbl_9c9d
lbl_9c97:
	LDY #$0F
	BNE lbl_9c9d
lbl_9c9b:
	LDY #$08
lbl_9c9d:
	STY $6C
lbl_9c9f:	;
	TAX
	BMI lbl_9cd2
	CMP #$01
	BEQ lbl_9cc6
	CMP #$40
	BEQ lbl_9cba
	CMP #$10
	BNE lbl_9cde
	INC $6C
	LDY $6C
	CPY #$1A
	BNE lbl_9ce5
	LDY #$14
	BNE lbl_9c9d
lbl_9cba:
	INC $6C
	LDY $6C
	CPY #$12
	BNE lbl_9ce5
	LDY #$0F
	BNE lbl_9c9d
lbl_9cc6:
	INC $6C
	LDY $6C
	CPY #$10
	BNE lbl_9ce5
	LDY #$09
	BNE lbl_9c9d
lbl_9cd2:
	INC $6C
	LDY $6C
	CPY #$24
	BNE lbl_9ce5
	LDY #$19
	BNE lbl_9c9d
lbl_9cde:
	TXA
	LDY #$00
lbl_9ce1:
	INY
	LSR
	BCC lbl_9ce1
lbl_9ce5:	;Y = song id
	LDA songTable - 1, Y
	TAY													;Y = offset of song descriptor
	LDA songTable + SongDescriptor::unk1, Y				;Note delay?
	STA $05F4
	LDA songTable + SongDescriptor::musicDataPtr, Y		;Get address of music data
	STA musicData	;low byte
	LDA songTable + SongDescriptor::musicDataPtr+1, Y
	STA musicData+1	;high byte
	LDA songTable + SongDescriptor::offsetVoiceC, Y		;Get offset of music data for voice C
	STA musicOffsetVoiceC
	LDA songTable + SongDescriptor::offsetVoiceB, Y		;Get offset of music data for voice B
	STA musicOffsetVoiceB
	LDA songTable + SongDescriptor::offsetVoiceD, Y		;Get offset of music data for voice D
	STA musicOffsetVoiceD
	STA $05F5
	LDA songTable+6,Y
	STA $0619
	LDA songTable+7,Y
	STA $05F1
	LDA #1
	STA musicTimer
	STA $0613
	STA $0616
	STA $0617
	LSR
	STA musicOffsetVoiceA
lbl_9d2c:	;Continue playing song?
	DEC musicTimer
	BNE lbl_9d83
	LDY musicOffsetVoiceA
	INC musicOffsetVoiceA
	LDA (musicData),Y		;Get next byte of song
	BEQ end_of_song			;0 marks end of song
	BPL set_note			;Upper bit clear is a note
	BNE set_duration		;Upper bit set is a duration
end_of_song:
	LDA currentMusic
	AND #$F1
	BNE lbl_9d54
sub_9d46:
	LDA #$00
	STA currentMusic
	STA APU_CHANCTRL
	LDA #$0F
	STA APU_CHANCTRL
	RTS
lbl_9d54:
	JMP lbl_9c9f
set_duration:
	JSR sub_9ee6
	STA noteDuration
	LDY musicOffsetVoiceA
	INC musicOffsetVoiceA
	LDA (musicData),Y				;Get next byte of song and set that note.
set_note:
	LDX currentMusicEffect
	BNE lbl_9d7d
	JSR sub_9c2b
	BEQ lbl_9d72
	JSR sub_9f72
lbl_9d72:
	STA $0612
	JSR sub_9c21
	LDA #$00
	STA $061B
lbl_9d7d:
	LDA noteDuration
	STA musicTimer
lbl_9d83:
	LDY currentMusicEffect
	BNE lbl_9dae
	INC $061B
	LDY $0612
	BEQ lbl_9d93
	DEC $0612
lbl_9d93:
	JSR sub_9f7c
	STA APU_PULSE2CTRL
	LDX #$7F
	STX APU_PULSE2RAMP
	LDA currentMusic
	BPL lbl_9dae
	LDA $061B
	LDX $6B
	JSR sub_9c54
	STX APU_PULSE2FTUNE
lbl_9dae:
	LDY musicOffsetVoiceB
	BEQ lbl_9e19
	DEC $0613
	BNE lbl_9dee
	LDY musicOffsetVoiceB
	INC musicOffsetVoiceB
	LDA (musicData),Y
	BPL lbl_9dd0
	JSR sub_9ee6
	STA $060F
	LDY musicOffsetVoiceB
	INC musicOffsetVoiceB
	LDA (musicData),Y
lbl_9dd0:
	LDX $0605
	BNE lbl_9de8
	JSR sub_9c0d
	BEQ lbl_9ddd
	JSR sub_9f72
lbl_9ddd:
	STA $0614
	JSR sub_9c03
	LDA #$00
	STA $061C
lbl_9de8:
	LDA $060F
	STA $0613
lbl_9dee:
	LDX currentSoundEffect
	BNE lbl_9e19
	INC $061C
	LDY $0614
	BEQ lbl_9dfe
	DEC $0614
lbl_9dfe:
	JSR sub_9f7c
	STA APU_PULSE1CTRL
	LDA currentMusic
	BPL lbl_9e14
	LDA $061C
	LDX $6A
	JSR sub_9c54
	STX APU_PULSE1FTUNE
lbl_9e14:
	LDA #$7F
	STA APU_PULSE1RAMP
lbl_9e19:
	LDA musicOffsetVoiceC
	BNE lbl_9e21
	JMP lbl_9e95
lbl_9e21:
	DEC $0616
	BNE lbl_9e78
lbl_9e26:
	LDY musicOffsetVoiceC
	INC musicOffsetVoiceC
	LDA (musicData),Y
	BEQ lbl_9e92
	BPL lbl_9e6a
	CMP #$F0
	BEQ lbl_9e47
	BCC lbl_9e55
	SEC
	SBC #$F0
	STA $061E
	LDA musicOffsetVoiceC
	STA $061F
	JMP lbl_9e26
lbl_9e47:
	DEC $061E
	BEQ lbl_9e52
	LDA $061F
	STA musicOffsetVoiceC
lbl_9e52:
	JMP lbl_9e26
lbl_9e55:
	JSR sub_9ee6
	STA $0615
	LDA #$1F
	STA APU_TRICTRL1
	LDY musicOffsetVoiceC
	INC musicOffsetVoiceC
	LDA (musicData),Y
	BEQ lbl_9e92
lbl_9e6a:
	JSR sub_9c3f
	LDA #$00
	STA $061D
	LDX $0615
	STX $0616
lbl_9e78:
	INC $061D
	LDA $061D
	LDX $05F0
	JSR sub_9c54
	STX APU_TRIFREQ1
	LDA $05F1
	BPL lbl_9e90
	LDA #$1F
	BNE lbl_9e92
lbl_9e90:
	LDA #$FF
lbl_9e92:
	STA APU_TRICTRL1
lbl_9e95:
	LDA currentMusic
	AND #$91
	BEQ lbl_9ed3
	DEC $0617
	BNE lbl_9ed3
lbl_9ea1:
	LDY musicOffsetVoiceD
	INC musicOffsetVoiceD
	LDA (musicData),Y
	BNE lbl_9eb3
	LDA $05F5
	STA musicOffsetVoiceD
	BNE lbl_9ea1
lbl_9eb3:
	JSR sub_9ee0
	STA $0617
	TXA
	AND #$3E
	LSR
	LSR
	LSR
	LSR
	TAY
	LDA $9ED4,Y
	STA APU_NOISECTRL
	LDA $9ED8,Y
	STA APU_NOISEFREQ1
	LDA $9EDC,Y
	STA APU_NOISEFREQ2
lbl_9ed3:
	RTS
.byte $10
.byte $1C
.byte $1C
.byte $1C
.byte $00
.byte $03
.byte $0A
.byte $03
.byte $00
.byte $18
.byte $18
.byte $58

sub_9ee0:
	TAX
	ROR
	TXA
	ROL
	ROL
	ROL
sub_9ee6:
	AND #$07
	CLC
	ADC $05F4
	TAY
	LDA $9FD1,Y
	RTS
	
.byte $29
.byte $07
.byte $A8
.byte $B9
.byte $D1
.byte $9F
.byte $60
.byte $CB
.byte $0E
.byte $0E
.byte $4C
.byte $6D
.byte $8C
.byte $CD
.byte $FF

;9F00
; Note frequency table
noteTable:
	.byte $00,$23	;G7
	.byte $00,$6A	;C6
	.byte $03,$27
	.byte $00,$97
	.byte $00,$00
	.byte $02,$F9
	.byte $02,$CF
	.byte $02,$A6
	.byte $02,$80
	.byte $02,$5C
	.byte $02,$3A
	.byte $02,$1A
	.byte $01,$FC
	.byte $01,$DF
	.byte $01,$C4
	.byte $01,$AB
	.byte $01,$93
	.byte $01,$7C
	.byte $01,$67
	.byte $01,$53
	.byte $01,$40
	.byte $01,$2E
	.byte $01,$1D
	.byte $01,$0D
	.byte $00,$FE
	.byte $00,$EF
	.byte $00,$E2
	.byte $00,$D5
	.byte $00,$C9
	.byte $00,$BE
	.byte $00,$B3
	.byte $00,$A9
	.byte $00,$A0
	.byte $00,$8E
	.byte $00,$86
	.byte $00,$77
	.byte $00,$7E
	.byte $00,$71
	.byte $00,$54
	.byte $00,$64
	.byte $00,$5F
	.byte $00,$59
	.byte $00,$50
	.byte $00,$47
	.byte $00,$43
	.byte $00,$3F
	.byte $00,$38
	.byte $00,$32
	.byte $00,$21
	.byte $05,$4D
	.byte $05,$01
	.byte $04,$B9
	.byte $04,$35
	.byte $03,$F8
	.byte $03,$BF
	.byte $03,$89
	.byte $03,$57

sub_9f72:
	LDA $0619
	LDA #$20
	LDX #$82
	LDY #$7F
	RTS
	
sub_9f7c:
	LDA $0619
	BPL lbl_9f88
	LDA $9F92,Y
	AND #$0F
	BNE lbl_9f8f
lbl_9f88:
	LDA $9F92,Y
	LSR
	LSR
	LSR
	LSR
lbl_9f8f:
	ORA #$90
	RTS
.byte $04
.byte $24
.byte $24
.byte $34
.byte $34
.byte $35
.byte $35
.byte $35
.byte $45
.byte $45
.byte $46
.byte $46
.byte $46
.byte $46
.byte $46
.byte $46
.byte $46
.byte $46
.byte $57
.byte $57
.byte $57
.byte $57
.byte $68
.byte $68
.byte $68
.byte $68
.byte $79
.byte $79
.byte $79
.byte $68
.byte $68
.byte $57
.byte $47
.byte $67
.byte $87
.byte $A8
.byte $B9
.byte $9A
.byte $8A
.byte $5A
.byte $9B
.byte $8B
.byte $FB
.byte $F9
.byte $9D
.byte $6E
.byte $3F
.byte $1A
.byte $1A
.byte $1C
.byte $1D
.byte $1D
.byte $1E
.byte $1E
.byte $1F
.byte $1F
.byte $1E
.byte $1A
.byte $19
.byte $16
.byte $13
.byte $11
.byte $11
.byte $03
.byte $0A
.byte $01
.byte $14
.byte $05
.byte $28
.byte $3C
.byte $70
.byte $07
.byte $1B
.byte $35
.byte $14
.byte $0D
.byte $28
.byte $3C
.byte $50
.byte $06
.byte $0C
.byte $08
.byte $18
.byte $24
.byte $30
.byte $48
.byte $10
.byte $07
.byte $0D
.byte $09
.byte $1B
.byte $24
.byte $36
.byte $48
.byte $10
.byte $3C
.byte $50
.byte $0A
.byte $05
.byte $14
.byte $0D
.byte $28
.byte $0E

.repeat $1F57
	.byte $FF
.endrepeat


.byte $78
.byte $D8
.byte $A9
.byte $00
.byte $8D
.byte $00
.byte $20
.byte $A2
.byte $FF
.byte $9A
.byte $AD
.byte $02
.byte $20
.byte $29
.byte $80
.byte $F0
.byte $F9
.byte $AD
.byte $02
.byte $20
.byte $29
.byte $80
.byte $F0
.byte $F9
.byte $09
.byte $FF
.byte $8D
.byte $00
.byte $80
.byte $8D
.byte $00
.byte $A0
.byte $8D
.byte $00
.byte $C0
.byte $8D
.byte $00
.byte $E0
.byte $A9
.byte $0F
.byte $20
.byte $98
.byte $BF
.byte $A9
.byte $00
.byte $8D
.byte $00
.byte $A0
.byte $4A
.byte $8D
.byte $00
.byte $A0
.byte $4A
.byte $8D
.byte $00
.byte $A0
.byte $4A
.byte $8D
.byte $00
.byte $A0
.byte $4A
.byte $8D
.byte $00
.byte $A0
.byte $A9
.byte $07
.byte $20
.byte $AC
.byte $BF
.byte $4C
.byte $40
.byte $E4
.byte $8D
.byte $00
.byte $80
.byte $4A
.byte $8D
.byte $00
.byte $80
.byte $4A
.byte $8D
.byte $00
.byte $80
.byte $4A
.byte $8D
.byte $00
.byte $80
.byte $4A
.byte $8D
.byte $00
.byte $80
.byte $60
.byte $8D
.byte $00
.byte $E0
.byte $4A
.byte $8D
.byte $00
.byte $E0
.byte $4A
.byte $8D
.byte $00
.byte $E0
.byte $4A
.byte $8D
.byte $00
.byte $E0
.byte $4A
.byte $8D
.byte $00
.byte $E0
.byte $60
.byte $FF
.byte $FF
.byte $FF
.byte $FF
.byte $FF
.byte $FF
.byte $FF
.byte $FF
.byte $FF
.byte $FF
.byte $FF
.byte $FF
.byte $FF
.byte $FF
.byte $FF
.byte $FF
.byte $FF
.byte $FF
.byte $FF
.byte $FF
.byte $FF
.byte $FF
.byte $FF
.byte $FF
.byte $FF
.byte $FF
.byte $FF
.byte $FF
.byte $FF
.byte $FF
.byte $FF
.byte $FF
.byte $FF
.byte $FF
.byte $FF
.byte $FF
.byte $FF
.byte $FF
.byte $FF
.byte $FF
.byte $FF
.byte $FF
.byte $FF
.byte $FF
.byte $FF
.byte $FF
.byte $FF
.byte $FF
.byte $FF
.byte $FF
.byte $FF
.byte $FF
.byte $FF
.byte $FF
.byte $FF
.byte $FF
.byte $FF
.byte $FF
.byte $84
.byte $E4
.byte $50
.byte $BF
.byte $F0
.byte $BF
