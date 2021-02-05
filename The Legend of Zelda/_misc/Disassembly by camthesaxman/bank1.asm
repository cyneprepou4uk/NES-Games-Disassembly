.include "nes.inc"
.include "zelda.inc"

;Program ROM Bank 1
.segment "PRG_1"

.charmap '0', $00
.charmap '1', $01
.charmap '2', $02
.charmap '3', $03
.charmap '4', $04
.charmap '5', $05
.charmap '6', $06
.charmap '7', $07
.charmap '8', $08
.charmap '9', $09
.charmap 'A', $0A
.charmap 'B', $0B
.charmap 'C', $0C
.charmap 'D', $0D
.charmap 'E', $0E
.charmap 'F', $0F
.charmap 'G', $10
.charmap 'H', $11
.charmap 'I', $12
.charmap 'J', $13
.charmap 'K', $14
.charmap 'L', $15
.charmap 'M', $16
.charmap 'N', $17
.charmap 'O', $18
.charmap 'P', $19
.charmap 'Q', $1A
.charmap 'R', $1B
.charmap 'S', $1C
.charmap 'T', $1D
.charmap 'U', $1E
.charmap 'V', $1F
.charmap 'W', $20
.charmap 'X', $21
.charmap 'Y', $22
.charmap 'Z', $23
.charmap ' ', $24
.charmap '~', $25
.charmap ',', $28
.charmap '!', $29
.charmap ''', $2A
.charmap '&', $2B
.charmap '.', $2C
.charmap '"', $2D
.charmap '?', $2E
.charmap '-', $2F

disasm_start:

dialogStringTable:
	.addr str1, str2, str3, str4, str5, str6, str7, str8, str9, str10, str11, str12, str13, str14
	.addr str15, str16, str17, str18, str19, str20, str21, str22, str23, str24, str25, str26, str27
	.addr str28, str29, str30, str31, str32, str33, str34, str35, str36, str37, str38
	
	str1:	.byte "~~IT'S DANGEROUS TO G",'O'|$80
			.byte "~~~~ALONE! TAKE THIS",'.'|$C0
			
	str2:	.byte "~~MASTER USING IT AN",'D'|$80
			.byte "~~~YOU CAN HAVE THIS",'.'|$C0
			
	str3:	.byte "~TAKE ANY ROAD YOU WANT",'.'|$C0
	
	str4:	.byte "~SECRET IS IN THE TRE",'E'|$80
			.byte "~~~~AT THE DEAD-END",'.'|$C0
			
	str5:	.byte "~~~LET'S PLAY MONE",'Y'|$80
			.byte "~~~MAKING GAME",'.'|$C0
			
	str6:	.byte "~~PAY ME FOR THE DOO",'R'|$80
			.byte "~~~~~REPAIR CHARGE",'.'|$C0
			
	str7:	.byte "~~~~SHOW THIS TO TH",'E'|$80
			.byte "~~~~~~~OLD WOMAN",'.'|$C0
			
	str8:	.byte "~~~~MEET THE OLD MA",'N'|$80
			.byte "~~~~~~AT THE GRAVE",'.'|$C0
			
	str9:	.byte "~~BUY MEDICINE BEFOR",'E'|$80
			.byte "~~YOU GO",'.'|$C0
			
	str10:	.byte "~~PAY ME AND I'LL TALK",'.'|$C0
	
	str11:	.byte "~~~THIS AIN'T ENOUG",'H'|$80
			.byte "~~~~~~~~TO TALK",'.'|$C0
			
	str12:	.byte "~~~~~~~GO UP,UP",','|$80
			.byte "~~~THE MOUNTAIN AHEAD",'.'|$C0
			
	str13:	.byte "~~GO NORTH,WEST,SOUTH",','|$80
			.byte "~~WEST TO THE FORES",'T'|$40
			.byte "  OF MAZE",'.'|$C0
			
	str14:	.byte "~~~~BOY, YOU'RE RICH",'!'|$C0
	
	str15:	.byte "~BUY SOMETHIN' WILL YA",'!'|$C0
	
	str16:	.byte "~~~~~BOY, THIS I",'S'|$80
			.byte "~~~REALLY EXPENSIVE",'!'|$C0
			
	str17:	.byte "~TAKE ANY ONE YOU WANT",'.'|$C0
	
	str18:	.byte "~~~~~IT'S A SECRE",'T'|$80
			.byte "~~~~~TO EVERYBODY",'.'|$C0
			
	str19:	.byte "~~~GRUMBLE,GRUMBLE..",'.'|$C0
	
	str20:	.byte "~~EASTMOST PENNINSUL",'A'|$80
			.byte "~~~~~IS THE SECRET",'.'|$C0
			
	str21:	.byte "~DODONGO DISLIKES SMOKE",'.'|$C0
	
	str22:	.byte "~DID YOU GET THE SWOR",'D'|$80
			.byte "~FROM THE OLD MAN O",'N'|$40
			.byte "~TOP OF THE WATERFALL",'?'|$C0
	
	str23:	.byte "~~~~~WALK INTO TH",'E'|$80
			.byte "~~~~~~~WATERFALL",'.'|$C0
	
	str24:	.byte "~~SECRET POWER IS SAI",'D'|$80
			.byte "~~~TO BE IN THE ARROW",'.'|$C0
	
	str25:	.byte "~~~~DIGDOGGER HATE",'S'|$80
			.byte "~CERTAIN KIND OF SOUND",'.'|$C0
	
	str26:	.byte "~~~~I BET YOU'D LIK",'E'|$80
			.byte "~~~TO HAVE MORE BOMBS",'.'|$C0
	
	str27:	.byte "~~~~IF YOU GO IN TH",'E'|$80
			.byte "~DIRECTION OF THE ARROW",'.'|$C0
	
	str28:	.byte "~~~~LEAVE YOUR LIF",'E'|$80
			.byte "~~~~~~~OR MONEY",'.'|$C0
	
	str29:	.byte "~THERE ARE SECRETS WHER",'E'|$80
			.byte "~~~FAIRIES DON'T LIVE",'.'|$C0
	
	str30:	.byte "~~~~AIM AT THE EYE",'S'|$80
			.byte "~~~~~~~OF GOHMA",'.'|$C0
	
	str31:	.byte "~~SOUTH OF ARROW MAR",'K'|$80
			.byte "~~~~HIDES A SECRET",'.'|$C0
	
	str32:	.byte "~~THERE'S A SECRET I",'N'|$80
			.byte "~~THE TIP OF THE NOSE",'.'|$C0
	
	str33:	.byte "~~~SPECTACLE ROCK I",'S'|$80
			.byte "~~AN ENTRANCE TO DEATH",'.'|$C0
	
	str34:	.byte "10TH ENEMY HAS THE BOMB",'.'|$C0
	
	str35:	.byte "~ONES WHO DOES NOT HAV",'E'|$80
			.byte "~TRIFORCE CAN'T GO IN",'.'|$C0
	
	str36:	.byte "~~~PATRA HAS THE MAP",'.'|$C0
	
	str37:	.byte "~~GO TO THE NEXT ROOM",'.'|$C0
	
	str38:	.byte "~~~~~EYES OF SKUL",'L'|$80
			.byte "~~~~~HAS A SECRET",'.'|$C0
	

disasm_end:
	.incbin "zelda_base.nes", $4010+(disasm_end-disasm_start), $4000-(disasm_end-disasm_start)
