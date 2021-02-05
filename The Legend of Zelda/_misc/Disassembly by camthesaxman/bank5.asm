.include "nes.inc"
.include "zelda.inc"

;Program ROM Bank 5
.segment "PRG_5"

;There are a select few places where LDA and STA use absolute addressing to access variables in the
;zero page instead of using zero page addressing. The assembler always uses zero page addressing
;where appropriate, so these macros provide an absolute addressing version of these instructions.

.macro STA_absolute addr
	.byte $8D, .lobyte(addr), .hibyte(addr)
.endmacro

.macro LDA_absolute addr
	.byte $AD, .lobyte(addr), .hibyte(addr)
.endmacro

segment_start:

lbl_8000:
	JSR lbl_8006
	JMP $ED89
lbl_8006:
	LDA $E1
	LDY $10
	BEQ lbl_8021
	JSR switch_jump
	.addr lbl_8056
	.addr lbl_8038
	.addr lbl_8057
	.addr lbl_805e
	.addr lbl_8062
	.addr lbl_8066
	.addr lbl_8076
	.addr lbl_80d4
	.addr lbl_810f

lbl_8021:
	JSR switch_jump
	.addr lbl_8056
	.addr lbl_819a
	.addr lbl_8038
	.addr lbl_8057
	.addr lbl_805e
	.addr lbl_8062
	.addr lbl_806c
	.addr lbl_8070
	.addr lbl_80d4
	.addr lbl_810f

lbl_8038:
	JSR $E5F7
	JSR $71DE
	JSR $E679
	LDA #$EF
	STA $FC
	STA $5C
	LDA #$01
	JSR lbl_8130
	INC $E1
	LDA #$2B
	STA $5E
	LDA #$7F
	STA $5D
lbl_8056:
	RTS
lbl_8057:
	LDA #$48
lbl_8059:
	STA $14
lbl_805b:
	INC $E1
	RTS
lbl_805e:
	LDA #$4A
	BNE lbl_8059
lbl_8062:
	LDA #$4C
	BNE lbl_8059
lbl_8066:
	JSR lbl_b23a
	JMP lbl_805b
lbl_806c:
	LDA #$5C
	BNE lbl_8059
lbl_8070:
	JSR lbl_b282
	JMP lbl_8079
lbl_8076:
	JSR lbl_b23a
lbl_8079:
	LDA #$03
	JSR lbl_8130
	LDA $FC
	SEC
	SBC #$03
	STA $FC
	CMP #$41
	BNE lbl_80d3
	INC $E1
	LDA $10
	BEQ lbl_80d3
	LDA $12
	CMP #$09
	BEQ lbl_80d3
	LDA $EB
	AND #$0F
	ASL
	ASL
	ASL
	STA $00
	LDA $6BAB
	CMP #$08
	BCC lbl_80b3
	LDA #$10
	SBC $6BAB
	ASL
	ASL
	ASL
	JSR $7021
	JMP lbl_80b6
lbl_80b3:
	ASL
	ASL
	ASL
lbl_80b6:
	CLC
	ADC $00
	CLC
	ADC #$62
	STA $0253
	LDA $EB
	AND #$F0
	LSR
	ADC #$69
	STA $0250
	LDA #$3E
	STA $0251
	LDA #$00
	STA $0252
lbl_80d3:
	RTS
lbl_80d4:
	JSR lbl_b6a7
	JSR lbl_b726
	LDA $FB
	AND #$88
	CMP #$88
	BNE lbl_80f3
	JSR $EBA3
	STA $E1
	LDA #$08
	STA $12
	LDA #$00
	STA $0619
	JMP lbl_8a8e
lbl_80f3:
	LDA $F8
	AND #$10
	BEQ lbl_8151
	LDA $0254
	PHA
	LDA $0258
	PHA
	JSR $E5F7
	PLA
	STA $0258
	PLA
	STA $0254
	INC $E1
	RTS
lbl_810f:
	LDA #$FD
	JSR lbl_8130
	LDA $FC
	CLC
	ADC #$03
	STA $FC
	CMP #$F0
	BCC lbl_8151
	STA $5C
	LDA $10
	BEQ lbl_8128
	JSR $7512
lbl_8128:
	LDA #$00
	STA $FC
	STA $E1
	LDA #$02
lbl_8130:
	STA $00
	LDA $0254
	CMP #$F8
	BEQ lbl_813f
	CLC
	ADC $00
	STA $0254
lbl_813f:
	LDA $10
	BEQ lbl_8151
	JSR lbl_b5eb
	BEQ lbl_8151
	LDA $0258
	CLC
	ADC $00
	STA $0258
lbl_8151:
	RTS
.byte $00
.byte $08
.byte $09
.byte $01
.byte $0A
.byte $0B
.byte $12
.byte $1E
.byte $1F
.byte $17
.byte $24
.byte $25
.byte $13
.byte $14
.byte $21
.byte $13
.byte $20
.byte $21
.byte $15
.byte $16
.byte $22
.byte $16
.byte $22
.byte $23
.byte $E7
.byte $E7
.byte $F5
.byte $E8
.byte $F5
.byte $E8
.byte $E7
.byte $E7
.byte $F5
.byte $E8
.byte $F5
.byte $E8
.byte $E5
.byte $F5
.byte $E5
.byte $E8
.byte $F5
.byte $E8
.byte $F5
.byte $E6
.byte $E6
.byte $E7
.byte $E7
.byte $F5
.byte $E9
.byte $E9
.byte $24
.byte $EA
.byte $24
.byte $EA
.byte $E9
.byte $E9
.byte $24
.byte $EA
.byte $24
.byte $EA
.byte $24
.byte $24
.byte $24
.byte $24
.byte $24
.byte $24
.byte $24
.byte $24
.byte $24
.byte $24
.byte $24
.byte $24
lbl_819a:
	LDY #$17
lbl_819c:
	LDX $8152,Y
	LDA $8182,Y
	STA $684B,X
	DEY
	BPL lbl_819c
	INY
	LDA #$01
	STA $06
lbl_81ad:
	LDA #$03
	STA $07
lbl_81b1:
	LDX $8152,Y
	LDA $06
	BIT $0671
	BEQ lbl_81d1
	LDA $684B,X
	CMP #$E5
	BEQ lbl_81cc
	CMP #$E6
	BEQ lbl_81cc
	LDA $816A,Y
	JMP lbl_81ce
lbl_81cc:
	LDA #$F5
lbl_81ce:
	STA $684B,X
lbl_81d1:
	INY
	DEC $07
	BNE lbl_81b1
	ASL $06
	BNE lbl_81ad
	INC $E1
	RTS
lbl_81dd:
	LDA $15
	AND #$03
	LDY $10
	BNE lbl_81e7
	AND #$01
lbl_81e7:
	CMP $E6
	BNE lbl_8255
	LDA #$08
	BIT $98
	BEQ lbl_8228
	DEC $E9
	LDA $84
	CMP #$DD
	BCS lbl_81fd
	ADC #$08
	STA $84
lbl_81fd:
	LDA $E2
	SEC
	SBC #$20
	STA $E2
	BCS lbl_8208
	DEC $58
lbl_8208:
	CMP #$E0
	BNE lbl_821e
	LDA $58
	CMP #$20
	BEQ lbl_821f
	CMP #$27
	BNE lbl_821e
	LDA #$23
	STA $58
	LDA #$A0
	STA $E2
lbl_821e:
	RTS
lbl_821f:
	INC $58
lbl_8221:
	LDA #$00
	STA $E2
lbl_8225:
	INC $13
	RTS
lbl_8228:
	LSR
	BIT $98
	BEQ lbl_8255
	INC $E9
	LDA $84
	CMP #$3E
	BCC lbl_8239
	SBC #$08
	STA $84
lbl_8239:
	LDA $E2
	CLC
	ADC #$20
	STA $E2
	BCC lbl_8244
	INC $58
lbl_8244:
	CMP #$C0
	BNE lbl_8287
	LDA $58
	CMP #$23
	BNE lbl_8287
	LDA #$28
	STA $58
	JMP lbl_8221
lbl_8255:
	LDA #$02
	LDX #$FE
	LDY $10
	BNE lbl_8260
	ASL
	LDX #$FC
lbl_8260:
	STA $00
	STX $01
	LDA #$02
	BIT $98
	BEQ lbl_8288
	DEC $E8
	LDA $70
	CMP #$F0
	BCS lbl_8276
	ADC $00
	STA $70
lbl_8276:
	LDA $FD
	SEC
	SBC $00
	STA $FD
	BEQ lbl_8225
	CMP $01
	BNE lbl_8287
lbl_8283:
	LDA #$01
	STA $5F
lbl_8287:
	RTS
lbl_8288:
	LSR
	BIT $98
	BEQ lbl_8287
	INC $E8
	LDA $70
	CMP #$01
	BCC lbl_8299
	SBC $00
	STA $70
lbl_8299:
	LDA $FD
	CLC
	ADC $00
	STA $FD
	BNE lbl_8287
	JSR lbl_8283
	JMP lbl_8225
lbl_82a8:
	LDA $13
	JSR switch_jump
	.addr lbl_830e
	.addr lbl_82bb
	.addr lbl_831f
	.addr lbl_833d
	.addr lbl_833d
	.addr lbl_835c
	.addr lbl_839e

lbl_82bb:
	JSR $EA3D
	JSR $F238
	LDA $EE
	STA $0521
	JSR lbl_83c2
	DEC $ED
	INC $13
	JSR $E68F
	LDA $EC
	BMI lbl_82f4
	LDA $EB
	PHA
	LDY $98
	CPY #$08
	BEQ lbl_82e1
	LDA $EC
	STA $EB
lbl_82e1:
	JSR lbl_83d7
	LDA #$15
	STA $E9
	LDY $98
	CPY #$08
	BEQ lbl_82f5
	JSR lbl_a8c4
lbl_82f1:
	PLA
	STA $EB
lbl_82f4:
	RTS
lbl_82f5:
	JSR lbl_82fb
	JMP lbl_82f1
lbl_82fb:
	LDA $10
	BEQ lbl_830d
	LDA $EE
	PHA
	LDA $0521
	STA $EE
	JSR lbl_a4f6
	PLA
	STA $EE
lbl_830d:
	RTS
lbl_830e:
	LDA $0522
	BEQ lbl_8317
	LDA $EA
	STA $EB
lbl_8317:
	LDA $051A
	BEQ lbl_833a
	JMP $FF34
lbl_831f:
	JSR lbl_a924
	LDA $0302
	AND #$0F
	CLC
	ADC #$27
	STA $0302
	LDA $98
	CMP #$04
	BCS lbl_8336
	INC $0302
lbl_8336:
	DEC $E9
	BPL lbl_833c
lbl_833a:
	INC $13
lbl_833c:
	RTS
lbl_833d:
	LDA #$08
	BIT $98
	BNE lbl_8348
	LSR
	BIT $98
	BEQ lbl_8358
lbl_8348:
	LDA #$C0
lbl_834a:
	LDY #$17
	LDX $13
	CPX #$03
	BEQ lbl_8355
	JSR lbl_848c
lbl_8355:
	JMP lbl_8ca4
lbl_8358:
	LDA #$D0
	BNE lbl_834a
lbl_835c:
	LDA #$00
	STA $051C
	LDA $98
	CMP #$04
	BCS lbl_836b
	LDY #$4E
	STY $14
lbl_836b:
	CMP #$08
	BNE lbl_837c
	LDA $EB
	PHA
	LDA $EC
	STA $EB
	JSR lbl_a8c4
	PLA
	STA $EB
lbl_837c:
	LDY $EC
	JSR lbl_b68d
	BEQ lbl_83a3
	LDY $EB
	JSR lbl_b68d
	BNE lbl_8397
lbl_838a:
	LDA #$00
	STA $051F
	LDA #$40
	STA $051C
	INC $13
	RTS
lbl_8397:
	LDA $051F
	BNE lbl_838a
	BEQ lbl_83a3
lbl_839e:
	JSR $74B7
	BNE lbl_83ad
lbl_83a3:
	LDA $EC
	STA $EB
	JSR lbl_83b2
	JSR $6C90
lbl_83ad:
	RTS
.byte $27
.byte $61
.byte $20
.byte $58
lbl_83b2:
	LDA #$01
	STA $E3
	LDY #$03
lbl_83b8:
	LDA $83AE,Y
	STA $0200,Y
	DEY
	BPL lbl_83b8
	RTS
lbl_83c2:
	LDA $98
	LSR
	AND #$05
	STA $00
	LDA $98
	ASL
	AND #$0A
	ORA $00
	STA $EE
	RTS
.byte $00
.byte $55
.byte $AA
.byte $FF
lbl_83d7:
	TAY
	LDA $687E,Y
	AND #$03
	TAX
	LDA $83D3,X
	LDX #$2F
lbl_83e3:
	STA $0530,X
	DEX
	BPL lbl_83e3
	LDA $68FE,Y
	AND #$03
	TAX
	LDY #$09
lbl_83f1:
	TYA
	AND #$07
	BEQ lbl_8404
	CMP #$07
	BEQ lbl_8404
	CPY #$21
	BCS lbl_840a
	LDA $83D3,X
	STA $0530,Y
lbl_8404:
	INY
	CPY #$27
	BCC lbl_83f1
	RTS
lbl_840a:
	LDA $83D3,X
	AND #$0F
	STA $00
	LDA $0530,Y
	AND #$F0
	ORA $00
	STA $0530,Y
	JMP lbl_8404
lbl_841e:
	JSR lbl_8424
	JMP $F238
lbl_8424:
	LDA $13
	JSR switch_jump
	.addr lbl_8439
	.addr lbl_847e
	.addr lbl_8492
	.addr lbl_84a4
	.addr lbl_84df
	.addr lbl_84e8
	.addr lbl_84ba
	.addr lbl_84cc
	
lbl_8439:
	LDA #$00
	STA $E2
	STA $FD
	LDA #$08
	BIT $98
	BNE lbl_8471
	LSR
	BIT $98
	BEQ lbl_8457
	LDA #$21
	STA $58
	LDA #$FF
	STA $E9
lbl_8452:
	INC $13
	INC $13
	RTS
lbl_8457:
	LDY #$A0
	LDX $10
	BNE lbl_845f
	LDY #$E0
lbl_845f:
	LSR
	BIT $98
	BEQ lbl_846c
	LDY #$81
	LDX $10
	BNE lbl_846c
	LDY #$41
lbl_846c:
	STY $E8
	JMP lbl_8452
lbl_8471:
	LDA #$28
	STA $58
	LDA #$16
	STA $E9
	LDA $EB
	JSR lbl_83d7
lbl_847e:
	JSR lbl_8484
	JMP lbl_8501
lbl_8484:
	LDA #$D0
	LDY #$17
	LDX $13
	BEQ lbl_8491
lbl_848c:
	LDY #$2F
	CLC
	ADC #$18
lbl_8491:
	RTS
lbl_8492:
	INC $13
	LDA $15
	CLC
	ADC #$01
	AND #$03
	LDY $10
	BNE lbl_84a1
	AND #$01
lbl_84a1:
	STA $E6
	RTS
lbl_84a4:
	JSR lbl_81dd
	JSR lbl_8506
	LDA $13
	CMP #$03
	BEQ lbl_84b9
	LDY #$FF
	STY $E9
	STY $ED
	INY
	STY $E8
lbl_84b9:
	RTS
lbl_84ba:
	LDA $10
	BEQ lbl_84cc
	LDY $EB
	JSR lbl_b68d
	BEQ lbl_84cc
	LDA #$00
	STA $E9
	INC $13
	RTS
lbl_84cc:
	LDA #$01
	STA $13
	LSR
	STA $11
	STA $010C
	STA $E7
	STA $E3
	LDA #$04
	STA $12
	RTS
lbl_84df:
	LDA #$08
	BIT $98
	BEQ lbl_84e8
	JMP lbl_8452
lbl_84e8:
	LDA #$D0
	LDY #$17
	LDX $13
	CPX #$04
	BEQ lbl_8501
	PHA
	LDA $98
	CMP #$04
	BCS lbl_84fd
	LDA #$00
	STA $5F
lbl_84fd:
	PLA
	JSR lbl_848c
lbl_8501:
	LDX #$23
	JMP lbl_8ca6
lbl_8506:
	LDA $E9
	CMP #$16
	BCS lbl_8515
	CMP $ED
	BEQ lbl_8520
	STA $ED
	JMP lbl_a924
lbl_8515:
	LDA $E8
	BEQ lbl_8520
	CMP #$21
	BCS lbl_8520
	JMP lbl_a8de
lbl_8520:
	RTS
lbl_8521:
	LDA PPUSTATUS
	AND #$40
	BEQ lbl_8521
	LDA PPUSTATUS
	LDY #$03
lbl_852d:
	LDX #$30
lbl_852f:
	DEX
	BPL lbl_852f
	DEY
	BPL lbl_852d
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	LDA $12
	CMP #$08
	BCS lbl_858c
	LDA $13
	BEQ lbl_858b
	LDA $98
	CMP #$04
	BCC lbl_856d
	LDY #$5E
lbl_8550:
	NOP
	DEY
	BPL lbl_8550
	NOP
	NOP
	NOP
	NOP
	NOP
	LDA PPUSTATUS
	LDA $58
	LDY $E2
	STA PPUADDR
	STY PPUADDR
	LDA PPUDATA
	LDA PPUDATA
	RTS
lbl_856d:
	LDY #$5E
lbl_856f:
	NOP
	DEY
	BPL lbl_856f
	NOP
	NOP
	NOP
	LDA $FF
	AND #$FE
	ORA $5F
	STA $FF
	STA PPUCTRL
	LDA $FD
	STA PPUSCROLL
	LDA #$00
	STA PPUSCROLL
lbl_858b:
	RTS
lbl_858c:
	CMP #$11
	BCS lbl_8593
	JMP disable_rendering
lbl_8593:
	LDA $FF
	ORA #$01
	STA $FF
	STA PPUCTRL
	RTS

.repeat $63
	.byte $FF
.endrepeat

lbl_8600:
	JSR disable_rendering
	LDA $13
	BNE lbl_8613
	STA_absolute $0005A
	JSR $E46D
	JSR $EA2B
	JMP $EA00
lbl_8613:
	LDA #$04
	STA $14
	JMP $6C90
lbl_861a:
	JSR $E46D
	JSR lbl_b4ac
	BCS lbl_8625
	JMP $6C90
lbl_8625:
	JMP $FF50
lbl_8628:
	LDX #$00
	JSR $EDF4
	CMP #$24
	BNE lbl_8643
	LDA #$00
	STA $0619
	LDA #$08
	STA $0603
	LDA $84
	CLC
	ADC #$10
	STA $0412
lbl_8643:
	INC $11
	RTS
.byte $4E
.byte $57
.byte $60
.byte $69
.byte $86
.byte $86
.byte $86
.byte $86
.byte $55
.byte $B5
.byte $78
.byte $98
.byte $7A
.byte $9A
.byte $6C
.byte $AC
.byte $8D
.byte $82
.byte $63
.byte $A3
.byte $75
.byte $95
.byte $77
.byte $97
.byte $5A
.byte $BA
.byte $A3
.byte $75
.byte $B5
.byte $96
.byte $87
.byte $99
.byte $7A
.byte $BA
.byte $AC
.byte $63
.byte $55
.byte $95
.byte $76
.byte $88
.byte $79
.byte $5A
.byte $9A
.byte $6C
.byte $18
.byte $E8
.byte $28
.byte $D8
.byte $03
.byte $03
.byte $04
.byte $03
.byte $04
.byte $03
.byte $04
.byte $03
.byte $04
.byte $1A
.byte $1A
.byte $02
.byte $01
.byte $02
.byte $01
.byte $01
.byte $02
.byte $01
.byte $02
.byte $01
.byte $0F
.byte $02
.byte $01
.byte $10
.byte $02
.byte $0F
.byte $1A
.byte $10
.byte $1A
.byte $0F
.byte $1A
.byte $09
.byte $08
.byte $08
.byte $08
.byte $08
.byte $08
.byte $07
.byte $08
.byte $07
.byte $08
.byte $09
.byte $08
.byte $09
.byte $08
.byte $0A
.byte $07
.byte $0A
.byte $07
.byte $07
.byte $03
.byte $0A
.byte $04
.byte $0A
.byte $04
.byte $04
.byte $4A
.byte $00
.byte $00
.byte $00
.byte $13
.byte $13
.byte $00
.byte $13
.byte $4A
.byte $00
.byte $00
.byte $00
.byte $1B
.byte $1B
.byte $1B
.byte $1B
.byte $2B
.byte $2B
.byte $2B
.byte $13
.byte $13
.byte $1B
.byte $1B
.byte $1B
.byte $16
.byte $30
.byte $30
.byte $1B
.byte $1B
.byte $16
.byte $00
.byte $00
.byte $2B
.byte $2B
.byte $2B
.byte $23
.byte $23
.byte $24
.byte $23
.byte $24
.byte $2B
.byte $2B
.byte $12
.byte $12
.byte $12
.byte $00
.byte $00
.byte $00
.byte $2B
.byte $2B
.byte $13
.byte $13
.byte $17
.byte $17
.byte $2B
.byte $2B
.byte $0C
.byte $0B
.byte $0B
.byte $30
.byte $30
.byte $30
.byte $2B
.byte $2B
.byte $05
.byte $05
.byte $05
.byte $1B
.byte $1B
.byte $1B
.byte $4A
.byte $00
.byte $00
.byte $00
.byte $17
.byte $17
.byte $17
.byte $17
.byte $4A
.byte $00
.byte $00
.byte $00
.byte $23
.byte $24
.byte $23
.byte $24
.byte $16
.byte $0C
.byte $0B
.byte $0C
.byte $0B
.byte $16
.byte $2B
.byte $2B
.byte $2B
.byte $27
.byte $27
.byte $27
.byte $27
.byte $27
.byte $05
.byte $06
.byte $06
.byte $05
.byte $06
.byte $05
.byte $00
.byte $00
.byte $23
.byte $23
.byte $24
.byte $23
.byte $24
.byte $2B
.byte $17
.byte $23
.byte $23
.byte $17
.byte $24
.byte $17
.byte $24
.byte $2D
.byte $2D
.byte $2D
.byte $2C
.byte $23
.byte $24
.byte $23
.byte $24
.byte $2D
.byte $2D
.byte $2D
.byte $2C
.byte $0C
.byte $0B
.byte $0C
.byte $0B
.byte $2D
.byte $2D
.byte $2D
.byte $2C
.byte $27
.byte $27
.byte $27
.byte $27
.byte $76
.byte $86
.byte $7B
.byte $86
.byte $7F
.byte $86
.byte $85
.byte $86
.byte $89
.byte $86
.byte $8F
.byte $86
.byte $95
.byte $86
.byte $9A
.byte $86
.byte $9E
.byte $86
.byte $A3
.byte $86
.byte $A8
.byte $86
.byte $AE
.byte $86
.byte $B6
.byte $86
.byte $BE
.byte $86
.byte $C6
.byte $86
.byte $CE
.byte $86
.byte $D6
.byte $86
.byte $DE
.byte $86
.byte $E4
.byte $86
.byte $EC
.byte $86
.byte $F4
.byte $86
.byte $FC
.byte $86
.byte $04
.byte $87
.byte $0A
.byte $87
.byte $12
.byte $87
.byte $1A
.byte $87
.byte $1F
.byte $87
.byte $27
.byte $87
.byte $2F
.byte $87
.byte $37
.byte $87
lbl_877b:
	LDX $13
	BEQ lbl_87c6
	DEX
	BNE lbl_878e
	LDA $E9
	BMI lbl_878b
	JSR lbl_ac16
	BCC lbl_878d
