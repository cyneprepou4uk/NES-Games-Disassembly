.include "notes.inc"
.include "songs.inc"

.segment "PRG_0"
; Over 3kB of wasted space? Why?
.repeat $D60
	.byte $FF
.endrepeat

;8D60
songTable:
.export songTable
.byte songDescriptor0 - songTable
.byte songDescriptor1 - songTable
.byte songDescriptor2 - songTable
.byte songDescriptor3 - songTable
.byte songDescriptor4 - songTable
.byte songDescriptor5 - songTable
.byte songDescriptor6 - songTable
.byte songDescriptor7 - songTable
.byte songDescriptor8 - songTable
.byte songDescriptor9 - songTable
.byte songDescriptor10 - songTable
.byte songDescriptor11 - songTable
.byte songDescriptor12 - songTable
.byte songDescriptor13 - songTable
.byte songDescriptor14 - songTable
.byte songDescriptor15 - songTable
.byte songDescriptor16 - songTable
.byte songDescriptor17 - songTable
.byte songDescriptor18 - songTable
.byte songDescriptor19 - songTable
.byte songDescriptor20 - songTable
.byte songDescriptor21 - songTable
.byte songDescriptor22 - songTable
.byte songDescriptor23 - songTable
.byte songDescriptor24 - songTable
.byte songDescriptor25 - songTable
.byte songDescriptor26 - songTable
.byte songDescriptor27 - songTable
.byte songDescriptor28 - songTable
.byte songDescriptor29 - songTable
.byte songDescriptor30 - songTable
.byte songDescriptor31 - songTable
.byte songDescriptor32 - songTable
.byte songDescriptor33 - songTable
.byte songDescriptor34 - songTable
.byte songDescriptor35 - songTable

;Title theme
songDescriptor25:
.byte $20
.addr song25voiceA
.byte song25voiceC - song25voiceA
.byte song25voiceB - song25voiceA
.byte song25voiceD - song25voiceA
.byte $80
.byte $01

songDescriptor26:
.byte $20
.addr song26voiceA
.byte song26voiceC - song26voiceA
.byte song26voiceB - song26voiceA
.byte song26voiceD - song26voiceA
.byte $01
.byte $80

songDescriptor27:
songDescriptor30:
.byte $20
.addr song27voiceA
.byte song27voiceC - song27voiceA
.byte song27voiceB - song27voiceA
.byte song27voiceD - song27voiceA
.byte $80
.byte $80

songDescriptor28:
.byte $20
.addr song28voiceA
.byte song28voiceC - song28voiceA
.byte song28voiceB - song28voiceA
.byte song28voiceD - song28voiceA
.byte $80
.byte $80

songDescriptor29:
songDescriptor34:
.byte $20
.addr song29voiceA
.byte song29voiceC - song29voiceA
.byte song29voiceB - song29voiceA
.byte song29voiceD - song29voiceA
.byte $80
.byte $80

songDescriptor31:
.byte $20
.addr song31voiceA
.byte song31voiceC - song31voiceA
.byte song31voiceB - song31voiceA
.byte song31voiceD - song31voiceA
.byte $80
.byte $80

songDescriptor32:
.byte $20
.addr song32voiceA
.byte song32voiceC - song32voiceA
.byte song32voiceB - song32voiceA
.byte song32voiceD - song32voiceA
.byte $80
.byte $80

songDescriptor33:
.byte $20
.addr song33voiceA
.byte song33voiceC - song33voiceA
.byte song33voiceB - song33voiceA
.byte song33voiceD - song33voiceA
.byte $80
.byte $80

songDescriptor6:
songDescriptor7:
.byte $10
.addr song6voiceA

songDescriptor3:
.byte $10
.addr song3voiceA
.byte song3voiceC - song3voiceA
.byte song3voiceB - song3voiceA
.byte song3voiceD - song3voiceA
.byte $80

;Triforce receiving theme
songDescriptor2:
.byte $10
.addr song2voiceA
.byte song2voiceC - song2voiceA
.byte song2voiceB - song2voiceA
.byte song2voiceD - song2voiceA
.byte $80

;Main overworld theme - Intro
songDescriptor8:
.byte $10
.addr song8voiceA
.byte song8voiceC - song8voiceA
.byte song8voiceB - song8voiceA
.byte song8voiceD - song8voiceA
.byte $01
.byte $80

;Main overworld theme - 1st 8 beats
songDescriptor0:
songDescriptor4:
songDescriptor9:
songDescriptor12:
.byte $10
.addr song0voiceA
.byte song0voiceC - song0voiceA
.byte song0voiceB - song0voiceA
.byte song0voiceD - song0voiceA
.byte $01
.byte $80

songDescriptor10:
.byte $10
.addr song10voiceA
.byte song10voiceC - song10voiceA
.byte song10voiceB - song10voiceA
.byte song10voiceD - song10voiceA
.byte $01
.byte $80

songDescriptor13:
.byte $10
.addr song13voiceA
.byte song13voiceC - song13voiceA
.byte song13voiceB - song13voiceA
.byte song13voiceD - song13voiceA
.byte $01
.byte $80

songDescriptor11:
songDescriptor14:
.byte $10
.addr song11voiceA
.byte song11voiceC - song11voiceA
.byte song11voiceB - song11voiceA
.byte song11voiceD - song11voiceA
.byte $01
.byte $80

songDescriptor15:
.byte $00
.addr song15voiceA
.byte song15voiceC - song15voiceA
.byte song15voiceB - song15voiceA
.byte song15voiceD - song15voiceA
.byte $01
.byte $01

songDescriptor16:
.byte $00
.addr song16voiceA
.byte song16voiceC - song16voiceA
.byte song16voiceB - song16voiceA
.byte song16voiceD - song16voiceA
.byte $01
.byte $01

songDescriptor5:
.byte $10
.addr song5voiceA
.byte song5voiceC - song5voiceA
.byte song5voiceB - song5voiceA
.byte song5voiceD - song5voiceA
.byte $80
.byte $80

songDescriptor1:
.byte $10
.addr song1voiceA
.byte song1voiceC - song1voiceA
.byte song1voiceB - song1voiceA
.byte song1voiceD - song1voiceA
.byte $80
.byte $01

;Death screen music
songDescriptor17:
.byte $08
.addr song17voiceA
.byte song17voiceC - song17voiceA
.byte song17voiceB - song17voiceA
.byte song17voiceD - song17voiceA
.byte $01
.byte $80

songDescriptor18:
.byte $08
.addr song18voiceA
.byte song18voiceC - song18voiceA
.byte song18voiceB - song18voiceA
.byte song18voiceD - song18voiceA
.byte $01
.byte $80

songDescriptor19:
.byte $08
.addr song19voiceA
.byte song19voiceC - song19voiceA
.byte song19voiceB - song19voiceA
.byte song19voiceD - song19voiceA
.byte $80
.byte $80

songDescriptor20:
songDescriptor22:
.byte $08
.addr song20voiceA
.byte song20voiceC - song20voiceA
.byte song20voiceB - song20voiceA
.byte song20voiceD - song20voiceA
.byte $01
.byte $80

songDescriptor21:
.byte $08
.addr song21voiceA
.byte song21voiceC - song21voiceA
.byte song21voiceB - song21voiceA
.byte song21voiceD - song21voiceA
.byte $01
.byte $80

songDescriptor23:
.byte $08
.addr song23voiceA
.byte song23voiceC - song23voiceA
.byte song23voiceB - song23voiceA
.byte song23voiceD - song23voiceA
.byte $01
.byte $80

songDescriptor24:
.byte $08
.addr song24voiceA
.byte song24voiceC - song24voiceA
.byte song24voiceB - song24voiceA
.byte song24voiceD - song24voiceA
.byte $80
.byte $80

songDescriptor35:
.byte $10
.addr song35voiceA
.byte song35voiceC - song35voiceA
.byte song35voiceB - song35voiceA
.byte song35voiceD - song35voiceA
.byte $80
.byte $80

song3voiceA:
song3voiceD:
.byte EIGHTH_NOTE
.byte C_4
.byte Db_4
.byte D_4
.byte HALF_NOTE
.byte Eb_4
.byte SONG_END

song3voiceB:
.byte EIGHTH_NOTE
.byte A_4
.byte Bb_4
.byte B_4
.byte HALF_NOTE
.byte C_5

song3voiceC:
.byte EIGHTH_NOTE
.byte F_4
.byte Gb_4
.byte G_4
.byte HALF_NOTE
.byte Ab_4

song8voiceA:
.byte HALF_NOTE
.byte Bb_4
.byte EIGHTH_TRIPLET
.byte REST
.byte REST
.byte Bb_4
.byte Bb_4
.byte Bb_4
.byte Bb_4
.byte Bb_4
.byte REST
.byte Ab_4
.byte QUARTER_NOTE
.byte Bb_4
.byte EIGHTH_TRIPLET
.byte REST
.byte REST
.byte Bb_4
.byte Bb_4
.byte Bb_4
.byte Bb_4
.byte Bb_4
.byte REST
.byte Ab_4
.byte QUARTER_NOTE
.byte Bb_4
.byte EIGHTH_TRIPLET
.byte REST
.byte REST
.byte Bb_4
.byte Bb_4
.byte Bb_4
.byte Bb_4
.byte SIXTEENTH_NOTE
.byte Bb_4
.byte REST
.byte F_4
.byte F_4
.byte F_4
.byte REST
.byte F_4
.byte F_4
.byte F_4
.byte REST
.byte F_4
.byte F_4
.byte EIGHTH_NOTE
.byte F_4
.byte F_4

