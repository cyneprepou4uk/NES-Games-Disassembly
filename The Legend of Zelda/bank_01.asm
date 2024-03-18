.segment "BANK_01"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
.org $8000  ; for listing file
; 0x004010-0x00650F

; !!! bzk .org control commands here
; take them into account when making
; changes inside this file



.export loc_0x0045E0_old_man_handler
.export loc_0x0046EB
.export loc_0x004A0C
.export loc_0x004A50
.export loc_0x004AC4
.export loc_0x004AE9
.export loc_0x004BB6
.export loc_0x004C6A
.export sub_0x004D10_copy_code_data_to_battery
.export loc_0x004D57_fill_ppu_with_tiles_2
.export loc_0x006028
.export sub_0x0060B8
.export loc_0x006131
.export sub_0x00614E
.export sub_0x00618C
.export loc_0x0061C1
.export sub_0x006233
.export loc_0x0062F2
.export loc_0x00632A
.export loc_0x00635A
.export loc_0x0063FE



tbl_8000_text_messages:
- D 0 - - - 0x004010 01:8000: 4C 80     .word _off001_804C_00   ; IT'S DANGEROUS TO GO ALONE! TAKE THIS.
- D 0 - - - 0x004012 01:8002: 77 80     .word _off001_8077_01   ; MASTER USING IT AND YOU CAN HAVE THIS.
- D 0 - - - 0x004014 01:8004: A1 80     .word _off001_80A1_02   ; TAKE ANY ONE YOU WANT.
- - - - - - 0x004016 01:8006: B9 80     .word _off001_80B9_03   ; SECRET IS IN THE TREE AT THE DEAD-END.
- D 0 - - - 0x004018 01:8008: E3 80     .word _off001_80E3_04   ; LET'S PLAY MONEY MAKING GAME.
- - - - - - 0x00401A 01:800A: 05 81     .word _off001_8105_05   ; PAY ME FOR THE DOOR REPAIR CHARGE.
- D 0 - - - 0x00401C 01:800C: 2D 81     .word _off001_812D_06   ; SHOW THIS TO THE OLD WOMAN.
- - - - - - 0x00401E 01:800E: 52 81     .word _off001_8152_07   ; MEET THE OLD MAN AT THE GRAVE.
- D 0 - - - 0x004020 01:8010: 79 81     .word _off001_8179_08   ; BUY MEDICINE BEFORE YOU GO.
- - - - - - 0x004022 01:8012: 97 81     .word _off001_8197_09   ; PAY ME AND I'LL TALK.
- - - - - - 0x004024 01:8014: AE 81     .word _off001_81AE_0A   ; THIS AIN'T ENOUGH TO TALK.
- - - - - - 0x004026 01:8016: D2 81     .word _off001_81D2_0B   ; GO UP,UP, THE MOUNTAIN AHEAD.
- - - - - - 0x004028 01:8018: F8 81     .word _off001_81F8_0C   ; GO NORTH,WEST,SOUTH,WEST TO THE FOREST OF MAZE.
- - - - - - 0x00402A 01:801A: 2C 82     .word _off001_822C_0D   ; BOY, YOU'RE RICH!
- D 0 - - - 0x00402C 01:801C: 41 82     .word _off001_8241_0E   ; BUY SOMETHIN' WILL YA!
- D 0 - - - 0x00402E 01:801E: 58 82     .word _off001_8258_0F   ; BOY, THIS IS REALLY EXPENSIVE!
- D 0 - - - 0x004030 01:8020: 7D 82     .word _off001_827D_10   ; TAKE ANY ONE YOU WANT. (10)
- D 0 - - - 0x004032 01:8022: 94 82     .word _off001_8294_11   ; IT'S A SECRET TO EVERYBODY.
- D 0 - - - 0x004034 01:8024: B8 82     .word _off001_82B8_12   ; GRUMBLE,GRUMBLE...
- - - - - - 0x004036 01:8026: CD 82     .word _off001_82CD_13   ; EASTMOST PENNINSULA IS THE SECRET.
- - - - - - 0x004038 01:8028: F5 82     .word _off001_82F5_14   ; DODONGO DISLIKES SMOKE.
- - - - - - 0x00403A 01:802A: 0D 83     .word _off001_830D_15   ; DID YOU GET THE SWORD FROM THE OLD MAN ON TOP OF THE WATERFALL?
- - - - - - 0x00403C 01:802C: 4D 83     .word _off001_834D_16   ; WALK INTO THE WATERFALL.
- - - - - - 0x00403E 01:802E: 70 83     .word _off001_8370_17   ; SECRET POWER IS SAID TO BE IN THE ARROW.
- - - - - - 0x004040 01:8030: 9C 83     .word _off001_839C_18   ; DIGDOGGER HATES CERTAIN KIND OF SOUND.
- D 0 - - - 0x004042 01:8032: C6 83     .word _off001_83C6_19   ; I BET YOU'D LIKE TO HAVE MORE BOMBS.
- - - - - - 0x004044 01:8034: F0 83     .word _off001_83F0_1A   ; IF YOU GO IN THE DIRECTION OF THE ARROW.
- D 0 - - - 0x004046 01:8036: 1C 84     .word _off001_841C_1B   ; LEAVE YOUR LIFE OR MONEY.
- - - - - - 0x004048 01:8038: 3F 84     .word _off001_843F_1C   ; THERE ARE SECRETS WHERE FAIRIES DON'T LIVE.
- - - - - - 0x00404A 01:803A: 6D 84     .word _off001_846D_1D   ; AIM AT THE EYES OF GOHMA.
- - - - - - 0x00404C 01:803C: 90 84     .word _off001_8490_1E   ; SOUTH OF ARROW MARK HIDES A SECRET.
- - - - - - 0x00404E 01:803E: B8 84     .word _off001_84B8_1F   ; THERE'S A SECRET IN THE TIP OF THE NOSE.
- - - - - - 0x004050 01:8040: E3 84     .word _off001_84E3_20   ; SPECTACLE ROCK IS AN ENTRANCE TO DEATH. (20)
- - - - - - 0x004052 01:8042: 0E 85     .word _off001_850E_21   ; 10TH ENEMY HAS THE BOMB.
- - - - - - 0x004054 01:8044: 26 85     .word _off001_8526_22   ; ONES WHO DOES NOT HAVE TRIFORCE CAN'T GO IN.
- - - - - - 0x004056 01:8046: 53 85     .word _off001_8553_23   ; PATRA HAS THE MAP.
- D 0 - - - 0x004058 01:8048: 68 85     .word _off001_8568_24   ; GO TO THE NEXT ROOM.
- - - - - - 0x00405A 01:804A: 7E 85     .word _off001_857E_25   ; EYES OF SKULL HAS A SECRET.



con_new_line_1                          = $80 ; 
con_new_line_2                          = $40 ; 
con_message_end                         = $C0 ; 



_off001_804C_00:
;                                              04   05   06   07   08   09   0A   0B   0C   0D   0E   0F   10   11   12   13   14   15   16   17   18   19   1A   1B
- D 0 - I - 0x00405C 01:804C: 25        .byte $25, $25, $12, $1D, $2A, $1C, $24, $0D, $0A, $17, $10, $0E, $1B, $18, $1E, $1C, $24, $1D, $18, $24, $10, $18 + con_new_line_1   ; 
- D 0 - I - 0x004072 01:8062: 25        .byte $25, $25, $25, $25, $0A, $15, $18, $17, $0E, $29, $24, $1D, $0A, $14, $0E, $24, $1D, $11, $12, $1C, $2C + con_message_end   ; 

_off001_8077_01:
;                                              04   05   06   07   08   09   0A   0B   0C   0D   0E   0F   10   11   12   13   14   15   16   17   18   19   1A   1B
- D 0 - I - 0x004087 01:8077: 25        .byte $25, $25, $16, $0A, $1C, $1D, $0E, $1B, $24, $1E, $1C, $12, $17, $10, $24, $12, $1D, $24, $0A, $17, $0D + con_new_line_1   ; 
- D 0 - I - 0x00409C 01:808C: 25        .byte $25, $25, $25, $22, $18, $1E, $24, $0C, $0A, $17, $24, $11, $0A, $1F, $0E, $24, $1D, $11, $12, $1C, $2C + con_message_end   ; 

_off001_80A1_02:
;                                              04   05   06   07   08   09   0A   0B   0C   0D   0E   0F   10   11   12   13   14   15   16   17   18   19   1A   1B
- D 0 - I - 0x0040B1 01:80A1: 25        .byte $25, $1D, $0A, $14, $0E, $24, $0A, $17, $22, $24, $1B, $18, $0A, $0D, $24, $22, $18, $1E, $24, $20, $0A, $17, $1D, $2C + con_message_end   ; 

_off001_80B9_03:
;                                              04   05   06   07   08   09   0A   0B   0C   0D   0E   0F   10   11   12   13   14   15   16   17   18   19   1A   1B
- - - - - - 0x0040C9 01:80B9: 25        .byte $25, $1C, $0E, $0C, $1B, $0E, $1D, $24, $12, $1C, $24, $12, $17, $24, $1D, $11, $0E, $24, $1D, $1B, $0E, $0E + con_new_line_1   ; 
- - - - - - 0x0040DF 01:80CF: 25        .byte $25, $25, $25, $25, $0A, $1D, $24, $1D, $11, $0E, $24, $0D, $0E, $0A, $0D, $2F, $0E, $17, $0D, $2C + con_message_end   ; 

_off001_80E3_04:
;                                              04   05   06   07   08   09   0A   0B   0C   0D   0E   0F   10   11   12   13   14   15   16   17   18   19   1A   1B
- D 0 - I - 0x0040F3 01:80E3: 25        .byte $25, $25, $25, $15, $0E, $1D, $2A, $1C, $24, $19, $15, $0A, $22, $24, $16, $18, $17, $0E, $22 + con_new_line_1   ; 
- D 0 - I - 0x004106 01:80F6: 25        .byte $25, $25, $25, $16, $0A, $14, $12, $17, $10, $24, $10, $0A, $16, $0E, $2C + con_message_end   ; 

_off001_8105_05:
;                                              04   05   06   07   08   09   0A   0B   0C   0D   0E   0F   10   11   12   13   14   15   16   17   18   19   1A   1B
- - - - - - 0x004115 01:8105: 25        .byte $25, $25, $19, $0A, $22, $24, $16, $0E, $24, $0F, $18, $1B, $24, $1D, $11, $0E, $24, $0D, $18, $18, $1B + con_new_line_1   ; 
- - - - - - 0x00412A 01:811A: 25        .byte $25, $25, $25, $25, $25, $1B, $0E, $19, $0A, $12, $1B, $24, $0C, $11, $0A, $1B, $10, $0E, $2C + con_message_end   ; 

_off001_812D_06:
;                                              04   05   06   07   08   09   0A   0B   0C   0D   0E   0F   10   11   12   13   14   15   16   17   18   19   1A   1B
- D 0 - I - 0x00413D 01:812D: 25        .byte $25, $25, $25, $25, $1C, $11, $18, $20, $24, $1D, $11, $12, $1C, $24, $1D, $18, $24, $1D, $11, $0E + con_new_line_1   ; 
- D 0 - I - 0x004151 01:8141: 25        .byte $25, $25, $25, $25, $25, $25, $25, $18, $15, $0D, $24, $20, $18, $16, $0A, $17, $2C + con_message_end   ; 

_off001_8152_07:
;                                              04   05   06   07   08   09   0A   0B   0C   0D   0E   0F   10   11   12   13   14   15   16   17   18   19   1A   1B
- - - - - - 0x004162 01:8152: 25        .byte $25, $25, $25, $25, $16, $0E, $0E, $1D, $24, $1D, $11, $0E, $24, $18, $15, $0D, $24, $16, $0A, $17 + con_new_line_1   ; 
- - - - - - 0x004176 01:8166: 25        .byte $25, $25, $25, $25, $25, $25, $0A, $1D, $24, $1D, $11, $0E, $24, $10, $1B, $0A, $1F, $0E, $2C + con_message_end   ; 

_off001_8179_08:
;                                              04   05   06   07   08   09   0A   0B   0C   0D   0E   0F   10   11   12   13   14   15   16   17   18   19   1A   1B
- D 0 - I - 0x004189 01:8179: 25        .byte $25, $25, $0B, $1E, $22, $24, $16, $0E, $0D, $12, $0C, $12, $17, $0E, $24, $0B, $0E, $0F, $18, $1B, $0E + con_new_line_1   ; 
- D 0 - I - 0x00419E 01:818E: 25        .byte $25, $25, $22, $18, $1E, $24, $10, $18, $2C + con_message_end   ; 

_off001_8197_09:
;                                              04   05   06   07   08   09   0A   0B   0C   0D   0E   0F   10   11   12   13   14   15   16   17   18   19   1A   1B
- - - - - - 0x0041A7 01:8197: 25        .byte $25, $25, $19, $0A, $22, $24, $16, $0E, $24, $0A, $17, $0D, $24, $12, $2A, $15, $15, $24, $1D, $0A, $15, $14, $2C + con_message_end   ; 

_off001_81AE_0A:
;                                              04   05   06   07   08   09   0A   0B   0C   0D   0E   0F   10   11   12   13   14   15   16   17   18   19   1A   1B
- - - - - - 0x0041BE 01:81AE: 25        .byte $25, $25, $25, $1D, $11, $12, $1C, $24, $0A, $12, $17, $2A, $1D, $24, $0E, $17, $18, $1E, $10, $11 + con_new_line_1   ; 
- - - - - - 0x0041D2 01:81C2: 25        .byte $25, $25, $25, $25, $25, $25, $25, $25, $1D, $18, $24, $1D, $0A, $15, $14, $2C + con_message_end   ; 

_off001_81D2_0B:
;                                              04   05   06   07   08   09   0A   0B   0C   0D   0E   0F   10   11   12   13   14   15   16   17   18   19   1A   1B
- - - - - - 0x0041E2 01:81D2: 25        .byte $25, $25, $25, $25, $25, $25, $25, $10, $18, $24, $1E, $19, $28, $1E, $19, $28 + con_new_line_1   ; 
- - - - - - 0x0041F2 01:81E2: 25        .byte $25, $25, $25, $1D, $11, $0E, $24, $16, $18, $1E, $17, $1D, $0A, $12, $17, $24, $0A, $11, $0E, $0A, $0D, $2C + con_message_end   ; 

_off001_81F8_0C:
;                                              04   05   06   07   08   09   0A   0B   0C   0D   0E   0F   10   11   12   13   14   15   16   17   18   19   1A   1B
- - - - - - 0x004208 01:81F8: 25        .byte $25, $25, $10, $18, $24, $17, $18, $1B, $1D, $11, $28, $20, $0E, $1C, $1D, $28, $1C, $18, $1E, $1D, $11, $28 + con_new_line_1   ; 
- - - - - - 0x00421E 01:820E: 25        .byte $25, $25, $20, $0E, $1C, $1D, $24, $1D, $18, $24, $1D, $11, $0E, $24, $0F, $18, $1B, $0E, $1C, $1D + con_new_line_2   ; 
- - - - - - 0x004232 01:8222: 24        .byte $24, $24, $18, $0F, $24, $16, $0A, $23, $0E, $2C + con_message_end   ; 

_off001_822C_0D:
;                                              04   05   06   07   08   09   0A   0B   0C   0D   0E   0F   10   11   12   13   14   15   16   17   18   19   1A   1B
- - - - - - 0x00423C 01:822C: 25        .byte $25, $25, $25, $25, $0B, $18, $22, $28, $24, $22, $18, $1E, $2A, $1B, $0E, $24, $1B, $12, $0C, $11, $29 + con_message_end   ; 

_off001_8241_0E:
;                                              04   05   06   07   08   09   0A   0B   0C   0D   0E   0F   10   11   12   13   14   15   16   17   18   19   1A   1B
- D 0 - I - 0x004251 01:8241: 25        .byte $25, $0B, $1E, $22, $24, $1C, $18, $16, $0E, $1D, $11, $12, $17, $2A, $24, $20, $12, $15, $15, $24, $22, $0A, $29 + con_message_end   ; 

_off001_8258_0F:
;                                              04   05   06   07   08   09   0A   0B   0C   0D   0E   0F   10   11   12   13   14   15   16   17   18   19   1A   1B
- D 0 - I - 0x004268 01:8258: 25        .byte $25, $25, $25, $25, $25, $0B, $18, $22, $28, $24, $1D, $11, $12, $1C, $24, $12, $1C + con_new_line_1   ; 
- D 0 - I - 0x004279 01:8269: 25        .byte $25, $25, $25, $1B, $0E, $0A, $15, $15, $22, $24, $0E, $21, $19, $0E, $17, $1C, $12, $1F, $0E, $29 + con_message_end   ; 

_off001_827D_10:
;                                              04   05   06   07   08   09   0A   0B   0C   0D   0E   0F   10   11   12   13   14   15   16   17   18   19   1A   1B
- D 0 - I - 0x00428D 01:827D: 25        .byte $25, $1D, $0A, $14, $0E, $24, $0A, $17, $22, $24, $18, $17, $0E, $24, $22, $18, $1E, $24, $20, $0A, $17, $1D, $2C + con_message_end   ; 

_off001_8294_11:
;                                              04   05   06   07   08   09   0A   0B   0C   0D   0E   0F   10   11   12   13   14   15   16   17   18   19   1A   1B
- D 0 - I - 0x0042A4 01:8294: 25        .byte $25, $25, $25, $25, $25, $12, $1D, $2A, $1C, $24, $0A, $24, $1C, $0E, $0C, $1B, $0E, $1D + con_new_line_1   ; 
- D 0 - I - 0x0042B6 01:82A6: 25        .byte $25, $25, $25, $25, $25, $1D, $18, $24, $0E, $1F, $0E, $1B, $22, $0B, $18, $0D, $22, $2C + con_message_end   ; 

_off001_82B8_12:
;                                              04   05   06   07   08   09   0A   0B   0C   0D   0E   0F   10   11   12   13   14   15   16   17   18   19   1A   1B
- D 0 - I - 0x0042C8 01:82B8: 25        .byte $25, $25, $25, $10, $1B, $1E, $16, $0B, $15, $0E, $28, $10, $1B, $1E, $16, $0B, $15, $0E, $2C, $2C, $2C + con_message_end   ; 

_off001_82CD_13:
;                                              04   05   06   07   08   09   0A   0B   0C   0D   0E   0F   10   11   12   13   14   15   16   17   18   19   1A   1B
- - - - - - 0x0042DD 01:82CD: 25        .byte $25, $25, $0E, $0A, $1C, $1D, $16, $18, $1C, $1D, $24, $19, $0E, $17, $17, $12, $17, $1C, $1E, $15, $0A + con_new_line_1   ; 
- - - - - - 0x0042F2 01:82E2: 25        .byte $25, $25, $25, $25, $25, $12, $1C, $24, $1D, $11, $0E, $24, $1C, $0E, $0C, $1B, $0E, $1D, $2C + con_message_end   ; 

_off001_82F5_14:
;                                              04   05   06   07   08   09   0A   0B   0C   0D   0E   0F   10   11   12   13   14   15   16   17   18   19   1A   1B
- - - - - - 0x004305 01:82F5: 25        .byte $25, $0D, $18, $0D, $18, $17, $10, $18, $24, $0D, $12, $1C, $15, $12, $14, $0E, $1C, $24, $1C, $16, $18, $14, $0E, $2C + con_message_end   ; 

_off001_830D_15:
;                                              04   05   06   07   08   09   0A   0B   0C   0D   0E   0F   10   11   12   13   14   15   16   17   18   19   1A   1B
- - - - - - 0x00431D 01:830D: 25        .byte $25, $0D, $12, $0D, $24, $22, $18, $1E, $24, $10, $0E, $1D, $24, $1D, $11, $0E, $24, $1C, $20, $18, $1B, $0D + con_new_line_1   ; 
- - - - - - 0x004333 01:8323: 25        .byte $25, $0F, $1B, $18, $16, $24, $1D, $11, $0E, $24, $18, $15, $0D, $24, $16, $0A, $17, $24, $18, $17 + con_new_line_2   ; 
- - - - - - 0x004347 01:8337: 25        .byte $25, $1D, $18, $19, $24, $18, $0F, $24, $1D, $11, $0E, $24, $20, $0A, $1D, $0E, $1B, $0F, $0A, $15, $15, $2E + con_message_end   ; 

_off001_834D_16:
;                                              04   05   06   07   08   09   0A   0B   0C   0D   0E   0F   10   11   12   13   14   15   16   17   18   19   1A   1B
- - - - - - 0x00435D 01:834D: 25        .byte $25, $25, $25, $25, $25, $20, $0A, $15, $14, $24, $12, $17, $1D, $18, $24, $1D, $11, $0E + con_new_line_1   ; 
- - - - - - 0x00436F 01:835F: 25        .byte $25, $25, $25, $25, $25, $25, $25, $20, $0A, $1D, $0E, $1B, $0F, $0A, $15, $15, $2C + con_message_end   ; 

_off001_8370_17:
;                                              04   05   06   07   08   09   0A   0B   0C   0D   0E   0F   10   11   12   13   14   15   16   17   18   19   1A   1B
- - - - - - 0x004380 01:8370: 25        .byte $25, $25, $1C, $0E, $0C, $1B, $0E, $1D, $24, $19, $18, $20, $0E, $1B, $24, $12, $1C, $24, $1C, $0A, $12, $0D + con_new_line_1   ; 
- - - - - - 0x004396 01:8386: 25        .byte $25, $25, $25, $1D, $18, $24, $0B, $0E, $24, $12, $17, $24, $1D, $11, $0E, $24, $0A, $1B, $1B, $18, $20, $2C + con_message_end   ; 