lbl_878b:
	INC $13
lbl_878d:
	RTS
lbl_878e:
	DEX
	BNE lbl_87b9
	LDY $EB
	JSR lbl_b68d
	BNE lbl_87be
	LDA $98
	JSR lbl_b560
	SEC
	SBC $EB
	JSR $7021
	CLC
	ADC $EB
	TAY
	JSR lbl_b68d
	BEQ lbl_87be
	LDA $051F
	BNE lbl_87be
	LDA #$C0
lbl_87b3:
	STA $051C
	INC $13
lbl_87b8:
	RTS
lbl_87b9:
	JSR $74B7
	BNE lbl_87b8
lbl_87be:
	LDA #$00
	STA $13
	STA $051F
	RTS
lbl_87c6:
	JSR $EA3D
	JSR $EA51
	LDA #$05
	LDY #$1F
	JSR $E608
	LDA #$00
	STA $54
	STA $55
	LDY $EB
	LDA $6AFE,Y
	STA $04CD
	JSR lbl_b0b6
	LDA $5A
	BEQ lbl_8820
	LDA $10
	BNE lbl_8815
	LDY $EB
	LDA $687E,Y
	AND #$F0
	STA $70
	LDA $6AFE,Y
	AND #$07
	ASL
	ASL
	ASL
	ASL
	ADC #$4D
	STA $84
	LDY $65
	CPY #$24
	BNE lbl_8815
	STA $0412
	CLC
	ADC #$10
	STA $84
	LDA #$08
	STA $0603
lbl_8815:
	LDA #$04
	STA $98
	LDA #$00
	STA $53
	JMP lbl_8859
lbl_8820:
	LDA $98
	STA $53
	JSR $7013
	AND $EE
	STA $55
	BEQ lbl_8831
	LDA #$02
	STA $54
lbl_8831:
	LDA $10
	BEQ lbl_8859
	LDY #$00
	LDA $98
	AND #$03
	BEQ lbl_8845
	AND #$01
	BNE lbl_8843
	LDY #$F0
lbl_8843:
	STY $70
lbl_8845:
	JSR lbl_b0c3
	AND #$07
	BEQ lbl_8856
	CMP #$05
	BEQ lbl_8856
	CMP #$06
	BEQ lbl_8856
	INY
	INY
lbl_8856:
	LDA $8672,Y
lbl_8859:
	STA $0394
	JSR lbl_b05e
	LDX #$0B
	STX $0340
lbl_8864:
	DEC $0492,X
	JSR $EEE4
	STA $AC,X
	STA $98,X
	STA $3D,X
	INC $03D0,X
	INC $0405,X
	LDA #$20
	STA $03BC,X
	DEX
	BNE lbl_8864
	LDY $EB
	LDA $697E,Y
	PHA
	AND #$3F
	STA $02
	LDA $69FE,Y
	ASL
	BCC lbl_8895
	LDA $02
	CLC
	ADC #$40
	STA $02
lbl_8895:
	PLA
	AND #$C0
	CLC
	ROL
	ROL
	ROL
	TAY
	LDA $6BA2,Y
	LDY $02
	CPY #$62
	BCS lbl_88ac
	CPY #$32
	BCC lbl_88ac
	LDA #$01
lbl_88ac:
	STA $03
	LDA $10
	BNE lbl_88b8
	JSR lbl_90ae
	JMP lbl_88c7
lbl_88b8:
	JSR lbl_9293
	LDA $12
	CMP #$09
	BNE lbl_88c7
	LDA #$00
	STA $02
	STA $03
lbl_88c7:
	LDA $03
	STA $034E
	BEQ lbl_8909
	LDA $02
	BEQ lbl_8909
	CMP #$62
	BCS lbl_88e5
	LDX #$00
lbl_88d8:
	LDA $02
	STA $0350,X
	INX
	DEC $03
	BNE lbl_88d8
	JMP lbl_8903
lbl_88e5:
	LDA $02
	SEC
	SBC #$62
	ASL
	TAY
	LDA $873F,Y
	STA $04
	INY
	LDA $873F,Y
	STA $05
	LDY #$00
lbl_88f9:
	LDA ($04),Y
	STA $0350,Y
	INY
	CPY $03
	BNE lbl_88f9
lbl_8903:
	LDA $0350
	STA $035F
lbl_8909:
	JSR lbl_896e
	LDA $10
	BNE lbl_8913
	JSR lbl_8941
lbl_8913:
	JSR $71DE
	LDA #$00
	STA $3D
	STA $C0
	STA $D3
	LDA #$04
	STA $03D0
	JSR lbl_b366
	JSR $EAD3
lbl_8929:
	JSR $6E40
	LDA $12
	CMP #$0B
	BEQ lbl_8939
	CMP #$0C
	BEQ lbl_8939
	JSR $F238
lbl_8939:
	LDA $5A
	BEQ lbl_8940
	JSR lbl_8bab
lbl_8940:
	RTS
lbl_8941:
	LDA $EB
	CMP #$3F
	BEQ lbl_894b
	CMP #$55
	BNE lbl_8950
lbl_894b:
	LDA #$61
	JMP lbl_895d
lbl_8950:
	LDA $052C
	STA $7B
	LDA $052D
	STA $8F
	LDA $052B
lbl_895d:
	STA $035A
	JSR $6DB7
	STA $B7
	RTS
.byte $20
.byte $60
.byte $90
.byte $D0
.byte $9D
.byte $5D
.byte $7D
.byte $9D
lbl_896e:
	LDY $034E
	LDA $02
	BEQ lbl_89c4
	CMP #$37
	BEQ lbl_89c4
	LDA $10
	BNE lbl_8984
	LDA $04CD
	AND #$08
	BNE lbl_89c4
lbl_8984:
	LDA $034E
	BEQ lbl_89c4
	LDA $98
	LDY #$FF
lbl_898d:
	INY
	LSR
	BCC lbl_898d
	LDA $8646,Y
	STA $06
	LDA $864A,Y
	STA $07
	LDY $0524
	LDX #$01
lbl_89a0:
	LDA ($06),Y
	PHA
	ASL
	ASL
	ASL
	ASL
	STA $70,X
	PLA
	AND #$F0
	ORA #$0D
	STA $84,X
	JSR lbl_8a04
	BCS lbl_89b6
	INX
lbl_89b6:
	INY
	CPY #$09
	BCC lbl_89bd
	LDY #$00
lbl_89bd:
	CPX #$0A
	BCC lbl_89a0
	STY $0524
lbl_89c4:
	LDA $12
	CMP #$09
	BNE lbl_89df
	LDX #$03
lbl_89cc:
	LDA #$1B
	STA $0350,X
	LDA $8966,X
	STA $71,X
	LDA $896A,Y
	STA $85,X
	DEX
	BPL lbl_89cc
	RTS
lbl_89df:
	CMP #$0B
	BEQ lbl_89e7
	CMP #$0C
	BNE lbl_8a03
lbl_89e7:
	LDX #$07
	LDA #$00
lbl_89eb:
	STA $0350,X
	DEX
	BPL lbl_89eb
	LDY $EB
	LDA $68FE,Y
	AND #$FC
	SEC
	SBC #$40
	LSR
	LSR
	CLC
	ADC #$6A
	STA $0350
lbl_8a03:
	RTS
lbl_8a04:
	TYA
	PHA
	JSR $EDF4
	PLA
	TAY
	LDA $049E,X
	CMP $034A
	BCS lbl_8a2d
	LDA $70
	SEC
	SBC $70,X
	JSR $701F
	CMP #$22
	BCS lbl_8a2b
	LDA $84
	SEC
	SBC $84,X
	JSR $701F
	CMP #$22
	BCC lbl_8a2d
lbl_8a2b:
	CLC
	RTS
lbl_8a2d:
	SEC
	RTS
lbl_8a2f:
	LDX #$00
	JSR $FE98
	JSR $F23C
	LDA $13
	BNE lbl_8a60
	JSR $E5F7
	JSR $E679
	JSR lbl_8929
	JSR $E78A
	JSR lbl_b559
	LDA #$00
	STA $E0
	STA $0670
	JSR $6D00
	INC $13
	LDA #$10
	STA $04F0
	LDA #$21
	STA $28
	RTS
lbl_8a60:
	LDA $28
	BNE lbl_8a96
	JSR $E85A
	AND #$3E
	CMP #$3E
	BEQ lbl_8a75
	LDA $EE
	STA $0521
	JSR lbl_82fb
lbl_8a75:
	LDA #$60
	STA $051C
	LDA #$02
	STA $32
	LDA #$00
	STA $13
	STA $E9
	STA $AC
	LDA #$04
	STA $E5
	STA $98
	INC $11
lbl_8a8e:
	LDA #$80
	STA $0604
	STA $0603
lbl_8a96:
	RTS
lbl_8a97:
	JSR $E6CE
	ORA $E6BE,X
	STA ($00),Y
	RTS
lbl_8aa0:
	JSR $E6CE
	LDA $E6BE,X
	EOR #$FF
	AND ($00),Y
	STA ($00),Y
	RTS
lbl_8aad:
	LDA $04CE
	BEQ lbl_8ac2
	LDA #$08
	STA $0E
lbl_8ab6:
	LDA $0E
	AND $EE
	BEQ lbl_8ac8
lbl_8abc:
	LSR $0E
	LDA $0E
	BNE lbl_8ab6
lbl_8ac2:
	LDA #$00
	STA $04CE
	RTS
lbl_8ac8:
	LDA $0E
	STA $02
	JSR lbl_a3f6
	CMP #$07
	BNE lbl_8abc
	LDA_absolute $0054
	BNE lbl_8ae2
	LDA $02
lbl_8ada:
	STA_absolute $0055
	LDA #$06
	STA_absolute $0054
lbl_8ae2:
	RTS
.byte $F3
.byte $02
.byte $40
.byte $4F
.byte $67
.byte $7F
.byte $03
.byte $0D
.byte $00
.byte $23
.byte $D2
.byte $43
.byte $00
.byte $FF
.byte $D2
.byte $DA
.byte $E2
lbl_8af4:
	LDA $13
	ASL
	BCS lbl_8b35
	LDA $F8
	AND #$10
	BNE lbl_8b2a
	LDA $F8
	AND #$20
	BEQ lbl_8b16
	LDA #$01
	STA $0604
	INC $13
	LDA $13
	CMP #$03
	BNE lbl_8b16
	LDA #$00
	STA $13
lbl_8b16:
	LDY #$02
lbl_8b18:
	LDA $8AE3,Y
	STA $0201,Y
	DEY
	BPL lbl_8b18
	LDY $13
	LDA $8AE6,Y
	STA $0200
	RTS
lbl_8b2a:
	LDA $13
	ORA #$80
	STA $13
	LDA #$40
	STA $29
	RTS
lbl_8b35:
	LDA $29
	BEQ lbl_8b5d
	LDY #$04
lbl_8b3b:
	LDA $8AEC,Y
	STA $0302,Y
	DEY
	BPL lbl_8b3b
	LDA $13
	AND #$03
	TAY
	LDA $8AF1,Y
	STA $0303
	LDY #$00
	LDA $29
	AND #$04
	BEQ lbl_8b59
	LDY #$55
lbl_8b59:
	STY $0305
	RTS
lbl_8b5d:
	LDA $13
	AND #$03
	STA $13
	JSR $EA51
	LDY $13
	LDA $8AE9,Y
	STA $12
	LDA $066F
	AND #$F0
	ORA #$02
	STA $066F
	LDA #$FF
	STA $0670
	JSR $EBA3
	CPY #$02
	BNE lbl_8b88
	DEY
	STY $13
	INC $11
lbl_8b88:
	JMP $6EE9
lbl_8b8b:
	LDA $049E
	CMP #$24
	BNE lbl_8ba1
	LDA $15
	AND #$03
	BNE lbl_8ba8
	INC $84
	LDA $84
	CMP $0412
	BNE lbl_8ba8
lbl_8ba1:
	LDA $5B
	STA $12
	JSR $EBA3
lbl_8ba8:
	JSR $F23C
lbl_8bab:
	LDA $024A
	ORA #$20
	STA $024A
	LDA $024E
	ORA #$20
	STA $024E
	RTS
lbl_8bbc:
	JSR lbl_8bfa
	LDA $04CD
	AND #$07
	BEQ lbl_8be6
	JSR lbl_8be7
	BCC lbl_8be6
	LDA $04CD
	AND #$07
	CMP #$07
	BNE lbl_8be6
	LDA $BF
	BEQ lbl_8be6
	JSR $7314
	BNE lbl_8be6
	LDA #$00
	STA $BF
	LDA #$02
	STA $0602
lbl_8be6:
	RTS
lbl_8be7:
	JSR switch_jump
	.addr lbl_8be6
	.addr lbl_8c1a
	.addr lbl_8c28
	.addr lbl_8c6f
	.addr lbl_8c4c
	.addr lbl_8c53
	.addr lbl_8c76
	.addr lbl_8c1a

lbl_8bfa:
	LDY $0340
lbl_8bfd:
	LDA $0350,Y
	BEQ lbl_8c0e
	CMP #$2B
	BCC lbl_8c19
	CMP #$2E
	BCC lbl_8c0e
	CMP #$49
	BCC lbl_8c19
lbl_8c0e:
	DEY
	BPL lbl_8bfd
	LDA #$00
	STA $0512
	INC $034D
lbl_8c19:
	RTS
lbl_8c1a:
	LDA $034D
	BEQ lbl_8c26
lbl_8c1f:
	LDA #$01
	STA $04CE
	SEC
	RTS
lbl_8c26:
	CLC
	RTS
lbl_8c28:
	LDA $0350
	BEQ lbl_8c31
	CMP #$53
	BCC lbl_8c26
lbl_8c31:
	LDY $0340
lbl_8c34:
	LDA $0350,Y
	BEQ lbl_8c47
	CMP #$53
	BCS lbl_8c47
	LDA $0406,Y
	BNE lbl_8c47
	LDA #$10
	STA $0406,Y
lbl_8c47:
	DEY
	BPL lbl_8c34
	SEC
	RTS
lbl_8c4c:
	LDA $04CF
	BEQ lbl_8c26
	BNE lbl_8c1f
lbl_8c53:
	LDA $04CF
	BEQ lbl_8c26
	LSR
	BCC lbl_8c26
	INC $04CF
	LDX #$0B
	LDA #$D0
	STA $70,X
	LDA #$60
	STA $84,X
	LDA #$70
	JSR $E862
	SEC
	RTS
lbl_8c6f:
	LDA $0672
	BNE lbl_8c1f
	CLC
	RTS
lbl_8c76:
	LDA $0350
	BEQ lbl_8c1f
	CLC
	RTS
lbl_8c7d:
	LDA $13
	JSR switch_jump
	.addr lbl_8ca1
	.addr lbl_8c9c
	.addr lbl_8cac
	.addr lbl_8cbe
	.addr lbl_8cc3
	.addr lbl_8cc8
	.addr lbl_8cd1
	.addr lbl_8cda
	.addr lbl_8cfb
	.addr lbl_8d01
	.addr lbl_8d0d
	.addr lbl_8d56
	.addr lbl_8d63

lbl_8c9c:
	LDA #$80
	STA $0602
lbl_8ca1:
	JSR lbl_8484
lbl_8ca4:
	LDX #$2B
lbl_8ca6:
	JSR lbl_b0e1
	INC $13
	RTS
lbl_8cac:
	JSR lbl_ac10
	BCC lbl_8cb4
	JSR lbl_83b2
lbl_8cb4:
	LDA $0302
	CLC
	ADC #$08
	STA $0302
	RTS
lbl_8cbe:
	LDA #$60
lbl_8cc0:
	JMP lbl_b12e
lbl_8cc3:
	LDA #$62
	JMP lbl_8cc0
lbl_8cc8:
	LDA #$00
	STA $E3
	LDA #$5E
	JMP lbl_8cc0
lbl_8cd1:
	LDA $FF
	AND #$FE
	STA $FF
lbl_8cd7:
	INC $13
	RTS
lbl_8cda:
	LDA $E5
	BEQ lbl_8cd7
	LDA $33
	BNE lbl_8cf2
	LDA #$05
	STA $33
	LDA $98
	LSR
	LSR
	BCC lbl_8cf5
	DEC $E5
	LDA #$04
lbl_8cf0:
	STA $98
lbl_8cf2:
	JMP $F23C
lbl_8cf5:
	BNE lbl_8cf0
	LDA #$08
	BNE lbl_8cf0
lbl_8cfb:
	JSR $74B7
	BEQ lbl_8cd7
	RTS
lbl_8d01:
	LDA #$2C
	STA $14
	LDA #$0F
	STA $E5
	LDA #$18
	BNE lbl_8d51
lbl_8d0d:
	LDA $33
	BNE lbl_8d55
	LDX #$62
	LDA $E5
	CMP #$06
	BCS lbl_8d1b
	LDX #$64
lbl_8d1b:
	LDA $84
	STA $0248
	STA $024C
	STX $0249
	STX $024D
	LDA #$01
	STA $024A
	LDA #$41
	STA $024E
	LDA $70
	STA $024B
	CLC
	ADC #$08
	STA $024F
	DEC $E5
	BNE lbl_8d55
	LDA #$10
	STA $0604
	LDA #$F8
	STA $0248
	STA $024C
	LDA #$2E
lbl_8d51:
	STA $33
	INC $13
lbl_8d55:
	RTS
lbl_8d56:
	LDA $33
	BNE lbl_8d55
	LDA #$60
	STA $33
	LDA #$46
	JMP lbl_8cc0
lbl_8d63:
	LDA $33
	BNE lbl_8d7f
	JSR $EBA3
	LDA #$08
	STA $12
	LDA #$40
	STA $0602
	LDX $16
	LDA $0630,X
	CMP #$FF
	BEQ lbl_8d7f
	INC $0630,X
lbl_8d7f:
	RTS
.byte $D6
.byte $45
.byte $E9
.byte $07
.byte $C6
.byte $55
.byte $D9
.byte $17
.byte $BE
.byte $54
.byte $D1
.byte $1F
lbl_8d8c:
	LDA $98
	JSR $7013
	STA $00
	JSR $7013
	LDA $70
	CPY #$02
	BCS lbl_8d9e
	LDA $84
lbl_8d9e:
	STA $02
	TYA
	PHA
	CLC
	ADC #$08
	TAY
	LDA #$80
	JSR lbl_8dc5
	PLA
	TAY
	LDA $01
	CMP #$FF
	BNE lbl_8dba
	LDA $98
	STA $00
	JSR $7013
lbl_8dba:
	LDA $10
	BEQ lbl_8dc3
	TYA
	CLC
	ADC #$04
	TAY
lbl_8dc3:
	LDA #$00
lbl_8dc5:
	STA $01
	LDA $00
	AND #$0A
	BEQ lbl_8df4
	LDA $02
	CMP $8D80,Y
	BCC lbl_8dfb
lbl_8dd4:
	LDA $F8
	AND $01
	STA $F8
	LDA $10
	BEQ lbl_8df3
	LDA $01
	BNE lbl_8df3
	LDY #$0C
	LDA $98
	AND #$0C
	BNE lbl_8dec
	LDY #$03
lbl_8dec:
	TYA
	AND $03F8
	STA $03F8
lbl_8df3:
	RTS
lbl_8df4:
	LDA $02
	CMP $8D80,Y
	BCC lbl_8dd4
lbl_8dfb:
	LDA #$FF
	STA $01
lbl_8dff:
	RTS
lbl_8e00:
	LDA $0657
	BEQ lbl_8dff
	LDX #$0D
	LDA $AC,X
	BNE lbl_8dff
	LDA #$05
	STA $03D0,X
	LDA #$01
	JSR lbl_8e8f
	LDA #$01
	JMP $6D80
.byte $31
.byte $FF
lbl_8e1c:
	LDA $0656
	CMP #$0F
	BEQ lbl_8e71
	JSR switch_jump
	.addr lbl_8e38
	.addr $70DD
	.addr lbl_8e72
	.addr lbl_8ea6
	.addr $714F
	.addr $EF71
	.addr lbl_8ea7
	.addr lbl_8eb6
	.addr lbl_8ec7
	
lbl_8e38:
	LDA $0674
	ORA $0675
	BEQ lbl_8e71
	LDX #$0F
	LDA $AC,X
	BEQ lbl_8e49
	ASL
	BCC lbl_8e71