song6voiceA:
.byte SONG_END

song8voiceC:
.byte QUARTER_NOTE
.byte Bb_3
.byte EIGHTH_TRIPLET
.byte Bb_3
.byte Bb_3
.byte Bb_3
.byte QUARTER_NOTE
.byte Bb_3
.byte EIGHTH_TRIPLET
.byte Bb_3
.byte Bb_3
.byte Bb_3
.byte QUARTER_NOTE
.byte Ab_3
.byte EIGHTH_TRIPLET

song6voiceC:
song7voiceC:
.byte Ab_3
.byte Ab_3
.byte Ab_3
.byte QUARTER_NOTE
.byte Ab_3
.byte EIGHTH_TRIPLET
.byte Ab_3
.byte Ab_3
.byte Ab_3
.byte QUARTER_NOTE
.byte Gb_3
.byte EIGHTH_TRIPLET
.byte Gb_3
.byte Gb_3
.byte Gb_3
.byte QUARTER_NOTE
.byte Gb_3
.byte EIGHTH_TRIPLET
.byte Gb_3
.byte Gb_3
.byte Gb_3
.byte QUARTER_NOTE
.byte F_3
.byte F_3
.byte F_3
.byte EIGHTH_NOTE
.byte G_3
.byte A_3

song8voiceB:
.byte HALF_NOTE
.byte D_4
.byte EIGHTH_TRIPLET
.byte REST
.byte REST
.byte D_4
.byte D_4
.byte D_4
.byte D_4
.byte C_4
.byte REST
.byte C_4
.byte QUARTER_NOTE
.byte C_4
.byte REST
.byte EIGHTH_TRIPLET
.byte C_4
.byte C_4
.byte C_4
.byte Db_4
.byte REST
.byte Db_4
.byte QUARTER_NOTE
.byte Db_4
.byte EIGHTH_TRIPLET
.byte REST
.byte REST
.byte Db_4
.byte Db_4
.byte Db_4
.byte Db_4
.byte SIXTEENTH_NOTE
.byte Db_4
.byte REST
.byte A_3
.byte A_3
.byte EIGHTH_NOTE
.byte A_3
.byte SIXTEENTH_NOTE
.byte A_3
.byte A_3
.byte EIGHTH_NOTE
.byte A_3
.byte SIXTEENTH_NOTE
.byte A_3
.byte A_3
.byte EIGHTH_NOTE
.byte A_3
.byte A_3

song6voiceB:
song7voiceB:
song8voiceD:
.byte $B1
.byte $90
.byte $90
.byte $90
.byte $B1
.byte $90
.byte $90
.byte $90
.byte $B1
.byte $90
.byte $90
.byte $90
.byte $D0
.byte $D0
.byte $D0
.byte D_6
.byte D_6

song0voiceA:
song4voiceA:
song9voiceA:
song12voiceA:
.byte EIGHTH_NOTE
.byte Bb_4
.byte REST
.byte DOTTED_QUARTER_NOTE
.byte F_4
.byte SIXTEENTH_NOTE
.byte REST
.byte Bb_4
.byte Bb_4
.byte C_5
.byte D_5
.byte Eb_5
.byte HALF_NOTE
.byte F_5
.byte EIGHTH_NOTE
.byte REST
.byte F_5
.byte EIGHTH_TRIPLET
.byte F_5
.byte Gb_5
.byte Ab_5
.byte SONG_END

song0voiceB:
song4voiceB:
song9voiceB:
song12voiceB:
.byte EIGHTH_NOTE
.byte D_4
.byte REST
.byte EIGHTH_TRIPLET
.byte D_4
.byte D_4
.byte C_4
.byte EIGHTH_NOTE
.byte D_4
.byte SIXTEENTH_NOTE

song6voiceD:
song7voiceD:
.byte REST
.byte D_4
.byte D_4
.byte Eb_4
.byte F_4
.byte G_4
.byte EIGHTH_NOTE
.byte Ab_4
.byte SIXTEENTH_NOTE
.byte REST
.byte Bb_4
.byte Bb_4
.byte C_5
.byte D_5
.byte Eb_5
.byte QUARTER_NOTE
.byte F_5
.byte EIGHTH_TRIPLET
.byte Ab_4
.byte Bb_4
.byte C_5

song0voiceC:
song4voiceC:
song9voiceC:
song12voiceC:
.byte QUARTER_NOTE
.byte Bb_3
.byte EIGHTH_TRIPLET
.byte Bb_3
.byte Bb_3
.byte Ab_3
.byte QUARTER_NOTE
.byte Bb_3
.byte Bb_3
.byte Ab_3
.byte EIGHTH_TRIPLET
.byte Ab_3
.byte Ab_3
.byte Gb_3
.byte QUARTER_NOTE
.byte Ab_3
.byte Ab_3

song10voiceA:
.byte HALF_NOTE
.byte Bb_5
.byte EIGHTH_TRIPLET
.byte REST
.byte Bb_5
.byte Bb_5
.byte Bb_5
.byte Ab_5
.byte Gb_5
.byte EIGHTH_TRIPLET
.byte Ab_5
.byte REST
.byte Gb_5
.byte HALF_NOTE
.byte F_5
.byte QUARTER_NOTE
.byte F_5
.byte EIGHTH_NOTE
.byte Eb_5
.byte SIXTEENTH_NOTE
.byte Eb_5
.byte F_5
.byte HALF_NOTE
.byte Gb_5
.byte EIGHTH_NOTE
.byte F_5
.byte Eb_5
.byte EIGHTH_NOTE
.byte Db_5
.byte SIXTEENTH_NOTE
.byte Db_5
.byte Eb_5
.byte HALF_NOTE
.byte F_5
.byte EIGHTH_NOTE
.byte Eb_5
.byte Db_5
.byte SONG_END

song10voiceB:
.byte EIGHTH_NOTE
.byte Db_5
.byte SIXTEENTH_NOTE
.byte REST
.byte Gb_4
.byte Gb_4
.byte Ab_4
.byte Bb_4
.byte C_5
.byte EIGHTH_TRIPLET
.byte Db_5
.byte REST
.byte Db_5
.byte Db_5
.byte C_5
.byte Bb_4
.byte Db_5
.byte REST
.byte Ab_4
.byte Ab_4
.byte Ab_4
.byte Gb_4
.byte Ab_4
.byte REST
.byte Ab_4
.byte Ab_4
.byte Gb_4
.byte Ab_4
.byte EIGHTH_NOTE
.byte Gb_4
.byte SIXTEENTH_NOTE
.byte Gb_4
.byte F_4
.byte EIGHTH_NOTE
.byte Gb_4
.byte SIXTEENTH_NOTE
.byte Gb_4
.byte Ab_4
.byte QUARTER_NOTE
.byte Bb_4
.byte EIGHTH_NOTE
.byte Ab_4
.byte Gb_4
.byte EIGHTH_NOTE
.byte F_4
.byte SIXTEENTH_NOTE
.byte F_4
.byte Eb_4
.byte EIGHTH_NOTE
.byte F_4
.byte SIXTEENTH_NOTE
.byte F_4
.byte Gb_4
.byte QUARTER_NOTE
.byte Ab_4
.byte EIGHTH_NOTE
.byte Gb_4
.byte F_4

song10voiceC:
.byte QUARTER_NOTE
.byte Gb_3
.byte EIGHTH_TRIPLET
.byte Gb_3
.byte Gb_3
.byte E_3
.byte QUARTER_NOTE
.byte Gb_3
.byte Gb_3
.byte Db_4
.byte EIGHTH_TRIPLET
.byte Db_4
.byte Db_4
.byte C_4
.byte QUARTER_NOTE
.byte Db_4
.byte Db_4
.byte B_3
.byte EIGHTH_TRIPLET
.byte B_3
.byte B_3
.byte Bb_3
.byte QUARTER_NOTE
.byte B_3
.byte EIGHTH_TRIPLET
.byte B_3
.byte B_3
.byte B_3
.byte QUARTER_NOTE
.byte Bb_3
.byte EIGHTH_TRIPLET
.byte Bb_3
.byte Bb_3
.byte Ab_3
.byte QUARTER_NOTE
.byte Bb_3
.byte EIGHTH_TRIPLET
.byte Bb_3
.byte Bb_3
.byte Bb_3

song0voiceD:
song4voiceD:
song9voiceD:
song10voiceD:
song12voiceD:
.byte $D0
.byte $90
.byte $90
.byte $90
.byte $D0
.byte $D0
.byte SONG_END