_off001_839C_18:
;                                              04   05   06   07   08   09   0A   0B   0C   0D   0E   0F   10   11   12   13   14   15   16   17   18   19   1A   1B
- - - - - - 0x0043AC 01:839C: 25        .byte $25, $25, $25, $25, $0D, $12, $10, $0D, $18, $10, $10, $0E, $1B, $24, $11, $0A, $1D, $0E, $1C + con_new_line_1   ; 
- - - - - - 0x0043BF 01:83AF: 25        .byte $25, $0C, $0E, $1B, $1D, $0A, $12, $17, $24, $14, $12, $17, $0D, $24, $18, $0F, $24, $1C, $18, $1E, $17, $0D, $2C + con_message_end   ; 

_off001_83C6_19:
;                                              04   05   06   07   08   09   0A   0B   0C   0D   0E   0F   10   11   12   13   14   15   16   17   18   19   1A   1B
- D 0 - I - 0x0043D6 01:83C6: 25        .byte $25, $25, $25, $25, $12, $24, $0B, $0E, $1D, $24, $22, $18, $1E, $2A, $0D, $24, $15, $12, $14, $0E + con_new_line_1   ; 
- D 0 - I - 0x0043EA 01:83DA: 25        .byte $25, $25, $25, $1D, $18, $24, $11, $0A, $1F, $0E, $24, $16, $18, $1B, $0E, $24, $0B, $18, $16, $0B, $1C, $2C + con_message_end   ; 

_off001_83F0_1A:
;                                              04   05   06   07   08   09   0A   0B   0C   0D   0E   0F   10   11   12   13   14   15   16   17   18   19   1A   1B
- - - - - - 0x004400 01:83F0: 25        .byte $25, $25, $25, $25, $12, $0F, $24, $22, $18, $1E, $24, $10, $18, $24, $12, $17, $24, $1D, $11, $0E + con_new_line_1   ; 
- - - - - - 0x004414 01:8404: 25        .byte $25, $0D, $12, $1B, $0E, $0C, $1D, $12, $18, $17, $24, $18, $0F, $24, $1D, $11, $0E, $24, $0A, $1B, $1B, $18, $20, $2C + con_message_end   ; 

_off001_841C_1B:
;                                              04   05   06   07   08   09   0A   0B   0C   0D   0E   0F   10   11   12   13   14   15   16   17   18   19   1A   1B
- D 0 - I - 0x00442C 01:841C: 25        .byte $25, $25, $25, $25, $15, $0E, $0A, $1F, $0E, $24, $22, $18, $1E, $1B, $24, $15, $12, $0F, $0E + con_new_line_1   ; 
- D 0 - I - 0x00443F 01:842F: 25        .byte $25, $25, $25, $25, $25, $25, $25, $18, $1B, $24, $16, $18, $17, $0E, $22, $2C + con_message_end   ; 

_off001_843F_1C:
;                                              04   05   06   07   08   09   0A   0B   0C   0D   0E   0F   10   11   12   13   14   15   16   17   18   19   1A   1B
- - - - - - 0x00444F 01:843F: 25        .byte $25, $1D, $11, $0E, $1B, $0E, $24, $0A, $1B, $0E, $24, $1C, $0E, $0C, $1B, $0E, $1D, $1C, $24, $20, $11, $0E, $1B, $0E + con_new_line_1   ; 
- - - - - - 0x004467 01:8457: 25        .byte $25, $25, $25, $0F, $0A, $12, $1B, $12, $0E, $1C, $24, $0D, $18, $17, $2A, $1D, $24, $15, $12, $1F, $0E, $2C + con_message_end   ; 

_off001_846D_1D:
;                                              04   05   06   07   08   09   0A   0B   0C   0D   0E   0F   10   11   12   13   14   15   16   17   18   19   1A   1B
- - - - - - 0x00447D 01:846D: 25        .byte $25, $25, $25, $25, $0A, $12, $16, $24, $0A, $1D, $24, $1D, $11, $0E, $24, $0E, $22, $0E, $1C + con_new_line_1   ; 
- - - - - - 0x004490 01:8480: 25        .byte $25, $25, $25, $25, $25, $25, $25, $18, $0F, $24, $10, $18, $11, $16, $0A, $2C + con_message_end   ; 

_off001_8490_1E:
;                                              04   05   06   07   08   09   0A   0B   0C   0D   0E   0F   10   11   12   13   14   15   16   17   18   19   1A   1B
- - - - - - 0x0044A0 01:8490: 25        .byte $25, $25, $1C, $18, $1E, $1D, $11, $24, $18, $0F, $24, $0A, $1B, $1B, $18, $20, $24, $16, $0A, $1B, $14 + con_new_line_1   ; 
- - - - - - 0x0044B5 01:84A5: 25        .byte $25, $25, $25, $25, $11, $12, $0D, $0E, $1C, $24, $0A, $24, $1C, $0E, $0C, $1B, $0E, $1D, $2C + con_message_end   ; 

_off001_84B8_1F:
;                                              04   05   06   07   08   09   0A   0B   0C   0D   0E   0F   10   11   12   13   14   15   16   17   18   19   1A   1B
- - - - - - 0x0044C8 01:84B8: 25        .byte $25, $25, $1D, $11, $0E, $1B, $0E, $2A, $1C, $24, $0A, $24, $1C, $0E, $0C, $1B, $0E, $1D, $24, $12, $17 + con_new_line_1   ; 
- - - - - - 0x0044DD 01:84CD: 25        .byte $25, $25, $1D, $11, $0E, $24, $1D, $12, $19, $24, $18, $0F, $24, $1D, $11, $0E, $24, $17, $18, $1C, $0E, $2C + con_message_end   ; 

_off001_84E3_20:
;                                              04   05   06   07   08   09   0A   0B   0C   0D   0E   0F   10   11   12   13   14   15   16   17   18   19   1A   1B
- - - - - - 0x0044F3 01:84E3: 25        .byte $25, $25, $25, $1C, $19, $0E, $0C, $1D, $0A, $0C, $15, $0E, $24, $1B, $18, $0C, $14, $24, $12, $1C + con_new_line_1   ; 
- - - - - - 0x004507 01:84F7: 25        .byte $25, $25, $0A, $17, $24, $0E, $17, $1D, $1B, $0A, $17, $0C, $0E, $24, $1D, $18, $24, $0D, $0E, $0A, $1D, $11, $2C + con_message_end   ; 

_off001_850E_21:
;                                              04   05   06   07   08   09   0A   0B   0C   0D   0E   0F   10   11   12   13   14   15   16   17   18   19   1A   1B
- - - - - - 0x00451E 01:850E: 01        .byte $01, $00, $1D, $11, $24, $0E, $17, $0E, $16, $22, $24, $11, $0A, $1C, $24, $1D, $11, $0E, $24, $0B, $18, $16, $0B, $2C + con_message_end   ; 

_off001_8526_22:
;                                              04   05   06   07   08   09   0A   0B   0C   0D   0E   0F   10   11   12   13   14   15   16   17   18   19   1A   1B
- - - - - - 0x004536 01:8526: 25        .byte $25, $18, $17, $0E, $1C, $24, $20, $11, $18, $24, $0D, $18, $0E, $1C, $24, $17, $18, $1D, $24, $11, $0A, $1F, $0E + con_new_line_1   ; 
- - - - - - 0x00454D 01:853D: 25        .byte $25, $1D, $1B, $12, $0F, $18, $1B, $0C, $0E, $24, $0C, $0A, $17, $2A, $1D, $24, $10, $18, $24, $12, $17, $2C + con_message_end   ; 

_off001_8553_23:
;                                              04   05   06   07   08   09   0A   0B   0C   0D   0E   0F   10   11   12   13   14   15   16   17   18   19   1A   1B
- - - - - - 0x004563 01:8553: 25        .byte $25, $25, $25, $19, $0A, $1D, $1B, $0A, $24, $11, $0A, $1C, $24, $1D, $11, $0E, $24, $16, $0A, $19, $2C + con_message_end   ; 

_off001_8568_24:
;                                              04   05   06   07   08   09   0A   0B   0C   0D   0E   0F   10   11   12   13   14   15   16   17   18   19   1A   1B
- D 0 - I - 0x004578 01:8568: 25        .byte $25, $25, $10, $18, $24, $1D, $18, $24, $1D, $11, $0E, $24, $17, $0E, $21, $1D, $24, $1B, $18, $18, $16, $2C + con_message_end   ; 

_off001_857E_25:
;                                              04   05   06   07   08   09   0A   0B   0C   0D   0E   0F   10   11   12   13   14   15   16   17   18   19   1A   1B
- - - - - - 0x00458E 01:857E: 25        .byte $25, $25, $25, $25, $25, $0E, $22, $0E, $1C, $24, $18, $0F, $24, $1C, $14, $1E, $15, $15 + con_new_line_1   ; 
- - - - - - 0x0045A0 01:8590: 25        .byte $25, $25, $25, $25, $25, $11, $0A, $1C, $24, $0A, $24, $1C, $0E, $0C, $1B, $0E, $1D, $2C + con_message_end   ; 



tbl_85A2:
; ??? + message id
- D 0 - - - 0x0045B2 01:85A2: 40        .byte $40 + con_msg_00   ; 6A 
- D 0 - - - 0x0045B3 01:85A3: 60        .byte $40 + con_msg_20   ; 6B 
- D 0 - - - 0x0045B4 01:85A4: 42        .byte $40 + con_msg_02   ; 6C 
- D 0 - - - 0x0045B5 01:85A5: 42        .byte $40 + con_msg_02   ; 6D 
- D 0 - - - 0x0045B6 01:85A6: 04        .byte $00 + con_msg_04   ; 6E 
- - - - - - 0x0045B7 01:85A7: 06        .byte $00 + con_msg_06   ; 6F 
- D 0 - - - 0x0045B8 01:85A8: 48        .byte $40 + con_msg_08   ; 70 
- - - - - - 0x0045B9 01:85A9: 0A        .byte $00 + con_msg_0A   ; 71 
- D 0 - - - 0x0045BA 01:85AA: 4C        .byte $40 + con_msg_0C   ; 72 
- - - - - - 0x0045BB 01:85AB: 0E        .byte $00 + con_msg_0E   ; 73 
- D 0 - - - 0x0045BC 01:85AC: D0        .byte $C0 + con_msg_10   ; 74 
- - - - - - 0x0045BD 01:85AD: D2        .byte $C0 + con_msg_12   ; 75 
- - - - - - 0x0045BE 01:85AE: D2        .byte $C0 + con_msg_12   ; 76 
- D 0 - - - 0x0045BF 01:85AF: DC        .byte $C0 + con_msg_1C   ; 77 
- D 0 - - - 0x0045C0 01:85B0: DC        .byte $C0 + con_msg_1C   ; 78 
- D 0 - - - 0x0045C1 01:85B1: DE        .byte $C0 + con_msg_1E   ; 79 
- D 0 - - - 0x0045C2 01:85B2: DE        .byte $C0 + con_msg_1E   ; 7A 
- - - - - - 0x0045C3 01:85B3: 62        .byte $40 + con_msg_22   ; 7B 
- D 0 - - - 0x0045C4 01:85B4: 62        .byte $40 + con_msg_22   ; 7C 
- - - - - - 0x0045C5 01:85B5: 62        .byte $40 + con_msg_22   ; 7D 



tbl_85B6:
- D 0 - - - 0x0045C6 01:85B6: 0A        .byte $0A   ; 00 
- D 0 - - - 0x0045C7 01:85B7: 28        .byte $28   ; 01 



tbl_85B8:
; offset via 0x0045DA
; 02
- - - - - - 0x0045C8 01:85B8: 00        .byte $00   ; unused
- - - - - - 0x0045C9 01:85B9: 01        .byte $01   ; unused
- - - - - - 0x0045CA 01:85BA: 02        .byte $02   ; unused
; 05
- D 0 - - - 0x0045CB 01:85BB: 01        .byte $01   ; 
- D 0 - - - 0x0045CC 01:85BC: 02        .byte $02   ; 
- D 0 - - - 0x0045CD 01:85BD: 00        .byte $00   ; 
; 08
- D 0 - - - 0x0045CE 01:85BE: 02        .byte $02   ; 
- D 0 - - - 0x0045CF 01:85BF: 00        .byte $00   ; 
- D 0 - - - 0x0045D0 01:85C0: 01        .byte $01   ; 
; 0B
- D 0 - - - 0x0045D1 01:85C1: 00        .byte $00   ; 
- D 0 - - - 0x0045D2 01:85C2: 02        .byte $02   ; 
- D 0 - - - 0x0045D3 01:85C3: 01        .byte $01   ; 
; 0E
- D 0 - - - 0x0045D4 01:85C4: 02        .byte $02   ; 
- D 0 - - - 0x0045D5 01:85C5: 01        .byte $01   ; 
- D 0 - - - 0x0045D6 01:85C6: 00        .byte $00   ; 
; 11
- D 0 - - - 0x0045D7 01:85C7: 01        .byte $01   ; 
- D 0 - - - 0x0045D8 01:85C8: 00        .byte $00   ; 
- D 0 - - - 0x0045D9 01:85C9: 02        .byte $02   ; 



tbl_85CA_offset:
- - - - - - 0x0045DA 01:85CA: 02        .byte $02   ; 00 
- D 0 - - - 0x0045DB 01:85CB: 05        .byte $05   ; 01 
- D 0 - - - 0x0045DC 01:85CC: 08        .byte $08   ; 02 
- D 0 - - - 0x0045DD 01:85CD: 0B        .byte $0B   ; 03 
- D 0 - - - 0x0045DE 01:85CE: 0E        .byte $0E   ; 04 
- D 0 - - - 0x0045DF 01:85CF: 11        .byte $11   ; 05 



loc_0x0045E0_old_man_handler:
C D 0 - - - 0x0045E0 01:85D0: A9 78     LDA #$78    ; pos X
C - - - - - 0x0045E2 01:85D2: A0 80     LDY #$80    ; pos Y
C - - - - - 0x0045E4 01:85D4: 20 A3 86  JSR sub_86A3_spawn_old_man
C - - - - - 0x0045E7 01:85D7: AD 50 03  LDA ram_obj_id_enemy
C - - - - - 0x0045EA 01:85DA: C9 72     CMP #con_obj_id_72
C - - - - - 0x0045EC 01:85DC: F0 0C     BEQ bra_85EA
C - - - - - 0x0045EE 01:85DE: C9 71     CMP #con_obj_id_71
C - - - - - 0x0045F0 01:85E0: F0 08     BEQ bra_85EA
C - - - - - 0x0045F2 01:85E2: C9 7B     CMP #$7B
C - - - - - 0x0045F4 01:85E4: B0 04     BCS bra_85EA    ; if 7B+
C - - - - - 0x0045F6 01:85E6: C9 6E     CMP #$6E
C - - - - - 0x0045F8 01:85E8: B0 0F     BCS bra_85F9    ; if 6E, 70, 73-7A
bra_85EA:
; 00-6D, 71, 72
C - - - - - 0x0045FA 01:85EA: 20 14 73  JSR sub_bat_7314_check_map_bit4
C - - - - - 0x0045FD 01:85ED: F0 0A     BEQ bra_85F9
C - - - - - 0x0045FF 01:85EF: A9 00     LDA #con_obj_id_null
C - - - - - 0x004601 01:85F1: 8D 50 03  STA ram_obj_id_enemy
sub_85F4_unfreeze_link:
C - - - - - 0x004604 01:85F4: A9 00     LDA #con_obj_state_00
C - - - - - 0x004606 01:85F6: 85 AC     STA ram_state_link
C - - - - - 0x004608 01:85F8: 60        RTS
bra_85F9:
C - - - - - 0x004609 01:85F9: AD 50 03  LDA ram_obj_id_enemy
C - - - - - 0x00460C 01:85FC: 38        SEC
C - - - - - 0x00460D 01:85FD: E9 6A     SBC #$6A
C - - - - - 0x00460F 01:85FF: A8        TAY
C - - - - - 0x004610 01:8600: B9 A2 85  LDA tbl_85A2,Y
C - - - - - 0x004613 01:8603: 48        PHA
C - - - - - 0x004614 01:8604: 29 3F     AND #$3F
C - - - - - 0x004616 01:8606: 8D 15 04  STA ram_message
C - - - - - 0x004619 01:8609: 68        PLA
C - - - - - 0x00461A 01:860A: 29 C0     AND #$C0
C - - - - - 0x00461C 01:860C: 85 03     STA ram_0003
C - - - - - 0x00461E 01:860E: A9 FD     LDA #$FD
bra_8610_loop:
C - - - - - 0x004620 01:8610: 18        CLC
C - - - - - 0x004621 01:8611: 69 03     ADC #$03
C - - - - - 0x004623 01:8613: 88        DEY
C - - - - - 0x004624 01:8614: 10 FA     BPL bra_8610_loop
C - - - - - 0x004626 01:8616: A8        TAY
C - - - - - 0x004627 01:8617: A2 00     LDX #$00
bra_8619_loop:
C - - - - - 0x004629 01:8619: B9 7E 6A  LDA ram_6A7E_map_data,Y
C - - - - - 0x00462C 01:861C: 9D 22 04  STA ram_0422,X
C - - - - - 0x00462F 01:861F: 29 C0     AND #$C0
C - - - - - 0x004631 01:8621: 95 00     STA ram_0000,X
C - - - - - 0x004633 01:8623: B9 BA 6A  LDA ram_6A7E_map_data + $3C,Y
C - - - - - 0x004636 01:8626: 9D 30 04  STA ram_042B_enemy + $04,X
C - - - - - 0x004639 01:8629: C8        INY
C - - - - - 0x00463A 01:862A: E8        INX
C - - - - - 0x00463B 01:862B: E0 03     CPX #$03
C - - - - - 0x00463D 01:862D: D0 EA     BNE bra_8619_loop
C - - - - - 0x00463F 01:862F: A5 03     LDA ram_0003
C - - - - - 0x004641 01:8631: 0A        ASL
C - - - - - 0x004642 01:8632: 2A        ROL
C - - - - - 0x004643 01:8633: 2A        ROL
C - - - - - 0x004644 01:8634: 05 00     ORA ram_0000
C - - - - - 0x004646 01:8636: 85 00     STA ram_0000
C - - - - - 0x004648 01:8638: A5 02     LDA ram_0002
C - - - - - 0x00464A 01:863A: 4A        LSR
C - - - - - 0x00464B 01:863B: 4A        LSR
C - - - - - 0x00464C 01:863C: 4A        LSR
C - - - - - 0x00464D 01:863D: 4A        LSR
C - - - - - 0x00464E 01:863E: 05 00     ORA ram_0000
C - - - - - 0x004650 01:8640: 85 00     STA ram_0000
C - - - - - 0x004652 01:8642: A5 01     LDA ram_0001
C - - - - - 0x004654 01:8644: 4A        LSR
C - - - - - 0x004655 01:8645: 4A        LSR
C - - - - - 0x004656 01:8646: 05 00     ORA ram_0000
C - - - - - 0x004658 01:8648: 8D 13 04  STA ram_0413
C - - - - - 0x00465B 01:864B: 29 20     AND #$20
C - - - - - 0x00465D 01:864D: F0 48     BEQ bra_8697
C - - - - - 0x00465F 01:864F: A9 FF     LDA #$FF
C - - - - - 0x004661 01:8651: A0 06     LDY #$06
bra_8653_loop:
C - - - - - 0x004663 01:8653: C5 19     CMP ram_indiv_random + $01
C - - - - - 0x004665 01:8655: 90 06     BCC bra_865D
C - - - - - 0x004667 01:8657: 38        SEC
C - - - - - 0x004668 01:8658: E9 2B     SBC #$2B
C - - - - - 0x00466A 01:865A: 88        DEY
C - - - - - 0x00466B 01:865B: D0 F6     BNE bra_8653_loop
bra_865D:
C - - - - - 0x00466D 01:865D: BE CA 85  LDX tbl_85CA_offset,Y
C - - - - - 0x004670 01:8660: A0 02     LDY #$02
bra_8662_loop:
C - - - - - 0x004672 01:8662: BD B8 85  LDA tbl_85B8,X
C - - - - - 0x004675 01:8665: 99 6C 04  STA ram_046B_enemy + $01,Y
C - - - - - 0x004678 01:8668: CA        DEX
C - - - - - 0x004679 01:8669: 88        DEY
C - - - - - 0x00467A 01:866A: 10 F6     BPL bra_8662_loop
C - - - - - 0x00467C 01:866C: A5 1A     LDA ram_indiv_random + $02
C - - - - - 0x00467E 01:866E: 29 01     AND #$01
C - - - - - 0x004680 01:8670: A8        TAY
C - - - - - 0x004681 01:8671: B9 B6 85  LDA tbl_85B6,Y
C - - - - - 0x004684 01:8674: 8D 6F 04  STA ram_046B_enemy + $04
C - - - - - 0x004687 01:8677: A9 0A     LDA #$0A
C - - - - - 0x004689 01:8679: 8D 70 04  STA ram_046B_enemy + $05
C - - - - - 0x00468C 01:867C: A0 14     LDY #$14
C - - - - - 0x00468E 01:867E: A5 1A     LDA ram_indiv_random + $02
C - - - - - 0x004690 01:8680: 29 02     AND #$02
C - - - - - 0x004692 01:8682: F0 02     BEQ bra_8686
C - - - - - 0x004694 01:8684: A0 32     LDY #$32
bra_8686:
C - - - - - 0x004696 01:8686: 8C 71 04  STY ram_046B_enemy + $06
C - - - - - 0x004699 01:8689: A2 02     LDX #$02
bra_868B_loop:
C - - - - - 0x00469B 01:868B: BC 6C 04  LDY ram_046B_enemy + $01,X
C - - - - - 0x00469E 01:868E: B9 6F 04  LDA ram_046B_enemy + $04,Y
C - - - - - 0x0046A1 01:8691: 9D 48 04  STA ram_0448,X
C - - - - - 0x0046A4 01:8694: CA        DEX
C - - - - - 0x0046A5 01:8695: 10 F4     BPL bra_868B_loop
bra_8697:
C - - - - - 0x0046A7 01:8697: A9 00     LDA #$00
C - - - - - 0x0046A9 01:8699: 8D 16 04  STA ram_0416
C - - - - - 0x0046AC 01:869C: AD 14 88  LDA tbl_8812_ppu_lo + $02
C - - - - - 0x0046AF 01:869F: 8D 5F 04  STA ram_045E_enemy + $01
C - - - - - 0x0046B2 01:86A2: 60        RTS