lbl_8e49:
	LDA #$10
	STA $AC,X
	LDY $0675
	LDA $8E1A,Y
	STA $0380,X
	JSR $711B
	LDA #$C0
	STA $03BC,X
	LDA #$03
	STA $03D0,X
	LDA #$01
	STA $03D0
	LDA $03F8
	BNE lbl_8e6f
	LDA $98
lbl_8e6f:
	STA $98,X
lbl_8e71:
	RTS
lbl_8e72:
	LDA $065A
	BEQ lbl_8ea6
	LDX #$12
	LDA $AC,X
	BEQ lbl_8e80
	ASL
	BCC lbl_8ea6
lbl_8e80:
	LDA $066D
	BEQ lbl_8ea6
	LDA #$02
	JSR $6D80
	INC $067E
	LDA #$10
lbl_8e8f:
	STA $AC,X
	LDA #$C0
	STA $03BC,X
	JSR $7116
	LDA $98,X
	AND #$0C
	BEQ lbl_8ea6
	LDA $70,X
	CLC
	ADC #$03
	STA $70,X
lbl_8ea6:
	RTS
lbl_8ea7:
	LDX #$0F
	LDA $AC,X
	BNE lbl_8ec6
	LDA #$FF
	STA $28,X
	LDA #$80
	JMP $7114
lbl_8eb6:
	LDA $065E
	BEQ lbl_8ec6
	DEC $065E
	LDA #$01
	STA $63
	LDA #$02
	STA $E0
lbl_8ec6:
	RTS
lbl_8ec7:
	LDX #$12
	LDA $AC,X
	BNE lbl_8ec6
	LDA #$05
	STA $03D0,X
	LDA #$31
	JMP lbl_8e8f
lbl_8ed7:
	LDA $12
	CMP #$09
	BNE lbl_8f1c
	LDA $84
	CMP #$40
	BCS lbl_8ec6
	LDA $03F8
	AND #$08
	BEQ lbl_8ec6
	LDY #$06
	LDA $EB
	PHA
lbl_8eef:
	DEY
	CMP $6BB2,Y
	BNE lbl_8eef
	TAY
	LDA $70
	CMP #$80
	BCS lbl_8f02
	LDA $687E,Y
	JMP lbl_8f05
lbl_8f02:
	LDA $68FE,Y
lbl_8f05:
	JSR lbl_8f58
	PLA
	TAY
	LDA $697E,Y
	PHA
	AND #$F0
	STA $70
	PLA
	ASL
	ASL
	ASL
	ASL
	ORA #$0D
	STA $84
	RTS
lbl_8f1c:
	PHA
	JSR $6E46
	PLA
	CMP #$0C
	BNE lbl_8f73
	LDA $0394
	BNE lbl_8f72
	LDA $84
	CMP #$9D
	BNE lbl_8f73
	LDY #$01
	LDA $70
	CMP #$50
	BEQ lbl_8f42
	INY
	CMP #$80
	BEQ lbl_8f42
	INY
	CMP #$B0
	BNE lbl_8f72
lbl_8f42:
	STY $00
	LDY #$FF
	LDA $EB
lbl_8f48:
	INY
	CMP $6BB2,Y
	BNE lbl_8f48
	TYA
	CLC
	ADC $00
	AND #$03
	TAY
	LDA $6BB2,Y
lbl_8f58:
	STA $EB
	JSR $E6C6
lbl_8f5d:
	LDA #$0A
	STA $12
lbl_8f61:
	LDA #$00
	STA $13
	STA $11
	STA $0F
	STA $AC
	STA $C0
	STA $D3
	STA $04F0
lbl_8f72:
	RTS
lbl_8f73:
	JSR $F161
	LDA $11
	BEQ lbl_8f5d
	RTS
lbl_8f7b:
	LDX $64
	BEQ lbl_8fc8
	LDA $AC,X
	BEQ lbl_8fc1
	LDA $98,X
	AND #$0C
	BEQ lbl_8f9a
	LDA $70
	CMP $70,X
	BNE lbl_8fc1
	LDA $84
	CLC
	ADC #$03
	SEC
	SBC $84,X
	JMP lbl_8fa8
lbl_8f9a:
	LDA $84
	CLC
	ADC #$03
	CMP $84,X
	BNE lbl_8fc1
	LDA $70
	SEC
	SBC $70,X
lbl_8fa8:
	JSR $701F
	STA $00
	CMP #$10
	BCC lbl_8fc9
	CMP #$10
	BNE lbl_8fc1
	LDA $98
	CMP $98,X
	BNE lbl_8fc1
	LDA $AC,X
	CMP #$01
	BEQ lbl_8fcd
lbl_8fc1:
	LDA #$00
	STA $64
	JSR $FEB1
lbl_8fc8:
	RTS
lbl_8fc9:
	LDA #$02
	STA $AC,X
lbl_8fcd:
	LDA $03F8
	BEQ lbl_9011
	LDA $98
	LDY $00
	BEQ lbl_8fdc
	CMP $98,X
	BEQ lbl_9011
lbl_8fdc:
	LDA $98,X
	CMP $0F
	BEQ lbl_9011
	JSR $7013
	CMP $98
	BEQ lbl_9011
	CMP #$04
	BNE lbl_900f
	LDA $03F8
	CMP #$08
	BNE lbl_900f
	JSR lbl_901f
	LDA $84
	PHA
	SEC
	SBC #$08
	STA $84
	JSR $EDFA
	PLA
	STA $84
	LDA $0F
	LDY $049E
	CPY $034A
	BCC lbl_8fcd
lbl_900f:
	LDA #$00
lbl_9011:
	PHA
	LDX $64
	JSR $FA93
	LDY #$0C
	LDA #$00
	JSR $790C
	PLA
lbl_901f:
	STA $0F
	LDX #$00
	RTS
lbl_9024:
	LDA $0525
	STA $0A
lbl_9029:
	LDY #$10
	LDA $0A
	AND #$0F
	BEQ lbl_9037
	LDY #$F0
	CMP #$0F
	BNE lbl_903d
lbl_9037:
	TYA
	CLC
	ADC $0A
	STA $0A
lbl_903d:
	LDA $0A
	AND #$F0
	CMP #$E0
	BNE lbl_904a
	INC $0A
	JMP lbl_9050
lbl_904a:
	CMP #$40
	BNE lbl_9050
	DEC $0A
lbl_9050:
	JSR lbl_ac07
	LDA $0A
	AND #$0F
	TAY
	BEQ lbl_9062
lbl_905a:
	LDA #$2C
	JSR $7276
	DEY
	BNE lbl_905a
lbl_9062:
	LDA $0A
	AND #$F0
	SEC
	SBC #$40
	LSR
	LSR
	LSR
	TAY
	LDA ($00),Y
	CMP #$84
	BCC lbl_907a
	LDA $0A
	CMP $0525
	BNE lbl_9029
lbl_907a:
	LDA $0A
	STA $0525
	RTS
lbl_9080:
	LDA $13
	JSR switch_jump
	.addr lbl_b117
	.addr lbl_b14f
	.addr lbl_b130
	.addr lbl_ab4d
	.addr lbl_ac10
	.addr lbl_b16b
	.addr lbl_b173
	.addr $6D89
	.addr lbl_b180

lbl_9097:
	LDA $13
	JSR switch_jump
	.addr lbl_b117
	.addr lbl_b14f
	.addr lbl_b130
	.addr lbl_ab5e
	.addr lbl_ac10
	.addr lbl_b16b
	.addr lbl_b173
	.addr $6D89
	.addr lbl_b180

lbl_90ae:
	LDY #$05
	LDA $EB
lbl_90b2:
	CMP $0621,Y
	BEQ lbl_90ca
	DEY
	BPL lbl_90b2
	JSR $E6CE
	AND #$07
	CMP #$07
	BNE lbl_90ca
	LDA ($00),Y
	AND #$F8
	STA ($00),Y
lbl_90c9:
	RTS
lbl_90ca:
	JSR $E6CE
	AND #$07
	BEQ lbl_90c9
	CMP #$07
	BEQ lbl_90de
	STA $04
	LDA $03
	SEC
	SBC $04
	BPL lbl_90e2
lbl_90de:
	LDA #$00
	STA $02
lbl_90e2:
	STA $03
	RTS
lbl_90e5:
	JSR $E6CE
	AND #$07
	STA $02
	LDA ($00),Y
	AND #$F8
	STA ($00),Y
	LDA $034F
	CMP $034E
	BCS lbl_9103
	AND #$07
	CLC
	ADC $02
	CMP #$07
	BCC lbl_9105
lbl_9103:
	LDA #$07
lbl_9105:
	ORA ($00),Y
	STA ($00),Y
	RTS
lbl_910a:
	LDA $13
	JSR switch_jump
	.addr lbl_b117
	.addr lbl_b133
	.addr lbl_b13c
	.addr lbl_ab62
	.addr lbl_ac10
	.addr lbl_b12c
	.addr lbl_b143
	.addr lbl_b13c
	.addr lbl_b199
	.addr lbl_b1cd

;9123
lbl_9123:
	LDY #$00
	BEQ lbl_9129
	LDY #$01
lbl_9129:
	STY $0C
	LDY $034F,X
	INY
	STA $0D
	STY $0E
	STX $08
	LDA #$40
	STA $0343
	LDA #$44
	JMP $7804
lbl_913f:
	LDA $53
	BEQ lbl_915e
	LDY $03F8
	BEQ lbl_915e
	LDA $98
	AND $03F8
	BNE lbl_915b
	LDA $98
	JSR $7013
	AND $03F8
	BNE lbl_915b
	LDA $98
lbl_915b:
	STA $03F8
lbl_915e:
	RTS
lbl_915f:
	LDA #$F8
	STA $0240
	STA $0244
	RTS
.byte $78
.byte $78
.byte $8D
.byte $8D
.byte $3D
.byte $BD
.byte $00
.byte $CF
.byte $5E
.byte $DE
.byte $21
.byte $F1
.byte $3D
.byte $BF
.byte $00
.byte $D2
.byte $5C
.byte $DE
.byte $1F
.byte $F1
lbl_917c:
	LDA $53
	BNE lbl_91a2
lbl_9180:
	LDA $98
	JSR lbl_920f
	LDY #$03
lbl_9187:
	LDA $00
	CMP $9168,Y
	BNE lbl_919a
	LDA $01
	CMP $916C,Y
	BCC lbl_919a
	CMP $9170,Y
	BCC lbl_91d6
lbl_919a:
	DEY
	BPL lbl_9187
lbl_919d:
	LDA #$00
	STA $53
	RTS
lbl_91a2:
	PHA
	JSR lbl_920f
	PLA
	JSR $7013
	LDA $01
	CMP $916C,Y
	BCC lbl_91bc
	CMP $9170,Y
	BCS lbl_91bc
	LDA $53
	CMP $98
	BEQ lbl_9180
lbl_91bc:
	LDY #$03
lbl_91be:
	LDA $00
	CMP $9168,Y
	BNE lbl_91d1
	LDA $01
	CMP $9174,Y
	BCC lbl_91d1
	CMP $9178,Y
	BCC lbl_91d6
lbl_91d1:
	DEY
	BPL lbl_91be
	BMI lbl_919d
lbl_91d6:
	STY $0E
	LDA $03F8
	AND #$0F
	STA $02
	STA $0C
	CMP $6DC3,Y
	BNE lbl_920b
	JSR lbl_a3f6
	STA $0D
	JSR lbl_9220
	LDY $0E
	BMI lbl_920b
	LDA $6DC3,Y
	STA $98
	STA $0F
	STA $53
	LDA $0D
	AND #$07
	CMP #$02
	BEQ lbl_920c
	CMP #$03
	BEQ lbl_920c
	CMP #$04
	BEQ lbl_920c
lbl_920b:
	RTS
lbl_920c:
	JMP $F182
lbl_920f:
	LDX $70
	LDY $84
	AND #$03
	BEQ lbl_921b
	LDY $70
	LDX $84
lbl_921b:
	STX $00
	STY $01
	RTS
lbl_9220:
	AND #$07
	JSR switch_jump
	.addr lbl_9239
	.addr lbl_9235
	.addr lbl_923a
	.addr lbl_923a
	.addr lbl_924a
	.addr lbl_926b
	.addr lbl_926b
	.addr lbl_9251

lbl_9235:
	LDY #$FF
	STY $0E
lbl_9239:
	RTS
lbl_923a:
	LDA $28
	BEQ lbl_9243
	CMP #$01
	BNE lbl_9247
	RTS
lbl_9243:
	LDA #$18
	STA $28
lbl_9247:
	JMP lbl_9235
lbl_924a:
	LDA $0C
	AND $EE
	BEQ lbl_9235
	RTS
lbl_9251:
	LDA $54
	BNE lbl_9235
	LDA $0C
	AND $EE
	BEQ lbl_9235
	AND $0519
	BEQ lbl_9262
	BNE lbl_928e
lbl_9262:
	LDA $0519
	ORA $0C
	STA $0519
	RTS
lbl_926b:
	LDA $0C
	AND $EE
	BNE lbl_9292
	LDA $54
	BNE lbl_928e
	LDA $0664
	BNE lbl_9282
	LDA $066E
	BEQ lbl_928b
	DEC $066E
lbl_9282:
	LDA $0C
	JSR lbl_8ada
	LDA #$20
	STA $28
lbl_928b:
	JMP lbl_9235
lbl_928e:
	LDA $28
	BNE lbl_928b
lbl_9292:
	RTS
lbl_9293:
	LDY #$05
	LDA $EB
lbl_9297:
	CMP $0621,Y
	BEQ lbl_92c6
	DEY
	BPL lbl_9297
	JSR $E6CE
	AND #$C0
	CMP #$C0
	BNE lbl_92c6
	LDA $02
	CMP #$32
	BCC lbl_92ba
	CMP #$3A
	BEQ lbl_92ba
	CMP #$3B
	BEQ lbl_92ba
	CMP #$49
	BCC lbl_92d0
lbl_92ba:
	LDA ($00),Y
	AND #$3F
	STA ($00),Y
	LDA #$00
	STA $0560,Y
	RTS
lbl_92c6:
	LDY $EB
	LDA $03
	SEC
	SBC $0560,Y
	BPL lbl_92d4
lbl_92d0:
	LDA #$00
	STA $02
lbl_92d4:
	STA $03
	RTS
lbl_92d7:
	JSR $E6CE
	AND #$3F
	STA ($00),Y
	LDA $034E
	BEQ lbl_9316
	LDA $034F
	BEQ lbl_92fb
	LDY $035F
	CPY #$32
	BCC lbl_92fb
	CPY #$3A
	BEQ lbl_92fb
	CPY #$3B
	BEQ lbl_92fb
	CPY #$49
	BCC lbl_9316
lbl_92fb:
	CMP $034E
	BCS lbl_9316
	LDY $EB
	CLC
	ADC $0560,Y
	STA $0560,Y
	CMP #$03
	BCC lbl_930f
	LDA #$02
lbl_930f:
	CLC
	ROR
	ROR
	ROR
	JMP lbl_931f
lbl_9316:
	LDY $EB
	LDA #$0F
	STA $0560,Y
	LDA #$C0
lbl_931f:
	ORA ($00),Y
	STA ($00),Y
	RTS
.byte $00
.byte $10
.byte $20
.byte $40
lbl_9328:
	JSR $E6CE
	LDY $6BBC
	LDA ($00),Y
	AND #$C0
	CMP #$C0
	BEQ lbl_934d
	LDY $EB
	LDA $6A7E,Y
	AND #$60
	ASL
	ROL
	ROL
	ROL
	TAX
	LDA $9324,X
	BEQ lbl_934d
	ORA #$80
	STA $0601
	RTS
lbl_934d:
	LDA #$80
	JMP $6D80
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
lbl_9400:
	LDY $09
	LDA $A5E3,Y
	CLC
	ADC $07
	TAY
	LDA $A5D5,Y
	TAY
	LDA ($02),Y
	STA $0302,X
	INX
	INC $07
	DEC $04
	RTS
