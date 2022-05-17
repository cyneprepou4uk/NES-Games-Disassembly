.segment "BANK_FF"
.include "bank_ram.inc"
.include "bank_val.inc"
; 0x01C010-0x02000F



.export tbl_0x01E410
.export loc_0x01E450
.export sub_0x01E47D
.export vec_0x01E494_NMI
.export sub_0x01E5F2_jump_to_pointers_after_JSR
.export sub_0x01E607_hide_all_sprites
.export loc_0x01E607_hide_all_sprites
.export sub_0x01E618
.export sub_0x01E635_disable_rendering
.export loc_0x01E635_disable_rendering
.export sub_0x01E689
.export sub_0x01E69F
.export tbl_0x01E6CE
.export sub_0x01E6D6
.export sub_0x01E6DE
.export sub_0x01E71E
.export sub_0x01E745
.export loc_0x01E745
.export sub_0x01E79A
.export loc_0x01E81C
.export sub_0x01E827
.export sub_0x01E86A
.export sub_0x01E872
.export sub_0x01E8E8
.export loc_0x01E8E8
.export loc_0x01EA10_clear_room_history
.export tbl_0x01EA1E
.export sub_0x01EA3B
.export loc_0x01EA3B
.export sub_0x01EA4D
.export loc_0x01EA4D
.export sub_0x01EA61
.export sub_0x01EADB
.export sub_0x01EAE3
.export sub_0x01EAED
.export loc_0x01EAED
.export loc_0x01EBB1
.export sub_0x01EBB3
.export loc_0x01EBB3
.export sub_0x01ED99
.export loc_0x01ED99
.export sub_0x01EDB0
.export loc_0x01EDD5
.export sub_0x01EE04
.export sub_0x01EE0A
.export sub_0x01EE20
.export sub_0x01EEC8
.export loc_0x01EEC8
.export sub_0x01EEF4
.export loc_0x01EEF4
.export sub_0x01EEF6
.export ofs_021_0x01EF81_05_flute
.export sub_0x01EFE0
.export sub_0x01F09D
.export loc_0x01F159
.export sub_0x01F171
.export sub_0x01F192
.export loc_0x01F192
.export sub_0x01F1E0
.export sub_0x01F1EF
.export sub_0x01F223
.export sub_0x01F22B
.export sub_0x01F233
.export sub_0x01F239
.export sub_0x01F241
.export sub_0x01F248
.export loc_0x01F248
.export sub_0x01F24C
.export loc_0x01F24C
.export loc_0x01F3A1
.export sub_0x01F3E4
.export sub_0x01F529
.export loc_0x01F58B
.export sub_0x01F865
.export sub_0x01FA5F
.export sub_0x01FA82
.export sub_0x01FA99
.export sub_0x01FAA3
.export loc_0x01FAA3
.export sub_0x01FEA8_decrease_invincibility_timer
.export sub_0x01FEB6
.export sub_0x01FEC1_destroy_object
.export loc_0x01FEC1_destroy_object
.export sub_0x01FEC3_create_object
.export loc_0x01FEC3_create_object
.export sub_0x01FECB
.export sub_0x01FEE6
.export loc_0x01FEE6
.export sub_0x01FEEA
.export loc_0x01FEEA
.export loc_0x01FF44
.export loc_0x01FF60_RESET_vector



.incbin "DPCM.bin"



tbl_E400:   ; bzk the very 1st byte is dpcm
tbl_0x01E410:
- D 3 - - A 0x01E410 07:E400: 30 65     .word ram_6530
- D 3 - - - 0x01E412 07:E402: 46 65     .word ram_6546
- D 3 - - - 0x01E414 07:E404: 5C 65     .word ram_655C
- D 3 - - - 0x01E416 07:E406: 72 65     .word ram_6572
- D 3 - - - 0x01E418 07:E408: 88 65     .word ram_6588
- D 3 - - - 0x01E41A 07:E40A: 9E 65     .word ram_659E
- D 3 - - - 0x01E41C 07:E40C: B4 65     .word ram_65B4
- D 3 - - - 0x01E41E 07:E40E: CA 65     .word ram_65CA
- D 3 - - - 0x01E420 07:E410: E0 65     .word ram_65E0
- D 3 - - - 0x01E422 07:E412: F6 65     .word ram_65F6
- D 3 - - - 0x01E424 07:E414: 0C 66     .word ram_660C
- D 3 - - - 0x01E426 07:E416: 22 66     .word ram_6622
- D 3 - - - 0x01E428 07:E418: 38 66     .word ram_6638
- D 3 - - - 0x01E42A 07:E41A: 4E 66     .word ram_664E
- D 3 - - - 0x01E42C 07:E41C: 64 66     .word ram_6664
- D 3 - - - 0x01E42E 07:E41E: 7A 66     .word ram_667A
- D 3 - - - 0x01E430 07:E420: 90 66     .word ram_6690
- D 3 - - - 0x01E432 07:E422: A6 66     .word ram_66A6
- D 3 - - - 0x01E434 07:E424: BC 66     .word ram_66BC
- D 3 - - - 0x01E436 07:E426: D2 66     .word ram_66D2
- D 3 - - - 0x01E438 07:E428: E8 66     .word ram_66E8
- D 3 - - - 0x01E43A 07:E42A: FE 66     .word ram_66FE
- D 3 - - - 0x01E43C 07:E42C: 14 67     .word ram_6714
- D 3 - - - 0x01E43E 07:E42E: 2A 67     .word ram_672A
- D 3 - - - 0x01E440 07:E430: 40 67     .word ram_6740
- D 3 - - - 0x01E442 07:E432: 56 67     .word ram_6756
- D 3 - - - 0x01E444 07:E434: 6C 67     .word ram_676C
- D 3 - - - 0x01E446 07:E436: 82 67     .word ram_6782
- D 3 - - - 0x01E448 07:E438: 98 67     .word ram_6798
- D 3 - - - 0x01E44A 07:E43A: AE 67     .word ram_67AE
- D 3 - - - 0x01E44C 07:E43C: C4 67     .word ram_67C4
- D 3 - - - 0x01E44E 07:E43E: DA 67     .word ram_67DA



loc_E440:
loc_0x01E450:
C D 3 - - - 0x01E450 07:E440: A9 00     LDA #$00
C - - - - - 0x01E452 07:E442: 85 F4     STA ram_00F4
C - - - - - 0x01E454 07:E444: A9 05     LDA #con_prg_bank + $05
C - - - - - 0x01E456 07:E446: 20 AC FF  JSR sub_FFAC_prg_bankswitch
C - - - - - 0x01E459 07:E449: 20 AC B4  JSR sub_0x0174BC
C - - - - - 0x01E45C 07:E44C: 20 E8 B4  JSR sub_0x0174F8
C - - - - - 0x01E45F 07:E44F: 20 5E E4  JSR sub_E45E
C - - - - - 0x01E462 07:E452: A5 FF     LDA ram_for_2000
C - - - - - 0x01E464 07:E454: 09 A0     ORA #$A0
C - - - - - 0x01E466 07:E456: 8D 00 20  STA $2000
C - - - - - 0x01E469 07:E459: 85 FF     STA ram_for_2000
loc_E45B_infinite_loop:
C D 3 - - - 0x01E46B 07:E45B: 4C 5B E4  JMP loc_E45B_infinite_loop



sub_E45E:
C - - - - - 0x01E46E 07:E45E: A9 00     LDA #$00
C - - - - - 0x01E470 07:E460: 8D 11 40  STA $4011
C - - - - - 0x01E473 07:E463: A9 0F     LDA #$0F
C - - - - - 0x01E475 07:E465: 8D 15 40  STA $4015
C - - - - - 0x01E478 07:E468: A9 06     LDA #$06
C - - - - - 0x01E47A 07:E46A: 8D 01 20  STA $2001
sub_E46D:
sub_0x01E47D:
C - - - - - 0x01E47D 07:E46D: 20 F7 E5  JSR sub_E5F7_hide_all_sprites
C - - - - - 0x01E480 07:E470: 20 80 E5  JSR sub_E580_set_scroll_to_00
C - - - - - 0x01E483 07:E473: 20 25 E6  JSR sub_E625_disable_rendering
C - - - - - 0x01E486 07:E476: A9 20     LDA #$20
C - - - - - 0x01E488 07:E478: 20 7D E4  JSR sub_E47D
C - - - - - 0x01E48B 07:E47B: A9 28     LDA #$28
sub_E47D:
C - - - - - 0x01E48D 07:E47D: A2 24     LDX #$24
C - - - - - 0x01E48F 07:E47F: A0 00     LDY #$00
C - - - - - 0x01E491 07:E481: 4C 94 E5  JMP loc_E594_clear_nmt



vec_E484_NMI:
vec_0x01E494_NMI:
C - - - - - 0x01E494 07:E484: A5 FF     LDA ram_for_2000
C - - - - - 0x01E496 07:E486: A6 5C     LDX ram_005C
C - - - - - 0x01E498 07:E488: F0 02     BEQ bra_E48C
C - - - - - 0x01E49A 07:E48A: 49 02     EOR #$02
bra_E48C:
C - - - - - 0x01E49C 07:E48C: 29 7F     AND #$7F
C - - - - - 0x01E49E 07:E48E: 85 FF     STA ram_for_2000
C - - - - - 0x01E4A0 07:E490: 29 7E     AND #$7E
C - - - - - 0x01E4A2 07:E492: 8D 00 20  STA $2000
C - - - - - 0x01E4A5 07:E495: A5 FE     LDA ram_for_2001
C - - - - - 0x01E4A7 07:E497: A4 E3     LDY ram_00E3
C - - - - - 0x01E4A9 07:E499: D0 08     BNE bra_E4A3
C - - - - - 0x01E4AB 07:E49B: A4 14     LDY ram_0014
C - - - - - 0x01E4AD 07:E49D: D0 06     BNE bra_E4A5
C - - - - - 0x01E4AF 07:E49F: A4 17     LDY ram_0017
C - - - - - 0x01E4B1 07:E4A1: D0 02     BNE bra_E4A5
bra_E4A3:
C - - - - - 0x01E4B3 07:E4A3: 09 1E     ORA #$1E
bra_E4A5:
C - - - - - 0x01E4B5 07:E4A5: 8D 01 20  STA $2001
C - - - - - 0x01E4B8 07:E4A8: 85 FE     STA ram_for_2001
C - - - - - 0x01E4BA 07:E4AA: A9 00     LDA #< ram_oam
C - - - - - 0x01E4BC 07:E4AC: 8D 03 20  STA $2003
C - - - - - 0x01E4BF 07:E4AF: A9 02     LDA #> ram_oam
C - - - - - 0x01E4C1 07:E4B1: 8D 14 40  STA $4014
C - - - - - 0x01E4C4 07:E4B4: A9 00     LDA #$00
C - - - - - 0x01E4C6 07:E4B6: 8D 05 20  STA $2005
C - - - - - 0x01E4C9 07:E4B9: 8D 05 20  STA $2005
C - - - - - 0x01E4CC 07:E4BC: A9 06     LDA #con_prg_bank + $06
C - - - - - 0x01E4CE 07:E4BE: 20 AC FF  JSR sub_FFAC_prg_bankswitch
C - - - - - 0x01E4D1 07:E4C1: 20 80 A0  JSR sub_0x01A090
C - - - - - 0x01E4D4 07:E4C4: A9 3F     LDA #> $3F00
C - - - - - 0x01E4D6 07:E4C6: 8D 06 20  STA $2006
C - - - - - 0x01E4D9 07:E4C9: A9 00     LDA #< $3F00
C - - - - - 0x01E4DB 07:E4CB: 8D 06 20  STA $2006
C - - - - - 0x01E4DE 07:E4CE: 8D 06 20  STA $2006
C - - - - - 0x01E4E1 07:E4D1: 8D 06 20  STA $2006
bra_E4D4:
C - - - - - 0x01E4E4 07:E4D4: AD 02 20  LDA $2002
C - - - - - 0x01E4E7 07:E4D7: 29 40     AND #$40
C - - - - - 0x01E4E9 07:E4D9: D0 F9     BNE bra_E4D4
C - - - - - 0x01E4EB 07:E4DB: AD 02 20  LDA $2002
C - - - - - 0x01E4EE 07:E4DE: A5 E3     LDA ram_00E3
C - - - - - 0x01E4F0 07:E4E0: F0 08     BEQ bra_E4EA
C - - - - - 0x01E4F2 07:E4E2: A9 05     LDA #con_prg_bank + $05
C - - - - - 0x01E4F4 07:E4E4: 20 AC FF  JSR sub_FFAC_prg_bankswitch
C - - - - - 0x01E4F7 07:E4E7: 20 21 85  JSR sub_0x014531
bra_E4EA:
C - - - - - 0x01E4FA 07:E4EA: A5 11     LDA ram_0011
C - - - - - 0x01E4FC 07:E4EC: F0 2A     BEQ bra_E518
C - - - - - 0x01E4FE 07:E4EE: A5 12     LDA ram_game_mode_main
C - - - - - 0x01E500 07:E4F0: F0 14     BEQ bra_E506    ; con_GM_title_screen
C - - - - - 0x01E502 07:E4F2: C9 05     CMP #con_GM_05
C - - - - - 0x01E504 07:E4F4: F0 10     BEQ bra_E506
C - - - - - 0x01E506 07:E4F6: C9 09     CMP #con_GM_09
C - - - - - 0x01E508 07:E4F8: F0 0C     BEQ bra_E506
C - - - - - 0x01E50A 07:E4FA: C9 0B     CMP #con_GM_0B
C - - - - - 0x01E50C 07:E4FC: F0 08     BEQ bra_E506
C - - - - - 0x01E50E 07:E4FE: C9 0C     CMP #con_GM_0C
C - - - - - 0x01E510 07:E500: F0 04     BEQ bra_E506
C - - - - - 0x01E512 07:E502: C9 13     CMP #con_GM_13
C - - - - - 0x01E514 07:E504: D0 12     BNE bra_E518
bra_E506:
C - - - - - 0x01E516 07:E506: AD 02 20  LDA $2002
C - - - - - 0x01E519 07:E509: A5 FD     LDA ram_scroll_X
C - - - - - 0x01E51B 07:E50B: 8D 05 20  STA $2005
C - - - - - 0x01E51E 07:E50E: A5 FC     LDA ram_scroll_Y
C - - - - - 0x01E520 07:E510: 8D 05 20  STA $2005
C - - - - - 0x01E523 07:E513: A5 FF     LDA ram_for_2000
C - - - - - 0x01E525 07:E515: 8D 00 20  STA $2000
bra_E518:
C - - - - - 0x01E528 07:E518: A5 E1     LDA ram_00E1
C - - - - - 0x01E52A 07:E51A: 05 E0     ORA ram_pause_flag
C - - - - - 0x01E52C 07:E51C: D0 1D     BNE bra_E53B
C - - - - - 0x01E52E 07:E51E: A2 26     LDX #$26    ; < ram_0026
C - - - - - 0x01E530 07:E520: A9 3C     LDA #$3C    ; < ram_003C
C - - - - - 0x01E532 07:E522: A0 4E     LDY #$4E    ; < ram_004E
C - - - - - 0x01E534 07:E524: 86 00     STX ram_0000
C - - - - - 0x01E536 07:E526: D6 00     DEC ram_0026 - $26,X    ; bzk optimize, no need for DEC,X -> DEC ram_0026
C - - - - - 0x01E538 07:E528: 10 05     BPL bra_E52F
C - - - - - 0x01E53A 07:E52A: A9 09     LDA #$09
C - - - - - 0x01E53C 07:E52C: 95 00     STA ram_0026 - $26,X    ; bzk optimize, no need for STA,X -> STA ram_0026
C - - - - - 0x01E53E 07:E52E: 98        TYA
bra_E52F:
C - - - - - 0x01E53F 07:E52F: AA        TAX
bra_E530_loop:
C - - - - - 0x01E540 07:E530: B5 00     LDA ram_0000,X  ; ram_003C - $3C,X  or  ram_004E - $4E,X
C - - - - - 0x01E542 07:E532: F0 02     BEQ bra_E536
C - - - - - 0x01E544 07:E534: D6 00     DEC ram_0000,X  ; ram_003C - $3C,X  or  ram_004E - $4E,X
bra_E536:
C - - - - - 0x01E546 07:E536: CA        DEX
C - - - - - 0x01E547 07:E537: E4 00     CPX ram_0000    ; 0000 = 26, loop for 0027-003C or 0027-004E
C - - - - - 0x01E549 07:E539: D0 F5     BNE bra_E530_loop
bra_E53B:
C - - - - - 0x01E54B 07:E53B: A5 E3     LDA ram_00E3
C - - - - - 0x01E54D 07:E53D: D0 03     BNE bra_E542
C - - - - - 0x01E54F 07:E53F: 20 2D E6  JSR sub_E62D_read_joysticks
bra_E542:
C - - - - - 0x01E552 07:E542: A2 18     LDX #$18    ; < ram_indiv_random
C - - - - - 0x01E554 07:E544: A0 0D     LDY #$0D    ; 0018-0024
C - - - - - 0x01E556 07:E546: B5 00     LDA ram_indiv_random - $18,X    ; bzk optimize, no need for LDA,X -> LDA ram_0018
C - - - - - 0x01E558 07:E548: 29 02     AND #$02
C - - - - - 0x01E55A 07:E54A: 85 00     STA ram_0000
C - - - - - 0x01E55C 07:E54C: B5 01     LDA ram_indiv_random - $18 + 1,X    ; bzk optimize, no need for LDA,X -> LDA ram_0019
C - - - - - 0x01E55E 07:E54E: 29 02     AND #$02
C - - - - - 0x01E560 07:E550: 45 00     EOR ram_0000
C - - - - - 0x01E562 07:E552: 18        CLC
C - - - - - 0x01E563 07:E553: F0 01     BEQ bra_E556
C - - - - - 0x01E565 07:E555: 38        SEC
bra_E556:
bra_E556_loop:
C - - - - - 0x01E566 07:E556: 76 00     ROR ram_indiv_random - $18,X
C - - - - - 0x01E568 07:E558: E8        INX
C - - - - - 0x01E569 07:E559: 88        DEY
C - - - - - 0x01E56A 07:E55A: D0 FA     BNE bra_E556_loop
C - - - - - 0x01E56C 07:E55C: A9 00     LDA #con_prg_bank + $00
C - - - - - 0x01E56E 07:E55E: 20 AC FF  JSR sub_FFAC_prg_bankswitch
C - - - - - 0x01E571 07:E561: 20 25 98  JSR sub_0x001835_update_sound_driver
C - - - - - 0x01E574 07:E564: E6 15     INC ram_frame_cnt
C - - - - - 0x01E576 07:E566: A5 11     LDA ram_0011
C - - - - - 0x01E578 07:E568: D0 06     BNE bra_E570
C - - - - - 0x01E57A 07:E56A: 20 F8 E8  JSR sub_E8F8
C - - - - - 0x01E57D 07:E56D: 4C 73 E5  JMP loc_E573
bra_E570:
C - - - - - 0x01E580 07:E570: 20 30 EB  JSR sub_EB30_game_mode_routines
loc_E573:
C D 3 - - - 0x01E583 07:E573: AD 02 20  LDA $2002
C - - - - - 0x01E586 07:E576: A5 FF     LDA ram_for_2000
C - - - - - 0x01E588 07:E578: 09 80     ORA #$80
C - - - - - 0x01E58A 07:E57A: 8D 00 20  STA $2000
C - - - - - 0x01E58D 07:E57D: 85 FF     STA ram_for_2000
C - - - - - 0x01E58F 07:E57F: 40        RTI



sub_E580_set_scroll_to_00:
C - - - - - 0x01E590 07:E580: A9 00     LDA #$00
C - - - - - 0x01E592 07:E582: 8D 05 20  STA $2005
C - - - - - 0x01E595 07:E585: 85 FD     STA ram_scroll_X
C - - - - - 0x01E597 07:E587: 8D 05 20  STA $2005
C - - - - - 0x01E59A 07:E58A: 85 FC     STA ram_scroll_Y
C - - - - - 0x01E59C 07:E58C: A9 30     LDA #$30
C - - - - - 0x01E59E 07:E58E: 8D 00 20  STA $2000
C - - - - - 0x01E5A1 07:E591: 85 FF     STA ram_for_2000
C - - - - - 0x01E5A3 07:E593: 60        RTS



loc_E594_clear_nmt:
; A = 2006 hi
; X = byte to fill nametable
; Y = byte to fill attributes
C D 3 - - - 0x01E5A4 07:E594: 85 00     STA ram_0000
C - - - - - 0x01E5A6 07:E596: 86 01     STX ram_0001
C - - - - - 0x01E5A8 07:E598: 84 02     STY ram_0002
C - - - - - 0x01E5AA 07:E59A: AD 02 20  LDA $2002
C - - - - - 0x01E5AD 07:E59D: A5 FF     LDA ram_for_2000
C - - - - - 0x01E5AF 07:E59F: 29 FB     AND #$FB
C - - - - - 0x01E5B1 07:E5A1: 8D 00 20  STA $2000
C - - - - - 0x01E5B4 07:E5A4: 85 FF     STA ram_for_2000
C - - - - - 0x01E5B6 07:E5A6: A5 00     LDA ram_0000
C - - - - - 0x01E5B8 07:E5A8: 8D 06 20  STA $2006
C - - - - - 0x01E5BB 07:E5AB: A0 00     LDY #$00
C - - - - - 0x01E5BD 07:E5AD: 8C 06 20  STY $2006
C - - - - - 0x01E5C0 07:E5B0: A2 04     LDX #$04
C - - - - - 0x01E5C2 07:E5B2: C9 20     CMP #$20
C - - - - - 0x01E5C4 07:E5B4: B0 02     BCS bra_E5B8
- - - - - - 0x01E5C6 07:E5B6: A6 02     LDX ram_0002
bra_E5B8:
C - - - - - 0x01E5C8 07:E5B8: A0 00     LDY #$00
C - - - - - 0x01E5CA 07:E5BA: A5 01     LDA ram_0001
bra_E5BC_loop:
C - - - - - 0x01E5CC 07:E5BC: 8D 07 20  STA $2007
C - - - - - 0x01E5CF 07:E5BF: 88        DEY
C - - - - - 0x01E5D0 07:E5C0: D0 FA     BNE bra_E5BC_loop
C - - - - - 0x01E5D2 07:E5C2: CA        DEX
C - - - - - 0x01E5D3 07:E5C3: D0 F7     BNE bra_E5BC_loop
C - - - - - 0x01E5D5 07:E5C5: A4 02     LDY ram_0002
; bzk optimize, useless check, 0000 is always 20 or 28, it can't be < 20
; this routine was probably supposed to clear 0000-1FFF ppu as well
C - - - - - 0x01E5D7 07:E5C7: A5 00     LDA ram_0000
C - - - - - 0x01E5D9 07:E5C9: C9 20     CMP #$20
C - - - - - 0x01E5DB 07:E5CB: 90 12     BCC bra_E5DF
C - - - - - 0x01E5DD 07:E5CD: 69 02     ADC #$02
C - - - - - 0x01E5DF 07:E5CF: 8D 06 20  STA $2006
C - - - - - 0x01E5E2 07:E5D2: A9 C0     LDA #$C0
C - - - - - 0x01E5E4 07:E5D4: 8D 06 20  STA $2006
C - - - - - 0x01E5E7 07:E5D7: A2 40     LDX #$40
bra_E5D9_loop:
C - - - - - 0x01E5E9 07:E5D9: 8C 07 20  STY $2007
C - - - - - 0x01E5EC 07:E5DC: CA        DEX
C - - - - - 0x01E5ED 07:E5DD: D0 FA     BNE bra_E5D9_loop
bra_E5DF:
C - - - - - 0x01E5EF 07:E5DF: A6 01     LDX ram_0001
C - - - - - 0x01E5F1 07:E5E1: 60        RTS



sub_E5E2_jump_to_pointers_after_JSR:
sub_0x01E5F2_jump_to_pointers_after_JSR:
C - - - - - 0x01E5F2 07:E5E2: 0A        ASL
C - - - - - 0x01E5F3 07:E5E3: A8        TAY
C - - - - - 0x01E5F4 07:E5E4: 68        PLA
C - - - - - 0x01E5F5 07:E5E5: 85 00     STA ram_0000
C - - - - - 0x01E5F7 07:E5E7: 68        PLA
C - - - - - 0x01E5F8 07:E5E8: 85 01     STA ram_0001
C - - - - - 0x01E5FA 07:E5EA: C8        INY
C - - - - - 0x01E5FB 07:E5EB: B1 00     LDA (ram_0000),Y
C - - - - - 0x01E5FD 07:E5ED: 85 02     STA ram_0002
C - - - - - 0x01E5FF 07:E5EF: C8        INY
C - - - - - 0x01E600 07:E5F0: B1 00     LDA (ram_0000),Y
C - - - - - 0x01E602 07:E5F2: 85 03     STA ram_0003
C - - - - - 0x01E604 07:E5F4: 6C 02 00  JMP (ram_0002)



sub_E5F7_hide_all_sprites:
sub_0x01E607_hide_all_sprites:
loc_0x01E607_hide_all_sprites:
C D 3 - - - 0x01E607 07:E5F7: A0 00     LDY #$00
C - - - - - 0x01E609 07:E5F9: A2 40     LDX #$40
bra_E5FB_loop:
C - - - - - 0x01E60B 07:E5FB: A9 F8     LDA #$F8
C - - - - - 0x01E60D 07:E5FD: 99 00 02  STA ram_spr_Y,Y
C - - - - - 0x01E610 07:E600: C8        INY
C - - - - - 0x01E611 07:E601: C8        INY
C - - - - - 0x01E612 07:E602: C8        INY
C - - - - - 0x01E613 07:E603: C8        INY
C - - - - - 0x01E614 07:E604: CA        DEX ; bzk optimize, no need for X in this loop, use Y only
C - - - - - 0x01E615 07:E605: D0 F4     BNE bra_E5FB_loop
C - - - - - 0x01E617 07:E607: 60        RTS



sub_0x01E618:
C - - - - - 0x01E618 07:E608: 85 01     STA ram_0001
C - - - - - 0x01E61A 07:E60A: A9 00     LDA #$00
C - - - - - 0x01E61C 07:E60C: 85 00     STA ram_0000
bra_E60E_loop:
C - - - - - 0x01E61E 07:E60E: A9 00     LDA #$00
C - - - - - 0x01E620 07:E610: 91 00     STA (ram_0000),Y
C - - - - - 0x01E622 07:E612: 88        DEY
C - - - - - 0x01E623 07:E613: C0 FF     CPY #$FF
C - - - - - 0x01E625 07:E615: D0 F7     BNE bra_E60E_loop
C - - - - - 0x01E627 07:E617: C6 01     DEC ram_0001
C - - - - - 0x01E629 07:E619: A5 01     LDA ram_0001
C - - - - - 0x01E62B 07:E61B: C9 03     CMP #$03
C - - - - - 0x01E62D 07:E61D: B0 EF     BCS bra_E60E_loop
C - - - - - 0x01E62F 07:E61F: A9 FF     LDA #$FF
C - - - - - 0x01E631 07:E621: 8D 02 03  STA ram_0302
C - - - - - 0x01E634 07:E624: 60        RTS



sub_E625_disable_rendering:
sub_0x01E635_disable_rendering:
loc_0x01E635_disable_rendering:
C D 3 - - - 0x01E635 07:E625: A9 00     LDA #$00
C - - - - - 0x01E637 07:E627: 8D 01 20  STA $2001
C - - - - - 0x01E63A 07:E62A: 85 FE     STA ram_for_2001
C - - - - - 0x01E63C 07:E62C: 60        RTS



sub_E62D_read_joysticks:
C - - - - - 0x01E63D 07:E62D: A9 01     LDA #$01
C - - - - - 0x01E63F 07:E62F: 8D 16 40  STA $4016
C - - - - - 0x01E642 07:E632: A9 00     LDA #$00
C - - - - - 0x01E644 07:E634: 8D 16 40  STA $4016
C - - - - - 0x01E647 07:E637: 85 03     STA ram_0003
C - - - - - 0x01E649 07:E639: 85 04     STA ram_0004
C - - - - - 0x01E64B 07:E63B: AA        TAX ; X = 00
C - - - - - 0x01E64C 07:E63C: 20 40 E6  JSR sub_E640_read_player_input
C - - - - - 0x01E64F 07:E63F: E8        INX ; 01
sub_E640_read_player_input:   ; X = 00
bra_E640_loop:
C - - - - - 0x01E650 07:E640: 85 02     STA ram_0002
C - - - - - 0x01E652 07:E642: A9 01     LDA #$01
C - - - - - 0x01E654 07:E644: 8D 16 40  STA $4016
C - - - - - 0x01E657 07:E647: A9 00     LDA #$00
C - - - - - 0x01E659 07:E649: 8D 16 40  STA $4016
C - - - - - 0x01E65C 07:E64C: A0 08     LDY #$08
bra_E64E_loop:
C - - - - - 0x01E65E 07:E64E: BD 16 40  LDA $4016,X
C - - - - - 0x01E661 07:E651: 4A        LSR
C - - - - - 0x01E662 07:E652: 36 F8     ROL ram_btn_press,X
C - - - - - 0x01E664 07:E654: 4A        LSR
C - - - - - 0x01E665 07:E655: 26 00     ROL ram_0000
C - - - - - 0x01E667 07:E657: 88        DEY
C - - - - - 0x01E668 07:E658: D0 F4     BNE bra_E64E_loop
C - - - - - 0x01E66A 07:E65A: B5 F8     LDA ram_btn_press,X
C - - - - - 0x01E66C 07:E65C: C5 02     CMP ram_0002
C - - - - - 0x01E66E 07:E65E: D0 E0     BNE bra_E640_loop
C - - - - - 0x01E670 07:E660: F6 03     INC ram_0003,X
C - - - - - 0x01E672 07:E662: B4 03     LDY ram_0003,X
C - - - - - 0x01E674 07:E664: C0 02     CPY #$02
C - - - - - 0x01E676 07:E666: 90 D8     BCC bra_E640_loop
C - - - - - 0x01E678 07:E668: A5 00     LDA ram_0000
C - - - - - 0x01E67A 07:E66A: 15 F8     ORA ram_btn_press,X
C - - - - - 0x01E67C 07:E66C: 95 F8     STA ram_btn_press,X
C - - - - - 0x01E67E 07:E66E: 48        PHA
C - - - - - 0x01E67F 07:E66F: 55 FA     EOR ram_btn_hold,X
C - - - - - 0x01E681 07:E671: 35 F8     AND ram_btn_press,X
C - - - - - 0x01E683 07:E673: 95 F8     STA ram_btn_press,X
C - - - - - 0x01E685 07:E675: 68        PLA
C - - - - - 0x01E686 07:E676: 95 FA     STA ram_btn_hold,X
C - - - - - 0x01E688 07:E678: 60        RTS



sub_E679:
sub_0x01E689:
C - - - - - 0x01E689 07:E679: A5 10     LDA ram_dungeon_level
C - - - - - 0x01E68B 07:E67B: F0 50     BEQ bra_E6CD_RTS    ; if overworld
; if dungeon
C - - - - - 0x01E68D 07:E67D: A9 05     LDA #con_prg_bank + $05
C - - - - - 0x01E68F 07:E67F: 20 AC FF  JSR sub_FFAC_prg_bankswitch
C - - - - - 0x01E692 07:E682: 20 EB B5  JSR sub_0x0175FB
C - - - - - 0x01E695 07:E685: F0 46     BEQ bra_E6CD_RTS
C - - - - - 0x01E697 07:E687: AD AE 6B  LDA ram_6BAE
C - - - - - 0x01E69A 07:E68A: A2 04     LDX #$04
C - - - - - 0x01E69C 07:E68C: 4C ED 71  JMP loc_bat_71ED



sub_0x01E69F:
C - - - - - 0x01E69F 07:E68F: A4 10     LDY ram_dungeon_level
C - - - - - 0x01E6A1 07:E691: F0 25     BEQ bra_E6B8    ; if overworld
; if dungeon
C - - - - - 0x01E6A3 07:E693: A5 98     LDA ram_direction
C - - - - - 0x01E6A5 07:E695: 85 02     STA ram_0002
C - - - - - 0x01E6A7 07:E697: A9 05     LDA #con_prg_bank + $05
C - - - - - 0x01E6A9 07:E699: 20 AC FF  JSR sub_FFAC_prg_bankswitch
C - - - - - 0x01E6AC 07:E69C: 20 F6 A3  JSR sub_0x016406
C - - - - - 0x01E6AF 07:E69F: A4 01     LDY ram_0001
bra_E6A1:
C - - - - - 0x01E6B1 07:E6A1: 84 E7     STY ram_00E7
C - - - - - 0x01E6B3 07:E6A3: 20 E2 E5  JSR sub_E5E2_jump_to_pointers_after_JSR
- D 3 - I - 0x01E6B6 07:E6A6: 22 B5     .word ofs_000_0x017532_00
- - - - - - 0x01E6B8 07:E6A8: 17 B5     .word ofs_000_0x017527_01
- D 3 - I - 0x01E6BA 07:E6AA: 22 B5     .word ofs_000_0x017532_02
- - - - - - 0x01E6BC 07:E6AC: 22 B5     .word ofs_000_0x017532_03
- D 3 - I - 0x01E6BE 07:E6AE: 22 B5     .word ofs_000_0x017532_04
- D 3 - I - 0x01E6C0 07:E6B0: 22 B5     .word ofs_000_0x017532_05
- - - - - - 0x01E6C2 07:E6B2: 22 B5     .word ofs_000_0x017532_06
- D 3 - I - 0x01E6C4 07:E6B4: 22 B5     .word ofs_000_0x017532_07
- - - - - - 0x01E6C6 07:E6B6: 17 B5     .word ofs_000_0x017527_08

bra_E6B8:
C - - - - - 0x01E6C8 07:E6B8: A4 98     LDY ram_direction
C - - - - - 0x01E6CA 07:E6BA: A9 00     LDA #$00
C - - - - - 0x01E6CC 07:E6BC: F0 E3     BEQ bra_E6A1    ; jmp



tbl_0x01E6CE:
- D 3 - - - 0x01E6CE 07:E6BE: 01        .byte $01   ; 00
- D 3 - - - 0x01E6CF 07:E6BF: 02        .byte $02   ; 01
- D 3 - - - 0x01E6D0 07:E6C0: 04        .byte $04   ; 02
- D 3 - - - 0x01E6D1 07:E6C1: 08        .byte $08   ; 03
- D 3 - - - 0x01E6D2 07:E6C2: 10        .byte $10   ; 04
- D 3 - - - 0x01E6D3 07:E6C3: 20        .byte $20   ; 05
- D 3 - - - 0x01E6D4 07:E6C4: 40        .byte $40   ; 06
- D 3 - - - 0x01E6D5 07:E6C5: 80        .byte $80   ; 07



sub_E6C6:
sub_0x01E6D6:
C - - - - - 0x01E6D6 07:E6C6: 20 CE E6  JSR sub_E6CE
C - - - - - 0x01E6D9 07:E6C9: 09 20     ORA #$20
C - - - - - 0x01E6DB 07:E6CB: 91 00     STA (ram_0000),Y
bra_E6CD_RTS:
C - - - - - 0x01E6DD 07:E6CD: 60        RTS



sub_E6CE:
sub_0x01E6DE:
C - - - - - 0x01E6DE 07:E6CE: AD AF 6B  LDA ram_6BAF
C - - - - - 0x01E6E1 07:E6D1: 85 00     STA ram_0000
C - - - - - 0x01E6E3 07:E6D3: AD B0 6B  LDA ram_6BB0
C - - - - - 0x01E6E6 07:E6D6: 85 01     STA ram_0001
C - - - - - 0x01E6E8 07:E6D8: A4 EB     LDY ram_map_location
C - - - - - 0x01E6EA 07:E6DA: B1 00     LDA (ram_0000),Y
C - - - - - 0x01E6EC 07:E6DC: 60        RTS



bra_E6DD:
C - - - - - 0x01E6ED 07:E6DD: A5 71     LDA ram_pos_X + 1
C - - - - - 0x01E6EF 07:E6DF: 85 83     STA ram_0083
C - - - - - 0x01E6F1 07:E6E1: A5 85     LDA ram_pos_Y + 1
C - - - - - 0x01E6F3 07:E6E3: 85 97     STA ram_0097
C - - - - - 0x01E6F5 07:E6E5: 4C 0C E7  JMP loc_E70C
bra_E6E8:
C - - - - - 0x01E6F8 07:E6E8: 68        PLA
bra_E6E9_RTS:
C - - - - - 0x01E6F9 07:E6E9: 60        RTS



sub_E6EA:
C - - - - - 0x01E6FA 07:E6EA: 20 14 73  JSR sub_bat_7314
C - - - - - 0x01E6FD 07:E6ED: D0 FA     BNE bra_E6E9_RTS
C - - - - - 0x01E6FF 07:E6EF: A5 BF     LDA ram_00BF
C - - - - - 0x01E701 07:E6F1: 30 F6     BMI bra_E6E9_RTS
C - - - - - 0x01E703 07:E6F3: A5 AB     LDA ram_00AB
C - - - - - 0x01E705 07:E6F5: C9 3F     CMP #$3F
C - - - - - 0x01E707 07:E6F7: F0 F0     BEQ bra_E6E9_RTS
C - - - - - 0x01E709 07:E6F9: A2 01     LDX #$01
C - - - - - 0x01E70B 07:E6FB: AD 50 03  LDA ram_obj_id + 1
C - - - - - 0x01E70E 07:E6FE: C9 17     CMP #con_obj_id_17
C - - - - - 0x01E710 07:E700: F0 DB     BEQ bra_E6DD
C - - - - - 0x01E712 07:E702: C9 2A     CMP #con_obj_id_2A
C - - - - - 0x01E714 07:E704: F0 D7     BEQ bra_E6DD
C - - - - - 0x01E716 07:E706: C9 30     CMP #con_obj_id_30
C - - - - - 0x01E718 07:E708: F0 D3     BEQ bra_E6DD
C - - - - - 0x01E71A 07:E70A: A2 13     LDX #$13
loc_E70C:
C D 3 - - - 0x01E71C 07:E70C: A5 AB     LDA ram_00AB
sub_E70E:
sub_0x01E71E:
C - - - - - 0x01E71E 07:E70E: 48        PHA
C - - - - - 0x01E71F 07:E70F: BD A8 03  LDA ram_03A8,X
C - - - - - 0x01E722 07:E712: C9 F0     CMP #$F0
C - - - - - 0x01E724 07:E714: 90 03     BCC bra_E719
C - - - - - 0x01E726 07:E716: 4A        LSR
C - - - - - 0x01E727 07:E717: 90 CF     BCC bra_E6E8
bra_E719:
C - - - - - 0x01E729 07:E719: 20 93 FA  JSR sub_FA93
C - - - - - 0x01E72C 07:E71C: 68        PLA
C - - - - - 0x01E72D 07:E71D: AA        TAX
C - - - - - 0x01E72E 07:E71E: BD C8 72  LDA tbl_bat_72C8,X
C - - - - - 0x01E731 07:E721: C9 30     CMP #$30
C - - - - - 0x01E733 07:E723: F0 0C     BEQ bra_E731
C - - - - - 0x01E735 07:E725: 29 0F     AND #$0F
bra_E727:
C - - - - - 0x01E737 07:E727: 85 04     STA ram_0004
C - - - - - 0x01E739 07:E729: BD A4 72  LDA tbl_bat_72A4,X
C - - - - - 0x01E73C 07:E72C: AA        TAX
C - - - - - 0x01E73D 07:E72D: A8        TAY
C - - - - - 0x01E73E 07:E72E: 4C 3A E7  JMP loc_E73A
bra_E731:
- - - - - - 0x01E741 07:E731: A9 FF     LDA #$FF
- - - - - - 0x01E743 07:E733: D0 F2     BNE bra_E727    ; jmp



sub_0x01E745:
loc_0x01E745:
C D 3 - - - 0x01E745 07:E735: BD 57 06  LDA ram_items,X
C - - - - - 0x01E748 07:E738: 85 04     STA ram_0004
loc_E73A:
C D 3 - - - 0x01E74A 07:E73A: BD EC 72  LDA tbl_bat_72EC,X
C - - - - - 0x01E74D 07:E73D: E0 16     CPX #con_item_1_rupee
C - - - - - 0x01E74F 07:E73F: F0 0C     BEQ bra_E74D
C - - - - - 0x01E751 07:E741: E0 1A     CPX #con_item_triforce
C - - - - - 0x01E753 07:E743: F0 08     BEQ bra_E74D
C - - - - - 0x01E755 07:E745: E0 1B     CPX #con_item_1B
C - - - - - 0x01E757 07:E747: F0 04     BEQ bra_E74D
C - - - - - 0x01E759 07:E749: E0 19     CPX #con_item_hearts_2
C - - - - - 0x01E75B 07:E74B: D0 09     BNE bra_E756
bra_E74D:
C - - - - - 0x01E75D 07:E74D: A5 15     LDA ram_frame_cnt
C - - - - - 0x01E75F 07:E74F: 29 08     AND #$08
C - - - - - 0x01E761 07:E751: 4A        LSR
C - - - - - 0x01E762 07:E752: 4A        LSR
C - - - - - 0x01E763 07:E753: 4A        LSR
C - - - - - 0x01E764 07:E754: 69 01     ADC #$01
bra_E756:
C - - - - - 0x01E766 07:E756: E0 00     CPX #con_item_sword
C - - - - - 0x01E768 07:E758: F0 19     BEQ bra_E773
C - - - - - 0x01E76A 07:E75A: E0 04     CPX #con_item_candle
C - - - - - 0x01E76C 07:E75C: F0 15     BEQ bra_E773
C - - - - - 0x01E76E 07:E75E: E0 02     CPX #con_item_arrow
C - - - - - 0x01E770 07:E760: F0 11     BEQ bra_E773
C - - - - - 0x01E772 07:E762: E0 07     CPX #con_item_potion
C - - - - - 0x01E774 07:E764: F0 0D     BEQ bra_E773
C - - - - - 0x01E776 07:E766: E0 0B     CPX #con_item_ring
C - - - - - 0x01E778 07:E768: F0 09     BEQ bra_E773
bra_E76A:
loc_E76A:
C D 3 - - - 0x01E77A 07:E76A: A2 00     LDX #$00
C - - - - - 0x01E77C 07:E76C: 86 0C     STX ram_000C
C - - - - - 0x01E77E 07:E76E: A2 0F     LDX #$0F
C - - - - - 0x01E780 07:E770: 4C 0C 79  JMP loc_bat_790C
bra_E773:
C - - - - - 0x01E783 07:E773: 18        CLC
C - - - - - 0x01E784 07:E774: 65 04     ADC ram_0004
C - - - - - 0x01E786 07:E776: E0 00     CPX #con_item_sword
C - - - - - 0x01E788 07:E778: D0 F0     BNE bra_E76A
C - - - - - 0x01E78A 07:E77A: C9 02     CMP #$02
C - - - - - 0x01E78C 07:E77C: D0 EC     BNE bra_E76A
C - - - - - 0x01E78E 07:E77E: A0 20     LDY #$20
C - - - - - 0x01E790 07:E780: 4C 6A E7  JMP loc_E76A



bra_E783:
- - - - - - 0x01E793 07:E783: A2 07     LDX #con_item_potion
- - - - - - 0x01E795 07:E785: 8E 56 06  STX ram_item_slot_index
- - - - - - 0x01E798 07:E788: D0 16     BNE bra_E7A0    ; jmp



loc_E78A:
sub_E78A:
sub_0x01E79A:
C D 3 - - - 0x01E79A 07:E78A: AE 56 06  LDX ram_item_slot_index
C - - - - - 0x01E79D 07:E78D: F0 26     BEQ bra_E7B5_check_boomerangs
C - - - - - 0x01E79F 07:E78F: BD 57 06  LDA ram_items,X
C - - - - - 0x01E7A2 07:E792: F0 5A     BEQ bra_E7EE
C - - - - - 0x01E7A4 07:E794: E0 0F     CPX #con_item_letter
C - - - - - 0x01E7A6 07:E796: D0 08     BNE bra_E7A0
C - - - - - 0x01E7A8 07:E798: AC 5E 06  LDY ram_item_potion
C - - - - - 0x01E7AB 07:E79B: D0 E6     BNE bra_E783
C - - - - - 0x01E7AD 07:E79D: 4A        LSR
C - - - - - 0x01E7AE 07:E79E: 09 01     ORA #$01
bra_E7A0:
bra_E7A0_boomerang_found:
C - - - - - 0x01E7B0 07:E7A0: 85 04     STA ram_0004
C - - - - - 0x01E7B2 07:E7A2: A9 1F     LDA #$1F
C - - - - - 0x01E7B4 07:E7A4: 85 01     STA ram_0001
C - - - - - 0x01E7B6 07:E7A6: A9 7C     LDA #$7C
C - - - - - 0x01E7B8 07:E7A8: 85 00     STA ram_0000
C - - - - - 0x01E7BA 07:E7AA: A9 05     LDA #con_prg_bank + $05
C - - - - - 0x01E7BC 07:E7AC: 20 AC FF  JSR sub_FFAC_prg_bankswitch
C - - - - - 0x01E7BF 07:E7AF: 20 1C B8  JSR sub_0x01782C
C - - - - - 0x01E7C2 07:E7B2: 4C D7 E7  JMP loc_E7D7
bra_E7B5_check_boomerangs:
C - - - - - 0x01E7C5 07:E7B5: A2 1E     LDX #$1E
bra_E7B7_loop:  ; con_item_boomerang   con_item_mag_boomerang
C - - - - - 0x01E7C7 07:E7B7: BD 57 06  LDA ram_items,X
C - - - - - 0x01E7CA 07:E7BA: D0 E4     BNE bra_E7A0_boomerang_found
C - - - - - 0x01E7CC 07:E7BC: CA        DEX
C - - - - - 0x01E7CD 07:E7BD: E0 1C     CPX #$1C
C - - - - - 0x01E7CF 07:E7BF: D0 F6     BNE bra_E7B7_loop
; if not found
C - - - - - 0x01E7D1 07:E7C1: A2 00     LDX #$00
C - - - - - 0x01E7D3 07:E7C3: 4C CB E7  JMP loc_E7CB
bra_E7C6:
C - - - - - 0x01E7D6 07:E7C6: BD 57 06  LDA ram_items,X
C - - - - - 0x01E7D9 07:E7C9: D0 0C     BNE bra_E7D7
bra_E7CB:
loc_E7CB:
C D 3 - - - 0x01E7DB 07:E7CB: 8A        TXA
C - - - - - 0x01E7DC 07:E7CC: A8        TAY
C - - - - - 0x01E7DD 07:E7CD: A9 05     LDA #con_prg_bank + $05
C - - - - - 0x01E7DF 07:E7CF: 20 AC FF  JSR sub_FFAC_prg_bankswitch
C - - - - - 0x01E7E2 07:E7D2: A9 02     LDA #$02
C - - - - - 0x01E7E4 07:E7D4: 20 C8 B7  JSR sub_0x0177D8
bra_E7D7:
loc_E7D7:
C D 3 - - - 0x01E7E7 07:E7D7: A2 00     LDX #con_item_sword
C - - - - - 0x01E7E9 07:E7D9: BD 57 06  LDA ram_items,X
C - - - - - 0x01E7EC 07:E7DC: F0 69     BEQ bra_E847_RTS
C - - - - - 0x01E7EE 07:E7DE: A9 1F     LDA #$1F
C - - - - - 0x01E7F0 07:E7E0: 85 01     STA ram_0001
C - - - - - 0x01E7F2 07:E7E2: A9 94     LDA #$94
C - - - - - 0x01E7F4 07:E7E4: 85 00     STA ram_0000
C - - - - - 0x01E7F6 07:E7E6: A9 05     LDA #con_prg_bank + $05
C - - - - - 0x01E7F8 07:E7E8: 20 AC FF  JSR sub_FFAC_prg_bankswitch
C - - - - - 0x01E7FB 07:E7EB: 4C 1C B8  JMP loc_0x01782C
bra_E7EE:
C - - - - - 0x01E7FE 07:E7EE: E0 07     CPX #con_item_potion
C - - - - - 0x01E800 07:E7F0: D0 D4     BNE bra_E7C6
C - - - - - 0x01E802 07:E7F2: AD 66 06  LDA ram_item_letter
C - - - - - 0x01E805 07:E7F5: F0 D4     BEQ bra_E7CB
C - - - - - 0x01E807 07:E7F7: A2 0F     LDX #con_item_letter
C - - - - - 0x01E809 07:E7F9: 8E 56 06  STX ram_item_slot_index
C - - - - - 0x01E80C 07:E7FC: D0 C8     BNE bra_E7C6    ; jmp
sub_E7FE:
C - - - - - 0x01E80E 07:E7FE: AD 05 05  LDA ram_0505
C - - - - - 0x01E811 07:E801: F0 56     BEQ bra_E859_RTS
C - - - - - 0x01E813 07:E803: CE 06 05  DEC ram_0506
C - - - - - 0x01E816 07:E806: F0 40     BEQ bra_E848
C - - - - - 0x01E818 07:E808: A9 40     LDA #$40
C - - - - - 0x01E81A 07:E80A: 85 AC     STA ram_drop_id
loc_0x01E81C:
C D 3 - - - 0x01E81C 07:E80C: A5 70     LDA ram_pos_X
C - - - - - 0x01E81E 07:E80E: 85 83     STA ram_0083
C - - - - - 0x01E820 07:E810: A5 84     LDA ram_pos_Y
C - - - - - 0x01E822 07:E812: 38        SEC
C - - - - - 0x01E823 07:E813: E9 10     SBC #$10
C - - - - - 0x01E825 07:E815: 85 97     STA ram_0097
sub_0x01E827:
C - - - - - 0x01E827 07:E817: A2 00     LDX #$00
C - - - - - 0x01E829 07:E819: 20 93 FA  JSR sub_FA93
C - - - - - 0x01E82C 07:E81C: 20 88 79  JSR sub_bat_7988
C - - - - - 0x01E82F 07:E81F: 85 0C     STA ram_000C
C - - - - - 0x01E831 07:E821: A9 48     LDA #$48
C - - - - - 0x01E833 07:E823: 8D 43 03  STA ram_0343
C - - - - - 0x01E836 07:E826: A9 4C     LDA #$4C
C - - - - - 0x01E838 07:E828: 8D 44 03  STA ram_0344
C - - - - - 0x01E83B 07:E82B: A0 21     LDY #$21
C - - - - - 0x01E83D 07:E82D: 20 2C 79  JSR sub_bat_792C
C - - - - - 0x01E840 07:E830: EE 04 05  INC ram_0504
C - - - - - 0x01E843 07:E833: AD 05 05  LDA ram_0505
C - - - - - 0x01E846 07:E836: A2 13     LDX #$13
C - - - - - 0x01E848 07:E838: 20 0E E7  JSR sub_E70E
C - - - - - 0x01E84B 07:E83B: CE 04 05  DEC ram_0504
C - - - - - 0x01E84E 07:E83E: A5 52     LDA ram_0052
C - - - - - 0x01E850 07:E840: F0 05     BEQ bra_E847_RTS
C - - - - - 0x01E852 07:E842: A9 08     LDA #$08
C - - - - - 0x01E854 07:E844: 8D 4D 02  STA ram_spr_T + $4C
bra_E847_RTS:
C - - - - - 0x01E857 07:E847: 60        RTS
bra_E848:
C - - - - - 0x01E858 07:E848: A9 00     LDA #$00
C - - - - - 0x01E85A 07:E84A: 85 AC     STA ram_drop_id
C - - - - - 0x01E85C 07:E84C: 8D 05 05  STA ram_0505
C - - - - - 0x01E85F 07:E84F: A4 10     LDY ram_dungeon_level
C - - - - - 0x01E861 07:E851: F0 06     BEQ bra_E859_RTS    ; if overworld
; if dungeon
C - - - - - 0x01E863 07:E853: B9 E0 EB  LDA tbl_EBE0_gameplay_music,Y
C - - - - - 0x01E866 07:E856: 8D 00 06  STA ram_music
bra_E859_RTS:
C - - - - - 0x01E869 07:E859: 60        RTS



sub_0x01E86A:
C - - - - - 0x01E86A 07:E85A: A4 EB     LDY ram_map_location
C - - - - - 0x01E86C 07:E85C: B9 FE 69  LDA ram_69FE_map_data,Y
C - - - - - 0x01E86F 07:E85F: 29 3F     AND #$3F
C - - - - - 0x01E871 07:E861: 60        RTS



sub_0x01E872:
C - - - - - 0x01E872 07:E862: 85 05     STA ram_0005
C - - - - - 0x01E874 07:E864: 8A        TXA
C - - - - - 0x01E875 07:E865: 48        PHA
C - - - - - 0x01E876 07:E866: B5 70     LDA ram_pos_X,X
C - - - - - 0x01E878 07:E868: 85 03     STA ram_0003
C - - - - - 0x01E87A 07:E86A: B5 84     LDA ram_pos_Y,X
C - - - - - 0x01E87C 07:E86C: 85 02     STA ram_0002
C - - - - - 0x01E87E 07:E86E: 20 70 75  JSR sub_bat_7570
C - - - - - 0x01E881 07:E871: AE 01 03  LDX ram_0301
C - - - - - 0x01E884 07:E874: A5 00     LDA ram_0000
C - - - - - 0x01E886 07:E876: 9D 02 03  STA ram_0302,X
C - - - - - 0x01E889 07:E879: 9D 07 03  STA ram_0307,X
C - - - - - 0x01E88C 07:E87C: A5 01     LDA ram_0001
C - - - - - 0x01E88E 07:E87E: 9D 03 03  STA ram_0303,X
C - - - - - 0x01E891 07:E881: 9D 08 03  STA ram_0308,X
C - - - - - 0x01E894 07:E884: FE 08 03  INC ram_0308,X
C - - - - - 0x01E897 07:E887: A5 05     LDA ram_0005
C - - - - - 0x01E899 07:E889: 9D 05 03  STA ram_0305,X
C - - - - - 0x01E89C 07:E88C: 9D 06 03  STA ram_0306,X
C - - - - - 0x01E89F 07:E88F: 9D 0A 03  STA ram_030A,X
C - - - - - 0x01E8A2 07:E892: 9D 0B 03  STA ram_030B,X
C - - - - - 0x01E8A5 07:E895: C9 46     CMP #$46
C - - - - - 0x01E8A7 07:E897: 90 13     BCC bra_E8AC
C - - - - - 0x01E8A9 07:E899: C9 F3     CMP #$F3
C - - - - - 0x01E8AB 07:E89B: B0 0F     BCS bra_E8AC
C - - - - - 0x01E8AD 07:E89D: 18        CLC
C - - - - - 0x01E8AE 07:E89E: 69 02     ADC #$02
C - - - - - 0x01E8B0 07:E8A0: 9D 0A 03  STA ram_030A,X
C - - - - - 0x01E8B3 07:E8A3: 9D 0B 03  STA ram_030B,X
C - - - - - 0x01E8B6 07:E8A6: FE 06 03  INC ram_0306,X
C - - - - - 0x01E8B9 07:E8A9: FE 0B 03  INC ram_030B,X
bra_E8AC:
C - - - - - 0x01E8BC 07:E8AC: A9 82     LDA #$82
C - - - - - 0x01E8BE 07:E8AE: 9D 04 03  STA ram_0304,X
C - - - - - 0x01E8C1 07:E8B1: 9D 09 03  STA ram_0309,X
C - - - - - 0x01E8C4 07:E8B4: A9 FF     LDA #$FF
C - - - - - 0x01E8C6 07:E8B6: 9D 0C 03  STA ram_030C,X
C - - - - - 0x01E8C9 07:E8B9: 8A        TXA
C - - - - - 0x01E8CA 07:E8BA: 18        CLC
C - - - - - 0x01E8CB 07:E8BB: 69 0A     ADC #$0A
C - - - - - 0x01E8CD 07:E8BD: 8D 01 03  STA ram_0301
C - - - - - 0x01E8D0 07:E8C0: 68        PLA
C - - - - - 0x01E8D1 07:E8C1: AA        TAX
C - - - - - 0x01E8D2 07:E8C2: A9 05     LDA #con_prg_bank + $05
C - - - - - 0x01E8D4 07:E8C4: 20 AC FF  JSR sub_FFAC_prg_bankswitch
C - - - - - 0x01E8D7 07:E8C7: 20 C4 AB  JSR sub_0x016BD4
C - - - - - 0x01E8DA 07:E8CA: A5 F7     LDA ram_00F7
C - - - - - 0x01E8DC 07:E8CC: F0 05     BEQ bra_E8D3
C - - - - - 0x01E8DE 07:E8CE: A9 04     LDA #con_prg_bank + $04
C - - - - - 0x01E8E0 07:E8D0: 20 AC FF  JSR sub_FFAC_prg_bankswitch
bra_E8D3:
C - - - - - 0x01E8E3 07:E8D3: A9 00     LDA #$00
C - - - - - 0x01E8E5 07:E8D5: 85 F7     STA ram_00F7
C - - - - - 0x01E8E7 07:E8D7: 60        RTS



sub_0x01E8E8:
loc_0x01E8E8:
C D 3 - - - 0x01E8E8 07:E8D8: A9 05     LDA #con_prg_bank + $05
C - - - - - 0x01E8EA 07:E8DA: 20 AC FF  JSR sub_FFAC_prg_bankswitch
C - - - - - 0x01E8ED 07:E8DD: 20 07 AC  JSR sub_0x016C17
C - - - - - 0x01E8F0 07:E8E0: A0 00     LDY #$00
bra_E8E2:
C - - - - - 0x01E8F2 07:E8E2: A5 0A     LDA ram_000A
C - - - - - 0x01E8F4 07:E8E4: 91 00     STA (ram_0000),Y
C - - - - - 0x01E8F6 07:E8E6: 20 74 72  JSR sub_bat_7274
C - - - - - 0x01E8F9 07:E8E9: A5 00     LDA ram_0000
C - - - - - 0x01E8FB 07:E8EB: C9 F0     CMP #$F0
C - - - - - 0x01E8FD 07:E8ED: D0 F3     BNE bra_E8E2
C - - - - - 0x01E8FF 07:E8EF: A5 01     LDA ram_0001
C - - - - - 0x01E901 07:E8F1: C9 67     CMP #$67
C - - - - - 0x01E903 07:E8F3: D0 ED     BNE bra_E8E2
C - - - - - 0x01E905 07:E8F5: 60        RTS


; bzk garbage
- - - - - - 0x01E906 07:E8F6: FF        .byte $FF, $FF   ; 



sub_E8F8:
C - - - - - 0x01E908 07:E8F8: A5 F4     LDA ram_00F4
C - - - - - 0x01E90A 07:E8FA: D0 1D     BNE bra_E919
C - - - - - 0x01E90C 07:E8FC: A9 01     LDA #con_prg_bank + $01
C - - - - - 0x01E90E 07:E8FE: 20 AC FF  JSR sub_FFAC_prg_bankswitch
C - - - - - 0x01E911 07:E901: 20 00 8D  JSR sub_0x004D10_copy_code_data_to_battery
C - - - - - 0x01E914 07:E904: A9 06     LDA #con_prg_bank + $06
C - - - - - 0x01E916 07:E906: 20 AC FF  JSR sub_FFAC_prg_bankswitch
C - - - - - 0x01E919 07:E909: 20 8C 80  JSR sub_0x01809C
C - - - - - 0x01E91C 07:E90C: A9 5A     LDA #$5A
C - - - - - 0x01E91E 07:E90E: 8D 01 60  STA ram_battery_check_1
C - - - - - 0x01E921 07:E911: A9 A5     LDA #$A5
C - - - - - 0x01E923 07:E913: 8D FF 7F  STA ram_battery_check_2
C - - - - - 0x01E926 07:E916: E6 F4     INC ram_00F4
C - - - - - 0x01E928 07:E918: 60        RTS
bra_E919:
C - - - - - 0x01E929 07:E919: A9 05     LDA #con_prg_bank + $05
C - - - - - 0x01E92B 07:E91B: 20 AC FF  JSR sub_FFAC_prg_bankswitch
C - - - - - 0x01E92E 07:E91E: A5 12     LDA ram_game_mode_main
C - - - - - 0x01E930 07:E920: 20 E2 E5  JSR sub_E5E2_jump_to_pointers_after_JSR
- D 3 - I - 0x01E933 07:E923: 4B E9     .word ofs_001_E94B_00_title_screen
- D 3 - I - 0x01E935 07:E925: 6F E9     .word ofs_001_E96F_01_slot_selection
- D 3 - I - 0x01E937 07:E927: 77 E9     .word ofs_001_E977_02
- D 3 - I - 0x01E939 07:E929: D8 E9     .word ofs_001_E9D8_03
- D 3 - I - 0x01E93B 07:E92B: 7B 87     .word ofs_001_0x01478B_04
- D 3 - I - 0x01E93D 07:E92D: 6B EA     .word ofs_001_EA6B_05
- D 3 - I - 0x01E93F 07:E92F: 7A B0     .word ofs_001_0x01708A_06
- D 3 - I - 0x01E941 07:E931: A1 E9     .word ofs_001_E9A1_07
- D 3 - I - 0x01E943 07:E933: 00 86     .word ofs_001_0x014610_08
- D 3 - I - 0x01E945 07:E935: 0A 91     .word ofs_001_0x01511A_09
- D 3 - I - 0x01E947 07:E937: FC B0     .word ofs_001_0x01710C_0A
- D 3 - I - 0x01E949 07:E939: 80 90     .word ofs_001_0x015090_0B
- D 3 - I - 0x01E94B 07:E93B: 97 90     .word ofs_001_0x0150A7_0C
- D 3 - I - 0x01E94D 07:E93D: 1A 86     .word ofs_001_0x01462A_0D
- D 3 - I - 0x01E94F 07:E93F: C3 E9     .word ofs_001_E9C3_0E_register
- D 3 - I - 0x01E951 07:E941: C3 E9     .word ofs_001_E9C3_0F_elimination
- D 3 - I - 0x01E953 07:E943: 28 86     .word ofs_001_0x014638_10
- D 3 - I - 0x01E955 07:E945: 2F 8A     .word ofs_001_0x014A3F_11_death
- D 3 - I - 0x01E957 07:E947: 33 A8     .word ofs_001_0x016843_12_triforce_collected
- D 3 - I - 0x01E959 07:E949: CB E9     .word ofs_001_E9CB_13



ofs_001_E94B_00_title_screen:
C - - J - - 0x01E95B 07:E94B: A5 F5     LDA ram_00F5
C - - - - - 0x01E95D 07:E94D: C9 5A     CMP #$5A
C - - - - - 0x01E95F 07:E94F: F0 08     BEQ bra_E959
C - - - - - 0x01E961 07:E951: A9 02     LDA #con_prg_bank + $02
C - - - - - 0x01E963 07:E953: 20 AC FF  JSR sub_FFAC_prg_bankswitch
C - - - - - 0x01E966 07:E956: 4C 12 80  JMP loc_0x008022_fill_ppu_with_tiles_1
bra_E959:
C - - - - - 0x01E969 07:E959: A5 F6     LDA ram_00F6
C - - - - - 0x01E96B 07:E95B: C9 A5     CMP #$A5
C - - - - - 0x01E96D 07:E95D: F0 08     BEQ bra_E967
C - - - - - 0x01E96F 07:E95F: A9 01     LDA #con_prg_bank + $01
C - - - - - 0x01E971 07:E961: 20 AC FF  JSR sub_FFAC_prg_bankswitch
C - - - - - 0x01E974 07:E964: 4C 47 8D  JMP loc_0x004D57_fill_ppu_with_tiles_2
bra_E967:
C - - - - - 0x01E977 07:E967: A9 02     LDA #con_prg_bank + $02
C - - - - - 0x01E979 07:E969: 20 AC FF  JSR sub_FFAC_prg_bankswitch
C - - - - - 0x01E97C 07:E96C: 4C 00 90  JMP loc_0x009010



ofs_001_E96F_01_slot_selection:
C - - J - - 0x01E97F 07:E96F: A9 02     LDA #con_prg_bank + $02
C - - - - - 0x01E981 07:E971: 20 AC FF  JSR sub_FFAC_prg_bankswitch
C - - - - - 0x01E984 07:E974: 4C 8A A2  JMP loc_0x00A29A



ofs_001_E977_02:
C - - J - - 0x01E987 07:E977: 20 25 E6  JSR sub_E625_disable_rendering
C - - - - - 0x01E98A 07:E97A: A5 13     LDA ram_game_mode_sub
C - - - - - 0x01E98C 07:E97C: D0 1B     BNE bra_E999
C - - - - - 0x01E98E 07:E97E: 20 00 EA  JSR sub_EA00_clear_room_history
; bzk optimize, code expects A = 00 here from EA00
C - - - - - 0x01E991 07:E981: A0 7F     LDY #$7F
bra_E983_loop:
C - - - - - 0x01E993 07:E983: 99 60 05  STA ram_0560,Y
C - - - - - 0x01E996 07:E986: 88        DEY
C - - - - - 0x01E997 07:E987: 10 FA     BPL bra_E983_loop
C - - - - - 0x01E999 07:E989: A9 03     LDA #con_prg_bank + $03
C - - - - - 0x01E99B 07:E98B: 20 AC FF  JSR sub_FFAC_prg_bankswitch
C - - - - - 0x01E99E 07:E98E: 20 44 80  JSR sub_0x00C054_fill_ppu_with_tiles_3
C - - - - - 0x01E9A1 07:E991: A9 01     LDA #con_prg_bank + $01
C - - - - - 0x01E9A3 07:E993: 20 AC FF  JSR sub_FFAC_prg_bankswitch
C - - - - - 0x01E9A6 07:E996: 20 00 8D  JSR sub_0x004D10_copy_code_data_to_battery
bra_E999:
C - - - - - 0x01E9A9 07:E999: A9 06     LDA #con_prg_bank + $06
C - - - - - 0x01E9AB 07:E99B: 20 AC FF  JSR sub_FFAC_prg_bankswitch
C - - - - - 0x01E9AE 07:E99E: 4C 3E 80  JMP loc_0x01804E



ofs_001_E9A1_07:
C - - J - - 0x01E9B1 07:E9A1: A9 05     LDA #con_prg_bank + $05
C - - - - - 0x01E9B3 07:E9A3: 20 AC FF  JSR sub_FFAC_prg_bankswitch
C - - - - - 0x01E9B6 07:E9A6: 20 A8 82  JSR sub_0x0142B8
C - - - - - 0x01E9B9 07:E9A9: A5 E3     LDA ram_00E3
C - - - - - 0x01E9BB 07:E9AB: F0 15     BEQ bra_E9C2_RTS
C - - - - - 0x01E9BD 07:E9AD: A5 F3     LDA ram_00F3
C - - - - - 0x01E9BF 07:E9AF: D0 11     BNE bra_E9C2_RTS
C - - - - - 0x01E9C1 07:E9B1: E6 F3     INC ram_00F3
C - - - - - 0x01E9C3 07:E9B3: A5 98     LDA ram_direction
C - - - - - 0x01E9C5 07:E9B5: C9 04     CMP #$04
C - - - - - 0x01E9C7 07:E9B7: 90 04     BCC bra_E9BD
C - - - - - 0x01E9C9 07:E9B9: A9 0F     LDA #con_mirroring_H
C - - - - - 0x01E9CB 07:E9BB: D0 02     BNE bra_E9BF    ; jmp
bra_E9BD:
C - - - - - 0x01E9CD 07:E9BD: A9 0E     LDA #con_mirroring_V
bra_E9BF:
C - - - - - 0x01E9CF 07:E9BF: 20 98 FF  JSR sub_FF98_set_mirroring
bra_E9C2_RTS:
C - - - - - 0x01E9D2 07:E9C2: 60        RTS



ofs_001_E9C3_0E_register:
ofs_001_E9C3_0F_elimination:
C - - J - - 0x01E9D3 07:E9C3: A9 02     LDA #con_prg_bank + $02
C - - - - - 0x01E9D5 07:E9C5: 20 AC FF  JSR sub_FFAC_prg_bankswitch
C - - - - - 0x01E9D8 07:E9C8: 4C 11 9E  JMP loc_0x009E21



ofs_001_E9CB_13:
C - - J - - 0x01E9DB 07:E9CB: A9 0F     LDA #con_mirroring_H
C - - - - - 0x01E9DD 07:E9CD: 20 98 FF  JSR sub_FF98_set_mirroring
C - - - - - 0x01E9E0 07:E9D0: A9 02     LDA #con_prg_bank + $02
C - - - - - 0x01E9E2 07:E9D2: 20 AC FF  JSR sub_FFAC_prg_bankswitch
C - - - - - 0x01E9E5 07:E9D5: 4C 00 A9  JMP loc_0x00A910



ofs_001_E9D8_03:
C - - J - - 0x01E9E8 07:E9D8: A9 05     LDA #con_prg_bank + $05
C - - - - - 0x01E9EA 07:E9DA: 20 AC FF  JSR sub_FFAC_prg_bankswitch
C - - - - - 0x01E9ED 07:E9DD: 20 25 E6  JSR sub_E625_disable_rendering
C - - - - - 0x01E9F0 07:E9E0: A5 13     LDA ram_game_mode_sub
C - - - - - 0x01E9F2 07:E9E2: 20 E2 E5  JSR sub_E5E2_jump_to_pointers_after_JSR
- D 3 - I - 0x01E9F5 07:E9E5: F7 E9     .word ofs_002_E9F7_00
- D 3 - I - 0x01E9F7 07:E9E7: 11 EA     .word ofs_002_EA11_01
- D 3 - I - 0x01E9F9 07:E9E9: 00 B0     .word ofs_002_0x017010_02
- D 3 - I - 0x01E9FB 07:E9EB: 09 B0     .word ofs_002_0x017019_03
- D 3 - I - 0x01E9FD 07:E9ED: 10 B0     .word ofs_002_0x017020_04
- D 3 - I - 0x01E9FF 07:E9EF: 16 B0     .word ofs_002_0x017026_05
- D 3 - I - 0x01EA01 07:E9F1: 1D B0     .word ofs_002_0x01702D_06
- D 3 - I - 0x01EA03 07:E9F3: 2A B0     .word ofs_002_0x01703A_07
- D 3 - I - 0x01EA05 07:E9F5: 36 B0     .word ofs_002_0x017046_08



ofs_002_E9F7_00:
C - - J - - 0x01EA07 07:E9F7: A9 01     LDA #$01
C - - - - - 0x01EA09 07:E9F9: 85 17     STA ram_0017
C - - - - - 0x01EA0B 07:E9FB: E6 13     INC ram_game_mode_sub
C - - - - - 0x01EA0D 07:E9FD: 20 6D E4  JSR sub_E46D
sub_EA00_clear_room_history:
loc_0x01EA10_clear_room_history:
C D 3 - - - 0x01EA10 07:EA00: A0 05     LDY #$05
C - - - - - 0x01EA12 07:EA02: A9 00     LDA #$00
C - - - - - 0x01EA14 07:EA04: 8D 29 05  STA ram_0529
bra_EA07_loop:
C - - - - - 0x01EA17 07:EA07: 99 21 06  STA ram_room_history,Y
C - - - - - 0x01EA1A 07:EA0A: 88        DEY
C - - - - - 0x01EA1B 07:EA0B: 10 FA     BPL bra_EA07_loop
; bzk some code expects A = 00 from here
C - - - - - 0x01EA1D 07:EA0D: 60        RTS



tbl_EA0E:
tbl_0x01EA1E:
- D 3 - - - 0x01EA1E 07:EA0E: 00        .byte $00   ; 00
- - - - - - 0x01EA1F 07:EA0F: 04        .byte $04   ; 01
- D 3 - - - 0x01EA20 07:EA10: 08        .byte $08   ; 02



ofs_002_EA11_01:
C - - J - - 0x01EA21 07:EA11: A5 10     LDA ram_dungeon_level
C - - - - - 0x01EA23 07:EA13: D0 07     BNE bra_EA1C    ; if dungeon
; if overworld
C - - - - - 0x01EA25 07:EA15: AD 26 05  LDA ram_0526
C - - - - - 0x01EA28 07:EA18: C9 FF     CMP #$FF
C - - - - - 0x01EA2A 07:EA1A: D0 03     BNE bra_EA1F
bra_EA1C:
C - - - - - 0x01EA2C 07:EA1C: AD AD 6B  LDA ram_6BAD
bra_EA1F:
C - - - - - 0x01EA2F 07:EA1F: 85 EB     STA ram_map_location
C - - - - - 0x01EA31 07:EA21: CD 26 05  CMP ram_0526
C - - - - - 0x01EA34 07:EA24: D0 05     BNE bra_EA2B
C - - - - - 0x01EA36 07:EA26: A9 FF     LDA #$FF
C - - - - - 0x01EA38 07:EA28: 8D 26 05  STA ram_0526
bra_EA2B:
sub_0x01EA3B:
loc_0x01EA3B:
C D 3 - - - 0x01EA3B 07:EA2B: A6 16     LDX ram_current_save_slot
C - - - - - 0x01EA3D 07:EA2D: BC 0E EA  LDY tbl_EA0E,X
C - - - - - 0x01EA40 07:EA30: B9 04 68  LDA ram_6804,Y
C - - - - - 0x01EA43 07:EA33: 8D 92 6B  STA ram_6B7E_unk_data + $14
C - - - - - 0x01EA46 07:EA36: A9 18     LDA #$18
C - - - - - 0x01EA48 07:EA38: 85 14     STA ram_0014
C - - - - - 0x01EA4A 07:EA3A: E6 13     INC ram_game_mode_sub
C - - - - - 0x01EA4C 07:EA3C: 60        RTS



sub_EA3D:
sub_0x01EA4D:
loc_0x01EA4D:
C D 3 - - - 0x01EA4D 07:EA3D: 20 F7 E5  JSR sub_E5F7_hide_all_sprites
C - - - - - 0x01EA50 07:EA40: 20 DE 71  JSR sub_bat_71DE_draw_dot_on_minimap
C - - - - - 0x01EA53 07:EA43: 20 79 E6  JSR sub_E679
C - - - - - 0x01EA56 07:EA46: A9 05     LDA #con_prg_bank + $05
C - - - - - 0x01EA58 07:EA48: 20 AC FF  JSR sub_FFAC_prg_bankswitch
C - - - - - 0x01EA5B 07:EA4B: 20 29 89  JSR sub_0x014939
C - - - - - 0x01EA5E 07:EA4E: 4C 8A E7  JMP loc_E78A



sub_0x01EA61:
C - - - - - 0x01EA61 07:EA51: A9 00     LDA #$00
C - - - - - 0x01EA63 07:EA53: 85 AC     STA ram_drop_id
C - - - - - 0x01EA65 07:EA55: 8D 6C 06  STA ram_item_clock
C - - - - - 0x01EA68 07:EA58: 60        RTS



tbl_EA59:
- D 3 - - - 0x01EA69 07:EA59: 08        .byte $08   ; 00
- D 3 - - - 0x01EA6A 07:EA5A: 36        .byte $36   ; 01
- D 3 - - - 0x01EA6B 07:EA5B: 0A        .byte $0A   ; 02
- D 3 - - - 0x01EA6C 07:EA5C: 0A        .byte $0A   ; 03
- D 3 - - - 0x01EA6D 07:EA5D: 0A        .byte $0A   ; 04
- D 3 - - - 0x01EA6E 07:EA5E: 0A        .byte $0A   ; 05
- D 3 - - - 0x01EA6F 07:EA5F: 7C        .byte $7C   ; 06
- D 3 - - - 0x01EA70 07:EA60: 7C        .byte $7C   ; 07
- D 3 - - - 0x01EA71 07:EA61: 7C        .byte $7C   ; 08

tbl_EA62:
- D 3 - - - 0x01EA72 07:EA62: 3D        .byte con_obj_id_3D   ; 00
- D 3 - - - 0x01EA73 07:EA63: 3E        .byte con_obj_id_3E   ; 01
- D 3 - - - 0x01EA74 07:EA64: 38        .byte con_obj_id_38   ; 02
- D 3 - - - 0x01EA75 07:EA65: 39        .byte con_obj_id_39   ; 03
- D 3 - - - 0x01EA76 07:EA66: 32        .byte con_obj_id_32   ; 04
- D 3 - - - 0x01EA77 07:EA67: 31        .byte con_obj_id_31   ; 05
- D 3 - - - 0x01EA78 07:EA68: 43        .byte con_obj_id_43   ; 06
- D 3 - - - 0x01EA79 07:EA69: 44        .byte con_obj_id_44   ; 07
- D 3 - - - 0x01EA7A 07:EA6A: 45        .byte con_obj_id_45   ; 08



ofs_001_EA6B_05:
C - - J - - 0x01EA7B 07:EA6B: 20 3D EA  JSR sub_EA3D
C - - - - - 0x01EA7E 07:EA6E: 20 3C F2  JSR sub_F23C
C - - - - - 0x01EA81 07:EA71: A5 10     LDA ram_dungeon_level
C - - - - - 0x01EA83 07:EA73: F0 14     BEQ bra_EA89    ; if overworld
; if dungeon
C - - - - - 0x01EA85 07:EA75: A0 08     LDY #$08
C - - - - - 0x01EA87 07:EA77: AD 50 03  LDA ram_obj_id + 1
bra_EA7A_loop:
C - - - - - 0x01EA8A 07:EA7A: D9 62 EA  CMP tbl_EA62,Y
C - - - - - 0x01EA8D 07:EA7D: D0 05     BNE bra_EA84
C - - - - - 0x01EA8F 07:EA7F: BE 59 EA  LDX tbl_EA59,Y
C - - - - - 0x01EA92 07:EA82: D0 45     BNE bra_EAC9    ; jmp
bra_EA84:
C - - - - - 0x01EA94 07:EA84: 88        DEY
C - - - - - 0x01EA95 07:EA85: 10 F3     BPL bra_EA7A_loop
C - - - - - 0x01EA97 07:EA87: 30 33     BMI bra_EABC    ; jmp
bra_EA89:
C - - - - - 0x01EA99 07:EA89: A5 EB     LDA ram_map_location
C - - - - - 0x01EA9B 07:EA8B: C9 0F     CMP #con_map_location + $0F
C - - - - - 0x01EA9D 07:EA8D: D0 09     BNE bra_EA98
C - - - - - 0x01EA9F 07:EA8F: A5 5A     LDA ram_005A
C - - - - - 0x01EAA1 07:EA91: D0 05     BNE bra_EA98
C - - - - - 0x01EAA3 07:EA93: A9 04     LDA #con_sfx_2_secret_found
C - - - - - 0x01EAA5 07:EA95: 8D 02 06  STA ram_sfx_2
bra_EA98:
C - - - - - 0x01EAA8 07:EA98: A2 20     LDX #$20
C - - - - - 0x01EAAA 07:EA9A: AD 5A 03  LDA ram_obj_id + 11
C - - - - - 0x01EAAD 07:EA9D: C9 65     CMP #con_obj_id_65
C - - - - - 0x01EAAF 07:EA9F: F0 28     BEQ bra_EAC9
C - - - - - 0x01EAB1 07:EAA1: C9 66     CMP #con_obj_id_66
C - - - - - 0x01EAB3 07:EAA3: F0 06     BEQ bra_EAAB
C - - - - - 0x01EAB5 07:EAA5: C9 62     CMP #con_obj_id_62
C - - - - - 0x01EAB7 07:EAA7: D0 0F     BNE bra_EAB8
C - - - - - 0x01EAB9 07:EAA9: A2 24     LDX #$24
bra_EAAB:
C - - - - - 0x01EABB 07:EAAB: A4 EB     LDY ram_map_location
C - - - - - 0x01EABD 07:EAAD: B9 FE 68  LDA ram_68FE_map_data,Y
C - - - - - 0x01EAC0 07:EAB0: 29 01     AND #$01
C - - - - - 0x01EAC2 07:EAB2: D0 15     BNE bra_EAC9
- - - - - - 0x01EAC4 07:EAB4: A2 22     LDX #$22
- - - - - - 0x01EAC6 07:EAB6: D0 11     BNE bra_EAC9    ; jmp
bra_EAB8:
C - - - - - 0x01EAC8 07:EAB8: A2 7A     LDX #$7A
C - - - - - 0x01EACA 07:EABA: D0 0D     BNE bra_EAC9    ; jmp
bra_EABC:
C - - - - - 0x01EACC 07:EABC: A0 03     LDY #$03
bra_EABE_loop:
C - - - - - 0x01EACE 07:EABE: B9 9D 6B  LDA ram_6B7E_unk_data + $1F,Y
C - - - - - 0x01EAD1 07:EAC1: 99 17 68  STA ram_6817,Y
C - - - - - 0x01EAD4 07:EAC4: 88        DEY
C - - - - - 0x01EAD5 07:EAC5: 10 F7     BPL bra_EABE_loop
C - - - - - 0x01EAD7 07:EAC7: A2 06     LDX #$06
bra_EAC9:
C - - - - - 0x01EAD9 07:EAC9: 86 14     STX ram_0014
sub_0x01EADB:
C - - - - - 0x01EADB 07:EACB: A9 05     LDA #con_prg_bank + $05
C - - - - - 0x01EADD 07:EACD: 20 AC FF  JSR sub_FFAC_prg_bankswitch
C - - - - - 0x01EAE0 07:EAD0: 20 5E B0  JSR sub_0x01706E
sub_0x01EAE3:
C - - - - - 0x01EAE3 07:EAD3: A5 10     LDA ram_dungeon_level
C - - - - - 0x01EAE5 07:EAD5: F0 06     BEQ bra_EADD    ; if overworld
; if dungeon
C - - - - - 0x01EAE7 07:EAD7: 20 C6 E6  JSR sub_E6C6
C - - - - - 0x01EAEA 07:EADA: 20 12 75  JSR sub_bat_7512
bra_EADD:
sub_0x01EAED:
loc_0x01EAED:
C D 3 - - - 0x01EAED 07:EADD: A9 05     LDA #con_prg_bank + $05
C - - - - - 0x01EAEF 07:EADF: 20 AC FF  JSR sub_FFAC_prg_bankswitch
C - - - - - 0x01EAF2 07:EAE2: 20 3A B8  JSR sub_0x01784A
C - - - - - 0x01EAF5 07:EAE5: A0 00     LDY #$00
C - - - - - 0x01EAF7 07:EAE7: A2 05     LDX #$05
C - - - - - 0x01EAF9 07:EAE9: A5 EB     LDA ram_map_location
bra_EAEB_loop:
C - - - - - 0x01EAFB 07:EAEB: DD 21 06  CMP ram_room_history,X
C - - - - - 0x01EAFE 07:EAEE: D0 01     BNE bra_EAF1_no_match
C - - - - - 0x01EB00 07:EAF0: C8        INY
bra_EAF1_no_match:
C - - - - - 0x01EB01 07:EAF1: CA        DEX
C - - - - - 0x01EB02 07:EAF2: 10 F7     BPL bra_EAEB_loop
C - - - - - 0x01EB04 07:EAF4: C0 00     CPY #$00
C - - - - - 0x01EB06 07:EAF6: D0 15     BNE bra_EB0D
C - - - - - 0x01EB08 07:EAF8: AE 20 06  LDX ram_history_id
C - - - - - 0x01EB0B 07:EAFB: 9D 21 06  STA ram_room_history,X
C - - - - - 0x01EB0E 07:EAFE: EE 20 06  INC ram_history_id
C - - - - - 0x01EB11 07:EB01: AD 20 06  LDA ram_history_id
C - - - - - 0x01EB14 07:EB04: C9 06     CMP #$06
C - - - - - 0x01EB16 07:EB06: 90 05     BCC bra_EB0D    ; if not overflow
C - - - - - 0x01EB18 07:EB08: A9 00     LDA #$00
C - - - - - 0x01EB1A 07:EB0A: 8D 20 06  STA ram_history_id
bra_EB0D:
C - - - - - 0x01EB1D 07:EB0D: A5 12     LDA ram_game_mode_main
C - - - - - 0x01EB1F 07:EB0F: C9 05     CMP #con_GM_05
C - - - - - 0x01EB21 07:EB11: D0 0C     BNE bra_EB1F
C - - - - - 0x01EB23 07:EB13: A5 10     LDA ram_dungeon_level
C - - - - - 0x01EB25 07:EB15: F0 0B     BEQ bra_EB22    ; if overworld
; if dungeon
C - - - - - 0x01EB27 07:EB17: A9 05     LDA #con_prg_bank + $05
C - - - - - 0x01EB29 07:EB19: 20 AC FF  JSR sub_FFAC_prg_bankswitch
C - - - - - 0x01EB2C 07:EB1C: 20 28 93  JSR sub_0x015338
bra_EB1F:
C - - - - - 0x01EB2F 07:EB1F: 4C 90 6C  JMP loc_bat_6C90
bra_EB22:
C - - - - - 0x01EB32 07:EB22: A9 01     LDA #con_prg_bank + $01
C - - - - - 0x01EB34 07:EB24: 20 AC FF  JSR sub_FFAC_prg_bankswitch
C - - - - - 0x01EB37 07:EB27: 4C 21 A1  JMP loc_0x006131


; bzk garbage
- - - - - - 0x01EB3A 07:EB2A: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF   ; 



sub_EB30_game_mode_routines:
C - - - - - 0x01EB40 07:EB30: A9 02     LDA #con_prg_bank + $02
C - - - - - 0x01EB42 07:EB32: 20 AC FF  JSR sub_FFAC_prg_bankswitch
C - - - - - 0x01EB45 07:EB35: A5 12     LDA ram_game_mode_main
C - - - - - 0x01EB47 07:EB37: 20 E2 E5  JSR sub_E5E2_jump_to_pointers_after_JSR
- D 3 - I - 0x01EB4A 07:EB3A: 20 90     .word ofs_003_0x009030_00_title_screen
- D 3 - I - 0x01EB4C 07:EB3C: 91 A5     .word ofs_003_0x00A5A1_01_slot_selection
- D 3 - I - 0x01EB4E 07:EB3E: 96 EB     .word ofs_003_EB96_02
- D 3 - I - 0x01EB50 07:EB40: AA EB     .word ofs_003_EBAA_03
- D 3 - I - 0x01EB52 07:EB42: C0 EB     .word ofs_003_EBC0_04
- D 3 - I - 0x01EB54 07:EB44: 1B EC     .word ofs_003_EC1B_05
- D 3 - I - 0x01EB56 07:EB46: C0 EB     .word ofs_003_EBC0_06
- D 3 - I - 0x01EB58 07:EB48: 62 EB     .word ofs_003_EB62_07
- D 3 - I - 0x01EB5A 07:EB4A: 76 EB     .word ofs_003_EB76_08
- D 3 - I - 0x01EB5C 07:EB4C: 1B EC     .word ofs_003_EC1B_09
- - - - - - 0x01EB5E 07:EB4E: 1B EC     .word ofs_003_EC1B_0A
- D 3 - I - 0x01EB60 07:EB50: 1B EC     .word ofs_003_EC1B_0B
- D 3 - I - 0x01EB62 07:EB52: 1B EC     .word ofs_003_EC1B_0C
- D 3 - I - 0x01EB64 07:EB54: AD A6     .word ofs_003_0x00A6BD_0D
- D 3 - I - 0x01EB66 07:EB56: F0 9E     .word ofs_003_0x009F00_0E_register
- D 3 - I - 0x01EB68 07:EB58: C5 9F     .word ofs_003_0x009FD5_0F_elimination
- D 3 - I - 0x01EB6A 07:EB5A: 7E EB     .word ofs_003_EB7E_10
- D 3 - I - 0x01EB6C 07:EB5C: 86 EB     .word ofs_003_EB86_11_death
- D 3 - I - 0x01EB6E 07:EB5E: 8E EB     .word ofs_003_EB8E_12
- D 3 - I - 0x01EB70 07:EB60: 10 AA     .word ofs_003_0x00AA20_13



ofs_003_EB62_07:
C - - J - - 0x01EB72 07:EB62: A9 05     LDA #con_prg_bank + $05
C - - - - - 0x01EB74 07:EB64: 20 AC FF  JSR sub_FFAC_prg_bankswitch
C - - - - - 0x01EB77 07:EB67: 20 1E 84  JSR sub_0x01442E
C - - - - - 0x01EB7A 07:EB6A: A5 E3     LDA ram_00E3
C - - - - - 0x01EB7C 07:EB6C: D0 07     BNE bra_EB75_RTS
C - - - - - 0x01EB7E 07:EB6E: 85 F3     STA ram_00F3
C - - - - - 0x01EB80 07:EB70: A9 0F     LDA #con_mirroring_H
C - - - - - 0x01EB82 07:EB72: 20 98 FF  JSR sub_FF98_set_mirroring
bra_EB75_RTS:
C - - - - - 0x01EB85 07:EB75: 60        RTS



ofs_003_EB76_08:
C - - J - - 0x01EB86 07:EB76: A9 05     LDA #con_prg_bank + $05
C - - - - - 0x01EB88 07:EB78: 20 AC FF  JSR sub_FFAC_prg_bankswitch
C - - - - - 0x01EB8B 07:EB7B: 4C F4 8A  JMP loc_0x014B04



ofs_003_EB7E_10:
C - - J - - 0x01EB8E 07:EB7E: A9 05     LDA #con_prg_bank + $05
C - - - - - 0x01EB90 07:EB80: 20 AC FF  JSR sub_FFAC_prg_bankswitch
C - - - - - 0x01EB93 07:EB83: 4C 8B 8B  JMP loc_0x014B9B



ofs_003_EB86_11_death:
C - - J - - 0x01EB96 07:EB86: A9 05     LDA #con_prg_bank + $05
C - - - - - 0x01EB98 07:EB88: 20 AC FF  JSR sub_FFAC_prg_bankswitch
C - - - - - 0x01EB9B 07:EB8B: 4C 7D 8C  JMP loc_0x014C8D_death_subroutines



ofs_003_EB8E_12:
C - - J - - 0x01EB9E 07:EB8E: A9 05     LDA #con_prg_bank + $05
C - - - - - 0x01EBA0 07:EB90: 20 AC FF  JSR sub_FFAC_prg_bankswitch
C - - - - - 0x01EBA3 07:EB93: 4C 58 A8  JMP loc_0x016868



ofs_003_EB96_02:
C - - J - - 0x01EBA6 07:EB96: 20 25 E6  JSR sub_E625_disable_rendering
C - - - - - 0x01EBA9 07:EB99: A9 06     LDA #con_prg_bank + $06
C - - - - - 0x01EBAB 07:EB9B: 20 AC FF  JSR sub_FFAC_prg_bankswitch
C - - - - - 0x01EBAE 07:EB9E: 20 09 81  JSR sub_0x018119
sub_EBA1:
loc_0x01EBB1:
C D 3 - - - 0x01EBB1 07:EBA1: E6 12     INC ram_game_mode_main
sub_0x01EBB3:
loc_0x01EBB3:
C D 3 - - - 0x01EBB3 07:EBA3: A9 00     LDA #$00
C - - - - - 0x01EBB5 07:EBA5: 85 11     STA ram_0011
C - - - - - 0x01EBB7 07:EBA7: 85 13     STA ram_game_mode_sub
C - - - - - 0x01EBB9 07:EBA9: 60        RTS



ofs_003_EBAA_03:
C - - J - - 0x01EBBA 07:EBAA: 20 48 72  JSR sub_bat_7248
C - - - - - 0x01EBBD 07:EBAD: A5 7C     LDA ram_007C
C - - - - - 0x01EBBF 07:EBAF: D0 47     BNE bra_EBF8_RTS
C - - - - - 0x01EBC1 07:EBB1: A9 0F     LDA #con_mirroring_H
C - - - - - 0x01EBC3 07:EBB3: 20 98 FF  JSR sub_FF98_set_mirroring
C - - - - - 0x01EBC6 07:EBB6: A5 5A     LDA ram_005A
C - - - - - 0x01EBC8 07:EBB8: F0 03     BEQ bra_EBBD
C - - - - - 0x01EBCA 07:EBBA: 4C F2 EB  JMP loc_EBF2
bra_EBBD:
C - - - - - 0x01EBCD 07:EBBD: 4C EA EB  JMP loc_EBEA



ofs_003_EBC0_04:
ofs_003_EBC0_06:
C - - J - - 0x01EBD0 07:EBC0: A5 5A     LDA ram_005A
C - - - - - 0x01EBD2 07:EBC2: D0 35     BNE bra_EBF9
C - - - - - 0x01EBD4 07:EBC4: AD 94 03  LDA ram_0394
C - - - - - 0x01EBD7 07:EBC7: F0 29     BEQ bra_EBF2
C - - - - - 0x01EBD9 07:EBC9: C9 08     CMP #$08
C - - - - - 0x01EBDB 07:EBCB: F0 25     BEQ bra_EBF2
C - - - - - 0x01EBDD 07:EBCD: C9 F8     CMP #$F8
C - - - - - 0x01EBDF 07:EBCF: F0 21     BEQ bra_EBF2
C - - - - - 0x01EBE1 07:EBD1: A5 98     LDA ram_direction
C - - - - - 0x01EBE3 07:EBD3: 8D F8 03  STA ram_03F8
C - - - - - 0x01EBE6 07:EBD6: 85 0F     STA ram_000F
C - - - - - 0x01EBE8 07:EBD8: A2 00     LDX #$00
C - - - - - 0x01EBEA 07:EBDA: 20 8D F0  JSR sub_F08D
C - - - - - 0x01EBED 07:EBDD: 4C C5 ED  JMP loc_EDC5



tbl_EBE0_gameplay_music:
- D 3 - - - 0x01EBF0 07:EBE0: 01        .byte con_music_overworld   ; 00
- D 3 - - - 0x01EBF1 07:EBE1: 40        .byte con_music_dungeon     ; 01
- D 3 - - - 0x01EBF2 07:EBE2: 40        .byte con_music_dungeon     ; 02
- D 3 - - - 0x01EBF3 07:EBE3: 40        .byte con_music_dungeon     ; 03
- D 3 - - - 0x01EBF4 07:EBE4: 40        .byte con_music_dungeon     ; 04
- D 3 - - - 0x01EBF5 07:EBE5: 40        .byte con_music_dungeon     ; 05
- D 3 - - - 0x01EBF6 07:EBE6: 40        .byte con_music_dungeon     ; 06
- D 3 - - - 0x01EBF7 07:EBE7: 40        .byte con_music_dungeon     ; 07
- D 3 - - - 0x01EBF8 07:EBE8: 40        .byte con_music_dungeon     ; 08
- D 3 - - - 0x01EBF9 07:EBE9: 20        .byte con_music_final_dungeon   ; 09



loc_EBEA:
bra_EBEA:
C D 3 - - - 0x01EBFA 07:EBEA: A4 10     LDY ram_dungeon_level
C - - - - - 0x01EBFC 07:EBEC: B9 E0 EB  LDA tbl_EBE0_gameplay_music,Y
C - - - - - 0x01EBFF 07:EBEF: 8D 00 06  STA ram_music
bra_EBF2:
loc_EBF2:
C D 3 - - - 0x01EC02 07:EBF2: 20 A1 EB  JSR sub_EBA1
C - - - - - 0x01EC05 07:EBF5: 8D 94 03  STA ram_0394
bra_EBF8_RTS:
C - - - - - 0x01EC08 07:EBF8: 60        RTS
bra_EBF9:
C - - - - - 0x01EC09 07:EBF9: A5 10     LDA ram_dungeon_level
C - - - - - 0x01EC0B 07:EBFB: D0 ED     BNE bra_EBEA    ; if dungeon
; if overworld
C - - - - - 0x01EC0D 07:EBFD: A5 65     LDA ram_0065
C - - - - - 0x01EC0F 07:EBFF: C9 24     CMP #$24
C - - - - - 0x01EC11 07:EC01: D0 E7     BNE bra_EBEA
C - - - - - 0x01EC13 07:EC03: A9 05     LDA #con_prg_bank + $05
C - - - - - 0x01EC15 07:EC05: 20 AC FF  JSR sub_FFAC_prg_bankswitch
C - - - - - 0x01EC18 07:EC08: 20 A8 8B  JSR sub_0x014BB8
C - - - - - 0x01EC1B 07:EC0B: A5 15     LDA ram_frame_cnt
C - - - - - 0x01EC1D 07:EC0D: 29 03     AND #$03
C - - - - - 0x01EC1F 07:EC0F: D0 09     BNE bra_EC1A_RTS
C - - - - - 0x01EC21 07:EC11: C6 84     DEC ram_pos_Y
C - - - - - 0x01EC23 07:EC13: A5 84     LDA ram_pos_Y
C - - - - - 0x01EC25 07:EC15: CD 12 04  CMP ram_0412
C - - - - - 0x01EC28 07:EC18: F0 D0     BEQ bra_EBEA
bra_EC1A_RTS:
C - - - - - 0x01EC2A 07:EC1A: 60        RTS



ofs_003_EC1B_05:
ofs_003_EC1B_09:
ofs_003_EC1B_0A:
ofs_003_EC1B_0B:
ofs_003_EC1B_0C:
C - - J - - 0x01EC2B 07:EC1B: A5 3C     LDA ram_003C
C - - - - - 0x01EC2D 07:EC1D: D0 D9     BNE bra_EBF8_RTS
C - - - - - 0x01EC2F 07:EC1F: AD 1E 05  LDA ram_051E
C - - - - - 0x01EC32 07:EC22: F0 08     BEQ bra_EC2C
C - - - - - 0x01EC34 07:EC24: A9 04     LDA #con_prg_bank + $04
C - - - - - 0x01EC36 07:EC26: 20 AC FF  JSR sub_FFAC_prg_bankswitch
C - - - - - 0x01EC39 07:EC29: 4C BE B1  JMP loc_0x0131CE
bra_EC2C:
C - - - - - 0x01EC3C 07:EC2C: A5 E1     LDA ram_00E1
C - - - - - 0x01EC3E 07:EC2E: D0 28     BNE bra_EC58
C - - - - - 0x01EC40 07:EC30: A5 E0     LDA ram_pause_flag
C - - - - - 0x01EC42 07:EC32: C9 02     CMP #$02
C - - - - - 0x01EC44 07:EC34: F0 13     BEQ bra_EC49
C - - - - - 0x01EC46 07:EC36: A5 F8     LDA ram_btn_press
C - - - - - 0x01EC48 07:EC38: 29 20     AND #con_btn_Select
C - - - - - 0x01EC4A 07:EC3A: F0 0D     BEQ bra_EC49
C - - - - - 0x01EC4C 07:EC3C: A5 E0     LDA ram_pause_flag
C - - - - - 0x01EC4E 07:EC3E: 49 01     EOR #$01    ; toggle flag
C - - - - - 0x01EC50 07:EC40: 85 E0     STA ram_pause_flag
C - - - - - 0x01EC52 07:EC42: D0 05     BNE bra_EC49
C - - - - - 0x01EC54 07:EC44: A9 0F     LDA #$0F
C - - - - - 0x01EC56 07:EC46: 8D 15 40  STA $4015
bra_EC49:
C - - - - - 0x01EC59 07:EC49: A5 E0     LDA ram_pause_flag
C - - - - - 0x01EC5B 07:EC4B: F0 0B     BEQ bra_EC58    ; if not paused
C - - - - - 0x01EC5D 07:EC4D: A9 05     LDA #con_prg_bank + $05
C - - - - - 0x01EC5F 07:EC4F: 20 AC FF  JSR sub_FFAC_prg_bankswitch
C - - - - - 0x01EC62 07:EC52: 20 59 B5  JSR sub_0x017569
C - - - - - 0x01EC65 07:EC55: 4C 89 ED  JMP loc_ED89
bra_EC58:
C - - - - - 0x01EC68 07:EC58: 20 1D 6E  JSR sub_bat_6E1D
C - - - - - 0x01EC6B 07:EC5B: A5 FA     LDA ram_btn_hold
C - - - - - 0x01EC6D 07:EC5D: 29 0F     AND #con_btns_Dpad
C - - - - - 0x01EC6F 07:EC5F: 8D F8 03  STA ram_03F8
C - - - - - 0x01EC72 07:EC62: A5 E1     LDA ram_00E1
C - - - - - 0x01EC74 07:EC64: F0 0B     BEQ bra_EC71
C - - - - - 0x01EC76 07:EC66: A9 05     LDA #con_prg_bank + $05
C - - - - - 0x01EC78 07:EC68: 20 AC FF  JSR sub_FFAC_prg_bankswitch
C - - - - - 0x01EC7B 07:EC6B: 20 59 B5  JSR sub_0x017569
C - - - - - 0x01EC7E 07:EC6E: 4C 00 80  JMP loc_0x014010
bra_EC71:
C - - - - - 0x01EC81 07:EC71: A5 F8     LDA ram_btn_press
C - - - - - 0x01EC83 07:EC73: 29 10     AND #con_btn_Start
C - - - - - 0x01EC85 07:EC75: F0 03     BEQ bra_EC7A
C - - - - - 0x01EC87 07:EC77: E6 E1     INC ram_00E1
C - - - - - 0x01EC89 07:EC79: 60        RTS
bra_EC7A:
C - - - - - 0x01EC8A 07:EC7A: AD 6C 06  LDA ram_item_clock
C - - - - - 0x01EC8D 07:EC7D: F0 09     BEQ bra_EC88
C - - - - - 0x01EC8F 07:EC7F: AD F0 04  LDA ram_invinc_timer
C - - - - - 0x01EC92 07:EC82: 18        CLC
C - - - - - 0x01EC93 07:EC83: 69 10     ADC #$10
C - - - - - 0x01EC95 07:EC85: 8D F0 04  STA ram_invinc_timer
bra_EC88:
C - - - - - 0x01EC98 07:EC88: 20 A0 ED  JSR sub_EDA0
C - - - - - 0x01EC9B 07:EC8B: A5 11     LDA ram_0011
C - - - - - 0x01EC9D 07:EC8D: D0 03     BNE bra_EC92
C - - - - - 0x01EC9F 07:EC8F: 4C 7D ED  JMP loc_ED7D
bra_EC92:
C - - - - - 0x01ECA2 07:EC92: A5 60     LDA ram_0060
C - - - - - 0x01ECA4 07:EC94: D0 08     BNE bra_EC9E
C - - - - - 0x01ECA6 07:EC96: A5 70     LDA ram_pos_X
C - - - - - 0x01ECA8 07:EC98: 85 61     STA ram_0061
C - - - - - 0x01ECAA 07:EC9A: A5 84     LDA ram_pos_Y
C - - - - - 0x01ECAC 07:EC9C: 85 62     STA ram_0062
bra_EC9E:
C - - - - - 0x01ECAE 07:EC9E: A2 0D     LDX #$0D
C - - - - - 0x01ECB0 07:ECA0: 20 69 F7  JSR sub_F769
C - - - - - 0x01ECB3 07:ECA3: A2 0E     LDX #$0E
C - - - - - 0x01ECB5 07:ECA5: 20 6F F3  JSR sub_F36F
C - - - - - 0x01ECB8 07:ECA8: A2 0F     LDX #$0F
C - - - - - 0x01ECBA 07:ECAA: 20 A0 F4  JSR sub_F4A0
C - - - - - 0x01ECBD 07:ECAD: A2 10     LDX #$10
C - - - - - 0x01ECBF 07:ECAF: 20 2A F9  JSR sub_F92A
C - - - - - 0x01ECC2 07:ECB2: A2 11     LDX #$11
C - - - - - 0x01ECC4 07:ECB4: 20 2A F9  JSR sub_F92A
C - - - - - 0x01ECC7 07:ECB7: A2 12     LDX #$12
C - - - - - 0x01ECC9 07:ECB9: 20 3E F7  JSR sub_F73E
C - - - - - 0x01ECCC 07:ECBC: A5 4A     LDA ram_004A
C - - - - - 0x01ECCE 07:ECBE: D0 1E     BNE bra_ECDE
C - - - - - 0x01ECD0 07:ECC0: A5 19     LDA ram_indiv_random + 1
C - - - - - 0x01ECD2 07:ECC2: 29 07     AND #$07
C - - - - - 0x01ECD4 07:ECC4: 85 4A     STA ram_004A
C - - - - - 0x01ECD6 07:ECC6: A5 60     LDA ram_0060
C - - - - - 0x01ECD8 07:ECC8: 49 01     EOR #$01
C - - - - - 0x01ECDA 07:ECCA: 85 60     STA ram_0060
C - - - - - 0x01ECDC 07:ECCC: F0 10     BEQ bra_ECDE
C - - - - - 0x01ECDE 07:ECCE: A5 61     LDA ram_0061
C - - - - - 0x01ECE0 07:ECD0: C5 70     CMP ram_pos_X
C - - - - - 0x01ECE2 07:ECD2: D0 0A     BNE bra_ECDE
C - - - - - 0x01ECE4 07:ECD4: 49 FF     EOR #$FF
C - - - - - 0x01ECE6 07:ECD6: 85 61     STA ram_0061
C - - - - - 0x01ECE8 07:ECD8: A5 62     LDA ram_0062
C - - - - - 0x01ECEA 07:ECDA: 49 FF     EOR #$FF
C - - - - - 0x01ECEC 07:ECDC: 85 62     STA ram_0062
bra_ECDE:
bra_ECDE_loop:
C - - - - - 0x01ECEE 07:ECDE: AE 40 03  LDX ram_obj_index
C - - - - - 0x01ECF1 07:ECE1: 20 98 FE  JSR sub_FE98_decrease_invincibility_timer
C - - - - - 0x01ECF4 07:ECE4: BD 4F 03  LDA ram_obj_id,X
C - - - - - 0x01ECF7 07:ECE7: F0 25     BEQ bra_ED0E_next    ; if not exist
C - - - - - 0x01ECF9 07:ECE9: BD 4F 03  LDA ram_obj_id,X  ; bzk optimize, loading the same value twice
C - - - - - 0x01ECFC 07:ECEC: 20 74 FB  JSR sub_FB74
C - - - - - 0x01ECFF 07:ECEF: AE 40 03  LDX ram_obj_index
C - - - - - 0x01ED02 07:ECF2: BD 05 04  LDA ram_0405,X
C - - - - - 0x01ED05 07:ECF5: D0 17     BNE bra_ED0E_next
C - - - - - 0x01ED07 07:ECF7: BD BF 04  LDA ram_04BF,X
C - - - - - 0x01ED0A 07:ECFA: 29 01     AND #$01
C - - - - - 0x01ED0C 07:ECFC: D0 10     BNE bra_ED0E_next
C - - - - - 0x01ED0E 07:ECFE: BD BF 04  LDA ram_04BF,X
C - - - - - 0x01ED11 07:ED01: 29 04     AND #$04
C - - - - - 0x01ED13 07:ED03: D0 03     BNE bra_ED08
C - - - - - 0x01ED15 07:ED05: 20 D4 77  JSR sub_bat_77D4
bra_ED08:
C - - - - - 0x01ED18 07:ED08: AE 40 03  LDX ram_obj_index
C - - - - - 0x01ED1B 07:ED0B: 20 D0 79  JSR sub_bat_79D0
bra_ED0E_next:
C - - - - - 0x01ED1E 07:ED0E: CE 40 03  DEC ram_obj_index
C - - - - - 0x01ED21 07:ED11: D0 CB     BNE bra_ECDE_loop
C - - - - - 0x01ED23 07:ED13: A9 0B     LDA #$0B
C - - - - - 0x01ED25 07:ED15: 8D 40 03  STA ram_obj_index
C - - - - - 0x01ED28 07:ED18: AD 6F 06  LDA ram_item_066F
C - - - - - 0x01ED2B 07:ED1B: 29 0F     AND #$0F
C - - - - - 0x01ED2D 07:ED1D: D0 08     BNE bra_ED27
C - - - - - 0x01ED2F 07:ED1F: AD 04 06  LDA ram_sfx_4
C - - - - - 0x01ED32 07:ED22: 09 40     ORA #con_sfx_4_low_health
C - - - - - 0x01ED34 07:ED24: 8D 04 06  STA ram_sfx_4
bra_ED27:
C - - - - - 0x01ED37 07:ED27: A5 10     LDA ram_dungeon_level
C - - - - - 0x01ED39 07:ED29: F0 24     BEQ bra_ED4F    ; if overworld
; if dungeon
C - - - - - 0x01ED3B 07:ED2B: A9 04     LDA #con_prg_bank + $04
C - - - - - 0x01ED3D 07:ED2D: 20 AC FF  JSR sub_FFAC_prg_bankswitch
C - - - - - 0x01ED40 07:ED30: 20 50 86  JSR sub_0x010660
C - - - - - 0x01ED43 07:ED33: 20 79 E6  JSR sub_E679
C - - - - - 0x01ED46 07:ED36: A9 05     LDA #con_prg_bank + $05
C - - - - - 0x01ED48 07:ED38: 20 AC FF  JSR sub_FFAC_prg_bankswitch
C - - - - - 0x01ED4B 07:ED3B: 20 BC 8B  JSR sub_0x014BCC
C - - - - - 0x01ED4E 07:ED3E: 20 AD 8A  JSR sub_0x014ABD
C - - - - - 0x01ED51 07:ED41: 20 F3 A5  JSR sub_0x016603
C - - - - - 0x01ED54 07:ED44: A9 01     LDA #con_prg_bank + $01
C - - - - - 0x01ED56 07:ED46: 20 AC FF  JSR sub_FFAC_prg_bankswitch
C - - - - - 0x01ED59 07:ED49: 20 7C A1  JSR sub_0x00618C
C - - - - - 0x01ED5C 07:ED4C: 4C 6A ED  JMP loc_ED6A
bra_ED4F:
C - - - - - 0x01ED5F 07:ED4F: A5 12     LDA ram_game_mode_main
C - - - - - 0x01ED61 07:ED51: C9 05     CMP #con_GM_05
C - - - - - 0x01ED63 07:ED53: D0 0D     BNE bra_ED62
C - - - - - 0x01ED65 07:ED55: A4 EB     LDY ram_map_location
C - - - - - 0x01ED67 07:ED57: B9 7E 68  LDA ram_687E_map_data,Y
C - - - - - 0x01ED6A 07:ED5A: 29 04     AND #$04
C - - - - - 0x01ED6C 07:ED5C: 0A        ASL
C - - - - - 0x01ED6D 07:ED5D: 0A        ASL
C - - - - - 0x01ED6E 07:ED5E: 0A        ASL
C - - - - - 0x01ED6F 07:ED5F: 20 80 6D  JSR sub_bat_6D80_set_sfx_3
bra_ED62:
C - - - - - 0x01ED72 07:ED62: A9 04     LDA #con_prg_bank + $04
C - - - - - 0x01ED74 07:ED64: 20 AC FF  JSR sub_FFAC_prg_bankswitch
C - - - - - 0x01ED77 07:ED67: 20 E0 86  JSR sub_0x0106F0
loc_ED6A:
C D 3 - - - 0x01ED7A 07:ED6A: AD 01 03  LDA ram_0301
C - - - - - 0x01ED7D 07:ED6D: D0 0E     BNE bra_ED7D
C - - - - - 0x01ED7F 07:ED6F: AD E5 04  LDA ram_04E5
C - - - - - 0x01ED82 07:ED72: F0 09     BEQ bra_ED7D
C - - - - - 0x01ED84 07:ED74: A9 00     LDA #$00
C - - - - - 0x01ED86 07:ED76: 8D E5 04  STA ram_04E5
C - - - - - 0x01ED89 07:ED79: A9 44     LDA #$44
C - - - - - 0x01ED8B 07:ED7B: 85 14     STA ram_0014
bra_ED7D:
loc_ED7D:
C D 3 - - - 0x01ED8D 07:ED7D: 20 FE E7  JSR sub_E7FE
C - - - - - 0x01ED90 07:ED80: 20 EA E6  JSR sub_E6EA
C - - - - - 0x01ED93 07:ED83: 20 28 73  JSR sub_bat_7328
C - - - - - 0x01ED96 07:ED86: 20 8A E7  JSR sub_E78A
loc_ED89:
sub_0x01ED99:
loc_0x01ED99:
C D 3 - - - 0x01ED99 07:ED89: A9 05     LDA #con_prg_bank + $05
C - - - - - 0x01ED9B 07:ED8B: 20 AC FF  JSR sub_FFAC_prg_bankswitch
C - - - - - 0x01ED9E 07:ED8E: 20 E6 B1  JSR sub_0x0171F6
C - - - - - 0x01EDA1 07:ED91: 4C C0 6C  JMP loc_bat_6CC0_count_rupees_and_update_hud_info


; bzk garbage
- - - - - - 0x01EDA4 07:ED94: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 



sub_EDA0:
sub_0x01EDB0:
C - - - - - 0x01EDB0 07:EDA0: A2 00     LDX #$00
C - - - - - 0x01EDB2 07:EDA2: 20 98 FE  JSR sub_FE98_decrease_invincibility_timer
C - - - - - 0x01EDB5 07:EDA5: A5 AC     LDA ram_drop_id
C - - - - - 0x01EDB7 07:EDA7: 29 C0     AND #$C0
C - - - - - 0x01EDB9 07:EDA9: C9 40     CMP #$40
C - - - - - 0x01EDBB 07:EDAB: F0 3D     BEQ bra_EDEA_RTS
C - - - - - 0x01EDBD 07:EDAD: AD 12 05  LDA ram_0512
C - - - - - 0x01EDC0 07:EDB0: F0 08     BEQ bra_EDBA
- - - - - - 0x01EDC2 07:EDB2: AD F8 03  LDA ram_03F8
- - - - - - 0x01EDC5 07:EDB5: 29 F0     AND #$F0
- - - - - - 0x01EDC7 07:EDB7: 8D F8 03  STA ram_03F8
bra_EDBA:
C - - - - - 0x01EDCA 07:EDBA: A9 05     LDA #con_prg_bank + $05
C - - - - - 0x01EDCC 07:EDBC: 20 AC FF  JSR sub_FFAC_prg_bankswitch
C - - - - - 0x01EDCF 07:EDBF: 20 9A B2  JSR sub_0x0172AA
C - - - - - 0x01EDD2 07:EDC2: 20 D0 EF  JSR sub_EFD0
loc_EDC5:
loc_0x01EDD5:
C D 3 - - - 0x01EDD5 07:EDC5: A5 12     LDA ram_game_mode_main
C - - - - - 0x01EDD7 07:EDC7: C9 0A     CMP #con_GM_0A
C - - - - - 0x01EDD9 07:EDC9: F0 1F     BEQ bra_EDEA_RTS
C - - - - - 0x01EDDB 07:EDCB: 20 3C F2  JSR sub_F23C
C - - - - - 0x01EDDE 07:EDCE: A5 10     LDA ram_dungeon_level
C - - - - - 0x01EDE0 07:EDD0: F0 03     BEQ bra_EDD5    ; if overworld
; if dungeon
C - - - - - 0x01EDE2 07:EDD2: 20 FB 6E  JSR sub_bat_6EFB
bra_EDD5:
C - - - - - 0x01EDE5 07:EDD5: A2 00     LDX #$00
sub_EDD7:
C - - - - - 0x01EDE7 07:EDD7: BD 94 03  LDA ram_0394,X
C - - - - - 0x01EDEA 07:EDDA: D0 0E     BNE bra_EDEA_RTS
C - - - - - 0x01EDEC 07:EDDC: B5 70     LDA ram_pos_X,X
C - - - - - 0x01EDEE 07:EDDE: 29 F8     AND #$F8
C - - - - - 0x01EDF0 07:EDE0: 95 70     STA ram_pos_X,X
C - - - - - 0x01EDF2 07:EDE2: B5 84     LDA ram_pos_Y,X
C - - - - - 0x01EDF4 07:EDE4: 29 F8     AND #$F8
C - - - - - 0x01EDF6 07:EDE6: 09 05     ORA #$05
C - - - - - 0x01EDF8 07:EDE8: 95 84     STA ram_pos_Y,X
bra_EDEA_RTS:
C - - - - - 0x01EDFA 07:EDEA: 60        RTS



tbl_EDEB:
- D 3 - - - 0x01EDFB 07:EDEB: 8D        .byte $8D   ; 00
- D 3 - - - 0x01EDFC 07:EDEC: 91        .byte $91   ; 01
- D 3 - - - 0x01EDFD 07:EDED: 9C        .byte $9C   ; 02
- D 3 - - - 0x01EDFE 07:EDEE: AC        .byte $AC   ; 03
- D 3 - - - 0x01EDFF 07:EDEF: AD        .byte $AD   ; 04
- D 3 - - - 0x01EE00 07:EDF0: CC        .byte $CC   ; 05
- D 3 - - - 0x01EE01 07:EDF1: D2        .byte $D2   ; 06
- D 3 - - - 0x01EE02 07:EDF2: D5        .byte $D5   ; 07
- D 3 - - - 0x01EE03 07:EDF3: DF        .byte $DF   ; 08



sub_0x01EE04:
C - - - - - 0x01EE04 07:EDF4: A0 00     LDY #$00
C - - - - - 0x01EE06 07:EDF6: 84 0F     STY ram_000F
C - - - - - 0x01EE08 07:EDF8: F0 16     BEQ bra_EE10    ; jmp



sub_EDFA:
sub_0x01EE0A:
C - - - - - 0x01EE0A 07:EDFA: A0 F8     LDY #$F8
C - - - - - 0x01EE0C 07:EDFC: E0 00     CPX #$00
C - - - - - 0x01EE0E 07:EDFE: F0 02     BEQ bra_EE02
C - - - - - 0x01EE10 07:EE00: A0 F0     LDY #$F0
bra_EE02:
C - - - - - 0x01EE12 07:EE02: A5 0F     LDA ram_000F
C - - - - - 0x01EE14 07:EE04: 29 05     AND #$05
C - - - - - 0x01EE16 07:EE06: F0 08     BEQ bra_EE10
C - - - - - 0x01EE18 07:EE08: A0 08     LDY #$08
C - - - - - 0x01EE1A 07:EE0A: 29 04     AND #$04
C - - - - - 0x01EE1C 07:EE0C: D0 02     BNE bra_EE10
C - - - - - 0x01EE1E 07:EE0E: A0 10     LDY #$10
bra_EE10:
sub_0x01EE20:
C - - - - - 0x01EE20 07:EE10: 84 04     STY ram_0004
C - - - - - 0x01EE22 07:EE12: B5 84     LDA ram_pos_Y,X
C - - - - - 0x01EE24 07:EE14: 18        CLC
C - - - - - 0x01EE25 07:EE15: 69 0B     ADC #$0B
C - - - - - 0x01EE27 07:EE17: A8        TAY
C - - - - - 0x01EE28 07:EE18: 48        PHA
C - - - - - 0x01EE29 07:EE19: A5 0F     LDA ram_000F
C - - - - - 0x01EE2B 07:EE1B: 29 0C     AND #$0C
C - - - - - 0x01EE2D 07:EE1D: F0 12     BEQ bra_EE31
C - - - - - 0x01EE2F 07:EE1F: 29 04     AND #$04
C - - - - - 0x01EE31 07:EE21: F0 04     BEQ bra_EE27
C - - - - - 0x01EE33 07:EE23: C0 DD     CPY #$DD
C - - - - - 0x01EE35 07:EE25: B0 05     BCS bra_EE2C
bra_EE27:
C - - - - - 0x01EE37 07:EE27: 68        PLA
C - - - - - 0x01EE38 07:EE28: 18        CLC
C - - - - - 0x01EE39 07:EE29: 65 04     ADC ram_0004
C - - - - - 0x01EE3B 07:EE2B: 48        PHA
bra_EE2C:
C - - - - - 0x01EE3C 07:EE2C: B4 70     LDY ram_pos_X,X
C - - - - - 0x01EE3E 07:EE2E: 4C 48 EE  JMP loc_EE48
bra_EE31:
C - - - - - 0x01EE41 07:EE31: B4 70     LDY ram_pos_X,X
C - - - - - 0x01EE43 07:EE33: A5 0F     LDA ram_000F
C - - - - - 0x01EE45 07:EE35: 29 01     AND #$01
C - - - - - 0x01EE47 07:EE37: F0 06     BEQ bra_EE3F
C - - - - - 0x01EE49 07:EE39: C0 F0     CPY #$F0
C - - - - - 0x01EE4B 07:EE3B: B0 0B     BCS bra_EE48
C - - - - - 0x01EE4D 07:EE3D: 90 04     BCC bra_EE43
bra_EE3F:
C - - - - - 0x01EE4F 07:EE3F: C0 10     CPY #$10
C - - - - - 0x01EE51 07:EE41: 90 05     BCC bra_EE48
bra_EE43:
C - - - - - 0x01EE53 07:EE43: 98        TYA
C - - - - - 0x01EE54 07:EE44: 18        CLC
C - - - - - 0x01EE55 07:EE45: 65 04     ADC ram_0004
C - - - - - 0x01EE57 07:EE47: A8        TAY
bra_EE48:
loc_EE48:
C D 3 - - - 0x01EE58 07:EE48: 98        TYA
C - - - - - 0x01EE59 07:EE49: 29 F8     AND #$F8
C - - - - - 0x01EE5B 07:EE4B: 4A        LSR
C - - - - - 0x01EE5C 07:EE4C: 4A        LSR
C - - - - - 0x01EE5D 07:EE4D: A8        TAY
C - - - - - 0x01EE5E 07:EE4E: B9 00 E4  LDA tbl_E400,Y
C - - - - - 0x01EE61 07:EE51: 85 00     STA ram_0000
C - - - - - 0x01EE63 07:EE53: B9 01 E4  LDA tbl_E400 + 1,Y
C - - - - - 0x01EE66 07:EE56: 85 01     STA ram_0001
C - - - - - 0x01EE68 07:EE58: 68        PLA
C - - - - - 0x01EE69 07:EE59: 38        SEC
C - - - - - 0x01EE6A 07:EE5A: E9 40     SBC #$40
C - - - - - 0x01EE6C 07:EE5C: 4A        LSR
C - - - - - 0x01EE6D 07:EE5D: 4A        LSR
C - - - - - 0x01EE6E 07:EE5E: 4A        LSR
C - - - - - 0x01EE6F 07:EE5F: A8        TAY
C - - - - - 0x01EE70 07:EE60: B1 00     LDA (ram_0000),Y
C - - - - - 0x01EE72 07:EE62: 9D 9E 04  STA ram_collision_tile,X
C - - - - - 0x01EE75 07:EE65: A5 0F     LDA ram_000F
C - - - - - 0x01EE77 07:EE67: 29 0C     AND #$0C
C - - - - - 0x01EE79 07:EE69: F0 0F     BEQ bra_EE7A
C - - - - - 0x01EE7B 07:EE6B: 98        TYA
C - - - - - 0x01EE7C 07:EE6C: 18        CLC
C - - - - - 0x01EE7D 07:EE6D: 69 16     ADC #$16
C - - - - - 0x01EE7F 07:EE6F: A8        TAY
C - - - - - 0x01EE80 07:EE70: B1 00     LDA (ram_0000),Y
C - - - - - 0x01EE82 07:EE72: DD 9E 04  CMP ram_collision_tile,X
C - - - - - 0x01EE85 07:EE75: 90 03     BCC bra_EE7A
C - - - - - 0x01EE87 07:EE77: 9D 9E 04  STA ram_collision_tile,X
bra_EE7A:
C - - - - - 0x01EE8A 07:EE7A: BD 9E 04  LDA ram_collision_tile,X
C - - - - - 0x01EE8D 07:EE7D: A4 10     LDY ram_dungeon_level
C - - - - - 0x01EE8F 07:EE7F: D0 36     BNE bra_EEB7_RTS    ; if dungeon
; if overworld
C - - - - - 0x01EE91 07:EE81: BD 9E 04  LDA ram_collision_tile,X
C - - - - - 0x01EE94 07:EE84: A0 09     LDY #$09
bra_EE86_loop:
C - - - - - 0x01EE96 07:EE86: 88        DEY
C - - - - - 0x01EE97 07:EE87: 30 07     BMI bra_EE90
C - - - - - 0x01EE99 07:EE89: D9 EB ED  CMP tbl_EDEB,Y
C - - - - - 0x01EE9C 07:EE8C: D0 F8     BNE bra_EE86_loop
C - - - - - 0x01EE9E 07:EE8E: A9 26     LDA #$26
bra_EE90:
C - - - - - 0x01EEA0 07:EE90: 9D 9E 04  STA ram_collision_tile,X
C - - - - - 0x01EEA3 07:EE93: E0 00     CPX #$00
C - - - - - 0x01EEA5 07:EE95: D0 1D     BNE bra_EEB4
C - - - - - 0x01EEA7 07:EE97: A5 EB     LDA ram_map_location
C - - - - - 0x01EEA9 07:EE99: C9 1F     CMP #con_map_location + $1F
C - - - - - 0x01EEAB 07:EE9B: D0 17     BNE bra_EEB4
C - - - - - 0x01EEAD 07:EE9D: A9 0C     LDA #$0C
C - - - - - 0x01EEAF 07:EE9F: 25 0F     AND ram_000F
C - - - - - 0x01EEB1 07:EEA1: F0 11     BEQ bra_EEB4
C - - - - - 0x01EEB3 07:EEA3: A5 70     LDA ram_pos_X
C - - - - - 0x01EEB5 07:EEA5: C9 80     CMP #$80
C - - - - - 0x01EEB7 07:EEA7: D0 0B     BNE bra_EEB4
C - - - - - 0x01EEB9 07:EEA9: A5 84     LDA ram_pos_Y
C - - - - - 0x01EEBB 07:EEAB: C9 56     CMP #$56
C - - - - - 0x01EEBD 07:EEAD: B0 05     BCS bra_EEB4
C - - - - - 0x01EEBF 07:EEAF: A9 26     LDA #$26
C - - - - - 0x01EEC1 07:EEB1: 8D 9E 04  STA ram_collision_tile
bra_EEB4:
C - - - - - 0x01EEC4 07:EEB4: BD 9E 04  LDA ram_collision_tile,X
bra_EEB7_RTS:
C - - - - - 0x01EEC7 07:EEB7: 60        RTS



loc_EEB8:
sub_0x01EEC8:
loc_0x01EEC8:
C D 3 - - - 0x01EEC8 07:EEB8: B5 C0     LDA ram_00C0,X
C - - - - - 0x01EECA 07:EEBA: 0A        ASL
C - - - - - 0x01EECB 07:EEBB: 90 23     BCC bra_EEE0
C - - - - - 0x01EECD 07:EEBD: 4A        LSR
C - - - - - 0x01EECE 07:EEBE: 95 C0     STA ram_00C0,X
C - - - - - 0x01EED0 07:EEC0: B4 98     LDY ram_direction,X
C - - - - - 0x01EED2 07:EEC2: C0 03     CPY #$03    ; check for either con_dir_Right or con_dir_Left
C - - - - - 0x01EED4 07:EEC4: 90 15     BCC bra_EEDB
C - - - - - 0x01EED6 07:EEC6: 29 03     AND #con_dir__LR
C - - - - - 0x01EED8 07:EEC8: F0 10     BEQ bra_EEDA_RTS
bra_EECA:
C - - - - - 0x01EEDA 07:EECA: BD 94 03  LDA ram_0394,X
C - - - - - 0x01EEDD 07:EECD: F0 0B     BEQ bra_EEDA_RTS
C - - - - - 0x01EEDF 07:EECF: E0 00     CPX #$00
C - - - - - 0x01EEE1 07:EED1: D0 11     BNE bra_EEE4
- - - - - - 0x01EEE3 07:EED3: A5 98     LDA ram_direction
- - - - - - 0x01EEE5 07:EED5: 20 13 70  JSR sub_bat_7013
- - - - - - 0x01EEE8 07:EED8: 85 C0     STA ram_00C0
bra_EEDA_RTS:
C - - - - - 0x01EEEA 07:EEDA: 60        RTS
bra_EEDB:
C - - - - - 0x01EEEB 07:EEDB: 29 0C     AND #$0C
C - - - - - 0x01EEED 07:EEDD: D0 EB     BNE bra_EECA
C - - - - - 0x01EEEF 07:EEDF: 60        RTS
bra_EEE0:
C - - - - - 0x01EEF0 07:EEE0: B5 D3     LDA ram_00D3,X
C - - - - - 0x01EEF2 07:EEE2: D0 07     BNE bra_EEEB
bra_EEE4:
sub_EEE4:
sub_0x01EEF4:
loc_0x01EEF4:
C D 3 - - - 0x01EEF4 07:EEE4: A9 00     LDA #$00
sub_0x01EEF6:
C - - - - - 0x01EEF6 07:EEE6: 95 C0     STA ram_00C0,X
C - - - - - 0x01EEF8 07:EEE8: 95 D3     STA ram_00D3,X
C - - - - - 0x01EEFA 07:EEEA: 60        RTS
bra_EEEB:
C - - - - - 0x01EEFB 07:EEEB: A9 04     LDA #$04
C - - - - - 0x01EEFD 07:EEED: 85 03     STA ram_0003
bra_EEEF_loop:
C - - - - - 0x01EEFF 07:EEEF: BD 94 03  LDA ram_0394,X
C - - - - - 0x01EF02 07:EEF2: D0 11     BNE bra_EF05
C - - - - - 0x01EF04 07:EEF4: 20 D7 ED  JSR sub_EDD7
C - - - - - 0x01EF07 07:EEF7: B5 C0     LDA ram_00C0,X
C - - - - - 0x01EF09 07:EEF9: 29 0F     AND #$0F
C - - - - - 0x01EF0B 07:EEFB: 85 0F     STA ram_000F
C - - - - - 0x01EF0D 07:EEFD: 20 FA ED  JSR sub_EDFA
C - - - - - 0x01EF10 07:EF00: CD 4A 03  CMP ram_min_collision_tile
C - - - - - 0x01EF13 07:EF03: B0 DF     BCS bra_EEE4
bra_EF05:
C - - - - - 0x01EF15 07:EF05: B5 C0     LDA ram_00C0,X
C - - - - - 0x01EF17 07:EF07: 29 0F     AND #$0F
C - - - - - 0x01EF19 07:EF09: 20 B6 6F  JSR sub_bat_6FB6
C - - - - - 0x01EF1C 07:EF0C: F0 D6     BEQ bra_EEE4
C - - - - - 0x01EF1E 07:EF0E: AD 50 03  LDA ram_obj_id + 1
C - - - - - 0x01EF21 07:EF11: C9 36     CMP #con_obj_id_36
C - - - - - 0x01EF23 07:EF13: F0 08     BEQ bra_EF1D
C - - - - - 0x01EF25 07:EF15: C9 4B     CMP #$4B
C - - - - - 0x01EF27 07:EF17: 90 0B     BCC bra_EF24
C - - - - - 0x01EF29 07:EF19: C9 53     CMP #$53
C - - - - - 0x01EF2B 07:EF1B: B0 07     BCS bra_EF24
bra_EF1D:
C - - - - - 0x01EF2D 07:EF1D: 20 46 6E  JSR sub_bat_6E46
C - - - - - 0x01EF30 07:EF20: A5 0F     LDA ram_000F
C - - - - - 0x01EF32 07:EF22: F0 C0     BEQ bra_EEE4
bra_EF24:
C - - - - - 0x01EF34 07:EF24: A0 01     LDY #$01
C - - - - - 0x01EF36 07:EF26: B5 C0     LDA ram_00C0,X
C - - - - - 0x01EF38 07:EF28: 29 05     AND #$05
C - - - - - 0x01EF3A 07:EF2A: D0 02     BNE bra_EF2E
C - - - - - 0x01EF3C 07:EF2C: A0 FF     LDY #$FF
bra_EF2E:
C - - - - - 0x01EF3E 07:EF2E: 84 02     STY ram_0002
C - - - - - 0x01EF40 07:EF30: D6 D3     DEC ram_00D3,X
C - - - - - 0x01EF42 07:EF32: BD 94 03  LDA ram_0394,X
C - - - - - 0x01EF45 07:EF35: 18        CLC
C - - - - - 0x01EF46 07:EF36: 65 02     ADC ram_0002
C - - - - - 0x01EF48 07:EF38: 9D 94 03  STA ram_0394,X
C - - - - - 0x01EF4B 07:EF3B: 29 0F     AND #$0F
C - - - - - 0x01EF4D 07:EF3D: F0 08     BEQ bra_EF47
C - - - - - 0x01EF4F 07:EF3F: E0 00     CPX #$00
C - - - - - 0x01EF51 07:EF41: D0 07     BNE bra_EF4A
C - - - - - 0x01EF53 07:EF43: 29 07     AND #$07
C - - - - - 0x01EF55 07:EF45: D0 03     BNE bra_EF4A
bra_EF47:
C - - - - - 0x01EF57 07:EF47: 9D 94 03  STA ram_0394,X
bra_EF4A:
C - - - - - 0x01EF5A 07:EF4A: B5 C0     LDA ram_00C0,X
C - - - - - 0x01EF5C 07:EF4C: 29 03     AND #$03
C - - - - - 0x01EF5E 07:EF4E: F0 0A     BEQ bra_EF5A
C - - - - - 0x01EF60 07:EF50: B5 70     LDA ram_pos_X,X
C - - - - - 0x01EF62 07:EF52: 18        CLC
C - - - - - 0x01EF63 07:EF53: 65 02     ADC ram_0002
C - - - - - 0x01EF65 07:EF55: 95 70     STA ram_pos_X,X
C - - - - - 0x01EF67 07:EF57: 4C 61 EF  JMP loc_EF61
bra_EF5A:
C - - - - - 0x01EF6A 07:EF5A: B5 84     LDA ram_pos_Y,X
C - - - - - 0x01EF6C 07:EF5C: 18        CLC
C - - - - - 0x01EF6D 07:EF5D: 65 02     ADC ram_0002
C - - - - - 0x01EF6F 07:EF5F: 95 84     STA ram_pos_Y,X
loc_EF61:
C D 3 - - - 0x01EF71 07:EF61: C6 03     DEC ram_0003
C - - - - - 0x01EF73 07:EF63: D0 8A     BNE bra_EEEF_loop
C - - - - - 0x01EF75 07:EF65: 60        RTS



tbl_EF66:
- D 3 - - - 0x01EF76 07:EF66: 42        .byte con_map_location + $42   ; 00
- D 3 - - - 0x01EF77 07:EF67: 06        .byte con_map_location + $06   ; 01
- D 3 - - - 0x01EF78 07:EF68: 29        .byte con_map_location + $29   ; 02
- D 3 - - - 0x01EF79 07:EF69: 2B        .byte con_map_location + $2B   ; 03
- D 3 - - - 0x01EF7A 07:EF6A: 30        .byte con_map_location + $30   ; 04
- D 3 - - - 0x01EF7B 07:EF6B: 3A        .byte con_map_location + $3A   ; 05
- D 3 - - - 0x01EF7C 07:EF6C: 3C        .byte con_map_location + $3C   ; 06
- D 3 - - - 0x01EF7D 07:EF6D: 58        .byte con_map_location + $58   ; 07
- D 3 - - - 0x01EF7E 07:EF6E: 60        .byte con_map_location + $60   ; 08
- D 3 - - - 0x01EF7F 07:EF6F: 6E        .byte con_map_location + $6E   ; 09
- D 3 - - - 0x01EF80 07:EF70: 72        .byte con_map_location + $72   ; 0A



ofs_021_0x01EF81_05_flute:
C - - J - - 0x01EF81 07:EF71: A9 10     LDA #con_sfx_2_flute
C - - - - - 0x01EF83 07:EF73: 8D 02 06  STA ram_sfx_2
C - - - - - 0x01EF86 07:EF76: A9 98     LDA #$98
C - - - - - 0x01EF88 07:EF78: 85 3C     STA ram_003C
C - - - - - 0x01EF8A 07:EF7A: A5 10     LDA ram_dungeon_level
C - - - - - 0x01EF8C 07:EF7C: D0 49     BNE bra_EFC7    ; if dungeon
; if overworld
C - - - - - 0x01EF8E 07:EF7E: A5 12     LDA ram_game_mode_main
C - - - - - 0x01EF90 07:EF80: C9 05     CMP #con_GM_05
C - - - - - 0x01EF92 07:EF82: D0 34     BNE bra_EFB8_RTS
C - - - - - 0x01EF94 07:EF84: A4 16     LDY ram_current_save_slot
C - - - - - 0x01EF96 07:EF86: B9 2D 06  LDA ram_current_quest,Y
C - - - - - 0x01EF99 07:EF89: 48        PHA
C - - - - - 0x01EF9A 07:EF8A: A5 EB     LDA ram_map_location
C - - - - - 0x01EF9C 07:EF8C: A0 0A     LDY #$0A
bra_EF8E_loop:
C - - - - - 0x01EF9E 07:EF8E: D9 66 EF  CMP tbl_EF66,Y
C - - - - - 0x01EFA1 07:EF91: F0 05     BEQ bra_EF98
C - - - - - 0x01EFA3 07:EF93: 88        DEY
C - - - - - 0x01EFA4 07:EF94: 10 F8     BPL bra_EF8E_loop
C - - - - - 0x01EFA6 07:EF96: 30 21     BMI bra_EFB9    ; jmp
bra_EF98:
C - - - - - 0x01EFA8 07:EF98: C0 00     CPY #$00
C - - - - - 0x01EFAA 07:EF9A: D0 05     BNE bra_EFA1
C - - - - - 0x01EFAC 07:EF9C: 68        PLA ; ram_current_quest
C - - - - - 0x01EFAD 07:EF9D: D0 1B     BNE bra_EFBA    ; if 2nd quest
C - - - - - 0x01EFAF 07:EF9F: F0 03     BEQ bra_EFA4    ; jmp if 1st quest
bra_EFA1:
C - - - - - 0x01EFB1 07:EFA1: 68        PLA ; ram_current_quest
C - - - - - 0x01EFB2 07:EFA2: F0 16     BEQ bra_EFBA    ; if 1st quest
; if 2nd quest
bra_EFA4:
C - - - - - 0x01EFB4 07:EFA4: AD 1A 05  LDA ram_051A
C - - - - - 0x01EFB7 07:EFA7: D0 0F     BNE bra_EFB8_RTS
C - - - - - 0x01EFB9 07:EFA9: A0 09     LDY #$09
bra_EFAB_loop:
C - - - - - 0x01EFBB 07:EFAB: 88        DEY
C - - - - - 0x01EFBC 07:EFAC: 30 0A     BMI bra_EFB8_RTS
C - - - - - 0x01EFBE 07:EFAE: B9 50 03  LDA ram_obj_id + 1,Y
C - - - - - 0x01EFC1 07:EFB1: D0 F8     BNE bra_EFAB_loop
C - - - - - 0x01EFC3 07:EFB3: A9 5E     LDA #con_obj_id_5E
C - - - - - 0x01EFC5 07:EFB5: 99 50 03  STA ram_obj_id + 1,Y
bra_EFB8_RTS:
C - - - - - 0x01EFC8 07:EFB8: 60        RTS
bra_EFB9:
C - - - - - 0x01EFC9 07:EFB9: 68        PLA
bra_EFBA:
C - - - - - 0x01EFCA 07:EFBA: A9 01     LDA #con_prg_bank + $01
C - - - - - 0x01EFCC 07:EFBC: 20 AC FF  JSR sub_FFAC_prg_bankswitch
C - - - - - 0x01EFCF 07:EFBF: 20 A8 A0  JSR sub_0x0060B8
C - - - - - 0x01EFD2 07:EFC2: A9 05     LDA #con_prg_bank + $05
C - - - - - 0x01EFD4 07:EFC4: 4C AC FF  JMP loc_FFAC_prg_bankswitch
bra_EFC7:
C - - - - - 0x01EFD7 07:EFC7: AD 1B 05  LDA ram_051B
C - - - - - 0x01EFDA 07:EFCA: D0 03     BNE bra_EFCF_RTS
C - - - - - 0x01EFDC 07:EFCC: EE 1B 05  INC ram_051B
bra_EFCF_RTS:
C - - - - - 0x01EFDF 07:EFCF: 60        RTS



sub_EFD0:
sub_0x01EFE0:
C - - - - - 0x01EFE0 07:EFD0: B5 C0     LDA ram_00C0,X
C - - - - - 0x01EFE2 07:EFD2: F0 03     BEQ bra_EFD7
C - - - - - 0x01EFE4 07:EFD4: 4C B8 EE  JMP loc_EEB8
bra_EFD7:
C - - - - - 0x01EFE7 07:EFD7: E0 00     CPX #$00
C - - - - - 0x01EFE9 07:EFD9: D0 0E     BNE bra_EFE9
C - - - - - 0x01EFEB 07:EFDB: AD 94 03  LDA ram_0394
C - - - - - 0x01EFEE 07:EFDE: F0 09     BEQ bra_EFE9
C - - - - - 0x01EFF0 07:EFE0: AD F8 03  LDA ram_03F8
C - - - - - 0x01EFF3 07:EFE3: F0 1C     BEQ bra_F001
C - - - - - 0x01EFF5 07:EFE5: A5 98     LDA ram_direction
C - - - - - 0x01EFF7 07:EFE7: D0 1A     BNE bra_F003
bra_EFE9:
C - - - - - 0x01EFF9 07:EFE9: E0 00     CPX #$00
C - - - - - 0x01EFFB 07:EFEB: F0 07     BEQ bra_EFF4
C - - - - - 0x01EFFD 07:EFED: AD 6C 06  LDA ram_item_clock
C - - - - - 0x01F000 07:EFF0: 15 3D     ORA ram_003D,X
C - - - - - 0x01F002 07:EFF2: D0 DB     BNE bra_EFCF_RTS
bra_EFF4:
C - - - - - 0x01F004 07:EFF4: BD F8 03  LDA ram_03F8,X
C - - - - - 0x01F007 07:EFF7: F0 08     BEQ bra_F001
C - - - - - 0x01F009 07:EFF9: 20 13 70  JSR sub_bat_7013
C - - - - - 0x01F00C 07:EFFC: B9 C3 6D  LDA tbl_bat_6DC3_direction,Y
C - - - - - 0x01F00F 07:EFFF: D0 02     BNE bra_F003    ; jmp
bra_F001:
C - - - - - 0x01F011 07:F001: A9 00     LDA #$00
bra_F003:
C - - - - - 0x01F013 07:F003: 29 0F     AND #$0F
C - - - - - 0x01F015 07:F005: 85 0F     STA ram_000F
C - - - - - 0x01F017 07:F007: A9 00     LDA #$00
C - - - - - 0x01F019 07:F009: 85 0E     STA ram_000E
C - - - - - 0x01F01B 07:F00B: E0 00     CPX #$00
C - - - - - 0x01F01D 07:F00D: D0 0E     BNE bra_F01D
C - - - - - 0x01F01F 07:F00F: B5 AC     LDA ram_drop_id,X
C - - - - - 0x01F021 07:F011: 29 F0     AND #$F0
C - - - - - 0x01F023 07:F013: C9 10     CMP #$10
C - - - - - 0x01F025 07:F015: F0 04     BEQ bra_F01B
C - - - - - 0x01F027 07:F017: C9 20     CMP #$20
C - - - - - 0x01F029 07:F019: D0 02     BNE bra_F01D
bra_F01B:
C - - - - - 0x01F02B 07:F01B: 86 0F     STX ram_000F
bra_F01D:
C - - - - - 0x01F02D 07:F01D: E0 00     CPX #$00
C - - - - - 0x01F02F 07:F01F: D0 42     BNE bra_F063
C - - - - - 0x01F031 07:F021: A9 01     LDA #con_prg_bank + $01
C - - - - - 0x01F033 07:F023: 20 AC FF  JSR sub_FFAC_prg_bankswitch
C - - - - - 0x01F036 07:F026: 20 3E A1  JSR sub_0x00614E
C - - - - - 0x01F039 07:F029: AD 50 03  LDA ram_obj_id + 1
C - - - - - 0x01F03C 07:F02C: C9 36     CMP #con_obj_id_36
C - - - - - 0x01F03E 07:F02E: F0 08     BEQ bra_F038
C - - - - - 0x01F040 07:F030: C9 4B     CMP #$4B
C - - - - - 0x01F042 07:F032: 90 07     BCC bra_F03B
C - - - - - 0x01F044 07:F034: C9 53     CMP #$53
C - - - - - 0x01F046 07:F036: B0 03     BCS bra_F03B
bra_F038:
C - - - - - 0x01F048 07:F038: 20 46 6E  JSR sub_bat_6E46
bra_F03B:
C - - - - - 0x01F04B 07:F03B: A5 53     LDA ram_0053
C - - - - - 0x01F04D 07:F03D: D0 27     BNE bra_F066
C - - - - - 0x01F04F 07:F03F: A5 12     LDA ram_game_mode_main
C - - - - - 0x01F051 07:F041: C9 09     CMP #con_GM_09
C - - - - - 0x01F053 07:F043: F0 08     BEQ bra_F04D
C - - - - - 0x01F055 07:F045: C9 0B     CMP #con_GM_0B
C - - - - - 0x01F057 07:F047: F0 04     BEQ bra_F04D
C - - - - - 0x01F059 07:F049: C9 0C     CMP #con_GM_0C
C - - - - - 0x01F05B 07:F04B: D0 0E     BNE bra_F05B
bra_F04D:
C - - - - - 0x01F05D 07:F04D: A9 05     LDA #con_prg_bank + $05
C - - - - - 0x01F05F 07:F04F: 20 AC FF  JSR sub_FFAC_prg_bankswitch
C - - - - - 0x01F062 07:F052: 20 D7 8E  JSR sub_0x014EE7
C - - - - - 0x01F065 07:F055: A5 12     LDA ram_game_mode_main
C - - - - - 0x01F067 07:F057: C9 09     CMP #con_GM_09
C - - - - - 0x01F069 07:F059: F0 0B     BEQ bra_F066
bra_F05B:
C - - - - - 0x01F06B 07:F05B: A5 10     LDA ram_dungeon_level
C - - - - - 0x01F06D 07:F05D: F0 07     BEQ bra_F066    ; if overworld
; if dungeon
C - - - - - 0x01F06F 07:F05F: A5 53     LDA ram_0053
C - - - - - 0x01F071 07:F061: D0 03     BNE bra_F066
bra_F063:
C - - - - - 0x01F073 07:F063: 20 B8 6F  JSR sub_bat_6FB8
bra_F066:
C - - - - - 0x01F076 07:F066: E0 00     CPX #$00
C - - - - - 0x01F078 07:F068: D0 14     BNE bra_F07E
C - - - - - 0x01F07A 07:F06A: A5 10     LDA ram_dungeon_level
C - - - - - 0x01F07C 07:F06C: F0 10     BEQ bra_F07E    ; if overworld
; if dungeon
C - - - - - 0x01F07E 07:F06E: A5 12     LDA ram_game_mode_main
C - - - - - 0x01F080 07:F070: C9 09     CMP #con_GM_09
C - - - - - 0x01F082 07:F072: F0 0A     BEQ bra_F07E
C - - - - - 0x01F084 07:F074: A9 05     LDA #con_prg_bank + $05
C - - - - - 0x01F086 07:F076: 20 AC FF  JSR sub_FFAC_prg_bankswitch
C - - - - - 0x01F089 07:F079: 20 7C 91  JSR sub_0x01518C
C - - - - - 0x01F08C 07:F07C: A2 00     LDX #$00
bra_F07E:
C - - - - - 0x01F08E 07:F07E: 20 E3 F0  JSR sub_F0E3
C - - - - - 0x01F091 07:F081: E0 00     CPX #$00
C - - - - - 0x01F093 07:F083: D0 08     BNE bra_F08D
C - - - - - 0x01F095 07:F085: A9 05     LDA #con_prg_bank + $05
C - - - - - 0x01F097 07:F087: 20 AC FF  JSR sub_FFAC_prg_bankswitch
C - - - - - 0x01F09A 07:F08A: 20 7B 8F  JSR sub_0x014F8B
bra_F08D:
sub_F08D:
sub_0x01F09D:
C - - - - - 0x01F09D 07:F08D: A9 08     LDA #$08
C - - - - - 0x01F09F 07:F08F: A0 F8     LDY #$F8
C - - - - - 0x01F0A1 07:F091: E0 00     CPX #$00
C - - - - - 0x01F0A3 07:F093: F0 04     BEQ bra_F099
C - - - - - 0x01F0A5 07:F095: A9 10     LDA #$10
C - - - - - 0x01F0A7 07:F097: A0 F0     LDY #$F0
bra_F099:
C - - - - - 0x01F0A9 07:F099: 8D 0E 01  STA ram_010E
C - - - - - 0x01F0AC 07:F09C: 8C 0F 01  STY ram_010F
C - - - - - 0x01F0AF 07:F09F: A5 0F     LDA ram_000F
C - - - - - 0x01F0B1 07:F0A1: F0 1D     BEQ bra_F0C0_RTS
C - - - - - 0x01F0B3 07:F0A3: 20 AC F0  JSR sub_F0AC
C - - - - - 0x01F0B6 07:F0A6: 20 AC F0  JSR sub_F0AC
C - - - - - 0x01F0B9 07:F0A9: 20 AC F0  JSR sub_F0AC
sub_F0AC:
C - - - - - 0x01F0BC 07:F0AC: A5 0F     LDA ram_000F
C - - - - - 0x01F0BE 07:F0AE: 4A        LSR
C - - - - - 0x01F0BF 07:F0AF: B0 1A     BCS bra_F0CB
C - - - - - 0x01F0C1 07:F0B1: 4A        LSR
C - - - - - 0x01F0C2 07:F0B2: B0 21     BCS bra_F0D5
C - - - - - 0x01F0C4 07:F0B4: 4A        LSR
C - - - - - 0x01F0C5 07:F0B5: B0 0A     BCS bra_F0C1
C - - - - - 0x01F0C7 07:F0B7: 20 E8 6F  JSR sub_bat_6FE8
C - - - - - 0x01F0CA 07:F0BA: B5 84     LDA ram_pos_Y,X
C - - - - - 0x01F0CC 07:F0BC: E9 00     SBC #$00
C - - - - - 0x01F0CE 07:F0BE: 95 84     STA ram_pos_Y,X
bra_F0C0_RTS:
C - - - - - 0x01F0D0 07:F0C0: 60        RTS
bra_F0C1:
C - - - - - 0x01F0D1 07:F0C1: 20 C1 6F  JSR sub_bat_6FC1
C - - - - - 0x01F0D4 07:F0C4: B5 84     LDA ram_pos_Y,X
C - - - - - 0x01F0D6 07:F0C6: 69 00     ADC #$00
C - - - - - 0x01F0D8 07:F0C8: 95 84     STA ram_pos_Y,X
C - - - - - 0x01F0DA 07:F0CA: 60        RTS
bra_F0CB:
C - - - - - 0x01F0DB 07:F0CB: 20 C1 6F  JSR sub_bat_6FC1
C - - - - - 0x01F0DE 07:F0CE: B5 70     LDA ram_pos_X,X
C - - - - - 0x01F0E0 07:F0D0: 69 00     ADC #$00
C - - - - - 0x01F0E2 07:F0D2: 95 70     STA ram_pos_X,X
C - - - - - 0x01F0E4 07:F0D4: 60        RTS
bra_F0D5:
C - - - - - 0x01F0E5 07:F0D5: 20 E8 6F  JSR sub_bat_6FE8
C - - - - - 0x01F0E8 07:F0D8: B5 70     LDA ram_pos_X,X
C - - - - - 0x01F0EA 07:F0DA: E9 00     SBC #$00
C - - - - - 0x01F0EC 07:F0DC: 95 70     STA ram_pos_X,X
C - - - - - 0x01F0EE 07:F0DE: 60        RTS



tbl_F0DF:
- D 3 - - - 0x01F0EF 07:F0DF: 3D        .byte $3D   ; 00
- D 3 - - - 0x01F0F0 07:F0E0: DD        .byte $DD   ; 01
- D 3 - - - 0x01F0F1 07:F0E1: 00        .byte $00   ; 02
- D 3 - - - 0x01F0F2 07:F0E2: F0        .byte $F0   ; 03



sub_F0E3:
C - - - - - 0x01F0F3 07:F0E3: E0 00     CPX #$00
C - - - - - 0x01F0F5 07:F0E5: D0 0B     BNE bra_F0F2
C - - - - - 0x01F0F7 07:F0E7: A5 53     LDA ram_0053
C - - - - - 0x01F0F9 07:F0E9: F0 03     BEQ bra_F0EE
C - - - - - 0x01F0FB 07:F0EB: 4C 4E F1  JMP loc_F14E
bra_F0EE:
C - - - - - 0x01F0FE 07:F0EE: A5 0E     LDA ram_000E
C - - - - - 0x01F100 07:F0F0: 30 56     BMI bra_F148_RTS
bra_F0F2:
C - - - - - 0x01F102 07:F0F2: BD 94 03  LDA ram_0394,X
C - - - - - 0x01F105 07:F0F5: D0 51     BNE bra_F148_RTS
C - - - - - 0x01F107 07:F0F7: 85 0E     STA ram_000E
C - - - - - 0x01F109 07:F0F9: A5 0F     LDA ram_000F
C - - - - - 0x01F10B 07:F0FB: D0 19     BNE bra_F116
C - - - - - 0x01F10D 07:F0FD: E0 00     CPX #$00
C - - - - - 0x01F10F 07:F0FF: F0 47     BEQ bra_F148_RTS
C - - - - - 0x01F111 07:F101: BD BF 04  LDA ram_04BF,X
C - - - - - 0x01F114 07:F104: 29 10     AND #$10
C - - - - - 0x01F116 07:F106: D0 08     BNE bra_F110
C - - - - - 0x01F118 07:F108: BD F8 03  LDA ram_03F8,X
C - - - - - 0x01F11B 07:F10B: 85 0F     STA ram_000F
C - - - - - 0x01F11D 07:F10D: 4C 29 F1  JMP loc_F129
bra_F110:
- - - - - - 0x01F120 07:F110: 20 D0 F1  JSR sub_F1D0
- - - - - - 0x01F123 07:F113: 4C 98 F1  JMP loc_F198
bra_F116:
C - - - - - 0x01F126 07:F116: 20 FA ED  JSR sub_EDFA
C - - - - - 0x01F129 07:F119: CD 4A 03  CMP ram_min_collision_tile
C - - - - - 0x01F12C 07:F11C: 90 30     BCC bra_F14E
C - - - - - 0x01F12E 07:F11E: E0 00     CPX #$00
C - - - - - 0x01F130 07:F120: F0 11     BEQ bra_F133
bra_F122:
C - - - - - 0x01F132 07:F122: BD BF 04  LDA ram_04BF,X
C - - - - - 0x01F135 07:F125: 29 10     AND #$10
C - - - - - 0x01F137 07:F127: D0 E7     BNE bra_F110
loc_F129:
C D 3 - - - 0x01F139 07:F129: 20 A0 F1  JSR sub_F1A0
C - - - - - 0x01F13C 07:F12C: 85 0F     STA ram_000F
C - - - - - 0x01F13E 07:F12E: A5 0E     LDA ram_000E
C - - - - - 0x01F140 07:F130: D0 E4     BNE bra_F116
C - - - - - 0x01F142 07:F132: 60        RTS
bra_F133:
C - - - - - 0x01F143 07:F133: A5 10     LDA ram_dungeon_level
C - - - - - 0x01F145 07:F135: D0 08     BNE bra_F13F    ; if dungeon
; if overworld
C - - - - - 0x01F147 07:F137: A9 01     LDA #con_prg_bank + $01
C - - - - - 0x01F149 07:F139: 20 AC FF  JSR sub_FFAC_prg_bankswitch
C - - - - - 0x01F14C 07:F13C: 20 23 A2  JSR sub_0x006233
bra_F13F:
C - - - - - 0x01F14F 07:F13F: 20 49 F1  JSR sub_F149
C - - - - - 0x01F152 07:F142: 85 F8     STA ram_btn_press
C - - - - - 0x01F154 07:F144: A5 10     LDA ram_dungeon_level
C - - - - - 0x01F156 07:F146: F0 06     BEQ bra_F14E    ; if overworld
; if dungeon
bra_F148_RTS:
C - - - - - 0x01F158 07:F148: 60        RTS



sub_F149:
loc_0x01F159:
C D 3 - - - 0x01F159 07:F149: A9 00     LDA #$00
C - - - - - 0x01F15B 07:F14B: 85 0F     STA ram_000F
C - - - - - 0x01F15D 07:F14D: 60        RTS



bra_F14E:   ; bzk
loc_F14E:
C D 3 - - - 0x01F15E 07:F14E: E0 00     CPX #$00
C - - - - - 0x01F160 07:F150: D0 46     BNE bra_F198
C - - - - - 0x01F162 07:F152: A5 12     LDA ram_game_mode_main
C - - - - - 0x01F164 07:F154: C9 05     CMP #con_GM_05
C - - - - - 0x01F166 07:F156: D0 3D     BNE bra_F195
C - - - - - 0x01F168 07:F158: A5 64     LDA ram_0064
C - - - - - 0x01F16A 07:F15A: D0 EC     BNE bra_F148_RTS
C - - - - - 0x01F16C 07:F15C: AD 94 03  LDA ram_0394
C - - - - - 0x01F16F 07:F15F: D0 34     BNE bra_F195
sub_0x01F171:
C - - - - - 0x01F171 07:F161: A6 84     LDX ram_pos_Y
C - - - - - 0x01F173 07:F163: AD F8 03  LDA ram_03F8
C - - - - - 0x01F176 07:F166: F0 2D     BEQ bra_F195
C - - - - - 0x01F178 07:F168: 20 13 70  JSR sub_bat_7013
C - - - - - 0x01F17B 07:F16B: B9 C3 6D  LDA tbl_bat_6DC3_direction,Y
C - - - - - 0x01F17E 07:F16E: 29 0C     AND #$0C
C - - - - - 0x01F180 07:F170: D0 02     BNE bra_F174
C - - - - - 0x01F182 07:F172: A6 70     LDX ram_pos_X
bra_F174:
C - - - - - 0x01F184 07:F174: 86 00     STX ram_0000
C - - - - - 0x01F186 07:F176: A5 00     LDA ram_0000
C - - - - - 0x01F188 07:F178: D9 DF F0  CMP tbl_F0DF,Y
C - - - - - 0x01F18B 07:F17B: D0 18     BNE bra_F195
C - - - - - 0x01F18D 07:F17D: B9 C3 6D  LDA tbl_bat_6DC3_direction,Y
C - - - - - 0x01F190 07:F180: 85 98     STA ram_direction
sub_0x01F192:
loc_0x01F192:
C D 3 - - - 0x01F192 07:F182: E6 12     INC ram_game_mode_main
C - - - - - 0x01F194 07:F184: A9 00     LDA #$00
C - - - - - 0x01F196 07:F186: 85 13     STA ram_game_mode_sub
C - - - - - 0x01F198 07:F188: 85 11     STA ram_0011
C - - - - - 0x01F19A 07:F18A: 85 0F     STA ram_000F
C - - - - - 0x01F19C 07:F18C: 85 AC     STA ram_drop_id
C - - - - - 0x01F19E 07:F18E: 85 C0     STA ram_00C0
C - - - - - 0x01F1A0 07:F190: 85 D3     STA ram_00D3
C - - - - - 0x01F1A2 07:F192: 8D F0 04  STA ram_invinc_timer
bra_F195:
C - - - - - 0x01F1A5 07:F195: A2 00     LDX #$00
C - - - - - 0x01F1A7 07:F197: 60        RTS
bra_F198:
loc_F198:
C - - - - - 0x01F1A8 07:F198: 20 B8 6F  JSR sub_bat_6FB8
C - - - - - 0x01F1AB 07:F19B: F0 85     BEQ bra_F122
C - - - - - 0x01F1AD 07:F19D: 95 98     STA ram_direction,X
C - - - - - 0x01F1AF 07:F19F: 60        RTS



sub_F1A0:
C - - - - - 0x01F1B0 07:F1A0: A5 0E     LDA ram_000E
C - - - - - 0x01F1B2 07:F1A2: E6 0E     INC ram_000E
C - - - - - 0x01F1B4 07:F1A4: 20 E2 E5  JSR sub_E5E2_jump_to_pointers_after_JSR
- D 3 - I - 0x01F1B7 07:F1A7: AF F1     .word ofs_028_F1AF_00
- D 3 - I - 0x01F1B9 07:F1A9: C3 F1     .word ofs_028_F1C3_01
- D 3 - I - 0x01F1BB 07:F1AB: D0 F1     .word ofs_028_F1D0_02
- D 3 - I - 0x01F1BD 07:F1AD: DA F1     .word ofs_028_F1DA_03



ofs_028_F1AF_00:
C - - J - - 0x01F1BF 07:F1AF: A0 00     LDY #$00
C - - - - - 0x01F1C1 07:F1B1: B5 18     LDA ram_indiv_random,X
C - - - - - 0x01F1C3 07:F1B3: 0A        ASL
C - - - - - 0x01F1C4 07:F1B4: B0 01     BCS bra_F1B7
C - - - - - 0x01F1C6 07:F1B6: C8        INY
bra_F1B7:
C - - - - - 0x01F1C7 07:F1B7: B5 98     LDA ram_direction,X
C - - - - - 0x01F1C9 07:F1B9: 29 0C     AND #con_dir__UD
C - - - - - 0x01F1CB 07:F1BB: F0 02     BEQ bra_F1BF
C - - - - - 0x01F1CD 07:F1BD: C8        INY
C - - - - - 0x01F1CE 07:F1BE: C8        INY
bra_F1BF:
C - - - - - 0x01F1CF 07:F1BF: B9 C3 6D  LDA tbl_bat_6DC3_direction,Y
C - - - - - 0x01F1D2 07:F1C2: 60        RTS



ofs_028_F1C3_01:
C - - J - - 0x01F1D3 07:F1C3: A5 0F     LDA ram_000F
C - - - - - 0x01F1D5 07:F1C5: 48        PHA
C - - - - - 0x01F1D6 07:F1C6: 29 0A     AND #$0A
C - - - - - 0x01F1D8 07:F1C8: F0 03     BEQ bra_F1CD
C - - - - - 0x01F1DA 07:F1CA: 68        PLA
C - - - - - 0x01F1DB 07:F1CB: 4A        LSR
C - - - - - 0x01F1DC 07:F1CC: 60        RTS
bra_F1CD:
C - - - - - 0x01F1DD 07:F1CD: 68        PLA
C - - - - - 0x01F1DE 07:F1CE: 0A        ASL
C - - - - - 0x01F1DF 07:F1CF: 60        RTS



sub_F1D0:
ofs_028_F1D0_02:
sub_0x01F1E0:
; something to do with mobs that shoot arrows
C - - J - - 0x01F1E0 07:F1D0: B5 98     LDA ram_direction,X
C - - - - - 0x01F1E2 07:F1D2: 20 13 70  JSR sub_bat_7013
C - - - - - 0x01F1E5 07:F1D5: 95 98     STA ram_direction,X
C - - - - - 0x01F1E7 07:F1D7: 85 0F     STA ram_000F
C - - - - - 0x01F1E9 07:F1D9: 60        RTS



ofs_028_F1DA_03:
C - - J - - 0x01F1EA 07:F1DA: A9 00     LDA #$00
C - - - - - 0x01F1EC 07:F1DC: 85 0E     STA ram_000E
C - - - - - 0x01F1EE 07:F1DE: 60        RTS



sub_0x01F1EF:
C - - - - - 0x01F1EF 07:F1DF: BD 94 03  LDA ram_0394,X
C - - - - - 0x01F1F2 07:F1E2: D0 18     BNE bra_F1FC_RTS
C - - - - - 0x01F1F4 07:F1E4: 85 0E     STA ram_000E
bra_F1E6:
C - - - - - 0x01F1F6 07:F1E6: 20 A0 F1  JSR sub_F1A0
C - - - - - 0x01F1F9 07:F1E9: 85 0F     STA ram_000F
C - - - - - 0x01F1FB 07:F1EB: F0 0F     BEQ bra_F1FC_RTS
C - - - - - 0x01F1FD 07:F1ED: 20 FA ED  JSR sub_EDFA
C - - - - - 0x01F200 07:F1F0: CD 4A 03  CMP ram_min_collision_tile
C - - - - - 0x01F203 07:F1F3: B0 F1     BCS bra_F1E6
C - - - - - 0x01F205 07:F1F5: 20 B8 6F  JSR sub_bat_6FB8
C - - - - - 0x01F208 07:F1F8: F0 EC     BEQ bra_F1E6
C - - - - - 0x01F20A 07:F1FA: 95 98     STA ram_direction,X
bra_F1FC_RTS:
C - - - - - 0x01F20C 07:F1FC: 60        RTS



tbl_F1FD_pos_X:
- D 3 - - - 0x01F20D 07:F1FD: 00        .byte $00   ; 00
- D 3 - - - 0x01F20E 07:F1FE: 00        .byte $00   ; 01
- D 3 - - - 0x01F20F 07:F1FF: F0        .byte $F0   ; 02
- D 3 - - - 0x01F210 07:F200: 10        .byte $10   ; 03

tbl_F201_pos_Y:
- D 3 - - - 0x01F211 07:F201: FB        .byte $FB   ; 00
- D 3 - - - 0x01F212 07:F202: 13        .byte $13   ; 01
- D 3 - - - 0x01F213 07:F203: 03        .byte $03   ; 02
- D 3 - - - 0x01F214 07:F204: 03        .byte $03   ; 03



tbl_F205:
- D 3 - - - 0x01F215 07:F205: 02        .byte $02   ; 00
- D 3 - - - 0x01F216 07:F206: 06        .byte $06   ; 01
- D 3 - - - 0x01F217 07:F207: 08        .byte $08   ; 02
- D 3 - - - 0x01F218 07:F208: 0A        .byte $0A   ; 03

tbl_F209:
- D 3 - - - 0x01F219 07:F209: 80        .byte $80   ; 00
- D 3 - - - 0x01F21A 07:F20A: 54        .byte $54   ; 01
- D 3 - - - 0x01F21B 07:F20B: 60        .byte $60   ; 02
- D 3 - - - 0x01F21C 07:F20C: 60        .byte $60   ; 03



tbl_F20D:
- D 3 - - - 0x01F21D 07:F20D: 17        .byte con_map_location + $17   ; 00
- D 3 - - - 0x01F21E 07:F20E: 18        .byte con_map_location + $18   ; 01
- D 3 - - - 0x01F21F 07:F20F: 19        .byte con_map_location + $19   ; 02
- D 3 - - - 0x01F220 07:F210: 27        .byte con_map_location + $27   ; 03
- D 3 - - - 0x01F221 07:F211: 4F        .byte con_map_location + $4F   ; 04
- D 3 - - - 0x01F222 07:F212: 5F        .byte con_map_location + $5F   ; 05



sub_0x01F223:
C - - - - - 0x01F223 07:F213: 20 3C F2  JSR sub_F23C
C - - - - - 0x01F226 07:F216: A9 04     LDA #con_prg_bank + $04
C - - - - - 0x01F228 07:F218: 4C AC FF  JMP loc_FFAC_prg_bankswitch



sub_0x01F22B:
C - - - - - 0x01F22B 07:F21B: 20 31 F2  JSR sub_F231
loc_F21E_back_to_bank_01:
C D 3 - - - 0x01F22E 07:F21E: A9 01     LDA #con_prg_bank + $01
C - - - - - 0x01F230 07:F220: 4C AC FF  JMP loc_FFAC_prg_bankswitch



sub_0x01F233:
C - - - - - 0x01F233 07:F223: 20 3C F2  JSR sub_F23C
C - - - - - 0x01F236 07:F226: 4C 1E F2  JMP loc_F21E_back_to_bank_01



sub_0x01F239:
C - - - - - 0x01F239 07:F229: 20 31 F2  JSR sub_F231
C - - - - - 0x01F23C 07:F22C: A9 04     LDA #con_prg_bank + $04
C - - - - - 0x01F23E 07:F22E: 4C AC FF  JMP loc_FFAC_prg_bankswitch



sub_F231:
sub_0x01F241:
C - - - - - 0x01F241 07:F231: A9 06     LDA #$06
C - - - - - 0x01F243 07:F233: 8D D0 03  STA ram_03D0
C - - - - - 0x01F246 07:F236: D0 04     BNE bra_F23C    ; jmp



sub_0x01F248:
loc_0x01F248:
C D 3 - - - 0x01F248 07:F238: A5 10     LDA ram_dungeon_level
C - - - - - 0x01F24A 07:F23A: D0 C0     BNE bra_F1FC_RTS    ; if dungeon
; if overworld
bra_F23C:
sub_F23C:
sub_0x01F24C:
loc_0x01F24C:
C D 3 - - - 0x01F24C 07:F23C: AD 22 05  LDA ram_0522
C - - - - - 0x01F24F 07:F23F: D0 BB     BNE bra_F1FC_RTS
C - - - - - 0x01F251 07:F241: AA        TAX
C - - - - - 0x01F252 07:F242: A5 12     LDA ram_game_mode_main
C - - - - - 0x01F254 07:F244: C9 06     CMP #con_GM_06
C - - - - - 0x01F256 07:F246: F0 0D     BEQ bra_F255
C - - - - - 0x01F258 07:F248: C9 05     CMP #con_GM_05
C - - - - - 0x01F25A 07:F24A: 90 09     BCC bra_F255
C - - - - - 0x01F25C 07:F24C: AD 94 03  LDA ram_0394
C - - - - - 0x01F25F 07:F24F: F0 14     BEQ bra_F265
C - - - - - 0x01F261 07:F251: 29 07     AND #$07
C - - - - - 0x01F263 07:F253: F0 03     BEQ bra_F258
bra_F255:
C - - - - - 0x01F265 07:F255: 4C E3 F2  JMP loc_F2E3
bra_F258:
C - - - - - 0x01F268 07:F258: A9 00     LDA #$00
C - - - - - 0x01F26A 07:F25A: 8D 94 03  STA ram_0394
C - - - - - 0x01F26D 07:F25D: A4 12     LDY ram_game_mode_main
C - - - - - 0x01F26F 07:F25F: C0 05     CPY #con_GM_05
C - - - - - 0x01F271 07:F261: D0 F2     BNE bra_F255
C - - - - - 0x01F273 07:F263: 85 5A     STA ram_005A
bra_F265:
C - - - - - 0x01F275 07:F265: A5 12     LDA ram_game_mode_main
C - - - - - 0x01F277 07:F267: C9 05     CMP #con_GM_05
C - - - - - 0x01F279 07:F269: D0 EA     BNE bra_F255
C - - - - - 0x01F27B 07:F26B: A5 10     LDA ram_dungeon_level
C - - - - - 0x01F27D 07:F26D: D0 0E     BNE bra_F27D    ; if dungeon
; if overworld
C - - - - - 0x01F27F 07:F26F: A5 EB     LDA ram_map_location
C - - - - - 0x01F281 07:F271: A0 05     LDY #$05
bra_F273_loop:
C - - - - - 0x01F283 07:F273: D9 0D F2  CMP tbl_F20D,Y
C - - - - - 0x01F286 07:F276: F0 05     BEQ bra_F27D
C - - - - - 0x01F288 07:F278: 88        DEY
C - - - - - 0x01F289 07:F279: 10 F8     BPL bra_F273_loop
C - - - - - 0x01F28B 07:F27B: 30 66     BMI bra_F2E3    ; jmp
bra_F27D:
C - - - - - 0x01F28D 07:F27D: A5 53     LDA ram_0053
C - - - - - 0x01F28F 07:F27F: D0 62     BNE bra_F2E3
C - - - - - 0x01F291 07:F281: AD 63 06  LDA ram_item_0663
C - - - - - 0x01F294 07:F284: F0 5D     BEQ bra_F2E3
C - - - - - 0x01F296 07:F286: A5 AC     LDA ram_drop_id
C - - - - - 0x01F298 07:F288: 29 C0     AND #$C0
C - - - - - 0x01F29A 07:F28A: C9 40     CMP #$40
C - - - - - 0x01F29C 07:F28C: F0 55     BEQ bra_F2E3
C - - - - - 0x01F29E 07:F28E: A5 64     LDA ram_0064
C - - - - - 0x01F2A0 07:F290: D0 51     BNE bra_F2E3
C - - - - - 0x01F2A2 07:F292: A2 00     LDX #$00
C - - - - - 0x01F2A4 07:F294: A5 98     LDA ram_direction
C - - - - - 0x01F2A6 07:F296: 85 0F     STA ram_000F
C - - - - - 0x01F2A8 07:F298: 20 FA ED  JSR sub_EDFA
C - - - - - 0x01F2AB 07:F29B: A4 10     LDY ram_dungeon_level
C - - - - - 0x01F2AD 07:F29D: F0 06     BEQ bra_F2A5    ; if overworld
; if dungeon
C - - - - - 0x01F2AF 07:F29F: C9 F4     CMP #$F4
C - - - - - 0x01F2B1 07:F2A1: F0 0A     BEQ bra_F2AD
C - - - - - 0x01F2B3 07:F2A3: D0 3E     BNE bra_F2E3    ; jmp
bra_F2A5:
C - - - - - 0x01F2B5 07:F2A5: C9 8D     CMP #$8D
C - - - - - 0x01F2B7 07:F2A7: 90 3A     BCC bra_F2E3
C - - - - - 0x01F2B9 07:F2A9: C9 99     CMP #$99
C - - - - - 0x01F2BB 07:F2AB: B0 36     BCS bra_F2E3
; 8D-98
bra_F2AD:
C - - - - - 0x01F2BD 07:F2AD: 20 BB FE  JSR sub_FEBB
C - - - - - 0x01F2C0 07:F2B0: F0 31     BEQ bra_F2E3
C - - - - - 0x01F2C2 07:F2B2: AD F8 03  LDA ram_03F8
C - - - - - 0x01F2C5 07:F2B5: F0 2C     BEQ bra_F2E3
C - - - - - 0x01F2C7 07:F2B7: A6 59     LDX ram_0059
C - - - - - 0x01F2C9 07:F2B9: C5 98     CMP ram_direction
C - - - - - 0x01F2CB 07:F2BB: D0 26     BNE bra_F2E3
C - - - - - 0x01F2CD 07:F2BD: 86 64     STX ram_0064
C - - - - - 0x01F2CF 07:F2BF: 95 98     STA ram_direction,X
C - - - - - 0x01F2D1 07:F2C1: 20 13 70  JSR sub_bat_7013
C - - - - - 0x01F2D4 07:F2C4: A5 70     LDA ram_pos_X
C - - - - - 0x01F2D6 07:F2C6: 18        CLC
C - - - - - 0x01F2D7 07:F2C7: 79 FD F1  ADC tbl_F1FD_pos_X,Y
C - - - - - 0x01F2DA 07:F2CA: 95 70     STA ram_pos_X,X
C - - - - - 0x01F2DC 07:F2CC: A5 84     LDA ram_pos_Y
C - - - - - 0x01F2DE 07:F2CE: 18        CLC
C - - - - - 0x01F2DF 07:F2CF: 79 01 F2  ADC tbl_F201_pos_Y,Y
C - - - - - 0x01F2E2 07:F2D2: 95 84     STA ram_pos_Y,X
C - - - - - 0x01F2E4 07:F2D4: A9 5F     LDA #con_obj_id_5F
C - - - - - 0x01F2E6 07:F2D6: 9D 4F 03  STA ram_obj_id,X
C - - - - - 0x01F2E9 07:F2D9: 20 E4 EE  JSR sub_EEE4
C - - - - - 0x01F2EC 07:F2DC: 9D F0 04  STA ram_invinc_timer,X
C - - - - - 0x01F2EF 07:F2DF: A9 01     LDA #$01
C - - - - - 0x01F2F1 07:F2E1: 95 AC     STA ram_drop_id,X
bra_F2E3:
loc_F2E3:
C D 3 - - - 0x01F2F3 07:F2E3: A2 00     LDX #$00
C - - - - - 0x01F2F5 07:F2E5: A5 12     LDA ram_game_mode_main
C - - - - - 0x01F2F7 07:F2E7: C9 05     CMP #con_GM_05
C - - - - - 0x01F2F9 07:F2E9: D0 12     BNE bra_F2FD
C - - - - - 0x01F2FB 07:F2EB: AD 9E 04  LDA ram_collision_tile
C - - - - - 0x01F2FE 07:F2EE: 48        PHA
C - - - - - 0x01F2FF 07:F2EF: A9 05     LDA #con_prg_bank + $05
C - - - - - 0x01F301 07:F2F1: 20 AC FF  JSR sub_FFAC_prg_bankswitch
C - - - - - 0x01F304 07:F2F4: 20 F4 B3  JSR sub_0x017404
C - - - - - 0x01F307 07:F2F7: A2 00     LDX #$00
C - - - - - 0x01F309 07:F2F9: 68        PLA
C - - - - - 0x01F30A 07:F2FA: 8D 9E 04  STA ram_collision_tile
bra_F2FD:
C - - - - - 0x01F30D 07:F2FD: 20 3C FA  JSR sub_FA3C
C - - - - - 0x01F310 07:F300: A5 12     LDA ram_game_mode_main
C - - - - - 0x01F312 07:F302: C9 09     CMP #con_GM_09
C - - - - - 0x01F314 07:F304: F0 04     BEQ bra_F30A
C - - - - - 0x01F316 07:F306: A5 10     LDA ram_dungeon_level
C - - - - - 0x01F318 07:F308: D0 04     BNE bra_F30E    ; if dungeon
; if overworld
bra_F30A:
C - - - - - 0x01F31A 07:F30A: E6 01     INC ram_0001
C - - - - - 0x01F31C 07:F30C: E6 01     INC ram_0001
bra_F30E:
C - - - - - 0x01F31E 07:F30E: A5 AC     LDA ram_drop_id
C - - - - - 0x01F320 07:F310: 29 30     AND #$30
C - - - - - 0x01F322 07:F312: C9 10     CMP #$10
C - - - - - 0x01F324 07:F314: F0 04     BEQ bra_F31A
C - - - - - 0x01F326 07:F316: C9 20     CMP #$20
C - - - - - 0x01F328 07:F318: D0 05     BNE bra_F31F
bra_F31A:
C - - - - - 0x01F32A 07:F31A: 98        TYA
C - - - - - 0x01F32B 07:F31B: 18        CLC
C - - - - - 0x01F32C 07:F31C: 69 04     ADC #$04
C - - - - - 0x01F32E 07:F31E: A8        TAY
bra_F31F:
C - - - - - 0x01F32F 07:F31F: 98        TYA
C - - - - - 0x01F330 07:F320: A0 00     LDY #$00
C - - - - - 0x01F332 07:F322: 20 E7 77  JSR sub_bat_77E7
C - - - - - 0x01F335 07:F325: AD 76 06  LDA ram_item_mag_shield
C - - - - - 0x01F338 07:F328: D0 16     BNE bra_F340
C - - - - - 0x01F33A 07:F32A: A5 98     LDA ram_direction
C - - - - - 0x01F33C 07:F32C: C9 04     CMP #con_dir_Down
C - - - - - 0x01F33E 07:F32E: D0 3A     BNE bra_F36A_RTS
C - - - - - 0x01F340 07:F330: A2 01     LDX #$01
C - - - - - 0x01F342 07:F332: BD 48 02  LDA ram_spr_Y + $48,X
C - - - - - 0x01F345 07:F335: C9 0B     CMP #$0B
C - - - - - 0x01F347 07:F337: B0 31     BCS bra_F36A_RTS
C - - - - - 0x01F349 07:F339: 48        PHA
C - - - - - 0x01F34A 07:F33A: 18        CLC
C - - - - - 0x01F34B 07:F33B: 69 50     ADC #$50
C - - - - - 0x01F34D 07:F33D: 4C 5A F3  JMP loc_F35A
bra_F340:
C - - - - - 0x01F350 07:F340: A2 01     LDX #$01
C - - - - - 0x01F352 07:F342: A5 98     LDA ram_direction
C - - - - - 0x01F354 07:F344: 4A        LSR
C - - - - - 0x01F355 07:F345: 90 02     BCC bra_F349
C - - - - - 0x01F357 07:F347: A2 05     LDX #$05
bra_F349:
C - - - - - 0x01F359 07:F349: A0 04     LDY #$04
C - - - - - 0x01F35B 07:F34B: BD 48 02  LDA ram_spr_Y + $48,X
C - - - - - 0x01F35E 07:F34E: 48        PHA
bra_F34F_loop:
C - - - - - 0x01F35F 07:F34F: 88        DEY
C - - - - - 0x01F360 07:F350: 30 0B     BMI bra_F35D
C - - - - - 0x01F362 07:F352: D9 05 F2  CMP tbl_F205,Y
C - - - - - 0x01F365 07:F355: D0 F8     BNE bra_F34F_loop
C - - - - - 0x01F367 07:F357: B9 09 F2  LDA tbl_F209,Y
loc_F35A:
C D 3 - - - 0x01F36A 07:F35A: 9D 48 02  STA ram_spr_Y + $48,X
bra_F35D:
C - - - - - 0x01F36D 07:F35D: 68        PLA
C - - - - - 0x01F36E 07:F35E: C9 0A     CMP #$0A
C - - - - - 0x01F370 07:F360: D0 08     BNE bra_F36A_RTS
C - - - - - 0x01F372 07:F362: BD 49 02  LDA ram_spr_T + $48,X
C - - - - - 0x01F375 07:F365: 29 0F     AND #$0F
C - - - - - 0x01F377 07:F367: 9D 49 02  STA ram_spr_T + $48,X
bra_F36A_RTS:
C - - - - - 0x01F37A 07:F36A: 60        RTS



tbl_F36B:
- D 3 - - - 0x01F37B 07:F36B: 40        .byte $40   ; 00
- D 3 - - - 0x01F37C 07:F36C: C0        .byte $C0   ; 01
- D 3 - - - 0x01F37D 07:F36D: 80        .byte $80   ; 02
- D 3 - - - 0x01F37E 07:F36E: 00        .byte $00   ; 03



sub_F36F:
C - - - - - 0x01F37F 07:F36F: B5 AC     LDA ram_drop_id,X
C - - - - - 0x01F381 07:F371: F0 F7     BEQ bra_F36A_RTS
C - - - - - 0x01F383 07:F373: 4A        LSR
C - - - - - 0x01F384 07:F374: 90 03     BCC bra_F379
C - - - - - 0x01F386 07:F376: 4C 1D F4  JMP loc_F41D
bra_F379:
C - - - - - 0x01F389 07:F379: BD 94 03  LDA ram_0394,X
C - - - - - 0x01F38C 07:F37C: D0 00     BNE bra_F37E    ; bzk optimize, useless branch
bra_F37E:
C - - - - - 0x01F38E 07:F37E: B5 98     LDA ram_direction,X
C - - - - - 0x01F390 07:F380: 20 27 70  JSR sub_bat_7027
C - - - - - 0x01F393 07:F383: A5 0F     LDA ram_000F
C - - - - - 0x01F395 07:F385: F0 4D     BEQ bra_F3D4
C - - - - - 0x01F397 07:F387: BD 94 03  LDA ram_0394,X
C - - - - - 0x01F39A 07:F38A: 29 07     AND #$07
C - - - - - 0x01F39C 07:F38C: D0 03     BNE bra_F391
C - - - - - 0x01F39E 07:F38E: 9D 94 03  STA ram_0394,X
bra_F391:
loc_0x01F3A1:
C D 3 - - - 0x01F3A1 07:F391: 20 93 FA  JSR sub_FA93
C - - - - - 0x01F3A4 07:F394: B5 98     LDA ram_direction,X
C - - - - - 0x01F3A6 07:F396: 48        PHA
C - - - - - 0x01F3A7 07:F397: 29 03     AND #con_dir__LR
C - - - - - 0x01F3A9 07:F399: F0 07     BEQ bra_F3A2
C - - - - - 0x01F3AB 07:F39B: A5 01     LDA ram_0001
C - - - - - 0x01F3AD 07:F39D: 18        CLC
C - - - - - 0x01F3AE 07:F39E: 69 03     ADC #$03
C - - - - - 0x01F3B0 07:F3A0: 85 01     STA ram_0001
bra_F3A2:
C - - - - - 0x01F3B2 07:F3A2: 68        PLA
C - - - - - 0x01F3B3 07:F3A3: 20 13 70  JSR sub_bat_7013
C - - - - - 0x01F3B6 07:F3A6: A5 15     LDA ram_frame_cnt
C - - - - - 0x01F3B8 07:F3A8: 29 03     AND #$03
C - - - - - 0x01F3BA 07:F3AA: 19 0D F5  ORA tbl_F50D,Y
C - - - - - 0x01F3BD 07:F3AD: 20 88 79  JSR sub_bat_7988
C - - - - - 0x01F3C0 07:F3B0: B9 09 F5  LDA tbl_F509,Y
C - - - - - 0x01F3C3 07:F3B3: 85 0C     STA ram_000C
C - - - - - 0x01F3C5 07:F3B5: C0 02     CPY #$02
C - - - - - 0x01F3C7 07:F3B7: D0 02     BNE bra_F3BB
C - - - - - 0x01F3C9 07:F3B9: E6 0F     INC ram_000F
bra_F3BB:
C - - - - - 0x01F3CB 07:F3BB: A0 22     LDY #$22
C - - - - - 0x01F3CD 07:F3BD: E0 0D     CPX #$0D
C - - - - - 0x01F3CF 07:F3BF: B0 09     BCS bra_F3CA
C - - - - - 0x01F3D1 07:F3C1: BD 4F 03  LDA ram_obj_id,X
C - - - - - 0x01F3D4 07:F3C4: C9 57     CMP #con_obj_id_57
C - - - - - 0x01F3D6 07:F3C6: F0 09     BEQ bra_F3D1
C - - - - - 0x01F3D8 07:F3C8: D0 05     BNE bra_F3CF    ; jmp
bra_F3CA:
C - - - - - 0x01F3DA 07:F3CA: B5 AC     LDA ram_drop_id,X
C - - - - - 0x01F3DC 07:F3CC: 0A        ASL
C - - - - - 0x01F3DD 07:F3CD: 90 02     BCC bra_F3D1
bra_F3CF:
C - - - - - 0x01F3DF 07:F3CF: A0 23     LDY #$23
bra_F3D1:
C - - - - - 0x01F3E1 07:F3D1: 4C 15 79  JMP loc_bat_7915
bra_F3D4:
sub_0x01F3E4:
C - - - - - 0x01F3E4 07:F3D4: B5 AC     LDA ram_drop_id,X
C - - - - - 0x01F3E6 07:F3D6: 0A        ASL
C - - - - - 0x01F3E7 07:F3D7: 90 3D     BCC bra_F416
C - - - - - 0x01F3E9 07:F3D9: AD 61 06  LDA ram_item_0661
C - - - - - 0x01F3EC 07:F3DC: F0 35     BEQ bra_F413
- - - - - - 0x01F3EE 07:F3DE: A5 AC     LDA ram_drop_id
- - - - - - 0x01F3F0 07:F3E0: 48        PHA
- - - - - - 0x01F3F1 07:F3E1: AD 13 05  LDA ram_candle_usage_flag
- - - - - - 0x01F3F4 07:F3E4: 48        PHA
- - - - - - 0x01F3F5 07:F3E5: A9 00     LDA #$00
- - - - - - 0x01F3F7 07:F3E7: 8D 13 05  STA ram_candle_usage_flag
- - - - - - 0x01F3FA 07:F3EA: 20 4F 71  JSR sub_bat_714F_candle
- - - - - - 0x01F3FD 07:F3ED: 68        PLA
- - - - - - 0x01F3FE 07:F3EE: 8D 13 05  STA ram_candle_usage_flag
- - - - - - 0x01F401 07:F3F1: 68        PLA
- - - - - - 0x01F402 07:F3F2: 85 AC     STA ram_drop_id
- - - - - - 0x01F404 07:F3F4: B5 AC     LDA ram_drop_id,X
- - - - - - 0x01F406 07:F3F6: C9 21     CMP #$21
- - - - - - 0x01F408 07:F3F8: D0 17     BNE bra_F411
- - - - - - 0x01F40A 07:F3FA: F6 AC     INC ram_drop_id,X
- - - - - - 0x01F40C 07:F3FC: A0 0E     LDY #$0E
- - - - - - 0x01F40E 07:F3FE: B9 70 00  LDA ram_pos_X,Y
- - - - - - 0x01F411 07:F401: 95 70     STA ram_pos_X,X
- - - - - - 0x01F413 07:F403: B9 84 00  LDA ram_pos_Y,Y
- - - - - - 0x01F416 07:F406: 95 84     STA ram_pos_Y,X
- - - - - - 0x01F418 07:F408: B9 98 00  LDA ram_direction,Y
- - - - - - 0x01F41B 07:F40B: 95 98     STA ram_direction,X
- - - - - - 0x01F41D 07:F40D: A9 4F     LDA #$4F
- - - - - - 0x01F41F 07:F40F: 95 28     STA ram_obj_timer,X
loc_F411:
bra_F411:
C D 3 - - - 0x01F421 07:F411: A2 0E     LDX #$0E
bra_F413:
C - - - - - 0x01F423 07:F413: 4C 55 F8  JMP loc_F855
bra_F416:
C - - - - - 0x01F426 07:F416: F6 AC     INC ram_drop_id,X
C - - - - - 0x01F428 07:F418: A9 FE     LDA #$FE
C - - - - - 0x01F42A 07:F41A: 95 98     STA ram_direction,X ; ???
C - - - - - 0x01F42C 07:F41C: 60        RTS



loc_F41D:
C D 3 - - - 0x01F42D 07:F41D: B5 98     LDA ram_direction,X
C - - - - - 0x01F42F 07:F41F: 85 02     STA ram_0002
C - - - - - 0x01F431 07:F421: 85 03     STA ram_0003
C - - - - - 0x01F433 07:F423: A9 00     LDA #$00
C - - - - - 0x01F435 07:F425: 85 0F     STA ram_000F
C - - - - - 0x01F437 07:F427: A0 03     LDY #$03
bra_F429_loop:
C - - - - - 0x01F439 07:F429: 98        TYA
C - - - - - 0x01F43A 07:F42A: 48        PHA
C - - - - - 0x01F43B 07:F42B: A5 02     LDA ram_0002
C - - - - - 0x01F43D 07:F42D: 48        PHA
C - - - - - 0x01F43E 07:F42E: A5 03     LDA ram_0003
C - - - - - 0x01F440 07:F430: 48        PHA
C - - - - - 0x01F441 07:F431: A5 15     LDA ram_frame_cnt
C - - - - - 0x01F443 07:F433: 29 03     AND #$03
C - - - - - 0x01F445 07:F435: 19 6B F3  ORA tbl_F36B,Y
C - - - - - 0x01F448 07:F438: 20 88 79  JSR sub_bat_7988
C - - - - - 0x01F44B 07:F43B: B5 70     LDA ram_pos_X,X
C - - - - - 0x01F44D 07:F43D: 18        CLC
C - - - - - 0x01F44E 07:F43E: 65 02     ADC ram_0002
C - - - - - 0x01F450 07:F440: 85 00     STA ram_0000
C - - - - - 0x01F452 07:F442: D5 70     CMP ram_pos_X,X
C - - - - - 0x01F454 07:F444: 90 0A     BCC bra_F450
C - - - - - 0x01F456 07:F446: C9 FC     CMP #$FC
C - - - - - 0x01F458 07:F448: B0 2B     BCS bra_F475
C - - - - - 0x01F45A 07:F44A: 38        SEC
C - - - - - 0x01F45B 07:F44B: F5 70     SBC ram_pos_X,X
C - - - - - 0x01F45D 07:F44D: 4C 55 F4  JMP loc_F455
bra_F450:
C - - - - - 0x01F460 07:F450: B5 70     LDA ram_pos_X,X
C - - - - - 0x01F462 07:F452: 38        SEC
C - - - - - 0x01F463 07:F453: E5 00     SBC ram_0000
loc_F455:
C D 3 - - - 0x01F465 07:F455: C9 20     CMP #$20
C - - - - - 0x01F467 07:F457: B0 1C     BCS bra_F475
C - - - - - 0x01F469 07:F459: B5 84     LDA ram_pos_Y,X
C - - - - - 0x01F46B 07:F45B: 18        CLC
C - - - - - 0x01F46C 07:F45C: 65 03     ADC ram_0003
C - - - - - 0x01F46E 07:F45E: 85 01     STA ram_0001
C - - - - - 0x01F470 07:F460: A4 10     LDY ram_dungeon_level
C - - - - - 0x01F472 07:F462: F0 08     BEQ bra_F46C    ; if overworld
; if dungeon
C - - - - - 0x01F474 07:F464: C9 3E     CMP #$3E
C - - - - - 0x01F476 07:F466: 90 0D     BCC bra_F475
C - - - - - 0x01F478 07:F468: C9 E8     CMP #$E8
C - - - - - 0x01F47A 07:F46A: B0 09     BCS bra_F475
; 3E-E7
bra_F46C:
C - - - - - 0x01F47C 07:F46C: A9 02     LDA #$02
C - - - - - 0x01F47E 07:F46E: 85 0C     STA ram_000C
C - - - - - 0x01F480 07:F470: A0 23     LDY #$23
C - - - - - 0x01F482 07:F472: 20 15 79  JSR sub_bat_7915
bra_F475:
C - - - - - 0x01F485 07:F475: 68        PLA
C - - - - - 0x01F486 07:F476: 85 03     STA ram_0003
C - - - - - 0x01F488 07:F478: 68        PLA
C - - - - - 0x01F489 07:F479: 85 02     STA ram_0002
C - - - - - 0x01F48B 07:F47B: 68        PLA
C - - - - - 0x01F48C 07:F47C: 48        PHA
C - - - - - 0x01F48D 07:F47D: A8        TAY
C - - - - - 0x01F48E 07:F47E: C0 01     CPY #$01
C - - - - - 0x01F490 07:F480: D0 02     BNE bra_F484
C - - - - - 0x01F492 07:F482: A0 03     LDY #$03
bra_F484:
C - - - - - 0x01F494 07:F484: B9 00 00  LDA ram_0000,Y
C - - - - - 0x01F497 07:F487: 49 FF     EOR #$FF
C - - - - - 0x01F499 07:F489: 18        CLC
C - - - - - 0x01F49A 07:F48A: 69 01     ADC #$01
C - - - - - 0x01F49C 07:F48C: 99 00 00  STA ram_0000,Y
C - - - - - 0x01F49F 07:F48F: 68        PLA
C - - - - - 0x01F4A0 07:F490: A8        TAY
C - - - - - 0x01F4A1 07:F491: 88        DEY
C - - - - - 0x01F4A2 07:F492: 10 95     BPL bra_F429_loop
C - - - - - 0x01F4A4 07:F494: D6 98     DEC ram_direction,X ; ???
C - - - - - 0x01F4A6 07:F496: B5 98     LDA ram_direction,X
C - - - - - 0x01F4A8 07:F498: C9 E8     CMP #$E8
C - - - - - 0x01F4AA 07:F49A: D0 03     BNE bra_F49F_RTS
C - - - - - 0x01F4AC 07:F49C: 4C 11 F4  JMP loc_F411
bra_F49F_RTS:
C - - - - - 0x01F4AF 07:F49F: 60        RTS



sub_F4A0:
C - - - - - 0x01F4B0 07:F4A0: B5 AC     LDA ram_drop_id,X
C - - - - - 0x01F4B2 07:F4A2: F0 FB     BEQ bra_F49F_RTS
C - - - - - 0x01F4B4 07:F4A4: 0A        ASL
C - - - - - 0x01F4B5 07:F4A5: 90 72     BCC bra_F519
C - - - - - 0x01F4B7 07:F4A7: B5 28     LDA ram_obj_timer,X
C - - - - - 0x01F4B9 07:F4A9: D0 0E     BNE bra_F4B9
- - - - - - 0x01F4BB 07:F4AB: F6 AC     INC ram_drop_id,X
- - - - - - 0x01F4BD 07:F4AD: B5 AC     LDA ram_drop_id,X
- - - - - - 0x01F4BF 07:F4AF: 29 0F     AND #$0F
- - - - - - 0x01F4C1 07:F4B1: C9 03     CMP #$03
- - - - - - 0x01F4C3 07:F4B3: F0 2D     BEQ bra_F4E2
- - - - - - 0x01F4C5 07:F4B5: A9 FF     LDA #$FF
- - - - - - 0x01F4C7 07:F4B7: 95 28     STA ram_obj_timer,X
bra_F4B9:
C - - - - - 0x01F4C9 07:F4B9: AD 5F 03  LDA ram_035F
C - - - - - 0x01F4CC 07:F4BC: C9 03     CMP #$03
C - - - - - 0x01F4CE 07:F4BE: 90 18     BCC bra_F4D8
C - - - - - 0x01F4D0 07:F4C0: C9 0B     CMP #$0B
C - - - - - 0x01F4D2 07:F4C2: 90 0C     BCC bra_F4D0
C - - - - - 0x01F4D4 07:F4C4: C9 12     CMP #$12
C - - - - - 0x01F4D6 07:F4C6: F0 08     BEQ bra_F4D0
C - - - - - 0x01F4D8 07:F4C8: C9 1B     CMP #$1B
C - - - - - 0x01F4DA 07:F4CA: F0 04     BEQ bra_F4D0
C - - - - - 0x01F4DC 07:F4CC: C9 1C     CMP #$1C
C - - - - - 0x01F4DE 07:F4CE: D0 08     BNE bra_F4D8
bra_F4D0:
C - - - - - 0x01F4E0 07:F4D0: B5 70     LDA ram_pos_X,X
C - - - - - 0x01F4E2 07:F4D2: 85 61     STA ram_0061
C - - - - - 0x01F4E4 07:F4D4: B5 84     LDA ram_pos_Y,X
C - - - - - 0x01F4E6 07:F4D6: 85 62     STA ram_0062
bra_F4D8:
C - - - - - 0x01F4E8 07:F4D8: 20 93 FA  JSR sub_FA93
C - - - - - 0x01F4EB 07:F4DB: A9 02     LDA #$02
C - - - - - 0x01F4ED 07:F4DD: A0 06     LDY #$06
C - - - - - 0x01F4EF 07:F4DF: 4C 0C 79  JMP loc_bat_790C
bra_F4E2:
- - - - - - 0x01F4F2 07:F4E2: 4C 55 F8  JMP loc_F855



tbl_F4E5:
- D 3 - - - 0x01F4F5 07:F4E5: 00        .byte $00   ; 00
- D 3 - - - 0x01F4F6 07:F4E6: 01        .byte $01   ; 01
- D 3 - - - 0x01F4F7 07:F4E7: 02        .byte $02   ; 02
- D 3 - - - 0x01F4F8 07:F4E8: 01        .byte $01   ; 03
- D 3 - - - 0x01F4F9 07:F4E9: 00        .byte $00   ; 04
- D 3 - - - 0x01F4FA 07:F4EA: 01        .byte $01   ; 05
- D 3 - - - 0x01F4FB 07:F4EB: 02        .byte $02   ; 06
- D 3 - - - 0x01F4FC 07:F4EC: 01        .byte $01   ; 07
- D 3 - - - 0x01F4FD 07:F4ED: 03        .byte $03   ; 08

tbl_F4EE:
- D 3 - - - 0x01F4FE 07:F4EE: 00        .byte $00   ; 00
- D 3 - - - 0x01F4FF 07:F4EF: 00        .byte $00   ; 01
- D 3 - - - 0x01F500 07:F4F0: 00        .byte $00   ; 02
- D 3 - - - 0x01F501 07:F4F1: 40        .byte $40   ; 03
- D 3 - - - 0x01F502 07:F4F2: 40        .byte $40   ; 04
- D 3 - - - 0x01F503 07:F4F3: C0        .byte $C0   ; 05
- D 3 - - - 0x01F504 07:F4F4: 80        .byte $80   ; 06
- D 3 - - - 0x01F505 07:F4F5: 80        .byte $80   ; 07
- D 3 - - - 0x01F506 07:F4F6: 01        .byte $01   ; 08



tbl_F4F7:
- D 3 - - - 0x01F507 07:F4F7: 00        .byte $00   ; 00
- D 3 - - - 0x01F508 07:F4F8: 20        .byte $20   ; 01
- D 3 - - - 0x01F509 07:F4F9: 36        .byte $36   ; 02
- D 3 - - - 0x01F50A 07:F4FA: 4C        .byte $4C   ; 03
- D 3 - - - 0x01F50B 07:F4FB: 60        .byte $60   ; 04
- - - - - - 0x01F50C 07:F4FC: 68        .byte $68   ; 05
- - - - - - 0x01F50D 07:F4FD: 70        .byte $70   ; 06
- - - - - - 0x01F50E 07:F4FE: 78        .byte $78   ; 07
- D 3 - - - 0x01F50F 07:F4FF: 80        .byte $80   ; 08

tbl_F500:
- D 3 - - - 0x01F510 07:F500: 80        .byte $80   ; 00
- D 3 - - - 0x01F511 07:F501: 78        .byte $78   ; 01
- D 3 - - - 0x01F512 07:F502: 70        .byte $70   ; 02
- D 3 - - - 0x01F513 07:F503: 68        .byte $68   ; 03
- D 3 - - - 0x01F514 07:F504: 60        .byte $60   ; 04
- - - - - - 0x01F515 07:F505: 4C        .byte $4C   ; 05
- - - - - - 0x01F516 07:F506: 36        .byte $36   ; 06
- - - - - - 0x01F517 07:F507: 20        .byte $20   ; 07
- D 3 - - - 0x01F518 07:F508: 00        .byte $00   ; 08



tbl_F509:
- D 3 - - - 0x01F519 07:F509: 00        .byte $00   ; 00
- D 3 - - - 0x01F51A 07:F50A: 00        .byte $00   ; 01
- D 3 - - - 0x01F51B 07:F50B: 01        .byte $01   ; 02
- D 3 - - - 0x01F51C 07:F50C: 01        .byte $01   ; 03
tbl_F50D:
- D 3 - - - 0x01F51D 07:F50D: 00        .byte $00   ; 00
- D 3 - - - 0x01F51E 07:F50E: 80        .byte $80   ; 01
- D 3 - - - 0x01F51F 07:F50F: 00        .byte $00   ; 02
- D 3 - - - 0x01F520 07:F510: 00        .byte $00   ; 03



tbl_F511_pos_X:
- D 3 - - - 0x01F521 07:F511: FC        .byte $FC   ; 00
- D 3 - - - 0x01F522 07:F512: FC        .byte $FC   ; 01
- D 3 - - - 0x01F523 07:F513: 00        .byte $00   ; 02
- D 3 - - - 0x01F524 07:F514: 00        .byte $00   ; 03

tbl_F515_pos_Y:
- D 3 - - - 0x01F525 07:F515: 00        .byte $00   ; 00
- D 3 - - - 0x01F526 07:F516: 00        .byte $00   ; 01
- D 3 - - - 0x01F527 07:F517: 03        .byte $03   ; 02
- D 3 - - - 0x01F528 07:F518: 03        .byte $03   ; 03



bra_F519:   ; bzk
loc_F519:
ofs_004_F519_5C:
sub_0x01F529:
C D 3 - - - 0x01F529 07:F519: B5 AC     LDA ram_drop_id,X
C - - - - - 0x01F52B 07:F51B: F0 82     BEQ bra_F49F_RTS
C - - - - - 0x01F52D 07:F51D: A9 00     LDA #$00
C - - - - - 0x01F52F 07:F51F: 85 00     STA ram_0000
C - - - - - 0x01F531 07:F521: B5 AC     LDA ram_drop_id,X
C - - - - - 0x01F533 07:F523: 29 F0     AND #$F0
C - - - - - 0x01F535 07:F525: C9 10     CMP #$10
C - - - - - 0x01F537 07:F527: F0 03     BEQ bra_F52C
C - - - - - 0x01F539 07:F529: 4C B6 F5  JMP loc_F5B6
bra_F52C:
C - - - - - 0x01F53C 07:F52C: A9 00     LDA #$00
C - - - - - 0x01F53E 07:F52E: 85 0E     STA ram_000E
C - - - - - 0x01F540 07:F530: B5 98     LDA ram_direction,X
C - - - - - 0x01F542 07:F532: 29 03     AND #con_dir__LR
C - - - - - 0x01F544 07:F534: F0 05     BEQ bra_F53B
C - - - - - 0x01F546 07:F536: 20 27 70  JSR sub_bat_7027
C - - - - - 0x01F549 07:F539: E6 0E     INC ram_000E
bra_F53B:
C - - - - - 0x01F54B 07:F53B: A5 0E     LDA ram_000E
C - - - - - 0x01F54D 07:F53D: 0A        ASL
C - - - - - 0x01F54E 07:F53E: B0 35     BCS bra_F575
C - - - - - 0x01F550 07:F540: B5 98     LDA ram_direction,X
C - - - - - 0x01F552 07:F542: 29 0C     AND #con_dir__UD
C - - - - - 0x01F554 07:F544: F0 03     BEQ bra_F549
C - - - - - 0x01F556 07:F546: 20 27 70  JSR sub_bat_7027
bra_F549:
C - - - - - 0x01F559 07:F549: A5 0E     LDA ram_000E
C - - - - - 0x01F55B 07:F54B: 0A        ASL
C - - - - - 0x01F55C 07:F54C: B0 27     BCS bra_F575
C - - - - - 0x01F55E 07:F54E: E0 0D     CPX #$0D
C - - - - - 0x01F560 07:F550: B0 07     BCS bra_F559
C - - - - - 0x01F562 07:F552: BD 4F 03  LDA ram_obj_id,X
C - - - - - 0x01F565 07:F555: C9 5B     CMP #con_obj_id_5B
C - - - - - 0x01F567 07:F557: F0 22     BEQ bra_F57B
bra_F559:
C - - - - - 0x01F569 07:F559: E0 12     CPX #$12
C - - - - - 0x01F56B 07:F55B: F0 1E     BEQ bra_F57B
C - - - - - 0x01F56D 07:F55D: BD 94 03  LDA ram_0394,X
C - - - - - 0x01F570 07:F560: 10 05     BPL bra_F567
C - - - - - 0x01F572 07:F562: 49 FF     EOR #$FF
C - - - - - 0x01F574 07:F564: 18        CLC
C - - - - - 0x01F575 07:F565: 69 01     ADC #$01
bra_F567:
C - - - - - 0x01F577 07:F567: DD 80 03  CMP ram_0380,X
C - - - - - 0x01F57A 07:F56A: 90 0C     BCC bra_F578
C - - - - - 0x01F57C 07:F56C: A9 10     LDA #$10
C - - - - - 0x01F57E 07:F56E: 9D 80 03  STA ram_0380,X
C - - - - - 0x01F581 07:F571: A9 20     LDA #$20
C - - - - - 0x01F583 07:F573: 95 AC     STA ram_drop_id,X
bra_F575:
C - - - - - 0x01F585 07:F575: 4C E1 F5  JMP loc_F5E1
bra_F578:
C - - - - - 0x01F588 07:F578: 4C B8 F6  JMP loc_F6B8
bra_F57B:
loc_0x01F58B:
C D 3 - - - 0x01F58B 07:F57B: A9 00     LDA #$00
C - - - - - 0x01F58D 07:F57D: 85 0F     STA ram_000F
C - - - - - 0x01F58F 07:F57F: B5 98     LDA ram_direction,X
C - - - - - 0x01F591 07:F581: C9 02     CMP #con_dir_Left
C - - - - - 0x01F593 07:F583: D0 02     BNE bra_F587
C - - - - - 0x01F595 07:F585: E6 0F     INC ram_000F
bra_F587:
C - - - - - 0x01F597 07:F587: 20 13 70  JSR sub_bat_7013
C - - - - - 0x01F59A 07:F58A: B9 09 F5  LDA tbl_F509,Y
C - - - - - 0x01F59D 07:F58D: 85 0C     STA ram_000C
C - - - - - 0x01F59F 07:F58F: B9 0D F5  LDA tbl_F50D,Y
loc_F592:
C D 3 - - - 0x01F5A2 07:F592: 85 04     STA ram_0004
C - - - - - 0x01F5A4 07:F594: E0 0D     CPX #$0D
C - - - - - 0x01F5A6 07:F596: B0 0E     BCS bra_F5A6
C - - - - - 0x01F5A8 07:F598: BD 4F 03  LDA ram_obj_id,X
C - - - - - 0x01F5AB 07:F59B: C9 5B     CMP #con_obj_id_5B
C - - - - - 0x01F5AD 07:F59D: D0 07     BNE bra_F5A6
C - - - - - 0x01F5AF 07:F59F: A5 04     LDA ram_0004
C - - - - - 0x01F5B1 07:F5A1: 18        CLC
C - - - - - 0x01F5B2 07:F5A2: 69 02     ADC #$02
C - - - - - 0x01F5B4 07:F5A4: D0 07     BNE bra_F5AD
bra_F5A6:
C - - - - - 0x01F5B6 07:F5A6: 18        CLC
C - - - - - 0x01F5B7 07:F5A7: 6D 59 06  ADC ram_item_arrow
C - - - - - 0x01F5BA 07:F5AA: 38        SEC
C - - - - - 0x01F5BB 07:F5AB: E9 01     SBC #$01
bra_F5AD:
C - - - - - 0x01F5BD 07:F5AD: 85 04     STA ram_0004
C - - - - - 0x01F5BF 07:F5AF: A5 04     LDA ram_0004
C - - - - - 0x01F5C1 07:F5B1: 85 05     STA ram_0005
C - - - - - 0x01F5C3 07:F5B3: 4C 14 F7  JMP loc_F714



loc_F5B6:
C D 3 - - - 0x01F5C6 07:F5B6: C9 20     CMP #$20
C - - - - - 0x01F5C8 07:F5B8: D0 57     BNE bra_F611
C - - - - - 0x01F5CA 07:F5BA: A9 28     LDA #$28
C - - - - - 0x01F5CC 07:F5BC: 95 AC     STA ram_drop_id,X
C - - - - - 0x01F5CE 07:F5BE: DE D0 03  DEC ram_03D0,X
C - - - - - 0x01F5D1 07:F5C1: D0 2A     BNE bra_F5ED
C - - - - - 0x01F5D3 07:F5C3: A9 40     LDA #$40
C - - - - - 0x01F5D5 07:F5C5: 95 AC     STA ram_drop_id,X
C - - - - - 0x01F5D7 07:F5C7: E0 0D     CPX #$0D
C - - - - - 0x01F5D9 07:F5C9: B0 07     BCS bra_F5D2
C - - - - - 0x01F5DB 07:F5CB: BD 4F 03  LDA ram_obj_id,X
C - - - - - 0x01F5DE 07:F5CE: C9 5B     CMP #con_obj_id_5B
C - - - - - 0x01F5E0 07:F5D0: F0 04     BEQ bra_F5D6
bra_F5D2:
C - - - - - 0x01F5E2 07:F5D2: E0 12     CPX #$12
C - - - - - 0x01F5E4 07:F5D4: D0 0B     BNE bra_F5E1
bra_F5D6:
C - - - - - 0x01F5E6 07:F5D6: 20 55 F8  JSR sub_F855
C - - - - - 0x01F5E9 07:F5D9: E0 0D     CPX #$0D
C - - - - - 0x01F5EB 07:F5DB: B0 03     BCS bra_F5E0_RTS
C - - - - - 0x01F5ED 07:F5DD: 20 46 83  JSR sub_0x010356
bra_F5E0_RTS:
C - - - - - 0x01F5F0 07:F5E0: 60        RTS
bra_F5E1:
loc_F5E1:
C D 3 - - - 0x01F5F1 07:F5E1: A9 03     LDA #$03
C - - - - - 0x01F5F3 07:F5E3: 9D D0 03  STA ram_03D0,X
C - - - - - 0x01F5F6 07:F5E6: B5 AC     LDA ram_drop_id,X
C - - - - - 0x01F5F8 07:F5E8: 18        CLC
C - - - - - 0x01F5F9 07:F5E9: 69 10     ADC #$10
C - - - - - 0x01F5FB 07:F5EB: 95 AC     STA ram_drop_id,X
bra_F5ED:
C - - - - - 0x01F5FD 07:F5ED: E0 0D     CPX #$0D
C - - - - - 0x01F5FF 07:F5EF: B0 07     BCS bra_F5F8
C - - - - - 0x01F601 07:F5F1: BD 4F 03  LDA ram_obj_id,X
C - - - - - 0x01F604 07:F5F4: C9 5B     CMP #con_obj_id_5B
C - - - - - 0x01F606 07:F5F6: F0 07     BEQ bra_F5FF
bra_F5F8:
C - - - - - 0x01F608 07:F5F8: E0 12     CPX #$12
C - - - - - 0x01F60A 07:F5FA: F0 03     BEQ bra_F5FF
C - - - - - 0x01F60C 07:F5FC: 4C D3 F6  JMP loc_F6D3
bra_F5FF:
C - - - - - 0x01F60F 07:F5FF: A9 02     LDA #$02
C - - - - - 0x01F611 07:F601: 85 0C     STA ram_000C
C - - - - - 0x01F613 07:F603: A9 00     LDA #$00
C - - - - - 0x01F615 07:F605: 85 0F     STA ram_000F
C - - - - - 0x01F617 07:F607: B5 98     LDA ram_direction,X
C - - - - - 0x01F619 07:F609: 20 13 70  JSR sub_bat_7013
C D 3 - - - 0x01F61C 07:F60C: A9 00     LDA #$00    ; !!! D 3 flag
C - - - - - 0x01F61E 07:F60E: 4C 92 F5  JMP loc_F592
bra_F611:
C - - - - - 0x01F621 07:F611: C9 30     CMP #$30
C - - - - - 0x01F623 07:F613: D0 2C     BNE bra_F641
C - - - - - 0x01F625 07:F615: A9 00     LDA #$00
C - - - - - 0x01F627 07:F617: 9D 94 03  STA ram_0394,X
C - - - - - 0x01F62A 07:F61A: A9 40     LDA #$40
C - - - - - 0x01F62C 07:F61C: 9D BC 03  STA ram_03BC,X
C - - - - - 0x01F62F 07:F61F: B5 98     LDA ram_direction,X
C - - - - - 0x01F631 07:F621: 85 0F     STA ram_000F
C - - - - - 0x01F633 07:F623: 29 02     AND #con_dir_Left
C - - - - - 0x01F635 07:F625: F0 06     BEQ bra_F62D
C - - - - - 0x01F637 07:F627: B5 70     LDA ram_pos_X,X
C - - - - - 0x01F639 07:F629: C9 02     CMP #$02
C - - - - - 0x01F63B 07:F62B: 90 08     BCC bra_F635
bra_F62D:
C - - - - - 0x01F63D 07:F62D: 20 8D F0  JSR sub_F08D
C - - - - - 0x01F640 07:F630: DE 80 03  DEC ram_0380,X
C - - - - - 0x01F643 07:F633: D0 09     BNE bra_F63E
bra_F635:
C - - - - - 0x01F645 07:F635: A9 20     LDA #$20
C - - - - - 0x01F647 07:F637: 9D 80 03  STA ram_0380,X
C - - - - - 0x01F64A 07:F63A: A9 40     LDA #$40
C - - - - - 0x01F64C 07:F63C: 95 AC     STA ram_drop_id,X
bra_F63E:
C - - - - - 0x01F64E 07:F63E: 4C B8 F6  JMP loc_F6B8
bra_F641:
C - - - - - 0x01F651 07:F641: A9 00     LDA #$00
C - - - - - 0x01F653 07:F643: 9D 94 03  STA ram_0394,X
C - - - - - 0x01F656 07:F646: E0 0D     CPX #$0D
C - - - - - 0x01F658 07:F648: B0 03     BCS bra_F64D
C - - - - - 0x01F65A 07:F64A: BD 2C 04  LDA ram_042C,X
bra_F64D:
C - - - - - 0x01F65D 07:F64D: 20 4A 70  JSR sub_bat_704A
C - - - - - 0x01F660 07:F650: A5 00     LDA ram_0000
C - - - - - 0x01F662 07:F652: C9 02     CMP #$02
C - - - - - 0x01F664 07:F654: D0 3B     BNE bra_F691
C - - - - - 0x01F666 07:F656: A9 00     LDA #$00
C - - - - - 0x01F668 07:F658: 9D 80 03  STA ram_0380,X
C - - - - - 0x01F66B 07:F65B: E0 0D     CPX #$0D
C - - - - - 0x01F66D 07:F65D: 90 13     BCC bra_F672
- - - - - - 0x01F66F 07:F65F: A5 AC     LDA ram_drop_id
- - - - - - 0x01F671 07:F661: 09 20     ORA #$20
- - - - - - 0x01F673 07:F663: 85 AC     STA ram_drop_id
- - - - - - 0x01F675 07:F665: A9 01     LDA #$01
- - - - - - 0x01F677 07:F667: 8D D0 03  STA ram_03D0
- - - - - - 0x01F67A 07:F66A: A0 0F     LDY #$0F
- - - - - - 0x01F67C 07:F66C: A9 00     LDA #$00
- - - - - - 0x01F67E 07:F66E: 99 AC 00  STA ram_drop_id,Y
- - - - - - 0x01F681 07:F671: 60        RTS
bra_F672:
C - - - - - 0x01F682 07:F672: A0 30     LDY #$30
C - - - - - 0x01F684 07:F674: B5 18     LDA ram_indiv_random,X
C - - - - - 0x01F686 07:F676: C9 30     CMP #$30
C - - - - - 0x01F688 07:F678: 90 08     BCC bra_F682
C - - - - - 0x01F68A 07:F67A: A0 50     LDY #$50
C - - - - - 0x01F68C 07:F67C: C9 70     CMP #$70
C - - - - - 0x01F68E 07:F67E: 90 02     BCC bra_F682    ; if not overflow
C - - - - - 0x01F690 07:F680: A0 70     LDY #$70
bra_F682:
C - - - - - 0x01F692 07:F682: 98        TYA
C - - - - - 0x01F693 07:F683: BC 2C 04  LDY ram_042C,X
C - - - - - 0x01F696 07:F686: 99 28 00  STA ram_obj_timer,Y
C - - - - - 0x01F699 07:F689: A9 00     LDA #$00
C - - - - - 0x01F69B 07:F68B: 99 AC 00  STA ram_drop_id,Y
C - - - - - 0x01F69E 07:F68E: 4C 46 83  JMP loc_0x010356
bra_F691:
C - - - - - 0x01F6A1 07:F691: A0 04     LDY #$04
C - - - - - 0x01F6A3 07:F693: 20 6F 70  JSR sub_bat_706F
C - - - - - 0x01F6A6 07:F696: B9 F7 F4  LDA tbl_F4F7,Y
C - - - - - 0x01F6A9 07:F699: 20 AB 70  JSR sub_bat_70AB
C - - - - - 0x01F6AC 07:F69C: A5 0A     LDA ram_000A
C - - - - - 0x01F6AE 07:F69E: 85 0F     STA ram_000F
C - - - - - 0x01F6B0 07:F6A0: 95 98     STA ram_direction,X
C - - - - - 0x01F6B2 07:F6A2: 98        TYA
C - - - - - 0x01F6B3 07:F6A3: 48        PHA
C - - - - - 0x01F6B4 07:F6A4: 20 8D F0  JSR sub_F08D
C - - - - - 0x01F6B7 07:F6A7: 68        PLA
C - - - - - 0x01F6B8 07:F6A8: A8        TAY
C - - - - - 0x01F6B9 07:F6A9: B9 00 F5  LDA tbl_F500,Y
C - - - - - 0x01F6BC 07:F6AC: 20 AB 70  JSR sub_bat_70AB
C - - - - - 0x01F6BF 07:F6AF: A5 0B     LDA ram_000B
C - - - - - 0x01F6C1 07:F6B1: 85 0F     STA ram_000F
C - - - - - 0x01F6C3 07:F6B3: 95 98     STA ram_direction,X
C - - - - - 0x01F6C5 07:F6B5: 20 8D F0  JSR sub_F08D
loc_F6B8:
C D 3 - - - 0x01F6C8 07:F6B8: DE D0 03  DEC ram_03D0,X
C - - - - - 0x01F6CB 07:F6BB: D0 16     BNE bra_F6D3
C - - - - - 0x01F6CD 07:F6BD: A9 02     LDA #$02
C - - - - - 0x01F6CF 07:F6BF: 9D D0 03  STA ram_03D0,X
C - - - - - 0x01F6D2 07:F6C2: F6 AC     INC ram_drop_id,X
C - - - - - 0x01F6D4 07:F6C4: B5 AC     LDA ram_drop_id,X
C - - - - - 0x01F6D6 07:F6C6: 29 77     AND #$77
C - - - - - 0x01F6D8 07:F6C8: 95 AC     STA ram_drop_id,X
C - - - - - 0x01F6DA 07:F6CA: E0 0D     CPX #$0D
C - - - - - 0x01F6DC 07:F6CC: 90 1A     BCC bra_F6E8
C - - - - - 0x01F6DE 07:F6CE: A0 02     LDY #con_sfx_3_arrow_shoot
C - - - - - 0x01F6E0 07:F6D0: 20 10 6E  JSR sub_bat_6E10
bra_F6D3:
loc_F6D3:
C D 3 - - - 0x01F6E3 07:F6D3: E0 0D     CPX #$0D
C - - - - - 0x01F6E5 07:F6D5: B0 11     BCS bra_F6E8
C - - - - - 0x01F6E7 07:F6D7: 20 A7 7A  JSR sub_bat_7AA7
C - - - - - 0x01F6EA 07:F6DA: AD 4B 03  LDA ram_034B
C - - - - - 0x01F6ED 07:F6DD: F0 09     BEQ bra_F6E8
C - - - - - 0x01F6EF 07:F6DF: A9 03     LDA #$03
C - - - - - 0x01F6F1 07:F6E1: 9D D0 03  STA ram_03D0,X
C - - - - - 0x01F6F4 07:F6E4: A9 20     LDA #$20
C - - - - - 0x01F6F6 07:F6E6: 95 AC     STA ram_drop_id,X
bra_F6E8:
C - - - - - 0x01F6F8 07:F6E8: A9 00     LDA #$00
C - - - - - 0x01F6FA 07:F6EA: 85 00     STA ram_0000
C - - - - - 0x01F6FC 07:F6EC: B5 AC     LDA ram_drop_id,X
C - - - - - 0x01F6FE 07:F6EE: 29 0F     AND #$0F
C - - - - - 0x01F700 07:F6F0: A8        TAY
C - - - - - 0x01F701 07:F6F1: A9 00     LDA #$00
C - - - - - 0x01F703 07:F6F3: 85 01     STA ram_0001
C - - - - - 0x01F705 07:F6F5: B9 E5 F4  LDA tbl_F4E5,Y
C - - - - - 0x01F708 07:F6F8: 85 0C     STA ram_000C
C - - - - - 0x01F70A 07:F6FA: 98        TYA ; bzk optimize, useless
C - - - - - 0x01F70B 07:F6FB: B9 EE F4  LDA tbl_F4EE,Y
C - - - - - 0x01F70E 07:F6FE: 85 04     STA ram_0004
C - - - - - 0x01F710 07:F700: A0 00     LDY #$00
C - - - - - 0x01F712 07:F702: C9 08     CMP #$08
C - - - - - 0x01F714 07:F704: F0 03     BEQ bra_F709
C - - - - - 0x01F716 07:F706: AC 75 06  LDY ram_item_mag_boomerang
bra_F709:
C - - - - - 0x01F719 07:F709: 98        TYA
C - - - - - 0x01F71A 07:F70A: 18        CLC
C - - - - - 0x01F71B 07:F70B: 65 04     ADC ram_0004
C - - - - - 0x01F71D 07:F70D: 85 04     STA ram_0004
C - - - - - 0x01F71F 07:F70F: A0 1D     LDY #$1D
C - - - - - 0x01F721 07:F711: 4C 20 F7  JMP loc_F720



loc_F714:
C D 3 - - - 0x01F724 07:F714: B9 11 F5  LDA tbl_F511_pos_X,Y
C - - - - - 0x01F727 07:F717: 85 00     STA ram_0000
C - - - - - 0x01F729 07:F719: B9 15 F5  LDA tbl_F515_pos_Y,Y
C - - - - - 0x01F72C 07:F71C: 85 01     STA ram_0001
C - - - - - 0x01F72E 07:F71E: A0 02     LDY #$02
loc_F720:
C D 3 - - - 0x01F730 07:F720: B5 70     LDA ram_pos_X,X
C - - - - - 0x01F732 07:F722: 18        CLC
C - - - - - 0x01F733 07:F723: 65 00     ADC ram_0000
C - - - - - 0x01F735 07:F725: 85 00     STA ram_0000
C - - - - - 0x01F737 07:F727: B5 84     LDA ram_pos_Y,X
C - - - - - 0x01F739 07:F729: 18        CLC
C - - - - - 0x01F73A 07:F72A: 65 01     ADC ram_0001
C - - - - - 0x01F73C 07:F72C: 85 01     STA ram_0001
C - - - - - 0x01F73E 07:F72E: B5 AC     LDA ram_drop_id,X
C - - - - - 0x01F740 07:F730: 29 F0     AND #$F0
C - - - - - 0x01F742 07:F732: C9 20     CMP #$20
C - - - - - 0x01F744 07:F734: D0 05     BNE bra_F73B
C - - - - - 0x01F746 07:F736: A9 01     LDA #$01
C - - - - - 0x01F748 07:F738: 20 88 79  JSR sub_bat_7988
bra_F73B:
C - - - - - 0x01F74B 07:F73B: 4C 15 79  JMP loc_bat_7915



sub_F73E:
C - - - - - 0x01F74E 07:F73E: B5 AC     LDA ram_drop_id,X
C - - - - - 0x01F750 07:F740: 29 F0     AND #$F0
C - - - - - 0x01F752 07:F742: C9 30     CMP #$30
C - - - - - 0x01F754 07:F744: B0 23     BCS bra_F769
C - - - - - 0x01F756 07:F746: 4C 19 F5  JMP loc_F519



tbl_F749_pos_X:
- D 3 - - - 0x01F759 07:F749: FF        .byte $FF   ; 
- D 3 - - - 0x01F75A 07:F74A: 01        .byte $01   ; 
- D 3 - - - 0x01F75B 07:F74B: 00        .byte $00   ; 
- D 3 - - - 0x01F75C 07:F74C: F8        .byte $F8   ; 
- D 3 - - - 0x01F75D 07:F74D: FF        .byte $FF   ; 
- D 3 - - - 0x01F75E 07:F74E: 01        .byte $01   ; 
- D 3 - - - 0x01F75F 07:F74F: F5        .byte $F5   ; 
- D 3 - - - 0x01F760 07:F750: 0B        .byte $0B   ; 
- D 3 - - - 0x01F761 07:F751: FF        .byte $FF   ; 
- D 3 - - - 0x01F762 07:F752: 01        .byte $01   ; 
- D 3 - - - 0x01F763 07:F753: F9        .byte $F9   ; 
- D 3 - - - 0x01F764 07:F754: 07        .byte $07   ; 
- D 3 - - - 0x01F765 07:F755: FF        .byte $FF   ; 
- D 3 - - - 0x01F766 07:F756: 01        .byte $01   ; 
- D 3 - - - 0x01F767 07:F757: FD        .byte $FD   ; 
- D 3 - - - 0x01F768 07:F758: 03        .byte $03   ; 

tbl_F759_pos_Y:
- D 3 - - - 0x01F769 07:F759: F7        .byte $F7   ; 
- D 3 - - - 0x01F76A 07:F75A: F2        .byte $F2   ; 
- D 3 - - - 0x01F76B 07:F75B: F5        .byte $F5   ; 
- D 3 - - - 0x01F76C 07:F75C: F5        .byte $F5   ; 
- D 3 - - - 0x01F76D 07:F75D: F6        .byte $F6   ; 
- D 3 - - - 0x01F76E 07:F75E: 0D        .byte $0D   ; 
- D 3 - - - 0x01F76F 07:F75F: 03        .byte $03   ; 
- D 3 - - - 0x01F770 07:F760: 03        .byte $03   ; 
- D 3 - - - 0x01F771 07:F761: F7        .byte $F7   ; 
- D 3 - - - 0x01F772 07:F762: 09        .byte $09   ; 
- D 3 - - - 0x01F773 07:F763: 03        .byte $03   ; 
- D 3 - - - 0x01F774 07:F764: 03        .byte $03   ; 
- D 3 - - - 0x01F775 07:F765: FF        .byte $FF   ; 
- D 3 - - - 0x01F776 07:F766: 05        .byte $05   ; 
- D 3 - - - 0x01F777 07:F767: 03        .byte $03   ; 
- D 3 - - - 0x01F778 07:F768: 03        .byte $03   ; 



bra_F769:   ; bzk
sub_F769:
C - - - - - 0x01F779 07:F769: B5 AC     LDA ram_drop_id,X
C - - - - - 0x01F77B 07:F76B: 29 0F     AND #$0F
C - - - - - 0x01F77D 07:F76D: F0 24     BEQ bra_F793_RTS
C - - - - - 0x01F77F 07:F76F: DE D0 03  DEC ram_03D0,X
C - - - - - 0x01F782 07:F772: D0 20     BNE bra_F794
C - - - - - 0x01F784 07:F774: B5 AC     LDA ram_drop_id,X
C - - - - - 0x01F786 07:F776: 29 0F     AND #$0F
C - - - - - 0x01F788 07:F778: A8        TAY
C - - - - - 0x01F789 07:F779: A9 08     LDA #$08
C - - - - - 0x01F78B 07:F77B: 88        DEY
C - - - - - 0x01F78C 07:F77C: F0 02     BEQ bra_F780
C - - - - - 0x01F78E 07:F77E: A9 01     LDA #$01
bra_F780:
C - - - - - 0x01F790 07:F780: 8D D0 03  STA ram_03D0
C - - - - - 0x01F793 07:F783: 9D D0 03  STA ram_03D0,X
C - - - - - 0x01F796 07:F786: F6 AC     INC ram_drop_id,X
C - - - - - 0x01F798 07:F788: B5 AC     LDA ram_drop_id,X
C - - - - - 0x01F79A 07:F78A: 29 0F     AND #$0F
C - - - - - 0x01F79C 07:F78C: C9 06     CMP #$06
C - - - - - 0x01F79E 07:F78E: 90 04     BCC bra_F794
C - - - - - 0x01F7A0 07:F790: 20 55 F8  JSR sub_F855
bra_F793_RTS:
C - - - - - 0x01F7A3 07:F793: 60        RTS
bra_F794:
C - - - - - 0x01F7A4 07:F794: A9 00     LDA #$00
C - - - - - 0x01F7A6 07:F796: 85 0F     STA ram_000F
C - - - - - 0x01F7A8 07:F798: B5 AC     LDA ram_drop_id,X
C - - - - - 0x01F7AA 07:F79A: 29 0F     AND #$0F
C - - - - - 0x01F7AC 07:F79C: A8        TAY
C - - - - - 0x01F7AD 07:F79D: A9 FC     LDA #$FC
C - - - - - 0x01F7AF 07:F79F: C0 05     CPY #$05
C - - - - - 0x01F7B1 07:F7A1: F0 F0     BEQ bra_F793_RTS
bra_F7A3:
C - - - - - 0x01F7B3 07:F7A3: 18        CLC
C - - - - - 0x01F7B4 07:F7A4: 69 04     ADC #$04
C - - - - - 0x01F7B6 07:F7A6: 88        DEY
C - - - - - 0x01F7B7 07:F7A7: D0 FA     BNE bra_F7A3
C - - - - - 0x01F7B9 07:F7A9: 85 00     STA ram_0000
C - - - - - 0x01F7BB 07:F7AB: A5 98     LDA ram_direction
C - - - - - 0x01F7BD 07:F7AD: 95 98     STA ram_direction,X
C - - - - - 0x01F7BF 07:F7AF: 20 13 70  JSR sub_bat_7013
C - - - - - 0x01F7C2 07:F7B2: 98        TYA
C - - - - - 0x01F7C3 07:F7B3: 18        CLC
C - - - - - 0x01F7C4 07:F7B4: 65 00     ADC ram_0000
C - - - - - 0x01F7C6 07:F7B6: A8        TAY
C - - - - - 0x01F7C7 07:F7B7: A5 70     LDA ram_pos_X
C - - - - - 0x01F7C9 07:F7B9: 18        CLC
C - - - - - 0x01F7CA 07:F7BA: 79 49 F7  ADC tbl_F749_pos_X,Y
C - - - - - 0x01F7CD 07:F7BD: 95 70     STA ram_pos_X,X
C - - - - - 0x01F7CF 07:F7BF: 85 00     STA ram_0000
C - - - - - 0x01F7D1 07:F7C1: A5 84     LDA ram_pos_Y
C - - - - - 0x01F7D3 07:F7C3: 18        CLC
C - - - - - 0x01F7D4 07:F7C4: 79 59 F7  ADC tbl_F759_pos_Y,Y
C - - - - - 0x01F7D7 07:F7C7: 95 84     STA ram_pos_Y,X
C - - - - - 0x01F7D9 07:F7C9: 85 01     STA ram_0001
C - - - - - 0x01F7DB 07:F7CB: B5 AC     LDA ram_drop_id,X
C - - - - - 0x01F7DD 07:F7CD: 29 0F     AND #$0F
C - - - - - 0x01F7DF 07:F7CF: A8        TAY
C - - - - - 0x01F7E0 07:F7D0: A9 08     LDA #$08
C - - - - - 0x01F7E2 07:F7D2: 88        DEY
C - - - - - 0x01F7E3 07:F7D3: F0 02     BEQ bra_F7D7
C - - - - - 0x01F7E5 07:F7D5: B5 98     LDA ram_direction,X
bra_F7D7:
C - - - - - 0x01F7E7 07:F7D7: 20 13 70  JSR sub_bat_7013
C - - - - - 0x01F7EA 07:F7DA: B9 09 F5  LDA tbl_F509,Y
C - - - - - 0x01F7ED 07:F7DD: 85 0C     STA ram_000C
C - - - - - 0x01F7EF 07:F7DF: B9 0D F5  LDA tbl_F50D,Y
C - - - - - 0x01F7F2 07:F7E2: E0 0D     CPX #$0D
C - - - - - 0x01F7F4 07:F7E4: F0 05     BEQ bra_F7EB
C - - - - - 0x01F7F6 07:F7E6: 09 01     ORA #$01
C - - - - - 0x01F7F8 07:F7E8: 4C F2 F7  JMP loc_F7F2
bra_F7EB:
C - - - - - 0x01F7FB 07:F7EB: 18        CLC
C - - - - - 0x01F7FC 07:F7EC: 6D 57 06  ADC ram_item_sword
C - - - - - 0x01F7FF 07:F7EF: 38        SEC
C - - - - - 0x01F800 07:F7F0: E9 01     SBC #$01
loc_F7F2:
C D 3 - - - 0x01F802 07:F7F2: 20 88 79  JSR sub_bat_7988
C - - - - - 0x01F805 07:F7F5: C0 02     CPY #$02
C - - - - - 0x01F807 07:F7F7: D0 02     BNE bra_F7FB
C - - - - - 0x01F809 07:F7F9: E6 0F     INC ram_000F
bra_F7FB:
C - - - - - 0x01F80B 07:F7FB: B5 AC     LDA ram_drop_id,X
C - - - - - 0x01F80D 07:F7FD: 29 0F     AND #$0F
C - - - - - 0x01F80F 07:F7FF: C9 01     CMP #$01
C - - - - - 0x01F811 07:F801: F0 51     BEQ bra_F854_RTS
C - - - - - 0x01F813 07:F803: A0 00     LDY #$00
C - - - - - 0x01F815 07:F805: E0 0D     CPX #$0D
C - - - - - 0x01F817 07:F807: F0 02     BEQ bra_F80B
C - - - - - 0x01F819 07:F809: A0 08     LDY #$08
bra_F80B:
C - - - - - 0x01F81B 07:F80B: 20 15 79  JSR sub_bat_7915
C - - - - - 0x01F81E 07:F80E: B5 AC     LDA ram_drop_id,X
C - - - - - 0x01F820 07:F810: 29 0F     AND #$0F
C - - - - - 0x01F822 07:F812: C9 03     CMP #$03
C - - - - - 0x01F824 07:F814: D0 3E     BNE bra_F854_RTS
C - - - - - 0x01F826 07:F816: E0 12     CPX #$12
C - - - - - 0x01F828 07:F818: D0 40     BNE bra_F85A
C - - - - - 0x01F82A 07:F81A: A2 0E     LDX #$0E
C - - - - - 0x01F82C 07:F81C: B5 AC     LDA ram_drop_id,X
C - - - - - 0x01F82E 07:F81E: F0 03     BEQ bra_F823
C - - - - - 0x01F830 07:F820: 0A        ASL
C - - - - - 0x01F831 07:F821: B0 31     BCS bra_F854_RTS
bra_F823:
C - - - - - 0x01F833 07:F823: A9 04     LDA #con_sfx_4_energy_wave
C - - - - - 0x01F835 07:F825: 8D 04 06  STA ram_sfx_4
C - - - - - 0x01F838 07:F828: A9 80     LDA #$80
bra_F82A:
C - - - - - 0x01F83A 07:F82A: 95 AC     STA ram_drop_id,X
C - - - - - 0x01F83C 07:F82C: A9 10     LDA #$10
C - - - - - 0x01F83E 07:F82E: 20 1F 71  JSR sub_bat_711F
C - - - - - 0x01F841 07:F831: B5 98     LDA ram_direction,X
C - - - - - 0x01F843 07:F833: 29 03     AND #con_dir__LR
C - - - - - 0x01F845 07:F835: F0 0A     BEQ bra_F841
C - - - - - 0x01F847 07:F837: B5 70     LDA ram_pos_X,X
C - - - - - 0x01F849 07:F839: C9 14     CMP #$14
C - - - - - 0x01F84B 07:F83B: 90 18     BCC bra_F855
C - - - - - 0x01F84D 07:F83D: C9 EC     CMP #$EC
C - - - - - 0x01F84F 07:F83F: B0 14     BCS bra_F855
bra_F841:
C - - - - - 0x01F851 07:F841: A0 C0     LDY #$C0
C - - - - - 0x01F853 07:F843: B5 AC     LDA ram_drop_id,X
C - - - - - 0x01F855 07:F845: 0A        ASL
C - - - - - 0x01F856 07:F846: 90 02     BCC bra_F84A
C D 3 - - - 0x01F858 07:F848: A0 A0     LDY #$A0
bra_F84A:
C - - - - - 0x01F85A 07:F84A: 98        TYA
C - - - - - 0x01F85B 07:F84B: 9D BC 03  STA ram_03BC,X
C - - - - - 0x01F85E 07:F84E: AD 94 03  LDA ram_0394
C - - - - - 0x01F861 07:F851: 9D 94 03  STA ram_0394,X
bra_F854_RTS:
C - - - - - 0x01F864 07:F854: 60        RTS



bra_F855:
loc_F855:
sub_F855:
sub_0x01F865:
C D 3 - - - 0x01F865 07:F855: A9 00     LDA #$00
C - - - - - 0x01F867 07:F857: 95 AC     STA ram_drop_id,X
C - - - - - 0x01F869 07:F859: 60        RTS
bra_F85A:
C - - - - - 0x01F86A 07:F85A: A2 0E     LDX #$0E
C - - - - - 0x01F86C 07:F85C: B5 AC     LDA ram_drop_id,X
C - - - - - 0x01F86E 07:F85E: D0 F4     BNE bra_F854_RTS
C - - - - - 0x01F870 07:F860: AD 29 05  LDA ram_0529
C - - - - - 0x01F873 07:F863: D0 18     BNE bra_F87D
C - - - - - 0x01F875 07:F865: AD 6F 06  LDA ram_item_066F
C - - - - - 0x01F878 07:F868: 48        PHA
C - - - - - 0x01F879 07:F869: 29 0F     AND #$0F
C - - - - - 0x01F87B 07:F86B: 85 00     STA ram_0000
C - - - - - 0x01F87D 07:F86D: 68        PLA
C - - - - - 0x01F87E 07:F86E: 4A        LSR
C - - - - - 0x01F87F 07:F86F: 4A        LSR
C - - - - - 0x01F880 07:F870: 4A        LSR
C - - - - - 0x01F881 07:F871: 4A        LSR
C - - - - - 0x01F882 07:F872: C5 00     CMP ram_0000
C - - - - - 0x01F884 07:F874: D0 DE     BNE bra_F854_RTS
C - - - - - 0x01F886 07:F876: AD 70 06  LDA ram_item_0670
C - - - - - 0x01F889 07:F879: C9 80     CMP #$80
C - - - - - 0x01F88B 07:F87B: 90 D7     BCC bra_F854_RTS
bra_F87D:
C - - - - - 0x01F88D 07:F87D: A9 01     LDA #con_sfx_1_01
C - - - - - 0x01F88F 07:F87F: 20 7C 6D  JSR sub_bat_6D7C_set_sfx_1
C - - - - - 0x01F892 07:F882: A9 10     LDA #$10
C - - - - - 0x01F894 07:F884: D0 A4     BNE bra_F82A
loc_F886:
C D 3 - - - 0x01F896 07:F886: B5 AC     LDA ram_drop_id,X
C - - - - - 0x01F898 07:F888: C9 21     CMP #$21
C - - - - - 0x01F89A 07:F88A: D0 25     BNE bra_F8B1
C - - - - - 0x01F89C 07:F88C: BD 94 03  LDA ram_0394,X
C - - - - - 0x01F89F 07:F88F: 48        PHA
C - - - - - 0x01F8A0 07:F890: A9 00     LDA #$00
C - - - - - 0x01F8A2 07:F892: 9D 94 03  STA ram_0394,X
C - - - - - 0x01F8A5 07:F895: B5 98     LDA ram_direction,X
C - - - - - 0x01F8A7 07:F897: 85 0F     STA ram_000F
C - - - - - 0x01F8A9 07:F899: 20 8D F0  JSR sub_F08D
C - - - - - 0x01F8AC 07:F89C: 68        PLA
C - - - - - 0x01F8AD 07:F89D: 18        CLC
C - - - - - 0x01F8AE 07:F89E: 7D 94 03  ADC ram_0394,X
C - - - - - 0x01F8B1 07:F8A1: 9D 94 03  STA ram_0394,X
C - - - - - 0x01F8B4 07:F8A4: 20 1F 70  JSR sub_bat_701F
C - - - - - 0x01F8B7 07:F8A7: C9 10     CMP #$10
C - - - - - 0x01F8B9 07:F8A9: D0 1A     BNE bra_F8C5
C - - - - - 0x01F8BB 07:F8AB: A9 3F     LDA #$3F
C - - - - - 0x01F8BD 07:F8AD: 95 28     STA ram_obj_timer,X
C - - - - - 0x01F8BF 07:F8AF: F6 AC     INC ram_drop_id,X
bra_F8B1:
C - - - - - 0x01F8C1 07:F8B1: B5 28     LDA ram_obj_timer,X
C - - - - - 0x01F8C3 07:F8B3: F0 A0     BEQ bra_F855
C - - - - - 0x01F8C5 07:F8B5: A5 10     LDA ram_dungeon_level
C - - - - - 0x01F8C7 07:F8B7: F0 0C     BEQ bra_F8C5    ; if overworld
; if dungeon
C - - - - - 0x01F8C9 07:F8B9: 8A        TXA
C - - - - - 0x01F8CA 07:F8BA: 48        PHA
C - - - - - 0x01F8CB 07:F8BB: A9 04     LDA #con_prg_bank + $04
C - - - - - 0x01F8CD 07:F8BD: 20 AC FF  JSR sub_FFAC_prg_bankswitch
C - - - - - 0x01F8D0 07:F8C0: 20 BE B1  JSR sub_0x0131CE
C - - - - - 0x01F8D3 07:F8C3: 68        PLA
C - - - - - 0x01F8D4 07:F8C4: AA        TAX
bra_F8C5:
C - - - - - 0x01F8D5 07:F8C5: A9 04     LDA #$04
C - - - - - 0x01F8D7 07:F8C7: 20 89 FA  JSR sub_FA89
C - - - - - 0x01F8DA 07:F8CA: 20 72 FA  JSR sub_FA72
C - - - - - 0x01F8DD 07:F8CD: 20 86 79  JSR sub_bat_7986
C - - - - - 0x01F8E0 07:F8D0: A9 00     LDA #$00
C - - - - - 0x01F8E2 07:F8D2: 85 0C     STA ram_000C
C - - - - - 0x01F8E4 07:F8D4: A0 40     LDY #$40
C - - - - - 0x01F8E6 07:F8D6: 20 E6 77  JSR sub_bat_77E6
C - - - - - 0x01F8E9 07:F8D9: AD F0 04  LDA ram_invinc_timer
C - - - - - 0x01F8EC 07:F8DC: D0 3F     BNE bra_F91D_RTS
C - - - - - 0x01F8EE 07:F8DE: 86 00     STX ram_0000
C - - - - - 0x01F8F0 07:F8E0: A2 00     LDX #$00
C - - - - - 0x01F8F2 07:F8E2: A0 02     LDY #$02
C - - - - - 0x01F8F4 07:F8E4: 20 0D F9  JSR sub_F90D
C - - - - - 0x01F8F7 07:F8E7: A6 00     LDX ram_0000
C - - - - - 0x01F8F9 07:F8E9: A0 00     LDY #$00
C - - - - - 0x01F8FB 07:F8EB: 20 0D F9  JSR sub_F90D
C - - - - - 0x01F8FE 07:F8EE: A4 00     LDY ram_0000
C - - - - - 0x01F900 07:F8F0: A2 00     LDX #$00
C - - - - - 0x01F902 07:F8F2: A9 0E     LDA #$0E
C - - - - - 0x01F904 07:F8F4: 20 FB 7D  JSR sub_bat_7DFB
C - - - - - 0x01F907 07:F8F7: F0 24     BEQ bra_F91D_RTS
C - - - - - 0x01F909 07:F8F9: A6 00     LDX ram_0000
C - - - - - 0x01F90B 07:F8FB: A0 00     LDY #$00
C - - - - - 0x01F90D 07:F8FD: 84 00     STY ram_0000
C - - - - - 0x01F90F 07:F8FF: 20 26 7E  JSR sub_bat_7E26
C - - - - - 0x01F912 07:F902: A9 00     LDA #$00
C - - - - - 0x01F914 07:F904: 85 0D     STA ram_000D
C - - - - - 0x01F916 07:F906: A9 80     LDA #$80
C - - - - - 0x01F918 07:F908: 85 0E     STA ram_000E
C - - - - - 0x01F91A 07:F90A: 4C 4F 7B  JMP loc_bat_7B4F



sub_F90D:
C - - - - - 0x01F91D 07:F90D: B5 70     LDA ram_pos_X,X
C - - - - - 0x01F91F 07:F90F: 18        CLC
C - - - - - 0x01F920 07:F910: 69 08     ADC #$08
C - - - - - 0x01F922 07:F912: 99 02 00  STA ram_0002,Y
C - - - - - 0x01F925 07:F915: B5 84     LDA ram_pos_Y,X
C - - - - - 0x01F927 07:F917: 18        CLC
C - - - - - 0x01F928 07:F918: 69 08     ADC #$08
C - - - - - 0x01F92A 07:F91A: 99 03 00  STA ram_0003,Y
bra_F91D_RTS:
C - - - - - 0x01F92D 07:F91D: 60        RTS



tbl_F91E:
- D 3 - - - 0x01F92E 07:F91E: 30        .byte $30   ; 01
- D 3 - - - 0x01F92F 07:F91F: 18        .byte $18   ; 02
- D 3 - - - 0x01F930 07:F920: 0C        .byte $0C   ; 03
- D 3 - - - 0x01F931 07:F921: 06        .byte $06   ; 04



tbl_F922_pos_X:
- D 3 - - - 0x01F932 07:F922: 78        .byte $78   ; 00
- D 3 - - - 0x01F933 07:F923: 78        .byte $78   ; 01
- D 3 - - - 0x01F934 07:F924: 20        .byte $20   ; 02
- D 3 - - - 0x01F935 07:F925: D0        .byte $D0   ; 03

tbl_F926_pos_Y:
- D 3 - - - 0x01F936 07:F926: 5D        .byte $5D   ; 00
- D 3 - - - 0x01F937 07:F927: BD        .byte $BD   ; 01
- D 3 - - - 0x01F938 07:F928: 8D        .byte $8D   ; 02
- D 3 - - - 0x01F939 07:F929: 8D        .byte $8D   ; 03



sub_F92A:
C - - - - - 0x01F93A 07:F92A: B5 AC     LDA ram_drop_id,X
C - - - - - 0x01F93C 07:F92C: F0 31     BEQ bra_F95F_RTS
C - - - - - 0x01F93E 07:F92E: 29 F0     AND #$F0
C - - - - - 0x01F940 07:F930: C9 10     CMP #$10
C - - - - - 0x01F942 07:F932: F0 03     BEQ bra_F937
C - - - - - 0x01F944 07:F934: 4C 86 F8  JMP loc_F886
bra_F937:
C - - - - - 0x01F947 07:F937: B5 28     LDA ram_obj_timer,X
C - - - - - 0x01F949 07:F939: D0 73     BNE bra_F9AE
C - - - - - 0x01F94B 07:F93B: B5 AC     LDA ram_drop_id,X
C - - - - - 0x01F94D 07:F93D: 29 0F     AND #$0F
C - - - - - 0x01F94F 07:F93F: A8        TAY
C - - - - - 0x01F950 07:F940: B9 1D F9  LDA tbl_F91E - 1,Y
C - - - - - 0x01F953 07:F943: 95 28     STA ram_obj_timer,X
C - - - - - 0x01F955 07:F945: F6 AC     INC ram_drop_id,X
C - - - - - 0x01F957 07:F947: B5 AC     LDA ram_drop_id,X
C - - - - - 0x01F959 07:F949: 29 0F     AND #$0F
C - - - - - 0x01F95B 07:F94B: 48        PHA
C - - - - - 0x01F95C 07:F94C: C9 03     CMP #$03
C - - - - - 0x01F95E 07:F94E: D0 05     BNE bra_F955
C - - - - - 0x01F960 07:F950: A9 10     LDA #con_sfx_3_10
C - - - - - 0x01F962 07:F952: 20 80 6D  JSR sub_bat_6D80_set_sfx_3
bra_F955:
C - - - - - 0x01F965 07:F955: 68        PLA
C - - - - - 0x01F966 07:F956: C9 05     CMP #$05
C - - - - - 0x01F968 07:F958: D0 06     BNE bra_F960
C - - - - - 0x01F96A 07:F95A: 20 55 F8  JSR sub_F855
C - - - - - 0x01F96D 07:F95D: 95 28     STA ram_obj_timer,X
bra_F95F_RTS:
C - - - - - 0x01F96F 07:F95F: 60        RTS
bra_F960:
C - - - - - 0x01F970 07:F960: C9 04     CMP #$04
C - - - - - 0x01F972 07:F962: D0 4A     BNE bra_F9AE
C - - - - - 0x01F974 07:F964: A5 10     LDA ram_dungeon_level
C - - - - - 0x01F976 07:F966: F0 46     BEQ bra_F9AE    ; if overworld
; if dungeon
C - - - - - 0x01F978 07:F968: A5 12     LDA ram_game_mode_main
C - - - - - 0x01F97A 07:F96A: C9 09     CMP #con_GM_09
C - - - - - 0x01F97C 07:F96C: F0 40     BEQ bra_F9AE
C - - - - - 0x01F97E 07:F96E: A0 04     LDY #$04
bra_F970:
C - - - - - 0x01F980 07:F970: 88        DEY
C - - - - - 0x01F981 07:F971: 30 3B     BMI bra_F9AE
C - - - - - 0x01F983 07:F973: B9 22 F9  LDA tbl_F922_pos_X,Y
C - - - - - 0x01F986 07:F976: 38        SEC
C - - - - - 0x01F987 07:F977: F5 70     SBC ram_pos_X,X
C - - - - - 0x01F989 07:F979: 20 1F 70  JSR sub_bat_701F
C - - - - - 0x01F98C 07:F97C: C9 18     CMP #$18
C - - - - - 0x01F98E 07:F97E: B0 F0     BCS bra_F970
C - - - - - 0x01F990 07:F980: B9 26 F9  LDA tbl_F926_pos_Y,Y
C - - - - - 0x01F993 07:F983: 38        SEC
C - - - - - 0x01F994 07:F984: F5 84     SBC ram_pos_Y,X
C - - - - - 0x01F996 07:F986: 20 1F 70  JSR sub_bat_701F
C - - - - - 0x01F999 07:F989: C9 18     CMP #$18
C - - - - - 0x01F99B 07:F98B: B0 E3     BCS bra_F970
C - - - - - 0x01F99D 07:F98D: B9 C3 6D  LDA tbl_bat_6DC3_direction,Y
C - - - - - 0x01F9A0 07:F990: 85 02     STA ram_0002
C - - - - - 0x01F9A2 07:F992: 25 EE     AND ram_00EE
C - - - - - 0x01F9A4 07:F994: D0 18     BNE bra_F9AE
C - - - - - 0x01F9A6 07:F996: A5 54     LDA ram_0054
C - - - - - 0x01F9A8 07:F998: D0 14     BNE bra_F9AE
C - - - - - 0x01F9AA 07:F99A: A9 05     LDA #con_prg_bank + $05
C - - - - - 0x01F9AC 07:F99C: 20 AC FF  JSR sub_FFAC_prg_bankswitch
C - - - - - 0x01F9AF 07:F99F: 20 F6 A3  JSR sub_0x016406
C - - - - - 0x01F9B2 07:F9A2: C9 04     CMP #$04
C - - - - - 0x01F9B4 07:F9A4: D0 08     BNE bra_F9AE
C - - - - - 0x01F9B6 07:F9A6: A9 06     LDA #$06
C - - - - - 0x01F9B8 07:F9A8: 85 54     STA ram_0054
C - - - - - 0x01F9BA 07:F9AA: A5 02     LDA ram_0002
C - - - - - 0x01F9BC 07:F9AC: 85 55     STA ram_0055
bra_F9AE:
C - - - - - 0x01F9BE 07:F9AE: 20 93 FA  JSR sub_FA93
C - - - - - 0x01F9C1 07:F9B1: 20 BF F9  JSR sub_F9BF
C - - - - - 0x01F9C4 07:F9B4: B5 AC     LDA ram_drop_id,X
C - - - - - 0x01F9C6 07:F9B6: 29 0F     AND #$0F
C - - - - - 0x01F9C8 07:F9B8: C9 02     CMP #$02
C - - - - - 0x01F9CA 07:F9BA: F0 A3     BEQ bra_F95F_RTS
C - - - - - 0x01F9CC 07:F9BC: 4C E5 F9  JMP loc_F9E5



sub_F9BF:
C - - - - - 0x01F9CF 07:F9BF: 20 BB 71  JSR sub_bat_71BB
sub_F9C2:
C - - - - - 0x01F9D2 07:F9C2: B5 AC     LDA ram_drop_id,X
C - - - - - 0x01F9D4 07:F9C4: 29 0F     AND #$0F
C - - - - - 0x01F9D6 07:F9C6: 38        SEC
C - - - - - 0x01F9D7 07:F9C7: E9 02     SBC #$02
sub_F9C9:
C - - - - - 0x01F9D9 07:F9C9: 85 0C     STA ram_000C
C - - - - - 0x01F9DB 07:F9CB: A0 00     LDY #$00
C - - - - - 0x01F9DD 07:F9CD: 84 0F     STY ram_000F
C - - - - - 0x01F9DF 07:F9CF: C8        INY
C - - - - - 0x01F9E0 07:F9D0: 84 04     STY ram_0004
C - - - - - 0x01F9E2 07:F9D2: 84 05     STY ram_0005
C - - - - - 0x01F9E4 07:F9D4: A0 01     LDY #$01
C - - - - - 0x01F9E6 07:F9D6: 4C 15 79  JMP loc_bat_7915



tbl_F9D9_pos_Y:
- D 3 - - - 0x01F9E9 07:F9D9: F3        .byte $F3   ; 00
- D 3 - - - 0x01F9EA 07:F9DA: 00        .byte $00   ; 01
- D 3 - - - 0x01F9EB 07:F9DB: 0E        .byte $0E   ; 02
tbl_F9DC_pos_X:
- D 3 - - - 0x01F9EC 07:F9DC: F9        .byte $F9   ; 00
- D 3 - - - 0x01F9ED 07:F9DD: 0E        .byte $0E   ; 01
- D 3 - - - 0x01F9EE 07:F9DE: 07        .byte $07   ; 02

- D 3 - - - 0x01F9EF 07:F9DF: F3        .byte $F3   ; 06
- D 3 - - - 0x01F9F0 07:F9E0: 00        .byte $00   ; 07
- D 3 - - - 0x01F9F1 07:F9E1: 0E        .byte $0E   ; 08
- D 3 - - - 0x01F9F2 07:F9E2: 07        .byte $07   ; 06
- D 3 - - - 0x01F9F3 07:F9E3: F3        .byte $F3   ; 07
- D 3 - - - 0x01F9F4 07:F9E4: F9        .byte $F9   ; 08



loc_F9E5:
C D 3 - - - 0x01F9F5 07:F9E5: A0 02     LDY #$02
bra_F9E7_loop:
C - - - - - 0x01F9F7 07:F9E7: 98        TYA
C - - - - - 0x01F9F8 07:F9E8: 48        PHA
C - - - - - 0x01F9F9 07:F9E9: A5 15     LDA ram_frame_cnt
C - - - - - 0x01F9FB 07:F9EB: 4A        LSR
C - - - - - 0x01F9FC 07:F9EC: 90 05     BCC bra_F9F3
C - - - - - 0x01F9FE 07:F9EE: 98        TYA
C - - - - - 0x01F9FF 07:F9EF: 18        CLC
C - - - - - 0x01FA00 07:F9F0: 69 06     ADC #$06
C - - - - - 0x01FA02 07:F9F2: A8        TAY
bra_F9F3:
C - - - - - 0x01FA03 07:F9F3: B5 84     LDA ram_pos_Y,X
C - - - - - 0x01FA05 07:F9F5: 18        CLC
C - - - - - 0x01FA06 07:F9F6: 79 D9 F9  ADC tbl_F9D9_pos_Y,Y
C - - - - - 0x01FA09 07:F9F9: 85 01     STA ram_0001
C - - - - - 0x01FA0B 07:F9FB: B5 70     LDA ram_pos_X,X
C - - - - - 0x01FA0D 07:F9FD: 18        CLC
C - - - - - 0x01FA0E 07:F9FE: 79 DC F9  ADC tbl_F9DC_pos_X,Y
C - - - - - 0x01FA11 07:FA01: 85 00     STA ram_0000
C - - - - - 0x01FA13 07:FA03: 20 C2 F9  JSR sub_F9C2
C - - - - - 0x01FA16 07:FA06: 68        PLA
C - - - - - 0x01FA17 07:FA07: A8        TAY
C - - - - - 0x01FA18 07:FA08: 88        DEY
C - - - - - 0x01FA19 07:FA09: 10 DC     BPL bra_F9E7_loop
C - - - - - 0x01FA1B 07:FA0B: 60        RTS



sub_FA0C:
C - - - - - 0x01FA1C 07:FA0C: 20 93 FA  JSR sub_FA93
C - - - - - 0x01FA1F 07:FA0F: BD 05 04  LDA ram_0405,X
C - - - - - 0x01FA22 07:FA12: C9 10     CMP #$10
C - - - - - 0x01FA24 07:FA14: B0 11     BCS bra_FA27
C - - - - - 0x01FA26 07:FA16: 29 0F     AND #$0F
C - - - - - 0x01FA28 07:FA18: 20 C9 F9  JSR sub_F9C9
loc_FA1B:
C D 3 - - - 0x01FA2B 07:FA1B: B5 28     LDA ram_obj_timer,X
C - - - - - 0x01FA2D 07:FA1D: D0 07     BNE bra_FA26_RTS
bra_FA1F:
C - - - - - 0x01FA2F 07:FA1F: A9 06     LDA #$06
C - - - - - 0x01FA31 07:FA21: 95 28     STA ram_obj_timer,X
C - - - - - 0x01FA33 07:FA23: FE 05 04  INC ram_0405,X
bra_FA26_RTS:
C - - - - - 0x01FA36 07:FA26: 60        RTS
bra_FA27:
C - - - - - 0x01FA37 07:FA27: 29 0F     AND #$0F
C - - - - - 0x01FA39 07:FA29: F0 F4     BEQ bra_FA1F
C - - - - - 0x01FA3B 07:FA2B: 29 01     AND #$01
C - - - - - 0x01FA3D 07:FA2D: 85 0C     STA ram_000C
C - - - - - 0x01FA3F 07:FA2F: A9 01     LDA #$01
C - - - - - 0x01FA41 07:FA31: 20 88 79  JSR sub_bat_7988
C - - - - - 0x01FA44 07:FA34: A0 24     LDY #$24
C - - - - - 0x01FA46 07:FA36: 20 15 79  JSR sub_bat_7915
C - - - - - 0x01FA49 07:FA39: 4C 1B FA  JMP loc_FA1B



sub_FA3C:
C - - - - - 0x01FA4C 07:FA3C: A5 AC     LDA ram_drop_id
C - - - - - 0x01FA4E 07:FA3E: D0 0F     BNE bra_FA4F
C - - - - - 0x01FA50 07:FA40: A5 12     LDA ram_game_mode_main
C - - - - - 0x01FA52 07:FA42: C9 04     CMP #con_GM_04
C - - - - - 0x01FA54 07:FA44: F0 09     BEQ bra_FA4F
C - - - - - 0x01FA56 07:FA46: C9 10     CMP #con_GM_10
C - - - - - 0x01FA58 07:FA48: F0 05     BEQ bra_FA4F
C - - - - - 0x01FA5A 07:FA4A: AD F8 03  LDA ram_03F8
C - - - - - 0x01FA5D 07:FA4D: F0 13     BEQ bra_FA62
bra_FA4F:
sub_0x01FA5F:
C - - - - - 0x01FA5F 07:FA4F: DE D0 03  DEC ram_03D0,X
C - - - - - 0x01FA62 07:FA52: D0 0E     BNE bra_FA62
C - - - - - 0x01FA64 07:FA54: E0 00     CPX #$00
C - - - - - 0x01FA66 07:FA56: D0 03     BNE bra_FA5B
C - - - - - 0x01FA68 07:FA58: 20 AE FA  JSR sub_FAAE
bra_FA5B:
C - - - - - 0x01FA6B 07:FA5B: A9 06     LDA #$06
C - - - - - 0x01FA6D 07:FA5D: 85 00     STA ram_0000
C - - - - - 0x01FA6F 07:FA5F: 20 A0 FA  JSR sub_FAA0
bra_FA62:
C - - - - - 0x01FA72 07:FA62: 20 93 FA  JSR sub_FA93
C - - - - - 0x01FA75 07:FA65: B5 98     LDA ram_direction,X
C - - - - - 0x01FA77 07:FA67: 29 0C     AND #con_dir__UD
C - - - - - 0x01FA79 07:FA69: F0 0D     BEQ bra_FA78
C - - - - - 0x01FA7B 07:FA6B: A0 03     LDY #$03
C - - - - - 0x01FA7D 07:FA6D: 29 08     AND #con_dir_Up
C - - - - - 0x01FA7F 07:FA6F: D0 01     BNE bra_FA72
C - - - - - 0x01FA81 07:FA71: 88        DEY
bra_FA72:
sub_FA72:
sub_0x01FA82:
C - - - - - 0x01FA82 07:FA72: BD E4 03  LDA ram_03E4,X
C - - - - - 0x01FA85 07:FA75: 85 0F     STA ram_000F
C - - - - - 0x01FA87 07:FA77: 60        RTS
bra_FA78:
C - - - - - 0x01FA88 07:FA78: A0 00     LDY #$00
C - - - - - 0x01FA8A 07:FA7A: BD E4 03  LDA ram_03E4,X
C - - - - - 0x01FA8D 07:FA7D: F0 01     BEQ bra_FA80
C - - - - - 0x01FA8F 07:FA7F: C8        INY
bra_FA80:
C - - - - - 0x01FA90 07:FA80: B5 98     LDA ram_direction,X
C - - - - - 0x01FA92 07:FA82: 29 01     AND #con_dir_Right
C - - - - - 0x01FA94 07:FA84: D0 02     BNE bra_FA88_RTS
C - - - - - 0x01FA96 07:FA86: E6 0F     INC ram_000F
bra_FA88_RTS:
C - - - - - 0x01FA98 07:FA88: 60        RTS



sub_FA89:
sub_0x01FA99:
C - - - - - 0x01FA99 07:FA89: 85 00     STA ram_0000
C - - - - - 0x01FA9B 07:FA8B: DE D0 03  DEC ram_03D0,X
C - - - - - 0x01FA9E 07:FA8E: D0 03     BNE bra_FA93
C - - - - - 0x01FAA0 07:FA90: 20 A0 FA  JSR sub_FAA0
bra_FA93:
sub_FA93:
sub_0x01FAA3:
loc_0x01FAA3:
C D 3 - - - 0x01FAA3 07:FA93: B5 70     LDA ram_pos_X,X
C - - - - - 0x01FAA5 07:FA95: 85 00     STA ram_0000
C - - - - - 0x01FAA7 07:FA97: B5 84     LDA ram_pos_Y,X
C - - - - - 0x01FAA9 07:FA99: 85 01     STA ram_0001
C - - - - - 0x01FAAB 07:FA9B: A9 00     LDA #$00
C - - - - - 0x01FAAD 07:FA9D: 85 0F     STA ram_000F
C - - - - - 0x01FAAF 07:FA9F: 60        RTS



sub_FAA0:
C - - - - - 0x01FAB0 07:FAA0: A5 00     LDA ram_0000
C - - - - - 0x01FAB2 07:FAA2: 9D D0 03  STA ram_03D0,X
C - - - - - 0x01FAB5 07:FAA5: BD E4 03  LDA ram_03E4,X
C - - - - - 0x01FAB8 07:FAA8: 49 01     EOR #$01
C - - - - - 0x01FABA 07:FAAA: 9D E4 03  STA ram_03E4,X
C - - - - - 0x01FABD 07:FAAD: 60        RTS



sub_FAAE:
C - - - - - 0x01FABE 07:FAAE: A5 AC     LDA ram_drop_id
C - - - - - 0x01FAC0 07:FAB0: 29 30     AND #$30
C - - - - - 0x01FAC2 07:FAB2: C9 10     CMP #$10
C - - - - - 0x01FAC4 07:FAB4: D0 08     BNE bra_FABE
C - - - - - 0x01FAC6 07:FAB6: A5 AC     LDA ram_drop_id
C - - - - - 0x01FAC8 07:FAB8: 29 0F     AND #$0F
C - - - - - 0x01FACA 07:FABA: D0 11     BNE bra_FACD
C - - - - - 0x01FACC 07:FABC: F0 0A     BEQ bra_FAC8
bra_FABE:
C - - - - - 0x01FACE 07:FABE: C9 20     CMP #$20
C - - - - - 0x01FAD0 07:FAC0: D0 17     BNE bra_FAD9
- - - - - - 0x01FAD2 07:FAC2: A5 AC     LDA ram_drop_id
- - - - - - 0x01FAD4 07:FAC4: 29 0F     AND #$0F
- - - - - - 0x01FAD6 07:FAC6: D0 05     BNE bra_FACD
bra_FAC8:
C - - - - - 0x01FAD8 07:FAC8: E6 AC     INC ram_drop_id
C - - - - - 0x01FADA 07:FACA: 4C D3 FA  JMP loc_FAD3
bra_FACD:
C - - - - - 0x01FADD 07:FACD: A5 AC     LDA ram_drop_id
C - - - - - 0x01FADF 07:FACF: 09 30     ORA #$30
C - - - - - 0x01FAE1 07:FAD1: 85 AC     STA ram_drop_id
loc_FAD3:
C D 3 - - - 0x01FAE3 07:FAD3: A9 01     LDA #$01
C - - - - - 0x01FAE5 07:FAD5: 8D E4 03  STA ram_03E4
C - - - - - 0x01FAE8 07:FAD8: 60        RTS
bra_FAD9:
C - - - - - 0x01FAE9 07:FAD9: C9 30     CMP #$30
C - - - - - 0x01FAEB 07:FADB: D0 06     BNE bra_FAE3_RTS
C - - - - - 0x01FAED 07:FADD: A5 AC     LDA ram_drop_id
C - - - - - 0x01FAEF 07:FADF: 29 C0     AND #$C0
C - - - - - 0x01FAF1 07:FAE1: 85 AC     STA ram_drop_id
bra_FAE3_RTS:
C - - - - - 0x01FAF3 07:FAE3: 60        RTS


; bzk garbage
- - - - - - 0x01FAF4 07:FAE4: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 



tbl_FAF0:
- D 3 - - - 0x01FB00 07:FAF0: 00        .byte $00   ; 
- D 3 - - - 0x01FB01 07:FAF1: 00        .byte $00   ; 
- D 3 - - - 0x01FB02 07:FAF2: 00        .byte $00   ; 
- D 3 - - - 0x01FB03 07:FAF3: 00        .byte $00   ; 
- D 3 - - - 0x01FB04 07:FAF4: 00        .byte $00   ; 
- D 3 - - - 0x01FB05 07:FAF5: 00        .byte $00   ; 
- D 3 - - - 0x01FB06 07:FAF6: 05        .byte $05   ; 
- D 3 - - - 0x01FB07 07:FAF7: 05        .byte $05   ; 
- D 3 - - - 0x01FB08 07:FAF8: 05        .byte $05   ; 
- D 3 - - - 0x01FB09 07:FAF9: 05        .byte $05   ; 
- D 3 - - - 0x01FB0A 07:FAFA: 81        .byte $81   ; 
- D 3 - - - 0x01FB0B 07:FAFB: 81        .byte $81   ; 
- D 3 - - - 0x01FB0C 07:FAFC: 81        .byte $81   ; 
- D 3 - - - 0x01FB0D 07:FAFD: 81        .byte $81   ; 
- D 3 - - - 0x01FB0E 07:FAFE: 01        .byte $01   ; 
- D 3 - - - 0x01FB0F 07:FAFF: 01        .byte $01   ; 
- D 3 - - - 0x01FB10 07:FB00: 81        .byte $81   ; 
- D 3 - - - 0x01FB11 07:FB01: 01        .byte $01   ; 
- D 3 - - - 0x01FB12 07:FB02: 01        .byte $01   ; 
- D 3 - - - 0x01FB13 07:FB03: 43        .byte $43   ; 
- D 3 - - - 0x01FB14 07:FB04: 43        .byte $43   ; 
- D 3 - - - 0x01FB15 07:FB05: 81        .byte $81   ; 
- D 3 - - - 0x01FB16 07:FB06: 81        .byte $81   ; 
- D 3 - - - 0x01FB17 07:FB07: 81        .byte $81   ; 
- - - - - - 0x01FB18 07:FB08: 81        .byte $81   ; 
- D 3 - - - 0x01FB19 07:FB09: 01        .byte $01   ; 
- D 3 - - - 0x01FB1A 07:FB0A: 81        .byte $81   ; 
- D 3 - - - 0x01FB1B 07:FB0B: 81        .byte $81   ; 
- D 3 - - - 0x01FB1C 07:FB0C: 81        .byte $81   ; 
- D 3 - - - 0x01FB1D 07:FB0D: 01        .byte $01   ; 
- D 3 - - - 0x01FB1E 07:FB0E: 81        .byte $81   ; 
- D 3 - - - 0x01FB1F 07:FB0F: 81        .byte $81   ; 
- D 3 - - - 0x01FB20 07:FB10: 81        .byte $81   ; 
- D 3 - - - 0x01FB21 07:FB11: 81        .byte $81   ; 
- D 3 - - - 0x01FB22 07:FB12: 81        .byte $81   ; 
- D 3 - - - 0x01FB23 07:FB13: 81        .byte $81   ; 
- D 3 - - - 0x01FB24 07:FB14: C3        .byte $C3   ; 
- D 3 - - - 0x01FB25 07:FB15: C3        .byte $C3   ; 
- D 3 - - - 0x01FB26 07:FB16: 89        .byte $89   ; 
- D 3 - - - 0x01FB27 07:FB17: 89        .byte $89   ; 
- - - - - - 0x01FB28 07:FB18: 81        .byte $81   ; 
- D 3 - - - 0x01FB29 07:FB19: 81        .byte $81   ; 
- D 3 - - - 0x01FB2A 07:FB1A: 89        .byte $89   ; 
- D 3 - - - 0x01FB2B 07:FB1B: 89        .byte $89   ; 
- D 3 - - - 0x01FB2C 07:FB1C: 89        .byte $89   ; 
- D 3 - - - 0x01FB2D 07:FB1D: 89        .byte $89   ; 
- - - - - - 0x01FB2E 07:FB1E: 83        .byte $83   ; 
- D 3 - - - 0x01FB2F 07:FB1F: 81        .byte $81   ; 
- D 3 - - - 0x01FB30 07:FB20: 89        .byte $89   ; 
- D 3 - - - 0x01FB31 07:FB21: 89        .byte $89   ; 
- D 3 - - - 0x01FB32 07:FB22: C9        .byte $C9   ; 
- D 3 - - - 0x01FB33 07:FB23: C9        .byte $C9   ; 
- D 3 - - - 0x01FB34 07:FB24: 81        .byte $81   ; 
- D 3 - - - 0x01FB35 07:FB25: 81        .byte $81   ; 
- D 3 - - - 0x01FB36 07:FB26: 81        .byte $81   ; 
- D 3 - - - 0x01FB37 07:FB27: A9        .byte $A9   ; 
- D 3 - - - 0x01FB38 07:FB28: A9        .byte $A9   ; 
- D 3 - - - 0x01FB39 07:FB29: 41        .byte $41   ; 
- D 3 - - - 0x01FB3A 07:FB2A: 41        .byte $41   ; 
- D 3 - - - 0x01FB3B 07:FB2B: 89        .byte $89   ; 
- D 3 - - - 0x01FB3C 07:FB2C: 89        .byte $89   ; 
- D 3 - - - 0x01FB3D 07:FB2D: 81        .byte $81   ; 
- D 3 - - - 0x01FB3E 07:FB2E: 81        .byte $81   ; 
- D 3 - - - 0x01FB3F 07:FB2F: 81        .byte $81   ; 
- D 3 - - - 0x01FB40 07:FB30: C1        .byte $C1   ; 
- - - - - - 0x01FB41 07:FB31: C1        .byte $C1   ; 
- D 3 - - - 0x01FB42 07:FB32: C1        .byte $C1   ; 
- D 3 - - - 0x01FB43 07:FB33: C1        .byte $C1   ; 
- D 3 - - - 0x01FB44 07:FB34: C1        .byte $C1   ; 
- D 3 - - - 0x01FB45 07:FB35: 81        .byte $81   ; 
- D 3 - - - 0x01FB46 07:FB36: 81        .byte $81   ; 
- D 3 - - - 0x01FB47 07:FB37: 81        .byte $81   ; 
- D 3 - - - 0x01FB48 07:FB38: A1        .byte $A1   ; 
- D 3 - - - 0x01FB49 07:FB39: A1        .byte $A1   ; 
- D 3 - - - 0x01FB4A 07:FB3A: 81        .byte $81   ; 
- - - - - - 0x01FB4B 07:FB3B: 81        .byte $81   ; 
- D 3 - - - 0x01FB4C 07:FB3C: 81        .byte $81   ; 
- - - - - - 0x01FB4D 07:FB3D: 81        .byte $81   ; 
- D 3 - - - 0x01FB4E 07:FB3E: 81        .byte $81   ; 
- - - - - - 0x01FB4F 07:FB3F: 81        .byte $81   ; 
- D 3 - - - 0x01FB50 07:FB40: 81        .byte $81   ; 
- - - - - - 0x01FB51 07:FB41: 81        .byte $81   ; 
- D 3 - - - 0x01FB52 07:FB42: E3        .byte $E3   ; 
- - - - - - 0x01FB53 07:FB43: E3        .byte $E3   ; 
- D 3 - - - 0x01FB54 07:FB44: E3        .byte $E3   ; 
- D 3 - - - 0x01FB55 07:FB45: E3        .byte $E3   ; 
- D 3 - - - 0x01FB56 07:FB46: E3        .byte $E3   ; 
- D 3 - - - 0x01FB57 07:FB47: E1        .byte $E1   ; 
- D 3 - - - 0x01FB58 07:FB48: E1        .byte $E1   ; 
- - - - - - 0x01FB59 07:FB49: E1        .byte $E1   ; 
- D 3 - - - 0x01FB5A 07:FB4A: E1        .byte $E1   ; 
- D 3 - - - 0x01FB5B 07:FB4B: E1        .byte $E1   ; 
- - - - - - 0x01FB5C 07:FB4C: 81        .byte $81   ; 
- D 3 - - - 0x01FB5D 07:FB4D: 81        .byte $81   ; 



tbl_FB4E:
- D 3 - - - 0x01FB5E 07:FB4E: 06        .byte $06   ; 
- D 3 - - - 0x01FB5F 07:FB4F: 43        .byte $43   ; 
- D 3 - - - 0x01FB60 07:FB50: 25        .byte $25   ; 
- D 3 - - - 0x01FB61 07:FB51: 31        .byte $31   ; 
- D 3 - - - 0x01FB62 07:FB52: 12        .byte $12   ; 
- D 3 - - - 0x01FB63 07:FB53: 24        .byte $24   ; 
- D 3 - - - 0x01FB64 07:FB54: 81        .byte $81   ; 
- D 3 - - - 0x01FB65 07:FB55: 14        .byte $14   ; 
- D 3 - - - 0x01FB66 07:FB56: 22        .byte $22   ; 
- D 3 - - - 0x01FB67 07:FB57: 42        .byte $42   ; 
- D 3 - - - 0x01FB68 07:FB58: 00        .byte $00   ; 
- D 3 - - - 0x01FB69 07:FB59: A9        .byte $A9   ; 
- D 3 - - - 0x01FB6A 07:FB5A: 8F        .byte $8F   ; 
- D 3 - - - 0x01FB6B 07:FB5B: 20        .byte $20   ; 
- D 3 - - - 0x01FB6C 07:FB5C: 00        .byte $00   ; 
- D 3 - - - 0x01FB6D 07:FB5D: 3F        .byte $3F   ; 
- D 3 - - - 0x01FB6E 07:FB5E: F9        .byte $F9   ; 
- D 3 - - - 0x01FB6F 07:FB5F: FA        .byte $FA   ; 
- D 3 - - - 0x01FB70 07:FB60: 46        .byte $46   ; 
- D 3 - - - 0x01FB71 07:FB61: 62        .byte $62   ; 
- D 3 - - - 0x01FB72 07:FB62: 11        .byte $11   ; 
- D 3 - - - 0x01FB73 07:FB63: 2F        .byte $2F   ; 
- D 3 - - - 0x01FB74 07:FB64: FF        .byte $FF   ; 
- D 3 - - - 0x01FB75 07:FB65: FF        .byte $FF   ; 
- D 3 - - - 0x01FB76 07:FB66: 7F        .byte $7F   ; 
- D 3 - - - 0x01FB77 07:FB67: F6        .byte $F6   ; 
- D 3 - - - 0x01FB78 07:FB68: 2F        .byte $2F   ; 
- D 3 - - - 0x01FB79 07:FB69: FF        .byte $FF   ; 
- D 3 - - - 0x01FB7A 07:FB6A: FF        .byte $FF   ; 
- D 3 - - - 0x01FB7B 07:FB6B: 22        .byte $22   ; 
- D 3 - - - 0x01FB7C 07:FB6C: 46        .byte $46   ; 
- D 3 - - - 0x01FB7D 07:FB6D: F1        .byte $F1   ; 
- D 3 - - - 0x01FB7E 07:FB6E: F2        .byte $F2   ; 
- D 3 - - - 0x01FB7F 07:FB6F: AA        .byte $AA   ; 
- D 3 - - - 0x01FB80 07:FB70: AA        .byte $AA   ; 
- D 3 - - - 0x01FB81 07:FB71: FB        .byte $FB   ; 
- D 3 - - - 0x01FB82 07:FB72: BF        .byte $BF   ; 
- D 3 - - - 0x01FB83 07:FB73: F0        .byte $F0   ; 



sub_FB74:
; bzk bug, code keeps reading tbl_FB4E here if Y >= 26
C D 3 - - - 0x01FB84 07:FB74: 48        PHA
C D 3 - - - 0x01FB85 07:FB75: A9 04     LDA #con_prg_bank + $04
C D 3 - - - 0x01FB87 07:FB77: 20 AC FF  JSR sub_FFAC_prg_bankswitch
C D 3 - - - 0x01FB8A 07:FB7A: 68        PLA
C D 3 - - - 0x01FB8B 07:FB7B: BC 92 04  LDY ram_0492,X
C D 3 - - - 0x01FB8E 07:FB7E: 84 0F     STY ram_000F
C D 3 - - - 0x01FB90 07:FB80: F0 1B     BEQ bra_FB9D
C D 3 - - - 0x01FB92 07:FB82: BD 4F 03  LDA ram_obj_id,X
C D 3 - - - 0x01FB95 07:FB85: C9 1E     CMP #con_obj_id_1E
C D 3 - - - 0x01FB97 07:FB87: F0 0C     BEQ bra_FB95
C D 3 - - - 0x01FB99 07:FB89: C9 22     CMP #con_obj_id_22
C D 3 - - - 0x01FB9B 07:FB8B: F0 08     BEQ bra_FB95
C - - - - - 0x01FB9D 07:FB8D: C9 53     CMP #$53
C - - - - - 0x01FB9F 07:FB8F: B0 04     BCS bra_FB95
C - - - - - 0x01FBA1 07:FB91: A9 07     LDA #$07
C - - - - - 0x01FBA3 07:FB93: 95 28     STA ram_obj_timer,X
bra_FB95:
C - - - - - 0x01FBA5 07:FB95: A9 00     LDA #$00
C - - - - - 0x01FBA7 07:FB97: 9D 92 04  STA ram_0492,X
C - - - - - 0x01FBAA 07:FB9A: 4C DA FC  JMP loc_FCDA
bra_FB9D:
C - - - - - 0x01FBAD 07:FB9D: BC 05 04  LDY ram_0405,X
C - - - - - 0x01FBB0 07:FBA0: F0 03     BEQ bra_FBA5
C - - - - - 0x01FBB2 07:FBA2: 4C 88 FC  JMP loc_FC88
bra_FBA5:
C - - - - - 0x01FBB5 07:FBA5: C9 6A     CMP #$6A
C - - - - - 0x01FBB7 07:FBA7: 90 08     BCC bra_FBB1
C - - - - - 0x01FBB9 07:FBA9: A9 01     LDA #con_prg_bank + $01
C - - - - - 0x01FBBB 07:FBAB: 20 AC FF  JSR sub_FFAC_prg_bankswitch
C - - - - - 0x01FBBE 07:FBAE: 4C DB 86  JMP loc_0x0046EB
bra_FBB1:   ; ram_obj_id,X
C - - - - - 0x01FBC1 07:FBB1: 20 E2 E5  JSR sub_E5E2_jump_to_pointers_after_JSR
- - - - - - 0x01FBC4 07:FBB4: 94 FC     .word ofs_FC94_00_RTS
- D 3 - I - 0x01FBC6 07:FBB6: CC 87     .word ofs_004_0x0107DC_01
- D 3 - I - 0x01FBC8 07:FBB8: CC 87     .word ofs_004_0x0107DC_02
- D 3 - I - 0x01FBCA 07:FBBA: BF 87     .word ofs_004_0x0107CF_03
- D 3 - I - 0x01FBCC 07:FBBC: BF 87     .word ofs_004_0x0107CF_04
- D 3 - I - 0x01FBCE 07:FBBE: 19 81     .word ofs_004_0x010129_05
- D 3 - I - 0x01FBD0 07:FBC0: 19 81     .word ofs_004_0x010129_06
- D 3 - I - 0x01FBD2 07:FBC2: FF 8B     .word ofs_004_0x010C0F_07
- D 3 - I - 0x01FBD4 07:FBC4: FF 8B     .word ofs_004_0x010C0F_08
- D 3 - I - 0x01FBD6 07:FBC6: FF 8B     .word ofs_004_0x010C0F_09
- D 3 - I - 0x01FBD8 07:FBC8: FF 8B     .word ofs_004_0x010C0F_0A
- D 3 - I - 0x01FBDA 07:FBCA: 4B 9B     .word ofs_004_0x011B5B_0B
- D 3 - I - 0x01FBDC 07:FBCC: 4B 9B     .word ofs_004_0x011B5B_0C
- D 3 - I - 0x01FBDE 07:FBCE: F8 88     .word ofs_004_0x010908_0D
- D 3 - I - 0x01FBE0 07:FBD0: F8 88     .word ofs_004_0x010908_0E
- D 3 - I - 0x01FBE2 07:FBD2: 65 8A     .word ofs_004_0x010A75_0F
- D 3 - I - 0x01FBE4 07:FBD4: 09 8B     .word ofs_004_0x010B19_10
- D 3 - I - 0x01FBE6 07:FBD6: 98 87     .word ofs_004_0x0107A8_11
- D 3 - I - 0x01FBE8 07:FBD8: 57 9D     .word ofs_004_0x011D67_12
- D 3 - I - 0x01FBEA 07:FBDA: CB 84     .word ofs_004_0x0104DB_13
- D 3 - I - 0x01FBEC 07:FBDC: 68 85     .word ofs_004_0x010578_14
- D 3 - I - 0x01FBEE 07:FBDE: 68 85     .word ofs_004_0x010578_15
- D 3 - I - 0x01FBF0 07:FBE0: A2 9B     .word ofs_004_0x011BB2_16
- D 3 - I - 0x01FBF2 07:FBE2: C9 9C     .word ofs_004_0x011CD9_17
- D 3 - I - 0x01FBF4 07:FBE4: F0 95     .word ofs_004_0x011600_18
- - - - - - 0x01FBF6 07:FBE6: 94 FC     .word ofs_004_FC94_19_RTS
- D 3 - I - 0x01FBF8 07:FBE8: 28 90     .word ofs_004_0x011038_1A
- D 3 - I - 0x01FBFA 07:FBEA: 81 84     .word ofs_004_0x010491_1B
- D 3 - I - 0x01FBFC 07:FBEC: 81 84     .word ofs_004_0x010491_1C
- D 3 - I - 0x01FBFE 07:FBEE: 81 84     .word ofs_004_0x010491_1D
- D 3 - I - 0x01FC00 07:FBF0: 50 8D     .word ofs_004_0x010D60_1E
- D 3 - I - 0x01FC02 07:FBF2: 86 88     .word ofs_004_0x010896_1F
- D 3 - I - 0x01FC04 07:FBF4: F8 88     .word ofs_004_0x010908_20
- D 3 - I - 0x01FC06 07:FBF6: 6B 8C     .word ofs_004_0x010C7B_21
- - - - - - 0x01FC08 07:FBF8: EF 8F     .word ofs_004_0x010FFF_22
- D 3 - I - 0x01FC0A 07:FBFA: E3 9D     .word ofs_004_0x011DF3_23
- D 3 - I - 0x01FC0C 07:FBFC: A9 9F     .word ofs_004_0x011FB9_24
- D 3 - I - 0x01FC0E 07:FBFE: DA AB     .word ofs_004_0x012BEA_25
- D 3 - I - 0x01FC10 07:FC00: DA AB     .word ofs_004_0x012BEA_26
- D 3 - I - 0x01FC12 07:FC02: E4 90     .word ofs_004_0x0110F4_27
- D 3 - I - 0x01FC14 07:FC04: D6 92     .word ofs_004_0x0112E6_28
- - - - - - 0x01FC16 07:FC06: 94 FC     .word ofs_004_FC94_29_RTS
- D 3 - I - 0x01FC18 07:FC08: 77 93     .word ofs_004_0x011387_2A
- D 3 - I - 0x01FC1A 07:FC0A: 3E 84     .word ofs_004_0x01044E_2B
- D 3 - I - 0x01FC1C 07:FC0C: 3E 84     .word ofs_004_0x01044E_2C
- D 3 - I - 0x01FC1E 07:FC0E: 3E 84     .word ofs_004_0x01044E_2D
- D 3 - I - 0x01FC20 07:FC10: 40 FE     .word ofs_004_FE40_2E
- - - - - - 0x01FC22 07:FC12: 90 8D     .word ofs_004_0x010DA0_2F
- D 3 - I - 0x01FC24 07:FC14: 36 9B     .word ofs_004_0x011B46_30
- D 3 - I - 0x01FC26 07:FC16: A9 98     .word ofs_004_0x0118B9_31
- D 3 - I - 0x01FC28 07:FC18: A9 98     .word ofs_004_0x0118B9_32
- D 3 - I - 0x01FC2A 07:FC1A: 16 A3     .word ofs_004_0x012326_33
- D 3 - I - 0x01FC2C 07:FC1C: 16 A3     .word ofs_004_0x012326_34
- D 3 - I - 0x01FC2E 07:FC1E: 50 FE     .word ofs_004_FE50_35
- D 3 - I - 0x01FC30 07:FC20: 90 FE     .word ofs_004_FE90_36
- D 3 - I - 0x01FC32 07:FC22: 87 A9     .word ofs_004_0x012997_37
- D 3 - I - 0x01FC34 07:FC24: F0 95     .word ofs_004_0x011600_38
- - - - - - 0x01FC36 07:FC26: F0 95     .word ofs_004_0x011600_39
- D 3 - I - 0x01FC38 07:FC28: EB A9     .word ofs_004_0x0129FB_3A
- D 3 - I - 0x01FC3A 07:FC2A: EB A9     .word ofs_004_0x0129FB_3B
- D 3 - I - 0x01FC3C 07:FC2C: 87 A1     .word ofs_004_0x012197_3C
- D 3 - I - 0x01FC3E 07:FC2E: 86 97     .word ofs_004_0x011796_3D
- D 3 - I - 0x01FC40 07:FC30: 7D AC     .word ofs_004_0x012C8D_3E
- D 3 - I - 0x01FC42 07:FC32: D8 A9     .word ofs_004_0x0129E8_3F
- D 3 - I - 0x01FC44 07:FC34: 4F 80     .word ofs_004_0x01005F_40
- D 3 - I - 0x01FC46 07:FC36: 98 94     .word ofs_004_0x0114A8_41
- - - - - - 0x01FC48 07:FC38: DE A4     .word ofs_004_0x0124EE_42
- D 3 - I - 0x01FC4A 07:FC3A: DE A4     .word ofs_004_0x0124EE_43
- D 3 - I - 0x01FC4C 07:FC3C: DE A4     .word ofs_004_0x0124EE_44
- D 3 - I - 0x01FC4E 07:FC3E: DE A4     .word ofs_004_0x0124EE_45
- D 3 - I - 0x01FC50 07:FC40: 77 A4     .word ofs_004_0x012487_46
- D 3 - I - 0x01FC52 07:FC42: 66 AB     .word ofs_004_0x012B76_47
- D 3 - I - 0x01FC54 07:FC44: 66 AB     .word ofs_004_0x012B76_48
- D 3 - I - 0x01FC56 07:FC46: 60 FE     .word ofs_004_FE60_49
- - - - - - 0x01FC58 07:FC48: 60 FE     .word ofs_004_FE60_4A
- - - - - - 0x01FC5A 07:FC4A: 80 FE     .word ofs_004_FE80_4B
- - - - - - 0x01FC5C 07:FC4C: 80 FE     .word ofs_004_FE80_4C
- D 3 - I - 0x01FC5E 07:FC4E: 80 FE     .word ofs_004_FE80_4D
- - - - - - 0x01FC60 07:FC50: 80 FE     .word ofs_004_FE80_4E
- D 3 - I - 0x01FC62 07:FC52: 80 FE     .word ofs_004_FE80_4F
- - - - - - 0x01FC64 07:FC54: 80 FE     .word ofs_004_FE80_50
- D 3 - I - 0x01FC66 07:FC56: 88 FE     .word ofs_004_FE88_51
- - - - - - 0x01FC68 07:FC58: 80 FE     .word ofs_004_FE80_52
- D 3 - I - 0x01FC6A 07:FC5A: D7 82     .word ofs_004_0x0102E7_53
- - - - - - 0x01FC6C 07:FC5C: D7 82     .word ofs_004_0x0102E7_54
- D 3 - I - 0x01FC6E 07:FC5E: 99 83     .word ofs_004_0x0103A9_55
- D 3 - I - 0x01FC70 07:FC60: 99 83     .word ofs_004_0x0103A9_56
- D 3 - I - 0x01FC72 07:FC62: D7 82     .word ofs_004_0x0102E7_57
- D 3 - I - 0x01FC74 07:FC64: D7 82     .word ofs_004_0x0102E7_58
- D 3 - I - 0x01FC76 07:FC66: D7 82     .word ofs_004_0x0102E7_59
- - - - - - 0x01FC78 07:FC68: D7 82     .word ofs_004_0x0102E7_5A
- D 3 - I - 0x01FC7A 07:FC6A: 3F 88     .word ofs_004_0x01084F_5B
- D 3 - I - 0x01FC7C 07:FC6C: 19 F5     .word ofs_004_F519_5C
- D 3 - I - 0x01FC7E 07:FC6E: A6 FE     .word ofs_004_FEA6_5D
- D 3 - I - 0x01FC80 07:FC70: F4 FE     .word ofs_004_FEF4_5E
- D 3 - I - 0x01FC82 07:FC72: 94 FC     .word ofs_004_FC94_5F_RTS
- D 3 - I - 0x01FC84 07:FC74: FC B0     .word ofs_004_0x01310C_60
- D 3 - I - 0x01FC86 07:FC76: 76 8F     .word ofs_004_0x010F86_61
- D 3 - I - 0x01FC88 07:FC78: 44 8E     .word ofs_004_0x010E54_62
- D 3 - I - 0x01FC8A 07:FC7A: EB 8E     .word ofs_004_0x010EFB_63
- D 3 - I - 0x01FC8C 07:FC7C: 0E 8F     .word ofs_004_0x010F1E_64
- D 3 - I - 0x01FC8E 07:FC7E: 44 8E     .word ofs_004_0x010E54_65
- - - - - - 0x01FC90 07:FC80: 44 8E     .word ofs_004_0x010E54_66
- - - - - - 0x01FC92 07:FC82: EB 8E     .word ofs_004_0x010EFB_67
- D 3 - I - 0x01FC94 07:FC84: F7 81     .word ofs_004_0x010207_68
- - - - - - 0x01FC96 07:FC86: 94 FC     .word ofs_004_FC94_69_RTS



loc_FC88:
C D 3 - - - 0x01FC98 07:FC88: 20 0C FA  JSR sub_FA0C
C - - - - - 0x01FC9B 07:FC8B: BD 05 04  LDA ram_0405,X
C - - - - - 0x01FC9E 07:FC8E: 29 0F     AND #$0F
C - - - - - 0x01FCA0 07:FC90: C9 04     CMP #$04
C - - - - - 0x01FCA2 07:FC92: B0 01     BCS bra_FC95
ofs_FC94_00_RTS:
ofs_004_FC94_19_RTS:
ofs_004_FC94_29_RTS:
ofs_004_FC94_5F_RTS:
ofs_004_FC94_69_RTS:
ofs_005_FC94_18_RTS:
ofs_005_FC94_2E_RTS:
ofs_005_FC94_3F_RTS:
ofs_005_FC94_40_RTS:
C - - J - - 0x01FCA4 07:FC94: 60        RTS
bra_FC95:
C - - - - - 0x01FCA5 07:FC95: BD 05 04  LDA ram_0405,X
C - - - - - 0x01FCA8 07:FC98: 29 10     AND #$10
C - - - - - 0x01FCAA 07:FC9A: F0 3B     BEQ bra_FCD7
C - - - - - 0x01FCAC 07:FC9C: BD 4F 03  LDA ram_obj_id,X
C - - - - - 0x01FCAF 07:FC9F: 9D 12 04  STA ram_0412,X
C - - - - - 0x01FCB2 07:FCA2: C9 5D     CMP #con_obj_id_5D
C - - - - - 0x01FCB4 07:FCA4: F0 21     BEQ bra_FCC7
C - - - - - 0x01FCB6 07:FCA6: C9 14     CMP #con_obj_id_14
C - - - - - 0x01FCB8 07:FCA8: F0 1D     BEQ bra_FCC7
C - - - - - 0x01FCBA 07:FCAA: C9 1C     CMP #con_obj_id_1C
C - - - - - 0x01FCBC 07:FCAC: F0 19     BEQ bra_FCC7
C - - - - - 0x01FCBE 07:FCAE: AD 2A 05  LDA ram_052A
C - - - - - 0x01FCC1 07:FCB1: 18        CLC
C - - - - - 0x01FCC2 07:FCB2: 69 01     ADC #$01
C - - - - - 0x01FCC4 07:FCB4: C9 0A     CMP #$0A
C - - - - - 0x01FCC6 07:FCB6: D0 02     BNE bra_FCBA
C - - - - - 0x01FCC8 07:FCB8: A9 00     LDA #$00
bra_FCBA:
C - - - - - 0x01FCCA 07:FCBA: 8D 2A 05  STA ram_052A
C - - - - - 0x01FCCD 07:FCBD: BD 4F 03  LDA ram_obj_id,X
C - - - - - 0x01FCD0 07:FCC0: C9 11     CMP #con_obj_id_11
C - - - - - 0x01FCD2 07:FCC2: F0 03     BEQ bra_FCC7
C - - - - - 0x01FCD4 07:FCC4: EE 4F 03  INC ram_obj_id
bra_FCC7:
C - - - - - 0x01FCD7 07:FCC7: A9 60     LDA #con_obj_id_60
C - - - - - 0x01FCD9 07:FCC9: 9D 4F 03  STA ram_obj_id,X
C - - - - - 0x01FCDC 07:FCCC: 9D 92 04  STA ram_0492,X
C - - - - - 0x01FCDF 07:FCCF: A9 81     LDA #$81
C - - - - - 0x01FCE1 07:FCD1: 9D BF 04  STA ram_04BF,X
C - - - - - 0x01FCE4 07:FCD4: 20 6A B0  JSR sub_0x01307A
bra_FCD7:
C - - - - - 0x01FCE7 07:FCD7: 4C DA FE  JMP loc_FEDA



loc_FCDA:
C D 3 - - - 0x01FCEA 07:FCDA: AE 40 03  LDX ram_obj_index
C - - - - - 0x01FCED 07:FCDD: A5 10     LDA ram_dungeon_level
C - - - - - 0x01FCEF 07:FCDF: D0 5B     BNE bra_FD3C    ; if dungeon
; if overworld
C - - - - - 0x01FCF1 07:FCE1: AD CD 04  LDA ram_04CD
C - - - - - 0x01FCF4 07:FCE4: 29 08     AND #$08
C - - - - - 0x01FCF6 07:FCE6: F0 54     BEQ bra_FD3C
C - - - - - 0x01FCF8 07:FCE8: BD 4F 03  LDA ram_obj_id,X
C - - - - - 0x01FCFB 07:FCEB: C9 11     CMP #con_obj_id_11
C - - - - - 0x01FCFD 07:FCED: F0 4D     BEQ bra_FD3C
C - - - - - 0x01FCFF 07:FCEF: C9 40     CMP #con_obj_id_40
C - - - - - 0x01FD01 07:FCF1: F0 49     BEQ bra_FD3C
C - - - - - 0x01FD03 07:FCF3: C9 1E     CMP #con_obj_id_1E
C - - - - - 0x01FD05 07:FCF5: F0 45     BEQ bra_FD3C
C - - - - - 0x01FD07 07:FCF7: C9 2E     CMP #con_obj_id_2E
C - - - - - 0x01FD09 07:FCF9: F0 41     BEQ bra_FD3C
C - - - - - 0x01FD0B 07:FCFB: C9 53     CMP #$53
C - - - - - 0x01FD0D 07:FCFD: B0 3D     BCS bra_FD3C
bra_FCFF:
C - - - - - 0x01FD0F 07:FCFF: A5 4B     LDA ram_004B
C - - - - - 0x01FD11 07:FD01: F0 04     BEQ bra_FD07
C - - - - - 0x01FD13 07:FD03: 9D 92 04  STA ram_0492,X
C - - - - - 0x01FD16 07:FD06: 60        RTS
bra_FD07:
C - - - - - 0x01FD17 07:FD07: AE 40 03  LDX ram_obj_index
C - - - - - 0x01FD1A 07:FD0A: A9 05     LDA #con_prg_bank + $05
C - - - - - 0x01FD1C 07:FD0C: 20 AC FF  JSR sub_FFAC_prg_bankswitch
C - - - - - 0x01FD1F 07:FD0F: 20 24 90  JSR sub_0x015034
C - - - - - 0x01FD22 07:FD12: AD 25 05  LDA ram_0525
C - - - - - 0x01FD25 07:FD15: 48        PHA
C - - - - - 0x01FD26 07:FD16: 0A        ASL
C - - - - - 0x01FD27 07:FD17: 0A        ASL
C - - - - - 0x01FD28 07:FD18: 0A        ASL
C - - - - - 0x01FD29 07:FD19: 0A        ASL
C - - - - - 0x01FD2A 07:FD1A: 95 70     STA ram_pos_X,X
C - - - - - 0x01FD2C 07:FD1C: 68        PLA
C - - - - - 0x01FD2D 07:FD1D: 29 F0     AND #$F0
C - - - - - 0x01FD2F 07:FD1F: 38        SEC
C - - - - - 0x01FD30 07:FD20: E9 03     SBC #$03
C - - - - - 0x01FD32 07:FD22: 95 84     STA ram_pos_Y,X
C - - - - - 0x01FD34 07:FD24: B5 19     LDA ram_indiv_random + 1,X
C - - - - - 0x01FD36 07:FD26: 29 03     AND #$03
C - - - - - 0x01FD38 07:FD28: 18        CLC
C - - - - - 0x01FD39 07:FD29: 69 02     ADC #$02
C - - - - - 0x01FD3B 07:FD2B: 85 4B     STA ram_004B
C - - - - - 0x01FD3D 07:FD2D: A9 05     LDA #con_prg_bank + $05
C - - - - - 0x01FD3F 07:FD2F: 20 AC FF  JSR sub_FFAC_prg_bankswitch
C - - - - - 0x01FD42 07:FD32: 20 13 8A  JSR sub_0x014A23
C - - - - - 0x01FD45 07:FD35: B0 C8     BCS bra_FCFF
C - - - - - 0x01FD47 07:FD37: A9 00     LDA #$00
C - - - - - 0x01FD49 07:FD39: 9D 05 04  STA ram_0405,X
bra_FD3C:
C - - - - - 0x01FD4C 07:FD3C: A9 04     LDA #con_prg_bank + $04
C - - - - - 0x01FD4E 07:FD3E: 20 AC FF  JSR sub_FFAC_prg_bankswitch
C - - - - - 0x01FD51 07:FD41: AE 40 03  LDX ram_obj_index
C - - - - - 0x01FD54 07:FD44: BC 4F 03  LDY ram_obj_id,X
C - - - - - 0x01FD57 07:FD47: C0 1E     CPY #con_obj_id_1E
C - - - - - 0x01FD59 07:FD49: F0 0B     BEQ bra_FD56
C - - - - - 0x01FD5B 07:FD4B: C0 22     CPY #con_obj_id_22
C - - - - - 0x01FD5D 07:FD4D: F0 07     BEQ bra_FD56
C - - - - - 0x01FD5F 07:FD4F: C0 53     CPY #$53
C - - - - - 0x01FD61 07:FD51: B0 03     BCS bra_FD56
C - - - - - 0x01FD63 07:FD53: 8A        TXA
C - - - - - 0x01FD64 07:FD54: 95 28     STA ram_obj_timer,X
bra_FD56:
C - - - - - 0x01FD66 07:FD56: B9 EF FA  LDA tbl_FAF0 - 1,Y
C - - - - - 0x01FD69 07:FD59: 9D BF 04  STA ram_04BF,X
C - - - - - 0x01FD6C 07:FD5C: 98        TYA
C - - - - - 0x01FD6D 07:FD5D: 85 00     STA ram_0000    ; obj id copy
C - - - - - 0x01FD6F 07:FD5F: 4A        LSR
C - - - - - 0x01FD70 07:FD60: A8        TAY
C - - - - - 0x01FD71 07:FD61: B9 4E FB  LDA tbl_FB4E,Y
C - - - - - 0x01FD74 07:FD64: 20 00 B0  JSR sub_0x013010
C - - - - - 0x01FD77 07:FD67: 9D 85 04  STA ram_0485,X
C - - - - - 0x01FD7A 07:FD6A: A5 00     LDA ram_0000    ; obj id copy
C - - - - - 0x01FD7C 07:FD6C: C9 6A     CMP #$6A
C - - - - - 0x01FD7E 07:FD6E: 90 08     BCC bra_FD78
C - - - - - 0x01FD80 07:FD70: A9 01     LDA #con_prg_bank + $01
C - - - - - 0x01FD82 07:FD72: 20 AC FF  JSR sub_FFAC_prg_bankswitch
C - - - - - 0x01FD85 07:FD75: 4C D0 85  JMP loc_0x0045E0
bra_FD78:
C - - - - - 0x01FD88 07:FD78: C9 5F     CMP #$5F
C - - - - - 0x01FD8A 07:FD7A: 90 03     BCC bra_FD7F
C - - - - - 0x01FD8C 07:FD7C: 4C CA FE  JMP loc_FECA
bra_FD7F:   ; ram_obj_id,X
C - - - - - 0x01FD8F 07:FD7F: 20 E2 E5  JSR sub_E5E2_jump_to_pointers_after_JSR
- - - - - - 0x01FD92 07:FD82: 94 FC     .word ofs_FC94_00_RTS
- D 3 - I - 0x01FD94 07:FD84: 25 80     .word ofs_005_0x010035_01
- D 3 - I - 0x01FD96 07:FD86: 25 80     .word ofs_005_0x010035_02
- D 3 - I - 0x01FD98 07:FD88: 25 80     .word ofs_005_0x010035_03
- D 3 - I - 0x01FD9A 07:FD8A: 25 80     .word ofs_005_0x010035_04
- D 3 - I - 0x01FD9C 07:FD8C: 25 80     .word ofs_005_0x010035_05
- D 3 - I - 0x01FD9E 07:FD8E: 25 80     .word ofs_005_0x010035_06
- D 3 - I - 0x01FDA0 07:FD90: 55 87     .word ofs_005_0x010765_07
- D 3 - I - 0x01FDA2 07:FD92: 59 87     .word ofs_005_0x010769_08
- D 3 - I - 0x01FDA4 07:FD94: 55 87     .word ofs_005_0x010765_09
- D 3 - I - 0x01FDA6 07:FD96: 59 87     .word ofs_005_0x010769_0A
- D 3 - I - 0x01FDA8 07:FD98: 20 9B     .word ofs_005_0x011B30_0B
- D 3 - I - 0x01FDAA 07:FD9A: 20 9B     .word ofs_005_0x011B30_0C
- D 3 - I - 0x01FDAC 07:FD9C: 3F 87     .word ofs_005_0x01074F_0D
- D 3 - I - 0x01FDAE 07:FD9E: 3F 87     .word ofs_005_0x01074F_0E
- D 3 - I - 0x01FDB0 07:FDA0: 4E 87     .word ofs_005_0x01075E_0F
- D 3 - I - 0x01FDB2 07:FDA2: 4E 87     .word ofs_005_0x01075E_10
- D 3 - I - 0x01FDB4 07:FDA4: D6 FE     .word ofs_005_FED6_11
- D 3 - I - 0x01FDB6 07:FDA6: 25 80     .word ofs_005_0x010035_12
- D 3 - I - 0x01FDB8 07:FDA8: 25 80     .word ofs_005_0x010035_13
- D 3 - I - 0x01FDBA 07:FDAA: 25 80     .word ofs_005_0x010035_14
- D 3 - I - 0x01FDBC 07:FDAC: 61 85     .word ofs_005_0x010571_15
- D 3 - I - 0x01FDBE 07:FDAE: 25 80     .word ofs_005_0x010035_16
- D 3 - I - 0x01FDC0 07:FDB0: 25 80     .word ofs_005_0x010035_17
- D 3 - I - 0x01FDC2 07:FDB2: 94 FC     .word ofs_005_FC94_18_RTS
- - - - - - 0x01FDC4 07:FDB4: 94 FC     .word ofs_004_FC94_19_RTS
- D 3 - I - 0x01FDC6 07:FDB6: 75 87     .word ofs_005_0x010785_1A
- D 3 - I - 0x01FDC8 07:FDB8: 1D 84     .word ofs_005_0x01042D_1B
- D 3 - I - 0x01FDCA 07:FDBA: 35 84     .word ofs_005_0x010445_1C
- D 3 - I - 0x01FDCC 07:FDBC: 35 84     .word ofs_005_0x010445_1D
- D 3 - I - 0x01FDCE 07:FDBE: C0 8C     .word ofs_005_0x010CD0_1E
- D 3 - I - 0x01FDD0 07:FDC0: 37 87     .word ofs_005_0x010747_1F
- D 3 - I - 0x01FDD2 07:FDC2: 3C 87     .word ofs_005_0x01074C_20
- D 3 - I - 0x01FDD4 07:FDC4: 55 87     .word ofs_005_0x010765_21
- D 3 - I - 0x01FDD6 07:FDC6: C0 8C     .word ofs_005_0x010CD0_22
- D 3 - I - 0x01FDD8 07:FDC8: D6 FE     .word ofs_005_FED6_23
- D 3 - I - 0x01FDDA 07:FDCA: D6 FE     .word ofs_005_FED6_24
- D 3 - I - 0x01FDDC 07:FDCC: D6 FE     .word ofs_005_FED6_25
- D 3 - I - 0x01FDDE 07:FDCE: D6 FE     .word ofs_005_FED6_26
- D 3 - I - 0x01FDE0 07:FDD0: D6 FE     .word ofs_005_FED6_27
- D 3 - I - 0x01FDE2 07:FDD2: C2 92     .word ofs_005_0x0112D2_28
- - - - - - 0x01FDE4 07:FDD4: 94 FC     .word ofs_004_FC94_29_RTS
- D 3 - I - 0x01FDE6 07:FDD6: 25 80     .word ofs_005_0x010035_2A
- D 3 - I - 0x01FDE8 07:FDD8: 15 84     .word ofs_005_0x010425_2B
- D 3 - I - 0x01FDEA 07:FDDA: 15 84     .word ofs_005_0x010425_2C
- D 3 - I - 0x01FDEC 07:FDDC: 15 84     .word ofs_005_0x010425_2D
- D 3 - I - 0x01FDEE 07:FDDE: 94 FC     .word ofs_005_FC94_2E_RTS
- - - - - - 0x01FDF0 07:FDE0: 8A 87     .word ofs_005_0x01079A_2F
- D 3 - I - 0x01FDF2 07:FDE2: 25 80     .word ofs_005_0x010035_30
- D 3 - I - 0x01FDF4 07:FDE4: 87 94     .word ofs_005_0x011497_31
- D 3 - I - 0x01FDF6 07:FDE6: 87 94     .word ofs_005_0x011497_32
- D 3 - I - 0x01FDF8 07:FDE8: 61 A1     .word ofs_005_0x012171_33
- D 3 - I - 0x01FDFA 07:FDEA: 61 A1     .word ofs_005_0x012171_34
- D 3 - I - 0x01FDFC 07:FDEC: 48 FE     .word ofs_005_FE48_35
- D 3 - I - 0x01FDFE 07:FDEE: 78 FE     .word ofs_005_FE78_36
- D 3 - I - 0x01FE00 07:FDF0: CA A8     .word ofs_005_0x0128DA_37
- D 3 - I - 0x01FE02 07:FDF2: 5A 94     .word ofs_005_0x01146A_38
- D 3 - I - 0x01FE04 07:FDF4: 79 94     .word ofs_005_0x011489_39
- D 3 - I - 0x01FE06 07:FDF6: E4 A8     .word ofs_005_0x0128F4_3A
- D 3 - I - 0x01FE08 07:FDF8: E4 A8     .word ofs_005_0x0128F4_3B
- D 3 - I - 0x01FE0A 07:FDFA: 0C A1     .word ofs_005_0x01211C_3C
- D 3 - I - 0x01FE0C 07:FDFC: 47 94     .word ofs_005_0x011457_3D
- D 3 - I - 0x01FE0E 07:FDFE: 6F A9     .word ofs_005_0x01297F_3E
- D 3 - I - 0x01FE10 07:FE00: 94 FC     .word ofs_005_FC94_3F_RTS
- D 3 - I - 0x01FE12 07:FE02: 94 FC     .word ofs_005_FC94_40_RTS
- D 3 - I - 0x01FE14 07:FE04: E2 93     .word ofs_005_0x0113F2_41
- - - - - - 0x01FE16 07:FE06: 8D A0     .word ofs_005_0x01209D_42
- D 3 - I - 0x01FE18 07:FE08: 8D A0     .word ofs_005_0x01209D_43
- D 3 - I - 0x01FE1A 07:FE0A: 8D A0     .word ofs_005_0x01209D_44
- D 3 - I - 0x01FE1C 07:FE0C: 8D A0     .word ofs_005_0x01209D_45
- D 3 - I - 0x01FE1E 07:FE0E: 79 A1     .word ofs_005_0x012189_46
- D 3 - I - 0x01FE20 07:FE10: 2E A9     .word ofs_005_0x01293E_47
- D 3 - I - 0x01FE22 07:FE12: 2E A9     .word ofs_005_0x01293E_48
- D 3 - I - 0x01FE24 07:FE14: 58 FE     .word ofs_005_FE58_49
- D 3 - I - 0x01FE26 07:FE16: 58 FE     .word ofs_005_FE58_4A
- D 3 - I - 0x01FE28 07:FE18: 68 FE     .word ofs_005_FE68_4B
- - - - - - 0x01FE2A 07:FE1A: 68 FE     .word ofs_005_FE68_4C
- D 3 - I - 0x01FE2C 07:FE1C: 68 FE     .word ofs_005_FE68_4D
- - - - - - 0x01FE2E 07:FE1E: 68 FE     .word ofs_005_FE68_4E
- D 3 - I - 0x01FE30 07:FE20: 68 FE     .word ofs_005_FE68_4F
- - - - - - 0x01FE32 07:FE22: 68 FE     .word ofs_005_FE68_50
- D 3 - I - 0x01FE34 07:FE24: 70 FE     .word ofs_005_FE70_51
- - - - - - 0x01FE36 07:FE26: 68 FE     .word ofs_005_FE68_52
- D 3 - I - 0x01FE38 07:FE28: 15 80     .word ofs_005_0x010025_53
- - - - - - 0x01FE3A 07:FE2A: 19 80     .word ofs_005_0x010029_54
- D 3 - I - 0x01FE3C 07:FE2C: 15 80     .word ofs_005_0x010025_55
- D 3 - I - 0x01FE3E 07:FE2E: 15 80     .word ofs_005_0x010025_56
- D 3 - I - 0x01FE40 07:FE30: 15 80     .word ofs_005_0x010025_57
- D 3 - I - 0x01FE42 07:FE32: 15 80     .word ofs_005_0x010025_58
- D 3 - I - 0x01FE44 07:FE34: 15 80     .word ofs_005_0x010025_59
- - - - - - 0x01FE46 07:FE36: 15 80     .word ofs_005_0x010025_5A
- D 3 - I - 0x01FE48 07:FE38: DA FE     .word ofs_005_FEDA_5A
- D 3 - I - 0x01FE4A 07:FE3A: DA FE     .word ofs_005_FEDA_5B
- - - - - - 0x01FE4C 07:FE3C: A6 FE     .word ofs_005_FEA6_5C
- D 3 - I - 0x01FE4E 07:FE3E: D1 FE     .word ofs_005_FED1_5D



ofs_004_FE40_2E:
C - - J - - 0x01FE50 07:FE40: A9 01     LDA #con_prg_bank + $01
C - - - - - 0x01FE52 07:FE42: 20 AC FF  JSR sub_FFAC_prg_bankswitch
C - - - - - 0x01FE55 07:FE45: 4C 18 A0  JMP loc_0x006028



ofs_005_FE48_35:
C - - J - - 0x01FE58 07:FE48: A9 01     LDA #con_prg_bank + $01
C - - - - - 0x01FE5A 07:FE4A: 20 AC FF  JSR sub_FFAC_prg_bankswitch
C - - - - - 0x01FE5D 07:FE4D: 4C E2 A2  JMP loc_0x0062F2



ofs_004_FE50_35:
C - - J - - 0x01FE60 07:FE50: A9 01     LDA #con_prg_bank + $01
C - - - - - 0x01FE62 07:FE52: 20 AC FF  JSR sub_FFAC_prg_bankswitch
C - - - - - 0x01FE65 07:FE55: 4C EE A3  JMP loc_0x0063FE



ofs_005_FE58_49:
ofs_005_FE58_4A:
C - - J - - 0x01FE68 07:FE58: A9 01     LDA #con_prg_bank + $01
C - - - - - 0x01FE6A 07:FE5A: 20 AC FF  JSR sub_FFAC_prg_bankswitch
C - - - - - 0x01FE6D 07:FE5D: 4C 1A A3  JMP loc_0x00632A



ofs_004_FE60_49:
ofs_004_FE60_4A:
C - - J - - 0x01FE70 07:FE60: A9 01     LDA #con_prg_bank + $01
C - - - - - 0x01FE72 07:FE62: 20 AC FF  JSR sub_FFAC_prg_bankswitch
C - - - - - 0x01FE75 07:FE65: 4C 4A A3  JMP loc_0x00635A



ofs_005_FE68_4B:
ofs_005_FE68_4C:
ofs_005_FE68_4D:
ofs_005_FE68_4E:
ofs_005_FE68_4F:
ofs_005_FE68_50:
ofs_005_FE68_52:
C - - J - - 0x01FE78 07:FE68: A9 01     LDA #con_prg_bank + $01
C - - - - - 0x01FE7A 07:FE6A: 20 AC FF  JSR sub_FFAC_prg_bankswitch
C - - - - - 0x01FE7D 07:FE6D: 4C FC 89  JMP loc_0x004A0C



ofs_005_FE70_51:
C - - J - - 0x01FE80 07:FE70: A9 01     LDA #con_prg_bank + $01
C - - - - - 0x01FE82 07:FE72: 20 AC FF  JSR sub_FFAC_prg_bankswitch
C - - - - - 0x01FE85 07:FE75: 4C 40 8A  JMP loc_0x004A50



ofs_005_FE78_36:
C - - J - - 0x01FE88 07:FE78: A9 01     LDA #con_prg_bank + $01
C - - - - - 0x01FE8A 07:FE7A: 20 AC FF  JSR sub_FFAC_prg_bankswitch
C - - - - - 0x01FE8D 07:FE7D: 4C B4 8A  JMP loc_0x004AC4



ofs_004_FE80_4B:
ofs_004_FE80_4C:
ofs_004_FE80_4D:
ofs_004_FE80_4E:
ofs_004_FE80_4F:
ofs_004_FE80_50:
ofs_004_FE80_52:
C - - J - - 0x01FE90 07:FE80: A9 01     LDA #con_prg_bank + $01
C - - - - - 0x01FE92 07:FE82: 20 AC FF  JSR sub_FFAC_prg_bankswitch
C - - - - - 0x01FE95 07:FE85: 4C D9 8A  JMP loc_0x004AE9



ofs_004_FE88_51:
C - - J - - 0x01FE98 07:FE88: A9 01     LDA #con_prg_bank + $01
C - - - - - 0x01FE9A 07:FE8A: 20 AC FF  JSR sub_FFAC_prg_bankswitch
C - - - - - 0x01FE9D 07:FE8D: 4C A6 8B  JMP loc_0x004BB6



ofs_004_FE90_36:
C - - J - - 0x01FEA0 07:FE90: A9 01     LDA #con_prg_bank + $01
C - - - - - 0x01FEA2 07:FE92: 20 AC FF  JSR sub_FFAC_prg_bankswitch
C - - - - - 0x01FEA5 07:FE95: 4C 5A 8C  JMP loc_0x004C6A



sub_FE98_decrease_invincibility_timer:
sub_0x01FEA8_decrease_invincibility_timer:
C - - - - - 0x01FEA8 07:FE98: BD F0 04  LDA ram_invinc_timer,X
C - - - - - 0x01FEAB 07:FE9B: F0 08     BEQ bra_FEA5_RTS
C - - - - - 0x01FEAD 07:FE9D: A5 15     LDA ram_frame_cnt
C - - - - - 0x01FEAF 07:FE9F: 4A        LSR
C - - - - - 0x01FEB0 07:FEA0: B0 03     BCS bra_FEA5_RTS
C - - - - - 0x01FEB2 07:FEA2: DE F0 04  DEC ram_invinc_timer,X
bra_FEA5_RTS:
C - - - - - 0x01FEB5 07:FEA5: 60        RTS



ofs_004_FEA6_5D:
ofs_005_FEA6_5C:
sub_0x01FEB6:
C - - - - - 0x01FEB6 07:FEA6: A9 20     LDA #con_sfx_2_enemy_killed
C - - - - - 0x01FEB8 07:FEA8: 8D 02 06  STA ram_sfx_2
C - - - - - 0x01FEBB 07:FEAB: A9 10     LDA #$10
C - - - - - 0x01FEBD 07:FEAD: 9D 05 04  STA ram_0405,X
C - - - - - 0x01FEC0 07:FEB0: 60        RTS



sub_0x01FEC1_destroy_object:
loc_0x01FEC1_destroy_object:
C D 3 - - - 0x01FEC1 07:FEB1: A9 00     LDA #con_obj_id_00
sub_0x01FEC3_create_object:
loc_0x01FEC3_create_object:
; bzk optimize, transfer all this to SRAM (or here isntead)
C D 3 - - - 0x01FEC3 07:FEB3: 9D 4F 03  STA ram_obj_id,X
C - - - - - 0x01FEC6 07:FEB6: A9 00     LDA #$00
C - - - - - 0x01FEC8 07:FEB8: 4C A5 71  JMP loc_bat_71A5_reset_obj_stats



sub_FEBB:
sub_0x01FECB:
C - - - - - 0x01FECB 07:FEBB: A0 0C     LDY #$0C
bra_FEBD_loop:
C - - - - - 0x01FECD 07:FEBD: 88        DEY
C - - - - - 0x01FECE 07:FEBE: F0 07     BEQ bra_FEC7    ; bzk optimize, branch to RTS
C - - - - - 0x01FED0 07:FEC0: B9 4F 03  LDA ram_obj_id,Y
C - - - - - 0x01FED3 07:FEC3: D0 F8     BNE bra_FEBD_loop
C - - - - - 0x01FED5 07:FEC5: 84 59     STY ram_0059
bra_FEC7:
C - - - - - 0x01FED7 07:FEC7: C0 00     CPY #$00
C - - - - - 0x01FED9 07:FEC9: 60        RTS



loc_FECA:
C D 3 - - - 0x01FEDA 07:FECA: A9 81     LDA #$81
C - - - - - 0x01FEDC 07:FECC: 9D BF 04  STA ram_04BF,X
C - - - - - 0x01FEDF 07:FECF: D0 05     BNE bra_FED6    ; jmp



ofs_005_FED1_5D:
C - - J - - 0x01FEE1 07:FED1: A9 01     LDA #$01
C - - - - - 0x01FEE3 07:FED3: 8D 1A 05  STA ram_051A
bra_FED6:
ofs_005_FED6_11:
ofs_005_FED6_23:
ofs_005_FED6_24:
ofs_005_FED6_25:
ofs_005_FED6_26:
ofs_005_FED6_27:
sub_0x01FEE6:
loc_0x01FEE6:
C D 3 - - - 0x01FEE6 07:FED6: A9 00     LDA #$00
C - - - - - 0x01FEE8 07:FED8: 95 28     STA ram_obj_timer,X
loc_FEDA:
ofs_005_FEDA_5A:
ofs_005_FEDA_5B:
sub_0x01FEEA:
loc_0x01FEEA:
C D 3 - - - 0x01FEEA 07:FEDA: A9 00     LDA #$00
C - - - - - 0x01FEEC 07:FEDC: 9D 05 04  STA ram_0405,X
C - - - - - 0x01FEEF 07:FEDF: 60        RTS



tbl_FEE0:
- D 3 - - - 0x01FEF0 07:FEE0: 3F        .byte $3F   ; 00
- D 3 - - - 0x01FEF1 07:FEE1: 0C        .byte $0C   ; 01
- D 3 - - - 0x01FEF2 07:FEE2: 04        .byte $04   ; 02
- D 3 - - - 0x01FEF3 07:FEE3: 0F        .byte $0F   ; 03
- D 3 - - - 0x01FEF4 07:FEE4: 17        .byte $17   ; 04
- D 3 - - - 0x01FEF5 07:FEE5: 37        .byte $37   ; 05
- D 3 - - - 0x01FEF6 07:FEE6: 12        .byte $12   ; 06
- D 3 - - - 0x01FEF7 07:FEE7: FF        .byte $FF   ; 07



tbl_FEE8:
- - - - - - 0x01FEF8 07:FEE8: 12        .byte $12   ; 00
- D 3 - - - 0x01FEF9 07:FEE9: 11        .byte $11   ; 01
- D 3 - - - 0x01FEFA 07:FEEA: 22        .byte $22   ; 02
- D 3 - - - 0x01FEFB 07:FEEB: 21        .byte $21   ; 03
- D 3 - - - 0x01FEFC 07:FEEC: 31        .byte $31   ; 04
- D 3 - - - 0x01FEFD 07:FEED: 32        .byte $32   ; 05
- D 3 - - - 0x01FEFE 07:FEEE: 33        .byte $33   ; 06
- D 3 - - - 0x01FEFF 07:FEEF: 35        .byte $35   ; 07
- D 3 - - - 0x01FF00 07:FEF0: 34        .byte $34   ; 08
- D 3 - - - 0x01FF01 07:FEF1: 36        .byte $36   ; 09
- D 3 - - - 0x01FF02 07:FEF2: 37        .byte $37   ; 0A
- - - - - - 0x01FF03 07:FEF3: 37        .byte $37   ; 0B



ofs_004_FEF4_5E:
C - - J - - 0x01FF04 07:FEF4: AC 1A 05  LDY ram_051A
C - - - - - 0x01FF07 07:FEF7: C0 0C     CPY #$0C
C - - - - - 0x01FF09 07:FEF9: B0 2D     BCS bra_FF28_RTS
C - - - - - 0x01FF0B 07:FEFB: A5 15     LDA ram_frame_cnt
C - - - - - 0x01FF0D 07:FEFD: 29 07     AND #$07
C - - - - - 0x01FF0F 07:FEFF: C9 04     CMP #$04
C - - - - - 0x01FF11 07:FF01: D0 25     BNE bra_FF28_RTS
C - - - - - 0x01FF13 07:FF03: EE 1A 05  INC ram_051A
C - - - - - 0x01FF16 07:FF06: C0 0B     CPY #$0B
C - - - - - 0x01FF18 07:FF08: F0 1F     BEQ bra_FF29
loc_FF0A:
C - - - - - 0x01FF1A 07:FF0A: 98        TYA
C - - - - - 0x01FF1B 07:FF0B: 48        PHA
C - - - - - 0x01FF1C 07:FF0C: A0 07     LDY #$07
bra_FF0E_loop:
C - - - - - 0x01FF1E 07:FF0E: B9 E0 FE  LDA tbl_FEE0,Y
C - - - - - 0x01FF21 07:FF11: 99 02 03  STA ram_0302,Y
C - - - - - 0x01FF24 07:FF14: 88        DEY
C - - - - - 0x01FF25 07:FF15: 10 F7     BPL bra_FF0E_loop
C - - - - - 0x01FF27 07:FF17: 68        PLA
C - - - - - 0x01FF28 07:FF18: A8        TAY
C - - - - - 0x01FF29 07:FF19: B9 E8 FE  LDA tbl_FEE8,Y
C - - - - - 0x01FF2C 07:FF1C: 8D 08 03  STA ram_0308
C - - - - - 0x01FF2F 07:FF1F: C0 0A     CPY #$0A
C - - - - - 0x01FF31 07:FF21: D0 05     BNE bra_FF28_RTS
C - - - - - 0x01FF33 07:FF23: A9 99     LDA #$99
C - - - - - 0x01FF35 07:FF25: 8D 4A 03  STA ram_min_collision_tile
bra_FF28_RTS:
C - - - - - 0x01FF38 07:FF28: 60        RTS
bra_FF29:
; triggers at 48698 frame 1st quest demo, when going into sand after playing flute opens stairs
C - - - - - 0x01FF39 07:FF29: A9 60     LDA #$60
C - - - - - 0x01FF3B 07:FF2B: 95 70     STA ram_pos_X,X
C - - - - - 0x01FF3D 07:FF2D: A9 90     LDA #$90
C - - - - - 0x01FF3F 07:FF2F: 95 84     STA ram_pos_Y,X
C - - - - - 0x01FF41 07:FF31: 4C 32 8F  JMP loc_0x010F42



loc_0x01FF44:
- - - - - - 0x01FF44 07:FF34: A5 15     LDA ram_frame_cnt
- - - - - - 0x01FF46 07:FF36: 29 04     AND #$04
- - - - - - 0x01FF48 07:FF38: F0 EE     BEQ bra_FF28_RTS
- - - - - - 0x01FF4A 07:FF3A: CE 1A 05  DEC ram_051A
- - - - - - 0x01FF4D 07:FF3D: AC 1A 05  LDY ram_051A
- - - - - - 0x01FF50 07:FF40: 4C 0A FF  JMP loc_FF0A


; bzk garbage
- - - - - - 0x01FF53 07:FF43: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 



vec_FF50_RESET:
loc_0x01FF60_RESET_vector:
C - - - - - 0x01FF60 07:FF50: 78        SEI
C - - - - - 0x01FF61 07:FF51: D8        CLD
C - - - - - 0x01FF62 07:FF52: A9 00     LDA #$00
C - - - - - 0x01FF64 07:FF54: 8D 00 20  STA $2000
C - - - - - 0x01FF67 07:FF57: A2 FF     LDX #$FF
C - - - - - 0x01FF69 07:FF59: 9A        TXS
bra_FF5A_loop:
C - - - - - 0x01FF6A 07:FF5A: AD 02 20  LDA $2002
C - - - - - 0x01FF6D 07:FF5D: 29 80     AND #$80
C - - - - - 0x01FF6F 07:FF5F: F0 F9     BEQ bra_FF5A_loop
bra_FF61_loop:
C - - - - - 0x01FF71 07:FF61: AD 02 20  LDA $2002
C - - - - - 0x01FF74 07:FF64: 29 80     AND #$80
C - - - - - 0x01FF76 07:FF66: F0 F9     BEQ bra_FF61_loop
C - - - - - 0x01FF78 07:FF68: 09 FF     ORA #$FF
C - - - - - 0x01FF7A 07:FF6A: 8D 00 80  STA $8000
C - - - - - 0x01FF7D 07:FF6D: 8D 00 A0  STA $A000
C - - - - - 0x01FF80 07:FF70: 8D 00 C0  STA $C000
C - - - - - 0x01FF83 07:FF73: 8D 00 E0  STA $E000
C - - - - - 0x01FF86 07:FF76: A9 0F     LDA #con_mirroring_H
C - - - - - 0x01FF88 07:FF78: 20 98 FF  JSR sub_FF98_set_mirroring
C - - - - - 0x01FF8B 07:FF7B: A9 00     LDA #$00
C - - - - - 0x01FF8D 07:FF7D: 8D 00 A0  STA $A000
C - - - - - 0x01FF90 07:FF80: 4A        LSR
C - - - - - 0x01FF91 07:FF81: 8D 00 A0  STA $A000
C - - - - - 0x01FF94 07:FF84: 4A        LSR
C - - - - - 0x01FF95 07:FF85: 8D 00 A0  STA $A000
C - - - - - 0x01FF98 07:FF88: 4A        LSR
C - - - - - 0x01FF99 07:FF89: 8D 00 A0  STA $A000
C - - - - - 0x01FF9C 07:FF8C: 4A        LSR
C - - - - - 0x01FF9D 07:FF8D: 8D 00 A0  STA $A000
C - - - - - 0x01FFA0 07:FF90: A9 07     LDA #con_prg_bank + $07
C - - - - - 0x01FFA2 07:FF92: 20 AC FF  JSR sub_FFAC_prg_bankswitch
C - - - - - 0x01FFA5 07:FF95: 4C 40 E4  JMP loc_E440



sub_FF98_set_mirroring:
C - - - - - 0x01FFA8 07:FF98: 8D 00 80  STA $8000
C - - - - - 0x01FFAB 07:FF9B: 4A        LSR
C - - - - - 0x01FFAC 07:FF9C: 8D 00 80  STA $8000
C - - - - - 0x01FFAF 07:FF9F: 4A        LSR
C - - - - - 0x01FFB0 07:FFA0: 8D 00 80  STA $8000
C - - - - - 0x01FFB3 07:FFA3: 4A        LSR
C - - - - - 0x01FFB4 07:FFA4: 8D 00 80  STA $8000
C - - - - - 0x01FFB7 07:FFA7: 4A        LSR
C - - - - - 0x01FFB8 07:FFA8: 8D 00 80  STA $8000
C - - - - - 0x01FFBB 07:FFAB: 60        RTS



sub_FFAC_prg_bankswitch:
loc_FFAC_prg_bankswitch:
C D 3 - - - 0x01FFBC 07:FFAC: 8D 00 E0  STA $E000
C - - - - - 0x01FFBF 07:FFAF: 4A        LSR
C - - - - - 0x01FFC0 07:FFB0: 8D 00 E0  STA $E000
C - - - - - 0x01FFC3 07:FFB3: 4A        LSR
C - - - - - 0x01FFC4 07:FFB4: 8D 00 E0  STA $E000
C - - - - - 0x01FFC7 07:FFB7: 4A        LSR
C - - - - - 0x01FFC8 07:FFB8: 8D 00 E0  STA $E000
C - - - - - 0x01FFCB 07:FFBB: 4A        LSR
C - - - - - 0x01FFCC 07:FFBC: 8D 00 E0  STA $E000
C - - - - - 0x01FFCF 07:FFBF: 60        RTS


; bzk garbage
- - - - - - 0x01FFD0 07:FFC0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01FFE0 07:FFD0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01FFF0 07:FFE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 


; bzk garbage
- - - - - - 0x01FFFB 07:FFEB: 5A        .byte $5A   ; 
- - - - - - 0x01FFFC 07:FFEC: 45        .byte $45   ; 
- - - - - - 0x01FFFD 07:FFED: 4C        .byte $4C   ; 
- - - - - - 0x01FFFE 07:FFEE: 44        .byte $44   ; 
- - - - - - 0x01FFFF 07:FFEF: 41        .byte $41   ; 


; bzk garbage
vec_FFF0_IRQ:
- - - - - - 0x020000 07:FFF0: D7        .byte $D7   ; 
- - - - - - 0x020001 07:FFF1: C8        .byte $C8   ; 
- - - - - - 0x020002 07:FFF2: 00        .byte $00   ; 
- - - - - - 0x020003 07:FFF3: 00        .byte $00   ; 
- - - - - - 0x020004 07:FFF4: 38        .byte $38   ; 
- - - - - - 0x020005 07:FFF5: 04        .byte $04   ; 
- - - - - - 0x020006 07:FFF6: 01        .byte $01   ; 
- - - - - - 0x020007 07:FFF7: 04        .byte $04   ; 
- - - - - - 0x020008 07:FFF8: 01        .byte $01   ; 
- - - - - - 0x020009 07:FFF9: BE        .byte $BE   ; 



.segment "VECTORS"
- D 3 - - - 0x02000A 07:FFFA: 84 E4     .word vec_E484_NMI
- D 3 - - - 0x02000C 07:FFFC: 50 FF     .word vec_FF50_RESET
- - - - - - 0x02000E 07:FFFE: F0 FF     .word vec_FFF0_IRQ