song11voiceA:
song14voiceA:
.byte EIGHTH_NOTE
.byte C_5
.byte SIXTEENTH_NOTE
.byte C_5
.byte D_5
.byte HALF_NOTE
.byte E_5
.byte QUARTER_NOTE
.byte G_5
.byte SIXTEENTH_NOTE
.byte F_5
.byte REST
.byte F_4
.byte F_4
.byte F_4
.byte REST
.byte F_4
.byte F_4
.byte F_4
.byte REST
.byte F_4
.byte F_4
.byte EIGHTH_NOTE
.byte F_4
.byte F_4
.byte SONG_END

song11voiceB:
song14voiceB:
.byte QUARTER_NOTE
.byte E_4
.byte EIGHTH_NOTE
.byte E_4
.byte SIXTEENTH_NOTE
.byte E_4
.byte F_4
.byte EIGHTH_NOTE
.byte G_4
.byte SIXTEENTH_NOTE
.byte G_4
.byte A_4
.byte EIGHTH_NOTE
.byte Bb_4
.byte C_5
.byte EIGHTH_NOTE
.byte A_4
.byte SIXTEENTH_NOTE
.byte A_3
.byte A_3
.byte EIGHTH_NOTE
.byte A_3
.byte SIXTEENTH_NOTE
.byte A_3
.byte A_3
.byte EIGHTH_NOTE
.byte A_3
.byte SIXTEENTH_NOTE
.byte A_3
.byte A_3
.byte EIGHTH_NOTE
.byte A_3
.byte A_3

song11voiceC:
song14voiceC:
.byte QUARTER_NOTE
.byte C_4
.byte EIGHTH_TRIPLET
.byte C_4
.byte C_4
.byte B_3
.byte QUARTER_NOTE
.byte C_4
.byte EIGHTH_TRIPLET
.byte C_4
.byte C_4
.byte C_4
.byte QUARTER_NOTE
.byte F_3
.byte F_3
.byte F_3
.byte EIGHTH_NOTE
.byte G_3
.byte A_3

song13voiceA:
.byte DOTTED_HALF_NOTE
.byte Bb_5
.byte QUARTER_NOTE
.byte Db_6
.byte EIGHTH_NOTE
.byte C_6
.byte REST
.byte HALF_NOTE
.byte A_5
.byte QUARTER_NOTE
.byte F_5
.byte DOTTED_HALF_NOTE
.byte Gb_5
.byte QUARTER_NOTE
.byte Bb_5
.byte EIGHTH_NOTE
.byte A_5
.byte REST
.byte HALF_NOTE
.byte F_5
.byte QUARTER_NOTE
.byte F_5
.byte DOTTED_HALF_NOTE
.byte Gb_5
.byte QUARTER_NOTE
.byte Bb_5
.byte EIGHTH_NOTE
.byte A_5
.byte REST
.byte HALF_NOTE
.byte F_5
.byte QUARTER_NOTE
.byte D_5
.byte DOTTED_HALF_NOTE
.byte Eb_5
.byte QUARTER_NOTE
.byte Gb_5
.byte EIGHTH_NOTE
.byte F_5
.byte REST
.byte HALF_NOTE
.byte Db_5
.byte QUARTER_NOTE
.byte Bb_4
.byte SONG_END

song13voiceB:
.byte DOTTED_HALF_NOTE
.byte Db_5
.byte QUARTER_NOTE
.byte E_5
.byte EIGHTH_NOTE
.byte Eb_5
.byte REST
.byte HALF_NOTE
.byte C_5
.byte QUARTER_NOTE
.byte A_4
.byte DOTTED_HALF_NOTE
.byte B_4
.byte QUARTER_NOTE
.byte Db_5
.byte EIGHTH_NOTE
.byte C_5
.byte REST
.byte HALF_NOTE
.byte A_4
.byte QUARTER_NOTE
.byte A_4
.byte DOTTED_HALF_NOTE
.byte B_4
.byte QUARTER_NOTE
.byte Db_5
.byte EIGHTH_NOTE
.byte C_5
.byte REST
.byte HALF_NOTE
.byte A_4
.byte QUARTER_NOTE
.byte A_4
.byte DOTTED_HALF_NOTE
.byte Gb_4
.byte QUARTER_NOTE
.byte B_4
.byte EIGHTH_NOTE
.byte Bb_4
.byte REST
.byte HALF_NOTE
.byte F_4
.byte QUARTER_NOTE
.byte Db_4

song13voiceC:
.byte QUARTER_NOTE
.byte Gb_3
.byte EIGHTH_TRIPLET
.byte Gb_3
.byte Gb_3
.byte E_3
.byte QUARTER_NOTE
.byte Gb_3
.byte Gb_3
.byte F_3
.byte EIGHTH_TRIPLET
.byte F_3
.byte F_3
.byte Eb_3
.byte QUARTER_NOTE
.byte F_3
.byte F_3
.byte EIGHTH_TRIPLET
.byte E_3
.byte Bb_3
.byte Db_4
.byte E_4
.byte Bb_4
.byte Db_5
.byte HALF_NOTE
.byte E_5
.byte QUARTER_NOTE
.byte F_5
.byte EIGHTH_TRIPLET
.byte F_3
.byte F_3
.byte F_3
.byte HALF_NOTE
.byte F_3
.byte EIGHTH_TRIPLET
.byte E_3
.byte Bb_3
.byte Db_4
.byte E_4
.byte Bb_4
.byte Db_5
.byte HALF_NOTE
.byte E_5
.byte QUARTER_NOTE
.byte F_5
.byte EIGHTH_TRIPLET
.byte F_3
.byte F_3
.byte F_3
.byte HALF_NOTE
.byte F_3
.byte QUARTER_NOTE
.byte B_3
.byte EIGHTH_TRIPLET
.byte B_3
.byte B_3
.byte Bb_3
.byte QUARTER_NOTE
.byte B_3
.byte EIGHTH_TRIPLET
.byte B_3
.byte B_3
.byte B_3
.byte QUARTER_NOTE
.byte Bb_3
.byte EIGHTH_TRIPLET
.byte Bb_3
.byte Bb_3
.byte Ab_3
.byte QUARTER_NOTE
.byte Bb_3
.byte EIGHTH_TRIPLET
.byte Bb_3
.byte Bb_3
.byte Bb_3

song11voiceD:
song13voiceD:
song14voiceD:
.byte $D0
.byte $90
.byte $90
.byte $90
.byte $D0
.byte $D0
.byte SONG_END

song15voiceA:
song15voiceD:
.byte QUARTER_NOTE
.byte G_4
.byte D_5
.byte G_4
.byte D_5
.byte G_4
.byte D_5
.byte G_4
.byte D_5
.byte Gb_4
.byte D_5
.byte Gb_4
.byte D_5
.byte Gb_4
.byte D_5
.byte Gb_4
.byte D_5
.byte F_4
.byte D_5
.byte F_4
.byte D_5
.byte F_4
.byte D_5
.byte F_4
.byte D_5
.byte E_4
.byte D_5
.byte E_4
.byte D_5
.byte E_4
.byte D_5
.byte E_4
.byte D_5
.byte SONG_END

song15voiceB:
.byte EIGHTH_NOTE
.byte REST
.byte QUARTER_NOTE
.byte Bb_4
.byte Eb_5
.byte Bb_4
.byte Eb_5
.byte Bb_4
.byte Eb_5
.byte Bb_4
.byte Eb_5
.byte A_4
.byte Eb_5
.byte A_4
.byte Eb_5
.byte A_4
.byte Eb_5
.byte A_4
.byte Eb_5
.byte Ab_4
.byte Eb_5
.byte Ab_4
.byte Eb_5
.byte Ab_4
.byte Eb_5
.byte Ab_4
.byte Eb_5
.byte G_4
.byte Eb_5
.byte G_4
.byte Eb_5
.byte G_4
.byte Eb_5
.byte G_4
.byte Eb_5

song15voiceC:
.byte HALF_NOTE
.byte G_4
.byte REST
.byte Bb_4
.byte D_5
.byte Db_5
.byte Gb_4
.byte REST
.byte REST
.byte F_4
.byte REST
.byte QUARTER_NOTE
.byte F_4
.byte EIGHTH_NOTE
.byte REST
.byte Ab_4
.byte QUARTER_NOTE
.byte REST
.byte Db_5
.byte HALF_NOTE
.byte C_5
.byte E_4
.byte REST
.byte REST

song16voiceA:
song16voiceD:
.byte QUARTER_NOTE
.byte Eb_4
.byte C_5
.byte Eb_4
.byte C_5
.byte Eb_4
.byte C_5
.byte Eb_4
.byte C_5
.byte D_4
.byte C_5
.byte D_4
.byte C_5
.byte D_4
.byte C_5
.byte D_4
.byte C_5
.byte C_4
.byte A_4
.byte Gb_4
.byte C_5
.byte A_4
.byte Eb_5
.byte Eb_5
.byte Eb_5
.byte A_5
.byte A_5
.byte SONG_END