.byte $00
.byte $00
.byte $00
.byte $00
.byte $00
.byte $00
.byte $00
.byte $50
.byte $01
.byte $01
.byte $81
.byte $01
.byte $01
.byte $01
.byte $01
.byte $01
.byte $01
.byte $F1
.byte $C8
.byte $A0
.byte $A1
.byte $A0
.byte $06
.byte $38
.byte $A1
.byte $D2
.byte $A5
.byte $A4
.byte $A2
.byte $A3
.byte $F0
.byte $A6
.byte $01
.byte $01
.byte $01
.byte $50
.byte $01
.byte $01
.byte $81
.byte $01
.byte $01
.byte $A7
.byte $A9
.byte $C8
.byte $C7
.byte $A0
.byte $06
.byte $06
.byte $A1
.byte $A5
.byte $A4
.byte $A8
.byte $F0
.byte $A6
.byte $01
.byte $81
.byte $01
.byte $01
.byte $50
.byte $00
.byte $00
.byte $00
.byte $00
.byte $00
.byte $00
.byte $E6
.byte $06
.byte $06
.byte $A1
.byte $A0
.byte $E7
.byte $E6
.byte $A1
.byte $84
.byte $90
.byte $02
.byte $10
.byte $02
.byte $02
.byte $A8
.byte $A9
.byte $A8
.byte $A9
.byte $03
.byte $05
.byte $E4
.byte $24
.byte $02
.byte $02
.byte $03
.byte $05
.byte $22
.byte $24
.byte $02
.byte $A8
.byte $A6
.byte $A7
.byte $A6
.byte $A7
.byte $F1
.byte $A9
.byte $A8
.byte $A9
.byte $A2
.byte $A3
.byte $A8
.byte $A6
.byte $A7
.byte $A6
.byte $A7
.byte $A6
.byte $01
.byte $01
.byte $01
.byte $01
.byte $01
.byte $50
.byte $01
.byte $A7
.byte $F1
.byte $F0
.byte $A6
.byte $81
.byte $01
.byte $A7
.byte $A6
.byte $01
.byte $01
.byte $A7
.byte $A9
.byte $A8
.byte $A9
.byte $71
.byte $32
.byte $33
.byte $02
.byte $34
.byte $02
.byte $34
.byte $02
.byte $34
.byte $A8
.byte $F0
.byte $00
.byte $00
.byte $A9
.byte $10
.byte $53
.byte $54
.byte $B1
.byte $55
.byte $B2
.byte $54
.byte $54
.byte $54
.byte $56
.byte $02
.byte $B5
.byte $A8
.byte $00
.byte $00
.byte $F1
.byte $A9
.byte $B7
.byte $02
.byte $B7
.byte $67
.byte $68
.byte $70
.byte $B7
.byte $02
.byte $B7
.byte $A5
.byte $A4
.byte $A8
.byte $00
.byte $00
.byte $00
.byte $00
.byte $00
.byte $00
.byte $50
.byte $A7
.byte $A9
.byte $10
.byte $02
.byte $A2
.byte $A3
.byte $F0
.byte $F1
.byte $A9
.byte $02
.byte $02
.byte $02
.byte $A8
.byte $F0
.byte $F1
.byte $A9
.byte $A5
.byte $A4
.byte $02
.byte $D2
.byte $C8
.byte $C7
.byte $A0
.byte $38
.byte $E7
.byte $00
.byte $80
.byte $80
.byte $80
.byte $80
.byte $80
.byte $96
.byte $80
.byte $80
.byte $80
.byte $80
.byte $13
.byte $13
.byte $13
.byte $13
.byte $13
.byte $13
.byte $13
.byte $00
.byte $02
.byte $02
.byte $67
.byte $70
.byte $02
.byte $67
.byte $D7
.byte $70
.byte $02
.byte $67
.byte $70
.byte $02
.byte $00
.byte $13
.byte $00
.byte $F1
.byte $A9
.byte $02
.byte $33
.byte $02
.byte $32
.byte $B6
.byte $34
.byte $D2
.byte $02
.byte $64
.byte $F2
.byte $F3
.byte $02
.byte $64
.byte $66
.byte $02
.byte $E5
.byte $D8
.byte $66
.byte $02
.byte $02
.byte $B6
.byte $71
.byte $02
.byte $32
.byte $02
.byte $33
.byte $02
.byte $A8
.byte $00
.byte $00
.byte $E6
.byte $06
.byte $83
.byte $06
.byte $A1
.byte $84
.byte $90
.byte $D2
.byte $64
.byte $F2
.byte $F3
.byte $64
.byte $F2
.byte $F3
.byte $64
.byte $66
.byte $02
.byte $D2
.byte $C8
.byte $C7
.byte $A0
.byte $06
.byte $06
.byte $06
.byte $06
.byte $83
.byte $06
.byte $A1
.byte $84
.byte $90
.byte $02
.byte $02
.byte $A2
.byte $A3
.byte $B7
.byte $02
.byte $02
.byte $B7
.byte $02
.byte $02
.byte $B7
.byte $B5
.byte $02
.byte $D2
.byte $B7
.byte $C8
.byte $A0
.byte $06
.byte $E7
.byte $E6
.byte $38
.byte $06
.byte $E7
.byte $E6
.byte $A1
.byte $A2
.byte $A3
.byte $A8
.byte $A9
.byte $D2
.byte $B5
.byte $A8
.byte $A9
.byte $A8
.byte $A9
.byte $A2
.byte $A3
.byte $A8
.byte $A9
.byte $D2
.byte $02
.byte $A0
.byte $06
.byte $A1
.byte $A6
.byte $A7
.byte $F1
.byte $A9
.byte $02
.byte $A5
.byte $A4
.byte $C8
.byte $A0
.byte $83
.byte $06
.byte $B4
.byte $B0
.byte $B0
.byte $B0
.byte $B0
.byte $73
.byte $73
.byte $73
.byte $73
.byte $73
.byte $73
.byte $73
.byte $73
.byte $73
.byte $73
.byte $73
.byte $73
.byte $73
.byte $72
.byte $72
.byte $72
.byte $72
.byte $D4
.byte $72
.byte $72
.byte $72
.byte $72
.byte $72
.byte $72
.byte $72
.byte $D4
.byte $72
.byte $72
.byte $72
.byte $72
.byte $72
.byte $72
.byte $72
.byte $72
.byte $72
.byte $72
.byte $72
.byte $72
.byte $72
.byte $72
.byte $72
.byte $72
.byte $72
.byte $C1
.byte $06
.byte $06
.byte $06
.byte $06
.byte $06
.byte $06
.byte $83
.byte $06
.byte $01
.byte $01
.byte $A7
.byte $A9
.byte $32
.byte $02
.byte $33
.byte $02
.byte $11
.byte $32
.byte $02
.byte $32
.byte $02
.byte $71
.byte $A8
.byte $A6
.byte $01
.byte $A7
.byte $A9
.byte $02
.byte $B5
.byte $02
.byte $B6
.byte $02
.byte $B7
.byte $02
.byte $B7
.byte $02
.byte $B7
.byte $02
.byte $B7
.byte $02
.byte $02
.byte $02
.byte $02
.byte $B5
.byte $71
.byte $A8
.byte $00
.byte $E6
.byte $04
.byte $04
.byte $D6
.byte $97
.byte $91
.byte $51
.byte $B8
.byte $51
.byte $51
.byte $51
.byte $51
.byte $51
.byte $51
.byte $51
.byte $B8
.byte $51
.byte $01
.byte $01
.byte $90
.byte $02
.byte $02
.byte $D2
.byte $02
.byte $02
.byte $02
.byte $02
.byte $02
.byte $64
.byte $66
.byte $E5
.byte $D8
.byte $65
.byte $66
.byte $E5
.byte $F3
.byte $64
.byte $F2
.byte $F3
.byte $02
.byte $00
.byte $13
.byte $00
.byte $00
.byte $E2
.byte $82
.byte $07
.byte $07
.byte $88
.byte $07
.byte $07
.byte $82
.byte $07
.byte $07
.byte $82
.byte $07
.byte $02
.byte $02
.byte $02
.byte $02
.byte $07
.byte $82
.byte $07
.byte $07
.byte $82
.byte $07
.byte $07
.byte $88
.byte $07
.byte $07
.byte $82
.byte $07
.byte $15
.byte $15
.byte $00
.byte $00
.byte $02
.byte $B7
.byte $B7
.byte $B7
.byte $67
.byte $D7
.byte $F5
.byte $70
.byte $B7
.byte $B7
.byte $B7
.byte $02
.byte $00
.byte $00
.byte $00
.byte $A9
.byte $02
.byte $71
.byte $32
.byte $34
.byte $B5
.byte $A8
.byte $00
.byte $00
.byte $A9
.byte $02
.byte $02
.byte $B5
.byte $02
.byte $02
.byte $02
.byte $02
.byte $B7
.byte $A8
.byte $A9
.byte $B7
.byte $A2
.byte $A3
.byte $B7
.byte $02
.byte $B6
.byte $B7
.byte $A2
.byte $A3
.byte $B7
.byte $02
.byte $02
.byte $02
.byte $B7
.byte $B6
.byte $B5
.byte $B7
.byte $A2
.byte $A3
.byte $B7
.byte $02
.byte $10
.byte $B7
.byte $02
.byte $B6
.byte $A8
.byte $00
.byte $00
.byte $A9
.byte $07
.byte $D3
.byte $02
.byte $A8
.byte $F0
.byte $F1
.byte $A9
.byte $39
.byte $91
.byte $51
.byte $97
.byte $91
.byte $51
.byte $97
.byte $91
.byte $51
.byte $97
.byte $91
.byte $51
.byte $97
.byte $13
.byte $C3
.byte $58
.byte $58
.byte $58
.byte $91
.byte $51
.byte $97
.byte $85
.byte $47
.byte $61
.byte $61
.byte $61
.byte $61
.byte $61
.byte $61
.byte $60
.byte $76
.byte $76
.byte $17
.byte $17
.byte $26
.byte $17
.byte $31
.byte $28
.byte $17
.byte $F9
.byte $F9
.byte $F9
.byte $F9
.byte $F9
.byte $F9
.byte $F9
.byte $F9
.byte $F9
.byte $F9
.byte $F9
.byte $F9
.byte $F9
.byte $F9
.byte $F9
.byte $F9
.byte $F9
.byte $F9
.byte $C4
.byte $C4
.byte $C4
.byte $C4
.byte $C4
.byte $C4
.byte $C4
.byte $C4
.byte $C4
.byte $C4
.byte $C4
.byte $C4
.byte $C4
.byte $F9
.byte $F9
.byte $C4
.byte $C4
.byte $C4
.byte $C4
.byte $C4
.byte $C4
.byte $C4
.byte $C4
.byte $C4
.byte $C4
.byte $C4
.byte $C4
.byte $C4
.byte $F9
.byte $F9
.byte $02
.byte $02
.byte $02
.byte $B6
.byte $02
.byte $03
.byte $05
.byte $21
.byte $21
.byte $E4
.byte $24
.byte $02
.byte $A0
.byte $06
.byte $06
.byte $06
.byte $06
.byte $06
.byte $83
.byte $A1
.byte $02
.byte $D2
.byte $A2
.byte $18
.byte $18
.byte $35
.byte $36
.byte $36
.byte $36
.byte $36
.byte $36
.byte $36
.byte $36
.byte $36
.byte $52
.byte $52
.byte $52
.byte $52
.byte $52
.byte $52
.byte $86
.byte $E1
.byte $13
.byte $13
.byte $13
.byte $13
.byte $13
.byte $13
.byte $00
.byte $02
.byte $67
.byte $70
.byte $02
.byte $67
.byte $87
.byte $70
.byte $02
.byte $67
.byte $70
.byte $02
.byte $02
.byte $00
.byte $00
.byte $00
.byte $00
.byte $00
.byte $18
.byte $94
.byte $18
.byte $18
.byte $94
.byte $18
.byte $18
.byte $94
.byte $18
.byte $18
.byte $94
.byte $18
.byte $A3
.byte $02
.byte $02
.byte $A2
.byte $18
.byte $94
.byte $18
.byte $18
.byte $94
.byte $18
.byte $18
.byte $94
.byte $18
.byte $18
.byte $94
.byte $18
.byte $16
.byte $16
.byte $F0
.byte $F1
.byte $A9
.byte $C8
.byte $C7
.byte $A0
.byte $06
.byte $83
.byte $A1
.byte $A5
.byte $A4
.byte $C8
.byte $C7
.byte $A6
.byte $01
.byte $01
.byte $01
.byte $A7
.byte $02
.byte $B7
.byte $02
.byte $B7
.byte $B6
.byte $B7
.byte $02
.byte $B7
.byte $D2
.byte $B7
.byte $02
.byte $B6
.byte $00
.byte $00
.byte $00
.byte $A9
.byte $B7
.byte $02
.byte $B7
.byte $02
.byte $B7
.byte $02
.byte $07
.byte $39
.byte $47
.byte $47
.byte $47
.byte $47
.byte $91
.byte $78
.byte $78
.byte $78
.byte $78
.byte $78
.byte $B8
.byte $51
.byte $97
.byte $91
.byte $51
.byte $51
.byte $51
.byte $97
.byte $91
.byte $51
.byte $51
.byte $97
.byte $91
.byte $97
.byte $58
.byte $58
.byte $91
.byte $51
.byte $97
.byte $91
.byte $97
.byte $13
.byte $13
.byte $13
.byte $13
.byte $13
.byte $13
.byte $13
.byte $13
.byte $00
.byte $02
.byte $64
.byte $F2
.byte $F3
.byte $64
.byte $65
.byte $66
.byte $E5
.byte $D8
.byte $66
.byte $02
.byte $02
.byte $01
.byte $12
.byte $12
.byte $12
.byte $12
.byte $12
.byte $12
.byte $12
.byte $44
.byte $18
.byte $18
.byte $17
.byte $28
.byte $17
.byte $25
.byte $17
.byte $17
.byte $15
.byte $00
.byte $A9
.byte $02
.byte $77
.byte $02
.byte $53
.byte $54
.byte $D1
.byte $D1
.byte $54
.byte $56
.byte $02
.byte $77
.byte $02
.byte $A8
.byte $00
.byte $00
.byte $00
.byte $C6
.byte $C6
.byte $C6
.byte $C6
.byte $C6
.byte $C5
.byte $C5
.byte $C6
.byte $C6
.byte $C6
.byte $C6
.byte $C6
.byte $C6
.byte $F9
.byte $F9
.byte $C6
.byte $C6
.byte $C6
.byte $C6
.byte $C6
.byte $C6
.byte $C6
.byte $C6
.byte $C6
.byte $C6
.byte $C6
.byte $C5
.byte $C5
.byte $00
.byte $00
.byte $15
.byte $76
.byte $26
.byte $76
.byte $26
.byte $76
.byte $49
.byte $18
.byte $18
.byte $49
.byte $76
.byte $26
.byte $76
.byte $25
.byte $76
.byte $15
.byte $00
.byte $00
.byte $D5
.byte $08
.byte $08
.byte $08
.byte $08
.byte $08
.byte $08
.byte $35
.byte $36
.byte $36
.byte $36
.byte $36
.byte $36
.byte $36
.byte $36
.byte $36
.byte $36
.byte $36
.byte $36
.byte $52
.byte $D0
.byte $52
.byte $86
.byte $E1
.byte $13
.byte $13
.byte $13
.byte $13
.byte $13
.byte $13
.byte $00
.byte $00
.byte $D5
.byte $93
.byte $08
.byte $08
.byte $93
.byte $08
.byte $08
.byte $93
.byte $08
.byte $08
.byte $93
.byte $08
.byte $B5
.byte $02
.byte $02
.byte $02
.byte $08
.byte $93
.byte $08
.byte $08
.byte $93
.byte $08
.byte $08
.byte $93
.byte $08
.byte $08
.byte $93
.byte $08
.byte $15
.byte $15
.byte $00
.byte $A9
.byte $02
.byte $77
.byte $10
.byte $77
.byte $02
.byte $07
.byte $18
.byte $45
.byte $13
.byte $13
.byte $13
.byte $13
.byte $13
.byte $13
.byte $13
.byte $00
.byte $02
.byte $02
.byte $67
.byte $70
.byte $02
.byte $67
.byte $D7
.byte $70
.byte $02
.byte $67
.byte $70
.byte $02
.byte $00
.byte $13
.byte $13
.byte $13
.byte $13
.byte $13
.byte $13
.byte $13
.byte $43
.byte $92
.byte $52
.byte $F7
.byte $62
.byte $62
.byte $62
.byte $62
.byte $62
.byte $62
.byte $62
.byte $62
.byte $62
.byte $62
.byte $62
.byte $62
.byte $62
.byte $62
.byte $62
.byte $62
.byte $62
.byte $F7
.byte $62
.byte $62
.byte $62
.byte $62
.byte $62
.byte $62
.byte $62
.byte $48
.byte $48
.byte $48
.byte $41
.byte $18
.byte $18
.byte $17
.byte $17
.byte $17
.byte $17
.byte $14
.byte $15
.byte $15
.byte $15
.byte $15
.byte $17
.byte $75
.byte $17
.byte $16
.byte $16
.byte $18
.byte $18
.byte $16
.byte $16
.byte $16
.byte $16
.byte $16
.byte $16
.byte $16
.byte $F0
.byte $F1
.byte $A9
.byte $A2
.byte $A3
.byte $77
.byte $02
.byte $08
.byte $08
.byte $02
.byte $77
.byte $10
.byte $02
.byte $A8
.byte $F0
.byte $F1
.byte $16
.byte $76
.byte $27
.byte $76
.byte $76
.byte $76
.byte $26
.byte $76
.byte $25
.byte $76
.byte $15
.byte $14
.byte $18
.byte $18
.byte $15
.byte $15
.byte $00
.byte $F1
.byte $A2
.byte $A3
.byte $A2
.byte $A3
.byte $A0
.byte $83
.byte $06
.byte $06
.byte $A1
.byte $A2
.byte $A3
.byte $A6
.byte $01
.byte $A7
.byte $16
.byte $23
.byte $25
.byte $18
.byte $25
.byte $23
.byte $26
.byte $23
.byte $23
.byte $25
.byte $23
.byte $26
.byte $18
.byte $31
.byte $23
.byte $16
.byte $16
.byte $28
.byte $17
.byte $17
.byte $17
.byte $49
.byte $17
.byte $17
.byte $17
.byte $17
.byte $49
.byte $17
.byte $17
.byte $17
.byte $28
.byte $15
.byte $00
.byte $00
.byte $E6
.byte $A1
.byte $A2
.byte $18
.byte $18
.byte $18
.byte $18
.byte $45
.byte $12
.byte $13
.byte $12
.byte $13
.byte $13
.byte $13
.byte $00
.byte $00
.byte $04
.byte $04
.byte $04
.byte $04
.byte $04
.byte $04
.byte $04
.byte $04
.byte $04
.byte $04
.byte $04
.byte $04
.byte $83
.byte $00
.byte $15
.byte $28
.byte $17
.byte $25
.byte $17
.byte $25
.byte $17
.byte $25
.byte $17
.byte $31
.byte $76
.byte $76
.byte $16
.byte $16
.byte $16
.byte $16
.byte $16
.byte $16
.byte $17
.byte $17
.byte $30
.byte $57
.byte $57
.byte $74
.byte $74
.byte $57
.byte $57
.byte $57
.byte $57
.byte $57
.byte $30
.byte $30
.byte $30
.byte $30
.byte $17
.byte $17
.byte $76
.byte $76
.byte $31
.byte $18
.byte $18
.byte $76
.byte $27
.byte $76
.byte $17
.byte $76
.byte $28
.byte $16
.byte $16
.byte $16
.byte $17
.byte $76
.byte $76
.byte $26
.byte $17
.byte $23
.byte $23
.byte $46
.byte $52
.byte $48
.byte $48
.byte $52
.byte $37
.byte $37
.byte $37
.byte $37
.byte $52
.byte $52
.byte $86
.byte $13
.byte $13
.byte $92
.byte $D0
.byte $52
.byte $36
.byte $52
.byte $36
.byte $52
.byte $37
.byte $37
.byte $37
.byte $37
.byte $37
.byte $48
.byte $48
.byte $48
.byte $41
.byte $23
.byte $23
.byte $17
.byte $31
.byte $17
.byte $25
.byte $25
.byte $17
.byte $17
.byte $17
.byte $17
.byte $17
.byte $27
.byte $17
.byte $27
.byte $17
.byte $26
.byte $17
.byte $26
.byte $17
.byte $27
.byte $17
.byte $26
.byte $17
.byte $26
.byte $26
.byte $17
.byte $26
.byte $76
.byte $27
.byte $76
.byte $26
.byte $18
.byte $18
.byte $26
.byte $76
.byte $26
.byte $76
.byte $27
.byte $76
.byte $16
.byte $16
.byte $16
.byte $16
.byte $16
.byte $16
.byte $16
.byte $16
.byte $18
.byte $18
.byte $63
.byte $42
.byte $42
.byte $42
.byte $42
.byte $42
.byte $42
.byte $42
.byte $42
.byte $42
.byte $61
.byte $61
.byte $61
.byte $60
.byte $76
.byte $76
.byte $76
.byte $76
.byte $17
.byte $17
.byte $25
.byte $76
.byte $17
.byte $17
.byte $18
.byte $31
.byte $18
.byte $18
.byte $18
.byte $25
.byte $18
.byte $25
.byte $18
.byte $26
.byte $17
.byte $18
.byte $23
.byte $17
.byte $30
.byte $30
.byte $30
.byte $30
.byte $30
.byte $57
.byte $29
.byte $29
.byte $29
.byte $29
.byte $29
.byte $29
.byte $29
.byte $76
.byte $16
.byte $16
.byte $16
.byte $16
.byte $16
.byte $16
.byte $18
.byte $16
.byte $16
.byte $16
.byte $16
.byte $16
.byte $16
.byte $16
.byte $16
.byte $18
.byte $16
.byte $16
.byte $16
.byte $F1
.byte $A9
.byte $02
.byte $02
.byte $77
.byte $A2
.byte $A3
.byte $10
.byte $A8
.byte $F0
.byte $F1
.byte $A9
.byte $77
.byte $02
.byte $A8
.byte $00
.byte $15
.byte $15
.byte $23
.byte $23
.byte $23
.byte $23
.byte $23
.byte $23
.byte $23
.byte $23
.byte $23
.byte $23
.byte $23
.byte $23
.byte $28
.byte $16
.byte $16
.byte $16
.byte $16
.byte $16
.byte $16
.byte $16
.byte $16
.byte $16
.byte $16
.byte $16
.byte $18
.byte $18
.byte $16
.byte $16
.byte $16
.byte $16
.byte $16
.byte $16
.byte $16
.byte $16
.byte $16
.byte $19
.byte $18
.byte $76
.byte $14
.byte $19
.byte $19
.byte $19
.byte $19
.byte $19
.byte $28
.byte $28
.byte $28
.byte $28
.byte $17
.byte $26
.byte $23
.byte $23
.byte $31
.byte $18
.byte $18
.byte $18
.byte $26
.byte $18
.byte $27
.byte $18
.byte $28
.byte $16
.byte $F0
.byte $F1
.byte $A9
.byte $08
.byte $08
.byte $A4
.byte $77
.byte $10
.byte $A5
.byte $08
.byte $08
.byte $A4
.byte $A5
.byte $08
.byte $A4
.byte $02
.byte $02
.byte $A5
.byte $08
.byte $E3
.byte $18
.byte $12
.byte $12
.byte $08
.byte $08
.byte $08
.byte $33
.byte $08
.byte $32
.byte $08
.byte $A4
.byte $02
.byte $02
.byte $02
.byte $02
.byte $33
.byte $33
.byte $33
.byte $33
.byte $10
.byte $32
.byte $32
.byte $32
.byte $E8
.byte $07
.byte $07
.byte $A8
.byte $F0
.byte $F1
.byte $A9
.byte $02
.byte $33
.byte $02
.byte $33
.byte $02
.byte $D3
.byte $07
.byte $A8
.byte $A9
.byte $02
.byte $33
.byte $02
.byte $A8
.byte $F0
.byte $F1
.byte $A9
.byte $31
.byte $18
.byte $26
.byte $18
.byte $27
.byte $18
.byte $18
.byte $26
.byte $18
.byte $27
.byte $18
.byte $26
.byte $18
.byte $16
.byte $16
.byte $28
.byte $25
.byte $17
.byte $17
.byte $26
.byte $17
.byte $23
.byte $23
.byte $40
.byte $48
.byte $48
.byte $48
.byte $48
.byte $48
.byte $48
.byte $48
.byte $48
.byte $48
.byte $48
.byte $48
.byte $48
.byte $41
.byte $23
.byte $23
.byte $23
.byte $23
.byte $17
.byte $31
.byte $17
.byte $23
.byte $17
.byte $17
.byte $23
.byte $25
.byte $23
.byte $23
.byte $23
.byte $25
.byte $23
.byte $31
.byte $23
.byte $26
.byte $76
.byte $18
.byte $76
.byte $28
.byte $16
.byte $16
.byte $16
.byte $16
.byte $16
.byte $19
.byte $14
.byte $28
.byte $17
.byte $17
.byte $17
.byte $17
.byte $17
.byte $23
.byte $30
.byte $30
.byte $30
.byte $30
.byte $30
.byte $17
.byte $23
.byte $29
.byte $29
.byte $29
.byte $29
.byte $29
.byte $29
.byte $14
.byte $29
.byte $19
.byte $16
.byte $16
.byte $16
.byte $16
.byte $28
.byte $17
.byte $26
.byte $26
.byte $26
.byte $17
.byte $27
.byte $27
.byte $17
.byte $25
.byte $25
.byte $25
.byte $25
.byte $17
.byte $17
.byte $A3
.byte $02
.byte $02
.byte $10
.byte $A2
.byte $18
.byte $18
.byte $18
.byte $18
.byte $45
.byte $13
.byte $13
.byte $13
.byte $13
.byte $13
.byte $13
.byte $00
.byte $A7
.byte $F1
.byte $A9
.byte $02
.byte $64
.byte $F2
.byte $F3
.byte $64
.byte $F2
.byte $F3
.byte $10
.byte $02
.byte $02
.byte $02
.byte $02
.byte $02
.byte $02
.byte $02
.byte $A5
.byte $A4
.byte $D2
.byte $02
.byte $02
.byte $02
.byte $A5
.byte $08
.byte $08
.byte $A4
.byte $A8
.byte $F0
.byte $F1
.byte $16
.byte $16
.byte $F4
.byte $F4
.byte $F4
.byte $F4
.byte $74
.byte $74
.byte $30
.byte $30
.byte $30
.byte $30
.byte $30
.byte $30
.byte $30
.byte $30
.byte $30
.byte $30
.byte $30
.byte $30
.byte $30
.byte $30
.byte $30
.byte $23
.byte $23
.byte $23
.byte $27
.byte $23
.byte $17
.byte $23
.byte $28
.byte $16
.byte $F1
.byte $A9
.byte $02
.byte $02
.byte $B7
.byte $02
.byte $B7
.byte $67
.byte $F5
.byte $70
.byte $B7
.byte $02
.byte $B7
.byte $02
.byte $A8
.byte $00
.byte $00
.byte $A9
.byte $10
.byte $C0
.byte $E3
.byte $13
.byte $13
.byte $A3
.byte $33
.byte $02
.byte $32
.byte $02
.byte $33
.byte $02
.byte $02
.byte $02
.byte $02
.byte $02
.byte $34
.byte $02
.byte $02
.byte $34
.byte $D2
.byte $02
.byte $33
.byte $02
.byte $32
.byte $A5
.byte $08
.byte $08
.byte $F0
.byte $A6
.byte $01
.byte $A7
.byte $84
.byte $90
.byte $10
.byte $02
.byte $A5
.byte $08
.byte $08
.byte $A0
.byte $06
.byte $06
.byte $06
.byte $06
.byte $01
.byte $01
.byte $A7
.byte $F1
.byte $25
.byte $23
.byte $31
.byte $23
.byte $26
.byte $23
.byte $23
.byte $26
.byte $23
.byte $26
.byte $23
.byte $26
.byte $23
.byte $17
.byte $A3
.byte $C8
.byte $C7
.byte $A0
.byte $E7
.byte $E6
.byte $A2
.byte $A3
.byte $71
.byte $32
.byte $34
.byte $02
.byte $A8
.byte $A6
.byte $01
.byte $01
.byte $01
.byte $A7
.byte $A6
.byte $01
.byte $A7
.byte $F1
.byte $A9
.byte $39
.byte $47
.byte $85
.byte $47
.byte $58
.byte $58
.byte $58
.byte $47
.byte $47
.byte $47
.byte $47
.byte $47
.byte $47
.byte $47
.byte $47
.byte $85
.byte $47
.byte $47
.byte $47
.byte $47
.byte $47
.byte $47
.byte $47
.byte $47
.byte $47
.byte $47
.byte $47
.byte $91
.byte $51
.byte $97
.byte $91
.byte $51
.byte $51
.byte $51
.byte $97
.byte $91
.byte $51
.byte $97
.byte $91
.byte $97
.byte $91
.byte $97
.byte $91
.byte $51
.byte $51
.byte $97
.byte $58
.byte $58
.byte $58
.byte $F6
.byte $E0
.byte $13
.byte $13
.byte $13
.byte $13
.byte $13
.byte $13
.byte $00
.byte $00
.byte $95
.byte $95
.byte $95
.byte $95
.byte $95
.byte $C2
.byte $C2
.byte $95
.byte $95
.byte $95
.byte $95
.byte $95
.byte $00
.byte $00
.byte $00
.byte $00
.byte $95
.byte $95
.byte $95
.byte $F8
.byte $95
.byte $C2
.byte $F8
.byte $95
.byte $95
.byte $F8
.byte $95
.byte $95
.byte $00
.byte $00
.byte $00
.byte $A9
.byte $64
.byte $66
.byte $02
.byte $53
.byte $54
.byte $D1
.byte $54
.byte $54
.byte $56
.byte $02
.byte $64
.byte $66
.byte $A8
.byte $00
.byte $DB
.byte $5B
.byte $5B
.byte $DB
.byte $5B
.byte $1B
.byte $0E
.byte $1A
.byte $5B
.byte $DB
.byte $4E
.byte $4E
.byte $4E
.byte $0E
.byte $1A
.byte $1B
.byte $DB
.byte $4E
.byte $32
.byte $1B
.byte $34
.byte $4E
.byte $1A
.byte $1B
.byte $DB
.byte $5B
.byte $1B
.byte $4E
.byte $4E
.byte $4E
.byte $DB
.byte $0E
.byte $32
.byte $5B
.byte $1B
.byte $4E
.byte $1A
.byte $1B
.byte $DB
.byte $5B
.byte $1B
.byte $4E
.byte $4E
.byte $1A
.byte $1B
.byte $DB
.byte $CE
.byte $4E
.byte $4E
.byte $4E
.byte $0E
.byte $1A
.byte $1B
.byte $9B
.byte $0C
.byte $4E
.byte $4E
.byte $4E
.byte $0E
.byte $1A
.byte $1B
.byte $CA
.byte $4E
.byte $0E
.byte $4E
.byte $4E
.byte $4A
.byte $C5
.byte $45
.byte $05
.byte $0B
.byte $C5
.byte $45
.byte $05
.byte $45
.byte $45
.byte $45
.byte $D9
.byte $28
.byte $59
.byte $D9
.byte $59
.byte $59
.byte $19
.byte $D9
.byte $59
.byte $4E
.byte $0E
.byte $59
.byte $D9
.byte $4E
.byte $4E
.byte $4E
.byte $0E
.byte $59
.byte $8E
.byte $4E
.byte $4E
.byte $CE
.byte $4E
.byte $4E
.byte $0E
.byte $D9
.byte $59
.byte $0E
.byte $4E
.byte $4E
.byte $4E
.byte $DB
.byte $0E
.byte $5B
.byte $5B
.byte $4E
.byte $1A
.byte $1B
.byte $DB
.byte $0E
.byte $33
.byte $5B
.byte $1B
.byte $4E
.byte $1A
.byte $1B
.byte $CE
.byte $4E
.byte $4E
.byte $4E
.byte $0E
.byte $59
.byte $DB
.byte $4E
.byte $33
.byte $1B
.byte $35
.byte $4E
.byte $1A
.byte $1B
.byte $D9
.byte $4E
.byte $19
.byte $0E
.byte $19
.byte $4E
.byte $D9
.byte $0E
.byte $19
.byte $0E
.byte $19
.byte $0E
.byte $19
.byte $0E
.byte $D9
.byte $4E
.byte $0E
.byte $19
.byte $0E
.byte $4E
.byte $D9
.byte $19
.byte $4E
.byte $4E
.byte $0E
.byte $19
.byte $D9
.byte $0E
.byte $59
.byte $59
.byte $59
.byte $D9
.byte $0E
.byte $59
.byte $59
.byte $19
.byte $0E
.byte $D9
.byte $4E
.byte $19
.byte $0E
.byte $28
.byte $4E
.byte $59
.byte $DB
.byte $4E
.byte $13
.byte $0E
.byte $13
.byte $4E
.byte $1A
.byte $1B
.byte $DB
.byte $0E
.byte $13
.byte $0E
.byte $13
.byte $0E
.byte $13
.byte $0E
.byte $1A
.byte $1B
.byte $DB
.byte $4E
.byte $0E
.byte $13
.byte $4E
.byte $0E
.byte $1A
.byte $1B
.byte $C8
.byte $48
.byte $17
.byte $4E
.byte $4E
.byte $1A
.byte $1B
.byte $C5
.byte $45
.byte $07
.byte $4E
.byte $4E
.byte $1A
.byte $1B
.byte $C5
.byte $45
.byte $07
.byte $0E
.byte $1A
.byte $DB
.byte $5B
.byte $1B
.byte $4E
.byte $4E
.byte $4A
.byte $DB
.byte $4E
.byte $4E
.byte $15
.byte $C8
.byte $48
.byte $17
.byte $4E
.byte $4E
.byte $59
.byte $C9
.byte $49
.byte $18
.byte $4E
.byte $4E
.byte $D9
.byte $59
.byte $4E
.byte $06
.byte $C5
.byte $45
.byte $45
.byte $C9
.byte $49
.byte $09
.byte $0B
.byte $49
.byte $49
.byte $09
.byte $C8
.byte $48
.byte $08
.byte $48
.byte $C8
.byte $48
.byte $17
.byte $4E
.byte $4E
.byte $4E
.byte $DB
.byte $4E
.byte $4E
.byte $06
.byte $C5
.byte $45
.byte $07
.byte $4E
.byte $4E
.byte $D9
.byte $4E
.byte $2C
.byte $4E
.byte $4E
.byte $59
.byte $DB
.byte $5B
.byte $1B
.byte $0E
.byte $4A
.byte $4A
.byte $0A
.byte $DB
.byte $5B
.byte $4E
.byte $06
.byte $C5
.byte $45
.byte $07
.byte $4E
.byte $4E
.byte $4E
.byte $DB
.byte $0E
.byte $15
.byte $48
.byte $17
.byte $4E
.byte $1A
.byte $1B
.byte $DB
.byte $0E
.byte $06
.byte $45
.byte $07
.byte $4E
.byte $1A
.byte $1B
.byte $DB
.byte $0E
.byte $06
.byte $05
.byte $45
.byte $45
.byte $45
.byte $DB
.byte $0E
.byte $16
.byte $49
.byte $18
.byte $4E
.byte $1A
.byte $1B
.byte $D9
.byte $0E
.byte $59
.byte $59
.byte $19
.byte $0E
.byte $CE
.byte $4E
.byte $4E
.byte $06
.byte $45
.byte $45
.byte $D9
.byte $4E
.byte $4E
.byte $16
.byte $49
.byte $49
.byte $D9
.byte $4E
.byte $4E
.byte $06
.byte $C5
.byte $45
.byte $07
.byte $4E
.byte $D9
.byte $59
.byte $4E
.byte $15
.byte $48
.byte $48
.byte $DB
.byte $0E
.byte $1C
.byte $1F
.byte $4E
.byte $4E
.byte $1A
.byte $1B
.byte $DB
.byte $0E
.byte $1D
.byte $0C
.byte $4E
.byte $4E
.byte $1A
.byte $1B
.byte $DB
.byte $0E
.byte $1E
.byte $20
.byte $4E
.byte $4E
.byte $1A
.byte $1B
.byte $DB
.byte $0E
.byte $21
.byte $24
.byte $4E
.byte $4E
.byte $1A
.byte $1B
.byte $DB
.byte $0E
.byte $22
.byte $0C
.byte $4E
.byte $4E
.byte $4A
.byte $DB
.byte $0E
.byte $23
.byte $25
.byte $4E
.byte $4E
.byte $1A
.byte $1B
.byte $DB
.byte $4E
.byte $0E
.byte $26
.byte $4E
.byte $0E
.byte $1A
.byte $1B
.byte $DB
.byte $5B
.byte $07
.byte $4E
.byte $1A
.byte $1B
.byte $DB
.byte $5B
.byte $07
.byte $4E
.byte $4E
.byte $1A
.byte $1B
.byte $CE
.byte $0E
.byte $59
.byte $59
.byte $19
.byte $0E
.byte $D9
.byte $4E
.byte $0E
.byte $26
.byte $4E
.byte $0E
.byte $D9
.byte $4E
.byte $4E
.byte $4E
.byte $4E
.byte $0E
.byte $DB
.byte $4E
.byte $19
.byte $0E
.byte $19
.byte $4E
.byte $1A
.byte $1B
.byte $DB
.byte $5B
.byte $5B
.byte $45
.byte $C5
.byte $05
.byte $5B
.byte $5B
.byte $DB
.byte $5B
.byte $27
.byte $0E
.byte $1A
.byte $5B
.byte $DB
.byte $0E
.byte $14
.byte $0E
.byte $14
.byte $0E
.byte $14
.byte $4E
.byte $0E
.byte $CA
.byte $4A
.byte $0A
.byte $4E
.byte $4E
.byte $1A
.byte $1B
.byte $DB
.byte $1B
.byte $35
.byte $4E
.byte $4E
.byte $0E
.byte $1A
.byte $1B
.byte $9B
.byte $27
.byte $4E
.byte $4E
.byte $06
.byte $C5
.byte $45
.byte $05
.byte $2F
.byte $4E
.byte $4E
.byte $0E
.byte $DB
.byte $0E
.byte $22
.byte $0C
.byte $4E
.byte $4E
.byte $4A
.byte $DB
.byte $0E
.byte $14
.byte $0E
.byte $29
.byte $0E
.byte $14
.byte $4E
.byte $0E
.byte $DB
.byte $35
.byte $4E
.byte $4E
.byte $4E
.byte $1A
.byte $1B
.byte $DB
.byte $1B
.byte $34
.byte $4E
.byte $06
.byte $C5
.byte $45
.byte $05
.byte $2E
.byte $4E
.byte $4E
.byte $0E
.byte $CE
.byte $0E
.byte $14
.byte $0E
.byte $14
.byte $0E
.byte $14
.byte $0E
.byte $1A
.byte $1B
.byte $CE
.byte $0E
.byte $14
.byte $0E
.byte $14
.byte $0E
.byte $14
.byte $4E
.byte $0E
.byte $DB
.byte $4D
.byte $4D
.byte $4D
.byte $0D
.byte $1A
.byte $1B
.byte $C5
.byte $05
.byte $1B
.byte $0C
.byte $4E
.byte $0E
.byte $4A
.byte $0A
.byte $DB
.byte $1B
.byte $35
.byte $4E
.byte $06
.byte $45
.byte $C5
.byte $4E
.byte $4E
.byte $4E
.byte $0E
.byte $45
.byte $DB
.byte $5B
.byte $34
.byte $4E
.byte $4E
.byte $1A
.byte $1B
.byte $DB
.byte $5B
.byte $35
.byte $4E
.byte $4E
.byte $1A
.byte $1B
.byte $9B
.byte $35
.byte $4E
.byte $4E
.byte $4E
.byte $0E
.byte $33
.byte $1B
.byte $9B
.byte $34
.byte $4E
.byte $4E
.byte $4E
.byte $0E
.byte $32
.byte $1B
.byte $9B
.byte $34
.byte $4E
.byte $4E
.byte $4E
.byte $0E
.byte $1A
.byte $1B
.byte $9B
.byte $35
.byte $4E
.byte $4E
.byte $4E
.byte $0E
.byte $1A
.byte $1B
.byte $DB
.byte $5B
.byte $34
.byte $0E
.byte $32
.byte $DB
.byte $5B
.byte $35
.byte $0E
.byte $33
.byte $5B
.byte $DB
.byte $34
.byte $4E
.byte $4E
.byte $0E
.byte $32
.byte $DB
.byte $35
.byte $4E
.byte $4E
.byte $0E
.byte $33
.byte $DB
.byte $5B
.byte $07
.byte $4E
.byte $4E
.byte $4E
.byte $DB
.byte $0E
.byte $06
.byte $05
.byte $45
.byte $2F
.byte $0E
.byte $1A
.byte $1B
.byte $DB
.byte $0E
.byte $06
.byte $05
.byte $45
.byte $2E
.byte $0E
.byte $1A
.byte $1B
.byte $CA
.byte $4A
.byte $0A
.byte $0E
.byte $1A
.byte $DB
.byte $5B
.byte $15
.byte $45
.byte $45
.byte $45
.byte $DB
.byte $4E
.byte $4E
.byte $4E
.byte $0E
.byte $CA
.byte $4E
.byte $4E
.byte $4E
.byte $0E
.byte $1A
.byte $1B
.byte $DB
.byte $4E
.byte $2C
.byte $0E
.byte $2C
.byte $4E
.byte $1A
.byte $1B
.byte $CA
.byte $4A
.byte $4E
.byte $06
.byte $45
.byte $45
.byte $9B
.byte $35
.byte $4E
.byte $0E
.byte $13
.byte $4E
.byte $0E
.byte $1A
.byte $1B
.byte $F6
.byte $76
.byte $0F
.byte $4E
.byte $1A
.byte $1B
.byte $5B
.byte $DB
.byte $4D
.byte $4D
.byte $4D
.byte $4D
.byte $0D
.byte $CE
.byte $4E
.byte $0E
.byte $30
.byte $45
.byte $45
.byte $05
.byte $DB
.byte $F7
.byte $F7
.byte $77
.byte $77
.byte $37
.byte $77
.byte $1A
.byte $1B
.byte $DB
.byte $1B
.byte $34
.byte $4E
.byte $4E
.byte $0E
.byte $1A
.byte $1B
.byte $DB
.byte $34
.byte $0E
.byte $4E
.byte $4E
.byte $0E
.byte $1A
.byte $1B
.byte $C5
.byte $45
.byte $0B
.byte $4E
.byte $4E
.byte $4E
.byte $DB
.byte $0E
.byte $06
.byte $45
.byte $07
.byte $4E
.byte $4E
.byte $9B
.byte $27
.byte $4E
.byte $4E
.byte $4E
.byte $0E
.byte $1A
.byte $1B
.byte $9B
.byte $27
.byte $4E
.byte $4E
.byte $4E
.byte $4E
.byte $0E
.byte $DB
.byte $1B
.byte $27
.byte $07
.byte $4E
.byte $1A
.byte $5B
.byte $1B
.byte $CE
.byte $4E
.byte $4E
.byte $4E
.byte $33
.byte $5B
.byte $DB
.byte $5B
.byte $1B
.byte $0E
.byte $15
.byte $48
.byte $48
.byte $DB
.byte $0E
.byte $2D
.byte $0C
.byte $4E
.byte $4E
.byte $4A
.byte $DB
.byte $0E
.byte $1C
.byte $1F
.byte $0E
.byte $1E
.byte $20
.byte $0E
.byte $1A
.byte $1B
.byte $C8
.byte $48
.byte $08
.byte $C5
.byte $45
.byte $45
.byte $08
.byte $48
.byte $48
.byte $DB
.byte $35
.byte $CE
.byte $4E
.byte $4E
.byte $4E
.byte $0E
.byte $33
.byte $1B
.byte $DB
.byte $0E
.byte $33
.byte $5B
.byte $27
.byte $4E
.byte $1A
.byte $1B
.byte $DB
.byte $4E
.byte $4E
.byte $1C
.byte $1F
.byte $0E
.byte $1A
.byte $1B
.byte $DB
.byte $5B
.byte $1B
.byte $35
.byte $4E
.byte $33
.byte $DB
.byte $5B
.byte $1B
.byte $34
.byte $4E
.byte $32
.byte $DB
.byte $4E
.byte $4E
.byte $4E
.byte $0E
.byte $33
.byte $9B
.byte $5B
.byte $34
.byte $4E
.byte $0E
.byte $32
.byte $DB
.byte $1B
.byte $35
.byte $4E
.byte $0E
.byte $33
.byte $1B
.byte $DB
.byte $0E
.byte $1E
.byte $20
.byte $0E
.byte $1C
.byte $1F
.byte $0E
.byte $1A
.byte $1B
.byte $DB
.byte $4E
.byte $4E
.byte $1E
.byte $20
.byte $0E
.byte $1A
.byte $1B
.byte $D9
.byte $59
.byte $19
.byte $4E
.byte $4E
.byte $59
.byte $DB
.byte $0E
.byte $2D
.byte $0C
.byte $4E
.byte $4E
.byte $1A
.byte $1B
.byte $CE
.byte $4E
.byte $0E
.byte $31
.byte $05
.byte $C5
.byte $45
.byte $07
.byte $4E
.byte $28
.byte $59
.byte $19
.byte $DB
.byte $4D
.byte $4D
.byte $12
.byte $4D
.byte $1A
.byte $1B
.byte $DB
.byte $77
.byte $77
.byte $77
.byte $37
.byte $1A
.byte $1B
.byte $18
.byte $94
.byte $D8
.byte $9B
.byte $E0
.byte $F5
.byte $F5
.byte $F5
.byte $F5
.byte $B8
.byte $F5
.byte $D4
.byte $F5
.byte $F5
.byte $F5
.byte $C4
.byte $DE
.byte $DE
.byte $BC
.byte $C8
.byte $DE
.byte $BC
.byte $DE
.byte $DE
.byte $F5
.byte $DC
.byte $C4
.byte $DE
.byte $C8
.byte $DE
.byte $BC
.byte $C8
.byte $DE
.byte $DE
.byte $F5
.byte $DC
.byte $DC
.byte $00
.byte $C0
.byte $D0
.byte $DC
.byte $00
.byte $F5
.byte $DC
.byte $CC
.byte $00
.byte $F5
.byte $DC
.byte $DC
.byte $00
.byte $F5
.byte $CC
.byte $D0
.byte $00
.byte $F5
.byte $DC
.byte $DC
.byte $00
.byte $C0
.byte $D0
.byte $DC
.byte $00
.byte $F5
.byte $DC
.byte $CC
.byte $00
.byte $F5
.byte $DC
.byte $DC
.byte $00
.byte $D8
.byte $CC
.byte $D0
.byte $00
.byte $F5
.byte $DC
.byte $DC
.byte $00
.byte $F5
.byte $DC
.byte $DC
.byte $00
.byte $88
.byte $74
.byte $8A
.byte $24
.byte $87
.byte $87
.byte $75
.byte $89
.byte $24
.byte $8B
.byte $87
.byte $87
.byte $88
.byte $A4
.byte $8A
.byte $A6
.byte $87
.byte $87
.byte $A5
.byte $89
.byte $A7
.byte $8B
.byte $87
.byte $87
.byte $88
.byte $AC
.byte $8A
.byte $AE
.byte $87
.byte $87
.byte $AD
.byte $89
.byte $AF
.byte $8B
.byte $87
.byte $87
.byte $DF
.byte $DF
.byte $DF
.byte $DF
.byte $F5
.byte $F5
.byte $DF
.byte $DF
.byte $DF
.byte $DF
.byte $F5
.byte $F5
.byte $DF
.byte $24
.byte $DF
.byte $92
.byte $F5
.byte $F5
.byte $24
.byte $DF
.byte $93
.byte $DF
.byte $F5
.byte $F5
.byte $82
.byte $82
.byte $83
.byte $24
.byte $85
.byte $76
.byte $82
.byte $82
.byte $24
.byte $84
.byte $77
.byte $86
.byte $82
.byte $82
.byte $83
.byte $A0
.byte $85
.byte $A2
.byte $82
.byte $82
.byte $A1
.byte $84
.byte $A3
.byte $86
.byte $82
.byte $82
.byte $83
.byte $AC
.byte $85
.byte $AE
.byte $82
.byte $82
.byte $AD
.byte $84
.byte $AF
.byte $86
.byte $F5
.byte $F5
.byte $DE
.byte $DE
.byte $DE
.byte $DE
.byte $F5
.byte $F5
.byte $DE
.byte $DE
.byte $DE
.byte $DE
.byte $F5
.byte $F5
.byte $DE
.byte $90
.byte $DE
.byte $24
.byte $F5
.byte $F5
.byte $91
.byte $DE
.byte $24
.byte $DE
.byte $7E
.byte $7F
.byte $7D
.byte $76
.byte $24
.byte $7D
.byte $74
.byte $24
.byte $7D
.byte $80
.byte $81
.byte $7D
.byte $7E
.byte $7F
.byte $7D
.byte $9C
.byte $9D
.byte $7D
.byte $9E
.byte $9F
.byte $7D
.byte $80
.byte $81
.byte $7D
.byte $7E
.byte $7F
.byte $7D
.byte $A8
.byte $A9
.byte $7D
.byte $AA
.byte $AB
.byte $7D
.byte $80
.byte $81
.byte $7D
.byte $DD
.byte $DD
.byte $F5
.byte $DD
.byte $DD
.byte $F5
.byte $DD
.byte $DD
.byte $F5
.byte $DD
.byte $DD
.byte $F5
.byte $DD
.byte $DD
.byte $F5
.byte $24
.byte $8E
.byte $F5
.byte $24
.byte $8F
.byte $F5
.byte $DD
.byte $DD
.byte $F5
.byte $78
.byte $79
.byte $7A
.byte $78
.byte $24
.byte $77
.byte $78
.byte $24
.byte $75
.byte $78
.byte $7B
.byte $7C
.byte $78
.byte $79
.byte $7A
.byte $78
.byte $98
.byte $99
.byte $78
.byte $9A
.byte $9B
.byte $78
.byte $7B
.byte $7C
.byte $78
.byte $79
.byte $7A
.byte $78
.byte $A8
.byte $A9
.byte $78
.byte $AA
.byte $AB
.byte $78
.byte $7B
.byte $7C
.byte $F5
.byte $DC
.byte $DC
.byte $F5
.byte $DC
.byte $DC
.byte $F5
.byte $DC
.byte $DC
.byte $F5
.byte $DC
.byte $DC
.byte $F5
.byte $DC
.byte $DC
.byte $F5
.byte $8C
.byte $24
.byte $F5
.byte $8D
.byte $24
.byte $F5
.byte $DC
.byte $DC
.byte $00
.byte $00
.byte $00
.byte $00
.byte $00
.byte $00
.byte $00
.byte $00
.byte $00
.byte $00
.byte $00
.byte $00
.byte $00
.byte $31
.byte $23
.byte $00
.byte $00
.byte $00
.byte $00
.byte $00
.byte $00
.byte $23
.byte $31
.byte $00
.byte $00
.byte $00
.byte $23
.byte $00
.byte $00
.byte $00
.byte $00
.byte $00
.byte $00
.byte $23
.byte $00
.byte $00
.byte $00
.byte $00
.byte $12
.byte $00
.byte $00
.byte $00
.byte $00
.byte $00
.byte $00
.byte $12
.byte $00
.byte $00
.byte $00
.byte $00
.byte $00
.byte $00
.byte $00
.byte $00
.byte $00
.byte $01
.byte $01
.byte $06
.byte $04
.byte $04
.byte $05
.byte $05
.byte $07
.byte $16
.byte $17
.byte $00
.byte $00
.byte $17
.byte $16
.byte $07
.byte $05
.byte $05
.byte $72
.byte $31
.byte $00
.byte $02
.byte $00
.byte $00
.byte $00
.byte $00
.byte $02
.byte $00
.byte $31
.byte $53
.byte $00
.byte $11
.byte $11
.byte $11
.byte $11
.byte $11
.byte $11
.byte $11
.byte $11
.byte $11
.byte $11
.byte $00
.byte $00
.byte $12
.byte $12
.byte $12
.byte $12
.byte $12
.byte $12
.byte $12
.byte $12
.byte $12
.byte $13
.byte $00
.byte $00
.byte $00
.byte $13
.byte $12
.byte $12
.byte $12
.byte $12
.byte $12
.byte $12
.byte $13
.byte $00
.byte $00
.byte $00
.byte $00
.byte $00
.byte $00
.byte $31
.byte $00
.byte $00
.byte $31
.byte $00
.byte $00
.byte $00
.byte $00
.byte $00
.byte $61
.byte $73
.byte $41
.byte $41
.byte $41
.byte $41
.byte $41
.byte $41
.byte $74
.byte $74
.byte $00
.byte $00
.byte $57
.byte $34
.byte $54
.byte $25
.byte $13
.byte $00
.byte $35
.byte $25
.byte $13
.byte $33
.byte $55
.byte $00
.byte $11
.byte $00
.byte $11
.byte $00
.byte $11
.byte $11
.byte $00
.byte $11
.byte $00
.byte $11
.byte $00
.byte $00
.byte $00
.byte $00
.byte $00
.byte $60
.byte $00
.byte $00
.byte $60
.byte $00
.byte $00
.byte $00
.byte $00
.byte $23
.byte $23
.byte $23
.byte $23
.byte $23
.byte $23
.byte $23
.byte $23
.byte $23
.byte $23
.byte $23
.byte $23
.byte $00
.byte $13
.byte $00
.byte $13
.byte $00
.byte $13
.byte $13
.byte $00
.byte $13
.byte $00
.byte $13
.byte $00
.byte $20
.byte $12
.byte $21
.byte $31
.byte $33
.byte $25
.byte $02
.byte $26
.byte $31
.byte $30
.byte $12
.byte $17
.byte $00
.byte $74
.byte $74
.byte $75
.byte $75
.byte $41
.byte $41
.byte $75
.byte $75
.byte $74
.byte $74
.byte $00
.byte $00
.byte $00
.byte $00
.byte $00
.byte $00
.byte $00
.byte $00
.byte $00
.byte $61
.byte $00
.byte $00
.byte $00
.byte $00
.byte $62
.byte $66
.byte $66
.byte $66
.byte $66
.byte $66
.byte $66
.byte $66
.byte $66
.byte $62
.byte $00
.byte $00
.byte $62
.byte $66
.byte $64
.byte $82
.byte $82
.byte $82
.byte $82
.byte $64
.byte $66
.byte $62
.byte $00
.byte $73
.byte $70
.byte $67
.byte $65
.byte $73
.byte $66
.byte $66
.byte $73
.byte $65
.byte $67
.byte $70
.byte $73
.byte $73
.byte $70
.byte $71
.byte $70
.byte $63
.byte $32
.byte $43
.byte $71
.byte $70
.byte $63
.byte $70
.byte $73
.byte $43
.byte $43
.byte $43
.byte $43
.byte $43
.byte $43
.byte $43
.byte $43
.byte $43
.byte $43
.byte $43
.byte $43
.byte $66
.byte $66
.byte $66
.byte $66
.byte $66
.byte $66
.byte $66
.byte $66
.byte $66
.byte $66
.byte $66
.byte $66
.byte $00
.byte $00
.byte $00
.byte $00
.byte $31
.byte $23
.byte $10
.byte $23
.byte $31
.byte $00
.byte $00
.byte $00
.byte $00
.byte $00
.byte $00
.byte $00
.byte $00
.byte $00
.byte $00
.byte $00
.byte $06
.byte $04
.byte $04
.byte $03
.byte $00
.byte $13
.byte $12
.byte $12
.byte $12
.byte $11
.byte $11
.byte $15
.byte $14
.byte $02
.byte $24
.byte $00
.byte $00
.byte $00
.byte $22
.byte $22
.byte $00
.byte $00
.byte $00
.byte $00
.byte $22
.byte $22
.byte $00
.byte $00
.byte $00
.byte $00
.byte $00
.byte $00
.byte $00
.byte $22
.byte $22
.byte $00
.byte $00
.byte $00
.byte $00
.byte $00
.byte $00
.byte $12
.byte $12
.byte $00
.byte $00
.byte $31
.byte $31
.byte $00
.byte $00
.byte $12
.byte $12
.byte $00
.byte $04
.byte $04
.byte $04
.byte $04
.byte $04
.byte $80
.byte $31
.byte $04
.byte $04
.byte $04
.byte $04
.byte $04
.byte $00
.byte $93
.byte $00
.byte $95
.byte $94
.byte $96
.byte $96
.byte $98
.byte $95
.byte $00
.byte $97
.byte $00
.byte $00
.byte $00
.byte $00
.byte $00
.byte $00
.byte $31
.byte $00
.byte $00
.byte $00
.byte $00
.byte $00
.byte $00
.byte $00
.byte $00
.byte $00
.byte $00
.byte $87
.byte $00
.byte $00
.byte $88
.byte $00
.byte $00
.byte $00
.byte $00
.byte $85
.byte $00
.byte $00
.byte $00
.byte $00
.byte $00
.byte $00
.byte $00
.byte $00
.byte $00
.byte $00
.byte $52
.byte $77
.byte $77
.byte $77
.byte $77
.byte $77
.byte $77
.byte $77
.byte $77
.byte $77
.byte $77
.byte $77
.byte $77
.byte $76
.byte $76
.byte $76
.byte $76
.byte $76
.byte $76
.byte $76
.byte $76
.byte $76
.byte $76
.byte $76
.byte $76
.byte $60
.byte $17
.byte $83
.byte $86
.byte $36
.byte $90
.byte $90
.byte $56
.byte $86
.byte $50
.byte $17
.byte $60
.byte $84
.byte $76
.byte $44
.byte $40
.byte $81
.byte $42
.byte $42
.byte $81
.byte $40
.byte $44
.byte $76
.byte $51
.byte $00
.byte $13
.byte $12
.byte $46
.byte $91
.byte $25
.byte $25
.byte $92
.byte $45
.byte $12
.byte $13
.byte $00
.byte $E1
.byte $80
.byte $C1
.byte $00
.byte $01
.byte $A0
.byte $04
.byte $A0
.byte $01
.byte $A0
.byte $31
.byte $90
.byte $21
.byte $90
.byte $21
.byte $00
.byte $81
.byte $00
.byte $01
.byte $04
.byte $81
.byte $00
.byte $01
.byte $00
.byte $01
.byte $00
.byte $81
.byte $00
.byte $21
.byte $00
.byte $81
.byte $40
.byte $81
.byte $20
.byte $01
.byte $00
.byte $81
.byte $00
.byte $04
.byte $00
.byte $01
.byte $00
.byte $01
.byte $90
.byte $41
.byte $80
.byte $D1
.byte $80
.byte $21
.byte $00
.byte $91
.byte $20
.byte $91
.byte $00
.byte $01
.byte $00
.byte $11
.byte $D0
.byte $81
.byte $00
.byte $41
.byte $B1
.byte $00
.byte $91
.byte $00
.byte $A1
.byte $00
.byte $21
.byte $B1
.byte $06
.byte $91
.byte $00
.byte $B1
.byte $00
.byte $81
.byte $00
.byte $21
.byte $90
.byte $17
.byte $02
.byte $91
.byte $17
.byte $01
.byte $17
.byte $81
.byte $16
.byte $B1
.byte $07
.byte $91
.byte $06
.byte $31
.byte $87
.byte $31
.byte $17
.byte $81
.byte $00
.byte $01
.byte $03
.byte $81
.byte $00
.byte $01
.byte $02
.byte $01
.byte $80
.byte $01
.byte $10
.byte $11
.byte $83
.byte $47
.byte $83
.byte $41
.byte $03
.byte $D1
.byte $03
.byte $90
.byte $01
.byte $10
.byte $91
.byte $00
.byte $11
.byte $90
.byte $17
.byte $03
.byte $11
.byte $C0
.byte $11
.byte $E0
.byte $E6
.byte $81
.byte $C6
.byte $81
.byte $86
.byte $01
.byte $06
.byte $01
.byte $06
.byte $81
.byte $06
.byte $21
.byte $86
.byte $01
.byte $26
.byte $01
.byte $86
.byte $41
.byte $86
.byte $01
.byte $46
.byte $D1
.byte $02
.byte $A6
.byte $01
.byte $26
.byte $81
.byte $56
.byte $81
.byte $16
.byte $11
.byte $16
.byte $E7
.byte $E5
.byte $81
.byte $10
.byte $01
.byte $10
.byte $81
.byte $27
.byte $A1
.byte $06
.byte $21
.byte $80
.byte $01
.byte $10
.byte $11
.byte $82
.byte $47
.byte $82
.byte $41
.byte $02
.byte $80
.byte $01
.byte $10
.byte $A1
.byte $02
.byte $A1
.byte $03
.byte $21
.byte $80
.byte $27
.byte $21
.byte $81
.byte $00
.byte $02
.byte $11
.byte $00
.byte $81
.byte $00
.byte $03
.byte $11
.byte $00
.byte $81
.byte $02
.byte $81
.byte $02
.byte $01
.byte $02
.byte $01
.byte $02
.byte $05
.byte $C1
.byte $15
.byte $B1
.byte $25
.byte $81
.byte $03
.byte $81
.byte $03
.byte $01
.byte $03
.byte $01
.byte $03
.byte $05
.byte $04
.byte $04
.byte $00
.byte $01
.byte $00
.byte $00
.byte $00
.byte $00
.byte $00
.byte $00
.byte $00
.byte $00
.byte $01
.byte $00
.byte $04
.byte $04
.byte $04
.byte $04
.byte $00
.byte $01
.byte $00
.byte $00
.byte $00
.byte $03
.byte $03
.byte $03
.byte $03
.byte $02
.byte $03
.byte $03
.byte $04
.byte $04
.byte $82
.byte $43
.byte $43
.byte $43
.byte $02
.byte $0C
.byte $43
.byte $80
.byte $41
.byte $41
.byte $41
.byte $41
.byte $43
.byte $82
.byte $43
.byte $42
.byte $0C
.byte $01
.byte $41
.byte $43
.byte $82
.byte $43
.byte $42
.byte $0C
.byte $03
.byte $02
.byte $0C
.byte $43
.byte $82
.byte $43
.byte $43
.byte $43
.byte $43
.byte $43
lbl_a3f6:
	LDA #$01
	STA $01
	LDA #$03
	STA $03