sub_86A3_spawn_old_man:
; bzk optimize, always A = 78 and Y = 80, write here instead
C - - - - - 0x0046B3 01:86A3: 95 70     STA ram_pos_X_enemy,X
C - - - - - 0x0046B5 01:86A5: 94 84     STY ram_pos_Y_enemy,X
C - - - - - 0x0046B7 01:86A7: A9 00     LDA #$00
C - - - - - 0x0046B9 01:86A9: 9D 85 04  STA ram_hp_ememy - $01 - $01,X
C - - - - - 0x0046BC 01:86AC: A9 81     LDA #con_04C0_01 + con_04C0_80
C - - - - - 0x0046BE 01:86AE: 9D BF 04  STA ram_attr_enemy - $01,X
C - - - - - 0x0046C1 01:86B1: A9 40     LDA #con_obj_state_freeze
C - - - - - 0x0046C3 01:86B3: 85 AC     STA ram_state_link
C - - - - - 0x0046C5 01:86B5: A9 40     LDA #con_obj_id_40
C - - - - - 0x0046C7 01:86B7: 8D 51 03  STA ram_obj_id_enemy + $01
C - - - - - 0x0046CA 01:86BA: 8D 52 03  STA ram_obj_id_enemy + $02
C - - - - - 0x0046CD 01:86BD: A9 48     LDA #$48
C - - - - - 0x0046CF 01:86BF: 95 71     STA ram_pos_X_enemy + $01,X
C - - - - - 0x0046D1 01:86C1: A9 A8     LDA #$A8
C - - - - - 0x0046D3 01:86C3: 95 72     STA ram_pos_X_enemy + $02,X
C - - - - - 0x0046D5 01:86C5: 94 85     STY ram_pos_Y_enemy + $01,X
C - - - - - 0x0046D7 01:86C7: 94 86     STY ram_pos_Y_enemy + $02,X
C - - - - - 0x0046D9 01:86C9: 60        RTS



tbl_86CA:
- D 0 - - - 0x0046DA 01:86CA: 22        .byte $22   ; 00 
- D 0 - - - 0x0046DB 01:86CB: C8        .byte $C8   ; 01 
- D 0 - - - 0x0046DC 01:86CC: 0D        .byte $0D   ; 02 
- D 0 - - - 0x0046DD 01:86CD: 21        .byte $21   ; 03 
- D 0 - - - 0x0046DE 01:86CE: 24        .byte $24   ; 04 
- D 0 - - - 0x0046DF 01:86CF: 24        .byte $24   ; 05 
- D 0 - - - 0x0046E0 01:86D0: 24        .byte $24   ; 06 
- D 0 - - - 0x0046E1 01:86D1: 24        .byte $24   ; 07 
- D 0 - - - 0x0046E2 01:86D2: 24        .byte $24   ; 08 
- D 0 - - - 0x0046E3 01:86D3: 24        .byte $24   ; 09 
- D 0 - - - 0x0046E4 01:86D4: 24        .byte $24   ; 0A 
- D 0 - - - 0x0046E5 01:86D5: 24        .byte $24   ; 0B 
- D 0 - - - 0x0046E6 01:86D6: 24        .byte $24   ; 0C 
- D 0 - - - 0x0046E7 01:86D7: 24        .byte $24   ; 0D 
- D 0 - - - 0x0046E8 01:86D8: 24        .byte $24   ; 0E 
- D 0 - - - 0x0046E9 01:86D9: 24        .byte $24   ; 0F 
- D 0 - - - 0x0046EA 01:86DA: FF        .byte $FF   ; 10 



loc_0x0046EB:
C D 0 - - - 0x0046EB 01:86DB: A5 AD     LDA ram_state_enemy + $01
C - - - - - 0x0046ED 01:86DD: C9 04     CMP #$04
C - - - - - 0x0046EF 01:86DF: D0 06     BNE bra_86E7
C - - - - - 0x0046F1 01:86E1: A5 15     LDA ram_frm_cnt
C - - - - - 0x0046F3 01:86E3: 29 01     AND #$01
C - - - - - 0x0046F5 01:86E5: D0 38     BNE bra_871F
bra_86E7:
C - - - - - 0x0046F7 01:86E7: 20 36 87  JSR sub_8736
C - - - - - 0x0046FA 01:86EA: AD 50 03  LDA ram_obj_id_enemy
C - - - - - 0x0046FD 01:86ED: C9 74     CMP #con_obj_id_74
C - - - - - 0x0046FF 01:86EF: D0 2B     BNE bra_871C
C - - - - - 0x004701 01:86F1: AD 66 06  LDA ram_item_letter
C - - - - - 0x004704 01:86F4: C9 02     CMP #$02
C - - - - - 0x004706 01:86F6: F0 24     BEQ bra_871C
C - - - - - 0x004708 01:86F8: AC 56 06  LDY ram_item_slot_index
C - - - - - 0x00470B 01:86FB: C0 0F     CPY #con_item_letter
C - - - - - 0x00470D 01:86FD: D0 06     BNE bra_8705
C - - - - - 0x00470F 01:86FF: A5 F8     LDA ram_btn_press
C - - - - - 0x004711 01:8701: 29 40     AND #con_btn_B
C - - - - - 0x004713 01:8703: D0 0A     BNE bra_870F
bra_8705:
C - - - - - 0x004715 01:8705: A5 AC     LDA ram_state_link
C - - - - - 0x004717 01:8707: C9 40     CMP #con_obj_state_freeze
C - - - - - 0x004719 01:8709: D0 03     BNE bra_870E_RTS
C - - - - - 0x00471B 01:870B: 20 F4 85  JSR sub_85F4_unfreeze_link
bra_870E_RTS:
C - - - - - 0x00471E 01:870E: 60        RTS
bra_870F:
C - - - - - 0x00471F 01:870F: A9 04     LDA #con_sfx_2_secret_found
C - - - - - 0x004721 01:8711: 8D 02 06  STA ram_sfx_2
C - - - - - 0x004724 01:8714: EE 66 06  INC ram_item_letter
C - - - - - 0x004727 01:8717: A9 07     LDA #con_item_potion
C - - - - - 0x004729 01:8719: 8D 56 06  STA ram_item_slot_index
bra_871C:
C - - - - - 0x00472C 01:871C: 20 49 87  JSR sub_8749
bra_871F:
C - - - - - 0x00472F 01:871F: A5 AD     LDA ram_state_enemy + $01
C - - - - - 0x004731 01:8721: 20 E2 E5  JSR sub_0x01E5F2_jump_to_pointers_after_JSR
- D 0 - I - 0x004734 01:8724: 8B 87     .word ofs_029_878B_00
- D 0 - I - 0x004736 01:8726: 15 88     .word ofs_029_8815_01
- D 0 - I - 0x004738 01:8728: 7A 88     .word ofs_029_887A_02
- D 0 - I - 0x00473A 01:872A: F7 89     .word ofs_029_89F7_03
- D 0 - I - 0x00473C 01:872C: 33 89     .word ofs_029_8933_04
- D 0 - I - 0x00473E 01:872E: 41 89     .word ofs_029_8941_05
- - - - - - 0x004740 01:8730: F7 89     .word ofs_029_89F7_06
- - - - - - 0x004742 01:8732: 15 88     .word ofs_029_8815_07
- D 0 - I - 0x004744 01:8734: F6 89     .word ofs_029_89F6_08_RTS



sub_8736:
C - - - - - 0x004746 01:8736: 20 93 FA  JSR sub_0x01FAA3
C - - - - - 0x004749 01:8739: AC 50 03  LDY ram_obj_id_enemy
C - - - - - 0x00474C 01:873C: C0 7B     CPY #$7B
C - - - - - 0x00474E 01:873E: B0 03     BCS bra_8743
C - - - - - 0x004750 01:8740: 4C DB 77  JMP loc_bat_77DB
bra_8743:
C - - - - - 0x004753 01:8743: 4C DF 77  JMP loc_bat_77DF



tbl_8746:
- D 0 - - - 0x004756 01:8746: 58        .byte $58   ; 00 
- D 0 - - - 0x004757 01:8747: 78        .byte $78   ; 01 
- D 0 - - - 0x004758 01:8748: 98        .byte $98   ; 02 



sub_8749:
C - - - - - 0x004759 01:8749: AD 13 04  LDA ram_0413
C - - - - - 0x00475C 01:874C: 29 04     AND #$04
C - - - - - 0x00475E 01:874E: F0 24     BEQ bra_8774
C - - - - - 0x004760 01:8750: A9 02     LDA #$02
C - - - - - 0x004762 01:8752: 8D 21 04  STA ram_0421
bra_8755_loop:
C - - - - - 0x004765 01:8755: AE 21 04  LDX ram_0421
C - - - - - 0x004768 01:8758: BD 46 87  LDA tbl_8746,X
C - - - - - 0x00476B 01:875B: 85 83     STA ram_0083
C - - - - - 0x00476D 01:875D: A9 98     LDA #$98
C - - - - - 0x00476F 01:875F: 85 97     STA ram_0097
C - - - - - 0x004771 01:8761: BD 22 04  LDA ram_0422,X
C - - - - - 0x004774 01:8764: 29 3F     AND #$3F
C - - - - - 0x004776 01:8766: C9 3F     CMP #$3F
C - - - - - 0x004778 01:8768: F0 05     BEQ bra_876F
C - - - - - 0x00477A 01:876A: A2 13     LDX #$13
C - - - - - 0x00477C 01:876C: 20 0E E7  JSR sub_0x01E71E
bra_876F:
C - - - - - 0x00477F 01:876F: CE 21 04  DEC ram_0421
C - - - - - 0x004782 01:8772: 10 E1     BPL bra_8755_loop
bra_8774:
C - - - - - 0x004784 01:8774: AD 13 04  LDA ram_0413
C - - - - - 0x004787 01:8777: 29 08     AND #$08
C - - - - - 0x004789 01:8779: F0 0F     BEQ bra_878A_RTS
C - - - - - 0x00478B 01:877B: A9 30     LDA #$30
C - - - - - 0x00478D 01:877D: 85 83     STA ram_0083
C - - - - - 0x00478F 01:877F: A9 AB     LDA #$AB
C - - - - - 0x004791 01:8781: 85 97     STA ram_0097
C - - - - - 0x004793 01:8783: A9 18     LDA #con_drop_id_18
C - - - - - 0x004795 01:8785: A2 13     LDX #$13
C - - - - - 0x004797 01:8787: 20 0E E7  JSR sub_0x01E71E
bra_878A_RTS:
C - - - - - 0x00479A 01:878A: 60        RTS



ofs_029_878B_00:
C - - J - - 0x00479B 01:878B: AD 13 04  LDA ram_0413
C - - - - - 0x00479E 01:878E: 29 08     AND #$08
C - - - - - 0x0047A0 01:8790: F0 62     BEQ bra_87F4
sub_8792:
C - - - - - 0x0047A2 01:8792: 20 01 88  JSR sub_8801
C - - - - - 0x0047A5 01:8795: A9 21     LDA #$21
sub_8797:
C - - - - - 0x0047A7 01:8797: 8D 05 03  STA ram_0302_ppu_buffer + $03
C - - - - - 0x0047AA 01:879A: A2 00     LDX #$00
C - - - - - 0x0047AC 01:879C: 8E 2E 04  STX ram_042B_enemy + $02
C - - - - - 0x0047AF 01:879F: 8E 2F 04  STX ram_042B_enemy + $03
bra_87A2_loop:
C - - - - - 0x0047B2 01:87A2: BD 30 04  LDA ram_042B_enemy + $04,X
C - - - - - 0x0047B5 01:87A5: D0 0B     BNE bra_87B2
C - - - - - 0x0047B7 01:87A7: A2 24     LDX #$24
C - - - - - 0x0047B9 01:87A9: 86 01     STX ram_0001
C - - - - - 0x0047BB 01:87AB: 86 02     STX ram_0002
C - - - - - 0x0047BD 01:87AD: 86 03     STX ram_0003
C - - - - - 0x0047BF 01:87AF: 4C BF 87  JMP loc_87BF
bra_87B2:
C - - - - - 0x0047C2 01:87B2: 20 55 6E  JSR sub_bat_6E55
C - - - - - 0x0047C5 01:87B5: A2 24     LDX #$24
C - - - - - 0x0047C7 01:87B7: AD 13 04  LDA ram_0413
C - - - - - 0x0047CA 01:87BA: 0A        ASL
C - - - - - 0x0047CB 01:87BB: 90 02     BCC bra_87BF
C - - - - - 0x0047CD 01:87BD: A2 62     LDX #$62
bra_87BF:
loc_87BF:
C D 0 - - - 0x0047CF 01:87BF: 86 04     STX ram_0004
C - - - - - 0x0047D1 01:87C1: AC 2F 04  LDY ram_042B_enemy + $03
C - - - - - 0x0047D4 01:87C4: A5 02     LDA ram_0002
C - - - - - 0x0047D6 01:87C6: 20 F7 87  JSR sub_87F7
C - - - - - 0x0047D9 01:87C9: 99 08 03  STA ram_0302_ppu_buffer + $06,Y
C - - - - - 0x0047DC 01:87CC: A5 01     LDA ram_0001
C - - - - - 0x0047DE 01:87CE: 20 F7 87  JSR sub_87F7
C - - - - - 0x0047E1 01:87D1: 99 07 03  STA ram_0302_ppu_buffer + $05,Y
C - - - - - 0x0047E4 01:87D4: A5 03     LDA ram_0003
C - - - - - 0x0047E6 01:87D6: 99 09 03  STA ram_0302_ppu_buffer + $07,Y
C - - - - - 0x0047E9 01:87D9: AD 2F 04  LDA ram_042B_enemy + $03
C - - - - - 0x0047EC 01:87DC: 18        CLC
C - - - - - 0x0047ED 01:87DD: 69 04     ADC #$04
C - - - - - 0x0047EF 01:87DF: 8D 2F 04  STA ram_042B_enemy + $03
C - - - - - 0x0047F2 01:87E2: EE 2E 04  INC ram_042B_enemy + $02
C - - - - - 0x0047F5 01:87E5: AE 2E 04  LDX ram_042B_enemy + $02
C - - - - - 0x0047F8 01:87E8: E0 03     CPX #$03
C - - - - - 0x0047FA 01:87EA: D0 B6     BNE bra_87A2_loop
C - - - - - 0x0047FC 01:87EC: A9 0A     LDA #$0A
C - - - - - 0x0047FE 01:87EE: 85 29     STA ram_timer_enemy + $01
C - - - - - 0x004800 01:87F0: D0 02     BNE bra_87F4    ; jmp
sub_87F2:   ; A = 1E
loc_87F2:   ; A = 1E 2A 76
C D 0 - - - 0x004802 01:87F2: 85 14     STA ram_ppu_load_index
bra_87F4:
; when you pick up a sword at the cave
C - - - - - 0x004804 01:87F4: E6 AD     INC ram_state_enemy + $01
C - - - - - 0x004806 01:87F6: 60        RTS



sub_87F7:
C - - - - - 0x004807 01:87F7: C9 24     CMP #$24
C - - - - - 0x004809 01:87F9: D0 05     BNE bra_8800_RTS
C - - - - - 0x00480B 01:87FB: AA        TAX
C - - - - - 0x00480C 01:87FC: A5 04     LDA ram_0004
C - - - - - 0x00480E 01:87FE: 86 04     STX ram_0004
bra_8800_RTS:
C - - - - - 0x004810 01:8800: 60        RTS



sub_8801:
C - - - - - 0x004811 01:8801: A0 10     LDY #$10
bra_8803_loop:
C - - - - - 0x004813 01:8803: B9 CA 86  LDA tbl_86CA,Y
C - - - - - 0x004816 01:8806: 99 02 03  STA ram_0302_ppu_buffer,Y
C - - - - - 0x004819 01:8809: 88        DEY
C - - - - - 0x00481A 01:880A: 10 F7     BPL bra_8803_loop
C - - - - - 0x00481C 01:880C: 60        RTS



tbl_880D_ppu_data:
- D 0 - - - 0x00481D 01:880D: 21 A4     .dbyt $21A4 ; ppu address
- D 0 - - - 0x00481F 01:880F: 01        .byte $01   ; counter
- D 0 - - - 0x004820 01:8810: 24        .byte $24   ; 
- D 0 - - - 0x004821 01:8811: FF        .byte $FF   ; close buffer



tbl_8812_ppu_lo:
- D 0 - - - 0x004822 01:8812: C4        .byte $C4   ; 00 
- - - - - - 0x004823 01:8813: E4        .byte $E4   ; 01 
- D 0 - - - 0x004824 01:8814: A4        .byte $A4   ; 02 



ofs_029_8815_01:
ofs_029_8815_07:
ofs_026_8815_00:
C - - J - - 0x004825 01:8815: 20 1B F2  JSR sub_0x01F22B
; bzk optimize, code is similar to 0x00A9A8
C - - - - - 0x004828 01:8818: A5 29     LDA ram_timer_enemy + $01
C - - - - - 0x00482A 01:881A: D0 5D     BNE bra_8879_RTS
C - - - - - 0x00482C 01:881C: A9 06     LDA #$06
C - - - - - 0x00482E 01:881E: 85 29     STA ram_timer_enemy + $01
C - - - - - 0x004830 01:8820: A0 04     LDY #$04
bra_8822_loop:
C - - - - - 0x004832 01:8822: B9 0D 88  LDA tbl_880D_ppu_data,Y
C - - - - - 0x004835 01:8825: 99 02 03  STA ram_0302_ppu_buffer,Y
C - - - - - 0x004838 01:8828: 88        DEY
C - - - - - 0x004839 01:8829: 10 F7     BPL bra_8822_loop
bra_882B_loop:
C - - - - - 0x00483B 01:882B: AD 5F 04  LDA ram_045E_enemy + $01
C - - - - - 0x00483E 01:882E: 8D 03 03  STA ram_0302_ppu_buffer + $01
C - - - - - 0x004841 01:8831: EE 5F 04  INC ram_045E_enemy + $01
C - - - - - 0x004844 01:8834: AC 15 04  LDY ram_message
C - - - - - 0x004847 01:8837: B9 00 80  LDA tbl_8000_text_messages,Y
C - - - - - 0x00484A 01:883A: 85 00     STA ram_0000
C - - - - - 0x00484C 01:883C: C8        INY
C - - - - - 0x00484D 01:883D: B9 00 80  LDA tbl_8000_text_messages,Y
C - - - - - 0x004850 01:8840: 85 01     STA ram_0001
C - - - - - 0x004852 01:8842: AC 16 04  LDY ram_0416
C - - - - - 0x004855 01:8845: EE 16 04  INC ram_0416
C - - - - - 0x004858 01:8848: B1 00     LDA (ram_0000),Y
C - - - - - 0x00485A 01:884A: 29 3F     AND #$3F
C - - - - - 0x00485C 01:884C: C9 25     CMP #$25    ; skip to next position control byte
; bzk optimize, is it necessary to update message pointers in a loop?
C - - - - - 0x00485E 01:884E: F0 DB     BEQ bra_882B_loop
C - - - - - 0x004860 01:8850: 8D 05 03  STA ram_0302_ppu_buffer + $03
C - - - - - 0x004863 01:8853: A9 10     LDA #con_sfx_4_rupee
C - - - - - 0x004865 01:8855: 8D 04 06  STA ram_sfx_4
C - - - - - 0x004868 01:8858: B1 00     LDA (ram_0000),Y
C - - - - - 0x00486A 01:885A: 29 C0     AND #$C0
C - - - - - 0x00486C 01:885C: F0 1B     BEQ bra_8879_RTS
C - - - - - 0x00486E 01:885E: A0 02     LDY #$02
C - - - - - 0x004870 01:8860: C9 C0     CMP #$C0
C - - - - - 0x004872 01:8862: F0 06     BEQ bra_886A    ; if message end
C - - - - - 0x004874 01:8864: 88        DEY ; 01
C - - - - - 0x004875 01:8865: C9 40     CMP #$40
C - - - - - 0x004877 01:8867: F0 01     BEQ bra_886A    ; if new line 2
C - - - - - 0x004879 01:8869: 88        DEY ; 00        ; if new line 1
bra_886A:
C - - - - - 0x00487A 01:886A: B9 12 88  LDA tbl_8812_ppu_lo,Y
C - - - - - 0x00487D 01:886D: 8D 5F 04  STA ram_045E_enemy + $01
C - - - - - 0x004880 01:8870: C0 02     CPY #$02
C - - - - - 0x004882 01:8872: D0 05     BNE bra_8879_RTS
C - - - - - 0x004884 01:8874: E6 AD     INC ram_state_enemy + $01
C - - - - - 0x004886 01:8876: 20 F4 85  JSR sub_85F4_unfreeze_link
bra_8879_RTS:
C - - - - - 0x004889 01:8879: 60        RTS