song16voiceB:
.byte EIGHTH_NOTE
.byte REST
.byte QUARTER_NOTE
.byte G_4
.byte D_5
.byte G_4
.byte D_5
.byte G_4
.byte D_5
.byte G_4
.byte D_5
.byte G_4
.byte D_5
.byte G_4
.byte D_5
.byte G_4
.byte D_5
.byte G_4
.byte D_5
.byte Gb_4
.byte C_5
.byte A_4
.byte Eb_5
.byte C_5
.byte C_5
.byte Gb_5
.byte Gb_5
.byte Gb_5
.byte C_6

song16voiceC:
.byte EIGHTH_NOTE
.byte Eb_4
.byte D_4
.byte HALF_NOTE
.byte Eb_4
.byte QUARTER_NOTE
.byte REST
.byte G_4
.byte EIGHTH_NOTE
.byte REST
.byte Eb_5
.byte QUARTER_NOTE
.byte REST
.byte D_5
.byte EIGHTH_NOTE
.byte D_4
.byte Db_4
.byte HALF_NOTE
.byte D_4
.byte QUARTER_NOTE
.byte REST
.byte G_4
.byte EIGHTH_NOTE
.byte REST
.byte D_5
.byte QUARTER_NOTE
.byte REST
.byte Db_5
.byte EIGHTH_NOTE
.byte D_4
.byte Gb_4
.byte A_4
.byte Gb_4
.byte A_4
.byte C_5
.byte A_4
.byte C_5
.byte Eb_5
.byte C_5
.byte Eb_5
.byte Gb_5
.byte A_5
.byte Gb_5
.byte Eb_5
.byte C_5
.byte Eb_5
.byte C_5
.byte A_4
.byte Gb_4

song2voiceA:
song2voiceD:
.byte EIGHTH_TRIPLET
.byte D_4
.byte D_4
.byte D_4
.byte DOTTED_HALF_NOTE
.byte G_4
.byte SIXTEENTH_NOTE
.byte G_4
.byte A_4
.byte B_4
.byte C_5
.byte DOTTED_HALF_NOTE
.byte D_5
.byte EIGHTH_TRIPLET
.byte D_5
.byte D_5
.byte D_5
.byte DOTTED_HALF_NOTE
.byte G_5
.byte SIXTEENTH_NOTE
.byte G_5
.byte A_5
.byte B_5
.byte C_6
.byte DOTTED_HALF_NOTE
.byte D_6
.byte SIXTEENTH_NOTE
.byte D_4
.byte D_4
.byte REST
.byte D_4
.byte DOTTED_QUARTER_NOTE
.byte G_4
.byte SONG_END

song2voiceB:
.byte HALF_NOTE
.byte REST
.byte EIGHTH_TRIPLET
.byte D_3
.byte D_3
.byte D_3
.byte DOTTED_HALF_NOTE
.byte G_3
.byte SIXTEENTH_NOTE
.byte G_3
.byte A_3
.byte B_3
.byte C_4
.byte DOTTED_HALF_NOTE
.byte D_4
.byte EIGHTH_TRIPLET
.byte D_4
.byte D_4
.byte D_4
.byte DOTTED_HALF_NOTE
.byte G_4
.byte SIXTEENTH_NOTE
.byte G_4
.byte A_4
.byte B_4
.byte C_5
.byte QUARTER_NOTE
.byte D_5
.byte SIXTEENTH_NOTE
.byte Gb_3
.byte EIGHTH_NOTE
.byte Gb_3
.byte SIXTEENTH_NOTE
.byte Gb_3
.byte DOTTED_QUARTER_NOTE
.byte B_3

song2voiceC:
.byte QUARTER_NOTE
.byte REST
.byte HALF_NOTE
.byte G_4
.byte G_4
.byte F_4
.byte F_4
.byte Eb_4
.byte Eb_4
.byte D_4
.byte QUARTER_NOTE
.byte D_4
.byte SIXTEENTH_NOTE
.byte C_4
.byte C_4
.byte REST
.byte C_4
.byte DOTTED_QUARTER_NOTE
.byte D_4

song5voiceA:
.byte DOTTED_QUARTER_NOTE
.byte B_3
.byte QUARTER_NOTE
.byte C_4
.byte EIGHTH_NOTE
.byte Ab_3
.byte DOTTED_HALF_NOTE
.byte A_3
.byte HALF_NOTE
.byte REST
.byte DOTTED_QUARTER_NOTE
.byte B_3
.byte QUARTER_NOTE
.byte C_4
.byte EIGHTH_NOTE
.byte Ab_3
.byte DOTTED_HALF_NOTE
.byte A_3
.byte HALF_NOTE
.byte REST
.byte DOTTED_QUARTER_NOTE
.byte B_3
.byte QUARTER_NOTE
.byte C_4
.byte EIGHTH_NOTE
.byte F_4
.byte HALF_NOTE
.byte E_4
.byte EIGHTH_NOTE
.byte REST
.byte B_3
.byte QUARTER_TRIPLET
.byte D_4
.byte Db_4
.byte A_3
.byte C_4
.byte B_3
.byte Ab_3
.byte B_3
.byte Bb_3
.byte G_3
.byte DOTTED_QUARTER_NOTE
.byte F_4
.byte QUARTER_NOTE
.byte Gb_4
.byte EIGHTH_NOTE
.byte D_4
.byte DOTTED_HALF_NOTE
.byte Eb_4
.byte HALF_NOTE
.byte REST
.byte DOTTED_QUARTER_NOTE
.byte F_4
.byte QUARTER_NOTE
.byte Gb_4
.byte EIGHTH_NOTE
.byte D_4
.byte DOTTED_HALF_NOTE
.byte Eb_4
.byte HALF_NOTE
.byte REST
.byte DOTTED_QUARTER_NOTE
.byte F_4
.byte QUARTER_NOTE
.byte Gb_4
.byte EIGHTH_NOTE
.byte B_4
.byte HALF_NOTE
.byte Bb_4
.byte EIGHTH_NOTE
.byte REST
.byte F_4
.byte QUARTER_TRIPLET
.byte A_4
.byte Ab_4
.byte Eb_4
.byte G_4
.byte Gb_4
.byte D_4
.byte Gb_4
.byte F_4
.byte Db_4
.byte SONG_END

song5voiceB:
.byte DOTTED_QUARTER_NOTE
.byte F_3
.byte QUARTER_NOTE
.byte Gb_3
.byte EIGHTH_NOTE
.byte D_3
.byte DOTTED_HALF_NOTE
.byte Eb_3
.byte HALF_NOTE
.byte REST
.byte DOTTED_QUARTER_NOTE
.byte F_3
.byte QUARTER_NOTE
.byte Gb_3
.byte EIGHTH_NOTE
.byte D_3
.byte DOTTED_HALF_NOTE
.byte Eb_3
.byte HALF_NOTE
.byte REST
.byte DOTTED_QUARTER_NOTE
.byte F_3
.byte QUARTER_NOTE
.byte Gb_3
.byte EIGHTH_NOTE
.byte B_3
.byte HALF_NOTE
.byte Bb_3
.byte EIGHTH_NOTE
.byte REST
.byte F_3
.byte QUARTER_TRIPLET
.byte Ab_3
.byte G_3
.byte Eb_3
.byte Gb_3
.byte F_3
.byte D_3
.byte F_3
.byte E_3
.byte Db_3
.byte DOTTED_QUARTER_NOTE
.byte B_3
.byte QUARTER_NOTE
.byte C_4
.byte EIGHTH_NOTE
.byte Ab_3
.byte DOTTED_HALF_NOTE
.byte A_3
.byte HALF_NOTE
.byte REST
.byte DOTTED_QUARTER_NOTE
.byte B_3
.byte QUARTER_NOTE
.byte C_4
.byte EIGHTH_NOTE
.byte Ab_3
.byte DOTTED_HALF_NOTE
.byte A_3
.byte HALF_NOTE
.byte REST
.byte DOTTED_QUARTER_NOTE
.byte B_3
.byte QUARTER_NOTE
.byte C_4
.byte EIGHTH_NOTE
.byte F_4
.byte HALF_NOTE
.byte E_4
.byte EIGHTH_NOTE
.byte REST
.byte B_3
.byte QUARTER_TRIPLET
.byte D_4
.byte Db_4
.byte A_3
.byte C_4
.byte B_3
.byte Ab_3
.byte B_3
.byte Bb_3
.byte G_3

song5voiceC:
.byte $F8
.byte EIGHTH_NOTE
.byte C_4
.byte C_4
.byte $F0
.byte $F8
.byte EIGHTH_NOTE
.byte B_3
.byte B_3
.byte $F0
.byte $F8
.byte EIGHTH_NOTE
.byte Bb_3
.byte Bb_3
.byte $F0
.byte $F4
.byte EIGHTH_NOTE
.byte A_3
.byte A_3
.byte $F0
.byte $F8
.byte EIGHTH_NOTE
.byte Gb_4
.byte Gb_4
.byte $F0
.byte $F8
.byte EIGHTH_NOTE
.byte F_4
.byte F_4
.byte $F0
.byte $F8
.byte EIGHTH_NOTE
.byte E_4
.byte E_4
.byte $F0
.byte $F4
.byte EIGHTH_NOTE
.byte Eb_4
.byte Eb_4
.byte $F0

song5voiceD:
.byte $49
.byte SONG_END

