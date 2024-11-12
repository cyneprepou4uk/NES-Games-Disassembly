.segment "BANK_88"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
.org $8000  ; for listing file
; 0x010010-0x01400F
; code starts at 0x0131C4



.export off_ch_00_0x01076E_63
.export off_ch_01_0x010797_63
.export off_ch_02_0x0107C5_63
.export off_ch_05_0x0107F6_63
.export off_ch_00_0x01080F_65
.export off_ch_01_0x010862_65
.export off_ch_02_0x010890_65
.export off_ch_05_0x0108B9_65
.export off_ch_00_0x0108D9_58
.export off_ch_01_0x010A3F_58
.export off_ch_02_0x010BCD_58
.export off_ch_05_0x010C6B_58
.export off_ch_00_0x010D23_5B
.export off_ch_01_0x010E48_5B
.export off_ch_02_0x010EF4_5B
.export off_ch_05_0x010F9E_5B
.export off_ch_00_0x011036_5C
.export off_ch_01_0x01123F_5C
.export off_ch_02_0x011395_5C
.export off_ch_05_0x011488_5C
.export off_ch_00_0x011532_5E
.export off_ch_01_0x0117D6_5E
.export off_ch_02_0x0119B2_5E
.export off_ch_05_0x011A7E_5E
.export off_ch_00_0x011BE2_64
.export off_ch_01_0x011C41_64
.export off_ch_02_0x011C85_64
.export off_ch_05_0x011CE3_64
.export off_ch_00_0x011D03_5F
.export off_ch_01_0x011EA8_5F
.export off_ch_02_0x012032_5F
.export off_ch_05_0x0120F5_5F
.export off_ch_00_0x01218D_60
.export off_ch_01_0x012313_60
.export off_ch_02_0x012507_60
.export off_ch_05_0x012599_60
.export off_ch_05_0x01259F_61
.export off_ch_00_0x012668_61
.export off_ch_01_0x01266D_61
.export off_ch_02_0x012672_61
.export off_ch_00_0x012677_62
.export off_ch_01_0x012747_62
.export off_ch_02_0x012788_62
.export off_ch_05_0x0127AB_62
.export off_ch_00_0x0127E8_66
.export off_ch_01_0x012A83_66
.export off_ch_02_0x012BD1_66
.export off_ch_05_0x012C6E_66_FF
.export off_ch_00_0x012C6F_5D
.export off_ch_00_0x012C6F_6A
.export off_ch_01_0x012CAA_5D
.export off_ch_01_0x012CAA_6A
.export off_ch_02_0x012CEE_5D
.export off_ch_02_0x012CEE_6A
.export off_ch_05_0x012D1B_5D
.export off_ch_05_0x012D1B_6A
.export off_ch_01_0x012D5C_6B
.export off_ch_00_0x012D7A_6B
.export off_ch_02_0x012DC5_6B
.export off_ch_05_0x012DD3_6B_FF
.export off_ch_00_0x012DD4_6C
.export off_ch_01_0x012E34_6C
.export off_ch_02_0x012E7E_6C
.export off_ch_05_0x012EBA_6C_FF
.export off_ch_00_0x012EBB_68
.export off_ch_01_0x012FF7_68
.export off_ch_02_0x013135_68
.export off_ch_05_0x0131C3_68_FF
.export sub_0x0131C4
.export sub_0x01320B
.export sub_0x013358
.export sub_0x013364
.export sub_0x0135C7
.export sub_0x01361C
.export sub_0x01369E
.export sub_0x013721
.export sub_0x013740
.export sub_0x013867
.export sub_0x01387D
.export tbl_0x013893_pos_Y_hi
.export tbl_0x0138E1_pos_Y_hi
.export sub_0x0138FB
.export sub_0x013916
.export sub_0x0139BC
.export sub_0x013AA6
.export _off005_0x013AE4_16



; bzk bank id, must be located at 8000 in each bank
- D 0 - - - 0x010010 04:8000: 88        .byte con_prg_bank + $88   ; 



; common identical code/data for banks 88, 8A and 98
.include "copy_bank___8001_875D.asm"



off_ch_00_0x01076E_63:
- D 0 - I - 0x01076E 04:875E: D8        .byte con_se_cb_1_D0 + $08, $79, con_9E25_05 + $80   ; 
- D 0 - I - 0x010771 04:8761: 27        .byte $27   ; 
- D 0 - I - 0x010772 04:8762: E9        .byte con_se_cb_1_E9, $B9   ; 
- D 0 - I - 0x010774 04:8764: EB        .byte con_se_cb_1_EB, con_9E7B_67, $21   ; 
- D 0 - I - 0x010777 04:8767: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x010778 04:8768: 00        .byte $00   ; 
- D 0 - I - 0x010779 04:8769: 00        .byte $00   ; 
- D 0 - I - 0x01077A 04:876A: C0        .byte con_se_cb_1_C0 + $00   ; 
- D 0 - I - 0x01077B 04:876B: 40        .byte $40   ; 
- D 0 - I - 0x01077C 04:876C: C0        .byte con_se_cb_1_C0 + $00   ; 
- D 0 - I - 0x01077D 04:876D: 70        .byte $70   ; 
- D 0 - I - 0x01077E 04:876E: C0        .byte con_se_cb_1_C0 + $00   ; 
- D 0 - I - 0x01077F 04:876F: E8        .byte con_se_cb_1_E8, $40 + $05   ; 
- D 0 - I - 0x010781 04:8771: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x010782 04:8772: 20        .byte $20   ; 
- D 0 - I - 0x010783 04:8773: E9        .byte con_se_cb_1_E9, $B7   ; 
- D 0 - I - 0x010785 04:8775: 01        .byte $01   ; 
- D 0 - I - 0x010786 04:8776: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x010787 04:8777: 71        .byte $71   ; 
- D 0 - I - 0x010788 04:8778: 91        .byte $91   ; 
- D 0 - I - 0x010789 04:8779: 51        .byte $51   ; 
- D 0 - I - 0x01078A 04:877A: 00        .byte $00   ; 
- D 0 - I - 0x01078B 04:877B: 40        .byte $40   ; 
- D 0 - I - 0x01078C 04:877C: 90        .byte $90   ; 
- D 0 - I - 0x01078D 04:877D: 80        .byte $80   ; 
- D 0 - I - 0x01078E 04:877E: 90        .byte $90   ; 
- D 0 - I - 0x01078F 04:877F: B0        .byte $B0   ; 
- D 0 - I - 0x010790 04:8780: E9        .byte con_se_cb_1_E9, $00   ; 
- D 0 - I - 0x010792 04:8782: E8        .byte con_se_cb_1_E8, $30 + $04   ; 
- D 0 - I - 0x010794 04:8784: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x010795 04:8785: 09        .byte $09   ; 
- D 0 - I - 0x010796 04:8786: FF        .byte con_se_cb_1_FF   ; 



off_ch_01_0x010797_63:
- D 0 - I - 0x010797 04:8787: D8        .byte con_se_cb_1_D0 + $08, $79, con_9E25_04 + $80   ; 
- D 0 - I - 0x01079A 04:878A: 46        .byte $46   ; 
- D 0 - I - 0x01079B 04:878B: E9        .byte con_se_cb_1_E9, $B9   ; 
- D 0 - I - 0x01079D 04:878D: EB        .byte con_se_cb_1_EB, con_9E7B_67, $21   ; 
- D 0 - I - 0x0107A0 04:8790: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x0107A1 04:8791: 90        .byte $90   ; 
- D 0 - I - 0x0107A2 04:8792: B0        .byte $B0   ; 
- D 0 - I - 0x0107A3 04:8793: C0        .byte con_se_cb_1_C0 + $00   ; 
- D 0 - I - 0x0107A4 04:8794: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x0107A5 04:8795: 00        .byte $00   ; 
- D 0 - I - 0x0107A6 04:8796: C0        .byte con_se_cb_1_C0 + $00   ; 
- D 0 - I - 0x0107A7 04:8797: 20        .byte $20   ; 
- D 0 - I - 0x0107A8 04:8798: C0        .byte con_se_cb_1_C0 + $00   ; 
- D 0 - I - 0x0107A9 04:8799: 70        .byte $70   ; 
- D 0 - I - 0x0107AA 04:879A: E8        .byte con_se_cb_1_E8, $30 + $04   ; 
- D 0 - I - 0x0107AC 04:879C: 50        .byte $50   ; 
- D 0 - I - 0x0107AD 04:879D: 40        .byte $40   ; 
- D 0 - I - 0x0107AE 04:879E: 20        .byte $20   ; 
- D 0 - I - 0x0107AF 04:879F: 00        .byte $00   ; 
- D 0 - I - 0x0107B0 04:87A0: 40        .byte $40   ; 
- D 0 - I - 0x0107B1 04:87A1: 20        .byte $20   ; 
- D 0 - I - 0x0107B2 04:87A2: 00        .byte $00   ; 
- D 0 - I - 0x0107B3 04:87A3: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x0107B4 04:87A4: B0        .byte $B0   ; 
- D 0 - I - 0x0107B5 04:87A5: 90        .byte $90   ; 
- D 0 - I - 0x0107B6 04:87A6: B0        .byte $B0   ; 
- D 0 - I - 0x0107B7 04:87A7: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x0107B8 04:87A8: 00        .byte $00   ; 
- D 0 - I - 0x0107B9 04:87A9: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x0107BA 04:87AA: B0        .byte $B0   ; 
- D 0 - I - 0x0107BB 04:87AB: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x0107BC 04:87AC: 00        .byte $00   ; 
- D 0 - I - 0x0107BD 04:87AD: 20        .byte $20   ; 
- D 0 - I - 0x0107BE 04:87AE: E9        .byte con_se_cb_1_E9, $00   ; 
- D 0 - I - 0x0107C0 04:87B0: E8        .byte con_se_cb_1_E8, $30 + $04   ; 
- D 0 - I - 0x0107C2 04:87B2: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x0107C3 04:87B3: 49        .byte $49   ; 
- D 0 - I - 0x0107C4 04:87B4: FF        .byte con_se_cb_1_FF   ; 



off_ch_02_0x0107C5_63:
- D 0 - I - 0x0107C5 04:87B5: D8        .byte con_se_cb_1_D0 + $08, $12   ; 
- D 0 - I - 0x0107C7 04:87B7: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 0 - I - 0x0107C8 04:87B8: 90        .byte $90   ; 
- D 0 - I - 0x0107C9 04:87B9: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x0107CA 04:87BA: 90        .byte $90   ; 
- D 0 - I - 0x0107CB 04:87BB: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 0 - I - 0x0107CC 04:87BC: 90        .byte $90   ; 
- D 0 - I - 0x0107CD 04:87BD: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x0107CE 04:87BE: 90        .byte $90   ; 
- D 0 - I - 0x0107CF 04:87BF: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 0 - I - 0x0107D0 04:87C0: B0        .byte $B0   ; 
- D 0 - I - 0x0107D1 04:87C1: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x0107D2 04:87C2: B0        .byte $B0   ; 
- D 0 - I - 0x0107D3 04:87C3: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 0 - I - 0x0107D4 04:87C4: B0        .byte $B0   ; 
- D 0 - I - 0x0107D5 04:87C5: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x0107D6 04:87C6: B0        .byte $B0   ; 
- D 0 - I - 0x0107D7 04:87C7: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x0107D8 04:87C8: 00        .byte $00   ; 
- D 0 - I - 0x0107D9 04:87C9: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x0107DA 04:87CA: 00        .byte $00   ; 
- D 0 - I - 0x0107DB 04:87CB: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x0107DC 04:87CC: 00        .byte $00   ; 
- D 0 - I - 0x0107DD 04:87CD: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x0107DE 04:87CE: 00        .byte $00   ; 
- D 0 - I - 0x0107DF 04:87CF: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x0107E0 04:87D0: 20        .byte $20   ; 
- D 0 - I - 0x0107E1 04:87D1: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x0107E2 04:87D2: 20        .byte $20   ; 
- D 0 - I - 0x0107E3 04:87D3: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x0107E4 04:87D4: 20        .byte $20   ; 
- D 0 - I - 0x0107E5 04:87D5: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x0107E6 04:87D6: 20        .byte $20   ; 
- D 0 - I - 0x0107E7 04:87D7: D8        .byte con_se_cb_1_D0 + $08, $16   ; 
- D 0 - I - 0x0107E9 04:87D9: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x0107EA 04:87DA: 40        .byte $40   ; 
- D 0 - I - 0x0107EB 04:87DB: 30        .byte $30   ; 
- D 0 - I - 0x0107EC 04:87DC: 40        .byte $40   ; 
- D 0 - I - 0x0107ED 04:87DD: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 0 - I - 0x0107EE 04:87DE: 40        .byte $40   ; 
- D 0 - I - 0x0107EF 04:87DF: 60        .byte $60   ; 
- D 0 - I - 0x0107F0 04:87E0: 80        .byte $80   ; 
- D 0 - I - 0x0107F1 04:87E1: D8        .byte con_se_cb_1_D0 + $08, $00   ; 
- D 0 - I - 0x0107F3 04:87E3: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 0 - I - 0x0107F4 04:87E4: 99        .byte $99   ; 
- D 0 - I - 0x0107F5 04:87E5: FF        .byte con_se_cb_1_FF   ; 



off_ch_05_0x0107F6_63:
- D 0 - I - 0x0107F6 04:87E6: D8        .byte $D8   ; 
- D 0 - I - 0x0107F7 04:87E7: FB        .byte con_se_cb_1_FB   ; 
- D 0 - I - 0x0107F8 04:87E8: D1        .byte $D1   ; 
- D 0 - I - 0x0107F9 04:87E9: B0        .byte $B0   ; 
- D 0 - I - 0x0107FA 04:87EA: D7        .byte $D7   ; 
- D 0 - I - 0x0107FB 04:87EB: 10        .byte $10   ; 
- D 0 - I - 0x0107FC 04:87EC: D8        .byte $D8   ; 
- D 0 - I - 0x0107FD 04:87ED: 10        .byte $10   ; 
- D 0 - I - 0x0107FE 04:87EE: 10        .byte $10   ; 
- D 0 - I - 0x0107FF 04:87EF: 10        .byte $10   ; 
- D 0 - I - 0x010800 04:87F0: FE        .byte con_se_cb_1_FE, $04   ; 
- D 0 - I - 0x010802 04:87F2: D4        .byte $D4   ; 
- D 0 - I - 0x010803 04:87F3: 40        .byte $40   ; 
- D 0 - I - 0x010804 04:87F4: 40        .byte $40   ; 
- D 0 - I - 0x010805 04:87F5: D8        .byte $D8   ; 
- D 0 - I - 0x010806 04:87F6: FB        .byte con_se_cb_1_FB   ; 
- D 0 - I - 0x010807 04:87F7: 40        .byte $40   ; 
- D 0 - I - 0x010808 04:87F8: FE        .byte con_se_cb_1_FE, $05   ; 
- D 0 - I - 0x01080A 04:87FA: D1        .byte $D1   ; 
- D 0 - I - 0x01080B 04:87FB: B1        .byte $B1   ; 
- D 0 - I - 0x01080C 04:87FC: D7        .byte $D7   ; 
- D 0 - I - 0x01080D 04:87FD: 21        .byte $21   ; 
- D 0 - I - 0x01080E 04:87FE: FF        .byte con_se_cb_1_FF   ; 



off_ch_00_0x01080F_65:
- D 0 - I - 0x01080F 04:87FF: D7        .byte con_se_cb_1_D0 + $07, $77, con_9E25_04 + $80   ; 
- D 0 - I - 0x010812 04:8802: 12        .byte $12   ; 
- D 0 - I - 0x010813 04:8803: E9        .byte con_se_cb_1_E9, $B1   ; 
- D 0 - I - 0x010815 04:8805: EB        .byte con_se_cb_1_EB, con_9E7B_50, $52   ; 
- D 0 - I - 0x010818 04:8808: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x010819 04:8809: A0        .byte $A0   ; 
- D 0 - I - 0x01081A 04:880A: 20        .byte $20   ; 
- D 0 - I - 0x01081B 04:880B: 70        .byte $70   ; 
- D 0 - I - 0x01081C 04:880C: A0        .byte $A0   ; 
- D 0 - I - 0x01081D 04:880D: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x01081E 04:880E: 20        .byte $20   ; 
- D 0 - I - 0x01081F 04:880F: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x010820 04:8810: 70        .byte $70   ; 
- D 0 - I - 0x010821 04:8811: A0        .byte $A0   ; 
- D 0 - I - 0x010822 04:8812: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x010823 04:8813: 20        .byte $20   ; 
- D 0 - I - 0x010824 04:8814: 70        .byte $70   ; 
- D 0 - I - 0x010825 04:8815: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x010826 04:8816: A0        .byte $A0   ; 
- D 0 - I - 0x010827 04:8817: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x010828 04:8818: 20        .byte $20   ; 
- D 0 - I - 0x010829 04:8819: 70        .byte $70   ; 
- D 0 - I - 0x01082A 04:881A: 50        .byte $50   ; 
- D 0 - I - 0x01082B 04:881B: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x01082C 04:881C: 90        .byte $90   ; 
- D 0 - I - 0x01082D 04:881D: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x01082E 04:881E: 00        .byte $00   ; 
- D 0 - I - 0x01082F 04:881F: 50        .byte $50   ; 
- D 0 - I - 0x010830 04:8820: E9        .byte con_se_cb_1_E9, $00   ; 
- D 0 - I - 0x010832 04:8822: 40        .byte $40   ; 
- D 0 - I - 0x010833 04:8823: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x010834 04:8824: 70        .byte $70   ; 
- D 0 - I - 0x010835 04:8825: A0        .byte $A0   ; 
- D 0 - I - 0x010836 04:8826: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x010837 04:8827: 11        .byte $11   ; 
- D 0 - I - 0x010838 04:8828: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x010839 04:8829: 70        .byte $70   ; 
- D 0 - I - 0x01083A 04:882A: A0        .byte $A0   ; 
- D 0 - I - 0x01083B 04:882B: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x01083C 04:882C: 10        .byte $10   ; 
- D 0 - I - 0x01083D 04:882D: 20        .byte $20   ; 
- D 0 - I - 0x01083E 04:882E: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x01083F 04:882F: 60        .byte $60   ; 
- D 0 - I - 0x010840 04:8830: 90        .byte $90   ; 
- D 0 - I - 0x010841 04:8831: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x010842 04:8832: 00        .byte $00   ; 
- D 0 - I - 0x010843 04:8833: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x010844 04:8834: 60        .byte $60   ; 
- D 0 - I - 0x010845 04:8835: 90        .byte $90   ; 
- D 0 - I - 0x010846 04:8836: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x010847 04:8837: 20        .byte $20   ; 
- D 0 - I - 0x010848 04:8838: 00        .byte $00   ; 
- D 0 - I - 0x010849 04:8839: E6        .byte con_se_cb_1_E6, $08   ; 
- D 0 - I - 0x01084B 04:883B: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x01084C 04:883C: A1        .byte $A1   ; 
- D 0 - I - 0x01084D 04:883D: E6        .byte con_se_cb_1_E6, $09   ; 
- D 0 - I - 0x01084F 04:883F: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x010850 04:8840: 21        .byte $21   ; 
- D 0 - I - 0x010851 04:8841: E6        .byte con_se_cb_1_E6, $0A   ; 
- D 0 - I - 0x010853 04:8843: 11        .byte $11   ; 
- D 0 - I - 0x010854 04:8844: E6        .byte con_se_cb_1_E6, $0B   ; 
- D 0 - I - 0x010856 04:8846: 01        .byte $01   ; 
- D 0 - I - 0x010857 04:8847: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x010858 04:8848: E6        .byte con_se_cb_1_E6, $01   ; 
- D 0 - I - 0x01085A 04:884A: B5        .byte $B5   ; 
- D 0 - I - 0x01085B 04:884B: 95        .byte $95   ; 
- D 0 - I - 0x01085C 04:884C: E6        .byte con_se_cb_1_E6, $0C   ; 
- D 0 - I - 0x01085E 04:884E: E8        .byte con_se_cb_1_E8, $00 + $00   ; 
- D 0 - I - 0x010860 04:8850: B6        .byte $B6   ; 
- D 0 - I - 0x010861 04:8851: FF        .byte con_se_cb_1_FF   ; 



off_ch_01_0x010862_65:
- D 0 - I - 0x010862 04:8852: D7        .byte con_se_cb_1_D0 + $07, $70, con_9E25_09   ; 
- D 0 - I - 0x010865 04:8855: 11        .byte $11   ; 
- D 0 - I - 0x010866 04:8856: E9        .byte con_se_cb_1_E9, $B1   ; 
- D 0 - I - 0x010868 04:8858: EB        .byte con_se_cb_1_EB, con_9E7B_50, $51   ; 
- D 0 - I - 0x01086B 04:885B: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x01086C 04:885C: 20        .byte $20   ; 
- D 0 - I - 0x01086D 04:885D: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x01086E 04:885E: 70        .byte $70   ; 
- D 0 - I - 0x01086F 04:885F: A0        .byte $A0   ; 
- D 0 - I - 0x010870 04:8860: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x010871 04:8861: 20        .byte $20   ; 
- D 0 - I - 0x010872 04:8862: 70        .byte $70   ; 
- D 0 - I - 0x010873 04:8863: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x010874 04:8864: A0        .byte $A0   ; 
- D 0 - I - 0x010875 04:8865: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x010876 04:8866: 20        .byte $20   ; 
- D 0 - I - 0x010877 04:8867: 70        .byte $70   ; 
- D 0 - I - 0x010878 04:8868: A0        .byte $A0   ; 
- D 0 - I - 0x010879 04:8869: 20        .byte $20   ; 
- D 0 - I - 0x01087A 04:886A: 70        .byte $70   ; 
- D 0 - I - 0x01087B 04:886B: A0        .byte $A0   ; 
- D 0 - I - 0x01087C 04:886C: 90        .byte $90   ; 
- D 0 - I - 0x01087D 04:886D: 00        .byte $00   ; 
- D 0 - I - 0x01087E 04:886E: 50        .byte $50   ; 
- D 0 - I - 0x01087F 04:886F: 90        .byte $90   ; 
- D 0 - I - 0x010880 04:8870: E9        .byte con_se_cb_1_E9, $31   ; 
- D 0 - I - 0x010882 04:8872: 72        .byte $72   ; 
- D 0 - I - 0x010883 04:8873: 41        .byte $41   ; 
- D 0 - I - 0x010884 04:8874: 40        .byte $40   ; 
- D 0 - I - 0x010885 04:8875: 60        .byte $60   ; 
- D 0 - I - 0x010886 04:8876: 70        .byte $70   ; 
- D 0 - I - 0x010887 04:8877: 62        .byte $62   ; 
- D 0 - I - 0x010888 04:8878: 42        .byte $42   ; 
- D 0 - I - 0x010889 04:8879: 61        .byte $61   ; 
- D 0 - I - 0x01088A 04:887A: E6        .byte con_se_cb_1_E6, $19   ; 
- D 0 - I - 0x01088C 04:887C: E8        .byte con_se_cb_1_E8, $00 + $00   ; 
- D 0 - I - 0x01088E 04:887E: 76        .byte $76   ; 
- D 0 - I - 0x01088F 04:887F: FF        .byte con_se_cb_1_FF   ; 



off_ch_02_0x010890_65:
- D 0 - I - 0x010890 04:8880: D7        .byte con_se_cb_1_D0 + $07, $12   ; 
- D 0 - I - 0x010892 04:8882: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 0 - I - 0x010893 04:8883: 70        .byte $70   ; 
- D 0 - I - 0x010894 04:8884: F0        .byte con_se_cb_1_F0 + $00   ; 
- D 0 - I - 0x010895 04:8885: 70        .byte $70   ; 
- D 0 - I - 0x010896 04:8886: F0        .byte con_se_cb_1_F0 + $00   ; 
- D 0 - I - 0x010897 04:8887: 50        .byte $50   ; 
- D 0 - I - 0x010898 04:8888: F0        .byte con_se_cb_1_F0 + $00   ; 
- D 0 - I - 0x010899 04:8889: 50        .byte $50   ; 
- D 0 - I - 0x01089A 04:888A: F0        .byte con_se_cb_1_F0 + $00   ; 
- D 0 - I - 0x01089B 04:888B: 30        .byte $30   ; 
- D 0 - I - 0x01089C 04:888C: F0        .byte con_se_cb_1_F0 + $00   ; 
- D 0 - I - 0x01089D 04:888D: 30        .byte $30   ; 
- D 0 - I - 0x01089E 04:888E: F0        .byte con_se_cb_1_F0 + $00   ; 
- D 0 - I - 0x01089F 04:888F: 20        .byte $20   ; 
- D 0 - I - 0x0108A0 04:8890: F0        .byte con_se_cb_1_F0 + $00   ; 
- D 0 - I - 0x0108A1 04:8891: 20        .byte $20   ; 
- D 0 - I - 0x0108A2 04:8892: F0        .byte con_se_cb_1_F0 + $00   ; 
- D 0 - I - 0x0108A3 04:8893: 11        .byte $11   ; 
- D 0 - I - 0x0108A4 04:8894: F0        .byte con_se_cb_1_F0 + $00   ; 
- D 0 - I - 0x0108A5 04:8895: 11        .byte $11   ; 
- D 0 - I - 0x0108A6 04:8896: F0        .byte con_se_cb_1_F0 + $00   ; 
- D 0 - I - 0x0108A7 04:8897: 10        .byte $10   ; 
- D 0 - I - 0x0108A8 04:8898: F0        .byte con_se_cb_1_F0 + $00   ; 
- D 0 - I - 0x0108A9 04:8899: 21        .byte $21   ; 
- D 0 - I - 0x0108AA 04:889A: F0        .byte con_se_cb_1_F0 + $00   ; 
- D 0 - I - 0x0108AB 04:889B: 21        .byte $21   ; 
- D 0 - I - 0x0108AC 04:889C: F0        .byte con_se_cb_1_F0 + $00   ; 
- D 0 - I - 0x0108AD 04:889D: 20        .byte $20   ; 
- D 0 - I - 0x0108AE 04:889E: F0        .byte con_se_cb_1_F0 + $00   ; 
- D 0 - I - 0x0108AF 04:889F: D7        .byte con_se_cb_1_D0 + $07, $00   ; 
- D 0 - I - 0x0108B1 04:88A1: E6        .byte con_se_cb_1_E6, $13   ; 
- D 0 - I - 0x0108B3 04:88A3: 73        .byte $73   ; 
- D 0 - I - 0x0108B4 04:88A4: E6        .byte con_se_cb_1_E6, $0C   ; 
- D 0 - I - 0x0108B6 04:88A6: E5        .byte con_se_cb_1_E0 + $05   ; 
- D 0 - I - 0x0108B7 04:88A7: 77        .byte $77   ; 
- D 0 - I - 0x0108B8 04:88A8: FF        .byte con_se_cb_1_FF   ; 



off_ch_05_0x0108B9_65:
- D 0 - I - 0x0108B9 04:88A9: D1        .byte $D1   ; 
- D 0 - I - 0x0108BA 04:88AA: FB        .byte con_se_cb_1_FB   ; 
- D 0 - I - 0x0108BB 04:88AB: B0        .byte $B0   ; 
- D 0 - I - 0x0108BC 04:88AC: 2C        .byte $2C   ; 
- D 0 - I - 0x0108BD 04:88AD: 16        .byte $16   ; 
- D 0 - I - 0x0108BE 04:88AE: 16        .byte $16   ; 
- D 0 - I - 0x0108BF 04:88AF: FE        .byte con_se_cb_1_FE, $04   ; 
- D 0 - I - 0x0108C1 04:88B1: FB        .byte con_se_cb_1_FB   ; 
- D 0 - I - 0x0108C2 04:88B2: B0        .byte $B0   ; 
- D 0 - I - 0x0108C3 04:88B3: 2C        .byte $2C   ; 
- D 0 - I - 0x0108C4 04:88B4: 46        .byte $46   ; 
- D 0 - I - 0x0108C5 04:88B5: B0        .byte $B0   ; 
- D 0 - I - 0x0108C6 04:88B6: 2C        .byte $2C   ; 
- D 0 - I - 0x0108C7 04:88B7: 46        .byte $46   ; 
- D 0 - I - 0x0108C8 04:88B8: B0        .byte $B0   ; 
- D 0 - I - 0x0108C9 04:88B9: 15        .byte $15   ; 
- D 0 - I - 0x0108CA 04:88BA: 46        .byte $46   ; 
- D 0 - I - 0x0108CB 04:88BB: FE        .byte con_se_cb_1_FE, $02   ; 
- D 0 - I - 0x0108CD 04:88BD: B0        .byte $B0   ; 
- D 0 - I - 0x0108CE 04:88BE: 1E        .byte $1E   ; 
- D 0 - I - 0x0108CF 04:88BF: 1F        .byte $1F   ; 
- D 0 - I - 0x0108D0 04:88C0: C1        .byte $C1   ; 
- D 0 - I - 0x0108D1 04:88C1: B0        .byte $B0   ; 
- D 0 - I - 0x0108D2 04:88C2: 1F        .byte $1F   ; 
- D 0 - I - 0x0108D3 04:88C3: C2        .byte $C2   ; 
- D 0 - I - 0x0108D4 04:88C4: 1F        .byte $1F   ; 
- D 0 - I - 0x0108D5 04:88C5: C5        .byte $C5   ; 
- D 0 - I - 0x0108D6 04:88C6: B0        .byte $B0   ; 
- D 0 - I - 0x0108D7 04:88C7: 2C        .byte $2C   ; 
- D 0 - I - 0x0108D8 04:88C8: FF        .byte con_se_cb_1_FF   ; 



off_ch_00_0x0108D9_58:
- D 0 - I - 0x0108D9 04:88C9: D9        .byte con_se_cb_1_D0 + $09, $78, con_9E25_08 + $80   ; 
- D 0 - I - 0x0108DC 04:88CC: 17        .byte $17   ; 
- D 0 - I - 0x0108DD 04:88CD: CF        .byte con_se_cb_1_C0 + $0F   ; 
- D 0 - I - 0x0108DE 04:88CE: CF        .byte con_se_cb_1_C0 + $0F   ; 
- D 0 - I - 0x0108DF 04:88CF: CF        .byte con_se_cb_1_C0 + $0F   ; 
- D 0 - I - 0x0108E0 04:88D0: C8        .byte con_se_cb_1_C0 + $08   ; 
- D 0 - I - 0x0108E1 04:88D1: E9        .byte con_se_cb_1_E9, $B1   ; 
- D 0 - I - 0x0108E3 04:88D3: E5        .byte con_se_cb_1_E0 + $05   ; 
- D 0 - I - 0x0108E4 04:88D4: 80        .byte $80   ; 
- D 0 - I - 0x0108E5 04:88D5: F5        .byte con_se_cb_1_F0 + $05   ; 
- D 0 - I - 0x0108E6 04:88D6: 80        .byte $80   ; 
- D 0 - I - 0x0108E7 04:88D7: F0        .byte con_se_cb_1_F0 + $00   ; 
- D 0 - I - 0x0108E8 04:88D8: 70        .byte $70   ; 
- D 0 - I - 0x0108E9 04:88D9: F5        .byte con_se_cb_1_F0 + $05   ; 
- D 0 - I - 0x0108EA 04:88DA: 70        .byte $70   ; 
- D 0 - I - 0x0108EB 04:88DB: F0        .byte con_se_cb_1_F0 + $00   ; 
- D 0 - I - 0x0108EC 04:88DC: 60        .byte $60   ; 
- D 0 - I - 0x0108ED 04:88DD: F5        .byte con_se_cb_1_F0 + $05   ; 
- D 0 - I - 0x0108EE 04:88DE: 60        .byte $60   ; 
- D 0 - I - 0x0108EF 04:88DF: F0        .byte con_se_cb_1_F0 + $00   ; 
- D 0 - I - 0x0108F0 04:88E0: 70        .byte $70   ; 
- D 0 - I - 0x0108F1 04:88E1: E9        .byte con_se_cb_1_E9, $00   ; 
off_FE_88E3:
- D 0 - I - 0x0108F3 04:88E3: D9        .byte con_se_cb_1_D0 + $09, $77, con_9E25_05 + $80   ; 
- D 0 - I - 0x0108F6 04:88E6: 13        .byte $13   ; 
- D 0 - I - 0x0108F7 04:88E7: EB        .byte con_se_cb_1_EB, con_9E7B_54, $32   ; 
- D 0 - I - 0x0108FA 04:88EA: EC        .byte con_se_cb_1_EC, $02   ; 
- D 0 - I - 0x0108FC 04:88EC: E9        .byte con_se_cb_1_E9, $74   ; 
- D 0 - I - 0x0108FE 04:88EE: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 0 - I - 0x0108FF 04:88EF: A2        .byte $A2   ; 
- D 0 - I - 0x010900 04:88F0: E8        .byte con_se_cb_1_E8, $10 + $09   ; 
- D 0 - I - 0x010902 04:88F2: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x010903 04:88F3: 21        .byte $21   ; 
- D 0 - I - 0x010904 04:88F4: 71        .byte $71   ; 
- D 0 - I - 0x010905 04:88F5: E8        .byte con_se_cb_1_E8, $10 + $02   ; 
- D 0 - I - 0x010907 04:88F7: 6A        .byte $6A   ; 
- D 0 - I - 0x010908 04:88F8: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 0 - I - 0x010909 04:88F9: A1        .byte $A1   ; 
- D 0 - I - 0x01090A 04:88FA: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x01090B 04:88FB: 20        .byte $20   ; 
- D 0 - I - 0x01090C 04:88FC: E8        .byte con_se_cb_1_E8, $10 + $09   ; 
- D 0 - I - 0x01090E 04:88FE: 71        .byte $71   ; 
- D 0 - I - 0x01090F 04:88FF: E8        .byte con_se_cb_1_E8, $10 + $02   ; 
- D 0 - I - 0x010911 04:8901: 68        .byte $68   ; 
- D 0 - I - 0x010912 04:8902: 50        .byte $50   ; 
- D 0 - I - 0x010913 04:8903: 50        .byte $50   ; 
- D 0 - I - 0x010914 04:8904: F3        .byte con_se_cb_1_F0 + $03   ; 
- D 0 - I - 0x010915 04:8905: 50        .byte $50   ; 
- D 0 - I - 0x010916 04:8906: 50        .byte $50   ; 
- D 0 - I - 0x010917 04:8907: F5        .byte con_se_cb_1_F0 + $05   ; 
- D 0 - I - 0x010918 04:8908: 50        .byte $50   ; 
- D 0 - I - 0x010919 04:8909: 50        .byte $50   ; 
- D 0 - I - 0x01091A 04:890A: F7        .byte con_se_cb_1_F0 + $07   ; 
- D 0 - I - 0x01091B 04:890B: 50        .byte $50   ; 
- D 0 - I - 0x01091C 04:890C: 50        .byte $50   ; 
- D 0 - I - 0x01091D 04:890D: 50        .byte $50   ; 
- D 0 - I - 0x01091E 04:890E: C6        .byte con_se_cb_1_C0 + $06   ; 
- D 0 - I - 0x01091F 04:890F: CF        .byte con_se_cb_1_C0 + $0F   ; 
- D 0 - I - 0x010920 04:8910: E8        .byte con_se_cb_1_E8, $10 + $03   ; 
- D 0 - I - 0x010922 04:8912: F0        .byte con_se_cb_1_F0 + $00   ; 
- D 0 - I - 0x010923 04:8913: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 0 - I - 0x010924 04:8914: A2        .byte $A2   ; 
- D 0 - I - 0x010925 04:8915: E8        .byte con_se_cb_1_E8, $10 + $09   ; 
- D 0 - I - 0x010927 04:8917: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x010928 04:8918: 21        .byte $21   ; 
- D 0 - I - 0x010929 04:8919: 71        .byte $71   ; 
- D 0 - I - 0x01092A 04:891A: E8        .byte con_se_cb_1_E8, $10 + $02   ; 
- D 0 - I - 0x01092C 04:891C: 6A        .byte $6A   ; 
- D 0 - I - 0x01092D 04:891D: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 0 - I - 0x01092E 04:891E: A1        .byte $A1   ; 
- D 0 - I - 0x01092F 04:891F: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x010930 04:8920: 20        .byte $20   ; 
- D 0 - I - 0x010931 04:8921: E8        .byte con_se_cb_1_E8, $10 + $09   ; 
- D 0 - I - 0x010933 04:8923: 71        .byte $71   ; 
- D 0 - I - 0x010934 04:8924: E8        .byte con_se_cb_1_E8, $10 + $02   ; 
- D 0 - I - 0x010936 04:8926: 68        .byte $68   ; 
- D 0 - I - 0x010937 04:8927: EC        .byte con_se_cb_1_EC, $00   ; 
- D 0 - I - 0x010939 04:8929: EB        .byte con_se_cb_1_EB, $00   ; 
- D 0 - I - 0x01093B 04:892B: D9        .byte con_se_cb_1_D0 + $09, $F6, con_9E25_04 + $80   ; 
- D 0 - I - 0x01093E 04:892E: 19        .byte $19   ; 
- D 0 - I - 0x01093F 04:892F: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x010940 04:8930: A0        .byte $A0   ; 
- D 0 - I - 0x010941 04:8931: A0        .byte $A0   ; 
- D 0 - I - 0x010942 04:8932: D9        .byte con_se_cb_1_D0 + $09, $77, con_9E25_07 + $80   ; 
- D 0 - I - 0x010945 04:8935: 17        .byte $17   ; 
- D 0 - I - 0x010946 04:8936: E9        .byte con_se_cb_1_E9, $B1   ; 
- D 0 - I - 0x010948 04:8938: E5        .byte con_se_cb_1_E0 + $05   ; 
- D 0 - I - 0x010949 04:8939: 00        .byte $00   ; 
- D 0 - I - 0x01094A 04:893A: 00        .byte $00   ; 
- D 0 - I - 0x01094B 04:893B: 00        .byte $00   ; 
- D 0 - I - 0x01094C 04:893C: F3        .byte con_se_cb_1_F0 + $03   ; 
- D 0 - I - 0x01094D 04:893D: 00        .byte $00   ; 
- D 0 - I - 0x01094E 04:893E: ED        .byte con_se_cb_1_ED, $01   ; 
- D 0 - I - 0x010950 04:8940: F4        .byte con_se_cb_1_F0 + $04   ; 
- D 0 - I - 0x010951 04:8941: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x010952 04:8942: 00        .byte $00   ; 
- D 0 - I - 0x010953 04:8943: ED        .byte con_se_cb_1_ED, $00   ; 
- D 0 - I - 0x010955 04:8945: F5        .byte con_se_cb_1_F0 + $05   ; 
- D 0 - I - 0x010956 04:8946: E5        .byte con_se_cb_1_E0 + $05   ; 
- D 0 - I - 0x010957 04:8947: 00        .byte $00   ; 
- D 0 - I - 0x010958 04:8948: 00        .byte $00   ; 
- D 0 - I - 0x010959 04:8949: F0        .byte con_se_cb_1_F0 + $00   ; 
- D 0 - I - 0x01095A 04:894A: 80        .byte $80   ; 
- D 0 - I - 0x01095B 04:894B: F5        .byte con_se_cb_1_F0 + $05   ; 
- D 0 - I - 0x01095C 04:894C: 80        .byte $80   ; 
- D 0 - I - 0x01095D 04:894D: F0        .byte con_se_cb_1_F0 + $00   ; 
- D 0 - I - 0x01095E 04:894E: 70        .byte $70   ; 
- D 0 - I - 0x01095F 04:894F: F4        .byte con_se_cb_1_F0 + $04   ; 
- D 0 - I - 0x010960 04:8950: ED        .byte con_se_cb_1_ED, $01   ; 
- D 0 - I - 0x010962 04:8952: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x010963 04:8953: B0        .byte $B0   ; 
- D 0 - I - 0x010964 04:8954: ED        .byte con_se_cb_1_ED, $00   ; 
- D 0 - I - 0x010966 04:8956: F0        .byte con_se_cb_1_F0 + $00   ; 
- D 0 - I - 0x010967 04:8957: E5        .byte con_se_cb_1_E0 + $05   ; 
- D 0 - I - 0x010968 04:8958: 60        .byte $60   ; 
- D 0 - I - 0x010969 04:8959: F5        .byte con_se_cb_1_F0 + $05   ; 
- D 0 - I - 0x01096A 04:895A: 60        .byte $60   ; 
- D 0 - I - 0x01096B 04:895B: F0        .byte con_se_cb_1_F0 + $00   ; 
- D 0 - I - 0x01096C 04:895C: 70        .byte $70   ; 
- D 0 - I - 0x01096D 04:895D: 00        .byte $00   ; 
- D 0 - I - 0x01096E 04:895E: 00        .byte $00   ; 
- D 0 - I - 0x01096F 04:895F: ED        .byte con_se_cb_1_ED, $01   ; 
- D 0 - I - 0x010971 04:8961: F4        .byte con_se_cb_1_F0 + $04   ; 
- D 0 - I - 0x010972 04:8962: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x010973 04:8963: A0        .byte $A0   ; 
- D 0 - I - 0x010974 04:8964: ED        .byte con_se_cb_1_ED, $00   ; 
- D 0 - I - 0x010976 04:8966: F0        .byte con_se_cb_1_F0 + $00   ; 
- D 0 - I - 0x010977 04:8967: E5        .byte con_se_cb_1_E0 + $05   ; 
- D 0 - I - 0x010978 04:8968: 00        .byte $00   ; 
- D 0 - I - 0x010979 04:8969: 00        .byte $00   ; 
- D 0 - I - 0x01097A 04:896A: F3        .byte con_se_cb_1_F0 + $03   ; 
- D 0 - I - 0x01097B 04:896B: 00        .byte $00   ; 
- D 0 - I - 0x01097C 04:896C: F0        .byte con_se_cb_1_F0 + $00   ; 
- D 0 - I - 0x01097D 04:896D: 20        .byte $20   ; 
- D 0 - I - 0x01097E 04:896E: F4        .byte con_se_cb_1_F0 + $04   ; 
- D 0 - I - 0x01097F 04:896F: 20        .byte $20   ; 
- D 0 - I - 0x010980 04:8970: ED        .byte con_se_cb_1_ED, $01   ; 
- D 0 - I - 0x010982 04:8972: F5        .byte con_se_cb_1_F0 + $05   ; 
- D 0 - I - 0x010983 04:8973: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x010984 04:8974: 90        .byte $90   ; 
- D 0 - I - 0x010985 04:8975: ED        .byte con_se_cb_1_ED, $00   ; 
- D 0 - I - 0x010987 04:8977: F0        .byte con_se_cb_1_F0 + $00   ; 
- D 0 - I - 0x010988 04:8978: E5        .byte con_se_cb_1_E0 + $05   ; 
- D 0 - I - 0x010989 04:8979: 30        .byte $30   ; 
- D 0 - I - 0x01098A 04:897A: F5        .byte con_se_cb_1_F0 + $05   ; 
- D 0 - I - 0x01098B 04:897B: 30        .byte $30   ; 
- D 0 - I - 0x01098C 04:897C: F4        .byte con_se_cb_1_F0 + $04   ; 
- D 0 - I - 0x01098D 04:897D: ED        .byte con_se_cb_1_ED, $01   ; 
- D 0 - I - 0x01098F 04:897F: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x010990 04:8980: 80        .byte $80   ; 
- D 0 - I - 0x010991 04:8981: ED        .byte con_se_cb_1_ED, $00   ; 
- D 0 - I - 0x010993 04:8983: F5        .byte con_se_cb_1_F0 + $05   ; 
- D 0 - I - 0x010994 04:8984: E5        .byte con_se_cb_1_E0 + $05   ; 
- D 0 - I - 0x010995 04:8985: 40        .byte $40   ; 
- D 0 - I - 0x010996 04:8986: ED        .byte con_se_cb_1_ED, $01   ; 
- D 0 - I - 0x010998 04:8988: F4        .byte con_se_cb_1_F0 + $04   ; 
- D 0 - I - 0x010999 04:8989: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x01099A 04:898A: 70        .byte $70   ; 
- D 0 - I - 0x01099B 04:898B: ED        .byte con_se_cb_1_ED, $00   ; 
- D 0 - I - 0x01099D 04:898D: F0        .byte con_se_cb_1_F0 + $00   ; 
- D 0 - I - 0x01099E 04:898E: E5        .byte con_se_cb_1_E0 + $05   ; 
- D 0 - I - 0x01099F 04:898F: 40        .byte $40   ; 
- D 0 - I - 0x0109A0 04:8990: 00        .byte $00   ; 
- D 0 - I - 0x0109A1 04:8991: D9        .byte con_se_cb_1_D0 + $09, $76, con_9E25_04 + $80   ; 
- D 0 - I - 0x0109A4 04:8994: 13        .byte $13   ; 
- D 0 - I - 0x0109A5 04:8995: EB        .byte con_se_cb_1_EB, con_9E7B_54, $32   ; 
- D 0 - I - 0x0109A8 04:8998: E9        .byte con_se_cb_1_E9, $74   ; 
- D 0 - I - 0x0109AA 04:899A: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x0109AB 04:899B: 32        .byte $32   ; 
- D 0 - I - 0x0109AC 04:899C: E8        .byte con_se_cb_1_E8, $10 + $02   ; 
- D 0 - I - 0x0109AE 04:899E: E6        .byte con_se_cb_1_E6, $12   ; 
- D 0 - I - 0x0109B0 04:89A0: 0A        .byte $0A   ; 
- D 0 - I - 0x0109B1 04:89A1: E6        .byte con_se_cb_1_E6, $09   ; 
- D 0 - I - 0x0109B3 04:89A3: E8        .byte con_se_cb_1_E8, $10 + $05   ; 
- D 0 - I - 0x0109B5 04:89A5: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x0109B6 04:89A6: 31        .byte $31   ; 
- D 0 - I - 0x0109B7 04:89A7: 21        .byte $21   ; 
- D 0 - I - 0x0109B8 04:89A8: 11        .byte $11   ; 
- D 0 - I - 0x0109B9 04:89A9: 20        .byte $20   ; 
- D 0 - I - 0x0109BA 04:89AA: 32        .byte $32   ; 
- D 0 - I - 0x0109BB 04:89AB: 22        .byte $22   ; 
- D 0 - I - 0x0109BC 04:89AC: 12        .byte $12   ; 
- D 0 - I - 0x0109BD 04:89AD: 02        .byte $02   ; 
- D 0 - I - 0x0109BE 04:89AE: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 0 - I - 0x0109BF 04:89AF: B1        .byte $B1   ; 
- D 0 - I - 0x0109C0 04:89B0: A1        .byte $A1   ; 
- D 0 - I - 0x0109C1 04:89B1: E8        .byte con_se_cb_1_E8, $10 + $03   ; 
- D 0 - I - 0x0109C3 04:89B3: A2        .byte $A2   ; 
- D 0 - I - 0x0109C4 04:89B4: E8        .byte con_se_cb_1_E8, $10 + $02   ; 
- D 0 - I - 0x0109C6 04:89B6: EB        .byte con_se_cb_1_EB, con_9E7B_54, $33   ; 
- D 0 - I - 0x0109C9 04:89B9: E6        .byte con_se_cb_1_E6, $0F   ; 
- D 0 - I - 0x0109CB 04:89BB: 5E        .byte $5E   ; 
- D 0 - I - 0x0109CC 04:89BC: E9        .byte con_se_cb_1_E9, $00   ; 
- D 0 - I - 0x0109CE 04:89BE: EC        .byte con_se_cb_1_EC, $00   ; 
- D 0 - I - 0x0109D0 04:89C0: EB        .byte con_se_cb_1_EB, $00   ; 
- D 0 - I - 0x0109D2 04:89C2: E6        .byte con_se_cb_1_E6, $09   ; 
- D 0 - I - 0x0109D4 04:89C4: C0        .byte con_se_cb_1_C0 + $00   ; 
- D 0 - I - 0x0109D5 04:89C5: D1        .byte con_se_cb_1_D0 + $01, $34, con_9E25_00 + $80   ; 
- D 0 - I - 0x0109D8 04:89C8: 00        .byte $00   ; 
- D 0 - I - 0x0109D9 04:89C9: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 0 - I - 0x0109DA 04:89CA: F3        .byte con_se_cb_1_F0 + $03   ; 
- D 0 - I - 0x0109DB 04:89CB: 10        .byte $10   ; 
- D 0 - I - 0x0109DC 04:89CC: 21        .byte $21   ; 
- D 0 - I - 0x0109DD 04:89CD: 31        .byte $31   ; 
- D 0 - I - 0x0109DE 04:89CE: 41        .byte $41   ; 
- D 0 - I - 0x0109DF 04:89CF: 51        .byte $51   ; 
- D 0 - I - 0x0109E0 04:89D0: F2        .byte con_se_cb_1_F0 + $02   ; 
- D 0 - I - 0x0109E1 04:89D1: 61        .byte $61   ; 
- D 0 - I - 0x0109E2 04:89D2: 71        .byte $71   ; 
- D 0 - I - 0x0109E3 04:89D3: 81        .byte $81   ; 
- D 0 - I - 0x0109E4 04:89D4: F1        .byte con_se_cb_1_F0 + $01   ; 
- D 0 - I - 0x0109E5 04:89D5: 91        .byte $91   ; 
- D 0 - I - 0x0109E6 04:89D6: A1        .byte $A1   ; 
- D 0 - I - 0x0109E7 04:89D7: B1        .byte $B1   ; 
- D 0 - I - 0x0109E8 04:89D8: F0        .byte con_se_cb_1_F0 + $00   ; 
- D 0 - I - 0x0109E9 04:89D9: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x0109EA 04:89DA: 01        .byte $01   ; 
- D 0 - I - 0x0109EB 04:89DB: 11        .byte $11   ; 
- D 0 - I - 0x0109EC 04:89DC: 21        .byte $21   ; 
- D 0 - I - 0x0109ED 04:89DD: FB        .byte con_se_cb_1_FB   ; 
- D 0 - I - 0x0109EE 04:89DE: D9        .byte con_se_cb_1_D0 + $09, $37, con_9E25_05 + $80   ; 
- D 0 - I - 0x0109F1 04:89E1: 18        .byte $18   ; 
- D 0 - I - 0x0109F2 04:89E2: EC        .byte con_se_cb_1_EC, $00   ; 
- D 0 - I - 0x0109F4 04:89E4: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x0109F5 04:89E5: 30        .byte $30   ; 
- D 0 - I - 0x0109F6 04:89E6: 30        .byte $30   ; 
- D 0 - I - 0x0109F7 04:89E7: C0        .byte con_se_cb_1_C0 + $00   ; 
- D 0 - I - 0x0109F8 04:89E8: D9        .byte con_se_cb_1_D0 + $09, $77, con_9E25_07 + $80   ; 
- D 0 - I - 0x0109FB 04:89EB: 17        .byte $17   ; 
- D 0 - I - 0x0109FC 04:89EC: E9        .byte con_se_cb_1_E9, $B1   ; 
- D 0 - I - 0x0109FE 04:89EE: ED        .byte con_se_cb_1_ED, $02   ; 
- D 0 - I - 0x010A00 04:89F0: E5        .byte con_se_cb_1_E0 + $05   ; 
- D 0 - I - 0x010A01 04:89F1: 70        .byte $70   ; 
- D 0 - I - 0x010A02 04:89F2: 70        .byte $70   ; 
- D 0 - I - 0x010A03 04:89F3: F5        .byte con_se_cb_1_F0 + $05   ; 
- D 0 - I - 0x010A04 04:89F4: 70        .byte $70   ; 
- D 0 - I - 0x010A05 04:89F5: F0        .byte con_se_cb_1_F0 + $00   ; 
- D 0 - I - 0x010A06 04:89F6: E9        .byte con_se_cb_1_E9, $00   ; 
- D 0 - I - 0x010A08 04:89F8: FE        .byte con_se_cb_1_FE, $02   ; 
- D 0 - I - 0x010A0A 04:89FA: ED        .byte con_se_cb_1_ED, $00   ; 
- D 0 - I - 0x010A0C 04:89FC: D9        .byte con_se_cb_1_D0 + $09, $37, con_9E25_05 + $80   ; 
- D 0 - I - 0x010A0F 04:89FF: 18        .byte $18   ; 
- D 0 - I - 0x010A10 04:8A00: E9        .byte con_se_cb_1_E9, $31   ; 
- D 0 - I - 0x010A12 04:8A02: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x010A13 04:8A03: 30        .byte $30   ; 
- D 0 - I - 0x010A14 04:8A04: 30        .byte $30   ; 
- D 0 - I - 0x010A15 04:8A05: C1        .byte con_se_cb_1_C0 + $01   ; 
- D 0 - I - 0x010A16 04:8A06: 30        .byte $30   ; 
- D 0 - I - 0x010A17 04:8A07: 30        .byte $30   ; 
- D 0 - I - 0x010A18 04:8A08: C0        .byte con_se_cb_1_C0 + $00   ; 
- D 0 - I - 0x010A19 04:8A09: D9        .byte con_se_cb_1_D0 + $09, $77, con_9E25_07 + $80   ; 
- D 0 - I - 0x010A1C 04:8A0C: 19        .byte $19   ; 
- D 0 - I - 0x010A1D 04:8A0D: E9        .byte con_se_cb_1_E9, $B1   ; 
- D 0 - I - 0x010A1F 04:8A0F: ED        .byte con_se_cb_1_ED, $02   ; 
- D 0 - I - 0x010A21 04:8A11: E5        .byte con_se_cb_1_E0 + $05   ; 
- D 0 - I - 0x010A22 04:8A12: 70        .byte $70   ; 
- D 0 - I - 0x010A23 04:8A13: 70        .byte $70   ; 
- D 0 - I - 0x010A24 04:8A14: F5        .byte con_se_cb_1_F0 + $05   ; 
- D 0 - I - 0x010A25 04:8A15: 70        .byte $70   ; 
- D 0 - I - 0x010A26 04:8A16: E9        .byte con_se_cb_1_E9, $00   ; 
- D 0 - I - 0x010A28 04:8A18: ED        .byte con_se_cb_1_ED, $00   ; 
- D 0 - I - 0x010A2A 04:8A1A: D9        .byte con_se_cb_1_D0 + $09, $37, con_9E25_05 + $80   ; 
- D 0 - I - 0x010A2D 04:8A1D: 18        .byte $18   ; 
- D 0 - I - 0x010A2E 04:8A1E: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x010A2F 04:8A1F: 30        .byte $30   ; 
- D 0 - I - 0x010A30 04:8A20: 30        .byte $30   ; 
- D 0 - I - 0x010A31 04:8A21: E6        .byte con_se_cb_1_E6, $06   ; 
- D 0 - I - 0x010A33 04:8A23: E8        .byte con_se_cb_1_E8, $10 + $08   ; 
- D 0 - I - 0x010A35 04:8A25: C1        .byte con_se_cb_1_C0 + $01   ; 
- D 0 - I - 0x010A36 04:8A26: 31        .byte $31   ; 
- D 0 - I - 0x010A37 04:8A27: 41        .byte $41   ; 
- D 0 - I - 0x010A38 04:8A28: 51        .byte $51   ; 
- D 0 - I - 0x010A39 04:8A29: 61        .byte $61   ; 
- D 0 - I - 0x010A3A 04:8A2A: 71        .byte $71   ; 
- D 0 - I - 0x010A3B 04:8A2B: FE        .byte con_se_cb_1_FE, $FF   ; 
- D 0 - I - 0x010A3D 04:8A2D: E3 88     .word off_FE_88E3



off_ch_01_0x010A3F_58:
- D 0 - I - 0x010A3F 04:8A2F: D9        .byte con_se_cb_1_D0 + $09, $78, con_9E25_08 + $80   ; 
- D 0 - I - 0x010A42 04:8A32: 17        .byte $17   ; 
- D 0 - I - 0x010A43 04:8A33: E9        .byte con_se_cb_1_E9, $B1   ; 
- D 0 - I - 0x010A45 04:8A35: E5        .byte con_se_cb_1_E0 + $05   ; 
- D 0 - I - 0x010A46 04:8A36: FB        .byte con_se_cb_1_FB   ; 
- D 0 - I - 0x010A47 04:8A37: 00        .byte $00   ; 
- D 0 - I - 0x010A48 04:8A38: 00        .byte $00   ; 
- D 0 - I - 0x010A49 04:8A39: 00        .byte $00   ; 
- D 0 - I - 0x010A4A 04:8A3A: 00        .byte $00   ; 
- D 0 - I - 0x010A4B 04:8A3B: 00        .byte $00   ; 
- D 0 - I - 0x010A4C 04:8A3C: F3        .byte con_se_cb_1_F0 + $03   ; 
- D 0 - I - 0x010A4D 04:8A3D: 00        .byte $00   ; 
- D 0 - I - 0x010A4E 04:8A3E: F5        .byte con_se_cb_1_F0 + $05   ; 
- D 0 - I - 0x010A4F 04:8A3F: 00        .byte $00   ; 
- D 0 - I - 0x010A50 04:8A40: 00        .byte $00   ; 
- D 0 - I - 0x010A51 04:8A41: 00        .byte $00   ; 
- D 0 - I - 0x010A52 04:8A42: F0        .byte con_se_cb_1_F0 + $00   ; 
- D 0 - I - 0x010A53 04:8A43: 80        .byte $80   ; 
- D 0 - I - 0x010A54 04:8A44: F5        .byte con_se_cb_1_F0 + $05   ; 
- D 0 - I - 0x010A55 04:8A45: 80        .byte $80   ; 
- D 0 - I - 0x010A56 04:8A46: F0        .byte con_se_cb_1_F0 + $00   ; 
- D 0 - I - 0x010A57 04:8A47: 70        .byte $70   ; 
- D 0 - I - 0x010A58 04:8A48: F5        .byte con_se_cb_1_F0 + $05   ; 
- D 0 - I - 0x010A59 04:8A49: 70        .byte $70   ; 
- D 0 - I - 0x010A5A 04:8A4A: F0        .byte con_se_cb_1_F0 + $00   ; 
- D 0 - I - 0x010A5B 04:8A4B: 60        .byte $60   ; 
- D 0 - I - 0x010A5C 04:8A4C: F5        .byte con_se_cb_1_F0 + $05   ; 
- D 0 - I - 0x010A5D 04:8A4D: 60        .byte $60   ; 
- D 0 - I - 0x010A5E 04:8A4E: F0        .byte con_se_cb_1_F0 + $00   ; 
- D 0 - I - 0x010A5F 04:8A4F: 70        .byte $70   ; 
- D 0 - I - 0x010A60 04:8A50: FE        .byte con_se_cb_1_FE, $03   ; 
- D 0 - I - 0x010A62 04:8A52: 00        .byte $00   ; 
- D 0 - I - 0x010A63 04:8A53: 00        .byte $00   ; 
- D 0 - I - 0x010A64 04:8A54: 00        .byte $00   ; 
- D 0 - I - 0x010A65 04:8A55: 00        .byte $00   ; 
- D 0 - I - 0x010A66 04:8A56: 00        .byte $00   ; 
- D 0 - I - 0x010A67 04:8A57: F3        .byte con_se_cb_1_F0 + $03   ; 
- D 0 - I - 0x010A68 04:8A58: 00        .byte $00   ; 
- D 0 - I - 0x010A69 04:8A59: F5        .byte con_se_cb_1_F0 + $05   ; 
- D 0 - I - 0x010A6A 04:8A5A: 00        .byte $00   ; 
- D 0 - I - 0x010A6B 04:8A5B: 00        .byte $00   ; 
- D 0 - I - 0x010A6C 04:8A5C: 00        .byte $00   ; 
- D 0 - I - 0x010A6D 04:8A5D: D9        .byte con_se_cb_1_D0 + $09, $75, con_9E25_03 + $80   ; 
- D 0 - I - 0x010A70 04:8A60: 18        .byte $18   ; 
- D 0 - I - 0x010A71 04:8A61: EC        .byte con_se_cb_1_EC, $02   ; 
- D 0 - I - 0x010A73 04:8A63: E9        .byte con_se_cb_1_E9, $31   ; 
- D 0 - I - 0x010A75 04:8A65: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 0 - I - 0x010A76 04:8A66: 70        .byte $70   ; 
- D 0 - I - 0x010A77 04:8A67: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x010A78 04:8A68: 30        .byte $30   ; 
- D 0 - I - 0x010A79 04:8A69: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x010A7A 04:8A6A: 00        .byte $00   ; 
- D 0 - I - 0x010A7B 04:8A6B: 30        .byte $30   ; 
- D 0 - I - 0x010A7C 04:8A6C: E1        .byte con_se_cb_1_E0 + $01   ; 
- D 0 - I - 0x010A7D 04:8A6D: 30        .byte $30   ; 
- D 0 - I - 0x010A7E 04:8A6E: E0        .byte con_se_cb_1_E0 + $00   ; 
- D 0 - I - 0x010A7F 04:8A6F: 00        .byte $00   ; 
- D 0 - I - 0x010A80 04:8A70: 30        .byte $30   ; 
off_FE_8A71:
- D 0 - I - 0x010A81 04:8A71: D9        .byte con_se_cb_1_D0 + $09, $F8, con_9E25_05 + $80   ; 
- D 0 - I - 0x010A84 04:8A74: 13        .byte $13   ; 
- D 0 - I - 0x010A85 04:8A75: EB        .byte con_se_cb_1_EB, con_9E7B_54, $32   ; 
- D 0 - I - 0x010A88 04:8A78: EC        .byte con_se_cb_1_EC, $02   ; 
- D 0 - I - 0x010A8A 04:8A7A: E9        .byte con_se_cb_1_E9, $35   ; 
- D 0 - I - 0x010A8C 04:8A7C: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x010A8D 04:8A7D: 32        .byte $32   ; 
- D 0 - I - 0x010A8E 04:8A7E: E8        .byte con_se_cb_1_E8, $10 + $09   ; 
- D 0 - I - 0x010A90 04:8A80: 71        .byte $71   ; 
- D 0 - I - 0x010A91 04:8A81: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x010A92 04:8A82: 01        .byte $01   ; 
- D 0 - I - 0x010A93 04:8A83: E8        .byte con_se_cb_1_E8, $10 + $02   ; 
- D 0 - I - 0x010A95 04:8A85: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x010A96 04:8A86: BA        .byte $BA   ; 
- D 0 - I - 0x010A97 04:8A87: 31        .byte $31   ; 
- D 0 - I - 0x010A98 04:8A88: 70        .byte $70   ; 
- D 0 - I - 0x010A99 04:8A89: E8        .byte con_se_cb_1_E8, $10 + $09   ; 
- D 0 - I - 0x010A9B 04:8A8B: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x010A9C 04:8A8C: 01        .byte $01   ; 
- D 0 - I - 0x010A9D 04:8A8D: E8        .byte con_se_cb_1_E8, $10 + $02   ; 
- D 0 - I - 0x010A9F 04:8A8F: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x010AA0 04:8A90: B8        .byte $B8   ; 
- D 0 - I - 0x010AA1 04:8A91: A0        .byte $A0   ; 
- D 0 - I - 0x010AA2 04:8A92: A0        .byte $A0   ; 
- D 0 - I - 0x010AA3 04:8A93: F3        .byte con_se_cb_1_F0 + $03   ; 
- D 0 - I - 0x010AA4 04:8A94: A0        .byte $A0   ; 
- D 0 - I - 0x010AA5 04:8A95: A0        .byte $A0   ; 
- D 0 - I - 0x010AA6 04:8A96: F4        .byte con_se_cb_1_F0 + $04   ; 
- D 0 - I - 0x010AA7 04:8A97: A0        .byte $A0   ; 
- D 0 - I - 0x010AA8 04:8A98: A0        .byte $A0   ; 
- D 0 - I - 0x010AA9 04:8A99: F5        .byte con_se_cb_1_F0 + $05   ; 
- D 0 - I - 0x010AAA 04:8A9A: A0        .byte $A0   ; 
- D 0 - I - 0x010AAB 04:8A9B: A0        .byte $A0   ; 
- D 0 - I - 0x010AAC 04:8A9C: F6        .byte con_se_cb_1_F0 + $06   ; 
- D 0 - I - 0x010AAD 04:8A9D: A0        .byte $A0   ; 
- D 0 - I - 0x010AAE 04:8A9E: D9        .byte con_se_cb_1_D0 + $09, $77, con_9E25_07 + $80   ; 
- D 0 - I - 0x010AB1 04:8AA1: 17        .byte $17   ; 
- D 0 - I - 0x010AB2 04:8AA2: EC        .byte con_se_cb_1_EC, $00   ; 
- D 0 - I - 0x010AB4 04:8AA4: E9        .byte con_se_cb_1_E9, $B1   ; 
- D 0 - I - 0x010AB6 04:8AA6: E5        .byte con_se_cb_1_E0 + $05   ; 
- D 0 - I - 0x010AB7 04:8AA7: 80        .byte $80   ; 
- D 0 - I - 0x010AB8 04:8AA8: F5        .byte con_se_cb_1_F0 + $05   ; 
- D 0 - I - 0x010AB9 04:8AA9: 80        .byte $80   ; 
- D 0 - I - 0x010ABA 04:8AAA: F0        .byte con_se_cb_1_F0 + $00   ; 
- D 0 - I - 0x010ABB 04:8AAB: 70        .byte $70   ; 
- D 0 - I - 0x010ABC 04:8AAC: F5        .byte con_se_cb_1_F0 + $05   ; 
- D 0 - I - 0x010ABD 04:8AAD: 70        .byte $70   ; 
- D 0 - I - 0x010ABE 04:8AAE: F0        .byte con_se_cb_1_F0 + $00   ; 
- D 0 - I - 0x010ABF 04:8AAF: 60        .byte $60   ; 
- D 0 - I - 0x010AC0 04:8AB0: F5        .byte con_se_cb_1_F0 + $05   ; 
- D 0 - I - 0x010AC1 04:8AB1: 60        .byte $60   ; 
- D 0 - I - 0x010AC2 04:8AB2: F0        .byte con_se_cb_1_F0 + $00   ; 
- D 0 - I - 0x010AC3 04:8AB3: 70        .byte $70   ; 
- D 0 - I - 0x010AC4 04:8AB4: 00        .byte $00   ; 
- D 0 - I - 0x010AC5 04:8AB5: 00        .byte $00   ; 
- D 0 - I - 0x010AC6 04:8AB6: 00        .byte $00   ; 
- D 0 - I - 0x010AC7 04:8AB7: 00        .byte $00   ; 
- D 0 - I - 0x010AC8 04:8AB8: 00        .byte $00   ; 
- D 0 - I - 0x010AC9 04:8AB9: F3        .byte con_se_cb_1_F0 + $03   ; 
- D 0 - I - 0x010ACA 04:8ABA: 00        .byte $00   ; 
- D 0 - I - 0x010ACB 04:8ABB: F5        .byte con_se_cb_1_F0 + $05   ; 
- D 0 - I - 0x010ACC 04:8ABC: 00        .byte $00   ; 
- D 0 - I - 0x010ACD 04:8ABD: 00        .byte $00   ; 
- D 0 - I - 0x010ACE 04:8ABE: 00        .byte $00   ; 
- D 0 - I - 0x010ACF 04:8ABF: F0        .byte con_se_cb_1_F0 + $00   ; 
- D 0 - I - 0x010AD0 04:8AC0: 80        .byte $80   ; 
- D 0 - I - 0x010AD1 04:8AC1: F5        .byte con_se_cb_1_F0 + $05   ; 
- D 0 - I - 0x010AD2 04:8AC2: 80        .byte $80   ; 
- D 0 - I - 0x010AD3 04:8AC3: F0        .byte con_se_cb_1_F0 + $00   ; 
- D 0 - I - 0x010AD4 04:8AC4: 70        .byte $70   ; 
- D 0 - I - 0x010AD5 04:8AC5: F5        .byte con_se_cb_1_F0 + $05   ; 
- D 0 - I - 0x010AD6 04:8AC6: 70        .byte $70   ; 
- D 0 - I - 0x010AD7 04:8AC7: F0        .byte con_se_cb_1_F0 + $00   ; 
- D 0 - I - 0x010AD8 04:8AC8: 60        .byte $60   ; 
- D 0 - I - 0x010AD9 04:8AC9: F5        .byte con_se_cb_1_F0 + $05   ; 
- D 0 - I - 0x010ADA 04:8ACA: 60        .byte $60   ; 
- D 0 - I - 0x010ADB 04:8ACB: F0        .byte con_se_cb_1_F0 + $00   ; 
- D 0 - I - 0x010ADC 04:8ACC: 70        .byte $70   ; 
- D 0 - I - 0x010ADD 04:8ACD: D9        .byte con_se_cb_1_D0 + $09, $F8, con_9E25_05 + $80   ; 
- D 0 - I - 0x010AE0 04:8AD0: 13        .byte $13   ; 
- D 0 - I - 0x010AE1 04:8AD1: EB        .byte con_se_cb_1_EB, con_9E7B_54, $32   ; 
- D 0 - I - 0x010AE4 04:8AD4: EC        .byte con_se_cb_1_EC, $02   ; 
- D 0 - I - 0x010AE6 04:8AD6: E9        .byte con_se_cb_1_E9, $35   ; 
- D 0 - I - 0x010AE8 04:8AD8: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x010AE9 04:8AD9: 32        .byte $32   ; 
- D 0 - I - 0x010AEA 04:8ADA: E8        .byte con_se_cb_1_E8, $10 + $09   ; 
- D 0 - I - 0x010AEC 04:8ADC: 71        .byte $71   ; 
- D 0 - I - 0x010AED 04:8ADD: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x010AEE 04:8ADE: 01        .byte $01   ; 
- D 0 - I - 0x010AEF 04:8ADF: E8        .byte con_se_cb_1_E8, $10 + $02   ; 
- D 0 - I - 0x010AF1 04:8AE1: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x010AF2 04:8AE2: BA        .byte $BA   ; 
- D 0 - I - 0x010AF3 04:8AE3: 31        .byte $31   ; 
- D 0 - I - 0x010AF4 04:8AE4: 70        .byte $70   ; 
- D 0 - I - 0x010AF5 04:8AE5: E8        .byte con_se_cb_1_E8, $10 + $09   ; 
- D 0 - I - 0x010AF7 04:8AE7: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x010AF8 04:8AE8: 01        .byte $01   ; 
- D 0 - I - 0x010AF9 04:8AE9: E8        .byte con_se_cb_1_E8, $10 + $02   ; 
- D 0 - I - 0x010AFB 04:8AEB: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x010AFC 04:8AEC: B8        .byte $B8   ; 
- D 0 - I - 0x010AFD 04:8AED: EC        .byte con_se_cb_1_EC, $00   ; 
- D 0 - I - 0x010AFF 04:8AEF: E8        .byte con_se_cb_1_E8, $10 + $03   ; 
- D 0 - I - 0x010B01 04:8AF1: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x010B02 04:8AF2: 20        .byte $20   ; 
- D 0 - I - 0x010B03 04:8AF3: 20        .byte $20   ; 
- D 0 - I - 0x010B04 04:8AF4: E9        .byte con_se_cb_1_E9, $00   ; 
- D 0 - I - 0x010B06 04:8AF6: C0        .byte con_se_cb_1_C0 + $00   ; 
- D 0 - I - 0x010B07 04:8AF7: F4        .byte con_se_cb_1_F0 + $04   ; 
- D 0 - I - 0x010B08 04:8AF8: 20        .byte $20   ; 
- D 0 - I - 0x010B09 04:8AF9: 20        .byte $20   ; 
- D 0 - I - 0x010B0A 04:8AFA: C0        .byte con_se_cb_1_C0 + $00   ; 
- D 0 - I - 0x010B0B 04:8AFB: F0        .byte con_se_cb_1_F0 + $00   ; 
- D 0 - I - 0x010B0C 04:8AFC: 00        .byte $00   ; 
- D 0 - I - 0x010B0D 04:8AFD: F6        .byte con_se_cb_1_F0 + $06   ; 
- D 0 - I - 0x010B0E 04:8AFE: 20        .byte $20   ; 
- D 0 - I - 0x010B0F 04:8AFF: C0        .byte con_se_cb_1_C0 + $00   ; 
- D 0 - I - 0x010B10 04:8B00: F4        .byte con_se_cb_1_F0 + $04   ; 
- D 0 - I - 0x010B11 04:8B01: 00        .byte $00   ; 
- D 0 - I - 0x010B12 04:8B02: C0        .byte con_se_cb_1_C0 + $00   ; 
- D 0 - I - 0x010B13 04:8B03: F5        .byte con_se_cb_1_F0 + $05   ; 
- D 0 - I - 0x010B14 04:8B04: 00        .byte $00   ; 
- D 0 - I - 0x010B15 04:8B05: F0        .byte con_se_cb_1_F0 + $00   ; 
- D 0 - I - 0x010B16 04:8B06: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x010B17 04:8B07: B0        .byte $B0   ; 
- D 0 - I - 0x010B18 04:8B08: F6        .byte con_se_cb_1_F0 + $06   ; 
- D 0 - I - 0x010B19 04:8B09: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x010B1A 04:8B0A: 00        .byte $00   ; 
- D 0 - I - 0x010B1B 04:8B0B: C0        .byte con_se_cb_1_C0 + $00   ; 
- D 0 - I - 0x010B1C 04:8B0C: F4        .byte con_se_cb_1_F0 + $04   ; 
- D 0 - I - 0x010B1D 04:8B0D: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x010B1E 04:8B0E: B0        .byte $B0   ; 
- D 0 - I - 0x010B1F 04:8B0F: C0        .byte con_se_cb_1_C0 + $00   ; 
- D 0 - I - 0x010B20 04:8B10: F5        .byte con_se_cb_1_F0 + $05   ; 
- D 0 - I - 0x010B21 04:8B11: B0        .byte $B0   ; 
- D 0 - I - 0x010B22 04:8B12: F0        .byte con_se_cb_1_F0 + $00   ; 
- D 0 - I - 0x010B23 04:8B13: A0        .byte $A0   ; 
- D 0 - I - 0x010B24 04:8B14: F6        .byte con_se_cb_1_F0 + $06   ; 
- D 0 - I - 0x010B25 04:8B15: B0        .byte $B0   ; 
- D 0 - I - 0x010B26 04:8B16: C0        .byte con_se_cb_1_C0 + $00   ; 
- D 0 - I - 0x010B27 04:8B17: F4        .byte con_se_cb_1_F0 + $04   ; 
- D 0 - I - 0x010B28 04:8B18: A0        .byte $A0   ; 
- D 0 - I - 0x010B29 04:8B19: C0        .byte con_se_cb_1_C0 + $00   ; 
- D 0 - I - 0x010B2A 04:8B1A: F5        .byte con_se_cb_1_F0 + $05   ; 
- D 0 - I - 0x010B2B 04:8B1B: A0        .byte $A0   ; 
- D 0 - I - 0x010B2C 04:8B1C: F0        .byte con_se_cb_1_F0 + $00   ; 
- D 0 - I - 0x010B2D 04:8B1D: 90        .byte $90   ; 
- D 0 - I - 0x010B2E 04:8B1E: F6        .byte con_se_cb_1_F0 + $06   ; 
- D 0 - I - 0x010B2F 04:8B1F: A0        .byte $A0   ; 
- D 0 - I - 0x010B30 04:8B20: C0        .byte con_se_cb_1_C0 + $00   ; 
- D 0 - I - 0x010B31 04:8B21: F0        .byte con_se_cb_1_F0 + $00   ; 
- D 0 - I - 0x010B32 04:8B22: 80        .byte $80   ; 
- D 0 - I - 0x010B33 04:8B23: F6        .byte con_se_cb_1_F0 + $06   ; 
- D 0 - I - 0x010B34 04:8B24: 90        .byte $90   ; 
- D 0 - I - 0x010B35 04:8B25: F0        .byte con_se_cb_1_F0 + $00   ; 
- D 0 - I - 0x010B36 04:8B26: 70        .byte $70   ; 
- D 0 - I - 0x010B37 04:8B27: F6        .byte con_se_cb_1_F0 + $06   ; 
- D 0 - I - 0x010B38 04:8B28: 90        .byte $90   ; 
- D 0 - I - 0x010B39 04:8B29: F4        .byte con_se_cb_1_F0 + $04   ; 
- D 0 - I - 0x010B3A 04:8B2A: 70        .byte $70   ; 
- D 0 - I - 0x010B3B 04:8B2B: F0        .byte con_se_cb_1_F0 + $00   ; 
- D 0 - I - 0x010B3C 04:8B2C: EC        .byte con_se_cb_1_EC, $02   ; 
- D 0 - I - 0x010B3E 04:8B2E: E9        .byte con_se_cb_1_E9, $35   ; 
- D 0 - I - 0x010B40 04:8B30: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x010B41 04:8B31: 82        .byte $82   ; 
- D 0 - I - 0x010B42 04:8B32: E8        .byte con_se_cb_1_E8, $10 + $02   ; 
- D 0 - I - 0x010B44 04:8B34: E6        .byte con_se_cb_1_E6, $12   ; 
- D 0 - I - 0x010B46 04:8B36: 3A        .byte $3A   ; 
- D 0 - I - 0x010B47 04:8B37: E6        .byte con_se_cb_1_E6, $09   ; 
- D 0 - I - 0x010B49 04:8B39: E8        .byte con_se_cb_1_E8, $10 + $05   ; 
- D 0 - I - 0x010B4B 04:8B3B: 81        .byte $81   ; 
- D 0 - I - 0x010B4C 04:8B3C: 71        .byte $71   ; 
- D 0 - I - 0x010B4D 04:8B3D: 61        .byte $61   ; 
- D 0 - I - 0x010B4E 04:8B3E: 70        .byte $70   ; 
- D 0 - I - 0x010B4F 04:8B3F: 82        .byte $82   ; 
- D 0 - I - 0x010B50 04:8B40: 72        .byte $72   ; 
- D 0 - I - 0x010B51 04:8B41: 62        .byte $62   ; 
- D 0 - I - 0x010B52 04:8B42: 52        .byte $52   ; 
- D 0 - I - 0x010B53 04:8B43: 41        .byte $41   ; 
- D 0 - I - 0x010B54 04:8B44: 31        .byte $31   ; 
- D 0 - I - 0x010B55 04:8B45: E8        .byte con_se_cb_1_E8, $10 + $03   ; 
- D 0 - I - 0x010B57 04:8B47: 32        .byte $32   ; 
- D 0 - I - 0x010B58 04:8B48: E8        .byte con_se_cb_1_E8, $10 + $02   ; 
- D 0 - I - 0x010B5A 04:8B4A: E6        .byte con_se_cb_1_E6, $0F   ; 
- D 0 - I - 0x010B5C 04:8B4C: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 0 - I - 0x010B5D 04:8B4D: EB        .byte con_se_cb_1_EB, con_9E7B_55, $34   ; 
- D 0 - I - 0x010B60 04:8B50: AE        .byte $AE   ; 
- D 0 - I - 0x010B61 04:8B51: E6        .byte con_se_cb_1_E6, $09   ; 
- D 0 - I - 0x010B63 04:8B53: C0        .byte con_se_cb_1_C0 + $00   ; 
- D 0 - I - 0x010B64 04:8B54: E9        .byte con_se_cb_1_E9, $00   ; 
- D 0 - I - 0x010B66 04:8B56: E9        .byte con_se_cb_1_E9, $30   ; 
- D 0 - I - 0x010B68 04:8B58: E6        .byte con_se_cb_1_E6, $01   ; 
- D 0 - I - 0x010B6A 04:8B5A: F4        .byte con_se_cb_1_F0 + $04   ; 
- D 0 - I - 0x010B6B 04:8B5B: 50        .byte $50   ; 
- D 0 - I - 0x010B6C 04:8B5C: 61        .byte $61   ; 
- D 0 - I - 0x010B6D 04:8B5D: 71        .byte $71   ; 
- D 0 - I - 0x010B6E 04:8B5E: F3        .byte con_se_cb_1_F0 + $03   ; 
- D 0 - I - 0x010B6F 04:8B5F: 81        .byte $81   ; 
- D 0 - I - 0x010B70 04:8B60: 91        .byte $91   ; 
- D 0 - I - 0x010B71 04:8B61: A1        .byte $A1   ; 
- D 0 - I - 0x010B72 04:8B62: F2        .byte con_se_cb_1_F0 + $02   ; 
- D 0 - I - 0x010B73 04:8B63: B1        .byte $B1   ; 
- D 0 - I - 0x010B74 04:8B64: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x010B75 04:8B65: 01        .byte $01   ; 
- D 0 - I - 0x010B76 04:8B66: F1        .byte con_se_cb_1_F0 + $01   ; 
- D 0 - I - 0x010B77 04:8B67: 11        .byte $11   ; 
- D 0 - I - 0x010B78 04:8B68: 21        .byte $21   ; 
- D 0 - I - 0x010B79 04:8B69: 31        .byte $31   ; 
- D 0 - I - 0x010B7A 04:8B6A: F0        .byte con_se_cb_1_F0 + $00   ; 
- D 0 - I - 0x010B7B 04:8B6B: 41        .byte $41   ; 
- D 0 - I - 0x010B7C 04:8B6C: 51        .byte $51   ; 
- D 0 - I - 0x010B7D 04:8B6D: 61        .byte $61   ; 
- D 0 - I - 0x010B7E 04:8B6E: EB        .byte con_se_cb_1_EB, $00   ; 
- D 0 - I - 0x010B80 04:8B70: D9        .byte con_se_cb_1_D0 + $09, $38, con_9E25_05 + $80   ; 
- D 0 - I - 0x010B83 04:8B73: 1A        .byte $1A   ; 
- D 0 - I - 0x010B84 04:8B74: EC        .byte con_se_cb_1_EC, $00   ; 
- D 0 - I - 0x010B86 04:8B76: E9        .byte con_se_cb_1_E9, $71   ; 
- D 0 - I - 0x010B88 04:8B78: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x010B89 04:8B79: 70        .byte $70   ; 
- D 0 - I - 0x010B8A 04:8B7A: 70        .byte $70   ; 
- D 0 - I - 0x010B8B 04:8B7B: C0        .byte con_se_cb_1_C0 + $00   ; 
- D 0 - I - 0x010B8C 04:8B7C: E9        .byte con_se_cb_1_E9, $00   ; 
- D 0 - I - 0x010B8E 04:8B7E: F4        .byte con_se_cb_1_F0 + $04   ; 
- D 0 - I - 0x010B8F 04:8B7F: 70        .byte $70   ; 
- D 0 - I - 0x010B90 04:8B80: F6        .byte con_se_cb_1_F0 + $06   ; 
- D 0 - I - 0x010B91 04:8B81: 70        .byte $70   ; 
- D 0 - I - 0x010B92 04:8B82: C0        .byte con_se_cb_1_C0 + $00   ; 
- D 0 - I - 0x010B93 04:8B83: F0        .byte con_se_cb_1_F0 + $00   ; 
- D 0 - I - 0x010B94 04:8B84: EC        .byte con_se_cb_1_EC, $00   ; 
- D 0 - I - 0x010B96 04:8B86: E9        .byte con_se_cb_1_E9, $71   ; 
- D 0 - I - 0x010B98 04:8B88: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x010B99 04:8B89: 70        .byte $70   ; 
- D 0 - I - 0x010B9A 04:8B8A: 70        .byte $70   ; 
- D 0 - I - 0x010B9B 04:8B8B: C0        .byte con_se_cb_1_C0 + $00   ; 
- D 0 - I - 0x010B9C 04:8B8C: E9        .byte con_se_cb_1_E9, $00   ; 
- D 0 - I - 0x010B9E 04:8B8E: F4        .byte con_se_cb_1_F0 + $04   ; 
- D 0 - I - 0x010B9F 04:8B8F: 70        .byte $70   ; 
- D 0 - I - 0x010BA0 04:8B90: F6        .byte con_se_cb_1_F0 + $06   ; 
- D 0 - I - 0x010BA1 04:8B91: 70        .byte $70   ; 
- D 0 - I - 0x010BA2 04:8B92: C0        .byte con_se_cb_1_C0 + $00   ; 
- D 0 - I - 0x010BA3 04:8B93: F0        .byte con_se_cb_1_F0 + $00   ; 
- D 0 - I - 0x010BA4 04:8B94: E9        .byte con_se_cb_1_E9, $71   ; 
- D 0 - I - 0x010BA6 04:8B96: 70        .byte $70   ; 
- D 0 - I - 0x010BA7 04:8B97: 70        .byte $70   ; 
- D 0 - I - 0x010BA8 04:8B98: E9        .byte con_se_cb_1_E9, $00   ; 
- D 0 - I - 0x010BAA 04:8B9A: C0        .byte con_se_cb_1_C0 + $00   ; 
- D 0 - I - 0x010BAB 04:8B9B: F6        .byte con_se_cb_1_F0 + $06   ; 
- D 0 - I - 0x010BAC 04:8B9C: 70        .byte $70   ; 
- D 0 - I - 0x010BAD 04:8B9D: F0        .byte con_se_cb_1_F0 + $00   ; 
- D 0 - I - 0x010BAE 04:8B9E: E9        .byte con_se_cb_1_E9, $71   ; 
- D 0 - I - 0x010BB0 04:8BA0: 70        .byte $70   ; 
- D 0 - I - 0x010BB1 04:8BA1: 70        .byte $70   ; 
- D 0 - I - 0x010BB2 04:8BA2: C0        .byte con_se_cb_1_C0 + $00   ; 
- D 0 - I - 0x010BB3 04:8BA3: E9        .byte con_se_cb_1_E9, $00   ; 
- D 0 - I - 0x010BB5 04:8BA5: F4        .byte con_se_cb_1_F0 + $04   ; 
- D 0 - I - 0x010BB6 04:8BA6: 70        .byte $70   ; 
- D 0 - I - 0x010BB7 04:8BA7: F6        .byte con_se_cb_1_F0 + $06   ; 
- D 0 - I - 0x010BB8 04:8BA8: 70        .byte $70   ; 
- D 0 - I - 0x010BB9 04:8BA9: C0        .byte con_se_cb_1_C0 + $00   ; 
- D 0 - I - 0x010BBA 04:8BAA: F0        .byte con_se_cb_1_F0 + $00   ; 
- D 0 - I - 0x010BBB 04:8BAB: E9        .byte con_se_cb_1_E9, $71   ; 
- D 0 - I - 0x010BBD 04:8BAD: 70        .byte $70   ; 
- D 0 - I - 0x010BBE 04:8BAE: 70        .byte $70   ; 
- D 0 - I - 0x010BBF 04:8BAF: E6        .byte con_se_cb_1_E6, $0C   ; 
- D 0 - I - 0x010BC1 04:8BB1: C0        .byte con_se_cb_1_C0 + $00   ; 
- D 0 - I - 0x010BC2 04:8BB2: E8        .byte con_se_cb_1_E8, $10 + $07   ; 
- D 0 - I - 0x010BC4 04:8BB4: 70        .byte $70   ; 
- D 0 - I - 0x010BC5 04:8BB5: 80        .byte $80   ; 
- D 0 - I - 0x010BC6 04:8BB6: 90        .byte $90   ; 
- D 0 - I - 0x010BC7 04:8BB7: A0        .byte $A0   ; 
- D 0 - I - 0x010BC8 04:8BB8: B0        .byte $B0   ; 
- D 0 - I - 0x010BC9 04:8BB9: FE        .byte con_se_cb_1_FE, $FF   ; 
- D 0 - I - 0x010BCB 04:8BBB: 71 8A     .word off_FE_8A71



off_ch_02_0x010BCD_58:
- D 0 - I - 0x010BCD 04:8BBD: D9        .byte con_se_cb_1_D0 + $09, $12   ; 
- D 0 - I - 0x010BCF 04:8BBF: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 0 - I - 0x010BD0 04:8BC0: FB        .byte con_se_cb_1_FB   ; 
- D 0 - I - 0x010BD1 04:8BC1: 00        .byte $00   ; 
- D 0 - I - 0x010BD2 04:8BC2: 00        .byte $00   ; 
- D 0 - I - 0x010BD3 04:8BC3: 00        .byte $00   ; 
- D 0 - I - 0x010BD4 04:8BC4: 00        .byte $00   ; 
- D 0 - I - 0x010BD5 04:8BC5: 00        .byte $00   ; 
- D 0 - I - 0x010BD6 04:8BC6: 00        .byte $00   ; 
- D 0 - I - 0x010BD7 04:8BC7: C2        .byte con_se_cb_1_C0 + $02   ; 
- D 0 - I - 0x010BD8 04:8BC8: 81        .byte $81   ; 
- D 0 - I - 0x010BD9 04:8BC9: 71        .byte $71   ; 
- D 0 - I - 0x010BDA 04:8BCA: 61        .byte $61   ; 
- D 0 - I - 0x010BDB 04:8BCB: 70        .byte $70   ; 
- D 0 - I - 0x010BDC 04:8BCC: FE        .byte con_se_cb_1_FE, $04   ; 
off_FE_8BCE:
- D 0 - I - 0x010BDE 04:8BCE: D9        .byte con_se_cb_1_D0 + $09, $12   ; 
- D 0 - I - 0x010BE0 04:8BD0: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 0 - I - 0x010BE1 04:8BD1: FB        .byte con_se_cb_1_FB   ; 
- D 0 - I - 0x010BE2 04:8BD2: 00        .byte $00   ; 
- D 0 - I - 0x010BE3 04:8BD3: 00        .byte $00   ; 
- D 0 - I - 0x010BE4 04:8BD4: 00        .byte $00   ; 
- D 0 - I - 0x010BE5 04:8BD5: 00        .byte $00   ; 
- D 0 - I - 0x010BE6 04:8BD6: 00        .byte $00   ; 
- D 0 - I - 0x010BE7 04:8BD7: 00        .byte $00   ; 
- D 0 - I - 0x010BE8 04:8BD8: C2        .byte con_se_cb_1_C0 + $02   ; 
- D 0 - I - 0x010BE9 04:8BD9: 81        .byte $81   ; 
- D 0 - I - 0x010BEA 04:8BDA: 71        .byte $71   ; 
- D 0 - I - 0x010BEB 04:8BDB: 61        .byte $61   ; 
- D 0 - I - 0x010BEC 04:8BDC: 70        .byte $70   ; 
- D 0 - I - 0x010BED 04:8BDD: FE        .byte con_se_cb_1_FE, $04   ; 
- D 0 - I - 0x010BEF 04:8BDF: D9        .byte con_se_cb_1_D0 + $09, $12   ; 
- D 0 - I - 0x010BF1 04:8BE1: FB        .byte con_se_cb_1_FB   ; 
- D 0 - I - 0x010BF2 04:8BE2: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 0 - I - 0x010BF3 04:8BE3: 00        .byte $00   ; 
- D 0 - I - 0x010BF4 04:8BE4: 00        .byte $00   ; 
- D 0 - I - 0x010BF5 04:8BE5: 00        .byte $00   ; 
- D 0 - I - 0x010BF6 04:8BE6: 00        .byte $00   ; 
- D 0 - I - 0x010BF7 04:8BE7: 00        .byte $00   ; 
- D 0 - I - 0x010BF8 04:8BE8: 00        .byte $00   ; 
- D 0 - I - 0x010BF9 04:8BE9: C2        .byte con_se_cb_1_C0 + $02   ; 
- D 0 - I - 0x010BFA 04:8BEA: 81        .byte $81   ; 
- D 0 - I - 0x010BFB 04:8BEB: 71        .byte $71   ; 
- D 0 - I - 0x010BFC 04:8BEC: 61        .byte $61   ; 
- D 0 - I - 0x010BFD 04:8BED: 70        .byte $70   ; 
- D 0 - I - 0x010BFE 04:8BEE: FE        .byte con_se_cb_1_FE, $02   ; 
- D 0 - I - 0x010C00 04:8BF0: D9        .byte con_se_cb_1_D0 + $09, $12   ; 
- D 0 - I - 0x010C02 04:8BF2: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 0 - I - 0x010C03 04:8BF3: 00        .byte $00   ; 
- D 0 - I - 0x010C04 04:8BF4: 00        .byte $00   ; 
- D 0 - I - 0x010C05 04:8BF5: 00        .byte $00   ; 
- D 0 - I - 0x010C06 04:8BF6: 00        .byte $00   ; 
- D 0 - I - 0x010C07 04:8BF7: 00        .byte $00   ; 
- D 0 - I - 0x010C08 04:8BF8: 00        .byte $00   ; 
- D 0 - I - 0x010C09 04:8BF9: C2        .byte con_se_cb_1_C0 + $02   ; 
- D 0 - I - 0x010C0A 04:8BFA: 81        .byte $81   ; 
- D 0 - I - 0x010C0B 04:8BFB: 71        .byte $71   ; 
- D 0 - I - 0x010C0C 04:8BFC: 61        .byte $61   ; 
- D 0 - I - 0x010C0D 04:8BFD: 70        .byte $70   ; 
- D 0 - I - 0x010C0E 04:8BFE: 00        .byte $00   ; 
- D 0 - I - 0x010C0F 04:8BFF: 00        .byte $00   ; 
- D 0 - I - 0x010C10 04:8C00: 00        .byte $00   ; 
- D 0 - I - 0x010C11 04:8C01: 00        .byte $00   ; 
- D 0 - I - 0x010C12 04:8C02: 01        .byte $01   ; 
- D 0 - I - 0x010C13 04:8C03: 21        .byte $21   ; 
- D 0 - I - 0x010C14 04:8C04: C0        .byte con_se_cb_1_C0 + $00   ; 
- D 0 - I - 0x010C15 04:8C05: 31        .byte $31   ; 
- D 0 - I - 0x010C16 04:8C06: 41        .byte $41   ; 
- D 0 - I - 0x010C17 04:8C07: 70        .byte $70   ; 
- D 0 - I - 0x010C18 04:8C08: 40        .byte $40   ; 
- D 0 - I - 0x010C19 04:8C09: 00        .byte $00   ; 
- D 0 - I - 0x010C1A 04:8C0A: D9        .byte con_se_cb_1_D0 + $09, $12   ; 
- D 0 - I - 0x010C1C 04:8C0C: FB        .byte con_se_cb_1_FB   ; 
- D 0 - I - 0x010C1D 04:8C0D: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 0 - I - 0x010C1E 04:8C0E: 50        .byte $50   ; 
- D 0 - I - 0x010C1F 04:8C0F: 50        .byte $50   ; 
- D 0 - I - 0x010C20 04:8C10: 50        .byte $50   ; 
- D 0 - I - 0x010C21 04:8C11: 50        .byte $50   ; 
- D 0 - I - 0x010C22 04:8C12: 50        .byte $50   ; 
- D 0 - I - 0x010C23 04:8C13: 50        .byte $50   ; 
- D 0 - I - 0x010C24 04:8C14: C2        .byte con_se_cb_1_C0 + $02   ; 
- D 0 - I - 0x010C25 04:8C15: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x010C26 04:8C16: 11        .byte $11   ; 
- D 0 - I - 0x010C27 04:8C17: 01        .byte $01   ; 
- D 0 - I - 0x010C28 04:8C18: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 0 - I - 0x010C29 04:8C19: B1        .byte $B1   ; 
- D 0 - I - 0x010C2A 04:8C1A: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x010C2B 04:8C1B: 00        .byte $00   ; 
- D 0 - I - 0x010C2C 04:8C1C: FE        .byte con_se_cb_1_FE, $02   ; 
- D 0 - I - 0x010C2E 04:8C1E: 12        .byte $12   ; 
- D 0 - I - 0x010C2F 04:8C1F: 02        .byte $02   ; 
- D 0 - I - 0x010C30 04:8C20: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 0 - I - 0x010C31 04:8C21: B2        .byte $B2   ; 
- D 0 - I - 0x010C32 04:8C22: A2        .byte $A2   ; 
- D 0 - I - 0x010C33 04:8C23: 91        .byte $91   ; 
- D 0 - I - 0x010C34 04:8C24: 81        .byte $81   ; 
- D 0 - I - 0x010C35 04:8C25: FB        .byte con_se_cb_1_FB   ; 
- D 0 - I - 0x010C36 04:8C26: 00        .byte $00   ; 
- D 0 - I - 0x010C37 04:8C27: 00        .byte $00   ; 
- D 0 - I - 0x010C38 04:8C28: 00        .byte $00   ; 
- D 0 - I - 0x010C39 04:8C29: 00        .byte $00   ; 
- D 0 - I - 0x010C3A 04:8C2A: 00        .byte $00   ; 
- D 0 - I - 0x010C3B 04:8C2B: 00        .byte $00   ; 
- D 0 - I - 0x010C3C 04:8C2C: C2        .byte con_se_cb_1_C0 + $02   ; 
- D 0 - I - 0x010C3D 04:8C2D: 81        .byte $81   ; 
- D 0 - I - 0x010C3E 04:8C2E: 71        .byte $71   ; 
- D 0 - I - 0x010C3F 04:8C2F: 61        .byte $61   ; 
- D 0 - I - 0x010C40 04:8C30: 70        .byte $70   ; 
- D 0 - I - 0x010C41 04:8C31: FE        .byte con_se_cb_1_FE, $02   ; 
- D 0 - I - 0x010C43 04:8C33: D9        .byte con_se_cb_1_D0 + $09, $12   ; 
- D 0 - I - 0x010C45 04:8C35: FB        .byte con_se_cb_1_FB   ; 
- D 0 - I - 0x010C46 04:8C36: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x010C47 04:8C37: 70        .byte $70   ; 
- D 0 - I - 0x010C48 04:8C38: 70        .byte $70   ; 
- D 0 - I - 0x010C49 04:8C39: C0        .byte con_se_cb_1_C0 + $00   ; 
- D 0 - I - 0x010C4A 04:8C3A: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 0 - I - 0x010C4B 04:8C3B: 70        .byte $70   ; 
- D 0 - I - 0x010C4C 04:8C3C: 70        .byte $70   ; 
- D 0 - I - 0x010C4D 04:8C3D: C0        .byte con_se_cb_1_C0 + $00   ; 
- D 0 - I - 0x010C4E 04:8C3E: FE        .byte con_se_cb_1_FE, $02   ; 
- D 0 - I - 0x010C50 04:8C40: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x010C51 04:8C41: 70        .byte $70   ; 
- D 0 - I - 0x010C52 04:8C42: 70        .byte $70   ; 
- D 0 - I - 0x010C53 04:8C43: C1        .byte con_se_cb_1_C0 + $01   ; 
- D 0 - I - 0x010C54 04:8C44: 70        .byte $70   ; 
- D 0 - I - 0x010C55 04:8C45: 70        .byte $70   ; 
- D 0 - I - 0x010C56 04:8C46: C0        .byte con_se_cb_1_C0 + $00   ; 
- D 0 - I - 0x010C57 04:8C47: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 0 - I - 0x010C58 04:8C48: 70        .byte $70   ; 
- D 0 - I - 0x010C59 04:8C49: 70        .byte $70   ; 
- D 0 - I - 0x010C5A 04:8C4A: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x010C5B 04:8C4B: C0        .byte con_se_cb_1_C0 + $00   ; 
- D 0 - I - 0x010C5C 04:8C4C: 70        .byte $70   ; 
- D 0 - I - 0x010C5D 04:8C4D: 70        .byte $70   ; 
- D 0 - I - 0x010C5E 04:8C4E: E6        .byte con_se_cb_1_E6, $0C   ; 
- D 0 - I - 0x010C60 04:8C50: C0        .byte con_se_cb_1_C0 + $00   ; 
- D 0 - I - 0x010C61 04:8C51: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 0 - I - 0x010C62 04:8C52: 70        .byte $70   ; 
- D 0 - I - 0x010C63 04:8C53: 80        .byte $80   ; 
- D 0 - I - 0x010C64 04:8C54: 90        .byte $90   ; 
- D 0 - I - 0x010C65 04:8C55: A0        .byte $A0   ; 
- D 0 - I - 0x010C66 04:8C56: B0        .byte $B0   ; 
- D 0 - I - 0x010C67 04:8C57: FE        .byte con_se_cb_1_FE, $FF   ; 
- D 0 - I - 0x010C69 04:8C59: CE 8B     .word off_FE_8BCE



off_ch_05_0x010C6B_58:
- D 0 - I - 0x010C6B 04:8C5B: D9        .byte $D9   ; 
- D 0 - I - 0x010C6C 04:8C5C: FB        .byte con_se_cb_1_FB   ; 
- D 0 - I - 0x010C6D 04:8C5D: D1        .byte $D1   ; 
- D 0 - I - 0x010C6E 04:8C5E: B0        .byte $B0   ; 
- D 0 - I - 0x010C6F 04:8C5F: 17        .byte $17   ; 
- D 0 - I - 0x010C70 04:8C60: D9        .byte $D9   ; 
- D 0 - I - 0x010C71 04:8C61: C0        .byte $C0   ; 
- D 0 - I - 0x010C72 04:8C62: 10        .byte $10   ; 
- D 0 - I - 0x010C73 04:8C63: B0        .byte $B0   ; 
- D 0 - I - 0x010C74 04:8C64: 41        .byte $41   ; 
- D 0 - I - 0x010C75 04:8C65: 11        .byte $11   ; 
- D 0 - I - 0x010C76 04:8C66: 10        .byte $10   ; 
- D 0 - I - 0x010C77 04:8C67: B0        .byte $B0   ; 
- D 0 - I - 0x010C78 04:8C68: 10        .byte $10   ; 
- D 0 - I - 0x010C79 04:8C69: B0        .byte $B0   ; 
- D 0 - I - 0x010C7A 04:8C6A: 41        .byte $41   ; 
- D 0 - I - 0x010C7B 04:8C6B: 11        .byte $11   ; 
- D 0 - I - 0x010C7C 04:8C6C: FE        .byte con_se_cb_1_FE, $03   ; 
- D 0 - I - 0x010C7E 04:8C6E: D1        .byte $D1   ; 
- D 0 - I - 0x010C7F 04:8C6F: B0        .byte $B0   ; 
- D 0 - I - 0x010C80 04:8C70: 17        .byte $17   ; 
- D 0 - I - 0x010C81 04:8C71: D9        .byte $D9   ; 
- D 0 - I - 0x010C82 04:8C72: C0        .byte $C0   ; 
- D 0 - I - 0x010C83 04:8C73: 10        .byte $10   ; 
- D 0 - I - 0x010C84 04:8C74: B0        .byte $B0   ; 
- D 0 - I - 0x010C85 04:8C75: 41        .byte $41   ; 
- D 0 - I - 0x010C86 04:8C76: 11        .byte $11   ; 
- D 0 - I - 0x010C87 04:8C77: 10        .byte $10   ; 
- D 0 - I - 0x010C88 04:8C78: B0        .byte $B0   ; 
- D 0 - I - 0x010C89 04:8C79: 10        .byte $10   ; 
- D 0 - I - 0x010C8A 04:8C7A: B0        .byte $B0   ; 
- D 0 - I - 0x010C8B 04:8C7B: 41        .byte $41   ; 
- D 0 - I - 0x010C8C 04:8C7C: 10        .byte $10   ; 
- D 0 - I - 0x010C8D 04:8C7D: 20        .byte $20   ; 
off_FE_8C7E:
- D 0 - I - 0x010C8E 04:8C7E: D9        .byte $D9   ; 
- D 0 - I - 0x010C8F 04:8C7F: FB        .byte con_se_cb_1_FB   ; 
- D 0 - I - 0x010C90 04:8C80: D1        .byte $D1   ; 
- D 0 - I - 0x010C91 04:8C81: B0        .byte $B0   ; 
- D 0 - I - 0x010C92 04:8C82: 17        .byte $17   ; 
- D 0 - I - 0x010C93 04:8C83: D9        .byte $D9   ; 
- D 0 - I - 0x010C94 04:8C84: C0        .byte $C0   ; 
- D 0 - I - 0x010C95 04:8C85: 10        .byte $10   ; 
- D 0 - I - 0x010C96 04:8C86: B0        .byte $B0   ; 
- D 0 - I - 0x010C97 04:8C87: 41        .byte $41   ; 
- D 0 - I - 0x010C98 04:8C88: 11        .byte $11   ; 
- D 0 - I - 0x010C99 04:8C89: 10        .byte $10   ; 
- D 0 - I - 0x010C9A 04:8C8A: B0        .byte $B0   ; 
- D 0 - I - 0x010C9B 04:8C8B: 10        .byte $10   ; 
- D 0 - I - 0x010C9C 04:8C8C: B0        .byte $B0   ; 
- D 0 - I - 0x010C9D 04:8C8D: 41        .byte $41   ; 
- D 0 - I - 0x010C9E 04:8C8E: 11        .byte $11   ; 
- D 0 - I - 0x010C9F 04:8C8F: FE        .byte con_se_cb_1_FE, $03   ; 
- D 0 - I - 0x010CA1 04:8C91: D1        .byte $D1   ; 
- D 0 - I - 0x010CA2 04:8C92: B0        .byte $B0   ; 
- D 0 - I - 0x010CA3 04:8C93: 17        .byte $17   ; 
- D 0 - I - 0x010CA4 04:8C94: D9        .byte $D9   ; 
- D 0 - I - 0x010CA5 04:8C95: C0        .byte $C0   ; 
- D 0 - I - 0x010CA6 04:8C96: 10        .byte $10   ; 
- D 0 - I - 0x010CA7 04:8C97: B0        .byte $B0   ; 
- D 0 - I - 0x010CA8 04:8C98: 41        .byte $41   ; 
- D 0 - I - 0x010CA9 04:8C99: 11        .byte $11   ; 
- D 0 - I - 0x010CAA 04:8C9A: 10        .byte $10   ; 
- D 0 - I - 0x010CAB 04:8C9B: B0        .byte $B0   ; 
- D 0 - I - 0x010CAC 04:8C9C: 10        .byte $10   ; 
- D 0 - I - 0x010CAD 04:8C9D: B0        .byte $B0   ; 
- D 0 - I - 0x010CAE 04:8C9E: 41        .byte $41   ; 
- D 0 - I - 0x010CAF 04:8C9F: 10        .byte $10   ; 
- D 0 - I - 0x010CB0 04:8CA0: 20        .byte $20   ; 
- D 0 - I - 0x010CB1 04:8CA1: D9        .byte $D9   ; 
- D 0 - I - 0x010CB2 04:8CA2: FB        .byte con_se_cb_1_FB   ; 
- D 0 - I - 0x010CB3 04:8CA3: D1        .byte $D1   ; 
- D 0 - I - 0x010CB4 04:8CA4: B0        .byte $B0   ; 
- D 0 - I - 0x010CB5 04:8CA5: 17        .byte $17   ; 
- D 0 - I - 0x010CB6 04:8CA6: D9        .byte $D9   ; 
- D 0 - I - 0x010CB7 04:8CA7: C0        .byte $C0   ; 
- D 0 - I - 0x010CB8 04:8CA8: 10        .byte $10   ; 
- D 0 - I - 0x010CB9 04:8CA9: B0        .byte $B0   ; 
- D 0 - I - 0x010CBA 04:8CAA: 41        .byte $41   ; 
- D 0 - I - 0x010CBB 04:8CAB: 11        .byte $11   ; 
- D 0 - I - 0x010CBC 04:8CAC: 10        .byte $10   ; 
- D 0 - I - 0x010CBD 04:8CAD: B0        .byte $B0   ; 
- D 0 - I - 0x010CBE 04:8CAE: 10        .byte $10   ; 
- D 0 - I - 0x010CBF 04:8CAF: B0        .byte $B0   ; 
- D 0 - I - 0x010CC0 04:8CB0: 41        .byte $41   ; 
- D 0 - I - 0x010CC1 04:8CB1: 11        .byte $11   ; 
- D 0 - I - 0x010CC2 04:8CB2: FE        .byte con_se_cb_1_FE, $02   ; 
- D 0 - I - 0x010CC4 04:8CB4: D9        .byte $D9   ; 
- D 0 - I - 0x010CC5 04:8CB5: B1        .byte $B1   ; 
- D 0 - I - 0x010CC6 04:8CB6: 10        .byte $10   ; 
- D 0 - I - 0x010CC7 04:8CB7: B0        .byte $B0   ; 
- D 0 - I - 0x010CC8 04:8CB8: 41        .byte $41   ; 
- D 0 - I - 0x010CC9 04:8CB9: 11        .byte $11   ; 
- D 0 - I - 0x010CCA 04:8CBA: 10        .byte $10   ; 
- D 0 - I - 0x010CCB 04:8CBB: B0        .byte $B0   ; 
- D 0 - I - 0x010CCC 04:8CBC: 10        .byte $10   ; 
- D 0 - I - 0x010CCD 04:8CBD: B0        .byte $B0   ; 
- D 0 - I - 0x010CCE 04:8CBE: 41        .byte $41   ; 
- D 0 - I - 0x010CCF 04:8CBF: 11        .byte $11   ; 
- D 0 - I - 0x010CD0 04:8CC0: B1        .byte $B1   ; 
- D 0 - I - 0x010CD1 04:8CC1: 10        .byte $10   ; 
- D 0 - I - 0x010CD2 04:8CC2: B0        .byte $B0   ; 
- D 0 - I - 0x010CD3 04:8CC3: 41        .byte $41   ; 
- D 0 - I - 0x010CD4 04:8CC4: 11        .byte $11   ; 
- D 0 - I - 0x010CD5 04:8CC5: 10        .byte $10   ; 
- D 0 - I - 0x010CD6 04:8CC6: B0        .byte $B0   ; 
- D 0 - I - 0x010CD7 04:8CC7: 10        .byte $10   ; 
- D 0 - I - 0x010CD8 04:8CC8: B0        .byte $B0   ; 
- D 0 - I - 0x010CD9 04:8CC9: 41        .byte $41   ; 
- D 0 - I - 0x010CDA 04:8CCA: 10        .byte $10   ; 
- D 0 - I - 0x010CDB 04:8CCB: 20        .byte $20   ; 
- D 0 - I - 0x010CDC 04:8CCC: D9        .byte $D9   ; 
- D 0 - I - 0x010CDD 04:8CCD: FB        .byte con_se_cb_1_FB   ; 
- D 0 - I - 0x010CDE 04:8CCE: D1        .byte $D1   ; 
- D 0 - I - 0x010CDF 04:8CCF: B0        .byte $B0   ; 
- D 0 - I - 0x010CE0 04:8CD0: 17        .byte $17   ; 
- D 0 - I - 0x010CE1 04:8CD1: D9        .byte $D9   ; 
- D 0 - I - 0x010CE2 04:8CD2: C0        .byte $C0   ; 
- D 0 - I - 0x010CE3 04:8CD3: 10        .byte $10   ; 
- D 0 - I - 0x010CE4 04:8CD4: B0        .byte $B0   ; 
- D 0 - I - 0x010CE5 04:8CD5: 41        .byte $41   ; 
- D 0 - I - 0x010CE6 04:8CD6: 11        .byte $11   ; 
- D 0 - I - 0x010CE7 04:8CD7: 10        .byte $10   ; 
- D 0 - I - 0x010CE8 04:8CD8: B0        .byte $B0   ; 
- D 0 - I - 0x010CE9 04:8CD9: 10        .byte $10   ; 
- D 0 - I - 0x010CEA 04:8CDA: B0        .byte $B0   ; 
- D 0 - I - 0x010CEB 04:8CDB: 41        .byte $41   ; 
- D 0 - I - 0x010CEC 04:8CDC: 11        .byte $11   ; 
- D 0 - I - 0x010CED 04:8CDD: FE        .byte con_se_cb_1_FE, $04   ; 
- D 0 - I - 0x010CEF 04:8CDF: D1        .byte $D1   ; 
- D 0 - I - 0x010CF0 04:8CE0: B0        .byte $B0   ; 
- D 0 - I - 0x010CF1 04:8CE1: 17        .byte $17   ; 
- D 0 - I - 0x010CF2 04:8CE2: D9        .byte $D9   ; 
- D 0 - I - 0x010CF3 04:8CE3: C0        .byte $C0   ; 
- D 0 - I - 0x010CF4 04:8CE4: 10        .byte $10   ; 
- D 0 - I - 0x010CF5 04:8CE5: B0        .byte $B0   ; 
- D 0 - I - 0x010CF6 04:8CE6: 41        .byte $41   ; 
- D 0 - I - 0x010CF7 04:8CE7: 11        .byte $11   ; 
- D 0 - I - 0x010CF8 04:8CE8: 10        .byte $10   ; 
- D 0 - I - 0x010CF9 04:8CE9: B0        .byte $B0   ; 
- D 0 - I - 0x010CFA 04:8CEA: 10        .byte $10   ; 
- D 0 - I - 0x010CFB 04:8CEB: B0        .byte $B0   ; 
- D 0 - I - 0x010CFC 04:8CEC: 41        .byte $41   ; 
- D 0 - I - 0x010CFD 04:8CED: 10        .byte $10   ; 
- D 0 - I - 0x010CFE 04:8CEE: 20        .byte $20   ; 
- D 0 - I - 0x010CFF 04:8CEF: D9        .byte $D9   ; 
- D 0 - I - 0x010D00 04:8CF0: 40        .byte $40   ; 
- D 0 - I - 0x010D01 04:8CF1: 40        .byte $40   ; 
- D 0 - I - 0x010D02 04:8CF2: C0        .byte $C0   ; 
- D 0 - I - 0x010D03 04:8CF3: B0        .byte $B0   ; 
- D 0 - I - 0x010D04 04:8CF4: B0        .byte $B0   ; 
- D 0 - I - 0x010D05 04:8CF5: C0        .byte $C0   ; 
- D 0 - I - 0x010D06 04:8CF6: 40        .byte $40   ; 
- D 0 - I - 0x010D07 04:8CF7: 40        .byte $40   ; 
- D 0 - I - 0x010D08 04:8CF8: C0        .byte $C0   ; 
- D 0 - I - 0x010D09 04:8CF9: B0        .byte $B0   ; 
- D 0 - I - 0x010D0A 04:8CFA: B0        .byte $B0   ; 
- D 0 - I - 0x010D0B 04:8CFB: C0        .byte $C0   ; 
- D 0 - I - 0x010D0C 04:8CFC: 40        .byte $40   ; 
- D 0 - I - 0x010D0D 04:8CFD: 40        .byte $40   ; 
- D 0 - I - 0x010D0E 04:8CFE: C1        .byte $C1   ; 
- D 0 - I - 0x010D0F 04:8CFF: 40        .byte $40   ; 
- D 0 - I - 0x010D10 04:8D00: 40        .byte $40   ; 
- D 0 - I - 0x010D11 04:8D01: C0        .byte $C0   ; 
- D 0 - I - 0x010D12 04:8D02: B0        .byte $B0   ; 
- D 0 - I - 0x010D13 04:8D03: B0        .byte $B0   ; 
- D 0 - I - 0x010D14 04:8D04: C0        .byte $C0   ; 
- D 0 - I - 0x010D15 04:8D05: 40        .byte $40   ; 
- D 0 - I - 0x010D16 04:8D06: 40        .byte $40   ; 
- D 0 - I - 0x010D17 04:8D07: D1        .byte $D1   ; 
- D 0 - I - 0x010D18 04:8D08: 2B        .byte $2B   ; 
- D 0 - I - 0x010D19 04:8D09: FB        .byte con_se_cb_1_FB   ; 
- D 0 - I - 0x010D1A 04:8D0A: B0        .byte $B0   ; 
- D 0 - I - 0x010D1B 04:8D0B: 10        .byte $10   ; 
- D 0 - I - 0x010D1C 04:8D0C: C9        .byte $C9   ; 
- D 0 - I - 0x010D1D 04:8D0D: FE        .byte con_se_cb_1_FE, $05   ; 
- D 0 - I - 0x010D1F 04:8D0F: FE        .byte con_se_cb_1_FE, $FF   ; 
- D 0 - I - 0x010D21 04:8D11: 7E 8C     .word off_FE_8C7E



off_ch_00_0x010D23_5B:
off_FE_8D13:
- D 0 - I - 0x010D23 04:8D13: D7        .byte con_se_cb_1_D0 + $07, $76, con_9E25_03 + $80   ; 
- D 0 - I - 0x010D26 04:8D16: 17        .byte $17   ; 
- D 0 - I - 0x010D27 04:8D17: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x010D28 04:8D18: 90        .byte $90   ; 
- D 0 - I - 0x010D29 04:8D19: 90        .byte $90   ; 
- D 0 - I - 0x010D2A 04:8D1A: F4        .byte con_se_cb_1_F0 + $04   ; 
- D 0 - I - 0x010D2B 04:8D1B: 50        .byte $50   ; 
- D 0 - I - 0x010D2C 04:8D1C: F0        .byte con_se_cb_1_F0 + $00   ; 
- D 0 - I - 0x010D2D 04:8D1D: 90        .byte $90   ; 
- D 0 - I - 0x010D2E 04:8D1E: F4        .byte con_se_cb_1_F0 + $04   ; 
- D 0 - I - 0x010D2F 04:8D1F: 50        .byte $50   ; 
- D 0 - I - 0x010D30 04:8D20: F0        .byte con_se_cb_1_F0 + $00   ; 
- D 0 - I - 0x010D31 04:8D21: 93        .byte $93   ; 
- D 0 - I - 0x010D32 04:8D22: E9        .byte con_se_cb_1_E9, $B0   ; 
- D 0 - I - 0x010D34 04:8D24: 90        .byte $90   ; 
- D 0 - I - 0x010D35 04:8D25: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x010D36 04:8D26: 20        .byte $20   ; 
- D 0 - I - 0x010D37 04:8D27: 90        .byte $90   ; 
- D 0 - I - 0x010D38 04:8D28: E9        .byte con_se_cb_1_E9, $70   ; 
- D 0 - I - 0x010D3A 04:8D2A: E6        .byte con_se_cb_1_E6, $01   ; 
- D 0 - I - 0x010D3C 04:8D2C: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 0 - I - 0x010D3D 04:8D2D: 93        .byte $93   ; 
- D 0 - I - 0x010D3E 04:8D2E: F4        .byte con_se_cb_1_F0 + $04   ; 
- D 0 - I - 0x010D3F 04:8D2F: E9        .byte con_se_cb_1_E9, $B0   ; 
- D 0 - I - 0x010D41 04:8D31: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x010D42 04:8D32: 22        .byte $22   ; 
- D 0 - I - 0x010D43 04:8D33: F0        .byte con_se_cb_1_F0 + $00   ; 
- D 0 - I - 0x010D44 04:8D34: E9        .byte con_se_cb_1_E9, $70   ; 
- D 0 - I - 0x010D46 04:8D36: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 0 - I - 0x010D47 04:8D37: 93        .byte $93   ; 
- D 0 - I - 0x010D48 04:8D38: F4        .byte con_se_cb_1_F0 + $04   ; 
- D 0 - I - 0x010D49 04:8D39: E9        .byte con_se_cb_1_E9, $B0   ; 
- D 0 - I - 0x010D4B 04:8D3B: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x010D4C 04:8D3C: 92        .byte $92   ; 
- D 0 - I - 0x010D4D 04:8D3D: F0        .byte con_se_cb_1_F0 + $00   ; 
- D 0 - I - 0x010D4E 04:8D3E: E9        .byte con_se_cb_1_E9, $70   ; 
- D 0 - I - 0x010D50 04:8D40: E6        .byte con_se_cb_1_E6, $07   ; 
- D 0 - I - 0x010D52 04:8D42: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x010D53 04:8D43: 20        .byte $20   ; 
- D 0 - I - 0x010D54 04:8D44: 40        .byte $40   ; 
- D 0 - I - 0x010D55 04:8D45: 52        .byte $52   ; 
- D 0 - I - 0x010D56 04:8D46: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 0 - I - 0x010D57 04:8D47: A2        .byte $A2   ; 
- D 0 - I - 0x010D58 04:8D48: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x010D59 04:8D49: 51        .byte $51   ; 
- D 0 - I - 0x010D5A 04:8D4A: 40        .byte $40   ; 
- D 0 - I - 0x010D5B 04:8D4B: E8        .byte con_se_cb_1_E8, $30 + $05   ; 
- D 0 - I - 0x010D5D 04:8D4D: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x010D5E 04:8D4E: 73        .byte $73   ; 
- D 0 - I - 0x010D5F 04:8D4F: E8        .byte con_se_cb_1_E8, $10 + $07   ; 
- D 0 - I - 0x010D61 04:8D51: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 0 - I - 0x010D62 04:8D52: 70        .byte $70   ; 
- D 0 - I - 0x010D63 04:8D53: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x010D64 04:8D54: 00        .byte $00   ; 
- D 0 - I - 0x010D65 04:8D55: 70        .byte $70   ; 
- D 0 - I - 0x010D66 04:8D56: 90        .byte $90   ; 
- D 0 - I - 0x010D67 04:8D57: 90        .byte $90   ; 
- D 0 - I - 0x010D68 04:8D58: F4        .byte con_se_cb_1_F0 + $04   ; 
- D 0 - I - 0x010D69 04:8D59: 50        .byte $50   ; 
- D 0 - I - 0x010D6A 04:8D5A: F0        .byte con_se_cb_1_F0 + $00   ; 
- D 0 - I - 0x010D6B 04:8D5B: 90        .byte $90   ; 
- D 0 - I - 0x010D6C 04:8D5C: F4        .byte con_se_cb_1_F0 + $04   ; 
- D 0 - I - 0x010D6D 04:8D5D: 50        .byte $50   ; 
- D 0 - I - 0x010D6E 04:8D5E: F0        .byte con_se_cb_1_F0 + $00   ; 
- D 0 - I - 0x010D6F 04:8D5F: 93        .byte $93   ; 
- D 0 - I - 0x010D70 04:8D60: E9        .byte con_se_cb_1_E9, $B0   ; 
- D 0 - I - 0x010D72 04:8D62: 90        .byte $90   ; 
- D 0 - I - 0x010D73 04:8D63: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x010D74 04:8D64: 20        .byte $20   ; 
- D 0 - I - 0x010D75 04:8D65: 90        .byte $90   ; 
- D 0 - I - 0x010D76 04:8D66: E9        .byte con_se_cb_1_E9, $70   ; 
- D 0 - I - 0x010D78 04:8D68: E6        .byte con_se_cb_1_E6, $01   ; 
- D 0 - I - 0x010D7A 04:8D6A: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 0 - I - 0x010D7B 04:8D6B: 93        .byte $93   ; 
- D 0 - I - 0x010D7C 04:8D6C: F4        .byte con_se_cb_1_F0 + $04   ; 
- D 0 - I - 0x010D7D 04:8D6D: E9        .byte con_se_cb_1_E9, $B0   ; 
- D 0 - I - 0x010D7F 04:8D6F: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x010D80 04:8D70: 22        .byte $22   ; 
- D 0 - I - 0x010D81 04:8D71: F0        .byte con_se_cb_1_F0 + $00   ; 
- D 0 - I - 0x010D82 04:8D72: E9        .byte con_se_cb_1_E9, $70   ; 
- D 0 - I - 0x010D84 04:8D74: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 0 - I - 0x010D85 04:8D75: 93        .byte $93   ; 
- D 0 - I - 0x010D86 04:8D76: F4        .byte con_se_cb_1_F0 + $04   ; 
- D 0 - I - 0x010D87 04:8D77: E9        .byte con_se_cb_1_E9, $B0   ; 
- D 0 - I - 0x010D89 04:8D79: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x010D8A 04:8D7A: 92        .byte $92   ; 
- D 0 - I - 0x010D8B 04:8D7B: F0        .byte con_se_cb_1_F0 + $00   ; 
- D 0 - I - 0x010D8C 04:8D7C: E9        .byte con_se_cb_1_E9, $70   ; 
- D 0 - I - 0x010D8E 04:8D7E: E6        .byte con_se_cb_1_E6, $07   ; 
- D 0 - I - 0x010D90 04:8D80: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x010D91 04:8D81: 20        .byte $20   ; 
- D 0 - I - 0x010D92 04:8D82: 40        .byte $40   ; 
- D 0 - I - 0x010D93 04:8D83: 52        .byte $52   ; 
- D 0 - I - 0x010D94 04:8D84: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 0 - I - 0x010D95 04:8D85: A2        .byte $A2   ; 
- D 0 - I - 0x010D96 04:8D86: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x010D97 04:8D87: 51        .byte $51   ; 
- D 0 - I - 0x010D98 04:8D88: 53        .byte $53   ; 
- D 0 - I - 0x010D99 04:8D89: 43        .byte $43   ; 
- D 0 - I - 0x010D9A 04:8D8A: D7        .byte con_se_cb_1_D0 + $07, $76, con_9E25_04 + $80   ; 
- D 0 - I - 0x010D9D 04:8D8D: 1A        .byte $1A   ; 
- D 0 - I - 0x010D9E 04:8D8E: FB        .byte con_se_cb_1_FB   ; 
- D 0 - I - 0x010D9F 04:8D8F: C1        .byte con_se_cb_1_C0 + $01   ; 
- D 0 - I - 0x010DA0 04:8D90: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x010DA1 04:8D91: 92        .byte $92   ; 
- D 0 - I - 0x010DA2 04:8D92: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x010DA3 04:8D93: 22        .byte $22   ; 
- D 0 - I - 0x010DA4 04:8D94: 10        .byte $10   ; 
- D 0 - I - 0x010DA5 04:8D95: 20        .byte $20   ; 
- D 0 - I - 0x010DA6 04:8D96: 10        .byte $10   ; 
- D 0 - I - 0x010DA7 04:8D97: 00        .byte $00   ; 
- D 0 - I - 0x010DA8 04:8D98: F2        .byte con_se_cb_1_F0 + $02   ; 
- D 0 - I - 0x010DA9 04:8D99: 80        .byte $80   ; 
- D 0 - I - 0x010DAA 04:8D9A: 90        .byte $90   ; 
- D 0 - I - 0x010DAB 04:8D9B: 80        .byte $80   ; 
- D 0 - I - 0x010DAC 04:8D9C: ED        .byte con_se_cb_1_ED, $01   ; 
- D 0 - I - 0x010DAE 04:8D9E: 50        .byte $50   ; 
- D 0 - I - 0x010DAF 04:8D9F: F4        .byte con_se_cb_1_F0 + $04   ; 
- D 0 - I - 0x010DB0 04:8DA0: 91        .byte $91   ; 
- D 0 - I - 0x010DB1 04:8DA1: ED        .byte con_se_cb_1_ED, $00   ; 
- D 0 - I - 0x010DB3 04:8DA3: E8        .byte con_se_cb_1_E8, $10 + $08   ; 
- D 0 - I - 0x010DB5 04:8DA5: F0        .byte con_se_cb_1_F0 + $00   ; 
- D 0 - I - 0x010DB6 04:8DA6: 50        .byte $50   ; 
- D 0 - I - 0x010DB7 04:8DA7: 20        .byte $20   ; 
- D 0 - I - 0x010DB8 04:8DA8: F5        .byte con_se_cb_1_F0 + $05   ; 
- D 0 - I - 0x010DB9 04:8DA9: 50        .byte $50   ; 
- D 0 - I - 0x010DBA 04:8DAA: 20        .byte $20   ; 
- D 0 - I - 0x010DBB 04:8DAB: F0        .byte con_se_cb_1_F0 + $00   ; 
- D 0 - I - 0x010DBC 04:8DAC: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x010DBD 04:8DAD: 50        .byte $50   ; 
- D 0 - I - 0x010DBE 04:8DAE: 20        .byte $20   ; 
- D 0 - I - 0x010DBF 04:8DAF: F5        .byte con_se_cb_1_F0 + $05   ; 
- D 0 - I - 0x010DC0 04:8DB0: 50        .byte $50   ; 
- D 0 - I - 0x010DC1 04:8DB1: F0        .byte con_se_cb_1_F0 + $00   ; 
- D 0 - I - 0x010DC2 04:8DB2: 50        .byte $50   ; 
- D 0 - I - 0x010DC3 04:8DB3: 20        .byte $20   ; 
- D 0 - I - 0x010DC4 04:8DB4: 50        .byte $50   ; 
- D 0 - I - 0x010DC5 04:8DB5: 20        .byte $20   ; 
- D 0 - I - 0x010DC6 04:8DB6: 50        .byte $50   ; 
- D 0 - I - 0x010DC7 04:8DB7: 20        .byte $20   ; 
- D 0 - I - 0x010DC8 04:8DB8: 50        .byte $50   ; 
- D 0 - I - 0x010DC9 04:8DB9: FE        .byte con_se_cb_1_FE, $02   ; 
- D 0 - I - 0x010DCB 04:8DBB: D7        .byte con_se_cb_1_D0 + $07, $75, con_9E25_03 + $80   ; 
- D 0 - I - 0x010DCE 04:8DBE: 27        .byte $27   ; 
- D 0 - I - 0x010DCF 04:8DBF: E9        .byte con_se_cb_1_E9, $B1   ; 
- D 0 - I - 0x010DD1 04:8DC1: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x010DD2 04:8DC2: A2        .byte $A2   ; 
- D 0 - I - 0x010DD3 04:8DC3: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x010DD4 04:8DC4: 12        .byte $12   ; 
- D 0 - I - 0x010DD5 04:8DC5: 41        .byte $41   ; 
- D 0 - I - 0x010DD6 04:8DC6: 22        .byte $22   ; 
- D 0 - I - 0x010DD7 04:8DC7: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x010DD8 04:8DC8: 92        .byte $92   ; 
- D 0 - I - 0x010DD9 04:8DC9: 51        .byte $51   ; 
- D 0 - I - 0x010DDA 04:8DCA: A2        .byte $A2   ; 
- D 0 - I - 0x010DDB 04:8DCB: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x010DDC 04:8DCC: 12        .byte $12   ; 
- D 0 - I - 0x010DDD 04:8DCD: 41        .byte $41   ; 
- D 0 - I - 0x010DDE 04:8DCE: 22        .byte $22   ; 
- D 0 - I - 0x010DDF 04:8DCF: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x010DE0 04:8DD0: 90        .byte $90   ; 
- D 0 - I - 0x010DE1 04:8DD1: F4        .byte con_se_cb_1_F0 + $04   ; 
- D 0 - I - 0x010DE2 04:8DD2: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x010DE3 04:8DD3: 21        .byte $21   ; 
- D 0 - I - 0x010DE4 04:8DD4: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x010DE5 04:8DD5: 90        .byte $90   ; 
- D 0 - I - 0x010DE6 04:8DD6: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x010DE7 04:8DD7: 20        .byte $20   ; 
- D 0 - I - 0x010DE8 04:8DD8: F0        .byte con_se_cb_1_F0 + $00   ; 
- D 0 - I - 0x010DE9 04:8DD9: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x010DEA 04:8DDA: A2        .byte $A2   ; 
- D 0 - I - 0x010DEB 04:8DDB: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x010DEC 04:8DDC: 12        .byte $12   ; 
- D 0 - I - 0x010DED 04:8DDD: 41        .byte $41   ; 
- D 0 - I - 0x010DEE 04:8DDE: 22        .byte $22   ; 
- D 0 - I - 0x010DEF 04:8DDF: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x010DF0 04:8DE0: 92        .byte $92   ; 
- D 0 - I - 0x010DF1 04:8DE1: 51        .byte $51   ; 
- D 0 - I - 0x010DF2 04:8DE2: A2        .byte $A2   ; 
- D 0 - I - 0x010DF3 04:8DE3: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x010DF4 04:8DE4: 12        .byte $12   ; 
- D 0 - I - 0x010DF5 04:8DE5: 41        .byte $41   ; 
- D 0 - I - 0x010DF6 04:8DE6: 12        .byte $12   ; 
- D 0 - I - 0x010DF7 04:8DE7: 42        .byte $42   ; 
- D 0 - I - 0x010DF8 04:8DE8: 71        .byte $71   ; 
- D 0 - I - 0x010DF9 04:8DE9: E9        .byte con_se_cb_1_E9, $00   ; 
- D 0 - I - 0x010DFB 04:8DEB: D7        .byte con_se_cb_1_D0 + $07, $37, con_9E25_04 + $80   ; 
- D 0 - I - 0x010DFE 04:8DEE: 17        .byte $17   ; 
- D 0 - I - 0x010DFF 04:8DEF: E9        .byte con_se_cb_1_E9, $71   ; 
- D 0 - I - 0x010E01 04:8DF1: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x010E02 04:8DF2: 90        .byte $90   ; 
- D 0 - I - 0x010E03 04:8DF3: 90        .byte $90   ; 
- D 0 - I - 0x010E04 04:8DF4: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x010E05 04:8DF5: 90        .byte $90   ; 
- D 0 - I - 0x010E06 04:8DF6: E8        .byte con_se_cb_1_E8, $70 + $07   ; 
- D 0 - I - 0x010E08 04:8DF8: EB        .byte con_se_cb_1_EB, con_9E7B_55, $31   ; 
- D 0 - I - 0x010E0B 04:8DFB: 99        .byte $99   ; 
- D 0 - I - 0x010E0C 04:8DFC: E8        .byte con_se_cb_1_E8, $10 + $07   ; 
- D 0 - I - 0x010E0E 04:8DFE: E9        .byte con_se_cb_1_E9, $00   ; 
- D 0 - I - 0x010E10 04:8E00: EC        .byte con_se_cb_1_EC, $02   ; 
- D 0 - I - 0x010E12 04:8E02: 20        .byte $20   ; 
- D 0 - I - 0x010E13 04:8E03: 10        .byte $10   ; 
- D 0 - I - 0x010E14 04:8E04: 00        .byte $00   ; 
- D 0 - I - 0x010E15 04:8E05: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 0 - I - 0x010E16 04:8E06: 51        .byte $51   ; 
- D 0 - I - 0x010E17 04:8E07: 51        .byte $51   ; 
- D 0 - I - 0x010E18 04:8E08: A0        .byte $A0   ; 
- D 0 - I - 0x010E19 04:8E09: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x010E1A 04:8E0A: 22        .byte $22   ; 
- D 0 - I - 0x010E1B 04:8E0B: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 0 - I - 0x010E1C 04:8E0C: 71        .byte $71   ; 
- D 0 - I - 0x010E1D 04:8E0D: 71        .byte $71   ; 
- D 0 - I - 0x010E1E 04:8E0E: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x010E1F 04:8E0F: 00        .byte $00   ; 
- D 0 - I - 0x010E20 04:8E10: 42        .byte $42   ; 
- D 0 - I - 0x010E21 04:8E11: E9        .byte con_se_cb_1_E9, $71   ; 
- D 0 - I - 0x010E23 04:8E13: EC        .byte con_se_cb_1_EC, $00   ; 
- D 0 - I - 0x010E25 04:8E15: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x010E26 04:8E16: 90        .byte $90   ; 
- D 0 - I - 0x010E27 04:8E17: 90        .byte $90   ; 
- D 0 - I - 0x010E28 04:8E18: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x010E29 04:8E19: 90        .byte $90   ; 
- D 0 - I - 0x010E2A 04:8E1A: E8        .byte con_se_cb_1_E8, $70 + $07   ; 
- D 0 - I - 0x010E2C 04:8E1C: 99        .byte $99   ; 
- D 0 - I - 0x010E2D 04:8E1D: E8        .byte con_se_cb_1_E8, $10 + $07   ; 
- D 0 - I - 0x010E2F 04:8E1F: E9        .byte con_se_cb_1_E9, $00   ; 
- D 0 - I - 0x010E31 04:8E21: EC        .byte con_se_cb_1_EC, $02   ; 
- D 0 - I - 0x010E33 04:8E23: 20        .byte $20   ; 
- D 0 - I - 0x010E34 04:8E24: 10        .byte $10   ; 
- D 0 - I - 0x010E35 04:8E25: 00        .byte $00   ; 
- D 0 - I - 0x010E36 04:8E26: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 0 - I - 0x010E37 04:8E27: 51        .byte $51   ; 
- D 0 - I - 0x010E38 04:8E28: 51        .byte $51   ; 
- D 0 - I - 0x010E39 04:8E29: A0        .byte $A0   ; 
- D 0 - I - 0x010E3A 04:8E2A: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x010E3B 04:8E2B: 22        .byte $22   ; 
- D 0 - I - 0x010E3C 04:8E2C: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 0 - I - 0x010E3D 04:8E2D: 73        .byte $73   ; 
- D 0 - I - 0x010E3E 04:8E2E: E5        .byte con_se_cb_1_E0 + $05   ; 
- D 0 - I - 0x010E3F 04:8E2F: 90        .byte $90   ; 
- D 0 - I - 0x010E40 04:8E30: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 0 - I - 0x010E41 04:8E31: 02        .byte $02   ; 
- D 0 - I - 0x010E42 04:8E32: EC        .byte con_se_cb_1_EC, $00   ; 
- D 0 - I - 0x010E44 04:8E34: FE        .byte con_se_cb_1_FE, $FF   ; 
- D 0 - I - 0x010E46 04:8E36: 13 8D     .word off_FE_8D13



off_ch_01_0x010E48_5B:
off_FE_8E38:
- D 0 - I - 0x010E48 04:8E38: D7        .byte con_se_cb_1_D0 + $07, $77, con_9E25_04 + $80   ; 
- D 0 - I - 0x010E4B 04:8E3B: 19        .byte $19   ; 
- D 0 - I - 0x010E4C 04:8E3C: EB        .byte con_se_cb_1_EB, con_9E7B_54, $32   ; 
- D 0 - I - 0x010E4F 04:8E3F: E9        .byte con_se_cb_1_E9, $B1   ; 
- D 0 - I - 0x010E51 04:8E41: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x010E52 04:8E42: 20        .byte $20   ; 
- D 0 - I - 0x010E53 04:8E43: 21        .byte $21   ; 
- D 0 - I - 0x010E54 04:8E44: 01        .byte $01   ; 
- D 0 - I - 0x010E55 04:8E45: E8        .byte con_se_cb_1_E8, $20 + $05   ; 
- D 0 - I - 0x010E57 04:8E47: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x010E58 04:8E48: B5        .byte $B5   ; 
- D 0 - I - 0x010E59 04:8E49: 21        .byte $21   ; 
- D 0 - I - 0x010E5A 04:8E4A: 40        .byte $40   ; 
- D 0 - I - 0x010E5B 04:8E4B: 50        .byte $50   ; 
- D 0 - I - 0x010E5C 04:8E4C: 70        .byte $70   ; 
- D 0 - I - 0x010E5D 04:8E4D: 92        .byte $92   ; 
- D 0 - I - 0x010E5E 04:8E4E: 22        .byte $22   ; 
- D 0 - I - 0x010E5F 04:8E4F: 91        .byte $91   ; 
- D 0 - I - 0x010E60 04:8E50: 70        .byte $70   ; 
- D 0 - I - 0x010E61 04:8E51: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x010E62 04:8E52: 06        .byte $06   ; 
- D 0 - I - 0x010E63 04:8E53: E8        .byte con_se_cb_1_E8, $10 + $09   ; 
- D 0 - I - 0x010E65 04:8E55: 20        .byte $20   ; 
- D 0 - I - 0x010E66 04:8E56: 21        .byte $21   ; 
- D 0 - I - 0x010E67 04:8E57: 01        .byte $01   ; 
- D 0 - I - 0x010E68 04:8E58: E8        .byte con_se_cb_1_E8, $20 + $05   ; 
- D 0 - I - 0x010E6A 04:8E5A: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x010E6B 04:8E5B: B5        .byte $B5   ; 
- D 0 - I - 0x010E6C 04:8E5C: 21        .byte $21   ; 
- D 0 - I - 0x010E6D 04:8E5D: 40        .byte $40   ; 
- D 0 - I - 0x010E6E 04:8E5E: 50        .byte $50   ; 
- D 0 - I - 0x010E6F 04:8E5F: 70        .byte $70   ; 
- D 0 - I - 0x010E70 04:8E60: 92        .byte $92   ; 
- D 0 - I - 0x010E71 04:8E61: 22        .byte $22   ; 
- D 0 - I - 0x010E72 04:8E62: 91        .byte $91   ; 
- D 0 - I - 0x010E73 04:8E63: E8        .byte con_se_cb_1_E8, $40 + $05   ; 
- D 0 - I - 0x010E75 04:8E65: 77        .byte $77   ; 
- D 0 - I - 0x010E76 04:8E66: E8        .byte con_se_cb_1_E8, $10 + $0A   ; 
- D 0 - I - 0x010E78 04:8E68: FB        .byte con_se_cb_1_FB   ; 
- D 0 - I - 0x010E79 04:8E69: C1        .byte con_se_cb_1_C0 + $01   ; 
- D 0 - I - 0x010E7A 04:8E6A: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x010E7B 04:8E6B: 22        .byte $22   ; 
- D 0 - I - 0x010E7C 04:8E6C: 92        .byte $92   ; 
- D 0 - I - 0x010E7D 04:8E6D: 80        .byte $80   ; 
- D 0 - I - 0x010E7E 04:8E6E: 90        .byte $90   ; 
- D 0 - I - 0x010E7F 04:8E6F: 80        .byte $80   ; 
- D 0 - I - 0x010E80 04:8E70: E8        .byte con_se_cb_1_E8, $70 + $0A   ; 
- D 0 - I - 0x010E82 04:8E72: 54        .byte $54   ; 
- D 0 - I - 0x010E83 04:8E73: E8        .byte con_se_cb_1_E8, $10 + $0A   ; 
- D 0 - I - 0x010E85 04:8E75: 91        .byte $91   ; 
- D 0 - I - 0x010E86 04:8E76: 90        .byte $90   ; 
- D 0 - I - 0x010E87 04:8E77: 81        .byte $81   ; 
- D 0 - I - 0x010E88 04:8E78: 80        .byte $80   ; 
- D 0 - I - 0x010E89 04:8E79: 71        .byte $71   ; 
- D 0 - I - 0x010E8A 04:8E7A: 91        .byte $91   ; 
- D 0 - I - 0x010E8B 04:8E7B: 90        .byte $90   ; 
- D 0 - I - 0x010E8C 04:8E7C: 81        .byte $81   ; 
- D 0 - I - 0x010E8D 04:8E7D: 80        .byte $80   ; 
- D 0 - I - 0x010E8E 04:8E7E: 71        .byte $71   ; 
- D 0 - I - 0x010E8F 04:8E7F: E8        .byte con_se_cb_1_E8, $10 + $0A   ; 
- D 0 - I - 0x010E91 04:8E81: FE        .byte con_se_cb_1_FE, $02   ; 
- D 0 - I - 0x010E93 04:8E83: D7        .byte con_se_cb_1_D0 + $07, $77, con_9E25_03 + $80   ; 
- D 0 - I - 0x010E96 04:8E86: 15        .byte $15   ; 
- D 0 - I - 0x010E97 04:8E87: E9        .byte con_se_cb_1_E9, $B1   ; 
- D 0 - I - 0x010E99 04:8E89: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x010E9A 04:8E8A: 12        .byte $12   ; 
- D 0 - I - 0x010E9B 04:8E8B: 42        .byte $42   ; 
- D 0 - I - 0x010E9C 04:8E8C: A1        .byte $A1   ; 
- D 0 - I - 0x010E9D 04:8E8D: 92        .byte $92   ; 
- D 0 - I - 0x010E9E 04:8E8E: 52        .byte $52   ; 
- D 0 - I - 0x010E9F 04:8E8F: 21        .byte $21   ; 
- D 0 - I - 0x010EA0 04:8E90: 12        .byte $12   ; 
- D 0 - I - 0x010EA1 04:8E91: 42        .byte $42   ; 
- D 0 - I - 0x010EA2 04:8E92: A1        .byte $A1   ; 
- D 0 - I - 0x010EA3 04:8E93: 92        .byte $92   ; 
- D 0 - I - 0x010EA4 04:8E94: 20        .byte $20   ; 
- D 0 - I - 0x010EA5 04:8E95: F4        .byte con_se_cb_1_F0 + $04   ; 
- D 0 - I - 0x010EA6 04:8E96: 91        .byte $91   ; 
- D 0 - I - 0x010EA7 04:8E97: 20        .byte $20   ; 
- D 0 - I - 0x010EA8 04:8E98: 90        .byte $90   ; 
- D 0 - I - 0x010EA9 04:8E99: F0        .byte con_se_cb_1_F0 + $00   ; 
- D 0 - I - 0x010EAA 04:8E9A: 12        .byte $12   ; 
- D 0 - I - 0x010EAB 04:8E9B: 42        .byte $42   ; 
- D 0 - I - 0x010EAC 04:8E9C: A1        .byte $A1   ; 
- D 0 - I - 0x010EAD 04:8E9D: 92        .byte $92   ; 
- D 0 - I - 0x010EAE 04:8E9E: 52        .byte $52   ; 
- D 0 - I - 0x010EAF 04:8E9F: 21        .byte $21   ; 
- D 0 - I - 0x010EB0 04:8EA0: 42        .byte $42   ; 
- D 0 - I - 0x010EB1 04:8EA1: 72        .byte $72   ; 
- D 0 - I - 0x010EB2 04:8EA2: A1        .byte $A1   ; 
- D 0 - I - 0x010EB3 04:8EA3: 92        .byte $92   ; 
- D 0 - I - 0x010EB4 04:8EA4: B2        .byte $B2   ; 
- D 0 - I - 0x010EB5 04:8EA5: E1        .byte con_se_cb_1_E0 + $01   ; 
- D 0 - I - 0x010EB6 04:8EA6: 11        .byte $11   ; 
- D 0 - I - 0x010EB7 04:8EA7: E9        .byte con_se_cb_1_E9, $00   ; 
- D 0 - I - 0x010EB9 04:8EA9: D7        .byte con_se_cb_1_D0 + $07, $78, con_9E25_04 + $80   ; 
- D 0 - I - 0x010EBC 04:8EAC: 17        .byte $17   ; 
- D 0 - I - 0x010EBD 04:8EAD: E9        .byte con_se_cb_1_E9, $B1   ; 
- D 0 - I - 0x010EBF 04:8EAF: E1        .byte con_se_cb_1_E0 + $01   ; 
- D 0 - I - 0x010EC0 04:8EB0: 20        .byte $20   ; 
- D 0 - I - 0x010EC1 04:8EB1: 20        .byte $20   ; 
- D 0 - I - 0x010EC2 04:8EB2: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x010EC3 04:8EB3: 20        .byte $20   ; 
- D 0 - I - 0x010EC4 04:8EB4: E8        .byte con_se_cb_1_E8, $70 + $07   ; 
- D 0 - I - 0x010EC6 04:8EB6: 2C        .byte $2C   ; 
- D 0 - I - 0x010EC7 04:8EB7: E8        .byte con_se_cb_1_E8, $10 + $08   ; 
- D 0 - I - 0x010EC9 04:8EB9: E9        .byte con_se_cb_1_E9, $00   ; 
- D 0 - I - 0x010ECB 04:8EBB: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 0 - I - 0x010ECC 04:8EBC: A1        .byte $A1   ; 
- D 0 - I - 0x010ECD 04:8EBD: A1        .byte $A1   ; 
- D 0 - I - 0x010ECE 04:8EBE: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x010ECF 04:8EBF: 20        .byte $20   ; 
- D 0 - I - 0x010ED0 04:8EC0: 52        .byte $52   ; 
- D 0 - I - 0x010ED1 04:8EC1: 01        .byte $01   ; 
- D 0 - I - 0x010ED2 04:8EC2: 01        .byte $01   ; 
- D 0 - I - 0x010ED3 04:8EC3: 40        .byte $40   ; 
- D 0 - I - 0x010ED4 04:8EC4: 72        .byte $72   ; 
- D 0 - I - 0x010ED5 04:8EC5: E9        .byte con_se_cb_1_E9, $B1   ; 
- D 0 - I - 0x010ED7 04:8EC7: E8        .byte con_se_cb_1_E8, $10 + $07   ; 
- D 0 - I - 0x010ED9 04:8EC9: E1        .byte con_se_cb_1_E0 + $01   ; 
- D 0 - I - 0x010EDA 04:8ECA: 20        .byte $20   ; 
- D 0 - I - 0x010EDB 04:8ECB: 20        .byte $20   ; 
- D 0 - I - 0x010EDC 04:8ECC: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x010EDD 04:8ECD: 20        .byte $20   ; 
- D 0 - I - 0x010EDE 04:8ECE: E8        .byte con_se_cb_1_E8, $70 + $07   ; 
- D 0 - I - 0x010EE0 04:8ED0: 2C        .byte $2C   ; 
- D 0 - I - 0x010EE1 04:8ED1: E9        .byte con_se_cb_1_E9, $00   ; 
- D 0 - I - 0x010EE3 04:8ED3: E8        .byte con_se_cb_1_E8, $10 + $08   ; 
- D 0 - I - 0x010EE5 04:8ED5: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 0 - I - 0x010EE6 04:8ED6: A1        .byte $A1   ; 
- D 0 - I - 0x010EE7 04:8ED7: A1        .byte $A1   ; 
- D 0 - I - 0x010EE8 04:8ED8: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x010EE9 04:8ED9: 20        .byte $20   ; 
- D 0 - I - 0x010EEA 04:8EDA: 52        .byte $52   ; 
- D 0 - I - 0x010EEB 04:8EDB: 03        .byte $03   ; 
- D 0 - I - 0x010EEC 04:8EDC: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 0 - I - 0x010EED 04:8EDD: 90        .byte $90   ; 
- D 0 - I - 0x010EEE 04:8EDE: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x010EEF 04:8EDF: 02        .byte $02   ; 
- D 0 - I - 0x010EF0 04:8EE0: FE        .byte con_se_cb_1_FE, $FF   ; 
- D 0 - I - 0x010EF2 04:8EE2: 38 8E     .word off_FE_8E38



off_ch_02_0x010EF4_5B:
off_FE_8EE4:
- D 0 - I - 0x010EF4 04:8EE4: D7        .byte con_se_cb_1_D0 + $07, $10   ; 
- D 0 - I - 0x010EF6 04:8EE6: FB        .byte con_se_cb_1_FB   ; 
- D 0 - I - 0x010EF7 04:8EE7: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 0 - I - 0x010EF8 04:8EE8: 21        .byte $21   ; 
- D 0 - I - 0x010EF9 04:8EE9: 20        .byte $20   ; 
- D 0 - I - 0x010EFA 04:8EEA: 20        .byte $20   ; 
- D 0 - I - 0x010EFB 04:8EEB: 21        .byte $21   ; 
- D 0 - I - 0x010EFC 04:8EEC: 20        .byte $20   ; 
- D 0 - I - 0x010EFD 04:8EED: 20        .byte $20   ; 
- D 0 - I - 0x010EFE 04:8EEE: 21        .byte $21   ; 
- D 0 - I - 0x010EFF 04:8EEF: 20        .byte $20   ; 
- D 0 - I - 0x010F00 04:8EF0: 20        .byte $20   ; 
- D 0 - I - 0x010F01 04:8EF1: F0        .byte con_se_cb_1_F0 + $00   ; 
- D 0 - I - 0x010F02 04:8EF2: 20        .byte $20   ; 
- D 0 - I - 0x010F03 04:8EF3: F0        .byte con_se_cb_1_F0 + $00   ; 
- D 0 - I - 0x010F04 04:8EF4: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x010F05 04:8EF5: 00        .byte $00   ; 
- D 0 - I - 0x010F06 04:8EF6: E5        .byte con_se_cb_1_E0 + $05   ; 
- D 0 - I - 0x010F07 04:8EF7: A1        .byte $A1   ; 
- D 0 - I - 0x010F08 04:8EF8: A0        .byte $A0   ; 
- D 0 - I - 0x010F09 04:8EF9: A0        .byte $A0   ; 
- D 0 - I - 0x010F0A 04:8EFA: F3        .byte con_se_cb_1_F0 + $03   ; 
- D 0 - I - 0x010F0B 04:8EFB: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 0 - I - 0x010F0C 04:8EFC: 01        .byte $01   ; 
- D 0 - I - 0x010F0D 04:8EFD: F1        .byte con_se_cb_1_F0 + $01   ; 
- D 0 - I - 0x010F0E 04:8EFE: 00        .byte $00   ; 
- D 0 - I - 0x010F0F 04:8EFF: 00        .byte $00   ; 
- D 0 - I - 0x010F10 04:8F00: 00        .byte $00   ; 
- D 0 - I - 0x010F11 04:8F01: 00        .byte $00   ; 
- D 0 - I - 0x010F12 04:8F02: 21        .byte $21   ; 
- D 0 - I - 0x010F13 04:8F03: 20        .byte $20   ; 
- D 0 - I - 0x010F14 04:8F04: 20        .byte $20   ; 
- D 0 - I - 0x010F15 04:8F05: 21        .byte $21   ; 
- D 0 - I - 0x010F16 04:8F06: 20        .byte $20   ; 
- D 0 - I - 0x010F17 04:8F07: 20        .byte $20   ; 
- D 0 - I - 0x010F18 04:8F08: 21        .byte $21   ; 
- D 0 - I - 0x010F19 04:8F09: 20        .byte $20   ; 
- D 0 - I - 0x010F1A 04:8F0A: 20        .byte $20   ; 
- D 0 - I - 0x010F1B 04:8F0B: F0        .byte con_se_cb_1_F0 + $00   ; 
- D 0 - I - 0x010F1C 04:8F0C: 20        .byte $20   ; 
- D 0 - I - 0x010F1D 04:8F0D: F0        .byte con_se_cb_1_F0 + $00   ; 
- D 0 - I - 0x010F1E 04:8F0E: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x010F1F 04:8F0F: 00        .byte $00   ; 
- D 0 - I - 0x010F20 04:8F10: E5        .byte con_se_cb_1_E0 + $05   ; 
- D 0 - I - 0x010F21 04:8F11: A1        .byte $A1   ; 
- D 0 - I - 0x010F22 04:8F12: A0        .byte $A0   ; 
- D 0 - I - 0x010F23 04:8F13: A0        .byte $A0   ; 
- D 0 - I - 0x010F24 04:8F14: F1        .byte con_se_cb_1_F0 + $01   ; 
- D 0 - I - 0x010F25 04:8F15: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 0 - I - 0x010F26 04:8F16: A0        .byte $A0   ; 
- D 0 - I - 0x010F27 04:8F17: B0        .byte $B0   ; 
- D 0 - I - 0x010F28 04:8F18: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x010F29 04:8F19: 00        .byte $00   ; 
- D 0 - I - 0x010F2A 04:8F1A: 00        .byte $00   ; 
- D 0 - I - 0x010F2B 04:8F1B: 00        .byte $00   ; 
- D 0 - I - 0x010F2C 04:8F1C: 00        .byte $00   ; 
- D 0 - I - 0x010F2D 04:8F1D: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 0 - I - 0x010F2E 04:8F1E: 03        .byte $03   ; 
- D 0 - I - 0x010F2F 04:8F1F: FB        .byte con_se_cb_1_FB   ; 
- D 0 - I - 0x010F30 04:8F20: D7        .byte con_se_cb_1_D0 + $07, $10   ; 
- D 0 - I - 0x010F32 04:8F22: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x010F33 04:8F23: 21        .byte $21   ; 
- D 0 - I - 0x010F34 04:8F24: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 0 - I - 0x010F35 04:8F25: 20        .byte $20   ; 
- D 0 - I - 0x010F36 04:8F26: 20        .byte $20   ; 
- D 0 - I - 0x010F37 04:8F27: 20        .byte $20   ; 
- D 0 - I - 0x010F38 04:8F28: 21        .byte $21   ; 
- D 0 - I - 0x010F39 04:8F29: 20        .byte $20   ; 
- D 0 - I - 0x010F3A 04:8F2A: 21        .byte $21   ; 
- D 0 - I - 0x010F3B 04:8F2B: 20        .byte $20   ; 
- D 0 - I - 0x010F3C 04:8F2C: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 0 - I - 0x010F3D 04:8F2D: 20        .byte $20   ; 
- D 0 - I - 0x010F3E 04:8F2E: F0        .byte con_se_cb_1_F0 + $00   ; 
- D 0 - I - 0x010F3F 04:8F2F: 20        .byte $20   ; 
- D 0 - I - 0x010F40 04:8F30: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x010F41 04:8F31: 20        .byte $20   ; 
- D 0 - I - 0x010F42 04:8F32: 00        .byte $00   ; 
- D 0 - I - 0x010F43 04:8F33: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 0 - I - 0x010F44 04:8F34: A1        .byte $A1   ; 
- D 0 - I - 0x010F45 04:8F35: A0        .byte $A0   ; 
- D 0 - I - 0x010F46 04:8F36: A0        .byte $A0   ; 
- D 0 - I - 0x010F47 04:8F37: F0        .byte con_se_cb_1_F0 + $00   ; 
- D 0 - I - 0x010F48 04:8F38: A1        .byte $A1   ; 
- D 0 - I - 0x010F49 04:8F39: A0        .byte $A0   ; 
- D 0 - I - 0x010F4A 04:8F3A: E5        .byte con_se_cb_1_E0 + $05   ; 
- D 0 - I - 0x010F4B 04:8F3B: A0        .byte $A0   ; 
- D 0 - I - 0x010F4C 04:8F3C: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 0 - I - 0x010F4D 04:8F3D: A0        .byte $A0   ; 
- D 0 - I - 0x010F4E 04:8F3E: D7        .byte con_se_cb_1_D0 + $07, $00   ; 
- D 0 - I - 0x010F50 04:8F40: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x010F51 04:8F41: 90        .byte $90   ; 
- D 0 - I - 0x010F52 04:8F42: A0        .byte $A0   ; 
- D 0 - I - 0x010F53 04:8F43: 90        .byte $90   ; 
- D 0 - I - 0x010F54 04:8F44: A0        .byte $A0   ; 
- D 0 - I - 0x010F55 04:8F45: 90        .byte $90   ; 
- D 0 - I - 0x010F56 04:8F46: A0        .byte $A0   ; 
- D 0 - I - 0x010F57 04:8F47: FE        .byte con_se_cb_1_FE, $02   ; 
- D 0 - I - 0x010F59 04:8F49: D7        .byte con_se_cb_1_D0 + $07, $20   ; 
- D 0 - I - 0x010F5B 04:8F4B: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 0 - I - 0x010F5C 04:8F4C: 17        .byte $17   ; 
- D 0 - I - 0x010F5D 04:8F4D: 27        .byte $27   ; 
- D 0 - I - 0x010F5E 04:8F4E: 47        .byte $47   ; 
- D 0 - I - 0x010F5F 04:8F4F: 54        .byte $54   ; 
- D 0 - I - 0x010F60 04:8F50: D7        .byte con_se_cb_1_D0 + $07, $10   ; 
- D 0 - I - 0x010F62 04:8F52: E5        .byte con_se_cb_1_E0 + $05   ; 
- D 0 - I - 0x010F63 04:8F53: 90        .byte $90   ; 
- D 0 - I - 0x010F64 04:8F54: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 0 - I - 0x010F65 04:8F55: 20        .byte $20   ; 
- D 0 - I - 0x010F66 04:8F56: 50        .byte $50   ; 
- D 0 - I - 0x010F67 04:8F57: D7        .byte con_se_cb_1_D0 + $07, $20   ; 
- D 0 - I - 0x010F69 04:8F59: 77        .byte $77   ; 
- D 0 - I - 0x010F6A 04:8F5A: 57        .byte $57   ; 
- D 0 - I - 0x010F6B 04:8F5B: D7        .byte con_se_cb_1_D0 + $07, $10   ; 
- D 0 - I - 0x010F6D 04:8F5D: 72        .byte $72   ; 
- D 0 - I - 0x010F6E 04:8F5E: 72        .byte $72   ; 
- D 0 - I - 0x010F6F 04:8F5F: 71        .byte $71   ; 
- D 0 - I - 0x010F70 04:8F60: 42        .byte $42   ; 
- D 0 - I - 0x010F71 04:8F61: 72        .byte $72   ; 
- D 0 - I - 0x010F72 04:8F62: 91        .byte $91   ; 
- D 0 - I - 0x010F73 04:8F63: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x010F74 04:8F64: 21        .byte $21   ; 
- D 0 - I - 0x010F75 04:8F65: 20        .byte $20   ; 
- D 0 - I - 0x010F76 04:8F66: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 0 - I - 0x010F77 04:8F67: 20        .byte $20   ; 
- D 0 - I - 0x010F78 04:8F68: 20        .byte $20   ; 
- D 0 - I - 0x010F79 04:8F69: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x010F7A 04:8F6A: 20        .byte $20   ; 
- D 0 - I - 0x010F7B 04:8F6B: 01        .byte $01   ; 
- D 0 - I - 0x010F7C 04:8F6C: 21        .byte $21   ; 
- D 0 - I - 0x010F7D 04:8F6D: C5        .byte con_se_cb_1_C0 + $05   ; 
- D 0 - I - 0x010F7E 04:8F6E: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 0 - I - 0x010F7F 04:8F6F: A1        .byte $A1   ; 
- D 0 - I - 0x010F80 04:8F70: A1        .byte $A1   ; 
- D 0 - I - 0x010F81 04:8F71: C3        .byte con_se_cb_1_C0 + $03   ; 
- D 0 - I - 0x010F82 04:8F72: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x010F83 04:8F73: 01        .byte $01   ; 
- D 0 - I - 0x010F84 04:8F74: 01        .byte $01   ; 
- D 0 - I - 0x010F85 04:8F75: C3        .byte con_se_cb_1_C0 + $03   ; 
- D 0 - I - 0x010F86 04:8F76: 21        .byte $21   ; 
- D 0 - I - 0x010F87 04:8F77: 20        .byte $20   ; 
- D 0 - I - 0x010F88 04:8F78: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 0 - I - 0x010F89 04:8F79: 20        .byte $20   ; 
- D 0 - I - 0x010F8A 04:8F7A: 20        .byte $20   ; 
- D 0 - I - 0x010F8B 04:8F7B: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x010F8C 04:8F7C: 20        .byte $20   ; 
- D 0 - I - 0x010F8D 04:8F7D: 01        .byte $01   ; 
- D 0 - I - 0x010F8E 04:8F7E: 21        .byte $21   ; 
- D 0 - I - 0x010F8F 04:8F7F: C5        .byte con_se_cb_1_C0 + $05   ; 
- D 0 - I - 0x010F90 04:8F80: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 0 - I - 0x010F91 04:8F81: A1        .byte $A1   ; 
- D 0 - I - 0x010F92 04:8F82: A1        .byte $A1   ; 
- D 0 - I - 0x010F93 04:8F83: C3        .byte con_se_cb_1_C0 + $03   ; 
- D 0 - I - 0x010F94 04:8F84: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x010F95 04:8F85: 03        .byte $03   ; 
- D 0 - I - 0x010F96 04:8F86: E5        .byte con_se_cb_1_E0 + $05   ; 
- D 0 - I - 0x010F97 04:8F87: 90        .byte $90   ; 
- D 0 - I - 0x010F98 04:8F88: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 0 - I - 0x010F99 04:8F89: 02        .byte $02   ; 
- D 0 - I - 0x010F9A 04:8F8A: FE        .byte con_se_cb_1_FE, $FF   ; 
- D 0 - I - 0x010F9C 04:8F8C: E4 8E     .word off_FE_8EE4



off_ch_05_0x010F9E_5B:
off_FE_8F8E:
- D 0 - I - 0x010F9E 04:8F8E: D7        .byte $D7   ; 
- D 0 - I - 0x010F9F 04:8F8F: FB        .byte con_se_cb_1_FB   ; 
- D 0 - I - 0x010FA0 04:8F90: B1        .byte $B1   ; 
- D 0 - I - 0x010FA1 04:8F91: B0        .byte $B0   ; 
- D 0 - I - 0x010FA2 04:8F92: B0        .byte $B0   ; 
- D 0 - I - 0x010FA3 04:8F93: 41        .byte $41   ; 
- D 0 - I - 0x010FA4 04:8F94: 10        .byte $10   ; 
- D 0 - I - 0x010FA5 04:8F95: B0        .byte $B0   ; 
- D 0 - I - 0x010FA6 04:8F96: B1        .byte $B1   ; 
- D 0 - I - 0x010FA7 04:8F97: B0        .byte $B0   ; 
- D 0 - I - 0x010FA8 04:8F98: B0        .byte $B0   ; 
- D 0 - I - 0x010FA9 04:8F99: 40        .byte $40   ; 
- D 0 - I - 0x010FAA 04:8F9A: B0        .byte $B0   ; 
- D 0 - I - 0x010FAB 04:8F9B: B0        .byte $B0   ; 
- D 0 - I - 0x010FAC 04:8F9C: B0        .byte $B0   ; 
- D 0 - I - 0x010FAD 04:8F9D: B1        .byte $B1   ; 
- D 0 - I - 0x010FAE 04:8F9E: B0        .byte $B0   ; 
- D 0 - I - 0x010FAF 04:8F9F: B0        .byte $B0   ; 
- D 0 - I - 0x010FB0 04:8FA0: 41        .byte $41   ; 
- D 0 - I - 0x010FB1 04:8FA1: 10        .byte $10   ; 
- D 0 - I - 0x010FB2 04:8FA2: 10        .byte $10   ; 
- D 0 - I - 0x010FB3 04:8FA3: B1        .byte $B1   ; 
- D 0 - I - 0x010FB4 04:8FA4: 40        .byte $40   ; 
- D 0 - I - 0x010FB5 04:8FA5: B0        .byte $B0   ; 
- D 0 - I - 0x010FB6 04:8FA6: 40        .byte $40   ; 
- D 0 - I - 0x010FB7 04:8FA7: 40        .byte $40   ; 
- D 0 - I - 0x010FB8 04:8FA8: 40        .byte $40   ; 
- D 0 - I - 0x010FB9 04:8FA9: 10        .byte $10   ; 
- D 0 - I - 0x010FBA 04:8FAA: FE        .byte con_se_cb_1_FE, $02   ; 
- D 0 - I - 0x010FBC 04:8FAC: FB        .byte con_se_cb_1_FB   ; 
- D 0 - I - 0x010FBD 04:8FAD: B1        .byte $B1   ; 
- D 0 - I - 0x010FBE 04:8FAE: B0        .byte $B0   ; 
- D 0 - I - 0x010FBF 04:8FAF: B0        .byte $B0   ; 
- D 0 - I - 0x010FC0 04:8FB0: 40        .byte $40   ; 
- D 0 - I - 0x010FC1 04:8FB1: 10        .byte $10   ; 
- D 0 - I - 0x010FC2 04:8FB2: 10        .byte $10   ; 
- D 0 - I - 0x010FC3 04:8FB3: 10        .byte $10   ; 
- D 0 - I - 0x010FC4 04:8FB4: B1        .byte $B1   ; 
- D 0 - I - 0x010FC5 04:8FB5: B0        .byte $B0   ; 
- D 0 - I - 0x010FC6 04:8FB6: B0        .byte $B0   ; 
- D 0 - I - 0x010FC7 04:8FB7: 40        .byte $40   ; 
- D 0 - I - 0x010FC8 04:8FB8: B0        .byte $B0   ; 
- D 0 - I - 0x010FC9 04:8FB9: B0        .byte $B0   ; 
- D 0 - I - 0x010FCA 04:8FBA: B0        .byte $B0   ; 
- D 0 - I - 0x010FCB 04:8FBB: B1        .byte $B1   ; 
- D 0 - I - 0x010FCC 04:8FBC: B0        .byte $B0   ; 
- D 0 - I - 0x010FCD 04:8FBD: B0        .byte $B0   ; 
- D 0 - I - 0x010FCE 04:8FBE: 40        .byte $40   ; 
- D 0 - I - 0x010FCF 04:8FBF: B0        .byte $B0   ; 
- D 0 - I - 0x010FD0 04:8FC0: 10        .byte $10   ; 
- D 0 - I - 0x010FD1 04:8FC1: B0        .byte $B0   ; 
- D 0 - I - 0x010FD2 04:8FC2: B1        .byte $B1   ; 
- D 0 - I - 0x010FD3 04:8FC3: 41        .byte $41   ; 
- D 0 - I - 0x010FD4 04:8FC4: 41        .byte $41   ; 
- D 0 - I - 0x010FD5 04:8FC5: 40        .byte $40   ; 
- D 0 - I - 0x010FD6 04:8FC6: 40        .byte $40   ; 
- D 0 - I - 0x010FD7 04:8FC7: FE        .byte con_se_cb_1_FE, $02   ; 
- D 0 - I - 0x010FD9 04:8FC9: FB        .byte con_se_cb_1_FB   ; 
- D 0 - I - 0x010FDA 04:8FCA: B1        .byte $B1   ; 
- D 0 - I - 0x010FDB 04:8FCB: B0        .byte $B0   ; 
- D 0 - I - 0x010FDC 04:8FCC: B0        .byte $B0   ; 
- D 0 - I - 0x010FDD 04:8FCD: 40        .byte $40   ; 
- D 0 - I - 0x010FDE 04:8FCE: 10        .byte $10   ; 
- D 0 - I - 0x010FDF 04:8FCF: 10        .byte $10   ; 
- D 0 - I - 0x010FE0 04:8FD0: 10        .byte $10   ; 
- D 0 - I - 0x010FE1 04:8FD1: B1        .byte $B1   ; 
- D 0 - I - 0x010FE2 04:8FD2: B0        .byte $B0   ; 
- D 0 - I - 0x010FE3 04:8FD3: B0        .byte $B0   ; 
- D 0 - I - 0x010FE4 04:8FD4: 40        .byte $40   ; 
- D 0 - I - 0x010FE5 04:8FD5: B0        .byte $B0   ; 
- D 0 - I - 0x010FE6 04:8FD6: B0        .byte $B0   ; 
- D 0 - I - 0x010FE7 04:8FD7: B0        .byte $B0   ; 
- D 0 - I - 0x010FE8 04:8FD8: FE        .byte con_se_cb_1_FE, $03   ; 
- D 0 - I - 0x010FEA 04:8FDA: B1        .byte $B1   ; 
- D 0 - I - 0x010FEB 04:8FDB: B0        .byte $B0   ; 
- D 0 - I - 0x010FEC 04:8FDC: B0        .byte $B0   ; 
- D 0 - I - 0x010FED 04:8FDD: B0        .byte $B0   ; 
- D 0 - I - 0x010FEE 04:8FDE: B0        .byte $B0   ; 
- D 0 - I - 0x010FEF 04:8FDF: 10        .byte $10   ; 
- D 0 - I - 0x010FF0 04:8FE0: B0        .byte $B0   ; 
- D 0 - I - 0x010FF1 04:8FE1: D1        .byte $D1   ; 
- D 0 - I - 0x010FF2 04:8FE2: 42        .byte $42   ; 
- D 0 - I - 0x010FF3 04:8FE3: 43        .byte $43   ; 
- D 0 - I - 0x010FF4 04:8FE4: D7        .byte $D7   ; 
- D 0 - I - 0x010FF5 04:8FE5: 40        .byte $40   ; 
- D 0 - I - 0x010FF6 04:8FE6: 40        .byte $40   ; 
- D 0 - I - 0x010FF7 04:8FE7: B0        .byte $B0   ; 
- D 0 - I - 0x010FF8 04:8FE8: B0        .byte $B0   ; 
- D 0 - I - 0x010FF9 04:8FE9: B0        .byte $B0   ; 
- D 0 - I - 0x010FFA 04:8FEA: B0        .byte $B0   ; 
- D 0 - I - 0x010FFB 04:8FEB: B0        .byte $B0   ; 
- D 0 - I - 0x010FFC 04:8FEC: B1        .byte $B1   ; 
- D 0 - I - 0x010FFD 04:8FED: B0        .byte $B0   ; 
- D 0 - I - 0x010FFE 04:8FEE: B0        .byte $B0   ; 
- D 0 - I - 0x010FFF 04:8FEF: 40        .byte $40   ; 
- D 0 - I - 0x011000 04:8FF0: 40        .byte $40   ; 
- D 0 - I - 0x011001 04:8FF1: 10        .byte $10   ; 
- D 0 - I - 0x011002 04:8FF2: B0        .byte $B0   ; 
- D 0 - I - 0x011003 04:8FF3: B1        .byte $B1   ; 
- D 0 - I - 0x011004 04:8FF4: B0        .byte $B0   ; 
- D 0 - I - 0x011005 04:8FF5: B0        .byte $B0   ; 
- D 0 - I - 0x011006 04:8FF6: 41        .byte $41   ; 
- D 0 - I - 0x011007 04:8FF7: 10        .byte $10   ; 
- D 0 - I - 0x011008 04:8FF8: 10        .byte $10   ; 
- D 0 - I - 0x011009 04:8FF9: FB        .byte con_se_cb_1_FB   ; 
- D 0 - I - 0x01100A 04:8FFA: B1        .byte $B1   ; 
- D 0 - I - 0x01100B 04:8FFB: B1        .byte $B1   ; 
- D 0 - I - 0x01100C 04:8FFC: 40        .byte $40   ; 
- D 0 - I - 0x01100D 04:8FFD: 40        .byte $40   ; 
- D 0 - I - 0x01100E 04:8FFE: 10        .byte $10   ; 
- D 0 - I - 0x01100F 04:8FFF: 10        .byte $10   ; 
- D 0 - I - 0x011010 04:9000: FE        .byte con_se_cb_1_FE, $02   ; 
- D 0 - I - 0x011012 04:9002: B1        .byte $B1   ; 
- D 0 - I - 0x011013 04:9003: B0        .byte $B0   ; 
- D 0 - I - 0x011014 04:9004: B0        .byte $B0   ; 
- D 0 - I - 0x011015 04:9005: 40        .byte $40   ; 
- D 0 - I - 0x011016 04:9006: 40        .byte $40   ; 
- D 0 - I - 0x011017 04:9007: 10        .byte $10   ; 
- D 0 - I - 0x011018 04:9008: B0        .byte $B0   ; 
- D 0 - I - 0x011019 04:9009: B1        .byte $B1   ; 
- D 0 - I - 0x01101A 04:900A: D1        .byte $D1   ; 
- D 0 - I - 0x01101B 04:900B: 14        .byte $14   ; 
- D 0 - I - 0x01101C 04:900C: B3        .byte $B3   ; 
- D 0 - I - 0x01101D 04:900D: B4        .byte $B4   ; 
- D 0 - I - 0x01101E 04:900E: D7        .byte $D7   ; 
- D 0 - I - 0x01101F 04:900F: 41        .byte $41   ; 
- D 0 - I - 0x011020 04:9010: 10        .byte $10   ; 
- D 0 - I - 0x011021 04:9011: 10        .byte $10   ; 
- D 0 - I - 0x011022 04:9012: B1        .byte $B1   ; 
- D 0 - I - 0x011023 04:9013: B0        .byte $B0   ; 
- D 0 - I - 0x011024 04:9014: B0        .byte $B0   ; 
- D 0 - I - 0x011025 04:9015: 40        .byte $40   ; 
- D 0 - I - 0x011026 04:9016: 40        .byte $40   ; 
- D 0 - I - 0x011027 04:9017: 10        .byte $10   ; 
- D 0 - I - 0x011028 04:9018: B0        .byte $B0   ; 
- D 0 - I - 0x011029 04:9019: B1        .byte $B1   ; 
- D 0 - I - 0x01102A 04:901A: 11        .byte $11   ; 
- D 0 - I - 0x01102B 04:901B: D1        .byte $D1   ; 
- D 0 - I - 0x01102C 04:901C: B0        .byte $B0   ; 
- D 0 - I - 0x01102D 04:901D: 25        .byte $25   ; 
- D 0 - I - 0x01102E 04:901E: B0        .byte $B0   ; 
- D 0 - I - 0x01102F 04:901F: 25        .byte $25   ; 
- D 0 - I - 0x011030 04:9020: D7        .byte $D7   ; 
- D 0 - I - 0x011031 04:9021: C1        .byte $C1   ; 
- D 0 - I - 0x011032 04:9022: FE        .byte con_se_cb_1_FE, $FF   ; 
- D 0 - I - 0x011034 04:9024: 8E 8F     .word off_FE_8F8E



off_ch_00_0x011036_5C:
- D 0 - I - 0x011036 04:9026: D1        .byte con_se_cb_1_D0 + $01, $77, con_9E25_05 + $80   ; 
- D 0 - I - 0x011039 04:9029: 19        .byte $19   ; 
- D 0 - I - 0x01103A 04:902A: EB        .byte con_se_cb_1_EB, con_9E7B_50, $43   ; 
- D 0 - I - 0x01103D 04:902D: E9        .byte con_se_cb_1_E9, $B1   ; 
- D 0 - I - 0x01103F 04:902F: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 0 - I - 0x011040 04:9030: 74        .byte $74   ; 
- D 0 - I - 0x011041 04:9031: 74        .byte $74   ; 
- D 0 - I - 0x011042 04:9032: 73        .byte $73   ; 
- D 0 - I - 0x011043 04:9033: D7        .byte con_se_cb_1_D0 + $07, $78, con_9E25_04 + $80   ; 
- D 0 - I - 0x011046 04:9036: 43        .byte $43   ; 
- D 0 - I - 0x011047 04:9037: 7D        .byte $7D   ; 
- D 0 - I - 0x011048 04:9038: D1        .byte con_se_cb_1_D0 + $01, $78, con_9E25_05 + $80   ; 
- D 0 - I - 0x01104B 04:903B: 19        .byte $19   ; 
- D 0 - I - 0x01104C 04:903C: 54        .byte $54   ; 
- D 0 - I - 0x01104D 04:903D: 54        .byte $54   ; 
- D 0 - I - 0x01104E 04:903E: 53        .byte $53   ; 
- D 0 - I - 0x01104F 04:903F: D7        .byte con_se_cb_1_D0 + $07, $78, con_9E25_04 + $80   ; 
- D 0 - I - 0x011052 04:9042: 43        .byte $43   ; 
- D 0 - I - 0x011053 04:9043: 5D        .byte $5D   ; 
- D 0 - I - 0x011054 04:9044: D1        .byte con_se_cb_1_D0 + $01, $78, con_9E25_05 + $80   ; 
- D 0 - I - 0x011057 04:9047: 19        .byte $19   ; 
- D 0 - I - 0x011058 04:9048: 34        .byte $34   ; 
- D 0 - I - 0x011059 04:9049: 34        .byte $34   ; 
- D 0 - I - 0x01105A 04:904A: 33        .byte $33   ; 
- D 0 - I - 0x01105B 04:904B: D7        .byte con_se_cb_1_D0 + $07, $78, con_9E25_04 + $80   ; 
- D 0 - I - 0x01105E 04:904E: 43        .byte $43   ; 
- D 0 - I - 0x01105F 04:904F: 3D        .byte $3D   ; 
- D 0 - I - 0x011060 04:9050: D1        .byte con_se_cb_1_D0 + $01, $78, con_9E25_05 + $80   ; 
- D 0 - I - 0x011063 04:9053: 19        .byte $19   ; 
- D 0 - I - 0x011064 04:9054: 54        .byte $54   ; 
- D 0 - I - 0x011065 04:9055: 54        .byte $54   ; 
- D 0 - I - 0x011066 04:9056: 55        .byte $55   ; 
- D 0 - I - 0x011067 04:9057: D7        .byte con_se_cb_1_D0 + $07, $78, con_9E25_04 + $80   ; 
- D 0 - I - 0x01106A 04:905A: 64        .byte $64   ; 
- D 0 - I - 0x01106B 04:905B: E6        .byte con_se_cb_1_E6, $0C   ; 
- D 0 - I - 0x01106D 04:905D: 5D        .byte $5D   ; 
- D 0 - I - 0x01106E 04:905E: EB        .byte con_se_cb_1_EB, $00   ; 
- D 0 - I - 0x011070 04:9060: E9        .byte con_se_cb_1_E9, $00   ; 
off_FE_9062:
- D 0 - I - 0x011072 04:9062: D4        .byte con_se_cb_1_D0 + $04, $35, con_9E25_03 + $80   ; 
- D 0 - I - 0x011075 04:9065: 18        .byte $18   ; 
- D 0 - I - 0x011076 04:9066: EC        .byte con_se_cb_1_EC, $01   ; 
- D 0 - I - 0x011078 04:9068: FB        .byte con_se_cb_1_FB   ; 
- D 0 - I - 0x011079 04:9069: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 0 - I - 0x01107A 04:906A: 00        .byte $00   ; 
- D 0 - I - 0x01107B 04:906B: 30        .byte $30   ; 
- D 0 - I - 0x01107C 04:906C: 70        .byte $70   ; 
- D 0 - I - 0x01107D 04:906D: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x01107E 04:906E: 00        .byte $00   ; 
- D 0 - I - 0x01107F 04:906F: 30        .byte $30   ; 
- D 0 - I - 0x011080 04:9070: 70        .byte $70   ; 
- D 0 - I - 0x011081 04:9071: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x011082 04:9072: 00        .byte $00   ; 
- D 0 - I - 0x011083 04:9073: 30        .byte $30   ; 
- D 0 - I - 0x011084 04:9074: 70        .byte $70   ; 
- D 0 - I - 0x011085 04:9075: E1        .byte con_se_cb_1_E0 + $01   ; 
- D 0 - I - 0x011086 04:9076: 00        .byte $00   ; 
- D 0 - I - 0x011087 04:9077: 30        .byte $30   ; 
- D 0 - I - 0x011088 04:9078: 70        .byte $70   ; 
- D 0 - I - 0x011089 04:9079: E0        .byte con_se_cb_1_E0 + $00   ; 
- D 0 - I - 0x01108A 04:907A: 00        .byte $00   ; 
- D 0 - I - 0x01108B 04:907B: E1        .byte con_se_cb_1_E0 + $01   ; 
- D 0 - I - 0x01108C 04:907C: 70        .byte $70   ; 
- D 0 - I - 0x01108D 04:907D: 30        .byte $30   ; 
- D 0 - I - 0x01108E 04:907E: 00        .byte $00   ; 
- D 0 - I - 0x01108F 04:907F: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x011090 04:9080: 70        .byte $70   ; 
- D 0 - I - 0x011091 04:9081: 30        .byte $30   ; 
- D 0 - I - 0x011092 04:9082: 00        .byte $00   ; 
- D 0 - I - 0x011093 04:9083: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x011094 04:9084: 70        .byte $70   ; 
- D 0 - I - 0x011095 04:9085: 30        .byte $30   ; 
- D 0 - I - 0x011096 04:9086: 00        .byte $00   ; 
- D 0 - I - 0x011097 04:9087: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 0 - I - 0x011098 04:9088: 70        .byte $70   ; 
- D 0 - I - 0x011099 04:9089: 30        .byte $30   ; 
- D 0 - I - 0x01109A 04:908A: FE        .byte con_se_cb_1_FE, $02   ; 
- D 0 - I - 0x01109C 04:908C: FB        .byte con_se_cb_1_FB   ; 
- D 0 - I - 0x01109D 04:908D: 20        .byte $20   ; 
- D 0 - I - 0x01109E 04:908E: 90        .byte $90   ; 
- D 0 - I - 0x01109F 04:908F: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x0110A0 04:9090: 00        .byte $00   ; 
- D 0 - I - 0x0110A1 04:9091: 20        .byte $20   ; 
- D 0 - I - 0x0110A2 04:9092: 60        .byte $60   ; 
- D 0 - I - 0x0110A3 04:9093: 90        .byte $90   ; 
- D 0 - I - 0x0110A4 04:9094: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x0110A5 04:9095: 00        .byte $00   ; 
- D 0 - I - 0x0110A6 04:9096: 20        .byte $20   ; 
- D 0 - I - 0x0110A7 04:9097: 60        .byte $60   ; 
- D 0 - I - 0x0110A8 04:9098: 90        .byte $90   ; 
- D 0 - I - 0x0110A9 04:9099: E1        .byte con_se_cb_1_E0 + $01   ; 
- D 0 - I - 0x0110AA 04:909A: 00        .byte $00   ; 
- D 0 - I - 0x0110AB 04:909B: 20        .byte $20   ; 
- D 0 - I - 0x0110AC 04:909C: 60        .byte $60   ; 
- D 0 - I - 0x0110AD 04:909D: 20        .byte $20   ; 
- D 0 - I - 0x0110AE 04:909E: 00        .byte $00   ; 
- D 0 - I - 0x0110AF 04:909F: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x0110B0 04:90A0: 90        .byte $90   ; 
- D 0 - I - 0x0110B1 04:90A1: 60        .byte $60   ; 
- D 0 - I - 0x0110B2 04:90A2: 20        .byte $20   ; 
- D 0 - I - 0x0110B3 04:90A3: 00        .byte $00   ; 
- D 0 - I - 0x0110B4 04:90A4: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x0110B5 04:90A5: 90        .byte $90   ; 
- D 0 - I - 0x0110B6 04:90A6: 60        .byte $60   ; 
- D 0 - I - 0x0110B7 04:90A7: 20        .byte $20   ; 
- D 0 - I - 0x0110B8 04:90A8: 00        .byte $00   ; 
- D 0 - I - 0x0110B9 04:90A9: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 0 - I - 0x0110BA 04:90AA: 90        .byte $90   ; 
- D 0 - I - 0x0110BB 04:90AB: 20        .byte $20   ; 
- D 0 - I - 0x0110BC 04:90AC: 90        .byte $90   ; 
- D 0 - I - 0x0110BD 04:90AD: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x0110BE 04:90AE: 00        .byte $00   ; 
- D 0 - I - 0x0110BF 04:90AF: 20        .byte $20   ; 
- D 0 - I - 0x0110C0 04:90B0: 60        .byte $60   ; 
- D 0 - I - 0x0110C1 04:90B1: 90        .byte $90   ; 
- D 0 - I - 0x0110C2 04:90B2: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x0110C3 04:90B3: 00        .byte $00   ; 
- D 0 - I - 0x0110C4 04:90B4: 20        .byte $20   ; 
- D 0 - I - 0x0110C5 04:90B5: 60        .byte $60   ; 
- D 0 - I - 0x0110C6 04:90B6: 90        .byte $90   ; 
- D 0 - I - 0x0110C7 04:90B7: E1        .byte con_se_cb_1_E0 + $01   ; 
- D 0 - I - 0x0110C8 04:90B8: 00        .byte $00   ; 
- D 0 - I - 0x0110C9 04:90B9: 20        .byte $20   ; 
- D 0 - I - 0x0110CA 04:90BA: 60        .byte $60   ; 
- D 0 - I - 0x0110CB 04:90BB: 20        .byte $20   ; 
- D 0 - I - 0x0110CC 04:90BC: 00        .byte $00   ; 
- D 0 - I - 0x0110CD 04:90BD: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x0110CE 04:90BE: 90        .byte $90   ; 
- D 0 - I - 0x0110CF 04:90BF: 60        .byte $60   ; 
- D 0 - I - 0x0110D0 04:90C0: 20        .byte $20   ; 
- D 0 - I - 0x0110D1 04:90C1: 00        .byte $00   ; 
- D 0 - I - 0x0110D2 04:90C2: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x0110D3 04:90C3: 90        .byte $90   ; 
- D 0 - I - 0x0110D4 04:90C4: 60        .byte $60   ; 
- D 0 - I - 0x0110D5 04:90C5: 20        .byte $20   ; 
- D 0 - I - 0x0110D6 04:90C6: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x0110D7 04:90C7: 00        .byte $00   ; 
- D 0 - I - 0x0110D8 04:90C8: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x0110D9 04:90C9: 90        .byte $90   ; 
- D 0 - I - 0x0110DA 04:90CA: FB        .byte con_se_cb_1_FB   ; 
- D 0 - I - 0x0110DB 04:90CB: E5        .byte con_se_cb_1_E0 + $05   ; 
- D 0 - I - 0x0110DC 04:90CC: 70        .byte $70   ; 
- D 0 - I - 0x0110DD 04:90CD: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 0 - I - 0x0110DE 04:90CE: 20        .byte $20   ; 
- D 0 - I - 0x0110DF 04:90CF: 50        .byte $50   ; 
- D 0 - I - 0x0110E0 04:90D0: 70        .byte $70   ; 
- D 0 - I - 0x0110E1 04:90D1: B0        .byte $B0   ; 
- D 0 - I - 0x0110E2 04:90D2: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x0110E3 04:90D3: 20        .byte $20   ; 
- D 0 - I - 0x0110E4 04:90D4: 50        .byte $50   ; 
- D 0 - I - 0x0110E5 04:90D5: 70        .byte $70   ; 
- D 0 - I - 0x0110E6 04:90D6: B0        .byte $B0   ; 
- D 0 - I - 0x0110E7 04:90D7: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x0110E8 04:90D8: 20        .byte $20   ; 
- D 0 - I - 0x0110E9 04:90D9: 50        .byte $50   ; 
- D 0 - I - 0x0110EA 04:90DA: 70        .byte $70   ; 
- D 0 - I - 0x0110EB 04:90DB: B0        .byte $B0   ; 
- D 0 - I - 0x0110EC 04:90DC: 70        .byte $70   ; 
- D 0 - I - 0x0110ED 04:90DD: 50        .byte $50   ; 
- D 0 - I - 0x0110EE 04:90DE: 20        .byte $20   ; 
- D 0 - I - 0x0110EF 04:90DF: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x0110F0 04:90E0: B0        .byte $B0   ; 
- D 0 - I - 0x0110F1 04:90E1: 70        .byte $70   ; 
- D 0 - I - 0x0110F2 04:90E2: 50        .byte $50   ; 
- D 0 - I - 0x0110F3 04:90E3: 20        .byte $20   ; 
- D 0 - I - 0x0110F4 04:90E4: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 0 - I - 0x0110F5 04:90E5: B0        .byte $B0   ; 
- D 0 - I - 0x0110F6 04:90E6: 70        .byte $70   ; 
- D 0 - I - 0x0110F7 04:90E7: 50        .byte $50   ; 
- D 0 - I - 0x0110F8 04:90E8: E5        .byte con_se_cb_1_E0 + $05   ; 
- D 0 - I - 0x0110F9 04:90E9: B0        .byte $B0   ; 
- D 0 - I - 0x0110FA 04:90EA: 70        .byte $70   ; 
- D 0 - I - 0x0110FB 04:90EB: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 0 - I - 0x0110FC 04:90EC: 20        .byte $20   ; 
- D 0 - I - 0x0110FD 04:90ED: 50        .byte $50   ; 
- D 0 - I - 0x0110FE 04:90EE: B0        .byte $B0   ; 
- D 0 - I - 0x0110FF 04:90EF: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x011100 04:90F0: 20        .byte $20   ; 
- D 0 - I - 0x011101 04:90F1: 50        .byte $50   ; 
- D 0 - I - 0x011102 04:90F2: B0        .byte $B0   ; 
- D 0 - I - 0x011103 04:90F3: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x011104 04:90F4: 20        .byte $20   ; 
- D 0 - I - 0x011105 04:90F5: 70        .byte $70   ; 
- D 0 - I - 0x011106 04:90F6: B0        .byte $B0   ; 
- D 0 - I - 0x011107 04:90F7: E1        .byte con_se_cb_1_E0 + $01   ; 
- D 0 - I - 0x011108 04:90F8: 20        .byte $20   ; 
- D 0 - I - 0x011109 04:90F9: 50        .byte $50   ; 
- D 0 - I - 0x01110A 04:90FA: 70        .byte $70   ; 
- D 0 - I - 0x01110B 04:90FB: 50        .byte $50   ; 
- D 0 - I - 0x01110C 04:90FC: 20        .byte $20   ; 
- D 0 - I - 0x01110D 04:90FD: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x01110E 04:90FE: B0        .byte $B0   ; 
- D 0 - I - 0x01110F 04:90FF: 70        .byte $70   ; 
- D 0 - I - 0x011110 04:9100: 50        .byte $50   ; 
- D 0 - I - 0x011111 04:9101: 20        .byte $20   ; 
- D 0 - I - 0x011112 04:9102: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x011113 04:9103: B0        .byte $B0   ; 
- D 0 - I - 0x011114 04:9104: 70        .byte $70   ; 
- D 0 - I - 0x011115 04:9105: 50        .byte $50   ; 
- D 0 - I - 0x011116 04:9106: 20        .byte $20   ; 
- D 0 - I - 0x011117 04:9107: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 0 - I - 0x011118 04:9108: 70        .byte $70   ; 
- D 0 - I - 0x011119 04:9109: 00        .byte $00   ; 
- D 0 - I - 0x01111A 04:910A: 70        .byte $70   ; 
- D 0 - I - 0x01111B 04:910B: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x01111C 04:910C: 00        .byte $00   ; 
- D 0 - I - 0x01111D 04:910D: 30        .byte $30   ; 
- D 0 - I - 0x01111E 04:910E: 70        .byte $70   ; 
- D 0 - I - 0x01111F 04:910F: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x011120 04:9110: 00        .byte $00   ; 
- D 0 - I - 0x011121 04:9111: 30        .byte $30   ; 
- D 0 - I - 0x011122 04:9112: 70        .byte $70   ; 
- D 0 - I - 0x011123 04:9113: E1        .byte con_se_cb_1_E0 + $01   ; 
- D 0 - I - 0x011124 04:9114: 00        .byte $00   ; 
- D 0 - I - 0x011125 04:9115: 30        .byte $30   ; 
- D 0 - I - 0x011126 04:9116: 70        .byte $70   ; 
- D 0 - I - 0x011127 04:9117: E0        .byte con_se_cb_1_E0 + $00   ; 
- D 0 - I - 0x011128 04:9118: 00        .byte $00   ; 
- D 0 - I - 0x011129 04:9119: 30        .byte $30   ; 
- D 0 - I - 0x01112A 04:911A: 00        .byte $00   ; 
- D 0 - I - 0x01112B 04:911B: E1        .byte con_se_cb_1_E0 + $01   ; 
- D 0 - I - 0x01112C 04:911C: 70        .byte $70   ; 
- D 0 - I - 0x01112D 04:911D: 30        .byte $30   ; 
- D 0 - I - 0x01112E 04:911E: 00        .byte $00   ; 
- D 0 - I - 0x01112F 04:911F: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x011130 04:9120: 70        .byte $70   ; 
- D 0 - I - 0x011131 04:9121: 30        .byte $30   ; 
- D 0 - I - 0x011132 04:9122: 00        .byte $00   ; 
- D 0 - I - 0x011133 04:9123: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x011134 04:9124: 70        .byte $70   ; 
- D 0 - I - 0x011135 04:9125: 30        .byte $30   ; 
- D 0 - I - 0x011136 04:9126: 00        .byte $00   ; 
- D 0 - I - 0x011137 04:9127: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 0 - I - 0x011138 04:9128: 70        .byte $70   ; 
- D 0 - I - 0x011139 04:9129: 20        .byte $20   ; 
- D 0 - I - 0x01113A 04:912A: 90        .byte $90   ; 
- D 0 - I - 0x01113B 04:912B: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x01113C 04:912C: 00        .byte $00   ; 
- D 0 - I - 0x01113D 04:912D: 20        .byte $20   ; 
- D 0 - I - 0x01113E 04:912E: 60        .byte $60   ; 
- D 0 - I - 0x01113F 04:912F: 90        .byte $90   ; 
- D 0 - I - 0x011140 04:9130: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x011141 04:9131: 00        .byte $00   ; 
- D 0 - I - 0x011142 04:9132: 20        .byte $20   ; 
- D 0 - I - 0x011143 04:9133: 50        .byte $50   ; 
- D 0 - I - 0x011144 04:9134: 90        .byte $90   ; 
- D 0 - I - 0x011145 04:9135: E1        .byte con_se_cb_1_E0 + $01   ; 
- D 0 - I - 0x011146 04:9136: 00        .byte $00   ; 
- D 0 - I - 0x011147 04:9137: 20        .byte $20   ; 
- D 0 - I - 0x011148 04:9138: E5        .byte con_se_cb_1_E0 + $05   ; 
- D 0 - I - 0x011149 04:9139: 70        .byte $70   ; 
- D 0 - I - 0x01114A 04:913A: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 0 - I - 0x01114B 04:913B: 20        .byte $20   ; 
- D 0 - I - 0x01114C 04:913C: 50        .byte $50   ; 
- D 0 - I - 0x01114D 04:913D: 70        .byte $70   ; 
- D 0 - I - 0x01114E 04:913E: B0        .byte $B0   ; 
- D 0 - I - 0x01114F 04:913F: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x011150 04:9140: 20        .byte $20   ; 
- D 0 - I - 0x011151 04:9141: 50        .byte $50   ; 
- D 0 - I - 0x011152 04:9142: 60        .byte $60   ; 
- D 0 - I - 0x011153 04:9143: B0        .byte $B0   ; 
- D 0 - I - 0x011154 04:9144: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x011155 04:9145: 20        .byte $20   ; 
- D 0 - I - 0x011156 04:9146: 50        .byte $50   ; 
- D 0 - I - 0x011157 04:9147: 70        .byte $70   ; 
- D 0 - I - 0x011158 04:9148: EC        .byte con_se_cb_1_EC, $00   ; 
- D 0 - I - 0x01115A 04:914A: D6        .byte con_se_cb_1_D0 + $06, $70, con_9E25_06   ; 
- D 0 - I - 0x01115D 04:914D: 19        .byte $19   ; 
- D 0 - I - 0x01115E 04:914E: ED        .byte con_se_cb_1_ED, $03   ; 
- D 0 - I - 0x011160 04:9150: E5        .byte con_se_cb_1_E0 + $05   ; 
- D 0 - I - 0x011161 04:9151: 82        .byte $82   ; 
- D 0 - I - 0x011162 04:9152: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 0 - I - 0x011163 04:9153: 02        .byte $02   ; 
- D 0 - I - 0x011164 04:9154: 31        .byte $31   ; 
- D 0 - I - 0x011165 04:9155: 72        .byte $72   ; 
- D 0 - I - 0x011166 04:9156: 52        .byte $52   ; 
- D 0 - I - 0x011167 04:9157: 31        .byte $31   ; 
- D 0 - I - 0x011168 04:9158: 22        .byte $22   ; 
- D 0 - I - 0x011169 04:9159: 32        .byte $32   ; 
- D 0 - I - 0x01116A 04:915A: 51        .byte $51   ; 
- D 0 - I - 0x01116B 04:915B: C0        .byte con_se_cb_1_C0 + $00   ; 
- D 0 - I - 0x01116C 04:915C: E5        .byte con_se_cb_1_E0 + $05   ; 
- D 0 - I - 0x01116D 04:915D: A2        .byte $A2   ; 
- D 0 - I - 0x01116E 04:915E: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 0 - I - 0x01116F 04:915F: 01        .byte $01   ; 
- D 0 - I - 0x011170 04:9160: 21        .byte $21   ; 
- D 0 - I - 0x011171 04:9161: ED        .byte con_se_cb_1_ED, $00   ; 
- D 0 - I - 0x011173 04:9163: D6        .byte con_se_cb_1_D0 + $06, $76, con_9E25_03 + $80   ; 
- D 0 - I - 0x011176 04:9166: 19        .byte $19   ; 
- D 0 - I - 0x011177 04:9167: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x011178 04:9168: 02        .byte $02   ; 
- D 0 - I - 0x011179 04:9169: 22        .byte $22   ; 
- D 0 - I - 0x01117A 04:916A: 31        .byte $31   ; 
- D 0 - I - 0x01117B 04:916B: A2        .byte $A2   ; 
- D 0 - I - 0x01117C 04:916C: 82        .byte $82   ; 
- D 0 - I - 0x01117D 04:916D: 71        .byte $71   ; 
- D 0 - I - 0x01117E 04:916E: 52        .byte $52   ; 
- D 0 - I - 0x01117F 04:916F: 82        .byte $82   ; 
- D 0 - I - 0x011180 04:9170: EC        .byte con_se_cb_1_EC, $02   ; 
- D 0 - I - 0x011182 04:9172: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x011183 04:9173: 01        .byte $01   ; 
- D 0 - I - 0x011184 04:9174: 01        .byte $01   ; 
- D 0 - I - 0x011185 04:9175: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x011186 04:9176: B1        .byte $B1   ; 
- D 0 - I - 0x011187 04:9177: 91        .byte $91   ; 
- D 0 - I - 0x011188 04:9178: B1        .byte $B1   ; 
- D 0 - I - 0x011189 04:9179: EC        .byte con_se_cb_1_EC, $00   ; 
- D 0 - I - 0x01118B 04:917B: D6        .byte con_se_cb_1_D0 + $06, $75, con_9E25_03 + $80   ; 
- D 0 - I - 0x01118E 04:917E: 12        .byte $12   ; 
- D 0 - I - 0x01118F 04:917F: E9        .byte con_se_cb_1_E9, $B1   ; 
- D 0 - I - 0x011191 04:9181: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x011192 04:9182: 30        .byte $30   ; 
- D 0 - I - 0x011193 04:9183: 20        .byte $20   ; 
- D 0 - I - 0x011194 04:9184: 00        .byte $00   ; 
- D 0 - I - 0x011195 04:9185: 30        .byte $30   ; 
- D 0 - I - 0x011196 04:9186: 20        .byte $20   ; 
- D 0 - I - 0x011197 04:9187: 00        .byte $00   ; 
- D 0 - I - 0x011198 04:9188: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x011199 04:9189: B0        .byte $B0   ; 
- D 0 - I - 0x01119A 04:918A: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x01119B 04:918B: 20        .byte $20   ; 
- D 0 - I - 0x01119C 04:918C: 00        .byte $00   ; 
- D 0 - I - 0x01119D 04:918D: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x01119E 04:918E: B0        .byte $B0   ; 
- D 0 - I - 0x01119F 04:918F: 70        .byte $70   ; 
- D 0 - I - 0x0111A0 04:9190: B0        .byte $B0   ; 
- D 0 - I - 0x0111A1 04:9191: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x0111A2 04:9192: 00        .byte $00   ; 
- D 0 - I - 0x0111A3 04:9193: 40        .byte $40   ; 
- D 0 - I - 0x0111A4 04:9194: 50        .byte $50   ; 
- D 0 - I - 0x0111A5 04:9195: 70        .byte $70   ; 
- D 0 - I - 0x0111A6 04:9196: 80        .byte $80   ; 
- D 0 - I - 0x0111A7 04:9197: 70        .byte $70   ; 
- D 0 - I - 0x0111A8 04:9198: 50        .byte $50   ; 
- D 0 - I - 0x0111A9 04:9199: 80        .byte $80   ; 
- D 0 - I - 0x0111AA 04:919A: 70        .byte $70   ; 
- D 0 - I - 0x0111AB 04:919B: 50        .byte $50   ; 
- D 0 - I - 0x0111AC 04:919C: 40        .byte $40   ; 
- D 0 - I - 0x0111AD 04:919D: 70        .byte $70   ; 
- D 0 - I - 0x0111AE 04:919E: 50        .byte $50   ; 
- D 0 - I - 0x0111AF 04:919F: 40        .byte $40   ; 
- D 0 - I - 0x0111B0 04:91A0: 00        .byte $00   ; 
- D 0 - I - 0x0111B1 04:91A1: 40        .byte $40   ; 
- D 0 - I - 0x0111B2 04:91A2: 60        .byte $60   ; 
- D 0 - I - 0x0111B3 04:91A3: 90        .byte $90   ; 
- D 0 - I - 0x0111B4 04:91A4: B0        .byte $B0   ; 
- D 0 - I - 0x0111B5 04:91A5: E1        .byte con_se_cb_1_E0 + $01   ; 
- D 0 - I - 0x0111B6 04:91A6: 00        .byte $00   ; 
- D 0 - I - 0x0111B7 04:91A7: E9        .byte con_se_cb_1_E9, $00   ; 
- D 0 - I - 0x0111B9 04:91A9: D1        .byte con_se_cb_1_D0 + $01, $B6, con_9E25_02 + $80   ; 
- D 0 - I - 0x0111BC 04:91AC: 00        .byte $00   ; 
- D 0 - I - 0x0111BD 04:91AD: E0        .byte con_se_cb_1_E0 + $00   ; 
- D 0 - I - 0x0111BE 04:91AE: 74        .byte $74   ; 
- D 0 - I - 0x0111BF 04:91AF: D1        .byte con_se_cb_1_D0 + $01, $B4, con_9E25_00 + $80   ; 
- D 0 - I - 0x0111C2 04:91B2: 00        .byte $00   ; 
- D 0 - I - 0x0111C3 04:91B3: 60        .byte $60   ; 
- D 0 - I - 0x0111C4 04:91B4: 50        .byte $50   ; 
- D 0 - I - 0x0111C5 04:91B5: 40        .byte $40   ; 
- D 0 - I - 0x0111C6 04:91B6: 30        .byte $30   ; 
- D 0 - I - 0x0111C7 04:91B7: 20        .byte $20   ; 
- D 0 - I - 0x0111C8 04:91B8: 10        .byte $10   ; 
- D 0 - I - 0x0111C9 04:91B9: 00        .byte $00   ; 
- D 0 - I - 0x0111CA 04:91BA: C1        .byte con_se_cb_1_C0 + $01   ; 
- D 0 - I - 0x0111CB 04:91BB: F2        .byte con_se_cb_1_F0 + $02   ; 
- D 0 - I - 0x0111CC 04:91BC: E0        .byte con_se_cb_1_E0 + $00   ; 
- D 0 - I - 0x0111CD 04:91BD: 74        .byte $74   ; 
- D 0 - I - 0x0111CE 04:91BE: 60        .byte $60   ; 
- D 0 - I - 0x0111CF 04:91BF: 50        .byte $50   ; 
- D 0 - I - 0x0111D0 04:91C0: 40        .byte $40   ; 
- D 0 - I - 0x0111D1 04:91C1: 30        .byte $30   ; 
- D 0 - I - 0x0111D2 04:91C2: 20        .byte $20   ; 
- D 0 - I - 0x0111D3 04:91C3: 10        .byte $10   ; 
- D 0 - I - 0x0111D4 04:91C4: 00        .byte $00   ; 
- D 0 - I - 0x0111D5 04:91C5: C1        .byte con_se_cb_1_C0 + $01   ; 
- D 0 - I - 0x0111D6 04:91C6: F3        .byte con_se_cb_1_F0 + $03   ; 
- D 0 - I - 0x0111D7 04:91C7: 74        .byte $74   ; 
- D 0 - I - 0x0111D8 04:91C8: 60        .byte $60   ; 
- D 0 - I - 0x0111D9 04:91C9: 50        .byte $50   ; 
- D 0 - I - 0x0111DA 04:91CA: 40        .byte $40   ; 
- D 0 - I - 0x0111DB 04:91CB: 30        .byte $30   ; 
- D 0 - I - 0x0111DC 04:91CC: 20        .byte $20   ; 
- D 0 - I - 0x0111DD 04:91CD: 10        .byte $10   ; 
- D 0 - I - 0x0111DE 04:91CE: 00        .byte $00   ; 
- D 0 - I - 0x0111DF 04:91CF: C1        .byte con_se_cb_1_C0 + $01   ; 
- D 0 - I - 0x0111E0 04:91D0: F4        .byte con_se_cb_1_F0 + $04   ; 
- D 0 - I - 0x0111E1 04:91D1: 74        .byte $74   ; 
- D 0 - I - 0x0111E2 04:91D2: 60        .byte $60   ; 
- D 0 - I - 0x0111E3 04:91D3: 50        .byte $50   ; 
- D 0 - I - 0x0111E4 04:91D4: 40        .byte $40   ; 
- D 0 - I - 0x0111E5 04:91D5: 30        .byte $30   ; 
- D 0 - I - 0x0111E6 04:91D6: 20        .byte $20   ; 
- D 0 - I - 0x0111E7 04:91D7: 10        .byte $10   ; 
- D 0 - I - 0x0111E8 04:91D8: 00        .byte $00   ; 
- D 0 - I - 0x0111E9 04:91D9: C1        .byte con_se_cb_1_C0 + $01   ; 
- D 0 - I - 0x0111EA 04:91DA: 74        .byte $74   ; 
- D 0 - I - 0x0111EB 04:91DB: 60        .byte $60   ; 
- D 0 - I - 0x0111EC 04:91DC: 50        .byte $50   ; 
- D 0 - I - 0x0111ED 04:91DD: 40        .byte $40   ; 
- D 0 - I - 0x0111EE 04:91DE: 30        .byte $30   ; 
- D 0 - I - 0x0111EF 04:91DF: 20        .byte $20   ; 
- D 0 - I - 0x0111F0 04:91E0: 10        .byte $10   ; 
- D 0 - I - 0x0111F1 04:91E1: 00        .byte $00   ; 
- D 0 - I - 0x0111F2 04:91E2: C1        .byte con_se_cb_1_C0 + $01   ; 
- D 0 - I - 0x0111F3 04:91E3: CF        .byte con_se_cb_1_C0 + $0F   ; 
- D 0 - I - 0x0111F4 04:91E4: C9        .byte con_se_cb_1_C0 + $09   ; 
- D 0 - I - 0x0111F5 04:91E5: ED        .byte con_se_cb_1_ED, $00   ; 
- D 0 - I - 0x0111F7 04:91E7: D6        .byte con_se_cb_1_D0 + $06, $37, con_9E25_04 + $80   ; 
- D 0 - I - 0x0111FA 04:91EA: 00        .byte $00   ; 
- D 0 - I - 0x0111FB 04:91EB: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x0111FC 04:91EC: 22        .byte $22   ; 
- D 0 - I - 0x0111FD 04:91ED: D1        .byte con_se_cb_1_D0 + $01, $31, con_9E25_00 + $80   ; 
- D 0 - I - 0x011200 04:91F0: 00        .byte $00   ; 
- D 0 - I - 0x011201 04:91F1: 10        .byte $10   ; 
- D 0 - I - 0x011202 04:91F2: 00        .byte $00   ; 
- D 0 - I - 0x011203 04:91F3: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 0 - I - 0x011204 04:91F4: B0        .byte $B0   ; 
- D 0 - I - 0x011205 04:91F5: A0        .byte $A0   ; 
- D 0 - I - 0x011206 04:91F6: 90        .byte $90   ; 
- D 0 - I - 0x011207 04:91F7: 80        .byte $80   ; 
- D 0 - I - 0x011208 04:91F8: D6        .byte con_se_cb_1_D0 + $06, $37, con_9E25_04 + $80   ; 
- D 0 - I - 0x01120B 04:91FB: 00        .byte $00   ; 
- D 0 - I - 0x01120C 04:91FC: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x01120D 04:91FD: 32        .byte $32   ; 
- D 0 - I - 0x01120E 04:91FE: D1        .byte con_se_cb_1_D0 + $01, $31, con_9E25_00 + $80   ; 
- D 0 - I - 0x011211 04:9201: 00        .byte $00   ; 
- D 0 - I - 0x011212 04:9202: 20        .byte $20   ; 
- D 0 - I - 0x011213 04:9203: 10        .byte $10   ; 
- D 0 - I - 0x011214 04:9204: 00        .byte $00   ; 
- D 0 - I - 0x011215 04:9205: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 0 - I - 0x011216 04:9206: B0        .byte $B0   ; 
- D 0 - I - 0x011217 04:9207: A0        .byte $A0   ; 
- D 0 - I - 0x011218 04:9208: 90        .byte $90   ; 
- D 0 - I - 0x011219 04:9209: D6        .byte con_se_cb_1_D0 + $06, $37, con_9E25_04 + $80   ; 
- D 0 - I - 0x01121C 04:920C: 00        .byte $00   ; 
- D 0 - I - 0x01121D 04:920D: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x01121E 04:920E: 42        .byte $42   ; 
- D 0 - I - 0x01121F 04:920F: D1        .byte con_se_cb_1_D0 + $01, $31, con_9E25_00 + $80   ; 
- D 0 - I - 0x011222 04:9212: 00        .byte $00   ; 
- D 0 - I - 0x011223 04:9213: 30        .byte $30   ; 
- D 0 - I - 0x011224 04:9214: 20        .byte $20   ; 
- D 0 - I - 0x011225 04:9215: 10        .byte $10   ; 
- D 0 - I - 0x011226 04:9216: 00        .byte $00   ; 
- D 0 - I - 0x011227 04:9217: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 0 - I - 0x011228 04:9218: B0        .byte $B0   ; 
- D 0 - I - 0x011229 04:9219: A0        .byte $A0   ; 
- D 0 - I - 0x01122A 04:921A: D6        .byte con_se_cb_1_D0 + $06, $37, con_9E25_04 + $80   ; 
- D 0 - I - 0x01122D 04:921D: 00        .byte $00   ; 
- D 0 - I - 0x01122E 04:921E: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x01122F 04:921F: 52        .byte $52   ; 
- D 0 - I - 0x011230 04:9220: D1        .byte con_se_cb_1_D0 + $01, $31, con_9E25_00 + $80   ; 
- D 0 - I - 0x011233 04:9223: 00        .byte $00   ; 
- D 0 - I - 0x011234 04:9224: 40        .byte $40   ; 
- D 0 - I - 0x011235 04:9225: 30        .byte $30   ; 
- D 0 - I - 0x011236 04:9226: 20        .byte $20   ; 
- D 0 - I - 0x011237 04:9227: 10        .byte $10   ; 
- D 0 - I - 0x011238 04:9228: 00        .byte $00   ; 
- D 0 - I - 0x011239 04:9229: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 0 - I - 0x01123A 04:922A: B0        .byte $B0   ; 
- D 0 - I - 0x01123B 04:922B: FE        .byte con_se_cb_1_FE, $FF   ; 
- D 0 - I - 0x01123D 04:922D: 62 90     .word off_FE_9062



off_ch_01_0x01123F_5C:
- D 0 - I - 0x01123F 04:922F: D7        .byte con_se_cb_1_D0 + $07, $37, con_9E25_06 + $80   ; 
- D 0 - I - 0x011242 04:9232: 19        .byte $19   ; 
- D 0 - I - 0x011243 04:9233: EC        .byte con_se_cb_1_EC, $03   ; 
- D 0 - I - 0x011245 04:9235: E9        .byte con_se_cb_1_E9, $75   ; 
- D 0 - I - 0x011247 04:9237: FB        .byte con_se_cb_1_FB   ; 
- D 0 - I - 0x011248 04:9238: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x011249 04:9239: 30        .byte $30   ; 
- D 0 - I - 0x01124A 04:923A: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x01124B 04:923B: 70        .byte $70   ; 
- D 0 - I - 0x01124C 04:923C: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x01124D 04:923D: 00        .byte $00   ; 
- D 0 - I - 0x01124E 04:923E: 20        .byte $20   ; 
- D 0 - I - 0x01124F 04:923F: FE        .byte con_se_cb_1_FE, $03   ; 
- D 0 - I - 0x011251 04:9241: 30        .byte $30   ; 
- D 0 - I - 0x011252 04:9242: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x011253 04:9243: 70        .byte $70   ; 
- D 0 - I - 0x011254 04:9244: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x011255 04:9245: 00        .byte $00   ; 
- D 0 - I - 0x011256 04:9246: 30        .byte $30   ; 
- D 0 - I - 0x011257 04:9247: FB        .byte con_se_cb_1_FB   ; 
- D 0 - I - 0x011258 04:9248: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x011259 04:9249: 20        .byte $20   ; 
- D 0 - I - 0x01125A 04:924A: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x01125B 04:924B: 50        .byte $50   ; 
- D 0 - I - 0x01125C 04:924C: A0        .byte $A0   ; 
- D 0 - I - 0x01125D 04:924D: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x01125E 04:924E: 00        .byte $00   ; 
- D 0 - I - 0x01125F 04:924F: FE        .byte con_se_cb_1_FE, $03   ; 
- D 0 - I - 0x011261 04:9251: 20        .byte $20   ; 
- D 0 - I - 0x011262 04:9252: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x011263 04:9253: 50        .byte $50   ; 
- D 0 - I - 0x011264 04:9254: A0        .byte $A0   ; 
- D 0 - I - 0x011265 04:9255: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x011266 04:9256: 20        .byte $20   ; 
- D 0 - I - 0x011267 04:9257: FB        .byte con_se_cb_1_FB   ; 
- D 0 - I - 0x011268 04:9258: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x011269 04:9259: 00        .byte $00   ; 
- D 0 - I - 0x01126A 04:925A: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x01126B 04:925B: 30        .byte $30   ; 
- D 0 - I - 0x01126C 04:925C: 80        .byte $80   ; 
- D 0 - I - 0x01126D 04:925D: A0        .byte $A0   ; 
- D 0 - I - 0x01126E 04:925E: FE        .byte con_se_cb_1_FE, $03   ; 
- D 0 - I - 0x011270 04:9260: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x011271 04:9261: 00        .byte $00   ; 
- D 0 - I - 0x011272 04:9262: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x011273 04:9263: 30        .byte $30   ; 
- D 0 - I - 0x011274 04:9264: 80        .byte $80   ; 
- D 0 - I - 0x011275 04:9265: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x011276 04:9266: 00        .byte $00   ; 
- D 0 - I - 0x011277 04:9267: E9        .byte con_se_cb_1_E9, $71   ; 
- D 0 - I - 0x011279 04:9269: EC        .byte con_se_cb_1_EC, $00   ; 
- D 0 - I - 0x01127B 04:926B: E7        .byte con_se_cb_1_E7, con_9E25_04 + $80   ; 
- D 0 - I - 0x01127D 04:926D: E8        .byte con_se_cb_1_E8, $40 + $02   ; 
- D 0 - I - 0x01127F 04:926F: E6        .byte con_se_cb_1_E6, $08   ; 
- D 0 - I - 0x011281 04:9271: 21        .byte $21   ; 
- D 0 - I - 0x011282 04:9272: E6        .byte con_se_cb_1_E6, $09   ; 
- D 0 - I - 0x011284 04:9274: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x011285 04:9275: A1        .byte $A1   ; 
- D 0 - I - 0x011286 04:9276: E6        .byte con_se_cb_1_E6, $0A   ; 
- D 0 - I - 0x011288 04:9278: 51        .byte $51   ; 
- D 0 - I - 0x011289 04:9279: E6        .byte con_se_cb_1_E6, $0B   ; 
- D 0 - I - 0x01128B 04:927B: 31        .byte $31   ; 
- D 0 - I - 0x01128C 04:927C: EB        .byte con_se_cb_1_EB, con_9E7B_50, $32   ; 
- D 0 - I - 0x01128F 04:927F: E6        .byte con_se_cb_1_E6, $0C   ; 
- D 0 - I - 0x011291 04:9281: 28        .byte $28   ; 
- D 0 - I - 0x011292 04:9282: E9        .byte con_se_cb_1_E9, $00   ; 
off_FE_9284:
- D 0 - I - 0x011294 04:9284: D6        .byte con_se_cb_1_D0 + $06, $78, con_9E25_04 + $80   ; 
- D 0 - I - 0x011297 04:9287: 34        .byte $34   ; 
- D 0 - I - 0x011298 04:9288: EB        .byte con_se_cb_1_EB, con_9E7B_50, $41   ; 
- D 0 - I - 0x01129B 04:928B: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x01129C 04:928C: 30        .byte $30   ; 
- D 0 - I - 0x01129D 04:928D: 20        .byte $20   ; 
- D 0 - I - 0x01129E 04:928E: 33        .byte $33   ; 
- D 0 - I - 0x01129F 04:928F: 70        .byte $70   ; 
- D 0 - I - 0x0112A0 04:9290: 60        .byte $60   ; 
- D 0 - I - 0x0112A1 04:9291: 72        .byte $72   ; 
- D 0 - I - 0x0112A2 04:9292: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x0112A3 04:9293: 01        .byte $01   ; 
- D 0 - I - 0x0112A4 04:9294: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x0112A5 04:9295: B0        .byte $B0   ; 
- D 0 - I - 0x0112A6 04:9296: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x0112A7 04:9297: 01        .byte $01   ; 
- D 0 - I - 0x0112A8 04:9298: 30        .byte $30   ; 
- D 0 - I - 0x0112A9 04:9299: 20        .byte $20   ; 
- D 0 - I - 0x0112AA 04:929A: 37        .byte $37   ; 
- D 0 - I - 0x0112AB 04:929B: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x0112AC 04:929C: 71        .byte $71   ; 
- D 0 - I - 0x0112AD 04:929D: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x0112AE 04:929E: 01        .byte $01   ; 
- D 0 - I - 0x0112AF 04:929F: 31        .byte $31   ; 
- D 0 - I - 0x0112B0 04:92A0: 72        .byte $72   ; 
- D 0 - I - 0x0112B1 04:92A1: 68        .byte $68   ; 
- D 0 - I - 0x0112B2 04:92A2: E1        .byte con_se_cb_1_E0 + $01   ; 
- D 0 - I - 0x0112B3 04:92A3: 02        .byte $02   ; 
- D 0 - I - 0x0112B4 04:92A4: E6        .byte con_se_cb_1_E6, $11   ; 
- D 0 - I - 0x0112B6 04:92A6: E8        .byte con_se_cb_1_E8, $70 + $05   ; 
- D 0 - I - 0x0112B8 04:92A8: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x0112B9 04:92A9: 65        .byte $65   ; 
- D 0 - I - 0x0112BA 04:92AA: E6        .byte con_se_cb_1_E6, $06   ; 
- D 0 - I - 0x0112BC 04:92AC: E8        .byte con_se_cb_1_E8, $30 + $04   ; 
- D 0 - I - 0x0112BE 04:92AE: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x0112BF 04:92AF: 50        .byte $50   ; 
- D 0 - I - 0x0112C0 04:92B0: 40        .byte $40   ; 
- D 0 - I - 0x0112C1 04:92B1: 53        .byte $53   ; 
- D 0 - I - 0x0112C2 04:92B2: B0        .byte $B0   ; 
- D 0 - I - 0x0112C3 04:92B3: 90        .byte $90   ; 
- D 0 - I - 0x0112C4 04:92B4: B2        .byte $B2   ; 
- D 0 - I - 0x0112C5 04:92B5: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x0112C6 04:92B6: 21        .byte $21   ; 
- D 0 - I - 0x0112C7 04:92B7: 00        .byte $00   ; 
- D 0 - I - 0x0112C8 04:92B8: 21        .byte $21   ; 
- D 0 - I - 0x0112C9 04:92B9: 50        .byte $50   ; 
- D 0 - I - 0x0112CA 04:92BA: 40        .byte $40   ; 
- D 0 - I - 0x0112CB 04:92BB: 56        .byte $56   ; 
- D 0 - I - 0x0112CC 04:92BC: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x0112CD 04:92BD: 80        .byte $80   ; 
- D 0 - I - 0x0112CE 04:92BE: B0        .byte $B0   ; 
- D 0 - I - 0x0112CF 04:92BF: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x0112D0 04:92C0: 20        .byte $20   ; 
- D 0 - I - 0x0112D1 04:92C1: 50        .byte $50   ; 
- D 0 - I - 0x0112D2 04:92C2: 80        .byte $80   ; 
- D 0 - I - 0x0112D3 04:92C3: 70        .byte $70   ; 
- D 0 - I - 0x0112D4 04:92C4: 50        .byte $50   ; 
- D 0 - I - 0x0112D5 04:92C5: 3B        .byte $3B   ; 
- D 0 - I - 0x0112D6 04:92C6: 53        .byte $53   ; 
- D 0 - I - 0x0112D7 04:92C7: 66        .byte $66   ; 
- D 0 - I - 0x0112D8 04:92C8: 78        .byte $78   ; 
- D 0 - I - 0x0112D9 04:92C9: E8        .byte con_se_cb_1_E8, $10 + $09   ; 
- D 0 - I - 0x0112DB 04:92CB: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x0112DC 04:92CC: 82        .byte $82   ; 
- D 0 - I - 0x0112DD 04:92CD: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x0112DE 04:92CE: 02        .byte $02   ; 
- D 0 - I - 0x0112DF 04:92CF: 31        .byte $31   ; 
- D 0 - I - 0x0112E0 04:92D0: 72        .byte $72   ; 
- D 0 - I - 0x0112E1 04:92D1: 52        .byte $52   ; 
- D 0 - I - 0x0112E2 04:92D2: 31        .byte $31   ; 
- D 0 - I - 0x0112E3 04:92D3: 22        .byte $22   ; 
- D 0 - I - 0x0112E4 04:92D4: 32        .byte $32   ; 
- D 0 - I - 0x0112E5 04:92D5: 51        .byte $51   ; 
- D 0 - I - 0x0112E6 04:92D6: C0        .byte con_se_cb_1_C0 + $00   ; 
- D 0 - I - 0x0112E7 04:92D7: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x0112E8 04:92D8: A2        .byte $A2   ; 
- D 0 - I - 0x0112E9 04:92D9: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x0112EA 04:92DA: 01        .byte $01   ; 
- D 0 - I - 0x0112EB 04:92DB: 21        .byte $21   ; 
- D 0 - I - 0x0112EC 04:92DC: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x0112ED 04:92DD: 82        .byte $82   ; 
- D 0 - I - 0x0112EE 04:92DE: A2        .byte $A2   ; 
- D 0 - I - 0x0112EF 04:92DF: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x0112F0 04:92E0: 01        .byte $01   ; 
- D 0 - I - 0x0112F1 04:92E1: 72        .byte $72   ; 
- D 0 - I - 0x0112F2 04:92E2: 52        .byte $52   ; 
- D 0 - I - 0x0112F3 04:92E3: 31        .byte $31   ; 
- D 0 - I - 0x0112F4 04:92E4: EB        .byte con_se_cb_1_EB, con_9E7B_50, $31   ; 
- D 0 - I - 0x0112F7 04:92E7: E8        .byte con_se_cb_1_E8, $50 + $08   ; 
- D 0 - I - 0x0112F9 04:92E9: 24        .byte $24   ; 
- D 0 - I - 0x0112FA 04:92EA: 30        .byte $30   ; 
- D 0 - I - 0x0112FB 04:92EB: 50        .byte $50   ; 
- D 0 - I - 0x0112FC 04:92EC: 60        .byte $60   ; 
- D 0 - I - 0x0112FD 04:92ED: E8        .byte con_se_cb_1_E8, $40 + $05   ; 
- D 0 - I - 0x0112FF 04:92EF: 77        .byte $77   ; 
- D 0 - I - 0x011300 04:92F0: EB        .byte con_se_cb_1_EB, $00   ; 
- D 0 - I - 0x011302 04:92F2: D6        .byte con_se_cb_1_D0 + $06, $76, con_9E25_02 + $80   ; 
- D 0 - I - 0x011305 04:92F5: 18        .byte $18   ; 
- D 0 - I - 0x011306 04:92F6: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x011307 04:92F7: 70        .byte $70   ; 
- D 0 - I - 0x011308 04:92F8: 50        .byte $50   ; 
- D 0 - I - 0x011309 04:92F9: 30        .byte $30   ; 
- D 0 - I - 0x01130A 04:92FA: 70        .byte $70   ; 
- D 0 - I - 0x01130B 04:92FB: 50        .byte $50   ; 
- D 0 - I - 0x01130C 04:92FC: 30        .byte $30   ; 
- D 0 - I - 0x01130D 04:92FD: 20        .byte $20   ; 
- D 0 - I - 0x01130E 04:92FE: 50        .byte $50   ; 
- D 0 - I - 0x01130F 04:92FF: 30        .byte $30   ; 
- D 0 - I - 0x011310 04:9300: 20        .byte $20   ; 
- D 0 - I - 0x011311 04:9301: 00        .byte $00   ; 
- D 0 - I - 0x011312 04:9302: 20        .byte $20   ; 
- D 0 - I - 0x011313 04:9303: 40        .byte $40   ; 
- D 0 - I - 0x011314 04:9304: 70        .byte $70   ; 
- D 0 - I - 0x011315 04:9305: 80        .byte $80   ; 
- D 0 - I - 0x011316 04:9306: A0        .byte $A0   ; 
- D 0 - I - 0x011317 04:9307: E1        .byte con_se_cb_1_E0 + $01   ; 
- D 0 - I - 0x011318 04:9308: 00        .byte $00   ; 
- D 0 - I - 0x011319 04:9309: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x01131A 04:930A: A0        .byte $A0   ; 
- D 0 - I - 0x01131B 04:930B: 80        .byte $80   ; 
- D 0 - I - 0x01131C 04:930C: E1        .byte con_se_cb_1_E0 + $01   ; 
- D 0 - I - 0x01131D 04:930D: 00        .byte $00   ; 
- D 0 - I - 0x01131E 04:930E: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x01131F 04:930F: A0        .byte $A0   ; 
- D 0 - I - 0x011320 04:9310: 80        .byte $80   ; 
- D 0 - I - 0x011321 04:9311: 70        .byte $70   ; 
- D 0 - I - 0x011322 04:9312: A0        .byte $A0   ; 
- D 0 - I - 0x011323 04:9313: 80        .byte $80   ; 
- D 0 - I - 0x011324 04:9314: 70        .byte $70   ; 
- D 0 - I - 0x011325 04:9315: 50        .byte $50   ; 
- D 0 - I - 0x011326 04:9316: 70        .byte $70   ; 
- D 0 - I - 0x011327 04:9317: 90        .byte $90   ; 
- D 0 - I - 0x011328 04:9318: E1        .byte con_se_cb_1_E0 + $01   ; 
- D 0 - I - 0x011329 04:9319: 00        .byte $00   ; 
- D 0 - I - 0x01132A 04:931A: 20        .byte $20   ; 
- D 0 - I - 0x01132B 04:931B: 30        .byte $30   ; 
- D 0 - I - 0x01132C 04:931C: D6        .byte con_se_cb_1_D0 + $06, $78, con_9E25_04 + $80   ; 
- D 0 - I - 0x01132F 04:931F: 18        .byte $18   ; 
- D 0 - I - 0x011330 04:9320: EC        .byte con_se_cb_1_EC, $02   ; 
- D 0 - I - 0x011332 04:9322: E1        .byte con_se_cb_1_E0 + $01   ; 
- D 0 - I - 0x011333 04:9323: 70        .byte $70   ; 
- D 0 - I - 0x011334 04:9324: 20        .byte $20   ; 
- D 0 - I - 0x011335 04:9325: 00        .byte $00   ; 
- D 0 - I - 0x011336 04:9326: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x011337 04:9327: 70        .byte $70   ; 
- D 0 - I - 0x011338 04:9328: 20        .byte $20   ; 
- D 0 - I - 0x011339 04:9329: 00        .byte $00   ; 
- D 0 - I - 0x01133A 04:932A: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x01133B 04:932B: 70        .byte $70   ; 
- D 0 - I - 0x01133C 04:932C: 20        .byte $20   ; 
- D 0 - I - 0x01133D 04:932D: 00        .byte $00   ; 
- D 0 - I - 0x01133E 04:932E: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 0 - I - 0x01133F 04:932F: 70        .byte $70   ; 
- D 0 - I - 0x011340 04:9330: 20        .byte $20   ; 
- D 0 - I - 0x011341 04:9331: 00        .byte $00   ; 
- D 0 - I - 0x011342 04:9332: E5        .byte con_se_cb_1_E0 + $05   ; 
- D 0 - I - 0x011343 04:9333: 70        .byte $70   ; 
- D 0 - I - 0x011344 04:9334: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 0 - I - 0x011345 04:9335: 00        .byte $00   ; 
- D 0 - I - 0x011346 04:9336: 20        .byte $20   ; 
- D 0 - I - 0x011347 04:9337: 50        .byte $50   ; 
- D 0 - I - 0x011348 04:9338: EC        .byte con_se_cb_1_EC, $00   ; 
- D 0 - I - 0x01134A 04:933A: D6        .byte con_se_cb_1_D0 + $06, $38, con_9E25_04 + $80   ; 
- D 0 - I - 0x01134D 04:933D: 00        .byte $00   ; 
- D 0 - I - 0x01134E 04:933E: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x01134F 04:933F: B2        .byte $B2   ; 
- D 0 - I - 0x011350 04:9340: D1        .byte con_se_cb_1_D0 + $01, $32, con_9E25_00 + $80   ; 
- D 0 - I - 0x011353 04:9343: 00        .byte $00   ; 
- D 0 - I - 0x011354 04:9344: A0        .byte $A0   ; 
- D 0 - I - 0x011355 04:9345: 90        .byte $90   ; 
- D 0 - I - 0x011356 04:9346: 80        .byte $80   ; 
- D 0 - I - 0x011357 04:9347: F1        .byte con_se_cb_1_F0 + $01   ; 
- D 0 - I - 0x011358 04:9348: 70        .byte $70   ; 
- D 0 - I - 0x011359 04:9349: 60        .byte $60   ; 
- D 0 - I - 0x01135A 04:934A: 50        .byte $50   ; 
- D 0 - I - 0x01135B 04:934B: D6        .byte con_se_cb_1_D0 + $06, $38, con_9E25_04 + $80   ; 
- D 0 - I - 0x01135E 04:934E: 00        .byte $00   ; 
- D 0 - I - 0x01135F 04:934F: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x011360 04:9350: 02        .byte $02   ; 
- D 0 - I - 0x011361 04:9351: D1        .byte con_se_cb_1_D0 + $01, $32, con_9E25_00 + $80   ; 
- D 0 - I - 0x011364 04:9354: 00        .byte $00   ; 
- D 0 - I - 0x011365 04:9355: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x011366 04:9356: B0        .byte $B0   ; 
- D 0 - I - 0x011367 04:9357: A0        .byte $A0   ; 
- D 0 - I - 0x011368 04:9358: 90        .byte $90   ; 
- D 0 - I - 0x011369 04:9359: F1        .byte con_se_cb_1_F0 + $01   ; 
- D 0 - I - 0x01136A 04:935A: 80        .byte $80   ; 
- D 0 - I - 0x01136B 04:935B: 70        .byte $70   ; 
- D 0 - I - 0x01136C 04:935C: 60        .byte $60   ; 
- D 0 - I - 0x01136D 04:935D: D6        .byte con_se_cb_1_D0 + $06, $38, con_9E25_04 + $80   ; 
- D 0 - I - 0x011370 04:9360: 00        .byte $00   ; 
- D 0 - I - 0x011371 04:9361: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x011372 04:9362: 12        .byte $12   ; 
- D 0 - I - 0x011373 04:9363: D1        .byte con_se_cb_1_D0 + $01, $32, con_9E25_00 + $80   ; 
- D 0 - I - 0x011376 04:9366: 00        .byte $00   ; 
- D 0 - I - 0x011377 04:9367: 00        .byte $00   ; 
- D 0 - I - 0x011378 04:9368: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x011379 04:9369: B0        .byte $B0   ; 
- D 0 - I - 0x01137A 04:936A: A0        .byte $A0   ; 
- D 0 - I - 0x01137B 04:936B: F1        .byte con_se_cb_1_F0 + $01   ; 
- D 0 - I - 0x01137C 04:936C: 90        .byte $90   ; 
- D 0 - I - 0x01137D 04:936D: 80        .byte $80   ; 
- D 0 - I - 0x01137E 04:936E: 70        .byte $70   ; 
- D 0 - I - 0x01137F 04:936F: D6        .byte con_se_cb_1_D0 + $06, $38, con_9E25_04 + $80   ; 
- D 0 - I - 0x011382 04:9372: 00        .byte $00   ; 
- D 0 - I - 0x011383 04:9373: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x011384 04:9374: 22        .byte $22   ; 
- D 0 - I - 0x011385 04:9375: D1        .byte con_se_cb_1_D0 + $01, $31, con_9E25_00 + $80   ; 
- D 0 - I - 0x011388 04:9378: 00        .byte $00   ; 
- D 0 - I - 0x011389 04:9379: 10        .byte $10   ; 
- D 0 - I - 0x01138A 04:937A: 00        .byte $00   ; 
- D 0 - I - 0x01138B 04:937B: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x01138C 04:937C: B0        .byte $B0   ; 
- D 0 - I - 0x01138D 04:937D: F1        .byte con_se_cb_1_F0 + $01   ; 
- D 0 - I - 0x01138E 04:937E: A0        .byte $A0   ; 
- D 0 - I - 0x01138F 04:937F: 90        .byte $90   ; 
- D 0 - I - 0x011390 04:9380: 80        .byte $80   ; 
- D 0 - I - 0x011391 04:9381: FE        .byte con_se_cb_1_FE, $FF   ; 
- D 0 - I - 0x011393 04:9383: 84 92     .word off_FE_9284



off_ch_02_0x011395_5C:
- D 0 - I - 0x011395 04:9385: D7        .byte con_se_cb_1_D0 + $07, $00   ; 
- D 0 - I - 0x011397 04:9387: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x011398 04:9388: 0E        .byte $0E   ; 
- D 0 - I - 0x011399 04:9389: C0        .byte con_se_cb_1_C0 + $00   ; 
- D 0 - I - 0x01139A 04:938A: 0E        .byte $0E   ; 
- D 0 - I - 0x01139B 04:938B: C0        .byte con_se_cb_1_C0 + $00   ; 
- D 0 - I - 0x01139C 04:938C: 0E        .byte $0E   ; 
- D 0 - I - 0x01139D 04:938D: C0        .byte con_se_cb_1_C0 + $00   ; 
- D 0 - I - 0x01139E 04:938E: E6        .byte con_se_cb_1_E6, $17   ; 
- D 0 - I - 0x0113A0 04:9390: 05        .byte $05   ; 
- D 0 - I - 0x0113A1 04:9391: C1        .byte con_se_cb_1_C0 + $01   ; 
off_FE_9392:
- D 0 - I - 0x0113A2 04:9392: D3        .byte con_se_cb_1_D0 + $03, $06   ; 
- D 0 - I - 0x0113A4 04:9394: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x0113A5 04:9395: 03        .byte $03   ; 
- D 0 - I - 0x0113A6 04:9396: 03        .byte $03   ; 
- D 0 - I - 0x0113A7 04:9397: 05        .byte $05   ; 
- D 0 - I - 0x0113A8 04:9398: D3        .byte con_se_cb_1_D0 + $03, $05   ; 
- D 0 - I - 0x0113AA 04:939A: 03        .byte $03   ; 
- D 0 - I - 0x0113AB 04:939B: 03        .byte $03   ; 
- D 0 - I - 0x0113AC 04:939C: 01        .byte $01   ; 
- D 0 - I - 0x0113AD 04:939D: 03        .byte $03   ; 
- D 0 - I - 0x0113AE 04:939E: D3        .byte con_se_cb_1_D0 + $03, $06   ; 
- D 0 - I - 0x0113B0 04:93A0: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 0 - I - 0x0113B1 04:93A1: 73        .byte $73   ; 
- D 0 - I - 0x0113B2 04:93A2: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x0113B3 04:93A3: 03        .byte $03   ; 
- D 0 - I - 0x0113B4 04:93A4: 03        .byte $03   ; 
- D 0 - I - 0x0113B5 04:93A5: 05        .byte $05   ; 
- D 0 - I - 0x0113B6 04:93A6: D3        .byte con_se_cb_1_D0 + $03, $05   ; 
- D 0 - I - 0x0113B8 04:93A8: 03        .byte $03   ; 
- D 0 - I - 0x0113B9 04:93A9: 03        .byte $03   ; 
- D 0 - I - 0x0113BA 04:93AA: 01        .byte $01   ; 
- D 0 - I - 0x0113BB 04:93AB: 03        .byte $03   ; 
- D 0 - I - 0x0113BC 04:93AC: D3        .byte con_se_cb_1_D0 + $03, $06   ; 
- D 0 - I - 0x0113BE 04:93AE: 33        .byte $33   ; 
- D 0 - I - 0x0113BF 04:93AF: 23        .byte $23   ; 
- D 0 - I - 0x0113C0 04:93B0: 23        .byte $23   ; 
- D 0 - I - 0x0113C1 04:93B1: 25        .byte $25   ; 
- D 0 - I - 0x0113C2 04:93B2: D3        .byte con_se_cb_1_D0 + $03, $05   ; 
- D 0 - I - 0x0113C4 04:93B4: 23        .byte $23   ; 
- D 0 - I - 0x0113C5 04:93B5: 23        .byte $23   ; 
- D 0 - I - 0x0113C6 04:93B6: 21        .byte $21   ; 
- D 0 - I - 0x0113C7 04:93B7: 23        .byte $23   ; 
- D 0 - I - 0x0113C8 04:93B8: D3        .byte con_se_cb_1_D0 + $03, $06   ; 
- D 0 - I - 0x0113CA 04:93BA: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 0 - I - 0x0113CB 04:93BB: 93        .byte $93   ; 
- D 0 - I - 0x0113CC 04:93BC: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x0113CD 04:93BD: 23        .byte $23   ; 
- D 0 - I - 0x0113CE 04:93BE: 23        .byte $23   ; 
- D 0 - I - 0x0113CF 04:93BF: 25        .byte $25   ; 
- D 0 - I - 0x0113D0 04:93C0: D3        .byte con_se_cb_1_D0 + $03, $05   ; 
- D 0 - I - 0x0113D2 04:93C2: 23        .byte $23   ; 
- D 0 - I - 0x0113D3 04:93C3: 21        .byte $21   ; 
- D 0 - I - 0x0113D4 04:93C4: 41        .byte $41   ; 
- D 0 - I - 0x0113D5 04:93C5: 21        .byte $21   ; 
- D 0 - I - 0x0113D6 04:93C6: 51        .byte $51   ; 
- D 0 - I - 0x0113D7 04:93C7: 21        .byte $21   ; 
- D 0 - I - 0x0113D8 04:93C8: 61        .byte $61   ; 
- D 0 - I - 0x0113D9 04:93C9: 21        .byte $21   ; 
- D 0 - I - 0x0113DA 04:93CA: D6        .byte con_se_cb_1_D0 + $06, $0B   ; 
- D 0 - I - 0x0113DC 04:93CC: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 0 - I - 0x0113DD 04:93CD: 71        .byte $71   ; 
- D 0 - I - 0x0113DE 04:93CE: 71        .byte $71   ; 
- D 0 - I - 0x0113DF 04:93CF: 72        .byte $72   ; 
- D 0 - I - 0x0113E0 04:93D0: 71        .byte $71   ; 
- D 0 - I - 0x0113E1 04:93D1: 71        .byte $71   ; 
- D 0 - I - 0x0113E2 04:93D2: 70        .byte $70   ; 
- D 0 - I - 0x0113E3 04:93D3: 71        .byte $71   ; 
- D 0 - I - 0x0113E4 04:93D4: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x0113E5 04:93D5: 21        .byte $21   ; 
- D 0 - I - 0x0113E6 04:93D6: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 0 - I - 0x0113E7 04:93D7: 71        .byte $71   ; 
- D 0 - I - 0x0113E8 04:93D8: 71        .byte $71   ; 
- D 0 - I - 0x0113E9 04:93D9: 72        .byte $72   ; 
- D 0 - I - 0x0113EA 04:93DA: 71        .byte $71   ; 
- D 0 - I - 0x0113EB 04:93DB: 70        .byte $70   ; 
- D 0 - I - 0x0113EC 04:93DC: 90        .byte $90   ; 
- D 0 - I - 0x0113ED 04:93DD: 70        .byte $70   ; 
- D 0 - I - 0x0113EE 04:93DE: A0        .byte $A0   ; 
- D 0 - I - 0x0113EF 04:93DF: 70        .byte $70   ; 
- D 0 - I - 0x0113F0 04:93E0: B0        .byte $B0   ; 
- D 0 - I - 0x0113F1 04:93E1: 70        .byte $70   ; 
- D 0 - I - 0x0113F2 04:93E2: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x0113F3 04:93E3: 01        .byte $01   ; 
- D 0 - I - 0x0113F4 04:93E4: 01        .byte $01   ; 
- D 0 - I - 0x0113F5 04:93E5: 02        .byte $02   ; 
- D 0 - I - 0x0113F6 04:93E6: 01        .byte $01   ; 
- D 0 - I - 0x0113F7 04:93E7: 01        .byte $01   ; 
- D 0 - I - 0x0113F8 04:93E8: 00        .byte $00   ; 
- D 0 - I - 0x0113F9 04:93E9: 00        .byte $00   ; 
- D 0 - I - 0x0113FA 04:93EA: 30        .byte $30   ; 
- D 0 - I - 0x0113FB 04:93EB: 70        .byte $70   ; 
- D 0 - I - 0x0113FC 04:93EC: 00        .byte $00   ; 
- D 0 - I - 0x0113FD 04:93ED: 21        .byte $21   ; 
- D 0 - I - 0x0113FE 04:93EE: 21        .byte $21   ; 
- D 0 - I - 0x0113FF 04:93EF: 21        .byte $21   ; 
- D 0 - I - 0x011400 04:93F0: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 0 - I - 0x011401 04:93F1: 90        .byte $90   ; 
- D 0 - I - 0x011402 04:93F2: 71        .byte $71   ; 
- D 0 - I - 0x011403 04:93F3: D6        .byte con_se_cb_1_D0 + $06, $0D   ; 
- D 0 - I - 0x011405 04:93F5: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x011406 04:93F6: 70        .byte $70   ; 
- D 0 - I - 0x011407 04:93F7: 50        .byte $50   ; 
- D 0 - I - 0x011408 04:93F8: 30        .byte $30   ; 
- D 0 - I - 0x011409 04:93F9: 20        .byte $20   ; 
- D 0 - I - 0x01140A 04:93FA: 00        .byte $00   ; 
- D 0 - I - 0x01140B 04:93FB: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 0 - I - 0x01140C 04:93FC: B0        .byte $B0   ; 
- D 0 - I - 0x01140D 04:93FD: 70        .byte $70   ; 
- D 0 - I - 0x01140E 04:93FE: D6        .byte con_se_cb_1_D0 + $06, $0B   ; 
- D 0 - I - 0x011410 04:9400: E5        .byte con_se_cb_1_E0 + $05   ; 
- D 0 - I - 0x011411 04:9401: 82        .byte $82   ; 
- D 0 - I - 0x011412 04:9402: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 0 - I - 0x011413 04:9403: 02        .byte $02   ; 
- D 0 - I - 0x011414 04:9404: 31        .byte $31   ; 
- D 0 - I - 0x011415 04:9405: 72        .byte $72   ; 
- D 0 - I - 0x011416 04:9406: 52        .byte $52   ; 
- D 0 - I - 0x011417 04:9407: 31        .byte $31   ; 
- D 0 - I - 0x011418 04:9408: 22        .byte $22   ; 
- D 0 - I - 0x011419 04:9409: 32        .byte $32   ; 
- D 0 - I - 0x01141A 04:940A: 51        .byte $51   ; 
- D 0 - I - 0x01141B 04:940B: C0        .byte con_se_cb_1_C0 + $00   ; 
- D 0 - I - 0x01141C 04:940C: E5        .byte con_se_cb_1_E0 + $05   ; 
- D 0 - I - 0x01141D 04:940D: A2        .byte $A2   ; 
- D 0 - I - 0x01141E 04:940E: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 0 - I - 0x01141F 04:940F: 01        .byte $01   ; 
- D 0 - I - 0x011420 04:9410: 21        .byte $21   ; 
- D 0 - I - 0x011421 04:9411: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 0 - I - 0x011422 04:9412: 82        .byte $82   ; 
- D 0 - I - 0x011423 04:9413: A2        .byte $A2   ; 
- D 0 - I - 0x011424 04:9414: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x011425 04:9415: 01        .byte $01   ; 
- D 0 - I - 0x011426 04:9416: 72        .byte $72   ; 
- D 0 - I - 0x011427 04:9417: 52        .byte $52   ; 
- D 0 - I - 0x011428 04:9418: 31        .byte $31   ; 
- D 0 - I - 0x011429 04:9419: 22        .byte $22   ; 
- D 0 - I - 0x01142A 04:941A: 22        .byte $22   ; 
- D 0 - I - 0x01142B 04:941B: 21        .byte $21   ; 
- D 0 - I - 0x01142C 04:941C: D6        .byte con_se_cb_1_D0 + $06, $0E   ; 
- D 0 - I - 0x01142E 04:941E: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 0 - I - 0x01142F 04:941F: 70        .byte $70   ; 
- D 0 - I - 0x011430 04:9420: 90        .byte $90   ; 
- D 0 - I - 0x011431 04:9421: B0        .byte $B0   ; 
- D 0 - I - 0x011432 04:9422: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x011433 04:9423: 00        .byte $00   ; 
- D 0 - I - 0x011434 04:9424: 20        .byte $20   ; 
- D 0 - I - 0x011435 04:9425: 30        .byte $30   ; 
- D 0 - I - 0x011436 04:9426: 50        .byte $50   ; 
- D 0 - I - 0x011437 04:9427: 70        .byte $70   ; 
- D 0 - I - 0x011438 04:9428: D3        .byte con_se_cb_1_D0 + $03, $00   ; 
- D 0 - I - 0x01143A 04:942A: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x01143B 04:942B: 06        .byte $06   ; 
- D 0 - I - 0x01143C 04:942C: C0        .byte con_se_cb_1_C0 + $00   ; 
- D 0 - I - 0x01143D 04:942D: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 0 - I - 0x01143E 04:942E: A6        .byte $A6   ; 
- D 0 - I - 0x01143F 04:942F: C0        .byte con_se_cb_1_C0 + $00   ; 
- D 0 - I - 0x011440 04:9430: 86        .byte $86   ; 
- D 0 - I - 0x011441 04:9431: C0        .byte con_se_cb_1_C0 + $00   ; 
- D 0 - I - 0x011442 04:9432: 76        .byte $76   ; 
- D 0 - I - 0x011443 04:9433: C0        .byte con_se_cb_1_C0 + $00   ; 
- D 0 - I - 0x011444 04:9434: 56        .byte $56   ; 
- D 0 - I - 0x011445 04:9435: C0        .byte con_se_cb_1_C0 + $00   ; 
- D 0 - I - 0x011446 04:9436: 46        .byte $46   ; 
- D 0 - I - 0x011447 04:9437: C0        .byte con_se_cb_1_C0 + $00   ; 
- D 0 - I - 0x011448 04:9438: 56        .byte $56   ; 
- D 0 - I - 0x011449 04:9439: C0        .byte con_se_cb_1_C0 + $00   ; 
- D 0 - I - 0x01144A 04:943A: 66        .byte $66   ; 
- D 0 - I - 0x01144B 04:943B: C0        .byte con_se_cb_1_C0 + $00   ; 
- D 0 - I - 0x01144C 04:943C: D6        .byte con_se_cb_1_D0 + $06, $10   ; 
- D 0 - I - 0x01144E 04:943E: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 0 - I - 0x01144F 04:943F: 70        .byte $70   ; 
- D 0 - I - 0x011450 04:9440: 70        .byte $70   ; 
- D 0 - I - 0x011451 04:9441: 70        .byte $70   ; 
- D 0 - I - 0x011452 04:9442: 70        .byte $70   ; 
- D 0 - I - 0x011453 04:9443: F1        .byte con_se_cb_1_F0 + $01   ; 
- D 0 - I - 0x011454 04:9444: 70        .byte $70   ; 
- D 0 - I - 0x011455 04:9445: 71        .byte $71   ; 
- D 0 - I - 0x011456 04:9446: F0        .byte con_se_cb_1_F0 + $00   ; 
- D 0 - I - 0x011457 04:9447: 70        .byte $70   ; 
- D 0 - I - 0x011458 04:9448: 70        .byte $70   ; 
- D 0 - I - 0x011459 04:9449: F1        .byte con_se_cb_1_F0 + $01   ; 
- D 0 - I - 0x01145A 04:944A: 70        .byte $70   ; 
- D 0 - I - 0x01145B 04:944B: F0        .byte con_se_cb_1_F0 + $00   ; 
- D 0 - I - 0x01145C 04:944C: D6        .byte con_se_cb_1_D0 + $06, $00   ; 
- D 0 - I - 0x01145E 04:944E: 72        .byte $72   ; 
- D 0 - I - 0x01145F 04:944F: D1        .byte con_se_cb_1_D0 + $01, $00   ; 
- D 0 - I - 0x011461 04:9451: 60        .byte $60   ; 
- D 0 - I - 0x011462 04:9452: 50        .byte $50   ; 
- D 0 - I - 0x011463 04:9453: 40        .byte $40   ; 
- D 0 - I - 0x011464 04:9454: 30        .byte $30   ; 
- D 0 - I - 0x011465 04:9455: C1        .byte con_se_cb_1_C0 + $01   ; 
- D 0 - I - 0x011466 04:9456: D6        .byte con_se_cb_1_D0 + $06, $00   ; 
- D 0 - I - 0x011468 04:9458: 92        .byte $92   ; 
- D 0 - I - 0x011469 04:9459: D1        .byte con_se_cb_1_D0 + $01, $00   ; 
- D 0 - I - 0x01146B 04:945B: 80        .byte $80   ; 
- D 0 - I - 0x01146C 04:945C: 70        .byte $70   ; 
- D 0 - I - 0x01146D 04:945D: 60        .byte $60   ; 
- D 0 - I - 0x01146E 04:945E: 50        .byte $50   ; 
- D 0 - I - 0x01146F 04:945F: C1        .byte con_se_cb_1_C0 + $01   ; 
- D 0 - I - 0x011470 04:9460: D6        .byte con_se_cb_1_D0 + $06, $00   ; 
- D 0 - I - 0x011472 04:9462: A2        .byte $A2   ; 
- D 0 - I - 0x011473 04:9463: D1        .byte con_se_cb_1_D0 + $01, $00   ; 
- D 0 - I - 0x011475 04:9465: 90        .byte $90   ; 
- D 0 - I - 0x011476 04:9466: 80        .byte $80   ; 
- D 0 - I - 0x011477 04:9467: 70        .byte $70   ; 
- D 0 - I - 0x011478 04:9468: 60        .byte $60   ; 
- D 0 - I - 0x011479 04:9469: C1        .byte con_se_cb_1_C0 + $01   ; 
- D 0 - I - 0x01147A 04:946A: D6        .byte con_se_cb_1_D0 + $06, $00   ; 
- D 0 - I - 0x01147C 04:946C: B2        .byte $B2   ; 
- D 0 - I - 0x01147D 04:946D: D1        .byte con_se_cb_1_D0 + $01, $00   ; 
- D 0 - I - 0x01147F 04:946F: A0        .byte $A0   ; 
- D 0 - I - 0x011480 04:9470: 90        .byte $90   ; 
- D 0 - I - 0x011481 04:9471: 80        .byte $80   ; 
- D 0 - I - 0x011482 04:9472: 70        .byte $70   ; 
- D 0 - I - 0x011483 04:9473: C1        .byte con_se_cb_1_C0 + $01   ; 
- D 0 - I - 0x011484 04:9474: FE        .byte con_se_cb_1_FE, $FF   ; 
- D 0 - I - 0x011486 04:9476: 92 93     .word off_FE_9392



off_ch_05_0x011488_5C:
- D 0 - I - 0x011488 04:9478: D1        .byte $D1   ; 
- D 0 - I - 0x011489 04:9479: FB        .byte con_se_cb_1_FB   ; 
- D 0 - I - 0x01148A 04:947A: B0        .byte $B0   ; 
- D 0 - I - 0x01148B 04:947B: 13        .byte $13   ; 
- D 0 - I - 0x01148C 04:947C: 14        .byte $14   ; 
- D 0 - I - 0x01148D 04:947D: 13        .byte $13   ; 
- D 0 - I - 0x01148E 04:947E: D7        .byte $D7   ; 
- D 0 - I - 0x01148F 04:947F: 21        .byte $21   ; 
- D 0 - I - 0x011490 04:9480: 13        .byte $13   ; 
- D 0 - I - 0x011491 04:9481: 13        .byte $13   ; 
- D 0 - I - 0x011492 04:9482: 13        .byte $13   ; 
- D 0 - I - 0x011493 04:9483: D1        .byte $D1   ; 
- D 0 - I - 0x011494 04:9484: FE        .byte con_se_cb_1_FE, $03   ; 
- D 0 - I - 0x011496 04:9486: B0        .byte $B0   ; 
- D 0 - I - 0x011497 04:9487: 13        .byte $13   ; 
- D 0 - I - 0x011498 04:9488: 14        .byte $14   ; 
- D 0 - I - 0x011499 04:9489: 15        .byte $15   ; 
- D 0 - I - 0x01149A 04:948A: D9        .byte $D9   ; 
- D 0 - I - 0x01149B 04:948B: 21        .byte $21   ; 
- D 0 - I - 0x01149C 04:948C: DA        .byte $DA   ; 
- D 0 - I - 0x01149D 04:948D: 11        .byte $11   ; 
- D 0 - I - 0x01149E 04:948E: DB        .byte $DB   ; 
- D 0 - I - 0x01149F 04:948F: C1        .byte $C1   ; 
- D 0 - I - 0x0114A0 04:9490: DC        .byte $DC   ; 
- D 0 - I - 0x0114A1 04:9491: 14        .byte $14   ; 
- D 0 - I - 0x0114A2 04:9492: 23        .byte $23   ; 
off_FE_9493:
- D 0 - I - 0x0114A3 04:9493: D1        .byte $D1   ; 
- D 0 - I - 0x0114A4 04:9494: FB        .byte con_se_cb_1_FB   ; 
- D 0 - I - 0x0114A5 04:9495: B0        .byte $B0   ; 
- D 0 - I - 0x0114A6 04:9496: 1A        .byte $1A   ; 
- D 0 - I - 0x0114A7 04:9497: B0        .byte $B0   ; 
- D 0 - I - 0x0114A8 04:9498: 1A        .byte $1A   ; 
- D 0 - I - 0x0114A9 04:9499: B0        .byte $B0   ; 
- D 0 - I - 0x0114AA 04:949A: 1A        .byte $1A   ; 
- D 0 - I - 0x0114AB 04:949B: 15        .byte $15   ; 
- D 0 - I - 0x0114AC 04:949C: B5        .byte $B5   ; 
- D 0 - I - 0x0114AD 04:949D: 15        .byte $15   ; 
- D 0 - I - 0x0114AE 04:949E: B5        .byte $B5   ; 
- D 0 - I - 0x0114AF 04:949F: 15        .byte $15   ; 
- D 0 - I - 0x0114B0 04:94A0: B5        .byte $B5   ; 
- D 0 - I - 0x0114B1 04:94A1: B0        .byte $B0   ; 
- D 0 - I - 0x0114B2 04:94A2: 1A        .byte $1A   ; 
- D 0 - I - 0x0114B3 04:94A3: AB        .byte $AB   ; 
- D 0 - I - 0x0114B4 04:94A4: FE        .byte con_se_cb_1_FE, $04   ; 
- D 0 - I - 0x0114B6 04:94A6: FB        .byte con_se_cb_1_FB   ; 
- D 0 - I - 0x0114B7 04:94A7: B0        .byte $B0   ; 
- D 0 - I - 0x0114B8 04:94A8: 1A        .byte $1A   ; 
- D 0 - I - 0x0114B9 04:94A9: B0        .byte $B0   ; 
- D 0 - I - 0x0114BA 04:94AA: 1A        .byte $1A   ; 
- D 0 - I - 0x0114BB 04:94AB: B0        .byte $B0   ; 
- D 0 - I - 0x0114BC 04:94AC: 1A        .byte $1A   ; 
- D 0 - I - 0x0114BD 04:94AD: 15        .byte $15   ; 
- D 0 - I - 0x0114BE 04:94AE: B5        .byte $B5   ; 
- D 0 - I - 0x0114BF 04:94AF: 15        .byte $15   ; 
- D 0 - I - 0x0114C0 04:94B0: B5        .byte $B5   ; 
- D 0 - I - 0x0114C1 04:94B1: 15        .byte $15   ; 
- D 0 - I - 0x0114C2 04:94B2: B5        .byte $B5   ; 
- D 0 - I - 0x0114C3 04:94B3: B0        .byte $B0   ; 
- D 0 - I - 0x0114C4 04:94B4: 1A        .byte $1A   ; 
- D 0 - I - 0x0114C5 04:94B5: AB        .byte $AB   ; 
- D 0 - I - 0x0114C6 04:94B6: FE        .byte con_se_cb_1_FE, $03   ; 
- D 0 - I - 0x0114C8 04:94B8: B0        .byte $B0   ; 
- D 0 - I - 0x0114C9 04:94B9: 1A        .byte $1A   ; 
- D 0 - I - 0x0114CA 04:94BA: B0        .byte $B0   ; 
- D 0 - I - 0x0114CB 04:94BB: 1A        .byte $1A   ; 
- D 0 - I - 0x0114CC 04:94BC: B0        .byte $B0   ; 
- D 0 - I - 0x0114CD 04:94BD: 1A        .byte $1A   ; 
- D 0 - I - 0x0114CE 04:94BE: 15        .byte $15   ; 
- D 0 - I - 0x0114CF 04:94BF: B5        .byte $B5   ; 
- D 0 - I - 0x0114D0 04:94C0: 15        .byte $15   ; 
- D 0 - I - 0x0114D1 04:94C1: B5        .byte $B5   ; 
- D 0 - I - 0x0114D2 04:94C2: 15        .byte $15   ; 
- D 0 - I - 0x0114D3 04:94C3: B5        .byte $B5   ; 
- D 0 - I - 0x0114D4 04:94C4: B0        .byte $B0   ; 
- D 0 - I - 0x0114D5 04:94C5: 1A        .byte $1A   ; 
- D 0 - I - 0x0114D6 04:94C6: A5        .byte $A5   ; 
- D 0 - I - 0x0114D7 04:94C7: A5        .byte $A5   ; 
- D 0 - I - 0x0114D8 04:94C8: FB        .byte con_se_cb_1_FB   ; 
- D 0 - I - 0x0114D9 04:94C9: B0        .byte $B0   ; 
- D 0 - I - 0x0114DA 04:94CA: 1A        .byte $1A   ; 
- D 0 - I - 0x0114DB 04:94CB: 15        .byte $15   ; 
- D 0 - I - 0x0114DC 04:94CC: 15        .byte $15   ; 
- D 0 - I - 0x0114DD 04:94CD: FE        .byte con_se_cb_1_FE, $0B   ; 
- D 0 - I - 0x0114DF 04:94CF: A5        .byte $A5   ; 
- D 0 - I - 0x0114E0 04:94D0: B5        .byte $B5   ; 
- D 0 - I - 0x0114E1 04:94D1: A5        .byte $A5   ; 
- D 0 - I - 0x0114E2 04:94D2: A5        .byte $A5   ; 
- D 0 - I - 0x0114E3 04:94D3: AB        .byte $AB   ; 
- D 0 - I - 0x0114E4 04:94D4: 15        .byte $15   ; 
- D 0 - I - 0x0114E5 04:94D5: 15        .byte $15   ; 
- D 0 - I - 0x0114E6 04:94D6: B5        .byte $B5   ; 
- D 0 - I - 0x0114E7 04:94D7: A5        .byte $A5   ; 
- D 0 - I - 0x0114E8 04:94D8: A5        .byte $A5   ; 
- D 0 - I - 0x0114E9 04:94D9: A5        .byte $A5   ; 
- D 0 - I - 0x0114EA 04:94DA: B5        .byte $B5   ; 
- D 0 - I - 0x0114EB 04:94DB: A5        .byte $A5   ; 
- D 0 - I - 0x0114EC 04:94DC: A5        .byte $A5   ; 
- D 0 - I - 0x0114ED 04:94DD: A5        .byte $A5   ; 
- D 0 - I - 0x0114EE 04:94DE: A5        .byte $A5   ; 
- D 0 - I - 0x0114EF 04:94DF: A5        .byte $A5   ; 
- D 0 - I - 0x0114F0 04:94E0: A5        .byte $A5   ; 
- D 0 - I - 0x0114F1 04:94E1: A5        .byte $A5   ; 
- D 0 - I - 0x0114F2 04:94E2: FB        .byte con_se_cb_1_FB   ; 
- D 0 - I - 0x0114F3 04:94E3: A0        .byte $A0   ; 
- D 0 - I - 0x0114F4 04:94E4: 2A        .byte $2A   ; 
- D 0 - I - 0x0114F5 04:94E5: CB        .byte $CB   ; 
- D 0 - I - 0x0114F6 04:94E6: FE        .byte con_se_cb_1_FE, $02   ; 
- D 0 - I - 0x0114F8 04:94E8: A0        .byte $A0   ; 
- D 0 - I - 0x0114F9 04:94E9: 2A        .byte $2A   ; 
- D 0 - I - 0x0114FA 04:94EA: B5        .byte $B5   ; 
- D 0 - I - 0x0114FB 04:94EB: B5        .byte $B5   ; 
- D 0 - I - 0x0114FC 04:94EC: A0        .byte $A0   ; 
- D 0 - I - 0x0114FD 04:94ED: 24        .byte $24   ; 
- D 0 - I - 0x0114FE 04:94EE: B5        .byte $B5   ; 
- D 0 - I - 0x0114FF 04:94EF: A5        .byte $A5   ; 
- D 0 - I - 0x011500 04:94F0: A5        .byte $A5   ; 
- D 0 - I - 0x011501 04:94F1: A0        .byte $A0   ; 
- D 0 - I - 0x011502 04:94F2: 2A        .byte $2A   ; 
- D 0 - I - 0x011503 04:94F3: CB        .byte $CB   ; 
- D 0 - I - 0x011504 04:94F4: FB        .byte con_se_cb_1_FB   ; 
- D 0 - I - 0x011505 04:94F5: A0        .byte $A0   ; 
- D 0 - I - 0x011506 04:94F6: 2A        .byte $2A   ; 
- D 0 - I - 0x011507 04:94F7: B5        .byte $B5   ; 
- D 0 - I - 0x011508 04:94F8: B5        .byte $B5   ; 
- D 0 - I - 0x011509 04:94F9: FE        .byte con_se_cb_1_FE, $02   ; 
- D 0 - I - 0x01150B 04:94FB: A0        .byte $A0   ; 
- D 0 - I - 0x01150C 04:94FC: 24        .byte $24   ; 
- D 0 - I - 0x01150D 04:94FD: A5        .byte $A5   ; 
- D 0 - I - 0x01150E 04:94FE: A5        .byte $A5   ; 
- D 0 - I - 0x01150F 04:94FF: A5        .byte $A5   ; 
- D 0 - I - 0x011510 04:9500: B0        .byte $B0   ; 
- D 0 - I - 0x011511 04:9501: 24        .byte $24   ; 
- D 0 - I - 0x011512 04:9502: B5        .byte $B5   ; 
- D 0 - I - 0x011513 04:9503: B5        .byte $B5   ; 
- D 0 - I - 0x011514 04:9504: B5        .byte $B5   ; 
- D 0 - I - 0x011515 04:9505: AB        .byte $AB   ; 
- D 0 - I - 0x011516 04:9506: B5        .byte $B5   ; 
- D 0 - I - 0x011517 04:9507: B5        .byte $B5   ; 
- D 0 - I - 0x011518 04:9508: 15        .byte $15   ; 
- D 0 - I - 0x011519 04:9509: B5        .byte $B5   ; 
- D 0 - I - 0x01151A 04:950A: B5        .byte $B5   ; 
- D 0 - I - 0x01151B 04:950B: B5        .byte $B5   ; 
- D 0 - I - 0x01151C 04:950C: A5        .byte $A5   ; 
- D 0 - I - 0x01151D 04:950D: B5        .byte $B5   ; 
- D 0 - I - 0x01151E 04:950E: A5        .byte $A5   ; 
- D 0 - I - 0x01151F 04:950F: A5        .byte $A5   ; 
- D 0 - I - 0x011520 04:9510: A0        .byte $A0   ; 
- D 0 - I - 0x011521 04:9511: 2A        .byte $2A   ; 
- D 0 - I - 0x011522 04:9512: CB        .byte $CB   ; 
- D 0 - I - 0x011523 04:9513: A0        .byte $A0   ; 
- D 0 - I - 0x011524 04:9514: 2A        .byte $2A   ; 
- D 0 - I - 0x011525 04:9515: CB        .byte $CB   ; 
- D 0 - I - 0x011526 04:9516: B0        .byte $B0   ; 
- D 0 - I - 0x011527 04:9517: 2A        .byte $2A   ; 
- D 0 - I - 0x011528 04:9518: A5        .byte $A5   ; 
- D 0 - I - 0x011529 04:9519: A5        .byte $A5   ; 
- D 0 - I - 0x01152A 04:951A: A5        .byte $A5   ; 
- D 0 - I - 0x01152B 04:951B: A5        .byte $A5   ; 
- D 0 - I - 0x01152C 04:951C: A5        .byte $A5   ; 
- D 0 - I - 0x01152D 04:951D: A5        .byte $A5   ; 
- D 0 - I - 0x01152E 04:951E: FE        .byte con_se_cb_1_FE, $FF   ; 
- D 0 - I - 0x011530 04:9520: 93 94     .word off_FE_9493



off_ch_00_0x011532_5E:
off_FE_9522:
- D 0 - I - 0x011532 04:9522: D1        .byte con_se_cb_1_D0 + $01, $39, con_9E25_04 + $80   ; 
- D 0 - I - 0x011535 04:9525: 12        .byte $12   ; 
- D 0 - I - 0x011536 04:9526: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x011537 04:9527: 59        .byte $59   ; 
- D 0 - I - 0x011538 04:9528: D1        .byte con_se_cb_1_D0 + $01, $34, con_9E25_00 + $80   ; 
- D 0 - I - 0x01153B 04:952B: 00        .byte $00   ; 
- D 0 - I - 0x01153C 04:952C: 40        .byte $40   ; 
- D 0 - I - 0x01153D 04:952D: 30        .byte $30   ; 
- D 0 - I - 0x01153E 04:952E: 20        .byte $20   ; 
- D 0 - I - 0x01153F 04:952F: F1        .byte con_se_cb_1_F0 + $01   ; 
- D 0 - I - 0x011540 04:9530: 10        .byte $10   ; 
- D 0 - I - 0x011541 04:9531: 00        .byte $00   ; 
- D 0 - I - 0x011542 04:9532: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 0 - I - 0x011543 04:9533: B0        .byte $B0   ; 
- D 0 - I - 0x011544 04:9534: A0        .byte $A0   ; 
- D 0 - I - 0x011545 04:9535: F2        .byte con_se_cb_1_F0 + $02   ; 
- D 0 - I - 0x011546 04:9536: 90        .byte $90   ; 
- D 0 - I - 0x011547 04:9537: 80        .byte $80   ; 
- D 0 - I - 0x011548 04:9538: 70        .byte $70   ; 
- D 0 - I - 0x011549 04:9539: E9        .byte con_se_cb_1_E9, $B0   ; 
- D 0 - I - 0x01154B 04:953B: F2        .byte con_se_cb_1_F0 + $02   ; 
- D 0 - I - 0x01154C 04:953C: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x01154D 04:953D: 29        .byte $29   ; 
- D 0 - I - 0x01154E 04:953E: 10        .byte $10   ; 
- D 0 - I - 0x01154F 04:953F: 00        .byte $00   ; 
- D 0 - I - 0x011550 04:9540: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x011551 04:9541: F2        .byte con_se_cb_1_F0 + $02   ; 
- D 0 - I - 0x011552 04:9542: B0        .byte $B0   ; 
- D 0 - I - 0x011553 04:9543: A0        .byte $A0   ; 
- D 0 - I - 0x011554 04:9544: F3        .byte con_se_cb_1_F0 + $03   ; 
- D 0 - I - 0x011555 04:9545: 90        .byte $90   ; 
- D 0 - I - 0x011556 04:9546: 80        .byte $80   ; 
- D 0 - I - 0x011557 04:9547: 70        .byte $70   ; 
- D 0 - I - 0x011558 04:9548: 60        .byte $60   ; 
- D 0 - I - 0x011559 04:9549: 50        .byte $50   ; 
- D 0 - I - 0x01155A 04:954A: 40        .byte $40   ; 
- D 0 - I - 0x01155B 04:954B: D4        .byte con_se_cb_1_D0 + $04, $B1, con_9E25_00 + $80   ; 
- D 0 - I - 0x01155E 04:954E: 00        .byte $00   ; 
- D 0 - I - 0x01155F 04:954F: ED        .byte con_se_cb_1_ED, $01   ; 
- D 0 - I - 0x011561 04:9551: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x011562 04:9552: 50        .byte $50   ; 
- D 0 - I - 0x011563 04:9553: 60        .byte $60   ; 
- D 0 - I - 0x011564 04:9554: 70        .byte $70   ; 
- D 0 - I - 0x011565 04:9555: 80        .byte $80   ; 
- D 0 - I - 0x011566 04:9556: 90        .byte $90   ; 
- D 0 - I - 0x011567 04:9557: A0        .byte $A0   ; 
- D 0 - I - 0x011568 04:9558: B0        .byte $B0   ; 
- D 0 - I - 0x011569 04:9559: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x01156A 04:955A: 00        .byte $00   ; 
- D 0 - I - 0x01156B 04:955B: 10        .byte $10   ; 
- D 0 - I - 0x01156C 04:955C: 2F        .byte $2F   ; 
- D 0 - I - 0x01156D 04:955D: 2F        .byte $2F   ; 
- D 0 - I - 0x01156E 04:955E: 23        .byte $23   ; 
- D 0 - I - 0x01156F 04:955F: DA        .byte con_se_cb_1_D0 + $0A, $36, con_9E25_03 + $80   ; 
- D 0 - I - 0x011572 04:9562: 17        .byte $17   ; 
- D 0 - I - 0x011573 04:9563: EC        .byte con_se_cb_1_EC, $01   ; 
- D 0 - I - 0x011575 04:9565: E9        .byte con_se_cb_1_E9, $71   ; 
- D 0 - I - 0x011577 04:9567: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x011578 04:9568: 90        .byte $90   ; 
- D 0 - I - 0x011579 04:9569: 50        .byte $50   ; 
- D 0 - I - 0x01157A 04:956A: 90        .byte $90   ; 
- D 0 - I - 0x01157B 04:956B: FB        .byte con_se_cb_1_FB   ; 
- D 0 - I - 0x01157C 04:956C: 80        .byte $80   ; 
- D 0 - I - 0x01157D 04:956D: 40        .byte $40   ; 
- D 0 - I - 0x01157E 04:956E: FE        .byte con_se_cb_1_FE, $09   ; 
- D 0 - I - 0x011580 04:9570: 80        .byte $80   ; 
- D 0 - I - 0x011581 04:9571: 90        .byte $90   ; 
- D 0 - I - 0x011582 04:9572: 50        .byte $50   ; 
- D 0 - I - 0x011583 04:9573: 90        .byte $90   ; 
- D 0 - I - 0x011584 04:9574: 80        .byte $80   ; 
- D 0 - I - 0x011585 04:9575: 40        .byte $40   ; 
- D 0 - I - 0x011586 04:9576: 80        .byte $80   ; 
- D 0 - I - 0x011587 04:9577: 70        .byte $70   ; 
- D 0 - I - 0x011588 04:9578: 30        .byte $30   ; 
- D 0 - I - 0x011589 04:9579: 70        .byte $70   ; 
- D 0 - I - 0x01158A 04:957A: FB        .byte con_se_cb_1_FB   ; 
- D 0 - I - 0x01158B 04:957B: 50        .byte $50   ; 
- D 0 - I - 0x01158C 04:957C: 20        .byte $20   ; 
- D 0 - I - 0x01158D 04:957D: FE        .byte con_se_cb_1_FE, $06   ; 
- D 0 - I - 0x01158F 04:957F: 50        .byte $50   ; 
- D 0 - I - 0x011590 04:9580: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x011591 04:9581: 50        .byte $50   ; 
- D 0 - I - 0x011592 04:9582: 00        .byte $00   ; 
- D 0 - I - 0x011593 04:9583: 50        .byte $50   ; 
- D 0 - I - 0x011594 04:9584: FB        .byte con_se_cb_1_FB   ; 
- D 0 - I - 0x011595 04:9585: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x011596 04:9586: 40        .byte $40   ; 
- D 0 - I - 0x011597 04:9587: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x011598 04:9588: B0        .byte $B0   ; 
- D 0 - I - 0x011599 04:9589: FE        .byte con_se_cb_1_FE, $09   ; 
- D 0 - I - 0x01159B 04:958B: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x01159C 04:958C: 40        .byte $40   ; 
- D 0 - I - 0x01159D 04:958D: 50        .byte $50   ; 
- D 0 - I - 0x01159E 04:958E: 00        .byte $00   ; 
- D 0 - I - 0x01159F 04:958F: 50        .byte $50   ; 
- D 0 - I - 0x0115A0 04:9590: 40        .byte $40   ; 
- D 0 - I - 0x0115A1 04:9591: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x0115A2 04:9592: B0        .byte $B0   ; 
- D 0 - I - 0x0115A3 04:9593: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x0115A4 04:9594: 40        .byte $40   ; 
- D 0 - I - 0x0115A5 04:9595: 30        .byte $30   ; 
- D 0 - I - 0x0115A6 04:9596: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x0115A7 04:9597: A0        .byte $A0   ; 
- D 0 - I - 0x0115A8 04:9598: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x0115A9 04:9599: 30        .byte $30   ; 
- D 0 - I - 0x0115AA 04:959A: FB        .byte con_se_cb_1_FB   ; 
- D 0 - I - 0x0115AB 04:959B: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x0115AC 04:959C: 20        .byte $20   ; 
- D 0 - I - 0x0115AD 04:959D: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x0115AE 04:959E: 90        .byte $90   ; 
- D 0 - I - 0x0115AF 04:959F: FE        .byte con_se_cb_1_FE, $06   ; 
- D 0 - I - 0x0115B1 04:95A1: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x0115B2 04:95A2: 20        .byte $20   ; 
- D 0 - I - 0x0115B3 04:95A3: EC        .byte con_se_cb_1_EC, $00   ; 
- D 0 - I - 0x0115B5 04:95A5: E9        .byte con_se_cb_1_E9, $00   ; 
- D 0 - I - 0x0115B7 04:95A7: D1        .byte con_se_cb_1_D0 + $01, $39, con_9E25_04 + $80   ; 
- D 0 - I - 0x0115BA 04:95AA: 12        .byte $12   ; 
- D 0 - I - 0x0115BB 04:95AB: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x0115BC 04:95AC: 49        .byte $49   ; 
- D 0 - I - 0x0115BD 04:95AD: D1        .byte con_se_cb_1_D0 + $01, $34, con_9E25_00 + $80   ; 
- D 0 - I - 0x0115C0 04:95B0: 00        .byte $00   ; 
- D 0 - I - 0x0115C1 04:95B1: 30        .byte $30   ; 
- D 0 - I - 0x0115C2 04:95B2: 20        .byte $20   ; 
- D 0 - I - 0x0115C3 04:95B3: 10        .byte $10   ; 
- D 0 - I - 0x0115C4 04:95B4: F1        .byte con_se_cb_1_F0 + $01   ; 
- D 0 - I - 0x0115C5 04:95B5: 00        .byte $00   ; 
- D 0 - I - 0x0115C6 04:95B6: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 0 - I - 0x0115C7 04:95B7: B0        .byte $B0   ; 
- D 0 - I - 0x0115C8 04:95B8: A0        .byte $A0   ; 
- D 0 - I - 0x0115C9 04:95B9: 90        .byte $90   ; 
- D 0 - I - 0x0115CA 04:95BA: F2        .byte con_se_cb_1_F0 + $02   ; 
- D 0 - I - 0x0115CB 04:95BB: 80        .byte $80   ; 
- D 0 - I - 0x0115CC 04:95BC: 70        .byte $70   ; 
- D 0 - I - 0x0115CD 04:95BD: 60        .byte $60   ; 
- D 0 - I - 0x0115CE 04:95BE: E9        .byte con_se_cb_1_E9, $B0   ; 
- D 0 - I - 0x0115D0 04:95C0: F2        .byte con_se_cb_1_F0 + $02   ; 
- D 0 - I - 0x0115D1 04:95C1: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x0115D2 04:95C2: 29        .byte $29   ; 
- D 0 - I - 0x0115D3 04:95C3: 10        .byte $10   ; 
- D 0 - I - 0x0115D4 04:95C4: 00        .byte $00   ; 
- D 0 - I - 0x0115D5 04:95C5: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x0115D6 04:95C6: F2        .byte con_se_cb_1_F0 + $02   ; 
- D 0 - I - 0x0115D7 04:95C7: B0        .byte $B0   ; 
- D 0 - I - 0x0115D8 04:95C8: A0        .byte $A0   ; 
- D 0 - I - 0x0115D9 04:95C9: F3        .byte con_se_cb_1_F0 + $03   ; 
- D 0 - I - 0x0115DA 04:95CA: 90        .byte $90   ; 
- D 0 - I - 0x0115DB 04:95CB: 80        .byte $80   ; 
- D 0 - I - 0x0115DC 04:95CC: 70        .byte $70   ; 
- D 0 - I - 0x0115DD 04:95CD: 60        .byte $60   ; 
- D 0 - I - 0x0115DE 04:95CE: 50        .byte $50   ; 
- D 0 - I - 0x0115DF 04:95CF: 40        .byte $40   ; 
- D 0 - I - 0x0115E0 04:95D0: D4        .byte con_se_cb_1_D0 + $04, $B1, con_9E25_00 + $80   ; 
- D 0 - I - 0x0115E3 04:95D3: 00        .byte $00   ; 
- D 0 - I - 0x0115E4 04:95D4: ED        .byte con_se_cb_1_ED, $01   ; 
- D 0 - I - 0x0115E6 04:95D6: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x0115E7 04:95D7: 50        .byte $50   ; 
- D 0 - I - 0x0115E8 04:95D8: 60        .byte $60   ; 
- D 0 - I - 0x0115E9 04:95D9: 70        .byte $70   ; 
- D 0 - I - 0x0115EA 04:95DA: 80        .byte $80   ; 
- D 0 - I - 0x0115EB 04:95DB: 90        .byte $90   ; 
- D 0 - I - 0x0115EC 04:95DC: A0        .byte $A0   ; 
- D 0 - I - 0x0115ED 04:95DD: B0        .byte $B0   ; 
- D 0 - I - 0x0115EE 04:95DE: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x0115EF 04:95DF: 00        .byte $00   ; 
- D 0 - I - 0x0115F0 04:95E0: 10        .byte $10   ; 
- D 0 - I - 0x0115F1 04:95E1: 2F        .byte $2F   ; 
- D 0 - I - 0x0115F2 04:95E2: 2F        .byte $2F   ; 
- D 0 - I - 0x0115F3 04:95E3: 23        .byte $23   ; 
- D 0 - I - 0x0115F4 04:95E4: DA        .byte con_se_cb_1_D0 + $0A, $77, con_9E25_04 + $80   ; 
- D 0 - I - 0x0115F7 04:95E7: 18        .byte $18   ; 
- D 0 - I - 0x0115F8 04:95E8: EC        .byte con_se_cb_1_EC, $01   ; 
- D 0 - I - 0x0115FA 04:95EA: E9        .byte con_se_cb_1_E9, $78   ; 
- D 0 - I - 0x0115FC 04:95EC: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x0115FD 04:95ED: 90        .byte $90   ; 
- D 0 - I - 0x0115FE 04:95EE: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x0115FF 04:95EF: 20        .byte $20   ; 
- D 0 - I - 0x011600 04:95F0: 50        .byte $50   ; 
- D 0 - I - 0x011601 04:95F1: 90        .byte $90   ; 
- D 0 - I - 0x011602 04:95F2: DA        .byte con_se_cb_1_D0 + $0A, $36, con_9E25_03 + $80   ; 
- D 0 - I - 0x011605 04:95F5: 17        .byte $17   ; 
- D 0 - I - 0x011606 04:95F6: E9        .byte con_se_cb_1_E9, $71   ; 
- D 0 - I - 0x011608 04:95F8: B0        .byte $B0   ; 
- D 0 - I - 0x011609 04:95F9: 70        .byte $70   ; 
- D 0 - I - 0x01160A 04:95FA: B0        .byte $B0   ; 
- D 0 - I - 0x01160B 04:95FB: FB        .byte con_se_cb_1_FB   ; 
- D 0 - I - 0x01160C 04:95FC: 90        .byte $90   ; 
- D 0 - I - 0x01160D 04:95FD: 50        .byte $50   ; 
- D 0 - I - 0x01160E 04:95FE: FE        .byte con_se_cb_1_FE, $07   ; 
- D 0 - I - 0x011610 04:9600: 90        .byte $90   ; 
- D 0 - I - 0x011611 04:9601: B0        .byte $B0   ; 
- D 0 - I - 0x011612 04:9602: 70        .byte $70   ; 
- D 0 - I - 0x011613 04:9603: B0        .byte $B0   ; 
- D 0 - I - 0x011614 04:9604: 90        .byte $90   ; 
- D 0 - I - 0x011615 04:9605: 50        .byte $50   ; 
- D 0 - I - 0x011616 04:9606: 90        .byte $90   ; 
- D 0 - I - 0x011617 04:9607: 90        .byte $90   ; 
- D 0 - I - 0x011618 04:9608: 40        .byte $40   ; 
- D 0 - I - 0x011619 04:9609: 90        .byte $90   ; 
- D 0 - I - 0x01161A 04:960A: FB        .byte con_se_cb_1_FB   ; 
- D 0 - I - 0x01161B 04:960B: 70        .byte $70   ; 
- D 0 - I - 0x01161C 04:960C: 20        .byte $20   ; 
- D 0 - I - 0x01161D 04:960D: FE        .byte con_se_cb_1_FE, $06   ; 
- D 0 - I - 0x01161F 04:960F: 70        .byte $70   ; 
- D 0 - I - 0x011620 04:9610: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x011621 04:9611: 90        .byte $90   ; 
- D 0 - I - 0x011622 04:9612: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x011623 04:9613: 20        .byte $20   ; 
- D 0 - I - 0x011624 04:9614: 50        .byte $50   ; 
- D 0 - I - 0x011625 04:9615: 90        .byte $90   ; 
- D 0 - I - 0x011626 04:9616: E1        .byte con_se_cb_1_E0 + $01   ; 
- D 0 - I - 0x011627 04:9617: 20        .byte $20   ; 
- D 0 - I - 0x011628 04:9618: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x011629 04:9619: B0        .byte $B0   ; 
- D 0 - I - 0x01162A 04:961A: E1        .byte con_se_cb_1_E0 + $01   ; 
- D 0 - I - 0x01162B 04:961B: 20        .byte $20   ; 
- D 0 - I - 0x01162C 04:961C: FB        .byte con_se_cb_1_FB   ; 
- D 0 - I - 0x01162D 04:961D: E1        .byte con_se_cb_1_E0 + $01   ; 
- D 0 - I - 0x01162E 04:961E: 20        .byte $20   ; 
- D 0 - I - 0x01162F 04:961F: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x011630 04:9620: 90        .byte $90   ; 
- D 0 - I - 0x011631 04:9621: FE        .byte con_se_cb_1_FE, $07   ; 
- D 0 - I - 0x011633 04:9623: E1        .byte con_se_cb_1_E0 + $01   ; 
- D 0 - I - 0x011634 04:9624: 20        .byte $20   ; 
- D 0 - I - 0x011635 04:9625: 00        .byte $00   ; 
- D 0 - I - 0x011636 04:9626: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x011637 04:9627: 70        .byte $70   ; 
- D 0 - I - 0x011638 04:9628: E1        .byte con_se_cb_1_E0 + $01   ; 
- D 0 - I - 0x011639 04:9629: 00        .byte $00   ; 
- D 0 - I - 0x01163A 04:962A: 00        .byte $00   ; 
- D 0 - I - 0x01163B 04:962B: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x01163C 04:962C: 60        .byte $60   ; 
- D 0 - I - 0x01163D 04:962D: E1        .byte con_se_cb_1_E0 + $01   ; 
- D 0 - I - 0x01163E 04:962E: 00        .byte $00   ; 
- D 0 - I - 0x01163F 04:962F: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x011640 04:9630: 00        .byte $00   ; 
- D 0 - I - 0x011641 04:9631: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x011642 04:9632: 70        .byte $70   ; 
- D 0 - I - 0x011643 04:9633: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x011644 04:9634: 00        .byte $00   ; 
- D 0 - I - 0x011645 04:9635: FB        .byte con_se_cb_1_FB   ; 
- D 0 - I - 0x011646 04:9636: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x011647 04:9637: 00        .byte $00   ; 
- D 0 - I - 0x011648 04:9638: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x011649 04:9639: 60        .byte $60   ; 
- D 0 - I - 0x01164A 04:963A: FE        .byte con_se_cb_1_FE, $06   ; 
- D 0 - I - 0x01164C 04:963C: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x01164D 04:963D: 00        .byte $00   ; 
- D 0 - I - 0x01164E 04:963E: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x01164F 04:963F: 90        .byte $90   ; 
- D 0 - I - 0x011650 04:9640: 50        .byte $50   ; 
- D 0 - I - 0x011651 04:9641: 90        .byte $90   ; 
- D 0 - I - 0x011652 04:9642: 50        .byte $50   ; 
- D 0 - I - 0x011653 04:9643: 20        .byte $20   ; 
- D 0 - I - 0x011654 04:9644: 50        .byte $50   ; 
- D 0 - I - 0x011655 04:9645: 80        .byte $80   ; 
- D 0 - I - 0x011656 04:9646: 40        .byte $40   ; 
- D 0 - I - 0x011657 04:9647: 80        .byte $80   ; 
- D 0 - I - 0x011658 04:9648: B0        .byte $B0   ; 
- D 0 - I - 0x011659 04:9649: 80        .byte $80   ; 
- D 0 - I - 0x01165A 04:964A: B0        .byte $B0   ; 
- D 0 - I - 0x01165B 04:964B: 90        .byte $90   ; 
- D 0 - I - 0x01165C 04:964C: 50        .byte $50   ; 
- D 0 - I - 0x01165D 04:964D: FB        .byte con_se_cb_1_FB   ; 
- D 0 - I - 0x01165E 04:964E: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x01165F 04:964F: 00        .byte $00   ; 
- D 0 - I - 0x011660 04:9650: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x011661 04:9651: 90        .byte $90   ; 
- D 0 - I - 0x011662 04:9652: FE        .byte con_se_cb_1_FE, $04   ; 
- D 0 - I - 0x011664 04:9654: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x011665 04:9655: B0        .byte $B0   ; 
- D 0 - I - 0x011666 04:9656: 70        .byte $70   ; 
- D 0 - I - 0x011667 04:9657: B0        .byte $B0   ; 
- D 0 - I - 0x011668 04:9658: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x011669 04:9659: 20        .byte $20   ; 
- D 0 - I - 0x01166A 04:965A: F1        .byte con_se_cb_1_F0 + $01   ; 
- D 0 - I - 0x01166B 04:965B: E9        .byte con_se_cb_1_E9, $00   ; 
- D 0 - I - 0x01166D 04:965D: E9        .byte con_se_cb_1_E9, $B0   ; 
- D 0 - I - 0x01166F 04:965F: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x011670 04:9660: 70        .byte $70   ; 
- D 0 - I - 0x011671 04:9661: B0        .byte $B0   ; 
- D 0 - I - 0x011672 04:9662: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x011673 04:9663: 20        .byte $20   ; 
- D 0 - I - 0x011674 04:9664: 70        .byte $70   ; 
- D 0 - I - 0x011675 04:9665: B0        .byte $B0   ; 
- D 0 - I - 0x011676 04:9666: E1        .byte con_se_cb_1_E0 + $01   ; 
- D 0 - I - 0x011677 04:9667: 20        .byte $20   ; 
- D 0 - I - 0x011678 04:9668: 70        .byte $70   ; 
- D 0 - I - 0x011679 04:9669: F0        .byte con_se_cb_1_F0 + $00   ; 
- D 0 - I - 0x01167A 04:966A: E9        .byte con_se_cb_1_E9, $30   ; 
- D 0 - I - 0x01167C 04:966C: E9        .byte con_se_cb_1_E9, $71   ; 
- D 0 - I - 0x01167E 04:966E: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x01167F 04:966F: 20        .byte $20   ; 
- D 0 - I - 0x011680 04:9670: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x011681 04:9671: A0        .byte $A0   ; 
- D 0 - I - 0x011682 04:9672: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x011683 04:9673: 20        .byte $20   ; 
- D 0 - I - 0x011684 04:9674: 50        .byte $50   ; 
- D 0 - I - 0x011685 04:9675: 20        .byte $20   ; 
- D 0 - I - 0x011686 04:9676: 50        .byte $50   ; 
- D 0 - I - 0x011687 04:9677: 40        .byte $40   ; 
- D 0 - I - 0x011688 04:9678: 00        .byte $00   ; 
- D 0 - I - 0x011689 04:9679: 40        .byte $40   ; 
- D 0 - I - 0x01168A 04:967A: 70        .byte $70   ; 
- D 0 - I - 0x01168B 04:967B: 40        .byte $40   ; 
- D 0 - I - 0x01168C 04:967C: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x01168D 04:967D: 90        .byte $90   ; 
- D 0 - I - 0x01168E 04:967E: 50        .byte $50   ; 
- D 0 - I - 0x01168F 04:967F: 90        .byte $90   ; 
- D 0 - I - 0x011690 04:9680: 50        .byte $50   ; 
- D 0 - I - 0x011691 04:9681: 20        .byte $20   ; 
- D 0 - I - 0x011692 04:9682: 50        .byte $50   ; 
- D 0 - I - 0x011693 04:9683: 80        .byte $80   ; 
- D 0 - I - 0x011694 04:9684: 40        .byte $40   ; 
- D 0 - I - 0x011695 04:9685: 80        .byte $80   ; 
- D 0 - I - 0x011696 04:9686: B0        .byte $B0   ; 
- D 0 - I - 0x011697 04:9687: 80        .byte $80   ; 
- D 0 - I - 0x011698 04:9688: B0        .byte $B0   ; 
- D 0 - I - 0x011699 04:9689: 90        .byte $90   ; 
- D 0 - I - 0x01169A 04:968A: 50        .byte $50   ; 
- D 0 - I - 0x01169B 04:968B: E1        .byte con_se_cb_1_E0 + $01   ; 
- D 0 - I - 0x01169C 04:968C: 00        .byte $00   ; 
- D 0 - I - 0x01169D 04:968D: E9        .byte con_se_cb_1_E9, $B0   ; 
- D 0 - I - 0x01169F 04:968F: E9        .byte con_se_cb_1_E9, $00   ; 
- D 0 - I - 0x0116A1 04:9691: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x0116A2 04:9692: 50        .byte $50   ; 
- D 0 - I - 0x0116A3 04:9693: 90        .byte $90   ; 
- D 0 - I - 0x0116A4 04:9694: E1        .byte con_se_cb_1_E0 + $01   ; 
- D 0 - I - 0x0116A5 04:9695: 00        .byte $00   ; 
- D 0 - I - 0x0116A6 04:9696: 50        .byte $50   ; 
- D 0 - I - 0x0116A7 04:9697: 90        .byte $90   ; 
- D 0 - I - 0x0116A8 04:9698: E0        .byte con_se_cb_1_E0 + $00   ; 
- D 0 - I - 0x0116A9 04:9699: 00        .byte $00   ; 
- D 0 - I - 0x0116AA 04:969A: 50        .byte $50   ; 
- D 0 - I - 0x0116AB 04:969B: E9        .byte con_se_cb_1_E9, $30   ; 
- D 0 - I - 0x0116AD 04:969D: E9        .byte con_se_cb_1_E9, $71   ; 
- D 0 - I - 0x0116AF 04:969F: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x0116B0 04:96A0: B0        .byte $B0   ; 
- D 0 - I - 0x0116B1 04:96A1: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x0116B2 04:96A2: 40        .byte $40   ; 
- D 0 - I - 0x0116B3 04:96A3: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x0116B4 04:96A4: B0        .byte $B0   ; 
- D 0 - I - 0x0116B5 04:96A5: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x0116B6 04:96A6: 20        .byte $20   ; 
- D 0 - I - 0x0116B7 04:96A7: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x0116B8 04:96A8: B0        .byte $B0   ; 
- D 0 - I - 0x0116B9 04:96A9: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x0116BA 04:96AA: 40        .byte $40   ; 
- D 0 - I - 0x0116BB 04:96AB: 10        .byte $10   ; 
- D 0 - I - 0x0116BC 04:96AC: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x0116BD 04:96AD: 90        .byte $90   ; 
- D 0 - I - 0x0116BE 04:96AE: 10        .byte $10   ; 
- D 0 - I - 0x0116BF 04:96AF: 40        .byte $40   ; 
- D 0 - I - 0x0116C0 04:96B0: 10        .byte $10   ; 
- D 0 - I - 0x0116C1 04:96B1: 90        .byte $90   ; 
- D 0 - I - 0x0116C2 04:96B2: 20        .byte $20   ; 
- D 0 - I - 0x0116C3 04:96B3: A0        .byte $A0   ; 
- D 0 - I - 0x0116C4 04:96B4: 20        .byte $20   ; 
- D 0 - I - 0x0116C5 04:96B5: 50        .byte $50   ; 
- D 0 - I - 0x0116C6 04:96B6: 20        .byte $20   ; 
- D 0 - I - 0x0116C7 04:96B7: A0        .byte $A0   ; 
- D 0 - I - 0x0116C8 04:96B8: 40        .byte $40   ; 
- D 0 - I - 0x0116C9 04:96B9: 90        .byte $90   ; 
- D 0 - I - 0x0116CA 04:96BA: 70        .byte $70   ; 
- D 0 - I - 0x0116CB 04:96BB: 90        .byte $90   ; 
- D 0 - I - 0x0116CC 04:96BC: 50        .byte $50   ; 
- D 0 - I - 0x0116CD 04:96BD: 90        .byte $90   ; 
- D 0 - I - 0x0116CE 04:96BE: 40        .byte $40   ; 
- D 0 - I - 0x0116CF 04:96BF: 90        .byte $90   ; 
- D 0 - I - 0x0116D0 04:96C0: 20        .byte $20   ; 
- D 0 - I - 0x0116D1 04:96C1: 90        .byte $90   ; 
- D 0 - I - 0x0116D2 04:96C2: 70        .byte $70   ; 
- D 0 - I - 0x0116D3 04:96C3: 40        .byte $40   ; 
- D 0 - I - 0x0116D4 04:96C4: 70        .byte $70   ; 
- D 0 - I - 0x0116D5 04:96C5: 40        .byte $40   ; 
- D 0 - I - 0x0116D6 04:96C6: EC        .byte con_se_cb_1_EC, $00   ; 
- D 0 - I - 0x0116D8 04:96C8: E9        .byte con_se_cb_1_E9, $00   ; 
- D 0 - I - 0x0116DA 04:96CA: D1        .byte con_se_cb_1_D0 + $01, $39, con_9E25_04 + $80   ; 
- D 0 - I - 0x0116DD 04:96CD: 00        .byte $00   ; 
- D 0 - I - 0x0116DE 04:96CE: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x0116DF 04:96CF: 49        .byte $49   ; 
- D 0 - I - 0x0116E0 04:96D0: D1        .byte con_se_cb_1_D0 + $01, $34, con_9E25_00 + $80   ; 
- D 0 - I - 0x0116E3 04:96D3: 00        .byte $00   ; 
- D 0 - I - 0x0116E4 04:96D4: 30        .byte $30   ; 
- D 0 - I - 0x0116E5 04:96D5: 20        .byte $20   ; 
- D 0 - I - 0x0116E6 04:96D6: 10        .byte $10   ; 
- D 0 - I - 0x0116E7 04:96D7: F1        .byte con_se_cb_1_F0 + $01   ; 
- D 0 - I - 0x0116E8 04:96D8: 00        .byte $00   ; 
- D 0 - I - 0x0116E9 04:96D9: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x0116EA 04:96DA: B0        .byte $B0   ; 
- D 0 - I - 0x0116EB 04:96DB: A0        .byte $A0   ; 
- D 0 - I - 0x0116EC 04:96DC: F2        .byte con_se_cb_1_F0 + $02   ; 
- D 0 - I - 0x0116ED 04:96DD: 90        .byte $90   ; 
- D 0 - I - 0x0116EE 04:96DE: 80        .byte $80   ; 
- D 0 - I - 0x0116EF 04:96DF: 70        .byte $70   ; 
- D 0 - I - 0x0116F0 04:96E0: 60        .byte $60   ; 
- D 0 - I - 0x0116F1 04:96E1: DA        .byte con_se_cb_1_D0 + $0A, $70, con_9E25_06   ; 
- D 0 - I - 0x0116F4 04:96E4: 18        .byte $18   ; 
- D 0 - I - 0x0116F5 04:96E5: E9        .byte con_se_cb_1_E9, $B1   ; 
- D 0 - I - 0x0116F7 04:96E7: ED        .byte con_se_cb_1_ED, $03   ; 
- D 0 - I - 0x0116F9 04:96E9: E5        .byte con_se_cb_1_E0 + $05   ; 
- D 0 - I - 0x0116FA 04:96EA: 91        .byte $91   ; 
- D 0 - I - 0x0116FB 04:96EB: 91        .byte $91   ; 
- D 0 - I - 0x0116FC 04:96EC: ED        .byte con_se_cb_1_ED, $00   ; 
- D 0 - I - 0x0116FE 04:96EE: E9        .byte con_se_cb_1_E9, $00   ; 
- D 0 - I - 0x011700 04:96F0: D1        .byte con_se_cb_1_D0 + $01, $39, con_9E25_04 + $80   ; 
- D 0 - I - 0x011703 04:96F3: 00        .byte $00   ; 
- D 0 - I - 0x011704 04:96F4: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x011705 04:96F5: 49        .byte $49   ; 
- D 0 - I - 0x011706 04:96F6: D1        .byte con_se_cb_1_D0 + $01, $34, con_9E25_00 + $80   ; 
- D 0 - I - 0x011709 04:96F9: 00        .byte $00   ; 
- D 0 - I - 0x01170A 04:96FA: 30        .byte $30   ; 
- D 0 - I - 0x01170B 04:96FB: 20        .byte $20   ; 
- D 0 - I - 0x01170C 04:96FC: 10        .byte $10   ; 
- D 0 - I - 0x01170D 04:96FD: F1        .byte con_se_cb_1_F0 + $01   ; 
- D 0 - I - 0x01170E 04:96FE: 00        .byte $00   ; 
- D 0 - I - 0x01170F 04:96FF: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x011710 04:9700: B0        .byte $B0   ; 
- D 0 - I - 0x011711 04:9701: A0        .byte $A0   ; 
- D 0 - I - 0x011712 04:9702: F2        .byte con_se_cb_1_F0 + $02   ; 
- D 0 - I - 0x011713 04:9703: 90        .byte $90   ; 
- D 0 - I - 0x011714 04:9704: 80        .byte $80   ; 
- D 0 - I - 0x011715 04:9705: 70        .byte $70   ; 
- D 0 - I - 0x011716 04:9706: 60        .byte $60   ; 
- D 0 - I - 0x011717 04:9707: DA        .byte con_se_cb_1_D0 + $0A, $70, con_9E25_06   ; 
- D 0 - I - 0x01171A 04:970A: 18        .byte $18   ; 
- D 0 - I - 0x01171B 04:970B: ED        .byte con_se_cb_1_ED, $03   ; 
- D 0 - I - 0x01171D 04:970D: E9        .byte con_se_cb_1_E9, $B1   ; 
- D 0 - I - 0x01171F 04:970F: E5        .byte con_se_cb_1_E0 + $05   ; 
- D 0 - I - 0x011720 04:9710: 91        .byte $91   ; 
- D 0 - I - 0x011721 04:9711: ED        .byte con_se_cb_1_ED, $00   ; 
- D 0 - I - 0x011723 04:9713: E9        .byte con_se_cb_1_E9, $00   ; 
- D 0 - I - 0x011725 04:9715: D1        .byte con_se_cb_1_D0 + $01, $39, con_9E25_04 + $80   ; 
- D 0 - I - 0x011728 04:9718: 00        .byte $00   ; 
- D 0 - I - 0x011729 04:9719: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x01172A 04:971A: 49        .byte $49   ; 
- D 0 - I - 0x01172B 04:971B: D1        .byte con_se_cb_1_D0 + $01, $34, con_9E25_00 + $80   ; 
- D 0 - I - 0x01172E 04:971E: 00        .byte $00   ; 
- D 0 - I - 0x01172F 04:971F: 30        .byte $30   ; 
- D 0 - I - 0x011730 04:9720: 20        .byte $20   ; 
- D 0 - I - 0x011731 04:9721: 10        .byte $10   ; 
- D 0 - I - 0x011732 04:9722: F1        .byte con_se_cb_1_F0 + $01   ; 
- D 0 - I - 0x011733 04:9723: 00        .byte $00   ; 
- D 0 - I - 0x011734 04:9724: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x011735 04:9725: B0        .byte $B0   ; 
- D 0 - I - 0x011736 04:9726: A0        .byte $A0   ; 
- D 0 - I - 0x011737 04:9727: F2        .byte con_se_cb_1_F0 + $02   ; 
- D 0 - I - 0x011738 04:9728: 90        .byte $90   ; 
- D 0 - I - 0x011739 04:9729: 80        .byte $80   ; 
- D 0 - I - 0x01173A 04:972A: 70        .byte $70   ; 
- D 0 - I - 0x01173B 04:972B: 60        .byte $60   ; 
- D 0 - I - 0x01173C 04:972C: D1        .byte con_se_cb_1_D0 + $01, $39, con_9E25_04 + $80   ; 
- D 0 - I - 0x01173F 04:972F: 00        .byte $00   ; 
- D 0 - I - 0x011740 04:9730: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x011741 04:9731: 49        .byte $49   ; 
- D 0 - I - 0x011742 04:9732: D1        .byte con_se_cb_1_D0 + $01, $34, con_9E25_00 + $80   ; 
- D 0 - I - 0x011745 04:9735: 00        .byte $00   ; 
- D 0 - I - 0x011746 04:9736: 30        .byte $30   ; 
- D 0 - I - 0x011747 04:9737: 20        .byte $20   ; 
- D 0 - I - 0x011748 04:9738: 10        .byte $10   ; 
- D 0 - I - 0x011749 04:9739: F1        .byte con_se_cb_1_F0 + $01   ; 
- D 0 - I - 0x01174A 04:973A: 00        .byte $00   ; 
- D 0 - I - 0x01174B 04:973B: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x01174C 04:973C: B0        .byte $B0   ; 
- D 0 - I - 0x01174D 04:973D: F2        .byte con_se_cb_1_F0 + $02   ; 
- D 0 - I - 0x01174E 04:973E: A0        .byte $A0   ; 
- D 0 - I - 0x01174F 04:973F: 90        .byte $90   ; 
- D 0 - I - 0x011750 04:9740: F3        .byte con_se_cb_1_F0 + $03   ; 
- D 0 - I - 0x011751 04:9741: 80        .byte $80   ; 
- D 0 - I - 0x011752 04:9742: 70        .byte $70   ; 
- D 0 - I - 0x011753 04:9743: F4        .byte con_se_cb_1_F0 + $04   ; 
- D 0 - I - 0x011754 04:9744: 60        .byte $60   ; 
- D 0 - I - 0x011755 04:9745: D1        .byte con_se_cb_1_D0 + $01, $39, con_9E25_04 + $80   ; 
- D 0 - I - 0x011758 04:9748: 00        .byte $00   ; 
- D 0 - I - 0x011759 04:9749: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x01175A 04:974A: 79        .byte $79   ; 
- D 0 - I - 0x01175B 04:974B: D1        .byte con_se_cb_1_D0 + $01, $34, con_9E25_00 + $80   ; 
- D 0 - I - 0x01175E 04:974E: 00        .byte $00   ; 
- D 0 - I - 0x01175F 04:974F: 60        .byte $60   ; 
- D 0 - I - 0x011760 04:9750: 50        .byte $50   ; 
- D 0 - I - 0x011761 04:9751: 40        .byte $40   ; 
- D 0 - I - 0x011762 04:9752: F1        .byte con_se_cb_1_F0 + $01   ; 
- D 0 - I - 0x011763 04:9753: 30        .byte $30   ; 
- D 0 - I - 0x011764 04:9754: 20        .byte $20   ; 
- D 0 - I - 0x011765 04:9755: F2        .byte con_se_cb_1_F0 + $02   ; 
- D 0 - I - 0x011766 04:9756: 10        .byte $10   ; 
- D 0 - I - 0x011767 04:9757: 00        .byte $00   ; 
- D 0 - I - 0x011768 04:9758: F3        .byte con_se_cb_1_F0 + $03   ; 
- D 0 - I - 0x011769 04:9759: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 0 - I - 0x01176A 04:975A: B0        .byte $B0   ; 
- D 0 - I - 0x01176B 04:975B: A0        .byte $A0   ; 
- D 0 - I - 0x01176C 04:975C: F4        .byte con_se_cb_1_F0 + $04   ; 
- D 0 - I - 0x01176D 04:975D: 90        .byte $90   ; 
- D 0 - I - 0x01176E 04:975E: D1        .byte con_se_cb_1_D0 + $01, $39, con_9E25_04 + $80   ; 
- D 0 - I - 0x011771 04:9761: 00        .byte $00   ; 
- D 0 - I - 0x011772 04:9762: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x011773 04:9763: 49        .byte $49   ; 
- D 0 - I - 0x011774 04:9764: D1        .byte con_se_cb_1_D0 + $01, $34, con_9E25_00 + $80   ; 
- D 0 - I - 0x011777 04:9767: 00        .byte $00   ; 
- D 0 - I - 0x011778 04:9768: 30        .byte $30   ; 
- D 0 - I - 0x011779 04:9769: 20        .byte $20   ; 
- D 0 - I - 0x01177A 04:976A: 10        .byte $10   ; 
- D 0 - I - 0x01177B 04:976B: F1        .byte con_se_cb_1_F0 + $01   ; 
- D 0 - I - 0x01177C 04:976C: 00        .byte $00   ; 
- D 0 - I - 0x01177D 04:976D: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x01177E 04:976E: B0        .byte $B0   ; 
- D 0 - I - 0x01177F 04:976F: F2        .byte con_se_cb_1_F0 + $02   ; 
- D 0 - I - 0x011780 04:9770: A0        .byte $A0   ; 
- D 0 - I - 0x011781 04:9771: 90        .byte $90   ; 
- D 0 - I - 0x011782 04:9772: F3        .byte con_se_cb_1_F0 + $03   ; 
- D 0 - I - 0x011783 04:9773: 80        .byte $80   ; 
- D 0 - I - 0x011784 04:9774: 70        .byte $70   ; 
- D 0 - I - 0x011785 04:9775: F4        .byte con_se_cb_1_F0 + $04   ; 
- D 0 - I - 0x011786 04:9776: 60        .byte $60   ; 
- D 0 - I - 0x011787 04:9777: D1        .byte con_se_cb_1_D0 + $01, $39, con_9E25_04 + $80   ; 
- D 0 - I - 0x01178A 04:977A: 00        .byte $00   ; 
- D 0 - I - 0x01178B 04:977B: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x01178C 04:977C: 29        .byte $29   ; 
- D 0 - I - 0x01178D 04:977D: D1        .byte con_se_cb_1_D0 + $01, $34, con_9E25_00 + $80   ; 
- D 0 - I - 0x011790 04:9780: 00        .byte $00   ; 
- D 0 - I - 0x011791 04:9781: 10        .byte $10   ; 
- D 0 - I - 0x011792 04:9782: 00        .byte $00   ; 
- D 0 - I - 0x011793 04:9783: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x011794 04:9784: B0        .byte $B0   ; 
- D 0 - I - 0x011795 04:9785: F1        .byte con_se_cb_1_F0 + $01   ; 
- D 0 - I - 0x011796 04:9786: A0        .byte $A0   ; 
- D 0 - I - 0x011797 04:9787: 90        .byte $90   ; 
- D 0 - I - 0x011798 04:9788: F2        .byte con_se_cb_1_F0 + $02   ; 
- D 0 - I - 0x011799 04:9789: 80        .byte $80   ; 
- D 0 - I - 0x01179A 04:978A: 70        .byte $70   ; 
- D 0 - I - 0x01179B 04:978B: F3        .byte con_se_cb_1_F0 + $03   ; 
- D 0 - I - 0x01179C 04:978C: 60        .byte $60   ; 
- D 0 - I - 0x01179D 04:978D: 50        .byte $50   ; 
- D 0 - I - 0x01179E 04:978E: F4        .byte con_se_cb_1_F0 + $04   ; 
- D 0 - I - 0x01179F 04:978F: 40        .byte $40   ; 
- D 0 - I - 0x0117A0 04:9790: D1        .byte con_se_cb_1_D0 + $01, $39, con_9E25_04 + $80   ; 
- D 0 - I - 0x0117A3 04:9793: 00        .byte $00   ; 
- D 0 - I - 0x0117A4 04:9794: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x0117A5 04:9795: 39        .byte $39   ; 
- D 0 - I - 0x0117A6 04:9796: D1        .byte con_se_cb_1_D0 + $01, $34, con_9E25_00 + $80   ; 
- D 0 - I - 0x0117A9 04:9799: 00        .byte $00   ; 
- D 0 - I - 0x0117AA 04:979A: 20        .byte $20   ; 
- D 0 - I - 0x0117AB 04:979B: 10        .byte $10   ; 
- D 0 - I - 0x0117AC 04:979C: 00        .byte $00   ; 
- D 0 - I - 0x0117AD 04:979D: F1        .byte con_se_cb_1_F0 + $01   ; 
- D 0 - I - 0x0117AE 04:979E: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x0117AF 04:979F: B0        .byte $B0   ; 
- D 0 - I - 0x0117B0 04:97A0: A0        .byte $A0   ; 
- D 0 - I - 0x0117B1 04:97A1: F2        .byte con_se_cb_1_F0 + $02   ; 
- D 0 - I - 0x0117B2 04:97A2: 90        .byte $90   ; 
- D 0 - I - 0x0117B3 04:97A3: 80        .byte $80   ; 
- D 0 - I - 0x0117B4 04:97A4: F3        .byte con_se_cb_1_F0 + $03   ; 
- D 0 - I - 0x0117B5 04:97A5: 70        .byte $70   ; 
- D 0 - I - 0x0117B6 04:97A6: 60        .byte $60   ; 
- D 0 - I - 0x0117B7 04:97A7: F4        .byte con_se_cb_1_F0 + $04   ; 
- D 0 - I - 0x0117B8 04:97A8: 50        .byte $50   ; 
- D 0 - I - 0x0117B9 04:97A9: D1        .byte con_se_cb_1_D0 + $01, $39, con_9E25_04 + $80   ; 
- D 0 - I - 0x0117BC 04:97AC: 00        .byte $00   ; 
- D 0 - I - 0x0117BD 04:97AD: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x0117BE 04:97AE: 49        .byte $49   ; 
- D 0 - I - 0x0117BF 04:97AF: D1        .byte con_se_cb_1_D0 + $01, $34, con_9E25_00 + $80   ; 
- D 0 - I - 0x0117C2 04:97B2: 00        .byte $00   ; 
- D 0 - I - 0x0117C3 04:97B3: 30        .byte $30   ; 
- D 0 - I - 0x0117C4 04:97B4: 20        .byte $20   ; 
- D 0 - I - 0x0117C5 04:97B5: 10        .byte $10   ; 
- D 0 - I - 0x0117C6 04:97B6: F1        .byte con_se_cb_1_F0 + $01   ; 
- D 0 - I - 0x0117C7 04:97B7: 00        .byte $00   ; 
- D 0 - I - 0x0117C8 04:97B8: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x0117C9 04:97B9: B0        .byte $B0   ; 
- D 0 - I - 0x0117CA 04:97BA: F2        .byte con_se_cb_1_F0 + $02   ; 
- D 0 - I - 0x0117CB 04:97BB: A0        .byte $A0   ; 
- D 0 - I - 0x0117CC 04:97BC: 90        .byte $90   ; 
- D 0 - I - 0x0117CD 04:97BD: F3        .byte con_se_cb_1_F0 + $03   ; 
- D 0 - I - 0x0117CE 04:97BE: 80        .byte $80   ; 
- D 0 - I - 0x0117CF 04:97BF: 70        .byte $70   ; 
- D 0 - I - 0x0117D0 04:97C0: F4        .byte con_se_cb_1_F0 + $04   ; 
- D 0 - I - 0x0117D1 04:97C1: 60        .byte $60   ; 
- D 0 - I - 0x0117D2 04:97C2: FE        .byte con_se_cb_1_FE, $FF   ; 
- D 0 - I - 0x0117D4 04:97C4: 22 95     .word off_FE_9522



off_ch_01_0x0117D6_5E:
off_FE_97C6:
- D 0 - I - 0x0117D6 04:97C6: D1        .byte con_se_cb_1_D0 + $01, $39, con_9E25_04 + $80   ; 
- D 0 - I - 0x0117D9 04:97C9: 00        .byte $00   ; 
- D 0 - I - 0x0117DA 04:97CA: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x0117DB 04:97CB: 99        .byte $99   ; 
- D 0 - I - 0x0117DC 04:97CC: D1        .byte con_se_cb_1_D0 + $01, $34, con_9E25_00 + $80   ; 
- D 0 - I - 0x0117DF 04:97CF: 00        .byte $00   ; 
- D 0 - I - 0x0117E0 04:97D0: 80        .byte $80   ; 
- D 0 - I - 0x0117E1 04:97D1: 70        .byte $70   ; 
- D 0 - I - 0x0117E2 04:97D2: 60        .byte $60   ; 
- D 0 - I - 0x0117E3 04:97D3: F1        .byte con_se_cb_1_F0 + $01   ; 
- D 0 - I - 0x0117E4 04:97D4: 50        .byte $50   ; 
- D 0 - I - 0x0117E5 04:97D5: 40        .byte $40   ; 
- D 0 - I - 0x0117E6 04:97D6: 30        .byte $30   ; 
- D 0 - I - 0x0117E7 04:97D7: 20        .byte $20   ; 
- D 0 - I - 0x0117E8 04:97D8: F2        .byte con_se_cb_1_F0 + $02   ; 
- D 0 - I - 0x0117E9 04:97D9: 10        .byte $10   ; 
- D 0 - I - 0x0117EA 04:97DA: 00        .byte $00   ; 
- D 0 - I - 0x0117EB 04:97DB: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 0 - I - 0x0117EC 04:97DC: B0        .byte $B0   ; 
- D 0 - I - 0x0117ED 04:97DD: D4        .byte con_se_cb_1_D0 + $04, $B2, con_9E25_00 + $80   ; 
- D 0 - I - 0x0117F0 04:97E0: 00        .byte $00   ; 
- D 0 - I - 0x0117F1 04:97E1: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x0117F2 04:97E2: 20        .byte $20   ; 
- D 0 - I - 0x0117F3 04:97E3: 30        .byte $30   ; 
- D 0 - I - 0x0117F4 04:97E4: 40        .byte $40   ; 
- D 0 - I - 0x0117F5 04:97E5: 50        .byte $50   ; 
- D 0 - I - 0x0117F6 04:97E6: 60        .byte $60   ; 
- D 0 - I - 0x0117F7 04:97E7: 70        .byte $70   ; 
- D 0 - I - 0x0117F8 04:97E8: 80        .byte $80   ; 
- D 0 - I - 0x0117F9 04:97E9: 90        .byte $90   ; 
- D 0 - I - 0x0117FA 04:97EA: A0        .byte $A0   ; 
- D 0 - I - 0x0117FB 04:97EB: B0        .byte $B0   ; 
- D 0 - I - 0x0117FC 04:97EC: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x0117FD 04:97ED: 00        .byte $00   ; 
- D 0 - I - 0x0117FE 04:97EE: 10        .byte $10   ; 
- D 0 - I - 0x0117FF 04:97EF: 2F        .byte $2F   ; 
- D 0 - I - 0x011800 04:97F0: 2F        .byte $2F   ; 
- D 0 - I - 0x011801 04:97F1: 22        .byte $22   ; 
- D 0 - I - 0x011802 04:97F2: 12        .byte $12   ; 
- D 0 - I - 0x011803 04:97F3: DA        .byte con_se_cb_1_D0 + $0A, $70, con_9E25_0B   ; 
- D 0 - I - 0x011806 04:97F6: 12        .byte $12   ; 
- D 0 - I - 0x011807 04:97F7: EB        .byte con_se_cb_1_EB, con_9E7B_50, $53   ; 
- D 0 - I - 0x01180A 04:97FA: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x01180B 04:97FB: 02        .byte $02   ; 
- D 0 - I - 0x01180C 04:97FC: E6        .byte con_se_cb_1_E6, $13   ; 
- D 0 - I - 0x01180E 04:97FE: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x01180F 04:97FF: B9        .byte $B9   ; 
- D 0 - I - 0x011810 04:9800: E6        .byte con_se_cb_1_E6, $0A   ; 
- D 0 - I - 0x011812 04:9802: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x011813 04:9803: 02        .byte $02   ; 
- D 0 - I - 0x011814 04:9804: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x011815 04:9805: B2        .byte $B2   ; 
- D 0 - I - 0x011816 04:9806: A2        .byte $A2   ; 
- D 0 - I - 0x011817 04:9807: EB        .byte con_se_cb_1_EB, con_9E7B_56, $51   ; 
- D 0 - I - 0x01181A 04:980A: E7        .byte con_se_cb_1_E7, con_9E25_0C   ; 
- D 0 - I - 0x01181C 04:980C: 9C        .byte $9C   ; 
- D 0 - I - 0x01181D 04:980D: EB        .byte con_se_cb_1_EB, con_9E7B_50, $51   ; 
- D 0 - I - 0x011820 04:9810: E7        .byte con_se_cb_1_E7, con_9E25_0B   ; 
- D 0 - I - 0x011822 04:9812: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x011823 04:9813: 92        .byte $92   ; 
- D 0 - I - 0x011824 04:9814: E6        .byte con_se_cb_1_E6, $13   ; 
- D 0 - I - 0x011826 04:9816: 89        .byte $89   ; 
- D 0 - I - 0x011827 04:9817: E6        .byte con_se_cb_1_E6, $0A   ; 
- D 0 - I - 0x011829 04:9819: EB        .byte con_se_cb_1_EB, con_9E7B_50, $52   ; 
- D 0 - I - 0x01182C 04:981C: 92        .byte $92   ; 
- D 0 - I - 0x01182D 04:981D: 82        .byte $82   ; 
- D 0 - I - 0x01182E 04:981E: 72        .byte $72   ; 
- D 0 - I - 0x01182F 04:981F: E7        .byte con_se_cb_1_E7, con_9E25_0C   ; 
- D 0 - I - 0x011831 04:9821: 6C        .byte $6C   ; 
- D 0 - I - 0x011832 04:9822: EB        .byte con_se_cb_1_EB, $00   ; 
- D 0 - I - 0x011834 04:9824: D1        .byte con_se_cb_1_D0 + $01, $39, con_9E25_04 + $80   ; 
- D 0 - I - 0x011837 04:9827: 00        .byte $00   ; 
- D 0 - I - 0x011838 04:9828: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x011839 04:9829: 99        .byte $99   ; 
- D 0 - I - 0x01183A 04:982A: D1        .byte con_se_cb_1_D0 + $01, $34, con_9E25_00 + $80   ; 
- D 0 - I - 0x01183D 04:982D: 00        .byte $00   ; 
- D 0 - I - 0x01183E 04:982E: 80        .byte $80   ; 
- D 0 - I - 0x01183F 04:982F: 70        .byte $70   ; 
- D 0 - I - 0x011840 04:9830: 60        .byte $60   ; 
- D 0 - I - 0x011841 04:9831: F1        .byte con_se_cb_1_F0 + $01   ; 
- D 0 - I - 0x011842 04:9832: 50        .byte $50   ; 
- D 0 - I - 0x011843 04:9833: 40        .byte $40   ; 
- D 0 - I - 0x011844 04:9834: 30        .byte $30   ; 
- D 0 - I - 0x011845 04:9835: 20        .byte $20   ; 
- D 0 - I - 0x011846 04:9836: F2        .byte con_se_cb_1_F0 + $02   ; 
- D 0 - I - 0x011847 04:9837: 10        .byte $10   ; 
- D 0 - I - 0x011848 04:9838: 00        .byte $00   ; 
- D 0 - I - 0x011849 04:9839: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 0 - I - 0x01184A 04:983A: B0        .byte $B0   ; 
- D 0 - I - 0x01184B 04:983B: D4        .byte con_se_cb_1_D0 + $04, $B2, con_9E25_00 + $80   ; 
- D 0 - I - 0x01184E 04:983E: 00        .byte $00   ; 
- D 0 - I - 0x01184F 04:983F: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x011850 04:9840: 20        .byte $20   ; 
- D 0 - I - 0x011851 04:9841: 30        .byte $30   ; 
- D 0 - I - 0x011852 04:9842: 40        .byte $40   ; 
- D 0 - I - 0x011853 04:9843: 50        .byte $50   ; 
- D 0 - I - 0x011854 04:9844: 60        .byte $60   ; 
- D 0 - I - 0x011855 04:9845: 70        .byte $70   ; 
- D 0 - I - 0x011856 04:9846: 80        .byte $80   ; 
- D 0 - I - 0x011857 04:9847: 90        .byte $90   ; 
- D 0 - I - 0x011858 04:9848: A0        .byte $A0   ; 
- D 0 - I - 0x011859 04:9849: B0        .byte $B0   ; 
- D 0 - I - 0x01185A 04:984A: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x01185B 04:984B: 00        .byte $00   ; 
- D 0 - I - 0x01185C 04:984C: 10        .byte $10   ; 
- D 0 - I - 0x01185D 04:984D: 2F        .byte $2F   ; 
- D 0 - I - 0x01185E 04:984E: 2F        .byte $2F   ; 
- D 0 - I - 0x01185F 04:984F: 25        .byte $25   ; 
- D 0 - I - 0x011860 04:9850: DA        .byte con_se_cb_1_D0 + $0A, $78, con_9E25_04 + $80   ; 
- D 0 - I - 0x011863 04:9853: 12        .byte $12   ; 
- D 0 - I - 0x011864 04:9854: EB        .byte con_se_cb_1_EB, con_9E7B_50, $51   ; 
- D 0 - I - 0x011867 04:9857: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x011868 04:9858: 20        .byte $20   ; 
- D 0 - I - 0x011869 04:9859: 50        .byte $50   ; 
- D 0 - I - 0x01186A 04:985A: 90        .byte $90   ; 
- D 0 - I - 0x01186B 04:985B: E1        .byte con_se_cb_1_E0 + $01   ; 
- D 0 - I - 0x01186C 04:985C: 20        .byte $20   ; 
- D 0 - I - 0x01186D 04:985D: DA        .byte con_se_cb_1_D0 + $0A, $70, con_9E25_0C   ; 
- D 0 - I - 0x011870 04:9860: 12        .byte $12   ; 
- D 0 - I - 0x011871 04:9861: 42        .byte $42   ; 
- D 0 - I - 0x011872 04:9862: 2E        .byte $2E   ; 
- D 0 - I - 0x011873 04:9863: 42        .byte $42   ; 
- D 0 - I - 0x011874 04:9864: 22        .byte $22   ; 
- D 0 - I - 0x011875 04:9865: 02        .byte $02   ; 
- D 0 - I - 0x011876 04:9866: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x011877 04:9867: BC        .byte $BC   ; 
- D 0 - I - 0x011878 04:9868: DA        .byte con_se_cb_1_D0 + $0A, $78, con_9E25_04 + $80   ; 
- D 0 - I - 0x01187B 04:986B: 12        .byte $12   ; 
- D 0 - I - 0x01187C 04:986C: 20        .byte $20   ; 
- D 0 - I - 0x01187D 04:986D: 50        .byte $50   ; 
- D 0 - I - 0x01187E 04:986E: 90        .byte $90   ; 
- D 0 - I - 0x01187F 04:986F: E1        .byte con_se_cb_1_E0 + $01   ; 
- D 0 - I - 0x011880 04:9870: 20        .byte $20   ; 
- D 0 - I - 0x011881 04:9871: DA        .byte con_se_cb_1_D0 + $0A, $70, con_9E25_0C   ; 
- D 0 - I - 0x011884 04:9874: 12        .byte $12   ; 
- D 0 - I - 0x011885 04:9875: 72        .byte $72   ; 
- D 0 - I - 0x011886 04:9876: 5E        .byte $5E   ; 
- D 0 - I - 0x011887 04:9877: 42        .byte $42   ; 
- D 0 - I - 0x011888 04:9878: 42        .byte $42   ; 
- D 0 - I - 0x011889 04:9879: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x01188A 04:987A: 42        .byte $42   ; 
- D 0 - I - 0x01188B 04:987B: 4C        .byte $4C   ; 
- D 0 - I - 0x01188C 04:987C: DA        .byte con_se_cb_1_D0 + $0A, $77, con_9E25_04 + $80   ; 
- D 0 - I - 0x01188F 04:987F: 12        .byte $12   ; 
- D 0 - I - 0x011890 04:9880: EB        .byte con_se_cb_1_EB, con_9E7B_50, $42   ; 
- D 0 - I - 0x011893 04:9883: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x011894 04:9884: 22        .byte $22   ; 
- D 0 - I - 0x011895 04:9885: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x011896 04:9886: 92        .byte $92   ; 
- D 0 - I - 0x011897 04:9887: B2        .byte $B2   ; 
- D 0 - I - 0x011898 04:9888: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x011899 04:9889: 42        .byte $42   ; 
- D 0 - I - 0x01189A 04:988A: 01        .byte $01   ; 
- D 0 - I - 0x01189B 04:988B: 57        .byte $57   ; 
- D 0 - I - 0x01189C 04:988C: 22        .byte $22   ; 
- D 0 - I - 0x01189D 04:988D: 77        .byte $77   ; 
- D 0 - I - 0x01189E 04:988E: 52        .byte $52   ; 
- D 0 - I - 0x01189F 04:988F: A2        .byte $A2   ; 
- D 0 - I - 0x0118A0 04:9890: 72        .byte $72   ; 
- D 0 - I - 0x0118A1 04:9891: E1        .byte con_se_cb_1_E0 + $01   ; 
- D 0 - I - 0x0118A2 04:9892: 01        .byte $01   ; 
- D 0 - I - 0x0118A3 04:9893: EB        .byte con_se_cb_1_EB, con_9E7B_50, $51   ; 
- D 0 - I - 0x0118A6 04:9896: E1        .byte con_se_cb_1_E0 + $01   ; 
- D 0 - I - 0x0118A7 04:9897: 22        .byte $22   ; 
- D 0 - I - 0x0118A8 04:9898: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x0118A9 04:9899: 92        .byte $92   ; 
- D 0 - I - 0x0118AA 04:989A: B2        .byte $B2   ; 
- D 0 - I - 0x0118AB 04:989B: E1        .byte con_se_cb_1_E0 + $01   ; 
- D 0 - I - 0x0118AC 04:989C: 42        .byte $42   ; 
- D 0 - I - 0x0118AD 04:989D: 01        .byte $01   ; 
- D 0 - I - 0x0118AE 04:989E: 57        .byte $57   ; 
- D 0 - I - 0x0118AF 04:989F: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x0118B0 04:98A0: 22        .byte $22   ; 
- D 0 - I - 0x0118B1 04:98A1: 72        .byte $72   ; 
- D 0 - I - 0x0118B2 04:98A2: 42        .byte $42   ; 
- D 0 - I - 0x0118B3 04:98A3: 92        .byte $92   ; 
- D 0 - I - 0x0118B4 04:98A4: 51        .byte $51   ; 
- D 0 - I - 0x0118B5 04:98A5: A3        .byte $A3   ; 
- D 0 - I - 0x0118B6 04:98A6: 72        .byte $72   ; 
- D 0 - I - 0x0118B7 04:98A7: EB        .byte con_se_cb_1_EB, con_9E7B_50, $41   ; 
- D 0 - I - 0x0118BA 04:98AA: E1        .byte con_se_cb_1_E0 + $01   ; 
- D 0 - I - 0x0118BB 04:98AB: 06        .byte $06   ; 
- D 0 - I - 0x0118BC 04:98AC: EB        .byte con_se_cb_1_EB, $00   ; 
- D 0 - I - 0x0118BE 04:98AE: 00        .byte $00   ; 
- D 0 - I - 0x0118BF 04:98AF: 00        .byte $00   ; 
- D 0 - I - 0x0118C0 04:98B0: 00        .byte $00   ; 
- D 0 - I - 0x0118C1 04:98B1: 00        .byte $00   ; 
- D 0 - I - 0x0118C2 04:98B2: D1        .byte con_se_cb_1_D0 + $01, $39, con_9E25_04 + $80   ; 
- D 0 - I - 0x0118C5 04:98B5: 00        .byte $00   ; 
- D 0 - I - 0x0118C6 04:98B6: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x0118C7 04:98B7: 99        .byte $99   ; 
- D 0 - I - 0x0118C8 04:98B8: D1        .byte con_se_cb_1_D0 + $01, $34, con_9E25_00 + $80   ; 
- D 0 - I - 0x0118CB 04:98BB: 00        .byte $00   ; 
- D 0 - I - 0x0118CC 04:98BC: 80        .byte $80   ; 
- D 0 - I - 0x0118CD 04:98BD: 70        .byte $70   ; 
- D 0 - I - 0x0118CE 04:98BE: 60        .byte $60   ; 
- D 0 - I - 0x0118CF 04:98BF: F1        .byte con_se_cb_1_F0 + $01   ; 
- D 0 - I - 0x0118D0 04:98C0: 50        .byte $50   ; 
- D 0 - I - 0x0118D1 04:98C1: 40        .byte $40   ; 
- D 0 - I - 0x0118D2 04:98C2: 30        .byte $30   ; 
- D 0 - I - 0x0118D3 04:98C3: 20        .byte $20   ; 
- D 0 - I - 0x0118D4 04:98C4: F2        .byte con_se_cb_1_F0 + $02   ; 
- D 0 - I - 0x0118D5 04:98C5: 10        .byte $10   ; 
- D 0 - I - 0x0118D6 04:98C6: 00        .byte $00   ; 
- D 0 - I - 0x0118D7 04:98C7: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x0118D8 04:98C8: B0        .byte $B0   ; 
- D 0 - I - 0x0118D9 04:98C9: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x0118DA 04:98CA: 99        .byte $99   ; 
- D 0 - I - 0x0118DB 04:98CB: F3        .byte con_se_cb_1_F0 + $03   ; 
- D 0 - I - 0x0118DC 04:98CC: 80        .byte $80   ; 
- D 0 - I - 0x0118DD 04:98CD: 70        .byte $70   ; 
- D 0 - I - 0x0118DE 04:98CE: 60        .byte $60   ; 
- D 0 - I - 0x0118DF 04:98CF: F4        .byte con_se_cb_1_F0 + $04   ; 
- D 0 - I - 0x0118E0 04:98D0: 50        .byte $50   ; 
- D 0 - I - 0x0118E1 04:98D1: 40        .byte $40   ; 
- D 0 - I - 0x0118E2 04:98D2: 30        .byte $30   ; 
- D 0 - I - 0x0118E3 04:98D3: 20        .byte $20   ; 
- D 0 - I - 0x0118E4 04:98D4: F5        .byte con_se_cb_1_F0 + $05   ; 
- D 0 - I - 0x0118E5 04:98D5: 10        .byte $10   ; 
- D 0 - I - 0x0118E6 04:98D6: 00        .byte $00   ; 
- D 0 - I - 0x0118E7 04:98D7: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x0118E8 04:98D8: B0        .byte $B0   ; 
- D 0 - I - 0x0118E9 04:98D9: E6        .byte con_se_cb_1_E6, $0A   ; 
- D 0 - I - 0x0118EB 04:98DB: C1        .byte con_se_cb_1_C0 + $01   ; 
- D 0 - I - 0x0118EC 04:98DC: D1        .byte con_se_cb_1_D0 + $01, $39, con_9E25_04 + $80   ; 
- D 0 - I - 0x0118EF 04:98DF: 00        .byte $00   ; 
- D 0 - I - 0x0118F0 04:98E0: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x0118F1 04:98E1: 99        .byte $99   ; 
- D 0 - I - 0x0118F2 04:98E2: D1        .byte con_se_cb_1_D0 + $01, $34, con_9E25_00 + $80   ; 
- D 0 - I - 0x0118F5 04:98E5: 00        .byte $00   ; 
- D 0 - I - 0x0118F6 04:98E6: 80        .byte $80   ; 
- D 0 - I - 0x0118F7 04:98E7: 70        .byte $70   ; 
- D 0 - I - 0x0118F8 04:98E8: 60        .byte $60   ; 
- D 0 - I - 0x0118F9 04:98E9: F1        .byte con_se_cb_1_F0 + $01   ; 
- D 0 - I - 0x0118FA 04:98EA: 50        .byte $50   ; 
- D 0 - I - 0x0118FB 04:98EB: 40        .byte $40   ; 
- D 0 - I - 0x0118FC 04:98EC: 30        .byte $30   ; 
- D 0 - I - 0x0118FD 04:98ED: 20        .byte $20   ; 
- D 0 - I - 0x0118FE 04:98EE: F2        .byte con_se_cb_1_F0 + $02   ; 
- D 0 - I - 0x0118FF 04:98EF: 10        .byte $10   ; 
- D 0 - I - 0x011900 04:98F0: 00        .byte $00   ; 
- D 0 - I - 0x011901 04:98F1: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x011902 04:98F2: B0        .byte $B0   ; 
- D 0 - I - 0x011903 04:98F3: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x011904 04:98F4: 99        .byte $99   ; 
- D 0 - I - 0x011905 04:98F5: F3        .byte con_se_cb_1_F0 + $03   ; 
- D 0 - I - 0x011906 04:98F6: 80        .byte $80   ; 
- D 0 - I - 0x011907 04:98F7: 70        .byte $70   ; 
- D 0 - I - 0x011908 04:98F8: 60        .byte $60   ; 
- D 0 - I - 0x011909 04:98F9: F4        .byte con_se_cb_1_F0 + $04   ; 
- D 0 - I - 0x01190A 04:98FA: 50        .byte $50   ; 
- D 0 - I - 0x01190B 04:98FB: 40        .byte $40   ; 
- D 0 - I - 0x01190C 04:98FC: 30        .byte $30   ; 
- D 0 - I - 0x01190D 04:98FD: 20        .byte $20   ; 
- D 0 - I - 0x01190E 04:98FE: F5        .byte con_se_cb_1_F0 + $05   ; 
- D 0 - I - 0x01190F 04:98FF: 10        .byte $10   ; 
- D 0 - I - 0x011910 04:9900: 00        .byte $00   ; 
- D 0 - I - 0x011911 04:9901: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x011912 04:9902: B0        .byte $B0   ; 
- D 0 - I - 0x011913 04:9903: D1        .byte con_se_cb_1_D0 + $01, $39, con_9E25_04 + $80   ; 
- D 0 - I - 0x011916 04:9906: 00        .byte $00   ; 
- D 0 - I - 0x011917 04:9907: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x011918 04:9908: 99        .byte $99   ; 
- D 0 - I - 0x011919 04:9909: D1        .byte con_se_cb_1_D0 + $01, $34, con_9E25_00 + $80   ; 
- D 0 - I - 0x01191C 04:990C: 00        .byte $00   ; 
- D 0 - I - 0x01191D 04:990D: 80        .byte $80   ; 
- D 0 - I - 0x01191E 04:990E: 70        .byte $70   ; 
- D 0 - I - 0x01191F 04:990F: 60        .byte $60   ; 
- D 0 - I - 0x011920 04:9910: F1        .byte con_se_cb_1_F0 + $01   ; 
- D 0 - I - 0x011921 04:9911: 50        .byte $50   ; 
- D 0 - I - 0x011922 04:9912: 40        .byte $40   ; 
- D 0 - I - 0x011923 04:9913: 30        .byte $30   ; 
- D 0 - I - 0x011924 04:9914: 20        .byte $20   ; 
- D 0 - I - 0x011925 04:9915: F2        .byte con_se_cb_1_F0 + $02   ; 
- D 0 - I - 0x011926 04:9916: 10        .byte $10   ; 
- D 0 - I - 0x011927 04:9917: 00        .byte $00   ; 
- D 0 - I - 0x011928 04:9918: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x011929 04:9919: B0        .byte $B0   ; 
- D 0 - I - 0x01192A 04:991A: FB        .byte con_se_cb_1_FB   ; 
- D 0 - I - 0x01192B 04:991B: D1        .byte con_se_cb_1_D0 + $01, $39, con_9E25_04 + $80   ; 
- D 0 - I - 0x01192E 04:991E: 00        .byte $00   ; 
- D 0 - I - 0x01192F 04:991F: E1        .byte con_se_cb_1_E0 + $01   ; 
- D 0 - I - 0x011930 04:9920: 19        .byte $19   ; 
- D 0 - I - 0x011931 04:9921: D1        .byte con_se_cb_1_D0 + $01, $34, con_9E25_00 + $80   ; 
- D 0 - I - 0x011934 04:9924: 00        .byte $00   ; 
- D 0 - I - 0x011935 04:9925: 00        .byte $00   ; 
- D 0 - I - 0x011936 04:9926: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x011937 04:9927: B0        .byte $B0   ; 
- D 0 - I - 0x011938 04:9928: A0        .byte $A0   ; 
- D 0 - I - 0x011939 04:9929: F1        .byte con_se_cb_1_F0 + $01   ; 
- D 0 - I - 0x01193A 04:992A: 90        .byte $90   ; 
- D 0 - I - 0x01193B 04:992B: 80        .byte $80   ; 
- D 0 - I - 0x01193C 04:992C: F2        .byte con_se_cb_1_F0 + $02   ; 
- D 0 - I - 0x01193D 04:992D: 70        .byte $70   ; 
- D 0 - I - 0x01193E 04:992E: 60        .byte $60   ; 
- D 0 - I - 0x01193F 04:992F: F3        .byte con_se_cb_1_F0 + $03   ; 
- D 0 - I - 0x011940 04:9930: 50        .byte $50   ; 
- D 0 - I - 0x011941 04:9931: 40        .byte $40   ; 
- D 0 - I - 0x011942 04:9932: F4        .byte con_se_cb_1_F0 + $04   ; 
- D 0 - I - 0x011943 04:9933: 30        .byte $30   ; 
- D 0 - I - 0x011944 04:9934: EA        .byte con_se_cb_1_EA, $8C   ; 
- D 0 - I - 0x011946 04:9936: FE        .byte con_se_cb_1_FE, $02   ; 
- D 0 - I - 0x011948 04:9938: EA        .byte con_se_cb_1_EA, $00   ; 
- D 0 - I - 0x01194A 04:993A: D1        .byte con_se_cb_1_D0 + $01, $39, con_9E25_04 + $80   ; 
- D 0 - I - 0x01194D 04:993D: 00        .byte $00   ; 
- D 0 - I - 0x01194E 04:993E: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x01194F 04:993F: 99        .byte $99   ; 
- D 0 - I - 0x011950 04:9940: D1        .byte con_se_cb_1_D0 + $01, $34, con_9E25_00 + $80   ; 
- D 0 - I - 0x011953 04:9943: 00        .byte $00   ; 
- D 0 - I - 0x011954 04:9944: 80        .byte $80   ; 
- D 0 - I - 0x011955 04:9945: 70        .byte $70   ; 
- D 0 - I - 0x011956 04:9946: 60        .byte $60   ; 
- D 0 - I - 0x011957 04:9947: F1        .byte con_se_cb_1_F0 + $01   ; 
- D 0 - I - 0x011958 04:9948: 50        .byte $50   ; 
- D 0 - I - 0x011959 04:9949: 40        .byte $40   ; 
- D 0 - I - 0x01195A 04:994A: F2        .byte con_se_cb_1_F0 + $02   ; 
- D 0 - I - 0x01195B 04:994B: 30        .byte $30   ; 
- D 0 - I - 0x01195C 04:994C: 20        .byte $20   ; 
- D 0 - I - 0x01195D 04:994D: F3        .byte con_se_cb_1_F0 + $03   ; 
- D 0 - I - 0x01195E 04:994E: 10        .byte $10   ; 
- D 0 - I - 0x01195F 04:994F: 00        .byte $00   ; 
- D 0 - I - 0x011960 04:9950: F4        .byte con_se_cb_1_F0 + $04   ; 
- D 0 - I - 0x011961 04:9951: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x011962 04:9952: B0        .byte $B0   ; 
- D 0 - I - 0x011963 04:9953: D1        .byte con_se_cb_1_D0 + $01, $39, con_9E25_04 + $80   ; 
- D 0 - I - 0x011966 04:9956: 00        .byte $00   ; 
- D 0 - I - 0x011967 04:9957: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x011968 04:9958: 79        .byte $79   ; 
- D 0 - I - 0x011969 04:9959: D1        .byte con_se_cb_1_D0 + $01, $34, con_9E25_00 + $80   ; 
- D 0 - I - 0x01196C 04:995C: 00        .byte $00   ; 
- D 0 - I - 0x01196D 04:995D: 60        .byte $60   ; 
- D 0 - I - 0x01196E 04:995E: 50        .byte $50   ; 
- D 0 - I - 0x01196F 04:995F: 40        .byte $40   ; 
- D 0 - I - 0x011970 04:9960: F1        .byte con_se_cb_1_F0 + $01   ; 
- D 0 - I - 0x011971 04:9961: 30        .byte $30   ; 
- D 0 - I - 0x011972 04:9962: 20        .byte $20   ; 
- D 0 - I - 0x011973 04:9963: F2        .byte con_se_cb_1_F0 + $02   ; 
- D 0 - I - 0x011974 04:9964: 10        .byte $10   ; 
- D 0 - I - 0x011975 04:9965: 00        .byte $00   ; 
- D 0 - I - 0x011976 04:9966: F3        .byte con_se_cb_1_F0 + $03   ; 
- D 0 - I - 0x011977 04:9967: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x011978 04:9968: B0        .byte $B0   ; 
- D 0 - I - 0x011979 04:9969: A0        .byte $A0   ; 
- D 0 - I - 0x01197A 04:996A: F4        .byte con_se_cb_1_F0 + $04   ; 
- D 0 - I - 0x01197B 04:996B: 90        .byte $90   ; 
- D 0 - I - 0x01197C 04:996C: D1        .byte con_se_cb_1_D0 + $01, $39, con_9E25_04 + $80   ; 
- D 0 - I - 0x01197F 04:996F: 00        .byte $00   ; 
- D 0 - I - 0x011980 04:9970: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x011981 04:9971: 89        .byte $89   ; 
- D 0 - I - 0x011982 04:9972: D1        .byte con_se_cb_1_D0 + $01, $34, con_9E25_00 + $80   ; 
- D 0 - I - 0x011985 04:9975: 00        .byte $00   ; 
- D 0 - I - 0x011986 04:9976: 70        .byte $70   ; 
- D 0 - I - 0x011987 04:9977: 60        .byte $60   ; 
- D 0 - I - 0x011988 04:9978: 50        .byte $50   ; 
- D 0 - I - 0x011989 04:9979: F1        .byte con_se_cb_1_F0 + $01   ; 
- D 0 - I - 0x01198A 04:997A: 40        .byte $40   ; 
- D 0 - I - 0x01198B 04:997B: 30        .byte $30   ; 
- D 0 - I - 0x01198C 04:997C: F2        .byte con_se_cb_1_F0 + $02   ; 
- D 0 - I - 0x01198D 04:997D: 20        .byte $20   ; 
- D 0 - I - 0x01198E 04:997E: 10        .byte $10   ; 
- D 0 - I - 0x01198F 04:997F: F3        .byte con_se_cb_1_F0 + $03   ; 
- D 0 - I - 0x011990 04:9980: 00        .byte $00   ; 
- D 0 - I - 0x011991 04:9981: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x011992 04:9982: B0        .byte $B0   ; 
- D 0 - I - 0x011993 04:9983: F4        .byte con_se_cb_1_F0 + $04   ; 
- D 0 - I - 0x011994 04:9984: A0        .byte $A0   ; 
- D 0 - I - 0x011995 04:9985: D1        .byte con_se_cb_1_D0 + $01, $39, con_9E25_04 + $80   ; 
- D 0 - I - 0x011998 04:9988: 00        .byte $00   ; 
- D 0 - I - 0x011999 04:9989: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x01199A 04:998A: 99        .byte $99   ; 
- D 0 - I - 0x01199B 04:998B: D1        .byte con_se_cb_1_D0 + $01, $34, con_9E25_00 + $80   ; 
- D 0 - I - 0x01199E 04:998E: 00        .byte $00   ; 
- D 0 - I - 0x01199F 04:998F: 80        .byte $80   ; 
- D 0 - I - 0x0119A0 04:9990: 70        .byte $70   ; 
- D 0 - I - 0x0119A1 04:9991: 60        .byte $60   ; 
- D 0 - I - 0x0119A2 04:9992: F1        .byte con_se_cb_1_F0 + $01   ; 
- D 0 - I - 0x0119A3 04:9993: 50        .byte $50   ; 
- D 0 - I - 0x0119A4 04:9994: 40        .byte $40   ; 
- D 0 - I - 0x0119A5 04:9995: F2        .byte con_se_cb_1_F0 + $02   ; 
- D 0 - I - 0x0119A6 04:9996: 30        .byte $30   ; 
- D 0 - I - 0x0119A7 04:9997: 20        .byte $20   ; 
- D 0 - I - 0x0119A8 04:9998: F3        .byte con_se_cb_1_F0 + $03   ; 
- D 0 - I - 0x0119A9 04:9999: 10        .byte $10   ; 
- D 0 - I - 0x0119AA 04:999A: 00        .byte $00   ; 
- D 0 - I - 0x0119AB 04:999B: F4        .byte con_se_cb_1_F0 + $04   ; 
- D 0 - I - 0x0119AC 04:999C: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x0119AD 04:999D: B0        .byte $B0   ; 
- D 0 - I - 0x0119AE 04:999E: FE        .byte con_se_cb_1_FE, $FF   ; 
- D 0 - I - 0x0119B0 04:99A0: C6 97     .word off_FE_97C6



off_ch_02_0x0119B2_5E:
off_FE_99A2:
- D 0 - I - 0x0119B2 04:99A2: D1        .byte con_se_cb_1_D0 + $01, $00   ; 
- D 0 - I - 0x0119B4 04:99A4: E1        .byte con_se_cb_1_E0 + $01   ; 
- D 0 - I - 0x0119B5 04:99A5: 29        .byte $29   ; 
- D 0 - I - 0x0119B6 04:99A6: 10        .byte $10   ; 
- D 0 - I - 0x0119B7 04:99A7: 00        .byte $00   ; 
- D 0 - I - 0x0119B8 04:99A8: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x0119B9 04:99A9: B0        .byte $B0   ; 
- D 0 - I - 0x0119BA 04:99AA: A0        .byte $A0   ; 
- D 0 - I - 0x0119BB 04:99AB: 90        .byte $90   ; 
- D 0 - I - 0x0119BC 04:99AC: 80        .byte $80   ; 
- D 0 - I - 0x0119BD 04:99AD: 70        .byte $70   ; 
- D 0 - I - 0x0119BE 04:99AE: 60        .byte $60   ; 
- D 0 - I - 0x0119BF 04:99AF: 50        .byte $50   ; 
- D 0 - I - 0x0119C0 04:99B0: 40        .byte $40   ; 
- D 0 - I - 0x0119C1 04:99B1: DA        .byte con_se_cb_1_D0 + $0A, $12   ; 
- D 0 - I - 0x0119C3 04:99B3: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 0 - I - 0x0119C4 04:99B4: 21        .byte $21   ; 
- D 0 - I - 0x0119C5 04:99B5: 21        .byte $21   ; 
- D 0 - I - 0x0119C6 04:99B6: 21        .byte $21   ; 
- D 0 - I - 0x0119C7 04:99B7: 21        .byte $21   ; 
- D 0 - I - 0x0119C8 04:99B8: 21        .byte $21   ; 
- D 0 - I - 0x0119C9 04:99B9: 21        .byte $21   ; 
- D 0 - I - 0x0119CA 04:99BA: 21        .byte $21   ; 
- D 0 - I - 0x0119CB 04:99BB: 21        .byte $21   ; 
- D 0 - I - 0x0119CC 04:99BC: 21        .byte $21   ; 
- D 0 - I - 0x0119CD 04:99BD: 21        .byte $21   ; 
- D 0 - I - 0x0119CE 04:99BE: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 0 - I - 0x0119CF 04:99BF: FB        .byte con_se_cb_1_FB   ; 
- D 0 - I - 0x0119D0 04:99C0: 21        .byte $21   ; 
- D 0 - I - 0x0119D1 04:99C1: 21        .byte $21   ; 
- D 0 - I - 0x0119D2 04:99C2: 21        .byte $21   ; 
- D 0 - I - 0x0119D3 04:99C3: 21        .byte $21   ; 
- D 0 - I - 0x0119D4 04:99C4: 21        .byte $21   ; 
- D 0 - I - 0x0119D5 04:99C5: 21        .byte $21   ; 
- D 0 - I - 0x0119D6 04:99C6: 21        .byte $21   ; 
- D 0 - I - 0x0119D7 04:99C7: 21        .byte $21   ; 
- D 0 - I - 0x0119D8 04:99C8: 21        .byte $21   ; 
- D 0 - I - 0x0119D9 04:99C9: 21        .byte $21   ; 
- D 0 - I - 0x0119DA 04:99CA: 21        .byte $21   ; 
- D 0 - I - 0x0119DB 04:99CB: FE        .byte con_se_cb_1_FE, $04   ; 
- D 0 - I - 0x0119DD 04:99CD: D1        .byte con_se_cb_1_D0 + $01, $00   ; 
- D 0 - I - 0x0119DF 04:99CF: E1        .byte con_se_cb_1_E0 + $01   ; 
- D 0 - I - 0x0119E0 04:99D0: 29        .byte $29   ; 
- D 0 - I - 0x0119E1 04:99D1: 10        .byte $10   ; 
- D 0 - I - 0x0119E2 04:99D2: 00        .byte $00   ; 
- D 0 - I - 0x0119E3 04:99D3: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x0119E4 04:99D4: B0        .byte $B0   ; 
- D 0 - I - 0x0119E5 04:99D5: A0        .byte $A0   ; 
- D 0 - I - 0x0119E6 04:99D6: 90        .byte $90   ; 
- D 0 - I - 0x0119E7 04:99D7: 80        .byte $80   ; 
- D 0 - I - 0x0119E8 04:99D8: 70        .byte $70   ; 
- D 0 - I - 0x0119E9 04:99D9: 60        .byte $60   ; 
- D 0 - I - 0x0119EA 04:99DA: 50        .byte $50   ; 
- D 0 - I - 0x0119EB 04:99DB: 40        .byte $40   ; 
- D 0 - I - 0x0119EC 04:99DC: DA        .byte con_se_cb_1_D0 + $0A, $12   ; 
- D 0 - I - 0x0119EE 04:99DE: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 0 - I - 0x0119EF 04:99DF: 21        .byte $21   ; 
- D 0 - I - 0x0119F0 04:99E0: 21        .byte $21   ; 
- D 0 - I - 0x0119F1 04:99E1: 21        .byte $21   ; 
- D 0 - I - 0x0119F2 04:99E2: 21        .byte $21   ; 
- D 0 - I - 0x0119F3 04:99E3: 21        .byte $21   ; 
- D 0 - I - 0x0119F4 04:99E4: 21        .byte $21   ; 
- D 0 - I - 0x0119F5 04:99E5: 21        .byte $21   ; 
- D 0 - I - 0x0119F6 04:99E6: 21        .byte $21   ; 
- D 0 - I - 0x0119F7 04:99E7: 21        .byte $21   ; 
- D 0 - I - 0x0119F8 04:99E8: 21        .byte $21   ; 
- D 0 - I - 0x0119F9 04:99E9: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x0119FA 04:99EA: 20        .byte $20   ; 
- D 0 - I - 0x0119FB 04:99EB: 90        .byte $90   ; 
- D 0 - I - 0x0119FC 04:99EC: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x0119FD 04:99ED: 20        .byte $20   ; 
- D 0 - I - 0x0119FE 04:99EE: 50        .byte $50   ; 
- D 0 - I - 0x0119FF 04:99EF: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 0 - I - 0x011A00 04:99F0: FB        .byte con_se_cb_1_FB   ; 
- D 0 - I - 0x011A01 04:99F1: 21        .byte $21   ; 
- D 0 - I - 0x011A02 04:99F2: FE        .byte con_se_cb_1_FE, $14   ; 
- D 0 - I - 0x011A04 04:99F4: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x011A05 04:99F5: 20        .byte $20   ; 
- D 0 - I - 0x011A06 04:99F6: 90        .byte $90   ; 
- D 0 - I - 0x011A07 04:99F7: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x011A08 04:99F8: 20        .byte $20   ; 
- D 0 - I - 0x011A09 04:99F9: 50        .byte $50   ; 
- D 0 - I - 0x011A0A 04:99FA: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 0 - I - 0x011A0B 04:99FB: FB        .byte con_se_cb_1_FB   ; 
- D 0 - I - 0x011A0C 04:99FC: 21        .byte $21   ; 
- D 0 - I - 0x011A0D 04:99FD: FE        .byte con_se_cb_1_FE, $14   ; 
- D 0 - I - 0x011A0F 04:99FF: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 0 - I - 0x011A10 04:9A00: FB        .byte con_se_cb_1_FB   ; 
- D 0 - I - 0x011A11 04:9A01: 21        .byte $21   ; 
- D 0 - I - 0x011A12 04:9A02: 21        .byte $21   ; 
- D 0 - I - 0x011A13 04:9A03: 21        .byte $21   ; 
- D 0 - I - 0x011A14 04:9A04: 21        .byte $21   ; 
- D 0 - I - 0x011A15 04:9A05: 21        .byte $21   ; 
- D 0 - I - 0x011A16 04:9A06: 21        .byte $21   ; 
- D 0 - I - 0x011A17 04:9A07: 21        .byte $21   ; 
- D 0 - I - 0x011A18 04:9A08: 21        .byte $21   ; 
- D 0 - I - 0x011A19 04:9A09: 21        .byte $21   ; 
- D 0 - I - 0x011A1A 04:9A0A: 21        .byte $21   ; 
- D 0 - I - 0x011A1B 04:9A0B: 21        .byte $21   ; 
- D 0 - I - 0x011A1C 04:9A0C: FE        .byte con_se_cb_1_FE, $02   ; 
- D 0 - I - 0x011A1E 04:9A0E: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 0 - I - 0x011A1F 04:9A0F: 21        .byte $21   ; 
- D 0 - I - 0x011A20 04:9A10: 21        .byte $21   ; 
- D 0 - I - 0x011A21 04:9A11: 21        .byte $21   ; 
- D 0 - I - 0x011A22 04:9A12: 21        .byte $21   ; 
- D 0 - I - 0x011A23 04:9A13: 21        .byte $21   ; 
- D 0 - I - 0x011A24 04:9A14: 21        .byte $21   ; 
- D 0 - I - 0x011A25 04:9A15: 21        .byte $21   ; 
- D 0 - I - 0x011A26 04:9A16: 21        .byte $21   ; 
- D 0 - I - 0x011A27 04:9A17: 21        .byte $21   ; 
- D 0 - I - 0x011A28 04:9A18: 21        .byte $21   ; 
- D 0 - I - 0x011A29 04:9A19: 21        .byte $21   ; 
- D 0 - I - 0x011A2A 04:9A1A: 41        .byte $41   ; 
- D 0 - I - 0x011A2B 04:9A1B: 41        .byte $41   ; 
- D 0 - I - 0x011A2C 04:9A1C: 41        .byte $41   ; 
- D 0 - I - 0x011A2D 04:9A1D: 41        .byte $41   ; 
- D 0 - I - 0x011A2E 04:9A1E: 41        .byte $41   ; 
- D 0 - I - 0x011A2F 04:9A1F: 41        .byte $41   ; 
- D 0 - I - 0x011A30 04:9A20: 41        .byte $41   ; 
- D 0 - I - 0x011A31 04:9A21: 41        .byte $41   ; 
- D 0 - I - 0x011A32 04:9A22: 41        .byte $41   ; 
- D 0 - I - 0x011A33 04:9A23: 41        .byte $41   ; 
- D 0 - I - 0x011A34 04:9A24: 41        .byte $41   ; 
- D 0 - I - 0x011A35 04:9A25: 41        .byte $41   ; 
- D 0 - I - 0x011A36 04:9A26: 41        .byte $41   ; 
- D 0 - I - 0x011A37 04:9A27: 41        .byte $41   ; 
- D 0 - I - 0x011A38 04:9A28: 91        .byte $91   ; 
- D 0 - I - 0x011A39 04:9A29: 91        .byte $91   ; 
- D 0 - I - 0x011A3A 04:9A2A: D1        .byte con_se_cb_1_D0 + $01, $00   ; 
- D 0 - I - 0x011A3C 04:9A2C: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x011A3D 04:9A2D: 99        .byte $99   ; 
- D 0 - I - 0x011A3E 04:9A2E: 80        .byte $80   ; 
- D 0 - I - 0x011A3F 04:9A2F: 70        .byte $70   ; 
- D 0 - I - 0x011A40 04:9A30: 60        .byte $60   ; 
- D 0 - I - 0x011A41 04:9A31: 50        .byte $50   ; 
- D 0 - I - 0x011A42 04:9A32: 40        .byte $40   ; 
- D 0 - I - 0x011A43 04:9A33: 30        .byte $30   ; 
- D 0 - I - 0x011A44 04:9A34: 20        .byte $20   ; 
- D 0 - I - 0x011A45 04:9A35: 10        .byte $10   ; 
- D 0 - I - 0x011A46 04:9A36: 00        .byte $00   ; 
- D 0 - I - 0x011A47 04:9A37: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 0 - I - 0x011A48 04:9A38: B0        .byte $B0   ; 
- D 0 - I - 0x011A49 04:9A39: DA        .byte con_se_cb_1_D0 + $0A, $12   ; 
- D 0 - I - 0x011A4B 04:9A3B: E5        .byte con_se_cb_1_E0 + $05   ; 
- D 0 - I - 0x011A4C 04:9A3C: 91        .byte $91   ; 
- D 0 - I - 0x011A4D 04:9A3D: 91        .byte $91   ; 
- D 0 - I - 0x011A4E 04:9A3E: D1        .byte con_se_cb_1_D0 + $01, $00   ; 
- D 0 - I - 0x011A50 04:9A40: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x011A51 04:9A41: 99        .byte $99   ; 
- D 0 - I - 0x011A52 04:9A42: 80        .byte $80   ; 
- D 0 - I - 0x011A53 04:9A43: 70        .byte $70   ; 
- D 0 - I - 0x011A54 04:9A44: 60        .byte $60   ; 
- D 0 - I - 0x011A55 04:9A45: 50        .byte $50   ; 
- D 0 - I - 0x011A56 04:9A46: 40        .byte $40   ; 
- D 0 - I - 0x011A57 04:9A47: 30        .byte $30   ; 
- D 0 - I - 0x011A58 04:9A48: 20        .byte $20   ; 
- D 0 - I - 0x011A59 04:9A49: 10        .byte $10   ; 
- D 0 - I - 0x011A5A 04:9A4A: 00        .byte $00   ; 
- D 0 - I - 0x011A5B 04:9A4B: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 0 - I - 0x011A5C 04:9A4C: B0        .byte $B0   ; 
- D 0 - I - 0x011A5D 04:9A4D: DA        .byte con_se_cb_1_D0 + $0A, $12   ; 
- D 0 - I - 0x011A5F 04:9A4F: E5        .byte con_se_cb_1_E0 + $05   ; 
- D 0 - I - 0x011A60 04:9A50: 91        .byte $91   ; 
- D 0 - I - 0x011A61 04:9A51: D1        .byte con_se_cb_1_D0 + $01, $00   ; 
- D 0 - I - 0x011A63 04:9A53: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x011A64 04:9A54: 99        .byte $99   ; 
- D 0 - I - 0x011A65 04:9A55: 80        .byte $80   ; 
- D 0 - I - 0x011A66 04:9A56: 70        .byte $70   ; 
- D 0 - I - 0x011A67 04:9A57: 60        .byte $60   ; 
- D 0 - I - 0x011A68 04:9A58: 50        .byte $50   ; 
- D 0 - I - 0x011A69 04:9A59: 40        .byte $40   ; 
- D 0 - I - 0x011A6A 04:9A5A: 30        .byte $30   ; 
- D 0 - I - 0x011A6B 04:9A5B: 20        .byte $20   ; 
- D 0 - I - 0x011A6C 04:9A5C: 10        .byte $10   ; 
- D 0 - I - 0x011A6D 04:9A5D: 00        .byte $00   ; 
- D 0 - I - 0x011A6E 04:9A5E: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 0 - I - 0x011A6F 04:9A5F: B0        .byte $B0   ; 
- D 0 - I - 0x011A70 04:9A60: DA        .byte con_se_cb_1_D0 + $0A, $12   ; 
- D 0 - I - 0x011A72 04:9A62: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x011A73 04:9A63: 91        .byte $91   ; 
- D 0 - I - 0x011A74 04:9A64: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 0 - I - 0x011A75 04:9A65: 91        .byte $91   ; 
- D 0 - I - 0x011A76 04:9A66: 91        .byte $91   ; 
- D 0 - I - 0x011A77 04:9A67: 71        .byte $71   ; 
- D 0 - I - 0x011A78 04:9A68: 81        .byte $81   ; 
- D 0 - I - 0x011A79 04:9A69: 91        .byte $91   ; 
- D 0 - I - 0x011A7A 04:9A6A: FE        .byte con_se_cb_1_FE, $FF   ; 
- D 0 - I - 0x011A7C 04:9A6C: A2 99     .word off_FE_99A2



off_ch_05_0x011A7E_5E:
off_FE_9A6E:
- D 0 - I - 0x011A7E 04:9A6E: D1        .byte $D1   ; 
- D 0 - I - 0x011A7F 04:9A6F: B0        .byte $B0   ; 
- D 0 - I - 0x011A80 04:9A70: 28        .byte $28   ; 
- D 0 - I - 0x011A81 04:9A71: 19        .byte $19   ; 
- D 0 - I - 0x011A82 04:9A72: B0        .byte $B0   ; 
- D 0 - I - 0x011A83 04:9A73: 18        .byte $18   ; 
- D 0 - I - 0x011A84 04:9A74: 19        .byte $19   ; 
- D 0 - I - 0x011A85 04:9A75: A0        .byte $A0   ; 
- D 0 - I - 0x011A86 04:9A76: 28        .byte $28   ; 
- D 0 - I - 0x011A87 04:9A77: 19        .byte $19   ; 
- D 0 - I - 0x011A88 04:9A78: B0        .byte $B0   ; 
- D 0 - I - 0x011A89 04:9A79: 18        .byte $18   ; 
- D 0 - I - 0x011A8A 04:9A7A: B0        .byte $B0   ; 
- D 0 - I - 0x011A8B 04:9A7B: 18        .byte $18   ; 
- D 0 - I - 0x011A8C 04:9A7C: 19        .byte $19   ; 
- D 0 - I - 0x011A8D 04:9A7D: A0        .byte $A0   ; 
- D 0 - I - 0x011A8E 04:9A7E: 28        .byte $28   ; 
- D 0 - I - 0x011A8F 04:9A7F: 19        .byte $19   ; 
- D 0 - I - 0x011A90 04:9A80: B0        .byte $B0   ; 
- D 0 - I - 0x011A91 04:9A81: 18        .byte $18   ; 
- D 0 - I - 0x011A92 04:9A82: 19        .byte $19   ; 
- D 0 - I - 0x011A93 04:9A83: B0        .byte $B0   ; 
- D 0 - I - 0x011A94 04:9A84: 18        .byte $18   ; 
- D 0 - I - 0x011A95 04:9A85: A0        .byte $A0   ; 
- D 0 - I - 0x011A96 04:9A86: 18        .byte $18   ; 
- D 0 - I - 0x011A97 04:9A87: 29        .byte $29   ; 
- D 0 - I - 0x011A98 04:9A88: B0        .byte $B0   ; 
- D 0 - I - 0x011A99 04:9A89: 18        .byte $18   ; 
- D 0 - I - 0x011A9A 04:9A8A: B0        .byte $B0   ; 
- D 0 - I - 0x011A9B 04:9A8B: 18        .byte $18   ; 
- D 0 - I - 0x011A9C 04:9A8C: 19        .byte $19   ; 
- D 0 - I - 0x011A9D 04:9A8D: A0        .byte $A0   ; 
- D 0 - I - 0x011A9E 04:9A8E: 28        .byte $28   ; 
- D 0 - I - 0x011A9F 04:9A8F: 19        .byte $19   ; 
- D 0 - I - 0x011AA0 04:9A90: B0        .byte $B0   ; 
- D 0 - I - 0x011AA1 04:9A91: 28        .byte $28   ; 
- D 0 - I - 0x011AA2 04:9A92: FB        .byte con_se_cb_1_FB   ; 
- D 0 - I - 0x011AA3 04:9A93: B0        .byte $B0   ; 
- D 0 - I - 0x011AA4 04:9A94: 18        .byte $18   ; 
- D 0 - I - 0x011AA5 04:9A95: 19        .byte $19   ; 
- D 0 - I - 0x011AA6 04:9A96: B0        .byte $B0   ; 
- D 0 - I - 0x011AA7 04:9A97: 18        .byte $18   ; 
- D 0 - I - 0x011AA8 04:9A98: 19        .byte $19   ; 
- D 0 - I - 0x011AA9 04:9A99: A0        .byte $A0   ; 
- D 0 - I - 0x011AAA 04:9A9A: 28        .byte $28   ; 
- D 0 - I - 0x011AAB 04:9A9B: 19        .byte $19   ; 
- D 0 - I - 0x011AAC 04:9A9C: B0        .byte $B0   ; 
- D 0 - I - 0x011AAD 04:9A9D: 18        .byte $18   ; 
- D 0 - I - 0x011AAE 04:9A9E: B0        .byte $B0   ; 
- D 0 - I - 0x011AAF 04:9A9F: 18        .byte $18   ; 
- D 0 - I - 0x011AB0 04:9AA0: 19        .byte $19   ; 
- D 0 - I - 0x011AB1 04:9AA1: A0        .byte $A0   ; 
- D 0 - I - 0x011AB2 04:9AA2: 28        .byte $28   ; 
- D 0 - I - 0x011AB3 04:9AA3: 19        .byte $19   ; 
- D 0 - I - 0x011AB4 04:9AA4: B0        .byte $B0   ; 
- D 0 - I - 0x011AB5 04:9AA5: 18        .byte $18   ; 
- D 0 - I - 0x011AB6 04:9AA6: 19        .byte $19   ; 
- D 0 - I - 0x011AB7 04:9AA7: B0        .byte $B0   ; 
- D 0 - I - 0x011AB8 04:9AA8: 18        .byte $18   ; 
- D 0 - I - 0x011AB9 04:9AA9: A0        .byte $A0   ; 
- D 0 - I - 0x011ABA 04:9AAA: 18        .byte $18   ; 
- D 0 - I - 0x011ABB 04:9AAB: 29        .byte $29   ; 
- D 0 - I - 0x011ABC 04:9AAC: B0        .byte $B0   ; 
- D 0 - I - 0x011ABD 04:9AAD: 18        .byte $18   ; 
- D 0 - I - 0x011ABE 04:9AAE: B0        .byte $B0   ; 
- D 0 - I - 0x011ABF 04:9AAF: 18        .byte $18   ; 
- D 0 - I - 0x011AC0 04:9AB0: 19        .byte $19   ; 
- D 0 - I - 0x011AC1 04:9AB1: A0        .byte $A0   ; 
- D 0 - I - 0x011AC2 04:9AB2: 28        .byte $28   ; 
- D 0 - I - 0x011AC3 04:9AB3: 19        .byte $19   ; 
- D 0 - I - 0x011AC4 04:9AB4: B0        .byte $B0   ; 
- D 0 - I - 0x011AC5 04:9AB5: 18        .byte $18   ; 
- D 0 - I - 0x011AC6 04:9AB6: FE        .byte con_se_cb_1_FE, $04   ; 
- D 0 - I - 0x011AC8 04:9AB8: B0        .byte $B0   ; 
- D 0 - I - 0x011AC9 04:9AB9: 28        .byte $28   ; 
- D 0 - I - 0x011ACA 04:9ABA: 19        .byte $19   ; 
- D 0 - I - 0x011ACB 04:9ABB: B0        .byte $B0   ; 
- D 0 - I - 0x011ACC 04:9ABC: 18        .byte $18   ; 
- D 0 - I - 0x011ACD 04:9ABD: 19        .byte $19   ; 
- D 0 - I - 0x011ACE 04:9ABE: A0        .byte $A0   ; 
- D 0 - I - 0x011ACF 04:9ABF: 28        .byte $28   ; 
- D 0 - I - 0x011AD0 04:9AC0: 19        .byte $19   ; 
- D 0 - I - 0x011AD1 04:9AC1: B0        .byte $B0   ; 
- D 0 - I - 0x011AD2 04:9AC2: 18        .byte $18   ; 
- D 0 - I - 0x011AD3 04:9AC3: B0        .byte $B0   ; 
- D 0 - I - 0x011AD4 04:9AC4: 18        .byte $18   ; 
- D 0 - I - 0x011AD5 04:9AC5: 19        .byte $19   ; 
- D 0 - I - 0x011AD6 04:9AC6: A0        .byte $A0   ; 
- D 0 - I - 0x011AD7 04:9AC7: 28        .byte $28   ; 
- D 0 - I - 0x011AD8 04:9AC8: 19        .byte $19   ; 
- D 0 - I - 0x011AD9 04:9AC9: B0        .byte $B0   ; 
- D 0 - I - 0x011ADA 04:9ACA: 18        .byte $18   ; 
- D 0 - I - 0x011ADB 04:9ACB: 19        .byte $19   ; 
- D 0 - I - 0x011ADC 04:9ACC: B0        .byte $B0   ; 
- D 0 - I - 0x011ADD 04:9ACD: 18        .byte $18   ; 
- D 0 - I - 0x011ADE 04:9ACE: A0        .byte $A0   ; 
- D 0 - I - 0x011ADF 04:9ACF: 18        .byte $18   ; 
- D 0 - I - 0x011AE0 04:9AD0: 29        .byte $29   ; 
- D 0 - I - 0x011AE1 04:9AD1: B0        .byte $B0   ; 
- D 0 - I - 0x011AE2 04:9AD2: 18        .byte $18   ; 
- D 0 - I - 0x011AE3 04:9AD3: B0        .byte $B0   ; 
- D 0 - I - 0x011AE4 04:9AD4: 18        .byte $18   ; 
- D 0 - I - 0x011AE5 04:9AD5: 19        .byte $19   ; 
- D 0 - I - 0x011AE6 04:9AD6: A0        .byte $A0   ; 
- D 0 - I - 0x011AE7 04:9AD7: 28        .byte $28   ; 
- D 0 - I - 0x011AE8 04:9AD8: 19        .byte $19   ; 
- D 0 - I - 0x011AE9 04:9AD9: B0        .byte $B0   ; 
- D 0 - I - 0x011AEA 04:9ADA: 28        .byte $28   ; 
- D 0 - I - 0x011AEB 04:9ADB: FB        .byte con_se_cb_1_FB   ; 
- D 0 - I - 0x011AEC 04:9ADC: B0        .byte $B0   ; 
- D 0 - I - 0x011AED 04:9ADD: 18        .byte $18   ; 
- D 0 - I - 0x011AEE 04:9ADE: 19        .byte $19   ; 
- D 0 - I - 0x011AEF 04:9ADF: B0        .byte $B0   ; 
- D 0 - I - 0x011AF0 04:9AE0: 18        .byte $18   ; 
- D 0 - I - 0x011AF1 04:9AE1: 19        .byte $19   ; 
- D 0 - I - 0x011AF2 04:9AE2: A0        .byte $A0   ; 
- D 0 - I - 0x011AF3 04:9AE3: 28        .byte $28   ; 
- D 0 - I - 0x011AF4 04:9AE4: 19        .byte $19   ; 
- D 0 - I - 0x011AF5 04:9AE5: B0        .byte $B0   ; 
- D 0 - I - 0x011AF6 04:9AE6: 18        .byte $18   ; 
- D 0 - I - 0x011AF7 04:9AE7: B0        .byte $B0   ; 
- D 0 - I - 0x011AF8 04:9AE8: 18        .byte $18   ; 
- D 0 - I - 0x011AF9 04:9AE9: 19        .byte $19   ; 
- D 0 - I - 0x011AFA 04:9AEA: A0        .byte $A0   ; 
- D 0 - I - 0x011AFB 04:9AEB: 28        .byte $28   ; 
- D 0 - I - 0x011AFC 04:9AEC: 19        .byte $19   ; 
- D 0 - I - 0x011AFD 04:9AED: B0        .byte $B0   ; 
- D 0 - I - 0x011AFE 04:9AEE: 18        .byte $18   ; 
- D 0 - I - 0x011AFF 04:9AEF: 19        .byte $19   ; 
- D 0 - I - 0x011B00 04:9AF0: B0        .byte $B0   ; 
- D 0 - I - 0x011B01 04:9AF1: 18        .byte $18   ; 
- D 0 - I - 0x011B02 04:9AF2: A0        .byte $A0   ; 
- D 0 - I - 0x011B03 04:9AF3: 18        .byte $18   ; 
- D 0 - I - 0x011B04 04:9AF4: 29        .byte $29   ; 
- D 0 - I - 0x011B05 04:9AF5: B0        .byte $B0   ; 
- D 0 - I - 0x011B06 04:9AF6: 18        .byte $18   ; 
- D 0 - I - 0x011B07 04:9AF7: B0        .byte $B0   ; 
- D 0 - I - 0x011B08 04:9AF8: 18        .byte $18   ; 
- D 0 - I - 0x011B09 04:9AF9: 19        .byte $19   ; 
- D 0 - I - 0x011B0A 04:9AFA: A0        .byte $A0   ; 
- D 0 - I - 0x011B0B 04:9AFB: 28        .byte $28   ; 
- D 0 - I - 0x011B0C 04:9AFC: 19        .byte $19   ; 
- D 0 - I - 0x011B0D 04:9AFD: B0        .byte $B0   ; 
- D 0 - I - 0x011B0E 04:9AFE: 18        .byte $18   ; 
- D 0 - I - 0x011B0F 04:9AFF: FE        .byte con_se_cb_1_FE, $04   ; 
- D 0 - I - 0x011B11 04:9B01: B0        .byte $B0   ; 
- D 0 - I - 0x011B12 04:9B02: 18        .byte $18   ; 
- D 0 - I - 0x011B13 04:9B03: 19        .byte $19   ; 
- D 0 - I - 0x011B14 04:9B04: B0        .byte $B0   ; 
- D 0 - I - 0x011B15 04:9B05: 18        .byte $18   ; 
- D 0 - I - 0x011B16 04:9B06: 19        .byte $19   ; 
- D 0 - I - 0x011B17 04:9B07: A0        .byte $A0   ; 
- D 0 - I - 0x011B18 04:9B08: 28        .byte $28   ; 
- D 0 - I - 0x011B19 04:9B09: 19        .byte $19   ; 
- D 0 - I - 0x011B1A 04:9B0A: B0        .byte $B0   ; 
- D 0 - I - 0x011B1B 04:9B0B: 18        .byte $18   ; 
- D 0 - I - 0x011B1C 04:9B0C: B0        .byte $B0   ; 
- D 0 - I - 0x011B1D 04:9B0D: 18        .byte $18   ; 
- D 0 - I - 0x011B1E 04:9B0E: 19        .byte $19   ; 
- D 0 - I - 0x011B1F 04:9B0F: A0        .byte $A0   ; 
- D 0 - I - 0x011B20 04:9B10: 28        .byte $28   ; 
- D 0 - I - 0x011B21 04:9B11: 19        .byte $19   ; 
- D 0 - I - 0x011B22 04:9B12: B0        .byte $B0   ; 
- D 0 - I - 0x011B23 04:9B13: 18        .byte $18   ; 
- D 0 - I - 0x011B24 04:9B14: 19        .byte $19   ; 
- D 0 - I - 0x011B25 04:9B15: B0        .byte $B0   ; 
- D 0 - I - 0x011B26 04:9B16: 18        .byte $18   ; 
- D 0 - I - 0x011B27 04:9B17: A0        .byte $A0   ; 
- D 0 - I - 0x011B28 04:9B18: 18        .byte $18   ; 
- D 0 - I - 0x011B29 04:9B19: 29        .byte $29   ; 
- D 0 - I - 0x011B2A 04:9B1A: B0        .byte $B0   ; 
- D 0 - I - 0x011B2B 04:9B1B: 18        .byte $18   ; 
- D 0 - I - 0x011B2C 04:9B1C: B0        .byte $B0   ; 
- D 0 - I - 0x011B2D 04:9B1D: 18        .byte $18   ; 
- D 0 - I - 0x011B2E 04:9B1E: 19        .byte $19   ; 
- D 0 - I - 0x011B2F 04:9B1F: A0        .byte $A0   ; 
- D 0 - I - 0x011B30 04:9B20: 28        .byte $28   ; 
- D 0 - I - 0x011B31 04:9B21: 19        .byte $19   ; 
- D 0 - I - 0x011B32 04:9B22: B0        .byte $B0   ; 
- D 0 - I - 0x011B33 04:9B23: 18        .byte $18   ; 
- D 0 - I - 0x011B34 04:9B24: B0        .byte $B0   ; 
- D 0 - I - 0x011B35 04:9B25: 18        .byte $18   ; 
- D 0 - I - 0x011B36 04:9B26: 19        .byte $19   ; 
- D 0 - I - 0x011B37 04:9B27: B0        .byte $B0   ; 
- D 0 - I - 0x011B38 04:9B28: 18        .byte $18   ; 
- D 0 - I - 0x011B39 04:9B29: 19        .byte $19   ; 
- D 0 - I - 0x011B3A 04:9B2A: A0        .byte $A0   ; 
- D 0 - I - 0x011B3B 04:9B2B: 28        .byte $28   ; 
- D 0 - I - 0x011B3C 04:9B2C: 19        .byte $19   ; 
- D 0 - I - 0x011B3D 04:9B2D: B0        .byte $B0   ; 
- D 0 - I - 0x011B3E 04:9B2E: 18        .byte $18   ; 
- D 0 - I - 0x011B3F 04:9B2F: B0        .byte $B0   ; 
- D 0 - I - 0x011B40 04:9B30: 18        .byte $18   ; 
- D 0 - I - 0x011B41 04:9B31: 19        .byte $19   ; 
- D 0 - I - 0x011B42 04:9B32: A0        .byte $A0   ; 
- D 0 - I - 0x011B43 04:9B33: 28        .byte $28   ; 
- D 0 - I - 0x011B44 04:9B34: 19        .byte $19   ; 
- D 0 - I - 0x011B45 04:9B35: B0        .byte $B0   ; 
- D 0 - I - 0x011B46 04:9B36: 18        .byte $18   ; 
- D 0 - I - 0x011B47 04:9B37: 19        .byte $19   ; 
- D 0 - I - 0x011B48 04:9B38: B0        .byte $B0   ; 
- D 0 - I - 0x011B49 04:9B39: 18        .byte $18   ; 
- D 0 - I - 0x011B4A 04:9B3A: A0        .byte $A0   ; 
- D 0 - I - 0x011B4B 04:9B3B: 18        .byte $18   ; 
- D 0 - I - 0x011B4C 04:9B3C: 29        .byte $29   ; 
- D 0 - I - 0x011B4D 04:9B3D: B0        .byte $B0   ; 
- D 0 - I - 0x011B4E 04:9B3E: 18        .byte $18   ; 
- D 0 - I - 0x011B4F 04:9B3F: A0        .byte $A0   ; 
- D 0 - I - 0x011B50 04:9B40: 18        .byte $18   ; 
- D 0 - I - 0x011B51 04:9B41: A0        .byte $A0   ; 
- D 0 - I - 0x011B52 04:9B42: 18        .byte $18   ; 
- D 0 - I - 0x011B53 04:9B43: A0        .byte $A0   ; 
- D 0 - I - 0x011B54 04:9B44: 18        .byte $18   ; 
- D 0 - I - 0x011B55 04:9B45: A0        .byte $A0   ; 
- D 0 - I - 0x011B56 04:9B46: 18        .byte $18   ; 
- D 0 - I - 0x011B57 04:9B47: A0        .byte $A0   ; 
- D 0 - I - 0x011B58 04:9B48: 18        .byte $18   ; 
- D 0 - I - 0x011B59 04:9B49: B0        .byte $B0   ; 
- D 0 - I - 0x011B5A 04:9B4A: 18        .byte $18   ; 
- D 0 - I - 0x011B5B 04:9B4B: 19        .byte $19   ; 
- D 0 - I - 0x011B5C 04:9B4C: B0        .byte $B0   ; 
- D 0 - I - 0x011B5D 04:9B4D: 18        .byte $18   ; 
- D 0 - I - 0x011B5E 04:9B4E: 19        .byte $19   ; 
- D 0 - I - 0x011B5F 04:9B4F: A0        .byte $A0   ; 
- D 0 - I - 0x011B60 04:9B50: 28        .byte $28   ; 
- D 0 - I - 0x011B61 04:9B51: 19        .byte $19   ; 
- D 0 - I - 0x011B62 04:9B52: B0        .byte $B0   ; 
- D 0 - I - 0x011B63 04:9B53: 18        .byte $18   ; 
- D 0 - I - 0x011B64 04:9B54: B0        .byte $B0   ; 
- D 0 - I - 0x011B65 04:9B55: 18        .byte $18   ; 
- D 0 - I - 0x011B66 04:9B56: 19        .byte $19   ; 
- D 0 - I - 0x011B67 04:9B57: A0        .byte $A0   ; 
- D 0 - I - 0x011B68 04:9B58: 28        .byte $28   ; 
- D 0 - I - 0x011B69 04:9B59: 19        .byte $19   ; 
- D 0 - I - 0x011B6A 04:9B5A: B0        .byte $B0   ; 
- D 0 - I - 0x011B6B 04:9B5B: 18        .byte $18   ; 
- D 0 - I - 0x011B6C 04:9B5C: 19        .byte $19   ; 
- D 0 - I - 0x011B6D 04:9B5D: B0        .byte $B0   ; 
- D 0 - I - 0x011B6E 04:9B5E: 18        .byte $18   ; 
- D 0 - I - 0x011B6F 04:9B5F: A0        .byte $A0   ; 
- D 0 - I - 0x011B70 04:9B60: 18        .byte $18   ; 
- D 0 - I - 0x011B71 04:9B61: 29        .byte $29   ; 
- D 0 - I - 0x011B72 04:9B62: B0        .byte $B0   ; 
- D 0 - I - 0x011B73 04:9B63: 18        .byte $18   ; 
- D 0 - I - 0x011B74 04:9B64: B0        .byte $B0   ; 
- D 0 - I - 0x011B75 04:9B65: 18        .byte $18   ; 
- D 0 - I - 0x011B76 04:9B66: 19        .byte $19   ; 
- D 0 - I - 0x011B77 04:9B67: A0        .byte $A0   ; 
- D 0 - I - 0x011B78 04:9B68: 28        .byte $28   ; 
- D 0 - I - 0x011B79 04:9B69: 19        .byte $19   ; 
- D 0 - I - 0x011B7A 04:9B6A: B0        .byte $B0   ; 
- D 0 - I - 0x011B7B 04:9B6B: 18        .byte $18   ; 
- D 0 - I - 0x011B7C 04:9B6C: B0        .byte $B0   ; 
- D 0 - I - 0x011B7D 04:9B6D: 18        .byte $18   ; 
- D 0 - I - 0x011B7E 04:9B6E: 19        .byte $19   ; 
- D 0 - I - 0x011B7F 04:9B6F: B0        .byte $B0   ; 
- D 0 - I - 0x011B80 04:9B70: 18        .byte $18   ; 
- D 0 - I - 0x011B81 04:9B71: 19        .byte $19   ; 
- D 0 - I - 0x011B82 04:9B72: A0        .byte $A0   ; 
- D 0 - I - 0x011B83 04:9B73: 28        .byte $28   ; 
- D 0 - I - 0x011B84 04:9B74: A0        .byte $A0   ; 
- D 0 - I - 0x011B85 04:9B75: 18        .byte $18   ; 
- D 0 - I - 0x011B86 04:9B76: B0        .byte $B0   ; 
- D 0 - I - 0x011B87 04:9B77: 18        .byte $18   ; 
- D 0 - I - 0x011B88 04:9B78: B0        .byte $B0   ; 
- D 0 - I - 0x011B89 04:9B79: 18        .byte $18   ; 
- D 0 - I - 0x011B8A 04:9B7A: 19        .byte $19   ; 
- D 0 - I - 0x011B8B 04:9B7B: A0        .byte $A0   ; 
- D 0 - I - 0x011B8C 04:9B7C: 28        .byte $28   ; 
- D 0 - I - 0x011B8D 04:9B7D: A0        .byte $A0   ; 
- D 0 - I - 0x011B8E 04:9B7E: 18        .byte $18   ; 
- D 0 - I - 0x011B8F 04:9B7F: A0        .byte $A0   ; 
- D 0 - I - 0x011B90 04:9B80: 18        .byte $18   ; 
- D 0 - I - 0x011B91 04:9B81: B0        .byte $B0   ; 
- D 0 - I - 0x011B92 04:9B82: 18        .byte $18   ; 
- D 0 - I - 0x011B93 04:9B83: B0        .byte $B0   ; 
- D 0 - I - 0x011B94 04:9B84: 18        .byte $18   ; 
- D 0 - I - 0x011B95 04:9B85: 19        .byte $19   ; 
- D 0 - I - 0x011B96 04:9B86: A0        .byte $A0   ; 
- D 0 - I - 0x011B97 04:9B87: 28        .byte $28   ; 
- D 0 - I - 0x011B98 04:9B88: A0        .byte $A0   ; 
- D 0 - I - 0x011B99 04:9B89: 18        .byte $18   ; 
- D 0 - I - 0x011B9A 04:9B8A: B0        .byte $B0   ; 
- D 0 - I - 0x011B9B 04:9B8B: 18        .byte $18   ; 
- D 0 - I - 0x011B9C 04:9B8C: B0        .byte $B0   ; 
- D 0 - I - 0x011B9D 04:9B8D: 18        .byte $18   ; 
- D 0 - I - 0x011B9E 04:9B8E: 19        .byte $19   ; 
- D 0 - I - 0x011B9F 04:9B8F: A0        .byte $A0   ; 
- D 0 - I - 0x011BA0 04:9B90: 28        .byte $28   ; 
- D 0 - I - 0x011BA1 04:9B91: 19        .byte $19   ; 
- D 0 - I - 0x011BA2 04:9B92: A0        .byte $A0   ; 
- D 0 - I - 0x011BA3 04:9B93: 18        .byte $18   ; 
- D 0 - I - 0x011BA4 04:9B94: 19        .byte $19   ; 
- D 0 - I - 0x011BA5 04:9B95: B0        .byte $B0   ; 
- D 0 - I - 0x011BA6 04:9B96: 28        .byte $28   ; 
- D 0 - I - 0x011BA7 04:9B97: 19        .byte $19   ; 
- D 0 - I - 0x011BA8 04:9B98: A0        .byte $A0   ; 
- D 0 - I - 0x011BA9 04:9B99: 18        .byte $18   ; 
- D 0 - I - 0x011BAA 04:9B9A: A0        .byte $A0   ; 
- D 0 - I - 0x011BAB 04:9B9B: 18        .byte $18   ; 
- D 0 - I - 0x011BAC 04:9B9C: A0        .byte $A0   ; 
- D 0 - I - 0x011BAD 04:9B9D: 18        .byte $18   ; 
- D 0 - I - 0x011BAE 04:9B9E: A0        .byte $A0   ; 
- D 0 - I - 0x011BAF 04:9B9F: 18        .byte $18   ; 
- D 0 - I - 0x011BB0 04:9BA0: A0        .byte $A0   ; 
- D 0 - I - 0x011BB1 04:9BA1: 18        .byte $18   ; 
- D 0 - I - 0x011BB2 04:9BA2: A0        .byte $A0   ; 
- D 0 - I - 0x011BB3 04:9BA3: 18        .byte $18   ; 
- D 0 - I - 0x011BB4 04:9BA4: A0        .byte $A0   ; 
- D 0 - I - 0x011BB5 04:9BA5: 48        .byte $48   ; 
- D 0 - I - 0x011BB6 04:9BA6: C9        .byte $C9   ; 
- D 0 - I - 0x011BB7 04:9BA7: B0        .byte $B0   ; 
- D 0 - I - 0x011BB8 04:9BA8: 48        .byte $48   ; 
- D 0 - I - 0x011BB9 04:9BA9: C9        .byte $C9   ; 
- D 0 - I - 0x011BBA 04:9BAA: A0        .byte $A0   ; 
- D 0 - I - 0x011BBB 04:9BAB: 48        .byte $48   ; 
- D 0 - I - 0x011BBC 04:9BAC: C9        .byte $C9   ; 
- D 0 - I - 0x011BBD 04:9BAD: B0        .byte $B0   ; 
- D 0 - I - 0x011BBE 04:9BAE: 48        .byte $48   ; 
- D 0 - I - 0x011BBF 04:9BAF: C9        .byte $C9   ; 
- D 0 - I - 0x011BC0 04:9BB0: A0        .byte $A0   ; 
- D 0 - I - 0x011BC1 04:9BB1: 48        .byte $48   ; 
- D 0 - I - 0x011BC2 04:9BB2: C9        .byte $C9   ; 
- D 0 - I - 0x011BC3 04:9BB3: B0        .byte $B0   ; 
- D 0 - I - 0x011BC4 04:9BB4: 48        .byte $48   ; 
- D 0 - I - 0x011BC5 04:9BB5: C9        .byte $C9   ; 
- D 0 - I - 0x011BC6 04:9BB6: A0        .byte $A0   ; 
- D 0 - I - 0x011BC7 04:9BB7: 28        .byte $28   ; 
- D 0 - I - 0x011BC8 04:9BB8: A0        .byte $A0   ; 
- D 0 - I - 0x011BC9 04:9BB9: 28        .byte $28   ; 
- D 0 - I - 0x011BCA 04:9BBA: B0        .byte $B0   ; 
- D 0 - I - 0x011BCB 04:9BBB: 28        .byte $28   ; 
- D 0 - I - 0x011BCC 04:9BBC: B0        .byte $B0   ; 
- D 0 - I - 0x011BCD 04:9BBD: 28        .byte $28   ; 
- D 0 - I - 0x011BCE 04:9BBE: B0        .byte $B0   ; 
- D 0 - I - 0x011BCF 04:9BBF: 28        .byte $28   ; 
- D 0 - I - 0x011BD0 04:9BC0: B0        .byte $B0   ; 
- D 0 - I - 0x011BD1 04:9BC1: 28        .byte $28   ; 
- D 0 - I - 0x011BD2 04:9BC2: A0        .byte $A0   ; 
- D 0 - I - 0x011BD3 04:9BC3: 18        .byte $18   ; 
- D 0 - I - 0x011BD4 04:9BC4: A0        .byte $A0   ; 
- D 0 - I - 0x011BD5 04:9BC5: 18        .byte $18   ; 
- D 0 - I - 0x011BD6 04:9BC6: A0        .byte $A0   ; 
- D 0 - I - 0x011BD7 04:9BC7: 18        .byte $18   ; 
- D 0 - I - 0x011BD8 04:9BC8: A0        .byte $A0   ; 
- D 0 - I - 0x011BD9 04:9BC9: 18        .byte $18   ; 
- D 0 - I - 0x011BDA 04:9BCA: A0        .byte $A0   ; 
- D 0 - I - 0x011BDB 04:9BCB: 18        .byte $18   ; 
- D 0 - I - 0x011BDC 04:9BCC: A0        .byte $A0   ; 
- D 0 - I - 0x011BDD 04:9BCD: 18        .byte $18   ; 
- D 0 - I - 0x011BDE 04:9BCE: FE        .byte con_se_cb_1_FE, $FF   ; 
- D 0 - I - 0x011BE0 04:9BD0: 6E 9A     .word off_FE_9A6E



off_ch_00_0x011BE2_64:
- D 0 - I - 0x011BE2 04:9BD2: D7        .byte con_se_cb_1_D0 + $07, $74, con_9E25_01 + $80   ; 
- D 0 - I - 0x011BE5 04:9BD5: 45        .byte $45   ; 
- D 0 - I - 0x011BE6 04:9BD6: EB        .byte con_se_cb_1_EB, con_9E7B_66, $01   ; 
- D 0 - I - 0x011BE9 04:9BD9: ED        .byte con_se_cb_1_ED, $01   ; 
- D 0 - I - 0x011BEB 04:9BDB: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x011BEC 04:9BDC: 41        .byte $41   ; 
- D 0 - I - 0x011BED 04:9BDD: 90        .byte $90   ; 
- D 0 - I - 0x011BEE 04:9BDE: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x011BEF 04:9BDF: 00        .byte $00   ; 
- D 0 - I - 0x011BF0 04:9BE0: 40        .byte $40   ; 
- D 0 - I - 0x011BF1 04:9BE1: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x011BF2 04:9BE2: 70        .byte $70   ; 
- D 0 - I - 0x011BF3 04:9BE3: B0        .byte $B0   ; 
- D 0 - I - 0x011BF4 04:9BE4: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x011BF5 04:9BE5: 20        .byte $20   ; 
- D 0 - I - 0x011BF6 04:9BE6: 70        .byte $70   ; 
- D 0 - I - 0x011BF7 04:9BE7: 50        .byte $50   ; 
- D 0 - I - 0x011BF8 04:9BE8: 40        .byte $40   ; 
- D 0 - I - 0x011BF9 04:9BE9: 20        .byte $20   ; 
- D 0 - I - 0x011BFA 04:9BEA: 00        .byte $00   ; 
- D 0 - I - 0x011BFB 04:9BEB: 40        .byte $40   ; 
- D 0 - I - 0x011BFC 04:9BEC: 20        .byte $20   ; 
- D 0 - I - 0x011BFD 04:9BED: 00        .byte $00   ; 
- D 0 - I - 0x011BFE 04:9BEE: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x011BFF 04:9BEF: B0        .byte $B0   ; 
- D 0 - I - 0x011C00 04:9BF0: ED        .byte con_se_cb_1_ED, $00   ; 
- D 0 - I - 0x011C02 04:9BF2: D7        .byte con_se_cb_1_D0 + $07, $73, con_9E25_01 + $80   ; 
- D 0 - I - 0x011C05 04:9BF5: 68        .byte $68   ; 
- D 0 - I - 0x011C06 04:9BF6: 94        .byte $94   ; 
- D 0 - I - 0x011C07 04:9BF7: B0        .byte $B0   ; 
- D 0 - I - 0x011C08 04:9BF8: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x011C09 04:9BF9: 00        .byte $00   ; 
- D 0 - I - 0x011C0A 04:9BFA: D7        .byte con_se_cb_1_D0 + $07, $70, con_9E25_22   ; 
- D 0 - I - 0x011C0D 04:9BFD: 24        .byte $24   ; 
- D 0 - I - 0x011C0E 04:9BFE: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x011C0F 04:9BFF: 81        .byte $81   ; 
- D 0 - I - 0x011C10 04:9C00: 91        .byte $91   ; 
- D 0 - I - 0x011C11 04:9C01: A1        .byte $A1   ; 
- D 0 - I - 0x011C12 04:9C02: B1        .byte $B1   ; 
- D 0 - I - 0x011C13 04:9C03: D7        .byte con_se_cb_1_D0 + $07, $77, con_9E25_04 + $80   ; 
- D 0 - I - 0x011C16 04:9C06: 64        .byte $64   ; 
- D 0 - I - 0x011C17 04:9C07: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x011C18 04:9C08: 40        .byte $40   ; 
- D 0 - I - 0x011C19 04:9C09: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x011C1A 04:9C0A: 90        .byte $90   ; 
- D 0 - I - 0x011C1B 04:9C0B: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x011C1C 04:9C0C: 00        .byte $00   ; 
- D 0 - I - 0x011C1D 04:9C0D: 40        .byte $40   ; 
- D 0 - I - 0x011C1E 04:9C0E: 50        .byte $50   ; 
- D 0 - I - 0x011C1F 04:9C0F: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x011C20 04:9C10: 90        .byte $90   ; 
- D 0 - I - 0x011C21 04:9C11: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x011C22 04:9C12: 20        .byte $20   ; 
- D 0 - I - 0x011C23 04:9C13: 50        .byte $50   ; 
- D 0 - I - 0x011C24 04:9C14: 40        .byte $40   ; 
- D 0 - I - 0x011C25 04:9C15: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x011C26 04:9C16: 90        .byte $90   ; 
- D 0 - I - 0x011C27 04:9C17: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x011C28 04:9C18: 00        .byte $00   ; 
- D 0 - I - 0x011C29 04:9C19: 40        .byte $40   ; 
- D 0 - I - 0x011C2A 04:9C1A: E6        .byte con_se_cb_1_E6, $08   ; 
- D 0 - I - 0x011C2C 04:9C1C: 20        .byte $20   ; 
- D 0 - I - 0x011C2D 04:9C1D: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x011C2E 04:9C1E: 50        .byte $50   ; 
- D 0 - I - 0x011C2F 04:9C1F: A0        .byte $A0   ; 
- D 0 - I - 0x011C30 04:9C20: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x011C31 04:9C21: 20        .byte $20   ; 
- D 0 - I - 0x011C32 04:9C22: E6        .byte con_se_cb_1_E6, $09   ; 
- D 0 - I - 0x011C34 04:9C24: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x011C35 04:9C25: 10        .byte $10   ; 
- D 0 - I - 0x011C36 04:9C26: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x011C37 04:9C27: B0        .byte $B0   ; 
- D 0 - I - 0x011C38 04:9C28: E8        .byte con_se_cb_1_E8, $00 + $00   ; 
- D 0 - I - 0x011C3A 04:9C2A: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x011C3B 04:9C2B: 1C        .byte $1C   ; 
- D 0 - I - 0x011C3C 04:9C2C: E6        .byte con_se_cb_1_E6, $01   ; 
- D 0 - I - 0x011C3E 04:9C2E: F7        .byte con_se_cb_1_F0 + $07   ; 
- D 0 - I - 0x011C3F 04:9C2F: 15        .byte $15   ; 
- D 0 - I - 0x011C40 04:9C30: FF        .byte con_se_cb_1_FF   ; 



off_ch_01_0x011C41_64:
- D 0 - I - 0x011C41 04:9C31: D7        .byte con_se_cb_1_D0 + $07, $79, con_9E25_04 + $80   ; 
- D 0 - I - 0x011C44 04:9C34: 47        .byte $47   ; 
- D 0 - I - 0x011C45 04:9C35: EB        .byte con_se_cb_1_EB, con_9E7B_66, $01   ; 
- D 0 - I - 0x011C48 04:9C38: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x011C49 04:9C39: 40        .byte $40   ; 
- D 0 - I - 0x011C4A 04:9C3A: 90        .byte $90   ; 
- D 0 - I - 0x011C4B 04:9C3B: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x011C4C 04:9C3C: 00        .byte $00   ; 
- D 0 - I - 0x011C4D 04:9C3D: 40        .byte $40   ; 
- D 0 - I - 0x011C4E 04:9C3E: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x011C4F 04:9C3F: 70        .byte $70   ; 
- D 0 - I - 0x011C50 04:9C40: B0        .byte $B0   ; 
- D 0 - I - 0x011C51 04:9C41: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x011C52 04:9C42: 20        .byte $20   ; 
- D 0 - I - 0x011C53 04:9C43: 70        .byte $70   ; 
- D 0 - I - 0x011C54 04:9C44: 50        .byte $50   ; 
- D 0 - I - 0x011C55 04:9C45: 40        .byte $40   ; 
- D 0 - I - 0x011C56 04:9C46: 20        .byte $20   ; 
- D 0 - I - 0x011C57 04:9C47: 00        .byte $00   ; 
- D 0 - I - 0x011C58 04:9C48: 40        .byte $40   ; 
- D 0 - I - 0x011C59 04:9C49: 20        .byte $20   ; 
- D 0 - I - 0x011C5A 04:9C4A: 00        .byte $00   ; 
- D 0 - I - 0x011C5B 04:9C4B: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x011C5C 04:9C4C: B0        .byte $B0   ; 
- D 0 - I - 0x011C5D 04:9C4D: E8        .byte con_se_cb_1_E8, $10 + $02   ; 
- D 0 - I - 0x011C5F 04:9C4F: EC        .byte con_se_cb_1_EC, $02   ; 
- D 0 - I - 0x011C61 04:9C51: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x011C62 04:9C52: 94        .byte $94   ; 
- D 0 - I - 0x011C63 04:9C53: D7        .byte con_se_cb_1_D0 + $07, $78, con_9E25_03 + $80   ; 
- D 0 - I - 0x011C66 04:9C56: 23        .byte $23   ; 
- D 0 - I - 0x011C67 04:9C57: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x011C68 04:9C58: B0        .byte $B0   ; 
- D 0 - I - 0x011C69 04:9C59: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x011C6A 04:9C5A: 00        .byte $00   ; 
- D 0 - I - 0x011C6B 04:9C5B: 20        .byte $20   ; 
- D 0 - I - 0x011C6C 04:9C5C: EC        .byte con_se_cb_1_EC, $00   ; 
- D 0 - I - 0x011C6E 04:9C5E: EB        .byte con_se_cb_1_EB, $00   ; 
- D 0 - I - 0x011C70 04:9C60: D7        .byte con_se_cb_1_D0 + $07, $70, con_9E25_21   ; 
- D 0 - I - 0x011C73 04:9C63: 24        .byte $24   ; 
- D 0 - I - 0x011C74 04:9C64: 41        .byte $41   ; 
- D 0 - I - 0x011C75 04:9C65: 61        .byte $61   ; 
- D 0 - I - 0x011C76 04:9C66: 71        .byte $71   ; 
- D 0 - I - 0x011C77 04:9C67: 81        .byte $81   ; 
- D 0 - I - 0x011C78 04:9C68: EB        .byte con_se_cb_1_EB, con_9E7B_6E, $51   ; 
- D 0 - I - 0x011C7B 04:9C6B: E6        .byte con_se_cb_1_E6, $12   ; 
- D 0 - I - 0x011C7D 04:9C6D: E8        .byte con_se_cb_1_E8, $00 + $00   ; 
- D 0 - I - 0x011C7F 04:9C6F: 9D        .byte $9D   ; 
- D 0 - I - 0x011C80 04:9C70: E6        .byte con_se_cb_1_E6, $01   ; 
- D 0 - I - 0x011C82 04:9C72: F7        .byte con_se_cb_1_F0 + $07   ; 
- D 0 - I - 0x011C83 04:9C73: 95        .byte $95   ; 
- D 0 - I - 0x011C84 04:9C74: FF        .byte con_se_cb_1_FF   ; 



off_ch_02_0x011C85_64:
- D 0 - I - 0x011C85 04:9C75: D7        .byte con_se_cb_1_D0 + $07, $13   ; 
- D 0 - I - 0x011C87 04:9C77: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 0 - I - 0x011C88 04:9C78: 90        .byte $90   ; 
- D 0 - I - 0x011C89 04:9C79: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x011C8A 04:9C7A: 90        .byte $90   ; 
- D 0 - I - 0x011C8B 04:9C7B: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 0 - I - 0x011C8C 04:9C7C: 90        .byte $90   ; 
- D 0 - I - 0x011C8D 04:9C7D: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x011C8E 04:9C7E: 90        .byte $90   ; 
- D 0 - I - 0x011C8F 04:9C7F: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 0 - I - 0x011C90 04:9C80: B0        .byte $B0   ; 
- D 0 - I - 0x011C91 04:9C81: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x011C92 04:9C82: B0        .byte $B0   ; 
- D 0 - I - 0x011C93 04:9C83: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 0 - I - 0x011C94 04:9C84: B0        .byte $B0   ; 
- D 0 - I - 0x011C95 04:9C85: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x011C96 04:9C86: B0        .byte $B0   ; 
- D 0 - I - 0x011C97 04:9C87: 00        .byte $00   ; 
- D 0 - I - 0x011C98 04:9C88: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x011C99 04:9C89: 00        .byte $00   ; 
- D 0 - I - 0x011C9A 04:9C8A: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x011C9B 04:9C8B: 00        .byte $00   ; 
- D 0 - I - 0x011C9C 04:9C8C: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x011C9D 04:9C8D: 00        .byte $00   ; 
- D 0 - I - 0x011C9E 04:9C8E: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x011C9F 04:9C8F: 20        .byte $20   ; 
- D 0 - I - 0x011CA0 04:9C90: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x011CA1 04:9C91: 20        .byte $20   ; 
- D 0 - I - 0x011CA2 04:9C92: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x011CA3 04:9C93: 20        .byte $20   ; 
- D 0 - I - 0x011CA4 04:9C94: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x011CA5 04:9C95: 20        .byte $20   ; 
- D 0 - I - 0x011CA6 04:9C96: FB        .byte con_se_cb_1_FB   ; 
- D 0 - I - 0x011CA7 04:9C97: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x011CA8 04:9C98: 40        .byte $40   ; 
- D 0 - I - 0x011CA9 04:9C99: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x011CAA 04:9C9A: 40        .byte $40   ; 
- D 0 - I - 0x011CAB 04:9C9B: FE        .byte con_se_cb_1_FE, $04   ; 
- D 0 - I - 0x011CAD 04:9C9D: FB        .byte con_se_cb_1_FB   ; 
- D 0 - I - 0x011CAE 04:9C9E: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 0 - I - 0x011CAF 04:9C9F: 40        .byte $40   ; 
- D 0 - I - 0x011CB0 04:9CA0: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x011CB1 04:9CA1: 40        .byte $40   ; 
- D 0 - I - 0x011CB2 04:9CA2: FE        .byte con_se_cb_1_FE, $04   ; 
- D 0 - I - 0x011CB4 04:9CA4: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 0 - I - 0x011CB5 04:9CA5: 90        .byte $90   ; 
- D 0 - I - 0x011CB6 04:9CA6: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x011CB7 04:9CA7: 90        .byte $90   ; 
- D 0 - I - 0x011CB8 04:9CA8: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 0 - I - 0x011CB9 04:9CA9: 90        .byte $90   ; 
- D 0 - I - 0x011CBA 04:9CAA: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x011CBB 04:9CAB: 90        .byte $90   ; 
- D 0 - I - 0x011CBC 04:9CAC: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 0 - I - 0x011CBD 04:9CAD: 20        .byte $20   ; 
- D 0 - I - 0x011CBE 04:9CAE: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x011CBF 04:9CAF: 20        .byte $20   ; 
- D 0 - I - 0x011CC0 04:9CB0: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 0 - I - 0x011CC1 04:9CB1: 20        .byte $20   ; 
- D 0 - I - 0x011CC2 04:9CB2: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x011CC3 04:9CB3: 20        .byte $20   ; 
- D 0 - I - 0x011CC4 04:9CB4: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 0 - I - 0x011CC5 04:9CB5: 50        .byte $50   ; 
- D 0 - I - 0x011CC6 04:9CB6: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x011CC7 04:9CB7: 50        .byte $50   ; 
- D 0 - I - 0x011CC8 04:9CB8: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 0 - I - 0x011CC9 04:9CB9: 50        .byte $50   ; 
- D 0 - I - 0x011CCA 04:9CBA: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x011CCB 04:9CBB: 50        .byte $50   ; 
- D 0 - I - 0x011CCC 04:9CBC: D8        .byte con_se_cb_1_D0 + $08, $00   ; 
- D 0 - I - 0x011CCE 04:9CBE: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 0 - I - 0x011CCF 04:9CBF: A0        .byte $A0   ; 
- D 0 - I - 0x011CD0 04:9CC0: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x011CD1 04:9CC1: A0        .byte $A0   ; 
- D 0 - I - 0x011CD2 04:9CC2: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 0 - I - 0x011CD3 04:9CC3: A0        .byte $A0   ; 
- D 0 - I - 0x011CD4 04:9CC4: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x011CD5 04:9CC5: A0        .byte $A0   ; 
- D 0 - I - 0x011CD6 04:9CC6: D8        .byte con_se_cb_1_D0 + $08, $11   ; 
- D 0 - I - 0x011CD8 04:9CC8: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 0 - I - 0x011CD9 04:9CC9: 90        .byte $90   ; 
- D 0 - I - 0x011CDA 04:9CCA: 90        .byte $90   ; 
- D 0 - I - 0x011CDB 04:9CCB: D8        .byte con_se_cb_1_D0 + $08, $00   ; 
- D 0 - I - 0x011CDD 04:9CCD: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 0 - I - 0x011CDE 04:9CCE: 9E        .byte $9E   ; 
- D 0 - I - 0x011CDF 04:9CCF: D1        .byte con_se_cb_1_D0 + $01, $00   ; 
- D 0 - I - 0x011CE1 04:9CD1: 91        .byte $91   ; 
- D 0 - I - 0x011CE2 04:9CD2: FF        .byte con_se_cb_1_FF   ; 



off_ch_05_0x011CE3_64:
- D 0 - I - 0x011CE3 04:9CD3: D1        .byte $D1   ; 
- D 0 - I - 0x011CE4 04:9CD4: FB        .byte con_se_cb_1_FB   ; 
- D 0 - I - 0x011CE5 04:9CD5: B0        .byte $B0   ; 
- D 0 - I - 0x011CE6 04:9CD6: 1C        .byte $1C   ; 
- D 0 - I - 0x011CE7 04:9CD7: 16        .byte $16   ; 
- D 0 - I - 0x011CE8 04:9CD8: 16        .byte $16   ; 
- D 0 - I - 0x011CE9 04:9CD9: FE        .byte con_se_cb_1_FE, $06   ; 
- D 0 - I - 0x011CEB 04:9CDB: FB        .byte con_se_cb_1_FB   ; 
- D 0 - I - 0x011CEC 04:9CDC: B0        .byte $B0   ; 
- D 0 - I - 0x011CED 04:9CDD: 25        .byte $25   ; 
- D 0 - I - 0x011CEE 04:9CDE: 16        .byte $16   ; 
- D 0 - I - 0x011CEF 04:9CDF: FE        .byte con_se_cb_1_FE, $04   ; 
- D 0 - I - 0x011CF1 04:9CE1: FB        .byte con_se_cb_1_FB   ; 
- D 0 - I - 0x011CF2 04:9CE2: B0        .byte $B0   ; 
- D 0 - I - 0x011CF3 04:9CE3: 2C        .byte $2C   ; 
- D 0 - I - 0x011CF4 04:9CE4: 16        .byte $16   ; 
- D 0 - I - 0x011CF5 04:9CE5: 16        .byte $16   ; 
- D 0 - I - 0x011CF6 04:9CE6: FE        .byte con_se_cb_1_FE, $03   ; 
- D 0 - I - 0x011CF8 04:9CE8: B0        .byte $B0   ; 
- D 0 - I - 0x011CF9 04:9CE9: 2C        .byte $2C   ; 
- D 0 - I - 0x011CFA 04:9CEA: 18        .byte $18   ; 
- D 0 - I - 0x011CFB 04:9CEB: 18        .byte $18   ; 
- D 0 - I - 0x011CFC 04:9CEC: B0        .byte $B0   ; 
- D 0 - I - 0x011CFD 04:9CED: 26        .byte $26   ; 
- D 0 - I - 0x011CFE 04:9CEE: B0        .byte $B0   ; 
- D 0 - I - 0x011CFF 04:9CEF: 26        .byte $26   ; 
- D 0 - I - 0x011D00 04:9CF0: B0        .byte $B0   ; 
- D 0 - I - 0x011D01 04:9CF1: 26        .byte $26   ; 
- D 0 - I - 0x011D02 04:9CF2: FF        .byte con_se_cb_1_FF   ; 



off_ch_00_0x011D03_5F:
- D 0 - I - 0x011D03 04:9CF3: D6        .byte con_se_cb_1_D0 + $06, $76, con_9E25_01 + $80   ; 
- D 0 - I - 0x011D06 04:9CF6: 10        .byte $10   ; 
- D 0 - I - 0x011D07 04:9CF7: E9        .byte con_se_cb_1_E9, $31   ; 
- D 0 - I - 0x011D09 04:9CF9: EB        .byte con_se_cb_1_EB, con_9E7B_50, $32   ; 
- D 0 - I - 0x011D0C 04:9CFC: E6        .byte con_se_cb_1_E6, $12   ; 
- D 0 - I - 0x011D0E 04:9CFE: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x011D0F 04:9CFF: 82        .byte $82   ; 
- D 0 - I - 0x011D10 04:9D00: E6        .byte con_se_cb_1_E6, $01   ; 
- D 0 - I - 0x011D12 04:9D02: 78        .byte $78   ; 
- D 0 - I - 0x011D13 04:9D03: E9        .byte con_se_cb_1_E9, $00   ; 
- D 0 - I - 0x011D15 04:9D05: D1        .byte con_se_cb_1_D0 + $01, $73, con_9E25_00 + $80   ; 
- D 0 - I - 0x011D18 04:9D08: 00        .byte $00   ; 
- D 0 - I - 0x011D19 04:9D09: 61        .byte $61   ; 
- D 0 - I - 0x011D1A 04:9D0A: 51        .byte $51   ; 
- D 0 - I - 0x011D1B 04:9D0B: 41        .byte $41   ; 
- D 0 - I - 0x011D1C 04:9D0C: 31        .byte $31   ; 
- D 0 - I - 0x011D1D 04:9D0D: F2        .byte con_se_cb_1_F0 + $02   ; 
- D 0 - I - 0x011D1E 04:9D0E: 78        .byte $78   ; 
- D 0 - I - 0x011D1F 04:9D0F: 61        .byte $61   ; 
- D 0 - I - 0x011D20 04:9D10: 51        .byte $51   ; 
- D 0 - I - 0x011D21 04:9D11: 41        .byte $41   ; 
- D 0 - I - 0x011D22 04:9D12: 31        .byte $31   ; 
- D 0 - I - 0x011D23 04:9D13: F3        .byte con_se_cb_1_F0 + $03   ; 
- D 0 - I - 0x011D24 04:9D14: 78        .byte $78   ; 
- D 0 - I - 0x011D25 04:9D15: 61        .byte $61   ; 
- D 0 - I - 0x011D26 04:9D16: 51        .byte $51   ; 
- D 0 - I - 0x011D27 04:9D17: 41        .byte $41   ; 
- D 0 - I - 0x011D28 04:9D18: C2        .byte con_se_cb_1_C0 + $02   ; 
- D 0 - I - 0x011D29 04:9D19: F0        .byte con_se_cb_1_F0 + $00   ; 
- D 0 - I - 0x011D2A 04:9D1A: DA        .byte con_se_cb_1_D0 + $0A, $76, con_9E25_01 + $80   ; 
- D 0 - I - 0x011D2D 04:9D1D: 00        .byte $00   ; 
- D 0 - I - 0x011D2E 04:9D1E: E9        .byte con_se_cb_1_E9, $31   ; 
- D 0 - I - 0x011D30 04:9D20: A4        .byte $A4   ; 
- D 0 - I - 0x011D31 04:9D21: EB        .byte con_se_cb_1_EB, $00   ; 
- D 0 - I - 0x011D33 04:9D23: E6        .byte con_se_cb_1_E6, $01   ; 
- D 0 - I - 0x011D35 04:9D25: 98        .byte $98   ; 
- D 0 - I - 0x011D36 04:9D26: E9        .byte con_se_cb_1_E9, $00   ; 
- D 0 - I - 0x011D38 04:9D28: D1        .byte con_se_cb_1_D0 + $01, $73, con_9E25_00 + $80   ; 
- D 0 - I - 0x011D3B 04:9D2B: 00        .byte $00   ; 
- D 0 - I - 0x011D3C 04:9D2C: 81        .byte $81   ; 
- D 0 - I - 0x011D3D 04:9D2D: 71        .byte $71   ; 
- D 0 - I - 0x011D3E 04:9D2E: 61        .byte $61   ; 
- D 0 - I - 0x011D3F 04:9D2F: 51        .byte $51   ; 
- D 0 - I - 0x011D40 04:9D30: F2        .byte con_se_cb_1_F0 + $02   ; 
- D 0 - I - 0x011D41 04:9D31: 98        .byte $98   ; 
- D 0 - I - 0x011D42 04:9D32: 81        .byte $81   ; 
- D 0 - I - 0x011D43 04:9D33: 71        .byte $71   ; 
- D 0 - I - 0x011D44 04:9D34: 61        .byte $61   ; 
- D 0 - I - 0x011D45 04:9D35: 51        .byte $51   ; 
- D 0 - I - 0x011D46 04:9D36: F3        .byte con_se_cb_1_F0 + $03   ; 
- D 0 - I - 0x011D47 04:9D37: 94        .byte $94   ; 
- D 0 - I - 0x011D48 04:9D38: 80        .byte $80   ; 
- D 0 - I - 0x011D49 04:9D39: 70        .byte $70   ; 
- D 0 - I - 0x011D4A 04:9D3A: 60        .byte $60   ; 
- D 0 - I - 0x011D4B 04:9D3B: 51        .byte $51   ; 
- D 0 - I - 0x011D4C 04:9D3C: F0        .byte con_se_cb_1_F0 + $00   ; 
- D 0 - I - 0x011D4D 04:9D3D: D3        .byte con_se_cb_1_D0 + $03, $76, con_9E25_01 + $80   ; 
- D 0 - I - 0x011D50 04:9D40: 00        .byte $00   ; 
- D 0 - I - 0x011D51 04:9D41: EB        .byte con_se_cb_1_EB, con_9E7B_50, $32   ; 
- D 0 - I - 0x011D54 04:9D44: E9        .byte con_se_cb_1_E9, $31   ; 
- D 0 - I - 0x011D56 04:9D46: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x011D57 04:9D47: 0D        .byte $0D   ; 
- D 0 - I - 0x011D58 04:9D48: E6        .byte con_se_cb_1_E6, $01   ; 
- D 0 - I - 0x011D5A 04:9D4A: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x011D5B 04:9D4B: B8        .byte $B8   ; 
- D 0 - I - 0x011D5C 04:9D4C: E9        .byte con_se_cb_1_E9, $00   ; 
- D 0 - I - 0x011D5E 04:9D4E: D1        .byte con_se_cb_1_D0 + $01, $73, con_9E25_00 + $80   ; 
- D 0 - I - 0x011D61 04:9D51: 00        .byte $00   ; 
- D 0 - I - 0x011D62 04:9D52: A1        .byte $A1   ; 
- D 0 - I - 0x011D63 04:9D53: 91        .byte $91   ; 
- D 0 - I - 0x011D64 04:9D54: 81        .byte $81   ; 
- D 0 - I - 0x011D65 04:9D55: 71        .byte $71   ; 
- D 0 - I - 0x011D66 04:9D56: F2        .byte con_se_cb_1_F0 + $02   ; 
- D 0 - I - 0x011D67 04:9D57: B8        .byte $B8   ; 
- D 0 - I - 0x011D68 04:9D58: A1        .byte $A1   ; 
- D 0 - I - 0x011D69 04:9D59: 91        .byte $91   ; 
- D 0 - I - 0x011D6A 04:9D5A: 81        .byte $81   ; 
- D 0 - I - 0x011D6B 04:9D5B: 71        .byte $71   ; 
- D 0 - I - 0x011D6C 04:9D5C: 61        .byte $61   ; 
- D 0 - I - 0x011D6D 04:9D5D: F0        .byte con_se_cb_1_F0 + $00   ; 
- D 0 - I - 0x011D6E 04:9D5E: D6        .byte con_se_cb_1_D0 + $06, $76, con_9E25_01 + $80   ; 
- D 0 - I - 0x011D71 04:9D61: 00        .byte $00   ; 
- D 0 - I - 0x011D72 04:9D62: E9        .byte con_se_cb_1_E9, $31   ; 
- D 0 - I - 0x011D74 04:9D64: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x011D75 04:9D65: 25        .byte $25   ; 
- D 0 - I - 0x011D76 04:9D66: E6        .byte con_se_cb_1_E6, $01   ; 
- D 0 - I - 0x011D78 04:9D68: 18        .byte $18   ; 
- D 0 - I - 0x011D79 04:9D69: E9        .byte con_se_cb_1_E9, $00   ; 
- D 0 - I - 0x011D7B 04:9D6B: D1        .byte con_se_cb_1_D0 + $01, $72, con_9E25_00 + $80   ; 
- D 0 - I - 0x011D7E 04:9D6E: 00        .byte $00   ; 
- D 0 - I - 0x011D7F 04:9D6F: 01        .byte $01   ; 
- D 0 - I - 0x011D80 04:9D70: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x011D81 04:9D71: B1        .byte $B1   ; 
- D 0 - I - 0x011D82 04:9D72: A1        .byte $A1   ; 
- D 0 - I - 0x011D83 04:9D73: 91        .byte $91   ; 
- D 0 - I - 0x011D84 04:9D74: F2        .byte con_se_cb_1_F0 + $02   ; 
- D 0 - I - 0x011D85 04:9D75: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x011D86 04:9D76: 18        .byte $18   ; 
- D 0 - I - 0x011D87 04:9D77: 01        .byte $01   ; 
- D 0 - I - 0x011D88 04:9D78: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x011D89 04:9D79: B1        .byte $B1   ; 
- D 0 - I - 0x011D8A 04:9D7A: A1        .byte $A1   ; 
- D 0 - I - 0x011D8B 04:9D7B: 91        .byte $91   ; 
- D 0 - I - 0x011D8C 04:9D7C: 81        .byte $81   ; 
- D 0 - I - 0x011D8D 04:9D7D: EB        .byte con_se_cb_1_EB, $00   ; 
off_FE_9D7F:
- D 0 - I - 0x011D8F 04:9D7F: D6        .byte con_se_cb_1_D0 + $06, $70, con_9E25_07   ; 
- D 0 - I - 0x011D92 04:9D82: 00        .byte $00   ; 
- D 0 - I - 0x011D93 04:9D83: E9        .byte con_se_cb_1_E9, $B1   ; 
- D 0 - I - 0x011D95 04:9D85: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x011D96 04:9D86: FB        .byte con_se_cb_1_FB   ; 
- D 0 - I - 0x011D97 04:9D87: 63        .byte $63   ; 
- D 0 - I - 0x011D98 04:9D88: 53        .byte $53   ; 
- D 0 - I - 0x011D99 04:9D89: 43        .byte $43   ; 
- D 0 - I - 0x011D9A 04:9D8A: 33        .byte $33   ; 
- D 0 - I - 0x011D9B 04:9D8B: 23        .byte $23   ; 
- D 0 - I - 0x011D9C 04:9D8C: 33        .byte $33   ; 
- D 0 - I - 0x011D9D 04:9D8D: FE        .byte con_se_cb_1_FE, $04   ; 
- D 0 - I - 0x011D9F 04:9D8F: D6        .byte con_se_cb_1_D0 + $06, $37, con_9E25_04 + $80   ; 
- D 0 - I - 0x011DA2 04:9D92: 18        .byte $18   ; 
- D 0 - I - 0x011DA3 04:9D93: EC        .byte con_se_cb_1_EC, $02   ; 
- D 0 - I - 0x011DA5 04:9D95: E9        .byte con_se_cb_1_E9, $38   ; 
- D 0 - I - 0x011DA7 04:9D97: FB        .byte con_se_cb_1_FB   ; 
- D 0 - I - 0x011DA8 04:9D98: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 0 - I - 0x011DA9 04:9D99: B0        .byte $B0   ; 
- D 0 - I - 0x011DAA 04:9D9A: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x011DAB 04:9D9B: 20        .byte $20   ; 
- D 0 - I - 0x011DAC 04:9D9C: 50        .byte $50   ; 
- D 0 - I - 0x011DAD 04:9D9D: 80        .byte $80   ; 
- D 0 - I - 0x011DAE 04:9D9E: B0        .byte $B0   ; 
- D 0 - I - 0x011DAF 04:9D9F: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x011DB0 04:9DA0: 20        .byte $20   ; 
- D 0 - I - 0x011DB1 04:9DA1: 50        .byte $50   ; 
- D 0 - I - 0x011DB2 04:9DA2: 80        .byte $80   ; 
- D 0 - I - 0x011DB3 04:9DA3: B0        .byte $B0   ; 
- D 0 - I - 0x011DB4 04:9DA4: E1        .byte con_se_cb_1_E0 + $01   ; 
- D 0 - I - 0x011DB5 04:9DA5: 20        .byte $20   ; 
- D 0 - I - 0x011DB6 04:9DA6: 50        .byte $50   ; 
- D 0 - I - 0x011DB7 04:9DA7: 80        .byte $80   ; 
- D 0 - I - 0x011DB8 04:9DA8: B0        .byte $B0   ; 
- D 0 - I - 0x011DB9 04:9DA9: 80        .byte $80   ; 
- D 0 - I - 0x011DBA 04:9DAA: 50        .byte $50   ; 
- D 0 - I - 0x011DBB 04:9DAB: 20        .byte $20   ; 
- D 0 - I - 0x011DBC 04:9DAC: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x011DBD 04:9DAD: B0        .byte $B0   ; 
- D 0 - I - 0x011DBE 04:9DAE: 80        .byte $80   ; 
- D 0 - I - 0x011DBF 04:9DAF: 50        .byte $50   ; 
- D 0 - I - 0x011DC0 04:9DB0: 20        .byte $20   ; 
- D 0 - I - 0x011DC1 04:9DB1: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x011DC2 04:9DB2: B0        .byte $B0   ; 
- D 0 - I - 0x011DC3 04:9DB3: 80        .byte $80   ; 
- D 0 - I - 0x011DC4 04:9DB4: 50        .byte $50   ; 
- D 0 - I - 0x011DC5 04:9DB5: 20        .byte $20   ; 
- D 0 - I - 0x011DC6 04:9DB6: FE        .byte con_se_cb_1_FE, $02   ; 
- D 0 - I - 0x011DC8 04:9DB8: 00        .byte $00   ; 
- D 0 - I - 0x011DC9 04:9DB9: 30        .byte $30   ; 
- D 0 - I - 0x011DCA 04:9DBA: 60        .byte $60   ; 
- D 0 - I - 0x011DCB 04:9DBB: 90        .byte $90   ; 
- D 0 - I - 0x011DCC 04:9DBC: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x011DCD 04:9DBD: 00        .byte $00   ; 
- D 0 - I - 0x011DCE 04:9DBE: 30        .byte $30   ; 
- D 0 - I - 0x011DCF 04:9DBF: 60        .byte $60   ; 
- D 0 - I - 0x011DD0 04:9DC0: 90        .byte $90   ; 
- D 0 - I - 0x011DD1 04:9DC1: E1        .byte con_se_cb_1_E0 + $01   ; 
- D 0 - I - 0x011DD2 04:9DC2: 00        .byte $00   ; 
- D 0 - I - 0x011DD3 04:9DC3: 30        .byte $30   ; 
- D 0 - I - 0x011DD4 04:9DC4: 60        .byte $60   ; 
- D 0 - I - 0x011DD5 04:9DC5: 90        .byte $90   ; 
- D 0 - I - 0x011DD6 04:9DC6: E0        .byte con_se_cb_1_E0 + $00   ; 
- D 0 - I - 0x011DD7 04:9DC7: 00        .byte $00   ; 
- D 0 - I - 0x011DD8 04:9DC8: E1        .byte con_se_cb_1_E0 + $01   ; 
- D 0 - I - 0x011DD9 04:9DC9: 90        .byte $90   ; 
- D 0 - I - 0x011DDA 04:9DCA: 60        .byte $60   ; 
- D 0 - I - 0x011DDB 04:9DCB: 30        .byte $30   ; 
- D 0 - I - 0x011DDC 04:9DCC: 00        .byte $00   ; 
- D 0 - I - 0x011DDD 04:9DCD: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x011DDE 04:9DCE: 90        .byte $90   ; 
- D 0 - I - 0x011DDF 04:9DCF: 60        .byte $60   ; 
- D 0 - I - 0x011DE0 04:9DD0: 30        .byte $30   ; 
- D 0 - I - 0x011DE1 04:9DD1: 00        .byte $00   ; 
- D 0 - I - 0x011DE2 04:9DD2: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x011DE3 04:9DD3: 90        .byte $90   ; 
- D 0 - I - 0x011DE4 04:9DD4: 60        .byte $60   ; 
- D 0 - I - 0x011DE5 04:9DD5: 30        .byte $30   ; 
- D 0 - I - 0x011DE6 04:9DD6: 60        .byte $60   ; 
- D 0 - I - 0x011DE7 04:9DD7: 90        .byte $90   ; 
- D 0 - I - 0x011DE8 04:9DD8: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x011DE9 04:9DD9: 00        .byte $00   ; 
- D 0 - I - 0x011DEA 04:9DDA: 30        .byte $30   ; 
- D 0 - I - 0x011DEB 04:9DDB: 60        .byte $60   ; 
- D 0 - I - 0x011DEC 04:9DDC: 90        .byte $90   ; 
- D 0 - I - 0x011DED 04:9DDD: E1        .byte con_se_cb_1_E0 + $01   ; 
- D 0 - I - 0x011DEE 04:9DDE: 00        .byte $00   ; 
- D 0 - I - 0x011DEF 04:9DDF: 30        .byte $30   ; 
- D 0 - I - 0x011DF0 04:9DE0: 60        .byte $60   ; 
- D 0 - I - 0x011DF1 04:9DE1: 90        .byte $90   ; 
- D 0 - I - 0x011DF2 04:9DE2: E0        .byte con_se_cb_1_E0 + $00   ; 
- D 0 - I - 0x011DF3 04:9DE3: 00        .byte $00   ; 
- D 0 - I - 0x011DF4 04:9DE4: 30        .byte $30   ; 
- D 0 - I - 0x011DF5 04:9DE5: 60        .byte $60   ; 
- D 0 - I - 0x011DF6 04:9DE6: 30        .byte $30   ; 
- D 0 - I - 0x011DF7 04:9DE7: 00        .byte $00   ; 
- D 0 - I - 0x011DF8 04:9DE8: E1        .byte con_se_cb_1_E0 + $01   ; 
- D 0 - I - 0x011DF9 04:9DE9: 90        .byte $90   ; 
- D 0 - I - 0x011DFA 04:9DEA: 60        .byte $60   ; 
- D 0 - I - 0x011DFB 04:9DEB: 30        .byte $30   ; 
- D 0 - I - 0x011DFC 04:9DEC: 00        .byte $00   ; 
- D 0 - I - 0x011DFD 04:9DED: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x011DFE 04:9DEE: 90        .byte $90   ; 
- D 0 - I - 0x011DFF 04:9DEF: 60        .byte $60   ; 
- D 0 - I - 0x011E00 04:9DF0: 30        .byte $30   ; 
- D 0 - I - 0x011E01 04:9DF1: 00        .byte $00   ; 
- D 0 - I - 0x011E02 04:9DF2: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x011E03 04:9DF3: 90        .byte $90   ; 
- D 0 - I - 0x011E04 04:9DF4: EC        .byte con_se_cb_1_EC, $00   ; 
- D 0 - I - 0x011E06 04:9DF6: EA        .byte con_se_cb_1_EA, $01   ; 
- D 0 - I - 0x011E08 04:9DF8: D6        .byte con_se_cb_1_D0 + $06, $70, con_9E25_07   ; 
- D 0 - I - 0x011E0B 04:9DFB: 00        .byte $00   ; 
- D 0 - I - 0x011E0C 04:9DFC: E9        .byte con_se_cb_1_E9, $B1   ; 
- D 0 - I - 0x011E0E 04:9DFE: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x011E0F 04:9DFF: FB        .byte con_se_cb_1_FB   ; 
- D 0 - I - 0x011E10 04:9E00: 63        .byte $63   ; 
- D 0 - I - 0x011E11 04:9E01: 53        .byte $53   ; 
- D 0 - I - 0x011E12 04:9E02: 43        .byte $43   ; 
- D 0 - I - 0x011E13 04:9E03: 33        .byte $33   ; 
- D 0 - I - 0x011E14 04:9E04: 23        .byte $23   ; 
- D 0 - I - 0x011E15 04:9E05: 33        .byte $33   ; 
- D 0 - I - 0x011E16 04:9E06: FE        .byte con_se_cb_1_FE, $04   ; 
- D 0 - I - 0x011E18 04:9E08: EA        .byte con_se_cb_1_EA, $01   ; 
- D 0 - I - 0x011E1A 04:9E0A: D6        .byte con_se_cb_1_D0 + $06, $37, con_9E25_04 + $80   ; 
- D 0 - I - 0x011E1D 04:9E0D: 18        .byte $18   ; 
- D 0 - I - 0x011E1E 04:9E0E: EC        .byte con_se_cb_1_EC, $02   ; 
- D 0 - I - 0x011E20 04:9E10: E9        .byte con_se_cb_1_E9, $38   ; 
- D 0 - I - 0x011E22 04:9E12: FB        .byte con_se_cb_1_FB   ; 
- D 0 - I - 0x011E23 04:9E13: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x011E24 04:9E14: B0        .byte $B0   ; 
- D 0 - I - 0x011E25 04:9E15: 80        .byte $80   ; 
- D 0 - I - 0x011E26 04:9E16: 50        .byte $50   ; 
- D 0 - I - 0x011E27 04:9E17: 20        .byte $20   ; 
- D 0 - I - 0x011E28 04:9E18: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x011E29 04:9E19: B0        .byte $B0   ; 
- D 0 - I - 0x011E2A 04:9E1A: 80        .byte $80   ; 
- D 0 - I - 0x011E2B 04:9E1B: 50        .byte $50   ; 
- D 0 - I - 0x011E2C 04:9E1C: 80        .byte $80   ; 
- D 0 - I - 0x011E2D 04:9E1D: B0        .byte $B0   ; 
- D 0 - I - 0x011E2E 04:9E1E: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x011E2F 04:9E1F: 20        .byte $20   ; 
- D 0 - I - 0x011E30 04:9E20: 50        .byte $50   ; 
- D 0 - I - 0x011E31 04:9E21: 80        .byte $80   ; 
- D 0 - I - 0x011E32 04:9E22: B0        .byte $B0   ; 
- D 0 - I - 0x011E33 04:9E23: 80        .byte $80   ; 
- D 0 - I - 0x011E34 04:9E24: 50        .byte $50   ; 
- D 0 - I - 0x011E35 04:9E25: 20        .byte $20   ; 
- D 0 - I - 0x011E36 04:9E26: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x011E37 04:9E27: B0        .byte $B0   ; 
- D 0 - I - 0x011E38 04:9E28: 80        .byte $80   ; 
- D 0 - I - 0x011E39 04:9E29: 50        .byte $50   ; 
- D 0 - I - 0x011E3A 04:9E2A: 80        .byte $80   ; 
- D 0 - I - 0x011E3B 04:9E2B: B0        .byte $B0   ; 
- D 0 - I - 0x011E3C 04:9E2C: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x011E3D 04:9E2D: 20        .byte $20   ; 
- D 0 - I - 0x011E3E 04:9E2E: 50        .byte $50   ; 
- D 0 - I - 0x011E3F 04:9E2F: B0        .byte $B0   ; 
- D 0 - I - 0x011E40 04:9E30: E1        .byte con_se_cb_1_E0 + $01   ; 
- D 0 - I - 0x011E41 04:9E31: 20        .byte $20   ; 
- D 0 - I - 0x011E42 04:9E32: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x011E43 04:9E33: B0        .byte $B0   ; 
- D 0 - I - 0x011E44 04:9E34: 80        .byte $80   ; 
- D 0 - I - 0x011E45 04:9E35: 50        .byte $50   ; 
- D 0 - I - 0x011E46 04:9E36: 20        .byte $20   ; 
- D 0 - I - 0x011E47 04:9E37: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x011E48 04:9E38: B0        .byte $B0   ; 
- D 0 - I - 0x011E49 04:9E39: 80        .byte $80   ; 
- D 0 - I - 0x011E4A 04:9E3A: B0        .byte $B0   ; 
- D 0 - I - 0x011E4B 04:9E3B: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x011E4C 04:9E3C: 20        .byte $20   ; 
- D 0 - I - 0x011E4D 04:9E3D: 50        .byte $50   ; 
- D 0 - I - 0x011E4E 04:9E3E: 80        .byte $80   ; 
- D 0 - I - 0x011E4F 04:9E3F: B0        .byte $B0   ; 
- D 0 - I - 0x011E50 04:9E40: E1        .byte con_se_cb_1_E0 + $01   ; 
- D 0 - I - 0x011E51 04:9E41: 20        .byte $20   ; 
- D 0 - I - 0x011E52 04:9E42: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x011E53 04:9E43: B0        .byte $B0   ; 
- D 0 - I - 0x011E54 04:9E44: 80        .byte $80   ; 
- D 0 - I - 0x011E55 04:9E45: 50        .byte $50   ; 
- D 0 - I - 0x011E56 04:9E46: 20        .byte $20   ; 
- D 0 - I - 0x011E57 04:9E47: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x011E58 04:9E48: B0        .byte $B0   ; 
- D 0 - I - 0x011E59 04:9E49: 80        .byte $80   ; 
- D 0 - I - 0x011E5A 04:9E4A: B0        .byte $B0   ; 
- D 0 - I - 0x011E5B 04:9E4B: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x011E5C 04:9E4C: 20        .byte $20   ; 
- D 0 - I - 0x011E5D 04:9E4D: 50        .byte $50   ; 
- D 0 - I - 0x011E5E 04:9E4E: 80        .byte $80   ; 
- D 0 - I - 0x011E5F 04:9E4F: B0        .byte $B0   ; 
- D 0 - I - 0x011E60 04:9E50: E1        .byte con_se_cb_1_E0 + $01   ; 
- D 0 - I - 0x011E61 04:9E51: 00        .byte $00   ; 
- D 0 - I - 0x011E62 04:9E52: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x011E63 04:9E53: 90        .byte $90   ; 
- D 0 - I - 0x011E64 04:9E54: 60        .byte $60   ; 
- D 0 - I - 0x011E65 04:9E55: 30        .byte $30   ; 
- D 0 - I - 0x011E66 04:9E56: 00        .byte $00   ; 
- D 0 - I - 0x011E67 04:9E57: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x011E68 04:9E58: 90        .byte $90   ; 
- D 0 - I - 0x011E69 04:9E59: 60        .byte $60   ; 
- D 0 - I - 0x011E6A 04:9E5A: 90        .byte $90   ; 
- D 0 - I - 0x011E6B 04:9E5B: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x011E6C 04:9E5C: 00        .byte $00   ; 
- D 0 - I - 0x011E6D 04:9E5D: 30        .byte $30   ; 
- D 0 - I - 0x011E6E 04:9E5E: 60        .byte $60   ; 
- D 0 - I - 0x011E6F 04:9E5F: 90        .byte $90   ; 
- D 0 - I - 0x011E70 04:9E60: E1        .byte con_se_cb_1_E0 + $01   ; 
- D 0 - I - 0x011E71 04:9E61: 00        .byte $00   ; 
- D 0 - I - 0x011E72 04:9E62: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x011E73 04:9E63: 90        .byte $90   ; 
- D 0 - I - 0x011E74 04:9E64: 60        .byte $60   ; 
- D 0 - I - 0x011E75 04:9E65: 30        .byte $30   ; 
- D 0 - I - 0x011E76 04:9E66: 00        .byte $00   ; 
- D 0 - I - 0x011E77 04:9E67: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x011E78 04:9E68: 90        .byte $90   ; 
- D 0 - I - 0x011E79 04:9E69: 60        .byte $60   ; 
- D 0 - I - 0x011E7A 04:9E6A: 90        .byte $90   ; 
- D 0 - I - 0x011E7B 04:9E6B: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x011E7C 04:9E6C: 00        .byte $00   ; 
- D 0 - I - 0x011E7D 04:9E6D: 30        .byte $30   ; 
- D 0 - I - 0x011E7E 04:9E6E: 60        .byte $60   ; 
- D 0 - I - 0x011E7F 04:9E6F: E1        .byte con_se_cb_1_E0 + $01   ; 
- D 0 - I - 0x011E80 04:9E70: 00        .byte $00   ; 
- D 0 - I - 0x011E81 04:9E71: 30        .byte $30   ; 
- D 0 - I - 0x011E82 04:9E72: 00        .byte $00   ; 
- D 0 - I - 0x011E83 04:9E73: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x011E84 04:9E74: 90        .byte $90   ; 
- D 0 - I - 0x011E85 04:9E75: 60        .byte $60   ; 
- D 0 - I - 0x011E86 04:9E76: 30        .byte $30   ; 
- D 0 - I - 0x011E87 04:9E77: 00        .byte $00   ; 
- D 0 - I - 0x011E88 04:9E78: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x011E89 04:9E79: 90        .byte $90   ; 
- D 0 - I - 0x011E8A 04:9E7A: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x011E8B 04:9E7B: 00        .byte $00   ; 
- D 0 - I - 0x011E8C 04:9E7C: 30        .byte $30   ; 
- D 0 - I - 0x011E8D 04:9E7D: 60        .byte $60   ; 
- D 0 - I - 0x011E8E 04:9E7E: 90        .byte $90   ; 
- D 0 - I - 0x011E8F 04:9E7F: E1        .byte con_se_cb_1_E0 + $01   ; 
- D 0 - I - 0x011E90 04:9E80: 30        .byte $30   ; 
- D 0 - I - 0x011E91 04:9E81: 60        .byte $60   ; 
- D 0 - I - 0x011E92 04:9E82: 30        .byte $30   ; 
- D 0 - I - 0x011E93 04:9E83: 00        .byte $00   ; 
- D 0 - I - 0x011E94 04:9E84: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x011E95 04:9E85: 90        .byte $90   ; 
- D 0 - I - 0x011E96 04:9E86: 60        .byte $60   ; 
- D 0 - I - 0x011E97 04:9E87: 30        .byte $30   ; 
- D 0 - I - 0x011E98 04:9E88: E1        .byte con_se_cb_1_E0 + $01   ; 
- D 0 - I - 0x011E99 04:9E89: 90        .byte $90   ; 
- D 0 - I - 0x011E9A 04:9E8A: 60        .byte $60   ; 
- D 0 - I - 0x011E9B 04:9E8B: 30        .byte $30   ; 
- D 0 - I - 0x011E9C 04:9E8C: 00        .byte $00   ; 
- D 0 - I - 0x011E9D 04:9E8D: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x011E9E 04:9E8E: 90        .byte $90   ; 
- D 0 - I - 0x011E9F 04:9E8F: 60        .byte $60   ; 
- D 0 - I - 0x011EA0 04:9E90: EA        .byte con_se_cb_1_EA, $00   ; 
- D 0 - I - 0x011EA2 04:9E92: EC        .byte con_se_cb_1_EC, $00   ; 
- D 0 - I - 0x011EA4 04:9E94: FE        .byte con_se_cb_1_FE, $FF   ; 
- D 0 - I - 0x011EA6 04:9E96: 7F 9D     .word off_FE_9D7F



off_ch_01_0x011EA8_5F:
- D 0 - I - 0x011EA8 04:9E98: D6        .byte con_se_cb_1_D0 + $06, $76, con_9E25_01 + $80   ; 
- D 0 - I - 0x011EAB 04:9E9B: 10        .byte $10   ; 
- D 0 - I - 0x011EAC 04:9E9C: E9        .byte con_se_cb_1_E9, $31   ; 
- D 0 - I - 0x011EAE 04:9E9E: EB        .byte con_se_cb_1_EB, con_9E7B_50, $32   ; 
- D 0 - I - 0x011EB1 04:9EA1: E6        .byte con_se_cb_1_E6, $12   ; 
- D 0 - I - 0x011EB3 04:9EA3: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x011EB4 04:9EA4: 52        .byte $52   ; 
- D 0 - I - 0x011EB5 04:9EA5: E6        .byte con_se_cb_1_E6, $01   ; 
- D 0 - I - 0x011EB7 04:9EA7: 48        .byte $48   ; 
- D 0 - I - 0x011EB8 04:9EA8: E9        .byte con_se_cb_1_E9, $00   ; 
- D 0 - I - 0x011EBA 04:9EAA: D1        .byte con_se_cb_1_D0 + $01, $73, con_9E25_00 + $80   ; 
- D 0 - I - 0x011EBD 04:9EAD: 00        .byte $00   ; 
- D 0 - I - 0x011EBE 04:9EAE: 31        .byte $31   ; 
- D 0 - I - 0x011EBF 04:9EAF: 21        .byte $21   ; 
- D 0 - I - 0x011EC0 04:9EB0: 11        .byte $11   ; 
- D 0 - I - 0x011EC1 04:9EB1: 01        .byte $01   ; 
- D 0 - I - 0x011EC2 04:9EB2: F2        .byte con_se_cb_1_F0 + $02   ; 
- D 0 - I - 0x011EC3 04:9EB3: 48        .byte $48   ; 
- D 0 - I - 0x011EC4 04:9EB4: 31        .byte $31   ; 
- D 0 - I - 0x011EC5 04:9EB5: 21        .byte $21   ; 
- D 0 - I - 0x011EC6 04:9EB6: 11        .byte $11   ; 
- D 0 - I - 0x011EC7 04:9EB7: 01        .byte $01   ; 
- D 0 - I - 0x011EC8 04:9EB8: F3        .byte con_se_cb_1_F0 + $03   ; 
- D 0 - I - 0x011EC9 04:9EB9: 48        .byte $48   ; 
- D 0 - I - 0x011ECA 04:9EBA: 31        .byte $31   ; 
- D 0 - I - 0x011ECB 04:9EBB: 21        .byte $21   ; 
- D 0 - I - 0x011ECC 04:9EBC: 11        .byte $11   ; 
- D 0 - I - 0x011ECD 04:9EBD: C2        .byte con_se_cb_1_C0 + $02   ; 
- D 0 - I - 0x011ECE 04:9EBE: F0        .byte con_se_cb_1_F0 + $00   ; 
- D 0 - I - 0x011ECF 04:9EBF: DA        .byte con_se_cb_1_D0 + $0A, $76, con_9E25_01 + $80   ; 
- D 0 - I - 0x011ED2 04:9EC2: 00        .byte $00   ; 
- D 0 - I - 0x011ED3 04:9EC3: E9        .byte con_se_cb_1_E9, $31   ; 
- D 0 - I - 0x011ED5 04:9EC5: 74        .byte $74   ; 
- D 0 - I - 0x011ED6 04:9EC6: E6        .byte con_se_cb_1_E6, $01   ; 
- D 0 - I - 0x011ED8 04:9EC8: 68        .byte $68   ; 
- D 0 - I - 0x011ED9 04:9EC9: E9        .byte con_se_cb_1_E9, $00   ; 
- D 0 - I - 0x011EDB 04:9ECB: D1        .byte con_se_cb_1_D0 + $01, $73, con_9E25_00 + $80   ; 
- D 0 - I - 0x011EDE 04:9ECE: 00        .byte $00   ; 
- D 0 - I - 0x011EDF 04:9ECF: 51        .byte $51   ; 
- D 0 - I - 0x011EE0 04:9ED0: 41        .byte $41   ; 
- D 0 - I - 0x011EE1 04:9ED1: 31        .byte $31   ; 
- D 0 - I - 0x011EE2 04:9ED2: 21        .byte $21   ; 
- D 0 - I - 0x011EE3 04:9ED3: F2        .byte con_se_cb_1_F0 + $02   ; 
- D 0 - I - 0x011EE4 04:9ED4: 68        .byte $68   ; 
- D 0 - I - 0x011EE5 04:9ED5: 51        .byte $51   ; 
- D 0 - I - 0x011EE6 04:9ED6: 41        .byte $41   ; 
- D 0 - I - 0x011EE7 04:9ED7: 31        .byte $31   ; 
- D 0 - I - 0x011EE8 04:9ED8: 21        .byte $21   ; 
- D 0 - I - 0x011EE9 04:9ED9: F3        .byte con_se_cb_1_F0 + $03   ; 
- D 0 - I - 0x011EEA 04:9EDA: 64        .byte $64   ; 
- D 0 - I - 0x011EEB 04:9EDB: 50        .byte $50   ; 
- D 0 - I - 0x011EEC 04:9EDC: 40        .byte $40   ; 
- D 0 - I - 0x011EED 04:9EDD: 30        .byte $30   ; 
- D 0 - I - 0x011EEE 04:9EDE: 21        .byte $21   ; 
- D 0 - I - 0x011EEF 04:9EDF: F0        .byte con_se_cb_1_F0 + $00   ; 
- D 0 - I - 0x011EF0 04:9EE0: D3        .byte con_se_cb_1_D0 + $03, $76, con_9E25_01 + $80   ; 
- D 0 - I - 0x011EF3 04:9EE3: 00        .byte $00   ; 
- D 0 - I - 0x011EF4 04:9EE4: E9        .byte con_se_cb_1_E9, $31   ; 
- D 0 - I - 0x011EF6 04:9EE6: 9D        .byte $9D   ; 
- D 0 - I - 0x011EF7 04:9EE7: E6        .byte con_se_cb_1_E6, $01   ; 
- D 0 - I - 0x011EF9 04:9EE9: 88        .byte $88   ; 
- D 0 - I - 0x011EFA 04:9EEA: E9        .byte con_se_cb_1_E9, $00   ; 
- D 0 - I - 0x011EFC 04:9EEC: D1        .byte con_se_cb_1_D0 + $01, $73, con_9E25_00 + $80   ; 
- D 0 - I - 0x011EFF 04:9EEF: 00        .byte $00   ; 
- D 0 - I - 0x011F00 04:9EF0: 71        .byte $71   ; 
- D 0 - I - 0x011F01 04:9EF1: 61        .byte $61   ; 
- D 0 - I - 0x011F02 04:9EF2: 51        .byte $51   ; 
- D 0 - I - 0x011F03 04:9EF3: 41        .byte $41   ; 
- D 0 - I - 0x011F04 04:9EF4: F2        .byte con_se_cb_1_F0 + $02   ; 
- D 0 - I - 0x011F05 04:9EF5: 88        .byte $88   ; 
- D 0 - I - 0x011F06 04:9EF6: 71        .byte $71   ; 
- D 0 - I - 0x011F07 04:9EF7: 61        .byte $61   ; 
- D 0 - I - 0x011F08 04:9EF8: 51        .byte $51   ; 
- D 0 - I - 0x011F09 04:9EF9: 41        .byte $41   ; 
- D 0 - I - 0x011F0A 04:9EFA: 31        .byte $31   ; 
- D 0 - I - 0x011F0B 04:9EFB: F0        .byte con_se_cb_1_F0 + $00   ; 
- D 0 - I - 0x011F0C 04:9EFC: D6        .byte con_se_cb_1_D0 + $06, $76, con_9E25_01 + $80   ; 
- D 0 - I - 0x011F0F 04:9EFF: 00        .byte $00   ; 
- D 0 - I - 0x011F10 04:9F00: E9        .byte con_se_cb_1_E9, $31   ; 
- D 0 - I - 0x011F12 04:9F02: B5        .byte $B5   ; 
- D 0 - I - 0x011F13 04:9F03: E6        .byte con_se_cb_1_E6, $01   ; 
- D 0 - I - 0x011F15 04:9F05: A8        .byte $A8   ; 
- D 0 - I - 0x011F16 04:9F06: E9        .byte con_se_cb_1_E9, $00   ; 
- D 0 - I - 0x011F18 04:9F08: D1        .byte con_se_cb_1_D0 + $01, $72, con_9E25_00 + $80   ; 
- D 0 - I - 0x011F1B 04:9F0B: 00        .byte $00   ; 
- D 0 - I - 0x011F1C 04:9F0C: 91        .byte $91   ; 
- D 0 - I - 0x011F1D 04:9F0D: 81        .byte $81   ; 
- D 0 - I - 0x011F1E 04:9F0E: 71        .byte $71   ; 
- D 0 - I - 0x011F1F 04:9F0F: 61        .byte $61   ; 
- D 0 - I - 0x011F20 04:9F10: F2        .byte con_se_cb_1_F0 + $02   ; 
- D 0 - I - 0x011F21 04:9F11: A8        .byte $A8   ; 
- D 0 - I - 0x011F22 04:9F12: 71        .byte $71   ; 
- D 0 - I - 0x011F23 04:9F13: 61        .byte $61   ; 
- D 0 - I - 0x011F24 04:9F14: 51        .byte $51   ; 
- D 0 - I - 0x011F25 04:9F15: 41        .byte $41   ; 
- D 0 - I - 0x011F26 04:9F16: 31        .byte $31   ; 
- D 0 - I - 0x011F27 04:9F17: EB        .byte con_se_cb_1_EB, $00   ; 
off_FE_9F19:
- D 0 - I - 0x011F29 04:9F19: D6        .byte con_se_cb_1_D0 + $06, $37, con_9E25_05 + $80   ; 
- D 0 - I - 0x011F2C 04:9F1C: 17        .byte $17   ; 
- D 0 - I - 0x011F2D 04:9F1D: EC        .byte con_se_cb_1_EC, $02   ; 
- D 0 - I - 0x011F2F 04:9F1F: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x011F30 04:9F20: FB        .byte con_se_cb_1_FB   ; 
- D 0 - I - 0x011F31 04:9F21: 90        .byte $90   ; 
- D 0 - I - 0x011F32 04:9F22: 80        .byte $80   ; 
- D 0 - I - 0x011F33 04:9F23: 70        .byte $70   ; 
- D 0 - I - 0x011F34 04:9F24: 60        .byte $60   ; 
- D 0 - I - 0x011F35 04:9F25: 70        .byte $70   ; 
- D 0 - I - 0x011F36 04:9F26: 80        .byte $80   ; 
- D 0 - I - 0x011F37 04:9F27: FE        .byte con_se_cb_1_FE, $0E   ; 
- D 0 - I - 0x011F39 04:9F29: 90        .byte $90   ; 
- D 0 - I - 0x011F3A 04:9F2A: 80        .byte $80   ; 
- D 0 - I - 0x011F3B 04:9F2B: 70        .byte $70   ; 
- D 0 - I - 0x011F3C 04:9F2C: 60        .byte $60   ; 
- D 0 - I - 0x011F3D 04:9F2D: 50        .byte $50   ; 
- D 0 - I - 0x011F3E 04:9F2E: 40        .byte $40   ; 
- D 0 - I - 0x011F3F 04:9F2F: 30        .byte $30   ; 
- D 0 - I - 0x011F40 04:9F30: 20        .byte $20   ; 
- D 0 - I - 0x011F41 04:9F31: 10        .byte $10   ; 
- D 0 - I - 0x011F42 04:9F32: 00        .byte $00   ; 
- D 0 - I - 0x011F43 04:9F33: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x011F44 04:9F34: B0        .byte $B0   ; 
- D 0 - I - 0x011F45 04:9F35: A0        .byte $A0   ; 
- D 0 - I - 0x011F46 04:9F36: EC        .byte con_se_cb_1_EC, $00   ; 
- D 0 - I - 0x011F48 04:9F38: D6        .byte con_se_cb_1_D0 + $06, $F7, con_9E25_02 + $80   ; 
- D 0 - I - 0x011F4B 04:9F3B: 00        .byte $00   ; 
- D 0 - I - 0x011F4C 04:9F3C: EB        .byte con_se_cb_1_EB, con_9E7B_50, $53   ; 
- D 0 - I - 0x011F4F 04:9F3F: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x011F50 04:9F40: B2        .byte $B2   ; 
- D 0 - I - 0x011F51 04:9F41: D1        .byte con_se_cb_1_D0 + $01, $F4, con_9E25_00 + $80   ; 
- D 0 - I - 0x011F54 04:9F44: 00        .byte $00   ; 
- D 0 - I - 0x011F55 04:9F45: B1        .byte $B1   ; 
- D 0 - I - 0x011F56 04:9F46: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x011F57 04:9F47: 01        .byte $01   ; 
- D 0 - I - 0x011F58 04:9F48: 11        .byte $11   ; 
- D 0 - I - 0x011F59 04:9F49: 21        .byte $21   ; 
- D 0 - I - 0x011F5A 04:9F4A: 31        .byte $31   ; 
- D 0 - I - 0x011F5B 04:9F4B: 41        .byte $41   ; 
- D 0 - I - 0x011F5C 04:9F4C: 53        .byte $53   ; 
- D 0 - I - 0x011F5D 04:9F4D: E6        .byte con_se_cb_1_E6, $0A   ; 
- D 0 - I - 0x011F5F 04:9F4F: E8        .byte con_se_cb_1_E8, $50 + $06   ; 
- D 0 - I - 0x011F61 04:9F51: 5A        .byte $5A   ; 
- D 0 - I - 0x011F62 04:9F52: D6        .byte con_se_cb_1_D0 + $06, $F7, con_9E25_02 + $80   ; 
- D 0 - I - 0x011F65 04:9F55: 00        .byte $00   ; 
- D 0 - I - 0x011F66 04:9F56: 22        .byte $22   ; 
- D 0 - I - 0x011F67 04:9F57: D1        .byte con_se_cb_1_D0 + $01, $F4, con_9E25_00 + $80   ; 
- D 0 - I - 0x011F6A 04:9F5A: 00        .byte $00   ; 
- D 0 - I - 0x011F6B 04:9F5B: 21        .byte $21   ; 
- D 0 - I - 0x011F6C 04:9F5C: 31        .byte $31   ; 
- D 0 - I - 0x011F6D 04:9F5D: 41        .byte $41   ; 
- D 0 - I - 0x011F6E 04:9F5E: 51        .byte $51   ; 
- D 0 - I - 0x011F6F 04:9F5F: 61        .byte $61   ; 
- D 0 - I - 0x011F70 04:9F60: 71        .byte $71   ; 
- D 0 - I - 0x011F71 04:9F61: 83        .byte $83   ; 
- D 0 - I - 0x011F72 04:9F62: E6        .byte con_se_cb_1_E6, $0A   ; 
- D 0 - I - 0x011F74 04:9F64: E8        .byte con_se_cb_1_E8, $50 + $06   ; 
- D 0 - I - 0x011F76 04:9F66: 8A        .byte $8A   ; 
- D 0 - I - 0x011F77 04:9F67: D6        .byte con_se_cb_1_D0 + $06, $F7, con_9E25_02 + $80   ; 
- D 0 - I - 0x011F7A 04:9F6A: 00        .byte $00   ; 
- D 0 - I - 0x011F7B 04:9F6B: 02        .byte $02   ; 
- D 0 - I - 0x011F7C 04:9F6C: D1        .byte con_se_cb_1_D0 + $01, $F4, con_9E25_00 + $80   ; 
- D 0 - I - 0x011F7F 04:9F6F: 00        .byte $00   ; 
- D 0 - I - 0x011F80 04:9F70: 01        .byte $01   ; 
- D 0 - I - 0x011F81 04:9F71: 11        .byte $11   ; 
- D 0 - I - 0x011F82 04:9F72: 21        .byte $21   ; 
- D 0 - I - 0x011F83 04:9F73: 31        .byte $31   ; 
- D 0 - I - 0x011F84 04:9F74: 41        .byte $41   ; 
- D 0 - I - 0x011F85 04:9F75: 51        .byte $51   ; 
- D 0 - I - 0x011F86 04:9F76: 63        .byte $63   ; 
- D 0 - I - 0x011F87 04:9F77: E6        .byte con_se_cb_1_E6, $0A   ; 
- D 0 - I - 0x011F89 04:9F79: E8        .byte con_se_cb_1_E8, $50 + $06   ; 
- D 0 - I - 0x011F8B 04:9F7B: 6A        .byte $6A   ; 
- D 0 - I - 0x011F8C 04:9F7C: D6        .byte con_se_cb_1_D0 + $06, $F7, con_9E25_02 + $80   ; 
- D 0 - I - 0x011F8F 04:9F7F: 00        .byte $00   ; 
- D 0 - I - 0x011F90 04:9F80: 32        .byte $32   ; 
- D 0 - I - 0x011F91 04:9F81: D1        .byte con_se_cb_1_D0 + $01, $F4, con_9E25_00 + $80   ; 
- D 0 - I - 0x011F94 04:9F84: 00        .byte $00   ; 
- D 0 - I - 0x011F95 04:9F85: 31        .byte $31   ; 
- D 0 - I - 0x011F96 04:9F86: 41        .byte $41   ; 
- D 0 - I - 0x011F97 04:9F87: 51        .byte $51   ; 
- D 0 - I - 0x011F98 04:9F88: 61        .byte $61   ; 
- D 0 - I - 0x011F99 04:9F89: 71        .byte $71   ; 
- D 0 - I - 0x011F9A 04:9F8A: 81        .byte $81   ; 
- D 0 - I - 0x011F9B 04:9F8B: E6        .byte con_se_cb_1_E6, $06   ; 
- D 0 - I - 0x011F9D 04:9F8D: 98        .byte $98   ; 
- D 0 - I - 0x011F9E 04:9F8E: D6        .byte con_se_cb_1_D0 + $06, $F7, con_9E25_02 + $80   ; 
- D 0 - I - 0x011FA1 04:9F91: 54        .byte $54   ; 
- D 0 - I - 0x011FA2 04:9F92: 81        .byte $81   ; 
- D 0 - I - 0x011FA3 04:9F93: 71        .byte $71   ; 
- D 0 - I - 0x011FA4 04:9F94: 61        .byte $61   ; 
- D 0 - I - 0x011FA5 04:9F95: 51        .byte $51   ; 
- D 0 - I - 0x011FA6 04:9F96: 41        .byte $41   ; 
- D 0 - I - 0x011FA7 04:9F97: EB        .byte con_se_cb_1_EB, $00   ; 
- D 0 - I - 0x011FA9 04:9F99: EA        .byte con_se_cb_1_EA, $01   ; 
- D 0 - I - 0x011FAB 04:9F9B: D6        .byte con_se_cb_1_D0 + $06, $37, con_9E25_05 + $80   ; 
- D 0 - I - 0x011FAE 04:9F9E: 17        .byte $17   ; 
- D 0 - I - 0x011FAF 04:9F9F: EC        .byte con_se_cb_1_EC, $02   ; 
- D 0 - I - 0x011FB1 04:9FA1: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x011FB2 04:9FA2: FB        .byte con_se_cb_1_FB   ; 
- D 0 - I - 0x011FB3 04:9FA3: 90        .byte $90   ; 
- D 0 - I - 0x011FB4 04:9FA4: 80        .byte $80   ; 
- D 0 - I - 0x011FB5 04:9FA5: 70        .byte $70   ; 
- D 0 - I - 0x011FB6 04:9FA6: 60        .byte $60   ; 
- D 0 - I - 0x011FB7 04:9FA7: 70        .byte $70   ; 
- D 0 - I - 0x011FB8 04:9FA8: 80        .byte $80   ; 
- D 0 - I - 0x011FB9 04:9FA9: FE        .byte con_se_cb_1_FE, $0E   ; 
- D 0 - I - 0x011FBB 04:9FAB: 90        .byte $90   ; 
- D 0 - I - 0x011FBC 04:9FAC: 80        .byte $80   ; 
- D 0 - I - 0x011FBD 04:9FAD: 70        .byte $70   ; 
- D 0 - I - 0x011FBE 04:9FAE: 60        .byte $60   ; 
- D 0 - I - 0x011FBF 04:9FAF: 50        .byte $50   ; 
- D 0 - I - 0x011FC0 04:9FB0: 40        .byte $40   ; 
- D 0 - I - 0x011FC1 04:9FB1: 30        .byte $30   ; 
- D 0 - I - 0x011FC2 04:9FB2: 20        .byte $20   ; 
- D 0 - I - 0x011FC3 04:9FB3: 10        .byte $10   ; 
- D 0 - I - 0x011FC4 04:9FB4: 00        .byte $00   ; 
- D 0 - I - 0x011FC5 04:9FB5: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x011FC6 04:9FB6: B0        .byte $B0   ; 
- D 0 - I - 0x011FC7 04:9FB7: A0        .byte $A0   ; 
- D 0 - I - 0x011FC8 04:9FB8: EC        .byte con_se_cb_1_EC, $00   ; 
- D 0 - I - 0x011FCA 04:9FBA: EA        .byte con_se_cb_1_EA, $01   ; 
- D 0 - I - 0x011FCC 04:9FBC: D6        .byte con_se_cb_1_D0 + $06, $F7, con_9E25_02 + $80   ; 
- D 0 - I - 0x011FCF 04:9FBF: 00        .byte $00   ; 
- D 0 - I - 0x011FD0 04:9FC0: EB        .byte con_se_cb_1_EB, con_9E7B_50, $53   ; 
- D 0 - I - 0x011FD3 04:9FC3: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 0 - I - 0x011FD4 04:9FC4: B2        .byte $B2   ; 
- D 0 - I - 0x011FD5 04:9FC5: D1        .byte con_se_cb_1_D0 + $01, $F4, con_9E25_00 + $80   ; 
- D 0 - I - 0x011FD8 04:9FC8: 00        .byte $00   ; 
- D 0 - I - 0x011FD9 04:9FC9: B1        .byte $B1   ; 
- D 0 - I - 0x011FDA 04:9FCA: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 0 - I - 0x011FDB 04:9FCB: 01        .byte $01   ; 
- D 0 - I - 0x011FDC 04:9FCC: 11        .byte $11   ; 
- D 0 - I - 0x011FDD 04:9FCD: 21        .byte $21   ; 
- D 0 - I - 0x011FDE 04:9FCE: 31        .byte $31   ; 
- D 0 - I - 0x011FDF 04:9FCF: 41        .byte $41   ; 
- D 0 - I - 0x011FE0 04:9FD0: 53        .byte $53   ; 
- D 0 - I - 0x011FE1 04:9FD1: E6        .byte con_se_cb_1_E6, $0A   ; 
- D 0 - I - 0x011FE3 04:9FD3: E8        .byte con_se_cb_1_E8, $50 + $06   ; 
- D 0 - I - 0x011FE5 04:9FD5: 5A        .byte $5A   ; 
- D 0 - I - 0x011FE6 04:9FD6: D6        .byte con_se_cb_1_D0 + $06, $F7, con_9E25_02 + $80   ; 
- D 0 - I - 0x011FE9 04:9FD9: 00        .byte $00   ; 
- D 0 - I - 0x011FEA 04:9FDA: 22        .byte $22   ; 
- D 0 - I - 0x011FEB 04:9FDB: D1        .byte con_se_cb_1_D0 + $01, $F4, con_9E25_00 + $80   ; 
- D 0 - I - 0x011FEE 04:9FDE: 00        .byte $00   ; 
- D 0 - I - 0x011FEF 04:9FDF: 21        .byte $21   ; 
- D 0 - I - 0x011FF0 04:9FE0: 31        .byte $31   ; 
- D 0 - I - 0x011FF1 04:9FE1: 41        .byte $41   ; 
- D 0 - I - 0x011FF2 04:9FE2: 51        .byte $51   ; 
- D 0 - I - 0x011FF3 04:9FE3: 61        .byte $61   ; 
- D 0 - I - 0x011FF4 04:9FE4: 71        .byte $71   ; 
- D 0 - I - 0x011FF5 04:9FE5: 83        .byte $83   ; 
- D 0 - I - 0x011FF6 04:9FE6: E6        .byte con_se_cb_1_E6, $0A   ; 
- D 0 - I - 0x011FF8 04:9FE8: E8        .byte con_se_cb_1_E8, $50 + $06   ; 
- D 0 - I - 0x011FFA 04:9FEA: 8A        .byte $8A   ; 
- D 0 - I - 0x011FFB 04:9FEB: D6        .byte con_se_cb_1_D0 + $06, $F7, con_9E25_02 + $80   ; 
- D 0 - I - 0x011FFE 04:9FEE: 00        .byte $00   ; 
- D 0 - I - 0x011FFF 04:9FEF: 02        .byte $02   ; 
- D 0 - I - 0x012000 04:9FF0: D1        .byte con_se_cb_1_D0 + $01, $F4, con_9E25_00 + $80   ; 
- D 0 - I - 0x012003 04:9FF3: 00        .byte $00   ; 
- D 0 - I - 0x012004 04:9FF4: 01        .byte $01   ; 
- D 0 - I - 0x012005 04:9FF5: 11        .byte $11   ; 
- D 0 - I - 0x012006 04:9FF6: 21        .byte $21   ; 
- D 0 - I - 0x012007 04:9FF7: 31        .byte $31   ; 
- D 0 - I - 0x012008 04:9FF8: 41        .byte $41   ; 
- D 0 - I - 0x012009 04:9FF9: 51        .byte $51   ; 
- D 0 - I - 0x01200A 04:9FFA: 63        .byte $63   ; 
- D 0 - I - 0x01200B 04:9FFB: E6        .byte con_se_cb_1_E6, $0A   ; 
- D 0 - I - 0x01200D 04:9FFD: E8        .byte con_se_cb_1_E8, $50 + $06   ; 
- D 0 - I - 0x01200F 04:9FFF: 6A        .byte $6A   ; 
- D 1 - I - 0x012010 04:A000: D6        .byte con_se_cb_1_D0 + $06, $F7, con_9E25_02 + $80   ; 
- D 1 - I - 0x012013 04:A003: 00        .byte $00   ; 
- D 1 - I - 0x012014 04:A004: 32        .byte $32   ; 
- D 1 - I - 0x012015 04:A005: D1        .byte con_se_cb_1_D0 + $01, $F4, con_9E25_00 + $80   ; 
- D 1 - I - 0x012018 04:A008: 00        .byte $00   ; 
- D 1 - I - 0x012019 04:A009: 31        .byte $31   ; 
- D 1 - I - 0x01201A 04:A00A: 41        .byte $41   ; 
- D 1 - I - 0x01201B 04:A00B: 51        .byte $51   ; 
- D 1 - I - 0x01201C 04:A00C: 61        .byte $61   ; 
- D 1 - I - 0x01201D 04:A00D: 71        .byte $71   ; 
- D 1 - I - 0x01201E 04:A00E: 81        .byte $81   ; 
- D 1 - I - 0x01201F 04:A00F: E6        .byte con_se_cb_1_E6, $06   ; 
- D 1 - I - 0x012021 04:A011: 9A        .byte $9A   ; 
- D 1 - I - 0x012022 04:A012: D6        .byte con_se_cb_1_D0 + $06, $F7, con_9E25_02 + $80   ; 
- D 1 - I - 0x012025 04:A015: 54        .byte $54   ; 
- D 1 - I - 0x012026 04:A016: 81        .byte $81   ; 
- D 1 - I - 0x012027 04:A017: 91        .byte $91   ; 
- D 1 - I - 0x012028 04:A018: 81        .byte $81   ; 
- D 1 - I - 0x012029 04:A019: 91        .byte $91   ; 
- D 1 - I - 0x01202A 04:A01A: EB        .byte con_se_cb_1_EB, $00   ; 
- D 1 - I - 0x01202C 04:A01C: EA        .byte con_se_cb_1_EA, $00   ; 
- D 1 - I - 0x01202E 04:A01E: FE        .byte con_se_cb_1_FE, $FF   ; 
- D 1 - I - 0x012030 04:A020: 19 9F     .word off_FE_9F19



off_ch_02_0x012032_5F:
- D 1 - I - 0x012032 04:A022: D1        .byte con_se_cb_1_D0 + $01, $40   ; 
- D 1 - I - 0x012034 04:A024: E6        .byte con_se_cb_1_E6, $1B   ; 
- D 1 - I - 0x012036 04:A026: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x012037 04:A027: 50        .byte $50   ; 
- D 1 - I - 0x012038 04:A028: 70        .byte $70   ; 
- D 1 - I - 0x012039 04:A029: E6        .byte con_se_cb_1_E6, $1A   ; 
- D 1 - I - 0x01203B 04:A02B: 80        .byte $80   ; 
- D 1 - I - 0x01203C 04:A02C: 90        .byte $90   ; 
- D 1 - I - 0x01203D 04:A02D: E6        .byte con_se_cb_1_E6, $19   ; 
- D 1 - I - 0x01203F 04:A02F: 70        .byte $70   ; 
- D 1 - I - 0x012040 04:A030: E6        .byte con_se_cb_1_E6, $18   ; 
- D 1 - I - 0x012042 04:A032: 90        .byte $90   ; 
- D 1 - I - 0x012043 04:A033: E6        .byte con_se_cb_1_E6, $17   ; 
- D 1 - I - 0x012045 04:A035: A0        .byte $A0   ; 
- D 1 - I - 0x012046 04:A036: E6        .byte con_se_cb_1_E6, $16   ; 
- D 1 - I - 0x012048 04:A038: B0        .byte $B0   ; 
- D 1 - I - 0x012049 04:A039: D1        .byte con_se_cb_1_D0 + $01, $38   ; 
- D 1 - I - 0x01204B 04:A03B: E6        .byte con_se_cb_1_E6, $15   ; 
- D 1 - I - 0x01204D 04:A03D: 90        .byte $90   ; 
- D 1 - I - 0x01204E 04:A03E: E6        .byte con_se_cb_1_E6, $14   ; 
- D 1 - I - 0x012050 04:A040: B0        .byte $B0   ; 
- D 1 - I - 0x012051 04:A041: D1        .byte con_se_cb_1_D0 + $01, $34   ; 
- D 1 - I - 0x012053 04:A043: E6        .byte con_se_cb_1_E6, $13   ; 
- D 1 - I - 0x012055 04:A045: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x012056 04:A046: 00        .byte $00   ; 
- D 1 - I - 0x012057 04:A047: D1        .byte con_se_cb_1_D0 + $01, $30   ; 
- D 1 - I - 0x012059 04:A049: E6        .byte con_se_cb_1_E6, $12   ; 
- D 1 - I - 0x01205B 04:A04B: 10        .byte $10   ; 
- D 1 - I - 0x01205C 04:A04C: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x01205D 04:A04D: B0        .byte $B0   ; 
- D 1 - I - 0x01205E 04:A04E: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x01205F 04:A04F: 00        .byte $00   ; 
- D 1 - I - 0x012060 04:A050: 10        .byte $10   ; 
- D 1 - I - 0x012061 04:A051: 20        .byte $20   ; 
off_FE_A052:
- D 1 - I - 0x012062 04:A052: D6        .byte con_se_cb_1_D0 + $06, $00   ; 
- D 1 - I - 0x012064 04:A054: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x012065 04:A055: 0B        .byte $0B   ; 
- D 1 - I - 0x012066 04:A056: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x012067 04:A057: 6B        .byte $6B   ; 
- D 1 - I - 0x012068 04:A058: 9B        .byte $9B   ; 
- D 1 - I - 0x012069 04:A059: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x01206A 04:A05A: 33        .byte $33   ; 
- D 1 - I - 0x01206B 04:A05B: 23        .byte $23   ; 
- D 1 - I - 0x01206C 04:A05C: 13        .byte $13   ; 
- D 1 - I - 0x01206D 04:A05D: D6        .byte con_se_cb_1_D0 + $06, $00   ; 
- D 1 - I - 0x01206F 04:A05F: 0B        .byte $0B   ; 
- D 1 - I - 0x012070 04:A060: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x012071 04:A061: 6B        .byte $6B   ; 
- D 1 - I - 0x012072 04:A062: 9B        .byte $9B   ; 
- D 1 - I - 0x012073 04:A063: 3B        .byte $3B   ; 
- D 1 - I - 0x012074 04:A064: D6        .byte con_se_cb_1_D0 + $06, $20   ; 
- D 1 - I - 0x012076 04:A066: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x012077 04:A067: 21        .byte $21   ; 
- D 1 - I - 0x012078 04:A068: 01        .byte $01   ; 
- D 1 - I - 0x012079 04:A069: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x01207A 04:A06A: B1        .byte $B1   ; 
- D 1 - I - 0x01207B 04:A06B: 91        .byte $91   ; 
- D 1 - I - 0x01207C 04:A06C: 85        .byte $85   ; 
- D 1 - I - 0x01207D 04:A06D: 91        .byte $91   ; 
- D 1 - I - 0x01207E 04:A06E: B1        .byte $B1   ; 
- D 1 - I - 0x01207F 04:A06F: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x012080 04:A070: 01        .byte $01   ; 
- D 1 - I - 0x012081 04:A071: 21        .byte $21   ; 
- D 1 - I - 0x012082 04:A072: 41        .byte $41   ; 
- D 1 - I - 0x012083 04:A073: 51        .byte $51   ; 
- D 1 - I - 0x012084 04:A074: 41        .byte $41   ; 
- D 1 - I - 0x012085 04:A075: 21        .byte $21   ; 
- D 1 - I - 0x012086 04:A076: 01        .byte $01   ; 
- D 1 - I - 0x012087 04:A077: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x012088 04:A078: B5        .byte $B5   ; 
- D 1 - I - 0x012089 04:A079: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x01208A 04:A07A: 11        .byte $11   ; 
- D 1 - I - 0x01208B 04:A07B: 21        .byte $21   ; 
- D 1 - I - 0x01208C 04:A07C: 41        .byte $41   ; 
- D 1 - I - 0x01208D 04:A07D: 51        .byte $51   ; 
- D 1 - I - 0x01208E 04:A07E: 21        .byte $21   ; 
- D 1 - I - 0x01208F 04:A07F: 31        .byte $31   ; 
- D 1 - I - 0x012090 04:A080: 11        .byte $11   ; 
- D 1 - I - 0x012091 04:A081: 01        .byte $01   ; 
- D 1 - I - 0x012092 04:A082: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x012093 04:A083: A1        .byte $A1   ; 
- D 1 - I - 0x012094 04:A084: 95        .byte $95   ; 
- D 1 - I - 0x012095 04:A085: A1        .byte $A1   ; 
- D 1 - I - 0x012096 04:A086: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x012097 04:A087: 01        .byte $01   ; 
- D 1 - I - 0x012098 04:A088: 11        .byte $11   ; 
- D 1 - I - 0x012099 04:A089: 31        .byte $31   ; 
- D 1 - I - 0x01209A 04:A08A: 51        .byte $51   ; 
- D 1 - I - 0x01209B 04:A08B: 61        .byte $61   ; 
- D 1 - I - 0x01209C 04:A08C: 51        .byte $51   ; 
- D 1 - I - 0x01209D 04:A08D: 31        .byte $31   ; 
- D 1 - I - 0x01209E 04:A08E: 11        .byte $11   ; 
- D 1 - I - 0x01209F 04:A08F: 05        .byte $05   ; 
- D 1 - I - 0x0120A0 04:A090: 11        .byte $11   ; 
- D 1 - I - 0x0120A1 04:A091: 31        .byte $31   ; 
- D 1 - I - 0x0120A2 04:A092: 51        .byte $51   ; 
- D 1 - I - 0x0120A3 04:A093: 61        .byte $61   ; 
- D 1 - I - 0x0120A4 04:A094: 31        .byte $31   ; 
- D 1 - I - 0x0120A5 04:A095: EA        .byte con_se_cb_1_EA, $01   ; 
- D 1 - I - 0x0120A7 04:A097: D6        .byte con_se_cb_1_D0 + $06, $00   ; 
- D 1 - I - 0x0120A9 04:A099: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x0120AA 04:A09A: 0B        .byte $0B   ; 
- D 1 - I - 0x0120AB 04:A09B: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x0120AC 04:A09C: 6B        .byte $6B   ; 
- D 1 - I - 0x0120AD 04:A09D: 9B        .byte $9B   ; 
- D 1 - I - 0x0120AE 04:A09E: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x0120AF 04:A09F: 33        .byte $33   ; 
- D 1 - I - 0x0120B0 04:A0A0: 23        .byte $23   ; 
- D 1 - I - 0x0120B1 04:A0A1: 13        .byte $13   ; 
- D 1 - I - 0x0120B2 04:A0A2: D6        .byte con_se_cb_1_D0 + $06, $00   ; 
- D 1 - I - 0x0120B4 04:A0A4: 0B        .byte $0B   ; 
- D 1 - I - 0x0120B5 04:A0A5: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x0120B6 04:A0A6: 6B        .byte $6B   ; 
- D 1 - I - 0x0120B7 04:A0A7: 9B        .byte $9B   ; 
- D 1 - I - 0x0120B8 04:A0A8: 3B        .byte $3B   ; 
- D 1 - I - 0x0120B9 04:A0A9: EA        .byte con_se_cb_1_EA, $01   ; 
- D 1 - I - 0x0120BB 04:A0AB: D6        .byte con_se_cb_1_D0 + $06, $20   ; 
- D 1 - I - 0x0120BD 04:A0AD: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x0120BE 04:A0AE: 21        .byte $21   ; 
- D 1 - I - 0x0120BF 04:A0AF: 01        .byte $01   ; 
- D 1 - I - 0x0120C0 04:A0B0: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x0120C1 04:A0B1: B1        .byte $B1   ; 
- D 1 - I - 0x0120C2 04:A0B2: 91        .byte $91   ; 
- D 1 - I - 0x0120C3 04:A0B3: 85        .byte $85   ; 
- D 1 - I - 0x0120C4 04:A0B4: 91        .byte $91   ; 
- D 1 - I - 0x0120C5 04:A0B5: B1        .byte $B1   ; 
- D 1 - I - 0x0120C6 04:A0B6: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x0120C7 04:A0B7: 01        .byte $01   ; 
- D 1 - I - 0x0120C8 04:A0B8: 21        .byte $21   ; 
- D 1 - I - 0x0120C9 04:A0B9: 41        .byte $41   ; 
- D 1 - I - 0x0120CA 04:A0BA: 51        .byte $51   ; 
- D 1 - I - 0x0120CB 04:A0BB: 41        .byte $41   ; 
- D 1 - I - 0x0120CC 04:A0BC: 21        .byte $21   ; 
- D 1 - I - 0x0120CD 04:A0BD: 01        .byte $01   ; 
- D 1 - I - 0x0120CE 04:A0BE: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x0120CF 04:A0BF: B5        .byte $B5   ; 
- D 1 - I - 0x0120D0 04:A0C0: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x0120D1 04:A0C1: 11        .byte $11   ; 
- D 1 - I - 0x0120D2 04:A0C2: 21        .byte $21   ; 
- D 1 - I - 0x0120D3 04:A0C3: 41        .byte $41   ; 
- D 1 - I - 0x0120D4 04:A0C4: 51        .byte $51   ; 
- D 1 - I - 0x0120D5 04:A0C5: 21        .byte $21   ; 
- D 1 - I - 0x0120D6 04:A0C6: 31        .byte $31   ; 
- D 1 - I - 0x0120D7 04:A0C7: 11        .byte $11   ; 
- D 1 - I - 0x0120D8 04:A0C8: 01        .byte $01   ; 
- D 1 - I - 0x0120D9 04:A0C9: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x0120DA 04:A0CA: A1        .byte $A1   ; 
- D 1 - I - 0x0120DB 04:A0CB: 95        .byte $95   ; 
- D 1 - I - 0x0120DC 04:A0CC: A1        .byte $A1   ; 
- D 1 - I - 0x0120DD 04:A0CD: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x0120DE 04:A0CE: 01        .byte $01   ; 
- D 1 - I - 0x0120DF 04:A0CF: 11        .byte $11   ; 
- D 1 - I - 0x0120E0 04:A0D0: 31        .byte $31   ; 
- D 1 - I - 0x0120E1 04:A0D1: 51        .byte $51   ; 
- D 1 - I - 0x0120E2 04:A0D2: 61        .byte $61   ; 
- D 1 - I - 0x0120E3 04:A0D3: 51        .byte $51   ; 
- D 1 - I - 0x0120E4 04:A0D4: 31        .byte $31   ; 
- D 1 - I - 0x0120E5 04:A0D5: 11        .byte $11   ; 
- D 1 - I - 0x0120E6 04:A0D6: 07        .byte $07   ; 
- D 1 - I - 0x0120E7 04:A0D7: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x0120E8 04:A0D8: B1        .byte $B1   ; 
- D 1 - I - 0x0120E9 04:A0D9: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x0120EA 04:A0DA: 01        .byte $01   ; 
- D 1 - I - 0x0120EB 04:A0DB: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x0120EC 04:A0DC: B1        .byte $B1   ; 
- D 1 - I - 0x0120ED 04:A0DD: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x0120EE 04:A0DE: 01        .byte $01   ; 
- D 1 - I - 0x0120EF 04:A0DF: EA        .byte con_se_cb_1_EA, $00   ; 
- D 1 - I - 0x0120F1 04:A0E1: FE        .byte con_se_cb_1_FE, $FF   ; 
- D 1 - I - 0x0120F3 04:A0E3: 52 A0     .word off_FE_A052



off_ch_05_0x0120F5_5F:
- D 1 - I - 0x0120F5 04:A0E5: D1        .byte $D1   ; 
- D 1 - I - 0x0120F6 04:A0E6: B0        .byte $B0   ; 
- D 1 - I - 0x0120F7 04:A0E7: 2F        .byte $2F   ; 
- D 1 - I - 0x0120F8 04:A0E8: C9        .byte $C9   ; 
- D 1 - I - 0x0120F9 04:A0E9: D3        .byte $D3   ; 
- D 1 - I - 0x0120FA 04:A0EA: 18        .byte $18   ; 
- D 1 - I - 0x0120FB 04:A0EB: D2        .byte $D2   ; 
- D 1 - I - 0x0120FC 04:A0EC: 4C        .byte $4C   ; 
- D 1 - I - 0x0120FD 04:A0ED: 1C        .byte $1C   ; 
- D 1 - I - 0x0120FE 04:A0EE: D1        .byte $D1   ; 
- D 1 - I - 0x0120FF 04:A0EF: B0        .byte $B0   ; 
- D 1 - I - 0x012100 04:A0F0: 2F        .byte $2F   ; 
- D 1 - I - 0x012101 04:A0F1: C7        .byte $C7   ; 
- D 1 - I - 0x012102 04:A0F2: D4        .byte $D4   ; 
- D 1 - I - 0x012103 04:A0F3: 15        .byte $15   ; 
- D 1 - I - 0x012104 04:A0F4: 45        .byte $45   ; 
- D 1 - I - 0x012105 04:A0F5: D3        .byte $D3   ; 
- D 1 - I - 0x012106 04:A0F6: 16        .byte $16   ; 
- D 1 - I - 0x012107 04:A0F7: D1        .byte $D1   ; 
- D 1 - I - 0x012108 04:A0F8: B0        .byte $B0   ; 
- D 1 - I - 0x012109 04:A0F9: 2F        .byte $2F   ; 
- D 1 - I - 0x01210A 04:A0FA: C3        .byte $C3   ; 
- D 1 - I - 0x01210B 04:A0FB: D3        .byte $D3   ; 
- D 1 - I - 0x01210C 04:A0FC: 16        .byte $16   ; 
- D 1 - I - 0x01210D 04:A0FD: 45        .byte $45   ; 
- D 1 - I - 0x01210E 04:A0FE: 15        .byte $15   ; 
- D 1 - I - 0x01210F 04:A0FF: D1        .byte $D1   ; 
- D 1 - I - 0x012110 04:A100: B0        .byte $B0   ; 
- D 1 - I - 0x012111 04:A101: 24        .byte $24   ; 
- D 1 - I - 0x012112 04:A102: 15        .byte $15   ; 
- D 1 - I - 0x012113 04:A103: 15        .byte $15   ; 
- D 1 - I - 0x012114 04:A104: 15        .byte $15   ; 
- D 1 - I - 0x012115 04:A105: 15        .byte $15   ; 
- D 1 - I - 0x012116 04:A106: 15        .byte $15   ; 
- D 1 - I - 0x012117 04:A107: 45        .byte $45   ; 
- D 1 - I - 0x012118 04:A108: 15        .byte $15   ; 
- D 1 - I - 0x012119 04:A109: 15        .byte $15   ; 
- D 1 - I - 0x01211A 04:A10A: 15        .byte $15   ; 
- D 1 - I - 0x01211B 04:A10B: 15        .byte $15   ; 
- D 1 - I - 0x01211C 04:A10C: 15        .byte $15   ; 
off_FE_A10D:
- D 1 - I - 0x01211D 04:A10D: D6        .byte $D6   ; 
- D 1 - I - 0x01211E 04:A10E: FB        .byte con_se_cb_1_FB   ; 
- D 1 - I - 0x01211F 04:A10F: D1        .byte $D1   ; 
- D 1 - I - 0x012120 04:A110: B0        .byte $B0   ; 
- D 1 - I - 0x012121 04:A111: 14        .byte $14   ; 
- D 1 - I - 0x012122 04:A112: D6        .byte $D6   ; 
- D 1 - I - 0x012123 04:A113: C4        .byte $C4   ; 
- D 1 - I - 0x012124 04:A114: 15        .byte $15   ; 
- D 1 - I - 0x012125 04:A115: 45        .byte $45   ; 
- D 1 - I - 0x012126 04:A116: 15        .byte $15   ; 
- D 1 - I - 0x012127 04:A117: D1        .byte $D1   ; 
- D 1 - I - 0x012128 04:A118: B0        .byte $B0   ; 
- D 1 - I - 0x012129 04:A119: 14        .byte $14   ; 
- D 1 - I - 0x01212A 04:A11A: D6        .byte $D6   ; 
- D 1 - I - 0x01212B 04:A11B: C4        .byte $C4   ; 
- D 1 - I - 0x01212C 04:A11C: 15        .byte $15   ; 
- D 1 - I - 0x01212D 04:A11D: 41        .byte $41   ; 
- D 1 - I - 0x01212E 04:A11E: 41        .byte $41   ; 
- D 1 - I - 0x01212F 04:A11F: C1        .byte $C1   ; 
- D 1 - I - 0x012130 04:A120: 15        .byte $15   ; 
- D 1 - I - 0x012131 04:A121: FE        .byte con_se_cb_1_FE, $02   ; 
- D 1 - I - 0x012133 04:A123: D6        .byte $D6   ; 
- D 1 - I - 0x012134 04:A124: FB        .byte con_se_cb_1_FB   ; 
- D 1 - I - 0x012135 04:A125: D1        .byte $D1   ; 
- D 1 - I - 0x012136 04:A126: B0        .byte $B0   ; 
- D 1 - I - 0x012137 04:A127: 14        .byte $14   ; 
- D 1 - I - 0x012138 04:A128: D6        .byte $D6   ; 
- D 1 - I - 0x012139 04:A129: C4        .byte $C4   ; 
- D 1 - I - 0x01213A 04:A12A: 15        .byte $15   ; 
- D 1 - I - 0x01213B 04:A12B: 45        .byte $45   ; 
- D 1 - I - 0x01213C 04:A12C: 15        .byte $15   ; 
- D 1 - I - 0x01213D 04:A12D: D1        .byte $D1   ; 
- D 1 - I - 0x01213E 04:A12E: B0        .byte $B0   ; 
- D 1 - I - 0x01213F 04:A12F: 14        .byte $14   ; 
- D 1 - I - 0x012140 04:A130: D6        .byte $D6   ; 
- D 1 - I - 0x012141 04:A131: C4        .byte $C4   ; 
- D 1 - I - 0x012142 04:A132: 15        .byte $15   ; 
- D 1 - I - 0x012143 04:A133: 41        .byte $41   ; 
- D 1 - I - 0x012144 04:A134: 41        .byte $41   ; 
- D 1 - I - 0x012145 04:A135: C1        .byte $C1   ; 
- D 1 - I - 0x012146 04:A136: 15        .byte $15   ; 
- D 1 - I - 0x012147 04:A137: FE        .byte con_se_cb_1_FE, $02   ; 
- D 1 - I - 0x012149 04:A139: D6        .byte $D6   ; 
- D 1 - I - 0x01214A 04:A13A: FB        .byte con_se_cb_1_FB   ; 
- D 1 - I - 0x01214B 04:A13B: D1        .byte $D1   ; 
- D 1 - I - 0x01214C 04:A13C: B0        .byte $B0   ; 
- D 1 - I - 0x01214D 04:A13D: 14        .byte $14   ; 
- D 1 - I - 0x01214E 04:A13E: D6        .byte $D6   ; 
- D 1 - I - 0x01214F 04:A13F: C4        .byte $C4   ; 
- D 1 - I - 0x012150 04:A140: 15        .byte $15   ; 
- D 1 - I - 0x012151 04:A141: 45        .byte $45   ; 
- D 1 - I - 0x012152 04:A142: 15        .byte $15   ; 
- D 1 - I - 0x012153 04:A143: D1        .byte $D1   ; 
- D 1 - I - 0x012154 04:A144: B0        .byte $B0   ; 
- D 1 - I - 0x012155 04:A145: 14        .byte $14   ; 
- D 1 - I - 0x012156 04:A146: D6        .byte $D6   ; 
- D 1 - I - 0x012157 04:A147: C4        .byte $C4   ; 
- D 1 - I - 0x012158 04:A148: 15        .byte $15   ; 
- D 1 - I - 0x012159 04:A149: 41        .byte $41   ; 
- D 1 - I - 0x01215A 04:A14A: 41        .byte $41   ; 
- D 1 - I - 0x01215B 04:A14B: C1        .byte $C1   ; 
- D 1 - I - 0x01215C 04:A14C: 15        .byte $15   ; 
- D 1 - I - 0x01215D 04:A14D: FE        .byte con_se_cb_1_FE, $02   ; 
- D 1 - I - 0x01215F 04:A14F: D6        .byte $D6   ; 
- D 1 - I - 0x012160 04:A150: D1        .byte $D1   ; 
- D 1 - I - 0x012161 04:A151: B0        .byte $B0   ; 
- D 1 - I - 0x012162 04:A152: 14        .byte $14   ; 
- D 1 - I - 0x012163 04:A153: D6        .byte $D6   ; 
- D 1 - I - 0x012164 04:A154: C4        .byte $C4   ; 
- D 1 - I - 0x012165 04:A155: 15        .byte $15   ; 
- D 1 - I - 0x012166 04:A156: 45        .byte $45   ; 
- D 1 - I - 0x012167 04:A157: 15        .byte $15   ; 
- D 1 - I - 0x012168 04:A158: D1        .byte $D1   ; 
- D 1 - I - 0x012169 04:A159: B0        .byte $B0   ; 
- D 1 - I - 0x01216A 04:A15A: 14        .byte $14   ; 
- D 1 - I - 0x01216B 04:A15B: D6        .byte $D6   ; 
- D 1 - I - 0x01216C 04:A15C: C4        .byte $C4   ; 
- D 1 - I - 0x01216D 04:A15D: 15        .byte $15   ; 
- D 1 - I - 0x01216E 04:A15E: 41        .byte $41   ; 
- D 1 - I - 0x01216F 04:A15F: 41        .byte $41   ; 
- D 1 - I - 0x012170 04:A160: C1        .byte $C1   ; 
- D 1 - I - 0x012171 04:A161: 15        .byte $15   ; 
- D 1 - I - 0x012172 04:A162: D1        .byte $D1   ; 
- D 1 - I - 0x012173 04:A163: B0        .byte $B0   ; 
- D 1 - I - 0x012174 04:A164: 14        .byte $14   ; 
- D 1 - I - 0x012175 04:A165: D6        .byte $D6   ; 
- D 1 - I - 0x012176 04:A166: C4        .byte $C4   ; 
- D 1 - I - 0x012177 04:A167: 15        .byte $15   ; 
- D 1 - I - 0x012178 04:A168: 45        .byte $45   ; 
- D 1 - I - 0x012179 04:A169: 15        .byte $15   ; 
- D 1 - I - 0x01217A 04:A16A: D1        .byte $D1   ; 
- D 1 - I - 0x01217B 04:A16B: B0        .byte $B0   ; 
- D 1 - I - 0x01217C 04:A16C: 14        .byte $14   ; 
- D 1 - I - 0x01217D 04:A16D: D6        .byte $D6   ; 
- D 1 - I - 0x01217E 04:A16E: C4        .byte $C4   ; 
- D 1 - I - 0x01217F 04:A16F: 15        .byte $15   ; 
- D 1 - I - 0x012180 04:A170: 41        .byte $41   ; 
- D 1 - I - 0x012181 04:A171: 41        .byte $41   ; 
- D 1 - I - 0x012182 04:A172: 11        .byte $11   ; 
- D 1 - I - 0x012183 04:A173: D1        .byte $D1   ; 
- D 1 - I - 0x012184 04:A174: FB        .byte con_se_cb_1_FB   ; 
- D 1 - I - 0x012185 04:A175: B0        .byte $B0   ; 
- D 1 - I - 0x012186 04:A176: 2A        .byte $2A   ; 
- D 1 - I - 0x012187 04:A177: FE        .byte con_se_cb_1_FE, $03   ; 
- D 1 - I - 0x012189 04:A179: FE        .byte con_se_cb_1_FE, $FF   ; 
- D 1 - I - 0x01218B 04:A17B: 0D A1     .word off_FE_A10D



off_ch_00_0x01218D_60:
- D 1 - I - 0x01218D 04:A17D: EE        .byte con_se_cb_1_EE, $08   ; 
- D 1 - I - 0x01218F 04:A17F: D6        .byte con_se_cb_1_D0 + $06, $77, con_9E25_03 + $80   ; 
- D 1 - I - 0x012192 04:A182: 65        .byte $65   ; 
- D 1 - I - 0x012193 04:A183: C3        .byte con_se_cb_1_C0 + $03   ; 
off_FE_A184:
ofs_FD_A184:
- D 1 - I - 0x012194 04:A184: D6        .byte con_se_cb_1_D0 + $06, $77, con_9E25_03 + $80   ; 
- D 1 - I - 0x012197 04:A187: 65        .byte $65   ; 
- D 1 - I - 0x012198 04:A188: EB        .byte con_se_cb_1_EB, con_9E7B_50, $33   ; 
- D 1 - I - 0x01219B 04:A18B: E9        .byte con_se_cb_1_E9, $B1   ; 
- D 1 - I - 0x01219D 04:A18D: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x01219E 04:A18E: A9        .byte $A9   ; 
- D 1 - I - 0x01219F 04:A18F: A0        .byte $A0   ; 
- D 1 - I - 0x0121A0 04:A190: A0        .byte $A0   ; 
- D 1 - I - 0x0121A1 04:A191: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x0121A2 04:A192: 19        .byte $19   ; 
- D 1 - I - 0x0121A3 04:A193: 10        .byte $10   ; 
- D 1 - I - 0x0121A4 04:A194: 10        .byte $10   ; 
- D 1 - I - 0x0121A5 04:A195: 03        .byte $03   ; 
- D 1 - I - 0x0121A6 04:A196: 03        .byte $03   ; 
- D 1 - I - 0x0121A7 04:A197: 01        .byte $01   ; 
- D 1 - I - 0x0121A8 04:A198: 10        .byte $10   ; 
- D 1 - I - 0x0121A9 04:A199: 20        .byte $20   ; 
- D 1 - I - 0x0121AA 04:A19A: 31        .byte $31   ; 
- D 1 - I - 0x0121AB 04:A19B: 01        .byte $01   ; 
- D 1 - I - 0x0121AC 04:A19C: 61        .byte $61   ; 
- D 1 - I - 0x0121AD 04:A19D: 31        .byte $31   ; 
- D 1 - I - 0x0121AE 04:A19E: 91        .byte $91   ; 
- D 1 - I - 0x0121AF 04:A19F: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x0121B0 04:A1A0: 01        .byte $01   ; 
- D 1 - I - 0x0121B1 04:A1A1: D6        .byte con_se_cb_1_D0 + $06, $77, con_9E25_04 + $80   ; 
- D 1 - I - 0x0121B4 04:A1A4: 64        .byte $64   ; 
- D 1 - I - 0x0121B5 04:A1A5: EB        .byte con_se_cb_1_EB, con_9E7B_50, $32   ; 
- D 1 - I - 0x0121B8 04:A1A8: E9        .byte con_se_cb_1_E9, $B1   ; 
- D 1 - I - 0x0121BA 04:A1AA: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x0121BB 04:A1AB: A4        .byte $A4   ; 
- D 1 - I - 0x0121BC 04:A1AC: A0        .byte $A0   ; 
- D 1 - I - 0x0121BD 04:A1AD: FB        .byte con_se_cb_1_FB   ; 
- D 1 - I - 0x0121BE 04:A1AE: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x0121BF 04:A1AF: A0        .byte $A0   ; 
- D 1 - I - 0x0121C0 04:A1B0: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x0121C1 04:A1B1: 20        .byte $20   ; 
- D 1 - I - 0x0121C2 04:A1B2: FE        .byte con_se_cb_1_FE, $03   ; 
- D 1 - I - 0x0121C4 04:A1B4: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x0121C5 04:A1B5: 14        .byte $14   ; 
- D 1 - I - 0x0121C6 04:A1B6: 10        .byte $10   ; 
- D 1 - I - 0x0121C7 04:A1B7: 10        .byte $10   ; 
- D 1 - I - 0x0121C8 04:A1B8: 40        .byte $40   ; 
- D 1 - I - 0x0121C9 04:A1B9: 10        .byte $10   ; 
- D 1 - I - 0x0121CA 04:A1BA: 40        .byte $40   ; 
- D 1 - I - 0x0121CB 04:A1BB: 10        .byte $10   ; 
- D 1 - I - 0x0121CC 04:A1BC: 40        .byte $40   ; 
- D 1 - I - 0x0121CD 04:A1BD: 04        .byte $04   ; 
- D 1 - I - 0x0121CE 04:A1BE: 00        .byte $00   ; 
- D 1 - I - 0x0121CF 04:A1BF: 00        .byte $00   ; 
- D 1 - I - 0x0121D0 04:A1C0: 30        .byte $30   ; 
- D 1 - I - 0x0121D1 04:A1C1: 00        .byte $00   ; 
- D 1 - I - 0x0121D2 04:A1C2: 30        .byte $30   ; 
- D 1 - I - 0x0121D3 04:A1C3: 00        .byte $00   ; 
- D 1 - I - 0x0121D4 04:A1C4: 30        .byte $30   ; 
- D 1 - I - 0x0121D5 04:A1C5: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x0121D6 04:A1C6: A4        .byte $A4   ; 
- D 1 - I - 0x0121D7 04:A1C7: A0        .byte $A0   ; 
- D 1 - I - 0x0121D8 04:A1C8: A0        .byte $A0   ; 
- D 1 - I - 0x0121D9 04:A1C9: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x0121DA 04:A1CA: 21        .byte $21   ; 
- D 1 - I - 0x0121DB 04:A1CB: 50        .byte $50   ; 
- D 1 - I - 0x0121DC 04:A1CC: 40        .byte $40   ; 
- D 1 - I - 0x0121DD 04:A1CD: 30        .byte $30   ; 
- D 1 - I - 0x0121DE 04:A1CE: E9        .byte con_se_cb_1_E9, $00   ; 
- D 1 - I - 0x0121E0 04:A1D0: D6        .byte con_se_cb_1_D0 + $06, $77, con_9E25_04 + $80   ; 
- D 1 - I - 0x0121E3 04:A1D3: 64        .byte $64   ; 
- D 1 - I - 0x0121E4 04:A1D4: EB        .byte con_se_cb_1_EB, con_9E7B_50, $32   ; 
- D 1 - I - 0x0121E7 04:A1D7: E9        .byte con_se_cb_1_E9, $B1   ; 
- D 1 - I - 0x0121E9 04:A1D9: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x0121EA 04:A1DA: A4        .byte $A4   ; 
- D 1 - I - 0x0121EB 04:A1DB: A0        .byte $A0   ; 
- D 1 - I - 0x0121EC 04:A1DC: FB        .byte con_se_cb_1_FB   ; 
- D 1 - I - 0x0121ED 04:A1DD: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x0121EE 04:A1DE: A0        .byte $A0   ; 
- D 1 - I - 0x0121EF 04:A1DF: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x0121F0 04:A1E0: 20        .byte $20   ; 
- D 1 - I - 0x0121F1 04:A1E1: FE        .byte con_se_cb_1_FE, $03   ; 
- D 1 - I - 0x0121F3 04:A1E3: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x0121F4 04:A1E4: 14        .byte $14   ; 
- D 1 - I - 0x0121F5 04:A1E5: 10        .byte $10   ; 
- D 1 - I - 0x0121F6 04:A1E6: 10        .byte $10   ; 
- D 1 - I - 0x0121F7 04:A1E7: 40        .byte $40   ; 
- D 1 - I - 0x0121F8 04:A1E8: 10        .byte $10   ; 
- D 1 - I - 0x0121F9 04:A1E9: 40        .byte $40   ; 
- D 1 - I - 0x0121FA 04:A1EA: 10        .byte $10   ; 
- D 1 - I - 0x0121FB 04:A1EB: 40        .byte $40   ; 
- D 1 - I - 0x0121FC 04:A1EC: 04        .byte $04   ; 
- D 1 - I - 0x0121FD 04:A1ED: 00        .byte $00   ; 
- D 1 - I - 0x0121FE 04:A1EE: 00        .byte $00   ; 
- D 1 - I - 0x0121FF 04:A1EF: 30        .byte $30   ; 
- D 1 - I - 0x012200 04:A1F0: 00        .byte $00   ; 
- D 1 - I - 0x012201 04:A1F1: 30        .byte $30   ; 
- D 1 - I - 0x012202 04:A1F2: 00        .byte $00   ; 
- D 1 - I - 0x012203 04:A1F3: 30        .byte $30   ; 
- D 1 - I - 0x012204 04:A1F4: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x012205 04:A1F5: A4        .byte $A4   ; 
- D 1 - I - 0x012206 04:A1F6: A0        .byte $A0   ; 
- D 1 - I - 0x012207 04:A1F7: A0        .byte $A0   ; 
- D 1 - I - 0x012208 04:A1F8: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x012209 04:A1F9: 21        .byte $21   ; 
- D 1 - I - 0x01220A 04:A1FA: 50        .byte $50   ; 
- D 1 - I - 0x01220B 04:A1FB: 40        .byte $40   ; 
- D 1 - I - 0x01220C 04:A1FC: 30        .byte $30   ; 
- D 1 - I - 0x01220D 04:A1FD: E9        .byte con_se_cb_1_E9, $00   ; 
- D 1 - I - 0x01220F 04:A1FF: D6        .byte con_se_cb_1_D0 + $06, $77, con_9E25_03 + $80   ; 
- D 1 - I - 0x012212 04:A202: 22        .byte $22   ; 
- D 1 - I - 0x012213 04:A203: FB        .byte con_se_cb_1_FB   ; 
- D 1 - I - 0x012214 04:A204: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x012215 04:A205: A0        .byte $A0   ; 
- D 1 - I - 0x012216 04:A206: 70        .byte $70   ; 
- D 1 - I - 0x012217 04:A207: FE        .byte con_se_cb_1_FE, $04   ; 
- D 1 - I - 0x012219 04:A209: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x01221A 04:A20A: 20        .byte $20   ; 
- D 1 - I - 0x01221B 04:A20B: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x01221C 04:A20C: 70        .byte $70   ; 
- D 1 - I - 0x01221D 04:A20D: A0        .byte $A0   ; 
- D 1 - I - 0x01221E 04:A20E: 20        .byte $20   ; 
- D 1 - I - 0x01221F 04:A20F: FB        .byte con_se_cb_1_FB   ; 
- D 1 - I - 0x012220 04:A210: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x012221 04:A211: 00        .byte $00   ; 
- D 1 - I - 0x012222 04:A212: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x012223 04:A213: 90        .byte $90   ; 
- D 1 - I - 0x012224 04:A214: FE        .byte con_se_cb_1_FE, $04   ; 
- D 1 - I - 0x012226 04:A216: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x012227 04:A217: 30        .byte $30   ; 
- D 1 - I - 0x012228 04:A218: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x012229 04:A219: 90        .byte $90   ; 
- D 1 - I - 0x01222A 04:A21A: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x01222B 04:A21B: 00        .byte $00   ; 
- D 1 - I - 0x01222C 04:A21C: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x01222D 04:A21D: 60        .byte $60   ; 
- D 1 - I - 0x01222E 04:A21E: FB        .byte con_se_cb_1_FB   ; 
- D 1 - I - 0x01222F 04:A21F: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x012230 04:A220: 20        .byte $20   ; 
- D 1 - I - 0x012231 04:A221: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x012232 04:A222: 80        .byte $80   ; 
- D 1 - I - 0x012233 04:A223: FE        .byte con_se_cb_1_FE, $04   ; 
- D 1 - I - 0x012235 04:A225: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x012236 04:A226: 20        .byte $20   ; 
- D 1 - I - 0x012237 04:A227: 30        .byte $30   ; 
- D 1 - I - 0x012238 04:A228: 40        .byte $40   ; 
- D 1 - I - 0x012239 04:A229: 50        .byte $50   ; 
- D 1 - I - 0x01223A 04:A22A: F1        .byte con_se_cb_1_F0 + $01   ; 
- D 1 - I - 0x01223B 04:A22B: B0        .byte $B0   ; 
- D 1 - I - 0x01223C 04:A22C: 20        .byte $20   ; 
- D 1 - I - 0x01223D 04:A22D: 80        .byte $80   ; 
- D 1 - I - 0x01223E 04:A22E: B0        .byte $B0   ; 
- D 1 - I - 0x01223F 04:A22F: F0        .byte con_se_cb_1_F0 + $00   ; 
- D 1 - I - 0x012240 04:A230: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x012241 04:A231: 20        .byte $20   ; 
- D 1 - I - 0x012242 04:A232: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x012243 04:A233: 50        .byte $50   ; 
- D 1 - I - 0x012244 04:A234: B0        .byte $B0   ; 
- D 1 - I - 0x012245 04:A235: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x012246 04:A236: 20        .byte $20   ; 
- D 1 - I - 0x012247 04:A237: 50        .byte $50   ; 
- D 1 - I - 0x012248 04:A238: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x012249 04:A239: 80        .byte $80   ; 
- D 1 - I - 0x01224A 04:A23A: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x01224B 04:A23B: 20        .byte $20   ; 
- D 1 - I - 0x01224C 04:A23C: 50        .byte $50   ; 
- D 1 - I - 0x01224D 04:A23D: D6        .byte con_se_cb_1_D0 + $06, $77, con_9E25_04 + $80   ; 
- D 1 - I - 0x012250 04:A240: 64        .byte $64   ; 
- D 1 - I - 0x012251 04:A241: EB        .byte con_se_cb_1_EB, con_9E7B_54, $21   ; 
- D 1 - I - 0x012254 04:A244: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x012255 04:A245: 34        .byte $34   ; 
- D 1 - I - 0x012256 04:A246: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x012257 04:A247: 70        .byte $70   ; 
- D 1 - I - 0x012258 04:A248: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x012259 04:A249: 30        .byte $30   ; 
- D 1 - I - 0x01225A 04:A24A: 20        .byte $20   ; 
- D 1 - I - 0x01225B 04:A24B: 00        .byte $00   ; 
- D 1 - I - 0x01225C 04:A24C: 20        .byte $20   ; 
- D 1 - I - 0x01225D 04:A24D: 30        .byte $30   ; 
- D 1 - I - 0x01225E 04:A24E: 50        .byte $50   ; 
- D 1 - I - 0x01225F 04:A24F: 74        .byte $74   ; 
- D 1 - I - 0x012260 04:A250: 10        .byte $10   ; 
- D 1 - I - 0x012261 04:A251: 40        .byte $40   ; 
- D 1 - I - 0x012262 04:A252: 60        .byte $60   ; 
- D 1 - I - 0x012263 04:A253: 70        .byte $70   ; 
- D 1 - I - 0x012264 04:A254: 60        .byte $60   ; 
- D 1 - I - 0x012265 04:A255: 70        .byte $70   ; 
- D 1 - I - 0x012266 04:A256: 40        .byte $40   ; 
- D 1 - I - 0x012267 04:A257: C0        .byte con_se_cb_1_C0 + $00   ; 
- D 1 - I - 0x012268 04:A258: D6        .byte con_se_cb_1_D0 + $06, $38, con_9E25_05 + $80   ; 
- D 1 - I - 0x01226B 04:A25B: 19        .byte $19   ; 
- D 1 - I - 0x01226C 04:A25C: E9        .byte con_se_cb_1_E9, $B1   ; 
- D 1 - I - 0x01226E 04:A25E: 30        .byte $30   ; 
- D 1 - I - 0x01226F 04:A25F: 30        .byte $30   ; 
- D 1 - I - 0x012270 04:A260: F5        .byte con_se_cb_1_F0 + $05   ; 
- D 1 - I - 0x012271 04:A261: 30        .byte $30   ; 
- D 1 - I - 0x012272 04:A262: F0        .byte con_se_cb_1_F0 + $00   ; 
- D 1 - I - 0x012273 04:A263: 60        .byte $60   ; 
- D 1 - I - 0x012274 04:A264: 60        .byte $60   ; 
- D 1 - I - 0x012275 04:A265: F5        .byte con_se_cb_1_F0 + $05   ; 
- D 1 - I - 0x012276 04:A266: 30        .byte $30   ; 
- D 1 - I - 0x012277 04:A267: F0        .byte con_se_cb_1_F0 + $00   ; 
- D 1 - I - 0x012278 04:A268: 60        .byte $60   ; 
- D 1 - I - 0x012279 04:A269: F5        .byte con_se_cb_1_F0 + $05   ; 
- D 1 - I - 0x01227A 04:A26A: 60        .byte $60   ; 
- D 1 - I - 0x01227B 04:A26B: F0        .byte con_se_cb_1_F0 + $00   ; 
- D 1 - I - 0x01227C 04:A26C: D6        .byte con_se_cb_1_D0 + $06, $77, con_9E25_04 + $80   ; 
- D 1 - I - 0x01227F 04:A26F: 64        .byte $64   ; 
- D 1 - I - 0x012280 04:A270: ED        .byte con_se_cb_1_ED, $03   ; 
- D 1 - I - 0x012282 04:A272: E5        .byte con_se_cb_1_E0 + $05   ; 
- D 1 - I - 0x012283 04:A273: 80        .byte $80   ; 
- D 1 - I - 0x012284 04:A274: 90        .byte $90   ; 
- D 1 - I - 0x012285 04:A275: A0        .byte $A0   ; 
- D 1 - I - 0x012286 04:A276: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x012287 04:A277: 00        .byte $00   ; 
- D 1 - I - 0x012288 04:A278: 20        .byte $20   ; 
- D 1 - I - 0x012289 04:A279: 40        .byte $40   ; 
- D 1 - I - 0x01228A 04:A27A: 60        .byte $60   ; 
- D 1 - I - 0x01228B 04:A27B: ED        .byte con_se_cb_1_ED, $00   ; 
- D 1 - I - 0x01228D 04:A27D: E9        .byte con_se_cb_1_E9, $00   ; 
- D 1 - I - 0x01228F 04:A27F: D6        .byte con_se_cb_1_D0 + $06, $77, con_9E25_03 + $80   ; 
- D 1 - I - 0x012292 04:A282: 22        .byte $22   ; 
- D 1 - I - 0x012293 04:A283: FB        .byte con_se_cb_1_FB   ; 
- D 1 - I - 0x012294 04:A284: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x012295 04:A285: A0        .byte $A0   ; 
- D 1 - I - 0x012296 04:A286: 70        .byte $70   ; 
- D 1 - I - 0x012297 04:A287: FE        .byte con_se_cb_1_FE, $04   ; 
- D 1 - I - 0x012299 04:A289: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x01229A 04:A28A: 20        .byte $20   ; 
- D 1 - I - 0x01229B 04:A28B: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x01229C 04:A28C: 70        .byte $70   ; 
- D 1 - I - 0x01229D 04:A28D: A0        .byte $A0   ; 
- D 1 - I - 0x01229E 04:A28E: 20        .byte $20   ; 
- D 1 - I - 0x01229F 04:A28F: FB        .byte con_se_cb_1_FB   ; 
- D 1 - I - 0x0122A0 04:A290: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x0122A1 04:A291: 00        .byte $00   ; 
- D 1 - I - 0x0122A2 04:A292: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x0122A3 04:A293: 90        .byte $90   ; 
- D 1 - I - 0x0122A4 04:A294: FE        .byte con_se_cb_1_FE, $04   ; 
- D 1 - I - 0x0122A6 04:A296: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x0122A7 04:A297: 30        .byte $30   ; 
- D 1 - I - 0x0122A8 04:A298: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x0122A9 04:A299: 90        .byte $90   ; 
- D 1 - I - 0x0122AA 04:A29A: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x0122AB 04:A29B: 00        .byte $00   ; 
- D 1 - I - 0x0122AC 04:A29C: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x0122AD 04:A29D: 60        .byte $60   ; 
- D 1 - I - 0x0122AE 04:A29E: FB        .byte con_se_cb_1_FB   ; 
- D 1 - I - 0x0122AF 04:A29F: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x0122B0 04:A2A0: 20        .byte $20   ; 
- D 1 - I - 0x0122B1 04:A2A1: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x0122B2 04:A2A2: 80        .byte $80   ; 
- D 1 - I - 0x0122B3 04:A2A3: FE        .byte con_se_cb_1_FE, $04   ; 
- D 1 - I - 0x0122B5 04:A2A5: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x0122B6 04:A2A6: 20        .byte $20   ; 
- D 1 - I - 0x0122B7 04:A2A7: 30        .byte $30   ; 
- D 1 - I - 0x0122B8 04:A2A8: 40        .byte $40   ; 
- D 1 - I - 0x0122B9 04:A2A9: 50        .byte $50   ; 
- D 1 - I - 0x0122BA 04:A2AA: F1        .byte con_se_cb_1_F0 + $01   ; 
- D 1 - I - 0x0122BB 04:A2AB: B0        .byte $B0   ; 
- D 1 - I - 0x0122BC 04:A2AC: 20        .byte $20   ; 
- D 1 - I - 0x0122BD 04:A2AD: 80        .byte $80   ; 
- D 1 - I - 0x0122BE 04:A2AE: B0        .byte $B0   ; 
- D 1 - I - 0x0122BF 04:A2AF: F0        .byte con_se_cb_1_F0 + $00   ; 
- D 1 - I - 0x0122C0 04:A2B0: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x0122C1 04:A2B1: 20        .byte $20   ; 
- D 1 - I - 0x0122C2 04:A2B2: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x0122C3 04:A2B3: 50        .byte $50   ; 
- D 1 - I - 0x0122C4 04:A2B4: B0        .byte $B0   ; 
- D 1 - I - 0x0122C5 04:A2B5: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x0122C6 04:A2B6: 20        .byte $20   ; 
- D 1 - I - 0x0122C7 04:A2B7: 50        .byte $50   ; 
- D 1 - I - 0x0122C8 04:A2B8: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x0122C9 04:A2B9: 80        .byte $80   ; 
- D 1 - I - 0x0122CA 04:A2BA: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x0122CB 04:A2BB: 20        .byte $20   ; 
- D 1 - I - 0x0122CC 04:A2BC: 50        .byte $50   ; 
- D 1 - I - 0x0122CD 04:A2BD: D6        .byte con_se_cb_1_D0 + $06, $77, con_9E25_04 + $80   ; 
- D 1 - I - 0x0122D0 04:A2C0: 64        .byte $64   ; 
- D 1 - I - 0x0122D1 04:A2C1: EB        .byte con_se_cb_1_EB, con_9E7B_54, $21   ; 
- D 1 - I - 0x0122D4 04:A2C4: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x0122D5 04:A2C5: 34        .byte $34   ; 
- D 1 - I - 0x0122D6 04:A2C6: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x0122D7 04:A2C7: 70        .byte $70   ; 
- D 1 - I - 0x0122D8 04:A2C8: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x0122D9 04:A2C9: 30        .byte $30   ; 
- D 1 - I - 0x0122DA 04:A2CA: 20        .byte $20   ; 
- D 1 - I - 0x0122DB 04:A2CB: 00        .byte $00   ; 
- D 1 - I - 0x0122DC 04:A2CC: 20        .byte $20   ; 
- D 1 - I - 0x0122DD 04:A2CD: 30        .byte $30   ; 
- D 1 - I - 0x0122DE 04:A2CE: 50        .byte $50   ; 
- D 1 - I - 0x0122DF 04:A2CF: 74        .byte $74   ; 
- D 1 - I - 0x0122E0 04:A2D0: 10        .byte $10   ; 
- D 1 - I - 0x0122E1 04:A2D1: 40        .byte $40   ; 
- D 1 - I - 0x0122E2 04:A2D2: 60        .byte $60   ; 
- D 1 - I - 0x0122E3 04:A2D3: 70        .byte $70   ; 
- D 1 - I - 0x0122E4 04:A2D4: 60        .byte $60   ; 
- D 1 - I - 0x0122E5 04:A2D5: 70        .byte $70   ; 
- D 1 - I - 0x0122E6 04:A2D6: 40        .byte $40   ; 
- D 1 - I - 0x0122E7 04:A2D7: C0        .byte con_se_cb_1_C0 + $00   ; 
- D 1 - I - 0x0122E8 04:A2D8: D6        .byte con_se_cb_1_D0 + $06, $38, con_9E25_05 + $80   ; 
- D 1 - I - 0x0122EB 04:A2DB: 19        .byte $19   ; 
- D 1 - I - 0x0122EC 04:A2DC: E9        .byte con_se_cb_1_E9, $B1   ; 
- D 1 - I - 0x0122EE 04:A2DE: 30        .byte $30   ; 
- D 1 - I - 0x0122EF 04:A2DF: 30        .byte $30   ; 
- D 1 - I - 0x0122F0 04:A2E0: F5        .byte con_se_cb_1_F0 + $05   ; 
- D 1 - I - 0x0122F1 04:A2E1: 30        .byte $30   ; 
- D 1 - I - 0x0122F2 04:A2E2: F0        .byte con_se_cb_1_F0 + $00   ; 
- D 1 - I - 0x0122F3 04:A2E3: 60        .byte $60   ; 
- D 1 - I - 0x0122F4 04:A2E4: 60        .byte $60   ; 
- D 1 - I - 0x0122F5 04:A2E5: F5        .byte con_se_cb_1_F0 + $05   ; 
- D 1 - I - 0x0122F6 04:A2E6: 30        .byte $30   ; 
- D 1 - I - 0x0122F7 04:A2E7: F0        .byte con_se_cb_1_F0 + $00   ; 
- D 1 - I - 0x0122F8 04:A2E8: 60        .byte $60   ; 
- D 1 - I - 0x0122F9 04:A2E9: F5        .byte con_se_cb_1_F0 + $05   ; 
- D 1 - I - 0x0122FA 04:A2EA: 60        .byte $60   ; 
- D 1 - I - 0x0122FB 04:A2EB: F0        .byte con_se_cb_1_F0 + $00   ; 
- D 1 - I - 0x0122FC 04:A2EC: D6        .byte con_se_cb_1_D0 + $06, $77, con_9E25_04 + $80   ; 
- D 1 - I - 0x0122FF 04:A2EF: 64        .byte $64   ; 
- D 1 - I - 0x012300 04:A2F0: ED        .byte con_se_cb_1_ED, $03   ; 
- D 1 - I - 0x012302 04:A2F2: E5        .byte con_se_cb_1_E0 + $05   ; 
- D 1 - I - 0x012303 04:A2F3: 80        .byte $80   ; 
- D 1 - I - 0x012304 04:A2F4: 90        .byte $90   ; 
- D 1 - I - 0x012305 04:A2F5: A0        .byte $A0   ; 
- D 1 - I - 0x012306 04:A2F6: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x012307 04:A2F7: 00        .byte $00   ; 
- D 1 - I - 0x012308 04:A2F8: 20        .byte $20   ; 
- D 1 - I - 0x012309 04:A2F9: 40        .byte $40   ; 
- D 1 - I - 0x01230A 04:A2FA: 60        .byte $60   ; 
- D 1 - I - 0x01230B 04:A2FB: ED        .byte con_se_cb_1_ED, $00   ; 
- D 1 - I - 0x01230D 04:A2FD: E9        .byte con_se_cb_1_E9, $00   ; 
- D 1 - I - 0x01230F 04:A2FF: FE        .byte con_se_cb_1_FE, $FF   ; 
- D 1 - I - 0x012311 04:A301: 84 A1     .word off_FE_A184



off_ch_01_0x012313_60:
- D 1 - I - 0x012313 04:A303: D6        .byte con_se_cb_1_D0 + $06, $78, con_9E25_04 + $80   ; 
- D 1 - I - 0x012316 04:A306: 17        .byte $17   ; 
- D 1 - I - 0x012317 04:A307: C3        .byte con_se_cb_1_C0 + $03   ; 
off_FE_A308:
ofs_FD_A308:
- D 1 - I - 0x012318 04:A308: D6        .byte con_se_cb_1_D0 + $06, $78, con_9E25_04 + $80   ; 
- D 1 - I - 0x01231B 04:A30B: 17        .byte $17   ; 
- D 1 - I - 0x01231C 04:A30C: E9        .byte con_se_cb_1_E9, $35   ; 
- D 1 - I - 0x01231E 04:A30E: EC        .byte con_se_cb_1_EC, $02   ; 
- D 1 - I - 0x012320 04:A310: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x012321 04:A311: 20        .byte $20   ; 
- D 1 - I - 0x012322 04:A312: 70        .byte $70   ; 
- D 1 - I - 0x012323 04:A313: A0        .byte $A0   ; 
- D 1 - I - 0x012324 04:A314: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x012325 04:A315: 20        .byte $20   ; 
- D 1 - I - 0x012326 04:A316: FB        .byte con_se_cb_1_FB   ; 
- D 1 - I - 0x012327 04:A317: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x012328 04:A318: A0        .byte $A0   ; 
- D 1 - I - 0x012329 04:A319: 70        .byte $70   ; 
- D 1 - I - 0x01232A 04:A31A: 20        .byte $20   ; 
- D 1 - I - 0x01232B 04:A31B: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x01232C 04:A31C: 20        .byte $20   ; 
- D 1 - I - 0x01232D 04:A31D: FE        .byte con_se_cb_1_FE, $02   ; 
- D 1 - I - 0x01232F 04:A31F: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x012330 04:A320: 40        .byte $40   ; 
- D 1 - I - 0x012331 04:A321: 70        .byte $70   ; 
- D 1 - I - 0x012332 04:A322: A0        .byte $A0   ; 
- D 1 - I - 0x012333 04:A323: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x012334 04:A324: 40        .byte $40   ; 
- D 1 - I - 0x012335 04:A325: FB        .byte con_se_cb_1_FB   ; 
- D 1 - I - 0x012336 04:A326: 10        .byte $10   ; 
- D 1 - I - 0x012337 04:A327: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x012338 04:A328: A0        .byte $A0   ; 
- D 1 - I - 0x012339 04:A329: 70        .byte $70   ; 
- D 1 - I - 0x01233A 04:A32A: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x01233B 04:A32B: 40        .byte $40   ; 
- D 1 - I - 0x01233C 04:A32C: FE        .byte con_se_cb_1_FE, $02   ; 
- D 1 - I - 0x01233E 04:A32E: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x01233F 04:A32F: 30        .byte $30   ; 
- D 1 - I - 0x012340 04:A330: 60        .byte $60   ; 
- D 1 - I - 0x012341 04:A331: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x012342 04:A332: 00        .byte $00   ; 
- D 1 - I - 0x012343 04:A333: 30        .byte $30   ; 
- D 1 - I - 0x012344 04:A334: FB        .byte con_se_cb_1_FB   ; 
- D 1 - I - 0x012345 04:A335: 00        .byte $00   ; 
- D 1 - I - 0x012346 04:A336: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x012347 04:A337: 90        .byte $90   ; 
- D 1 - I - 0x012348 04:A338: 60        .byte $60   ; 
- D 1 - I - 0x012349 04:A339: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x01234A 04:A33A: 30        .byte $30   ; 
- D 1 - I - 0x01234B 04:A33B: FE        .byte con_se_cb_1_FE, $02   ; 
- D 1 - I - 0x01234D 04:A33D: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x01234E 04:A33E: 90        .byte $90   ; 
- D 1 - I - 0x01234F 04:A33F: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x012350 04:A340: 00        .byte $00   ; 
- D 1 - I - 0x012351 04:A341: 30        .byte $30   ; 
- D 1 - I - 0x012352 04:A342: 60        .byte $60   ; 
- D 1 - I - 0x012353 04:A343: 00        .byte $00   ; 
- D 1 - I - 0x012354 04:A344: 30        .byte $30   ; 
- D 1 - I - 0x012355 04:A345: 60        .byte $60   ; 
- D 1 - I - 0x012356 04:A346: E1        .byte con_se_cb_1_E0 + $01   ; 
- D 1 - I - 0x012357 04:A347: 00        .byte $00   ; 
- D 1 - I - 0x012358 04:A348: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x012359 04:A349: A0        .byte $A0   ; 
- D 1 - I - 0x01235A 04:A34A: 90        .byte $90   ; 
- D 1 - I - 0x01235B 04:A34B: 70        .byte $70   ; 
- D 1 - I - 0x01235C 04:A34C: 60        .byte $60   ; 
- D 1 - I - 0x01235D 04:A34D: D6        .byte con_se_cb_1_D0 + $06, $78, con_9E25_04 + $80   ; 
- D 1 - I - 0x012360 04:A350: 17        .byte $17   ; 
- D 1 - I - 0x012361 04:A351: E9        .byte con_se_cb_1_E9, $35   ; 
- D 1 - I - 0x012363 04:A353: EC        .byte con_se_cb_1_EC, $02   ; 
- D 1 - I - 0x012365 04:A355: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x012366 04:A356: 20        .byte $20   ; 
- D 1 - I - 0x012367 04:A357: 70        .byte $70   ; 
- D 1 - I - 0x012368 04:A358: A0        .byte $A0   ; 
- D 1 - I - 0x012369 04:A359: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x01236A 04:A35A: 20        .byte $20   ; 
- D 1 - I - 0x01236B 04:A35B: FB        .byte con_se_cb_1_FB   ; 
- D 1 - I - 0x01236C 04:A35C: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x01236D 04:A35D: A0        .byte $A0   ; 
- D 1 - I - 0x01236E 04:A35E: 70        .byte $70   ; 
- D 1 - I - 0x01236F 04:A35F: 20        .byte $20   ; 
- D 1 - I - 0x012370 04:A360: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x012371 04:A361: 20        .byte $20   ; 
- D 1 - I - 0x012372 04:A362: FE        .byte con_se_cb_1_FE, $02   ; 
- D 1 - I - 0x012374 04:A364: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x012375 04:A365: 40        .byte $40   ; 
- D 1 - I - 0x012376 04:A366: 70        .byte $70   ; 
- D 1 - I - 0x012377 04:A367: A0        .byte $A0   ; 
- D 1 - I - 0x012378 04:A368: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x012379 04:A369: 40        .byte $40   ; 
- D 1 - I - 0x01237A 04:A36A: FB        .byte con_se_cb_1_FB   ; 
- D 1 - I - 0x01237B 04:A36B: 10        .byte $10   ; 
- D 1 - I - 0x01237C 04:A36C: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x01237D 04:A36D: A0        .byte $A0   ; 
- D 1 - I - 0x01237E 04:A36E: 70        .byte $70   ; 
- D 1 - I - 0x01237F 04:A36F: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x012380 04:A370: 40        .byte $40   ; 
- D 1 - I - 0x012381 04:A371: FE        .byte con_se_cb_1_FE, $02   ; 
- D 1 - I - 0x012383 04:A373: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x012384 04:A374: 30        .byte $30   ; 
- D 1 - I - 0x012385 04:A375: 60        .byte $60   ; 
- D 1 - I - 0x012386 04:A376: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x012387 04:A377: 00        .byte $00   ; 
- D 1 - I - 0x012388 04:A378: 30        .byte $30   ; 
- D 1 - I - 0x012389 04:A379: FB        .byte con_se_cb_1_FB   ; 
- D 1 - I - 0x01238A 04:A37A: 00        .byte $00   ; 
- D 1 - I - 0x01238B 04:A37B: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x01238C 04:A37C: 90        .byte $90   ; 
- D 1 - I - 0x01238D 04:A37D: 60        .byte $60   ; 
- D 1 - I - 0x01238E 04:A37E: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x01238F 04:A37F: 30        .byte $30   ; 
- D 1 - I - 0x012390 04:A380: FE        .byte con_se_cb_1_FE, $02   ; 
- D 1 - I - 0x012392 04:A382: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x012393 04:A383: 20        .byte $20   ; 
- D 1 - I - 0x012394 04:A384: 70        .byte $70   ; 
- D 1 - I - 0x012395 04:A385: A0        .byte $A0   ; 
- D 1 - I - 0x012396 04:A386: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x012397 04:A387: 20        .byte $20   ; 
- D 1 - I - 0x012398 04:A388: FB        .byte con_se_cb_1_FB   ; 
- D 1 - I - 0x012399 04:A389: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x01239A 04:A38A: A0        .byte $A0   ; 
- D 1 - I - 0x01239B 04:A38B: 70        .byte $70   ; 
- D 1 - I - 0x01239C 04:A38C: 20        .byte $20   ; 
- D 1 - I - 0x01239D 04:A38D: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x01239E 04:A38E: 20        .byte $20   ; 
- D 1 - I - 0x01239F 04:A38F: FE        .byte con_se_cb_1_FE, $02   ; 
- D 1 - I - 0x0123A1 04:A391: D6        .byte con_se_cb_1_D0 + $06, $78, con_9E25_04 + $80   ; 
- D 1 - I - 0x0123A4 04:A394: 17        .byte $17   ; 
- D 1 - I - 0x0123A5 04:A395: E9        .byte con_se_cb_1_E9, $35   ; 
- D 1 - I - 0x0123A7 04:A397: EC        .byte con_se_cb_1_EC, $02   ; 
- D 1 - I - 0x0123A9 04:A399: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x0123AA 04:A39A: 20        .byte $20   ; 
- D 1 - I - 0x0123AB 04:A39B: 70        .byte $70   ; 
- D 1 - I - 0x0123AC 04:A39C: A0        .byte $A0   ; 
- D 1 - I - 0x0123AD 04:A39D: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x0123AE 04:A39E: 20        .byte $20   ; 
- D 1 - I - 0x0123AF 04:A39F: FB        .byte con_se_cb_1_FB   ; 
- D 1 - I - 0x0123B0 04:A3A0: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x0123B1 04:A3A1: A0        .byte $A0   ; 
- D 1 - I - 0x0123B2 04:A3A2: 70        .byte $70   ; 
- D 1 - I - 0x0123B3 04:A3A3: 20        .byte $20   ; 
- D 1 - I - 0x0123B4 04:A3A4: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x0123B5 04:A3A5: 20        .byte $20   ; 
- D 1 - I - 0x0123B6 04:A3A6: FE        .byte con_se_cb_1_FE, $02   ; 
- D 1 - I - 0x0123B8 04:A3A8: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x0123B9 04:A3A9: 40        .byte $40   ; 
- D 1 - I - 0x0123BA 04:A3AA: 70        .byte $70   ; 
- D 1 - I - 0x0123BB 04:A3AB: A0        .byte $A0   ; 
- D 1 - I - 0x0123BC 04:A3AC: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x0123BD 04:A3AD: 40        .byte $40   ; 
- D 1 - I - 0x0123BE 04:A3AE: FB        .byte con_se_cb_1_FB   ; 
- D 1 - I - 0x0123BF 04:A3AF: 10        .byte $10   ; 
- D 1 - I - 0x0123C0 04:A3B0: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x0123C1 04:A3B1: A0        .byte $A0   ; 
- D 1 - I - 0x0123C2 04:A3B2: 70        .byte $70   ; 
- D 1 - I - 0x0123C3 04:A3B3: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x0123C4 04:A3B4: 40        .byte $40   ; 
- D 1 - I - 0x0123C5 04:A3B5: FE        .byte con_se_cb_1_FE, $02   ; 
- D 1 - I - 0x0123C7 04:A3B7: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x0123C8 04:A3B8: 30        .byte $30   ; 
- D 1 - I - 0x0123C9 04:A3B9: 60        .byte $60   ; 
- D 1 - I - 0x0123CA 04:A3BA: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x0123CB 04:A3BB: 00        .byte $00   ; 
- D 1 - I - 0x0123CC 04:A3BC: 30        .byte $30   ; 
- D 1 - I - 0x0123CD 04:A3BD: FB        .byte con_se_cb_1_FB   ; 
- D 1 - I - 0x0123CE 04:A3BE: 00        .byte $00   ; 
- D 1 - I - 0x0123CF 04:A3BF: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x0123D0 04:A3C0: 90        .byte $90   ; 
- D 1 - I - 0x0123D1 04:A3C1: 60        .byte $60   ; 
- D 1 - I - 0x0123D2 04:A3C2: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x0123D3 04:A3C3: 30        .byte $30   ; 
- D 1 - I - 0x0123D4 04:A3C4: FE        .byte con_se_cb_1_FE, $02   ; 
- D 1 - I - 0x0123D6 04:A3C6: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x0123D7 04:A3C7: 20        .byte $20   ; 
- D 1 - I - 0x0123D8 04:A3C8: 70        .byte $70   ; 
- D 1 - I - 0x0123D9 04:A3C9: A0        .byte $A0   ; 
- D 1 - I - 0x0123DA 04:A3CA: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x0123DB 04:A3CB: 20        .byte $20   ; 
- D 1 - I - 0x0123DC 04:A3CC: FB        .byte con_se_cb_1_FB   ; 
- D 1 - I - 0x0123DD 04:A3CD: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x0123DE 04:A3CE: A0        .byte $A0   ; 
- D 1 - I - 0x0123DF 04:A3CF: 70        .byte $70   ; 
- D 1 - I - 0x0123E0 04:A3D0: 20        .byte $20   ; 
- D 1 - I - 0x0123E1 04:A3D1: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x0123E2 04:A3D2: 20        .byte $20   ; 
- D 1 - I - 0x0123E3 04:A3D3: FE        .byte con_se_cb_1_FE, $02   ; 
- D 1 - I - 0x0123E5 04:A3D5: D6        .byte con_se_cb_1_D0 + $06, $7A, con_9E25_04 + $80   ; 
- D 1 - I - 0x0123E8 04:A3D8: 17        .byte $17   ; 
- D 1 - I - 0x0123E9 04:A3D9: F2        .byte con_se_cb_1_F0 + $02   ; 
- D 1 - I - 0x0123EA 04:A3DA: E9        .byte con_se_cb_1_E9, $35   ; 
- D 1 - I - 0x0123EC 04:A3DC: EC        .byte con_se_cb_1_EC, $02   ; 
- D 1 - I - 0x0123EE 04:A3DE: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x0123EF 04:A3DF: 70        .byte $70   ; 
- D 1 - I - 0x0123F0 04:A3E0: 20        .byte $20   ; 
- D 1 - I - 0x0123F1 04:A3E1: 70        .byte $70   ; 
- D 1 - I - 0x0123F2 04:A3E2: 20        .byte $20   ; 
- D 1 - I - 0x0123F3 04:A3E3: 70        .byte $70   ; 
- D 1 - I - 0x0123F4 04:A3E4: 20        .byte $20   ; 
- D 1 - I - 0x0123F5 04:A3E5: 70        .byte $70   ; 
- D 1 - I - 0x0123F6 04:A3E6: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x0123F7 04:A3E7: 20        .byte $20   ; 
- D 1 - I - 0x0123F8 04:A3E8: 00        .byte $00   ; 
- D 1 - I - 0x0123F9 04:A3E9: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x0123FA 04:A3EA: A0        .byte $A0   ; 
- D 1 - I - 0x0123FB 04:A3EB: 90        .byte $90   ; 
- D 1 - I - 0x0123FC 04:A3EC: 70        .byte $70   ; 
- D 1 - I - 0x0123FD 04:A3ED: 90        .byte $90   ; 
- D 1 - I - 0x0123FE 04:A3EE: 30        .byte $30   ; 
- D 1 - I - 0x0123FF 04:A3EF: 90        .byte $90   ; 
- D 1 - I - 0x012400 04:A3F0: 30        .byte $30   ; 
- D 1 - I - 0x012401 04:A3F1: 90        .byte $90   ; 
- D 1 - I - 0x012402 04:A3F2: 30        .byte $30   ; 
- D 1 - I - 0x012403 04:A3F3: 90        .byte $90   ; 
- D 1 - I - 0x012404 04:A3F4: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x012405 04:A3F5: 30        .byte $30   ; 
- D 1 - I - 0x012406 04:A3F6: 20        .byte $20   ; 
- D 1 - I - 0x012407 04:A3F7: 00        .byte $00   ; 
- D 1 - I - 0x012408 04:A3F8: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x012409 04:A3F9: A0        .byte $A0   ; 
- D 1 - I - 0x01240A 04:A3FA: 90        .byte $90   ; 
- D 1 - I - 0x01240B 04:A3FB: B0        .byte $B0   ; 
- D 1 - I - 0x01240C 04:A3FC: 50        .byte $50   ; 
- D 1 - I - 0x01240D 04:A3FD: B0        .byte $B0   ; 
- D 1 - I - 0x01240E 04:A3FE: 50        .byte $50   ; 
- D 1 - I - 0x01240F 04:A3FF: B0        .byte $B0   ; 
- D 1 - I - 0x012410 04:A400: 50        .byte $50   ; 
- D 1 - I - 0x012411 04:A401: B0        .byte $B0   ; 
- D 1 - I - 0x012412 04:A402: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x012413 04:A403: 50        .byte $50   ; 
- D 1 - I - 0x012414 04:A404: 30        .byte $30   ; 
- D 1 - I - 0x012415 04:A405: 20        .byte $20   ; 
- D 1 - I - 0x012416 04:A406: 00        .byte $00   ; 
- D 1 - I - 0x012417 04:A407: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x012418 04:A408: B0        .byte $B0   ; 
- D 1 - I - 0x012419 04:A409: F3        .byte con_se_cb_1_F0 + $03   ; 
- D 1 - I - 0x01241A 04:A40A: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x01241B 04:A40B: 20        .byte $20   ; 
- D 1 - I - 0x01241C 04:A40C: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x01241D 04:A40D: 80        .byte $80   ; 
- D 1 - I - 0x01241E 04:A40E: B0        .byte $B0   ; 
- D 1 - I - 0x01241F 04:A40F: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x012420 04:A410: 20        .byte $20   ; 
- D 1 - I - 0x012421 04:A411: F2        .byte con_se_cb_1_F0 + $02   ; 
- D 1 - I - 0x012422 04:A412: 50        .byte $50   ; 
- D 1 - I - 0x012423 04:A413: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x012424 04:A414: B0        .byte $B0   ; 
- D 1 - I - 0x012425 04:A415: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x012426 04:A416: 20        .byte $20   ; 
- D 1 - I - 0x012427 04:A417: F1        .byte con_se_cb_1_F0 + $01   ; 
- D 1 - I - 0x012428 04:A418: 50        .byte $50   ; 
- D 1 - I - 0x012429 04:A419: 80        .byte $80   ; 
- D 1 - I - 0x01242A 04:A41A: F0        .byte con_se_cb_1_F0 + $00   ; 
- D 1 - I - 0x01242B 04:A41B: 20        .byte $20   ; 
- D 1 - I - 0x01242C 04:A41C: 50        .byte $50   ; 
- D 1 - I - 0x01242D 04:A41D: 80        .byte $80   ; 
- D 1 - I - 0x01242E 04:A41E: D6        .byte con_se_cb_1_D0 + $06, $78, con_9E25_04 + $80   ; 
- D 1 - I - 0x012431 04:A421: 64        .byte $64   ; 
- D 1 - I - 0x012432 04:A422: E9        .byte con_se_cb_1_E9, $00   ; 
- D 1 - I - 0x012434 04:A424: EC        .byte con_se_cb_1_EC, $02   ; 
- D 1 - I - 0x012436 04:A426: EB        .byte con_se_cb_1_EB, con_9E7B_54, $21   ; 
- D 1 - I - 0x012439 04:A429: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x01243A 04:A42A: 75        .byte $75   ; 
- D 1 - I - 0x01243B 04:A42B: E8        .byte con_se_cb_1_E8, $10 + $07   ; 
- D 1 - I - 0x01243D 04:A42D: E9        .byte con_se_cb_1_E9, $74   ; 
- D 1 - I - 0x01243F 04:A42F: 70        .byte $70   ; 
- D 1 - I - 0x012440 04:A430: 50        .byte $50   ; 
- D 1 - I - 0x012441 04:A431: 30        .byte $30   ; 
- D 1 - I - 0x012442 04:A432: 50        .byte $50   ; 
- D 1 - I - 0x012443 04:A433: 70        .byte $70   ; 
- D 1 - I - 0x012444 04:A434: 90        .byte $90   ; 
- D 1 - I - 0x012445 04:A435: E8        .byte con_se_cb_1_E8, $60 + $04   ; 
- D 1 - I - 0x012447 04:A437: E9        .byte con_se_cb_1_E9, $00   ; 
- D 1 - I - 0x012449 04:A439: A5        .byte $A5   ; 
- D 1 - I - 0x01244A 04:A43A: E8        .byte con_se_cb_1_E8, $10 + $07   ; 
- D 1 - I - 0x01244C 04:A43C: E9        .byte con_se_cb_1_E9, $74   ; 
- D 1 - I - 0x01244E 04:A43E: 70        .byte $70   ; 
- D 1 - I - 0x01244F 04:A43F: 90        .byte $90   ; 
- D 1 - I - 0x012450 04:A440: A0        .byte $A0   ; 
- D 1 - I - 0x012451 04:A441: 90        .byte $90   ; 
- D 1 - I - 0x012452 04:A442: A0        .byte $A0   ; 
- D 1 - I - 0x012453 04:A443: 70        .byte $70   ; 
- D 1 - I - 0x012454 04:A444: C0        .byte con_se_cb_1_C0 + $00   ; 
- D 1 - I - 0x012455 04:A445: EC        .byte con_se_cb_1_EC, $00   ; 
- D 1 - I - 0x012457 04:A447: E9        .byte con_se_cb_1_E9, $30   ; 
- D 1 - I - 0x012459 04:A449: E9        .byte con_se_cb_1_E9, $B1   ; 
- D 1 - I - 0x01245B 04:A44B: 60        .byte $60   ; 
- D 1 - I - 0x01245C 04:A44C: 60        .byte $60   ; 
- D 1 - I - 0x01245D 04:A44D: F5        .byte con_se_cb_1_F0 + $05   ; 
- D 1 - I - 0x01245E 04:A44E: 60        .byte $60   ; 
- D 1 - I - 0x01245F 04:A44F: F0        .byte con_se_cb_1_F0 + $00   ; 
- D 1 - I - 0x012460 04:A450: A0        .byte $A0   ; 
- D 1 - I - 0x012461 04:A451: A0        .byte $A0   ; 
- D 1 - I - 0x012462 04:A452: F5        .byte con_se_cb_1_F0 + $05   ; 
- D 1 - I - 0x012463 04:A453: 60        .byte $60   ; 
- D 1 - I - 0x012464 04:A454: F0        .byte con_se_cb_1_F0 + $00   ; 
- D 1 - I - 0x012465 04:A455: 90        .byte $90   ; 
- D 1 - I - 0x012466 04:A456: F5        .byte con_se_cb_1_F0 + $05   ; 
- D 1 - I - 0x012467 04:A457: A0        .byte $A0   ; 
- D 1 - I - 0x012468 04:A458: F0        .byte con_se_cb_1_F0 + $00   ; 
- D 1 - I - 0x012469 04:A459: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x01246A 04:A45A: 80        .byte $80   ; 
- D 1 - I - 0x01246B 04:A45B: 90        .byte $90   ; 
- D 1 - I - 0x01246C 04:A45C: A0        .byte $A0   ; 
- D 1 - I - 0x01246D 04:A45D: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x01246E 04:A45E: 00        .byte $00   ; 
- D 1 - I - 0x01246F 04:A45F: 20        .byte $20   ; 
- D 1 - I - 0x012470 04:A460: 40        .byte $40   ; 
- D 1 - I - 0x012471 04:A461: 60        .byte $60   ; 
- D 1 - I - 0x012472 04:A462: EB        .byte con_se_cb_1_EB, $00   ; 
- D 1 - I - 0x012474 04:A464: D6        .byte con_se_cb_1_D0 + $06, $7A, con_9E25_04 + $80   ; 
- D 1 - I - 0x012477 04:A467: 17        .byte $17   ; 
- D 1 - I - 0x012478 04:A468: F2        .byte con_se_cb_1_F0 + $02   ; 
- D 1 - I - 0x012479 04:A469: E9        .byte con_se_cb_1_E9, $35   ; 
- D 1 - I - 0x01247B 04:A46B: EC        .byte con_se_cb_1_EC, $02   ; 
- D 1 - I - 0x01247D 04:A46D: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x01247E 04:A46E: 70        .byte $70   ; 
- D 1 - I - 0x01247F 04:A46F: 20        .byte $20   ; 
- D 1 - I - 0x012480 04:A470: 70        .byte $70   ; 
- D 1 - I - 0x012481 04:A471: 20        .byte $20   ; 
- D 1 - I - 0x012482 04:A472: 70        .byte $70   ; 
- D 1 - I - 0x012483 04:A473: 20        .byte $20   ; 
- D 1 - I - 0x012484 04:A474: 70        .byte $70   ; 
- D 1 - I - 0x012485 04:A475: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x012486 04:A476: 20        .byte $20   ; 
- D 1 - I - 0x012487 04:A477: 00        .byte $00   ; 
- D 1 - I - 0x012488 04:A478: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x012489 04:A479: A0        .byte $A0   ; 
- D 1 - I - 0x01248A 04:A47A: 90        .byte $90   ; 
- D 1 - I - 0x01248B 04:A47B: 70        .byte $70   ; 
- D 1 - I - 0x01248C 04:A47C: 90        .byte $90   ; 
- D 1 - I - 0x01248D 04:A47D: 30        .byte $30   ; 
- D 1 - I - 0x01248E 04:A47E: 90        .byte $90   ; 
- D 1 - I - 0x01248F 04:A47F: 30        .byte $30   ; 
- D 1 - I - 0x012490 04:A480: 90        .byte $90   ; 
- D 1 - I - 0x012491 04:A481: 30        .byte $30   ; 
- D 1 - I - 0x012492 04:A482: 90        .byte $90   ; 
- D 1 - I - 0x012493 04:A483: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x012494 04:A484: 30        .byte $30   ; 
- D 1 - I - 0x012495 04:A485: 20        .byte $20   ; 
- D 1 - I - 0x012496 04:A486: 00        .byte $00   ; 
- D 1 - I - 0x012497 04:A487: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x012498 04:A488: A0        .byte $A0   ; 
- D 1 - I - 0x012499 04:A489: 90        .byte $90   ; 
- D 1 - I - 0x01249A 04:A48A: B0        .byte $B0   ; 
- D 1 - I - 0x01249B 04:A48B: 50        .byte $50   ; 
- D 1 - I - 0x01249C 04:A48C: B0        .byte $B0   ; 
- D 1 - I - 0x01249D 04:A48D: 50        .byte $50   ; 
- D 1 - I - 0x01249E 04:A48E: B0        .byte $B0   ; 
- D 1 - I - 0x01249F 04:A48F: 50        .byte $50   ; 
- D 1 - I - 0x0124A0 04:A490: B0        .byte $B0   ; 
- D 1 - I - 0x0124A1 04:A491: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x0124A2 04:A492: 50        .byte $50   ; 
- D 1 - I - 0x0124A3 04:A493: 30        .byte $30   ; 
- D 1 - I - 0x0124A4 04:A494: 20        .byte $20   ; 
- D 1 - I - 0x0124A5 04:A495: 00        .byte $00   ; 
- D 1 - I - 0x0124A6 04:A496: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x0124A7 04:A497: B0        .byte $B0   ; 
- D 1 - I - 0x0124A8 04:A498: F3        .byte con_se_cb_1_F0 + $03   ; 
- D 1 - I - 0x0124A9 04:A499: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x0124AA 04:A49A: 20        .byte $20   ; 
- D 1 - I - 0x0124AB 04:A49B: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x0124AC 04:A49C: 80        .byte $80   ; 
- D 1 - I - 0x0124AD 04:A49D: B0        .byte $B0   ; 
- D 1 - I - 0x0124AE 04:A49E: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x0124AF 04:A49F: 20        .byte $20   ; 
- D 1 - I - 0x0124B0 04:A4A0: F2        .byte con_se_cb_1_F0 + $02   ; 
- D 1 - I - 0x0124B1 04:A4A1: 50        .byte $50   ; 
- D 1 - I - 0x0124B2 04:A4A2: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x0124B3 04:A4A3: B0        .byte $B0   ; 
- D 1 - I - 0x0124B4 04:A4A4: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x0124B5 04:A4A5: 20        .byte $20   ; 
- D 1 - I - 0x0124B6 04:A4A6: F1        .byte con_se_cb_1_F0 + $01   ; 
- D 1 - I - 0x0124B7 04:A4A7: 50        .byte $50   ; 
- D 1 - I - 0x0124B8 04:A4A8: 80        .byte $80   ; 
- D 1 - I - 0x0124B9 04:A4A9: F0        .byte con_se_cb_1_F0 + $00   ; 
- D 1 - I - 0x0124BA 04:A4AA: 20        .byte $20   ; 
- D 1 - I - 0x0124BB 04:A4AB: 50        .byte $50   ; 
- D 1 - I - 0x0124BC 04:A4AC: 80        .byte $80   ; 
- D 1 - I - 0x0124BD 04:A4AD: D6        .byte con_se_cb_1_D0 + $06, $78, con_9E25_04 + $80   ; 
- D 1 - I - 0x0124C0 04:A4B0: 64        .byte $64   ; 
- D 1 - I - 0x0124C1 04:A4B1: E9        .byte con_se_cb_1_E9, $00   ; 
- D 1 - I - 0x0124C3 04:A4B3: EC        .byte con_se_cb_1_EC, $02   ; 
- D 1 - I - 0x0124C5 04:A4B5: EB        .byte con_se_cb_1_EB, con_9E7B_54, $21   ; 
- D 1 - I - 0x0124C8 04:A4B8: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x0124C9 04:A4B9: 75        .byte $75   ; 
- D 1 - I - 0x0124CA 04:A4BA: E8        .byte con_se_cb_1_E8, $10 + $07   ; 
- D 1 - I - 0x0124CC 04:A4BC: E9        .byte con_se_cb_1_E9, $74   ; 
- D 1 - I - 0x0124CE 04:A4BE: 70        .byte $70   ; 
- D 1 - I - 0x0124CF 04:A4BF: 50        .byte $50   ; 
- D 1 - I - 0x0124D0 04:A4C0: 30        .byte $30   ; 
- D 1 - I - 0x0124D1 04:A4C1: 50        .byte $50   ; 
- D 1 - I - 0x0124D2 04:A4C2: 70        .byte $70   ; 
- D 1 - I - 0x0124D3 04:A4C3: 90        .byte $90   ; 
- D 1 - I - 0x0124D4 04:A4C4: E8        .byte con_se_cb_1_E8, $60 + $04   ; 
- D 1 - I - 0x0124D6 04:A4C6: E9        .byte con_se_cb_1_E9, $00   ; 
- D 1 - I - 0x0124D8 04:A4C8: A5        .byte $A5   ; 
- D 1 - I - 0x0124D9 04:A4C9: E8        .byte con_se_cb_1_E8, $10 + $07   ; 
- D 1 - I - 0x0124DB 04:A4CB: E9        .byte con_se_cb_1_E9, $74   ; 
- D 1 - I - 0x0124DD 04:A4CD: 70        .byte $70   ; 
- D 1 - I - 0x0124DE 04:A4CE: 90        .byte $90   ; 
- D 1 - I - 0x0124DF 04:A4CF: A0        .byte $A0   ; 
- D 1 - I - 0x0124E0 04:A4D0: 90        .byte $90   ; 
- D 1 - I - 0x0124E1 04:A4D1: A0        .byte $A0   ; 
- D 1 - I - 0x0124E2 04:A4D2: 70        .byte $70   ; 
- D 1 - I - 0x0124E3 04:A4D3: C0        .byte con_se_cb_1_C0 + $00   ; 
- D 1 - I - 0x0124E4 04:A4D4: EC        .byte con_se_cb_1_EC, $00   ; 
- D 1 - I - 0x0124E6 04:A4D6: E9        .byte con_se_cb_1_E9, $30   ; 
- D 1 - I - 0x0124E8 04:A4D8: E9        .byte con_se_cb_1_E9, $B1   ; 
- D 1 - I - 0x0124EA 04:A4DA: 60        .byte $60   ; 
- D 1 - I - 0x0124EB 04:A4DB: 60        .byte $60   ; 
- D 1 - I - 0x0124EC 04:A4DC: F5        .byte con_se_cb_1_F0 + $05   ; 
- D 1 - I - 0x0124ED 04:A4DD: 60        .byte $60   ; 
- D 1 - I - 0x0124EE 04:A4DE: F0        .byte con_se_cb_1_F0 + $00   ; 
- D 1 - I - 0x0124EF 04:A4DF: A0        .byte $A0   ; 
- D 1 - I - 0x0124F0 04:A4E0: A0        .byte $A0   ; 
- D 1 - I - 0x0124F1 04:A4E1: F5        .byte con_se_cb_1_F0 + $05   ; 
- D 1 - I - 0x0124F2 04:A4E2: 60        .byte $60   ; 
- D 1 - I - 0x0124F3 04:A4E3: F0        .byte con_se_cb_1_F0 + $00   ; 
- D 1 - I - 0x0124F4 04:A4E4: 90        .byte $90   ; 
- D 1 - I - 0x0124F5 04:A4E5: F5        .byte con_se_cb_1_F0 + $05   ; 
- D 1 - I - 0x0124F6 04:A4E6: A0        .byte $A0   ; 
- D 1 - I - 0x0124F7 04:A4E7: F0        .byte con_se_cb_1_F0 + $00   ; 
- D 1 - I - 0x0124F8 04:A4E8: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x0124F9 04:A4E9: 80        .byte $80   ; 
- D 1 - I - 0x0124FA 04:A4EA: 90        .byte $90   ; 
- D 1 - I - 0x0124FB 04:A4EB: A0        .byte $A0   ; 
- D 1 - I - 0x0124FC 04:A4EC: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x0124FD 04:A4ED: 00        .byte $00   ; 
- D 1 - I - 0x0124FE 04:A4EE: 20        .byte $20   ; 
- D 1 - I - 0x0124FF 04:A4EF: 40        .byte $40   ; 
- D 1 - I - 0x012500 04:A4F0: 60        .byte $60   ; 
- D 1 - I - 0x012501 04:A4F1: EB        .byte con_se_cb_1_EB, $00   ; 
- D 1 - I - 0x012503 04:A4F3: FE        .byte con_se_cb_1_FE, $FF   ; 
- D 1 - I - 0x012505 04:A4F5: 08 A3     .word off_FE_A308



off_ch_02_0x012507_60:
- D 1 - I - 0x012507 04:A4F7: D6        .byte con_se_cb_1_D0 + $06, $00   ; 
- D 1 - I - 0x012509 04:A4F9: C3        .byte con_se_cb_1_C0 + $03   ; 
off_FE_A4FA:
ofs_FD_A4FA:
- D 1 - I - 0x01250A 04:A4FA: D6        .byte con_se_cb_1_D0 + $06, $00   ; 
- D 1 - I - 0x01250C 04:A4FC: FB        .byte con_se_cb_1_FB   ; 
- D 1 - I - 0x01250D 04:A4FD: D6        .byte con_se_cb_1_D0 + $06, $00   ; 
- D 1 - I - 0x01250F 04:A4FF: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x012510 04:A500: 28        .byte $28   ; 
- D 1 - I - 0x012511 04:A501: C0        .byte con_se_cb_1_C0 + $00   ; 
- D 1 - I - 0x012512 04:A502: D6        .byte con_se_cb_1_D0 + $06, $11   ; 
- D 1 - I - 0x012514 04:A504: 20        .byte $20   ; 
- D 1 - I - 0x012515 04:A505: 20        .byte $20   ; 
- D 1 - I - 0x012516 04:A506: FE        .byte con_se_cb_1_FE, $02   ; 
- D 1 - I - 0x012518 04:A508: 23        .byte $23   ; 
- D 1 - I - 0x012519 04:A509: 23        .byte $23   ; 
- D 1 - I - 0x01251A 04:A50A: 23        .byte $23   ; 
- D 1 - I - 0x01251B 04:A50B: 21        .byte $21   ; 
- D 1 - I - 0x01251C 04:A50C: 21        .byte $21   ; 
- D 1 - I - 0x01251D 04:A50D: 21        .byte $21   ; 
- D 1 - I - 0x01251E 04:A50E: 21        .byte $21   ; 
- D 1 - I - 0x01251F 04:A50F: 21        .byte $21   ; 
- D 1 - I - 0x012520 04:A510: 21        .byte $21   ; 
- D 1 - I - 0x012521 04:A511: D6        .byte con_se_cb_1_D0 + $06, $10   ; 
- D 1 - I - 0x012523 04:A513: FB        .byte con_se_cb_1_FB   ; 
- D 1 - I - 0x012524 04:A514: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x012525 04:A515: 70        .byte $70   ; 
- D 1 - I - 0x012526 04:A516: F0        .byte con_se_cb_1_F0 + $00   ; 
- D 1 - I - 0x012527 04:A517: FE        .byte con_se_cb_1_FE, $16   ; 
- D 1 - I - 0x012529 04:A519: 20        .byte $20   ; 
- D 1 - I - 0x01252A 04:A51A: 40        .byte $40   ; 
- D 1 - I - 0x01252B 04:A51B: 50        .byte $50   ; 
- D 1 - I - 0x01252C 04:A51C: 60        .byte $60   ; 
- D 1 - I - 0x01252D 04:A51D: D6        .byte con_se_cb_1_D0 + $06, $10   ; 
- D 1 - I - 0x01252F 04:A51F: FB        .byte con_se_cb_1_FB   ; 
- D 1 - I - 0x012530 04:A520: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x012531 04:A521: 70        .byte $70   ; 
- D 1 - I - 0x012532 04:A522: F0        .byte con_se_cb_1_F0 + $00   ; 
- D 1 - I - 0x012533 04:A523: FE        .byte con_se_cb_1_FE, $16   ; 
- D 1 - I - 0x012535 04:A525: 20        .byte $20   ; 
- D 1 - I - 0x012536 04:A526: 40        .byte $40   ; 
- D 1 - I - 0x012537 04:A527: 50        .byte $50   ; 
- D 1 - I - 0x012538 04:A528: 60        .byte $60   ; 
- D 1 - I - 0x012539 04:A529: D6        .byte con_se_cb_1_D0 + $06, $10   ; 
- D 1 - I - 0x01253B 04:A52B: FB        .byte con_se_cb_1_FB   ; 
- D 1 - I - 0x01253C 04:A52C: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x01253D 04:A52D: 70        .byte $70   ; 
- D 1 - I - 0x01253E 04:A52E: F0        .byte con_se_cb_1_F0 + $00   ; 
- D 1 - I - 0x01253F 04:A52F: FE        .byte con_se_cb_1_FE, $18   ; 
- D 1 - I - 0x012541 04:A531: D6        .byte con_se_cb_1_D0 + $06, $10   ; 
- D 1 - I - 0x012543 04:A533: FB        .byte con_se_cb_1_FB   ; 
- D 1 - I - 0x012544 04:A534: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x012545 04:A535: 70        .byte $70   ; 
- D 1 - I - 0x012546 04:A536: F0        .byte con_se_cb_1_F0 + $00   ; 
- D 1 - I - 0x012547 04:A537: FE        .byte con_se_cb_1_FE, $05   ; 
- D 1 - I - 0x012549 04:A539: 50        .byte $50   ; 
- D 1 - I - 0x01254A 04:A53A: F0        .byte con_se_cb_1_F0 + $00   ; 
- D 1 - I - 0x01254B 04:A53B: FB        .byte con_se_cb_1_FB   ; 
- D 1 - I - 0x01254C 04:A53C: 40        .byte $40   ; 
- D 1 - I - 0x01254D 04:A53D: F0        .byte con_se_cb_1_F0 + $00   ; 
- D 1 - I - 0x01254E 04:A53E: FE        .byte con_se_cb_1_FE, $06   ; 
- D 1 - I - 0x012550 04:A540: 20        .byte $20   ; 
- D 1 - I - 0x012551 04:A541: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x012552 04:A542: 00        .byte $00   ; 
- D 1 - I - 0x012553 04:A543: 00        .byte $00   ; 
- D 1 - I - 0x012554 04:A544: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x012555 04:A545: 20        .byte $20   ; 
- D 1 - I - 0x012556 04:A546: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x012557 04:A547: 30        .byte $30   ; 
- D 1 - I - 0x012558 04:A548: 30        .byte $30   ; 
- D 1 - I - 0x012559 04:A549: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x01255A 04:A54A: 20        .byte $20   ; 
- D 1 - I - 0x01255B 04:A54B: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x01255C 04:A54C: 20        .byte $20   ; 
- D 1 - I - 0x01255D 04:A54D: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x01255E 04:A54E: 20        .byte $20   ; 
- D 1 - I - 0x01255F 04:A54F: 80        .byte $80   ; 
- D 1 - I - 0x012560 04:A550: 90        .byte $90   ; 
- D 1 - I - 0x012561 04:A551: A0        .byte $A0   ; 
- D 1 - I - 0x012562 04:A552: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x012563 04:A553: 00        .byte $00   ; 
- D 1 - I - 0x012564 04:A554: 20        .byte $20   ; 
- D 1 - I - 0x012565 04:A555: 40        .byte $40   ; 
- D 1 - I - 0x012566 04:A556: 60        .byte $60   ; 
- D 1 - I - 0x012567 04:A557: D6        .byte con_se_cb_1_D0 + $06, $10   ; 
- D 1 - I - 0x012569 04:A559: FB        .byte con_se_cb_1_FB   ; 
- D 1 - I - 0x01256A 04:A55A: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x01256B 04:A55B: 70        .byte $70   ; 
- D 1 - I - 0x01256C 04:A55C: F0        .byte con_se_cb_1_F0 + $00   ; 
- D 1 - I - 0x01256D 04:A55D: FE        .byte con_se_cb_1_FE, $18   ; 
- D 1 - I - 0x01256F 04:A55F: D6        .byte con_se_cb_1_D0 + $06, $10   ; 
- D 1 - I - 0x012571 04:A561: FB        .byte con_se_cb_1_FB   ; 
- D 1 - I - 0x012572 04:A562: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x012573 04:A563: 70        .byte $70   ; 
- D 1 - I - 0x012574 04:A564: F0        .byte con_se_cb_1_F0 + $00   ; 
- D 1 - I - 0x012575 04:A565: FE        .byte con_se_cb_1_FE, $05   ; 
- D 1 - I - 0x012577 04:A567: 50        .byte $50   ; 
- D 1 - I - 0x012578 04:A568: F0        .byte con_se_cb_1_F0 + $00   ; 
- D 1 - I - 0x012579 04:A569: FB        .byte con_se_cb_1_FB   ; 
- D 1 - I - 0x01257A 04:A56A: 40        .byte $40   ; 
- D 1 - I - 0x01257B 04:A56B: F0        .byte con_se_cb_1_F0 + $00   ; 
- D 1 - I - 0x01257C 04:A56C: FE        .byte con_se_cb_1_FE, $06   ; 
- D 1 - I - 0x01257E 04:A56E: 20        .byte $20   ; 
- D 1 - I - 0x01257F 04:A56F: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x012580 04:A570: 00        .byte $00   ; 
- D 1 - I - 0x012581 04:A571: 00        .byte $00   ; 
- D 1 - I - 0x012582 04:A572: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x012583 04:A573: 20        .byte $20   ; 
- D 1 - I - 0x012584 04:A574: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x012585 04:A575: 30        .byte $30   ; 
- D 1 - I - 0x012586 04:A576: 30        .byte $30   ; 
- D 1 - I - 0x012587 04:A577: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x012588 04:A578: 20        .byte $20   ; 
- D 1 - I - 0x012589 04:A579: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x01258A 04:A57A: 20        .byte $20   ; 
- D 1 - I - 0x01258B 04:A57B: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x01258C 04:A57C: 20        .byte $20   ; 
- D 1 - I - 0x01258D 04:A57D: 80        .byte $80   ; 
- D 1 - I - 0x01258E 04:A57E: 90        .byte $90   ; 
- D 1 - I - 0x01258F 04:A57F: A0        .byte $A0   ; 
- D 1 - I - 0x012590 04:A580: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x012591 04:A581: 00        .byte $00   ; 
- D 1 - I - 0x012592 04:A582: 20        .byte $20   ; 
- D 1 - I - 0x012593 04:A583: 40        .byte $40   ; 
- D 1 - I - 0x012594 04:A584: 60        .byte $60   ; 
- D 1 - I - 0x012595 04:A585: FE        .byte con_se_cb_1_FE, $FF   ; 
- D 1 - I - 0x012597 04:A587: FA A4     .word off_FE_A4FA



off_ch_05_0x012599_60:
- D 1 - I - 0x012599 04:A589: D1        .byte $D1   ; 
- D 1 - I - 0x01259A 04:A58A: FB        .byte con_se_cb_1_FB   ; 
- D 1 - I - 0x01259B 04:A58B: A0        .byte $A0   ; 
- D 1 - I - 0x01259C 04:A58C: 22        .byte $22   ; 
- D 1 - I - 0x01259D 04:A58D: FE        .byte con_se_cb_1_FE, $06   ; 



off_ch_05_0x01259F_61:
- D 1 - I - 0x01259F 04:A58F: D6        .byte $D6   ; 
- D 1 - I - 0x0125A0 04:A590: FB        .byte con_se_cb_1_FB   ; 
- D 1 - I - 0x0125A1 04:A591: D1        .byte $D1   ; 
- D 1 - I - 0x0125A2 04:A592: B0        .byte $B0   ; 
- D 1 - I - 0x0125A3 04:A593: 24        .byte $24   ; 
- D 1 - I - 0x0125A4 04:A594: D6        .byte $D6   ; 
- D 1 - I - 0x0125A5 04:A595: C8        .byte $C8   ; 
- D 1 - I - 0x0125A6 04:A596: D1        .byte $D1   ; 
- D 1 - I - 0x0125A7 04:A597: B0        .byte $B0   ; 
- D 1 - I - 0x0125A8 04:A598: 24        .byte $24   ; 
- D 1 - I - 0x0125A9 04:A599: B0        .byte $B0   ; 
- D 1 - I - 0x0125AA 04:A59A: 24        .byte $24   ; 
- D 1 - I - 0x0125AB 04:A59B: FE        .byte con_se_cb_1_FE, $02   ; 
- D 1 - I - 0x0125AD 04:A59D: FB        .byte con_se_cb_1_FB   ; 
- D 1 - I - 0x0125AE 04:A59E: B0        .byte $B0   ; 
- D 1 - I - 0x0125AF 04:A59F: 2A        .byte $2A   ; 
- D 1 - I - 0x0125B0 04:A5A0: CB        .byte $CB   ; 
- D 1 - I - 0x0125B1 04:A5A1: FE        .byte con_se_cb_1_FE, $03   ; 
- D 1 - I - 0x0125B3 04:A5A3: B0        .byte $B0   ; 
- D 1 - I - 0x0125B4 04:A5A4: 2A        .byte $2A   ; 
- D 1 - I - 0x0125B5 04:A5A5: B0        .byte $B0   ; 
- D 1 - I - 0x0125B6 04:A5A6: 2A        .byte $2A   ; 
- D 1 - I - 0x0125B7 04:A5A7: B0        .byte $B0   ; 
- D 1 - I - 0x0125B8 04:A5A8: 2A        .byte $2A   ; 
- D 1 - I - 0x0125B9 04:A5A9: B0        .byte $B0   ; 
- D 1 - I - 0x0125BA 04:A5AA: 14        .byte $14   ; 
- D 1 - I - 0x0125BB 04:A5AB: B0        .byte $B0   ; 
- D 1 - I - 0x0125BC 04:A5AC: 14        .byte $14   ; 
- D 1 - I - 0x0125BD 04:A5AD: B0        .byte $B0   ; 
- D 1 - I - 0x0125BE 04:A5AE: 14        .byte $14   ; 
- D 1 - I - 0x0125BF 04:A5AF: B0        .byte $B0   ; 
- D 1 - I - 0x0125C0 04:A5B0: 24        .byte $24   ; 
- D 1 - I - 0x0125C1 04:A5B1: B0        .byte $B0   ; 
- D 1 - I - 0x0125C2 04:A5B2: 24        .byte $24   ; 
- D 1 - I - 0x0125C3 04:A5B3: B0        .byte $B0   ; 
- D 1 - I - 0x0125C4 04:A5B4: 24        .byte $24   ; 
off_FE_A5B5:
- D 1 - I - 0x0125C5 04:A5B5: D1        .byte $D1   ; 
- D 1 - I - 0x0125C6 04:A5B6: FB        .byte con_se_cb_1_FB   ; 
- D 1 - I - 0x0125C7 04:A5B7: B0        .byte $B0   ; 
- D 1 - I - 0x0125C8 04:A5B8: 2A        .byte $2A   ; 
- D 1 - I - 0x0125C9 04:A5B9: A0        .byte $A0   ; 
- D 1 - I - 0x0125CA 04:A5BA: 2A        .byte $2A   ; 
- D 1 - I - 0x0125CB 04:A5BB: B0        .byte $B0   ; 
- D 1 - I - 0x0125CC 04:A5BC: 24        .byte $24   ; 
- D 1 - I - 0x0125CD 04:A5BD: B5        .byte $B5   ; 
- D 1 - I - 0x0125CE 04:A5BE: A0        .byte $A0   ; 
- D 1 - I - 0x0125CF 04:A5BF: 2A        .byte $2A   ; 
- D 1 - I - 0x0125D0 04:A5C0: B0        .byte $B0   ; 
- D 1 - I - 0x0125D1 04:A5C1: 24        .byte $24   ; 
- D 1 - I - 0x0125D2 04:A5C2: B5        .byte $B5   ; 
- D 1 - I - 0x0125D3 04:A5C3: A0        .byte $A0   ; 
- D 1 - I - 0x0125D4 04:A5C4: 2A        .byte $2A   ; 
- D 1 - I - 0x0125D5 04:A5C5: FE        .byte con_se_cb_1_FE, $08   ; 
- D 1 - I - 0x0125D7 04:A5C7: D1        .byte $D1   ; 
- D 1 - I - 0x0125D8 04:A5C8: FB        .byte con_se_cb_1_FB   ; 
- D 1 - I - 0x0125D9 04:A5C9: B0        .byte $B0   ; 
- D 1 - I - 0x0125DA 04:A5CA: 2A        .byte $2A   ; 
- D 1 - I - 0x0125DB 04:A5CB: A0        .byte $A0   ; 
- D 1 - I - 0x0125DC 04:A5CC: 2A        .byte $2A   ; 
- D 1 - I - 0x0125DD 04:A5CD: B0        .byte $B0   ; 
- D 1 - I - 0x0125DE 04:A5CE: 24        .byte $24   ; 
- D 1 - I - 0x0125DF 04:A5CF: B5        .byte $B5   ; 
- D 1 - I - 0x0125E0 04:A5D0: A0        .byte $A0   ; 
- D 1 - I - 0x0125E1 04:A5D1: 2A        .byte $2A   ; 
- D 1 - I - 0x0125E2 04:A5D2: B0        .byte $B0   ; 
- D 1 - I - 0x0125E3 04:A5D3: 24        .byte $24   ; 
- D 1 - I - 0x0125E4 04:A5D4: B5        .byte $B5   ; 
- D 1 - I - 0x0125E5 04:A5D5: A0        .byte $A0   ; 
- D 1 - I - 0x0125E6 04:A5D6: 2A        .byte $2A   ; 
- D 1 - I - 0x0125E7 04:A5D7: FE        .byte con_se_cb_1_FE, $04   ; 
- D 1 - I - 0x0125E9 04:A5D9: D1        .byte $D1   ; 
- D 1 - I - 0x0125EA 04:A5DA: FB        .byte con_se_cb_1_FB   ; 
- D 1 - I - 0x0125EB 04:A5DB: B0        .byte $B0   ; 
- D 1 - I - 0x0125EC 04:A5DC: 2A        .byte $2A   ; 
- D 1 - I - 0x0125ED 04:A5DD: A0        .byte $A0   ; 
- D 1 - I - 0x0125EE 04:A5DE: 2A        .byte $2A   ; 
- D 1 - I - 0x0125EF 04:A5DF: B0        .byte $B0   ; 
- D 1 - I - 0x0125F0 04:A5E0: 24        .byte $24   ; 
- D 1 - I - 0x0125F1 04:A5E1: B5        .byte $B5   ; 
- D 1 - I - 0x0125F2 04:A5E2: A0        .byte $A0   ; 
- D 1 - I - 0x0125F3 04:A5E3: 2A        .byte $2A   ; 
- D 1 - I - 0x0125F4 04:A5E4: B0        .byte $B0   ; 
- D 1 - I - 0x0125F5 04:A5E5: 24        .byte $24   ; 
- D 1 - I - 0x0125F6 04:A5E6: B5        .byte $B5   ; 
- D 1 - I - 0x0125F7 04:A5E7: A0        .byte $A0   ; 
- D 1 - I - 0x0125F8 04:A5E8: 2A        .byte $2A   ; 
- D 1 - I - 0x0125F9 04:A5E9: FE        .byte con_se_cb_1_FE, $02   ; 
- D 1 - I - 0x0125FB 04:A5EB: B5        .byte $B5   ; 
- D 1 - I - 0x0125FC 04:A5EC: A5        .byte $A5   ; 
- D 1 - I - 0x0125FD 04:A5ED: A5        .byte $A5   ; 
- D 1 - I - 0x0125FE 04:A5EE: B5        .byte $B5   ; 
- D 1 - I - 0x0125FF 04:A5EF: A5        .byte $A5   ; 
- D 1 - I - 0x012600 04:A5F0: A5        .byte $A5   ; 
- D 1 - I - 0x012601 04:A5F1: B5        .byte $B5   ; 
- D 1 - I - 0x012602 04:A5F2: B5        .byte $B5   ; 
- D 1 - I - 0x012603 04:A5F3: A5        .byte $A5   ; 
- D 1 - I - 0x012604 04:A5F4: A5        .byte $A5   ; 
- D 1 - I - 0x012605 04:A5F5: A5        .byte $A5   ; 
- D 1 - I - 0x012606 04:A5F6: A5        .byte $A5   ; 
- D 1 - I - 0x012607 04:A5F7: A5        .byte $A5   ; 
- D 1 - I - 0x012608 04:A5F8: A5        .byte $A5   ; 
- D 1 - I - 0x012609 04:A5F9: A5        .byte $A5   ; 
- D 1 - I - 0x01260A 04:A5FA: A5        .byte $A5   ; 
- D 1 - I - 0x01260B 04:A5FB: D1        .byte $D1   ; 
- D 1 - I - 0x01260C 04:A5FC: FB        .byte con_se_cb_1_FB   ; 
- D 1 - I - 0x01260D 04:A5FD: B0        .byte $B0   ; 
- D 1 - I - 0x01260E 04:A5FE: 2A        .byte $2A   ; 
- D 1 - I - 0x01260F 04:A5FF: A0        .byte $A0   ; 
- D 1 - I - 0x012610 04:A600: 2A        .byte $2A   ; 
- D 1 - I - 0x012611 04:A601: B0        .byte $B0   ; 
- D 1 - I - 0x012612 04:A602: 24        .byte $24   ; 
- D 1 - I - 0x012613 04:A603: B5        .byte $B5   ; 
- D 1 - I - 0x012614 04:A604: A0        .byte $A0   ; 
- D 1 - I - 0x012615 04:A605: 2A        .byte $2A   ; 
- D 1 - I - 0x012616 04:A606: B0        .byte $B0   ; 
- D 1 - I - 0x012617 04:A607: 24        .byte $24   ; 
- D 1 - I - 0x012618 04:A608: B5        .byte $B5   ; 
- D 1 - I - 0x012619 04:A609: A0        .byte $A0   ; 
- D 1 - I - 0x01261A 04:A60A: 2A        .byte $2A   ; 
- D 1 - I - 0x01261B 04:A60B: FE        .byte con_se_cb_1_FE, $04   ; 
- D 1 - I - 0x01261D 04:A60D: D1        .byte $D1   ; 
- D 1 - I - 0x01261E 04:A60E: FB        .byte con_se_cb_1_FB   ; 
- D 1 - I - 0x01261F 04:A60F: B0        .byte $B0   ; 
- D 1 - I - 0x012620 04:A610: 2A        .byte $2A   ; 
- D 1 - I - 0x012621 04:A611: A0        .byte $A0   ; 
- D 1 - I - 0x012622 04:A612: 2A        .byte $2A   ; 
- D 1 - I - 0x012623 04:A613: B0        .byte $B0   ; 
- D 1 - I - 0x012624 04:A614: 24        .byte $24   ; 
- D 1 - I - 0x012625 04:A615: B5        .byte $B5   ; 
- D 1 - I - 0x012626 04:A616: A0        .byte $A0   ; 
- D 1 - I - 0x012627 04:A617: 2A        .byte $2A   ; 
- D 1 - I - 0x012628 04:A618: B0        .byte $B0   ; 
- D 1 - I - 0x012629 04:A619: 24        .byte $24   ; 
- D 1 - I - 0x01262A 04:A61A: B5        .byte $B5   ; 
- D 1 - I - 0x01262B 04:A61B: A0        .byte $A0   ; 
- D 1 - I - 0x01262C 04:A61C: 2A        .byte $2A   ; 
- D 1 - I - 0x01262D 04:A61D: FE        .byte con_se_cb_1_FE, $02   ; 
- D 1 - I - 0x01262F 04:A61F: B5        .byte $B5   ; 
- D 1 - I - 0x012630 04:A620: A5        .byte $A5   ; 
- D 1 - I - 0x012631 04:A621: A5        .byte $A5   ; 
- D 1 - I - 0x012632 04:A622: B5        .byte $B5   ; 
- D 1 - I - 0x012633 04:A623: A5        .byte $A5   ; 
- D 1 - I - 0x012634 04:A624: A5        .byte $A5   ; 
- D 1 - I - 0x012635 04:A625: B5        .byte $B5   ; 
- D 1 - I - 0x012636 04:A626: B5        .byte $B5   ; 
- D 1 - I - 0x012637 04:A627: A5        .byte $A5   ; 
- D 1 - I - 0x012638 04:A628: A5        .byte $A5   ; 
- D 1 - I - 0x012639 04:A629: A5        .byte $A5   ; 
- D 1 - I - 0x01263A 04:A62A: A5        .byte $A5   ; 
- D 1 - I - 0x01263B 04:A62B: A5        .byte $A5   ; 
- D 1 - I - 0x01263C 04:A62C: A5        .byte $A5   ; 
- D 1 - I - 0x01263D 04:A62D: A5        .byte $A5   ; 
- D 1 - I - 0x01263E 04:A62E: A5        .byte $A5   ; 
- D 1 - I - 0x01263F 04:A62F: D6        .byte $D6   ; 
- D 1 - I - 0x012640 04:A630: FB        .byte con_se_cb_1_FB   ; 
- D 1 - I - 0x012641 04:A631: D1        .byte $D1   ; 
- D 1 - I - 0x012642 04:A632: B0        .byte $B0   ; 
- D 1 - I - 0x012643 04:A633: 24        .byte $24   ; 
- D 1 - I - 0x012644 04:A634: D6        .byte $D6   ; 
- D 1 - I - 0x012645 04:A635: C2        .byte $C2   ; 
- D 1 - I - 0x012646 04:A636: B0        .byte $B0   ; 
- D 1 - I - 0x012647 04:A637: A0        .byte $A0   ; 
- D 1 - I - 0x012648 04:A638: A1        .byte $A1   ; 
- D 1 - I - 0x012649 04:A639: D1        .byte $D1   ; 
- D 1 - I - 0x01264A 04:A63A: B0        .byte $B0   ; 
- D 1 - I - 0x01264B 04:A63B: 2A        .byte $2A   ; 
- D 1 - I - 0x01264C 04:A63C: B0        .byte $B0   ; 
- D 1 - I - 0x01264D 04:A63D: 24        .byte $24   ; 
- D 1 - I - 0x01264E 04:A63E: B0        .byte $B0   ; 
- D 1 - I - 0x01264F 04:A63F: 24        .byte $24   ; 
- D 1 - I - 0x012650 04:A640: FE        .byte con_se_cb_1_FE, $03   ; 
- D 1 - I - 0x012652 04:A642: B0        .byte $B0   ; 
- D 1 - I - 0x012653 04:A643: 2A        .byte $2A   ; 
- D 1 - I - 0x012654 04:A644: B0        .byte $B0   ; 
- D 1 - I - 0x012655 04:A645: 2A        .byte $2A   ; 
- D 1 - I - 0x012656 04:A646: B0        .byte $B0   ; 
- D 1 - I - 0x012657 04:A647: 2A        .byte $2A   ; 
- D 1 - I - 0x012658 04:A648: B0        .byte $B0   ; 
- D 1 - I - 0x012659 04:A649: 14        .byte $14   ; 
- D 1 - I - 0x01265A 04:A64A: B0        .byte $B0   ; 
- D 1 - I - 0x01265B 04:A64B: 14        .byte $14   ; 
- D 1 - I - 0x01265C 04:A64C: B0        .byte $B0   ; 
- D 1 - I - 0x01265D 04:A64D: 14        .byte $14   ; 
- D 1 - I - 0x01265E 04:A64E: B0        .byte $B0   ; 
- D 1 - I - 0x01265F 04:A64F: 24        .byte $24   ; 
- D 1 - I - 0x012660 04:A650: B0        .byte $B0   ; 
- D 1 - I - 0x012661 04:A651: 24        .byte $24   ; 
- D 1 - I - 0x012662 04:A652: B0        .byte $B0   ; 
- D 1 - I - 0x012663 04:A653: 24        .byte $24   ; 
- D 1 - I - 0x012664 04:A654: FE        .byte con_se_cb_1_FE, $FF   ; 
- D 1 - I - 0x012666 04:A656: B5 A5     .word off_FE_A5B5



off_ch_00_0x012668_61:
- D 1 - I - 0x012668 04:A658: EA        .byte con_se_cb_1_EA, $01   ; 
- D 1 - I - 0x01266A 04:A65A: FD        .byte con_se_cb_1_FD   ; 
- D 1 - I - 0x01266B 04:A65B: 84 A1     .word ofs_FD_A184



off_ch_01_0x01266D_61:
- D 1 - I - 0x01266D 04:A65D: EA        .byte con_se_cb_1_EA, $01   ; 
- D 1 - I - 0x01266F 04:A65F: FD        .byte con_se_cb_1_FD   ; 
- D 1 - I - 0x012670 04:A660: 08 A3     .word ofs_FD_A308



off_ch_02_0x012672_61:
- D 1 - I - 0x012672 04:A662: EA        .byte con_se_cb_1_EA, $01   ; 
- D 1 - I - 0x012674 04:A664: FD        .byte con_se_cb_1_FD   ; 
- D 1 - I - 0x012675 04:A665: FA A4     .word ofs_FD_A4FA



off_ch_00_0x012677_62:
- D 1 - I - 0x012677 04:A667: DA        .byte con_se_cb_1_D0 + $0A, $72, con_9E25_00 + $80   ; 
- D 1 - I - 0x01267A 04:A66A: 00        .byte $00   ; 
- D 1 - I - 0x01267B 04:A66B: ED        .byte con_se_cb_1_ED, $01   ; 
- D 1 - I - 0x01267D 04:A66D: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x01267E 04:A66E: 11        .byte $11   ; 
off_FE_A66F:
- D 1 - I - 0x01267F 04:A66F: DA        .byte con_se_cb_1_D0 + $0A, $72, con_9E25_00 + $80   ; 
- D 1 - I - 0x012682 04:A672: 00        .byte $00   ; 
- D 1 - I - 0x012683 04:A673: ED        .byte con_se_cb_1_ED, $01   ; 
- D 1 - I - 0x012685 04:A675: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x012686 04:A676: 11        .byte $11   ; 
- D 1 - I - 0x012687 04:A677: 81        .byte $81   ; 
- D 1 - I - 0x012688 04:A678: 71        .byte $71   ; 
- D 1 - I - 0x012689 04:A679: 33        .byte $33   ; 
- D 1 - I - 0x01268A 04:A67A: 63        .byte $63   ; 
- D 1 - I - 0x01268B 04:A67B: 13        .byte $13   ; 
- D 1 - I - 0x01268C 04:A67C: 05        .byte $05   ; 
- D 1 - I - 0x01268D 04:A67D: 11        .byte $11   ; 
- D 1 - I - 0x01268E 04:A67E: 31        .byte $31   ; 
- D 1 - I - 0x01268F 04:A67F: 41        .byte $41   ; 
- D 1 - I - 0x012690 04:A680: 61        .byte $61   ; 
- D 1 - I - 0x012691 04:A681: 11        .byte $11   ; 
- D 1 - I - 0x012692 04:A682: 81        .byte $81   ; 
- D 1 - I - 0x012693 04:A683: 71        .byte $71   ; 
- D 1 - I - 0x012694 04:A684: 33        .byte $33   ; 
- D 1 - I - 0x012695 04:A685: 63        .byte $63   ; 
- D 1 - I - 0x012696 04:A686: 13        .byte $13   ; 
- D 1 - I - 0x012697 04:A687: 05        .byte $05   ; 
- D 1 - I - 0x012698 04:A688: 11        .byte $11   ; 
- D 1 - I - 0x012699 04:A689: 81        .byte $81   ; 
- D 1 - I - 0x01269A 04:A68A: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x01269B 04:A68B: 11        .byte $11   ; 
- D 1 - I - 0x01269C 04:A68C: 01        .byte $01   ; 
- D 1 - I - 0x01269D 04:A68D: DA        .byte con_se_cb_1_D0 + $0A, $72, con_9E25_00 + $80   ; 
- D 1 - I - 0x0126A0 04:A690: 11        .byte $11   ; 
- D 1 - I - 0x0126A1 04:A691: ED        .byte con_se_cb_1_ED, $01   ; 
- D 1 - I - 0x0126A3 04:A693: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x0126A4 04:A694: 11        .byte $11   ; 
- D 1 - I - 0x0126A5 04:A695: B1        .byte $B1   ; 
- D 1 - I - 0x0126A6 04:A696: 81        .byte $81   ; 
- D 1 - I - 0x0126A7 04:A697: 7F        .byte $7F   ; 
- D 1 - I - 0x0126A8 04:A698: C9        .byte con_se_cb_1_C0 + $09   ; 
- D 1 - I - 0x0126A9 04:A699: 11        .byte $11   ; 
- D 1 - I - 0x0126AA 04:A69A: B1        .byte $B1   ; 
- D 1 - I - 0x0126AB 04:A69B: 81        .byte $81   ; 
- D 1 - I - 0x0126AC 04:A69C: 71        .byte $71   ; 
- D 1 - I - 0x0126AD 04:A69D: 41        .byte $41   ; 
- D 1 - I - 0x0126AE 04:A69E: 75        .byte $75   ; 
- D 1 - I - 0x0126AF 04:A69F: D1        .byte $D1   ; 
- D 1 - I - 0x0126B0 04:A6A0: 33        .byte $33   ; 
- D 1 - I - 0x0126B1 04:A6A1: 80        .byte $80   ; 
- D 1 - I - 0x0126B2 04:A6A2: 00        .byte $00   ; 
- D 1 - I - 0x0126B3 04:A6A3: F3        .byte $F3   ; 
- D 1 - I - 0x0126B4 04:A6A4: E4        .byte $E4   ; 
- D 1 - I - 0x0126B5 04:A6A5: A1        .byte $A1   ; 
- D 1 - I - 0x0126B6 04:A6A6: B1        .byte $B1   ; 
- D 1 - I - 0x0126B7 04:A6A7: E3        .byte $E3   ; 
- D 1 - I - 0x0126B8 04:A6A8: 01        .byte $01   ; 
- D 1 - I - 0x0126B9 04:A6A9: 11        .byte $11   ; 
- D 1 - I - 0x0126BA 04:A6AA: F2        .byte $F2   ; 
- D 1 - I - 0x0126BB 04:A6AB: 21        .byte $21   ; 
- D 1 - I - 0x0126BC 04:A6AC: 31        .byte $31   ; 
- D 1 - I - 0x0126BD 04:A6AD: 41        .byte $41   ; 
- D 1 - I - 0x0126BE 04:A6AE: F1        .byte $F1   ; 
- D 1 - I - 0x0126BF 04:A6AF: 51        .byte $51   ; 
- D 1 - I - 0x0126C0 04:A6B0: 61        .byte $61   ; 
- D 1 - I - 0x0126C1 04:A6B1: 71        .byte $71   ; 
- D 1 - I - 0x0126C2 04:A6B2: F0        .byte $F0   ; 
- D 1 - I - 0x0126C3 04:A6B3: 80        .byte $80   ; 
- D 1 - I - 0x0126C4 04:A6B4: 90        .byte $90   ; 
- D 1 - I - 0x0126C5 04:A6B5: A0        .byte $A0   ; 
- D 1 - I - 0x0126C6 04:A6B6: B0        .byte $B0   ; 
- D 1 - I - 0x0126C7 04:A6B7: E2        .byte $E2   ; 
- D 1 - I - 0x0126C8 04:A6B8: 00        .byte $00   ; 
- D 1 - I - 0x0126C9 04:A6B9: 10        .byte $10   ; 
- D 1 - I - 0x0126CA 04:A6BA: 20        .byte $20   ; 
- D 1 - I - 0x0126CB 04:A6BB: 30        .byte $30   ; 
- D 1 - I - 0x0126CC 04:A6BC: 40        .byte $40   ; 
- D 1 - I - 0x0126CD 04:A6BD: 50        .byte $50   ; 
- D 1 - I - 0x0126CE 04:A6BE: 60        .byte $60   ; 
- D 1 - I - 0x0126CF 04:A6BF: 70        .byte $70   ; 
- D 1 - I - 0x0126D0 04:A6C0: 80        .byte $80   ; 
- D 1 - I - 0x0126D1 04:A6C1: 90        .byte $90   ; 
- D 1 - I - 0x0126D2 04:A6C2: A0        .byte $A0   ; 
- D 1 - I - 0x0126D3 04:A6C3: B0        .byte $B0   ; 
- D 1 - I - 0x0126D4 04:A6C4: E1        .byte $E1   ; 
- D 1 - I - 0x0126D5 04:A6C5: 00        .byte $00   ; 
- D 1 - I - 0x0126D6 04:A6C6: 10        .byte $10   ; 
- D 1 - I - 0x0126D7 04:A6C7: 20        .byte $20   ; 
- D 1 - I - 0x0126D8 04:A6C8: E3        .byte $E3   ; 
- D 1 - I - 0x0126D9 04:A6C9: A0        .byte $A0   ; 
- D 1 - I - 0x0126DA 04:A6CA: B0        .byte $B0   ; 
- D 1 - I - 0x0126DB 04:A6CB: E2        .byte $E2   ; 
- D 1 - I - 0x0126DC 04:A6CC: 00        .byte $00   ; 
- D 1 - I - 0x0126DD 04:A6CD: 10        .byte $10   ; 
- D 1 - I - 0x0126DE 04:A6CE: 20        .byte $20   ; 
- D 1 - I - 0x0126DF 04:A6CF: 30        .byte $30   ; 
- D 1 - I - 0x0126E0 04:A6D0: 40        .byte $40   ; 
- D 1 - I - 0x0126E1 04:A6D1: 50        .byte $50   ; 
- D 1 - I - 0x0126E2 04:A6D2: 60        .byte $60   ; 
- D 1 - I - 0x0126E3 04:A6D3: 70        .byte $70   ; 
- D 1 - I - 0x0126E4 04:A6D4: 80        .byte $80   ; 
- D 1 - I - 0x0126E5 04:A6D5: 90        .byte $90   ; 
- D 1 - I - 0x0126E6 04:A6D6: A0        .byte $A0   ; 
- D 1 - I - 0x0126E7 04:A6D7: B0        .byte $B0   ; 
- D 1 - I - 0x0126E8 04:A6D8: E1        .byte $E1   ; 
- D 1 - I - 0x0126E9 04:A6D9: 00        .byte $00   ; 
- D 1 - I - 0x0126EA 04:A6DA: 10        .byte $10   ; 
- D 1 - I - 0x0126EB 04:A6DB: 20        .byte $20   ; 
- D 1 - I - 0x0126EC 04:A6DC: F1        .byte $F1   ; 
- D 1 - I - 0x0126ED 04:A6DD: E3        .byte $E3   ; 
- D 1 - I - 0x0126EE 04:A6DE: A0        .byte $A0   ; 
- D 1 - I - 0x0126EF 04:A6DF: B0        .byte $B0   ; 
- D 1 - I - 0x0126F0 04:A6E0: E2        .byte $E2   ; 
- D 1 - I - 0x0126F1 04:A6E1: 00        .byte $00   ; 
- D 1 - I - 0x0126F2 04:A6E2: 10        .byte $10   ; 
- D 1 - I - 0x0126F3 04:A6E3: 20        .byte $20   ; 
- D 1 - I - 0x0126F4 04:A6E4: 30        .byte $30   ; 
- D 1 - I - 0x0126F5 04:A6E5: 40        .byte $40   ; 
- D 1 - I - 0x0126F6 04:A6E6: 50        .byte $50   ; 
- D 1 - I - 0x0126F7 04:A6E7: 60        .byte $60   ; 
- D 1 - I - 0x0126F8 04:A6E8: 70        .byte $70   ; 
- D 1 - I - 0x0126F9 04:A6E9: 80        .byte $80   ; 
- D 1 - I - 0x0126FA 04:A6EA: 90        .byte $90   ; 
- D 1 - I - 0x0126FB 04:A6EB: A0        .byte $A0   ; 
- D 1 - I - 0x0126FC 04:A6EC: B0        .byte $B0   ; 
- D 1 - I - 0x0126FD 04:A6ED: E1        .byte $E1   ; 
- D 1 - I - 0x0126FE 04:A6EE: 00        .byte $00   ; 
- D 1 - I - 0x0126FF 04:A6EF: 10        .byte $10   ; 
- D 1 - I - 0x012700 04:A6F0: 20        .byte $20   ; 
- D 1 - I - 0x012701 04:A6F1: F2        .byte $F2   ; 
- D 1 - I - 0x012702 04:A6F2: E3        .byte $E3   ; 
- D 1 - I - 0x012703 04:A6F3: A0        .byte $A0   ; 
- D 1 - I - 0x012704 04:A6F4: B0        .byte $B0   ; 
- D 1 - I - 0x012705 04:A6F5: E2        .byte $E2   ; 
- D 1 - I - 0x012706 04:A6F6: 00        .byte $00   ; 
- D 1 - I - 0x012707 04:A6F7: 10        .byte $10   ; 
- D 1 - I - 0x012708 04:A6F8: 20        .byte $20   ; 
- D 1 - I - 0x012709 04:A6F9: 30        .byte $30   ; 
- D 1 - I - 0x01270A 04:A6FA: 40        .byte $40   ; 
- D 1 - I - 0x01270B 04:A6FB: 50        .byte $50   ; 
- D 1 - I - 0x01270C 04:A6FC: 60        .byte $60   ; 
- D 1 - I - 0x01270D 04:A6FD: 70        .byte $70   ; 
- D 1 - I - 0x01270E 04:A6FE: 80        .byte $80   ; 
- D 1 - I - 0x01270F 04:A6FF: 90        .byte $90   ; 
- D 1 - I - 0x012710 04:A700: A0        .byte $A0   ; 
- D 1 - I - 0x012711 04:A701: B0        .byte $B0   ; 
- D 1 - I - 0x012712 04:A702: E1        .byte $E1   ; 
- D 1 - I - 0x012713 04:A703: 00        .byte $00   ; 
- D 1 - I - 0x012714 04:A704: 10        .byte $10   ; 
- D 1 - I - 0x012715 04:A705: 20        .byte $20   ; 
- D 1 - I - 0x012716 04:A706: F3        .byte $F3   ; 
- D 1 - I - 0x012717 04:A707: E3        .byte $E3   ; 
- D 1 - I - 0x012718 04:A708: A0        .byte $A0   ; 
- D 1 - I - 0x012719 04:A709: B0        .byte $B0   ; 
- D 1 - I - 0x01271A 04:A70A: E2        .byte $E2   ; 
- D 1 - I - 0x01271B 04:A70B: 00        .byte $00   ; 
- D 1 - I - 0x01271C 04:A70C: 10        .byte $10   ; 
- D 1 - I - 0x01271D 04:A70D: 20        .byte $20   ; 
- D 1 - I - 0x01271E 04:A70E: 30        .byte $30   ; 
- D 1 - I - 0x01271F 04:A70F: 40        .byte $40   ; 
- D 1 - I - 0x012720 04:A710: 50        .byte $50   ; 
- D 1 - I - 0x012721 04:A711: 60        .byte $60   ; 
- D 1 - I - 0x012722 04:A712: 70        .byte $70   ; 
- D 1 - I - 0x012723 04:A713: 80        .byte $80   ; 
- D 1 - I - 0x012724 04:A714: 90        .byte $90   ; 
- D 1 - I - 0x012725 04:A715: A0        .byte $A0   ; 
- D 1 - I - 0x012726 04:A716: B0        .byte $B0   ; 
- D 1 - I - 0x012727 04:A717: E1        .byte $E1   ; 
- D 1 - I - 0x012728 04:A718: 00        .byte $00   ; 
- D 1 - I - 0x012729 04:A719: 10        .byte $10   ; 
- D 1 - I - 0x01272A 04:A71A: 20        .byte $20   ; 
- D 1 - I - 0x01272B 04:A71B: F4        .byte $F4   ; 
- D 1 - I - 0x01272C 04:A71C: E3        .byte $E3   ; 
- D 1 - I - 0x01272D 04:A71D: A0        .byte $A0   ; 
- D 1 - I - 0x01272E 04:A71E: B0        .byte $B0   ; 
- D 1 - I - 0x01272F 04:A71F: E2        .byte $E2   ; 
- D 1 - I - 0x012730 04:A720: 00        .byte $00   ; 
- D 1 - I - 0x012731 04:A721: 10        .byte $10   ; 
- D 1 - I - 0x012732 04:A722: 20        .byte $20   ; 
- D 1 - I - 0x012733 04:A723: 30        .byte $30   ; 
- D 1 - I - 0x012734 04:A724: 40        .byte $40   ; 
- D 1 - I - 0x012735 04:A725: 50        .byte $50   ; 
- D 1 - I - 0x012736 04:A726: 60        .byte $60   ; 
- D 1 - I - 0x012737 04:A727: 70        .byte $70   ; 
- D 1 - I - 0x012738 04:A728: 80        .byte $80   ; 
- D 1 - I - 0x012739 04:A729: 90        .byte $90   ; 
- D 1 - I - 0x01273A 04:A72A: A0        .byte $A0   ; 
- D 1 - I - 0x01273B 04:A72B: B0        .byte $B0   ; 
- D 1 - I - 0x01273C 04:A72C: E1        .byte $E1   ; 
- D 1 - I - 0x01273D 04:A72D: 00        .byte $00   ; 
- D 1 - I - 0x01273E 04:A72E: 10        .byte $10   ; 
- D 1 - I - 0x01273F 04:A72F: 20        .byte $20   ; 
- D 1 - I - 0x012740 04:A730: E6        .byte $E6   ; 
- D 1 - I - 0x012741 04:A731: 06        .byte $06   ; 
- D 1 - I - 0x012742 04:A732: C5        .byte $C5   ; 
- D 1 - I - 0x012743 04:A733: FE        .byte $FE   ; 
- D 1 - I - 0x012744 04:A734: FF        .byte $FF   ; 
- D 1 - I - 0x012745 04:A735: 6F A6     .word off_FE_A66F



off_ch_01_0x012747_62:
off_FE_A737:
- D 1 - I - 0x012747 04:A737: DA        .byte con_se_cb_1_D0 + $0A, $70, con_9E25_08   ; 
- D 1 - I - 0x01274A 04:A73A: 23        .byte $23   ; 
- D 1 - I - 0x01274B 04:A73B: EB        .byte con_se_cb_1_EB, con_9E7B_50, $22   ; 
- D 1 - I - 0x01274E 04:A73E: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x01274F 04:A73F: 11        .byte $11   ; 
- D 1 - I - 0x012750 04:A740: 81        .byte $81   ; 
- D 1 - I - 0x012751 04:A741: 71        .byte $71   ; 
- D 1 - I - 0x012752 04:A742: 33        .byte $33   ; 
- D 1 - I - 0x012753 04:A743: 63        .byte $63   ; 
- D 1 - I - 0x012754 04:A744: 13        .byte $13   ; 
- D 1 - I - 0x012755 04:A745: E8        .byte con_se_cb_1_E8, $10 + $02   ; 
- D 1 - I - 0x012757 04:A747: 05        .byte $05   ; 
- D 1 - I - 0x012758 04:A748: E8        .byte con_se_cb_1_E8, $20 + $03   ; 
- D 1 - I - 0x01275A 04:A74A: 11        .byte $11   ; 
- D 1 - I - 0x01275B 04:A74B: 31        .byte $31   ; 
- D 1 - I - 0x01275C 04:A74C: 41        .byte $41   ; 
- D 1 - I - 0x01275D 04:A74D: 61        .byte $61   ; 
- D 1 - I - 0x01275E 04:A74E: 11        .byte $11   ; 
- D 1 - I - 0x01275F 04:A74F: 81        .byte $81   ; 
- D 1 - I - 0x012760 04:A750: 71        .byte $71   ; 
- D 1 - I - 0x012761 04:A751: 33        .byte $33   ; 
- D 1 - I - 0x012762 04:A752: 63        .byte $63   ; 
- D 1 - I - 0x012763 04:A753: 13        .byte $13   ; 
- D 1 - I - 0x012764 04:A754: E8        .byte con_se_cb_1_E8, $10 + $02   ; 
- D 1 - I - 0x012766 04:A756: 05        .byte $05   ; 
- D 1 - I - 0x012767 04:A757: E8        .byte con_se_cb_1_E8, $20 + $03   ; 
- D 1 - I - 0x012769 04:A759: 11        .byte $11   ; 
- D 1 - I - 0x01276A 04:A75A: 81        .byte $81   ; 
- D 1 - I - 0x01276B 04:A75B: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x01276C 04:A75C: 11        .byte $11   ; 
- D 1 - I - 0x01276D 04:A75D: 01        .byte $01   ; 
- D 1 - I - 0x01276E 04:A75E: DA        .byte con_se_cb_1_D0 + $0A, $70, con_9E25_08   ; 
- D 1 - I - 0x012771 04:A761: 23        .byte $23   ; 
- D 1 - I - 0x012772 04:A762: EB        .byte con_se_cb_1_EB, con_9E7B_50, $32   ; 
- D 1 - I - 0x012775 04:A765: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x012776 04:A766: 11        .byte $11   ; 
- D 1 - I - 0x012777 04:A767: B1        .byte $B1   ; 
- D 1 - I - 0x012778 04:A768: 81        .byte $81   ; 
- D 1 - I - 0x012779 04:A769: E8        .byte con_se_cb_1_E8, $50 + $04   ; 
- D 1 - I - 0x01277B 04:A76B: 7F        .byte $7F   ; 
- D 1 - I - 0x01277C 04:A76C: C9        .byte con_se_cb_1_C0 + $09   ; 
- D 1 - I - 0x01277D 04:A76D: 11        .byte $11   ; 
- D 1 - I - 0x01277E 04:A76E: B1        .byte $B1   ; 
- D 1 - I - 0x01277F 04:A76F: 81        .byte $81   ; 
- D 1 - I - 0x012780 04:A770: 71        .byte $71   ; 
- D 1 - I - 0x012781 04:A771: 41        .byte $41   ; 
- D 1 - I - 0x012782 04:A772: 7F        .byte $7F   ; 
- D 1 - I - 0x012783 04:A773: C5        .byte $C5   ; 
- D 1 - I - 0x012784 04:A774: FE        .byte $FE   ; 
- D 1 - I - 0x012785 04:A775: FF        .byte $FF   ; 
- D 1 - I - 0x012786 04:A776: 37 A7     .word off_FE_A737



off_ch_02_0x012788_62:
off_FE_A778:
- D 1 - I - 0x012788 04:A778: DA        .byte con_se_cb_1_D0 + $0A, $00   ; 
- D 1 - I - 0x01278A 04:A77A: FB        .byte con_se_cb_1_FB   ; 
- D 1 - I - 0x01278B 04:A77B: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x01278C 04:A77C: 15        .byte $15   ; 
- D 1 - I - 0x01278D 04:A77D: 05        .byte $05   ; 
- D 1 - I - 0x01278E 04:A77E: 65        .byte $65   ; 
- D 1 - I - 0x01278F 04:A77F: E5        .byte con_se_cb_1_E0 + $05   ; 
- D 1 - I - 0x012790 04:A780: A5        .byte $A5   ; 
- D 1 - I - 0x012791 04:A781: B3        .byte $B3   ; 
- D 1 - I - 0x012792 04:A782: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x012793 04:A783: 03        .byte $03   ; 
- D 1 - I - 0x012794 04:A784: FE        .byte con_se_cb_1_FE, $02   ; 
- D 1 - I - 0x012796 04:A786: DA        .byte con_se_cb_1_D0 + $0A, $00   ; 
- D 1 - I - 0x012798 04:A788: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x012799 04:A789: 11        .byte $11   ; 
- D 1 - I - 0x01279A 04:A78A: 61        .byte $61   ; 
- D 1 - I - 0x01279B 04:A78B: 11        .byte $11   ; 
- D 1 - I - 0x01279C 04:A78C: 0D        .byte $0D   ; 
- D 1 - I - 0x01279D 04:A78D: CB        .byte con_se_cb_1_C0 + $0B   ; 
- D 1 - I - 0x01279E 04:A78E: 11        .byte $11   ; 
- D 1 - I - 0x01279F 04:A78F: 61        .byte $61   ; 
- D 1 - I - 0x0127A0 04:A790: 11        .byte $11   ; 
- D 1 - I - 0x0127A1 04:A791: 01        .byte $01   ; 
- D 1 - I - 0x0127A2 04:A792: E5        .byte con_se_cb_1_E0 + $05   ; 
- D 1 - I - 0x0127A3 04:A793: 91        .byte $91   ; 
- D 1 - I - 0x0127A4 04:A794: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x0127A5 04:A795: 05        .byte $05   ; 
- D 1 - I - 0x0127A6 04:A796: CF        .byte $CF   ; 
- D 1 - I - 0x0127A7 04:A797: FE        .byte $FE   ; 
- D 1 - I - 0x0127A8 04:A798: FF        .byte $FF   ; 
- D 1 - I - 0x0127A9 04:A799: 78 A7     .word off_FE_A778



off_ch_05_0x0127AB_62:
off_FE_A79B:
- D 1 - I - 0x0127AB 04:A79B: DA        .byte $DA   ; 
- D 1 - I - 0x0127AC 04:A79C: B1        .byte $B1   ; 
- D 1 - I - 0x0127AD 04:A79D: 11        .byte $11   ; 
- D 1 - I - 0x0127AE 04:A79E: 21        .byte $21   ; 
- D 1 - I - 0x0127AF 04:A79F: B3        .byte $B3   ; 
- D 1 - I - 0x0127B0 04:A7A0: 11        .byte $11   ; 
- D 1 - I - 0x0127B1 04:A7A1: 21        .byte $21   ; 
- D 1 - I - 0x0127B2 04:A7A2: 41        .byte $41   ; 
- D 1 - I - 0x0127B3 04:A7A3: FB        .byte con_se_cb_1_FB   ; 
- D 1 - I - 0x0127B4 04:A7A4: B1        .byte $B1   ; 
- D 1 - I - 0x0127B5 04:A7A5: 11        .byte $11   ; 
- D 1 - I - 0x0127B6 04:A7A6: 21        .byte $21   ; 
- D 1 - I - 0x0127B7 04:A7A7: B3        .byte $B3   ; 
- D 1 - I - 0x0127B8 04:A7A8: 11        .byte $11   ; 
- D 1 - I - 0x0127B9 04:A7A9: 21        .byte $21   ; 
- D 1 - I - 0x0127BA 04:A7AA: 41        .byte $41   ; 
- D 1 - I - 0x0127BB 04:A7AB: FE        .byte con_se_cb_1_FE, $03   ; 
- D 1 - I - 0x0127BD 04:A7AD: DA        .byte $DA   ; 
- D 1 - I - 0x0127BE 04:A7AE: B1        .byte $B1   ; 
- D 1 - I - 0x0127BF 04:A7AF: 11        .byte $11   ; 
- D 1 - I - 0x0127C0 04:A7B0: 21        .byte $21   ; 
- D 1 - I - 0x0127C1 04:A7B1: 43        .byte $43   ; 
- D 1 - I - 0x0127C2 04:A7B2: 11        .byte $11   ; 
- D 1 - I - 0x0127C3 04:A7B3: 21        .byte $21   ; 
- D 1 - I - 0x0127C4 04:A7B4: 41        .byte $41   ; 
- D 1 - I - 0x0127C5 04:A7B5: D1        .byte $D1   ; 
- D 1 - I - 0x0127C6 04:A7B6: B5        .byte $B5   ; 
- D 1 - I - 0x0127C7 04:A7B7: 6F        .byte $6F   ; 
- D 1 - I - 0x0127C8 04:A7B8: C5        .byte $C5   ; 
- D 1 - I - 0x0127C9 04:A7B9: 6F        .byte $6F   ; 
- D 1 - I - 0x0127CA 04:A7BA: C3        .byte $C3   ; 
- D 1 - I - 0x0127CB 04:A7BB: 6F        .byte $6F   ; 
- D 1 - I - 0x0127CC 04:A7BC: C1        .byte $C1   ; 
- D 1 - I - 0x0127CD 04:A7BD: 6F        .byte $6F   ; 
- D 1 - I - 0x0127CE 04:A7BE: 6F        .byte $6F   ; 
- D 1 - I - 0x0127CF 04:A7BF: 61        .byte $61   ; 
- D 1 - I - 0x0127D0 04:A7C0: DA        .byte $DA   ; 
- D 1 - I - 0x0127D1 04:A7C1: 11        .byte $11   ; 
- D 1 - I - 0x0127D2 04:A7C2: 21        .byte $21   ; 
- D 1 - I - 0x0127D3 04:A7C3: 41        .byte $41   ; 
- D 1 - I - 0x0127D4 04:A7C4: 41        .byte $41   ; 
- D 1 - I - 0x0127D5 04:A7C5: B1        .byte $B1   ; 
- D 1 - I - 0x0127D6 04:A7C6: 11        .byte $11   ; 
- D 1 - I - 0x0127D7 04:A7C7: 21        .byte $21   ; 
- D 1 - I - 0x0127D8 04:A7C8: 11        .byte $11   ; 
- D 1 - I - 0x0127D9 04:A7C9: 11        .byte $11   ; 
- D 1 - I - 0x0127DA 04:A7CA: 21        .byte $21   ; 
- D 1 - I - 0x0127DB 04:A7CB: 41        .byte $41   ; 
- D 1 - I - 0x0127DC 04:A7CC: B1        .byte $B1   ; 
- D 1 - I - 0x0127DD 04:A7CD: 11        .byte $11   ; 
- D 1 - I - 0x0127DE 04:A7CE: 21        .byte $21   ; 
- D 1 - I - 0x0127DF 04:A7CF: 41        .byte $41   ; 
- D 1 - I - 0x0127E0 04:A7D0: 11        .byte $11   ; 
- D 1 - I - 0x0127E1 04:A7D1: 11        .byte $11   ; 
- D 1 - I - 0x0127E2 04:A7D2: 21        .byte $21   ; 
- D 1 - I - 0x0127E3 04:A7D3: 41        .byte $41   ; 
- D 1 - I - 0x0127E4 04:A7D4: FE        .byte con_se_cb_1_FE, $FF   ; 
- D 1 - I - 0x0127E6 04:A7D6: 9B A7     .word off_FE_A79B



off_ch_00_0x0127E8_66:
- D 1 - I - 0x0127E8 04:A7D8: DB        .byte con_se_cb_1_D0 + $0B, $F2, con_9E25_00 + $80   ; 
- D 1 - I - 0x0127EB 04:A7DB: 00        .byte $00   ; 
- D 1 - I - 0x0127EC 04:A7DC: ED        .byte con_se_cb_1_ED, $01   ; 
- D 1 - I - 0x0127EE 04:A7DE: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x0127EF 04:A7DF: 94        .byte $94   ; 
- D 1 - I - 0x0127F0 04:A7E0: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x0127F1 04:A7E1: 45        .byte $45   ; 
- D 1 - I - 0x0127F2 04:A7E2: 71        .byte $71   ; 
- D 1 - I - 0x0127F3 04:A7E3: 61        .byte $61   ; 
- D 1 - I - 0x0127F4 04:A7E4: 21        .byte $21   ; 
- D 1 - I - 0x0127F5 04:A7E5: 4B        .byte $4B   ; 
- D 1 - I - 0x0127F6 04:A7E6: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x0127F7 04:A7E7: 93        .byte $93   ; 
- D 1 - I - 0x0127F8 04:A7E8: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x0127F9 04:A7E9: 45        .byte $45   ; 
- D 1 - I - 0x0127FA 04:A7EA: 71        .byte $71   ; 
- D 1 - I - 0x0127FB 04:A7EB: 61        .byte $61   ; 
- D 1 - I - 0x0127FC 04:A7EC: 21        .byte $21   ; 
- D 1 - I - 0x0127FD 04:A7ED: 44        .byte $44   ; 
- D 1 - I - 0x0127FE 04:A7EE: D1        .byte con_se_cb_1_D0 + $01, $F4, con_9E25_02 + $80   ; 
- D 1 - I - 0x012801 04:A7F1: 00        .byte $00   ; 
- D 1 - I - 0x012802 04:A7F2: 64        .byte $64   ; 
- D 1 - I - 0x012803 04:A7F3: 75        .byte $75   ; 
- D 1 - I - 0x012804 04:A7F4: 94        .byte $94   ; 
- D 1 - I - 0x012805 04:A7F5: B5        .byte $B5   ; 
- D 1 - I - 0x012806 04:A7F6: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x012807 04:A7F7: DB        .byte con_se_cb_1_D0 + $0B, $79, con_9E25_05 + $80   ; 
- D 1 - I - 0x01280A 04:A7FA: 53        .byte $53   ; 
- D 1 - I - 0x01280B 04:A7FB: EC        .byte con_se_cb_1_EC, $02   ; 
- D 1 - I - 0x01280D 04:A7FD: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x01280E 04:A7FE: 01        .byte $01   ; 
- D 1 - I - 0x01280F 04:A7FF: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x012810 04:A800: 41        .byte $41   ; 
- D 1 - I - 0x012811 04:A801: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x012812 04:A802: 91        .byte $91   ; 
- D 1 - I - 0x012813 04:A803: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x012814 04:A804: 41        .byte $41   ; 
- D 1 - I - 0x012815 04:A805: E8        .byte con_se_cb_1_E8, $10 + $02   ; 
- D 1 - I - 0x012817 04:A807: B0        .byte $B0   ; 
- D 1 - I - 0x012818 04:A808: 90        .byte $90   ; 
- D 1 - I - 0x012819 04:A809: 70        .byte $70   ; 
- D 1 - I - 0x01281A 04:A80A: 50        .byte $50   ; 
- D 1 - I - 0x01281B 04:A80B: E8        .byte con_se_cb_1_E8, $50 + $03   ; 
- D 1 - I - 0x01281D 04:A80D: 81        .byte $81   ; 
- D 1 - I - 0x01281E 04:A80E: 11        .byte $11   ; 
- D 1 - I - 0x01281F 04:A80F: 51        .byte $51   ; 
- D 1 - I - 0x012820 04:A810: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x012821 04:A811: 11        .byte $11   ; 
- D 1 - I - 0x012822 04:A812: E8        .byte con_se_cb_1_E8, $10 + $02   ; 
- D 1 - I - 0x012824 04:A814: 70        .byte $70   ; 
- D 1 - I - 0x012825 04:A815: 50        .byte $50   ; 
- D 1 - I - 0x012826 04:A816: 30        .byte $30   ; 
- D 1 - I - 0x012827 04:A817: 10        .byte $10   ; 
- D 1 - I - 0x012828 04:A818: E8        .byte con_se_cb_1_E8, $50 + $03   ; 
- D 1 - I - 0x01282A 04:A81A: 01        .byte $01   ; 
- D 1 - I - 0x01282B 04:A81B: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x01282C 04:A81C: 71        .byte $71   ; 
- D 1 - I - 0x01282D 04:A81D: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x01282E 04:A81E: 01        .byte $01   ; 
- D 1 - I - 0x01282F 04:A81F: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x012830 04:A820: 71        .byte $71   ; 
- D 1 - I - 0x012831 04:A821: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x012832 04:A822: 01        .byte $01   ; 
- D 1 - I - 0x012833 04:A823: E8        .byte con_se_cb_1_E8, $10 + $02   ; 
- D 1 - I - 0x012835 04:A825: 20        .byte $20   ; 
- D 1 - I - 0x012836 04:A826: 00        .byte $00   ; 
- D 1 - I - 0x012837 04:A827: EB        .byte con_se_cb_1_EB, con_9E7B_50, $33   ; 
- D 1 - I - 0x01283A 04:A82A: EC        .byte con_se_cb_1_EC, $00   ; 
- D 1 - I - 0x01283C 04:A82C: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x01283D 04:A82D: 73        .byte $73   ; 
- D 1 - I - 0x01283E 04:A82E: EB        .byte con_se_cb_1_EB, $00   ; 
- D 1 - I - 0x012840 04:A830: 93        .byte $93   ; 
- D 1 - I - 0x012841 04:A831: EB        .byte con_se_cb_1_EB, con_9E7B_50, $33   ; 
- D 1 - I - 0x012844 04:A834: B8        .byte $B8   ; 
- D 1 - I - 0x012845 04:A835: DB        .byte con_se_cb_1_D0 + $0B, $32, con_9E25_01 + $80   ; 
- D 1 - I - 0x012848 04:A838: 12        .byte $12   ; 
- D 1 - I - 0x012849 04:A839: ED        .byte con_se_cb_1_ED, $01   ; 
- D 1 - I - 0x01284B 04:A83B: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x01284C 04:A83C: 00        .byte $00   ; 
- D 1 - I - 0x01284D 04:A83D: 20        .byte $20   ; 
- D 1 - I - 0x01284E 04:A83E: 30        .byte $30   ; 
- D 1 - I - 0x01284F 04:A83F: 70        .byte $70   ; 
- D 1 - I - 0x012850 04:A840: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x012851 04:A841: 00        .byte $00   ; 
- D 1 - I - 0x012852 04:A842: 20        .byte $20   ; 
- D 1 - I - 0x012853 04:A843: 30        .byte $30   ; 
- D 1 - I - 0x012854 04:A844: 70        .byte $70   ; 
- D 1 - I - 0x012855 04:A845: E1        .byte con_se_cb_1_E0 + $01   ; 
- D 1 - I - 0x012856 04:A846: 00        .byte $00   ; 
- D 1 - I - 0x012857 04:A847: 20        .byte $20   ; 
- D 1 - I - 0x012858 04:A848: 30        .byte $30   ; 
- D 1 - I - 0x012859 04:A849: 70        .byte $70   ; 
- D 1 - I - 0x01285A 04:A84A: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x01285B 04:A84B: 00        .byte $00   ; 
- D 1 - I - 0x01285C 04:A84C: 20        .byte $20   ; 
- D 1 - I - 0x01285D 04:A84D: 60        .byte $60   ; 
- D 1 - I - 0x01285E 04:A84E: 90        .byte $90   ; 
- D 1 - I - 0x01285F 04:A84F: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x012860 04:A850: 00        .byte $00   ; 
- D 1 - I - 0x012861 04:A851: 20        .byte $20   ; 
- D 1 - I - 0x012862 04:A852: 60        .byte $60   ; 
- D 1 - I - 0x012863 04:A853: 90        .byte $90   ; 
- D 1 - I - 0x012864 04:A854: E1        .byte con_se_cb_1_E0 + $01   ; 
- D 1 - I - 0x012865 04:A855: 00        .byte $00   ; 
- D 1 - I - 0x012866 04:A856: 20        .byte $20   ; 
- D 1 - I - 0x012867 04:A857: 60        .byte $60   ; 
- D 1 - I - 0x012868 04:A858: 90        .byte $90   ; 
- D 1 - I - 0x012869 04:A859: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x01286A 04:A85A: 00        .byte $00   ; 
- D 1 - I - 0x01286B 04:A85B: 20        .byte $20   ; 
- D 1 - I - 0x01286C 04:A85C: 50        .byte $50   ; 
- D 1 - I - 0x01286D 04:A85D: 80        .byte $80   ; 
- D 1 - I - 0x01286E 04:A85E: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x01286F 04:A85F: 00        .byte $00   ; 
- D 1 - I - 0x012870 04:A860: 20        .byte $20   ; 
- D 1 - I - 0x012871 04:A861: 50        .byte $50   ; 
- D 1 - I - 0x012872 04:A862: 80        .byte $80   ; 
- D 1 - I - 0x012873 04:A863: E1        .byte con_se_cb_1_E0 + $01   ; 
- D 1 - I - 0x012874 04:A864: 00        .byte $00   ; 
- D 1 - I - 0x012875 04:A865: 20        .byte $20   ; 
- D 1 - I - 0x012876 04:A866: 50        .byte $50   ; 
- D 1 - I - 0x012877 04:A867: 80        .byte $80   ; 
- D 1 - I - 0x012878 04:A868: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x012879 04:A869: B0        .byte $B0   ; 
- D 1 - I - 0x01287A 04:A86A: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x01287B 04:A86B: 20        .byte $20   ; 
- D 1 - I - 0x01287C 04:A86C: 50        .byte $50   ; 
- D 1 - I - 0x01287D 04:A86D: 80        .byte $80   ; 
- D 1 - I - 0x01287E 04:A86E: B0        .byte $B0   ; 
- D 1 - I - 0x01287F 04:A86F: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x012880 04:A870: 20        .byte $20   ; 
- D 1 - I - 0x012881 04:A871: 50        .byte $50   ; 
- D 1 - I - 0x012882 04:A872: 80        .byte $80   ; 
- D 1 - I - 0x012883 04:A873: B0        .byte $B0   ; 
- D 1 - I - 0x012884 04:A874: E1        .byte con_se_cb_1_E0 + $01   ; 
- D 1 - I - 0x012885 04:A875: 20        .byte $20   ; 
- D 1 - I - 0x012886 04:A876: 50        .byte $50   ; 
- D 1 - I - 0x012887 04:A877: ED        .byte con_se_cb_1_ED, $00   ; 
- D 1 - I - 0x012889 04:A879: DB        .byte con_se_cb_1_D0 + $0B, $37, con_9E25_04 + $80   ; 
- D 1 - I - 0x01288C 04:A87C: 18        .byte $18   ; 
- D 1 - I - 0x01288D 04:A87D: EC        .byte con_se_cb_1_EC, $01   ; 
- D 1 - I - 0x01288F 04:A87F: E9        .byte con_se_cb_1_E9, $38   ; 
- D 1 - I - 0x012891 04:A881: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x012892 04:A882: 00        .byte $00   ; 
- D 1 - I - 0x012893 04:A883: 20        .byte $20   ; 
- D 1 - I - 0x012894 04:A884: 30        .byte $30   ; 
- D 1 - I - 0x012895 04:A885: 70        .byte $70   ; 
- D 1 - I - 0x012896 04:A886: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x012897 04:A887: 00        .byte $00   ; 
- D 1 - I - 0x012898 04:A888: 20        .byte $20   ; 
- D 1 - I - 0x012899 04:A889: 30        .byte $30   ; 
- D 1 - I - 0x01289A 04:A88A: 70        .byte $70   ; 
- D 1 - I - 0x01289B 04:A88B: E1        .byte con_se_cb_1_E0 + $01   ; 
- D 1 - I - 0x01289C 04:A88C: 00        .byte $00   ; 
- D 1 - I - 0x01289D 04:A88D: 20        .byte $20   ; 
- D 1 - I - 0x01289E 04:A88E: 30        .byte $30   ; 
- D 1 - I - 0x01289F 04:A88F: 70        .byte $70   ; 
- D 1 - I - 0x0128A0 04:A890: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x0128A1 04:A891: 00        .byte $00   ; 
- D 1 - I - 0x0128A2 04:A892: 20        .byte $20   ; 
- D 1 - I - 0x0128A3 04:A893: 60        .byte $60   ; 
- D 1 - I - 0x0128A4 04:A894: 90        .byte $90   ; 
- D 1 - I - 0x0128A5 04:A895: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x0128A6 04:A896: 00        .byte $00   ; 
- D 1 - I - 0x0128A7 04:A897: 20        .byte $20   ; 
- D 1 - I - 0x0128A8 04:A898: 60        .byte $60   ; 
- D 1 - I - 0x0128A9 04:A899: 90        .byte $90   ; 
- D 1 - I - 0x0128AA 04:A89A: E1        .byte con_se_cb_1_E0 + $01   ; 
- D 1 - I - 0x0128AB 04:A89B: 00        .byte $00   ; 
- D 1 - I - 0x0128AC 04:A89C: 20        .byte $20   ; 
- D 1 - I - 0x0128AD 04:A89D: 60        .byte $60   ; 
- D 1 - I - 0x0128AE 04:A89E: 90        .byte $90   ; 
- D 1 - I - 0x0128AF 04:A89F: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x0128B0 04:A8A0: B0        .byte $B0   ; 
- D 1 - I - 0x0128B1 04:A8A1: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x0128B2 04:A8A2: 20        .byte $20   ; 
- D 1 - I - 0x0128B3 04:A8A3: 50        .byte $50   ; 
- D 1 - I - 0x0128B4 04:A8A4: 80        .byte $80   ; 
- D 1 - I - 0x0128B5 04:A8A5: B0        .byte $B0   ; 
- D 1 - I - 0x0128B6 04:A8A6: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x0128B7 04:A8A7: 20        .byte $20   ; 
- D 1 - I - 0x0128B8 04:A8A8: 50        .byte $50   ; 
- D 1 - I - 0x0128B9 04:A8A9: 80        .byte $80   ; 
- D 1 - I - 0x0128BA 04:A8AA: B0        .byte $B0   ; 
- D 1 - I - 0x0128BB 04:A8AB: E1        .byte con_se_cb_1_E0 + $01   ; 
- D 1 - I - 0x0128BC 04:A8AC: 20        .byte $20   ; 
- D 1 - I - 0x0128BD 04:A8AD: 50        .byte $50   ; 
- D 1 - I - 0x0128BE 04:A8AE: 70        .byte $70   ; 
- D 1 - I - 0x0128BF 04:A8AF: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x0128C0 04:A8B0: A0        .byte $A0   ; 
- D 1 - I - 0x0128C1 04:A8B1: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x0128C2 04:A8B2: 10        .byte $10   ; 
- D 1 - I - 0x0128C3 04:A8B3: 40        .byte $40   ; 
- D 1 - I - 0x0128C4 04:A8B4: 70        .byte $70   ; 
- D 1 - I - 0x0128C5 04:A8B5: A0        .byte $A0   ; 
- D 1 - I - 0x0128C6 04:A8B6: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x0128C7 04:A8B7: 10        .byte $10   ; 
- D 1 - I - 0x0128C8 04:A8B8: 40        .byte $40   ; 
- D 1 - I - 0x0128C9 04:A8B9: 70        .byte $70   ; 
- D 1 - I - 0x0128CA 04:A8BA: A0        .byte $A0   ; 
- D 1 - I - 0x0128CB 04:A8BB: E1        .byte con_se_cb_1_E0 + $01   ; 
- D 1 - I - 0x0128CC 04:A8BC: 10        .byte $10   ; 
- D 1 - I - 0x0128CD 04:A8BD: 40        .byte $40   ; 
- D 1 - I - 0x0128CE 04:A8BE: 70        .byte $70   ; 
- D 1 - I - 0x0128CF 04:A8BF: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x0128D0 04:A8C0: 90        .byte $90   ; 
- D 1 - I - 0x0128D1 04:A8C1: A0        .byte $A0   ; 
- D 1 - I - 0x0128D2 04:A8C2: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x0128D3 04:A8C3: 00        .byte $00   ; 
- D 1 - I - 0x0128D4 04:A8C4: 50        .byte $50   ; 
- D 1 - I - 0x0128D5 04:A8C5: 90        .byte $90   ; 
- D 1 - I - 0x0128D6 04:A8C6: A0        .byte $A0   ; 
- D 1 - I - 0x0128D7 04:A8C7: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x0128D8 04:A8C8: 00        .byte $00   ; 
- D 1 - I - 0x0128D9 04:A8C9: 50        .byte $50   ; 
- D 1 - I - 0x0128DA 04:A8CA: 90        .byte $90   ; 
- D 1 - I - 0x0128DB 04:A8CB: A0        .byte $A0   ; 
- D 1 - I - 0x0128DC 04:A8CC: E1        .byte con_se_cb_1_E0 + $01   ; 
- D 1 - I - 0x0128DD 04:A8CD: 00        .byte $00   ; 
- D 1 - I - 0x0128DE 04:A8CE: 50        .byte $50   ; 
- D 1 - I - 0x0128DF 04:A8CF: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x0128E0 04:A8D0: 80        .byte $80   ; 
- D 1 - I - 0x0128E1 04:A8D1: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x0128E2 04:A8D2: 00        .byte $00   ; 
- D 1 - I - 0x0128E3 04:A8D3: 20        .byte $20   ; 
- D 1 - I - 0x0128E4 04:A8D4: 50        .byte $50   ; 
- D 1 - I - 0x0128E5 04:A8D5: 80        .byte $80   ; 
- D 1 - I - 0x0128E6 04:A8D6: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x0128E7 04:A8D7: 00        .byte $00   ; 
- D 1 - I - 0x0128E8 04:A8D8: 20        .byte $20   ; 
- D 1 - I - 0x0128E9 04:A8D9: 50        .byte $50   ; 
- D 1 - I - 0x0128EA 04:A8DA: 80        .byte $80   ; 
- D 1 - I - 0x0128EB 04:A8DB: E1        .byte con_se_cb_1_E0 + $01   ; 
- D 1 - I - 0x0128EC 04:A8DC: 00        .byte $00   ; 
- D 1 - I - 0x0128ED 04:A8DD: 20        .byte $20   ; 
- D 1 - I - 0x0128EE 04:A8DE: 50        .byte $50   ; 
- D 1 - I - 0x0128EF 04:A8DF: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x0128F0 04:A8E0: 70        .byte $70   ; 
- D 1 - I - 0x0128F1 04:A8E1: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x0128F2 04:A8E2: 00        .byte $00   ; 
- D 1 - I - 0x0128F3 04:A8E3: 20        .byte $20   ; 
- D 1 - I - 0x0128F4 04:A8E4: 50        .byte $50   ; 
- D 1 - I - 0x0128F5 04:A8E5: 70        .byte $70   ; 
- D 1 - I - 0x0128F6 04:A8E6: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x0128F7 04:A8E7: 00        .byte $00   ; 
- D 1 - I - 0x0128F8 04:A8E8: 20        .byte $20   ; 
- D 1 - I - 0x0128F9 04:A8E9: 50        .byte $50   ; 
- D 1 - I - 0x0128FA 04:A8EA: 70        .byte $70   ; 
- D 1 - I - 0x0128FB 04:A8EB: E1        .byte con_se_cb_1_E0 + $01   ; 
- D 1 - I - 0x0128FC 04:A8EC: 00        .byte $00   ; 
- D 1 - I - 0x0128FD 04:A8ED: 20        .byte $20   ; 
- D 1 - I - 0x0128FE 04:A8EE: 50        .byte $50   ; 
- D 1 - I - 0x0128FF 04:A8EF: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x012900 04:A8F0: 70        .byte $70   ; 
- D 1 - I - 0x012901 04:A8F1: B0        .byte $B0   ; 
- D 1 - I - 0x012902 04:A8F2: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x012903 04:A8F3: 20        .byte $20   ; 
- D 1 - I - 0x012904 04:A8F4: 50        .byte $50   ; 
- D 1 - I - 0x012905 04:A8F5: 70        .byte $70   ; 
- D 1 - I - 0x012906 04:A8F6: B0        .byte $B0   ; 
- D 1 - I - 0x012907 04:A8F7: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x012908 04:A8F8: 20        .byte $20   ; 
- D 1 - I - 0x012909 04:A8F9: 50        .byte $50   ; 
- D 1 - I - 0x01290A 04:A8FA: 70        .byte $70   ; 
- D 1 - I - 0x01290B 04:A8FB: B0        .byte $B0   ; 
- D 1 - I - 0x01290C 04:A8FC: E1        .byte con_se_cb_1_E0 + $01   ; 
- D 1 - I - 0x01290D 04:A8FD: 20        .byte $20   ; 
- D 1 - I - 0x01290E 04:A8FE: 50        .byte $50   ; 
- D 1 - I - 0x01290F 04:A8FF: DB        .byte con_se_cb_1_D0 + $0B, $37, con_9E25_04 + $80   ; 
- D 1 - I - 0x012912 04:A902: 18        .byte $18   ; 
- D 1 - I - 0x012913 04:A903: EC        .byte con_se_cb_1_EC, $01   ; 
- D 1 - I - 0x012915 04:A905: E9        .byte con_se_cb_1_E9, $38   ; 
- D 1 - I - 0x012917 04:A907: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x012918 04:A908: 30        .byte $30   ; 
- D 1 - I - 0x012919 04:A909: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x01291A 04:A90A: 20        .byte $20   ; 
- D 1 - I - 0x01291B 04:A90B: 30        .byte $30   ; 
- D 1 - I - 0x01291C 04:A90C: 70        .byte $70   ; 
- D 1 - I - 0x01291D 04:A90D: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x01291E 04:A90E: 00        .byte $00   ; 
- D 1 - I - 0x01291F 04:A90F: 20        .byte $20   ; 
- D 1 - I - 0x012920 04:A910: 30        .byte $30   ; 
- D 1 - I - 0x012921 04:A911: 70        .byte $70   ; 
- D 1 - I - 0x012922 04:A912: E1        .byte con_se_cb_1_E0 + $01   ; 
- D 1 - I - 0x012923 04:A913: 00        .byte $00   ; 
- D 1 - I - 0x012924 04:A914: 20        .byte $20   ; 
- D 1 - I - 0x012925 04:A915: 30        .byte $30   ; 
- D 1 - I - 0x012926 04:A916: 70        .byte $70   ; 
- D 1 - I - 0x012927 04:A917: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x012928 04:A918: 20        .byte $20   ; 
- D 1 - I - 0x012929 04:A919: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x01292A 04:A91A: 20        .byte $20   ; 
- D 1 - I - 0x01292B 04:A91B: 60        .byte $60   ; 
- D 1 - I - 0x01292C 04:A91C: 90        .byte $90   ; 
- D 1 - I - 0x01292D 04:A91D: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x01292E 04:A91E: 00        .byte $00   ; 
- D 1 - I - 0x01292F 04:A91F: 20        .byte $20   ; 
- D 1 - I - 0x012930 04:A920: 60        .byte $60   ; 
- D 1 - I - 0x012931 04:A921: 90        .byte $90   ; 
- D 1 - I - 0x012932 04:A922: E1        .byte con_se_cb_1_E0 + $01   ; 
- D 1 - I - 0x012933 04:A923: 00        .byte $00   ; 
- D 1 - I - 0x012934 04:A924: 20        .byte $20   ; 
- D 1 - I - 0x012935 04:A925: 60        .byte $60   ; 
- D 1 - I - 0x012936 04:A926: 90        .byte $90   ; 
- D 1 - I - 0x012937 04:A927: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x012938 04:A928: 20        .byte $20   ; 
- D 1 - I - 0x012939 04:A929: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x01293A 04:A92A: 20        .byte $20   ; 
- D 1 - I - 0x01293B 04:A92B: 50        .byte $50   ; 
- D 1 - I - 0x01293C 04:A92C: 80        .byte $80   ; 
- D 1 - I - 0x01293D 04:A92D: B0        .byte $B0   ; 
- D 1 - I - 0x01293E 04:A92E: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x01293F 04:A92F: 20        .byte $20   ; 
- D 1 - I - 0x012940 04:A930: 50        .byte $50   ; 
- D 1 - I - 0x012941 04:A931: 80        .byte $80   ; 
- D 1 - I - 0x012942 04:A932: B0        .byte $B0   ; 
- D 1 - I - 0x012943 04:A933: E1        .byte con_se_cb_1_E0 + $01   ; 
- D 1 - I - 0x012944 04:A934: 20        .byte $20   ; 
- D 1 - I - 0x012945 04:A935: 50        .byte $50   ; 
- D 1 - I - 0x012946 04:A936: 70        .byte $70   ; 
- D 1 - I - 0x012947 04:A937: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x012948 04:A938: 10        .byte $10   ; 
- D 1 - I - 0x012949 04:A939: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x01294A 04:A93A: 10        .byte $10   ; 
- D 1 - I - 0x01294B 04:A93B: 40        .byte $40   ; 
- D 1 - I - 0x01294C 04:A93C: 70        .byte $70   ; 
- D 1 - I - 0x01294D 04:A93D: A0        .byte $A0   ; 
- D 1 - I - 0x01294E 04:A93E: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x01294F 04:A93F: 10        .byte $10   ; 
- D 1 - I - 0x012950 04:A940: 40        .byte $40   ; 
- D 1 - I - 0x012951 04:A941: 70        .byte $70   ; 
- D 1 - I - 0x012952 04:A942: A0        .byte $A0   ; 
- D 1 - I - 0x012953 04:A943: E1        .byte con_se_cb_1_E0 + $01   ; 
- D 1 - I - 0x012954 04:A944: 10        .byte $10   ; 
- D 1 - I - 0x012955 04:A945: 40        .byte $40   ; 
- D 1 - I - 0x012956 04:A946: 70        .byte $70   ; 
- D 1 - I - 0x012957 04:A947: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x012958 04:A948: 90        .byte $90   ; 
- D 1 - I - 0x012959 04:A949: A0        .byte $A0   ; 
- D 1 - I - 0x01295A 04:A94A: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x01295B 04:A94B: 00        .byte $00   ; 
- D 1 - I - 0x01295C 04:A94C: 50        .byte $50   ; 
- D 1 - I - 0x01295D 04:A94D: 90        .byte $90   ; 
- D 1 - I - 0x01295E 04:A94E: A0        .byte $A0   ; 
- D 1 - I - 0x01295F 04:A94F: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x012960 04:A950: 00        .byte $00   ; 
- D 1 - I - 0x012961 04:A951: 50        .byte $50   ; 
- D 1 - I - 0x012962 04:A952: 90        .byte $90   ; 
- D 1 - I - 0x012963 04:A953: A0        .byte $A0   ; 
- D 1 - I - 0x012964 04:A954: E1        .byte con_se_cb_1_E0 + $01   ; 
- D 1 - I - 0x012965 04:A955: 00        .byte $00   ; 
- D 1 - I - 0x012966 04:A956: 50        .byte $50   ; 
- D 1 - I - 0x012967 04:A957: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x012968 04:A958: 00        .byte $00   ; 
- D 1 - I - 0x012969 04:A959: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x01296A 04:A95A: 00        .byte $00   ; 
- D 1 - I - 0x01296B 04:A95B: 20        .byte $20   ; 
- D 1 - I - 0x01296C 04:A95C: 50        .byte $50   ; 
- D 1 - I - 0x01296D 04:A95D: 80        .byte $80   ; 
- D 1 - I - 0x01296E 04:A95E: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x01296F 04:A95F: 00        .byte $00   ; 
- D 1 - I - 0x012970 04:A960: 20        .byte $20   ; 
- D 1 - I - 0x012971 04:A961: 50        .byte $50   ; 
- D 1 - I - 0x012972 04:A962: 80        .byte $80   ; 
- D 1 - I - 0x012973 04:A963: E1        .byte con_se_cb_1_E0 + $01   ; 
- D 1 - I - 0x012974 04:A964: 00        .byte $00   ; 
- D 1 - I - 0x012975 04:A965: 20        .byte $20   ; 
- D 1 - I - 0x012976 04:A966: 50        .byte $50   ; 
- D 1 - I - 0x012977 04:A967: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x012978 04:A968: 00        .byte $00   ; 
- D 1 - I - 0x012979 04:A969: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x01297A 04:A96A: 00        .byte $00   ; 
- D 1 - I - 0x01297B 04:A96B: 20        .byte $20   ; 
- D 1 - I - 0x01297C 04:A96C: 50        .byte $50   ; 
- D 1 - I - 0x01297D 04:A96D: 70        .byte $70   ; 
- D 1 - I - 0x01297E 04:A96E: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x01297F 04:A96F: 00        .byte $00   ; 
- D 1 - I - 0x012980 04:A970: 20        .byte $20   ; 
- D 1 - I - 0x012981 04:A971: 50        .byte $50   ; 
- D 1 - I - 0x012982 04:A972: 70        .byte $70   ; 
- D 1 - I - 0x012983 04:A973: E1        .byte con_se_cb_1_E0 + $01   ; 
- D 1 - I - 0x012984 04:A974: 00        .byte $00   ; 
- D 1 - I - 0x012985 04:A975: 20        .byte $20   ; 
- D 1 - I - 0x012986 04:A976: 50        .byte $50   ; 
- D 1 - I - 0x012987 04:A977: E5        .byte con_se_cb_1_E0 + $05   ; 
- D 1 - I - 0x012988 04:A978: B0        .byte $B0   ; 
- D 1 - I - 0x012989 04:A979: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x01298A 04:A97A: B0        .byte $B0   ; 
- D 1 - I - 0x01298B 04:A97B: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x01298C 04:A97C: 20        .byte $20   ; 
- D 1 - I - 0x01298D 04:A97D: 50        .byte $50   ; 
- D 1 - I - 0x01298E 04:A97E: 70        .byte $70   ; 
- D 1 - I - 0x01298F 04:A97F: B0        .byte $B0   ; 
- D 1 - I - 0x012990 04:A980: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x012991 04:A981: 20        .byte $20   ; 
- D 1 - I - 0x012992 04:A982: 50        .byte $50   ; 
- D 1 - I - 0x012993 04:A983: 70        .byte $70   ; 
- D 1 - I - 0x012994 04:A984: B0        .byte $B0   ; 
- D 1 - I - 0x012995 04:A985: E1        .byte con_se_cb_1_E0 + $01   ; 
- D 1 - I - 0x012996 04:A986: 20        .byte $20   ; 
- D 1 - I - 0x012997 04:A987: 50        .byte $50   ; 
- D 1 - I - 0x012998 04:A988: DB        .byte con_se_cb_1_D0 + $0B, $B7, con_9E25_05 + $80   ; 
- D 1 - I - 0x01299B 04:A98B: 17        .byte $17   ; 
- D 1 - I - 0x01299C 04:A98C: EC        .byte con_se_cb_1_EC, $03   ; 
- D 1 - I - 0x01299E 04:A98E: E9        .byte con_se_cb_1_E9, $B4   ; 
- D 1 - I - 0x0129A0 04:A990: ED        .byte con_se_cb_1_ED, $01   ; 
- D 1 - I - 0x0129A2 04:A992: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x0129A3 04:A993: 31        .byte $31   ; 
- D 1 - I - 0x0129A4 04:A994: ED        .byte con_se_cb_1_ED, $00   ; 
- D 1 - I - 0x0129A6 04:A996: 81        .byte $81   ; 
- D 1 - I - 0x0129A7 04:A997: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x0129A8 04:A998: 31        .byte $31   ; 
- D 1 - I - 0x0129A9 04:A999: 81        .byte $81   ; 
- D 1 - I - 0x0129AA 04:A99A: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x0129AB 04:A99B: 31        .byte $31   ; 
- D 1 - I - 0x0129AC 04:A99C: 81        .byte $81   ; 
- D 1 - I - 0x0129AD 04:A99D: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x0129AE 04:A99E: 01        .byte $01   ; 
- D 1 - I - 0x0129AF 04:A99F: 71        .byte $71   ; 
- D 1 - I - 0x0129B0 04:A9A0: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x0129B1 04:A9A1: 01        .byte $01   ; 
- D 1 - I - 0x0129B2 04:A9A2: 71        .byte $71   ; 
- D 1 - I - 0x0129B3 04:A9A3: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x0129B4 04:A9A4: 01        .byte $01   ; 
- D 1 - I - 0x0129B5 04:A9A5: 71        .byte $71   ; 
- D 1 - I - 0x0129B6 04:A9A6: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x0129B7 04:A9A7: 11        .byte $11   ; 
- D 1 - I - 0x0129B8 04:A9A8: 81        .byte $81   ; 
- D 1 - I - 0x0129B9 04:A9A9: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x0129BA 04:A9AA: 11        .byte $11   ; 
- D 1 - I - 0x0129BB 04:A9AB: 81        .byte $81   ; 
- D 1 - I - 0x0129BC 04:A9AC: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x0129BD 04:A9AD: 11        .byte $11   ; 
- D 1 - I - 0x0129BE 04:A9AE: 81        .byte $81   ; 
- D 1 - I - 0x0129BF 04:A9AF: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x0129C0 04:A9B0: 01        .byte $01   ; 
- D 1 - I - 0x0129C1 04:A9B1: 71        .byte $71   ; 
- D 1 - I - 0x0129C2 04:A9B2: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x0129C3 04:A9B3: 21        .byte $21   ; 
- D 1 - I - 0x0129C4 04:A9B4: 71        .byte $71   ; 
- D 1 - I - 0x0129C5 04:A9B5: B1        .byte $B1   ; 
- D 1 - I - 0x0129C6 04:A9B6: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x0129C7 04:A9B7: 71        .byte $71   ; 
- D 1 - I - 0x0129C8 04:A9B8: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x0129C9 04:A9B9: 31        .byte $31   ; 
- D 1 - I - 0x0129CA 04:A9BA: 81        .byte $81   ; 
- D 1 - I - 0x0129CB 04:A9BB: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x0129CC 04:A9BC: 31        .byte $31   ; 
- D 1 - I - 0x0129CD 04:A9BD: 81        .byte $81   ; 
- D 1 - I - 0x0129CE 04:A9BE: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x0129CF 04:A9BF: 31        .byte $31   ; 
- D 1 - I - 0x0129D0 04:A9C0: 81        .byte $81   ; 
- D 1 - I - 0x0129D1 04:A9C1: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x0129D2 04:A9C2: 01        .byte $01   ; 
- D 1 - I - 0x0129D3 04:A9C3: 71        .byte $71   ; 
- D 1 - I - 0x0129D4 04:A9C4: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x0129D5 04:A9C5: 01        .byte $01   ; 
- D 1 - I - 0x0129D6 04:A9C6: 71        .byte $71   ; 
- D 1 - I - 0x0129D7 04:A9C7: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x0129D8 04:A9C8: 01        .byte $01   ; 
- D 1 - I - 0x0129D9 04:A9C9: 71        .byte $71   ; 
- D 1 - I - 0x0129DA 04:A9CA: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x0129DB 04:A9CB: 11        .byte $11   ; 
- D 1 - I - 0x0129DC 04:A9CC: 81        .byte $81   ; 
- D 1 - I - 0x0129DD 04:A9CD: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x0129DE 04:A9CE: 11        .byte $11   ; 
- D 1 - I - 0x0129DF 04:A9CF: 81        .byte $81   ; 
- D 1 - I - 0x0129E0 04:A9D0: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x0129E1 04:A9D1: 11        .byte $11   ; 
- D 1 - I - 0x0129E2 04:A9D2: 81        .byte $81   ; 
- D 1 - I - 0x0129E3 04:A9D3: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x0129E4 04:A9D4: 01        .byte $01   ; 
- D 1 - I - 0x0129E5 04:A9D5: 21        .byte $21   ; 
- D 1 - I - 0x0129E6 04:A9D6: 71        .byte $71   ; 
- D 1 - I - 0x0129E7 04:A9D7: EC        .byte con_se_cb_1_EC, $00   ; 
- D 1 - I - 0x0129E9 04:A9D9: E8        .byte con_se_cb_1_E8, $10 + $02   ; 
- D 1 - I - 0x0129EB 04:A9DB: E9        .byte con_se_cb_1_E9, $70   ; 
- D 1 - I - 0x0129ED 04:A9DD: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x0129EE 04:A9DE: B0        .byte $B0   ; 
- D 1 - I - 0x0129EF 04:A9DF: 90        .byte $90   ; 
- D 1 - I - 0x0129F0 04:A9E0: EB        .byte con_se_cb_1_EB, con_9E7B_50, $22   ; 
- D 1 - I - 0x0129F3 04:A9E3: B3        .byte $B3   ; 
- D 1 - I - 0x0129F4 04:A9E4: DB        .byte con_se_cb_1_D0 + $0B, $77, con_9E25_05 + $80   ; 
- D 1 - I - 0x0129F7 04:A9E7: 64        .byte $64   ; 
- D 1 - I - 0x0129F8 04:A9E8: EC        .byte con_se_cb_1_EC, $02   ; 
- D 1 - I - 0x0129FA 04:A9EA: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x0129FB 04:A9EB: 31        .byte $31   ; 
- D 1 - I - 0x0129FC 04:A9EC: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x0129FD 04:A9ED: A1        .byte $A1   ; 
- D 1 - I - 0x0129FE 04:A9EE: 71        .byte $71   ; 
- D 1 - I - 0x0129FF 04:A9EF: A1        .byte $A1   ; 
- D 1 - I - 0x012A00 04:A9F0: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x012A01 04:A9F1: 31        .byte $31   ; 
- D 1 - I - 0x012A02 04:A9F2: 71        .byte $71   ; 
- D 1 - I - 0x012A03 04:A9F3: 51        .byte $51   ; 
- D 1 - I - 0x012A04 04:A9F4: 11        .byte $11   ; 
- D 1 - I - 0x012A05 04:A9F5: 51        .byte $51   ; 
- D 1 - I - 0x012A06 04:A9F6: EC        .byte con_se_cb_1_EC, $00   ; 
- D 1 - I - 0x012A08 04:A9F8: DB        .byte con_se_cb_1_D0 + $0B, $F7, con_9E25_05 + $80   ; 
- D 1 - I - 0x012A0B 04:A9FB: 12        .byte $12   ; 
- D 1 - I - 0x012A0C 04:A9FC: 80        .byte $80   ; 
- D 1 - I - 0x012A0D 04:A9FD: 70        .byte $70   ; 
- D 1 - I - 0x012A0E 04:A9FE: 51        .byte $51   ; 
- D 1 - I - 0x012A0F 04:A9FF: 30        .byte $30   ; 
- D 1 - I - 0x012A10 04:AA00: 10        .byte $10   ; 
- D 1 - I - 0x012A11 04:AA01: DB        .byte con_se_cb_1_D0 + $0B, $77, con_9E25_05 + $80   ; 
- D 1 - I - 0x012A14 04:AA04: 64        .byte $64   ; 
- D 1 - I - 0x012A15 04:AA05: EC        .byte con_se_cb_1_EC, $02   ; 
- D 1 - I - 0x012A17 04:AA07: 31        .byte $31   ; 
- D 1 - I - 0x012A18 04:AA08: 01        .byte $01   ; 
- D 1 - I - 0x012A19 04:AA09: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x012A1A 04:AA0A: 81        .byte $81   ; 
- D 1 - I - 0x012A1B 04:AA0B: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x012A1C 04:AA0C: 01        .byte $01   ; 
- D 1 - I - 0x012A1D 04:AA0D: 31        .byte $31   ; 
- D 1 - I - 0x012A1E 04:AA0E: 01        .byte $01   ; 
- D 1 - I - 0x012A1F 04:AA0F: 51        .byte $51   ; 
- D 1 - I - 0x012A20 04:AA10: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x012A21 04:AA11: B1        .byte $B1   ; 
- D 1 - I - 0x012A22 04:AA12: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x012A23 04:AA13: 31        .byte $31   ; 
- D 1 - I - 0x012A24 04:AA14: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x012A25 04:AA15: B1        .byte $B1   ; 
- D 1 - I - 0x012A26 04:AA16: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x012A27 04:AA17: 11        .byte $11   ; 
- D 1 - I - 0x012A28 04:AA18: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x012A29 04:AA19: B1        .byte $B1   ; 
- D 1 - I - 0x012A2A 04:AA1A: E8        .byte con_se_cb_1_E8, $60 + $07   ; 
- D 1 - I - 0x012A2C 04:AA1C: FB        .byte con_se_cb_1_FB   ; 
- D 1 - I - 0x012A2D 04:AA1D: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x012A2E 04:AA1E: 30        .byte $30   ; 
- D 1 - I - 0x012A2F 04:AA1F: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x012A30 04:AA20: A0        .byte $A0   ; 
- D 1 - I - 0x012A31 04:AA21: 70        .byte $70   ; 
- D 1 - I - 0x012A32 04:AA22: A0        .byte $A0   ; 
- D 1 - I - 0x012A33 04:AA23: FE        .byte con_se_cb_1_FE, $02   ; 
- D 1 - I - 0x012A35 04:AA25: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x012A36 04:AA26: 30        .byte $30   ; 
- D 1 - I - 0x012A37 04:AA27: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x012A38 04:AA28: A0        .byte $A0   ; 
- D 1 - I - 0x012A39 04:AA29: ED        .byte con_se_cb_1_ED, $01   ; 
- D 1 - I - 0x012A3B 04:AA2B: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x012A3C 04:AA2C: 30        .byte $30   ; 
- D 1 - I - 0x012A3D 04:AA2D: ED        .byte con_se_cb_1_ED, $00   ; 
- D 1 - I - 0x012A3F 04:AA2F: 70        .byte $70   ; 
- D 1 - I - 0x012A40 04:AA30: 50        .byte $50   ; 
- D 1 - I - 0x012A41 04:AA31: 10        .byte $10   ; 
- D 1 - I - 0x012A42 04:AA32: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x012A43 04:AA33: 80        .byte $80   ; 
- D 1 - I - 0x012A44 04:AA34: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x012A45 04:AA35: 10        .byte $10   ; 
- D 1 - I - 0x012A46 04:AA36: 50        .byte $50   ; 
- D 1 - I - 0x012A47 04:AA37: 10        .byte $10   ; 
- D 1 - I - 0x012A48 04:AA38: EC        .byte con_se_cb_1_EC, $00   ; 
- D 1 - I - 0x012A4A 04:AA3A: DB        .byte con_se_cb_1_D0 + $0B, $F7, con_9E25_05 + $80   ; 
- D 1 - I - 0x012A4D 04:AA3D: 12        .byte $12   ; 
- D 1 - I - 0x012A4E 04:AA3E: 80        .byte $80   ; 
- D 1 - I - 0x012A4F 04:AA3F: 70        .byte $70   ; 
- D 1 - I - 0x012A50 04:AA40: 51        .byte $51   ; 
- D 1 - I - 0x012A51 04:AA41: 30        .byte $30   ; 
- D 1 - I - 0x012A52 04:AA42: 10        .byte $10   ; 
- D 1 - I - 0x012A53 04:AA43: DB        .byte con_se_cb_1_D0 + $0B, $77, con_9E25_05 + $80   ; 
- D 1 - I - 0x012A56 04:AA46: 67        .byte $67   ; 
- D 1 - I - 0x012A57 04:AA47: EC        .byte con_se_cb_1_EC, $02   ; 
- D 1 - I - 0x012A59 04:AA49: FB        .byte con_se_cb_1_FB   ; 
- D 1 - I - 0x012A5A 04:AA4A: ED        .byte con_se_cb_1_ED, $01   ; 
- D 1 - I - 0x012A5C 04:AA4C: 30        .byte $30   ; 
- D 1 - I - 0x012A5D 04:AA4D: ED        .byte con_se_cb_1_ED, $00   ; 
- D 1 - I - 0x012A5F 04:AA4F: 00        .byte $00   ; 
- D 1 - I - 0x012A60 04:AA50: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x012A61 04:AA51: 80        .byte $80   ; 
- D 1 - I - 0x012A62 04:AA52: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x012A63 04:AA53: 00        .byte $00   ; 
- D 1 - I - 0x012A64 04:AA54: FE        .byte con_se_cb_1_FE, $02   ; 
- D 1 - I - 0x012A66 04:AA56: DB        .byte con_se_cb_1_D0 + $0B, $F7, con_9E25_05 + $80   ; 
- D 1 - I - 0x012A69 04:AA59: 12        .byte $12   ; 
- D 1 - I - 0x012A6A 04:AA5A: EC        .byte con_se_cb_1_EC, $00   ; 
- D 1 - I - 0x012A6C 04:AA5C: 01        .byte $01   ; 
- D 1 - I - 0x012A6D 04:AA5D: 10        .byte $10   ; 
- D 1 - I - 0x012A6E 04:AA5E: 00        .byte $00   ; 
- D 1 - I - 0x012A6F 04:AA5F: DB        .byte con_se_cb_1_D0 + $0B, $F6, con_9E25_02 + $80   ; 
- D 1 - I - 0x012A72 04:AA62: 00        .byte $00   ; 
- D 1 - I - 0x012A73 04:AA63: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x012A74 04:AA64: B3        .byte $B3   ; 
- D 1 - I - 0x012A75 04:AA65: DD        .byte con_se_cb_1_D0 + $0D, $F3, con_9E25_00 + $80   ; 
- D 1 - I - 0x012A78 04:AA68: 00        .byte $00   ; 
- D 1 - I - 0x012A79 04:AA69: B3        .byte $B3   ; 
- D 1 - I - 0x012A7A 04:AA6A: DF        .byte con_se_cb_1_D0 + $0F, $F2, con_9E25_00 + $80   ; 
- D 1 - I - 0x012A7D 04:AA6D: 12        .byte $12   ; 
- D 1 - I - 0x012A7E 04:AA6E: EB        .byte con_se_cb_1_EB, con_9E7B_50, $03   ; 
- D 1 - I - 0x012A81 04:AA71: BF        .byte $BF   ; 
- D 1 - I - 0x012A82 04:AA72: FF        .byte con_se_cb_1_FF   ; 



off_ch_01_0x012A83_66:
- D 1 - I - 0x012A83 04:AA73: D1        .byte con_se_cb_1_D0 + $01, $F6, con_9E25_02 + $80   ; 
- D 1 - I - 0x012A86 04:AA76: 00        .byte $00   ; 
- D 1 - I - 0x012A87 04:AA77: ED        .byte con_se_cb_1_ED, $02   ; 
- D 1 - I - 0x012A89 04:AA79: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x012A8A 04:AA7A: 91        .byte $91   ; 
- D 1 - I - 0x012A8B 04:AA7B: DB        .byte con_se_cb_1_D0 + $0B, $F4, con_9E25_00 + $80   ; 
- D 1 - I - 0x012A8E 04:AA7E: 12        .byte $12   ; 
- D 1 - I - 0x012A8F 04:AA7F: 93        .byte $93   ; 
- D 1 - I - 0x012A90 04:AA80: DB        .byte con_se_cb_1_D0 + $0B, $F6, con_9E25_02 + $80   ; 
- D 1 - I - 0x012A93 04:AA83: 12        .byte $12   ; 
- D 1 - I - 0x012A94 04:AA84: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x012A95 04:AA85: 45        .byte $45   ; 
- D 1 - I - 0x012A96 04:AA86: 71        .byte $71   ; 
- D 1 - I - 0x012A97 04:AA87: 61        .byte $61   ; 
- D 1 - I - 0x012A98 04:AA88: 21        .byte $21   ; 
- D 1 - I - 0x012A99 04:AA89: 4B        .byte $4B   ; 
- D 1 - I - 0x012A9A 04:AA8A: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x012A9B 04:AA8B: 93        .byte $93   ; 
- D 1 - I - 0x012A9C 04:AA8C: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x012A9D 04:AA8D: 45        .byte $45   ; 
- D 1 - I - 0x012A9E 04:AA8E: 71        .byte $71   ; 
- D 1 - I - 0x012A9F 04:AA8F: 61        .byte $61   ; 
- D 1 - I - 0x012AA0 04:AA90: 21        .byte $21   ; 
- D 1 - I - 0x012AA1 04:AA91: DB        .byte con_se_cb_1_D0 + $0B, $F6, con_9E25_02 + $80   ; 
- D 1 - I - 0x012AA4 04:AA94: 00        .byte $00   ; 
- D 1 - I - 0x012AA5 04:AA95: 43        .byte $43   ; 
- D 1 - I - 0x012AA6 04:AA96: D1        .byte con_se_cb_1_D0 + $01, $F4, con_9E25_00 + $80   ; 
- D 1 - I - 0x012AA9 04:AA99: 12        .byte $12   ; 
- D 1 - I - 0x012AAA 04:AA9A: 48        .byte $48   ; 
- D 1 - I - 0x012AAB 04:AA9B: D1        .byte con_se_cb_1_D0 + $01, $F8, con_9E25_04 + $80   ; 
- D 1 - I - 0x012AAE 04:AA9E: 12        .byte $12   ; 
- D 1 - I - 0x012AAF 04:AA9F: 64        .byte $64   ; 
- D 1 - I - 0x012AB0 04:AAA0: 75        .byte $75   ; 
- D 1 - I - 0x012AB1 04:AAA1: 94        .byte $94   ; 
- D 1 - I - 0x012AB2 04:AAA2: B5        .byte $B5   ; 
- D 1 - I - 0x012AB3 04:AAA3: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x012AB4 04:AAA4: 04        .byte $04   ; 
- D 1 - I - 0x012AB5 04:AAA5: 25        .byte $25   ; 
- D 1 - I - 0x012AB6 04:AAA6: DB        .byte con_se_cb_1_D0 + $0B, $FA, con_9E25_05 + $80   ; 
- D 1 - I - 0x012AB9 04:AAA9: 12        .byte $12   ; 
- D 1 - I - 0x012ABA 04:AAAA: ED        .byte con_se_cb_1_ED, $00   ; 
- D 1 - I - 0x012ABC 04:AAAC: EB        .byte con_se_cb_1_EB, con_9E7B_50, $32   ; 
- D 1 - I - 0x012ABF 04:AAAF: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x012AC0 04:AAB0: 47        .byte $47   ; 
- D 1 - I - 0x012AC1 04:AAB1: 20        .byte $20   ; 
- D 1 - I - 0x012AC2 04:AAB2: 00        .byte $00   ; 
- D 1 - I - 0x012AC3 04:AAB3: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x012AC4 04:AAB4: B0        .byte $B0   ; 
- D 1 - I - 0x012AC5 04:AAB5: 90        .byte $90   ; 
- D 1 - I - 0x012AC6 04:AAB6: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x012AC7 04:AAB7: 07        .byte $07   ; 
- D 1 - I - 0x012AC8 04:AAB8: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x012AC9 04:AAB9: A0        .byte $A0   ; 
- D 1 - I - 0x012ACA 04:AABA: 80        .byte $80   ; 
- D 1 - I - 0x012ACB 04:AABB: 70        .byte $70   ; 
- D 1 - I - 0x012ACC 04:AABC: 50        .byte $50   ; 
- D 1 - I - 0x012ACD 04:AABD: 7B        .byte $7B   ; 
- D 1 - I - 0x012ACE 04:AABE: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x012ACF 04:AABF: B3        .byte $B3   ; 
- D 1 - I - 0x012AD0 04:AAC0: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x012AD1 04:AAC1: 03        .byte $03   ; 
- D 1 - I - 0x012AD2 04:AAC2: 27        .byte $27   ; 
- D 1 - I - 0x012AD3 04:AAC3: DB        .byte con_se_cb_1_D0 + $0B, $38, con_9E25_05 + $80   ; 
- D 1 - I - 0x012AD6 04:AAC6: 18        .byte $18   ; 
- D 1 - I - 0x012AD7 04:AAC7: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x012AD8 04:AAC8: 00        .byte $00   ; 
- D 1 - I - 0x012AD9 04:AAC9: 20        .byte $20   ; 
- D 1 - I - 0x012ADA 04:AACA: 30        .byte $30   ; 
- D 1 - I - 0x012ADB 04:AACB: 70        .byte $70   ; 
- D 1 - I - 0x012ADC 04:AACC: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x012ADD 04:AACD: 00        .byte $00   ; 
- D 1 - I - 0x012ADE 04:AACE: 20        .byte $20   ; 
- D 1 - I - 0x012ADF 04:AACF: 30        .byte $30   ; 
- D 1 - I - 0x012AE0 04:AAD0: 70        .byte $70   ; 
- D 1 - I - 0x012AE1 04:AAD1: E1        .byte con_se_cb_1_E0 + $01   ; 
- D 1 - I - 0x012AE2 04:AAD2: 00        .byte $00   ; 
- D 1 - I - 0x012AE3 04:AAD3: 20        .byte $20   ; 
- D 1 - I - 0x012AE4 04:AAD4: 30        .byte $30   ; 
- D 1 - I - 0x012AE5 04:AAD5: 70        .byte $70   ; 
- D 1 - I - 0x012AE6 04:AAD6: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x012AE7 04:AAD7: 00        .byte $00   ; 
- D 1 - I - 0x012AE8 04:AAD8: 20        .byte $20   ; 
- D 1 - I - 0x012AE9 04:AAD9: 60        .byte $60   ; 
- D 1 - I - 0x012AEA 04:AADA: 90        .byte $90   ; 
- D 1 - I - 0x012AEB 04:AADB: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x012AEC 04:AADC: 00        .byte $00   ; 
- D 1 - I - 0x012AED 04:AADD: 20        .byte $20   ; 
- D 1 - I - 0x012AEE 04:AADE: 60        .byte $60   ; 
- D 1 - I - 0x012AEF 04:AADF: 90        .byte $90   ; 
- D 1 - I - 0x012AF0 04:AAE0: E1        .byte con_se_cb_1_E0 + $01   ; 
- D 1 - I - 0x012AF1 04:AAE1: 00        .byte $00   ; 
- D 1 - I - 0x012AF2 04:AAE2: 20        .byte $20   ; 
- D 1 - I - 0x012AF3 04:AAE3: 60        .byte $60   ; 
- D 1 - I - 0x012AF4 04:AAE4: 90        .byte $90   ; 
- D 1 - I - 0x012AF5 04:AAE5: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x012AF6 04:AAE6: 00        .byte $00   ; 
- D 1 - I - 0x012AF7 04:AAE7: 20        .byte $20   ; 
- D 1 - I - 0x012AF8 04:AAE8: 50        .byte $50   ; 
- D 1 - I - 0x012AF9 04:AAE9: 80        .byte $80   ; 
- D 1 - I - 0x012AFA 04:AAEA: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x012AFB 04:AAEB: 00        .byte $00   ; 
- D 1 - I - 0x012AFC 04:AAEC: 20        .byte $20   ; 
- D 1 - I - 0x012AFD 04:AAED: 50        .byte $50   ; 
- D 1 - I - 0x012AFE 04:AAEE: 80        .byte $80   ; 
- D 1 - I - 0x012AFF 04:AAEF: E1        .byte con_se_cb_1_E0 + $01   ; 
- D 1 - I - 0x012B00 04:AAF0: 00        .byte $00   ; 
- D 1 - I - 0x012B01 04:AAF1: 20        .byte $20   ; 
- D 1 - I - 0x012B02 04:AAF2: 50        .byte $50   ; 
- D 1 - I - 0x012B03 04:AAF3: 80        .byte $80   ; 
- D 1 - I - 0x012B04 04:AAF4: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x012B05 04:AAF5: B0        .byte $B0   ; 
- D 1 - I - 0x012B06 04:AAF6: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x012B07 04:AAF7: 20        .byte $20   ; 
- D 1 - I - 0x012B08 04:AAF8: 50        .byte $50   ; 
- D 1 - I - 0x012B09 04:AAF9: 80        .byte $80   ; 
- D 1 - I - 0x012B0A 04:AAFA: B0        .byte $B0   ; 
- D 1 - I - 0x012B0B 04:AAFB: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x012B0C 04:AAFC: 20        .byte $20   ; 
- D 1 - I - 0x012B0D 04:AAFD: 50        .byte $50   ; 
- D 1 - I - 0x012B0E 04:AAFE: 80        .byte $80   ; 
- D 1 - I - 0x012B0F 04:AAFF: B0        .byte $B0   ; 
- D 1 - I - 0x012B10 04:AB00: E1        .byte con_se_cb_1_E0 + $01   ; 
- D 1 - I - 0x012B11 04:AB01: 20        .byte $20   ; 
- D 1 - I - 0x012B12 04:AB02: 50        .byte $50   ; 
- D 1 - I - 0x012B13 04:AB03: 80        .byte $80   ; 
- D 1 - I - 0x012B14 04:AB04: DB        .byte con_se_cb_1_D0 + $0B, $FA, con_9E25_05 + $80   ; 
- D 1 - I - 0x012B17 04:AB07: 11        .byte $11   ; 
- D 1 - I - 0x012B18 04:AB08: EB        .byte con_se_cb_1_EB, con_9E7B_50, $36   ; 
- D 1 - I - 0x012B1B 04:AB0B: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x012B1C 04:AB0C: 77        .byte $77   ; 
- D 1 - I - 0x012B1D 04:AB0D: 81        .byte $81   ; 
- D 1 - I - 0x012B1E 04:AB0E: 71        .byte $71   ; 
- D 1 - I - 0x012B1F 04:AB0F: 67        .byte $67   ; 
- D 1 - I - 0x012B20 04:AB10: 21        .byte $21   ; 
- D 1 - I - 0x012B21 04:AB11: 31        .byte $31   ; 
- D 1 - I - 0x012B22 04:AB12: 55        .byte $55   ; 
- D 1 - I - 0x012B23 04:AB13: 81        .byte $81   ; 
- D 1 - I - 0x012B24 04:AB14: 71        .byte $71   ; 
- D 1 - I - 0x012B25 04:AB15: 51        .byte $51   ; 
- D 1 - I - 0x012B26 04:AB16: 43        .byte $43   ; 
- D 1 - I - 0x012B27 04:AB17: 53        .byte $53   ; 
- D 1 - I - 0x012B28 04:AB18: 73        .byte $73   ; 
- D 1 - I - 0x012B29 04:AB19: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x012B2A 04:AB1A: 02        .byte $02   ; 
- D 1 - I - 0x012B2B 04:AB1B: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x012B2C 04:AB1C: 50        .byte $50   ; 
- D 1 - I - 0x012B2D 04:AB1D: 55        .byte $55   ; 
- D 1 - I - 0x012B2E 04:AB1E: 01        .byte $01   ; 
- D 1 - I - 0x012B2F 04:AB1F: 55        .byte $55   ; 
- D 1 - I - 0x012B30 04:AB20: 31        .byte $31   ; 
- D 1 - I - 0x012B31 04:AB21: 21        .byte $21   ; 
- D 1 - I - 0x012B32 04:AB22: 01        .byte $01   ; 
- D 1 - I - 0x012B33 04:AB23: EB        .byte con_se_cb_1_EB, con_9E7B_50, $31   ; 
- D 1 - I - 0x012B36 04:AB26: 29        .byte $29   ; 
- D 1 - I - 0x012B37 04:AB27: 01        .byte $01   ; 
- D 1 - I - 0x012B38 04:AB28: 27        .byte $27   ; 
- D 1 - I - 0x012B39 04:AB29: 31        .byte $31   ; 
- D 1 - I - 0x012B3A 04:AB2A: 51        .byte $51   ; 
- D 1 - I - 0x012B3B 04:AB2B: DB        .byte con_se_cb_1_D0 + $0B, $FA, con_9E25_05 + $80   ; 
- D 1 - I - 0x012B3E 04:AB2E: 11        .byte $11   ; 
- D 1 - I - 0x012B3F 04:AB2F: EB        .byte con_se_cb_1_EB, con_9E7B_50, $36   ; 
- D 1 - I - 0x012B42 04:AB32: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x012B43 04:AB33: 77        .byte $77   ; 
- D 1 - I - 0x012B44 04:AB34: 81        .byte $81   ; 
- D 1 - I - 0x012B45 04:AB35: 71        .byte $71   ; 
- D 1 - I - 0x012B46 04:AB36: 67        .byte $67   ; 
- D 1 - I - 0x012B47 04:AB37: 21        .byte $21   ; 
- D 1 - I - 0x012B48 04:AB38: 31        .byte $31   ; 
- D 1 - I - 0x012B49 04:AB39: 55        .byte $55   ; 
- D 1 - I - 0x012B4A 04:AB3A: 81        .byte $81   ; 
- D 1 - I - 0x012B4B 04:AB3B: 71        .byte $71   ; 
- D 1 - I - 0x012B4C 04:AB3C: 51        .byte $51   ; 
- D 1 - I - 0x012B4D 04:AB3D: 43        .byte $43   ; 
- D 1 - I - 0x012B4E 04:AB3E: 53        .byte $53   ; 
- D 1 - I - 0x012B4F 04:AB3F: 73        .byte $73   ; 
- D 1 - I - 0x012B50 04:AB40: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x012B51 04:AB41: 02        .byte $02   ; 
- D 1 - I - 0x012B52 04:AB42: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x012B53 04:AB43: 50        .byte $50   ; 
- D 1 - I - 0x012B54 04:AB44: 55        .byte $55   ; 
- D 1 - I - 0x012B55 04:AB45: 01        .byte $01   ; 
- D 1 - I - 0x012B56 04:AB46: 55        .byte $55   ; 
- D 1 - I - 0x012B57 04:AB47: 31        .byte $31   ; 
- D 1 - I - 0x012B58 04:AB48: 21        .byte $21   ; 
- D 1 - I - 0x012B59 04:AB49: 01        .byte $01   ; 
- D 1 - I - 0x012B5A 04:AB4A: EB        .byte con_se_cb_1_EB, con_9E7B_50, $31   ; 
- D 1 - I - 0x012B5D 04:AB4D: 29        .byte $29   ; 
- D 1 - I - 0x012B5E 04:AB4E: 01        .byte $01   ; 
- D 1 - I - 0x012B5F 04:AB4F: 29        .byte $29   ; 
- D 1 - I - 0x012B60 04:AB50: 30        .byte $30   ; 
- D 1 - I - 0x012B61 04:AB51: 50        .byte $50   ; 
- D 1 - I - 0x012B62 04:AB52: DB        .byte con_se_cb_1_D0 + $0B, $FA, con_9E25_05 + $80   ; 
- D 1 - I - 0x012B65 04:AB55: 11        .byte $11   ; 
- D 1 - I - 0x012B66 04:AB56: EB        .byte con_se_cb_1_EB, con_9E7B_50, $36   ; 
- D 1 - I - 0x012B69 04:AB59: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x012B6A 04:AB5A: 30        .byte $30   ; 
- D 1 - I - 0x012B6B 04:AB5B: 20        .byte $20   ; 
- D 1 - I - 0x012B6C 04:AB5C: 07        .byte $07   ; 
- D 1 - I - 0x012B6D 04:AB5D: 30        .byte $30   ; 
- D 1 - I - 0x012B6E 04:AB5E: 50        .byte $50   ; 
- D 1 - I - 0x012B6F 04:AB5F: 30        .byte $30   ; 
- D 1 - I - 0x012B70 04:AB60: 20        .byte $20   ; 
- D 1 - I - 0x012B71 04:AB61: 07        .byte $07   ; 
- D 1 - I - 0x012B72 04:AB62: 00        .byte $00   ; 
- D 1 - I - 0x012B73 04:AB63: 20        .byte $20   ; 
- D 1 - I - 0x012B74 04:AB64: 33        .byte $33   ; 
- D 1 - I - 0x012B75 04:AB65: 13        .byte $13   ; 
- D 1 - I - 0x012B76 04:AB66: 83        .byte $83   ; 
- D 1 - I - 0x012B77 04:AB67: 79        .byte $79   ; 
- D 1 - I - 0x012B78 04:AB68: EB        .byte con_se_cb_1_EB, con_9E7B_50, $33   ; 
- D 1 - I - 0x012B7B 04:AB6B: F1        .byte con_se_cb_1_F0 + $01   ; 
- D 1 - I - 0x012B7C 04:AB6C: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x012B7D 04:AB6D: 30        .byte $30   ; 
- D 1 - I - 0x012B7E 04:AB6E: 50        .byte $50   ; 
- D 1 - I - 0x012B7F 04:AB6F: 30        .byte $30   ; 
- D 1 - I - 0x012B80 04:AB70: 20        .byte $20   ; 
- D 1 - I - 0x012B81 04:AB71: 07        .byte $07   ; 
- D 1 - I - 0x012B82 04:AB72: 30        .byte $30   ; 
- D 1 - I - 0x012B83 04:AB73: 50        .byte $50   ; 
- D 1 - I - 0x012B84 04:AB74: 30        .byte $30   ; 
- D 1 - I - 0x012B85 04:AB75: 20        .byte $20   ; 
- D 1 - I - 0x012B86 04:AB76: 07        .byte $07   ; 
- D 1 - I - 0x012B87 04:AB77: 00        .byte $00   ; 
- D 1 - I - 0x012B88 04:AB78: 20        .byte $20   ; 
- D 1 - I - 0x012B89 04:AB79: 33        .byte $33   ; 
- D 1 - I - 0x012B8A 04:AB7A: 13        .byte $13   ; 
- D 1 - I - 0x012B8B 04:AB7B: 83        .byte $83   ; 
- D 1 - I - 0x012B8C 04:AB7C: 79        .byte $79   ; 
- D 1 - I - 0x012B8D 04:AB7D: 30        .byte $30   ; 
- D 1 - I - 0x012B8E 04:AB7E: 50        .byte $50   ; 
- D 1 - I - 0x012B8F 04:AB7F: DB        .byte con_se_cb_1_D0 + $0B, $F8, con_9E25_04 + $80   ; 
- D 1 - I - 0x012B92 04:AB82: 12        .byte $12   ; 
- D 1 - I - 0x012B93 04:AB83: EB        .byte con_se_cb_1_EB, con_9E7B_50, $32   ; 
- D 1 - I - 0x012B96 04:AB86: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x012B97 04:AB87: 70        .byte $70   ; 
- D 1 - I - 0x012B98 04:AB88: 80        .byte $80   ; 
- D 1 - I - 0x012B99 04:AB89: 70        .byte $70   ; 
- D 1 - I - 0x012B9A 04:AB8A: 80        .byte $80   ; 
- D 1 - I - 0x012B9B 04:AB8B: A5        .byte $A5   ; 
- D 1 - I - 0x012B9C 04:AB8C: 31        .byte $31   ; 
- D 1 - I - 0x012B9D 04:AB8D: A5        .byte $A5   ; 
- D 1 - I - 0x012B9E 04:AB8E: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x012B9F 04:AB8F: 00        .byte $00   ; 
- D 1 - I - 0x012BA0 04:AB90: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x012BA1 04:AB91: A0        .byte $A0   ; 
- D 1 - I - 0x012BA2 04:AB92: 81        .byte $81   ; 
- D 1 - I - 0x012BA3 04:AB93: 71        .byte $71   ; 
- D 1 - I - 0x012BA4 04:AB94: 72        .byte $72   ; 
- D 1 - I - 0x012BA5 04:AB95: 80        .byte $80   ; 
- D 1 - I - 0x012BA6 04:AB96: EB        .byte con_se_cb_1_EB, con_9E7B_50, $33   ; 
- D 1 - I - 0x012BA9 04:AB99: 35        .byte $35   ; 
- D 1 - I - 0x012BAA 04:AB9A: 50        .byte $50   ; 
- D 1 - I - 0x012BAB 04:AB9B: 30        .byte $30   ; 
- D 1 - I - 0x012BAC 04:AB9C: EB        .byte con_se_cb_1_EB, con_9E7B_50, $22   ; 
- D 1 - I - 0x012BAF 04:AB9F: 83        .byte $83   ; 
- D 1 - I - 0x012BB0 04:ABA0: 73        .byte $73   ; 
- D 1 - I - 0x012BB1 04:ABA1: 53        .byte $53   ; 
- D 1 - I - 0x012BB2 04:ABA2: 70        .byte $70   ; 
- D 1 - I - 0x012BB3 04:ABA3: 80        .byte $80   ; 
- D 1 - I - 0x012BB4 04:ABA4: 70        .byte $70   ; 
- D 1 - I - 0x012BB5 04:ABA5: 80        .byte $80   ; 
- D 1 - I - 0x012BB6 04:ABA6: A5        .byte $A5   ; 
- D 1 - I - 0x012BB7 04:ABA7: 31        .byte $31   ; 
- D 1 - I - 0x012BB8 04:ABA8: A5        .byte $A5   ; 
- D 1 - I - 0x012BB9 04:ABA9: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x012BBA 04:ABAA: 00        .byte $00   ; 
- D 1 - I - 0x012BBB 04:ABAB: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x012BBC 04:ABAC: A0        .byte $A0   ; 
- D 1 - I - 0x012BBD 04:ABAD: 81        .byte $81   ; 
- D 1 - I - 0x012BBE 04:ABAE: 71        .byte $71   ; 
- D 1 - I - 0x012BBF 04:ABAF: 72        .byte $72   ; 
- D 1 - I - 0x012BC0 04:ABB0: 80        .byte $80   ; 
- D 1 - I - 0x012BC1 04:ABB1: 35        .byte $35   ; 
- D 1 - I - 0x012BC2 04:ABB2: 50        .byte $50   ; 
- D 1 - I - 0x012BC3 04:ABB3: 30        .byte $30   ; 
- D 1 - I - 0x012BC4 04:ABB4: 83        .byte $83   ; 
- D 1 - I - 0x012BC5 04:ABB5: E6        .byte con_se_cb_1_E6, $0D   ; 
- D 1 - I - 0x012BC7 04:ABB7: 73        .byte $73   ; 
- D 1 - I - 0x012BC8 04:ABB8: EB        .byte con_se_cb_1_EB, con_9E7B_50, $33   ; 
- D 1 - I - 0x012BCB 04:ABBB: E6        .byte con_se_cb_1_E6, $0F   ; 
- D 1 - I - 0x012BCD 04:ABBD: E8        .byte con_se_cb_1_E8, $60 + $02   ; 
- D 1 - I - 0x012BCF 04:ABBF: 5F        .byte $5F   ; 
- D 1 - I - 0x012BD0 04:ABC0: FF        .byte con_se_cb_1_FF   ; 



off_ch_02_0x012BD1_66:
- D 1 - I - 0x012BD1 04:ABC1: DB        .byte con_se_cb_1_D0 + $0B, $00   ; 
- D 1 - I - 0x012BD3 04:ABC3: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x012BD4 04:ABC4: 93        .byte $93   ; 
- D 1 - I - 0x012BD5 04:ABC5: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x012BD6 04:ABC6: 45        .byte $45   ; 
- D 1 - I - 0x012BD7 04:ABC7: 71        .byte $71   ; 
- D 1 - I - 0x012BD8 04:ABC8: 61        .byte $61   ; 
- D 1 - I - 0x012BD9 04:ABC9: 21        .byte $21   ; 
- D 1 - I - 0x012BDA 04:ABCA: 4B        .byte $4B   ; 
- D 1 - I - 0x012BDB 04:ABCB: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x012BDC 04:ABCC: 93        .byte $93   ; 
- D 1 - I - 0x012BDD 04:ABCD: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x012BDE 04:ABCE: 45        .byte $45   ; 
- D 1 - I - 0x012BDF 04:ABCF: 71        .byte $71   ; 
- D 1 - I - 0x012BE0 04:ABD0: 61        .byte $61   ; 
- D 1 - I - 0x012BE1 04:ABD1: 21        .byte $21   ; 
- D 1 - I - 0x012BE2 04:ABD2: 45        .byte $45   ; 
- D 1 - I - 0x012BE3 04:ABD3: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x012BE4 04:ABD4: 71        .byte $71   ; 
- D 1 - I - 0x012BE5 04:ABD5: DB        .byte con_se_cb_1_D0 + $0B, $00   ; 
- D 1 - I - 0x012BE7 04:ABD7: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x012BE8 04:ABD8: 5B        .byte $5B   ; 
- D 1 - I - 0x012BE9 04:ABD9: 1B        .byte $1B   ; 
- D 1 - I - 0x012BEA 04:ABDA: 2B        .byte $2B   ; 
- D 1 - I - 0x012BEB 04:ABDB: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x012BEC 04:ABDC: 7F        .byte $7F   ; 
- D 1 - I - 0x012BED 04:ABDD: DB        .byte con_se_cb_1_D0 + $0B, $00   ; 
- D 1 - I - 0x012BEF 04:ABDF: CB        .byte con_se_cb_1_C0 + $0B   ; 
- D 1 - I - 0x012BF0 04:ABE0: CB        .byte con_se_cb_1_C0 + $0B   ; 
- D 1 - I - 0x012BF1 04:ABE1: CB        .byte con_se_cb_1_C0 + $0B   ; 
- D 1 - I - 0x012BF2 04:ABE2: CB        .byte con_se_cb_1_C0 + $0B   ; 
- D 1 - I - 0x012BF3 04:ABE3: DB        .byte con_se_cb_1_D0 + $0B, $00   ; 
- D 1 - I - 0x012BF5 04:ABE5: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x012BF6 04:ABE6: FB        .byte con_se_cb_1_FB   ; 
- D 1 - I - 0x012BF7 04:ABE7: 0A        .byte $0A   ; 
- D 1 - I - 0x012BF8 04:ABE8: C0        .byte con_se_cb_1_C0 + $00   ; 
- D 1 - I - 0x012BF9 04:ABE9: FE        .byte con_se_cb_1_FE, $06   ; 
- D 1 - I - 0x012BFB 04:ABEB: 7A        .byte $7A   ; 
- D 1 - I - 0x012BFC 04:ABEC: C0        .byte con_se_cb_1_C0 + $00   ; 
- D 1 - I - 0x012BFD 04:ABED: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x012BFE 04:ABEE: 7A        .byte $7A   ; 
- D 1 - I - 0x012BFF 04:ABEF: C0        .byte con_se_cb_1_C0 + $00   ; 
- D 1 - I - 0x012C00 04:ABF0: DB        .byte con_se_cb_1_D0 + $0B, $00   ; 
- D 1 - I - 0x012C02 04:ABF2: FB        .byte con_se_cb_1_FB   ; 
- D 1 - I - 0x012C03 04:ABF3: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x012C04 04:ABF4: 07        .byte $07   ; 
- D 1 - I - 0x012C05 04:ABF5: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x012C06 04:ABF6: 03        .byte $03   ; 
- D 1 - I - 0x012C07 04:ABF7: FE        .byte con_se_cb_1_FE, $06   ; 
- D 1 - I - 0x012C09 04:ABF9: 77        .byte $77   ; 
- D 1 - I - 0x012C0A 04:ABFA: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x012C0B 04:ABFB: 23        .byte $23   ; 
- D 1 - I - 0x012C0C 04:ABFC: 77        .byte $77   ; 
- D 1 - I - 0x012C0D 04:ABFD: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x012C0E 04:ABFE: 73        .byte $73   ; 
- D 1 - I - 0x012C0F 04:ABFF: DB        .byte con_se_cb_1_D0 + $0B, $17   ; 
- D 1 - I - 0x012C11 04:AC01: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x012C12 04:AC02: 81        .byte $81   ; 
- D 1 - I - 0x012C13 04:AC03: 81        .byte $81   ; 
- D 1 - I - 0x012C14 04:AC04: 81        .byte $81   ; 
- D 1 - I - 0x012C15 04:AC05: 81        .byte $81   ; 
- D 1 - I - 0x012C16 04:AC06: 81        .byte $81   ; 
- D 1 - I - 0x012C17 04:AC07: 81        .byte $81   ; 
- D 1 - I - 0x012C18 04:AC08: 31        .byte $31   ; 
- D 1 - I - 0x012C19 04:AC09: 31        .byte $31   ; 
- D 1 - I - 0x012C1A 04:AC0A: 31        .byte $31   ; 
- D 1 - I - 0x012C1B 04:AC0B: 31        .byte $31   ; 
- D 1 - I - 0x012C1C 04:AC0C: 31        .byte $31   ; 
- D 1 - I - 0x012C1D 04:AC0D: 31        .byte $31   ; 
- D 1 - I - 0x012C1E 04:AC0E: 11        .byte $11   ; 
- D 1 - I - 0x012C1F 04:AC0F: 11        .byte $11   ; 
- D 1 - I - 0x012C20 04:AC10: 11        .byte $11   ; 
- D 1 - I - 0x012C21 04:AC11: 11        .byte $11   ; 
- D 1 - I - 0x012C22 04:AC12: 11        .byte $11   ; 
- D 1 - I - 0x012C23 04:AC13: 11        .byte $11   ; 
- D 1 - I - 0x012C24 04:AC14: 21        .byte $21   ; 
- D 1 - I - 0x012C25 04:AC15: 21        .byte $21   ; 
- D 1 - I - 0x012C26 04:AC16: 21        .byte $21   ; 
- D 1 - I - 0x012C27 04:AC17: 21        .byte $21   ; 
- D 1 - I - 0x012C28 04:AC18: 71        .byte $71   ; 
- D 1 - I - 0x012C29 04:AC19: 71        .byte $71   ; 
- D 1 - I - 0x012C2A 04:AC1A: 81        .byte $81   ; 
- D 1 - I - 0x012C2B 04:AC1B: 81        .byte $81   ; 
- D 1 - I - 0x012C2C 04:AC1C: 81        .byte $81   ; 
- D 1 - I - 0x012C2D 04:AC1D: 81        .byte $81   ; 
- D 1 - I - 0x012C2E 04:AC1E: 81        .byte $81   ; 
- D 1 - I - 0x012C2F 04:AC1F: 81        .byte $81   ; 
- D 1 - I - 0x012C30 04:AC20: 31        .byte $31   ; 
- D 1 - I - 0x012C31 04:AC21: 31        .byte $31   ; 
- D 1 - I - 0x012C32 04:AC22: 31        .byte $31   ; 
- D 1 - I - 0x012C33 04:AC23: 31        .byte $31   ; 
- D 1 - I - 0x012C34 04:AC24: 31        .byte $31   ; 
- D 1 - I - 0x012C35 04:AC25: 31        .byte $31   ; 
- D 1 - I - 0x012C36 04:AC26: 11        .byte $11   ; 
- D 1 - I - 0x012C37 04:AC27: 11        .byte $11   ; 
- D 1 - I - 0x012C38 04:AC28: 11        .byte $11   ; 
- D 1 - I - 0x012C39 04:AC29: 11        .byte $11   ; 
- D 1 - I - 0x012C3A 04:AC2A: 11        .byte $11   ; 
- D 1 - I - 0x012C3B 04:AC2B: 11        .byte $11   ; 
- D 1 - I - 0x012C3C 04:AC2C: 71        .byte $71   ; 
- D 1 - I - 0x012C3D 04:AC2D: 71        .byte $71   ; 
- D 1 - I - 0x012C3E 04:AC2E: 71        .byte $71   ; 
- D 1 - I - 0x012C3F 04:AC2F: 71        .byte $71   ; 
- D 1 - I - 0x012C40 04:AC30: 71        .byte $71   ; 
- D 1 - I - 0x012C41 04:AC31: 51        .byte $51   ; 
- D 1 - I - 0x012C42 04:AC32: DB        .byte con_se_cb_1_D0 + $0B, $19   ; 
- D 1 - I - 0x012C44 04:AC34: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x012C45 04:AC35: FB        .byte con_se_cb_1_FB   ; 
- D 1 - I - 0x012C46 04:AC36: 33        .byte $33   ; 
- D 1 - I - 0x012C47 04:AC37: 33        .byte $33   ; 
- D 1 - I - 0x012C48 04:AC38: 33        .byte $33   ; 
- D 1 - I - 0x012C49 04:AC39: FE        .byte con_se_cb_1_FE, $04   ; 
- D 1 - I - 0x012C4B 04:AC3B: DB        .byte con_se_cb_1_D0 + $0B, $17   ; 
- D 1 - I - 0x012C4D 04:AC3D: FB        .byte con_se_cb_1_FB   ; 
- D 1 - I - 0x012C4E 04:AC3E: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x012C4F 04:AC3F: 31        .byte $31   ; 
- D 1 - I - 0x012C50 04:AC40: F1        .byte con_se_cb_1_F0 + $01   ; 
- D 1 - I - 0x012C51 04:AC41: 31        .byte $31   ; 
- D 1 - I - 0x012C52 04:AC42: F1        .byte con_se_cb_1_F0 + $01   ; 
- D 1 - I - 0x012C53 04:AC43: 31        .byte $31   ; 
- D 1 - I - 0x012C54 04:AC44: F1        .byte con_se_cb_1_F0 + $01   ; 
- D 1 - I - 0x012C55 04:AC45: FE        .byte con_se_cb_1_FE, $03   ; 
- D 1 - I - 0x012C57 04:AC47: DB        .byte con_se_cb_1_D0 + $0B, $00   ; 
- D 1 - I - 0x012C59 04:AC49: 16        .byte $16   ; 
- D 1 - I - 0x012C5A 04:AC4A: D1        .byte con_se_cb_1_D0 + $01, $00   ; 
- D 1 - I - 0x012C5C 04:AC4C: 01        .byte $01   ; 
- D 1 - I - 0x012C5D 04:AC4D: E5        .byte con_se_cb_1_E0 + $05   ; 
- D 1 - I - 0x012C5E 04:AC4E: B1        .byte $B1   ; 
- D 1 - I - 0x012C5F 04:AC4F: A1        .byte $A1   ; 
- D 1 - I - 0x012C60 04:AC50: 91        .byte $91   ; 
- D 1 - I - 0x012C61 04:AC51: 81        .byte $81   ; 
- D 1 - I - 0x012C62 04:AC52: 71        .byte $71   ; 
- D 1 - I - 0x012C63 04:AC53: 62        .byte $62   ; 
- D 1 - I - 0x012C64 04:AC54: 52        .byte $52   ; 
- D 1 - I - 0x012C65 04:AC55: 43        .byte $43   ; 
- D 1 - I - 0x012C66 04:AC56: 33        .byte $33   ; 
- D 1 - I - 0x012C67 04:AC57: 24        .byte $24   ; 
- D 1 - I - 0x012C68 04:AC58: 16        .byte $16   ; 
- D 1 - I - 0x012C69 04:AC59: DF        .byte con_se_cb_1_D0 + $0F, $00   ; 
- D 1 - I - 0x012C6B 04:AC5B: E5        .byte con_se_cb_1_E0 + $05   ; 
- D 1 - I - 0x012C6C 04:AC5C: 1D        .byte $1D   ; 
- D 1 - I - 0x012C6D 04:AC5D: FF        .byte con_se_cb_1_FF   ; 



off_ch_05_0x012C6E_66_FF:
- D 1 - I - 0x012C6E 04:AC5E: FF        .byte con_se_cb_1_FF   ; 



off_ch_00_0x012C6F_5D:
off_ch_00_0x012C6F_6A:
off_FE_AC5F:
- D 1 - I - 0x012C6F 04:AC5F: D8        .byte con_se_cb_1_D0 + $08, $72, con_9E25_24   ; 
- D 1 - I - 0x012C72 04:AC62: 35        .byte $35   ; 
- D 1 - I - 0x012C73 04:AC63: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x012C74 04:AC64: 92        .byte $92   ; 
- D 1 - I - 0x012C75 04:AC65: C0        .byte con_se_cb_1_C0 + $00   ; 
- D 1 - I - 0x012C76 04:AC66: 90        .byte $90   ; 
- D 1 - I - 0x012C77 04:AC67: C0        .byte con_se_cb_1_C0 + $00   ; 
- D 1 - I - 0x012C78 04:AC68: A2        .byte $A2   ; 
- D 1 - I - 0x012C79 04:AC69: C0        .byte con_se_cb_1_C0 + $00   ; 
- D 1 - I - 0x012C7A 04:AC6A: A0        .byte $A0   ; 
- D 1 - I - 0x012C7B 04:AC6B: C0        .byte con_se_cb_1_C0 + $00   ; 
- D 1 - I - 0x012C7C 04:AC6C: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x012C7D 04:AC6D: 02        .byte $02   ; 
- D 1 - I - 0x012C7E 04:AC6E: C0        .byte con_se_cb_1_C0 + $00   ; 
- D 1 - I - 0x012C7F 04:AC6F: 00        .byte $00   ; 
- D 1 - I - 0x012C80 04:AC70: C0        .byte con_se_cb_1_C0 + $00   ; 
- D 1 - I - 0x012C81 04:AC71: E8        .byte con_se_cb_1_E8, $50 + $06   ; 
- D 1 - I - 0x012C83 04:AC73: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x012C84 04:AC74: B2        .byte $B2   ; 
- D 1 - I - 0x012C85 04:AC75: A2        .byte $A2   ; 
- D 1 - I - 0x012C86 04:AC76: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x012C87 04:AC77: 42        .byte $42   ; 
- D 1 - I - 0x012C88 04:AC78: 90        .byte $90   ; 
- D 1 - I - 0x012C89 04:AC79: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x012C8A 04:AC7A: 10        .byte $10   ; 
- D 1 - I - 0x012C8B 04:AC7B: 40        .byte $40   ; 
- D 1 - I - 0x012C8C 04:AC7C: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x012C8D 04:AC7D: 52        .byte $52   ; 
- D 1 - I - 0x012C8E 04:AC7E: A0        .byte $A0   ; 
- D 1 - I - 0x012C8F 04:AC7F: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x012C90 04:AC80: 20        .byte $20   ; 
- D 1 - I - 0x012C91 04:AC81: 50        .byte $50   ; 
- D 1 - I - 0x012C92 04:AC82: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x012C93 04:AC83: 62        .byte $62   ; 
- D 1 - I - 0x012C94 04:AC84: B0        .byte $B0   ; 
- D 1 - I - 0x012C95 04:AC85: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x012C96 04:AC86: 30        .byte $30   ; 
- D 1 - I - 0x012C97 04:AC87: 60        .byte $60   ; 
- D 1 - I - 0x012C98 04:AC88: F4        .byte con_se_cb_1_F0 + $04   ; 
- D 1 - I - 0x012C99 04:AC89: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x012C9A 04:AC8A: 00        .byte $00   ; 
- D 1 - I - 0x012C9B 04:AC8B: 70        .byte $70   ; 
- D 1 - I - 0x012C9C 04:AC8C: F3        .byte con_se_cb_1_F0 + $03   ; 
- D 1 - I - 0x012C9D 04:AC8D: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x012C9E 04:AC8E: 00        .byte $00   ; 
- D 1 - I - 0x012C9F 04:AC8F: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x012CA0 04:AC90: 10        .byte $10   ; 
- D 1 - I - 0x012CA1 04:AC91: F2        .byte con_se_cb_1_F0 + $02   ; 
- D 1 - I - 0x012CA2 04:AC92: 80        .byte $80   ; 
- D 1 - I - 0x012CA3 04:AC93: F1        .byte con_se_cb_1_F0 + $01   ; 
- D 1 - I - 0x012CA4 04:AC94: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x012CA5 04:AC95: 10        .byte $10   ; 
- D 1 - I - 0x012CA6 04:AC96: FE        .byte con_se_cb_1_FE, $FF   ; 
- D 1 - I - 0x012CA8 04:AC98: 5F AC     .word off_FE_AC5F



off_ch_01_0x012CAA_5D:
off_ch_01_0x012CAA_6A:
off_FE_AC9A:
- D 1 - I - 0x012CAA 04:AC9A: D8        .byte con_se_cb_1_D0 + $08, $32, con_9E25_25   ; 
- D 1 - I - 0x012CAD 04:AC9D: 2A        .byte $2A   ; 
- D 1 - I - 0x012CAE 04:AC9E: EC        .byte con_se_cb_1_EC, $03   ; 
- D 1 - I - 0x012CB0 04:ACA0: E9        .byte con_se_cb_1_E9, $34   ; 
- D 1 - I - 0x012CB2 04:ACA2: FB        .byte con_se_cb_1_FB   ; 
- D 1 - I - 0x012CB3 04:ACA3: E1        .byte con_se_cb_1_E0 + $01   ; 
- D 1 - I - 0x012CB4 04:ACA4: 50        .byte $50   ; 
- D 1 - I - 0x012CB5 04:ACA5: 20        .byte $20   ; 
- D 1 - I - 0x012CB6 04:ACA6: 50        .byte $50   ; 
- D 1 - I - 0x012CB7 04:ACA7: 20        .byte $20   ; 
- D 1 - I - 0x012CB8 04:ACA8: 50        .byte $50   ; 
- D 1 - I - 0x012CB9 04:ACA9: 20        .byte $20   ; 
- D 1 - I - 0x012CBA 04:ACAA: FE        .byte con_se_cb_1_FE, $04   ; 
- D 1 - I - 0x012CBC 04:ACAC: D8        .byte con_se_cb_1_D0 + $08, $30, con_9E25_26   ; 
- D 1 - I - 0x012CBF 04:ACAF: 22        .byte $22   ; 
- D 1 - I - 0x012CC0 04:ACB0: EC        .byte con_se_cb_1_EC, $00   ; 
- D 1 - I - 0x012CC2 04:ACB2: E9        .byte con_se_cb_1_E9, $75   ; 
- D 1 - I - 0x012CC4 04:ACB4: E1        .byte con_se_cb_1_E0 + $01   ; 
- D 1 - I - 0x012CC5 04:ACB5: 10        .byte $10   ; 
- D 1 - I - 0x012CC6 04:ACB6: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x012CC7 04:ACB7: 90        .byte $90   ; 
- D 1 - I - 0x012CC8 04:ACB8: E1        .byte con_se_cb_1_E0 + $01   ; 
- D 1 - I - 0x012CC9 04:ACB9: 10        .byte $10   ; 
- D 1 - I - 0x012CCA 04:ACBA: E1        .byte con_se_cb_1_E0 + $01   ; 
- D 1 - I - 0x012CCB 04:ACBB: 92        .byte $92   ; 
- D 1 - I - 0x012CCC 04:ACBC: E1        .byte con_se_cb_1_E0 + $01   ; 
- D 1 - I - 0x012CCD 04:ACBD: 20        .byte $20   ; 
- D 1 - I - 0x012CCE 04:ACBE: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x012CCF 04:ACBF: A0        .byte $A0   ; 
- D 1 - I - 0x012CD0 04:ACC0: E1        .byte con_se_cb_1_E0 + $01   ; 
- D 1 - I - 0x012CD1 04:ACC1: 20        .byte $20   ; 
- D 1 - I - 0x012CD2 04:ACC2: E1        .byte con_se_cb_1_E0 + $01   ; 
- D 1 - I - 0x012CD3 04:ACC3: A2        .byte $A2   ; 
- D 1 - I - 0x012CD4 04:ACC4: E1        .byte con_se_cb_1_E0 + $01   ; 
- D 1 - I - 0x012CD5 04:ACC5: 30        .byte $30   ; 
- D 1 - I - 0x012CD6 04:ACC6: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x012CD7 04:ACC7: B0        .byte $B0   ; 
- D 1 - I - 0x012CD8 04:ACC8: E1        .byte con_se_cb_1_E0 + $01   ; 
- D 1 - I - 0x012CD9 04:ACC9: 30        .byte $30   ; 
- D 1 - I - 0x012CDA 04:ACCA: E1        .byte con_se_cb_1_E0 + $01   ; 
- D 1 - I - 0x012CDB 04:ACCB: B2        .byte $B2   ; 
- D 1 - I - 0x012CDC 04:ACCC: F4        .byte con_se_cb_1_F0 + $04   ; 
- D 1 - I - 0x012CDD 04:ACCD: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x012CDE 04:ACCE: 70        .byte $70   ; 
- D 1 - I - 0x012CDF 04:ACCF: F3        .byte con_se_cb_1_F0 + $03   ; 
- D 1 - I - 0x012CE0 04:ACD0: E1        .byte con_se_cb_1_E0 + $01   ; 
- D 1 - I - 0x012CE1 04:ACD1: 00        .byte $00   ; 
- D 1 - I - 0x012CE2 04:ACD2: 70        .byte $70   ; 
- D 1 - I - 0x012CE3 04:ACD3: F2        .byte con_se_cb_1_F0 + $02   ; 
- D 1 - I - 0x012CE4 04:ACD4: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x012CE5 04:ACD5: 80        .byte $80   ; 
- D 1 - I - 0x012CE6 04:ACD6: E1        .byte con_se_cb_1_E0 + $01   ; 
- D 1 - I - 0x012CE7 04:ACD7: 10        .byte $10   ; 
- D 1 - I - 0x012CE8 04:ACD8: F1        .byte con_se_cb_1_F0 + $01   ; 
- D 1 - I - 0x012CE9 04:ACD9: 80        .byte $80   ; 
- D 1 - I - 0x012CEA 04:ACDA: FE        .byte con_se_cb_1_FE, $FF   ; 
- D 1 - I - 0x012CEC 04:ACDC: 9A AC     .word off_FE_AC9A



off_ch_02_0x012CEE_5D:
off_ch_02_0x012CEE_6A:
off_FE_ACDE:
- D 1 - I - 0x012CEE 04:ACDE: D8        .byte con_se_cb_1_D0 + $08, $12   ; 
- D 1 - I - 0x012CF0 04:ACE0: FB        .byte con_se_cb_1_FB   ; 
- D 1 - I - 0x012CF1 04:ACE1: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x012CF2 04:ACE2: 20        .byte $20   ; 
- D 1 - I - 0x012CF3 04:ACE3: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x012CF4 04:ACE4: 20        .byte $20   ; 
- D 1 - I - 0x012CF5 04:ACE5: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x012CF6 04:ACE6: 20        .byte $20   ; 
- D 1 - I - 0x012CF7 04:ACE7: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x012CF8 04:ACE8: 20        .byte $20   ; 
- D 1 - I - 0x012CF9 04:ACE9: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x012CFA 04:ACEA: 20        .byte $20   ; 
- D 1 - I - 0x012CFB 04:ACEB: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x012CFC 04:ACEC: 20        .byte $20   ; 
- D 1 - I - 0x012CFD 04:ACED: FE        .byte con_se_cb_1_FE, $04   ; 
- D 1 - I - 0x012CFF 04:ACEF: FB        .byte con_se_cb_1_FB   ; 
- D 1 - I - 0x012D00 04:ACF0: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x012D01 04:ACF1: 90        .byte $90   ; 
- D 1 - I - 0x012D02 04:ACF2: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x012D03 04:ACF3: 90        .byte $90   ; 
- D 1 - I - 0x012D04 04:ACF4: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x012D05 04:ACF5: 90        .byte $90   ; 
- D 1 - I - 0x012D06 04:ACF6: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x012D07 04:ACF7: 90        .byte $90   ; 
- D 1 - I - 0x012D08 04:ACF8: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x012D09 04:ACF9: 90        .byte $90   ; 
- D 1 - I - 0x012D0A 04:ACFA: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x012D0B 04:ACFB: 90        .byte $90   ; 
- D 1 - I - 0x012D0C 04:ACFC: FE        .byte con_se_cb_1_FE, $03   ; 
- D 1 - I - 0x012D0E 04:ACFE: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x012D0F 04:ACFF: 90        .byte $90   ; 
- D 1 - I - 0x012D10 04:AD00: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x012D11 04:AD01: 90        .byte $90   ; 
- D 1 - I - 0x012D12 04:AD02: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x012D13 04:AD03: 90        .byte $90   ; 
- D 1 - I - 0x012D14 04:AD04: 90        .byte $90   ; 
- D 1 - I - 0x012D15 04:AD05: 90        .byte $90   ; 
- D 1 - I - 0x012D16 04:AD06: 90        .byte $90   ; 
- D 1 - I - 0x012D17 04:AD07: FE        .byte con_se_cb_1_FE, $FF   ; 
- D 1 - I - 0x012D19 04:AD09: DE AC     .word off_FE_ACDE



off_ch_05_0x012D1B_5D:
off_ch_05_0x012D1B_6A:
off_FE_AD0B:
- D 1 - I - 0x012D1B 04:AD0B: D8        .byte $D8   ; 
- D 1 - I - 0x012D1C 04:AD0C: FB        .byte con_se_cb_1_FB   ; 
- D 1 - I - 0x012D1D 04:AD0D: D1        .byte $D1   ; 
- D 1 - I - 0x012D1E 04:AD0E: B0        .byte $B0   ; 
- D 1 - I - 0x012D1F 04:AD0F: D7        .byte $D7   ; 
- D 1 - I - 0x012D20 04:AD10: 20        .byte $20   ; 
- D 1 - I - 0x012D21 04:AD11: D8        .byte $D8   ; 
- D 1 - I - 0x012D22 04:AD12: 20        .byte $20   ; 
- D 1 - I - 0x012D23 04:AD13: B0        .byte $B0   ; 
- D 1 - I - 0x012D24 04:AD14: 10        .byte $10   ; 
- D 1 - I - 0x012D25 04:AD15: 40        .byte $40   ; 
- D 1 - I - 0x012D26 04:AD16: D1        .byte $D1   ; 
- D 1 - I - 0x012D27 04:AD17: B0        .byte $B0   ; 
- D 1 - I - 0x012D28 04:AD18: D7        .byte $D7   ; 
- D 1 - I - 0x012D29 04:AD19: 20        .byte $20   ; 
- D 1 - I - 0x012D2A 04:AD1A: FE        .byte con_se_cb_1_FE, $04   ; 
- D 1 - I - 0x012D2C 04:AD1C: D8        .byte $D8   ; 
- D 1 - I - 0x012D2D 04:AD1D: B0        .byte $B0   ; 
- D 1 - I - 0x012D2E 04:AD1E: 20        .byte $20   ; 
- D 1 - I - 0x012D2F 04:AD1F: B0        .byte $B0   ; 
- D 1 - I - 0x012D30 04:AD20: D1        .byte $D1   ; 
- D 1 - I - 0x012D31 04:AD21: B0        .byte $B0   ; 
- D 1 - I - 0x012D32 04:AD22: D7        .byte $D7   ; 
- D 1 - I - 0x012D33 04:AD23: 20        .byte $20   ; 
- D 1 - I - 0x012D34 04:AD24: D8        .byte $D8   ; 
- D 1 - I - 0x012D35 04:AD25: 10        .byte $10   ; 
- D 1 - I - 0x012D36 04:AD26: D1        .byte $D1   ; 
- D 1 - I - 0x012D37 04:AD27: B0        .byte $B0   ; 
- D 1 - I - 0x012D38 04:AD28: D7        .byte $D7   ; 
- D 1 - I - 0x012D39 04:AD29: 20        .byte $20   ; 
- D 1 - I - 0x012D3A 04:AD2A: D8        .byte $D8   ; 
- D 1 - I - 0x012D3B 04:AD2B: B0        .byte $B0   ; 
- D 1 - I - 0x012D3C 04:AD2C: 20        .byte $20   ; 
- D 1 - I - 0x012D3D 04:AD2D: B0        .byte $B0   ; 
- D 1 - I - 0x012D3E 04:AD2E: D1        .byte $D1   ; 
- D 1 - I - 0x012D3F 04:AD2F: 40        .byte $40   ; 
- D 1 - I - 0x012D40 04:AD30: D7        .byte $D7   ; 
- D 1 - I - 0x012D41 04:AD31: 20        .byte $20   ; 
- D 1 - I - 0x012D42 04:AD32: D8        .byte $D8   ; 
- D 1 - I - 0x012D43 04:AD33: B0        .byte $B0   ; 
- D 1 - I - 0x012D44 04:AD34: D1        .byte $D1   ; 
- D 1 - I - 0x012D45 04:AD35: 40        .byte $40   ; 
- D 1 - I - 0x012D46 04:AD36: D7        .byte $D7   ; 
- D 1 - I - 0x012D47 04:AD37: 20        .byte $20   ; 
- D 1 - I - 0x012D48 04:AD38: D8        .byte $D8   ; 
- D 1 - I - 0x012D49 04:AD39: B0        .byte $B0   ; 
- D 1 - I - 0x012D4A 04:AD3A: 20        .byte $20   ; 
- D 1 - I - 0x012D4B 04:AD3B: B0        .byte $B0   ; 
- D 1 - I - 0x012D4C 04:AD3C: 20        .byte $20   ; 
- D 1 - I - 0x012D4D 04:AD3D: B0        .byte $B0   ; 
- D 1 - I - 0x012D4E 04:AD3E: 20        .byte $20   ; 
- D 1 - I - 0x012D4F 04:AD3F: D4        .byte $D4   ; 
- D 1 - I - 0x012D50 04:AD40: 40        .byte $40   ; 
- D 1 - I - 0x012D51 04:AD41: 40        .byte $40   ; 
- D 1 - I - 0x012D52 04:AD42: D8        .byte $D8   ; 
- D 1 - I - 0x012D53 04:AD43: 40        .byte $40   ; 
- D 1 - I - 0x012D54 04:AD44: 40        .byte $40   ; 
- D 1 - I - 0x012D55 04:AD45: 40        .byte $40   ; 
- D 1 - I - 0x012D56 04:AD46: 40        .byte $40   ; 
- D 1 - I - 0x012D57 04:AD47: 40        .byte $40   ; 
- D 1 - I - 0x012D58 04:AD48: FE        .byte con_se_cb_1_FE, $FF   ; 
- D 1 - I - 0x012D5A 04:AD4A: 0B AD     .word off_FE_AD0B



off_ch_01_0x012D5C_6B:
off_FE_AD4C:
- D 1 - I - 0x012D5C 04:AD4C: D8        .byte con_se_cb_1_D0 + $08, $B7, con_9E25_03 + $80   ; 
- D 1 - I - 0x012D5F 04:AD4F: 73        .byte $73   ; 
- D 1 - I - 0x012D60 04:AD50: EB        .byte con_se_cb_1_EB, con_9E7B_68, $41   ; 
- D 1 - I - 0x012D63 04:AD53: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x012D64 04:AD54: 4F        .byte $4F   ; 
- D 1 - I - 0x012D65 04:AD55: 3B        .byte $3B   ; 
- D 1 - I - 0x012D66 04:AD56: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x012D67 04:AD57: B3        .byte $B3   ; 
- D 1 - I - 0x012D68 04:AD58: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x012D69 04:AD59: 2F        .byte $2F   ; 
- D 1 - I - 0x012D6A 04:AD5A: 1B        .byte $1B   ; 
- D 1 - I - 0x012D6B 04:AD5B: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x012D6C 04:AD5C: 93        .byte $93   ; 
- D 1 - I - 0x012D6D 04:AD5D: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x012D6E 04:AD5E: 0B        .byte $0B   ; 
- D 1 - I - 0x012D6F 04:AD5F: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x012D70 04:AD60: A3        .byte $A3   ; 
- D 1 - I - 0x012D71 04:AD61: B3        .byte $B3   ; 
- D 1 - I - 0x012D72 04:AD62: 83        .byte $83   ; 
- D 1 - I - 0x012D73 04:AD63: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x012D74 04:AD64: 53        .byte $53   ; 
- D 1 - I - 0x012D75 04:AD65: 33        .byte $33   ; 
- D 1 - I - 0x012D76 04:AD66: FE        .byte con_se_cb_1_FE, $FF   ; 
- D 1 - I - 0x012D78 04:AD68: 4C AD     .word off_FE_AD4C



off_ch_00_0x012D7A_6B:
off_FE_AD6A:
- D 1 - I - 0x012D7A 04:AD6A: D8        .byte con_se_cb_1_D0 + $08, $B6, con_9E25_04 + $80   ; 
- D 1 - I - 0x012D7D 04:AD6D: 46        .byte $46   ; 
- D 1 - I - 0x012D7E 04:AD6E: EC        .byte con_se_cb_1_EC, $02   ; 
- D 1 - I - 0x012D80 04:AD70: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x012D81 04:AD71: 91        .byte $91   ; 
- D 1 - I - 0x012D82 04:AD72: B1        .byte $B1   ; 
- D 1 - I - 0x012D83 04:AD73: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x012D84 04:AD74: 01        .byte $01   ; 
- D 1 - I - 0x012D85 04:AD75: 41        .byte $41   ; 
- D 1 - I - 0x012D86 04:AD76: 91        .byte $91   ; 
- D 1 - I - 0x012D87 04:AD77: B1        .byte $B1   ; 
- D 1 - I - 0x012D88 04:AD78: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x012D89 04:AD79: 01        .byte $01   ; 
- D 1 - I - 0x012D8A 04:AD7A: 41        .byte $41   ; 
- D 1 - I - 0x012D8B 04:AD7B: F4        .byte con_se_cb_1_F0 + $04   ; 
- D 1 - I - 0x012D8C 04:AD7C: 61        .byte $61   ; 
- D 1 - I - 0x012D8D 04:AD7D: F0        .byte con_se_cb_1_F0 + $00   ; 
- D 1 - I - 0x012D8E 04:AD7E: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x012D8F 04:AD7F: B1        .byte $B1   ; 
- D 1 - I - 0x012D90 04:AD80: 91        .byte $91   ; 
- D 1 - I - 0x012D91 04:AD81: 61        .byte $61   ; 
- D 1 - I - 0x012D92 04:AD82: 31        .byte $31   ; 
- D 1 - I - 0x012D93 04:AD83: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x012D94 04:AD84: B1        .byte $B1   ; 
- D 1 - I - 0x012D95 04:AD85: 91        .byte $91   ; 
- D 1 - I - 0x012D96 04:AD86: 61        .byte $61   ; 
- D 1 - I - 0x012D97 04:AD87: 71        .byte $71   ; 
- D 1 - I - 0x012D98 04:AD88: 91        .byte $91   ; 
- D 1 - I - 0x012D99 04:AD89: A1        .byte $A1   ; 
- D 1 - I - 0x012D9A 04:AD8A: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x012D9B 04:AD8B: 21        .byte $21   ; 
- D 1 - I - 0x012D9C 04:AD8C: 71        .byte $71   ; 
- D 1 - I - 0x012D9D 04:AD8D: 91        .byte $91   ; 
- D 1 - I - 0x012D9E 04:AD8E: A1        .byte $A1   ; 
- D 1 - I - 0x012D9F 04:AD8F: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x012DA0 04:AD90: 21        .byte $21   ; 
- D 1 - I - 0x012DA1 04:AD91: F4        .byte con_se_cb_1_F0 + $04   ; 
- D 1 - I - 0x012DA2 04:AD92: 41        .byte $41   ; 
- D 1 - I - 0x012DA3 04:AD93: F0        .byte con_se_cb_1_F0 + $00   ; 
- D 1 - I - 0x012DA4 04:AD94: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x012DA5 04:AD95: 91        .byte $91   ; 
- D 1 - I - 0x012DA6 04:AD96: 71        .byte $71   ; 
- D 1 - I - 0x012DA7 04:AD97: 41        .byte $41   ; 
- D 1 - I - 0x012DA8 04:AD98: 11        .byte $11   ; 
- D 1 - I - 0x012DA9 04:AD99: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x012DAA 04:AD9A: 91        .byte $91   ; 
- D 1 - I - 0x012DAB 04:AD9B: 71        .byte $71   ; 
- D 1 - I - 0x012DAC 04:AD9C: 41        .byte $41   ; 
- D 1 - I - 0x012DAD 04:AD9D: 51        .byte $51   ; 
- D 1 - I - 0x012DAE 04:AD9E: 71        .byte $71   ; 
- D 1 - I - 0x012DAF 04:AD9F: 81        .byte $81   ; 
- D 1 - I - 0x012DB0 04:ADA0: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x012DB1 04:ADA1: 01        .byte $01   ; 
- D 1 - I - 0x012DB2 04:ADA2: 51        .byte $51   ; 
- D 1 - I - 0x012DB3 04:ADA3: 71        .byte $71   ; 
- D 1 - I - 0x012DB4 04:ADA4: 81        .byte $81   ; 
- D 1 - I - 0x012DB5 04:ADA5: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x012DB6 04:ADA6: 01        .byte $01   ; 
- D 1 - I - 0x012DB7 04:ADA7: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x012DB8 04:ADA8: 41        .byte $41   ; 
- D 1 - I - 0x012DB9 04:ADA9: 51        .byte $51   ; 
- D 1 - I - 0x012DBA 04:ADAA: 81        .byte $81   ; 
- D 1 - I - 0x012DBB 04:ADAB: B1        .byte $B1   ; 
- D 1 - I - 0x012DBC 04:ADAC: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x012DBD 04:ADAD: 21        .byte $21   ; 
- D 1 - I - 0x012DBE 04:ADAE: 51        .byte $51   ; 
- D 1 - I - 0x012DBF 04:ADAF: 81        .byte $81   ; 
- D 1 - I - 0x012DC0 04:ADB0: B1        .byte $B1   ; 
- D 1 - I - 0x012DC1 04:ADB1: FE        .byte con_se_cb_1_FE, $FF   ; 
- D 1 - I - 0x012DC3 04:ADB3: 6A AD     .word off_FE_AD6A



off_ch_02_0x012DC5_6B:
off_FE_ADB5:
- D 1 - I - 0x012DC5 04:ADB5: D8        .byte con_se_cb_1_D0 + $08, $00   ; 
- D 1 - I - 0x012DC7 04:ADB7: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x012DC8 04:ADB8: 9F        .byte $9F   ; 
- D 1 - I - 0x012DC9 04:ADB9: BF        .byte $BF   ; 
- D 1 - I - 0x012DCA 04:ADBA: 7F        .byte $7F   ; 
- D 1 - I - 0x012DCB 04:ADBB: 9F        .byte $9F   ; 
- D 1 - I - 0x012DCC 04:ADBC: 5F        .byte $5F   ; 
- D 1 - I - 0x012DCD 04:ADBD: 47        .byte $47   ; 
- D 1 - I - 0x012DCE 04:ADBE: 87        .byte $87   ; 
- D 1 - I - 0x012DCF 04:ADBF: FE        .byte con_se_cb_1_FE, $FF   ; 
- D 1 - I - 0x012DD1 04:ADC1: B5 AD     .word off_FE_ADB5



off_ch_05_0x012DD3_6B_FF:
- D 1 - I - 0x012DD3 04:ADC3: FF        .byte con_se_cb_1_FF   ; 



off_ch_00_0x012DD4_6C:
off_FE_ADC4:
- D 1 - I - 0x012DD4 04:ADC4: DE        .byte con_se_cb_1_D0 + $0E, $78, con_9E25_03 + $80   ; 
- D 1 - I - 0x012DD7 04:ADC7: 11        .byte $11   ; 
- D 1 - I - 0x012DD8 04:ADC8: F1        .byte con_se_cb_1_F0 + $01   ; 
- D 1 - I - 0x012DD9 04:ADC9: EB        .byte con_se_cb_1_EB, con_9E7B_69, $43   ; 
- D 1 - I - 0x012DDC 04:ADCC: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x012DDD 04:ADCD: 8F        .byte $8F   ; 
- D 1 - I - 0x012DDE 04:ADCE: F5        .byte con_se_cb_1_F0 + $05   ; 
- D 1 - I - 0x012DDF 04:ADCF: E9        .byte con_se_cb_1_E9, $B1   ; 
- D 1 - I - 0x012DE1 04:ADD1: E6        .byte con_se_cb_1_E6, $01   ; 
- D 1 - I - 0x012DE3 04:ADD3: 89        .byte $89   ; 
- D 1 - I - 0x012DE4 04:ADD4: E6        .byte con_se_cb_1_E6, $09   ; 
- D 1 - I - 0x012DE6 04:ADD6: E8        .byte con_se_cb_1_E8, $30 + $06   ; 
- D 1 - I - 0x012DE8 04:ADD8: F2        .byte con_se_cb_1_F0 + $02   ; 
- D 1 - I - 0x012DE9 04:ADD9: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x012DEA 04:ADDA: 71        .byte $71   ; 
- D 1 - I - 0x012DEB 04:ADDB: ED        .byte con_se_cb_1_ED, $03   ; 
- D 1 - I - 0x012DED 04:ADDD: 81        .byte $81   ; 
- D 1 - I - 0x012DEE 04:ADDE: 71        .byte $71   ; 
- D 1 - I - 0x012DEF 04:ADDF: F1        .byte con_se_cb_1_F0 + $01   ; 
- D 1 - I - 0x012DF0 04:ADE0: 81        .byte $81   ; 
- D 1 - I - 0x012DF1 04:ADE1: 71        .byte $71   ; 
- D 1 - I - 0x012DF2 04:ADE2: F0        .byte con_se_cb_1_F0 + $00   ; 
- D 1 - I - 0x012DF3 04:ADE3: E8        .byte con_se_cb_1_E8, $30 + $07   ; 
- D 1 - I - 0x012DF5 04:ADE5: FB        .byte con_se_cb_1_FB   ; 
- D 1 - I - 0x012DF6 04:ADE6: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x012DF7 04:ADE7: 81        .byte $81   ; 
- D 1 - I - 0x012DF8 04:ADE8: 71        .byte $71   ; 
- D 1 - I - 0x012DF9 04:ADE9: FE        .byte con_se_cb_1_FE, $03   ; 
- D 1 - I - 0x012DFB 04:ADEB: ED        .byte con_se_cb_1_ED, $00   ; 
- D 1 - I - 0x012DFD 04:ADED: ED        .byte con_se_cb_1_ED, $00   ; 
- D 1 - I - 0x012DFF 04:ADEF: DE        .byte con_se_cb_1_D0 + $0E, $77, con_9E25_04 + $80   ; 
- D 1 - I - 0x012E02 04:ADF2: 23        .byte $23   ; 
- D 1 - I - 0x012E03 04:ADF3: F1        .byte con_se_cb_1_F0 + $01   ; 
- D 1 - I - 0x012E04 04:ADF4: EB        .byte con_se_cb_1_EB, con_9E7B_69, $43   ; 
- D 1 - I - 0x012E07 04:ADF7: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x012E08 04:ADF8: 8F        .byte $8F   ; 
- D 1 - I - 0x012E09 04:ADF9: F5        .byte con_se_cb_1_F0 + $05   ; 
- D 1 - I - 0x012E0A 04:ADFA: E9        .byte con_se_cb_1_E9, $B1   ; 
- D 1 - I - 0x012E0C 04:ADFC: E6        .byte con_se_cb_1_E6, $01   ; 
- D 1 - I - 0x012E0E 04:ADFE: 89        .byte $89   ; 
- D 1 - I - 0x012E0F 04:ADFF: E6        .byte con_se_cb_1_E6, $09   ; 
- D 1 - I - 0x012E11 04:AE01: E8        .byte con_se_cb_1_E8, $30 + $06   ; 
- D 1 - I - 0x012E13 04:AE03: F1        .byte con_se_cb_1_F0 + $01   ; 
- D 1 - I - 0x012E14 04:AE04: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x012E15 04:AE05: 71        .byte $71   ; 
- D 1 - I - 0x012E16 04:AE06: ED        .byte con_se_cb_1_ED, $03   ; 
- D 1 - I - 0x012E18 04:AE08: 81        .byte $81   ; 
- D 1 - I - 0x012E19 04:AE09: 71        .byte $71   ; 
- D 1 - I - 0x012E1A 04:AE0A: F0        .byte con_se_cb_1_F0 + $00   ; 
- D 1 - I - 0x012E1B 04:AE0B: 81        .byte $81   ; 
- D 1 - I - 0x012E1C 04:AE0C: 71        .byte $71   ; 
- D 1 - I - 0x012E1D 04:AE0D: F0        .byte con_se_cb_1_F0 + $00   ; 
- D 1 - I - 0x012E1E 04:AE0E: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x012E1F 04:AE0F: 81        .byte $81   ; 
- D 1 - I - 0x012E20 04:AE10: 41        .byte $41   ; 
- D 1 - I - 0x012E21 04:AE11: E8        .byte con_se_cb_1_E8, $40 + $08   ; 
- D 1 - I - 0x012E23 04:AE13: E8        .byte con_se_cb_1_E8, $30 + $04   ; 
- D 1 - I - 0x012E25 04:AE15: 03        .byte $03   ; 
- D 1 - I - 0x012E26 04:AE16: E8        .byte con_se_cb_1_E8, $40 + $05   ; 
- D 1 - I - 0x012E28 04:AE18: 10        .byte $10   ; 
- D 1 - I - 0x012E29 04:AE19: 20        .byte $20   ; 
- D 1 - I - 0x012E2A 04:AE1A: 30        .byte $30   ; 
- D 1 - I - 0x012E2B 04:AE1B: 40        .byte $40   ; 
- D 1 - I - 0x012E2C 04:AE1C: E9        .byte con_se_cb_1_E9, $00   ; 
- D 1 - I - 0x012E2E 04:AE1E: ED        .byte con_se_cb_1_ED, $00   ; 
- D 1 - I - 0x012E30 04:AE20: FE        .byte con_se_cb_1_FE, $FF   ; 
- D 1 - I - 0x012E32 04:AE22: C4 AD     .word off_FE_ADC4



off_ch_01_0x012E34_6C:
off_FE_AE24:
- D 1 - I - 0x012E34 04:AE24: D9        .byte con_se_cb_1_D0 + $09, $79, con_9E25_05 + $80   ; 
- D 1 - I - 0x012E37 04:AE27: 37        .byte $37   ; 
- D 1 - I - 0x012E38 04:AE28: E9        .byte con_se_cb_1_E9, $B1   ; 
- D 1 - I - 0x012E3A 04:AE2A: FB        .byte con_se_cb_1_FB   ; 
- D 1 - I - 0x012E3B 04:AE2B: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x012E3C 04:AE2C: 01        .byte $01   ; 
- D 1 - I - 0x012E3D 04:AE2D: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x012E3E 04:AE2E: B1        .byte $B1   ; 
- D 1 - I - 0x012E3F 04:AE2F: FE        .byte con_se_cb_1_FE, $04   ; 
- D 1 - I - 0x012E41 04:AE31: F1        .byte con_se_cb_1_F0 + $01   ; 
- D 1 - I - 0x012E42 04:AE32: FB        .byte con_se_cb_1_FB   ; 
- D 1 - I - 0x012E43 04:AE33: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x012E44 04:AE34: 01        .byte $01   ; 
- D 1 - I - 0x012E45 04:AE35: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x012E46 04:AE36: B1        .byte $B1   ; 
- D 1 - I - 0x012E47 04:AE37: FE        .byte con_se_cb_1_FE, $04   ; 
- D 1 - I - 0x012E49 04:AE39: F0        .byte con_se_cb_1_F0 + $00   ; 
- D 1 - I - 0x012E4A 04:AE3A: FB        .byte con_se_cb_1_FB   ; 
- D 1 - I - 0x012E4B 04:AE3B: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x012E4C 04:AE3C: 01        .byte $01   ; 
- D 1 - I - 0x012E4D 04:AE3D: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x012E4E 04:AE3E: B1        .byte $B1   ; 
- D 1 - I - 0x012E4F 04:AE3F: FE        .byte con_se_cb_1_FE, $04   ; 
- D 1 - I - 0x012E51 04:AE41: D9        .byte con_se_cb_1_D0 + $09, $78, con_9E25_05 + $80   ; 
- D 1 - I - 0x012E54 04:AE44: 45        .byte $45   ; 
- D 1 - I - 0x012E55 04:AE45: E9        .byte con_se_cb_1_E9, $B1   ; 
- D 1 - I - 0x012E57 04:AE47: FB        .byte con_se_cb_1_FB   ; 
- D 1 - I - 0x012E58 04:AE48: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x012E59 04:AE49: 01        .byte $01   ; 
- D 1 - I - 0x012E5A 04:AE4A: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x012E5B 04:AE4B: B1        .byte $B1   ; 
- D 1 - I - 0x012E5C 04:AE4C: FE        .byte con_se_cb_1_FE, $04   ; 
- D 1 - I - 0x012E5E 04:AE4E: F1        .byte con_se_cb_1_F0 + $01   ; 
- D 1 - I - 0x012E5F 04:AE4F: FB        .byte con_se_cb_1_FB   ; 
- D 1 - I - 0x012E60 04:AE50: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x012E61 04:AE51: 01        .byte $01   ; 
- D 1 - I - 0x012E62 04:AE52: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x012E63 04:AE53: B1        .byte $B1   ; 
- D 1 - I - 0x012E64 04:AE54: FE        .byte con_se_cb_1_FE, $04   ; 
- D 1 - I - 0x012E66 04:AE56: F0        .byte con_se_cb_1_F0 + $00   ; 
- D 1 - I - 0x012E67 04:AE57: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x012E68 04:AE58: 01        .byte $01   ; 
- D 1 - I - 0x012E69 04:AE59: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x012E6A 04:AE5A: B1        .byte $B1   ; 
- D 1 - I - 0x012E6B 04:AE5B: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x012E6C 04:AE5C: 01        .byte $01   ; 
- D 1 - I - 0x012E6D 04:AE5D: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x012E6E 04:AE5E: 81        .byte $81   ; 
- D 1 - I - 0x012E6F 04:AE5F: E8        .byte con_se_cb_1_E8, $20 + $04   ; 
- D 1 - I - 0x012E71 04:AE61: E8        .byte con_se_cb_1_E8, $40 + $06   ; 
- D 1 - I - 0x012E73 04:AE63: 43        .byte $43   ; 
- D 1 - I - 0x012E74 04:AE64: E8        .byte con_se_cb_1_E8, $40 + $05   ; 
- D 1 - I - 0x012E76 04:AE66: 50        .byte $50   ; 
- D 1 - I - 0x012E77 04:AE67: 60        .byte $60   ; 
- D 1 - I - 0x012E78 04:AE68: 70        .byte $70   ; 
- D 1 - I - 0x012E79 04:AE69: 80        .byte $80   ; 
- D 1 - I - 0x012E7A 04:AE6A: FE        .byte con_se_cb_1_FE, $FF   ; 
- D 1 - I - 0x012E7C 04:AE6C: 24 AE     .word off_FE_AE24



off_ch_02_0x012E7E_6C:
off_FE_AE6E:
- D 1 - I - 0x012E7E 04:AE6E: D9        .byte con_se_cb_1_D0 + $09, $00   ; 
- D 1 - I - 0x012E80 04:AE70: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x012E81 04:AE71: 5B        .byte $5B   ; 
- D 1 - I - 0x012E82 04:AE72: 49        .byte $49   ; 
- D 1 - I - 0x012E83 04:AE73: D1        .byte con_se_cb_1_D0 + $01, $00   ; 
- D 1 - I - 0x012E85 04:AE75: 55        .byte $55   ; 
- D 1 - I - 0x012E86 04:AE76: 65        .byte $65   ; 
- D 1 - I - 0x012E87 04:AE77: 75        .byte $75   ; 
- D 1 - I - 0x012E88 04:AE78: D9        .byte con_se_cb_1_D0 + $09, $00   ; 
- D 1 - I - 0x012E8A 04:AE7A: 89        .byte $89   ; 
- D 1 - I - 0x012E8B 04:AE7B: D1        .byte con_se_cb_1_D0 + $01, $00   ; 
- D 1 - I - 0x012E8D 04:AE7D: 72        .byte $72   ; 
- D 1 - I - 0x012E8E 04:AE7E: 62        .byte $62   ; 
- D 1 - I - 0x012E8F 04:AE7F: 52        .byte $52   ; 
- D 1 - I - 0x012E90 04:AE80: 42        .byte $42   ; 
- D 1 - I - 0x012E91 04:AE81: 32        .byte $32   ; 
- D 1 - I - 0x012E92 04:AE82: 22        .byte $22   ; 
- D 1 - I - 0x012E93 04:AE83: D9        .byte con_se_cb_1_D0 + $09, $00   ; 
- D 1 - I - 0x012E95 04:AE85: 19        .byte $19   ; 
- D 1 - I - 0x012E96 04:AE86: 30        .byte $30   ; 
- D 1 - I - 0x012E97 04:AE87: 40        .byte $40   ; 
- D 1 - I - 0x012E98 04:AE88: D9        .byte con_se_cb_1_D0 + $09, $00   ; 
- D 1 - I - 0x012E9A 04:AE8A: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x012E9B 04:AE8B: 5B        .byte $5B   ; 
- D 1 - I - 0x012E9C 04:AE8C: 49        .byte $49   ; 
- D 1 - I - 0x012E9D 04:AE8D: D1        .byte con_se_cb_1_D0 + $01, $00   ; 
- D 1 - I - 0x012E9F 04:AE8F: 55        .byte $55   ; 
- D 1 - I - 0x012EA0 04:AE90: 65        .byte $65   ; 
- D 1 - I - 0x012EA1 04:AE91: 75        .byte $75   ; 
- D 1 - I - 0x012EA2 04:AE92: D9        .byte con_se_cb_1_D0 + $09, $00   ; 
- D 1 - I - 0x012EA4 04:AE94: 89        .byte $89   ; 
- D 1 - I - 0x012EA5 04:AE95: D1        .byte con_se_cb_1_D0 + $01, $00   ; 
- D 1 - I - 0x012EA7 04:AE97: 72        .byte $72   ; 
- D 1 - I - 0x012EA8 04:AE98: 62        .byte $62   ; 
- D 1 - I - 0x012EA9 04:AE99: 52        .byte $52   ; 
- D 1 - I - 0x012EAA 04:AE9A: 42        .byte $42   ; 
- D 1 - I - 0x012EAB 04:AE9B: 32        .byte $32   ; 
- D 1 - I - 0x012EAC 04:AE9C: 22        .byte $22   ; 
- D 1 - I - 0x012EAD 04:AE9D: D9        .byte con_se_cb_1_D0 + $09, $19   ; 
- D 1 - I - 0x012EAF 04:AE9F: 11        .byte $11   ; 
- D 1 - I - 0x012EB0 04:AEA0: 51        .byte $51   ; 
- D 1 - I - 0x012EB1 04:AEA1: 13        .byte $13   ; 
- D 1 - I - 0x012EB2 04:AEA2: 30        .byte $30   ; 
- D 1 - I - 0x012EB3 04:AEA3: 40        .byte $40   ; 
- D 1 - I - 0x012EB4 04:AEA4: 50        .byte $50   ; 
- D 1 - I - 0x012EB5 04:AEA5: 60        .byte $60   ; 
- D 1 - I - 0x012EB6 04:AEA6: FE        .byte con_se_cb_1_FE, $FF   ; 
- D 1 - I - 0x012EB8 04:AEA8: 6E AE     .word off_FE_AE6E



off_ch_05_0x012EBA_6C_FF:
- D 1 - I - 0x012EBA 04:AEAA: FF        .byte con_se_cb_1_FF   ; 



off_ch_00_0x012EBB_68:
- D 1 - I - 0x012EBB 04:AEAB: D8        .byte con_se_cb_1_D0 + $08, $B4, con_9E25_23   ; 
- D 1 - I - 0x012EBE 04:AEAE: 24        .byte $24   ; 
- D 1 - I - 0x012EBF 04:AEAF: ED        .byte con_se_cb_1_ED, $01   ; 
- D 1 - I - 0x012EC1 04:AEB1: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x012EC2 04:AEB2: A3        .byte $A3   ; 
- D 1 - I - 0x012EC3 04:AEB3: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x012EC4 04:AEB4: 01        .byte $01   ; 
- D 1 - I - 0x012EC5 04:AEB5: 21        .byte $21   ; 
- D 1 - I - 0x012EC6 04:AEB6: 71        .byte $71   ; 
- D 1 - I - 0x012EC7 04:AEB7: ED        .byte con_se_cb_1_ED, $00   ; 
- D 1 - I - 0x012EC9 04:AEB9: D8        .byte con_se_cb_1_D0 + $08, $B1, con_9E25_27   ; 
- D 1 - I - 0x012ECC 04:AEBC: 34        .byte $34   ; 
- D 1 - I - 0x012ECD 04:AEBD: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x012ECE 04:AEBE: 21        .byte $21   ; 
- D 1 - I - 0x012ECF 04:AEBF: 01        .byte $01   ; 
- D 1 - I - 0x012ED0 04:AEC0: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x012ED1 04:AEC1: A1        .byte $A1   ; 
- D 1 - I - 0x012ED2 04:AEC2: F3        .byte con_se_cb_1_F0 + $03   ; 
- D 1 - I - 0x012ED3 04:AEC3: 9B        .byte $9B   ; 
- D 1 - I - 0x012ED4 04:AEC4: F2        .byte con_se_cb_1_F0 + $02   ; 
- D 1 - I - 0x012ED5 04:AEC5: 21        .byte $21   ; 
- D 1 - I - 0x012ED6 04:AEC6: 91        .byte $91   ; 
- D 1 - I - 0x012ED7 04:AEC7: 73        .byte $73   ; 
- D 1 - I - 0x012ED8 04:AEC8: 01        .byte $01   ; 
- D 1 - I - 0x012ED9 04:AEC9: 21        .byte $21   ; 
- D 1 - I - 0x012EDA 04:AECA: 43        .byte $43   ; 
- D 1 - I - 0x012EDB 04:AECB: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x012EDC 04:AECC: 71        .byte $71   ; 
- D 1 - I - 0x012EDD 04:AECD: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x012EDE 04:AECE: 01        .byte $01   ; 
- D 1 - I - 0x012EDF 04:AECF: EB        .byte con_se_cb_1_EB, con_9E7B_6A, $21   ; 
- D 1 - I - 0x012EE2 04:AED2: 73        .byte $73   ; 
- D 1 - I - 0x012EE3 04:AED3: 33        .byte $33   ; 
- D 1 - I - 0x012EE4 04:AED4: 53        .byte $53   ; 
- D 1 - I - 0x012EE5 04:AED5: 73        .byte $73   ; 
- D 1 - I - 0x012EE6 04:AED6: 55        .byte $55   ; 
- D 1 - I - 0x012EE7 04:AED7: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x012EE8 04:AED8: AD        .byte $AD   ; 
- D 1 - I - 0x012EE9 04:AED9: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x012EEA 04:AEDA: 13        .byte $13   ; 
- D 1 - I - 0x012EEB 04:AEDB: 43        .byte $43   ; 
- D 1 - I - 0x012EEC 04:AEDC: 77        .byte $77   ; 
- D 1 - I - 0x012EED 04:AEDD: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x012EEE 04:AEDE: 71        .byte $71   ; 
- D 1 - I - 0x012EEF 04:AEDF: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x012EF0 04:AEE0: 01        .byte $01   ; 
- D 1 - I - 0x012EF1 04:AEE1: 41        .byte $41   ; 
- D 1 - I - 0x012EF2 04:AEE2: 01        .byte $01   ; 
- D 1 - I - 0x012EF3 04:AEE3: 41        .byte $41   ; 
- D 1 - I - 0x012EF4 04:AEE4: 71        .byte $71   ; 
- D 1 - I - 0x012EF5 04:AEE5: D8        .byte con_se_cb_1_D0 + $08, $B2, con_9E25_28   ; 
- D 1 - I - 0x012EF8 04:AEE8: 12        .byte $12   ; 
- D 1 - I - 0x012EF9 04:AEE9: 63        .byte $63   ; 
- D 1 - I - 0x012EFA 04:AEEA: F2        .byte con_se_cb_1_F0 + $02   ; 
- D 1 - I - 0x012EFB 04:AEEB: 63        .byte $63   ; 
- D 1 - I - 0x012EFC 04:AEEC: F1        .byte con_se_cb_1_F0 + $01   ; 
- D 1 - I - 0x012EFD 04:AEED: 73        .byte $73   ; 
- D 1 - I - 0x012EFE 04:AEEE: F0        .byte con_se_cb_1_F0 + $00   ; 
- D 1 - I - 0x012EFF 04:AEEF: 93        .byte $93   ; 
- D 1 - I - 0x012F00 04:AEF0: EB        .byte con_se_cb_1_EB, $00   ; 
- D 1 - I - 0x012F02 04:AEF2: D8        .byte con_se_cb_1_D0 + $08, $76, con_9E25_02 + $80   ; 
- D 1 - I - 0x012F05 04:AEF5: 45        .byte $45   ; 
- D 1 - I - 0x012F06 04:AEF6: EC        .byte con_se_cb_1_EC, $01   ; 
- D 1 - I - 0x012F08 04:AEF8: EB        .byte con_se_cb_1_EB, con_9E7B_6B, $21   ; 
- D 1 - I - 0x012F0B 04:AEFB: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x012F0C 04:AEFC: 25        .byte $25   ; 
- D 1 - I - 0x012F0D 04:AEFD: 73        .byte $73   ; 
- D 1 - I - 0x012F0E 04:AEFE: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x012F0F 04:AEFF: 21        .byte $21   ; 
- D 1 - I - 0x012F10 04:AF00: 01        .byte $01   ; 
- D 1 - I - 0x012F11 04:AF01: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x012F12 04:AF02: A1        .byte $A1   ; 
- D 1 - I - 0x012F13 04:AF03: EB        .byte con_se_cb_1_EB, $00   ; 
- D 1 - I - 0x012F15 04:AF05: E8        .byte con_se_cb_1_E8, $40 + $05   ; 
- D 1 - I - 0x012F17 04:AF07: F1        .byte con_se_cb_1_F0 + $01   ; 
- D 1 - I - 0x012F18 04:AF08: 99        .byte $99   ; 
- D 1 - I - 0x012F19 04:AF09: EB        .byte con_se_cb_1_EB, con_9E7B_6B, $11   ; 
- D 1 - I - 0x012F1C 04:AF0C: F0        .byte con_se_cb_1_F0 + $00   ; 
- D 1 - I - 0x012F1D 04:AF0D: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x012F1E 04:AF0E: A1        .byte $A1   ; 
- D 1 - I - 0x012F1F 04:AF0F: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x012F20 04:AF10: 01        .byte $01   ; 
- D 1 - I - 0x012F21 04:AF11: 21        .byte $21   ; 
- D 1 - I - 0x012F22 04:AF12: 73        .byte $73   ; 
- D 1 - I - 0x012F23 04:AF13: 01        .byte $01   ; 
- D 1 - I - 0x012F24 04:AF14: 21        .byte $21   ; 
- D 1 - I - 0x012F25 04:AF15: 43        .byte $43   ; 
- D 1 - I - 0x012F26 04:AF16: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x012F27 04:AF17: 71        .byte $71   ; 
- D 1 - I - 0x012F28 04:AF18: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x012F29 04:AF19: 01        .byte $01   ; 
- D 1 - I - 0x012F2A 04:AF1A: 73        .byte $73   ; 
- D 1 - I - 0x012F2B 04:AF1B: 33        .byte $33   ; 
- D 1 - I - 0x012F2C 04:AF1C: 53        .byte $53   ; 
- D 1 - I - 0x012F2D 04:AF1D: 73        .byte $73   ; 
- D 1 - I - 0x012F2E 04:AF1E: 57        .byte $57   ; 
- D 1 - I - 0x012F2F 04:AF1F: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x012F30 04:AF20: AB        .byte $AB   ; 
- D 1 - I - 0x012F31 04:AF21: E8        .byte con_se_cb_1_E8, $20 + $04   ; 
- D 1 - I - 0x012F33 04:AF23: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x012F34 04:AF24: 13        .byte $13   ; 
- D 1 - I - 0x012F35 04:AF25: 43        .byte $43   ; 
- D 1 - I - 0x012F36 04:AF26: 77        .byte $77   ; 
- D 1 - I - 0x012F37 04:AF27: E9        .byte con_se_cb_1_E9, $74   ; 
- D 1 - I - 0x012F39 04:AF29: E8        .byte con_se_cb_1_E8, $30 + $04   ; 
- D 1 - I - 0x012F3B 04:AF2B: EC        .byte con_se_cb_1_EC, $03   ; 
- D 1 - I - 0x012F3D 04:AF2D: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x012F3E 04:AF2E: 71        .byte $71   ; 
- D 1 - I - 0x012F3F 04:AF2F: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x012F40 04:AF30: 01        .byte $01   ; 
- D 1 - I - 0x012F41 04:AF31: 41        .byte $41   ; 
- D 1 - I - 0x012F42 04:AF32: 01        .byte $01   ; 
- D 1 - I - 0x012F43 04:AF33: 41        .byte $41   ; 
- D 1 - I - 0x012F44 04:AF34: 71        .byte $71   ; 
- D 1 - I - 0x012F45 04:AF35: E9        .byte con_se_cb_1_E9, $00   ; 
- D 1 - I - 0x012F47 04:AF37: 63        .byte $63   ; 
- D 1 - I - 0x012F48 04:AF38: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x012F49 04:AF39: 93        .byte $93   ; 
- D 1 - I - 0x012F4A 04:AF3A: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x012F4B 04:AF3B: 23        .byte $23   ; 
- D 1 - I - 0x012F4C 04:AF3C: 63        .byte $63   ; 
- D 1 - I - 0x012F4D 04:AF3D: D8        .byte con_se_cb_1_D0 + $08, $B6, con_9E25_03 + $80   ; 
- D 1 - I - 0x012F50 04:AF40: 28        .byte $28   ; 
- D 1 - I - 0x012F51 04:AF41: E9        .byte con_se_cb_1_E9, $B4   ; 
- D 1 - I - 0x012F53 04:AF43: EC        .byte con_se_cb_1_EC, $02   ; 
- D 1 - I - 0x012F55 04:AF45: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x012F56 04:AF46: 71        .byte $71   ; 
- D 1 - I - 0x012F57 04:AF47: 71        .byte $71   ; 
- D 1 - I - 0x012F58 04:AF48: 71        .byte $71   ; 
- D 1 - I - 0x012F59 04:AF49: 71        .byte $71   ; 
- D 1 - I - 0x012F5A 04:AF4A: 01        .byte $01   ; 
- D 1 - I - 0x012F5B 04:AF4B: 01        .byte $01   ; 
- D 1 - I - 0x012F5C 04:AF4C: 01        .byte $01   ; 
- D 1 - I - 0x012F5D 04:AF4D: 01        .byte $01   ; 
- D 1 - I - 0x012F5E 04:AF4E: FB        .byte con_se_cb_1_FB   ; 
- D 1 - I - 0x012F5F 04:AF4F: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x012F60 04:AF50: 91        .byte $91   ; 
- D 1 - I - 0x012F61 04:AF51: 91        .byte $91   ; 
- D 1 - I - 0x012F62 04:AF52: FE        .byte con_se_cb_1_FE, $04   ; 
- D 1 - I - 0x012F64 04:AF54: F1        .byte con_se_cb_1_F0 + $01   ; 
- D 1 - I - 0x012F65 04:AF55: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x012F66 04:AF56: A1        .byte $A1   ; 
- D 1 - I - 0x012F67 04:AF57: 21        .byte $21   ; 
- D 1 - I - 0x012F68 04:AF58: 91        .byte $91   ; 
- D 1 - I - 0x012F69 04:AF59: 21        .byte $21   ; 
- D 1 - I - 0x012F6A 04:AF5A: 71        .byte $71   ; 
- D 1 - I - 0x012F6B 04:AF5B: 21        .byte $21   ; 
- D 1 - I - 0x012F6C 04:AF5C: 51        .byte $51   ; 
- D 1 - I - 0x012F6D 04:AF5D: 21        .byte $21   ; 
- D 1 - I - 0x012F6E 04:AF5E: 31        .byte $31   ; 
- D 1 - I - 0x012F6F 04:AF5F: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x012F70 04:AF60: 91        .byte $91   ; 
- D 1 - I - 0x012F71 04:AF61: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x012F72 04:AF62: 01        .byte $01   ; 
- D 1 - I - 0x012F73 04:AF63: 31        .byte $31   ; 
- D 1 - I - 0x012F74 04:AF64: 21        .byte $21   ; 
- D 1 - I - 0x012F75 04:AF65: 01        .byte $01   ; 
- D 1 - I - 0x012F76 04:AF66: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x012F77 04:AF67: A1        .byte $A1   ; 
- D 1 - I - 0x012F78 04:AF68: 91        .byte $91   ; 
- D 1 - I - 0x012F79 04:AF69: E9        .byte con_se_cb_1_E9, $00   ; 
- D 1 - I - 0x012F7B 04:AF6B: EC        .byte con_se_cb_1_EC, $00   ; 
- D 1 - I - 0x012F7D 04:AF6D: D8        .byte con_se_cb_1_D0 + $08, $B2, con_9E25_01 + $80   ; 
- D 1 - I - 0x012F80 04:AF70: 00        .byte $00   ; 
- D 1 - I - 0x012F81 04:AF71: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x012F82 04:AF72: 73        .byte $73   ; 
- D 1 - I - 0x012F83 04:AF73: D8        .byte con_se_cb_1_D0 + $08, $72, con_9E25_27   ; 
- D 1 - I - 0x012F86 04:AF76: 58        .byte $58   ; 
- D 1 - I - 0x012F87 04:AF77: EB        .byte con_se_cb_1_EB, con_9E7B_6B, $23   ; 
- D 1 - I - 0x012F8A 04:AF7A: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x012F8B 04:AF7B: 23        .byte $23   ; 
- D 1 - I - 0x012F8C 04:AF7C: 73        .byte $73   ; 
- D 1 - I - 0x012F8D 04:AF7D: 93        .byte $93   ; 
- D 1 - I - 0x012F8E 04:AF7E: A7        .byte $A7   ; 
- D 1 - I - 0x012F8F 04:AF7F: 93        .byte $93   ; 
- D 1 - I - 0x012F90 04:AF80: A3        .byte $A3   ; 
- D 1 - I - 0x012F91 04:AF81: EB        .byte con_se_cb_1_EB, $00   ; 
- D 1 - I - 0x012F93 04:AF83: 71        .byte $71   ; 
- D 1 - I - 0x012F94 04:AF84: 01        .byte $01   ; 
- D 1 - I - 0x012F95 04:AF85: 71        .byte $71   ; 
- D 1 - I - 0x012F96 04:AF86: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x012F97 04:AF87: 03        .byte $03   ; 
- D 1 - I - 0x012F98 04:AF88: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x012F99 04:AF89: 71        .byte $71   ; 
- D 1 - I - 0x012F9A 04:AF8A: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x012F9B 04:AF8B: 01        .byte $01   ; 
- D 1 - I - 0x012F9C 04:AF8C: 73        .byte $73   ; 
- D 1 - I - 0x012F9D 04:AF8D: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x012F9E 04:AF8E: 71        .byte $71   ; 
- D 1 - I - 0x012F9F 04:AF8F: A1        .byte $A1   ; 
- D 1 - I - 0x012FA0 04:AF90: 31        .byte $31   ; 
- D 1 - I - 0x012FA1 04:AF91: 51        .byte $51   ; 
- D 1 - I - 0x012FA2 04:AF92: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x012FA3 04:AF93: 91        .byte $91   ; 
- D 1 - I - 0x012FA4 04:AF94: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x012FA5 04:AF95: 01        .byte $01   ; 
- D 1 - I - 0x012FA6 04:AF96: 51        .byte $51   ; 
- D 1 - I - 0x012FA7 04:AF97: EC        .byte con_se_cb_1_EC, $00   ; 
- D 1 - I - 0x012FA9 04:AF99: D8        .byte con_se_cb_1_D0 + $08, $72, con_9E25_28   ; 
- D 1 - I - 0x012FAC 04:AF9C: 23        .byte $23   ; 
- D 1 - I - 0x012FAD 04:AF9D: EC        .byte con_se_cb_1_EC, $02   ; 
- D 1 - I - 0x012FAF 04:AF9F: E9        .byte con_se_cb_1_E9, $74   ; 
- D 1 - I - 0x012FB1 04:AFA1: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x012FB2 04:AFA2: A1        .byte $A1   ; 
- D 1 - I - 0x012FB3 04:AFA3: 71        .byte $71   ; 
- D 1 - I - 0x012FB4 04:AFA4: A1        .byte $A1   ; 
- D 1 - I - 0x012FB5 04:AFA5: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x012FB6 04:AFA6: 21        .byte $21   ; 
- D 1 - I - 0x012FB7 04:AFA7: 71        .byte $71   ; 
- D 1 - I - 0x012FB8 04:AFA8: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x012FB9 04:AFA9: A1        .byte $A1   ; 
- D 1 - I - 0x012FBA 04:AFAA: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x012FBB 04:AFAB: 21        .byte $21   ; 
- D 1 - I - 0x012FBC 04:AFAC: 73        .byte $73   ; 
- D 1 - I - 0x012FBD 04:AFAD: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x012FBE 04:AFAE: 71        .byte $71   ; 
- D 1 - I - 0x012FBF 04:AFAF: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x012FC0 04:AFB0: 21        .byte $21   ; 
- D 1 - I - 0x012FC1 04:AFB1: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x012FC2 04:AFB2: 71        .byte $71   ; 
- D 1 - I - 0x012FC3 04:AFB3: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x012FC4 04:AFB4: 71        .byte $71   ; 
- D 1 - I - 0x012FC5 04:AFB5: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x012FC6 04:AFB6: 71        .byte $71   ; 
- D 1 - I - 0x012FC7 04:AFB7: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x012FC8 04:AFB8: 21        .byte $21   ; 
- D 1 - I - 0x012FC9 04:AFB9: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x012FCA 04:AFBA: 71        .byte $71   ; 
- D 1 - I - 0x012FCB 04:AFBB: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x012FCC 04:AFBC: 71        .byte $71   ; 
- D 1 - I - 0x012FCD 04:AFBD: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x012FCE 04:AFBE: 71        .byte $71   ; 
- D 1 - I - 0x012FCF 04:AFBF: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x012FD0 04:AFC0: 01        .byte $01   ; 
- D 1 - I - 0x012FD1 04:AFC1: 73        .byte $73   ; 
- D 1 - I - 0x012FD2 04:AFC2: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x012FD3 04:AFC3: 71        .byte $71   ; 
- D 1 - I - 0x012FD4 04:AFC4: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x012FD5 04:AFC5: 01        .byte $01   ; 
- D 1 - I - 0x012FD6 04:AFC6: 21        .byte $21   ; 
- D 1 - I - 0x012FD7 04:AFC7: 31        .byte $31   ; 
- D 1 - I - 0x012FD8 04:AFC8: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x012FD9 04:AFC9: 71        .byte $71   ; 
- D 1 - I - 0x012FDA 04:AFCA: A1        .byte $A1   ; 
- D 1 - I - 0x012FDB 04:AFCB: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x012FDC 04:AFCC: 31        .byte $31   ; 
- D 1 - I - 0x012FDD 04:AFCD: 51        .byte $51   ; 
- D 1 - I - 0x012FDE 04:AFCE: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x012FDF 04:AFCF: 91        .byte $91   ; 
- D 1 - I - 0x012FE0 04:AFD0: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x012FE1 04:AFD1: 01        .byte $01   ; 
- D 1 - I - 0x012FE2 04:AFD2: 51        .byte $51   ; 
- D 1 - I - 0x012FE3 04:AFD3: E8        .byte con_se_cb_1_E8, $20 + $02   ; 
- D 1 - I - 0x012FE5 04:AFD5: 23        .byte $23   ; 
- D 1 - I - 0x012FE6 04:AFD6: E6        .byte con_se_cb_1_E6, $09   ; 
- D 1 - I - 0x012FE8 04:AFD8: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x012FE9 04:AFD9: 73        .byte $73   ; 
- D 1 - I - 0x012FEA 04:AFDA: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x012FEB 04:AFDB: 03        .byte $03   ; 
- D 1 - I - 0x012FEC 04:AFDC: E6        .byte con_se_cb_1_E6, $0C   ; 
- D 1 - I - 0x012FEE 04:AFDE: F3        .byte con_se_cb_1_F0 + $03   ; 
- D 1 - I - 0x012FEF 04:AFDF: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x012FF0 04:AFE0: 73        .byte $73   ; 
- D 1 - I - 0x012FF1 04:AFE1: DD        .byte con_se_cb_1_D0 + $0D, $73, con_9E25_2A   ; 
- D 1 - I - 0x012FF4 04:AFE4: 15        .byte $15   ; 
- D 1 - I - 0x012FF5 04:AFE5: 2C        .byte $2C   ; 
- D 1 - I - 0x012FF6 04:AFE6: FF        .byte con_se_cb_1_FF   ; 



off_ch_01_0x012FF7_68:
- D 1 - I - 0x012FF7 04:AFE7: D8        .byte con_se_cb_1_D0 + $08, $B1, con_9E25_28   ; 
- D 1 - I - 0x012FFA 04:AFEA: 12        .byte $12   ; 
- D 1 - I - 0x012FFB 04:AFEB: EB        .byte con_se_cb_1_EB, con_9E7B_6A, $31   ; 
- D 1 - I - 0x012FFE 04:AFEE: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x012FFF 04:AFEF: A1        .byte $A1   ; 
- D 1 - I - 0x013000 04:AFF0: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x013001 04:AFF1: 01        .byte $01   ; 
- D 1 - I - 0x013002 04:AFF2: 21        .byte $21   ; 
- D 1 - I - 0x013003 04:AFF3: E7        .byte con_se_cb_1_E7, con_9E25_27   ; 
- D 1 - I - 0x013005 04:AFF5: E8        .byte con_se_cb_1_E8, $50 + $06   ; 
- D 1 - I - 0x013007 04:AFF7: 7D        .byte $7D   ; 
- D 1 - I - 0x013008 04:AFF8: 23        .byte $23   ; 
- D 1 - I - 0x013009 04:AFF9: 03        .byte $03   ; 
- D 1 - I - 0x01300A 04:AFFA: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x01300B 04:AFFB: A3        .byte $A3   ; 
- D 1 - I - 0x01300C 04:AFFC: E8        .byte con_se_cb_1_E8, $20 + $07   ; 
- D 1 - I - 0x01300E 04:AFFE: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x01300F 04:AFFF: 25        .byte $25   ; 
- D 1 - I - 0x013010 04:B000: 00        .byte $00   ; 
- D 1 - I - 0x013011 04:B001: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x013012 04:B002: B0        .byte $B0   ; 
- D 1 - I - 0x013013 04:B003: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x013014 04:B004: 0B        .byte $0B   ; 
- D 1 - I - 0x013015 04:B005: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x013016 04:B006: 73        .byte $73   ; 
- D 1 - I - 0x013017 04:B007: 93        .byte $93   ; 
- D 1 - I - 0x013018 04:B008: A3        .byte $A3   ; 
- D 1 - I - 0x013019 04:B009: A5        .byte $A5   ; 
- D 1 - I - 0x01301A 04:B00A: 51        .byte $51   ; 
- D 1 - I - 0x01301B 04:B00B: 57        .byte $57   ; 
- D 1 - I - 0x01301C 04:B00C: 43        .byte $43   ; 
- D 1 - I - 0x01301D 04:B00D: 73        .byte $73   ; 
- D 1 - I - 0x01301E 04:B00E: 93        .byte $93   ; 
- D 1 - I - 0x01301F 04:B00F: A3        .byte $A3   ; 
- D 1 - I - 0x013020 04:B010: E8        .byte con_se_cb_1_E8, $40 + $05   ; 
- D 1 - I - 0x013022 04:B012: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x013023 04:B013: 0D        .byte $0D   ; 
- D 1 - I - 0x013024 04:B014: E8        .byte con_se_cb_1_E8, $20 + $07   ; 
- D 1 - I - 0x013026 04:B016: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x013027 04:B017: A0        .byte $A0   ; 
- D 1 - I - 0x013028 04:B018: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x013029 04:B019: 00        .byte $00   ; 
- D 1 - I - 0x01302A 04:B01A: 21        .byte $21   ; 
- D 1 - I - 0x01302B 04:B01B: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x01302C 04:B01C: 21        .byte $21   ; 
- D 1 - I - 0x01302D 04:B01D: 91        .byte $91   ; 
- D 1 - I - 0x01302E 04:B01E: 21        .byte $21   ; 
- D 1 - I - 0x01302F 04:B01F: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x013030 04:B020: 21        .byte $21   ; 
- D 1 - I - 0x013031 04:B021: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x013032 04:B022: 21        .byte $21   ; 
- D 1 - I - 0x013033 04:B023: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x013034 04:B024: 01        .byte $01   ; 
- D 1 - I - 0x013035 04:B025: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x013036 04:B026: 21        .byte $21   ; 
- D 1 - I - 0x013037 04:B027: D8        .byte con_se_cb_1_D0 + $08, $B1, con_9E25_28   ; 
- D 1 - I - 0x01303A 04:B02A: 12        .byte $12   ; 
- D 1 - I - 0x01303B 04:B02B: EB        .byte con_se_cb_1_EB, con_9E7B_6A, $31   ; 
- D 1 - I - 0x01303E 04:B02E: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x01303F 04:B02F: A1        .byte $A1   ; 
- D 1 - I - 0x013040 04:B030: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x013041 04:B031: 01        .byte $01   ; 
- D 1 - I - 0x013042 04:B032: 21        .byte $21   ; 
- D 1 - I - 0x013043 04:B033: E7        .byte con_se_cb_1_E7, con_9E25_27   ; 
- D 1 - I - 0x013045 04:B035: E8        .byte con_se_cb_1_E8, $50 + $06   ; 
- D 1 - I - 0x013047 04:B037: 7D        .byte $7D   ; 
- D 1 - I - 0x013048 04:B038: 23        .byte $23   ; 
- D 1 - I - 0x013049 04:B039: 03        .byte $03   ; 
- D 1 - I - 0x01304A 04:B03A: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x01304B 04:B03B: A3        .byte $A3   ; 
- D 1 - I - 0x01304C 04:B03C: E8        .byte con_se_cb_1_E8, $20 + $07   ; 
- D 1 - I - 0x01304E 04:B03E: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x01304F 04:B03F: 25        .byte $25   ; 
- D 1 - I - 0x013050 04:B040: 00        .byte $00   ; 
- D 1 - I - 0x013051 04:B041: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x013052 04:B042: B0        .byte $B0   ; 
- D 1 - I - 0x013053 04:B043: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x013054 04:B044: 0B        .byte $0B   ; 
- D 1 - I - 0x013055 04:B045: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x013056 04:B046: 73        .byte $73   ; 
- D 1 - I - 0x013057 04:B047: 93        .byte $93   ; 
- D 1 - I - 0x013058 04:B048: A3        .byte $A3   ; 
- D 1 - I - 0x013059 04:B049: A5        .byte $A5   ; 
- D 1 - I - 0x01305A 04:B04A: 51        .byte $51   ; 
- D 1 - I - 0x01305B 04:B04B: 57        .byte $57   ; 
- D 1 - I - 0x01305C 04:B04C: 43        .byte $43   ; 
- D 1 - I - 0x01305D 04:B04D: 73        .byte $73   ; 
- D 1 - I - 0x01305E 04:B04E: 93        .byte $93   ; 
- D 1 - I - 0x01305F 04:B04F: A3        .byte $A3   ; 
- D 1 - I - 0x013060 04:B050: E8        .byte con_se_cb_1_E8, $40 + $05   ; 
- D 1 - I - 0x013062 04:B052: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x013063 04:B053: 0D        .byte $0D   ; 
- D 1 - I - 0x013064 04:B054: E8        .byte con_se_cb_1_E8, $20 + $07   ; 
- D 1 - I - 0x013066 04:B056: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x013067 04:B057: A0        .byte $A0   ; 
- D 1 - I - 0x013068 04:B058: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x013069 04:B059: 00        .byte $00   ; 
- D 1 - I - 0x01306A 04:B05A: 2B        .byte $2B   ; 
- D 1 - I - 0x01306B 04:B05B: 01        .byte $01   ; 
- D 1 - I - 0x01306C 04:B05C: 21        .byte $21   ; 
- D 1 - I - 0x01306D 04:B05D: EB        .byte con_se_cb_1_EB, $00   ; 
- D 1 - I - 0x01306F 04:B05F: D8        .byte con_se_cb_1_D0 + $08, $B7, con_9E25_03 + $80   ; 
- D 1 - I - 0x013072 04:B062: 34        .byte $34   ; 
- D 1 - I - 0x013073 04:B063: EB        .byte con_se_cb_1_EB, con_9E7B_6B, $11   ; 
- D 1 - I - 0x013076 04:B066: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x013077 04:B067: 35        .byte $35   ; 
- D 1 - I - 0x013078 04:B068: 21        .byte $21   ; 
- D 1 - I - 0x013079 04:B069: E8        .byte con_se_cb_1_E8, $40 + $05   ; 
- D 1 - I - 0x01307B 04:B06B: 01        .byte $01   ; 
- D 1 - I - 0x01307C 04:B06C: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x01307D 04:B06D: A1        .byte $A1   ; 
- D 1 - I - 0x01307E 04:B06E: 91        .byte $91   ; 
- D 1 - I - 0x01307F 04:B06F: 71        .byte $71   ; 
- D 1 - I - 0x013080 04:B070: 61        .byte $61   ; 
- D 1 - I - 0x013081 04:B071: 21        .byte $21   ; 
- D 1 - I - 0x013082 04:B072: 61        .byte $61   ; 
- D 1 - I - 0x013083 04:B073: 91        .byte $91   ; 
- D 1 - I - 0x013084 04:B074: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x013085 04:B075: 01        .byte $01   ; 
- D 1 - I - 0x013086 04:B076: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x013087 04:B077: 91        .byte $91   ; 
- D 1 - I - 0x013088 04:B078: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x013089 04:B079: 01        .byte $01   ; 
- D 1 - I - 0x01308A 04:B07A: 31        .byte $31   ; 
- D 1 - I - 0x01308B 04:B07B: E8        .byte con_se_cb_1_E8, $30 + $07   ; 
- D 1 - I - 0x01308D 04:B07D: 23        .byte $23   ; 
- D 1 - I - 0x01308E 04:B07E: 03        .byte $03   ; 
- D 1 - I - 0x01308F 04:B07F: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x013090 04:B080: A3        .byte $A3   ; 
- D 1 - I - 0x013091 04:B081: 93        .byte $93   ; 
- D 1 - I - 0x013092 04:B082: E8        .byte con_se_cb_1_E8, $10 + $01   ; 
- D 1 - I - 0x013094 04:B084: 75        .byte $75   ; 
- D 1 - I - 0x013095 04:B085: 90        .byte $90   ; 
- D 1 - I - 0x013096 04:B086: 70        .byte $70   ; 
- D 1 - I - 0x013097 04:B087: E8        .byte con_se_cb_1_E8, $30 + $04   ; 
- D 1 - I - 0x013099 04:B089: 67        .byte $67   ; 
- D 1 - I - 0x01309A 04:B08A: D8        .byte con_se_cb_1_D0 + $08, $B7, con_9E25_03 + $80   ; 
- D 1 - I - 0x01309D 04:B08D: 68        .byte $68   ; 
- D 1 - I - 0x01309E 04:B08E: EC        .byte con_se_cb_1_EC, $02   ; 
- D 1 - I - 0x0130A0 04:B090: E9        .byte con_se_cb_1_E9, $B4   ; 
- D 1 - I - 0x0130A2 04:B092: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x0130A3 04:B093: 71        .byte $71   ; 
- D 1 - I - 0x0130A4 04:B094: 21        .byte $21   ; 
- D 1 - I - 0x0130A5 04:B095: 71        .byte $71   ; 
- D 1 - I - 0x0130A6 04:B096: 21        .byte $21   ; 
- D 1 - I - 0x0130A7 04:B097: 91        .byte $91   ; 
- D 1 - I - 0x0130A8 04:B098: 21        .byte $21   ; 
- D 1 - I - 0x0130A9 04:B099: 71        .byte $71   ; 
- D 1 - I - 0x0130AA 04:B09A: 91        .byte $91   ; 
- D 1 - I - 0x0130AB 04:B09B: A1        .byte $A1   ; 
- D 1 - I - 0x0130AC 04:B09C: 21        .byte $21   ; 
- D 1 - I - 0x0130AD 04:B09D: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x0130AE 04:B09E: 21        .byte $21   ; 
- D 1 - I - 0x0130AF 04:B09F: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x0130B0 04:B0A0: 21        .byte $21   ; 
- D 1 - I - 0x0130B1 04:B0A1: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x0130B2 04:B0A2: 01        .byte $01   ; 
- D 1 - I - 0x0130B3 04:B0A3: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x0130B4 04:B0A4: 21        .byte $21   ; 
- D 1 - I - 0x0130B5 04:B0A5: A1        .byte $A1   ; 
- D 1 - I - 0x0130B6 04:B0A6: 21        .byte $21   ; 
- D 1 - I - 0x0130B7 04:B0A7: E8        .byte con_se_cb_1_E8, $30 + $05   ; 
- D 1 - I - 0x0130B9 04:B0A9: EB        .byte con_se_cb_1_EB, con_9E7B_6C, $11   ; 
- D 1 - I - 0x0130BC 04:B0AC: E8        .byte con_se_cb_1_E8, $30 + $04   ; 
- D 1 - I - 0x0130BE 04:B0AE: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x0130BF 04:B0AF: 25        .byte $25   ; 
- D 1 - I - 0x0130C0 04:B0B0: E8        .byte con_se_cb_1_E8, $40 + $06   ; 
- D 1 - I - 0x0130C2 04:B0B2: 00        .byte $00   ; 
- D 1 - I - 0x0130C3 04:B0B3: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x0130C4 04:B0B4: B0        .byte $B0   ; 
- D 1 - I - 0x0130C5 04:B0B5: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x0130C6 04:B0B6: 01        .byte $01   ; 
- D 1 - I - 0x0130C7 04:B0B7: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x0130C8 04:B0B8: 01        .byte $01   ; 
- D 1 - I - 0x0130C9 04:B0B9: 71        .byte $71   ; 
- D 1 - I - 0x0130CA 04:B0BA: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x0130CB 04:B0BB: 01        .byte $01   ; 
- D 1 - I - 0x0130CC 04:B0BC: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x0130CD 04:B0BD: A1        .byte $A1   ; 
- D 1 - I - 0x0130CE 04:B0BE: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x0130CF 04:B0BF: A1        .byte $A1   ; 
- D 1 - I - 0x0130D0 04:B0C0: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x0130D1 04:B0C1: 31        .byte $31   ; 
- D 1 - I - 0x0130D2 04:B0C2: A1        .byte $A1   ; 
- D 1 - I - 0x0130D3 04:B0C3: 91        .byte $91   ; 
- D 1 - I - 0x0130D4 04:B0C4: 01        .byte $01   ; 
- D 1 - I - 0x0130D5 04:B0C5: 51        .byte $51   ; 
- D 1 - I - 0x0130D6 04:B0C6: 91        .byte $91   ; 
- D 1 - I - 0x0130D7 04:B0C7: D8        .byte con_se_cb_1_D0 + $08, $B7, con_9E25_03 + $80   ; 
- D 1 - I - 0x0130DA 04:B0CA: 68        .byte $68   ; 
- D 1 - I - 0x0130DB 04:B0CB: EC        .byte con_se_cb_1_EC, $02   ; 
- D 1 - I - 0x0130DD 04:B0CD: E9        .byte con_se_cb_1_E9, $B4   ; 
- D 1 - I - 0x0130DF 04:B0CF: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x0130E0 04:B0D0: 71        .byte $71   ; 
- D 1 - I - 0x0130E1 04:B0D1: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x0130E2 04:B0D2: 21        .byte $21   ; 
- D 1 - I - 0x0130E3 04:B0D3: 71        .byte $71   ; 
- D 1 - I - 0x0130E4 04:B0D4: 21        .byte $21   ; 
- D 1 - I - 0x0130E5 04:B0D5: 91        .byte $91   ; 
- D 1 - I - 0x0130E6 04:B0D6: 21        .byte $21   ; 
- D 1 - I - 0x0130E7 04:B0D7: 71        .byte $71   ; 
- D 1 - I - 0x0130E8 04:B0D8: 91        .byte $91   ; 
- D 1 - I - 0x0130E9 04:B0D9: A1        .byte $A1   ; 
- D 1 - I - 0x0130EA 04:B0DA: 21        .byte $21   ; 
- D 1 - I - 0x0130EB 04:B0DB: E1        .byte con_se_cb_1_E0 + $01   ; 
- D 1 - I - 0x0130EC 04:B0DC: 21        .byte $21   ; 
- D 1 - I - 0x0130ED 04:B0DD: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x0130EE 04:B0DE: 21        .byte $21   ; 
- D 1 - I - 0x0130EF 04:B0DF: E1        .byte con_se_cb_1_E0 + $01   ; 
- D 1 - I - 0x0130F0 04:B0E0: 01        .byte $01   ; 
- D 1 - I - 0x0130F1 04:B0E1: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x0130F2 04:B0E2: 21        .byte $21   ; 
- D 1 - I - 0x0130F3 04:B0E3: A1        .byte $A1   ; 
- D 1 - I - 0x0130F4 04:B0E4: 21        .byte $21   ; 
- D 1 - I - 0x0130F5 04:B0E5: E8        .byte con_se_cb_1_E8, $20 + $03   ; 
- D 1 - I - 0x0130F7 04:B0E7: EB        .byte con_se_cb_1_EB, con_9E7B_6A, $11   ; 
- D 1 - I - 0x0130FA 04:B0EA: E1        .byte con_se_cb_1_E0 + $01   ; 
- D 1 - I - 0x0130FB 04:B0EB: 25        .byte $25   ; 
- D 1 - I - 0x0130FC 04:B0EC: E8        .byte con_se_cb_1_E8, $30 + $04   ; 
- D 1 - I - 0x0130FE 04:B0EE: 00        .byte $00   ; 
- D 1 - I - 0x0130FF 04:B0EF: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x013100 04:B0F0: B0        .byte $B0   ; 
- D 1 - I - 0x013101 04:B0F1: F1        .byte con_se_cb_1_F0 + $01   ; 
- D 1 - I - 0x013102 04:B0F2: E1        .byte con_se_cb_1_E0 + $01   ; 
- D 1 - I - 0x013103 04:B0F3: 01        .byte $01   ; 
- D 1 - I - 0x013104 04:B0F4: F0        .byte con_se_cb_1_F0 + $00   ; 
- D 1 - I - 0x013105 04:B0F5: D8        .byte con_se_cb_1_D0 + $08, $B6, con_9E25_03 + $80   ; 
- D 1 - I - 0x013108 04:B0F8: 46        .byte $46   ; 
- D 1 - I - 0x013109 04:B0F9: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x01310A 04:B0FA: 01        .byte $01   ; 
- D 1 - I - 0x01310B 04:B0FB: 71        .byte $71   ; 
- D 1 - I - 0x01310C 04:B0FC: E1        .byte con_se_cb_1_E0 + $01   ; 
- D 1 - I - 0x01310D 04:B0FD: 01        .byte $01   ; 
- D 1 - I - 0x01310E 04:B0FE: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x01310F 04:B0FF: A1        .byte $A1   ; 
- D 1 - I - 0x013110 04:B100: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x013111 04:B101: A1        .byte $A1   ; 
- D 1 - I - 0x013112 04:B102: E2        .byte con_se_cb_1_E0 + $02   ; 
- D 1 - I - 0x013113 04:B103: 31        .byte $31   ; 
- D 1 - I - 0x013114 04:B104: A1        .byte $A1   ; 
- D 1 - I - 0x013115 04:B105: 91        .byte $91   ; 
- D 1 - I - 0x013116 04:B106: 01        .byte $01   ; 
- D 1 - I - 0x013117 04:B107: 51        .byte $51   ; 
- D 1 - I - 0x013118 04:B108: 91        .byte $91   ; 
- D 1 - I - 0x013119 04:B109: E8        .byte con_se_cb_1_E8, $00 + $00   ; 
- D 1 - I - 0x01311B 04:B10B: 73        .byte $73   ; 
- D 1 - I - 0x01311C 04:B10C: D9        .byte con_se_cb_1_D0 + $09, $B2, con_9E25_28   ; 
- D 1 - I - 0x01311F 04:B10F: 11        .byte $11   ; 
- D 1 - I - 0x013120 04:B110: EB        .byte con_se_cb_1_EB, con_9E7B_6A, $21   ; 
- D 1 - I - 0x013123 04:B113: 03        .byte $03   ; 
- D 1 - I - 0x013124 04:B114: 23        .byte $23   ; 
- D 1 - I - 0x013125 04:B115: E6        .byte con_se_cb_1_E6, $0C   ; 
- D 1 - I - 0x013127 04:B117: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x013128 04:B118: 93        .byte $93   ; 
- D 1 - I - 0x013129 04:B119: E6        .byte con_se_cb_1_E6, $0A   ; 
- D 1 - I - 0x01312B 04:B11B: B0        .byte $B0   ; 
- D 1 - I - 0x01312C 04:B11C: 90        .byte $90   ; 
- D 1 - I - 0x01312D 04:B11D: E7        .byte con_se_cb_1_E7, con_9E25_27   ; 
- D 1 - I - 0x01312F 04:B11F: E6        .byte con_se_cb_1_E6, $0C   ; 
- D 1 - I - 0x013131 04:B121: E8        .byte con_se_cb_1_E8, $00 + $00   ; 
- D 1 - I - 0x013133 04:B123: BC        .byte $BC   ; 
- D 1 - I - 0x013134 04:B124: FF        .byte con_se_cb_1_FF   ; 



off_ch_02_0x013135_68:
- D 1 - I - 0x013135 04:B125: D8        .byte con_se_cb_1_D0 + $08, $00   ; 
- D 1 - I - 0x013137 04:B127: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x013138 04:B128: 7A        .byte $7A   ; 
- D 1 - I - 0x013139 04:B129: C0        .byte con_se_cb_1_C0 + $00   ; 
- D 1 - I - 0x01313A 04:B12A: 73        .byte $73   ; 
- D 1 - I - 0x01313B 04:B12B: 5B        .byte $5B   ; 
- D 1 - I - 0x01313C 04:B12C: 71        .byte $71   ; 
- D 1 - I - 0x01313D 04:B12D: 51        .byte $51   ; 
- D 1 - I - 0x01313E 04:B12E: 4A        .byte $4A   ; 
- D 1 - I - 0x01313F 04:B12F: C0        .byte con_se_cb_1_C0 + $00   ; 
- D 1 - I - 0x013140 04:B130: 43        .byte $43   ; 
- D 1 - I - 0x013141 04:B131: 35        .byte $35   ; 
- D 1 - I - 0x013142 04:B132: A3        .byte $A3   ; 
- D 1 - I - 0x013143 04:B133: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x013144 04:B134: 71        .byte $71   ; 
- D 1 - I - 0x013145 04:B135: 51        .byte $51   ; 
- D 1 - I - 0x013146 04:B136: 31        .byte $31   ; 
- D 1 - I - 0x013147 04:B137: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x013148 04:B138: 2F        .byte $2F   ; 
- D 1 - I - 0x013149 04:B139: 19        .byte $19   ; 
- D 1 - I - 0x01314A 04:B13A: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x01314B 04:B13B: 13        .byte $13   ; 
- D 1 - I - 0x01314C 04:B13C: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x01314D 04:B13D: 11        .byte $11   ; 
- D 1 - I - 0x01314E 04:B13E: 27        .byte $27   ; 
- D 1 - I - 0x01314F 04:B13F: 97        .byte $97   ; 
- D 1 - I - 0x013150 04:B140: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x013151 04:B141: 21        .byte $21   ; 
- D 1 - I - 0x013152 04:B142: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x013153 04:B143: 91        .byte $91   ; 
- D 1 - I - 0x013154 04:B144: 23        .byte $23   ; 
- D 1 - I - 0x013155 04:B145: 43        .byte $43   ; 
- D 1 - I - 0x013156 04:B146: 63        .byte $63   ; 
- D 1 - I - 0x013157 04:B147: D8        .byte con_se_cb_1_D0 + $08, $16   ; 
- D 1 - I - 0x013159 04:B149: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x01315A 04:B14A: 73        .byte $73   ; 
- D 1 - I - 0x01315B 04:B14B: 73        .byte $73   ; 
- D 1 - I - 0x01315C 04:B14C: 73        .byte $73   ; 
- D 1 - I - 0x01315D 04:B14D: 71        .byte $71   ; 
- D 1 - I - 0x01315E 04:B14E: 71        .byte $71   ; 
- D 1 - I - 0x01315F 04:B14F: 53        .byte $53   ; 
- D 1 - I - 0x013160 04:B150: 53        .byte $53   ; 
- D 1 - I - 0x013161 04:B151: 53        .byte $53   ; 
- D 1 - I - 0x013162 04:B152: 53        .byte $53   ; 
- D 1 - I - 0x013163 04:B153: 43        .byte $43   ; 
- D 1 - I - 0x013164 04:B154: 43        .byte $43   ; 
- D 1 - I - 0x013165 04:B155: 43        .byte $43   ; 
- D 1 - I - 0x013166 04:B156: 41        .byte $41   ; 
- D 1 - I - 0x013167 04:B157: 41        .byte $41   ; 
- D 1 - I - 0x013168 04:B158: 33        .byte $33   ; 
- D 1 - I - 0x013169 04:B159: 33        .byte $33   ; 
- D 1 - I - 0x01316A 04:B15A: 33        .byte $33   ; 
- D 1 - I - 0x01316B 04:B15B: 33        .byte $33   ; 
- D 1 - I - 0x01316C 04:B15C: 23        .byte $23   ; 
- D 1 - I - 0x01316D 04:B15D: 23        .byte $23   ; 
- D 1 - I - 0x01316E 04:B15E: 23        .byte $23   ; 
- D 1 - I - 0x01316F 04:B15F: 23        .byte $23   ; 
- D 1 - I - 0x013170 04:B160: 13        .byte $13   ; 
- D 1 - I - 0x013171 04:B161: 13        .byte $13   ; 
- D 1 - I - 0x013172 04:B162: 13        .byte $13   ; 
- D 1 - I - 0x013173 04:B163: 13        .byte $13   ; 
- D 1 - I - 0x013174 04:B164: FB        .byte con_se_cb_1_FB   ; 
- D 1 - I - 0x013175 04:B165: 23        .byte $23   ; 
- D 1 - I - 0x013176 04:B166: FE        .byte con_se_cb_1_FE, $06   ; 
- D 1 - I - 0x013178 04:B168: 21        .byte $21   ; 
- D 1 - I - 0x013179 04:B169: 91        .byte $91   ; 
- D 1 - I - 0x01317A 04:B16A: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x01317B 04:B16B: 21        .byte $21   ; 
- D 1 - I - 0x01317C 04:B16C: 11        .byte $11   ; 
- D 1 - I - 0x01317D 04:B16D: D8        .byte con_se_cb_1_D0 + $08, $09   ; 
- D 1 - I - 0x01317F 04:B16F: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x013180 04:B170: 01        .byte $01   ; 
- D 1 - I - 0x013181 04:B171: 01        .byte $01   ; 
- D 1 - I - 0x013182 04:B172: 01        .byte $01   ; 
- D 1 - I - 0x013183 04:B173: 01        .byte $01   ; 
- D 1 - I - 0x013184 04:B174: 31        .byte $31   ; 
- D 1 - I - 0x013185 04:B175: 31        .byte $31   ; 
- D 1 - I - 0x013186 04:B176: 31        .byte $31   ; 
- D 1 - I - 0x013187 04:B177: 31        .byte $31   ; 
- D 1 - I - 0x013188 04:B178: 21        .byte $21   ; 
- D 1 - I - 0x013189 04:B179: 21        .byte $21   ; 
- D 1 - I - 0x01318A 04:B17A: 21        .byte $21   ; 
- D 1 - I - 0x01318B 04:B17B: 21        .byte $21   ; 
- D 1 - I - 0x01318C 04:B17C: 61        .byte $61   ; 
- D 1 - I - 0x01318D 04:B17D: 61        .byte $61   ; 
- D 1 - I - 0x01318E 04:B17E: 61        .byte $61   ; 
- D 1 - I - 0x01318F 04:B17F: 61        .byte $61   ; 
- D 1 - I - 0x013190 04:B180: D8        .byte con_se_cb_1_D0 + $08, $17   ; 
- D 1 - I - 0x013192 04:B182: 73        .byte $73   ; 
- D 1 - I - 0x013193 04:B183: 53        .byte $53   ; 
- D 1 - I - 0x013194 04:B184: 33        .byte $33   ; 
- D 1 - I - 0x013195 04:B185: 23        .byte $23   ; 
- D 1 - I - 0x013196 04:B186: 03        .byte $03   ; 
- D 1 - I - 0x013197 04:B187: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x013198 04:B188: 93        .byte $93   ; 
- D 1 - I - 0x013199 04:B189: E3        .byte con_se_cb_1_E0 + $03   ; 
- D 1 - I - 0x01319A 04:B18A: 23        .byte $23   ; 
- D 1 - I - 0x01319B 04:B18B: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x01319C 04:B18C: 23        .byte $23   ; 
- D 1 - I - 0x01319D 04:B18D: D8        .byte con_se_cb_1_D0 + $08, $00   ; 
- D 1 - I - 0x01319F 04:B18F: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x0131A0 04:B190: 7F        .byte $7F   ; 
- D 1 - I - 0x0131A1 04:B191: 5D        .byte $5D   ; 
- D 1 - I - 0x0131A2 04:B192: 70        .byte $70   ; 
- D 1 - I - 0x0131A3 04:B193: 50        .byte $50   ; 
- D 1 - I - 0x0131A4 04:B194: 4F        .byte $4F   ; 
- D 1 - I - 0x0131A5 04:B195: 37        .byte $37   ; 
- D 1 - I - 0x0131A6 04:B196: 57        .byte $57   ; 
- D 1 - I - 0x0131A7 04:B197: D8        .byte con_se_cb_1_D0 + $08, $00   ; 
- D 1 - I - 0x0131A9 04:B199: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x0131AA 04:B19A: 7F        .byte $7F   ; 
- D 1 - I - 0x0131AB 04:B19B: 5D        .byte $5D   ; 
- D 1 - I - 0x0131AC 04:B19C: 70        .byte $70   ; 
- D 1 - I - 0x0131AD 04:B19D: 50        .byte $50   ; 
- D 1 - I - 0x0131AE 04:B19E: 4F        .byte $4F   ; 
- D 1 - I - 0x0131AF 04:B19F: 37        .byte $37   ; 
- D 1 - I - 0x0131B0 04:B1A0: 57        .byte $57   ; 
- D 1 - I - 0x0131B1 04:B1A1: 7D        .byte $7D   ; 
- D 1 - I - 0x0131B2 04:B1A2: D4        .byte con_se_cb_1_D0 + $04, $00   ; 
- D 1 - I - 0x0131B4 04:B1A4: E4        .byte con_se_cb_1_E0 + $04   ; 
- D 1 - I - 0x0131B5 04:B1A5: 70        .byte $70   ; 
- D 1 - I - 0x0131B6 04:B1A6: 50        .byte $50   ; 
- D 1 - I - 0x0131B7 04:B1A7: 40        .byte $40   ; 
- D 1 - I - 0x0131B8 04:B1A8: 30        .byte $30   ; 
- D 1 - I - 0x0131B9 04:B1A9: 20        .byte $20   ; 
- D 1 - I - 0x0131BA 04:B1AA: 00        .byte $00   ; 
- D 1 - I - 0x0131BB 04:B1AB: E5        .byte con_se_cb_1_E0 + $05   ; 
- D 1 - I - 0x0131BC 04:B1AC: A0        .byte $A0   ; 
- D 1 - I - 0x0131BD 04:B1AD: 90        .byte $90   ; 
- D 1 - I - 0x0131BE 04:B1AE: DC        .byte con_se_cb_1_D0 + $0C, $00   ; 
- D 1 - I - 0x0131C0 04:B1B0: E5        .byte con_se_cb_1_E0 + $05   ; 
- D 1 - I - 0x0131C1 04:B1B1: 7E        .byte $7E   ; 
- D 1 - I - 0x0131C2 04:B1B2: FF        .byte con_se_cb_1_FF   ; 



off_ch_05_0x0131C3_68_FF:
- D 1 - I - 0x0131C3 04:B1B3: FF        .byte con_se_cb_1_FF   ; 



sub_0x0131C4:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x0131C4 04:B1B4: A5 C4     LDA ram_00C4
C - - - - - 0x0131C6 04:B1B6: 05 C5     ORA ram_00C5
C - - - - - 0x0131C8 04:B1B8: D0 2A     BNE bra_B1E4
C - - - - - 0x0131CA 04:B1BA: A5 3B     LDA ram_player
C - - - - - 0x0131CC 04:B1BC: 49 01     EOR #$01
C - - - - - 0x0131CE 04:B1BE: A8        TAY
C - - - - - 0x0131CF 04:B1BF: B9 39 00  LDA ram_0039,Y
C - - - - - 0x0131D2 04:B1C2: 30 20     BMI bra_B1E4
C - - - - - 0x0131D4 04:B1C4: AD 65 05  LDA ram_plr_state
C - - - - - 0x0131D7 04:B1C7: C9 2C     CMP #con_plr_state_2C
C - - - - - 0x0131D9 04:B1C9: F0 19     BEQ bra_B1E4
C - - - - - 0x0131DB 04:B1CB: C9 2E     CMP #con_plr_state_death
C - - - - - 0x0131DD 04:B1CD: F0 15     BEQ bra_B1E4
C - - - - - 0x0131DF 04:B1CF: A5 68     LDA ram_0068
C - - - - - 0x0131E1 04:B1D1: 30 0D     BMI bra_B1E0
C - - - - - 0x0131E3 04:B1D3: 20 E6 B1  JSR sub_B1E6_save_some_values
C - - - - - 0x0131E6 04:B1D6: A9 0B     LDA #con_002A_0B
bra_B1D8:
C - - - - - 0x0131E8 04:B1D8: 85 2A     STA ram_002A_script
C - - - - - 0x0131EA 04:B1DA: A9 00     LDA #$00
C - - - - - 0x0131EC 04:B1DC: 85 6B     STA ram_006B_subscript
C - - - - - 0x0131EE 04:B1DE: 38        SEC
C - - - - - 0x0131EF 04:B1DF: 60        RTS
bra_B1E0:
C - - - - - 0x0131F0 04:B1E0: A9 0C     LDA #con_002A_0C
C - - - - - 0x0131F2 04:B1E2: D0 F4     BNE bra_B1D8    ; jmp
bra_B1E4:
C - - - - - 0x0131F4 04:B1E4: 18        CLC
C - - - - - 0x0131F5 04:B1E5: 60        RTS



sub_B1E6_save_some_values:
; will be restored at 0x001692
C - - - - - 0x0131F6 04:B1E6: A5 3F     LDA ram_003F_copy_irq_handler
C - - - - - 0x0131F8 04:B1E8: 85 A6     STA ram_00A6_copy_003F_copy_irq_handler
C - - - - - 0x0131FA 04:B1EA: A5 41     LDA ram_0041_scanline
C - - - - - 0x0131FC 04:B1EC: 85 A7     STA ram_00A7_copy_0041_scanline
C - - - - - 0x0131FE 04:B1EE: A5 42     LDA ram_0042
C - - - - - 0x013200 04:B1F0: 85 A8     STA ram_00A8_copy_0042
C - - - - - 0x013202 04:B1F2: A5 40     LDA ram_for_5204
C - - - - - 0x013204 04:B1F4: 85 A9     STA ram_00A9_copy_for_5204
C - - - - - 0x013206 04:B1F6: A5 2A     LDA ram_002A_script
C - - - - - 0x013208 04:B1F8: 85 AA     STA ram_00AA_copy_002A_script
C - - - - - 0x01320A 04:B1FA: 60        RTS



sub_0x01320B:
C - - - - - 0x01320B 04:B1FB: 20 13 B2  JSR sub_B213_change_state_when_switching_players
C - - - - - 0x01320E 04:B1FE: A5 3A     LDA ram_partner
C - - - - - 0x013210 04:B200: C9 02     CMP #$02
C - - - - - 0x013212 04:B202: D0 0C     BNE bra_B210_RTS
C - - - - - 0x013214 04:B204: A4 3B     LDY ram_player
C - - - - - 0x013216 04:B206: B9 11 B2  LDA tbl_B211_pos_Y_hi,Y
C - - - - - 0x013219 04:B209: 18        CLC
C - - - - - 0x01321A 04:B20A: 6D 1C 04  ADC ram_plr_pos_Y_hi
C - - - - - 0x01321D 04:B20D: 8D 1C 04  STA ram_plr_pos_Y_hi
bra_B210_RTS:
C - - - - - 0x013220 04:B210: 60        RTS



tbl_B211_pos_Y_hi:
- D 1 - - - 0x013221 04:B211: 04        .byte $04   ; 00 
- D 1 - - - 0x013222 04:B212: FC        .byte $FC   ; 01 



sub_B213_change_state_when_switching_players:
C - - - - - 0x013223 04:B213: A4 3A     LDY ram_partner
C - - - - - 0x013225 04:B215: 88        DEY
C - - - - - 0x013226 04:B216: 98        TYA
C - - - - - 0x013227 04:B217: 0A        ASL
C - - - - - 0x013228 04:B218: 0A        ASL
C - - - - - 0x013229 04:B219: 85 00     STA ram_0000_temp
C - - - - - 0x01322B 04:B21B: A5 3B     LDA ram_player
C - - - - - 0x01322D 04:B21D: 0A        ASL
C - - - - - 0x01322E 04:B21E: 18        CLC
C - - - - - 0x01322F 04:B21F: 65 00     ADC ram_0000_temp
C - - - - - 0x013231 04:B221: A8        TAY
C - - - - - 0x013232 04:B222: B9 69 B2  LDA tbl_B269_state_converter,Y
C - - - - - 0x013235 04:B225: 85 08     STA ram_0008_t018_data
C - - - - - 0x013237 04:B227: B9 6A B2  LDA tbl_B269_state_converter + $01,Y
C - - - - - 0x01323A 04:B22A: 85 09     STA ram_0008_t018_data + $01
C - - - - - 0x01323C 04:B22C: AD 65 05  LDA ram_plr_state
C - - - - - 0x01323F 04:B22F: 4A        LSR
C - - - - - 0x013240 04:B230: A8        TAY
C - - - - - 0x013241 04:B231: B1 08     LDA (ram_0008_t018_data),Y
C - - - - - 0x013243 04:B233: 8D 65 05  STA ram_plr_state
C - - - - - 0x013246 04:B236: F0 2B     BEQ bra_B263    ; if con_plr_state_00
C - - - - - 0x013248 04:B238: C9 12     CMP #con_plr_state_idle_on_stairs
C - - - - - 0x01324A 04:B23A: D0 2C     BNE bra_B268_RTS
C - - - - - 0x01324C 04:B23C: A9 00     LDA #$00
C - - - - - 0x01324E 04:B23E: 8D 13 04  STA ram_obj_anim_id + $13
C - - - - - 0x013251 04:B241: 8D 30 06  STA ram_061D_obj + $13
C - - - - - 0x013254 04:B244: AD A8 04  LDA ram_plr_facing
C - - - - - 0x013257 04:B247: F0 07     BEQ bra_B250_facing_right
C - - - - - 0x013259 04:B249: AD EF 05  LDA ram_05EF_plr
C - - - - - 0x01325C 04:B24C: F0 09     BEQ bra_B257
C - - - - - 0x01325E 04:B24E: D0 0D     BNE bra_B25D    ; jmp
bra_B250_facing_right:
- - - - - - 0x013260 04:B250: AD EF 05  LDA ram_05EF_plr
- - - - - - 0x013263 04:B253: D0 02     BNE bra_B257
- - - - - - 0x013265 04:B255: F0 06     BEQ bra_B25D    ; jmp
bra_B257:
- - - - - - 0x013267 04:B257: A9 0A     LDA #$0A
- - - - - - 0x013269 04:B259: 8D 00 04  STA ram_plr_anim_id
- - - - - - 0x01326C 04:B25C: 60        RTS
bra_B25D:
C - - - - - 0x01326D 04:B25D: A9 0C     LDA #$0C
C - - - - - 0x01326F 04:B25F: 8D 00 04  STA ram_plr_anim_id
C - - - - - 0x013272 04:B262: 60        RTS
bra_B263:
C - - - - - 0x013273 04:B263: A9 02     LDA #$02
C - - - - - 0x013275 04:B265: 8D 00 04  STA ram_plr_anim_id
bra_B268_RTS:
C - - - - - 0x013278 04:B268: 60        RTS



tbl_B269_state_converter:
- D 1 - - - 0x013279 04:B269: B5 B2     .word off_B2B5_00_from_Trevor_to_Sypha
- D 1 - - - 0x01327B 04:B26B: CF B2     .word off_B2CF_01_from_Sypha_to_Trevor
- D 1 - - - 0x01327D 04:B26D: 75 B2     .word off_B275_02_from_Trevor_to_Grant
- D 1 - - - 0x01327F 04:B26F: 8F B2     .word off_B28F_03_from_Grant_to_Trevor
- D 1 - - - 0x013281 04:B271: E9 B2     .word off_B2E9_04_from_Trevor_to_Alucard
- D 1 - - - 0x013283 04:B273: 03 B3     .word off_B303_05_from_Alucard_to_Trevor



off_B275_02_from_Trevor_to_Grant:
- - - - - - 0x013285 04:B275: 00        .byte con_plr_state_00   ; 00 
- D 1 - I - 0x013286 04:B276: 02        .byte con_plr_state_idle_on_ground   ; 02 
- D 1 - I - 0x013287 04:B277: 04        .byte con_plr_state_move_on_ground   ; 04 
- - - - - - 0x013288 04:B278: 00        .byte con_plr_state_00   ; 06 
- - - - - - 0x013289 04:B279: 00        .byte con_plr_state_00   ; 08 
- - - - - - 0x01328A 04:B27A: 0A        .byte con_plr_state_duck   ; 0A 
- D 1 - I - 0x01328B 04:B27B: 00        .byte con_plr_state_00   ; 0C 
- - - - - - 0x01328C 04:B27C: 0E        .byte con_plr_state_move_towards_stairs   ; 0E 
- - - - - - 0x01328D 04:B27D: 10        .byte con_plr_state_attach_to_stairs   ; 10 
- - - - - - 0x01328E 04:B27E: 12        .byte con_plr_state_idle_on_stairs   ; 12 
- - - - - - 0x01328F 04:B27F: 14        .byte con_plr_state_move_on_stairs   ; 14 
- - - - - - 0x013290 04:B280: 16        .byte con_plr_state_16   ; 16 
- - - - - - 0x013291 04:B281: 00        .byte con_plr_state_00   ; 18 
- D 1 - I - 0x013292 04:B282: 00        .byte con_plr_state_00   ; 1A 
- - - - - - 0x013293 04:B283: 00        .byte con_plr_state_00   ; 1C 
- - - - - - 0x013294 04:B284: 12        .byte con_plr_state_idle_on_stairs   ; 1E 
- - - - - - 0x013295 04:B285: 00        .byte con_plr_state_00   ; 20 
- - - - - - 0x013296 04:B286: 00        .byte con_plr_state_00   ; 22 
- - - - - - 0x013297 04:B287: 12        .byte con_plr_state_idle_on_stairs   ; 24 
- D 1 - I - 0x013298 04:B288: 26        .byte con_plr_state_knockback   ; 26 
- - - - - - 0x013299 04:B289: 28        .byte con_plr_state_28   ; 28 
- - - - - - 0x01329A 04:B28A: 2A        .byte con_plr_state_2A   ; 2A 
- - - - - - 0x01329B 04:B28B: 2C        .byte con_plr_state_2C   ; 2C 
- - - - - - 0x01329C 04:B28C: 2E        .byte con_plr_state_death   ; 2E 
- - - - - - 0x01329D 04:B28D: 00        .byte con_plr_state_00   ; 30 
- - - - - - 0x01329E 04:B28E: 00        .byte con_plr_state_00   ; 32 



off_B28F_03_from_Grant_to_Trevor:
- - - - - - 0x01329F 04:B28F: 00        .byte con_plr_state_00   ; 00 
- D 1 - I - 0x0132A0 04:B290: 02        .byte con_plr_state_idle_on_ground   ; 02 
- D 1 - I - 0x0132A1 04:B291: 04        .byte con_plr_state_move_on_ground   ; 04 
- - - - - - 0x0132A2 04:B292: 00        .byte con_plr_state_00   ; 06 
- D 1 - I - 0x0132A3 04:B293: 00        .byte con_plr_state_00   ; 08 
- - - - - - 0x0132A4 04:B294: 0A        .byte con_plr_state_duck   ; 0A 
- - - - - - 0x0132A5 04:B295: 00        .byte con_plr_state_00   ; 0C 
- - - - - - 0x0132A6 04:B296: 0E        .byte con_plr_state_move_towards_stairs   ; 0E 
- - - - - - 0x0132A7 04:B297: 10        .byte con_plr_state_attach_to_stairs   ; 10 
- D 1 - I - 0x0132A8 04:B298: 12        .byte con_plr_state_idle_on_stairs   ; 12 
- - - - - - 0x0132A9 04:B299: 14        .byte con_plr_state_move_on_stairs   ; 14 
- - - - - - 0x0132AA 04:B29A: 16        .byte con_plr_state_16   ; 16 
- - - - - - 0x0132AB 04:B29B: 00        .byte con_plr_state_00   ; 18 
- - - - - - 0x0132AC 04:B29C: 00        .byte con_plr_state_00   ; 1A 
- - - - - - 0x0132AD 04:B29D: 00        .byte con_plr_state_00   ; 1C 
- - - - - - 0x0132AE 04:B29E: 12        .byte con_plr_state_idle_on_stairs   ; 1E 
- - - - - - 0x0132AF 04:B29F: 00        .byte con_plr_state_00   ; 20 
- - - - - - 0x0132B0 04:B2A0: 00        .byte con_plr_state_00   ; 22 
- - - - - - 0x0132B1 04:B2A1: 12        .byte con_plr_state_idle_on_stairs   ; 24 
- D 1 - I - 0x0132B2 04:B2A2: 26        .byte con_plr_state_knockback   ; 26 
- - - - - - 0x0132B3 04:B2A3: 28        .byte con_plr_state_28   ; 28 
- - - - - - 0x0132B4 04:B2A4: 2A        .byte con_plr_state_2A   ; 2A 
- - - - - - 0x0132B5 04:B2A5: 2C        .byte con_plr_state_2C   ; 2C 
- - - - - - 0x0132B6 04:B2A6: 2E        .byte con_plr_state_death   ; 2E 
- D 1 - I - 0x0132B7 04:B2A7: 00        .byte con_plr_state_00   ; 30 
- - - - - - 0x0132B8 04:B2A8: 00        .byte con_plr_state_00   ; 32 
- - - - - - 0x0132B9 04:B2A9: 00        .byte con_plr_state_00   ; 34 
- - - - - - 0x0132BA 04:B2AA: 00        .byte con_plr_state_00   ; 36 
- - - - - - 0x0132BB 04:B2AB: 00        .byte con_plr_state_00   ; 38 
- - - - - - 0x0132BC 04:B2AC: 00        .byte con_plr_state_00   ; 3A 
- - - - - - 0x0132BD 04:B2AD: 00        .byte con_plr_state_00   ; 3C 
- - - - - - 0x0132BE 04:B2AE: 00        .byte con_plr_state_00   ; 3E 
- - - - - - 0x0132BF 04:B2AF: 00        .byte con_plr_state_00   ; 40 
- - - - - - 0x0132C0 04:B2B0: 00        .byte con_plr_state_00   ; 42 
- - - - - - 0x0132C1 04:B2B1: 00        .byte con_plr_state_00   ; 44 
- D 1 - I - 0x0132C2 04:B2B2: 00        .byte con_plr_state_00   ; 46 
- - - - - - 0x0132C3 04:B2B3: 00        .byte con_plr_state_00   ; 48 
- - - - - - 0x0132C4 04:B2B4: 00        .byte con_plr_state_00   ; 4A 



off_B2B5_00_from_Trevor_to_Sypha:
- - - - - - 0x0132C5 04:B2B5: 00        .byte con_plr_state_00   ; 00 
- D 1 - I - 0x0132C6 04:B2B6: 02        .byte con_plr_state_idle_on_ground   ; 02 
- D 1 - I - 0x0132C7 04:B2B7: 04        .byte con_plr_state_move_on_ground   ; 04 
- - - - - - 0x0132C8 04:B2B8: 06        .byte con_plr_state_06   ; 06 
- D 1 - I - 0x0132C9 04:B2B9: 08        .byte con_plr_state_jump   ; 08 
- D 1 - I - 0x0132CA 04:B2BA: 0A        .byte con_plr_state_duck   ; 0A 
- - - - - - 0x0132CB 04:B2BB: 0C        .byte con_plr_state_fall   ; 0C 
- - - - - - 0x0132CC 04:B2BC: 0E        .byte con_plr_state_move_towards_stairs   ; 0E 
- - - - - - 0x0132CD 04:B2BD: 10        .byte con_plr_state_attach_to_stairs   ; 10 
- D 1 - I - 0x0132CE 04:B2BE: 12        .byte con_plr_state_idle_on_stairs   ; 12 
- - - - - - 0x0132CF 04:B2BF: 14        .byte con_plr_state_move_on_stairs   ; 14 
- - - - - - 0x0132D0 04:B2C0: 16        .byte con_plr_state_16   ; 16 
- D 1 - I - 0x0132D1 04:B2C1: 00        .byte con_plr_state_00   ; 18 
- - - - - - 0x0132D2 04:B2C2: 00        .byte con_plr_state_00   ; 1A 
- - - - - - 0x0132D3 04:B2C3: 00        .byte con_plr_state_00   ; 1C 
- - - - - - 0x0132D4 04:B2C4: 12        .byte con_plr_state_idle_on_stairs   ; 1E 
- D 1 - I - 0x0132D5 04:B2C5: 00        .byte con_plr_state_00   ; 20 
- - - - - - 0x0132D6 04:B2C6: 00        .byte con_plr_state_00   ; 22 
- - - - - - 0x0132D7 04:B2C7: 12        .byte con_plr_state_idle_on_stairs   ; 24 
- D 1 - I - 0x0132D8 04:B2C8: 26        .byte con_plr_state_knockback   ; 26 
- - - - - - 0x0132D9 04:B2C9: 28        .byte con_plr_state_28   ; 28 
- - - - - - 0x0132DA 04:B2CA: 2A        .byte con_plr_state_2A   ; 2A 
- - - - - - 0x0132DB 04:B2CB: 2C        .byte con_plr_state_2C   ; 2C 
- - - - - - 0x0132DC 04:B2CC: 2E        .byte con_plr_state_death   ; 2E 
- - - - - - 0x0132DD 04:B2CD: 00        .byte con_plr_state_00   ; 30 
- - - - - - 0x0132DE 04:B2CE: 00        .byte con_plr_state_00   ; 32 



off_B2CF_01_from_Sypha_to_Trevor:
- - - - - - 0x0132DF 04:B2CF: 00        .byte con_plr_state_00   ; 00 
- D 1 - I - 0x0132E0 04:B2D0: 02        .byte con_plr_state_idle_on_ground   ; 02 
- D 1 - I - 0x0132E1 04:B2D1: 04        .byte con_plr_state_move_on_ground   ; 04 
- - - - - - 0x0132E2 04:B2D2: 06        .byte con_plr_state_06   ; 06 
- D 1 - I - 0x0132E3 04:B2D3: 08        .byte con_plr_state_jump   ; 08 
- D 1 - I - 0x0132E4 04:B2D4: 0A        .byte con_plr_state_duck   ; 0A 
- D 1 - I - 0x0132E5 04:B2D5: 0C        .byte con_plr_state_fall   ; 0C 
- - - - - - 0x0132E6 04:B2D6: 0E        .byte con_plr_state_move_towards_stairs   ; 0E 
- - - - - - 0x0132E7 04:B2D7: 10        .byte con_plr_state_attach_to_stairs   ; 10 
- D 1 - I - 0x0132E8 04:B2D8: 12        .byte con_plr_state_idle_on_stairs   ; 12 
- - - - - - 0x0132E9 04:B2D9: 14        .byte con_plr_state_move_on_stairs   ; 14 
- - - - - - 0x0132EA 04:B2DA: 16        .byte con_plr_state_16   ; 16 
- D 1 - I - 0x0132EB 04:B2DB: 00        .byte con_plr_state_00   ; 18 
- - - - - - 0x0132EC 04:B2DC: 00        .byte con_plr_state_00   ; 1A 
- - - - - - 0x0132ED 04:B2DD: 00        .byte con_plr_state_00   ; 1C 
- - - - - - 0x0132EE 04:B2DE: 12        .byte con_plr_state_idle_on_stairs   ; 1E 
- D 1 - I - 0x0132EF 04:B2DF: 00        .byte con_plr_state_00   ; 20 
- - - - - - 0x0132F0 04:B2E0: 00        .byte con_plr_state_00   ; 22 
- - - - - - 0x0132F1 04:B2E1: 12        .byte con_plr_state_idle_on_stairs   ; 24 
- D 1 - I - 0x0132F2 04:B2E2: 26        .byte con_plr_state_knockback   ; 26 
- - - - - - 0x0132F3 04:B2E3: 28        .byte con_plr_state_28   ; 28 
- - - - - - 0x0132F4 04:B2E4: 2A        .byte con_plr_state_2A   ; 2A 
- - - - - - 0x0132F5 04:B2E5: 2C        .byte con_plr_state_2C   ; 2C 
- - - - - - 0x0132F6 04:B2E6: 2E        .byte con_plr_state_death   ; 2E 
- - - - - - 0x0132F7 04:B2E7: 00        .byte con_plr_state_00   ; 30 
- - - - - - 0x0132F8 04:B2E8: 00        .byte con_plr_state_00   ; 32 



off_B2E9_04_from_Trevor_to_Alucard:
- - - - - - 0x0132F9 04:B2E9: 00        .byte con_plr_state_00   ; 00 
- D 1 - I - 0x0132FA 04:B2EA: 02        .byte con_plr_state_idle_on_ground   ; 02 
- D 1 - I - 0x0132FB 04:B2EB: 04        .byte con_plr_state_move_on_ground   ; 04 
- - - - - - 0x0132FC 04:B2EC: 06        .byte con_plr_state_06   ; 06 
- - - - - - 0x0132FD 04:B2ED: 08        .byte con_plr_state_jump   ; 08 
- D 1 - I - 0x0132FE 04:B2EE: 0A        .byte con_plr_state_duck   ; 0A 
- - - - - - 0x0132FF 04:B2EF: 0C        .byte con_plr_state_fall   ; 0C 
- - - - - - 0x013300 04:B2F0: 0E        .byte con_plr_state_move_towards_stairs   ; 0E 
- - - - - - 0x013301 04:B2F1: 10        .byte con_plr_state_attach_to_stairs   ; 10 
- D 1 - I - 0x013302 04:B2F2: 12        .byte con_plr_state_idle_on_stairs   ; 12 
- - - - - - 0x013303 04:B2F3: 14        .byte con_plr_state_move_on_stairs   ; 14 
- - - - - - 0x013304 04:B2F4: 16        .byte con_plr_state_16   ; 16 
- - - - - - 0x013305 04:B2F5: 00        .byte con_plr_state_00   ; 18 
- D 1 - I - 0x013306 04:B2F6: 00        .byte con_plr_state_00   ; 1A 
- - - - - - 0x013307 04:B2F7: 00        .byte con_plr_state_00   ; 1C 
- - - - - - 0x013308 04:B2F8: 12        .byte con_plr_state_idle_on_stairs   ; 1E 
- - - - - - 0x013309 04:B2F9: 00        .byte con_plr_state_00   ; 20 
- - - - - - 0x01330A 04:B2FA: 00        .byte con_plr_state_00   ; 22 
- - - - - - 0x01330B 04:B2FB: 12        .byte con_plr_state_idle_on_stairs   ; 24 
- - - - - - 0x01330C 04:B2FC: 26        .byte con_plr_state_knockback   ; 26 
- - - - - - 0x01330D 04:B2FD: 28        .byte con_plr_state_28   ; 28 
- - - - - - 0x01330E 04:B2FE: 2A        .byte con_plr_state_2A   ; 2A 
- - - - - - 0x01330F 04:B2FF: 2C        .byte con_plr_state_2C   ; 2C 
- - - - - - 0x013310 04:B300: 2E        .byte con_plr_state_death   ; 2E 
- - - - - - 0x013311 04:B301: 00        .byte con_plr_state_00   ; 30 
- - - - - - 0x013312 04:B302: 00        .byte con_plr_state_00   ; 32 



off_B303_05_from_Alucard_to_Trevor:
- - - - - - 0x013313 04:B303: 00        .byte con_plr_state_00   ; 00 
- D 1 - I - 0x013314 04:B304: 02        .byte con_plr_state_idle_on_ground   ; 02 
- D 1 - I - 0x013315 04:B305: 04        .byte con_plr_state_move_on_ground   ; 04 
- - - - - - 0x013316 04:B306: 06        .byte con_plr_state_06   ; 06 
- D 1 - I - 0x013317 04:B307: 08        .byte con_plr_state_jump   ; 08 
- D 1 - I - 0x013318 04:B308: 0A        .byte con_plr_state_duck   ; 0A 
- D 1 - I - 0x013319 04:B309: 0C        .byte con_plr_state_fall   ; 0C 
- - - - - - 0x01331A 04:B30A: 0E        .byte con_plr_state_move_towards_stairs   ; 0E 
- - - - - - 0x01331B 04:B30B: 10        .byte con_plr_state_attach_to_stairs   ; 10 
- D 1 - I - 0x01331C 04:B30C: 12        .byte con_plr_state_idle_on_stairs   ; 12 
- D 1 - I - 0x01331D 04:B30D: 14        .byte con_plr_state_move_on_stairs   ; 14 
- - - - - - 0x01331E 04:B30E: 16        .byte con_plr_state_16   ; 16 
- - - - - - 0x01331F 04:B30F: 00        .byte con_plr_state_00   ; 18 
- - - - - - 0x013320 04:B310: 00        .byte con_plr_state_00   ; 1A 
- - - - - - 0x013321 04:B311: 00        .byte con_plr_state_00   ; 1C 
- - - - - - 0x013322 04:B312: 12        .byte con_plr_state_idle_on_stairs   ; 1E 
- - - - - - 0x013323 04:B313: 00        .byte con_plr_state_00   ; 20 
- - - - - - 0x013324 04:B314: 00        .byte con_plr_state_00   ; 22 
- - - - - - 0x013325 04:B315: 12        .byte con_plr_state_idle_on_stairs   ; 24 
- D 1 - I - 0x013326 04:B316: 26        .byte con_plr_state_knockback   ; 26 
- - - - - - 0x013327 04:B317: 28        .byte con_plr_state_28   ; 28 
- - - - - - 0x013328 04:B318: 2A        .byte con_plr_state_2A   ; 2A 
- - - - - - 0x013329 04:B319: 2C        .byte con_plr_state_2C   ; 2C 
- - - - - - 0x01332A 04:B31A: 2E        .byte con_plr_state_death   ; 2E 
- - - - - - 0x01332B 04:B31B: 00        .byte con_plr_state_00   ; 30 
- - - - - - 0x01332C 04:B31C: 00        .byte con_plr_state_00   ; 32 
- D 1 - I - 0x01332D 04:B31D: 00        .byte con_plr_state_00   ; 34 
- - - - - - 0x01332E 04:B31E: 00        .byte con_plr_state_00   ; 36 
- - - - - - 0x01332F 04:B31F: 00        .byte con_plr_state_00   ; 38 
- - - - - - 0x013330 04:B320: 00        .byte con_plr_state_00   ; 3A 
- - - - - - 0x013331 04:B321: 00        .byte con_plr_state_00   ; 3C 
- - - - - - 0x013332 04:B322: 00        .byte con_plr_state_00   ; 3E 
- - - - - - 0x013333 04:B323: 00        .byte con_plr_state_00   ; 40 
- - - - - - 0x013334 04:B324: 00        .byte con_plr_state_00   ; 42 



sub_B325:
C - - - - - 0x013335 04:B325: A5 32     LDA ram_blk_hi
C - - - - - 0x013337 04:B327: 0A        ASL
C - - - - - 0x013338 04:B328: A8        TAY
C - - - - - 0x013339 04:B329: B9 AD B3  LDA tbl_B3AD,Y
C - - - - - 0x01333C 04:B32C: 85 08     STA ram_0008_t017_data
C - - - - - 0x01333E 04:B32E: B9 AE B3  LDA tbl_B3AD + $01,Y
C - - - - - 0x013341 04:B331: 85 09     STA ram_0008_t017_data + $01
C - - - - - 0x013343 04:B333: A4 33     LDY ram_blk_lo
C - - - - - 0x013345 04:B335: B1 08     LDA (ram_0008_t017_data),Y
C - - - - - 0x013347 04:B337: 29 0F     AND #$0F
C - - - - - 0x013349 04:B339: 85 34     STA ram_blk_fr
C - - - - - 0x01334B 04:B33B: B1 08     LDA (ram_0008_t017_data),Y
; * 10
C - - - - - 0x01334D 04:B33D: 4A        LSR
C - - - - - 0x01334E 04:B33E: 4A        LSR
C - - - - - 0x01334F 04:B33F: 4A        LSR
C - - - - - 0x013350 04:B340: 4A        LSR
C - - - - - 0x013351 04:B341: 85 7F     STA ram_timer_x00
C - - - - - 0x013353 04:B343: A9 00     LDA #$00
C - - - - - 0x013355 04:B345: 85 7E     STA ram_timer_0xx
C - - - - - 0x013357 04:B347: 60        RTS



sub_0x013358:
C - - - - - 0x013358 04:B348: A5 34     LDA ram_blk_fr
C - - - - - 0x01335A 04:B34A: 48        PHA
C - - - - - 0x01335B 04:B34B: 20 25 B3  JSR sub_B325
C - - - - - 0x01335E 04:B34E: 68        PLA
C - - - - - 0x01335F 04:B34F: 85 34     STA ram_blk_fr
C - - - - - 0x013361 04:B351: 4C 57 B3  JMP loc_B357



sub_0x013364:
C - - - - - 0x013364 04:B354: 20 25 B3  JSR sub_B325
loc_B357:
C D 1 - - - 0x013367 04:B357: 20 6B B3  JSR sub_B36B_set_player_spawn_position
C - - - - - 0x01336A 04:B35A: AD 4E 05  LDA ram_plr_id
C - - - - - 0x01336D 04:B35D: C9 02     CMP #$02
C - - - - - 0x01336F 04:B35F: D0 09     BNE bra_B36A_RTS
C - - - - - 0x013371 04:B361: AD 1C 04  LDA ram_plr_pos_Y_hi
C - - - - - 0x013374 04:B364: 18        CLC
C - - - - - 0x013375 04:B365: 69 04     ADC #$04
C - - - - - 0x013377 04:B367: 8D 1C 04  STA ram_plr_pos_Y_hi
bra_B36A_RTS:
C - - - - - 0x01337A 04:B36A: 60        RTS



sub_B36B_set_player_spawn_position:
C - - - - - 0x01337B 04:B36B: A5 32     LDA ram_blk_hi
C - - - - - 0x01337D 04:B36D: 0A        ASL
C - - - - - 0x01337E 04:B36E: A8        TAY
C - - - - - 0x01337F 04:B36F: B9 0B B4  LDA tbl_B40B_spawn_positions,Y
C - - - - - 0x013382 04:B372: 85 08     STA ram_0008_t016_data
C - - - - - 0x013384 04:B374: B9 0C B4  LDA tbl_B40B_spawn_positions + $01,Y
C - - - - - 0x013387 04:B377: 85 09     STA ram_0008_t016_data + $01
C - - - - - 0x013389 04:B379: A5 33     LDA ram_blk_lo
C - - - - - 0x01338B 04:B37B: 0A        ASL
C - - - - - 0x01338C 04:B37C: A8        TAY
C - - - - - 0x01338D 04:B37D: B1 08     LDA (ram_0008_t016_data),Y
C - - - - - 0x01338F 04:B37F: 85 0A     STA ram_000A_t00C_data
C - - - - - 0x013391 04:B381: C8        INY
C - - - - - 0x013392 04:B382: B1 08     LDA (ram_0008_t016_data),Y
C - - - - - 0x013394 04:B384: 85 0B     STA ram_000A_t00C_data + $01
C - - - - - 0x013396 04:B386: A5 34     LDA ram_blk_fr
C - - - - - 0x013398 04:B388: 0A        ASL
C - - - - - 0x013399 04:B389: A8        TAY
C - - - - - 0x01339A 04:B38A: B1 0A     LDA (ram_000A_t00C_data),Y
C - - - - - 0x01339C 04:B38C: 29 F0     AND #$F0
C - - - - - 0x01339E 04:B38E: 8D 38 04  STA ram_plr_pos_X_hi
C - - - - - 0x0133A1 04:B391: B1 0A     LDA (ram_000A_t00C_data),Y
; * 04
C - - - - - 0x0133A3 04:B393: 0A        ASL
C - - - - - 0x0133A4 04:B394: 0A        ASL
C - - - - - 0x0133A5 04:B395: 0A        ASL
C - - - - - 0x0133A6 04:B396: 0A        ASL
C - - - - - 0x0133A7 04:B397: 8D 1C 04  STA ram_plr_pos_Y_hi
C - - - - - 0x0133AA 04:B39A: C8        INY
C - - - - - 0x0133AB 04:B39B: B1 0A     LDA (ram_000A_t00C_data),Y
; A = 00-04
C - - - - - 0x0133AD 04:B39D: 85 57     STA ram_cam_pos_hi
C - - - - - 0x0133AF 04:B39F: A0 00     LDY #$00    ; facing right
C - - - - - 0x0133B1 04:B3A1: 84 56     STY ram_cam_pos_lo
C - - - - - 0x0133B3 04:B3A3: AD 38 04  LDA ram_plr_pos_X_hi
C - - - - - 0x0133B6 04:B3A6: 10 01     BPL bra_B3A9_00_7F
; 80-FF
C - - - - - 0x0133B8 04:B3A8: C8        INY ; 01 facing left
bra_B3A9_00_7F:
C - - - - - 0x0133B9 04:B3A9: 8C A8 04  STY ram_plr_facing
C - - - - - 0x0133BC 04:B3AC: 60        RTS



tbl_B3AD:
- D 1 - - - 0x0133BD 04:B3AD: CB B3     .word _off024_B3CB_00
- D 1 - - - 0x0133BF 04:B3AF: CF B3     .word _off024_B3CF_01
- D 1 - - - 0x0133C1 04:B3B1: D5 B3     .word _off024_B3D5_02
- D 1 - - - 0x0133C3 04:B3B3: DA B3     .word _off024_B3DA_03
- D 1 - - - 0x0133C5 04:B3B5: DF B3     .word _off024_B3DF_04
- D 1 - - - 0x0133C7 04:B3B7: E2 B3     .word _off024_B3E2_05
- D 1 - - - 0x0133C9 04:B3B9: E6 B3     .word _off024_B3E6_06
- D 1 - - - 0x0133CB 04:B3BB: E9 B3     .word _off024_B3E9_07
- D 1 - - - 0x0133CD 04:B3BD: F0 B3     .word _off024_B3F0_08
- D 1 - - - 0x0133CF 04:B3BF: F5 B3     .word _off024_B3F5_09
- D 1 - - - 0x0133D1 04:B3C1: F7 B3     .word _off024_B3F7_0A
- D 1 - - - 0x0133D3 04:B3C3: FE B3     .word _off024_B3FE_0B
- D 1 - - - 0x0133D5 04:B3C5: 01 B4     .word _off024_B401_0C
- D 1 - - - 0x0133D7 04:B3C7: 04 B4     .word _off024_B404_0D
- D 1 - - - 0x0133D9 04:B3C9: 08 B4     .word _off024_B408_0E



_off024_B3CB_00:
;                                              +----------------- game timer (hundreds)
;                                              |           +----- 
;                                              |           |
- D 1 - I - 0x0133DB 04:B3CB: 50        .byte $05 * $10 + $00   ; 
- D 1 - I - 0x0133DC 04:B3CC: 40        .byte $04 * $10 + $00   ; 
- D 1 - I - 0x0133DD 04:B3CD: 31        .byte $03 * $10 + $01   ; 
- D 1 - I - 0x0133DE 04:B3CE: 20        .byte $02 * $10 + $00   ; 



_off024_B3CF_01:
;                                              +----------------- game timer (hundreds)
;                                              |           +----- 
;                                              |           |
- D 1 - I - 0x0133DF 04:B3CF: 40        .byte $04 * $10 + $00   ; 
- D 1 - I - 0x0133E0 04:B3D0: 30        .byte $03 * $10 + $00   ; 
- D 1 - I - 0x0133E1 04:B3D1: 20        .byte $02 * $10 + $00   ; 
- D 1 - I - 0x0133E2 04:B3D2: 42        .byte $04 * $10 + $02   ; 
- D 1 - I - 0x0133E3 04:B3D3: 32        .byte $03 * $10 + $02   ; 
- D 1 - I - 0x0133E4 04:B3D4: 22        .byte $02 * $10 + $02   ; 



_off024_B3D5_02:
;                                              +----------------- game timer (hundreds)
;                                              |           +----- 
;                                              |           |
- D 1 - I - 0x0133E5 04:B3D5: 30        .byte $03 * $10 + $00   ; 
- D 1 - I - 0x0133E6 04:B3D6: 20        .byte $02 * $10 + $00   ; 
- D 1 - I - 0x0133E7 04:B3D7: 10        .byte $01 * $10 + $00   ; 
- D 1 - I - 0x0133E8 04:B3D8: 32        .byte $03 * $10 + $02   ; 
- D 1 - I - 0x0133E9 04:B3D9: 21        .byte $02 * $10 + $01   ; 



_off024_B3DA_03:
;                                              +----------------- game timer (hundreds)
;                                              |           +----- 
;                                              |           |
- D 1 - I - 0x0133EA 04:B3DA: 42        .byte $04 * $10 + $02   ; 
- D 1 - I - 0x0133EB 04:B3DB: 30        .byte $03 * $10 + $00   ; 
- D 1 - I - 0x0133EC 04:B3DC: 20        .byte $02 * $10 + $00   ; 
- D 1 - I - 0x0133ED 04:B3DD: 30        .byte $03 * $10 + $00   ; 
- D 1 - I - 0x0133EE 04:B3DE: 22        .byte $02 * $10 + $02   ; 



_off024_B3DF_04:
;                                              +----------------- game timer (hundreds)
;                                              |           +----- 
;                                              |           |
- D 1 - I - 0x0133EF 04:B3DF: 40        .byte $04 * $10 + $00   ; 
- D 1 - I - 0x0133F0 04:B3E0: 30        .byte $03 * $10 + $00   ; 
- D 1 - I - 0x0133F1 04:B3E1: 20        .byte $02 * $10 + $00   ; 



_off024_B3E2_05:
;                                              +----------------- game timer (hundreds)
;                                              |           +----- 
;                                              |           |
- D 1 - I - 0x0133F2 04:B3E2: 50        .byte $05 * $10 + $00   ; 
- - - - - - 0x0133F3 04:B3E3: 40        .byte $04 * $10 + $00   ; 
- D 1 - I - 0x0133F4 04:B3E4: 31        .byte $03 * $10 + $01   ; 
- D 1 - I - 0x0133F5 04:B3E5: 21        .byte $02 * $10 + $01   ; 



_off024_B3E6_06:
;                                              +----------------- game timer (hundreds)
;                                              |           +----- 
;                                              |           |
- D 1 - I - 0x0133F6 04:B3E6: 41        .byte $04 * $10 + $01   ; 
- D 1 - I - 0x0133F7 04:B3E7: 30        .byte $03 * $10 + $00   ; 
- D 1 - I - 0x0133F8 04:B3E8: 22        .byte $02 * $10 + $02   ; 



_off024_B3E9_07:
;                                              +----------------- game timer (hundreds)
;                                              |           +----- 
;                                              |           |
- D 1 - I - 0x0133F9 04:B3E9: 61        .byte $06 * $10 + $01   ; 
- D 1 - I - 0x0133FA 04:B3EA: 50        .byte $05 * $10 + $00   ; 
- D 1 - I - 0x0133FB 04:B3EB: 50        .byte $05 * $10 + $00   ; 
- D 1 - I - 0x0133FC 04:B3EC: 40        .byte $04 * $10 + $00   ; 
- D 1 - I - 0x0133FD 04:B3ED: 30        .byte $03 * $10 + $00   ; 
- D 1 - I - 0x0133FE 04:B3EE: 20        .byte $02 * $10 + $00   ; 
- D 1 - I - 0x0133FF 04:B3EF: 20        .byte $02 * $10 + $00   ; 



_off024_B3F0_08:
;                                              +----------------- game timer (hundreds)
;                                              |           +----- 
;                                              |           |
- D 1 - I - 0x013400 04:B3F0: 41        .byte $04 * $10 + $01   ; 
- D 1 - I - 0x013401 04:B3F1: 30        .byte $03 * $10 + $00   ; 
- D 1 - I - 0x013402 04:B3F2: 20        .byte $02 * $10 + $00   ; 
- D 1 - I - 0x013403 04:B3F3: 20        .byte $02 * $10 + $00   ; 
- D 1 - I - 0x013404 04:B3F4: 10        .byte $01 * $10 + $00   ; 



_off024_B3F5_09:
;                                              +----------------- game timer (hundreds)
;                                              |           +----- 
;                                              |           |
- D 1 - I - 0x013405 04:B3F5: 30        .byte $03 * $10 + $00   ; 
- D 1 - I - 0x013406 04:B3F6: 20        .byte $02 * $10 + $00   ; 



_off024_B3F7_0A:
;                                              +----------------- game timer (hundreds)
;                                              |           +----- 
;                                              |           |
- D 1 - I - 0x013407 04:B3F7: 50        .byte $05 * $10 + $00   ; 
- D 1 - I - 0x013408 04:B3F8: 40        .byte $04 * $10 + $00   ; 
- D 1 - I - 0x013409 04:B3F9: 30        .byte $03 * $10 + $00   ; 
- D 1 - I - 0x01340A 04:B3FA: 20        .byte $02 * $10 + $00   ; 
- D 1 - I - 0x01340B 04:B3FB: 50        .byte $05 * $10 + $00   ; 
- D 1 - I - 0x01340C 04:B3FC: 40        .byte $04 * $10 + $00   ; 
- D 1 - I - 0x01340D 04:B3FD: 30        .byte $03 * $10 + $00   ; 



_off024_B3FE_0B:
;                                              +----------------- game timer (hundreds)
;                                              |           +----- 
;                                              |           |
- D 1 - I - 0x01340E 04:B3FE: 50        .byte $05 * $10 + $00   ; 
- D 1 - I - 0x01340F 04:B3FF: 40        .byte $04 * $10 + $00   ; 
- D 1 - I - 0x013410 04:B400: 32        .byte $03 * $10 + $02   ; 



_off024_B401_0C:
;                                              +----------------- game timer (hundreds)
;                                              |           +----- 
;                                              |           |
- D 1 - I - 0x013411 04:B401: 40        .byte $04 * $10 + $00   ; 
- D 1 - I - 0x013412 04:B402: 30        .byte $03 * $10 + $00   ; 
- D 1 - I - 0x013413 04:B403: 20        .byte $02 * $10 + $00   ; 



_off024_B404_0D:
;                                              +----------------- game timer (hundreds)
;                                              |           +----- 
;                                              |           |
- D 1 - I - 0x013414 04:B404: 50        .byte $05 * $10 + $00   ; 
- D 1 - I - 0x013415 04:B405: 40        .byte $04 * $10 + $00   ; 
- D 1 - I - 0x013416 04:B406: 30        .byte $03 * $10 + $00   ; 
- D 1 - I - 0x013417 04:B407: 20        .byte $02 * $10 + $00   ; 



_off024_B408_0E:
;                                              +----------------- game timer (hundreds)
;                                              |           +----- 
;                                              |           |
- D 1 - I - 0x013418 04:B408: 32        .byte $03 * $10 + $02   ; 
- D 1 - I - 0x013419 04:B409: 20        .byte $02 * $10 + $00   ; 
- D 1 - I - 0x01341A 04:B40A: 30        .byte $03 * $10 + $00   ; 



tbl_B40B_spawn_positions:
- D 1 - - - 0x01341B 04:B40B: 29 B4     .word _off025_B429_00
- D 1 - - - 0x01341D 04:B40D: 31 B4     .word _off025_B431_01
- D 1 - - - 0x01341F 04:B40F: 3D B4     .word _off025_B43D_02
- D 1 - - - 0x013421 04:B411: 47 B4     .word _off025_B447_03
- D 1 - - - 0x013423 04:B413: 51 B4     .word _off025_B451_04
- D 1 - - - 0x013425 04:B415: 57 B4     .word _off025_B457_05
- D 1 - - - 0x013427 04:B417: 5F B4     .word _off025_B45F_06
- D 1 - - - 0x013429 04:B419: 65 B4     .word _off025_B465_07
- D 1 - - - 0x01342B 04:B41B: 73 B4     .word _off025_B473_08
- D 1 - - - 0x01342D 04:B41D: 7D B4     .word _off025_B47D_09
- D 1 - - - 0x01342F 04:B41F: 81 B4     .word _off025_B481_0A
- D 1 - - - 0x013431 04:B421: 8F B4     .word _off025_B48F_0B
- D 1 - - - 0x013433 04:B423: 95 B4     .word _off025_B495_0C
- D 1 - - - 0x013435 04:B425: 9B B4     .word _off025_B49B_0D
- D 1 - - - 0x013437 04:B427: A3 B4     .word _off025_B4A3_0E



_off025_B429_00:
- D 1 - I - 0x013439 04:B429: A9 B4     .word _off048_B4A9_00_00
- D 1 - I - 0x01343B 04:B42B: AB B4     .word _off048_B4AB_00_01
- D 1 - I - 0x01343D 04:B42D: B3 B4     .word _off048_B4B3_00_02
- D 1 - I - 0x01343F 04:B42F: B7 B4     .word _off048_B4B7_00_03



_off025_B431_01:
- D 1 - I - 0x013441 04:B431: B9 B4     .word _off048_B4B9_01_00
- D 1 - I - 0x013443 04:B433: BF B4     .word _off048_B4BF_01_01
- D 1 - I - 0x013445 04:B435: C5 B4     .word _off048_B4C5_01_02
- D 1 - I - 0x013447 04:B437: CB B4     .word _off048_B4CB_01_03
- D 1 - I - 0x013449 04:B439: D1 B4     .word _off048_B4D1_01_04
- D 1 - I - 0x01344B 04:B43B: D7 B4     .word _off048_B4D7_01_05



_off025_B43D_02:
- D 1 - I - 0x01344D 04:B43D: DD B4     .word _off048_B4DD_02_00
- D 1 - I - 0x01344F 04:B43F: E1 B4     .word _off048_B4E1_02_01
- D 1 - I - 0x013451 04:B441: E3 B4     .word _off048_B4E3_02_02
- D 1 - I - 0x013453 04:B443: E7 B4     .word _off048_B4E7_02_03
- D 1 - I - 0x013455 04:B445: ED B4     .word _off048_B4ED_02_04



_off025_B447_03:
- D 1 - I - 0x013457 04:B447: F1 B4     .word _off048_B4F1_03_00
- D 1 - I - 0x013459 04:B449: F7 B4     .word _off048_B4F7_03_01
- D 1 - I - 0x01345B 04:B44B: FB B4     .word _off048_B4FB_03_02
- D 1 - I - 0x01345D 04:B44D: FF B4     .word _off048_B4FF_03_03
- D 1 - I - 0x01345F 04:B44F: 03 B5     .word _off048_B503_03_04



_off025_B451_04:
- D 1 - I - 0x013461 04:B451: 09 B5     .word _off048_B509_04_00
- D 1 - I - 0x013463 04:B453: 0F B5     .word _off048_B50F_04_01
- D 1 - I - 0x013465 04:B455: 15 B5     .word _off048_B515_04_02



_off025_B457_05:
- D 1 - I - 0x013467 04:B457: 1B B5     .word _off048_B51B_05_00
- - - - - - 0x013469 04:B459: 1D B5     .word _off048_B51D_05_01
- D 1 - I - 0x01346B 04:B45B: 1F B5     .word _off048_B51F_05_02
- D 1 - I - 0x01346D 04:B45D: 23 B5     .word _off048_B523_05_03



_off025_B45F_06:
- D 1 - I - 0x01346F 04:B45F: 27 B5     .word _off048_B527_06_00
- D 1 - I - 0x013471 04:B461: 2B B5     .word _off048_B52B_06_01
- D 1 - I - 0x013473 04:B463: 2D B5     .word _off048_B52D_06_02



_off025_B465_07:
- D 1 - I - 0x013475 04:B465: 33 B5     .word _off048_B533_07_00
- D 1 - I - 0x013477 04:B467: 37 B5     .word _off048_B537_07_01
- D 1 - I - 0x013479 04:B469: 39 B5     .word _off048_B539_07_02
- D 1 - I - 0x01347B 04:B46B: 3B B5     .word _off048_B53B_07_03
- D 1 - I - 0x01347D 04:B46D: 3D B5     .word _off048_B53D_07_04
- D 1 - I - 0x01347F 04:B46F: 41 B5     .word _off048_B541_07_05
- D 1 - I - 0x013481 04:B471: 45 B5     .word _off048_B545_07_06



_off025_B473_08:
- D 1 - I - 0x013483 04:B473: 47 B5     .word _off048_B547_08_00
- D 1 - I - 0x013485 04:B475: 4B B5     .word _off048_B54B_08_01
- D 1 - I - 0x013487 04:B477: 4D B5     .word _off048_B54D_08_02
- D 1 - I - 0x013489 04:B479: 51 B5     .word _off048_B551_08_03
- D 1 - I - 0x01348B 04:B47B: 53 B5     .word _off048_B553_08_04



_off025_B47D_09:
- D 1 - I - 0x01348D 04:B47D: 55 B5     .word _off048_B555_09_00
- D 1 - I - 0x01348F 04:B47F: 59 B5     .word _off048_B559_09_01



_off025_B481_0A:
- D 1 - I - 0x013491 04:B481: 5F B5     .word _off048_B55F_0A_00
- D 1 - I - 0x013493 04:B483: 63 B5     .word _off048_B563_0A_01
- D 1 - I - 0x013495 04:B485: 65 B5     .word _off048_B565_0A_02
- D 1 - I - 0x013497 04:B487: 67 B5     .word _off048_B567_0A_03
- D 1 - I - 0x013499 04:B489: 6B B5     .word _off048_B56B_0A_04
- D 1 - I - 0x01349B 04:B48B: 71 B5     .word _off048_B571_0A_05
- D 1 - I - 0x01349D 04:B48D: 75 B5     .word _off048_B575_0A_06



_off025_B48F_0B:
- D 1 - I - 0x01349F 04:B48F: 7B B5     .word _off048_B57B_0B_00
- D 1 - I - 0x0134A1 04:B491: 7F B5     .word _off048_B57F_0B_01
- D 1 - I - 0x0134A3 04:B493: 83 B5     .word _off048_B583_0B_02



_off025_B495_0C:
- D 1 - I - 0x0134A5 04:B495: 89 B5     .word _off048_B589_0C_00
- D 1 - I - 0x0134A7 04:B497: 8D B5     .word _off048_B58D_0C_01
- D 1 - I - 0x0134A9 04:B499: 91 B5     .word _off048_B591_0C_02



_off025_B49B_0D:
- D 1 - I - 0x0134AB 04:B49B: 93 B5     .word _off048_B593_0D_00
- D 1 - I - 0x0134AD 04:B49D: 99 B5     .word _off048_B599_0D_01
- D 1 - I - 0x0134AF 04:B49F: 9F B5     .word _off048_B59F_0D_02
- D 1 - I - 0x0134B1 04:B4A1: A5 B5     .word _off048_B5A5_0D_03



_off025_B4A3_0E:
- D 1 - I - 0x0134B3 04:B4A3: A9 B5     .word _off048_B5A9_0E_00
- D 1 - I - 0x0134B5 04:B4A5: AF B5     .word _off048_B5AF_0E_01
- D 1 - I - 0x0134B7 04:B4A7: B3 B5     .word _off048_B5B3_0E_02



_off048_B4A9_00_00:
;                                              +---------------------- pos_X_hi
;                                              |     +---------------- pos_Y_hi
;                                              |     |          +----- 
;                                              |     |          |
- D 1 - I - 0x0134B9 04:B4A9: 2C        .byte $20 + $C0 / $10, $00   ; 00 



_off048_B4AB_00_01:
;                                              +---------------------- pos_X_hi
;                                              |     +---------------- pos_Y_hi
;                                              |     |          +----- 
;                                              |     |          |
- D 1 - I - 0x0134BB 04:B4AB: 2B        .byte $20 + $B0 / $10, $00   ; 00 
- D 1 - I - 0x0134BD 04:B4AD: 3A        .byte $30 + $A0 / $10, $00   ; 01 
- D 1 - I - 0x0134BF 04:B4AF: 5A        .byte $50 + $A0 / $10, $00   ; 02 
- D 1 - I - 0x0134C1 04:B4B1: 4B        .byte $40 + $B0 / $10, $00   ; 03 



_off048_B4B3_00_02:
;                                              +---------------------- pos_X_hi
;                                              |     +---------------- pos_Y_hi
;                                              |     |          +----- 
;                                              |     |          |
- D 1 - I - 0x0134C3 04:B4B3: 88        .byte $80 + $80 / $10, $00   ; 00 
- D 1 - I - 0x0134C5 04:B4B5: 39        .byte $30 + $90 / $10, $00   ; 01 



_off048_B4B7_00_03:
;                                              +---------------------- pos_X_hi
;                                              |     +---------------- pos_Y_hi
;                                              |     |          +----- 
;                                              |     |          |
- D 1 - I - 0x0134C7 04:B4B7: 3B        .byte $30 + $B0 / $10, $00   ; 00 



_off048_B4B9_01_00:
;                                              +---------------------- pos_X_hi
;                                              |     +---------------- pos_Y_hi
;                                              |     |          +----- 
;                                              |     |          |
- D 1 - I - 0x0134C9 04:B4B9: 3A        .byte $30 + $A0 / $10, $00   ; 00 
- D 1 - I - 0x0134CB 04:B4BB: 7A        .byte $70 + $A0 / $10, $01   ; 01 
- D 1 - I - 0x0134CD 04:B4BD: 8B        .byte $80 + $B0 / $10, $00   ; 02 



_off048_B4BF_01_01:
;                                              +---------------------- pos_X_hi
;                                              |     +---------------- pos_Y_hi
;                                              |     |          +----- 
;                                              |     |          |
- D 1 - I - 0x0134CF 04:B4BF: 4B        .byte $40 + $B0 / $10, $00   ; 00 
- D 1 - I - 0x0134D1 04:B4C1: 29        .byte $20 + $90 / $10, $00   ; 01 
- D 1 - I - 0x0134D3 04:B4C3: 99        .byte $90 + $90 / $10, $00   ; 02 



_off048_B4C5_01_02:
;                                              +---------------------- pos_X_hi
;                                              |     +---------------- pos_Y_hi
;                                              |     |          +----- 
;                                              |     |          |
- D 1 - I - 0x0134D5 04:B4C5: 29        .byte $20 + $90 / $10, $00   ; 00 
- D 1 - I - 0x0134D7 04:B4C7: C6        .byte $C0 + $60 / $10, $00   ; 01 
- D 1 - I - 0x0134D9 04:B4C9: C9        .byte $C0 + $90 / $10, $01   ; 02 



_off048_B4CB_01_03:
;                                              +---------------------- pos_X_hi
;                                              |     +---------------- pos_Y_hi
;                                              |     |          +----- 
;                                              |     |          |
- D 1 - I - 0x0134DB 04:B4CB: 54        .byte $50 + $40 / $10, $00   ; 00 
- D 1 - I - 0x0134DD 04:B4CD: 24        .byte $20 + $40 / $10, $00   ; 01 
- D 1 - I - 0x0134DF 04:B4CF: 29        .byte $20 + $90 / $10, $01   ; 02 



_off048_B4D1_01_04:
;                                              +---------------------- pos_X_hi
;                                              |     +---------------- pos_Y_hi
;                                              |     |          +----- 
;                                              |     |          |
- D 1 - I - 0x0134E1 04:B4D1: 4B        .byte $40 + $B0 / $10, $00   ; 00 
- D 1 - I - 0x0134E3 04:B4D3: 29        .byte $20 + $90 / $10, $00   ; 01 
- D 1 - I - 0x0134E5 04:B4D5: 99        .byte $90 + $90 / $10, $00   ; 02 



_off048_B4D7_01_05:
;                                              +---------------------- pos_X_hi
;                                              |     +---------------- pos_Y_hi
;                                              |     |          +----- 
;                                              |     |          |
- D 1 - I - 0x0134E7 04:B4D7: 3A        .byte $30 + $A0 / $10, $00   ; 00 
- D 1 - I - 0x0134E9 04:B4D9: 7A        .byte $70 + $A0 / $10, $01   ; 01 
- D 1 - I - 0x0134EB 04:B4DB: E7        .byte $E0 + $70 / $10, $01   ; 02 



_off048_B4DD_02_00:
;                                              +---------------------- pos_X_hi
;                                              |     +---------------- pos_Y_hi
;                                              |     |          +----- 
;                                              |     |          |
- D 1 - I - 0x0134ED 04:B4DD: 2B        .byte $20 + $B0 / $10, $00   ; 00 
- D 1 - I - 0x0134EF 04:B4DF: 2A        .byte $20 + $A0 / $10, $02   ; 01 



_off048_B4E1_02_01:
;                                              +---------------------- pos_X_hi
;                                              |     +---------------- pos_Y_hi
;                                              |     |          +----- 
;                                              |     |          |
- D 1 - I - 0x0134F1 04:B4E1: 4B        .byte $40 + $B0 / $10, $00   ; 00 



_off048_B4E3_02_02:
;                                              +---------------------- pos_X_hi
;                                              |     +---------------- pos_Y_hi
;                                              |     |          +----- 
;                                              |     |          |
- D 1 - I - 0x0134F3 04:B4E3: 2B        .byte $20 + $B0 / $10, $00   ; 00 
- D 1 - I - 0x0134F5 04:B4E5: 8A        .byte $80 + $A0 / $10, $00   ; 01 



_off048_B4E7_02_03:
;                                              +---------------------- pos_X_hi
;                                              |     +---------------- pos_Y_hi
;                                              |     |          +----- 
;                                              |     |          |
- D 1 - I - 0x0134F7 04:B4E7: E5        .byte $E0 + $50 / $10, $00   ; 00 
- D 1 - I - 0x0134F9 04:B4E9: 85        .byte $80 + $50 / $10, $00   ; 01 
- D 1 - I - 0x0134FB 04:B4EB: 2B        .byte $20 + $B0 / $10, $00   ; 02 



_off048_B4ED_02_04:
;                                              +---------------------- pos_X_hi
;                                              |     +---------------- pos_Y_hi
;                                              |     |          +----- 
;                                              |     |          |
- D 1 - I - 0x0134FD 04:B4ED: 49        .byte $40 + $90 / $10, $00   ; 00 
- D 1 - I - 0x0134FF 04:B4EF: E9        .byte $E0 + $90 / $10, $03   ; 01 



_off048_B4F1_03_00:
;                                              +---------------------- pos_X_hi
;                                              |     +---------------- pos_Y_hi
;                                              |     |          +----- 
;                                              |     |          |
- D 1 - I - 0x013501 04:B4F1: 45        .byte $40 + $50 / $10, $00   ; 00 
- D 1 - I - 0x013503 04:B4F3: 45        .byte $40 + $50 / $10, $00   ; 01 
- D 1 - I - 0x013505 04:B4F5: 87        .byte $80 + $70 / $10, $00   ; 02 



_off048_B4F7_03_01:
;                                              +---------------------- pos_X_hi
;                                              |     +---------------- pos_Y_hi
;                                              |     |          +----- 
;                                              |     |          |
- D 1 - I - 0x013507 04:B4F7: 29        .byte $20 + $90 / $10, $00   ; 00 
- D 1 - I - 0x013509 04:B4F9: 7B        .byte $70 + $B0 / $10, $00   ; 01 



_off048_B4FB_03_02:
;                                              +---------------------- pos_X_hi
;                                              |     +---------------- pos_Y_hi
;                                              |     |          +----- 
;                                              |     |          |
- D 1 - I - 0x01350B 04:B4FB: E7        .byte $E0 + $70 / $10, $03   ; 00 
- D 1 - I - 0x01350D 04:B4FD: C7        .byte $C0 + $70 / $10, $00   ; 01 



_off048_B4FF_03_03:
;                                              +---------------------- pos_X_hi
;                                              |     +---------------- pos_Y_hi
;                                              |     |          +----- 
;                                              |     |          |
- D 1 - I - 0x01350F 04:B4FF: 2B        .byte $20 + $B0 / $10, $00   ; 00 
- D 1 - I - 0x013511 04:B501: 7B        .byte $70 + $B0 / $10, $00   ; 01 



_off048_B503_03_04:
;                                              +---------------------- pos_X_hi
;                                              |     +---------------- pos_Y_hi
;                                              |     |          +----- 
;                                              |     |          |
- D 1 - I - 0x013513 04:B503: 48        .byte $40 + $80 / $10, $00   ; 00 
- D 1 - I - 0x013515 04:B505: 46        .byte $40 + $60 / $10, $00   ; 01 
- D 1 - I - 0x013517 04:B507: 29        .byte $20 + $90 / $10, $00   ; 02 



_off048_B509_04_00:
;                                              +---------------------- pos_X_hi
;                                              |     +---------------- pos_Y_hi
;                                              |     |          +----- 
;                                              |     |          |
- D 1 - I - 0x013519 04:B509: 39        .byte $30 + $90 / $10, $00   ; 00 
- D 1 - I - 0x01351B 04:B50B: 8A        .byte $80 + $A0 / $10, $00   ; 01 
- D 1 - I - 0x01351D 04:B50D: 8B        .byte $80 + $B0 / $10, $00   ; 02 



_off048_B50F_04_01:
;                                              +---------------------- pos_X_hi
;                                              |     +---------------- pos_Y_hi
;                                              |     |          +----- 
;                                              |     |          |
- D 1 - I - 0x01351F 04:B50F: 28        .byte $20 + $80 / $10, $00   ; 00 
- D 1 - I - 0x013521 04:B511: 2A        .byte $20 + $A0 / $10, $00   ; 01 
- D 1 - I - 0x013523 04:B513: 8B        .byte $80 + $B0 / $10, $01   ; 02 



_off048_B515_04_02:
;                                              +---------------------- pos_X_hi
;                                              |     +---------------- pos_Y_hi
;                                              |     |          +----- 
;                                              |     |          |
- D 1 - I - 0x013525 04:B515: E7        .byte $E0 + $70 / $10, $00   ; 00 
- D 1 - I - 0x013527 04:B517: CA        .byte $C0 + $A0 / $10, $00   ; 01 
- D 1 - I - 0x013529 04:B519: 4A        .byte $40 + $A0 / $10, $00   ; 02 



_off048_B51B_05_00:
;                                              +---------------------- pos_X_hi
;                                              |     +---------------- pos_Y_hi
;                                              |     |          +----- 
;                                              |     |          |
- D 1 - I - 0x01352B 04:B51B: 3B        .byte $30 + $B0 / $10, $00   ; 00 



_off048_B51D_05_01:
;                                              +---------------------- pos_X_hi
;                                              |     +---------------- pos_Y_hi
;                                              |     |          +----- 
;                                              |     |          |
- D 1 - I - 0x01352D 04:B51D: 27        .byte $20 + $70 / $10, $00   ; 00 



_off048_B51F_05_02:
;                                              +---------------------- pos_X_hi
;                                              |     +---------------- pos_Y_hi
;                                              |     |          +----- 
;                                              |     |          |
- D 1 - I - 0x01352F 04:B51F: 27        .byte $20 + $70 / $10, $00   ; 00 
- D 1 - I - 0x013531 04:B521: 27        .byte $20 + $70 / $10, $00   ; 01 



_off048_B523_05_03:
;                                              +---------------------- pos_X_hi
;                                              |     +---------------- pos_Y_hi
;                                              |     |          +----- 
;                                              |     |          |
- D 1 - I - 0x013533 04:B523: 27        .byte $20 + $70 / $10, $00   ; 00 
- D 1 - I - 0x013535 04:B525: 47        .byte $40 + $70 / $10, $00   ; 01 



_off048_B527_06_00:
;                                              +---------------------- pos_X_hi
;                                              |     +---------------- pos_Y_hi
;                                              |     |          +----- 
;                                              |     |          |
- D 1 - I - 0x013537 04:B527: 29        .byte $20 + $90 / $10, $00   ; 00 
- D 1 - I - 0x013539 04:B529: 29        .byte $20 + $90 / $10, $00   ; 01 



_off048_B52B_06_01:
;                                              +---------------------- pos_X_hi
;                                              |     +---------------- pos_Y_hi
;                                              |     |          +----- 
;                                              |     |          |
- D 1 - I - 0x01353B 04:B52B: 29        .byte $20 + $90 / $10, $00   ; 00 



_off048_B52D_06_02:
;                                              +---------------------- pos_X_hi
;                                              |     +---------------- pos_Y_hi
;                                              |     |          +----- 
;                                              |     |          |
- D 1 - I - 0x01353D 04:B52D: 29        .byte $20 + $90 / $10, $00   ; 00 
- D 1 - I - 0x01353F 04:B52F: 47        .byte $40 + $70 / $10, $00   ; 01 
- D 1 - I - 0x013541 04:B531: 29        .byte $20 + $90 / $10, $00   ; 02 



_off048_B533_07_00:
;                                              +---------------------- pos_X_hi
;                                              |     +---------------- pos_Y_hi
;                                              |     |          +----- 
;                                              |     |          |
- D 1 - I - 0x013543 04:B533: 46        .byte $40 + $60 / $10, $00   ; 00 
- D 1 - I - 0x013545 04:B535: 29        .byte $20 + $90 / $10, $00   ; 01 



_off048_B537_07_01:
;                                              +---------------------- pos_X_hi
;                                              |     +---------------- pos_Y_hi
;                                              |     |          +----- 
;                                              |     |          |
- D 1 - I - 0x013547 04:B537: 26        .byte $20 + $60 / $10, $00   ; 00 



_off048_B539_07_02:
;                                              +---------------------- pos_X_hi
;                                              |     +---------------- pos_Y_hi
;                                              |     |          +----- 
;                                              |     |          |
- D 1 - I - 0x013549 04:B539: 26        .byte $20 + $60 / $10, $00   ; 00 



_off048_B53B_07_03:
;                                              +---------------------- pos_X_hi
;                                              |     +---------------- pos_Y_hi
;                                              |     |          +----- 
;                                              |     |          |
- D 1 - I - 0x01354B 04:B53B: 25        .byte $20 + $50 / $10, $00   ; 00 



_off048_B53D_07_04:
;                                              +---------------------- pos_X_hi
;                                              |     +---------------- pos_Y_hi
;                                              |     |          +----- 
;                                              |     |          |
- D 1 - I - 0x01354D 04:B53D: 25        .byte $20 + $50 / $10, $00   ; 00 
- D 1 - I - 0x01354F 04:B53F: 3B        .byte $30 + $B0 / $10, $00   ; 01 



_off048_B541_07_05:
;                                              +---------------------- pos_X_hi
;                                              |     +---------------- pos_Y_hi
;                                              |     |          +----- 
;                                              |     |          |
- D 1 - I - 0x013551 04:B541: 2B        .byte $20 + $B0 / $10, $00   ; 00 
- D 1 - I - 0x013553 04:B543: 8B        .byte $80 + $B0 / $10, $01   ; 01 



_off048_B545_07_06:
;                                              +---------------------- pos_X_hi
;                                              |     +---------------- pos_Y_hi
;                                              |     |          +----- 
;                                              |     |          |
- D 1 - I - 0x013555 04:B545: E9        .byte $E0 + $90 / $10, $04   ; 00 



_off048_B547_08_00:
;                                              +---------------------- pos_X_hi
;                                              |     +---------------- pos_Y_hi
;                                              |     |          +----- 
;                                              |     |          |
- D 1 - I - 0x013557 04:B547: E7        .byte $E0 + $70 / $10, $01   ; 00 
- D 1 - I - 0x013559 04:B549: E7        .byte $E0 + $70 / $10, $04   ; 01 



_off048_B54B_08_01:
;                                              +---------------------- pos_X_hi
;                                              |     +---------------- pos_Y_hi
;                                              |     |          +----- 
;                                              |     |          |
- D 1 - I - 0x01355B 04:B54B: E9        .byte $E0 + $90 / $10, $04   ; 00 



_off048_B54D_08_02:
;                                              +---------------------- pos_X_hi
;                                              |     +---------------- pos_Y_hi
;                                              |     |          +----- 
;                                              |     |          |
- D 1 - I - 0x01355D 04:B54D: E9        .byte $E0 + $90 / $10, $03   ; 00 
- D 1 - I - 0x01355F 04:B54F: 5A        .byte $50 + $A0 / $10, $00   ; 01 



_off048_B551_08_03:
;                                              +---------------------- pos_X_hi
;                                              |     +---------------- pos_Y_hi
;                                              |     |          +----- 
;                                              |     |          |
- D 1 - I - 0x013561 04:B551: 2B        .byte $20 + $B0 / $10, $00   ; 00 



_off048_B553_08_04:
;                                              +---------------------- pos_X_hi
;                                              |     +---------------- pos_Y_hi
;                                              |     |          +----- 
;                                              |     |          |
- D 1 - I - 0x013563 04:B553: 89        .byte $80 + $90 / $10, $04   ; 00 



_off048_B555_09_00:
;                                              +---------------------- pos_X_hi
;                                              |     +---------------- pos_Y_hi
;                                              |     |          +----- 
;                                              |     |          |
- D 1 - I - 0x013565 04:B555: E9        .byte $E0 + $90 / $10, $02   ; 00 
- D 1 - I - 0x013567 04:B557: 9B        .byte $90 + $B0 / $10, $02   ; 01 



_off048_B559_09_01:
;                                              +---------------------- pos_X_hi
;                                              |     +---------------- pos_Y_hi
;                                              |     |          +----- 
;                                              |     |          |
- D 1 - I - 0x013569 04:B559: D9        .byte $D0 + $90 / $10, $01   ; 00 
- D 1 - I - 0x01356B 04:B55B: 3A        .byte $30 + $A0 / $10, $00   ; 01 
- D 1 - I - 0x01356D 04:B55D: 8B        .byte $80 + $B0 / $10, $00   ; 02 



_off048_B55F_0A_00:
;                                              +---------------------- pos_X_hi
;                                              |     +---------------- pos_Y_hi
;                                              |     |          +----- 
;                                              |     |          |
- D 1 - I - 0x01356F 04:B55F: 3B        .byte $30 + $B0 / $10, $00   ; 00 
- D 1 - I - 0x013571 04:B561: 4B        .byte $40 + $B0 / $10, $00   ; 01 



_off048_B563_0A_01:
;                                              +---------------------- pos_X_hi
;                                              |     +---------------- pos_Y_hi
;                                              |     |          +----- 
;                                              |     |          |
- D 1 - I - 0x013573 04:B563: E7        .byte $E0 + $70 / $10, $01   ; 00 



_off048_B565_0A_02:
;                                              +---------------------- pos_X_hi
;                                              |     +---------------- pos_Y_hi
;                                              |     |          +----- 
;                                              |     |          |
- D 1 - I - 0x013575 04:B565: F7        .byte $F0 + $70 / $10, $00   ; 00 



_off048_B567_0A_03:
;                                              +---------------------- pos_X_hi
;                                              |     +---------------- pos_Y_hi
;                                              |     |          +----- 
;                                              |     |          |
- D 1 - I - 0x013577 04:B567: E7        .byte $E0 + $70 / $10, $02   ; 00 
- D 1 - I - 0x013579 04:B569: 85        .byte $80 + $50 / $10, $00   ; 01 



_off048_B56B_0A_04:
;                                              +---------------------- pos_X_hi
;                                              |     +---------------- pos_Y_hi
;                                              |     |          +----- 
;                                              |     |          |
- D 1 - I - 0x01357B 04:B56B: 8A        .byte $80 + $A0 / $10, $00   ; 00 
- D 1 - I - 0x01357D 04:B56D: 9B        .byte $90 + $B0 / $10, $00   ; 01 
- D 1 - I - 0x01357F 04:B56F: 8B        .byte $80 + $B0 / $10, $01   ; 02 



_off048_B571_0A_05:
;                                              +---------------------- pos_X_hi
;                                              |     +---------------- pos_Y_hi
;                                              |     |          +----- 
;                                              |     |          |
- D 1 - I - 0x013581 04:B571: E7        .byte $E0 + $70 / $10, $02   ; 00 
- D 1 - I - 0x013583 04:B573: E9        .byte $E0 + $90 / $10, $02   ; 01 



_off048_B575_0A_06:
;                                              +---------------------- pos_X_hi
;                                              |     +---------------- pos_Y_hi
;                                              |     |          +----- 
;                                              |     |          |
- D 1 - I - 0x013585 04:B575: E9        .byte $E0 + $90 / $10, $00   ; 00 
- D 1 - I - 0x013587 04:B577: E9        .byte $E0 + $90 / $10, $00   ; 01 
- D 1 - I - 0x013589 04:B579: 8B        .byte $80 + $B0 / $10, $00   ; 02 



_off048_B57B_0B_00:
;                                              +---------------------- pos_X_hi
;                                              |     +---------------- pos_Y_hi
;                                              |     |          +----- 
;                                              |     |          |
- D 1 - I - 0x01358B 04:B57B: 27        .byte $20 + $70 / $10, $00   ; 00 
- D 1 - I - 0x01358D 04:B57D: 47        .byte $40 + $70 / $10, $00   ; 01 



_off048_B57F_0B_01:
;                                              +---------------------- pos_X_hi
;                                              |     +---------------- pos_Y_hi
;                                              |     |          +----- 
;                                              |     |          |
- D 1 - I - 0x01358F 04:B57F: 27        .byte $20 + $70 / $10, $00   ; 00 
- D 1 - I - 0x013591 04:B581: 89        .byte $80 + $90 / $10, $00   ; 01 



_off048_B583_0B_02:
;                                              +---------------------- pos_X_hi
;                                              |     +---------------- pos_Y_hi
;                                              |     |          +----- 
;                                              |     |          |
- D 1 - I - 0x013593 04:B583: 88        .byte $80 + $80 / $10, $00   ; 00 
- D 1 - I - 0x013595 04:B585: 44        .byte $40 + $40 / $10, $00   ; 01 
- D 1 - I - 0x013597 04:B587: 27        .byte $20 + $70 / $10, $00   ; 02 



_off048_B589_0C_00:
;                                              +---------------------- pos_X_hi
;                                              |     +---------------- pos_Y_hi
;                                              |     |          +----- 
;                                              |     |          |
- D 1 - I - 0x013599 04:B589: 2C        .byte $20 + $C0 / $10, $00   ; 00 
- D 1 - I - 0x01359B 04:B58B: 4A        .byte $40 + $A0 / $10, $00   ; 01 



_off048_B58D_0C_01:
;                                              +---------------------- pos_X_hi
;                                              |     +---------------- pos_Y_hi
;                                              |     |          +----- 
;                                              |     |          |
- D 1 - I - 0x01359D 04:B58D: 2A        .byte $20 + $A0 / $10, $00   ; 00 
- D 1 - I - 0x01359F 04:B58F: 6C        .byte $60 + $C0 / $10, $00   ; 01 



_off048_B591_0C_02:
;                                              +---------------------- pos_X_hi
;                                              |     +---------------- pos_Y_hi
;                                              |     |          +----- 
;                                              |     |          |
- D 1 - I - 0x0135A1 04:B591: 8C        .byte $80 + $C0 / $10, $00   ; 00 



_off048_B593_0D_00:
;                                              +---------------------- pos_X_hi
;                                              |     +---------------- pos_Y_hi
;                                              |     |          +----- 
;                                              |     |          |
- D 1 - I - 0x0135A3 04:B593: 2B        .byte $20 + $B0 / $10, $00   ; 00 
- D 1 - I - 0x0135A5 04:B595: AB        .byte $A0 + $B0 / $10, $00   ; 01 
- D 1 - I - 0x0135A7 04:B597: 88        .byte $80 + $80 / $10, $00   ; 02 



_off048_B599_0D_01:
;                                              +---------------------- pos_X_hi
;                                              |     +---------------- pos_Y_hi
;                                              |     |          +----- 
;                                              |     |          |
- D 1 - I - 0x0135A9 04:B599: EB        .byte $E0 + $B0 / $10, $01   ; 00 
- D 1 - I - 0x0135AB 04:B59B: D8        .byte $D0 + $80 / $10, $00   ; 01 
- D 1 - I - 0x0135AD 04:B59D: 2B        .byte $20 + $B0 / $10, $00   ; 02 



_off048_B59F_0D_02:
;                                              +---------------------- pos_X_hi
;                                              |     +---------------- pos_Y_hi
;                                              |     |          +----- 
;                                              |     |          |
- D 1 - I - 0x0135AF 04:B59F: 2B        .byte $20 + $B0 / $10, $00   ; 00 
- D 1 - I - 0x0135B1 04:B5A1: 2A        .byte $20 + $A0 / $10, $00   ; 01 
- D 1 - I - 0x0135B3 04:B5A3: 6A        .byte $60 + $A0 / $10, $00   ; 02 



_off048_B5A5_0D_03:
;                                              +---------------------- pos_X_hi
;                                              |     +---------------- pos_Y_hi
;                                              |     |          +----- 
;                                              |     |          |
- D 1 - I - 0x0135B5 04:B5A5: EA        .byte $E0 + $A0 / $10, $02   ; 00 
- D 1 - I - 0x0135B7 04:B5A7: EB        .byte $E0 + $B0 / $10, $02   ; 01 



_off048_B5A9_0E_00:
;                                              +---------------------- pos_X_hi
;                                              |     +---------------- pos_Y_hi
;                                              |     |          +----- 
;                                              |     |          |
- D 1 - I - 0x0135B9 04:B5A9: E8        .byte $E0 + $80 / $10, $01   ; 00 
- D 1 - I - 0x0135BB 04:B5AB: 24        .byte $20 + $40 / $10, $00   ; 01 
- D 1 - I - 0x0135BD 04:B5AD: E7        .byte $E0 + $70 / $10, $01   ; 02 



_off048_B5AF_0E_01:
;                                              +---------------------- pos_X_hi
;                                              |     +---------------- pos_Y_hi
;                                              |     |          +----- 
;                                              |     |          |
- D 1 - I - 0x0135BF 04:B5AF: E8        .byte $E0 + $80 / $10, $01   ; 00 
- D 1 - I - 0x0135C1 04:B5B1: AC        .byte $A0 + $C0 / $10, $02   ; 01 



_off048_B5B3_0E_02:
;                                              +---------------------- pos_X_hi
;                                              |     +---------------- pos_Y_hi
;                                              |     |          +----- 
;                                              |     |          |
- D 1 - I - 0x0135C3 04:B5B3: E7        .byte $E0 + $70 / $10, $01   ; 00 
- D 1 - I - 0x0135C5 04:B5B5: 88        .byte $80 + $80 / $10, $01   ; 01 



sub_0x0135C7:
C - - - - - 0x0135C7 04:B5B7: A5 1F     LDA ram_random
C - - - - - 0x0135C9 04:B5B9: 29 03     AND #$03
C - - - - - 0x0135CB 04:B5BB: 85 09     STA ram_0009_temp
C - - - - - 0x0135CD 04:B5BD: A5 32     LDA ram_blk_hi
; * 04
C - - - - - 0x0135CF 04:B5BF: 0A        ASL
C - - - - - 0x0135D0 04:B5C0: 0A        ASL
C - - - - - 0x0135D1 04:B5C1: 18        CLC
C - - - - - 0x0135D2 04:B5C2: 65 09     ADC ram_0009_temp
C - - - - - 0x0135D4 04:B5C4: A8        TAY
C - - - - - 0x0135D5 04:B5C5: B9 CC B5  LDA tbl_B5CC,Y
C - - - - - 0x0135D8 04:B5C8: 9D 4E 05  STA ram_obj_id,X
C - - - - - 0x0135DB 04:B5CB: 60        RTS



tbl_B5CC:
; 00 
- D 1 - - - 0x0135DC 04:B5CC: 95        .byte $95   ; 00 
- - - - - - 0x0135DD 04:B5CD: 93        .byte $93   ; 01 
- D 1 - - - 0x0135DE 04:B5CE: 93        .byte $93   ; 02 
- - - - - - 0x0135DF 04:B5CF: 97        .byte $97   ; 03 
; 01 
- D 1 - - - 0x0135E0 04:B5D0: 93        .byte $93   ; 00 
- - - - - - 0x0135E1 04:B5D1: 95        .byte $95   ; 01 
- - - - - - 0x0135E2 04:B5D2: 97        .byte $97   ; 02 
- - - - - - 0x0135E3 04:B5D3: 95        .byte $95   ; 03 
; 02 
- D 1 - - - 0x0135E4 04:B5D4: 93        .byte $93   ; 00 
- - - - - - 0x0135E5 04:B5D5: 97        .byte $97   ; 01 
- - - - - - 0x0135E6 04:B5D6: 93        .byte $93   ; 02 
- D 1 - - - 0x0135E7 04:B5D7: 95        .byte $95   ; 03 
; 03 
- - - - - - 0x0135E8 04:B5D8: 93        .byte $93   ; 00 
- - - - - - 0x0135E9 04:B5D9: 95        .byte $95   ; 01 
- - - - - - 0x0135EA 04:B5DA: 93        .byte $93   ; 02 
- D 1 - - - 0x0135EB 04:B5DB: 95        .byte $95   ; 03 
; 04 
- - - - - - 0x0135EC 04:B5DC: 93        .byte $93   ; 00 
- - - - - - 0x0135ED 04:B5DD: 95        .byte $95   ; 01 
- D 1 - - - 0x0135EE 04:B5DE: 97        .byte $97   ; 02 
- - - - - - 0x0135EF 04:B5DF: 95        .byte $95   ; 03 
; 05 
- D 1 - - - 0x0135F0 04:B5E0: 95        .byte $95   ; 00 
- D 1 - - - 0x0135F1 04:B5E1: 95        .byte $95   ; 01 
- - - - - - 0x0135F2 04:B5E2: 97        .byte $97   ; 02 
- - - - - - 0x0135F3 04:B5E3: 95        .byte $95   ; 03 
; 06 
- D 1 - - - 0x0135F4 04:B5E4: 95        .byte $95   ; 00 
- D 1 - - - 0x0135F5 04:B5E5: 95        .byte $95   ; 01 
- D 1 - - - 0x0135F6 04:B5E6: 97        .byte $97   ; 02 
- D 1 - - - 0x0135F7 04:B5E7: 95        .byte $95   ; 03 
; 07 
- - - - - - 0x0135F8 04:B5E8: 97        .byte $97   ; 00 
- D 1 - - - 0x0135F9 04:B5E9: 95        .byte $95   ; 01 
- D 1 - - - 0x0135FA 04:B5EA: 93        .byte $93   ; 02 
- - - - - - 0x0135FB 04:B5EB: 95        .byte $95   ; 03 
; 08 
- - - - - - 0x0135FC 04:B5EC: 97        .byte $97   ; 00 
- D 1 - - - 0x0135FD 04:B5ED: 95        .byte $95   ; 01 
- - - - - - 0x0135FE 04:B5EE: 93        .byte $93   ; 02 
- D 1 - - - 0x0135FF 04:B5EF: 93        .byte $93   ; 03 
; 09 
- - - - - - 0x013600 04:B5F0: 97        .byte $97   ; 00 
- D 1 - - - 0x013601 04:B5F1: 95        .byte $95   ; 01 
- D 1 - - - 0x013602 04:B5F2: 93        .byte $93   ; 02 
- D 1 - - - 0x013603 04:B5F3: 93        .byte $93   ; 03 
; 0A 
- D 1 - - - 0x013604 04:B5F4: 94        .byte $94   ; 00 
- D 1 - - - 0x013605 04:B5F5: 96        .byte $96   ; 01 
- - - - - - 0x013606 04:B5F6: 93        .byte $93   ; 02 
- D 1 - - - 0x013607 04:B5F7: 94        .byte $94   ; 03 
; 0B 
- - - - - - 0x013608 04:B5F8: 97        .byte $97   ; 00 
- - - - - - 0x013609 04:B5F9: 97        .byte $97   ; 01 
- - - - - - 0x01360A 04:B5FA: 93        .byte $93   ; 02 
- - - - - - 0x01360B 04:B5FB: 95        .byte $95   ; 03 
; 0C 
- - - - - - 0x01360C 04:B5FC: 97        .byte $97   ; 00 
- - - - - - 0x01360D 04:B5FD: 94        .byte $94   ; 01 
- D 1 - - - 0x01360E 04:B5FE: 96        .byte $96   ; 02 
- D 1 - - - 0x01360F 04:B5FF: 93        .byte $93   ; 03 
; 0D 
- - - - - - 0x013610 04:B600: 97        .byte $97   ; 00 
- D 1 - - - 0x013611 04:B601: 97        .byte $97   ; 01 
- D 1 - - - 0x013612 04:B602: 93        .byte $93   ; 02 
- - - - - - 0x013613 04:B603: 95        .byte $95   ; 03 
; 0E 
- D 1 - - - 0x013614 04:B604: 93        .byte $93   ; 00 
- - - - - - 0x013615 04:B605: 96        .byte $96   ; 01 
- D 1 - - - 0x013616 04:B606: 95        .byte $95   ; 02 
- D 1 - - - 0x013617 04:B607: 97        .byte $97   ; 03 


; bzk garbage, 0F doesn't exist
- - - - - - 0x013618 04:B608: 97        .byte $97   ; 
- - - - - - 0x013619 04:B609: 93        .byte $93   ; 
- - - - - - 0x01361A 04:B60A: 95        .byte $95   ; 
- - - - - - 0x01361B 04:B60B: 96        .byte $96   ; 



sub_0x01361C:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x01361C 04:B60C: BC EF 05  LDY ram_05EF_obj,X
C - - - - - 0x01361F 04:B60F: BD C1 05  LDA ram_05C1_obj,X
C - - - - - 0x013622 04:B612: D9 16 B6  CMP tbl_B616,Y
C - - - - - 0x013625 04:B615: 60        RTS



tbl_B616:
- D 1 - - - 0x013626 04:B616: FF        .byte $FF   ; 00 
- - - - - - 0x013627 04:B617: 01        .byte $01   ; 01 
- - - - - - 0x013628 04:B618: 03        .byte $03   ; 02 
- D 1 - - - 0x013629 04:B619: 01        .byte $01   ; 03 
- D 1 - - - 0x01362A 04:B61A: 01        .byte $01   ; 04 
- D 1 - - - 0x01362B 04:B61B: 01        .byte $01   ; 05 
- D 1 - - - 0x01362C 04:B61C: 01        .byte $01   ; 06 
- D 1 - - - 0x01362D 04:B61D: 03        .byte $03   ; 07 
- - - - - - 0x01362E 04:B61E: 02        .byte $02   ; 08 
- - - - - - 0x01362F 04:B61F: 01        .byte $01   ; 09 
- D 1 - - - 0x013630 04:B620: 01        .byte $01   ; 0A 
- - - - - - 0x013631 04:B621: 01        .byte $01   ; 0B 
- - - - - - 0x013632 04:B622: 01        .byte $01   ; 0C 
- D 1 - - - 0x013633 04:B623: 01        .byte $01   ; 0D 
- D 1 - - - 0x013634 04:B624: 03        .byte $03   ; 0E 
- - - - - - 0x013635 04:B625: 01        .byte $01   ; 0F 
- D 1 - - - 0x013636 04:B626: 01        .byte $01   ; 10 
- D 1 - - - 0x013637 04:B627: 01        .byte $01   ; 11 
- D 1 - - - 0x013638 04:B628: 02        .byte $02   ; 12 
- D 1 - - - 0x013639 04:B629: 01        .byte $01   ; 13 
- - - - - - 0x01363A 04:B62A: 00        .byte $00   ; 14 
- - - - - - 0x01363B 04:B62B: 00        .byte $00   ; 15 
- - - - - - 0x01363C 04:B62C: 01        .byte $01   ; 16 
- - - - - - 0x01363D 04:B62D: 02        .byte $02   ; 17 
- D 1 - - - 0x01363E 04:B62E: FF        .byte $FF   ; 18 
- - - - - - 0x01363F 04:B62F: FF        .byte $FF   ; 19 
- - - - - - 0x013640 04:B630: FF        .byte $FF   ; 1A 
- - - - - - 0x013641 04:B631: FF        .byte $FF   ; 1B 
- D 1 - - - 0x013642 04:B632: 01        .byte $01   ; 1C 
- D 1 - - - 0x013643 04:B633: 00        .byte $00   ; 1D 
- D 1 - - - 0x013644 04:B634: 02        .byte $02   ; 1E 
- - - - - - 0x013645 04:B635: FF        .byte $FF   ; 1F 
- - - - - - 0x013646 04:B636: FF        .byte $FF   ; 20 
- D 1 - - - 0x013647 04:B637: 02        .byte $02   ; 21 
- - - - - - 0x013648 04:B638: 01        .byte $01   ; 22 
- - - - - - 0x013649 04:B639: 02        .byte $02   ; 23 
- - - - - - 0x01364A 04:B63A: 02        .byte $02   ; 24 
- D 1 - - - 0x01364B 04:B63B: 03        .byte $03   ; 25 
- - - - - - 0x01364C 04:B63C: 01        .byte $01   ; 26 
- D 1 - - - 0x01364D 04:B63D: 02        .byte $02   ; 27 
- - - - - - 0x01364E 04:B63E: 01        .byte $01   ; 28 
- D 1 - - - 0x01364F 04:B63F: 02        .byte $02   ; 29 
- - - - - - 0x013650 04:B640: FF        .byte $FF   ; 2A 
- D 1 - - - 0x013651 04:B641: 01        .byte $01   ; 2B 
- - - - - - 0x013652 04:B642: 01        .byte $01   ; 2C 
- - - - - - 0x013653 04:B643: 01        .byte $01   ; 2D 
- - - - - - 0x013654 04:B644: 01        .byte $01   ; 2E 
- - - - - - 0x013655 04:B645: 02        .byte $02   ; 2F 
- D 1 - - - 0x013656 04:B646: FF        .byte $FF   ; 30 
- - - - - - 0x013657 04:B647: FF        .byte $FF   ; 31 
- D 1 - - - 0x013658 04:B648: FF        .byte $FF   ; 32 
- D 1 - - - 0x013659 04:B649: FF        .byte $FF   ; 33 
- - - - - - 0x01365A 04:B64A: FF        .byte $FF   ; 34 
- - - - - - 0x01365B 04:B64B: FF        .byte $FF   ; 35 
- D 1 - - - 0x01365C 04:B64C: FF        .byte $FF   ; 36 
- - - - - - 0x01365D 04:B64D: FF        .byte $FF   ; 37 
- - - - - - 0x01365E 04:B64E: FF        .byte $FF   ; 38 
- - - - - - 0x01365F 04:B64F: FF        .byte $FF   ; 39 
- - - - - - 0x013660 04:B650: FF        .byte $FF   ; 3A 
- - - - - - 0x013661 04:B651: FF        .byte $FF   ; 3B 
- - - - - - 0x013662 04:B652: FF        .byte $FF   ; 3C 
- - - - - - 0x013663 04:B653: FF        .byte $FF   ; 3D 
- - - - - - 0x013664 04:B654: FF        .byte $FF   ; 3E 
- - - - - - 0x013665 04:B655: FF        .byte $FF   ; 3F 
- - - - - - 0x013666 04:B656: FF        .byte $FF   ; 40 
- D 1 - - - 0x013667 04:B657: FF        .byte $FF   ; 41 
- - - - - - 0x013668 04:B658: FF        .byte $FF   ; 42 
- - - - - - 0x013669 04:B659: FF        .byte $FF   ; 43 
- D 1 - - - 0x01366A 04:B65A: FF        .byte $FF   ; 44 
- D 1 - - - 0x01366B 04:B65B: FF        .byte $FF   ; 45 
- - - - - - 0x01366C 04:B65C: FF        .byte $FF   ; 46 
- D 1 - - - 0x01366D 04:B65D: FF        .byte $FF   ; 47 
- - - - - - 0x01366E 04:B65E: FF        .byte $FF   ; 48 
- - - - - - 0x01366F 04:B65F: FF        .byte $FF   ; 49 
- - - - - - 0x013670 04:B660: FF        .byte $FF   ; 4A 
- - - - - - 0x013671 04:B661: FF        .byte $FF   ; 4B 
- - - - - - 0x013672 04:B662: FF        .byte $FF   ; 4C 
- D 1 - - - 0x013673 04:B663: FF        .byte $FF   ; 4D 
- D 1 - - - 0x013674 04:B664: FF        .byte $FF   ; 4E 
- - - - - - 0x013675 04:B665: FF        .byte $FF   ; 4F 
- - - - - - 0x013676 04:B666: FF        .byte $FF   ; 50 
- - - - - - 0x013677 04:B667: FF        .byte $FF   ; 51 
- - - - - - 0x013678 04:B668: FF        .byte $FF   ; 52 
- - - - - - 0x013679 04:B669: FF        .byte $FF   ; 53 
- - - - - - 0x01367A 04:B66A: FF        .byte $FF   ; 54 
- - - - - - 0x01367B 04:B66B: FF        .byte $FF   ; 55 
- - - - - - 0x01367C 04:B66C: FF        .byte $FF   ; 56 
- - - - - - 0x01367D 04:B66D: FF        .byte $FF   ; 57 
- D 1 - - - 0x01367E 04:B66E: 01        .byte $01   ; 58 
- D 1 - - - 0x01367F 04:B66F: 01        .byte $01   ; 59 
- - - - - - 0x013680 04:B670: 01        .byte $01   ; 5A 
- - - - - - 0x013681 04:B671: 01        .byte $01   ; 5B 
- - - - - - 0x013682 04:B672: 01        .byte $01   ; 5C 
- - - - - - 0x013683 04:B673: 02        .byte $02   ; 5D 
- - - - - - 0x013684 04:B674: 01        .byte $01   ; 5E 
- - - - - - 0x013685 04:B675: 01        .byte $01   ; 5F 
- - - - - - 0x013686 04:B676: FF        .byte $FF   ; 60 
- - - - - - 0x013687 04:B677: FF        .byte $FF   ; 61 
- - - - - - 0x013688 04:B678: 01        .byte $01   ; 62 
- - - - - - 0x013689 04:B679: 03        .byte $03   ; 63 
- D 1 - - - 0x01368A 04:B67A: 01        .byte $01   ; 64 
- - - - - - 0x01368B 04:B67B: 03        .byte $03   ; 65 
- - - - - - 0x01368C 04:B67C: 03        .byte $03   ; 66 
- - - - - - 0x01368D 04:B67D: FF        .byte $FF   ; 67 
- - - - - - 0x01368E 04:B67E: 02        .byte $02   ; 68 
- - - - - - 0x01368F 04:B67F: 04        .byte $04   ; 69 
- - - - - - 0x013690 04:B680: 01        .byte $01   ; 6A 
- - - - - - 0x013691 04:B681: FF        .byte $FF   ; 6B 
- - - - - - 0x013692 04:B682: FF        .byte $FF   ; 6C 
- D 1 - - - 0x013693 04:B683: 03        .byte $03   ; 6D 
- - - - - - 0x013694 04:B684: 03        .byte $03   ; 6E 
- - - - - - 0x013695 04:B685: 01        .byte $01   ; 6F 
- - - - - - 0x013696 04:B686: 01        .byte $01   ; 70 
- - - - - - 0x013697 04:B687: FF        .byte $FF   ; 71 
- - - - - - 0x013698 04:B688: FF        .byte $FF   ; 72 
- - - - - - 0x013699 04:B689: FF        .byte $FF   ; 73 
- - - - - - 0x01369A 04:B68A: FF        .byte $FF   ; 74 
- - - - - - 0x01369B 04:B68B: FF        .byte $FF   ; 75 
- - - - - - 0x01369C 04:B68C: FF        .byte $FF   ; 76 
- - - - - - 0x01369D 04:B68D: FF        .byte $FF   ; 77 



sub_0x01369E:
C - - - - - 0x01369E 04:B68E: 38        SEC
C - - - - - 0x01369F 04:B68F: BD 4E 05  LDA ram_obj_id,X
C - - - - - 0x0136A2 04:B692: E9 40     SBC #$40
C - - - - - 0x0136A4 04:B694: A8        TAY
C - - - - - 0x0136A5 04:B695: B9 A1 B6  LDA tbl_B6A1,Y
C - - - - - 0x0136A8 04:B698: 9D EF 05  STA ram_05EF_obj,X
C - - - - - 0x0136AB 04:B69B: A9 68     LDA #$68
C - - - - - 0x0136AD 04:B69D: 9D 4E 05  STA ram_obj_id,X
C - - - - - 0x0136B0 04:B6A0: 60        RTS



tbl_B6A1:
- D 1 - - - 0x0136B1 04:B6A1: 18        .byte $18   ; 40
- D 1 - - - 0x0136B2 04:B6A2: 18        .byte $18   ; 41
- D 1 - - - 0x0136B3 04:B6A3: 18        .byte $18   ; 42
- D 1 - - - 0x0136B4 04:B6A4: 18        .byte $18   ; 43
- D 1 - - - 0x0136B5 04:B6A5: 18        .byte $18   ; 44
- D 1 - - - 0x0136B6 04:B6A6: 18        .byte $18   ; 45
- D 1 - - - 0x0136B7 04:B6A7: 18        .byte $18   ; 46
- - - - - - 0x0136B8 04:B6A8: 18        .byte $18   ; 47
- D 1 - - - 0x0136B9 04:B6A9: 18        .byte $18   ; 48
- D 1 - - - 0x0136BA 04:B6AA: 18        .byte $18   ; 49
- D 1 - - - 0x0136BB 04:B6AB: 18        .byte $18   ; 4A
- D 1 - - - 0x0136BC 04:B6AC: 18        .byte $18   ; 4B
- D 1 - - - 0x0136BD 04:B6AD: 18        .byte $18   ; 4C
- D 1 - - - 0x0136BE 04:B6AE: 18        .byte $18   ; 4D
- D 1 - - - 0x0136BF 04:B6AF: 1A        .byte $1A   ; 4E
- D 1 - - - 0x0136C0 04:B6B0: 18        .byte $18   ; 4F
- D 1 - - - 0x0136C1 04:B6B1: 20        .byte $20   ; 50
- D 1 - - - 0x0136C2 04:B6B2: 18        .byte $18   ; 51
- D 1 - - - 0x0136C3 04:B6B3: 18        .byte $18   ; 52
- D 1 - - - 0x0136C4 04:B6B4: 18        .byte $18   ; 53
- D 1 - - - 0x0136C5 04:B6B5: 18        .byte $18   ; 54
- D 1 - - - 0x0136C6 04:B6B6: 18        .byte $18   ; 55
- D 1 - - - 0x0136C7 04:B6B7: 18        .byte $18   ; 56
- - - - - - 0x0136C8 04:B6B8: 18        .byte $18   ; 57
- D 1 - - - 0x0136C9 04:B6B9: 18        .byte $18   ; 58
- D 1 - - - 0x0136CA 04:B6BA: 61        .byte $61   ; 59
- D 1 - - - 0x0136CB 04:B6BB: 19        .byte $19   ; 5A
- - - - - - 0x0136CC 04:B6BC: 1A        .byte $1A   ; 5B
- D 1 - - - 0x0136CD 04:B6BD: 18        .byte $18   ; 5C
- D 1 - - - 0x0136CE 04:B6BE: 18        .byte $18   ; 5D
- D 1 - - - 0x0136CF 04:B6BF: 23        .byte $23   ; 5E
- D 1 - - - 0x0136D0 04:B6C0: 18        .byte $18   ; 5F
- D 1 - - - 0x0136D1 04:B6C1: 18        .byte $18   ; 60
- D 1 - - - 0x0136D2 04:B6C2: 18        .byte $18   ; 61
- D 1 - - - 0x0136D3 04:B6C3: 18        .byte $18   ; 62
- D 1 - - - 0x0136D4 04:B6C4: 18        .byte $18   ; 63
- - - - - - 0x0136D5 04:B6C5: 18        .byte $18   ; 64
- D 1 - - - 0x0136D6 04:B6C6: 18        .byte $18   ; 65
- D 1 - - - 0x0136D7 04:B6C7: 18        .byte $18   ; 66
- D 1 - - - 0x0136D8 04:B6C8: 18        .byte $18   ; 67
- - - - - - 0x0136D9 04:B6C9: 18        .byte $18   ; 68
- - - - - - 0x0136DA 04:B6CA: 18        .byte $18   ; 69
- - - - - - 0x0136DB 04:B6CB: 18        .byte $18   ; 6A
- - - - - - 0x0136DC 04:B6CC: 18        .byte $18   ; 6B
- - - - - - 0x0136DD 04:B6CD: 18        .byte $18   ; 6C
- - - - - - 0x0136DE 04:B6CE: 18        .byte $18   ; 6D
- - - - - - 0x0136DF 04:B6CF: 18        .byte $18   ; 6E
- - - - - - 0x0136E0 04:B6D0: 18        .byte $18   ; 6F



tbl_B6D1:
- D 1 - - - 0x0136E1 04:B6D1: 00        .byte $00   ; 48
- D 1 - - - 0x0136E2 04:B6D2: 01        .byte $01   ; 49
- D 1 - - - 0x0136E3 04:B6D3: 01        .byte $01   ; 4A
- D 1 - - - 0x0136E4 04:B6D4: 00        .byte $00   ; 4B
- D 1 - - - 0x0136E5 04:B6D5: 03        .byte $03   ; 4C
- D 1 - - - 0x0136E6 04:B6D6: 01        .byte $01   ; 4D
- D 1 - - - 0x0136E7 04:B6D7: 02        .byte $02   ; 4E
- D 1 - - - 0x0136E8 04:B6D8: 02        .byte $02   ; 4F
- D 1 - - - 0x0136E9 04:B6D9: 01        .byte $01   ; 50
- D 1 - - - 0x0136EA 04:B6DA: 01        .byte $01   ; 51
- D 1 - - - 0x0136EB 04:B6DB: 02        .byte $02   ; 52
- D 1 - - - 0x0136EC 04:B6DC: 02        .byte $02   ; 53
- D 1 - - - 0x0136ED 04:B6DD: 03        .byte $03   ; 54
- D 1 - - - 0x0136EE 04:B6DE: 05        .byte $05   ; 55
- D 1 - - - 0x0136EF 04:B6DF: 04        .byte $04   ; 56
- D 1 - - - 0x0136F0 04:B6E0: 01        .byte $01   ; 57
- D 1 - - - 0x0136F1 04:B6E1: 00        .byte $00   ; 58
- - - - - - 0x0136F2 04:B6E2: 07        .byte $07   ; 59
- D 1 - - - 0x0136F3 04:B6E3: 00        .byte $00   ; 5A
- - - - - - 0x0136F4 04:B6E4: 04        .byte $04   ; 5B
- D 1 - - - 0x0136F5 04:B6E5: 03        .byte $03   ; 5C
- D 1 - - - 0x0136F6 04:B6E6: 02        .byte $02   ; 5D
- D 1 - - - 0x0136F7 04:B6E7: 01        .byte $01   ; 5E
- D 1 - - - 0x0136F8 04:B6E8: 03        .byte $03   ; 5F
- D 1 - - - 0x0136F9 04:B6E9: 00        .byte $00   ; 60
- D 1 - - - 0x0136FA 04:B6EA: 02        .byte $02   ; 61
- D 1 - - - 0x0136FB 04:B6EB: 02        .byte $02   ; 62
- D 1 - - - 0x0136FC 04:B6EC: 04        .byte $04   ; 63
- - - - - - 0x0136FD 04:B6ED: 01        .byte $01   ; 64
- D 1 - - - 0x0136FE 04:B6EE: 02        .byte $02   ; 65
- D 1 - - - 0x0136FF 04:B6EF: 00        .byte $00   ; 66
- D 1 - - - 0x013700 04:B6F0: 00        .byte $00   ; 67



tbl_B6F1:
- D 1 - - - 0x013701 04:B6F1: 50        .byte $50   ; 48
- D 1 - - - 0x013702 04:B6F2: 00        .byte $00   ; 49
- D 1 - - - 0x013703 04:B6F3: 00        .byte $00   ; 4A
- D 1 - - - 0x013704 04:B6F4: 50        .byte $50   ; 4B
- D 1 - - - 0x013705 04:B6F5: 00        .byte $00   ; 4C
- D 1 - - - 0x013706 04:B6F6: 00        .byte $00   ; 4D
- D 1 - - - 0x013707 04:B6F7: 00        .byte $00   ; 4E
- D 1 - - - 0x013708 04:B6F8: 00        .byte $00   ; 4F
- D 1 - - - 0x013709 04:B6F9: 00        .byte $00   ; 50
- D 1 - - - 0x01370A 04:B6FA: 00        .byte $00   ; 51
- D 1 - - - 0x01370B 04:B6FB: 00        .byte $00   ; 52
- D 1 - - - 0x01370C 04:B6FC: 00        .byte $00   ; 53
- D 1 - - - 0x01370D 04:B6FD: 00        .byte $00   ; 54
- D 1 - - - 0x01370E 04:B6FE: 00        .byte $00   ; 55
- D 1 - - - 0x01370F 04:B6FF: 00        .byte $00   ; 56
- D 1 - - - 0x013710 04:B700: 00        .byte $00   ; 57
- D 1 - - - 0x013711 04:B701: 50        .byte $50   ; 58
- - - - - - 0x013712 04:B702: 00        .byte $00   ; 59
- D 1 - - - 0x013713 04:B703: 50        .byte $50   ; 5A
- - - - - - 0x013714 04:B704: 00        .byte $00   ; 5B
- D 1 - - - 0x013715 04:B705: 00        .byte $00   ; 5C
- D 1 - - - 0x013716 04:B706: 00        .byte $00   ; 5D
- D 1 - - - 0x013717 04:B707: 00        .byte $00   ; 5E
- D 1 - - - 0x013718 04:B708: 00        .byte $00   ; 5F
- D 1 - - - 0x013719 04:B709: 50        .byte $50   ; 60
- D 1 - - - 0x01371A 04:B70A: 00        .byte $00   ; 61
- D 1 - - - 0x01371B 04:B70B: 00        .byte $00   ; 62
- D 1 - - - 0x01371C 04:B70C: 00        .byte $00   ; 63
- - - - - - 0x01371D 04:B70D: 00        .byte $00   ; 64
- D 1 - - - 0x01371E 04:B70E: 00        .byte $00   ; 65
- D 1 - - - 0x01371F 04:B70F: 00        .byte $00   ; 66
- D 1 - - - 0x013720 04:B710: 00        .byte $00   ; 67



sub_0x013721:
C - - - - - 0x013721 04:B711: BD 4E 05  LDA ram_obj_id,X
C - - - - - 0x013724 04:B714: C9 48     CMP #$48
C - - - - - 0x013726 04:B716: 90 17     BCC bra_B72F_RTS
C - - - - - 0x013728 04:B718: 38        SEC
C - - - - - 0x013729 04:B719: E9 48     SBC #$48
C - - - - - 0x01372B 04:B71B: A8        TAY
C - - - - - 0x01372C 04:B71C: B9 D1 B6  LDA tbl_B6D1,Y
C - - - - - 0x01372F 04:B71F: 85 02     STA ram_0000_t046_add_score + $02
C - - - - - 0x013731 04:B721: B9 F1 B6  LDA tbl_B6F1,Y
C - - - - - 0x013734 04:B724: 85 01     STA ram_0000_t046_add_score + $01
C - - - - - 0x013736 04:B726: A9 00     LDA #$00
C - - - - - 0x013738 04:B728: 85 03     STA ram_0000_t046_add_score + $03
C - - - - - 0x01373A 04:B72A: 20 77 E7  JSR sub_0x03E787_add_points
C - - - - - 0x01373D 04:B72D: A6 6C     LDX ram_006C_object_index
bra_B72F_RTS:
C - - - - - 0x01373F 04:B72F: 60        RTS



sub_0x013740:
C - - - - - 0x013740 04:B730: BD 70 04  LDA ram_obj_flags,X
C - - - - - 0x013743 04:B733: 29 01     AND #con_obj_flag_01
C - - - - - 0x013745 04:B735: D0 07     BNE bra_B73E
C - - - - - 0x013747 04:B737: BD 70 04  LDA ram_obj_flags,X
C - - - - - 0x01374A 04:B73A: 29 08     AND #con_obj_flag_08
C - - - - - 0x01374C 04:B73C: F0 44     BEQ bra_B782
bra_B73E:
C - - - - - 0x01374E 04:B73E: BD 70 04  LDA ram_obj_flags,X
C - - - - - 0x013751 04:B741: 09 80     ORA #con_obj_flag_not_visible
C - - - - - 0x013753 04:B743: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x013756 04:B746: 20 DA B8  JSR sub_B8DA_check_for_blk_0E_01_01
C - - - - - 0x013759 04:B749: F0 04     BEQ bra_B74F
C - - - - - 0x01375B 04:B74B: E0 0D     CPX #$0D
C - - - - - 0x01375D 04:B74D: B0 3B     BCS bra_B78A_RTS
bra_B74F:
C - - - - - 0x01375F 04:B74F: BD 70 04  LDA ram_obj_flags,X
C - - - - - 0x013762 04:B752: 29 01     AND #con_obj_flag_01
C - - - - - 0x013764 04:B754: F0 34     BEQ bra_B78A_RTS
C - - - - - 0x013766 04:B756: BD 4E 05  LDA ram_obj_id,X
C - - - - - 0x013769 04:B759: C9 90     CMP #$90
C - - - - - 0x01376B 04:B75B: B0 0F     BCS bra_B76C
C - - - - - 0x01376D 04:B75D: 20 AD B7  JSR sub_B7AD
C - - - - - 0x013770 04:B760: 90 28     BCC bra_B78A_RTS
C - - - - - 0x013772 04:B762: BD 70 04  LDA ram_obj_flags,X
C - - - - - 0x013775 04:B765: 29 04     AND #con_obj_flag_04
C - - - - - 0x013777 04:B767: F0 03     BEQ bra_B76C
C - - - - - 0x013779 04:B769: 20 3E B8  JSR sub_B83E
bra_B76C:
loc_B76C:
C D 1 - - - 0x01377C 04:B76C: BD 4E 05  LDA ram_obj_id,X
C - - - - - 0x01377F 04:B76F: C9 5D     CMP #$5D
C - - - - - 0x013781 04:B771: F0 18     BEQ bra_B78B
C - - - - - 0x013783 04:B773: A9 00     LDA #$00
C - - - - - 0x013785 04:B775: 9D 4E 05  STA ram_obj_id,X
C - - - - - 0x013788 04:B778: 9D 70 04  STA ram_obj_flags,X ; con_obj_flag_00
C - - - - - 0x01378B 04:B77B: 9D 00 04  STA ram_obj_anim_id,X
C - - - - - 0x01378E 04:B77E: 9D EF 05  STA ram_05EF_obj,X
C - - - - - 0x013791 04:B781: 60        RTS
bra_B782:
C - - - - - 0x013792 04:B782: BD 70 04  LDA ram_obj_flags,X
C - - - - - 0x013795 04:B785: 29 7F     AND #con_obj_flag_not_visible ^ $FF
C - - - - - 0x013797 04:B787: 9D 70 04  STA ram_obj_flags,X
bra_B78A_RTS:
C - - - - - 0x01379A 04:B78A: 60        RTS
bra_B78B:
C - - - - - 0x01379B 04:B78B: BD 1D 06  LDA ram_061D_obj,X
C - - - - - 0x01379E 04:B78E: AA        TAX
C - - - - - 0x01379F 04:B78F: BD 70 04  LDA ram_obj_flags,X
C - - - - - 0x0137A2 04:B792: 29 81     AND #con_obj_flag_not_visible + con_obj_flag_01
C - - - - - 0x0137A4 04:B794: F0 03     BEQ bra_B799
C - - - - - 0x0137A6 04:B796: 20 9B B7  JSR sub_B79B
bra_B799:
C - - - - - 0x0137A9 04:B799: A6 6C     LDX ram_006C_object_index
sub_B79B:
C - - - - - 0x0137AB 04:B79B: A9 00     LDA #$00
C - - - - - 0x0137AD 04:B79D: 9D 57 06  STA ram_obj_0658,X
C - - - - - 0x0137B0 04:B7A0: 9D 70 04  STA ram_obj_flags,X ; con_obj_flag_00
C - - - - - 0x0137B3 04:B7A3: 9D C1 05  STA ram_05C1_obj,X
C - - - - - 0x0137B6 04:B7A6: 9D 00 04  STA ram_obj_anim_id,X
C - - - - - 0x0137B9 04:B7A9: 9D 4E 05  STA ram_obj_id,X
C - - - - - 0x0137BC 04:B7AC: 60        RTS



sub_B7AD:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x0137BD 04:B7AD: C9 40     CMP #$40
C - - - - - 0x0137BF 04:B7AF: 90 47     BCC bra_B7F8
C - - - - - 0x0137C1 04:B7B1: C9 77     CMP #$77
C - - - - - 0x0137C3 04:B7B3: B0 43     BCS bra_B7F8
C - - - - - 0x0137C5 04:B7B5: 38        SEC
C - - - - - 0x0137C6 04:B7B6: E9 40     SBC #$40
C - - - - - 0x0137C8 04:B7B8: A8        TAY
C - - - - - 0x0137C9 04:B7B9: B9 06 B8  LDA tbl_B806,Y
C - - - - - 0x0137CC 04:B7BC: F0 46     BEQ bra_B804
C - - - - - 0x0137CE 04:B7BE: C9 02     CMP #$02
C - - - - - 0x0137D0 04:B7C0: F0 25     BEQ bra_B7E7
C - - - - - 0x0137D2 04:B7C2: BD 38 04  LDA ram_obj_pos_X_hi,X
C - - - - - 0x0137D5 04:B7C5: C9 E0     CMP #$E0
C - - - - - 0x0137D7 04:B7C7: B0 04     BCS bra_B7CD
C - - - - - 0x0137D9 04:B7C9: C9 20     CMP #$20
C - - - - - 0x0137DB 04:B7CB: B0 12     BCS bra_B7DF
bra_B7CD:
C - - - - - 0x0137DD 04:B7CD: BD 70 04  LDA ram_obj_flags,X
C - - - - - 0x0137E0 04:B7D0: 29 02     AND #con_obj_flag_02
C - - - - - 0x0137E2 04:B7D2: D0 13     BNE bra_B7E7
C - - - - - 0x0137E4 04:B7D4: BD 70 04  LDA ram_obj_flags,X
C - - - - - 0x0137E7 04:B7D7: 09 40     ORA #con_obj_flag_40
C - - - - - 0x0137E9 04:B7D9: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x0137EC 04:B7DC: 4C E7 B7  JMP loc_B7E7
bra_B7DF:
C - - - - - 0x0137EF 04:B7DF: BD 70 04  LDA ram_obj_flags,X
C - - - - - 0x0137F2 04:B7E2: 29 BF     AND #con_obj_flag_40 ^ $FF
C - - - - - 0x0137F4 04:B7E4: 9D 70 04  STA ram_obj_flags,X
bra_B7E7:
loc_B7E7:
C D 1 - - - 0x0137F7 04:B7E7: BD 4E 05  LDA ram_obj_id,X
C - - - - - 0x0137FA 04:B7EA: C9 59     CMP #$59
C - - - - - 0x0137FC 04:B7EC: F0 0C     BEQ bra_B7FA
C - - - - - 0x0137FE 04:B7EE: BD 38 04  LDA ram_obj_pos_X_hi,X
C - - - - - 0x013801 04:B7F1: C9 D0     CMP #$D0
C - - - - - 0x013803 04:B7F3: B0 03     BCS bra_B7F8
C - - - - - 0x013805 04:B7F5: C9 31     CMP #$31
C - - - - - 0x013807 04:B7F7: 60        RTS
bra_B7F8:
C - - - - - 0x013808 04:B7F8: 18        CLC
C - - - - - 0x013809 04:B7F9: 60        RTS
bra_B7FA:
C - - - - - 0x01380A 04:B7FA: BD 38 04  LDA ram_obj_pos_X_hi,X
C - - - - - 0x01380D 04:B7FD: C9 C0     CMP #$C0
C - - - - - 0x01380F 04:B7FF: B0 F7     BCS bra_B7F8
- - - - - - 0x013811 04:B801: C9 41     CMP #$41
- - - - - - 0x013813 04:B803: 60        RTS
bra_B804:
C - - - - - 0x013814 04:B804: 38        SEC
C - - - - - 0x013815 04:B805: 60        RTS



tbl_B806:
- D 1 - - - 0x013816 04:B806: 00        .byte $00   ; 40
- D 1 - - - 0x013817 04:B807: 00        .byte $00   ; 41
- - - - - - 0x013818 04:B808: 00        .byte $00   ; 42
- - - - - - 0x013819 04:B809: 00        .byte $00   ; 43
- D 1 - - - 0x01381A 04:B80A: 00        .byte $00   ; 44
- - - - - - 0x01381B 04:B80B: 00        .byte $00   ; 45
- - - - - - 0x01381C 04:B80C: 00        .byte $00   ; 46
- D 1 - - - 0x01381D 04:B80D: 00        .byte $00   ; 47
- D 1 - - - 0x01381E 04:B80E: 00        .byte $00   ; 48
- D 1 - - - 0x01381F 04:B80F: 02        .byte $02   ; 49
- D 1 - - - 0x013820 04:B810: 02        .byte $02   ; 4A
- D 1 - - - 0x013821 04:B811: 00        .byte $00   ; 4B
- D 1 - - - 0x013822 04:B812: 02        .byte $02   ; 4C
- D 1 - - - 0x013823 04:B813: 01        .byte $01   ; 4D
- - - - - - 0x013824 04:B814: 01        .byte $01   ; 4E
- D 1 - - - 0x013825 04:B815: 02        .byte $02   ; 4F
- D 1 - - - 0x013826 04:B816: 02        .byte $02   ; 50
- D 1 - - - 0x013827 04:B817: 00        .byte $00   ; 51
- D 1 - - - 0x013828 04:B818: 02        .byte $02   ; 52
- D 1 - - - 0x013829 04:B819: 02        .byte $02   ; 53
- D 1 - - - 0x01382A 04:B81A: 01        .byte $01   ; 54
- D 1 - - - 0x01382B 04:B81B: 01        .byte $01   ; 55
- D 1 - - - 0x01382C 04:B81C: 01        .byte $01   ; 56
- D 1 - - - 0x01382D 04:B81D: 01        .byte $01   ; 57
- D 1 - - - 0x01382E 04:B81E: 02        .byte $02   ; 58
- D 1 - - - 0x01382F 04:B81F: 02        .byte $02   ; 59
- D 1 - - - 0x013830 04:B820: 01        .byte $01   ; 5A
- D 1 - - - 0x013831 04:B821: 01        .byte $01   ; 5B
- D 1 - - - 0x013832 04:B822: 01        .byte $01   ; 5C
- D 1 - - - 0x013833 04:B823: 02        .byte $02   ; 5D
- D 1 - - - 0x013834 04:B824: 02        .byte $02   ; 5E
- D 1 - - - 0x013835 04:B825: 02        .byte $02   ; 5F
- D 1 - - - 0x013836 04:B826: 02        .byte $02   ; 60
- D 1 - - - 0x013837 04:B827: 02        .byte $02   ; 61
- D 1 - - - 0x013838 04:B828: 01        .byte $01   ; 62
- D 1 - - - 0x013839 04:B829: 01        .byte $01   ; 63
- D 1 - - - 0x01383A 04:B82A: 01        .byte $01   ; 64
- D 1 - - - 0x01383B 04:B82B: 02        .byte $02   ; 65
- - - - - - 0x01383C 04:B82C: 02        .byte $02   ; 66
- - - - - - 0x01383D 04:B82D: 02        .byte $02   ; 67
- D 1 - - - 0x01383E 04:B82E: 02        .byte $02   ; 68
- - - - - - 0x01383F 04:B82F: 02        .byte $02   ; 69
- - - - - - 0x013840 04:B830: 02        .byte $02   ; 6A
- - - - - - 0x013841 04:B831: 02        .byte $02   ; 6B
- - - - - - 0x013842 04:B832: 02        .byte $02   ; 6C
- - - - - - 0x013843 04:B833: 02        .byte $02   ; 6D
- - - - - - 0x013844 04:B834: 02        .byte $02   ; 6E
- - - - - - 0x013845 04:B835: 02        .byte $02   ; 6F
- - - - - - 0x013846 04:B836: 02        .byte $02   ; 70
- D 1 - - - 0x013847 04:B837: 02        .byte $02   ; 71
- D 1 - - - 0x013848 04:B838: 02        .byte $02   ; 72
- D 1 - - - 0x013849 04:B839: 02        .byte $02   ; 73
- D 1 - - - 0x01384A 04:B83A: 02        .byte $02   ; 74
- D 1 - - - 0x01384B 04:B83B: 02        .byte $02   ; 75
- D 1 - - - 0x01384C 04:B83C: 02        .byte $02   ; 76
- - - - - - 0x01384D 04:B83D: 02        .byte $02   ; 77



sub_B83E:
C - - - - - 0x01384E 04:B83E: BD 45 06  LDA ram_obj_0646,X
C - - - - - 0x013851 04:B841: AA        TAX
C - - - - - 0x013852 04:B842: A9 03     LDA #$03
C - - - - - 0x013854 04:B844: BC C2 07  LDY ram_07C2,X
C - - - - - 0x013857 04:B847: C0 18     CPY #$18
C - - - - - 0x013859 04:B849: F0 06     BEQ bra_B851
C - - - - - 0x01385B 04:B84B: C0 4B     CPY #$4B
C - - - - - 0x01385D 04:B84D: F0 02     BEQ bra_B851
C - - - - - 0x01385F 04:B84F: A9 02     LDA #$02
bra_B851:
C - - - - - 0x013861 04:B851: 9D C8 07  STA ram_07C8,X
C - - - - - 0x013864 04:B854: A6 6C     LDX ram_006C_object_index
C - - - - - 0x013866 04:B856: 60        RTS



sub_0x013867:
C - - - - - 0x013867 04:B857: BD 4E 05  LDA ram_obj_id,X
C - - - - - 0x01386A 04:B85A: C9 40     CMP #$40
C - - - - - 0x01386C 04:B85C: 90 0E     BCC bra_B86C_RTS
C - - - - - 0x01386E 04:B85E: C9 76     CMP #$76
C - - - - - 0x013870 04:B860: B0 0A     BCS bra_B86C_RTS
C - - - - - 0x013872 04:B862: BD 1C 04  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x013875 04:B865: C9 F8     CMP #$F8
C - - - - - 0x013877 04:B867: 90 03     BCC bra_B86C_RTS
C - - - - - 0x013879 04:B869: 4C 6C B7  JMP loc_B76C
bra_B86C_RTS:
C - - - - - 0x01387C 04:B86C: 60        RTS



sub_0x01387D:
C - - - - - 0x01387D 04:B86D: BD 4E 05  LDA ram_obj_id,X
C - - - - - 0x013880 04:B870: 4A        LSR
C - - - - - 0x013881 04:B871: 90 07     BCC bra_B87A
C - - - - - 0x013883 04:B873: A8        TAY
C - - - - - 0x013884 04:B874: B9 89 B8  LDA tbl_B889,Y
C - - - - - 0x013887 04:B877: 29 0F     AND #$0F
C - - - - - 0x013889 04:B879: 60        RTS
bra_B87A:
C - - - - - 0x01388A 04:B87A: A8        TAY
C - - - - - 0x01388B 04:B87B: B9 89 B8  LDA tbl_B889,Y
; / 10
C - - - - - 0x01388E 04:B87E: 4A        LSR
C - - - - - 0x01388F 04:B87F: 4A        LSR
C - - - - - 0x013890 04:B880: 4A        LSR
C - - - - - 0x013891 04:B881: 4A        LSR
C - - - - - 0x013892 04:B882: 60        RTS



tbl_0x013893_pos_Y_hi:
- - - - - - 0x013893 04:B883: 02        .byte $02   ; 00 
- D 1 - - - 0x013894 04:B884: 04        .byte $04   ; 01 
- D 1 - - - 0x013895 04:B885: 06        .byte $06   ; 02 
- D 1 - - - 0x013896 04:B886: 08        .byte $08   ; 03 
- D 1 - - - 0x013897 04:B887: 10        .byte $10   ; 04 
- - - - - - 0x013898 04:B888: 18        .byte $18   ; 05 



tbl_B889:
;                                              +----------------- 
;                                              |           +----- 
;                                              |           |
- D 1 - - - 0x013899 04:B889: 45        .byte $04 * $10 + $05   ; 00 
- - - - - - 0x01389A 04:B88A: 34        .byte $03 * $10 + $04   ; 02 
- - - - - - 0x01389B 04:B88B: 44        .byte $04 * $10 + $04   ; 04 
- - - - - - 0x01389C 04:B88C: 44        .byte $04 * $10 + $04   ; 06 
- - - - - - 0x01389D 04:B88D: 24        .byte $02 * $10 + $04   ; 08 
- - - - - - 0x01389E 04:B88E: 44        .byte $04 * $10 + $04   ; 0A 
- - - - - - 0x01389F 04:B88F: 44        .byte $04 * $10 + $04   ; 0C 
- - - - - - 0x0138A0 04:B890: 44        .byte $04 * $10 + $04   ; 0E 
- - - - - - 0x0138A1 04:B891: 44        .byte $04 * $10 + $04   ; 10 
- - - - - - 0x0138A2 04:B892: 44        .byte $04 * $10 + $04   ; 12 
- - - - - - 0x0138A3 04:B893: 44        .byte $04 * $10 + $04   ; 14 
- - - - - - 0x0138A4 04:B894: 44        .byte $04 * $10 + $04   ; 16 
- - - - - - 0x0138A5 04:B895: 44        .byte $04 * $10 + $04   ; 18 
- - - - - - 0x0138A6 04:B896: 44        .byte $04 * $10 + $04   ; 1A 
- - - - - - 0x0138A7 04:B897: 44        .byte $04 * $10 + $04   ; 1C 
- - - - - - 0x0138A8 04:B898: 44        .byte $04 * $10 + $04   ; 1E 
- - - - - - 0x0138A9 04:B899: 44        .byte $04 * $10 + $04   ; 20 
- - - - - - 0x0138AA 04:B89A: 04        .byte $00 * $10 + $04   ; 22 
- - - - - - 0x0138AB 04:B89B: 44        .byte $04 * $10 + $04   ; 24 
- - - - - - 0x0138AC 04:B89C: 44        .byte $04 * $10 + $04   ; 26 
- - - - - - 0x0138AD 04:B89D: 44        .byte $04 * $10 + $04   ; 28 
- - - - - - 0x0138AE 04:B89E: 44        .byte $04 * $10 + $04   ; 2A 
- - - - - - 0x0138AF 04:B89F: 44        .byte $04 * $10 + $04   ; 2C 
- - - - - - 0x0138B0 04:B8A0: 44        .byte $04 * $10 + $04   ; 2E 
- - - - - - 0x0138B1 04:B8A1: 44        .byte $04 * $10 + $04   ; 30 
- - - - - - 0x0138B2 04:B8A2: 44        .byte $04 * $10 + $04   ; 32 
- - - - - - 0x0138B3 04:B8A3: 44        .byte $04 * $10 + $04   ; 34 
- - - - - - 0x0138B4 04:B8A4: 44        .byte $04 * $10 + $04   ; 36 
- - - - - - 0x0138B5 04:B8A5: 44        .byte $04 * $10 + $04   ; 38 
- - - - - - 0x0138B6 04:B8A6: 44        .byte $04 * $10 + $04   ; 3A 
- - - - - - 0x0138B7 04:B8A7: 44        .byte $04 * $10 + $04   ; 3C 
- - - - - - 0x0138B8 04:B8A8: 44        .byte $04 * $10 + $04   ; 3E 
- - - - - - 0x0138B9 04:B8A9: 11        .byte $01 * $10 + $01   ; 40 
- - - - - - 0x0138BA 04:B8AA: 12        .byte $01 * $10 + $02   ; 42 
- - - - - - 0x0138BB 04:B8AB: 04        .byte $00 * $10 + $04   ; 44 
- - - - - - 0x0138BC 04:B8AC: 44        .byte $04 * $10 + $04   ; 46 
- - - - - - 0x0138BD 04:B8AD: 42        .byte $04 * $10 + $02   ; 48 
- D 1 - - - 0x0138BE 04:B8AE: 13        .byte $01 * $10 + $03   ; 4A 
- - - - - - 0x0138BF 04:B8AF: 34        .byte $03 * $10 + $04   ; 4C 
- - - - - - 0x0138C0 04:B8B0: 43        .byte $04 * $10 + $03   ; 4E 
- - - - - - 0x0138C1 04:B8B1: 44        .byte $04 * $10 + $04   ; 50 
- - - - - - 0x0138C2 04:B8B2: 32        .byte $03 * $10 + $02   ; 52 
- - - - - - 0x0138C3 04:B8B3: 44        .byte $04 * $10 + $04   ; 54 
- - - - - - 0x0138C4 04:B8B4: 44        .byte $04 * $10 + $04   ; 56 
- D 1 - - - 0x0138C5 04:B8B5: 43        .byte $04 * $10 + $03   ; 58 
- - - - - - 0x0138C6 04:B8B6: 44        .byte $04 * $10 + $04   ; 5A 
- D 1 - - - 0x0138C7 04:B8B7: 43        .byte $04 * $10 + $03   ; 5C 
- - - - - - 0x0138C8 04:B8B8: 34        .byte $03 * $10 + $04   ; 5E 
- - - - - - 0x0138C9 04:B8B9: 43        .byte $04 * $10 + $03   ; 60 
- - - - - - 0x0138CA 04:B8BA: 44        .byte $04 * $10 + $04   ; 62 
- - - - - - 0x0138CB 04:B8BB: 34        .byte $03 * $10 + $04   ; 64 
- - - - - - 0x0138CC 04:B8BC: 44        .byte $04 * $10 + $04   ; 66 
- - - - - - 0x0138CD 04:B8BD: 44        .byte $04 * $10 + $04   ; 68 
- - - - - - 0x0138CE 04:B8BE: 44        .byte $04 * $10 + $04   ; 6A 
- - - - - - 0x0138CF 04:B8BF: 44        .byte $04 * $10 + $04   ; 6C 
- - - - - - 0x0138D0 04:B8C0: 44        .byte $04 * $10 + $04   ; 6E 
- - - - - - 0x0138D1 04:B8C1: 44        .byte $04 * $10 + $04   ; 70 
- - - - - - 0x0138D2 04:B8C2: 44        .byte $04 * $10 + $04   ; 72 
- - - - - - 0x0138D3 04:B8C3: 44        .byte $04 * $10 + $04   ; 74 
- - - - - - 0x0138D4 04:B8C4: 44        .byte $04 * $10 + $04   ; 76 
- D 1 - - - 0x0138D5 04:B8C5: 42        .byte $04 * $10 + $02   ; 78 
- - - - - - 0x0138D6 04:B8C6: 34        .byte $03 * $10 + $04   ; 7A 
- D 1 - - - 0x0138D7 04:B8C7: 41        .byte $04 * $10 + $01   ; 7C 
- D 1 - - - 0x0138D8 04:B8C8: 43        .byte $04 * $10 + $03   ; 7E 
- D 1 - - - 0x0138D9 04:B8C9: 44        .byte $04 * $10 + $04   ; 80 
- D 1 - - - 0x0138DA 04:B8CA: 34        .byte $03 * $10 + $04   ; 82 
- D 1 - - - 0x0138DB 04:B8CB: 44        .byte $04 * $10 + $04   ; 84 
- D 1 - - - 0x0138DC 04:B8CC: 33        .byte $03 * $10 + $03   ; 86 
- D 1 - - - 0x0138DD 04:B8CD: 34        .byte $03 * $10 + $04   ; 88 
- D 1 - - - 0x0138DE 04:B8CE: 34        .byte $03 * $10 + $04   ; 8A 
- - - - - - 0x0138DF 04:B8CF: 44        .byte $04 * $10 + $04   ; 8C 
- - - - - - 0x0138E0 04:B8D0: 44        .byte $04 * $10 + $04   ; 8E 



tbl_0x0138E1_pos_Y_hi:
- D 1 - - - 0x0138E1 04:B8D1: 10        .byte $10   ; 00 
- D 1 - - - 0x0138E2 04:B8D2: 10        .byte $10   ; 01 
- D 1 - - - 0x0138E3 04:B8D3: 0C        .byte $0C   ; 02 
- D 1 - - - 0x0138E4 04:B8D4: 10        .byte $10   ; 03 
- D 1 - - - 0x0138E5 04:B8D5: 10        .byte $10   ; 04 
- - - - - - 0x0138E6 04:B8D6: 10        .byte $10   ; 05 
- - - - - - 0x0138E7 04:B8D7: 0C        .byte $0C   ; 06 
- - - - - - 0x0138E8 04:B8D8: 10        .byte $10   ; 07 
- - - - - - 0x0138E9 04:B8D9: 04        .byte $04   ; 08 



sub_B8DA_check_for_blk_0E_01_01:
; bzk optimize, sing;e JSR to here
; out
    ; Z
        ; 0 = it's 0E-01-01
        ; 1 = it's not 0E-01-01
C - - - - - 0x0138EA 04:B8DA: A5 32     LDA ram_blk_hi
C - - - - - 0x0138EC 04:B8DC: C9 0E     CMP #$0E
C - - - - - 0x0138EE 04:B8DE: D0 0A     BNE bra_B8EA_RTS
C - - - - - 0x0138F0 04:B8E0: A5 33     LDA ram_blk_lo
C - - - - - 0x0138F2 04:B8E2: C9 01     CMP #$01
C - - - - - 0x0138F4 04:B8E4: D0 04     BNE bra_B8EA_RTS
C - - - - - 0x0138F6 04:B8E6: A5 34     LDA ram_blk_fr
C - - - - - 0x0138F8 04:B8E8: C9 01     CMP #$01
bra_B8EA_RTS:
C - - - - - 0x0138FA 04:B8EA: 60        RTS



sub_0x0138FB:
; searching for something
; out
    ; C
        ; 0 = not found
        ; 1 = found
C - - - - - 0x0138FB 04:B8EB: A2 01     LDX #$01
bra_B8ED_loop:
C - - - - - 0x0138FD 04:B8ED: BD 4E 05  LDA ram_obj_id,X
C - - - - - 0x013900 04:B8F0: F0 0B     BEQ bra_B8FD
C - - - - - 0x013902 04:B8F2: C9 6C     CMP #$6C
C - - - - - 0x013904 04:B8F4: F0 0E     BEQ bra_B904
C - - - - - 0x013906 04:B8F6: BD 70 04  LDA ram_obj_flags,X
C - - - - - 0x013909 04:B8F9: 29 02     AND #con_obj_flag_02
C - - - - - 0x01390B 04:B8FB: D0 07     BNE bra_B904
bra_B8FD:
C - - - - - 0x01390D 04:B8FD: E8        INX
C - - - - - 0x01390E 04:B8FE: E0 0D     CPX #$0D
C - - - - - 0x013910 04:B900: 90 EB     BCC bra_B8ED_loop
C - - - - - 0x013912 04:B902: 18        CLC
C - - - - - 0x013913 04:B903: 60        RTS
bra_B904:
- - - - - - 0x013914 04:B904: 38        SEC
- - - - - - 0x013915 04:B905: 60        RTS



sub_0x013916:
C - - - - - 0x013916 04:B906: BD 70 04  LDA ram_obj_flags,X
C - - - - - 0x013919 04:B909: 29 FE     AND #con_obj_flag_01 ^ $FF
C - - - - - 0x01391B 04:B90B: 85 01     STA ram_0001_temp
C - - - - - 0x01391D 04:B90D: A0 00     LDY #$00
C - - - - - 0x01391F 04:B90F: A5 6E     LDA ram_006E_cam_speed
C - - - - - 0x013921 04:B911: 10 01     BPL bra_B914
C - - - - - 0x013923 04:B913: 88        DEY ; FF
bra_B914:
C - - - - - 0x013924 04:B914: 84 00     STY ram_0000_temp
C - - - - - 0x013926 04:B916: A5 68     LDA ram_0068
C - - - - - 0x013928 04:B918: 30 18     BMI bra_B932
C - - - - - 0x01392A 04:B91A: 38        SEC
C - - - - - 0x01392B 04:B91B: BD 38 04  LDA ram_obj_pos_X_hi,X
C - - - - - 0x01392E 04:B91E: E5 6E     SBC ram_006E_cam_speed
C - - - - - 0x013930 04:B920: 9D 38 04  STA ram_obj_pos_X_hi,X
C - - - - - 0x013933 04:B923: BD 70 04  LDA ram_obj_flags,X
C - - - - - 0x013936 04:B926: 29 01     AND #con_obj_flag_01
C - - - - - 0x013938 04:B928: E5 00     SBC ram_0000_temp
C - - - - - 0x01393A 04:B92A: 29 01     AND #$01
C - - - - - 0x01393C 04:B92C: 05 01     ORA ram_0001_temp
C - - - - - 0x01393E 04:B92E: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x013941 04:B931: 60        RTS
bra_B932:
C - - - - - 0x013942 04:B932: 29 01     AND #$01
C - - - - - 0x013944 04:B934: D0 2F     BNE bra_B965
C - - - - - 0x013946 04:B936: 18        CLC
C - - - - - 0x013947 04:B937: BD 1C 04  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x01394A 04:B93A: 65 6E     ADC ram_006E_cam_speed
C - - - - - 0x01394C 04:B93C: 9D 1C 04  STA ram_obj_pos_Y_hi,X
C - - - - - 0x01394F 04:B93F: BD 70 04  LDA ram_obj_flags,X
C - - - - - 0x013952 04:B942: 29 01     AND #con_obj_flag_01
C - - - - - 0x013954 04:B944: 65 00     ADC ram_0000_temp
C - - - - - 0x013956 04:B946: 29 01     AND #$01
C - - - - - 0x013958 04:B948: 05 01     ORA ram_0001_temp
C - - - - - 0x01395A 04:B94A: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x01395D 04:B94D: 29 01     AND #con_obj_flag_01
C - - - - - 0x01395F 04:B94F: F0 32     BEQ bra_B983
bra_B951:
C - - - - - 0x013961 04:B951: BD 4E 05  LDA ram_obj_id,X
C - - - - - 0x013964 04:B954: C9 90     CMP #$90
C - - - - - 0x013966 04:B956: B0 04     BCS bra_B95C
C - - - - - 0x013968 04:B958: C9 78     CMP #$78
C - - - - - 0x01396A 04:B95A: B0 08     BCS bra_B964_RTS
bra_B95C:
C - - - - - 0x01396C 04:B95C: A9 00     LDA #$00
C - - - - - 0x01396E 04:B95E: 9D 4E 05  STA ram_obj_id,X
C - - - - - 0x013971 04:B961: 9D 00 04  STA ram_obj_anim_id,X
bra_B964_RTS:
C - - - - - 0x013974 04:B964: 60        RTS
bra_B965:
C - - - - - 0x013975 04:B965: 18        CLC
C - - - - - 0x013976 04:B966: BD 1C 04  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x013979 04:B969: 65 6E     ADC ram_006E_cam_speed
C - - - - - 0x01397B 04:B96B: 9D 1C 04  STA ram_obj_pos_Y_hi,X
C - - - - - 0x01397E 04:B96E: BD 70 04  LDA ram_obj_flags,X
C - - - - - 0x013981 04:B971: 29 01     AND #con_obj_flag_01
C - - - - - 0x013983 04:B973: 65 00     ADC ram_0000_temp
C - - - - - 0x013985 04:B975: 29 01     AND #$01
C - - - - - 0x013987 04:B977: 05 01     ORA ram_0001_temp
C - - - - - 0x013989 04:B979: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x01398C 04:B97C: BD 1C 04  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x01398F 04:B97F: C9 30     CMP #$30
C - - - - - 0x013991 04:B981: 90 CE     BCC bra_B951
bra_B983:
C - - - - - 0x013993 04:B983: A5 6E     LDA ram_006E_cam_speed
C - - - - - 0x013995 04:B985: F0 24     BEQ bra_B9AB_RTS
C - - - - - 0x013997 04:B987: BD 4E 05  LDA ram_obj_id,X
C - - - - - 0x01399A 04:B98A: C9 4B     CMP #$4B
C - - - - - 0x01399C 04:B98C: D0 1D     BNE bra_B9AB_RTS
C - - - - - 0x01399E 04:B98E: A0 00     LDY #$00
C - - - - - 0x0139A0 04:B990: A5 68     LDA ram_0068
C - - - - - 0x0139A2 04:B992: 29 01     AND #$01
C - - - - - 0x0139A4 04:B994: F0 02     BEQ bra_B998
; bzk optimize, DEY
C - - - - - 0x0139A6 04:B996: A0 FF     LDY #$FF
bra_B998:
C - - - - - 0x0139A8 04:B998: 84 04     STY ram_0004_temp
C - - - - - 0x0139AA 04:B99A: 18        CLC
C - - - - - 0x0139AB 04:B99B: BD 06 06  LDA ram_obj_config,X
C - - - - - 0x0139AE 04:B99E: 65 6E     ADC ram_006E_cam_speed
C - - - - - 0x0139B0 04:B9A0: 9D 06 06  STA ram_obj_config,X
C - - - - - 0x0139B3 04:B9A3: BD 1D 06  LDA ram_061D_obj,X
C - - - - - 0x0139B6 04:B9A6: 65 04     ADC ram_0004_temp
C - - - - - 0x0139B8 04:B9A8: 9D 1D 06  STA ram_061D_obj,X
bra_B9AB_RTS:
C - - - - - 0x0139BB 04:B9AB: 60        RTS



sub_0x0139BC:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x0139BC 04:B9AC: A5 BA     LDA ram_00BA
C - - - - - 0x0139BE 04:B9AE: C9 FF     CMP #$FF
C - - - - - 0x0139C0 04:B9B0: F0 76     BEQ bra_BA28_FF
C - - - - - 0x0139C2 04:B9B2: BD 4E 05  LDA ram_obj_id,X
C - - - - - 0x0139C5 04:B9B5: 85 09     STA ram_0009_temp
C - - - - - 0x0139C7 04:B9B7: A5 BA     LDA ram_00BA
C - - - - - 0x0139C9 04:B9B9: 85 08     STA ram_0008_temp
C - - - - - 0x0139CB 04:B9BB: A0 00     LDY #$00
bra_B9BD_loop:
C - - - - - 0x0139CD 04:B9BD: 46 08     LSR ram_0008_temp
C - - - - - 0x0139CF 04:B9BF: 90 07     BCC bra_B9C8
C - - - - - 0x0139D1 04:B9C1: B9 3E BA  LDA tbl_BA3E_obj_id,Y
C - - - - - 0x0139D4 04:B9C4: C5 09     CMP ram_0009_temp
C - - - - - 0x0139D6 04:B9C6: F0 09     BEQ bra_B9D1
bra_B9C8:
C - - - - - 0x0139D8 04:B9C8: F0 5C     BEQ bra_BA26
C - - - - - 0x0139DA 04:B9CA: C8        INY
C - - - - - 0x0139DB 04:B9CB: C0 08     CPY #$08
C - - - - - 0x0139DD 04:B9CD: D0 EE     BNE bra_B9BD_loop
- - - - - - 0x0139DF 04:B9CF: F0 55     BEQ bra_BA26    ; jmp
bra_B9D1:
C - - - - - 0x0139E1 04:B9D1: 98        TYA
C - - - - - 0x0139E2 04:B9D2: 0A        ASL
C - - - - - 0x0139E3 04:B9D3: A8        TAY
C - - - - - 0x0139E4 04:B9D4: B9 59 BA  LDA tbl_BA59,Y
C - - - - - 0x0139E7 04:B9D7: 85 08     STA ram_0008_t015_data
C - - - - - 0x0139E9 04:B9D9: B9 5A BA  LDA tbl_BA59 + $01,Y
C - - - - - 0x0139EC 04:B9DC: 85 09     STA ram_0008_t015_data + $01
C - - - - - 0x0139EE 04:B9DE: A5 BC     LDA ram_00BC
C - - - - - 0x0139F0 04:B9E0: 0A        ASL
C - - - - - 0x0139F1 04:B9E1: A8        TAY
C - - - - - 0x0139F2 04:B9E2: B1 08     LDA (ram_0008_t015_data),Y
C - - - - - 0x0139F4 04:B9E4: 85 0A     STA ram_000A_temp
C - - - - - 0x0139F6 04:B9E6: C8        INY
C - - - - - 0x0139F7 04:B9E7: B1 08     LDA (ram_0008_t015_data),Y
C - - - - - 0x0139F9 04:B9E9: 85 0B     STA ram_000B_temp
C - - - - - 0x0139FB 04:B9EB: A9 00     LDA #$00
C - - - - - 0x0139FD 04:B9ED: 85 0C     STA ram_000C_temp
C - - - - - 0x0139FF 04:B9EF: 85 0D     STA ram_000D_temp
C - - - - - 0x013A01 04:B9F1: A4 BB     LDY ram_00BB
C - - - - - 0x013A03 04:B9F3: F0 21     BEQ bra_BA16
C - - - - - 0x013A05 04:B9F5: 88        DEY
C - - - - - 0x013A06 04:B9F6: B9 46 BA  LDA tbl_BA46_obj_id,Y
C - - - - - 0x013A09 04:B9F9: DD 4E 05  CMP ram_obj_id,X
C - - - - - 0x013A0C 04:B9FC: D0 18     BNE bra_BA16
C - - - - - 0x013A0E 04:B9FE: 98        TYA
C - - - - - 0x013A0F 04:B9FF: 0A        ASL
C - - - - - 0x013A10 04:BA00: A8        TAY
C - - - - - 0x013A11 04:BA01: B9 4D BA  LDA tbl_BA4D_positions,Y
C - - - - - 0x013A14 04:BA04: 85 0C     STA ram_000C_temp
C - - - - - 0x013A16 04:BA06: BD A8 04  LDA ram_obj_facing,X
C - - - - - 0x013A19 04:BA09: D0 06     BNE bra_BA11_facing_left
C - - - - - 0x013A1B 04:BA0B: A5 0C     LDA ram_000C_temp
C - - - - - 0x013A1D 04:BA0D: 49 FF     EOR #$FF
C - - - - - 0x013A1F 04:BA0F: 85 0C     STA ram_000C_temp
bra_BA11_facing_left:
C - - - - - 0x013A21 04:BA11: B9 4E BA  LDA tbl_BA4D_positions + $01,Y
C - - - - - 0x013A24 04:BA14: 85 0D     STA ram_000D_temp
bra_BA16:
loc_BA16:
C D 1 - - - 0x013A26 04:BA16: 18        CLC
C - - - - - 0x013A27 04:BA17: A5 0A     LDA ram_000A_temp
C - - - - - 0x013A29 04:BA19: 65 00     ADC ram_0000_temp
C - - - - - 0x013A2B 04:BA1B: 85 02     STA ram_0002_temp
C - - - - - 0x013A2D 04:BA1D: 18        CLC
C - - - - - 0x013A2E 04:BA1E: A5 0B     LDA ram_000B_temp
C - - - - - 0x013A30 04:BA20: 65 01     ADC ram_0001_temp
C - - - - - 0x013A32 04:BA22: 85 03     STA ram_0003_temp
C - - - - - 0x013A34 04:BA24: 38        SEC
C - - - - - 0x013A35 04:BA25: 60        RTS
bra_BA26:
C - - - - - 0x013A36 04:BA26: 18        CLC
C - - - - - 0x013A37 04:BA27: 60        RTS
bra_BA28_FF:
C - - - - - 0x013A38 04:BA28: BC 06 06  LDY ram_obj_config,X
C - - - - - 0x013A3B 04:BA2B: B9 8E BA  LDA tbl_BA8E,Y
C - - - - - 0x013A3E 04:BA2E: 85 0A     STA ram_000A_temp
C - - - - - 0x013A40 04:BA30: B9 92 BA  LDA tbl_BA92,Y
C - - - - - 0x013A43 04:BA33: 85 0B     STA ram_000B_temp
C - - - - - 0x013A45 04:BA35: A9 00     LDA #$00
C - - - - - 0x013A47 04:BA37: 85 0C     STA ram_000C_temp
C - - - - - 0x013A49 04:BA39: 85 0D     STA ram_000D_temp
C - - - - - 0x013A4B 04:BA3B: 4C 16 BA  JMP loc_BA16



tbl_BA3E_obj_id:
- D 1 - - - 0x013A4E 04:BA3E: 0D        .byte $0D   ; 00 
- D 1 - - - 0x013A4F 04:BA3F: 29        .byte $29   ; 01 
- D 1 - - - 0x013A50 04:BA40: 0C        .byte $0C   ; 02 
- D 1 - - - 0x013A51 04:BA41: 08        .byte $08   ; 03 
- - - - - - 0x013A52 04:BA42: 00        .byte $00   ; 04 
- D 1 - - - 0x013A53 04:BA43: 00        .byte $00   ; 05 
- D 1 - - - 0x013A54 04:BA44: 0F        .byte $0F   ; 06 
- - - - - - 0x013A55 04:BA45: 00        .byte $00   ; 07 



tbl_BA46_obj_id:
- - - - - - 0x013A56 04:BA46: 0F        .byte $0F   ; 01 
- - - - - - 0x013A57 04:BA47: 0F        .byte $0F   ; 02 
- D 1 - - - 0x013A58 04:BA48: 0F        .byte $0F   ; 03 
- D 1 - - - 0x013A59 04:BA49: 0F        .byte $0F   ; 04 
- D 1 - - - 0x013A5A 04:BA4A: 0C        .byte $0C   ; 05 
- D 1 - - - 0x013A5B 04:BA4B: 08        .byte $08   ; 06 
- - - - - - 0x013A5C 04:BA4C: 00        .byte $00   ; 07 



tbl_BA4D_positions:
;                                              +---------- pos_X_hi
;                                              |    +----- pos_Y_hi
;                                              |    |
- - - - - - 0x013A5D 04:BA4D: 1C        .byte $1C, $00   ; 01 
- - - - - - 0x013A5F 04:BA4F: 1C        .byte $1C, $00   ; 02 
- D 1 - - - 0x013A61 04:BA51: 24        .byte $24, $00   ; 03 
- D 1 - - - 0x013A63 04:BA53: 14        .byte $14, $00   ; 04 
- D 1 - - - 0x013A65 04:BA55: 00        .byte $00, $10   ; 05 
- D 1 - - - 0x013A67 04:BA57: 00        .byte $00, $08   ; 06 



tbl_BA59:
- D 1 - - - 0x013A69 04:BA59: 69 BA     .word off_BA69_00
- D 1 - - - 0x013A6B 04:BA5B: 6D BA     .word off_BA6D_01
- D 1 - - - 0x013A6D 04:BA5D: 71 BA     .word off_BA71_02
- D 1 - - - 0x013A6F 04:BA5F: 73 BA     .word off_BA73_03
- - - - - - 0x013A71 04:BA61: 75 BA     .word off_BA75_04
- - - - - - 0x013A73 04:BA63: 78 BA     .word off_BA78_05
- D 1 - - - 0x013A75 04:BA65: 86 BA     .word off_BA86_06
- - - - - - 0x013A77 04:BA67: 8C BA     .word off_BA8C_07



off_BA69_00:
- D 1 - I - 0x013A79 04:BA69: 08        .byte $08   ; 00 
- D 1 - I - 0x013A7A 04:BA6A: 10        .byte $10   ; 01 
- D 1 - I - 0x013A7B 04:BA6B: 08        .byte $08   ; 02 
- D 1 - I - 0x013A7C 04:BA6C: 08        .byte $08   ; 03 



off_BA6D_01:
- D 1 - I - 0x013A7D 04:BA6D: 04        .byte $04   ; 00 
- D 1 - I - 0x013A7E 04:BA6E: 08        .byte $08   ; 01 
- - - - - - 0x013A7F 04:BA6F: 04        .byte $04   ; 02 
- - - - - - 0x013A80 04:BA70: 06        .byte $06   ; 03 



off_BA71_02:
- D 1 - I - 0x013A81 04:BA71: 12        .byte $12   ; 00 
- D 1 - I - 0x013A82 04:BA72: 24        .byte $24   ; 01 



off_BA73_03:
- D 1 - I - 0x013A83 04:BA73: 08        .byte $08   ; 00 
- D 1 - I - 0x013A84 04:BA74: 08        .byte $08   ; 01 



off_BA75_04:
- - - - - - 0x013A85 04:BA75: 00        .byte $00   ; 00 
- - - - - - 0x013A86 04:BA76: 00        .byte $00   ; 01 
- - - - - - 0x013A87 04:BA77: 00        .byte $00   ; 02 



off_BA78_05:
- - - - - - 0x013A88 04:BA78: 08        .byte $08   ; 00 
- - - - - - 0x013A89 04:BA79: 08        .byte $08   ; 01 
- - - - - - 0x013A8A 04:BA7A: 08        .byte $08   ; 02 
- - - - - - 0x013A8B 04:BA7B: 08        .byte $08   ; 03 
- - - - - - 0x013A8C 04:BA7C: 08        .byte $08   ; 04 
- - - - - - 0x013A8D 04:BA7D: 08        .byte $08   ; 05 
- - - - - - 0x013A8E 04:BA7E: 08        .byte $08   ; 06 
- - - - - - 0x013A8F 04:BA7F: 08        .byte $08   ; 07 
- - - - - - 0x013A90 04:BA80: 08        .byte $08   ; 08 
- - - - - - 0x013A91 04:BA81: 08        .byte $08   ; 09 
- - - - - - 0x013A92 04:BA82: 08        .byte $08   ; 0A 
- - - - - - 0x013A93 04:BA83: 08        .byte $08   ; 0B 
- - - - - - 0x013A94 04:BA84: 08        .byte $08   ; 0C 
- - - - - - 0x013A95 04:BA85: 08        .byte $08   ; 0D 



off_BA86_06:
- D 1 - I - 0x013A96 04:BA86: 0C        .byte $0C   ; 00 
- D 1 - I - 0x013A97 04:BA87: 04        .byte $04   ; 01 
- - - - - - 0x013A98 04:BA88: 0C        .byte $0C   ; 02 
- - - - - - 0x013A99 04:BA89: 06        .byte $06   ; 03 
- D 1 - I - 0x013A9A 04:BA8A: 14        .byte $14   ; 04 
- D 1 - I - 0x013A9B 04:BA8B: 06        .byte $06   ; 05 



off_BA8C_07:
- - - - - - 0x013A9C 04:BA8C: 08        .byte $08   ; 00 
- - - - - - 0x013A9D 04:BA8D: 04        .byte $04   ; 01 



tbl_BA8E:
- D 1 - - - 0x013A9E 04:BA8E: 18        .byte $18   ; 00 
- D 1 - - - 0x013A9F 04:BA8F: 10        .byte $10   ; 01 
- D 1 - - - 0x013AA0 04:BA90: 08        .byte $08   ; 02 
- D 1 - - - 0x013AA1 04:BA91: 06        .byte $06   ; 03 



tbl_BA92:
- D 1 - - - 0x013AA2 04:BA92: 10        .byte $10   ; 00 
- D 1 - - - 0x013AA3 04:BA93: 10        .byte $10   ; 01 
- D 1 - - - 0x013AA4 04:BA94: 08        .byte $08   ; 02 
- D 1 - - - 0x013AA5 04:BA95: 06        .byte $06   ; 03 



sub_0x013AA6:
C - - - - - 0x013AA6 04:BA96: A9 00     LDA #$00
C - - - - - 0x013AA8 04:BA98: 9D 7B 06  STA ram_obj_hp,X
C - - - - - 0x013AAB 04:BA9B: 20 B5 E6  JSR sub_0x03E6C5
C - - - - - 0x013AAE 04:BA9E: 8A        TXA
C - - - - - 0x013AAF 04:BA9F: 48        PHA
C - - - - - 0x013AB0 04:BAA0: A9 65     LDA #$65
C - - - - - 0x013AB2 04:BAA2: 20 BB BA  JSR sub_BABB
C - - - - - 0x013AB5 04:BAA5: A2 01     LDX #$01
bra_BAA7_loop:
C - - - - - 0x013AB7 04:BAA7: BD 4E 05  LDA ram_obj_id,X
C - - - - - 0x013ABA 04:BAAA: C9 04     CMP #$04
C - - - - - 0x013ABC 04:BAAC: D0 03     BNE bra_BAB1
- - - - - - 0x013ABE 04:BAAE: 20 B9 BA  JSR sub_BAB9
bra_BAB1:
C - - - - - 0x013AC1 04:BAB1: E8        INX
C - - - - - 0x013AC2 04:BAB2: E0 0D     CPX #$0D
C - - - - - 0x013AC4 04:BAB4: 90 F1     BCC bra_BAA7_loop
C - - - - - 0x013AC6 04:BAB6: 68        PLA
C - - - - - 0x013AC7 04:BAB7: AA        TAX
C - - - - - 0x013AC8 04:BAB8: 60        RTS



sub_BAB9:
- - - - - - 0x013AC9 04:BAB9: A9 18     LDA #$18
sub_BABB:
C - - - - - 0x013ACB 04:BABB: 9D EF 05  STA ram_05EF_obj,X
C - - - - - 0x013ACE 04:BABE: A9 68     LDA #$68
C - - - - - 0x013AD0 04:BAC0: 9D 4E 05  STA ram_obj_id,X
C - - - - - 0x013AD3 04:BAC3: A9 00     LDA #$00
C - - - - - 0x013AD5 04:BAC5: 9D 00 04  STA ram_obj_anim_id,X
C - - - - - 0x013AD8 04:BAC8: 9D 8C 04  STA ram_obj_type,X  ; con_obj_type_00
C - - - - - 0x013ADB 04:BACB: 9D C1 05  STA ram_05C1_obj,X
C - - - - - 0x013ADE 04:BACE: A9 30     LDA #con_obj_flag_10 + con_obj_flag_20
C - - - - - 0x013AE0 04:BAD0: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x013AE3 04:BAD3: 60        RTS



_off005_0x013AE4_16:
- D 1 - I - 0x013AE4 04:BAD4: 00 20     .word $2000 ; ppu address

- D 1 - I - 0x013AE6 04:BAD6: 40        .byte $40   ; write 40 times tile 00
- D 1 - I - 0x013AE7 04:BAD7: 00        .byte $00   ; 

- D 1 - I - 0x013AE8 04:BAD8: 06        .byte $06   ; 
- D 1 - I - 0x013AE9 04:BAD9: 3D        .byte $3D   ; 

- D 1 - I - 0x013AEA 04:BADA: 81        .byte $01 + $80   ; 
- D 1 - I - 0x013AEB 04:BADB: 54        .byte $54   ; 

- D 1 - I - 0x013AEC 04:BADC: 07        .byte $07   ; 
- D 1 - I - 0x013AED 04:BADD: 00        .byte $00   ; 

- D 1 - I - 0x013AEE 04:BADE: 84        .byte $04 + $80   ; write these tiles 04 length
- D 1 - I - 0x013AEF 04:BADF: 47        .byte $47, $6B, $68, $6D   ; 

- D 1 - I - 0x013AF3 04:BAE3: 09        .byte $09   ; 
- D 1 - I - 0x013AF4 04:BAE4: 00        .byte $00   ; 

- D 1 - I - 0x013AF5 04:BAE5: 0B        .byte $0B   ; 
- D 1 - I - 0x013AF6 04:BAE6: 3D        .byte $3D   ; 

- D 1 - I - 0x013AF7 04:BAE7: 84        .byte $04 + $80   ; 
- D 1 - I - 0x013AF8 04:BAE8: 00        .byte $00, $00, $47, $67   ; 

- D 1 - I - 0x013AFC 04:BAEC: 04        .byte $04   ; 
- D 1 - I - 0x013AFD 04:BAED: 00        .byte $00   ; 

- D 1 - I - 0x013AFE 04:BAEE: 8E        .byte $0E + $80   ; 
- D 1 - I - 0x013AFF 04:BAEF: 42        .byte $42, $43, $44, $45, $60, $00, $47, $89, $44, $6D, $00, $00, $00, $B5   ; 

- D 1 - I - 0x013B0D 04:BAFD: 06        .byte $06   ; 
- D 1 - I - 0x013B0E 04:BAFE: 3D        .byte $3D   ; 

- D 1 - I - 0x013B0F 04:BAFF: 96        .byte $16 + $80   ; 
- D 1 - I - 0x013B10 04:BB00: 54        .byte $54, $00, $64, $63, $00, $00, $67, $68, $A8, $AB, $00, $A8, $52, $53, $53, $55   ; 
- D 1 - I - 0x013B20 04:BB10: 56        .byte $56, $60, $6A, $6B, $6A, $2A   ; 

- D 1 - I - 0x013B26 04:BB16: 04        .byte $04   ; 
- D 1 - I - 0x013B27 04:BB17: 00        .byte $00   ; 

- D 1 - I - 0x013B28 04:BB18: 04        .byte $04   ; 
- D 1 - I - 0x013B29 04:BB19: 3D        .byte $3D   ; 

- D 1 - I - 0x013B2A 04:BB1A: 04        .byte $04   ; 
- D 1 - I - 0x013B2B 04:BB1B: 00        .byte $00   ; 

- D 1 - I - 0x013B2C 04:BB1C: 9E        .byte $1E + $80   ; 
- D 1 - I - 0x013B2D 04:BB1D: 3D        .byte $3D, $54, $60, $47, $6A, $AF, $AA, $A8, $26, $61, $62, $00, $00, $65, $66, $3D   ; 
- D 1 - I - 0x013B3D 04:BB2D: 68        .byte $68, $6A, $68, $6C, $60, $00, $00, $00, $B5, $3D, $3D, $3D, $63, $64   ; 

- D 1 - I - 0x013B4B 04:BB3B: 04        .byte $04   ; 
- D 1 - I - 0x013B4C 04:BB3C: 00        .byte $00   ; 

- D 1 - I - 0x013B4D 04:BB3D: 88        .byte $08 + $80   ; 
- D 1 - I - 0x013B4E 04:BB3E: 3D        .byte $3D, $68, $6B, $6D, $AA, $AB, $A8, $71   ; 

- D 1 - I - 0x013B56 04:BB46: 04        .byte $04   ; 
- D 1 - I - 0x013B57 04:BB47: 00        .byte $00   ; 

- D 1 - I - 0x013B58 04:BB48: 88        .byte $08 + $80   ; 
- D 1 - I - 0x013B59 04:BB49: 76        .byte $76, $3D, $3D, $2A, $3D, $6B, $68, $6D   ; 

- D 1 - I - 0x013B61 04:BB51: 06        .byte $06   ; 
- D 1 - I - 0x013B62 04:BB52: 00        .byte $00   ; 

- D 1 - I - 0x013B63 04:BB53: 82        .byte $02 + $80   ; 
- D 1 - I - 0x013B64 04:BB54: 3D        .byte $3D, $70   ; 

- D 1 - I - 0x013B66 04:BB56: 04        .byte $04   ; 
- D 1 - I - 0x013B67 04:BB57: 00        .byte $00   ; 

- D 1 - I - 0x013B68 04:BB58: 88        .byte $08 + $80   ; 
- D 1 - I - 0x013B69 04:BB59: 42        .byte $42, $43, $44, $45, $AB, $77, $AB, $48   ; 

- D 1 - I - 0x013B71 04:BB61: 04        .byte $04   ; 
- D 1 - I - 0x013B72 04:BB62: 00        .byte $00   ; 

- D 1 - I - 0x013B73 04:BB63: D4        .byte $54 + $80   ; 
- D 1 - I - 0x013B74 04:BB64: 49        .byte $49, $3D, $6C, $8A, $42, $43, $44, $45, $00, $00, $63, $64, $63, $64, $3D, $70   ; 
- D 1 - I - 0x013B84 04:BB74: 00        .byte $00, $00, $00, $A8, $52, $53, $53, $55, $56, $60, $3D, $71, $01, $02, $03, $00   ; 
- D 1 - I - 0x013B94 04:BB84: 69        .byte $69, $3D, $00, $A8, $52, $53, $53, $55, $56, $60, $3D, $70, $3D, $70, $3D, $70   ; 
- D 1 - I - 0x013BA4 04:BB94: 00        .byte $00, $00, $26, $61, $62, $00, $00, $65, $66, $3D, $3D, $10, $11, $12, $13, $14   ; 
- D 1 - I - 0x013BB4 04:BBA4: 15        .byte $15, $3D, $26, $61, $62, $00, $00, $65, $66, $3D, $B5, $70, $3D, $70, $B5, $70   ; 
- D 1 - I - 0x013BC4 04:BBB4: 00        .byte $00, $00, $A8, $71   ; 

- D 1 - I - 0x013BC8 04:BBB8: 04        .byte $04   ; 
- D 1 - I - 0x013BC9 04:BBB9: 00        .byte $00   ; 

- D 1 - I - 0x013BCA 04:BBBA: 8C        .byte $0C + $80   ; 
- D 1 - I - 0x013BCB 04:BBBB: 76        .byte $76, $3D, $3D, $20, $21, $22, $23, $24, $25, $3D, $A8, $71   ; 

- D 1 - I - 0x013BD7 04:BBC7: 04        .byte $04   ; 
- D 1 - I - 0x013BD8 04:BBC8: 00        .byte $00   ; 

- D 1 - I - 0x013BD9 04:BBC9: 83        .byte $03 + $80   ; 
- D 1 - I - 0x013BDA 04:BBCA: 76        .byte $76, $3D, $60   ; 

- D 1 - I - 0x013BDD 04:BBCD: 06        .byte $06   ; 
- D 1 - I - 0x013BDE 04:BBCE: 00        .byte $00   ; 

- D 1 - I - 0x013BDF 04:BBCF: 83        .byte $03 + $80   ; 
- D 1 - I - 0x013BE0 04:BBD0: 26        .byte $26, $AA, $48   ; 

- D 1 - I - 0x013BE3 04:BBD3: 04        .byte $04   ; 
- D 1 - I - 0x013BE4 04:BBD4: 00        .byte $00   ; 

- D 1 - I - 0x013BE5 04:BBD5: 8C        .byte $0C + $80   ; 
- D 1 - I - 0x013BE6 04:BBD6: 49        .byte $49, $3D, $3D, $30, $31, $32, $33, $34, $35, $3D, $AA, $48   ; 

- D 1 - I - 0x013BF2 04:BBE2: 04        .byte $04   ; 
- D 1 - I - 0x013BF3 04:BBE3: 00        .byte $00   ; 

- D 1 - I - 0x013BF4 04:BBE4: 84        .byte $04 + $80   ; 
- D 1 - I - 0x013BF5 04:BBE5: 49        .byte $49, $3D, $6C, $6D   ; 

- D 1 - I - 0x013BF9 04:BBE9: 06        .byte $06   ; 
- D 1 - I - 0x013BFA 04:BBEA: 00        .byte $00   ; 

- D 1 - I - 0x013BFB 04:BBEB: 82        .byte $02 + $80   ; 
- D 1 - I - 0x013BFC 04:BBEC: A9        .byte $A9, $58   ; 

- D 1 - I - 0x013BFE 04:BBEE: 04        .byte $04   ; 
- D 1 - I - 0x013BFF 04:BBEF: 00        .byte $00   ; 

- D 1 - I - 0x013C00 04:BBF0: 8C        .byte $0C + $80   ; 
- D 1 - I - 0x013C01 04:BBF1: 59        .byte $59, $67, $3D, $06, $07, $08, $09, $0A, $0B, $3D, $A9, $58   ; 

- D 1 - I - 0x013C0D 04:BBFD: 04        .byte $04   ; 
- D 1 - I - 0x013C0E 04:BBFE: 00        .byte $00   ; 

- D 1 - I - 0x013C0F 04:BBFF: 85        .byte $05 + $80   ; 
- D 1 - I - 0x013C10 04:BC00: 59        .byte $59, $67, $6B, $8A, $60   ; 

- D 1 - I - 0x013C15 04:BC05: 04        .byte $04   ; 
- D 1 - I - 0x013C16 04:BC06: 00        .byte $00   ; 

- D 1 - I - 0x013C17 04:BC07: 83        .byte $03 + $80   ; 
- D 1 - I - 0x013C18 04:BC08: 26        .byte $26, $3D, $71   ; 

- D 1 - I - 0x013C1B 04:BC0B: 04        .byte $04   ; 
- D 1 - I - 0x013C1C 04:BC0C: 00        .byte $00   ; 

- D 1 - I - 0x013C1D 04:BC0D: 8C        .byte $0C + $80   ; 
- D 1 - I - 0x013C1E 04:BC0E: 69        .byte $69, $59, $3D, $16, $17, $18, $19, $1A, $1B, $3D, $3D, $71   ; 

- D 1 - I - 0x013C2A 04:BC1A: 04        .byte $04   ; 
- D 1 - I - 0x013C2B 04:BC1B: 00        .byte $00   ; 

- D 1 - I - 0x013C2C 04:BC1C: 8C        .byte $0C + $80   ; 
- D 1 - I - 0x013C2D 04:BC1D: 69        .byte $69, $59, $68, $6A, $6C, $6D, $00, $00, $00, $47, $3D, $58   ; 

- D 1 - I - 0x013C39 04:BC29: 04        .byte $04   ; 
- D 1 - I - 0x013C3A 04:BC2A: 00        .byte $00   ; 

- D 1 - I - 0x013C3B 04:BC2B: 8C        .byte $0C + $80   ; 
- D 1 - I - 0x013C3C 04:BC2C: 49        .byte $49, $3D, $3D, $71, $27, $28, $29, $00, $49, $3D, $3D, $58   ; 

- D 1 - I - 0x013C48 04:BC38: 04        .byte $04   ; 
- D 1 - I - 0x013C49 04:BC39: 00        .byte $00   ; 

- D 1 - I - 0x013C4A 04:BC3A: FE        .byte $7E + $80   ; 
- D 1 - I - 0x013C4B 04:BC3B: 49        .byte $49, $3D, $6D, $68, $6B, $8A, $00, $00, $64, $77, $AA, $36, $AF, $A9, $AF, $A8   ; 
- D 1 - I - 0x013C5B 04:BC4B: 79        .byte $79, $59, $6C, $36, $37, $38, $39, $37, $79, $3D, $AA, $36, $AF, $A9, $AF, $A9   ; 
- D 1 - I - 0x013C6B 04:BC5B: 79        .byte $79, $59, $69, $6B, $68, $6A, $AB, $6D, $2A, $6C, $A9, $6C, $6C, $3D, $AB, $6C   ; 
- D 1 - I - 0x013C7B 04:BC6B: 6C        .byte $6C, $3D, $2A, $3D, $3D, $1C, $1D, $7A, $78, $3D, $AB, $6D, $2A, $77, $AB, $3D   ; 
- D 1 - I - 0x013C8B 04:BC7B: 3D        .byte $3D, $89, $2A, $6C, $6C, $68, $67, $6B, $6A, $6B, $6C, $00, $00, $00, $6C, $77   ; 
- D 1 - I - 0x013C9B 04:BC8B: 6D        .byte $6D, $67, $6C, $2C, $2D, $2E, $2E, $2F, $B5, $89, $67, $6B, $6A, $6B, $8A, $78   ; 
- D 1 - I - 0x013CAB 04:BC9B: 3D        .byte $3D, $3D, $6C, $2A, $77, $2A, $75, $A9, $A9, $A8, $AF, $A8, $AF, $A8, $A8, $A9   ; 
- D 1 - I - 0x013CBB 04:BCAB: 75        .byte $75, $75, $73, $74, $73, $74, $75, $73, $73, $74, $75, $75, $73, $74   ; 

- D 1 - I - 0x013CC9 04:BCB9: 92        .byte $12 + $80   ; 
- D 1 - I - 0x013CCA 04:BCBA: 75        .byte $75, $73, $A9, $AA, $AF, $A8, $AF, $A8, $B1, $72, $72, $AF, $AA, $AA, $AA, $72   ; 
- D 1 - I - 0x013CDA 04:BCCA: AF        .byte $AF, $B1   ; 

- D 1 - I - 0x013CDC 04:BCCC: 09        .byte $09   ; 
- D 1 - I - 0x013CDD 04:BCCD: 72        .byte $72   ; 

- D 1 - I - 0x013CDE 04:BCCE: 81        .byte $01 + $80   ; 
- D 1 - I - 0x013CDF 04:BCCF: B1        .byte $B1   ; 

- D 1 - I - 0x013CE0 04:BCD0: 05        .byte $05   ; 
- D 1 - I - 0x013CE1 04:BCD1: 72        .byte $72   ; 

- D 1 - I - 0x013CE2 04:BCD2: 8F        .byte $0F + $80   ; 
- D 1 - I - 0x013CE3 04:BCD3: B1        .byte $B1, $72, $B1, $AF, $AA, $AA, $AF, $67, $77, $3D, $3D, $AB, $AF, $AB, $89   ; 

- D 1 - I - 0x013CF2 04:BCE2: 05        .byte $05   ; 
- D 1 - I - 0x013CF3 04:BCE3: 3D        .byte $3D   ; 

- D 1 - I - 0x013CF4 04:BCE4: 83        .byte $03 + $80   ; 
- D 1 - I - 0x013CF5 04:BCE5: 78        .byte $78, $77, $77   ; 

- D 1 - I - 0x013CF8 04:BCE8: 04        .byte $04   ; 
- D 1 - I - 0x013CF9 04:BCE9: 3D        .byte $3D   ; 

- D 1 - I - 0x013CFA 04:BCEA: 84        .byte $04 + $80   ; 
- D 1 - I - 0x013CFB 04:BCEB: 77        .byte $77, $77, $7A, $78   ; 

- D 1 - I - 0x013CFF 04:BCEF: 04        .byte $04   ; 
- D 1 - I - 0x013D00 04:BCF0: 3D        .byte $3D   ; 

- D 1 - I - 0x013D01 04:BCF1: FE        .byte $7E + $80   ; 
- D 1 - I - 0x013D02 04:BCF2: 77        .byte $77, $A9, $AB, $78, $68, $6B, $8A, $6C, $89, $91, $92, $3D, $3D, $91, $92, $77   ; 
- D 1 - I - 0x013D12 04:BD02: 7A        .byte $7A, $7A, $77, $7A, $77, $78, $89, $3D, $3D, $91, $92, $3D, $3D, $91, $92, $77   ; 
- D 1 - I - 0x013D22 04:BD12: 89        .byte $89, $91, $92, $77, $4E, $4B, $4E, $4F, $3D, $00, $00, $3D, $3D, $00, $00, $59   ; 
- D 1 - I - 0x013D32 04:BD22: 0C        .byte $0C, $0E, $0E, $0F, $0E, $0E, $0F, $0D, $3D, $00, $00, $3D, $3D, $00, $00, $67   ; 
- D 1 - I - 0x013D42 04:BD32: 4A        .byte $4A, $4E, $4B, $4B, $5B, $8D, $5E, $5F, $3D, $8E, $8E, $3D, $3D, $8E, $8E, $7A   ; 
- D 1 - I - 0x013D52 04:BD42: 8C        .byte $8C, $1E, $78, $78, $77, $7A, $1F, $00, $77, $8E, $8E, $3D, $3D, $8E, $8E, $77   ; 
- D 1 - I - 0x013D62 04:BD52: 5A        .byte $5A, $6F, $5B, $5E, $4B, $4B, $4E, $4B, $4E, $4F, $AA, $A9, $AF, $AA, $77, $8C   ; 
- D 1 - I - 0x013D72 04:BD62: 3B        .byte $3B, $3C, $3B, $3C, $3B, $3C, $3B, $3C, $6C, $78, $A9, $6C, $4A, $4E   ; 

- D 1 - I - 0x013D80 04:BD70: C6        .byte $46 + $80   ; 
- D 1 - I - 0x013D81 04:BD71: 4B        .byte $4B, $4E, $4B, $4B, $4E, $4E, $5B, $5E, $6F, $5E, $5E, $5F, $AB, $78, $77, $AB   ; 
- D 1 - I - 0x013D91 04:BD81: 6C        .byte $6C, $3C, $3C, $3B, $3C, $3C, $3C, $3B, $3C, $3C, $3B, $B5, $6C, $00, $5A, $6F   ; 
- D 1 - I - 0x013DA1 04:BD91: 5B        .byte $5B, $6F, $5B, $5E, $8D, $5B, $7E, $7F, $7E, $7F, $7E, $7F, $7E, $7F, $7E, $7F   ; 
- D 1 - I - 0x013DB1 04:BDA1: 7E        .byte $7E, $7F, $7E, $7F, $7E, $7F, $7E, $7F, $7E, $7F, $7E, $7F, $7E, $7F, $7E, $7F   ; 
- D 1 - I - 0x013DC1 04:BDB1: 7E        .byte $7E, $7F, $7E, $7F, $7E, $7F   ; 

- D 1 - I - 0x013DC7 04:BDB7: 60        .byte $60   ; 
- D 1 - I - 0x013DC8 04:BDB8: 00        .byte $00   ; 

- D 1 - I - 0x013DC9 04:BDB9: 82        .byte $02 + $80   ; 
- D 1 - I - 0x013DCA 04:BDBA: FF        .byte $FF, $FF   ; 

- D 1 - I - 0x013DCC 04:BDBC: 04        .byte $04   ; 
- D 1 - I - 0x013DCD 04:BDBD: 5F        .byte $5F   ; 

- D 1 - I - 0x013DCE 04:BDBE: 84        .byte $04 + $80   ; 
- D 1 - I - 0x013DCF 04:BDBF: DF        .byte $DF, $FF, $FF, $57   ; 

- D 1 - I - 0x013DD3 04:BDC3: 04        .byte $04   ; 
- D 1 - I - 0x013DD4 04:BDC4: 55        .byte $55   ; 

- D 1 - I - 0x013DD5 04:BDC5: 8F        .byte $0F + $80   ; 
- D 1 - I - 0x013DD6 04:BDC6: 5D        .byte $5D, $FF, $7F, $55, $55, $AA, $AA, $55, $55, $5F, $55, $55, $55, $9A, $6A   ; 

- D 1 - I - 0x013DE5 04:BDD5: 06        .byte $06   ; 
- D 1 - I - 0x013DE6 04:BDD6: 55        .byte $55   ; 

- D 1 - I - 0x013DE7 04:BDD7: 82        .byte $02 + $80   ; 
- D 1 - I - 0x013DE8 04:BDD8: 59        .byte $59, $56   ; 

- D 1 - I - 0x013DEA 04:BDDA: 06        .byte $06   ; 
- D 1 - I - 0x013DEB 04:BDDB: 55        .byte $55   ; 

- D 1 - I - 0x013DEC 04:BDDC: 8B        .byte $0B + $80   ; 
- D 1 - I - 0x013DED 04:BDDD: A5        .byte $A5, $A5, $55, $55, $55, $05, $05, $09, $0A, $0A, $06   ; 

- D 1 - I - 0x013DF8 04:BDE8: 0A        .byte $0A   ; 
- D 1 - I - 0x013DF9 04:BDE9: 05        .byte $05   ; 

- D 1 - I - 0x013DFA 04:BDEA: FF        .byte $FF   ; end token


; bzk garbage
- - - - - - 0x013DFB 04:BDEB: FF        .byte $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013E00 04:BDF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013E10 04:BE00: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013E20 04:BE10: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013E30 04:BE20: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013E40 04:BE30: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013E50 04:BE40: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013E60 04:BE50: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013E70 04:BE60: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013E80 04:BE70: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013E90 04:BE80: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013EA0 04:BE90: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013EB0 04:BEA0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013EC0 04:BEB0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013ED0 04:BEC0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013EE0 04:BED0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013EF0 04:BEE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013F00 04:BEF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013F10 04:BF00: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013F20 04:BF10: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013F30 04:BF20: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013F40 04:BF30: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013F50 04:BF40: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013F60 04:BF50: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013F70 04:BF60: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013F80 04:BF70: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013F90 04:BF80: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013FA0 04:BF90: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013FB0 04:BFA0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013FC0 04:BFB0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013FD0 04:BFC0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013FE0 04:BFD0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013FF0 04:BFE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x014000 04:BFF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 



.out .sprintf("Free bytes in bank 88: 0x%04X [%d]", ($C000 - *), ($C000 - *))