ofs_029_887A_02:
C - - J - - 0x00488A 01:887A: AD 13 04  LDA ram_0413
C - - - - - 0x00488D 01:887D: 4A        LSR
C - - - - - 0x00488E 01:887E: B0 18     BCS bra_8898
C - - - - - 0x004890 01:8880: A9 08     LDA #$08
C - - - - - 0x004892 01:8882: 85 AD     STA ram_state_enemy + $01
C - - - - - 0x004894 01:8884: AD 50 03  LDA ram_obj_id_enemy
C - - - - - 0x004897 01:8887: C9 71     CMP #con_obj_id_71
C - - - - - 0x004899 01:8889: D0 0C     BNE bra_8897_RTS
- - - - - - 0x00489B 01:888B: AD 7E 06  LDA ram_rupees_sbc
- - - - - - 0x00489E 01:888E: 18        CLC
- - - - - - 0x00489F 01:888F: 69 14     ADC #$14
- - - - - - 0x0048A1 01:8891: 8D 7E 06  STA ram_rupees_sbc
- - - - - - 0x0048A4 01:8894: 20 0C 73  JSR sub_bat_730C_set_map_bit4
bra_8897_RTS:
C - - - - - 0x0048A7 01:8897: 60        RTS
bra_8898:
C - - - - - 0x0048A8 01:8898: AD 7E 06  LDA ram_rupees_sbc
C - - - - - 0x0048AB 01:889B: D0 FA     BNE bra_8897_RTS
C - - - - - 0x0048AD 01:889D: A2 02     LDX #$02
bra_889F_loop:
C - - - - - 0x0048AF 01:889F: BD 22 04  LDA ram_0422,X
C - - - - - 0x0048B2 01:88A2: 29 3F     AND #$3F
C - - - - - 0x0048B4 01:88A4: C9 3F     CMP #$3F
C - - - - - 0x0048B6 01:88A6: F0 13     BEQ bra_88BB
C - - - - - 0x0048B8 01:88A8: A5 70     LDA ram_pos_X_link
C - - - - - 0x0048BA 01:88AA: DD 46 87  CMP tbl_8746,X
C - - - - - 0x0048BD 01:88AD: D0 0C     BNE bra_88BB
C - - - - - 0x0048BF 01:88AF: A5 84     LDA ram_pos_Y_link
C - - - - - 0x0048C1 01:88B1: 38        SEC
C - - - - - 0x0048C2 01:88B2: E9 98     SBC #$98
C - - - - - 0x0048C4 01:88B4: 20 1F 70  JSR sub_bat_701F_EOR_FF_if_negative
C - - - - - 0x0048C7 01:88B7: C9 06     CMP #$06
C - - - - - 0x0048C9 01:88B9: 90 04     BCC bra_88BF
bra_88BB:
C - - - - - 0x0048CB 01:88BB: CA        DEX
C - - - - - 0x0048CC 01:88BC: 10 E1     BPL bra_889F_loop
C - - - - - 0x0048CE 01:88BE: 60        RTS
bra_88BF:
C - - - - - 0x0048CF 01:88BF: 8E 38 04  STX ram_0437_enemy + $01
C - - - - - 0x0048D2 01:88C2: AD 13 04  LDA ram_0413
C - - - - - 0x0048D5 01:88C5: 29 30     AND #$30
C - - - - - 0x0048D7 01:88C7: F0 17     BEQ bra_88E0
C - - - - - 0x0048D9 01:88C9: 29 10     AND #$10
C - - - - - 0x0048DB 01:88CB: F0 0E     BEQ bra_88DB
- - - - - - 0x0048DD 01:88CD: AD 6D 06  LDA ram_item_rupees
- - - - - - 0x0048E0 01:88D0: DD 30 04  CMP ram_042B_enemy + $04,X
- - - - - - 0x0048E3 01:88D3: 90 5D     BCC bra_8932_RTS
- - - - - - 0x0048E5 01:88D5: BD 30 04  LDA ram_042B_enemy + $04,X
- - - - - - 0x0048E8 01:88D8: 20 DE 89  JSR sub_89DE
bra_88DB:
C - - - - - 0x0048EB 01:88DB: A9 05     LDA #$05
C - - - - - 0x0048ED 01:88DD: 85 AD     STA ram_state_enemy + $01
C - - - - - 0x0048EF 01:88DF: 60        RTS
bra_88E0:
C - - - - - 0x0048F0 01:88E0: AD 13 04  LDA ram_0413
C - - - - - 0x0048F3 01:88E3: 29 02     AND #$02
C - - - - - 0x0048F5 01:88E5: F0 0E     BEQ bra_88F5
C - - - - - 0x0048F7 01:88E7: AD 6D 06  LDA ram_item_rupees
C - - - - - 0x0048FA 01:88EA: DD 30 04  CMP ram_042B_enemy + $04,X
C - - - - - 0x0048FD 01:88ED: 90 43     BCC bra_8932_RTS
C - - - - - 0x0048FF 01:88EF: BD 30 04  LDA ram_042B_enemy + $04,X
C - - - - - 0x004902 01:88F2: 20 DE 89  JSR sub_89DE
bra_88F5:
C - - - - - 0x004905 01:88F5: AD 13 04  LDA ram_0413
C - - - - - 0x004908 01:88F8: 29 40     AND #$40
C - - - - - 0x00490A 01:88FA: F0 13     BEQ bra_890F
C - - - - - 0x00490C 01:88FC: A0 40     LDY #$40
C - - - - - 0x00490E 01:88FE: AD 50 03  LDA ram_obj_id_enemy
C - - - - - 0x004911 01:8901: C9 6C     CMP #con_obj_id_6C
C - - - - - 0x004913 01:8903: F0 02     BEQ bra_8907
C - - - - - 0x004915 01:8905: A0 B0     LDY #$B0
bra_8907:
C - - - - - 0x004917 01:8907: CC 6F 06  CPY ram_item_066F
C - - - - - 0x00491A 01:890A: F0 03     BEQ bra_890F
C - - - - - 0x00491C 01:890C: 90 01     BCC bra_890F
- - - - - - 0x00491E 01:890E: 60        RTS
bra_890F:
C - - - - - 0x00491F 01:890F: 20 0C 73  JSR sub_bat_730C_set_map_bit4
C - - - - - 0x004922 01:8912: BD 22 04  LDA ram_0422,X
C - - - - - 0x004925 01:8915: 29 3F     AND #$3F
C - - - - - 0x004927 01:8917: 48        PHA
C - - - - - 0x004928 01:8918: A9 FF     LDA #$FF
C - - - - - 0x00492A 01:891A: 9D 22 04  STA ram_0422,X
C - - - - - 0x00492D 01:891D: 68        PLA
C - - - - - 0x00492E 01:891E: 20 70 73  JSR sub_bat_7370
C - - - - - 0x004931 01:8921: A9 1E     LDA #con_ppu_buf_1E
C - - - - - 0x004933 01:8923: 20 F2 87  JSR sub_87F2
C - - - - - 0x004936 01:8926: A9 40     LDA #$40
C - - - - - 0x004938 01:8928: 85 29     STA ram_timer_enemy + $01
sub_892A:
C - - - - - 0x00493A 01:892A: AD 13 04  LDA ram_0413
C - - - - - 0x00493D 01:892D: 29 F7     AND #$F7
C - - - - - 0x00493F 01:892F: 8D 13 04  STA ram_0413
bra_8932_RTS:
C - - - - - 0x004942 01:8932: 60        RTS



ofs_029_8933_04:
C - - J - - 0x004943 01:8933: A5 29     LDA ram_timer_enemy + $01
C - - - - - 0x004945 01:8935: D0 03     BNE bra_893A_RTS
C - - - - - 0x004947 01:8937: 8D 50 03  STA ram_obj_id_enemy
bra_893A_RTS:
C - - - - - 0x00494A 01:893A: 60        RTS



tbl_893B:
- - - - - - 0x00494B 01:893B: 14        .byte $14   ; 
- - - - - - 0x00494C 01:893C: 14        .byte $14   ; 
- - - - - - 0x00494D 01:893D: 16        .byte $16   ; 
- - - - - - 0x00494E 01:893E: 14        .byte $14   ; 
- - - - - - 0x00494F 01:893F: 18        .byte $18   ; 
- - - - - - 0x004950 01:8940: 1A        .byte $1A   ; 



ofs_029_8941_05:
C - - J - - 0x004951 01:8941: AD 13 04  LDA ram_0413
C - - - - - 0x004954 01:8944: 29 10     AND #$10
C - - - - - 0x004956 01:8946: F0 29     BEQ bra_8971
- - - - - - 0x004958 01:8948: A9 00     LDA #$00
- - - - - - 0x00495A 01:894A: AC 50 03  LDY ram_obj_id_enemy
- - - - - - 0x00495D 01:894D: C0 75     CPY #con_obj_id_75
- - - - - - 0x00495F 01:894F: F0 02     BEQ bra_8953
- - - - - - 0x004961 01:8951: A9 03     LDA #$03
bra_8953:
- - - - - - 0x004963 01:8953: 18        CLC
- - - - - - 0x004964 01:8954: 6D 38 04  ADC ram_0437_enemy + $01
- - - - - - 0x004967 01:8957: A8        TAY
- - - - - - 0x004968 01:8958: B9 3B 89  LDA tbl_893B,Y
- - - - - - 0x00496B 01:895B: 8D 15 04  STA ram_0415
- - - - - - 0x00496E 01:895E: AD 14 88  LDA tbl_8812_ppu_lo + $02
- - - - - - 0x004971 01:8961: 8D 5F 04  STA ram_045E_enemy + $01
- - - - - - 0x004974 01:8964: A9 00     LDA #$00
- - - - - - 0x004976 01:8966: 8D 16 04  STA ram_0416
- - - - - - 0x004979 01:8969: 20 2A 89  JSR sub_892A
- - - - - - 0x00497C 01:896C: A9 1E     LDA #con_ppu_buf_1E
- - - - - - 0x00497E 01:896E: 4C F2 87  JMP loc_87F2
bra_8971:
C - - - - - 0x004981 01:8971: AD 50 03  LDA ram_obj_id_enemy
C - - - - - 0x004984 01:8974: C9 7B     CMP #$7B
C - - - - - 0x004986 01:8976: 90 1A     BCC bra_8992
C - - - - - 0x004988 01:8978: 20 01 88  JSR sub_8801
C - - - - - 0x00498B 01:897B: A9 24     LDA #$24
C - - - - - 0x00498D 01:897D: 20 97 87  JSR sub_8797
C - - - - - 0x004990 01:8980: A9 08     LDA #con_sfx_4_pick_up_item
C - - - - - 0x004992 01:8982: 8D 04 06  STA ram_sfx_4
C - - - - - 0x004995 01:8985: 20 0C 73  JSR sub_bat_730C_set_map_bit4
C - - - - - 0x004998 01:8988: A9 08     LDA #$08
C - - - - - 0x00499A 01:898A: 85 AD     STA ram_state_enemy + $01
C - - - - - 0x00499C 01:898C: AD 31 04  LDA ram_042B_enemy + $05
C - - - - - 0x00499F 01:898F: 4C D6 89  JMP loc_89D6
bra_8992:
C - - - - - 0x0049A2 01:8992: AD 6D 06  LDA ram_item_rupees
C - - - - - 0x0049A5 01:8995: C9 0A     CMP #$0A
C - - - - - 0x0049A7 01:8997: 90 A1     BCC bra_893A_RTS
C - - - - - 0x0049A9 01:8999: A9 08     LDA #con_sfx_4_pick_up_item
C - - - - - 0x0049AB 01:899B: 8D 04 06  STA ram_sfx_4
C - - - - - 0x0049AE 01:899E: A0 02     LDY #$02
bra_89A0_loop:
C - - - - - 0x0049B0 01:89A0: B9 48 04  LDA ram_0448,Y
C - - - - - 0x0049B3 01:89A3: 99 30 04  STA ram_042B_enemy + $04,Y
C - - - - - 0x0049B6 01:89A6: 88        DEY
C - - - - - 0x0049B7 01:89A7: 10 F7     BPL bra_89A0_loop
C - - - - - 0x0049B9 01:89A9: 20 92 87  JSR sub_8792
C - - - - - 0x0049BC 01:89AC: A9 08     LDA #$08
C - - - - - 0x0049BE 01:89AE: 85 AD     STA ram_state_enemy + $01
C - - - - - 0x0049C0 01:89B0: A0 01     LDY #$01
C - - - - - 0x0049C2 01:89B2: AD 48 04  LDA ram_0448
C - - - - - 0x0049C5 01:89B5: 20 E6 89  JSR sub_89E6
C - - - - - 0x0049C8 01:89B8: A0 05     LDY #$05
C - - - - - 0x0049CA 01:89BA: AD 49 04  LDA ram_0449
C - - - - - 0x0049CD 01:89BD: 20 E6 89  JSR sub_89E6
C - - - - - 0x0049D0 01:89C0: A0 09     LDY #$09
C - - - - - 0x0049D2 01:89C2: AD 4A 04  LDA ram_044A
C - - - - - 0x0049D5 01:89C5: 20 E6 89  JSR sub_89E6
C - - - - - 0x0049D8 01:89C8: AE 38 04  LDX ram_0437_enemy + $01
C - - - - - 0x0049DB 01:89CB: BD 48 04  LDA ram_0448,X
C - - - - - 0x0049DE 01:89CE: C9 14     CMP #$14
C - - - - - 0x0049E0 01:89D0: F0 04     BEQ bra_89D6
C - - - - - 0x0049E2 01:89D2: C9 32     CMP #$32
C - - - - - 0x0049E4 01:89D4: D0 08     BNE bra_89DE
bra_89D6:
loc_89D6:
C D 0 - - - 0x0049E6 01:89D6: 18        CLC
C - - - - - 0x0049E7 01:89D7: 6D 7D 06  ADC ram_rupees_adc
C - - - - - 0x0049EA 01:89DA: 8D 7D 06  STA ram_rupees_adc
C - - - - - 0x0049ED 01:89DD: 60        RTS
bra_89DE:
sub_89DE:
C - - - - - 0x0049EE 01:89DE: 18        CLC
C - - - - - 0x0049EF 01:89DF: 6D 7E 06  ADC ram_rupees_sbc
C - - - - - 0x0049F2 01:89E2: 8D 7E 06  STA ram_rupees_sbc
C - - - - - 0x0049F5 01:89E5: 60        RTS



sub_89E6:
C - - - - - 0x0049F6 01:89E6: A2 64     LDX #$64
C - - - - - 0x0049F8 01:89E8: C9 14     CMP #$14
C - - - - - 0x0049FA 01:89EA: F0 06     BEQ bra_89F2
C - - - - - 0x0049FC 01:89EC: C9 32     CMP #$32
C - - - - - 0x0049FE 01:89EE: F0 02     BEQ bra_89F2
C - - - - - 0x004A00 01:89F0: A2 62     LDX #$62
bra_89F2:
C - - - - - 0x004A02 01:89F2: 8A        TXA
C - - - - - 0x004A03 01:89F3: 99 06 03  STA ram_0302_ppu_buffer + $04,Y
ofs_029_89F6_08_RTS:
C - - J - - 0x004A06 01:89F6: 60        RTS



ofs_029_89F7_03:
ofs_029_89F7_06:
ofs_026_89F7_02:
C - - J - - 0x004A07 01:89F7: A9 2A     LDA #con_ppu_buf_2A
C - - - - - 0x004A09 01:89F9: 4C F2 87  JMP loc_87F2



loc_0x004A0C:
C D 0 - - - 0x004A0C 01:89FC: AD 14 88  LDA tbl_8812_ppu_lo + $02
C - - - - - 0x004A0F 01:89FF: 8D 5F 04  STA ram_045E_enemy + $01
C - - - - - 0x004A12 01:8A02: A5 10     LDA ram_dungeon_level
C - - - - - 0x004A14 01:8A04: 20 E2 E5  JSR sub_0x01E5F2_jump_to_pointers_after_JSR
- - - - - - 0x004A17 01:8A07: AD 8C     .word ofs_025_8CAD_00_RTS
- - - - - - 0x004A19 01:8A09: 23 8A     .word ofs_025_8A23_01
- - - - - - 0x004A1B 01:8A0B: 23 8A     .word ofs_025_8A23_02
- - - - - - 0x004A1D 01:8A0D: 69 8A     .word ofs_025_8A69_03
- - - - - - 0x004A1F 01:8A0F: 69 8A     .word ofs_025_8A69_04
- D 0 - I - 0x004A21 01:8A11: 23 8A     .word ofs_025_8A23_05
- - - - - - 0x004A23 01:8A13: 69 8A     .word ofs_025_8A69_06
- D 0 - I - 0x004A25 01:8A15: 23 8A     .word ofs_025_8A23_07
- - - - - - 0x004A27 01:8A17: 69 8A     .word ofs_025_8A69_08
- D 0 - I - 0x004A29 01:8A19: 84 8A     .word ofs_025_8A84_09



tbl_8A1B:
- - - - - - 0x004A2B 01:8A1B: 28        .byte $28   ; 4B
- - - - - - 0x004A2C 01:8A1C: 26        .byte $26   ; 4E
- - - - - - 0x004A2D 01:8A1D: 2E        .byte $2E   ; 4F
- - - - - - 0x004A2E 01:8A1E: 30        .byte $30   ; 50
- D 0 - - - 0x004A2F 01:8A1F: 32        .byte $32   ; 51
- - - - - - 0x004A30 01:8A20: 3E        .byte $3E   ; 52
- - - - - - 0x004A31 01:8A21: 3E        .byte $3E   ; 53
- - - - - - 0x004A32 01:8A22: 34        .byte $34   ; 54



ofs_025_8A23_01:
ofs_025_8A23_02:
ofs_025_8A23_05:
ofs_025_8A23_07:
C - - J - - 0x004A33 01:8A23: A9 78     LDA #$78    ; pos X
C - - - - - 0x004A35 01:8A25: A0 80     LDY #$80    ; pos Y
C - - - - - 0x004A37 01:8A27: 20 A3 86  JSR sub_86A3_spawn_old_man
C - - - - - 0x004A3A 01:8A2A: BD 4F 03  LDA ram_obj_id_enemy - $01,X
C - - - - - 0x004A3D 01:8A2D: 38        SEC
C - - - - - 0x004A3E 01:8A2E: E9 4B     SBC #$4B
C - - - - - 0x004A40 01:8A30: A8        TAY
C - - - - - 0x004A41 01:8A31: B9 1B 8A  LDA tbl_8A1B,Y
C - - - - - 0x004A44 01:8A34: 8D 15 04  STA ram_0415
C - - - - - 0x004A47 01:8A37: AD 50 03  LDA ram_obj_id_enemy
C - - - - - 0x004A4A 01:8A3A: C9 4F     CMP #con_obj_id_4F
C - - - - - 0x004A4C 01:8A3C: D0 20     BNE bra_8A5E
C - - - - - 0x004A4E 01:8A3E: F0 12     BEQ bra_8A52    ; jmp



loc_0x004A50:
C D 0 - - - 0x004A50 01:8A40: A9 78     LDA #$78    ; pos X
C - - - - - 0x004A52 01:8A42: A0 80     LDY #$80    ; pos Y
C - - - - - 0x004A54 01:8A44: 20 A3 86  JSR sub_86A3_spawn_old_man
C - - - - - 0x004A57 01:8A47: A9 36     LDA #$36
C - - - - - 0x004A59 01:8A49: 8D 15 04  STA ram_0415
C - - - - - 0x004A5C 01:8A4C: AD 14 88  LDA tbl_8812_ppu_lo + $02
C - - - - - 0x004A5F 01:8A4F: 8D 5F 04  STA ram_045E_enemy + $01
bra_8A52:
C - - - - - 0x004A62 01:8A52: 20 14 73  JSR sub_bat_7314_check_map_bit4
C - - - - - 0x004A65 01:8A55: F0 07     BEQ bra_8A5E
- - - - - - 0x004A67 01:8A57: A9 00     LDA #con_obj_state_00
- - - - - - 0x004A69 01:8A59: 85 AC     STA ram_state_link
- - - - - - 0x004A6B 01:8A5B: 4C B1 FE  JMP loc_0x01FEC1_destroy_object
bra_8A5E:
C - - - - - 0x004A6E 01:8A5E: 4C D3 8A  JMP loc_8AD3



tbl_8A61:
- - - - - - 0x004A71 01:8A61: 2A        .byte $2A   ; 4B
- - - - - - 0x004A72 01:8A62: 38        .byte $38   ; 4E
- - - - - - 0x004A73 01:8A63: 3A        .byte $3A   ; 4F
- - - - - - 0x004A74 01:8A64: 2C        .byte $2C   ; 50
- - - - - - 0x004A75 01:8A65: 40        .byte $40   ; 51
- - - - - - 0x004A76 01:8A66: 42        .byte $42   ; 52
- - - - - - 0x004A77 01:8A67: 42        .byte $42   ; 53
- - - - - - 0x004A78 01:8A68: 3C        .byte $3C   ; 54



ofs_025_8A69_03:
ofs_025_8A69_04:
ofs_025_8A69_06:
ofs_025_8A69_08:
- - - - - - 0x004A79 01:8A69: A9 78     LDA #$78    ; pos X
- - - - - - 0x004A7B 01:8A6B: A0 80     LDY #$80    ; pos Y
- - - - - - 0x004A7D 01:8A6D: 20 A3 86  JSR sub_86A3_spawn_old_man
- - - - - - 0x004A80 01:8A70: BD 4F 03  LDA ram_obj_id_enemy - $01,X
- - - - - - 0x004A83 01:8A73: 38        SEC
- - - - - - 0x004A84 01:8A74: E9 4B     SBC #$4B
- - - - - - 0x004A86 01:8A76: A8        TAY
- - - - - - 0x004A87 01:8A77: B9 61 8A  LDA tbl_8A61,Y
- - - - - - 0x004A8A 01:8A7A: 8D 15 04  STA ram_0415
- - - - - - 0x004A8D 01:8A7D: 4C D3 8A  JMP loc_8AD3



tbl_8A80:
- D 0 - - - 0x004A90 01:8A80: 44        .byte $44   ; 4B
- - - - - - 0x004A91 01:8A81: 46        .byte $46   ; 4E
- D 0 - - - 0x004A92 01:8A82: 48        .byte $48   ; 4F
- - - - - - 0x004A93 01:8A83: 4A        .byte $4A   ; 50