lbl_a3fe:
	LDY $EB
	LDA $687E,Y
	LDY $03
	CPY #$02
	BCC lbl_a40e
	LDY $EB
	LDA $68FE,Y
lbl_a40e:
	STA $00
	LDA $03
	AND #$01
	BNE lbl_a41c
	LSR $00
	LSR $00
	LSR $00
lbl_a41c:
	LSR $00
	LSR $00
	LDA $02
	BIT $01
	BNE lbl_a42f
	ASL $01
	DEC $03
	BPL lbl_a3fe
	LDA #$08
	RTS
lbl_a42f:
	LDA $00
	AND #$07
	RTS
lbl_a434:
	LDA #$13
	STA $06
	LDX #$19
	BNE lbl_a484
lbl_a43c:
	JSR $7298
	JMP lbl_a48e
lbl_a442:
	LDA #$A0
	STA $00
	LDA #$9F
	STA $01
	LDA #$47
	STA $02
	LDA #$65
	STA $03
	LDA #$5A
	STA $04
	LDA #$65
	STA $05
	LDA #$0A
	STA $06
	LDY #$00
lbl_a460:
	LDA ($00),Y
	BEQ lbl_a434
	STA ($02),Y
	STA ($04),Y
	CMP #$DE
	BEQ lbl_a474
	CMP #$E2
	BCS lbl_a474
	ADC #$01
	STA ($04),Y
