.include "nes.inc"
.include "zelda.inc"
.include "audio.inc"

;Program ROM Bank 7
.segment "PRG_7"
	.incbin "zelda_base.nes", $1C010, $E440-$C000

sub_e440:
main:
	LDA #$00
	STA $00F4
	LDA #$05
	JSR set_prg_bank
	JSR $B4AC
	JSR $B4E8
	JSR sub_e45e
	LDA ppuCtrlVal
	ORA #$A0
	STA PPUCTRL
	STA ppuCtrlVal
  endless_loop:
	JMP endless_loop

sub_e45e:
	LDA #$00
	STA APU_MODDA
	LDA #$0F
	STA APU_CHANCTRL
	LDA #$06
	STA PPUMASK
sub_e46d:
	JSR sub_e5f7
	JSR sub_e580
	JSR disable_rendering
	LDA #$20
	JSR sub_e47d
	LDA #$28
sub_e47d:
	LDX #$24
	LDY #$00
	JMP lbl_e594

;E484
nmi:
;Non-maskable interrupt handler
	LDA ppuCtrlVal
	LDX $005C
	BEQ lbl_e48c
	EOR #$02
  lbl_e48c:
	AND #$7F
	STA ppuCtrlVal
	AND #$7E
	STA PPUCTRL
	LDA ppuMaskVal
	LDY $00E3
	BNE lbl_e4a3
	LDY $0014
	BNE lbl_e4a5
	LDY $0017
	BNE lbl_e4a5
  lbl_e4a3:
	ORA #$1E
  lbl_e4a5:
	STA PPUMASK
	STA ppuMaskVal
	LDA #0
	STA OAMADDR
	LDA #$02	;Transfer data from $200-$2FF to OAM using DMA.
	STA OAMDMA	;Writing N to this register causes a transfer of 256 bytes from address N * $100.
	LDA #0
	STA PPUSCROLL
	STA PPUSCROLL
	LDA #6
	JSR set_prg_bank
	JSR $A080
	LDA #$3F
	STA PPUADDR
	LDA #0
	STA PPUADDR
	STA PPUADDR
	STA PPUADDR
	; Wait for the sprite 0 hit flag to be set. Something to do with raster timing.
  wait_for_sprite0_hit:
	LDA PPUSTATUS
	AND #%01000000
	BNE wait_for_sprite0_hit
	LDA PPUSTATUS
	LDA $E3
	BEQ lbl_e4ea
	LDA #5
	JSR set_prg_bank
	JSR $8521
  lbl_e4ea:
	LDA $0011
	BEQ lbl_e518
	LDA $0012
	BEQ lbl_e506
	CMP #$05
	BEQ lbl_e506
	CMP #$09
	BEQ lbl_e506
	CMP #$0B
	BEQ lbl_e506
	CMP #$0C
	BEQ lbl_e506
	CMP #$13
	BNE lbl_e518
  lbl_e506:
  	LDA PPUSTATUS
  	LDA $00FD
  	STA PPUSCROLL
  	LDA $00FC
  	STA PPUSCROLL
  	LDA ppuCtrlVal
  	STA PPUCTRL
  lbl_e518:
  	LDA $00E1
  	ORA $00E0
  	BNE lbl_e53b
  	LDX #$26
  	LDA #$3C
  	LDY #$4E
  	STX local0
  	DEC $00,X
  	BPL lbl_e52f
  	LDA #$09
  	STA local0,X
  	TYA
  lbl_e52f:
  	TAX
  lbl_e530:
  	LDA local0,X
  	BEQ lbl_e536
  	DEC local0,X
  lbl_e536:
  	DEX
  	CPX local0
  	BNE lbl_e530
  lbl_e53b:
  	LDA $00E3
  	BNE :+
  	JSR read_joypads
	:
  	LDX #$18
  	LDY #$0D
  	LDA local0,X
  	AND #$02
  	STA local0
  	LDA $01,X
  	AND #$02
  	EOR local0
  	CLC
  	BEQ lbl_e556
  	SEC
  lbl_e556:
  	ROR local0,X
  	INX
  	DEY
  	BNE lbl_e556
  	LDA #0
  	JSR set_prg_bank
  	JSR process_audio
  	INC $0015
  	LDA $0011
  	BNE lbl_e570
  	JSR sub_e8f8
  	JMP lbl_e573
  lbl_e570:
  	JSR sub_eb30
  lbl_e573:
  	LDA PPUSTATUS
  	LDA ppuCtrlVal
  	ORA #$80
  	STA PPUCTRL
  	STA ppuCtrlVal
  	RTI

sub_e580:
	LDA #0
	STA PPUSCROLL
	STA $00FD
	STA PPUSCROLL
	STA $00FC
	LDA #$30
	STA PPUCTRL
	STA ppuCtrlVal
	RTS

  lbl_e594:
	STA local0
	STX local1
	STY local2
	LDA PPUSTATUS
	LDA ppuCtrlVal
	AND #$FB
	STA PPUCTRL
	STA ppuCtrlVal
	LDA local0
	STA PPUADDR
	LDY #$00
	STY PPUADDR
	LDX #$04
	CMP #$20
	BCS lbl_e5B8
	LDX local2
  lbl_e5B8:
  	LDY #$00
  	LDA local1
  lbl_e5Bc:
  	STA PPUDATA
  	DEY
  	BNE lbl_e5Bc
  	DEX
  	BNE lbl_e5Bc
  	LDY local2
  	LDA local0
  	CMP #$20
  	BCC lbl_e5df
  	ADC #$02
  	STA PPUADDR
  	LDA #$C0
  	STA PPUADDR
  	LDX #$40
  lbl_e5d9:
  	STY PPUDATA
  	DEX
  	BNE lbl_e5d9
  lbl_e5df:
  	LDX local1
  	RTS