ofs_025_8A84_09:
C - - J - - 0x004A94 01:8A84: A9 78     LDA #$78    ; pos X
C - - - - - 0x004A96 01:8A86: A0 80     LDY #$80    ; pos Y
C - - - - - 0x004A98 01:8A88: 20 A3 86  JSR sub_86A3_spawn_old_man
C - - - - - 0x004A9B 01:8A8B: 20 D3 8A  JSR sub_8AD3
C - - - - - 0x004A9E 01:8A8E: BD 4F 03  LDA ram_obj_id_enemy - $01,X
C - - - - - 0x004AA1 01:8A91: 48        PHA
C - - - - - 0x004AA2 01:8A92: 38        SEC
C - - - - - 0x004AA3 01:8A93: E9 4B     SBC #$4B
C - - - - - 0x004AA5 01:8A95: A8        TAY
C - - - - - 0x004AA6 01:8A96: B9 80 8A  LDA tbl_8A80,Y
C - - - - - 0x004AA9 01:8A99: 8D 15 04  STA ram_0415
C - - - - - 0x004AAC 01:8A9C: 68        PLA
C - - - - - 0x004AAD 01:8A9D: C9 4B     CMP #$4B
C - - - - - 0x004AAF 01:8A9F: D0 12     BNE bra_8AB3_RTS
C - - - - - 0x004AB1 01:8AA1: AD 71 06  LDA ram_item_triforce_pieces
C - - - - - 0x004AB4 01:8AA4: C9 FF     CMP #$FF
C - - - - - 0x004AB6 01:8AA6: D0 0B     BNE bra_8AB3_RTS
C - - - - - 0x004AB8 01:8AA8: A9 01     LDA #$01
C - - - - - 0x004ABA 01:8AAA: 8D CE 04  STA ram_04CE
C - - - - - 0x004ABD 01:8AAD: 4A        LSR ; 00    con_obj_state_00
C - - - - - 0x004ABE 01:8AAE: 85 AC     STA ram_state_link
C - - - - - 0x004AC0 01:8AB0: 20 B1 FE  JSR sub_0x01FEC1_destroy_object
bra_8AB3_RTS:
C - - - - - 0x004AC3 01:8AB3: 60        RTS



loc_0x004AC4:
C D 0 - - - 0x004AC4 01:8AB4: A9 78     LDA #$78    ; pos X
C - - - - - 0x004AC6 01:8AB6: A0 80     LDY #$80    ; pos Y
C - - - - - 0x004AC8 01:8AB8: 20 A3 86  JSR sub_86A3_spawn_old_man
C - - - - - 0x004ACB 01:8ABB: A9 24     LDA #$24
C - - - - - 0x004ACD 01:8ABD: 8D 15 04  STA ram_0415
C - - - - - 0x004AD0 01:8AC0: AD 14 88  LDA tbl_8812_ppu_lo + $02
C - - - - - 0x004AD3 01:8AC3: 8D 5F 04  STA ram_045E_enemy + $01
C - - - - - 0x004AD6 01:8AC6: 20 14 73  JSR sub_bat_7314_check_map_bit4
C - - - - - 0x004AD9 01:8AC9: F0 08     BEQ bra_8AD3
- - - - - - 0x004ADB 01:8ACB: A9 00     LDA #$00    ; con_obj_id_null   con_obj_state_00
- - - - - - 0x004ADD 01:8ACD: 85 AC     STA ram_state_link
- - - - - - 0x004ADF 01:8ACF: 8D 50 03  STA ram_obj_id_enemy
- - - - - - 0x004AE2 01:8AD2: 60        RTS
bra_8AD3:
loc_8AD3:
sub_8AD3:
C D 0 - - - 0x004AE3 01:8AD3: A9 08     LDA #con_sfx_2_pick_up_item
C - - - - - 0x004AE5 01:8AD5: 8D 02 06  STA ram_sfx_2
C - - - - - 0x004AE8 01:8AD8: 60        RTS



loc_0x004AE9:
C D 0 - - - 0x004AE9 01:8AD9: A5 10     LDA ram_dungeon_level
C - - - - - 0x004AEB 01:8ADB: C9 03     CMP #$03
C - - - - - 0x004AED 01:8ADD: 90 08     BCC bra_8AE7
C - - - - - 0x004AEF 01:8ADF: C9 05     CMP #$05
C - - - - - 0x004AF1 01:8AE1: F0 04     BEQ bra_8AE7
C - - - - - 0x004AF3 01:8AE3: C9 07     CMP #$07
C - - - - - 0x004AF5 01:8AE5: D0 03     BNE bra_8AEA_07
bra_8AE7:
C - - - - - 0x004AF7 01:8AE7: 4C 11 8B  JMP loc_8B11
bra_8AEA_07:
C - - - - - 0x004AFA 01:8AEA: 20 9D 8B  JSR sub_8B9D
C - - - - - 0x004AFD 01:8AED: A5 AD     LDA ram_state_enemy + $01
C - - - - - 0x004AFF 01:8AEF: 20 E2 E5  JSR sub_0x01E5F2_jump_to_pointers_after_JSR
- D 0 - I - 0x004B02 01:8AF2: F8 8A     .word ofs_029_8AF8_00
- D 0 - I - 0x004B04 01:8AF4: 15 88     .word ofs_029_8815_01
- D 0 - I - 0x004B06 01:8AF6: FF 8A     .word ofs_029_8AFF_02_RTS



ofs_029_8AF8_00:
C - - J - - 0x004B08 01:8AF8: A9 00     LDA #$00
C - - - - - 0x004B0A 01:8AFA: 8D 16 04  STA ram_0416
C - - - - - 0x004B0D 01:8AFD: E6 AD     INC ram_state_enemy + $01
ofs_029_8AFF_02_RTS:
C - - - - - 0x004B0F 01:8AFF: 60        RTS



sub_8B00:
C - - - - - 0x004B10 01:8B00: 20 D0 79  JSR sub_bat_79D0
C - - - - - 0x004B13 01:8B03: AD 06 04  LDA ram_0405_enemy + $01
C - - - - - 0x004B16 01:8B06: F0 08     BEQ bra_8B10_RTS
C - - - - - 0x004B18 01:8B08: 8D CC 04  STA ram_04CC
C - - - - - 0x004B1B 01:8B0B: A9 00     LDA #$00
C - - - - - 0x004B1D 01:8B0D: 8D 06 04  STA ram_0405_enemy + $01
bra_8B10_RTS:
C - - - - - 0x004B20 01:8B10: 60        RTS



loc_8B11:
C D 0 - - - 0x004B21 01:8B11: A5 AD     LDA ram_state_enemy + $01
C - - - - - 0x004B23 01:8B13: C9 04     CMP #$04
C - - - - - 0x004B25 01:8B15: D0 06     BNE bra_8B1D
C - - - - - 0x004B27 01:8B17: A5 15     LDA ram_frm_cnt
C - - - - - 0x004B29 01:8B19: 29 01     AND #$01
C - - - - - 0x004B2B 01:8B1B: D0 19     BNE bra_8B36
bra_8B1D:
C - - - - - 0x004B2D 01:8B1D: 20 9D 8B  JSR sub_8B9D
C - - - - - 0x004B30 01:8B20: AD 50 03  LDA ram_obj_id_enemy
C - - - - - 0x004B33 01:8B23: C9 4F     CMP #con_obj_id_4F
C - - - - - 0x004B35 01:8B25: D0 0F     BNE bra_8B36
C - - - - - 0x004B37 01:8B27: A9 78     LDA #$78
C - - - - - 0x004B39 01:8B29: 85 83     STA ram_0083
C - - - - - 0x004B3B 01:8B2B: A9 98     LDA #$98
C - - - - - 0x004B3D 01:8B2D: 85 97     STA ram_0097
C - - - - - 0x004B3F 01:8B2F: A9 18     LDA #con_drop_id_18
C - - - - - 0x004B41 01:8B31: A2 13     LDX #$13
C - - - - - 0x004B43 01:8B33: 20 0E E7  JSR sub_0x01E71E
bra_8B36:
C - - - - - 0x004B46 01:8B36: A5 AD     LDA ram_state_enemy + $01
C - - - - - 0x004B48 01:8B38: 20 E2 E5  JSR sub_0x01E5F2_jump_to_pointers_after_JSR
- D 0 - I - 0x004B4B 01:8B3B: 45 8B     .word ofs_029_8B45_00
- D 0 - I - 0x004B4D 01:8B3D: 15 88     .word ofs_029_8815_01
- D 0 - I - 0x004B4F 01:8B3F: 57 8B     .word ofs_029_8B57_02_buy_max_bombs_upgrade
- D 0 - I - 0x004B51 01:8B41: F7 89     .word ofs_029_89F7_03
- D 0 - I - 0x004B53 01:8B43: 95 8B     .word ofs_029_8B95_04



ofs_029_8B45_00:
C - - J - - 0x004B55 01:8B45: AD 50 03  LDA ram_obj_id_enemy
C - - - - - 0x004B58 01:8B48: C9 4F     CMP #con_obj_id_4F
C - - - - - 0x004B5A 01:8B4A: D0 04     BNE bra_8B50
C - - - - - 0x004B5C 01:8B4C: A9 6C     LDA #con_ppu_buf_6C
C - - - - - 0x004B5E 01:8B4E: 85 14     STA ram_ppu_load_index
bra_8B50:
C - - - - - 0x004B60 01:8B50: A9 0A     LDA #$0A
C - - - - - 0x004B62 01:8B52: 85 29     STA ram_timer_enemy + $01
C - - - - - 0x004B64 01:8B54: E6 AD     INC ram_state_enemy + $01
C - - - - - 0x004B66 01:8B56: 60        RTS



ofs_029_8B57_02_buy_max_bombs_upgrade:
C - - J - - 0x004B67 01:8B57: AD 50 03  LDA ram_obj_id_enemy
C - - - - - 0x004B6A 01:8B5A: C9 4F     CMP #con_obj_id_4F
C - - - - - 0x004B6C 01:8B5C: D0 12     BNE bra_8B70_RTS
C - - - - - 0x004B6E 01:8B5E: A5 70     LDA ram_pos_X_link
C - - - - - 0x004B70 01:8B60: C9 78     CMP #$78
C - - - - - 0x004B72 01:8B62: D0 0C     BNE bra_8B70_RTS
C - - - - - 0x004B74 01:8B64: A5 84     LDA ram_pos_Y_link
C - - - - - 0x004B76 01:8B66: 38        SEC
C - - - - - 0x004B77 01:8B67: E9 98     SBC #$98
C - - - - - 0x004B79 01:8B69: 20 1F 70  JSR sub_bat_701F_EOR_FF_if_negative
C - - - - - 0x004B7C 01:8B6C: C9 06     CMP #$06
C - - - - - 0x004B7E 01:8B6E: 90 01     BCC bra_8B71
bra_8B70_RTS:
C - - - - - 0x004B80 01:8B70: 60        RTS
bra_8B71:
C - - - - - 0x004B81 01:8B71: A9 64     LDA #$64
C - - - - - 0x004B83 01:8B73: CD 6D 06  CMP ram_item_rupees
C - - - - - 0x004B86 01:8B76: F0 02     BEQ bra_8B7A
C - - - - - 0x004B88 01:8B78: B0 F6     BCS bra_8B70_RTS
bra_8B7A:
; if enough rupees to spend
C - - - - - 0x004B8A 01:8B7A: 18        CLC
C - - - - - 0x004B8B 01:8B7B: 6D 7E 06  ADC ram_rupees_sbc
C - - - - - 0x004B8E 01:8B7E: 8D 7E 06  STA ram_rupees_sbc
C - - - - - 0x004B91 01:8B81: A9 08     LDA #con_sfx_4_pick_up_item
C - - - - - 0x004B93 01:8B83: 8D 04 06  STA ram_sfx_4
C - - - - - 0x004B96 01:8B86: AD 7C 06  LDA ram_item_max_bombs
C - - - - - 0x004B99 01:8B89: 18        CLC
C - - - - - 0x004B9A 01:8B8A: 69 04     ADC #$04
C - - - - - 0x004B9C 01:8B8C: 8D 7C 06  STA ram_item_max_bombs
C - - - - - 0x004B9F 01:8B8F: 8D 58 06  STA ram_item_bombs
C - - - - - 0x004BA2 01:8B92: 4C 8D 8C  JMP loc_8C8D



ofs_029_8B95_04:
C - - J - - 0x004BA5 01:8B95: A5 29     LDA ram_timer_enemy + $01
C - - - - - 0x004BA7 01:8B97: D0 03     BNE bra_8B9C_RTS
C - - - - - 0x004BA9 01:8B99: 8D 50 03  STA ram_obj_id_enemy
bra_8B9C_RTS:
C - - - - - 0x004BAC 01:8B9C: 60        RTS



sub_8B9D:
C - - - - - 0x004BAD 01:8B9D: 20 00 8B  JSR sub_8B00
C - - - - - 0x004BB0 01:8BA0: 20 93 FA  JSR sub_0x01FAA3
C - - - - - 0x004BB3 01:8BA3: 4C DB 77  JMP loc_bat_77DB



loc_0x004BB6:
C D 0 - - - 0x004BB6 01:8BA6: A5 AD     LDA ram_state_enemy + $01
C - - - - - 0x004BB8 01:8BA8: C9 04     CMP #$04
C - - - - - 0x004BBA 01:8BAA: D0 06     BNE bra_8BB2
C - - - - - 0x004BBC 01:8BAC: A5 15     LDA ram_frm_cnt
C - - - - - 0x004BBE 01:8BAE: 29 01     AND #$01
C - - - - - 0x004BC0 01:8BB0: D0 06     BNE bra_8BB8
bra_8BB2:
C - - - - - 0x004BC2 01:8BB2: 20 9D 8B  JSR sub_8B9D
C - - - - - 0x004BC5 01:8BB5: 20 CB 8B  JSR sub_8BCB
bra_8BB8:
C - - - - - 0x004BC8 01:8BB8: A5 AD     LDA ram_state_enemy + $01
C - - - - - 0x004BCA 01:8BBA: 20 E2 E5  JSR sub_0x01E5F2_jump_to_pointers_after_JSR
- D 0 - I - 0x004BCD 01:8BBD: E6 8B     .word ofs_029_8BE6_00
- D 0 - I - 0x004BCF 01:8BBF: 15 88     .word ofs_029_8815_01
- D 0 - I - 0x004BD1 01:8BC1: EF 8B     .word ofs_029_8BEF_02
- D 0 - I - 0x004BD3 01:8BC3: F7 89     .word ofs_029_89F7_03
- D 0 - I - 0x004BD5 01:8BC5: 95 8B     .word ofs_029_8B95_04



tbl_8BC7:
- D 0 - - - 0x004BD7 01:8BC7: 58        .byte $58   ; 00 
- D 0 - - - 0x004BD8 01:8BC8: 98        .byte $98   ; 01 



tbl_8BC9:
- D 0 - - - 0x004BD9 01:8BC9: 1A        .byte con_drop_id_1A   ; 00 
- D 0 - - - 0x004BDA 01:8BCA: 18        .byte con_drop_id_18   ; 01 



sub_8BCB:
C - - - - - 0x004BDB 01:8BCB: A2 01     LDX #$01
bra_8BCD_loop:
C - - - - - 0x004BDD 01:8BCD: 8A        TXA
C - - - - - 0x004BDE 01:8BCE: 48        PHA
C - - - - - 0x004BDF 01:8BCF: BD C7 8B  LDA tbl_8BC7,X
C - - - - - 0x004BE2 01:8BD2: 85 83     STA ram_0083
C - - - - - 0x004BE4 01:8BD4: A9 98     LDA #$98
C - - - - - 0x004BE6 01:8BD6: 85 97     STA ram_0097
C - - - - - 0x004BE8 01:8BD8: BD C9 8B  LDA tbl_8BC9,X
C - - - - - 0x004BEB 01:8BDB: A2 13     LDX #$13
C - - - - - 0x004BED 01:8BDD: 20 0E E7  JSR sub_0x01E71E
C - - - - - 0x004BF0 01:8BE0: 68        PLA
C - - - - - 0x004BF1 01:8BE1: AA        TAX
C - - - - - 0x004BF2 01:8BE2: CA        DEX
C - - - - - 0x004BF3 01:8BE3: 10 E8     BPL bra_8BCD_loop
C - - - - - 0x004BF5 01:8BE5: 60        RTS



ofs_029_8BE6_00:
C - - J - - 0x004BF6 01:8BE6: A9 0A     LDA #$0A
C - - - - - 0x004BF8 01:8BE8: 85 29     STA ram_timer_enemy + $01
C - - - - - 0x004BFA 01:8BEA: A9 76     LDA #con_ppu_buf_76
C - - - - - 0x004BFC 01:8BEC: 4C F2 87  JMP loc_87F2



ofs_029_8BEF_02:
C - - J - - 0x004BFF 01:8BEF: A2 01     LDX #$01
bra_8BF1_loop:
C - - - - - 0x004C01 01:8BF1: A5 70     LDA ram_pos_X_link
C - - - - - 0x004C03 01:8BF3: DD C7 8B  CMP tbl_8BC7,X
C - - - - - 0x004C06 01:8BF6: D0 0C     BNE bra_8C04
C - - - - - 0x004C08 01:8BF8: A5 84     LDA ram_pos_Y_link
C - - - - - 0x004C0A 01:8BFA: 38        SEC
C - - - - - 0x004C0B 01:8BFB: E9 98     SBC #$98
C - - - - - 0x004C0D 01:8BFD: 20 1F 70  JSR sub_bat_701F_EOR_FF_if_negative
C - - - - - 0x004C10 01:8C00: C9 06     CMP #$06
C - - - - - 0x004C12 01:8C02: 90 04     BCC bra_8C08
bra_8C04:
C - - - - - 0x004C14 01:8C04: CA        DEX
C - - - - - 0x004C15 01:8C05: 10 EA     BPL bra_8BF1_loop
bra_8C07_RTS:
C - - - - - 0x004C17 01:8C07: 60        RTS
bra_8C08:
C - - - - - 0x004C18 01:8C08: E0 00     CPX #$00
C - - - - - 0x004C1A 01:8C0A: F0 13     BEQ bra_8C1F
- - - - - - 0x004C1C 01:8C0C: A9 32     LDA #$32
- - - - - - 0x004C1E 01:8C0E: CD 6D 06  CMP ram_item_rupees
- - - - - - 0x004C21 01:8C11: F0 02     BEQ bra_8C15
- - - - - - 0x004C23 01:8C13: B0 F2     BCS bra_8C07_RTS
bra_8C15:
- - - - - - 0x004C25 01:8C15: 18        CLC
- - - - - - 0x004C26 01:8C16: 6D 7E 06  ADC ram_rupees_sbc
- - - - - - 0x004C29 01:8C19: 8D 7E 06  STA ram_rupees_sbc
- - - - - - 0x004C2C 01:8C1C: 4C 4D 8C  JMP loc_8C4D
bra_8C1F:
C - - - - - 0x004C2F 01:8C1F: AD 6F 06  LDA ram_item_066F
C - - - - - 0x004C32 01:8C22: 29 F0     AND #$F0
C - - - - - 0x004C34 01:8C24: C9 30     CMP #$30
C - - - - - 0x004C36 01:8C26: B0 0B     BCS bra_8C33
- - - - - - 0x004C38 01:8C28: 8D 6F 06  STA ram_item_066F
- - - - - - 0x004C3B 01:8C2B: A9 00     LDA #$00
- - - - - - 0x004C3D 01:8C2D: 8D 70 06  STA ram_item_0670
- - - - - - 0x004C40 01:8C30: 4C 4D 8C  JMP loc_8C4D
bra_8C33:
C - - - - - 0x004C43 01:8C33: AD 6F 06  LDA ram_item_066F
C - - - - - 0x004C46 01:8C36: 48        PHA
C - - - - - 0x004C47 01:8C37: 29 F0     AND #$F0
C - - - - - 0x004C49 01:8C39: 38        SEC
C - - - - - 0x004C4A 01:8C3A: E9 10     SBC #$10
C - - - - - 0x004C4C 01:8C3C: 85 00     STA ram_0000
C - - - - - 0x004C4E 01:8C3E: 68        PLA
C - - - - - 0x004C4F 01:8C3F: 29 0F     AND #$0F
C - - - - - 0x004C51 01:8C41: 38        SEC
C - - - - - 0x004C52 01:8C42: E9 01     SBC #$01
C - - - - - 0x004C54 01:8C44: 10 02     BPL bra_8C48
- - - - - - 0x004C56 01:8C46: A9 00     LDA #$00
bra_8C48:
C - - - - - 0x004C58 01:8C48: 05 00     ORA ram_0000
C - - - - - 0x004C5A 01:8C4A: 8D 6F 06  STA ram_item_066F
loc_8C4D:
C - - - - - 0x004C5D 01:8C4D: A9 08     LDA #con_sfx_4_pick_up_item
C - - - - - 0x004C5F 01:8C4F: 8D 04 06  STA ram_sfx_4
C - - - - - 0x004C62 01:8C52: A9 01     LDA #$01
C - - - - - 0x004C64 01:8C54: 8D CE 04  STA ram_04CE
C - - - - - 0x004C67 01:8C57: 4C 8D 8C  JMP loc_8C8D



loc_0x004C6A:
C D 0 - - - 0x004C6A 01:8C5A: A5 AD     LDA ram_state_enemy + $01
C - - - - - 0x004C6C 01:8C5C: C9 03     CMP #$03
C - - - - - 0x004C6E 01:8C5E: D0 06     BNE bra_8C66
C - - - - - 0x004C70 01:8C60: A5 15     LDA ram_frm_cnt
C - - - - - 0x004C72 01:8C62: 29 01     AND #$01
C - - - - - 0x004C74 01:8C64: D0 09     BNE bra_8C6F
bra_8C66:
C - - - - - 0x004C76 01:8C66: 20 00 8B  JSR sub_8B00
C - - - - - 0x004C79 01:8C69: 20 93 FA  JSR sub_0x01FAA3
C - - - - - 0x004C7C 01:8C6C: 20 DF 77  JSR sub_bat_77DF
bra_8C6F:
C - - - - - 0x004C7F 01:8C6F: A5 AD     LDA ram_state_enemy + $01
C - - - - - 0x004C81 01:8C71: 20 E2 E5  JSR sub_0x01E5F2_jump_to_pointers_after_JSR
- D 0 - I - 0x004C84 01:8C74: 15 88     .word ofs_026_8815_00
- D 0 - I - 0x004C86 01:8C76: 7C 8C     .word ofs_026_8C7C_01
- D 0 - I - 0x004C88 01:8C78: F7 89     .word ofs_026_89F7_02
- D 0 - I - 0x004C8A 01:8C7A: 99 8C     .word ofs_026_8C99_03