lbl_a474:
	LDA #$01
	LDX #$01
	DEC $06
	BNE lbl_a484
	LDA #$0A
	STA $06
	LDA #$0D
	LDX #$1F
lbl_a484:
	JSR $7282
	TXA
	DEX
	BEQ lbl_a43c
	JSR $728E
lbl_a48e:
	JSR $7274
	CMP #$EE
	BNE lbl_a460
	LDA #$30
	STA $02
	LDA #$65
	STA $03
	LDA #$EF
	STA $04
	LDA #$67
	STA $05
lbl_a4a5:
	LDA ($02),Y
	STA ($04),Y
	CMP #$DD
	BEQ lbl_a4cf
	CMP #$E0
	BCS lbl_a4be
	CMP #$DC
	BCS lbl_a4b9
	ADC #$01
	STA ($04),Y
lbl_a4b9:
	CLC
	ADC #$01
lbl_a4bc:
	STA ($04),Y
lbl_a4be:
	JSR $7298
	JSR $7280
	CMP #$90
	BNE lbl_a4a5
	LDA $03
	CMP #$66
	BNE lbl_a4a5
	RTS
lbl_a4cf:
	LDA #$DC
	BNE lbl_a4bc
	ORA ($02,X)
.byte $04
.byte $08
.byte $EE
.byte $2A
.byte $66
.byte $A2
.byte $9F
.byte $A0
.byte $A0
.byte $A0
.byte $A1
.byte $4F
.byte $76
.byte $65
.byte $67
.byte $65
.byte $66
.byte $66
.byte $14
.byte $01
.byte $01
.byte $02
.byte $02
.byte $2C
.byte $2C
.byte $03
.byte $03
.byte $02
.byte $02
.byte $01
.byte $01
.byte $02
.byte $02
lbl_a4f6:
	LDX #$03
lbl_a4f8:
	LDA #$01
	STA $06
lbl_a4fc:
	TXA
	PHA
	STA $0B
	LDA $A4D3,X
	STA $02
	JSR lbl_a3f6
	CMP #$05
	BCS lbl_a528
	CMP #$04
	BNE lbl_a518
	LDA #$08
	BNE lbl_a528
lbl_a514:
	LDA #$09
	BNE lbl_a547
lbl_a518:
	PHA
	LDA $02
	EOR #$FF
	AND $EE
	STA $EE
	PLA
	CMP #$01
	BCS lbl_a528
	LDA #$04
lbl_a528:
	PHA
	LDA $EE
	AND $02
	TAX
	PLA
	CPX $02
	BNE lbl_a547
	TAY
	PLA
	PHA
	TAX
	TYA
	CMP #$07
	BEQ lbl_a545
	PHA
	JSR lbl_8a97
	PLA
	CMP #$08
	BEQ lbl_a514
lbl_a545:
	LDA #$04
lbl_a547:
	LDX $06
	BEQ lbl_a555
	LDX $0B
	PHA
	JSR lbl_a3f6
	JSR lbl_b641
	PLA
lbl_a555:
	CMP #$04
	BCC lbl_a5a5
	SEC
	SBC #$03
	TAY
	CPY #$03
	BCC lbl_a562
	DEY
lbl_a562:
	PLA
	PHA
	JSR lbl_a5b4
	LDA $06
	BNE lbl_a576
	LDA $A4EA,X
	JSR $7276
	LDA #$06
	JSR $7282
lbl_a576:
	LDY #$00
	LDA $A4EE,X
	STA $05
lbl_a57d:
	PLA
	PHA
	TAX
	LDA $A4F2,X
	TAX
lbl_a584:
	LDA ($02),Y
	STA ($00),Y
	JSR $7280
	LDA $A4E7,X
	JSR $7276
	CPX #$00
	BNE lbl_a59e
	PLA
	PHA
	CMP #$02
	BCS lbl_a59e
	JSR $7274
lbl_a59e:
	DEX
	BPL lbl_a584
	DEC $05
	BNE lbl_a57d
lbl_a5a5:
	PLA
	TAX
	DEC $06
	BMI lbl_a5ae
	JMP lbl_a4fc
lbl_a5ae:
	DEX
	BMI lbl_a5d4
	JMP lbl_a4f8
lbl_a5b4:
	TAX
	LDA $A4D7,X
	STA $02
	LDA $A4DB,X
	STA $03
	LDA $A4DF,X
	STA $00
	LDA $A4E3,X
	STA $01
lbl_a5c9:
	DEY
	BEQ lbl_a5d4
	LDA #$0C
	JSR $7282
	JMP lbl_a5c9
lbl_a5d4:
	RTS
.byte $01
.byte $03
.byte $06
.byte $08
.byte $03
.byte $05
.byte $08
.byte $0A
.byte $03
.byte $06
.byte $04
.byte $07
.byte $05
.byte $08
.byte $00
.byte $04
.byte $08
.byte $0A
.byte $22
.byte $22
.byte $23
.byte $21
.byte $5C
.byte $42
.byte $4F
.byte $4F
.byte $01
.byte $FF
.byte $10
.byte $F0
lbl_a5f3:
	LDA $12
	CMP #$12
	BEQ lbl_a5d4
	LDA $27
	BNE lbl_a5d4
	LDA $54
	BEQ lbl_a5d4
	AND #$07
	LDY #$01
	STY $02
	BIT $02
	BEQ lbl_a60c
	LSR
lbl_a60c:
	CMP #$02
	BNE lbl_a614
	LDY #$30
	STY $28
lbl_a614:
	AND #$03
	SEC
	SBC #$01
	AND #$02
	STA $08
	LDA $54
	CMP #$05
	BCS lbl_a631
	LDA $55
	STA $02
	JSR lbl_a3f6
	CMP #$07
	BEQ lbl_a631
	JMP lbl_a682
lbl_a631:
	JSR lbl_a6b1
lbl_a634:
	LDA $06
	STA $04
	LDA $00
	STA $0302,X
	INX
	LDA $01
	STA $0302,X
	INX
	LDA $06
	STA $0302,X
	INX
lbl_a64a:
	JSR lbl_9400
	BNE lbl_a64a
	LDA #$20
	ORA $01
	STA $01
	DEC $05
	BNE lbl_a634
	LDA #$FF
	STA $0302,X
	TXA
	STA $0301
	INC $54
	LDA $54
	AND #$03
	BEQ lbl_a66f
	LDA #$08
	STA $27
	RTS
lbl_a66f:
	LDA $54
	CMP #$04
	BNE lbl_a689
	LDX $09
	JSR lbl_8aa0
	LDA $55
	EOR #$0F
	AND $EE
lbl_a680:
	STA $EE
lbl_a682:
	LDA #$00
	STA $54
	JMP lbl_a4f6
lbl_a689:
	LDA $55
	STA $02
	JSR lbl_a3f6
	CMP #$07
	BEQ lbl_a6aa
	LDX $09
	JSR lbl_8a97
	TYA
	CLC
	ADC $A5EF,X
	TAY
	TXA
	EOR #$01
	TAX
	LDA ($00),Y
	ORA $E6BE,X
	STA ($00),Y
lbl_a6aa:
	LDA $55
	ORA $EE
	JMP lbl_a680
lbl_a6b1:
	LDA $55
	STA $02
	JSR lbl_a3f6
	CMP #$05
	BCC lbl_a6c3
	PHA
	LDA #$04
	JSR $6D7C
	PLA
lbl_a6c3:
	CMP #$04
	BNE lbl_a6c9
	LDA #$08
lbl_a6c9:
	CMP #$01
	BNE lbl_a6cf
	LDA #$04
lbl_a6cf:
	SEC
	SBC #$03
	TAY
	LDA $08
	BEQ lbl_a6dd
	CPY #$05
	BEQ lbl_a6e2
	LDY #$01
lbl_a6dd:
	CPY #$03
	BCC lbl_a6e2
	DEY
lbl_a6e2:
	LDA #$03
	SEC
	SBC $03
	JSR lbl_a5b4
	LDA $A5E7,X
	STA $00
	LDA $A5EB,X
	STA $01
	STX $09
	LDX $0301
	LDA #$00
	STA $07
	LDA #$02
	STA $06
	STA $05
	RTS