song1voiceA:
song1voiceD:
.byte EIGHTH_NOTE
.byte G_3
.byte C_4
.byte F_4
.byte Ab_3
.byte Db_4
.byte Gb_4
.byte A_3
.byte D_4
.byte G_4
.byte QUARTER_TRIPLET
.byte Ab_4
.byte A_4
.byte HALF_NOTE
.byte Bb_4
.byte SONG_END

song1voiceB:
.byte SIXTEENTH_NOTE
.byte REST
.byte EIGHTH_NOTE
.byte G_3
.byte C_4
.byte F_4
.byte Ab_3
.byte Db_4
.byte Gb_4
.byte A_3
.byte D_4
.byte SIXTEENTH_NOTE
.byte G_4
.byte QUARTER_TRIPLET
.byte Eb_4
.byte E_4
.byte HALF_NOTE
.byte F_4

song1voiceC:
.byte DOTTED_QUARTER_NOTE
.byte G_3
.byte Ab_3
.byte A_3
.byte QUARTER_TRIPLET
.byte Bb_4
.byte B_4
.byte HALF_NOTE
.byte C_5

song17voiceA:
song18voiceA:
.byte QUARTER_NOTE
.byte G_6
.byte G_5
.byte C_6
.byte E_6
.byte Eb_6
.byte G_5
.byte B_6
.byte B_5
.byte A_6
.byte C_6
.byte E_6
.byte A_6
.byte G_6
.byte C_6
.byte D_6
.byte E_6
.byte A_6
.byte C_6
.byte F_6
.byte A_6
.byte Ab_6
.byte C_6
.byte D_6
.byte F_6
.byte E_6
.byte G_5
.byte C_6
.byte E_6
.byte D_6
.byte A_5
.byte B_5
.byte D_6
.byte SONG_END

song17voiceC:
.byte QUARTER_TRIPLET
.byte REST
.byte REST
.byte REST
.byte REST
.byte REST
.byte REST
.byte REST
.byte QUARTER_NOTE
.byte REST
.byte G_3
.byte A_3
.byte B_3

song18voiceC:
.byte QUARTER_NOTE
.byte C_4
.byte G_4
.byte G_3
.byte G_4
.byte B_3
.byte G_4
.byte G_3
.byte G_4
.byte C_4
.byte G_4
.byte G_3
.byte G_4
.byte C_4
.byte C_4
.byte D_4
.byte E_4
.byte F_4
.byte C_5
.byte C_4
.byte C_5
.byte F_4
.byte C_5
.byte C_4
.byte C_5
.byte E_4
.byte C_5
.byte G_3
.byte G_4
.byte B_3
.byte G_3
.byte A_3
.byte B_3

song17voiceB:
song18voiceB:
.byte QUARTER_TRIPLET
.byte REST
.byte REST
.byte REST
.byte REST
.byte REST
.byte REST
.byte REST
.byte REST

song17voiceD:
song18voiceD:
.byte $C9
.byte SONG_END

song19voiceA:
.byte DOTTED_HALF_NOTE
.byte G_5
.byte QUARTER_NOTE
.byte E_5
.byte HALF_NOTE
.byte Eb_5
.byte B_5
.byte HALF_NOTE
.byte A_5
.byte REST
.byte G_5
.byte REST
.byte DOTTED_HALF_NOTE
.byte A_5
.byte QUARTER_NOTE
.byte B_5
.byte HALF_NOTE
.byte D_6
.byte C_6
.byte DOTTED_HALF_NOTE
.byte G_5
.byte QUARTER_NOTE
.byte E_5
.byte HALF_NOTE
.byte D_5
.byte REST
.byte SONG_END

song19voiceB:
.byte DOTTED_HALF_NOTE
.byte E_5
.byte QUARTER_NOTE
.byte C_5
.byte HALF_NOTE
.byte B_4
.byte Eb_5
.byte E_5
.byte REST
.byte E_5
.byte REST
.byte DOTTED_HALF_NOTE
.byte F_5
.byte QUARTER_NOTE
.byte F_5
.byte HALF_NOTE
.byte F_5
.byte F_5
.byte DOTTED_HALF_NOTE
.byte C_5
.byte QUARTER_NOTE
.byte C_5
.byte HALF_NOTE
.byte B_4
.byte REST

song20voiceA:
song22voiceA:
.byte EIGHTH_TRIPLET
.byte G_5
.byte EIGHTH_NOTE
.byte E_5
.byte EIGHTH_TRIPLET
.byte Eb_5
.byte SIXTEENTH_NOTE
.byte Eb_5
.byte DOTTED_QUARTER_NOTE
.byte G_5
.byte SIXTEENTH_NOTE
.byte B_5
.byte EIGHTH_TRIPLET
.byte A_5
.byte EIGHTH_NOTE
.byte E_5
.byte QUARTER_TRIPLET
.byte G_5
.byte EIGHTH_TRIPLET
.byte A_5
.byte EIGHTH_NOTE
.byte B_5
.byte SONG_END

song21voiceA:
.byte QUARTER_NOTE
.byte D_6
.byte HALF_NOTE
.byte C_6
.byte QUARTER_NOTE
.byte A_5
.byte EIGHTH_TRIPLET
.byte G_5
.byte EIGHTH_NOTE
.byte E_5
.byte QUARTER_TRIPLET
.byte D_5
.byte SONG_END

song20voiceB:
song22voiceB:
.byte EIGHTH_TRIPLET
.byte E_5
.byte EIGHTH_NOTE
.byte C_5
.byte EIGHTH_TRIPLET
.byte B_4
.byte SIXTEENTH_NOTE
.byte B_4
.byte DOTTED_QUARTER_NOTE
.byte Eb_5
.byte SIXTEENTH_NOTE
.byte Eb_5
.byte EIGHTH_TRIPLET
.byte E_5
.byte EIGHTH_NOTE
.byte C_5
.byte QUARTER_TRIPLET
.byte E_5
.byte EIGHTH_TRIPLET
.byte C_5
.byte EIGHTH_NOTE
.byte D_5

song21voiceB:
.byte QUARTER_NOTE
.byte F_5
.byte HALF_NOTE
.byte E_5
.byte QUARTER_NOTE
.byte C_5
.byte EIGHTH_TRIPLET
.byte B_4
.byte EIGHTH_NOTE
.byte G_4
.byte QUARTER_TRIPLET
.byte F_4

song19voiceC:
song20voiceC:
song22voiceC:
.byte QUARTER_NOTE
.byte C_4
.byte G_4
.byte G_3
.byte G_4
.byte B_3
.byte G_4
.byte G_3
.byte G_4
.byte C_4
.byte G_4
.byte G_3
.byte G_4
.byte C_4
.byte C_4
.byte D_4
.byte E_4
.byte F_4
.byte C_5
.byte C_4
.byte C_5

song21voiceC:
.byte F_4
.byte C_5
.byte C_4
.byte C_5
.byte E_4
.byte C_5
.byte G_3
.byte G_4
.byte B_3
.byte G_3
.byte A_3
.byte B_3

song23voiceA:
.byte QUARTER_NOTE
.byte D_6
.byte HALF_NOTE
.byte C_6
.byte QUARTER_NOTE
.byte D_6
.byte QUARTER_TRIPLET
.byte E_6
.byte HALF_NOTE
.byte REST
.byte QUARTER_NOTE
.byte E_6
.byte E_6
.byte SONG_END

song23voiceB:
.byte QUARTER_NOTE
.byte F_5
.byte HALF_NOTE
.byte E_5
.byte QUARTER_NOTE
.byte F_5
.byte QUARTER_TRIPLET
.byte Ab_5
.byte HALF_NOTE
.byte REST
.byte QUARTER_NOTE
.byte Ab_5
.byte Ab_5

song23voiceC:
.byte F_4
.byte C_5
.byte C_4
.byte C_5
.byte E_4
.byte E_5
.byte B_4
.byte E_5
.byte E_4
.byte E_5
.byte B_4
.byte E_5

song19voiceD:
song20voiceD:
song21voiceD:
song22voiceD:
song23voiceD:
.byte $C8
.byte $11
.byte F_3
.byte $C8
.byte $D0
.byte SONG_END

song24voiceA:
.byte HALF_NOTE
.byte D_6
.byte C_6
.byte REST
.byte QUARTER_NOTE
.byte B_5
.byte A_5
.byte DOTTED_HALF_NOTE
.byte G_5
.byte QUARTER_NOTE
.byte E_5
.byte HALF_NOTE
.byte A_5
.byte E_5
.byte QUARTER_NOTE
.byte D_5
.byte E_5
.byte F_5
.byte Gb_5
.byte HALF_NOTE
.byte G_5
.byte E_5
.byte QUARTER_TRIPLET
.byte C_5
.byte REST
.byte SONG_END

