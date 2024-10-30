.segment "BANK_FE"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
.org $C000  ; for listing file
; 0x03C010-0x03E00F



.export tbl_0x03C95B_prg_bank
.export ofs_041_0x03CDC8_05
.export ofs_041_0x03D077_03
.export ofs_041_0x03D108_04
.export sub_0x03D5D3
.export off_0x03D782_01_credits_logo_screen
.export _off006_0x03D939_03
.export _off006_0x03D9CC_04
.export _off006_0x03DA84_00
.export _off006_0x03DB15_01
.export _off006_0x03DBCC_02



; bzk this binary must be located at C000
.incbin "incbin/DPCM/DPCM_2.bin"


; bzk garbage
- - - - - - 0x03C811 0F:C801: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x03C820 0F:C810: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x03C830 0F:C820: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x03C840 0F:C830: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x03C850 0F:C840: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x03C860 0F:C850: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x03C870 0F:C860: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x03C880 0F:C870: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x03C890 0F:C880: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x03C8A0 0F:C890: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x03C8B0 0F:C8A0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x03C8C0 0F:C8B0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x03C8D0 0F:C8C0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x03C8E0 0F:C8D0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x03C8F0 0F:C8E0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x03C900 0F:C8F0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 



sub_C900_select_prg_bank_for_blk_1:
C - - - - - 0x03C910 0F:C900: A4 32     LDY ram_blk_hi
sub_C902_select_prg_bank_for_blk_2:   ; bzk optimize
C - - - - - 0x03C912 0F:C902: 4C 0F C9  JMP loc_C90F



sub_C905_select_proper_prg_bank_for_blk:
C - - - - - 0x03C915 0F:C905: A4 32     LDY ram_blk_hi
C - - - - - 0x03C917 0F:C907: C0 0E     CPY #$0E
C - - - - - 0x03C919 0F:C909: F0 32     BEQ bra_C93D_0E
C - - - - - 0x03C91B 0F:C90B: C0 0D     CPY #$0D
C - - - - - 0x03C91D 0F:C90D: F0 06     BEQ bra_C915_0D
loc_C90F:
bra_C90F:
C D 2 - - - 0x03C91F 0F:C90F: B9 4B C9  LDA tbl_C94B_prg_bank,Y
C - - - - - 0x03C922 0F:C912: 4C E6 E2  JMP loc_E2E6_prg_bankswitch
bra_C915_0D:
C - - - - - 0x03C925 0F:C915: A5 33     LDA ram_blk_lo
C - - - - - 0x03C927 0F:C917: F0 18     BEQ bra_C931
C - - - - - 0x03C929 0F:C919: C9 02     CMP #$02
C - - - - - 0x03C92B 0F:C91B: F0 0A     BEQ bra_C927
C - - - - - 0x03C92D 0F:C91D: C9 03     CMP #$03
C - - - - - 0x03C92F 0F:C91F: D0 EE     BNE bra_C90F
C - - - - - 0x03C931 0F:C921: A5 34     LDA ram_blk_fr
C - - - - - 0x03C933 0F:C923: D0 EA     BNE bra_C90F
C - - - - - 0x03C935 0F:C925: F0 06     BEQ bra_C92D    ; jmp
bra_C927:
C - - - - - 0x03C937 0F:C927: A5 34     LDA ram_blk_fr
C - - - - - 0x03C939 0F:C929: C9 02     CMP #$02
C - - - - - 0x03C93B 0F:C92B: D0 E2     BNE bra_C90F
bra_C92D:
C - - - - - 0x03C93D 0F:C92D: A0 05     LDY #$05
C - - - - - 0x03C93F 0F:C92F: D0 DE     BNE bra_C90F    ; jmp
bra_C931:
C - - - - - 0x03C941 0F:C931: A5 34     LDA ram_blk_fr
C - - - - - 0x03C943 0F:C933: F0 04     BEQ bra_C939
C - - - - - 0x03C945 0F:C935: C9 01     CMP #$01
C - - - - - 0x03C947 0F:C937: D0 D6     BNE bra_C90F
bra_C939:
C - - - - - 0x03C949 0F:C939: A0 02     LDY #$02
C - - - - - 0x03C94B 0F:C93B: D0 D2     BNE bra_C90F    ; jmp
bra_C93D_0E:
C - - - - - 0x03C94D 0F:C93D: A5 33     LDA ram_blk_lo
C - - - - - 0x03C94F 0F:C93F: D0 CE     BNE bra_C90F
C - - - - - 0x03C951 0F:C941: A5 34     LDA ram_blk_fr
C - - - - - 0x03C953 0F:C943: C9 01     CMP #$01
C - - - - - 0x03C955 0F:C945: D0 C8     BNE bra_C90F
C - - - - - 0x03C957 0F:C947: A0 01     LDY #$01
C - - - - - 0x03C959 0F:C949: D0 C4     BNE bra_C90F    ; jmp



tbl_C94B_prg_bank:
tbl_0x03C95B_prg_bank:
- D 2 - - - 0x03C95B 0F:C94B: 90        .byte con_prg_bank + $90   ; 00 
- D 2 - - - 0x03C95C 0F:C94C: 90        .byte con_prg_bank + $90   ; 01 
- D 2 - - - 0x03C95D 0F:C94D: 90        .byte con_prg_bank + $90   ; 02 
- D 2 - - - 0x03C95E 0F:C94E: 90        .byte con_prg_bank + $90   ; 03 
- D 2 - - - 0x03C95F 0F:C94F: 90        .byte con_prg_bank + $90   ; 04 
- D 2 - - - 0x03C960 0F:C950: 8E        .byte con_prg_bank + $8E   ; 05 
- D 2 - - - 0x03C961 0F:C951: 8E        .byte con_prg_bank + $8E   ; 06 
- D 2 - - - 0x03C962 0F:C952: 8E        .byte con_prg_bank + $8E   ; 07 
- D 2 - - - 0x03C963 0F:C953: 8E        .byte con_prg_bank + $8E   ; 08 
- D 2 - - - 0x03C964 0F:C954: 8C        .byte con_prg_bank + $8C   ; 09 
- D 2 - - - 0x03C965 0F:C955: 8C        .byte con_prg_bank + $8C   ; 0A 
- D 2 - - - 0x03C966 0F:C956: 8E        .byte con_prg_bank + $8E   ; 0B 
- D 2 - - - 0x03C967 0F:C957: 8C        .byte con_prg_bank + $8C   ; 0C 
- D 2 - - - 0x03C968 0F:C958: 8C        .byte con_prg_bank + $8C   ; 0D 
- D 2 - - - 0x03C969 0F:C959: 8C        .byte con_prg_bank + $8C   ; 0E 



sub_C95A:
; out
    ; ram_0017_t002_flag
C - - - - - 0x03C96A 0F:C95A: A9 00     LDA #$00
C - - - - - 0x03C96C 0F:C95C: 85 17     STA ram_0017_t002_flag
C - - - - - 0x03C96E 0F:C95E: A5 68     LDA ram_0068
C - - - - - 0x03C970 0F:C960: C9 82     CMP #$82
C - - - - - 0x03C972 0F:C962: B0 0B     BCS bra_C96F
bra_C964:
C - - - - - 0x03C974 0F:C964: AD 37 05  LDA ram_plr_spd_Y_lo
C - - - - - 0x03C977 0F:C967: 85 0A     STA ram_000A_temp
C - - - - - 0x03C979 0F:C969: AD 20 05  LDA ram_plr_spd_Y_hi
C - - - - - 0x03C97C 0F:C96C: 85 0B     STA ram_000B_temp
C - - - - - 0x03C97E 0F:C96E: 60        RTS
bra_C96F:
C - - - - - 0x03C97F 0F:C96F: C9 84     CMP #$84
C - - - - - 0x03C981 0F:C971: F0 30     BEQ bra_C9A3
C - - - - - 0x03C983 0F:C973: A5 57     LDA ram_cam_pos_hi
C - - - - - 0x03C985 0F:C975: C5 71     CMP ram_0071_blk_config
C - - - - - 0x03C987 0F:C977: D0 06     BNE bra_C97F
C - - - - - 0x03C989 0F:C979: A5 56     LDA ram_cam_pos_lo
C - - - - - 0x03C98B 0F:C97B: C9 30     CMP #$30
C - - - - - 0x03C98D 0F:C97D: F0 E5     BEQ bra_C964
bra_C97F:
C - - - - - 0x03C98F 0F:C97F: A0 00     LDY #$00
C - - - - - 0x03C991 0F:C981: A5 68     LDA ram_0068
C - - - - - 0x03C993 0F:C983: 38        SEC
C - - - - - 0x03C994 0F:C984: E9 82     SBC #$82
C - - - - - 0x03C996 0F:C986: F0 02     BEQ bra_C98A
C - - - - - 0x03C998 0F:C988: A0 03     LDY #$03
bra_C98A:
C - - - - - 0x03C99A 0F:C98A: B9 30 CA  LDA tbl_CA30,Y
C - - - - - 0x03C99D 0F:C98D: 85 0A     STA ram_000A_temp
C - - - - - 0x03C99F 0F:C98F: B9 31 CA  LDA tbl_CA30 + $01,Y
C - - - - - 0x03C9A2 0F:C992: 85 0B     STA ram_000B_temp
C - - - - - 0x03C9A4 0F:C994: B9 32 CA  LDA tbl_CA30 + $02,Y
C - - - - - 0x03C9A7 0F:C997: 85 65     STA ram_0065
C - - - - - 0x03C9A9 0F:C999: 60        RTS
bra_C99A:
C - - - - - 0x03C9AA 0F:C99A: A9 02     LDA #$02
C - - - - - 0x03C9AC 0F:C99C: 85 65     STA ram_0065
C - - - - - 0x03C9AE 0F:C99E: A9 00     LDA #$00
C - - - - - 0x03C9B0 0F:C9A0: 85 0B     STA ram_000B_temp
C - - - - - 0x03C9B2 0F:C9A2: 60        RTS
bra_C9A3:
C - - - - - 0x03C9B3 0F:C9A3: A5 57     LDA ram_cam_pos_hi
C - - - - - 0x03C9B5 0F:C9A5: 05 56     ORA ram_cam_pos_lo
C - - - - - 0x03C9B7 0F:C9A7: F0 F1     BEQ bra_C99A
C - - - - - 0x03C9B9 0F:C9A9: A5 57     LDA ram_cam_pos_hi
C - - - - - 0x03C9BB 0F:C9AB: C5 71     CMP ram_0071_blk_config
C - - - - - 0x03C9BD 0F:C9AD: D0 06     BNE bra_C9B5
C - - - - - 0x03C9BF 0F:C9AF: A5 56     LDA ram_cam_pos_lo
C - - - - - 0x03C9C1 0F:C9B1: C9 30     CMP #$30
C - - - - - 0x03C9C3 0F:C9B3: F0 AF     BEQ bra_C964
bra_C9B5:
C - - - - - 0x03C9C5 0F:C9B5: AC A4 07  LDY ram_07A4
C - - - - - 0x03C9C8 0F:C9B8: D0 19     BNE bra_C9D3
C - - - - - 0x03C9CA 0F:C9BA: A9 00     LDA #$00
C - - - - - 0x03C9CC 0F:C9BC: 85 0A     STA ram_000A_temp
C - - - - - 0x03C9CE 0F:C9BE: 85 0B     STA ram_000B_temp
C - - - - - 0x03C9D0 0F:C9C0: EE A3 07  INC ram_07A3
C - - - - - 0x03C9D3 0F:C9C3: AD A3 07  LDA ram_07A3
C - - - - - 0x03C9D6 0F:C9C6: C9 80     CMP #$80
C - - - - - 0x03C9D8 0F:C9C8: 90 08     BCC bra_C9D2_RTS
C - - - - - 0x03C9DA 0F:C9CA: A9 08     LDA #$08
sub_C9CC:
C - - - - - 0x03C9DC 0F:C9CC: 8D A3 07  STA ram_07A3
C - - - - - 0x03C9DF 0F:C9CF: EE A4 07  INC ram_07A4
bra_C9D2_RTS:
C - - - - - 0x03C9E2 0F:C9D2: 60        RTS
bra_C9D3:
C - - - - - 0x03C9E3 0F:C9D3: 88        DEY
C - - - - - 0x03C9E4 0F:C9D4: D0 21     BNE bra_C9F7
C - - - - - 0x03C9E6 0F:C9D6: CE A3 07  DEC ram_07A3
C - - - - - 0x03C9E9 0F:C9D9: D0 0A     BNE bra_C9E5
C - - - - - 0x03C9EB 0F:C9DB: A9 04     LDA #$04
C - - - - - 0x03C9ED 0F:C9DD: 20 CC C9  JSR sub_C9CC
C - - - - - 0x03C9F0 0F:C9E0: A9 37     LDA #con_sound_37
C - - - - - 0x03C9F2 0F:C9E2: 20 5F E2  JSR sub_E25F_play_sound
bra_C9E5:
C - - - - - 0x03C9F5 0F:C9E5: E6 17     INC ram_0017_t002_flag
C - - - - - 0x03C9F7 0F:C9E7: AD A3 07  LDA ram_07A3
C - - - - - 0x03C9FA 0F:C9EA: 29 01     AND #$01
C - - - - - 0x03C9FC 0F:C9EC: 0A        ASL
C - - - - - 0x03C9FD 0F:C9ED: A8        TAY
C - - - - - 0x03C9FE 0F:C9EE: B9 36 CA  LDA tbl_CA36,Y
C - - - - - 0x03CA01 0F:C9F1: BE 37 CA  LDX tbl_CA36 + $01,Y
C - - - - - 0x03CA04 0F:C9F4: 4C 08 CA  JMP loc_CA08
bra_C9F7:
C - - - - - 0x03CA07 0F:C9F7: 88        DEY
C - - - - - 0x03CA08 0F:C9F8: D0 17     BNE bra_CA11
C - - - - - 0x03CA0A 0F:C9FA: CE A3 07  DEC ram_07A3
C - - - - - 0x03CA0D 0F:C9FD: D0 05     BNE bra_CA04
C - - - - - 0x03CA0F 0F:C9FF: A9 10     LDA #$10
C - - - - - 0x03CA11 0F:CA01: 20 CC C9  JSR sub_C9CC
bra_CA04:
C - - - - - 0x03CA14 0F:CA04: A2 00     LDX #$00
C - - - - - 0x03CA16 0F:CA06: A9 F8     LDA #$F8
loc_CA08:
C D 2 - - - 0x03CA18 0F:CA08: 86 65     STX ram_0065
C - - - - - 0x03CA1A 0F:CA0A: 85 0B     STA ram_000B_temp
C - - - - - 0x03CA1C 0F:CA0C: A9 00     LDA #$00
C - - - - - 0x03CA1E 0F:CA0E: 85 0A     STA ram_000A_temp
C - - - - - 0x03CA20 0F:CA10: 60        RTS
bra_CA11:
C - - - - - 0x03CA21 0F:CA11: CE A3 07  DEC ram_07A3
C - - - - - 0x03CA24 0F:CA14: D0 08     BNE bra_CA1E
C - - - - - 0x03CA26 0F:CA16: A9 00     LDA #$00
C - - - - - 0x03CA28 0F:CA18: 8D A4 07  STA ram_07A4
C - - - - - 0x03CA2B 0F:CA1B: 8D A3 07  STA ram_07A3
bra_CA1E:
C - - - - - 0x03CA2E 0F:CA1E: E6 17     INC ram_0017_t002_flag
C - - - - - 0x03CA30 0F:CA20: AD A3 07  LDA ram_07A3
C - - - - - 0x03CA33 0F:CA23: 29 01     AND #$01
C - - - - - 0x03CA35 0F:CA25: 0A        ASL
C - - - - - 0x03CA36 0F:CA26: A8        TAY
C - - - - - 0x03CA37 0F:CA27: B9 3A CA  LDA tbl_CA3A,Y
C - - - - - 0x03CA3A 0F:CA2A: BE 3B CA  LDX tbl_CA3A + $01,Y
C - - - - - 0x03CA3D 0F:CA2D: 4C 08 CA  JMP loc_CA08



tbl_CA30:
; 00 
- D 2 - - - 0x03CA40 0F:CA30: C0 FF     .word $FFC0 ; 
- D 2 - - - 0x03CA42 0F:CA32: 00        .byte $00   ; 
; 01 
- D 2 - - - 0x03CA43 0F:CA33: 40 00     .word $0040 ; 
- D 2 - - - 0x03CA45 0F:CA35: 01        .byte $01   ; 



tbl_CA36:
; 00 
- D 2 - - - 0x03CA46 0F:CA36: 01        .byte $01   ; 
- D 2 - - - 0x03CA47 0F:CA37: 01        .byte $01   ; 
; 01 
- D 2 - - - 0x03CA48 0F:CA38: FF        .byte $FF   ; 
- D 2 - - - 0x03CA49 0F:CA39: 00        .byte $00   ; 



tbl_CA3A:
; 00 
- D 2 - - - 0x03CA4A 0F:CA3A: 02        .byte $02   ; 
- D 2 - - - 0x03CA4B 0F:CA3B: 01        .byte $01   ; 
; 01 
- D 2 - - - 0x03CA4C 0F:CA3C: FE        .byte $FE   ; 
- D 2 - - - 0x03CA4D 0F:CA3D: 00        .byte $00   ; 



sub_CA3E:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x03CA4E 0F:CA3E: 20 5A C9  JSR sub_C95A
C - - - - - 0x03CA51 0F:CA41: A5 56     LDA ram_cam_pos_lo
C - - - - - 0x03CA53 0F:CA43: 85 08     STA ram_0008_t037_copy_cam_pos_lo
C - - - - - 0x03CA55 0F:CA45: A4 65     LDY ram_0065
C - - - - - 0x03CA57 0F:CA47: F0 49     BEQ bra_CA92_00
C - - - - - 0x03CA59 0F:CA49: 88        DEY
C - - - - - 0x03CA5A 0F:CA4A: F0 09     BEQ bra_CA55_01
; 02
bra_CA4C:
C - - - - - 0x03CA5C 0F:CA4C: 38        SEC
C - - - - - 0x03CA5D 0F:CA4D: A5 08     LDA ram_0008_t037_copy_cam_pos_lo
C - - - - - 0x03CA5F 0F:CA4F: E5 56     SBC ram_cam_pos_lo
C - - - - - 0x03CA61 0F:CA51: 85 6E     STA ram_006E_cam_speed
C - - - - - 0x03CA63 0F:CA53: 18        CLC
C - - - - - 0x03CA64 0F:CA54: 60        RTS
bra_CA55_01:
C - - - - - 0x03CA65 0F:CA55: 18        CLC
C - - - - - 0x03CA66 0F:CA56: A5 58     LDA ram_0058
C - - - - - 0x03CA68 0F:CA58: 65 0A     ADC ram_000A_temp
C - - - - - 0x03CA6A 0F:CA5A: 85 58     STA ram_0058
C - - - - - 0x03CA6C 0F:CA5C: A5 56     LDA ram_cam_pos_lo
C - - - - - 0x03CA6E 0F:CA5E: 65 0B     ADC ram_000B_temp
C - - - - - 0x03CA70 0F:CA60: 85 56     STA ram_cam_pos_lo
C - - - - - 0x03CA72 0F:CA62: C9 F0     CMP #$F0
C - - - - - 0x03CA74 0F:CA64: 90 0E     BCC bra_CA74
C - - - - - 0x03CA76 0F:CA66: 18        CLC
C - - - - - 0x03CA77 0F:CA67: 69 10     ADC #$10
C - - - - - 0x03CA79 0F:CA69: 85 56     STA ram_cam_pos_lo
C - - - - - 0x03CA7B 0F:CA6B: E6 57     INC ram_cam_pos_hi
C - - - - - 0x03CA7D 0F:CA6D: A5 08     LDA ram_0008_t037_copy_cam_pos_lo
C - - - - - 0x03CA7F 0F:CA6F: 18        CLC
C - - - - - 0x03CA80 0F:CA70: 69 10     ADC #$10
C - - - - - 0x03CA82 0F:CA72: 85 08     STA ram_0008_t037_copy_cam_pos_lo
bra_CA74:
C - - - - - 0x03CA84 0F:CA74: A5 71     LDA ram_0071_blk_config
C - - - - - 0x03CA86 0F:CA76: C5 57     CMP ram_cam_pos_hi
C - - - - - 0x03CA88 0F:CA78: D0 0A     BNE bra_CA84
C - - - - - 0x03CA8A 0F:CA7A: A5 56     LDA ram_cam_pos_lo
C - - - - - 0x03CA8C 0F:CA7C: C9 30     CMP #$30
C - - - - - 0x03CA8E 0F:CA7E: 90 04     BCC bra_CA84
C - - - - - 0x03CA90 0F:CA80: A9 30     LDA #$30
C - - - - - 0x03CA92 0F:CA82: 85 56     STA ram_cam_pos_lo
bra_CA84:
C - - - - - 0x03CA94 0F:CA84: 4C B3 CA  JMP loc_CAB3
bra_CA87:
C - - - - - 0x03CA97 0F:CA87: A9 00     LDA #$00
C - - - - - 0x03CA99 0F:CA89: 85 56     STA ram_cam_pos_lo
C - - - - - 0x03CA9B 0F:CA8B: 85 57     STA ram_cam_pos_hi
C - - - - - 0x03CA9D 0F:CA8D: 85 58     STA ram_0058
C - - - - - 0x03CA9F 0F:CA8F: 4C B3 CA  JMP loc_CAB3
bra_CA92_00:
C - - - - - 0x03CAA2 0F:CA92: 18        CLC
C - - - - - 0x03CAA3 0F:CA93: A5 58     LDA ram_0058
C - - - - - 0x03CAA5 0F:CA95: 65 0A     ADC ram_000A_temp
C - - - - - 0x03CAA7 0F:CA97: 85 58     STA ram_0058
C - - - - - 0x03CAA9 0F:CA99: A5 56     LDA ram_cam_pos_lo
C - - - - - 0x03CAAB 0F:CA9B: 65 0B     ADC ram_000B_temp
C - - - - - 0x03CAAD 0F:CA9D: 85 56     STA ram_cam_pos_lo
C - - - - - 0x03CAAF 0F:CA9F: B0 12     BCS bra_CAB3
C - - - - - 0x03CAB1 0F:CAA1: A4 57     LDY ram_cam_pos_hi
C - - - - - 0x03CAB3 0F:CAA3: F0 E2     BEQ bra_CA87
C - - - - - 0x03CAB5 0F:CAA5: 38        SEC
C - - - - - 0x03CAB6 0F:CAA6: E9 10     SBC #$10
C - - - - - 0x03CAB8 0F:CAA8: 85 56     STA ram_cam_pos_lo
C - - - - - 0x03CABA 0F:CAAA: C6 57     DEC ram_cam_pos_hi
C - - - - - 0x03CABC 0F:CAAC: A5 08     LDA ram_0008_t037_copy_cam_pos_lo
C - - - - - 0x03CABE 0F:CAAE: 38        SEC
C - - - - - 0x03CABF 0F:CAAF: E9 10     SBC #$10
C - - - - - 0x03CAC1 0F:CAB1: 85 08     STA ram_0008_t037_copy_cam_pos_lo
loc_CAB3:
bra_CAB3:
C D 2 - - - 0x03CAC3 0F:CAB3: A5 17     LDA ram_0017_t002_flag
C - - - - - 0x03CAC5 0F:CAB5: D0 95     BNE bra_CA4C
C - - - - - 0x03CAC7 0F:CAB7: A5 56     LDA ram_cam_pos_lo
C - - - - - 0x03CAC9 0F:CAB9: 29 F8     AND #$F8
C - - - - - 0x03CACB 0F:CABB: C5 66     CMP ram_0066
C - - - - - 0x03CACD 0F:CABD: F0 8D     BEQ bra_CA4C
C - - - - - 0x03CACF 0F:CABF: 85 66     STA ram_0066
C - - - - - 0x03CAD1 0F:CAC1: A4 65     LDY ram_0065
C - - - - - 0x03CAD3 0F:CAC3: F0 33     BEQ bra_CAF8
C - - - - - 0x03CAD5 0F:CAC5: A4 5C     LDY ram_drawing_ahead
C - - - - - 0x03CAD7 0F:CAC7: C8        INY
C - - - - - 0x03CAD8 0F:CAC8: C0 1E     CPY #$1E
C - - - - - 0x03CADA 0F:CACA: D0 09     BNE bra_CAD5
C - - - - - 0x03CADC 0F:CACC: A5 5A     LDA ram_section_ahead
C - - - - - 0x03CADE 0F:CACE: 18        CLC
C - - - - - 0x03CADF 0F:CACF: 69 08     ADC #$08
C - - - - - 0x03CAE1 0F:CAD1: 85 5A     STA ram_section_ahead
C - - - - - 0x03CAE3 0F:CAD3: A0 00     LDY #$00
bra_CAD5:
C - - - - - 0x03CAE5 0F:CAD5: 84 5C     STY ram_drawing_ahead
loc_CAD7:
C D 2 - - - 0x03CAE7 0F:CAD7: A4 65     LDY ram_0065
C - - - - - 0x03CAE9 0F:CAD9: B9 59 00  LDA ram_blk_section,Y
C - - - - - 0x03CAEC 0F:CADC: 29 F8     AND #$F8
C - - - - - 0x03CAEE 0F:CADE: 99 59 00  STA ram_blk_section,Y
C - - - - - 0x03CAF1 0F:CAE1: B9 5B 00  LDA ram_blk_drawing,Y
C - - - - - 0x03CAF4 0F:CAE4: 4A        LSR
C - - - - - 0x03CAF5 0F:CAE5: 4A        LSR
C - - - - - 0x03CAF6 0F:CAE6: 19 59 00  ORA ram_blk_section,Y
C - - - - - 0x03CAF9 0F:CAE9: 99 59 00  STA ram_blk_section,Y
C - - - - - 0x03CAFC 0F:CAEC: 20 CB CF  JSR sub_CFCB
C - - - - - 0x03CAFF 0F:CAEF: A5 08     LDA ram_0008_t037_copy_cam_pos_lo
C - - - - - 0x03CB01 0F:CAF1: 38        SEC
C - - - - - 0x03CB02 0F:CAF2: E5 56     SBC ram_cam_pos_lo
C - - - - - 0x03CB04 0F:CAF4: 85 6E     STA ram_006E_cam_speed
C - - - - - 0x03CB06 0F:CAF6: 38        SEC
C - - - - - 0x03CB07 0F:CAF7: 60        RTS
bra_CAF8:
C - - - - - 0x03CB08 0F:CAF8: A4 5B     LDY ram_drawing_behind
C - - - - - 0x03CB0A 0F:CAFA: 88        DEY
C - - - - - 0x03CB0B 0F:CAFB: 10 09     BPL bra_CB06
C - - - - - 0x03CB0D 0F:CAFD: A5 59     LDA ram_section_behind
C - - - - - 0x03CB0F 0F:CAFF: 38        SEC
C - - - - - 0x03CB10 0F:CB00: E9 08     SBC #$08
C - - - - - 0x03CB12 0F:CB02: 85 59     STA ram_section_behind
C - - - - - 0x03CB14 0F:CB04: A0 1D     LDY #$1D
bra_CB06:
C - - - - - 0x03CB16 0F:CB06: 84 5B     STY ram_drawing_behind
C - - - - - 0x03CB18 0F:CB08: 4C D7 CA  JMP loc_CAD7



sub_CB0B:
C - - - - - 0x03CB1B 0F:CB0B: 20 3E CA  JSR sub_CA3E
C - - - - - 0x03CB1E 0F:CB0E: 90 0A     BCC bra_CB1A_RTS
C - - - - - 0x03CB20 0F:CB10: 20 05 C9  JSR sub_C905_select_proper_prg_bank_for_blk
C - - - - - 0x03CB23 0F:CB13: A4 65     LDY ram_0065
C - - - - - 0x03CB25 0F:CB15: B9 59 00  LDA ram_blk_section,Y
C - - - - - 0x03CB28 0F:CB18: 10 01     BPL bra_CB1B
bra_CB1A_RTS:
C - - - - - 0x03CB2A 0F:CB1A: 60        RTS
bra_CB1B:
C - - - - - 0x03CB2B 0F:CB1B: 98        TYA
C - - - - - 0x03CB2C 0F:CB1C: 0A        ASL
C - - - - - 0x03CB2D 0F:CB1D: AA        TAX
C - - - - - 0x03CB2E 0F:CB1E: B5 52     LDA ram_0052,X
C - - - - - 0x03CB30 0F:CB20: 85 10     STA ram_0010_t002_data
C - - - - - 0x03CB32 0F:CB22: B5 53     LDA ram_0053,X
C - - - - - 0x03CB34 0F:CB24: 85 11     STA ram_0010_t002_data + $01
C - - - - - 0x03CB36 0F:CB26: A2 FF     LDX #$FF
C - - - - - 0x03CB38 0F:CB28: A4 65     LDY ram_0065
C - - - - - 0x03CB3A 0F:CB2A: B9 5B 00  LDA ram_blk_drawing,Y
C - - - - - 0x03CB3D 0F:CB2D: 29 01     AND #$01
C - - - - - 0x03CB3F 0F:CB2F: D0 08     BNE bra_CB39
C - - - - - 0x03CB41 0F:CB31: B9 5B 00  LDA ram_blk_drawing,Y
C - - - - - 0x03CB44 0F:CB34: 29 FE     AND #$FE
; * 04
C - - - - - 0x03CB46 0F:CB36: 0A        ASL
C - - - - - 0x03CB47 0F:CB37: 0A        ASL
C - - - - - 0x03CB48 0F:CB38: AA        TAX
bra_CB39:
C - - - - - 0x03CB49 0F:CB39: 86 04     STX ram_0004_temp
C - - - - - 0x03CB4B 0F:CB3B: B9 5B 00  LDA ram_blk_drawing,Y
C - - - - - 0x03CB4E 0F:CB3E: 29 03     AND #$03
; * 04
C - - - - - 0x03CB50 0F:CB40: 0A        ASL
C - - - - - 0x03CB51 0F:CB41: 0A        ASL
C - - - - - 0x03CB52 0F:CB42: 85 12     STA ram_0012_temp
C - - - - - 0x03CB54 0F:CB44: A6 1D     LDX ram_index_ppu_buffer
C - - - - - 0x03CB56 0F:CB46: B9 5B 00  LDA ram_blk_drawing,Y
C - - - - - 0x03CB59 0F:CB49: 29 03     AND #$03
C - - - - - 0x03CB5B 0F:CB4B: C9 01     CMP #$01
C - - - - - 0x03CB5D 0F:CB4D: D0 04     BNE bra_CB53
C - - - - - 0x03CB5F 0F:CB4F: A9 07     LDA #$07
C - - - - - 0x03CB61 0F:CB51: D0 02     BNE bra_CB55    ; jmp
bra_CB53:
C - - - - - 0x03CB63 0F:CB53: A9 06     LDA #$06
bra_CB55:
C - - - - - 0x03CB65 0F:CB55: 9D 00 03  STA ram_ppu_buffer,X
C - - - - - 0x03CB68 0F:CB58: 85 06     STA ram_0006_t011
C - - - - - 0x03CB6A 0F:CB5A: E8        INX
C - - - - - 0x03CB6B 0F:CB5B: A9 00     LDA #$00
C - - - - - 0x03CB6D 0F:CB5D: 85 61     STA ram_ppu_address_lo
C - - - - - 0x03CB6F 0F:CB5F: A4 65     LDY ram_0065
C - - - - - 0x03CB71 0F:CB61: B9 59 00  LDA ram_blk_section,Y
C - - - - - 0x03CB74 0F:CB64: 29 07     AND #$07
C - - - - - 0x03CB76 0F:CB66: 4A        LSR
C - - - - - 0x03CB77 0F:CB67: 66 61     ROR ram_ppu_address_lo
C - - - - - 0x03CB79 0F:CB69: 18        CLC
C - - - - - 0x03CB7A 0F:CB6A: 69 28     ADC #$28
C - - - - - 0x03CB7C 0F:CB6C: 9D 01 03  STA ram_ppu_buffer + $01,X
C - - - - - 0x03CB7F 0F:CB6F: B9 5B 00  LDA ram_blk_drawing,Y
C - - - - - 0x03CB82 0F:CB72: 29 03     AND #$03
; * 20
C - - - - - 0x03CB84 0F:CB74: 0A        ASL
C - - - - - 0x03CB85 0F:CB75: 0A        ASL
C - - - - - 0x03CB86 0F:CB76: 0A        ASL
C - - - - - 0x03CB87 0F:CB77: 0A        ASL
C - - - - - 0x03CB88 0F:CB78: 0A        ASL
C - - - - - 0x03CB89 0F:CB79: 18        CLC
C - - - - - 0x03CB8A 0F:CB7A: 65 61     ADC ram_ppu_address_lo
C - - - - - 0x03CB8C 0F:CB7C: 9D 00 03  STA ram_ppu_buffer,X
C - - - - - 0x03CB8F 0F:CB7F: E8        INX
C - - - - - 0x03CB90 0F:CB80: E8        INX
C - - - - - 0x03CB91 0F:CB81: 86 1D     STX ram_index_ppu_buffer
C - - - - - 0x03CB93 0F:CB83: A5 06     LDA ram_0006_t011
C - - - - - 0x03CB95 0F:CB85: C9 07     CMP #$07
C - - - - - 0x03CB97 0F:CB87: D0 13     BNE bra_CB9C
C - - - - - 0x03CB99 0F:CB89: B9 59 00  LDA ram_blk_section,Y
C - - - - - 0x03CB9C 0F:CB8C: 29 07     AND #$07
C - - - - - 0x03CB9E 0F:CB8E: A8        TAY
C - - - - - 0x03CB9F 0F:CB8F: B9 5C CD  LDA tbl_CD5C,Y
C - - - - - 0x03CBA2 0F:CB92: 9D 20 03  STA ram_ppu_buffer + $20,X
C - - - - - 0x03CBA5 0F:CB95: A9 2B     LDA #$2B
C - - - - - 0x03CBA7 0F:CB97: 9D 21 03  STA ram_ppu_buffer + $21,X
C - - - - - 0x03CBAA 0F:CB9A: 86 07     STX ram_0007_t004
bra_CB9C:
C - - - - - 0x03CBAC 0F:CB9C: 20 6C CF  JSR sub_CF6C_calculate_pointer_for_4x4_block
C - - - - - 0x03CBAF 0F:CB9F: A4 12     LDY ram_0012_temp
C - - - - - 0x03CBB1 0F:CBA1: 20 EA CB  JSR sub_CBEA_write_4_tiles_to_ppu_buffer
C - - - - - 0x03CBB4 0F:CBA4: 20 6C CF  JSR sub_CF6C_calculate_pointer_for_4x4_block
C - - - - - 0x03CBB7 0F:CBA7: A4 12     LDY ram_0012_temp
C - - - - - 0x03CBB9 0F:CBA9: 20 EA CB  JSR sub_CBEA_write_4_tiles_to_ppu_buffer
C - - - - - 0x03CBBC 0F:CBAC: 20 6C CF  JSR sub_CF6C_calculate_pointer_for_4x4_block
C - - - - - 0x03CBBF 0F:CBAF: A4 12     LDY ram_0012_temp
C - - - - - 0x03CBC1 0F:CBB1: 20 EA CB  JSR sub_CBEA_write_4_tiles_to_ppu_buffer
C - - - - - 0x03CBC4 0F:CBB4: 20 6C CF  JSR sub_CF6C_calculate_pointer_for_4x4_block
C - - - - - 0x03CBC7 0F:CBB7: A4 12     LDY ram_0012_temp
C - - - - - 0x03CBC9 0F:CBB9: 20 EA CB  JSR sub_CBEA_write_4_tiles_to_ppu_buffer
C - - - - - 0x03CBCC 0F:CBBC: 20 6C CF  JSR sub_CF6C_calculate_pointer_for_4x4_block
C - - - - - 0x03CBCF 0F:CBBF: A4 12     LDY ram_0012_temp
C - - - - - 0x03CBD1 0F:CBC1: 20 EA CB  JSR sub_CBEA_write_4_tiles_to_ppu_buffer
C - - - - - 0x03CBD4 0F:CBC4: 20 6C CF  JSR sub_CF6C_calculate_pointer_for_4x4_block
C - - - - - 0x03CBD7 0F:CBC7: A4 12     LDY ram_0012_temp
C - - - - - 0x03CBD9 0F:CBC9: 20 EA CB  JSR sub_CBEA_write_4_tiles_to_ppu_buffer
C - - - - - 0x03CBDC 0F:CBCC: 20 6C CF  JSR sub_CF6C_calculate_pointer_for_4x4_block
C - - - - - 0x03CBDF 0F:CBCF: A4 12     LDY ram_0012_temp
C - - - - - 0x03CBE1 0F:CBD1: 20 EA CB  JSR sub_CBEA_write_4_tiles_to_ppu_buffer
C - - - - - 0x03CBE4 0F:CBD4: 20 6C CF  JSR sub_CF6C_calculate_pointer_for_4x4_block
C - - - - - 0x03CBE7 0F:CBD7: A4 12     LDY ram_0012_temp
C - - - - - 0x03CBE9 0F:CBD9: 20 EA CB  JSR sub_CBEA_write_4_tiles_to_ppu_buffer
C - - - - - 0x03CBEC 0F:CBDC: A5 06     LDA ram_0006_t011
C - - - - - 0x03CBEE 0F:CBDE: C9 06     CMP #$06
C - - - - - 0x03CBF0 0F:CBE0: F0 07     BEQ bra_CBE9_RTS
C - - - - - 0x03CBF2 0F:CBE2: A5 1D     LDA ram_index_ppu_buffer
C - - - - - 0x03CBF4 0F:CBE4: 18        CLC
C - - - - - 0x03CBF5 0F:CBE5: 69 0A     ADC #$0A
C - - - - - 0x03CBF7 0F:CBE7: 85 1D     STA ram_index_ppu_buffer
bra_CBE9_RTS:
C - - - - - 0x03CBF9 0F:CBE9: 60        RTS



sub_CBEA_write_4_tiles_to_ppu_buffer:
; bzk optimize, put LDY 0012 here instead of before JSRs
C - - - - - 0x03CBFA 0F:CBEA: A6 1D     LDX ram_index_ppu_buffer
C - - - - - 0x03CBFC 0F:CBEC: B1 02     LDA (ram_0002_t004_data),Y
C - - - - - 0x03CBFE 0F:CBEE: 9D 00 03  STA ram_ppu_buffer,X
C - - - - - 0x03CC01 0F:CBF1: E8        INX
C - - - - - 0x03CC02 0F:CBF2: C8        INY
C - - - - - 0x03CC03 0F:CBF3: B1 02     LDA (ram_0002_t004_data),Y
C - - - - - 0x03CC05 0F:CBF5: 9D 00 03  STA ram_ppu_buffer,X
C - - - - - 0x03CC08 0F:CBF8: E8        INX
C - - - - - 0x03CC09 0F:CBF9: C8        INY
C - - - - - 0x03CC0A 0F:CBFA: B1 02     LDA (ram_0002_t004_data),Y
C - - - - - 0x03CC0C 0F:CBFC: 9D 00 03  STA ram_ppu_buffer,X
C - - - - - 0x03CC0F 0F:CBFF: E8        INX
C - - - - - 0x03CC10 0F:CC00: C8        INY
C - - - - - 0x03CC11 0F:CC01: B1 02     LDA (ram_0002_t004_data),Y
C - - - - - 0x03CC13 0F:CC03: 9D 00 03  STA ram_ppu_buffer,X
C - - - - - 0x03CC16 0F:CC06: E8        INX
C - - - - - 0x03CC17 0F:CC07: C8        INY
C - - - - - 0x03CC18 0F:CC08: 86 1D     STX ram_index_ppu_buffer
C - - - - - 0x03CC1A 0F:CC0A: A5 06     LDA ram_0006_t011
C - - - - - 0x03CC1C 0F:CC0C: C9 06     CMP #$06
C - - - - - 0x03CC1E 0F:CC0E: F0 0D     BEQ bra_CC1D
C - - - - - 0x03CC20 0F:CC10: A6 07     LDX ram_0007_t004
C - - - - - 0x03CC22 0F:CC12: A4 63     LDY ram_0063_block_id
C - - - - - 0x03CC24 0F:CC14: B1 5F     LDA (ram_005F_t000_nametable_attr_data),Y
C - - - - - 0x03CC26 0F:CC16: 9D 22 03  STA ram_ppu_buffer + $22,X
C - - - - - 0x03CC29 0F:CC19: E6 07     INC ram_0007_t004
C - - - - - 0x03CC2B 0F:CC1B: D0 23     BNE bra_CC40    ; jmp
bra_CC1D:
C - - - - - 0x03CC2D 0F:CC1D: A4 04     LDY ram_0004_temp
C - - - - - 0x03CC2F 0F:CC1F: C0 FF     CPY #$FF
C - - - - - 0x03CC31 0F:CC21: F0 1D     BEQ bra_CC40
C - - - - - 0x03CC33 0F:CC23: BD FC 02  LDA ram_ppu_buffer - $04,X
C - - - - - 0x03CC36 0F:CC26: 20 B9 D3  JSR sub_D3B9
C - - - - - 0x03CC39 0F:CC29: 98        TYA
; * 10
C - - - - - 0x03CC3A 0F:CC2A: 0A        ASL
C - - - - - 0x03CC3B 0F:CC2B: 0A        ASL
C - - - - - 0x03CC3C 0F:CC2C: 0A        ASL
C - - - - - 0x03CC3D 0F:CC2D: 0A        ASL
C - - - - - 0x03CC3E 0F:CC2E: 85 05     STA ram_0005_temp
C - - - - - 0x03CC40 0F:CC30: BD FE 02  LDA ram_ppu_buffer - $02,X
C - - - - - 0x03CC43 0F:CC33: 20 B9 D3  JSR sub_D3B9
C - - - - - 0x03CC46 0F:CC36: 98        TYA
C - - - - - 0x03CC47 0F:CC37: 05 05     ORA ram_0005_temp
C - - - - - 0x03CC49 0F:CC39: A4 04     LDY ram_0004_temp
C - - - - - 0x03CC4B 0F:CC3B: 99 E0 06  STA ram_06E0,Y
C - - - - - 0x03CC4E 0F:CC3E: E6 04     INC ram_0004_temp
bra_CC40:
C - - - - - 0x03CC50 0F:CC40: E6 10     INC ram_0010_temp
C - - - - - 0x03CC52 0F:CC42: D0 02     BNE bra_CC46_RTS
; if overflow
C - - - - - 0x03CC54 0F:CC44: E6 11     INC ram_0011_temp
bra_CC46_RTS:
C - - - - - 0x03CC56 0F:CC46: 60        RTS



sub_CC47:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x03CC57 0F:CC47: 20 05 C9  JSR sub_C905_select_proper_prg_bank_for_blk
C - - - - - 0x03CC5A 0F:CC4A: A5 5A     LDA ram_section_ahead
C - - - - - 0x03CC5C 0F:CC4C: 10 03     BPL bra_CC51
C - - - - - 0x03CC5E 0F:CC4E: 4C 4E CD  JMP loc_CD4E
bra_CC51:
C - - - - - 0x03CC61 0F:CC51: 0A        ASL
C - - - - - 0x03CC62 0F:CC52: 0A        ASL
C - - - - - 0x03CC63 0F:CC53: 26 11     ROL ram_0011_temp
C - - - - - 0x03CC65 0F:CC55: 0A        ASL
C - - - - - 0x03CC66 0F:CC56: 26 11     ROL ram_0011_temp
C - - - - - 0x03CC68 0F:CC58: 85 10     STA ram_0010_temp
C - - - - - 0x03CC6A 0F:CC5A: A5 11     LDA ram_0011_temp
C - - - - - 0x03CC6C 0F:CC5C: 29 03     AND #$03
C - - - - - 0x03CC6E 0F:CC5E: 85 11     STA ram_0011_temp
C - - - - - 0x03CC70 0F:CC60: A5 B6     LDA ram_00B6
C - - - - - 0x03CC72 0F:CC62: A2 10     LDX #$10
C - - - - - 0x03CC74 0F:CC64: 20 99 E8  JSR sub_E899_increase_indirect_address
; bzk optimize, write CLC + ADC 01 after 0x03CC70, delete 0x03CC77-0x03CC7B
C - - - - - 0x03CC77 0F:CC67: A9 01     LDA #$01
C - - - - - 0x03CC79 0F:CC69: A2 10     LDX #$10
C - - - - - 0x03CC7B 0F:CC6B: 20 99 E8  JSR sub_E899_increase_indirect_address
C - - - - - 0x03CC7E 0F:CC6E: A5 50     LDA ram_0050_t000_data
C - - - - - 0x03CC80 0F:CC70: 18        CLC
C - - - - - 0x03CC81 0F:CC71: 65 10     ADC ram_0010_temp
C - - - - - 0x03CC83 0F:CC73: 85 10     STA ram_0010_temp
C - - - - - 0x03CC85 0F:CC75: A5 51     LDA ram_0050_t000_data + $01
C - - - - - 0x03CC87 0F:CC77: 65 11     ADC ram_0011_temp
C - - - - - 0x03CC89 0F:CC79: 85 11     STA ram_0011_temp
loc_CC7B:
C D 2 - - - 0x03CC8B 0F:CC7B: A9 00     LDA #$00
C - - - - - 0x03CC8D 0F:CC7D: 85 61     STA ram_ppu_address_lo
C - - - - - 0x03CC8F 0F:CC7F: A5 5A     LDA ram_section_ahead
C - - - - - 0x03CC91 0F:CC81: 4A        LSR
C - - - - - 0x03CC92 0F:CC82: 66 61     ROR ram_ppu_address_lo
C - - - - - 0x03CC94 0F:CC84: 29 03     AND #$03
C - - - - - 0x03CC96 0F:CC86: 18        CLC
C - - - - - 0x03CC97 0F:CC87: 69 28     ADC #$28
C - - - - - 0x03CC99 0F:CC89: 85 62     STA ram_ppu_address_hi
C - - - - - 0x03CC9B 0F:CC8B: A5 B6     LDA ram_00B6
; * 04
C - - - - - 0x03CC9D 0F:CC8D: 0A        ASL
C - - - - - 0x03CC9E 0F:CC8E: 0A        ASL
C - - - - - 0x03CC9F 0F:CC8F: A2 61     LDX #< ram_ppu_address_lo
C - - - - - 0x03CCA1 0F:CC91: 20 99 E8  JSR sub_E899_increase_indirect_address
C - - - - - 0x03CCA4 0F:CC94: A5 5A     LDA ram_section_ahead
C - - - - - 0x03CCA6 0F:CC96: 29 07     AND #$07
; * 10
C - - - - - 0x03CCA8 0F:CC98: 0A        ASL
C - - - - - 0x03CCA9 0F:CC99: 0A        ASL
C - - - - - 0x03CCAA 0F:CC9A: 0A        ASL
C - - - - - 0x03CCAB 0F:CC9B: 0A        ASL
C - - - - - 0x03CCAC 0F:CC9C: 85 12     STA ram_0012_temp
C - - - - - 0x03CCAE 0F:CC9E: 20 6C CF  JSR sub_CF6C_calculate_pointer_for_4x4_block
C - - - - - 0x03CCB1 0F:CCA1: A5 5A     LDA ram_section_ahead
C - - - - - 0x03CCB3 0F:CCA3: 29 07     AND #$07
C - - - - - 0x03CCB5 0F:CCA5: C9 07     CMP #$07
C - - - - - 0x03CCB7 0F:CCA7: D0 0A     BNE bra_CCB3
C - - - - - 0x03CCB9 0F:CCA9: A9 02     LDA #$02
C - - - - - 0x03CCBB 0F:CCAB: 85 06     STA ram_0006_t00F
C - - - - - 0x03CCBD 0F:CCAD: 20 C0 E8  JSR sub_E8C0_set_buffer_mode_05
C - - - - - 0x03CCC0 0F:CCB0: 4C C0 CC  JMP loc_CCC0
bra_CCB3:
C - - - - - 0x03CCC3 0F:CCB3: A9 04     LDA #$04
C - - - - - 0x03CCC5 0F:CCB5: 85 06     STA ram_0006_t00F
C - - - - - 0x03CCC7 0F:CCB7: 20 C6 E8  JSR sub_E8C6_set_buffer_mode_04
C - - - - - 0x03CCCA 0F:CCBA: 4C C0 CC  JMP loc_CCC0
bra_CCBD_loop:
C - - - - - 0x03CCCD 0F:CCBD: 20 BB E8  JSR sub_E8BB
loc_CCC0:
C D 2 - - - 0x03CCD0 0F:CCC0: A0 00     LDY #$00
bra_CCC2_loop:
C - - - - - 0x03CCD2 0F:CCC2: B1 02     LDA (ram_0002_t004_data),Y
C - - - - - 0x03CCD4 0F:CCC4: 9D 00 03  STA ram_ppu_buffer,X
C - - - - - 0x03CCD7 0F:CCC7: E8        INX
C - - - - - 0x03CCD8 0F:CCC8: C8        INY
C - - - - - 0x03CCD9 0F:CCC9: C0 04     CPY #$04
C - - - - - 0x03CCDB 0F:CCCB: D0 F5     BNE bra_CCC2_loop
C - - - - - 0x03CCDD 0F:CCCD: 86 1D     STX ram_index_ppu_buffer
C - - - - - 0x03CCDF 0F:CCCF: A5 06     LDA ram_0006_t00F
C - - - - - 0x03CCE1 0F:CCD1: 29 01     AND #$01
C - - - - - 0x03CCE3 0F:CCD3: D0 2A     BNE bra_CCFF
C - - - - - 0x03CCE5 0F:CCD5: BD FC 02  LDA ram_ppu_buffer - $04,X
C - - - - - 0x03CCE8 0F:CCD8: 20 B9 D3  JSR sub_D3B9
C - - - - - 0x03CCEB 0F:CCDB: 98        TYA
; * 10
C - - - - - 0x03CCEC 0F:CCDC: 0A        ASL
C - - - - - 0x03CCED 0F:CCDD: 0A        ASL
C - - - - - 0x03CCEE 0F:CCDE: 0A        ASL
C - - - - - 0x03CCEF 0F:CCDF: 0A        ASL
C - - - - - 0x03CCF0 0F:CCE0: 85 13     STA ram_0013_temp
C - - - - - 0x03CCF2 0F:CCE2: BD FE 02  LDA ram_ppu_buffer - $02,X
C - - - - - 0x03CCF5 0F:CCE5: 20 B9 D3  JSR sub_D3B9
C - - - - - 0x03CCF8 0F:CCE8: 98        TYA
C - - - - - 0x03CCF9 0F:CCE9: 05 13     ORA ram_0013_temp
C - - - - - 0x03CCFB 0F:CCEB: 85 13     STA ram_0013_temp
C - - - - - 0x03CCFD 0F:CCED: A5 12     LDA ram_0012_temp
C - - - - - 0x03CCFF 0F:CCEF: 18        CLC
C - - - - - 0x03CD00 0F:CCF0: 65 B6     ADC ram_00B6
C - - - - - 0x03CD02 0F:CCF2: A8        TAY
C - - - - - 0x03CD03 0F:CCF3: A5 13     LDA ram_0013_temp
C - - - - - 0x03CD05 0F:CCF5: 99 E0 06  STA ram_06E0,Y
C - - - - - 0x03CD08 0F:CCF8: A5 12     LDA ram_0012_temp
C - - - - - 0x03CD0A 0F:CCFA: 18        CLC
C - - - - - 0x03CD0B 0F:CCFB: 69 08     ADC #$08
C - - - - - 0x03CD0D 0F:CCFD: 85 12     STA ram_0012_temp
bra_CCFF:
C - - - - - 0x03CD0F 0F:CCFF: A9 04     LDA #$04
C - - - - - 0x03CD11 0F:CD01: A2 02     LDX #< ram_0002_t004_data
C - - - - - 0x03CD13 0F:CD03: 20 99 E8  JSR sub_E899_increase_indirect_address
C - - - - - 0x03CD16 0F:CD06: A9 20     LDA #$20
C - - - - - 0x03CD18 0F:CD08: A2 61     LDX #< ram_ppu_address_lo
C - - - - - 0x03CD1A 0F:CD0A: 20 99 E8  JSR sub_E899_increase_indirect_address
C - - - - - 0x03CD1D 0F:CD0D: C6 06     DEC ram_0006_t00F
C - - - - - 0x03CD1F 0F:CD0F: D0 AC     BNE bra_CCBD_loop
C - - - - - 0x03CD21 0F:CD11: A5 5A     LDA ram_section_ahead
C - - - - - 0x03CD23 0F:CD13: 29 07     AND #$07
C - - - - - 0x03CD25 0F:CD15: A8        TAY
C - - - - - 0x03CD26 0F:CD16: B9 5C CD  LDA tbl_CD5C,Y
C - - - - - 0x03CD29 0F:CD19: 18        CLC
C - - - - - 0x03CD2A 0F:CD1A: 65 B6     ADC ram_00B6
C - - - - - 0x03CD2C 0F:CD1C: 85 04     STA ram_0004_temp
C - - - - - 0x03CD2E 0F:CD1E: A6 1D     LDX ram_index_ppu_buffer
C - - - - - 0x03CD30 0F:CD20: A5 04     LDA ram_0004_temp
C - - - - - 0x03CD32 0F:CD22: 9D 00 03  STA ram_ppu_buffer,X
C - - - - - 0x03CD35 0F:CD25: E8        INX
C - - - - - 0x03CD36 0F:CD26: A9 2B     LDA #$2B
C - - - - - 0x03CD38 0F:CD28: 9D 00 03  STA ram_ppu_buffer,X
C - - - - - 0x03CD3B 0F:CD2B: E8        INX
C - - - - - 0x03CD3C 0F:CD2C: A4 63     LDY ram_0063_block_id
C - - - - - 0x03CD3E 0F:CD2E: B1 5F     LDA (ram_005F_t000_nametable_attr_data),Y
C - - - - - 0x03CD40 0F:CD30: 9D 00 03  STA ram_ppu_buffer,X
C - - - - - 0x03CD43 0F:CD33: E8        INX
C - - - - - 0x03CD44 0F:CD34: 86 1D     STX ram_index_ppu_buffer
C - - - - - 0x03CD46 0F:CD36: A9 01     LDA #$01
C - - - - - 0x03CD48 0F:CD38: A2 10     LDX #$10
C - - - - - 0x03CD4A 0F:CD3A: 20 99 E8  JSR sub_E899_increase_indirect_address
C - - - - - 0x03CD4D 0F:CD3D: E6 B6     INC ram_00B6
C - - - - - 0x03CD4F 0F:CD3F: A5 B6     LDA ram_00B6
C - - - - - 0x03CD51 0F:CD41: 29 03     AND #$03
C - - - - - 0x03CD53 0F:CD43: F0 03     BEQ bra_CD48
C - - - - - 0x03CD55 0F:CD45: 4C 7B CC  JMP loc_CC7B
bra_CD48:
C - - - - - 0x03CD58 0F:CD48: A5 B6     LDA ram_00B6
C - - - - - 0x03CD5A 0F:CD4A: C9 08     CMP #$08
C - - - - - 0x03CD5C 0F:CD4C: D0 06     BNE bra_CD54
loc_CD4E:
C D 2 - - - 0x03CD5E 0F:CD4E: A9 00     LDA #$00
C - - - - - 0x03CD60 0F:CD50: 85 B6     STA ram_00B6
C - - - - - 0x03CD62 0F:CD52: E6 5A     INC ram_section_ahead
bra_CD54:
C - - - - - 0x03CD64 0F:CD54: C6 64     DEC ram_0064_timer
C - - - - - 0x03CD66 0F:CD56: D0 02     BNE bra_CD5A
C - - - - - 0x03CD68 0F:CD58: 38        SEC
C - - - - - 0x03CD69 0F:CD59: 60        RTS
bra_CD5A:
C - - - - - 0x03CD6A 0F:CD5A: 18        CLC
C - - - - - 0x03CD6B 0F:CD5B: 60        RTS



tbl_CD5C:
- D 2 - - - 0x03CD6C 0F:CD5C: C0        .byte $C0   ; 00 
- D 2 - - - 0x03CD6D 0F:CD5D: C8        .byte $C8   ; 01 
- D 2 - - - 0x03CD6E 0F:CD5E: D0        .byte $D0   ; 02 
- D 2 - - - 0x03CD6F 0F:CD5F: D8        .byte $D8   ; 03 
- D 2 - - - 0x03CD70 0F:CD60: E0        .byte $E0   ; 04 
- D 2 - - - 0x03CD71 0F:CD61: E8        .byte $E8   ; 05 
- D 2 - - - 0x03CD72 0F:CD62: F0        .byte $F0   ; 06 
- D 2 - - - 0x03CD73 0F:CD63: F8        .byte $F8   ; 07 



sub_CD64:
C - - - - - 0x03CD74 0F:CD64: A5 65     LDA ram_0065
C - - - - - 0x03CD76 0F:CD66: D0 0A     BNE bra_CD72
C - - - - - 0x03CD78 0F:CD68: A5 71     LDA ram_0071_blk_config
; * 08
C - - - - - 0x03CD7A 0F:CD6A: 0A        ASL
C - - - - - 0x03CD7B 0F:CD6B: 0A        ASL
C - - - - - 0x03CD7C 0F:CD6C: 0A        ASL
C - - - - - 0x03CD7D 0F:CD6D: 18        CLC
C - - - - - 0x03CD7E 0F:CD6E: 69 07     ADC #$07
C - - - - - 0x03CD80 0F:CD70: D0 02     BNE bra_CD74
bra_CD72:
C - - - - - 0x03CD82 0F:CD72: A9 00     LDA #$00
bra_CD74:
C - - - - - 0x03CD84 0F:CD74: 85 5A     STA ram_section_ahead
sub_CD76:
C - - - - - 0x03CD86 0F:CD76: A9 0A     LDA #$0A
C - - - - - 0x03CD88 0F:CD78: 85 64     STA ram_0064_timer
C - - - - - 0x03CD8A 0F:CD7A: 60        RTS



sub_CD7B:
C - - - - - 0x03CD8B 0F:CD7B: A9 00     LDA #$00
C - - - - - 0x03CD8D 0F:CD7D: 85 B6     STA ram_00B6
C - - - - - 0x03CD8F 0F:CD7F: A9 10     LDA #$10
C - - - - - 0x03CD91 0F:CD81: D0 02     BNE bra_CD85    ; jmp



sub_CD83:
C - - - - - 0x03CD93 0F:CD83: A9 0C     LDA #$0C
bra_CD85:
C - - - - - 0x03CD95 0F:CD85: 85 64     STA ram_0064_timer
C - - - - - 0x03CD97 0F:CD87: A5 59     LDA ram_section_behind
C - - - - - 0x03CD99 0F:CD89: 85 5A     STA ram_section_ahead
C - - - - - 0x03CD9B 0F:CD8B: 60        RTS



sub_CD8C:
C - - - - - 0x03CD9C 0F:CD8C: A9 03     LDA #$03
C - - - - - 0x03CD9E 0F:CD8E: 85 07     STA ram_0007_t003
C - - - - - 0x03CDA0 0F:CD90: A0 00     LDY #$00
C - - - - - 0x03CDA2 0F:CD92: A5 64     LDA ram_0064_timer
C - - - - - 0x03CDA4 0F:CD94: 29 01     AND #$01
C - - - - - 0x03CDA6 0F:CD96: F0 02     BEQ bra_CD9A
C - - - - - 0x03CDA8 0F:CD98: A0 03     LDY #$03
bra_CD9A:
C - - - - - 0x03CDAA 0F:CD9A: 84 5C     STY ram_drawing_ahead
C - - - - - 0x03CDAC 0F:CD9C: A5 65     LDA ram_0065
C - - - - - 0x03CDAE 0F:CD9E: D0 08     BNE bra_CDA8
C - - - - - 0x03CDB0 0F:CDA0: A5 71     LDA ram_0071_blk_config
C - - - - - 0x03CDB2 0F:CDA2: 29 01     AND #$01
C - - - - - 0x03CDB4 0F:CDA4: D0 1A     BNE bra_CDC0
C - - - - - 0x03CDB6 0F:CDA6: F0 06     BEQ bra_CDAE    ; jmp
bra_CDA8:
C - - - - - 0x03CDB8 0F:CDA8: A5 57     LDA ram_cam_pos_hi
C - - - - - 0x03CDBA 0F:CDAA: 29 01     AND #$01
C - - - - - 0x03CDBC 0F:CDAC: D0 12     BNE bra_CDC0
bra_CDAE:
C - - - - - 0x03CDBE 0F:CDAE: A5 75     LDA ram_0075
C - - - - - 0x03CDC0 0F:CDB0: 29 01     AND #$01
C - - - - - 0x03CDC2 0F:CDB2: D0 1C     BNE bra_CDD0
bra_CDB4:
C - - - - - 0x03CDC4 0F:CDB4: A2 08     LDX #$08
C - - - - - 0x03CDC6 0F:CDB6: D0 1A     BNE bra_CDD2    ; jmp



ofs_041_0x03CDC8_05:
; triggers during credits
C - - J - - 0x03CDC8 0F:CDB8: A9 00     LDA #$00
C - - - - - 0x03CDCA 0F:CDBA: 85 5C     STA ram_drawing_ahead
C - - - - - 0x03CDCC 0F:CDBC: A9 06     LDA #$06
C - - - - - 0x03CDCE 0F:CDBE: 85 07     STA ram_0007_t003
bra_CDC0:
C - - - - - 0x03CDD0 0F:CDC0: A5 75     LDA ram_0075
C - - - - - 0x03CDD2 0F:CDC2: 29 01     AND #$01
C - - - - - 0x03CDD4 0F:CDC4: D0 EE     BNE bra_CDB4
C - - - - - 0x03CDD6 0F:CDC6: F0 08     BEQ bra_CDD0    ; jmp



sub_CDC8:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x03CDD8 0F:CDC8: A9 00     LDA #$00
C - - - - - 0x03CDDA 0F:CDCA: 85 5C     STA ram_drawing_ahead
C - - - - - 0x03CDDC 0F:CDCC: A9 06     LDA #$06
C - - - - - 0x03CDDE 0F:CDCE: 85 07     STA ram_0007_t003
bra_CDD0:
C - - - - - 0x03CDE0 0F:CDD0: A2 00     LDX #$00
bra_CDD2:
C - - - - - 0x03CDE2 0F:CDD2: 86 08     STX ram_0008_t036
C - - - - - 0x03CDE4 0F:CDD4: 20 05 C9  JSR sub_C905_select_proper_prg_bank_for_blk
C - - - - - 0x03CDE7 0F:CDD7: A5 5A     LDA ram_section_ahead
C - - - - - 0x03CDE9 0F:CDD9: 10 03     BPL bra_CDDE
C - - - - - 0x03CDEB 0F:CDDB: 4C 27 CF  JMP loc_CF27
bra_CDDE:
C - - - - - 0x03CDEE 0F:CDDE: C5 7B     CMP ram_007B
C - - - - - 0x03CDF0 0F:CDE0: 90 03     BCC bra_CDE5
C - - - - - 0x03CDF2 0F:CDE2: 4C 27 CF  JMP loc_CF27
bra_CDE5:
; / 08
C - - - - - 0x03CDF5 0F:CDE5: 4A        LSR
C - - - - - 0x03CDF6 0F:CDE6: 4A        LSR
C - - - - - 0x03CDF7 0F:CDE7: 4A        LSR
C - - - - - 0x03CDF8 0F:CDE8: A8        TAY
C - - - - - 0x03CDF9 0F:CDE9: A9 00     LDA #$00
C - - - - - 0x03CDFB 0F:CDEB: 85 10     STA ram_0010_temp
C - - - - - 0x03CDFD 0F:CDED: 85 11     STA ram_0011_temp
loc_CDEF_loop:
C D 2 - - - 0x03CDFF 0F:CDEF: 88        DEY
C - - - - - 0x03CE00 0F:CDF0: 30 0A     BMI bra_CDFC
C - - - - - 0x03CE02 0F:CDF2: A9 30     LDA #$30
C - - - - - 0x03CE04 0F:CDF4: A2 10     LDX #$10
C - - - - - 0x03CE06 0F:CDF6: 20 99 E8  JSR sub_E899_increase_indirect_address
C - - - - - 0x03CE09 0F:CDF9: 4C EF CD  JMP loc_CDEF_loop
bra_CDFC:
C - - - - - 0x03CE0C 0F:CDFC: A5 5C     LDA ram_drawing_ahead
; * 08
C - - - - - 0x03CE0E 0F:CDFE: 0A        ASL
C - - - - - 0x03CE0F 0F:CDFF: 0A        ASL
C - - - - - 0x03CE10 0F:CE00: 0A        ASL
C - - - - - 0x03CE11 0F:CE01: A2 10     LDX #$10
C - - - - - 0x03CE13 0F:CE03: 20 99 E8  JSR sub_E899_increase_indirect_address
C - - - - - 0x03CE16 0F:CE06: A5 5A     LDA ram_section_ahead
C - - - - - 0x03CE18 0F:CE08: 29 07     AND #$07
C - - - - - 0x03CE1A 0F:CE0A: A8        TAY
C - - - - - 0x03CE1B 0F:CE0B: C8        INY
C - - - - - 0x03CE1C 0F:CE0C: 98        TYA
C - - - - - 0x03CE1D 0F:CE0D: A2 10     LDX #$10
C - - - - - 0x03CE1F 0F:CE0F: 20 99 E8  JSR sub_E899_increase_indirect_address
C - - - - - 0x03CE22 0F:CE12: A2 20     LDX #$20    ; 20xx
C - - - - - 0x03CE24 0F:CE14: A5 5A     LDA ram_section_ahead
C - - - - - 0x03CE26 0F:CE16: 29 08     AND #$08
C - - - - - 0x03CE28 0F:CE18: 45 08     EOR ram_0008_t036
C - - - - - 0x03CE2A 0F:CE1A: F0 02     BEQ bra_CE1E
C - - - - - 0x03CE2C 0F:CE1C: A2 24     LDX #$24    ; 24xx
bra_CE1E:
C - - - - - 0x03CE2E 0F:CE1E: 86 62     STX ram_ppu_address_hi
C - - - - - 0x03CE30 0F:CE20: A5 5A     LDA ram_section_ahead
C - - - - - 0x03CE32 0F:CE22: 29 07     AND #$07
; * 04
C - - - - - 0x03CE34 0F:CE24: 0A        ASL
C - - - - - 0x03CE35 0F:CE25: 0A        ASL
C - - - - - 0x03CE36 0F:CE26: 18        CLC
C - - - - - 0x03CE37 0F:CE27: 69 C0     ADC #$C0
C - - - - - 0x03CE39 0F:CE29: 85 61     STA ram_ppu_address_lo
C - - - - - 0x03CE3B 0F:CE2B: A5 5C     LDA ram_drawing_ahead
C - - - - - 0x03CE3D 0F:CE2D: F0 0D     BEQ bra_CE3C
C - - - - - 0x03CE3F 0F:CE2F: A5 61     LDA ram_ppu_address_lo
C - - - - - 0x03CE41 0F:CE31: 18        CLC
C - - - - - 0x03CE42 0F:CE32: 69 40     ADC #$40
C - - - - - 0x03CE44 0F:CE34: 85 61     STA ram_ppu_address_lo
C - - - - - 0x03CE46 0F:CE36: A5 62     LDA ram_ppu_address_hi
C - - - - - 0x03CE48 0F:CE38: 69 01     ADC #$01
C - - - - - 0x03CE4A 0F:CE3A: 85 62     STA ram_ppu_address_hi
bra_CE3C:
C - - - - - 0x03CE4C 0F:CE3C: A5 50     LDA ram_0050_t000_data
C - - - - - 0x03CE4E 0F:CE3E: 18        CLC
C - - - - - 0x03CE4F 0F:CE3F: 65 10     ADC ram_0010_temp
C - - - - - 0x03CE51 0F:CE41: 85 10     STA ram_0010_temp
C - - - - - 0x03CE53 0F:CE43: A5 51     LDA ram_0050_t000_data + $01
C - - - - - 0x03CE55 0F:CE45: 65 11     ADC ram_0011_temp
C - - - - - 0x03CE57 0F:CE47: 85 11     STA ram_0011_temp
loc_CE49:
C D 2 - - - 0x03CE59 0F:CE49: 20 6C CF  JSR sub_CF6C_calculate_pointer_for_4x4_block
C - - - - - 0x03CE5C 0F:CE4C: A5 5C     LDA ram_drawing_ahead
C - - - - - 0x03CE5E 0F:CE4E: 0A        ASL
C - - - - - 0x03CE5F 0F:CE4F: 85 00     STA ram_0000_t038
C - - - - - 0x03CE61 0F:CE51: A5 5A     LDA ram_section_ahead
loc_CE53:
C D 2 - - - 0x03CE63 0F:CE53: C9 0C     CMP #$0C
C - - - - - 0x03CE65 0F:CE55: 90 05     BCC bra_CE5C
C - - - - - 0x03CE67 0F:CE57: E9 0C     SBC #$0C
C - - - - - 0x03CE69 0F:CE59: 4C 53 CE  JMP loc_CE53
bra_CE5C:
C - - - - - 0x03CE6C 0F:CE5C: A8        TAY
C - - - - - 0x03CE6D 0F:CE5D: B9 4C FD  LDA tbl_FD4C,Y
C - - - - - 0x03CE70 0F:CE60: 18        CLC
C - - - - - 0x03CE71 0F:CE61: 65 00     ADC ram_0000_t038
C - - - - - 0x03CE73 0F:CE63: 85 12     STA ram_0012_temp
C - - - - - 0x03CE75 0F:CE65: A5 5C     LDA ram_drawing_ahead
C - - - - - 0x03CE77 0F:CE67: D0 1A     BNE bra_CE83
C - - - - - 0x03CE79 0F:CE69: A9 00     LDA #$00
C - - - - - 0x03CE7B 0F:CE6B: A4 12     LDY ram_0012_temp
C - - - - - 0x03CE7D 0F:CE6D: 99 E0 06  STA ram_06E0,Y
C - - - - - 0x03CE80 0F:CE70: E6 12     INC ram_0012_temp
C - - - - - 0x03CE82 0F:CE72: A2 02     LDX #< ram_0002_t004_data
C - - - - - 0x03CE84 0F:CE74: A9 08     LDA #$08
C - - - - - 0x03CE86 0F:CE76: 20 99 E8  JSR sub_E899_increase_indirect_address
C - - - - - 0x03CE89 0F:CE79: A9 02     LDA #$02
C - - - - - 0x03CE8B 0F:CE7B: 85 06     STA ram_0006_t010
C - - - - - 0x03CE8D 0F:CE7D: 20 C0 E8  JSR sub_E8C0_set_buffer_mode_05
C - - - - - 0x03CE90 0F:CE80: 4C 90 CE  JMP loc_CE90
bra_CE83:
C - - - - - 0x03CE93 0F:CE83: A9 04     LDA #$04
C - - - - - 0x03CE95 0F:CE85: 85 06     STA ram_0006_t010
C - - - - - 0x03CE97 0F:CE87: 20 C6 E8  JSR sub_E8C6_set_buffer_mode_04
C - - - - - 0x03CE9A 0F:CE8A: 4C 90 CE  JMP loc_CE90
bra_CE8D_loop:
C - - - - - 0x03CE9D 0F:CE8D: 20 BB E8  JSR sub_E8BB
loc_CE90:
C D 2 - - - 0x03CEA0 0F:CE90: A0 00     LDY #$00
bra_CE92_loop:
C - - - - - 0x03CEA2 0F:CE92: B1 02     LDA (ram_0002_t004_data),Y
C - - - - - 0x03CEA4 0F:CE94: 9D 00 03  STA ram_ppu_buffer,X
C - - - - - 0x03CEA7 0F:CE97: E8        INX
C - - - - - 0x03CEA8 0F:CE98: C8        INY
C - - - - - 0x03CEA9 0F:CE99: C0 04     CPY #$04
C - - - - - 0x03CEAB 0F:CE9B: D0 F5     BNE bra_CE92_loop
C - - - - - 0x03CEAD 0F:CE9D: 86 1D     STX ram_index_ppu_buffer
C - - - - - 0x03CEAF 0F:CE9F: A5 06     LDA ram_0006_t010
C - - - - - 0x03CEB1 0F:CEA1: 29 01     AND #$01
C - - - - - 0x03CEB3 0F:CEA3: D0 1D     BNE bra_CEC2
C - - - - - 0x03CEB5 0F:CEA5: BD FC 02  LDA ram_ppu_buffer - $04,X
C - - - - - 0x03CEB8 0F:CEA8: 20 B9 D3  JSR sub_D3B9
C - - - - - 0x03CEBB 0F:CEAB: 98        TYA
; * 10
C - - - - - 0x03CEBC 0F:CEAC: 0A        ASL
C - - - - - 0x03CEBD 0F:CEAD: 0A        ASL
C - - - - - 0x03CEBE 0F:CEAE: 0A        ASL
C - - - - - 0x03CEBF 0F:CEAF: 0A        ASL
C - - - - - 0x03CEC0 0F:CEB0: 85 13     STA ram_0013_temp
C - - - - - 0x03CEC2 0F:CEB2: BD FE 02  LDA ram_ppu_buffer - $02,X
C - - - - - 0x03CEC5 0F:CEB5: 20 B9 D3  JSR sub_D3B9
C - - - - - 0x03CEC8 0F:CEB8: 98        TYA
C - - - - - 0x03CEC9 0F:CEB9: 05 13     ORA ram_0013_temp
C - - - - - 0x03CECB 0F:CEBB: A4 12     LDY ram_0012_temp
C - - - - - 0x03CECD 0F:CEBD: 99 E0 06  STA ram_06E0,Y
C - - - - - 0x03CED0 0F:CEC0: E6 12     INC ram_0012_temp
bra_CEC2:
C - - - - - 0x03CED2 0F:CEC2: A9 04     LDA #$04
C - - - - - 0x03CED4 0F:CEC4: A2 02     LDX #< ram_0002_t004_data
C - - - - - 0x03CED6 0F:CEC6: 20 99 E8  JSR sub_E899_increase_indirect_address
C - - - - - 0x03CED9 0F:CEC9: A9 20     LDA #$20
C - - - - - 0x03CEDB 0F:CECB: A2 61     LDX #< ram_ppu_address_lo
C - - - - - 0x03CEDD 0F:CECD: 20 99 E8  JSR sub_E899_increase_indirect_address
C - - - - - 0x03CEE0 0F:CED0: C6 06     DEC ram_0006_t010
C - - - - - 0x03CEE2 0F:CED2: D0 B9     BNE bra_CE8D_loop
C - - - - - 0x03CEE4 0F:CED4: A6 5C     LDX ram_drawing_ahead
C - - - - - 0x03CEE6 0F:CED6: A5 5A     LDA ram_section_ahead
C - - - - - 0x03CEE8 0F:CED8: 29 07     AND #$07
C - - - - - 0x03CEEA 0F:CEDA: 18        CLC
C - - - - - 0x03CEEB 0F:CEDB: 7D 1F D3  ADC tbl_D31F_ppu_address_lo,X
C - - - - - 0x03CEEE 0F:CEDE: 85 04     STA ram_0004_temp
C - - - - - 0x03CEF0 0F:CEE0: A5 5A     LDA ram_section_ahead
C - - - - - 0x03CEF2 0F:CEE2: 29 08     AND #$08
C - - - - - 0x03CEF4 0F:CEE4: 45 08     EOR ram_0008_t036
C - - - - - 0x03CEF6 0F:CEE6: F0 04     BEQ bra_CEEC
C - - - - - 0x03CEF8 0F:CEE8: A9 27     LDA #$27    ; > 27xx
C - - - - - 0x03CEFA 0F:CEEA: D0 02     BNE bra_CEEE    ; jmp
bra_CEEC:
C - - - - - 0x03CEFC 0F:CEEC: A9 23     LDA #$23    ; > 23xx
bra_CEEE:
C - - - - - 0x03CEFE 0F:CEEE: 85 05     STA ram_0005_temp
C - - - - - 0x03CF00 0F:CEF0: A6 1D     LDX ram_index_ppu_buffer
C - - - - - 0x03CF02 0F:CEF2: A5 04     LDA ram_0004_temp    ; ppu lo
C - - - - - 0x03CF04 0F:CEF4: 9D 00 03  STA ram_ppu_buffer,X
C - - - - - 0x03CF07 0F:CEF7: E8        INX
C - - - - - 0x03CF08 0F:CEF8: A5 05     LDA ram_0005_temp    ; ppu hi
C - - - - - 0x03CF0A 0F:CEFA: 9D 00 03  STA ram_ppu_buffer,X
C - - - - - 0x03CF0D 0F:CEFD: E8        INX
C - - - - - 0x03CF0E 0F:CEFE: A4 63     LDY ram_0063_block_id
C - - - - - 0x03CF10 0F:CF00: B1 5F     LDA (ram_005F_t000_nametable_attr_data),Y
C - - - - - 0x03CF12 0F:CF02: A4 5C     LDY ram_drawing_ahead
C - - - - - 0x03CF14 0F:CF04: F0 1C     BEQ bra_CF22
loc_CF06:
C D 2 - - - 0x03CF16 0F:CF06: 9D 00 03  STA ram_ppu_buffer,X
C - - - - - 0x03CF19 0F:CF09: E8        INX
C - - - - - 0x03CF1A 0F:CF0A: 86 1D     STX ram_index_ppu_buffer
C - - - - - 0x03CF1C 0F:CF0C: A9 08     LDA #$08
C - - - - - 0x03CF1E 0F:CF0E: A2 10     LDX #$10
C - - - - - 0x03CF20 0F:CF10: 20 99 E8  JSR sub_E899_increase_indirect_address
C - - - - - 0x03CF23 0F:CF13: E6 5C     INC ram_drawing_ahead
C - - - - - 0x03CF25 0F:CF15: A5 5C     LDA ram_drawing_ahead
C - - - - - 0x03CF27 0F:CF17: C9 06     CMP #$06
C - - - - - 0x03CF29 0F:CF19: F0 0C     BEQ bra_CF27
C - - - - - 0x03CF2B 0F:CF1B: C6 07     DEC ram_0007_t003
C - - - - - 0x03CF2D 0F:CF1D: F0 0A     BEQ bra_CF29
C - - - - - 0x03CF2F 0F:CF1F: 4C 49 CE  JMP loc_CE49
bra_CF22:
C - - - - - 0x03CF32 0F:CF22: 29 F0     AND #$F0
C - - - - - 0x03CF34 0F:CF24: 4C 06 CF  JMP loc_CF06
loc_CF27:
bra_CF27:
C D 2 - - - 0x03CF37 0F:CF27: E6 5A     INC ram_section_ahead
bra_CF29:
C - - - - - 0x03CF39 0F:CF29: C6 64     DEC ram_0064_timer
C - - - - - 0x03CF3B 0F:CF2B: D0 02     BNE bra_CF2F
C - - - - - 0x03CF3D 0F:CF2D: 38        SEC
C - - - - - 0x03CF3E 0F:CF2E: 60        RTS
bra_CF2F:
C - - - - - 0x03CF3F 0F:CF2F: 18        CLC
C - - - - - 0x03CF40 0F:CF30: 60        RTS



sub_CF31:
C - - - - - 0x03CF41 0F:CF31: A4 B3     LDY ram_00B3
C - - - - - 0x03CF43 0F:CF33: F0 37     BEQ bra_CF6C
C - - - - - 0x03CF45 0F:CF35: A5 7D     LDA ram_007D
C - - - - - 0x03CF47 0F:CF37: 29 F0     AND #$F0
C - - - - - 0x03CF49 0F:CF39: C9 80     CMP #$80
C - - - - - 0x03CF4B 0F:CF3B: D0 2F     BNE bra_CF6C
C - - - - - 0x03CF4D 0F:CF3D: A0 00     LDY #$00
C - - - - - 0x03CF4F 0F:CF3F: 84 03     STY ram_0003_temp
C - - - - - 0x03CF51 0F:CF41: A4 A1     LDY ram_00A1
; bzk bug, this refers to ram_tile_blocks_data if Y = 02
C - - - - - 0x03CF53 0F:CF43: B9 5B 00  LDA ram_blk_drawing,Y
C - - - - - 0x03CF56 0F:CF46: C9 03     CMP #$03
C - - - - - 0x03CF58 0F:CF48: D0 22     BNE bra_CF6C
; triggers when blocks that you walk on are falling or something
; see movie walkthrough 2, frame around 176600
C - - - - - 0x03CF5A 0F:CF4A: B9 59 00  LDA ram_blk_section,Y
C - - - - - 0x03CF5D 0F:CF4D: A8        TAY
C - - - - - 0x03CF5E 0F:CF4E: A5 7D     LDA ram_007D
C - - - - - 0x03CF60 0F:CF50: C9 81     CMP #$81
C - - - - - 0x03CF62 0F:CF52: F0 06     BEQ bra_CF5A
C - - - - - 0x03CF64 0F:CF54: B9 8E B4  LDA tbl_0x01F49E_4x4_blocks_indexes,Y  ; bank 8E
C - - - - - 0x03CF67 0F:CF57: 4C 72 CF  JMP loc_CF72_calculate_pointer_for_4x4_block___custom_index
bra_CF5A:
C - - - - - 0x03CF6A 0F:CF5A: B9 F1 BD  LDA tbl_0x01BE01_4x4_blocks_indexes,Y  ; bank 8C
C - - - - - 0x03CF6D 0F:CF5D: 4C 72 CF  JMP loc_CF72_calculate_pointer_for_4x4_block___custom_index


; bzk garbage
- - - - - - 0x03CF70 0F:CF60: A9 00     LDA #$00
- - - - - - 0x03CF72 0F:CF62: 85 03     STA ram_0003_temp
- - - - - - 0x03CF74 0F:CF64: F0 0A     BEQ bra_CF70    ; jmp



sub_CF66_calculate_pointer_for_4x4_block___custom_index:
C - - - - - 0x03CF76 0F:CF66: A0 00     LDY #$00
C - - - - - 0x03CF78 0F:CF68: 84 03     STY ram_0003_temp
C - - - - - 0x03CF7A 0F:CF6A: F0 06     BEQ bra_CF72    ; jmp



sub_CF6C_calculate_pointer_for_4x4_block:
bra_CF6C:
C - - - - - 0x03CF7C 0F:CF6C: A0 00     LDY #$00
C - - - - - 0x03CF7E 0F:CF6E: 84 03     STY ram_0002_t004_data + $01
bra_CF70:
C - - - - - 0x03CF80 0F:CF70: B1 10     LDA (ram_0010_t002_data),Y
loc_CF72_calculate_pointer_for_4x4_block___custom_index:
bra_CF72:
C D 2 - - - 0x03CF82 0F:CF72: 85 63     STA ram_0063_block_id
; * 10
C - - - - - 0x03CF84 0F:CF74: 0A        ASL
C - - - - - 0x03CF85 0F:CF75: 26 03     ROL ram_0002_t004_data + $01
C - - - - - 0x03CF87 0F:CF77: 0A        ASL
C - - - - - 0x03CF88 0F:CF78: 26 03     ROL ram_0002_t004_data + $01
C - - - - - 0x03CF8A 0F:CF7A: 0A        ASL
C - - - - - 0x03CF8B 0F:CF7B: 26 03     ROL ram_0002_t004_data + $01
C - - - - - 0x03CF8D 0F:CF7D: 0A        ASL
C - - - - - 0x03CF8E 0F:CF7E: 26 03     ROL ram_0002_t004_data + $01
C - - - - - 0x03CF90 0F:CF80: 18        CLC
C - - - - - 0x03CF91 0F:CF81: 65 5D     ADC ram_tile_blocks_data
C - - - - - 0x03CF93 0F:CF83: 85 02     STA ram_0002_t004_data
C - - - - - 0x03CF95 0F:CF85: A5 03     LDA ram_0002_t004_data + $01
C - - - - - 0x03CF97 0F:CF87: 65 5E     ADC ram_tile_blocks_data + $01
C - - - - - 0x03CF99 0F:CF89: 85 03     STA ram_0002_t004_data + $01
C - - - - - 0x03CF9B 0F:CF8B: 60        RTS



sub_CF8C:
C - - - - - 0x03CF9C 0F:CF8C: A9 1E     LDA #$1E
C - - - - - 0x03CF9E 0F:CF8E: 85 FE     STA ram_for_2001
C - - - - - 0x03CFA0 0F:CF90: A9 00     LDA #$00
C - - - - - 0x03CFA2 0F:CF92: 8D A3 07  STA ram_07A3
C - - - - - 0x03CFA5 0F:CF95: 8D A4 07  STA ram_07A4
C - - - - - 0x03CFA8 0F:CF98: A9 02     LDA #$02
C - - - - - 0x03CFAA 0F:CF9A: 85 72     STA ram_0072_chr_banks_config
C - - - - - 0x03CFAC 0F:CF9C: A9 05     LDA #con_irq_05
C - - - - - 0x03CFAE 0F:CF9E: A2 29     LDX #$29
C - - - - - 0x03CFB0 0F:CFA0: A0 2A     LDY #$2A
C - - - - - 0x03CFB2 0F:CFA2: 20 BF E5  JSR sub_E5BF
C - - - - - 0x03CFB5 0F:CFA5: A9 B0     LDA #$B0
C - - - - - 0x03CFB7 0F:CFA7: 85 FF     STA ram_for_2000
C - - - - - 0x03CFB9 0F:CFA9: A9 04     LDA #$04
C - - - - - 0x03CFBB 0F:CFAB: 85 FC     STA ram_scroll_Y
C - - - - - 0x03CFBD 0F:CFAD: A5 56     LDA ram_cam_pos_lo
C - - - - - 0x03CFBF 0F:CFAF: 29 F8     AND #$F8
C - - - - - 0x03CFC1 0F:CFB1: 85 66     STA ram_0066
C - - - - - 0x03CFC3 0F:CFB3: 20 21 D1  JSR sub_D121
C - - - - - 0x03CFC6 0F:CFB6: A5 59     LDA ram_section_behind
C - - - - - 0x03CFC8 0F:CFB8: 29 07     AND #$07
; * 04
C - - - - - 0x03CFCA 0F:CFBA: 0A        ASL
C - - - - - 0x03CFCB 0F:CFBB: 0A        ASL
C - - - - - 0x03CFCC 0F:CFBC: 85 5B     STA ram_drawing_behind
C - - - - - 0x03CFCE 0F:CFBE: E6 5B     INC ram_drawing_behind
C - - - - - 0x03CFD0 0F:CFC0: A5 5A     LDA ram_section_ahead
C - - - - - 0x03CFD2 0F:CFC2: 29 07     AND #$07
; * 04
C - - - - - 0x03CFD4 0F:CFC4: 0A        ASL
C - - - - - 0x03CFD5 0F:CFC5: 0A        ASL
C - - - - - 0x03CFD6 0F:CFC6: 18        CLC
C - - - - - 0x03CFD7 0F:CFC7: 69 03     ADC #$03
C - - - - - 0x03CFD9 0F:CFC9: 85 5C     STA ram_drawing_ahead
sub_CFCB:
C - - - - - 0x03CFDB 0F:CFCB: A2 00     LDX #$00
C - - - - - 0x03CFDD 0F:CFCD: A0 00     LDY #$00
C - - - - - 0x03CFDF 0F:CFCF: A5 68     LDA ram_0068
C - - - - - 0x03CFE1 0F:CFD1: 29 01     AND #$01
C - - - - - 0x03CFE3 0F:CFD3: F0 04     BEQ bra_CFD9
C - - - - - 0x03CFE5 0F:CFD5: A0 01     LDY #$01
C - - - - - 0x03CFE7 0F:CFD7: A2 02     LDX #$02
bra_CFD9:
C - - - - - 0x03CFE9 0F:CFD9: A9 00     LDA #$00
C - - - - - 0x03CFEB 0F:CFDB: 85 05     STA ram_0005_temp
C - - - - - 0x03CFED 0F:CFDD: B9 59 00  LDA ram_blk_section,Y
C - - - - - 0x03CFF0 0F:CFE0: 0A        ASL
C - - - - - 0x03CFF1 0F:CFE1: 0A        ASL
C - - - - - 0x03CFF2 0F:CFE2: 26 05     ROL ram_0005_temp
C - - - - - 0x03CFF4 0F:CFE4: 0A        ASL
C - - - - - 0x03CFF5 0F:CFE5: 26 05     ROL ram_0005_temp
C - - - - - 0x03CFF7 0F:CFE7: 18        CLC
C - - - - - 0x03CFF8 0F:CFE8: 65 50     ADC ram_0050_t000_data
C - - - - - 0x03CFFA 0F:CFEA: 95 52     STA ram_0052,X
C - - - - - 0x03CFFC 0F:CFEC: A5 05     LDA ram_0005_temp
C - - - - - 0x03CFFE 0F:CFEE: 65 51     ADC ram_0050_t000_data + $01
C - - - - - 0x03D000 0F:CFF0: 95 53     STA ram_0053,X
C - - - - - 0x03D002 0F:CFF2: F6 52     INC ram_0052,X
C - - - - - 0x03D004 0F:CFF4: D0 02     BNE bra_CFF8_RTS
C - - - - - 0x03D006 0F:CFF6: F6 53     INC ram_0053,X
bra_CFF8_RTS:
C - - - - - 0x03D008 0F:CFF8: 60        RTS



sub_CFF9:
C - - - - - 0x03D009 0F:CFF9: A9 01     LDA #con_irq_01
C - - - - - 0x03D00B 0F:CFFB: A2 2E     LDX #$2E
C - - - - - 0x03D00D 0F:CFFD: 20 C1 E5  JSR sub_E5C1
C - - - - - 0x03D010 0F:D000: A9 01     LDA #$01
C - - - - - 0x03D012 0F:D002: 85 72     STA ram_0072_chr_banks_config
loc_D004:
C D 2 - - - 0x03D014 0F:D004: A9 00     LDA #$00
C - - - - - 0x03D016 0F:D006: 85 67     STA ram_0067
C - - - - - 0x03D018 0F:D008: 85 FC     STA ram_scroll_Y
C - - - - - 0x03D01A 0F:D00A: A9 02     LDA #$02
C - - - - - 0x03D01C 0F:D00C: 85 A1     STA ram_00A1
C - - - - - 0x03D01E 0F:D00E: A5 56     LDA ram_cam_pos_lo
C - - - - - 0x03D020 0F:D010: 29 E0     AND #$E0
C - - - - - 0x03D022 0F:D012: 85 66     STA ram_0066
C - - - - - 0x03D024 0F:D014: 20 3B D1  JSR sub_D13B
C - - - - - 0x03D027 0F:D017: A9 00     LDA #$00
C - - - - - 0x03D029 0F:D019: 85 5B     STA ram_drawing_behind
C - - - - - 0x03D02B 0F:D01B: 85 5C     STA ram_drawing_ahead
sub_D01D:
C - - - - - 0x03D02D 0F:D01D: A2 00     LDX #$00
C - - - - - 0x03D02F 0F:D01F: A0 00     LDY #$00
C - - - - - 0x03D031 0F:D021: B5 59     LDA ram_blk_section,X
C - - - - - 0x03D033 0F:D023: 30 03     BMI bra_D028
C - - - - - 0x03D035 0F:D025: 20 2C D0  JSR sub_D02C
bra_D028:
C - - - - - 0x03D038 0F:D028: A2 01     LDX #$01
C - - - - - 0x03D03A 0F:D02A: A0 02     LDY #$02
sub_D02C:
C - - - - - 0x03D03C 0F:D02C: A9 00     LDA #$00
C - - - - - 0x03D03E 0F:D02E: 85 05     STA ram_0005_temp
C - - - - - 0x03D040 0F:D030: B5 59     LDA ram_blk_section,X
C - - - - - 0x03D042 0F:D032: 29 F8     AND #$F8
C - - - - - 0x03D044 0F:D034: 0A        ASL
C - - - - - 0x03D045 0F:D035: 85 04     STA ram_0004_temp
C - - - - - 0x03D047 0F:D037: 18        CLC
C - - - - - 0x03D048 0F:D038: 65 04     ADC ram_0004_temp
C - - - - - 0x03D04A 0F:D03A: 90 03     BCC bra_D03F_not_overflow
- - - - - - 0x03D04C 0F:D03C: E6 05     INC ram_0005_temp
- - - - - - 0x03D04E 0F:D03E: 18        CLC
bra_D03F_not_overflow:
C - - - - - 0x03D04F 0F:D03F: 65 04     ADC ram_0004_temp
C - - - - - 0x03D051 0F:D041: 90 02     BCC bra_D045_not_overflow
C - - - - - 0x03D053 0F:D043: E6 05     INC ram_0005_temp
bra_D045_not_overflow:
C - - - - - 0x03D055 0F:D045: 85 04     STA ram_0004_temp
C - - - - - 0x03D057 0F:D047: B5 59     LDA ram_blk_section,X
C - - - - - 0x03D059 0F:D049: 29 07     AND #$07
C - - - - - 0x03D05B 0F:D04B: AA        TAX
C - - - - - 0x03D05C 0F:D04C: E8        INX
C - - - - - 0x03D05D 0F:D04D: 8A        TXA
C - - - - - 0x03D05E 0F:D04E: 18        CLC
C - - - - - 0x03D05F 0F:D04F: 65 04     ADC ram_0004_temp
C - - - - - 0x03D061 0F:D051: 85 04     STA ram_0004_temp
C - - - - - 0x03D063 0F:D053: 90 02     BCC bra_D057_not_overflow
- - - - - - 0x03D065 0F:D055: E6 05     INC ram_0005_temp
bra_D057_not_overflow:
C - - - - - 0x03D067 0F:D057: A5 04     LDA ram_0004_temp
C - - - - - 0x03D069 0F:D059: 18        CLC
C - - - - - 0x03D06A 0F:D05A: 65 50     ADC ram_0050_t000_data
C - - - - - 0x03D06C 0F:D05C: 99 52 00  STA ram_0052,Y
C - - - - - 0x03D06F 0F:D05F: A5 05     LDA ram_0005_temp
C - - - - - 0x03D071 0F:D061: 65 51     ADC ram_0050_t000_data + $01
C - - - - - 0x03D073 0F:D063: 99 53 00  STA ram_0053,Y
C - - - - - 0x03D076 0F:D066: 60        RTS



sub_D067:
ofs_041_0x03D077_03:
C - - - - - 0x03D077 0F:D067: 20 00 C9  JSR sub_C900_select_prg_bank_for_blk_1
C - - - - - 0x03D07A 0F:D06A: A5 68     LDA ram_0068
C - - - - - 0x03D07C 0F:D06C: 85 73     STA ram_0073_copy_0068
C - - - - - 0x03D07E 0F:D06E: A5 32     LDA ram_blk_hi
C - - - - - 0x03D080 0F:D070: 0A        ASL
C - - - - - 0x03D081 0F:D071: 85 0C     STA ram_000C_temp
C - - - - - 0x03D083 0F:D073: A8        TAY
C - - - - - 0x03D084 0F:D074: B9 2E D6  LDA tbl_D62E,Y
C - - - - - 0x03D087 0F:D077: 85 08     STA ram_0008_t002_data
C - - - - - 0x03D089 0F:D079: B9 2F D6  LDA tbl_D62E + $01,Y
C - - - - - 0x03D08C 0F:D07C: 85 09     STA ram_0008_t002_data + $01
C - - - - - 0x03D08E 0F:D07E: A5 33     LDA ram_blk_lo
C - - - - - 0x03D090 0F:D080: 0A        ASL
C - - - - - 0x03D091 0F:D081: 85 0D     STA ram_000D_temp
C - - - - - 0x03D093 0F:D083: A8        TAY
C - - - - - 0x03D094 0F:D084: B1 08     LDA (ram_0008_t002_data),Y
C - - - - - 0x03D096 0F:D086: 85 0A     STA ram_000A_t005_data
C - - - - - 0x03D098 0F:D088: C8        INY
C - - - - - 0x03D099 0F:D089: B1 08     LDA (ram_0008_t002_data),Y
C - - - - - 0x03D09B 0F:D08B: 85 0B     STA ram_000A_t005_data + $01
C - - - - - 0x03D09D 0F:D08D: A4 34     LDY ram_blk_fr
C - - - - - 0x03D09F 0F:D08F: B1 0A     LDA (ram_000A_t005_data),Y
C - - - - - 0x03D0A1 0F:D091: 85 68     STA ram_0068
C - - - - - 0x03D0A3 0F:D093: 20 9B D4  JSR sub_D49B_prepare_blk_data_pointers
C - - - - - 0x03D0A6 0F:D096: 20 05 C9  JSR sub_C905_select_proper_prg_bank_for_blk
C - - - - - 0x03D0A9 0F:D099: A0 00     LDY #$00
C - - - - - 0x03D0AB 0F:D09B: B1 50     LDA (ram_0050_t000_data),Y
C - - - - - 0x03D0AD 0F:D09D: 85 71     STA ram_0071_blk_config
C - - - - - 0x03D0AF 0F:D09F: A5 32     LDA ram_blk_hi
C - - - - - 0x03D0B1 0F:D0A1: C9 0D     CMP #$0D
C - - - - - 0x03D0B3 0F:D0A3: F0 1B     BEQ bra_D0C0_0D
C - - - - - 0x03D0B5 0F:D0A5: C9 0E     CMP #$0E
C - - - - - 0x03D0B7 0F:D0A7: F0 41     BEQ bra_D0EA_0E
bra_D0A9:
C - - - - - 0x03D0B9 0F:D0A9: A4 0C     LDY ram_000C_temp
bra_D0AB:
C - - - - - 0x03D0BB 0F:D0AB: B9 F2 D5  LDA tbl_D5F2_4x4_tile_blocks,Y
C - - - - - 0x03D0BE 0F:D0AE: 85 5D     STA ram_tile_blocks_data
C - - - - - 0x03D0C0 0F:D0B0: B9 F3 D5  LDA tbl_D5F2_4x4_tile_blocks + $01,Y
C - - - - - 0x03D0C3 0F:D0B3: 85 5E     STA ram_tile_blocks_data + $01
C - - - - - 0x03D0C5 0F:D0B5: B9 10 D6  LDA tbl_D610_nametable_attributes,Y
C - - - - - 0x03D0C8 0F:D0B8: 85 5F     STA ram_005F_t000_nametable_attr_data
C - - - - - 0x03D0CA 0F:D0BA: B9 11 D6  LDA tbl_D610_nametable_attributes + $01,Y
C - - - - - 0x03D0CD 0F:D0BD: 85 60     STA ram_005F_t000_nametable_attr_data + $01
C - - - - - 0x03D0CF 0F:D0BF: 60        RTS
bra_D0C0_0D:
C - - - - - 0x03D0D0 0F:D0C0: A5 33     LDA ram_blk_lo
C - - - - - 0x03D0D2 0F:D0C2: F0 1A     BEQ bra_D0DE
C - - - - - 0x03D0D4 0F:D0C4: C9 02     CMP #$02
C - - - - - 0x03D0D6 0F:D0C6: F0 0C     BEQ bra_D0D4
C - - - - - 0x03D0D8 0F:D0C8: C9 03     CMP #$03
C - - - - - 0x03D0DA 0F:D0CA: D0 DD     BNE bra_D0A9
C - - - - - 0x03D0DC 0F:D0CC: A5 34     LDA ram_blk_fr
C - - - - - 0x03D0DE 0F:D0CE: D0 D9     BNE bra_D0A9
C - - - - - 0x03D0E0 0F:D0D0: A0 0A     LDY #$0A
C - - - - - 0x03D0E2 0F:D0D2: D0 D7     BNE bra_D0AB    ; jmp
bra_D0D4:
C - - - - - 0x03D0E4 0F:D0D4: A5 34     LDA ram_blk_fr
C - - - - - 0x03D0E6 0F:D0D6: C9 02     CMP #$02
C - - - - - 0x03D0E8 0F:D0D8: D0 CF     BNE bra_D0A9
C - - - - - 0x03D0EA 0F:D0DA: A0 0A     LDY #$0A
C - - - - - 0x03D0EC 0F:D0DC: D0 CD     BNE bra_D0AB    ; jmp
bra_D0DE:
C - - - - - 0x03D0EE 0F:D0DE: A5 34     LDA ram_blk_fr
C - - - - - 0x03D0F0 0F:D0E0: F0 04     BEQ bra_D0E6
C - - - - - 0x03D0F2 0F:D0E2: C9 01     CMP #$01
C - - - - - 0x03D0F4 0F:D0E4: D0 C3     BNE bra_D0A9
bra_D0E6:
C - - - - - 0x03D0F6 0F:D0E6: A0 04     LDY #$04
C - - - - - 0x03D0F8 0F:D0E8: D0 C1     BNE bra_D0AB    ; jmp
bra_D0EA_0E:
C - - - - - 0x03D0FA 0F:D0EA: A5 33     LDA ram_blk_lo
C - - - - - 0x03D0FC 0F:D0EC: D0 BB     BNE bra_D0A9
C - - - - - 0x03D0FE 0F:D0EE: A5 34     LDA ram_blk_fr
C - - - - - 0x03D100 0F:D0F0: C9 01     CMP #$01
C - - - - - 0x03D102 0F:D0F2: D0 B5     BNE bra_D0A9
C - - - - - 0x03D104 0F:D0F4: A0 02     LDY #$02
C - - - - - 0x03D106 0F:D0F6: D0 B3     BNE bra_D0AB    ; jmp



sub_D0F8:
ofs_041_0x03D108_04:
C - - - - - 0x03D108 0F:D0F8: A5 68     LDA ram_0068
C - - - - - 0x03D10A 0F:D0FA: 10 3F     BPL bra_D13B
C - - - - - 0x03D10C 0F:D0FC: AD 20 05  LDA ram_plr_spd_Y_hi
C - - - - - 0x03D10F 0F:D0FF: 0D 37 05  ORA ram_plr_spd_Y_lo
C - - - - - 0x03D112 0F:D102: F0 0D     BEQ bra_D111
C - - - - - 0x03D114 0F:D104: AD 20 05  LDA ram_plr_spd_Y_hi
C - - - - - 0x03D117 0F:D107: 10 0E     BPL bra_D117
bra_D109:
C - - - - - 0x03D119 0F:D109: A5 71     LDA ram_0071_blk_config
C - - - - - 0x03D11B 0F:D10B: 85 57     STA ram_cam_pos_hi
C - - - - - 0x03D11D 0F:D10D: A9 30     LDA #$30
C - - - - - 0x03D11F 0F:D10F: D0 0A     BNE bra_D11B    ; jmp
bra_D111:
C - - - - - 0x03D121 0F:D111: A5 68     LDA ram_0068
C - - - - - 0x03D123 0F:D113: 29 01     AND #$01
C - - - - - 0x03D125 0F:D115: F0 F2     BEQ bra_D109
bra_D117:
C - - - - - 0x03D127 0F:D117: A9 00     LDA #$00
C - - - - - 0x03D129 0F:D119: 85 57     STA ram_cam_pos_hi
bra_D11B:
C - - - - - 0x03D12B 0F:D11B: 85 56     STA ram_cam_pos_lo
C - - - - - 0x03D12D 0F:D11D: A9 00     LDA #$00
C - - - - - 0x03D12F 0F:D11F: 85 58     STA ram_0058
sub_D121:
C - - - - - 0x03D131 0F:D121: A5 56     LDA ram_cam_pos_lo
C - - - - - 0x03D133 0F:D123: 85 00     STA ram_0000_t037_copy_cam_pos_lo
C - - - - - 0x03D135 0F:D125: A5 57     LDA ram_cam_pos_hi
; * 08
C - - - - - 0x03D137 0F:D127: 06 00     ASL ram_0000_t037_copy_cam_pos_lo
C - - - - - 0x03D139 0F:D129: 2A        ROL
C - - - - - 0x03D13A 0F:D12A: 06 00     ASL ram_0000_t037_copy_cam_pos_lo
C - - - - - 0x03D13C 0F:D12C: 2A        ROL
C - - - - - 0x03D13D 0F:D12D: 06 00     ASL ram_0000_t037_copy_cam_pos_lo
C - - - - - 0x03D13F 0F:D12F: 2A        ROL
C - - - - - 0x03D140 0F:D130: 38        SEC
C - - - - - 0x03D141 0F:D131: E9 01     SBC #$01
C - - - - - 0x03D143 0F:D133: 85 59     STA ram_section_behind
C - - - - - 0x03D145 0F:D135: 18        CLC
C - - - - - 0x03D146 0F:D136: 69 07     ADC #$07
C - - - - - 0x03D148 0F:D138: 85 5A     STA ram_section_ahead
C - - - - - 0x03D14A 0F:D13A: 60        RTS
sub_D13B:
bra_D13B:
C - - - - - 0x03D14B 0F:D13B: A5 57     LDA ram_cam_pos_hi
C - - - - - 0x03D14D 0F:D13D: 30 2A     BMI bra_D169
C - - - - - 0x03D14F 0F:D13F: C5 71     CMP ram_0071_blk_config
C - - - - - 0x03D151 0F:D141: F0 2A     BEQ bra_D16D
C - - - - - 0x03D153 0F:D143: A5 57     LDA ram_cam_pos_hi
C - - - - - 0x03D155 0F:D145: 85 00     STA ram_0000_t036_copy_cam_pos_hi
C - - - - - 0x03D157 0F:D147: A5 56     LDA ram_cam_pos_lo
C - - - - - 0x03D159 0F:D149: 46 00     LSR ram_0000_t036_copy_cam_pos_hi
C - - - - - 0x03D15B 0F:D14B: 6A        ROR
C - - - - - 0x03D15C 0F:D14C: 46 00     LSR ram_0000_t036_copy_cam_pos_hi
C - - - - - 0x03D15E 0F:D14E: 6A        ROR
C - - - - - 0x03D15F 0F:D14F: 46 00     LSR ram_0000_t036_copy_cam_pos_hi
C - - - - - 0x03D161 0F:D151: 6A        ROR
C - - - - - 0x03D162 0F:D152: 4A        LSR
C - - - - - 0x03D163 0F:D153: 4A        LSR
loc_D154:
bra_D154:
C D 2 - - - 0x03D164 0F:D154: 38        SEC
C - - - - - 0x03D165 0F:D155: E9 02     SBC #$02
C - - - - - 0x03D167 0F:D157: 85 59     STA ram_section_behind
C - - - - - 0x03D169 0F:D159: 18        CLC
C - - - - - 0x03D16A 0F:D15A: 69 0B     ADC #$0B
C - - - - - 0x03D16C 0F:D15C: 85 5A     STA ram_section_ahead
C - - - - - 0x03D16E 0F:D15E: A5 71     LDA ram_0071_blk_config
; * 08
C - - - - - 0x03D170 0F:D160: 0A        ASL
C - - - - - 0x03D171 0F:D161: 0A        ASL
C - - - - - 0x03D172 0F:D162: 0A        ASL
C - - - - - 0x03D173 0F:D163: 18        CLC
C - - - - - 0x03D174 0F:D164: 69 08     ADC #$08
C - - - - - 0x03D176 0F:D166: 85 7B     STA ram_007B
C - - - - - 0x03D178 0F:D168: 60        RTS
bra_D169:
- - - - - - 0x03D179 0F:D169: A9 00     LDA #$00
- - - - - - 0x03D17B 0F:D16B: F0 E7     BEQ bra_D154    ; jmp
bra_D16D:
C - - - - - 0x03D17D 0F:D16D: A5 71     LDA ram_0071_blk_config
; * 08
C - - - - - 0x03D17F 0F:D16F: 0A        ASL
C - - - - - 0x03D180 0F:D170: 0A        ASL
C - - - - - 0x03D181 0F:D171: 0A        ASL
C - - - - - 0x03D182 0F:D172: 4C 54 D1  JMP loc_D154



sub_D175:
loc_D175:
C D 2 - - - 0x03D185 0F:D175: A5 65     LDA ram_0065
C - - - - - 0x03D187 0F:D177: C9 02     CMP #$02
C - - - - - 0x03D189 0F:D179: D0 02     BNE bra_D17D
C - - - - - 0x03D18B 0F:D17B: A5 A1     LDA ram_00A1
bra_D17D:
C - - - - - 0x03D18D 0F:D17D: 85 A0     STA ram_00A0
C - - - - - 0x03D18F 0F:D17F: A5 65     LDA ram_0065
C - - - - - 0x03D191 0F:D181: 85 A1     STA ram_00A1
C - - - - - 0x03D193 0F:D183: 20 25 D3  JSR sub_D325
C - - - - - 0x03D196 0F:D186: A5 A0     LDA ram_00A0
C - - - - - 0x03D198 0F:D188: C9 02     CMP #$02
C - - - - - 0x03D19A 0F:D18A: F0 0D     BEQ bra_D199_RTS
C - - - - - 0x03D19C 0F:D18C: A5 67     LDA ram_0067
C - - - - - 0x03D19E 0F:D18E: F0 03     BEQ bra_D193
C - - - - - 0x03D1A0 0F:D190: C6 67     DEC ram_0067
C - - - - - 0x03D1A2 0F:D192: 60        RTS
bra_D193:
C - - - - - 0x03D1A3 0F:D193: A5 1A     LDA ram_frm_cnt
C - - - - - 0x03D1A5 0F:D195: 29 01     AND #$01
C - - - - - 0x03D1A7 0F:D197: D0 01     BNE bra_D19A
bra_D199_RTS:
C - - - - - 0x03D1A9 0F:D199: 60        RTS
bra_D19A:
C - - - - - 0x03D1AA 0F:D19A: 20 05 C9  JSR sub_C905_select_proper_prg_bank_for_blk
C - - - - - 0x03D1AD 0F:D19D: A4 A0     LDY ram_00A0
C - - - - - 0x03D1AF 0F:D19F: B9 59 00  LDA ram_blk_section,Y
C - - - - - 0x03D1B2 0F:D1A2: 30 F5     BMI bra_D199_RTS
C - - - - - 0x03D1B4 0F:D1A4: C5 7B     CMP ram_007B
C - - - - - 0x03D1B6 0F:D1A6: B0 F1     BCS bra_D199_RTS
C - - - - - 0x03D1B8 0F:D1A8: B9 5B 00  LDA ram_blk_drawing,Y
C - - - - - 0x03D1BB 0F:D1AB: C9 06     CMP #$06
C - - - - - 0x03D1BD 0F:D1AD: 90 01     BCC bra_D1B0
C - - - - - 0x03D1BF 0F:D1AF: 60        RTS
bra_D1B0:
C - - - - - 0x03D1C0 0F:D1B0: 98        TYA
C - - - - - 0x03D1C1 0F:D1B1: 0A        ASL
C - - - - - 0x03D1C2 0F:D1B2: AA        TAX
C - - - - - 0x03D1C3 0F:D1B3: B5 52     LDA ram_0052,X
C - - - - - 0x03D1C5 0F:D1B5: 85 10     STA ram_0010_temp
C - - - - - 0x03D1C7 0F:D1B7: B5 53     LDA ram_0053,X
C - - - - - 0x03D1C9 0F:D1B9: 85 11     STA ram_0011_temp
C - - - - - 0x03D1CB 0F:D1BB: 20 31 CF  JSR sub_CF31
C - - - - - 0x03D1CE 0F:D1BE: A2 00     LDX #$00
C - - - - - 0x03D1D0 0F:D1C0: A5 75     LDA ram_0075
C - - - - - 0x03D1D2 0F:D1C2: 29 01     AND #$01
C - - - - - 0x03D1D4 0F:D1C4: F0 02     BEQ bra_D1C8
C - - - - - 0x03D1D6 0F:D1C6: A2 08     LDX #$08
bra_D1C8:
C - - - - - 0x03D1D8 0F:D1C8: 86 00     STX ram_0000_t034
C - - - - - 0x03D1DA 0F:D1CA: A4 A0     LDY ram_00A0
C - - - - - 0x03D1DC 0F:D1CC: A2 20     LDX #$20
C - - - - - 0x03D1DE 0F:D1CE: B9 59 00  LDA ram_blk_section,Y
C - - - - - 0x03D1E1 0F:D1D1: 29 08     AND #$08
C - - - - - 0x03D1E3 0F:D1D3: 45 00     EOR ram_0000_t034
C - - - - - 0x03D1E5 0F:D1D5: F0 02     BEQ bra_D1D9
C - - - - - 0x03D1E7 0F:D1D7: A2 24     LDX #$24
bra_D1D9:
C - - - - - 0x03D1E9 0F:D1D9: 86 00     STX ram_0000_t035_ppu_hi
C - - - - - 0x03D1EB 0F:D1DB: A9 00     LDA #$00
C - - - - - 0x03D1ED 0F:D1DD: 85 61     STA ram_ppu_address_lo
C - - - - - 0x03D1EF 0F:D1DF: A4 A0     LDY ram_00A0
C - - - - - 0x03D1F1 0F:D1E1: B9 5B 00  LDA ram_blk_drawing,Y
C - - - - - 0x03D1F4 0F:D1E4: 4A        LSR
C - - - - - 0x03D1F5 0F:D1E5: 66 61     ROR ram_ppu_address_lo
C - - - - - 0x03D1F7 0F:D1E7: 18        CLC
C - - - - - 0x03D1F8 0F:D1E8: 65 00     ADC ram_0000_t035_ppu_hi
C - - - - - 0x03D1FA 0F:D1EA: 85 62     STA ram_ppu_address_hi
C - - - - - 0x03D1FC 0F:D1EC: B9 59 00  LDA ram_blk_section,Y
C - - - - - 0x03D1FF 0F:D1EF: 29 07     AND #$07
C - - - - - 0x03D201 0F:D1F1: 0A        ASL
C - - - - - 0x03D202 0F:D1F2: 0A        ASL
C - - - - - 0x03D203 0F:D1F3: 18        CLC
C - - - - - 0x03D204 0F:D1F4: 69 80     ADC #$80
C - - - - - 0x03D206 0F:D1F6: 65 61     ADC ram_ppu_address_lo
C - - - - - 0x03D208 0F:D1F8: 85 61     STA ram_ppu_address_lo
C - - - - - 0x03D20A 0F:D1FA: 90 02     BCC bra_D1FE_not_overflow
C - - - - - 0x03D20C 0F:D1FC: E6 62     INC ram_ppu_address_hi
bra_D1FE_not_overflow:
C - - - - - 0x03D20E 0F:D1FE: B9 5B 00  LDA ram_blk_drawing,Y
C - - - - - 0x03D211 0F:D201: 0A        ASL
C - - - - - 0x03D212 0F:D202: 85 00     STA ram_0000_t033
C - - - - - 0x03D214 0F:D204: B9 59 00  LDA ram_blk_section,Y
loc_D207_loop:
C D 2 - - - 0x03D217 0F:D207: C9 0C     CMP #$0C
C - - - - - 0x03D219 0F:D209: 90 05     BCC bra_D210
C - - - - - 0x03D21B 0F:D20B: E9 0C     SBC #$0C
C - - - - - 0x03D21D 0F:D20D: 4C 07 D2  JMP loc_D207_loop
bra_D210:
C - - - - - 0x03D220 0F:D210: A8        TAY
C - - - - - 0x03D221 0F:D211: B9 4C FD  LDA tbl_FD4C,Y
C - - - - - 0x03D224 0F:D214: 18        CLC
C - - - - - 0x03D225 0F:D215: 65 00     ADC ram_0000_t033
C - - - - - 0x03D227 0F:D217: 85 10     STA ram_0010_temp
C - - - - - 0x03D229 0F:D219: A4 A0     LDY ram_00A0
C - - - - - 0x03D22B 0F:D21B: B9 5B 00  LDA ram_blk_drawing,Y
C - - - - - 0x03D22E 0F:D21E: D0 22     BNE bra_D242
C - - - - - 0x03D230 0F:D220: A4 10     LDY ram_0010_temp
C - - - - - 0x03D232 0F:D222: A9 00     LDA #$00
C - - - - - 0x03D234 0F:D224: 99 E0 06  STA ram_06E0,Y
C - - - - - 0x03D237 0F:D227: E6 10     INC ram_0010_temp
C - - - - - 0x03D239 0F:D229: A5 61     LDA ram_ppu_address_lo
C - - - - - 0x03D23B 0F:D22B: 18        CLC
C - - - - - 0x03D23C 0F:D22C: 69 40     ADC #$40
C - - - - - 0x03D23E 0F:D22E: 85 61     STA ram_ppu_address_lo
C - - - - - 0x03D240 0F:D230: A6 1D     LDX ram_index_ppu_buffer
C - - - - - 0x03D242 0F:D232: A9 02     LDA #$02
C - - - - - 0x03D244 0F:D234: 85 06     STA ram_0006_t00E
C - - - - - 0x03D246 0F:D236: A9 05     LDA #$05
C - - - - - 0x03D248 0F:D238: 9D 00 03  STA ram_ppu_buffer,X
C - - - - - 0x03D24B 0F:D23B: E8        INX
C - - - - - 0x03D24C 0F:D23C: 86 1D     STX ram_index_ppu_buffer
C - - - - - 0x03D24E 0F:D23E: A0 08     LDY #$08
C - - - - - 0x03D250 0F:D240: D0 10     BNE bra_D252    ; jmp
bra_D242:
C - - - - - 0x03D252 0F:D242: A6 1D     LDX ram_index_ppu_buffer
C - - - - - 0x03D254 0F:D244: A9 04     LDA #$04
C - - - - - 0x03D256 0F:D246: 85 06     STA ram_0006_t00E
C - - - - - 0x03D258 0F:D248: A9 04     LDA #$04
C - - - - - 0x03D25A 0F:D24A: 9D 00 03  STA ram_ppu_buffer,X
C - - - - - 0x03D25D 0F:D24D: E8        INX
C - - - - - 0x03D25E 0F:D24E: 86 1D     STX ram_index_ppu_buffer
C - - - - - 0x03D260 0F:D250: A0 00     LDY #$00
bra_D252:
bra_D252_loop:
C - - - - - 0x03D262 0F:D252: A6 1D     LDX ram_index_ppu_buffer
C - - - - - 0x03D264 0F:D254: A5 61     LDA ram_ppu_address_lo
C - - - - - 0x03D266 0F:D256: 9D 00 03  STA ram_ppu_buffer,X
C - - - - - 0x03D269 0F:D259: E8        INX
C - - - - - 0x03D26A 0F:D25A: A5 62     LDA ram_ppu_address_hi
C - - - - - 0x03D26C 0F:D25C: 9D 00 03  STA ram_ppu_buffer,X
C - - - - - 0x03D26F 0F:D25F: E8        INX
C - - - - - 0x03D270 0F:D260: B1 02     LDA (ram_0002_t004_data),Y
C - - - - - 0x03D272 0F:D262: 9D 00 03  STA ram_ppu_buffer,X
C - - - - - 0x03D275 0F:D265: E8        INX
C - - - - - 0x03D276 0F:D266: C8        INY
C - - - - - 0x03D277 0F:D267: B1 02     LDA (ram_0002_t004_data),Y
C - - - - - 0x03D279 0F:D269: 9D 00 03  STA ram_ppu_buffer,X
C - - - - - 0x03D27C 0F:D26C: E8        INX
C - - - - - 0x03D27D 0F:D26D: C8        INY
C - - - - - 0x03D27E 0F:D26E: B1 02     LDA (ram_0002_t004_data),Y
C - - - - - 0x03D280 0F:D270: 9D 00 03  STA ram_ppu_buffer,X
C - - - - - 0x03D283 0F:D273: E8        INX
C - - - - - 0x03D284 0F:D274: C8        INY
C - - - - - 0x03D285 0F:D275: B1 02     LDA (ram_0002_t004_data),Y
C - - - - - 0x03D287 0F:D277: 9D 00 03  STA ram_ppu_buffer,X
C - - - - - 0x03D28A 0F:D27A: E8        INX
C - - - - - 0x03D28B 0F:D27B: C8        INY
C - - - - - 0x03D28C 0F:D27C: 86 1D     STX ram_index_ppu_buffer
C - - - - - 0x03D28E 0F:D27E: 84 07     STY ram_0007_temp
C - - - - - 0x03D290 0F:D280: A5 06     LDA ram_0006_t00E
C - - - - - 0x03D292 0F:D282: 29 01     AND #$01
C - - - - - 0x03D294 0F:D284: D0 1D     BNE bra_D2A3
C - - - - - 0x03D296 0F:D286: BD FC 02  LDA ram_ppu_buffer - $04,X
C - - - - - 0x03D299 0F:D289: 20 B9 D3  JSR sub_D3B9
C - - - - - 0x03D29C 0F:D28C: 98        TYA
; * 10
C - - - - - 0x03D29D 0F:D28D: 0A        ASL
C - - - - - 0x03D29E 0F:D28E: 0A        ASL
C - - - - - 0x03D29F 0F:D28F: 0A        ASL
C - - - - - 0x03D2A0 0F:D290: 0A        ASL
C - - - - - 0x03D2A1 0F:D291: 85 11     STA ram_0011_temp
C - - - - - 0x03D2A3 0F:D293: BD FE 02  LDA ram_ppu_buffer - $02,X
C - - - - - 0x03D2A6 0F:D296: 20 B9 D3  JSR sub_D3B9
C - - - - - 0x03D2A9 0F:D299: 98        TYA
C - - - - - 0x03D2AA 0F:D29A: 05 11     ORA ram_0011_temp
C - - - - - 0x03D2AC 0F:D29C: A4 10     LDY ram_0010_temp
C - - - - - 0x03D2AE 0F:D29E: 99 E0 06  STA ram_06E0,Y
C - - - - - 0x03D2B1 0F:D2A1: E6 10     INC ram_0010_temp
bra_D2A3:
C - - - - - 0x03D2B3 0F:D2A3: A4 07     LDY ram_0007_temp
C - - - - - 0x03D2B5 0F:D2A5: A5 61     LDA ram_ppu_address_lo
C - - - - - 0x03D2B7 0F:D2A7: 18        CLC
C - - - - - 0x03D2B8 0F:D2A8: 69 20     ADC #$20
C - - - - - 0x03D2BA 0F:D2AA: 85 61     STA ram_ppu_address_lo
C - - - - - 0x03D2BC 0F:D2AC: 90 02     BCC bra_D2B0_not_overflow
C - - - - - 0x03D2BE 0F:D2AE: E6 62     INC ram_ppu_address_hi
bra_D2B0_not_overflow:
C - - - - - 0x03D2C0 0F:D2B0: C6 06     DEC ram_0006_t00E
C - - - - - 0x03D2C2 0F:D2B2: D0 9E     BNE bra_D252_loop
C - - - - - 0x03D2C4 0F:D2B4: A4 A0     LDY ram_00A0
C - - - - - 0x03D2C6 0F:D2B6: B9 5B 00  LDA ram_blk_drawing,Y
C - - - - - 0x03D2C9 0F:D2B9: AA        TAX
C - - - - - 0x03D2CA 0F:D2BA: B9 59 00  LDA ram_blk_section,Y
C - - - - - 0x03D2CD 0F:D2BD: 29 07     AND #$07
C - - - - - 0x03D2CF 0F:D2BF: 18        CLC
C - - - - - 0x03D2D0 0F:D2C0: 7D 1F D3  ADC tbl_D31F_ppu_address_lo,X
C - - - - - 0x03D2D3 0F:D2C3: 85 61     STA ram_ppu_address_lo
C - - - - - 0x03D2D5 0F:D2C5: A2 00     LDX #$00
C - - - - - 0x03D2D7 0F:D2C7: A5 75     LDA ram_0075
C - - - - - 0x03D2D9 0F:D2C9: 29 01     AND #$01
C - - - - - 0x03D2DB 0F:D2CB: F0 02     BEQ bra_D2CF
C - - - - - 0x03D2DD 0F:D2CD: A2 08     LDX #$08
bra_D2CF:
C - - - - - 0x03D2DF 0F:D2CF: 86 00     STX ram_0000_t031
C - - - - - 0x03D2E1 0F:D2D1: B9 59 00  LDA ram_blk_section,Y
C - - - - - 0x03D2E4 0F:D2D4: 29 08     AND #$08
C - - - - - 0x03D2E6 0F:D2D6: 45 00     EOR ram_0000_t031
C - - - - - 0x03D2E8 0F:D2D8: F0 04     BEQ bra_D2DE
C - - - - - 0x03D2EA 0F:D2DA: A9 27     LDA #$27    ; > 27xx
C - - - - - 0x03D2EC 0F:D2DC: D0 02     BNE bra_D2E0    ; jmp
bra_D2DE:
C - - - - - 0x03D2EE 0F:D2DE: A9 23     LDA #$23    ; > 23xx
bra_D2E0:
C - - - - - 0x03D2F0 0F:D2E0: 85 62     STA ram_ppu_address_hi
C - - - - - 0x03D2F2 0F:D2E2: A6 1D     LDX ram_index_ppu_buffer
C - - - - - 0x03D2F4 0F:D2E4: A5 61     LDA ram_ppu_address_lo
C - - - - - 0x03D2F6 0F:D2E6: 9D 00 03  STA ram_ppu_buffer,X
C - - - - - 0x03D2F9 0F:D2E9: E8        INX
C - - - - - 0x03D2FA 0F:D2EA: A5 62     LDA ram_ppu_address_hi
C - - - - - 0x03D2FC 0F:D2EC: 9D 00 03  STA ram_ppu_buffer,X
C - - - - - 0x03D2FF 0F:D2EF: E8        INX
C - - - - - 0x03D300 0F:D2F0: A4 63     LDY ram_0063_block_id
C - - - - - 0x03D302 0F:D2F2: B1 5F     LDA (ram_005F_t000_nametable_attr_data),Y
C - - - - - 0x03D304 0F:D2F4: 85 00     STA ram_0000_t02F_nametable_attribute
C - - - - - 0x03D306 0F:D2F6: A4 A0     LDY ram_00A0
C - - - - - 0x03D308 0F:D2F8: B9 5B 00  LDA ram_blk_drawing,Y
C - - - - - 0x03D30B 0F:D2FB: F0 1B     BEQ bra_D318
C - - - - - 0x03D30D 0F:D2FD: A5 00     LDA ram_0000_t02F_nametable_attribute
loc_D2FF:
C D 2 - - - 0x03D30F 0F:D2FF: 9D 00 03  STA ram_ppu_buffer,X
C - - - - - 0x03D312 0F:D302: E8        INX
C - - - - - 0x03D313 0F:D303: 86 1D     STX ram_index_ppu_buffer
C - - - - - 0x03D315 0F:D305: A6 A0     LDX ram_00A0
C - - - - - 0x03D317 0F:D307: F6 5B     INC ram_blk_drawing,X
C - - - - - 0x03D319 0F:D309: 8A        TXA
C - - - - - 0x03D31A 0F:D30A: 0A        ASL
C - - - - - 0x03D31B 0F:D30B: AA        TAX
C - - - - - 0x03D31C 0F:D30C: B5 52     LDA ram_0052,X
C - - - - - 0x03D31E 0F:D30E: 18        CLC
C - - - - - 0x03D31F 0F:D30F: 69 08     ADC #$08
C - - - - - 0x03D321 0F:D311: 95 52     STA ram_0052,X
C - - - - - 0x03D323 0F:D313: 90 02     BCC bra_D317_RTS
; if overflow
C - - - - - 0x03D325 0F:D315: F6 53     INC ram_0053,X
bra_D317_RTS:
C - - - - - 0x03D327 0F:D317: 60        RTS
bra_D318:
C - - - - - 0x03D328 0F:D318: A5 00     LDA ram_0000_t02F_nametable_attribute
C - - - - - 0x03D32A 0F:D31A: 29 F0     AND #$F0
C - - - - - 0x03D32C 0F:D31C: 4C FF D2  JMP loc_D2FF



tbl_D31F_ppu_address_lo:
- D 2 - - - 0x03D32F 0F:D31F: C8        .byte $C8   ; 00 
- D 2 - - - 0x03D330 0F:D320: D0        .byte $D0   ; 01 
- D 2 - - - 0x03D331 0F:D321: D8        .byte $D8   ; 02 
- D 2 - - - 0x03D332 0F:D322: E0        .byte $E0   ; 03 
- D 2 - - - 0x03D333 0F:D323: E8        .byte $E8   ; 04 
- D 2 - - - 0x03D334 0F:D324: F0        .byte $F0   ; 05 



sub_D325:
C - - - - - 0x03D335 0F:D325: A5 56     LDA ram_cam_pos_lo
C - - - - - 0x03D337 0F:D327: 85 08     STA ram_0008_t035_copy_cam_pos_lo
C - - - - - 0x03D339 0F:D329: A4 65     LDY ram_0065
C - - - - - 0x03D33B 0F:D32B: F0 0F     BEQ bra_D33C_00
C - - - - - 0x03D33D 0F:D32D: 88        DEY
C - - - - - 0x03D33E 0F:D32E: F0 08     BEQ bra_D338_01
; 02+
loc_D330:
bra_D330:
C D 2 - - - 0x03D340 0F:D330: A5 56     LDA ram_cam_pos_lo
C - - - - - 0x03D342 0F:D332: 38        SEC
C - - - - - 0x03D343 0F:D333: E5 08     SBC ram_0008_t035_copy_cam_pos_lo
C - - - - - 0x03D345 0F:D335: 85 6E     STA ram_006E_cam_speed
C - - - - - 0x03D347 0F:D337: 60        RTS
bra_D338_01:
C - - - - - 0x03D348 0F:D338: A9 00     LDA #$00
C - - - - - 0x03D34A 0F:D33A: F0 02     BEQ bra_D33E    ; jmp
bra_D33C_00:
C - - - - - 0x03D34C 0F:D33C: A9 FF     LDA #$FF
bra_D33E:
C - - - - - 0x03D34E 0F:D33E: 85 00     STA ram_0000_t02E_cam_pos_hi
C - - - - - 0x03D350 0F:D340: A5 58     LDA ram_0058
C - - - - - 0x03D352 0F:D342: 18        CLC
C - - - - - 0x03D353 0F:D343: 6D 09 05  ADC ram_plr_spd_X_lo
C - - - - - 0x03D356 0F:D346: 85 58     STA ram_0058
C - - - - - 0x03D358 0F:D348: A5 56     LDA ram_cam_pos_lo
C - - - - - 0x03D35A 0F:D34A: 6D F2 04  ADC ram_plr_spd_X_hi
C - - - - - 0x03D35D 0F:D34D: 85 56     STA ram_cam_pos_lo
C - - - - - 0x03D35F 0F:D34F: A5 57     LDA ram_cam_pos_hi
C - - - - - 0x03D361 0F:D351: 65 00     ADC ram_0000_t02E_cam_pos_hi
C - - - - - 0x03D363 0F:D353: 85 57     STA ram_cam_pos_hi
C - - - - - 0x03D365 0F:D355: 10 0A     BPL bra_D361
C - - - - - 0x03D367 0F:D357: A9 00     LDA #$00
C - - - - - 0x03D369 0F:D359: 85 56     STA ram_cam_pos_lo
C - - - - - 0x03D36B 0F:D35B: 85 57     STA ram_cam_pos_hi
C - - - - - 0x03D36D 0F:D35D: 85 58     STA ram_0058
C - - - - - 0x03D36F 0F:D35F: F0 0A     BEQ bra_D36B    ; jmp
bra_D361:
C - - - - - 0x03D371 0F:D361: C5 71     CMP ram_0071_blk_config
C - - - - - 0x03D373 0F:D363: D0 06     BNE bra_D36B
C - - - - - 0x03D375 0F:D365: A9 00     LDA #$00
C - - - - - 0x03D377 0F:D367: 85 56     STA ram_cam_pos_lo
C - - - - - 0x03D379 0F:D369: 85 58     STA ram_0058
bra_D36B:
C - - - - - 0x03D37B 0F:D36B: A5 56     LDA ram_cam_pos_lo
C - - - - - 0x03D37D 0F:D36D: 29 E0     AND #$E0
C - - - - - 0x03D37F 0F:D36F: C5 66     CMP ram_0066
C - - - - - 0x03D381 0F:D371: F0 BD     BEQ bra_D330
C - - - - - 0x03D383 0F:D373: 85 66     STA ram_0066
C - - - - - 0x03D385 0F:D375: A4 65     LDY ram_0065
C - - - - - 0x03D387 0F:D377: F0 06     BEQ bra_D37F
C - - - - - 0x03D389 0F:D379: E6 59     INC ram_section_behind
C - - - - - 0x03D38B 0F:D37B: E6 5A     INC ram_section_ahead
C - - - - - 0x03D38D 0F:D37D: 10 04     BPL bra_D383
bra_D37F:
C - - - - - 0x03D38F 0F:D37F: C6 59     DEC ram_section_behind
C - - - - - 0x03D391 0F:D381: C6 5A     DEC ram_section_ahead
bra_D383:
C - - - - - 0x03D393 0F:D383: A0 00     LDY #$00
C - - - - - 0x03D395 0F:D385: 84 5B     STY ram_drawing_behind
C - - - - - 0x03D397 0F:D387: 84 5C     STY ram_drawing_ahead
C - - - - - 0x03D399 0F:D389: C8        INY ; 01
C - - - - - 0x03D39A 0F:D38A: 84 67     STY ram_0067
C - - - - - 0x03D39C 0F:D38C: 20 1D D0  JSR sub_D01D
C - - - - - 0x03D39F 0F:D38F: 4C 30 D3  JMP loc_D330



ofs_001_D392_09:
C - - J - - 0x03D3A2 0F:D392: A5 64     LDA ram_0064_timer
C - - - - - 0x03D3A4 0F:D394: C9 08     CMP #$08
C - - - - - 0x03D3A6 0F:D396: F0 0D     BEQ bra_D3A5
C - - - - - 0x03D3A8 0F:D398: A9 02     LDA #$02
C - - - - - 0x03D3AA 0F:D39A: 85 1C     STA ram_disable_rendering_timer
C - - - - - 0x03D3AC 0F:D39C: 20 C7 D4  JSR sub_D4C7
C - - - - - 0x03D3AF 0F:D39F: F0 01     BEQ bra_D3A2
C - - - - - 0x03D3B1 0F:D3A1: 60        RTS
bra_D3A2:
C - - - - - 0x03D3B2 0F:D3A2: 4C 7E D5  JMP loc_D57E
bra_D3A5:
C - - - - - 0x03D3B5 0F:D3A5: A9 00     LDA #$00
C - - - - - 0x03D3B7 0F:D3A7: 85 1C     STA ram_disable_rendering_timer
C - - - - - 0x03D3B9 0F:D3A9: 20 53 F7  JSR sub_F753_prepare_single_screen_fill_mode_nametable_mapping
C - - - - - 0x03D3BC 0F:D3AC: A9 0C     LDA #$0C
C - - - - - 0x03D3BE 0F:D3AE: 85 64     STA ram_0064_timer
C - - - - - 0x03D3C0 0F:D3B0: A9 00     LDA #$00
C - - - - - 0x03D3C2 0F:D3B2: 85 8D     STA ram_008D_flag
C - - - - - 0x03D3C4 0F:D3B4: A9 02     LDA #con_002A_02
C - - - - - 0x03D3C6 0F:D3B6: 85 2A     STA ram_002A_script
C - - - - - 0x03D3C8 0F:D3B8: 60        RTS



sub_D3B9:
; in
    ; A = 
    ; N
        ; 0 = 
        ; 1 = 
; out
    ; Y = 
C - - - - - 0x03D3C9 0F:D3B9: 30 0D     BMI bra_D3C8
C - - - - - 0x03D3CB 0F:D3BB: A0 00     LDY #$00
bra_D3BD_loop:
C - - - - - 0x03D3CD 0F:D3BD: D9 70 07  CMP ram_0770,Y
C - - - - - 0x03D3D0 0F:D3C0: 90 05     BCC bra_D3C7_RTS
C - - - - - 0x03D3D2 0F:D3C2: C8        INY
C - - - - - 0x03D3D3 0F:D3C3: C0 08     CPY #$08
C - - - - - 0x03D3D5 0F:D3C5: D0 F6     BNE bra_D3BD_loop
bra_D3C7_RTS:
C - - - - - 0x03D3D7 0F:D3C7: 60        RTS
bra_D3C8:
C - - - - - 0x03D3D8 0F:D3C8: C9 C0     CMP #$C0
C - - - - - 0x03D3DA 0F:D3CA: B0 0D     BCS bra_D3D9
C - - - - - 0x03D3DC 0F:D3CC: A0 00     LDY #$00
bra_D3CE_loop:
C - - - - - 0x03D3DE 0F:D3CE: D9 78 07  CMP ram_0778,Y
C - - - - - 0x03D3E1 0F:D3D1: 90 F4     BCC bra_D3C7_RTS
C - - - - - 0x03D3E3 0F:D3D3: C8        INY
C - - - - - 0x03D3E4 0F:D3D4: C0 08     CPY #$08
C - - - - - 0x03D3E6 0F:D3D6: D0 F6     BNE bra_D3CE_loop
C - - - - - 0x03D3E8 0F:D3D8: 60        RTS
bra_D3D9:
C - - - - - 0x03D3E9 0F:D3D9: C9 DC     CMP #$DC
C - - - - - 0x03D3EB 0F:D3DB: F0 18     BEQ bra_D3F5
C - - - - - 0x03D3ED 0F:D3DD: C9 DD     CMP #$DD
C - - - - - 0x03D3EF 0F:D3DF: F0 14     BEQ bra_D3F5
C - - - - - 0x03D3F1 0F:D3E1: C9 DE     CMP #$DE
C - - - - - 0x03D3F3 0F:D3E3: F0 0D     BEQ bra_D3F2
C - - - - - 0x03D3F5 0F:D3E5: C9 DF     CMP #$DF
C - - - - - 0x03D3F7 0F:D3E7: F0 09     BEQ bra_D3F2
C - - - - - 0x03D3F9 0F:D3E9: C9 E4     CMP #$E4
C - - - - - 0x03D3FB 0F:D3EB: F0 0B     BEQ bra_D3F8
- - - - - - 0x03D3FD 0F:D3ED: C9 E5     CMP #$E5
- - - - - - 0x03D3FF 0F:D3EF: F0 07     BEQ bra_D3F8
- - - - - - 0x03D401 0F:D3F1: 60        RTS
bra_D3F2:
C - - - - - 0x03D402 0F:D3F2: A0 07     LDY #$07
C - - - - - 0x03D404 0F:D3F4: 60        RTS
bra_D3F5:
C - - - - - 0x03D405 0F:D3F5: A0 05     LDY #$05
C - - - - - 0x03D407 0F:D3F7: 60        RTS
bra_D3F8:
C - - - - - 0x03D408 0F:D3F8: A0 00     LDY #$00
C - - - - - 0x03D40A 0F:D3FA: 60        RTS



sub_D3FB:
C - - - - - 0x03D40B 0F:D3FB: 20 00 C9  JSR sub_C900_select_prg_bank_for_blk_1
C - - - - - 0x03D40E 0F:D3FE: 20 9B D4  JSR sub_D49B_prepare_blk_data_pointers
C - - - - - 0x03D411 0F:D401: A0 00     LDY #$00
C - - - - - 0x03D413 0F:D403: B1 0A     LDA (ram_000A_t002_data),Y
C - - - - - 0x03D415 0F:D405: 18        CLC
C - - - - - 0x03D416 0F:D406: 69 01     ADC #$01
C - - - - - 0x03D418 0F:D408: C8        INY ; 01
C - - - - - 0x03D419 0F:D409: 84 00     STY ram_0000_t02D
C - - - - - 0x03D41B 0F:D40B: 0A        ASL
C - - - - - 0x03D41C 0F:D40C: 18        CLC
C - - - - - 0x03D41D 0F:D40D: 65 00     ADC ram_0000_t02D
C - - - - - 0x03D41F 0F:D40F: 85 00     STA ram_0000_t02D
C - - - - - 0x03D421 0F:D411: A5 34     LDA ram_blk_fr
C - - - - - 0x03D423 0F:D413: 0A        ASL
C - - - - - 0x03D424 0F:D414: 18        CLC
C - - - - - 0x03D425 0F:D415: 65 00     ADC ram_0000_t02D
C - - - - - 0x03D427 0F:D417: A8        TAY
loc_D418_loop:
C D 2 - - - 0x03D428 0F:D418: A2 00     LDX #$00
C - - - - - 0x03D42A 0F:D41A: AD 20 05  LDA ram_plr_spd_Y_hi
C - - - - - 0x03D42D 0F:D41D: 10 02     BPL bra_D421
C - - - - - 0x03D42F 0F:D41F: E8        INX ; 01
C - - - - - 0x03D430 0F:D420: C8        INY
bra_D421:
C - - - - - 0x03D431 0F:D421: B1 0A     LDA (ram_000A_t002_data),Y
C - - - - - 0x03D433 0F:D423: 29 F0     AND #$F0
C - - - - - 0x03D435 0F:D425: C9 D0     CMP #$D0
C - - - - - 0x03D437 0F:D427: F0 37     BEQ bra_D460_D0_DF
C - - - - - 0x03D439 0F:D429: C9 80     CMP #$80
C - - - - - 0x03D43B 0F:D42B: F0 2A     BEQ bra_D457_80_8F
C - - - - - 0x03D43D 0F:D42D: A5 68     LDA ram_0068
C - - - - - 0x03D43F 0F:D42F: 30 11     BMI bra_D442
C - - - - - 0x03D441 0F:D431: A5 57     LDA ram_cam_pos_hi
C - - - - - 0x03D443 0F:D433: 18        CLC
C - - - - - 0x03D444 0F:D434: 71 0A     ADC (ram_000A_t002_data),Y
C - - - - - 0x03D446 0F:D436: 85 57     STA ram_cam_pos_hi
C - - - - - 0x03D448 0F:D438: CA        DEX
C - - - - - 0x03D449 0F:D439: F0 04     BEQ bra_D43F
C - - - - - 0x03D44B 0F:D43B: C6 34     DEC ram_blk_fr
C - - - - - 0x03D44D 0F:D43D: 10 02     BPL bra_D441_RTS
bra_D43F:
C - - - - - 0x03D44F 0F:D43F: E6 34     INC ram_blk_fr
loc_D441_RTS:   ; bzk optimize
bra_D441_RTS:
C D 2 - - - 0x03D451 0F:D441: 60        RTS
bra_D442:
C - - - - - 0x03D452 0F:D442: B1 0A     LDA (ram_000A_t002_data),Y
; / 10
C - - - - - 0x03D454 0F:D444: 4A        LSR
C - - - - - 0x03D455 0F:D445: 4A        LSR
C - - - - - 0x03D456 0F:D446: 4A        LSR
C - - - - - 0x03D457 0F:D447: 4A        LSR
C - - - - - 0x03D458 0F:D448: 85 34     STA ram_blk_fr
C - - - - - 0x03D45A 0F:D44A: B1 0A     LDA (ram_000A_t002_data),Y
C - - - - - 0x03D45C 0F:D44C: 29 0F     AND #$0F
C - - - - - 0x03D45E 0F:D44E: 85 57     STA ram_cam_pos_hi
C - - - - - 0x03D460 0F:D450: A9 00     LDA #$00
C - - - - - 0x03D462 0F:D452: 85 56     STA ram_cam_pos_lo
C - - - - - 0x03D464 0F:D454: 85 58     STA ram_0058
C - - - - - 0x03D466 0F:D456: 60        RTS
bra_D457_80_8F:
C - - - - - 0x03D467 0F:D457: B1 0A     LDA (ram_000A_t002_data),Y
C - - - - - 0x03D469 0F:D459: 29 0F     AND #$0F
C - - - - - 0x03D46B 0F:D45B: 85 34     STA ram_blk_fr
C - - - - - 0x03D46D 0F:D45D: 4C 41 D4  JMP loc_D441_RTS
bra_D460_D0_DF:
C - - - - - 0x03D470 0F:D460: B1 0A     LDA (ram_000A_t002_data),Y
C - - - - - 0x03D472 0F:D462: 29 0F     AND #$0F
C - - - - - 0x03D474 0F:D464: 0A        ASL
C - - - - - 0x03D475 0F:D465: A8        TAY
C - - - - - 0x03D476 0F:D466: B9 5A D7  LDA tbl_D75A,Y
C - - - - - 0x03D479 0F:D469: 85 0A     STA ram_000A_t003_data
C - - - - - 0x03D47B 0F:D46B: B9 5B D7  LDA tbl_D75A + $01,Y
C - - - - - 0x03D47E 0F:D46E: 85 0B     STA ram_000A_t003_data + $01
C - - - - - 0x03D480 0F:D470: A0 00     LDY #$00
C - - - - - 0x03D482 0F:D472: B1 0A     LDA (ram_000A_t003_data),Y
C - - - - - 0x03D484 0F:D474: C8        INY ; 01
C - - - - - 0x03D485 0F:D475: C9 F0     CMP #$F0
C - - - - - 0x03D487 0F:D477: F0 16     BEQ bra_D48F
C - - - - - 0x03D489 0F:D479: C9 F1     CMP #$F1
C - - - - - 0x03D48B 0F:D47B: F0 03     BEQ bra_D480
- - - - - - 0x03D48D 0F:D47D: 4C 41 D4  JMP loc_D441_RTS
bra_D480:
; Y = 01
C - - - - - 0x03D490 0F:D480: E6 33     INC ram_blk_lo
C - - - - - 0x03D492 0F:D482: B1 0A     LDA (ram_000A_t003_data),Y
C - - - - - 0x03D494 0F:D484: 85 57     STA ram_cam_pos_hi
C - - - - - 0x03D496 0F:D486: A9 00     LDA #$00
C - - - - - 0x03D498 0F:D488: 85 56     STA ram_cam_pos_lo
C - - - - - 0x03D49A 0F:D48A: 85 34     STA ram_blk_fr
C - - - - - 0x03D49C 0F:D48C: 4C 41 D4  JMP loc_D441_RTS
bra_D48F:
; Y = 01
C - - - - - 0x03D49F 0F:D48F: A5 57     LDA ram_cam_pos_hi
C - - - - - 0x03D4A1 0F:D491: D1 0A     CMP (ram_000A_t003_data),Y
C - - - - - 0x03D4A3 0F:D493: 90 02     BCC bra_D497
C - - - - - 0x03D4A5 0F:D495: C8        INY
C - - - - - 0x03D4A6 0F:D496: C8        INY
bra_D497:
C - - - - - 0x03D4A7 0F:D497: C8        INY
C - - - - - 0x03D4A8 0F:D498: 4C 18 D4  JMP loc_D418_loop



sub_D49B_prepare_blk_data_pointers:
C - - - - - 0x03D4AB 0F:D49B: A5 32     LDA ram_blk_hi
C - - - - - 0x03D4AD 0F:D49D: 0A        ASL
C - - - - - 0x03D4AE 0F:D49E: A8        TAY
C - - - - - 0x03D4AF 0F:D49F: B9 D4 D5  LDA tbl_D5D4_blk_data,Y
C - - - - - 0x03D4B2 0F:D4A2: 85 08     STA ram_0008_t001_data
C - - - - - 0x03D4B4 0F:D4A4: B9 D5 D5  LDA tbl_D5D4_blk_data + $01,Y
C - - - - - 0x03D4B7 0F:D4A7: 85 09     STA ram_0008_t001_data + $01
C - - - - - 0x03D4B9 0F:D4A9: A5 33     LDA ram_blk_lo
C - - - - - 0x03D4BB 0F:D4AB: 0A        ASL
C - - - - - 0x03D4BC 0F:D4AC: A8        TAY
C - - - - - 0x03D4BD 0F:D4AD: B1 08     LDA (ram_0008_t001_data),Y
C - - - - - 0x03D4BF 0F:D4AF: 85 0A     STA ram_000A_t002_data
C - - - - - 0x03D4C1 0F:D4B1: C8        INY
C - - - - - 0x03D4C2 0F:D4B2: B1 08     LDA (ram_0008_t001_data),Y
C - - - - - 0x03D4C4 0F:D4B4: 85 0B     STA ram_000A_t002_data + $01
C - - - - - 0x03D4C6 0F:D4B6: A5 34     LDA ram_blk_fr
C - - - - - 0x03D4C8 0F:D4B8: 0A        ASL
C - - - - - 0x03D4C9 0F:D4B9: 85 0E     STA ram_000E_temp
C - - - - - 0x03D4CB 0F:D4BB: A8        TAY
C - - - - - 0x03D4CC 0F:D4BC: C8        INY
C - - - - - 0x03D4CD 0F:D4BD: B1 0A     LDA (ram_000A_t002_data),Y
C - - - - - 0x03D4CF 0F:D4BF: 85 50     STA ram_0050_t000_data
C - - - - - 0x03D4D1 0F:D4C1: C8        INY
C - - - - - 0x03D4D2 0F:D4C2: B1 0A     LDA (ram_000A_t002_data),Y
C - - - - - 0x03D4D4 0F:D4C4: 85 51     STA ram_0050_t000_data + $01
C - - - - - 0x03D4D6 0F:D4C6: 60        RTS



sub_D4C7:
C - - - - - 0x03D4D7 0F:D4C7: 20 05 C9  JSR sub_C905_select_proper_prg_bank_for_blk
C - - - - - 0x03D4DA 0F:D4CA: A5 7D     LDA ram_007D
C - - - - - 0x03D4DC 0F:D4CC: 29 0F     AND #$0F
; * 08
C - - - - - 0x03D4DE 0F:D4CE: 0A        ASL
C - - - - - 0x03D4DF 0F:D4CF: 0A        ASL
C - - - - - 0x03D4E0 0F:D4D0: 0A        ASL
C - - - - - 0x03D4E1 0F:D4D1: A8        TAY
C - - - - - 0x03D4E2 0F:D4D2: B9 5E D5  LDA tbl_D55E,Y
C - - - - - 0x03D4E5 0F:D4D5: 85 62     STA ram_ppu_address_hi
C - - - - - 0x03D4E7 0F:D4D7: B9 5F D5  LDA tbl_D55E + $01,Y
C - - - - - 0x03D4EA 0F:D4DA: 85 61     STA ram_ppu_address_lo
C - - - - - 0x03D4EC 0F:D4DC: B9 60 D5  LDA tbl_D55E + $02,Y
C - - - - - 0x03D4EF 0F:D4DF: 85 0F     STA ram_000E_t001_ppu_address + $01
C - - - - - 0x03D4F1 0F:D4E1: B9 61 D5  LDA tbl_D55E + $03,Y
C - - - - - 0x03D4F4 0F:D4E4: 85 0E     STA ram_000E_t001_ppu_address
C - - - - - 0x03D4F6 0F:D4E6: B9 62 D5  LDA tbl_D55E + $04,Y
C - - - - - 0x03D4F9 0F:D4E9: 85 08     STA ram_0008_t034
C - - - - - 0x03D4FB 0F:D4EB: A5 64     LDA ram_0064_timer
C - - - - - 0x03D4FD 0F:D4ED: 0A        ASL
C - - - - - 0x03D4FE 0F:D4EE: 0A        ASL
C - - - - - 0x03D4FF 0F:D4EF: 18        CLC
C - - - - - 0x03D500 0F:D4F0: 65 61     ADC ram_ppu_address_lo
C - - - - - 0x03D502 0F:D4F2: 85 61     STA ram_ppu_address_lo
C - - - - - 0x03D504 0F:D4F4: A5 64     LDA ram_0064_timer
C - - - - - 0x03D506 0F:D4F6: 18        CLC
C - - - - - 0x03D507 0F:D4F7: 65 0E     ADC ram_000E_t001_ppu_address
C - - - - - 0x03D509 0F:D4F9: 85 0E     STA ram_000E_t001_ppu_address
bra_D4FB_loop:
C - - - - - 0x03D50B 0F:D4FB: B9 63 D5  LDA tbl_D55E + $05,Y
C - - - - - 0x03D50E 0F:D4FE: C8        INY
C - - - - - 0x03D50F 0F:D4FF: 84 09     STY ram_0009_temp
C - - - - - 0x03D511 0F:D501: 20 66 CF  JSR sub_CF66_calculate_pointer_for_4x4_block___custom_index
C - - - - - 0x03D514 0F:D504: A9 04     LDA #$04
C - - - - - 0x03D516 0F:D506: 85 06     STA ram_0006_t006
C - - - - - 0x03D518 0F:D508: 20 C6 E8  JSR sub_E8C6_set_buffer_mode_04
C - - - - - 0x03D51B 0F:D50B: 4C 11 D5  JMP loc_D511
bra_D50E_loop:
C - - - - - 0x03D51E 0F:D50E: 20 BB E8  JSR sub_E8BB
loc_D511:
C D 2 - - - 0x03D521 0F:D511: A0 00     LDY #$00
bra_D513_loop:
C - - - - - 0x03D523 0F:D513: B1 02     LDA (ram_0002_t004_data),Y
C - - - - - 0x03D525 0F:D515: 9D 00 03  STA ram_ppu_buffer,X
C - - - - - 0x03D528 0F:D518: E8        INX
C - - - - - 0x03D529 0F:D519: C8        INY
C - - - - - 0x03D52A 0F:D51A: C0 04     CPY #$04
C - - - - - 0x03D52C 0F:D51C: D0 F5     BNE bra_D513_loop
C - - - - - 0x03D52E 0F:D51E: 86 1D     STX ram_index_ppu_buffer
C - - - - - 0x03D530 0F:D520: A9 04     LDA #$04
C - - - - - 0x03D532 0F:D522: A2 02     LDX #< ram_0002_t004_data
C - - - - - 0x03D534 0F:D524: 20 99 E8  JSR sub_E899_increase_indirect_address
C - - - - - 0x03D537 0F:D527: A9 20     LDA #$20
C - - - - - 0x03D539 0F:D529: A2 61     LDX #< ram_ppu_address_lo
C - - - - - 0x03D53B 0F:D52B: 20 99 E8  JSR sub_E899_increase_indirect_address
C - - - - - 0x03D53E 0F:D52E: C6 06     DEC ram_0006_t006
C - - - - - 0x03D540 0F:D530: D0 DC     BNE bra_D50E_loop
C - - - - - 0x03D542 0F:D532: A6 1D     LDX ram_index_ppu_buffer
C - - - - - 0x03D544 0F:D534: A5 0E     LDA ram_000E_t001_ppu_address
C - - - - - 0x03D546 0F:D536: 9D 00 03  STA ram_ppu_buffer,X
C - - - - - 0x03D549 0F:D539: E8        INX
C - - - - - 0x03D54A 0F:D53A: A5 0F     LDA ram_000E_t001_ppu_address + $01
C - - - - - 0x03D54C 0F:D53C: 9D 00 03  STA ram_ppu_buffer,X
C - - - - - 0x03D54F 0F:D53F: E8        INX
C - - - - - 0x03D550 0F:D540: A4 63     LDY ram_0063_block_id
C - - - - - 0x03D552 0F:D542: B1 5F     LDA (ram_005F_t000_nametable_attr_data),Y
C - - - - - 0x03D554 0F:D544: 9D 00 03  STA ram_ppu_buffer,X
C - - - - - 0x03D557 0F:D547: E8        INX
C - - - - - 0x03D558 0F:D548: 86 1D     STX ram_index_ppu_buffer
C - - - - - 0x03D55A 0F:D54A: A9 08     LDA #$08
C - - - - - 0x03D55C 0F:D54C: A2 0E     LDX #< ram_000E_t001_ppu_address
C - - - - - 0x03D55E 0F:D54E: 20 99 E8  JSR sub_E899_increase_indirect_address
C - - - - - 0x03D561 0F:D551: A4 09     LDY ram_0009_temp
C - - - - - 0x03D563 0F:D553: C6 08     DEC ram_0008_t034
C - - - - - 0x03D565 0F:D555: D0 A4     BNE bra_D4FB_loop
C - - - - - 0x03D567 0F:D557: E6 64     INC ram_0064_timer
C - - - - - 0x03D569 0F:D559: A5 64     LDA ram_0064_timer
C - - - - - 0x03D56B 0F:D55B: C9 08     CMP #$08
C - - - - - 0x03D56D 0F:D55D: 60        RTS



tbl_D55E:
; 00 
- D 2 - - - 0x03D56E 0F:D55E: 21 00     .dbyt $2100 ; ppu adddess
- D 2 - - - 0x03D570 0F:D560: 23 D0     .dbyt $23D0 ; ppu adddess
- D 2 - - - 0x03D572 0F:D562: 03        .byte $03   ; data counter
- D 2 - - - 0x03D573 0F:D563: 30        .byte $30   ; 01 index for 4x4 block
- D 2 - - - 0x03D574 0F:D564: 31        .byte $31   ; 02 index for 4x4 block
- D 2 - - - 0x03D575 0F:D565: 33        .byte $33   ; 03 index for 4x4 block
; 01 
- D 2 - - - 0x03D576 0F:D566: 22 00     .dbyt $2200 ; ppu adddess
- D 2 - - - 0x03D578 0F:D568: 23 E0     .dbyt $23E0 ; ppu adddess
- D 2 - - - 0x03D57A 0F:D56A: 02        .byte $02   ; data counter
- D 2 - - - 0x03D57B 0F:D56B: 30        .byte $30   ; 01 index for 4x4 block
- D 2 - - - 0x03D57C 0F:D56C: 32        .byte $32   ; 02 index for 4x4 block
- - - - - - 0x03D57D 0F:D56D: 00        .byte $00   ; placeholder
; 02 
- D 2 - - - 0x03D57E 0F:D56E: 20 80     .dbyt $2080 ; ppu adddess
- D 2 - - - 0x03D580 0F:D570: 23 C8     .dbyt $23C8 ; ppu adddess
- D 2 - - - 0x03D582 0F:D572: 02        .byte $02   ; data counter
- D 2 - - - 0x03D583 0F:D573: 32        .byte $32   ; 01 index for 4x4 block
- D 2 - - - 0x03D584 0F:D574: 33        .byte $33   ; 02 index for 4x4 block
- - - - - - 0x03D585 0F:D575: 00        .byte $00   ; placeholder
; 03 
- D 2 - - - 0x03D586 0F:D576: 22 80     .dbyt $2280 ; ppu adddess
- D 2 - - - 0x03D588 0F:D578: 23 E8     .dbyt $23E8 ; ppu adddess
- D 2 - - - 0x03D58A 0F:D57A: 02        .byte $02   ; data counter
- D 2 - - - 0x03D58B 0F:D57B: 32        .byte $32   ; 01 index for 4x4 block
- D 2 - - - 0x03D58C 0F:D57C: 33        .byte $33   ; 02 index for 4x4 block
- - - - - - 0x03D58D 0F:D57D: 00        .byte $00   ; placeholder



loc_D57E:
C D 2 - - - 0x03D58E 0F:D57E: A5 7D     LDA ram_007D
C - - - - - 0x03D590 0F:D580: 29 0F     AND #$0F
C - - - - - 0x03D592 0F:D582: C9 02     CMP #$02
C - - - - - 0x03D594 0F:D584: F0 01     BEQ bra_D587
C - - - - - 0x03D596 0F:D586: 60        RTS
bra_D587:
C - - - - - 0x03D597 0F:D587: A9 20     LDA #> $2080
C - - - - - 0x03D599 0F:D589: 85 62     STA ram_ppu_address_hi
C - - - - - 0x03D59B 0F:D58B: A9 80     LDA #< $2080
C - - - - - 0x03D59D 0F:D58D: 85 61     STA ram_ppu_address_lo
C - - - - - 0x03D59F 0F:D58F: 20 B5 E8  JSR sub_E8B5_set_buffer_mode_01
C - - - - - 0x03D5A2 0F:D592: A0 40     LDY #$40
C - - - - - 0x03D5A4 0F:D594: A9 00     LDA #$00
bra_D596_loop:
C - - - - - 0x03D5A6 0F:D596: 9D 00 03  STA ram_ppu_buffer,X
C - - - - - 0x03D5A9 0F:D599: E8        INX
C - - - - - 0x03D5AA 0F:D59A: 88        DEY
C - - - - - 0x03D5AB 0F:D59B: D0 F9     BNE bra_D596_loop
C - - - - - 0x03D5AD 0F:D59D: 20 DE E8  JSR sub_E8DE_store_index_and_close_buffer
C - - - - - 0x03D5B0 0F:D5A0: A9 23     LDA #> $23C8
C - - - - - 0x03D5B2 0F:D5A2: 85 62     STA ram_ppu_address_hi
C - - - - - 0x03D5B4 0F:D5A4: A9 C8     LDA #< $23C8
C - - - - - 0x03D5B6 0F:D5A6: 85 61     STA ram_ppu_address_lo
C - - - - - 0x03D5B8 0F:D5A8: 20 B5 E8  JSR sub_E8B5_set_buffer_mode_01
C - - - - - 0x03D5BB 0F:D5AB: A0 08     LDY #$08
C - - - - - 0x03D5BD 0F:D5AD: A9 F0     LDA #$F0
bra_D5AF_loop:
C - - - - - 0x03D5BF 0F:D5AF: 9D 00 03  STA ram_ppu_buffer,X
C - - - - - 0x03D5C2 0F:D5B2: E8        INX
C - - - - - 0x03D5C3 0F:D5B3: 88        DEY
C - - - - - 0x03D5C4 0F:D5B4: D0 F9     BNE bra_D5AF_loop
C - - - - - 0x03D5C6 0F:D5B6: 4C DE E8  JMP loc_E8DE_store_index_and_close_buffer



sub_D5B9:
C - - - - - 0x03D5C9 0F:D5B9: A9 03     LDA #$03
C - - - - - 0x03D5CB 0F:D5BB: 85 72     STA ram_0072_chr_banks_config
C - - - - - 0x03D5CD 0F:D5BD: 20 C3 D5  JSR sub_D5C3
C - - - - - 0x03D5D0 0F:D5C0: 4C 04 D0  JMP loc_D004



sub_D5C3:
sub_0x03D5D3:
C - - - - - 0x03D5D3 0F:D5C3: A9 E0     LDA #$E0
C - - - - - 0x03D5D5 0F:D5C5: 85 CA     STA ram_00CA
C - - - - - 0x03D5D7 0F:D5C7: A9 00     LDA #$00
C - - - - - 0x03D5D9 0F:D5C9: 85 CB     STA ram_00CB
C - - - - - 0x03D5DB 0F:D5CB: A0 E0     LDY #$E0
C - - - - - 0x03D5DD 0F:D5CD: A2 2E     LDX #$2E
C - - - - - 0x03D5DF 0F:D5CF: A9 17     LDA #con_irq_17
C - - - - - 0x03D5E1 0F:D5D1: 4C BF E5  JMP loc_E5BF



tbl_D5D4_blk_data:
- D 2 - - - 0x03D5E4 0F:D5D4: 01 80     .word _off044_0x020011_00
- D 2 - - - 0x03D5E6 0F:D5D6: E2 8D     .word _off044_0x020DF2_01
- D 2 - - - 0x03D5E8 0F:D5D8: AF 99     .word _off044_0x0219BF_02
- D 2 - - - 0x03D5EA 0F:D5DA: 82 A6     .word _off044_0x022692_03
- D 2 - - - 0x03D5EC 0F:D5DC: 11 B3     .word _off044_0x023321_04
- D 2 - - - 0x03D5EE 0F:D5DE: 01 80     .word _off044_0x01C011_05
- D 2 - - - 0x03D5F0 0F:D5E0: FF 89     .word _off044_0x01CA0F_06
- D 2 - - - 0x03D5F2 0F:D5E2: E6 91     .word _off044_0x01D1F6_07
- D 2 - - - 0x03D5F4 0F:D5E4: 55 9E     .word _off044_0x01DE65_08
- D 2 - - - 0x03D5F6 0F:D5E6: 01 80     .word _off044_0x018011_09
- D 2 - - - 0x03D5F8 0F:D5E8: 10 88     .word _off044_0x018820_0A
- D 2 - - - 0x03D5FA 0F:D5EA: 85 AA     .word _off044_0x01EA95_0B
- D 2 - - - 0x03D5FC 0F:D5EC: CB 9F     .word _off044_0x019FDB_0C
- D 2 - - - 0x03D5FE 0F:D5EE: 4B A9     .word _off044_0x01A95B_0D
- D 2 - - - 0x03D600 0F:D5F0: EA B2     .word _off044_0x01B2FA_0E



tbl_D5F2_4x4_tile_blocks:
- D 2 - - - 0x03D602 0F:D5F2: 41 84     .word _off045_0x020451_00
- D 2 - - - 0x03D604 0F:D5F4: 0A 94     .word _off045_0x02141A_01
- D 2 - - - 0x03D606 0F:D5F6: 10 A1     .word _off045_0x022120_02
- D 2 - - - 0x03D608 0F:D5F8: 6D AC     .word _off045_0x022C7D_03
- D 2 - - - 0x03D60A 0F:D5FA: 27 B7     .word _off045_0x023737_04
- D 2 - - - 0x03D60C 0F:D5FC: 49 84     .word _off045_0x01C459_05
- D 2 - - - 0x03D60E 0F:D5FE: 84 8D     .word _off045_0x01CD94_06
- D 2 - - - 0x03D610 0F:D600: F5 97     .word _off045_0x01D805_07
- D 2 - - - 0x03D612 0F:D602: 25 A4     .word _off045_0x01E435_08
- D 2 - - - 0x03D614 0F:D604: C0 82     .word _off045_0x0182D0_09
- D 2 - - - 0x03D616 0F:D606: CB 8E     .word _off045_0x018EDB_0A
- D 2 - - - 0x03D618 0F:D608: 61 AE     .word _off045_0x01EE71_0B
- D 2 - - - 0x03D61A 0F:D60A: EB A2     .word _off045_0x01A2FB_0C
- D 2 - - - 0x03D61C 0F:D60C: 8A AC     .word _off045_0x01AC9A_0D
- D 2 - - - 0x03D61E 0F:D60E: B5 B5     .word _off045_0x01B5C5_0E



tbl_D610_nametable_attributes:
; 1 attribute byte per 4x4 tile block
- D 2 - - - 0x03D620 0F:D610: 51 8D     .word _off046_0x020D61_00
- D 2 - - - 0x03D622 0F:D612: 5A 99     .word _off046_0x02196A_01
- D 2 - - - 0x03D624 0F:D614: 30 A6     .word _off046_0x022640_02
- D 2 - - - 0x03D626 0F:D616: AD B2     .word _off046_0x0232BD_03
- D 2 - - - 0x03D628 0F:D618: A7 BB     .word _off046_0x023BB7_04
- D 2 - - - 0x03D62A 0F:D61A: A9 89     .word _off046_0x01C9B9_05
- D 2 - - - 0x03D62C 0F:D61C: A4 91     .word _off046_0x01D1B4_06
- D 2 - - - 0x03D62E 0F:D61E: F5 9D     .word _off046_0x01DE05_07
- D 2 - - - 0x03D630 0F:D620: 25 AA     .word _off046_0x01EA35_08
- D 2 - - - 0x03D632 0F:D622: C0 87     .word _off046_0x0187D0_09
- D 2 - - - 0x03D634 0F:D624: CB 9E     .word _off046_0x019EDB_0A
- D 2 - - - 0x03D636 0F:D626: 31 B4     .word _off046_0x01F441_0B
- D 2 - - - 0x03D638 0F:D628: EB A8     .word _off046_0x01A8FB_0C
- D 2 - - - 0x03D63A 0F:D62A: 8A B2     .word _off046_0x01B29A_0D
- D 2 - - - 0x03D63C 0F:D62C: 75 BD     .word _off046_0x01BD85_0E



tbl_D62E:
- D 2 - - - 0x03D63E 0F:D62E: 4C D6     .word _off043_D64C_00
- D 2 - - - 0x03D640 0F:D630: 54 D6     .word _off043_D654_01
- D 2 - - - 0x03D642 0F:D632: 60 D6     .word _off043_D660_02
- D 2 - - - 0x03D644 0F:D634: 6A D6     .word _off043_D66A_03
- D 2 - - - 0x03D646 0F:D636: 74 D6     .word _off043_D674_04
- D 2 - - - 0x03D648 0F:D638: 7A D6     .word _off043_D67A_05
- D 2 - - - 0x03D64A 0F:D63A: 82 D6     .word _off043_D682_06
- D 2 - - - 0x03D64C 0F:D63C: 88 D6     .word _off043_D688_07
- D 2 - - - 0x03D64E 0F:D63E: 96 D6     .word _off043_D696_08
- D 2 - - - 0x03D650 0F:D640: A0 D6     .word _off043_D6A0_09
- D 2 - - - 0x03D652 0F:D642: A4 D6     .word _off043_D6A4_0A
- D 2 - - - 0x03D654 0F:D644: B2 D6     .word _off043_D6B2_0B
- D 2 - - - 0x03D656 0F:D646: B8 D6     .word _off043_D6B8_0C
- D 2 - - - 0x03D658 0F:D648: BE D6     .word _off043_D6BE_0D
- D 2 - - - 0x03D65A 0F:D64A: C6 D6     .word _off043_D6C6_0E



_off043_D64C_00:
- D 2 - I - 0x03D65C 0F:D64C: CC D6     .word off_D6CC_00_00
- D 2 - I - 0x03D65E 0F:D64E: CD D6     .word off_D6CD_00_01
- D 2 - I - 0x03D660 0F:D650: D2 D6     .word off_D6D2_00_02
- D 2 - I - 0x03D662 0F:D652: D7 D6     .word off_D6D7_00_03



_off043_D654_01:
- D 2 - I - 0x03D664 0F:D654: DC D6     .word off_D6DC_01_00
- D 2 - I - 0x03D666 0F:D656: DF D6     .word off_D6DF_01_01
- D 2 - I - 0x03D668 0F:D658: E2 D6     .word off_D6E2_01_02
- D 2 - I - 0x03D66A 0F:D65A: E5 D6     .word off_D6E5_01_03
- D 2 - I - 0x03D66C 0F:D65C: E8 D6     .word off_D6E8_01_04
- D 2 - I - 0x03D66E 0F:D65E: EB D6     .word off_D6EB_01_05



_off043_D660_02:
- D 2 - I - 0x03D670 0F:D660: EE D6     .word off_D6EE_02_00
- D 2 - I - 0x03D672 0F:D662: F0 D6     .word off_D6F0_02_01
- D 2 - I - 0x03D674 0F:D664: F1 D6     .word off_D6F1_02_02
- D 2 - I - 0x03D676 0F:D666: F3 D6     .word off_D6F3_02_03
- D 2 - I - 0x03D678 0F:D668: F6 D6     .word off_D6F6_02_04



_off043_D66A_03:
- D 2 - I - 0x03D67A 0F:D66A: F8 D6     .word off_D6F8_03_00
- D 2 - I - 0x03D67C 0F:D66C: FB D6     .word off_D6FB_03_01
- D 2 - I - 0x03D67E 0F:D66E: FD D6     .word off_D6FD_03_02
- D 2 - I - 0x03D680 0F:D670: FF D6     .word off_D6FF_03_03
- D 2 - I - 0x03D682 0F:D672: 01 D7     .word off_D701_03_04



_off043_D674_04:
- D 2 - I - 0x03D684 0F:D674: 04 D7     .word off_D704_04_00
- D 2 - I - 0x03D686 0F:D676: 07 D7     .word off_D707_04_01
- D 2 - I - 0x03D688 0F:D678: 0A D7     .word off_D70A_04_02



_off043_D67A_05:
- D 2 - I - 0x03D68A 0F:D67A: 0D D7     .word off_D70D_05_00
- D 2 - I - 0x03D68C 0F:D67C: 0E D7     .word off_D70E_05_01
- D 2 - I - 0x03D68E 0F:D67E: 0F D7     .word off_D70F_05_02
- D 2 - I - 0x03D690 0F:D680: 11 D7     .word off_D711_05_03



_off043_D682_06:
- D 2 - I - 0x03D692 0F:D682: 13 D7     .word off_D713_06_00
- D 2 - I - 0x03D694 0F:D684: 15 D7     .word off_D715_06_01
- D 2 - I - 0x03D696 0F:D686: 16 D7     .word off_D716_06_02



_off043_D688_07:
- D 2 - I - 0x03D698 0F:D688: 19 D7     .word off_D719_07_00
- D 2 - I - 0x03D69A 0F:D68A: 1B D7     .word off_D71B_07_01
- D 2 - I - 0x03D69C 0F:D68C: 1C D7     .word off_D71C_07_02
- D 2 - I - 0x03D69E 0F:D68E: 1D D7     .word off_D71D_07_03
- D 2 - I - 0x03D6A0 0F:D690: 1E D7     .word off_D71E_07_04
- D 2 - I - 0x03D6A2 0F:D692: 20 D7     .word off_D720_07_05
- D 2 - I - 0x03D6A4 0F:D694: 22 D7     .word off_D722_07_06



_off043_D696_08:
- D 2 - I - 0x03D6A6 0F:D696: 23 D7     .word off_D723_08_00
- D 2 - I - 0x03D6A8 0F:D698: 25 D7     .word off_D725_08_01
- D 2 - I - 0x03D6AA 0F:D69A: 26 D7     .word off_D726_08_02
- D 2 - I - 0x03D6AC 0F:D69C: 28 D7     .word off_D728_08_03
- D 2 - I - 0x03D6AE 0F:D69E: 29 D7     .word off_D729_08_04



_off043_D6A0_09:
- D 2 - I - 0x03D6B0 0F:D6A0: 2A D7     .word off_D72A_09_00
- D 2 - I - 0x03D6B2 0F:D6A2: 2C D7     .word off_D72C_09_01



_off043_D6A4_0A:
- D 2 - I - 0x03D6B4 0F:D6A4: 2F D7     .word off_D72F_0A_00
- D 2 - I - 0x03D6B6 0F:D6A6: 31 D7     .word off_D731_0A_01
- D 2 - I - 0x03D6B8 0F:D6A8: 32 D7     .word off_D732_0A_02
- D 2 - I - 0x03D6BA 0F:D6AA: 33 D7     .word off_D733_0A_03
- D 2 - I - 0x03D6BC 0F:D6AC: 35 D7     .word off_D735_0A_04
- D 2 - I - 0x03D6BE 0F:D6AE: 38 D7     .word off_D738_0A_05
- D 2 - I - 0x03D6C0 0F:D6B0: 3A D7     .word off_D73A_0A_06



_off043_D6B2_0B:
- D 2 - I - 0x03D6C2 0F:D6B2: 3D D7     .word off_D73D_0B_00
- D 2 - I - 0x03D6C4 0F:D6B4: 3F D7     .word off_D73F_0B_01
- D 2 - I - 0x03D6C6 0F:D6B6: 41 D7     .word off_D741_0B_02



_off043_D6B8_0C:
- D 2 - I - 0x03D6C8 0F:D6B8: 44 D7     .word off_D744_0C_00
- D 2 - I - 0x03D6CA 0F:D6BA: 46 D7     .word off_D746_0C_01
- D 2 - I - 0x03D6CC 0F:D6BC: 47 D7     .word off_D747_0C_02



_off043_D6BE_0D:
- D 2 - I - 0x03D6CE 0F:D6BE: 48 D7     .word off_D748_0D_00
- D 2 - I - 0x03D6D0 0F:D6C0: 4B D7     .word off_D74B_0D_01
- D 2 - I - 0x03D6D2 0F:D6C2: 4E D7     .word off_D74E_0D_02
- D 2 - I - 0x03D6D4 0F:D6C4: 51 D7     .word off_D751_0D_03



_off043_D6C6_0E:
- D 2 - I - 0x03D6D6 0F:D6C6: 53 D7     .word off_D753_0E_00
- D 2 - I - 0x03D6D8 0F:D6C8: 56 D7     .word off_D756_0E_01
- D 2 - I - 0x03D6DA 0F:D6CA: 58 D7     .word off_D758_0E_02



off_D6CC_00_00:
- D 2 - I - 0x03D6DC 0F:D6CC: 00        .byte $00   ; 00 



off_D6CD_00_01:
- D 2 - I - 0x03D6DD 0F:D6CD: 00        .byte $00   ; 00 
- D 2 - I - 0x03D6DE 0F:D6CE: 80        .byte $80   ; 01 
- D 2 - I - 0x03D6DF 0F:D6CF: 00        .byte $00   ; 02 
- D 2 - I - 0x03D6E0 0F:D6D0: 00        .byte $00   ; 03 


; bzk garbage, no such blk_fr
- - - - - - 0x03D6E1 0F:D6D1: 00        .byte $00   ; 04 



off_D6D2_00_02:
- D 2 - I - 0x03D6E2 0F:D6D2: 00        .byte $00   ; 00 
- D 2 - I - 0x03D6E3 0F:D6D3: 00        .byte $00   ; 01 


; bzk garbage, no such blk_fr
- - - - - - 0x03D6E4 0F:D6D4: 00        .byte $00   ; 02 
- - - - - - 0x03D6E5 0F:D6D5: 00        .byte $00   ; 03 
- - - - - - 0x03D6E6 0F:D6D6: 00        .byte $00   ; 04 



off_D6D7_00_03:
- D 2 - I - 0x03D6E7 0F:D6D7: 00        .byte $00   ; 00 


; bzk garbage, no such blk_fr
- - - - - - 0x03D6E8 0F:D6D8: 00        .byte $00   ; 01 
- - - - - - 0x03D6E9 0F:D6D9: 00        .byte $00   ; 02 
- - - - - - 0x03D6EA 0F:D6DA: 00        .byte $00   ; 03 
- - - - - - 0x03D6EB 0F:D6DB: 00        .byte $00   ; 04 



off_D6DC_01_00:
- D 2 - I - 0x03D6EC 0F:D6DC: 80        .byte $80   ; 00 
- D 2 - I - 0x03D6ED 0F:D6DD: 00        .byte $00   ; 01 
- D 2 - I - 0x03D6EE 0F:D6DE: 00        .byte $00   ; 02 



off_D6DF_01_01:
- D 2 - I - 0x03D6EF 0F:D6DF: 00        .byte $00   ; 00 
- D 2 - I - 0x03D6F0 0F:D6E0: 80        .byte $80   ; 01 
- D 2 - I - 0x03D6F1 0F:D6E1: 00        .byte $00   ; 02 



off_D6E2_01_02:
- D 2 - I - 0x03D6F2 0F:D6E2: 00        .byte $00   ; 00 
- D 2 - I - 0x03D6F3 0F:D6E3: 80        .byte $80   ; 01 
- D 2 - I - 0x03D6F4 0F:D6E4: 00        .byte $00   ; 02 



off_D6E5_01_03:
- D 2 - I - 0x03D6F5 0F:D6E5: 00        .byte $00   ; 00 
- D 2 - I - 0x03D6F6 0F:D6E6: 81        .byte $81   ; 01 
- D 2 - I - 0x03D6F7 0F:D6E7: 00        .byte $00   ; 02 



off_D6E8_01_04:
- D 2 - I - 0x03D6F8 0F:D6E8: 00        .byte $00   ; 00 
- D 2 - I - 0x03D6F9 0F:D6E9: 81        .byte $81   ; 01 
- D 2 - I - 0x03D6FA 0F:D6EA: 00        .byte $00   ; 02 



off_D6EB_01_05:
- D 2 - I - 0x03D6FB 0F:D6EB: 81        .byte $81   ; 00 
- D 2 - I - 0x03D6FC 0F:D6EC: 00        .byte $00   ; 01 
- D 2 - I - 0x03D6FD 0F:D6ED: 00        .byte $00   ; 02 



off_D6EE_02_00:
- D 2 - I - 0x03D6FE 0F:D6EE: 00        .byte $00   ; 00 
- D 2 - I - 0x03D6FF 0F:D6EF: 00        .byte $00   ; 01 



off_D6F0_02_01:
- D 2 - I - 0x03D700 0F:D6F0: 00        .byte $00   ; 00 



off_D6F1_02_02:
- D 2 - I - 0x03D701 0F:D6F1: 00        .byte $00   ; 00 
- D 2 - I - 0x03D702 0F:D6F2: 00        .byte $00   ; 01 



off_D6F3_02_03:
- D 2 - I - 0x03D703 0F:D6F3: 00        .byte $00   ; 00 
- D 2 - I - 0x03D704 0F:D6F4: 00        .byte $00   ; 01 
- D 2 - I - 0x03D705 0F:D6F5: 00        .byte $00   ; 02 



off_D6F6_02_04:
- D 2 - I - 0x03D706 0F:D6F6: 00        .byte $00   ; 00 
- D 2 - I - 0x03D707 0F:D6F7: 00        .byte $00   ; 01 



off_D6F8_03_00:
- D 2 - I - 0x03D708 0F:D6F8: 00        .byte $00   ; 00 
- D 2 - I - 0x03D709 0F:D6F9: 00        .byte $00   ; 01 
- D 2 - I - 0x03D70A 0F:D6FA: 00        .byte $00   ; 02 



off_D6FB_03_01:
- D 2 - I - 0x03D70B 0F:D6FB: 00        .byte $00   ; 00 
- D 2 - I - 0x03D70C 0F:D6FC: 00        .byte $00   ; 01 



off_D6FD_03_02:
- D 2 - I - 0x03D70D 0F:D6FD: 00        .byte $00   ; 00 
- D 2 - I - 0x03D70E 0F:D6FE: 00        .byte $00   ; 01 



off_D6FF_03_03:
- D 2 - I - 0x03D70F 0F:D6FF: 00        .byte $00   ; 00 
- D 2 - I - 0x03D710 0F:D700: 00        .byte $00   ; 01 



off_D701_03_04:
- D 2 - I - 0x03D711 0F:D701: 00        .byte $00   ; 00 
- D 2 - I - 0x03D712 0F:D702: 00        .byte $00   ; 01 
- D 2 - I - 0x03D713 0F:D703: 00        .byte $00   ; 02 



off_D704_04_00:
- D 2 - I - 0x03D714 0F:D704: 00        .byte $00   ; 00 
- D 2 - I - 0x03D715 0F:D705: 80        .byte $80   ; 01 
- D 2 - I - 0x03D716 0F:D706: 00        .byte $00   ; 02 



off_D707_04_01:
- D 2 - I - 0x03D717 0F:D707: 00        .byte $00   ; 00 
- D 2 - I - 0x03D718 0F:D708: 84        .byte $84   ; 01 
- D 2 - I - 0x03D719 0F:D709: 00        .byte $00   ; 02 



off_D70A_04_02:
- D 2 - I - 0x03D71A 0F:D70A: 00        .byte $00   ; 00 
- D 2 - I - 0x03D71B 0F:D70B: 80        .byte $80   ; 01 
- D 2 - I - 0x03D71C 0F:D70C: 00        .byte $00   ; 02 



off_D70D_05_00:
- D 2 - I - 0x03D71D 0F:D70D: 00        .byte $00   ; 00 



off_D70E_05_01:
- D 2 - I - 0x03D71E 0F:D70E: 00        .byte $00   ; 00 



off_D70F_05_02:
- D 2 - I - 0x03D71F 0F:D70F: 00        .byte $00   ; 00 
- D 2 - I - 0x03D720 0F:D710: 00        .byte $00   ; 01 



off_D711_05_03:
- D 2 - I - 0x03D721 0F:D711: 00        .byte $00   ; 00 
- D 2 - I - 0x03D722 0F:D712: 00        .byte $00   ; 01 



off_D713_06_00:
- D 2 - I - 0x03D723 0F:D713: 00        .byte $00   ; 00 
- D 2 - I - 0x03D724 0F:D714: 00        .byte $00   ; 01 



off_D715_06_01:
- D 2 - I - 0x03D725 0F:D715: 00        .byte $00   ; 00 



off_D716_06_02:
- D 2 - I - 0x03D726 0F:D716: 00        .byte $00   ; 00 
- D 2 - I - 0x03D727 0F:D717: 00        .byte $00   ; 01 
- D 2 - I - 0x03D728 0F:D718: 00        .byte $00   ; 02 



off_D719_07_00:
- D 2 - I - 0x03D729 0F:D719: 00        .byte $00   ; 00 
- D 2 - I - 0x03D72A 0F:D71A: 00        .byte $00   ; 01 



off_D71B_07_01:
- D 2 - I - 0x03D72B 0F:D71B: 00        .byte $00   ; 00 



off_D71C_07_02:
- D 2 - I - 0x03D72C 0F:D71C: 00        .byte $00   ; 00 



off_D71D_07_03:
- D 2 - I - 0x03D72D 0F:D71D: 00        .byte $00   ; 00 



off_D71E_07_04:
- D 2 - I - 0x03D72E 0F:D71E: 00        .byte $00   ; 00 
- D 2 - I - 0x03D72F 0F:D71F: 00        .byte $00   ; 01 



off_D720_07_05:
- D 2 - I - 0x03D730 0F:D720: 00        .byte $00   ; 00 
- D 2 - I - 0x03D731 0F:D721: 00        .byte $00   ; 01 



off_D722_07_06:
- D 2 - I - 0x03D732 0F:D722: 00        .byte $00   ; 00 



off_D723_08_00:
- D 2 - I - 0x03D733 0F:D723: 00        .byte $00   ; 00 
- D 2 - I - 0x03D734 0F:D724: 00        .byte $00   ; 01 



off_D725_08_01:
- D 2 - I - 0x03D735 0F:D725: 00        .byte $00   ; 00 



off_D726_08_02:
- D 2 - I - 0x03D736 0F:D726: 00        .byte $00   ; 00 
- D 2 - I - 0x03D737 0F:D727: 00        .byte $00   ; 01 



off_D728_08_03:
- D 2 - I - 0x03D738 0F:D728: 00        .byte $00   ; 00 



off_D729_08_04:
- D 2 - I - 0x03D739 0F:D729: 00        .byte $00   ; 00 



off_D72A_09_00:
- D 2 - I - 0x03D73A 0F:D72A: 00        .byte $00   ; 00 
- D 2 - I - 0x03D73B 0F:D72B: 00        .byte $00   ; 01 



off_D72C_09_01:
- D 2 - I - 0x03D73C 0F:D72C: 00        .byte $00   ; 00 
- D 2 - I - 0x03D73D 0F:D72D: 00        .byte $00   ; 01 
- D 2 - I - 0x03D73E 0F:D72E: 00        .byte $00   ; 02 



off_D72F_0A_00:
- D 2 - I - 0x03D73F 0F:D72F: 00        .byte $00   ; 00 
- D 2 - I - 0x03D740 0F:D730: 00        .byte $00   ; 01 



off_D731_0A_01:
- D 2 - I - 0x03D741 0F:D731: 00        .byte $00   ; 00 



off_D732_0A_02:
- D 2 - I - 0x03D742 0F:D732: 00        .byte $00   ; 00 



off_D733_0A_03:
- D 2 - I - 0x03D743 0F:D733: 00        .byte $00   ; 00 
- D 2 - I - 0x03D744 0F:D734: 00        .byte $00   ; 01 



off_D735_0A_04:
- D 2 - I - 0x03D745 0F:D735: 80        .byte $80   ; 00 
- D 2 - I - 0x03D746 0F:D736: 00        .byte $00   ; 01 
- D 2 - I - 0x03D747 0F:D737: 00        .byte $00   ; 02 



off_D738_0A_05:
- D 2 - I - 0x03D748 0F:D738: 00        .byte $00   ; 00 
- D 2 - I - 0x03D749 0F:D739: 00        .byte $00   ; 01 



off_D73A_0A_06:
- D 2 - I - 0x03D74A 0F:D73A: 00        .byte $00   ; 00 
- D 2 - I - 0x03D74B 0F:D73B: 82        .byte $82   ; 01 
- D 2 - I - 0x03D74C 0F:D73C: 00        .byte $00   ; 02 



off_D73D_0B_00:
- D 2 - I - 0x03D74D 0F:D73D: 00        .byte $00   ; 00 
- D 2 - I - 0x03D74E 0F:D73E: 00        .byte $00   ; 01 



off_D73F_0B_01:
- D 2 - I - 0x03D74F 0F:D73F: 00        .byte $00   ; 00 
- D 2 - I - 0x03D750 0F:D740: 00        .byte $00   ; 01 



off_D741_0B_02:
- D 2 - I - 0x03D751 0F:D741: 00        .byte $00   ; 00 
- D 2 - I - 0x03D752 0F:D742: 83        .byte $83   ; 01 
- D 2 - I - 0x03D753 0F:D743: 00        .byte $00   ; 02 



off_D744_0C_00:
- D 2 - I - 0x03D754 0F:D744: 00        .byte $00   ; 00 
- D 2 - I - 0x03D755 0F:D745: 00        .byte $00   ; 01 



off_D746_0C_01:
- D 2 - I - 0x03D756 0F:D746: 00        .byte $00   ; 00 



off_D747_0C_02:
- D 2 - I - 0x03D757 0F:D747: 00        .byte $00   ; 00 



off_D748_0D_00:
- D 2 - I - 0x03D758 0F:D748: 00        .byte $00   ; 00 
- D 2 - I - 0x03D759 0F:D749: 00        .byte $00   ; 01 
- D 2 - I - 0x03D75A 0F:D74A: 00        .byte $00   ; 02 



off_D74B_0D_01:
- D 2 - I - 0x03D75B 0F:D74B: 00        .byte $00   ; 00 
- D 2 - I - 0x03D75C 0F:D74C: 80        .byte $80   ; 01 
- D 2 - I - 0x03D75D 0F:D74D: 00        .byte $00   ; 02 



off_D74E_0D_02:
- D 2 - I - 0x03D75E 0F:D74E: 00        .byte $00   ; 00 
- D 2 - I - 0x03D75F 0F:D74F: 84        .byte $84   ; 01 
- D 2 - I - 0x03D760 0F:D750: 00        .byte $00   ; 02 



off_D751_0D_03:
- D 2 - I - 0x03D761 0F:D751: 00        .byte $00   ; 00 
- D 2 - I - 0x03D762 0F:D752: 00        .byte $00   ; 01 



off_D753_0E_00:
- D 2 - I - 0x03D763 0F:D753: 00        .byte $00   ; 00 
- D 2 - I - 0x03D764 0F:D754: 83        .byte $83   ; 01 
- D 2 - I - 0x03D765 0F:D755: 00        .byte $00   ; 02 



off_D756_0E_01:
- D 2 - I - 0x03D766 0F:D756: 00        .byte $00   ; 00 
- D 2 - I - 0x03D767 0F:D757: 00        .byte $00   ; 01 



off_D758_0E_02:
- D 2 - I - 0x03D768 0F:D758: 00        .byte $00   ; 00 
- D 2 - I - 0x03D769 0F:D759: 00        .byte $00   ; 01 



tbl_D75A:
- D 2 - - - 0x03D76A 0F:D75A: 62 D7     .word off_D762_00
- D 2 - - - 0x03D76C 0F:D75C: 68 D7     .word off_D768_01
- - - - - - 0x03D76E 0F:D75E: 6A D7     .word off_D76A_02
- D 2 - - - 0x03D770 0F:D760: 70 D7     .word off_D770_03



off_D762_00:
- D 2 - I - 0x03D772 0F:D762: F0        .byte $F0   ; 
- D 2 - I - 0x03D773 0F:D763: 01        .byte $01   ; 
- D 2 - I - 0x03D774 0F:D764: 81        .byte $81   ; 
- - - - - - 0x03D775 0F:D765: E0        .byte $E0   ; 
- D 2 - I - 0x03D776 0F:D766: FF        .byte $FF   ; 
- - - - - - 0x03D777 0F:D767: E0        .byte $E0   ; 



off_D768_01:
- D 2 - I - 0x03D778 0F:D768: F1        .byte $F1   ; 
- D 2 - I - 0x03D779 0F:D769: 00        .byte $00   ; 



off_D76A_02:
- - - - - - 0x03D77A 0F:D76A: F0        .byte $F0   ; 
- - - - - - 0x03D77B 0F:D76B: 01        .byte $01   ; 
- - - - - - 0x03D77C 0F:D76C: 81        .byte $81   ; 
- - - - - - 0x03D77D 0F:D76D: E0        .byte $E0   ; 
- - - - - - 0x03D77E 0F:D76E: FF        .byte $FF   ; 
- - - - - - 0x03D77F 0F:D76F: E0        .byte $E0   ; 



off_D770_03:
- D 2 - I - 0x03D780 0F:D770: F1        .byte $F1   ; 
- D 2 - I - 0x03D781 0F:D771: 03        .byte $03   ; 



_off005_D772_22_credits_logo_screen:
off_0x03D782_01_credits_logo_screen:
; castlevania logo before actual credits begin
- D 2 - I - 0x03D782 0F:D772: 00 28     .word $2800 ; ppu address

- D 2 - I - 0x03D784 0F:D774: 24        .byte $24   ; write 24 times tile 00
- D 2 - I - 0x03D785 0F:D775: 00        .byte $00   ; 

- D 2 - I - 0x03D786 0F:D776: 18        .byte $18   ; 
- D 2 - I - 0x03D787 0F:D777: 2E        .byte $2E   ; 

- D 2 - I - 0x03D788 0F:D778: 07        .byte $07   ; 
- D 2 - I - 0x03D789 0F:D779: 00        .byte $00   ; 

- D 2 - I - 0x03D78A 0F:D77A: 81        .byte $01 + $80   ; 
- D 2 - I - 0x03D78B 0F:D77B: 2D        .byte $2D   ; 

- D 2 - I - 0x03D78C 0F:D77C: 18        .byte $18   ; 
- D 2 - I - 0x03D78D 0F:D77D: 00        .byte $00   ; 

- D 2 - I - 0x03D78E 0F:D77E: 81        .byte $01 + $80   ; 
- D 2 - I - 0x03D78F 0F:D77F: 2C        .byte $2C   ; 

- D 2 - I - 0x03D790 0F:D780: 06        .byte $06   ; 
- D 2 - I - 0x03D791 0F:D781: 00        .byte $00   ; 

- D 2 - I - 0x03D792 0F:D782: 81        .byte $01 + $80   ; 
- D 2 - I - 0x03D793 0F:D783: 2D        .byte $2D   ; 

- D 2 - I - 0x03D794 0F:D784: 18        .byte $18   ; 
- D 2 - I - 0x03D795 0F:D785: 00        .byte $00   ; 

- D 2 - I - 0x03D796 0F:D786: 81        .byte $01 + $80   ; 
- D 2 - I - 0x03D797 0F:D787: 2C        .byte $2C   ; 

- D 2 - I - 0x03D798 0F:D788: 06        .byte $06   ; 
- D 2 - I - 0x03D799 0F:D789: 00        .byte $00   ; 

- D 2 - I - 0x03D79A 0F:D78A: 81        .byte $01 + $80   ; 
- D 2 - I - 0x03D79B 0F:D78B: 2D        .byte $2D   ; 

- D 2 - I - 0x03D79C 0F:D78C: 18        .byte $18   ; 
- D 2 - I - 0x03D79D 0F:D78D: 00        .byte $00   ; 

- D 2 - I - 0x03D79E 0F:D78E: 81        .byte $01 + $80   ; 
- D 2 - I - 0x03D79F 0F:D78F: 2C        .byte $2C   ; 

- D 2 - I - 0x03D7A0 0F:D790: 06        .byte $06   ; 
- D 2 - I - 0x03D7A1 0F:D791: 00        .byte $00   ; 

- D 2 - I - 0x03D7A2 0F:D792: 81        .byte $01 + $80   ; 
- D 2 - I - 0x03D7A3 0F:D793: 2D        .byte $2D   ; 

- D 2 - I - 0x03D7A4 0F:D794: 18        .byte $18   ; 
- D 2 - I - 0x03D7A5 0F:D795: 00        .byte $00   ; 

- D 2 - I - 0x03D7A6 0F:D796: 81        .byte $01 + $80   ; 
- D 2 - I - 0x03D7A7 0F:D797: 2C        .byte $2C   ; 

- D 2 - I - 0x03D7A8 0F:D798: 06        .byte $06   ; 
- D 2 - I - 0x03D7A9 0F:D799: 00        .byte $00   ; 

- D 2 - I - 0x03D7AA 0F:D79A: 81        .byte $01 + $80   ; 
- D 2 - I - 0x03D7AB 0F:D79B: 2D        .byte $2D   ; 

- D 2 - I - 0x03D7AC 0F:D79C: 18        .byte $18   ; 
- D 2 - I - 0x03D7AD 0F:D79D: 00        .byte $00   ; 

- D 2 - I - 0x03D7AE 0F:D79E: 81        .byte $01 + $80   ; 
- D 2 - I - 0x03D7AF 0F:D79F: 2C        .byte $2C   ; 

- D 2 - I - 0x03D7B0 0F:D7A0: 06        .byte $06   ; 
- D 2 - I - 0x03D7B1 0F:D7A1: 00        .byte $00   ; 

- D 2 - I - 0x03D7B2 0F:D7A2: 81        .byte $01 + $80   ; 
- D 2 - I - 0x03D7B3 0F:D7A3: 2D        .byte $2D   ; 

- D 2 - I - 0x03D7B4 0F:D7A4: 07        .byte $07   ; 
- D 2 - I - 0x03D7B5 0F:D7A5: 00        .byte $00   ; 

- D 2 - I - 0x03D7B6 0F:D7A6: 82        .byte $02 + $80   ; write these tiles 02 length
- D 2 - I - 0x03D7B7 0F:D7A7: 68        .byte $68, $69   ; 

- D 2 - I - 0x03D7B9 0F:D7A9: 0F        .byte $0F   ; 
- D 2 - I - 0x03D7BA 0F:D7AA: 00        .byte $00   ; 

- D 2 - I - 0x03D7BB 0F:D7AB: 81        .byte $01 + $80   ; 
- D 2 - I - 0x03D7BC 0F:D7AC: 2C        .byte $2C   ; 

- D 2 - I - 0x03D7BD 0F:D7AD: 06        .byte $06   ; 
- D 2 - I - 0x03D7BE 0F:D7AE: 00        .byte $00   ; 

- D 2 - I - 0x03D7BF 0F:D7AF: 81        .byte $01 + $80   ; 
- D 2 - I - 0x03D7C0 0F:D7B0: 2D        .byte $2D   ; 

- D 2 - I - 0x03D7C1 0F:D7B1: 07        .byte $07   ; 
- D 2 - I - 0x03D7C2 0F:D7B2: 00        .byte $00   ; 

- D 2 - I - 0x03D7C3 0F:D7B3: 8A        .byte $0A + $80   ; 
- D 2 - I - 0x03D7C4 0F:D7B4: 46        .byte $46, $47, $48, $49, $4A, $4B, $4C, $4D, $4E, $4F   ; 

- D 2 - I - 0x03D7CE 0F:D7BE: 07        .byte $07   ; 
- D 2 - I - 0x03D7CF 0F:D7BF: 00        .byte $00   ; 

- D 2 - I - 0x03D7D0 0F:D7C0: 81        .byte $01 + $80   ; 
- D 2 - I - 0x03D7D1 0F:D7C1: 2C        .byte $2C   ; 

- D 2 - I - 0x03D7D2 0F:D7C2: 06        .byte $06   ; 
- D 2 - I - 0x03D7D3 0F:D7C3: 00        .byte $00   ; 

- D 2 - I - 0x03D7D4 0F:D7C4: 81        .byte $01 + $80   ; 
- D 2 - I - 0x03D7D5 0F:D7C5: 2D        .byte $2D   ; 

- D 2 - I - 0x03D7D6 0F:D7C6: 07        .byte $07   ; 
- D 2 - I - 0x03D7D7 0F:D7C7: 00        .byte $00   ; 

- D 2 - I - 0x03D7D8 0F:D7C8: 8A        .byte $0A + $80   ; 
- D 2 - I - 0x03D7D9 0F:D7C9: 56        .byte $56, $57, $58, $59, $5A, $5B, $5C, $5D, $5E, $5F   ; 

- D 2 - I - 0x03D7E3 0F:D7D3: 07        .byte $07   ; 
- D 2 - I - 0x03D7E4 0F:D7D4: 00        .byte $00   ; 

- D 2 - I - 0x03D7E5 0F:D7D5: 81        .byte $01 + $80   ; 
- D 2 - I - 0x03D7E6 0F:D7D6: 2C        .byte $2C   ; 

- D 2 - I - 0x03D7E7 0F:D7D7: 06        .byte $06   ; 
- D 2 - I - 0x03D7E8 0F:D7D8: 00        .byte $00   ; 

- D 2 - I - 0x03D7E9 0F:D7D9: 81        .byte $01 + $80   ; 
- D 2 - I - 0x03D7EA 0F:D7DA: 2D        .byte $2D   ; 

- D 2 - I - 0x03D7EB 0F:D7DB: 07        .byte $07   ; 
- D 2 - I - 0x03D7EC 0F:D7DC: 00        .byte $00   ; 

- D 2 - I - 0x03D7ED 0F:D7DD: 8A        .byte $0A + $80   ; 
- D 2 - I - 0x03D7EE 0F:D7DE: 66        .byte $66, $67, $00, $00, $6A, $00, $00, $6D, $6E, $6F   ; 

- D 2 - I - 0x03D7F8 0F:D7E8: 07        .byte $07   ; 
- D 2 - I - 0x03D7F9 0F:D7E9: 00        .byte $00   ; 

- D 2 - I - 0x03D7FA 0F:D7EA: 81        .byte $01 + $80   ; 
- D 2 - I - 0x03D7FB 0F:D7EB: 2C        .byte $2C   ; 

- D 2 - I - 0x03D7FC 0F:D7EC: 06        .byte $06   ; 
- D 2 - I - 0x03D7FD 0F:D7ED: 00        .byte $00   ; 

- D 2 - I - 0x03D7FE 0F:D7EE: 81        .byte $01 + $80   ; 
- D 2 - I - 0x03D7FF 0F:D7EF: 2D        .byte $2D   ; 

- D 2 - I - 0x03D800 0F:D7F0: 04        .byte $04   ; 
- D 2 - I - 0x03D801 0F:D7F1: 00        .byte $00   ; 

- D 2 - I - 0x03D802 0F:D7F2: 85        .byte $05 + $80   ; 
- D 2 - I - 0x03D803 0F:D7F3: 60        .byte $60, $00, $00, $00, $61   ; 

- D 2 - I - 0x03D808 0F:D7F8: 0F        .byte $0F   ; 
- D 2 - I - 0x03D809 0F:D7F9: 00        .byte $00   ; 

- D 2 - I - 0x03D80A 0F:D7FA: 81        .byte $01 + $80   ; 
- D 2 - I - 0x03D80B 0F:D7FB: 2C        .byte $2C   ; 

- D 2 - I - 0x03D80C 0F:D7FC: 06        .byte $06   ; 
- D 2 - I - 0x03D80D 0F:D7FD: 00        .byte $00   ; 

- D 2 - I - 0x03D80E 0F:D7FE: 81        .byte $01 + $80   ; 
- D 2 - I - 0x03D80F 0F:D7FF: 2D        .byte $2D   ; 

- D 2 - I - 0x03D810 0F:D800: 04        .byte $04   ; 
- D 2 - I - 0x03D811 0F:D801: 00        .byte $00   ; 

- D 2 - I - 0x03D812 0F:D802: 90        .byte $10 + $80   ; 
- D 2 - I - 0x03D813 0F:D803: 70        .byte $70, $71, $72, $73, $74, $75, $76, $77, $78, $79, $7A, $7B, $7C, $7D, $7E, $7F   ; 

- D 2 - I - 0x03D823 0F:D813: 04        .byte $04   ; 
- D 2 - I - 0x03D824 0F:D814: 00        .byte $00   ; 

- D 2 - I - 0x03D825 0F:D815: 81        .byte $01 + $80   ; 
- D 2 - I - 0x03D826 0F:D816: 2C        .byte $2C   ; 

- D 2 - I - 0x03D827 0F:D817: 06        .byte $06   ; 
- D 2 - I - 0x03D828 0F:D818: 00        .byte $00   ; 

- D 2 - I - 0x03D829 0F:D819: 81        .byte $01 + $80   ; 
- D 2 - I - 0x03D82A 0F:D81A: 2D        .byte $2D   ; 

- D 2 - I - 0x03D82B 0F:D81B: 04        .byte $04   ; 
- D 2 - I - 0x03D82C 0F:D81C: 00        .byte $00   ; 

- D 2 - I - 0x03D82D 0F:D81D: 90        .byte $10 + $80   ; 
- D 2 - I - 0x03D82E 0F:D81E: 80        .byte $80, $81, $82, $83, $84, $85, $86, $87, $88, $89, $8A, $8B, $8C, $8D, $8E, $8F   ; 

- D 2 - I - 0x03D83E 0F:D82E: 04        .byte $04   ; 
- D 2 - I - 0x03D83F 0F:D82F: 00        .byte $00   ; 

- D 2 - I - 0x03D840 0F:D830: 81        .byte $01 + $80   ; 
- D 2 - I - 0x03D841 0F:D831: 2C        .byte $2C   ; 

- D 2 - I - 0x03D842 0F:D832: 06        .byte $06   ; 
- D 2 - I - 0x03D843 0F:D833: 00        .byte $00   ; 

- D 2 - I - 0x03D844 0F:D834: 81        .byte $01 + $80   ; 
- D 2 - I - 0x03D845 0F:D835: 2D        .byte $2D   ; 

- D 2 - I - 0x03D846 0F:D836: 04        .byte $04   ; 
- D 2 - I - 0x03D847 0F:D837: 00        .byte $00   ; 

- D 2 - I - 0x03D848 0F:D838: 90        .byte $10 + $80   ; 
- D 2 - I - 0x03D849 0F:D839: 90        .byte $90, $91, $92, $93, $94, $95, $96, $97, $98, $99, $9A, $9B, $9C, $9D, $9E, $9F   ; 

- D 2 - I - 0x03D859 0F:D849: 04        .byte $04   ; 
- D 2 - I - 0x03D85A 0F:D84A: 00        .byte $00   ; 

- D 2 - I - 0x03D85B 0F:D84B: 81        .byte $01 + $80   ; 
- D 2 - I - 0x03D85C 0F:D84C: 2C        .byte $2C   ; 

- D 2 - I - 0x03D85D 0F:D84D: 06        .byte $06   ; 
- D 2 - I - 0x03D85E 0F:D84E: 00        .byte $00   ; 

- D 2 - I - 0x03D85F 0F:D84F: 81        .byte $01 + $80   ; 
- D 2 - I - 0x03D860 0F:D850: 2D        .byte $2D   ; 

- D 2 - I - 0x03D861 0F:D851: 04        .byte $04   ; 
- D 2 - I - 0x03D862 0F:D852: 00        .byte $00   ; 

- D 2 - I - 0x03D863 0F:D853: 90        .byte $10 + $80   ; 
- D 2 - I - 0x03D864 0F:D854: A0        .byte $A0, $A1, $A2, $A3, $A4, $A5, $A6, $A7, $A8, $A9, $AA, $AB, $AC, $AD, $AE, $AF   ; 

- D 2 - I - 0x03D874 0F:D864: 04        .byte $04   ; 
- D 2 - I - 0x03D875 0F:D865: 00        .byte $00   ; 

- D 2 - I - 0x03D876 0F:D866: 81        .byte $01 + $80   ; 
- D 2 - I - 0x03D877 0F:D867: 2C        .byte $2C   ; 

- D 2 - I - 0x03D878 0F:D868: 06        .byte $06   ; 
- D 2 - I - 0x03D879 0F:D869: 00        .byte $00   ; 

- D 2 - I - 0x03D87A 0F:D86A: 81        .byte $01 + $80   ; 
- D 2 - I - 0x03D87B 0F:D86B: 2D        .byte $2D   ; 

- D 2 - I - 0x03D87C 0F:D86C: 04        .byte $04   ; 
- D 2 - I - 0x03D87D 0F:D86D: 00        .byte $00   ; 

- D 2 - I - 0x03D87E 0F:D86E: 8F        .byte $0F + $80   ; 
- D 2 - I - 0x03D87F 0F:D86F: B0        .byte $B0, $B1, $00, $B3, $B4, $B5, $B6, $B7, $B8, $B9, $BA, $BB, $BC, $00, $FC   ; 

- D 2 - I - 0x03D88E 0F:D87E: 05        .byte $05   ; 
- D 2 - I - 0x03D88F 0F:D87F: 00        .byte $00   ; 

- D 2 - I - 0x03D890 0F:D880: 81        .byte $01 + $80   ; 
- D 2 - I - 0x03D891 0F:D881: 2C        .byte $2C   ; 

- D 2 - I - 0x03D892 0F:D882: 06        .byte $06   ; 
- D 2 - I - 0x03D893 0F:D883: 00        .byte $00   ; 

- D 2 - I - 0x03D894 0F:D884: 81        .byte $01 + $80   ; 
- D 2 - I - 0x03D895 0F:D885: 2D        .byte $2D   ; 

- D 2 - I - 0x03D896 0F:D886: 07        .byte $07   ; 
- D 2 - I - 0x03D897 0F:D887: 00        .byte $00   ; 

- D 2 - I - 0x03D898 0F:D888: 8A        .byte $0A + $80   ; 
- D 2 - I - 0x03D899 0F:D889: C3        .byte $C3, $C4, $C5, $C6, $C7, $C8, $C9, $CA, $CB, $CC   ; 

- D 2 - I - 0x03D8A3 0F:D893: 07        .byte $07   ; 
- D 2 - I - 0x03D8A4 0F:D894: 00        .byte $00   ; 

- D 2 - I - 0x03D8A5 0F:D895: 81        .byte $01 + $80   ; 
- D 2 - I - 0x03D8A6 0F:D896: 2C        .byte $2C   ; 

- D 2 - I - 0x03D8A7 0F:D897: 06        .byte $06   ; 
- D 2 - I - 0x03D8A8 0F:D898: 00        .byte $00   ; 

- D 2 - I - 0x03D8A9 0F:D899: 81        .byte $01 + $80   ; 
- D 2 - I - 0x03D8AA 0F:D89A: 2D        .byte $2D   ; 

- D 2 - I - 0x03D8AB 0F:D89B: 07        .byte $07   ; 
- D 2 - I - 0x03D8AC 0F:D89C: 00        .byte $00   ; 

- D 2 - I - 0x03D8AD 0F:D89D: 8A        .byte $0A + $80   ; 
- D 2 - I - 0x03D8AE 0F:D89E: D3        .byte $D3, $D4, $D5, $D6, $D7, $D8, $D9, $DA, $DB, $DC   ; 

- D 2 - I - 0x03D8B8 0F:D8A8: 07        .byte $07   ; 
- D 2 - I - 0x03D8B9 0F:D8A9: 00        .byte $00   ; 

- D 2 - I - 0x03D8BA 0F:D8AA: 81        .byte $01 + $80   ; 
- D 2 - I - 0x03D8BB 0F:D8AB: 2C        .byte $2C   ; 

- D 2 - I - 0x03D8BC 0F:D8AC: 06        .byte $06   ; 
- D 2 - I - 0x03D8BD 0F:D8AD: 00        .byte $00   ; 

- D 2 - I - 0x03D8BE 0F:D8AE: 81        .byte $01 + $80   ; 
- D 2 - I - 0x03D8BF 0F:D8AF: 2D        .byte $2D   ; 

- D 2 - I - 0x03D8C0 0F:D8B0: 07        .byte $07   ; 
- D 2 - I - 0x03D8C1 0F:D8B1: 00        .byte $00   ; 

- D 2 - I - 0x03D8C2 0F:D8B2: 8A        .byte $0A + $80   ; 
- D 2 - I - 0x03D8C3 0F:D8B3: E3        .byte $E3, $E4, $E5, $E6, $E7, $E8, $E9, $EA, $EB, $EC   ; 

- D 2 - I - 0x03D8CD 0F:D8BD: 07        .byte $07   ; 
- D 2 - I - 0x03D8CE 0F:D8BE: 00        .byte $00   ; 

- D 2 - I - 0x03D8CF 0F:D8BF: 81        .byte $01 + $80   ; 
- D 2 - I - 0x03D8D0 0F:D8C0: 2C        .byte $2C   ; 

- D 2 - I - 0x03D8D1 0F:D8C1: 06        .byte $06   ; 
- D 2 - I - 0x03D8D2 0F:D8C2: 00        .byte $00   ; 

- D 2 - I - 0x03D8D3 0F:D8C3: 81        .byte $01 + $80   ; 
- D 2 - I - 0x03D8D4 0F:D8C4: 2D        .byte $2D   ; 

- D 2 - I - 0x03D8D5 0F:D8C5: 07        .byte $07   ; 
- D 2 - I - 0x03D8D6 0F:D8C6: 00        .byte $00   ; 

- D 2 - I - 0x03D8D7 0F:D8C7: 83        .byte $03 + $80   ; 
- D 2 - I - 0x03D8D8 0F:D8C8: F3        .byte $F3, $F4, $F5   ; 

- D 2 - I - 0x03D8DB 0F:D8CB: 0E        .byte $0E   ; 
- D 2 - I - 0x03D8DC 0F:D8CC: 00        .byte $00   ; 

- D 2 - I - 0x03D8DD 0F:D8CD: 81        .byte $01 + $80   ; 
- D 2 - I - 0x03D8DE 0F:D8CE: 2C        .byte $2C   ; 

- D 2 - I - 0x03D8DF 0F:D8CF: 06        .byte $06   ; 
- D 2 - I - 0x03D8E0 0F:D8D0: 00        .byte $00   ; 

- D 2 - I - 0x03D8E1 0F:D8D1: 81        .byte $01 + $80   ; 
- D 2 - I - 0x03D8E2 0F:D8D2: 2D        .byte $2D   ; 

- D 2 - I - 0x03D8E3 0F:D8D3: 18        .byte $18   ; 
- D 2 - I - 0x03D8E4 0F:D8D4: 00        .byte $00   ; 

- D 2 - I - 0x03D8E5 0F:D8D5: 81        .byte $01 + $80   ; 
- D 2 - I - 0x03D8E6 0F:D8D6: 2C        .byte $2C   ; 

- D 2 - I - 0x03D8E7 0F:D8D7: 06        .byte $06   ; 
- D 2 - I - 0x03D8E8 0F:D8D8: 00        .byte $00   ; 

- D 2 - I - 0x03D8E9 0F:D8D9: 81        .byte $01 + $80   ; 
- D 2 - I - 0x03D8EA 0F:D8DA: 2D        .byte $2D   ; 

- D 2 - I - 0x03D8EB 0F:D8DB: 18        .byte $18   ; 
- D 2 - I - 0x03D8EC 0F:D8DC: 00        .byte $00   ; 

- D 2 - I - 0x03D8ED 0F:D8DD: 81        .byte $01 + $80   ; 
- D 2 - I - 0x03D8EE 0F:D8DE: 2C        .byte $2C   ; 

- D 2 - I - 0x03D8EF 0F:D8DF: 06        .byte $06   ; 
- D 2 - I - 0x03D8F0 0F:D8E0: 00        .byte $00   ; 

- D 2 - I - 0x03D8F1 0F:D8E1: 81        .byte $01 + $80   ; 
- D 2 - I - 0x03D8F2 0F:D8E2: 2D        .byte $2D   ; 

- D 2 - I - 0x03D8F3 0F:D8E3: 18        .byte $18   ; 
- D 2 - I - 0x03D8F4 0F:D8E4: 00        .byte $00   ; 

- D 2 - I - 0x03D8F5 0F:D8E5: 81        .byte $01 + $80   ; 
- D 2 - I - 0x03D8F6 0F:D8E6: 2C        .byte $2C   ; 

- D 2 - I - 0x03D8F7 0F:D8E7: 06        .byte $06   ; 
- D 2 - I - 0x03D8F8 0F:D8E8: 00        .byte $00   ; 

- D 2 - I - 0x03D8F9 0F:D8E9: 81        .byte $01 + $80   ; 
- D 2 - I - 0x03D8FA 0F:D8EA: 2D        .byte $2D   ; 

- D 2 - I - 0x03D8FB 0F:D8EB: 18        .byte $18   ; 
- D 2 - I - 0x03D8FC 0F:D8EC: 00        .byte $00   ; 

- D 2 - I - 0x03D8FD 0F:D8ED: 81        .byte $01 + $80   ; 
- D 2 - I - 0x03D8FE 0F:D8EE: 2C        .byte $2C   ; 

- D 2 - I - 0x03D8FF 0F:D8EF: 06        .byte $06   ; 
- D 2 - I - 0x03D900 0F:D8F0: 00        .byte $00   ; 

- D 2 - I - 0x03D901 0F:D8F1: 81        .byte $01 + $80   ; 
- D 2 - I - 0x03D902 0F:D8F2: 2D        .byte $2D   ; 

- D 2 - I - 0x03D903 0F:D8F3: 18        .byte $18   ; 
- D 2 - I - 0x03D904 0F:D8F4: 00        .byte $00   ; 

- D 2 - I - 0x03D905 0F:D8F5: 81        .byte $01 + $80   ; 
- D 2 - I - 0x03D906 0F:D8F6: 2C        .byte $2C   ; 

- D 2 - I - 0x03D907 0F:D8F7: 06        .byte $06   ; 
- D 2 - I - 0x03D908 0F:D8F8: 00        .byte $00   ; 

- D 2 - I - 0x03D909 0F:D8F9: 81        .byte $01 + $80   ; 
- D 2 - I - 0x03D90A 0F:D8FA: 2D        .byte $2D   ; 

- D 2 - I - 0x03D90B 0F:D8FB: 18        .byte $18   ; 
- D 2 - I - 0x03D90C 0F:D8FC: 00        .byte $00   ; 

- D 2 - I - 0x03D90D 0F:D8FD: 81        .byte $01 + $80   ; 
- D 2 - I - 0x03D90E 0F:D8FE: 2C        .byte $2C   ; 

- D 2 - I - 0x03D90F 0F:D8FF: 06        .byte $06   ; 
- D 2 - I - 0x03D910 0F:D900: 00        .byte $00   ; 

- D 2 - I - 0x03D911 0F:D901: 81        .byte $01 + $80   ; 
- D 2 - I - 0x03D912 0F:D902: 2D        .byte $2D   ; 

- D 2 - I - 0x03D913 0F:D903: 18        .byte $18   ; 
- D 2 - I - 0x03D914 0F:D904: 2E        .byte $2E   ; 

- D 2 - I - 0x03D915 0F:D905: 81        .byte $01 + $80   ; 
- D 2 - I - 0x03D916 0F:D906: 2C        .byte $2C   ; 

- D 2 - I - 0x03D917 0F:D907: 4D        .byte $4D   ; 
- D 2 - I - 0x03D918 0F:D908: 00        .byte $00   ; 

- D 2 - I - 0x03D919 0F:D909: 82        .byte $02 + $80   ; 
- D 2 - I - 0x03D91A 0F:D90A: 80        .byte $80, $20   ; 

- D 2 - I - 0x03D91C 0F:D90C: 06        .byte $06   ; 
- D 2 - I - 0x03D91D 0F:D90D: 00        .byte $00   ; 

- D 2 - I - 0x03D91E 0F:D90E: 84        .byte $04 + $80   ; 
- D 2 - I - 0x03D91F 0F:D90F: 98        .byte $98, $AA, $EE, $33   ; 

- D 2 - I - 0x03D923 0F:D913: 04        .byte $04   ; 
- D 2 - I - 0x03D924 0F:D914: 00        .byte $00   ; 

- D 2 - I - 0x03D925 0F:D915: 84        .byte $04 + $80   ; 
- D 2 - I - 0x03D926 0F:D916: 55        .byte $55, $99, $EE, $FF   ; 

- D 2 - I - 0x03D92A 0F:D91A: 04        .byte $04   ; 
- D 2 - I - 0x03D92B 0F:D91B: 00        .byte $00   ; 

- D 2 - I - 0x03D92C 0F:D91C: 84        .byte $04 + $80   ; 
- D 2 - I - 0x03D92D 0F:D91D: 55        .byte $55, $59, $EE, $FF   ; 

- D 2 - I - 0x03D931 0F:D921: 04        .byte $04   ; 
- D 2 - I - 0x03D932 0F:D922: 00        .byte $00   ; 

- D 2 - I - 0x03D933 0F:D923: 82        .byte $02 + $80   ; 
- D 2 - I - 0x03D934 0F:D924: 05        .byte $05, $05   ; 

- D 2 - I - 0x03D936 0F:D926: 14        .byte $14   ; 
- D 2 - I - 0x03D937 0F:D927: 00        .byte $00   ; 

- D 2 - I - 0x03D938 0F:D928: FF        .byte $FF   ; end token



_off006_0x03D939_03:
- D 2 - I - 0x03D939 0F:D929: 00        .byte $00   ; ppu offset
- D 2 - I - 0x03D93A 0F:D92A: 80        .byte $80   ; end line

- D 2 - I - 0x03D93B 0F:D92B: 00        .byte $00   ; ppu offset
- D 2 - I - 0x03D93C 0F:D92C: 80        .byte $80   ; end line
; "During 15th Century"
- D 2 - I - 0x03D93D 0F:D92D: 06        .byte $06   ; ppu offset
- D 2 - I - 0x03D93E 0F:D92E: C3        .byte $C3, $F4, $F1, $E8, $ED, $E6, $00, $DE, $DF, $F3, $E7, $00, $C2, $E4, $ED, $F3   ; 
- D 2 - I - 0x03D94E 0F:D93E: F4        .byte $F4, $F1, $F8   ; 
- D 2 - I - 0x03D951 0F:D941: 80        .byte $80   ; end line
; "Europe, there lived"
- D 2 - I - 0x03D952 0F:D942: 06        .byte $06   ; ppu offset
- D 2 - I - 0x03D953 0F:D943: C4        .byte $C4, $F4, $F1, $EE, $EF, $E4, $DC, $00, $F3, $E7, $E4, $F1, $E4, $00, $EB, $E8   ; 
- D 2 - I - 0x03D963 0F:D953: F5        .byte $F5, $E4, $E3   ; 
- D 2 - I - 0x03D966 0F:D956: 80        .byte $80   ; end line
; "a person named"
- D 2 - I - 0x03D967 0F:D957: 06        .byte $06   ; ppu offset
- D 2 - I - 0x03D968 0F:D958: E0        .byte $E0, $00, $EF, $E4, $F1, $F2, $EE, $ED, $00, $ED, $E0, $EC, $E4, $E3   ; 
- D 2 - I - 0x03D976 0F:D966: 80        .byte $80   ; end line
; "Dracula."
- D 2 - I - 0x03D977 0F:D967: 06        .byte $06   ; ppu offset
- D 2 - I - 0x03D978 0F:D968: C3        .byte $C3, $F1, $E0, $E2, $F4, $EB, $E0, $DB   ; 
- D 2 - I - 0x03D980 0F:D970: 80        .byte $80   ; end line
; "He practiced sorcery"
- D 2 - I - 0x03D981 0F:D971: 06        .byte $06   ; ppu offset
- D 2 - I - 0x03D982 0F:D972: C7        .byte $C7, $E4, $00, $EF, $F1, $E0, $E2, $F3, $E8, $E2, $E4, $E3, $00, $F2, $EE, $F1   ; 
- D 2 - I - 0x03D992 0F:D982: E2        .byte $E2, $E4, $F1, $F8   ; 
- D 2 - I - 0x03D996 0F:D986: 80        .byte $80   ; end line
; "in order to create"
- D 2 - I - 0x03D997 0F:D987: 06        .byte $06   ; ppu offset
- D 2 - I - 0x03D998 0F:D988: E8        .byte $E8, $ED, $00, $EE, $F1, $E3, $E4, $F1, $00, $F3, $EE, $00, $E2, $F1, $E4, $E0   ; 
- D 2 - I - 0x03D9A8 0F:D998: F3        .byte $F3, $E4   ; 
- D 2 - I - 0x03D9AA 0F:D99A: 80        .byte $80   ; end line
; "a bad world filled"
- D 2 - I - 0x03D9AB 0F:D99B: 06        .byte $06   ; ppu offset
- D 2 - I - 0x03D9AC 0F:D99C: E0        .byte $E0, $00, $E1, $E0, $E3, $00, $F6, $EE, $F1, $EB, $E3, $00, $E5, $E8, $EB, $EB   ; 
- D 2 - I - 0x03D9BC 0F:D9AC: E4        .byte $E4, $E3   ; 
- D 2 - I - 0x03D9BE 0F:D9AE: 80        .byte $80   ; end line
; "with evil."
- D 2 - I - 0x03D9BF 0F:D9AF: 06        .byte $06   ; ppu offset
- D 2 - I - 0x03D9C0 0F:D9B0: F6        .byte $F6, $E8, $F3, $E7, $00, $E4, $F5, $E8, $EB, $DB   ; 
- D 2 - I - 0x03D9CA 0F:D9BA: 80        .byte $80   ; end line

- D 2 - I - 0x03D9CB 0F:D9BB: 81        .byte $81   ; end token



_off006_0x03D9CC_04:
- D 2 - I - 0x03D9CC 0F:D9BC: 00        .byte $00   ; ppu offset
- D 2 - I - 0x03D9CD 0F:D9BD: 80        .byte $80   ; end line

- D 2 - I - 0x03D9CE 0F:D9BE: 00        .byte $00   ; ppu offset
- D 2 - I - 0x03D9CF 0F:D9BF: 80        .byte $80   ; end line
; "He began taking over"
- D 2 - I - 0x03D9D0 0F:D9C0: 06        .byte $06   ; ppu offset
- D 2 - I - 0x03D9D1 0F:D9C1: C7        .byte $C7, $E4, $00, $E1, $E4, $E6, $E0, $ED, $00, $F3, $E0, $EA, $E8, $ED, $E6, $00   ; 
- D 2 - I - 0x03D9E1 0F:D9D1: EE        .byte $EE, $F5, $E4, $F1   ; 
- D 2 - I - 0x03D9E5 0F:D9D5: 80        .byte $80   ; end line
; "the Continent of"
- D 2 - I - 0x03D9E6 0F:D9D6: 06        .byte $06   ; ppu offset
- D 2 - I - 0x03D9E7 0F:D9D7: F3        .byte $F3, $E7, $E4, $00, $C2, $EE, $ED, $F3, $E8, $ED, $E4, $ED, $F3, $00, $EE, $E5   ; 
- D 2 - I - 0x03D9F7 0F:D9E7: 80        .byte $80   ; end line
; "Europe, changing"
- D 2 - I - 0x03D9F8 0F:D9E8: 06        .byte $06   ; ppu offset
- D 2 - I - 0x03D9F9 0F:D9E9: C4        .byte $C4, $F4, $F1, $EE, $EF, $E4, $DC, $00, $E2, $E7, $E0, $ED, $E6, $E8, $ED, $E6   ; 
- D 2 - I - 0x03DA09 0F:D9F9: 80        .byte $80   ; end line
; "countries from good"
- D 2 - I - 0x03DA0A 0F:D9FA: 06        .byte $06   ; ppu offset
- D 2 - I - 0x03DA0B 0F:D9FB: E2        .byte $E2, $EE, $F4, $ED, $F3, $F1, $E8, $E4, $F2, $00, $E5, $F1, $EE, $EC, $00, $E6   ; 
- D 2 - I - 0x03DA1B 0F:DA0B: EE        .byte $EE, $EE, $E3   ; 
- D 2 - I - 0x03DA1E 0F:DA0E: 80        .byte $80   ; end line
; "to bad."
- D 2 - I - 0x03DA1F 0F:DA0F: 06        .byte $06   ; ppu offset
- D 2 - I - 0x03DA20 0F:DA10: F3        .byte $F3, $EE, $00, $E1, $E0, $E3, $DB   ; 
- D 2 - I - 0x03DA27 0F:DA17: 80        .byte $80   ; end line
; "The good people of"
- D 2 - I - 0x03DA28 0F:DA18: 06        .byte $06   ; ppu offset
- D 2 - I - 0x03DA29 0F:DA19: D3        .byte $D3, $E7, $E4, $00, $E6, $EE, $EE, $E3, $00, $EF, $E4, $EE, $EF, $EB, $E4, $00   ; 
- D 2 - I - 0x03DA39 0F:DA29: EE        .byte $EE, $E5   ; 
- D 2 - I - 0x03DA3B 0F:DA2B: 80        .byte $80   ; end line
; "Europe tried to"
- D 2 - I - 0x03DA3C 0F:DA2C: 06        .byte $06   ; ppu offset
- D 2 - I - 0x03DA3D 0F:DA2D: C4        .byte $C4, $F4, $F1, $EE, $EF, $E4, $00, $F3, $F1, $E8, $E4, $E3, $00, $F3, $EE   ; 
- D 2 - I - 0x03DA4C 0F:DA3C: 80        .byte $80   ; end line
; "fight off Dracula,"
- D 2 - I - 0x03DA4D 0F:DA3D: 06        .byte $06   ; ppu offset
- D 2 - I - 0x03DA4E 0F:DA3E: E5        .byte $E5, $E8, $E6, $E7, $F3, $00, $EE, $E5, $E5, $00, $C3, $F1, $E0, $E2, $F4, $EB   ; 
- D 2 - I - 0x03DA5E 0F:DA4E: E0        .byte $E0, $DC   ; 
- D 2 - I - 0x03DA60 0F:DA50: 80        .byte $80   ; end line
; "but no one was able"
- D 2 - I - 0x03DA61 0F:DA51: 06        .byte $06   ; ppu offset
- D 2 - I - 0x03DA62 0F:DA52: E1        .byte $E1, $F4, $F3, $00, $ED, $EE, $00, $EE, $ED, $E4, $00, $F6, $E0, $F2, $00, $E0   ; 
- D 2 - I - 0x03DA72 0F:DA62: E1        .byte $E1, $EB, $E4   ; 
- D 2 - I - 0x03DA75 0F:DA65: 80        .byte $80   ; end line
; "to survive."
- D 2 - I - 0x03DA76 0F:DA66: 06        .byte $06   ; ppu offset
- D 2 - I - 0x03DA77 0F:DA67: F3        .byte $F3, $EE, $00, $F2, $F4, $F1, $F5, $E8, $F5, $E4, $DB   ; 
- D 2 - I - 0x03DA82 0F:DA72: 80        .byte $80   ; end line

- D 2 - I - 0x03DA83 0F:DA73: 81        .byte $81   ; end token



_off006_0x03DA84_00:
- D 2 - I - 0x03DA84 0F:DA74: 00        .byte $00   ; ppu offset
- D 2 - I - 0x03DA85 0F:DA75: 80        .byte $80   ; end line

- D 2 - I - 0x03DA86 0F:DA76: 00        .byte $00   ; ppu offset
- D 2 - I - 0x03DA87 0F:DA77: 80        .byte $80   ; end line
; "Finally, the Belmont"
- D 2 - I - 0x03DA88 0F:DA78: 06        .byte $06   ; ppu offset
- D 2 - I - 0x03DA89 0F:DA79: C5        .byte $C5, $E8, $ED, $E0, $EB, $EB, $F8, $DC, $00, $F3, $E7, $E4, $00, $C1, $E4, $EB   ; 
- D 2 - I - 0x03DA99 0F:DA89: EC        .byte $EC, $EE, $ED, $F3   ; 
- D 2 - I - 0x03DA9D 0F:DA8D: 80        .byte $80   ; end line
; "family was summoned"
- D 2 - I - 0x03DA9E 0F:DA8E: 06        .byte $06   ; ppu offset
- D 2 - I - 0x03DA9F 0F:DA8F: E5        .byte $E5, $E0, $EC, $E8, $EB, $F8, $00, $F6, $E0, $F2, $00, $F2, $F4, $EC, $EC, $EE   ; 
- D 2 - I - 0x03DAAF 0F:DA9F: ED        .byte $ED, $E4, $E3   ; 
- D 2 - I - 0x03DAB2 0F:DAA2: 80        .byte $80   ; end line
; "to battle Dracula's"
- D 2 - I - 0x03DAB3 0F:DAA3: 06        .byte $06   ; ppu offset
- D 2 - I - 0x03DAB4 0F:DAA4: F3        .byte $F3, $EE, $00, $E1, $E0, $F3, $F3, $EB, $E4, $00, $C3, $F1, $E0, $E2, $F4, $EB   ; 
- D 2 - I - 0x03DAC4 0F:DAB4: E0        .byte $E0, $DA, $F2   ; 
- D 2 - I - 0x03DAC7 0F:DAB7: 80        .byte $80   ; end line
; "vile forces."
- D 2 - I - 0x03DAC8 0F:DAB8: 06        .byte $06   ; ppu offset
- D 2 - I - 0x03DAC9 0F:DAB9: F5        .byte $F5, $E8, $EB, $E4, $00, $E5, $EE, $F1, $E2, $E4, $F2, $DB   ; 
- D 2 - I - 0x03DAD5 0F:DAC5: 80        .byte $80   ; end line
; "The Belmont"
- D 2 - I - 0x03DAD6 0F:DAC6: 10        .byte $10   ; ppu offset
- D 2 - I - 0x03DAD7 0F:DAC7: D3        .byte $D3, $E7, $E4, $00, $C1, $E4, $EB, $EC, $EE, $ED, $F3   ; 
- D 2 - I - 0x03DAE2 0F:DAD2: 80        .byte $80   ; end line
; "family has"
- D 2 - I - 0x03DAE3 0F:DAD3: 10        .byte $10   ; ppu offset
- D 2 - I - 0x03DAE4 0F:DAD4: E5        .byte $E5, $E0, $EC, $E8, $EB, $F8, $00, $E7, $E0, $F2   ; 
- D 2 - I - 0x03DAEE 0F:DADE: 80        .byte $80   ; end line
; "a long"
- D 2 - I - 0x03DAEF 0F:DADF: 10        .byte $10   ; ppu offset
- D 2 - I - 0x03DAF0 0F:DAE0: E0        .byte $E0, $00, $EB, $EE, $ED, $E6   ; 
- D 2 - I - 0x03DAF6 0F:DAE6: 80        .byte $80   ; end line
; "history of"
- D 2 - I - 0x03DAF7 0F:DAE7: 10        .byte $10   ; ppu offset
- D 2 - I - 0x03DAF8 0F:DAE8: E7        .byte $E7, $E8, $F2, $F3, $EE, $F1, $F8, $00, $EE, $E5   ; 
- D 2 - I - 0x03DB02 0F:DAF2: 80        .byte $80   ; end line
; "fighting"
- D 2 - I - 0x03DB03 0F:DAF3: 10        .byte $10   ; ppu offset
- D 2 - I - 0x03DB04 0F:DAF4: E5        .byte $E5, $E8, $E6, $E7, $F3, $E8, $ED, $E6   ; 
- D 2 - I - 0x03DB0C 0F:DAFC: 80        .byte $80   ; end line
; "evil."
- D 2 - I - 0x03DB0D 0F:DAFD: 10        .byte $10   ; ppu offset
- D 2 - I - 0x03DB0E 0F:DAFE: E4        .byte $E4, $F5, $E8, $EB, $DB   ; 
- D 2 - I - 0x03DB13 0F:DB03: 80        .byte $80   ; end line

- D 2 - I - 0x03DB14 0F:DB04: 81        .byte $81   ; end token



_off006_0x03DB15_01:
- D 2 - I - 0x03DB15 0F:DB05: 00        .byte $00   ; ppu offset
- D 2 - I - 0x03DB16 0F:DB06: 80        .byte $80   ; end line

- D 2 - I - 0x03DB17 0F:DB07: 00        .byte $00   ; ppu offset
- D 2 - I - 0x03DB18 0F:DB08: 80        .byte $80   ; end line
; "The townspeople be-"
- D 2 - I - 0x03DB19 0F:DB09: 06        .byte $06   ; ppu offset
- D 2 - I - 0x03DB1A 0F:DB0A: D3        .byte $D3, $E7, $E4, $00, $F3, $EE, $F6, $ED, $F2, $EF, $E4, $EE, $EF, $EB, $E4, $00   ; 
- D 2 - I - 0x03DB2A 0F:DB1A: E1        .byte $E1, $E4, $FC   ; 
- D 2 - I - 0x03DB2D 0F:DB1D: 80        .byte $80   ; end line
; "came afraid of the"
- D 2 - I - 0x03DB2E 0F:DB1E: 06        .byte $06   ; ppu offset
- D 2 - I - 0x03DB2F 0F:DB1F: E2        .byte $E2, $E0, $EC, $E4, $00, $E0, $E5, $F1, $E0, $E8, $E3, $00, $EE, $E5, $00, $F3   ; 
- D 2 - I - 0x03DB3F 0F:DB2F: E7        .byte $E7, $E4   ; 
- D 2 - I - 0x03DB41 0F:DB31: 80        .byte $80   ; end line
; "Belmonts super-human"
- D 2 - I - 0x03DB42 0F:DB32: 06        .byte $06   ; ppu offset
- D 2 - I - 0x03DB43 0F:DB33: C1        .byte $C1, $E4, $EB, $EC, $EE, $ED, $F3, $F2, $00, $F2, $F4, $EF, $E4, $F1, $FC, $E7   ; 
- D 2 - I - 0x03DB53 0F:DB43: F4        .byte $F4, $EC, $E0, $ED   ; 
- D 2 - I - 0x03DB57 0F:DB47: 80        .byte $80   ; end line
; "power and asked them"
- D 2 - I - 0x03DB58 0F:DB48: 06        .byte $06   ; ppu offset
- D 2 - I - 0x03DB59 0F:DB49: EF        .byte $EF, $EE, $F6, $E4, $F1, $00, $E0, $ED, $E3, $00, $E0, $F2, $EA, $E4, $E3, $00   ; 
- D 2 - I - 0x03DB69 0F:DB59: F3        .byte $F3, $E7, $E4, $EC   ; 
- D 2 - I - 0x03DB6D 0F:DB5D: 80        .byte $80   ; end line
; "to leave the country."
- D 2 - I - 0x03DB6E 0F:DB5E: 06        .byte $06   ; ppu offset
- D 2 - I - 0x03DB6F 0F:DB5F: F3        .byte $F3, $EE, $00, $EB, $E4, $E0, $F5, $E4, $00, $F3, $E7, $E4, $00, $E2, $EE, $F4   ; 
- D 2 - I - 0x03DB7F 0F:DB6F: ED        .byte $ED, $F3, $F1, $F8, $DB   ; 
- D 2 - I - 0x03DB84 0F:DB74: 80        .byte $80   ; end line
; "Fortunately"
- D 2 - I - 0x03DB85 0F:DB75: 06        .byte $06   ; ppu offset
- D 2 - I - 0x03DB86 0F:DB76: C5        .byte $C5, $EE, $F1, $F3, $F4, $ED, $E0, $F3, $E4, $EB, $F8   ; 
- D 2 - I - 0x03DB91 0F:DB81: 80        .byte $80   ; end line
; "the people"
- D 2 - I - 0x03DB92 0F:DB82: 06        .byte $06   ; ppu offset
- D 2 - I - 0x03DB93 0F:DB83: F3        .byte $F3, $E7, $E4, $00, $EF, $E4, $EE, $EF, $EB, $E4   ; 
- D 2 - I - 0x03DB9D 0F:DB8D: 80        .byte $80   ; end line
; "found a"
- D 2 - I - 0x03DB9E 0F:DB8E: 06        .byte $06   ; ppu offset
- D 2 - I - 0x03DB9F 0F:DB8F: E5        .byte $E5, $EE, $F4, $ED, $E3, $00, $E0   ; 
- D 2 - I - 0x03DBA6 0F:DB96: 80        .byte $80   ; end line
; "mighty"
- D 2 - I - 0x03DBA7 0F:DB97: 06        .byte $06   ; ppu offset
- D 2 - I - 0x03DBA8 0F:DB98: EC        .byte $EC, $E8, $E6, $E7, $F3, $F8   ; 
- D 2 - I - 0x03DBAE 0F:DB9E: 80        .byte $80   ; end line
; "Belmont, ca-"
- D 2 - I - 0x03DBAF 0F:DB9F: 06        .byte $06   ; ppu offset
- D 2 - I - 0x03DBB0 0F:DBA0: C1        .byte $C1, $E4, $EB, $EC, $EE, $ED, $F3, $DC, $00, $E2, $E0, $FC   ; 
- D 2 - I - 0x03DBBC 0F:DBAC: 80        .byte $80   ; end line
; "lled Trevor."
- D 2 - I - 0x03DBBD 0F:DBAD: 06        .byte $06   ; ppu offset
- D 2 - I - 0x03DBBE 0F:DBAE: EB        .byte $EB, $EB, $E4, $E3, $00, $D3, $F1, $E4, $F5, $EE, $F1, $DB   ; 
- D 2 - I - 0x03DBCA 0F:DBBA: 80        .byte $80   ; end line

- D 2 - I - 0x03DBCB 0F:DBBB: 81        .byte $81   ; end token



_off006_0x03DBCC_02:
- D 2 - I - 0x03DBCC 0F:DBBC: 00        .byte $00   ; ppu offset
- D 2 - I - 0x03DBCD 0F:DBBD: 80        .byte $80   ; end line

- D 2 - I - 0x03DBCE 0F:DBBE: 00        .byte $00   ; ppu offset
- D 2 - I - 0x03DBCF 0F:DBBF: 80        .byte $80   ; end line

- D 2 - I - 0x03DBD0 0F:DBC0: 00        .byte $00   ; ppu offset
- D 2 - I - 0x03DBD1 0F:DBC1: 80        .byte $80   ; end line

- D 2 - I - 0x03DBD2 0F:DBC2: 00        .byte $00   ; ppu offset
- D 2 - I - 0x03DBD3 0F:DBC3: 80        .byte $80   ; end line

- D 2 - I - 0x03DBD4 0F:DBC4: 00        .byte $00   ; ppu offset
- D 2 - I - 0x03DBD5 0F:DBC5: 80        .byte $80   ; end line

- D 2 - I - 0x03DBD6 0F:DBC6: 00        .byte $00   ; ppu offset
- D 2 - I - 0x03DBD7 0F:DBC7: 80        .byte $80   ; end line

- D 2 - I - 0x03DBD8 0F:DBC8: 00        .byte $00   ; ppu offset
- D 2 - I - 0x03DBD9 0F:DBC9: 80        .byte $80   ; end line

- D 2 - I - 0x03DBDA 0F:DBCA: 00        .byte $00   ; ppu offset
- D 2 - I - 0x03DBDB 0F:DBCB: 80        .byte $80   ; end line

- D 2 - I - 0x03DBDC 0F:DBCC: 00        .byte $00   ; ppu offset
- D 2 - I - 0x03DBDD 0F:DBCD: 80        .byte $80   ; end line
; "The curse of"
- D 2 - I - 0x03DBDE 0F:DBCE: 06        .byte $06   ; ppu offset
- D 2 - I - 0x03DBDF 0F:DBCF: D3        .byte $D3, $E7, $E4, $00, $E2, $F4, $F1, $F2, $E4, $00, $EE, $E5   ; 
- D 2 - I - 0x03DBEB 0F:DBDB: 80        .byte $80   ; end line
; "Dracula has begun."
- D 2 - I - 0x03DBEC 0F:DBDC: 06        .byte $06   ; ppu offset
- D 2 - I - 0x03DBED 0F:DBDD: C3        .byte $C3, $F1, $E0, $E2, $F4, $EB, $E0, $00, $E7, $E0, $F2, $00, $E1, $E4, $E6, $F4   ; 
- D 2 - I - 0x03DBFD 0F:DBED: ED        .byte $ED, $DB   ; 
- D 2 - I - 0x03DBFF 0F:DBEF: 80        .byte $80   ; end line
; "The fate of Europe"
- D 2 - I - 0x03DC00 0F:DBF0: 06        .byte $06   ; ppu offset
- D 2 - I - 0x03DC01 0F:DBF1: D3        .byte $D3, $E7, $E4, $00, $E5, $E0, $F3, $E4, $00, $EE, $E5, $00, $C4, $F4, $F1, $EE   ; 
- D 2 - I - 0x03DC11 0F:DC01: EF        .byte $EF, $E4   ; 
- D 2 - I - 0x03DC13 0F:DC03: 80        .byte $80   ; end line
; "lies with Trevor."
- D 2 - I - 0x03DC14 0F:DC04: 06        .byte $06   ; ppu offset
- D 2 - I - 0x03DC15 0F:DC05: EB        .byte $EB, $E8, $E4, $F2, $00, $F6, $E8, $F3, $E7, $00, $D3, $F1, $E4, $F5, $EE, $F1   ; 
- D 2 - I - 0x03DC25 0F:DC15: DB        .byte $DB   ; 
- D 2 - I - 0x03DC26 0F:DC16: 80        .byte $80   ; end line

- D 2 - I - 0x03DC27 0F:DC17: 81        .byte $81   ; end token


; bzk garbage
- - - - - - 0x03DC28 0F:DC18: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x03DC30 0F:DC20: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x03DC40 0F:DC30: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x03DC50 0F:DC40: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x03DC60 0F:DC50: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x03DC70 0F:DC60: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x03DC80 0F:DC70: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x03DC90 0F:DC80: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x03DCA0 0F:DC90: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x03DCB0 0F:DCA0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x03DCC0 0F:DCB0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x03DCD0 0F:DCC0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x03DCE0 0F:DCD0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x03DCF0 0F:DCE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x03DD00 0F:DCF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x03DD10 0F:DD00: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x03DD20 0F:DD10: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x03DD30 0F:DD20: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x03DD40 0F:DD30: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x03DD50 0F:DD40: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x03DD60 0F:DD50: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x03DD70 0F:DD60: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x03DD80 0F:DD70: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x03DD90 0F:DD80: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x03DDA0 0F:DD90: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x03DDB0 0F:DDA0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x03DDC0 0F:DDB0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x03DDD0 0F:DDC0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x03DDE0 0F:DDD0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x03DDF0 0F:DDE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x03DE00 0F:DDF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x03DE10 0F:DE00: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x03DE20 0F:DE10: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x03DE30 0F:DE20: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x03DE40 0F:DE30: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x03DE50 0F:DE40: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x03DE60 0F:DE50: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x03DE70 0F:DE60: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x03DE80 0F:DE70: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x03DE90 0F:DE80: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x03DEA0 0F:DE90: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x03DEB0 0F:DEA0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x03DEC0 0F:DEB0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x03DED0 0F:DEC0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x03DEE0 0F:DED0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x03DEF0 0F:DEE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x03DF00 0F:DEF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x03DF10 0F:DF00: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x03DF20 0F:DF10: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x03DF30 0F:DF20: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x03DF40 0F:DF30: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x03DF50 0F:DF40: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x03DF60 0F:DF50: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x03DF70 0F:DF60: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x03DF80 0F:DF70: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x03DF90 0F:DF80: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x03DFA0 0F:DF90: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x03DFB0 0F:DFA0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x03DFC0 0F:DFB0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x03DFD0 0F:DFC0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x03DFE0 0F:DFD0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x03DFF0 0F:DFE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x03E000 0F:DFF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 



.out .sprintf("Free bytes in bank FE: 0x%04X [%d]", ($E000 - *), ($E000 - *))



.segment "BANK_FF"
.org $E000  ; for listing file
; 0x03E010-0x04000F



.export sub_0x03E011_garbage_loop_X
.export sub_0x03E015_garbage_loop_0F
.export loc_0x03E14A
.export ofs_irq_handler_0x03E14A_00
.export loc_0x03E14F
.export sub_0x03E192_disable_nmi_and_rendering
.export sub_0x03E1A9
.export loc_0x03E1B6
.export loc_0x03E1BB_play_dmc
.export sub_0x03E1C5
.export loc_0x03E1D5
.export sub_0x03E1DE
.export sub_0x03E1EE
.export sub_0x03E1FC
.export loc_0x03E20A
.export loc_0x03E214
.export sub_0x03E21C
.export sub_0x03E237_disable_sound_engine
.export loc_0x03E237_disable_sound_engine
.export sub_0x03E26F_play_sound
.export loc_0x03E26F_play_sound
.export sub_0x03E2E6_prg_bankswitch_dpcm_1
.export sub_0x03E2EA_prg_bankswitch_dpcm_2
.export sub_0x03E323
.export sub_0x03E332
.export sub_0x03E33D
.export sub_0x03E34C
.export loc_0x03E34C
.export sub_0x03E352
.export loc_0x03E352
.export sub_0x03E362
.export sub_0x03E36D
.export loc_0x03E36D
.export sub_0x03E37D
.export loc_0x03E584_prepare_script
.export sub_0x03E589_decrease_screen_timer
.export sub_0x03E59E_set_screen_timer
.export loc_0x03E59E_set_screen_timer
.export sub_0x03E5A3_check_for_special_name
.export loc_0x03E5B0_bg_and_spr_palette
.export sub_0x03E5BF
.export sub_0x03E5CF
.export loc_0x03E5CF
.export sub_0x03E5D1
.export sub_0x03E5DA
.export loc_0x03E5DA
.export sub_0x03E5DE
.export sub_0x03E5E3
.export sub_0x03E614
.export sub_0x03E621
.export sub_0x03E62E
.export loc_0x03E62E
.export loc_0x03E63D_indirect_jump_bank_92
.export sub_0x03E63F_indirect_jump_custom_bank
.export loc_0x03E63F_indirect_jump_custom_bank
.export loc_0x03E651_indirect_jump_bank_92
.export sub_0x03E666_display_time
.export sub_0x03E676
.export sub_0x03E687
.export sub_0x03E694
.export sub_0x03E69F
.export sub_0x03E6AA
.export loc_0x03E6B5
.export sub_0x03E6C5
.export sub_0x03E6D5
.export sub_0x03E6E4_check_stairs_if_pressed_down
.export sub_0x03E6EF_check_stairs_if_pressed_up
.export loc_0x03E6FA
.export sub_0x03E705
.export sub_0x03E710
.export sub_0x03E71B
.export sub_0x03E726_write_partner_sprite_palette
.export sub_0x03E740
.export sub_0x03E74D
.export sub_0x03E758_add_1_life
.export sub_0x03E763_decrease_hearts
.export loc_0x03E763_decrease_hearts
.export sub_0x03E770_add_hearts
.export loc_0x03E77C
.export sub_0x03E787_add_points
.export sub_0x03E79A
.export sub_0x03E7A5
.export loc_0x03E7A5
.export sub_0x03E7BB
.export sub_0x03E7C6
.export sub_0x03E7D1
.export sub_0x03E7DC
.export sub_0x03E7EC
.export sub_0x03E7FC
.export loc_0x03E7FC
.export sub_0x03E807_clear_all_objects_data
.export sub_0x03E829
.export sub_0x03E838_clear_memory
.export sub_0x03E872_clear_00F0_00F7
.export sub_0x03E87D_jump_to_pointers_after_JSR_A
.export sub_0x03E896_jump_to_pointers_after_JSR_Y
.export sub_0x03E8A9_increase_indirect_address
.export sub_0x03E8BF_set_buffer_mode_02
.export sub_0x03E8C5_set_buffer_mode_01
.export sub_0x03E8CB
.export sub_0x03E8D0_set_buffer_mode_05
.export sub_0x03E8D6_set_buffer_mode_04
.export sub_0x03E8ED_increase_and_store_index_and_close_buffer
.export loc_0x03E8ED_increase_and_store_index_and_close_buffer
.export sub_0x03E8EE_store_index_and_close_buffer
.export loc_0x03E8EE_store_index_and_close_buffer
.export sub_0x03E90C_print_number
.export loc_0x03E90C_print_number
.export sub_0x03E945
.export sub_0x03E9C3
.export sub_0x03E9E6_get_nametable_attribute_from_blk_data
.export sub_0x03EA99_get_nametable_attribute_from_blk_data
.export sub_0x03EABF
.export sub_0x03EACE
.export sub_0x03EB6D_prepare_blk_data_pointers
.export sub_0x03EB76_prepare_tile_blocks_pointers
.export sub_0x03EB86_prepare_nametable_attributes_pointers
.export sub_0x03EB96
.export sub_0x03EBA0
.export sub_0x03EBAC_read_byte_from_blk_data
.export sub_0x03EBE5
.export sub_0x03EBF0
.export sub_0x03EC0D_clear_nametables
.export loc_0x03EC0D_clear_nametables
.export sub_0x03EC14_draw_screen
.export ofs_055_0x03EC14_10    ; bzk unused export
.export sub_0x03ECEC_write_data_to_ppu_buffer
.export sub_0x03ECF9_write_data_to_ppu_buffer
.export loc_0x03ECF9_write_data_to_ppu_buffer
.export loc_0x03ED06
.export sub_0x03ED13_read_byte_from_another_bank
.export sub_0x03ED22_close_buffer
.export loc_0x03ED22_close_buffer
.export sub_0x03ED24_write_byte_to_buffer___unk_index
.export loc_0x03ED24_write_byte_to_buffer___unk_index
.export sub_0x03ED26_write_byte_to_buffer_X
.export loc_0x03ED26_write_byte_to_buffer_X
.export sub_0x03ED76_set_2000
.export loc_0x03EF5A
.export sub_0x03EF67_prepare_player_animation
.export sub_0x03EF6C_prepare_animation
.export loc_0x03EF6C_prepare_animation
.export sub_0x03EF70
.export sub_0x03EF7E
.export loc_0x03EF7E
.export sub_0x03EF83
.export loc_0x03EF83
.export sub_0x03EF85
.export loc_0x03EF85
.export sub_0x03EF8B
.export tbl_0x03EFC4
.export sub_0x03FB95
.export sub_0x03FB99
.export sub_0x03FBA5
.export sub_0x03FBB4_increase_brightness
.export ofs_041_0x03FBB4_07_increase_brightness
.export sub_0x03FBBF_decrease_brightness
.export loc_0x03FBBF_decrease_brightness
.export ofs_041_0x03FBB4_08_decrease_brightness
.export loc_0x03FBCA_execute_script
.export loc_0x03FBDF_indirect_jump_bank_92
.export loc_0x03FBE3_indirect_jump_bank_9C
.export sub_0x03FBF8
.export sub_0x03FC26
.export sub_0x03FC2E
.export loc_0x03FC2E
.export sub_0x03FCED
.export tbl_0x03FD5C
.export tbl_0x03FD68
.export tbl_0x03FD71
.export tbl_0x03FD91_speed_lo
.export tbl_0x03FDD2
.export sub_0x03FEAC
.export sub_0x03FEC9
.export loc_0x03FEC9
.export sub_0x03FED8_clear_speed
.export loc_0x03FED8_clear_speed
.export sub_0x03FEE7_clear_object_speed_and_data
.export sub_0x03FF40
.export loc_0x03FF50
.export sub_0x03FF60
.export sub_0x03FF70
.export sub_0x03FF7D
.export loc_0x03FF8A
.export sub_0x03FF9A
.export loc_0x03FF9A
.export loc_0x03FFBA
.export sub_0x03FFCA


; bzk garbage, unused bank id
- - - - - - 0x03E010 0F:E000: 9E        .byte con_prg_bank + $9E   ; 



sub_0x03E011_garbage_loop_X:
; in
    ; X = loop counter
bra_E001_loop:
C - - - - - 0x03E011 0F:E001: CA        DEX
C - - - - - 0x03E012 0F:E002: D0 FD     BNE bra_E001_loop
C - - - - - 0x03E014 0F:E004: 60        RTS



sub_0x03E015_garbage_loop_0F:
C - - - - - 0x03E015 0F:E005: A2 0F     LDX #$0F
bra_E007_loop:
C - - - - - 0x03E017 0F:E007: CA        DEX
C - - - - - 0x03E018 0F:E008: D0 FD     BNE bra_E007_loop
C - - - - - 0x03E01A 0F:E00A: 60        RTS



vec_E00B_RESET:
C - - - - - 0x03E01B 0F:E00B: D8        CLD
C - - - - - 0x03E01C 0F:E00C: 78        SEI
C - - - - - 0x03E01D 0F:E00D: A9 00     LDA #$00
C - - - - - 0x03E01F 0F:E00F: 8D 00 20  STA $2000
C - - - - - 0x03E022 0F:E012: 8D 01 20  STA $2001
C - - - - - 0x03E025 0F:E015: A2 FF     LDX #$FF
C - - - - - 0x03E027 0F:E017: 9A        TXS
bra_E018_loop:
C - - - - - 0x03E028 0F:E018: AD 02 20  LDA $2002
C - - - - - 0x03E02B 0F:E01B: 10 FB     BPL bra_E018_loop
bra_E01D_loop:
C - - - - - 0x03E02D 0F:E01D: AD 02 20  LDA $2002
C - - - - - 0x03E030 0F:E020: 10 FB     BPL bra_E01D_loop
C - - - - - 0x03E032 0F:E022: 20 67 E1  JSR sub_E167_enable_sound_channels
C - - - - - 0x03E035 0F:E025: E8        INX
C - - - - - 0x03E036 0F:E026: 8A        TXA
C - - - - - 0x03E037 0F:E027: 85 00     STA ram_0000_t003_data
C - - - - - 0x03E039 0F:E029: 85 01     STA ram_0000_t003_data + $01
C - - - - - 0x03E03B 0F:E02B: A0 00     LDY #$00
C - - - - - 0x03E03D 0F:E02D: A2 08     LDX #$08
bra_E02F_loop:
C - - - - - 0x03E03F 0F:E02F: 91 00     STA (ram_0000_t003_data),Y
C - - - - - 0x03E041 0F:E031: C8        INY
C - - - - - 0x03E042 0F:E032: D0 FB     BNE bra_E02F_loop
C - - - - - 0x03E044 0F:E034: E6 01     INC ram_0000_t003_data + $01
C - - - - - 0x03E046 0F:E036: E4 01     CPX ram_0000_t003_data + $01
C - - - - - 0x03E048 0F:E038: D0 F5     BNE bra_E02F_loop
C - - - - - 0x03E04A 0F:E03A: 20 DF E0  JSR sub_E0DF_set_mmc5_config
C - - - - - 0x03E04D 0F:E03D: 20 DA E2  JSR sub_E2DA_prg_bankswitch_dpcm_2
C - - - - - 0x03E050 0F:E040: 20 27 E2  JSR sub_E227_disable_sound_engine
C - - - - - 0x03E053 0F:E043: 20 72 E1  JSR sub_E172_enable_rendering
C - - - - - 0x03E056 0F:E046: 58        CLI
loc_E047_loop:
C D 3 - - - 0x03E057 0F:E047: E6 1F     INC ram_random
C - - - - - 0x03E059 0F:E049: 18        CLC
C - - - - - 0x03E05A 0F:E04A: A5 1F     LDA ram_random
C - - - - - 0x03E05C 0F:E04C: 65 1A     ADC ram_frm_cnt
C - - - - - 0x03E05E 0F:E04E: 85 1F     STA ram_random
C - - - - - 0x03E060 0F:E050: 4C 47 E0  JMP loc_E047_loop



vec_E053_NMI:
C - - - - - 0x03E063 0F:E053: 48        PHA
C - - - - - 0x03E064 0F:E054: 8A        TXA
C - - - - - 0x03E065 0F:E055: 48        PHA
C - - - - - 0x03E066 0F:E056: 98        TYA
C - - - - - 0x03E067 0F:E057: 48        PHA
C - - - - - 0x03E068 0F:E058: AD 02 20  LDA $2002
C - - - - - 0x03E06B 0F:E05B: A5 25     LDA ram_for_5105
C - - - - - 0x03E06D 0F:E05D: 8D 05 51  STA $5105
C - - - - - 0x03E070 0F:E060: A4 1B     LDY ram_001B_nmi_flag
C - - - - - 0x03E072 0F:E062: D0 5A     BNE bra_E0BE_game_is_lagging
; if it's not NMI inside NMI
C - - - - - 0x03E074 0F:E064: E6 1B     INC ram_001B_nmi_flag
C - - - - - 0x03E076 0F:E066: A9 00     LDA #< ram_oam
C - - - - - 0x03E078 0F:E068: 8D 03 20  STA $2003
C - - - - - 0x03E07B 0F:E06B: A0 02     LDY #> ram_oam
C - - - - - 0x03E07D 0F:E06D: 8C 14 40  STY $4014
C - - - - - 0x03E080 0F:E070: 20 82 E1  JSR sub_E182_disable_nmi_and_rendering
C - - - - - 0x03E083 0F:E073: 20 27 ED  JSR sub_ED27_write_buffer_to_ppu
C - - - - - 0x03E086 0F:E076: A5 FE     LDA ram_for_2001
C - - - - - 0x03E088 0F:E078: A6 1C     LDX ram_disable_rendering_timer
C - - - - - 0x03E08A 0F:E07A: F0 06     BEQ bra_E082
C - - - - - 0x03E08C 0F:E07C: C6 1C     DEC ram_disable_rendering_timer
C - - - - - 0x03E08E 0F:E07E: F0 02     BEQ bra_E082
; disable rendering
C - - - - - 0x03E090 0F:E080: 29 E7     AND #$E7
bra_E082:
C - - - - - 0x03E092 0F:E082: 8D 01 20  STA $2001
C - - - - - 0x03E095 0F:E085: 20 03 E1  JSR sub_E103_prepare_irq
C - - - - - 0x03E098 0F:E088: 20 47 E1  JSR sub_E147_set_nametable_and_scroll
C - - - - - 0x03E09B 0F:E08B: 20 EC E2  JSR sub_E2EC_write_chr_banks
C - - - - - 0x03E09E 0F:E08E: A5 75     LDA ram_0075
C - - - - - 0x03E0A0 0F:E090: 10 06     BPL bra_E098
; / 10
C - - - - - 0x03E0A2 0F:E092: 4A        LSR
C - - - - - 0x03E0A3 0F:E093: 4A        LSR
C - - - - - 0x03E0A4 0F:E094: 4A        LSR
C - - - - - 0x03E0A5 0F:E095: 4A        LSR
C - - - - - 0x03E0A6 0F:E096: 85 75     STA ram_0075
bra_E098:
C - - - - - 0x03E0A8 0F:E098: A5 56     LDA ram_cam_pos_lo
C - - - - - 0x03E0AA 0F:E09A: 85 6F     STA ram_copy_cam_pos_lo
C - - - - - 0x03E0AC 0F:E09C: A5 57     LDA ram_cam_pos_hi
C - - - - - 0x03E0AE 0F:E09E: 85 70     STA ram_copy_cam_pos_hi
C - - - - - 0x03E0B0 0F:E0A0: 20 4E E2  JSR sub_E24E_update_sound_engine_2
C - - - - - 0x03E0B3 0F:E0A3: 20 7A E2  JSR sub_E27A_read_joysticks
C - - - - - 0x03E0B6 0F:E0A6: 20 7B E3  JSR sub_E37B_main_script_handler
C - - - - - 0x03E0B9 0F:E0A9: A9 9A     LDA #con_prg_bank + $9A
C - - - - - 0x03E0BB 0F:E0AB: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03E0BE 0F:E0AE: 20 01 80  JSR sub_0x034011_sprite_engine
C - - - - - 0x03E0C1 0F:E0B1: A9 00     LDA #$00
C - - - - - 0x03E0C3 0F:E0B3: 20 14 ED  JSR sub_ED14_write_byte_to_buffer___unk_index
; A = 00
C - - - - - 0x03E0C6 0F:E0B6: 85 1B     STA ram_001B_nmi_flag
loc_E0B8_exit_interrupt:
C D 3 - - - 0x03E0C8 0F:E0B8: 68        PLA
C - - - - - 0x03E0C9 0F:E0B9: A8        TAY
C - - - - - 0x03E0CA 0F:E0BA: 68        PLA
C - - - - - 0x03E0CB 0F:E0BB: AA        TAX
C - - - - - 0x03E0CC 0F:E0BC: 68        PLA
C - - - - - 0x03E0CD 0F:E0BD: 40        RTI
bra_E0BE_game_is_lagging:
C - - - - - 0x03E0CE 0F:E0BE: 20 03 E1  JSR sub_E103_prepare_irq
C - - - - - 0x03E0D1 0F:E0C1: 20 47 E1  JSR sub_E147_set_nametable_and_scroll
C - - - - - 0x03E0D4 0F:E0C4: 20 EC E2  JSR sub_E2EC_write_chr_banks
C - - - - - 0x03E0D7 0F:E0C7: A5 75     LDA ram_0075
C - - - - - 0x03E0D9 0F:E0C9: 10 06     BPL bra_E0D1
; / 10
- - - - - - 0x03E0DB 0F:E0CB: 4A        LSR
- - - - - - 0x03E0DC 0F:E0CC: 4A        LSR
- - - - - - 0x03E0DD 0F:E0CD: 4A        LSR
- - - - - - 0x03E0DE 0F:E0CE: 4A        LSR
- - - - - - 0x03E0DF 0F:E0CF: 85 75     STA ram_0075
bra_E0D1:
C - - - - - 0x03E0E1 0F:E0D1: A5 56     LDA ram_cam_pos_lo
C - - - - - 0x03E0E3 0F:E0D3: 85 6F     STA ram_copy_cam_pos_lo
C - - - - - 0x03E0E5 0F:E0D5: A5 57     LDA ram_cam_pos_hi
C - - - - - 0x03E0E7 0F:E0D7: 85 70     STA ram_copy_cam_pos_hi
C - - - - - 0x03E0E9 0F:E0D9: 20 3A E2  JSR sub_E23A_update_sound_engine_1
C - - - - - 0x03E0EC 0F:E0DC: 4C B8 E0  JMP loc_E0B8_exit_interrupt



sub_E0DF_set_mmc5_config:
C - - - - - 0x03E0EF 0F:E0DF: A9 00     LDA #$00
C - - - - - 0x03E0F1 0F:E0E1: 8D 10 50  STA $5010   ; sound register
C - - - - - 0x03E0F4 0F:E0E4: 8D 04 51  STA $5104   ; Internal extended RAM mode
C - - - - - 0x03E0F7 0F:E0E7: A9 44     LDA #$44    ; vertical nametable mapping
C - - - - - 0x03E0F9 0F:E0E9: 85 25     STA ram_for_5105
C - - - - - 0x03E0FB 0F:E0EB: 8D 05 51  STA $5105
C - - - - - 0x03E0FE 0F:E0EE: A9 00     LDA #$00
C - - - - - 0x03E100 0F:E0F0: 8D 00 52  STA $5200   ; Vertical Split Mode
C - - - - - 0x03E103 0F:E0F3: 8D 06 51  STA $5106   ; Fill-mode tile
C - - - - - 0x03E106 0F:E0F6: 8D 07 51  STA $5107   ; Fill-mode color
C - - - - - 0x03E109 0F:E0F9: A0 02     LDY #$02
; One 16KB bank ($8000-$BFFF) and two 8KB banks ($C000-$DFFF and $E000-$FFFF)
C - - - - - 0x03E10B 0F:E0FB: 8C 00 51  STY $5100
C - - - - - 0x03E10E 0F:E0FE: C8        INY ; 03
; 1KB CHR pages
C - - - - - 0x03E10F 0F:E0FF: 8C 01 51  STY $5101
C - - - - - 0x03E112 0F:E102: 60        RTS



sub_E103_prepare_irq:
C - - - - - 0x03E113 0F:E103: AD 04 52  LDA $5204
C - - - - - 0x03E116 0F:E106: A5 40     LDA ram_for_5204
C - - - - - 0x03E118 0F:E108: 8D 04 52  STA $5204
C - - - - - 0x03E11B 0F:E10B: A5 41     LDA ram_0041_scanline
C - - - - - 0x03E11D 0F:E10D: 8D 03 52  STA $5203
C - - - - - 0x03E120 0F:E110: A5 3F     LDA ram_003F_copy_irq_handler
C - - - - - 0x03E122 0F:E112: 85 6D     STA ram_006D_irq_handler
C - - - - - 0x03E124 0F:E114: A5 42     LDA ram_0042
C - - - - - 0x03E126 0F:E116: 85 89     STA ram_0089_scanline
C - - - - - 0x03E128 0F:E118: 58        CLI
C - - - - - 0x03E129 0F:E119: 60        RTS



vec_E11A_IRQ:
C - - - - - 0x03E12A 0F:E11A: 48        PHA
C - - - - - 0x03E12B 0F:E11B: 8A        TXA
C - - - - - 0x03E12C 0F:E11C: 48        PHA
C - - - - - 0x03E12D 0F:E11D: 98        TYA
C - - - - - 0x03E12E 0F:E11E: 48        PHA
C - - - - - 0x03E12F 0F:E11F: AD 04 52  LDA $5204
C - - - - - 0x03E132 0F:E122: A9 82     LDA #con_prg_bank + $82
C - - - - - 0x03E134 0F:E124: 20 E8 E2  JSR sub_E2E8_prg_bankswitch
C - - - - - 0x03E137 0F:E127: A5 6D     LDA ram_006D_irq_handler
C - - - - - 0x03E139 0F:E129: 0A        ASL
C - - - - - 0x03E13A 0F:E12A: B0 0E     BCS bra_E13A_80
C - - - - - 0x03E13C 0F:E12C: A8        TAY
C - - - - - 0x03E13D 0F:E12D: B9 31 9F  LDA tbl_0x005F41_irq_handlers,Y
C - - - - - 0x03E140 0F:E130: 85 44     STA ram_0044_t001_irq_handler_jmp
C - - - - - 0x03E142 0F:E132: B9 32 9F  LDA tbl_0x005F41_irq_handlers + $01,Y
C - - - - - 0x03E145 0F:E135: 85 45     STA ram_0044_t001_irq_handler_jmp + $01
C - - - - - 0x03E147 0F:E137: 6C 44 00  JMP (ram_0044_t001_irq_handler_jmp)
bra_E13A_80:
loc_0x03E14A:
ofs_irq_handler_0x03E14A_00:
C D 3 - - - 0x03E14A 0F:E13A: A9 00     LDA #$00
C - - - - - 0x03E14C 0F:E13C: 8D 04 52  STA $5204
loc_0x03E14F:
C D 3 - - - 0x03E14F 0F:E13F: A5 21     LDA ram_prg_bank
C - - - - - 0x03E151 0F:E141: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03E154 0F:E144: 4C B8 E0  JMP loc_E0B8_exit_interrupt



sub_E147_set_nametable_and_scroll:
C - - - - - 0x03E157 0F:E147: AD 02 20  LDA $2002
C - - - - - 0x03E15A 0F:E14A: A9 20     LDA #> $2000
C - - - - - 0x03E15C 0F:E14C: 8D 06 20  STA $2006
C - - - - - 0x03E15F 0F:E14F: A9 00     LDA #< $2000
C - - - - - 0x03E161 0F:E151: 8D 06 20  STA $2006
; bzk optimize, this LDA is useless
C - - - - - 0x03E164 0F:E154: AD 02 20  LDA $2002
C - - - - - 0x03E167 0F:E157: A5 FD     LDA ram_scroll_X
C - - - - - 0x03E169 0F:E159: 8D 05 20  STA $2005
C - - - - - 0x03E16C 0F:E15C: A5 FC     LDA ram_scroll_Y
C - - - - - 0x03E16E 0F:E15E: 8D 05 20  STA $2005
C - - - - - 0x03E171 0F:E161: A5 FF     LDA ram_for_2000
C - - - - - 0x03E173 0F:E163: 8D 00 20  STA $2000
C - - - - - 0x03E176 0F:E166: 60        RTS



sub_E167_enable_sound_channels:
C - - - - - 0x03E177 0F:E167: A9 0F     LDA #$0F
C - - - - - 0x03E179 0F:E169: 8D 15 40  STA $4015
C - - - - - 0x03E17C 0F:E16C: A9 C0     LDA #$C0
C - - - - - 0x03E17E 0F:E16E: 8D 17 40  STA $4017
C - - - - - 0x03E181 0F:E171: 60        RTS



sub_E172_enable_rendering:
C - - - - - 0x03E182 0F:E172: A9 B0     LDA #$B0
C - - - - - 0x03E184 0F:E174: 85 FF     STA ram_for_2000
C - - - - - 0x03E186 0F:E176: 8D 00 20  STA $2000
C - - - - - 0x03E189 0F:E179: A9 1E     LDA #$1E
C - - - - - 0x03E18B 0F:E17B: 85 FE     STA ram_for_2001
C - - - - - 0x03E18D 0F:E17D: A9 05     LDA #$05
C - - - - - 0x03E18F 0F:E17F: 85 1C     STA ram_disable_rendering_timer
C - - - - - 0x03E191 0F:E181: 60        RTS



sub_E182_disable_nmi_and_rendering:
sub_0x03E192_disable_nmi_and_rendering:
C - - - - - 0x03E192 0F:E182: A5 FF     LDA ram_for_2000
C - - - - - 0x03E194 0F:E184: 29 7F     AND #$7F
C - - - - - 0x03E196 0F:E186: 8D 00 20  STA $2000
C - - - - - 0x03E199 0F:E189: A9 00     LDA #$00
C - - - - - 0x03E19B 0F:E18B: 8D 06 20  STA $2006
C - - - - - 0x03E19E 0F:E18E: 8D 06 20  STA $2006
C - - - - - 0x03E1A1 0F:E191: A5 FE     LDA ram_for_2001
C - - - - - 0x03E1A3 0F:E193: 29 E7     AND #$E7
C - - - - - 0x03E1A5 0F:E195: 8D 01 20  STA $2001
C - - - - - 0x03E1A8 0F:E198: 60        RTS



sub_0x03E1A9:
C - - - - - 0x03E1A9 0F:E199: A9 98     LDA #con_prg_bank + $98
C - - - - - 0x03E1AB 0F:E19B: 20 E0 E2  JSR sub_E2E0_prg_bankswitch
C - - - - - 0x03E1AE 0F:E19E: 20 E2 87  JSR sub_0x0307F2
C - - - - - 0x03E1B1 0F:E1A1: A5 22     LDA ram_0022_prg_bank
C - - - - - 0x03E1B3 0F:E1A3: 4C E6 E2  JMP loc_E2E6_prg_bankswitch



loc_0x03E1B6:
C D 3 - - - 0x03E1B6 0F:E1A6: A9 98     LDA #con_prg_bank + $98
C - - - - - 0x03E1B8 0F:E1A8: 4C E6 E2  JMP loc_E2E6_prg_bankswitch



loc_0x03E1BB_play_dmc:
C D 3 - - - 0x03E1BB 0F:E1AB: 48        PHA
C - - - - - 0x03E1BC 0F:E1AC: A9 98     LDA #con_prg_bank + $98
C - - - - - 0x03E1BE 0F:E1AE: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03E1C1 0F:E1B1: 68        PLA
C - - - - - 0x03E1C2 0F:E1B2: 4C F9 88  JMP loc_0x030909_play_dmc



sub_0x03E1C5:
; Y = 00
C - - - - - 0x03E1C5 0F:E1B5: BD 95 01  LDA ram_se_prg_bank,X
; A = 88 8A 98
C - - - - - 0x03E1C8 0F:E1B8: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03E1CB 0F:E1BB: B1 E6     LDA (ram_00E6_se_t000_data),Y
C - - - - - 0x03E1CD 0F:E1BD: 48        PHA
C - - - - - 0x03E1CE 0F:E1BE: A9 98     LDA #con_prg_bank + $98
C - - - - - 0x03E1D0 0F:E1C0: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03E1D3 0F:E1C3: 68        PLA
C - - - - - 0x03E1D4 0F:E1C4: 60        RTS



loc_0x03E1D5:
C D 3 - - - 0x03E1D5 0F:E1C5: BD 95 01  LDA ram_se_prg_bank,X
; A = 88 8A 98
C - - - - - 0x03E1D8 0F:E1C8: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
; !! bzk warning, don't change this jump, see 0x010011 (included bank)
C - - - - - 0x03E1DB 0F:E1CB: 4C 01 80  JMP $8001



sub_0x03E1DE:
C - - - - - 0x03E1DE 0F:E1CE: 48        PHA
C - - - - - 0x03E1DF 0F:E1CF: A9 98     LDA #con_prg_bank + $98
C - - - - - 0x03E1E1 0F:E1D1: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03E1E4 0F:E1D4: 68        PLA
C - - - - - 0x03E1E5 0F:E1D5: 20 91 8B  JSR sub_0x030BA1
C - - - - - 0x03E1E8 0F:E1D8: BD 95 01  LDA ram_se_prg_bank,X
; A = 88 8A 98
C - - - - - 0x03E1EB 0F:E1DB: 4C E6 E2  JMP loc_E2E6_prg_bankswitch



sub_0x03E1EE:
C - - - - - 0x03E1EE 0F:E1DE: A9 98     LDA #con_prg_bank + $98
C - - - - - 0x03E1F0 0F:E1E0: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03E1F3 0F:E1E3: 20 55 8B  JSR sub_0x030B65
C - - - - - 0x03E1F6 0F:E1E6: BD 95 01  LDA ram_se_prg_bank,X
; A = 88 8A 98
C - - - - - 0x03E1F9 0F:E1E9: 4C E6 E2  JMP loc_E2E6_prg_bankswitch



sub_0x03E1FC:
C - - - - - 0x03E1FC 0F:E1EC: A9 98     LDA #con_prg_bank + $98
C - - - - - 0x03E1FE 0F:E1EE: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03E201 0F:E1F1: 20 FA 8C  JSR sub_0x030D0A
C - - - - - 0x03E204 0F:E1F4: BD 95 01  LDA ram_se_prg_bank,X
; A = 88 8A 98
C - - - - - 0x03E207 0F:E1F7: 4C E6 E2  JMP loc_E2E6_prg_bankswitch



loc_0x03E20A:
C D 3 - - - 0x03E20A 0F:E1FA: 48        PHA
C - - - - - 0x03E20B 0F:E1FB: A9 98     LDA #con_prg_bank + $98
C - - - - - 0x03E20D 0F:E1FD: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03E210 0F:E200: 68        PLA
C - - - - - 0x03E211 0F:E201: 4C C1 8D  JMP loc_0x030DD1



loc_0x03E214:
C D 3 - - - 0x03E214 0F:E204: A9 98     LDA #con_prg_bank + $98
C - - - - - 0x03E216 0F:E206: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03E219 0F:E209: 4C DE 8D  JMP loc_0x030DEE



sub_0x03E21C:
C - - - - - 0x03E21C 0F:E20C: A9 98     LDA #con_prg_bank + $98
C - - - - - 0x03E21E 0F:E20E: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03E221 0F:E211: 20 86 89  JSR sub_0x030996
C - - - - - 0x03E224 0F:E214: A6 EE     LDX ram_00EE_se_channel_index
C - - - - - 0x03E226 0F:E216: BD 95 01  LDA ram_se_prg_bank,X
; A = 88 8A 98
C - - - - - 0x03E229 0F:E219: 4C E6 E2  JMP loc_E2E6_prg_bankswitch


; bzk garbage
- - - - - - 0x03E22C 0F:E21C: BD 95 01  LDA ram_se_prg_bank,X
; A = 88 8A 98
- - - - - - 0x03E22F 0F:E21F: 4C E6 E2  JMP loc_E2E6_prg_bankswitch


; bzk garbage
- - - - - - 0x03E232 0F:E222: A9 98     LDA #con_prg_bank + $98
- - - - - - 0x03E234 0F:E224: 4C E6 E2  JMP loc_E2E6_prg_bankswitch



sub_E227_disable_sound_engine:
sub_0x03E237_disable_sound_engine:
loc_0x03E237_disable_sound_engine:
C D 3 - - - 0x03E237 0F:E227: A9 FF     LDA #$FF
C - - - - - 0x03E239 0F:E229: 85 24     STA ram_se_prg_bsw_flag
C - - - - - 0x03E23B 0F:E22B: A5 21     LDA ram_prg_bank
C - - - - - 0x03E23D 0F:E22D: 85 23     STA ram_0023_prg_bank
C - - - - - 0x03E23F 0F:E22F: A9 98     LDA #con_prg_bank + $98
C - - - - - 0x03E241 0F:E231: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03E244 0F:E234: 20 5E 87  JSR sub_0x03076E_disable_sound_engine
C - - - - - 0x03E247 0F:E237: 4C 71 E2  JMP loc_E271



sub_E23A_update_sound_engine_1:
C - - - - - 0x03E24A 0F:E23A: A5 24     LDA ram_se_prg_bsw_flag
C - - - - - 0x03E24C 0F:E23C: D0 0F     BNE bra_E24D_RTS
C - - - - - 0x03E24E 0F:E23E: A5 21     LDA ram_prg_bank
C - - - - - 0x03E250 0F:E240: 48        PHA
C - - - - - 0x03E251 0F:E241: A9 98     LDA #con_prg_bank + $98
C - - - - - 0x03E253 0F:E243: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03E256 0F:E246: 20 DE 89  JSR sub_0x0309EE_update_sound_engine
C - - - - - 0x03E259 0F:E249: 68        PLA
C - - - - - 0x03E25A 0F:E24A: 4C E6 E2  JMP loc_E2E6_prg_bankswitch
bra_E24D_RTS:
C - - - - - 0x03E25D 0F:E24D: 60        RTS



sub_E24E_update_sound_engine_2:
C - - - - - 0x03E25E 0F:E24E: A9 FF     LDA #$FF
C - - - - - 0x03E260 0F:E250: 85 24     STA ram_se_prg_bsw_flag
C - - - - - 0x03E262 0F:E252: A9 98     LDA #con_prg_bank + $98
C - - - - - 0x03E264 0F:E254: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03E267 0F:E257: 20 DE 89  JSR sub_0x0309EE_update_sound_engine
C - - - - - 0x03E26A 0F:E25A: A9 00     LDA #$00
C - - - - - 0x03E26C 0F:E25C: 85 24     STA ram_se_prg_bsw_flag
C - - - - - 0x03E26E 0F:E25E: 60        RTS



sub_E25F_play_sound:
loc_E25F_play_sound:
sub_0x03E26F_play_sound:
loc_0x03E26F_play_sound:
C D 3 - - - 0x03E26F 0F:E25F: 48        PHA
C - - - - - 0x03E270 0F:E260: A9 FF     LDA #$FF
C - - - - - 0x03E272 0F:E262: 85 24     STA ram_se_prg_bsw_flag
C - - - - - 0x03E274 0F:E264: A5 21     LDA ram_prg_bank
C - - - - - 0x03E276 0F:E266: 85 23     STA ram_0023_prg_bank
C - - - - - 0x03E278 0F:E268: A9 98     LDA #con_prg_bank + $98
C - - - - - 0x03E27A 0F:E26A: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03E27D 0F:E26D: 68        PLA
C - - - - - 0x03E27E 0F:E26E: 20 37 88  JSR sub_0x030847_play_sound
loc_E271:
C D 3 - - - 0x03E281 0F:E271: A9 00     LDA #$00
C - - - - - 0x03E283 0F:E273: 85 24     STA ram_se_prg_bsw_flag
C - - - - - 0x03E285 0F:E275: A5 23     LDA ram_0023_prg_bank
C - - - - - 0x03E287 0F:E277: 4C E6 E2  JMP loc_E2E6_prg_bankswitch



sub_E27A_read_joysticks:
C - - - - - 0x03E28A 0F:E27A: A2 00     LDX #$00
C - - - - - 0x03E28C 0F:E27C: 20 B1 E2  JSR sub_E2B1_read_joy_regs
C - - - - - 0x03E28F 0F:E27F: A2 02     LDX #$02
C - - - - - 0x03E291 0F:E281: 20 B1 E2  JSR sub_E2B1_read_joy_regs
C - - - - - 0x03E294 0F:E284: A5 00     LDA ram_0000_t02C_btns
C - - - - - 0x03E296 0F:E286: C5 02     CMP ram_0000_t02C_btns + $02
C - - - - - 0x03E298 0F:E288: D0 1C     BNE bra_E2A6
C - - - - - 0x03E29A 0F:E28A: A5 01     LDA ram_0000_t02C_btns + $01
C - - - - - 0x03E29C 0F:E28C: C5 03     CMP ram_0000_t02C_btns + $03
C - - - - - 0x03E29E 0F:E28E: D0 16     BNE bra_E2A6
C - - - - - 0x03E2A0 0F:E290: A2 00     LDX #$00
C - - - - - 0x03E2A2 0F:E292: 20 96 E2  JSR sub_E296
C - - - - - 0x03E2A5 0F:E295: E8        INX ; 01
sub_E296:
C - - - - - 0x03E2A6 0F:E296: B5 00     LDA ram_0000_t02C_btns,X ; 0000 0001 
C - - - - - 0x03E2A8 0F:E298: A8        TAY
C - - - - - 0x03E2A9 0F:E299: 55 FA     EOR ram_copy_btn_hold,X
C - - - - - 0x03E2AB 0F:E29B: 35 00     AND ram_0000_t02C_btns,X ; 0000 0001 
C - - - - - 0x03E2AD 0F:E29D: 95 26     STA ram_btn_press,X
C - - - - - 0x03E2AF 0F:E29F: 95 F8     STA ram_copy_btn_press,X
C - - - - - 0x03E2B1 0F:E2A1: 94 28     STY ram_btn_hold,X
C - - - - - 0x03E2B3 0F:E2A3: 94 FA     STY ram_copy_btn_hold,X
C - - - - - 0x03E2B5 0F:E2A5: 60        RTS
bra_E2A6:   ; bzk garbage
- - - - - - 0x03E2B6 0F:E2A6: A9 00     LDA #$00
- - - - - - 0x03E2B8 0F:E2A8: 85 26     STA ram_btn_press
- - - - - - 0x03E2BA 0F:E2AA: 85 F8     STA ram_copy_btn_press
- - - - - - 0x03E2BC 0F:E2AC: 85 27     STA ram_btn_press + $01
- - - - - - 0x03E2BE 0F:E2AE: 85 F9     STA ram_copy_btn_press + $01
- - - - - - 0x03E2C0 0F:E2B0: 60        RTS



sub_E2B1_read_joy_regs:
C - - - - - 0x03E2C1 0F:E2B1: A0 01     LDY #$01
C - - - - - 0x03E2C3 0F:E2B3: 8C 16 40  STY $4016
C - - - - - 0x03E2C6 0F:E2B6: 88        DEY ; 00
C - - - - - 0x03E2C7 0F:E2B7: 8C 16 40  STY $4016
C - - - - - 0x03E2CA 0F:E2BA: A0 08     LDY #$08
bra_E2BC_loop:
C - - - - - 0x03E2CC 0F:E2BC: AD 16 40  LDA $4016
C - - - - - 0x03E2CF 0F:E2BF: 85 04     STA ram_0004_t004_btns
C - - - - - 0x03E2D1 0F:E2C1: 4A        LSR
C - - - - - 0x03E2D2 0F:E2C2: 05 04     ORA ram_0004_t004_btns
C - - - - - 0x03E2D4 0F:E2C4: 4A        LSR
C - - - - - 0x03E2D5 0F:E2C5: 36 00     ROL ram_0000_t02C_btns,X ; 0000 0002 
C - - - - - 0x03E2D7 0F:E2C7: AD 17 40  LDA $4017
C - - - - - 0x03E2DA 0F:E2CA: 85 05     STA ram_0005_t002_btns
C - - - - - 0x03E2DC 0F:E2CC: 4A        LSR
C - - - - - 0x03E2DD 0F:E2CD: 05 05     ORA ram_0005_t002_btns
C - - - - - 0x03E2DF 0F:E2CF: 4A        LSR
C - - - - - 0x03E2E0 0F:E2D0: 36 01     ROL ram_0000_t02C_btns + $01,X ; 0001 0003 
C - - - - - 0x03E2E2 0F:E2D2: 88        DEY
C - - - - - 0x03E2E3 0F:E2D3: D0 E7     BNE bra_E2BC_loop
C - - - - - 0x03E2E5 0F:E2D5: 60        RTS



sub_0x03E2E6_prg_bankswitch_dpcm_1:
C - - - - - 0x03E2E6 0F:E2D6: A9 87     LDA #con_prg_bank + $87
C - - - - - 0x03E2E8 0F:E2D8: D0 02     BNE bra_E2DC    ; jmp



sub_E2DA_prg_bankswitch_dpcm_2:
sub_0x03E2EA_prg_bankswitch_dpcm_2:
C - - - - - 0x03E2EA 0F:E2DA: A9 9E     LDA #con_prg_bank + $9E
bra_E2DC:
C - - - - - 0x03E2EC 0F:E2DC: 8D 16 51  STA $5116   ; C000-DFFF
C - - - - - 0x03E2EF 0F:E2DF: 60        RTS



sub_E2E0_prg_bankswitch:
C - - - - - 0x03E2F0 0F:E2E0: 48        PHA
C - - - - - 0x03E2F1 0F:E2E1: A5 21     LDA ram_prg_bank
C - - - - - 0x03E2F3 0F:E2E3: 85 22     STA ram_0022_prg_bank
C - - - - - 0x03E2F5 0F:E2E5: 68        PLA
loc_E2E6_prg_bankswitch:
sub_E2E6_prg_bankswitch:
C D 3 - - - 0x03E2F6 0F:E2E6: 85 21     STA ram_prg_bank
sub_E2E8_prg_bankswitch:    ; bzk optimize
C - - - - - 0x03E2F8 0F:E2E8: 8D 15 51  STA $5115   ; 8000-BFFF
C - - - - - 0x03E2FB 0F:E2EB: 60        RTS



sub_E2EC_write_chr_banks:
C - - - - - 0x03E2FC 0F:E2EC: A4 72     LDY ram_0072_chr_banks_config
C - - - - - 0x03E2FE 0F:E2EE: F0 0C     BEQ bra_E2FC_00
C - - - - - 0x03E300 0F:E2F0: 88        DEY
C - - - - - 0x03E301 0F:E2F1: F0 12     BEQ bra_E305_01
C - - - - - 0x03E303 0F:E2F3: 88        DEY
C - - - - - 0x03E304 0F:E2F4: D0 0C     BNE bra_E302_03
; 02
C - - - - - 0x03E306 0F:E2F6: 20 19 E3  JSR sub_E319
C - - - - - 0x03E309 0F:E2F9: 4C 05 E3  JMP loc_E305
bra_E2FC_00:
C - - - - - 0x03E30C 0F:E2FC: 20 3C E3  JSR sub_E33C
C - - - - - 0x03E30F 0F:E2FF: 4C 5D E3  JMP loc_E35D
bra_E302_03:
C - - - - - 0x03E312 0F:E302: 20 3C E3  JSR sub_E33C
loc_E305:
bra_E305_01:
C D 3 - - - 0x03E315 0F:E305: A9 41     LDA #con_chr_bank_bg + $41
C - - - - - 0x03E317 0F:E307: 8D 29 51  STA $5129
C - - - - - 0x03E31A 0F:E30A: A9 42     LDA #con_chr_bank_bg + $42
C - - - - - 0x03E31C 0F:E30C: 8D 26 51  STA $5126
C - - - - - 0x03E31F 0F:E30F: 8D 2A 51  STA $512A
C - - - - - 0x03E322 0F:E312: 60        RTS



sub_0x03E323:
C - - - - - 0x03E323 0F:E313: 20 19 E3  JSR sub_E319
C - - - - - 0x03E326 0F:E316: 4C 22 E3  JMP loc_E322



sub_E319:
C - - - - - 0x03E329 0F:E319: A9 7F     LDA #con_chr_bank_spr + $7F
C - - - - - 0x03E32B 0F:E31B: 8D 22 51  STA $5122
C - - - - - 0x03E32E 0F:E31E: 8D 23 51  STA $5123
C - - - - - 0x03E331 0F:E321: 60        RTS



loc_E322:
sub_0x03E332:
C D 3 - - - 0x03E332 0F:E322: A9 7F     LDA #con_chr_bank_spr + $7F
C - - - - - 0x03E334 0F:E324: 8D 20 51  STA $5120
; bzk optimize, loading the same A
C - - - - - 0x03E337 0F:E327: A9 7F     LDA #con_chr_bank_spr + $7F
C - - - - - 0x03E339 0F:E329: 8D 21 51  STA $5121
C - - - - - 0x03E33C 0F:E32C: 60        RTS



sub_0x03E33D:
C - - - - - 0x03E33D 0F:E32D: A9 7F     LDA #con_chr_bank_bg + $7F
C - - - - - 0x03E33F 0F:E32F: 8D 28 51  STA $5128
C - - - - - 0x03E342 0F:E332: 8D 29 51  STA $5129
C - - - - - 0x03E345 0F:E335: 8D 2A 51  STA $512A
C - - - - - 0x03E348 0F:E338: 8D 2B 51  STA $512B
C - - - - - 0x03E34B 0F:E33B: 60        RTS



sub_E33C:
sub_0x03E34C:
loc_0x03E34C:
C D 3 - - - 0x03E34C 0F:E33C: 20 42 E3  JSR sub_E342
C - - - - - 0x03E34F 0F:E33F: 4C 52 E3  JMP loc_E352



sub_E342:
sub_0x03E352:
loc_0x03E352:
C D 3 - - - 0x03E352 0F:E342: A5 48     LDA ram_chr_bank_5122
C - - - - - 0x03E354 0F:E344: 8D 22 51  STA $5122
C - - - - - 0x03E357 0F:E347: A5 49     LDA ram_chr_bank_5123
C - - - - - 0x03E359 0F:E349: 8D 23 51  STA $5123
C - - - - - 0x03E35C 0F:E34C: A5 4E     LDA ram_chr_bank_5125_____
C - - - - - 0x03E35E 0F:E34E: 8D 25 51  STA $5125
C - - - - - 0x03E361 0F:E351: 60        RTS



loc_E352:
sub_0x03E362:
C D 3 - - - 0x03E362 0F:E352: A5 46     LDA ram_chr_bank_5120
C - - - - - 0x03E364 0F:E354: 8D 20 51  STA $5120
C - - - - - 0x03E367 0F:E357: A5 47     LDA ram_chr_bank_5121
C - - - - - 0x03E369 0F:E359: 8D 21 51  STA $5121
C - - - - - 0x03E36C 0F:E35C: 60        RTS



loc_E35D:
sub_0x03E36D:
loc_0x03E36D:
C D 3 - - - 0x03E36D 0F:E35D: A5 4A     LDA ram_chr_bank_5124_5128
C - - - - - 0x03E36F 0F:E35F: 8D 24 51  STA $5124
C - - - - - 0x03E372 0F:E362: 8D 28 51  STA $5128
C - - - - - 0x03E375 0F:E365: A5 4D     LDA ram_chr_bank_5127_512B
C - - - - - 0x03E377 0F:E367: 8D 27 51  STA $5127
C - - - - - 0x03E37A 0F:E36A: 8D 2B 51  STA $512B
sub_0x03E37D:
C - - - - - 0x03E37D 0F:E36D: A5 4B     LDA ram_chr_bank______5129
C - - - - - 0x03E37F 0F:E36F: 8D 29 51  STA $5129
C - - - - - 0x03E382 0F:E372: A5 4C     LDA ram_chr_bank_5126_512A
C - - - - - 0x03E384 0F:E374: 8D 26 51  STA $5126
C - - - - - 0x03E387 0F:E377: 8D 2A 51  STA $512A
C - - - - - 0x03E38A 0F:E37A: 60        RTS



sub_E37B_main_script_handler:
C - - - - - 0x03E38B 0F:E37B: E6 1A     INC ram_frm_cnt
C - - - - - 0x03E38D 0F:E37D: A5 18     LDA ram_main_script
C - - - - - 0x03E38F 0F:E37F: 20 6D E8  JSR sub_E86D_jump_to_pointers_after_JSR_A
- D 3 - I - 0x03E392 0F:E382: A2 E3     .word ofs_000_E3A2_00_title_screen
- - - - - - 0x03E394 0F:E384: 21 E4     .word ofs_000_E421_01_RTS   ; unused, index doesn't exist
- D 3 - I - 0x03E396 0F:E386: 42 E4     .word ofs_000_E442_02_enter_your_name___init
- D 3 - I - 0x03E398 0F:E388: 54 E4     .word ofs_000_E454_03
- D 3 - I - 0x03E39A 0F:E38A: 84 F3     .word ofs_000_F384_04_gameplay
- D 3 - I - 0x03E39C 0F:E38C: 64 E4     .word ofs_000_E464_05_death
- D 3 - I - 0x03E39E 0F:E38E: B6 E4     .word ofs_000_E4B6_06_game_over
- D 3 - I - 0x03E3A0 0F:E390: 43 E5     .word ofs_000_E543_07_debug_menu_handler   ; unused, index doesn't exist, manual activation only
- D 3 - I - 0x03E3A2 0F:E392: 1B E5     .word ofs_000_E51B_08
- D 3 - I - 0x03E3A4 0F:E394: 23 E5     .word ofs_000_E523_09_praying
- D 3 - I - 0x03E3A6 0F:E396: 4B E5     .word ofs_000_E54B_0A_enter_your_name___main
- D 3 - I - 0x03E3A8 0F:E398: 53 E5     .word ofs_000_E553_0B
- D 3 - I - 0x03E3AA 0F:E39A: 2B E5     .word ofs_000_E52B_0C
- D 3 - I - 0x03E3AC 0F:E39C: 33 E5     .word ofs_000_E533_0D
- D 3 - I - 0x03E3AE 0F:E39E: 0A E5     .word ofs_000_E50A_0E
- D 3 - I - 0x03E3B0 0F:E3A0: 3B E5     .word ofs_000_E53B_0F



ofs_000_E3A2_00_title_screen:
C - - J - - 0x03E3B2 0F:E3A2: A6 19     LDX ram_0019_subscript
C - - - - - 0x03E3B4 0F:E3A4: D0 0D     BNE bra_E3B3
; 00
C - - - - - 0x03E3B6 0F:E3A6: 86 1E     STX ram_001E_useless_00
C - - - - - 0x03E3B8 0F:E3A8: 20 24 E8  JSR sub_E824_clear_memory
C - - - - - 0x03E3BB 0F:E3AB: A9 00     LDA #$00
C - - - - - 0x03E3BD 0F:E3AD: 8D EC 07  STA ram_07EC
C - - - - - 0x03E3C0 0F:E3B0: E6 19     INC ram_0019_subscript
C - - - - - 0x03E3C2 0F:E3B2: 60        RTS
bra_E3B3:
C - - - - - 0x03E3C3 0F:E3B3: CA        DEX
C - - - - - 0x03E3C4 0F:E3B4: D0 11     BNE bra_E3C7
; 01
C - - - - - 0x03E3C6 0F:E3B6: A9 82     LDA #con_prg_bank + $82
C - - - - - 0x03E3C8 0F:E3B8: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03E3CB 0F:E3BB: 20 C3 A7  JSR sub_0x0067D3
C - - - - - 0x03E3CE 0F:E3BE: A5 F8     LDA ram_copy_btn_press
C - - - - - 0x03E3D0 0F:E3C0: 29 30     AND #con_btns_SS
C - - - - - 0x03E3D2 0F:E3C2: F0 02     BEQ bra_E3C6_RTS
C - - - - - 0x03E3D4 0F:E3C4: E6 19     INC ram_0019_subscript
bra_E3C6_RTS:
C - - - - - 0x03E3D6 0F:E3C6: 60        RTS
bra_E3C7:
C - - - - - 0x03E3D7 0F:E3C7: CA        DEX
C - - - - - 0x03E3D8 0F:E3C8: D0 1D     BNE bra_E3E7
; 02
C - - - - - 0x03E3DA 0F:E3CA: 20 24 E8  JSR sub_E824_clear_memory
C - - - - - 0x03E3DD 0F:E3CD: A0 00     LDY #con__chr_bank + $00
C - - - - - 0x03E3DF 0F:E3CF: 84 46     STY ram_chr_bank_5120
C - - - - - 0x03E3E1 0F:E3D1: C8        INY ; con__chr_bank + $01
C - - - - - 0x03E3E2 0F:E3D2: 84 47     STY ram_chr_bank_5121
C - - - - - 0x03E3E4 0F:E3D4: A9 41     LDA #con__chr_bank + $41
C - - - - - 0x03E3E6 0F:E3D6: 85 4A     STA ram_chr_bank_5124_5128
C - - - - - 0x03E3E8 0F:E3D8: A0 70     LDY #con__chr_bank + $70
C - - - - - 0x03E3EA 0F:E3DA: 84 4B     STY ram_chr_bank______5129
C - - - - - 0x03E3EC 0F:E3DC: C8        INY ; con__chr_bank + $71
C - - - - - 0x03E3ED 0F:E3DD: 84 4C     STY ram_chr_bank_5126_512A
C - - - - - 0x03E3EF 0F:E3DF: C8        INY ; con__chr_bank + $72
C - - - - - 0x03E3F0 0F:E3E0: 84 4D     STY ram_chr_bank_5127_512B
C - - - - - 0x03E3F2 0F:E3E2: E6 19     INC ram_0019_subscript
C - - - - - 0x03E3F4 0F:E3E4: 4C 5F F7  JMP loc_F75F_prepare_vertical_nametable_mapping
bra_E3E7:
C - - - - - 0x03E3F7 0F:E3E7: CA        DEX
C - - - - - 0x03E3F8 0F:E3E8: D0 12     BNE bra_E3FC
; 03
C - - - - - 0x03E3FA 0F:E3EA: 20 B9 EB  JSR sub_EBB9
C - - - - - 0x03E3FD 0F:E3ED: 20 8A E5  JSR sub_E58A_set_screen_timer_100
C - - - - - 0x03E400 0F:E3F0: E6 19     INC ram_0019_subscript
C - - - - - 0x03E402 0F:E3F2: 60        RTS
bra_E3F3:
C - - - - - 0x03E403 0F:E3F3: A9 00     LDA #con_0018_title_screen
C - - - - - 0x03E405 0F:E3F5: F0 02     BEQ bra_E3F9    ; jmp
bra_E3F7:
C - - - - - 0x03E407 0F:E3F7: A9 0F     LDA #con_0018_0F
bra_E3F9:
C - - - - - 0x03E409 0F:E3F9: 4C 74 E5  JMP loc_E574_prepare_script
bra_E3FC:
C - - - - - 0x03E40C 0F:E3FC: CA        DEX
C - - - - - 0x03E40D 0F:E3FD: D0 23     BNE bra_E422
; 04
C - - - - - 0x03E40F 0F:E3FF: 20 79 E5  JSR sub_E579_decrease_screen_timer
C - - - - - 0x03E412 0F:E402: F0 EF     BEQ bra_E3F3
C - - - - - 0x03E414 0F:E404: A9 80     LDA #con_prg_bank + $80
C - - - - - 0x03E416 0F:E406: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03E419 0F:E409: 20 55 8B  JSR sub_0x000B65_set_title_screen_cursor_position
C - - - - - 0x03E41C 0F:E40C: 20 5B E5  JSR sub_E55B_swap_option_via_Select
C - - - - - 0x03E41F 0F:E40F: A5 F8     LDA ram_copy_btn_press
C - - - - - 0x03E421 0F:E411: 29 10     AND #con_btn_Start
C - - - - - 0x03E423 0F:E413: F0 0C     BEQ bra_E421_RTS
C - - - - - 0x03E425 0F:E415: A5 28     LDA ram_btn_hold
C - - - - - 0x03E427 0F:E417: 29 C0     AND #con_btns_AB
C - - - - - 0x03E429 0F:E419: D0 DC     BNE bra_E3F7
; set timer before going to enetering name screen
C - - - - - 0x03E42B 0F:E41B: A9 80     LDA #$80
C - - - - - 0x03E42D 0F:E41D: 85 30     STA ram_screen_timer_lo
C - - - - - 0x03E42F 0F:E41F: E6 19     INC ram_0019_subscript
bra_E421_RTS:
ofs_000_E421_01_RTS:    ; bzk unused labe;
C - - - - - 0x03E431 0F:E421: 60        RTS
bra_E422:
; 05
C - - - - - 0x03E432 0F:E422: A4 6B     LDY ram_006B_subscript
C - - - - - 0x03E434 0F:E424: A5 30     LDA ram_screen_timer_lo
C - - - - - 0x03E436 0F:E426: 29 08     AND #$08
C - - - - - 0x03E438 0F:E428: F0 07     BEQ bra_E431_show_text
; hide text
C - - - - - 0x03E43A 0F:E42A: B9 40 E4  LDA tbl_E440_word,Y
; add 80 if text needs to dissapear at the same spot, affects 0x00186E
C - - - - - 0x03E43D 0F:E42D: 09 80     ORA #$80
C - - - - - 0x03E43F 0F:E42F: D0 03     BNE bra_E434    ; jmp
bra_E431_show_text:
C - - - - - 0x03E441 0F:E431: B9 40 E4  LDA tbl_E440_word,Y
bra_E434:
C - - - - - 0x03E444 0F:E434: 20 E9 EC  JSR sub_ECE9_write_data_to_ppu_buffer
C - - - - - 0x03E447 0F:E437: C6 30     DEC ram_screen_timer_lo
C - - - - - 0x03E449 0F:E439: D0 E6     BNE bra_E421_RTS
C - - - - - 0x03E44B 0F:E43B: A9 02     LDA #con_0018_enter_your_name
C - - - - - 0x03E44D 0F:E43D: 4C 74 E5  JMP loc_E574_prepare_script



tbl_E440_word:
- D 3 - - - 0x03E450 0F:E440: 00        .byte con_98E4_opening   ; 00 
- D 3 - - - 0x03E451 0F:E441: 26        .byte con_98E4_26_password   ; 01 



ofs_000_E442_02_enter_your_name___init:
C - - J - - 0x03E452 0F:E442: A5 6B     LDA ram_006B_subscript
C - - - - - 0x03E454 0F:E444: 48        PHA ; save opening/password option
C - - - - - 0x03E455 0F:E445: 20 24 E8  JSR sub_E824_clear_memory
C - - - - - 0x03E458 0F:E448: A9 00     LDA #$00
C - - - - - 0x03E45A 0F:E44A: 85 1E     STA ram_001E_useless_00
C - - - - - 0x03E45C 0F:E44C: 68        PLA ; restore option
C - - - - - 0x03E45D 0F:E44D: 85 6B     STA ram_006B_subscript
C - - - - - 0x03E45F 0F:E44F: A9 0A     LDA #con_0018_name_password
C - - - - - 0x03E461 0F:E451: 4C 74 E5  JMP loc_E574_prepare_script



ofs_000_E454_03:
C - - J - - 0x03E464 0F:E454: A9 00     LDA #con_002A_00
C - - - - - 0x03E466 0F:E456: 85 2A     STA ram_002A_script
C - - - - - 0x03E468 0F:E458: 20 28 E8  JSR sub_E828_clear_memory
C - - - - - 0x03E46B 0F:E45B: 20 82 E7  JSR sub_E782
C - - - - - 0x03E46E 0F:E45E: 20 8F E6  JSR sub_E68F
C - - - - - 0x03E471 0F:E461: 4C 6D E5  JMP loc_E56D_prepare_next_script



ofs_000_E464_05_death:
C - - J - - 0x03E474 0F:E464: A9 02     LDA #$02
C - - - - - 0x03E476 0F:E466: 85 1C     STA ram_disable_rendering_timer
C - - - - - 0x03E478 0F:E468: A4 19     LDY ram_0019_subscript
C - - - - - 0x03E47A 0F:E46A: D0 03     BNE bra_E46F
; 00
C - - - - - 0x03E47C 0F:E46C: E6 19     INC ram_0019_subscript
C - - - - - 0x03E47E 0F:E46E: 60        RTS
bra_E46F:
C - - - - - 0x03E47F 0F:E46F: 88        DEY
C - - - - - 0x03E480 0F:E470: D0 28     BNE bra_E49A
; 01
C - - - - - 0x03E482 0F:E472: 20 19 E8  JSR sub_E819
C - - - - - 0x03E485 0F:E475: A5 32     LDA ram_blk_hi
C - - - - - 0x03E487 0F:E477: C9 0E     CMP #$0E
C - - - - - 0x03E489 0F:E479: D0 0A     BNE bra_E485
C - - - - - 0x03E48B 0F:E47B: A5 33     LDA ram_blk_lo
C - - - - - 0x03E48D 0F:E47D: C9 02     CMP #$02
C - - - - - 0x03E48F 0F:E47F: D0 04     BNE bra_E485
C - - - - - 0x03E491 0F:E481: A9 01     LDA #$01
C - - - - - 0x03E493 0F:E483: 85 33     STA ram_blk_lo
bra_E485:
C - - - - - 0x03E495 0F:E485: 20 8F E6  JSR sub_E68F
C - - - - - 0x03E498 0F:E488: 20 FD EB  JSR sub_EBFD_clear_nametables
C - - - - - 0x03E49B 0F:E48B: A5 35     LDA ram_lives
C - - - - - 0x03E49D 0F:E48D: F0 22     BEQ bra_E4B1_no_lives
C - - - - - 0x03E49F 0F:E48F: A9 9C     LDA #con_prg_bank + $9C
C - - - - - 0x03E4A1 0F:E491: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03E4A4 0F:E494: 20 6E 89  JSR sub_0x03897E_decrease_lives
C - - - - - 0x03E4A7 0F:E497: E6 19     INC ram_0019_subscript
C - - - - - 0x03E4A9 0F:E499: 60        RTS
bra_E49A:
C - - - - - 0x03E4AA 0F:E49A: 88        DEY
C - - - - - 0x03E4AB 0F:E49B: D0 07     BNE bra_E4A4
; 02
C - - - - - 0x03E4AD 0F:E49D: A9 01     LDA #$01
C - - - - - 0x03E4AF 0F:E49F: 85 30     STA ram_screen_timer_lo
C - - - - - 0x03E4B1 0F:E4A1: E6 19     INC ram_0019_subscript
bra_E4A3_RTS:
C - - - - - 0x03E4B3 0F:E4A3: 60        RTS
bra_E4A4:
; 03
C - - - - - 0x03E4B4 0F:E4A4: C6 30     DEC ram_screen_timer_lo
C - - - - - 0x03E4B6 0F:E4A6: D0 FB     BNE bra_E4A3_RTS
loc_E4A8:
C D 3 - - - 0x03E4B8 0F:E4A8: A9 00     LDA #con_002A_00
C - - - - - 0x03E4BA 0F:E4AA: 85 2A     STA ram_002A_script
C - - - - - 0x03E4BC 0F:E4AC: A9 04     LDA #con_0018_gameplay
C - - - - - 0x03E4BE 0F:E4AE: 85 18     STA ram_main_script
C - - - - - 0x03E4C0 0F:E4B0: 60        RTS
bra_E4B1_no_lives:
C - - - - - 0x03E4C1 0F:E4B1: A9 06     LDA #con_0018_game_over
C - - - - - 0x03E4C3 0F:E4B3: 4C 74 E5  JMP loc_E574_prepare_script



ofs_000_E4B6_06_game_over:
C - - J - - 0x03E4C6 0F:E4B6: A4 19     LDY ram_0019_subscript
C - - - - - 0x03E4C8 0F:E4B8: D0 36     BNE bra_E4F0
; 00
C - - - - - 0x03E4CA 0F:E4BA: A9 65     LDA #con_music_game_over
C - - - - - 0x03E4CC 0F:E4BC: 20 5F E2  JSR sub_E25F_play_sound
C - - - - - 0x03E4CF 0F:E4BF: A9 80     LDA #con_prg_bank + $80
C - - - - - 0x03E4D1 0F:E4C1: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03E4D4 0F:E4C4: 20 B0 8F  JSR sub_0x000FC0
C - - - - - 0x03E4D7 0F:E4C7: A0 00     LDY #con__chr_bank + $00
C - - - - - 0x03E4D9 0F:E4C9: 84 46     STY ram_chr_bank_5120
C - - - - - 0x03E4DB 0F:E4CB: C8        INY ; con__chr_bank + $01
C - - - - - 0x03E4DC 0F:E4CC: 84 47     STY ram_chr_bank_5121
C - - - - - 0x03E4DE 0F:E4CE: A9 40     LDA #con__chr_bank + $40
C - - - - - 0x03E4E0 0F:E4D0: 85 4A     STA ram_chr_bank_5124_5128
C - - - - - 0x03E4E2 0F:E4D2: A9 41     LDA #con__chr_bank + $41
C - - - - - 0x03E4E4 0F:E4D4: 85 4B     STA ram_chr_bank______5129
C - - - - - 0x03E4E6 0F:E4D6: A9 43     LDA #con__chr_bank + $43
C - - - - - 0x03E4E8 0F:E4D8: 85 4D     STA ram_chr_bank_5127_512B
C - - - - - 0x03E4EA 0F:E4DA: A9 03     LDA #con_98E4_game_over
C - - - - - 0x03E4EC 0F:E4DC: 20 E9 EC  JSR sub_ECE9_write_data_to_ppu_buffer
C - - - - - 0x03E4EF 0F:E4DF: A9 27     LDA #con_98E4_continue
C - - - - - 0x03E4F1 0F:E4E1: 20 E9 EC  JSR sub_ECE9_write_data_to_ppu_buffer
C - - - - - 0x03E4F4 0F:E4E4: A9 28     LDA #con_98E4_28_password
C - - - - - 0x03E4F6 0F:E4E6: 20 E9 EC  JSR sub_ECE9_write_data_to_ppu_buffer
C - - - - - 0x03E4F9 0F:E4E9: A9 00     LDA #$00
C - - - - - 0x03E4FB 0F:E4EB: 85 6B     STA ram_006B_subscript
C - - - - - 0x03E4FD 0F:E4ED: E6 19     INC ram_0019_subscript
bra_E4EF_RTS:
C - - - - - 0x03E4FF 0F:E4EF: 60        RTS
bra_E4F0:
; 01
C - - - - - 0x03E500 0F:E4F0: A9 80     LDA #con_prg_bank + $80
C - - - - - 0x03E502 0F:E4F2: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03E505 0F:E4F5: 20 29 8B  JSR sub_0x000B39_set_game_over_cursor_position
C - - - - - 0x03E508 0F:E4F8: 20 5B E5  JSR sub_E55B_swap_option_via_Select
C - - - - - 0x03E50B 0F:E4FB: A5 F8     LDA ram_copy_btn_press
C - - - - - 0x03E50D 0F:E4FD: 29 10     AND #con_btn_Start
C - - - - - 0x03E50F 0F:E4FF: F0 EE     BEQ bra_E4EF_RTS
C - - - - - 0x03E511 0F:E501: A5 6B     LDA ram_006B_subscript
C - - - - - 0x03E513 0F:E503: F0 05     BEQ bra_E50A
C - - - - - 0x03E515 0F:E505: A9 0B     LDA #con_0018_0B
C - - - - - 0x03E517 0F:E507: 4C 74 E5  JMP loc_E574_prepare_script
bra_E50A:
ofs_000_E50A_0E:
C - - - - - 0x03E51A 0F:E50A: 20 19 E8  JSR sub_E819
C - - - - - 0x03E51D 0F:E50D: A9 80     LDA #con_prg_bank + $80
C - - - - - 0x03E51F 0F:E50F: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03E522 0F:E512: 20 80 8F  JSR sub_0x000F90
C - - - - - 0x03E525 0F:E515: 20 8F E6  JSR sub_E68F
C - - - - - 0x03E528 0F:E518: 4C A8 E4  JMP loc_E4A8



ofs_000_E51B_08:
C - - J - - 0x03E52B 0F:E51B: A9 80     LDA #con_prg_bank + $80
C - - - - - 0x03E52D 0F:E51D: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03E530 0F:E520: 4C B7 A5  JMP loc_0x0025C7



ofs_000_E523_09_praying:
C - - J - - 0x03E533 0F:E523: A9 82     LDA #con_prg_bank + $82
C - - - - - 0x03E535 0F:E525: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03E538 0F:E528: 4C 0C A6  JMP loc_0x00661C_prayer_handler



ofs_000_E52B_0C:
C - - J - - 0x03E53B 0F:E52B: A9 94     LDA #con_prg_bank + $94
C - - - - - 0x03E53D 0F:E52D: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03E540 0F:E530: 4C EA B0  JMP loc_0x02B0FA



ofs_000_E533_0D:
C - - J - - 0x03E543 0F:E533: A9 94     LDA #con_prg_bank + $94
C - - - - - 0x03E545 0F:E535: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03E548 0F:E538: 4C 31 B6  JMP loc_0x02B641



ofs_000_E53B_0F:
C - - J - - 0x03E54B 0F:E53B: A9 98     LDA #con_prg_bank + $98
C - - - - - 0x03E54D 0F:E53D: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03E550 0F:E540: 4C 90 A1  JMP loc_0x0321A0



ofs_000_E543_07_debug_menu_handler:
C - - J - - 0x03E553 0F:E543: A9 80     LDA #con_prg_bank + $80
C - - - - - 0x03E555 0F:E545: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03E558 0F:E548: 4C 1C 8A  JMP loc_0x000A2C_debug_menu_handler



ofs_000_E54B_0A_enter_your_name___main:
C - - J - - 0x03E55B 0F:E54B: A9 82     LDA #con_prg_bank + $82
C - - - - - 0x03E55D 0F:E54D: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03E560 0F:E550: 4C 65 AF  JMP loc_0x006F75_enter_your_name_handler



ofs_000_E553_0B:
C - - J - - 0x03E563 0F:E553: A9 82     LDA #con_prg_bank + $82
C - - - - - 0x03E565 0F:E555: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03E568 0F:E558: 4C A2 B5  JMP loc_0x0075B2



sub_E55B_swap_option_via_Select:
C - - - - - 0x03E56B 0F:E55B: A5 F8     LDA ram_copy_btn_press
C - - - - - 0x03E56D 0F:E55D: 29 20     AND #con_btn_Select
C - - - - - 0x03E56F 0F:E55F: F0 0B     BEQ bra_E56C_RTS
C - - - - - 0x03E571 0F:E561: A9 72     LDA #con_dmc_whip
C - - - - - 0x03E573 0F:E563: 20 5F E2  JSR sub_E25F_play_sound
C - - - - - 0x03E576 0F:E566: A5 6B     LDA ram_006B_subscript
C - - - - - 0x03E578 0F:E568: 49 01     EOR #$01
C - - - - - 0x03E57A 0F:E56A: 85 6B     STA ram_006B_subscript
bra_E56C_RTS:
C - - - - - 0x03E57C 0F:E56C: 60        RTS



loc_E56D_prepare_next_script:
; bzk optimize, single JMP to here
; -> con_0018_gameplay
C D 3 - - - 0x03E57D 0F:E56D: E6 18     INC ram_main_script
loc_E56F:
C D 3 - - - 0x03E57F 0F:E56F: A9 00     LDA #$00
C - - - - - 0x03E581 0F:E571: 85 19     STA ram_0019_subscript
C - - - - - 0x03E583 0F:E573: 60        RTS



loc_E574_prepare_script:
loc_0x03E584_prepare_script:
C D 3 - - - 0x03E584 0F:E574: 85 18     STA ram_main_script
C - - - - - 0x03E586 0F:E576: 4C 6F E5  JMP loc_E56F



sub_E579_decrease_screen_timer:
sub_0x03E589_decrease_screen_timer:
; out
    ; Z
        ; 0 = 
        ; 1 = 
C - - - - - 0x03E589 0F:E579: A5 30     LDA ram_screen_timer_lo
C - - - - - 0x03E58B 0F:E57B: 05 31     ORA ram_screen_timer_hi
C - - - - - 0x03E58D 0F:E57D: F0 0A     BEQ bra_E589_RTS
C - - - - - 0x03E58F 0F:E57F: A5 30     LDA ram_screen_timer_lo
C - - - - - 0x03E591 0F:E581: D0 02     BNE bra_E585
C - - - - - 0x03E593 0F:E583: C6 31     DEC ram_screen_timer_hi
bra_E585:
C - - - - - 0x03E595 0F:E585: C6 30     DEC ram_screen_timer_lo
C - - - - - 0x03E597 0F:E587: A9 01     LDA #$01
bra_E589_RTS:   ; A = 00
C - - - - - 0x03E599 0F:E589: 60        RTS



sub_E58A_set_screen_timer_100:
C - - - - - 0x03E59A 0F:E58A: A9 00     LDA #< $0100
C - - - - - 0x03E59C 0F:E58C: A0 01     LDY #> $0100
sub_0x03E59E_set_screen_timer:
loc_0x03E59E_set_screen_timer:
C D 3 - - - 0x03E59E 0F:E58E: 85 30     STA ram_screen_timer_lo
C - - - - - 0x03E5A0 0F:E590: 84 31     STY ram_screen_timer_hi
C - - - - - 0x03E5A2 0F:E592: 60        RTS



sub_0x03E5A3_check_for_special_name:
C - - - - - 0x03E5A3 0F:E593: A9 80     LDA #con_prg_bank + $80
C - - - - - 0x03E5A5 0F:E595: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03E5A8 0F:E598: 20 05 90  JSR sub_0x001015_check_for_special_name
C - - - - - 0x03E5AB 0F:E59B: A9 82     LDA #con_prg_bank + $82
C - - - - - 0x03E5AD 0F:E59D: 4C E6 E2  JMP loc_E2E6_prg_bankswitch



loc_0x03E5B0_bg_and_spr_palette:
C D 3 - - - 0x03E5B0 0F:E5A0: 48        PHA
C - - - - - 0x03E5B1 0F:E5A1: A9 8A     LDA #con_prg_bank + $8A
C - - - - - 0x03E5B3 0F:E5A3: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03E5B6 0F:E5A6: 68        PLA
C - - - - - 0x03E5B7 0F:E5A7: 20 B6 BE  JSR sub_0x017EC6_bg_and_spr_palette
C - - - - - 0x03E5BA 0F:E5AA: A9 92     LDA #con_prg_bank + $92
C - - - - - 0x03E5BC 0F:E5AC: 4C E6 E2  JMP loc_E2E6_prg_bankswitch



sub_0x03E5BF:
C - - - - - 0x03E5BF 0F:E5AF: AD 00 80  LDA $8000   ; reading bank id
C - - - - - 0x03E5C2 0F:E5B2: 48        PHA
C - - - - - 0x03E5C3 0F:E5B3: A9 9C     LDA #con_prg_bank + $9C
C - - - - - 0x03E5C5 0F:E5B5: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03E5C8 0F:E5B8: 20 58 8C  JSR sub_0x038C68
C - - - - - 0x03E5CB 0F:E5BB: 68        PLA
C - - - - - 0x03E5CC 0F:E5BC: 4C E6 E2  JMP loc_E2E6_prg_bankswitch



sub_E5BF:
loc_E5BF:
sub_0x03E5CF:
loc_0x03E5CF:
C D 3 - - - 0x03E5CF 0F:E5BF: 84 42     STY ram_0042
sub_E5C1:
sub_0x03E5D1:
C - - - - - 0x03E5D1 0F:E5C1: 85 3F     STA ram_003F_copy_irq_handler
C - - - - - 0x03E5D3 0F:E5C3: 86 41     STX ram_0041_scanline
C - - - - - 0x03E5D5 0F:E5C5: A9 80     LDA #$80
C - - - - - 0x03E5D7 0F:E5C7: 85 40     STA ram_for_5204
C - - - - - 0x03E5D9 0F:E5C9: 60        RTS



sub_E5CA:
sub_0x03E5DA:
loc_0x03E5DA:
C D 3 - - - 0x03E5DA 0F:E5CA: A9 00     LDA #$00
C - - - - - 0x03E5DC 0F:E5CC: F0 02     BEQ bra_E5D0    ; jmp



sub_E5CE:
sub_0x03E5DE:
C - - - - - 0x03E5DE 0F:E5CE: A9 01     LDA #$01
bra_E5D0:
C - - - - - 0x03E5E0 0F:E5D0: 85 2C     STA ram_002C_flag
C - - - - - 0x03E5E2 0F:E5D2: 60        RTS



sub_E5D3:
sub_0x03E5E3:
C - - - - - 0x03E5E3 0F:E5D3: AD 00 80  LDA $8000   ; reading bank id
C - - - - - 0x03E5E6 0F:E5D6: 48        PHA
C - - - - - 0x03E5E7 0F:E5D7: A9 80     LDA #con_prg_bank + $80
C - - - - - 0x03E5E9 0F:E5D9: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03E5EC 0F:E5DC: 20 2C 85  JSR sub_0x00053C_update_background_and_sprite_palette
C - - - - - 0x03E5EF 0F:E5DF: 20 01 80  JSR sub_0x000011
C - - - - - 0x03E5F2 0F:E5E2: 20 13 80  JSR sub_0x000023
C - - - - - 0x03E5F5 0F:E5E5: 20 EE 83  JSR sub_0x0003FE
C - - - - - 0x03E5F8 0F:E5E8: 68        PLA
C - - - - - 0x03E5F9 0F:E5E9: 4C E6 E2  JMP loc_E2E6_prg_bankswitch



sub_E5EC:
C - - - - - 0x03E5FC 0F:E5EC: A9 94     LDA #con_prg_bank + $94
C - - - - - 0x03E5FE 0F:E5EE: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03E601 0F:E5F1: 20 47 80  JSR sub_0x028057
C - - - - - 0x03E604 0F:E5F4: A9 96     LDA #con_prg_bank + $96
C - - - - - 0x03E606 0F:E5F6: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03E609 0F:E5F9: 20 E3 FD  JSR sub_FDE3
C - - - - - 0x03E60C 0F:E5FC: A9 84     LDA #con_prg_bank + $84
C - - - - - 0x03E60E 0F:E5FE: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03E611 0F:E601: 4C 30 9D  JMP loc_0x009D40



sub_0x03E614:
C - - - - - 0x03E614 0F:E604: A9 90     LDA #con_prg_bank + $90
C - - - - - 0x03E616 0F:E606: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03E619 0F:E609: 20 21 BE  JSR sub_0x023E31
C - - - - - 0x03E61C 0F:E60C: A9 92     LDA #con_prg_bank + $92
C - - - - - 0x03E61E 0F:E60E: 4C E6 E2  JMP loc_E2E6_prg_bankswitch



sub_0x03E621:
C - - - - - 0x03E621 0F:E611: A9 88     LDA #con_prg_bank + $88
C - - - - - 0x03E623 0F:E613: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03E626 0F:E616: 20 AC B9  JSR sub_0x0139BC
C - - - - - 0x03E629 0F:E619: A9 96     LDA #con_prg_bank + $96
C - - - - - 0x03E62B 0F:E61B: 4C E6 E2  JMP loc_E2E6_prg_bankswitch



sub_0x03E62E:
loc_0x03E62E:
C D 3 - - - 0x03E62E 0F:E61E: AD 00 80  LDA $8000   ; reading bank id
C - - - - - 0x03E631 0F:E621: 48        PHA
C - - - - - 0x03E632 0F:E622: A9 94     LDA #con_prg_bank + $94
C - - - - - 0x03E634 0F:E624: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03E637 0F:E627: 20 7D 8F  JSR sub_0x028F8D
C - - - - - 0x03E63A 0F:E62A: 4C 3D E6  JMP loc_E63D_restore_prg_bank



loc_0x03E63D_indirect_jump_bank_92:
C D 3 - - - 0x03E63D 0F:E62D: A9 92     LDA #con_prg_bank + $92
sub_0x03E63F_indirect_jump_custom_bank:
loc_0x03E63F_indirect_jump_custom_bank:
C D 3 - - - 0x03E63F 0F:E62F: 85 0E     STA ram_000E_t008_prg_bank_id
C - - - - - 0x03E641 0F:E631: AD 00 80  LDA $8000   ; reading bank id
C - - - - - 0x03E644 0F:E634: 48        PHA
C - - - - - 0x03E645 0F:E635: A5 0E     LDA ram_000E_t008_prg_bank_id
C - - - - - 0x03E647 0F:E637: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03E64A 0F:E63A: 20 53 E6  JSR sub_E653_indirect_jump
loc_E63D_restore_prg_bank:
C D 3 - - - 0x03E64D 0F:E63D: 68        PLA
C - - - - - 0x03E64E 0F:E63E: 4C E6 E2  JMP loc_E2E6_prg_bankswitch



loc_0x03E651_indirect_jump_bank_92:
; comparing to 0x03E641, this routine uses 000E to save A as an argument
C D 3 - - - 0x03E651 0F:E641: AD 00 80  LDA $8000   ; reading bank id
C - - - - - 0x03E654 0F:E644: 48        PHA
C - - - - - 0x03E655 0F:E645: A9 92     LDA #con_prg_bank + $92
C - - - - - 0x03E657 0F:E647: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03E65A 0F:E64A: A5 0E     LDA ram_000E_t005_subroutine_argument_A
C - - - - - 0x03E65C 0F:E64C: 20 53 E6  JSR sub_E653_indirect_jump
C - - - - - 0x03E65F 0F:E64F: 68        PLA
C - - - - - 0x03E660 0F:E650: 4C E6 E2  JMP loc_E2E6_prg_bankswitch



sub_E653_indirect_jump:
C - - - - - 0x03E663 0F:E653: 6C 00 00  JMP (ram_0000_t025_jmp)



sub_0x03E666_display_time:
C - - - - - 0x03E666 0F:E656: AD 00 80  LDA $8000   ; reading bank id
C - - - - - 0x03E669 0F:E659: 48        PHA
C - - - - - 0x03E66A 0F:E65A: A9 9C     LDA #con_prg_bank + $9C
C - - - - - 0x03E66C 0F:E65C: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03E66F 0F:E65F: 20 A3 89  JSR sub_0x0389B3_display_time
C - - - - - 0x03E672 0F:E662: 68        PLA
C - - - - - 0x03E673 0F:E663: 4C E6 E2  JMP loc_E2E6_prg_bankswitch



sub_0x03E676:
C - - - - - 0x03E676 0F:E666: A9 44     LDA #$44    ; vertical nametable mapping
C - - - - - 0x03E678 0F:E668: 85 25     STA ram_for_5105
C - - - - - 0x03E67A 0F:E66A: A9 00     LDA #$00
C - - - - - 0x03E67C 0F:E66C: 85 6D     STA ram_006D_irq_handler    ; con_irq_00
C - - - - - 0x03E67E 0F:E66E: 85 40     STA ram_for_5204
C - - - - - 0x03E680 0F:E670: 85 72     STA ram_0072_chr_banks_config
C - - - - - 0x03E682 0F:E672: A9 80     LDA #con_irq_80
C - - - - - 0x03E684 0F:E674: 85 3F     STA ram_003F_copy_irq_handler
C - - - - - 0x03E686 0F:E676: 60        RTS



sub_0x03E687:
C - - - - - 0x03E687 0F:E677: A9 88     LDA #con_prg_bank + $88
C - - - - - 0x03E689 0F:E679: 20 E0 E2  JSR sub_E2E0_prg_bankswitch
C - - - - - 0x03E68C 0F:E67C: 20 FB B1  JSR sub_0x01320B



loc_E67F_restore_prg_bank:
C D 3 - - - 0x03E68F 0F:E67F: A5 22     LDA ram_0022_prg_bank
C - - - - - 0x03E691 0F:E681: 4C E6 E2  JMP loc_E2E6_prg_bankswitch



sub_0x03E694:
C - - - - - 0x03E694 0F:E684: A9 88     LDA #con_prg_bank + $88
C - - - - - 0x03E696 0F:E686: 20 E0 E2  JSR sub_E2E0_prg_bankswitch
C - - - - - 0x03E699 0F:E689: 20 48 B3  JSR sub_0x013358
C - - - - - 0x03E69C 0F:E68C: 4C 7F E6  JMP loc_E67F_restore_prg_bank



sub_E68F:
loc_E68F:
sub_0x03E69F:
C D 3 - - - 0x03E69F 0F:E68F: A9 88     LDA #con_prg_bank + $88
C - - - - - 0x03E6A1 0F:E691: 20 E0 E2  JSR sub_E2E0_prg_bankswitch
C - - - - - 0x03E6A4 0F:E694: 20 54 B3  JSR sub_0x013364
C - - - - - 0x03E6A7 0F:E697: 4C 7F E6  JMP loc_E67F_restore_prg_bank



sub_0x03E6AA:
C - - - - - 0x03E6AA 0F:E69A: A9 8E     LDA #con_prg_bank + $8E
C - - - - - 0x03E6AC 0F:E69C: 20 E0 E2  JSR sub_E2E0_prg_bankswitch
C - - - - - 0x03E6AF 0F:E69F: 20 AE B4  JSR sub_0x01F4BE
C - - - - - 0x03E6B2 0F:E6A2: 4C 7F E6  JMP loc_E67F_restore_prg_bank



loc_0x03E6B5:
C D 3 - - - 0x03E6B5 0F:E6A5: AD 00 80  LDA $8000   ; reading bank id
C - - - - - 0x03E6B8 0F:E6A8: 48        PHA
C - - - - - 0x03E6B9 0F:E6A9: A9 88     LDA #con_prg_bank + $88
C - - - - - 0x03E6BB 0F:E6AB: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03E6BE 0F:E6AE: 20 96 BA  JSR sub_0x013AA6
C - - - - - 0x03E6C1 0F:E6B1: 68        PLA
C - - - - - 0x03E6C2 0F:E6B2: 4C E6 E2  JMP loc_E2E6_prg_bankswitch



sub_0x03E6C5:
C - - - - - 0x03E6C5 0F:E6B5: AD 00 80  LDA $8000   ; reading bank id
C - - - - - 0x03E6C8 0F:E6B8: 48        PHA
C - - - - - 0x03E6C9 0F:E6B9: A9 92     LDA #con_prg_bank + $92
C - - - - - 0x03E6CB 0F:E6BB: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03E6CE 0F:E6BE: 20 98 AB  JSR sub_0x026BA8
C - - - - - 0x03E6D1 0F:E6C1: 68        PLA
C - - - - - 0x03E6D2 0F:E6C2: 4C E6 E2  JMP loc_E2E6_prg_bankswitch



sub_E6C5:
sub_0x03E6D5:
C - - - - - 0x03E6D5 0F:E6C5: A5 21     LDA ram_prg_bank
C - - - - - 0x03E6D7 0F:E6C7: 48        PHA
C - - - - - 0x03E6D8 0F:E6C8: A9 9C     LDA #con_prg_bank + $9C
C - - - - - 0x03E6DA 0F:E6CA: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03E6DD 0F:E6CD: 20 21 8A  JSR sub_0x038A31
C - - - - - 0x03E6E0 0F:E6D0: 68        PLA
C - - - - - 0x03E6E1 0F:E6D1: 4C E6 E2  JMP loc_E2E6_prg_bankswitch



sub_0x03E6E4_check_stairs_if_pressed_down:
; out
    ; ram_000D_t003_where_are_stairs
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x03E6E4 0F:E6D4: A9 8E     LDA #con_prg_bank + $8E
C - - - - - 0x03E6E6 0F:E6D6: 20 E0 E2  JSR sub_E2E0_prg_bankswitch
C - - - - - 0x03E6E9 0F:E6D9: 20 F2 B5  JSR sub_0x01F602_check_stairs_if_pressed_down
C - - - - - 0x03E6EC 0F:E6DC: 4C 7F E6  JMP loc_E67F_restore_prg_bank



sub_0x03E6EF_check_stairs_if_pressed_up:
; out
    ; ram_000D_t003_where_are_stairs
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x03E6EF 0F:E6DF: A9 8E     LDA #con_prg_bank + $8E
C - - - - - 0x03E6F1 0F:E6E1: 20 E0 E2  JSR sub_E2E0_prg_bankswitch
C - - - - - 0x03E6F4 0F:E6E4: 20 F6 B5  JSR sub_0x01F606_check_stairs_if_pressed_up
C - - - - - 0x03E6F7 0F:E6E7: 4C 7F E6  JMP loc_E67F_restore_prg_bank



loc_0x03E6FA:
C D 3 - - - 0x03E6FA 0F:E6EA: A9 9C     LDA #con_prg_bank + $9C
C - - - - - 0x03E6FC 0F:E6EC: 20 E0 E2  JSR sub_E2E0_prg_bankswitch
C - - - - - 0x03E6FF 0F:E6EF: 20 B0 9A  JSR sub_0x039AC0
C - - - - - 0x03E702 0F:E6F2: 4C 7F E6  JMP loc_E67F_restore_prg_bank



sub_0x03E705:
C - - - - - 0x03E705 0F:E6F5: A9 9C     LDA #con_prg_bank + $9C
C - - - - - 0x03E707 0F:E6F7: 20 E0 E2  JSR sub_E2E0_prg_bankswitch
C - - - - - 0x03E70A 0F:E6FA: 20 8E 9B  JSR sub_0x039B9E
C - - - - - 0x03E70D 0F:E6FD: 4C 7F E6  JMP loc_E67F_restore_prg_bank



sub_0x03E710:
C - - - - - 0x03E710 0F:E700: A9 9C     LDA #con_prg_bank + $9C
C - - - - - 0x03E712 0F:E702: 20 E0 E2  JSR sub_E2E0_prg_bankswitch
C - - - - - 0x03E715 0F:E705: 20 9A 9B  JSR sub_0x039BAA
C - - - - - 0x03E718 0F:E708: 4C 7F E6  JMP loc_E67F_restore_prg_bank



sub_0x03E71B:
C - - - - - 0x03E71B 0F:E70B: A9 9C     LDA #con_prg_bank + $9C
C - - - - - 0x03E71D 0F:E70D: 20 E0 E2  JSR sub_E2E0_prg_bankswitch
C - - - - - 0x03E720 0F:E710: 20 AF 9B  JSR sub_0x039BBF
C - - - - - 0x03E723 0F:E713: 4C 7F E6  JMP loc_E67F_restore_prg_bank



sub_0x03E726_write_partner_sprite_palette:
C - - - - - 0x03E726 0F:E716: A5 21     LDA ram_prg_bank
C - - - - - 0x03E728 0F:E718: 48        PHA
C - - - - - 0x03E729 0F:E719: A9 80     LDA #con_prg_bank + $80
C - - - - - 0x03E72B 0F:E71B: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03E72E 0F:E71E: 20 BB 85  JSR sub_0x0005CB_write_partner_sprite_palette
C - - - - - 0x03E731 0F:E721: 68        PLA
C - - - - - 0x03E732 0F:E722: 4C E6 E2  JMP loc_E2E6_prg_bankswitch


; bzk garbage
- - - - - - 0x03E735 0F:E725: A9 80     LDA #con_prg_bank + $80
- - - - - - 0x03E737 0F:E727: 20 E0 E2  JSR sub_E2E0_prg_bankswitch
- - - - - - 0x03E73A 0F:E72A: 20 74 85  JSR sub_0x000584
- - - - - - 0x03E73D 0F:E72D: 4C 7F E6  JMP loc_E67F_restore_prg_bank



sub_0x03E740:
C - - - - - 0x03E740 0F:E730: A9 80     LDA #con_prg_bank + $80
C - - - - - 0x03E742 0F:E732: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03E745 0F:E735: 20 9E 85  JSR sub_0x0005AE_update_3_colors_for_sprites
C - - - - - 0x03E748 0F:E738: A9 94     LDA #con_prg_bank + $94
C - - - - - 0x03E74A 0F:E73A: 4C E6 E2  JMP loc_E2E6_prg_bankswitch



sub_0x03E74D:
C - - - - - 0x03E74D 0F:E73D: A9 80     LDA #con_prg_bank + $80
C - - - - - 0x03E74F 0F:E73F: 20 E0 E2  JSR sub_E2E0_prg_bankswitch
C - - - - - 0x03E752 0F:E742: 20 01 80  JSR sub_0x000011
C - - - - - 0x03E755 0F:E745: 4C 7F E6  JMP loc_E67F_restore_prg_bank



sub_0x03E758_add_1_life:
C - - - - - 0x03E758 0F:E748: A9 80     LDA #con_prg_bank + $80
C - - - - - 0x03E75A 0F:E74A: 20 E0 E2  JSR sub_E2E0_prg_bankswitch
C - - - - - 0x03E75D 0F:E74D: 20 1A 8C  JSR sub_0x000C2A_add_1_life
C - - - - - 0x03E760 0F:E750: 4C 7F E6  JMP loc_E67F_restore_prg_bank



sub_0x03E763_decrease_hearts:
loc_0x03E763_decrease_hearts:
C D 3 - - - 0x03E763 0F:E753: 48        PHA
C - - - - - 0x03E764 0F:E754: A9 80     LDA #con_prg_bank + $80
C - - - - - 0x03E766 0F:E756: 20 E0 E2  JSR sub_E2E0_prg_bankswitch
C - - - - - 0x03E769 0F:E759: 68        PLA
C - - - - - 0x03E76A 0F:E75A: 20 2F 8C  JSR sub_0x000C3F_decrease_hearts
C - - - - - 0x03E76D 0F:E75D: 4C 7F E6  JMP loc_E67F_restore_prg_bank



sub_0x03E770_add_hearts:
C - - - - - 0x03E770 0F:E760: AA        TAX
C - - - - - 0x03E771 0F:E761: A9 80     LDA #con_prg_bank + $80
C - - - - - 0x03E773 0F:E763: 20 E0 E2  JSR sub_E2E0_prg_bankswitch
C - - - - - 0x03E776 0F:E766: 20 59 8C  JSR sub_0x000C69_add_hearts
C - - - - - 0x03E779 0F:E769: 4C 7F E6  JMP loc_E67F_restore_prg_bank



loc_0x03E77C:
C D 3 - - - 0x03E77C 0F:E76C: A9 80     LDA #con_prg_bank + $80
C - - - - - 0x03E77E 0F:E76E: 20 E0 E2  JSR sub_E2E0_prg_bankswitch
C - - - - - 0x03E781 0F:E771: 20 61 8E  JSR sub_0x000E71_display_subweapon
C - - - - - 0x03E784 0F:E774: 4C 7F E6  JMP loc_E67F_restore_prg_bank



sub_0x03E787_add_points:
C - - - - - 0x03E787 0F:E777: A9 80     LDA #con_prg_bank + $80
C - - - - - 0x03E789 0F:E779: 20 E0 E2  JSR sub_E2E0_prg_bankswitch
C - - - - - 0x03E78C 0F:E77C: 20 E3 8B  JSR sub_0x000BF3_add_points
C - - - - - 0x03E78F 0F:E77F: 4C 7F E6  JMP loc_E67F_restore_prg_bank



sub_E782:
C - - - - - 0x03E792 0F:E782: A9 80     LDA #con_prg_bank + $80
C - - - - - 0x03E794 0F:E784: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03E797 0F:E787: 4C 7F 90  JMP loc_0x00108F



sub_0x03E79A:
C - - - - - 0x03E79A 0F:E78A: A9 80     LDA #con_prg_bank + $80
C - - - - - 0x03E79C 0F:E78C: 20 E0 E2  JSR sub_E2E0_prg_bankswitch
C - - - - - 0x03E79F 0F:E78F: 20 E2 90  JSR sub_0x0010F2
C - - - - - 0x03E7A2 0F:E792: 4C 7F E6  JMP loc_E67F_restore_prg_bank



sub_E795:
sub_0x03E7A5:
loc_0x03E7A5:
C D 3 - - - 0x03E7A5 0F:E795: A9 80     LDA #con_prg_bank + $80
C - - - - - 0x03E7A7 0F:E797: 20 E0 E2  JSR sub_E2E0_prg_bankswitch
C - - - - - 0x03E7AA 0F:E79A: 20 07 91  JSR sub_0x001117
C - - - - - 0x03E7AD 0F:E79D: 4C 7F E6  JMP loc_E67F_restore_prg_bank



sub_E7A0:
C - - - - - 0x03E7B0 0F:E7A0: A9 80     LDA #con_prg_bank + $80
C - - - - - 0x03E7B2 0F:E7A2: 20 E0 E2  JSR sub_E2E0_prg_bankswitch
C - - - - - 0x03E7B5 0F:E7A5: 20 17 91  JSR sub_0x001127
C - - - - - 0x03E7B8 0F:E7A8: 4C 7F E6  JMP loc_E67F_restore_prg_bank



sub_0x03E7BB:
C - - - - - 0x03E7BB 0F:E7AB: A9 88     LDA #con_prg_bank + $88
C - - - - - 0x03E7BD 0F:E7AD: 20 E0 E2  JSR sub_E2E0_prg_bankswitch
C - - - - - 0x03E7C0 0F:E7B0: 20 B7 B5  JSR sub_0x0135C7
C - - - - - 0x03E7C3 0F:E7B3: 4C 7F E6  JMP loc_E67F_restore_prg_bank



sub_0x03E7C6:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x03E7C6 0F:E7B6: A9 88     LDA #con_prg_bank + $88
C - - - - - 0x03E7C8 0F:E7B8: 20 E0 E2  JSR sub_E2E0_prg_bankswitch
C - - - - - 0x03E7CB 0F:E7BB: 20 0C B6  JSR sub_0x01361C
C - - - - - 0x03E7CE 0F:E7BE: 4C 7F E6  JMP loc_E67F_restore_prg_bank



sub_0x03E7D1:
C - - - - - 0x03E7D1 0F:E7C1: A9 88     LDA #con_prg_bank + $88
C - - - - - 0x03E7D3 0F:E7C3: 20 E0 E2  JSR sub_E2E0_prg_bankswitch
C - - - - - 0x03E7D6 0F:E7C6: 20 8E B6  JSR sub_0x01369E
C - - - - - 0x03E7D9 0F:E7C9: 4C 7F E6  JMP loc_E67F_restore_prg_bank



sub_0x03E7DC:
C - - - - - 0x03E7DC 0F:E7CC: AD 00 80  LDA $8000   ; reading bank id
C - - - - - 0x03E7DF 0F:E7CF: 48        PHA
C - - - - - 0x03E7E0 0F:E7D0: A9 88     LDA #con_prg_bank + $88
C - - - - - 0x03E7E2 0F:E7D2: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03E7E5 0F:E7D5: 20 11 B7  JSR sub_0x013721
C - - - - - 0x03E7E8 0F:E7D8: 68        PLA
C - - - - - 0x03E7E9 0F:E7D9: 4C E6 E2  JMP loc_E2E6_prg_bankswitch



sub_0x03E7EC:
C - - - - - 0x03E7EC 0F:E7DC: AD 00 80  LDA $8000   ; reading bank id
C - - - - - 0x03E7EF 0F:E7DF: 48        PHA
C - - - - - 0x03E7F0 0F:E7E0: A9 8C     LDA #con_prg_bank + $8C
C - - - - - 0x03E7F2 0F:E7E2: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03E7F5 0F:E7E5: 20 21 BE  JSR sub_0x01BE31
C - - - - - 0x03E7F8 0F:E7E8: 68        PLA
C - - - - - 0x03E7F9 0F:E7E9: 4C E6 E2  JMP loc_E2E6_prg_bankswitch



sub_0x03E7FC:
loc_0x03E7FC:
C D 3 - - - 0x03E7FC 0F:E7EC: A9 96     LDA #con_prg_bank + $96
C - - - - - 0x03E7FE 0F:E7EE: 20 E0 E2  JSR sub_E2E0_prg_bankswitch
C - - - - - 0x03E801 0F:E7F1: 20 C9 9F  JSR sub_0x02DFD9
C - - - - - 0x03E804 0F:E7F4: 4C 7F E6  JMP loc_E67F_restore_prg_bank



sub_E7F7_clear_all_objects_data:
sub_0x03E807_clear_all_objects_data:
C - - - - - 0x03E807 0F:E7F7: A2 01     LDX #$01
C - - - - - 0x03E809 0F:E7F9: A9 00     LDA #$00
bra_E7FB_loop:
C - - - - - 0x03E80B 0F:E7FB: 9D 00 04  STA ram_obj_anim_id,X
C - - - - - 0x03E80E 0F:E7FE: 9D 1C 04  STA ram_obj_pos_Y_hi,X
C - - - - - 0x03E811 0F:E801: 9D 38 04  STA ram_obj_pos_X_hi,X
C - - - - - 0x03E814 0F:E804: 9D 54 04  STA ram_0454_obj,X
C - - - - - 0x03E817 0F:E807: 9D 70 04  STA ram_obj_flags,X ; con_obj_flag_00
C - - - - - 0x03E81A 0F:E80A: 9D 8C 04  STA ram_obj_type,X  ; con_obj_type_00
C - - - - - 0x03E81D 0F:E80D: 9D A8 04  STA ram_obj_facing,X
C - - - - - 0x03E820 0F:E810: 9D 4E 05  STA ram_obj_id,X
C - - - - - 0x03E823 0F:E813: E8        INX
C - - - - - 0x03E824 0F:E814: E0 17     CPX #$17
C - - - - - 0x03E826 0F:E816: 90 E3     BCC bra_E7FB_loop
C - - - - - 0x03E828 0F:E818: 60        RTS



sub_E819:
sub_0x03E829:
C - - - - - 0x03E829 0F:E819: A9 80     LDA #con_prg_bank + $80
C - - - - - 0x03E82B 0F:E81B: 20 E0 E2  JSR sub_E2E0_prg_bankswitch
C - - - - - 0x03E82E 0F:E81E: 20 8B 91  JSR sub_0x00119B
C - - - - - 0x03E831 0F:E821: 4C 7F E6  JMP loc_E67F_restore_prg_bank



sub_E824_clear_memory:
C - - - - - 0x03E834 0F:E824: A2 26     LDX #$26
C - - - - - 0x03E836 0F:E826: D0 02     BNE bra_E82A    ; jmp



sub_E828_clear_memory:
sub_0x03E838_clear_memory:
C - - - - - 0x03E838 0F:E828: A2 50     LDX #$50
bra_E82A:
C - - - - - 0x03E83A 0F:E82A: A9 00     LDA #$00
bra_E82C_loop:
; 0026-00DF or 0050-00DF
C - - - - - 0x03E83C 0F:E82C: 95 00     STA $00,X
C - - - - - 0x03E83E 0F:E82E: E8        INX
C - - - - - 0x03E83F 0F:E82F: E0 E0     CPX #$E0
C - - - - - 0x03E841 0F:E831: D0 F9     BNE bra_E82C_loop
C - - - - - 0x03E843 0F:E833: A2 00     LDX #$00
bra_E835_loop:
; 0400-04FF, 0500-05FF, 0700-07F5
C - - - - - 0x03E845 0F:E835: 9D 00 04  STA ram_obj_anim_id,X
C - - - - - 0x03E848 0F:E838: 9D 00 05  STA ram_obj_spd_X_hi + $0E,X
C - - - - - 0x03E84B 0F:E83B: E0 F6     CPX #$F6
C - - - - - 0x03E84D 0F:E83D: B0 03     BCS bra_E842   ; skip 07F6-07FF
; 0700-07F5
C - - - - - 0x03E84F 0F:E83F: 9D 00 07  STA $0700,X
bra_E842:
C - - - - - 0x03E852 0F:E842: E8        INX
C - - - - - 0x03E853 0F:E843: D0 F0     BNE bra_E835_loop
C - - - - - 0x03E855 0F:E845: A9 00     LDA #$00
C - - - - - 0x03E857 0F:E847: AA        TAX ; 00
bra_E848_loop:
; 0600-069F
C - - - - - 0x03E858 0F:E848: 9D 00 06  STA $0600,X
C - - - - - 0x03E85B 0F:E84B: E8        INX
C - - - - - 0x03E85C 0F:E84C: E0 A0     CPX #$A0
C - - - - - 0x03E85E 0F:E84E: 90 F8     BCC bra_E848_loop
C - - - - - 0x03E860 0F:E850: A2 E0     LDX #$E0
bra_E852_loop:
; 06E0-06FF
C - - - - - 0x03E862 0F:E852: 9D 00 06  STA $06E0 - $E0,X
C - - - - - 0x03E865 0F:E855: E8        INX
C - - - - - 0x03E866 0F:E856: D0 FA     BNE bra_E852_loop
C - - - - - 0x03E868 0F:E858: A2 00     LDX #$00
bra_E85A_loop:
; 0300-03BF
C - - - - - 0x03E86A 0F:E85A: 9D 00 03  STA ram_ppu_buffer,X
C - - - - - 0x03E86D 0F:E85D: E8        INX
C - - - - - 0x03E86E 0F:E85E: E0 C0     CPX #$C0
C - - - - - 0x03E870 0F:E860: D0 F8     BNE bra_E85A_loop
sub_E862_clear_00F0_00F7:
sub_0x03E872_clear_00F0_00F7:
C - - - - - 0x03E872 0F:E862: A9 00     LDA #$00
C - - - - - 0x03E874 0F:E864: AA        TAX ; 00
bra_E865_loop:
; 00F0-00F7
; also ram_00F4
C - - - - - 0x03E875 0F:E865: 95 F0     STA ram_00F0,X
C - - - - - 0x03E877 0F:E867: E8        INX
C - - - - - 0x03E878 0F:E868: E0 08     CPX #$08
C - - - - - 0x03E87A 0F:E86A: 90 F9     BCC bra_E865_loop
; C = 1
; bzk dangerous branch at 0x001125
C - - - - - 0x03E87C 0F:E86C: 60        RTS



sub_E86D_jump_to_pointers_after_JSR_A:
sub_0x03E87D_jump_to_pointers_after_JSR_A:
C - - - - - 0x03E87D 0F:E86D: 0A        ASL
C - - - - - 0x03E87E 0F:E86E: 84 03     STY ram_0003_t000_save_Y
C - - - - - 0x03E880 0F:E870: A8        TAY
C - - - - - 0x03E881 0F:E871: C8        INY
C - - - - - 0x03E882 0F:E872: 68        PLA
C - - - - - 0x03E883 0F:E873: 85 00     STA ram_0000_t002_data
C - - - - - 0x03E885 0F:E875: 68        PLA
C - - - - - 0x03E886 0F:E876: 85 01     STA ram_0000_t002_data + $01
C - - - - - 0x03E888 0F:E878: B1 00     LDA (ram_0000_t002_data),Y
C - - - - - 0x03E88A 0F:E87A: 85 02     STA ram_0002_t00C_jmp
C - - - - - 0x03E88C 0F:E87C: C8        INY
C - - - - - 0x03E88D 0F:E87D: B1 00     LDA (ram_0000_t002_data),Y
C - - - - - 0x03E88F 0F:E87F: A4 03     LDY ram_0003_t000_save_Y
C - - - - - 0x03E891 0F:E881: 85 03     STA ram_0002_t00C_jmp + $01
C - - - - - 0x03E893 0F:E883: 6C 02 00  JMP (ram_0002_t00C_jmp)



sub_0x03E896_jump_to_pointers_after_JSR_Y:
; code expects Y = 00, 02, 04 etc
; bzk optimize, use 0x03E87D routine instead,
; and add TYA at the beginning. this will add
; +5 cycles (TYA + useless LDY 0003),
; but it's +12h bytes of free space in the last bank
C - - - - - 0x03E896 0F:E886: C8        INY
C - - - - - 0x03E897 0F:E887: 68        PLA
C - - - - - 0x03E898 0F:E888: 85 00     STA ram_0000_t001_data
C - - - - - 0x03E89A 0F:E88A: 68        PLA
C - - - - - 0x03E89B 0F:E88B: 85 01     STA ram_0000_t001_data + $01
C - - - - - 0x03E89D 0F:E88D: B1 00     LDA (ram_0000_t001_data),Y
C - - - - - 0x03E89F 0F:E88F: 85 02     STA ram_0002_t00B_jmp
C - - - - - 0x03E8A1 0F:E891: C8        INY
C - - - - - 0x03E8A2 0F:E892: B1 00     LDA (ram_0000_t001_data),Y
C - - - - - 0x03E8A4 0F:E894: 85 03     STA ram_0002_t00B_jmp + $01
C - - - - - 0x03E8A6 0F:E896: 6C 02 00  JMP (ram_0002_t00B_jmp)



sub_E899_increase_indirect_address:
sub_0x03E8A9_increase_indirect_address:
; in
    ; A = how much to add
    ; X = index for Zero Page address
C - - - - - 0x03E8A9 0F:E899: 18        CLC
C - - - - - 0x03E8AA 0F:E89A: 75 00     ADC $00,X
C - - - - - 0x03E8AC 0F:E89C: 95 00     STA $00,X
C - - - - - 0x03E8AE 0F:E89E: 90 02     BCC bra_E8A2_RTS
; if overflow
C - - - - - 0x03E8B0 0F:E8A0: F6 01     INC $01,X
bra_E8A2_RTS:
C - - - - - 0x03E8B2 0F:E8A2: 60        RTS


; bzk garbage
- - - - - - 0x03E8B3 0F:E8A3: 38        SEC
- - - - - - 0x03E8B4 0F:E8A4: 49 FF     EOR #$FF
- - - - - - 0x03E8B6 0F:E8A6: 75 00     ADC $00,X
- - - - - - 0x03E8B8 0F:E8A8: 95 00     STA $00,X
- - - - - - 0x03E8BA 0F:E8AA: B0 02     BCS bra_E8AE_RTS
; if underflow
- - - - - - 0x03E8BC 0F:E8AC: D6 01     DEC $01,X
bra_E8AE_RTS:
- - - - - - 0x03E8BE 0F:E8AE: 60        RTS



sub_E8AF_set_buffer_mode_02:
sub_0x03E8BF_set_buffer_mode_02:
C - - - - - 0x03E8BF 0F:E8AF: A6 1D     LDX ram_index_ppu_buffer
C - - - - - 0x03E8C1 0F:E8B1: A9 02     LDA #con_buf_mode_02
C - - - - - 0x03E8C3 0F:E8B3: D0 15     BNE bra_E8CA_write_to_buffer    ; jmp



sub_E8B5_set_buffer_mode_01:
sub_0x03E8C5_set_buffer_mode_01:
C - - - - - 0x03E8C5 0F:E8B5: A6 1D     LDX ram_index_ppu_buffer
C - - - - - 0x03E8C7 0F:E8B7: A9 01     LDA #con_buf_mode_01
C - - - - - 0x03E8C9 0F:E8B9: D0 0F     BNE bra_E8CA_write_to_buffer    ; jmp



sub_E8BB:
sub_0x03E8CB:
C - - - - - 0x03E8CB 0F:E8BB: A6 1D     LDX ram_index_ppu_buffer
C - - - - - 0x03E8CD 0F:E8BD: 4C CE E8  JMP loc_E8CE



sub_E8C0_set_buffer_mode_05:
sub_0x03E8D0_set_buffer_mode_05:
C - - - - - 0x03E8D0 0F:E8C0: A6 1D     LDX ram_index_ppu_buffer
C - - - - - 0x03E8D2 0F:E8C2: A9 05     LDA #con_buf_mode_05
C - - - - - 0x03E8D4 0F:E8C4: D0 04     BNE bra_E8CA_write_to_buffer    ; jmp



sub_E8C6_set_buffer_mode_04:
sub_0x03E8D6_set_buffer_mode_04:
C - - - - - 0x03E8D6 0F:E8C6: A6 1D     LDX ram_index_ppu_buffer
C - - - - - 0x03E8D8 0F:E8C8: A9 04     LDA #$04
bra_E8CA_write_to_buffer:
C - - - - - 0x03E8DA 0F:E8CA: 9D 00 03  STA ram_ppu_buffer,X
C - - - - - 0x03E8DD 0F:E8CD: E8        INX
loc_E8CE:
C D 3 - - - 0x03E8DE 0F:E8CE: A5 61     LDA ram_ppu_address_lo
C - - - - - 0x03E8E0 0F:E8D0: 9D 00 03  STA ram_ppu_buffer,X
C - - - - - 0x03E8E3 0F:E8D3: E8        INX
C - - - - - 0x03E8E4 0F:E8D4: A5 62     LDA ram_ppu_address_hi
C - - - - - 0x03E8E6 0F:E8D6: 9D 00 03  STA ram_ppu_buffer,X
C - - - - - 0x03E8E9 0F:E8D9: E8        INX
C - - - - - 0x03E8EA 0F:E8DA: 86 1D     STX ram_index_ppu_buffer
C - - - - - 0x03E8EC 0F:E8DC: 60        RTS



loc_E8DD_increase_and_store_index_and_close_buffer:
sub_0x03E8ED_increase_and_store_index_and_close_buffer:
loc_0x03E8ED_increase_and_store_index_and_close_buffer:
C D 3 - - - 0x03E8ED 0F:E8DD: E8        INX
sub_E8DE_store_index_and_close_buffer:
loc_E8DE_store_index_and_close_buffer:
sub_0x03E8EE_store_index_and_close_buffer:
loc_0x03E8EE_store_index_and_close_buffer:
C D 3 - - - 0x03E8EE 0F:E8DE: 86 1D     STX ram_index_ppu_buffer
C - - - - - 0x03E8F0 0F:E8E0: 4C 12 ED  JMP loc_ED12_close_buffer



sub_E8E3:
C - - - - - 0x03E8F3 0F:E8E3: A9 80     LDA #< $2780
C - - - - - 0x03E8F5 0F:E8E5: 85 61     STA ram_ppu_address_lo
C - - - - - 0x03E8F7 0F:E8E7: A9 27     LDA #> $2780
C - - - - - 0x03E8F9 0F:E8E9: 85 62     STA ram_ppu_address_hi
C - - - - - 0x03E8FB 0F:E8EB: 20 B5 E8  JSR sub_E8B5_set_buffer_mode_01
C - - - - - 0x03E8FE 0F:E8EE: A0 40     LDY #$40
C - - - - - 0x03E900 0F:E8F0: A9 00     LDA #$00
bra_E8F2_loop:
C - - - - - 0x03E902 0F:E8F2: 9D 00 03  STA ram_ppu_buffer,X
C - - - - - 0x03E905 0F:E8F5: E8        INX
C - - - - - 0x03E906 0F:E8F6: 88        DEY
C - - - - - 0x03E907 0F:E8F7: D0 F9     BNE bra_E8F2_loop
C - - - - - 0x03E909 0F:E8F9: 4C DE E8  JMP loc_E8DE_store_index_and_close_buffer



sub_0x03E90C_print_number:
loc_0x03E90C_print_number:
C D 3 - - - 0x03E90C 0F:E8FC: 20 B5 E8  JSR sub_E8B5_set_buffer_mode_01
C - - - - - 0x03E90F 0F:E8FF: A5 08     LDA ram_0008_temp
; / 10
C - - - - - 0x03E911 0F:E901: 4A        LSR
C - - - - - 0x03E912 0F:E902: 4A        LSR
C - - - - - 0x03E913 0F:E903: 4A        LSR
C - - - - - 0x03E914 0F:E904: 4A        LSR
C - - - - - 0x03E915 0F:E905: A8        TAY
C - - - - - 0x03E916 0F:E906: B9 1B E9  LDA tbl_E91B_number_tiles,Y
C - - - - - 0x03E919 0F:E909: 9D 00 03  STA ram_ppu_buffer,X
C - - - - - 0x03E91C 0F:E90C: E8        INX
C - - - - - 0x03E91D 0F:E90D: A5 08     LDA ram_0008_temp
C - - - - - 0x03E91F 0F:E90F: 29 0F     AND #$0F
C - - - - - 0x03E921 0F:E911: A8        TAY
C - - - - - 0x03E922 0F:E912: B9 1B E9  LDA tbl_E91B_number_tiles,Y
C - - - - - 0x03E925 0F:E915: 9D 00 03  STA ram_ppu_buffer,X
C - - - - - 0x03E928 0F:E918: 4C DD E8  JMP loc_E8DD_increase_and_store_index_and_close_buffer



tbl_E91B_number_tiles:
- D 3 - - - 0x03E92B 0F:E91B: 41        .byte $41   ; 00 "0"
- D 3 - - - 0x03E92C 0F:E91C: 42        .byte $42   ; 01 "1"
- D 3 - - - 0x03E92D 0F:E91D: 43        .byte $43   ; 02 "2"
- D 3 - - - 0x03E92E 0F:E91E: 44        .byte $44   ; 03 "3"
- D 3 - - - 0x03E92F 0F:E91F: 45        .byte $45   ; 04 "4"
- D 3 - - - 0x03E930 0F:E920: 46        .byte $46   ; 05 "5"
- D 3 - - - 0x03E931 0F:E921: 47        .byte $47   ; 06 "6"
- D 3 - - - 0x03E932 0F:E922: 48        .byte $48   ; 07 "7"
- D 3 - - - 0x03E933 0F:E923: 49        .byte $49   ; 08 "8"
- D 3 - - - 0x03E934 0F:E924: 4A        .byte $4A   ; 09 "9"
- D 3 - - - 0x03E935 0F:E925: 50        .byte $50   ; 0A "A"
- D 3 - - - 0x03E936 0F:E926: 51        .byte $51   ; 0B "B"
- D 3 - - - 0x03E937 0F:E927: 52        .byte $52   ; 0C "C"
- D 3 - - - 0x03E938 0F:E928: 53        .byte $53   ; 0D "D"
- D 3 - - - 0x03E939 0F:E929: 54        .byte $54   ; 0E "E"
- D 3 - - - 0x03E93A 0F:E92A: 55        .byte $55   ; 0F "F"


; bzk garbage
- - - - - - 0x03E93B 0F:E92B: BC 1C 04  LDY ram_obj_pos_Y_hi,X
- - - - - - 0x03E93E 0F:E92E: 84 14     STY ram_0014_temp
- - - - - - 0x03E940 0F:E930: BC 38 04  LDY ram_obj_pos_X_hi,X
- - - - - - 0x03E943 0F:E933: 84 15     STY ram_0015_temp



sub_0x03E945:
; out
    ; ram_0011_t007_nametable_attribute
C - - - - - 0x03E945 0F:E935: AD 00 80  LDA $8000   ; reading bank id
C - - - - - 0x03E948 0F:E938: 48        PHA
C - - - - - 0x03E949 0F:E939: 20 00 C9  JSR sub_C900_select_prg_bank_for_blk_1
C - - - - - 0x03E94C 0F:E93C: A5 14     LDA ram_0014_temp
C - - - - - 0x03E94E 0F:E93E: 38        SEC
C - - - - - 0x03E94F 0F:E93F: E9 28     SBC #$28
C - - - - - 0x03E951 0F:E941: 85 14     STA ram_0014_temp
C - - - - - 0x03E953 0F:E943: 20 3D EA  JSR sub_EA3D_prepare_blk_data_pointers
C - - - - - 0x03E956 0F:E946: A4 57     LDY ram_cam_pos_hi
C - - - - - 0x03E958 0F:E948: 18        CLC
C - - - - - 0x03E959 0F:E949: A5 56     LDA ram_cam_pos_lo
C - - - - - 0x03E95B 0F:E94B: 65 14     ADC ram_0014_temp
C - - - - - 0x03E95D 0F:E94D: B0 04     BCS bra_E953
C - - - - - 0x03E95F 0F:E94F: C9 F0     CMP #$F0
C - - - - - 0x03E961 0F:E951: 90 03     BCC bra_E956
bra_E953:
C - - - - - 0x03E963 0F:E953: 69 0F     ADC #$0F
C - - - - - 0x03E965 0F:E955: C8        INY
bra_E956:
C - - - - - 0x03E966 0F:E956: 85 10     STA ram_0010_t00A
C - - - - - 0x03E968 0F:E958: 84 11     STY ram_0011_t001
C - - - - - 0x03E96A 0F:E95A: A9 00     LDA #$00
; * 40
C - - - - - 0x03E96C 0F:E95C: 06 11     ASL ram_0011_t001
C - - - - - 0x03E96E 0F:E95E: 2A        ROL
C - - - - - 0x03E96F 0F:E95F: 06 11     ASL ram_0011_t001
C - - - - - 0x03E971 0F:E961: 2A        ROL
C - - - - - 0x03E972 0F:E962: 06 11     ASL ram_0011_t001
C - - - - - 0x03E974 0F:E964: 2A        ROL
C - - - - - 0x03E975 0F:E965: 06 11     ASL ram_0011_t001
C - - - - - 0x03E977 0F:E967: 2A        ROL
C - - - - - 0x03E978 0F:E968: 06 11     ASL ram_0011_t001
C - - - - - 0x03E97A 0F:E96A: 2A        ROL
C - - - - - 0x03E97B 0F:E96B: 06 11     ASL ram_0011_t001
C - - - - - 0x03E97D 0F:E96D: 2A        ROL
C - - - - - 0x03E97E 0F:E96E: 48        PHA
C - - - - - 0x03E97F 0F:E96F: 38        SEC
C - - - - - 0x03E980 0F:E970: A5 11     LDA ram_0011_t001
C - - - - - 0x03E982 0F:E972: 65 00     ADC ram_0000_t00B_blk_data
C - - - - - 0x03E984 0F:E974: 85 00     STA ram_0000_t00B_blk_data
C - - - - - 0x03E986 0F:E976: 68        PLA
C - - - - - 0x03E987 0F:E977: 65 01     ADC ram_0000_t00B_blk_data + $01
C - - - - - 0x03E989 0F:E979: 85 01     STA ram_0000_t00B_blk_data + $01
C - - - - - 0x03E98B 0F:E97B: 20 05 C9  JSR sub_C905_select_proper_prg_bank_for_blk
C - - - - - 0x03E98E 0F:E97E: A5 15     LDA ram_0015_temp
; / 20
C - - - - - 0x03E990 0F:E980: 4A        LSR
C - - - - - 0x03E991 0F:E981: 4A        LSR
C - - - - - 0x03E992 0F:E982: 4A        LSR
C - - - - - 0x03E993 0F:E983: 4A        LSR
C - - - - - 0x03E994 0F:E984: 4A        LSR
C - - - - - 0x03E995 0F:E985: 85 11     STA ram_0011_t002
C - - - - - 0x03E997 0F:E987: A5 10     LDA ram_0010_t00A
C - - - - - 0x03E999 0F:E989: 29 E0     AND #$E0
; / 04
C - - - - - 0x03E99B 0F:E98B: 4A        LSR
C - - - - - 0x03E99C 0F:E98C: 4A        LSR
C - - - - - 0x03E99D 0F:E98D: 05 11     ORA ram_0011_t002
C - - - - - 0x03E99F 0F:E98F: A8        TAY
C - - - - - 0x03E9A0 0F:E990: B1 00     LDA (ram_0000_t00B_blk_data),Y
C - - - - - 0x03E9A2 0F:E992: 85 11     STA ram_0011_t003_nmt_attr_data_index
C - - - - - 0x03E9A4 0F:E994: A5 32     LDA ram_blk_hi
C - - - - - 0x03E9A6 0F:E996: C9 0E     CMP #$0E
C - - - - - 0x03E9A8 0F:E998: D0 0C     BNE bra_E9A6
- - - - - - 0x03E9AA 0F:E99A: A4 33     LDY ram_blk_lo
- - - - - - 0x03E9AC 0F:E99C: D0 08     BNE bra_E9A6
- - - - - - 0x03E9AE 0F:E99E: A4 34     LDY ram_blk_fr
- - - - - - 0x03E9B0 0F:E9A0: C0 01     CPY #$01
- - - - - - 0x03E9B2 0F:E9A2: D0 02     BNE bra_E9A6
- - - - - - 0x03E9B4 0F:E9A4: A9 01     LDA #$01
bra_E9A6:
C - - - - - 0x03E9B6 0F:E9A6: 48        PHA
C - - - - - 0x03E9B7 0F:E9A7: A8        TAY
C - - - - - 0x03E9B8 0F:E9A8: 20 02 C9  JSR sub_C902_select_prg_bank_for_blk_2
C - - - - - 0x03E9BB 0F:E9AB: 68        PLA
C - - - - - 0x03E9BC 0F:E9AC: 20 0D EA  JSR sub_EA0D_get_nametable_attribute
C - - - - - 0x03E9BF 0F:E9AF: 68        PLA
C - - - - - 0x03E9C0 0F:E9B0: 4C E6 E2  JMP loc_E2E6_prg_bankswitch



sub_0x03E9C3:
; out
    ; ram_0011_t007_nametable_attribute
C - - - - - 0x03E9C3 0F:E9B3: AC 00 80  LDY $8000   ; reading bank id
C - - - - - 0x03E9C6 0F:E9B6: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03E9C9 0F:E9B9: 98        TYA
C - - - - - 0x03E9CA 0F:E9BA: 48        PHA
C - - - - - 0x03E9CB 0F:E9BB: 20 3D EA  JSR sub_EA3D_prepare_blk_data_pointers
C - - - - - 0x03E9CE 0F:E9BE: A5 0E     LDA ram_000E_temp
C - - - - - 0x03E9D0 0F:E9C0: 85 11     STA ram_0011_t004
C - - - - - 0x03E9D2 0F:E9C2: A5 0F     LDA ram_000F_temp
C - - - - - 0x03E9D4 0F:E9C4: 85 10     STA ram_0010_t00B
C - - - - - 0x03E9D6 0F:E9C6: 20 20 EA  JSR sub_EA20
C - - - - - 0x03E9D9 0F:E9C9: AD 1C 04  LDA ram_plr_pos_Y_hi
C - - - - - 0x03E9DC 0F:E9CC: 38        SEC
C - - - - - 0x03E9DD 0F:E9CD: E9 10     SBC #$10
C - - - - - 0x03E9DF 0F:E9CF: 20 FB E9  JSR sub_E9FB_get_nametable_attribute
C - - - - - 0x03E9E2 0F:E9D2: 68        PLA
C - - - - - 0x03E9E3 0F:E9D3: 4C E6 E2  JMP loc_E2E6_prg_bankswitch



sub_0x03E9E6_get_nametable_attribute_from_blk_data:
; out
    ; ram_0011_t007_nametable_attribute
C - - - - - 0x03E9E6 0F:E9D6: 20 50 EB  JSR sub_EB50_prg_bank_8C_or_8E
C - - - - - 0x03E9E9 0F:E9D9: 20 3D EA  JSR sub_EA3D_prepare_blk_data_pointers
C - - - - - 0x03E9EC 0F:E9DC: BD 38 04  LDA ram_obj_pos_X_hi,X
C - - - - - 0x03E9EF 0F:E9DF: 18        CLC
C - - - - - 0x03E9F0 0F:E9E0: 65 56     ADC ram_cam_pos_lo
C - - - - - 0x03E9F2 0F:E9E2: 85 11     STA ram_0011_t004
C - - - - - 0x03E9F4 0F:E9E4: A5 57     LDA ram_cam_pos_hi
C - - - - - 0x03E9F6 0F:E9E6: 69 00     ADC #$00
C - - - - - 0x03E9F8 0F:E9E8: 85 10     STA ram_0010_t00B
C - - - - - 0x03E9FA 0F:E9EA: 20 20 EA  JSR sub_EA20
C - - - - - 0x03E9FD 0F:E9ED: BD 1C 04  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x03EA00 0F:E9F0: 38        SEC
C - - - - - 0x03EA01 0F:E9F1: E9 20     SBC #$20
C - - - - - 0x03EA03 0F:E9F3: 20 FB E9  JSR sub_E9FB_get_nametable_attribute
C - - - - - 0x03EA06 0F:E9F6: A9 84     LDA #con_prg_bank + $84
C - - - - - 0x03EA08 0F:E9F8: 4C E6 E2  JMP loc_E2E6_prg_bankswitch



sub_E9FB_get_nametable_attribute:
; in
    ; A = 
    ; ram_0011_t005
; out
    ; ram_0011_t007_nametable_attribute
C - - - - - 0x03EA0B 0F:E9FB: 29 E0     AND #$E0
; / 04
C - - - - - 0x03EA0D 0F:E9FD: 4A        LSR
C - - - - - 0x03EA0E 0F:E9FE: 4A        LSR
C - - - - - 0x03EA0F 0F:E9FF: 18        CLC
C - - - - - 0x03EA10 0F:EA00: 65 11     ADC ram_0011_t005
; bzk optimize, TAY without STA + LDY
C - - - - - 0x03EA12 0F:EA02: 85 11     STA ram_0011_t006_blk_data_index
C - - - - - 0x03EA14 0F:EA04: A4 11     LDY ram_0011_t006_blk_data_index
C - - - - - 0x03EA16 0F:EA06: C8        INY
C - - - - - 0x03EA17 0F:EA07: B1 00     LDA (ram_0000_t00B_blk_data),Y
C - - - - - 0x03EA19 0F:EA09: 85 11     STA ram_0011_t003_nmt_attr_data_index
C - - - - - 0x03EA1B 0F:EA0B: A5 32     LDA ram_blk_hi
sub_EA0D_get_nametable_attribute:
; in
    ; A = 
; out
    ; ram_0011_t007_nametable_attribute
C - - - - - 0x03EA1D 0F:EA0D: 0A        ASL
C - - - - - 0x03EA1E 0F:EA0E: A8        TAY
C - - - - - 0x03EA1F 0F:EA0F: B9 10 D6  LDA tbl_D610_nametable_attributes,Y
C - - - - - 0x03EA22 0F:EA12: 85 00     STA ram_0000_t01B_nmt_attr_data
C - - - - - 0x03EA24 0F:EA14: B9 11 D6  LDA tbl_D610_nametable_attributes + $01,Y
C - - - - - 0x03EA27 0F:EA17: 85 01     STA ram_0000_t01B_nmt_attr_data + $01
C - - - - - 0x03EA29 0F:EA19: A4 11     LDY ram_0011_t003_nmt_attr_data_index
C - - - - - 0x03EA2B 0F:EA1B: B1 00     LDA (ram_0000_t01B_nmt_attr_data),Y
C - - - - - 0x03EA2D 0F:EA1D: 85 11     STA ram_0011_t007_nametable_attribute
C - - - - - 0x03EA2F 0F:EA1F: 60        RTS



sub_EA20:
; in
    ; ram_0010_t00B
    ; ram_0011_t004
; out
    ; ram_0011_t005
; bzk optimize, A already has a proper byte
C - - - - - 0x03EA30 0F:EA20: A5 10     LDA ram_0010_t00B
C - - - - - 0x03EA32 0F:EA22: 0A        ASL
C - - - - - 0x03EA33 0F:EA23: A8        TAY
C - - - - - 0x03EA34 0F:EA24: B9 67 EA  LDA tbl_EA67_offset,Y
C - - - - - 0x03EA37 0F:EA27: 18        CLC
C - - - - - 0x03EA38 0F:EA28: 65 00     ADC ram_0000_t00B_blk_data
C - - - - - 0x03EA3A 0F:EA2A: 85 00     STA ram_0000_t00B_blk_data
C - - - - - 0x03EA3C 0F:EA2C: B9 68 EA  LDA tbl_EA67_offset + $01,Y
C - - - - - 0x03EA3F 0F:EA2F: 65 01     ADC ram_0000_t00B_blk_data + $01
C - - - - - 0x03EA41 0F:EA31: 85 01     STA ram_0000_t00B_blk_data + $01
C - - - - - 0x03EA43 0F:EA33: A5 11     LDA ram_0011_t004
; / 20
C - - - - - 0x03EA45 0F:EA35: 4A        LSR
C - - - - - 0x03EA46 0F:EA36: 4A        LSR
C - - - - - 0x03EA47 0F:EA37: 4A        LSR
C - - - - - 0x03EA48 0F:EA38: 4A        LSR
C - - - - - 0x03EA49 0F:EA39: 4A        LSR
C - - - - - 0x03EA4A 0F:EA3A: 85 11     STA ram_0011_t005
C - - - - - 0x03EA4C 0F:EA3C: 60        RTS



sub_EA3D_prepare_blk_data_pointers:
C - - - - - 0x03EA4D 0F:EA3D: A5 32     LDA ram_blk_hi
C - - - - - 0x03EA4F 0F:EA3F: 0A        ASL
C - - - - - 0x03EA50 0F:EA40: A8        TAY
C - - - - - 0x03EA51 0F:EA41: B9 D4 D5  LDA tbl_D5D4_blk_data,Y
C - - - - - 0x03EA54 0F:EA44: 85 00     STA ram_0000_t00C_blk_data_ptr_main
C - - - - - 0x03EA56 0F:EA46: B9 D5 D5  LDA tbl_D5D4_blk_data + $01,Y
C - - - - - 0x03EA59 0F:EA49: 85 01     STA ram_0000_t00C_blk_data_ptr_main + $01
C - - - - - 0x03EA5B 0F:EA4B: A5 33     LDA ram_blk_lo
C - - - - - 0x03EA5D 0F:EA4D: 0A        ASL
C - - - - - 0x03EA5E 0F:EA4E: A8        TAY
C - - - - - 0x03EA5F 0F:EA4F: B1 00     LDA (ram_0000_t00C_blk_data_ptr_main),Y
C - - - - - 0x03EA61 0F:EA51: 85 10     STA ram_0010_t000_data_blk_data_ptr_sub
C - - - - - 0x03EA63 0F:EA53: C8        INY
C - - - - - 0x03EA64 0F:EA54: B1 00     LDA (ram_0000_t00C_blk_data_ptr_main),Y
C - - - - - 0x03EA66 0F:EA56: 85 11     STA ram_0010_t000_data_blk_data_ptr_sub + $01
C - - - - - 0x03EA68 0F:EA58: A5 34     LDA ram_blk_fr
C - - - - - 0x03EA6A 0F:EA5A: 0A        ASL
C - - - - - 0x03EA6B 0F:EA5B: A8        TAY
C - - - - - 0x03EA6C 0F:EA5C: C8        INY
C - - - - - 0x03EA6D 0F:EA5D: B1 10     LDA (ram_0010_t000_data_blk_data_ptr_sub),Y
C - - - - - 0x03EA6F 0F:EA5F: 85 00     STA ram_0000_t00B_blk_data
C - - - - - 0x03EA71 0F:EA61: C8        INY
C - - - - - 0x03EA72 0F:EA62: B1 10     LDA (ram_0010_t000_data_blk_data_ptr_sub),Y
C - - - - - 0x03EA74 0F:EA64: 85 01     STA ram_0000_t00B_blk_data + $01
C - - - - - 0x03EA76 0F:EA66: 60        RTS



tbl_EA67_offset:
- D 3 - - - 0x03EA77 0F:EA67: 00 00     .word $0000 ; 00 
- D 3 - - - 0x03EA79 0F:EA69: 30 00     .word $0030 ; 01 
- D 3 - - - 0x03EA7B 0F:EA6B: 60 00     .word $0060 ; 02 
- D 3 - - - 0x03EA7D 0F:EA6D: 90 00     .word $0090 ; 03 
- - - - - - 0x03EA7F 0F:EA6F: C0 00     .word $00C0 ; 04 
- - - - - - 0x03EA81 0F:EA71: F0 00     .word $00F0 ; 05 
- - - - - - 0x03EA83 0F:EA73: 20 01     .word $0120 ; 06 
- - - - - - 0x03EA85 0F:EA75: 50 01     .word $0150 ; 07 
- - - - - - 0x03EA87 0F:EA77: 80 01     .word $0180 ; 08 
- - - - - - 0x03EA89 0F:EA79: B0 01     .word $01B0 ; 09 
- - - - - - 0x03EA8B 0F:EA7B: E0 01     .word $01E0 ; 0A 
- - - - - - 0x03EA8D 0F:EA7D: 10 02     .word $0210 ; 0B 
- - - - - - 0x03EA8F 0F:EA7F: 40 02     .word $0240 ; 0C 
- - - - - - 0x03EA91 0F:EA81: 70 02     .word $0270 ; 0D 
- - - - - - 0x03EA93 0F:EA83: A0 02     .word $02A0 ; 0E 
- - - - - - 0x03EA95 0F:EA85: D0 02     .word $02D0 ; 0F 
- - - - - - 0x03EA97 0F:EA87: 00 03     .word $0300 ; 10 



sub_0x03EA99_get_nametable_attribute_from_blk_data:
; out
    ; ram_0011_t008_nametable_attribute
C - - - - - 0x03EA99 0F:EA89: 20 50 EB  JSR sub_EB50_prg_bank_8C_or_8E
C - - - - - 0x03EA9C 0F:EA8C: 20 29 EB  JSR sub_EB29
C - - - - - 0x03EA9F 0F:EA8F: A4 11     LDY ram_0011_temp
C - - - - - 0x03EAA1 0F:EA91: B1 00     LDA (ram_0000_t00E_data),Y
C - - - - - 0x03EAA3 0F:EA93: 85 11     STA ram_0011_temp
C - - - - - 0x03EAA5 0F:EA95: A5 32     LDA ram_blk_hi
C - - - - - 0x03EAA7 0F:EA97: 0A        ASL
C - - - - - 0x03EAA8 0F:EA98: A8        TAY
C - - - - - 0x03EAA9 0F:EA99: B9 10 D6  LDA tbl_D610_nametable_attributes,Y
C - - - - - 0x03EAAC 0F:EA9C: 85 00     STA ram_0000_t00F_data
C - - - - - 0x03EAAE 0F:EA9E: B9 11 D6  LDA tbl_D610_nametable_attributes + $01,Y
C - - - - - 0x03EAB1 0F:EAA1: 85 01     STA ram_0000_t00F_data + $01
C - - - - - 0x03EAB3 0F:EAA3: A4 11     LDY ram_0011_temp
C - - - - - 0x03EAB5 0F:EAA5: B1 00     LDA (ram_0000_t00F_data),Y
C - - - - - 0x03EAB7 0F:EAA7: 85 11     STA ram_0011_t008_nametable_attribute
C - - - - - 0x03EAB9 0F:EAA9: A9 84     LDA #con_prg_bank + $84
; bzk optimize, JMP
C - - - - - 0x03EABB 0F:EAAB: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03EABE 0F:EAAE: 60        RTS



sub_0x03EABF:
C - - - - - 0x03EABF 0F:EAAF: A9 8C     LDA #con_prg_bank + $8C
C - - - - - 0x03EAC1 0F:EAB1: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03EAC4 0F:EAB4: B9 F1 BD  LDA tbl_0x01BE01_4x4_blocks_indexes,Y
C - - - - - 0x03EAC7 0F:EAB7: 85 11     STA ram_0011_t00A_pointer_lo
C - - - - - 0x03EAC9 0F:EAB9: 85 0F     STA ram_000F_temp
C - - - - - 0x03EACB 0F:EABB: 4C CA EA  JMP loc_EACA



sub_0x03EACE:
C - - - - - 0x03EACE 0F:EABE: 20 50 EB  JSR sub_EB50_prg_bank_8C_or_8E
C - - - - - 0x03EAD1 0F:EAC1: 20 29 EB  JSR sub_EB29
C - - - - - 0x03EAD4 0F:EAC4: A4 11     LDY ram_0011_temp
C - - - - - 0x03EAD6 0F:EAC6: B1 00     LDA (ram_0000_t01A_data),Y
C - - - - - 0x03EAD8 0F:EAC8: 85 11     STA ram_0011_t00A_pointer_lo
loc_EACA:
C D 3 - - - 0x03EADA 0F:EACA: A9 00     LDA #$00
; * 10
C - - - - - 0x03EADC 0F:EACC: 06 11     ASL ram_0011_t00A_pointer_lo
C - - - - - 0x03EADE 0F:EACE: 2A        ROL
C - - - - - 0x03EADF 0F:EACF: 06 11     ASL ram_0011_t00A_pointer_lo
C - - - - - 0x03EAE1 0F:EAD1: 2A        ROL
C - - - - - 0x03EAE2 0F:EAD2: 06 11     ASL ram_0011_t00A_pointer_lo
C - - - - - 0x03EAE4 0F:EAD4: 2A        ROL
C - - - - - 0x03EAE5 0F:EAD5: 06 11     ASL ram_0011_t00A_pointer_lo
C - - - - - 0x03EAE7 0F:EAD7: 2A        ROL
C - - - - - 0x03EAE8 0F:EAD8: 85 10     STA ram_0010_t00C_pointer_hi
C - - - - - 0x03EAEA 0F:EADA: A5 32     LDA ram_blk_hi
C - - - - - 0x03EAEC 0F:EADC: 0A        ASL
C - - - - - 0x03EAED 0F:EADD: A8        TAY
C - - - - - 0x03EAEE 0F:EADE: B9 F2 D5  LDA tbl_D5F2_4x4_tile_blocks,Y
C - - - - - 0x03EAF1 0F:EAE1: 85 00     STA ram_0000_t00D_data
C - - - - - 0x03EAF3 0F:EAE3: B9 F3 D5  LDA tbl_D5F2_4x4_tile_blocks + $01,Y
C - - - - - 0x03EAF6 0F:EAE6: 85 01     STA ram_0000_t00D_data + $01
C - - - - - 0x03EAF8 0F:EAE8: A4 09     LDY ram_0009_temp
C - - - - - 0x03EAFA 0F:EAEA: B9 21 EB  LDA tbl_EB21,Y
; bzk optimize, add directly to ram_0011_t00A_pointer_lo
C - - - - - 0x03EAFD 0F:EAED: 85 09     STA ram_0009_t001
C - - - - - 0x03EAFF 0F:EAEF: A5 11     LDA ram_0011_t00A_pointer_lo
C - - - - - 0x03EB01 0F:EAF1: 18        CLC
C - - - - - 0x03EB02 0F:EAF2: 65 09     ADC ram_0009_t001
C - - - - - 0x03EB04 0F:EAF4: 85 11     STA ram_0011_t00A_pointer_lo
C - - - - - 0x03EB06 0F:EAF6: A5 10     LDA ram_0010_t00C_pointer_hi
C - - - - - 0x03EB08 0F:EAF8: 69 00     ADC #$00
C - - - - - 0x03EB0A 0F:EAFA: 85 10     STA ram_0010_t00C_pointer_hi
C - - - - - 0x03EB0C 0F:EAFC: A5 00     LDA ram_0000_t00D_data
C - - - - - 0x03EB0E 0F:EAFE: 18        CLC
C - - - - - 0x03EB0F 0F:EAFF: 65 11     ADC ram_0011_t00A_pointer_lo
C - - - - - 0x03EB11 0F:EB01: 85 00     STA ram_0000_t00D_data
C - - - - - 0x03EB13 0F:EB03: A5 01     LDA ram_0000_t00D_data + $01
C - - - - - 0x03EB15 0F:EB05: 65 10     ADC ram_0010_t00C_pointer_hi
C - - - - - 0x03EB17 0F:EB07: 85 01     STA ram_0000_t00D_data + $01
C - - - - - 0x03EB19 0F:EB09: A2 00     LDX #$00
C - - - - - 0x03EB1B 0F:EB0B: A9 04     LDA #$04
C - - - - - 0x03EB1D 0F:EB0D: 85 09     STA ram_0009_t002
bra_EB0F_loop:
C - - - - - 0x03EB1F 0F:EB0F: BC 25 EB  LDY tbl_EB25_index,X
C - - - - - 0x03EB22 0F:EB12: B1 00     LDA (ram_0000_t00D_data),Y
C - - - - - 0x03EB24 0F:EB14: 95 10     STA ram_0010_temp,X
C - - - - - 0x03EB26 0F:EB16: E8        INX
C - - - - - 0x03EB27 0F:EB17: C6 09     DEC ram_0009_t002
C - - - - - 0x03EB29 0F:EB19: D0 F4     BNE bra_EB0F_loop
C - - - - - 0x03EB2B 0F:EB1B: A9 84     LDA #con_prg_bank + $84
C - - - - - 0x03EB2D 0F:EB1D: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03EB30 0F:EB20: 60        RTS



tbl_EB21:
- D 3 - - - 0x03EB31 0F:EB21: 00        .byte $00   ; 00 
- D 3 - - - 0x03EB32 0F:EB22: 02        .byte $02   ; 01 
- D 3 - - - 0x03EB33 0F:EB23: 08        .byte $08   ; 02 
- D 3 - - - 0x03EB34 0F:EB24: 0A        .byte $0A   ; 03 



tbl_EB25_index:
- D 3 - - - 0x03EB35 0F:EB25: 00        .byte $00   ; 00 
- D 3 - - - 0x03EB36 0F:EB26: 01        .byte $01   ; 01 
- D 3 - - - 0x03EB37 0F:EB27: 04        .byte $04   ; 02 
- D 3 - - - 0x03EB38 0F:EB28: 05        .byte $05   ; 03 



sub_EB29:
C - - - - - 0x03EB39 0F:EB29: BD 38 04  LDA ram_obj_pos_X_hi,X
C - - - - - 0x03EB3C 0F:EB2C: 18        CLC
C - - - - - 0x03EB3D 0F:EB2D: 65 56     ADC ram_cam_pos_lo
C - - - - - 0x03EB3F 0F:EB2F: 85 11     STA ram_0011_temp
C - - - - - 0x03EB41 0F:EB31: A5 57     LDA ram_cam_pos_hi
C - - - - - 0x03EB43 0F:EB33: 69 00     ADC #$00
C - - - - - 0x03EB45 0F:EB35: 85 10     STA ram_0010_temp
C - - - - - 0x03EB47 0F:EB37: A5 11     LDA ram_0011_temp
; / 20
C - - - - - 0x03EB49 0F:EB39: 4A        LSR
C - - - - - 0x03EB4A 0F:EB3A: 4A        LSR
C - - - - - 0x03EB4B 0F:EB3B: 4A        LSR
C - - - - - 0x03EB4C 0F:EB3C: 4A        LSR
C - - - - - 0x03EB4D 0F:EB3D: 4A        LSR
C - - - - - 0x03EB4E 0F:EB3E: 85 11     STA ram_0011_temp
C - - - - - 0x03EB50 0F:EB40: BD 1C 04  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x03EB53 0F:EB43: 38        SEC
C - - - - - 0x03EB54 0F:EB44: E9 20     SBC #$20
C - - - - - 0x03EB56 0F:EB46: 29 E0     AND #$E0
; / 04
C - - - - - 0x03EB58 0F:EB48: 4A        LSR
C - - - - - 0x03EB59 0F:EB49: 4A        LSR
C - - - - - 0x03EB5A 0F:EB4A: 18        CLC
C - - - - - 0x03EB5B 0F:EB4B: 65 11     ADC ram_0011_temp
C - - - - - 0x03EB5D 0F:EB4D: 85 11     STA ram_0011_temp
C - - - - - 0x03EB5F 0F:EB4F: 60        RTS



sub_EB50_prg_bank_8C_or_8E:
; bzk optimize, LDA 8C + BNE will be faster for other levels
C - - - - - 0x03EB60 0F:EB50: A9 8E     LDA #con_prg_bank + $8E
C - - - - - 0x03EB62 0F:EB52: A4 32     LDY ram_blk_hi
C - - - - - 0x03EB64 0F:EB54: C0 07     CPY #$07
C - - - - - 0x03EB66 0F:EB56: F0 02     BEQ bra_EB5A
C - - - - - 0x03EB68 0F:EB58: A9 8C     LDA #con_prg_bank + $8C
bra_EB5A:
C - - - - - 0x03EB6A 0F:EB5A: 4C E6 E2  JMP loc_E2E6_prg_bankswitch



sub_0x03EB6D_prepare_blk_data_pointers:
C - - - - - 0x03EB6D 0F:EB5D: 20 AA EB  JSR sub_EBAA_prg_bankswitch_8E_or_90
C - - - - - 0x03EB70 0F:EB60: 20 3D EA  JSR sub_EA3D_prepare_blk_data_pointers
C - - - - - 0x03EB73 0F:EB63: 4C A5 EB  JMP loc_EBA5_prg_bankswitch_82



sub_0x03EB76_prepare_tile_blocks_pointers:
; bzk optimize, move this code to bank 82
; and don't use these two prg bankswitches
C - - - - - 0x03EB76 0F:EB66: 20 AA EB  JSR sub_EBAA_prg_bankswitch_8E_or_90
C - - - - - 0x03EB79 0F:EB69: B9 F2 D5  LDA tbl_D5F2_4x4_tile_blocks,Y
C - - - - - 0x03EB7C 0F:EB6C: 85 02     STA ram_0002_t01D_data_pointer
C - - - - - 0x03EB7E 0F:EB6E: B9 F3 D5  LDA tbl_D5F2_4x4_tile_blocks + $01,Y
C - - - - - 0x03EB81 0F:EB71: 85 03     STA ram_0002_t01D_data_pointer + $01
C - - - - - 0x03EB83 0F:EB73: 4C A5 EB  JMP loc_EBA5_prg_bankswitch_82



sub_0x03EB86_prepare_nametable_attributes_pointers:
; bzk optimize, move this code to bank 82
; and don't use these two prg bankswitches
C - - - - - 0x03EB86 0F:EB76: 20 AA EB  JSR sub_EBAA_prg_bankswitch_8E_or_90
C - - - - - 0x03EB89 0F:EB79: B9 10 D6  LDA tbl_D610_nametable_attributes,Y
C - - - - - 0x03EB8C 0F:EB7C: 85 02     STA ram_0002_t008_data
C - - - - - 0x03EB8E 0F:EB7E: B9 11 D6  LDA tbl_D610_nametable_attributes + $01,Y
C - - - - - 0x03EB91 0F:EB81: 85 03     STA ram_0002_t008_data + $01
C - - - - - 0x03EB93 0F:EB83: 4C A5 EB  JMP loc_EBA5_prg_bankswitch_82



sub_0x03EB96:
C - - - - - 0x03EB96 0F:EB86: 20 AA EB  JSR sub_EBAA_prg_bankswitch_8E_or_90
C - - - - - 0x03EB99 0F:EB89: B1 00     LDA (ram_0000_t00B_blk_data),Y
C - - - - - 0x03EB9B 0F:EB8B: 85 00     STA ram_0000_t049
C - - - - - 0x03EB9D 0F:EB8D: 4C A5 EB  JMP loc_EBA5_prg_bankswitch_82



sub_0x03EBA0:
C - - - - - 0x03EBA0 0F:EB90: 20 AA EB  JSR sub_EBAA_prg_bankswitch_8E_or_90
C - - - - - 0x03EBA3 0F:EB93: A4 00     LDY ram_0000_temp
C - - - - - 0x03EBA5 0F:EB95: B1 02     LDA (ram_0002_t008_data),Y
C - - - - - 0x03EBA7 0F:EB97: 85 16     STA ram_0016_temp
C - - - - - 0x03EBA9 0F:EB99: 4C A5 EB  JMP loc_EBA5_prg_bankswitch_82



sub_0x03EBAC_read_byte_from_blk_data:
C - - - - - 0x03EBAC 0F:EB9C: 20 AA EB  JSR sub_EBAA_prg_bankswitch_8E_or_90
C - - - - - 0x03EBAF 0F:EB9F: A4 02     LDY ram_0002_t01B_blk_data_index
C - - - - - 0x03EBB1 0F:EBA1: B1 00     LDA (ram_0000_t00B_blk_data),Y
C - - - - - 0x03EBB3 0F:EBA3: 85 02     STA ram_0002_t01C
loc_EBA5_prg_bankswitch_82:
C D 3 - - - 0x03EBB5 0F:EBA5: A9 82     LDA #con_prg_bank + $82
C - - - - - 0x03EBB7 0F:EBA7: 4C E6 E2  JMP loc_E2E6_prg_bankswitch



sub_EBAA_prg_bankswitch_8E_or_90:
C - - - - - 0x03EBBA 0F:EBAA: A5 32     LDA ram_blk_hi
C - - - - - 0x03EBBC 0F:EBAC: C9 04     CMP #$04
C - - - - - 0x03EBBE 0F:EBAE: 90 04     BCC bra_EBB4
C - - - - - 0x03EBC0 0F:EBB0: A9 8E     LDA #con_prg_bank + $8E
C - - - - - 0x03EBC2 0F:EBB2: D0 02     BNE bra_EBB6    ; jmp
bra_EBB4:
C - - - - - 0x03EBC4 0F:EBB4: A9 90     LDA #con_prg_bank + $90
bra_EBB6:
C - - - - - 0x03EBC6 0F:EBB6: 4C E6 E2  JMP loc_E2E6_prg_bankswitch



sub_EBB9:
C - - - - - 0x03EBC9 0F:EBB9: 20 27 E2  JSR sub_E227_disable_sound_engine
C - - - - - 0x03EBCC 0F:EBBC: 20 FD EB  JSR sub_EBFD_clear_nametables
C - - - - - 0x03EBCF 0F:EBBF: A2 02     LDX #con_EC77_title
C - - - - - 0x03EBD1 0F:EBC1: A9 84     LDA #con_prg_bank + $84
C - - - - - 0x03EBD3 0F:EBC3: 20 D5 EB  JSR sub_EBD5
C - - - - - 0x03EBD6 0F:EBC6: A9 05     LDA #con_98E4_05_bg_spr_pal
C - - - - - 0x03EBD8 0F:EBC8: 20 E9 EC  JSR sub_ECE9_write_data_to_ppu_buffer
C - - - - - 0x03EBDB 0F:EBCB: A9 00     LDA #con_98E4_opening
C - - - - - 0x03EBDD 0F:EBCD: 20 E9 EC  JSR sub_ECE9_write_data_to_ppu_buffer
C - - - - - 0x03EBE0 0F:EBD0: A9 26     LDA #con_98E4_26_password
C - - - - - 0x03EBE2 0F:EBD2: 4C E9 EC  JMP loc_ECE9_write_data_to_ppu_buffer



sub_EBD5:
sub_0x03EBE5:
C - - - - - 0x03EBE5 0F:EBD5: 20 E0 E2  JSR sub_E2E0_prg_bankswitch
C - - - - - 0x03EBE8 0F:EBD8: 20 04 EC  JSR sub_EC04_draw_screen
loc_EBDB:
C D 3 - - - 0x03EBEB 0F:EBDB: A5 22     LDA ram_0022_prg_bank
C - - - - - 0x03EBED 0F:EBDD: 4C E6 E2  JMP loc_E2E6_prg_bankswitch



sub_0x03EBF0:
C - - - - - 0x03EBF0 0F:EBE0: 20 E0 E2  JSR sub_E2E0_prg_bankswitch
C - - - - - 0x03EBF3 0F:EBE3: 20 82 E1  JSR sub_E182_disable_nmi_and_rendering
C - - - - - 0x03EBF6 0F:EBE6: A9 00     LDA #$00
C - - - - - 0x03EBF8 0F:EBE8: 85 FC     STA ram_scroll_Y
C - - - - - 0x03EBFA 0F:EBEA: 85 FD     STA ram_scroll_X
C - - - - - 0x03EBFC 0F:EBEC: AD 02 20  LDA $2002
C - - - - - 0x03EBFF 0F:EBEF: 8C 06 20  STY $2006
C - - - - - 0x03EC02 0F:EBF2: 8E 06 20  STX $2006
C - - - - - 0x03EC05 0F:EBF5: A2 00     LDX #$00
C - - - - - 0x03EC07 0F:EBF7: 20 2E EC  JSR sub_EC2E
C - - - - - 0x03EC0A 0F:EBFA: 4C DB EB  JMP loc_EBDB



sub_EBFD_clear_nametables:
sub_0x03EC0D_clear_nametables:
loc_0x03EC0D_clear_nametables:
C D 3 - - - 0x03EC0D 0F:EBFD: A9 E4     LDA #$E4
C - - - - - 0x03EC0F 0F:EBFF: 8D 05 51  STA $5105
; clear 2000-2BFF
C - - - - - 0x03EC12 0F:EC02: A2 00     LDX #con_EC77_clear
sub_EC04_draw_screen:
sub_0x03EC14_draw_screen:
ofs_055_0x03EC14_10:    ; bzk unused export
; X = screen id
C - - - - - 0x03EC14 0F:EC04: BD 77 EC  LDA tbl_EC77_static_screen_data,X
C - - - - - 0x03EC17 0F:EC07: 85 00     STA ram_0000_t000_data
C - - - - - 0x03EC19 0F:EC09: BD 78 EC  LDA tbl_EC77_static_screen_data + $01,X
C - - - - - 0x03EC1C 0F:EC0C: 85 01     STA ram_0000_t000_data + $01
C - - - - - 0x03EC1E 0F:EC0E: 20 82 E1  JSR sub_E182_disable_nmi_and_rendering
C - - - - - 0x03EC21 0F:EC11: A9 00     LDA #$00
C - - - - - 0x03EC23 0F:EC13: 85 FD     STA ram_scroll_X
C - - - - - 0x03EC25 0F:EC15: 85 FC     STA ram_scroll_Y
loc_EC17:
C D 3 - - - 0x03EC27 0F:EC17: AD 02 20  LDA $2002
C - - - - - 0x03EC2A 0F:EC1A: A0 01     LDY #$01
C - - - - - 0x03EC2C 0F:EC1C: B1 00     LDA (ram_0000_t000_data),Y
C - - - - - 0x03EC2E 0F:EC1E: 8D 06 20  STA $2006
C - - - - - 0x03EC31 0F:EC21: 88        DEY ; 00
C - - - - - 0x03EC32 0F:EC22: B1 00     LDA (ram_0000_t000_data),Y
C - - - - - 0x03EC34 0F:EC24: 8D 06 20  STA $2006
C - - - - - 0x03EC37 0F:EC27: A2 00     LDX #< ram_0000_t000_data
C - - - - - 0x03EC39 0F:EC29: A9 02     LDA #$02
C - - - - - 0x03EC3B 0F:EC2B: 20 99 E8  JSR sub_E899_increase_indirect_address
sub_EC2E:
loc_EC2E_continue_reading_data:
C D 3 - - - 0x03EC3E 0F:EC2E: A0 00     LDY #$00
C - - - - - 0x03EC40 0F:EC30: B1 00     LDA (ram_0000_t000_data),Y
C - - - - - 0x03EC42 0F:EC32: C9 FF     CMP #$FF
C - - - - - 0x03EC44 0F:EC34: F0 3E     BEQ bra_EC74_FF_end_token
C - - - - - 0x03EC46 0F:EC36: C9 7F     CMP #$7F
C - - - - - 0x03EC48 0F:EC38: F0 32     BEQ bra_EC6C_7F_set_new_ppu_address
C - - - - - 0x03EC4A 0F:EC3A: A8        TAY     ; update N flag
C - - - - - 0x03EC4B 0F:EC3B: 10 1D     BPL bra_EC5A_draw_single_tile_A_times
C - - - - - 0x03EC4D 0F:EC3D: 29 7F     AND #$7F    ; 81-FE (81 is a bit faster than 01, the game uses it all the time)
C - - - - - 0x03EC4F 0F:EC3F: 85 02     STA ram_0002_t013
C - - - - - 0x03EC51 0F:EC41: A0 01     LDY #$01
bra_EC43_loop:      ; draw a string A many times
C - - - - - 0x03EC53 0F:EC43: B1 00     LDA (ram_0000_t000_data),Y
C - - - - - 0x03EC55 0F:EC45: 8D 07 20  STA $2007
C - - - - - 0x03EC58 0F:EC48: C4 02     CPY ram_0002_t013
C - - - - - 0x03EC5A 0F:EC4A: F0 03     BEQ bra_EC4F_enough
C - - - - - 0x03EC5C 0F:EC4C: C8        INY
C - - - - - 0x03EC5D 0F:EC4D: D0 F4     BNE bra_EC43_loop
bra_EC4F_enough:
C - - - - - 0x03EC5F 0F:EC4F: A9 01     LDA #$01
C - - - - - 0x03EC61 0F:EC51: 18        CLC
C - - - - - 0x03EC62 0F:EC52: 65 02     ADC ram_0002_t013
bra_EC54_continue:
C - - - - - 0x03EC64 0F:EC54: 20 99 E8  JSR sub_E899_increase_indirect_address
C - - - - - 0x03EC67 0F:EC57: 4C 2E EC  JMP loc_EC2E_continue_reading_data
bra_EC5A_draw_single_tile_A_times:      ; 01-7E
C - - - - - 0x03EC6A 0F:EC5A: A0 01     LDY #$01
C - - - - - 0x03EC6C 0F:EC5C: 85 02     STA ram_0002_t014
C - - - - - 0x03EC6E 0F:EC5E: B1 00     LDA (ram_0000_t000_data),Y
C - - - - - 0x03EC70 0F:EC60: A4 02     LDY ram_0002_t014
bra_EC62_loop:
C - - - - - 0x03EC72 0F:EC62: 8D 07 20  STA $2007
C - - - - - 0x03EC75 0F:EC65: 88        DEY
C - - - - - 0x03EC76 0F:EC66: D0 FA     BNE bra_EC62_loop
C - - - - - 0x03EC78 0F:EC68: A9 02     LDA #$02
C - - - - - 0x03EC7A 0F:EC6A: D0 E8     BNE bra_EC54_continue    ; jmp
bra_EC6C_7F_set_new_ppu_address:
C - - - - - 0x03EC7C 0F:EC6C: A9 01     LDA #$01
C - - - - - 0x03EC7E 0F:EC6E: 20 99 E8  JSR sub_E899_increase_indirect_address
C - - - - - 0x03EC81 0F:EC71: 4C 17 EC  JMP loc_EC17
bra_EC74_FF_end_token:
C - - - - - 0x03EC84 0F:EC74: 4C 66 ED  JMP loc_ED66_set_2000



tbl_EC77_static_screen_data:
; see con_EC77
- D 3 - - - 0x03EC87 0F:EC77: 9D EC     .word _off005_EC9D_00_clear_screen
- D 3 - - - 0x03EC89 0F:EC79: 70 B5     .word _off005_0x00B580_02_title_screen
- - - - - - 0x03EC8B 0F:EC7B: 9D EC     .word _off005_EC9D_04   ; unused, index doesn't exist
- - - - - - 0x03EC8D 0F:EC7D: 9D EC     .word _off005_EC9D_06   ; unused, index doesn't exist
- - - - - - 0x03EC8F 0F:EC7F: 9D EC     .word _off005_EC9D_08   ; unused, index doesn't exist
- - - - - - 0x03EC91 0F:EC81: 9D EC     .word _off005_EC9D_0A   ; unused, index doesn't exist
- D 3 - - - 0x03EC93 0F:EC83: A8 AB     .word _off005_0x032BB8_0C
- D 3 - - - 0x03EC95 0F:EC85: 68 BA     .word _off005_0x017A78_0E
- D 3 - - - 0x03EC97 0F:EC87: FA B9     .word _off005_0x017A0A_10
- D 3 - - - 0x03EC99 0F:EC89: 5C BA     .word _off005_0x017A6C_12
- D 3 - - - 0x03EC9B 0F:EC8B: BC BB     .word _off005_0x017BCC_14
- D 3 - - - 0x03EC9D 0F:EC8D: D4 BA     .word _off005_0x013AE4_16
- D 3 - - - 0x03EC9F 0F:EC8F: A6 B9     .word _off005_0x0079B6_18_enter_your_name_screen
- D 3 - - - 0x03ECA1 0F:EC91: 27 B3     .word _off005_0x033337_1A_password_screen
- D 3 - - - 0x03ECA3 0F:EC93: 39 B8     .word _off005_0x017849_1C
- D 3 - - - 0x03ECA5 0F:EC95: 7C AD     .word _off005_0x032D8C_1E
- D 3 - - - 0x03ECA7 0F:EC97: FA BD     .word _off005_0x02BE0A_20
- D 3 - - - 0x03ECA9 0F:EC99: 72 D7     .word _off005_D772_22_credits_logo_screen
- D 3 - - - 0x03ECAB 0F:EC9B: 9A BA     .word _off005_0x02BAAA_24



_off005_EC9D_00_clear_screen:
_off005_EC9D_04:
_off005_EC9D_06:
_off005_EC9D_08:
_off005_EC9D_0A:
- D 3 - I - 0x03ECAD 0F:EC9D: 00 20     .word $2000 ; ppu address

- D 3 - I - 0x03ECAF 0F:EC9F: 78        .byte $78   ; write 78 times tile 00
- D 3 - I - 0x03ECB0 0F:ECA0: 00        .byte $00   ; 

- D 3 - I - 0x03ECB1 0F:ECA1: 78        .byte $78   ; 
- D 3 - I - 0x03ECB2 0F:ECA2: 00        .byte $00   ; 

- D 3 - I - 0x03ECB3 0F:ECA3: 78        .byte $78   ; 
- D 3 - I - 0x03ECB4 0F:ECA4: 00        .byte $00   ; 

- D 3 - I - 0x03ECB5 0F:ECA5: 78        .byte $78   ; 
- D 3 - I - 0x03ECB6 0F:ECA6: 00        .byte $00   ; 

- D 3 - I - 0x03ECB7 0F:ECA7: 78        .byte $78   ; 
- D 3 - I - 0x03ECB8 0F:ECA8: 00        .byte $00   ; 

- D 3 - I - 0x03ECB9 0F:ECA9: 78        .byte $78   ; 
- D 3 - I - 0x03ECBA 0F:ECAA: 00        .byte $00   ; 

- D 3 - I - 0x03ECBB 0F:ECAB: 78        .byte $78   ; 
- D 3 - I - 0x03ECBC 0F:ECAC: 00        .byte $00   ; 

- D 3 - I - 0x03ECBD 0F:ECAD: 78        .byte $78   ; 
- D 3 - I - 0x03ECBE 0F:ECAE: 00        .byte $00   ; 

- D 3 - I - 0x03ECBF 0F:ECAF: 40        .byte $40   ; 
- D 3 - I - 0x03ECC0 0F:ECB0: 00        .byte $00   ; 

- D 3 - I - 0x03ECC1 0F:ECB1: 7F        .byte $7F   ; set new ppu address
- D 3 - I - 0x03ECC2 0F:ECB2: 00 24     .word $2400 ; ppu address

- D 3 - I - 0x03ECC4 0F:ECB4: 78        .byte $78   ; 
- D 3 - I - 0x03ECC5 0F:ECB5: 00        .byte $00   ; 

- D 3 - I - 0x03ECC6 0F:ECB6: 78        .byte $78   ; 
- D 3 - I - 0x03ECC7 0F:ECB7: 00        .byte $00   ; 

- D 3 - I - 0x03ECC8 0F:ECB8: 78        .byte $78   ; 
- D 3 - I - 0x03ECC9 0F:ECB9: 00        .byte $00   ; 

- D 3 - I - 0x03ECCA 0F:ECBA: 78        .byte $78   ; 
- D 3 - I - 0x03ECCB 0F:ECBB: 00        .byte $00   ; 

- D 3 - I - 0x03ECCC 0F:ECBC: 78        .byte $78   ; 
- D 3 - I - 0x03ECCD 0F:ECBD: 00        .byte $00   ; 

- D 3 - I - 0x03ECCE 0F:ECBE: 78        .byte $78   ; 
- D 3 - I - 0x03ECCF 0F:ECBF: 00        .byte $00   ; 

- D 3 - I - 0x03ECD0 0F:ECC0: 78        .byte $78   ; 
- D 3 - I - 0x03ECD1 0F:ECC1: 00        .byte $00   ; 

- D 3 - I - 0x03ECD2 0F:ECC2: 78        .byte $78   ; 
- D 3 - I - 0x03ECD3 0F:ECC3: 00        .byte $00   ; 

- D 3 - I - 0x03ECD4 0F:ECC4: 40        .byte $40   ; 
- D 3 - I - 0x03ECD5 0F:ECC5: 00        .byte $00   ; 

- D 3 - I - 0x03ECD6 0F:ECC6: 7F        .byte $7F   ; set new ppu address
- D 3 - I - 0x03ECD7 0F:ECC7: 00 28     .word $2800 ; ppu address

- D 3 - I - 0x03ECD9 0F:ECC9: 78        .byte $78   ; 
- D 3 - I - 0x03ECDA 0F:ECCA: 00        .byte $00   ; 

- D 3 - I - 0x03ECDB 0F:ECCB: 78        .byte $78   ; 
- D 3 - I - 0x03ECDC 0F:ECCC: 00        .byte $00   ; 

- D 3 - I - 0x03ECDD 0F:ECCD: 78        .byte $78   ; 
- D 3 - I - 0x03ECDE 0F:ECCE: 00        .byte $00   ; 

- D 3 - I - 0x03ECDF 0F:ECCF: 78        .byte $78   ; 
- D 3 - I - 0x03ECE0 0F:ECD0: 00        .byte $00   ; 

- D 3 - I - 0x03ECE1 0F:ECD1: 78        .byte $78   ; 
- D 3 - I - 0x03ECE2 0F:ECD2: 00        .byte $00   ; 

- D 3 - I - 0x03ECE3 0F:ECD3: 78        .byte $78   ; 
- D 3 - I - 0x03ECE4 0F:ECD4: 00        .byte $00   ; 

- D 3 - I - 0x03ECE5 0F:ECD5: 78        .byte $78   ; 
- D 3 - I - 0x03ECE6 0F:ECD6: 00        .byte $00   ; 

- D 3 - I - 0x03ECE7 0F:ECD7: 78        .byte $78   ; 
- D 3 - I - 0x03ECE8 0F:ECD8: 00        .byte $00   ; 

- D 3 - I - 0x03ECE9 0F:ECD9: 40        .byte $40   ; 
- D 3 - I - 0x03ECEA 0F:ECDA: 00        .byte $00   ; 

- D 3 - I - 0x03ECEB 0F:ECDB: FF        .byte $FF   ; end token



sub_0x03ECEC_write_data_to_ppu_buffer:
C - - - - - 0x03ECEC 0F:ECDC: 48        PHA
C - - - - - 0x03ECED 0F:ECDD: A9 80     LDA #con_prg_bank + $80
C - - - - - 0x03ECEF 0F:ECDF: 20 E0 E2  JSR sub_E2E0_prg_bankswitch
C - - - - - 0x03ECF2 0F:ECE2: 68        PLA
C - - - - - 0x03ECF3 0F:ECE3: 20 20 98  JSR sub_0x001830_write_data_to_ppu_buffer
C - - - - - 0x03ECF6 0F:ECE6: 4C 7F E6  JMP loc_E67F_restore_prg_bank



sub_ECE9_write_data_to_ppu_buffer:
loc_ECE9_write_data_to_ppu_buffer:
sub_0x03ECF9_write_data_to_ppu_buffer:
loc_0x03ECF9_write_data_to_ppu_buffer:
C D 3 - - - 0x03ECF9 0F:ECE9: 48        PHA
C - - - - - 0x03ECFA 0F:ECEA: A9 80     LDA #con_prg_bank + $80
C - - - - - 0x03ECFC 0F:ECEC: 20 E0 E2  JSR sub_E2E0_prg_bankswitch
C - - - - - 0x03ECFF 0F:ECEF: 68        PLA
C - - - - - 0x03ED00 0F:ECF0: 20 25 98  JSR sub_0x001835_write_data_to_ppu_buffer
C - - - - - 0x03ED03 0F:ECF3: 4C 7F E6  JMP loc_E67F_restore_prg_bank



loc_0x03ED06:   ; X = 94 (bank id)
C D 3 - - - 0x03ED06 0F:ECF6: 48        PHA
C - - - - - 0x03ED07 0F:ECF7: A9 80     LDA #con_prg_bank + $80
C - - - - - 0x03ED09 0F:ECF9: 20 E0 E2  JSR sub_E2E0_prg_bankswitch
C - - - - - 0x03ED0C 0F:ECFC: 68        PLA
C - - - - - 0x03ED0D 0F:ECFD: 20 73 98  JSR sub_0x001883
C - - - - - 0x03ED10 0F:ED00: 4C 7F E6  JMP loc_E67F_restore_prg_bank



sub_0x03ED13_read_byte_from_another_bank:
C - - - - - 0x03ED13 0F:ED03: A5 B1     LDA ram_00B1
C - - - - - 0x03ED15 0F:ED05: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03ED18 0F:ED08: B1 00     LDA (ram_0000_t00A_data),Y
C - - - - - 0x03ED1A 0F:ED0A: 48        PHA
C - - - - - 0x03ED1B 0F:ED0B: A9 80     LDA #con_prg_bank + $80
C - - - - - 0x03ED1D 0F:ED0D: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03ED20 0F:ED10: 68        PLA
C - - - - - 0x03ED21 0F:ED11: 60        RTS



loc_ED12_close_buffer:
sub_0x03ED22_close_buffer:
loc_0x03ED22_close_buffer:
C D 3 - - - 0x03ED22 0F:ED12: A9 FF     LDA #$FF
sub_ED14_write_byte_to_buffer___unk_index:
sub_0x03ED24_write_byte_to_buffer___unk_index:
loc_0x03ED24_write_byte_to_buffer___unk_index:
; index is unknown
C D 3 - - - 0x03ED24 0F:ED14: A6 1D     LDX ram_index_ppu_buffer
sub_0x03ED26_write_byte_to_buffer_X:
loc_0x03ED26_write_byte_to_buffer_X:
; index is known = X
C D 3 - - - 0x03ED26 0F:ED16: 9D 00 03  STA ram_ppu_buffer,X
C - - - - - 0x03ED29 0F:ED19: E8        INX
C - - - - - 0x03ED2A 0F:ED1A: 86 1D     STX ram_index_ppu_buffer
C - - - - - 0x03ED2C 0F:ED1C: 60        RTS



tbl_ED1D_for_2000:
- D 3 - - - 0x03ED2D 0F:ED1D: 00        .byte $00   ; 01 +1
- D 3 - - - 0x03ED2E 0F:ED1E: 04        .byte $04   ; 02 +32
- D 3 - - - 0x03ED2F 0F:ED1F: 04        .byte $04   ; 03 +32
- D 3 - - - 0x03ED30 0F:ED20: 00        .byte $00   ; 04 +1
- D 3 - - - 0x03ED31 0F:ED21: 00        .byte $00   ; 05 +1
- D 3 - - - 0x03ED32 0F:ED22: 00        .byte $00   ; 06 +1
- D 3 - - - 0x03ED33 0F:ED23: 00        .byte $00   ; 07 +1
- - - - - - 0x03ED34 0F:ED24: 04        .byte $04   ; 08 +32
- - - - - - 0x03ED35 0F:ED25: 04        .byte $04   ; 09 +32
- D 3 - - - 0x03ED36 0F:ED26: 00        .byte $00   ; 0A +1



sub_ED27_write_buffer_to_ppu:
; bzk optimize, write BIT 2002 at the beginning
; delete all other LDA 2002
C - - - - - 0x03ED37 0F:ED27: A0 00     LDY #$00
bra_ED29_read_next_data:
loc_ED29_read_next_data:
C D 3 - - - 0x03ED39 0F:ED29: BE 00 03  LDX ram_ppu_buffer,Y
C - - - - - 0x03ED3C 0F:ED2C: F0 31     BEQ bra_ED5F_no_more_data
C - - - - - 0x03ED3E 0F:ED2E: A5 FF     LDA ram_for_2000
C - - - - - 0x03ED40 0F:ED30: 29 18     AND #$18
C - - - - - 0x03ED42 0F:ED32: 1D 1C ED  ORA tbl_ED1D_for_2000 - $01,X
C - - - - - 0x03ED45 0F:ED35: 8D 00 20  STA $2000
C - - - - - 0x03ED48 0F:ED38: C8        INY
; bzk optimize, make a table with indirect
; jumps instead of all these checks
C - - - - - 0x03ED49 0F:ED39: E0 0A     CPX #$0A
C - - - - - 0x03ED4B 0F:ED3B: F0 04     BEQ bra_ED41_0A
C - - - - - 0x03ED4D 0F:ED3D: E0 04     CPX #$04
C - - - - - 0x03ED4F 0F:ED3F: B0 51     BCS bra_ED92_04_07
bra_ED41_0A:
; mode 01 02 03 0A
C - - - - - 0x03ED51 0F:ED41: AD 02 20  LDA $2002
C - - - - - 0x03ED54 0F:ED44: B9 01 03  LDA ram_ppu_buffer + $01,Y
C - - - - - 0x03ED57 0F:ED47: 8D 06 20  STA $2006
C - - - - - 0x03ED5A 0F:ED4A: B9 00 03  LDA ram_ppu_buffer,Y
C - - - - - 0x03ED5D 0F:ED4D: 8D 06 20  STA $2006
C - - - - - 0x03ED60 0F:ED50: C8        INY
C - - - - - 0x03ED61 0F:ED51: C8        INY
C - - - - - 0x03ED62 0F:ED52: E0 0A     CPX #$0A
C - - - - - 0x03ED64 0F:ED54: F0 06     BEQ bra_ED5C_0A
C - - - - - 0x03ED66 0F:ED56: E0 03     CPX #$03
C - - - - - 0x03ED68 0F:ED58: F0 28     BEQ bra_ED82_03
C - - - - - 0x03ED6A 0F:ED5A: D0 15     BNE bra_ED71_01_02    ; jmp
bra_ED5C_0A:
C - - - - - 0x03ED6C 0F:ED5C: 4C 39 EF  JMP loc_EF39_0A



bra_ED5F_no_more_data:
; disable buffer
C - - - - - 0x03ED6F 0F:ED5F: A9 00     LDA #$00
C - - - - - 0x03ED71 0F:ED61: 8D 00 03  STA ram_ppu_buffer
C - - - - - 0x03ED74 0F:ED64: 85 1D     STA ram_index_ppu_buffer
loc_ED66_set_2000:
sub_0x03ED76_set_2000:
C D 3 - - - 0x03ED76 0F:ED66: A5 FF     LDA ram_for_2000
C - - - - - 0x03ED78 0F:ED68: 8D 00 20  STA $2000
C - - - - - 0x03ED7B 0F:ED6B: 60        RTS



bra_ED6C_loop:
C - - - - - 0x03ED7C 0F:ED6C: A9 FF     LDA #$FF
bra_ED6E_loop:
C - - - - - 0x03ED7E 0F:ED6E: 8D 07 20  STA $2007
bra_ED71_01_02:    ; entry point here
C - - - - - 0x03ED81 0F:ED71: B9 00 03  LDA ram_ppu_buffer,Y
C - - - - - 0x03ED84 0F:ED74: C8        INY
C - - - - - 0x03ED85 0F:ED75: C9 FF     CMP #$FF
C - - - - - 0x03ED87 0F:ED77: D0 F5     BNE bra_ED6E_loop   ; if not FF, write it
; if FF, read following byte
C - - - - - 0x03ED89 0F:ED79: B9 00 03  LDA ram_ppu_buffer,Y
C - - - - - 0x03ED8C 0F:ED7C: C9 0B     CMP #$0B
C - - - - - 0x03ED8E 0F:ED7E: B0 EC     BCS bra_ED6C_loop   ; if >= 0B, write FF
; if 00-0A, exit
C - - - - - 0x03ED90 0F:ED80: 90 A7     BCC bra_ED29_read_next_data    ; jmp



bra_ED82_03:
; write a string of tiles
C - - - - - 0x03ED92 0F:ED82: BE 00 03  LDX ram_ppu_buffer,Y
C - - - - - 0x03ED95 0F:ED85: C8        INY
C - - - - - 0x03ED96 0F:ED86: B9 00 03  LDA ram_ppu_buffer,Y
bra_ED89_loop:
C - - - - - 0x03ED99 0F:ED89: 8D 07 20  STA $2007
C - - - - - 0x03ED9C 0F:ED8C: CA        DEX
C - - - - - 0x03ED9D 0F:ED8D: D0 FA     BNE bra_ED89_loop
C - - - - - 0x03ED9F 0F:ED8F: C8        INY
C - - - - - 0x03EDA0 0F:ED90: D0 97     BNE bra_ED29_read_next_data    ; jmp



bra_ED92_04_07:
; mode 04 05 06 07
C - - - - - 0x03EDA2 0F:ED92: E0 06     CPX #$06
C - - - - - 0x03EDA4 0F:ED94: F0 59     BEQ bra_EDEF_06
C - - - - - 0x03EDA6 0F:ED96: E0 07     CPX #$07
C - - - - - 0x03EDA8 0F:ED98: F0 59     BEQ bra_EDF3_07
C - - - - - 0x03EDAA 0F:ED9A: E0 05     CPX #$05
C - - - - - 0x03EDAC 0F:ED9C: D0 04     BNE bra_EDA2_04
; mode 05
C - - - - - 0x03EDAE 0F:ED9E: A2 02     LDX #$02    ; 4x2 tiles
C - - - - - 0x03EDB0 0F:EDA0: D0 02     BNE bra_EDA4    ; jmp
bra_EDA2_04:
C - - - - - 0x03EDB2 0F:EDA2: A2 04     LDX #$04    ; 4x4 tiles
bra_EDA4:
bra_EDA4_loop:
; write 4 tiles
C - - - - - 0x03EDB4 0F:EDA4: AD 02 20  LDA $2002
C - - - - - 0x03EDB7 0F:EDA7: B9 01 03  LDA ram_ppu_buffer + $01,Y
C - - - - - 0x03EDBA 0F:EDAA: 8D 06 20  STA $2006
C - - - - - 0x03EDBD 0F:EDAD: B9 00 03  LDA ram_ppu_buffer,Y
C - - - - - 0x03EDC0 0F:EDB0: 8D 06 20  STA $2006
C - - - - - 0x03EDC3 0F:EDB3: C8        INY
C - - - - - 0x03EDC4 0F:EDB4: C8        INY
C - - - - - 0x03EDC5 0F:EDB5: B9 00 03  LDA ram_ppu_buffer,Y
C - - - - - 0x03EDC8 0F:EDB8: 8D 07 20  STA $2007
C - - - - - 0x03EDCB 0F:EDBB: C8        INY
C - - - - - 0x03EDCC 0F:EDBC: B9 00 03  LDA ram_ppu_buffer,Y
C - - - - - 0x03EDCF 0F:EDBF: 8D 07 20  STA $2007
C - - - - - 0x03EDD2 0F:EDC2: C8        INY
C - - - - - 0x03EDD3 0F:EDC3: B9 00 03  LDA ram_ppu_buffer,Y
C - - - - - 0x03EDD6 0F:EDC6: 8D 07 20  STA $2007
C - - - - - 0x03EDD9 0F:EDC9: C8        INY
C - - - - - 0x03EDDA 0F:EDCA: B9 00 03  LDA ram_ppu_buffer,Y
C - - - - - 0x03EDDD 0F:EDCD: 8D 07 20  STA $2007
C - - - - - 0x03EDE0 0F:EDD0: C8        INY
C - - - - - 0x03EDE1 0F:EDD1: CA        DEX
C - - - - - 0x03EDE2 0F:EDD2: D0 D0     BNE bra_EDA4_loop
; write 1 nametable attribute
C - - - - - 0x03EDE4 0F:EDD4: AD 02 20  LDA $2002
C - - - - - 0x03EDE7 0F:EDD7: B9 01 03  LDA ram_ppu_buffer + $01,Y
C - - - - - 0x03EDEA 0F:EDDA: 8D 06 20  STA $2006
C - - - - - 0x03EDED 0F:EDDD: B9 00 03  LDA ram_ppu_buffer,Y
C - - - - - 0x03EDF0 0F:EDE0: 8D 06 20  STA $2006
C - - - - - 0x03EDF3 0F:EDE3: C8        INY
C - - - - - 0x03EDF4 0F:EDE4: C8        INY
C - - - - - 0x03EDF5 0F:EDE5: B9 00 03  LDA ram_ppu_buffer,Y
C - - - - - 0x03EDF8 0F:EDE8: 8D 07 20  STA $2007
C - - - - - 0x03EDFB 0F:EDEB: C8        INY
C - - - - - 0x03EDFC 0F:EDEC: 4C 29 ED  JMP loc_ED29_read_next_data



bra_EDEF_06:
C - - - - - 0x03EDFF 0F:EDEF: A2 00     LDX #$00    ; 32 tiles
C - - - - - 0x03EE01 0F:EDF1: F0 02     BEQ bra_EDF5    ; jmp



bra_EDF3_07:
C - - - - - 0x03EE03 0F:EDF3: A2 01     LDX #$01    ; 40 tiles
bra_EDF5:
; write 32 tiles
C - - - - - 0x03EE05 0F:EDF5: AD 02 20  LDA $2002
C - - - - - 0x03EE08 0F:EDF8: B9 01 03  LDA ram_ppu_buffer + $01,Y
C - - - - - 0x03EE0B 0F:EDFB: 8D 06 20  STA $2006
C - - - - - 0x03EE0E 0F:EDFE: B9 00 03  LDA ram_ppu_buffer,Y
C - - - - - 0x03EE11 0F:EE01: 8D 06 20  STA $2006
C - - - - - 0x03EE14 0F:EE04: C8        INY
C - - - - - 0x03EE15 0F:EE05: C8        INY
C - - - - - 0x03EE16 0F:EE06: B9 00 03  LDA ram_ppu_buffer,Y
C - - - - - 0x03EE19 0F:EE09: 8D 07 20  STA $2007
C - - - - - 0x03EE1C 0F:EE0C: C8        INY
C - - - - - 0x03EE1D 0F:EE0D: B9 00 03  LDA ram_ppu_buffer,Y
C - - - - - 0x03EE20 0F:EE10: 8D 07 20  STA $2007
C - - - - - 0x03EE23 0F:EE13: C8        INY
C - - - - - 0x03EE24 0F:EE14: B9 00 03  LDA ram_ppu_buffer,Y
C - - - - - 0x03EE27 0F:EE17: 8D 07 20  STA $2007
C - - - - - 0x03EE2A 0F:EE1A: C8        INY
C - - - - - 0x03EE2B 0F:EE1B: B9 00 03  LDA ram_ppu_buffer,Y
C - - - - - 0x03EE2E 0F:EE1E: 8D 07 20  STA $2007
C - - - - - 0x03EE31 0F:EE21: C8        INY
C - - - - - 0x03EE32 0F:EE22: B9 00 03  LDA ram_ppu_buffer,Y
C - - - - - 0x03EE35 0F:EE25: 8D 07 20  STA $2007
C - - - - - 0x03EE38 0F:EE28: C8        INY
C - - - - - 0x03EE39 0F:EE29: B9 00 03  LDA ram_ppu_buffer,Y
C - - - - - 0x03EE3C 0F:EE2C: 8D 07 20  STA $2007
C - - - - - 0x03EE3F 0F:EE2F: C8        INY
C - - - - - 0x03EE40 0F:EE30: B9 00 03  LDA ram_ppu_buffer,Y
C - - - - - 0x03EE43 0F:EE33: 8D 07 20  STA $2007
C - - - - - 0x03EE46 0F:EE36: C8        INY
C - - - - - 0x03EE47 0F:EE37: B9 00 03  LDA ram_ppu_buffer,Y
C - - - - - 0x03EE4A 0F:EE3A: 8D 07 20  STA $2007
C - - - - - 0x03EE4D 0F:EE3D: C8        INY
C - - - - - 0x03EE4E 0F:EE3E: B9 00 03  LDA ram_ppu_buffer,Y
C - - - - - 0x03EE51 0F:EE41: 8D 07 20  STA $2007
C - - - - - 0x03EE54 0F:EE44: C8        INY
C - - - - - 0x03EE55 0F:EE45: B9 00 03  LDA ram_ppu_buffer,Y
C - - - - - 0x03EE58 0F:EE48: 8D 07 20  STA $2007
C - - - - - 0x03EE5B 0F:EE4B: C8        INY
C - - - - - 0x03EE5C 0F:EE4C: B9 00 03  LDA ram_ppu_buffer,Y
C - - - - - 0x03EE5F 0F:EE4F: 8D 07 20  STA $2007
C - - - - - 0x03EE62 0F:EE52: C8        INY
C - - - - - 0x03EE63 0F:EE53: B9 00 03  LDA ram_ppu_buffer,Y
C - - - - - 0x03EE66 0F:EE56: 8D 07 20  STA $2007
C - - - - - 0x03EE69 0F:EE59: C8        INY
C - - - - - 0x03EE6A 0F:EE5A: B9 00 03  LDA ram_ppu_buffer,Y
C - - - - - 0x03EE6D 0F:EE5D: 8D 07 20  STA $2007
C - - - - - 0x03EE70 0F:EE60: C8        INY
C - - - - - 0x03EE71 0F:EE61: B9 00 03  LDA ram_ppu_buffer,Y
C - - - - - 0x03EE74 0F:EE64: 8D 07 20  STA $2007
C - - - - - 0x03EE77 0F:EE67: C8        INY
C - - - - - 0x03EE78 0F:EE68: B9 00 03  LDA ram_ppu_buffer,Y
C - - - - - 0x03EE7B 0F:EE6B: 8D 07 20  STA $2007
C - - - - - 0x03EE7E 0F:EE6E: C8        INY
C - - - - - 0x03EE7F 0F:EE6F: B9 00 03  LDA ram_ppu_buffer,Y
C - - - - - 0x03EE82 0F:EE72: 8D 07 20  STA $2007
C - - - - - 0x03EE85 0F:EE75: C8        INY
C - - - - - 0x03EE86 0F:EE76: B9 00 03  LDA ram_ppu_buffer,Y
C - - - - - 0x03EE89 0F:EE79: 8D 07 20  STA $2007
C - - - - - 0x03EE8C 0F:EE7C: C8        INY
C - - - - - 0x03EE8D 0F:EE7D: B9 00 03  LDA ram_ppu_buffer,Y
C - - - - - 0x03EE90 0F:EE80: 8D 07 20  STA $2007
C - - - - - 0x03EE93 0F:EE83: C8        INY
C - - - - - 0x03EE94 0F:EE84: B9 00 03  LDA ram_ppu_buffer,Y
C - - - - - 0x03EE97 0F:EE87: 8D 07 20  STA $2007
C - - - - - 0x03EE9A 0F:EE8A: C8        INY
C - - - - - 0x03EE9B 0F:EE8B: B9 00 03  LDA ram_ppu_buffer,Y
C - - - - - 0x03EE9E 0F:EE8E: 8D 07 20  STA $2007
C - - - - - 0x03EEA1 0F:EE91: C8        INY
C - - - - - 0x03EEA2 0F:EE92: B9 00 03  LDA ram_ppu_buffer,Y
C - - - - - 0x03EEA5 0F:EE95: 8D 07 20  STA $2007
C - - - - - 0x03EEA8 0F:EE98: C8        INY
C - - - - - 0x03EEA9 0F:EE99: B9 00 03  LDA ram_ppu_buffer,Y
C - - - - - 0x03EEAC 0F:EE9C: 8D 07 20  STA $2007
C - - - - - 0x03EEAF 0F:EE9F: C8        INY
C - - - - - 0x03EEB0 0F:EEA0: B9 00 03  LDA ram_ppu_buffer,Y
C - - - - - 0x03EEB3 0F:EEA3: 8D 07 20  STA $2007
C - - - - - 0x03EEB6 0F:EEA6: C8        INY
C - - - - - 0x03EEB7 0F:EEA7: B9 00 03  LDA ram_ppu_buffer,Y
C - - - - - 0x03EEBA 0F:EEAA: 8D 07 20  STA $2007
C - - - - - 0x03EEBD 0F:EEAD: C8        INY
C - - - - - 0x03EEBE 0F:EEAE: B9 00 03  LDA ram_ppu_buffer,Y
C - - - - - 0x03EEC1 0F:EEB1: 8D 07 20  STA $2007
C - - - - - 0x03EEC4 0F:EEB4: C8        INY
C - - - - - 0x03EEC5 0F:EEB5: B9 00 03  LDA ram_ppu_buffer,Y
C - - - - - 0x03EEC8 0F:EEB8: 8D 07 20  STA $2007
C - - - - - 0x03EECB 0F:EEBB: C8        INY
C - - - - - 0x03EECC 0F:EEBC: B9 00 03  LDA ram_ppu_buffer,Y
C - - - - - 0x03EECF 0F:EEBF: 8D 07 20  STA $2007
C - - - - - 0x03EED2 0F:EEC2: C8        INY
C - - - - - 0x03EED3 0F:EEC3: B9 00 03  LDA ram_ppu_buffer,Y
C - - - - - 0x03EED6 0F:EEC6: 8D 07 20  STA $2007
C - - - - - 0x03EED9 0F:EEC9: C8        INY
C - - - - - 0x03EEDA 0F:EECA: B9 00 03  LDA ram_ppu_buffer,Y
C - - - - - 0x03EEDD 0F:EECD: 8D 07 20  STA $2007
C - - - - - 0x03EEE0 0F:EED0: C8        INY
C - - - - - 0x03EEE1 0F:EED1: B9 00 03  LDA ram_ppu_buffer,Y
C - - - - - 0x03EEE4 0F:EED4: 8D 07 20  STA $2007
C - - - - - 0x03EEE7 0F:EED7: C8        INY
C - - - - - 0x03EEE8 0F:EED8: B9 00 03  LDA ram_ppu_buffer,Y
C - - - - - 0x03EEEB 0F:EEDB: 8D 07 20  STA $2007
C - - - - - 0x03EEEE 0F:EEDE: C8        INY
C - - - - - 0x03EEEF 0F:EEDF: B9 00 03  LDA ram_ppu_buffer,Y
C - - - - - 0x03EEF2 0F:EEE2: 8D 07 20  STA $2007
C - - - - - 0x03EEF5 0F:EEE5: C8        INY
C - - - - - 0x03EEF6 0F:EEE6: E0 00     CPX #$00
; bzk optimize, BEQ to 0x03EF46, delete JMP at 0x03EEFA
C - - - - - 0x03EEF8 0F:EEE8: D0 03     BNE bra_EEED_01
; 00
C - - - - - 0x03EEFA 0F:EEEA: 4C 29 ED  JMP loc_ED29_read_next_data
bra_EEED_01:
; write 8 more tiles
C - - - - - 0x03EEFD 0F:EEED: AD 02 20  LDA $2002
C - - - - - 0x03EF00 0F:EEF0: B9 01 03  LDA ram_ppu_buffer + $01,Y
C - - - - - 0x03EF03 0F:EEF3: 8D 06 20  STA $2006
C - - - - - 0x03EF06 0F:EEF6: B9 00 03  LDA ram_ppu_buffer,Y
C - - - - - 0x03EF09 0F:EEF9: 8D 06 20  STA $2006
C - - - - - 0x03EF0C 0F:EEFC: C8        INY
C - - - - - 0x03EF0D 0F:EEFD: C8        INY
C - - - - - 0x03EF0E 0F:EEFE: B9 00 03  LDA ram_ppu_buffer,Y
C - - - - - 0x03EF11 0F:EF01: 8D 07 20  STA $2007
C - - - - - 0x03EF14 0F:EF04: C8        INY
C - - - - - 0x03EF15 0F:EF05: B9 00 03  LDA ram_ppu_buffer,Y
C - - - - - 0x03EF18 0F:EF08: 8D 07 20  STA $2007
C - - - - - 0x03EF1B 0F:EF0B: C8        INY
C - - - - - 0x03EF1C 0F:EF0C: B9 00 03  LDA ram_ppu_buffer,Y
C - - - - - 0x03EF1F 0F:EF0F: 8D 07 20  STA $2007
C - - - - - 0x03EF22 0F:EF12: C8        INY
C - - - - - 0x03EF23 0F:EF13: B9 00 03  LDA ram_ppu_buffer,Y
C - - - - - 0x03EF26 0F:EF16: 8D 07 20  STA $2007
C - - - - - 0x03EF29 0F:EF19: C8        INY
C - - - - - 0x03EF2A 0F:EF1A: B9 00 03  LDA ram_ppu_buffer,Y
C - - - - - 0x03EF2D 0F:EF1D: 8D 07 20  STA $2007
C - - - - - 0x03EF30 0F:EF20: C8        INY
C - - - - - 0x03EF31 0F:EF21: B9 00 03  LDA ram_ppu_buffer,Y
C - - - - - 0x03EF34 0F:EF24: 8D 07 20  STA $2007
C - - - - - 0x03EF37 0F:EF27: C8        INY
C - - - - - 0x03EF38 0F:EF28: B9 00 03  LDA ram_ppu_buffer,Y
C - - - - - 0x03EF3B 0F:EF2B: 8D 07 20  STA $2007
C - - - - - 0x03EF3E 0F:EF2E: C8        INY
C - - - - - 0x03EF3F 0F:EF2F: B9 00 03  LDA ram_ppu_buffer,Y
C - - - - - 0x03EF42 0F:EF32: 8D 07 20  STA $2007
C - - - - - 0x03EF45 0F:EF35: C8        INY
C - - - - - 0x03EF46 0F:EF36: 4C 29 ED  JMP loc_ED29_read_next_data



loc_EF39_0A:
; repeat writing the same tile
C D 3 - - - 0x03EF49 0F:EF39: BE 00 03  LDX ram_ppu_buffer,Y
C - - - - - 0x03EF4C 0F:EF3C: C8        INY
bra_EF3D_loop:
C - - - - - 0x03EF4D 0F:EF3D: B9 00 03  LDA ram_ppu_buffer,Y
C - - - - - 0x03EF50 0F:EF40: 8D 07 20  STA $2007
C - - - - - 0x03EF53 0F:EF43: C8        INY
C - - - - - 0x03EF54 0F:EF44: CA        DEX
C - - - - - 0x03EF55 0F:EF45: D0 F6     BNE bra_EF3D_loop
C - - - - - 0x03EF57 0F:EF47: 4C 29 ED  JMP loc_ED29_read_next_data



loc_0x03EF5A:
; A = 00
; bzk optimize, write LDA 00 here
C D 3 - - - 0x03EF5A 0F:EF4A: 8D AA 05  STA ram_05AA_plr
C - - - - - 0x03EF5D 0F:EF4D: A0 02     LDY #$02
C - - - - - 0x03EF5F 0F:EF4F: 8C 93 05  STY ram_plr_anim_cnt
C - - - - - 0x03EF62 0F:EF52: 88        DEY ; 01
C - - - - - 0x03EF63 0F:EF53: 8C 7C 05  STY ram_plr_anim_timer
C - - - - - 0x03EF66 0F:EF56: 60        RTS



sub_EF57_prepare_player_animation:
sub_0x03EF67_prepare_player_animation:
; in
    ; A = 
C - - - - - 0x03EF67 0F:EF57: A2 00     LDX #$00
; bzk optimize, BEQ
C - - - - - 0x03EF69 0F:EF59: 4C 60 EF  JMP loc_EF60



sub_EF5C_prepare_animation:
sub_0x03EF6C_prepare_animation:
loc_0x03EF6C_prepare_animation:
; in
    ; A = con_obj_type
    ; Y = 
C D 3 - - - 0x03EF6C 0F:EF5C: 9D 8C 04  STA ram_obj_type,X
C - - - - - 0x03EF6F 0F:EF5F: 98        TYA
loc_EF60:
sub_0x03EF70:
; in
    ; A = 
C D 3 - - - 0x03EF70 0F:EF60: 9D AA 05  STA ram_05AA_obj,X
C - - - - - 0x03EF73 0F:EF63: A9 00     LDA #$00
C - - - - - 0x03EF75 0F:EF65: 9D 93 05  STA ram_obj_anim_cnt,X
C - - - - - 0x03EF78 0F:EF68: A9 01     LDA #$01
C - - - - - 0x03EF7A 0F:EF6A: 9D 7C 05  STA ram_obj_anim_timer,X
; Z = 0
C - - - - - 0x03EF7D 0F:EF6D: 60        RTS



sub_0x03EF7E:
loc_0x03EF7E:
C D 3 - - - 0x03EF7E 0F:EF6E: 20 5C EF  JSR sub_EF5C_prepare_animation
C - - - - - 0x03EF81 0F:EF71: D0 02     BNE bra_EF75    ; jmp



loc_EF73:
sub_0x03EF83:
loc_0x03EF83:
C D 3 - - - 0x03EF83 0F:EF73: A2 00     LDX #$00
sub_EF75:
bra_EF75:
sub_0x03EF85:
loc_0x03EF85:
C D 3 - - - 0x03EF85 0F:EF75: DE 7C 05  DEC ram_obj_anim_timer,X
C - - - - - 0x03EF88 0F:EF78: F0 01     BEQ bra_EF7B
C - - - - - 0x03EF8A 0F:EF7A: 60        RTS
bra_EF7B:
sub_0x03EF8B:
C - - - - - 0x03EF8B 0F:EF7B: BC 8C 04  LDY ram_obj_type,X
C - - - - - 0x03EF8E 0F:EF7E: B9 B4 EF  LDA tbl_EFB4,Y
C - - - - - 0x03EF91 0F:EF81: 85 08     STA ram_0008_t000_data
C - - - - - 0x03EF93 0F:EF83: B9 B5 EF  LDA tbl_EFB4 + $01,Y
C - - - - - 0x03EF96 0F:EF86: 85 09     STA ram_0008_t000_data + $01
C - - - - - 0x03EF98 0F:EF88: BD AA 05  LDA ram_05AA_obj,X
; * 03
C - - - - - 0x03EF9B 0F:EF8B: 0A        ASL
C - - - - - 0x03EF9C 0F:EF8C: 18        CLC
C - - - - - 0x03EF9D 0F:EF8D: 7D AA 05  ADC ram_05AA_obj,X
C - - - - - 0x03EFA0 0F:EF90: A8        TAY
; bzk bug, this reads F3A4 and F3B3
C - - - - - 0x03EFA1 0F:EF91: B1 08     LDA (ram_0008_t000_data),Y
C - - - - - 0x03EFA3 0F:EF93: 18        CLC
C - - - - - 0x03EFA4 0F:EF94: 7D 93 05  ADC ram_obj_anim_cnt,X
C - - - - - 0x03EFA7 0F:EF97: 9D 00 04  STA ram_obj_anim_id,X
C - - - - - 0x03EFAA 0F:EF9A: C8        INY
; bzk bug, this reads F3A5 and F3B4
C - - - - - 0x03EFAB 0F:EF9B: B1 08     LDA (ram_0008_t000_data),Y
C - - - - - 0x03EFAD 0F:EF9D: 9D 7C 05  STA ram_obj_anim_timer,X
C - - - - - 0x03EFB0 0F:EFA0: C8        INY
C - - - - - 0x03EFB1 0F:EFA1: FE 93 05  INC ram_obj_anim_cnt,X
C - - - - - 0x03EFB4 0F:EFA4: FE 93 05  INC ram_obj_anim_cnt,X
C - - - - - 0x03EFB7 0F:EFA7: BD 93 05  LDA ram_obj_anim_cnt,X
; bzk bug, this reads F3A6 and F3B5
C - - - - - 0x03EFBA 0F:EFAA: D1 08     CMP (ram_0008_t000_data),Y
C - - - - - 0x03EFBC 0F:EFAC: 90 05     BCC bra_EFB3_RTS
C - - - - - 0x03EFBE 0F:EFAE: A9 00     LDA #$00
C - - - - - 0x03EFC0 0F:EFB0: 9D 93 05  STA ram_obj_anim_cnt,X
bra_EFB3_RTS:
C - - - - - 0x03EFC3 0F:EFB3: 60        RTS



tbl_EFB4:
tbl_0x03EFC4:   ; Y = 0A
- D 3 - - - 0x03EFC4 0F:EFB4: D2 EF     .word _off019_EFD2_00
- D 3 - - - 0x03EFC6 0F:EFB6: D2 EF     .word _off019_EFD2_02
- D 3 - - - 0x03EFC8 0F:EFB8: D2 EF     .word _off019_EFD2_04
- D 3 - - - 0x03EFCA 0F:EFBA: D2 EF     .word _off019_EFD2_06
- D 3 - - - 0x03EFCC 0F:EFBC: B9 F0     .word _off019_F0B9_08
- D 3 - - - 0x03EFCE 0F:EFBE: 58 F1     .word _off019_F158_0A
- D 3 - - - 0x03EFD0 0F:EFC0: 02 F0     .word _off019_F002_0C
- D 3 - - - 0x03EFD2 0F:EFC2: 3E F3     .word _off019_F33E_0E
- D 3 - - - 0x03EFD4 0F:EFC4: 57 F2     .word _off019_F257_10
- D 3 - - - 0x03EFD6 0F:EFC6: 31 F1     .word _off019_F131_12
- D 3 - - - 0x03EFD8 0F:EFC8: 62 F3     .word _off019_F362_14
- D 3 - - - 0x03EFDA 0F:EFCA: D2 EF     .word _off019_EFD2_16
- D 3 - - - 0x03EFDC 0F:EFCC: D2 EF     .word _off019_EFD2_18
- D 3 - - - 0x03EFDE 0F:EFCE: D2 EF     .word _off019_EFD2_1A
- D 3 - - - 0x03EFE0 0F:EFD0: D2 EF     .word _off019_EFD2_1C



_off019_EFD2_00:
_off019_EFD2_02:
_off019_EFD2_04:
_off019_EFD2_06:
_off019_EFD2_16:
_off019_EFD2_18:
_off019_EFD2_1A:
_off019_EFD2_1C:
;                                              +--------------- animation
;                                              |    +---------- timer
;                                              |    |    +----- compare with ?
;                                              |    |    |
- D 3 - I - 0x03EFE2 0F:EFD2: 02        .byte $02, $08, $08   ; 00 
- D 3 - I - 0x03EFE5 0F:EFD5: 18        .byte $18, $08, $04   ; 01 
- D 3 - I - 0x03EFE8 0F:EFD8: 1E        .byte $1E, $08, $04   ; 02 
- D 3 - I - 0x03EFEB 0F:EFDB: 24        .byte $24, $08, $06   ; 03 
- D 3 - I - 0x03EFEE 0F:EFDE: 24        .byte $24, $04, $06   ; 04 
- D 3 - I - 0x03EFF1 0F:EFE1: 2A        .byte $2A, $06, $0C   ; 05 
- D 3 - I - 0x03EFF4 0F:EFE4: 34        .byte $34, $06, $0C   ; 06 
- D 3 - I - 0x03EFF7 0F:EFE7: 40        .byte $40, $06, $06   ; 07 
- D 3 - I - 0x03EFFA 0F:EFEA: 46        .byte $46, $06, $08   ; 08 
- D 3 - I - 0x03EFFD 0F:EFED: 46        .byte $46, $06, $08   ; 09 
- D 3 - I - 0x03F000 0F:EFF0: 4E        .byte $4E, $06, $04   ; 0A 
- D 3 - I - 0x03F003 0F:EFF3: 40        .byte $40, $04, $04   ; 0B 
- D 3 - I - 0x03F006 0F:EFF6: 56        .byte $56, $04, $0C   ; 0C 
- D 3 - I - 0x03F009 0F:EFF9: 36        .byte $36, $08, $04   ; 0D 
- D 3 - I - 0x03F00C 0F:EFFC: 66        .byte $66, $08, $06   ; 0E 
- D 3 - I - 0x03F00F 0F:EFFF: 6C        .byte $6C, $08, $04   ; 0F 



_off019_F002_0C:
;                                              +--------------- animation
;                                              |    +---------- timer
;                                              |    |    +----- compare with ?
;                                              |    |    |
- D 3 - I - 0x03F012 0F:F002: 02        .byte $02, $0A, $04   ; 00 
- D 3 - I - 0x03F015 0F:F005: 04        .byte $04, $0A, $04   ; 01 
- D 3 - I - 0x03F018 0F:F008: 08        .byte $08, $08, $02   ; 02 
- D 3 - I - 0x03F01B 0F:F00B: 0A        .byte $0A, $08, $02   ; 03 
- D 3 - I - 0x03F01E 0F:F00E: 0C        .byte $0C, $08, $02   ; 04 
- D 3 - I - 0x03F021 0F:F011: 0E        .byte $0E, $08, $02   ; 05 
- D 3 - I - 0x03F024 0F:F014: 10        .byte $10, $08, $02   ; 06 
- D 3 - I - 0x03F027 0F:F017: 12        .byte $12, $08, $02   ; 07 
- D 3 - I - 0x03F02A 0F:F01A: 14        .byte $14, $08, $02   ; 08 
- D 3 - I - 0x03F02D 0F:F01D: 16        .byte $16, $08, $02   ; 09 
- D 3 - I - 0x03F030 0F:F020: 18        .byte $18, $08, $02   ; 0A 
- D 3 - I - 0x03F033 0F:F023: 1A        .byte $1A, $08, $02   ; 0B 
- D 3 - I - 0x03F036 0F:F026: 1C        .byte $1C, $08, $02   ; 0C 
- D 3 - I - 0x03F039 0F:F029: 1E        .byte $1E, $08, $02   ; 0D 
- D 3 - I - 0x03F03C 0F:F02C: 20        .byte $20, $08, $02   ; 0E 
- D 3 - I - 0x03F03F 0F:F02F: 22        .byte $22, $08, $02   ; 0F 
- D 3 - I - 0x03F042 0F:F032: 24        .byte $24, $08, $02   ; 10 
- D 3 - I - 0x03F045 0F:F035: 26        .byte $26, $08, $02   ; 11 
- D 3 - I - 0x03F048 0F:F038: 28        .byte $28, $08, $02   ; 12 
- D 3 - I - 0x03F04B 0F:F03B: 2A        .byte $2A, $08, $02   ; 13 
- D 3 - I - 0x03F04E 0F:F03E: 2C        .byte $2C, $08, $02   ; 14 
- D 3 - I - 0x03F051 0F:F041: 2E        .byte $2E, $08, $02   ; 15 
- D 3 - I - 0x03F054 0F:F044: 30        .byte $30, $08, $02   ; 16 
- D 3 - I - 0x03F057 0F:F047: 32        .byte $32, $08, $02   ; 17 
- D 3 - I - 0x03F05A 0F:F04A: 24        .byte $24, $08, $02   ; 18 
- D 3 - I - 0x03F05D 0F:F04D: 36        .byte $36, $08, $02   ; 19 
- - - - - - 0x03F060 0F:F050: 38        .byte $38, $08, $02   ; 1A 
- - - - - - 0x03F063 0F:F053: 3A        .byte $3A, $08, $02   ; 1B 
- - - - - - 0x03F066 0F:F056: 3C        .byte $3C, $08, $02   ; 1C 
- D 3 - I - 0x03F069 0F:F059: 3E        .byte $3E, $08, $02   ; 1D 
- - - - - - 0x03F06C 0F:F05C: 40        .byte $40, $08, $02   ; 1E 
- D 3 - I - 0x03F06F 0F:F05F: 42        .byte $42, $08, $02   ; 1F 
- D 3 - I - 0x03F072 0F:F062: 44        .byte $44, $08, $02   ; 20 
- - - - - - 0x03F075 0F:F065: 46        .byte $46, $08, $02   ; 21 
- D 3 - I - 0x03F078 0F:F068: 50        .byte $50, $08, $02   ; 22 
- D 3 - I - 0x03F07B 0F:F06B: 4E        .byte $4E, $08, $02   ; 23 
- D 3 - I - 0x03F07E 0F:F06E: 4C        .byte $4C, $08, $02   ; 24 
- D 3 - I - 0x03F081 0F:F071: 4A        .byte $4A, $08, $02   ; 25 
- D 3 - I - 0x03F084 0F:F074: 48        .byte $48, $08, $02   ; 26 
- D 3 - I - 0x03F087 0F:F077: 52        .byte $52, $08, $02   ; 27 
- D 3 - I - 0x03F08A 0F:F07A: 54        .byte $54, $08, $02   ; 28 
- D 3 - I - 0x03F08D 0F:F07D: 56        .byte $56, $08, $02   ; 29 
- D 3 - I - 0x03F090 0F:F080: 58        .byte $58, $08, $02   ; 2A 
- D 3 - I - 0x03F093 0F:F083: 5A        .byte $5A, $08, $02   ; 2B 
- D 3 - I - 0x03F096 0F:F086: 5C        .byte $5C, $08, $02   ; 2C 
- D 3 - I - 0x03F099 0F:F089: 5E        .byte $5E, $08, $02   ; 2D 
- D 3 - I - 0x03F09C 0F:F08C: 60        .byte $60, $08, $02   ; 2E 
- D 3 - I - 0x03F09F 0F:F08F: 62        .byte $62, $08, $02   ; 2F 
- D 3 - I - 0x03F0A2 0F:F092: 64        .byte $64, $08, $02   ; 30 
- D 3 - I - 0x03F0A5 0F:F095: 66        .byte $66, $08, $02   ; 31 
- D 3 - I - 0x03F0A8 0F:F098: 68        .byte $68, $08, $02   ; 32 
- D 3 - I - 0x03F0AB 0F:F09B: 6A        .byte $6A, $08, $02   ; 33 
- D 3 - I - 0x03F0AE 0F:F09E: 6C        .byte $6C, $08, $02   ; 34 
- D 3 - I - 0x03F0B1 0F:F0A1: 6E        .byte $6E, $08, $02   ; 35 
- D 3 - I - 0x03F0B4 0F:F0A4: BA        .byte $BA, $08, $08   ; 36 
- D 3 - I - 0x03F0B7 0F:F0A7: C2        .byte $C2, $08, $08   ; 37 
- D 3 - I - 0x03F0BA 0F:F0AA: CA        .byte $CA, $08, $08   ; 38 
- D 3 - I - 0x03F0BD 0F:F0AD: E0        .byte $E0, $09, $08   ; 39 
- D 3 - I - 0x03F0C0 0F:F0B0: EC        .byte $EC, $07, $04   ; 3A 
- D 3 - I - 0x03F0C3 0F:F0B3: F0        .byte $F0, $09, $04   ; 3B 
- D 3 - I - 0x03F0C6 0F:F0B6: FE        .byte $FE, $08, $02   ; 3C 



_off019_F0B9_08:
;                                              +--------------- animation
;                                              |    +---------- timer
;                                              |    |    +----- compare with ?
;                                              |    |    |
- D 3 - I - 0x03F0C9 0F:F0B9: 02        .byte $02, $10, $04   ; 00 
- D 3 - I - 0x03F0CC 0F:F0BC: 0A        .byte $0A, $08, $08   ; 01 
- D 3 - I - 0x03F0CF 0F:F0BF: 1A        .byte $1A, $0A, $04   ; 02 
- D 3 - I - 0x03F0D2 0F:F0C2: 20        .byte $20, $0A, $08   ; 03 
- D 3 - I - 0x03F0D5 0F:F0C5: 28        .byte $28, $0A, $04   ; 04 
- D 3 - I - 0x03F0D8 0F:F0C8: 92        .byte $92, $10, $04   ; 05 
- D 3 - I - 0x03F0DB 0F:F0CB: A8        .byte $A8, $0A, $04   ; 06 
- D 3 - I - 0x03F0DE 0F:F0CE: DE        .byte $DE, $18, $04   ; 07 
- D 3 - I - 0x03F0E1 0F:F0D1: 8C        .byte $8C, $0C, $04   ; 08 
- D 3 - I - 0x03F0E4 0F:F0D4: 4C        .byte $4C, $0A, $04   ; 09 
- - - - - - 0x03F0E7 0F:F0D7: 62        .byte $62, $0A, $04   ; 0A 
- D 3 - I - 0x03F0EA 0F:F0DA: 34        .byte $34, $10, $04   ; 0B 
- D 3 - I - 0x03F0ED 0F:F0DD: BC        .byte $BC, $0C, $04   ; 0C 
- D 3 - I - 0x03F0F0 0F:F0E0: 2C        .byte $2C, $0E, $04   ; 0D 
- - - - - - 0x03F0F3 0F:F0E3: 30        .byte $30, $0E, $04   ; 0E 
- D 3 - I - 0x03F0F6 0F:F0E6: 42        .byte $42, $10, $04   ; 0F 
- D 3 - I - 0x03F0F9 0F:F0E9: 58        .byte $58, $0A, $04   ; 10 
- - - - - - 0x03F0FC 0F:F0EC: 62        .byte $62, $0A, $04   ; 11 
- D 3 - I - 0x03F0FF 0F:F0EF: 68        .byte $68, $0C, $08   ; 12 
- - - - - - 0x03F102 0F:F0F2: 88        .byte $88, $0C, $04   ; 13 
- D 3 - I - 0x03F105 0F:F0F5: 74        .byte $74, $0C, $0A   ; 14 
- - - - - - 0x03F108 0F:F0F8: AC        .byte $AC, $0A, $06   ; 15 
- D 3 - I - 0x03F10B 0F:F0FB: A2        .byte $A2, $0C, $06   ; 16 
- D 3 - I - 0x03F10E 0F:F0FE: 96        .byte $96, $08, $06   ; 17 
- D 3 - I - 0x03F111 0F:F101: B0        .byte $B0, $0C, $04   ; 18 
- D 3 - I - 0x03F114 0F:F104: 70        .byte $70, $0A, $04   ; 19 
- D 3 - I - 0x03F117 0F:F107: 9C        .byte $9C, $0C, $06   ; 1A 
- D 3 - I - 0x03F11A 0F:F10A: B8        .byte $B8, $0A, $04   ; 1B 
- - - - - - 0x03F11D 0F:F10D: BC        .byte $BC, $0C, $04   ; 1C 
- D 3 - I - 0x03F120 0F:F110: CA        .byte $CA, $18, $04   ; 1D 
- D 3 - I - 0x03F123 0F:F113: DE        .byte $DE, $0C, $08   ; 1E 
- D 3 - I - 0x03F126 0F:F116: DA        .byte $DA, $0C, $04   ; 1F 
- D 3 - I - 0x03F129 0F:F119: E6        .byte $E6, $18, $04   ; 20 
- D 3 - I - 0x03F12C 0F:F11C: E6        .byte $E6, $0C, $08   ; 21 
- D 3 - I - 0x03F12F 0F:F11F: 9C        .byte $9C, $18, $06   ; 22 
- D 3 - I - 0x03F132 0F:F122: 14        .byte $14, $08, $06   ; 23 
- D 3 - I - 0x03F135 0F:F125: D0        .byte $D0, $0A, $08   ; 24 
- D 3 - I - 0x03F138 0F:F128: 14        .byte $14, $08, $04   ; 25 
- D 3 - I - 0x03F13B 0F:F12B: 92        .byte $92, $14, $04   ; 26 
- D 3 - I - 0x03F13E 0F:F12E: 7E        .byte $7E, $0A, $04   ; 27 



_off019_F131_12:
;                                              +--------------- animation
;                                              |    +---------- timer
;                                              |    |    +----- compare with ?
;                                              |    |    |
- D 3 - I - 0x03F141 0F:F131: 1A        .byte $1A, $08, $06   ; 00 
- - - - - - 0x03F144 0F:F134: 20        .byte $20, $14, $04   ; 01 
- D 3 - I - 0x03F147 0F:F137: 24        .byte $24, $0C, $04   ; 02 
- D 3 - I - 0x03F14A 0F:F13A: 28        .byte $28, $10, $06   ; 03 
- D 3 - I - 0x03F14D 0F:F13D: 2E        .byte $2E, $06, $04   ; 04 
- D 3 - I - 0x03F150 0F:F140: 34        .byte $34, $0A, $06   ; 05 
- D 3 - I - 0x03F153 0F:F143: 0C        .byte $0C, $08, $04   ; 06 
- D 3 - I - 0x03F156 0F:F146: 56        .byte $56, $04, $04   ; 07 
- D 3 - I - 0x03F159 0F:F149: 72        .byte $72, $0C, $04   ; 08 
- D 3 - I - 0x03F15C 0F:F14C: 76        .byte $76, $0C, $04   ; 09 
- D 3 - I - 0x03F15F 0F:F14F: 64        .byte $64, $04, $04   ; 0A 
- D 3 - I - 0x03F162 0F:F152: 68        .byte $68, $08, $08   ; 0B 
- D 3 - I - 0x03F165 0F:F155: 7A        .byte $7A, $0A, $04   ; 0C 



_off019_F158_0A:
;                                              +--------------- animation
;                                              |    +---------- timer
;                                              |    |    +----- compare with ?
;                                              |    |    |
- D 3 - I - 0x03F168 0F:F158: 02        .byte $02, $08, $06   ; 00 
- D 3 - I - 0x03F16B 0F:F15B: 0A        .byte $0A, $04, $02   ; 01 
- D 3 - I - 0x03F16E 0F:F15E: 0C        .byte $0C, $18, $02   ; 02 
- D 3 - I - 0x03F171 0F:F161: 0E        .byte $0E, $18, $02   ; 03 
- D 3 - I - 0x03F174 0F:F164: 10        .byte $10, $08, $02   ; 04 
- D 3 - I - 0x03F177 0F:F167: 12        .byte $12, $08, $06   ; 05 
- D 3 - I - 0x03F17A 0F:F16A: 18        .byte $18, $10, $08   ; 06 
- D 3 - I - 0x03F17D 0F:F16D: 18        .byte $18, $08, $08   ; 07 
- D 3 - I - 0x03F180 0F:F170: 20        .byte $20, $10, $02   ; 08 
- D 3 - I - 0x03F183 0F:F173: 22        .byte $22, $10, $02   ; 09 
- D 3 - I - 0x03F186 0F:F176: 26        .byte $26, $08, $02   ; 0A 
- D 3 - I - 0x03F189 0F:F179: 28        .byte $28, $08, $02   ; 0B 
- D 3 - I - 0x03F18C 0F:F17C: 2E        .byte $2E, $08, $02   ; 0C 
- D 3 - I - 0x03F18F 0F:F17F: 02        .byte $02, $08, $02   ; 0D 
- D 3 - I - 0x03F192 0F:F182: 04        .byte $04, $08, $02   ; 0E 
- D 3 - I - 0x03F195 0F:F185: 06        .byte $06, $08, $02   ; 0F 
- D 3 - I - 0x03F198 0F:F188: 04        .byte $04, $08, $02   ; 10 
- - - - - - 0x03F19B 0F:F18B: 38        .byte $38, $08, $02   ; 11 
- D 3 - I - 0x03F19E 0F:F18E: 3A        .byte $3A, $08, $04   ; 12 
- D 3 - I - 0x03F1A1 0F:F191: 3E        .byte $3E, $08, $04   ; 13 
- D 3 - I - 0x03F1A4 0F:F194: 42        .byte $42, $08, $04   ; 14 
- - - - - - 0x03F1A7 0F:F197: 46        .byte $46, $08, $04   ; 15 
- D 3 - I - 0x03F1AA 0F:F19A: 4E        .byte $4E, $08, $08   ; 16 
- D 3 - I - 0x03F1AD 0F:F19D: 4C        .byte $4C, $08, $02   ; 17 
- D 3 - I - 0x03F1B0 0F:F1A0: 4A        .byte $4A, $08, $02   ; 18 
- D 3 - I - 0x03F1B3 0F:F1A3: 3A        .byte $3A, $08, $02   ; 19 
- D 3 - I - 0x03F1B6 0F:F1A6: 3C        .byte $3C, $08, $02   ; 1A 
- D 3 - I - 0x03F1B9 0F:F1A9: 56        .byte $56, $08, $04   ; 1B 
- D 3 - I - 0x03F1BC 0F:F1AC: 5A        .byte $5A, $08, $04   ; 1C 
- D 3 - I - 0x03F1BF 0F:F1AF: 5E        .byte $5E, $08, $04   ; 1D 
- D 3 - I - 0x03F1C2 0F:F1B2: 62        .byte $62, $08, $04   ; 1E 
- D 3 - I - 0x03F1C5 0F:F1B5: 66        .byte $66, $08, $02   ; 1F 
- D 3 - I - 0x03F1C8 0F:F1B8: 66        .byte $66, $08, $06   ; 20 
- D 3 - I - 0x03F1CB 0F:F1BB: 74        .byte $74, $08, $02   ; 21 
- D 3 - I - 0x03F1CE 0F:F1BE: 76        .byte $76, $08, $02   ; 22 
- D 3 - I - 0x03F1D1 0F:F1C1: 78        .byte $78, $08, $02   ; 23 
- D 3 - I - 0x03F1D4 0F:F1C4: 7A        .byte $7A, $08, $04   ; 24 
- D 3 - I - 0x03F1D7 0F:F1C7: 7E        .byte $7E, $08, $04   ; 25 
- - - - - - 0x03F1DA 0F:F1CA: 80        .byte $80, $08, $04   ; 26 
- - - - - - 0x03F1DD 0F:F1CD: 82        .byte $82, $08, $04   ; 27 
- D 3 - I - 0x03F1E0 0F:F1D0: 72        .byte $72, $08, $02   ; 28 
- D 3 - I - 0x03F1E3 0F:F1D3: 70        .byte $70, $08, $02   ; 29 
- D 3 - I - 0x03F1E6 0F:F1D6: 6E        .byte $6E, $08, $02   ; 2A 
- D 3 - I - 0x03F1E9 0F:F1D9: 6C        .byte $6C, $08, $02   ; 2B 
- D 3 - I - 0x03F1EC 0F:F1DC: 6C        .byte $6C, $08, $02   ; 2C 
- D 3 - I - 0x03F1EF 0F:F1DF: 6E        .byte $6E, $08, $02   ; 2D 
- D 3 - I - 0x03F1F2 0F:F1E2: 70        .byte $70, $08, $02   ; 2E 
- D 3 - I - 0x03F1F5 0F:F1E5: 72        .byte $72, $08, $02   ; 2F 
- D 3 - I - 0x03F1F8 0F:F1E8: 84        .byte $84, $08, $02   ; 30 
- D 3 - I - 0x03F1FB 0F:F1EB: 86        .byte $86, $08, $02   ; 31 
- D 3 - I - 0x03F1FE 0F:F1EE: 88        .byte $88, $08, $02   ; 32 
- D 3 - I - 0x03F201 0F:F1F1: 8A        .byte $8A, $08, $0A   ; 33 
- - - - - - 0x03F204 0F:F1F4: 9A        .byte $9A, $08, $02   ; 34 
- - - - - - 0x03F207 0F:F1F7: 9C        .byte $9C, $08, $02   ; 35 
- - - - - - 0x03F20A 0F:F1FA: 9E        .byte $9E, $08, $02   ; 36 
- - - - - - 0x03F20D 0F:F1FD: A0        .byte $A0, $08, $02   ; 37 
- - - - - - 0x03F210 0F:F200: A2        .byte $A2, $08, $02   ; 38 
- - - - - - 0x03F213 0F:F203: A4        .byte $A4, $08, $02   ; 39 
- - - - - - 0x03F216 0F:F206: A6        .byte $A6, $08, $02   ; 3A 
- - - - - - 0x03F219 0F:F209: A8        .byte $A8, $08, $02   ; 3B 
- - - - - - 0x03F21C 0F:F20C: AA        .byte $AA, $08, $02   ; 3C 
- - - - - - 0x03F21F 0F:F20F: AC        .byte $AC, $08, $02   ; 3D 
- - - - - - 0x03F222 0F:F212: AE        .byte $AE, $08, $02   ; 3E 
- - - - - - 0x03F225 0F:F215: B0        .byte $B0, $08, $02   ; 3F 
- - - - - - 0x03F228 0F:F218: B2        .byte $B2, $08, $02   ; 40 
- - - - - - 0x03F22B 0F:F21B: B4        .byte $B4, $08, $02   ; 41 
- - - - - - 0x03F22E 0F:F21E: B6        .byte $B6, $08, $02   ; 42 
- D 3 - I - 0x03F231 0F:F221: B8        .byte $B8, $08, $02   ; 43 
- D 3 - I - 0x03F234 0F:F224: BA        .byte $BA, $08, $02   ; 44 
- D 3 - I - 0x03F237 0F:F227: BC        .byte $BC, $08, $02   ; 45 
- D 3 - I - 0x03F23A 0F:F22A: BE        .byte $BE, $08, $02   ; 46 
- D 3 - I - 0x03F23D 0F:F22D: C0        .byte $C0, $08, $02   ; 47 
- D 3 - I - 0x03F240 0F:F230: C2        .byte $C2, $08, $02   ; 48 
- D 3 - I - 0x03F243 0F:F233: C4        .byte $C4, $08, $02   ; 49 
- D 3 - I - 0x03F246 0F:F236: C6        .byte $C6, $08, $02   ; 4A 
- D 3 - I - 0x03F249 0F:F239: C8        .byte $C8, $08, $02   ; 4B 
- D 3 - I - 0x03F24C 0F:F23C: CA        .byte $CA, $08, $02   ; 4C 
- D 3 - I - 0x03F24F 0F:F23F: CC        .byte $CC, $08, $02   ; 4D 
- D 3 - I - 0x03F252 0F:F242: CE        .byte $CE, $08, $02   ; 4E 
- D 3 - I - 0x03F255 0F:F245: D0        .byte $D0, $08, $02   ; 4F 
- D 3 - I - 0x03F258 0F:F248: D2        .byte $D2, $08, $02   ; 50 
- D 3 - I - 0x03F25B 0F:F24B: D4        .byte $D4, $08, $02   ; 51 
- D 3 - I - 0x03F25E 0F:F24E: D6        .byte $D6, $08, $02   ; 52 
- D 3 - I - 0x03F261 0F:F251: D8        .byte $D8, $08, $02   ; 53 
- D 3 - I - 0x03F264 0F:F254: DA        .byte $DA, $08, $02   ; 54 



_off019_F257_10:
;                                              +--------------- animation
;                                              |    +---------- timer
;                                              |    |    +----- compare with ?
;                                              |    |    |
- D 3 - I - 0x03F267 0F:F257: 02        .byte $02, $08, $02   ; 00 
- D 3 - I - 0x03F26A 0F:F25A: 04        .byte $04, $08, $02   ; 01 
- D 3 - I - 0x03F26D 0F:F25D: 06        .byte $06, $08, $02   ; 02 
- D 3 - I - 0x03F270 0F:F260: 08        .byte $08, $08, $02   ; 03 
- D 3 - I - 0x03F273 0F:F263: 0A        .byte $0A, $08, $02   ; 04 
- D 3 - I - 0x03F276 0F:F266: 0C        .byte $0C, $08, $02   ; 05 
- D 3 - I - 0x03F279 0F:F269: 0E        .byte $0E, $18, $02   ; 06 
- D 3 - I - 0x03F27C 0F:F26C: 10        .byte $10, $18, $02   ; 07 
- D 3 - I - 0x03F27F 0F:F26F: 12        .byte $12, $08, $02   ; 08 
- D 3 - I - 0x03F282 0F:F272: 14        .byte $14, $08, $02   ; 09 
- D 3 - I - 0x03F285 0F:F275: 16        .byte $16, $08, $02   ; 0A 
- D 3 - I - 0x03F288 0F:F278: 18        .byte $18, $08, $02   ; 0B 
- D 3 - I - 0x03F28B 0F:F27B: 1A        .byte $1A, $08, $02   ; 0C 
- D 3 - I - 0x03F28E 0F:F27E: 1C        .byte $1C, $08, $02   ; 0D 
- - - - - - 0x03F291 0F:F281: 1E        .byte $1E, $08, $06   ; 0E 
- D 3 - I - 0x03F294 0F:F284: 24        .byte $24, $08, $02   ; 0F 
- D 3 - I - 0x03F297 0F:F287: 26        .byte $26, $08, $02   ; 10 
- D 3 - I - 0x03F29A 0F:F28A: 28        .byte $28, $08, $02   ; 11 
- D 3 - I - 0x03F29D 0F:F28D: 2A        .byte $2A, $08, $02   ; 12 
- D 3 - I - 0x03F2A0 0F:F290: 2C        .byte $2C, $08, $06   ; 13 
- D 3 - I - 0x03F2A3 0F:F293: 32        .byte $32, $08, $02   ; 14 
- D 3 - I - 0x03F2A6 0F:F296: 34        .byte $34, $08, $02   ; 15 
- D 3 - I - 0x03F2A9 0F:F299: 36        .byte $36, $08, $02   ; 16 
- D 3 - I - 0x03F2AC 0F:F29C: 38        .byte $38, $08, $02   ; 17 
- D 3 - I - 0x03F2AF 0F:F29F: 3A        .byte $3A, $08, $02   ; 18 
- D 3 - I - 0x03F2B2 0F:F2A2: 3C        .byte $3C, $08, $02   ; 19 
- D 3 - I - 0x03F2B5 0F:F2A5: 3E        .byte $3E, $08, $02   ; 1A 
- D 3 - I - 0x03F2B8 0F:F2A8: 40        .byte $40, $08, $04   ; 1B 
- D 3 - I - 0x03F2BB 0F:F2AB: 42        .byte $42, $08, $02   ; 1C 
- D 3 - I - 0x03F2BE 0F:F2AE: 44        .byte $44, $08, $02   ; 1D 
- D 3 - I - 0x03F2C1 0F:F2B1: 46        .byte $46, $08, $02   ; 1E 
- D 3 - I - 0x03F2C4 0F:F2B4: 48        .byte $48, $08, $02   ; 1F 
- D 3 - I - 0x03F2C7 0F:F2B7: 2C        .byte $2C, $08, $02   ; 20 
- D 3 - I - 0x03F2CA 0F:F2BA: 4A        .byte $4A, $08, $02   ; 21 
- D 3 - I - 0x03F2CD 0F:F2BD: 4C        .byte $4C, $08, $02   ; 22 
- D 3 - I - 0x03F2D0 0F:F2C0: 4E        .byte $4E, $08, $02   ; 23 
- D 3 - I - 0x03F2D3 0F:F2C3: 50        .byte $50, $08, $02   ; 24 
- D 3 - I - 0x03F2D6 0F:F2C6: 52        .byte $52, $08, $02   ; 25 
- D 3 - I - 0x03F2D9 0F:F2C9: 54        .byte $54, $08, $02   ; 26 
- D 3 - I - 0x03F2DC 0F:F2CC: 56        .byte $56, $08, $02   ; 27 
- D 3 - I - 0x03F2DF 0F:F2CF: 58        .byte $58, $08, $02   ; 28 
- D 3 - I - 0x03F2E2 0F:F2D2: 5A        .byte $5A, $08, $02   ; 29 
- D 3 - I - 0x03F2E5 0F:F2D5: 5C        .byte $5C, $08, $02   ; 2A 
- D 3 - I - 0x03F2E8 0F:F2D8: 62        .byte $62, $08, $02   ; 2B 
- D 3 - I - 0x03F2EB 0F:F2DB: 64        .byte $64, $08, $02   ; 2C 
- D 3 - I - 0x03F2EE 0F:F2DE: 66        .byte $66, $08, $02   ; 2D 
- D 3 - I - 0x03F2F1 0F:F2E1: 70        .byte $70, $08, $02   ; 2E 
- D 3 - I - 0x03F2F4 0F:F2E4: 68        .byte $68, $08, $02   ; 2F 
- D 3 - I - 0x03F2F7 0F:F2E7: 68        .byte $68, $08, $08   ; 30 
- D 3 - I - 0x03F2FA 0F:F2EA: 68        .byte $68, $08, $02   ; 31 
- D 3 - I - 0x03F2FD 0F:F2ED: 70        .byte $70, $08, $02   ; 32 
- D 3 - I - 0x03F300 0F:F2F0: 6C        .byte $6C, $08, $02   ; 33 
- D 3 - I - 0x03F303 0F:F2F3: 6A        .byte $6A, $08, $02   ; 34 
- D 3 - I - 0x03F306 0F:F2F6: 68        .byte $68, $08, $02   ; 35 
- D 3 - I - 0x03F309 0F:F2F9: 6C        .byte $6C, $08, $02   ; 36 
- D 3 - I - 0x03F30C 0F:F2FC: 70        .byte $70, $08, $02   ; 37 
- D 3 - I - 0x03F30F 0F:F2FF: 68        .byte $68, $08, $02   ; 38 
- D 3 - I - 0x03F312 0F:F302: 72        .byte $72, $08, $06   ; 39 
- D 3 - I - 0x03F315 0F:F305: 78        .byte $78, $08, $02   ; 3A 
- D 3 - I - 0x03F318 0F:F308: 7A        .byte $7A, $08, $02   ; 3B 
- D 3 - I - 0x03F31B 0F:F30B: 7C        .byte $7C, $08, $02   ; 3C 
- D 3 - I - 0x03F31E 0F:F30E: 7E        .byte $7E, $08, $02   ; 3D 
- D 3 - I - 0x03F321 0F:F311: 7C        .byte $7C, $08, $02   ; 3E 
- D 3 - I - 0x03F324 0F:F314: 80        .byte $80, $08, $02   ; 3F 
- D 3 - I - 0x03F327 0F:F317: 82        .byte $82, $08, $02   ; 40 
- D 3 - I - 0x03F32A 0F:F31A: 84        .byte $84, $08, $02   ; 41 
- D 3 - I - 0x03F32D 0F:F31D: 86        .byte $86, $08, $02   ; 42 
- D 3 - I - 0x03F330 0F:F320: 88        .byte $88, $08, $04   ; 43 
- D 3 - I - 0x03F333 0F:F323: 8C        .byte $8C, $08, $02   ; 44 
- D 3 - I - 0x03F336 0F:F326: 6C        .byte $6C, $08, $02   ; 45 
- D 3 - I - 0x03F339 0F:F329: AA        .byte $AA, $08, $02   ; 46 
- D 3 - I - 0x03F33C 0F:F32C: AC        .byte $AC, $08, $02   ; 47 
- D 3 - I - 0x03F33F 0F:F32F: AE        .byte $AE, $08, $06   ; 48 
- D 3 - I - 0x03F342 0F:F332: B2        .byte $B2, $14, $06   ; 49 
- D 3 - I - 0x03F345 0F:F335: B8        .byte $B8, $03, $08   ; 4A 
- D 3 - I - 0x03F348 0F:F338: 5E        .byte $5E, $08, $02   ; 4B 
- D 3 - I - 0x03F34B 0F:F33B: 60        .byte $60, $08, $02   ; 4C 



_off019_F33E_0E:
;                                              +--------------- animation
;                                              |    +---------- timer
;                                              |    |    +----- compare with ?
;                                              |    |    |
- D 3 - I - 0x03F34E 0F:F33E: 02        .byte $02, $08, $04   ; 00 
- D 3 - I - 0x03F351 0F:F341: 60        .byte $60, $08, $08   ; 01 
- D 3 - I - 0x03F354 0F:F344: 0A        .byte $0A, $08, $04   ; 02 
- D 3 - I - 0x03F357 0F:F347: 36        .byte $36, $04, $08   ; 03 
- D 3 - I - 0x03F35A 0F:F34A: 3E        .byte $3E, $06, $08   ; 04 
- - - - - - 0x03F35D 0F:F34D: 46        .byte $46, $04, $0A   ; 05 
- D 3 - I - 0x03F360 0F:F350: 48        .byte $48, $08, $02   ; 06 
- D 3 - I - 0x03F363 0F:F353: 4A        .byte $4A, $08, $02   ; 07 
- D 3 - I - 0x03F366 0F:F356: 4C        .byte $4C, $08, $04   ; 08 
- D 3 - I - 0x03F369 0F:F359: 50        .byte $50, $08, $02   ; 09 
- D 3 - I - 0x03F36C 0F:F35C: 18        .byte $18, $08, $02   ; 0A 
- D 3 - I - 0x03F36F 0F:F35F: 5C        .byte $5C, $04, $04   ; 0B 



_off019_F362_14:
;                                              +--------------- animation
;                                              |    +---------- timer
;                                              |    |    +----- compare with ?
;                                              |    |    |
- D 3 - I - 0x03F372 0F:F362: 1C        .byte $1C, $0A, $06   ; 00 
- D 3 - I - 0x03F375 0F:F365: 22        .byte $22, $0A, $06   ; 01 
- D 3 - I - 0x03F378 0F:F368: 28        .byte $28, $10, $06   ; 02 
- D 3 - I - 0x03F37B 0F:F36B: 2E        .byte $2E, $08, $08   ; 03 
- D 3 - I - 0x03F37E 0F:F36E: 36        .byte $36, $0A, $08   ; 04 
- - - - - - 0x03F381 0F:F371: 3E        .byte $3E, $60, $04   ; 05 
- - - - - - 0x03F384 0F:F374: 52        .byte $52, $0A, $08   ; 06 
- - - - - - 0x03F387 0F:F377: 5A        .byte $5A, $04, $04   ; 07 
- D 3 - I - 0x03F38A 0F:F37A: 5E        .byte $5E, $0C, $04   ; 08 
- D 3 - I - 0x03F38D 0F:F37D: 62        .byte $62, $0A, $06   ; 09 
- D 3 - I - 0x03F390 0F:F380: 68        .byte $68, $04, $04   ; 0A 


; bzk garbage
- - - - - - 0x03F393 0F:F383: 60        RTS



ofs_000_F384_04_gameplay:
C - - J - - 0x03F394 0F:F384: 20 83 F6  JSR sub_F683_pause_and_unpause
C - - - - - 0x03F397 0F:F387: A5 2B     LDA ram_pause_flag
C - - - - - 0x03F399 0F:F389: F0 01     BEQ bra_F38C_not_paused
; if paused
C - - - - - 0x03F39B 0F:F38B: 60        RTS
bra_F38C_not_paused:
C - - - - - 0x03F39C 0F:F38C: A5 2A     LDA ram_002A_script
C - - - - - 0x03F39E 0F:F38E: 20 6D E8  JSR sub_E86D_jump_to_pointers_after_JSR_A
- D 3 - I - 0x03F3A1 0F:F391: F0 F3     .word ofs_001_F3F0_00
- D 3 - I - 0x03F3A3 0F:F393: F6 F3     .word ofs_001_F3F6_01
- D 3 - I - 0x03F3A5 0F:F395: 7B F4     .word ofs_001_F47B_02
- D 3 - I - 0x03F3A7 0F:F397: 16 F5     .word ofs_001_F516_03
- D 3 - I - 0x03F3A9 0F:F399: 8D F5     .word ofs_001_F58D_04
- D 3 - I - 0x03F3AB 0F:F39B: BE F5     .word ofs_001_F5BE_05
- D 3 - I - 0x03F3AD 0F:F39D: 09 F6     .word ofs_001_F609_06
- D 3 - I - 0x03F3AF 0F:F39F: 18 F6     .word ofs_001_F618_07
- D 3 - I - 0x03F3B1 0F:F3A1: 4B F9     .word ofs_001_F94B_08
- D 3 - I - 0x03F3B3 0F:F3A3: 92 D3     .word ofs_001_D392_09
- D 3 - I - 0x03F3B5 0F:F3A5: 06 F5     .word ofs_001_F506_0A
- D 3 - I - 0x03F3B7 0F:F3A7: 1E F8     .word ofs_001_F81E_0B
- D 3 - I - 0x03F3B9 0F:F3A9: 26 F8     .word ofs_001_F826_0C
- - - - - - 0x03F3BB 0F:F3AB: 2E F8     .word ofs_001_F82E_0D   ; unused, index doesnt't exist
- - - - - - 0x03F3BD 0F:F3AD: 2E F8     .word ofs_001_F82E_0E   ; unused, index doesnt't exist
- D 3 - I - 0x03F3BF 0F:F3AF: DC F4     .word ofs_001_F4DC_0F
- D 3 - I - 0x03F3C1 0F:F3B1: 36 F8     .word ofs_001_F836_10
- D 3 - I - 0x03F3C3 0F:F3B3: 33 F6     .word ofs_001_F633_11
- D 3 - I - 0x03F3C5 0F:F3B5: 2A F6     .word ofs_001_F62A_12_RTS   ; unused, index doesnt't exist (false read because of 0x03EFBA)
- D 3 - I - 0x03F3C7 0F:F3B7: EE F6     .word ofs_001_F6EE_13
- D 3 - I - 0x03F3C9 0F:F3B9: 18 F7     .word ofs_001_F718_14
- D 3 - I - 0x03F3CB 0F:F3BB: 78 F7     .word ofs_001_F778_15
- D 3 - I - 0x03F3CD 0F:F3BD: BC F7     .word ofs_001_F7BC_16
- D 3 - I - 0x03F3CF 0F:F3BF: 2B F6     .word ofs_001_F62B_17
- D 3 - I - 0x03F3D1 0F:F3C1: C7 F6     .word ofs_001_F6C7_18
- D 3 - I - 0x03F3D3 0F:F3C3: E8 F3     .word ofs_001_F3E8_19
- D 3 - I - 0x03F3D5 0F:F3C5: BF F6     .word ofs_001_F6BF_1A
- D 3 - I - 0x03F3D7 0F:F3C7: EF F4     .word ofs_001_F4EF_1B
- D 3 - I - 0x03F3D9 0F:F3C9: CF F6     .word ofs_001_F6CF_1C
- D 3 - I - 0x03F3DB 0F:F3CB: D9 F6     .word ofs_001_F6D9_1D
- D 3 - I - 0x03F3DD 0F:F3CD: E0 F3     .word ofs_001_F3E0_1E
- D 3 - I - 0x03F3DF 0F:F3CF: D1 F3     .word ofs_001_F3D1_1F



ofs_001_F3D1_1F:
C - - J - - 0x03F3E1 0F:F3D1: A9 02     LDA #$02
C - - - - - 0x03F3E3 0F:F3D3: 85 1C     STA ram_disable_rendering_timer
C - - - - - 0x03F3E5 0F:F3D5: A9 80     LDA #con_prg_bank + $80
C - - - - - 0x03F3E7 0F:F3D7: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03F3EA 0F:F3DA: 20 D5 91  JSR sub_0x0011E5
C - - - - - 0x03F3ED 0F:F3DD: 4C 8F E6  JMP loc_E68F



ofs_001_F3E0_1E:
C - - J - - 0x03F3F0 0F:F3E0: A9 80     LDA #con_prg_bank + $80
C - - - - - 0x03F3F2 0F:F3E2: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03F3F5 0F:F3E5: 4C 15 92  JMP loc_0x001225



ofs_001_F3E8_19:
C - - J - - 0x03F3F8 0F:F3E8: A9 80     LDA #con_prg_bank + $80
C - - - - - 0x03F3FA 0F:F3EA: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03F3FD 0F:F3ED: 4C B2 91  JMP loc_0x0011C2



ofs_001_F3F0_00:
C - - J - - 0x03F400 0F:F3F0: 20 FD EB  JSR sub_EBFD_clear_nametables
; -> con_002A_01
C - - - - - 0x03F403 0F:F3F3: E6 2A     INC ram_002A_script
C - - - - - 0x03F405 0F:F3F5: 60        RTS



ofs_001_F3F6_01:
C - - J - - 0x03F406 0F:F3F6: 20 53 F7  JSR sub_F753_prepare_single_screen_fill_mode_nametable_mapping
C - - - - - 0x03F409 0F:F3F9: 20 DA E2  JSR sub_E2DA_prg_bankswitch_dpcm_2
C - - - - - 0x03F40C 0F:F3FC: 20 D3 E5  JSR sub_E5D3
C - - - - - 0x03F40F 0F:F3FF: 20 67 D0  JSR sub_D067
C - - - - - 0x03F412 0F:F402: A9 9C     LDA #con_prg_bank + $9C
C - - - - - 0x03F414 0F:F404: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03F417 0F:F407: 20 88 85  JSR sub_0x038598
C - - - - - 0x03F41A 0F:F40A: 20 B8 85  JSR sub_0x0385C8
C - - - - - 0x03F41D 0F:F40D: 20 42 86  JSR sub_0x038652
C - - - - - 0x03F420 0F:F410: 20 F8 D0  JSR sub_D0F8
C - - - - - 0x03F423 0F:F413: A9 8E     LDA #con_prg_bank + $8E
C - - - - - 0x03F425 0F:F415: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03F428 0F:F418: 20 3F B5  JSR sub_0x01F54F
C - - - - - 0x03F42B 0F:F41B: A9 80     LDA #con_prg_bank + $80
C - - - - - 0x03F42D 0F:F41D: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03F430 0F:F420: 20 02 97  JSR sub_0x001712
C - - - - - 0x03F433 0F:F423: B0 19     BCS bra_F43E
loc_F425:
bra_F425:
C D 3 - - - 0x03F435 0F:F425: A5 68     LDA ram_0068
C - - - - - 0x03F437 0F:F427: 30 0A     BMI bra_F433
C - - - - - 0x03F439 0F:F429: 20 83 CD  JSR sub_CD83
C - - - - - 0x03F43C 0F:F42C: A9 00     LDA #$00
C - - - - - 0x03F43E 0F:F42E: 85 8D     STA ram_008D_flag
; -> con_002A_02
C - - - - - 0x03F440 0F:F430: E6 2A     INC ram_002A_script
C - - - - - 0x03F442 0F:F432: 60        RTS
bra_F433:
C - - - - - 0x03F443 0F:F433: 20 7B CD  JSR sub_CD7B
C - - - - - 0x03F446 0F:F436: A9 00     LDA #$00
C - - - - - 0x03F448 0F:F438: 85 8D     STA ram_008D_flag
C - - - - - 0x03F44A 0F:F43A: A9 04     LDA #con_002A_04
C - - - - - 0x03F44C 0F:F43C: D0 36     BNE bra_F474    ; jmp
bra_F43E:
C - - - - - 0x03F44E 0F:F43E: A5 7D     LDA ram_007D
C - - - - - 0x03F450 0F:F440: 29 F0     AND #$F0
C - - - - - 0x03F452 0F:F442: C9 10     CMP #$10
C - - - - - 0x03F454 0F:F444: F0 1E     BEQ bra_F464
C - - - - - 0x03F456 0F:F446: C9 20     CMP #$20
C - - - - - 0x03F458 0F:F448: F0 DB     BEQ bra_F425
C - - - - - 0x03F45A 0F:F44A: C9 30     CMP #$30
C - - - - - 0x03F45C 0F:F44C: F0 D7     BEQ bra_F425
C - - - - - 0x03F45E 0F:F44E: C9 40     CMP #$40
C - - - - - 0x03F460 0F:F450: F0 07     BEQ bra_F459
C - - - - - 0x03F462 0F:F452: C9 70     CMP #$70
C - - - - - 0x03F464 0F:F454: F0 21     BEQ bra_F477
C - - - - - 0x03F466 0F:F456: 4C 25 F4  JMP loc_F425
bra_F459:
C - - - - - 0x03F469 0F:F459: A0 00     LDY #$00
C - - - - - 0x03F46B 0F:F45B: 8C 80 07  STY ram_0780
C - - - - - 0x03F46E 0F:F45E: C8        INY ; 01
C - - - - - 0x03F46F 0F:F45F: 8C 81 07  STY ram_0781
C - - - - - 0x03F472 0F:F462: D0 C1     BNE bra_F425    ; jmp
bra_F464:
C - - - - - 0x03F474 0F:F464: A9 02     LDA #$02
C - - - - - 0x03F476 0F:F466: 85 1C     STA ram_disable_rendering_timer
C - - - - - 0x03F478 0F:F468: 20 83 CD  JSR sub_CD83
C - - - - - 0x03F47B 0F:F46B: 20 57 F7  JSR sub_F757_prepare_nametable_mapping
C - - - - - 0x03F47E 0F:F46E: A9 00     LDA #$00
C - - - - - 0x03F480 0F:F470: 85 64     STA ram_0064_timer
C - - - - - 0x03F482 0F:F472: A9 09     LDA #con_002A_09
bra_F474:
C - - - - - 0x03F484 0F:F474: 85 2A     STA ram_002A_script
C - - - - - 0x03F486 0F:F476: 60        RTS
bra_F477:
C - - - - - 0x03F487 0F:F477: A9 13     LDA #con_002A_13
C - - - - - 0x03F489 0F:F479: D0 F9     BNE bra_F474    ; jmp



ofs_001_F47B_02:
C - - J - - 0x03F48B 0F:F47B: A9 02     LDA #$02
C - - - - - 0x03F48D 0F:F47D: 85 1C     STA ram_disable_rendering_timer
C - - - - - 0x03F48F 0F:F47F: A5 8D     LDA ram_008D_flag
C - - - - - 0x03F491 0F:F481: D0 0E     BNE bra_F491
loc_F483:
C D 3 - - - 0x03F493 0F:F483: 20 57 F7  JSR sub_F757_prepare_nametable_mapping
loc_F486:
C D 3 - - - 0x03F496 0F:F486: A9 80     LDA #con_prg_bank + $80
C - - - - - 0x03F498 0F:F488: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03F49B 0F:F48B: 20 66 8D  JSR sub_0x000D76
C - - - - - 0x03F49E 0F:F48E: E6 8D     INC ram_008D_flag
C - - - - - 0x03F4A0 0F:F490: 60        RTS
bra_F491:
C - - - - - 0x03F4A1 0F:F491: 20 C8 CD  JSR sub_CDC8
C - - - - - 0x03F4A4 0F:F494: B0 01     BCS bra_F497
C - - - - - 0x03F4A6 0F:F496: 60        RTS
bra_F497:
C - - - - - 0x03F4A7 0F:F497: A9 00     LDA #$00
C - - - - - 0x03F4A9 0F:F499: 85 1C     STA ram_disable_rendering_timer
C - - - - - 0x03F4AB 0F:F49B: 20 F9 CF  JSR sub_CFF9
C - - - - - 0x03F4AE 0F:F49E: 20 EC E5  JSR sub_E5EC
C - - - - - 0x03F4B1 0F:F4A1: 20 D4 F4  JSR sub_F4D4
C - - - - - 0x03F4B4 0F:F4A4: A5 7D     LDA ram_007D
C - - - - - 0x03F4B6 0F:F4A6: 29 F0     AND #$F0
C - - - - - 0x03F4B8 0F:F4A8: C9 10     CMP #$10
C - - - - - 0x03F4BA 0F:F4AA: F0 1B     BEQ bra_F4C7
C - - - - - 0x03F4BC 0F:F4AC: C9 20     CMP #$20
C - - - - - 0x03F4BE 0F:F4AE: F0 12     BEQ bra_F4C2
C - - - - - 0x03F4C0 0F:F4B0: C9 30     CMP #$30
C - - - - - 0x03F4C2 0F:F4B2: F0 03     BEQ bra_F4B7
loc_F4B4:
; -> con_002A_03
C D 3 - - - 0x03F4C4 0F:F4B4: E6 2A     INC ram_002A_script
C - - - - - 0x03F4C6 0F:F4B6: 60        RTS
bra_F4B7:
C - - - - - 0x03F4C7 0F:F4B7: A9 80     LDA #con_prg_bank + $80
C - - - - - 0x03F4C9 0F:F4B9: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03F4CC 0F:F4BC: 20 E1 97  JSR sub_0x0017F1
C - - - - - 0x03F4CF 0F:F4BF: 4C B4 F4  JMP loc_F4B4
bra_F4C2:
C - - - - - 0x03F4D2 0F:F4C2: A9 0F     LDA #con_002A_0F
C - - - - - 0x03F4D4 0F:F4C4: 85 2A     STA ram_002A_script
C - - - - - 0x03F4D6 0F:F4C6: 60        RTS
bra_F4C7:
C - - - - - 0x03F4D7 0F:F4C7: A9 80     LDA #con_prg_bank + $80
C - - - - - 0x03F4D9 0F:F4C9: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03F4DC 0F:F4CC: 20 02 98  JSR sub_0x001812
C - - - - - 0x03F4DF 0F:F4CF: A9 0A     LDA #con_002A_0A
C - - - - - 0x03F4E1 0F:F4D1: 85 2A     STA ram_002A_script
C - - - - - 0x03F4E3 0F:F4D3: 60        RTS



sub_F4D4:
C - - - - - 0x03F4E4 0F:F4D4: A9 9C     LDA #con_prg_bank + $9C
C - - - - - 0x03F4E6 0F:F4D6: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03F4E9 0F:F4D9: 4C 29 BC  JMP loc_0x03BC39



ofs_001_F4DC_0F:
C - - J - - 0x03F4EC 0F:F4DC: A9 80     LDA #con_prg_bank + $80
C - - - - - 0x03F4EE 0F:F4DE: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03F4F1 0F:F4E1: 20 D0 96  JSR sub_0x0016E0
C - - - - - 0x03F4F4 0F:F4E4: 90 30     BCC bra_F516
C - - - - - 0x03F4F6 0F:F4E6: A9 10     LDA #con_002A_10
C - - - - - 0x03F4F8 0F:F4E8: 85 2A     STA ram_002A_script
C - - - - - 0x03F4FA 0F:F4EA: A9 00     LDA #$00
C - - - - - 0x03F4FC 0F:F4EC: 85 6B     STA ram_006B_subscript
C - - - - - 0x03F4FE 0F:F4EE: 60        RTS



ofs_001_F4EF_1B:
C - - J - - 0x03F4FF 0F:F4EF: A5 C7     LDA ram_00C7
C - - - - - 0x03F501 0F:F4F1: F0 08     BEQ bra_F4FB
C - - - - - 0x03F503 0F:F4F3: C6 C7     DEC ram_00C7
C - - - - - 0x03F505 0F:F4F5: D0 1F     BNE bra_F516
C - - - - - 0x03F507 0F:F4F7: A9 00     LDA #$00
C - - - - - 0x03F509 0F:F4F9: 85 6B     STA ram_006B_subscript
bra_F4FB:
C - - - - - 0x03F50B 0F:F4FB: A9 80     LDA #con_prg_bank + $80
C - - - - - 0x03F50D 0F:F4FD: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03F510 0F:F500: 20 46 BA  JSR sub_0x003A56
C - - - - - 0x03F513 0F:F503: 4C 16 F5  JMP loc_F516



ofs_001_F506_0A:
C - - J - - 0x03F516 0F:F506: A9 98     LDA #con_prg_bank + $98
C - - - - - 0x03F518 0F:F508: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03F51B 0F:F50B: 20 FE A3  JSR sub_0x03240E
C - - - - - 0x03F51E 0F:F50E: A9 9C     LDA #con_prg_bank + $9C
C - - - - - 0x03F520 0F:F510: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03F523 0F:F513: 20 29 85  JSR sub_0x038539
bra_F516:
loc_F516:
ofs_001_F516_03:
C D 3 J - - 0x03F526 0F:F516: 20 5D F5  JSR sub_F55D
C - - - - - 0x03F529 0F:F519: B0 41     BCS bra_F55C_RTS
C - - - - - 0x03F52B 0F:F51B: A9 80     LDA #con_prg_bank + $80
C - - - - - 0x03F52D 0F:F51D: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03F530 0F:F520: 20 0B 8F  JSR sub_0x000F1B
C - - - - - 0x03F533 0F:F523: A9 9C     LDA #con_prg_bank + $9C
C - - - - - 0x03F535 0F:F525: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03F538 0F:F528: 20 21 8A  JSR sub_0x038A31
C - - - - - 0x03F53B 0F:F52B: A5 BF     LDA ram_00BF
C - - - - - 0x03F53D 0F:F52D: 0D 65 05  ORA ram_plr_state
C - - - - - 0x03F540 0F:F530: 30 2A     BMI bra_F55C_RTS
C - - - - - 0x03F542 0F:F532: A5 78     LDA ram_0078_flag
C - - - - - 0x03F544 0F:F534: D0 03     BNE bra_F539
C - - - - - 0x03F546 0F:F536: 20 75 D1  JSR sub_D175
bra_F539:
C - - - - - 0x03F549 0F:F539: A9 84     LDA #con_prg_bank + $84
C - - - - - 0x03F54B 0F:F53B: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03F54E 0F:F53E: 20 9D AF  JSR sub_0x00AFAD
C - - - - - 0x03F551 0F:F541: A9 94     LDA #con_prg_bank + $94
C - - - - - 0x03F553 0F:F543: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03F556 0F:F546: 20 8A 80  JSR sub_0x02809A
C - - - - - 0x03F559 0F:F549: A9 96     LDA #con_prg_bank + $96
C - - - - - 0x03F55B 0F:F54B: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03F55E 0F:F54E: 20 E3 FD  JSR sub_FDE3
C - - - - - 0x03F561 0F:F551: A9 84     LDA #con_prg_bank + $84
C - - - - - 0x03F563 0F:F553: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03F566 0F:F556: 20 AA 9F  JSR sub_0x009FBA
C - - - - - 0x03F569 0F:F559: 4C 0C 80  JMP loc_0x00801C
bra_F55C_RTS:
C - - - - - 0x03F56C 0F:F55C: 60        RTS



sub_F55D:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x03F56D 0F:F55D: A5 2C     LDA ram_002C_flag
C - - - - - 0x03F56F 0F:F55F: D0 2A     BNE bra_F58B
C - - - - - 0x03F571 0F:F561: A5 26     LDA ram_btn_press
C - - - - - 0x03F573 0F:F563: 29 20     AND #con_btn_Select
C - - - - - 0x03F575 0F:F565: F0 24     BEQ bra_F58B
C - - - - - 0x03F577 0F:F567: A9 88     LDA #con_prg_bank + $88
C - - - - - 0x03F579 0F:F569: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03F57C 0F:F56C: 20 EB B8  JSR sub_0x0138FB
C - - - - - 0x03F57F 0F:F56F: B0 1A     BCS bra_F58B
C - - - - - 0x03F581 0F:F571: A5 2A     LDA ram_002A_script
C - - - - - 0x03F583 0F:F573: C9 1B     CMP #con_002A_1B
C - - - - - 0x03F585 0F:F575: F0 14     BEQ bra_F58B
C - - - - - 0x03F587 0F:F577: A9 88     LDA #con_prg_bank + $88
C - - - - - 0x03F589 0F:F579: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03F58C 0F:F57C: 20 B4 B1  JSR sub_0x0131C4
C - - - - - 0x03F58F 0F:F57F: 90 0A     BCC bra_F58B
C - - - - - 0x03F591 0F:F581: A9 94     LDA #con_prg_bank + $94
C - - - - - 0x03F593 0F:F583: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03F596 0F:F586: 20 9E 84  JSR sub_0x0284AE
C - - - - - 0x03F599 0F:F589: 38        SEC
C - - - - - 0x03F59A 0F:F58A: 60        RTS
bra_F58B:
C - - - - - 0x03F59B 0F:F58B: 18        CLC
C - - - - - 0x03F59C 0F:F58C: 60        RTS



ofs_001_F58D_04:
C - - J - - 0x03F59D 0F:F58D: A9 02     LDA #$02
C - - - - - 0x03F59F 0F:F58F: 85 1C     STA ram_disable_rendering_timer
C - - - - - 0x03F5A1 0F:F591: A5 8D     LDA ram_008D_flag
C - - - - - 0x03F5A3 0F:F593: D0 06     BNE bra_F59B
C - - - - - 0x03F5A5 0F:F595: 20 5B F7  JSR sub_F75B_prepare_nametable_mapping
C - - - - - 0x03F5A8 0F:F598: 4C 86 F4  JMP loc_F486
bra_F59B:
C - - - - - 0x03F5AB 0F:F59B: 20 47 CC  JSR sub_CC47
C - - - - - 0x03F5AE 0F:F59E: B0 01     BCS bra_F5A1
C - - - - - 0x03F5B0 0F:F5A0: 60        RTS
bra_F5A1:
C - - - - - 0x03F5B1 0F:F5A1: A9 00     LDA #$00
C - - - - - 0x03F5B3 0F:F5A3: 85 1C     STA ram_disable_rendering_timer
C - - - - - 0x03F5B5 0F:F5A5: 20 D4 F4  JSR sub_F4D4
C - - - - - 0x03F5B8 0F:F5A8: 20 8C CF  JSR sub_CF8C
C - - - - - 0x03F5BB 0F:F5AB: A9 94     LDA #con_prg_bank + $94
C - - - - - 0x03F5BD 0F:F5AD: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03F5C0 0F:F5B0: 20 F8 81  JSR sub_0x028208
C - - - - - 0x03F5C3 0F:F5B3: A9 84     LDA #con_prg_bank + $84
C - - - - - 0x03F5C5 0F:F5B5: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03F5C8 0F:F5B8: 20 17 9D  JSR sub_0x009D27
; -> con_002A_05
C - - - - - 0x03F5CB 0F:F5BB: E6 2A     INC ram_002A_script
C - - - - - 0x03F5CD 0F:F5BD: 60        RTS



ofs_001_F5BE_05:
C - - J - - 0x03F5CE 0F:F5BE: 20 5D F5  JSR sub_F55D
C - - - - - 0x03F5D1 0F:F5C1: B0 45     BCS bra_F608_RTS
C - - - - - 0x03F5D3 0F:F5C3: A9 80     LDA #con_prg_bank + $80
C - - - - - 0x03F5D5 0F:F5C5: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03F5D8 0F:F5C8: 20 0B 8F  JSR sub_0x000F1B
C - - - - - 0x03F5DB 0F:F5CB: A9 9C     LDA #con_prg_bank + $9C
C - - - - - 0x03F5DD 0F:F5CD: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03F5E0 0F:F5D0: 20 21 8A  JSR sub_0x038A31
C - - - - - 0x03F5E3 0F:F5D3: AD 65 05  LDA ram_plr_state
C - - - - - 0x03F5E6 0F:F5D6: 05 BF     ORA ram_00BF
C - - - - - 0x03F5E8 0F:F5D8: 30 2E     BMI bra_F608_RTS
C - - - - - 0x03F5EA 0F:F5DA: 20 0B CB  JSR sub_CB0B
C - - - - - 0x03F5ED 0F:F5DD: A9 9C     LDA #con_prg_bank + $9C
C - - - - - 0x03F5EF 0F:F5DF: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03F5F2 0F:F5E2: 20 70 85  JSR sub_0x038580
C - - - - - 0x03F5F5 0F:F5E5: A9 84     LDA #con_prg_bank + $84
C - - - - - 0x03F5F7 0F:F5E7: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03F5FA 0F:F5EA: 20 9D AF  JSR sub_0x00AFAD
C - - - - - 0x03F5FD 0F:F5ED: A9 96     LDA #con_prg_bank + $96
C - - - - - 0x03F5FF 0F:F5EF: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03F602 0F:F5F2: 20 E3 FD  JSR sub_FDE3
C - - - - - 0x03F605 0F:F5F5: A9 94     LDA #con_prg_bank + $94
C - - - - - 0x03F607 0F:F5F7: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03F60A 0F:F5FA: 20 62 82  JSR sub_0x028272
C - - - - - 0x03F60D 0F:F5FD: A9 84     LDA #con_prg_bank + $84
C - - - - - 0x03F60F 0F:F5FF: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03F612 0F:F602: 20 D6 9E  JSR sub_0x009EE6
C - - - - - 0x03F615 0F:F605: 20 0C 80  JSR sub_0x00801C
bra_F608_RTS:
C - - - - - 0x03F618 0F:F608: 60        RTS



ofs_001_F609_06:
C - - J - - 0x03F619 0F:F609: A9 02     LDA #$02
C - - - - - 0x03F61B 0F:F60B: 85 1C     STA ram_disable_rendering_timer
C - - - - - 0x03F61D 0F:F60D: 20 DA E2  JSR sub_E2DA_prg_bankswitch_dpcm_2
C - - - - - 0x03F620 0F:F610: 20 FB D3  JSR sub_D3FB
C - - - - - 0x03F623 0F:F613: A9 07     LDA #con_002A_07
C - - - - - 0x03F625 0F:F615: 85 2A     STA ram_002A_script
C - - - - - 0x03F627 0F:F617: 60        RTS



ofs_001_F618_07:
C - - J - - 0x03F628 0F:F618: A9 02     LDA #$02
C - - - - - 0x03F62A 0F:F61A: 85 1C     STA ram_disable_rendering_timer
C - - - - - 0x03F62C 0F:F61C: 20 A0 E7  JSR sub_E7A0
C - - - - - 0x03F62F 0F:F61F: 20 5F F7  JSR sub_F75F_prepare_vertical_nametable_mapping
C - - - - - 0x03F632 0F:F622: 20 E3 E8  JSR sub_E8E3
C - - - - - 0x03F635 0F:F625: A9 01     LDA #con_002A_01
C - - - - - 0x03F637 0F:F627: 85 2A     STA ram_002A_script
C - - - - - 0x03F639 0F:F629: 60        RTS



ofs_001_F62A_12_RTS:
; bzk optimize
- - - - - - 0x03F63A 0F:F62A: 60        RTS



ofs_001_F62B_17:
C - - J - - 0x03F63B 0F:F62B: A9 80     LDA #con_prg_bank + $80
C - - - - - 0x03F63D 0F:F62D: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03F640 0F:F630: 4C DB 9D  JMP loc_0x001DEB



ofs_001_F633_11:
C - - J - - 0x03F643 0F:F633: A9 82     LDA #con_prg_bank + $82
C - - - - - 0x03F645 0F:F635: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03F648 0F:F638: AE EC 07  LDX ram_07EC
C - - - - - 0x03F64B 0F:F63B: D0 1A     BNE bra_F657
; 00
C - - - - - 0x03F64D 0F:F63D: 20 01 80  JSR sub_0x004011
C - - - - - 0x03F650 0F:F640: AD EC 07  LDA ram_07EC
C - - - - - 0x03F653 0F:F643: D0 11     BNE bra_F656_RTS
C - - - - - 0x03F655 0F:F645: AD ED 07  LDA ram_07ED
C - - - - - 0x03F658 0F:F648: 29 7F     AND #$7F
C - - - - - 0x03F65A 0F:F64A: C9 0C     CMP #$0C
C - - - - - 0x03F65C 0F:F64C: B0 08     BCS bra_F656_RTS
C - - - - - 0x03F65E 0F:F64E: A9 80     LDA #con_prg_bank + $80
C - - - - - 0x03F660 0F:F650: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03F663 0F:F653: 20 0B 8F  JSR sub_0x000F1B
bra_F656_RTS:
C - - - - - 0x03F666 0F:F656: 60        RTS
bra_F657:
C - - - - - 0x03F667 0F:F657: CA        DEX
C - - - - - 0x03F668 0F:F658: D0 06     BNE bra_F660
; 01
C - - - - - 0x03F66A 0F:F65A: 20 8E 82  JSR sub_0x00429E
C - - - - - 0x03F66D 0F:F65D: 4C 6F F6  JMP loc_F66F
bra_F660:
C - - - - - 0x03F670 0F:F660: CA        DEX
C - - - - - 0x03F671 0F:F661: D0 06     BNE bra_F669
; 02
C - - - - - 0x03F673 0F:F663: 20 CF 83  JSR sub_0x0043DF
C - - - - - 0x03F676 0F:F666: 4C 6F F6  JMP loc_F66F
bra_F669:
C - - - - - 0x03F679 0F:F669: CA        DEX
C - - - - - 0x03F67A 0F:F66A: D0 03     BNE bra_F66F
; 03
C - - - - - 0x03F67C 0F:F66C: 20 5E 84  JSR sub_0x00446E_partner_cutscene_handler
loc_F66F:
bra_F66F:
; 04
C D 3 - - - 0x03F67F 0F:F66F: AD EE 07  LDA ram_07EE
C - - - - - 0x03F682 0F:F672: F0 0C     BEQ bra_F680
- - - - - - 0x03F684 0F:F674: A9 00     LDA #$00
- - - - - - 0x03F686 0F:F676: 8D ED 07  STA ram_07ED
- - - - - - 0x03F689 0F:F679: 8D EE 07  STA ram_07EE
- - - - - - 0x03F68C 0F:F67C: EE EC 07  INC ram_07EC
- - - - - - 0x03F68F 0F:F67F: 60        RTS
bra_F680:
C - - - - - 0x03F690 0F:F680: 4C B8 94  JMP loc_0x0054C8_object_handler



sub_F683_pause_and_unpause:
C - - - - - 0x03F693 0F:F683: A5 25     LDA ram_for_5105
C - - - - - 0x03F695 0F:F685: C9 FF     CMP #$FF
C - - - - - 0x03F697 0F:F687: F0 35     BEQ bra_F6BE_RTS
C - - - - - 0x03F699 0F:F689: A5 1E     LDA ram_001E_useless_00
C - - - - - 0x03F69B 0F:F68B: 05 2C     ORA ram_002C_flag
C - - - - - 0x03F69D 0F:F68D: 05 1C     ORA ram_disable_rendering_timer
C - - - - - 0x03F69F 0F:F68F: 05 AB     ORA ram_stopwatch_flag
C - - - - - 0x03F6A1 0F:F691: D0 2B     BNE bra_F6BE_RTS
; bzk optimize, check ram_pause_flag first, then LDA
C - - - - - 0x03F6A3 0F:F693: A5 F8     LDA ram_copy_btn_press
C - - - - - 0x03F6A5 0F:F695: A4 2B     LDY ram_pause_flag
C - - - - - 0x03F6A7 0F:F697: D0 0D     BNE bra_F6A6_paused
; if not paused
C - - - - - 0x03F6A9 0F:F699: 29 10     AND #con_btn_Start
C - - - - - 0x03F6AB 0F:F69B: F0 21     BEQ bra_F6BE_RTS
; set pause
C - - - - - 0x03F6AD 0F:F69D: A9 01     LDA #$01
C - - - - - 0x03F6AF 0F:F69F: 85 2B     STA ram_pause_flag
C - - - - - 0x03F6B1 0F:F6A1: A9 4D     LDA #con_sound_4D
C - - - - - 0x03F6B3 0F:F6A3: 4C 5F E2  JMP loc_E25F_play_sound
bra_F6A6_paused:
C - - - - - 0x03F6B6 0F:F6A6: A5 2A     LDA ram_002A_script
C - - - - - 0x03F6B8 0F:F6A8: C9 0A     CMP #con_002A_0A
C - - - - - 0x03F6BA 0F:F6AA: D0 08     BNE bra_F6B4
- - - - - - 0x03F6BC 0F:F6AC: A9 80     LDA #con_prg_bank + $80
- - - - - - 0x03F6BE 0F:F6AE: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
- - - - - - 0x03F6C1 0F:F6B1: 20 2C 85  JSR sub_0x00053C_update_background_and_sprite_palette
bra_F6B4:
C - - - - - 0x03F6C4 0F:F6B4: A5 F8     LDA ram_copy_btn_press
C - - - - - 0x03F6C6 0F:F6B6: 29 10     AND #con_btn_Start
C - - - - - 0x03F6C8 0F:F6B8: F0 04     BEQ bra_F6BE_RTS
; unpause
C - - - - - 0x03F6CA 0F:F6BA: A9 00     LDA #$00
C - - - - - 0x03F6CC 0F:F6BC: 85 2B     STA ram_pause_flag
bra_F6BE_RTS:
C - - - - - 0x03F6CE 0F:F6BE: 60        RTS



ofs_001_F6BF_1A:
C - - J - - 0x03F6CF 0F:F6BF: A9 80     LDA #con_prg_bank + $80
C - - - - - 0x03F6D1 0F:F6C1: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03F6D4 0F:F6C4: 4C 1A BB  JMP loc_0x003B2A



ofs_001_F6C7_18:
C - - J - - 0x03F6D7 0F:F6C7: A9 80     LDA #con_prg_bank + $80
C - - - - - 0x03F6D9 0F:F6C9: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03F6DC 0F:F6CC: 4C 88 92  JMP loc_0x001298



ofs_001_F6CF_1C:
C - - J - - 0x03F6DF 0F:F6CF: A9 00     LDA #$00
C - - - - - 0x03F6E1 0F:F6D1: 85 6B     STA ram_006B_subscript
C - - - - - 0x03F6E3 0F:F6D3: 20 DA E2  JSR sub_E2DA_prg_bankswitch_dpcm_2
; -> con_002A_1D
C - - - - - 0x03F6E6 0F:F6D6: E6 2A     INC ram_002A_script
C - - - - - 0x03F6E8 0F:F6D8: 60        RTS



ofs_001_F6D9_1D:
C - - J - - 0x03F6E9 0F:F6D9: A9 80     LDA #con_prg_bank + $80
C - - - - - 0x03F6EB 0F:F6DB: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03F6EE 0F:F6DE: 4C EA B3  JMP loc_0x0033FA



ofs_002_F6E1_0C:
C - - J - - 0x03F6F1 0F:F6E1: E6 6B     INC ram_006B_subscript
C - - - - - 0x03F6F3 0F:F6E3: A9 03     LDA #$03
C - - - - - 0x03F6F5 0F:F6E5: 85 57     STA ram_cam_pos_hi
C - - - - - 0x03F6F7 0F:F6E7: A9 00     LDA #$00
C - - - - - 0x03F6F9 0F:F6E9: 85 56     STA ram_cam_pos_lo
C - - - - - 0x03F6FB 0F:F6EB: 4C F7 F6  JMP loc_F6F7



ofs_001_F6EE_13:
C - - J - - 0x03F6FE 0F:F6EE: A9 03     LDA #$03
C - - - - - 0x03F700 0F:F6F0: 85 33     STA ram_blk_lo
C - - - - - 0x03F702 0F:F6F2: 20 8F E6  JSR sub_E68F
; -> con_002A_14
C - - - - - 0x03F705 0F:F6F5: E6 2A     INC ram_002A_script
loc_F6F7:
C D 3 - - - 0x03F707 0F:F6F7: 20 57 F7  JSR sub_F757_prepare_nametable_mapping
C - - - - - 0x03F70A 0F:F6FA: A9 00     LDA #$00
C - - - - - 0x03F70C 0F:F6FC: 85 C9     STA ram_00C9
bra_F6FE:
C - - - - - 0x03F70E 0F:F6FE: A9 02     LDA #$02
C - - - - - 0x03F710 0F:F700: 85 1C     STA ram_disable_rendering_timer
C - - - - - 0x03F712 0F:F702: 60        RTS



ofs_002_F703_0D:
C - - J - - 0x03F713 0F:F703: A5 2A     LDA ram_002A_script
C - - - - - 0x03F715 0F:F705: 48        PHA
C - - - - - 0x03F716 0F:F706: 20 18 F7  JSR sub_F718
C - - - - - 0x03F719 0F:F709: 68        PLA
C - - - - - 0x03F71A 0F:F70A: C5 2A     CMP ram_002A_script
C - - - - - 0x03F71C 0F:F70C: F0 07     BEQ bra_F715
C - - - - - 0x03F71E 0F:F70E: E6 6B     INC ram_006B_subscript
C - - - - - 0x03F720 0F:F710: A0 80     LDY #$80
C - - - - - 0x03F722 0F:F712: 8C 38 04  STY ram_plr_pos_X_hi
bra_F715:
C - - - - - 0x03F725 0F:F715: 85 2A     STA ram_002A_script
C - - - - - 0x03F727 0F:F717: 60        RTS



sub_F718:
ofs_001_F718_14:
C - - J - - 0x03F728 0F:F718: A9 80     LDA #con_prg_bank + $80
C - - - - - 0x03F72A 0F:F71A: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03F72D 0F:F71D: 20 3E B6  JSR sub_0x00364E
C - - - - - 0x03F730 0F:F720: 90 DC     BCC bra_F6FE
C - - - - - 0x03F732 0F:F722: 20 53 F7  JSR sub_F753_prepare_single_screen_fill_mode_nametable_mapping
C - - - - - 0x03F735 0F:F725: 20 D3 E5  JSR sub_E5D3
C - - - - - 0x03F738 0F:F728: 20 67 D0  JSR sub_D067
C - - - - - 0x03F73B 0F:F72B: A9 9C     LDA #con_prg_bank + $9C
C - - - - - 0x03F73D 0F:F72D: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03F740 0F:F730: 20 88 85  JSR sub_0x038598
C - - - - - 0x03F743 0F:F733: 20 B8 85  JSR sub_0x0385C8
C - - - - - 0x03F746 0F:F736: 20 F8 D0  JSR sub_D0F8
C - - - - - 0x03F749 0F:F739: A9 8E     LDA #con_prg_bank + $8E
C - - - - - 0x03F74B 0F:F73B: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03F74E 0F:F73E: 20 3F B5  JSR sub_0x01F54F
C - - - - - 0x03F751 0F:F741: A9 80     LDA #con_prg_bank + $80
C - - - - - 0x03F753 0F:F743: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03F756 0F:F746: 20 02 97  JSR sub_0x001712
C - - - - - 0x03F759 0F:F749: 20 83 CD  JSR sub_CD83
C - - - - - 0x03F75C 0F:F74C: A9 00     LDA #$00
C - - - - - 0x03F75E 0F:F74E: 85 8D     STA ram_008D_flag
; -> con_002A_15
C - - - - - 0x03F760 0F:F750: E6 2A     INC ram_002A_script
C - - - - - 0x03F762 0F:F752: 60        RTS



sub_F753_prepare_single_screen_fill_mode_nametable_mapping:
C - - - - - 0x03F763 0F:F753: A9 FF     LDA #$FF
C - - - - - 0x03F765 0F:F755: D0 0E     BNE bra_F765    ; jmp



sub_F757_prepare_nametable_mapping:
C - - - - - 0x03F767 0F:F757: A9 E4     LDA #$E4
C - - - - - 0x03F769 0F:F759: D0 0A     BNE bra_F765    ; jmp



sub_F75B_prepare_nametable_mapping:
C - - - - - 0x03F76B 0F:F75B: A9 D8     LDA #$D8
C - - - - - 0x03F76D 0F:F75D: D0 06     BNE bra_F765    ; jmp



loc_F75F_prepare_vertical_nametable_mapping:
sub_F75F_prepare_vertical_nametable_mapping:
C D 3 - - - 0x03F76F 0F:F75F: A9 44     LDA #$44
; bzk optimize, delete BNE if you delete 0x03F773
C - - - - - 0x03F771 0F:F761: D0 02     BNE bra_F765    ; jmp


; bzk garbage, although I suggest to use this instead of 0x006E98
- - - - - - 0x03F773 0F:F763: A9 50     LDA #$50    ; horisontal nametable mapping



bra_F765:
C - - - - - 0x03F775 0F:F765: 85 25     STA ram_for_5105
C - - - - - 0x03F777 0F:F767: 60        RTS



ofs_002_F768_0E:
C - - J - - 0x03F778 0F:F768: A5 2A     LDA ram_002A_script
C - - - - - 0x03F77A 0F:F76A: 48        PHA
C - - - - - 0x03F77B 0F:F76B: 20 78 F7  JSR sub_F778
C - - - - - 0x03F77E 0F:F76E: 68        PLA
C - - - - - 0x03F77F 0F:F76F: C5 2A     CMP ram_002A_script
C - - - - - 0x03F781 0F:F771: F0 02     BEQ bra_F775
C - - - - - 0x03F783 0F:F773: E6 6B     INC ram_006B_subscript
bra_F775:
C - - - - - 0x03F785 0F:F775: 85 2A     STA ram_002A_script
C - - - - - 0x03F787 0F:F777: 60        RTS



sub_F778:
ofs_001_F778_15:
C - - J - - 0x03F788 0F:F778: A9 02     LDA #$02
C - - - - - 0x03F78A 0F:F77A: 85 1C     STA ram_disable_rendering_timer
C - - - - - 0x03F78C 0F:F77C: A5 8D     LDA ram_008D_flag
C - - - - - 0x03F78E 0F:F77E: D0 03     BNE bra_F783
C - - - - - 0x03F790 0F:F780: 4C 83 F4  JMP loc_F483
bra_F783:
C - - - - - 0x03F793 0F:F783: 20 C8 CD  JSR sub_CDC8
C - - - - - 0x03F796 0F:F786: B0 01     BCS bra_F789
C - - - - - 0x03F798 0F:F788: 60        RTS
bra_F789:
C - - - - - 0x03F799 0F:F789: A9 00     LDA #$00
C - - - - - 0x03F79B 0F:F78B: 85 1C     STA ram_disable_rendering_timer
C - - - - - 0x03F79D 0F:F78D: 20 B9 D5  JSR sub_D5B9
C - - - - - 0x03F7A0 0F:F790: 20 EC E5  JSR sub_E5EC
C - - - - - 0x03F7A3 0F:F793: 20 89 FB  JSR sub_FB89
C - - - - - 0x03F7A6 0F:F796: A5 74     LDA ram_0074_flag
C - - - - - 0x03F7A8 0F:F798: D0 07     BNE bra_F7A1
C - - - - - 0x03F7AA 0F:F79A: E6 74     INC ram_0074_flag
C - - - - - 0x03F7AC 0F:F79C: A9 6A     LDA #con_music_6A
C - - - - - 0x03F7AE 0F:F79E: 20 5F E2  JSR sub_E25F_play_sound
bra_F7A1:
; -> con_002A_16
C - - - - - 0x03F7B1 0F:F7A1: E6 2A     INC ram_002A_script
C - - - - - 0x03F7B3 0F:F7A3: 60        RTS



ofs_002_F7A4_0F:
C - - J - - 0x03F7B4 0F:F7A4: A9 08     LDA #con_btn_Up
C - - - - - 0x03F7B6 0F:F7A6: 85 28     STA ram_btn_hold
C - - - - - 0x03F7B8 0F:F7A8: 85 26     STA ram_btn_press
C - - - - - 0x03F7BA 0F:F7AA: 20 C5 E6  JSR sub_E6C5
C - - - - - 0x03F7BD 0F:F7AD: AD 65 05  LDA ram_plr_state
C - - - - - 0x03F7C0 0F:F7B0: C9 02     CMP #con_plr_state_idle_on_ground
C - - - - - 0x03F7C2 0F:F7B2: D0 30     BNE bra_F7E4
C - - - - - 0x03F7C4 0F:F7B4: 20 CA E5  JSR sub_E5CA
C - - - - - 0x03F7C7 0F:F7B7: A9 16     LDA #con_002A_16
C - - - - - 0x03F7C9 0F:F7B9: 85 2A     STA ram_002A_script
C - - - - - 0x03F7CB 0F:F7BB: 60        RTS



ofs_001_F7BC_16:
C - - J - - 0x03F7CC 0F:F7BC: A9 80     LDA #con_prg_bank + $80
C - - - - - 0x03F7CE 0F:F7BE: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03F7D1 0F:F7C1: 20 D0 96  JSR sub_0x0016E0
C - - - - - 0x03F7D4 0F:F7C4: 90 09     BCC bra_F7CF
C - - - - - 0x03F7D6 0F:F7C6: A9 10     LDA #con_002A_10
C - - - - - 0x03F7D8 0F:F7C8: 85 2A     STA ram_002A_script
C - - - - - 0x03F7DA 0F:F7CA: A9 08     LDA #$08
C - - - - - 0x03F7DC 0F:F7CC: 85 6B     STA ram_006B_subscript
C - - - - - 0x03F7DE 0F:F7CE: 60        RTS
bra_F7CF:
C - - - - - 0x03F7DF 0F:F7CF: 20 5D F5  JSR sub_F55D
C - - - - - 0x03F7E2 0F:F7D2: B0 49     BCS bra_F81D_RTS
C - - - - - 0x03F7E4 0F:F7D4: A9 80     LDA #con_prg_bank + $80
C - - - - - 0x03F7E6 0F:F7D6: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03F7E9 0F:F7D9: 20 0B 8F  JSR sub_0x000F1B
C - - - - - 0x03F7EC 0F:F7DC: A9 9C     LDA #con_prg_bank + $9C
C - - - - - 0x03F7EE 0F:F7DE: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03F7F1 0F:F7E1: 20 21 8A  JSR sub_0x038A31
bra_F7E4:
C - - - - - 0x03F7F4 0F:F7E4: AD 65 05  LDA ram_plr_state
C - - - - - 0x03F7F7 0F:F7E7: 05 BF     ORA ram_00BF
C - - - - - 0x03F7F9 0F:F7E9: 30 32     BMI bra_F81D_RTS
C - - - - - 0x03F7FB 0F:F7EB: A5 78     LDA ram_0078_flag
C - - - - - 0x03F7FD 0F:F7ED: D0 03     BNE bra_F7F2
C - - - - - 0x03F7FF 0F:F7EF: 20 75 D1  JSR sub_D175
bra_F7F2:
C - - - - - 0x03F802 0F:F7F2: A9 80     LDA #con_prg_bank + $80
C - - - - - 0x03F804 0F:F7F4: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03F807 0F:F7F7: 20 83 B5  JSR sub_0x003593
C - - - - - 0x03F80A 0F:F7FA: A9 84     LDA #con_prg_bank + $84
C - - - - - 0x03F80C 0F:F7FC: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03F80F 0F:F7FF: 20 9D AF  JSR sub_0x00AFAD
C - - - - - 0x03F812 0F:F802: A9 94     LDA #con_prg_bank + $94
C - - - - - 0x03F814 0F:F804: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03F817 0F:F807: 20 8A 80  JSR sub_0x02809A
C - - - - - 0x03F81A 0F:F80A: A9 96     LDA #con_prg_bank + $96
C - - - - - 0x03F81C 0F:F80C: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03F81F 0F:F80F: 20 E3 FD  JSR sub_FDE3
C - - - - - 0x03F822 0F:F812: A9 84     LDA #con_prg_bank + $84
C - - - - - 0x03F824 0F:F814: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03F827 0F:F817: 20 AA 9F  JSR sub_0x009FBA
; bzk optimize, JMP
C - - - - - 0x03F82A 0F:F81A: 20 0C 80  JSR sub_0x00801C
bra_F81D_RTS:
C - - - - - 0x03F82D 0F:F81D: 60        RTS



ofs_001_F81E_0B:
C - - J - - 0x03F82E 0F:F81E: A9 80     LDA #con_prg_bank + $80
C - - - - - 0x03F830 0F:F820: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03F833 0F:F823: 4C 8B 94  JMP loc_0x00149B



ofs_001_F826_0C:
C - - J - - 0x03F836 0F:F826: A9 80     LDA #con_prg_bank + $80
C - - - - - 0x03F838 0F:F828: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03F83B 0F:F82B: 4C 6A 94  JMP loc_0x00147A



ofs_001_F82E_0D:
ofs_001_F82E_0E:
; bzk garbage
- - - - - - 0x03F83E 0F:F82E: A9 80     LDA #con_prg_bank + $80
- - - - - - 0x03F840 0F:F830: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
- - - - - - 0x03F843 0F:F833: 4C CF 96  JMP loc_0x0016DF_RTS



ofs_001_F836_10:
C - - J - - 0x03F846 0F:F836: A5 6B     LDA ram_006B_subscript
C - - - - - 0x03F848 0F:F838: 20 6D E8  JSR sub_E86D_jump_to_pointers_after_JSR_A
- D 3 - I - 0x03F84B 0F:F83B: 5B F8     .word ofs_002_F85B_00
- D 3 - I - 0x03F84D 0F:F83D: 70 F8     .word ofs_002_F870_01
- D 3 - I - 0x03F84F 0F:F83F: 7C F8     .word ofs_002_F87C_02
- D 3 - I - 0x03F851 0F:F841: 86 F8     .word ofs_002_F886_03
- D 3 - I - 0x03F853 0F:F843: 9E F8     .word ofs_002_F89E_04
- D 3 - I - 0x03F855 0F:F845: D2 F8     .word ofs_002_F8D2_05
- D 3 - I - 0x03F857 0F:F847: 03 F9     .word ofs_002_F903_06
- D 3 - I - 0x03F859 0F:F849: 40 F9     .word ofs_002_F940_07
- D 3 - I - 0x03F85B 0F:F84B: 5B F8     .word ofs_002_F85B_08
- D 3 - I - 0x03F85D 0F:F84D: 64 F8     .word ofs_002_F864_09
- D 3 - I - 0x03F85F 0F:F84F: 7C F8     .word ofs_002_F87C_0A
- D 3 - I - 0x03F861 0F:F851: 86 F8     .word ofs_002_F886_0B
- D 3 - I - 0x03F863 0F:F853: E1 F6     .word ofs_002_F6E1_0C
- D 3 - I - 0x03F865 0F:F855: 03 F7     .word ofs_002_F703_0D
- D 3 - I - 0x03F867 0F:F857: 68 F7     .word ofs_002_F768_0E
- D 3 - I - 0x03F869 0F:F859: A4 F7     .word ofs_002_F7A4_0F



ofs_002_F85B_00:
ofs_002_F85B_08:
C - - J - - 0x03F86B 0F:F85B: 20 CE E5  JSR sub_E5CE
C - - - - - 0x03F86E 0F:F85E: 20 F7 E7  JSR sub_E7F7_clear_all_objects_data
C - - - - - 0x03F871 0F:F861: E6 6B     INC ram_006B_subscript
C - - - - - 0x03F873 0F:F863: 60        RTS



ofs_002_F864_09:
C - - J - - 0x03F874 0F:F864: A9 08     LDA #con_btn_Up
C - - - - - 0x03F876 0F:F866: 85 28     STA ram_btn_hold
C - - - - - 0x03F878 0F:F868: 85 26     STA ram_btn_press
C - - - - - 0x03F87A 0F:F86A: 20 C5 E6  JSR sub_E6C5
C - - - - - 0x03F87D 0F:F86D: 4C 75 D1  JMP loc_D175



ofs_002_F870_01:
C - - J - - 0x03F880 0F:F870: A9 08     LDA #con_btn_Up
C - - - - - 0x03F882 0F:F872: 85 28     STA ram_btn_hold
C - - - - - 0x03F884 0F:F874: 85 26     STA ram_btn_press
C - - - - - 0x03F886 0F:F876: 20 C5 E6  JSR sub_E6C5
C - - - - - 0x03F889 0F:F879: 4C 75 D1  JMP loc_D175



ofs_002_F87C_02:
ofs_002_F87C_0A:
C - - J - - 0x03F88C 0F:F87C: A9 02     LDA #$02
C - - - - - 0x03F88E 0F:F87E: 85 1C     STA ram_disable_rendering_timer
C - - - - - 0x03F890 0F:F880: 20 FB D3  JSR sub_D3FB
C - - - - - 0x03F893 0F:F883: E6 6B     INC ram_006B_subscript
C - - - - - 0x03F895 0F:F885: 60        RTS



ofs_002_F886_03:
ofs_002_F886_0B:
C - - J - - 0x03F896 0F:F886: A9 02     LDA #$02
C - - - - - 0x03F898 0F:F888: 85 1C     STA ram_disable_rendering_timer
C - - - - - 0x03F89A 0F:F88A: 20 62 E8  JSR sub_E862_clear_00F0_00F7
C - - - - - 0x03F89D 0F:F88D: A9 80     LDA #con_prg_bank + $80
C - - - - - 0x03F89F 0F:F88F: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03F8A2 0F:F892: 20 D6 90  JSR sub_0x0010E6
C - - - - - 0x03F8A5 0F:F895: 20 A0 E7  JSR sub_E7A0
C - - - - - 0x03F8A8 0F:F898: 20 CE E5  JSR sub_E5CE
C - - - - - 0x03F8AB 0F:F89B: E6 6B     INC ram_006B_subscript
C - - - - - 0x03F8AD 0F:F89D: 60        RTS



ofs_002_F89E_04:
C - - J - - 0x03F8AE 0F:F89E: 20 53 F7  JSR sub_F753_prepare_single_screen_fill_mode_nametable_mapping
C - - - - - 0x03F8B1 0F:F8A1: 20 D3 E5  JSR sub_E5D3
C - - - - - 0x03F8B4 0F:F8A4: 20 67 D0  JSR sub_D067
C - - - - - 0x03F8B7 0F:F8A7: A9 9C     LDA #con_prg_bank + $9C
C - - - - - 0x03F8B9 0F:F8A9: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03F8BC 0F:F8AC: 20 88 85  JSR sub_0x038598
C - - - - - 0x03F8BF 0F:F8AF: 20 B8 85  JSR sub_0x0385C8
C - - - - - 0x03F8C2 0F:F8B2: 20 42 86  JSR sub_0x038652
C - - - - - 0x03F8C5 0F:F8B5: 20 F8 D0  JSR sub_D0F8
C - - - - - 0x03F8C8 0F:F8B8: A9 8E     LDA #con_prg_bank + $8E
C - - - - - 0x03F8CA 0F:F8BA: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03F8CD 0F:F8BD: 20 3F B5  JSR sub_0x01F54F
C - - - - - 0x03F8D0 0F:F8C0: A9 80     LDA #con_prg_bank + $80
C - - - - - 0x03F8D2 0F:F8C2: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03F8D5 0F:F8C5: 20 02 97  JSR sub_0x001712
C - - - - - 0x03F8D8 0F:F8C8: 20 83 CD  JSR sub_CD83
C - - - - - 0x03F8DB 0F:F8CB: A9 00     LDA #$00
C - - - - - 0x03F8DD 0F:F8CD: 85 8D     STA ram_008D_flag
C - - - - - 0x03F8DF 0F:F8CF: E6 6B     INC ram_006B_subscript
C - - - - - 0x03F8E1 0F:F8D1: 60        RTS



ofs_002_F8D2_05:
C - - J - - 0x03F8E2 0F:F8D2: A9 02     LDA #$02
C - - - - - 0x03F8E4 0F:F8D4: 85 1C     STA ram_disable_rendering_timer
C - - - - - 0x03F8E6 0F:F8D6: A5 8D     LDA ram_008D_flag
C - - - - - 0x03F8E8 0F:F8D8: D0 03     BNE bra_F8DD
C - - - - - 0x03F8EA 0F:F8DA: 4C 83 F4  JMP loc_F483
bra_F8DD:
C - - - - - 0x03F8ED 0F:F8DD: 20 C8 CD  JSR sub_CDC8
C - - - - - 0x03F8F0 0F:F8E0: B0 01     BCS bra_F8E3
C - - - - - 0x03F8F2 0F:F8E2: 60        RTS
bra_F8E3:
C - - - - - 0x03F8F3 0F:F8E3: A9 00     LDA #$00
C - - - - - 0x03F8F5 0F:F8E5: 85 1C     STA ram_disable_rendering_timer
C - - - - - 0x03F8F7 0F:F8E7: 20 F9 CF  JSR sub_CFF9
C - - - - - 0x03F8FA 0F:F8EA: A5 32     LDA ram_blk_hi
C - - - - - 0x03F8FC 0F:F8EC: C9 0C     CMP #$0C
C - - - - - 0x03F8FE 0F:F8EE: D0 04     BNE bra_F8F4
C - - - - - 0x03F900 0F:F8F0: A0 CE     LDY #$CE
C - - - - - 0x03F902 0F:F8F2: D0 02     BNE bra_F8F6    ; jmp
bra_F8F4:
C - - - - - 0x03F904 0F:F8F4: A0 BE     LDY #$BE
bra_F8F6:
C - - - - - 0x03F906 0F:F8F6: A2 2E     LDX #$2E
C - - - - - 0x03F908 0F:F8F8: A9 10     LDA #con_irq_10
C - - - - - 0x03F90A 0F:F8FA: 20 BF E5  JSR sub_E5BF
C - - - - - 0x03F90D 0F:F8FD: 20 EC E5  JSR sub_E5EC
C - - - - - 0x03F910 0F:F900: E6 6B     INC ram_006B_subscript
C - - - - - 0x03F912 0F:F902: 60        RTS



ofs_002_F903_06:
C - - J - - 0x03F913 0F:F903: A9 08     LDA #con_btn_Up
C - - - - - 0x03F915 0F:F905: 85 28     STA ram_btn_hold
C - - - - - 0x03F917 0F:F907: 85 26     STA ram_btn_press
C - - - - - 0x03F919 0F:F909: 20 C5 E6  JSR sub_E6C5
C - - - - - 0x03F91C 0F:F90C: 20 75 D1  JSR sub_D175
C - - - - - 0x03F91F 0F:F90F: A9 84     LDA #con_prg_bank + $84
C - - - - - 0x03F921 0F:F911: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03F924 0F:F914: 20 9D AF  JSR sub_0x00AFAD
C - - - - - 0x03F927 0F:F917: A9 94     LDA #con_prg_bank + $94
C - - - - - 0x03F929 0F:F919: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03F92C 0F:F91C: 20 8A 80  JSR sub_0x02809A
C - - - - - 0x03F92F 0F:F91F: A9 96     LDA #con_prg_bank + $96
C - - - - - 0x03F931 0F:F921: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03F934 0F:F924: 20 E3 FD  JSR sub_FDE3
C - - - - - 0x03F937 0F:F927: A9 84     LDA #con_prg_bank + $84
C - - - - - 0x03F939 0F:F929: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03F93C 0F:F92C: 20 AA 9F  JSR sub_0x009FBA
C - - - - - 0x03F93F 0F:F92F: 20 0C 80  JSR sub_0x00801C
C - - - - - 0x03F942 0F:F932: AD 65 05  LDA ram_plr_state
C - - - - - 0x03F945 0F:F935: C9 02     CMP #con_plr_state_idle_on_ground
C - - - - - 0x03F947 0F:F937: D0 06     BNE bra_F93F_RTS
C - - - - - 0x03F949 0F:F939: A9 12     LDA #con_irq_12
C - - - - - 0x03F94B 0F:F93B: 85 3F     STA ram_003F_copy_irq_handler
C - - - - - 0x03F94D 0F:F93D: E6 6B     INC ram_006B_subscript
bra_F93F_RTS:
C - - - - - 0x03F94F 0F:F93F: 60        RTS



ofs_002_F940_07:
C - - J - - 0x03F950 0F:F940: 20 CA E5  JSR sub_E5CA
C - - - - - 0x03F953 0F:F943: 20 F9 CF  JSR sub_CFF9
C - - - - - 0x03F956 0F:F946: A9 03     LDA #con_002A_03
C - - - - - 0x03F958 0F:F948: 85 2A     STA ram_002A_script
C - - - - - 0x03F95A 0F:F94A: 60        RTS



ofs_001_F94B_08:
C - - J - - 0x03F95B 0F:F94B: A5 6B     LDA ram_006B_subscript
C - - - - - 0x03F95D 0F:F94D: 20 6D E8  JSR sub_E86D_jump_to_pointers_after_JSR_A
- D 3 - I - 0x03F960 0F:F950: 64 F9     .word ofs_003_F964_00
- D 3 - I - 0x03F962 0F:F952: A8 F9     .word ofs_003_F9A8_01
- D 3 - I - 0x03F964 0F:F954: C3 F9     .word ofs_003_F9C3_02
- D 3 - I - 0x03F966 0F:F956: EB F9     .word ofs_003_F9EB_03
- D 3 - I - 0x03F968 0F:F958: 99 FA     .word ofs_003_FA99_04
- D 3 - I - 0x03F96A 0F:F95A: B9 FA     .word ofs_003_FAB9_05
- D 3 - I - 0x03F96C 0F:F95C: E1 FA     .word ofs_003_FAE1_06
- D 3 - I - 0x03F96E 0F:F95E: A8 F9     .word ofs_003_F9A8_07
- D 3 - I - 0x03F970 0F:F960: C3 F9     .word ofs_003_F9C3_08
- D 3 - I - 0x03F972 0F:F962: 26 FB     .word ofs_003_FB26_09



ofs_003_F964_00:
C - - J - - 0x03F974 0F:F964: E6 33     INC ram_blk_lo
C - - - - - 0x03F976 0F:F966: 20 95 E7  JSR sub_E795
C - - - - - 0x03F979 0F:F969: 20 CE E5  JSR sub_E5CE
C - - - - - 0x03F97C 0F:F96C: A9 80     LDA #con_prg_bank + $80
C - - - - - 0x03F97E 0F:F96E: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03F981 0F:F971: 20 96 8D  JSR sub_0x000DA6_print_blk_number
C - - - - - 0x03F984 0F:F974: A9 00     LDA #con_obj_flag_00
C - - - - - 0x03F986 0F:F976: 8D 70 04  STA ram_plr_flags
C - - - - - 0x03F989 0F:F979: 20 67 D0  JSR sub_D067
C - - - - - 0x03F98C 0F:F97C: 20 F8 D0  JSR sub_D0F8
C - - - - - 0x03F98F 0F:F97F: A9 8E     LDA #con_prg_bank + $8E
C - - - - - 0x03F991 0F:F981: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03F994 0F:F984: 20 3F B5  JSR sub_0x01F54F
C - - - - - 0x03F997 0F:F987: 20 64 CD  JSR sub_CD64
C - - - - - 0x03F99A 0F:F98A: A9 80     LDA #con_prg_bank + $80
C - - - - - 0x03F99C 0F:F98C: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03F99F 0F:F98F: 20 02 97  JSR sub_0x001712
C - - - - - 0x03F9A2 0F:F992: A5 7D     LDA ram_007D
C - - - - - 0x03F9A4 0F:F994: 29 F0     AND #$F0
C - - - - - 0x03F9A6 0F:F996: C9 30     CMP #$30
C - - - - - 0x03F9A8 0F:F998: F0 03     BEQ bra_F99D
loc_F99A:
C D 3 - - - 0x03F9AA 0F:F99A: E6 6B     INC ram_006B_subscript
C - - - - - 0x03F9AC 0F:F99C: 60        RTS
bra_F99D:
C - - - - - 0x03F9AD 0F:F99D: A9 80     LDA #con_prg_bank + $80
C - - - - - 0x03F9AF 0F:F99F: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03F9B2 0F:F9A2: 20 E1 97  JSR sub_0x0017F1
C - - - - - 0x03F9B5 0F:F9A5: 4C 9A F9  JMP loc_F99A



ofs_003_F9A8_01:
ofs_003_F9A8_07:
C - - J - - 0x03F9B8 0F:F9A8: 20 8C CD  JSR sub_CD8C
C - - - - - 0x03F9BB 0F:F9AB: B0 0F     BCS bra_F9BC
C - - - - - 0x03F9BD 0F:F9AD: A5 65     LDA ram_0065
C - - - - - 0x03F9BF 0F:F9AF: D0 0A     BNE bra_F9BB_RTS
bra_F9B1:
C - - - - - 0x03F9C1 0F:F9B1: A5 5C     LDA ram_drawing_ahead
C - - - - - 0x03F9C3 0F:F9B3: C9 06     CMP #$06
C - - - - - 0x03F9C5 0F:F9B5: D0 04     BNE bra_F9BB_RTS
C - - - - - 0x03F9C7 0F:F9B7: C6 5A     DEC ram_section_ahead
C - - - - - 0x03F9C9 0F:F9B9: C6 5A     DEC ram_section_ahead
bra_F9BB_RTS:
C - - - - - 0x03F9CB 0F:F9BB: 60        RTS
bra_F9BC:
C - - - - - 0x03F9CC 0F:F9BC: E6 6B     INC ram_006B_subscript
C - - - - - 0x03F9CE 0F:F9BE: A5 65     LDA ram_0065
C - - - - - 0x03F9D0 0F:F9C0: F0 EF     BEQ bra_F9B1
C - - - - - 0x03F9D2 0F:F9C2: 60        RTS



ofs_003_F9C3_02:
ofs_003_F9C3_08:
C - - J - - 0x03F9D3 0F:F9C3: A5 65     LDA ram_0065
C - - - - - 0x03F9D5 0F:F9C5: F0 0F     BEQ bra_F9D6
C - - - - - 0x03F9D7 0F:F9C7: AD 38 04  LDA ram_plr_pos_X_hi
C - - - - - 0x03F9DA 0F:F9CA: 38        SEC
C - - - - - 0x03F9DB 0F:F9CB: E9 01     SBC #$01
C - - - - - 0x03F9DD 0F:F9CD: 8D 38 04  STA ram_plr_pos_X_hi
C - - - - - 0x03F9E0 0F:F9D0: 20 69 FB  JSR sub_FB69
C - - - - - 0x03F9E3 0F:F9D3: 4C E2 F9  JMP loc_F9E2
bra_F9D6:
C - - - - - 0x03F9E6 0F:F9D6: AD 38 04  LDA ram_plr_pos_X_hi
C - - - - - 0x03F9E9 0F:F9D9: 18        CLC
C - - - - - 0x03F9EA 0F:F9DA: 69 01     ADC #$01
C - - - - - 0x03F9EC 0F:F9DC: 8D 38 04  STA ram_plr_pos_X_hi
C - - - - - 0x03F9EF 0F:F9DF: 20 77 FB  JSR sub_FB77
loc_F9E2:
C D 3 - - - 0x03F9F2 0F:F9E2: A5 56     LDA ram_cam_pos_lo
C - - - - - 0x03F9F4 0F:F9E4: 29 7F     AND #$7F
C - - - - - 0x03F9F6 0F:F9E6: D0 02     BNE bra_F9EA_RTS
C - - - - - 0x03F9F8 0F:F9E8: E6 6B     INC ram_006B_subscript
bra_F9EA_RTS:
C - - - - - 0x03F9FA 0F:F9EA: 60        RTS



ofs_003_F9EB_03:
C - - J - - 0x03F9FB 0F:F9EB: E6 6B     INC ram_006B_subscript
C - - - - - 0x03F9FD 0F:F9ED: A9 80     LDA #con_prg_bank + $80
C - - - - - 0x03F9FF 0F:F9EF: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03FA02 0F:F9F2: 20 2C 85  JSR sub_0x00053C_update_background_and_sprite_palette
C - - - - - 0x03FA05 0F:F9F5: 20 13 80  JSR sub_0x000023
C - - - - - 0x03FA08 0F:F9F8: 20 EE 83  JSR sub_0x0003FE
C - - - - - 0x03FA0B 0F:F9FB: A9 0C     LDA #con_sound_door
C - - - - - 0x03FA0D 0F:F9FD: 20 5F E2  JSR sub_E25F_play_sound
C - - - - - 0x03FA10 0F:FA00: A9 3C     LDA #$3C
C - - - - - 0x03FA12 0F:FA02: 85 30     STA ram_screen_timer_lo
C - - - - - 0x03FA14 0F:FA04: A9 0C     LDA #con_obj_type_0C
C - - - - - 0x03FA16 0F:FA06: A0 00     LDY #$00
C - - - - - 0x03FA18 0F:FA08: A2 13     LDX #$13
C - - - - - 0x03FA1A 0F:FA0A: 20 5C EF  JSR sub_EF5C_prepare_animation
C - - - - - 0x03FA1D 0F:FA0D: A9 00     LDA #$00
C - - - - - 0x03FA1F 0F:FA0F: 9D 00 04  STA ram_obj_anim_id,X
C - - - - - 0x03FA22 0F:FA12: 9D 54 04  STA ram_0454_obj,X
C - - - - - 0x03FA25 0F:FA15: 9D 70 04  STA ram_obj_flags,X ; con_obj_flag_00
C - - - - - 0x03FA28 0F:FA18: AD 1C 04  LDA ram_plr_pos_Y_hi
C - - - - - 0x03FA2B 0F:FA1B: 69 08     ADC #$08
C - - - - - 0x03FA2D 0F:FA1D: 29 F0     AND #$F0
C - - - - - 0x03FA2F 0F:FA1F: 9D 1C 04  STA ram_obj_pos_Y_hi,X
C - - - - - 0x03FA32 0F:FA22: A5 65     LDA ram_0065
C - - - - - 0x03FA34 0F:FA24: 0A        ASL
C - - - - - 0x03FA35 0F:FA25: A8        TAY
C - - - - - 0x03FA36 0F:FA26: B9 95 FA  LDA tbl_FA95,Y
C - - - - - 0x03FA39 0F:FA29: 9D 38 04  STA ram_obj_pos_X_hi,X
C - - - - - 0x03FA3C 0F:FA2C: B9 96 FA  LDA tbl_FA95 + $01,Y
C - - - - - 0x03FA3F 0F:FA2F: 9D A8 04  STA ram_obj_facing,X
C - - - - - 0x03FA42 0F:FA32: A9 00     LDA #$00
C - - - - - 0x03FA44 0F:FA34: 85 62     STA ram_ppu_address_hi
C - - - - - 0x03FA46 0F:FA36: AC 4E 05  LDY ram_plr_id
C - - - - - 0x03FA49 0F:FA39: AD 1C 04  LDA ram_plr_pos_Y_hi
C - - - - - 0x03FA4C 0F:FA3C: 38        SEC
C - - - - - 0x03FA4D 0F:FA3D: F9 91 FA  SBC tbl_FA91_pos_Y_hi,Y
C - - - - - 0x03FA50 0F:FA40: 0A        ASL
C - - - - - 0x03FA51 0F:FA41: 26 62     ROL ram_ppu_address_hi
C - - - - - 0x03FA53 0F:FA43: 0A        ASL
C - - - - - 0x03FA54 0F:FA44: 26 62     ROL ram_ppu_address_hi
C - - - - - 0x03FA56 0F:FA46: 29 E0     AND #$E0
C - - - - - 0x03FA58 0F:FA48: 85 61     STA ram_ppu_address_lo
C - - - - - 0x03FA5A 0F:FA4A: A4 65     LDY ram_0065
C - - - - - 0x03FA5C 0F:FA4C: B9 8F FA  LDA tbl_FA8F,Y
C - - - - - 0x03FA5F 0F:FA4F: 18        CLC
C - - - - - 0x03FA60 0F:FA50: 65 61     ADC ram_ppu_address_lo
C - - - - - 0x03FA62 0F:FA52: 85 61     STA ram_ppu_address_lo
C - - - - - 0x03FA64 0F:FA54: A5 75     LDA ram_0075
C - - - - - 0x03FA66 0F:FA56: 29 01     AND #$01
C - - - - - 0x03FA68 0F:FA58: 85 00     STA ram_0000_t02B
C - - - - - 0x03FA6A 0F:FA5A: A5 65     LDA ram_0065
C - - - - - 0x03FA6C 0F:FA5C: D0 04     BNE bra_FA62
C - - - - - 0x03FA6E 0F:FA5E: A2 24     LDX #$24    ; > 24xx
C - - - - - 0x03FA70 0F:FA60: D0 02     BNE bra_FA64    ; jmp
bra_FA62:
C - - - - - 0x03FA72 0F:FA62: A2 20     LDX #$20    ; > 20xx
bra_FA64:
C - - - - - 0x03FA74 0F:FA64: A5 57     LDA ram_cam_pos_hi
C - - - - - 0x03FA76 0F:FA66: 29 01     AND #$01
C - - - - - 0x03FA78 0F:FA68: 45 00     EOR ram_0000_t02B
C - - - - - 0x03FA7A 0F:FA6A: F0 04     BEQ bra_FA70
C - - - - - 0x03FA7C 0F:FA6C: 8A        TXA
C - - - - - 0x03FA7D 0F:FA6D: 49 04     EOR #$04
C - - - - - 0x03FA7F 0F:FA6F: AA        TAX
bra_FA70:
C - - - - - 0x03FA80 0F:FA70: 8A        TXA
C - - - - - 0x03FA81 0F:FA71: 18        CLC
C - - - - - 0x03FA82 0F:FA72: 65 62     ADC ram_ppu_address_hi
C - - - - - 0x03FA84 0F:FA74: 85 62     STA ram_ppu_address_hi
C - - - - - 0x03FA86 0F:FA76: 8D EB 05  STA ram_05D8_obj + $13
C - - - - - 0x03FA89 0F:FA79: A5 61     LDA ram_ppu_address_lo
C - - - - - 0x03FA8B 0F:FA7B: 8D D4 05  STA ram_05C1_obj + $13
C - - - - - 0x03FA8E 0F:FA7E: 20 AF E8  JSR sub_E8AF_set_buffer_mode_02
C - - - - - 0x03FA91 0F:FA81: A0 06     LDY #$06
C - - - - - 0x03FA93 0F:FA83: A9 00     LDA #$00
bra_FA85_loop:
C - - - - - 0x03FA95 0F:FA85: 9D 00 03  STA ram_ppu_buffer,X
C - - - - - 0x03FA98 0F:FA88: E8        INX
C - - - - - 0x03FA99 0F:FA89: 88        DEY
C - - - - - 0x03FA9A 0F:FA8A: D0 F9     BNE bra_FA85_loop
C - - - - - 0x03FA9C 0F:FA8C: 4C DE E8  JMP loc_E8DE_store_index_and_close_buffer



tbl_FA8F:
- D 3 - - - 0x03FA9F 0F:FA8F: 01        .byte $01   ; 00 
- D 3 - - - 0x03FAA0 0F:FA90: 1E        .byte $1E   ; 01 



tbl_FA91_pos_Y_hi:
- D 3 - - - 0x03FAA1 0F:FA91: 20        .byte $20   ; 00 
- D 3 - - - 0x03FAA2 0F:FA92: 20        .byte $20   ; 01 
- D 3 - - - 0x03FAA3 0F:FA93: 24        .byte $24   ; 02 
- D 3 - - - 0x03FAA4 0F:FA94: 20        .byte $20   ; 03 



tbl_FA95:
;                                              +---------- pos_X_hi
;                                              |    +----- facing
;                                              |    |
- D 3 - - - 0x03FAA5 0F:FA95: 8C        .byte $8C, $01   ; 00 
- D 3 - - - 0x03FAA7 0F:FA97: 74        .byte $74, $00   ; 01 



ofs_003_FA99_04:
C - - J - - 0x03FAA9 0F:FA99: C6 30     DEC ram_screen_timer_lo
C - - - - - 0x03FAAB 0F:FA9B: D0 0C     BNE bra_FAA9
C - - - - - 0x03FAAD 0F:FA9D: A9 00     LDA #$00
C - - - - - 0x03FAAF 0F:FA9F: 20 57 EF  JSR sub_EF57_prepare_player_animation
C - - - - - 0x03FAB2 0F:FAA2: A9 30     LDA #$30
C - - - - - 0x03FAB4 0F:FAA4: 85 30     STA ram_screen_timer_lo
C - - - - - 0x03FAB6 0F:FAA6: E6 6B     INC ram_006B_subscript
bra_FAA8_RTS:
C - - - - - 0x03FAB8 0F:FAA8: 60        RTS
bra_FAA9:
C - - - - - 0x03FAB9 0F:FAA9: A2 13     LDX #$13
C - - - - - 0x03FABB 0F:FAAB: 20 75 EF  JSR sub_EF75
C - - - - - 0x03FABE 0F:FAAE: BD 93 05  LDA ram_obj_anim_cnt,X
C - - - - - 0x03FAC1 0F:FAB1: D0 F5     BNE bra_FAA8_RTS
C - - - - - 0x03FAC3 0F:FAB3: A9 80     LDA #$80
C - - - - - 0x03FAC5 0F:FAB5: 9D 7C 05  STA ram_obj_anim_timer,X
C - - - - - 0x03FAC8 0F:FAB8: 60        RTS



ofs_003_FAB9_05:
C - - J - - 0x03FAC9 0F:FAB9: C6 30     DEC ram_screen_timer_lo
C - - - - - 0x03FACB 0F:FABB: D0 0C     BNE bra_FAC9
C - - - - - 0x03FACD 0F:FABD: A9 0C     LDA #con_obj_type_0C
C - - - - - 0x03FACF 0F:FABF: A0 01     LDY #$01
C - - - - - 0x03FAD1 0F:FAC1: A2 13     LDX #$13
C - - - - - 0x03FAD3 0F:FAC3: 20 5C EF  JSR sub_EF5C_prepare_animation
C - - - - - 0x03FAD6 0F:FAC6: E6 6B     INC ram_006B_subscript
C - - - - - 0x03FAD8 0F:FAC8: 60        RTS
bra_FAC9:
C - - - - - 0x03FAD9 0F:FAC9: A5 65     LDA ram_0065
C - - - - - 0x03FADB 0F:FACB: F0 08     BEQ bra_FAD5
C - - - - - 0x03FADD 0F:FACD: AD 38 04  LDA ram_plr_pos_X_hi
C - - - - - 0x03FAE0 0F:FAD0: 18        CLC
C - - - - - 0x03FAE1 0F:FAD1: 69 01     ADC #$01
C - - - - - 0x03FAE3 0F:FAD3: D0 06     BNE bra_FADB
bra_FAD5:
C - - - - - 0x03FAE5 0F:FAD5: AD 38 04  LDA ram_plr_pos_X_hi
C - - - - - 0x03FAE8 0F:FAD8: 38        SEC
C - - - - - 0x03FAE9 0F:FAD9: E9 01     SBC #$01
bra_FADB:
C - - - - - 0x03FAEB 0F:FADB: 8D 38 04  STA ram_plr_pos_X_hi
C - - - - - 0x03FAEE 0F:FADE: 4C 73 EF  JMP loc_EF73



ofs_003_FAE1_06:
C - - J - - 0x03FAF1 0F:FAE1: A2 13     LDX #$13
C - - - - - 0x03FAF3 0F:FAE3: 20 75 EF  JSR sub_EF75
C - - - - - 0x03FAF6 0F:FAE6: BD 93 05  LDA ram_obj_anim_cnt,X
C - - - - - 0x03FAF9 0F:FAE9: D0 07     BNE bra_FAF2_RTS
C - - - - - 0x03FAFB 0F:FAEB: BD 7C 05  LDA ram_obj_anim_timer,X
C - - - - - 0x03FAFE 0F:FAEE: C9 01     CMP #$01
C - - - - - 0x03FB00 0F:FAF0: F0 01     BEQ bra_FAF3
bra_FAF2_RTS:
C - - - - - 0x03FB02 0F:FAF2: 60        RTS
bra_FAF3:
C - - - - - 0x03FB03 0F:FAF3: E6 6B     INC ram_006B_subscript
C - - - - - 0x03FB05 0F:FAF5: A9 0C     LDA #con_sound_door
C - - - - - 0x03FB07 0F:FAF7: 20 5F E2  JSR sub_E25F_play_sound
C - - - - - 0x03FB0A 0F:FAFA: A9 00     LDA #$00
C - - - - - 0x03FB0C 0F:FAFC: 9D 00 04  STA ram_obj_anim_id,X
C - - - - - 0x03FB0F 0F:FAFF: 20 76 CD  JSR sub_CD76
C - - - - - 0x03FB12 0F:FB02: AD D4 05  LDA ram_05C1_obj + $13
C - - - - - 0x03FB15 0F:FB05: 85 61     STA ram_ppu_address_lo
C - - - - - 0x03FB17 0F:FB07: AD EB 05  LDA ram_05D8_obj + $13
C - - - - - 0x03FB1A 0F:FB0A: 85 62     STA ram_ppu_address_hi
C - - - - - 0x03FB1C 0F:FB0C: 20 AF E8  JSR sub_E8AF_set_buffer_mode_02
C - - - - - 0x03FB1F 0F:FB0F: A0 00     LDY #$00
bra_FB11_loop:
C - - - - - 0x03FB21 0F:FB11: B9 20 FB  LDA tbl_FB20_tiles,Y
C - - - - - 0x03FB24 0F:FB14: 9D 00 03  STA ram_ppu_buffer,X
C - - - - - 0x03FB27 0F:FB17: E8        INX
C - - - - - 0x03FB28 0F:FB18: C8        INY
C - - - - - 0x03FB29 0F:FB19: C0 06     CPY #$06
C - - - - - 0x03FB2B 0F:FB1B: D0 F4     BNE bra_FB11_loop
C - - - - - 0x03FB2D 0F:FB1D: 4C DE E8  JMP loc_E8DE_store_index_and_close_buffer



tbl_FB20_tiles:
- D 3 - - - 0x03FB30 0F:FB20: 3C        .byte $3C, $3A, $3C, $3B, $3A, $3C   ; 



ofs_003_FB26_09:
C - - J - - 0x03FB36 0F:FB26: A5 57     LDA ram_cam_pos_hi
C - - - - - 0x03FB38 0F:FB28: 45 75     EOR ram_0075
C - - - - - 0x03FB3A 0F:FB2A: 85 02     STA ram_0002_t012
C - - - - - 0x03FB3C 0F:FB2C: A9 00     LDA #$00
C - - - - - 0x03FB3E 0F:FB2E: 85 56     STA ram_cam_pos_lo
C - - - - - 0x03FB40 0F:FB30: 85 58     STA ram_0058
C - - - - - 0x03FB42 0F:FB32: AC A8 04  LDY ram_plr_facing
C - - - - - 0x03FB45 0F:FB35: F0 02     BEQ bra_FB39_facing_right
C - - - - - 0x03FB47 0F:FB37: A5 71     LDA ram_0071_blk_config
bra_FB39_facing_right:
C - - - - - 0x03FB49 0F:FB39: 85 57     STA ram_cam_pos_hi
C - - - - - 0x03FB4B 0F:FB3B: 45 02     EOR ram_0002_t012
C - - - - - 0x03FB4D 0F:FB3D: 29 01     AND #$01
C - - - - - 0x03FB4F 0F:FB3F: F0 04     BEQ bra_FB45
C - - - - - 0x03FB51 0F:FB41: A9 90     LDA #$90
C - - - - - 0x03FB53 0F:FB43: D0 02     BNE bra_FB47    ; jmp
bra_FB45:
C - - - - - 0x03FB55 0F:FB45: A9 80     LDA #$80
bra_FB47:
C - - - - - 0x03FB57 0F:FB47: 05 75     ORA ram_0075
C - - - - - 0x03FB59 0F:FB49: 85 75     STA ram_0075
C - - - - - 0x03FB5B 0F:FB4B: 20 F9 CF  JSR sub_CFF9
C - - - - - 0x03FB5E 0F:FB4E: A5 7D     LDA ram_007D
C - - - - - 0x03FB60 0F:FB50: 29 F0     AND #$F0
C - - - - - 0x03FB62 0F:FB52: C9 30     CMP #$30
C - - - - - 0x03FB64 0F:FB54: D0 08     BNE bra_FB5E
C - - - - - 0x03FB66 0F:FB56: A9 80     LDA #con_prg_bank + $80
C - - - - - 0x03FB68 0F:FB58: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03FB6B 0F:FB5B: 20 E1 97  JSR sub_0x0017F1
bra_FB5E:
C - - - - - 0x03FB6E 0F:FB5E: 20 EC E5  JSR sub_E5EC
C - - - - - 0x03FB71 0F:FB61: 20 CA E5  JSR sub_E5CA
C - - - - - 0x03FB74 0F:FB64: A9 03     LDA #con_002A_03
C - - - - - 0x03FB76 0F:FB66: 85 2A     STA ram_002A_script
C - - - - - 0x03FB78 0F:FB68: 60        RTS



sub_FB69:
C - - - - - 0x03FB79 0F:FB69: A5 56     LDA ram_cam_pos_lo
C - - - - - 0x03FB7B 0F:FB6B: 18        CLC
C - - - - - 0x03FB7C 0F:FB6C: 69 01     ADC #< $0001
C - - - - - 0x03FB7E 0F:FB6E: 85 56     STA ram_cam_pos_lo
C - - - - - 0x03FB80 0F:FB70: A5 57     LDA ram_cam_pos_hi
C - - - - - 0x03FB82 0F:FB72: 69 00     ADC #> $0001
C - - - - - 0x03FB84 0F:FB74: 85 57     STA ram_cam_pos_hi
C - - - - - 0x03FB86 0F:FB76: 60        RTS



sub_FB77:
C - - - - - 0x03FB87 0F:FB77: A5 56     LDA ram_cam_pos_lo
C - - - - - 0x03FB89 0F:FB79: 38        SEC
C - - - - - 0x03FB8A 0F:FB7A: E9 01     SBC #< $0001
C - - - - - 0x03FB8C 0F:FB7C: 85 56     STA ram_cam_pos_lo
C - - - - - 0x03FB8E 0F:FB7E: A5 57     LDA ram_cam_pos_hi
C - - - - - 0x03FB90 0F:FB80: E9 00     SBC #> $0001
C - - - - - 0x03FB92 0F:FB82: 85 57     STA ram_cam_pos_hi
C - - - - - 0x03FB94 0F:FB84: 60        RTS



sub_0x03FB95:
C - - - - - 0x03FB95 0F:FB85: A9 80     LDA #con_obj_flag_not_visible
C - - - - - 0x03FB97 0F:FB87: D0 02     BNE bra_FB8B    ; jmp



sub_FB89:
sub_0x03FB99:
C - - - - - 0x03FB99 0F:FB89: A9 00     LDA #con_obj_flag_00
bra_FB8B:
C - - - - - 0x03FB9B 0F:FB8B: 8D 70 04  STA ram_plr_flags
C - - - - - 0x03FB9E 0F:FB8E: 8D 88 04  STA ram_obj_flags + $18
C - - - - - 0x03FBA1 0F:FB91: 8D 89 04  STA ram_obj_flags + $19
C - - - - - 0x03FBA4 0F:FB94: 60        RTS



sub_0x03FBA5:
C - - - - - 0x03FBA5 0F:FB95: A9 9C     LDA #con_prg_bank + $9C
C - - - - - 0x03FBA7 0F:FB97: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03FBAA 0F:FB9A: B1 08     LDA (ram_0008_t02E_credit_screen_data),Y
C - - - - - 0x03FBAC 0F:FB9C: 48        PHA
C - - - - - 0x03FBAD 0F:FB9D: A9 94     LDA #con_prg_bank + $94
C - - - - - 0x03FBAF 0F:FB9F: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03FBB2 0F:FBA2: 68        PLA
C - - - - - 0x03FBB3 0F:FBA3: 60        RTS



sub_0x03FBB4_increase_brightness:
ofs_041_0x03FBB4_07_increase_brightness:
C - - - - - 0x03FBB4 0F:FBA4: A9 80     LDA #con_prg_bank + $80
C - - - - - 0x03FBB6 0F:FBA6: 20 E0 E2  JSR sub_E2E0_prg_bankswitch
C - - - - - 0x03FBB9 0F:FBA9: 20 70 8B  JSR sub_0x000B80_increase_brightness
C - - - - - 0x03FBBC 0F:FBAC: 4C 7F E6  JMP loc_E67F_restore_prg_bank



sub_0x03FBBF_decrease_brightness:
loc_0x03FBBF_decrease_brightness:
ofs_041_0x03FBB4_08_decrease_brightness:
C D 3 - - - 0x03FBBF 0F:FBAF: A9 80     LDA #con_prg_bank + $80
C - - - - - 0x03FBC1 0F:FBB1: 20 E0 E2  JSR sub_E2E0_prg_bankswitch
C - - - - - 0x03FBC4 0F:FBB4: 20 74 8B  JSR sub_0x000B84_decrease_brightness
C - - - - - 0x03FBC7 0F:FBB7: 4C 7F E6  JMP loc_E67F_restore_prg_bank



loc_0x03FBCA_execute_script:
C D 3 - - - 0x03FBCA 0F:FBBA: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03FBCD 0F:FBBD: AD CE FB  LDA tbl_FBCD_return + $01
C - - - - - 0x03FBD0 0F:FBC0: 48        PHA
C - - - - - 0x03FBD1 0F:FBC1: AD CD FB  LDA tbl_FBCD_return
C - - - - - 0x03FBD4 0F:FBC4: 48        PHA
C - - - - - 0x03FBD5 0F:FBC5: 6C 16 00  JMP (ram_0016_t002_jmp)



ofs_FBC8:
C - - - - - 0x03FBD8 0F:FBC8: A9 94     LDA #con_prg_bank + $94
C - - - - - 0x03FBDA 0F:FBCA: 4C E6 E2  JMP loc_E2E6_prg_bankswitch



tbl_FBCD_return:
; bzk optimize
- D 3 - - - 0x03FBDD 0F:FBCD: C8 FB     .word ofs_FBC8 - $01



loc_0x03FBDF_indirect_jump_bank_92:
C D 3 - - - 0x03FBDF 0F:FBCF: A9 92     LDA #con_prg_bank + $92
C - - - - - 0x03FBE1 0F:FBD1: D0 02     BNE bra_FBD5    ; jmp



loc_0x03FBE3_indirect_jump_bank_9C:
C D 3 - - - 0x03FBE3 0F:FBD3: A9 9C     LDA #con_prg_bank + $9C
bra_FBD5:
C - - - - - 0x03FBE5 0F:FBD5: 20 E0 E2  JSR sub_E2E0_prg_bankswitch
C - - - - - 0x03FBE8 0F:FBD8: AD E7 FB  LDA tbl_FBE6_return + $01
C - - - - - 0x03FBEB 0F:FBDB: 48        PHA
C - - - - - 0x03FBEC 0F:FBDC: AD E6 FB  LDA tbl_FBE6_return
C - - - - - 0x03FBEF 0F:FBDF: 48        PHA
C - - - - - 0x03FBF0 0F:FBE0: 6C 16 00  JMP (ram_0016_t001_jmp)



ofs_FBE3:
C - - - - - 0x03FBF3 0F:FBE3: 4C 7F E6  JMP loc_E67F_restore_prg_bank



tbl_FBE6_return:
; bzk optimize
- D 3 - - - 0x03FBF6 0F:FBE6: E3 FB     .word ofs_FBE3 - $01



sub_0x03FBF8:
C - - - - - 0x03FBF8 0F:FBE8: A9 9A     LDA #con_prg_bank + $9A
C - - - - - 0x03FBFA 0F:FBEA: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03FBFD 0F:FBED: 20 BF B7  JSR sub_0x0377CF
C - - - - - 0x03FC00 0F:FBF0: A9 9C     LDA #con_prg_bank + $9C
C - - - - - 0x03FC02 0F:FBF2: 4C E6 E2  JMP loc_E2E6_prg_bankswitch
bra_FBF5:
C - - - - - 0x03FC05 0F:FBF5: A5 10     LDA ram_0010_temp
C - - - - - 0x03FC07 0F:FBF7: 18        CLC
C - - - - - 0x03FC08 0F:FBF8: 7D 38 04  ADC ram_obj_pos_X_hi,X
C - - - - - 0x03FC0B 0F:FBFB: 85 10     STA ram_0010_temp
C - - - - - 0x03FC0D 0F:FBFD: 98        TYA
C - - - - - 0x03FC0E 0F:FBFE: 18        CLC
C - - - - - 0x03FC0F 0F:FBFF: 7D 1C 04  ADC ram_obj_pos_Y_hi,X
C - - - - - 0x03FC12 0F:FC02: 38        SEC
C - - - - - 0x03FC13 0F:FC03: E9 33     SBC #$33
C - - - - - 0x03FC15 0F:FC05: 85 11     STA ram_0011_temp
C - - - - - 0x03FC17 0F:FC07: B0 04     BCS bra_FC0D
C - - - - - 0x03FC19 0F:FC09: A9 FF     LDA #$FF
C - - - - - 0x03FC1B 0F:FC0B: D0 02     BNE bra_FC0F    ; jmp
bra_FC0D:
C - - - - - 0x03FC1D 0F:FC0D: A9 00     LDA #$00
bra_FC0F:
C - - - - - 0x03FC1F 0F:FC0F: 85 13     STA ram_0013_temp
C - - - - - 0x03FC21 0F:FC11: A4 10     LDY ram_0010_temp
C - - - - - 0x03FC23 0F:FC13: 4C A1 FC  JMP loc_FCA1



sub_0x03FC26:
C - - - - - 0x03FC26 0F:FC16: 84 10     STY ram_0010_temp
C - - - - - 0x03FC28 0F:FC18: A8        TAY
C - - - - - 0x03FC29 0F:FC19: A5 10     LDA ram_0010_temp
C - - - - - 0x03FC2B 0F:FC1B: 4C ED FC  JMP loc_FCED



sub_0x03FC2E:
loc_0x03FC2E:
C D 3 - - - 0x03FC2E 0F:FC1E: 85 10     STA ram_0010_temp
C - - - - - 0x03FC30 0F:FC20: A5 68     LDA ram_0068
C - - - - - 0x03FC32 0F:FC22: 30 D1     BMI bra_FBF5
C - - - - - 0x03FC34 0F:FC24: A5 10     LDA ram_0010_temp
C - - - - - 0x03FC36 0F:FC26: C9 80     CMP #$80
C - - - - - 0x03FC38 0F:FC28: 90 04     BCC bra_FC2E
C - - - - - 0x03FC3A 0F:FC2A: A9 FF     LDA #$FF
C - - - - - 0x03FC3C 0F:FC2C: D0 02     BNE bra_FC30    ; jmp
bra_FC2E:
C - - - - - 0x03FC3E 0F:FC2E: A9 00     LDA #$00
bra_FC30:
C - - - - - 0x03FC40 0F:FC30: 85 05     STA ram_0005_temp
C - - - - - 0x03FC42 0F:FC32: BD 70 04  LDA ram_obj_flags,X
C - - - - - 0x03FC45 0F:FC35: 29 01     AND #con_obj_flag_01
C - - - - - 0x03FC47 0F:FC37: F0 0D     BEQ bra_FC46
C - - - - - 0x03FC49 0F:FC39: BD 38 04  LDA ram_obj_pos_X_hi,X
C - - - - - 0x03FC4C 0F:FC3C: C9 21     CMP #$21
C - - - - - 0x03FC4E 0F:FC3E: 90 04     BCC bra_FC44
C - - - - - 0x03FC50 0F:FC40: A9 FF     LDA #$FF
C - - - - - 0x03FC52 0F:FC42: D0 02     BNE bra_FC46    ; jmp
bra_FC44:
C - - - - - 0x03FC54 0F:FC44: A9 01     LDA #$01
bra_FC46:
C - - - - - 0x03FC56 0F:FC46: 85 11     STA ram_0011_temp
C - - - - - 0x03FC58 0F:FC48: A5 10     LDA ram_0010_temp
C - - - - - 0x03FC5A 0F:FC4A: 18        CLC
C - - - - - 0x03FC5B 0F:FC4B: 7D 38 04  ADC ram_obj_pos_X_hi,X
C - - - - - 0x03FC5E 0F:FC4E: 85 10     STA ram_0010_temp
C - - - - - 0x03FC60 0F:FC50: A5 11     LDA ram_0011_temp
C - - - - - 0x03FC62 0F:FC52: 65 05     ADC ram_0005_temp
C - - - - - 0x03FC64 0F:FC54: 85 14     STA ram_0014_temp
C - - - - - 0x03FC66 0F:FC56: 98        TYA
C - - - - - 0x03FC67 0F:FC57: 18        CLC
C - - - - - 0x03FC68 0F:FC58: 7D 1C 04  ADC ram_obj_pos_Y_hi,X
C - - - - - 0x03FC6B 0F:FC5B: 38        SEC
C - - - - - 0x03FC6C 0F:FC5C: E9 20     SBC #$20
C - - - - - 0x03FC6E 0F:FC5E: 90 1C     BCC bra_FC7C
C - - - - - 0x03FC70 0F:FC60: C9 C0     CMP #$C0
C - - - - - 0x03FC72 0F:FC62: B0 18     BCS bra_FC7C
C - - - - - 0x03FC74 0F:FC64: 85 11     STA ram_0011_temp
; / 10
C - - - - - 0x03FC76 0F:FC66: 46 11     LSR ram_0011_temp
C - - - - - 0x03FC78 0F:FC68: 46 11     LSR ram_0011_temp
C - - - - - 0x03FC7A 0F:FC6A: 46 11     LSR ram_0011_temp
C - - - - - 0x03FC7C 0F:FC6C: 46 11     LSR ram_0011_temp
C - - - - - 0x03FC7E 0F:FC6E: A5 56     LDA ram_cam_pos_lo
C - - - - - 0x03FC80 0F:FC70: 18        CLC
C - - - - - 0x03FC81 0F:FC71: 65 10     ADC ram_0010_temp
C - - - - - 0x03FC83 0F:FC73: 85 13     STA ram_0013_temp
C - - - - - 0x03FC85 0F:FC75: A5 57     LDA ram_cam_pos_hi
C - - - - - 0x03FC87 0F:FC77: 65 14     ADC ram_0014_temp
C - - - - - 0x03FC89 0F:FC79: 4C 0D FD  JMP loc_FD0D
bra_FC7C:
C - - - - - 0x03FC8C 0F:FC7C: A9 00     LDA #$00
C - - - - - 0x03FC8E 0F:FC7E: 60        RTS



bra_FC7F:
C - - - - - 0x03FC8F 0F:FC7F: 68        PLA
C - - - - - 0x03FC90 0F:FC80: 18        CLC
C - - - - - 0x03FC91 0F:FC81: 6D 38 04  ADC ram_plr_pos_X_hi
C - - - - - 0x03FC94 0F:FC84: A8        TAY
C - - - - - 0x03FC95 0F:FC85: 85 13     STA ram_0013_temp
C - - - - - 0x03FC97 0F:FC87: 8A        TXA
C - - - - - 0x03FC98 0F:FC88: 18        CLC
C - - - - - 0x03FC99 0F:FC89: 6D 1C 04  ADC ram_plr_pos_Y_hi
C - - - - - 0x03FC9C 0F:FC8C: C5 D0     CMP ram_00D0
C - - - - - 0x03FC9E 0F:FC8E: 90 EC     BCC bra_FC7C
C - - - - - 0x03FCA0 0F:FC90: 38        SEC
C - - - - - 0x03FCA1 0F:FC91: E9 33     SBC #$33
C - - - - - 0x03FCA3 0F:FC93: 85 11     STA ram_0011_temp
C - - - - - 0x03FCA5 0F:FC95: B0 04     BCS bra_FC9B
C - - - - - 0x03FCA7 0F:FC97: A9 FF     LDA #$FF
C - - - - - 0x03FCA9 0F:FC99: D0 02     BNE bra_FC9D    ; jmp
bra_FC9B:
C - - - - - 0x03FCAB 0F:FC9B: A9 00     LDA #$00
bra_FC9D:
C - - - - - 0x03FCAD 0F:FC9D: 85 13     STA ram_0013_temp
C - - - - - 0x03FCAF 0F:FC9F: 84 10     STY ram_0010_temp
loc_FCA1:
C D 3 - - - 0x03FCB1 0F:FCA1: 98        TYA
; / 20
C - - - - - 0x03FCB2 0F:FCA2: 4A        LSR
C - - - - - 0x03FCB3 0F:FCA3: 4A        LSR
C - - - - - 0x03FCB4 0F:FCA4: 4A        LSR
C - - - - - 0x03FCB5 0F:FCA5: 4A        LSR
C - - - - - 0x03FCB6 0F:FCA6: 4A        LSR
C - - - - - 0x03FCB7 0F:FCA7: 85 12     STA ram_0012_temp
C - - - - - 0x03FCB9 0F:FCA9: A5 13     LDA ram_0013_temp
C - - - - - 0x03FCBB 0F:FCAB: 30 0D     BMI bra_FCBA
C - - - - - 0x03FCBD 0F:FCAD: 18        CLC
C - - - - - 0x03FCBE 0F:FCAE: A5 56     LDA ram_cam_pos_lo
C - - - - - 0x03FCC0 0F:FCB0: 65 11     ADC ram_0011_temp
C - - - - - 0x03FCC2 0F:FCB2: 90 13     BCC bra_FCC7
C - - - - - 0x03FCC4 0F:FCB4: 18        CLC
C - - - - - 0x03FCC5 0F:FCB5: 69 10     ADC #$10
C - - - - - 0x03FCC7 0F:FCB7: 4C CE FC  JMP loc_FCCE
bra_FCBA:
C - - - - - 0x03FCCA 0F:FCBA: 18        CLC
C - - - - - 0x03FCCB 0F:FCBB: A5 56     LDA ram_cam_pos_lo
C - - - - - 0x03FCCD 0F:FCBD: 65 11     ADC ram_0011_temp
C - - - - - 0x03FCCF 0F:FCBF: B0 06     BCS bra_FCC7
C - - - - - 0x03FCD1 0F:FCC1: 38        SEC
C - - - - - 0x03FCD2 0F:FCC2: E9 10     SBC #$10
C - - - - - 0x03FCD4 0F:FCC4: 4C CE FC  JMP loc_FCCE
bra_FCC7:
C - - - - - 0x03FCD7 0F:FCC7: C9 F0     CMP #$F0
C - - - - - 0x03FCD9 0F:FCC9: 90 03     BCC bra_FCCE
C - - - - - 0x03FCDB 0F:FCCB: 18        CLC
C - - - - - 0x03FCDC 0F:FCCC: 69 10     ADC #$10
loc_FCCE:
bra_FCCE:
C D 3 - - - 0x03FCDE 0F:FCCE: 29 F0     AND #$F0
C - - - - - 0x03FCE0 0F:FCD0: 4A        LSR
C - - - - - 0x03FCE1 0F:FCD1: 18        CLC
C - - - - - 0x03FCE2 0F:FCD2: 65 12     ADC ram_0012_temp
C - - - - - 0x03FCE4 0F:FCD4: A8        TAY
C - - - - - 0x03FCE5 0F:FCD5: A5 10     LDA ram_0010_temp
C - - - - - 0x03FCE7 0F:FCD7: 29 10     AND #$10
C - - - - - 0x03FCE9 0F:FCD9: D0 64     BNE bra_FD3F
C - - - - - 0x03FCEB 0F:FCDB: F0 54     BEQ bra_FD31    ; jmp



sub_0x03FCED:
; in
    ; A = 
    ; X = 
    ; 0068 = 
; out
    ; A = 
    ; Z
        ; 0 = 
        ; 1 = 
C - - - - - 0x03FCED 0F:FCDD: 48        PHA
C - - - - - 0x03FCEE 0F:FCDE: A5 68     LDA ram_0068
C - - - - - 0x03FCF0 0F:FCE0: 30 9D     BMI bra_FC7F
C - - - - - 0x03FCF2 0F:FCE2: 68        PLA
C - - - - - 0x03FCF3 0F:FCE3: 18        CLC
C - - - - - 0x03FCF4 0F:FCE4: 6D 38 04  ADC ram_plr_pos_X_hi
C - - - - - 0x03FCF7 0F:FCE7: A8        TAY
C - - - - - 0x03FCF8 0F:FCE8: 8A        TXA
C - - - - - 0x03FCF9 0F:FCE9: 18        CLC
C - - - - - 0x03FCFA 0F:FCEA: 6D 1C 04  ADC ram_plr_pos_Y_hi
loc_FCED:
C D 3 - - - 0x03FCFD 0F:FCED: 38        SEC
C - - - - - 0x03FCFE 0F:FCEE: E9 20     SBC #$20
C - - - - - 0x03FD00 0F:FCF0: 90 57     BCC bra_FD49
C - - - - - 0x03FD02 0F:FCF2: C9 C0     CMP #$C0
C - - - - - 0x03FD04 0F:FCF4: B0 53     BCS bra_FD49
C - - - - - 0x03FD06 0F:FCF6: 85 11     STA ram_0011_t00B
C - - - - - 0x03FD08 0F:FCF8: 84 10     STY ram_0010_t010
; / 10
C - - - - - 0x03FD0A 0F:FCFA: 46 11     LSR ram_0011_t00B
C - - - - - 0x03FD0C 0F:FCFC: 46 11     LSR ram_0011_t00B
C - - - - - 0x03FD0E 0F:FCFE: 46 11     LSR ram_0011_t00B
C - - - - - 0x03FD10 0F:FD00: 46 11     LSR ram_0011_t00B
C - - - - - 0x03FD12 0F:FD02: A5 56     LDA ram_cam_pos_lo
C - - - - - 0x03FD14 0F:FD04: 18        CLC
C - - - - - 0x03FD15 0F:FD05: 65 10     ADC ram_0010_t010
C - - - - - 0x03FD17 0F:FD07: 85 13     STA ram_0013_temp
C - - - - - 0x03FD19 0F:FD09: A5 57     LDA ram_cam_pos_hi
C - - - - - 0x03FD1B 0F:FD0B: 69 00     ADC #$00
loc_FD0D:
C D 3 - - - 0x03FD1D 0F:FD0D: 85 14     STA ram_0014_temp
C - - - - - 0x03FD1F 0F:FD0F: A8        TAY
C - - - - - 0x03FD20 0F:FD10: A5 13     LDA ram_0013_temp
; / 20
C - - - - - 0x03FD22 0F:FD12: 4A        LSR
C - - - - - 0x03FD23 0F:FD13: 4A        LSR
C - - - - - 0x03FD24 0F:FD14: 4A        LSR
C - - - - - 0x03FD25 0F:FD15: 4A        LSR
C - - - - - 0x03FD26 0F:FD16: 4A        LSR
C - - - - - 0x03FD27 0F:FD17: 19 61 FD  ORA tbl_FD61,Y
loc_FD1A:
C D 3 - - - 0x03FD2A 0F:FD1A: C9 0C     CMP #$0C
C - - - - - 0x03FD2C 0F:FD1C: 90 05     BCC bra_FD23
C - - - - - 0x03FD2E 0F:FD1E: E9 0C     SBC #$0C
C - - - - - 0x03FD30 0F:FD20: 4C 1A FD  JMP loc_FD1A
bra_FD23:
C - - - - - 0x03FD33 0F:FD23: A8        TAY
C - - - - - 0x03FD34 0F:FD24: B9 4C FD  LDA tbl_FD4C,Y
C - - - - - 0x03FD37 0F:FD27: 18        CLC
C - - - - - 0x03FD38 0F:FD28: 65 11     ADC ram_0011_t00B
C - - - - - 0x03FD3A 0F:FD2A: A8        TAY
C - - - - - 0x03FD3B 0F:FD2B: A5 13     LDA ram_0013_temp
C - - - - - 0x03FD3D 0F:FD2D: 29 10     AND #$10
C - - - - - 0x03FD3F 0F:FD2F: D0 0E     BNE bra_FD3F
bra_FD31:
C - - - - - 0x03FD41 0F:FD31: A9 00     LDA #$00
C - - - - - 0x03FD43 0F:FD33: 85 A5     STA ram_00A5
C - - - - - 0x03FD45 0F:FD35: B9 E0 06  LDA ram_06E0,Y
; / 10
C - - - - - 0x03FD48 0F:FD38: 4A        LSR
C - - - - - 0x03FD49 0F:FD39: 4A        LSR
C - - - - - 0x03FD4A 0F:FD3A: 4A        LSR
C - - - - - 0x03FD4B 0F:FD3B: 4A        LSR
C - - - - - 0x03FD4C 0F:FD3C: C9 00     CMP #$00
C - - - - - 0x03FD4E 0F:FD3E: 60        RTS
bra_FD3F:
C - - - - - 0x03FD4F 0F:FD3F: A9 01     LDA #$01
C - - - - - 0x03FD51 0F:FD41: 85 A5     STA ram_00A5
C - - - - - 0x03FD53 0F:FD43: B9 E0 06  LDA ram_06E0,Y
C - - - - - 0x03FD56 0F:FD46: 29 0F     AND #$0F
C - - - - - 0x03FD58 0F:FD48: 60        RTS
bra_FD49:
C - - - - - 0x03FD59 0F:FD49: A9 00     LDA #$00
C - - - - - 0x03FD5B 0F:FD4B: 60        RTS



tbl_FD4C:
tbl_0x03FD5C:
- D 3 - - - 0x03FD5C 0F:FD4C: 00        .byte $00   ; 00 
- D 3 - - - 0x03FD5D 0F:FD4D: 0C        .byte $0C   ; 01 
- D 3 - - - 0x03FD5E 0F:FD4E: 18        .byte $18   ; 02 
- D 3 - - - 0x03FD5F 0F:FD4F: 24        .byte $24   ; 03 
- D 3 - - - 0x03FD60 0F:FD50: 30        .byte $30   ; 04 
- D 3 - - - 0x03FD61 0F:FD51: 3C        .byte $3C   ; 05 
- D 3 - - - 0x03FD62 0F:FD52: 48        .byte $48   ; 06 
- D 3 - - - 0x03FD63 0F:FD53: 54        .byte $54   ; 07 
- D 3 - - - 0x03FD64 0F:FD54: 60        .byte $60   ; 08 
- D 3 - - - 0x03FD65 0F:FD55: 6C        .byte $6C   ; 09 
- D 3 - - - 0x03FD66 0F:FD56: 78        .byte $78   ; 0A 
- D 3 - - - 0x03FD67 0F:FD57: 84        .byte $84   ; 0B 



tbl_0x03FD68:
; bzk optimize, move to bank 84
- D 3 - - - 0x03FD68 0F:FD58: 00        .byte $00   ; 00 
- D 3 - - - 0x03FD69 0F:FD59: 08        .byte $08   ; 01 
- D 3 - - - 0x03FD6A 0F:FD5A: 04        .byte $04   ; 02 
- D 3 - - - 0x03FD6B 0F:FD5B: 00        .byte $00   ; 03 
- D 3 - - - 0x03FD6C 0F:FD5C: 08        .byte $08   ; 04 
- - - - - - 0x03FD6D 0F:FD5D: 04        .byte $04   ; 05 
- - - - - - 0x03FD6E 0F:FD5E: 00        .byte $00   ; 06 
- - - - - - 0x03FD6F 0F:FD5F: 08        .byte $08   ; 07 
- - - - - - 0x03FD70 0F:FD60: 04        .byte $04   ; 08 



tbl_FD61:
tbl_0x03FD71:
- D 3 - - - 0x03FD71 0F:FD61: 00        .byte $00   ; 00 (00) 
- D 3 - - - 0x03FD72 0F:FD62: 08        .byte $08   ; 10 (20) 
- D 3 - - - 0x03FD73 0F:FD63: 10        .byte $10   ; 20 (40) 
- D 3 - - - 0x03FD74 0F:FD64: 18        .byte $18   ; 30 (60) 
- D 3 - - - 0x03FD75 0F:FD65: 20        .byte $20   ; 40 (80) 
- D 3 - - - 0x03FD76 0F:FD66: 28        .byte $28   ; 50 (A0) 
- - - - - - 0x03FD77 0F:FD67: 30        .byte $30   ; 60 (C0) 
- - - - - - 0x03FD78 0F:FD68: 38        .byte $38   ; 70 (E0) 
- - - - - - 0x03FD79 0F:FD69: 40        .byte $40   ; 80 
- - - - - - 0x03FD7A 0F:FD6A: 48        .byte $48   ; 90 
- - - - - - 0x03FD7B 0F:FD6B: 50        .byte $50   ; A0 
- - - - - - 0x03FD7C 0F:FD6C: 58        .byte $58   ; B0 
- - - - - - 0x03FD7D 0F:FD6D: 60        .byte $60   ; C0 
- - - - - - 0x03FD7E 0F:FD6E: 68        .byte $68   ; D0 
- - - - - - 0x03FD7F 0F:FD6F: 70        .byte $70   ; E0 
- - - - - - 0x03FD80 0F:FD70: 78        .byte $78   ; F0 


; bzk garbage
- - - - - - 0x03FD81 0F:FD71: 00        .byte $00   ; 
- - - - - - 0x03FD82 0F:FD72: 10        .byte $10   ; 
- - - - - - 0x03FD83 0F:FD73: 20        .byte $20   ; 
- - - - - - 0x03FD84 0F:FD74: 30        .byte $30   ; 
- - - - - - 0x03FD85 0F:FD75: 40        .byte $40   ; 
- - - - - - 0x03FD86 0F:FD76: 50        .byte $50   ; 
- - - - - - 0x03FD87 0F:FD77: 60        .byte $60   ; 
- - - - - - 0x03FD88 0F:FD78: 70        .byte $70   ; 
- - - - - - 0x03FD89 0F:FD79: 80        .byte $80   ; 
- - - - - - 0x03FD8A 0F:FD7A: 90        .byte $90   ; 
- - - - - - 0x03FD8B 0F:FD7B: A0        .byte $A0   ; 
- - - - - - 0x03FD8C 0F:FD7C: B0        .byte $B0   ; 
- - - - - - 0x03FD8D 0F:FD7D: C0        .byte $C0   ; 
- - - - - - 0x03FD8E 0F:FD7E: D0        .byte $D0   ; 
- - - - - - 0x03FD8F 0F:FD7F: E0        .byte $E0   ; 
- - - - - - 0x03FD90 0F:FD80: F0        .byte $F0   ; 



tbl_0x03FD91_speed_lo:
; bzk optimize, move to bank 9C
- D 3 - - - 0x03FD91 0F:FD81: 00        .byte $00   ; 00 
- D 3 - - - 0x03FD92 0F:FD82: 06        .byte $06   ; 01 
- D 3 - - - 0x03FD93 0F:FD83: 0D        .byte $0D   ; 02 
- D 3 - - - 0x03FD94 0F:FD84: 13        .byte $13   ; 03 
- D 3 - - - 0x03FD95 0F:FD85: 19        .byte $19   ; 04 
- D 3 - - - 0x03FD96 0F:FD86: 1F        .byte $1F   ; 05 
- D 3 - - - 0x03FD97 0F:FD87: 25        .byte $25   ; 06 
- D 3 - - - 0x03FD98 0F:FD88: 2C        .byte $2C   ; 07 
- D 3 - - - 0x03FD99 0F:FD89: 32        .byte $32   ; 08 
- D 3 - - - 0x03FD9A 0F:FD8A: 38        .byte $38   ; 09 
- D 3 - - - 0x03FD9B 0F:FD8B: 3E        .byte $3E   ; 0A 
- D 3 - - - 0x03FD9C 0F:FD8C: 44        .byte $44   ; 0B 
- D 3 - - - 0x03FD9D 0F:FD8D: 4A        .byte $4A   ; 0C 
- D 3 - - - 0x03FD9E 0F:FD8E: 50        .byte $50   ; 0D 
- D 3 - - - 0x03FD9F 0F:FD8F: 56        .byte $56   ; 0E 
- D 3 - - - 0x03FDA0 0F:FD90: 5C        .byte $5C   ; 0F 
- D 3 - - - 0x03FDA1 0F:FD91: 62        .byte $62   ; 10 
- D 3 - - - 0x03FDA2 0F:FD92: 67        .byte $67   ; 11 
- D 3 - - - 0x03FDA3 0F:FD93: 6D        .byte $6D   ; 12 
- D 3 - - - 0x03FDA4 0F:FD94: 73        .byte $73   ; 13 
- D 3 - - - 0x03FDA5 0F:FD95: 78        .byte $78   ; 14 
- D 3 - - - 0x03FDA6 0F:FD96: 7E        .byte $7E   ; 15 
- D 3 - - - 0x03FDA7 0F:FD97: 83        .byte $83   ; 16 
- D 3 - - - 0x03FDA8 0F:FD98: 88        .byte $88   ; 17 
- D 3 - - - 0x03FDA9 0F:FD99: 8E        .byte $8E   ; 18 
- D 3 - - - 0x03FDAA 0F:FD9A: 93        .byte $93   ; 19 
- D 3 - - - 0x03FDAB 0F:FD9B: 98        .byte $98   ; 1A 
- D 3 - - - 0x03FDAC 0F:FD9C: 9D        .byte $9D   ; 1B 
- D 3 - - - 0x03FDAD 0F:FD9D: A2        .byte $A2   ; 1C 
- D 3 - - - 0x03FDAE 0F:FD9E: A7        .byte $A7   ; 1D 
- D 3 - - - 0x03FDAF 0F:FD9F: AB        .byte $AB   ; 1E 
- D 3 - - - 0x03FDB0 0F:FDA0: B0        .byte $B0   ; 1F 
- D 3 - - - 0x03FDB1 0F:FDA1: B4        .byte $B4   ; 20 
- D 3 - - - 0x03FDB2 0F:FDA2: B9        .byte $B9   ; 21 
- D 3 - - - 0x03FDB3 0F:FDA3: BD        .byte $BD   ; 22 
- D 3 - - - 0x03FDB4 0F:FDA4: C1        .byte $C1   ; 23 
- D 3 - - - 0x03FDB5 0F:FDA5: C5        .byte $C5   ; 24 
- D 3 - - - 0x03FDB6 0F:FDA6: C9        .byte $C9   ; 25 
- D 3 - - - 0x03FDB7 0F:FDA7: CD        .byte $CD   ; 26 
- D 3 - - - 0x03FDB8 0F:FDA8: D0        .byte $D0   ; 27 
- D 3 - - - 0x03FDB9 0F:FDA9: D4        .byte $D4   ; 28 
- D 3 - - - 0x03FDBA 0F:FDAA: D7        .byte $D7   ; 29 
- D 3 - - - 0x03FDBB 0F:FDAB: DB        .byte $DB   ; 2A 
- D 3 - - - 0x03FDBC 0F:FDAC: DE        .byte $DE   ; 2B 
- D 3 - - - 0x03FDBD 0F:FDAD: E1        .byte $E1   ; 2C 
- D 3 - - - 0x03FDBE 0F:FDAE: E4        .byte $E4   ; 2D 
- D 3 - - - 0x03FDBF 0F:FDAF: E7        .byte $E7   ; 2E 
- D 3 - - - 0x03FDC0 0F:FDB0: E9        .byte $E9   ; 2F 
- D 3 - - - 0x03FDC1 0F:FDB1: EC        .byte $EC   ; 30 
- D 3 - - - 0x03FDC2 0F:FDB2: EE        .byte $EE   ; 31 
- D 3 - - - 0x03FDC3 0F:FDB3: F0        .byte $F0   ; 32 
- D 3 - - - 0x03FDC4 0F:FDB4: F2        .byte $F2   ; 33 
- D 3 - - - 0x03FDC5 0F:FDB5: F4        .byte $F4   ; 34 
- D 3 - - - 0x03FDC6 0F:FDB6: F6        .byte $F6   ; 35 
- D 3 - - - 0x03FDC7 0F:FDB7: F7        .byte $F7   ; 36 
- D 3 - - - 0x03FDC8 0F:FDB8: F9        .byte $F9   ; 37 
- D 3 - - - 0x03FDC9 0F:FDB9: FA        .byte $FA   ; 38 
- D 3 - - - 0x03FDCA 0F:FDBA: FB        .byte $FB   ; 39 
- D 3 - - - 0x03FDCB 0F:FDBB: FC        .byte $FC   ; 3A 
- D 3 - - - 0x03FDCC 0F:FDBC: FD        .byte $FD   ; 3B 
- D 3 - - - 0x03FDCD 0F:FDBD: FE        .byte $FE   ; 3C 
- D 3 - - - 0x03FDCE 0F:FDBE: FE        .byte $FE   ; 3D 
- D 3 - - - 0x03FDCF 0F:FDBF: FF        .byte $FF   ; 3E 
- D 3 - - - 0x03FDD0 0F:FDC0: FF        .byte $FF   ; 3F 
- D 3 - - - 0x03FDD1 0F:FDC1: FF        .byte $FF   ; 40 



tbl_0x03FDD2:
; bzk optimize, move to bank 96
- D 3 - - - 0x03FDD2 0F:FDC2: 00        .byte $00   ; 40 
- D 3 - - - 0x03FDD3 0F:FDC3: 06        .byte $06   ; 41 
- D 3 - - - 0x03FDD4 0F:FDC4: 0D        .byte $0D   ; 42 
- D 3 - - - 0x03FDD5 0F:FDC5: 13        .byte $13   ; 43 
- D 3 - - - 0x03FDD6 0F:FDC6: 19        .byte $19   ; 44 
- D 3 - - - 0x03FDD7 0F:FDC7: 1F        .byte $1F   ; 45 
- D 3 - - - 0x03FDD8 0F:FDC8: 25        .byte $25   ; 46 
- D 3 - - - 0x03FDD9 0F:FDC9: 2D        .byte $2D   ; 47 
- D 3 - - - 0x03FDDA 0F:FDCA: 33        .byte $33   ; 48 
- D 3 - - - 0x03FDDB 0F:FDCB: 39        .byte $39   ; 49 
- D 3 - - - 0x03FDDC 0F:FDCC: 40        .byte $40   ; 4A 
- D 3 - - - 0x03FDDD 0F:FDCD: 46        .byte $46   ; 4B 
- D 3 - - - 0x03FDDE 0F:FDCE: 4D        .byte $4D   ; 4C 
- D 3 - - - 0x03FDDF 0F:FDCF: 54        .byte $54   ; 4D 
- D 3 - - - 0x03FDE0 0F:FDD0: 5B        .byte $5B   ; 4E 
- D 3 - - - 0x03FDE1 0F:FDD1: 63        .byte $63   ; 4F 
- D 3 - - - 0x03FDE2 0F:FDD2: 6A        .byte $6A   ; 50 
- D 3 - - - 0x03FDE3 0F:FDD3: 71        .byte $71   ; 51 
- D 3 - - - 0x03FDE4 0F:FDD4: 78        .byte $78   ; 52 
- D 3 - - - 0x03FDE5 0F:FDD5: 81        .byte $81   ; 53 
- D 3 - - - 0x03FDE6 0F:FDD6: 88        .byte $88   ; 54 
- D 3 - - - 0x03FDE7 0F:FDD7: 91        .byte $91   ; 55 
- D 3 - - - 0x03FDE8 0F:FDD8: 99        .byte $99   ; 56 
- D 3 - - - 0x03FDE9 0F:FDD9: A1        .byte $A1   ; 57 
- D 3 - - - 0x03FDEA 0F:FDDA: AB        .byte $AB   ; 58 
- D 3 - - - 0x03FDEB 0F:FDDB: B4        .byte $B4   ; 59 
- D 3 - - - 0x03FDEC 0F:FDDC: BD        .byte $BD   ; 5A 
- D 3 - - - 0x03FDED 0F:FDDD: C7        .byte $C7   ; 5B 
- D 3 - - - 0x03FDEE 0F:FDDE: D2        .byte $D2   ; 5C 
- D 3 - - - 0x03FDEF 0F:FDDF: DD        .byte $DD   ; 5D 
- D 3 - - - 0x03FDF0 0F:FDE0: E7        .byte $E7   ; 5E 
- D 3 - - - 0x03FDF1 0F:FDE1: F3        .byte $F3   ; 5F 
- D 3 - - - 0x03FDF2 0F:FDE2: FF        .byte $FF   ; 60 



sub_FDE3:
; bzk optimize, all routines switch to bank 96
; before JSR to here. there is no need in doing that
C - - - - - 0x03FDF3 0F:FDE3: E6 A3     INC ram_00A3
C - - - - - 0x03FDF5 0F:FDE5: A9 FF     LDA #$FF
C - - - - - 0x03FDF7 0F:FDE7: 85 92     STA ram_0092_useless
C - - - - - 0x03FDF9 0F:FDE9: A2 01     LDX #$01
loc_FDEB_loop:
C D 3 - - - 0x03FDFB 0F:FDEB: BD 4E 05  LDA ram_obj_id,X
C - - - - - 0x03FDFE 0F:FDEE: D0 03     BNE bra_FDF3
C - - - - - 0x03FE00 0F:FDF0: 4C 7E FE  JMP loc_FE7E_next_object
bra_FDF3:
C - - - - - 0x03FE03 0F:FDF3: 86 6C     STX ram_006C_object_index
C - - - - - 0x03FE05 0F:FDF5: A9 96     LDA #con_prg_bank + $96
C - - - - - 0x03FE07 0F:FDF7: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03FE0A 0F:FDFA: A5 78     LDA ram_0078_flag
; bzk optimize, don't switch bank 96 beforehand, branch to 0x03FE16
C - - - - - 0x03FE0C 0F:FDFC: D0 0D     BNE bra_FE0B
C - - - - - 0x03FE0E 0F:FDFE: A9 88     LDA #con_prg_bank + $88
C - - - - - 0x03FE10 0F:FE00: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03FE13 0F:FE03: 20 06 B9  JSR sub_0x013916
C - - - - - 0x03FE16 0F:FE06: A9 96     LDA #con_prg_bank + $96
C - - - - - 0x03FE18 0F:FE08: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
bra_FE0B:
C - - - - - 0x03FE1B 0F:FE0B: 20 FB B1  JSR sub_0x02F20B
C - - - - - 0x03FE1E 0F:FE0E: A6 6C     LDX ram_006C_object_index
C - - - - - 0x03FE20 0F:FE10: BD 4E 05  LDA ram_obj_id,X
C - - - - - 0x03FE23 0F:FE13: F0 69     BEQ bra_FE7E
C - - - - - 0x03FE25 0F:FE15: C9 40     CMP #$40
C - - - - - 0x03FE27 0F:FE17: B0 0B     BCS bra_FE24
C - - - - - 0x03FE29 0F:FE19: A9 92     LDA #con_prg_bank + $92
C - - - - - 0x03FE2B 0F:FE1B: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03FE2E 0F:FE1E: 20 01 80  JSR sub_0x024011
C - - - - - 0x03FE31 0F:FE21: 4C 44 FE  JMP loc_FE44
bra_FE24:
C - - - - - 0x03FE34 0F:FE24: BD 70 04  LDA ram_obj_flags,X
C - - - - - 0x03FE37 0F:FE27: 29 02     AND #con_obj_flag_02
C - - - - - 0x03FE39 0F:FE29: F0 06     BEQ bra_FE31
C - - - - - 0x03FE3B 0F:FE2B: 20 9A FF  JSR sub_FF9A
C - - - - - 0x03FE3E 0F:FE2E: 4C 73 FE  JMP loc_FE73
bra_FE31:
C - - - - - 0x03FE41 0F:FE31: BD 4E 05  LDA ram_obj_id,X
C - - - - - 0x03FE44 0F:FE34: C9 90     CMP #$90
C - - - - - 0x03FE46 0F:FE36: B0 09     BCS bra_FE41
C - - - - - 0x03FE48 0F:FE38: C9 79     CMP #$79
C - - - - - 0x03FE4A 0F:FE3A: B0 0A     BCS bra_FE46
C - - - - - 0x03FE4C 0F:FE3C: 20 0C FF  JSR sub_FF0C
C - - - - - 0x03FE4F 0F:FE3F: B0 32     BCS bra_FE73
bra_FE41:
C - - - - - 0x03FE51 0F:FE41: 20 F9 BC  JSR sub_0x02FD09
loc_FE44:
C D 3 - - - 0x03FE54 0F:FE44: A6 6C     LDX ram_006C_object_index
bra_FE46:
C - - - - - 0x03FE56 0F:FE46: BD 4E 05  LDA ram_obj_id,X
C - - - - - 0x03FE59 0F:FE49: C9 68     CMP #$68
C - - - - - 0x03FE5B 0F:FE4B: B0 08     BCS bra_FE55
C - - - - - 0x03FE5D 0F:FE4D: C9 40     CMP #$40
C - - - - - 0x03FE5F 0F:FE4F: 90 04     BCC bra_FE55
C - - - - - 0x03FE61 0F:FE51: A5 AB     LDA ram_stopwatch_flag
C - - - - - 0x03FE63 0F:FE53: D0 1E     BNE bra_FE73
bra_FE55:
C - - - - - 0x03FE65 0F:FE55: BD 70 04  LDA ram_obj_flags,X
C - - - - - 0x03FE68 0F:FE58: 29 40     AND #con_obj_flag_40
C - - - - - 0x03FE6A 0F:FE5A: F0 08     BEQ bra_FE64
C - - - - - 0x03FE6C 0F:FE5C: A9 96     LDA #con_prg_bank + $96
C - - - - - 0x03FE6E 0F:FE5E: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03FE71 0F:FE61: 20 01 80  JSR sub_0x02C011
bra_FE64:
C - - - - - 0x03FE74 0F:FE64: BD 4E 05  LDA ram_obj_id,X
C - - - - - 0x03FE77 0F:FE67: F0 15     BEQ bra_FE7E
C - - - - - 0x03FE79 0F:FE69: BD 70 04  LDA ram_obj_flags,X
C - - - - - 0x03FE7C 0F:FE6C: 29 20     AND #con_obj_flag_20
C - - - - - 0x03FE7E 0F:FE6E: D0 03     BNE bra_FE73
C - - - - - 0x03FE80 0F:FE70: 20 75 EF  JSR sub_EF75
bra_FE73:
loc_FE73:
C D 3 - - - 0x03FE83 0F:FE73: A9 88     LDA #con_prg_bank + $88
C - - - - - 0x03FE85 0F:FE75: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03FE88 0F:FE78: 20 30 B7  JSR sub_0x013740
C - - - - - 0x03FE8B 0F:FE7B: 20 57 B8  JSR sub_0x013867
loc_FE7E_next_object:
bra_FE7E:
C D 3 - - - 0x03FE8E 0F:FE7E: E8        INX
C - - - - - 0x03FE8F 0F:FE7F: E0 13     CPX #$13
C - - - - - 0x03FE91 0F:FE81: B0 03     BCS bra_FE86
C - - - - - 0x03FE93 0F:FE83: 4C EB FD  JMP loc_FDEB_loop
bra_FE86:
C - - - - - 0x03FE96 0F:FE86: A9 94     LDA #con_prg_bank + $94
C - - - - - 0x03FE98 0F:FE88: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03FE9B 0F:FE8B: 20 EA 84  JSR sub_0x0284FA
C - - - - - 0x03FE9E 0F:FE8E: A5 8C     LDA ram_008C_timer
C - - - - - 0x03FEA0 0F:FE90: 30 09     BMI bra_FE9B_RTS
C - - - - - 0x03FEA2 0F:FE92: C6 8C     DEC ram_008C_timer
C - - - - - 0x03FEA4 0F:FE94: 10 05     BPL bra_FE9B_RTS
C - - - - - 0x03FEA6 0F:FE96: A9 00     LDA #$00
C - - - - - 0x03FEA8 0F:FE98: 8D 17 04  STA ram_obj_anim_id + $17
bra_FE9B_RTS:
C - - - - - 0x03FEAB 0F:FE9B: 60        RTS



sub_0x03FEAC:
C - - - - - 0x03FEAC 0F:FE9C: A9 88     LDA #con_prg_bank + $88
C - - - - - 0x03FEAE 0F:FE9E: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03FEB1 0F:FEA1: 20 6D B8  JSR sub_0x01387D
C - - - - - 0x03FEB4 0F:FEA4: A8        TAY
C - - - - - 0x03FEB5 0F:FEA5: 38        SEC
C - - - - - 0x03FEB6 0F:FEA6: BD 1C 04  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x03FEB9 0F:FEA9: F9 83 B8  SBC tbl_0x013893_pos_Y_hi,Y
C - - - - - 0x03FEBC 0F:FEAC: A4 82     LDY ram_copy_plr_id
C - - - - - 0x03FEBE 0F:FEAE: F9 D1 B8  SBC tbl_0x0138E1_pos_Y_hi,Y
C - - - - - 0x03FEC1 0F:FEB1: 8D 1C 04  STA ram_plr_pos_Y_hi
C - - - - - 0x03FEC4 0F:FEB4: A9 9C     LDA #con_prg_bank + $9C
C - - - - - 0x03FEC6 0F:FEB6: 4C E6 E2  JMP loc_E2E6_prg_bankswitch



sub_0x03FEC9:
loc_0x03FEC9:
; out
    ; Z
        ; 0 = 
        ; 1 = 
C D 3 - - - 0x03FEC9 0F:FEB9: A2 01     LDX #$01
bra_FEBB_loop:
C - - - - - 0x03FECB 0F:FEBB: BD 4E 05  LDA ram_obj_id,X
C - - - - - 0x03FECE 0F:FEBE: F0 07     BEQ bra_FEC7_RTS
C - - - - - 0x03FED0 0F:FEC0: E8        INX
C - - - - - 0x03FED1 0F:FEC1: E0 0D     CPX #$0D
C - - - - - 0x03FED3 0F:FEC3: 90 F6     BCC bra_FEBB_loop
C - - - - - 0x03FED5 0F:FEC5: A9 01     LDA #$01
bra_FEC7_RTS:   ; A = 00
C - - - - - 0x03FED7 0F:FEC7: 60        RTS



sub_FEC8_clear_speed:
sub_0x03FED8_clear_speed:
loc_0x03FED8_clear_speed:
C D 3 - - - 0x03FED8 0F:FEC8: A9 00     LDA #$00
C - - - - - 0x03FEDA 0F:FECA: 9D F2 04  STA ram_obj_spd_X_hi,X
C - - - - - 0x03FEDD 0F:FECD: 9D 09 05  STA ram_obj_spd_X_lo,X
C - - - - - 0x03FEE0 0F:FED0: 9D 20 05  STA ram_obj_spd_Y_hi,X
C - - - - - 0x03FEE3 0F:FED3: 9D 37 05  STA ram_obj_spd_Y_lo,X
C - - - - - 0x03FEE6 0F:FED6: 60        RTS



sub_0x03FEE7_clear_object_speed_and_data:
C - - - - - 0x03FEE7 0F:FED7: 20 C8 FE  JSR sub_FEC8_clear_speed
C - - - - - 0x03FEEA 0F:FEDA: A9 00     LDA #$00
C - - - - - 0x03FEEC 0F:FEDC: 9D 7B 06  STA ram_obj_hp,X
C - - - - - 0x03FEEF 0F:FEDF: 9D 8D 06  STA ram_obj_068E,X
C - - - - - 0x03FEF2 0F:FEE2: 9D 54 04  STA ram_0454_obj,X
C - - - - - 0x03FEF5 0F:FEE5: 9D 70 04  STA ram_obj_flags,X ; con_obj_flag_00
C - - - - - 0x03FEF8 0F:FEE8: 9D 69 06  STA ram_obj_066A,X
; bzk optimize, loading the same A
C - - - - - 0x03FEFB 0F:FEEB: A9 00     LDA #$00
C - - - - - 0x03FEFD 0F:FEED: 9D 65 05  STA ram_obj_state,X
C - - - - - 0x03FF00 0F:FEF0: 9D C4 04  STA ram_obj_pos_X_lo,X
C - - - - - 0x03FF03 0F:FEF3: 9D DB 04  STA ram_obj_pos_Y_lo,X
C - - - - - 0x03FF06 0F:FEF6: 9D C1 05  STA ram_05C1_obj,X
C - - - - - 0x03FF09 0F:FEF9: 9D D8 05  STA ram_05D8_obj,X
C - - - - - 0x03FF0C 0F:FEFC: 9D EF 05  STA ram_05EF_obj,X
C - - - - - 0x03FF0F 0F:FEFF: 9D 06 06  STA ram_obj_config,X
C - - - - - 0x03FF12 0F:FF02: 9D 1D 06  STA ram_061D_obj,X
C - - - - - 0x03FF15 0F:FF05: 9D 33 06  STA ram_obj_0634,X
C - - - - - 0x03FF18 0F:FF08: 9D 45 06  STA ram_obj_0646,X
C - - - - - 0x03FF1B 0F:FF0B: 60        RTS



sub_FF0C:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x03FF1C 0F:FF0C: BD 4E 05  LDA ram_obj_id,X
C - - - - - 0x03FF1F 0F:FF0F: C9 48     CMP #$48
C - - - - - 0x03FF21 0F:FF11: 90 1C     BCC bra_FF2F_RTS
C - - - - - 0x03FF23 0F:FF13: C9 68     CMP #$68
C - - - - - 0x03FF25 0F:FF15: B0 17     BCS bra_FF2E
C - - - - - 0x03FF27 0F:FF17: BD 65 05  LDA ram_obj_state,X
C - - - - - 0x03FF2A 0F:FF1A: 29 3F     AND #$3F
C - - - - - 0x03FF2C 0F:FF1C: F0 10     BEQ bra_FF2E
C - - - - - 0x03FF2E 0F:FF1E: 85 17     STA ram_0017_t001
C - - - - - 0x03FF30 0F:FF20: C6 17     DEC ram_0017_t001
C - - - - - 0x03FF32 0F:FF22: BD 65 05  LDA ram_obj_state,X
C - - - - - 0x03FF35 0F:FF25: 29 C0     AND #$C0
C - - - - - 0x03FF37 0F:FF27: 05 17     ORA ram_0017_t001
C - - - - - 0x03FF39 0F:FF29: 9D 65 05  STA ram_obj_state,X
C - - - - - 0x03FF3C 0F:FF2C: 38        SEC
C - - - - - 0x03FF3D 0F:FF2D: 60        RTS
bra_FF2E:
C - - - - - 0x03FF3E 0F:FF2E: 18        CLC
bra_FF2F_RTS:
C - - - - - 0x03FF3F 0F:FF2F: 60        RTS



sub_0x03FF40:
C - - - - - 0x03FF40 0F:FF30: AD 00 80  LDA $8000   ; reading bank id
C - - - - - 0x03FF43 0F:FF33: 48        PHA
C - - - - - 0x03FF44 0F:FF34: A9 8C     LDA #con_prg_bank + $8C
C - - - - - 0x03FF46 0F:FF36: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03FF49 0F:FF39: 20 8E BE  JSR sub_0x01BE9E
C - - - - - 0x03FF4C 0F:FF3C: 68        PLA
C - - - - - 0x03FF4D 0F:FF3D: 4C E6 E2  JMP loc_E2E6_prg_bankswitch



loc_0x03FF50:
C D 3 - - - 0x03FF50 0F:FF40: AD 00 80  LDA $8000   ; reading bank id
C - - - - - 0x03FF53 0F:FF43: 48        PHA
C - - - - - 0x03FF54 0F:FF44: A9 92     LDA #con_prg_bank + $92
C - - - - - 0x03FF56 0F:FF46: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03FF59 0F:FF49: 20 6D 99  JSR sub_0x02597D
C - - - - - 0x03FF5C 0F:FF4C: 68        PLA
C - - - - - 0x03FF5D 0F:FF4D: 4C E6 E2  JMP loc_E2E6_prg_bankswitch



sub_0x03FF60:
C - - - - - 0x03FF60 0F:FF50: AD 00 80  LDA $8000   ; reading bank id
C - - - - - 0x03FF63 0F:FF53: 48        PHA
C - - - - - 0x03FF64 0F:FF54: A9 98     LDA #con_prg_bank + $98
C - - - - - 0x03FF66 0F:FF56: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03FF69 0F:FF59: 20 E5 B2  JSR sub_0x0332F5
C - - - - - 0x03FF6C 0F:FF5C: 68        PLA
C - - - - - 0x03FF6D 0F:FF5D: 4C E6 E2  JMP loc_E2E6_prg_bankswitch



sub_0x03FF70:
C - - - - - 0x03FF70 0F:FF60: A9 9A     LDA #con_prg_bank + $9A
C - - - - - 0x03FF72 0F:FF62: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03FF75 0F:FF65: 20 EF BD  JSR sub_0x037DFF
C - - - - - 0x03FF78 0F:FF68: A9 86     LDA #con_prg_bank + $86
C - - - - - 0x03FF7A 0F:FF6A: 4C E6 E2  JMP loc_E2E6_prg_bankswitch



sub_0x03FF7D:
C - - - - - 0x03FF7D 0F:FF6D: A9 9A     LDA #con_prg_bank + $9A
C - - - - - 0x03FF7F 0F:FF6F: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03FF82 0F:FF72: 20 BC BD  JSR sub_0x037DCC
C - - - - - 0x03FF85 0F:FF75: A9 86     LDA #con_prg_bank + $86
C - - - - - 0x03FF87 0F:FF77: 4C E6 E2  JMP loc_E2E6_prg_bankswitch



loc_0x03FF8A:
C D 3 - - - 0x03FF8A 0F:FF7A: AD 00 80  LDA $8000   ; reading bank id
C - - - - - 0x03FF8D 0F:FF7D: 48        PHA
C - - - - - 0x03FF8E 0F:FF7E: A9 8A     LDA #con_prg_bank + $8A
C - - - - - 0x03FF90 0F:FF80: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03FF93 0F:FF83: 20 C1 BB  JSR sub_0x017BD1
C - - - - - 0x03FF96 0F:FF86: 68        PLA
C - - - - - 0x03FF97 0F:FF87: 4C E6 E2  JMP loc_E2E6_prg_bankswitch



sub_0x03FF9A:
loc_0x03FF9A:
C D 3 - - - 0x03FF9A 0F:FF8A: A9 04     LDA #$04
C - - - - - 0x03FF9C 0F:FF8C: 9D 54 04  STA ram_0454_obj,X
C - - - - - 0x03FF9F 0F:FF8F: BD 65 05  LDA ram_obj_state,X
C - - - - - 0x03FFA2 0F:FF92: 29 3F     AND #$3F
C - - - - - 0x03FFA4 0F:FF94: 09 40     ORA #$40
C - - - - - 0x03FFA6 0F:FF96: 9D 65 05  STA ram_obj_state,X
C - - - - - 0x03FFA9 0F:FF99: 60        RTS



sub_FF9A:
C - - - - - 0x03FFAA 0F:FF9A: AD 00 80  LDA $8000   ; reading bank id
C - - - - - 0x03FFAD 0F:FF9D: 48        PHA
C - - - - - 0x03FFAE 0F:FF9E: A9 82     LDA #con_prg_bank + $82
C - - - - - 0x03FFB0 0F:FFA0: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03FFB3 0F:FFA3: 20 8D BC  JSR sub_0x007C9D
C - - - - - 0x03FFB6 0F:FFA6: 68        PLA
C - - - - - 0x03FFB7 0F:FFA7: 4C E6 E2  JMP loc_E2E6_prg_bankswitch



loc_0x03FFBA:
C D 3 - - - 0x03FFBA 0F:FFAA: AD 00 80  LDA $8000   ; reading bank id
C - - - - - 0x03FFBD 0F:FFAD: 48        PHA
C - - - - - 0x03FFBE 0F:FFAE: A9 82     LDA #con_prg_bank + $82
C - - - - - 0x03FFC0 0F:FFB0: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03FFC3 0F:FFB3: 20 12 BD  JSR sub_0x007D22
C - - - - - 0x03FFC6 0F:FFB6: 68        PLA
C - - - - - 0x03FFC7 0F:FFB7: 4C E6 E2  JMP loc_E2E6_prg_bankswitch



sub_0x03FFCA:
C - - - - - 0x03FFCA 0F:FFBA: AD 00 80  LDA $8000   ; reading bank id
C - - - - - 0x03FFCD 0F:FFBD: 48        PHA
C - - - - - 0x03FFCE 0F:FFBE: A9 94     LDA #con_prg_bank + $94
C - - - - - 0x03FFD0 0F:FFC0: 20 E6 E2  JSR sub_E2E6_prg_bankswitch
C - - - - - 0x03FFD3 0F:FFC3: 20 29 8F  JSR sub_0x028F39
C - - - - - 0x03FFD6 0F:FFC6: 68        PLA
C - - - - - 0x03FFD7 0F:FFC7: 4C E6 E2  JMP loc_E2E6_prg_bankswitch


; bzk garbage
- - - - - - 0x03FFDA 0F:FFCA: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x03FFE0 0F:FFD0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x03FFF0 0F:FFE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 


; bzk garbage
- - - - - - 0x040000 0F:FFF0: 4D        .byte "MAST900000"



.out .sprintf("Free bytes in bank FF: 0x%04X [%d]", ($FFFA - *), ($FFFA - *))



.segment "VECTORS"
- D 3 - - - 0x04000A 0F:FFFA: 53 E0     .word vec_E053_NMI
- D 3 - - - 0x04000C 0F:FFFC: 0B E0     .word vec_E00B_RESET
- D 3 - - - 0x04000E 0F:FFFE: 1A E1     .word vec_E11A_IRQ