.byte $D6
.byte $A2
.byte $E6
.byte $A2
.byte $04
.byte $A3
.byte $15
.byte $A3
.byte $26
.byte $A3
.byte $3D
.byte $A3
.byte $54
.byte $A3
.byte $65
.byte $A3
.byte $77
.byte $A3
.byte $91
.byte $A3
.byte $B0
.byte $74
.byte $94
.byte $B4
.byte $70
.byte $68
.byte $F4
.byte $24
lbl_a720:
	JSR $E85A
	PHA
	LDA #$DE
	STA $02
	LDA #$A0
	STA $03
	PLA
	ASL
	ASL
	STA $00
	JSR $7282
	LDA $00
	JSR $7282
	LDA $00
	JSR $7282
	LDA #$8C
	STA $00
	LDA #$65
	STA $01
	LDY #$00
	STY $06
lbl_a74a:
	LDY $06
	LDA ($02),Y
	AND #$F0
	LSR
	LSR
	LSR
	TAX
	LDA $A704,X
	STA $04
	LDA $A705,X
	STA $05
	LDA ($02),Y
	AND #$0F
	TAX
	LDY #$00
lbl_a765:
	LDA ($04),Y
	BPL lbl_a76c
	DEX
	BMI lbl_a770
lbl_a76c:
	INY
	JMP lbl_a765
lbl_a770:
	TYA
	JSR $728E
	LDA #$00
	STA $07
	STA $08
lbl_a77a:
	LDY #$00
	LDA ($04),Y
	AND #$07
	TAX
	LDA $A718,X
	LDY #$00
	JSR lbl_a7c1
	LDA #$02
	JSR $7276
	LDY #$00
	LDA ($04),Y
	AND #$70
	LSR
	LSR
	LSR
	LSR
	CMP $08
	BEQ lbl_a7a1
	INC $08
	JMP lbl_a7a8
lbl_a7a1:
	LDA #$00
	STA $08
	JSR $728C
lbl_a7a8:
	INC $07
	LDA $07
	CMP #$07
	BCC lbl_a77a
	LDA #$1E
	JSR $7276
	INC $06
	LDA $06
	CMP #$0C
	BCS lbl_a7c0
	JMP lbl_a74a
lbl_a7c0:
	RTS
lbl_a7c1:
	CMP #$70
	BCC lbl_a7e0
	CMP #$F3
	BCS lbl_a7e0
	TAX
	STA ($00),Y
	INY
	INX
	TXA
	STA ($00),Y
	TYA
	CLC
	ADC #$15
	TAY
	INX
	TXA
	STA ($00),Y
	INX
	TXA
lbl_a7dc:
	INY
	STA ($00),Y
	RTS
lbl_a7e0:
	STA ($00),Y
	INY
	STA ($00),Y
	PHA
	TYA
	CLC
	ADC #$15
	TAY
	PLA
	STA ($00),Y
	JMP lbl_a7dc
lbl_a7f1:
	LDA #$00
	STA $B7
	STA $A3
	JSR $E85A
	CMP #$21
	BNE lbl_a808
	LDA #$40
	STA $7B
	ASL
	STA $8F
	JMP lbl_a82d
lbl_a808:
	LDX #$08
	LDY #$0A
lbl_a80c:
	LDA $E400,X
	STA $00
	LDA $E401,X
	STA $01
	LDA ($00),Y
	CMP #$B0
	BEQ lbl_a824
	INX
	INX
	INX
	INX
	CPX #$34
	BNE lbl_a80c
lbl_a824:
	TXA
	ASL
	ASL
	STA $7B
	LDA #$90
	STA $8F
lbl_a82d:
	LDA #$68
	STA $035A
	RTS
lbl_a833:
	LDA #$04
	STA musicRequest
	LDA #$20
	STA $7C
	LDA #$01
	STA $7D
	LDA #$30
	STA $28
	LDA #$24
	STA $0A
	JSR $E8D8
	INC $11
	JSR $6E1D
	LDA #$1B
	STA $0505
	JMP $E80C
.byte $20
.byte $1D
.byte $6E
.byte $20
.byte $17
.byte $E8
.byte $A5
.byte $13
.byte $20
.byte $E2
.byte $E5
.byte $6D
.byte $A8
.byte $77
.byte $A8
.byte $8F
.byte $A8
.byte $97
.byte $A8
.byte $AB
.byte $A8
lbl_a86d:
	LDA $28
	BNE lbl_a887
	LDA #$30
	STA $28
	BNE lbl_a88c
	LDY #$18
	LDA $28
	BEQ lbl_a888
	AND #$07
	CMP #$04
	BCC lbl_a885
	LDY #$78
lbl_a885:
	STY $14
lbl_a887:
	RTS
lbl_a888:
	LDA #$02
	STA $63
lbl_a88c:
	INC $13
	RTS
lbl_a88f:
	JSR $ED89
	LDA $63
	BEQ lbl_a8a4
	RTS
lbl_a897:
	LDA $28
	BNE lbl_a8aa
	JSR $7248
	LDA $7C
	CMP #$11
	BCS lbl_a8aa
lbl_a8a4:
	LDA #$80
	STA $28
	INC $13
lbl_a8aa:
	RTS
lbl_a8ab:
	LDA $28
	BNE lbl_a8aa
	JSR $E5F7
	LDA $FF
	AND #$FB
	STA $FF
	STA PPUCTRL
	JMP lbl_b547
lbl_a8be:
	JSR lbl_a9f4
	JMP lbl_ab73
lbl_a8c4:
	JSR lbl_ab30
	LDA $10
	BEQ lbl_a8be
	LDA #$F6
	STA $0A
	JSR $E8D8
	JSR lbl_b66c
	JSR lbl_a442
	JSR lbl_a4f6
	JMP lbl_a720
lbl_a8de:
	LDA #$1A
	STA $00
	LDA #$65
	STA $01
	LDX $E8
	DEX
	TXA
	LDY $0301
	STA $0303,Y
	LDA #$21
	STA $0302,Y
lbl_a8f5:
	LDA #$16
	JSR $7276
	DEX
	BPL lbl_a8f5
	LDA #$96
	STA $0304,Y
	TXA
	STA $031B,Y
	TYA
	TAX
	LDY #$00
	STY $06
lbl_a90c:
	LDA ($00),Y
	STA $0305,X
	JSR $7274
	INX
	INC $06
	LDA $06
	CMP #$16
	BCC lbl_a90c
	INX
	INX
	INX
	STX $0301
	RTS
lbl_a924:
	LDA #$65
	STA $01
	LDA $E9
	TAX
	CLC
	ADC #$30
	STA $00
	BCC lbl_a934
	INC $01
lbl_a934:
	LDA #$20
	STA $0302
	LDA #$E0
	STA $0303
lbl_a93e:
	LDA $0303
	CLC
	ADC #$20
	STA $0303
	BCC lbl_a94c
	INC $0302
lbl_a94c:
	DEX
	BPL lbl_a93e
	LDA #$20
	STA $0304
	STX $0325
	LDX #$00
	LDY #$00
lbl_a95b:
	LDA ($00),Y
	STA $0305,X
	LDA #$16
	JSR $7276
	INX
	CPX #$20
	BCC lbl_a95b
	LDA #$23
	STA $0301
	RTS
.byte $62
.byte $63
.byte $64
.byte $65
.byte $66
.byte $67
.byte $C8
.byte $D8
.byte $C4
.byte $BC
.byte $C0
.byte $C0
.byte $24
.byte $6F
.byte $F3
.byte $FA
.byte $98
.byte $90
.byte $8F
.byte $95
.byte $8E
.byte $90
.byte $74
.byte $76
.byte $F3
.byte $24
.byte $26
.byte $89
.byte $03
.byte $04
.byte $70
.byte $C8
.byte $BC
.byte $8D
.byte $8F
.byte $93
.byte $95
.byte $C4
.byte $CE
.byte $D8
.byte $B0
.byte $B4
.byte $AA
.byte $AC
.byte $B8
.byte $9C
.byte $A6
.byte $9A
.byte $A2
.byte $A0
.byte $E5
.byte $E6
.byte $E7
.byte $E8
.byte $E9
.byte $EA
.byte $C0
.byte $E0
.byte $78
.byte $7A
.byte $7E
.byte $80
.byte $CC
.byte $D0
.byte $D4
.byte $DC
.byte $89
.byte $84
.byte $24
.byte $24
.byte $24
.byte $24
.byte $6F
.byte $6F
.byte $6F
.byte $6F
.byte $F3
.byte $F3
.byte $F3
.byte $F3
.byte $FA
.byte $FA
.byte $FA
.byte $FA
.byte $98
.byte $95
.byte $26
.byte $26
.byte $90
.byte $95
.byte $90
.byte $95
.byte $8F
.byte $90
.byte $8F
.byte $90
.byte $95
.byte $96
.byte $95
.byte $96
.byte $8E
.byte $93
.byte $90
.byte $95
.byte $90
.byte $95
.byte $92
.byte $97
.byte $74
.byte $74
.byte $75
.byte $75
.byte $76
.byte $77
.byte $76
.byte $77
.byte $F3
.byte $24
.byte $F3
.byte $24
.byte $24
.byte $24
.byte $24
.byte $24
.byte $26
.byte $26
.byte $26
.byte $26
.byte $89
.byte $88
.byte $8B
.byte $88
lbl_a9f4:
	LDA $9F9C
	STA $02
	LDA $9F9D
	STA $03
	LDA #$00
	STA $06
	LDX $EB
	LDA $69FE,X
	ASL
	ASL
	ROL $06
	ASL
	ROL $06
	ASL
	ROL $06
	ADC $02
	STA $02
	LDA $06
	ADC $03
	STA $03
lbl_aa1b:
	LDA $6BAF
	STA $08
	LDA $6BB0
	STA $09
	JSR lbl_ac07
	LDA #$00
	STA $0C
	STA $06
lbl_aa2e:
	LDY $06
	LDA ($02),Y
	AND #$F0
	LSR
	LSR
	LSR
	TAX
	LDA $6827,X
	STA $04
	LDA $6828,X
	STA $05
	LDA ($02),Y
	AND #$0F
	TAX
	LDY #$FF
lbl_aa49:
	INY
	LDA ($04),Y
	BPL lbl_aa49
	DEX
	BPL lbl_aa49
	TYA
	JSR $728E
	LDA #$00
	STA $07
lbl_aa59:
	LDY #$00
	LDA ($04),Y
	AND #$3F
	STA $0D
	TAX
	LDA $A97C,X
	PHA
	LDY $EB
	LDA ($08),Y
	AND #$80
	BEQ lbl_aa88
	PLA
	CMP #$E7
	BEQ lbl_aa7b
	CMP #$E6
	BEQ lbl_aa83
	CMP #$EA
	BNE lbl_aa87
lbl_aa7b:
	LDA #$10
	STA $0D
	LDA #$70
	BNE lbl_aa87
lbl_aa83:
	LDA #$0C
	STA $0D
lbl_aa87:
	PHA
lbl_aa88:
	PLA
	JSR lbl_aabf
	LDY #$00
	JSR lbl_aaf1
	LDA #$02
	JSR $7276
	LDY #$00
	LDA ($04),Y
	AND #$40
	BEQ lbl_aaa4
	EOR $0C
	STA $0C
	BNE lbl_aaa7
lbl_aaa4:
	JSR $728C
lbl_aaa7:
	INC $07
	LDA $07
	CMP #$0B
	BNE lbl_aa59
	LDA #$16
	JSR $7276
	INC $06
	LDA $06
	CMP #$10
	BCS lbl_aaf0
	JMP lbl_aa2e
lbl_aabf:
	LDX #$EA
	STX $0A
	LDX #$05
lbl_aac5:
	CMP $0A
	BEQ lbl_aad0
	DEC $0A
	DEX
	BPL lbl_aac5
	BMI lbl_aaf0
lbl_aad0:
	LDA $A976,X
	PHA
	LDA $A970,X
	STA $052B
	LDA $06
	ASL
	ASL
	ASL
	ASL
	STA $052C
	LDA $07
	ASL
	ASL
	ASL
	ASL
	CLC
	ADC #$40
	STA $052D
	PLA
lbl_aaf0:
	RTS
lbl_aaf1:
	LDX $0D
	CPX #$10
	BCC lbl_ab0e
	TAX
	STA ($00),Y
	INY
	INX
	TXA
	STA ($00),Y
	TYA
	CLC
	ADC #$15
	TAY
	INX
	TXA
	STA ($00),Y
	INX
	TXA
lbl_ab0a:
	INY
	STA ($00),Y
	RTS
lbl_ab0e:
	TXA
	ASL
	ASL
	TAX
	LDA $A9B4,X
	STA ($00),Y
	INY
	INX
	LDA $A9B4,X
	STA ($00),Y
	TYA
	CLC
	ADC #$15
	TAY
	INX
	LDA $A9B4,X
	STA ($00),Y
	INX
	LDA $A9B4,X
	JMP lbl_ab0a
lbl_ab30:
	LDA $9F9E
	LDX $9F9F
	LDY $10
	BEQ lbl_ab3e
	LDA #$D4
	LDX #$A3
lbl_ab3e:
	STA $6827
	STX $6828
	RTS
.byte $A8
.byte $9B
.byte $B8
.byte $9B
.byte $B4
.byte $A3
.byte $C4
.byte $A3
lbl_ab4d:
	LDX #$00
lbl_ab4f:
	LDA $AB45,X
	STA $02
	LDA $AB46,X
	STA $03
	INC $13
	JMP lbl_aa1b
lbl_ab5e:
	LDX #$02
	BNE lbl_ab4f
lbl_ab62:
	LDA #$00
	STA $E9
	LDX #$04
	JSR $E85A
	AND #$01
	BEQ lbl_ab4f
	LDX #$06
	BNE lbl_ab4f
lbl_ab73:
	JSR $E6CE
	ASL
	BCS lbl_abbb
	LDA ($00),Y
	AND #$20
	BEQ lbl_abbb
	JSR lbl_ac07
	JSR $718A
	LSR
	LSR
	TAX
	LDA $E400,X
	STA $00
	LDA $E401,X
	STA $01
	TYA
	SEC
	SBC #$40
	LSR
	LSR
	LSR
	TAY
	LDA ($00),Y
	CMP #$C4
	BEQ lbl_abbc
	CMP #$BC
	BEQ lbl_abbb
	CMP #$D8
	BNE lbl_abbc
	LDA $052B
	CMP #$62
	BEQ lbl_abbc
	LDA #$00
	STA $052B
	LDA #$0C
	STA $0D
lbl_abb8:
	JSR lbl_aaf1
lbl_abbb:
	RTS
lbl_abbc:
	LDA #$10
	STA $0D
	LDA #$70
	BNE lbl_abb8
lbl_abc4:
	TXA
	PHA
	LDA $70,X
	AND #$F0
	LSR
	LSR
	TAX
	LDA $E400,X
	STA $00
	LDA $E401,X
	STA $01
	PLA
	PHA
	TAX
	LDA $84,X
	AND #$F0
	SEC
	SBC #$40
	LSR
	LSR
	LSR
	JSR $7276
	LDY #$00
	LDX #$10
	LDA $05
	CMP #$27
	BCC lbl_abf5
	CMP #$F3
	BCC lbl_abff
lbl_abf5:
	LDX #$0E
lbl_abf7:
	CMP $A97C,X
	BEQ lbl_abff
	DEX
	BNE lbl_abf7
lbl_abff:
	STX $0D
	JSR lbl_aaf1
	PLA
	TAX
	RTS
lbl_ac07:
	LDA #$30
	STA $00
	LDA #$65
	STA $01
	RTS
lbl_ac10:
	JSR lbl_ac16
	BCS lbl_ac27
	RTS
lbl_ac16:
	JSR lbl_a924
	INC $E9
	LDA $E9
	CMP #$16
	RTS
lbl_ac20:
	JSR lbl_a8c4
	LDA #$00
	STA $E9
lbl_ac27:
	INC $13
	RTS
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
lbl_b000:
	LDA $EB
	JSR lbl_83d7
	LDA #$18
	BNE lbl_b018
lbl_b009:
	LDA #$D0
	LDY #$17
lbl_b00d:
	JMP lbl_8501
lbl_b010:
	LDA #$E8
	LDY #$2F
	BNE lbl_b00d
lbl_b016:
	LDA #$0E
lbl_b018:
	STA $14
lbl_b01a:
	INC $13
	RTS
lbl_b01d:
	LDA $10
	BEQ lbl_b026
	JSR lbl_b5ef
	BEQ lbl_b01a
lbl_b026:
	LDA #$44
	BNE lbl_b018
lbl_b02a:
	LDA $6BB1
	BEQ lbl_b01a
	STA $6825
	LDA #$0C
	BNE lbl_b018
lbl_b036:
	JSR lbl_a8c4
	LDY #$10
	STY $7C
	INY
	STY $7D
	LDA #$00
	STA $17
	LDA #$08
	STA $98
	LDA #$78
	STA $70
	LDA $6BA6
	STA $84
	JMP $6C90
.byte $11
.byte $E0
.byte $4E
.byte $CD
.byte $89
.byte $21
.byte $D0
.byte $5E
.byte $BD
.byte $78
lbl_b05e:
	LDY #$05
	LDA $10
	BNE lbl_b068
	LDY #$00
	STY $53
lbl_b068:
	LDX #$00
lbl_b06a:
	LDA $B054,Y
	STA $0346,X
	INY
	INX
	CPX #$05
	BNE lbl_b06a
	RTS
.byte $28
.byte $D8
.byte $00
lbl_b07a:
	JSR $EA51
	JSR $EA3D
	LDA $10
	BEQ lbl_b087
	JSR $7512
lbl_b087:
	JSR $F238
	JSR lbl_b464
	LDA $10
	BEQ lbl_b0ab
	JSR lbl_b0c3
	PHA
	AND #$07
	CMP #$02
	BNE lbl_b0a0
	LDA #$04
	STA $0602
lbl_b0a0:
	PLA
	AND #$07
	CMP #$02
	BCC lbl_b0ab
	CMP #$05
	BCC lbl_b0ad
lbl_b0ab:
	LDY #$02
lbl_b0ad:
	LDA $B077,Y
	STA $0394
	JSR $EADD
lbl_b0b6:
	LDA #$00
	STA $64
	LDY #$05
lbl_b0bc:
	STA $00B9,Y
	DEY
	BPL lbl_b0bc
	RTS
lbl_b0c3:
	LDY #$00
	LDA $98
	AND #$05
	BEQ lbl_b0cc
	INY
lbl_b0cc:
	STY $0F
	LDA $98
	LDY $12
	CPY #$06
	BEQ lbl_b0d9
	JSR $7013
lbl_b0d9:
	STA $02
	JSR lbl_a3f6
	LDY $0F
	RTS
lbl_b0e1:
	STX $0302
	STA $0303
	LDX #$18
	STX $0304
	LDA #$FF
	STA $0305,X
lbl_b0f1:
	LDA $0530,Y
	STA $0304,X
	DEY
	DEX
	BNE lbl_b0f1
	RTS
lbl_b0fc:
	LDA $13
	JSR switch_jump
	.addr lbl_b117
	.addr lbl_b153
	.addr lbl_b147
	.addr lbl_b13c
	.addr lbl_ac20
	.addr lbl_ac10
	.addr lbl_b166
	.addr lbl_b173
	.addr lbl_b14b
	.addr lbl_b13c
	.addr lbl_b15a

lbl_b117:
	LDA #$00
	STA $E9
	STA $EE
	LDA $10
	BNE lbl_b127
	JSR lbl_b127
	JMP lbl_83b2
lbl_b127:
	INC $13
	JMP $EA3D
lbl_b12c:
	LDA #$26
lbl_b12e:
	STA $14
lbl_b130:
	INC $13
	RTS
lbl_b133:
	LDA #$00
lbl_b135:
	LDY $10
	BEQ lbl_b130
	JSR lbl_87b3
lbl_b13c:
	LDY $10
	BEQ lbl_b130
	JMP lbl_8cfb
lbl_b143:
	LDA #$A0
	BNE lbl_b135
lbl_b147:
	LDA #$20
	BNE lbl_b135
lbl_b14b:
	LDA #$80
	BNE lbl_b135
lbl_b14f:
	LDA #$3E
	BNE lbl_b12e
lbl_b153:
	LDA $10
	BNE lbl_b130
	JMP $EA2B
lbl_b15a:
	JSR lbl_b0b6
	LDA #$00
	STA $13
	LDA #$04
	STA $12
	RTS
lbl_b166:
	LDA $EB
	JMP lbl_b16d
lbl_b16b:
	LDA #$44
lbl_b16d:
	JSR lbl_83d7
	JMP lbl_b009
lbl_b173:
	JSR lbl_b010
	JMP lbl_b17b
lbl_b179:
	INC $13
lbl_b17b:
	LDA #$00
	STA $E3
	RTS
lbl_b180:
	LDA $0394
	BEQ lbl_b194
	LDA $98
	STA $03F8
	STA $0F
	LDX #$00
	JSR $F08D
	JMP $EDC5
lbl_b194:
	JMP $EADD
.byte $30
.byte $C0
lbl_b199:
	LDA $13
	PHA
	JSR lbl_87c6
	JSR lbl_b0b6
	PLA
	STA $13
	LDY $EB
	LDX #$00
	LDA $0527
	CMP $687E,Y
	BEQ lbl_b1b2
	INX
lbl_b1b2:
	LDA $B197,X
	STA $70
	LDA #$41
	STA $84
	LDA #$04
	STA $98
	LDA #$E4
	STA $0394
	LDA #$00
	STA $11
	STA $53
	INC $13
	RTS
lbl_b1cd:
	LDA $98
	STA $03F8
	JSR $EDA0
	LDA $84
	CMP #$5D
	BNE lbl_b1e5
	LDA #$00
	STA $AC
	LDA #$01
	STA $5A
	STA $11
lbl_b1e5:
	RTS