song24voiceB:
.byte HALF_NOTE
.byte F_5
.byte F_5
.byte REST
.byte QUARTER_NOTE
.byte F_5
.byte F_5
.byte DOTTED_HALF_NOTE
.byte C_5
.byte QUARTER_NOTE
.byte G_4
.byte HALF_NOTE
.byte Db_5
.byte G_4
.byte QUARTER_NOTE
.byte F_4
.byte G_4
.byte A_4
.byte Bb_4
.byte HALF_NOTE
.byte B_4
.byte G_4
.byte QUARTER_NOTE
.byte E_4
.byte DOTTED_QUARTER_NOTE
.byte E_4
.byte SIXTEENTH_NOTE
.byte E_4
.byte DOTTED_QUARTER_NOTE
.byte REST
.byte SIXTEENTH_NOTE
.byte F_4
.byte DOTTED_QUARTER_NOTE
.byte G_4
.byte SIXTEENTH_NOTE
.byte F_4
.byte QUARTER_TRIPLET
.byte E_4

song24voiceC:
.byte QUARTER_NOTE
.byte F_4
.byte C_5
.byte C_4
.byte C_5
.byte F_4
.byte C_5
.byte E_4
.byte D_4
.byte C_4
.byte G_4
.byte G_3
.byte G_4
.byte Db_4
.byte G_3
.byte A_3
.byte G_3
.byte D_4
.byte E_4
.byte F_4
.byte Gb_4
.byte G_4
.byte G_3
.byte A_3
.byte B_3
.byte C_4
.byte DOTTED_QUARTER_NOTE
.byte C_4
.byte SIXTEENTH_NOTE
.byte C_4
.byte DOTTED_QUARTER_NOTE
.byte REST
.byte SIXTEENTH_NOTE
.byte D_4
.byte DOTTED_QUARTER_NOTE
.byte E_4
.byte SIXTEENTH_NOTE
.byte D_4
.byte QUARTER_NOTE
.byte C_4
.byte G_3
.byte A_3
.byte B_3

song24voiceD:
.byte $C8
.byte $11
.byte F_3
.byte $C8
.byte $D0
.byte SONG_END

song25voiceA:
.byte EIGHTH_NOTE
.byte Bb_4
.byte DOTTED_QUARTER_NOTE
.byte REST
.byte F_4
.byte F_4
.byte Bb_4
.byte EIGHTH_TRIPLET
.byte Ab_4
.byte Gb_4
.byte EIGHTH_NOTE
.byte Ab_4
.byte SIXTEENTH_NOTE
.byte REST
.byte EIGHTH_NOTE
.byte Bb_4
.byte DOTTED_QUARTER_NOTE
.byte REST
.byte Gb_4
.byte Gb_4
.byte Bb_4
.byte EIGHTH_TRIPLET
.byte A_4
.byte G_4
.byte EIGHTH_NOTE
.byte A_4
.byte SIXTEENTH_NOTE
.byte REST
.byte SONG_END

song25voiceB:
.byte QUARTER_NOTE
.byte REST
.byte EIGHTH_NOTE
.byte Bb_4
.byte DOTTED_QUARTER_NOTE
.byte REST
.byte F_4
.byte F_4
.byte Bb_4
.byte EIGHTH_TRIPLET
.byte Ab_4
.byte Gb_4
.byte EIGHTH_NOTE
.byte Ab_4
.byte SIXTEENTH_NOTE
.byte REST
.byte EIGHTH_NOTE
.byte Bb_4
.byte DOTTED_QUARTER_NOTE
.byte REST
.byte Gb_4
.byte Gb_4
.byte Bb_4
.byte EIGHTH_TRIPLET
.byte A_4
.byte G_4
.byte EIGHTH_NOTE
.byte A_4
.byte SIXTEENTH_NOTE
.byte REST

song25voiceC:
.byte DOTTED_HALF_NOTE
.byte Bb_3
.byte F_4
.byte EIGHTH_NOTE
.byte Bb_4
.byte DOTTED_HALF_NOTE
.byte Ab_3
.byte Eb_4
.byte EIGHTH_NOTE
.byte Ab_4
.byte DOTTED_HALF_NOTE
.byte Gb_3
.byte Db_4
.byte EIGHTH_NOTE
.byte Gb_4
.byte DOTTED_HALF_NOTE
.byte F_3
.byte C_4
.byte EIGHTH_NOTE
.byte F_4

song25voiceD:
.byte F_5
.byte SONG_END

song26voiceA:
.byte EIGHTH_NOTE
.byte Db_3
.byte REST
.byte EIGHTH_NOTE
.byte Db_3
.byte REST
.byte DOTTED_HALF_NOTE
.byte Bb_4
.byte SIXTEENTH_NOTE
.byte F_4
.byte DOTTED_QUARTER_NOTE
.byte Bb_4
.byte EIGHTH_TRIPLET
.byte Bb_4
.byte C_5
.byte D_5
.byte Eb_5
.byte EIGHTH_NOTE
.byte F_5
.byte REST
.byte DOTTED_HALF_NOTE
.byte Bb_4
.byte SIXTEENTH_NOTE
.byte F_4
.byte DOTTED_QUARTER_NOTE
.byte Bb_4
.byte EIGHTH_TRIPLET
.byte Bb_4
.byte C_5
.byte D_5
.byte Eb_5
.byte EIGHTH_NOTE
.byte F_5
.byte REST
.byte SONG_END

song26voiceD:
.byte $11
.byte $90
.byte $90
.byte SONG_END

song26voiceC:
.byte $F6
.byte DOTTED_QUARTER_NOTE
.byte Bb_3
.byte EIGHTH_TRIPLET
.byte Bb_3
.byte Bb_3
.byte DOTTED_QUARTER_NOTE
.byte Bb_3
.byte EIGHTH_TRIPLET
.byte Bb_3
.byte Bb_3
.byte $F0
.byte $F2
.byte DOTTED_QUARTER_NOTE
.byte Ab_3
.byte EIGHTH_TRIPLET
.byte Ab_3
.byte Ab_3
.byte DOTTED_QUARTER_NOTE
.byte Ab_3
.byte EIGHTH_TRIPLET
.byte Ab_3
.byte Ab_3
.byte $F0
.byte $F2
.byte DOTTED_QUARTER_NOTE
.byte Gb_3
.byte EIGHTH_TRIPLET
.byte Gb_3
.byte Gb_3
.byte DOTTED_QUARTER_NOTE
.byte Gb_3
.byte EIGHTH_TRIPLET
.byte Gb_3
.byte Gb_3
.byte $F0
.byte $F2
.byte DOTTED_QUARTER_NOTE
.byte F_3
.byte EIGHTH_TRIPLET
.byte F_3
.byte F_3
.byte DOTTED_QUARTER_NOTE
.byte F_3
.byte EIGHTH_TRIPLET
.byte F_3
.byte F_3
.byte $F0

song26voiceB:
.byte DOTTED_QUARTER_NOTE
.byte F_3
.byte EIGHTH_TRIPLET
.byte F_3
.byte Bb_2
.byte DOTTED_QUARTER_NOTE
.byte F_3
.byte EIGHTH_TRIPLET
.byte F_3
.byte Bb_2
.byte DOTTED_QUARTER_NOTE
.byte F_3
.byte EIGHTH_TRIPLET
.byte F_3
.byte Bb_2
.byte F_3
.byte Bb_2
.byte F_3
.byte Bb_2
.byte DOTTED_QUARTER_NOTE
.byte F_3
.byte EIGHTH_TRIPLET
.byte F_3
.byte Bb_2
.byte DOTTED_QUARTER_NOTE
.byte F_3
.byte EIGHTH_TRIPLET
.byte F_3
.byte Bb_2
.byte DOTTED_QUARTER_NOTE
.byte F_3
.byte EIGHTH_TRIPLET
.byte F_3
.byte Bb_2
.byte F_3
.byte Bb_2
.byte F_3
.byte Bb_2
.byte DOTTED_QUARTER_NOTE
.byte F_3
.byte EIGHTH_TRIPLET
.byte F_3
.byte Bb_2
.byte DOTTED_QUARTER_NOTE
.byte F_3
.byte EIGHTH_TRIPLET
.byte F_3
.byte Bb_2
.byte DOTTED_QUARTER_NOTE
.byte F_3
.byte EIGHTH_TRIPLET
.byte F_3
.byte Bb_2
.byte F_3
.byte Bb_2
.byte F_3
.byte Bb_2
.byte DOTTED_QUARTER_NOTE
.byte Eb_3
.byte Bb_3
.byte EIGHTH_TRIPLET
.byte Bb_3
.byte C_4
.byte D_4
.byte Eb_4
.byte DOTTED_QUARTER_NOTE
.byte F_4
.byte EIGHTH_TRIPLET
.byte Eb_3
.byte Ab_2
.byte Eb_3
.byte Ab_2
.byte Eb_3
.byte Ab_2
.byte DOTTED_QUARTER_NOTE
.byte Db_3
.byte EIGHTH_TRIPLET
.byte Db_3
.byte Gb_2
.byte DOTTED_QUARTER_NOTE
.byte Db_3
.byte EIGHTH_TRIPLET
.byte Db_3
.byte Gb_2
.byte DOTTED_QUARTER_NOTE
.byte Db_3
.byte EIGHTH_TRIPLET
.byte Db_3
.byte Gb_2
.byte Db_3
.byte Gb_2
.byte Db_3
.byte Gb_2
.byte DOTTED_QUARTER_NOTE
.byte C_3
.byte Bb_3
.byte EIGHTH_TRIPLET
.byte Bb_3
.byte C_4
.byte D_4
.byte Eb_4
.byte DOTTED_QUARTER_NOTE
.byte F_4
.byte EIGHTH_TRIPLET
.byte C_3
.byte F_2
.byte C_3
.byte F_2
.byte C_3
.byte F_2