ofs_026_8C7C_01:
C - - J - - 0x004C8C 01:8C7C: A0 0F     LDY #$0F
C - - - - - 0x004C8E 01:8C7E: B9 AC 00  LDA ram_state_enemy,Y
C - - - - - 0x004C91 01:8C81: 0A        ASL
C - - - - - 0x004C92 01:8C82: 90 29     BCC bra_8CAD_RTS
C - - - - - 0x004C94 01:8C84: A9 40     LDA #con_obj_state_freeze
C - - - - - 0x004C96 01:8C86: 85 AC     STA ram_state_link
C - - - - - 0x004C98 01:8C88: A9 04     LDA #con_sfx_2_secret_found
C - - - - - 0x004C9A 01:8C8A: 8D 02 06  STA ram_sfx_2
loc_8C8D:
C D 0 - - - 0x004C9D 01:8C8D: 20 0C 73  JSR sub_bat_730C_set_map_bit4
C - - - - - 0x004CA0 01:8C90: A9 40     LDA #$40
C - - - - - 0x004CA2 01:8C92: 85 29     STA ram_timer_enemy + $01
C - - - - - 0x004CA4 01:8C94: A9 1E     LDA #con_ppu_buf_1E
C - - - - - 0x004CA6 01:8C96: 4C F2 87  JMP loc_87F2



ofs_026_8C99_03:
C - - J - - 0x004CA9 01:8C99: 20 23 F2  JSR sub_0x01F233
C - - - - - 0x004CAC 01:8C9C: A5 29     LDA ram_timer_enemy + $01
C - - - - - 0x004CAE 01:8C9E: D0 0D     BNE bra_8CAD_RTS
; A = 00    con_obj_state_00
C - - - - - 0x004CB0 01:8CA0: A0 0F     LDY #$0F
C - - - - - 0x004CB2 01:8CA2: 99 AC 00  STA ram_state_enemy,Y
C - - - - - 0x004CB5 01:8CA5: 8D 5D 06  STA ram_item_meat
C - - - - - 0x004CB8 01:8CA8: 85 AC     STA ram_state_link
C - - - - - 0x004CBA 01:8CAA: 8D 50 03  STA ram_obj_id_enemy
bra_8CAD_RTS:
ofs_025_8CAD_00_RTS:
C - - - - - 0x004CBD 01:8CAD: 60        RTS


; bzk garbage
- - - - - - 0x004CBE 01:8CAE: FF        .byte $FF, $FF   ; 
- - - - - - 0x004CC0 01:8CB0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x004CD0 01:8CC0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x004CE0 01:8CD0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x004CF0 01:8CE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x004D00 01:8CF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 



sub_0x004D10_copy_code_data_to_battery:
C - - - - - 0x004D10 01:8D00: A9 00     LDA #< ofs_A500_bank_s2_asm_export
C - - - - - 0x004D12 01:8D02: 85 00     STA ram_0000
C - - - - - 0x004D14 01:8D04: A9 A5     LDA #> ofs_A500_bank_s2_asm_export
C - - - - - 0x004D16 01:8D06: 85 01     STA ram_0001
C - - - - - 0x004D18 01:8D08: A9 90     LDA #< ofs_bat_6C90_bank_s2_asm_import
C - - - - - 0x004D1A 01:8D0A: 85 02     STA ram_0002
C - - - - - 0x004D1C 01:8D0C: A9 6C     LDA #> ofs_bat_6C90_bank_s2_asm_import
C - - - - - 0x004D1E 01:8D0E: 85 03     STA ram_0003
C - - - - - 0x004D20 01:8D10: A0 00     LDY #$00
bra_8D12_loop:
C - - - - - 0x004D22 01:8D12: B1 00     LDA (ram_0000),Y
C - - - - - 0x004D24 01:8D14: 91 02     STA (ram_0002),Y
C - - - - - 0x004D26 01:8D16: A5 00     LDA ram_0000
C - - - - - 0x004D28 01:8D18: 18        CLC
C - - - - - 0x004D29 01:8D19: 69 01     ADC #< $0001
C - - - - - 0x004D2B 01:8D1B: 85 00     STA ram_0000
C - - - - - 0x004D2D 01:8D1D: A5 01     LDA ram_0001
C - - - - - 0x004D2F 01:8D1F: 69 00     ADC #> $0001
C - - - - - 0x004D31 01:8D21: 85 01     STA ram_0001
C - - - - - 0x004D33 01:8D23: A5 02     LDA ram_0002
C - - - - - 0x004D35 01:8D25: 18        CLC
C - - - - - 0x004D36 01:8D26: 69 01     ADC #< $0001
C - - - - - 0x004D38 01:8D28: 85 02     STA ram_0002
C - - - - - 0x004D3A 01:8D2A: A5 03     LDA ram_0003
C - - - - - 0x004D3C 01:8D2C: 69 00     ADC #> $0001
C - - - - - 0x004D3E 01:8D2E: 85 03     STA ram_0003
C - - - - - 0x004D40 01:8D30: C9 7F     CMP #> $7F00
C - - - - - 0x004D42 01:8D32: D0 DE     BNE bra_8D12_loop
C - - - - - 0x004D44 01:8D34: A5 02     LDA ram_0002
; bzk optimize, delete CMP 00
C - - - - - 0x004D46 01:8D36: C9 00     CMP #< $7F00
C - - - - - 0x004D48 01:8D38: D0 D8     BNE bra_8D12_loop
C - - - - - 0x004D4A 01:8D3A: 60        RTS



tbl_8D3B_tiles:
- D 0 - - - 0x004D4B 01:8D3B: B4 8D     .word tbl_8DB4___0700_0FFF
- D 0 - - - 0x004D4D 01:8D3D: B4 96     .word tbl_96B4___1700_1F1F



tbl_8D3F_counter:
- D 0 - - - 0x004D4F 01:8D3F: 09 00     .dbyt $0900     ; 900 bytes
- D 0 - - - 0x004D51 01:8D41: 08 20     .dbyt $0820     ; 820 bytes



tbl_8D43_ppu:
- D 0 - - - 0x004D53 01:8D43: 07 00     .dbyt $0700     ; 0700-0FFF
- D 0 - - - 0x004D55 01:8D45: 17 00     .dbyt $1700     ; 1700-1F1F



loc_0x004D57_fill_ppu_with_tiles_2:
C D 0 - - - 0x004D57 01:8D47: 20 25 E6  JSR sub_0x01E635_disable_rendering
C - - - - - 0x004D5A 01:8D4A: AD 02 20  LDA $2002
bra_8D4D_loop:
C - - - - - 0x004D5D 01:8D4D: AD 1D 05  LDA ram_051D
C - - - - - 0x004D60 01:8D50: 0A        ASL
C - - - - - 0x004D61 01:8D51: AA        TAX
C - - - - - 0x004D62 01:8D52: BD 3B 8D  LDA tbl_8D3B_tiles,X
C - - - - - 0x004D65 01:8D55: 85 00     STA ram_0000
C - - - - - 0x004D67 01:8D57: BD 3F 8D  LDA tbl_8D3F_counter,X
C - - - - - 0x004D6A 01:8D5A: 85 02     STA ram_0002
C - - - - - 0x004D6C 01:8D5C: BD 43 8D  LDA tbl_8D43_ppu,X
C - - - - - 0x004D6F 01:8D5F: 8D 06 20  STA $2006
C - - - - - 0x004D72 01:8D62: E8        INX
C - - - - - 0x004D73 01:8D63: BD 3B 8D  LDA tbl_8D3B_tiles,X
C - - - - - 0x004D76 01:8D66: 85 01     STA ram_0001
C - - - - - 0x004D78 01:8D68: BD 3F 8D  LDA tbl_8D3F_counter,X
C - - - - - 0x004D7B 01:8D6B: 85 03     STA ram_0003
C - - - - - 0x004D7D 01:8D6D: BD 43 8D  LDA tbl_8D43_ppu,X
C - - - - - 0x004D80 01:8D70: 20 84 8D  JSR sub_8D84_write_to_ppu
C - - - - - 0x004D83 01:8D73: AD 1D 05  LDA ram_051D
C - - - - - 0x004D86 01:8D76: C9 02     CMP #$02
C - - - - - 0x004D88 01:8D78: D0 D3     BNE bra_8D4D_loop
C - - - - - 0x004D8A 01:8D7A: A9 A5     LDA #$A5
C - - - - - 0x004D8C 01:8D7C: 85 F6     STA ram_00F6
C - - - - - 0x004D8E 01:8D7E: A9 00     LDA #$00
C - - - - - 0x004D90 01:8D80: 8D 1D 05  STA ram_051D
C - - - - - 0x004D93 01:8D83: 60        RTS



sub_8D84_write_to_ppu:
C - - - - - 0x004D94 01:8D84: 8D 06 20  STA $2006
C - - - - - 0x004D97 01:8D87: A0 00     LDY #$00
bra_8D89_loop:
C - - - - - 0x004D99 01:8D89: B1 00     LDA (ram_0000),Y
C - - - - - 0x004D9B 01:8D8B: 8D 07 20  STA $2007
C - - - - - 0x004D9E 01:8D8E: A5 00     LDA ram_0000
C - - - - - 0x004DA0 01:8D90: 18        CLC
C - - - - - 0x004DA1 01:8D91: 69 01     ADC #< $0001
C - - - - - 0x004DA3 01:8D93: 85 00     STA ram_0000
C - - - - - 0x004DA5 01:8D95: A5 01     LDA ram_0001
C - - - - - 0x004DA7 01:8D97: 69 00     ADC #> $0001
C - - - - - 0x004DA9 01:8D99: 85 01     STA ram_0001
C - - - - - 0x004DAB 01:8D9B: A5 03     LDA ram_0003
C - - - - - 0x004DAD 01:8D9D: 38        SEC
C - - - - - 0x004DAE 01:8D9E: E9 01     SBC #< $0001
C - - - - - 0x004DB0 01:8DA0: 85 03     STA ram_0003
C - - - - - 0x004DB2 01:8DA2: A5 02     LDA ram_0002
C - - - - - 0x004DB4 01:8DA4: E9 00     SBC #> $0001
C - - - - - 0x004DB6 01:8DA6: 85 02     STA ram_0002
C - - - - - 0x004DB8 01:8DA8: A5 02     LDA ram_0002
C - - - - - 0x004DBA 01:8DAA: D0 DD     BNE bra_8D89_loop
C - - - - - 0x004DBC 01:8DAC: A5 03     LDA ram_0003
C - - - - - 0x004DBE 01:8DAE: D0 D9     BNE bra_8D89_loop
C - - - - - 0x004DC0 01:8DB0: EE 1D 05  INC ram_051D
C - - - - - 0x004DC3 01:8DB3: 60        RTS



tbl_8DB4___0700_0FFF:
; 0x004DC4
    .incbin "tiles/01___8DB4_96B3.chr"



tbl_96B4___1700_1F1F:
; 0x0056C4
    .incbin "tiles/01___96B4_9ED3.chr"


; bzk garbage
- - - - - - 0x005EE4 01:9ED4: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x005EF0 01:9EE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x005F00 01:9EF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x005F10 01:9F00: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x005F20 01:9F10: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x005F30 01:9F20: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x005F40 01:9F30: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x005F50 01:9F40: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x005F60 01:9F50: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x005F70 01:9F60: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x005F80 01:9F70: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x005F90 01:9F80: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x005FA0 01:9F90: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x005FB0 01:9FA0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x005FC0 01:9FB0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x005FD0 01:9FC0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x005FE0 01:9FD0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x005FF0 01:9FE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x006000 01:9FF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 



sub_A000:
C - - - - - 0x006010 01:A000: 85 84     STA ram_pos_Y_link
loc_A002:
C D 1 - - - 0x006012 01:A002: A5 84     LDA ram_pos_Y_link
C - - - - - 0x006014 01:A004: 95 84     STA ram_pos_Y_enemy,X
C - - - - - 0x006016 01:A006: A9 00     LDA #$00
C - - - - - 0x006018 01:A008: 95 70     STA ram_pos_X_enemy,X
C - - - - - 0x00601A 01:A00A: A9 2E     LDA #con_obj_id_2E
C - - - - - 0x00601C 01:A00C: 9D 4F 03  STA ram_obj_id_enemy - $01,X
C - - - - - 0x00601F 01:A00F: 60        RTS



tbl_A010:
- - - - - - 0x006020 01:A010: 36        .byte $36   ; 00 
- - - - - - 0x006021 01:A011: 3B        .byte $3B   ; 01 
- D 1 - - - 0x006022 01:A012: 73        .byte $73   ; 02 
- - - - - - 0x006023 01:A013: 44        .byte $44   ; 03 
- - - - - - 0x006024 01:A014: 0A        .byte $0A   ; 04 
- - - - - - 0x006025 01:A015: 21        .byte $21   ; 05 
- D 1 - - - 0x006026 01:A016: 41        .byte $41   ; 06 
- - - - - - 0x006027 01:A017: 6C        .byte $6C   ; 07 



loc_0x006028:
C D 1 - - - 0x006028 01:A018: A5 AC     LDA ram_state_link
C - - - - - 0x00602A 01:A01A: 29 40     AND #con_obj_state_freeze
C - - - - - 0x00602C 01:A01C: A8        TAY
C - - - - - 0x00602D 01:A01D: A9 02     LDA #$02
C - - - - - 0x00602F 01:A01F: 18        CLC
C - - - - - 0x006030 01:A020: 75 70     ADC ram_pos_X_enemy,X
C - - - - - 0x006032 01:A022: 95 70     STA ram_pos_X_enemy,X
C - - - - - 0x006034 01:A024: C0 40     CPY #con_obj_state_freeze
C - - - - - 0x006036 01:A026: D0 21     BNE bra_A049
C - - - - - 0x006038 01:A028: AC 22 05  LDY ram_0522_flag
C - - - - - 0x00603B 01:A02B: F0 1C     BEQ bra_A049
C - - - - - 0x00603D 01:A02D: 85 70     STA ram_pos_X_link
C - - - - - 0x00603F 01:A02F: 88        DEY
C - - - - - 0x006040 01:A030: F0 43     BEQ bra_A075
C - - - - - 0x006042 01:A032: C9 80     CMP #$80
C - - - - - 0x006044 01:A034: D0 3F     BNE bra_A075
C - - - - - 0x006046 01:A036: 0A        ASL ; 00    con_obj_state_00
C - - - - - 0x006047 01:A037: 85 AC     STA ram_state_link
C - - - - - 0x006049 01:A039: 8D 22 05  STA ram_0522_flag
C - - - - - 0x00604C 01:A03C: 9D 4F 03  STA ram_obj_id_enemy - $01,X
C - - - - - 0x00604F 01:A03F: 8A        TXA
C - - - - - 0x006050 01:A040: 48        PHA
C - - - - - 0x006051 01:A041: 20 DE 71  JSR sub_bat_71DE_draw_dot_on_minimap
C - - - - - 0x006054 01:A044: 68        PLA
C - - - - - 0x006055 01:A045: AA        TAX
C - - - - - 0x006056 01:A046: 4C 8A A0  JMP loc_A08A
bra_A049:
C - - - - - 0x006059 01:A049: 20 A7 7A  JSR sub_bat_7AA7
C - - - - - 0x00605C 01:A04C: A5 06     LDA ram_0006
C - - - - - 0x00605E 01:A04E: F0 25     BEQ bra_A075
C - - - - - 0x006060 01:A050: A9 01     LDA #$01    ; con_dir_Right
C - - - - - 0x006062 01:A052: 85 98     STA ram_dir_link
C - - - - - 0x006064 01:A054: 4A        LSR ; A = 00
C - - - - - 0x006065 01:A055: 85 C0     STA ram_00C0
C - - - - - 0x006067 01:A057: 85 D3     STA ram_00D3_link
C - - - - - 0x006069 01:A059: 85 5A     STA ram_005A
C - - - - - 0x00606B 01:A05B: A9 40     LDA #con_obj_state_freeze
C - - - - - 0x00606D 01:A05D: 85 AC     STA ram_state_link
C - - - - - 0x00606F 01:A05F: A9 F8     LDA #$F8
C - - - - - 0x006071 01:A061: 8D 48 02  STA ram_spr_Y + $48
C - - - - - 0x006074 01:A064: 8D 4C 02  STA ram_spr_Y + $4C
C - - - - - 0x006077 01:A067: AD 23 05  LDA ram_0523
C - - - - - 0x00607A 01:A06A: 29 07     AND #$07
C - - - - - 0x00607C 01:A06C: A8        TAY
C - - - - - 0x00607D 01:A06D: B9 10 A0  LDA tbl_A010,Y
C - - - - - 0x006080 01:A070: 85 EA     STA ram_flute_map_location
C - - - - - 0x006082 01:A072: EE 22 05  INC ram_0522_flag
bra_A075:
C - - - - - 0x006085 01:A075: B5 70     LDA ram_pos_X_enemy,X
C - - - - - 0x006087 01:A077: C9 F0     CMP #$F0
C - - - - - 0x006089 01:A079: 90 0F     BCC bra_A08A
C - - - - - 0x00608B 01:A07B: 20 8D A0  JSR sub_A08D_destroy_object
C - - - - - 0x00608E 01:A07E: AD 22 05  LDA ram_0522_flag
C - - - - - 0x006091 01:A081: F0 07     BEQ bra_A08A
C - - - - - 0x006093 01:A083: 8A        TXA
C - - - - - 0x006094 01:A084: 48        PHA
C - - - - - 0x006095 01:A085: 20 82 F1  JSR sub_0x01F192
C - - - - - 0x006098 01:A088: 68        PLA
C - - - - - 0x006099 01:A089: AA        TAX
bra_A08A:
loc_A08A:   ; bzk optimize, JMP into JMP
C D 1 - - - 0x00609A 01:A08A: 4C 05 A1  JMP loc_A105



sub_A08D_destroy_object:
; X = 0B
C - - - - - 0x00609D 01:A08D: A9 00     LDA #$00    ; con_obj_id_null   con_obj_state_00
C - - - - - 0x00609F 01:A08F: 9D 4F 03  STA ram_obj_id_enemy - $01,X
C - - - - - 0x0060A2 01:A092: 95 C0     STA ram_00C0,X
C - - - - - 0x0060A4 01:A094: 95 D3     STA ram_00D3_enemy,X
C - - - - - 0x0060A6 01:A096: 95 28     STA ram_timer_enemy,X
C - - - - - 0x0060A8 01:A098: 95 AC     STA ram_state_enemy,X
C - - - - - 0x0060AA 01:A09A: 9D F0 04  STA ram_invinc_enemy,X
C - - - - - 0x0060AD 01:A09D: A9 FF     LDA #$FF
C - - - - - 0x0060AF 01:A09F: 9D 92 04  STA ram_0492_enemy,X
C - - - - - 0x0060B2 01:A0A2: A9 01     LDA #$01
C - - - - - 0x0060B4 01:A0A4: 9D 05 04  STA ram_0405_enemy,X
C - - - - - 0x0060B7 01:A0A7: 60        RTS



sub_0x0060B8:
C - - - - - 0x0060B8 01:A0A8: A5 12     LDA ram_script
C - - - - - 0x0060BA 01:A0AA: C9 05     CMP #con_script_05
C - - - - - 0x0060BC 01:A0AC: D0 56     BNE bra_A104_RTS
C - - - - - 0x0060BE 01:A0AE: 20 F5 A0  JSR sub_A0F5
C - - - - - 0x0060C1 01:A0B1: AD 23 05  LDA ram_0523
C - - - - - 0x0060C4 01:A0B4: 29 07     AND #$07
C - - - - - 0x0060C6 01:A0B6: A8        TAY
C - - - - - 0x0060C7 01:A0B7: B9 BE E6  LDA tbl_0x01E6CE_8_bits,Y
C - - - - - 0x0060CA 01:A0BA: 85 00     STA ram_0000
bra_A0BC_loop:
loc_A0BC_loop:
C - - - - - 0x0060CC 01:A0BC: AD 71 06  LDA ram_item_triforce_pieces
C - - - - - 0x0060CF 01:A0BF: F0 43     BEQ bra_A104_RTS
C - - - - - 0x0060D1 01:A0C1: 24 00     BIT ram_0000
C - - - - - 0x0060D3 01:A0C3: D0 1B     BNE bra_A0E0
- - - - - - 0x0060D5 01:A0C5: 20 F5 A0  JSR sub_A0F5
- - - - - - 0x0060D8 01:A0C8: A5 98     LDA ram_dir_link
- - - - - - 0x0060DA 01:A0CA: 29 09     AND #con_dir__UR
- - - - - - 0x0060DC 01:A0CC: F0 09     BEQ bra_A0D7
- - - - - - 0x0060DE 01:A0CE: 06 00     ASL ram_0000
- - - - - - 0x0060E0 01:A0D0: 90 EA     BCC bra_A0BC_loop
- - - - - - 0x0060E2 01:A0D2: 26 00     ROL ram_0000
- - - - - - 0x0060E4 01:A0D4: 4C BC A0  JMP loc_A0BC_loop
bra_A0D7:
- - - - - - 0x0060E7 01:A0D7: 46 00     LSR ram_0000
- - - - - - 0x0060E9 01:A0D9: 90 E1     BCC bra_A0BC_loop
- - - - - - 0x0060EB 01:A0DB: 66 00     ROR ram_0000
- - - - - - 0x0060ED 01:A0DD: 4C BC A0  JMP loc_A0BC_loop
bra_A0E0:
C - - - - - 0x0060F0 01:A0E0: AD 08 05  LDA ram_0508
C - - - - - 0x0060F3 01:A0E3: 0D 22 05  ORA ram_0522_flag
C - - - - - 0x0060F6 01:A0E6: D0 1C     BNE bra_A104_RTS
C - - - - - 0x0060F8 01:A0E8: 20 BB FE  JSR sub_0x01FECB_search_for_free_object
C - - - - - 0x0060FB 01:A0EB: F0 17     BEQ bra_A104_RTS    ; if no free objects
C - - - - - 0x0060FD 01:A0ED: EE 08 05  INC ram_0508
C - - - - - 0x006100 01:A0F0: 98        TYA
C - - - - - 0x006101 01:A0F1: AA        TAX
C - - - - - 0x006102 01:A0F2: 4C 02 A0  JMP loc_A002