;E5E2
.proc switch_jump
.export switch_jump
;Jumps to a specified address in a jump table. Useful for implementing switch constructs.
;A call to this function (JSR sub_e5e2) must be immediately followed by an array of jump addresses.
;Because this function is called with the JSR instruction, the address of the jump table is
;automatically pushed to the stack.
;Parameters: A = index of jump table; (S) = address of jump table
	ASL			;multiply index by 2 because addresses are 2 bytes
	TAY
	PLA			;Pull the jump table address from stack and store it.
	STA local0
	PLA			;Pull the return address (caller's caller) from the stack and store it.
	STA local1
	INY			;Store the low order byte of jump address in $02
	LDA (local0),Y
	STA local2
	INY			;Store the high order byte of jump address in $03
	LDA (local0),Y
	STA local3
	JMP (local2)	;Go to jump address.
.endproc

sub_e5f7:
	LDY #0
	LDX #64
  lbl_e5fb:
	LDA #$F8
	STA $0200,Y
	INY
	INY
	INY
	INY
	DEX
	BNE lbl_e5fb
	RTS

sub_e608:
	STA local1
	LDA #0
	STA local0
  lbl_e60e:
	LDA #0
	STA (local0),Y
	DEY
	CPY #$FF
	BNE lbl_e60e
	DEC local1
	LDA local1
	CMP #$03
	BCS lbl_e60e
	LDA #$FF
	STA $0302
	RTS

;E625
.proc disable_rendering
.export disable_rendering
  	LDA #0
  	STA PPUMASK
  	STA ppuMaskVal
  	RTS
.endproc

;E62D
read_joypads:
	;Reset and clear strobe of joypad port by writing 1 and then 0 to the register.
	LDA #$01
	STA JOYPAD1
	LDA #$00
	STA JOYPAD1
	STA local3
	STA local4
	TAX					;A = 0, X = 0
	JSR read_port_bits	;Read player 1's controller state, X = 0
	INX
	;Fall through and run read_port_bits for X = 1
	
.proc read_port_bits
;Parameters: X = the controller port to read (0 for player 1, 1 for player 2), A = 0
	;Reset and clear strobe of joypad port.
	STA local2
	LDA #$01
	STA JOYPAD1
	LDA #$00
	STA JOYPAD1
	;Each read from the JOYPAD1 register returns a button's state. A value of 1 indicates that the
	;button is pressed, while a value of 0 indicates that the button is not pressed. The 8 button
	;states are returned in the following order: A, B, Select, Start, Up, Down, Left, Right
	LDY #8	;Do this 8 times
  get_button_state:
	LDA JOYPAD1,X
	LSR
	ROL $F8,X
	LSR
	ROL local0
	DEY
	BNE get_button_state
	
	LDA $F8,X
	CMP local2
	BNE read_port_bits
	INC local3,X
	LDY local3,X
	CPY #$02
	BCC read_port_bits
	LDA local0
	ORA $F8,X
	STA $F8,X
	PHA
	EOR $FA,X
	AND $F8,X
	STA $F8,X
	PLA
	STA $FA,X
	RTS
.endproc

sub_e679:
	LDA $0010
	BEQ lbl_e6cd
	LDA #5
	JSR set_prg_bank
	JSR $B5EB
	BEQ lbl_e6cd
	LDA $6BAE
	LDX #$04
	JMP $71ED
	LDY $0010
	BEQ lbl_e6b8
	LDA $0098
	STA local2
	LDA #5
	JSR set_prg_bank
	JSR $A3F6
	LDY local1
  lbl_e6a1:
	STY $00E7
	JSR switch_jump
	.addr $B522
	.addr $B517
	.addr $B522
	.addr $B522
	.addr $B522
	.addr $B522
	.addr $B522
	.addr $B522
	.addr $B517
  lbl_e6b8:
	LDY $0098
	LDA #$00
	BEQ lbl_e6a1
	.byte $01,$02,$04,$08,$10,$20,$40,$80

sub_e6c6:
	JSR sub_e6ce
	ORA #$20
	STA (local0),Y
  lbl_e6cd:
	RTS

sub_e6ce:
	LDA $6BAF
	STA local0
	LDA $6BB0
	STA local1
	LDY $00EB
	LDA (local0),Y
	RTS

  lbl_e6dd:
	LDA $0071
	STA $0083
	LDA $0085
	STA $0097
	JMP lbl_e70c
  lbl_e6e8:
	PLA
  lbl_e6e9:
	RTS
sub_e6ea:
	JSR $7314
	BNE lbl_e6e9
	LDA $00BF
	BMI lbl_e6e9
	LDA $00AB
	CMP #$3F
	BEQ lbl_e6e9
	LDX #$01
	LDA $0350
	CMP #$17
	BEQ lbl_e6dd
	CMP #$2A
	BEQ lbl_e6dd
	CMP #$30
	BEQ lbl_e6dd
	LDX #$13
  lbl_e70c:
	LDA $00AB
sub_e70e:
	PHA
	LDA $03A8,X
	CMP #$F0
	BCC lbl_e719
	LSR
	BCC lbl_e6e8
  lbl_e719:
	JSR sub_fa93
	PLA
	TAX
	LDA $72C8,X
	CMP #$30
	BEQ lbl_e731
	AND #$0F
  lbl_e727:
	STA local4
	LDA $72A4,X
	TAX
	TAY
	JMP lbl_e73a
  lbl_e731:
	LDA #$FF
	BNE lbl_e727
	LDA $0657,X
	STA local4
  lbl_e73a:
	LDA $72EC,X
	CPX #$16
	BEQ lbl_e74d
	CPX #$1A
	BEQ lbl_e74d
	CPX #$1B
	BEQ lbl_e74d
	CPX #$19
	BNE lbl_e756
  lbl_e74d:
	LDA $0015
	AND #$08
	LSR
	LSR
	LSR
	ADC #$01
  lbl_e756:
  CPX #$00
	BEQ lbl_e773
	CPX #$04
	BEQ lbl_e773
	CPX #$02
	BEQ lbl_e773
	CPX #$07
	BEQ lbl_e773
	CPX #$0B
	BEQ lbl_e773
  lbl_e76a:
	LDX #$00
	STX $000C
	LDX #$0F
	JMP $790c

  lbl_e773:
	CLC
	ADC local4
	CPX #$00
	BNE lbl_e76a
	CMP #$02
	BNE lbl_e76a
	LDY #$20
	JMP lbl_e76a
  lbl_e783:
	LDX #$07
	STX $0656
	BNE lbl_e7a0
 sub_e78a:
	LDX $0656
	BEQ lbl_e7b5
	LDA $0657,X
	BEQ lbl_e7ee
	CPX #$0F
	BNE lbl_e7a0
	LDY $065E
	BNE lbl_e783
	LSR
	ORA #$01
  lbl_e7a0:
	STA local4
	LDA #$1F
	STA local1
	LDA #$7C
	STA local0
	LDA #5
	JSR set_prg_bank
	JSR $B81C
	JMP lbl_e7d7
  lbl_e7b5:
	LDX #$1E
  lbl_e7b7:
	LDA $0657,X
	BNE lbl_e7a0
	DEX
	CPX #$1C
	BNE lbl_e7b7
	LDX #$00
	JMP lbl_e7cb
  lbl_e7c6:
	LDA $0657,X
	BNE lbl_e7d7
  lbl_e7cb:
	TXA
	TAY
	LDA #5
	JSR set_prg_bank
	LDA #$02
	JSR $B7C8
  lbl_e7d7:
	LDX #0
	LDA $0657,X
	BEQ lbl_e847
	LDA #$1F
	STA local1
	LDA #$94
	STA local0
	LDA #5
	JSR set_prg_bank
	JMP $B81C
  lbl_e7ee:
	CPX #$07
	BNE lbl_e7c6
	LDA $0666
	BEQ lbl_e7cb
	LDX #$0F
	STX $0656
	BNE lbl_e7c6
sub_e7fe:
	LDA $0505
	BEQ lbl_e859
	DEC $0506
	BEQ lbl_e848
	LDA #$40
	STA $00AC
	LDA $0070
	STA $0083
	LDA $0084
	SEC
	SBC #$10
	STA $0097
	LDX #$00
	JSR sub_fa93
	JSR $7988
	STA $000C
	LDA #$48
	STA $0343
	LDA #$4C
	STA $0344
	LDY #$21
	JSR $792C
	INC $0504
	LDA $0505
	LDX #$13
	JSR sub_e70e
	DEC $0504
	LDA $0052
	BEQ lbl_e847
	LDA #$08
	STA $024D
  lbl_e847:
	RTS
  lbl_e848:
	LDA #$00
	STA $00AC
	STA $0505
	LDY $0010
	BEQ lbl_e859
	LDA $EBE0,Y
	STA musicRequest
  lbl_e859:
	RTS

sub_e85a:
	LDY $00EB
	LDA $69FE,Y
	AND #$3F
	RTS

sub_e862:
	STA $0005
	TXA
	PHA
	LDA $70,X
	STA local3
	LDA $84,X
	STA local2
	JSR $7570
	LDX $0301
	LDA local0
	STA $0302,X
	STA $0307,X
	LDA local1
	STA $0303,X
	STA $0308,X
	INC $0308,X
	LDA $0005
	STA $0305,X
	STA $0306,X
	STA $030A,X
	STA $030B,X
	CMP #$46
	BCC lbl_e8ac
	CMP #$F3
	BCS lbl_e8ac
	CLC
	ADC #$02
	STA $030A,X
	STA $030B,X
	INC $0306,X
	INC $030B,X
  lbl_e8ac:
	LDA #$82
	STA $0304,X
	STA $0309,X
	LDA #$FF
	STA $030C,X
	TXA
	CLC
	ADC #$0A
	STA $0301
	PLA
	TAX
	LDA #5
	JSR set_prg_bank
	JSR $ABC4
	LDA $00F7
	BEQ lbl_e8d3
	LDA #$04
	JSR set_prg_bank
  lbl_e8d3:
	LDA #$00
	STA $00F7
	RTS

sub_e8d8:
	LDA #5
	JSR set_prg_bank
	JSR $AC07
	LDY #$00
  lbl_e8e2:
	LDA $000A
	STA ($00),Y
	JSR $7274
	LDA local0
	CMP #$F0
	BNE lbl_e8e2
	LDA local1
	CMP #$67
	BNE lbl_e8e2
	RTS

.word $Ffff

;save file?
sub_e8f8:
	LDA $00F4
	BNE lbl_e919
	LDA #$01
	JSR set_prg_bank
	JSR $8D00
	LDA #$06
	JSR set_prg_bank
	JSR $808C
	LDA #$5A
	STA $6001
	LDA #$A5
	STA $7FFF
	INC $00F4
	RTS
  lbl_e919:
	LDA #5
	JSR set_prg_bank
	LDA $0012
	JSR switch_jump
	.addr lbl_e94b
	.addr lbl_e96f
	.addr lbl_e977
	.addr lbl_e9d8
	.addr $877B
	.addr lbl_ea6b
	.addr $B07A
	.addr lbl_e9a1
	.addr $8600
	.addr $910A
	.addr $B0FC
	.addr $9080
	.addr $9097
	.addr $861A
	.addr lbl_e9c3
	.addr lbl_e9c3
	.addr $8628
	.addr $8A2F
	.addr $A833
	.addr lbl_e9cb
  lbl_e94b:
	LDA $00F5
	CMP #$5A
	BEQ lbl_e959
	LDA #$02
	JSR set_prg_bank
	JMP $8012
  lbl_e959:
	LDA $00F6
	CMP #$A5
	BEQ lbl_e967
	LDA #$01
	JSR set_prg_bank
	JMP $8D47
  lbl_e967:
	LDA #$02
	JSR set_prg_bank
	JMP $9000
  lbl_e96f:
	LDA #$02
	JSR set_prg_bank
	JMP $A28A
  lbl_e977:
	JSR disable_rendering
	LDA $0013
	BNE lbl_e999
	JSR sub_ea00
	LDY #$7F
  lbl_e983:
	STA $0560,Y
	DEY
	BPL lbl_e983
	LDA #$03
	JSR set_prg_bank
	JSR $8044
	LDA #$01
	JSR set_prg_bank
	JSR $8D00
  lbl_e999:
	LDA #$06
	JSR set_prg_bank
	JMP $803E
  lbl_e9a1:
	LDA #5
	JSR set_prg_bank
	JSR $82A8
	LDA $00E3
	BEQ lbl_e9c2
	LDA $00F3
	BNE lbl_e9c2
	INC $00F3
	LDA $0098
	CMP #$04
	BCC lbl_e9bd
	LDA #$0F
	bne lbl_e9bf
  lbl_e9bd:
	LDA #$0E
  lbl_e9bf:
	JSR mmc_control
  lbl_e9c2:
	RTS
  lbl_e9c3:
	LDA #$02
	JSR set_prg_bank
	JMP $9E11
  lbl_e9cb:
	LDA #$0F
	JSR mmc_control
	LDA #$02
	JSR set_prg_bank
	JMP $A900
  lbl_e9d8:
	LDA #5
	JSR set_prg_bank
	JSR disable_rendering
	LDA $0013
	JSR switch_jump
	.addr lbl_e9f7
	.addr lbl_ea11
	.addr $B000
	.addr $B009
	.addr $B010
	.addr $B016
	.addr $B01D
	.addr $B02A
	.addr $B036
  lbl_e9f7:
	LDA #$01
	STA $0017
	INC $0013
	JSR sub_e46d
sub_ea00:
	LDY #$05
	LDA #$00
	STA $0529
  lbl_ea07:
	STA $0621, Y
	DEY
	BPL lbl_ea07
	RTS
arr_ea0e: .byte $00,$04,$08
  lbl_ea11:
	LDA $0010
	BNE lbl_ea1c
	LDA $0526
	CMP #$FF
	BNE lbl_ea1f
  lbl_ea1c:
	LDA $6BAD
  lbl_ea1f:
	STA $00EB
	CMP $0526
	BNE lbl_ea2b
	LDA #$FF
	STA $0526
  lbl_ea2b:
	LDX $0016
	LDY arr_ea0e,X
	LDA $6804,Y
	STA $6B92
	LDA #$18
	STA $0014
	INC $0013
	RTS

sub_ea3d:
	JSR sub_e5f7
	JSR $71DE
	JSR sub_e679
	LDA #5
	JSR set_prg_bank
	JSR $8929
	JMP sub_e78a
	LDA #$00
	STA $00AC
	STA $066C
	RTS

arr_ea59: .byte $08,$36,$0A,$0A,$0A,$0A,$7C,$7C,$7C
arr_ea62: .byte $3D,$3E,$38,$39,$32,$31,$43,$44,$45
  lbl_ea6b:
	JSR sub_ea3d
	JSR sub_f23c
	LDA $10
	BEQ lbl_ea89
	LDY #$08
	LDA $0350
  lbl_ea7a:
	CMP arr_ea62,Y
	BNE lbl_ea84
	LDX arr_ea59,Y
	BNE lbl_eac9
  lbl_ea84:
	DEY
	BPL lbl_ea7a
	BMI lbl_eabc
  lbl_ea89:
	LDA $EB
	CMP #$0F
	BNE lbl_ea98
	LDA $5A
	BNE lbl_ea98
	LDA #$04
	STA musicEffectRequest
  lbl_ea98:
	LDX #$20
	LDA $035A
	CMP #$65
	BEQ lbl_eac9
	CMP #$66
	BEQ lbl_eaab
	CMP #$62
	BNE lbl_eab8
	LDX #$24
  lbl_eaab:
	LDY $EB
	LDA $68FE,Y
	AND #$01
	BNE lbl_eac9
	LDX #$22
	BNE lbl_eac9
  lbl_eab8:
	LDX #$7a
	BNE lbl_eac9
  lbl_eabc:
	LDY #$03
  lbl_eabe:
	LDA $6B9D,Y
	STA $6817,Y
	DEY
	BPL lbl_eabe
	LDX #$06
  lbl_eac9:
	STX $14
	LDA #5
	JSR set_prg_bank
	JSR $B05E
	LDA $10
	BEQ lbl_eadd
	JSR sub_e6c6
	JSR $7512
  lbl_eadd:
	LDA #5
	JSR set_prg_bank
	JSR $B83A
	LDY #$00
	LDX #$05
	LDA $EB
  lbl_eaeb:
	CMP $0621,X
	BNE lbl_eaf1
	INY
  lbl_eaf1:
	DEX
	BPL lbl_eaeb
	CPY #$00
	BNE lbl_eb0D
	LDX $0620
	STA $0621,X
	INC $0620
	LDA $0620
	CMP #$06
	BCC lbl_eb0D
	LDA #$00
	STA $0620
  lbl_eb0D:
	LDA $12
	CMP #$05
	BNE lbl_eb1f
	LDA $10
	BEQ lbl_eb22
	LDA #5
	JSR set_prg_bank
	JSR $9328
  lbl_eb1f:
	JMP $6C90
  lbl_eb22:
	LDA #$01
	JSR set_prg_bank
	JMP $A121

.byte $FF,$FF,$FF,$FF,$FF,$FF

sub_eb30:
	LDA #$02
	JSR set_prg_bank
	LDA $0012
	JSR switch_jump
	.addr $9020
	.addr $A591
	.addr lbl_eb96
	.addr lbl_ebaa
	.addr lbl_ebc0
	.addr lbl_ec1b
	.addr lbl_ebc0
	.addr lbl_eb62
	.addr lbl_eb76
	.addr lbl_ec1b
	.addr lbl_ec1b
	.addr lbl_ec1b
	.addr lbl_ec1b
	.addr $A6AD
	.addr $9EF0
	.addr $9FC5
	.addr lbl_eb7e
	.addr lbl_eb86
	.addr lbl_eb8e
	.addr $AA10
  lbl_eb62:
	LDA #$05
	JSR set_prg_bank
	JSR $841E
	LDA $E3
	BNE lbl_eb75
	STA $F3
	LDA #$0F
	JSR mmc_control
  lbl_eb75:
	RTS
  lbl_eb76:
	LDA #$05
	JSR set_prg_bank
	JMP $8AF4
  lbl_eb7e:
	LDA #$05
	JSR set_prg_bank
	JMP $8B8B
  lbl_eb86:
	LDA #$05
	JSR set_prg_bank
	JMP $8C7D
  lbl_eb8e:
	LDA #$05
	JSR set_prg_bank
	JMP $A858
  lbl_eb96:
	JSR disable_rendering
	LDA #$06
	JSR set_prg_bank
	JSR $8109

sub_eba1:
	INC $12
	LDA #$00
	STA $11
	STA $13
	RTS

  lbl_ebaa:
	JSR $7248
	LDA $7C
	BNE lbl_ebf8
	LDA #$0F
	JSR mmc_control
	LDA $5A
	BEQ lbl_ebbd
	JMP lbl_ebf2
  lbl_ebbd:
	JMP lbl_ebea
  lbl_ebc0:
	LDA $5A
	BNE lbl_ebf9
	LDA $0394
	BEQ lbl_ebf2
	CMP #$08
	BEQ lbl_ebf2
	CMP #$F8
	BEQ lbl_ebf2
	LDA $98
	STA $03F8
	STA $0F
	LDX #$00
	JSR sub_f08d
	JMP sub_edc5
arr_ebe0: .byte $01,$40,$40,$40,$40,$40,$40,$40,$40,$20
  lbl_ebea:
	LDY $10
	LDA arr_ebe0,Y
	STA musicRequest
  lbl_ebf2:
	JSR sub_eba1
	STA $0394
  lbl_ebf8:
	RTS
  lbl_ebf9:
	LDA $10
	BNE lbl_ebea
	LDA $65
	CMP #$24
	BNE lbl_ebea
	LDA #$05
	JSR set_prg_bank
	JSR $8BA8
	LDA $15
	AND #$03
	BNE lbl_ec1a
	DEC $84
	LDA $84
	CMP $0412
	BEQ lbl_ebea
  lbl_ec1a:
	RTS
  lbl_ec1b:
	LDA $3C
	BNE lbl_ebf8
	LDA $051E
	BEQ lbl_ec2c
	LDA #$04
	JSR set_prg_bank
	JMP $B1BE
  lbl_ec2c:
	LDA $E1
	BNE lbl_ec58
	LDA gamePaused
	CMP #$02
	BEQ lbl_ec49
	LDA $F8
	AND #$20
	BEQ lbl_ec49
	;Toggle pause state
	LDA gamePaused
	EOR #$01
	STA gamePaused
	BNE lbl_ec49
	LDA #$0F
	STA APU_CHANCTRL
  lbl_ec49:
	LDA $E0
	BEQ lbl_ec58
	LDA #$05
	JSR set_prg_bank
	JSR $B559
	JMP lbl_ed89
  lbl_ec58:
	JSR $6E1D
	LDA $FA
	AND #$0F
	STA $03F8
	LDA $E1
	BEQ lbl_ec71
	LDA #$05
	JSR set_prg_bank
	JSR $B559
	JMP $8000
  lbl_ec71:
	LDA $F8
	AND #$10
	BEQ lbl_ec7a
	INC $E1
	RTS
  lbl_ec7a:
	LDA $066C
	BEQ lbl_ec88
	LDA $04F0
	CLC
	ADC #$10
	STA $04F0
  lbl_ec88:
	JSR sub_eda0
	LDA $11
	BNE lbl_ec92
	JMP lbl_ed7d
  lbl_ec92:
	LDA $60
	BNE lbl_ec9e
	LDA $70
	STA $61
	LDA $84
	STA $62
  lbl_ec9e:
	LDX #$0D
	JSR sub_f769
	LDX #$0E
	JSR sub_f36f
	LDX #$0F
	JSR sub_f4a0
	LDX #$10
	JSR sub_f92a
	LDX #$11
	JSR sub_f92a
	LDX #$12
	JSR sub_f73e
	LDA $4A
	BNE lbl_ecde
	LDA $19
	AND #$07
	STA $4A
	LDA $60
	EOR #$01
	STA $60
	BEQ lbl_ecde
	LDA $61
	CMP $70
	BNE lbl_ecde
	EOR #$FF
	STA $61
	LDA $62
	EOR #$FF
	STA $62
  lbl_ecde:
	LDX $0340
	JSR sub_fe98
	LDA $034F,X
	BEQ lbl_ed0e
	LDA $034F,X
	JSR sub_fb74
	LDX $0340
	LDA $0405,X
	BNE lbl_ed0e
	LDA $04BF,X
	AND #$01
	BNE lbl_ed0e
	LDA $04BF,X
	AND #$04
	BNE lbl_ed08
	JSR $77D4
  lbl_ed08:
	LDX $0340
	JSR $79D0
  lbl_ed0e:
	DEC $0340
	BNE lbl_ecde
	LDA #$0B
	STA $0340
	LDA $066F
	AND #$0F
	BNE lbl_ed27
	LDA soundEffectRequest
	ORA #$40
	STA soundEffectRequest
  lbl_ed27:
	LDA $10
	BEQ lbl_ed4f
	LDA #$04
	JSR set_prg_bank
	JSR $8650
	JSR sub_e679
	LDA #$05
	JSR set_prg_bank
	JSR $8BBC
	JSR $8AAD
	JSR $A5F3
	LDA #$01
	JSR set_prg_bank
	JSR $A17C
	JMP $ED6A
  lbl_ed4f:
	LDA $12
	CMP #$05
	BNE lbl_ed62
	LDY $EB
	LDA $687E,Y
	AND #$04
	ASL A
	ASL A
	ASL A
	JSR $6D80
  lbl_ed62:
	LDA #$04
	JSR set_prg_bank
	JSR $86E0
	LDA $0301
	BNE lbl_ed7d
	LDA $04E5
	BEQ lbl_ed7d
	LDA #$00
	STA $04E5
	LDA #$44
	STA $14
  lbl_ed7d:
	JSR sub_e7fe
	JSR sub_e6ea
	JSR $7328
	JSR sub_e78a
  lbl_ed89:
	LDA #$05
	JSR set_prg_bank
	JSR $B1E6
	JMP $6CC0

.byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF

sub_eda0:
	LDX #$00
	JSR sub_fe98
	LDA $AC
	AND #$C0
	CMP #$40
	BEQ lbl_edea
	LDA $0512
	BEQ lbl_edba
	LDA $03F8
	AND #$F0
	STA $03F8
  lbl_edba:
	LDA #$05
	JSR set_prg_bank
	JSR $B29A
	JSR sub_efd0
sub_edc5:
	LDA $12
	CMP #$0A
	BEQ lbl_edea
	JSR sub_f23c
	LDA $10
	BEQ lbl_edd5
	JSR $6EFB
  lbl_edd5:
	LDX #$00
sub_edd7:
	LDA $0394,X
	BNE lbl_edea
	LDA $70,X
	AND #$F8
	STA $70,X
	LDA $84,X
	AND #$F8
	ORA #$05
	STA $84,X
  lbl_edea:
	RTS

;EDEB
.byte $8D,$91,$9C,$AC,$AD,$CC,$D2,$D5,$DF

sub_edf4:
	LDY #$00
	STY $0F
	BEQ lbl_ee10
sub_edfa:
	LDY #$F8
	CPX #$00
	BEQ lbl_ee02
	LDY #$F0
  lbl_ee02:
	LDA $0F
	AND #$05
	BEQ lbl_ee10
	LDY #$08
	AND #$04
	BNE lbl_ee10
	LDY #$10
  lbl_ee10:
	STY $04
	LDA $84,X
	CLC
	ADC #$0B
	TAY
	PHA
	LDA $0F
	AND #$0C
	BEQ lbl_ee31
	AND #$04
	BEQ lbl_ee27
	CPY #$Dd
	BCS lbl_ee2c
  lbl_ee27:
	PLA
	CLC
	ADC $04
	PHA
  lbl_ee2c:
	LDY $70,X
	JMP lbl_ee48
  lbl_ee31:
	LDY $70,X
	LDA $0F
	AND #$01
	BEQ lbl_ee3f
	CPY #$F0
	BCS lbl_ee48
	BCC lbl_ee43
  lbl_ee3f:
	CPY #$10
	BCC lbl_ee48
  lbl_ee43:
	TYA
	CLC
	ADC $04
	TAY
  lbl_ee48:
	TYA
	AND #$F8
	LSR A
	LSR A
	TAY
	LDA $E400,Y
	STA local0
	LDA $E401,Y
	STA local1
	PLA
	SEC
	SBC #$40
	LSR A
	LSR A
	LSR A
	TAY
	LDA ($00),Y
	STA $049E,X
	LDA $0F
	AND #$0C
	BEQ lbl_ee7a
	TYA
	CLC
	ADC #$16
	TAY
	LDA ($00),Y
	CMP $049E,X
	BCC lbl_ee7a
	STA $049E,X
  lbl_ee7a:
	LDA $049E,X
	LDY $10
	BNE lbl_eeb7
	LDA $049E,X
	LDY #$09
  lbl_ee86:
	DEY
	BMI lbl_ee90
	CMP $EDEB,Y
	BNE lbl_ee86
	LDA #$26
  lbl_ee90:
	STA $049E,X
	CPX #$00
	BNE lbl_eeb4
	LDA $EB
	CMP #$1f
	BNE lbl_eeb4
	LDA #$0C
	AND $0F
	BEQ lbl_eeb4
	LDA $70
	CMP #$80
	BNE lbl_eeb4
	LDA $84
	CMP #$56
	BCS lbl_eeb4
	LDA #$26
	STA $049E
  lbl_eeb4:
	LDA $049E,X
  lbl_eeb7:
	RTS
  lbl_eeb8:
	LDA $C0,X
	ASL A
	BCC lbl_eee0
	LSR A
	STA $C0,X
	LDY $98,X
	CPY #$03
	BCC lbl_eedb
	AND #$03
	BEQ lbl_eeda
  lbl_eeca:
	LDA $0394,X
	BEQ lbl_eeda
	CPX #$00
	BNE lbl_eee4
	LDA $98
	JSR $7013
	STA $C0
  lbl_eeda:
	RTS
  lbl_eedb:
	AND #$0C
	BNE lbl_eeca
	RTS
  lbl_eee0:
	LDA $D3,X
	BNE lbl_eeeb
  lbl_eee4:
	LDA #$00
	STA $C0,X
	STA $D3,X
	RTS
  lbl_eeeb:
	LDA #$04
	STA local3
  lbl_eeef:
	LDA $0394,X
	BNE lbl_eF05
	JSR sub_edd7
	LDA $C0,X
	AND #$0F
	STA $0F
	JSR sub_edfa
	CMP $034A
	BCS lbl_eee4
  lbl_eF05:
	LDA $C0,X
	AND #$0F
	JSR $6FB6
	BEQ lbl_eee4
	LDA $0350
	CMP #$36
	BEQ lbl_ef1d
	CMP #$4b
	BCC lbl_ef24
	CMP #$53
	BCS lbl_ef24
  lbl_ef1d:
	JSR $6E46
	LDA $0F
	BEQ lbl_eee4
  lbl_ef24:
	LDY #$01
	LDA $C0,X
	AND #$05
	BNE lbl_ef2e
	LDY #$FF
  lbl_ef2e:
	STY local2
	DEC $D3,X
	LDA $0394,X
	CLC
	ADC local2
	STA $0394,X
	AND #$0F
	BEQ lbl_ef47
	CPX #$00
	BNE lbl_ef4a
	AND #$07
	BNE lbl_ef4a
  lbl_ef47:
	STA $0394,X
  lbl_ef4a:
	LDA $C0,X
	AND #$03
	BEQ lbl_ef5a
	LDA $70,X
	CLC
	ADC local2
	STA $70,X
	JMP lbl_ef61
  lbl_ef5a:
	LDA $84,X
	CLC
	ADC local2
	STA $84,X
  lbl_ef61:
	DEC local3
	BNE lbl_eeef
	RTS

;EF66
.byte $42,$06,$29,$2B,$30,$3A,$3C,$58,$60,$6E,$72,$A9,$10,$8D,$02,$06,$A9,$98,$85,$3C

sub_ef7a:
	LDA $10
	BNE lbl_efc7
	LDA $12
	CMP #$05
	BNE lbl_efb8
	LDY $16
	LDA $062D,Y
	PHA
	LDA $EB
	LDY #$0A
  lbl_ef8e:
	CMP $EF66,Y
	BEQ lbl_ef98
	DEY
	BPL lbl_ef8e
	BMI lbl_efb9
  lbl_ef98:
	CPY #$00
	BNE lbl_efa1
	PLA
	BNE lbl_efba
	BEQ lbl_efa4
  lbl_efa1:
	PLA
	BEQ lbl_efba
  lbl_efa4:
	LDA $051A
	BNE lbl_efb8
	LDY #$09
  lbl_efab:
	DEY
	BMI lbl_efb8
	LDA $0350,Y
	BNE lbl_efab
	LDA #$5e
	STA $0350,Y
  lbl_efb8:
	RTS
  lbl_efb9:
	PLA
  lbl_efba:
	LDA #$01
	JSR set_prg_bank
	JSR $A0A8
	LDA #$05
	JMP set_prg_bank
  lbl_efc7:
	LDA $051B
	BNE lbl_efcf
	INC $051B
  lbl_efcf:
	RTS

sub_efd0:
	LDA $C0,X
	BEQ lbl_efd7
	JMP lbl_eeb8
  lbl_efd7:
	CPX #$00
	BNE lbl_efe9
	LDA $0394
	BEQ lbl_efe9
	LDA $03F8
	BEQ lbl_f001
	LDA $98
	BNE lbl_f003
  lbl_efe9:
	CPX #$00
	BEQ lbl_eff4
	LDA $066C
	ORA $3D,X
	BNE lbl_efcf
  lbl_eff4:
	LDA $03F8,X
	BEQ lbl_f001
	JSR $7013
	LDA $6DC3,Y
	BNE lbl_f003
  lbl_f001:
	LDA #$00
  lbl_f003:
	AND #$0F
	STA $0F
	LDA #$00
	STA $0E
	CPX #$00
	BNE lbl_f01d
	LDA $AC,X
	AND #$F0
	CMP #$10
	BEQ lbl_f01b
	CMP #$20
	BNE lbl_f01d
  lbl_f01b:
	STX $0F
  lbl_f01d:
	CPX #$00
	BNE lbl_f063
	LDA #$01
	JSR set_prg_bank
	JSR $A13E
	LDA $0350
	CMP #$36
	BEQ lbl_f038
	CMP #$4b
	BCC lbl_f03b
	CMP #$53
	BCS lbl_f03b
  lbl_f038:
	JSR $6E46
  lbl_f03b:
	LDA $53
	BNE lbl_f066
	LDA $12
	CMP #$09
	BEQ lbl_f04d
	CMP #$0B
	BEQ lbl_f04d
	CMP #$0C
	BNE lbl_f05B
  lbl_f04d:
	LDA #$05
	JSR set_prg_bank
	JSR $8ED7
	LDA $12
	CMP #$09
	BEQ lbl_f066
  lbl_f05B:
	LDA $10
	BEQ lbl_f066
	LDA $53
	BNE lbl_f066
  lbl_f063:
	JSR $6FB8
  lbl_f066:
	CPX #$00
	BNE lbl_f07e
	LDA $10
	BEQ lbl_f07e
	LDA $12
	CMP #$09
	BEQ lbl_f07e
	LDA #$05
	JSR set_prg_bank
	JSR $917C
	LDX #$00
  lbl_f07e:
	JSR sub_f0e3
	CPX #$00
	BNE sub_f08d
	LDA #$05
	JSR set_prg_bank
	JSR $8F7B
sub_f08d:
	LDA #$08
	LDY #$F8
	CPX #$00
	BEQ lbl_f099
	LDA #$10
	LDY #$F0
  lbl_f099:
	STA $010E
	STY $010F
	LDA $0F
	BEQ lbl_f0c0
	JSR sub_f0ac
	JSR sub_f0ac
	JSR sub_f0ac
sub_f0ac:
	LDA $0F
	LSR A
	BCS lbl_f0cb
	LSR A
	BCS lbl_f0D5
	LSR A
	BCS lbl_f0c1
	JSR $6FE8
	LDA $84,X
	SBC #$00
	STA $84,X
  lbl_f0c0:
	RTS
  lbl_f0c1:
	JSR $6FC1
  lbl_f0c4:
	LDA $84,X
	ADC #$00
	STA $84,X
	RTS
  lbl_f0cb:
	JSR $6FC1
	LDA $70,X
	ADC #$00
	STA $70,X
	RTS
  lbl_f0D5:
	JSR $6FE8
	LDA $70,X
	SBC #$00
	STA $70,X
	RTS

arr_f0df: .byte $3D,$DD,$00,$F0
sub_f0e3:
	CPX #$00
	BNE lbl_f0f2
	LDA $53
	BEQ lbl_f0ee
	JMP lbl_f14e
  lbl_f0ee:
	LDA $0E
	BMI lbl_f148
  lbl_f0f2:
	LDA $0394,X
	BNE lbl_f148
	STA $0E
	LDA $0F
	BNE lbl_f116
	CPX #$00
	BEQ lbl_f148
	LDA $04BF,X
	AND #$10
	BNE lbl_f110
	LDA $03F8,X
	STA $0F
	JMP lbl_f129
  lbl_f110:
	JSR lbl_f1d0
	JMP lbl_f198
  lbl_f116:
	JSR sub_edfa
	CMP $034A
	BCC lbl_f14e
	CPX #$00
	BEQ lbl_f133
  lbl_f122:
	LDA $04BF,X
	AND #$10
	BNE lbl_f110
  lbl_f129:
	JSR sub_f1a0
	STA $0F
	LDA $0E
	BNE lbl_f116
	RTS
  lbl_f133:
	LDA $10
	BNE lbl_f13f
	LDA #$01
	JSR set_prg_bank
	JSR $A223
  lbl_f13f:
	JSR sub_f149
	STA $F8
	LDA $10
	BEQ lbl_f14e
  lbl_f148:
	RTS
sub_f149:
	LDA #$00
	STA $0F
	RTS
  lbl_f14e:
	CPX #$00
	BNE lbl_f198
	LDA $12
	CMP #$05
	BNE lbl_f195
	LDA $64
	BNE lbl_f148
	LDA $0394
	BNE lbl_f195
	LDX $84
	LDA $03F8
	BEQ lbl_f195
	JSR $7013
	LDA $6DC3,Y
	AND #$0C
	BNE lbl_f174
	LDX $70
  lbl_f174:
	STX local0
	LDA local0
	CMP arr_f0df,Y
	BNE lbl_f195
	LDA $6DC3,Y
	STA $98
	INC $12
	LDA #$00
	STA $13
	STA $11
	STA $0F
	STA $AC
	STA $C0
	STA $D3
	STA $04F0
  lbl_f195:
	LDX #$00
	RTS
  lbl_f198:
	JSR $6FB8
	BEQ lbl_f122
	STA $98,X
	RTS

sub_f1a0:
	LDA $0E
	INC $0E
	JSR switch_jump
	.addr lbl_f1af
	.addr lbl_f1c3
	.addr lbl_f1d0
	.addr lbl_f1da
  lbl_f1af:
	LDY #$00
	LDA $18,X
	ASL A
	BCS lbl_f1b7
	INY
  lbl_f1b7:
	LDA $98,X
	AND #$0C
	BEQ lbl_f1bf
	INY
	INY
  lbl_f1bf:
	LDA $6DC3,Y
	RTS
  lbl_f1c3:
	LDA $0F
	PHA
	AND #$0A
	BEQ lbl_f1cd
	PLA
	LSR
	RTS
  lbl_f1cd:
	PLA
	ASL
	RTS
  lbl_f1d0:
	LDA $98,X
	JSR $7013
	STA $98,X
	STA $0F
	RTS
  lbl_f1da:
	LDA #$00
	STA $0E
	RTS
	LDA $0394,X
	BNE lbl_f1fc
	STA $0E
  lbl_f1e6:
	JSR sub_f1a0
	STA $0F
	BEQ lbl_f1fc
	JSR sub_edfa
	CMP $034A
	BCS lbl_f1e6
	JSR $6FB8
	BEQ lbl_f1e6
	STA $98,X
  lbl_f1fc:
	RTS

.byte $00,$00,$F0,$10,$FB,$13,$03,$03,$02,$06,$08,$0A,$80,$54,$60,$60,$17,$18,$19,$27,$4F,$5F

sub_f213:
	JSR sub_f23c
	LDA #$04
	JMP set_prg_bank
	JSR sub_f231
sub_f21e:
	LDA #$01
	JMP set_prg_bank
	JSR sub_f23c
	JMP sub_f21e
	JSR sub_f231
	LDA #$04
	JMP set_prg_bank
sub_f231:
	LDA #$06
	STA $03D0
	BNE sub_f23c
	LDA $10
	BNE lbl_f1fc
sub_f23c:
	LDA $0522
	BNE lbl_f1fc
	TAX
	LDA $12
	CMP #$06
	BEQ lbl_f255
	CMP #$05
	BCC lbl_f255
	LDA $0394
	BEQ lbl_f265
	AND #$07
	BEQ lbl_f258
  lbl_f255:
	JMP lbl_f2e3
  lbl_f258:
	LDA #$00
	STA $0394
	LDY $12
	CPY #$05
	BNE lbl_f255
	STA $5A
  lbl_f265:
	LDA $12
	CMP #$05
	BNE lbl_f255
	LDA $10
	BNE lbl_f27d
	LDA $EB
	LDY #$05
  lbl_f273:
	CMP $F20D,Y
	BEQ lbl_f27d
	DEY
	BPL lbl_f273
	BMI lbl_f2e3
  lbl_f27d:
	LDA $53
	BNE lbl_f2e3
	LDA $0663
	BEQ lbl_f2e3
	LDA $AC
	AND #$C0
	CMP #$40
	BEQ lbl_f2e3
	LDA $64
	BNE lbl_f2e3
	LDX #$00
	LDA $98
	STA $0F
	JSR sub_edfa
	LDY $10
	BEQ lbl_f2a5
	CMP #$F4
	BEQ lbl_f2ad
	BNE lbl_f2e3
  lbl_f2a5:
	CMP #$8d
	BCC lbl_f2e3
	CMP #$99
	BCS lbl_f2e3
  lbl_f2ad:
	JSR sub_febb
	BEQ lbl_f2e3
	LDA $03F8
	BEQ lbl_f2e3
	LDX $59
	CMP $98
	BNE lbl_f2e3
	STX $64
	STA $98,X
	JSR $7013
	LDA $70
	CLC
	ADC $F1FD,Y
	STA $70,X
	LDA $84
	CLC
	ADC $F201,Y
	STA $84,X
	LDA #$5f
	STA $034F,X
	JSR lbl_eee4
	STA $04F0,X
	LDA #$01
	STA $AC,X
  lbl_f2e3:
	LDX #$00
	LDA $12
	CMP #$05
	BNE lbl_f2fd
	LDA $049E
	PHA
	LDA #$05
	JSR set_prg_bank
	JSR $B3F4
	LDX #$00
	PLA
	STA $049E
  lbl_f2fd:
	JSR sub_fa3c
	LDA $12
	CMP #$09
	BEQ lbl_f30a
	LDA $10
	BNE lbl_f30e
  lbl_f30a:
	INC $01
	INC $01
  lbl_f30e:
	LDA $AC
	AND #$30
	CMP #$10
	BEQ lbl_f31a
	CMP #$20
	BNE lbl_f31f
  lbl_f31a:
	TYA
	CLC
	ADC #$04
	TAY
  lbl_f31f:
	TYA
	LDY #$00
	JSR $77E7
	LDA $0676
	BNE lbl_f340
	LDA $98
	CMP #$04
	BNE lbl_f36a
	LDX #$01
	LDA $0248,X
	CMP #$0B
	BCS lbl_f36a
	PHA
	CLC
	ADC #$50
	JMP lbl_f35a
  lbl_f340:
	LDX #$01
	LDA $98
	LSR A
	BCC lbl_f349
	LDX #$05
  lbl_f349:
	LDY #$04
	LDA $0248,X
	PHA
  lbl_f34f:
	DEY
	BMI lbl_f35d
	CMP $F205,Y
	BNE lbl_f34f
	LDA $F209,Y
  lbl_f35a:
	STA $0248,X
  lbl_f35d:
	PLA
	CMP #$0A
	BNE lbl_f36a
	LDA $0249,X
	AND #$0F
	STA $0249,X
  lbl_f36a:
	RTS

.byte $40,$C0,$80,$00
sub_f36f:
	LDA $AC,X
	BEQ lbl_f36a
	LSR A
	BCC lbl_f379
	JMP lbl_f41d
  lbl_f379:
	LDA $0394,X
	BNE lbl_f37e
  lbl_f37e:
	LDA $98,X
	JSR $7027
	LDA $0F
	BEQ lbl_f3d4
	LDA $0394,X
	AND #$07
	BNE lbl_f391
	STA $0394,X
  lbl_f391:
	JSR sub_fa93
	LDA $98,X
	PHA
	AND #$03
	BEQ lbl_f3a2
	LDA local1
	CLC
	ADC #$03
	STA local1
  lbl_f3a2:
	PLA
	JSR $7013
	LDA $15
	AND #$03
	ORA $F50D,Y
	JSR $7988
	LDA $F509,Y
	STA $0C
	CPY #$02
	BNE lbl_f3bb
	INC $0F
  lbl_f3bb:
	LDY #$22
	CPX #$0D
	BCS lbl_f3ca
	LDA $034F,X
	CMP #$57
	BEQ lbl_f3d1
	BNE lbl_f3cf
  lbl_f3ca:
	LDA $AC,X
	ASL A
	BCC lbl_f3d1
  lbl_f3cf:
	LDY #$23
  lbl_f3d1:
	JMP $7915
  lbl_f3d4:
	LDA $AC,X
	ASL A
	BCC lbl_f416
	LDA $0661
	BEQ lbl_f413
	LDA $AC
	PHA
	LDA $0513
	PHA
	LDA #$00
	STA $0513
	JSR $714F
	PLA
	STA $0513
	PLA
	STA $AC
	LDA $AC,X
	CMP #$21
	BNE lbl_f411
	INC $AC,X
	LDY #$0E
	LDA $0070,Y
	STA $70,X
	LDA $0084,Y
	STA $84,X
	LDA $0098,Y
	STA $98,X
	LDA #$4f
	STA $28,X
  lbl_f411:
	LDX #$0E
  lbl_f413:
	JMP lbl_f855
  lbl_f416:
	INC $AC,X
	LDA #$FE
	STA $98,X
	RTS
  lbl_f41d:
	LDA $98,X
	STA local2
	STA local3
	LDA #$00
	STA $0F
	LDY #$03
  lbl_f429:
	TYA
	PHA
	LDA local2
	PHA
	LDA local3
	PHA
	LDA $15
	AND #$03
	ORA $F36B,Y
	JSR $7988
	LDA $70,X
	CLC
	ADC local2
	STA local0
	CMP $70,X
	BCC lbl_f450
	CMP #$FC
	BCS lbl_f475
	SEC
	SBC $70,X
	JMP lbl_f455
  lbl_f450:
	LDA $70,X
	SEC
	SBC local0
  lbl_f455:
	CMP #$20
	BCS lbl_f475
	LDA $84,X
	CLC
	ADC local3
	STA local1
	LDY $10
	BEQ lbl_f46c
	CMP #$3e
	BCC lbl_f475
	CMP #$E8
	BCS lbl_f475
  lbl_f46c:
	LDA #$02
	STA $0C
	LDY #$23
	JSR $7915
  lbl_f475:
	PLA
	STA local3
	PLA
	STA local2
	PLA
	PHA
	TAY
	CPY #$01
	BNE lbl_f484
	LDY #$03
  lbl_f484:
	LDA local0,Y
	EOR #$Ff
	CLC
	ADC #$01
	STA local0,Y
	PLA
	TAY
	DEY
	BPL lbl_f429
	DEC $98,X
	LDA $98,X
	CMP #$E8
	BNE lbl_f49f
	JMP lbl_f411
  lbl_f49f:
	RTS

sub_f4a0:
	LDA $AC,X
	BEQ lbl_f49f
	ASL A
	BCC lbl_f519
	LDA $28,X
	BNE lbl_f4b9
	INC $AC,X
	LDA $AC,X
	AND #$0F
	CMP #$03
	BEQ lbl_f4e2
	LDA #$Ff
	STA $28,X
  lbl_f4b9:
	LDA $035F
	CMP #$03
	BCC lbl_f4d8
	CMP #$0B
	BCC lbl_f4d0
	CMP #$12
	BEQ lbl_f4d0
	CMP #$1b
	BEQ lbl_f4d0
	CMP #$1c
	BNE lbl_f4d8
  lbl_f4d0:
	LDA $70,X
	STA $61
	LDA $84,X
	STA $62
  lbl_f4d8:
	JSR sub_fa93
	LDA #$02
	LDY #$06
	JMP $790C
  lbl_f4e2:
	JMP lbl_f855

;F4E5:
.byte $00,$01,$02,$01,$00,$01,$02,$01,$03,$00,$00,$00
.byte $40,$40,$C0,$80,$80,$01,$00,$20,$36,$4C,$60,$68,$70,$78
.byte $80,$80,$78,$70,$68,$60,$4C,$36,$20,$00,$00,$00,$01,$01
.byte $00,$80,$00,$00,$FC,$FC,$00,$00,$00,$00,$03,$03

;F519:
  lbl_f519:
	LDA $AC,X
	BEQ lbl_f49f
	LDA #$00
	STA local0
	LDA $AC,X
	AND #$F0
	CMP #$10
	BEQ lbl_f52c
	JMP lbl_f5b6
  lbl_f52c:
	LDA #$00
	STA $0E
	LDA $98,X
	AND #$03
	BEQ lbl_f53b
	JSR $7027
	INC $0E
  lbl_f53b:
	LDA $0E
	ASL A
	BCS lbl_f575
	LDA $98,X
	AND #$0C
	BEQ lbl_f549
	JSR $7027
  lbl_f549:
	LDA $0E
	ASL A
	BCS lbl_f575
	CPX #$0D
	BCS lbl_f559
	LDA $034F,X
	CMP #$5B
	BEQ lbl_f57b
  lbl_f559:
	CPX #$12
	BEQ lbl_f57b
	LDA $0394,X
	BPL lbl_f567
	EOR #$Ff
	CLC
	ADC #$01
  lbl_f567:
	CMP $0380,X
	BCC lbl_f578
	LDA #$10
	STA $0380,X
	LDA #$20
	STA $AC,X
  lbl_f575:
	JMP lbl_f5e1
  lbl_f578:
	JMP lbl_f6b8
  lbl_f57b:
	LDA #$00
	STA $0F
	LDA $98,X
	CMP #$02
	BNE lbl_f587
	INC $0F
  lbl_f587:
	JSR $7013
	LDA $F509,Y
	STA $0C
	LDA $F50D,Y
  lbl_f592:
	STA $04
	CPX #$0D
	BCS lbl_f5a6
	LDA $034F,X
	CMP #$5B
	BNE lbl_f5a6
	LDA $04
	CLC
	ADC #$02
	BNE lbl_f5ad
  lbl_f5a6:
	CLC
	ADC $0659
	SEC
	SBC #$01
  lbl_f5ad:
	STA $04
	LDA $04
	STA $05
	JMP lbl_f714
  lbl_f5b6:
	CMP #$20
	BNE lbl_f611
	LDA #$28
	STA $AC,X
	DEC $03D0,X
	BNE lbl_f5ed
	LDA #$40
	STA $AC,X
	CPX #$0D
	BCS lbl_f5d2
	LDA $034F,X
	CMP #$5B
	BEQ lbl_f5d6
  lbl_f5d2:
	CPX #$12
	BNE lbl_f5e1
  lbl_f5d6:
	JSR lbl_f855
	CPX #$0D
	BCS lbl_f5e0
	JSR $8346
  lbl_f5e0:
	RTS
  lbl_f5e1:
	LDA #$03
	STA $03D0,X
	LDA $AC,X
	CLC
	ADC #$10
	STA $AC,X
  lbl_f5ed:
	CPX #$0D
	BCS lbl_f5f8
	LDA $034F,X
	CMP #$5B
	BEQ lbl_f5ff
  lbl_f5f8:
	CPX #$12
	BEQ lbl_f5ff
	JMP lbl_f6d3
  lbl_f5ff:
	LDA #$02
	STA $0C
	LDA #$00
	STA $0F
	LDA $98,X
	JSR $7013
	LDA #$00
	JMP lbl_f592
  lbl_f611:
	CMP #$30
	BNE lbl_f641
	LDA #$00
	STA $0394,X
	LDA #$40
	STA $03BC,X
	LDA $98,X
	STA $0F
	AND #$02
	BEQ lbl_f62d
	LDA $70,X
	CMP #$02
	BCC lbl_f635
  lbl_f62d:
	JSR sub_f08d
	DEC $0380,X
	BNE lbl_f63e
  lbl_f635:
	LDA #$20
	STA $0380,X
	LDA #$40
	STA $AC,X
  lbl_f63e:
	JMP lbl_f6b8
  lbl_f641:
	LDA #$00
	STA $0394,X
	CPX #$0D
	BCS lbl_f64d
	LDA $042C,X
  lbl_f64d:
	JSR $704A
	LDA local0
	CMP #$02
	BNE lbl_f691
	LDA #$00
	STA $0380,X
	CPX #$0D
	BCC lbl_f672
	LDA $AC
	ORA #$20
	STA $AC
	LDA #$01
	STA $03D0
	LDY #$0F
	LDA #$00
	STA $00AC,Y
	RTS
  lbl_f672:
	LDY #$30
	LDA $18,X
	CMP #$30
	BCC lbl_f682
	LDY #$50
	CMP #$70
	BCC lbl_f682
	LDY #$70
  lbl_f682:
	TYA
	LDY $042C,X
	STA $0028,Y
	LDA #$00
	STA $00AC,Y
	JMP $8346
  lbl_f691:
	LDY #$04
	JSR $706F
	LDA $F4F7,Y
	JSR $70AB
	LDA $0A
	STA $0F
	STA $98,X
	TYA
	PHA
	JSR sub_f08d
	PLA
	TAY
	LDA $F500,Y
	JSR $70AB
	LDA $0B
	STA $0F
	STA $98,X
	JSR sub_f08d
  lbl_f6b8:
	DEC $03D0,X
	BNE lbl_f6d3
	LDA #$02
	STA $03D0,X
	INC $AC,X
	LDA $AC,X
	AND #$77
	STA $AC,X
	CPX #$0D
	BCC lbl_f6e8
	LDY #$02
	JSR $6E10
  lbl_f6d3:
	CPX #$0D
	BCS lbl_f6e8
	JSR $7AA7
	LDA $034B
	BEQ lbl_f6e8
	LDA #$03
	STA $03D0,X
	LDA #$20
	STA $AC,X
  lbl_f6e8:
	LDA #$00
	STA local0
	LDA $AC,X
	AND #$0F
	TAY
	LDA #$00
	STA local1
	LDA $F4E5,Y
	STA $0C
	TYA
	LDA $F4EE,Y
	STA $04
	LDY #$00
	CMP #$08
	BEQ lbl_f709
	LDY $0675
  lbl_f709:
	TYA
	CLC
	ADC $04
	STA $04
	LDY #$1d
	JMP lbl_f720
  lbl_f714:
	LDA $F511,Y
	STA local0
	LDA $F515,Y
	STA local1
	LDY #$02
  lbl_f720:
	LDA $70,X
	CLC
	ADC local0
	STA local0
	LDA $84,X
	CLC
	ADC local1
	STA local1
	LDA $AC,X
	AND #$F0
	CMP #$20
	BNE lbl_f73b
	LDA #$01
	JSR $7988
  lbl_f73b:
	JMP $7915

sub_f73e:
	LDA $AC,X
	AND #$F0
	CMP #$30
	BCS sub_f769
	JMP lbl_f519

;F749
.byte $FF,$01,$00,$F8,$FF,$01,$F5,$0B,$FF,$01,$F9,$07,$FF,$01,$FD,$03,$F7,$F2,$F5,$F5,$F6,$0D,$03,$03
.byte $F7,$09,$03,$03,$FF,$05,$03,$03
sub_f769:
	LDA $AC,X
	AND #$0F
	BEQ lbl_f793
	DEC $03D0,X
	BNE lbl_f794
	LDA $AC,X
	AND #$0F
	TAY
	LDA #$08
	DEY
	BEQ lbl_f780
	LDA #$01
  lbl_f780:
	STA $03D0
	STA $03D0,X
	INC $AC,X
	LDA $AC,X
	AND #$0F
	CMP #$06
	BCC lbl_f794
	JSR lbl_f855
  lbl_f793:
	RTS
  lbl_f794:
	LDA #$00
	STA $0F
	LDA $AC,X
	AND #$0F
	TAY
	LDA #$FC
	CPY #$05
	BEQ lbl_f793
  lbl_f7a3:
	CLC
	ADC #$04
	DEY
	BNE lbl_f7a3
	STA local0
	LDA $98
	STA $98,X
	JSR $7013
	TYA
	CLC
	ADC local0
	TAY
	LDA $70
	CLC
	ADC $F749,Y
	STA $70,X
	STA local0
	LDA $84
	CLC
	ADC $F759,Y
	STA $84,X
	STA local1
	LDA $AC,X
	AND #$0F
	TAY
	LDA #$08
	DEY
	BEQ lbl_f7d7
	LDA $98,X
  lbl_f7d7:
	JSR $7013
	LDA $F509,Y
	STA $0C
	LDA $F50D,Y
	CPX #$0D
	BEQ lbl_f7eb
	ORA #$01
	JMP lbl_f7f2
  lbl_f7eb:
	CLC
	ADC $0657
	SEC
	SBC #$01
  lbl_f7f2:
	JSR $7988
	CPY #$02
	BNE lbl_f7fb
	INC $0F
  lbl_f7fb:
	LDA $AC,X
	AND #$0F
	CMP #$01
	BEQ lbl_f854
	LDY #$00
	CPX #$0D
	BEQ lbl_f80b
	LDY #$08
  lbl_f80b:
	JSR $7915
	LDA $AC,X
	AND #$0F
	CMP #$03
	BNE lbl_f854
	CPX #$12
	BNE lbl_f85a
	LDX #$0E
	LDA $AC,X
	BEQ lbl_f823
	ASL A
	BCS lbl_f854
  lbl_f823:
	LDA #$04
	STA soundEffectRequest
	LDA #$80
  lbl_f82a:
	STA $AC,X
	LDA #$10
	JSR $711F
	LDA $98,X
	AND #$03
	BEQ lbl_f841
	LDA $70,X
	CMP #$14
	BCC lbl_f855
	CMP #$EC
	BCS lbl_f855
  lbl_f841:
	LDY #$C0
	LDA $AC,X
	ASL A
	BCC lbl_f84a
	LDY #$A0
  lbl_f84a:
	TYA
	STA $03BC,X
	LDA $0394
	STA $0394,X
  lbl_f854:
	RTS
  lbl_f855:
	LDA #$00
  lbl_f857:
	STA $AC,X
	RTS
  lbl_f85a:
	LDX #$0E
	LDA $AC,X
	BNE lbl_f854
	LDA $0529
	BNE lbl_f87d
	LDA $066F
	PHA
	AND #$0F
	STA local0
	PLA
	LSR A
	LSR A
	LSR A
	LSR A
	CMP local0
	BNE lbl_f854
	LDA $0670
	CMP #$80
	BCC lbl_f854
  lbl_f87d:
	LDA #$01
	JSR $6D7C
	LDA #$10
	BNE lbl_f82a
  lbl_f886:
	LDA $AC,X
	CMP #$21
	BNE lbl_f8b1
	LDA $0394,X
	PHA
	LDA #$00
	STA $0394,X
	LDA $98,X
	STA $0F
	JSR sub_f08d
	PLA
	CLC
	ADC $0394,X
	STA $0394,X
	JSR $701F
	CMP #$10
	BNE lbl_f8c5
	LDA #$3F
	STA $28,X
	INC $AC,X
  lbl_f8b1:
	LDA $28,X
	BEQ lbl_f855
	LDA $10
	BEQ lbl_f8c5
	TXA
	PHA
	LDA #$04
	JSR set_prg_bank
	JSR $B1BE
	PLA
	TAX
  lbl_f8c5:
	LDA #$04
	JSR sub_fa89
	JSR sub_fa72
	JSR $7986
	LDA #$00
	STA $0C
	LDY #$40
	JSR $77E6
	LDA $04F0
	BNE lbl_f91d
	STX local0
	LDX #$00
	LDY #$02
	JSR sub_f90d
	LDX local0
	LDY #$00
	JSR sub_f90d
	LDY local0
	LDX #$00
	LDA #$0E
	JSR $7DFB
	BEQ lbl_f91d
	LDX local0
	LDY #$00
	STY local0
	JSR $7E26
	LDA #$00
	STA $0D
	LDA #$80
	STA $0E
	JMP $7B4F

sub_f90d:
	LDA $70,X
	CLC
	ADC #$08
	STA local2,Y
	LDA $84,X
	CLC
	ADC #$08
	STA local3,Y
  lbl_f91d:
	RTS

;F91E
.byte $30,$18,$0C,$06,$78,$78,$20,$D0,$5D,$BD,$8D,$8D

sub_f92a:
	LDA $AC,X
	BEQ lbl_f95f
	AND #$F0
	CMP #$10
	BEQ lbl_f937
	JMP lbl_f886
  lbl_f937:
	LDA $28,X
	BNE lbl_f9ae
	LDA $AC,X
	AND #$0f
	TAY
	LDA $F91D,Y
	STA $28,X
	INC $AC,X
	LDA $AC,X
	AND #$0f
	PHA
	CMP #$03
	BNE lbl_f955
	LDA #$10
	JSR $6D80
  lbl_f955:
	PLA
	CMP #$05
	BNE lbl_f960
	JSR lbl_f855
	STA $28,X
  lbl_f95f:
	RTS
  lbl_f960:
	CMP #$04
	BNE lbl_f9ae
	LDA $10
	BEQ lbl_f9ae
	LDA $12
	CMP #$09
	BEQ lbl_f9ae
	LDY #$04
  lbl_f970:
	DEY
	BMI lbl_f9ae
	LDA $F922,Y
	SEC
	SBC $70,X
	JSR $701F
	CMP #$18
	BCS lbl_f970
	LDA $F926,Y
	SEC
	SBC $84,X
	JSR $701F
	CMP #$18
	BCS lbl_f970
	LDA $6DC3,Y
	STA local2
	AND $EE
	BNE lbl_f9ae
	LDA $54
	BNE lbl_f9ae
	LDA #$05
	JSR set_prg_bank
	JSR $A3F6
	CMP #$04
	BNE lbl_f9ae
	LDA #$06
	STA $54
	LDA local2
	STA $55
  lbl_f9ae:
	JSR sub_fa93
	JSR sub_f9bf
	LDA $AC,X
	AND #$0f
	CMP #$02
	BEQ lbl_f95f
	JMP lbl_f9e5

sub_f9bf:
	JSR $71BB

sub_f9c2:
	LDA $AC,X
	AND #$0f
	SEC
	SBC #$02
sub_f9c9:
	STA $0C
	LDY #$00
	STY $0F
	INY
	STY $04
	STY $05
	LDY #$01
	JMP $7915

;F9D9
.byte $F3,$00,$0E,$F9,$0E,$07,$F3,$00,$0E,$07,$F3,$F9

  lbl_f9e5:
	LDY #$02
  lbl_f9e7:
	TYA
	PHA
	LDA $15
	LSR A
	BCC lbl_f9f3
	TYA
	CLC
	ADC #$06
	TAY
  lbl_f9f3:
	LDA $84,X
	CLC
	ADC $F9D9,Y
	STA local1
	LDA $70,X
	CLC
	ADC $F9DC,Y
	STA local0
	JSR sub_f9c2
	PLA
	TAY
	DEY
	BPL lbl_f9e7
	RTS

sub_fa0c:
	JSR sub_fa93
	LDA $0405,X
	CMP #$10
	BCS lbl_fa27
	AND #$0f
	JSR sub_f9c9
  lbl_fa1b:
	LDA $28,X
	BNE lbl_fa26
  lbl_fa1f:
	LDA #$06
	STA $28,X
	INC $0405,X
  lbl_fa26:
	RTS
  lbl_fa27:
	AND #$0f
	BEQ lbl_fa1f
	AND #$01
	STA $0C
	LDA #$01
	JSR $7988
	LDY #$24
	JSR $7915
	JMP lbl_fa1b

sub_fa3c:
	LDA $AC
	BNE lbl_fa4f
	LDA $12
	CMP #$04
	BEQ lbl_fa4f
	CMP #$10
	BEQ lbl_fa4f
	LDA $03F8
	BEQ lbl_fa62
  lbl_fa4f:
	DEC $03D0,X
	BNE lbl_fa62
	CPX #$00
	BNE lbl_fa5b
	JSR sub_faae
  lbl_fa5b:
	LDA #$06
	STA local0
	JSR sub_faa0
  lbl_fa62:
	JSR sub_fa93
	LDA $98,X
	AND #$0C
	BEQ sub_fa78
	LDY #$03
	AND #$08
	BNE sub_fa72
	DEY

sub_fa72:
	LDA $03E4,X
	STA $0F
	RTS
sub_fa78:
	LDY #$00
	LDA $03E4,X
	BEQ lbl_fa80
	INY
  lbl_fa80:
	LDA $98,X
	AND #$01
	BNE lbl_fa88
	INC $0F
  lbl_fa88:
	RTS

sub_fa89:
	STA local0
	DEC $03D0,X
	BNE sub_fa93
	JSR sub_faa0
sub_fa93:
	LDA $70,X
	STA local0
	LDA $84,X
	STA local1
	LDA #$00
	STA $0F
	RTS
sub_faa0:
	LDA local0
	STA $03D0,X
	LDA $03E4,X
	EOR #$01
	STA $03E4,X
	RTS

sub_faae:
	LDA $AC
	AND #$30
	CMP #$10
	BNE lbl_fabe
	LDA $AC
	AND #$0f
	BNE lbl_facd
	BEQ lbl_fac8
  lbl_fabe:
	CMP #$20
	BNE lbl_fad9
	LDA $AC
	AND #$0f
	BNE lbl_facd
  lbl_fac8:
	INC $AC
	JMP lbl_fad3
  lbl_facd:
	LDA $AC
	ORA #$30
	STA $AC
  lbl_fad3:
	LDA #$01
	STA $03E4
	RTS
  lbl_fad9:
	CMP #$30
	BNE lbl_fae3
	LDA $AC
	AND #$c0
	STA $AC
  lbl_fae3:
	RTS

.byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
.byte $00,$00,$00,$00,$00,$00,$05,$05,$05,$05,$81,$81
.byte $81,$81,$01,$01,$81,$01,$01,$43,$43,$81,$81,$81
.byte $81,$01,$81,$81,$81,$01,$81,$81,$81,$81,$81,$81
.byte $C3,$C3,$89,$89,$81,$81,$89,$89,$89,$89,$83,$81
.byte $89,$89,$C9,$C9,$81,$81,$81,$A9,$A9,$41,$41,$89
.byte $89,$81,$81,$81,$C1,$C1,$C1,$C1,$C1,$81,$81,$81
.byte $A1,$A1,$81,$81,$81,$81,$81,$81,$81,$81,$E3,$E3
.byte $E3,$E3,$E3,$E1,$E1,$E1,$E1,$E1,$81,$81,$06,$43
.byte $25,$31,$12,$24,$81,$14,$22,$42,$00,$A9,$8F,$20
.byte $00,$3F,$F9,$FA,$46,$62,$11,$2F,$FF,$FF,$7F,$F6
.byte $2F,$FF,$FF,$22,$46,$F1,$F2,$AA,$AA,$FB,$BF,$F0

;FB74
sub_fb74:
	PHA
	LDA #$04
	JSR set_prg_bank
	PLA
	LDY $0492,X
	STY $0F
	BEQ lbl_fb9d
	LDA $034F,X
	CMP #$1e
	BEQ lbl_fb95
	CMP #$22
	BEQ lbl_fb95
	CMP #$53
	BCS lbl_fb95
	LDA #$07
	STA $28,X
  lbl_fb95:
	LDA #$00
	STA $0492,X
	JMP lbl_fcda
  lbl_fb9d:
	LDY $0405,X
	BEQ lbl_fba5
	JMP lbl_fc88
  lbl_fba5:
	CMP #$6a
	BCC lbl_fbb1
	LDA #$01
	JSR set_prg_bank
	JMP $86DB
  lbl_fbb1:
	JSR switch_jump
	.addr lbl_fc94
	.addr $87CC
	.addr $87CC
	.addr $87BF
	.addr $87BF
	.addr $8119
	.addr $8119
	.addr $8BFF
	.addr $8BFF
	.addr $8BFF
	.addr $8BFF
	.addr $9B4B
	.addr $9B4B
	.addr $88F8
	.addr $88F8
	.addr $8A65
	.addr $8B09
	.addr $8798
	.addr $9D57
	.addr $84CB
	.addr $8568
	.addr $8568
	.addr $9BA2
	.addr $9CC9
	.addr $95F0
	.addr lbl_fc94
	.addr $9028
	.addr $8481
	.addr $8481
	.addr $8481
	.addr $8D50
	.addr $8886
	.addr $88F8
	.addr $8C6B
	.addr $8FEF
	.addr $9DE3
	.addr $9FA9
	.addr $ABDA
	.addr $ABDA
	.addr $90E4
	.addr $92D6
	.addr lbl_fc94
	.addr $9377
	.addr $843E
	.addr $843E
	.addr $843E
	.addr lbl_fe40
	.addr $8D90
	.addr $9B36
	.addr $98A9
	.addr $98A9
	.addr $A316
	.addr $A316
	.addr lbl_fe50
	.addr lbl_fe90
	.addr $A987
	.addr $95F0
	.addr $95F0
	.addr $A9EB
	.addr $A9EB
	.addr $A187
	.addr $9786
	.addr $AC7D
	.addr $A9D8
	.addr $804F
	.addr $9498
	.addr $A4DE
	.addr $A4DE
	.addr $A4DE
	.addr $A4DE
	.addr $A477
	.addr $AB66
	.addr $AB66
	.addr lbl_fe60
	.addr lbl_fe60
	.addr lbl_fe80
	.addr lbl_fe80
	.addr lbl_fe80
	.addr lbl_fe80
	.addr lbl_fe80
	.addr lbl_fe80
	.addr lbl_fe88
	.addr lbl_fe80
	.addr $82D7
	.addr $82D7
	.addr $8399
	.addr $8399
	.addr $82D7
	.addr $82D7
	.addr $82D7
	.addr $82D7
	.addr $883F
	.addr lbl_f519
	.addr lbl_fea6
	.addr lbl_fef4
	.addr lbl_fc94
	.addr $B0FC
	.addr $8F76
	.addr $8E44
	.addr $8EEB
	.addr $8F0E
	.addr $8E44
	.addr $8E44
	.addr $8EEB
	.addr $81F7
	.addr lbl_fc94
  lbl_fc88:
	JSR sub_fa0c
	LDA $0405,X
	AND #$0f
	CMP #$04
	BCS lbl_fc95
  lbl_fc94:
	RTS
  lbl_fc95:
	LDA $0405,X
	AND #$10
	BEQ lbl_fcd7
	LDA $034F,X
	STA $0412,X
	CMP #$5d
	BEQ lbl_fcc7
	CMP #$14
	BEQ lbl_fcc7
	CMP #$1c
	BEQ lbl_fcc7
	LDA $052A
	CLC
	ADC #$01
	CMP #$0a
	BNE lbl_fcba
	LDA #$00
  lbl_fcba:
	STA $052A
	LDA $034F,X
	CMP #$11
	BEQ lbl_fcc7
	INC $034F
  lbl_fcc7:
	LDA #$60
	STA $034F,X
	STA $0492,X
	LDA #$81
	STA $04BF,X
	JSR $B06A
  lbl_fcd7:
	JMP lbl_feda
  lbl_fcda:
	LDX $0340
	LDA $10
	BNE lbl_fd3c
	LDA $04CD
	AND #$08
	BEQ lbl_fd3c
	LDA $034F,X
	CMP #$11
	BEQ lbl_fd3c
	CMP #$40
	BEQ lbl_fd3c
	CMP #$1e
	BEQ lbl_fd3c
	CMP #$2e
	BEQ lbl_fd3c
	CMP #$53
	BCS lbl_fd3c
  lbl_fcff:
	LDA $4B
	BEQ lbl_fd07
	STA $0492,X
	RTS
  lbl_fd07:
	LDX $0340
	LDA #$05
	JSR set_prg_bank
	JSR $9024
	LDA $0525
	PHA
	ASL A
	ASL A
	ASL A
	ASL A
	STA $70,X
	PLA
	AND #$F0
	SEC
	SBC #$03
	STA $84,X
	LDA $19,X
	AND #$03
	CLC
	ADC #$02
	STA $4B
	LDA #$05
	JSR set_prg_bank
	JSR $8A13
	BCS lbl_fcff
	LDA #$00
	STA $0405,X
  lbl_fd3c:
	LDA #$04
	JSR set_prg_bank
	LDX $0340
	LDY $034F,X
	CPY #$1e
	BEQ lbl_fd56
	CPY #$22
	BEQ lbl_fd56
	CPY #$53
	BCS lbl_fd56
	TXA
	STA $28,X
  lbl_fd56:
	LDA $FAEF,Y
	STA $04BF,X
	TYA
	STA local0
	LSR A
	TAY
	LDA $FB4E,Y
	JSR $B000
	STA $0485,X
	LDA local0
	CMP #$6a
	BCC lbl_fd78
	LDA #$01
	JSR set_prg_bank
	JMP $85D0
  lbl_fd78:
	CMP #$5f
	BCC lbl_fd7f
	JMP lbl_feca
  lbl_fd7f:
	JSR switch_jump
	.addr lbl_fc94
	.addr $8025
	.addr $8025
	.addr $8025
	.addr $8025
	.addr $8025
	.addr $8025
	.addr $8755
	.addr $8759
	.addr $8755
	.addr $8759
	.addr $9B20
	.addr $9B20
	.addr $873F
	.addr $873F
	.addr $874E
	.addr $874E
	.addr lbl_fed6
	.addr $8025
	.addr $8025
	.addr $8025
	.addr $8561
	.addr $8025
	.addr $8025
	.addr lbl_fc94
	.addr lbl_fc94
	.addr $8775
	.addr $841D
	.addr $8435
	.addr $8435
	.addr $8CC0
	.addr $8737
	.addr $873C
	.addr $8755
	.addr $8CC0
	.addr lbl_fed6
	.addr lbl_fed6
	.addr lbl_fed6
	.addr lbl_fed6
	.addr lbl_fed6
	.addr $92C2
	.addr lbl_fc94
	.addr $8025
	.addr $8415
	.addr $8415
	.addr $8415
	.addr lbl_fc94
	.addr $878A
	.addr $8025
	.addr $9487
	.addr $9487
	.addr $A161
	.addr $A161
	.addr lbl_fe48
	.addr lbl_fe78
	.addr $A8CA
	.addr $945A
	.addr $9479
	.addr $A8E4
	.addr $A8E4
	.addr $A10C
	.addr $9447
	.addr $A96F
	.addr lbl_fc94
	.addr lbl_fc94
	.addr $93E2
	.addr $A08D
	.addr $A08D
	.addr $A08D
	.addr $A08D
	.addr $A179
	.addr $A92E
	.addr $A92E
	.addr lbl_fe58
	.addr lbl_fe58
	.addr lbl_fe68
	.addr lbl_fe68
	.addr lbl_fe68
	.addr lbl_fe68
	.addr lbl_fe68
	.addr lbl_fe68
	.addr lbl_fe70
	.addr lbl_fe68
	.addr $8015
	.addr $8019
	.addr $8015
	.addr $8015
	.addr $8015
	.addr $8015
	.addr $8015
	.addr $8015
	.addr lbl_feda
	.addr lbl_feda
	.addr lbl_fea6
	.addr lbl_fed1
  lbl_fe40:
	LDA #$01
	JSR set_prg_bank
	JMP $A018
  lbl_fe48:
	LDA #$01
	JSR set_prg_bank
	JMP $A2E2
  lbl_fe50:
	LDA #$01
	JSR set_prg_bank
	JMP $A3EE
  lbl_fe58:
	LDA #$01
	JSR set_prg_bank
	JMP $A31A
  lbl_fe60:
	LDA #$01
	JSR set_prg_bank
	JMP $A34A
  lbl_fe68:
	LDA #$01
	JSR set_prg_bank
	JMP $89FC
  lbl_fe70:
	LDA #$01
	JSR set_prg_bank
	JMP $8A40
  lbl_fe78:
	LDA #$01
	JSR set_prg_bank
	JMP $8AB4
  lbl_fe80:
	LDA #$01
	JSR set_prg_bank
	JMP $8AD9
  lbl_fe88:
	LDA #$01
	JSR set_prg_bank
	JMP $8BA6
  lbl_fe90:
	LDA #$01
	JSR set_prg_bank
	JMP $8C5A

sub_fe98:
	LDA $04F0,X
	BEQ lbl_fea5
	LDA $15
	LSR A
	BCS lbl_fea5
	DEC $04F0,X
  lbl_fea5:
	RTS
  lbl_fea6:
	LDA #$20
	STA musicEffectRequest
	LDA #$10
	STA $0405,X
	RTS

sub_feb1:
	LDA #$00
	STA $034F,X
	LDA #$00
	JMP $71A5
sub_febb:
	LDY #$0C
  lbl_febd:
	DEY
	BEQ lbl_fec7
	LDA $034F,Y
	BNE lbl_febd
	STY $0059
  lbl_fec7:
	CPY #$00
	RTS

  lbl_feca:
	LDA #$81
	STA $04BF,X
	BNE lbl_fed6
  lbl_fed1:
	LDA #$01
	STA $051A
  lbl_fed6:
	LDA #$00
	STA $28,X
  lbl_feda:
	LDA #$00
	STA $0405,X
	RTS

;FEE0
arr_fee0: .byte $3F,$0C,$04,$0F,$17,$37,$12,$FF
arr_fee8: .byte $12,$11,$22,$21,$31,$32,$33,$35,$34,$36,$37,$37
  lbl_fef4:
	LDY $051A
	CPY #$0C
	BCS lbl_ff28
	LDA $15
	AND #$07
	CMP #$04
	BNE lbl_ff28
	INC $051A
	CPY #$0B
	BEQ lbl_ff29
  lbl_ff0a:
	TYA
	PHA
	LDY #$07
  lbl_ff0e:
	LDA arr_fee0,Y
	STA $0302,Y
	DEY
	BPL lbl_ff0e
	PLA
	TAY
	LDA arr_fee8,Y
	STA $0308
	CPY #$0A
	BNE lbl_ff28
	LDA #$99
	STA $034A
  lbl_ff28:
	RTS
  lbl_ff29:
	LDA #$60
	STA $70,X
	LDA #$90
	STA $84,X
	JMP $8F32

	LDA $15
	AND #$04
	BEQ lbl_ff28
	DEC $051A
	LDY $051A
	JMP lbl_ff0a

.repeat 13
	.byte $FF
.endrepeat

;FF50
reset:
	SEI
	CLD
	LDA #$0
	STA PPUCTRL
	LDX #$FF
	TXS
  ;Wait for vblank twice
  vblank_wait1:
	LDA PPUSTATUS
	AND #$80
	BEQ vblank_wait1
  vblank_wait2:
	LDA PPUSTATUS
	AND #$80
	BEQ vblank_wait2
	ORA #$FF
	STA $8000
	STA $A000
	STA $C000
	STA $E000
	LDA #$0F
	JSR mmc_control
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
	JSR set_prg_bank
	JMP main

;FF98
mmc_control:
;Sets the MMC control register
;Parameters: A = value to set the MMC control register to
.repeat 4
	STA $8000
	LSR
.endrepeat
	STA $8000
	RTS

;FFAC
set_prg_bank:
;Changes the current PRG bank loaded at $8000
;Parameters: A = the bank to change to
.repeat 4
	STA $E000
	LSR
.endrepeat
	STA $E000
	RTS

.repeat 43
	.byte $FF
.endrepeat

;Not sure what these bytes are for
.byte $5A,$45,$4C,$44,$41,$D7,$C8,$00,$00,$38,$04,$01,$04,$01,$BE

;Interrupt vector table
.segment "VECTORS"
	.word nmi
	.word reset
	.word $FFF0 ;irq is not used