song27voiceA:
song30voiceA:
.byte DOTTED_QUARTER_NOTE
.byte Bb_4
.byte REST
.byte SIXTEENTH_NOTE
.byte F_4
.byte DOTTED_QUARTER_NOTE
.byte Bb_4
.byte EIGHTH_TRIPLET
.byte Bb_4
.byte C_5
.byte D_5
.byte Eb_5
.byte EIGHTH_NOTE
.byte F_5
.byte DOTTED_QUARTER_NOTE
.byte REST
.byte F_5
.byte HALF_NOTE
.byte F_5
.byte Gb_5
.byte QUARTER_TRIPLET
.byte Ab_5
.byte SONG_END

song27voiceB:
song30voiceB:
.byte DOTTED_QUARTER_NOTE
.byte D_4
.byte REST
.byte HALF_NOTE
.byte D_4
.byte D_4
.byte QUARTER_TRIPLET
.byte C_4
.byte DOTTED_QUARTER_NOTE
.byte D_4
.byte EIGHTH_TRIPLET
.byte REST
.byte D_4
.byte D_4
.byte Eb_4
.byte F_4
.byte G_4
.byte DOTTED_QUARTER_NOTE
.byte Ab_4
.byte EIGHTH_TRIPLET
.byte REST
.byte Bb_4
.byte Bb_4
.byte C_5
.byte D_5
.byte Eb_5
.byte DOTTED_HALF_NOTE
.byte F_5
.byte HALF_NOTE
.byte Ab_4
.byte Bb_4
.byte QUARTER_TRIPLET
.byte C_5

song27voiceC:
song30voiceC:
.byte $F2
.byte DOTTED_QUARTER_NOTE
.byte Bb_3
.byte EIGHTH_TRIPLET
.byte Bb_3
.byte Bb_3
.byte DOTTED_QUARTER_NOTE
.byte Bb_3
.byte EIGHTH_TRIPLET
.byte Bb_3
.byte Bb_3
.byte $F0
.byte $F2
.byte DOTTED_QUARTER_NOTE
.byte Ab_3
.byte EIGHTH_TRIPLET
.byte Ab_3
.byte Ab_3
.byte DOTTED_QUARTER_NOTE
.byte Ab_3
.byte EIGHTH_TRIPLET
.byte Ab_3
.byte Ab_3
.byte $F0

song28voiceA:
.byte EIGHTH_NOTE
.byte Bb_5
.byte HALF_NOTE
.byte REST
.byte REST
.byte Bb_5
.byte Bb_5
.byte QUARTER_TRIPLET
.byte Ab_5
.byte Gb_5
.byte Ab_5
.byte HALF_NOTE
.byte REST
.byte Gb_5
.byte EIGHTH_NOTE
.byte F_5
.byte DOTTED_HALF_NOTE
.byte F_5
.byte DOTTED_QUARTER_NOTE
.byte Eb_5
.byte EIGHTH_TRIPLET
.byte Eb_5
.byte F_5
.byte EIGHTH_NOTE
.byte Gb_5
.byte DOTTED_QUARTER_NOTE
.byte F_5
.byte Eb_5
.byte Db_5
.byte EIGHTH_TRIPLET
.byte Db_5
.byte Eb_5
.byte EIGHTH_NOTE
.byte F_5
.byte DOTTED_QUARTER_NOTE
.byte Eb_5
.byte Db_5
.byte SONG_END

song28voiceB:
.byte DOTTED_QUARTER_NOTE
.byte Gb_4
.byte EIGHTH_TRIPLET
.byte REST
.byte Gb_4
.byte Gb_4
.byte Ab_4
.byte Bb_4
.byte C_5
.byte HALF_NOTE
.byte Db_5
.byte REST
.byte QUARTER_TRIPLET
.byte Db_5
.byte Db_5
.byte HALF_NOTE
.byte C_5
.byte Bb_4
.byte HALF_NOTE
.byte Db_5
.byte REST
.byte QUARTER_TRIPLET
.byte Bb_4
.byte HALF_NOTE
.byte Ab_4
.byte Ab_4
.byte Gb_4
.byte HALF_NOTE
.byte Ab_4
.byte REST
.byte QUARTER_TRIPLET
.byte Ab_4
.byte Ab_4
.byte HALF_NOTE
.byte Gb_4
.byte Ab_4
.byte DOTTED_QUARTER_NOTE
.byte Gb_4
.byte EIGHTH_TRIPLET
.byte Gb_4
.byte F_4
.byte DOTTED_QUARTER_NOTE
.byte Gb_4
.byte EIGHTH_TRIPLET
.byte Gb_4
.byte Ab_4
.byte DOTTED_HALF_NOTE
.byte Bb_4
.byte DOTTED_QUARTER_NOTE
.byte Ab_4
.byte Gb_4
.byte DOTTED_QUARTER_NOTE
.byte F_4
.byte EIGHTH_TRIPLET
.byte F_4
.byte Eb_4
.byte DOTTED_QUARTER_NOTE
.byte F_4
.byte EIGHTH_TRIPLET
.byte F_4
.byte Gb_4
.byte DOTTED_HALF_NOTE
.byte Ab_4
.byte DOTTED_QUARTER_NOTE
.byte Gb_4
.byte F_4

song27voiceD:
song28voiceD:
song30voiceD:
.byte $11
.byte $90
.byte $90
.byte SONG_END

song28voiceC:
.byte $F2
.byte DOTTED_QUARTER_NOTE
.byte Gb_3
.byte EIGHTH_TRIPLET
.byte Gb_3
.byte Gb_3
.byte DOTTED_QUARTER_NOTE
.byte Gb_3
.byte EIGHTH_TRIPLET
.byte Gb_3
.byte Gb_3
.byte $F0
.byte $F2
.byte DOTTED_QUARTER_NOTE
.byte Db_4
.byte EIGHTH_TRIPLET
.byte Db_4
.byte Db_4
.byte DOTTED_QUARTER_NOTE
.byte Db_4
.byte EIGHTH_TRIPLET
.byte Db_4
.byte Db_4
.byte $F0
.byte $F2
.byte DOTTED_QUARTER_NOTE
.byte B_3
.byte EIGHTH_TRIPLET
.byte B_3
.byte B_3
.byte DOTTED_QUARTER_NOTE
.byte B_3
.byte EIGHTH_TRIPLET
.byte B_3
.byte B_3
.byte $F0
.byte $F2
.byte DOTTED_QUARTER_NOTE
.byte Bb_3
.byte EIGHTH_TRIPLET
.byte Bb_3
.byte Bb_3
.byte DOTTED_QUARTER_NOTE
.byte Bb_3
.byte EIGHTH_TRIPLET
.byte Bb_3
.byte Bb_3
.byte $F0

song29voiceA:
song34voiceA:
.byte DOTTED_HALF_NOTE
.byte E_4
.byte DOTTED_QUARTER_NOTE
.byte E_4
.byte EIGHTH_TRIPLET
.byte E_4
.byte F_4
.byte DOTTED_QUARTER_NOTE
.byte G_4
.byte EIGHTH_TRIPLET
.byte G_4
.byte A_4
.byte DOTTED_QUARTER_NOTE
.byte Bb_4
.byte C_5
.byte A_3
.byte EIGHTH_TRIPLET
.byte A_3
.byte A_3
.byte DOTTED_QUARTER_NOTE
.byte Ab_3
.byte EIGHTH_TRIPLET
.byte Ab_3
.byte Ab_3
.byte DOTTED_QUARTER_NOTE
.byte G_3
.byte EIGHTH_TRIPLET
.byte G_3
.byte G_3
.byte DOTTED_QUARTER_NOTE
.byte Gb_3
.byte Gb_3
.byte SONG_END

song29voiceD:
song34voiceD:
.byte $11
.byte $90
.byte $90
.byte SONG_END

song29voiceB:
song34voiceB:
.byte DOTTED_QUARTER_NOTE
.byte C_5
.byte EIGHTH_TRIPLET
.byte C_5
.byte D_5
.byte EIGHTH_NOTE
.byte E_5
.byte DOTTED_HALF_NOTE
.byte G_5
.byte EIGHTH_TRIPLET
.byte F_5
.byte REST
.byte F_4
.byte F_4
.byte F_4
.byte REST
.byte F_4
.byte F_4
.byte F_4
.byte REST
.byte F_4
.byte F_4
.byte DOTTED_QUARTER_NOTE
.byte F_4
.byte F_4