sub_A0F5:
C - - - - - 0x006105 01:A0F5: EE 23 05  INC ram_0523
C - - - - - 0x006108 01:A0F8: A5 98     LDA ram_dir_link
C - - - - - 0x00610A 01:A0FA: 29 09     AND #con_dir__UR
C - - - - - 0x00610C 01:A0FC: D0 06     BNE bra_A104_RTS
C - - - - - 0x00610E 01:A0FE: CE 23 05  DEC ram_0523
C - - - - - 0x006111 01:A101: CE 23 05  DEC ram_0523
bra_A104_RTS:
C - - - - - 0x006114 01:A104: 60        RTS



loc_A105:
C D 1 - - - 0x006115 01:A105: A9 01     LDA #$01
C - - - - - 0x006117 01:A107: 20 89 FA  JSR sub_0x01FA99
C - - - - - 0x00611A 01:A10A: A5 15     LDA ram_frm_cnt
C - - - - - 0x00611C 01:A10C: 29 03     AND #$03
C - - - - - 0x00611E 01:A10E: 20 88 79  JSR sub_bat_7988
C - - - - - 0x006121 01:A111: 20 72 FA  JSR sub_0x01FA82
C - - - - - 0x006124 01:A114: A9 00     LDA #$00
C - - - - - 0x006126 01:A116: 4C DF 77  JMP loc_bat_77DF



tbl_A119:
- - - - - - 0x006129 01:A119: 8D        .byte $8D   ; 00 
- - - - - - 0x00612A 01:A11A: AD        .byte $AD   ; 01 
- D 1 - - - 0x00612B 01:A11B: 8D        .byte $8D   ; 02 
- - - - - - 0x00612C 01:A11C: 8D        .byte $8D   ; 03 
- - - - - - 0x00612D 01:A11D: AD        .byte $AD   ; 04 
- - - - - - 0x00612E 01:A11E: 8D        .byte $8D   ; 05 
- D 1 - - - 0x00612F 01:A11F: AD        .byte $AD   ; 06 
- - - - - - 0x006130 01:A120: 5D        .byte $5D   ; 07 



loc_0x006131:
C D 1 - - - 0x006131 01:A121: AD 22 05  LDA ram_0522_flag
C - - - - - 0x006134 01:A124: F0 15     BEQ bra_A13B
C - - - - - 0x006136 01:A126: EE 22 05  INC ram_0522_flag
C - - - - - 0x006139 01:A129: A9 40     LDA #con_obj_state_freeze
C - - - - - 0x00613B 01:A12B: 85 AC     STA ram_state_link
C - - - - - 0x00613D 01:A12D: A2 09     LDX #$09
C - - - - - 0x00613F 01:A12F: AD 23 05  LDA ram_0523
C - - - - - 0x006142 01:A132: 29 07     AND #$07
C - - - - - 0x006144 01:A134: A8        TAY
C - - - - - 0x006145 01:A135: B9 19 A1  LDA tbl_A119,Y
C - - - - - 0x006148 01:A138: 20 00 A0  JSR sub_A000
bra_A13B:
C - - - - - 0x00614B 01:A13B: 4C 90 6C  JMP loc_bat_6C90



sub_0x00614E:
C - - - - - 0x00614E 01:A13E: A2 0C     LDX #$0C
bra_A140_loop:
C - - - - - 0x006150 01:A140: BD 4F 03  LDA ram_obj_id_enemy - $01,X
C - - - - - 0x006153 01:A143: C9 68     CMP #con_obj_id_68
C - - - - - 0x006155 01:A145: F0 0C     BEQ bra_A153
C - - - - - 0x006157 01:A147: C9 62     CMP #con_obj_id_62
C - - - - - 0x006159 01:A149: F0 08     BEQ bra_A153
C - - - - - 0x00615B 01:A14B: C9 65     CMP #con_obj_id_65
C - - - - - 0x00615D 01:A14D: F0 04     BEQ bra_A153
C - - - - - 0x00615F 01:A14F: C9 66     CMP #con_obj_id_66
C - - - - - 0x006161 01:A151: D0 25     BNE bra_A178
bra_A153:
C - - - - - 0x006163 01:A153: B5 AC     LDA ram_state_enemy,X
C - - - - - 0x006165 01:A155: C9 01     CMP #$01
C - - - - - 0x006167 01:A157: D0 1F     BNE bra_A178
C - - - - - 0x006169 01:A159: A5 70     LDA ram_pos_X_link
C - - - - - 0x00616B 01:A15B: 38        SEC
C - - - - - 0x00616C 01:A15C: F5 70     SBC ram_pos_X_enemy,X
C - - - - - 0x00616E 01:A15E: 20 1F 70  JSR sub_bat_701F_EOR_FF_if_negative
C - - - - - 0x006171 01:A161: C9 10     CMP #$10
C - - - - - 0x006173 01:A163: B0 13     BCS bra_A178
C - - - - - 0x006175 01:A165: A5 84     LDA ram_pos_Y_link
C - - - - - 0x006177 01:A167: 18        CLC
C - - - - - 0x006178 01:A168: 69 03     ADC #$03
C - - - - - 0x00617A 01:A16A: 38        SEC
C - - - - - 0x00617B 01:A16B: F5 84     SBC ram_pos_Y_enemy,X
C - - - - - 0x00617D 01:A16D: 20 1F 70  JSR sub_bat_701F_EOR_FF_if_negative
C - - - - - 0x006180 01:A170: C9 10     CMP #$10
C - - - - - 0x006182 01:A172: B0 04     BCS bra_A178
C - - - - - 0x006184 01:A174: A9 00     LDA #$00
C - - - - - 0x006186 01:A176: 85 0F     STA ram_000F
bra_A178:
C - - - - - 0x006188 01:A178: CA        DEX
C - - - - - 0x006189 01:A179: D0 C5     BNE bra_A140_loop
C - - - - - 0x00618B 01:A17B: 60        RTS



sub_0x00618C:
C - - - - - 0x00618C 01:A17C: AD 09 05  LDA ram_0509
C - - - - - 0x00618F 01:A17F: F0 2F     BEQ bra_A1B0_RTS
C - - - - - 0x006191 01:A181: A5 28     LDA ram_timer_link
C - - - - - 0x006193 01:A183: F0 18     BEQ bra_A19D
C - - - - - 0x006195 01:A185: A0 18     LDY #con_ppu_buf_overworld_palette
C - - - - - 0x006197 01:A187: A5 28     LDA ram_timer_link
C - - - - - 0x006199 01:A189: F0 0B     BEQ bra_A196
C - - - - - 0x00619B 01:A18B: 29 07     AND #$07
C - - - - - 0x00619D 01:A18D: C9 04     CMP #$04
C - - - - - 0x00619F 01:A18F: 90 02     BCC bra_A193
C - - - - - 0x0061A1 01:A191: A0 78     LDY #con_ppu_buf_78
bra_A193:
C - - - - - 0x0061A3 01:A193: 84 14     STY ram_ppu_load_index
C - - - - - 0x0061A5 01:A195: 60        RTS
bra_A196:
- - - - - - 0x0061A6 01:A196: A9 02     LDA #$02
- - - - - - 0x0061A8 01:A198: 85 63     STA ram_0063
- - - - - - 0x0061AA 01:A19A: E6 13     INC ram_subscript
- - - - - - 0x0061AC 01:A19C: 60        RTS
bra_A19D:
C - - - - - 0x0061AD 01:A19D: 20 D6 A1  JSR sub_A1D6
C - - - - - 0x0061B0 01:A1A0: A9 20     LDA #con_music_final_dungeon
C - - - - - 0x0061B2 01:A1A2: 8D 00 06  STA ram_music
C - - - - - 0x0061B5 01:A1A5: A9 01     LDA #$01
C - - - - - 0x0061B7 01:A1A7: 8D 72 06  STA ram_item_0672
C - - - - - 0x0061BA 01:A1AA: 4A        LSR ; 00    con_obj_state_00
C - - - - - 0x0061BB 01:A1AB: 85 AC     STA ram_state_link
C - - - - - 0x0061BD 01:A1AD: 8D 09 05  STA ram_0509
bra_A1B0_RTS:
C - - - - - 0x0061C0 01:A1B0: 60        RTS



loc_0x0061C1:
C D 1 - - - 0x0061C1 01:A1B1: EE 09 05  INC ram_0509
C - - - - - 0x0061C4 01:A1B4: A9 C0     LDA #$C0
C - - - - - 0x0061C6 01:A1B6: 85 28     STA ram_timer_link
C - - - - - 0x0061C8 01:A1B8: A9 40     LDA #con_obj_state_freeze
C - - - - - 0x0061CA 01:A1BA: 85 AC     STA ram_state_link
C - - - - - 0x0061CC 01:A1BC: 60        RTS



tbl_A1BD:
- D 1 - - - 0x0061CD 01:A1BD: 3F        .byte $3F   ; 00 
- D 1 - - - 0x0061CE 01:A1BE: 1C        .byte $1C   ; 01 
- D 1 - - - 0x0061CF 01:A1BF: 04        .byte $04   ; 02 
- D 1 - - - 0x0061D0 01:A1C0: 0F        .byte $0F   ; 03 
- D 1 - - - 0x0061D1 01:A1C1: 07        .byte $07   ; 04 
- D 1 - - - 0x0061D2 01:A1C2: 17        .byte $17   ; 05 
- D 1 - - - 0x0061D3 01:A1C3: 27        .byte $27   ; 06 
- D 1 - - - 0x0061D4 01:A1C4: FF        .byte $FF   ; 07 



tbl_A1C5:
- - - - - - 0x0061D5 01:A1C5: 07        .byte $07   ; 00 
- - - - - - 0x0061D6 01:A1C6: 17        .byte $17   ; 01 
- - - - - - 0x0061D7 01:A1C7: 30        .byte $30   ; 02 
- - - - - - 0x0061D8 01:A1C8: 16        .byte $16   ; 03 
- - - - - - 0x0061D9 01:A1C9: 2C        .byte $2C   ; 04 
- - - - - - 0x0061DA 01:A1CA: 3C        .byte $3C   ; 05 
- D 1 - - - 0x0061DB 01:A1CB: 27        .byte $27   ; 06 
- D 1 - - - 0x0061DC 01:A1CC: 06        .byte $06   ; 07 
- D 1 - - - 0x0061DD 01:A1CD: 16        .byte $16   ; 08 


; bzk garbage
- - - - - - 0x0061DE 01:A1CE: A0 02     LDY #$02
- - - - - - 0x0061E0 01:A1D0: D0 06     BNE bra_A1D8    ; jmp


; bzk garbage
- - - - - - 0x0061E2 01:A1D2: A0 05     LDY #$05
- - - - - - 0x0061E4 01:A1D4: D0 02     BNE bra_A1D8    ; jmp



sub_A1D6:
C - - - - - 0x0061E6 01:A1D6: A0 08     LDY #$08
bra_A1D8:
C - - - - - 0x0061E8 01:A1D8: 98        TYA
C - - - - - 0x0061E9 01:A1D9: 48        PHA
C - - - - - 0x0061EA 01:A1DA: AE 01 03  LDX ram_0301_buffer_index
C - - - - - 0x0061ED 01:A1DD: A0 00     LDY #$00
bra_A1DF_loop:
C - - - - - 0x0061EF 01:A1DF: B9 BD A1  LDA tbl_A1BD,Y
C - - - - - 0x0061F2 01:A1E2: 9D 02 03  STA ram_0302_ppu_buffer,X
C - - - - - 0x0061F5 01:A1E5: E8        INX
C - - - - - 0x0061F6 01:A1E6: C8        INY
C - - - - - 0x0061F7 01:A1E7: C0 08     CPY #$08
C - - - - - 0x0061F9 01:A1E9: D0 F4     BNE bra_A1DF_loop
C - - - - - 0x0061FB 01:A1EB: 8E 01 03  STX ram_0301_buffer_index
C - - - - - 0x0061FE 01:A1EE: 68        PLA
C - - - - - 0x0061FF 01:A1EF: A8        TAY
C - - - - - 0x006200 01:A1F0: A2 02     LDX #$02
bra_A1F2_loop:
C - - - - - 0x006202 01:A1F2: B9 C5 A1  LDA tbl_A1C5,Y
C - - - - - 0x006205 01:A1F5: 9D 06 03  STA ram_0302_ppu_buffer + $04,X
C - - - - - 0x006208 01:A1F8: 88        DEY
C - - - - - 0x006209 01:A1F9: CA        DEX
C - - - - - 0x00620A 01:A1FA: 10 F6     BPL bra_A1F2_loop
C - - - - - 0x00620C 01:A1FC: AE 40 03  LDX ram_obj_index
C - - - - - 0x00620F 01:A1FF: 60        RTS


; bzk garbage
- - - - - - 0x006210 01:A200: 20 93 FA  JSR sub_0x01FAA3
- - - - - - 0x006213 01:A203: A9 0B     LDA #$0B
- - - - - - 0x006215 01:A205: 4C DF 77  JMP loc_bat_77DF


; bzk garbage
- - - - - - 0x006218 01:A208: A5 BF     LDA ram_room_item_flag
- - - - - - 0x00621A 01:A20A: F0 0E     BEQ bra_A21A_RTS
- - - - - - 0x00621C 01:A20C: 20 14 73  JSR sub_bat_7314_check_map_bit4
- - - - - - 0x00621F 01:A20F: D0 09     BNE bra_A21A_RTS
- - - - - - 0x006221 01:A211: A9 00     LDA #$00
- - - - - - 0x006223 01:A213: 85 BF     STA ram_room_item_flag
- - - - - - 0x006225 01:A215: A9 02     LDA #con_sfx_2_02
- - - - - - 0x006227 01:A217: 8D 02 06  STA ram_sfx_2
bra_A21A_RTS:
- - - - - - 0x00622A 01:A21A: 60        RTS



tbl_A21B:
- D 1 - - - 0x00622B 01:A21B: 00        .byte $00   ; 00 
- D 1 - - - 0x00622C 01:A21C: 00        .byte $00   ; 01 
- D 1 - - - 0x00622D 01:A21D: F0        .byte $F0   ; 02 
- D 1 - - - 0x00622E 01:A21E: 10        .byte $10   ; 03 



tbl_A21F:
- D 1 - - - 0x00622F 01:A21F: FB        .byte $FB   ; 00 
- D 1 - - - 0x006230 01:A220: 13        .byte $13   ; 01 
- D 1 - - - 0x006231 01:A221: 03        .byte $03   ; 02 
- D 1 - - - 0x006232 01:A222: 03        .byte $03   ; 03 



sub_0x006233:
C - - - - - 0x006233 01:A223: AD 94 03  LDA ram_0394_link
C - - - - - 0x006236 01:A226: D0 13     BNE bra_A23B
C - - - - - 0x006238 01:A228: AD F8 03  LDA ram_03F8_link
C - - - - - 0x00623B 01:A22B: F0 0E     BEQ bra_A23B
C - - - - - 0x00623D 01:A22D: A9 BB     LDA #$BB
C - - - - - 0x00623F 01:A22F: 85 02     STA ram_0002
C - - - - - 0x006241 01:A231: A2 08     LDX #$08
C - - - - - 0x006243 01:A233: AD 9E 04  LDA ram_collision_tile_link
bra_A236_loop:
C - - - - - 0x006246 01:A236: E6 02     INC ram_0002
C - - - - - 0x006248 01:A238: CA        DEX
C - - - - - 0x006249 01:A239: 10 03     BPL bra_A23E
bra_A23B:
C - - - - - 0x00624B 01:A23B: A2 00     LDX #$00
C - - - - - 0x00624D 01:A23D: 60        RTS
bra_A23E:
C - - - - - 0x00624E 01:A23E: C5 02     CMP ram_0002
C - - - - - 0x006250 01:A240: D0 F4     BNE bra_A236_loop
C - - - - - 0x006252 01:A242: A5 70     LDA ram_pos_X_link
C - - - - - 0x006254 01:A244: 85 00     STA ram_0000
C - - - - - 0x006256 01:A246: A5 84     LDA ram_pos_Y_link
C - - - - - 0x006258 01:A248: 85 01     STA ram_0001
C - - - - - 0x00625A 01:A24A: A5 98     LDA ram_dir_link
C - - - - - 0x00625C 01:A24C: 29 0C     AND #con_dir__UD
C - - - - - 0x00625E 01:A24E: F0 15     BEQ bra_A265
C - - - - - 0x006260 01:A250: A5 02     LDA ram_0002
C - - - - - 0x006262 01:A252: 29 03     AND #$03
C - - - - - 0x006264 01:A254: A8        TAY
C - - - - - 0x006265 01:A255: A5 00     LDA ram_0000
C - - - - - 0x006267 01:A257: C0 02     CPY #$02
C - - - - - 0x006269 01:A259: B0 03     BCS bra_A25E
C - - - - - 0x00626B 01:A25B: 18        CLC
C - - - - - 0x00626C 01:A25C: 69 08     ADC #$08
bra_A25E:
C - - - - - 0x00626E 01:A25E: 29 F0     AND #$F0
C - - - - - 0x006270 01:A260: 85 00     STA ram_0000
C - - - - - 0x006272 01:A262: 4C 71 A2  JMP loc_A271
bra_A265:
C - - - - - 0x006275 01:A265: A5 02     LDA ram_0002
C - - - - - 0x006277 01:A267: 4A        LSR
C - - - - - 0x006278 01:A268: B0 07     BCS bra_A271
C - - - - - 0x00627A 01:A26A: A5 01     LDA ram_0001
C - - - - - 0x00627C 01:A26C: 18        CLC
C - - - - - 0x00627D 01:A26D: 69 08     ADC #$08
C - - - - - 0x00627F 01:A26F: 85 01     STA ram_0001
bra_A271:
loc_A271:
C D 1 - - - 0x006281 01:A271: 20 BB FE  JSR sub_0x01FECB_search_for_free_object
C - - - - - 0x006284 01:A274: F0 55     BEQ bra_A2CB    ; if no free objects
C - - - - - 0x006286 01:A276: A6 59     LDX ram_free_obj_index
C - - - - - 0x006288 01:A278: A5 98     LDA ram_dir_link
C - - - - - 0x00628A 01:A27A: 20 13 70  JSR sub_bat_7013
C - - - - - 0x00628D 01:A27D: A5 00     LDA ram_0000
C - - - - - 0x00628F 01:A27F: 18        CLC
C - - - - - 0x006290 01:A280: 79 1B A2  ADC tbl_A21B,Y
C - - - - - 0x006293 01:A283: 95 70     STA ram_pos_X_enemy,X
C - - - - - 0x006295 01:A285: A5 01     LDA ram_0001
C - - - - - 0x006297 01:A287: 18        CLC
C - - - - - 0x006298 01:A288: 79 1F A2  ADC tbl_A21F,Y
C - - - - - 0x00629B 01:A28B: 95 84     STA ram_pos_Y_enemy,X
C - - - - - 0x00629D 01:A28D: BD 92 04  LDA ram_0492_enemy,X
C - - - - - 0x0062A0 01:A290: F0 39     BEQ bra_A2CB
C - - - - - 0x0062A2 01:A292: A0 0B     LDY #$0B
C - - - - - 0x0062A4 01:A294: 86 03     STX ram_0003
bra_A296_loop:
C - - - - - 0x0062A6 01:A296: C4 03     CPY ram_0003
C - - - - - 0x0062A8 01:A298: F0 1A     BEQ bra_A2B4
C - - - - - 0x0062AA 01:A29A: B9 70 00  LDA ram_pos_X_enemy,Y
C - - - - - 0x0062AD 01:A29D: D5 70     CMP ram_pos_X_enemy,X
C - - - - - 0x0062AF 01:A29F: D0 13     BNE bra_A2B4
C - - - - - 0x0062B1 01:A2A1: B9 84 00  LDA ram_pos_Y_enemy,Y
C - - - - - 0x0062B4 01:A2A4: D5 84     CMP ram_pos_Y_enemy,X
C - - - - - 0x0062B6 01:A2A6: D0 0C     BNE bra_A2B4
C - - - - - 0x0062B8 01:A2A8: B9 4F 03  LDA ram_obj_id_enemy - $01,Y
C - - - - - 0x0062BB 01:A2AB: D0 1E     BNE bra_A2CB    ; if exist
- - - - - - 0x0062BD 01:A2AD: B9 92 04  LDA ram_0492_enemy,Y
- - - - - - 0x0062C0 01:A2B0: F0 19     BEQ bra_A2CB
- - - - - - 0x0062C2 01:A2B2: D0 03     BNE bra_A2B7    ; jmp
bra_A2B4:
C - - - - - 0x0062C4 01:A2B4: 88        DEY
C - - - - - 0x0062C5 01:A2B5: D0 DF     BNE bra_A296_loop
bra_A2B7:
C - - - - - 0x0062C7 01:A2B7: A9 1E     LDA #con_obj_id_1E
C - - - - - 0x0062C9 01:A2B9: A4 02     LDY ram_0002
C - - - - - 0x0062CB 01:A2BB: C0 C0     CPY #$C0
C - - - - - 0x0062CD 01:A2BD: B0 02     BCS bra_A2C1
C - - - - - 0x0062CF 01:A2BF: A9 22     LDA #con_obj_id_22
bra_A2C1:
C - - - - - 0x0062D1 01:A2C1: 9D 4F 03  STA ram_obj_id_enemy - $01,X
C - - - - - 0x0062D4 01:A2C4: 20 DA FE  JSR sub_0x01FEEA
C - - - - - 0x0062D7 01:A2C7: A9 3F     LDA #$3F
C - - - - - 0x0062D9 01:A2C9: 95 28     STA ram_timer_enemy,X
bra_A2CB:
C - - - - - 0x0062DB 01:A2CB: A2 00     LDX #$00
C - - - - - 0x0062DD 01:A2CD: 60        RTS