lbl_b1e6:
	LDA $63
	BEQ lbl_b213
	LDA #$10
	STA $0604
	LDA $0670
	CMP #$F8
	BCS lbl_b1fd
	CLC
	ADC #$06
	STA $0670
	RTS
lbl_b1fd:
	LDA #$00
	STA $0670
	JSR $746C
	BNE lbl_b214
	DEC $0670
	LDA #$00
	STA $052E
	STA $63
	STA $E0
lbl_b213:
	RTS
lbl_b214:
	INC $066F
	RTS
.byte $00
.byte $00
.byte $00
.byte $30
.byte $32
.byte $34
.byte $38
.byte $3A
.byte $3C
.byte $00
.byte $00
.byte $00
.byte $40
.byte $00
.byte $00
.byte $00
.byte $30
.byte $32
.byte $34
.byte $38
.byte $3A
.byte $3C
.byte $00
.byte $00
.byte $00
.byte $00
.byte $00
.byte $00
.byte $50
.byte $52
.byte $54
.byte $56
.byte $58
.byte $5A
lbl_b23a:
	LDA $5E
	BMI lbl_b25a
	LSR
	TAY
	BCS lbl_b25b
	CMP #$0D
	BCS lbl_b24c
	LDA $B218,Y
lbl_b249:
	JMP lbl_b291
lbl_b24c:
	CMP #$15
	BNE lbl_b255
	LDA #$42
	JMP lbl_b249
lbl_b255:
	JSR lbl_b57f
lbl_b258:
	DEC $5E
lbl_b25a:
	RTS
lbl_b25b:
	LDA #$28
	STA $0302
	LDA #$C0
lbl_b262:
	CLC
	ADC #$20
	BCC lbl_b26a
	INC $0302
lbl_b26a:
	DEY
	BPL lbl_b262
	STA $0303
	LDA #$60
	STA $0304
	LDA #$24
	STA $0305
	LDA #$FF
	STA $0306
	JMP lbl_b258
lbl_b282:
	LDA $5E
	BMI lbl_b295
	LSR
	TAY
	BCS lbl_b25b
	CMP #$15
	BCS lbl_b293
	LDA $B225,Y
lbl_b291:
	STA $14
lbl_b293:
	DEC $5E
lbl_b295:
	RTS
.byte $0C
.byte $0C
.byte $03
.byte $03
lbl_b29a:
	LDA $AC
	BNE lbl_b2ba
	JSR lbl_8d8c
	LDA $4C
	ORA $052E
	BNE lbl_b2b1
	LDA $F8
	AND #$80
	BEQ lbl_b2b1
	JSR lbl_8e00
lbl_b2b1:
	LDA $F8
	AND #$40
	BEQ lbl_b2ba
	JSR lbl_8e1c
lbl_b2ba:
	LDX #$00
	LDA $C0
	BNE lbl_b2fc
	LDA $10
	BEQ lbl_b2c7
	JSR lbl_913f
lbl_b2c7:
	LDA $0394
	BEQ lbl_b2cf
	JMP lbl_b38d
lbl_b2cf:
	STA $0B
	STA $0C
	STA $57
	LDY #$03
lbl_b2d7:
	LDA $03F8
	AND $6DC3,Y
	BEQ lbl_b2f5
	STA $0F
	TYA
	PHA
	INC $0B
	JSR $EDFA
	CMP $034A
	BCS lbl_b2f3
	LDA $0F
	STA $0D
	INC $0C
lbl_b2f3:
	PLA
	TAY
lbl_b2f5:
	DEY
	BPL lbl_b2d7
	LDY $0B
	BNE lbl_b2fd
lbl_b2fc:
	RTS
lbl_b2fd:
	LDA $0F
	CPY #$01
	BEQ lbl_b35f
	LDA $0C
	BNE lbl_b30a
	JMP lbl_b3ab
lbl_b30a:
	TAY
	INC $57
	LDX #$00
	LDA $0D
	CPY #$01
	BEQ lbl_b35f
	LDY $10
	BEQ lbl_b35f
	LDY $70
	CPY #$20
	BEQ lbl_b323
	CPY #$D0
	BNE lbl_b333
lbl_b323:
	LDY $84
	CPY #$85
	BNE lbl_b34d
	LDA $98
	AND #$04
	BEQ lbl_b34d
lbl_b32f:
	LDA $98
	BNE lbl_b35f
lbl_b333:
	LDA $98
	LDX $56
	BEQ lbl_b34d
	LDY $10
	BEQ lbl_b35f
	LDY $70
	CPY #$78
	BNE lbl_b35f
	LDY $84
	CPY #$5D
	BNE lbl_b35f
	AND #$03
	BEQ lbl_b32f
lbl_b34d:
	LDA $98
	INX
	JSR $7013
	LDA $03F8
	PHA
	AND $B296,Y
	STA $0C
	PLA
	EOR $0C
lbl_b35f:
	STX $56
	JSR lbl_b3a9
	LDX #$00
lbl_b366:
	LDA #$60
	STA $00
	LDA $10
	BNE lbl_b387
	LDA $049E
	CMP #$74
	BEQ lbl_b379
	CMP #$75
	BNE lbl_b387
lbl_b379:
	LDA #$30
	STA $00
	CMP $03BC
	BEQ lbl_b387
	LDA #$00
	STA $03A8
lbl_b387:
	LDA $00
	STA $03BC
lbl_b38c:
	RTS
lbl_b38d:
	LDA $03F8
	BEQ lbl_b38c
	JSR $7013
	LDA $6DC3,Y
	CMP $98
	BEQ lbl_b366
	ORA $98
	CMP #$03
	BEQ lbl_b3a6
	CMP #$0C
	BNE lbl_b3af
lbl_b3a6:
	LDA $6DC3,Y
lbl_b3a9:
	STA $98
lbl_b3ab:
	STA $03F8
	RTS
lbl_b3af:
	LDA $57
	BNE lbl_b366
	LDA $0394
	JSR $701F
	PHA
	LDA $98
	JSR $7013
	STA $01
	PLA
	CMP #$04
	BCS lbl_b3f3
	LDA $98
	AND #$0A
	BEQ lbl_b3d3
	LDA $0394
	BPL lbl_b3f3
	BMI lbl_b3d8
lbl_b3d3:
	LDA $0394
	BMI lbl_b3f3
lbl_b3d8:
	LDA $01
	STA $98
	LDA #$08
	LDY $0394
	BMI lbl_b3e5
	LDA #$F8
lbl_b3e5:
	PHA
	TYA
	JSR $7021
	STA $01
	PLA
	SEC
	SBC $01
	STA $0394
lbl_b3f3:
	RTS
lbl_b3f4:
	LDA $5A
	ORA $0394
	BNE lbl_b46e
	LDA $10
	BNE lbl_b40d
	LDA $EB
	CMP #$22
	BNE lbl_b40d
	LDA $70
	AND #$07
	BNE lbl_b46e
	BEQ lbl_b413
lbl_b40d:
	LDA $70
	AND #$0F
	BNE lbl_b46e
lbl_b413:
	LDA $84
	AND #$0F
	CMP #$0D
	BNE lbl_b46e
	JSR $EDF4
	LDA $049E
	LDY $10
	BEQ lbl_b46f
	CMP #$70
	BCC lbl_b46e
	CMP #$74
	BCS lbl_b46e
	JSR lbl_b464
	LDA $EB
	STA $0527
	LDX #$FF
lbl_b437:
	INX
	LDA $6BB2,X
	TAY
	LDA $EB
	CMP $687E,Y
	BEQ lbl_b448
	CMP $68FE,Y
	BNE lbl_b437
lbl_b448:
	STY $EB
	LDA #$09
lbl_b44c:
	STA $5B
	CMP #$09
	BEQ lbl_b45a
	JSR $6EE9
	STA $0602
	STA $3C
lbl_b45a:
	LDA #$10
	STA $12
	JSR lbl_b559
	JMP lbl_8f61
lbl_b464:
	LDA $10
	BNE lbl_b46b
	JMP lbl_90e5
lbl_b46b:
	JSR lbl_92d7
lbl_b46e:
	RTS
lbl_b46f:
	STA $65
	CMP #$24
	BEQ lbl_b486
	CMP #$88
	BEQ lbl_b486
	CMP #$70
	BCC lbl_b46e
	CMP #$74
	BCS lbl_b46e
	LDA #$70
	STA $049E
lbl_b486:
	JSR lbl_b464
	LDY $EB
	LDA $68FE,Y
	AND #$FC
	CMP #$40
	BCC lbl_b49f
	LDY #$0B
	CMP #$50
	BNE lbl_b49b
	INY
lbl_b49b:
	TYA
	JMP lbl_b44c
lbl_b49f:
	LSR
	LSR
	STA $10
	LDA $EB
	STA $0526
	LDA #$02
	BNE lbl_b44c
lbl_b4ac:
	LDA $6001
	CMP #$5A
	BNE lbl_b4ba
	LDA $7FFF
	CMP #$A5
	BEQ lbl_b4e6
lbl_b4ba:
	LDA #$FF
	STA $652A
	STA $652B
	STA $652C
	LDA #$65
	STA $01
	LDA #$30
	STA $00
	LDY #$00
lbl_b4cf:
	LDA #$00
	STA ($00),Y
	LDA $00
	CLC
	ADC #$01
	STA $00
	LDA $01
	ADC #$00
	STA $01
	CMP #$80
	BNE lbl_b4cf
	SEC
	RTS
lbl_b4e6:
	CLC
	RTS
lbl_b4e8:
	LDA #$07
	LDY #$FE
	JSR $E608
	LDA #$00
	STA $F7
	STA $F5
	STA $F6
	STA $F3
	LDY #$EF
lbl_b4fb:
	STA $0000,Y
	DEY
	CPY #$FF
	BNE lbl_b4fb
	LDA #$40
	STA $0525
	STA $18
	LDA #$01
	STA $0636
	STA $0637
	RTS
.byte $F0
.byte $10
.byte $FF
.byte $01
.byte $A9
.byte $00
.byte $85
.byte $E7
.byte $60
lbl_b51c:
	ASL $00
	DEX
	JMP lbl_b528
lbl_b522:
	LDA #$01
	STA $00
	LDX #$03
lbl_b528:
	LDA $E7
	BIT $00
	BEQ lbl_b51c
	JSR $E85A
	STA $04E4
	LDA $B513,X
	CLC
	ADC $EB
	STA $EC
	LDA $10
	BNE lbl_b543
	JSR $752F
lbl_b543:
	LDA $EC
	BPL lbl_b559
lbl_b547:
	JSR $EBA3
	STA $E7
	STA $10
	LDA #$02
	STA $12
	STA $5A
	LDA #$80
	STA $0604
lbl_b559:
	LDA $FE
	AND #$FE
	STA $FE
	RTS
lbl_b560:
	LDX #$01
	STX $00
	LDX #$03
lbl_b566:
	BIT $00
	BNE lbl_b570
	ASL $00
	DEX
	JMP lbl_b566
lbl_b570:
	LDA $B513,X
	CLC
	ADC $EB
	RTS
.byte $80
.byte $40
.byte $20
.byte $10
.byte $08
.byte $04
.byte $02
.byte $01
lbl_b57f:
	LDY #$10
	LDA $5E
	LSR
	TAX
	LDA #$FF
	STA $0305,Y
	LDA #$10
	STA $0304
	LDA #$28
	STA $0302
	LDA #$EC
lbl_b596:
	CLC
	ADC #$20
	BCC lbl_b59e
	INC $0302
lbl_b59e:
	DEX
	BPL lbl_b596
	STA $0303
	LDA $5D
	PHA
lbl_b5a7:
	JSR lbl_b608
	DEC $5D
	DEY
	BNE lbl_b5a7
	PLA
	SEC
	SBC #$10
	STA $5D
	LDX $6BAB
lbl_b5b8:
	BEQ lbl_b5d1
	LDA $0314
	PHA
	LDY #$0E
lbl_b5c0:
	LDA $0305,Y
	STA $0306,Y
	DEY
	BPL lbl_b5c0
	PLA
	STA $0305
	DEX
	JMP lbl_b5b8
lbl_b5d1:
	LDA $5E
	SEC
	SBC #$1A
	LSR
	TAX
	LDY #$0F
lbl_b5da:
	LDA $6BBD,Y
	AND $B577,X
	BNE lbl_b5e7
	LDA #$F5
	STA $0305,Y
lbl_b5e7:
	DEY
	BPL lbl_b5da
	RTS
lbl_b5eb:
	LDX #$10
	BNE lbl_b5f1
lbl_b5ef:
	LDX #$11
lbl_b5f1:
	LDA $10
	BEQ lbl_b607
	SEC
	SBC #$01
	CMP #$08
	BCC lbl_b5fe
	INX
	INX
lbl_b5fe:
	AND #$07
	TAY
	LDA $0657,X
	AND $E6BE,Y
lbl_b607:
	RTS
lbl_b608:
	TYA
	PHA
	JSR $E6CE
	LDA $EB
	PHA
	LDA $5D
	STA $EB
	LDA #$13
	STA $033F
	LDY $EB
	LDA ($00),Y
	AND #$20
	BEQ lbl_b632
	LDA #$08
	STA $02
	LDX #$03
lbl_b627:
	JSR lbl_a3f6
	JSR lbl_b641
	DEX
	LSR $02
	BNE lbl_b627
lbl_b632:
	PLA
	STA $EB
	PLA
	TAY
	LDA $033F
	CLC
	ADC #$E2
	STA $0304,Y
	RTS
lbl_b641:
	LDY #$00
	PHA
	CMP #$04
	BCC lbl_b665
	TXA
	PHA
	TYA
	PHA
	JSR $E6CE
	CLC
	AND $E6BE,X
	BEQ lbl_b656
	SEC
lbl_b656:
	PLA
	TAY
	PLA
	TAX
lbl_b65a:
	LDA $033F,Y
	ROL
	AND #$0F
	STA $033F,Y
	PLA
	RTS
lbl_b665:
	CMP #$00
	BEQ lbl_b65a
	CLC
	BCC lbl_b65a
lbl_b66c:
	JSR $E6CE
	LDX #$03
lbl_b671:
	LDA ($00),Y
	AND $E6BE,X
	BEQ lbl_b67c
	ORA $EE
	STA $EE
lbl_b67c:
	DEX
	BPL lbl_b671
	RTS
lbl_b680:
	LDA $EB
	PHA
	AND #$0F
	TAY
	PLA
	LSR
	LSR
	LSR
	LSR
	TAX
	RTS
lbl_b68d:
	LDA $10
	BEQ lbl_b696
	LDA $6A7E,Y
	AND #$80
lbl_b696:
	RTS
.byte $80
.byte $98
.byte $AC
.byte $B4
.byte $C8
.byte $80
.byte $98
.byte $B0
.byte $C8
.byte $80
.byte $94
.byte $A0
.byte $B0
.byte $C0
.byte $CC
.byte $B0
lbl_b6a7:
	LDX #$1E
lbl_b6a9:
	LDA $0657,X
	BNE lbl_b6b5
	DEX
	CPX #$1C
	BNE lbl_b6a9
	BEQ lbl_b6c2
lbl_b6b5:
	LDA #$36
	STA $01
	LDA #$80
	STA $00
	TXA
	TAY
	JSR $E735
lbl_b6c2:
	LDX #$01
lbl_b6c4:
	LDA $0657,X
	CPX #$10
	BNE lbl_b6d0
	JSR lbl_b5eb
	LDX #$10
lbl_b6d0:
	CPX #$11
	BNE lbl_b6d9
	JSR lbl_b5ef
	LDX #$11
lbl_b6d9:
	CMP #$00
	BEQ lbl_b717
	CPX #$0F
	BNE lbl_b6e6
	LDA $065E
	BNE lbl_b717
lbl_b6e6:
	TXA
	PHA
	TAY
	LDA $B697,X
	STA $00
	LDA #$36
	CPX #$05
	BCC lbl_b710
	LDA #$46
	CPX #$0F
	BEQ lbl_b710
	CPX #$09
	BCC lbl_b710
	LDA #$1E
	CPX #$10
	BCC lbl_b710
	LDA #$2C
	STA $00
	LDA #$9E
	CPX #$11
	BCC lbl_b710
	LDA #$76
lbl_b710:
	STA $01
	JSR lbl_b81c
	PLA
	TAX
lbl_b717:
	INX
	CPX #$12
	BCC lbl_b6c4
	RTS
.byte $80
.byte $98
.byte $B0
.byte $B0
.byte $C8
.byte $80
.byte $98
.byte $B0
.byte $C8
lbl_b726:
	LDX $0656
	BNE lbl_b739
	LDX #$1E
lbl_b72d:
	LDA $0657,X
	BNE lbl_b739
	DEX
	CPX #$1C
	BNE lbl_b72d
	BEQ lbl_b756
lbl_b739:
	LDA $0657,X
	BEQ lbl_b756
	CPX #$0F
	BNE lbl_b749
	LDA $065E
	BNE lbl_b756
	LDA #$01
lbl_b749:
	STA $04
	LDA #$36
	STA $01
	LDA #$40
	STA $00
	JSR lbl_b81c
lbl_b756:
	LDY $0656
	CPY #$0F
	BNE lbl_b767
	LDY #$07
	LDA $0657,Y
	BEQ lbl_b767
	STY $0656
lbl_b767:
	LDA $B71D,Y
	STA $021F
	CLC
	ADC #$08
	STA $0223
	LDA #$36
	CPY #$05
	BCC lbl_b77b
	LDA #$46
lbl_b77b:
	STA $021C
	STA $0220
	LDA #$1E
	STA $021D
	STA $0221
	LDA $15
	AND #$08
	LSR
	LSR
	LSR
	ADC #$01
	STA $021E
	ORA #$40
	STA $0222
	LDA $03F8
	CMP $EF
	BEQ lbl_b7f1
	TAX
	BEQ lbl_b7c8
	CPX #$04
	BCS lbl_b7c8
	LDX #$01
	STX $0602
	TAX
	LDA $0656
	PHA
	TXA
	JSR lbl_b7c8
	PLA
	CMP $0656
	BEQ lbl_b7c4
	LDY $0656
	LDA $0657,Y
	BNE lbl_b7c7
lbl_b7c4:
	LSR $0602
lbl_b7c7:
	RTS
lbl_b7c8:
	STA $EF
	LDX #$09
lbl_b7cc:
	JSR lbl_b821
	CPY #$00
	BEQ lbl_b7f2
	CPY #$03
	BEQ lbl_b7e0
	LDA $0657,Y
	BNE lbl_b7e5
	CPY #$07
	BEQ lbl_b808
lbl_b7e0:
	DEX
	BPL lbl_b7cc
	LDY #$00
lbl_b7e5:
	CPY #$02
	BNE lbl_b7ee
	LDA $065A
	BEQ lbl_b7cc
lbl_b7ee:
	STY $0656
lbl_b7f1:
	RTS
lbl_b7f2:
	LDY #$1E
lbl_b7f4:
	LDA $0657,Y
	BNE lbl_b803
	DEY
	CPY #$1C
	BNE lbl_b7f4
	LDY #$00
	JMP lbl_b7e0
lbl_b803:
	LDY #$00
	JMP lbl_b7e5
lbl_b808:
	LDY #$0F
	LDA $0657,Y
	BNE lbl_b813
	LDY #$07
	BNE lbl_b7e0
lbl_b813:
	LDA $065E
	BEQ lbl_b7ee
	LDY #$07
	BNE lbl_b7ee
lbl_b81c:
	TXA
	TAY
	JMP $E735
lbl_b821:
	LDA $EF
	AND #$03
	BEQ lbl_b839
	INY
	LSR
	BCS lbl_b82d
	DEY
	DEY
lbl_b82d:
	CPY #$FF
	BNE lbl_b833
	LDY #$08
lbl_b833:
	CPY #$09
	BNE lbl_b839
	LDY #$00
lbl_b839:
	RTS
lbl_b83a:
	LDA #$00
	STA $BF
	LDA $10
	BEQ lbl_b889
	JSR $7314
	BNE lbl_b863
	LDY $EB
	LDA $6A7E,Y
	AND #$1F
	CMP #$03
	BNE lbl_b854
	DEC $BF
lbl_b854:
	STA $AB
	LDA $6AFE,Y
	AND #$07
	CMP #$03
	BEQ lbl_b863
	CMP #$07
	BNE lbl_b865
lbl_b863:
	DEC $BF
lbl_b865:
	LDA $69FE,Y
	AND #$40
	BEQ lbl_b86f
	JSR lbl_a7f1
lbl_b86f:
	JSR $718A
lbl_b872:
	STA $83
	STY $97
	LDY $EB
	LDA $6A7E,Y
	AND #$1F
	CMP #$1B
	BNE lbl_b888
	LDA $83
	SEC
	SBC #$08
	STA $83
lbl_b888:
	RTS
lbl_b889:
	LDA #$1A
	STA $AB
	LDA #$C0
	LDY #$90
	LDX $12
	CPX #$05
	BNE lbl_b89d
	LDX $EB
	CPX #$5F
	BEQ lbl_b872
lbl_b89d:
	DEC $BF
	RTS
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
lbl_bf50:
	SEI
	CLD
	LDA #$00
	STA PPUCTRL
	LDX #$FF
	TXS
lbl_bf5a:
	LDA PPUSTATUS
	AND #$80
	BEQ lbl_bf5a
lbl_bf61:
	LDA PPUSTATUS
	AND #$80
	BEQ lbl_bf61
	ORA #$FF
	STA $8000
	STA $A000
	STA $C000
	STA $E000
	LDA #$0F
	JSR lbl_bf98
	LDA #$00
	STA $A000
	LSR
	STA $A000
	LSR
	STA $A000
	LSR
	STA $A000
	LSR
	STA $A000
	LDA #$07
	JSR lbl_bfac
	JMP $E440
lbl_bf98:
	STA $8000
	LSR
	STA $8000
	LSR
	STA $8000
	LSR
	STA $8000
	LSR
	STA $8000
	RTS
lbl_bfac:
	STA $E000
	LSR
	STA $E000
	LSR
	STA $E000
	LSR
	STA $E000
	LSR
	STA $E000
	RTS
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