song29voiceC:
song34voiceC:
.byte $F2
.byte DOTTED_QUARTER_NOTE
.byte C_4
.byte EIGHTH_TRIPLET
.byte C_4
.byte C_4
.byte DOTTED_QUARTER_NOTE
.byte C_4
.byte EIGHTH_TRIPLET
.byte C_4
.byte C_4
.byte $F0
.byte DOTTED_QUARTER_NOTE
.byte F_4
.byte EIGHTH_TRIPLET
.byte F_3
.byte F_3
.byte DOTTED_QUARTER_NOTE
.byte F_3
.byte EIGHTH_TRIPLET
.byte F_3
.byte F_3
.byte DOTTED_QUARTER_NOTE
.byte F_3
.byte EIGHTH_TRIPLET
.byte F_3
.byte F_3
.byte DOTTED_QUARTER_NOTE
.byte F_3
.byte EIGHTH_TRIPLET
.byte G_3
.byte A_3

song31voiceA:
.byte EIGHTH_NOTE
.byte Db_5
.byte DOTTED_HALF_NOTE
.byte REST
.byte E_5
.byte DOTTED_QUARTER_NOTE
.byte Eb_5
.byte REST
.byte EIGHTH_NOTE
.byte C_5
.byte DOTTED_HALF_NOTE
.byte A_4
.byte SONG_END

song31voiceB:
.byte EIGHTH_NOTE
.byte Bb_5
.byte DOTTED_HALF_NOTE
.byte REST
.byte Db_6
.byte DOTTED_QUARTER_NOTE
.byte C_6
.byte REST
.byte EIGHTH_NOTE
.byte A_5
.byte DOTTED_HALF_NOTE
.byte F_5

song31voiceC:
.byte $F2
.byte DOTTED_QUARTER_NOTE
.byte Gb_3
.byte EIGHTH_TRIPLET
.byte Gb_3
.byte Gb_3
.byte DOTTED_QUARTER_NOTE
.byte Gb_3
.byte EIGHTH_TRIPLET
.byte Gb_3
.byte Gb_3
.byte $F0
.byte $F2
.byte DOTTED_QUARTER_NOTE
.byte F_3
.byte EIGHTH_TRIPLET
.byte F_3
.byte F_3
.byte DOTTED_QUARTER_NOTE
.byte F_3
.byte EIGHTH_TRIPLET
.byte F_3
.byte F_3
.byte $F0

song31voiceD:
.byte $11
.byte $90
.byte $90
.byte SONG_END

song32voiceA:
.byte HALF_NOTE
.byte E_2
.byte Bb_2
.byte Db_3
.byte E_3
.byte QUARTER_TRIPLET
.byte Bb_3
.byte Db_4
.byte EIGHTH_NOTE
.byte E_4
.byte DOTTED_HALF_NOTE
.byte F_4
.byte HALF_NOTE
.byte F_3
.byte F_3
.byte QUARTER_TRIPLET
.byte F_3
.byte EIGHTH_NOTE
.byte F_3
.byte HALF_NOTE
.byte E_2
.byte Bb_2
.byte Db_3
.byte E_3
.byte QUARTER_TRIPLET
.byte Bb_3
.byte Db_4
.byte EIGHTH_NOTE
.byte E_4
.byte DOTTED_HALF_NOTE
.byte F_4
.byte HALF_NOTE
.byte F_3
.byte F_3
.byte QUARTER_TRIPLET
.byte F_3
.byte EIGHTH_NOTE
.byte F_3
.byte SONG_END

song32voiceB:
.byte EIGHTH_NOTE
.byte Gb_5
.byte DOTTED_HALF_NOTE
.byte REST
.byte Bb_5
.byte DOTTED_QUARTER_NOTE
.byte A_5
.byte REST
.byte EIGHTH_NOTE
.byte F_5
.byte DOTTED_HALF_NOTE
.byte F_5
.byte EIGHTH_NOTE
.byte Gb_5
.byte DOTTED_HALF_NOTE
.byte REST
.byte Bb_5
.byte DOTTED_QUARTER_NOTE
.byte A_5
.byte REST
.byte EIGHTH_NOTE
.byte F_5
.byte DOTTED_HALF_NOTE
.byte D_5

song32voiceC:
.byte $F2
.byte DOTTED_QUARTER_NOTE
.byte E_3
.byte EIGHTH_TRIPLET
.byte E_3
.byte E_3
.byte DOTTED_QUARTER_NOTE
.byte E_3
.byte EIGHTH_TRIPLET
.byte E_3
.byte E_3
.byte $F0
.byte $F2
.byte DOTTED_QUARTER_NOTE
.byte F_3
.byte EIGHTH_TRIPLET
.byte F_3
.byte F_3
.byte DOTTED_QUARTER_NOTE
.byte F_3
.byte EIGHTH_TRIPLET
.byte F_3
.byte F_3
.byte $F0
.byte $F2
.byte DOTTED_QUARTER_NOTE
.byte E_3
.byte EIGHTH_TRIPLET
.byte E_3
.byte E_3
.byte DOTTED_QUARTER_NOTE
.byte E_3
.byte EIGHTH_TRIPLET
.byte E_3
.byte E_3
.byte $F0
.byte $F2
.byte DOTTED_QUARTER_NOTE
.byte F_3
.byte EIGHTH_TRIPLET
.byte F_3
.byte F_3
.byte DOTTED_QUARTER_NOTE
.byte F_3
.byte EIGHTH_TRIPLET
.byte F_3
.byte F_3
.byte $F0

song33voiceA:
.byte EIGHTH_NOTE
.byte Gb_4
.byte DOTTED_HALF_NOTE
.byte REST
.byte B_4
.byte DOTTED_QUARTER_NOTE
.byte Bb_4
.byte REST
.byte EIGHTH_NOTE
.byte F_4
.byte DOTTED_HALF_NOTE
.byte Db_4
.byte SONG_END

song32voiceD:
song33voiceD:
.byte $11
.byte $90
.byte $90
.byte SONG_END

song33voiceB:
.byte EIGHTH_NOTE
.byte Eb_5
.byte DOTTED_HALF_NOTE
.byte REST
.byte Gb_5
.byte DOTTED_QUARTER_NOTE
.byte F_5
.byte REST
.byte EIGHTH_NOTE
.byte Db_5
.byte DOTTED_HALF_NOTE
.byte Bb_4

song33voiceC:
.byte $F2
.byte DOTTED_QUARTER_NOTE
.byte B_3
.byte EIGHTH_TRIPLET
.byte B_3
.byte B_3
.byte DOTTED_QUARTER_NOTE
.byte B_3
.byte EIGHTH_TRIPLET
.byte B_3
.byte B_3
.byte $F0
.byte $F2
.byte DOTTED_QUARTER_NOTE
.byte Bb_3
.byte EIGHTH_TRIPLET
.byte Bb_3
.byte Bb_3
.byte DOTTED_QUARTER_NOTE
.byte Bb_3
.byte EIGHTH_TRIPLET
.byte Bb_3
.byte Bb_3
.byte $F0

song35voiceA:
song35voiceD:
.byte HALF_NOTE
.byte C_5
.byte SIXTEENTH_NOTE
.byte C_5
.byte C_5
.byte EIGHTH_NOTE
.byte C_5
.byte EIGHTH_TRIPLET
.byte Bb_4
.byte G_4
.byte D_5
.byte HALF_NOTE
.byte C_5
.byte SIXTEENTH_NOTE
.byte C_5
.byte C_5
.byte EIGHTH_NOTE
.byte C_5
.byte EIGHTH_TRIPLET
.byte Bb_4
.byte G_4
.byte D_5
.byte QUARTER_NOTE
.byte C_5
.byte SIXTEENTH_NOTE
.byte C_4
.byte C_4
.byte C_4
.byte C_4
.byte HALF_NOTE
.byte C_4
.byte SONG_END

song35voiceB:
.byte HALF_NOTE
.byte E_4
.byte SIXTEENTH_NOTE
.byte E_4
.byte E_4
.byte EIGHTH_NOTE
.byte E_4
.byte EIGHTH_TRIPLET
.byte D_4
.byte C_4
.byte F_4
.byte HALF_NOTE
.byte E_4
.byte SIXTEENTH_NOTE
.byte E_4
.byte E_4
.byte EIGHTH_NOTE
.byte E_4
.byte EIGHTH_TRIPLET
.byte D_4
.byte C_4
.byte F_4
.byte QUARTER_NOTE
.byte G_4
.byte SIXTEENTH_NOTE
.byte G_3
.byte G_3
.byte G_3
.byte G_3
.byte HALF_NOTE
.byte G_3

song35voiceC:
.byte EIGHTH_TRIPLET
.byte E_4
.byte C_4
.byte E_4
.byte G_4
.byte E_4
.byte G_4
.byte Bb_4
.byte G_4
.byte Bb_4
.byte D_5
.byte Bb_4
.byte D_5
.byte E_4
.byte C_4
.byte E_4
.byte G_4
.byte E_4
.byte G_4
.byte Bb_4
.byte G_4
.byte Bb_4
.byte D_5
.byte Bb_4
.byte D_5
.byte QUARTER_NOTE
.byte C_5
.byte SIXTEENTH_NOTE
.byte C_4
.byte C_4
.byte C_4
.byte C_4
.byte HALF_NOTE
.byte C_4