tbl_A2CE:
- D 1 - - - 0x0062DE 01:A2CE: 78        .byte $78   ; 01 
- D 1 - - - 0x0062DF 01:A2CF: 70        .byte $70   ; 02 
- D 1 - - - 0x0062E0 01:A2D0: 80        .byte $80   ; 03 
- D 1 - - - 0x0062E1 01:A2D1: 60        .byte $60   ; 04 
- D 1 - - - 0x0062E2 01:A2D2: 70        .byte $70   ; 05 
- D 1 - - - 0x0062E3 01:A2D3: 80        .byte $80   ; 06 
- D 1 - - - 0x0062E4 01:A2D4: 90        .byte $90   ; 07 
- D 1 - - - 0x0062E5 01:A2D5: 70        .byte $70   ; 08 
- D 1 - - - 0x0062E6 01:A2D6: 80        .byte $80   ; 09 
- D 1 - - - 0x0062E7 01:A2D7: 78        .byte $78   ; 0A 



tbl_A2D8:
- D 1 - - - 0x0062E8 01:A2D8: 70        .byte $70   ; 01 
- D 1 - - - 0x0062E9 01:A2D9: 80        .byte $80   ; 02 
- D 1 - - - 0x0062EA 01:A2DA: 80        .byte $80   ; 03 
- D 1 - - - 0x0062EB 01:A2DB: 90        .byte $90   ; 04 
- D 1 - - - 0x0062EC 01:A2DC: 90        .byte $90   ; 05 
- D 1 - - - 0x0062ED 01:A2DD: 90        .byte $90   ; 06 
- D 1 - - - 0x0062EE 01:A2DE: 90        .byte $90   ; 07 
- D 1 - - - 0x0062EF 01:A2DF: A0        .byte $A0   ; 08 
- D 1 - - - 0x0062F0 01:A2E0: A0        .byte $A0   ; 09 
- D 1 - - - 0x0062F1 01:A2E1: B0        .byte $B0   ; 0A 



loc_0x0062F2:
C D 1 - - - 0x0062F2 01:A2E2: BD BF 04  LDA ram_attr_enemy - $01,X
C - - - - - 0x0062F5 01:A2E5: 85 01     STA ram_0001
C - - - - - 0x0062F7 01:A2E7: A9 35     LDA #con_obj_id_35
C - - - - - 0x0062F9 01:A2E9: 85 00     STA ram_0000
C - - - - - 0x0062FB 01:A2EB: A2 0A     LDX #$0A
bra_A2ED_loop:
C - - - - - 0x0062FD 01:A2ED: 20 FE A2  JSR sub_A2FE
C - - - - - 0x006300 01:A2F0: BD CD A2  LDA tbl_A2CE - $01,X
C - - - - - 0x006303 01:A2F3: 95 70     STA ram_pos_X_enemy,X
C - - - - - 0x006305 01:A2F5: BD D7 A2  LDA tbl_A2D8 - $01,X
C - - - - - 0x006308 01:A2F8: 95 84     STA ram_pos_Y_enemy,X
C - - - - - 0x00630A 01:A2FA: CA        DEX
C - - - - - 0x00630B 01:A2FB: D0 F0     BNE bra_A2ED_loop
C - - - - - 0x00630D 01:A2FD: 60        RTS



sub_A2FE:
C - - - - - 0x00630E 01:A2FE: A5 00     LDA ram_0000
C - - - - - 0x006310 01:A300: 9D 4F 03  STA ram_obj_id_enemy - $01,X
C - - - - - 0x006313 01:A303: A9 00     LDA #$00
C - - - - - 0x006315 01:A305: 9D 92 04  STA ram_0492_enemy,X
C - - - - - 0x006318 01:A308: A5 01     LDA ram_0001
C - - - - - 0x00631A 01:A30A: 9D BF 04  STA ram_attr_enemy - $01,X
C - - - - - 0x00631D 01:A30D: 60        RTS



tbl_A30E:
- D 1 - - - 0x00631E 01:A30E: 20        .byte $20   ; 00 
- D 1 - - - 0x00631F 01:A30F: 20        .byte $20   ; 01 
- D 1 - - - 0x006320 01:A310: D0        .byte $D0   ; 02 
- D 1 - - - 0x006321 01:A311: D0        .byte $D0   ; 03 
- D 1 - - - 0x006322 01:A312: 40        .byte $40   ; 04 
- D 1 - - - 0x006323 01:A313: B0        .byte $B0   ; 05 



tbl_A314:
- D 1 - - - 0x006324 01:A314: 5D        .byte $5D   ; 00 
- D 1 - - - 0x006325 01:A315: BD        .byte $BD   ; 01 
- D 1 - - - 0x006326 01:A316: 5D        .byte $5D   ; 02 
- D 1 - - - 0x006327 01:A317: BD        .byte $BD   ; 03 
- D 1 - - - 0x006328 01:A318: 8D        .byte $8D   ; 04 
- D 1 - - - 0x006329 01:A319: 8D        .byte $8D   ; 05 



loc_0x00632A:
C D 1 - - - 0x00632A 01:A31A: BD BF 04  LDA ram_attr_enemy - $01,X
C - - - - - 0x00632D 01:A31D: 85 01     STA ram_0001
C - - - - - 0x00632F 01:A31F: A0 05     LDY #$05
C - - - - - 0x006331 01:A321: A9 49     LDA #con_obj_id_49
C - - - - - 0x006333 01:A323: 85 00     STA ram_0000
C - - - - - 0x006335 01:A325: DD 4F 03  CMP ram_obj_id_enemy - $01,X
C - - - - - 0x006338 01:A328: F0 02     BEQ bra_A32C_loop
C - - - - - 0x00633A 01:A32A: A0 03     LDY #$03
bra_A32C_loop:
C - - - - - 0x00633C 01:A32C: 98        TYA
C - - - - - 0x00633D 01:A32D: 18        CLC
C - - - - - 0x00633E 01:A32E: 6D 40 03  ADC ram_obj_index
C - - - - - 0x006341 01:A331: AA        TAX
C - - - - - 0x006342 01:A332: B9 0E A3  LDA tbl_A30E,Y
C - - - - - 0x006345 01:A335: 95 70     STA ram_pos_X_enemy,X
C - - - - - 0x006347 01:A337: B9 14 A3  LDA tbl_A314,Y
C - - - - - 0x00634A 01:A33A: 95 84     STA ram_pos_Y_enemy,X
C - - - - - 0x00634C 01:A33C: 20 FE A2  JSR sub_A2FE
C - - - - - 0x00634F 01:A33F: CA        DEX
C - - - - - 0x006350 01:A340: 88        DEY
C - - - - - 0x006351 01:A341: 10 E9     BPL bra_A32C_loop
C - - - - - 0x006353 01:A343: 60        RTS



tbl_A344_direction:
- D 1 - - - 0x006354 01:A344: 05        .byte con_dir__DR   ; 01 
- D 1 - - - 0x006355 01:A345: 09        .byte con_dir__UR   ; 02 
- D 1 - - - 0x006356 01:A346: 06        .byte con_dir__DL   ; 03 
- D 1 - - - 0x006357 01:A347: 0A        .byte con_dir__UL   ; 04 
- D 1 - - - 0x006358 01:A348: 01        .byte con_dir_Right   ; 05 
- D 1 - - - 0x006359 01:A349: 02        .byte con_dir_Left   ; 06 



loc_0x00635A:
C D 1 - - - 0x00635A 01:A34A: B5 AC     LDA ram_state_enemy,X
C - - - - - 0x00635C 01:A34C: D0 4B     BNE bra_A399
C - - - - - 0x00635E 01:A34E: A5 84     LDA ram_pos_Y_link
C - - - - - 0x006360 01:A350: 38        SEC
C - - - - - 0x006361 01:A351: F5 84     SBC ram_pos_Y_enemy,X
C - - - - - 0x006363 01:A353: 20 1F 70  JSR sub_bat_701F_EOR_FF_if_negative
C - - - - - 0x006366 01:A356: C9 0E     CMP #$0E
C - - - - - 0x006368 01:A358: B0 23     BCS bra_A37D
C - - - - - 0x00636A 01:A35A: A0 01     LDY #$01
C - - - - - 0x00636C 01:A35C: A5 70     LDA ram_pos_X_link
C - - - - - 0x00636E 01:A35E: D5 70     CMP ram_pos_X_enemy,X
C - - - - - 0x006370 01:A360: F0 1B     BEQ bra_A37D
C - - - - - 0x006372 01:A362: B0 02     BCS bra_A366
C - - - - - 0x006374 01:A364: A0 02     LDY #$02
bra_A366:
C - - - - - 0x006376 01:A366: B5 70     LDA ram_pos_X_enemy,X
bra_A368_loop:
C - - - - - 0x006378 01:A368: 9D 80 03  STA ram_0380_enemy,X
C - - - - - 0x00637B 01:A36B: 98        TYA
C - - - - - 0x00637C 01:A36C: 95 98     STA ram_dir_enemy,X
C - - - - - 0x00637E 01:A36E: 3D 43 A3  AND tbl_A344_direction - $01,X
C - - - - - 0x006381 01:A371: F0 07     BEQ bra_A37A
C - - - - - 0x006383 01:A373: F6 AC     INC ram_state_enemy,X
C - - - - - 0x006385 01:A375: A9 70     LDA #$70
C - - - - - 0x006387 01:A377: 9D BC 03  STA ram_03BC_enemy,X
bra_A37A:
C - - - - - 0x00638A 01:A37A: 4C EB A3  JMP loc_A3EB
bra_A37D:
C - - - - - 0x00638D 01:A37D: A5 70     LDA ram_pos_X_link
C - - - - - 0x00638F 01:A37F: 38        SEC
C - - - - - 0x006390 01:A380: F5 70     SBC ram_pos_X_enemy,X
C - - - - - 0x006392 01:A382: 20 1F 70  JSR sub_bat_701F_EOR_FF_if_negative
C - - - - - 0x006395 01:A385: C9 0E     CMP #$0E
C - - - - - 0x006397 01:A387: B0 F1     BCS bra_A37A
C - - - - - 0x006399 01:A389: A0 04     LDY #$04
C - - - - - 0x00639B 01:A38B: A5 84     LDA ram_pos_Y_link
C - - - - - 0x00639D 01:A38D: D5 84     CMP ram_pos_Y_enemy,X
C - - - - - 0x00639F 01:A38F: F0 E9     BEQ bra_A37A
C - - - - - 0x0063A1 01:A391: B0 02     BCS bra_A395
C - - - - - 0x0063A3 01:A393: A0 08     LDY #$08
bra_A395:
C - - - - - 0x0063A5 01:A395: B5 84     LDA ram_pos_Y_enemy,X
C - - - - - 0x0063A7 01:A397: D0 CF     BNE bra_A368_loop
bra_A399:
C - - - - - 0x0063A9 01:A399: B5 98     LDA ram_dir_enemy,X
C - - - - - 0x0063AB 01:A39B: 85 0F     STA ram_000F
C - - - - - 0x0063AD 01:A39D: 20 8D F0  JSR sub_0x01F09D
C - - - - - 0x0063B0 01:A3A0: BD 94 03  LDA ram_0394_enemy,X
C - - - - - 0x0063B3 01:A3A3: 29 0F     AND #$0F
C - - - - - 0x0063B5 01:A3A5: D0 03     BNE bra_A3AA
C - - - - - 0x0063B7 01:A3A7: 9D 94 03  STA ram_0394_enemy,X
bra_A3AA:
C - - - - - 0x0063BA 01:A3AA: 20 A7 7A  JSR sub_bat_7AA7
C - - - - - 0x0063BD 01:A3AD: B4 70     LDY ram_pos_X_enemy,X
C - - - - - 0x0063BF 01:A3AF: A9 78     LDA #$78
C - - - - - 0x0063C1 01:A3B1: 85 00     STA ram_0000
C - - - - - 0x0063C3 01:A3B3: B5 98     LDA ram_dir_enemy,X
C - - - - - 0x0063C5 01:A3B5: 29 0C     AND #con_dir__UD
C - - - - - 0x0063C7 01:A3B7: F0 06     BEQ bra_A3BF
C - - - - - 0x0063C9 01:A3B9: B4 84     LDY ram_pos_Y_enemy,X
C - - - - - 0x0063CB 01:A3BB: A9 90     LDA #$90
C - - - - - 0x0063CD 01:A3BD: 85 00     STA ram_0000
bra_A3BF:
C - - - - - 0x0063CF 01:A3BF: B5 AC     LDA ram_state_enemy,X
C - - - - - 0x0063D1 01:A3C1: 29 01     AND #$01
C - - - - - 0x0063D3 01:A3C3: F0 1C     BEQ bra_A3E1
C - - - - - 0x0063D5 01:A3C5: 98        TYA
C - - - - - 0x0063D6 01:A3C6: 38        SEC
C - - - - - 0x0063D7 01:A3C7: E5 00     SBC ram_0000
C - - - - - 0x0063D9 01:A3C9: 20 1F 70  JSR sub_bat_701F_EOR_FF_if_negative
C - - - - - 0x0063DC 01:A3CC: C9 05     CMP #$05
C - - - - - 0x0063DE 01:A3CE: B0 0E     BCS bra_A3DE
C - - - - - 0x0063E0 01:A3D0: B5 98     LDA ram_dir_enemy,X
C - - - - - 0x0063E2 01:A3D2: 20 13 70  JSR sub_bat_7013
C - - - - - 0x0063E5 01:A3D5: 95 98     STA ram_dir_enemy,X
C - - - - - 0x0063E7 01:A3D7: A9 20     LDA #$20
C - - - - - 0x0063E9 01:A3D9: 9D BC 03  STA ram_03BC_enemy,X
C - - - - - 0x0063EC 01:A3DC: F6 AC     INC ram_state_enemy,X
bra_A3DE:
C - - - - - 0x0063EE 01:A3DE: 4C EB A3  JMP loc_A3EB
bra_A3E1:
C - - - - - 0x0063F1 01:A3E1: 98        TYA
C - - - - - 0x0063F2 01:A3E2: DD 80 03  CMP ram_0380_enemy,X
C - - - - - 0x0063F5 01:A3E5: D0 04     BNE bra_A3EB
C - - - - - 0x0063F7 01:A3E7: A9 00     LDA #$00
C - - - - - 0x0063F9 01:A3E9: 95 AC     STA ram_state_enemy,X
bra_A3EB:
loc_A3EB:   ; bzk optimize, JMP into JMP
C D 1 - - - 0x0063FB 01:A3EB: 4C BA 79  JMP loc_bat_79BA



loc_0x0063FE:
C D 1 - - - 0x0063FE 01:A3EE: 8A        TXA
C - - - - - 0x0063FF 01:A3EF: 48        PHA
C - - - - - 0x006400 01:A3F0: A5 84     LDA ram_pos_Y_link
C - - - - - 0x006402 01:A3F2: 38        SEC
C - - - - - 0x006403 01:A3F3: F5 84     SBC ram_pos_Y_enemy,X
C - - - - - 0x006405 01:A3F5: 20 1F 70  JSR sub_bat_701F_EOR_FF_if_negative
C - - - - - 0x006408 01:A3F8: C9 09     CMP #$09
C - - - - - 0x00640A 01:A3FA: B0 1A     BCS bra_A416
C - - - - - 0x00640C 01:A3FC: A5 70     LDA ram_pos_X_link
C - - - - - 0x00640E 01:A3FE: 38        SEC
C - - - - - 0x00640F 01:A3FF: F5 70     SBC ram_pos_X_enemy,X
C - - - - - 0x006411 01:A401: 20 1F 70  JSR sub_bat_701F_EOR_FF_if_negative
C - - - - - 0x006414 01:A404: C9 09     CMP #$09
C - - - - - 0x006416 01:A406: B0 0E     BCS bra_A416
C - - - - - 0x006418 01:A408: 20 A3 74  JSR sub_bat_74A3_increase_rupees_and_add_sfx
C - - - - - 0x00641B 01:A40B: 20 B1 FE  JSR sub_0x01FEC1_destroy_object
C - - - - - 0x00641E 01:A40E: A9 00     LDA #$00
C - - - - - 0x006420 01:A410: 8D 4E 03  STA ram_enemy_cnt
C - - - - - 0x006423 01:A413: 4C 20 A4  JMP loc_A420    ; bzk optimize, BEQ
bra_A416:
C - - - - - 0x006426 01:A416: 20 93 FA  JSR sub_0x01FAA3
C - - - - - 0x006429 01:A419: A2 16     LDX #$16
C - - - - - 0x00642B 01:A41B: A0 16     LDY #$16
C - - - - - 0x00642D 01:A41D: 20 35 E7  JSR sub_0x01E745
loc_A420:
C D 1 - - - 0x006430 01:A420: 68        PLA
C - - - - - 0x006431 01:A421: AA        TAX
C - - - - - 0x006432 01:A422: 60        RTS


; bzk garbage
- - - - - - 0x006433 01:A423: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x006440 01:A430: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x006450 01:A440: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x006460 01:A450: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x006470 01:A460: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x006480 01:A470: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x006490 01:A480: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0064A0 01:A490: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0064B0 01:A4A0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0064C0 01:A4B0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0064D0 01:A4C0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0064E0 01:A4D0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0064F0 01:A4E0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x006500 01:A4F0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 



ofs_A500_bank_s2_asm_export:
.include "copy_bank_s2.asm"



; 0x007780-0x00800F
.org $B770


; bzk garbage
- - - - - - 0x007780 01:B770: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007790 01:B780: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0077A0 01:B790: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0077B0 01:B7A0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0077C0 01:B7B0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0077D0 01:B7C0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0077E0 01:B7D0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0077F0 01:B7E0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007800 01:B7F0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007810 01:B800: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007820 01:B810: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007830 01:B820: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007840 01:B830: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007850 01:B840: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007860 01:B850: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007870 01:B860: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007880 01:B870: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007890 01:B880: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0078A0 01:B890: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0078B0 01:B8A0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0078C0 01:B8B0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0078D0 01:B8C0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0078E0 01:B8D0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0078F0 01:B8E0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007900 01:B8F0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007910 01:B900: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007920 01:B910: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007930 01:B920: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007940 01:B930: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007950 01:B940: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007960 01:B950: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007970 01:B960: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007980 01:B970: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007990 01:B980: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0079A0 01:B990: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0079B0 01:B9A0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0079C0 01:B9B0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0079D0 01:B9C0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0079E0 01:B9D0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0079F0 01:B9E0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007A00 01:B9F0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007A10 01:BA00: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007A20 01:BA10: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007A30 01:BA20: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007A40 01:BA30: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007A50 01:BA40: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007A60 01:BA50: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007A70 01:BA60: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007A80 01:BA70: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007A90 01:BA80: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007AA0 01:BA90: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007AB0 01:BAA0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007AC0 01:BAB0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007AD0 01:BAC0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007AE0 01:BAD0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007AF0 01:BAE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007B00 01:BAF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007B10 01:BB00: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007B20 01:BB10: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007B30 01:BB20: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007B40 01:BB30: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007B50 01:BB40: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007B60 01:BB50: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007B70 01:BB60: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007B80 01:BB70: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007B90 01:BB80: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007BA0 01:BB90: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007BB0 01:BBA0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007BC0 01:BBB0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007BD0 01:BBC0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007BE0 01:BBD0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007BF0 01:BBE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007C00 01:BBF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007C10 01:BC00: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007C20 01:BC10: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007C30 01:BC20: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007C40 01:BC30: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007C50 01:BC40: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007C60 01:BC50: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007C70 01:BC60: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007C80 01:BC70: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007C90 01:BC80: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007CA0 01:BC90: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007CB0 01:BCA0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007CC0 01:BCB0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007CD0 01:BCC0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007CE0 01:BCD0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007CF0 01:BCE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007D00 01:BCF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007D10 01:BD00: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007D20 01:BD10: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007D30 01:BD20: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007D40 01:BD30: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007D50 01:BD40: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007D60 01:BD50: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007D70 01:BD60: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007D80 01:BD70: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007D90 01:BD80: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007DA0 01:BD90: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007DB0 01:BDA0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007DC0 01:BDB0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007DD0 01:BDC0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007DE0 01:BDD0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007DF0 01:BDE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007E00 01:BDF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007E10 01:BE00: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007E20 01:BE10: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007E30 01:BE20: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007E40 01:BE30: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007E50 01:BE40: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007E60 01:BE50: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007E70 01:BE60: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007E80 01:BE70: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007E90 01:BE80: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007EA0 01:BE90: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007EB0 01:BEA0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007EC0 01:BEB0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007ED0 01:BEC0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007EE0 01:BED0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007EF0 01:BEE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007F00 01:BEF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007F10 01:BF00: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007F20 01:BF10: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007F30 01:BF20: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007F40 01:BF30: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007F50 01:BF40: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 



.org $BF50
.segment "BANK_01i"
.include "copy_bank___BF50_BFF9.asm"



.out .sprintf("Free bytes in bank 01: 0x%04X [%d]", ($BFFA - *), ($BFFA - *))



.segment "VECTORS_01"
- - - - - - 0x00800A 01:BFFA: 84 E4     .word vec_0x01E494_NMI
- - - - - - 0x00800C 01:BFFC: 50 BF     .word vec_inc_0x003F60_RESET
- - - - - - 0x00800E 01:BFFE: F0 BF     .word vec_inc_0x004000_IRQ
