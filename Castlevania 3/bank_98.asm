.segment "BANK_98"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
.org $8000  ; for listing file
; 0x030010-0x03400F



.export sub_0x03076E_disable_sound_engine
.export sub_0x0307F2
.export sub_0x030847_play_sound
.export loc_0x030909_play_dmc
.export sub_0x030996
.export sub_0x0309EE_update_sound_engine
.export sub_0x030B65
.export sub_0x030BA1
.export sub_0x030D0A
.export loc_0x030DD1
.export loc_0x030DEE
.export loc_0x0321A0
.export _off003_0x032295_67
.export sub_0x03240E
.export ofs_042_0x032474_0F
.export ofs_042_0x0325AB_0B
.export ofs_042_0x032620_0B
.export _off005_0x032BB8_0C
.export _off005_0x032D8C_1E
.export ofs_0x032FEA
.export sub_0x0332F5
.export _off005_0x033337_1A_password_screen



; bzk bank id, must be located at 8000 in each bank
- D 0 - - - 0x030010 0C:8000: 98        .byte con_prg_bank + $98   ; 



; common identical code/data for banks 88, 8A and 98
.include "copy_bank___8001_875D.asm"



loc_875E_disable_sound_engine:
sub_875E_disable_sound_engine:
sub_0x03076E_disable_sound_engine:
C D 0 - - - 0x03076E 0C:875E: A9 00     LDA #$00
C - - - - - 0x030770 0C:8760: 86 E2     STX ram_00E2_se_t011_save_X
C - - - - - 0x030772 0C:8762: AA        TAX ; 00
bra_8763_loop:
C - - - - - 0x030773 0C:8763: 9D 07 01  STA ram_0107_se,X
C - - - - - 0x030776 0C:8766: E8        INX
C - - - - - 0x030777 0C:8767: E0 03     CPX #$03
C - - - - - 0x030779 0C:8769: 90 F8     BCC bra_8763_loop
C - - - - - 0x03077B 0C:876B: BD 07 01  LDA ram_0107_se,X
C - - - - - 0x03077E 0C:876E: C9 4B     CMP #$4B
C - - - - - 0x030780 0C:8770: F0 05     BEQ bra_8777
C - - - - - 0x030782 0C:8772: A9 00     LDA #$00
C - - - - - 0x030784 0C:8774: 9D 07 01  STA ram_0107_se,X
bra_8777:
C - - - - - 0x030787 0C:8777: A9 00     LDA #$00
C - - - - - 0x030789 0C:8779: E8        INX ; 04
bra_877A_loop:
C - - - - - 0x03078A 0C:877A: 9D 07 01  STA ram_0107_se,X
C - - - - - 0x03078D 0C:877D: E8        INX
C - - - - - 0x03078E 0C:877E: E0 07     CPX #$07
C - - - - - 0x030790 0C:8780: 90 F8     BCC bra_877A_loop
; A = 00
C - - - - - 0x030792 0C:8782: 8D 59 01  STA ram_0154_se + $05
C - - - - - 0x030795 0C:8785: 8D 60 01  STA ram_015B_se + $05
C - - - - - 0x030798 0C:8788: 8D 52 01  STA ram_014D_se + $05
C - - - - - 0x03079B 0C:878B: 85 EB     STA ram_00EB_se_prg_bank
C - - - - - 0x03079D 0C:878D: 8D C9 06  STA ram_06C9_se_flag
C - - - - - 0x0307A0 0C:8790: 8D 8F 01  STA ram_018F_se_flag
C - - - - - 0x0307A3 0C:8793: 8D 8E 01  STA ram_018E_se
C - - - - - 0x0307A6 0C:8796: 8D 8D 01  STA ram_018D_se
C - - - - - 0x0307A9 0C:8799: 8D C8 06  STA ram_06C8_se
C - - - - - 0x0307AC 0C:879C: A6 E2     LDX ram_00E2_se_t011_save_X
loc_879E:
C D 0 - - - 0x0307AE 0C:879E: A9 0B     LDA #$0B
C - - - - - 0x0307B0 0C:87A0: 8D 15 40  STA $4015
C - - - - - 0x0307B3 0C:87A3: 20 23 8F  JSR sub_8F23_garbage_code
C - - - - - 0x0307B6 0C:87A6: AD 0A 01  LDA ram_0107_se + $03
C - - - - - 0x0307B9 0C:87A9: C9 4B     CMP #$4B
C - - - - - 0x0307BB 0C:87AB: F0 10     BEQ bra_87BD
C - - - - - 0x0307BD 0C:87AD: A9 7F     LDA #$7F
C - - - - - 0x0307BF 0C:87AF: 8D 01 40  STA $4001
C - - - - - 0x0307C2 0C:87B2: 20 23 8F  JSR sub_8F23_garbage_code
C - - - - - 0x0307C5 0C:87B5: A9 30     LDA #$30
C - - - - - 0x0307C7 0C:87B7: 8D 00 40  STA $4000
C - - - - - 0x0307CA 0C:87BA: 20 23 8F  JSR sub_8F23_garbage_code
bra_87BD:
C - - - - - 0x0307CD 0C:87BD: A9 30     LDA #$30
C - - - - - 0x0307CF 0C:87BF: 8D 08 40  STA $4008
C - - - - - 0x0307D2 0C:87C2: 20 23 8F  JSR sub_8F23_garbage_code
C - - - - - 0x0307D5 0C:87C5: 8D 04 40  STA $4004
C - - - - - 0x0307D8 0C:87C8: 20 23 8F  JSR sub_8F23_garbage_code
C - - - - - 0x0307DB 0C:87CB: 8D 0C 40  STA $400C
C - - - - - 0x0307DE 0C:87CE: 20 23 8F  JSR sub_8F23_garbage_code
C - - - - - 0x0307E1 0C:87D1: A9 7F     LDA #$7F
C - - - - - 0x0307E3 0C:87D3: 8D 05 40  STA $4005
C - - - - - 0x0307E6 0C:87D6: 20 23 8F  JSR sub_8F23_garbage_code
C - - - - - 0x0307E9 0C:87D9: A9 0F     LDA #$0F
C - - - - - 0x0307EB 0C:87DB: 8D 15 40  STA $4015
C - - - - - 0x0307EE 0C:87DE: 20 23 8F  JSR sub_8F23_garbage_code
C - - - - - 0x0307F1 0C:87E1: 60        RTS



sub_0x0307F2:
C - - - - - 0x0307F2 0C:87E2: A9 0B     LDA #$0B
C - - - - - 0x0307F4 0C:87E4: 8D 15 40  STA $4015
C - - - - - 0x0307F7 0C:87E7: 20 23 8F  JSR sub_8F23_garbage_code
C - - - - - 0x0307FA 0C:87EA: A9 30     LDA #$30
C - - - - - 0x0307FC 0C:87EC: 8D 08 40  STA $4008
C - - - - - 0x0307FF 0C:87EF: 20 23 8F  JSR sub_8F23_garbage_code
C - - - - - 0x030802 0C:87F2: 8D 00 40  STA $4000
C - - - - - 0x030805 0C:87F5: 20 23 8F  JSR sub_8F23_garbage_code
C - - - - - 0x030808 0C:87F8: 8D 04 40  STA $4004
C - - - - - 0x03080B 0C:87FB: 20 23 8F  JSR sub_8F23_garbage_code
C - - - - - 0x03080E 0C:87FE: 8D 0C 40  STA $400C
C - - - - - 0x030811 0C:8801: 20 23 8F  JSR sub_8F23_garbage_code
C - - - - - 0x030814 0C:8804: A9 0F     LDA #$0F
C - - - - - 0x030816 0C:8806: 8D 15 40  STA $4015
C - - - - - 0x030819 0C:8809: 20 23 8F  JSR sub_8F23_garbage_code
C - - - - - 0x03081C 0C:880C: 60        RTS



bra_880D_01_4D_play_sound:
C - - - - - 0x03081D 0C:880D: AD 07 01  LDA ram_0107_se
C - - - - - 0x030820 0C:8810: C9 4E     CMP #$4E
C - - - - - 0x030822 0C:8812: D0 33     BNE bra_8847
C - - - - - 0x030824 0C:8814: A5 EF     LDA ram_00EF_se
C - - - - - 0x030826 0C:8816: C9 06     CMP #$06
C - - - - - 0x030828 0C:8818: 90 2D     BCC bra_8847
C - - - - - 0x03082A 0C:881A: 60        RTS



bra_881B_33:
C - - - - - 0x03082B 0C:881B: BD 07 01  LDA ram_0107_se,X
C - - - - - 0x03082E 0C:881E: C9 2D     CMP #$2D
C - - - - - 0x030830 0C:8820: F0 57     BEQ bra_8879
C - - - - - 0x030832 0C:8822: C9 16     CMP #$16
C - - - - - 0x030834 0C:8824: F0 53     BEQ bra_8879
C - - - - - 0x030836 0C:8826: 4C 72 88  JMP loc_8872



bra_8829_16:
C - - - - - 0x030839 0C:8829: BD 07 01  LDA ram_0107_se,X
C - - - - - 0x03083C 0C:882C: C9 27     CMP #$27
C - - - - - 0x03083E 0C:882E: F0 4E     BEQ bra_887E
C - - - - - 0x030840 0C:8830: C9 33     CMP #$33
C - - - - - 0x030842 0C:8832: F0 4A     BEQ bra_887E
C - - - - - 0x030844 0C:8834: 4C 72 88  JMP loc_8872



loc_8837_play_sound:
sub_0x030847_play_sound:
C D 0 - - - 0x030847 0C:8837: 85 EF     STA ram_00EF_se
C - - - - - 0x030849 0C:8839: C9 6D     CMP #$6D
C - - - - - 0x03084B 0C:883B: 90 03     BCC bra_8840_01_6C
C - - - - - 0x03084D 0C:883D: 4C F9 88  JMP loc_88F9_6D_7C_play_dmc
bra_8840_01_6C:
C - - - - - 0x030850 0C:8840: C9 4E     CMP #$4E
C - - - - - 0x030852 0C:8842: 90 C9     BCC bra_880D_01_4D_play_sound
; 4E-6C music 
C - - - - - 0x030854 0C:8844: 20 5E 87  JSR sub_875E_disable_sound_engine
bra_8847:
C - - - - - 0x030857 0C:8847: 86 E4     STX ram_00E4_se_t000_save_X
C - - - - - 0x030859 0C:8849: 84 E5     STY ram_00E5_se_t000_save_Y
C - - - - - 0x03085B 0C:884B: A5 EF     LDA ram_00EF_se
C - - - - - 0x03085D 0C:884D: 0A        ASL
C - - - - - 0x03085E 0C:884E: A8        TAY
C - - - - - 0x03085F 0C:884F: B9 2C 8F  LDA tbl_8F2E_sound_and_music_data - $02,Y
C - - - - - 0x030862 0C:8852: 85 E8     STA ram_00E8_se_t000_data
C - - - - - 0x030864 0C:8854: B9 2D 8F  LDA tbl_8F2E_sound_and_music_data - $01,Y
C - - - - - 0x030867 0C:8857: 85 E9     STA ram_00E8_se_t000_data + $01
C - - - - - 0x030869 0C:8859: A0 00     LDY #$00
C - - - - - 0x03086B 0C:885B: B1 E8     LDA (ram_00E8_se_t000_data),Y
; A = 88 8A 98
C - - - - - 0x03086D 0C:885D: 85 EB     STA ram_00EB_se_prg_bank
C - - - - - 0x03086F 0C:885F: C8        INY ; 01
C - - - - - 0x030870 0C:8860: B1 E8     LDA (ram_00E8_se_t000_data),Y
C - - - - - 0x030872 0C:8862: 85 EA     STA ram_00EA_se
loc_8864_loop:
C D 0 - - - 0x030874 0C:8864: C8        INY
C - - - - - 0x030875 0C:8865: B1 E8     LDA (ram_00E8_se_t000_data),Y
C - - - - - 0x030877 0C:8867: AA        TAX
C - - - - - 0x030878 0C:8868: A5 EF     LDA ram_00EF_se
C - - - - - 0x03087A 0C:886A: C9 33     CMP #$33
C - - - - - 0x03087C 0C:886C: F0 AD     BEQ bra_881B_33
C - - - - - 0x03087E 0C:886E: C9 16     CMP #$16
C - - - - - 0x030880 0C:8870: F0 B7     BEQ bra_8829_16
loc_8872:
C D 0 - - - 0x030882 0C:8872: A5 EF     LDA ram_00EF_se
C - - - - - 0x030884 0C:8874: DD 07 01  CMP ram_0107_se,X
C - - - - - 0x030887 0C:8877: B0 05     BCS bra_887E
bra_8879:   ; 16 2D
C - - - - - 0x030889 0C:8879: C8        INY
C - - - - - 0x03088A 0C:887A: C8        INY
C - - - - - 0x03088B 0C:887B: 4C ED 88  JMP loc_88ED
bra_887E:
C - - - - - 0x03088E 0C:887E: C8        INY
C - - - - - 0x03088F 0C:887F: B1 E8     LDA (ram_00E8_se_t000_data),Y
C - - - - - 0x030891 0C:8881: 9D 23 01  STA ram_0123_se_data_lo,X
C - - - - - 0x030894 0C:8884: 85 E6     STA ram_00E6_se_t000_data
C - - - - - 0x030896 0C:8886: C8        INY
C - - - - - 0x030897 0C:8887: B1 E8     LDA (ram_00E8_se_t000_data),Y
C - - - - - 0x030899 0C:8889: 9D 2A 01  STA ram_012A_se_data_hi,X
C - - - - - 0x03089C 0C:888C: 85 E7     STA ram_00E6_se_t000_data + $01
C - - - - - 0x03089E 0C:888E: A9 00     LDA #$00
C - - - - - 0x0308A0 0C:8890: 9D 1C 01  STA ram_011C_se,X
C - - - - - 0x0308A3 0C:8893: A9 01     LDA #$01
C - - - - - 0x0308A5 0C:8895: 9D 00 01  STA ram_0100_se,X
C - - - - - 0x0308A8 0C:8898: E0 05     CPX #$05
C - - - - - 0x0308AA 0C:889A: F0 2C     BEQ bra_88C8
C - - - - - 0x0308AC 0C:889C: A9 F8     LDA #$F8
C - - - - - 0x0308AE 0C:889E: 9D 4D 01  STA ram_014D_se,X
C - - - - - 0x0308B1 0C:88A1: E0 06     CPX #$06
C - - - - - 0x0308B3 0C:88A3: F0 23     BEQ bra_88C8
C - - - - - 0x0308B5 0C:88A5: A9 00     LDA #$00
C - - - - - 0x0308B7 0C:88A7: 9D 6E 01  STA ram_016E_se,X
C - - - - - 0x0308BA 0C:88AA: 9D 69 01  STA ram_0169_se,X
C - - - - - 0x0308BD 0C:88AD: 9D 73 01  STA ram_0173_se,X
C - - - - - 0x0308C0 0C:88B0: E0 03     CPX #$03
C - - - - - 0x0308C2 0C:88B2: F0 14     BEQ bra_88C8
C - - - - - 0x0308C4 0C:88B4: E0 04     CPX #$04
C - - - - - 0x0308C6 0C:88B6: F0 10     BEQ bra_88C8
C - - - - - 0x0308C8 0C:88B8: 9D 80 01  STA ram_0180_se,X
C - - - - - 0x0308CB 0C:88BB: 9D D8 03  STA ram_03D8_se,X
C - - - - - 0x0308CE 0C:88BE: A9 01     LDA #$01
C - - - - - 0x0308D0 0C:88C0: 9D DE 03  STA ram_03DE_se,X
C - - - - - 0x0308D3 0C:88C3: A9 80     LDA #$80
C - - - - - 0x0308D5 0C:88C5: 9D AC 06  STA ram_06AC_se,X
bra_88C8:
C - - - - - 0x0308D8 0C:88C8: A5 EB     LDA ram_00EB_se_prg_bank
C - - - - - 0x0308DA 0C:88CA: 9D 95 01  STA ram_se_prg_bank,X
C - - - - - 0x0308DD 0C:88CD: 84 E2     STY ram_00E2_se_t012_save_Y
C - - - - - 0x0308DF 0C:88CF: A0 00     LDY #$00
C - - - - - 0x0308E1 0C:88D1: 20 B5 E1  JSR sub_0x03E1C5_read_byte_from_data
C - - - - - 0x0308E4 0C:88D4: C8        INY ; 01
C - - - - - 0x0308E5 0C:88D5: C9 10     CMP #$10
C - - - - - 0x0308E7 0C:88D7: 90 09     BCC bra_88E2
C - - - - - 0x0308E9 0C:88D9: E0 03     CPX #$03
C - - - - - 0x0308EB 0C:88DB: F0 05     BEQ bra_88E2
C - - - - - 0x0308ED 0C:88DD: E0 04     CPX #$04
C - - - - - 0x0308EF 0C:88DF: F0 01     BEQ bra_88E2
C - - - - - 0x0308F1 0C:88E1: 88        DEY ; 00
bra_88E2:
C - - - - - 0x0308F2 0C:88E2: 98        TYA
C - - - - - 0x0308F3 0C:88E3: 9D 15 01  STA ram_0115_se,X
C - - - - - 0x0308F6 0C:88E6: A4 E2     LDY ram_00E2_se_t012_save_Y
C - - - - - 0x0308F8 0C:88E8: A5 EF     LDA ram_00EF_se
C - - - - - 0x0308FA 0C:88EA: 9D 07 01  STA ram_0107_se,X
loc_88ED:
C D 0 - - - 0x0308FD 0C:88ED: C6 EA     DEC ram_00EA_se
C - - - - - 0x0308FF 0C:88EF: 30 03     BMI bra_88F4
C - - - - - 0x030901 0C:88F1: 4C 64 88  JMP loc_8864_loop
bra_88F4:
C - - - - - 0x030904 0C:88F4: A6 E4     LDX ram_00E4_se_t000_save_X
C - - - - - 0x030906 0C:88F6: A4 E5     LDY ram_00E5_se_t000_save_Y
C - - - - - 0x030908 0C:88F8: 60        RTS



loc_88F9_6D_7C_play_dmc:
loc_0x030909_play_dmc:
C D 0 - - - 0x030909 0C:88F9: 38        SEC
C - - - - - 0x03090A 0C:88FA: E9 6D     SBC #$6D
C - - - - - 0x03090C 0C:88FC: 85 EF     STA ram_00EF_se
C - - - - - 0x03090E 0C:88FE: C9 0D     CMP #$0D
C - - - - - 0x030910 0C:8900: 90 03     BCC bra_8905
C - - - - - 0x030912 0C:8902: EE C8 06  INC ram_06C8_se
bra_8905:
C - - - - - 0x030915 0C:8905: AD 92 01  LDA ram_0192_se
C - - - - - 0x030918 0C:8908: C9 05     CMP #$05
C - - - - - 0x03091A 0C:890A: 90 08     BCC bra_8914
C - - - - - 0x03091C 0C:890C: A5 EF     LDA ram_00EF_se
C - - - - - 0x03091E 0C:890E: CD 92 01  CMP ram_0192_se
C - - - - - 0x030921 0C:8911: B0 03     BCS bra_8916
C - - - - - 0x030923 0C:8913: 60        RTS
bra_8914:
C - - - - - 0x030924 0C:8914: A5 EF     LDA ram_00EF_se
bra_8916:
C - - - - - 0x030926 0C:8916: 8D 92 01  STA ram_0192_se
C - - - - - 0x030929 0C:8919: 84 E2     STY ram_00E2_se_temp
C - - - - - 0x03092B 0C:891B: A5 EF     LDA ram_00EF_se
; * 04
C - - - - - 0x03092D 0C:891D: 0A        ASL
C - - - - - 0x03092E 0C:891E: 0A        ASL
C - - - - - 0x03092F 0C:891F: A8        TAY
; bzk optimize, useless LDA
C - - - - - 0x030930 0C:8920: B9 51 A1  LDA tbl_A150_dmc_setup + $01,Y
C - - - - - 0x030933 0C:8923: A9 0F     LDA #$0F
C - - - - - 0x030935 0C:8925: 8D 15 40  STA $4015
C - - - - - 0x030938 0C:8928: B9 50 A1  LDA tbl_A150_dmc_setup,Y
C - - - - - 0x03093B 0C:892B: 8D 10 40  STA $4010
C - - - - - 0x03093E 0C:892E: B9 51 A1  LDA tbl_A150_dmc_setup + $01,Y
C - - - - - 0x030941 0C:8931: 8D 11 40  STA $4011
C - - - - - 0x030944 0C:8934: B9 52 A1  LDA tbl_A150_dmc_setup + $02,Y
C - - - - - 0x030947 0C:8937: 8D 12 40  STA $4012
C - - - - - 0x03094A 0C:893A: B9 53 A1  LDA tbl_A150_dmc_setup + $03,Y
C - - - - - 0x03094D 0C:893D: 8D 13 40  STA $4013
C - - - - - 0x030950 0C:8940: A9 1F     LDA #$1F
C - - - - - 0x030952 0C:8942: 8D 15 40  STA $4015
C - - - - - 0x030955 0C:8945: A4 E2     LDY ram_00E2_se_temp
C - - - - - 0x030957 0C:8947: A5 EF     LDA ram_00EF_se
C - - - - - 0x030959 0C:8949: C9 03     CMP #$03
C - - - - - 0x03095B 0C:894B: F0 01     BEQ bra_894E
C - - - - - 0x03095D 0C:894D: 60        RTS
bra_894E:
C - - - - - 0x03095E 0C:894E: A9 01     LDA #con_sound_01
C - - - - - 0x030960 0C:8950: 4C 37 88  JMP loc_8837_play_sound



sub_8953:
C - - - - - 0x030963 0C:8953: 8D 67 01  STA ram_0162_se + $05
C - - - - - 0x030966 0C:8956: C9 00     CMP #$00
C - - - - - 0x030968 0C:8958: F0 03     BEQ bra_895D
C - - - - - 0x03096A 0C:895A: 4C 9E 87  JMP loc_879E
bra_895D:
C - - - - - 0x03096D 0C:895D: AD 0A 01  LDA ram_0107_se + $03
C - - - - - 0x030970 0C:8960: F0 01     BEQ bra_8963
C - - - - - 0x030972 0C:8962: 60        RTS
bra_8963:
C - - - - - 0x030973 0C:8963: AD 07 01  LDA ram_0107_se
C - - - - - 0x030976 0C:8966: F0 07     BEQ bra_896F
C - - - - - 0x030978 0C:8968: A2 00     LDX #$00
C - - - - - 0x03097A 0C:896A: A0 00     LDY #$00
C - - - - - 0x03097C 0C:896C: 20 86 89  JSR sub_8986
bra_896F:
C - - - - - 0x03097F 0C:896F: AD 08 01  LDA ram_0107_se + $01
C - - - - - 0x030982 0C:8972: F0 07     BEQ bra_897B_RTS
C - - - - - 0x030984 0C:8974: A2 01     LDX #$01
C - - - - - 0x030986 0C:8976: A0 04     LDY #$04
C - - - - - 0x030988 0C:8978: 20 86 89  JSR sub_8986
bra_897B_RTS:
C - - - - - 0x03098B 0C:897B: 60        RTS
bra_897C:
C - - - - - 0x03098C 0C:897C: A9 30     LDA #$30
C - - - - - 0x03098E 0C:897E: 9D 00 40  STA $4000,X ; 4000 4001
C - - - - - 0x030991 0C:8981: 20 23 8F  JSR sub_8F23_garbage_code
C - - - - - 0x030994 0C:8984: D0 17     BNE bra_899D    ; jmp



sub_8986:
sub_0x030996:
C - - - - - 0x030996 0C:8986: BD 15 01  LDA ram_0115_se,X
C - - - - - 0x030999 0C:8989: 29 41     AND #$41
C - - - - - 0x03099B 0C:898B: 0D 67 01  ORA ram_0162_se + $05
C - - - - - 0x03099E 0C:898E: 0D C9 06  ORA ram_06C9_se_flag
C - - - - - 0x0309A1 0C:8991: D0 E9     BNE bra_897C
C - - - - - 0x0309A3 0C:8993: BD 54 01  LDA ram_0154_se,X
C - - - - - 0x0309A6 0C:8996: 86 E3     STX ram_00E3_se_t000_save_X
C - - - - - 0x0309A8 0C:8998: 20 94 8B  JSR sub_8B94
C - - - - - 0x0309AB 0C:899B: A6 E3     LDX ram_00E3_se_t000_save_X
bra_899D:
C - - - - - 0x0309AD 0C:899D: BD 78 01  LDA ram_0178_se,X
C - - - - - 0x0309B0 0C:89A0: 99 02 40  STA $4002,Y ; 4002 4006
C - - - - - 0x0309B3 0C:89A3: 20 23 8F  JSR sub_8F23_garbage_code
C - - - - - 0x0309B6 0C:89A6: BD 4D 01  LDA ram_014D_se,X
C - - - - - 0x0309B9 0C:89A9: 09 08     ORA #$08
C - - - - - 0x0309BB 0C:89AB: 99 03 40  STA $4003,Y ; 4003 4007
C - - - - - 0x0309BE 0C:89AE: 4C 23 8F  JMP loc_8F23_garbage_code



sub_89B1:
C - - - - - 0x0309C1 0C:89B1: C9 01     CMP #$01
C - - - - - 0x0309C3 0C:89B3: D0 03     BNE bra_89B8
C - - - - - 0x0309C5 0C:89B5: 4C 5E 87  JMP loc_875E_disable_sound_engine
bra_89B8:
C - - - - - 0x0309C8 0C:89B8: C9 02     CMP #$02
C - - - - - 0x0309CA 0C:89BA: D0 0C     BNE bra_89C8
C - - - - - 0x0309CC 0C:89BC: AD 59 01  LDA ram_0154_se + $05
C - - - - - 0x0309CF 0C:89BF: C9 07     CMP #$07
C - - - - - 0x0309D1 0C:89C1: D0 05     BNE bra_89C8
C - - - - - 0x0309D3 0C:89C3: A9 00     LDA #$00
C - - - - - 0x0309D5 0C:89C5: 8D 0C 01  STA ram_0107_se + $05
bra_89C8:
C - - - - - 0x0309D8 0C:89C8: EE 59 01  INC ram_0154_se + $05
C - - - - - 0x0309DB 0C:89CB: A9 20     LDA #$20
C - - - - - 0x0309DD 0C:89CD: CD 59 01  CMP ram_0154_se + $05
C - - - - - 0x0309E0 0C:89D0: D0 0B     BNE bra_89DD_RTS
C - - - - - 0x0309E2 0C:89D2: A9 00     LDA #$00
C - - - - - 0x0309E4 0C:89D4: 8D 59 01  STA ram_0154_se + $05
C - - - - - 0x0309E7 0C:89D7: EE 52 01  INC ram_014D_se + $05
C - - - - - 0x0309EA 0C:89DA: CE 60 01  DEC ram_015B_se + $05
bra_89DD_RTS:
C - - - - - 0x0309ED 0C:89DD: 60        RTS



sub_0x0309EE_update_sound_engine:
C - - - - - 0x0309EE 0C:89DE: AD 8E 01  LDA ram_018E_se
C - - - - - 0x0309F1 0C:89E1: F0 17     BEQ bra_89FA
C - - - - - 0x0309F3 0C:89E3: EE 8D 01  INC ram_018D_se
C - - - - - 0x0309F6 0C:89E6: AD 8D 01  LDA ram_018D_se
C - - - - - 0x0309F9 0C:89E9: CD 8E 01  CMP ram_018E_se
C - - - - - 0x0309FC 0C:89EC: D0 0C     BNE bra_89FA
C - - - - - 0x0309FE 0C:89EE: A9 00     LDA #$00
C - - - - - 0x030A00 0C:89F0: 8D 8D 01  STA ram_018D_se
C - - - - - 0x030A03 0C:89F3: A9 01     LDA #$01
C - - - - - 0x030A05 0C:89F5: 8D 8F 01  STA ram_018F_se_flag
C - - - - - 0x030A08 0C:89F8: D0 05     BNE bra_89FF    ; jmp
bra_89FA:
C - - - - - 0x030A0A 0C:89FA: A9 00     LDA #$00
C - - - - - 0x030A0C 0C:89FC: 8D 8F 01  STA ram_018F_se_flag
bra_89FF:
C - - - - - 0x030A0F 0C:89FF: AD C8 06  LDA ram_06C8_se
C - - - - - 0x030A12 0C:8A02: F0 17     BEQ bra_8A1B
C - - - - - 0x030A14 0C:8A04: EE C8 06  INC ram_06C8_se
C - - - - - 0x030A17 0C:8A07: AD C8 06  LDA ram_06C8_se
C - - - - - 0x030A1A 0C:8A0A: C9 F0     CMP #$F0
C - - - - - 0x030A1C 0C:8A0C: D0 0D     BNE bra_8A1B
C - - - - - 0x030A1E 0C:8A0E: A9 0F     LDA #$0F
C - - - - - 0x030A20 0C:8A10: 8D 15 40  STA $4015
C - - - - - 0x030A23 0C:8A13: 20 23 8F  JSR sub_8F23_garbage_code
C - - - - - 0x030A26 0C:8A16: A9 00     LDA #$00
C - - - - - 0x030A28 0C:8A18: 8D C8 06  STA ram_06C8_se
bra_8A1B:
C - - - - - 0x030A2B 0C:8A1B: A5 2B     LDA ram_pause_flag
C - - - - - 0x030A2D 0C:8A1D: CD 67 01  CMP ram_0162_se + $05
C - - - - - 0x030A30 0C:8A20: F0 03     BEQ bra_8A25
C - - - - - 0x030A32 0C:8A22: 20 53 89  JSR sub_8953
bra_8A25:
C - - - - - 0x030A35 0C:8A25: AD 60 01  LDA ram_015B_se + $05
C - - - - - 0x030A38 0C:8A28: F0 03     BEQ bra_8A2D
C - - - - - 0x030A3A 0C:8A2A: 20 B1 89  JSR sub_89B1
bra_8A2D:
C - - - - - 0x030A3D 0C:8A2D: AD 15 40  LDA $4015
C - - - - - 0x030A40 0C:8A30: 29 10     AND #$10
C - - - - - 0x030A42 0C:8A32: D0 05     BNE bra_8A39
C - - - - - 0x030A44 0C:8A34: A9 00     LDA #$00
C - - - - - 0x030A46 0C:8A36: 8D 92 01  STA ram_0192_se
bra_8A39:
C - - - - - 0x030A49 0C:8A39: A2 00     LDX #$00
C - - - - - 0x030A4B 0C:8A3B: A0 00     LDY #$00
loc_8A3D_loop:
C D 0 - - - 0x030A4D 0C:8A3D: 86 EE     STX ram_00EE_se_channel_index
C - - - - - 0x030A4F 0C:8A3F: 8C 8C 01  STY ram_018C_se
C - - - - - 0x030A52 0C:8A42: BD 07 01  LDA ram_0107_se,X
C - - - - - 0x030A55 0C:8A45: F0 03     BEQ bra_8A4A
C - - - - - 0x030A57 0C:8A47: 20 5E 8A  JSR sub_8A5E
bra_8A4A:
C - - - - - 0x030A5A 0C:8A4A: E8        INX
C - - - - - 0x030A5B 0C:8A4B: E0 07     CPX #$07
C - - - - - 0x030A5D 0C:8A4D: F0 07     BEQ bra_8A56_RTS
C - - - - - 0x030A5F 0C:8A4F: BD 57 8A  LDA tbl_8A57,X
C - - - - - 0x030A62 0C:8A52: A8        TAY
C - - - - - 0x030A63 0C:8A53: 4C 3D 8A  JMP loc_8A3D_loop
bra_8A56_RTS:
C - - - - - 0x030A66 0C:8A56: 60        RTS



tbl_8A57:
- - - - - - 0x030A67 0C:8A57: 00        .byte $00   ; 00 unused 0x030A5A
- D 0 - - - 0x030A68 0C:8A58: 04        .byte $04   ; 01 
- D 0 - - - 0x030A69 0C:8A59: 08        .byte $08   ; 02 
- D 0 - - - 0x030A6A 0C:8A5A: 00        .byte $00   ; 03 
- D 0 - - - 0x030A6B 0C:8A5B: 04        .byte $04   ; 04 
- D 0 - - - 0x030A6C 0C:8A5C: 0C        .byte $0C   ; 05 
- D 0 - - - 0x030A6D 0C:8A5D: 0C        .byte $0C   ; 06 



sub_8A5E:
C - - - - - 0x030A6E 0C:8A5E: AD 67 01  LDA ram_0162_se + $05
C - - - - - 0x030A71 0C:8A61: F0 08     BEQ bra_8A6B
C - - - - - 0x030A73 0C:8A63: BD 07 01  LDA ram_0107_se,X
C - - - - - 0x030A76 0C:8A66: C9 4D     CMP #$4D
C - - - - - 0x030A78 0C:8A68: F0 0C     BEQ bra_8A76
C - - - - - 0x030A7A 0C:8A6A: 60        RTS
bra_8A6B:
C - - - - - 0x030A7B 0C:8A6B: AD C9 06  LDA ram_06C9_se_flag
C - - - - - 0x030A7E 0C:8A6E: F0 06     BEQ bra_8A76
C - - - - - 0x030A80 0C:8A70: BD 15 01  LDA ram_0115_se,X
C - - - - - 0x030A83 0C:8A73: 4A        LSR
C - - - - - 0x030A84 0C:8A74: 90 E0     BCC bra_8A56_RTS
bra_8A76:
C - - - - - 0x030A86 0C:8A76: E0 06     CPX #$06
C - - - - - 0x030A88 0C:8A78: F0 23     BEQ bra_8A9D
C - - - - - 0x030A8A 0C:8A7A: BD 15 01  LDA ram_0115_se,X
C - - - - - 0x030A8D 0C:8A7D: 4A        LSR
C - - - - - 0x030A8E 0C:8A7E: B0 06     BCS bra_8A86
bra_8A80:
C - - - - - 0x030A90 0C:8A80: AD 8F 01  LDA ram_018F_se_flag
C - - - - - 0x030A93 0C:8A83: F0 01     BEQ bra_8A86
C - - - - - 0x030A95 0C:8A85: 60        RTS
bra_8A86:
C - - - - - 0x030A96 0C:8A86: DE 00 01  DEC ram_0100_se,X
C - - - - - 0x030A99 0C:8A89: D0 45     BNE bra_8AD0
C - - - - - 0x030A9B 0C:8A8B: A0 00     LDY #$00
C - - - - - 0x030A9D 0C:8A8D: BD 23 01  LDA ram_0123_se_data_lo,X
C - - - - - 0x030AA0 0C:8A90: 85 E0     STA ram_00E0_se_t000_data
C - - - - - 0x030AA2 0C:8A92: BD 2A 01  LDA ram_012A_se_data_hi,X
C - - - - - 0x030AA5 0C:8A95: 85 E1     STA ram_00E0_se_t000_data + $01
C - - - - - 0x030AA7 0C:8A97: BD 15 01  LDA ram_0115_se,X
C - - - - - 0x030AAA 0C:8A9A: 4C C1 8D  JMP loc_8DC1
bra_8A9D:
C - - - - - 0x030AAD 0C:8A9D: BD 07 01  LDA ram_0107_se,X
C - - - - - 0x030AB0 0C:8AA0: C9 06     CMP #$06
C - - - - - 0x030AB2 0C:8AA2: 90 DC     BCC bra_8A80
C - - - - - 0x030AB4 0C:8AA4: B0 E0     BCS bra_8A86    ; jmp



bra_8AA6:
C - - - - - 0x030AB6 0C:8AA6: EE 93 01  INC ram_0193_se
C - - - - - 0x030AB9 0C:8AA9: 29 40     AND #$40
C - - - - - 0x030ABB 0C:8AAB: D0 21     BNE bra_8ACE_RTS
C - - - - - 0x030ABD 0C:8AAD: AD 93 01  LDA ram_0193_se
C - - - - - 0x030AC0 0C:8AB0: 29 0F     AND #$0F
C - - - - - 0x030AC2 0C:8AB2: D0 1A     BNE bra_8ACE_RTS
C - - - - - 0x030AC4 0C:8AB4: BD 5B 01  LDA ram_015B_se,X
C - - - - - 0x030AC7 0C:8AB7: F0 15     BEQ bra_8ACE_RTS
C - - - - - 0x030AC9 0C:8AB9: C9 80     CMP #$80
C - - - - - 0x030ACB 0C:8ABB: B0 11     BCS bra_8ACE_RTS
C - - - - - 0x030ACD 0C:8ABD: AD 94 01  LDA ram_0194_se
C - - - - - 0x030AD0 0C:8AC0: 38        SEC
C - - - - - 0x030AD1 0C:8AC1: E9 40     SBC #$40
C - - - - - 0x030AD3 0C:8AC3: 90 09     BCC bra_8ACE_RTS
C - - - - - 0x030AD5 0C:8AC5: 8D 94 01  STA ram_0194_se
C - - - - - 0x030AD8 0C:8AC8: 8D 08 40  STA $4008
C - - - - - 0x030ADB 0C:8ACB: 20 23 8F  JSR sub_8F23_garbage_code
bra_8ACE_RTS:
C - - - - - 0x030ADE 0C:8ACE: 60        RTS



bra_8ACF_RTS:
; bzk optimize
C - - - - - 0x030ADF 0C:8ACF: 60        RTS



bra_8AD0:
C - - - - - 0x030AE0 0C:8AD0: BD 15 01  LDA ram_0115_se,X
C - - - - - 0x030AE3 0C:8AD3: E0 02     CPX #$02
C - - - - - 0x030AE5 0C:8AD5: F0 CF     BEQ bra_8AA6
C - - - - - 0x030AE7 0C:8AD7: B0 F6     BCS bra_8ACF_RTS
C - - - - - 0x030AE9 0C:8AD9: BD 15 01  LDA ram_0115_se,X
C - - - - - 0x030AEC 0C:8ADC: 29 41     AND #$41
C - - - - - 0x030AEE 0C:8ADE: D0 EF     BNE bra_8ACF_RTS
C - - - - - 0x030AF0 0C:8AE0: BD AC 06  LDA ram_06AC_se,X
C - - - - - 0x030AF3 0C:8AE3: 30 24     BMI bra_8B09
C - - - - - 0x030AF5 0C:8AE5: BD 0E 01  LDA ram_010E_se,X
C - - - - - 0x030AF8 0C:8AE8: 85 E2     STA ram_00E2_se_temp
C - - - - - 0x030AFA 0C:8AEA: BD AC 06  LDA ram_06AC_se,X
C - - - - - 0x030AFD 0C:8AED: 29 10     AND #$10
C - - - - - 0x030AFF 0C:8AEF: F0 05     BEQ bra_8AF6
C - - - - - 0x030B01 0C:8AF1: A5 E2     LDA ram_00E2_se_temp
C - - - - - 0x030B03 0C:8AF3: 0A        ASL
C - - - - - 0x030B04 0C:8AF4: 85 E2     STA ram_00E2_se_temp
bra_8AF6:
C - - - - - 0x030B06 0C:8AF6: BD 00 01  LDA ram_0100_se,X
bra_8AF9_loop:
C - - - - - 0x030B09 0C:8AF9: 38        SEC
C - - - - - 0x030B0A 0C:8AFA: E5 E2     SBC ram_00E2_se_temp
C - - - - - 0x030B0C 0C:8AFC: F0 47     BEQ bra_8B45
C - - - - - 0x030B0E 0C:8AFE: B0 F9     BCS bra_8AF9_loop
loc_8B00:
C D 0 - - - 0x030B10 0C:8B00: BD 15 01  LDA ram_0115_se,X
C - - - - - 0x030B13 0C:8B03: 29 06     AND #$06
C - - - - - 0x030B15 0C:8B05: C9 06     CMP #$06
C - - - - - 0x030B17 0C:8B07: F0 15     BEQ bra_8B1E
bra_8B09:
C - - - - - 0x030B19 0C:8B09: BD 6E 01  LDA ram_016E_se,X
C - - - - - 0x030B1C 0C:8B0C: 29 10     AND #$10
C - - - - - 0x030B1E 0C:8B0E: F0 0E     BEQ bra_8B1E
C - - - - - 0x030B20 0C:8B10: DE DE 03  DEC ram_03DE_se,X
C - - - - - 0x030B23 0C:8B13: D0 09     BNE bra_8B1E
C - - - - - 0x030B25 0C:8B15: FE DE 03  INC ram_03DE_se,X
C - - - - - 0x030B28 0C:8B18: 20 FA 8C  JSR sub_8CFA
C - - - - - 0x030B2B 0C:8B1B: 20 CD 81  JSR sub_inc_81CD
bra_8B1E:
C - - - - - 0x030B2E 0C:8B1E: DE C0 03  DEC ram_03C0_se,X
C - - - - - 0x030B31 0C:8B21: D0 19     BNE bra_8B3C_RTS
C - - - - - 0x030B33 0C:8B23: FE C0 03  INC ram_03C0_se,X
C - - - - - 0x030B36 0C:8B26: 20 25 8C  JSR sub_8C25
C - - - - - 0x030B39 0C:8B29: BD 15 01  LDA ram_0115_se,X
C - - - - - 0x030B3C 0C:8B2C: 29 06     AND #$06
C - - - - - 0x030B3E 0C:8B2E: A8        TAY
C - - - - - 0x030B3F 0C:8B2F: B9 3D 8B  LDA tbl_8B3D,Y
C - - - - - 0x030B42 0C:8B32: 85 E2     STA ram_00E2_se_t004_jmp
C - - - - - 0x030B44 0C:8B34: B9 3E 8B  LDA tbl_8B3D + $01,Y
C - - - - - 0x030B47 0C:8B37: 85 E3     STA ram_00E2_se_t004_jmp + $01
C - - - - - 0x030B49 0C:8B39: 6C E2 00  JMP (ram_00E2_se_t004_jmp)
bra_8B3C_RTS:
C - - - - - 0x030B4C 0C:8B3C: 60        RTS



tbl_8B3D:
- D 0 - - - 0x030B4D 0C:8B3D: 55 8B     .word ofs_037_8B55_00
- D 0 - - - 0x030B4F 0C:8B3F: 0A 8C     .word ofs_037_8C0A_01
- D 0 - - - 0x030B51 0C:8B41: 1E 8C     .word ofs_037_8C1E_02
- D 0 - - - 0x030B53 0C:8B43: 77 8C     .word ofs_037_8C77_03



bra_8B45:
C - - - - - 0x030B55 0C:8B45: BD 83 01  LDA ram_0183_se,X
C - - - - - 0x030B58 0C:8B48: 85 EC     STA ram_00EC_se
C - - - - - 0x030B5A 0C:8B4A: BD 86 01  LDA ram_0186_se,X
C - - - - - 0x030B5D 0C:8B4D: 85 ED     STA ram_00ED_se
C - - - - - 0x030B5F 0C:8B4F: 20 29 82  JSR sub_inc_8229
C - - - - - 0x030B62 0C:8B52: 4C 00 8B  JMP loc_8B00



loc_8B55:
sub_0x030B65:
ofs_037_8B55_00:
C D 0 - - - 0x030B65 0C:8B55: BD 89 01  LDA ram_0189_se,X
C - - - - - 0x030B68 0C:8B58: 0A        ASL
C - - - - - 0x030B69 0C:8B59: A8        TAY
C - - - - - 0x030B6A 0C:8B5A: B9 25 9E  LDA tbl_9E25,Y
C - - - - - 0x030B6D 0C:8B5D: 85 E2     STA ram_00E2_se_t001_data
C - - - - - 0x030B6F 0C:8B5F: B9 26 9E  LDA tbl_9E25 + $01,Y
C - - - - - 0x030B72 0C:8B62: 85 E3     STA ram_00E2_se_t001_data + $01
loc_8B64:
C - - - - - 0x030B74 0C:8B64: BD C3 03  LDA ram_03C3_se,X
C - - - - - 0x030B77 0C:8B67: A8        TAY
C - - - - - 0x030B78 0C:8B68: B1 E2     LDA (ram_00E2_se_t001_data),Y
C - - - - - 0x030B7A 0C:8B6A: C9 FB     CMP #$FB
C - - - - - 0x030B7C 0C:8B6C: 90 03     BCC bra_8B71_00_FA
C - - - - - 0x030B7E 0C:8B6E: 4C D3 8B  JMP loc_8BD3_FB_FF
bra_8B71_00_FA:
C - - - - - 0x030B81 0C:8B71: C9 10     CMP #$10
C - - - - - 0x030B83 0C:8B73: 90 07     BCC bra_8B7C_00_0F
; 10-F9
; / 10
C - - - - - 0x030B85 0C:8B75: 4A        LSR
C - - - - - 0x030B86 0C:8B76: 4A        LSR
C - - - - - 0x030B87 0C:8B77: 4A        LSR
C - - - - - 0x030B88 0C:8B78: 4A        LSR
C - - - - - 0x030B89 0C:8B79: 9D C0 03  STA ram_03C0_se,X
bra_8B7C_00_0F:
C - - - - - 0x030B8C 0C:8B7C: FE C3 03  INC ram_03C3_se,X
C - - - - - 0x030B8F 0C:8B7F: B1 E2     LDA (ram_00E2_se_t001_data),Y
C - - - - - 0x030B91 0C:8B81: 29 0F     AND #$0F
C - - - - - 0x030B93 0C:8B83: F0 0C     BEQ bra_8B91
C - - - - - 0x030B95 0C:8B85: 38        SEC
C - - - - - 0x030B96 0C:8B86: FD B2 06  SBC ram_06B2_se,X
C - - - - - 0x030B99 0C:8B89: 90 04     BCC bra_8B8F
C - - - - - 0x030B9B 0C:8B8B: F0 02     BEQ bra_8B8F
C - - - - - 0x030B9D 0C:8B8D: D0 02     BNE bra_8B91    ; jmp
bra_8B8F:
C - - - - - 0x030B9F 0C:8B8F: A9 01     LDA #$01
bra_8B91:
loc_8B91:
sub_0x030BA1:
C D 0 - - - 0x030BA1 0C:8B91: 9D 54 01  STA ram_0154_se,X
sub_8B94:
loc_8B94:
C D 0 - - - 0x030BA4 0C:8B94: 1D 54 01  ORA ram_0154_se,X
C - - - - - 0x030BA7 0C:8B97: F0 10     BEQ bra_8BA9
C - - - - - 0x030BA9 0C:8B99: 38        SEC
C - - - - - 0x030BAA 0C:8B9A: FD 69 01  SBC ram_0169_se,X
C - - - - - 0x030BAD 0C:8B9D: 90 26     BCC bra_8BC5
C - - - - - 0x030BAF 0C:8B9F: F0 24     BEQ bra_8BC5
C - - - - - 0x030BB1 0C:8BA1: 38        SEC
C - - - - - 0x030BB2 0C:8BA2: ED 52 01  SBC ram_014D_se + $05
C - - - - - 0x030BB5 0C:8BA5: 90 1E     BCC bra_8BC5
C - - - - - 0x030BB7 0C:8BA7: F0 1C     BEQ bra_8BC5
bra_8BA9:
C - - - - - 0x030BB9 0C:8BA9: 85 E2     STA ram_00E2_se_temp
C - - - - - 0x030BBB 0C:8BAB: BD 6E 01  LDA ram_016E_se,X
C - - - - - 0x030BBE 0C:8BAE: 29 20     AND #$20
C - - - - - 0x030BC0 0C:8BB0: D0 17     BNE bra_8BC9
C - - - - - 0x030BC2 0C:8BB2: A5 E2     LDA ram_00E2_se_temp
C - - - - - 0x030BC4 0C:8BB4: 1D 62 01  ORA ram_0162_se,X
loc_8BB7:
C D 0 - - - 0x030BC7 0C:8BB7: 20 13 83  JSR sub_inc_8313
C - - - - - 0x030BCA 0C:8BBA: B0 06     BCS bra_8BC2
C - - - - - 0x030BCC 0C:8BBC: 9D 00 40  STA $4000,X ; 4000 4004
C - - - - - 0x030BCF 0C:8BBF: 20 23 8F  JSR sub_8F23_garbage_code
bra_8BC2:
C - - - - - 0x030BD2 0C:8BC2: A6 EE     LDX ram_00EE_se_channel_index
C - - - - - 0x030BD4 0C:8BC4: 60        RTS
bra_8BC5:
C - - - - - 0x030BD5 0C:8BC5: A9 01     LDA #$01
C - - - - - 0x030BD7 0C:8BC7: D0 E0     BNE bra_8BA9    ; jmp
bra_8BC9:
C - - - - - 0x030BD9 0C:8BC9: BD D8 03  LDA ram_03D8_se,X
C - - - - - 0x030BDC 0C:8BCC: 29 F0     AND #$F0
C - - - - - 0x030BDE 0C:8BCE: 05 E2     ORA ram_00E2_se_temp
C - - - - - 0x030BE0 0C:8BD0: 4C B7 8B  JMP loc_8BB7



loc_8BD3_FB_FF:
; bzk optimize, only FF is used out of FB-FF range
C D 0 - - - 0x030BE3 0C:8BD3: C9 FE     CMP #$FE
C - - - - - 0x030BE5 0C:8BD5: F0 0E     BEQ bra_8BE5_FE
C - - - - - 0x030BE7 0C:8BD7: B0 7F     BCS bra_8C58    ; FF
; 00-FD
- - - - - - 0x030BE9 0C:8BD9: FE C3 03  INC ram_03C3_se,X
- - - - - - 0x030BEC 0C:8BDC: BD C3 03  LDA ram_03C3_se,X
- - - - - - 0x030BEF 0C:8BDF: 9D C9 03  STA ram_03C9_se,X
- - - - - - 0x030BF2 0C:8BE2: 4C 64 8B  JMP loc_8B64
bra_8BE5_FE:
- - - - - - 0x030BF5 0C:8BE5: C8        INY
- - - - - - 0x030BF6 0C:8BE6: FE C6 03  INC ram_03C6_se,X
- - - - - - 0x030BF9 0C:8BE9: B1 E2     LDA (ram_00E2_se_t001_data),Y
- - - - - - 0x030BFB 0C:8BEB: DD C6 03  CMP ram_03C6_se,X
- - - - - - 0x030BFE 0C:8BEE: D0 11     BNE bra_8C01
- - - - - - 0x030C00 0C:8BF0: A9 00     LDA #$00
- - - - - - 0x030C02 0C:8BF2: 9D C6 03  STA ram_03C6_se,X
- - - - - - 0x030C05 0C:8BF5: 9D C9 03  STA ram_03C9_se,X
- - - - - - 0x030C08 0C:8BF8: FE C3 03  INC ram_03C3_se,X
- - - - - - 0x030C0B 0C:8BFB: FE C3 03  INC ram_03C3_se,X
- - - - - - 0x030C0E 0C:8BFE: 4C 64 8B  JMP loc_8B64
bra_8C01:
- - - - - - 0x030C11 0C:8C01: BD C9 03  LDA ram_03C9_se,X
- - - - - - 0x030C14 0C:8C04: 9D C3 03  STA ram_03C3_se,X
- - - - - - 0x030C17 0C:8C07: 4C 64 8B  JMP loc_8B64



ofs_037_8C0A_01:
C - - J - - 0x030C1A 0C:8C0A: DE C3 03  DEC ram_03C3_se,X
C - - - - - 0x030C1D 0C:8C0D: 30 49     BMI bra_8C58
C - - - - - 0x030C1F 0C:8C0F: DE 54 01  DEC ram_0154_se,X
C - - - - - 0x030C22 0C:8C12: 30 06     BMI bra_8C1A
C - - - - - 0x030C24 0C:8C14: BD 54 01  LDA ram_0154_se,X
C - - - - - 0x030C27 0C:8C17: 4C 91 8B  JMP loc_8B91
bra_8C1A:
- - - - - - 0x030C2A 0C:8C1A: FE 54 01  INC ram_0154_se,X
- - - - - - 0x030C2D 0C:8C1D: 60        RTS



ofs_037_8C1E_02:
C - - J - - 0x030C2E 0C:8C1E: BD 15 01  LDA ram_0115_se,X
C - - - - - 0x030C31 0C:8C21: 29 02     AND #$02
C - - - - - 0x030C33 0C:8C23: D0 52     BNE bra_8C77
sub_8C25:
C - - - - - 0x030C35 0C:8C25: BD 15 01  LDA ram_0115_se,X
C - - - - - 0x030C38 0C:8C28: 29 06     AND #$06
C - - - - - 0x030C3A 0C:8C2A: C9 06     CMP #$06
C - - - - - 0x030C3C 0C:8C2C: F0 3C     BEQ bra_8C6A_RTS
C - - - - - 0x030C3E 0C:8C2E: BD 00 01  LDA ram_0100_se,X
C - - - - - 0x030C41 0C:8C31: DD CC 03  CMP ram_03CC_se,X
C - - - - - 0x030C44 0C:8C34: B0 34     BCS bra_8C6A_RTS
C - - - - - 0x030C46 0C:8C36: BD 15 01  LDA ram_0115_se,X
C - - - - - 0x030C49 0C:8C39: 09 06     ORA #$06
C - - - - - 0x030C4B 0C:8C3B: 9D 15 01  STA ram_0115_se,X
C - - - - - 0x030C4E 0C:8C3E: BD D8 03  LDA ram_03D8_se,X
C - - - - - 0x030C51 0C:8C41: 29 0C     AND #$0C
C - - - - - 0x030C53 0C:8C43: D0 26     BNE bra_8C6B
; bzk optimize, useless JMP
C - - - - - 0x030C55 0C:8C45: 4C 48 8C  JMP loc_8C48



loc_8C48:
sub_8C48:
C D 0 - - - 0x030C58 0C:8C48: BD D8 03  LDA ram_03D8_se,X
C - - - - - 0x030C5B 0C:8C4B: 29 02     AND #$02
C - - - - - 0x030C5D 0C:8C4D: F0 08     BEQ bra_8C57_RTS
C - - - - - 0x030C5F 0C:8C4F: BD 6E 01  LDA ram_016E_se,X
C - - - - - 0x030C62 0C:8C52: 09 20     ORA #$20
C - - - - - 0x030C64 0C:8C54: 9D 6E 01  STA ram_016E_se,X
bra_8C57_RTS:
C - - - - - 0x030C67 0C:8C57: 60        RTS



bra_8C58:
C - - - - - 0x030C68 0C:8C58: BD 15 01  LDA ram_0115_se,X
C - - - - - 0x030C6B 0C:8C5B: 09 04     ORA #$04
C - - - - - 0x030C6D 0C:8C5D: 29 FD     AND #$FD
C - - - - - 0x030C6F 0C:8C5F: 9D 15 01  STA ram_0115_se,X
C - - - - - 0x030C72 0C:8C62: BD C3 03  LDA ram_03C3_se,X
C - - - - - 0x030C75 0C:8C65: 09 80     ORA #$80
C - - - - - 0x030C77 0C:8C67: 9D C3 03  STA ram_03C3_se,X
bra_8C6A_RTS:
C - - - - - 0x030C7A 0C:8C6A: 60        RTS



bra_8C6B:
C - - - - - 0x030C7B 0C:8C6B: 4A        LSR
C - - - - - 0x030C7C 0C:8C6C: 4A        LSR
C - - - - - 0x030C7D 0C:8C6D: 85 E2     STA ram_00E2_se_temp
C - - - - - 0x030C7F 0C:8C6F: 20 48 8C  JSR sub_8C48
C - - - - - 0x030C82 0C:8C72: A5 E2     LDA ram_00E2_se_temp
C - - - - - 0x030C84 0C:8C74: 4C 91 8B  JMP loc_8B91



bra_8C77:
ofs_037_8C77_03:
C - - J - - 0x030C87 0C:8C77: BD AC 06  LDA ram_06AC_se,X
C - - - - - 0x030C8A 0C:8C7A: 30 2A     BMI bra_8CA6
C - - - - - 0x030C8C 0C:8C7C: 84 E2     STY ram_00E2_se_temp
C - - - - - 0x030C8E 0C:8C7E: BD AC 06  LDA ram_06AC_se,X
C - - - - - 0x030C91 0C:8C81: 29 0F     AND #$0F
C - - - - - 0x030C93 0C:8C83: 85 E4     STA ram_00E4_se_t001
C - - - - - 0x030C95 0C:8C85: BD AF 06  LDA ram_06AF_se,X
C - - - - - 0x030C98 0C:8C88: 38        SEC
C - - - - - 0x030C99 0C:8C89: E9 01     SBC #$01
C - - - - - 0x030C9B 0C:8C8B: 29 03     AND #$03
C - - - - - 0x030C9D 0C:8C8D: 38        SEC
C - - - - - 0x030C9E 0C:8C8E: E5 E4     SBC ram_00E4_se_t001
C - - - - - 0x030CA0 0C:8C90: 29 03     AND #$03
C - - - - - 0x030CA2 0C:8C92: E0 00     CPX #$00
C - - - - - 0x030CA4 0C:8C94: F0 02     BEQ bra_8C98
C - - - - - 0x030CA6 0C:8C96: 09 04     ORA #$04
bra_8C98:
C - - - - - 0x030CA8 0C:8C98: A8        TAY
C - - - - - 0x030CA9 0C:8C99: B9 B5 06  LDA ram_06B5_se,Y
C - - - - - 0x030CAC 0C:8C9C: 85 EC     STA ram_00EC_se
C - - - - - 0x030CAE 0C:8C9E: B9 BF 06  LDA ram_06BF_se,Y
C - - - - - 0x030CB1 0C:8CA1: 85 ED     STA ram_00ED_se
C - - - - - 0x030CB3 0C:8CA3: 20 E7 81  JSR sub_inc_81E7
bra_8CA6:
C - - - - - 0x030CB6 0C:8CA6: BD D8 03  LDA ram_03D8_se,X
C - - - - - 0x030CB9 0C:8CA9: 29 0C     AND #$0C
C - - - - - 0x030CBB 0C:8CAB: D0 BD     BNE bra_8C6A_RTS
C - - - - - 0x030CBD 0C:8CAD: BD 89 01  LDA ram_0189_se,X
C - - - - - 0x030CC0 0C:8CB0: 30 25     BMI bra_8CD7
C - - - - - 0x030CC2 0C:8CB2: BD C3 03  LDA ram_03C3_se,X
C - - - - - 0x030CC5 0C:8CB5: 30 20     BMI bra_8CD7
C - - - - - 0x030CC7 0C:8CB7: DE D5 03  DEC ram_03D5_se,X
C - - - - - 0x030CCA 0C:8CBA: F0 03     BEQ bra_8CBF
C - - - - - 0x030CCC 0C:8CBC: 4C 55 8B  JMP loc_8B55
bra_8CBF:
C - - - - - 0x030CCF 0C:8CBF: FE B2 06  INC ram_06B2_se,X
C - - - - - 0x030CD2 0C:8CC2: BD B2 06  LDA ram_06B2_se,X
C - - - - - 0x030CD5 0C:8CC5: C9 10     CMP #$10
C - - - - - 0x030CD7 0C:8CC7: 90 05     BCC bra_8CCE
- - - - - - 0x030CD9 0C:8CC9: A9 0F     LDA #$0F
- - - - - - 0x030CDB 0C:8CCB: 9D B2 06  STA ram_06B2_se,X
bra_8CCE:
C - - - - - 0x030CDE 0C:8CCE: BD D2 03  LDA ram_03D2_se,X
C - - - - - 0x030CE1 0C:8CD1: 9D D5 03  STA ram_03D5_se,X
C - - - - - 0x030CE4 0C:8CD4: 4C 55 8B  JMP loc_8B55
bra_8CD7:
C - - - - - 0x030CE7 0C:8CD7: DE D5 03  DEC ram_03D5_se,X
C - - - - - 0x030CEA 0C:8CDA: D0 8E     BNE bra_8C6A_RTS
C - - - - - 0x030CEC 0C:8CDC: BD D2 03  LDA ram_03D2_se,X
C - - - - - 0x030CEF 0C:8CDF: 9D D5 03  STA ram_03D5_se,X
C - - - - - 0x030CF2 0C:8CE2: DE 54 01  DEC ram_0154_se,X
C - - - - - 0x030CF5 0C:8CE5: 30 0F     BMI bra_8CF6
C - - - - - 0x030CF7 0C:8CE7: A9 01     LDA #$01
C - - - - - 0x030CF9 0C:8CE9: DD 54 01  CMP ram_0154_se,X
C - - - - - 0x030CFC 0C:8CEC: F0 02     BEQ bra_8CF0
C - - - - - 0x030CFE 0C:8CEE: B0 06     BCS bra_8CF6
bra_8CF0:
C - - - - - 0x030D00 0C:8CF0: BD 54 01  LDA ram_0154_se,X
C - - - - - 0x030D03 0C:8CF3: 4C 94 8B  JMP loc_8B94
bra_8CF6:
C - - - - - 0x030D06 0C:8CF6: FE 54 01  INC ram_0154_se,X
C - - - - - 0x030D09 0C:8CF9: 60        RTS



sub_8CFA:
loc_8CFA:
sub_0x030D0A:
C D 0 - - - 0x030D0A 0C:8CFA: BD A3 06  LDA ram_06A3_se,X
C - - - - - 0x030D0D 0C:8CFD: 0A        ASL
C - - - - - 0x030D0E 0C:8CFE: A8        TAY
C - - - - - 0x030D0F 0C:8CFF: B9 7B 9E  LDA tbl_9E7B,Y
C - - - - - 0x030D12 0C:8D02: 85 E2     STA ram_00E2_se_t000_data
C - - - - - 0x030D14 0C:8D04: B9 7C 9E  LDA tbl_9E7B + $01,Y
C - - - - - 0x030D17 0C:8D07: 85 E3     STA ram_00E2_se_t000_data + $01
C - - - - - 0x030D19 0C:8D09: BD A6 06  LDA ram_06A6_se,X
C - - - - - 0x030D1C 0C:8D0C: A8        TAY
C - - - - - 0x030D1D 0C:8D0D: B1 E2     LDA (ram_00E2_se_t000_data),Y
C - - - - - 0x030D1F 0C:8D0F: C9 FB     CMP #$FB
C - - - - - 0x030D21 0C:8D11: B0 71     BCS bra_8D84_FB_FF
; 00-FA
C - - - - - 0x030D23 0C:8D13: C9 10     CMP #$10
C - - - - - 0x030D25 0C:8D15: 90 07     BCC bra_8D1E_00_0F
; / 10
C - - - - - 0x030D27 0C:8D17: 4A        LSR
C - - - - - 0x030D28 0C:8D18: 4A        LSR
C - - - - - 0x030D29 0C:8D19: 4A        LSR
C - - - - - 0x030D2A 0C:8D1A: 4A        LSR
C - - - - - 0x030D2B 0C:8D1B: 9D DE 03  STA ram_03DE_se,X
bra_8D1E_00_0F:
C - - - - - 0x030D2E 0C:8D1E: FE A6 06  INC ram_06A6_se,X
C - - - - - 0x030D31 0C:8D21: B1 E2     LDA (ram_00E2_se_t000_data),Y
C - - - - - 0x030D33 0C:8D23: 29 0F     AND #$0F
C - - - - - 0x030D35 0C:8D25: 85 E2     STA ram_00E2_se_temp
C - - - - - 0x030D37 0C:8D27: C9 08     CMP #$08
C - - - - - 0x030D39 0C:8D29: B0 07     BCS bra_8D32
C - - - - - 0x030D3B 0C:8D2B: 20 40 8D  JSR sub_8D40
; bzk optimize, JMP
C - - - - - 0x030D3E 0C:8D2E: 20 54 8D  JSR sub_8D54
C - - - - - 0x030D41 0C:8D31: 60        RTS
bra_8D32:
C - - - - - 0x030D42 0C:8D32: A9 10     LDA #$10
C - - - - - 0x030D44 0C:8D34: 38        SEC
C - - - - - 0x030D45 0C:8D35: E5 E2     SBC ram_00E2_se_temp
C - - - - - 0x030D47 0C:8D37: 85 E2     STA ram_00E2_se_temp
C - - - - - 0x030D49 0C:8D39: 20 40 8D  JSR sub_8D40
; bzk optimize, JMP
C - - - - - 0x030D4C 0C:8D3C: 20 6A 8D  JSR sub_8D6A
C - - - - - 0x030D4F 0C:8D3F: 60        RTS



sub_8D40:
C - - - - - 0x030D50 0C:8D40: BD E1 03  LDA ram_03E1_se,X
C - - - - - 0x030D53 0C:8D43: AA        TAX
C - - - - - 0x030D54 0C:8D44: A5 E2     LDA ram_00E2_se_temp
loc_8D46_loop:
C D 0 - - - 0x030D56 0C:8D46: CA        DEX
C - - - - - 0x030D57 0C:8D47: F0 06     BEQ bra_8D4F
C - - - - - 0x030D59 0C:8D49: 18        CLC
C - - - - - 0x030D5A 0C:8D4A: 65 E2     ADC ram_00E2_se_temp
C - - - - - 0x030D5C 0C:8D4C: 4C 46 8D  JMP loc_8D46_loop
bra_8D4F:
C - - - - - 0x030D5F 0C:8D4F: A6 EE     LDX ram_00EE_se_channel_index
C - - - - - 0x030D61 0C:8D51: 85 E2     STA ram_00E2_se_temp
C - - - - - 0x030D63 0C:8D53: 60        RTS



sub_8D54:
C - - - - - 0x030D64 0C:8D54: 18        CLC
C - - - - - 0x030D65 0C:8D55: 7D 83 01  ADC ram_0183_se,X
C - - - - - 0x030D68 0C:8D58: 85 EC     STA ram_00EC_se
C - - - - - 0x030D6A 0C:8D5A: 90 08     BCC bra_8D64_not_overflow
C - - - - - 0x030D6C 0C:8D5C: BD 86 01  LDA ram_0186_se,X
C - - - - - 0x030D6F 0C:8D5F: 85 ED     STA ram_00ED_se
C - - - - - 0x030D71 0C:8D61: E6 ED     INC ram_00ED_se
C - - - - - 0x030D73 0C:8D63: 60        RTS
bra_8D64_not_overflow:
C - - - - - 0x030D74 0C:8D64: BD 86 01  LDA ram_0186_se,X
C - - - - - 0x030D77 0C:8D67: 85 ED     STA ram_00ED_se
C - - - - - 0x030D79 0C:8D69: 60        RTS



sub_8D6A:
C - - - - - 0x030D7A 0C:8D6A: BD 83 01  LDA ram_0183_se,X
C - - - - - 0x030D7D 0C:8D6D: 38        SEC
C - - - - - 0x030D7E 0C:8D6E: E5 E2     SBC ram_00E2_se_temp
C - - - - - 0x030D80 0C:8D70: B0 0A     BCS bra_8D7C
- - - - - - 0x030D82 0C:8D72: 85 EC     STA ram_00EC_se
- - - - - - 0x030D84 0C:8D74: BD 86 01  LDA ram_0186_se,X
- - - - - - 0x030D87 0C:8D77: 85 ED     STA ram_00ED_se
- - - - - - 0x030D89 0C:8D79: C6 ED     DEC ram_00ED_se
- - - - - - 0x030D8B 0C:8D7B: 60        RTS
bra_8D7C:
C - - - - - 0x030D8C 0C:8D7C: 85 EC     STA ram_00EC_se
C - - - - - 0x030D8E 0C:8D7E: BD 86 01  LDA ram_0186_se,X
C - - - - - 0x030D91 0C:8D81: 85 ED     STA ram_00ED_se
C - - - - - 0x030D93 0C:8D83: 60        RTS



bra_8D84_FB_FF:
C - - - - - 0x030D94 0C:8D84: C9 FE     CMP #$FE
C - - - - - 0x030D96 0C:8D86: F0 0E     BEQ bra_8D96_FE
C - - - - - 0x030D98 0C:8D88: B0 31     BCS bra_8DBB_FF
; FB
C - - - - - 0x030D9A 0C:8D8A: FE A6 06  INC ram_06A6_se,X
C - - - - - 0x030D9D 0C:8D8D: BD A6 06  LDA ram_06A6_se,X
C - - - - - 0x030DA0 0C:8D90: 9D A0 06  STA ram_06A0_se,X
C - - - - - 0x030DA3 0C:8D93: 4C FA 8C  JMP loc_8CFA



bra_8D96_FE:
C - - - - - 0x030DA6 0C:8D96: C8        INY
C - - - - - 0x030DA7 0C:8D97: FE A9 06  INC ram_06A9_se,X
C - - - - - 0x030DAA 0C:8D9A: B1 E2     LDA (ram_00E2_se_t000_data),Y
C - - - - - 0x030DAC 0C:8D9C: DD A9 06  CMP ram_06A9_se,X
C - - - - - 0x030DAF 0C:8D9F: D0 11     BNE bra_8DB2
- - - - - - 0x030DB1 0C:8DA1: A9 00     LDA #$00
- - - - - - 0x030DB3 0C:8DA3: 9D A9 06  STA ram_06A9_se,X
- - - - - - 0x030DB6 0C:8DA6: 9D A0 06  STA ram_06A0_se,X
- - - - - - 0x030DB9 0C:8DA9: FE A6 06  INC ram_06A6_se,X
- - - - - - 0x030DBC 0C:8DAC: FE A6 06  INC ram_06A6_se,X
- - - - - - 0x030DBF 0C:8DAF: 4C FA 8C  JMP loc_8CFA
bra_8DB2:
C - - - - - 0x030DC2 0C:8DB2: BD A0 06  LDA ram_06A0_se,X
C - - - - - 0x030DC5 0C:8DB5: 9D A6 06  STA ram_06A6_se,X
C - - - - - 0x030DC8 0C:8DB8: 4C FA 8C  JMP loc_8CFA



bra_8DBB_FF:
C - - - - - 0x030DCB 0C:8DBB: A9 FF     LDA #$FF
C - - - - - 0x030DCD 0C:8DBD: 9D DE 03  STA ram_03DE_se,X
C - - - - - 0x030DD0 0C:8DC0: 60        RTS



loc_8DC1:
loc_0x030DD1:
C D 0 - - - 0x030DD1 0C:8DC1: 4A        LSR
C - - - - - 0x030DD2 0C:8DC2: 90 03     BCC bra_8DC7
C - - - - - 0x030DD4 0C:8DC4: 4C DE 8D  JMP loc_8DDE
bra_8DC7:
C - - - - - 0x030DD7 0C:8DC7: 4C C5 E1  JMP loc_0x03E1D5



tbl_8DCA:
; see con_se_cb_2
- D 0 - - - 0x030DDA 0C:8DCA: 14 8E     .word ofs_038_8E14_E6
- D 0 - - - 0x030DDC 0C:8DCC: 1E 8E     .word ofs_038_8E1E_E7
- D 0 - - - 0x030DDE 0C:8DCE: 28 8E     .word ofs_038_8E28_E8
- - - - - - 0x030DE0 0C:8DD0: 31 8E     .word ofs_038_8E31_E9   ; unused, index doesn't exist
- D 0 - - - 0x030DE2 0C:8DD2: 39 8E     .word ofs_038_8E39_EA
- - - - - - 0x030DE4 0C:8DD4: 0D 85     .word ofs_038_inc_850D_EB   ; unused, index doesn't exist
- - - - - - 0x030DE6 0C:8DD6: 0D 85     .word ofs_038_inc_850D_EC   ; unused, index doesn't exist
- D 0 - - - 0x030DE8 0C:8DD8: 0D 85     .word ofs_038_inc_850D_ED
- - - - - - 0x030DEA 0C:8DDA: 0D 85     .word ofs_038_inc_850D_EE   ; unused, index doesn't exist
- - - - - - 0x030DEC 0C:8DDC: 3F 8E     .word ofs_038_8E3F_EF   ; unused, index doesn't exist



loc_8DDE:
loc_0x030DEE:
C D 0 - - - 0x030DEE 0C:8DDE: B1 E0     LDA (ram_00E0_se_t000_data),Y
C - - - - - 0x030DF0 0C:8DE0: C9 E6     CMP #$E6
C - - - - - 0x030DF2 0C:8DE2: B0 03     BCS bra_8DE7_E6_FF
C - - - - - 0x030DF4 0C:8DE4: 4C 49 8E  JMP loc_8E49_00_E5
bra_8DE7_E6_FF:
C - - - - - 0x030DF7 0C:8DE7: C9 F0     CMP #$F0
C - - - - - 0x030DF9 0C:8DE9: 90 0D     BCC bra_8DF8_E6_EF
; F0-FF
C - - - - - 0x030DFB 0C:8DEB: 29 0F     AND #$0F
C - - - - - 0x030DFD 0C:8DED: C9 0B     CMP #$0B
C - - - - - 0x030DFF 0C:8DEF: 90 03     BCC bra_8DF4_F0_FA
C - - - - - 0x030E01 0C:8DF1: 4C A3 85  JMP loc_inc_85A3_F0_FF
bra_8DF4_F0_FA:
C - - - - - 0x030E04 0C:8DF4: B1 E0     LDA (ram_00E0_se_t000_data),Y
C - - - - - 0x030E06 0C:8DF6: D0 51     BNE bra_8E49
bra_8DF8_E6_EF:
C - - - - - 0x030E08 0C:8DF8: E0 06     CPX #$06
C - - - - - 0x030E0A 0C:8DFA: F0 4D     BEQ bra_8E49
C - - - - - 0x030E0C 0C:8DFC: B1 E0     LDA (ram_00E0_se_t000_data),Y
C - - - - - 0x030E0E 0C:8DFE: 29 0F     AND #$0F
C - - - - - 0x030E10 0C:8E00: 38        SEC
C - - - - - 0x030E11 0C:8E01: E9 06     SBC #$06
C - - - - - 0x030E13 0C:8E03: 0A        ASL
C - - - - - 0x030E14 0C:8E04: AA        TAX
C - - - - - 0x030E15 0C:8E05: BD CA 8D  LDA tbl_8DCA,X
C - - - - - 0x030E18 0C:8E08: 85 E2     STA ram_00E2_se_t005_jmp
C - - - - - 0x030E1A 0C:8E0A: BD CB 8D  LDA tbl_8DCA + $01,X
C - - - - - 0x030E1D 0C:8E0D: 85 E3     STA ram_00E2_se_t005_jmp + $01
C - - - - - 0x030E1F 0C:8E0F: A6 EE     LDX ram_00EE_se_channel_index
C - - - - - 0x030E21 0C:8E11: 6C E2 00  JMP (ram_00E2_se_t005_jmp)



ofs_038_8E14_E6:
C - - J - - 0x030E24 0C:8E14: C8        INY
C - - - - - 0x030E25 0C:8E15: B1 E0     LDA (ram_00E0_se_t000_data),Y
C - - - - - 0x030E27 0C:8E17: 9D 0E 01  STA ram_010E_se,X
loc_8E1A:
bra_8E1A:
C D 0 - - - 0x030E2A 0C:8E1A: C8        INY
C - - - - - 0x030E2B 0C:8E1B: 4C DE 8D  JMP loc_8DDE



ofs_038_8E1E_E7:
C - - J - - 0x030E2E 0C:8E1E: BD 15 01  LDA ram_0115_se,X
C - - - - - 0x030E31 0C:8E21: 09 02     ORA #$02
C - - - - - 0x030E33 0C:8E23: 9D 15 01  STA ram_0115_se,X
C - - - - - 0x030E36 0C:8E26: D0 F2     BNE bra_8E1A    ; jmp



ofs_038_8E28_E8:
C - - J - - 0x030E38 0C:8E28: C8        INY
C - - - - - 0x030E39 0C:8E29: B1 E0     LDA (ram_00E0_se_t000_data),Y
C - - - - - 0x030E3B 0C:8E2B: 9D 69 01  STA ram_0169_se,X
C - - - - - 0x030E3E 0C:8E2E: 4C 1A 8E  JMP loc_8E1A



ofs_038_8E31_E9:
; bzk garbage
- - - - - - 0x030E41 0C:8E31: C8        INY
- - - - - - 0x030E42 0C:8E32: B1 E0     LDA (ram_00E0_se_t000_data),Y
- - - - - - 0x030E44 0C:8E34: 9D 62 01  STA ram_0162_se,X
- - - - - - 0x030E47 0C:8E37: D0 E1     BNE bra_8E1A    ; jmp?



ofs_038_8E39_EA:
C - - J - - 0x030E49 0C:8E39: C8        INY
C - - - - - 0x030E4A 0C:8E3A: B1 E0     LDA (ram_00E0_se_t000_data),Y
C - - - - - 0x030E4C 0C:8E3C: 4C 8E 8E  JMP loc_8E8E



ofs_038_8E3F_EF:
- - - - - - 0x030E4F 0C:8E3F: BD 15 01  LDA ram_0115_se,X
- - - - - - 0x030E52 0C:8E42: 29 F9     AND #$F9
- - - - - - 0x030E54 0C:8E44: 9D 15 01  STA ram_0115_se,X
- - - - - - 0x030E57 0C:8E47: F0 D1     BEQ bra_8E1A
bra_8E49:
loc_8E49_00_E5:
C D 0 - - - 0x030E59 0C:8E49: 29 F0     AND #$F0
; bzk optimize, no need for CMP 00
C - - - - - 0x030E5B 0C:8E4B: C9 00     CMP #$00
C - - - - - 0x030E5D 0C:8E4D: D0 6C     BNE bra_8EBB
; 00
C - - - - - 0x030E5F 0C:8E4F: B1 E0     LDA (ram_00E0_se_t000_data),Y
C - - - - - 0x030E61 0C:8E51: 29 0F     AND #$0F
C - - - - - 0x030E63 0C:8E53: D0 03     BNE bra_8E58
C - - - - - 0x030E65 0C:8E55: 4C BB 8E  JMP loc_8EBB
bra_8E58:
C - - - - - 0x030E68 0C:8E58: 9D 0E 01  STA ram_010E_se,X
C - - - - - 0x030E6B 0C:8E5B: BD 15 01  LDA ram_0115_se,X
C - - - - - 0x030E6E 0C:8E5E: 29 F9     AND #$F9
C - - - - - 0x030E70 0C:8E60: 9D 15 01  STA ram_0115_se,X
C - - - - - 0x030E73 0C:8E63: C8        INY
C - - - - - 0x030E74 0C:8E64: B1 E0     LDA (ram_00E0_se_t000_data),Y
C - - - - - 0x030E76 0C:8E66: E0 06     CPX #$06
C - - - - - 0x030E78 0C:8E68: D0 08     BNE bra_8E72
C - - - - - 0x030E7A 0C:8E6A: A9 30     LDA #$30
C - - - - - 0x030E7C 0C:8E6C: 9D 62 01  STA ram_0162_se,X
C - - - - - 0x030E7F 0C:8E6F: 4C B3 8E  JMP loc_8EB3
bra_8E72:
C - - - - - 0x030E82 0C:8E72: 9D 62 01  STA ram_0162_se,X
C - - - - - 0x030E85 0C:8E75: C8        INY
C - - - - - 0x030E86 0C:8E76: E0 00     CPX #$00
C - - - - - 0x030E88 0C:8E78: B0 04     BCS bra_8E7E
- - - - - - 0x030E8A 0C:8E7A: C8        INY
- - - - - - 0x030E8B 0C:8E7B: 4C DE 8D  JMP loc_8DDE
bra_8E7E:
C - - - - - 0x030E8E 0C:8E7E: B1 E0     LDA (ram_00E0_se_t000_data),Y
C - - - - - 0x030E90 0C:8E80: C9 88     CMP #$88
C - - - - - 0x030E92 0C:8E82: F0 22     BEQ bra_8EA6
C - - - - - 0x030E94 0C:8E84: BD 15 01  LDA ram_0115_se,X
C - - - - - 0x030E97 0C:8E87: 09 80     ORA #$80
C - - - - - 0x030E99 0C:8E89: 9D 15 01  STA ram_0115_se,X
C - - - - - 0x030E9C 0C:8E8C: B1 E0     LDA (ram_00E0_se_t000_data),Y
loc_8E8E:
C D 0 - - - 0x030E9E 0C:8E8E: E0 03     CPX #$03
C - - - - - 0x030EA0 0C:8E90: D0 03     BNE bra_8E95
C - - - - - 0x030EA2 0C:8E92: 8D 90 01  STA ram_0190_useless
bra_8E95:
C - - - - - 0x030EA5 0C:8E95: 20 13 83  JSR sub_inc_8313
C - - - - - 0x030EA8 0C:8E98: B0 06     BCS bra_8EA0
C - - - - - 0x030EAA 0C:8E9A: 9D 01 40  STA $4001,X ; 4001
C - - - - - 0x030EAD 0C:8E9D: 20 23 8F  JSR sub_8F23_garbage_code
bra_8EA0:
C - - - - - 0x030EB0 0C:8EA0: A6 EE     LDX ram_00EE_se_channel_index
C - - - - - 0x030EB2 0C:8EA2: C8        INY
bra_8EA3:
C - - - - - 0x030EB3 0C:8EA3: 4C DE 8D  JMP loc_8DDE
bra_8EA6:
C - - - - - 0x030EB6 0C:8EA6: BD 15 01  LDA ram_0115_se,X
C - - - - - 0x030EB9 0C:8EA9: 29 7F     AND #$7F
C - - - - - 0x030EBB 0C:8EAB: 9D 15 01  STA ram_0115_se,X
C - - - - - 0x030EBE 0C:8EAE: A9 7F     LDA #$7F
C - - - - - 0x030EC0 0C:8EB0: 4C 8E 8E  JMP loc_8E8E



loc_8EB3:
; A = 30
C D 0 - - - 0x030EC3 0C:8EB3: C9 00     CMP #$00
; bzk optimize
C - - - - - 0x030EC5 0C:8EB5: D0 EC     BNE bra_8EA3    ; jmp


; bzk garbabe
- - - - - - 0x030EC7 0C:8EB7: C8        INY
- - - - - - 0x030EC8 0C:8EB8: 4C DE 8D  JMP loc_8DDE



loc_8EBB:
bra_8EBB:
C D 0 - - - 0x030ECB 0C:8EBB: E0 06     CPX #$06
C - - - - - 0x030ECD 0C:8EBD: D0 07     BNE bra_8EC6
C - - - - - 0x030ECF 0C:8EBF: B1 E0     LDA (ram_00E0_se_t000_data),Y
C - - - - - 0x030ED1 0C:8EC1: C9 10     CMP #$10
C - - - - - 0x030ED3 0C:8EC3: D0 01     BNE bra_8EC6
C - - - - - 0x030ED5 0C:8EC5: C8        INY
bra_8EC6:
C - - - - - 0x030ED6 0C:8EC6: BD 0E 01  LDA ram_010E_se,X
C - - - - - 0x030ED9 0C:8EC9: 9D 00 01  STA ram_0100_se,X
C - - - - - 0x030EDC 0C:8ECC: B1 E0     LDA (ram_00E0_se_t000_data),Y
; / 10
C - - - - - 0x030EDE 0C:8ECE: 4A        LSR
C - - - - - 0x030EDF 0C:8ECF: 4A        LSR
C - - - - - 0x030EE0 0C:8ED0: 4A        LSR
C - - - - - 0x030EE1 0C:8ED1: 4A        LSR
C - - - - - 0x030EE2 0C:8ED2: 9D 5B 01  STA ram_015B_se,X
C - - - - - 0x030EE5 0C:8ED5: E0 06     CPX #$06
C - - - - - 0x030EE7 0C:8ED7: F0 14     BEQ bra_8EED
C - - - - - 0x030EE9 0C:8ED9: BD 62 01  LDA ram_0162_se,X
C - - - - - 0x030EEC 0C:8EDC: 29 10     AND #$10
C - - - - - 0x030EEE 0C:8EDE: F0 3D     BEQ bra_8F1D
C - - - - - 0x030EF0 0C:8EE0: BD 5B 01  LDA ram_015B_se,X
C - - - - - 0x030EF3 0C:8EE3: 38        SEC
C - - - - - 0x030EF4 0C:8EE4: FD 69 01  SBC ram_0169_se,X
C - - - - - 0x030EF7 0C:8EE7: F0 02     BEQ bra_8EEB
C - - - - - 0x030EF9 0C:8EE9: B0 02     BCS bra_8EED
bra_8EEB:
C - - - - - 0x030EFB 0C:8EEB: A9 01     LDA #$01
bra_8EED:
C - - - - - 0x030EFD 0C:8EED: 1D 62 01  ORA ram_0162_se,X
loc_8EF0:
C D 0 - - - 0x030F00 0C:8EF0: 20 13 83  JSR sub_inc_8313
C - - - - - 0x030F03 0C:8EF3: B0 06     BCS bra_8EFB
C - - - - - 0x030F05 0C:8EF5: 9D 00 40  STA $4000,X ; 4000 400C
C - - - - - 0x030F08 0C:8EF8: 20 23 8F  JSR sub_8F23_garbage_code
bra_8EFB:
C - - - - - 0x030F0B 0C:8EFB: A6 EE     LDX ram_00EE_se_channel_index
C - - - - - 0x030F0D 0C:8EFD: BD 15 01  LDA ram_0115_se,X
C - - - - - 0x030F10 0C:8F00: 29 02     AND #$02
C - - - - - 0x030F12 0C:8F02: D0 16     BNE bra_8F1A
C - - - - - 0x030F14 0C:8F04: B1 E0     LDA (ram_00E0_se_t000_data),Y
C - - - - - 0x030F16 0C:8F06: 29 0F     AND #$0F
C - - - - - 0x030F18 0C:8F08: E0 06     CPX #$06
C - - - - - 0x030F1A 0C:8F0A: F0 09     BEQ bra_8F15
C - - - - - 0x030F1C 0C:8F0C: 85 ED     STA ram_00ED_se
C - - - - - 0x030F1E 0C:8F0E: B1 E0     LDA (ram_00E0_se_t000_data),Y
C - - - - - 0x030F20 0C:8F10: F0 03     BEQ bra_8F15
C - - - - - 0x030F22 0C:8F12: C8        INY
C - - - - - 0x030F23 0C:8F13: B1 E0     LDA (ram_00E0_se_t000_data),Y
bra_8F15:
C - - - - - 0x030F25 0C:8F15: 85 EC     STA ram_00EC_se
C - - - - - 0x030F27 0C:8F17: 20 CD 81  JSR sub_inc_81CD
bra_8F1A:
C - - - - - 0x030F2A 0C:8F1A: 4C D6 86  JMP loc_inc_86D6
bra_8F1D:
C - - - - - 0x030F2D 0C:8F1D: BD 62 01  LDA ram_0162_se,X
C - - - - - 0x030F30 0C:8F20: 4C F0 8E  JMP loc_8EF0



sub_8F23_garbage_code:
loc_8F23_garbage_code:
; bzk optimize, same code as 0x010763 inside included asm
C D 0 - - - 0x030F33 0C:8F23: EA        NOP
C - - - - - 0x030F34 0C:8F24: EA        NOP
C - - - - - 0x030F35 0C:8F25: EA        NOP
C - - - - - 0x030F36 0C:8F26: EA        NOP
C - - - - - 0x030F37 0C:8F27: EA        NOP
C - - - - - 0x030F38 0C:8F28: EA        NOP
C - - - - - 0x030F39 0C:8F29: EA        NOP
C - - - - - 0x030F3A 0C:8F2A: EA        NOP
C - - - - - 0x030F3B 0C:8F2B: EA        NOP
C - - - - - 0x030F3C 0C:8F2C: EA        NOP
C - - - - - 0x030F3D 0C:8F2D: 60        RTS



tbl_8F2E_sound_and_music_data:
; sounds (see con_sound)
- D 0 - - - 0x030F3E 0C:8F2E: 26 90     .word _off009_9026_01
- D 0 - - - 0x030F40 0C:8F30: 2B 90     .word _off009_902B_02
- D 0 - - - 0x030F42 0C:8F32: 30 90     .word _off009_9030_03
- - - - - - 0x030F44 0C:8F34: 35 90     .word _off009_9035_04
- D 0 - - - 0x030F46 0C:8F36: 3A 90     .word _off009_903A_05
- D 0 - - - 0x030F48 0C:8F38: 3F 90     .word _off009_903F_06
- D 0 - - - 0x030F4A 0C:8F3A: 47 90     .word _off009_9047_07
- D 0 - - - 0x030F4C 0C:8F3C: 52 91     .word _off009_9152_08
- D 0 - - - 0x030F4E 0C:8F3E: 4F 90     .word _off009_904F_09_step
- D 0 - - - 0x030F50 0C:8F40: B0 90     .word _off009_90B0_0A
- D 0 - - - 0x030F52 0C:8F42: 57 90     .word _off009_9057_0B_land
- D 0 - - - 0x030F54 0C:8F44: 6E 90     .word _off009_906E_0C_door
- D 0 - - - 0x030F56 0C:8F46: 89 91     .word _off009_9189_0D
- D 0 - - - 0x030F58 0C:8F48: 8E 91     .word _off009_918E_0E
- D 0 - - - 0x030F5A 0C:8F4A: 64 91     .word _off009_9164_0F
- D 0 - - - 0x030F5C 0C:8F4C: C7 91     .word _off009_91C7_10
- D 0 - - - 0x030F5E 0C:8F4E: 74 91     .word _off009_9174_11
- D 0 - - - 0x030F60 0C:8F50: 35 91     .word _off009_9135_12
- D 0 - - - 0x030F62 0C:8F52: 7B 90     .word _off009_907B_13_throw_axe
- D 0 - - - 0x030F64 0C:8F54: 80 90     .word _off009_9080_14_throw_knife
- D 0 - - - 0x030F66 0C:8F56: 85 90     .word _off009_9085_15
- D 0 - - - 0x030F68 0C:8F58: 8A 90     .word _off009_908A_16
- D 0 - - - 0x030F6A 0C:8F5A: 92 90     .word _off009_9092_17
- D 0 - - - 0x030F6C 0C:8F5C: 9C 90     .word _off009_909C_18_pick_up_money
- D 0 - - - 0x030F6E 0C:8F5E: B5 91     .word _off009_91B5_19_score_count
- D 0 - - - 0x030F70 0C:8F60: B0 91     .word _off009_91B0_1A_heart_count
- D 0 - - - 0x030F72 0C:8F62: A1 90     .word _off009_90A1_1B_pick_up_heart
- D 0 - - - 0x030F74 0C:8F64: 69 90     .word _off009_9069_1C_pick_up_weapon
- - - - - - 0x030F76 0C:8F66: 13 91     .word _off009_9113_1D   ; unused, index doesn't exist
- D 0 - - - 0x030F78 0C:8F68: 20 91     .word _off009_9120_1E   ; = 21
- D 0 - - - 0x030F7A 0C:8F6A: 28 91     .word _off009_9128_1F_Alucard_fireball
- D 0 - - - 0x030F7C 0C:8F6C: 64 90     .word _off009_9064_20
- D 0 - - - 0x030F7E 0C:8F6E: 18 91     .word _off009_9118_21   ; = 1E
- D 0 - - - 0x030F80 0C:8F70: A6 90     .word _off009_90A6_22
- D 0 - - - 0x030F82 0C:8F72: AB 90     .word _off009_90AB_23
- D 0 - - - 0x030F84 0C:8F74: 06 91     .word _off009_9106_24
- D 0 - - - 0x030F86 0C:8F76: 5F 90     .word _off009_905F_25
- D 0 - - - 0x030F88 0C:8F78: 84 91     .word _off009_9184_26
- D 0 - - - 0x030F8A 0C:8F7A: C5 90     .word _off009_90C5_27_kill_enemy
- D 0 - - - 0x030F8C 0C:8F7C: D5 90     .word _off009_90D5_28
- D 0 - - - 0x030F8E 0C:8F7E: B5 90     .word _off009_90B5_29_hit_enemy
- D 0 - - - 0x030F90 0C:8F80: DD 90     .word _off009_90DD_2A
- D 0 - - - 0x030F92 0C:8F82: CD 90     .word _off009_90CD_2B
- D 0 - - - 0x030F94 0C:8F84: 97 90     .word _off009_9097_2C_pick_up_meat
- D 0 - - - 0x030F96 0C:8F86: E5 90     .word _off009_90E5_2D
- D 0 - - - 0x030F98 0C:8F88: EA 90     .word _off009_90EA_2E_thunder
- D 0 - - - 0x030F9A 0C:8F8A: F4 90     .word _off009_90F4_2F
- D 0 - - - 0x030F9C 0C:8F8C: FC 90     .word _off009_90FC_30
- D 0 - - - 0x030F9E 0C:8F8E: 01 91     .word _off009_9101_31
- D 0 - - - 0x030FA0 0C:8F90: 57 91     .word _off009_9157_32
- D 0 - - - 0x030FA2 0C:8F92: BD 90     .word _off009_90BD_33_destroy_candle
- D 0 - - - 0x030FA4 0C:8F94: 76 90     .word _off009_9076_34_destroy_block
- D 0 - - - 0x030FA6 0C:8F96: 2D 91     .word _off009_912D_35
- D 0 - - - 0x030FA8 0C:8F98: 3D 91     .word _off009_913D_36_rotate_platform
- D 0 - - - 0x030FAA 0C:8F9A: 42 91     .word _off009_9142_37   ; = 39
- D 0 - - - 0x030FAC 0C:8F9C: 4A 91     .word _off009_914A_38
- D 0 - - - 0x030FAE 0C:8F9E: 5C 91     .word _off009_915C_39   ; = 37
- D 0 - - - 0x030FB0 0C:8FA0: 6C 91     .word _off009_916C_3A_earthshake
- D 0 - - - 0x030FB2 0C:8FA2: 7C 91     .word _off009_917C_3B
- D 0 - - - 0x030FB4 0C:8FA4: 0E 91     .word _off009_910E_3C_stopwatch_tick
- D 0 - - - 0x030FB6 0C:8FA6: 93 91     .word _off009_9193_3D
- D 0 - - - 0x030FB8 0C:8FA8: A8 91     .word _off009_91A8_3E
- D 0 - - - 0x030FBA 0C:8FAA: BA 91     .word _off009_91BA_3F
- D 0 - - - 0x030FBC 0C:8FAC: C2 91     .word _off009_91C2_40_wrong_psw
- D 0 - - - 0x030FBE 0C:8FAE: CF 91     .word _off009_91CF_41_boss_to_partner
- D 0 - - - 0x030FC0 0C:8FB0: D4 91     .word _off009_91D4_42
- D 0 - - - 0x030FC2 0C:8FB2: 9B 91     .word _off009_919B_43
- D 0 - - - 0x030FC4 0C:8FB4: E1 91     .word _off009_91E1_44
- D 0 - - - 0x030FC6 0C:8FB6: E9 91     .word _off009_91E9_45
- D 0 - - - 0x030FC8 0C:8FB8: A3 91     .word _off009_91A3_46
- D 0 - - - 0x030FCA 0C:8FBA: EE 91     .word _off009_91EE_47
- D 0 - - - 0x030FCC 0C:8FBC: D9 91     .word _off009_91D9_48_orb
- D 0 - - - 0x030FCE 0C:8FBE: EF 90     .word _off009_90EF_49_low_time
- D 0 - - - 0x030FD0 0C:8FC0: F6 91     .word _off009_91F6_4A_pick_up_cross
- D 0 - - - 0x030FD2 0C:8FC2: FB 91     .word _off009_91FB_4B_extra_life
- D 0 - - - 0x030FD4 0C:8FC4: 03 92     .word _off009_9203_4C_handshake
- D 0 - - - 0x030FD6 0C:8FC6: 08 92     .word _off009_9208_4D
; music (see con_music)
- D 0 - - - 0x030FD8 0C:8FC8: 0D 92     .word _off010_920D_4E_death
- D 0 - - - 0x030FDA 0C:8FCA: 1B 92     .word _off010_921B_4F
- D 0 - - - 0x030FDC 0C:8FCC: 29 92     .word _off010_9229_50
- D 0 - - - 0x030FDE 0C:8FCE: 37 92     .word _off010_9237_51
- D 0 - - - 0x030FE0 0C:8FD0: 45 92     .word _off010_9245_52
- D 0 - - - 0x030FE2 0C:8FD2: 53 92     .word _off010_9253_53
- D 0 - - - 0x030FE4 0C:8FD4: 61 92     .word _off010_9261_54   ; = 5A
- D 0 - - - 0x030FE6 0C:8FD6: 6F 92     .word _off010_926F_55
- D 0 - - - 0x030FE8 0C:8FD8: 7D 92     .word _off010_927D_56   ; = 59
- D 0 - - - 0x030FEA 0C:8FDA: 8B 92     .word _off010_928B_57
- D 0 - - - 0x030FEC 0C:8FDC: 99 92     .word _off010_9299_58
- D 0 - - - 0x030FEE 0C:8FDE: A7 92     .word _off010_92A7_59   ; = 56
- D 0 - - - 0x030FF0 0C:8FE0: B5 92     .word _off010_92B5_5A   ; = 54
- D 0 - - - 0x030FF2 0C:8FE2: C3 92     .word _off010_92C3_5B
- D 0 - - - 0x030FF4 0C:8FE4: D1 92     .word _off010_92D1_5C
- D 0 - - - 0x030FF6 0C:8FE6: DF 92     .word _off010_92DF_5D   ; = 6A
- D 0 - - - 0x030FF8 0C:8FE8: ED 92     .word _off010_92ED_5E
- D 0 - - - 0x030FFA 0C:8FEA: FB 92     .word _off010_92FB_5F
- D 0 - - - 0x030FFC 0C:8FEC: 09 93     .word _off010_9309_60
- D 0 - - - 0x030FFE 0C:8FEE: 17 93     .word _off010_9317_61
- D 0 - - - 0x031000 0C:8FF0: 25 93     .word _off010_9325_62_enter_name_psw
- D 0 - - - 0x031002 0C:8FF2: 33 93     .word _off010_9333_63_stage_complete
- D 0 - - - 0x031004 0C:8FF4: 41 93     .word _off010_9341_64
- D 0 - - - 0x031006 0C:8FF6: 4F 93     .word _off010_934F_65_game_over
- D 0 - - - 0x031008 0C:8FF8: 5D 93     .word _off010_935D_66_title_screen
- D 0 - - - 0x03100A 0C:8FFA: 6B 93     .word _off010_936B_67
- D 0 - - - 0x03100C 0C:8FFC: 79 93     .word _off010_9379_68
- D 0 - - - 0x03100E 0C:8FFE: 87 93     .word _off010_9387_69
- D 0 - - - 0x031010 0C:9000: 95 93     .word _off010_9395_6A   ; = 5D
- D 0 - - - 0x031012 0C:9002: A3 93     .word _off010_93A3_6B_dialog
- D 0 - - - 0x031014 0C:9004: B1 93     .word _off010_93B1_6C
; dmc, bzk garbage 0x03084B
- - - - - - 0x031016 0C:9006: BF 93     .word _off011_93BF_6D
- - - - - - 0x031018 0C:9008: C3 93     .word _off011_93C3_6E
- - - - - - 0x03101A 0C:900A: C7 93     .word _off011_93C7_6F
- - - - - - 0x03101C 0C:900C: CB 93     .word _off011_93CB_70
- - - - - - 0x03101E 0C:900E: CF 93     .word _off011_93CF_71
- - - - - - 0x031020 0C:9010: E7 93     .word _off011_93E7_72
- - - - - - 0x031022 0C:9012: D3 93     .word _off011_93D3_73
- - - - - - 0x031024 0C:9014: D7 93     .word _off011_93D7_74
- - - - - - 0x031026 0C:9016: DB 93     .word _off011_93DB_75
- - - - - - 0x031028 0C:9018: DF 93     .word _off011_93DF_76
- - - - - - 0x03102A 0C:901A: E3 93     .word _off011_93E3_77
- - - - - - 0x03102C 0C:901C: EB 93     .word _off011_93EB_78
- - - - - - 0x03102E 0C:901E: EF 93     .word _off011_93EF_79
- - - - - - 0x031030 0C:9020: F3 93     .word _off011_93F3_7A
- - - - - - 0x031032 0C:9022: F7 93     .word _off011_93F7_7B
- - - - - - 0x031034 0C:9024: FB 93     .word _off011_93FB_7C



_off009_9026_01:
- D 0 - I - 0x031036 0C:9026: 98        .byte con_prg_bank + $98   ; 
- D 0 - I - 0x031037 0C:9027: 00        .byte $00   ; channels counter
- D 0 - I - 0x031038 0C:9028: 06        .byte $06   ; 
- D 0 - I - 0x031039 0C:9029: FF 93     .word off_ch_06_93FF_01



_off009_902B_02:
- D 0 - I - 0x03103B 0C:902B: 98        .byte con_prg_bank + $98   ; 
- D 0 - I - 0x03103C 0C:902C: 00        .byte $00   ; channels counter
- D 0 - I - 0x03103D 0C:902D: 06        .byte $06   ; 
- D 0 - I - 0x03103E 0C:902E: 05 94     .word off_ch_06_9405_02



_off009_9030_03:
- D 0 - I - 0x031040 0C:9030: 98        .byte con_prg_bank + $98   ; 
- D 0 - I - 0x031041 0C:9031: 00        .byte $00   ; channels counter
- D 0 - I - 0x031042 0C:9032: 06        .byte $06   ; 
- D 0 - I - 0x031043 0C:9033: 0B 94     .word off_ch_06_940B_03



_off009_9035_04:
- - - - - - 0x031045 0C:9035: 98        .byte con_prg_bank + $98   ; 
- - - - - - 0x031046 0C:9036: 00        .byte $00   ; channels counter
- - - - - - 0x031047 0C:9037: 06        .byte $06   ; 
- - - - - - 0x031048 0C:9038: 18 94     .word off_ch_06_9418_04



_off009_903A_05:
- D 0 - I - 0x03104A 0C:903A: 98        .byte con_prg_bank + $98   ; 
- D 0 - I - 0x03104B 0C:903B: 00        .byte $00   ; channels counter
- D 0 - I - 0x03104C 0C:903C: 06        .byte $06   ; 
- D 0 - I - 0x03104D 0C:903D: 1F 94     .word off_ch_06_941F_05



_off009_903F_06:
- D 0 - I - 0x03104F 0C:903F: 98        .byte con_prg_bank + $98   ; 
- D 0 - I - 0x031050 0C:9040: 01        .byte $01   ; channels counter
- D 0 - I - 0x031051 0C:9041: 03        .byte $03   ; 
- D 0 - I - 0x031052 0C:9042: 29 94     .word off_ch_03_9429_06_FF
- D 0 - I - 0x031054 0C:9044: 06        .byte $06   ; 
- D 0 - I - 0x031055 0C:9045: 29 94     .word off_ch_06_9429_06_FF



_off009_9047_07:
- D 0 - I - 0x031057 0C:9047: 98        .byte con_prg_bank + $98   ; 
- D 0 - I - 0x031058 0C:9048: 01        .byte $01   ; channels counter
- D 0 - I - 0x031059 0C:9049: 03        .byte $03   ; 
- D 0 - I - 0x03105A 0C:904A: 40 94     .word off_ch_03_9440_07
- D 0 - I - 0x03105C 0C:904C: 06        .byte $06   ; 
- D 0 - I - 0x03105D 0C:904D: 97 94     .word off_ch_06_9497_07



_off009_904F_09_step:
- D 0 - I - 0x03105F 0C:904F: 98        .byte con_prg_bank + $98   ; 
- D 0 - I - 0x031060 0C:9050: 01        .byte $01   ; channels counter
- D 0 - I - 0x031061 0C:9051: 03        .byte $03   ; 
- D 0 - I - 0x031062 0C:9052: EB 94     .word off_ch_03_94EB_09_FF
- D 0 - I - 0x031064 0C:9054: 06        .byte $06   ; 
- D 0 - I - 0x031065 0C:9055: EC 94     .word off_ch_06_94EC_09



_off009_9057_0B_land:
- D 0 - I - 0x031067 0C:9057: 98        .byte con_prg_bank + $98   ; 
- D 0 - I - 0x031068 0C:9058: 01        .byte $01   ; channels counter
- D 0 - I - 0x031069 0C:9059: 03        .byte $03   ; 
- D 0 - I - 0x03106A 0C:905A: F5 94     .word off_ch_03_94F5_0B
- D 0 - I - 0x03106C 0C:905C: 06        .byte $06   ; 
- D 0 - I - 0x03106D 0C:905D: 04 95     .word off_ch_06_9504_0B



_off009_905F_25:
- D 0 - I - 0x03106F 0C:905F: 98        .byte con_prg_bank + $98   ; 
- D 0 - I - 0x031070 0C:9060: 00        .byte $00   ; channels counter
- D 0 - I - 0x031071 0C:9061: 06        .byte $06   ; 
- D 0 - I - 0x031072 0C:9062: 0E 9A     .word off_ch_06_9A0E_25



_off009_9064_20:
- D 0 - I - 0x031074 0C:9064: 98        .byte con_prg_bank + $98   ; 
- D 0 - I - 0x031075 0C:9065: 00        .byte $00   ; channels counter
- D 0 - I - 0x031076 0C:9066: 06        .byte $06   ; 
- D 0 - I - 0x031077 0C:9067: 14 9A     .word off_ch_06_9A14_20



_off009_9069_1C_pick_up_weapon:
- D 0 - I - 0x031079 0C:9069: 98        .byte con_prg_bank + $98   ; 
- D 0 - I - 0x03107A 0C:906A: 00        .byte $00   ; channels counter
- D 0 - I - 0x03107B 0C:906B: 03        .byte $03   ; 
- D 0 - I - 0x03107C 0C:906C: 18 95     .word off_ch_03_9518_1C



_off009_906E_0C_door:
- D 0 - I - 0x03107E 0C:906E: 98        .byte con_prg_bank + $98   ; 
- D 0 - I - 0x03107F 0C:906F: 01        .byte $01   ; channels counter
- D 0 - I - 0x031080 0C:9070: 03        .byte $03   ; 
- D 0 - I - 0x031081 0C:9071: 2A 95     .word off_ch_03_952A_0C
- D 0 - I - 0x031083 0C:9073: 06        .byte $06   ; 
- D 0 - I - 0x031084 0C:9074: 5D 95     .word off_ch_06_955D_0C



_off009_9076_34_destroy_block:
- D 0 - I - 0x031086 0C:9076: 98        .byte con_prg_bank + $98   ; 
- D 0 - I - 0x031087 0C:9077: 00        .byte $00   ; channels counter
- D 0 - I - 0x031088 0C:9078: 06        .byte $06   ; 
- D 0 - I - 0x031089 0C:9079: 75 95     .word off_ch_06_9575_34



_off009_907B_13_throw_axe:
- D 0 - I - 0x03108B 0C:907B: 98        .byte con_prg_bank + $98   ; 
- D 0 - I - 0x03108C 0C:907C: 00        .byte $00   ; channels counter
- D 0 - I - 0x03108D 0C:907D: 06        .byte $06   ; 
- D 0 - I - 0x03108E 0C:907E: BE 95     .word off_ch_06_95BE_13



_off009_9080_14_throw_knife:
- D 0 - I - 0x031090 0C:9080: 98        .byte con_prg_bank + $98   ; 
- D 0 - I - 0x031091 0C:9081: 00        .byte $00   ; channels counter
- D 0 - I - 0x031092 0C:9082: 06        .byte $06   ; 
- D 0 - I - 0x031093 0C:9083: C9 95     .word off_ch_06_95C9_14



_off009_9085_15:
- D 0 - I - 0x031095 0C:9085: 98        .byte con_prg_bank + $98   ; 
- D 0 - I - 0x031096 0C:9086: 00        .byte $00   ; channels counter
- D 0 - I - 0x031097 0C:9087: 06        .byte $06   ; 
- D 0 - I - 0x031098 0C:9088: D3 95     .word off_ch_06_95D3_15



_off009_908A_16:
- D 0 - I - 0x03109A 0C:908A: 98        .byte con_prg_bank + $98   ; 
- D 0 - I - 0x03109B 0C:908B: 01        .byte $01   ; channels counter
- D 0 - I - 0x03109C 0C:908C: 03        .byte $03   ; 
- D 0 - I - 0x03109D 0C:908D: E0 95     .word off_ch_03_95E0_16
- D 0 - I - 0x03109F 0C:908F: 06        .byte $06   ; 
- D 0 - I - 0x0310A0 0C:9090: 00 96     .word off_ch_06_9600_16



_off009_9092_17:
- D 0 - I - 0x0310A2 0C:9092: 98        .byte con_prg_bank + $98   ; 
- D 0 - I - 0x0310A3 0C:9093: 00        .byte $00   ; channels counter
- D 0 - I - 0x0310A4 0C:9094: 03        .byte $03   ; 
- D 0 - I - 0x0310A5 0C:9095: 18 96     .word off_ch_03_9618_17



_off009_9097_2C_pick_up_meat:
- D 0 - I - 0x0310A7 0C:9097: 98        .byte con_prg_bank + $98   ; 
- D 0 - I - 0x0310A8 0C:9098: 00        .byte $00   ; channels counter
- D 0 - I - 0x0310A9 0C:9099: 03        .byte $03   ; 
- D 0 - I - 0x0310AA 0C:909A: 70 96     .word off_ch_03_9670_2C



_off009_909C_18_pick_up_money:
- D 0 - I - 0x0310AC 0C:909C: 98        .byte con_prg_bank + $98   ; 
- D 0 - I - 0x0310AD 0C:909D: 00        .byte $00   ; channels counter
- D 0 - I - 0x0310AE 0C:909E: 03        .byte $03   ; 
- D 0 - I - 0x0310AF 0C:909F: 93 96     .word off_ch_03_9693_18



_off009_90A1_1B_pick_up_heart:
- D 0 - I - 0x0310B1 0C:90A1: 98        .byte con_prg_bank + $98   ; 
- D 0 - I - 0x0310B2 0C:90A2: 00        .byte $00   ; channels counter
- D 0 - I - 0x0310B3 0C:90A3: 03        .byte $03   ; 
- D 0 - I - 0x0310B4 0C:90A4: B5 96     .word off_ch_03_96B5_1B



_off009_90A6_22:
- D 0 - I - 0x0310B6 0C:90A6: 98        .byte con_prg_bank + $98   ; 
- D 0 - I - 0x0310B7 0C:90A7: 00        .byte $00   ; channels counter
- D 0 - I - 0x0310B8 0C:90A8: 06        .byte $06   ; 
- D 0 - I - 0x0310B9 0C:90A9: D7 97     .word off_ch_06_97D7_22



_off009_90AB_23:
- D 0 - I - 0x0310BB 0C:90AB: 98        .byte con_prg_bank + $98   ; 
- D 0 - I - 0x0310BC 0C:90AC: 00        .byte $00   ; channels counter
- D 0 - I - 0x0310BD 0C:90AD: 06        .byte $06   ; 
- D 0 - I - 0x0310BE 0C:90AE: EB 97     .word off_ch_06_97EB_23



_off009_90B0_0A:
- D 0 - I - 0x0310C0 0C:90B0: 98        .byte con_prg_bank + $98   ; 
- D 0 - I - 0x0310C1 0C:90B1: 00        .byte $00   ; channels counter
- D 0 - I - 0x0310C2 0C:90B2: 03        .byte $03   ; 
- D 0 - I - 0x0310C3 0C:90B3: 2A 94     .word off_ch_03_942A_0A



_off009_90B5_29_hit_enemy:
- D 0 - I - 0x0310C5 0C:90B5: 98        .byte con_prg_bank + $98   ; 
- D 0 - I - 0x0310C6 0C:90B6: 01        .byte $01   ; channels counter
- D 0 - I - 0x0310C7 0C:90B7: 03        .byte $03   ; 
- D 0 - I - 0x0310C8 0C:90B8: 2B 99     .word off_ch_03_992B_29
- D 0 - I - 0x0310CA 0C:90BA: 06        .byte $06   ; 
- D 0 - I - 0x0310CB 0C:90BB: 37 99     .word off_ch_06_9937_29



_off009_90BD_33_destroy_candle:
- D 0 - I - 0x0310CD 0C:90BD: 98        .byte con_prg_bank + $98   ; 
- D 0 - I - 0x0310CE 0C:90BE: 01        .byte $01   ; channels counter
- D 0 - I - 0x0310CF 0C:90BF: 03        .byte $03   ; 
- D 0 - I - 0x0310D0 0C:90C0: 92 95     .word off_ch_03_9592_33_FF
- D 0 - I - 0x0310D2 0C:90C2: 06        .byte $06   ; 
- D 0 - I - 0x0310D3 0C:90C3: 93 95     .word off_ch_06_9593_33



_off009_90C5_27_kill_enemy:
- D 0 - I - 0x0310D5 0C:90C5: 98        .byte con_prg_bank + $98   ; 
- D 0 - I - 0x0310D6 0C:90C6: 01        .byte $01   ; channels counter
- D 0 - I - 0x0310D7 0C:90C7: 03        .byte $03   ; 
- D 0 - I - 0x0310D8 0C:90C8: C8 96     .word off_ch_03_96C8_27
- D 0 - I - 0x0310DA 0C:90CA: 06        .byte $06   ; 
- D 0 - I - 0x0310DB 0C:90CB: E3 96     .word off_ch_06_96E3_27



_off009_90CD_2B:
- D 0 - I - 0x0310DD 0C:90CD: 98        .byte con_prg_bank + $98   ; 
- D 0 - I - 0x0310DE 0C:90CE: 01        .byte $01   ; channels counter
- D 0 - I - 0x0310DF 0C:90CF: 03        .byte $03   ; 
- D 0 - I - 0x0310E0 0C:90D0: F5 96     .word off_ch_03_96F5_2B
- D 0 - I - 0x0310E2 0C:90D2: 06        .byte $06   ; 
- D 0 - I - 0x0310E3 0C:90D3: 04 97     .word off_ch_06_9704_2B



_off009_90D5_28:
- D 0 - I - 0x0310E5 0C:90D5: 98        .byte con_prg_bank + $98   ; 
- D 0 - I - 0x0310E6 0C:90D6: 01        .byte $01   ; channels counter
- D 0 - I - 0x0310E7 0C:90D7: 03        .byte $03   ; 
- D 0 - I - 0x0310E8 0C:90D8: 0D 97     .word off_ch_03_970D_28
- D 0 - I - 0x0310EA 0C:90DA: 06        .byte $06   ; 
- D 0 - I - 0x0310EB 0C:90DB: 2E 97     .word off_ch_06_972E_28



_off009_90DD_2A:
- D 0 - I - 0x0310ED 0C:90DD: 98        .byte con_prg_bank + $98   ; 
- D 0 - I - 0x0310EE 0C:90DE: 01        .byte $01   ; channels counter
- D 0 - I - 0x0310EF 0C:90DF: 03        .byte $03   ; 
- D 0 - I - 0x0310F0 0C:90E0: 40 99     .word off_ch_03_9940_2A
- D 0 - I - 0x0310F2 0C:90E2: 06        .byte $06   ; 
- D 0 - I - 0x0310F3 0C:90E3: 73 99     .word off_ch_06_9973_2A



_off009_90E5_2D:
- D 0 - I - 0x0310F5 0C:90E5: 98        .byte con_prg_bank + $98   ; 
- D 0 - I - 0x0310F6 0C:90E6: 00        .byte $00   ; channels counter
- D 0 - I - 0x0310F7 0C:90E7: 06        .byte $06   ; 
- D 0 - I - 0x0310F8 0C:90E8: 36 97     .word off_ch_06_9736_2D



_off009_90EA_2E_thunder:
- D 0 - I - 0x0310FA 0C:90EA: 98        .byte con_prg_bank + $98   ; 
- D 0 - I - 0x0310FB 0C:90EB: 00        .byte $00   ; channels counter
- D 0 - I - 0x0310FC 0C:90EC: 06        .byte $06   ; 
- D 0 - I - 0x0310FD 0C:90ED: 5F 97     .word off_ch_06_975F_2E



_off009_90EF_49_low_time:
- D 0 - I - 0x0310FF 0C:90EF: 98        .byte con_prg_bank + $98   ; 
- D 0 - I - 0x031100 0C:90F0: 00        .byte $00   ; channels counter
- D 0 - I - 0x031101 0C:90F1: 03        .byte $03   ; 
- D 0 - I - 0x031102 0C:90F2: 78 97     .word off_ch_03_9778_49



_off009_90F4_2F:
- D 0 - I - 0x031104 0C:90F4: 98        .byte con_prg_bank + $98   ; 
- D 0 - I - 0x031105 0C:90F5: 01        .byte $01   ; channels counter
- D 0 - I - 0x031106 0C:90F6: 03        .byte $03   ; 
- D 0 - I - 0x031107 0C:90F7: 98 97     .word off_ch_03_9798_2F
- D 0 - I - 0x031109 0C:90F9: 06        .byte $06   ; 
- D 0 - I - 0x03110A 0C:90FA: C5 97     .word off_ch_06_97C5_2F



_off009_90FC_30:
- D 0 - I - 0x03110C 0C:90FC: 98        .byte con_prg_bank + $98   ; 
- D 0 - I - 0x03110D 0C:90FD: 00        .byte $00   ; channels counter
- D 0 - I - 0x03110E 0C:90FE: 06        .byte $06   ; 
- D 0 - I - 0x03110F 0C:90FF: FE 97     .word off_ch_06_97FE_30



_off009_9101_31:
- D 0 - I - 0x031111 0C:9101: 98        .byte con_prg_bank + $98   ; 
- D 0 - I - 0x031112 0C:9102: 00        .byte $00   ; channels counter
- D 0 - I - 0x031113 0C:9103: 06        .byte $06   ; 
- D 0 - I - 0x031114 0C:9104: 12 98     .word off_ch_06_9812_31



_off009_9106_24:
- D 0 - I - 0x031116 0C:9106: 98        .byte con_prg_bank + $98   ; 
- D 0 - I - 0x031117 0C:9107: 01        .byte $01   ; channels counter
- D 0 - I - 0x031118 0C:9108: 03        .byte $03   ; 
- D 0 - I - 0x031119 0C:9109: 21 98     .word off_ch_03_9821_24
- D 0 - I - 0x03111B 0C:910B: 06        .byte $06   ; 
- D 0 - I - 0x03111C 0C:910C: 53 98     .word off_ch_06_9853_24



_off009_910E_3C_stopwatch_tick:
- D 0 - I - 0x03111E 0C:910E: 98        .byte con_prg_bank + $98   ; 
- D 0 - I - 0x03111F 0C:910F: 00        .byte $00   ; channels counter
- D 0 - I - 0x031120 0C:9110: 03        .byte $03   ; 
- D 0 - I - 0x031121 0C:9111: 5A 98     .word off_ch_03_985A_3C



_off009_9113_1D:
; bzk garbage
- - - - - - 0x031123 0C:9113: 98        .byte con_prg_bank + $98   ; 
- - - - - - 0x031124 0C:9114: 00        .byte $00   ; channels counter
- - - - - - 0x031125 0C:9115: 06        .byte $06   ; 
- - - - - - 0x031126 0C:9116: 6E 98     .word off_ch_06_986E_1D



_off009_9118_21:
- D 0 - I - 0x031128 0C:9118: 98        .byte con_prg_bank + $98   ; 
- D 0 - I - 0x031129 0C:9119: 01        .byte $01   ; channels counter
- D 0 - I - 0x03112A 0C:911A: 03        .byte $03   ; 
- D 0 - I - 0x03112B 0C:911B: 8B 98     .word off_ch_03_988B_21_FF
- D 0 - I - 0x03112D 0C:911D: 06        .byte $06   ; 
- D 0 - I - 0x03112E 0C:911E: 8C 98     .word off_ch_06_988C_21



_off009_9120_1E:
- D 0 - I - 0x031130 0C:9120: 98        .byte con_prg_bank + $98   ; 
- D 0 - I - 0x031131 0C:9121: 01        .byte $01   ; channels counter
- D 0 - I - 0x031132 0C:9122: 03        .byte $03   ; 
- D 0 - I - 0x031133 0C:9123: 8B 98     .word off_ch_03_988B_1E_FF
- D 0 - I - 0x031135 0C:9125: 06        .byte $06   ; 
- D 0 - I - 0x031136 0C:9126: 8C 98     .word off_ch_06_988C_1E



_off009_9128_1F_Alucard_fireball:
- D 0 - I - 0x031138 0C:9128: 98        .byte con_prg_bank + $98   ; 
- D 0 - I - 0x031139 0C:9129: 00        .byte $00   ; channels counter
- D 0 - I - 0x03113A 0C:912A: 06        .byte $06   ; 
- D 0 - I - 0x03113B 0C:912B: B8 98     .word off_ch_06_98B8_1F



_off009_912D_35:
- D 0 - I - 0x03113D 0C:912D: 98        .byte con_prg_bank + $98   ; 
- D 0 - I - 0x03113E 0C:912E: 01        .byte $01   ; channels counter
- D 0 - I - 0x03113F 0C:912F: 03        .byte $03   ; 
- D 0 - I - 0x031140 0C:9130: 10 9D     .word off_ch_03_9D10_35
- D 0 - I - 0x031142 0C:9132: 06        .byte $06   ; 
- D 0 - I - 0x031143 0C:9133: 8C 98     .word off_ch_06_988C_35



_off009_9135_12:
- D 0 - I - 0x031145 0C:9135: 98        .byte con_prg_bank + $98   ; 
- D 0 - I - 0x031146 0C:9136: 01        .byte $01   ; channels counter
- D 0 - I - 0x031147 0C:9137: 03        .byte $03   ; 
- D 0 - I - 0x031148 0C:9138: C3 98     .word off_ch_03_98C3_12
- D 0 - I - 0x03114A 0C:913A: 06        .byte $06   ; 
- D 0 - I - 0x03114B 0C:913B: CD 98     .word off_ch_06_98CD_12



_off009_913D_36_rotate_platform:
- D 0 - I - 0x03114D 0C:913D: 98        .byte con_prg_bank + $98   ; 
- D 0 - I - 0x03114E 0C:913E: 00        .byte $00   ; channels counter
- D 0 - I - 0x03114F 0C:913F: 03        .byte $03   ; 
- D 0 - I - 0x031150 0C:9140: E1 98     .word off_ch_03_98E1_36



_off009_9142_37:
- D 0 - I - 0x031152 0C:9142: 98        .byte con_prg_bank + $98   ; 
- D 0 - I - 0x031153 0C:9143: 01        .byte $01   ; channels counter
- D 0 - I - 0x031154 0C:9144: 03        .byte $03   ; 
- D 0 - I - 0x031155 0C:9145: 88 99     .word off_ch_03_9988_37
- D 0 - I - 0x031157 0C:9147: 06        .byte $06   ; 
- D 0 - I - 0x031158 0C:9148: BB 99     .word off_ch_06_99BB_37



_off009_914A_38:
- D 0 - I - 0x03115A 0C:914A: 98        .byte con_prg_bank + $98   ; 
- D 0 - I - 0x03115B 0C:914B: 01        .byte $01   ; channels counter
- D 0 - I - 0x03115C 0C:914C: 03        .byte $03   ; 
- D 0 - I - 0x03115D 0C:914D: D0 99     .word off_ch_03_99D0_38_FF
- D 0 - I - 0x03115F 0C:914F: 06        .byte $06   ; 
- D 0 - I - 0x031160 0C:9150: D1 99     .word off_ch_06_99D1_38



_off009_9152_08:
- D 0 - I - 0x031162 0C:9152: 98        .byte con_prg_bank + $98   ; 
- D 0 - I - 0x031163 0C:9153: 00        .byte $00   ; channels counter
- D 0 - I - 0x031164 0C:9154: 03        .byte $03   ; 
- D 0 - I - 0x031165 0C:9155: EC 99     .word off_ch_03_99EC_08



_off009_9157_32:
- D 0 - I - 0x031167 0C:9157: 98        .byte con_prg_bank + $98   ; 
- D 0 - I - 0x031168 0C:9158: 00        .byte $00   ; channels counter
- D 0 - I - 0x031169 0C:9159: 06        .byte $06   ; 
- D 0 - I - 0x03116A 0C:915A: 02 9A     .word off_ch_06_9A02_32



_off009_915C_39:
- D 0 - I - 0x03116C 0C:915C: 98        .byte con_prg_bank + $98   ; 
- D 0 - I - 0x03116D 0C:915D: 01        .byte $01   ; channels counter
- D 0 - I - 0x03116E 0C:915E: 03        .byte $03   ; 
- D 0 - I - 0x03116F 0C:915F: 88 99     .word off_ch_03_9988_39
- D 0 - I - 0x031171 0C:9161: 06        .byte $06   ; 
- D 0 - I - 0x031172 0C:9162: BB 99     .word off_ch_06_99BB_39



_off009_9164_0F:
- D 0 - I - 0x031174 0C:9164: 98        .byte con_prg_bank + $98   ; 
- D 0 - I - 0x031175 0C:9165: 01        .byte $01   ; channels counter
- D 0 - I - 0x031176 0C:9166: 03        .byte $03   ; 
- D 0 - I - 0x031177 0C:9167: 1A 9A     .word off_ch_03_9A1A_0F
- D 0 - I - 0x031179 0C:9169: 06        .byte $06   ; 
- D 0 - I - 0x03117A 0C:916A: 2E 9A     .word off_ch_06_9A2E_0F_FF



_off009_916C_3A_earthshake:
- D 0 - I - 0x03117C 0C:916C: 98        .byte con_prg_bank + $98   ; 
- D 0 - I - 0x03117D 0C:916D: 01        .byte $01   ; channels counter
- D 0 - I - 0x03117E 0C:916E: 03        .byte $03   ; 
- D 0 - I - 0x03117F 0C:916F: 2F 9A     .word off_ch_03_9A2F_3A
- D 0 - I - 0x031181 0C:9171: 06        .byte $06   ; 
- D 0 - I - 0x031182 0C:9172: 3B 9A     .word off_ch_06_9A3B_3A



_off009_9174_11:
- D 0 - I - 0x031184 0C:9174: 98        .byte con_prg_bank + $98   ; 
- D 0 - I - 0x031185 0C:9175: 01        .byte $01   ; channels counter
- D 0 - I - 0x031186 0C:9176: 03        .byte $03   ; 
- D 0 - I - 0x031187 0C:9177: 0E 99     .word off_ch_03_990E_11
- D 0 - I - 0x031189 0C:9179: 06        .byte $06   ; 
- D 0 - I - 0x03118A 0C:917A: 18 99     .word off_ch_06_9918_11



_off009_917C_3B:
- D 0 - I - 0x03118C 0C:917C: 98        .byte con_prg_bank + $98   ; 
- D 0 - I - 0x03118D 0C:917D: 01        .byte $01   ; channels counter
- D 0 - I - 0x03118E 0C:917E: 03        .byte $03   ; 
- D 0 - I - 0x03118F 0C:917F: 4D 9A     .word off_ch_03_9A4D_3B
- D 0 - I - 0x031191 0C:9181: 06        .byte $06   ; 
- D 0 - I - 0x031192 0C:9182: 59 9A     .word off_ch_06_9A59_3B



_off009_9184_26:
- D 0 - I - 0x031194 0C:9184: 98        .byte con_prg_bank + $98   ; 
- D 0 - I - 0x031195 0C:9185: 00        .byte $00   ; channels counter
- D 0 - I - 0x031196 0C:9186: 06        .byte $06   ; 
- D 0 - I - 0x031197 0C:9187: 6B 9A     .word off_ch_06_9A6B_26



_off009_9189_0D:
- D 0 - I - 0x031199 0C:9189: 98        .byte con_prg_bank + $98   ; 
- D 0 - I - 0x03119A 0C:918A: 00        .byte $00   ; channels counter
- D 0 - I - 0x03119B 0C:918B: 03        .byte $03   ; 
- D 0 - I - 0x03119C 0C:918C: 93 9A     .word off_ch_03_9A93_0D



_off009_918E_0E:
- D 0 - I - 0x03119E 0C:918E: 98        .byte con_prg_bank + $98   ; 
- D 0 - I - 0x03119F 0C:918F: 00        .byte $00   ; channels counter
- D 0 - I - 0x0311A0 0C:9190: 06        .byte $06   ; 
- D 0 - I - 0x0311A1 0C:9191: A4 9A     .word off_ch_06_9AA4_0E



_off009_9193_3D:
- D 0 - I - 0x0311A3 0C:9193: 98        .byte con_prg_bank + $98   ; 
- D 0 - I - 0x0311A4 0C:9194: 01        .byte $01   ; channels counter
- D 0 - I - 0x0311A5 0C:9195: 03        .byte $03   ; 
- D 0 - I - 0x0311A6 0C:9196: CA 9A     .word off_ch_03_9ACA_3D
- D 0 - I - 0x0311A8 0C:9198: 06        .byte $06   ; 
- D 0 - I - 0x0311A9 0C:9199: DE 9A     .word off_ch_06_9ADE_3D



_off009_919B_43:
- D 0 - I - 0x0311AB 0C:919B: 98        .byte con_prg_bank + $98   ; 
- D 0 - I - 0x0311AC 0C:919C: 01        .byte $01   ; channels counter
- D 0 - I - 0x0311AD 0C:919D: 03        .byte $03   ; 
- D 0 - I - 0x0311AE 0C:919E: EC 9B     .word off_ch_03_9BEC_43
- D 0 - I - 0x0311B0 0C:91A0: 06        .byte $06   ; 
- D 0 - I - 0x0311B1 0C:91A1: FF 9B     .word off_ch_06_9BFF_43



_off009_91A3_46:
- D 0 - I - 0x0311B3 0C:91A3: 98        .byte con_prg_bank + $98   ; 
- D 0 - I - 0x0311B4 0C:91A4: 00        .byte $00   ; channels counter
- D 0 - I - 0x0311B5 0C:91A5: 03        .byte $03   ; 
- D 0 - I - 0x0311B6 0C:91A6: E4 9A     .word off_ch_03_9AE4_46



_off009_91A8_3E:
- D 0 - I - 0x0311B8 0C:91A8: 98        .byte con_prg_bank + $98   ; 
- D 0 - I - 0x0311B9 0C:91A9: 01        .byte $01   ; channels counter
- D 0 - I - 0x0311BA 0C:91AA: 03        .byte $03   ; 
- D 0 - I - 0x0311BB 0C:91AB: 7E 9C     .word off_ch_03_9C7E_3E_FF
- D 0 - I - 0x0311BD 0C:91AD: 06        .byte $06   ; 
- D 0 - I - 0x0311BE 0C:91AE: 7F 9C     .word off_ch_06_9C7F_3E



_off009_91B0_1A_heart_count:
- D 0 - I - 0x0311C0 0C:91B0: 98        .byte con_prg_bank + $98   ; 
- D 0 - I - 0x0311C1 0C:91B1: 00        .byte $00   ; channels counter
- D 0 - I - 0x0311C2 0C:91B2: 03        .byte $03   ; 
- D 0 - I - 0x0311C3 0C:91B3: 98 9C     .word off_ch_03_9C98_1A



_off009_91B5_19_score_count:
- D 0 - I - 0x0311C5 0C:91B5: 98        .byte con_prg_bank + $98   ; 
- D 0 - I - 0x0311C6 0C:91B6: 00        .byte $00   ; channels counter
- D 0 - I - 0x0311C7 0C:91B7: 03        .byte $03   ; 
- D 0 - I - 0x0311C8 0C:91B8: BE 9C     .word off_ch_03_9CBE_19



_off009_91BA_3F:
- D 0 - I - 0x0311CA 0C:91BA: 98        .byte con_prg_bank + $98   ; 
- D 0 - I - 0x0311CB 0C:91BB: 01        .byte $01   ; channels counter
- D 0 - I - 0x0311CC 0C:91BC: 03        .byte $03   ; 
- D 0 - I - 0x0311CD 0C:91BD: E6 9C     .word off_ch_03_9CE6_3F_FF
- D 0 - I - 0x0311CF 0C:91BF: 06        .byte $06   ; 
- D 0 - I - 0x0311D0 0C:91C0: E7 9C     .word off_ch_06_9CE7_3F



_off009_91C2_40_wrong_psw:
- D 0 - I - 0x0311D2 0C:91C2: 98        .byte con_prg_bank + $98   ; 
- D 0 - I - 0x0311D3 0C:91C3: 00        .byte $00   ; channels counter
- D 0 - I - 0x0311D4 0C:91C4: 03        .byte $03   ; 
- D 0 - I - 0x0311D5 0C:91C5: 5C 9B     .word off_ch_03_9B5C_40



_off009_91C7_10:
- D 0 - I - 0x0311D7 0C:91C7: 98        .byte con_prg_bank + $98   ; 
- D 0 - I - 0x0311D8 0C:91C8: 01        .byte $01   ; channels counter
- D 0 - I - 0x0311D9 0C:91C9: 03        .byte $03   ; 
- D 0 - I - 0x0311DA 0C:91CA: 74 9B     .word off_ch_03_9B74_10
- D 0 - I - 0x0311DC 0C:91CC: 06        .byte $06   ; 
- D 0 - I - 0x0311DD 0C:91CD: 99 9B     .word off_ch_06_9B99_10_FF



_off009_91CF_41_boss_to_partner:
- D 0 - I - 0x0311DF 0C:91CF: 98        .byte con_prg_bank + $98   ; 
- D 0 - I - 0x0311E0 0C:91D0: 00        .byte $00   ; channels counter
- D 0 - I - 0x0311E1 0C:91D1: 03        .byte $03   ; 
- D 0 - I - 0x0311E2 0C:91D2: 9A 9B     .word off_ch_03_9B9A_41



_off009_91D4_42:
- D 0 - I - 0x0311E4 0C:91D4: 98        .byte con_prg_bank + $98   ; 
- D 0 - I - 0x0311E5 0C:91D5: 00        .byte $00   ; channels counter
- D 0 - I - 0x0311E6 0C:91D6: 06        .byte $06   ; 
- D 0 - I - 0x0311E7 0C:91D7: CF 9B     .word off_ch_06_9BCF_42



_off009_91D9_48_orb:
- D 0 - I - 0x0311E9 0C:91D9: 98        .byte con_prg_bank + $98   ; 
- D 0 - I - 0x0311EA 0C:91DA: 01        .byte $01   ; channels counter
- D 0 - I - 0x0311EB 0C:91DB: 03        .byte $03   ; 
- D 0 - I - 0x0311EC 0C:91DC: 18 9C     .word off_ch_03_9C18_48
- D 0 - I - 0x0311EE 0C:91DE: 06        .byte $06   ; 
- D 0 - I - 0x0311EF 0C:91DF: 5B 9C     .word off_ch_06_9C5B_48



_off009_91E1_44:
- D 0 - I - 0x0311F1 0C:91E1: 98        .byte con_prg_bank + $98   ; 
- D 0 - I - 0x0311F2 0C:91E2: 01        .byte $01   ; channels counter
- D 0 - I - 0x0311F3 0C:91E3: 03        .byte $03   ; 
- D 0 - I - 0x0311F4 0C:91E4: 3E 9D     .word off_ch_03_9D3E_44
- D 0 - I - 0x0311F6 0C:91E6: 06        .byte $06   ; 
- D 0 - I - 0x0311F7 0C:91E7: 59 9D     .word off_ch_06_9D59_44



_off009_91E9_45:
- D 0 - I - 0x0311F9 0C:91E9: 98        .byte con_prg_bank + $98   ; 
- D 0 - I - 0x0311FA 0C:91EA: 00        .byte $00   ; channels counter
- D 0 - I - 0x0311FB 0C:91EB: 03        .byte $03   ; 
- D 0 - I - 0x0311FC 0C:91EC: 6A 9D     .word off_ch_03_9D6A_45



_off009_91EE_47:
- D 0 - I - 0x0311FE 0C:91EE: 98        .byte con_prg_bank + $98   ; 
- D 0 - I - 0x0311FF 0C:91EF: 01        .byte $01   ; channels counter
- D 0 - I - 0x031200 0C:91F0: 03        .byte $03   ; 
- D 0 - I - 0x031201 0C:91F1: 87 9D     .word off_ch_03_9D87_47
- D 0 - I - 0x031203 0C:91F3: 06        .byte $06   ; 
- D 0 - I - 0x031204 0C:91F4: AC 9D     .word off_ch_06_9DAC_47



_off009_91F6_4A_pick_up_cross:
- D 0 - I - 0x031206 0C:91F6: 98        .byte con_prg_bank + $98   ; 
- D 0 - I - 0x031207 0C:91F7: 00        .byte $00   ; channels counter
- D 0 - I - 0x031208 0C:91F8: 03        .byte $03   ; 
- D 0 - I - 0x031209 0C:91F9: 46 96     .word off_ch_03_9646_4A



_off009_91FB_4B_extra_life:
- D 0 - I - 0x03120B 0C:91FB: 98        .byte con_prg_bank + $98   ; 
- D 0 - I - 0x03120C 0C:91FC: 01        .byte $01   ; channels counter
- D 0 - I - 0x03120D 0C:91FD: 03        .byte $03   ; 
- D 0 - I - 0x03120E 0C:91FE: A5 95     .word off_ch_03_95A5_4B
- D 0 - I - 0x031210 0C:9200: 06        .byte $06   ; 
- D 0 - I - 0x031211 0C:9201: BD 95     .word off_ch_06_95BD_4B_FF



_off009_9203_4C_handshake:
- D 0 - I - 0x031213 0C:9203: 98        .byte con_prg_bank + $98   ; 
- D 0 - I - 0x031214 0C:9204: 00        .byte $00   ; channels counter
- D 0 - I - 0x031215 0C:9205: 03        .byte $03   ; 
- D 0 - I - 0x031216 0C:9206: C4 9D     .word off_ch_03_9DC4_4C



_off009_9208_4D:
- D 0 - I - 0x031218 0C:9208: 98        .byte con_prg_bank + $98   ; 
- D 0 - I - 0x031219 0C:9209: 00        .byte $00   ; channels counter
- D 0 - I - 0x03121A 0C:920A: 03        .byte $03   ; 
- D 0 - I - 0x03121B 0C:920B: 08 9E     .word off_ch_03_9E08_4D



_off010_920D_4E_death:
- D 0 - I - 0x03121D 0C:920D: 8A        .byte con_prg_bank + $8A   ; 
- D 0 - I - 0x03121E 0C:920E: 03        .byte $03   ; channels counter
- D 0 - I - 0x03121F 0C:920F: 00        .byte $00   ; 
- D 0 - I - 0x031220 0C:9210: 5E 87     .word off_ch_00_0x01476E_4E
- D 0 - I - 0x031222 0C:9212: 01        .byte $01   ; 
- D 0 - I - 0x031223 0C:9213: 76 87     .word off_ch_01_0x014786_4E
- D 0 - I - 0x031225 0C:9215: 02        .byte $02   ; 
- D 0 - I - 0x031226 0C:9216: 8D 87     .word off_ch_02_0x01479D_4E
- D 0 - I - 0x031228 0C:9218: 05        .byte $05   ; 
- D 0 - I - 0x031229 0C:9219: 9E 87     .word off_ch_05_0x0147AE_4E



_off010_921B_4F:
- D 0 - I - 0x03122B 0C:921B: 8A        .byte con_prg_bank + $8A   ; 
- D 0 - I - 0x03122C 0C:921C: 03        .byte $03   ; channels counter
- D 0 - I - 0x03122D 0C:921D: 00        .byte $00   ; 
- D 0 - I - 0x03122E 0C:921E: AC 87     .word off_ch_00_0x0147BC_4F
- D 0 - I - 0x031230 0C:9220: 01        .byte $01   ; 
- D 0 - I - 0x031231 0C:9221: 7F 8A     .word off_ch_01_0x014A8F_4F
- D 0 - I - 0x031233 0C:9223: 02        .byte $02   ; 
- D 0 - I - 0x031234 0C:9224: 75 8C     .word off_ch_02_0x014C85_4F
- D 0 - I - 0x031236 0C:9226: 05        .byte $05   ; 
- D 0 - I - 0x031237 0C:9227: 43 8E     .word off_ch_05_0x014E53_4F



_off010_9229_50:
- D 0 - I - 0x031239 0C:9229: 8A        .byte con_prg_bank + $8A   ; 
- D 0 - I - 0x03123A 0C:922A: 03        .byte $03   ; channels counter
- D 0 - I - 0x03123B 0C:922B: 00        .byte $00   ; 
- D 0 - I - 0x03123C 0C:922C: BE 8F     .word off_ch_00_0x014FCE_50
- D 0 - I - 0x03123E 0C:922E: 01        .byte $01   ; 
- D 0 - I - 0x03123F 0C:922F: 84 91     .word off_ch_01_0x015194_50
- D 0 - I - 0x031241 0C:9231: 02        .byte $02   ; 
- D 0 - I - 0x031242 0C:9232: 1C 93     .word off_ch_02_0x01532C_50
- D 0 - I - 0x031244 0C:9234: 05        .byte $05   ; 
- D 0 - I - 0x031245 0C:9235: A4 94     .word off_ch_05_0x0154B4_50



_off010_9237_51:
- D 0 - I - 0x031247 0C:9237: 8A        .byte con_prg_bank + $8A   ; 
- D 0 - I - 0x031248 0C:9238: 03        .byte $03   ; channels counter
- D 0 - I - 0x031249 0C:9239: 00        .byte $00   ; 
- D 0 - I - 0x03124A 0C:923A: 76 95     .word off_ch_00_0x015586_51
- D 0 - I - 0x03124C 0C:923C: 01        .byte $01   ; 
- D 0 - I - 0x03124D 0C:923D: FD 96     .word off_ch_01_0x01570D_51
- D 0 - I - 0x03124F 0C:923F: 02        .byte $02   ; 
- D 0 - I - 0x031250 0C:9240: 68 98     .word off_ch_02_0x015878_51
- D 0 - I - 0x031252 0C:9242: 05        .byte $05   ; 
- D 0 - I - 0x031253 0C:9243: 6D 99     .word off_ch_05_0x01597D_51



_off010_9245_52:
- D 0 - I - 0x031255 0C:9245: 8A        .byte con_prg_bank + $8A   ; 
- D 0 - I - 0x031256 0C:9246: 03        .byte $03   ; channels counter
- D 0 - I - 0x031257 0C:9247: 00        .byte $00   ; 
- D 0 - I - 0x031258 0C:9248: 03 9A     .word off_ch_00_0x015A13_52
- D 0 - I - 0x03125A 0C:924A: 01        .byte $01   ; 
- D 0 - I - 0x03125B 0C:924B: 5B 9B     .word off_ch_01_0x015B6B_52
- D 0 - I - 0x03125D 0C:924D: 02        .byte $02   ; 
- D 0 - I - 0x03125E 0C:924E: CD 9C     .word off_ch_02_0x015CDD_52
- D 0 - I - 0x031260 0C:9250: 05        .byte $05   ; 
- D 0 - I - 0x031261 0C:9251: 01 9E     .word off_ch_05_0x015E11_52_FF



_off010_9253_53:
- D 0 - I - 0x031263 0C:9253: 8A        .byte con_prg_bank + $8A   ; 
- D 0 - I - 0x031264 0C:9254: 03        .byte $03   ; channels counter
- D 0 - I - 0x031265 0C:9255: 00        .byte $00   ; 
- D 0 - I - 0x031266 0C:9256: 02 9E     .word off_ch_00_0x015E12_53
- D 0 - I - 0x031268 0C:9258: 01        .byte $01   ; 
- D 0 - I - 0x031269 0C:9259: E6 9F     .word off_ch_01_0x015FF6_53
- D 0 - I - 0x03126B 0C:925B: 02        .byte $02   ; 
- D 0 - I - 0x03126C 0C:925C: 47 A1     .word off_ch_02_0x016157_53
- D 0 - I - 0x03126E 0C:925E: 05        .byte $05   ; 
- D 0 - I - 0x03126F 0C:925F: E2 A1     .word off_ch_05_0x0161F2_53_FF



_off010_9261_54:
- D 0 - I - 0x031271 0C:9261: 8A        .byte con_prg_bank + $8A   ; 
- D 0 - I - 0x031272 0C:9262: 03        .byte $03   ; channels counter
- D 0 - I - 0x031273 0C:9263: 00        .byte $00   ; 
- D 0 - I - 0x031274 0C:9264: E3 A1     .word off_ch_00_0x0161F3_54
- D 0 - I - 0x031276 0C:9266: 01        .byte $01   ; 
- D 0 - I - 0x031277 0C:9267: 35 A3     .word off_ch_01_0x016345_54
- D 0 - I - 0x031279 0C:9269: 02        .byte $02   ; 
- D 0 - I - 0x03127A 0C:926A: C6 A4     .word off_ch_02_0x0164D6_54
- D 0 - I - 0x03127C 0C:926C: 05        .byte $05   ; 
- D 0 - I - 0x03127D 0C:926D: 24 A6     .word off_ch_05_0x016634_54



_off010_926F_55:
- D 0 - I - 0x03127F 0C:926F: 8A        .byte con_prg_bank + $8A   ; 
- D 0 - I - 0x031280 0C:9270: 03        .byte $03   ; channels counter
- D 0 - I - 0x031281 0C:9271: 00        .byte $00   ; 
- D 0 - I - 0x031282 0C:9272: F2 A6     .word off_ch_00_0x016702_55
- D 0 - I - 0x031284 0C:9274: 01        .byte $01   ; 
- D 0 - I - 0x031285 0C:9275: 48 AA     .word off_ch_01_0x016A58_55
- D 0 - I - 0x031287 0C:9277: 02        .byte $02   ; 
- D 0 - I - 0x031288 0C:9278: C5 AC     .word off_ch_02_0x016CD5_55
- D 0 - I - 0x03128A 0C:927A: 05        .byte $05   ; 
- D 0 - I - 0x03128B 0C:927B: AA AD     .word off_ch_05_0x016DBA_55



_off010_927D_56:
- D 0 - I - 0x03128D 0C:927D: 8A        .byte con_prg_bank + $8A   ; 
- D 0 - I - 0x03128E 0C:927E: 03        .byte $03   ; channels counter
- D 0 - I - 0x03128F 0C:927F: 00        .byte $00   ; 
- D 0 - I - 0x031290 0C:9280: 3C AE     .word off_ch_00_0x016E4C_56
- D 0 - I - 0x031292 0C:9282: 01        .byte $01   ; 
- D 0 - I - 0x031293 0C:9283: E0 AF     .word off_ch_01_0x016FF0_56
- D 0 - I - 0x031295 0C:9285: 02        .byte $02   ; 
- D 0 - I - 0x031296 0C:9286: 4D B1     .word off_ch_02_0x01715D_56
- D 0 - I - 0x031298 0C:9288: 05        .byte $05   ; 
- D 0 - I - 0x031299 0C:9289: 01 B2     .word off_ch_05_0x017211_56



_off010_928B_57:
- D 0 - I - 0x03129B 0C:928B: 8A        .byte con_prg_bank + $8A   ; 
- D 0 - I - 0x03129C 0C:928C: 03        .byte $03   ; channels counter
- D 0 - I - 0x03129D 0C:928D: 00        .byte $00   ; 
- D 0 - I - 0x03129E 0C:928E: CD B2     .word off_ch_00_0x0172DD_57
- D 0 - I - 0x0312A0 0C:9290: 01        .byte $01   ; 
- D 0 - I - 0x0312A1 0C:9291: 76 B3     .word off_ch_01_0x017386_57
- D 0 - I - 0x0312A3 0C:9293: 02        .byte $02   ; 
- D 0 - I - 0x0312A4 0C:9294: 0E B4     .word off_ch_02_0x01741E_57
- D 0 - I - 0x0312A6 0C:9296: 05        .byte $05   ; 
- D 0 - I - 0x0312A7 0C:9297: 74 B4     .word off_ch_05_0x017484_57_FF



_off010_9299_58:
- D 0 - I - 0x0312A9 0C:9299: 88        .byte con_prg_bank + $88   ; 
- D 0 - I - 0x0312AA 0C:929A: 03        .byte $03   ; channels counter
- D 0 - I - 0x0312AB 0C:929B: 00        .byte $00   ; 
- D 0 - I - 0x0312AC 0C:929C: C9 88     .word off_ch_00_0x0108D9_58
- D 0 - I - 0x0312AE 0C:929E: 01        .byte $01   ; 
- D 0 - I - 0x0312AF 0C:929F: 2F 8A     .word off_ch_01_0x010A3F_58
- D 0 - I - 0x0312B1 0C:92A1: 02        .byte $02   ; 
- D 0 - I - 0x0312B2 0C:92A2: BD 8B     .word off_ch_02_0x010BCD_58
- D 0 - I - 0x0312B4 0C:92A4: 05        .byte $05   ; 
- D 0 - I - 0x0312B5 0C:92A5: 5B 8C     .word off_ch_05_0x010C6B_58



_off010_92A7_59:
- D 0 - I - 0x0312B7 0C:92A7: 8A        .byte con_prg_bank + $8A   ; 
- D 0 - I - 0x0312B8 0C:92A8: 03        .byte $03   ; channels counter
- D 0 - I - 0x0312B9 0C:92A9: 00        .byte $00   ; 
- D 0 - I - 0x0312BA 0C:92AA: 3C AE     .word off_ch_00_0x016E4C_59
- D 0 - I - 0x0312BC 0C:92AC: 01        .byte $01   ; 
- D 0 - I - 0x0312BD 0C:92AD: E0 AF     .word off_ch_01_0x016FF0_59
- D 0 - I - 0x0312BF 0C:92AF: 02        .byte $02   ; 
- D 0 - I - 0x0312C0 0C:92B0: 4D B1     .word off_ch_02_0x01715D_59
- D 0 - I - 0x0312C2 0C:92B2: 05        .byte $05   ; 
- D 0 - I - 0x0312C3 0C:92B3: 01 B2     .word off_ch_05_0x017211_59



_off010_92B5_5A:
- D 0 - I - 0x0312C5 0C:92B5: 8A        .byte con_prg_bank + $8A   ; 
- D 0 - I - 0x0312C6 0C:92B6: 03        .byte $03   ; channels counter
- D 0 - I - 0x0312C7 0C:92B7: 00        .byte $00   ; 
- D 0 - I - 0x0312C8 0C:92B8: E3 A1     .word off_ch_00_0x0161F3_5A
- D 0 - I - 0x0312CA 0C:92BA: 01        .byte $01   ; 
- D 0 - I - 0x0312CB 0C:92BB: 35 A3     .word off_ch_01_0x016345_5A
- D 0 - I - 0x0312CD 0C:92BD: 02        .byte $02   ; 
- D 0 - I - 0x0312CE 0C:92BE: C6 A4     .word off_ch_02_0x0164D6_5A
- D 0 - I - 0x0312D0 0C:92C0: 05        .byte $05   ; 
- D 0 - I - 0x0312D1 0C:92C1: 24 A6     .word off_ch_05_0x016634_5A



_off010_92C3_5B:
- D 0 - I - 0x0312D3 0C:92C3: 88        .byte con_prg_bank + $88   ; 
- D 0 - I - 0x0312D4 0C:92C4: 03        .byte $03   ; channels counter
- D 0 - I - 0x0312D5 0C:92C5: 00        .byte $00   ; 
- D 0 - I - 0x0312D6 0C:92C6: 13 8D     .word off_ch_00_0x010D23_5B
- D 0 - I - 0x0312D8 0C:92C8: 01        .byte $01   ; 
- D 0 - I - 0x0312D9 0C:92C9: 38 8E     .word off_ch_01_0x010E48_5B
- D 0 - I - 0x0312DB 0C:92CB: 02        .byte $02   ; 
- D 0 - I - 0x0312DC 0C:92CC: E4 8E     .word off_ch_02_0x010EF4_5B
- D 0 - I - 0x0312DE 0C:92CE: 05        .byte $05   ; 
- D 0 - I - 0x0312DF 0C:92CF: 8E 8F     .word off_ch_05_0x010F9E_5B



_off010_92D1_5C:
- D 0 - I - 0x0312E1 0C:92D1: 88        .byte con_prg_bank + $88   ; 
- D 0 - I - 0x0312E2 0C:92D2: 03        .byte $03   ; channels counter
- D 0 - I - 0x0312E3 0C:92D3: 00        .byte $00   ; 
- D 0 - I - 0x0312E4 0C:92D4: 26 90     .word off_ch_00_0x011036_5C
- D 0 - I - 0x0312E6 0C:92D6: 01        .byte $01   ; 
- D 0 - I - 0x0312E7 0C:92D7: 2F 92     .word off_ch_01_0x01123F_5C
- D 0 - I - 0x0312E9 0C:92D9: 02        .byte $02   ; 
- D 0 - I - 0x0312EA 0C:92DA: 85 93     .word off_ch_02_0x011395_5C
- D 0 - I - 0x0312EC 0C:92DC: 05        .byte $05   ; 
- D 0 - I - 0x0312ED 0C:92DD: 78 94     .word off_ch_05_0x011488_5C



_off010_92DF_5D:
- D 0 - I - 0x0312EF 0C:92DF: 88        .byte con_prg_bank + $88   ; 
- D 0 - I - 0x0312F0 0C:92E0: 03        .byte $03   ; channels counter
- D 0 - I - 0x0312F1 0C:92E1: 00        .byte $00   ; 
- D 0 - I - 0x0312F2 0C:92E2: 5F AC     .word off_ch_00_0x012C6F_5D
- D 0 - I - 0x0312F4 0C:92E4: 01        .byte $01   ; 
- D 0 - I - 0x0312F5 0C:92E5: 9A AC     .word off_ch_01_0x012CAA_5D
- D 0 - I - 0x0312F7 0C:92E7: 02        .byte $02   ; 
- D 0 - I - 0x0312F8 0C:92E8: DE AC     .word off_ch_02_0x012CEE_5D
- D 0 - I - 0x0312FA 0C:92EA: 05        .byte $05   ; 
- D 0 - I - 0x0312FB 0C:92EB: 0B AD     .word off_ch_05_0x012D1B_5D



_off010_92ED_5E:
- D 0 - I - 0x0312FD 0C:92ED: 88        .byte con_prg_bank + $88   ; 
- D 0 - I - 0x0312FE 0C:92EE: 03        .byte $03   ; channels counter
- D 0 - I - 0x0312FF 0C:92EF: 00        .byte $00   ; 
- D 0 - I - 0x031300 0C:92F0: 22 95     .word off_ch_00_0x011532_5E
- D 0 - I - 0x031302 0C:92F2: 01        .byte $01   ; 
- D 0 - I - 0x031303 0C:92F3: C6 97     .word off_ch_01_0x0117D6_5E
- D 0 - I - 0x031305 0C:92F5: 02        .byte $02   ; 
- D 0 - I - 0x031306 0C:92F6: A2 99     .word off_ch_02_0x0119B2_5E
- D 0 - I - 0x031308 0C:92F8: 05        .byte $05   ; 
- D 0 - I - 0x031309 0C:92F9: 6E 9A     .word off_ch_05_0x011A7E_5E



_off010_92FB_5F:
- D 0 - I - 0x03130B 0C:92FB: 88        .byte con_prg_bank + $88   ; 
- D 0 - I - 0x03130C 0C:92FC: 03        .byte $03   ; channels counter
- D 0 - I - 0x03130D 0C:92FD: 00        .byte $00   ; 
- D 0 - I - 0x03130E 0C:92FE: F3 9C     .word off_ch_00_0x011D03_5F
- D 0 - I - 0x031310 0C:9300: 01        .byte $01   ; 
- D 0 - I - 0x031311 0C:9301: 98 9E     .word off_ch_01_0x011EA8_5F
- D 0 - I - 0x031313 0C:9303: 02        .byte $02   ; 
- D 0 - I - 0x031314 0C:9304: 22 A0     .word off_ch_02_0x012032_5F
- D 0 - I - 0x031316 0C:9306: 05        .byte $05   ; 
- D 0 - I - 0x031317 0C:9307: E5 A0     .word off_ch_05_0x0120F5_5F



_off010_9309_60:
- D 0 - I - 0x031319 0C:9309: 88        .byte con_prg_bank + $88   ; 
- D 0 - I - 0x03131A 0C:930A: 03        .byte $03   ; channels counter
- D 0 - I - 0x03131B 0C:930B: 00        .byte $00   ; 
- D 0 - I - 0x03131C 0C:930C: 7D A1     .word off_ch_00_0x01218D_60
- D 0 - I - 0x03131E 0C:930E: 01        .byte $01   ; 
- D 0 - I - 0x03131F 0C:930F: 03 A3     .word off_ch_01_0x012313_60
- D 0 - I - 0x031321 0C:9311: 02        .byte $02   ; 
- D 0 - I - 0x031322 0C:9312: F7 A4     .word off_ch_02_0x012507_60
- D 0 - I - 0x031324 0C:9314: 05        .byte $05   ; 
- D 0 - I - 0x031325 0C:9315: 89 A5     .word off_ch_05_0x012599_60



_off010_9317_61:
- D 0 - I - 0x031327 0C:9317: 88        .byte con_prg_bank + $88   ; 
- D 0 - I - 0x031328 0C:9318: 03        .byte $03   ; channels counter
- D 0 - I - 0x031329 0C:9319: 00        .byte $00   ; 
- D 0 - I - 0x03132A 0C:931A: 58 A6     .word off_ch_00_0x012668_61
- D 0 - I - 0x03132C 0C:931C: 01        .byte $01   ; 
- D 0 - I - 0x03132D 0C:931D: 5D A6     .word off_ch_01_0x01266D_61
- D 0 - I - 0x03132F 0C:931F: 02        .byte $02   ; 
- D 0 - I - 0x031330 0C:9320: 62 A6     .word off_ch_02_0x012672_61
- D 0 - I - 0x031332 0C:9322: 05        .byte $05   ; 
- D 0 - I - 0x031333 0C:9323: 8F A5     .word off_ch_05_0x01259F_61



_off010_9325_62_enter_name_psw:
- D 0 - I - 0x031335 0C:9325: 88        .byte con_prg_bank + $88   ; 
- D 0 - I - 0x031336 0C:9326: 03        .byte $03   ; channels counter
- D 0 - I - 0x031337 0C:9327: 00        .byte $00   ; 
- D 0 - I - 0x031338 0C:9328: 67 A6     .word off_ch_00_0x012677_62
- D 0 - I - 0x03133A 0C:932A: 01        .byte $01   ; 
- D 0 - I - 0x03133B 0C:932B: 37 A7     .word off_ch_01_0x012747_62
- D 0 - I - 0x03133D 0C:932D: 02        .byte $02   ; 
- D 0 - I - 0x03133E 0C:932E: 78 A7     .word off_ch_02_0x012788_62
- D 0 - I - 0x031340 0C:9330: 05        .byte $05   ; 
- D 0 - I - 0x031341 0C:9331: 9B A7     .word off_ch_05_0x0127AB_62



_off010_9333_63_stage_complete:
- D 0 - I - 0x031343 0C:9333: 88        .byte con_prg_bank + $88   ; 
- D 0 - I - 0x031344 0C:9334: 03        .byte $03   ; channels counter
- D 0 - I - 0x031345 0C:9335: 00        .byte $00   ; 
- D 0 - I - 0x031346 0C:9336: 5E 87     .word off_ch_00_0x01076E_63
- D 0 - I - 0x031348 0C:9338: 01        .byte $01   ; 
- D 0 - I - 0x031349 0C:9339: 87 87     .word off_ch_01_0x010797_63
- D 0 - I - 0x03134B 0C:933B: 02        .byte $02   ; 
- D 0 - I - 0x03134C 0C:933C: B5 87     .word off_ch_02_0x0107C5_63
- D 0 - I - 0x03134E 0C:933E: 05        .byte $05   ; 
- D 0 - I - 0x03134F 0C:933F: E6 87     .word off_ch_05_0x0107F6_63



_off010_9341_64:
- D 0 - I - 0x031351 0C:9341: 88        .byte con_prg_bank + $88   ; 
- D 0 - I - 0x031352 0C:9342: 03        .byte $03   ; channels counter
- D 0 - I - 0x031353 0C:9343: 00        .byte $00   ; 
- D 0 - I - 0x031354 0C:9344: D2 9B     .word off_ch_00_0x011BE2_64
- D 0 - I - 0x031356 0C:9346: 01        .byte $01   ; 
- D 0 - I - 0x031357 0C:9347: 31 9C     .word off_ch_01_0x011C41_64
- D 0 - I - 0x031359 0C:9349: 02        .byte $02   ; 
- D 0 - I - 0x03135A 0C:934A: 75 9C     .word off_ch_02_0x011C85_64
- D 0 - I - 0x03135C 0C:934C: 05        .byte $05   ; 
- D 0 - I - 0x03135D 0C:934D: D3 9C     .word off_ch_05_0x011CE3_64



_off010_934F_65_game_over:
- D 0 - I - 0x03135F 0C:934F: 88        .byte con_prg_bank + $88   ; 
- D 0 - I - 0x031360 0C:9350: 03        .byte $03   ; channels counter
- D 0 - I - 0x031361 0C:9351: 00        .byte $00   ; 
- D 0 - I - 0x031362 0C:9352: FF 87     .word off_ch_00_0x01080F_65
- D 0 - I - 0x031364 0C:9354: 01        .byte $01   ; 
- D 0 - I - 0x031365 0C:9355: 52 88     .word off_ch_01_0x010862_65
- D 0 - I - 0x031367 0C:9357: 02        .byte $02   ; 
- D 0 - I - 0x031368 0C:9358: 80 88     .word off_ch_02_0x010890_65
- D 0 - I - 0x03136A 0C:935A: 05        .byte $05   ; 
- D 0 - I - 0x03136B 0C:935B: A9 88     .word off_ch_05_0x0108B9_65



_off010_935D_66_title_screen:
- D 0 - I - 0x03136D 0C:935D: 88        .byte con_prg_bank + $88   ; 
- D 0 - I - 0x03136E 0C:935E: 03        .byte $03   ; channels counter
- D 0 - I - 0x03136F 0C:935F: 00        .byte $00   ; 
- D 0 - I - 0x031370 0C:9360: D8 A7     .word off_ch_00_0x0127E8_66
- D 0 - I - 0x031372 0C:9362: 01        .byte $01   ; 
- D 0 - I - 0x031373 0C:9363: 73 AA     .word off_ch_01_0x012A83_66
- D 0 - I - 0x031375 0C:9365: 02        .byte $02   ; 
- D 0 - I - 0x031376 0C:9366: C1 AB     .word off_ch_02_0x012BD1_66
- D 0 - I - 0x031378 0C:9368: 05        .byte $05   ; 
- D 0 - I - 0x031379 0C:9369: 5E AC     .word off_ch_05_0x012C6E_66_FF



_off010_936B_67:
- D 0 - I - 0x03137B 0C:936B: 8A        .byte con_prg_bank + $8A   ; 
- D 0 - I - 0x03137C 0C:936C: 03        .byte $03   ; channels counter
- D 0 - I - 0x03137D 0C:936D: 00        .byte $00   ; 
- D 0 - I - 0x03137E 0C:936E: A2 B7     .word off_ch_00_0x0177B2_67
- D 0 - I - 0x031380 0C:9370: 01        .byte $01   ; 
- D 0 - I - 0x031381 0C:9371: C9 B7     .word off_ch_01_0x0177D9_67
- D 0 - I - 0x031383 0C:9373: 02        .byte $02   ; 
- D 0 - I - 0x031384 0C:9374: 18 B8     .word off_ch_02_0x017828_67
- D 0 - I - 0x031386 0C:9376: 05        .byte $05   ; 
- D 0 - I - 0x031387 0C:9377: 30 B8     .word off_ch_05_0x017840_67



_off010_9379_68:
- D 0 - I - 0x031389 0C:9379: 88        .byte con_prg_bank + $88   ; 
- D 0 - I - 0x03138A 0C:937A: 03        .byte $03   ; channels counter
- D 0 - I - 0x03138B 0C:937B: 00        .byte $00   ; 
- D 0 - I - 0x03138C 0C:937C: AB AE     .word off_ch_00_0x012EBB_68
- D 0 - I - 0x03138E 0C:937E: 01        .byte $01   ; 
- D 0 - I - 0x03138F 0C:937F: E7 AF     .word off_ch_01_0x012FF7_68
- D 0 - I - 0x031391 0C:9381: 02        .byte $02   ; 
- D 0 - I - 0x031392 0C:9382: 25 B1     .word off_ch_02_0x013135_68
- D 0 - I - 0x031394 0C:9384: 05        .byte $05   ; 
- D 0 - I - 0x031395 0C:9385: B3 B1     .word off_ch_05_0x0131C3_68_FF



_off010_9387_69:
- D 0 - I - 0x031397 0C:9387: 8A        .byte con_prg_bank + $8A   ; 
- D 0 - I - 0x031398 0C:9388: 03        .byte $03   ; channels counter
- D 0 - I - 0x031399 0C:9389: 00        .byte $00   ; 
- D 0 - I - 0x03139A 0C:938A: 75 B4     .word off_ch_00_0x017485_69
- D 0 - I - 0x03139C 0C:938C: 01        .byte $01   ; 
- D 0 - I - 0x03139D 0C:938D: EA B5     .word off_ch_01_0x0175FA_69
- D 0 - I - 0x03139F 0C:938F: 02        .byte $02   ; 
- D 0 - I - 0x0313A0 0C:9390: 91 B6     .word off_ch_02_0x0176A1_69
- D 0 - I - 0x0313A2 0C:9392: 05        .byte $05   ; 
- D 0 - I - 0x0313A3 0C:9393: 49 B7     .word off_ch_05_0x017759_69



_off010_9395_6A:
- D 0 - I - 0x0313A5 0C:9395: 88        .byte con_prg_bank + $88   ; 
- D 0 - I - 0x0313A6 0C:9396: 03        .byte $03   ; channels counter
- D 0 - I - 0x0313A7 0C:9397: 00        .byte $00   ; 
- D 0 - I - 0x0313A8 0C:9398: 5F AC     .word off_ch_00_0x012C6F_6A
- D 0 - I - 0x0313AA 0C:939A: 01        .byte $01   ; 
- D 0 - I - 0x0313AB 0C:939B: 9A AC     .word off_ch_01_0x012CAA_6A
- D 0 - I - 0x0313AD 0C:939D: 02        .byte $02   ; 
- D 0 - I - 0x0313AE 0C:939E: DE AC     .word off_ch_02_0x012CEE_6A
- D 0 - I - 0x0313B0 0C:93A0: 05        .byte $05   ; 
- D 0 - I - 0x0313B1 0C:93A1: 0B AD     .word off_ch_05_0x012D1B_6A



_off010_93A3_6B_dialog:
- D 0 - I - 0x0313B3 0C:93A3: 88        .byte con_prg_bank + $88   ; 
- D 0 - I - 0x0313B4 0C:93A4: 03        .byte $03   ; channels counter
- D 0 - I - 0x0313B5 0C:93A5: 00        .byte $00   ; 
- D 0 - I - 0x0313B6 0C:93A6: 6A AD     .word off_ch_00_0x012D7A_6B
- D 0 - I - 0x0313B8 0C:93A8: 01        .byte $01   ; 
- D 0 - I - 0x0313B9 0C:93A9: 4C AD     .word off_ch_01_0x012D5C_6B
- D 0 - I - 0x0313BB 0C:93AB: 02        .byte $02   ; 
- D 0 - I - 0x0313BC 0C:93AC: B5 AD     .word off_ch_02_0x012DC5_6B
- D 0 - I - 0x0313BE 0C:93AE: 05        .byte $05   ; 
- D 0 - I - 0x0313BF 0C:93AF: C3 AD     .word off_ch_05_0x012DD3_6B_FF



_off010_93B1_6C:
- D 0 - I - 0x0313C1 0C:93B1: 88        .byte con_prg_bank + $88   ; 
- D 0 - I - 0x0313C2 0C:93B2: 03        .byte $03   ; channels counter
- D 0 - I - 0x0313C3 0C:93B3: 00        .byte $00   ; 
- D 0 - I - 0x0313C4 0C:93B4: C4 AD     .word off_ch_00_0x012DD4_6C
- D 0 - I - 0x0313C6 0C:93B6: 01        .byte $01   ; 
- D 0 - I - 0x0313C7 0C:93B7: 24 AE     .word off_ch_01_0x012E34_6C
- D 0 - I - 0x0313C9 0C:93B9: 02        .byte $02   ; 
- D 0 - I - 0x0313CA 0C:93BA: 6E AE     .word off_ch_02_0x012E7E_6C
- D 0 - I - 0x0313CC 0C:93BC: 05        .byte $05   ; 
- D 0 - I - 0x0313CD 0C:93BD: AA AE     .word off_ch_05_0x012EBA_6C_FF



_off011_93BF_6D:
; bzk garbage up to 0x03140D
; looks like these were planned to be pointers to 0x032160
- - - - - - 0x0313CF 0C:93BF: 00        .byte $00   ; 
- - - - - - 0x0313D0 0C:93C0: 07        .byte $07   ; 
- - - - - - 0x0313D1 0C:93C1: 50 A1     .word $A150 ; 



_off011_93C3_6E:
; bzk garbage
- - - - - - 0x0313D3 0C:93C3: 00        .byte $00   ; 
- - - - - - 0x0313D4 0C:93C4: 07        .byte $07   ; 
- - - - - - 0x0313D5 0C:93C5: 54 A1     .word $A154 ; 



_off011_93C7_6F:
; bzk garbage
- - - - - - 0x0313D7 0C:93C7: 00        .byte $00   ; 
- - - - - - 0x0313D8 0C:93C8: 07        .byte $07   ; 
- - - - - - 0x0313D9 0C:93C9: 58 A1     .word $A158 ; 



_off011_93CB_70:
; bzk garbage
- - - - - - 0x0313DB 0C:93CB: 00        .byte $00   ; 
- - - - - - 0x0313DC 0C:93CC: 07        .byte $07   ; 
- - - - - - 0x0313DD 0C:93CD: 5C A1     .word $A15C ; 



_off011_93CF_71:
; bzk garbage
- - - - - - 0x0313DF 0C:93CF: 00        .byte $00   ; 
- - - - - - 0x0313E0 0C:93D0: 07        .byte $07   ; 
- - - - - - 0x0313E1 0C:93D1: 60 A1     .word $A160 ; 



_off011_93D3_73:
; bzk garbage
- - - - - - 0x0313E3 0C:93D3: 00        .byte $00   ; 
- - - - - - 0x0313E4 0C:93D4: 07        .byte $07   ; 
- - - - - - 0x0313E5 0C:93D5: 68 A1     .word $A168 ; 



_off011_93D7_74:
; bzk garbage
- - - - - - 0x0313E7 0C:93D7: 00        .byte $00   ; 
- - - - - - 0x0313E8 0C:93D8: 07        .byte $07   ; 
- - - - - - 0x0313E9 0C:93D9: 6C A1     .word $A16C ; 



_off011_93DB_75:
; bzk garbage
- - - - - - 0x0313EB 0C:93DB: 00        .byte $00   ; 
- - - - - - 0x0313EC 0C:93DC: 07        .byte $07   ; 
- - - - - - 0x0313ED 0C:93DD: 70 A1     .word $A170 ; 



_off011_93DF_76:
; bzk garbage
- - - - - - 0x0313EF 0C:93DF: 00        .byte $00   ; 
- - - - - - 0x0313F0 0C:93E0: 07        .byte $07   ; 
- - - - - - 0x0313F1 0C:93E1: 74 A1     .word $A174 ; 



_off011_93E3_77:
; bzk garbage
- - - - - - 0x0313F3 0C:93E3: 00        .byte $00   ; 
- - - - - - 0x0313F4 0C:93E4: 07        .byte $07   ; 
- - - - - - 0x0313F5 0C:93E5: 78 A1     .word $A178 ; 



_off011_93E7_72:
; bzk garbage
- - - - - - 0x0313F7 0C:93E7: 00        .byte $00   ; 
- - - - - - 0x0313F8 0C:93E8: 07        .byte $07   ; 
- - - - - - 0x0313F9 0C:93E9: 64 A1     .word $A164 ; 



_off011_93EB_78:
; bzk garbage
- - - - - - 0x0313FB 0C:93EB: 00        .byte $00   ; 
- - - - - - 0x0313FC 0C:93EC: 07        .byte $07   ; 
- - - - - - 0x0313FD 0C:93ED: 7C A1     .word $A17C ; 



_off011_93EF_79:
; bzk garbage
- - - - - - 0x0313FF 0C:93EF: 00        .byte $00   ; 
- - - - - - 0x031400 0C:93F0: 07        .byte $07   ; 
- - - - - - 0x031401 0C:93F1: 80 A1     .word $A180 ; 



_off011_93F3_7A:
; bzk garbage
- - - - - - 0x031403 0C:93F3: 00        .byte $00   ; 
- - - - - - 0x031404 0C:93F4: 07        .byte $07   ; 
- - - - - - 0x031405 0C:93F5: 84 A1     .word $A184 ; 



_off011_93F7_7B:
; bzk garbage
- - - - - - 0x031407 0C:93F7: 00        .byte $00   ; 
- - - - - - 0x031408 0C:93F8: 07        .byte $07   ; 
- - - - - - 0x031409 0C:93F9: 88 A1     .word $A188 ; 



_off011_93FB_7C:
; bzk garbage
- - - - - - 0x03140B 0C:93FB: 00        .byte $00   ; 
- - - - - - 0x03140C 0C:93FC: 07        .byte $07   ; 
- - - - - - 0x03140D 0C:93FD: 8C A1     .word $A18C ; 



off_ch_06_93FF_01:
- D 0 - I - 0x03140F 0C:93FF: 01        .byte $01   ; 
- D 0 - I - 0x031410 0C:9400: 5D        .byte $5D   ; 
- D 0 - I - 0x031411 0C:9401: 49        .byte $49   ; 
- D 0 - I - 0x031412 0C:9402: 39        .byte $39   ; 
- D 0 - I - 0x031413 0C:9403: 19        .byte $19   ; 
- D 0 - I - 0x031414 0C:9404: FF        .byte con_se_cb_1_FF   ; 



off_ch_06_9405_02:
- D 0 - I - 0x031415 0C:9405: 01        .byte $01   ; 
- D 0 - I - 0x031416 0C:9406: 65        .byte $65   ; 
- D 0 - I - 0x031417 0C:9407: 24        .byte $24   ; 
- D 0 - I - 0x031418 0C:9408: 21        .byte $21   ; 
- D 0 - I - 0x031419 0C:9409: 11        .byte $11   ; 
- D 0 - I - 0x03141A 0C:940A: FF        .byte con_se_cb_1_FF   ; 



off_ch_06_940B_03:
- D 0 - I - 0x03141B 0C:940B: 01        .byte $01   ; 
- D 0 - I - 0x03141C 0C:940C: A2        .byte $A2   ; 
- D 0 - I - 0x03141D 0C:940D: A1        .byte $A1   ; 
- D 0 - I - 0x03141E 0C:940E: 71        .byte $71   ; 
- D 0 - I - 0x03141F 0C:940F: 61        .byte $61   ; 
- D 0 - I - 0x031420 0C:9410: 61        .byte $61   ; 
- D 0 - I - 0x031421 0C:9411: 50        .byte $50   ; 
- D 0 - I - 0x031422 0C:9412: 51        .byte $51   ; 
- D 0 - I - 0x031423 0C:9413: 50        .byte $50   ; 
- D 0 - I - 0x031424 0C:9414: 51        .byte $51   ; 
- D 0 - I - 0x031425 0C:9415: 50        .byte $50   ; 
- D 0 - I - 0x031426 0C:9416: 41        .byte $41   ; 
- D 0 - I - 0x031427 0C:9417: FF        .byte con_se_cb_1_FF   ; 



off_ch_06_9418_04:
- - - - - - 0x031428 0C:9418: 01        .byte $01   ; 
- - - - - - 0x031429 0C:9419: B6        .byte $B6   ; 
- - - - - - 0x03142A 0C:941A: 96        .byte $96   ; 
- - - - - - 0x03142B 0C:941B: 76        .byte $76   ; 
- - - - - - 0x03142C 0C:941C: 54        .byte $54   ; 
- - - - - - 0x03142D 0C:941D: 36        .byte $36   ; 
- - - - - - 0x03142E 0C:941E: FF        .byte con_se_cb_1_FF   ; 



off_ch_06_941F_05:
- D 0 - I - 0x03142F 0C:941F: 01        .byte $01   ; 
- D 0 - I - 0x031430 0C:9420: EE        .byte $EE   ; 
- D 0 - I - 0x031431 0C:9421: 86        .byte $86   ; 
- D 0 - I - 0x031432 0C:9422: 34        .byte $34   ; 
- D 0 - I - 0x031433 0C:9423: 33        .byte $33   ; 
- D 0 - I - 0x031434 0C:9424: 24        .byte $24   ; 
- D 0 - I - 0x031435 0C:9425: 13        .byte $13   ; 
- D 0 - I - 0x031436 0C:9426: 12        .byte $12   ; 
- D 0 - I - 0x031437 0C:9427: 12        .byte $12   ; 
- D 0 - I - 0x031438 0C:9428: FF        .byte con_se_cb_1_FF   ; 



off_ch_06_9429_06_FF:
off_ch_03_9429_06_FF:
- D 0 - I - 0x031439 0C:9429: FF        .byte con_se_cb_1_FF   ; 



off_ch_03_942A_0A:
- D 0 - I - 0x03143A 0C:942A: 03        .byte $03   ; 
- D 0 - I - 0x03143B 0C:942B: 70        .byte $70   ; 
- D 0 - I - 0x03143C 0C:942C: 81        .byte $81   ; 
- D 0 - I - 0x03143D 0C:942D: 82        .byte $82   ; 
- D 0 - I - 0x03143E 0C:942E: 00        .byte $00   ; 
- D 0 - I - 0x03143F 0C:942F: 22        .byte $22   ; 
- D 0 - I - 0x031440 0C:9430: 00        .byte $00   ; 
- D 0 - I - 0x031441 0C:9431: 03        .byte $03   ; 
- D 0 - I - 0x031442 0C:9432: B0        .byte $B0   ; 
- D 0 - I - 0x031443 0C:9433: 81        .byte $81   ; 
- D 0 - I - 0x031444 0C:9434: 80        .byte $80   ; 
- D 0 - I - 0x031445 0C:9435: E0        .byte $E0   ; 
- D 0 - I - 0x031446 0C:9436: 03        .byte $03   ; 
- D 0 - I - 0x031447 0C:9437: B0        .byte $B0   ; 
- D 0 - I - 0x031448 0C:9438: 8A        .byte $8A   ; 
- D 0 - I - 0x031449 0C:9439: 40        .byte $40   ; 
- D 0 - I - 0x03144A 0C:943A: F0        .byte $F0   ; 
- D 0 - I - 0x03144B 0C:943B: 21        .byte $21   ; 
- D 0 - I - 0x03144C 0C:943C: D4        .byte $D4   ; 
- D 0 - I - 0x03144D 0C:943D: 12        .byte $12   ; 
- D 0 - I - 0x03144E 0C:943E: 1A        .byte $1A   ; 
- D 0 - I - 0x03144F 0C:943F: FF        .byte con_se_cb_1_FF   ; 



off_ch_03_9440_07:
- D 0 - I - 0x031450 0C:9440: 02        .byte $02   ; 
- D 0 - I - 0x031451 0C:9441: B0        .byte $B0   ; 
- D 0 - I - 0x031452 0C:9442: 82        .byte $82   ; 
- D 0 - I - 0x031453 0C:9443: FB        .byte con_se_cb_1_FB   ; 
- D 0 - I - 0x031454 0C:9444: 53        .byte $53   ; 
- D 0 - I - 0x031455 0C:9445: 00        .byte $00   ; 
- D 0 - I - 0x031456 0C:9446: 51        .byte $51   ; 
- D 0 - I - 0x031457 0C:9447: 00        .byte $00   ; 
- D 0 - I - 0x031458 0C:9448: 52        .byte $52   ; 
- D 0 - I - 0x031459 0C:9449: 00        .byte $00   ; 
- D 0 - I - 0x03145A 0C:944A: 54        .byte $54   ; 
- D 0 - I - 0x03145B 0C:944B: 00        .byte $00   ; 
- D 0 - I - 0x03145C 0C:944C: 53        .byte $53   ; 
- D 0 - I - 0x03145D 0C:944D: 00        .byte $00   ; 
- D 0 - I - 0x03145E 0C:944E: 51        .byte $51   ; 
- D 0 - I - 0x03145F 0C:944F: 00        .byte $00   ; 
- D 0 - I - 0x031460 0C:9450: 52        .byte $52   ; 
- D 0 - I - 0x031461 0C:9451: 00        .byte $00   ; 
- D 0 - I - 0x031462 0C:9452: 54        .byte $54   ; 
- D 0 - I - 0x031463 0C:9453: 00        .byte $00   ; 
- D 0 - I - 0x031464 0C:9454: FE        .byte con_se_cb_1_FE, $0E   ; 
- D 0 - I - 0x031466 0C:9456: 33        .byte $33   ; 
- D 0 - I - 0x031467 0C:9457: 00        .byte $00   ; 
- D 0 - I - 0x031468 0C:9458: 31        .byte $31   ; 
- D 0 - I - 0x031469 0C:9459: 00        .byte $00   ; 
- D 0 - I - 0x03146A 0C:945A: 32        .byte $32   ; 
- D 0 - I - 0x03146B 0C:945B: 00        .byte $00   ; 
- D 0 - I - 0x03146C 0C:945C: 34        .byte $34   ; 
- D 0 - I - 0x03146D 0C:945D: 00        .byte $00   ; 
- D 0 - I - 0x03146E 0C:945E: 33        .byte $33   ; 
- D 0 - I - 0x03146F 0C:945F: 00        .byte $00   ; 
- D 0 - I - 0x031470 0C:9460: 31        .byte $31   ; 
- D 0 - I - 0x031471 0C:9461: 00        .byte $00   ; 
- D 0 - I - 0x031472 0C:9462: 32        .byte $32   ; 
- D 0 - I - 0x031473 0C:9463: 00        .byte $00   ; 
- D 0 - I - 0x031474 0C:9464: 34        .byte $34   ; 
- D 0 - I - 0x031475 0C:9465: 00        .byte $00   ; 
- D 0 - I - 0x031476 0C:9466: 23        .byte $23   ; 
- D 0 - I - 0x031477 0C:9467: 00        .byte $00   ; 
- D 0 - I - 0x031478 0C:9468: 21        .byte $21   ; 
- D 0 - I - 0x031479 0C:9469: 00        .byte $00   ; 
- D 0 - I - 0x03147A 0C:946A: 22        .byte $22   ; 
- D 0 - I - 0x03147B 0C:946B: 00        .byte $00   ; 
- D 0 - I - 0x03147C 0C:946C: 24        .byte $24   ; 
- D 0 - I - 0x03147D 0C:946D: 00        .byte $00   ; 
- D 0 - I - 0x03147E 0C:946E: 23        .byte $23   ; 
- D 0 - I - 0x03147F 0C:946F: 00        .byte $00   ; 
- D 0 - I - 0x031480 0C:9470: 21        .byte $21   ; 
- D 0 - I - 0x031481 0C:9471: 00        .byte $00   ; 
- D 0 - I - 0x031482 0C:9472: 22        .byte $22   ; 
- D 0 - I - 0x031483 0C:9473: 00        .byte $00   ; 
- D 0 - I - 0x031484 0C:9474: 24        .byte $24   ; 
- D 0 - I - 0x031485 0C:9475: 00        .byte $00   ; 
- D 0 - I - 0x031486 0C:9476: 13        .byte $13   ; 
- D 0 - I - 0x031487 0C:9477: 00        .byte $00   ; 
- D 0 - I - 0x031488 0C:9478: 11        .byte $11   ; 
- D 0 - I - 0x031489 0C:9479: 00        .byte $00   ; 
- D 0 - I - 0x03148A 0C:947A: 12        .byte $12   ; 
- D 0 - I - 0x03148B 0C:947B: 00        .byte $00   ; 
- D 0 - I - 0x03148C 0C:947C: 14        .byte $14   ; 
- D 0 - I - 0x03148D 0C:947D: 00        .byte $00   ; 
- D 0 - I - 0x03148E 0C:947E: 13        .byte $13   ; 
- D 0 - I - 0x03148F 0C:947F: 00        .byte $00   ; 
- D 0 - I - 0x031490 0C:9480: 11        .byte $11   ; 
- D 0 - I - 0x031491 0C:9481: 00        .byte $00   ; 
- D 0 - I - 0x031492 0C:9482: 12        .byte $12   ; 
- D 0 - I - 0x031493 0C:9483: 00        .byte $00   ; 
- D 0 - I - 0x031494 0C:9484: 14        .byte $14   ; 
- D 0 - I - 0x031495 0C:9485: 00        .byte $00   ; 
- D 0 - I - 0x031496 0C:9486: 13        .byte $13   ; 
- D 0 - I - 0x031497 0C:9487: 00        .byte $00   ; 
- D 0 - I - 0x031498 0C:9488: 11        .byte $11   ; 
- D 0 - I - 0x031499 0C:9489: 00        .byte $00   ; 
- D 0 - I - 0x03149A 0C:948A: 12        .byte $12   ; 
- D 0 - I - 0x03149B 0C:948B: 00        .byte $00   ; 
- D 0 - I - 0x03149C 0C:948C: 14        .byte $14   ; 
- D 0 - I - 0x03149D 0C:948D: 00        .byte $00   ; 
- D 0 - I - 0x03149E 0C:948E: 13        .byte $13   ; 
- D 0 - I - 0x03149F 0C:948F: 00        .byte $00   ; 
- D 0 - I - 0x0314A0 0C:9490: 11        .byte $11   ; 
- D 0 - I - 0x0314A1 0C:9491: 00        .byte $00   ; 
- D 0 - I - 0x0314A2 0C:9492: 12        .byte $12   ; 
- D 0 - I - 0x0314A3 0C:9493: 00        .byte $00   ; 
- D 0 - I - 0x0314A4 0C:9494: 14        .byte $14   ; 
- D 0 - I - 0x0314A5 0C:9495: 00        .byte $00   ; 
- D 0 - I - 0x0314A6 0C:9496: FF        .byte con_se_cb_1_FF   ; 



off_ch_06_9497_07:
- D 0 - I - 0x0314A7 0C:9497: 01        .byte $01   ; 
- D 0 - I - 0x0314A8 0C:9498: BC        .byte $BC   ; 
- D 0 - I - 0x0314A9 0C:9499: 2D        .byte $2D   ; 
- D 0 - I - 0x0314AA 0C:949A: 3D        .byte $3D   ; 
- D 0 - I - 0x0314AB 0C:949B: 4C        .byte $4C   ; 
- D 0 - I - 0x0314AC 0C:949C: 5E        .byte $5E   ; 
- D 0 - I - 0x0314AD 0C:949D: 6E        .byte $6E   ; 
- D 0 - I - 0x0314AE 0C:949E: 7F        .byte $7F   ; 
- D 0 - I - 0x0314AF 0C:949F: 8E        .byte $8E   ; 
- D 0 - I - 0x0314B0 0C:94A0: 9B        .byte $9B   ; 
- D 0 - I - 0x0314B1 0C:94A1: 9F        .byte $9F   ; 
- D 0 - I - 0x0314B2 0C:94A2: 9D        .byte $9D   ; 
- D 0 - I - 0x0314B3 0C:94A3: 9C        .byte $9C   ; 
- D 0 - I - 0x0314B4 0C:94A4: BF        .byte $BF   ; 
- D 0 - I - 0x0314B5 0C:94A5: BF        .byte $BF   ; 
- D 0 - I - 0x0314B6 0C:94A6: BE        .byte $BE   ; 
- D 0 - I - 0x0314B7 0C:94A7: BF        .byte $BF   ; 
- D 0 - I - 0x0314B8 0C:94A8: FB        .byte con_se_cb_1_FB   ; 
- D 0 - I - 0x0314B9 0C:94A9: BC        .byte $BC   ; 
- D 0 - I - 0x0314BA 0C:94AA: BD        .byte $BD   ; 
- D 0 - I - 0x0314BB 0C:94AB: BD        .byte $BD   ; 
- D 0 - I - 0x0314BC 0C:94AC: 5C        .byte $5C   ; 
- D 0 - I - 0x0314BD 0C:94AD: BE        .byte $BE   ; 
- D 0 - I - 0x0314BE 0C:94AE: BE        .byte $BE   ; 
- D 0 - I - 0x0314BF 0C:94AF: BF        .byte $BF   ; 
- D 0 - I - 0x0314C0 0C:94B0: BE        .byte $BE   ; 
- D 0 - I - 0x0314C1 0C:94B1: FE        .byte con_se_cb_1_FE, $10   ; 
- D 0 - I - 0x0314C3 0C:94B3: FB        .byte con_se_cb_1_FB   ; 
- D 0 - I - 0x0314C4 0C:94B4: 8B        .byte $8B   ; 
- D 0 - I - 0x0314C5 0C:94B5: 8F        .byte $8F   ; 
- D 0 - I - 0x0314C6 0C:94B6: 8D        .byte $8D   ; 
- D 0 - I - 0x0314C7 0C:94B7: 8C        .byte $8C   ; 
- D 0 - I - 0x0314C8 0C:94B8: 5F        .byte $5F   ; 
- D 0 - I - 0x0314C9 0C:94B9: 3D        .byte $3D   ; 
- D 0 - I - 0x0314CA 0C:94BA: BE        .byte $BE   ; 
- D 0 - I - 0x0314CB 0C:94BB: 5D        .byte $5D   ; 
- D 0 - I - 0x0314CC 0C:94BC: FE        .byte con_se_cb_1_FE, $08   ; 
- D 0 - I - 0x0314CE 0C:94BE: 3F        .byte $3F   ; 
- D 0 - I - 0x0314CF 0C:94BF: BF        .byte $BF   ; 
- D 0 - I - 0x0314D0 0C:94C0: 02        .byte $02   ; 
- D 0 - I - 0x0314D1 0C:94C1: 4F        .byte $4F   ; 
- D 0 - I - 0x0314D2 0C:94C2: BF        .byte $BF   ; 
- D 0 - I - 0x0314D3 0C:94C3: 8D        .byte $8D   ; 
- D 0 - I - 0x0314D4 0C:94C4: BF        .byte $BF   ; 
- D 0 - I - 0x0314D5 0C:94C5: AF        .byte $AF   ; 
- D 0 - I - 0x0314D6 0C:94C6: 8E        .byte $8E   ; 
- D 0 - I - 0x0314D7 0C:94C7: 3F        .byte $3F   ; 
- D 0 - I - 0x0314D8 0C:94C8: 7E        .byte $7E   ; 
- D 0 - I - 0x0314D9 0C:94C9: 4F        .byte $4F   ; 
- D 0 - I - 0x0314DA 0C:94CA: 3D        .byte $3D   ; 
- D 0 - I - 0x0314DB 0C:94CB: AF        .byte $AF   ; 
- D 0 - I - 0x0314DC 0C:94CC: 2E        .byte $2E   ; 
- D 0 - I - 0x0314DD 0C:94CD: 5D        .byte $5D   ; 
- D 0 - I - 0x0314DE 0C:94CE: 4F        .byte $4F   ; 
- D 0 - I - 0x0314DF 0C:94CF: 6E        .byte $6E   ; 
- D 0 - I - 0x0314E0 0C:94D0: 3F        .byte $3F   ; 
- D 0 - I - 0x0314E1 0C:94D1: 8E        .byte $8E   ; 
- D 0 - I - 0x0314E2 0C:94D2: 5F        .byte $5F   ; 
- D 0 - I - 0x0314E3 0C:94D3: 7E        .byte $7E   ; 
- D 0 - I - 0x0314E4 0C:94D4: 03        .byte $03   ; 
- D 0 - I - 0x0314E5 0C:94D5: 6D        .byte $6D   ; 
- D 0 - I - 0x0314E6 0C:94D6: 3E        .byte $3E   ; 
- D 0 - I - 0x0314E7 0C:94D7: 7F        .byte $7F   ; 
- D 0 - I - 0x0314E8 0C:94D8: 3E        .byte $3E   ; 
- D 0 - I - 0x0314E9 0C:94D9: 7E        .byte $7E   ; 
- D 0 - I - 0x0314EA 0C:94DA: 2D        .byte $2D   ; 
- D 0 - I - 0x0314EB 0C:94DB: 5F        .byte $5F   ; 
- D 0 - I - 0x0314EC 0C:94DC: 2E        .byte $2E   ; 
- D 0 - I - 0x0314ED 0C:94DD: 4F        .byte $4F   ; 
- D 0 - I - 0x0314EE 0C:94DE: 2F        .byte $2F   ; 
- D 0 - I - 0x0314EF 0C:94DF: 3E        .byte $3E   ; 
- D 0 - I - 0x0314F0 0C:94E0: 2E        .byte $2E   ; 
- D 0 - I - 0x0314F1 0C:94E1: 3F        .byte $3F   ; 
- D 0 - I - 0x0314F2 0C:94E2: 1E        .byte $1E   ; 
- D 0 - I - 0x0314F3 0C:94E3: 2E        .byte $2E   ; 
- D 0 - I - 0x0314F4 0C:94E4: 2F        .byte $2F   ; 
- D 0 - I - 0x0314F5 0C:94E5: 1E        .byte $1E   ; 
- D 0 - I - 0x0314F6 0C:94E6: 2E        .byte $2E   ; 
- D 0 - I - 0x0314F7 0C:94E7: 1E        .byte $1E   ; 
- D 0 - I - 0x0314F8 0C:94E8: 1F        .byte $1F   ; 
- D 0 - I - 0x0314F9 0C:94E9: 1F        .byte $1F   ; 
- D 0 - I - 0x0314FA 0C:94EA: FF        .byte con_se_cb_1_FF   ; 



off_ch_03_94EB_09_FF:
- D 0 - I - 0x0314FB 0C:94EB: FF        .byte con_se_cb_1_FF   ; 



off_ch_06_94EC_09:
- D 0 - I - 0x0314FC 0C:94EC: 02        .byte $02   ; 
- D 0 - I - 0x0314FD 0C:94ED: 8D        .byte $8D   ; 
- D 0 - I - 0x0314FE 0C:94EE: 01        .byte $01   ; 
- D 0 - I - 0x0314FF 0C:94EF: 00        .byte $00   ; 
- D 0 - I - 0x031500 0C:94F0: 00        .byte $00   ; 
- D 0 - I - 0x031501 0C:94F1: 02        .byte $02   ; 
- D 0 - I - 0x031502 0C:94F2: 8A        .byte $8A   ; 
- D 0 - I - 0x031503 0C:94F3: 33        .byte $33   ; 
- D 0 - I - 0x031504 0C:94F4: FF        .byte con_se_cb_1_FF   ; 



off_ch_03_94F5_0B:
- D 0 - I - 0x031505 0C:94F5: 01        .byte $01   ; 
- D 0 - I - 0x031506 0C:94F6: 30        .byte $30   ; 
- D 0 - I - 0x031507 0C:94F7: 88        .byte $88   ; 
- D 0 - I - 0x031508 0C:94F8: 30        .byte $30   ; 
- D 0 - I - 0x031509 0C:94F9: F0        .byte $F0   ; 
- D 0 - I - 0x03150A 0C:94FA: 00        .byte $00   ; 
- D 0 - I - 0x03150B 0C:94FB: 00        .byte $00   ; 
- D 0 - I - 0x03150C 0C:94FC: 01        .byte $01   ; 
- D 0 - I - 0x03150D 0C:94FD: F0        .byte $F0   ; 
- D 0 - I - 0x03150E 0C:94FE: 88        .byte $88   ; 
- D 0 - I - 0x03150F 0C:94FF: 20        .byte $20   ; 
- D 0 - I - 0x031510 0C:9500: 0A        .byte $0A   ; 
- D 0 - I - 0x031511 0C:9501: 10        .byte $10   ; 
- D 0 - I - 0x031512 0C:9502: 0B        .byte $0B   ; 
- D 0 - I - 0x031513 0C:9503: FF        .byte con_se_cb_1_FF   ; 



off_ch_06_9504_0B:
- D 0 - I - 0x031514 0C:9504: 01        .byte $01   ; 
- D 0 - I - 0x031515 0C:9505: AE        .byte $AE   ; 
- D 0 - I - 0x031516 0C:9506: 00        .byte $00   ; 
- D 0 - I - 0x031517 0C:9507: 00        .byte $00   ; 
- D 0 - I - 0x031518 0C:9508: 01        .byte $01   ; 
- D 0 - I - 0x031519 0C:9509: AA        .byte $AA   ; 
- D 0 - I - 0x03151A 0C:950A: 93        .byte $93   ; 
- D 0 - I - 0x03151B 0C:950B: FF        .byte con_se_cb_1_FF   ; 


; bzk garbage
- - - - - - 0x03151C 0C:950C: FF        .byte $FF   ; 
- - - - - - 0x03151D 0C:950D: 01        .byte $01   ; 
- - - - - - 0x03151E 0C:950E: 41        .byte $41   ; 
- - - - - - 0x03151F 0C:950F: 73        .byte $73   ; 
- - - - - - 0x031520 0C:9510: B5        .byte $B5   ; 
- - - - - - 0x031521 0C:9511: E7        .byte $E7   ; 
- - - - - - 0x031522 0C:9512: 02        .byte $02   ; 
- - - - - - 0x031523 0C:9513: 48        .byte $48   ; 
- - - - - - 0x031524 0C:9514: F6        .byte $F6   ; 
- - - - - - 0x031525 0C:9515: 34        .byte $34   ; 
- - - - - - 0x031526 0C:9516: F2        .byte $F2   ; 
- - - - - - 0x031527 0C:9517: FF        .byte $FF   ; 



off_ch_03_9518_1C:
- D 0 - I - 0x031528 0C:9518: 07        .byte $07   ; 
- D 0 - I - 0x031529 0C:9519: B0        .byte $B0   ; 
- D 0 - I - 0x03152A 0C:951A: 9B        .byte $9B   ; 
- D 0 - I - 0x03152B 0C:951B: B0        .byte $B0   ; 
- D 0 - I - 0x03152C 0C:951C: 55        .byte $55   ; 
- D 0 - I - 0x03152D 0C:951D: 81        .byte $81   ; 
- D 0 - I - 0x03152E 0C:951E: 00        .byte $00   ; 
- D 0 - I - 0x03152F 0C:951F: 70        .byte $70   ; 
- D 0 - I - 0x031530 0C:9520: 88        .byte $88   ; 
- D 0 - I - 0x031531 0C:9521: 51        .byte $51   ; 
- D 0 - I - 0x031532 0C:9522: 00        .byte $00   ; 
- D 0 - I - 0x031533 0C:9523: 31        .byte $31   ; 
- D 0 - I - 0x031534 0C:9524: 22        .byte $22   ; 
- D 0 - I - 0x031535 0C:9525: 21        .byte $21   ; 
- D 0 - I - 0x031536 0C:9526: 44        .byte $44   ; 
- D 0 - I - 0x031537 0C:9527: 11        .byte $11   ; 
- D 0 - I - 0x031538 0C:9528: 66        .byte $66   ; 
- D 0 - I - 0x031539 0C:9529: FF        .byte con_se_cb_1_FF   ; 



off_ch_03_952A_0C:
- D 0 - I - 0x03153A 0C:952A: 04        .byte $04   ; 
- D 0 - I - 0x03153B 0C:952B: 70        .byte $70   ; 
- D 0 - I - 0x03153C 0C:952C: 8A        .byte $8A   ; 
- D 0 - I - 0x03153D 0C:952D: 00        .byte $00   ; 
- D 0 - I - 0x03153E 0C:952E: 01        .byte $01   ; 
- D 0 - I - 0x03153F 0C:952F: 70        .byte $70   ; 
- D 0 - I - 0x031540 0C:9530: 8A        .byte $8A   ; 
- D 0 - I - 0x031541 0C:9531: D3        .byte $D3   ; 
- D 0 - I - 0x031542 0C:9532: CC        .byte $CC   ; 
- D 0 - I - 0x031543 0C:9533: 83        .byte $83   ; 
- D 0 - I - 0x031544 0C:9534: 55        .byte $55   ; 
- D 0 - I - 0x031545 0C:9535: B3        .byte $B3   ; 
- D 0 - I - 0x031546 0C:9536: CC        .byte $CC   ; 
- D 0 - I - 0x031547 0C:9537: 63        .byte $63   ; 
- D 0 - I - 0x031548 0C:9538: 55        .byte $55   ; 
- D 0 - I - 0x031549 0C:9539: 93        .byte $93   ; 
- D 0 - I - 0x03154A 0C:953A: CC        .byte $CC   ; 
- D 0 - I - 0x03154B 0C:953B: 33        .byte $33   ; 
- D 0 - I - 0x03154C 0C:953C: 55        .byte $55   ; 
- D 0 - I - 0x03154D 0C:953D: 03        .byte $03   ; 
- D 0 - I - 0x03154E 0C:953E: B0        .byte $B0   ; 
- D 0 - I - 0x03154F 0C:953F: 82        .byte $82   ; 
- D 0 - I - 0x031550 0C:9540: D1        .byte $D1   ; 
- D 0 - I - 0x031551 0C:9541: 66        .byte $66   ; 
- D 0 - I - 0x031552 0C:9542: D1        .byte $D1   ; 
- D 0 - I - 0x031553 0C:9543: 99        .byte $99   ; 
- D 0 - I - 0x031554 0C:9544: C1        .byte $C1   ; 
- D 0 - I - 0x031555 0C:9545: 66        .byte $66   ; 
- D 0 - I - 0x031556 0C:9546: B1        .byte $B1   ; 
- D 0 - I - 0x031557 0C:9547: 99        .byte $99   ; 
- D 0 - I - 0x031558 0C:9548: A1        .byte $A1   ; 
- D 0 - I - 0x031559 0C:9549: 66        .byte $66   ; 
- D 0 - I - 0x03155A 0C:954A: 91        .byte $91   ; 
- D 0 - I - 0x03155B 0C:954B: 99        .byte $99   ; 
- D 0 - I - 0x03155C 0C:954C: 81        .byte $81   ; 
- D 0 - I - 0x03155D 0C:954D: 66        .byte $66   ; 
- D 0 - I - 0x03155E 0C:954E: 71        .byte $71   ; 
- D 0 - I - 0x03155F 0C:954F: 99        .byte $99   ; 
- D 0 - I - 0x031560 0C:9550: 51        .byte $51   ; 
- D 0 - I - 0x031561 0C:9551: 66        .byte $66   ; 
- D 0 - I - 0x031562 0C:9552: 31        .byte $31   ; 
- D 0 - I - 0x031563 0C:9553: 99        .byte $99   ; 
- D 0 - I - 0x031564 0C:9554: 21        .byte $21   ; 
- D 0 - I - 0x031565 0C:9555: 66        .byte $66   ; 
- D 0 - I - 0x031566 0C:9556: 21        .byte $21   ; 
- D 0 - I - 0x031567 0C:9557: 99        .byte $99   ; 
- D 0 - I - 0x031568 0C:9558: 11        .byte $11   ; 
- D 0 - I - 0x031569 0C:9559: 66        .byte $66   ; 
- D 0 - I - 0x03156A 0C:955A: 11        .byte $11   ; 
- D 0 - I - 0x03156B 0C:955B: 99        .byte $99   ; 
- D 0 - I - 0x03156C 0C:955C: FF        .byte con_se_cb_1_FF   ; 



off_ch_06_955D_0C:
- D 0 - I - 0x03156D 0C:955D: 04        .byte $04   ; 
- D 0 - I - 0x03156E 0C:955E: 00        .byte $00   ; 
- D 0 - I - 0x03156F 0C:955F: 01        .byte $01   ; 
- D 0 - I - 0x031570 0C:9560: 00        .byte $00   ; 
- D 0 - I - 0x031571 0C:9561: 01        .byte $01   ; 
- D 0 - I - 0x031572 0C:9562: BD        .byte $BD   ; 
- D 0 - I - 0x031573 0C:9563: 03        .byte $03   ; 
- D 0 - I - 0x031574 0C:9564: 8F        .byte $8F   ; 
- D 0 - I - 0x031575 0C:9565: 78        .byte $78   ; 
- D 0 - I - 0x031576 0C:9566: 6F        .byte $6F   ; 
- D 0 - I - 0x031577 0C:9567: 02        .byte $02   ; 
- D 0 - I - 0x031578 0C:9568: 48        .byte $48   ; 
- D 0 - I - 0x031579 0C:9569: 6F        .byte $6F   ; 
- D 0 - I - 0x03157A 0C:956A: 48        .byte $48   ; 
- D 0 - I - 0x03157B 0C:956B: 2F        .byte $2F   ; 
- D 0 - I - 0x03157C 0C:956C: 28        .byte $28   ; 
- D 0 - I - 0x03157D 0C:956D: 1F        .byte $1F   ; 
- D 0 - I - 0x03157E 0C:956E: 18        .byte $18   ; 
- D 0 - I - 0x03157F 0C:956F: 1F        .byte $1F   ; 
- D 0 - I - 0x031580 0C:9570: 18        .byte $18   ; 
- D 0 - I - 0x031581 0C:9571: 1F        .byte $1F   ; 
- D 0 - I - 0x031582 0C:9572: 18        .byte $18   ; 
- D 0 - I - 0x031583 0C:9573: 1F        .byte $1F   ; 
- D 0 - I - 0x031584 0C:9574: FF        .byte con_se_cb_1_FF   ; 



off_ch_06_9575_34:
- D 0 - I - 0x031585 0C:9575: 01        .byte $01   ; 
- D 0 - I - 0x031586 0C:9576: D9        .byte $D9   ; 
- D 0 - I - 0x031587 0C:9577: 02        .byte $02   ; 
- D 0 - I - 0x031588 0C:9578: BE        .byte $BE   ; 
- D 0 - I - 0x031589 0C:9579: AF        .byte $AF   ; 
- D 0 - I - 0x03158A 0C:957A: 04        .byte $04   ; 
- D 0 - I - 0x03158B 0C:957B: CA        .byte $CA   ; 
- D 0 - I - 0x03158C 0C:957C: C8        .byte $C8   ; 
- D 0 - I - 0x03158D 0C:957D: 01        .byte $01   ; 
- D 0 - I - 0x03158E 0C:957E: 00        .byte $00   ; 
- D 0 - I - 0x03158F 0C:957F: 06        .byte $06   ; 
- D 0 - I - 0x031590 0C:9580: 86        .byte $86   ; 
- D 0 - I - 0x031591 0C:9581: 01        .byte $01   ; 
- D 0 - I - 0x031592 0C:9582: 00        .byte $00   ; 
- D 0 - I - 0x031593 0C:9583: 05        .byte $05   ; 
- D 0 - I - 0x031594 0C:9584: 64        .byte $64   ; 
- D 0 - I - 0x031595 0C:9585: 01        .byte $01   ; 
- D 0 - I - 0x031596 0C:9586: 00        .byte $00   ; 
- D 0 - I - 0x031597 0C:9587: 04        .byte $04   ; 
- D 0 - I - 0x031598 0C:9588: 33        .byte $33   ; 
- D 0 - I - 0x031599 0C:9589: 01        .byte $01   ; 
- D 0 - I - 0x03159A 0C:958A: 00        .byte $00   ; 
- D 0 - I - 0x03159B 0C:958B: 03        .byte $03   ; 
- D 0 - I - 0x03159C 0C:958C: 12        .byte $12   ; 
- D 0 - I - 0x03159D 0C:958D: 01        .byte $01   ; 
- D 0 - I - 0x03159E 0C:958E: 00        .byte $00   ; 
- D 0 - I - 0x03159F 0C:958F: 02        .byte $02   ; 
- D 0 - I - 0x0315A0 0C:9590: 11        .byte $11   ; 
- D 0 - I - 0x0315A1 0C:9591: FF        .byte con_se_cb_1_FF   ; 



off_ch_03_9592_33_FF:
- D 0 - I - 0x0315A2 0C:9592: FF        .byte con_se_cb_1_FF   ; 



off_ch_06_9593_33:
- D 0 - I - 0x0315A3 0C:9593: 05        .byte $05   ; 
- D 0 - I - 0x0315A4 0C:9594: BD        .byte $BD   ; 
- D 0 - I - 0x0315A5 0C:9595: 01        .byte $01   ; 
- D 0 - I - 0x0315A6 0C:9596: BA        .byte $BA   ; 
- D 0 - I - 0x0315A7 0C:9597: BD        .byte $BD   ; 
- D 0 - I - 0x0315A8 0C:9598: BC        .byte $BC   ; 
- D 0 - I - 0x0315A9 0C:9599: BB        .byte $BB   ; 
- D 0 - I - 0x0315AA 0C:959A: BA        .byte $BA   ; 
- D 0 - I - 0x0315AB 0C:959B: B9        .byte $B9   ; 
- D 0 - I - 0x0315AC 0C:959C: B8        .byte $B8   ; 
- D 0 - I - 0x0315AD 0C:959D: B7        .byte $B7   ; 
- D 0 - I - 0x0315AE 0C:959E: C6        .byte $C6   ; 
- D 0 - I - 0x0315AF 0C:959F: C5        .byte $C5   ; 
- D 0 - I - 0x0315B0 0C:95A0: A4        .byte $A4   ; 
- D 0 - I - 0x0315B1 0C:95A1: A3        .byte $A3   ; 
- D 0 - I - 0x0315B2 0C:95A2: A2        .byte $A2   ; 
- D 0 - I - 0x0315B3 0C:95A3: A1        .byte $A1   ; 
- D 0 - I - 0x0315B4 0C:95A4: FF        .byte con_se_cb_1_FF   ; 



off_ch_03_95A5_4B:
- D 0 - I - 0x0315B5 0C:95A5: 05        .byte $05   ; 
- D 0 - I - 0x0315B6 0C:95A6: B0        .byte $B0   ; 
- D 0 - I - 0x0315B7 0C:95A7: 88        .byte $88   ; 
- D 0 - I - 0x0315B8 0C:95A8: B0        .byte $B0   ; 
- D 0 - I - 0x0315B9 0C:95A9: 64        .byte $64   ; 
- D 0 - I - 0x0315BA 0C:95AA: B0        .byte $B0   ; 
- D 0 - I - 0x0315BB 0C:95AB: 4B        .byte $4B   ; 
- D 0 - I - 0x0315BC 0C:95AC: B0        .byte $B0   ; 
- D 0 - I - 0x0315BD 0C:95AD: 3C        .byte $3C   ; 
- D 0 - I - 0x0315BE 0C:95AE: B0        .byte $B0   ; 
- D 0 - I - 0x0315BF 0C:95AF: 4B        .byte $4B   ; 
- D 0 - I - 0x0315C0 0C:95B0: B0        .byte $B0   ; 
- D 0 - I - 0x0315C1 0C:95B1: 3C        .byte $3C   ; 
- D 0 - I - 0x0315C2 0C:95B2: B0        .byte $B0   ; 
- D 0 - I - 0x0315C3 0C:95B3: 64        .byte $64   ; 
- D 0 - I - 0x0315C4 0C:95B4: B0        .byte $B0   ; 
- D 0 - I - 0x0315C5 0C:95B5: 25        .byte $25   ; 
- D 0 - I - 0x0315C6 0C:95B6: 00        .byte $00   ; 
- D 0 - I - 0x0315C7 0C:95B7: 40        .byte $40   ; 
- D 0 - I - 0x0315C8 0C:95B8: 25        .byte $25   ; 
- D 0 - I - 0x0315C9 0C:95B9: 00        .byte $00   ; 
- D 0 - I - 0x0315CA 0C:95BA: 10        .byte $10   ; 
- D 0 - I - 0x0315CB 0C:95BB: 25        .byte $25   ; 
- D 0 - I - 0x0315CC 0C:95BC: FF        .byte con_se_cb_1_FF   ; 



off_ch_06_95BD_4B_FF:
- D 0 - I - 0x0315CD 0C:95BD: FF        .byte con_se_cb_1_FF   ; 



off_ch_06_95BE_13:
- D 0 - I - 0x0315CE 0C:95BE: 01        .byte $01   ; 
- D 0 - I - 0x0315CF 0C:95BF: 41        .byte $41   ; 
- D 0 - I - 0x0315D0 0C:95C0: 73        .byte $73   ; 
- D 0 - I - 0x0315D1 0C:95C1: B5        .byte $B5   ; 
- D 0 - I - 0x0315D2 0C:95C2: D7        .byte $D7   ; 
- D 0 - I - 0x0315D3 0C:95C3: 02        .byte $02   ; 
- D 0 - I - 0x0315D4 0C:95C4: 38        .byte $38   ; 
- D 0 - I - 0x0315D5 0C:95C5: C6        .byte $C6   ; 
- D 0 - I - 0x0315D6 0C:95C6: 24        .byte $24   ; 
- D 0 - I - 0x0315D7 0C:95C7: C2        .byte $C2   ; 
- D 0 - I - 0x0315D8 0C:95C8: FF        .byte con_se_cb_1_FF   ; 



off_ch_06_95C9_14:
- D 0 - I - 0x0315D9 0C:95C9: 01        .byte $01   ; 
- D 0 - I - 0x0315DA 0C:95CA: 00        .byte $00   ; 
- D 0 - I - 0x0315DB 0C:95CB: 40        .byte $40   ; 
- D 0 - I - 0x0315DC 0C:95CC: 81        .byte $81   ; 
- D 0 - I - 0x0315DD 0C:95CD: 92        .byte $92   ; 
- D 0 - I - 0x0315DE 0C:95CE: D6        .byte $D6   ; 
- D 0 - I - 0x0315DF 0C:95CF: 8B        .byte $8B   ; 
- D 0 - I - 0x0315E0 0C:95D0: 5B        .byte $5B   ; 
- D 0 - I - 0x0315E1 0C:95D1: 3C        .byte $3C   ; 
- D 0 - I - 0x0315E2 0C:95D2: FF        .byte con_se_cb_1_FF   ; 



off_ch_06_95D3_15:
- D 0 - I - 0x0315E3 0C:95D3: 01        .byte $01   ; 
- D 0 - I - 0x0315E4 0C:95D4: 11        .byte $11   ; 
- D 0 - I - 0x0315E5 0C:95D5: 33        .byte $33   ; 
- D 0 - I - 0x0315E6 0C:95D6: 65        .byte $65   ; 
- D 0 - I - 0x0315E7 0C:95D7: 97        .byte $97   ; 
- D 0 - I - 0x0315E8 0C:95D8: 02        .byte $02   ; 
- D 0 - I - 0x0315E9 0C:95D9: 18        .byte $18   ; 
- D 0 - I - 0x0315EA 0C:95DA: A6        .byte $A6   ; 
- D 0 - I - 0x0315EB 0C:95DB: 14        .byte $14   ; 
- D 0 - I - 0x0315EC 0C:95DC: A1        .byte $A1   ; 
- D 0 - I - 0x0315ED 0C:95DD: 00        .byte $00   ; 
- D 0 - I - 0x0315EE 0C:95DE: 00        .byte $00   ; 
- D 0 - I - 0x0315EF 0C:95DF: FF        .byte con_se_cb_1_FF   ; 



off_ch_03_95E0_16:
- D 0 - I - 0x0315F0 0C:95E0: 03        .byte $03   ; 
- D 0 - I - 0x0315F1 0C:95E1: B0        .byte $B0   ; 
- D 0 - I - 0x0315F2 0C:95E2: 88        .byte $88   ; 
- D 0 - I - 0x0315F3 0C:95E3: C0        .byte $C0   ; 
- D 0 - I - 0x0315F4 0C:95E4: 15        .byte $15   ; 
- D 0 - I - 0x0315F5 0C:95E5: C0        .byte $C0   ; 
- D 0 - I - 0x0315F6 0C:95E6: 10        .byte $10   ; 
- D 0 - I - 0x0315F7 0C:95E7: C0        .byte $C0   ; 
- D 0 - I - 0x0315F8 0C:95E8: 2A        .byte $2A   ; 
- D 0 - I - 0x0315F9 0C:95E9: C0        .byte $C0   ; 
- D 0 - I - 0x0315FA 0C:95EA: 20        .byte $20   ; 
- D 0 - I - 0x0315FB 0C:95EB: 02        .byte $02   ; 
- D 0 - I - 0x0315FC 0C:95EC: B0        .byte $B0   ; 
- D 0 - I - 0x0315FD 0C:95ED: 88        .byte $88   ; 
- D 0 - I - 0x0315FE 0C:95EE: 00        .byte $00   ; 
- D 0 - I - 0x0315FF 0C:95EF: 03        .byte $03   ; 
- D 0 - I - 0x031600 0C:95F0: B0        .byte $B0   ; 
- D 0 - I - 0x031601 0C:95F1: 88        .byte $88   ; 
- D 0 - I - 0x031602 0C:95F2: B0        .byte $B0   ; 
- D 0 - I - 0x031603 0C:95F3: 10        .byte $10   ; 
- D 0 - I - 0x031604 0C:95F4: B0        .byte $B0   ; 
- D 0 - I - 0x031605 0C:95F5: 0A        .byte $0A   ; 
- D 0 - I - 0x031606 0C:95F6: B0        .byte $B0   ; 
- D 0 - I - 0x031607 0C:95F7: 25        .byte $25   ; 
- D 0 - I - 0x031608 0C:95F8: B0        .byte $B0   ; 
- D 0 - I - 0x031609 0C:95F9: 1A        .byte $1A   ; 
- D 0 - I - 0x03160A 0C:95FA: 00        .byte $00   ; 
- D 0 - I - 0x03160B 0C:95FB: 90        .byte $90   ; 
- D 0 - I - 0x03160C 0C:95FC: 15        .byte $15   ; 
- D 0 - I - 0x03160D 0C:95FD: 90        .byte $90   ; 
- D 0 - I - 0x03160E 0C:95FE: 10        .byte $10   ; 
- D 0 - I - 0x03160F 0C:95FF: FF        .byte con_se_cb_1_FF   ; 



off_ch_06_9600_16:
- D 0 - I - 0x031610 0C:9600: 03        .byte $03   ; 
- D 0 - I - 0x031611 0C:9601: C4        .byte $C4   ; 
- D 0 - I - 0x031612 0C:9602: C4        .byte $C4   ; 
- D 0 - I - 0x031613 0C:9603: C4        .byte $C4   ; 
- D 0 - I - 0x031614 0C:9604: 00        .byte $00   ; 
- D 0 - I - 0x031615 0C:9605: C4        .byte $C4   ; 
- D 0 - I - 0x031616 0C:9606: BD        .byte $BD   ; 
- D 0 - I - 0x031617 0C:9607: BF        .byte $BF   ; 
- D 0 - I - 0x031618 0C:9608: BE        .byte $BE   ; 
- D 0 - I - 0x031619 0C:9609: BF        .byte $BF   ; 
- D 0 - I - 0x03161A 0C:960A: BD        .byte $BD   ; 
- D 0 - I - 0x03161B 0C:960B: 8F        .byte $8F   ; 
- D 0 - I - 0x03161C 0C:960C: 8E        .byte $8E   ; 
- D 0 - I - 0x03161D 0C:960D: 8F        .byte $8F   ; 
- D 0 - I - 0x03161E 0C:960E: BE        .byte $BE   ; 
- D 0 - I - 0x03161F 0C:960F: BE        .byte $BE   ; 
- D 0 - I - 0x031620 0C:9610: BF        .byte $BF   ; 
- D 0 - I - 0x031621 0C:9611: AE        .byte $AE   ; 
- D 0 - I - 0x031622 0C:9612: AF        .byte $AF   ; 
- D 0 - I - 0x031623 0C:9613: AD        .byte $AD   ; 
- D 0 - I - 0x031624 0C:9614: 9F        .byte $9F   ; 
- D 0 - I - 0x031625 0C:9615: 9E        .byte $9E   ; 
- D 0 - I - 0x031626 0C:9616: 8D        .byte $8D   ; 
- D 0 - I - 0x031627 0C:9617: FF        .byte con_se_cb_1_FF   ; 



off_ch_03_9618_17:
- D 0 - I - 0x031628 0C:9618: 03        .byte $03   ; 
- D 0 - I - 0x031629 0C:9619: B0        .byte $B0   ; 
- D 0 - I - 0x03162A 0C:961A: 89        .byte $89   ; 
- D 0 - I - 0x03162B 0C:961B: 10        .byte $10   ; 
- D 0 - I - 0x03162C 0C:961C: 60        .byte $60   ; 
- D 0 - I - 0x03162D 0C:961D: 20        .byte $20   ; 
- D 0 - I - 0x03162E 0C:961E: 60        .byte $60   ; 
- D 0 - I - 0x03162F 0C:961F: 30        .byte $30   ; 
- D 0 - I - 0x031630 0C:9620: 60        .byte $60   ; 
- D 0 - I - 0x031631 0C:9621: 30        .byte $30   ; 
- D 0 - I - 0x031632 0C:9622: 60        .byte $60   ; 
- D 0 - I - 0x031633 0C:9623: 40        .byte $40   ; 
- D 0 - I - 0x031634 0C:9624: 60        .byte $60   ; 
- D 0 - I - 0x031635 0C:9625: 40        .byte $40   ; 
- D 0 - I - 0x031636 0C:9626: 60        .byte $60   ; 
- D 0 - I - 0x031637 0C:9627: 50        .byte $50   ; 
- D 0 - I - 0x031638 0C:9628: 60        .byte $60   ; 
- D 0 - I - 0x031639 0C:9629: 60        .byte $60   ; 
- D 0 - I - 0x03163A 0C:962A: 60        .byte $60   ; 
- D 0 - I - 0x03163B 0C:962B: 70        .byte $70   ; 
- D 0 - I - 0x03163C 0C:962C: 60        .byte $60   ; 
- D 0 - I - 0x03163D 0C:962D: 80        .byte $80   ; 
- D 0 - I - 0x03163E 0C:962E: 60        .byte $60   ; 
- D 0 - I - 0x03163F 0C:962F: 90        .byte $90   ; 
- D 0 - I - 0x031640 0C:9630: 60        .byte $60   ; 
- D 0 - I - 0x031641 0C:9631: A0        .byte $A0   ; 
- D 0 - I - 0x031642 0C:9632: 60        .byte $60   ; 
- D 0 - I - 0x031643 0C:9633: B0        .byte $B0   ; 
- D 0 - I - 0x031644 0C:9634: 60        .byte $60   ; 
- D 0 - I - 0x031645 0C:9635: C0        .byte $C0   ; 
- D 0 - I - 0x031646 0C:9636: 60        .byte $60   ; 
- D 0 - I - 0x031647 0C:9637: 80        .byte $80   ; 
- D 0 - I - 0x031648 0C:9638: 60        .byte $60   ; 
- D 0 - I - 0x031649 0C:9639: 60        .byte $60   ; 
- D 0 - I - 0x03164A 0C:963A: 60        .byte $60   ; 
- D 0 - I - 0x03164B 0C:963B: 50        .byte $50   ; 
- D 0 - I - 0x03164C 0C:963C: 60        .byte $60   ; 
- D 0 - I - 0x03164D 0C:963D: 40        .byte $40   ; 
- D 0 - I - 0x03164E 0C:963E: 60        .byte $60   ; 
- D 0 - I - 0x03164F 0C:963F: 30        .byte $30   ; 
- D 0 - I - 0x031650 0C:9640: 60        .byte $60   ; 
- D 0 - I - 0x031651 0C:9641: 20        .byte $20   ; 
- D 0 - I - 0x031652 0C:9642: 60        .byte $60   ; 
- D 0 - I - 0x031653 0C:9643: 10        .byte $10   ; 
- D 0 - I - 0x031654 0C:9644: 60        .byte $60   ; 
- D 0 - I - 0x031655 0C:9645: FF        .byte con_se_cb_1_FF   ; 



off_ch_03_9646_4A:
- D 0 - I - 0x031656 0C:9646: 02        .byte $02   ; 
- D 0 - I - 0x031657 0C:9647: B0        .byte $B0   ; 
- D 0 - I - 0x031658 0C:9648: 8B        .byte $8B   ; 
- D 0 - I - 0x031659 0C:9649: FB        .byte con_se_cb_1_FB   ; 
- D 0 - I - 0x03165A 0C:964A: E0        .byte $E0   ; 
- D 0 - I - 0x03165B 0C:964B: 35        .byte $35   ; 
- D 0 - I - 0x03165C 0C:964C: EA        .byte con_se_cb_2_EA, $83   ; 
- D 0 - I - 0x03165E 0C:964E: F0        .byte con_se_cb_1_F0 + $00   ; 
- D 0 - I - 0x03165F 0C:964F: 7F        .byte $7F   ; 
- D 0 - I - 0x031660 0C:9650: EA        .byte con_se_cb_2_EA, $8B   ; 
- D 0 - I - 0x031662 0C:9652: E0        .byte $E0   ; 
- D 0 - I - 0x031663 0C:9653: 35        .byte $35   ; 
- D 0 - I - 0x031664 0C:9654: EA        .byte con_se_cb_2_EA, $83   ; 
- D 0 - I - 0x031666 0C:9656: B0        .byte $B0   ; 
- D 0 - I - 0x031667 0C:9657: 7F        .byte $7F   ; 
- D 0 - I - 0x031668 0C:9658: EA        .byte con_se_cb_2_EA, $8B   ; 
- D 0 - I - 0x03166A 0C:965A: 90        .byte $90   ; 
- D 0 - I - 0x03166B 0C:965B: 35        .byte $35   ; 
- D 0 - I - 0x03166C 0C:965C: EA        .byte con_se_cb_2_EA, $83   ; 
- D 0 - I - 0x03166E 0C:965E: 70        .byte $70   ; 
- D 0 - I - 0x03166F 0C:965F: 7F        .byte $7F   ; 
- D 0 - I - 0x031670 0C:9660: EA        .byte con_se_cb_2_EA, $8B   ; 
- D 0 - I - 0x031672 0C:9662: 50        .byte $50   ; 
- D 0 - I - 0x031673 0C:9663: 35        .byte $35   ; 
- D 0 - I - 0x031674 0C:9664: EA        .byte con_se_cb_2_EA, $83   ; 
- D 0 - I - 0x031676 0C:9666: 30        .byte $30   ; 
- D 0 - I - 0x031677 0C:9667: 7F        .byte $7F   ; 
- D 0 - I - 0x031678 0C:9668: 08        .byte $08   ; 
- D 0 - I - 0x031679 0C:9669: B0        .byte $B0   ; 
- D 0 - I - 0x03167A 0C:966A: 8B        .byte $8B   ; 
- D 0 - I - 0x03167B 0C:966B: 10        .byte $10   ; 
- D 0 - I - 0x03167C 0C:966C: 35        .byte $35   ; 
- D 0 - I - 0x03167D 0C:966D: FE        .byte con_se_cb_1_FE, $02   ; 
- D 0 - I - 0x03167F 0C:966F: FF        .byte con_se_cb_1_FF   ; 



off_ch_03_9670_2C:
- D 0 - I - 0x031680 0C:9670: 02        .byte $02   ; 
- D 0 - I - 0x031681 0C:9671: B0        .byte $B0   ; 
- D 0 - I - 0x031682 0C:9672: 9A        .byte $9A   ; 
- D 0 - I - 0x031683 0C:9673: 11        .byte $11   ; 
- D 0 - I - 0x031684 0C:9674: C0        .byte $C0   ; 
- D 0 - I - 0x031685 0C:9675: 31        .byte $31   ; 
- D 0 - I - 0x031686 0C:9676: 80        .byte $80   ; 
- D 0 - I - 0x031687 0C:9677: 51        .byte $51   ; 
- D 0 - I - 0x031688 0C:9678: 40        .byte $40   ; 
- D 0 - I - 0x031689 0C:9679: 71        .byte $71   ; 
- D 0 - I - 0x03168A 0C:967A: 00        .byte $00   ; 
- D 0 - I - 0x03168B 0C:967B: 90        .byte $90   ; 
- D 0 - I - 0x03168C 0C:967C: C0        .byte $C0   ; 
- D 0 - I - 0x03168D 0C:967D: B0        .byte $B0   ; 
- D 0 - I - 0x03168E 0C:967E: 80        .byte $80   ; 
- D 0 - I - 0x03168F 0C:967F: 07        .byte $07   ; 
- D 0 - I - 0x031690 0C:9680: B0        .byte $B0   ; 
- D 0 - I - 0x031691 0C:9681: 9A        .byte $9A   ; 
- D 0 - I - 0x031692 0C:9682: C0        .byte $C0   ; 
- D 0 - I - 0x031693 0C:9683: E0        .byte $E0   ; 
- D 0 - I - 0x031694 0C:9684: A0        .byte $A0   ; 
- D 0 - I - 0x031695 0C:9685: E0        .byte $E0   ; 
- D 0 - I - 0x031696 0C:9686: 80        .byte $80   ; 
- D 0 - I - 0x031697 0C:9687: E0        .byte $E0   ; 
- D 0 - I - 0x031698 0C:9688: 60        .byte $60   ; 
- D 0 - I - 0x031699 0C:9689: E0        .byte $E0   ; 
- D 0 - I - 0x03169A 0C:968A: 40        .byte $40   ; 
- D 0 - I - 0x03169B 0C:968B: E0        .byte $E0   ; 
- D 0 - I - 0x03169C 0C:968C: 30        .byte $30   ; 
- D 0 - I - 0x03169D 0C:968D: E0        .byte $E0   ; 
- D 0 - I - 0x03169E 0C:968E: 20        .byte $20   ; 
- D 0 - I - 0x03169F 0C:968F: E0        .byte $E0   ; 
- D 0 - I - 0x0316A0 0C:9690: 10        .byte $10   ; 
- D 0 - I - 0x0316A1 0C:9691: E0        .byte $E0   ; 
- D 0 - I - 0x0316A2 0C:9692: FF        .byte con_se_cb_1_FF   ; 



off_ch_03_9693_18:
- D 0 - I - 0x0316A3 0C:9693: 04        .byte $04   ; 
- D 0 - I - 0x0316A4 0C:9694: 30        .byte $30   ; 
- D 0 - I - 0x0316A5 0C:9695: 8B        .byte $8B   ; 
- D 0 - I - 0x0316A6 0C:9696: C0        .byte $C0   ; 
- D 0 - I - 0x0316A7 0C:9697: 98        .byte $98   ; 
- D 0 - I - 0x0316A8 0C:9698: B0        .byte $B0   ; 
- D 0 - I - 0x0316A9 0C:9699: 43        .byte $43   ; 
- D 0 - I - 0x0316AA 0C:969A: A0        .byte $A0   ; 
- D 0 - I - 0x0316AB 0C:969B: AD        .byte $AD   ; 
- D 0 - I - 0x0316AC 0C:969C: 90        .byte $90   ; 
- D 0 - I - 0x0316AD 0C:969D: EE        .byte $EE   ; 
- D 0 - I - 0x0316AE 0C:969E: 80        .byte $80   ; 
- D 0 - I - 0x0316AF 0C:969F: BC        .byte $BC   ; 
- D 0 - I - 0x0316B0 0C:96A0: 70        .byte $70   ; 
- D 0 - I - 0x0316B1 0C:96A1: 54        .byte $54   ; 
- D 0 - I - 0x0316B2 0C:96A2: 60        .byte $60   ; 
- D 0 - I - 0x0316B3 0C:96A3: B4        .byte $B4   ; 
- D 0 - I - 0x0316B4 0C:96A4: 50        .byte $50   ; 
- D 0 - I - 0x0316B5 0C:96A5: A7        .byte $A7   ; 
- D 0 - I - 0x0316B6 0C:96A6: 40        .byte $40   ; 
- D 0 - I - 0x0316B7 0C:96A7: 3F        .byte $3F   ; 
- D 0 - I - 0x0316B8 0C:96A8: 30        .byte $30   ; 
- D 0 - I - 0x0316B9 0C:96A9: 67        .byte $67   ; 
- D 0 - I - 0x0316BA 0C:96AA: 30        .byte $30   ; 
- D 0 - I - 0x0316BB 0C:96AB: AA        .byte $AA   ; 
- D 0 - I - 0x0316BC 0C:96AC: 20        .byte $20   ; 
- D 0 - I - 0x0316BD 0C:96AD: 99        .byte $99   ; 
- D 0 - I - 0x0316BE 0C:96AE: 20        .byte $20   ; 
- D 0 - I - 0x0316BF 0C:96AF: 6F        .byte $6F   ; 
- D 0 - I - 0x0316C0 0C:96B0: 10        .byte $10   ; 
- D 0 - I - 0x0316C1 0C:96B1: 93        .byte $93   ; 
- D 0 - I - 0x0316C2 0C:96B2: 10        .byte $10   ; 
- D 0 - I - 0x0316C3 0C:96B3: 77        .byte $77   ; 
- D 0 - I - 0x0316C4 0C:96B4: FF        .byte con_se_cb_1_FF   ; 



off_ch_03_96B5_1B:
- D 0 - I - 0x0316C5 0C:96B5: 0B        .byte $0B   ; 
- D 0 - I - 0x0316C6 0C:96B6: B0        .byte $B0   ; 
- D 0 - I - 0x0316C7 0C:96B7: 92        .byte $92   ; 
- D 0 - I - 0x0316C8 0C:96B8: B0        .byte $B0   ; 
- D 0 - I - 0x0316C9 0C:96B9: 50        .byte $50   ; 
- D 0 - I - 0x0316CA 0C:96BA: 07        .byte $07   ; 
- D 0 - I - 0x0316CB 0C:96BB: B0        .byte $B0   ; 
- D 0 - I - 0x0316CC 0C:96BC: 8B        .byte $8B   ; 
- D 0 - I - 0x0316CD 0C:96BD: A0        .byte $A0   ; 
- D 0 - I - 0x0316CE 0C:96BE: 80        .byte $80   ; 
- D 0 - I - 0x0316CF 0C:96BF: 80        .byte $80   ; 
- D 0 - I - 0x0316D0 0C:96C0: 80        .byte $80   ; 
- D 0 - I - 0x0316D1 0C:96C1: 40        .byte $40   ; 
- D 0 - I - 0x0316D2 0C:96C2: 80        .byte $80   ; 
- D 0 - I - 0x0316D3 0C:96C3: 20        .byte $20   ; 
- D 0 - I - 0x0316D4 0C:96C4: 80        .byte $80   ; 
- D 0 - I - 0x0316D5 0C:96C5: 10        .byte $10   ; 
- D 0 - I - 0x0316D6 0C:96C6: 80        .byte $80   ; 
- D 0 - I - 0x0316D7 0C:96C7: FF        .byte con_se_cb_1_FF   ; 



off_ch_03_96C8_27:
- D 0 - I - 0x0316D8 0C:96C8: 01        .byte $01   ; 
- D 0 - I - 0x0316D9 0C:96C9: 30        .byte $30   ; 
- D 0 - I - 0x0316DA 0C:96CA: 88        .byte $88   ; 
- D 0 - I - 0x0316DB 0C:96CB: 30        .byte $30   ; 
- D 0 - I - 0x0316DC 0C:96CC: 10        .byte $10   ; 
- D 0 - I - 0x0316DD 0C:96CD: 30        .byte $30   ; 
- D 0 - I - 0x0316DE 0C:96CE: 20        .byte $20   ; 
- D 0 - I - 0x0316DF 0C:96CF: 30        .byte $30   ; 
- D 0 - I - 0x0316E0 0C:96D0: 10        .byte $10   ; 
- D 0 - I - 0x0316E1 0C:96D1: 00        .byte $00   ; 
- D 0 - I - 0x0316E2 0C:96D2: 02        .byte $02   ; 
- D 0 - I - 0x0316E3 0C:96D3: B0        .byte $B0   ; 
- D 0 - I - 0x0316E4 0C:96D4: 88        .byte $88   ; 
- D 0 - I - 0x0316E5 0C:96D5: 30        .byte $30   ; 
- D 0 - I - 0x0316E6 0C:96D6: 1F        .byte $1F   ; 
- D 0 - I - 0x0316E7 0C:96D7: 20        .byte $20   ; 
- D 0 - I - 0x0316E8 0C:96D8: 1A        .byte $1A   ; 
- D 0 - I - 0x0316E9 0C:96D9: 00        .byte $00   ; 
- D 0 - I - 0x0316EA 0C:96DA: 20        .byte $20   ; 
- D 0 - I - 0x0316EB 0C:96DB: 1F        .byte $1F   ; 
- D 0 - I - 0x0316EC 0C:96DC: 00        .byte $00   ; 
- D 0 - I - 0x0316ED 0C:96DD: 10        .byte $10   ; 
- D 0 - I - 0x0316EE 0C:96DE: 1D        .byte $1D   ; 
- D 0 - I - 0x0316EF 0C:96DF: 00        .byte $00   ; 
- D 0 - I - 0x0316F0 0C:96E0: 10        .byte $10   ; 
- D 0 - I - 0x0316F1 0C:96E1: 1D        .byte $1D   ; 
- D 0 - I - 0x0316F2 0C:96E2: FF        .byte con_se_cb_1_FF   ; 



off_ch_06_96E3_27:
- D 0 - I - 0x0316F3 0C:96E3: 05        .byte $05   ; 
- D 0 - I - 0x0316F4 0C:96E4: BD        .byte $BD   ; 
- D 0 - I - 0x0316F5 0C:96E5: 01        .byte $01   ; 
- D 0 - I - 0x0316F6 0C:96E6: BA        .byte $BA   ; 
- D 0 - I - 0x0316F7 0C:96E7: BD        .byte $BD   ; 
- D 0 - I - 0x0316F8 0C:96E8: BC        .byte $BC   ; 
- D 0 - I - 0x0316F9 0C:96E9: CB        .byte $CB   ; 
- D 0 - I - 0x0316FA 0C:96EA: CA        .byte $CA   ; 
- D 0 - I - 0x0316FB 0C:96EB: C9        .byte $C9   ; 
- D 0 - I - 0x0316FC 0C:96EC: C8        .byte $C8   ; 
- D 0 - I - 0x0316FD 0C:96ED: C7        .byte $C7   ; 
- D 0 - I - 0x0316FE 0C:96EE: B6        .byte $B6   ; 
- D 0 - I - 0x0316FF 0C:96EF: B5        .byte $B5   ; 
- D 0 - I - 0x031700 0C:96F0: C4        .byte $C4   ; 
- D 0 - I - 0x031701 0C:96F1: C3        .byte $C3   ; 
- D 0 - I - 0x031702 0C:96F2: C2        .byte $C2   ; 
- D 0 - I - 0x031703 0C:96F3: C1        .byte $C1   ; 
- D 0 - I - 0x031704 0C:96F4: FF        .byte con_se_cb_1_FF   ; 



off_ch_03_96F5_2B:
- D 0 - I - 0x031705 0C:96F5: 01        .byte $01   ; 
- D 0 - I - 0x031706 0C:96F6: 22        .byte $22   ; 
- D 0 - I - 0x031707 0C:96F7: 9D        .byte $9D   ; 
- D 0 - I - 0x031708 0C:96F8: 22        .byte $22   ; 
- D 0 - I - 0x031709 0C:96F9: 10        .byte $10   ; 
- D 0 - I - 0x03170A 0C:96FA: 10        .byte $10   ; 
- D 0 - I - 0x03170B 0C:96FB: 30        .byte $30   ; 
- D 0 - I - 0x03170C 0C:96FC: 20        .byte $20   ; 
- D 0 - I - 0x03170D 0C:96FD: 50        .byte $50   ; 
- D 0 - I - 0x03170E 0C:96FE: 40        .byte $40   ; 
- D 0 - I - 0x03170F 0C:96FF: 70        .byte $70   ; 
- D 0 - I - 0x031710 0C:9700: A6        .byte $A6   ; 
- D 0 - I - 0x031711 0C:9701: 11        .byte $11   ; 
- D 0 - I - 0x031712 0C:9702: 00        .byte $00   ; 
- D 0 - I - 0x031713 0C:9703: FF        .byte con_se_cb_1_FF   ; 



off_ch_06_9704_2B:
- D 0 - I - 0x031714 0C:9704: 03        .byte $03   ; 
- D 0 - I - 0x031715 0C:9705: BF        .byte $BF   ; 
- D 0 - I - 0x031716 0C:9706: BF        .byte $BF   ; 
- D 0 - I - 0x031717 0C:9707: AE        .byte $AE   ; 
- D 0 - I - 0x031718 0C:9708: BF        .byte $BF   ; 
- D 0 - I - 0x031719 0C:9709: B1        .byte $B1   ; 
- D 0 - I - 0x03171A 0C:970A: B2        .byte $B2   ; 
- D 0 - I - 0x03171B 0C:970B: B3        .byte $B3   ; 
- D 0 - I - 0x03171C 0C:970C: FF        .byte con_se_cb_1_FF   ; 



off_ch_03_970D_28:
- D 0 - I - 0x03171D 0C:970D: 01        .byte $01   ; 
- D 0 - I - 0x03171E 0C:970E: 70        .byte $70   ; 
- D 0 - I - 0x03171F 0C:970F: 88        .byte $88   ; 
- D 0 - I - 0x031720 0C:9710: ED        .byte con_se_cb_2_ED, $1A   ; 
- D 0 - I - 0x031722 0C:9712: 60        .byte $60   ; 
- D 0 - I - 0x031723 0C:9713: 40        .byte $40   ; 
- D 0 - I - 0x031724 0C:9714: 60        .byte $60   ; 
- D 0 - I - 0x031725 0C:9715: 80        .byte $80   ; 
- D 0 - I - 0x031726 0C:9716: 01        .byte $01   ; 
- D 0 - I - 0x031727 0C:9717: 70        .byte $70   ; 
- D 0 - I - 0x031728 0C:9718: 88        .byte $88   ; 
- D 0 - I - 0x031729 0C:9719: 90        .byte $90   ; 
- D 0 - I - 0x03172A 0C:971A: 31        .byte $31   ; 
- D 0 - I - 0x03172B 0C:971B: 50        .byte $50   ; 
- D 0 - I - 0x03172C 0C:971C: 30        .byte $30   ; 
- D 0 - I - 0x03172D 0C:971D: 80        .byte $80   ; 
- D 0 - I - 0x03172E 0C:971E: 30        .byte $30   ; 
- D 0 - I - 0x03172F 0C:971F: 40        .byte $40   ; 
- D 0 - I - 0x031730 0C:9720: 30        .byte $30   ; 
- D 0 - I - 0x031731 0C:9721: 70        .byte $70   ; 
- D 0 - I - 0x031732 0C:9722: 30        .byte $30   ; 
- D 0 - I - 0x031733 0C:9723: 30        .byte $30   ; 
- D 0 - I - 0x031734 0C:9724: 30        .byte $30   ; 
- D 0 - I - 0x031735 0C:9725: 50        .byte $50   ; 
- D 0 - I - 0x031736 0C:9726: 30        .byte $30   ; 
- D 0 - I - 0x031737 0C:9727: 20        .byte $20   ; 
- D 0 - I - 0x031738 0C:9728: 30        .byte $30   ; 
- D 0 - I - 0x031739 0C:9729: 30        .byte $30   ; 
- D 0 - I - 0x03173A 0C:972A: 30        .byte $30   ; 
- D 0 - I - 0x03173B 0C:972B: 10        .byte $10   ; 
- D 0 - I - 0x03173C 0C:972C: 30        .byte $30   ; 
- D 0 - I - 0x03173D 0C:972D: FF        .byte con_se_cb_1_FF   ; 



off_ch_06_972E_28:
- D 0 - I - 0x03173E 0C:972E: 01        .byte $01   ; 
- D 0 - I - 0x03173F 0C:972F: CE        .byte $CE   ; 
- D 0 - I - 0x031740 0C:9730: C8        .byte $C8   ; 
- D 0 - I - 0x031741 0C:9731: 02        .byte $02   ; 
- D 0 - I - 0x031742 0C:9732: B8        .byte $B8   ; 
- D 0 - I - 0x031743 0C:9733: 95        .byte $95   ; 
- D 0 - I - 0x031744 0C:9734: 34        .byte $34   ; 
- D 0 - I - 0x031745 0C:9735: FF        .byte con_se_cb_1_FF   ; 



off_ch_06_9736_2D:
- D 0 - I - 0x031746 0C:9736: 01        .byte $01   ; 
- D 0 - I - 0x031747 0C:9737: CF        .byte $CF   ; 
- D 0 - I - 0x031748 0C:9738: 0A        .byte $0A   ; 
- D 0 - I - 0x031749 0C:9739: CD        .byte $CD   ; 
- D 0 - I - 0x03174A 0C:973A: 03        .byte $03   ; 
- D 0 - I - 0x03174B 0C:973B: FB        .byte con_se_cb_1_FB   ; 
- D 0 - I - 0x03174C 0C:973C: B9        .byte $B9   ; 
- D 0 - I - 0x03174D 0C:973D: BF        .byte $BF   ; 
- D 0 - I - 0x03174E 0C:973E: FE        .byte con_se_cb_1_FE, $04   ; 
- D 0 - I - 0x031750 0C:9740: 0A        .byte $0A   ; 
- D 0 - I - 0x031751 0C:9741: CD        .byte $CD   ; 
- D 0 - I - 0x031752 0C:9742: 01        .byte $01   ; 
- D 0 - I - 0x031753 0C:9743: CF        .byte $CF   ; 
- D 0 - I - 0x031754 0C:9744: 03        .byte $03   ; 
- D 0 - I - 0x031755 0C:9745: CA        .byte $CA   ; 
- D 0 - I - 0x031756 0C:9746: CF        .byte $CF   ; 
- D 0 - I - 0x031757 0C:9747: 0A        .byte $0A   ; 
- D 0 - I - 0x031758 0C:9748: CD        .byte $CD   ; 
- D 0 - I - 0x031759 0C:9749: 01        .byte $01   ; 
- D 0 - I - 0x03175A 0C:974A: CF        .byte $CF   ; 
- D 0 - I - 0x03175B 0C:974B: 05        .byte $05   ; 
- D 0 - I - 0x03175C 0C:974C: CD        .byte $CD   ; 
- D 0 - I - 0x03175D 0C:974D: CD        .byte $CD   ; 
- D 0 - I - 0x03175E 0C:974E: CE        .byte $CE   ; 
- D 0 - I - 0x03175F 0C:974F: CD        .byte $CD   ; 
- D 0 - I - 0x031760 0C:9750: CE        .byte $CE   ; 
- D 0 - I - 0x031761 0C:9751: CD        .byte $CD   ; 
- D 0 - I - 0x031762 0C:9752: CE        .byte $CE   ; 
- D 0 - I - 0x031763 0C:9753: CD        .byte $CD   ; 
- D 0 - I - 0x031764 0C:9754: 9E        .byte $9E   ; 
- D 0 - I - 0x031765 0C:9755: 8D        .byte $8D   ; 
- D 0 - I - 0x031766 0C:9756: 7E        .byte $7E   ; 
- D 0 - I - 0x031767 0C:9757: 6D        .byte $6D   ; 
- D 0 - I - 0x031768 0C:9758: 5E        .byte $5E   ; 
- D 0 - I - 0x031769 0C:9759: 4D        .byte $4D   ; 
- D 0 - I - 0x03176A 0C:975A: 3E        .byte $3E   ; 
- D 0 - I - 0x03176B 0C:975B: 2D        .byte $2D   ; 
- D 0 - I - 0x03176C 0C:975C: 1E        .byte $1E   ; 
- D 0 - I - 0x03176D 0C:975D: 1D        .byte $1D   ; 
- D 0 - I - 0x03176E 0C:975E: FF        .byte con_se_cb_1_FF   ; 



off_ch_06_975F_2E:
- D 0 - I - 0x03176F 0C:975F: 01        .byte $01   ; 
- D 0 - I - 0x031770 0C:9760: CF        .byte $CF   ; 
- D 0 - I - 0x031771 0C:9761: 05        .byte $05   ; 
- D 0 - I - 0x031772 0C:9762: CD        .byte $CD   ; 
- D 0 - I - 0x031773 0C:9763: 03        .byte $03   ; 
- D 0 - I - 0x031774 0C:9764: FB        .byte con_se_cb_1_FB   ; 
- D 0 - I - 0x031775 0C:9765: B9        .byte $B9   ; 
- D 0 - I - 0x031776 0C:9766: BF        .byte $BF   ; 
- D 0 - I - 0x031777 0C:9767: FE        .byte con_se_cb_1_FE, $02   ; 
- D 0 - I - 0x031779 0C:9769: 02        .byte $02   ; 
- D 0 - I - 0x03177A 0C:976A: E9        .byte $E9   ; 
- D 0 - I - 0x03177B 0C:976B: 0C        .byte $0C   ; 
- D 0 - I - 0x03177C 0C:976C: BE        .byte $BE   ; 
- D 0 - I - 0x03177D 0C:976D: BD        .byte $BD   ; 
- D 0 - I - 0x03177E 0C:976E: 9D        .byte $9D   ; 
- D 0 - I - 0x03177F 0C:976F: 9E        .byte $9E   ; 
- D 0 - I - 0x031780 0C:9770: 7D        .byte $7D   ; 
- D 0 - I - 0x031781 0C:9771: 5D        .byte $5D   ; 
- D 0 - I - 0x031782 0C:9772: 4D        .byte $4D   ; 
- D 0 - I - 0x031783 0C:9773: 3D        .byte $3D   ; 
- D 0 - I - 0x031784 0C:9774: 2D        .byte $2D   ; 
- D 0 - I - 0x031785 0C:9775: 2D        .byte $2D   ; 
- D 0 - I - 0x031786 0C:9776: 1D        .byte $1D   ; 
- D 0 - I - 0x031787 0C:9777: FF        .byte con_se_cb_1_FF   ; 



off_ch_03_9778_49:
- D 0 - I - 0x031788 0C:9778: 01        .byte $01   ; 
- D 0 - I - 0x031789 0C:9779: B0        .byte $B0   ; 
- D 0 - I - 0x03178A 0C:977A: 88        .byte $88   ; 
- D 0 - I - 0x03178B 0C:977B: FB        .byte con_se_cb_1_FB   ; 
- D 0 - I - 0x03178C 0C:977C: 60        .byte $60   ; 
- D 0 - I - 0x03178D 0C:977D: 19        .byte $19   ; 
- D 0 - I - 0x03178E 0C:977E: 80        .byte $80   ; 
- D 0 - I - 0x03178F 0C:977F: 32        .byte $32   ; 
- D 0 - I - 0x031790 0C:9780: A0        .byte $A0   ; 
- D 0 - I - 0x031791 0C:9781: 32        .byte $32   ; 
- D 0 - I - 0x031792 0C:9782: A0        .byte $A0   ; 
- D 0 - I - 0x031793 0C:9783: 32        .byte $32   ; 
- D 0 - I - 0x031794 0C:9784: A0        .byte $A0   ; 
- D 0 - I - 0x031795 0C:9785: 32        .byte $32   ; 
- D 0 - I - 0x031796 0C:9786: 20        .byte $20   ; 
- D 0 - I - 0x031797 0C:9787: 32        .byte $32   ; 
- D 0 - I - 0x031798 0C:9788: 00        .byte $00   ; 
- D 0 - I - 0x031799 0C:9789: FE        .byte con_se_cb_1_FE, $04   ; 
- D 0 - I - 0x03179B 0C:978B: FB        .byte con_se_cb_1_FB   ; 
- D 0 - I - 0x03179C 0C:978C: 06        .byte $06   ; 
- D 0 - I - 0x03179D 0C:978D: B0        .byte $B0   ; 
- D 0 - I - 0x03179E 0C:978E: 88        .byte $88   ; 
- D 0 - I - 0x03179F 0C:978F: 00        .byte $00   ; 
- D 0 - I - 0x0317A0 0C:9790: 00        .byte $00   ; 
- D 0 - I - 0x0317A1 0C:9791: 30        .byte $30   ; 
- D 0 - I - 0x0317A2 0C:9792: 32        .byte $32   ; 
- D 0 - I - 0x0317A3 0C:9793: E8        .byte con_se_cb_2_E8, $02   ; 
- D 0 - I - 0x0317A5 0C:9795: FE        .byte con_se_cb_1_FE, $03   ; 
- - - - - - 0x0317A7 0C:9797: FF        .byte con_se_cb_1_FF   ; 



off_ch_03_9798_2F:
- D 0 - I - 0x0317A8 0C:9798: 03        .byte $03   ; 
- D 0 - I - 0x0317A9 0C:9799: B0        .byte $B0   ; 
- D 0 - I - 0x0317AA 0C:979A: 88        .byte $88   ; 
- D 0 - I - 0x0317AB 0C:979B: 11        .byte $11   ; 
- D 0 - I - 0x0317AC 0C:979C: 53        .byte $53   ; 
- D 0 - I - 0x0317AD 0C:979D: 20        .byte $20   ; 
- D 0 - I - 0x0317AE 0C:979E: FE        .byte $FE   ; 
- D 0 - I - 0x0317AF 0C:979F: 30        .byte $30   ; 
- D 0 - I - 0x0317B0 0C:97A0: E2        .byte $E2   ; 
- D 0 - I - 0x0317B1 0C:97A1: 40        .byte $40   ; 
- D 0 - I - 0x0317B2 0C:97A2: BE        .byte $BE   ; 
- D 0 - I - 0x0317B3 0C:97A3: 05        .byte $05   ; 
- D 0 - I - 0x0317B4 0C:97A4: B0        .byte $B0   ; 
- D 0 - I - 0x0317B5 0C:97A5: 88        .byte $88   ; 
- D 0 - I - 0x0317B6 0C:97A6: 60        .byte $60   ; 
- D 0 - I - 0x0317B7 0C:97A7: A9        .byte $A9   ; 
- D 0 - I - 0x0317B8 0C:97A8: 60        .byte $60   ; 
- D 0 - I - 0x0317B9 0C:97A9: E2        .byte $E2   ; 
- D 0 - I - 0x0317BA 0C:97AA: 61        .byte $61   ; 
- D 0 - I - 0x0317BB 0C:97AB: 53        .byte $53   ; 
- D 0 - I - 0x0317BC 0C:97AC: 40        .byte $40   ; 
- D 0 - I - 0x0317BD 0C:97AD: A9        .byte $A9   ; 
- D 0 - I - 0x0317BE 0C:97AE: 40        .byte $40   ; 
- D 0 - I - 0x0317BF 0C:97AF: E2        .byte $E2   ; 
- D 0 - I - 0x0317C0 0C:97B0: 41        .byte $41   ; 
- D 0 - I - 0x0317C1 0C:97B1: 53        .byte $53   ; 
- D 0 - I - 0x0317C2 0C:97B2: 30        .byte $30   ; 
- D 0 - I - 0x0317C3 0C:97B3: A9        .byte $A9   ; 
- D 0 - I - 0x0317C4 0C:97B4: 30        .byte $30   ; 
- D 0 - I - 0x0317C5 0C:97B5: E2        .byte $E2   ; 
- D 0 - I - 0x0317C6 0C:97B6: 31        .byte $31   ; 
- D 0 - I - 0x0317C7 0C:97B7: 53        .byte $53   ; 
- D 0 - I - 0x0317C8 0C:97B8: 20        .byte $20   ; 
- D 0 - I - 0x0317C9 0C:97B9: A9        .byte $A9   ; 
- D 0 - I - 0x0317CA 0C:97BA: 20        .byte $20   ; 
- D 0 - I - 0x0317CB 0C:97BB: E2        .byte $E2   ; 
- D 0 - I - 0x0317CC 0C:97BC: 21        .byte $21   ; 
- D 0 - I - 0x0317CD 0C:97BD: 53        .byte $53   ; 
- D 0 - I - 0x0317CE 0C:97BE: 10        .byte $10   ; 
- D 0 - I - 0x0317CF 0C:97BF: A9        .byte $A9   ; 
- D 0 - I - 0x0317D0 0C:97C0: 10        .byte $10   ; 
- D 0 - I - 0x0317D1 0C:97C1: E2        .byte $E2   ; 
- D 0 - I - 0x0317D2 0C:97C2: 11        .byte $11   ; 
- D 0 - I - 0x0317D3 0C:97C3: 53        .byte $53   ; 
- D 0 - I - 0x0317D4 0C:97C4: FF        .byte con_se_cb_1_FF   ; 



off_ch_06_97C5_2F:
- D 0 - I - 0x0317D5 0C:97C5: 05        .byte $05   ; 
- D 0 - I - 0x0317D6 0C:97C6: 00        .byte $00   ; 
- D 0 - I - 0x0317D7 0C:97C7: 01        .byte $01   ; 
- D 0 - I - 0x0317D8 0C:97C8: BD        .byte $BD   ; 
- D 0 - I - 0x0317D9 0C:97C9: 04        .byte $04   ; 
- D 0 - I - 0x0317DA 0C:97CA: BD        .byte $BD   ; 
- D 0 - I - 0x0317DB 0C:97CB: 05        .byte $05   ; 
- D 0 - I - 0x0317DC 0C:97CC: 9F        .byte $9F   ; 
- D 0 - I - 0x0317DD 0C:97CD: 06        .byte $06   ; 
- D 0 - I - 0x0317DE 0C:97CE: 8D        .byte $8D   ; 
- D 0 - I - 0x0317DF 0C:97CF: 6F        .byte $6F   ; 
- D 0 - I - 0x0317E0 0C:97D0: 5D        .byte $5D   ; 
- D 0 - I - 0x0317E1 0C:97D1: 4F        .byte $4F   ; 
- D 0 - I - 0x0317E2 0C:97D2: 3D        .byte $3D   ; 
- D 0 - I - 0x0317E3 0C:97D3: 2F        .byte $2F   ; 
- D 0 - I - 0x0317E4 0C:97D4: 1D        .byte $1D   ; 
- D 0 - I - 0x0317E5 0C:97D5: 1F        .byte $1F   ; 
- D 0 - I - 0x0317E6 0C:97D6: FF        .byte con_se_cb_1_FF   ; 



off_ch_06_97D7_22:
- D 0 - I - 0x0317E7 0C:97D7: 03        .byte $03   ; 
- D 0 - I - 0x0317E8 0C:97D8: DA        .byte $DA   ; 
- D 0 - I - 0x0317E9 0C:97D9: 01        .byte $01   ; 
- D 0 - I - 0x0317EA 0C:97DA: 00        .byte $00   ; 
- D 0 - I - 0x0317EB 0C:97DB: 02        .byte $02   ; 
- D 0 - I - 0x0317EC 0C:97DC: 00        .byte $00   ; 
- D 0 - I - 0x0317ED 0C:97DD: C8        .byte $C8   ; 
- D 0 - I - 0x0317EE 0C:97DE: B5        .byte $B5   ; 
- D 0 - I - 0x0317EF 0C:97DF: 94        .byte $94   ; 
- D 0 - I - 0x0317F0 0C:97E0: 85        .byte $85   ; 
- D 0 - I - 0x0317F1 0C:97E1: 74        .byte $74   ; 
- D 0 - I - 0x0317F2 0C:97E2: 62        .byte $62   ; 
- D 0 - I - 0x0317F3 0C:97E3: 41        .byte $41   ; 
- D 0 - I - 0x0317F4 0C:97E4: 32        .byte $32   ; 
- D 0 - I - 0x0317F5 0C:97E5: 22        .byte $22   ; 
- D 0 - I - 0x0317F6 0C:97E6: 07        .byte $07   ; 
- D 0 - I - 0x0317F7 0C:97E7: 00        .byte $00   ; 
- D 0 - I - 0x0317F8 0C:97E8: 09        .byte $09   ; 
- D 0 - I - 0x0317F9 0C:97E9: 61        .byte $61   ; 
- D 0 - I - 0x0317FA 0C:97EA: FF        .byte con_se_cb_1_FF   ; 



off_ch_06_97EB_23:
- D 0 - I - 0x0317FB 0C:97EB: 03        .byte $03   ; 
- D 0 - I - 0x0317FC 0C:97EC: DA        .byte $DA   ; 
- D 0 - I - 0x0317FD 0C:97ED: 06        .byte $06   ; 
- D 0 - I - 0x0317FE 0C:97EE: 00        .byte $00   ; 
- D 0 - I - 0x0317FF 0C:97EF: 04        .byte $04   ; 
- D 0 - I - 0x031800 0C:97F0: 42        .byte $42   ; 
- D 0 - I - 0x031801 0C:97F1: C2        .byte $C2   ; 
- D 0 - I - 0x031802 0C:97F2: C8        .byte $C8   ; 
- D 0 - I - 0x031803 0C:97F3: B5        .byte $B5   ; 
- D 0 - I - 0x031804 0C:97F4: 74        .byte $74   ; 
- D 0 - I - 0x031805 0C:97F5: 65        .byte $65   ; 
- D 0 - I - 0x031806 0C:97F6: 54        .byte $54   ; 
- D 0 - I - 0x031807 0C:97F7: 04        .byte $04   ; 
- D 0 - I - 0x031808 0C:97F8: C2        .byte $C2   ; 
- D 0 - I - 0x031809 0C:97F9: 62        .byte $62   ; 
- D 0 - I - 0x03180A 0C:97FA: 52        .byte $52   ; 
- D 0 - I - 0x03180B 0C:97FB: 32        .byte $32   ; 
- D 0 - I - 0x03180C 0C:97FC: 11        .byte $11   ; 
- D 0 - I - 0x03180D 0C:97FD: FF        .byte con_se_cb_1_FF   ; 



off_ch_06_97FE_30:
- D 0 - I - 0x03180E 0C:97FE: 03        .byte $03   ; 
- D 0 - I - 0x03180F 0C:97FF: CA        .byte $CA   ; 
- D 0 - I - 0x031810 0C:9800: 02        .byte $02   ; 
- D 0 - I - 0x031811 0C:9801: 00        .byte $00   ; 
- D 0 - I - 0x031812 0C:9802: BD        .byte $BD   ; 
- D 0 - I - 0x031813 0C:9803: 04        .byte $04   ; 
- D 0 - I - 0x031814 0C:9804: BF        .byte $BF   ; 
- D 0 - I - 0x031815 0C:9805: B8        .byte $B8   ; 
- D 0 - I - 0x031816 0C:9806: B9        .byte $B9   ; 
- D 0 - I - 0x031817 0C:9807: A5        .byte $A5   ; 
- D 0 - I - 0x031818 0C:9808: A9        .byte $A9   ; 
- D 0 - I - 0x031819 0C:9809: 88        .byte $88   ; 
- D 0 - I - 0x03181A 0C:980A: 86        .byte $86   ; 
- D 0 - I - 0x03181B 0C:980B: 68        .byte $68   ; 
- D 0 - I - 0x03181C 0C:980C: 69        .byte $69   ; 
- D 0 - I - 0x03181D 0C:980D: 48        .byte $48   ; 
- D 0 - I - 0x03181E 0C:980E: 35        .byte $35   ; 
- D 0 - I - 0x03181F 0C:980F: 23        .byte $23   ; 
- D 0 - I - 0x031820 0C:9810: 1E        .byte $1E   ; 
- D 0 - I - 0x031821 0C:9811: FF        .byte con_se_cb_1_FF   ; 



off_ch_06_9812_31:
- D 0 - I - 0x031822 0C:9812: 02        .byte $02   ; 
- D 0 - I - 0x031823 0C:9813: DA        .byte $DA   ; 
- D 0 - I - 0x031824 0C:9814: 04        .byte $04   ; 
- D 0 - I - 0x031825 0C:9815: 00        .byte $00   ; 
- D 0 - I - 0x031826 0C:9816: 03        .byte $03   ; 
- D 0 - I - 0x031827 0C:9817: 44        .byte $44   ; 
- D 0 - I - 0x031828 0C:9818: C9        .byte $C9   ; 
- D 0 - I - 0x031829 0C:9819: B7        .byte $B7   ; 
- D 0 - I - 0x03182A 0C:981A: 75        .byte $75   ; 
- D 0 - I - 0x03182B 0C:981B: 6E        .byte $6E   ; 
- D 0 - I - 0x03182C 0C:981C: 58        .byte $58   ; 
- D 0 - I - 0x03182D 0C:981D: 35        .byte $35   ; 
- D 0 - I - 0x03182E 0C:981E: 23        .byte $23   ; 
- D 0 - I - 0x03182F 0C:981F: 1F        .byte $1F   ; 
- D 0 - I - 0x031830 0C:9820: FF        .byte con_se_cb_1_FF   ; 



off_ch_03_9821_24:
- D 0 - I - 0x031831 0C:9821: 01        .byte $01   ; 
- D 0 - I - 0x031832 0C:9822: B0        .byte $B0   ; 
- D 0 - I - 0x031833 0C:9823: 88        .byte $88   ; 
- D 0 - I - 0x031834 0C:9824: B2        .byte $B2   ; 
- D 0 - I - 0x031835 0C:9825: 70        .byte $70   ; 
- D 0 - I - 0x031836 0C:9826: 53        .byte $53   ; 
- D 0 - I - 0x031837 0C:9827: 00        .byte $00   ; 
- D 0 - I - 0x031838 0C:9828: 62        .byte $62   ; 
- D 0 - I - 0x031839 0C:9829: 00        .byte $00   ; 
- D 0 - I - 0x03183A 0C:982A: 73        .byte $73   ; 
- D 0 - I - 0x03183B 0C:982B: 00        .byte $00   ; 
- D 0 - I - 0x03183C 0C:982C: 81        .byte $81   ; 
- D 0 - I - 0x03183D 0C:982D: 80        .byte $80   ; 
- D 0 - I - 0x03183E 0C:982E: 00        .byte $00   ; 
- D 0 - I - 0x03183F 0C:982F: 62        .byte $62   ; 
- D 0 - I - 0x031840 0C:9830: A0        .byte $A0   ; 
- D 0 - I - 0x031841 0C:9831: 81        .byte $81   ; 
- D 0 - I - 0x031842 0C:9832: C0        .byte $C0   ; 
- D 0 - I - 0x031843 0C:9833: 72        .byte $72   ; 
- D 0 - I - 0x031844 0C:9834: 1A        .byte $1A   ; 
- D 0 - I - 0x031845 0C:9835: 82        .byte $82   ; 
- D 0 - I - 0x031846 0C:9836: 40        .byte $40   ; 
- D 0 - I - 0x031847 0C:9837: 72        .byte $72   ; 
- D 0 - I - 0x031848 0C:9838: 6A        .byte $6A   ; 
- D 0 - I - 0x031849 0C:9839: 62        .byte $62   ; 
- D 0 - I - 0x03184A 0C:983A: D0        .byte $D0   ; 
- D 0 - I - 0x03184B 0C:983B: 55        .byte $55   ; 
- D 0 - I - 0x03184C 0C:983C: 00        .byte $00   ; 
- D 0 - I - 0x03184D 0C:983D: 46        .byte $46   ; 
- D 0 - I - 0x03184E 0C:983E: 60        .byte $60   ; 
- D 0 - I - 0x03184F 0C:983F: 42        .byte $42   ; 
- D 0 - I - 0x031850 0C:9840: 00        .byte $00   ; 
- D 0 - I - 0x031851 0C:9841: 33        .byte $33   ; 
- D 0 - I - 0x031852 0C:9842: 00        .byte $00   ; 
- D 0 - I - 0x031853 0C:9843: 00        .byte $00   ; 
- D 0 - I - 0x031854 0C:9844: 42        .byte $42   ; 
- D 0 - I - 0x031855 0C:9845: 40        .byte $40   ; 
- D 0 - I - 0x031856 0C:9846: 22        .byte $22   ; 
- D 0 - I - 0x031857 0C:9847: 64        .byte $64   ; 
- D 0 - I - 0x031858 0C:9848: 32        .byte $32   ; 
- D 0 - I - 0x031859 0C:9849: D0        .byte $D0   ; 
- D 0 - I - 0x03185A 0C:984A: 25        .byte $25   ; 
- D 0 - I - 0x03185B 0C:984B: 00        .byte $00   ; 
- D 0 - I - 0x03185C 0C:984C: 26        .byte $26   ; 
- D 0 - I - 0x03185D 0C:984D: 00        .byte $00   ; 
- D 0 - I - 0x03185E 0C:984E: 12        .byte $12   ; 
- D 0 - I - 0x03185F 0C:984F: 00        .byte $00   ; 
- D 0 - I - 0x031860 0C:9850: 13        .byte $13   ; 
- D 0 - I - 0x031861 0C:9851: 00        .byte $00   ; 
- D 0 - I - 0x031862 0C:9852: FF        .byte con_se_cb_1_FF   ; 



off_ch_06_9853_24:
- D 0 - I - 0x031863 0C:9853: 01        .byte $01   ; 
- D 0 - I - 0x031864 0C:9854: 00        .byte $00   ; 
- D 0 - I - 0x031865 0C:9855: A6        .byte $A6   ; 
- D 0 - I - 0x031866 0C:9856: BD        .byte $BD   ; 
- D 0 - I - 0x031867 0C:9857: BE        .byte $BE   ; 
- D 0 - I - 0x031868 0C:9858: BC        .byte $BC   ; 
- D 0 - I - 0x031869 0C:9859: FF        .byte con_se_cb_1_FF   ; 



off_ch_03_985A_3C:
- D 0 - I - 0x03186A 0C:985A: 01        .byte $01   ; 
- D 0 - I - 0x03186B 0C:985B: B0        .byte $B0   ; 
- D 0 - I - 0x03186C 0C:985C: 88        .byte $88   ; 
- D 0 - I - 0x03186D 0C:985D: D0        .byte $D0   ; 
- D 0 - I - 0x03186E 0C:985E: 7F        .byte $7F   ; 
- D 0 - I - 0x03186F 0C:985F: 01        .byte $01   ; 
- D 0 - I - 0x031870 0C:9860: 30        .byte $30   ; 
- D 0 - I - 0x031871 0C:9861: 88        .byte $88   ; 
- D 0 - I - 0x031872 0C:9862: D0        .byte $D0   ; 
- D 0 - I - 0x031873 0C:9863: 7F        .byte $7F   ; 
- D 0 - I - 0x031874 0C:9864: 00        .byte $00   ; 
- D 0 - I - 0x031875 0C:9865: 00        .byte $00   ; 
- D 0 - I - 0x031876 0C:9866: 00        .byte $00   ; 
- D 0 - I - 0x031877 0C:9867: 00        .byte $00   ; 
- D 0 - I - 0x031878 0C:9868: 01        .byte $01   ; 
- D 0 - I - 0x031879 0C:9869: B0        .byte $B0   ; 
- D 0 - I - 0x03187A 0C:986A: 88        .byte $88   ; 
- D 0 - I - 0x03187B 0C:986B: 20        .byte $20   ; 
- D 0 - I - 0x03187C 0C:986C: 7F        .byte $7F   ; 
- D 0 - I - 0x03187D 0C:986D: FF        .byte con_se_cb_1_FF   ; 



off_ch_06_986E_1D:
; bzk garbage
- - - - - - 0x03187E 0C:986E: 01        .byte $01   ; 
- - - - - - 0x03187F 0C:986F: BE        .byte $BE   ; 
- - - - - - 0x031880 0C:9870: BD        .byte $BD   ; 
- - - - - - 0x031881 0C:9871: BC        .byte $BC   ; 
- - - - - - 0x031882 0C:9872: 02        .byte $02   ; 
- - - - - - 0x031883 0C:9873: 77        .byte $77   ; 
- - - - - - 0x031884 0C:9874: 78        .byte $78   ; 
- - - - - - 0x031885 0C:9875: 89        .byte $89   ; 
- - - - - - 0x031886 0C:9876: 9A        .byte $9A   ; 
- - - - - - 0x031887 0C:9877: 9B        .byte $9B   ; 
- - - - - - 0x031888 0C:9878: 9C        .byte $9C   ; 
- - - - - - 0x031889 0C:9879: 9D        .byte $9D   ; 
- - - - - - 0x03188A 0C:987A: 03        .byte $03   ; 
- - - - - - 0x03188B 0C:987B: BE        .byte $BE   ; 
- - - - - - 0x03188C 0C:987C: BE        .byte $BE   ; 
- - - - - - 0x03188D 0C:987D: AE        .byte $AE   ; 
- - - - - - 0x03188E 0C:987E: 9E        .byte $9E   ; 
- - - - - - 0x03188F 0C:987F: 8E        .byte $8E   ; 
- - - - - - 0x031890 0C:9880: 7E        .byte $7E   ; 
- - - - - - 0x031891 0C:9881: 6E        .byte $6E   ; 
- - - - - - 0x031892 0C:9882: 5E        .byte $5E   ; 
- - - - - - 0x031893 0C:9883: 4E        .byte $4E   ; 
- - - - - - 0x031894 0C:9884: 4E        .byte $4E   ; 
- - - - - - 0x031895 0C:9885: 3E        .byte $3E   ; 
- - - - - - 0x031896 0C:9886: 3E        .byte $3E   ; 
- - - - - - 0x031897 0C:9887: 2E        .byte $2E   ; 
- - - - - - 0x031898 0C:9888: 1E        .byte $1E   ; 
- - - - - - 0x031899 0C:9889: 0E        .byte $0E   ; 
- - - - - - 0x03189A 0C:988A: FF        .byte con_se_cb_1_FF   ; 



off_ch_03_988B_1E_FF:
off_ch_03_988B_21_FF:
- D 0 - I - 0x03189B 0C:988B: FF        .byte con_se_cb_1_FF   ; 



off_ch_06_988C_1E:
off_ch_06_988C_21:
off_ch_06_988C_35:
- D 0 - I - 0x03189C 0C:988C: 01        .byte $01   ; 
- D 0 - I - 0x03189D 0C:988D: 8F        .byte $8F   ; 
- D 0 - I - 0x03189E 0C:988E: 8D        .byte $8D   ; 
- D 0 - I - 0x03189F 0C:988F: 8F        .byte $8F   ; 
- D 0 - I - 0x0318A0 0C:9890: 8A        .byte $8A   ; 
- D 0 - I - 0x0318A1 0C:9891: 89        .byte $89   ; 
- D 0 - I - 0x0318A2 0C:9892: 88        .byte $88   ; 
- D 0 - I - 0x0318A3 0C:9893: 87        .byte $87   ; 
- D 0 - I - 0x0318A4 0C:9894: 86        .byte $86   ; 
- D 0 - I - 0x0318A5 0C:9895: 85        .byte $85   ; 
- D 0 - I - 0x0318A6 0C:9896: 84        .byte $84   ; 
- D 0 - I - 0x0318A7 0C:9897: 00        .byte $00   ; 
- D 0 - I - 0x0318A8 0C:9898: 4D        .byte $4D   ; 
- D 0 - I - 0x0318A9 0C:9899: 4C        .byte $4C   ; 
- D 0 - I - 0x0318AA 0C:989A: 4B        .byte $4B   ; 
- D 0 - I - 0x0318AB 0C:989B: 4A        .byte $4A   ; 
- D 0 - I - 0x0318AC 0C:989C: 49        .byte $49   ; 
- D 0 - I - 0x0318AD 0C:989D: 48        .byte $48   ; 
- D 0 - I - 0x0318AE 0C:989E: 47        .byte $47   ; 
- D 0 - I - 0x0318AF 0C:989F: 46        .byte $46   ; 
- D 0 - I - 0x0318B0 0C:98A0: 45        .byte $45   ; 
- D 0 - I - 0x0318B1 0C:98A1: 44        .byte $44   ; 
- D 0 - I - 0x0318B2 0C:98A2: 00        .byte $00   ; 
- D 0 - I - 0x0318B3 0C:98A3: 2D        .byte $2D   ; 
- D 0 - I - 0x0318B4 0C:98A4: 2C        .byte $2C   ; 
- D 0 - I - 0x0318B5 0C:98A5: 2B        .byte $2B   ; 
- D 0 - I - 0x0318B6 0C:98A6: 2A        .byte $2A   ; 
- D 0 - I - 0x0318B7 0C:98A7: 29        .byte $29   ; 
- D 0 - I - 0x0318B8 0C:98A8: 28        .byte $28   ; 
- D 0 - I - 0x0318B9 0C:98A9: 27        .byte $27   ; 
- D 0 - I - 0x0318BA 0C:98AA: 26        .byte $26   ; 
- D 0 - I - 0x0318BB 0C:98AB: 25        .byte $25   ; 
- D 0 - I - 0x0318BC 0C:98AC: 24        .byte $24   ; 
- D 0 - I - 0x0318BD 0C:98AD: 00        .byte $00   ; 
- D 0 - I - 0x0318BE 0C:98AE: 1D        .byte $1D   ; 
- D 0 - I - 0x0318BF 0C:98AF: 1C        .byte $1C   ; 
- D 0 - I - 0x0318C0 0C:98B0: 1B        .byte $1B   ; 
- D 0 - I - 0x0318C1 0C:98B1: 1A        .byte $1A   ; 
- D 0 - I - 0x0318C2 0C:98B2: 19        .byte $19   ; 
- D 0 - I - 0x0318C3 0C:98B3: 18        .byte $18   ; 
- D 0 - I - 0x0318C4 0C:98B4: 17        .byte $17   ; 
- D 0 - I - 0x0318C5 0C:98B5: 16        .byte $16   ; 
- D 0 - I - 0x0318C6 0C:98B6: 14        .byte $14   ; 
- D 0 - I - 0x0318C7 0C:98B7: FF        .byte con_se_cb_1_FF   ; 



off_ch_06_98B8_1F:
- D 0 - I - 0x0318C8 0C:98B8: 03        .byte $03   ; 
- D 0 - I - 0x0318C9 0C:98B9: 97        .byte $97   ; 
- D 0 - I - 0x0318CA 0C:98BA: 00        .byte $00   ; 
- D 0 - I - 0x0318CB 0C:98BB: 98        .byte $98   ; 
- D 0 - I - 0x0318CC 0C:98BC: 5F        .byte $5F   ; 
- D 0 - I - 0x0318CD 0C:98BD: 41        .byte $41   ; 
- D 0 - I - 0x0318CE 0C:98BE: 3A        .byte $3A   ; 
- D 0 - I - 0x0318CF 0C:98BF: 25        .byte $25   ; 
- D 0 - I - 0x0318D0 0C:98C0: 18        .byte $18   ; 
- D 0 - I - 0x0318D1 0C:98C1: 1B        .byte $1B   ; 
- D 0 - I - 0x0318D2 0C:98C2: FF        .byte con_se_cb_1_FF   ; 



off_ch_03_98C3_12:
- D 0 - I - 0x0318D3 0C:98C3: 0F        .byte $0F   ; 
- D 0 - I - 0x0318D4 0C:98C4: B0        .byte $B0   ; 
- D 0 - I - 0x0318D5 0C:98C5: 83        .byte $83   ; 
- D 0 - I - 0x0318D6 0C:98C6: D2        .byte $D2   ; 
- D 0 - I - 0x0318D7 0C:98C7: 00        .byte $00   ; 
- D 0 - I - 0x0318D8 0C:98C8: 42        .byte $42   ; 
- D 0 - I - 0x0318D9 0C:98C9: 00        .byte $00   ; 
- D 0 - I - 0x0318DA 0C:98CA: 12        .byte $12   ; 
- D 0 - I - 0x0318DB 0C:98CB: 00        .byte $00   ; 
- D 0 - I - 0x0318DC 0C:98CC: FF        .byte con_se_cb_1_FF   ; 



off_ch_06_98CD_12:
- D 0 - I - 0x0318DD 0C:98CD: 01        .byte $01   ; 
- D 0 - I - 0x0318DE 0C:98CE: 00        .byte $00   ; 
- D 0 - I - 0x0318DF 0C:98CF: 7C        .byte $7C   ; 
- D 0 - I - 0x0318E0 0C:98D0: 03        .byte $03   ; 
- D 0 - I - 0x0318E1 0C:98D1: BF        .byte $BF   ; 
- D 0 - I - 0x0318E2 0C:98D2: 79        .byte $79   ; 
- D 0 - I - 0x0318E3 0C:98D3: 02        .byte $02   ; 
- D 0 - I - 0x0318E4 0C:98D4: BF        .byte $BF   ; 
- D 0 - I - 0x0318E5 0C:98D5: 99        .byte $99   ; 
- D 0 - I - 0x0318E6 0C:98D6: 9F        .byte $9F   ; 
- D 0 - I - 0x0318E7 0C:98D7: 79        .byte $79   ; 
- D 0 - I - 0x0318E8 0C:98D8: 7F        .byte $7F   ; 
- D 0 - I - 0x0318E9 0C:98D9: 59        .byte $59   ; 
- D 0 - I - 0x0318EA 0C:98DA: 5F        .byte $5F   ; 
- D 0 - I - 0x0318EB 0C:98DB: 39        .byte $39   ; 
- D 0 - I - 0x0318EC 0C:98DC: 2F        .byte $2F   ; 
- D 0 - I - 0x0318ED 0C:98DD: 19        .byte $19   ; 
- D 0 - I - 0x0318EE 0C:98DE: 1F        .byte $1F   ; 
- D 0 - I - 0x0318EF 0C:98DF: FF        .byte con_se_cb_1_FF   ; 


; bzk garbage
- - - - - - 0x0318F0 0C:98E0: FF        .byte $FF   ; 



off_ch_03_98E1_36:
- D 0 - I - 0x0318F1 0C:98E1: 01        .byte $01   ; 
- D 0 - I - 0x0318F2 0C:98E2: B0        .byte $B0   ; 
- D 0 - I - 0x0318F3 0C:98E3: 88        .byte $88   ; 
- D 0 - I - 0x0318F4 0C:98E4: 00        .byte $00   ; 
- D 0 - I - 0x0318F5 0C:98E5: 00        .byte $00   ; 
- D 0 - I - 0x0318F6 0C:98E6: 00        .byte $00   ; 
- D 0 - I - 0x0318F7 0C:98E7: 00        .byte $00   ; 
- D 0 - I - 0x0318F8 0C:98E8: 00        .byte $00   ; 
- D 0 - I - 0x0318F9 0C:98E9: FB        .byte con_se_cb_1_FB   ; 
- D 0 - I - 0x0318FA 0C:98EA: 32        .byte $32   ; 
- D 0 - I - 0x0318FB 0C:98EB: A7        .byte $A7   ; 
- D 0 - I - 0x0318FC 0C:98EC: 30        .byte $30   ; 
- D 0 - I - 0x0318FD 0C:98ED: 10        .byte $10   ; 
- D 0 - I - 0x0318FE 0C:98EE: 52        .byte $52   ; 
- D 0 - I - 0x0318FF 0C:98EF: 5D        .byte $5D   ; 
- D 0 - I - 0x031900 0C:98F0: 50        .byte $50   ; 
- D 0 - I - 0x031901 0C:98F1: 20        .byte $20   ; 
- D 0 - I - 0x031902 0C:98F2: 61        .byte $61   ; 
- D 0 - I - 0x031903 0C:98F3: FD        .byte $FD   ; 
- D 0 - I - 0x031904 0C:98F4: 60        .byte $60   ; 
- D 0 - I - 0x031905 0C:98F5: 20        .byte $20   ; 
- D 0 - I - 0x031906 0C:98F6: 71        .byte $71   ; 
- D 0 - I - 0x031907 0C:98F7: C5        .byte $C5   ; 
- D 0 - I - 0x031908 0C:98F8: 70        .byte $70   ; 
- D 0 - I - 0x031909 0C:98F9: 10        .byte $10   ; 
- D 0 - I - 0x03190A 0C:98FA: 81        .byte $81   ; 
- D 0 - I - 0x03190B 0C:98FB: 7D        .byte $7D   ; 
- D 0 - I - 0x03190C 0C:98FC: 80        .byte $80   ; 
- D 0 - I - 0x03190D 0C:98FD: 20        .byte $20   ; 
- D 0 - I - 0x03190E 0C:98FE: 91        .byte $91   ; 
- D 0 - I - 0x03190F 0C:98FF: 40        .byte $40   ; 
- D 0 - I - 0x031910 0C:9900: 90        .byte $90   ; 
- D 0 - I - 0x031911 0C:9901: 10        .byte $10   ; 
- D 0 - I - 0x031912 0C:9902: 91        .byte $91   ; 
- D 0 - I - 0x031913 0C:9903: 0D        .byte $0D   ; 
- D 0 - I - 0x031914 0C:9904: 90        .byte $90   ; 
- D 0 - I - 0x031915 0C:9905: 20        .byte $20   ; 
- D 0 - I - 0x031916 0C:9906: 90        .byte $90   ; 
- D 0 - I - 0x031917 0C:9907: E2        .byte $E2   ; 
- D 0 - I - 0x031918 0C:9908: 00        .byte $00   ; 
- D 0 - I - 0x031919 0C:9909: E8        .byte con_se_cb_2_E8, $04   ; 
- D 0 - I - 0x03191B 0C:990B: FE        .byte con_se_cb_1_FE, $02   ; 
- D 0 - I - 0x03191D 0C:990D: FF        .byte con_se_cb_1_FF   ; 



off_ch_03_990E_11:
- D 0 - I - 0x03191E 0C:990E: 0F        .byte $0F   ; 
- D 0 - I - 0x03191F 0C:990F: B0        .byte $B0   ; 
- D 0 - I - 0x031920 0C:9910: 83        .byte $83   ; 
- D 0 - I - 0x031921 0C:9911: F2        .byte con_se_cb_1_F0 + $02   ; 
- D 0 - I - 0x031922 0C:9912: 00        .byte $00   ; 
- D 0 - I - 0x031923 0C:9913: 52        .byte $52   ; 
- D 0 - I - 0x031924 0C:9914: 00        .byte $00   ; 
- D 0 - I - 0x031925 0C:9915: 12        .byte $12   ; 
- D 0 - I - 0x031926 0C:9916: 00        .byte $00   ; 
- D 0 - I - 0x031927 0C:9917: FF        .byte con_se_cb_1_FF   ; 



off_ch_06_9918_11:
- D 0 - I - 0x031928 0C:9918: 01        .byte $01   ; 
- D 0 - I - 0x031929 0C:9919: 00        .byte $00   ; 
- D 0 - I - 0x03192A 0C:991A: 9C        .byte $9C   ; 
- D 0 - I - 0x03192B 0C:991B: 03        .byte $03   ; 
- D 0 - I - 0x03192C 0C:991C: DF        .byte $DF   ; 
- D 0 - I - 0x03192D 0C:991D: 99        .byte $99   ; 
- D 0 - I - 0x03192E 0C:991E: 02        .byte $02   ; 
- D 0 - I - 0x03192F 0C:991F: DF        .byte $DF   ; 
- D 0 - I - 0x031930 0C:9920: B9        .byte $B9   ; 
- D 0 - I - 0x031931 0C:9921: BF        .byte $BF   ; 
- D 0 - I - 0x031932 0C:9922: 99        .byte $99   ; 
- D 0 - I - 0x031933 0C:9923: 9F        .byte $9F   ; 
- D 0 - I - 0x031934 0C:9924: 79        .byte $79   ; 
- D 0 - I - 0x031935 0C:9925: 7F        .byte $7F   ; 
- D 0 - I - 0x031936 0C:9926: 59        .byte $59   ; 
- D 0 - I - 0x031937 0C:9927: 3F        .byte $3F   ; 
- D 0 - I - 0x031938 0C:9928: 29        .byte $29   ; 
- D 0 - I - 0x031939 0C:9929: 1F        .byte $1F   ; 
- D 0 - I - 0x03193A 0C:992A: FF        .byte con_se_cb_1_FF   ; 



off_ch_03_992B_29:
- D 0 - I - 0x03193B 0C:992B: 01        .byte $01   ; 
- D 0 - I - 0x03193C 0C:992C: 22        .byte $22   ; 
- D 0 - I - 0x03193D 0C:992D: 9D        .byte $9D   ; 
- D 0 - I - 0x03193E 0C:992E: 12        .byte $12   ; 
- D 0 - I - 0x03193F 0C:992F: 10        .byte $10   ; 
- D 0 - I - 0x031940 0C:9930: 10        .byte $10   ; 
- D 0 - I - 0x031941 0C:9931: 30        .byte $30   ; 
- D 0 - I - 0x031942 0C:9932: 20        .byte $20   ; 
- D 0 - I - 0x031943 0C:9933: 50        .byte $50   ; 
- D 0 - I - 0x031944 0C:9934: 40        .byte $40   ; 
- D 0 - I - 0x031945 0C:9935: 70        .byte $70   ; 
- D 0 - I - 0x031946 0C:9936: FF        .byte con_se_cb_1_FF   ; 



off_ch_06_9937_29:
- D 0 - I - 0x031947 0C:9937: 03        .byte $03   ; 
- D 0 - I - 0x031948 0C:9938: BF        .byte $BF   ; 
- D 0 - I - 0x031949 0C:9939: BF        .byte $BF   ; 
- D 0 - I - 0x03194A 0C:993A: AE        .byte $AE   ; 
- D 0 - I - 0x03194B 0C:993B: BF        .byte $BF   ; 
- D 0 - I - 0x03194C 0C:993C: B1        .byte $B1   ; 
- D 0 - I - 0x03194D 0C:993D: B2        .byte $B2   ; 
- D 0 - I - 0x03194E 0C:993E: B3        .byte $B3   ; 
- D 0 - I - 0x03194F 0C:993F: FF        .byte con_se_cb_1_FF   ; 



off_ch_03_9940_2A:
- D 0 - I - 0x031950 0C:9940: 02        .byte $02   ; 
- D 0 - I - 0x031951 0C:9941: B0        .byte $B0   ; 
- D 0 - I - 0x031952 0C:9942: 82        .byte $82   ; 
- D 0 - I - 0x031953 0C:9943: C2        .byte $C2   ; 
- D 0 - I - 0x031954 0C:9944: 70        .byte $70   ; 
- D 0 - I - 0x031955 0C:9945: 03        .byte $03   ; 
- D 0 - I - 0x031956 0C:9946: B0        .byte $B0   ; 
- D 0 - I - 0x031957 0C:9947: 82        .byte $82   ; 
- D 0 - I - 0x031958 0C:9948: 00        .byte $00   ; 
- D 0 - I - 0x031959 0C:9949: 03        .byte $03   ; 
- D 0 - I - 0x03195A 0C:994A: B0        .byte $B0   ; 
- D 0 - I - 0x03195B 0C:994B: 82        .byte $82   ; 
- D 0 - I - 0x03195C 0C:994C: 13        .byte $13   ; 
- D 0 - I - 0x03195D 0C:994D: B0        .byte $B0   ; 
- D 0 - I - 0x03195E 0C:994E: C1        .byte $C1   ; 
- D 0 - I - 0x03195F 0C:994F: AB        .byte $AB   ; 
- D 0 - I - 0x031960 0C:9950: C1        .byte $C1   ; 
- D 0 - I - 0x031961 0C:9951: 53        .byte $53   ; 
- D 0 - I - 0x031962 0C:9952: C1        .byte $C1   ; 
- D 0 - I - 0x031963 0C:9953: AB        .byte $AB   ; 
- D 0 - I - 0x031964 0C:9954: C1        .byte $C1   ; 
- D 0 - I - 0x031965 0C:9955: 53        .byte $53   ; 
- D 0 - I - 0x031966 0C:9956: B1        .byte $B1   ; 
- D 0 - I - 0x031967 0C:9957: AB        .byte $AB   ; 
- D 0 - I - 0x031968 0C:9958: A1        .byte $A1   ; 
- D 0 - I - 0x031969 0C:9959: 53        .byte $53   ; 
- D 0 - I - 0x03196A 0C:995A: 91        .byte $91   ; 
- D 0 - I - 0x03196B 0C:995B: AB        .byte $AB   ; 
- D 0 - I - 0x03196C 0C:995C: 81        .byte $81   ; 
- D 0 - I - 0x03196D 0C:995D: 53        .byte $53   ; 
- D 0 - I - 0x03196E 0C:995E: 71        .byte $71   ; 
- D 0 - I - 0x03196F 0C:995F: AB        .byte $AB   ; 
- D 0 - I - 0x031970 0C:9960: 61        .byte $61   ; 
- D 0 - I - 0x031971 0C:9961: 53        .byte $53   ; 
- D 0 - I - 0x031972 0C:9962: 51        .byte $51   ; 
- D 0 - I - 0x031973 0C:9963: AB        .byte $AB   ; 
- D 0 - I - 0x031974 0C:9964: 41        .byte $41   ; 
- D 0 - I - 0x031975 0C:9965: 53        .byte $53   ; 
- D 0 - I - 0x031976 0C:9966: 31        .byte $31   ; 
- D 0 - I - 0x031977 0C:9967: AB        .byte $AB   ; 
- D 0 - I - 0x031978 0C:9968: 31        .byte $31   ; 
- D 0 - I - 0x031979 0C:9969: 53        .byte $53   ; 
- D 0 - I - 0x03197A 0C:996A: 21        .byte $21   ; 
- D 0 - I - 0x03197B 0C:996B: AB        .byte $AB   ; 
- D 0 - I - 0x03197C 0C:996C: 21        .byte $21   ; 
- D 0 - I - 0x03197D 0C:996D: 53        .byte $53   ; 
- D 0 - I - 0x03197E 0C:996E: 11        .byte $11   ; 
- D 0 - I - 0x03197F 0C:996F: AB        .byte $AB   ; 
- D 0 - I - 0x031980 0C:9970: 11        .byte $11   ; 
- D 0 - I - 0x031981 0C:9971: 53        .byte $53   ; 
- D 0 - I - 0x031982 0C:9972: FF        .byte con_se_cb_1_FF   ; 



off_ch_06_9973_2A:
- D 0 - I - 0x031983 0C:9973: 01        .byte $01   ; 
- D 0 - I - 0x031984 0C:9974: BC        .byte $BC   ; 
- D 0 - I - 0x031985 0C:9975: 03        .byte $03   ; 
- D 0 - I - 0x031986 0C:9976: 9F        .byte $9F   ; 
- D 0 - I - 0x031987 0C:9977: 00        .byte $00   ; 
- D 0 - I - 0x031988 0C:9978: 89        .byte $89   ; 
- D 0 - I - 0x031989 0C:9979: 7F        .byte $7F   ; 
- D 0 - I - 0x03198A 0C:997A: 02        .byte $02   ; 
- D 0 - I - 0x03198B 0C:997B: 69        .byte $69   ; 
- D 0 - I - 0x03198C 0C:997C: 8F        .byte $8F   ; 
- D 0 - I - 0x03198D 0C:997D: 49        .byte $49   ; 
- D 0 - I - 0x03198E 0C:997E: 3F        .byte $3F   ; 
- D 0 - I - 0x03198F 0C:997F: 39        .byte $39   ; 
- D 0 - I - 0x031990 0C:9980: 2F        .byte $2F   ; 
- D 0 - I - 0x031991 0C:9981: 29        .byte $29   ; 
- D 0 - I - 0x031992 0C:9982: 2F        .byte $2F   ; 
- D 0 - I - 0x031993 0C:9983: 19        .byte $19   ; 
- D 0 - I - 0x031994 0C:9984: 1F        .byte $1F   ; 
- D 0 - I - 0x031995 0C:9985: 19        .byte $19   ; 
- D 0 - I - 0x031996 0C:9986: 1F        .byte $1F   ; 
- D 0 - I - 0x031997 0C:9987: FF        .byte con_se_cb_1_FF   ; 



off_ch_03_9988_37:
off_ch_03_9988_39:
- D 0 - I - 0x031998 0C:9988: 02        .byte $02   ; 
- D 0 - I - 0x031999 0C:9989: B0        .byte $B0   ; 
- D 0 - I - 0x03199A 0C:998A: 82        .byte $82   ; 
- D 0 - I - 0x03199B 0C:998B: D2        .byte $D2   ; 
- D 0 - I - 0x03199C 0C:998C: 70        .byte $70   ; 
- D 0 - I - 0x03199D 0C:998D: 03        .byte $03   ; 
- D 0 - I - 0x03199E 0C:998E: B0        .byte $B0   ; 
- D 0 - I - 0x03199F 0C:998F: 82        .byte $82   ; 
- D 0 - I - 0x0319A0 0C:9990: 00        .byte $00   ; 
- D 0 - I - 0x0319A1 0C:9991: 03        .byte $03   ; 
- D 0 - I - 0x0319A2 0C:9992: B0        .byte $B0   ; 
- D 0 - I - 0x0319A3 0C:9993: 82        .byte $82   ; 
- D 0 - I - 0x0319A4 0C:9994: 13        .byte $13   ; 
- D 0 - I - 0x0319A5 0C:9995: B0        .byte $B0   ; 
- D 0 - I - 0x0319A6 0C:9996: D1        .byte $D1   ; 
- D 0 - I - 0x0319A7 0C:9997: AB        .byte $AB   ; 
- D 0 - I - 0x0319A8 0C:9998: D1        .byte $D1   ; 
- D 0 - I - 0x0319A9 0C:9999: 53        .byte $53   ; 
- D 0 - I - 0x0319AA 0C:999A: D1        .byte $D1   ; 
- D 0 - I - 0x0319AB 0C:999B: AB        .byte $AB   ; 
- D 0 - I - 0x0319AC 0C:999C: D1        .byte $D1   ; 
- D 0 - I - 0x0319AD 0C:999D: 53        .byte $53   ; 
- D 0 - I - 0x0319AE 0C:999E: C1        .byte $C1   ; 
- D 0 - I - 0x0319AF 0C:999F: AB        .byte $AB   ; 
- D 0 - I - 0x0319B0 0C:99A0: B1        .byte $B1   ; 
- D 0 - I - 0x0319B1 0C:99A1: 53        .byte $53   ; 
- D 0 - I - 0x0319B2 0C:99A2: A1        .byte $A1   ; 
- D 0 - I - 0x0319B3 0C:99A3: AB        .byte $AB   ; 
- D 0 - I - 0x0319B4 0C:99A4: 91        .byte $91   ; 
- D 0 - I - 0x0319B5 0C:99A5: 53        .byte $53   ; 
- D 0 - I - 0x0319B6 0C:99A6: 81        .byte $81   ; 
- D 0 - I - 0x0319B7 0C:99A7: AB        .byte $AB   ; 
- D 0 - I - 0x0319B8 0C:99A8: 71        .byte $71   ; 
- D 0 - I - 0x0319B9 0C:99A9: 53        .byte $53   ; 
- D 0 - I - 0x0319BA 0C:99AA: 61        .byte $61   ; 
- D 0 - I - 0x0319BB 0C:99AB: AB        .byte $AB   ; 
- D 0 - I - 0x0319BC 0C:99AC: 41        .byte $41   ; 
- D 0 - I - 0x0319BD 0C:99AD: 53        .byte $53   ; 
- D 0 - I - 0x0319BE 0C:99AE: 41        .byte $41   ; 
- D 0 - I - 0x0319BF 0C:99AF: AB        .byte $AB   ; 
- D 0 - I - 0x0319C0 0C:99B0: 31        .byte $31   ; 
- D 0 - I - 0x0319C1 0C:99B1: 53        .byte $53   ; 
- D 0 - I - 0x0319C2 0C:99B2: 31        .byte $31   ; 
- D 0 - I - 0x0319C3 0C:99B3: AB        .byte $AB   ; 
- D 0 - I - 0x0319C4 0C:99B4: 21        .byte $21   ; 
- D 0 - I - 0x0319C5 0C:99B5: 53        .byte $53   ; 
- D 0 - I - 0x0319C6 0C:99B6: 21        .byte $21   ; 
- D 0 - I - 0x0319C7 0C:99B7: AB        .byte $AB   ; 
- D 0 - I - 0x0319C8 0C:99B8: 11        .byte $11   ; 
- D 0 - I - 0x0319C9 0C:99B9: 53        .byte $53   ; 
- D 0 - I - 0x0319CA 0C:99BA: FF        .byte con_se_cb_1_FF   ; 



off_ch_06_99BB_37:
off_ch_06_99BB_39:
- D 0 - I - 0x0319CB 0C:99BB: 01        .byte $01   ; 
- D 0 - I - 0x0319CC 0C:99BC: CC        .byte $CC   ; 
- D 0 - I - 0x0319CD 0C:99BD: 03        .byte $03   ; 
- D 0 - I - 0x0319CE 0C:99BE: AF        .byte $AF   ; 
- D 0 - I - 0x0319CF 0C:99BF: 00        .byte $00   ; 
- D 0 - I - 0x0319D0 0C:99C0: 99        .byte $99   ; 
- D 0 - I - 0x0319D1 0C:99C1: 8F        .byte $8F   ; 
- D 0 - I - 0x0319D2 0C:99C2: 02        .byte $02   ; 
- D 0 - I - 0x0319D3 0C:99C3: 79        .byte $79   ; 
- D 0 - I - 0x0319D4 0C:99C4: 9F        .byte $9F   ; 
- D 0 - I - 0x0319D5 0C:99C5: 59        .byte $59   ; 
- D 0 - I - 0x0319D6 0C:99C6: 4F        .byte $4F   ; 
- D 0 - I - 0x0319D7 0C:99C7: 39        .byte $39   ; 
- D 0 - I - 0x0319D8 0C:99C8: 3F        .byte $3F   ; 
- D 0 - I - 0x0319D9 0C:99C9: 29        .byte $29   ; 
- D 0 - I - 0x0319DA 0C:99CA: 2F        .byte $2F   ; 
- D 0 - I - 0x0319DB 0C:99CB: 19        .byte $19   ; 
- D 0 - I - 0x0319DC 0C:99CC: 1F        .byte $1F   ; 
- D 0 - I - 0x0319DD 0C:99CD: 19        .byte $19   ; 
- D 0 - I - 0x0319DE 0C:99CE: 1F        .byte $1F   ; 
- D 0 - I - 0x0319DF 0C:99CF: FF        .byte con_se_cb_1_FF   ; 



off_ch_03_99D0_38_FF:
- D 0 - I - 0x0319E0 0C:99D0: FF        .byte con_se_cb_1_FF   ; 



off_ch_06_99D1_38:
- D 0 - I - 0x0319E1 0C:99D1: 01        .byte $01   ; 
- D 0 - I - 0x0319E2 0C:99D2: D9        .byte $D9   ; 
- D 0 - I - 0x0319E3 0C:99D3: CE        .byte $CE   ; 
- D 0 - I - 0x0319E4 0C:99D4: BF        .byte $BF   ; 
- D 0 - I - 0x0319E5 0C:99D5: 4E        .byte $4E   ; 
- D 0 - I - 0x0319E6 0C:99D6: CC        .byte $CC   ; 
- D 0 - I - 0x0319E7 0C:99D7: BB        .byte $BB   ; 
- D 0 - I - 0x0319E8 0C:99D8: AA        .byte $AA   ; 
- D 0 - I - 0x0319E9 0C:99D9: 8A        .byte $8A   ; 
- D 0 - I - 0x0319EA 0C:99DA: 00        .byte $00   ; 
- D 0 - I - 0x0319EB 0C:99DB: 7A        .byte $7A   ; 
- D 0 - I - 0x0319EC 0C:99DC: 00        .byte $00   ; 
- D 0 - I - 0x0319ED 0C:99DD: 7A        .byte $7A   ; 
- D 0 - I - 0x0319EE 0C:99DE: 7A        .byte $7A   ; 
- D 0 - I - 0x0319EF 0C:99DF: 7A        .byte $7A   ; 
- D 0 - I - 0x0319F0 0C:99E0: 6A        .byte $6A   ; 
- D 0 - I - 0x0319F1 0C:99E1: 5A        .byte $5A   ; 
- D 0 - I - 0x0319F2 0C:99E2: 4A        .byte $4A   ; 
- D 0 - I - 0x0319F3 0C:99E3: 3B        .byte $3B   ; 
- D 0 - I - 0x0319F4 0C:99E4: 2A        .byte $2A   ; 
- D 0 - I - 0x0319F5 0C:99E5: 02        .byte $02   ; 
- D 0 - I - 0x0319F6 0C:99E6: 39        .byte $39   ; 
- D 0 - I - 0x0319F7 0C:99E7: 39        .byte $39   ; 
- D 0 - I - 0x0319F8 0C:99E8: 29        .byte $29   ; 
- D 0 - I - 0x0319F9 0C:99E9: 19        .byte $19   ; 
- D 0 - I - 0x0319FA 0C:99EA: 19        .byte $19   ; 
- D 0 - I - 0x0319FB 0C:99EB: FF        .byte con_se_cb_1_FF   ; 



off_ch_03_99EC_08:
- D 0 - I - 0x0319FC 0C:99EC: 01        .byte $01   ; 
- D 0 - I - 0x0319FD 0C:99ED: B0        .byte $B0   ; 
- D 0 - I - 0x0319FE 0C:99EE: 8B        .byte $8B   ; 
- D 0 - I - 0x0319FF 0C:99EF: 21        .byte $21   ; 
- D 0 - I - 0x031A00 0C:99F0: 00        .byte $00   ; 
- D 0 - I - 0x031A01 0C:99F1: 00        .byte $00   ; 
- D 0 - I - 0x031A02 0C:99F2: 05        .byte $05   ; 
- D 0 - I - 0x031A03 0C:99F3: B0        .byte $B0   ; 
- D 0 - I - 0x031A04 0C:99F4: 8A        .byte $8A   ; 
- D 0 - I - 0x031A05 0C:99F5: 00        .byte $00   ; 
- D 0 - I - 0x031A06 0C:99F6: 51        .byte $51   ; 
- D 0 - I - 0x031A07 0C:99F7: 1D        .byte $1D   ; 
- D 0 - I - 0x031A08 0C:99F8: 00        .byte $00   ; 
- D 0 - I - 0x031A09 0C:99F9: 11        .byte $11   ; 
- D 0 - I - 0x031A0A 0C:99FA: 53        .byte $53   ; 
off_FE_99FB:
- D 0 - I - 0x031A0B 0C:99FB: E6        .byte con_se_cb_2_E6, $20   ; 
- D 0 - I - 0x031A0D 0C:99FD: 00        .byte $00   ; 
- D 0 - I - 0x031A0E 0C:99FE: FE        .byte con_se_cb_1_FE, $FF   ; 
- D 0 - I - 0x031A10 0C:9A00: FB 99     .word off_FE_99FB



off_ch_06_9A02_32:
- D 0 - I - 0x031A12 0C:9A02: 01        .byte $01   ; 
- D 0 - I - 0x031A13 0C:9A03: FB        .byte con_se_cb_1_FB   ; 
- D 0 - I - 0x031A14 0C:9A04: 36        .byte $36   ; 
- D 0 - I - 0x031A15 0C:9A05: 87        .byte $87   ; 
- D 0 - I - 0x031A16 0C:9A06: 25        .byte $25   ; 
- D 0 - I - 0x031A17 0C:9A07: 66        .byte $66   ; 
- D 0 - I - 0x031A18 0C:9A08: 12        .byte $12   ; 
- D 0 - I - 0x031A19 0C:9A09: 44        .byte $44   ; 
- D 0 - I - 0x031A1A 0C:9A0A: FE        .byte con_se_cb_1_FE, $02   ; 
- D 0 - I - 0x031A1C 0C:9A0C: 33        .byte $33   ; 
- D 0 - I - 0x031A1D 0C:9A0D: FF        .byte con_se_cb_1_FF   ; 



off_ch_06_9A0E_25:
- D 0 - I - 0x031A1E 0C:9A0E: 01        .byte $01   ; 
- D 0 - I - 0x031A1F 0C:9A0F: 98        .byte $98   ; 
- D 0 - I - 0x031A20 0C:9A10: 66        .byte $66   ; 
- D 0 - I - 0x031A21 0C:9A11: 0E        .byte $0E   ; 
- D 0 - I - 0x031A22 0C:9A12: 97        .byte $97   ; 
- D 0 - I - 0x031A23 0C:9A13: FF        .byte con_se_cb_1_FF   ; 



off_ch_06_9A14_20:
- D 0 - I - 0x031A24 0C:9A14: 01        .byte $01   ; 
- D 0 - I - 0x031A25 0C:9A15: 58        .byte $58   ; 
- D 0 - I - 0x031A26 0C:9A16: 46        .byte $46   ; 
- D 0 - I - 0x031A27 0C:9A17: 0E        .byte $0E   ; 
- D 0 - I - 0x031A28 0C:9A18: 57        .byte $57   ; 
- D 0 - I - 0x031A29 0C:9A19: FF        .byte con_se_cb_1_FF   ; 



off_ch_03_9A1A_0F:
- D 0 - I - 0x031A2A 0C:9A1A: 06        .byte $06   ; 
- D 0 - I - 0x031A2B 0C:9A1B: B0        .byte $B0   ; 
- D 0 - I - 0x031A2C 0C:9A1C: 8C        .byte $8C   ; 
- D 0 - I - 0x031A2D 0C:9A1D: 24        .byte $24   ; 
- D 0 - I - 0x031A2E 0C:9A1E: 90        .byte $90   ; 
- D 0 - I - 0x031A2F 0C:9A1F: 43        .byte $43   ; 
- D 0 - I - 0x031A30 0C:9A20: F0        .byte $F0   ; 
- D 0 - I - 0x031A31 0C:9A21: 63        .byte $63   ; 
- D 0 - I - 0x031A32 0C:9A22: 70        .byte $70   ; 
- D 0 - I - 0x031A33 0C:9A23: 93        .byte $93   ; 
- D 0 - I - 0x031A34 0C:9A24: 00        .byte $00   ; 
- D 0 - I - 0x031A35 0C:9A25: 63        .byte $63   ; 
- D 0 - I - 0x031A36 0C:9A26: 00        .byte $00   ; 
- D 0 - I - 0x031A37 0C:9A27: 43        .byte $43   ; 
- D 0 - I - 0x031A38 0C:9A28: 00        .byte $00   ; 
- D 0 - I - 0x031A39 0C:9A29: 23        .byte $23   ; 
- D 0 - I - 0x031A3A 0C:9A2A: 00        .byte $00   ; 
- D 0 - I - 0x031A3B 0C:9A2B: 13        .byte $13   ; 
- D 0 - I - 0x031A3C 0C:9A2C: 00        .byte $00   ; 
- D 0 - I - 0x031A3D 0C:9A2D: FF        .byte con_se_cb_1_FF   ; 



off_ch_06_9A2E_0F_FF:
- D 0 - I - 0x031A3E 0C:9A2E: FF        .byte con_se_cb_1_FF   ; 



off_ch_03_9A2F_3A:
- D 0 - I - 0x031A3F 0C:9A2F: 04        .byte $04   ; 
- D 0 - I - 0x031A40 0C:9A30: 70        .byte $70   ; 
- D 0 - I - 0x031A41 0C:9A31: 82        .byte $82   ; 
- D 0 - I - 0x031A42 0C:9A32: 52        .byte $52   ; 
- D 0 - I - 0x031A43 0C:9A33: 00        .byte $00   ; 
- D 0 - I - 0x031A44 0C:9A34: 54        .byte $54   ; 
- D 0 - I - 0x031A45 0C:9A35: 00        .byte $00   ; 
- D 0 - I - 0x031A46 0C:9A36: 55        .byte $55   ; 
- D 0 - I - 0x031A47 0C:9A37: 00        .byte $00   ; 
- D 0 - I - 0x031A48 0C:9A38: 53        .byte $53   ; 
- D 0 - I - 0x031A49 0C:9A39: 00        .byte $00   ; 
- D 0 - I - 0x031A4A 0C:9A3A: FF        .byte con_se_cb_1_FF   ; 



off_ch_06_9A3B_3A:
- D 0 - I - 0x031A4B 0C:9A3B: 01        .byte $01   ; 
- D 0 - I - 0x031A4C 0C:9A3C: 8C        .byte $8C   ; 
- D 0 - I - 0x031A4D 0C:9A3D: 8D        .byte $8D   ; 
- D 0 - I - 0x031A4E 0C:9A3E: 8D        .byte $8D   ; 
- D 0 - I - 0x031A4F 0C:9A3F: 3C        .byte $3C   ; 
- D 0 - I - 0x031A50 0C:9A40: 8E        .byte $8E   ; 
- D 0 - I - 0x031A51 0C:9A41: 8E        .byte $8E   ; 
- D 0 - I - 0x031A52 0C:9A42: 8F        .byte $8F   ; 
- D 0 - I - 0x031A53 0C:9A43: 8E        .byte $8E   ; 
- D 0 - I - 0x031A54 0C:9A44: 5B        .byte $5B   ; 
- D 0 - I - 0x031A55 0C:9A45: 5F        .byte $5F   ; 
- D 0 - I - 0x031A56 0C:9A46: 5D        .byte $5D   ; 
- D 0 - I - 0x031A57 0C:9A47: 5C        .byte $5C   ; 
- D 0 - I - 0x031A58 0C:9A48: 8F        .byte $8F   ; 
- D 0 - I - 0x031A59 0C:9A49: 8F        .byte $8F   ; 
- D 0 - I - 0x031A5A 0C:9A4A: 8E        .byte $8E   ; 
- D 0 - I - 0x031A5B 0C:9A4B: 8F        .byte $8F   ; 
- D 0 - I - 0x031A5C 0C:9A4C: FF        .byte con_se_cb_1_FF   ; 



off_ch_03_9A4D_3B:
- D 0 - I - 0x031A5D 0C:9A4D: 04        .byte $04   ; 
- D 0 - I - 0x031A5E 0C:9A4E: 70        .byte $70   ; 
- D 0 - I - 0x031A5F 0C:9A4F: 82        .byte $82   ; 
- D 0 - I - 0x031A60 0C:9A50: 62        .byte $62   ; 
- D 0 - I - 0x031A61 0C:9A51: 00        .byte $00   ; 
- D 0 - I - 0x031A62 0C:9A52: 64        .byte $64   ; 
- D 0 - I - 0x031A63 0C:9A53: 00        .byte $00   ; 
- D 0 - I - 0x031A64 0C:9A54: 65        .byte $65   ; 
- D 0 - I - 0x031A65 0C:9A55: 00        .byte $00   ; 
- D 0 - I - 0x031A66 0C:9A56: 63        .byte $63   ; 
- D 0 - I - 0x031A67 0C:9A57: 00        .byte $00   ; 
- - - - - - 0x031A68 0C:9A58: FF        .byte con_se_cb_1_FF   ; 



off_ch_06_9A59_3B:
- D 0 - I - 0x031A69 0C:9A59: 01        .byte $01   ; 
- D 0 - I - 0x031A6A 0C:9A5A: 8C        .byte $8C   ; 
- D 0 - I - 0x031A6B 0C:9A5B: 8D        .byte $8D   ; 
- D 0 - I - 0x031A6C 0C:9A5C: 8D        .byte $8D   ; 
- D 0 - I - 0x031A6D 0C:9A5D: 3C        .byte $3C   ; 
- D 0 - I - 0x031A6E 0C:9A5E: 8E        .byte $8E   ; 
- D 0 - I - 0x031A6F 0C:9A5F: 8E        .byte $8E   ; 
- D 0 - I - 0x031A70 0C:9A60: 8F        .byte $8F   ; 
- D 0 - I - 0x031A71 0C:9A61: 8E        .byte $8E   ; 
- D 0 - I - 0x031A72 0C:9A62: 5B        .byte $5B   ; 
- D 0 - I - 0x031A73 0C:9A63: 5F        .byte $5F   ; 
- D 0 - I - 0x031A74 0C:9A64: 5D        .byte $5D   ; 
- D 0 - I - 0x031A75 0C:9A65: 5C        .byte $5C   ; 
- D 0 - I - 0x031A76 0C:9A66: 8F        .byte $8F   ; 
- D 0 - I - 0x031A77 0C:9A67: 8F        .byte $8F   ; 
- D 0 - I - 0x031A78 0C:9A68: 8E        .byte $8E   ; 
- D 0 - I - 0x031A79 0C:9A69: 8F        .byte $8F   ; 
- - - - - - 0x031A7A 0C:9A6A: FF        .byte con_se_cb_1_FF   ; 



off_ch_06_9A6B_26:
- D 0 - I - 0x031A7B 0C:9A6B: 01        .byte $01   ; 
- D 0 - I - 0x031A7C 0C:9A6C: FB        .byte con_se_cb_1_FB   ; 
- D 0 - I - 0x031A7D 0C:9A6D: 25        .byte $25   ; 
- D 0 - I - 0x031A7E 0C:9A6E: C8        .byte $C8   ; 
- D 0 - I - 0x031A7F 0C:9A6F: 1F        .byte $1F   ; 
- D 0 - I - 0x031A80 0C:9A70: 43        .byte $43   ; 
- D 0 - I - 0x031A81 0C:9A71: 00        .byte $00   ; 
- D 0 - I - 0x031A82 0C:9A72: FE        .byte con_se_cb_1_FE, $04   ; 
- D 0 - I - 0x031A84 0C:9A74: 12        .byte $12   ; 
- D 0 - I - 0x031A85 0C:9A75: B6        .byte $B6   ; 
- D 0 - I - 0x031A86 0C:9A76: 1F        .byte $1F   ; 
- D 0 - I - 0x031A87 0C:9A77: 34        .byte $34   ; 
- D 0 - I - 0x031A88 0C:9A78: 00        .byte $00   ; 
- D 0 - I - 0x031A89 0C:9A79: 11        .byte $11   ; 
- D 0 - I - 0x031A8A 0C:9A7A: 75        .byte $75   ; 
- D 0 - I - 0x031A8B 0C:9A7B: 1F        .byte $1F   ; 
- D 0 - I - 0x031A8C 0C:9A7C: 23        .byte $23   ; 
- D 0 - I - 0x031A8D 0C:9A7D: 00        .byte $00   ; 
- D 0 - I - 0x031A8E 0C:9A7E: 11        .byte $11   ; 
- D 0 - I - 0x031A8F 0C:9A7F: 54        .byte $54   ; 
- D 0 - I - 0x031A90 0C:9A80: 1F        .byte $1F   ; 
- D 0 - I - 0x031A91 0C:9A81: 23        .byte $23   ; 
- D 0 - I - 0x031A92 0C:9A82: 00        .byte $00   ; 
- D 0 - I - 0x031A93 0C:9A83: 11        .byte $11   ; 
- D 0 - I - 0x031A94 0C:9A84: 34        .byte $34   ; 
- D 0 - I - 0x031A95 0C:9A85: 1F        .byte $1F   ; 
- D 0 - I - 0x031A96 0C:9A86: 23        .byte $23   ; 
- D 0 - I - 0x031A97 0C:9A87: 00        .byte $00   ; 
- D 0 - I - 0x031A98 0C:9A88: 11        .byte $11   ; 
- D 0 - I - 0x031A99 0C:9A89: 24        .byte $24   ; 
- D 0 - I - 0x031A9A 0C:9A8A: 1F        .byte $1F   ; 
- D 0 - I - 0x031A9B 0C:9A8B: 13        .byte $13   ; 
- D 0 - I - 0x031A9C 0C:9A8C: 00        .byte $00   ; 
- D 0 - I - 0x031A9D 0C:9A8D: 11        .byte $11   ; 
- D 0 - I - 0x031A9E 0C:9A8E: 24        .byte $24   ; 
- D 0 - I - 0x031A9F 0C:9A8F: 1F        .byte $1F   ; 
- D 0 - I - 0x031AA0 0C:9A90: 13        .byte $13   ; 
- D 0 - I - 0x031AA1 0C:9A91: 00        .byte $00   ; 
- D 0 - I - 0x031AA2 0C:9A92: FF        .byte con_se_cb_1_FF   ; 



off_ch_03_9A93_0D:
- D 0 - I - 0x031AA3 0C:9A93: 02        .byte $02   ; 
- D 0 - I - 0x031AA4 0C:9A94: B0        .byte $B0   ; 
- D 0 - I - 0x031AA5 0C:9A95: 9B        .byte $9B   ; 
- D 0 - I - 0x031AA6 0C:9A96: 63        .byte $63   ; 
- D 0 - I - 0x031AA7 0C:9A97: 00        .byte $00   ; 
- D 0 - I - 0x031AA8 0C:9A98: 00        .byte $00   ; 
- D 0 - I - 0x031AA9 0C:9A99: 00        .byte $00   ; 
- D 0 - I - 0x031AAA 0C:9A9A: 04        .byte $04   ; 
- D 0 - I - 0x031AAB 0C:9A9B: B0        .byte $B0   ; 
- D 0 - I - 0x031AAC 0C:9A9C: 8A        .byte $8A   ; 
- D 0 - I - 0x031AAD 0C:9A9D: 61        .byte $61   ; 
- D 0 - I - 0x031AAE 0C:9A9E: 94        .byte $94   ; 
- D 0 - I - 0x031AAF 0C:9A9F: 31        .byte $31   ; 
- D 0 - I - 0x031AB0 0C:9AA0: EC        .byte $EC   ; 
- D 0 - I - 0x031AB1 0C:9AA1: 12        .byte $12   ; 
- D 0 - I - 0x031AB2 0C:9AA2: 36        .byte $36   ; 
- D 0 - I - 0x031AB3 0C:9AA3: FF        .byte con_se_cb_1_FF   ; 



off_ch_06_9AA4_0E:
- D 0 - I - 0x031AB4 0C:9AA4: 02        .byte $02   ; 
- D 0 - I - 0x031AB5 0C:9AA5: 76        .byte $76   ; 
- D 0 - I - 0x031AB6 0C:9AA6: 2D        .byte $2D   ; 
- D 0 - I - 0x031AB7 0C:9AA7: 42        .byte $42   ; 
- D 0 - I - 0x031AB8 0C:9AA8: 2F        .byte $2F   ; 
- D 0 - I - 0x031AB9 0C:9AA9: 01        .byte $01   ; 
- D 0 - I - 0x031ABA 0C:9AAA: 9A        .byte $9A   ; 
- D 0 - I - 0x031ABB 0C:9AAB: 8E        .byte $8E   ; 
- D 0 - I - 0x031ABC 0C:9AAC: 7F        .byte $7F   ; 
- D 0 - I - 0x031ABD 0C:9AAD: 2E        .byte $2E   ; 
- D 0 - I - 0x031ABE 0C:9AAE: 7C        .byte $7C   ; 
- D 0 - I - 0x031ABF 0C:9AAF: 6B        .byte $6B   ; 
- D 0 - I - 0x031AC0 0C:9AB0: 5A        .byte $5A   ; 
- D 0 - I - 0x031AC1 0C:9AB1: 4A        .byte $4A   ; 
- D 0 - I - 0x031AC2 0C:9AB2: 3A        .byte $3A   ; 
- D 0 - I - 0x031AC3 0C:9AB3: 2A        .byte $2A   ; 
- D 0 - I - 0x031AC4 0C:9AB4: 1A        .byte $1A   ; 
- D 0 - I - 0x031AC5 0C:9AB5: 1A        .byte $1A   ; 
- D 0 - I - 0x031AC6 0C:9AB6: 1A        .byte $1A   ; 
- D 0 - I - 0x031AC7 0C:9AB7: 02        .byte $02   ; 
- D 0 - I - 0x031AC8 0C:9AB8: 26        .byte $26   ; 
- D 0 - I - 0x031AC9 0C:9AB9: 1D        .byte $1D   ; 
- D 0 - I - 0x031ACA 0C:9ABA: 22        .byte $22   ; 
- D 0 - I - 0x031ACB 0C:9ABB: 1F        .byte $1F   ; 
- D 0 - I - 0x031ACC 0C:9ABC: 01        .byte $01   ; 
- D 0 - I - 0x031ACD 0C:9ABD: 3A        .byte $3A   ; 
- D 0 - I - 0x031ACE 0C:9ABE: 4E        .byte $4E   ; 
- D 0 - I - 0x031ACF 0C:9ABF: 2F        .byte $2F   ; 
- D 0 - I - 0x031AD0 0C:9AC0: 1E        .byte $1E   ; 
- D 0 - I - 0x031AD1 0C:9AC1: 4C        .byte $4C   ; 
- D 0 - I - 0x031AD2 0C:9AC2: 2B        .byte $2B   ; 
- D 0 - I - 0x031AD3 0C:9AC3: 5A        .byte $5A   ; 
- D 0 - I - 0x031AD4 0C:9AC4: 3A        .byte $3A   ; 
- D 0 - I - 0x031AD5 0C:9AC5: 2A        .byte $2A   ; 
- D 0 - I - 0x031AD6 0C:9AC6: 1A        .byte $1A   ; 
- D 0 - I - 0x031AD7 0C:9AC7: 1A        .byte $1A   ; 
- D 0 - I - 0x031AD8 0C:9AC8: 1A        .byte $1A   ; 
- D 0 - I - 0x031AD9 0C:9AC9: FF        .byte con_se_cb_1_FF   ; 



off_ch_03_9ACA_3D:
- D 0 - I - 0x031ADA 0C:9ACA: 02        .byte $02   ; 
- D 0 - I - 0x031ADB 0C:9ACB: B0        .byte $B0   ; 
- D 0 - I - 0x031ADC 0C:9ACC: 82        .byte $82   ; 
- D 0 - I - 0x031ADD 0C:9ACD: C3        .byte $C3   ; 
- D 0 - I - 0x031ADE 0C:9ACE: 00        .byte $00   ; 
- D 0 - I - 0x031ADF 0C:9ACF: C1        .byte $C1   ; 
- D 0 - I - 0x031AE0 0C:9AD0: 00        .byte $00   ; 
- D 0 - I - 0x031AE1 0C:9AD1: C2        .byte $C2   ; 
- D 0 - I - 0x031AE2 0C:9AD2: 00        .byte $00   ; 
- D 0 - I - 0x031AE3 0C:9AD3: C4        .byte $C4   ; 
- D 0 - I - 0x031AE4 0C:9AD4: 00        .byte $00   ; 
- D 0 - I - 0x031AE5 0C:9AD5: C3        .byte $C3   ; 
- D 0 - I - 0x031AE6 0C:9AD6: 00        .byte $00   ; 
- D 0 - I - 0x031AE7 0C:9AD7: C1        .byte $C1   ; 
- D 0 - I - 0x031AE8 0C:9AD8: 00        .byte $00   ; 
- D 0 - I - 0x031AE9 0C:9AD9: C2        .byte $C2   ; 
- D 0 - I - 0x031AEA 0C:9ADA: 00        .byte $00   ; 
- D 0 - I - 0x031AEB 0C:9ADB: C4        .byte $C4   ; 
- D 0 - I - 0x031AEC 0C:9ADC: 00        .byte $00   ; 
- D 0 - I - 0x031AED 0C:9ADD: FF        .byte con_se_cb_1_FF   ; 



off_ch_06_9ADE_3D:
- D 0 - I - 0x031AEE 0C:9ADE: 02        .byte $02   ; 
- D 0 - I - 0x031AEF 0C:9ADF: CA        .byte $CA   ; 
- D 0 - I - 0x031AF0 0C:9AE0: CB        .byte $CB   ; 
- D 0 - I - 0x031AF1 0C:9AE1: 0C        .byte $0C   ; 
- D 0 - I - 0x031AF2 0C:9AE2: CA        .byte $CA   ; 
- D 0 - I - 0x031AF3 0C:9AE3: FF        .byte con_se_cb_1_FF   ; 



off_ch_03_9AE4_46:
- D 0 - I - 0x031AF4 0C:9AE4: 03        .byte $03   ; 
- D 0 - I - 0x031AF5 0C:9AE5: 30        .byte $30   ; 
- D 0 - I - 0x031AF6 0C:9AE6: 89        .byte $89   ; 
- D 0 - I - 0x031AF7 0C:9AE7: 10        .byte $10   ; 
- D 0 - I - 0x031AF8 0C:9AE8: 60        .byte $60   ; 
- D 0 - I - 0x031AF9 0C:9AE9: 30        .byte $30   ; 
- D 0 - I - 0x031AFA 0C:9AEA: 60        .byte $60   ; 
- D 0 - I - 0x031AFB 0C:9AEB: 40        .byte $40   ; 
- D 0 - I - 0x031AFC 0C:9AEC: 60        .byte $60   ; 
- D 0 - I - 0x031AFD 0C:9AED: 50        .byte $50   ; 
- D 0 - I - 0x031AFE 0C:9AEE: 60        .byte $60   ; 
- D 0 - I - 0x031AFF 0C:9AEF: 60        .byte $60   ; 
- D 0 - I - 0x031B00 0C:9AF0: 60        .byte $60   ; 
- D 0 - I - 0x031B01 0C:9AF1: 70        .byte $70   ; 
- D 0 - I - 0x031B02 0C:9AF2: 60        .byte $60   ; 
- D 0 - I - 0x031B03 0C:9AF3: 80        .byte $80   ; 
- D 0 - I - 0x031B04 0C:9AF4: 60        .byte $60   ; 
- D 0 - I - 0x031B05 0C:9AF5: 90        .byte $90   ; 
- D 0 - I - 0x031B06 0C:9AF6: 60        .byte $60   ; 
- D 0 - I - 0x031B07 0C:9AF7: A0        .byte $A0   ; 
- D 0 - I - 0x031B08 0C:9AF8: 60        .byte $60   ; 
- D 0 - I - 0x031B09 0C:9AF9: B0        .byte $B0   ; 
- D 0 - I - 0x031B0A 0C:9AFA: 60        .byte $60   ; 
- D 0 - I - 0x031B0B 0C:9AFB: C0        .byte $C0   ; 
- D 0 - I - 0x031B0C 0C:9AFC: 60        .byte $60   ; 
- D 0 - I - 0x031B0D 0C:9AFD: D0        .byte $D0   ; 
- D 0 - I - 0x031B0E 0C:9AFE: 60        .byte $60   ; 
- D 0 - I - 0x031B0F 0C:9AFF: E0        .byte $E0   ; 
- D 0 - I - 0x031B10 0C:9B00: 60        .byte $60   ; 
- D 0 - I - 0x031B11 0C:9B01: E0        .byte $E0   ; 
- D 0 - I - 0x031B12 0C:9B02: 60        .byte $60   ; 
- D 0 - I - 0x031B13 0C:9B03: B0        .byte $B0   ; 
- D 0 - I - 0x031B14 0C:9B04: 60        .byte $60   ; 
- D 0 - I - 0x031B15 0C:9B05: 90        .byte $90   ; 
- D 0 - I - 0x031B16 0C:9B06: 60        .byte $60   ; 
- D 0 - I - 0x031B17 0C:9B07: 70        .byte $70   ; 
- D 0 - I - 0x031B18 0C:9B08: 60        .byte $60   ; 
- D 0 - I - 0x031B19 0C:9B09: 50        .byte $50   ; 
- D 0 - I - 0x031B1A 0C:9B0A: 60        .byte $60   ; 
- D 0 - I - 0x031B1B 0C:9B0B: 30        .byte $30   ; 
- D 0 - I - 0x031B1C 0C:9B0C: 60        .byte $60   ; 
- D 0 - I - 0x031B1D 0C:9B0D: 20        .byte $20   ; 
- D 0 - I - 0x031B1E 0C:9B0E: 60        .byte $60   ; 
- D 0 - I - 0x031B1F 0C:9B0F: 10        .byte $10   ; 
- D 0 - I - 0x031B20 0C:9B10: 60        .byte $60   ; 
- D 0 - I - 0x031B21 0C:9B11: 0C        .byte $0C   ; 
- D 0 - I - 0x031B22 0C:9B12: 30        .byte $30   ; 
- D 0 - I - 0x031B23 0C:9B13: 8D        .byte $8D   ; 
- D 0 - I - 0x031B24 0C:9B14: 31        .byte $31   ; 
- D 0 - I - 0x031B25 0C:9B15: 60        .byte $60   ; 
- D 0 - I - 0x031B26 0C:9B16: 41        .byte $41   ; 
- D 0 - I - 0x031B27 0C:9B17: 50        .byte $50   ; 
- D 0 - I - 0x031B28 0C:9B18: 51        .byte $51   ; 
- D 0 - I - 0x031B29 0C:9B19: 40        .byte $40   ; 
- D 0 - I - 0x031B2A 0C:9B1A: 61        .byte $61   ; 
- D 0 - I - 0x031B2B 0C:9B1B: 30        .byte $30   ; 
- D 0 - I - 0x031B2C 0C:9B1C: 71        .byte $71   ; 
- D 0 - I - 0x031B2D 0C:9B1D: 20        .byte $20   ; 
- D 0 - I - 0x031B2E 0C:9B1E: 81        .byte $81   ; 
- D 0 - I - 0x031B2F 0C:9B1F: 10        .byte $10   ; 
- D 0 - I - 0x031B30 0C:9B20: 91        .byte $91   ; 
- D 0 - I - 0x031B31 0C:9B21: 00        .byte $00   ; 
- D 0 - I - 0x031B32 0C:9B22: A0        .byte $A0   ; 
- D 0 - I - 0x031B33 0C:9B23: F0        .byte $F0   ; 
- D 0 - I - 0x031B34 0C:9B24: B0        .byte $B0   ; 
- D 0 - I - 0x031B35 0C:9B25: E0        .byte $E0   ; 
- D 0 - I - 0x031B36 0C:9B26: C0        .byte $C0   ; 
- D 0 - I - 0x031B37 0C:9B27: D0        .byte $D0   ; 
- D 0 - I - 0x031B38 0C:9B28: D0        .byte $D0   ; 
- D 0 - I - 0x031B39 0C:9B29: C0        .byte $C0   ; 
- D 0 - I - 0x031B3A 0C:9B2A: E0        .byte $E0   ; 
- D 0 - I - 0x031B3B 0C:9B2B: B0        .byte $B0   ; 
- D 0 - I - 0x031B3C 0C:9B2C: F0        .byte con_se_cb_1_F0 + $00   ; 
- D 0 - I - 0x031B3D 0C:9B2D: A0        .byte $A0   ; 
- D 0 - I - 0x031B3E 0C:9B2E: 03        .byte $03   ; 
- D 0 - I - 0x031B3F 0C:9B2F: 30        .byte $30   ; 
- D 0 - I - 0x031B40 0C:9B30: 89        .byte $89   ; 
- D 0 - I - 0x031B41 0C:9B31: 10        .byte $10   ; 
- D 0 - I - 0x031B42 0C:9B32: 60        .byte $60   ; 
- D 0 - I - 0x031B43 0C:9B33: 30        .byte $30   ; 
- D 0 - I - 0x031B44 0C:9B34: 60        .byte $60   ; 
- D 0 - I - 0x031B45 0C:9B35: 40        .byte $40   ; 
- D 0 - I - 0x031B46 0C:9B36: 60        .byte $60   ; 
- D 0 - I - 0x031B47 0C:9B37: 50        .byte $50   ; 
- D 0 - I - 0x031B48 0C:9B38: 60        .byte $60   ; 
- D 0 - I - 0x031B49 0C:9B39: 60        .byte $60   ; 
- D 0 - I - 0x031B4A 0C:9B3A: 60        .byte $60   ; 
- D 0 - I - 0x031B4B 0C:9B3B: 70        .byte $70   ; 
- D 0 - I - 0x031B4C 0C:9B3C: 60        .byte $60   ; 
- D 0 - I - 0x031B4D 0C:9B3D: 80        .byte $80   ; 
- D 0 - I - 0x031B4E 0C:9B3E: 60        .byte $60   ; 
- D 0 - I - 0x031B4F 0C:9B3F: 90        .byte $90   ; 
- D 0 - I - 0x031B50 0C:9B40: 60        .byte $60   ; 
- D 0 - I - 0x031B51 0C:9B41: A0        .byte $A0   ; 
- D 0 - I - 0x031B52 0C:9B42: 60        .byte $60   ; 
- D 0 - I - 0x031B53 0C:9B43: B0        .byte $B0   ; 
- D 0 - I - 0x031B54 0C:9B44: 60        .byte $60   ; 
- D 0 - I - 0x031B55 0C:9B45: C0        .byte $C0   ; 
- D 0 - I - 0x031B56 0C:9B46: 60        .byte $60   ; 
- D 0 - I - 0x031B57 0C:9B47: D0        .byte $D0   ; 
- D 0 - I - 0x031B58 0C:9B48: 60        .byte $60   ; 
- D 0 - I - 0x031B59 0C:9B49: E0        .byte $E0   ; 
- D 0 - I - 0x031B5A 0C:9B4A: 60        .byte $60   ; 
- D 0 - I - 0x031B5B 0C:9B4B: E0        .byte $E0   ; 
- D 0 - I - 0x031B5C 0C:9B4C: 60        .byte $60   ; 
- D 0 - I - 0x031B5D 0C:9B4D: B0        .byte $B0   ; 
- D 0 - I - 0x031B5E 0C:9B4E: 60        .byte $60   ; 
- D 0 - I - 0x031B5F 0C:9B4F: 90        .byte $90   ; 
- D 0 - I - 0x031B60 0C:9B50: 60        .byte $60   ; 
- D 0 - I - 0x031B61 0C:9B51: 70        .byte $70   ; 
- D 0 - I - 0x031B62 0C:9B52: 60        .byte $60   ; 
- D 0 - I - 0x031B63 0C:9B53: 50        .byte $50   ; 
- D 0 - I - 0x031B64 0C:9B54: 60        .byte $60   ; 
- D 0 - I - 0x031B65 0C:9B55: 30        .byte $30   ; 
- D 0 - I - 0x031B66 0C:9B56: 60        .byte $60   ; 
- D 0 - I - 0x031B67 0C:9B57: 20        .byte $20   ; 
- D 0 - I - 0x031B68 0C:9B58: 60        .byte $60   ; 
- D 0 - I - 0x031B69 0C:9B59: 10        .byte $10   ; 
- D 0 - I - 0x031B6A 0C:9B5A: 60        .byte $60   ; 
- D 0 - I - 0x031B6B 0C:9B5B: FF        .byte con_se_cb_1_FF   ; 



off_ch_03_9B5C_40:
- D 0 - I - 0x031B6C 0C:9B5C: 01        .byte $01   ; 
- D 0 - I - 0x031B6D 0C:9B5D: 70        .byte $70   ; 
- D 0 - I - 0x031B6E 0C:9B5E: F8        .byte $F8   ; 
- D 0 - I - 0x031B6F 0C:9B5F: B1        .byte $B1   ; 
- D 0 - I - 0x031B70 0C:9B60: 1D        .byte $1D   ; 
- D 0 - I - 0x031B71 0C:9B61: B1        .byte $B1   ; 
- D 0 - I - 0x031B72 0C:9B62: 93        .byte $93   ; 
- D 0 - I - 0x031B73 0C:9B63: FB        .byte con_se_cb_1_FB   ; 
- D 0 - I - 0x031B74 0C:9B64: 11        .byte $11   ; 
- D 0 - I - 0x031B75 0C:9B65: 1D        .byte $1D   ; 
- D 0 - I - 0x031B76 0C:9B66: 11        .byte $11   ; 
- D 0 - I - 0x031B77 0C:9B67: 93        .byte $93   ; 
- D 0 - I - 0x031B78 0C:9B68: FE        .byte con_se_cb_1_FE, $02   ; 
- D 0 - I - 0x031B7A 0C:9B6A: 00        .byte $00   ; 
- D 0 - I - 0x031B7B 0C:9B6B: 00        .byte $00   ; 
- D 0 - I - 0x031B7C 0C:9B6C: FB        .byte con_se_cb_1_FB   ; 
- D 0 - I - 0x031B7D 0C:9B6D: B1        .byte $B1   ; 
- D 0 - I - 0x031B7E 0C:9B6E: 1D        .byte $1D   ; 
- D 0 - I - 0x031B7F 0C:9B6F: B1        .byte $B1   ; 
- D 0 - I - 0x031B80 0C:9B70: 93        .byte $93   ; 
- D 0 - I - 0x031B81 0C:9B71: FE        .byte con_se_cb_1_FE, $0C   ; 
- D 0 - I - 0x031B83 0C:9B73: FF        .byte con_se_cb_1_FF   ; 



off_ch_03_9B74_10:
- D 0 - I - 0x031B84 0C:9B74: 01        .byte $01   ; 
- D 0 - I - 0x031B85 0C:9B75: 30        .byte $30   ; 
- D 0 - I - 0x031B86 0C:9B76: 81        .byte $81   ; 
- D 0 - I - 0x031B87 0C:9B77: E8        .byte con_se_cb_2_E8, $02   ; 
- D 0 - I - 0x031B89 0C:9B79: F0        .byte con_se_cb_1_F0 + $00   ; 
- D 0 - I - 0x031B8A 0C:9B7A: 34        .byte $34   ; 
- D 0 - I - 0x031B8B 0C:9B7B: 70        .byte $70   ; 
- D 0 - I - 0x031B8C 0C:9B7C: 34        .byte $34   ; 
- D 0 - I - 0x031B8D 0C:9B7D: 00        .byte $00   ; 
- D 0 - I - 0x031B8E 0C:9B7E: 00        .byte $00   ; 
- D 0 - I - 0x031B8F 0C:9B7F: D0        .byte $D0   ; 
- D 0 - I - 0x031B90 0C:9B80: 30        .byte $30   ; 
- D 0 - I - 0x031B91 0C:9B81: 00        .byte $00   ; 
- D 0 - I - 0x031B92 0C:9B82: 00        .byte $00   ; 
- D 0 - I - 0x031B93 0C:9B83: B0        .byte $B0   ; 
- D 0 - I - 0x031B94 0C:9B84: 40        .byte $40   ; 
- D 0 - I - 0x031B95 0C:9B85: 00        .byte $00   ; 
- D 0 - I - 0x031B96 0C:9B86: 00        .byte $00   ; 
- D 0 - I - 0x031B97 0C:9B87: 90        .byte $90   ; 
- D 0 - I - 0x031B98 0C:9B88: 28        .byte $28   ; 
- D 0 - I - 0x031B99 0C:9B89: 00        .byte $00   ; 
- D 0 - I - 0x031B9A 0C:9B8A: 80        .byte $80   ; 
- D 0 - I - 0x031B9B 0C:9B8B: 3B        .byte $3B   ; 
- D 0 - I - 0x031B9C 0C:9B8C: 00        .byte $00   ; 
- D 0 - I - 0x031B9D 0C:9B8D: 90        .byte $90   ; 
- D 0 - I - 0x031B9E 0C:9B8E: 18        .byte $18   ; 
- D 0 - I - 0x031B9F 0C:9B8F: 00        .byte $00   ; 
- D 0 - I - 0x031BA0 0C:9B90: 70        .byte $70   ; 
- D 0 - I - 0x031BA1 0C:9B91: 40        .byte $40   ; 
- D 0 - I - 0x031BA2 0C:9B92: 00        .byte $00   ; 
- D 0 - I - 0x031BA3 0C:9B93: 80        .byte $80   ; 
- D 0 - I - 0x031BA4 0C:9B94: 70        .byte $70   ; 
- D 0 - I - 0x031BA5 0C:9B95: 00        .byte $00   ; 
- D 0 - I - 0x031BA6 0C:9B96: 70        .byte $70   ; 
- D 0 - I - 0x031BA7 0C:9B97: 50        .byte $50   ; 
- D 0 - I - 0x031BA8 0C:9B98: FF        .byte con_se_cb_1_FF   ; 



off_ch_06_9B99_10_FF:
- D 0 - I - 0x031BA9 0C:9B99: FF        .byte con_se_cb_1_FF   ; 



off_ch_03_9B9A_41:
- D 0 - I - 0x031BAA 0C:9B9A: 08        .byte $08   ; 
- D 0 - I - 0x031BAB 0C:9B9B: B0        .byte $B0   ; 
- D 0 - I - 0x031BAC 0C:9B9C: 8B        .byte $8B   ; 
- D 0 - I - 0x031BAD 0C:9B9D: ED        .byte con_se_cb_2_ED, $40   ; 
- D 0 - I - 0x031BAF 0C:9B9F: 75        .byte $75   ; 
- D 0 - I - 0x031BB0 0C:9BA0: 90        .byte $90   ; 
- D 0 - I - 0x031BB1 0C:9BA1: 34        .byte $34   ; 
- D 0 - I - 0x031BB2 0C:9BA2: 90        .byte $90   ; 
- D 0 - I - 0x031BB3 0C:9BA3: B5        .byte $B5   ; 
- D 0 - I - 0x031BB4 0C:9BA4: 40        .byte $40   ; 
- D 0 - I - 0x031BB5 0C:9BA5: 34        .byte $34   ; 
- D 0 - I - 0x031BB6 0C:9BA6: 40        .byte $40   ; 
- D 0 - I - 0x031BB7 0C:9BA7: C4        .byte $C4   ; 
- D 0 - I - 0x031BB8 0C:9BA8: D0        .byte $D0   ; 
- D 0 - I - 0x031BB9 0C:9BA9: 23        .byte $23   ; 
- D 0 - I - 0x031BBA 0C:9BAA: D0        .byte $D0   ; 
- D 0 - I - 0x031BBB 0C:9BAB: D4        .byte $D4   ; 
- D 0 - I - 0x031BBC 0C:9BAC: 50        .byte $50   ; 
- D 0 - I - 0x031BBD 0C:9BAD: 43        .byte $43   ; 
- D 0 - I - 0x031BBE 0C:9BAE: 50        .byte $50   ; 
- D 0 - I - 0x031BBF 0C:9BAF: D4        .byte $D4   ; 
- D 0 - I - 0x031BC0 0C:9BB0: 00        .byte $00   ; 
- D 0 - I - 0x031BC1 0C:9BB1: 43        .byte $43   ; 
- D 0 - I - 0x031BC2 0C:9BB2: 00        .byte $00   ; 
- D 0 - I - 0x031BC3 0C:9BB3: D3        .byte $D3   ; 
- D 0 - I - 0x031BC4 0C:9BB4: B0        .byte $B0   ; 
- D 0 - I - 0x031BC5 0C:9BB5: 42        .byte $42   ; 
- D 0 - I - 0x031BC6 0C:9BB6: B0        .byte $B0   ; 
- D 0 - I - 0x031BC7 0C:9BB7: D3        .byte $D3   ; 
- D 0 - I - 0x031BC8 0C:9BB8: 70        .byte $70   ; 
- D 0 - I - 0x031BC9 0C:9BB9: 42        .byte $42   ; 
- D 0 - I - 0x031BCA 0C:9BBA: 70        .byte $70   ; 
- D 0 - I - 0x031BCB 0C:9BBB: D3        .byte $D3   ; 
- D 0 - I - 0x031BCC 0C:9BBC: 20        .byte $20   ; 
- D 0 - I - 0x031BCD 0C:9BBD: 42        .byte $42   ; 
- D 0 - I - 0x031BCE 0C:9BBE: 20        .byte $20   ; 
- D 0 - I - 0x031BCF 0C:9BBF: 0F        .byte $0F   ; 
- D 0 - I - 0x031BD0 0C:9BC0: B0        .byte $B0   ; 
- D 0 - I - 0x031BD1 0C:9BC1: 82        .byte $82   ; 
- D 0 - I - 0x031BD2 0C:9BC2: E6        .byte con_se_cb_2_E6, $10   ; 
- D 0 - I - 0x031BD4 0C:9BC4: 90        .byte $90   ; 
- D 0 - I - 0x031BD5 0C:9BC5: C0        .byte $C0   ; 
- D 0 - I - 0x031BD6 0C:9BC6: 50        .byte $50   ; 
- D 0 - I - 0x031BD7 0C:9BC7: C0        .byte $C0   ; 
- D 0 - I - 0x031BD8 0C:9BC8: 30        .byte $30   ; 
- D 0 - I - 0x031BD9 0C:9BC9: C0        .byte $C0   ; 
- D 0 - I - 0x031BDA 0C:9BCA: 20        .byte $20   ; 
- D 0 - I - 0x031BDB 0C:9BCB: C0        .byte $C0   ; 
- D 0 - I - 0x031BDC 0C:9BCC: 10        .byte $10   ; 
- D 0 - I - 0x031BDD 0C:9BCD: C0        .byte $C0   ; 
- D 0 - I - 0x031BDE 0C:9BCE: FF        .byte con_se_cb_1_FF   ; 



off_ch_06_9BCF_42:
- D 0 - I - 0x031BDF 0C:9BCF: 01        .byte $01   ; 
- D 0 - I - 0x031BE0 0C:9BD0: CE        .byte $CE   ; 
- D 0 - I - 0x031BE1 0C:9BD1: CD        .byte $CD   ; 
- D 0 - I - 0x031BE2 0C:9BD2: CC        .byte $CC   ; 
- D 0 - I - 0x031BE3 0C:9BD3: 02        .byte $02   ; 
- D 0 - I - 0x031BE4 0C:9BD4: 87        .byte $87   ; 
- D 0 - I - 0x031BE5 0C:9BD5: 88        .byte $88   ; 
- D 0 - I - 0x031BE6 0C:9BD6: 99        .byte $99   ; 
- D 0 - I - 0x031BE7 0C:9BD7: AA        .byte $AA   ; 
- D 0 - I - 0x031BE8 0C:9BD8: AB        .byte $AB   ; 
- D 0 - I - 0x031BE9 0C:9BD9: AC        .byte $AC   ; 
- D 0 - I - 0x031BEA 0C:9BDA: AD        .byte $AD   ; 
- D 0 - I - 0x031BEB 0C:9BDB: 03        .byte $03   ; 
- D 0 - I - 0x031BEC 0C:9BDC: CE        .byte $CE   ; 
- D 0 - I - 0x031BED 0C:9BDD: BE        .byte $BE   ; 
- D 0 - I - 0x031BEE 0C:9BDE: AE        .byte $AE   ; 
- D 0 - I - 0x031BEF 0C:9BDF: 9E        .byte $9E   ; 
- D 0 - I - 0x031BF0 0C:9BE0: 7E        .byte $7E   ; 
- D 0 - I - 0x031BF1 0C:9BE1: 5E        .byte $5E   ; 
- D 0 - I - 0x031BF2 0C:9BE2: FB        .byte con_se_cb_1_FB   ; 
- D 0 - I - 0x031BF3 0C:9BE3: 6E        .byte $6E   ; 
- D 0 - I - 0x031BF4 0C:9BE4: FE        .byte con_se_cb_1_FE, $30   ; 
- D 0 - I - 0x031BF6 0C:9BE6: 06        .byte $06   ; 
- D 0 - I - 0x031BF7 0C:9BE7: 4E        .byte $4E   ; 
- D 0 - I - 0x031BF8 0C:9BE8: 3E        .byte $3E   ; 
- D 0 - I - 0x031BF9 0C:9BE9: 2E        .byte $2E   ; 
- D 0 - I - 0x031BFA 0C:9BEA: 1E        .byte $1E   ; 
- D 0 - I - 0x031BFB 0C:9BEB: FF        .byte con_se_cb_1_FF   ; 



off_ch_03_9BEC_43:
- D 0 - I - 0x031BFC 0C:9BEC: 01        .byte $01   ; 
- D 0 - I - 0x031BFD 0C:9BED: 70        .byte $70   ; 
- D 0 - I - 0x031BFE 0C:9BEE: 82        .byte $82   ; 
- D 0 - I - 0x031BFF 0C:9BEF: B2        .byte $B2   ; 
- D 0 - I - 0x031C00 0C:9BF0: 22        .byte $22   ; 
- D 0 - I - 0x031C01 0C:9BF1: 20        .byte $20   ; 
- D 0 - I - 0x031C02 0C:9BF2: 09        .byte $09   ; 
- D 0 - I - 0x031C03 0C:9BF3: D0        .byte $D0   ; 
- D 0 - I - 0x031C04 0C:9BF4: 77        .byte $77   ; 
- D 0 - I - 0x031C05 0C:9BF5: 10        .byte $10   ; 
- D 0 - I - 0x031C06 0C:9BF6: 09        .byte $09   ; 
- D 0 - I - 0x031C07 0C:9BF7: 10        .byte $10   ; 
- D 0 - I - 0x031C08 0C:9BF8: 66        .byte $66   ; 
- D 0 - I - 0x031C09 0C:9BF9: 20        .byte $20   ; 
- D 0 - I - 0x031C0A 0C:9BFA: 11        .byte $11   ; 
- D 0 - I - 0x031C0B 0C:9BFB: E6        .byte con_se_cb_2_E6, $10   ; 
- D 0 - I - 0x031C0D 0C:9BFD: 00        .byte $00   ; 
- D 0 - I - 0x031C0E 0C:9BFE: FF        .byte con_se_cb_1_FF   ; 



off_ch_06_9BFF_43:
- D 0 - I - 0x031C0F 0C:9BFF: 01        .byte $01   ; 
- D 0 - I - 0x031C10 0C:9C00: CD        .byte $CD   ; 
- D 0 - I - 0x031C11 0C:9C01: CC        .byte $CC   ; 
- D 0 - I - 0x031C12 0C:9C02: BB        .byte $BB   ; 
- D 0 - I - 0x031C13 0C:9C03: AA        .byte $AA   ; 
- D 0 - I - 0x031C14 0C:9C04: 8A        .byte $8A   ; 
- D 0 - I - 0x031C15 0C:9C05: 7A        .byte $7A   ; 
- D 0 - I - 0x031C16 0C:9C06: 7A        .byte $7A   ; 
- D 0 - I - 0x031C17 0C:9C07: 7A        .byte $7A   ; 
- D 0 - I - 0x031C18 0C:9C08: 7A        .byte $7A   ; 
- D 0 - I - 0x031C19 0C:9C09: 6A        .byte $6A   ; 
- D 0 - I - 0x031C1A 0C:9C0A: 5A        .byte $5A   ; 
- D 0 - I - 0x031C1B 0C:9C0B: 4A        .byte $4A   ; 
- D 0 - I - 0x031C1C 0C:9C0C: 3B        .byte $3B   ; 
- D 0 - I - 0x031C1D 0C:9C0D: 3A        .byte $3A   ; 
- D 0 - I - 0x031C1E 0C:9C0E: FB        .byte con_se_cb_1_FB   ; 
- D 0 - I - 0x031C1F 0C:9C0F: 39        .byte $39   ; 
- D 0 - I - 0x031C20 0C:9C10: FE        .byte con_se_cb_1_FE, $07   ; 
- D 0 - I - 0x031C22 0C:9C12: 29        .byte $29   ; 
- D 0 - I - 0x031C23 0C:9C13: 1A        .byte $1A   ; 
- D 0 - I - 0x031C24 0C:9C14: 19        .byte $19   ; 
- D 0 - I - 0x031C25 0C:9C15: 09        .byte $09   ; 
- D 0 - I - 0x031C26 0C:9C16: 18        .byte $18   ; 
- D 0 - I - 0x031C27 0C:9C17: FF        .byte con_se_cb_1_FF   ; 



off_ch_03_9C18_48:
- D 0 - I - 0x031C28 0C:9C18: 06        .byte $06   ; 
- D 0 - I - 0x031C29 0C:9C19: B0        .byte $B0   ; 
- D 0 - I - 0x031C2A 0C:9C1A: 88        .byte $88   ; 
- D 0 - I - 0x031C2B 0C:9C1B: FB        .byte con_se_cb_1_FB   ; 
- D 0 - I - 0x031C2C 0C:9C1C: 20        .byte $20   ; 
- D 0 - I - 0x031C2D 0C:9C1D: A9        .byte $A9   ; 
- D 0 - I - 0x031C2E 0C:9C1E: 20        .byte $20   ; 
- D 0 - I - 0x031C2F 0C:9C1F: 2A        .byte $2A   ; 
- D 0 - I - 0x031C30 0C:9C20: 70        .byte $70   ; 
- D 0 - I - 0x031C31 0C:9C21: A9        .byte $A9   ; 
- D 0 - I - 0x031C32 0C:9C22: 70        .byte $70   ; 
- D 0 - I - 0x031C33 0C:9C23: 2A        .byte $2A   ; 
- D 0 - I - 0x031C34 0C:9C24: 80        .byte $80   ; 
- D 0 - I - 0x031C35 0C:9C25: A9        .byte $A9   ; 
- D 0 - I - 0x031C36 0C:9C26: 80        .byte $80   ; 
- D 0 - I - 0x031C37 0C:9C27: 2A        .byte $2A   ; 
- D 0 - I - 0x031C38 0C:9C28: 50        .byte $50   ; 
- D 0 - I - 0x031C39 0C:9C29: A9        .byte $A9   ; 
- D 0 - I - 0x031C3A 0C:9C2A: 50        .byte $50   ; 
- D 0 - I - 0x031C3B 0C:9C2B: 2A        .byte $2A   ; 
- D 0 - I - 0x031C3C 0C:9C2C: 40        .byte $40   ; 
- D 0 - I - 0x031C3D 0C:9C2D: A9        .byte $A9   ; 
- D 0 - I - 0x031C3E 0C:9C2E: 40        .byte $40   ; 
- D 0 - I - 0x031C3F 0C:9C2F: 2A        .byte $2A   ; 
- D 0 - I - 0x031C40 0C:9C30: 30        .byte $30   ; 
- D 0 - I - 0x031C41 0C:9C31: A9        .byte $A9   ; 
- D 0 - I - 0x031C42 0C:9C32: 30        .byte $30   ; 
- D 0 - I - 0x031C43 0C:9C33: 2A        .byte $2A   ; 
- D 0 - I - 0x031C44 0C:9C34: 20        .byte $20   ; 
- D 0 - I - 0x031C45 0C:9C35: A9        .byte $A9   ; 
- D 0 - I - 0x031C46 0C:9C36: 20        .byte $20   ; 
- D 0 - I - 0x031C47 0C:9C37: 2A        .byte $2A   ; 
- D 0 - I - 0x031C48 0C:9C38: 10        .byte $10   ; 
- D 0 - I - 0x031C49 0C:9C39: A9        .byte $A9   ; 
- D 0 - I - 0x031C4A 0C:9C3A: 10        .byte $10   ; 
- D 0 - I - 0x031C4B 0C:9C3B: 2A        .byte $2A   ; 
- D 0 - I - 0x031C4C 0C:9C3C: FE        .byte con_se_cb_1_FE, $02   ; 
- D 0 - I - 0x031C4E 0C:9C3E: 10        .byte $10   ; 
- D 0 - I - 0x031C4F 0C:9C3F: A9        .byte $A9   ; 
- D 0 - I - 0x031C50 0C:9C40: 10        .byte $10   ; 
- D 0 - I - 0x031C51 0C:9C41: 2A        .byte $2A   ; 
- D 0 - I - 0x031C52 0C:9C42: 10        .byte $10   ; 
- D 0 - I - 0x031C53 0C:9C43: A9        .byte $A9   ; 
- D 0 - I - 0x031C54 0C:9C44: 10        .byte $10   ; 
- D 0 - I - 0x031C55 0C:9C45: 2A        .byte $2A   ; 
- D 0 - I - 0x031C56 0C:9C46: 50        .byte $50   ; 
- D 0 - I - 0x031C57 0C:9C47: A9        .byte $A9   ; 
- D 0 - I - 0x031C58 0C:9C48: 50        .byte $50   ; 
- D 0 - I - 0x031C59 0C:9C49: 2A        .byte $2A   ; 
- D 0 - I - 0x031C5A 0C:9C4A: 30        .byte $30   ; 
- D 0 - I - 0x031C5B 0C:9C4B: A9        .byte $A9   ; 
- D 0 - I - 0x031C5C 0C:9C4C: 30        .byte $30   ; 
- D 0 - I - 0x031C5D 0C:9C4D: 2A        .byte $2A   ; 
- D 0 - I - 0x031C5E 0C:9C4E: 20        .byte $20   ; 
- D 0 - I - 0x031C5F 0C:9C4F: A9        .byte $A9   ; 
- D 0 - I - 0x031C60 0C:9C50: 20        .byte $20   ; 
- D 0 - I - 0x031C61 0C:9C51: 2A        .byte $2A   ; 
- D 0 - I - 0x031C62 0C:9C52: 10        .byte $10   ; 
- D 0 - I - 0x031C63 0C:9C53: A9        .byte $A9   ; 
- D 0 - I - 0x031C64 0C:9C54: 10        .byte $10   ; 
- D 0 - I - 0x031C65 0C:9C55: 2A        .byte $2A   ; 
- D 0 - I - 0x031C66 0C:9C56: 10        .byte $10   ; 
- D 0 - I - 0x031C67 0C:9C57: A9        .byte $A9   ; 
- D 0 - I - 0x031C68 0C:9C58: 10        .byte $10   ; 
- D 0 - I - 0x031C69 0C:9C59: 2A        .byte $2A   ; 
- D 0 - I - 0x031C6A 0C:9C5A: FF        .byte con_se_cb_1_FF   ; 



off_ch_06_9C5B_48:
- D 0 - I - 0x031C6B 0C:9C5B: 06        .byte $06   ; 
- D 0 - I - 0x031C6C 0C:9C5C: FB        .byte con_se_cb_1_FB   ; 
- D 0 - I - 0x031C6D 0C:9C5D: 3F        .byte $3F   ; 
- D 0 - I - 0x031C6E 0C:9C5E: 40        .byte $40   ; 
- D 0 - I - 0x031C6F 0C:9C5F: AF        .byte $AF   ; 
- D 0 - I - 0x031C70 0C:9C60: B0        .byte $B0   ; 
- D 0 - I - 0x031C71 0C:9C61: CF        .byte $CF   ; 
- D 0 - I - 0x031C72 0C:9C62: D0        .byte $D0   ; 
- D 0 - I - 0x031C73 0C:9C63: AF        .byte $AF   ; 
- D 0 - I - 0x031C74 0C:9C64: 90        .byte $90   ; 
- D 0 - I - 0x031C75 0C:9C65: 8F        .byte $8F   ; 
- D 0 - I - 0x031C76 0C:9C66: 70        .byte $70   ; 
- D 0 - I - 0x031C77 0C:9C67: 6F        .byte $6F   ; 
- D 0 - I - 0x031C78 0C:9C68: 50        .byte $50   ; 
- D 0 - I - 0x031C79 0C:9C69: 4F        .byte $4F   ; 
- D 0 - I - 0x031C7A 0C:9C6A: 30        .byte $30   ; 
- D 0 - I - 0x031C7B 0C:9C6B: 2F        .byte $2F   ; 
- D 0 - I - 0x031C7C 0C:9C6C: 20        .byte $20   ; 
- D 0 - I - 0x031C7D 0C:9C6D: FE        .byte con_se_cb_1_FE, $02   ; 
- D 0 - I - 0x031C7F 0C:9C6F: 2F        .byte $2F   ; 
- D 0 - I - 0x031C80 0C:9C70: 20        .byte $20   ; 
- D 0 - I - 0x031C81 0C:9C71: 3F        .byte $3F   ; 
- D 0 - I - 0x031C82 0C:9C72: 30        .byte $30   ; 
- D 0 - I - 0x031C83 0C:9C73: 6F        .byte $6F   ; 
- D 0 - I - 0x031C84 0C:9C74: 50        .byte $50   ; 
- D 0 - I - 0x031C85 0C:9C75: 5F        .byte $5F   ; 
- D 0 - I - 0x031C86 0C:9C76: 40        .byte $40   ; 
- D 0 - I - 0x031C87 0C:9C77: 3F        .byte $3F   ; 
- D 0 - I - 0x031C88 0C:9C78: 20        .byte $20   ; 
- D 0 - I - 0x031C89 0C:9C79: 2F        .byte $2F   ; 
- D 0 - I - 0x031C8A 0C:9C7A: 20        .byte $20   ; 
- D 0 - I - 0x031C8B 0C:9C7B: 2F        .byte $2F   ; 
- D 0 - I - 0x031C8C 0C:9C7C: 20        .byte $20   ; 
- D 0 - I - 0x031C8D 0C:9C7D: FF        .byte con_se_cb_1_FF   ; 



off_ch_03_9C7E_3E_FF:
- D 0 - I - 0x031C8E 0C:9C7E: FF        .byte con_se_cb_1_FF   ; 



off_ch_06_9C7F_3E:
- D 0 - I - 0x031C8F 0C:9C7F: 01        .byte $01   ; 
- D 0 - I - 0x031C90 0C:9C80: CF        .byte $CF   ; 
- D 0 - I - 0x031C91 0C:9C81: 0A        .byte $0A   ; 
- D 0 - I - 0x031C92 0C:9C82: CD        .byte $CD   ; 
- D 0 - I - 0x031C93 0C:9C83: 03        .byte $03   ; 
- D 0 - I - 0x031C94 0C:9C84: FB        .byte con_se_cb_1_FB   ; 
- D 0 - I - 0x031C95 0C:9C85: C9        .byte $C9   ; 
- D 0 - I - 0x031C96 0C:9C86: CF        .byte $CF   ; 
- D 0 - I - 0x031C97 0C:9C87: FE        .byte con_se_cb_1_FE, $04   ; 
- D 0 - I - 0x031C99 0C:9C89: 02        .byte $02   ; 
- D 0 - I - 0x031C9A 0C:9C8A: C9        .byte $C9   ; 
- D 0 - I - 0x031C9B 0C:9C8B: 0C        .byte $0C   ; 
- D 0 - I - 0x031C9C 0C:9C8C: BE        .byte $BE   ; 
- D 0 - I - 0x031C9D 0C:9C8D: BD        .byte $BD   ; 
- D 0 - I - 0x031C9E 0C:9C8E: 9D        .byte $9D   ; 
- D 0 - I - 0x031C9F 0C:9C8F: 9E        .byte $9E   ; 
- D 0 - I - 0x031CA0 0C:9C90: 7D        .byte $7D   ; 
- D 0 - I - 0x031CA1 0C:9C91: 6D        .byte $6D   ; 
- D 0 - I - 0x031CA2 0C:9C92: 5D        .byte $5D   ; 
- D 0 - I - 0x031CA3 0C:9C93: 4D        .byte $4D   ; 
- D 0 - I - 0x031CA4 0C:9C94: 3D        .byte $3D   ; 
- D 0 - I - 0x031CA5 0C:9C95: 2D        .byte $2D   ; 
- D 0 - I - 0x031CA6 0C:9C96: 1D        .byte $1D   ; 
- D 0 - I - 0x031CA7 0C:9C97: FF        .byte con_se_cb_1_FF   ; 



off_ch_03_9C98_1A:
- D 0 - I - 0x031CA8 0C:9C98: 05        .byte $05   ; 
- D 0 - I - 0x031CA9 0C:9C99: B0        .byte $B0   ; 
- D 0 - I - 0x031CAA 0C:9C9A: 88        .byte $88   ; 
- D 0 - I - 0x031CAB 0C:9C9B: B0        .byte $B0   ; 
- D 0 - I - 0x031CAC 0C:9C9C: 33        .byte $33   ; 
- D 0 - I - 0x031CAD 0C:9C9D: 70        .byte $70   ; 
- D 0 - I - 0x031CAE 0C:9C9E: 20        .byte $20   ; 
- D 0 - I - 0x031CAF 0C:9C9F: E7        .byte con_se_cb_2_E7   ; 
- D 0 - I - 0x031CB0 0C:9CA0: 50        .byte $50   ; 
- D 0 - I - 0x031CB1 0C:9CA1: 30        .byte $30   ; 
- D 0 - I - 0x031CB2 0C:9CA2: 00        .byte $00   ; 
- D 0 - I - 0x031CB3 0C:9CA3: 01        .byte $01   ; 
- D 0 - I - 0x031CB4 0C:9CA4: B0        .byte $B0   ; 
- D 0 - I - 0x031CB5 0C:9CA5: 88        .byte $88   ; 
- D 0 - I - 0x031CB6 0C:9CA6: 00        .byte $00   ; 
- D 0 - I - 0x031CB7 0C:9CA7: 05        .byte $05   ; 
- D 0 - I - 0x031CB8 0C:9CA8: B0        .byte $B0   ; 
- D 0 - I - 0x031CB9 0C:9CA9: 88        .byte $88   ; 
- D 0 - I - 0x031CBA 0C:9CAA: 20        .byte $20   ; 
- D 0 - I - 0x031CBB 0C:9CAB: 20        .byte $20   ; 
- D 0 - I - 0x031CBC 0C:9CAC: E7        .byte con_se_cb_2_E7   ; 
- D 0 - I - 0x031CBD 0C:9CAD: 10        .byte $10   ; 
- D 0 - I - 0x031CBE 0C:9CAE: 00        .byte $00   ; 
- D 0 - I - 0x031CBF 0C:9CAF: 04        .byte $04   ; 
- D 0 - I - 0x031CC0 0C:9CB0: B0        .byte $B0   ; 
- D 0 - I - 0x031CC1 0C:9CB1: 88        .byte $88   ; 
- D 0 - I - 0x031CC2 0C:9CB2: 00        .byte $00   ; 
- D 0 - I - 0x031CC3 0C:9CB3: 02        .byte $02   ; 
- D 0 - I - 0x031CC4 0C:9CB4: B0        .byte $B0   ; 
- D 0 - I - 0x031CC5 0C:9CB5: 88        .byte $88   ; 
- D 0 - I - 0x031CC6 0C:9CB6: 10        .byte $10   ; 
- D 0 - I - 0x031CC7 0C:9CB7: 20        .byte $20   ; 
- D 0 - I - 0x031CC8 0C:9CB8: E7        .byte con_se_cb_2_E7   ; 
- D 0 - I - 0x031CC9 0C:9CB9: 00        .byte $00   ; 
- D 0 - I - 0x031CCA 0C:9CBA: 00        .byte $00   ; 
- D 0 - I - 0x031CCB 0C:9CBB: 00        .byte $00   ; 
- D 0 - I - 0x031CCC 0C:9CBC: 00        .byte $00   ; 
- D 0 - I - 0x031CCD 0C:9CBD: FF        .byte con_se_cb_1_FF   ; 



off_ch_03_9CBE_19:
- D 0 - I - 0x031CCE 0C:9CBE: 01        .byte $01   ; 
- D 0 - I - 0x031CCF 0C:9CBF: 70        .byte $70   ; 
- D 0 - I - 0x031CD0 0C:9CC0: 88        .byte $88   ; 
- D 0 - I - 0x031CD1 0C:9CC1: 90        .byte $90   ; 
- D 0 - I - 0x031CD2 0C:9CC2: EC        .byte $EC   ; 
- D 0 - I - 0x031CD3 0C:9CC3: 90        .byte $90   ; 
- D 0 - I - 0x031CD4 0C:9CC4: 46        .byte $46   ; 
- D 0 - I - 0x031CD5 0C:9CC5: 90        .byte $90   ; 
- D 0 - I - 0x031CD6 0C:9CC6: 8E        .byte $8E   ; 
- D 0 - I - 0x031CD7 0C:9CC7: 90        .byte $90   ; 
- D 0 - I - 0x031CD8 0C:9CC8: 46        .byte $46   ; 
- D 0 - I - 0x031CD9 0C:9CC9: 90        .byte $90   ; 
- D 0 - I - 0x031CDA 0C:9CCA: 8E        .byte $8E   ; 
- D 0 - I - 0x031CDB 0C:9CCB: 90        .byte $90   ; 
- D 0 - I - 0x031CDC 0C:9CCC: 46        .byte $46   ; 
- D 0 - I - 0x031CDD 0C:9CCD: 90        .byte $90   ; 
- D 0 - I - 0x031CDE 0C:9CCE: 50        .byte $50   ; 
- D 0 - I - 0x031CDF 0C:9CCF: 90        .byte $90   ; 
- D 0 - I - 0x031CE0 0C:9CD0: F0        .byte $F0   ; 
- D 0 - I - 0x031CE1 0C:9CD1: 90        .byte $90   ; 
- D 0 - I - 0x031CE2 0C:9CD2: E0        .byte $E0   ; 
- D 0 - I - 0x031CE3 0C:9CD3: 90        .byte $90   ; 
- D 0 - I - 0x031CE4 0C:9CD4: D0        .byte $D0   ; 
- D 0 - I - 0x031CE5 0C:9CD5: 90        .byte $90   ; 
- D 0 - I - 0x031CE6 0C:9CD6: C0        .byte $C0   ; 
- D 0 - I - 0x031CE7 0C:9CD7: 90        .byte $90   ; 
- D 0 - I - 0x031CE8 0C:9CD8: B0        .byte $B0   ; 
- D 0 - I - 0x031CE9 0C:9CD9: 90        .byte $90   ; 
- D 0 - I - 0x031CEA 0C:9CDA: A0        .byte $A0   ; 
- D 0 - I - 0x031CEB 0C:9CDB: 90        .byte $90   ; 
- D 0 - I - 0x031CEC 0C:9CDC: 90        .byte $90   ; 
- D 0 - I - 0x031CED 0C:9CDD: 90        .byte $90   ; 
- D 0 - I - 0x031CEE 0C:9CDE: 80        .byte $80   ; 
- D 0 - I - 0x031CEF 0C:9CDF: 90        .byte $90   ; 
- D 0 - I - 0x031CF0 0C:9CE0: 66        .byte $66   ; 
- D 0 - I - 0x031CF1 0C:9CE1: 90        .byte $90   ; 
- D 0 - I - 0x031CF2 0C:9CE2: 44        .byte $44   ; 
- D 0 - I - 0x031CF3 0C:9CE3: 90        .byte $90   ; 
- D 0 - I - 0x031CF4 0C:9CE4: 22        .byte $22   ; 
- D 0 - I - 0x031CF5 0C:9CE5: FF        .byte con_se_cb_1_FF   ; 



off_ch_03_9CE6_3F_FF:
- D 0 - I - 0x031CF6 0C:9CE6: FF        .byte con_se_cb_1_FF   ; 



off_ch_06_9CE7_3F:
- D 0 - I - 0x031CF7 0C:9CE7: 01        .byte $01   ; 
- D 0 - I - 0x031CF8 0C:9CE8: CF        .byte $CF   ; 
- D 0 - I - 0x031CF9 0C:9CE9: 0A        .byte $0A   ; 
- D 0 - I - 0x031CFA 0C:9CEA: CD        .byte $CD   ; 
- D 0 - I - 0x031CFB 0C:9CEB: 03        .byte $03   ; 
- D 0 - I - 0x031CFC 0C:9CEC: FB        .byte con_se_cb_1_FB   ; 
- D 0 - I - 0x031CFD 0C:9CED: C9        .byte $C9   ; 
- D 0 - I - 0x031CFE 0C:9CEE: CF        .byte $CF   ; 
- D 0 - I - 0x031CFF 0C:9CEF: FE        .byte con_se_cb_1_FE, $04   ; 
- D 0 - I - 0x031D01 0C:9CF1: 0A        .byte $0A   ; 
- D 0 - I - 0x031D02 0C:9CF2: CD        .byte $CD   ; 
- D 0 - I - 0x031D03 0C:9CF3: 01        .byte $01   ; 
- D 0 - I - 0x031D04 0C:9CF4: CF        .byte $CF   ; 
- D 0 - I - 0x031D05 0C:9CF5: 03        .byte $03   ; 
- D 0 - I - 0x031D06 0C:9CF6: CA        .byte $CA   ; 
- D 0 - I - 0x031D07 0C:9CF7: CF        .byte $CF   ; 
- D 0 - I - 0x031D08 0C:9CF8: 0A        .byte $0A   ; 
- D 0 - I - 0x031D09 0C:9CF9: CD        .byte $CD   ; 
- D 0 - I - 0x031D0A 0C:9CFA: 01        .byte $01   ; 
- D 0 - I - 0x031D0B 0C:9CFB: CF        .byte $CF   ; 
- D 0 - I - 0x031D0C 0C:9CFC: 05        .byte $05   ; 
- D 0 - I - 0x031D0D 0C:9CFD: CD        .byte $CD   ; 
- D 0 - I - 0x031D0E 0C:9CFE: CD        .byte $CD   ; 
- D 0 - I - 0x031D0F 0C:9CFF: CE        .byte $CE   ; 
- D 0 - I - 0x031D10 0C:9D00: CD        .byte $CD   ; 
- D 0 - I - 0x031D11 0C:9D01: CE        .byte $CE   ; 
- D 0 - I - 0x031D12 0C:9D02: CD        .byte $CD   ; 
- D 0 - I - 0x031D13 0C:9D03: CE        .byte $CE   ; 
- D 0 - I - 0x031D14 0C:9D04: CD        .byte $CD   ; 
- D 0 - I - 0x031D15 0C:9D05: 8E        .byte $8E   ; 
- D 0 - I - 0x031D16 0C:9D06: 7D        .byte $7D   ; 
- D 0 - I - 0x031D17 0C:9D07: 6E        .byte $6E   ; 
- D 0 - I - 0x031D18 0C:9D08: 5D        .byte $5D   ; 
- D 0 - I - 0x031D19 0C:9D09: 4E        .byte $4E   ; 
- D 0 - I - 0x031D1A 0C:9D0A: 3D        .byte $3D   ; 
- D 0 - I - 0x031D1B 0C:9D0B: 2E        .byte $2E   ; 
- D 0 - I - 0x031D1C 0C:9D0C: 1D        .byte $1D   ; 
- D 0 - I - 0x031D1D 0C:9D0D: 1E        .byte $1E   ; 
- D 0 - I - 0x031D1E 0C:9D0E: 1D        .byte $1D   ; 
- D 0 - I - 0x031D1F 0C:9D0F: FF        .byte con_se_cb_1_FF   ; 



off_ch_03_9D10_35:
- D 0 - I - 0x031D20 0C:9D10: 05        .byte $05   ; 
- D 0 - I - 0x031D21 0C:9D11: 30        .byte $30   ; 
- D 0 - I - 0x031D22 0C:9D12: 81        .byte $81   ; 
- D 0 - I - 0x031D23 0C:9D13: 00        .byte $00   ; 
- D 0 - I - 0x031D24 0C:9D14: 01        .byte $01   ; 
- D 0 - I - 0x031D25 0C:9D15: 30        .byte $30   ; 
- D 0 - I - 0x031D26 0C:9D16: 81        .byte $81   ; 
- D 0 - I - 0x031D27 0C:9D17: 00        .byte $00   ; 
- D 0 - I - 0x031D28 0C:9D18: D1        .byte $D1   ; 
- D 0 - I - 0x031D29 0C:9D19: 00        .byte $00   ; 
- D 0 - I - 0x031D2A 0C:9D1A: 00        .byte $00   ; 
- D 0 - I - 0x031D2B 0C:9D1B: 00        .byte $00   ; 
- D 0 - I - 0x031D2C 0C:9D1C: 00        .byte $00   ; 
- D 0 - I - 0x031D2D 0C:9D1D: D0        .byte $D0   ; 
- D 0 - I - 0x031D2E 0C:9D1E: 20        .byte $20   ; 
- D 0 - I - 0x031D2F 0C:9D1F: 00        .byte $00   ; 
- D 0 - I - 0x031D30 0C:9D20: 00        .byte $00   ; 
- D 0 - I - 0x031D31 0C:9D21: 00        .byte $00   ; 
- D 0 - I - 0x031D32 0C:9D22: D0        .byte $D0   ; 
- D 0 - I - 0x031D33 0C:9D23: F0        .byte $F0   ; 
- D 0 - I - 0x031D34 0C:9D24: 00        .byte $00   ; 
- D 0 - I - 0x031D35 0C:9D25: 00        .byte $00   ; 
- D 0 - I - 0x031D36 0C:9D26: 00        .byte $00   ; 
- D 0 - I - 0x031D37 0C:9D27: D0        .byte $D0   ; 
- D 0 - I - 0x031D38 0C:9D28: 1F        .byte $1F   ; 
- D 0 - I - 0x031D39 0C:9D29: 00        .byte $00   ; 
- D 0 - I - 0x031D3A 0C:9D2A: 00        .byte $00   ; 
- D 0 - I - 0x031D3B 0C:9D2B: 00        .byte $00   ; 
- D 0 - I - 0x031D3C 0C:9D2C: D0        .byte $D0   ; 
- D 0 - I - 0x031D3D 0C:9D2D: E0        .byte $E0   ; 
- D 0 - I - 0x031D3E 0C:9D2E: 00        .byte $00   ; 
- D 0 - I - 0x031D3F 0C:9D2F: 00        .byte $00   ; 
- D 0 - I - 0x031D40 0C:9D30: 00        .byte $00   ; 
- D 0 - I - 0x031D41 0C:9D31: D0        .byte $D0   ; 
- D 0 - I - 0x031D42 0C:9D32: 1E        .byte $1E   ; 
- D 0 - I - 0x031D43 0C:9D33: 00        .byte $00   ; 
- D 0 - I - 0x031D44 0C:9D34: 00        .byte $00   ; 
- D 0 - I - 0x031D45 0C:9D35: 00        .byte $00   ; 
- D 0 - I - 0x031D46 0C:9D36: D0        .byte $D0   ; 
- D 0 - I - 0x031D47 0C:9D37: D0        .byte $D0   ; 
- D 0 - I - 0x031D48 0C:9D38: 00        .byte $00   ; 
- D 0 - I - 0x031D49 0C:9D39: 00        .byte $00   ; 
- D 0 - I - 0x031D4A 0C:9D3A: 00        .byte $00   ; 
- D 0 - I - 0x031D4B 0C:9D3B: D0        .byte $D0   ; 
- D 0 - I - 0x031D4C 0C:9D3C: 1C        .byte $1C   ; 
- D 0 - I - 0x031D4D 0C:9D3D: FF        .byte con_se_cb_1_FF   ; 



off_ch_03_9D3E_44:
- D 0 - I - 0x031D4E 0C:9D3E: 05        .byte $05   ; 
- D 0 - I - 0x031D4F 0C:9D3F: B0        .byte $B0   ; 
- D 0 - I - 0x031D50 0C:9D40: F8        .byte $F8   ; 
- D 0 - I - 0x031D51 0C:9D41: 00        .byte $00   ; 
- D 0 - I - 0x031D52 0C:9D42: ED        .byte con_se_cb_2_ED, $09   ; 
- D 0 - I - 0x031D54 0C:9D44: E6        .byte con_se_cb_2_E6, $01   ; 
- D 0 - I - 0x031D56 0C:9D46: 70        .byte $70   ; 
- D 0 - I - 0x031D57 0C:9D47: 28        .byte $28   ; 
- D 0 - I - 0x031D58 0C:9D48: E6        .byte con_se_cb_2_E6, $02   ; 
- D 0 - I - 0x031D5A 0C:9D4A: 50        .byte $50   ; 
- D 0 - I - 0x031D5B 0C:9D4B: 27        .byte $27   ; 
- D 0 - I - 0x031D5C 0C:9D4C: E6        .byte con_se_cb_2_E6, $03   ; 
- D 0 - I - 0x031D5E 0C:9D4E: 40        .byte $40   ; 
- D 0 - I - 0x031D5F 0C:9D4F: 27        .byte $27   ; 
- D 0 - I - 0x031D60 0C:9D50: FB        .byte con_se_cb_1_FB   ; 
- D 0 - I - 0x031D61 0C:9D51: 30        .byte $30   ; 
- D 0 - I - 0x031D62 0C:9D52: 27        .byte $27   ; 
- D 0 - I - 0x031D63 0C:9D53: FE        .byte con_se_cb_1_FE, $04   ; 
- D 0 - I - 0x031D65 0C:9D55: 00        .byte $00   ; 
- D 0 - I - 0x031D66 0C:9D56: 10        .byte $10   ; 
- D 0 - I - 0x031D67 0C:9D57: 27        .byte $27   ; 
- D 0 - I - 0x031D68 0C:9D58: FF        .byte con_se_cb_1_FF   ; 



off_ch_06_9D59_44:
- D 0 - I - 0x031D69 0C:9D59: 01        .byte $01   ; 
- D 0 - I - 0x031D6A 0C:9D5A: 00        .byte $00   ; 
- D 0 - I - 0x031D6B 0C:9D5B: 00        .byte $00   ; 
- D 0 - I - 0x031D6C 0C:9D5C: 00        .byte $00   ; 
- D 0 - I - 0x031D6D 0C:9D5D: 00        .byte $00   ; 
- D 0 - I - 0x031D6E 0C:9D5E: 00        .byte $00   ; 
- D 0 - I - 0x031D6F 0C:9D5F: 87        .byte $87   ; 
- D 0 - I - 0x031D70 0C:9D60: 02        .byte $02   ; 
- D 0 - I - 0x031D71 0C:9D61: FB        .byte con_se_cb_1_FB   ; 
- D 0 - I - 0x031D72 0C:9D62: A2        .byte $A2   ; 
- D 0 - I - 0x031D73 0C:9D63: 59        .byte $59   ; 
- D 0 - I - 0x031D74 0C:9D64: FE        .byte con_se_cb_1_FE, $04   ; 
- D 0 - I - 0x031D76 0C:9D66: 00        .byte $00   ; 
- D 0 - I - 0x031D77 0C:9D67: 22        .byte $22   ; 
- D 0 - I - 0x031D78 0C:9D68: 19        .byte $19   ; 
- D 0 - I - 0x031D79 0C:9D69: FF        .byte con_se_cb_1_FF   ; 



off_ch_03_9D6A_45:
- D 0 - I - 0x031D7A 0C:9D6A: 06        .byte $06   ; 
- D 0 - I - 0x031D7B 0C:9D6B: 30        .byte $30   ; 
- D 0 - I - 0x031D7C 0C:9D6C: 88        .byte $88   ; 
- D 0 - I - 0x031D7D 0C:9D6D: 00        .byte $00   ; 
- D 0 - I - 0x031D7E 0C:9D6E: B0        .byte $B0   ; 
- D 0 - I - 0x031D7F 0C:9D6F: 64        .byte $64   ; 
- D 0 - I - 0x031D80 0C:9D70: B0        .byte $B0   ; 
- D 0 - I - 0x031D81 0C:9D71: 54        .byte $54   ; 
- D 0 - I - 0x031D82 0C:9D72: B0        .byte $B0   ; 
- D 0 - I - 0x031D83 0C:9D73: 47        .byte $47   ; 
- D 0 - I - 0x031D84 0C:9D74: B0        .byte $B0   ; 
- D 0 - I - 0x031D85 0C:9D75: 3C        .byte $3C   ; 
- D 0 - I - 0x031D86 0C:9D76: B0        .byte $B0   ; 
- D 0 - I - 0x031D87 0C:9D77: 32        .byte $32   ; 
- D 0 - I - 0x031D88 0C:9D78: B0        .byte $B0   ; 
- D 0 - I - 0x031D89 0C:9D79: 2A        .byte $2A   ; 
- D 0 - I - 0x031D8A 0C:9D7A: B0        .byte $B0   ; 
- D 0 - I - 0x031D8B 0C:9D7B: 23        .byte $23   ; 
- D 0 - I - 0x031D8C 0C:9D7C: B0        .byte $B0   ; 
- D 0 - I - 0x031D8D 0C:9D7D: 1E        .byte $1E   ; 
- D 0 - I - 0x031D8E 0C:9D7E: 10        .byte $10   ; 
- D 0 - I - 0x031D8F 0C:9D7F: 32        .byte $32   ; 
- D 0 - I - 0x031D90 0C:9D80: 10        .byte $10   ; 
- D 0 - I - 0x031D91 0C:9D81: 2A        .byte $2A   ; 
- D 0 - I - 0x031D92 0C:9D82: 10        .byte $10   ; 
- D 0 - I - 0x031D93 0C:9D83: 23        .byte $23   ; 
- D 0 - I - 0x031D94 0C:9D84: 10        .byte $10   ; 
- D 0 - I - 0x031D95 0C:9D85: 1E        .byte $1E   ; 
- D 0 - I - 0x031D96 0C:9D86: FF        .byte con_se_cb_1_FF   ; 



off_ch_03_9D87_47:
- D 0 - I - 0x031D97 0C:9D87: 03        .byte $03   ; 
- D 0 - I - 0x031D98 0C:9D88: 70        .byte $70   ; 
- D 0 - I - 0x031D99 0C:9D89: 81        .byte $81   ; 
- D 0 - I - 0x031D9A 0C:9D8A: A0        .byte $A0   ; 
- D 0 - I - 0x031D9B 0C:9D8B: 40        .byte $40   ; 
- D 0 - I - 0x031D9C 0C:9D8C: 05        .byte $05   ; 
- D 0 - I - 0x031D9D 0C:9D8D: 70        .byte $70   ; 
- D 0 - I - 0x031D9E 0C:9D8E: 8D        .byte $8D   ; 
- D 0 - I - 0x031D9F 0C:9D8F: D1        .byte $D1   ; 
- D 0 - I - 0x031DA0 0C:9D90: D0        .byte $D0   ; 
- D 0 - I - 0x031DA1 0C:9D91: 80        .byte $80   ; 
- D 0 - I - 0x031DA2 0C:9D92: D0        .byte $D0   ; 
- D 0 - I - 0x031DA3 0C:9D93: 55        .byte $55   ; 
- D 0 - I - 0x031DA4 0C:9D94: C0        .byte $C0   ; 
- D 0 - I - 0x031DA5 0C:9D95: 04        .byte $04   ; 
- D 0 - I - 0x031DA6 0C:9D96: F0        .byte $F0   ; 
- D 0 - I - 0x031DA7 0C:9D97: 81        .byte $81   ; 
- D 0 - I - 0x031DA8 0C:9D98: A1        .byte $A1   ; 
- D 0 - I - 0x031DA9 0C:9D99: FE        .byte $FE   ; 
- D 0 - I - 0x031DAA 0C:9D9A: 06        .byte $06   ; 
- D 0 - I - 0x031DAB 0C:9D9B: D0        .byte $D0   ; 
- D 0 - I - 0x031DAC 0C:9D9C: 81        .byte $81   ; 
- D 0 - I - 0x031DAD 0C:9D9D: 90        .byte $90   ; 
- D 0 - I - 0x031DAE 0C:9D9E: 3A        .byte $3A   ; 
- D 0 - I - 0x031DAF 0C:9D9F: 60        .byte $60   ; 
- D 0 - I - 0x031DB0 0C:9DA0: 3B        .byte $3B   ; 
- D 0 - I - 0x031DB1 0C:9DA1: 40        .byte $40   ; 
- D 0 - I - 0x031DB2 0C:9DA2: 3A        .byte $3A   ; 
- D 0 - I - 0x031DB3 0C:9DA3: 30        .byte $30   ; 
- D 0 - I - 0x031DB4 0C:9DA4: 3B        .byte $3B   ; 
- D 0 - I - 0x031DB5 0C:9DA5: 20        .byte $20   ; 
- D 0 - I - 0x031DB6 0C:9DA6: 3A        .byte $3A   ; 
- D 0 - I - 0x031DB7 0C:9DA7: 10        .byte $10   ; 
- D 0 - I - 0x031DB8 0C:9DA8: 3B        .byte $3B   ; 
- D 0 - I - 0x031DB9 0C:9DA9: 10        .byte $10   ; 
- D 0 - I - 0x031DBA 0C:9DAA: 3A        .byte $3A   ; 
- D 0 - I - 0x031DBB 0C:9DAB: FF        .byte con_se_cb_1_FF   ; 



off_ch_06_9DAC_47:
- D 0 - I - 0x031DBC 0C:9DAC: 05        .byte $05   ; 
- D 0 - I - 0x031DBD 0C:9DAD: 10        .byte $10   ; 
- D 0 - I - 0x031DBE 0C:9DAE: DD        .byte $DD   ; 
- D 0 - I - 0x031DBF 0C:9DAF: 01        .byte $01   ; 
- D 0 - I - 0x031DC0 0C:9DB0: 10        .byte $10   ; 
- D 0 - I - 0x031DC1 0C:9DB1: DA        .byte $DA   ; 
- D 0 - I - 0x031DC2 0C:9DB2: 10        .byte $10   ; 
- D 0 - I - 0x031DC3 0C:9DB3: DD        .byte $DD   ; 
- D 0 - I - 0x031DC4 0C:9DB4: 10        .byte $10   ; 
- D 0 - I - 0x031DC5 0C:9DB5: DC        .byte $DC   ; 
- D 0 - I - 0x031DC6 0C:9DB6: 10        .byte $10   ; 
- D 0 - I - 0x031DC7 0C:9DB7: DB        .byte $DB   ; 
- D 0 - I - 0x031DC8 0C:9DB8: 10        .byte $10   ; 
- D 0 - I - 0x031DC9 0C:9DB9: DA        .byte $DA   ; 
- D 0 - I - 0x031DCA 0C:9DBA: D9        .byte $D9   ; 
- D 0 - I - 0x031DCB 0C:9DBB: D8        .byte $D8   ; 
- D 0 - I - 0x031DCC 0C:9DBC: D7        .byte $D7   ; 
- D 0 - I - 0x031DCD 0C:9DBD: D6        .byte $D6   ; 
- D 0 - I - 0x031DCE 0C:9DBE: D5        .byte $D5   ; 
- D 0 - I - 0x031DCF 0C:9DBF: D4        .byte $D4   ; 
- D 0 - I - 0x031DD0 0C:9DC0: D3        .byte $D3   ; 
- D 0 - I - 0x031DD1 0C:9DC1: D2        .byte $D2   ; 
- D 0 - I - 0x031DD2 0C:9DC2: D1        .byte $D1   ; 
- D 0 - I - 0x031DD3 0C:9DC3: FF        .byte con_se_cb_1_FF   ; 



off_ch_03_9DC4_4C:
- D 0 - I - 0x031DD4 0C:9DC4: 06        .byte $06   ; 
- D 0 - I - 0x031DD5 0C:9DC5: 30        .byte $30   ; 
- D 0 - I - 0x031DD6 0C:9DC6: 88        .byte $88   ; 
- D 0 - I - 0x031DD7 0C:9DC7: 83        .byte $83   ; 
- D 0 - I - 0x031DD8 0C:9DC8: FA        .byte $FA   ; 
- D 0 - I - 0x031DD9 0C:9DC9: 82        .byte $82   ; 
- D 0 - I - 0x031DDA 0C:9DCA: A7        .byte $A7   ; 
- D 0 - I - 0x031DDB 0C:9DCB: 81        .byte $81   ; 
- D 0 - I - 0x031DDC 0C:9DCC: FC        .byte $FC   ; 
- D 0 - I - 0x031DDD 0C:9DCD: 81        .byte $81   ; 
- D 0 - I - 0x031DDE 0C:9DCE: C5        .byte $C5   ; 
- D 0 - I - 0x031DDF 0C:9DCF: 81        .byte $81   ; 
- D 0 - I - 0x031DE0 0C:9DD0: 93        .byte $93   ; 
- D 0 - I - 0x031DE1 0C:9DD1: 81        .byte $81   ; 
- D 0 - I - 0x031DE2 0C:9DD2: 53        .byte $53   ; 
- D 0 - I - 0x031DE3 0C:9DD3: 80        .byte $80   ; 
- D 0 - I - 0x031DE4 0C:9DD4: FE        .byte $FE   ; 
- D 0 - I - 0x031DE5 0C:9DD5: 80        .byte $80   ; 
- D 0 - I - 0x031DE6 0C:9DD6: E2        .byte $E2   ; 
- D 0 - I - 0x031DE7 0C:9DD7: 80        .byte $80   ; 
- D 0 - I - 0x031DE8 0C:9DD8: C9        .byte $C9   ; 
- D 0 - I - 0x031DE9 0C:9DD9: 80        .byte $80   ; 
- D 0 - I - 0x031DEA 0C:9DDA: A9        .byte $A9   ; 
- D 0 - I - 0x031DEB 0C:9DDB: 80        .byte $80   ; 
- D 0 - I - 0x031DEC 0C:9DDC: 7F        .byte $7F   ; 
- D 0 - I - 0x031DED 0C:9DDD: 80        .byte $80   ; 
- D 0 - I - 0x031DEE 0C:9DDE: 71        .byte $71   ; 
- D 0 - I - 0x031DEF 0C:9DDF: 80        .byte $80   ; 
- D 0 - I - 0x031DF0 0C:9DE0: 64        .byte $64   ; 
- D 0 - I - 0x031DF1 0C:9DE1: 80        .byte $80   ; 
- D 0 - I - 0x031DF2 0C:9DE2: 54        .byte $54   ; 
- D 0 - I - 0x031DF3 0C:9DE3: 80        .byte $80   ; 
- D 0 - I - 0x031DF4 0C:9DE4: 3F        .byte $3F   ; 
- D 0 - I - 0x031DF5 0C:9DE5: 80        .byte $80   ; 
- D 0 - I - 0x031DF6 0C:9DE6: 38        .byte $38   ; 
- D 0 - I - 0x031DF7 0C:9DE7: 80        .byte $80   ; 
- D 0 - I - 0x031DF8 0C:9DE8: 32        .byte $32   ; 
- D 0 - I - 0x031DF9 0C:9DE9: 80        .byte $80   ; 
- D 0 - I - 0x031DFA 0C:9DEA: 2A        .byte $2A   ; 
- D 0 - I - 0x031DFB 0C:9DEB: 80        .byte $80   ; 
- D 0 - I - 0x031DFC 0C:9DEC: 1F        .byte $1F   ; 
- D 0 - I - 0x031DFD 0C:9DED: 80        .byte $80   ; 
- D 0 - I - 0x031DFE 0C:9DEE: 1F        .byte $1F   ; 
- D 0 - I - 0x031DFF 0C:9DEF: 40        .byte $40   ; 
- D 0 - I - 0x031E00 0C:9DF0: 32        .byte $32   ; 
- D 0 - I - 0x031E01 0C:9DF1: 40        .byte $40   ; 
- D 0 - I - 0x031E02 0C:9DF2: 2A        .byte $2A   ; 
- D 0 - I - 0x031E03 0C:9DF3: 40        .byte $40   ; 
- D 0 - I - 0x031E04 0C:9DF4: 1F        .byte $1F   ; 
- D 0 - I - 0x031E05 0C:9DF5: 40        .byte $40   ; 
- D 0 - I - 0x031E06 0C:9DF6: 1F        .byte $1F   ; 
- D 0 - I - 0x031E07 0C:9DF7: 20        .byte $20   ; 
- D 0 - I - 0x031E08 0C:9DF8: 32        .byte $32   ; 
- D 0 - I - 0x031E09 0C:9DF9: 20        .byte $20   ; 
- D 0 - I - 0x031E0A 0C:9DFA: 2A        .byte $2A   ; 
- D 0 - I - 0x031E0B 0C:9DFB: 20        .byte $20   ; 
- D 0 - I - 0x031E0C 0C:9DFC: 1F        .byte $1F   ; 
- D 0 - I - 0x031E0D 0C:9DFD: 20        .byte $20   ; 
- D 0 - I - 0x031E0E 0C:9DFE: 1F        .byte $1F   ; 
- D 0 - I - 0x031E0F 0C:9DFF: 10        .byte $10   ; 
- D 0 - I - 0x031E10 0C:9E00: 32        .byte $32   ; 
- D 0 - I - 0x031E11 0C:9E01: 10        .byte $10   ; 
- D 0 - I - 0x031E12 0C:9E02: 2A        .byte $2A   ; 
- D 0 - I - 0x031E13 0C:9E03: 10        .byte $10   ; 
- D 0 - I - 0x031E14 0C:9E04: 1F        .byte $1F   ; 
- D 0 - I - 0x031E15 0C:9E05: 10        .byte $10   ; 
- D 0 - I - 0x031E16 0C:9E06: 1F        .byte $1F   ; 
- D 0 - I - 0x031E17 0C:9E07: FF        .byte con_se_cb_1_FF   ; 



off_ch_03_9E08_4D:
- D 0 - I - 0x031E18 0C:9E08: 05        .byte $05   ; 
- D 0 - I - 0x031E19 0C:9E09: B0        .byte $B0   ; 
- D 0 - I - 0x031E1A 0C:9E0A: 88        .byte $88   ; 
- D 0 - I - 0x031E1B 0C:9E0B: B0        .byte $B0   ; 
- D 0 - I - 0x031E1C 0C:9E0C: D5        .byte $D5   ; 
- D 0 - I - 0x031E1D 0C:9E0D: B0        .byte $B0   ; 
- D 0 - I - 0x031E1E 0C:9E0E: 8E        .byte $8E   ; 
- D 0 - I - 0x031E1F 0C:9E0F: B0        .byte $B0   ; 
- D 0 - I - 0x031E20 0C:9E10: A9        .byte $A9   ; 
- D 0 - I - 0x031E21 0C:9E11: 02        .byte $02   ; 
- D 0 - I - 0x031E22 0C:9E12: B0        .byte $B0   ; 
- D 0 - I - 0x031E23 0C:9E13: 88        .byte $88   ; 
- D 0 - I - 0x031E24 0C:9E14: C0        .byte $C0   ; 
- D 0 - I - 0x031E25 0C:9E15: 6A        .byte $6A   ; 
- D 0 - I - 0x031E26 0C:9E16: B0        .byte $B0   ; 
- D 0 - I - 0x031E27 0C:9E17: 6A        .byte $6A   ; 
- D 0 - I - 0x031E28 0C:9E18: A0        .byte $A0   ; 
- D 0 - I - 0x031E29 0C:9E19: 6A        .byte $6A   ; 
- D 0 - I - 0x031E2A 0C:9E1A: 90        .byte $90   ; 
- D 0 - I - 0x031E2B 0C:9E1B: 6A        .byte $6A   ; 
- D 0 - I - 0x031E2C 0C:9E1C: 80        .byte $80   ; 
- D 0 - I - 0x031E2D 0C:9E1D: 6A        .byte $6A   ; 
- D 0 - I - 0x031E2E 0C:9E1E: 60        .byte $60   ; 
- D 0 - I - 0x031E2F 0C:9E1F: 6A        .byte $6A   ; 
- D 0 - I - 0x031E30 0C:9E20: 40        .byte $40   ; 
- D 0 - I - 0x031E31 0C:9E21: 6A        .byte $6A   ; 
- D 0 - I - 0x031E32 0C:9E22: 20        .byte $20   ; 
- D 0 - I - 0x031E33 0C:9E23: 6A        .byte $6A   ; 
- D 0 - I - 0x031E34 0C:9E24: FF        .byte con_se_cb_1_FF   ; 



tbl_9E25:
; see con_9E25
- D 0 - - - 0x031E35 0C:9E25: BB 9E     .word _off036_9EBB_00
- D 0 - - - 0x031E37 0C:9E27: BD 9E     .word _off036_9EBD_01
- - - - - - 0x031E39 0C:9E29: C8 9E     .word _off036_9EC8_02   ; unused?
- D 0 - - - 0x031E3B 0C:9E2B: D9 9E     .word _off036_9ED9_03
- D 0 - - - 0x031E3D 0C:9E2D: DD 9E     .word _off036_9EDD_04
- D 0 - - - 0x031E3F 0C:9E2F: E2 9E     .word _off036_9EE2_05
- D 0 - - - 0x031E41 0C:9E31: E9 9E     .word _off036_9EE9_06
- D 0 - - - 0x031E43 0C:9E33: F0 9E     .word _off036_9EF0_07
- D 0 - - - 0x031E45 0C:9E35: 05 9F     .word _off036_9F05_08
- D 0 - - - 0x031E47 0C:9E37: 0E 9F     .word _off036_9F0E_09
- D 0 - - - 0x031E49 0C:9E39: 15 9F     .word _off036_9F15_0A
- D 0 - - - 0x031E4B 0C:9E3B: 20 9F     .word _off036_9F20_0B
- D 0 - - - 0x031E4D 0C:9E3D: 30 9F     .word _off036_9F30_0C
- - - - - - 0x031E4F 0C:9E3F: 3E 9F     .word _off036_9F3E_0D   ; unused, index doesn't exist
- - - - - - 0x031E51 0C:9E41: 47 9F     .word _off036_9F47_0E   ; unused, index doesn't exist
- - - - - - 0x031E53 0C:9E43: 4F 9F     .word _off036_9F4F_0F   ; unused, index doesn't exist
- D 0 - - - 0x031E55 0C:9E45: 57 9F     .word _off036_9F57_10
- D 0 - - - 0x031E57 0C:9E47: 5D 9F     .word _off036_9F5D_11
- D 0 - - - 0x031E59 0C:9E49: 63 9F     .word _off036_9F63_12
- D 0 - - - 0x031E5B 0C:9E4B: 69 9F     .word _off036_9F69_13
- D 0 - - - 0x031E5D 0C:9E4D: 6E 9F     .word _off036_9F6E_14
- D 0 - - - 0x031E5F 0C:9E4F: 7F 9F     .word _off036_9F7F_15
- D 0 - - - 0x031E61 0C:9E51: 83 9F     .word _off036_9F83_16
- D 0 - - - 0x031E63 0C:9E53: 89 9F     .word _off036_9F89_17
- D 0 - - - 0x031E65 0C:9E55: 8D 9F     .word _off036_9F8D_18
- D 0 - - - 0x031E67 0C:9E57: 93 9F     .word _off036_9F93_19
- D 0 - - - 0x031E69 0C:9E59: 98 9F     .word _off036_9F98_1A
- D 0 - - - 0x031E6B 0C:9E5B: 9D 9F     .word _off036_9F9D_1B
- D 0 - - - 0x031E6D 0C:9E5D: A3 9F     .word _off036_9FA3_1C
- D 0 - - - 0x031E6F 0C:9E5F: A8 9F     .word _off036_9FA8_1D
- D 0 - - - 0x031E71 0C:9E61: AD 9F     .word _off036_9FAD_1E
- D 0 - - - 0x031E73 0C:9E63: B4 9F     .word _off036_9FB4_1F
- D 0 - - - 0x031E75 0C:9E65: BA 9F     .word _off036_9FBA_20
- D 0 - - - 0x031E77 0C:9E67: C3 9F     .word _off036_9FC3_21
- D 0 - - - 0x031E79 0C:9E69: C7 9F     .word _off036_9FC7_22
- D 0 - - - 0x031E7B 0C:9E6B: CB 9F     .word _off036_9FCB_23
- D 0 - - - 0x031E7D 0C:9E6D: CF 9F     .word _off036_9FCF_24
- D 0 - - - 0x031E7F 0C:9E6F: D5 9F     .word _off036_9FD5_25
- D 0 - - - 0x031E81 0C:9E71: DC 9F     .word _off036_9FDC_26
- D 0 - - - 0x031E83 0C:9E73: E5 9F     .word _off036_9FE5_27
- D 0 - - - 0x031E85 0C:9E75: F9 9F     .word _off036_9FF9_28
- D 0 - - - 0x031E87 0C:9E77: FD 9F     .word _off036_9FFD_29
- D 0 - - - 0x031E89 0C:9E79: 04 A0     .word _off036_A004_2A



tbl_9E7B:
; see con_9E7B
- D 0 - - - 0x031E8B 0C:9E7B: 15 A0     .word _off037_A015_50
- D 0 - - - 0x031E8D 0C:9E7D: 24 A0     .word _off037_A024_51
- - - - - - 0x031E8F 0C:9E7F: 2F A0     .word _off037_A02F_52   ; unused, index doesn't exist
- D 0 - - - 0x031E91 0C:9E81: 36 A0     .word _off037_A036_53
- D 0 - - - 0x031E93 0C:9E83: 45 A0     .word _off037_A045_54
- D 0 - - - 0x031E95 0C:9E85: 50 A0     .word _off037_A050_55
- D 0 - - - 0x031E97 0C:9E87: 57 A0     .word _off037_A057_56
- D 0 - - - 0x031E99 0C:9E89: 62 A0     .word _off037_A062_57
- D 0 - - - 0x031E9B 0C:9E8B: 6D A0     .word _off037_A06D_58
- D 0 - - - 0x031E9D 0C:9E8D: 74 A0     .word _off037_A074_59
- D 0 - - - 0x031E9F 0C:9E8F: 7B A0     .word _off037_A07B_5A
- D 0 - - - 0x031EA1 0C:9E91: 80 A0     .word _off037_A080_5B
- D 0 - - - 0x031EA3 0C:9E93: 88 A0     .word _off037_A088_5C
- D 0 - - - 0x031EA5 0C:9E95: 94 A0     .word _off037_A094_5D
- D 0 - - - 0x031EA7 0C:9E97: A0 A0     .word _off037_A0A0_5E
- D 0 - - - 0x031EA9 0C:9E99: A8 A0     .word _off037_A0A8_5F
- D 0 - - - 0x031EAB 0C:9E9B: B3 A0     .word _off037_A0B3_60
- D 0 - - - 0x031EAD 0C:9E9D: BB A0     .word _off037_A0BB_61
- D 0 - - - 0x031EAF 0C:9E9F: C8 A0     .word _off037_A0C8_62
- D 0 - - - 0x031EB1 0C:9EA1: D3 A0     .word _off037_A0D3_63
- D 0 - - - 0x031EB3 0C:9EA3: DA A0     .word _off037_A0DA_64
- D 0 - - - 0x031EB5 0C:9EA5: E6 A0     .word _off037_A0E6_65
- D 0 - - - 0x031EB7 0C:9EA7: F1 A0     .word _off037_A0F1_66
- D 0 - - - 0x031EB9 0C:9EA9: F9 A0     .word _off037_A0F9_67
- D 0 - - - 0x031EBB 0C:9EAB: 05 A1     .word _off037_A105_68
- D 0 - - - 0x031EBD 0C:9EAD: 10 A1     .word _off037_A110_69
- D 0 - - - 0x031EBF 0C:9EAF: 1B A1     .word _off037_A11B_6A
- D 0 - - - 0x031EC1 0C:9EB1: 28 A1     .word _off037_A128_6B
- D 0 - - - 0x031EC3 0C:9EB3: 34 A1     .word _off037_A134_6C
- D 0 - - - 0x031EC5 0C:9EB5: 40 A1     .word _off037_A140_6D
- D 0 - - - 0x031EC7 0C:9EB7: 47 A1     .word _off037_A147_6E
- - - - - - 0x031EC9 0C:9EB9: 4F A1     .word _off037_A14F_6F   ; unused, index doesn't exist



_off036_9EBB_00:
- D 0 - I - 0x031ECB 0C:9EBB: 11        .byte $11   ; 
- D 0 - I - 0x031ECC 0C:9EBC: FF        .byte $FF   ; end token



_off036_9EBD_01:
- D 0 - I - 0x031ECD 0C:9EBD: 1D        .byte $1D   ; 
- D 0 - I - 0x031ECE 0C:9EBE: 18        .byte $18   ; 
- D 0 - I - 0x031ECF 0C:9EBF: 17        .byte $17   ; 
- D 0 - I - 0x031ED0 0C:9EC0: 16        .byte $16   ; 
- D 0 - I - 0x031ED1 0C:9EC1: 15        .byte $15   ; 
- D 0 - I - 0x031ED2 0C:9EC2: 14        .byte $14   ; 
- D 0 - I - 0x031ED3 0C:9EC3: 13        .byte $13   ; 
- D 0 - I - 0x031ED4 0C:9EC4: 12        .byte $12   ; 
- D 0 - I - 0x031ED5 0C:9EC5: 11        .byte $11   ; 
- D 0 - I - 0x031ED6 0C:9EC6: 10        .byte $10   ; 
- D 0 - I - 0x031ED7 0C:9EC7: FF        .byte $FF   ; end token



_off036_9EC8_02:
; bzk garbage?
- - - - - - 0x031ED8 0C:9EC8: 18        .byte $18   ; 
- - - - - - 0x031ED9 0C:9EC9: 16        .byte $16   ; 
- - - - - - 0x031EDA 0C:9ECA: 15        .byte $15   ; 
- - - - - - 0x031EDB 0C:9ECB: 14        .byte $14   ; 
- - - - - - 0x031EDC 0C:9ECC: 13        .byte $13   ; 
- - - - - - 0x031EDD 0C:9ECD: 12        .byte $12   ; 
- - - - - - 0x031EDE 0C:9ECE: 10        .byte $10   ; 
- - - - - - 0x031EDF 0C:9ECF: 15        .byte $15   ; 
- - - - - - 0x031EE0 0C:9ED0: 14        .byte $14   ; 
- - - - - - 0x031EE1 0C:9ED1: 13        .byte $13   ; 
- - - - - - 0x031EE2 0C:9ED2: 12        .byte $12   ; 
- - - - - - 0x031EE3 0C:9ED3: 21        .byte $21   ; 
- - - - - - 0x031EE4 0C:9ED4: 10        .byte $10   ; 
- - - - - - 0x031EE5 0C:9ED5: 14        .byte $14   ; 
- - - - - - 0x031EE6 0C:9ED6: 13        .byte $13   ; 
- - - - - - 0x031EE7 0C:9ED7: 12        .byte $12   ; 
- - - - - - 0x031EE8 0C:9ED8: FF        .byte $FF   ; end token



_off036_9ED9_03:
- D 0 - I - 0x031EE9 0C:9ED9: 14        .byte $14   ; 
- D 0 - I - 0x031EEA 0C:9EDA: 15        .byte $15   ; 
- D 0 - I - 0x031EEB 0C:9EDB: 16        .byte $16   ; 
- D 0 - I - 0x031EEC 0C:9EDC: FF        .byte $FF   ; end token



_off036_9EDD_04:
- D 0 - I - 0x031EED 0C:9EDD: 11        .byte $11   ; 
- D 0 - I - 0x031EEE 0C:9EDE: 12        .byte $12   ; 
- D 0 - I - 0x031EEF 0C:9EDF: 13        .byte $13   ; 
- D 0 - I - 0x031EF0 0C:9EE0: 14        .byte $14   ; 
- D 0 - I - 0x031EF1 0C:9EE1: FF        .byte $FF   ; end token



_off036_9EE2_05:
- D 0 - I - 0x031EF2 0C:9EE2: 21        .byte $21   ; 
- D 0 - I - 0x031EF3 0C:9EE3: 32        .byte $32   ; 
- D 0 - I - 0x031EF4 0C:9EE4: 43        .byte $43   ; 
- D 0 - I - 0x031EF5 0C:9EE5: 54        .byte $54   ; 
- D 0 - I - 0x031EF6 0C:9EE6: 65        .byte $65   ; 
- D 0 - I - 0x031EF7 0C:9EE7: 76        .byte $76   ; 
- D 0 - I - 0x031EF8 0C:9EE8: FF        .byte $FF   ; end token



_off036_9EE9_06:
- D 0 - I - 0x031EF9 0C:9EE9: 1D        .byte $1D   ; 
- D 0 - I - 0x031EFA 0C:9EEA: 18        .byte $18   ; 
- D 0 - I - 0x031EFB 0C:9EEB: 17        .byte $17   ; 
- D 0 - I - 0x031EFC 0C:9EEC: 16        .byte $16   ; 
- D 0 - I - 0x031EFD 0C:9EED: 15        .byte $15   ; 
- D 0 - I - 0x031EFE 0C:9EEE: 14        .byte $14   ; 
- D 0 - I - 0x031EFF 0C:9EEF: FF        .byte $FF   ; end token



_off036_9EF0_07:
- D 0 - I - 0x031F00 0C:9EF0: 17        .byte $17   ; 
- D 0 - I - 0x031F01 0C:9EF1: 16        .byte $16   ; 
- D 0 - I - 0x031F02 0C:9EF2: 15        .byte $15   ; 
- D 0 - I - 0x031F03 0C:9EF3: 14        .byte $14   ; 
- D 0 - I - 0x031F04 0C:9EF4: 13        .byte $13   ; 
- D 0 - I - 0x031F05 0C:9EF5: 12        .byte $12   ; 
- D 0 - I - 0x031F06 0C:9EF6: 11        .byte $11   ; 
- D 0 - I - 0x031F07 0C:9EF7: 11        .byte $11   ; 
- D 0 - I - 0x031F08 0C:9EF8: 10        .byte $10   ; 
- D 0 - I - 0x031F09 0C:9EF9: 16        .byte $16   ; 
- D 0 - I - 0x031F0A 0C:9EFA: 14        .byte $14   ; 
- D 0 - I - 0x031F0B 0C:9EFB: 13        .byte $13   ; 
- D 0 - I - 0x031F0C 0C:9EFC: 12        .byte $12   ; 
- D 0 - I - 0x031F0D 0C:9EFD: 11        .byte $11   ; 
- D 0 - I - 0x031F0E 0C:9EFE: 21        .byte $21   ; 
- D 0 - I - 0x031F0F 0C:9EFF: 10        .byte $10   ; 
- D 0 - I - 0x031F10 0C:9F00: 14        .byte $14   ; 
- D 0 - I - 0x031F11 0C:9F01: 13        .byte $13   ; 
- D 0 - I - 0x031F12 0C:9F02: 21        .byte $21   ; 
- D 0 - I - 0x031F13 0C:9F03: 31        .byte $31   ; 
- - - - - - 0x031F14 0C:9F04: FF        .byte $FF   ; end token



_off036_9F05_08:
- D 0 - I - 0x031F15 0C:9F05: 2A        .byte $2A   ; 
- D 0 - I - 0x031F16 0C:9F06: 16        .byte $16   ; 
- D 0 - I - 0x031F17 0C:9F07: 29        .byte $29   ; 
- D 0 - I - 0x031F18 0C:9F08: 16        .byte $16   ; 
- D 0 - I - 0x031F19 0C:9F09: 18        .byte $18   ; 
- D 0 - I - 0x031F1A 0C:9F0A: 17        .byte $17   ; 
- D 0 - I - 0x031F1B 0C:9F0B: 16        .byte $16   ; 
- D 0 - I - 0x031F1C 0C:9F0C: 15        .byte $15   ; 
- D 0 - I - 0x031F1D 0C:9F0D: FF        .byte $FF   ; end token



_off036_9F0E_09:
- D 0 - I - 0x031F1E 0C:9F0E: 18        .byte $18   ; 
- D 0 - I - 0x031F1F 0C:9F0F: 37        .byte $37   ; 
- D 0 - I - 0x031F20 0C:9F10: 16        .byte $16   ; 
- D 0 - I - 0x031F21 0C:9F11: 15        .byte $15   ; 
- D 0 - I - 0x031F22 0C:9F12: 14        .byte $14   ; 
- D 0 - I - 0x031F23 0C:9F13: 13        .byte $13   ; 
- D 0 - I - 0x031F24 0C:9F14: FF        .byte $FF   ; end token



_off036_9F15_0A:
- D 0 - I - 0x031F25 0C:9F15: 37        .byte $37   ; 
- D 0 - I - 0x031F26 0C:9F16: 56        .byte $56   ; 
- D 0 - I - 0x031F27 0C:9F17: 45        .byte $45   ; 
- D 0 - I - 0x031F28 0C:9F18: 44        .byte $44   ; 
- D 0 - I - 0x031F29 0C:9F19: 43        .byte $43   ; 
- D 0 - I - 0x031F2A 0C:9F1A: 72        .byte $72   ; 
- D 0 - I - 0x031F2B 0C:9F1B: 11        .byte $11   ; 
- D 0 - I - 0x031F2C 0C:9F1C: E2        .byte $E2   ; 
- D 0 - I - 0x031F2D 0C:9F1D: E3        .byte $E3   ; 
- D 0 - I - 0x031F2E 0C:9F1E: E4        .byte $E4   ; 
- D 0 - I - 0x031F2F 0C:9F1F: FF        .byte $FF   ; end token



_off036_9F20_0B:
- D 0 - I - 0x031F30 0C:9F20: 17        .byte $17   ; 
- D 0 - I - 0x031F31 0C:9F21: 16        .byte $16   ; 
- D 0 - I - 0x031F32 0C:9F22: 15        .byte $15   ; 
- D 0 - I - 0x031F33 0C:9F23: F4        .byte $F4   ; 
- D 0 - I - 0x031F34 0C:9F24: F3        .byte $F3   ; 
- D 0 - I - 0x031F35 0C:9F25: F3        .byte $F3   ; 
- D 0 - I - 0x031F36 0C:9F26: F2        .byte $F2   ; 
- D 0 - I - 0x031F37 0C:9F27: F2        .byte $F2   ; 
- D 0 - I - 0x031F38 0C:9F28: F2        .byte $F2   ; 
- D 0 - I - 0x031F39 0C:9F29: A2        .byte $A2   ; 
- D 0 - I - 0x031F3A 0C:9F2A: B3        .byte $B3   ; 
- D 0 - I - 0x031F3B 0C:9F2B: B4        .byte $B4   ; 
- D 0 - I - 0x031F3C 0C:9F2C: B5        .byte $B5   ; 
- D 0 - I - 0x031F3D 0C:9F2D: B6        .byte $B6   ; 
- D 0 - I - 0x031F3E 0C:9F2E: 17        .byte $17   ; 
- D 0 - I - 0x031F3F 0C:9F2F: FF        .byte $FF   ; end token



_off036_9F30_0C:
- D 0 - I - 0x031F40 0C:9F30: 17        .byte $17   ; 
- D 0 - I - 0x031F41 0C:9F31: 16        .byte $16   ; 
- D 0 - I - 0x031F42 0C:9F32: 15        .byte $15   ; 
- D 0 - I - 0x031F43 0C:9F33: E4        .byte $E4   ; 
- D 0 - I - 0x031F44 0C:9F34: E3        .byte $E3   ; 
- D 0 - I - 0x031F45 0C:9F35: E3        .byte $E3   ; 
- D 0 - I - 0x031F46 0C:9F36: E2        .byte $E2   ; 
- D 0 - I - 0x031F47 0C:9F37: E2        .byte $E2   ; 
- D 0 - I - 0x031F48 0C:9F38: E3        .byte $E3   ; 
- D 0 - I - 0x031F49 0C:9F39: E4        .byte $E4   ; 
- D 0 - I - 0x031F4A 0C:9F3A: E5        .byte $E5   ; 
- D 0 - I - 0x031F4B 0C:9F3B: E6        .byte $E6   ; 
- D 0 - I - 0x031F4C 0C:9F3C: 17        .byte $17   ; 
- D 0 - I - 0x031F4D 0C:9F3D: FF        .byte $FF   ; end token



_off036_9F3E_0D:
; bzk garbage
- - - - - - 0x031F4E 0C:9F3E: 18        .byte $18   ; 
- - - - - - 0x031F4F 0C:9F3F: 47        .byte $47   ; 
- - - - - - 0x031F50 0C:9F40: F6        .byte $F6   ; 
- - - - - - 0x031F51 0C:9F41: F5        .byte $F5   ; 
- - - - - - 0x031F52 0C:9F42: E4        .byte $E4   ; 
- - - - - - 0x031F53 0C:9F43: D3        .byte $D3   ; 
- - - - - - 0x031F54 0C:9F44: 82        .byte $82   ; 
- - - - - - 0x031F55 0C:9F45: 71        .byte $71   ; 
- - - - - - 0x031F56 0C:9F46: FF        .byte $FF   ; end token



_off036_9F47_0E:
; bzk garbage
- - - - - - 0x031F57 0C:9F47: 16        .byte $16   ; 
- - - - - - 0x031F58 0C:9F48: 37        .byte $37   ; 
- - - - - - 0x031F59 0C:9F49: 35        .byte $35   ; 
- - - - - - 0x031F5A 0C:9F4A: 44        .byte $44   ; 
- - - - - - 0x031F5B 0C:9F4B: 43        .byte $43   ; 
- - - - - - 0x031F5C 0C:9F4C: 62        .byte $62   ; 
- - - - - - 0x031F5D 0C:9F4D: 71        .byte $71   ; 
- - - - - - 0x031F5E 0C:9F4E: FF        .byte $FF   ; end token



_off036_9F4F_0F:
; bzk garbage
- - - - - - 0x031F5F 0C:9F4F: 16        .byte $16   ; 
- - - - - - 0x031F60 0C:9F50: 17        .byte $17   ; 
- - - - - - 0x031F61 0C:9F51: 28        .byte $28   ; 
- - - - - - 0x031F62 0C:9F52: 26        .byte $26   ; 
- - - - - - 0x031F63 0C:9F53: 25        .byte $25   ; 
- - - - - - 0x031F64 0C:9F54: 14        .byte $14   ; 
- - - - - - 0x031F65 0C:9F55: 13        .byte $13   ; 
- - - - - - 0x031F66 0C:9F56: FF        .byte $FF   ; end token



_off036_9F57_10:
- D 0 - I - 0x031F67 0C:9F57: 18        .byte $18   ; 
- D 0 - I - 0x031F68 0C:9F58: 47        .byte $47   ; 
- D 0 - I - 0x031F69 0C:9F59: 56        .byte $56   ; 
- D 0 - I - 0x031F6A 0C:9F5A: 44        .byte $44   ; 
- D 0 - I - 0x031F6B 0C:9F5B: 43        .byte $43   ; 
- D 0 - I - 0x031F6C 0C:9F5C: FF        .byte $FF   ; end token



_off036_9F5D_11:
- D 0 - I - 0x031F6D 0C:9F5D: 38        .byte $38   ; 
- D 0 - I - 0x031F6E 0C:9F5E: 36        .byte $36   ; 
- D 0 - I - 0x031F6F 0C:9F5F: 34        .byte $34   ; 
- D 0 - I - 0x031F70 0C:9F60: 23        .byte $23   ; 
- - - - - - 0x031F71 0C:9F61: 21        .byte $21   ; 
- - - - - - 0x031F72 0C:9F62: FF        .byte $FF   ; end token



_off036_9F63_12:
- D 0 - I - 0x031F73 0C:9F63: 18        .byte $18   ; 
- D 0 - I - 0x031F74 0C:9F64: 37        .byte $37   ; 
- D 0 - I - 0x031F75 0C:9F65: 26        .byte $26   ; 
- D 0 - I - 0x031F76 0C:9F66: 15        .byte $15   ; 
- D 0 - I - 0x031F77 0C:9F67: 14        .byte $14   ; 
- D 0 - I - 0x031F78 0C:9F68: FF        .byte $FF   ; end token



_off036_9F69_13:
- D 0 - I - 0x031F79 0C:9F69: 28        .byte $28   ; 
- D 0 - I - 0x031F7A 0C:9F6A: 37        .byte $37   ; 
- D 0 - I - 0x031F7B 0C:9F6B: 25        .byte $25   ; 
- D 0 - I - 0x031F7C 0C:9F6C: 23        .byte $23   ; 
- D 0 - I - 0x031F7D 0C:9F6D: FF        .byte $FF   ; end token



_off036_9F6E_14:
- D 0 - I - 0x031F7E 0C:9F6E: 18        .byte $18   ; 
- D 0 - I - 0x031F7F 0C:9F6F: 37        .byte $37   ; 
- D 0 - I - 0x031F80 0C:9F70: 66        .byte $66   ; 
- D 0 - I - 0x031F81 0C:9F71: 65        .byte $65   ; 
- D 0 - I - 0x031F82 0C:9F72: 64        .byte $64   ; 
- D 0 - I - 0x031F83 0C:9F73: 63        .byte $63   ; 
- D 0 - I - 0x031F84 0C:9F74: 52        .byte $52   ; 
- D 0 - I - 0x031F85 0C:9F75: 63        .byte $63   ; 
- D 0 - I - 0x031F86 0C:9F76: 64        .byte $64   ; 
- D 0 - I - 0x031F87 0C:9F77: 75        .byte $75   ; 
- D 0 - I - 0x031F88 0C:9F78: 76        .byte $76   ; 
- D 0 - I - 0x031F89 0C:9F79: 75        .byte $75   ; 
- D 0 - I - 0x031F8A 0C:9F7A: 74        .byte $74   ; 
- D 0 - I - 0x031F8B 0C:9F7B: 73        .byte $73   ; 
- D 0 - I - 0x031F8C 0C:9F7C: 72        .byte $72   ; 
- D 0 - I - 0x031F8D 0C:9F7D: 72        .byte $72   ; 
- D 0 - I - 0x031F8E 0C:9F7E: FF        .byte $FF   ; end token



_off036_9F7F_15:
- D 0 - I - 0x031F8F 0C:9F7F: 27        .byte $27   ; 
- D 0 - I - 0x031F90 0C:9F80: 15        .byte $15   ; 
- D 0 - I - 0x031F91 0C:9F81: 12        .byte $12   ; 
- D 0 - I - 0x031F92 0C:9F82: FF        .byte $FF   ; end token



_off036_9F83_16:
- D 0 - I - 0x031F93 0C:9F83: 18        .byte $18   ; 
- D 0 - I - 0x031F94 0C:9F84: 26        .byte $26   ; 
- D 0 - I - 0x031F95 0C:9F85: 34        .byte $34   ; 
- - - - - - 0x031F96 0C:9F86: 23        .byte $23   ; 
- - - - - - 0x031F97 0C:9F87: 21        .byte $21   ; 
- - - - - - 0x031F98 0C:9F88: FF        .byte $FF   ; end token



_off036_9F89_17:
- D 0 - I - 0x031F99 0C:9F89: 27        .byte $27   ; 
- D 0 - I - 0x031F9A 0C:9F8A: 25        .byte $25   ; 
- D 0 - I - 0x031F9B 0C:9F8B: 14        .byte $14   ; 
- D 0 - I - 0x031F9C 0C:9F8C: FF        .byte $FF   ; end token



_off036_9F8D_18:
- D 0 - I - 0x031F9D 0C:9F8D: 16        .byte $16   ; 
- D 0 - I - 0x031F9E 0C:9F8E: 25        .byte $25   ; 
- D 0 - I - 0x031F9F 0C:9F8F: 14        .byte $14   ; 
- D 0 - I - 0x031FA0 0C:9F90: 13        .byte $13   ; 
- D 0 - I - 0x031FA1 0C:9F91: 12        .byte $12   ; 
- D 0 - I - 0x031FA2 0C:9F92: FF        .byte $FF   ; end token



_off036_9F93_19:
- D 0 - I - 0x031FA3 0C:9F93: 18        .byte $18   ; 
- D 0 - I - 0x031FA4 0C:9F94: 16        .byte $16   ; 
- D 0 - I - 0x031FA5 0C:9F95: 25        .byte $25   ; 
- D 0 - I - 0x031FA6 0C:9F96: 13        .byte $13   ; 
- D 0 - I - 0x031FA7 0C:9F97: FF        .byte $FF   ; end token



_off036_9F98_1A:
- D 0 - I - 0x031FA8 0C:9F98: 38        .byte $38   ; 
- D 0 - I - 0x031FA9 0C:9F99: 27        .byte $27   ; 
- D 0 - I - 0x031FAA 0C:9F9A: 25        .byte $25   ; 
- D 0 - I - 0x031FAB 0C:9F9B: 24        .byte $24   ; 
- D 0 - I - 0x031FAC 0C:9F9C: FF        .byte $FF   ; end token



_off036_9F9D_1B:
- D 0 - I - 0x031FAD 0C:9F9D: 16        .byte $16   ; 
- D 0 - I - 0x031FAE 0C:9F9E: 27        .byte $27   ; 
- D 0 - I - 0x031FAF 0C:9F9F: 28        .byte $28   ; 
- D 0 - I - 0x031FB0 0C:9FA0: 16        .byte $16   ; 
- D 0 - I - 0x031FB1 0C:9FA1: 14        .byte $14   ; 
- D 0 - I - 0x031FB2 0C:9FA2: FF        .byte $FF   ; end token



_off036_9FA3_1C:
- D 0 - I - 0x031FB3 0C:9FA3: 38        .byte $38   ; 
- D 0 - I - 0x031FB4 0C:9FA4: 26        .byte $26   ; 
- D 0 - I - 0x031FB5 0C:9FA5: 34        .byte $34   ; 
- D 0 - I - 0x031FB6 0C:9FA6: 23        .byte $23   ; 
- D 0 - I - 0x031FB7 0C:9FA7: FF        .byte $FF   ; end token



_off036_9FA8_1D:
- D 0 - I - 0x031FB8 0C:9FA8: 29        .byte $29   ; 
- D 0 - I - 0x031FB9 0C:9FA9: 25        .byte $25   ; 
- D 0 - I - 0x031FBA 0C:9FAA: 24        .byte $24   ; 
- - - - - - 0x031FBB 0C:9FAB: 33        .byte $33   ; 
- - - - - - 0x031FBC 0C:9FAC: FF        .byte $FF   ; end token



_off036_9FAD_1E:
- D 0 - I - 0x031FBD 0C:9FAD: 38        .byte $38   ; 
- D 0 - I - 0x031FBE 0C:9FAE: 16        .byte $16   ; 
- D 0 - I - 0x031FBF 0C:9FAF: 14        .byte $14   ; 
- D 0 - I - 0x031FC0 0C:9FB0: 13        .byte $13   ; 
- D 0 - I - 0x031FC1 0C:9FB1: 12        .byte $12   ; 
- D 0 - I - 0x031FC2 0C:9FB2: 11        .byte $11   ; 
- - - - - - 0x031FC3 0C:9FB3: FF        .byte $FF   ; end token



_off036_9FB4_1F:
- D 0 - I - 0x031FC4 0C:9FB4: 16        .byte $16   ; 
- D 0 - I - 0x031FC5 0C:9FB5: 37        .byte $37   ; 
- D 0 - I - 0x031FC6 0C:9FB6: 35        .byte $35   ; 
- D 0 - I - 0x031FC7 0C:9FB7: 33        .byte $33   ; 
- D 0 - I - 0x031FC8 0C:9FB8: 22        .byte $22   ; 
- D 0 - I - 0x031FC9 0C:9FB9: FF        .byte $FF   ; end token



_off036_9FBA_20:
- D 0 - I - 0x031FCA 0C:9FBA: 18        .byte $18   ; 
- D 0 - I - 0x031FCB 0C:9FBB: 47        .byte $47   ; 
- D 0 - I - 0x031FCC 0C:9FBC: F6        .byte $F6   ; 
- D 0 - I - 0x031FCD 0C:9FBD: F5        .byte $F5   ; 
- D 0 - I - 0x031FCE 0C:9FBE: E4        .byte $E4   ; 
- D 0 - I - 0x031FCF 0C:9FBF: D3        .byte $D3   ; 
- D 0 - I - 0x031FD0 0C:9FC0: 82        .byte $82   ; 
- - - - - - 0x031FD1 0C:9FC1: 71        .byte $71   ; 
- - - - - - 0x031FD2 0C:9FC2: FF        .byte $FF   ; end token



_off036_9FC3_21:
- D 0 - I - 0x031FD3 0C:9FC3: 39        .byte $39   ; 
- D 0 - I - 0x031FD4 0C:9FC4: 28        .byte $28   ; 
- D 0 - I - 0x031FD5 0C:9FC5: 25        .byte $25   ; 
- D 0 - I - 0x031FD6 0C:9FC6: FF        .byte $FF   ; end token



_off036_9FC7_22:
- D 0 - I - 0x031FD7 0C:9FC7: 18        .byte $18   ; 
- D 0 - I - 0x031FD8 0C:9FC8: 25        .byte $25   ; 
- D 0 - I - 0x031FD9 0C:9FC9: 24        .byte $24   ; 
- D 0 - I - 0x031FDA 0C:9FCA: FF        .byte $FF   ; end token



_off036_9FCB_23:
- D 0 - I - 0x031FDB 0C:9FCB: 14        .byte $14   ; 
- D 0 - I - 0x031FDC 0C:9FCC: 25        .byte $25   ; 
- D 0 - I - 0x031FDD 0C:9FCD: 36        .byte $36   ; 
- D 0 - I - 0x031FDE 0C:9FCE: FF        .byte $FF   ; end token



_off036_9FCF_24:
- D 0 - I - 0x031FDF 0C:9FCF: 49        .byte $49   ; 
- D 0 - I - 0x031FE0 0C:9FD0: 48        .byte $48   ; 
- D 0 - I - 0x031FE1 0C:9FD1: 47        .byte $47   ; 
- D 0 - I - 0x031FE2 0C:9FD2: 36        .byte $36   ; 
- D 0 - I - 0x031FE3 0C:9FD3: 25        .byte $25   ; 
- D 0 - I - 0x031FE4 0C:9FD4: FF        .byte $FF   ; end token



_off036_9FD5_25:
- D 0 - I - 0x031FE5 0C:9FD5: 14        .byte $14   ; 
- D 0 - I - 0x031FE6 0C:9FD6: 19        .byte $19   ; 
- D 0 - I - 0x031FE7 0C:9FD7: 28        .byte $28   ; 
- - - - - - 0x031FE8 0C:9FD8: 25        .byte $25   ; 
- - - - - - 0x031FE9 0C:9FD9: 26        .byte $26   ; 
- - - - - - 0x031FEA 0C:9FDA: 14        .byte $14   ; 
- - - - - - 0x031FEB 0C:9FDB: FF        .byte $FF   ; end token



_off036_9FDC_26:
- D 0 - I - 0x031FEC 0C:9FDC: 23        .byte $23   ; 
- D 0 - I - 0x031FED 0C:9FDD: 19        .byte $19   ; 
- D 0 - I - 0x031FEE 0C:9FDE: 28        .byte $28   ; 
- D 0 - I - 0x031FEF 0C:9FDF: 37        .byte $37   ; 
- D 0 - I - 0x031FF0 0C:9FE0: 35        .byte $35   ; 
- D 0 - I - 0x031FF1 0C:9FE1: 34        .byte $34   ; 
- D 0 - I - 0x031FF2 0C:9FE2: 23        .byte $23   ; 
- D 0 - I - 0x031FF3 0C:9FE3: 22        .byte $22   ; 
- D 0 - I - 0x031FF4 0C:9FE4: FF        .byte $FF   ; end token



_off036_9FE5_27:
- D 0 - I - 0x031FF5 0C:9FE5: 24        .byte $24   ; 
- D 0 - I - 0x031FF6 0C:9FE6: 75        .byte $75   ; 
- D 0 - I - 0x031FF7 0C:9FE7: 86        .byte $86   ; 
- D 0 - I - 0x031FF8 0C:9FE8: 77        .byte $77   ; 
- D 0 - I - 0x031FF9 0C:9FE9: 98        .byte $98   ; 
- D 0 - I - 0x031FFA 0C:9FEA: 29        .byte $29   ; 
- D 0 - I - 0x031FFB 0C:9FEB: 98        .byte $98   ; 
- D 0 - I - 0x031FFC 0C:9FEC: 98        .byte $98   ; 
- D 0 - I - 0x031FFD 0C:9FED: 97        .byte $97   ; 
- D 0 - I - 0x031FFE 0C:9FEE: 27        .byte $27   ; 
- D 0 - I - 0x031FFF 0C:9FEF: 86        .byte $86   ; 
- D 0 - I - 0x032000 0C:9FF0: 76        .byte $76   ; 
- D 0 - I - 0x032001 0C:9FF1: 85        .byte $85   ; 
- D 0 - I - 0x032002 0C:9FF2: 75        .byte $75   ; 
- D 0 - I - 0x032003 0C:9FF3: 44        .byte $44   ; 
- D 0 - I - 0x032004 0C:9FF4: 84        .byte $84   ; 
- D 0 - I - 0x032005 0C:9FF5: 33        .byte $33   ; 
- D 0 - I - 0x032006 0C:9FF6: 32        .byte $32   ; 
- D 0 - I - 0x032007 0C:9FF7: 21        .byte $21   ; 
- D 0 - I - 0x032008 0C:9FF8: FF        .byte $FF   ; 



_off036_9FF9_28:
- D 0 - I - 0x032009 0C:9FF9: 24        .byte $24   ; 
- D 0 - I - 0x03200A 0C:9FFA: 25        .byte $25   ; 
- D 0 - I - 0x03200B 0C:9FFB: 36        .byte $36   ; 
- D 0 - I - 0x03200C 0C:9FFC: FF        .byte $FF   ; end token



_off036_9FFD_29:
- D 0 - I - 0x03200D 0C:9FFD: 16        .byte $16   ; 
- D 0 - I - 0x03200E 0C:9FFE: 18        .byte $18   ; 
- D 0 - I - 0x03200F 0C:9FFF: 17        .byte $17   ; 
- D 1 - I - 0x032010 0C:A000: 16        .byte $16   ; 
- D 1 - I - 0x032011 0C:A001: 15        .byte $15   ; 
- D 1 - I - 0x032012 0C:A002: 14        .byte $14   ; 
- D 1 - I - 0x032013 0C:A003: FF        .byte $FF   ; end token



_off036_A004_2A:
- D 1 - I - 0x032014 0C:A004: 23        .byte $23   ; 
- D 1 - I - 0x032015 0C:A005: 34        .byte $34   ; 
- D 1 - I - 0x032016 0C:A006: 65        .byte $65   ; 
- D 1 - I - 0x032017 0C:A007: 66        .byte $66   ; 
- D 1 - I - 0x032018 0C:A008: 46        .byte $46   ; 
- D 1 - I - 0x032019 0C:A009: 97        .byte $97   ; 
- D 1 - I - 0x03201A 0C:A00A: 57        .byte $57   ; 
- D 1 - I - 0x03201B 0C:A00B: 78        .byte $78   ; 
- D 1 - I - 0x03201C 0C:A00C: 98        .byte $98   ; 
- D 1 - I - 0x03201D 0C:A00D: 97        .byte $97   ; 
- D 1 - I - 0x03201E 0C:A00E: 27        .byte $27   ; 
- D 1 - I - 0x03201F 0C:A00F: 86        .byte $86   ; 
- D 1 - I - 0x032020 0C:A010: 76        .byte $76   ; 
- D 1 - I - 0x032021 0C:A011: 85        .byte $85   ; 
- D 1 - I - 0x032022 0C:A012: 75        .byte $75   ; 
- D 1 - I - 0x032023 0C:A013: 44        .byte $44   ; 
- D 1 - I - 0x032024 0C:A014: FF        .byte $FF   ; end token



_off037_A015_50:
- D 1 - I - 0x032025 0C:A015: FB        .byte $FB   ; FB
- D 1 - I - 0x032026 0C:A016: 11        .byte $11   ; 
- D 1 - I - 0x032027 0C:A017: 12        .byte $12   ; 
- D 1 - I - 0x032028 0C:A018: 13        .byte $13   ; 
- D 1 - I - 0x032029 0C:A019: 12        .byte $12   ; 
- D 1 - I - 0x03202A 0C:A01A: 11        .byte $11   ; 
- D 1 - I - 0x03202B 0C:A01B: 10        .byte $10   ; 
- D 1 - I - 0x03202C 0C:A01C: 1F        .byte $1F   ; 
- D 1 - I - 0x03202D 0C:A01D: 1E        .byte $1E   ; 
- D 1 - I - 0x03202E 0C:A01E: 1D        .byte $1D   ; 
- D 1 - I - 0x03202F 0C:A01F: 1E        .byte $1E   ; 
- D 1 - I - 0x032030 0C:A020: 1F        .byte $1F   ; 
- D 1 - I - 0x032031 0C:A021: 10        .byte $10   ; 
- D 1 - I - 0x032032 0C:A022: FE        .byte $FE   ; FE
- D 1 - I - 0x032033 0C:A023: FF        .byte $FF   ; end token



_off037_A024_51:
- D 1 - I - 0x032034 0C:A024: FB        .byte $FB   ; FB
- D 1 - I - 0x032035 0C:A025: 21        .byte $21   ; 
- D 1 - I - 0x032036 0C:A026: 22        .byte $22   ; 
- D 1 - I - 0x032037 0C:A027: 21        .byte $21   ; 
- D 1 - I - 0x032038 0C:A028: 20        .byte $20   ; 
- D 1 - I - 0x032039 0C:A029: 2F        .byte $2F   ; 
- D 1 - I - 0x03203A 0C:A02A: 2E        .byte $2E   ; 
- D 1 - I - 0x03203B 0C:A02B: 2F        .byte $2F   ; 
- D 1 - I - 0x03203C 0C:A02C: 20        .byte $20   ; 
- D 1 - I - 0x03203D 0C:A02D: FE        .byte $FE   ; FE
- D 1 - I - 0x03203E 0C:A02E: FF        .byte $FF   ; end token



_off037_A02F_52:
; bzk garbage
- - - - - - 0x03203F 0C:A02F: FB        .byte $FB   ; FB
- - - - - - 0x032040 0C:A030: 61        .byte $61   ; 
- - - - - - 0x032041 0C:A031: 20        .byte $20   ; 
- - - - - - 0x032042 0C:A032: 6F        .byte $6F   ; 
- - - - - - 0x032043 0C:A033: 20        .byte $20   ; 
- - - - - - 0x032044 0C:A034: FE        .byte $FE   ; FE
- - - - - - 0x032045 0C:A035: FF        .byte $FF   ; end token



_off037_A036_53:
- D 1 - I - 0x032046 0C:A036: FB        .byte $FB   ; FB
- D 1 - I - 0x032047 0C:A037: 11        .byte $11   ; 
- D 1 - I - 0x032048 0C:A038: 12        .byte $12   ; 
- D 1 - I - 0x032049 0C:A039: 13        .byte $13   ; 
- D 1 - I - 0x03204A 0C:A03A: 12        .byte $12   ; 
- D 1 - I - 0x03204B 0C:A03B: 11        .byte $11   ; 
- D 1 - I - 0x03204C 0C:A03C: 20        .byte $20   ; 
- D 1 - I - 0x03204D 0C:A03D: 1F        .byte $1F   ; 
- D 1 - I - 0x03204E 0C:A03E: 1E        .byte $1E   ; 
- D 1 - I - 0x03204F 0C:A03F: 1D        .byte $1D   ; 
- D 1 - I - 0x032050 0C:A040: 1E        .byte $1E   ; 
- D 1 - I - 0x032051 0C:A041: 1F        .byte $1F   ; 
- D 1 - I - 0x032052 0C:A042: 20        .byte $20   ; 
- D 1 - I - 0x032053 0C:A043: FE        .byte $FE   ; FE
- D 1 - I - 0x032054 0C:A044: FF        .byte $FF   ; end token



_off037_A045_54:
- D 1 - I - 0x032055 0C:A045: FB        .byte $FB   ; FB
- D 1 - I - 0x032056 0C:A046: 11        .byte $11   ; 
- D 1 - I - 0x032057 0C:A047: 22        .byte $22   ; 
- D 1 - I - 0x032058 0C:A048: 11        .byte $11   ; 
- D 1 - I - 0x032059 0C:A049: 20        .byte $20   ; 
- D 1 - I - 0x03205A 0C:A04A: 1F        .byte $1F   ; 
- D 1 - I - 0x03205B 0C:A04B: 2E        .byte $2E   ; 
- D 1 - I - 0x03205C 0C:A04C: 1F        .byte $1F   ; 
- D 1 - I - 0x03205D 0C:A04D: 20        .byte $20   ; 
- D 1 - I - 0x03205E 0C:A04E: FE        .byte $FE   ; FE
- D 1 - I - 0x03205F 0C:A04F: FF        .byte $FF   ; end token



_off037_A050_55:
- D 1 - I - 0x032060 0C:A050: FB        .byte $FB   ; FB
- D 1 - I - 0x032061 0C:A051: 31        .byte $31   ; 
- D 1 - I - 0x032062 0C:A052: 20        .byte $20   ; 
- D 1 - I - 0x032063 0C:A053: 3F        .byte $3F   ; 
- D 1 - I - 0x032064 0C:A054: 20        .byte $20   ; 
- D 1 - I - 0x032065 0C:A055: FE        .byte $FE   ; FE
- D 1 - I - 0x032066 0C:A056: FF        .byte $FF   ; end token



_off037_A057_56:
- D 1 - I - 0x032067 0C:A057: FB        .byte $FB   ; FB
- D 1 - I - 0x032068 0C:A058: 51        .byte $51   ; 
- D 1 - I - 0x032069 0C:A059: 10        .byte $10   ; 
- D 1 - I - 0x03206A 0C:A05A: 1F        .byte $1F   ; 
- D 1 - I - 0x03206B 0C:A05B: 1E        .byte $1E   ; 
- D 1 - I - 0x03206C 0C:A05C: 1D        .byte $1D   ; 
- D 1 - I - 0x03206D 0C:A05D: 1E        .byte $1E   ; 
- D 1 - I - 0x03206E 0C:A05E: 1F        .byte $1F   ; 
- D 1 - I - 0x03206F 0C:A05F: 10        .byte $10   ; 
- D 1 - I - 0x032070 0C:A060: FE        .byte $FE   ; FE
- D 1 - I - 0x032071 0C:A061: FF        .byte $FF   ; end token



_off037_A062_57:
- D 1 - I - 0x032072 0C:A062: FB        .byte $FB   ; FB
- D 1 - I - 0x032073 0C:A063: 1F        .byte $1F   ; 
- D 1 - I - 0x032074 0C:A064: 1E        .byte $1E   ; 
- D 1 - I - 0x032075 0C:A065: 1F        .byte $1F   ; 
- D 1 - I - 0x032076 0C:A066: 10        .byte $10   ; 
- D 1 - I - 0x032077 0C:A067: 11        .byte $11   ; 
- D 1 - I - 0x032078 0C:A068: 12        .byte $12   ; 
- D 1 - I - 0x032079 0C:A069: 11        .byte $11   ; 
- D 1 - I - 0x03207A 0C:A06A: 10        .byte $10   ; 
- D 1 - I - 0x03207B 0C:A06B: FE        .byte $FE   ; FE
- D 1 - I - 0x03207C 0C:A06C: FF        .byte $FF   ; end token



_off037_A06D_58:
- D 1 - I - 0x03207D 0C:A06D: FB        .byte $FB   ; FB
- D 1 - I - 0x03207E 0C:A06E: 10        .byte $10   ; 
- D 1 - I - 0x03207F 0C:A06F: 2F        .byte $2F   ; 
- D 1 - I - 0x032080 0C:A070: 10        .byte $10   ; 
- D 1 - I - 0x032081 0C:A071: 21        .byte $21   ; 
- - - - - - 0x032082 0C:A072: FE        .byte $FE   ; FE
- - - - - - 0x032083 0C:A073: FF        .byte $FF   ; end token



_off037_A074_59:
- D 1 - I - 0x032084 0C:A074: FB        .byte $FB   ; FB
- D 1 - I - 0x032085 0C:A075: 20        .byte $20   ; 
- D 1 - I - 0x032086 0C:A076: 21        .byte $21   ; 
- D 1 - I - 0x032087 0C:A077: 20        .byte $20   ; 
- D 1 - I - 0x032088 0C:A078: 2F        .byte $2F   ; 
- D 1 - I - 0x032089 0C:A079: FE        .byte $FE   ; FE
- D 1 - I - 0x03208A 0C:A07A: FF        .byte $FF   ; end token



_off037_A07B_5A:
- D 1 - I - 0x03208B 0C:A07B: FB        .byte $FB   ; FB
- D 1 - I - 0x03208C 0C:A07C: 30        .byte $30   ; 
- D 1 - I - 0x03208D 0C:A07D: 2F        .byte $2F   ; 
- D 1 - I - 0x03208E 0C:A07E: FE        .byte $FE   ; FE
- D 1 - I - 0x03208F 0C:A07F: FF        .byte $FF   ; end token



_off037_A080_5B:
- D 1 - I - 0x032090 0C:A080: FB        .byte $FB   ; FB
- D 1 - I - 0x032091 0C:A081: 50        .byte $50   ; 
- D 1 - I - 0x032092 0C:A082: 2F        .byte $2F   ; 
- D 1 - I - 0x032093 0C:A083: 40        .byte $40   ; 
- D 1 - I - 0x032094 0C:A084: 21        .byte $21   ; 
- D 1 - I - 0x032095 0C:A085: 10        .byte $10   ; 
- D 1 - I - 0x032096 0C:A086: FE        .byte $FE   ; FE
- D 1 - I - 0x032097 0C:A087: FF        .byte $FF   ; end token



_off037_A088_5C:
- D 1 - I - 0x032098 0C:A088: 80        .byte $80   ; 
- D 1 - I - 0x032099 0C:A089: FB        .byte $FB   ; FB
- D 1 - I - 0x03209A 0C:A08A: 20        .byte $20   ; 
- D 1 - I - 0x03209B 0C:A08B: 11        .byte $11   ; 
- D 1 - I - 0x03209C 0C:A08C: 12        .byte $12   ; 
- D 1 - I - 0x03209D 0C:A08D: 11        .byte $11   ; 
- D 1 - I - 0x03209E 0C:A08E: 20        .byte $20   ; 
- D 1 - I - 0x03209F 0C:A08F: 1F        .byte $1F   ; 
- D 1 - I - 0x0320A0 0C:A090: 1E        .byte $1E   ; 
- D 1 - I - 0x0320A1 0C:A091: 1F        .byte $1F   ; 
- D 1 - I - 0x0320A2 0C:A092: FE        .byte $FE   ; FE
- D 1 - I - 0x0320A3 0C:A093: FF        .byte $FF   ; end token



_off037_A094_5D:
- D 1 - I - 0x0320A4 0C:A094: 60        .byte $60   ; 
- D 1 - I - 0x0320A5 0C:A095: FB        .byte $FB   ; FB
- D 1 - I - 0x0320A6 0C:A096: 1F        .byte $1F   ; 
- D 1 - I - 0x0320A7 0C:A097: 2E        .byte $2E   ; 
- D 1 - I - 0x0320A8 0C:A098: 1F        .byte $1F   ; 
- D 1 - I - 0x0320A9 0C:A099: 20        .byte $20   ; 
- D 1 - I - 0x0320AA 0C:A09A: 11        .byte $11   ; 
- D 1 - I - 0x0320AB 0C:A09B: 22        .byte $22   ; 
- D 1 - I - 0x0320AC 0C:A09C: 11        .byte $11   ; 
- D 1 - I - 0x0320AD 0C:A09D: 20        .byte $20   ; 
- D 1 - I - 0x0320AE 0C:A09E: FE        .byte $FE   ; FE
- D 1 - I - 0x0320AF 0C:A09F: FF        .byte $FF   ; end token



_off037_A0A0_5E:
- D 1 - I - 0x0320B0 0C:A0A0: 40        .byte $40   ; 
- D 1 - I - 0x0320B1 0C:A0A1: FB        .byte $FB   ; FB
- D 1 - I - 0x0320B2 0C:A0A2: 30        .byte $30   ; 
- D 1 - I - 0x0320B3 0C:A0A3: 3F        .byte $3F   ; 
- D 1 - I - 0x0320B4 0C:A0A4: 30        .byte $30   ; 
- D 1 - I - 0x0320B5 0C:A0A5: 31        .byte $31   ; 
- D 1 - I - 0x0320B6 0C:A0A6: FE        .byte $FE   ; FE
- D 1 - I - 0x0320B7 0C:A0A7: FF        .byte $FF   ; end token



_off037_A0A8_5F:
- D 1 - I - 0x0320B8 0C:A0A8: FB        .byte $FB   ; FB
- D 1 - I - 0x0320B9 0C:A0A9: 1F        .byte $1F   ; 
- D 1 - I - 0x0320BA 0C:A0AA: 2E        .byte $2E   ; 
- D 1 - I - 0x0320BB 0C:A0AB: 1F        .byte $1F   ; 
- D 1 - I - 0x0320BC 0C:A0AC: 20        .byte $20   ; 
- D 1 - I - 0x0320BD 0C:A0AD: 11        .byte $11   ; 
- D 1 - I - 0x0320BE 0C:A0AE: 22        .byte $22   ; 
- D 1 - I - 0x0320BF 0C:A0AF: 11        .byte $11   ; 
- D 1 - I - 0x0320C0 0C:A0B0: 20        .byte $20   ; 
- D 1 - I - 0x0320C1 0C:A0B1: FE        .byte $FE   ; FE
- D 1 - I - 0x0320C2 0C:A0B2: FF        .byte $FF   ; end token



_off037_A0B3_60:
- D 1 - I - 0x0320C3 0C:A0B3: 60        .byte $60   ; 
- D 1 - I - 0x0320C4 0C:A0B4: FB        .byte $FB   ; FB
- D 1 - I - 0x0320C5 0C:A0B5: 3F        .byte $3F   ; 
- D 1 - I - 0x0320C6 0C:A0B6: 20        .byte $20   ; 
- D 1 - I - 0x0320C7 0C:A0B7: 31        .byte $31   ; 
- D 1 - I - 0x0320C8 0C:A0B8: 20        .byte $20   ; 
- D 1 - I - 0x0320C9 0C:A0B9: FE        .byte $FE   ; FE
- D 1 - I - 0x0320CA 0C:A0BA: FF        .byte $FF   ; end token



_off037_A0BB_61:
- D 1 - I - 0x0320CB 0C:A0BB: 80        .byte $80   ; 
- D 1 - I - 0x0320CC 0C:A0BC: FB        .byte $FB   ; FB
- D 1 - I - 0x0320CD 0C:A0BD: 20        .byte $20   ; 
- D 1 - I - 0x0320CE 0C:A0BE: 2F        .byte $2F   ; 
- D 1 - I - 0x0320CF 0C:A0BF: 1E        .byte $1E   ; 
- D 1 - I - 0x0320D0 0C:A0C0: 2F        .byte $2F   ; 
- D 1 - I - 0x0320D1 0C:A0C1: 40        .byte $40   ; 
- D 1 - I - 0x0320D2 0C:A0C2: 21        .byte $21   ; 
- D 1 - I - 0x0320D3 0C:A0C3: 12        .byte $12   ; 
- D 1 - I - 0x0320D4 0C:A0C4: 21        .byte $21   ; 
- D 1 - I - 0x0320D5 0C:A0C5: 20        .byte $20   ; 
- D 1 - I - 0x0320D6 0C:A0C6: FE        .byte $FE   ; FE
- D 1 - I - 0x0320D7 0C:A0C7: FF        .byte $FF   ; end token



_off037_A0C8_62:
- D 1 - I - 0x0320D8 0C:A0C8: 90        .byte $90   ; 
- D 1 - I - 0x0320D9 0C:A0C9: FB        .byte $FB   ; FB
- D 1 - I - 0x0320DA 0C:A0CA: 10        .byte $10   ; 
- D 1 - I - 0x0320DB 0C:A0CB: 1F        .byte $1F   ; 
- D 1 - I - 0x0320DC 0C:A0CC: 1E        .byte $1E   ; 
- D 1 - I - 0x0320DD 0C:A0CD: 1F        .byte $1F   ; 
- D 1 - I - 0x0320DE 0C:A0CE: 10        .byte $10   ; 
- D 1 - I - 0x0320DF 0C:A0CF: 11        .byte $11   ; 
- D 1 - I - 0x0320E0 0C:A0D0: 12        .byte $12   ; 
- D 1 - I - 0x0320E1 0C:A0D1: 11        .byte $11   ; 
- D 1 - I - 0x0320E2 0C:A0D2: FF        .byte $FF   ; end token



_off037_A0D3_63:
- D 1 - I - 0x0320E3 0C:A0D3: FB        .byte $FB   ; FB
- D 1 - I - 0x0320E4 0C:A0D4: 40        .byte $40   ; 
- D 1 - I - 0x0320E5 0C:A0D5: 4F        .byte $4F   ; 
- D 1 - I - 0x0320E6 0C:A0D6: 40        .byte $40   ; 
- D 1 - I - 0x0320E7 0C:A0D7: 41        .byte $41   ; 
- D 1 - I - 0x0320E8 0C:A0D8: FE        .byte $FE   ; FE
- D 1 - I - 0x0320E9 0C:A0D9: FF        .byte $FF   ; end token



_off037_A0DA_64:
- D 1 - I - 0x0320EA 0C:A0DA: 70        .byte $70   ; 
- D 1 - I - 0x0320EB 0C:A0DB: FB        .byte $FB   ; FB
- D 1 - I - 0x0320EC 0C:A0DC: 1F        .byte $1F   ; 
- D 1 - I - 0x0320ED 0C:A0DD: 1E        .byte $1E   ; 
- D 1 - I - 0x0320EE 0C:A0DE: 1F        .byte $1F   ; 
- D 1 - I - 0x0320EF 0C:A0DF: 20        .byte $20   ; 
- D 1 - I - 0x0320F0 0C:A0E0: 11        .byte $11   ; 
- D 1 - I - 0x0320F1 0C:A0E1: 12        .byte $12   ; 
- D 1 - I - 0x0320F2 0C:A0E2: 11        .byte $11   ; 
- D 1 - I - 0x0320F3 0C:A0E3: 20        .byte $20   ; 
- D 1 - I - 0x0320F4 0C:A0E4: FE        .byte $FE   ; FE
- D 1 - I - 0x0320F5 0C:A0E5: FF        .byte $FF   ; end token



_off037_A0E6_65:
- D 1 - I - 0x0320F6 0C:A0E6: FB        .byte $FB   ; FB
- D 1 - I - 0x0320F7 0C:A0E7: 20        .byte $20   ; 
- D 1 - I - 0x0320F8 0C:A0E8: 1F        .byte $1F   ; 
- D 1 - I - 0x0320F9 0C:A0E9: 1E        .byte $1E   ; 
- D 1 - I - 0x0320FA 0C:A0EA: 2F        .byte $2F   ; 
- D 1 - I - 0x0320FB 0C:A0EB: 20        .byte $20   ; 
- D 1 - I - 0x0320FC 0C:A0EC: 11        .byte $11   ; 
- D 1 - I - 0x0320FD 0C:A0ED: 12        .byte $12   ; 
- D 1 - I - 0x0320FE 0C:A0EE: 21        .byte $21   ; 
- D 1 - I - 0x0320FF 0C:A0EF: FE        .byte $FE   ; FE
- D 1 - I - 0x032100 0C:A0F0: FF        .byte $FF   ; end token



_off037_A0F1_66:
- D 1 - I - 0x032101 0C:A0F1: 30        .byte $30   ; 
- D 1 - I - 0x032102 0C:A0F2: FB        .byte $FB   ; FB
- D 1 - I - 0x032103 0C:A0F3: 3F        .byte $3F   ; 
- D 1 - I - 0x032104 0C:A0F4: 30        .byte $30   ; 
- D 1 - I - 0x032105 0C:A0F5: 31        .byte $31   ; 
- D 1 - I - 0x032106 0C:A0F6: 30        .byte $30   ; 
- D 1 - I - 0x032107 0C:A0F7: FE        .byte $FE   ; FE
- D 1 - I - 0x032108 0C:A0F8: FF        .byte $FF   ; end token



_off037_A0F9_67:
- D 1 - I - 0x032109 0C:A0F9: 20        .byte $20   ; 
- D 1 - I - 0x03210A 0C:A0FA: FB        .byte $FB   ; FB
- D 1 - I - 0x03210B 0C:A0FB: 20        .byte $20   ; 
- D 1 - I - 0x03210C 0C:A0FC: 21        .byte $21   ; 
- D 1 - I - 0x03210D 0C:A0FD: 12        .byte $12   ; 
- D 1 - I - 0x03210E 0C:A0FE: 21        .byte $21   ; 
- D 1 - I - 0x03210F 0C:A0FF: 20        .byte $20   ; 
- D 1 - I - 0x032110 0C:A100: 2F        .byte $2F   ; 
- D 1 - I - 0x032111 0C:A101: 1E        .byte $1E   ; 
- D 1 - I - 0x032112 0C:A102: 2F        .byte $2F   ; 
- D 1 - I - 0x032113 0C:A103: FE        .byte $FE   ; FE
- D 1 - I - 0x032114 0C:A104: FF        .byte $FF   ; end token



_off037_A105_68:
- D 1 - I - 0x032115 0C:A105: FB        .byte $FB   ; FB
- D 1 - I - 0x032116 0C:A106: 20        .byte $20   ; 
- D 1 - I - 0x032117 0C:A107: 1F        .byte $1F   ; 
- D 1 - I - 0x032118 0C:A108: 1E        .byte $1E   ; 
- D 1 - I - 0x032119 0C:A109: 2F        .byte $2F   ; 
- D 1 - I - 0x03211A 0C:A10A: 20        .byte $20   ; 
- D 1 - I - 0x03211B 0C:A10B: 21        .byte $21   ; 
- D 1 - I - 0x03211C 0C:A10C: 12        .byte $12   ; 
- D 1 - I - 0x03211D 0C:A10D: 21        .byte $21   ; 
- D 1 - I - 0x03211E 0C:A10E: FE        .byte $FE   ; FE
- D 1 - I - 0x03211F 0C:A10F: FF        .byte $FF   ; end token



_off037_A110_69:
- D 1 - I - 0x032120 0C:A110: FB        .byte $FB   ; FB
- D 1 - I - 0x032121 0C:A111: 20        .byte $20   ; 
- D 1 - I - 0x032122 0C:A112: 11        .byte $11   ; 
- D 1 - I - 0x032123 0C:A113: 22        .byte $22   ; 
- D 1 - I - 0x032124 0C:A114: 11        .byte $11   ; 
- D 1 - I - 0x032125 0C:A115: 20        .byte $20   ; 
- D 1 - I - 0x032126 0C:A116: 1F        .byte $1F   ; 
- D 1 - I - 0x032127 0C:A117: 2E        .byte $2E   ; 
- D 1 - I - 0x032128 0C:A118: 1F        .byte $1F   ; 
- D 1 - I - 0x032129 0C:A119: FE        .byte $FE   ; FE
- D 1 - I - 0x03212A 0C:A11A: FF        .byte $FF   ; end token



_off037_A11B_6A:
- D 1 - I - 0x03212B 0C:A11B: 30        .byte $30   ; 
- D 1 - I - 0x03212C 0C:A11C: FB        .byte $FB   ; FB
- D 1 - I - 0x03212D 0C:A11D: 20        .byte $20   ; 
- D 1 - I - 0x03212E 0C:A11E: 2F        .byte $2F   ; 
- D 1 - I - 0x03212F 0C:A11F: 1E        .byte $1E   ; 
- D 1 - I - 0x032130 0C:A120: 1F        .byte $1F   ; 
- D 1 - I - 0x032131 0C:A121: 20        .byte $20   ; 
- D 1 - I - 0x032132 0C:A122: 20        .byte $20   ; 
- D 1 - I - 0x032133 0C:A123: 21        .byte $21   ; 
- D 1 - I - 0x032134 0C:A124: 12        .byte $12   ; 
- D 1 - I - 0x032135 0C:A125: 11        .byte $11   ; 
- D 1 - I - 0x032136 0C:A126: FE        .byte $FE   ; FE
- D 1 - I - 0x032137 0C:A127: FF        .byte $FF   ; end token



_off037_A128_6B:
- D 1 - I - 0x032138 0C:A128: 90        .byte $90   ; 
- D 1 - I - 0x032139 0C:A129: FB        .byte $FB   ; FB
- D 1 - I - 0x03213A 0C:A12A: 2F        .byte $2F   ; 
- D 1 - I - 0x03213B 0C:A12B: 1E        .byte $1E   ; 
- D 1 - I - 0x03213C 0C:A12C: 2F        .byte $2F   ; 
- D 1 - I - 0x03213D 0C:A12D: 20        .byte $20   ; 
- D 1 - I - 0x03213E 0C:A12E: 21        .byte $21   ; 
- D 1 - I - 0x03213F 0C:A12F: 12        .byte $12   ; 
- D 1 - I - 0x032140 0C:A130: 21        .byte $21   ; 
- D 1 - I - 0x032141 0C:A131: 20        .byte $20   ; 
- D 1 - I - 0x032142 0C:A132: FE        .byte $FE   ; FE
- D 1 - I - 0x032143 0C:A133: FF        .byte $FF   ; end token



_off037_A134_6C:
- D 1 - I - 0x032144 0C:A134: 30        .byte $30   ; 
- D 1 - I - 0x032145 0C:A135: FB        .byte $FB   ; FB
- D 1 - I - 0x032146 0C:A136: 2F        .byte $2F   ; 
- D 1 - I - 0x032147 0C:A137: 2E        .byte $2E   ; 
- D 1 - I - 0x032148 0C:A138: 2F        .byte $2F   ; 
- D 1 - I - 0x032149 0C:A139: 20        .byte $20   ; 
- D 1 - I - 0x03214A 0C:A13A: 21        .byte $21   ; 
- D 1 - I - 0x03214B 0C:A13B: 22        .byte $22   ; 
- D 1 - I - 0x03214C 0C:A13C: 21        .byte $21   ; 
- D 1 - I - 0x03214D 0C:A13D: 20        .byte $20   ; 
- D 1 - I - 0x03214E 0C:A13E: FE        .byte $FE   ; FE
- D 1 - I - 0x03214F 0C:A13F: FF        .byte $FF   ; end token



_off037_A140_6D:
- D 1 - I - 0x032150 0C:A140: FB        .byte $FB   ; FB
- D 1 - I - 0x032151 0C:A141: 10        .byte $10   ; 
- D 1 - I - 0x032152 0C:A142: 4F        .byte $4F   ; 
- D 1 - I - 0x032153 0C:A143: 10        .byte $10   ; 
- D 1 - I - 0x032154 0C:A144: 41        .byte $41   ; 
- D 1 - I - 0x032155 0C:A145: FE        .byte $FE   ; FE
- D 1 - I - 0x032156 0C:A146: FF        .byte $FF   ; end token



_off037_A147_6E:
- D 1 - I - 0x032157 0C:A147: 70        .byte $70   ; 
- D 1 - I - 0x032158 0C:A148: FB        .byte $FB   ; FB
- D 1 - I - 0x032159 0C:A149: 3F        .byte $3F   ; 
- D 1 - I - 0x03215A 0C:A14A: 30        .byte $30   ; 
- D 1 - I - 0x03215B 0C:A14B: 31        .byte $31   ; 
- D 1 - I - 0x03215C 0C:A14C: 30        .byte $30   ; 
- D 1 - I - 0x03215D 0C:A14D: FE        .byte $FE   ; FE
- D 1 - I - 0x03215E 0C:A14E: FF        .byte $FF   ; end token



_off037_A14F_6F:
; bzk garbage
- - - - - - 0x03215F 0C:A14F: FF        .byte $FF   ; end token



tbl_A150_dmc_setup:
;                                              +-------------------- 4010
;                                              |    +--------------- 4011
;                                              |    |    +---------- 4012
;                                              |    |    |    +----- 4013
;                                              |    |    |    |
- D 1 - - - 0x032160 0C:A150: 0C        .byte $0C, $00, $05, $10   ; 6D 
- D 1 - - - 0x032164 0C:A154: 0D        .byte $0D, $00, $05, $10   ; 6E 
- D 1 - - - 0x032168 0C:A158: 0E        .byte $0E, $00, $05, $10   ; 6F 
- D 1 - - - 0x03216C 0C:A15C: 0D        .byte $0D, $00, $01, $08   ; 70 
- D 1 - - - 0x032170 0C:A160: 08        .byte $08, $00, $00, $01   ; 71 
- D 1 - - - 0x032174 0C:A164: 0F        .byte $0F, $00, $09, $44   ; 72 whip/cursor
- D 1 - - - 0x032178 0C:A168: 0F        .byte $0F, $00, $1A, $0C   ; 73 hit Trevor
- D 1 - - - 0x03217C 0C:A16C: 0E        .byte $0E, $00, $1A, $0C   ; 74 hit Grant
- D 1 - - - 0x032180 0C:A170: 0F        .byte $0F, $00, $1D, $0C   ; 75 hit Sypha
- D 1 - - - 0x032184 0C:A174: 0D        .byte $0D, $00, $1A, $0C   ; 76 hit Alucard             
- D 1 - - - 0x032188 0C:A178: 0C        .byte $0C, $00, $20, $B0   ; 77 
- - - - - - 0x03218C 0C:A17C: 0F        .byte $0F, $00, $09, $44   ; 78 
- D 1 - - - 0x032190 0C:A180: 0C        .byte $0C, $7F, $20, $B0   ; 79 
- D 1 - - - 0x032194 0C:A184: 0B        .byte $0B, $00, $4C, $B0   ; 7A 
- D 1 - - - 0x032198 0C:A188: 48        .byte $48, $00, $4C, $BC   ; 7B boss death
- D 1 - - - 0x03219C 0C:A18C: 4A        .byte $4A, $00, $4C, $BC   ; 7C 



loc_0x0321A0:
C D 1 - - - 0x0321A0 0C:A190: A5 19     LDA ram_0019_subscript
C - - - - - 0x0321A2 0C:A192: 20 6D E8  JSR sub_0x03E87D_jump_to_pointers_after_JSR_A
- D 1 - I - 0x0321A5 0C:A195: 9D A1     .word ofs_007_A19D_00
- D 1 - I - 0x0321A7 0C:A197: BC A1     .word ofs_007_A1BC_01
- D 1 - I - 0x0321A9 0C:A199: C6 A1     .word ofs_007_A1C6_02
- D 1 - I - 0x0321AB 0C:A19B: D0 A1     .word ofs_007_A1D0_03



ofs_007_A19D_00:
C - - J - - 0x0321AD 0C:A19D: 20 D6 E2  JSR sub_0x03E2E6_prg_bankswitch_dpcm_1
C - - - - - 0x0321B0 0C:A1A0: A9 80     LDA #con_98E4_opening + $80
C - - - - - 0x0321B2 0C:A1A2: 20 E9 EC  JSR sub_0x03ECF9_write_data_to_ppu_buffer
C - - - - - 0x0321B5 0C:A1A5: A9 A6     LDA #con_98E4_26_password + $80
C - - - - - 0x0321B7 0C:A1A7: 20 E9 EC  JSR sub_0x03ECF9_write_data_to_ppu_buffer
C - - - - - 0x0321BA 0C:A1AA: A9 82     LDA #con_98E4_konami + $80
C - - - - - 0x0321BC 0C:A1AC: 20 E9 EC  JSR sub_0x03ECF9_write_data_to_ppu_buffer
C - - - - - 0x0321BF 0C:A1AF: A9 00     LDA #$00
C - - - - - 0x0321C1 0C:A1B1: 8D 00 04  STA ram_plr_anim_id
C - - - - - 0x0321C4 0C:A1B4: 85 6B     STA ram_006B_subscript
C - - - - - 0x0321C6 0C:A1B6: 8D 80 07  STA ram_0780
C - - - - - 0x0321C9 0C:A1B9: E6 19     INC ram_0019_subscript
C - - - - - 0x0321CB 0C:A1BB: 60        RTS



ofs_007_A1BC_01:
C - - J - - 0x0321CC 0C:A1BC: A2 98     LDX #con_prg_bank + $98
C - - - - - 0x0321CE 0C:A1BE: A9 67     LDA #con_98E4_67
C - - - - - 0x0321D0 0C:A1C0: 20 DC EC  JSR sub_0x03ECEC_write_data_to_ppu_buffer
C - - - - - 0x0321D3 0C:A1C3: E6 19     INC ram_0019_subscript
C - - - - - 0x0321D5 0C:A1C5: 60        RTS



ofs_007_A1C6_02:
C - - J - - 0x0321D6 0C:A1C6: 20 DE A1  JSR sub_A1DE
C - - - - - 0x0321D9 0C:A1C9: A5 6B     LDA ram_006B_subscript
C - - - - - 0x0321DB 0C:A1CB: 10 02     BPL bra_A1CF_RTS
C - - - - - 0x0321DD 0C:A1CD: E6 19     INC ram_0019_subscript
bra_A1CF_RTS:
C - - - - - 0x0321DF 0C:A1CF: 60        RTS



ofs_007_A1D0_03:
C - - J - - 0x0321E0 0C:A1D0: 20 DA E2  JSR sub_0x03E2EA_prg_bankswitch_dpcm_2
C - - - - - 0x0321E3 0C:A1D3: A9 00     LDA #$00
C - - - - - 0x0321E5 0C:A1D5: 85 6B     STA ram_006B_subscript
C - - - - - 0x0321E7 0C:A1D7: 85 18     STA ram_main_script ; con_0018_title_screen
C - - - - - 0x0321E9 0C:A1D9: A9 03     LDA #$03
C - - - - - 0x0321EB 0C:A1DB: 85 19     STA ram_0019_subscript
C - - - - - 0x0321ED 0C:A1DD: 60        RTS



sub_A1DE:
C - - - - - 0x0321EE 0C:A1DE: A5 6B     LDA ram_006B_subscript
C - - - - - 0x0321F0 0C:A1E0: 20 6D E8  JSR sub_0x03E87D_jump_to_pointers_after_JSR_A
- D 1 - I - 0x0321F3 0C:A1E3: E9 A1     .word ofs_006_A1E9_00
- D 1 - I - 0x0321F5 0C:A1E5: EC A1     .word ofs_006_A1EC_01
- D 1 - I - 0x0321F7 0C:A1E7: F7 A1     .word ofs_006_A1F7_02_hidden_sound_test



ofs_006_A1E9_00:
C - - J - - 0x0321F9 0C:A1E9: 20 59 A2  JSR sub_A259_print_soundtrack_name
ofs_006_A1EC_01:
C - - - - - 0x0321FC 0C:A1EC: E6 6B     INC ram_006B_subscript
C - - - - - 0x0321FE 0C:A1EE: 60        RTS



bra_A1EF_pressed_start:
C - - - - - 0x0321FF 0C:A1EF: 20 27 E2  JSR sub_0x03E237_disable_sound_engine
C - - - - - 0x032202 0C:A1F2: A9 FF     LDA #$FF
C - - - - - 0x032204 0C:A1F4: 85 6B     STA ram_006B_subscript
C - - - - - 0x032206 0C:A1F6: 60        RTS



ofs_006_A1F7_02_hidden_sound_test:
C - - J - - 0x032207 0C:A1F7: A5 26     LDA ram_btn_press
C - - - - - 0x032209 0C:A1F9: 29 10     AND #con_btn_Start
C - - - - - 0x03220B 0C:A1FB: D0 F2     BNE bra_A1EF_pressed_start
C - - - - - 0x03220D 0C:A1FD: A5 26     LDA ram_btn_press
C - - - - - 0x03220F 0C:A1FF: 29 08     AND #con_btn_Up
C - - - - - 0x032211 0C:A201: D0 24     BNE bra_A227_pressed_up
C - - - - - 0x032213 0C:A203: A5 26     LDA ram_btn_press
C - - - - - 0x032215 0C:A205: 29 04     AND #con_btn_Down
C - - - - - 0x032217 0C:A207: D0 10     BNE bra_A219_pressed_down
C - - - - - 0x032219 0C:A209: A5 26     LDA ram_btn_press
C - - - - - 0x03221B 0C:A20B: 29 80     AND #con_btn_A
C - - - - - 0x03221D 0C:A20D: D0 07     BNE bra_A216_pressed_A
C - - - - - 0x03221F 0C:A20F: A5 26     LDA ram_btn_press
C - - - - - 0x032221 0C:A211: 29 40     AND #con_btn_B
C - - - - - 0x032223 0C:A213: D0 22     BNE bra_A237_pressed_B
C - - - - - 0x032225 0C:A215: 60        RTS
bra_A216_pressed_A:
C - - - - - 0x032226 0C:A216: 4C 27 E2  JMP loc_0x03E237_disable_sound_engine
bra_A219_pressed_down:
C - - - - - 0x032229 0C:A219: EE 80 07  INC ram_0780
C - - - - - 0x03222C 0C:A21C: AD 80 07  LDA ram_0780
C - - - - - 0x03222F 0C:A21F: C9 19     CMP #$19
C - - - - - 0x032231 0C:A221: 90 0E     BCC bra_A231
C - - - - - 0x032233 0C:A223: A9 19     LDA #$19
C - - - - - 0x032235 0C:A225: D0 07     BNE bra_A22E    ; jmp
bra_A227_pressed_up:
C - - - - - 0x032237 0C:A227: CE 80 07  DEC ram_0780
C - - - - - 0x03223A 0C:A22A: 10 05     BPL bra_A231
C - - - - - 0x03223C 0C:A22C: A9 00     LDA #$00
bra_A22E:
C - - - - - 0x03223E 0C:A22E: 8D 80 07  STA ram_0780
bra_A231:
C - - - - - 0x032241 0C:A231: 20 40 A2  JSR sub_A240_clear_ppu_buffer
C - - - - - 0x032244 0C:A234: 4C 59 A2  JMP loc_A259_print_soundtrack_name
bra_A237_pressed_B:
C - - - - - 0x032247 0C:A237: AC 80 07  LDY ram_0780
C - - - - - 0x03224A 0C:A23A: B9 C1 A2  LDA tbl_A2C1_music,Y
C - - - - - 0x03224D 0C:A23D: 4C 5F E2  JMP loc_0x03E26F_play_sound



sub_A240_clear_ppu_buffer:
C - - - - - 0x032250 0C:A240: A9 2B     LDA #< $232B
C - - - - - 0x032252 0C:A242: 85 61     STA ram_ppu_address_lo
C - - - - - 0x032254 0C:A244: A9 23     LDA #> $232B
C - - - - - 0x032256 0C:A246: 85 62     STA ram_ppu_address_hi
C - - - - - 0x032258 0C:A248: 20 B5 E8  JSR sub_0x03E8C5_set_buffer_mode_01
C - - - - - 0x03225B 0C:A24B: A0 0A     LDY #$0A
C - - - - - 0x03225D 0C:A24D: A9 00     LDA #$00
bra_A24F_loop:
; 0301-030A
C - - - - - 0x03225F 0C:A24F: 9D 00 03  STA ram_ppu_buffer,X
C - - - - - 0x032262 0C:A252: E8        INX
C - - - - - 0x032263 0C:A253: 88        DEY
C - - - - - 0x032264 0C:A254: D0 F9     BNE bra_A24F_loop
C - - - - - 0x032266 0C:A256: 4C DE E8  JMP loc_0x03E8EE_store_index_and_close_buffer



sub_A259_print_soundtrack_name:
loc_A259_print_soundtrack_name:
C D 1 - - - 0x032269 0C:A259: AD 80 07  LDA ram_0780
C - - - - - 0x03226C 0C:A25C: 0A        ASL
C - - - - - 0x03226D 0C:A25D: A8        TAY
C - - - - - 0x03226E 0C:A25E: B9 DB A2  LDA tbl_A2DB_soundtrack_names,Y
C - - - - - 0x032271 0C:A261: 85 08     STA ram_0008_t011_data
C - - - - - 0x032273 0C:A263: B9 DC A2  LDA tbl_A2DB_soundtrack_names + $01,Y
C - - - - - 0x032276 0C:A266: 85 09     STA ram_0008_t011_data + $01
C - - - - - 0x032278 0C:A268: A9 2B     LDA #< $232B
C - - - - - 0x03227A 0C:A26A: 85 61     STA ram_ppu_address_lo
C - - - - - 0x03227C 0C:A26C: A9 23     LDA #> $232B
C - - - - - 0x03227E 0C:A26E: 85 62     STA ram_ppu_address_hi
C - - - - - 0x032280 0C:A270: 20 B5 E8  JSR sub_0x03E8C5_set_buffer_mode_01
C - - - - - 0x032283 0C:A273: A0 00     LDY #$00
bra_A275_loop:
C - - - - - 0x032285 0C:A275: B1 08     LDA (ram_0008_t011_data),Y
C - - - - - 0x032287 0C:A277: C9 FF     CMP #$FF
C - - - - - 0x032289 0C:A279: D0 03     BNE bra_A27E
; FF
C - - - - - 0x03228B 0C:A27B: 4C DE E8  JMP loc_0x03E8EE_store_index_and_close_buffer
bra_A27E:
C - - - - - 0x03228E 0C:A27E: 9D 00 03  STA ram_ppu_buffer,X
C - - - - - 0x032291 0C:A281: E8        INX
C - - - - - 0x032292 0C:A282: C8        INY
C - - - - - 0x032293 0C:A283: D0 F0     BNE bra_A275_loop



_off003_0x032295_67:
- D 1 - I - 0x032295 0C:A285: CB 22     .word $22CB ; ppu address
- D 1 - I - 0x032297 0C:A287: 22        .byte $22, $1E, $24, $1D, $13, $00, $1C, $1E, $13, $14   ; 

- D 1 - I - 0x0322A1 0C:A291: FE        .byte $FE   ; continue

- D 1 - I - 0x0322A2 0C:A292: EA 22     .word $22EA ; ppu address
- D 1 - I - 0x0322A4 0C:A294: 2E        .byte $2E, $2E, $2E, $2E, $2E, $2E, $2E, $2E, $2E, $2E, $2E, $2E   ; 

- D 1 - I - 0x0322B0 0C:A2A0: FE        .byte $FE   ; continue

- D 1 - I - 0x0322B1 0C:A2A1: 09 23     .word $2309 ; ppu address
- D 1 - I - 0x0322B3 0C:A2A3: 2D        .byte $2D   ; 

- D 1 - I - 0x0322B4 0C:A2A4: FE        .byte $FE   ; continue

- D 1 - I - 0x0322B5 0C:A2A5: 15 23     .word $2315 ; ppu address
- D 1 - I - 0x0322B7 0C:A2A7: 2D        .byte $2D   ; 

- D 1 - I - 0x0322B8 0C:A2A8: FE        .byte $FE   ; continue

- D 1 - I - 0x0322B9 0C:A2A9: 29 23     .word $2329 ; ppu address
- D 1 - I - 0x0322BB 0C:A2AB: 2D        .byte $2D   ; 

- D 1 - I - 0x0322BC 0C:A2AC: FE        .byte $FE   ; continue

- D 1 - I - 0x0322BD 0C:A2AD: 35 23     .word $2335 ; ppu address
- D 1 - I - 0x0322BF 0C:A2AF: 2D        .byte $2D   ; 

- D 1 - I - 0x0322C0 0C:A2B0: FE        .byte $FE   ; continue

- D 1 - I - 0x0322C1 0C:A2B1: 49 23     .word $2349 ; ppu address
- D 1 - I - 0x0322C3 0C:A2B3: 2D        .byte $2D, $2E, $2E, $2E, $2E, $2E, $2E, $2E, $2E, $2E, $2E, $2E, $2F   ; 

- D 1 - I - 0x0322D0 0C:A2C0: FF        .byte $FF   ; end token



tbl_A2C1_music:
- D 1 - - - 0x0322D1 0C:A2C1: 4F        .byte con_music_4F   ; 00 
- D 1 - - - 0x0322D2 0C:A2C2: 53        .byte con_music_53   ; 01 
- D 1 - - - 0x0322D3 0C:A2C3: 50        .byte con_music_50   ; 02 
- D 1 - - - 0x0322D4 0C:A2C4: 56        .byte con_music_56   ; 03 
- D 1 - - - 0x0322D5 0C:A2C5: 55        .byte con_music_55   ; 04 
- D 1 - - - 0x0322D6 0C:A2C6: 51        .byte con_music_51   ; 05 
- D 1 - - - 0x0322D7 0C:A2C7: 52        .byte con_music_52   ; 06 
- D 1 - - - 0x0322D8 0C:A2C8: 57        .byte con_music_57   ; 07 
- D 1 - - - 0x0322D9 0C:A2C9: 54        .byte con_music_54   ; 08 
- D 1 - - - 0x0322DA 0C:A2CA: 58        .byte con_music_58   ; 09 
- D 1 - - - 0x0322DB 0C:A2CB: 5B        .byte con_music_5B   ; 0A 
- D 1 - - - 0x0322DC 0C:A2CC: 5C        .byte con_music_5C   ; 0B 
- D 1 - - - 0x0322DD 0C:A2CD: 6A        .byte con_music_6A   ; 0C 
- D 1 - - - 0x0322DE 0C:A2CE: 5E        .byte con_music_5E   ; 0D 
- D 1 - - - 0x0322DF 0C:A2CF: 5F        .byte con_music_5F   ; 0E 
- D 1 - - - 0x0322E0 0C:A2D0: 63        .byte con_music_stage_complete   ; 0F 
- D 1 - - - 0x0322E1 0C:A2D1: 60        .byte con_music_60   ; 10 
- D 1 - - - 0x0322E2 0C:A2D2: 64        .byte con_music_64   ; 11 
- D 1 - - - 0x0322E3 0C:A2D3: 6C        .byte con_music_6C   ; 12 
- D 1 - - - 0x0322E4 0C:A2D4: 6B        .byte con_music_dialog   ; 13 
- D 1 - - - 0x0322E5 0C:A2D5: 66        .byte con_music_title_screen   ; 14 
- D 1 - - - 0x0322E6 0C:A2D6: 67        .byte con_music_67   ; 15 
- D 1 - - - 0x0322E7 0C:A2D7: 62        .byte con_music_enter_name_psw   ; 16 
- D 1 - - - 0x0322E8 0C:A2D8: 68        .byte con_music_68   ; 17 
- D 1 - - - 0x0322E9 0C:A2D9: 69        .byte con_music_69   ; 18 
- D 1 - - - 0x0322EA 0C:A2DA: 65        .byte con_music_game_over   ; 19 



tbl_A2DB_soundtrack_names:
- D 1 - - - 0x0322EB 0C:A2DB: 0F A3     .word _off008_A30F_00_beginning
- D 1 - - - 0x0322ED 0C:A2DD: 19 A3     .word _off008_A319_01_clockwork
- D 1 - - - 0x0322EF 0C:A2DF: 23 A3     .word _off008_A323_02_mad_forest
- D 1 - - - 0x0322F1 0C:A2E1: 2E A3     .word _off008_A32E_03_anxiety
- D 1 - - - 0x0322F3 0C:A2E3: 36 A3     .word _off008_A336_04_rising
- D 1 - - - 0x0322F5 0C:A2E5: 3D A3     .word _off008_A33D_05_stream
- D 1 - - - 0x0322F7 0C:A2E7: 44 A3     .word _off008_A344_06_dead_beat
- D 1 - - - 0x0322F9 0C:A2E9: 4E A3     .word _off008_A34E_07_nightmare
- D 1 - - - 0x0322FB 0C:A2EB: 58 A3     .word _off008_A358_08_aquarius
- D 1 - - - 0x0322FD 0C:A2ED: 61 A3     .word _off008_A361_09_demon_seed
- D 1 - - - 0x0322FF 0C:A2EF: 6C A3     .word _off008_A36C_0A_dejavu
- D 1 - - - 0x032301 0C:A2F1: 73 A3     .word _off008_A373_0B_riddle
- D 1 - - - 0x032303 0C:A2F3: 7A A3     .word _off008_A37A_0C_pressure
- D 1 - - - 0x032305 0C:A2F5: 83 A3     .word _off008_A383_0D_overture
- D 1 - - - 0x032307 0C:A2F7: 8C A3     .word _off008_A38C_0E_boss_fight
- D 1 - - - 0x032309 0C:A2F9: 97 A3     .word _off008_A397_0F_blk_clear
- D 1 - - - 0x03230B 0C:A2FB: A1 A3     .word _off008_A3A1_10_big_battle
- D 1 - - - 0x03230D 0C:A2FD: AC A3     .word _off008_A3AC_11_all_clear
- D 1 - - - 0x03230F 0C:A2FF: B6 A3     .word _off008_A3B6_12_destiny
- D 1 - - - 0x032311 0C:A301: BE A3     .word _off008_A3BE_13_encounter
- D 1 - - - 0x032313 0C:A303: C8 A3     .word _off008_A3C8_14_prelude
- D 1 - - - 0x032315 0C:A305: D0 A3     .word _off008_A3D0_15_prayer
- D 1 - - - 0x032317 0C:A307: D7 A3     .word _off008_A3D7_16_epitaph
- D 1 - - - 0x032319 0C:A309: DF A3     .word _off008_A3DF_17_evergreen
- D 1 - - - 0x03231B 0C:A30B: E9 A3     .word _off008_A3E9_18_flash_back
- D 1 - - - 0x03231D 0C:A30D: F4 A3     .word _off008_A3F4_19_game_over



_off008_A30F_00_beginning:
; "BEGINNING"
- D 1 - I - 0x03231F 0C:A30F: 11        .byte $11, $14, $16, $18, $1D, $1D, $18, $1D, $16   ; 
- D 1 - I - 0x032328 0C:A318: FF        .byte $FF   ; end token



_off008_A319_01_clockwork:
; "CLOCKWORK"
- D 1 - I - 0x032329 0C:A319: 12        .byte $12, $1B, $1E, $12, $1A, $26, $1E, $21, $1A   ; 
- D 1 - I - 0x032332 0C:A322: FF        .byte $FF   ; end token



_off008_A323_02_mad_forest:
; "MAD FOREST"
- D 1 - I - 0x032333 0C:A323: 1C        .byte $1C, $10, $13, $00, $15, $1E, $21, $14, $22, $23   ; 
- D 1 - I - 0x03233D 0C:A32D: FF        .byte $FF   ; end token



_off008_A32E_03_anxiety:
; "ANXIETY"
- D 1 - I - 0x03233E 0C:A32E: 10        .byte $10, $1D, $27, $18, $14, $23, $28   ; 
- D 1 - I - 0x032345 0C:A335: FF        .byte $FF   ; end token



_off008_A336_04_rising:
; "RISING"
- D 1 - I - 0x032346 0C:A336: 21        .byte $21, $18, $22, $18, $1D, $16   ; 
- D 1 - I - 0x03234C 0C:A33C: FF        .byte $FF   ; end token



_off008_A33D_05_stream:
; "STREAM"
- D 1 - I - 0x03234D 0C:A33D: 22        .byte $22, $23, $21, $14, $10, $1C   ; 
- D 1 - I - 0x032353 0C:A343: FF        .byte $FF   ; end token



_off008_A344_06_dead_beat:
; "DEAD BEAT"
- D 1 - I - 0x032354 0C:A344: 13        .byte $13, $14, $10, $13, $00, $11, $14, $10, $23   ; 
- D 1 - I - 0x03235D 0C:A34D: FF        .byte $FF   ; end token



_off008_A34E_07_nightmare:
; "NIGHTMARE"
- D 1 - I - 0x03235E 0C:A34E: 1D        .byte $1D, $18, $16, $17, $23, $1C, $10, $21, $14   ; 
- D 1 - I - 0x032367 0C:A357: FF        .byte $FF   ; end token



_off008_A358_08_aquarius:
; "AQUARIUS"
- D 1 - I - 0x032368 0C:A358: 10        .byte $10, $20, $24, $10, $21, $18, $24, $22   ; 
- D 1 - I - 0x032370 0C:A360: FF        .byte $FF   ; end token



_off008_A361_09_demon_seed:
; "DEMON SEED"
- D 1 - I - 0x032371 0C:A361: 13        .byte $13, $14, $1C, $1E, $1D, $00, $22, $14, $14, $13   ; 
- D 1 - I - 0x03237B 0C:A36B: FF        .byte $FF   ; end token



_off008_A36C_0A_dejavu:
; "DEJAVU"
- D 1 - I - 0x03237C 0C:A36C: 13        .byte $13, $14, $19, $10, $25, $24   ; 
- D 1 - I - 0x032382 0C:A372: FF        .byte $FF   ; end token



_off008_A373_0B_riddle:
; "RIDDLE"
- D 1 - I - 0x032383 0C:A373: 21        .byte $21, $18, $13, $13, $1B, $14   ; 
- D 1 - I - 0x032389 0C:A379: FF        .byte $FF   ; end token



_off008_A37A_0C_pressure:
; "PRESSURE"
- D 1 - I - 0x03238A 0C:A37A: 1F        .byte $1F, $21, $14, $22, $22, $24, $21, $14   ; 
- D 1 - I - 0x032392 0C:A382: FF        .byte $FF   ; end token



_off008_A383_0D_overture:
; "OVERTURE"
- D 1 - I - 0x032393 0C:A383: 1E        .byte $1E, $25, $14, $21, $23, $24, $21, $14   ; 
- D 1 - I - 0x03239B 0C:A38B: FF        .byte $FF   ; end token



_off008_A38C_0E_boss_fight:
; "BOSS FIGHT"
- D 1 - I - 0x03239C 0C:A38C: 11        .byte $11, $1E, $22, $22, $00, $15, $18, $16, $17, $23   ; 
- D 1 - I - 0x0323A6 0C:A396: FF        .byte $FF   ; end token



_off008_A397_0F_blk_clear:
; "BLK CLEAR"
- D 1 - I - 0x0323A7 0C:A397: 11        .byte $11, $1B, $1A, $00, $12, $1B, $14, $10, $21   ; 
- D 1 - I - 0x0323B0 0C:A3A0: FF        .byte $FF   ; end token



_off008_A3A1_10_big_battle:
; "BIG BATTLE"
- D 1 - I - 0x0323B1 0C:A3A1: 11        .byte $11, $18, $16, $00, $11, $10, $23, $23, $1B, $14   ; 
- D 1 - I - 0x0323BB 0C:A3AB: FF        .byte $FF   ; end token



_off008_A3AC_11_all_clear:
; "ALL CLEAR"
- D 1 - I - 0x0323BC 0C:A3AC: 10        .byte $10, $1B, $1B, $00, $12, $1B, $14, $10, $21   ; 
- D 1 - I - 0x0323C5 0C:A3B5: FF        .byte $FF   ; end token



_off008_A3B6_12_destiny:
; "DESTINY"
- D 1 - I - 0x0323C6 0C:A3B6: 13        .byte $13, $14, $22, $23, $18, $1D, $28   ; 
- D 1 - I - 0x0323CD 0C:A3BD: FF        .byte $FF   ; end token



_off008_A3BE_13_encounter:
; "ENCOUNTER"
- D 1 - I - 0x0323CE 0C:A3BE: 14        .byte $14, $1D, $12, $1E, $24, $1D, $23, $14, $21   ; 
- D 1 - I - 0x0323D7 0C:A3C7: FF        .byte $FF   ; end token



_off008_A3C8_14_prelude:
; "PRELUDE"
- D 1 - I - 0x0323D8 0C:A3C8: 1F        .byte $1F, $21, $14, $1B, $24, $13, $14   ; 
- D 1 - I - 0x0323DF 0C:A3CF: FF        .byte $FF   ; end token



_off008_A3D0_15_prayer:
; "PRAYER"
- D 1 - I - 0x0323E0 0C:A3D0: 1F        .byte $1F, $21, $10, $28, $14, $21   ; 
- D 1 - I - 0x0323E6 0C:A3D6: FF        .byte $FF   ; end token



_off008_A3D7_16_epitaph:
; "EPITAPH"
- D 1 - I - 0x0323E7 0C:A3D7: 14        .byte $14, $1F, $18, $23, $10, $1F, $17   ; 
- D 1 - I - 0x0323EE 0C:A3DE: FF        .byte $FF   ; end token



_off008_A3DF_17_evergreen:
; "EVERGREEN"
- D 1 - I - 0x0323EF 0C:A3DF: 14        .byte $14, $25, $14, $21, $16, $21, $14, $14, $1D   ; 
- D 1 - I - 0x0323F8 0C:A3E8: FF        .byte $FF   ; end token



_off008_A3E9_18_flash_back:
; "FLASH BACK"
- D 1 - I - 0x0323F9 0C:A3E9: 15        .byte $15, $1B, $10, $22, $17, $00, $11, $10, $12, $1A   ; 
- D 1 - I - 0x032403 0C:A3F3: FF        .byte $FF   ; end token



_off008_A3F4_19_game_over:
; "GAME OVER"
- D 1 - I - 0x032404 0C:A3F4: 16        .byte $16, $10, $1C, $14, $00, $1E, $25, $14, $21   ; 
- D 1 - I - 0x03240D 0C:A3FD: FF        .byte $FF   ; end token



sub_0x03240E:
C - - - - - 0x03240E 0C:A3FE: A9 00     LDA #$00
C - - - - - 0x032410 0C:A400: 85 00     STA ram_0000_t054
C - - - - - 0x032412 0C:A402: 85 01     STA ram_0000_t054 + $01
C - - - - - 0x032414 0C:A404: A8        TAY ; 00
bra_A405_loop:
C - - - - - 0x032415 0C:A405: A5 00     LDA ram_0000_t054
C - - - - - 0x032417 0C:A407: 18        CLC
C - - - - - 0x032418 0C:A408: 69 04     ADC #< $0004
C - - - - - 0x03241A 0C:A40A: 85 00     STA ram_0000_t054
C - - - - - 0x03241C 0C:A40C: A5 01     LDA ram_0000_t054 + $01
C - - - - - 0x03241E 0C:A40E: 69 00     ADC #> $0004
C - - - - - 0x032420 0C:A410: 85 01     STA ram_0000_t054 + $01
C - - - - - 0x032422 0C:A412: B9 82 07  LDA ram_0782,Y
C - - - - - 0x032425 0C:A415: 18        CLC
C - - - - - 0x032426 0C:A416: 65 00     ADC ram_0000_t054
C - - - - - 0x032428 0C:A418: 99 82 07  STA ram_0782,Y
C - - - - - 0x03242B 0C:A41B: B9 83 07  LDA ram_0783,Y
C - - - - - 0x03242E 0C:A41E: 65 01     ADC ram_0000_t054 + $01
C - - - - - 0x032430 0C:A420: 99 83 07  STA ram_0783,Y
C - - - - - 0x032433 0C:A423: 98        TYA
C - - - - - 0x032434 0C:A424: 18        CLC
C - - - - - 0x032435 0C:A425: 69 12     ADC #$12
C - - - - - 0x032437 0C:A427: 29 3F     AND #$3F
C - - - - - 0x032439 0C:A429: F0 03     BEQ bra_A42E_RTS
C - - - - - 0x03243B 0C:A42B: A8        TAY
C - - - - - 0x03243C 0C:A42C: D0 D7     BNE bra_A405_loop   ; jmp
bra_A42E_RTS:
C - - - - - 0x03243E 0C:A42E: 60        RTS



sub_A42F_calculate_jump_address:
; in
    ; A = subroutine index
    ; Y = argument
C - - - - - 0x03243F 0C:A42F: 84 00     STY ram_0000_t04E_save_Y
C - - - - - 0x032441 0C:A431: 0A        ASL
C - - - - - 0x032442 0C:A432: A8        TAY
C - - - - - 0x032443 0C:A433: B9 52 A4  LDA tbl_A452,Y
C - - - - - 0x032446 0C:A436: 85 16     STA ram_0016_t001_jmp
C - - - - - 0x032448 0C:A438: B9 53 A4  LDA tbl_A452 + $01,Y
C - - - - - 0x03244B 0C:A43B: 85 17     STA ram_0016_t001_jmp + $01
C - - - - - 0x03244D 0C:A43D: A4 00     LDY ram_0000_t04E_save_Y
C - - - - - 0x03244F 0C:A43F: 60        RTS



sub_A440_deal_damage_to_boss:
; in
    ; A = argument
    ; X = con_A452
; bzk optimize, single JSR to here
C - - - - - 0x032450 0C:A440: 48        PHA
C - - - - - 0x032451 0C:A441: 8A        TXA
C - - - - - 0x032452 0C:A442: 20 2F A4  JSR sub_A42F_calculate_jump_address
C - - - - - 0x032455 0C:A445: A6 6C     LDX ram_006C_object_index
C - - - - - 0x032457 0C:A447: 68        PLA
C - - - - - 0x032458 0C:A448: A8        TAY
C - - - - - 0x032459 0C:A449: 4C CF FB  JMP loc_0x03FBDF_indirect_jump_bank_92



sub_A44C:
; in
    ; A = con_A452
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x03245C 0C:A44C: 20 2F A4  JSR sub_A42F_calculate_jump_address
C - - - - - 0x03245F 0C:A44F: 4C D3 FB  JMP loc_0x03FBE3_indirect_jump_bank_9C



tbl_A452:
; see con_A452
; boss fight start 9-04, movie walkthrough 1, frame around 325890
; boss is Trevor, he seems to be using same routines as player
- D 1 - - - 0x032462 0C:A452: 28 96     .word ofs_036_0x039638_00
- D 1 - - - 0x032464 0C:A454: C8 98     .word ofs_036_0x0398D8_01
- D 1 - - - 0x032466 0C:A456: 4F 97     .word ofs_036_0x03975F_02
- D 1 - - - 0x032468 0C:A458: 15 BA     .word ofs_036_0x03BA25_03
- D 1 - - - 0x03246A 0C:A45A: 3F AE     .word ofs_036_0x03AE4F_04
- D 1 - - - 0x03246C 0C:A45C: F4 BA     .word ofs_036_0x03BB04_05
- D 1 - - - 0x03246E 0C:A45E: 6B BA     .word ofs_036_0x03BA7B_06
- D 1 - - - 0x032470 0C:A460: 81 BC     .word ofs_036_0x03BC91_07
- D 1 - - - 0x032472 0C:A462: DF 88     .word ofs_036_0x0248EF_08_deal_damage_to_boss   ; bank 92, others for bank 9C



ofs_042_0x032474_0F:
C - - J - - 0x032474 0C:A464: BD 45 06  LDA ram_obj_0646,X
C - - - - - 0x032477 0C:A467: F0 30     BEQ bra_A499_RTS
C - - - - - 0x032479 0C:A469: C9 01     CMP #$01
C - - - - - 0x03247B 0C:A46B: F0 2C     BEQ bra_A499_RTS
C - - - - - 0x03247D 0C:A46D: A9 00     LDA #$00
C - - - - - 0x03247F 0C:A46F: 9D 69 06  STA ram_obj_066A,X
C - - - - - 0x032482 0C:A472: BD 33 06  LDA ram_obj_0634,X
C - - - - - 0x032485 0C:A475: 9D 4E 05  STA ram_obj_id,X
C - - - - - 0x032488 0C:A478: A9 04     LDA #con_A452_04
C - - - - - 0x03248A 0C:A47A: 20 4C A4  JSR sub_A44C
C - - - - - 0x03248D 0C:A47D: BD 4E 05  LDA ram_obj_id,X
C - - - - - 0x032490 0C:A480: F0 17     BEQ bra_A499_RTS
C - - - - - 0x032492 0C:A482: C9 08     CMP #$08
C - - - - - 0x032494 0C:A484: F0 04     BEQ bra_A48A
C - - - - - 0x032496 0C:A486: C9 09     CMP #$09
C - - - - - 0x032498 0C:A488: D0 04     BNE bra_A48E
bra_A48A:
C - - - - - 0x03249A 0C:A48A: A9 16     LDA #con_obj_type_16
C - - - - - 0x03249C 0C:A48C: D0 03     BNE bra_A491    ; jmp
bra_A48E:
C - - - - - 0x03249E 0C:A48E: AD 8D 04  LDA ram_obj_type + $01
bra_A491:
C - - - - - 0x0324A1 0C:A491: 9D 8C 04  STA ram_obj_type,X
C - - - - - 0x0324A4 0C:A494: A9 0F     LDA #$0F
C - - - - - 0x0324A6 0C:A496: 9D 4E 05  STA ram_obj_id,X
bra_A499_RTS:
C - - - - - 0x0324A9 0C:A499: 60        RTS


; bzk garbage
- - - - - - 0x0324AA 0C:A49A: 60        RTS



bra_A49B:
C - - - - - 0x0324AB 0C:A49B: AD 38 04  LDA ram_plr_pos_X_hi
C - - - - - 0x0324AE 0C:A49E: 38        SEC
C - - - - - 0x0324AF 0C:A49F: FD 38 04  SBC ram_obj_pos_X_hi,X
C - - - - - 0x0324B2 0C:A4A2: B0 02     BCS bra_A4A6
C - - - - - 0x0324B4 0C:A4A4: 49 FF     EOR #$FF
bra_A4A6:
C - - - - - 0x0324B6 0C:A4A6: C9 08     CMP #$08
C - - - - - 0x0324B8 0C:A4A8: B0 04     BCS bra_A4AE
C - - - - - 0x0324BA 0C:A4AA: A9 04     LDA #$04
C - - - - - 0x0324BC 0C:A4AC: D0 0B     BNE bra_A4B9    ; jmp



bra_A4AE:
C - - - - - 0x0324BE 0C:A4AE: A9 02     LDA #$02
C - - - - - 0x0324C0 0C:A4B0: D0 07     BNE bra_A4B9    ; jmp



sub_A4B2:
C - - - - - 0x0324C2 0C:A4B2: BD 33 06  LDA ram_obj_0634,X
C - - - - - 0x0324C5 0C:A4B5: C9 02     CMP #$02
C - - - - - 0x0324C7 0C:A4B7: F0 E2     BEQ bra_A49B
bra_A4B9:
; * 03
C - - - - - 0x0324C9 0C:A4B9: 85 00     STA ram_0000_t0C8
C - - - - - 0x0324CB 0C:A4BB: 0A        ASL
C - - - - - 0x0324CC 0C:A4BC: 18        CLC
C - - - - - 0x0324CD 0C:A4BD: 65 00     ADC ram_0000_t0C8
C - - - - - 0x0324CF 0C:A4BF: A8        TAY
C - - - - - 0x0324D0 0C:A4C0: B9 65 A5  LDA tbl_A565,Y
C - - - - - 0x0324D3 0C:A4C3: C9 0A     CMP #$0A
C - - - - - 0x0324D5 0C:A4C5: F0 5C     BEQ bra_A523
C - - - - - 0x0324D7 0C:A4C7: 85 08     STA ram_0008_temp
C - - - - - 0x0324D9 0C:A4C9: B9 66 A5  LDA tbl_A565 + $01,Y
C - - - - - 0x0324DC 0C:A4CC: 48        PHA
C - - - - - 0x0324DD 0C:A4CD: B9 67 A5  LDA tbl_A565 + $02,Y
C - - - - - 0x0324E0 0C:A4D0: 48        PHA
C - - - - - 0x0324E1 0C:A4D1: A4 3B     LDY ram_player
C - - - - - 0x0324E3 0C:A4D3: A2 02     LDX #$02
C - - - - - 0x0324E5 0C:A4D5: A9 03     LDA #con_A452_03
C - - - - - 0x0324E7 0C:A4D7: 20 4C A4  JSR sub_A44C
C - - - - - 0x0324EA 0C:A4DA: 68        PLA
C - - - - - 0x0324EB 0C:A4DB: A8        TAY
C - - - - - 0x0324EC 0C:A4DC: 68        PLA
C - - - - - 0x0324ED 0C:A4DD: B0 03     BCS bra_A4E2
C - - - - - 0x0324EF 0C:A4DF: A6 6C     LDX ram_006C_object_index
C - - - - - 0x0324F1 0C:A4E1: 60        RTS
bra_A4E2:
C - - - - - 0x0324F2 0C:A4E2: 9D 45 06  STA ram_obj_0646,X
C - - - - - 0x0324F5 0C:A4E5: 98        TYA
C - - - - - 0x0324F6 0C:A4E6: 9D 57 06  STA ram_obj_0658,X
C - - - - - 0x0324F9 0C:A4E9: BD 4E 05  LDA ram_obj_id,X
C - - - - - 0x0324FC 0C:A4EC: 9D 33 06  STA ram_obj_0634,X
C - - - - - 0x0324FF 0C:A4EF: C9 05     CMP #$05
C - - - - - 0x032501 0C:A4F1: F0 08     BEQ bra_A4FB
C - - - - - 0x032503 0C:A4F3: C9 0A     CMP #$0A
C - - - - - 0x032505 0C:A4F5: F0 04     BEQ bra_A4FB
C - - - - - 0x032507 0C:A4F7: A9 03     LDA #$03
C - - - - - 0x032509 0C:A4F9: D0 02     BNE bra_A4FD    ; jmp
bra_A4FB:
C - - - - - 0x03250B 0C:A4FB: A9 00     LDA #$00
bra_A4FD:
C - - - - - 0x03250D 0C:A4FD: 9D 54 04  STA ram_0454_obj,X
C - - - - - 0x032510 0C:A500: A9 0F     LDA #$0F
C - - - - - 0x032512 0C:A502: 9D 4E 05  STA ram_obj_id,X
C - - - - - 0x032515 0C:A505: 20 C0 A8  JSR sub_A8C0_set_flag_20
C - - - - - 0x032518 0C:A508: BD 45 06  LDA ram_obj_0646,X
C - - - - - 0x03251B 0C:A50B: 85 BC     STA ram_00BC
C - - - - - 0x03251D 0C:A50D: A9 20     LDA #$20
C - - - - - 0x03251F 0C:A50F: 85 BA     STA ram_00BA
C - - - - - 0x032521 0C:A511: A9 00     LDA #$00
C - - - - - 0x032523 0C:A513: 85 BB     STA ram_00BB
bra_A515:
C - - - - - 0x032525 0C:A515: A6 6C     LDX ram_006C_object_index
C - - - - - 0x032527 0C:A517: A9 00     LDA #$00
C - - - - - 0x032529 0C:A519: 9D 93 05  STA ram_obj_anim_cnt,X
C - - - - - 0x03252C 0C:A51C: A9 01     LDA #$01
C - - - - - 0x03252E 0C:A51E: 9D 7C 05  STA ram_obj_anim_timer,X
C - - - - - 0x032531 0C:A521: 38        SEC
C - - - - - 0x032532 0C:A522: 60        RTS
bra_A523:
C - - - - - 0x032533 0C:A523: B9 66 A5  LDA tbl_A565 + $01,Y
C - - - - - 0x032536 0C:A526: 48        PHA
C - - - - - 0x032537 0C:A527: A2 02     LDX #$02
C - - - - - 0x032539 0C:A529: A9 06     LDA #con_A452_06
C - - - - - 0x03253B 0C:A52B: 20 4C A4  JSR sub_A44C
C - - - - - 0x03253E 0C:A52E: 68        PLA
C - - - - - 0x03253F 0C:A52F: 90 31     BCC bra_A562
C - - - - - 0x032541 0C:A531: 85 01     STA ram_0001_t00A
; find empty object slot 02-04
C - - - - - 0x032543 0C:A533: A2 02     LDX #$02
bra_A535_loop:
C - - - - - 0x032545 0C:A535: BD 4E 05  LDA ram_obj_id,X
C - - - - - 0x032548 0C:A538: C9 0A     CMP #$0A
C - - - - - 0x03254A 0C:A53A: F0 07     BEQ bra_A543_empty_slot_found
bra_A53C:
C - - - - - 0x03254C 0C:A53C: E8        INX
C - - - - - 0x03254D 0C:A53D: E0 05     CPX #$05
C - - - - - 0x03254F 0C:A53F: 90 F4     BCC bra_A535_loop
C - - - - - 0x032551 0C:A541: B0 D2     BCS bra_A515    ; jmp if not found
bra_A543_empty_slot_found:
C - - - - - 0x032553 0C:A543: BD 65 05  LDA ram_obj_state,X
C - - - - - 0x032556 0C:A546: D0 F4     BNE bra_A53C
C - - - - - 0x032558 0C:A548: A5 01     LDA ram_0001_t00A
C - - - - - 0x03255A 0C:A54A: 9D 45 06  STA ram_obj_0646,X
C - - - - - 0x03255D 0C:A54D: BD 4E 05  LDA ram_obj_id,X
C - - - - - 0x032560 0C:A550: 9D 33 06  STA ram_obj_0634,X
C - - - - - 0x032563 0C:A553: A9 0F     LDA #$0F
C - - - - - 0x032565 0C:A555: 9D 4E 05  STA ram_obj_id,X
C - - - - - 0x032568 0C:A558: 20 C0 A8  JSR sub_A8C0_set_flag_20
C - - - - - 0x03256B 0C:A55B: A9 30     LDA #$30
C - - - - - 0x03256D 0C:A55D: 9D 57 06  STA ram_obj_0658,X
C - - - - - 0x032570 0C:A560: D0 DA     BNE bra_A53C    ; jmp
bra_A562:
C - - - - - 0x032572 0C:A562: A6 6C     LDX ram_006C_object_index
C - - - - - 0x032574 0C:A564: 60        RTS



tbl_A565:
;                                              +--------------- 
;                                              |    +---------- 
;                                              |    |    +----- 
;                                              |    |    |
- D 1 - - - 0x032575 0C:A565: 02        .byte $02, $03, $30   ; 00 
- D 1 - - - 0x032578 0C:A568: 05        .byte $05, $02, $30   ; 01 
- D 1 - - - 0x03257B 0C:A56B: 09        .byte $09, $04, $30   ; 02 
- D 1 - - - 0x03257E 0C:A56E: 0A        .byte $0A, $06, $30   ; 03 
- D 1 - - - 0x032581 0C:A571: 08        .byte $08, $05, $30   ; 04 



sub_A574:
C - - - - - 0x032584 0C:A574: BD 65 05  LDA ram_obj_state,X
C - - - - - 0x032587 0C:A577: 48        PHA
C - - - - - 0x032588 0C:A578: 38        SEC
C - - - - - 0x032589 0C:A579: E9 10     SBC #$10
C - - - - - 0x03258B 0C:A57B: A8        TAY
C - - - - - 0x03258C 0C:A57C: B9 99 A5  LDA tbl_A599,Y
C - - - - - 0x03258F 0C:A57F: 9D 65 05  STA ram_obj_state,X
C - - - - - 0x032592 0C:A582: BD 33 06  LDA ram_obj_0634,X
C - - - - - 0x032595 0C:A585: 9D 4E 05  STA ram_obj_id,X
C - - - - - 0x032598 0C:A588: A9 05     LDA #con_A452_05
C - - - - - 0x03259A 0C:A58A: 20 4C A4  JSR sub_A44C
C - - - - - 0x03259D 0C:A58D: A6 6C     LDX ram_006C_object_index
C - - - - - 0x03259F 0C:A58F: 68        PLA
C - - - - - 0x0325A0 0C:A590: 9D 65 05  STA ram_obj_state,X
C - - - - - 0x0325A3 0C:A593: A9 0B     LDA #$0B
C - - - - - 0x0325A5 0C:A595: 9D 4E 05  STA ram_obj_id,X
C - - - - - 0x0325A8 0C:A598: 60        RTS



tbl_A599:
- D 1 - - - 0x0325A9 0C:A599: 20        .byte $20   ; 00 
- - - - - - 0x0325AA 0C:A59A: 22        .byte $22   ; 01 



ofs_042_0x0325AB_0B:
C - - J - - 0x0325AB 0C:A59B: A9 00     LDA #$00
C - - - - - 0x0325AD 0C:A59D: 9D 57 06  STA ram_obj_0658,X
C - - - - - 0x0325B0 0C:A5A0: 9D EF 05  STA ram_05EF_obj,X
C - - - - - 0x0325B3 0C:A5A3: 9D 65 05  STA ram_obj_state,X
C - - - - - 0x0325B6 0C:A5A6: 20 B8 A8  JSR sub_A8B8_set_flag_60
C - - - - - 0x0325B9 0C:A5A9: A9 01     LDA #$01    ; facing left
C - - - - - 0x0325BB 0C:A5AB: 9D A8 04  STA ram_obj_facing,X
C - - - - - 0x0325BE 0C:A5AE: A9 00     LDA #$00
C - - - - - 0x0325C0 0C:A5B0: 9D 00 04  STA ram_obj_anim_id,X
C - - - - - 0x0325C3 0C:A5B3: A9 01     LDA #$01
C - - - - - 0x0325C5 0C:A5B5: 85 B0     STA ram_00B0_oam_flag
C - - - - - 0x0325C7 0C:A5B7: A5 78     LDA ram_0078_flag
C - - - - - 0x0325C9 0C:A5B9: F0 05     BEQ bra_A5C0_RTS
C - - - - - 0x0325CB 0C:A5BB: A0 00     LDY #$00
C - - - - - 0x0325CD 0C:A5BD: 8C F3 07  STY ram_07F3
bra_A5C0_RTS:
C - - - - - 0x0325D0 0C:A5C0: 60        RTS



bra_A5C1:
C - - - - - 0x0325D1 0C:A5C1: A6 6C     LDX ram_006C_object_index
C - - - - - 0x0325D3 0C:A5C3: BD 65 05  LDA ram_obj_state,X
C - - - - - 0x0325D6 0C:A5C6: C9 19     CMP #$19
C - - - - - 0x0325D8 0C:A5C8: 90 03     BCC bra_A5CD
C - - - - - 0x0325DA 0C:A5CA: 4C 2A A6  JMP loc_A62A
bra_A5CD:
C - - - - - 0x0325DD 0C:A5CD: 20 B4 A8  JSR sub_A8B4_set_flag_10
C - - - - - 0x0325E0 0C:A5D0: A9 19     LDA #$19
C - - - - - 0x0325E2 0C:A5D2: 9D 65 05  STA ram_obj_state,X
C - - - - - 0x0325E5 0C:A5D5: 4C 2A A6  JMP loc_A62A



bra_A5D8:
C - - - - - 0x0325E8 0C:A5D8: DE 06 06  DEC ram_obj_config,X
C - - - - - 0x0325EB 0C:A5DB: F0 01     BEQ bra_A5DE
C - - - - - 0x0325ED 0C:A5DD: 60        RTS
bra_A5DE:
C - - - - - 0x0325EE 0C:A5DE: BD 65 05  LDA ram_obj_state,X
C - - - - - 0x0325F1 0C:A5E1: 29 7F     AND #$7F
C - - - - - 0x0325F3 0C:A5E3: 9D 65 05  STA ram_obj_state,X
C - - - - - 0x0325F6 0C:A5E6: AD EE 07  LDA ram_07EE
C - - - - - 0x0325F9 0C:A5E9: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x0325FC 0C:A5EC: A9 01     LDA #$01
C - - - - - 0x0325FE 0C:A5EE: 8D EF 07  STA ram_07EF
C - - - - - 0x032601 0C:A5F1: 60        RTS



bra_A5F2:
C - - - - - 0x032602 0C:A5F2: A9 00     LDA #$00
C - - - - - 0x032604 0C:A5F4: 9D 69 06  STA ram_obj_066A,X
C - - - - - 0x032607 0C:A5F7: BD 65 05  LDA ram_obj_state,X
C - - - - - 0x03260A 0C:A5FA: 09 80     ORA #$80
C - - - - - 0x03260C 0C:A5FC: 9D 65 05  STA ram_obj_state,X
C - - - - - 0x03260F 0C:A5FF: A9 0C     LDA #$0C
C - - - - - 0x032611 0C:A601: 9D 06 06  STA ram_obj_config,X
C - - - - - 0x032614 0C:A604: BD 70 04  LDA ram_obj_flags,X
C - - - - - 0x032617 0C:A607: 8D EE 07  STA ram_07EE
C - - - - - 0x03261A 0C:A60A: 20 AC A8  JSR sub_A8AC_set_flag_30
C - - - - - 0x03261D 0C:A60D: 4C 20 A6  JMP loc_A620



ofs_042_0x032620_0B:
C - - J - - 0x032620 0C:A610: A9 03     LDA #$03    ; damage offset
C - - - - - 0x032622 0C:A612: A2 08     LDX #con_A452_08
C - - - - - 0x032624 0C:A614: 20 40 A4  JSR sub_A440_deal_damage_to_boss
C - - - - - 0x032627 0C:A617: A5 3D     LDA ram_hp_boss
C - - - - - 0x032629 0C:A619: F0 A6     BEQ bra_A5C1
C - - - - - 0x03262B 0C:A61B: BD 69 06  LDA ram_obj_066A,X
C - - - - - 0x03262E 0C:A61E: D0 D2     BNE bra_A5F2
loc_A620:
C D 1 - - - 0x032630 0C:A620: 20 6E A6  JSR sub_A66E
C - - - - - 0x032633 0C:A623: 90 05     BCC bra_A62A
C - - - - - 0x032635 0C:A625: A9 05     LDA #$05
C - - - - - 0x032637 0C:A627: 9D 65 05  STA ram_obj_state,X
bra_A62A:
loc_A62A:
C D 1 - - - 0x03263A 0C:A62A: A6 6C     LDX ram_006C_object_index
C - - - - - 0x03263C 0C:A62C: BD 65 05  LDA ram_obj_state,X
C - - - - - 0x03263F 0C:A62F: 30 A7     BMI bra_A5D8
C - - - - - 0x032641 0C:A631: 20 6D E8  JSR sub_0x03E87D_jump_to_pointers_after_JSR_A
- D 1 - I - 0x032644 0C:A634: 8B A7     .word ofs_005_A78B_00
- D 1 - I - 0x032646 0C:A636: 9D A7     .word ofs_005_A79D_01
- D 1 - I - 0x032648 0C:A638: AA A7     .word ofs_005_A7AA_02
- D 1 - I - 0x03264A 0C:A63A: 9D A7     .word ofs_005_A79D_03
- D 1 - I - 0x03264C 0C:A63C: C0 A7     .word ofs_005_A7C0_04
- D 1 - I - 0x03264E 0C:A63E: 6C A7     .word ofs_005_A76C_05
- D 1 - I - 0x032650 0C:A640: 7D A7     .word ofs_005_A77D_06
- D 1 - I - 0x032652 0C:A642: 9D A7     .word ofs_005_A79D_07
- D 1 - I - 0x032654 0C:A644: AA A7     .word ofs_005_A7AA_08
- D 1 - I - 0x032656 0C:A646: 9D A7     .word ofs_005_A79D_09
- D 1 - I - 0x032658 0C:A648: C0 A7     .word ofs_005_A7C0_0A
- D 1 - I - 0x03265A 0C:A64A: E2 A9     .word ofs_005_A9E2_0B
- D 1 - I - 0x03265C 0C:A64C: F1 A9     .word ofs_005_A9F1_0C
- D 1 - I - 0x03265E 0C:A64E: 78 AA     .word ofs_005_AA78_0D
- D 1 - I - 0x032660 0C:A650: 04 AB     .word ofs_005_AB04_0E
- D 1 - I - 0x032662 0C:A652: 22 AB     .word ofs_005_AB22_0F
- D 1 - I - 0x032664 0C:A654: 7F AB     .word ofs_005_AB7F_10
- - - - - - 0x032666 0C:A656: 22 AB     .word ofs_005_AB22_11
- - - - - - 0x032668 0C:A658: 93 AB     .word ofs_005_AB93_12_RTS
- D 1 - I - 0x03266A 0C:A65A: 94 AB     .word ofs_005_AB94_13
- - - - - - 0x03266C 0C:A65C: A8 AB     .word ofs_005_ABA8_14   ; definitely unused
- - - - - - 0x03266E 0C:A65E: A8 AB     .word ofs_005_ABA8_15   ; definitely unused
- - - - - - 0x032670 0C:A660: E2 A9     .word ofs_005_A9E2_16
- - - - - - 0x032672 0C:A662: E2 A9     .word ofs_005_A9E2_17
- - - - - - 0x032674 0C:A664: E2 A9     .word ofs_005_A9E2_18
- D 1 - I - 0x032676 0C:A666: E7 A6     .word ofs_005_A6E7_19
- D 1 - I - 0x032678 0C:A668: 19 A7     .word ofs_005_A719_1A
- D 1 - I - 0x03267A 0C:A66A: 39 A7     .word ofs_005_A739_1B
- - - - - - 0x03267C 0C:A66C: 6B A7     .word ofs_005_A76B_1C_RTS



sub_A66E:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x03267E 0C:A66E: A6 6C     LDX ram_006C_object_index
C - - - - - 0x032680 0C:A670: BD 65 05  LDA ram_obj_state,X
C - - - - - 0x032683 0C:A673: C9 0B     CMP #$0B
C - - - - - 0x032685 0C:A675: 90 0E     BCC bra_A685
C - - - - - 0x032687 0C:A677: C9 19     CMP #$19
C - - - - - 0x032689 0C:A679: B0 0A     BCS bra_A685
C - - - - - 0x03268B 0C:A67B: AD 4E 05  LDA ram_plr_id
C - - - - - 0x03268E 0C:A67E: DD 33 06  CMP ram_obj_0634,X
C - - - - - 0x032691 0C:A681: F0 02     BEQ bra_A685
C - - - - - 0x032693 0C:A683: 38        SEC
C - - - - - 0x032694 0C:A684: 60        RTS
bra_A685:
C - - - - - 0x032695 0C:A685: 18        CLC
C - - - - - 0x032696 0C:A686: 60        RTS



sub_A687_clear_objects_data:
C - - - - - 0x032697 0C:A687: A2 02     LDX #$02
C - - - - - 0x032699 0C:A689: A9 00     LDA #$00
bra_A68B_loop:
C - - - - - 0x03269B 0C:A68B: 9D 00 04  STA ram_obj_anim_id,X
C - - - - - 0x03269E 0C:A68E: 9D 4E 05  STA ram_obj_id,X
C - - - - - 0x0326A1 0C:A691: 9D 38 04  STA ram_obj_pos_X_hi,X
C - - - - - 0x0326A4 0C:A694: 9D 1C 04  STA ram_obj_pos_Y_hi,X
C - - - - - 0x0326A7 0C:A697: 9D 70 04  STA ram_obj_flags,X ; con_obj_flag_00
C - - - - - 0x0326AA 0C:A69A: E8        INX
C - - - - - 0x0326AB 0C:A69B: E0 06     CPX #$06
C - - - - - 0x0326AD 0C:A69D: 90 EC     BCC bra_A68B_loop
C - - - - - 0x0326AF 0C:A69F: A6 6C     LDX ram_006C_object_index
C - - - - - 0x0326B1 0C:A6A1: 60        RTS



sub_A6A2:
C - - - - - 0x0326B2 0C:A6A2: BD 38 04  LDA ram_obj_pos_X_hi,X
C - - - - - 0x0326B5 0C:A6A5: 85 00     STA ram_0000_t053_copy_obj_pos_X_hi
C - - - - - 0x0326B7 0C:A6A7: BD 1C 04  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x0326BA 0C:A6AA: 85 01     STA ram_0001_t009_copy_obj_pos_Y_hi
C - - - - - 0x0326BC 0C:A6AC: A2 03     LDX #$03
C - - - - - 0x0326BE 0C:A6AE: A9 00     LDA #$00
C - - - - - 0x0326C0 0C:A6B0: 85 02     STA ram_0002_t022
bra_A6B2_loop:
C - - - - - 0x0326C2 0C:A6B2: A4 02     LDY ram_0002_t022
C - - - - - 0x0326C4 0C:A6B4: 18        CLC
C - - - - - 0x0326C5 0C:A6B5: A5 00     LDA ram_0000_t053_copy_obj_pos_X_hi
C - - - - - 0x0326C7 0C:A6B7: 79 DF A6  ADC tbl_A6DF_position,Y
C - - - - - 0x0326CA 0C:A6BA: 9D 38 04  STA ram_obj_pos_X_hi,X
C - - - - - 0x0326CD 0C:A6BD: 18        CLC
C - - - - - 0x0326CE 0C:A6BE: A5 01     LDA ram_0001_t009_copy_obj_pos_Y_hi
C - - - - - 0x0326D0 0C:A6C0: 79 E0 A6  ADC tbl_A6DF_position + $01,Y
C - - - - - 0x0326D3 0C:A6C3: 9D 1C 04  STA ram_obj_pos_Y_hi,X
C - - - - - 0x0326D6 0C:A6C6: 20 B4 A8  JSR sub_A8B4_set_flag_10
C - - - - - 0x0326D9 0C:A6C9: A9 0E     LDA #con_obj_type_0E
C - - - - - 0x0326DB 0C:A6CB: A0 08     LDY #$08
C - - - - - 0x0326DD 0C:A6CD: 20 5C EF  JSR sub_0x03EF6C_prepare_animation
C - - - - - 0x0326E0 0C:A6D0: A9 00     LDA #$00
C - - - - - 0x0326E2 0C:A6D2: 9D 54 04  STA ram_0454_obj,X
C - - - - - 0x0326E5 0C:A6D5: E6 02     INC ram_0002_t022
C - - - - - 0x0326E7 0C:A6D7: E6 02     INC ram_0002_t022
C - - - - - 0x0326E9 0C:A6D9: E8        INX
C - - - - - 0x0326EA 0C:A6DA: E0 07     CPX #$07
C - - - - - 0x0326EC 0C:A6DC: 90 D4     BCC bra_A6B2_loop
C - - - - - 0x0326EE 0C:A6DE: 60        RTS



tbl_A6DF_position:
;                                              +---------- pos_X_hi
;                                              |    +----- pos_Y_hi
;                                              |    |
- D 1 - - - 0x0326EF 0C:A6DF: 00        .byte $00, $00   ; 00 
- D 1 - - - 0x0326F1 0C:A6E1: 00        .byte $00, $E8   ; 01 
- D 1 - - - 0x0326F3 0C:A6E3: F8        .byte $F8, $F4   ; 02 
- D 1 - - - 0x0326F5 0C:A6E5: 08        .byte $08, $F4   ; 03 



ofs_005_A6E7_19:
C - - J - - 0x0326F7 0C:A6E7: A9 7B     LDA #con_dmc_boss_death
C - - - - - 0x0326F9 0C:A6E9: 20 5F E2  JSR sub_0x03E26F_play_sound
C - - - - - 0x0326FC 0C:A6EC: 20 CE E5  JSR sub_0x03E5DE_forbid_pausing
C - - - - - 0x0326FF 0C:A6EF: A9 00     LDA #$00
C - - - - - 0x032701 0C:A6F1: 85 03     STA ram_0000_t046_add + $03
C - - - - - 0x032703 0C:A6F3: 85 01     STA ram_0000_t046_add + $01
C - - - - - 0x032705 0C:A6F5: A9 50     LDA #$50
C - - - - - 0x032707 0C:A6F7: 85 02     STA ram_0000_t046_add + $02
C - - - - - 0x032709 0C:A6F9: 20 77 E7  JSR sub_0x03E787_add_points
C - - - - - 0x03270C 0C:A6FC: 20 87 A6  JSR sub_A687_clear_objects_data
C - - - - - 0x03270F 0C:A6FF: 20 A2 A6  JSR sub_A6A2
C - - - - - 0x032712 0C:A702: A6 6C     LDX ram_006C_object_index
C - - - - - 0x032714 0C:A704: 20 AC A8  JSR sub_A8AC_set_flag_30
C - - - - - 0x032717 0C:A707: A9 00     LDA #$00
C - - - - - 0x032719 0C:A709: A8        TAY ; 00
C - - - - - 0x03271A 0C:A70A: 20 9C A8  JSR sub_A89C_set_spd_X
C - - - - - 0x03271D 0C:A70D: 20 A4 A8  JSR sub_A8A4_set_spd_Y
C - - - - - 0x032720 0C:A710: A9 B4     LDA #$B4
C - - - - - 0x032722 0C:A712: 9D 06 06  STA ram_obj_config,X
C - - - - - 0x032725 0C:A715: FE 65 05  INC ram_obj_state,X
C - - - - - 0x032728 0C:A718: 60        RTS



ofs_005_A719_1A:
C - - J - - 0x032729 0C:A719: DE 06 06  DEC ram_obj_config,X
C - - - - - 0x03272C 0C:A71C: D0 03     BNE bra_A721
C - - - - - 0x03272E 0C:A71E: FE 65 05  INC ram_obj_state,X
bra_A721:
C - - - - - 0x032731 0C:A721: A2 03     LDX #$03
bra_A723_loop:
C - - - - - 0x032733 0C:A723: 20 75 EF  JSR sub_0x03EF85
C - - - - - 0x032736 0C:A726: E8        INX
C - - - - - 0x032737 0C:A727: E0 07     CPX #$07
C - - - - - 0x032739 0C:A729: 90 F8     BCC bra_A723_loop
C - - - - - 0x03273B 0C:A72B: A6 6C     LDX ram_006C_object_index
C - - - - - 0x03273D 0C:A72D: A5 1A     LDA ram_frm_cnt
; / 04
C - - - - - 0x03273F 0C:A72F: 4A        LSR
C - - - - - 0x032740 0C:A730: 4A        LSR
C - - - - - 0x032741 0C:A731: 29 03     AND #$03
C - - - - - 0x032743 0C:A733: 9D 33 06  STA ram_obj_0634,X
C - - - - - 0x032746 0C:A736: 4C FC A7  JMP loc_A7FC



ofs_005_A739_1B:
C - - J - - 0x032749 0C:A739: A9 00     LDA #$00
C - - - - - 0x03274B 0C:A73B: 8D 01 04  STA ram_obj_anim_id + $01
C - - - - - 0x03274E 0C:A73E: 8D 03 04  STA ram_obj_anim_id + $03
C - - - - - 0x032751 0C:A741: 8D 04 04  STA ram_obj_anim_id + $04
C - - - - - 0x032754 0C:A744: 8D 05 04  STA ram_obj_anim_id + $05
C - - - - - 0x032757 0C:A747: 8D 06 04  STA ram_obj_anim_id + $06
C - - - - - 0x03275A 0C:A74A: A9 02     LDA #$02
C - - - - - 0x03275C 0C:A74C: 8D F3 07  STA ram_07F3
C - - - - - 0x03275F 0C:A74F: AD 69 A7  LDA tbl_A769
C - - - - - 0x032762 0C:A752: 85 00     STA ram_0000_t025_jmp
C - - - - - 0x032764 0C:A754: AD 6A A7  LDA tbl_A769 + $01
C - - - - - 0x032767 0C:A757: 85 01     STA ram_0000_t025_jmp + $01
C - - - - - 0x032769 0C:A759: A9 92     LDA #con_prg_bank + $92
C - - - - - 0x03276B 0C:A75B: 20 2F E6  JSR sub_0x03E63F_indirect_jump_custom_bank
C - - - - - 0x03276E 0C:A75E: A6 6C     LDX ram_006C_object_index
C - - - - - 0x032770 0C:A760: A9 00     LDA #$00
C - - - - - 0x032772 0C:A762: 9D 00 04  STA ram_obj_anim_id,X
C - - - - - 0x032775 0C:A765: 9D 4E 05  STA ram_obj_id,X
C - - - - - 0x032778 0C:A768: 60        RTS



tbl_A769:
; bzk optimize
- D 1 - - - 0x032779 0C:A769: F4 87     .word ofs_0x024804



ofs_005_A76B_1C_RTS:
; bzk optimize
- - - - - - 0x03277B 0C:A76B: 60        RTS



ofs_005_A76C_05:
C - - J - - 0x03277C 0C:A76C: 20 87 A6  JSR sub_A687_clear_objects_data
C - - - - - 0x03277F 0C:A76F: A6 6C     LDX ram_006C_object_index
C - - - - - 0x032781 0C:A771: A9 18     LDA #$18
C - - - - - 0x032783 0C:A773: 9D 06 06  STA ram_obj_config,X
C - - - - - 0x032786 0C:A776: 20 AC A8  JSR sub_A8AC_set_flag_30
C - - - - - 0x032789 0C:A779: FE 65 05  INC ram_obj_state,X
bra_A77C_RTS:
C - - - - - 0x03278C 0C:A77C: 60        RTS



ofs_005_A77D_06:
C - - J - - 0x03278D 0C:A77D: DE 06 06  DEC ram_obj_config,X
C - - - - - 0x032790 0C:A780: D0 FA     BNE bra_A77C_RTS
C - - - - - 0x032792 0C:A782: A9 2F     LDA #con__chr_bank + $2F
C - - - - - 0x032794 0C:A784: 85 49     STA ram_chr_bank_5123
C - - - - - 0x032796 0C:A786: A9 45     LDA #con_sound_45
C - - - - - 0x032798 0C:A788: 20 5F E2  JSR sub_0x03E26F_play_sound
ofs_005_A78B_00:
C - - J - - 0x03279B 0C:A78B: 20 B4 A8  JSR sub_A8B4_set_flag_10
C - - - - - 0x03279E 0C:A78E: A9 20     LDA #$20
C - - - - - 0x0327A0 0C:A790: 9D 06 06  STA ram_obj_config,X
C - - - - - 0x0327A3 0C:A793: FE 65 05  INC ram_obj_state,X
C - - - - - 0x0327A6 0C:A796: A9 00     LDA #con_obj_type_00
C - - - - - 0x0327A8 0C:A798: A0 0E     LDY #$0E
C - - - - - 0x0327AA 0C:A79A: 4C 5C EF  JMP loc_0x03EF6C_prepare_animation



ofs_005_A79D_01:
ofs_005_A79D_03:
ofs_005_A79D_07:
ofs_005_A79D_09:
C - - J - - 0x0327AD 0C:A79D: DE 06 06  DEC ram_obj_config,X
C - - - - - 0x0327B0 0C:A7A0: F0 01     BEQ bra_A7A3
C - - - - - 0x0327B2 0C:A7A2: 60        RTS
bra_A7A3:
C - - - - - 0x0327B3 0C:A7A3: 20 B0 A8  JSR sub_A8B0_set_flag_50
C - - - - - 0x0327B6 0C:A7A6: FE 65 05  INC ram_obj_state,X
C - - - - - 0x0327B9 0C:A7A9: 60        RTS



ofs_005_A7AA_02:
ofs_005_A7AA_08:
C - - J - - 0x0327BA 0C:A7AA: A9 2F     LDA #con__chr_bank + $2F
C - - - - - 0x0327BC 0C:A7AC: 85 49     STA ram_chr_bank_5123
C - - - - - 0x0327BE 0C:A7AE: 20 B4 A8  JSR sub_A8B4_set_flag_10
C - - - - - 0x0327C1 0C:A7B1: A9 10     LDA #$10
C - - - - - 0x0327C3 0C:A7B3: 9D 06 06  STA ram_obj_config,X
C - - - - - 0x0327C6 0C:A7B6: FE 65 05  INC ram_obj_state,X
C - - - - - 0x0327C9 0C:A7B9: A9 00     LDA #con_obj_type_00
C - - - - - 0x0327CB 0C:A7BB: A0 0F     LDY #$0F
C - - - - - 0x0327CD 0C:A7BD: 4C 5C EF  JMP loc_0x03EF6C_prepare_animation



ofs_005_A7C0_04:
ofs_005_A7C0_0A:
C - - J - - 0x0327D0 0C:A7C0: AD 4E 05  LDA ram_plr_id
C - - - - - 0x0327D3 0C:A7C3: 20 DA A7  JSR sub_A7DA
C - - - - - 0x0327D6 0C:A7C6: A5 00     LDA ram_0000_t0CC
C - - - - - 0x0327D8 0C:A7C8: 9D 65 05  STA ram_obj_state,X
C - - - - - 0x0327DB 0C:A7CB: A9 04     LDA #$04
C - - - - - 0x0327DD 0C:A7CD: 9D 06 06  STA ram_obj_config,X
C - - - - - 0x0327E0 0C:A7D0: BC 33 06  LDY ram_obj_0634,X
C - - - - - 0x0327E3 0C:A7D3: B9 30 A8  LDA tbl_A830,Y
C - - - - - 0x0327E6 0C:A7D6: 9D 57 06  STA ram_obj_0658,X
C - - - - - 0x0327E9 0C:A7D9: 60        RTS



sub_A7DA:
C - - - - - 0x0327EA 0C:A7DA: 48        PHA
C - - - - - 0x0327EB 0C:A7DB: BD 33 06  LDA ram_obj_0634,X
C - - - - - 0x0327EE 0C:A7DE: C9 02     CMP #$02
C - - - - - 0x0327F0 0C:A7E0: D0 09     BNE bra_A7EB
C - - - - - 0x0327F2 0C:A7E2: BD 1C 04  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x0327F5 0C:A7E5: 38        SEC
C - - - - - 0x0327F6 0C:A7E6: E9 04     SBC #$04
C - - - - - 0x0327F8 0C:A7E8: 9D 1C 04  STA ram_obj_pos_Y_hi,X
bra_A7EB:
C - - - - - 0x0327FB 0C:A7EB: 68        PLA
C - - - - - 0x0327FC 0C:A7EC: 9D 33 06  STA ram_obj_0634,X
C - - - - - 0x0327FF 0C:A7EF: C9 02     CMP #$02
C - - - - - 0x032801 0C:A7F1: D0 09     BNE bra_A7FC
C - - - - - 0x032803 0C:A7F3: BD 1C 04  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x032806 0C:A7F6: 18        CLC
C - - - - - 0x032807 0C:A7F7: 69 04     ADC #$04
C - - - - - 0x032809 0C:A7F9: 9D 1C 04  STA ram_obj_pos_Y_hi,X
bra_A7FC:
loc_A7FC:
C D 1 - - - 0x03280C 0C:A7FC: BD 33 06  LDA ram_obj_0634,X
C - - - - - 0x03280F 0C:A7FF: 0A        ASL
C - - - - - 0x032810 0C:A800: 18        CLC
C - - - - - 0x032811 0C:A801: 7D 33 06  ADC ram_obj_0634,X
C - - - - - 0x032814 0C:A804: A8        TAY
C - - - - - 0x032815 0C:A805: B9 24 A8  LDA tbl_A824,Y
C - - - - - 0x032818 0C:A808: 9D 8C 04  STA ram_obj_type,X
C - - - - - 0x03281B 0C:A80B: B9 25 A8  LDA tbl_A824 + $01,Y
C - - - - - 0x03281E 0C:A80E: 85 00     STA ram_0000_t0CC
C - - - - - 0x032820 0C:A810: B9 26 A8  LDA tbl_A824 + $02,Y
C - - - - - 0x032823 0C:A813: 85 48     STA ram_chr_bank_5122
C - - - - - 0x032825 0C:A815: A8        TAY
C - - - - - 0x032826 0C:A816: C8        INY
C - - - - - 0x032827 0C:A817: 84 49     STY ram_chr_bank_5123
C - - - - - 0x032829 0C:A819: A9 02     LDA #$02
C - - - - - 0x03282B 0C:A81B: 9D 00 04  STA ram_obj_anim_id,X
C - - - - - 0x03282E 0C:A81E: A9 02     LDA #$02
C - - - - - 0x032830 0C:A820: 9D 54 04  STA ram_0454_obj,X
C - - - - - 0x032833 0C:A823: 60        RTS



tbl_A824:
; 00 
- D 1 - - - 0x032834 0C:A824: 16        .byte con_obj_type_16   ; 
- D 1 - - - 0x032835 0C:A825: 0C        .byte $0C   ; 
- D 1 - - - 0x032836 0C:A826: 00        .byte con__chr_bank + $00   ; also con__chr_bank + $01
; 01 
- D 1 - - - 0x032837 0C:A827: 18        .byte con_obj_type_18   ; 
- D 1 - - - 0x032838 0C:A828: 0C        .byte $0C   ; 
- D 1 - - - 0x032839 0C:A829: 04        .byte con__chr_bank + $04   ; also con__chr_bank + $05
; 02 
- D 1 - - - 0x03283A 0C:A82A: 1A        .byte con_obj_type_1A   ; 
- D 1 - - - 0x03283B 0C:A82B: 0C        .byte $0C   ; 
- D 1 - - - 0x03283C 0C:A82C: 02        .byte con__chr_bank + $02   ; also con__chr_bank + $03
; 03 
- D 1 - - - 0x03283D 0C:A82D: 1C        .byte con_obj_type_1C   ; 
- D 1 - - - 0x03283E 0C:A82E: 0C        .byte $0C   ; 
- D 1 - - - 0x03283F 0C:A82F: 06        .byte con__chr_bank + $06   ; also con__chr_bank + $07



tbl_A830:
; bzk optimize, same bytes
- D 1 - - - 0x032840 0C:A830: 30        .byte $30   ; 00 
- D 1 - - - 0x032841 0C:A831: 30        .byte $30   ; 01 
- D 1 - - - 0x032842 0C:A832: 30        .byte $30   ; 02 
- D 1 - - - 0x032843 0C:A833: 30        .byte $30   ; 03 



sub_A834:
; out
    ; C
        ; 0 = 
        ; 1 = 
    ; Y = 
C - - - - - 0x032844 0C:A834: BD 38 04  LDA ram_obj_pos_X_hi,X
C - - - - - 0x032847 0C:A837: C9 E8     CMP #$E8
C - - - - - 0x032849 0C:A839: B0 0A     BCS bra_A845
C - - - - - 0x03284B 0C:A83B: C9 18     CMP #$18
C - - - - - 0x03284D 0C:A83D: 90 02     BCC bra_A841
C - - - - - 0x03284F 0C:A83F: 18        CLC
C - - - - - 0x032850 0C:A840: 60        RTS
bra_A841:
C - - - - - 0x032851 0C:A841: A0 00     LDY #$00
C - - - - - 0x032853 0C:A843: 38        SEC
C - - - - - 0x032854 0C:A844: 60        RTS
bra_A845:
C - - - - - 0x032855 0C:A845: A0 01     LDY #$01
C - - - - - 0x032857 0C:A847: 38        SEC
C - - - - - 0x032858 0C:A848: 60        RTS



sub_A849:
; out
    ; C
        ; 0 = 
        ; 1 = 
    ; A = 
C - - - - - 0x032859 0C:A849: AD 38 04  LDA ram_plr_pos_X_hi
C - - - - - 0x03285C 0C:A84C: 38        SEC
C - - - - - 0x03285D 0C:A84D: FD 38 04  SBC ram_obj_pos_X_hi,X
C - - - - - 0x032860 0C:A850: B0 03     BCS bra_A855_RTS
C - - - - - 0x032862 0C:A852: 49 FF     EOR #$FF
C - - - - - 0x032864 0C:A854: 18        CLC
bra_A855_RTS:
C - - - - - 0x032865 0C:A855: 60        RTS



sub_A856:
C - - - - - 0x032866 0C:A856: 20 49 A8  JSR sub_A849
C - - - - - 0x032869 0C:A859: 48        PHA
C - - - - - 0x03286A 0C:A85A: B0 04     BCS bra_A860
C - - - - - 0x03286C 0C:A85C: A9 01     LDA #$01    ; facing left
C - - - - - 0x03286E 0C:A85E: D0 02     BNE bra_A862    ; jmp
bra_A860:
C - - - - - 0x032870 0C:A860: A9 00     LDA #$00    ; facing right
bra_A862:
C - - - - - 0x032872 0C:A862: 9D A8 04  STA ram_obj_facing,X
C - - - - - 0x032875 0C:A865: 68        PLA
C - - - - - 0x032876 0C:A866: 60        RTS



sub_A867:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x032877 0C:A867: BD F2 04  LDA ram_obj_spd_X_hi,X
C - - - - - 0x03287A 0C:A86A: 10 04     BPL bra_A870
C - - - - - 0x03287C 0C:A86C: A9 F8     LDA #$F8
C - - - - - 0x03287E 0C:A86E: D0 02     BNE bra_A872    ; jmp
bra_A870:
C - - - - - 0x032880 0C:A870: A9 08     LDA #$08
bra_A872:
C - - - - - 0x032882 0C:A872: 85 07     STA ram_0007_t007_pos_X_hi
C - - - - - 0x032884 0C:A874: A0 F8     LDY #$F8    ; pos_Y_hi
C - - - - - 0x032886 0C:A876: 20 1E FC  JSR sub_0x03FC2E
C - - - - - 0x032889 0C:A879: D0 1F     BNE bra_A89A_SEC
C - - - - - 0x03288B 0C:A87B: A5 07     LDA ram_0007_t007_pos_X_hi
C - - - - - 0x03288D 0C:A87D: A0 00     LDY #$00    ; pos_Y_hi
C - - - - - 0x03288F 0C:A87F: 20 1E FC  JSR sub_0x03FC2E
C - - - - - 0x032892 0C:A882: D0 16     BNE bra_A89A_SEC
C - - - - - 0x032894 0C:A884: 18        CLC
C - - - - - 0x032895 0C:A885: 60        RTS



sub_A886:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x032896 0C:A886: A9 05     LDA #$05    ; pos_X_hi
C - - - - - 0x032898 0C:A888: A0 10     LDY #$10    ; pos_Y_hi
C - - - - - 0x03289A 0C:A88A: 20 1E FC  JSR sub_0x03FC2E
C - - - - - 0x03289D 0C:A88D: D0 0B     BNE bra_A89A_SEC
C - - - - - 0x03289F 0C:A88F: A9 FB     LDA #$FB    ; pos_X_hi
C - - - - - 0x0328A1 0C:A891: A0 10     LDY #$10    ; pos_Y_hi
C - - - - - 0x0328A3 0C:A893: 20 1E FC  JSR sub_0x03FC2E
C - - - - - 0x0328A6 0C:A896: D0 02     BNE bra_A89A_SEC
C - - - - - 0x0328A8 0C:A898: 18        CLC
C - - - - - 0x0328A9 0C:A899: 60        RTS
bra_A89A_SEC:
C - - - - - 0x0328AA 0C:A89A: 38        SEC
C - - - - - 0x0328AB 0C:A89B: 60        RTS



sub_A89C_set_spd_X:
C - - - - - 0x0328AC 0C:A89C: 9D F2 04  STA ram_obj_spd_X_hi,X
C - - - - - 0x0328AF 0C:A89F: 98        TYA
C - - - - - 0x0328B0 0C:A8A0: 9D 09 05  STA ram_obj_spd_X_lo,X
C - - - - - 0x0328B3 0C:A8A3: 60        RTS



sub_A8A4_set_spd_Y:
C - - - - - 0x0328B4 0C:A8A4: 9D 20 05  STA ram_obj_spd_Y_hi,X
C - - - - - 0x0328B7 0C:A8A7: 98        TYA
C - - - - - 0x0328B8 0C:A8A8: 9D 37 05  STA ram_obj_spd_Y_lo,X
C - - - - - 0x0328BB 0C:A8AB: 60        RTS



sub_A8AC_set_flag_30:
C - - - - - 0x0328BC 0C:A8AC: A9 30     LDA #con_obj_flag_10 + con_obj_flag_20
C - - - - - 0x0328BE 0C:A8AE: D0 12     BNE bra_A8C2_set_flag    ; jmp



sub_A8B0_set_flag_50:
C - - - - - 0x0328C0 0C:A8B0: A9 50     LDA #con_obj_flag_10 + con_obj_flag_40
C - - - - - 0x0328C2 0C:A8B2: D0 0E     BNE bra_A8C2_set_flag    ; jmp



sub_A8B4_set_flag_10:
C - - - - - 0x0328C4 0C:A8B4: A9 10     LDA #con_obj_flag_10
C - - - - - 0x0328C6 0C:A8B6: D0 0A     BNE bra_A8C2_set_flag    ; jmp



sub_A8B8_set_flag_60:
C - - - - - 0x0328C8 0C:A8B8: A9 60     LDA #con_obj_flag_20 + con_obj_flag_40
C - - - - - 0x0328CA 0C:A8BA: D0 06     BNE bra_A8C2_set_flag    ; jmp



sub_A8BC_set_flag_40:
C - - - - - 0x0328CC 0C:A8BC: A9 40     LDA #con_obj_flag_40
C - - - - - 0x0328CE 0C:A8BE: D0 02     BNE bra_A8C2_set_flag    ; jmp



sub_A8C0_set_flag_20:
loc_A8C0_set_flag_20:
C D 1 - - - 0x0328D0 0C:A8C0: A9 20     LDA #con_obj_flag_20
bra_A8C2_set_flag:
C - - - - - 0x0328D2 0C:A8C2: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x0328D5 0C:A8C5: 60        RTS



sub_A8C6:
C - - - - - 0x0328D6 0C:A8C6: BD 65 05  LDA ram_obj_state,X
C - - - - - 0x0328D9 0C:A8C9: C9 11     CMP #$11
C - - - - - 0x0328DB 0C:A8CB: F0 04     BEQ bra_A8D1
C - - - - - 0x0328DD 0C:A8CD: C9 12     CMP #$12
C - - - - - 0x0328DF 0C:A8CF: D0 08     BNE bra_A8D9
bra_A8D1:   ; 11 12
- - - - - - 0x0328E1 0C:A8D1: BD 33 06  LDA ram_obj_0634,X
- - - - - - 0x0328E4 0C:A8D4: 18        CLC
- - - - - - 0x0328E5 0C:A8D5: 69 04     ADC #$04
- - - - - - 0x0328E7 0C:A8D7: D0 03     BNE bra_A8DC    ; jmp?
bra_A8D9:
C - - - - - 0x0328E9 0C:A8D9: AD 4E 05  LDA ram_plr_id
bra_A8DC:
C - - - - - 0x0328EC 0C:A8DC: 8D EC 07  STA ram_07EC
C - - - - - 0x0328EF 0C:A8DF: 60        RTS



sub_A8E0:
C - - - - - 0x0328F0 0C:A8E0: BD 33 06  LDA ram_obj_0634,X
; * 08
C - - - - - 0x0328F3 0C:A8E3: 0A        ASL
C - - - - - 0x0328F4 0C:A8E4: 0A        ASL
C - - - - - 0x0328F5 0C:A8E5: 0A        ASL
C - - - - - 0x0328F6 0C:A8E6: 85 00     STA ram_0000_t0C9
C - - - - - 0x0328F8 0C:A8E8: A5 1A     LDA ram_frm_cnt
C - - - - - 0x0328FA 0C:A8EA: 29 07     AND #$07
C - - - - - 0x0328FC 0C:A8EC: 18        CLC
C - - - - - 0x0328FD 0C:A8ED: 65 00     ADC ram_0000_t0C9
C - - - - - 0x0328FF 0C:A8EF: A8        TAY
C - - - - - 0x032900 0C:A8F0: B9 F7 A8  LDA tbl_A8F7,Y
C - - - - - 0x032903 0C:A8F3: 9D 06 06  STA ram_obj_config,X
C - - - - - 0x032906 0C:A8F6: 60        RTS



tbl_A8F7:
; 00 
- D 1 - - - 0x032907 0C:A8F7: 09        .byte $09   ; 00 
- D 1 - - - 0x032908 0C:A8F8: 13        .byte $13   ; 01 
- D 1 - - - 0x032909 0C:A8F9: 03        .byte $03   ; 02 
- D 1 - - - 0x03290A 0C:A8FA: 14        .byte $14   ; 03 
- D 1 - - - 0x03290B 0C:A8FB: 0C        .byte $0C   ; 04 
- D 1 - - - 0x03290C 0C:A8FC: 1F        .byte $1F   ; 05 
- D 1 - - - 0x03290D 0C:A8FD: 11        .byte $11   ; 06 
- D 1 - - - 0x03290E 0C:A8FE: 0F        .byte $0F   ; 07 
; 01 
- D 1 - - - 0x03290F 0C:A8FF: 09        .byte $09   ; 00 
- D 1 - - - 0x032910 0C:A900: 13        .byte $13   ; 01 
- D 1 - - - 0x032911 0C:A901: 03        .byte $03   ; 02 
- D 1 - - - 0x032912 0C:A902: 14        .byte $14   ; 03 
- D 1 - - - 0x032913 0C:A903: 0C        .byte $0C   ; 04 
- D 1 - - - 0x032914 0C:A904: 1F        .byte $1F   ; 05 
- D 1 - - - 0x032915 0C:A905: 11        .byte $11   ; 06 
- D 1 - - - 0x032916 0C:A906: 0F        .byte $0F   ; 07 
; 02 
- D 1 - - - 0x032917 0C:A907: 09        .byte $09   ; 00 
- D 1 - - - 0x032918 0C:A908: 13        .byte $13   ; 01 
- D 1 - - - 0x032919 0C:A909: 03        .byte $03   ; 02 
- D 1 - - - 0x03291A 0C:A90A: 14        .byte $14   ; 03 
- D 1 - - - 0x03291B 0C:A90B: 0C        .byte $0C   ; 04 
- D 1 - - - 0x03291C 0C:A90C: 1F        .byte $1F   ; 05 
- D 1 - - - 0x03291D 0C:A90D: 11        .byte $11   ; 06 
- D 1 - - - 0x03291E 0C:A90E: 0F        .byte $0F   ; 07 
; 03 
- D 1 - - - 0x03291F 0C:A90F: 09        .byte $09   ; 00 
- D 1 - - - 0x032920 0C:A910: 13        .byte $13   ; 01 
- D 1 - - - 0x032921 0C:A911: 03        .byte $03   ; 02 
- D 1 - - - 0x032922 0C:A912: 14        .byte $14   ; 03 
- D 1 - - - 0x032923 0C:A913: 0C        .byte $0C   ; 04 
- D 1 - - - 0x032924 0C:A914: 1F        .byte $1F   ; 05 
- - - - - - 0x032925 0C:A915: 11        .byte $11   ; 06 
- D 1 - - - 0x032926 0C:A916: 0F        .byte $0F   ; 07 



sub_A917:
C - - - - - 0x032927 0C:A917: A9 13     LDA #$13
C - - - - - 0x032929 0C:A919: 9D 65 05  STA ram_obj_state,X
C - - - - - 0x03292C 0C:A91C: BD 33 06  LDA ram_obj_0634,X
C - - - - - 0x03292F 0C:A91F: A8        TAY
C - - - - - 0x032930 0C:A920: A2 05     LDX #$05
C - - - - - 0x032932 0C:A922: B9 3B A9  LDA tbl_A93B,Y
C - - - - - 0x032935 0C:A925: 9D 45 06  STA ram_obj_0646,X
C - - - - - 0x032938 0C:A928: A9 0F     LDA #$0F
C - - - - - 0x03293A 0C:A92A: 9D 4E 05  STA ram_obj_id,X
C - - - - - 0x03293D 0C:A92D: A9 00     LDA #$00
C - - - - - 0x03293F 0C:A92F: 9D 65 05  STA ram_obj_state,X
C - - - - - 0x032942 0C:A932: 9D 57 06  STA ram_obj_0658,X
C - - - - - 0x032945 0C:A935: 20 C0 A8  JSR sub_A8C0_set_flag_20
C - - - - - 0x032948 0C:A938: A6 6C     LDX ram_006C_object_index
C - - - - - 0x03294A 0C:A93A: 60        RTS



tbl_A93B:
- D 1 - - - 0x03294B 0C:A93B: 00        .byte $00   ; 00 
- D 1 - - - 0x03294C 0C:A93C: 01        .byte $01   ; 01 



sub_A93D:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x03294D 0C:A93D: A2 02     LDX #$02
bra_A93F_loop:
C - - - - - 0x03294F 0C:A93F: BD 4E 05  LDA ram_obj_id,X
C - - - - - 0x032952 0C:A942: D0 09     BNE bra_A94D
C - - - - - 0x032954 0C:A944: E8        INX
C - - - - - 0x032955 0C:A945: E0 05     CPX #$05
C - - - - - 0x032957 0C:A947: 90 F6     BCC bra_A93F_loop
C - - - - - 0x032959 0C:A949: A6 6C     LDX ram_006C_object_index
C - - - - - 0x03295B 0C:A94B: 18        CLC
C - - - - - 0x03295C 0C:A94C: 60        RTS
bra_A94D:
C - - - - - 0x03295D 0C:A94D: A6 6C     LDX ram_006C_object_index
C - - - - - 0x03295F 0C:A94F: 38        SEC
C - - - - - 0x032960 0C:A950: 60        RTS



sub_A951:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x032961 0C:A951: 20 49 A8  JSR sub_A849
C - - - - - 0x032964 0C:A954: C9 30     CMP #$30
C - - - - - 0x032966 0C:A956: B0 15     BCS bra_A96D
C - - - - - 0x032968 0C:A958: BD 33 06  LDA ram_obj_0634,X
C - - - - - 0x03296B 0C:A95B: C9 02     CMP #$02
C - - - - - 0x03296D 0C:A95D: B0 0E     BCS bra_A96D
C - - - - - 0x03296F 0C:A95F: 20 3D A9  JSR sub_A93D
C - - - - - 0x032972 0C:A962: B0 07     BCS bra_A96B
C - - - - - 0x032974 0C:A964: 20 17 A9  JSR sub_A917
C - - - - - 0x032977 0C:A967: A0 00     LDY #$00
C - - - - - 0x032979 0C:A969: 38        SEC
C - - - - - 0x03297A 0C:A96A: 60        RTS
bra_A96B:
C - - - - - 0x03297B 0C:A96B: 18        CLC
C - - - - - 0x03297C 0C:A96C: 60        RTS
bra_A96D:
C - - - - - 0x03297D 0C:A96D: 20 B2 A4  JSR sub_A4B2
C - - - - - 0x032980 0C:A970: 90 F9     BCC bra_A96B
C - - - - - 0x032982 0C:A972: A0 01     LDY #$01
C - - - - - 0x032984 0C:A974: 38        SEC
C - - - - - 0x032985 0C:A975: 60        RTS



sub_A976:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x032986 0C:A976: BD 33 06  LDA ram_obj_0634,X
C - - - - - 0x032989 0C:A979: 9D 4E 05  STA ram_obj_id,X
C - - - - - 0x03298C 0C:A97C: BD 65 05  LDA ram_obj_state,X
C - - - - - 0x03298F 0C:A97F: 48        PHA
C - - - - - 0x032990 0C:A980: A9 18     LDA #$18
C - - - - - 0x032992 0C:A982: 9D 65 05  STA ram_obj_state,X
C - - - - - 0x032995 0C:A985: A2 05     LDX #$05
C - - - - - 0x032997 0C:A987: BD 33 06  LDA ram_obj_0634,X
C - - - - - 0x03299A 0C:A98A: 9D 4E 05  STA ram_obj_id,X
C - - - - - 0x03299D 0C:A98D: A9 07     LDA #con_A452_07
C - - - - - 0x03299F 0C:A98F: 20 4C A4  JSR sub_A44C
C - - - - - 0x0329A2 0C:A992: B0 04     BCS bra_A998
C - - - - - 0x0329A4 0C:A994: A9 00     LDA #$00
C - - - - - 0x0329A6 0C:A996: F0 02     BEQ bra_A99A    ; jmp
bra_A998:
C - - - - - 0x0329A8 0C:A998: A9 01     LDA #$01
bra_A99A:
C - - - - - 0x0329AA 0C:A99A: 85 01     STA ram_0001_t008_flag
C - - - - - 0x0329AC 0C:A99C: BD 4E 05  LDA ram_obj_id,X
C - - - - - 0x0329AF 0C:A99F: 9D 33 06  STA ram_obj_0634,X
C - - - - - 0x0329B2 0C:A9A2: A9 0F     LDA #$0F
C - - - - - 0x0329B4 0C:A9A4: 9D 4E 05  STA ram_obj_id,X
C - - - - - 0x0329B7 0C:A9A7: BD 1D 06  LDA ram_061D_obj,X
C - - - - - 0x0329BA 0C:A9AA: F0 1A     BEQ bra_A9C6
C - - - - - 0x0329BC 0C:A9AC: BC 33 06  LDY ram_obj_0634,X
C - - - - - 0x0329BF 0C:A9AF: B9 D4 A9  LDA tbl_A9D4,Y
C - - - - - 0x0329C2 0C:A9B2: 9D 57 06  STA ram_obj_0658,X
C - - - - - 0x0329C5 0C:A9B5: A9 40     LDA #$40
C - - - - - 0x0329C7 0C:A9B7: 85 BA     STA ram_00BA
C - - - - - 0x0329C9 0C:A9B9: BC 33 06  LDY ram_obj_0634,X
C - - - - - 0x0329CC 0C:A9BC: B9 D8 A9  LDA tbl_A9D8,Y
C - - - - - 0x0329CF 0C:A9BF: 85 BC     STA ram_00BC
C - - - - - 0x0329D1 0C:A9C1: B9 DC A9  LDA tbl_A9DC,Y
C - - - - - 0x0329D4 0C:A9C4: 85 BB     STA ram_00BB
bra_A9C6:
C - - - - - 0x0329D6 0C:A9C6: A6 6C     LDX ram_006C_object_index
C - - - - - 0x0329D8 0C:A9C8: 68        PLA
C - - - - - 0x0329D9 0C:A9C9: 9D 65 05  STA ram_obj_state,X
C - - - - - 0x0329DC 0C:A9CC: A9 0B     LDA #$0B
C - - - - - 0x0329DE 0C:A9CE: 9D 4E 05  STA ram_obj_id,X
C - - - - - 0x0329E1 0C:A9D1: 46 01     LSR ram_0001_t008_flag
C - - - - - 0x0329E3 0C:A9D3: 60        RTS



tbl_A9D4:
- - - - - - 0x0329E4 0C:A9D4: 20        .byte $20   ; 00 
- - - - - - 0x0329E5 0C:A9D5: 30        .byte $30   ; 01 
- D 1 - - - 0x0329E6 0C:A9D6: 30        .byte $30   ; 02 
- D 1 - - - 0x0329E7 0C:A9D7: 20        .byte $20   ; 03 



tbl_A9D8:
- - - - - - 0x0329E8 0C:A9D8: 00        .byte $00   ; 00 
- - - - - - 0x0329E9 0C:A9D9: 01        .byte $01   ; 01 
- D 1 - - - 0x0329EA 0C:A9DA: 02        .byte $02   ; 02 
- D 1 - - - 0x0329EB 0C:A9DB: 00        .byte $00   ; 03 



tbl_A9DC:
- - - - - - 0x0329EC 0C:A9DC: 01        .byte $01   ; 00 
- - - - - - 0x0329ED 0C:A9DD: 02        .byte $02   ; 01 
- D 1 - - - 0x0329EE 0C:A9DE: 03        .byte $03   ; 02 
- D 1 - - - 0x0329EF 0C:A9DF: 04        .byte $04   ; 03 



sub_A9E0_CLC:
; bzk optimize
C - - - - - 0x0329F0 0C:A9E0: 18        CLC
C - - - - - 0x0329F1 0C:A9E1: 60        RTS



ofs_005_A9E2_0B:
ofs_005_A9E2_16:
ofs_005_A9E2_17:
ofs_005_A9E2_18:
C - - J - - 0x0329F2 0C:A9E2: 20 C6 A8  JSR sub_A8C6
C - - - - - 0x0329F5 0C:A9E5: 20 56 A8  JSR sub_A856
C - - - - - 0x0329F8 0C:A9E8: 20 E0 A8  JSR sub_A8E0
C - - - - - 0x0329FB 0C:A9EB: A9 0C     LDA #$0C
C - - - - - 0x0329FD 0C:A9ED: 9D 65 05  STA ram_obj_state,X
C - - - - - 0x032A00 0C:A9F0: 60        RTS



ofs_005_A9F1_0C:
C - - J - - 0x032A01 0C:A9F1: 20 C6 A8  JSR sub_A8C6
C - - - - - 0x032A04 0C:A9F4: 20 56 A8  JSR sub_A856
C - - - - - 0x032A07 0C:A9F7: 20 C0 A8  JSR sub_A8C0_set_flag_20
C - - - - - 0x032A0A 0C:A9FA: 20 86 A8  JSR sub_A886
C - - - - - 0x032A0D 0C:A9FD: B0 0E     BCS bra_AA0D
C - - - - - 0x032A0F 0C:A9FF: 20 B8 A8  JSR sub_A8B8_set_flag_60
C - - - - - 0x032A12 0C:AA02: A9 02     LDA #con_A452_02
C - - - - - 0x032A14 0C:AA04: 20 4C A4  JSR sub_A44C
C - - - - - 0x032A17 0C:AA07: A9 0F     LDA #$0F
C - - - - - 0x032A19 0C:AA09: 9D 65 05  STA ram_obj_state,X
C - - - - - 0x032A1C 0C:AA0C: 60        RTS
bra_AA0D:
C - - - - - 0x032A1D 0C:AA0D: A9 02     LDA #$02
C - - - - - 0x032A1F 0C:AA0F: 9D 00 04  STA ram_obj_anim_id,X
C - - - - - 0x032A22 0C:AA12: BD 06 06  LDA ram_obj_config,X
C - - - - - 0x032A25 0C:AA15: F0 05     BEQ bra_AA1C
C - - - - - 0x032A27 0C:AA17: DE 06 06  DEC ram_obj_config,X
C - - - - - 0x032A2A 0C:AA1A: D0 44     BNE bra_AA60_RTS
bra_AA1C:
C - - - - - 0x032A2C 0C:AA1C: 20 E0 A8  JSR sub_A8E0
C - - - - - 0x032A2F 0C:AA1F: 20 E0 A9  JSR sub_A9E0_CLC
C - - - - - 0x032A32 0C:AA22: B0 0B     BCS bra_AA2F
C - - - - - 0x032A34 0C:AA24: AD EF 07  LDA ram_07EF
C - - - - - 0x032A37 0C:AA27: D0 38     BNE bra_AA61
C - - - - - 0x032A39 0C:AA29: A5 1A     LDA ram_frm_cnt
C - - - - - 0x032A3B 0C:AA2B: 29 01     AND #$01
C - - - - - 0x032A3D 0C:AA2D: D0 32     BNE bra_AA61
bra_AA2F:
C - - - - - 0x032A3F 0C:AA2F: BC 33 06  LDY ram_obj_0634,X
C - - - - - 0x032A42 0C:AA32: A9 00     LDA #$00
C - - - - - 0x032A44 0C:AA34: 20 60 EF  JSR sub_0x03EF70
C - - - - - 0x032A47 0C:AA37: 20 BC A8  JSR sub_A8BC_set_flag_40
C - - - - - 0x032A4A 0C:AA3A: 20 34 A8  JSR sub_A834
C - - - - - 0x032A4D 0C:AA3D: 90 0C     BCC bra_AA4B
C - - - - - 0x032A4F 0C:AA3F: 84 00     STY ram_0000_t0CA
C - - - - - 0x032A51 0C:AA41: 5D A8 04  EOR ram_obj_facing,X
C - - - - - 0x032A54 0C:AA44: F0 05     BEQ bra_AA4B
C - - - - - 0x032A56 0C:AA46: A5 00     LDA ram_0000_t0CA
C - - - - - 0x032A58 0C:AA48: 9D A8 04  STA ram_obj_facing,X
bra_AA4B:
C - - - - - 0x032A5B 0C:AA4B: BD A8 04  LDA ram_obj_facing,X
C - - - - - 0x032A5E 0C:AA4E: F0 04     BEQ bra_AA54_facing_right
C - - - - - 0x032A60 0C:AA50: A9 FF     LDA #$FF    ; > FF00
C - - - - - 0x032A62 0C:AA52: D0 02     BNE bra_AA56    ; jmp
bra_AA54_facing_right:
C - - - - - 0x032A64 0C:AA54: A9 01     LDA #$01    ; > 0100
bra_AA56:
C - - - - - 0x032A66 0C:AA56: A0 00     LDY #$00
C - - - - - 0x032A68 0C:AA58: 20 9C A8  JSR sub_A89C_set_spd_X
C - - - - - 0x032A6B 0C:AA5B: A9 0D     LDA #$0D
C - - - - - 0x032A6D 0C:AA5D: 9D 65 05  STA ram_obj_state,X
bra_AA60_RTS:
C - - - - - 0x032A70 0C:AA60: 60        RTS
bra_AA61:
C - - - - - 0x032A71 0C:AA61: A9 00     LDA #$00
C - - - - - 0x032A73 0C:AA63: 8D EF 07  STA ram_07EF
C - - - - - 0x032A76 0C:AA66: 20 51 A9  JSR sub_A951
C - - - - - 0x032A79 0C:AA69: 90 C4     BCC bra_AA2F
C - - - - - 0x032A7B 0C:AA6B: 88        DEY
C - - - - - 0x032A7C 0C:AA6C: F0 01     BEQ bra_AA6F
C - - - - - 0x032A7E 0C:AA6E: 60        RTS
bra_AA6F:
C - - - - - 0x032A7F 0C:AA6F: A9 10     LDA #$10
C - - - - - 0x032A81 0C:AA71: 9D 65 05  STA ram_obj_state,X
C - - - - - 0x032A84 0C:AA74: 20 C0 A8  JSR sub_A8C0_set_flag_20
C - - - - - 0x032A87 0C:AA77: 60        RTS



ofs_005_AA78_0D:
C - - J - - 0x032A88 0C:AA78: 20 C6 A8  JSR sub_A8C6
C - - - - - 0x032A8B 0C:AA7B: 20 86 A8  JSR sub_A886
C - - - - - 0x032A8E 0C:AA7E: B0 2D     BCS bra_AAAD
C - - - - - 0x032A90 0C:AA80: AD 1C 04  LDA ram_plr_pos_Y_hi
C - - - - - 0x032A93 0C:AA83: DD 1C 04  CMP ram_obj_pos_Y_hi,X
C - - - - - 0x032A96 0C:AA86: B0 03     BCS bra_AA8B
C - - - - - 0x032A98 0C:AA88: 4C E7 AA  JMP loc_AAE7
bra_AA8B:
C - - - - - 0x032A9B 0C:AA8B: A9 02     LDA #con_A452_02
C - - - - - 0x032A9D 0C:AA8D: 20 4C A4  JSR sub_A44C
C - - - - - 0x032AA0 0C:AA90: A9 0F     LDA #$0F
C - - - - - 0x032AA2 0C:AA92: 9D 65 05  STA ram_obj_state,X
C - - - - - 0x032AA5 0C:AA95: 60        RTS
bra_AA96:
C - - - - - 0x032AA6 0C:AA96: 88        DEY
C - - - - - 0x032AA7 0C:AA97: F0 04     BEQ bra_AA9D
C - - - - - 0x032AA9 0C:AA99: A9 18     LDA #$18
C - - - - - 0x032AAB 0C:AA9B: D0 02     BNE bra_AA9F    ; jmp
bra_AA9D:
C - - - - - 0x032AAD 0C:AA9D: A9 E8     LDA #$E8
bra_AA9F:
C - - - - - 0x032AAF 0C:AA9F: 9D 38 04  STA ram_obj_pos_X_hi,X
C - - - - - 0x032AB2 0C:AAA2: A9 10     LDA #$10
C - - - - - 0x032AB4 0C:AAA4: 9D 06 06  STA ram_obj_config,X
C - - - - - 0x032AB7 0C:AAA7: A9 0C     LDA #$0C
C - - - - - 0x032AB9 0C:AAA9: 9D 65 05  STA ram_obj_state,X
C - - - - - 0x032ABC 0C:AAAC: 60        RTS
bra_AAAD:
C - - - - - 0x032ABD 0C:AAAD: 20 34 A8  JSR sub_A834
C - - - - - 0x032AC0 0C:AAB0: B0 E4     BCS bra_AA96
C - - - - - 0x032AC2 0C:AAB2: 20 67 A8  JSR sub_A867
C - - - - - 0x032AC5 0C:AAB5: B0 30     BCS bra_AAE7
C - - - - - 0x032AC7 0C:AAB7: DE 06 06  DEC ram_obj_config,X
C - - - - - 0x032ACA 0C:AABA: D0 2A     BNE bra_AAE6_RTS
C - - - - - 0x032ACC 0C:AABC: 20 E0 A9  JSR sub_A9E0_CLC
C - - - - - 0x032ACF 0C:AABF: B0 20     BCS bra_AAE1
C - - - - - 0x032AD1 0C:AAC1: A5 1A     LDA ram_frm_cnt
C - - - - - 0x032AD3 0C:AAC3: 29 07     AND #$07
C - - - - - 0x032AD5 0C:AAC5: A8        TAY
C - - - - - 0x032AD6 0C:AAC6: B9 FC AA  LDA tbl_AAFC,Y
C - - - - - 0x032AD9 0C:AAC9: 9D 65 05  STA ram_obj_state,X
C - - - - - 0x032ADC 0C:AACC: C9 10     CMP #$10
C - - - - - 0x032ADE 0C:AACE: F0 21     BEQ bra_AAF1
C - - - - - 0x032AE0 0C:AAD0: C9 0C     CMP #$0C
C - - - - - 0x032AE2 0C:AAD2: F0 12     BEQ bra_AAE6_RTS
C - - - - - 0x032AE4 0C:AAD4: 20 56 A8  JSR sub_A856
C - - - - - 0x032AE7 0C:AAD7: C9 40     CMP #$40
C - - - - - 0x032AE9 0C:AAD9: B0 0C     BCS bra_AAE7
C - - - - - 0x032AEB 0C:AADB: A9 00     LDA #$00
C - - - - - 0x032AED 0C:AADD: 8D ED 07  STA ram_07ED
C - - - - - 0x032AF0 0C:AAE0: 60        RTS
bra_AAE1:
C - - - - - 0x032AF1 0C:AAE1: A9 0E     LDA #$0E
C - - - - - 0x032AF3 0C:AAE3: 9D 65 05  STA ram_obj_state,X
bra_AAE6_RTS:
C - - - - - 0x032AF6 0C:AAE6: 60        RTS
bra_AAE7:
loc_AAE7:
C D 1 - - - 0x032AF7 0C:AAE7: BD A8 04  LDA ram_obj_facing,X
C - - - - - 0x032AFA 0C:AAEA: A8        TAY
C - - - - - 0x032AFB 0C:AAEB: C8        INY
C - - - - - 0x032AFC 0C:AAEC: 8C ED 07  STY ram_07ED
C - - - - - 0x032AFF 0C:AAEF: D0 F0     BNE bra_AAE1    ; jmp?
bra_AAF1:
C - - - - - 0x032B01 0C:AAF1: 20 51 A9  JSR sub_A951
C - - - - - 0x032B04 0C:AAF4: 90 F1     BCC bra_AAE7
C - - - - - 0x032B06 0C:AAF6: 88        DEY
C - - - - - 0x032B07 0C:AAF7: D0 ED     BNE bra_AAE6_RTS
C - - - - - 0x032B09 0C:AAF9: 4C C0 A8  JMP loc_A8C0_set_flag_20



tbl_AAFC:
- D 1 - - - 0x032B0C 0C:AAFC: 0C        .byte $0C   ; 00 
- D 1 - - - 0x032B0D 0C:AAFD: 10        .byte $10   ; 01 
- - - - - - 0x032B0E 0C:AAFE: 0E        .byte $0E   ; 02 
- - - - - - 0x032B0F 0C:AAFF: 10        .byte $10   ; 03 
- D 1 - - - 0x032B10 0C:AB00: 0C        .byte $0C   ; 04 
- D 1 - - - 0x032B11 0C:AB01: 10        .byte $10   ; 05 
- D 1 - - - 0x032B12 0C:AB02: 0E        .byte $0E   ; 06 
- D 1 - - - 0x032B13 0C:AB03: 0C        .byte $0C   ; 07 



ofs_005_AB04_0E:
C - - J - - 0x032B14 0C:AB04: 20 C6 A8  JSR sub_A8C6
C - - - - - 0x032B17 0C:AB07: 20 B8 A8  JSR sub_A8B8_set_flag_60
C - - - - - 0x032B1A 0C:AB0A: AC ED 07  LDY ram_07ED
C - - - - - 0x032B1D 0C:AB0D: B9 1B AB  LDA tbl_AB1B_buttons,Y
C - - - - - 0x032B20 0C:AB10: 85 10     STA ram_0010_t00E_buttons
C - - - - - 0x032B22 0C:AB12: A9 00     LDA #con_A452_00
C - - - - - 0x032B24 0C:AB14: 20 4C A4  JSR sub_A44C
C - - - - - 0x032B27 0C:AB17: FE 65 05  INC ram_obj_state,X
C - - - - - 0x032B2A 0C:AB1A: 60        RTS



tbl_AB1B_buttons:
- D 1 - - - 0x032B2B 0C:AB1B: 00        .byte $00   ; 00 
- D 1 - - - 0x032B2C 0C:AB1C: 01        .byte con_btn_Right   ; 01 
- D 1 - - - 0x032B2D 0C:AB1D: 02        .byte con_btn_Left   ; 02 
; bzk garbage?
- - - - - - 0x032B2E 0C:AB1E: 04        .byte con_btn_Down   ; 03 
- - - - - - 0x032B2F 0C:AB1F: 08        .byte con_btn_Up   ; 04 
- - - - - - 0x032B30 0C:AB20: 40        .byte con_btn_B   ; 05 
- - - - - - 0x032B31 0C:AB21: 80        .byte con_btn_A   ; 06 



ofs_005_AB22_0F:
ofs_005_AB22_11:
C - - J - - 0x032B32 0C:AB22: 20 C6 A8  JSR sub_A8C6
C - - - - - 0x032B35 0C:AB25: 20 34 A8  JSR sub_A834
C - - - - - 0x032B38 0C:AB28: 90 0C     BCC bra_AB36
C - - - - - 0x032B3A 0C:AB2A: 88        DEY
C - - - - - 0x032B3B 0C:AB2B: F0 04     BEQ bra_AB31
C - - - - - 0x032B3D 0C:AB2D: A9 18     LDA #$18
C - - - - - 0x032B3F 0C:AB2F: D0 02     BNE bra_AB33    ; jmp
bra_AB31:
- - - - - - 0x032B41 0C:AB31: A9 E8     LDA #$E8
bra_AB33:
C - - - - - 0x032B43 0C:AB33: 9D 38 04  STA ram_obj_pos_X_hi,X
bra_AB36:
C - - - - - 0x032B46 0C:AB36: A9 01     LDA #con_A452_01
C - - - - - 0x032B48 0C:AB38: 20 4C A4  JSR sub_A44C
C - - - - - 0x032B4B 0C:AB3B: BD C1 05  LDA ram_05C1_obj,X
C - - - - - 0x032B4E 0C:AB3E: F0 17     BEQ bra_AB57_RTS
C - - - - - 0x032B50 0C:AB40: BD 1C 04  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x032B53 0C:AB43: C9 B4     CMP #$B4
C - - - - - 0x032B55 0C:AB45: 90 07     BCC bra_AB4E
C - - - - - 0x032B57 0C:AB47: A9 B4     LDA #$B4
C - - - - - 0x032B59 0C:AB49: 9D 1C 04  STA ram_obj_pos_Y_hi,X
C - - - - - 0x032B5C 0C:AB4C: D0 0A     BNE bra_AB58    ; jmp
bra_AB4E:
C - - - - - 0x032B5E 0C:AB4E: A9 00     LDA #$00    ; pos_X_hi
C - - - - - 0x032B60 0C:AB50: A0 10     LDY #$10    ; pos_Y_hi
C - - - - - 0x032B62 0C:AB52: 20 1E FC  JSR sub_0x03FC2E
C - - - - - 0x032B65 0C:AB55: D0 01     BNE bra_AB58
bra_AB57_RTS:
C - - - - - 0x032B67 0C:AB57: 60        RTS
bra_AB58:
C - - - - - 0x032B68 0C:AB58: A9 00     LDA #$00
C - - - - - 0x032B6A 0C:AB5A: A8        TAY ; 00
C - - - - - 0x032B6B 0C:AB5B: 20 A4 A8  JSR sub_A8A4_set_spd_Y
C - - - - - 0x032B6E 0C:AB5E: 20 9C A8  JSR sub_A89C_set_spd_X
C - - - - - 0x032B71 0C:AB61: BD 1C 04  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x032B74 0C:AB64: 29 F0     AND #$F0
C - - - - - 0x032B76 0C:AB66: 9D 1C 04  STA ram_obj_pos_Y_hi,X
C - - - - - 0x032B79 0C:AB69: BD 33 06  LDA ram_obj_0634,X
C - - - - - 0x032B7C 0C:AB6C: C9 02     CMP #$02
C - - - - - 0x032B7E 0C:AB6E: D0 09     BNE bra_AB79
C - - - - - 0x032B80 0C:AB70: BD 1C 04  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x032B83 0C:AB73: 18        CLC
C - - - - - 0x032B84 0C:AB74: 69 04     ADC #$04
C - - - - - 0x032B86 0C:AB76: 9D 1C 04  STA ram_obj_pos_Y_hi,X
bra_AB79:
C - - - - - 0x032B89 0C:AB79: A9 0B     LDA #$0B
C - - - - - 0x032B8B 0C:AB7B: 9D 65 05  STA ram_obj_state,X
C - - - - - 0x032B8E 0C:AB7E: 60        RTS



ofs_005_AB7F_10:
C - - J - - 0x032B8F 0C:AB7F: 20 C6 A8  JSR sub_A8C6
C - - - - - 0x032B92 0C:AB82: 20 74 A5  JSR sub_A574
C - - - - - 0x032B95 0C:AB85: B0 01     BCS bra_AB88
C - - - - - 0x032B97 0C:AB87: 60        RTS
bra_AB88:
C - - - - - 0x032B98 0C:AB88: A9 0C     LDA #$0C
C - - - - - 0x032B9A 0C:AB8A: 9D 65 05  STA ram_obj_state,X
C - - - - - 0x032B9D 0C:AB8D: A9 02     LDA #$02
C - - - - - 0x032B9F 0C:AB8F: 9D 00 04  STA ram_obj_anim_id,X
C - - - - - 0x032BA2 0C:AB92: 60        RTS



ofs_005_AB93_12_RTS:
; bzk optimize
- - - - - - 0x032BA3 0C:AB93: 60        RTS



ofs_005_AB94_13:
C - - J - - 0x032BA4 0C:AB94: 20 C0 A8  JSR sub_A8C0_set_flag_20
C - - - - - 0x032BA7 0C:AB97: 20 76 A9  JSR sub_A976
C - - - - - 0x032BAA 0C:AB9A: B0 01     BCS bra_AB9D
C - - - - - 0x032BAC 0C:AB9C: 60        RTS
bra_AB9D:
C - - - - - 0x032BAD 0C:AB9D: A9 0B     LDA #$0B
C - - - - - 0x032BAF 0C:AB9F: 9D 65 05  STA ram_obj_state,X
C - - - - - 0x032BB2 0C:ABA2: A9 02     LDA #$02
C - - - - - 0x032BB4 0C:ABA4: 9D 00 04  STA ram_obj_anim_id,X
C - - - - - 0x032BB7 0C:ABA7: 60        RTS



ofs_005_ABA8_14:
ofs_005_ABA8_15:
_off005_0x032BB8_0C:
- D 1 - I - 0x032BB8 0C:ABA8: 00 20     .word $2000 ; ppu address

- D 1 - I - 0x032BBA 0C:ABAA: 7E        .byte $7E   ; write 7E times tile 00
- D 1 - I - 0x032BBB 0C:ABAB: 00        .byte $00   ; 

- D 1 - I - 0x032BBC 0C:ABAC: 05        .byte $05   ; 
- D 1 - I - 0x032BBD 0C:ABAD: 00        .byte $00   ; 

- D 1 - I - 0x032BBE 0C:ABAE: 99        .byte $19 + $80   ; write these tiles 19 length
- D 1 - I - 0x032BBF 0C:ABAF: F0        .byte $F0, $01, $02, $03, $04, $05, $06, $07, $08, $46, $0A, $0B, $0C, $0D, $0E, $0F   ; 
- D 1 - I - 0x032BCF 0C:ABBF: 09        .byte $09, $0A, $29, $05, $06, $06, $19, $07, $1A   ; 

- D 1 - I - 0x032BD8 0C:ABC8: 07        .byte $07   ; 
- D 1 - I - 0x032BD9 0C:ABC9: 00        .byte $00   ; 

- D 1 - I - 0x032BDA 0C:ABCA: 99        .byte $19 + $80   ; 
- D 1 - I - 0x032BDB 0C:ABCB: 10        .byte $10, $11, $12, $13, $14, $15, $16, $17, $18, $AC, $CB, $1B, $1C, $1D, $1E, $1F   ; 
- D 1 - I - 0x032BEB 0C:ABDB: 9B        .byte $9B, $CC, $CC, $9B, $9B, $CB, $CB, $8B, $2A   ; 

- D 1 - I - 0x032BF4 0C:ABE4: 07        .byte $07   ; 
- D 1 - I - 0x032BF5 0C:ABE5: 00        .byte $00   ; 

- D 1 - I - 0x032BF6 0C:ABE6: 93        .byte $13 + $80   ; 
- D 1 - I - 0x032BF7 0C:ABE7: 20        .byte $20, $21, $22, $23, $24, $25, $26, $27, $28, $9B, $9B, $2B, $2C, $2D, $2E, $2F   ; 
- D 1 - I - 0x032C07 0C:ABF7: 9B        .byte $9B, $9B, $AC   ; 

- D 1 - I - 0x032C0A 0C:ABFA: 04        .byte $04   ; 
- D 1 - I - 0x032C0B 0C:ABFB: CB        .byte $CB   ; 

- D 1 - I - 0x032C0C 0C:ABFC: 82        .byte $02 + $80   ; 
- D 1 - I - 0x032C0D 0C:ABFD: 7B        .byte $7B, $CF   ; 

- D 1 - I - 0x032C0F 0C:ABFF: 07        .byte $07   ; 
- D 1 - I - 0x032C10 0C:AC00: 00        .byte $00   ; 

- D 1 - I - 0x032C11 0C:AC01: 92        .byte $12 + $80   ; 
- D 1 - I - 0x032C12 0C:AC02: 30        .byte $30, $31, $32, $33, $34, $35, $36, $37, $AC, $9B, $9B, $3B, $3C, $3D, $3E, $3F   ; 
- D 1 - I - 0x032C22 0C:AC12: 9B        .byte $9B, $CC   ; 

- D 1 - I - 0x032C24 0C:AC14: 03        .byte $03   ; 
- D 1 - I - 0x032C25 0C:AC15: 9B        .byte $9B   ; 

- D 1 - I - 0x032C26 0C:AC16: 84        .byte $04 + $80   ; 
- D 1 - I - 0x032C27 0C:AC17: CC        .byte $CC, $9B, $8B, $8C   ; 

- D 1 - I - 0x032C2B 0C:AC1B: 07        .byte $07   ; 
- D 1 - I - 0x032C2C 0C:AC1C: 00        .byte $00   ; 

- D 1 - I - 0x032C2D 0C:AC1D: 91        .byte $11 + $80   ; 
- D 1 - I - 0x032C2E 0C:AC1E: 40        .byte $40, $41, $42, $43, $44, $45, $46, $47, $48, $49, $4A, $4B, $4C, $4D, $4E, $4F   ; 
- D 1 - I - 0x032C3E 0C:AC2E: AC        .byte $AC   ; 

- D 1 - I - 0x032C3F 0C:AC2F: 03        .byte $03   ; 
- D 1 - I - 0x032C40 0C:AC30: CB        .byte $CB   ; 

- D 1 - I - 0x032C41 0C:AC31: 85        .byte $05 + $80   ; 
- D 1 - I - 0x032C42 0C:AC32: AC        .byte $AC, $CB, $9B, $8B, $9C   ; 

- D 1 - I - 0x032C47 0C:AC37: 07        .byte $07   ; 
- D 1 - I - 0x032C48 0C:AC38: 00        .byte $00   ; 

- D 1 - I - 0x032C49 0C:AC39: 99        .byte $19 + $80   ; 
- D 1 - I - 0x032C4A 0C:AC3A: 50        .byte $50, $51, $52, $53, $54, $28, $D1, $57, $58, $59, $5A, $5B, $5C, $5D, $5E, $5F   ; 
- D 1 - I - 0x032C5A 0C:AC4A: 85        .byte $85, $86, $CC, $88, $89, $9B, $CB, $CC, $DF   ; 

- D 1 - I - 0x032C63 0C:AC53: 07        .byte $07   ; 
- D 1 - I - 0x032C64 0C:AC54: 00        .byte $00   ; 

- D 1 - I - 0x032C65 0C:AC55: 9A        .byte $1A + $80   ; 
- D 1 - I - 0x032C66 0C:AC56: 60        .byte $60, $51, $62, $63, $64, $65, $66, $67, $68, $69, $6A, $6B, $6C, $6D, $6E, $6F   ; 
- D 1 - I - 0x032C76 0C:AC66: 95        .byte $95, $96, $97, $98, $99, $CB, $9B, $8B, $00, $9D   ; 

- D 1 - I - 0x032C80 0C:AC70: 06        .byte $06   ; 
- D 1 - I - 0x032C81 0C:AC71: 00        .byte $00   ; 

- D 1 - I - 0x032C82 0C:AC72: 99        .byte $19 + $80   ; 
- D 1 - I - 0x032C83 0C:AC73: 70        .byte $70, $51, $60, $73, $5A, $74, $5A, $77, $78, $79, $7A, $B1, $7C, $7D, $7E, $7F   ; 
- D 1 - I - 0x032C93 0C:AC83: A5        .byte $A5, $A6, $A7, $A8, $B9, $CB, $9B, $7B, $AD   ; 

- D 1 - I - 0x032C9C 0C:AC8C: 07        .byte $07   ; 
- D 1 - I - 0x032C9D 0C:AC8D: 00        .byte $00   ; 

- D 1 - I - 0x032C9E 0C:AC8E: 99        .byte $19 + $80   ; 
- D 1 - I - 0x032C9F 0C:AC8F: 51        .byte $51, $62, $72, $62, $51, $84, $69, $6A, $00, $00, $8A, $AC, $CB, $8D, $8E, $8F   ; 
- D 1 - I - 0x032CAF 0C:AC9F: B5        .byte $B5, $B6, $B7, $B8, $B9, $9B, $8B, $EF, $9C   ; 

- D 1 - I - 0x032CB8 0C:ACA8: 07        .byte $07   ; 
- D 1 - I - 0x032CB9 0C:ACA9: 00        .byte $00   ; 

- D 1 - I - 0x032CBA 0C:ACAA: 8F        .byte $0F + $80   ; 
- D 1 - I - 0x032CBB 0C:ACAB: 59        .byte $59, $81, $82, $83, $61, $00, $80, $B5, $B1, $7C, $9A, $CC, $9B, $AC, $9B   ; 

- D 1 - I - 0x032CCA 0C:ACBA: 03        .byte $03   ; 
- D 1 - I - 0x032CCB 0C:ACBB: CC        .byte $CC   ; 

- D 1 - I - 0x032CCC 0C:ACBC: 88        .byte $08 + $80   ; 
- D 1 - I - 0x032CCD 0C:ACBD: B1        .byte $B1, $D9, $DA, $7B, $DF, $AB, $EF, $CF   ; 

- D 1 - I - 0x032CD5 0C:ACC5: 06        .byte $06   ; 
- D 1 - I - 0x032CD6 0C:ACC6: 00        .byte $00   ; 

- D 1 - I - 0x032CD7 0C:ACC7: 99        .byte $19 + $80   ; 
- D 1 - I - 0x032CD8 0C:ACC8: 51        .byte $51, $51, $60, $5A, $81, $90, $51, $94, $CB, $CB, $CC, $9B, $CB, $9B, $CB, $9B   ; 
- D 1 - I - 0x032CE8 0C:ACD8: 9B        .byte $9B, $8B, $A9, $AA, $AB, $AB, $EF, $EF, $9E   ; 

- D 1 - I - 0x032CF1 0C:ACE1: 07        .byte $07   ; 
- D 1 - I - 0x032CF2 0C:ACE2: 00        .byte $00   ; 

- D 1 - I - 0x032CF3 0C:ACE3: 99        .byte $19 + $80   ; 
- D 1 - I - 0x032CF4 0C:ACE4: 61        .byte $61, $90, $81, $69, $51, $60, $81, $60, $94, $CB, $CC, $CC, $9B, $CC, $CB, $7B   ; 
- D 1 - I - 0x032D04 0C:ACF4: DF        .byte $DF, $EF, $AB, $BA, $BB, $BC, $BD, $EF, $AE   ; 

- D 1 - I - 0x032D0D 0C:ACFD: 07        .byte $07   ; 
- D 1 - I - 0x032D0E 0C:ACFE: 00        .byte $00   ; 

- D 1 - I - 0x032D0F 0C:ACFF: 9A        .byte $1A + $80   ; 
- D 1 - I - 0x032D10 0C:AD00: 8E        .byte $8E, $91, $92, $93, $83, $81, $51, $60, $3C, $D0, $CC, $9B, $AC, $9B, $9B, $C6   ; 
- D 1 - I - 0x032D20 0C:AD10: C7        .byte $C7, $C8, $C9, $CA, $E4, $7E, $CD, $CE, $AB, $CF   ; 

- D 1 - I - 0x032D2A 0C:AD1A: 06        .byte $06   ; 
- D 1 - I - 0x032D2B 0C:AD1B: 00        .byte $00   ; 

- D 1 - I - 0x032D2C 0C:AD1C: 9A        .byte $1A + $80   ; 
- D 1 - I - 0x032D2D 0C:AD1D: A0        .byte $A0, $A1, $A2, $A3, $A4, $A6, $90, $71, $71, $7D, $D1, $CC, $9B, $CC, $7B, $D6   ; 
- D 1 - I - 0x032D3D 0C:AD2D: D7        .byte $D7, $D8, $EF, $AB, $DB, $DC, $DD, $DE, $AB, $9F   ; 

- D 1 - I - 0x032D47 0C:AD37: 06        .byte $06   ; 
- D 1 - I - 0x032D48 0C:AD38: 00        .byte $00   ; 

- D 1 - I - 0x032D49 0C:AD39: 9A        .byte $1A + $80   ; 
- D 1 - I - 0x032D4A 0C:AD3A: B0        .byte $B0, $CC, $CB, $9B, $B4, $B3, $18, $18, $36, $E0, $E1, $E2, $E3, $E4, $E5, $E6   ; 
- D 1 - I - 0x032D5A 0C:AD4A: E7        .byte $E7, $E8, $E9, $EA, $EB, $EC, $ED, $EE, $DF, $AF   ; 

- D 1 - I - 0x032D64 0C:AD54: 06        .byte $06   ; 
- D 1 - I - 0x032D65 0C:AD55: 00        .byte $00   ; 

- D 1 - I - 0x032D66 0C:AD56: 9A        .byte $1A + $80   ; 
- D 1 - I - 0x032D67 0C:AD57: C0        .byte $C0, $C1, $C2, $C3, $B3, $18, $B5, $E0, $7B, $F6, $F1, $E5, $F3, $F4, $F5, $F6   ; 
- D 1 - I - 0x032D77 0C:AD67: F7        .byte $F7, $F8, $F9, $FA, $FB, $FC, $FD, $FE, $BE, $BF   ; 

- D 1 - I - 0x032D81 0C:AD71: 7E        .byte $7E   ; 
- D 1 - I - 0x032D82 0C:AD72: 00        .byte $00   ; 

- D 1 - I - 0x032D83 0C:AD73: 7E        .byte $7E   ; 
- D 1 - I - 0x032D84 0C:AD74: 00        .byte $00   ; 

- D 1 - I - 0x032D85 0C:AD75: 47        .byte $47   ; 
- D 1 - I - 0x032D86 0C:AD76: 00        .byte $00   ; 

- D 1 - I - 0x032D87 0C:AD77: 38        .byte $38   ; 
- D 1 - I - 0x032D88 0C:AD78: 55        .byte $55   ; 

- D 1 - I - 0x032D89 0C:AD79: 08        .byte $08   ; 
- D 1 - I - 0x032D8A 0C:AD7A: 05        .byte $05   ; 

- D 1 - I - 0x032D8B 0C:AD7B: FF        .byte $FF   ; end token



_off005_0x032D8C_1E:
- D 1 - I - 0x032D8C 0C:AD7C: 00 20     .word $2000 ; ppu address

- D 1 - I - 0x032D8E 0C:AD7E: 44        .byte $44   ; write 44 times tile 00
- D 1 - I - 0x032D8F 0C:AD7F: 00        .byte $00   ; 

- D 1 - I - 0x032D90 0C:AD80: 14        .byte $14   ; 
- D 1 - I - 0x032D91 0C:AD81: 3E        .byte $3E   ; 

- D 1 - I - 0x032D92 0C:AD82: 81        .byte $01 + $80   ; 
- D 1 - I - 0x032D93 0C:AD83: 67        .byte $67   ; 

- D 1 - I - 0x032D94 0C:AD84: 07        .byte $07   ; 
- D 1 - I - 0x032D95 0C:AD85: 3D        .byte $3D   ; 

- D 1 - I - 0x032D96 0C:AD86: 04        .byte $04   ; 
- D 1 - I - 0x032D97 0C:AD87: 00        .byte $00   ; 

- D 1 - I - 0x032D98 0C:AD88: 13        .byte $13   ; 
- D 1 - I - 0x032D99 0C:AD89: 3E        .byte $3E   ; 

- D 1 - I - 0x032D9A 0C:AD8A: 82        .byte $02 + $80   ; write these tiles 02 length
- D 1 - I - 0x032D9B 0C:AD8B: 76        .byte $76, $77   ; 

- D 1 - I - 0x032D9D 0C:AD8D: 07        .byte $07   ; 
- D 1 - I - 0x032D9E 0C:AD8E: 3D        .byte $3D   ; 

- D 1 - I - 0x032D9F 0C:AD8F: 04        .byte $04   ; 
- D 1 - I - 0x032DA0 0C:AD90: 00        .byte $00   ; 

- D 1 - I - 0x032DA1 0C:AD91: 15        .byte $15   ; 
- D 1 - I - 0x032DA2 0C:AD92: 3E        .byte $3E   ; 

- D 1 - I - 0x032DA3 0C:AD93: 82        .byte $02 + $80   ; 
- D 1 - I - 0x032DA4 0C:AD94: 76        .byte $76, $77   ; 

- D 1 - I - 0x032DA6 0C:AD96: 05        .byte $05   ; 
- D 1 - I - 0x032DA7 0C:AD97: 3D        .byte $3D   ; 

- D 1 - I - 0x032DA8 0C:AD98: 04        .byte $04   ; 
- D 1 - I - 0x032DA9 0C:AD99: 00        .byte $00   ; 

- D 1 - I - 0x032DAA 0C:AD9A: 16        .byte $16   ; 
- D 1 - I - 0x032DAB 0C:AD9B: 3E        .byte $3E   ; 

- D 1 - I - 0x032DAC 0C:AD9C: 81        .byte $01 + $80   ; 
- D 1 - I - 0x032DAD 0C:AD9D: 67        .byte $67   ; 

- D 1 - I - 0x032DAE 0C:AD9E: 05        .byte $05   ; 
- D 1 - I - 0x032DAF 0C:AD9F: 3D        .byte $3D   ; 

- D 1 - I - 0x032DB0 0C:ADA0: 04        .byte $04   ; 
- D 1 - I - 0x032DB1 0C:ADA1: 00        .byte $00   ; 

- D 1 - I - 0x032DB2 0C:ADA2: 83        .byte $03 + $80   ; 
- D 1 - I - 0x032DB3 0C:ADA3: 3E        .byte $3E, $3E, $45   ; 

- D 1 - I - 0x032DB6 0C:ADA6: 12        .byte $12   ; 
- D 1 - I - 0x032DB7 0C:ADA7: 3E        .byte $3E   ; 

- D 1 - I - 0x032DB8 0C:ADA8: 82        .byte $02 + $80   ; 
- D 1 - I - 0x032DB9 0C:ADA9: 76        .byte $76, $77   ; 

- D 1 - I - 0x032DBB 0C:ADAB: 05        .byte $05   ; 
- D 1 - I - 0x032DBC 0C:ADAC: 3D        .byte $3D   ; 

- D 1 - I - 0x032DBD 0C:ADAD: 04        .byte $04   ; 
- D 1 - I - 0x032DBE 0C:ADAE: 00        .byte $00   ; 

- D 1 - I - 0x032DBF 0C:ADAF: 8A        .byte $0A + $80   ; 
- D 1 - I - 0x032DC0 0C:ADB0: 3E        .byte $3E, $45, $3E, $45, $45, $3E, $3E, $45, $45, $3E   ; 

- D 1 - I - 0x032DCA 0C:ADBA: 03        .byte $03   ; 
- D 1 - I - 0x032DCB 0C:ADBB: 45        .byte $45   ; 

- D 1 - I - 0x032DCC 0C:ADBC: 8B        .byte $0B + $80   ; 
- D 1 - I - 0x032DCD 0C:ADBD: 3E        .byte $3E, $3E, $45, $3E, $45, $3E, $3E, $45, $3E, $3E, $67   ; 

- D 1 - I - 0x032DD8 0C:ADC8: 04        .byte $04   ; 
- D 1 - I - 0x032DD9 0C:ADC9: 3D        .byte $3D   ; 

- D 1 - I - 0x032DDA 0C:ADCA: 04        .byte $04   ; 
- D 1 - I - 0x032DDB 0C:ADCB: 00        .byte $00   ; 

- D 1 - I - 0x032DDC 0C:ADCC: 8A        .byte $0A + $80   ; 
- D 1 - I - 0x032DDD 0C:ADCD: 45        .byte $45, $55, $45, $55, $45, $55, $45, $55, $45, $45   ; 

- D 1 - I - 0x032DE7 0C:ADD7: 04        .byte $04   ; 
- D 1 - I - 0x032DE8 0C:ADD8: 55        .byte $55   ; 

- D 1 - I - 0x032DE9 0C:ADD9: 04        .byte $04   ; 
- D 1 - I - 0x032DEA 0C:ADDA: 45        .byte $45   ; 

- D 1 - I - 0x032DEB 0C:ADDB: 86        .byte $06 + $80   ; 
- D 1 - I - 0x032DEC 0C:ADDC: 55        .byte $55, $55, $45, $45, $76, $77   ; 

- D 1 - I - 0x032DF2 0C:ADE2: 04        .byte $04   ; 
- D 1 - I - 0x032DF3 0C:ADE3: 3D        .byte $3D   ; 

- D 1 - I - 0x032DF4 0C:ADE4: 04        .byte $04   ; 
- D 1 - I - 0x032DF5 0C:ADE5: 00        .byte $00   ; 

- D 1 - I - 0x032DF6 0C:ADE6: 84        .byte $04 + $80   ; 
- D 1 - I - 0x032DF7 0C:ADE7: 55        .byte $55, $55, $00, $00   ; 

- D 1 - I - 0x032DFB 0C:ADEB: 05        .byte $05   ; 
- D 1 - I - 0x032DFC 0C:ADEC: 55        .byte $55   ; 

- D 1 - I - 0x032DFD 0C:ADED: 06        .byte $06   ; 
- D 1 - I - 0x032DFE 0C:ADEE: 00        .byte $00   ; 

- D 1 - I - 0x032DFF 0C:ADEF: 82        .byte $02 + $80   ; 
- D 1 - I - 0x032E00 0C:ADF0: 55        .byte $55, $55   ; 

- D 1 - I - 0x032E02 0C:ADF2: 03        .byte $03   ; 
- D 1 - I - 0x032E03 0C:ADF3: 00        .byte $00   ; 

- D 1 - I - 0x032E04 0C:ADF4: 84        .byte $04 + $80   ; 
- D 1 - I - 0x032E05 0C:ADF5: 55        .byte $55, $45, $45, $55   ; 

- D 1 - I - 0x032E09 0C:ADF9: 04        .byte $04   ; 
- D 1 - I - 0x032E0A 0C:ADFA: 3D        .byte $3D   ; 

- D 1 - I - 0x032E0B 0C:ADFB: 03        .byte $03   ; 
- D 1 - I - 0x032E0C 0C:ADFC: 00        .byte $00   ; 

- D 1 - I - 0x032E0D 0C:ADFD: 81        .byte $01 + $80   ; 
- D 1 - I - 0x032E0E 0C:ADFE: 6D        .byte $6D   ; 

- D 1 - I - 0x032E0F 0C:ADFF: 04        .byte $04   ; 
- D 1 - I - 0x032E10 0C:AE00: 00        .byte $00   ; 

- D 1 - I - 0x032E11 0C:AE01: 82        .byte $02 + $80   ; 
- D 1 - I - 0x032E12 0C:AE02: 5A        .byte $5A, $4A   ; 

- D 1 - I - 0x032E14 0C:AE04: 05        .byte $05   ; 
- D 1 - I - 0x032E15 0C:AE05: 00        .byte $00   ; 

- D 1 - I - 0x032E16 0C:AE06: 81        .byte $01 + $80   ; 
- D 1 - I - 0x032E17 0C:AE07: 40        .byte $40   ; 

- D 1 - I - 0x032E18 0C:AE08: 06        .byte $06   ; 
- D 1 - I - 0x032E19 0C:AE09: 00        .byte $00   ; 

- D 1 - I - 0x032E1A 0C:AE0A: 82        .byte $02 + $80   ; 
- D 1 - I - 0x032E1B 0C:AE0B: 5A        .byte $5A, $4A   ; 

- D 1 - I - 0x032E1D 0C:AE0D: 03        .byte $03   ; 
- D 1 - I - 0x032E1E 0C:AE0E: 00        .byte $00   ; 

- D 1 - I - 0x032E1F 0C:AE0F: 81        .byte $01 + $80   ; 
- D 1 - I - 0x032E20 0C:AE10: 6D        .byte $6D   ; 

- D 1 - I - 0x032E21 0C:AE11: 07        .byte $07   ; 
- D 1 - I - 0x032E22 0C:AE12: 00        .byte $00   ; 

- D 1 - I - 0x032E23 0C:AE13: 89        .byte $09 + $80   ; 
- D 1 - I - 0x032E24 0C:AE14: 6D        .byte $6D, $00, $49, $4A, $69, $6A, $7A, $49, $4A   ; 

- D 1 - I - 0x032E2D 0C:AE1D: 03        .byte $03   ; 
- D 1 - I - 0x032E2E 0C:AE1E: 00        .byte $00   ; 

- D 1 - I - 0x032E2F 0C:AE1F: 81        .byte $01 + $80   ; 
- D 1 - I - 0x032E30 0C:AE20: 50        .byte $50   ; 

- D 1 - I - 0x032E31 0C:AE21: 03        .byte $03   ; 
- D 1 - I - 0x032E32 0C:AE22: 00        .byte $00   ; 

- D 1 - I - 0x032E33 0C:AE23: 89        .byte $09 + $80   ; 
- D 1 - I - 0x032E34 0C:AE24: 49        .byte $49, $4A, $69, $6A, $7A, $4A, $00, $00, $6D   ; 

- D 1 - I - 0x032E3D 0C:AE2D: 07        .byte $07   ; 
- D 1 - I - 0x032E3E 0C:AE2E: 00        .byte $00   ; 

- D 1 - I - 0x032E3F 0C:AE2F: 81        .byte $01 + $80   ; 
- D 1 - I - 0x032E40 0C:AE30: 6D        .byte $6D   ; 

- D 1 - I - 0x032E41 0C:AE31: 03        .byte $03   ; 
- D 1 - I - 0x032E42 0C:AE32: 00        .byte $00   ; 

- D 1 - I - 0x032E43 0C:AE33: 95        .byte $15 + $80   ; 
- D 1 - I - 0x032E44 0C:AE34: 55        .byte $55, $5A, $4A, $00, $00, $40, $00, $00, $60, $62, $41, $00, $00, $7B, $79, $55   ; 
- D 1 - I - 0x032E54 0C:AE44: 7A        .byte $7A, $5A, $4A, $00, $6D   ; 

- D 1 - I - 0x032E59 0C:AE49: 07        .byte $07   ; 
- D 1 - I - 0x032E5A 0C:AE4A: 00        .byte $00   ; 

- D 1 - I - 0x032E5B 0C:AE4B: 99        .byte $19 + $80   ; 
- D 1 - I - 0x032E5C 0C:AE4C: 6D        .byte $6D, $00, $49, $4A, $69, $6A, $7A, $4A, $00, $50, $00, $00, $41, $62, $51, $40   ; 
- D 1 - I - 0x032E6C 0C:AE5C: 00        .byte $00, $00, $5A, $4A, $69, $6A, $7A, $4A, $6D   ; 

- D 1 - I - 0x032E75 0C:AE65: 07        .byte $07   ; 
- D 1 - I - 0x032E76 0C:AE66: 00        .byte $00   ; 

- D 1 - I - 0x032E77 0C:AE67: 99        .byte $19 + $80   ; 
- D 1 - I - 0x032E78 0C:AE68: 6D        .byte $6D, $00, $46, $49, $46, $45, $56, $56, $00, $60, $62, $41, $51, $74, $62, $50   ; 
- D 1 - I - 0x032E88 0C:AE78: 00        .byte $00, $69, $7A, $78, $7B, $46, $7B, $7A, $6D   ; 

- D 1 - I - 0x032E91 0C:AE81: 07        .byte $07   ; 
- D 1 - I - 0x032E92 0C:AE82: 00        .byte $00   ; 

- D 1 - I - 0x032E93 0C:AE83: 84        .byte $04 + $80   ; 
- D 1 - I - 0x032E94 0C:AE84: 6D        .byte $6D, $00, $69, $7B   ; 

- D 1 - I - 0x032E98 0C:AE88: 05        .byte $05   ; 
- D 1 - I - 0x032E99 0C:AE89: 00        .byte $00   ; 

- D 1 - I - 0x032E9A 0C:AE8A: 8A        .byte $0A + $80   ; 
- D 1 - I - 0x032E9B 0C:AE8B: 42        .byte $42, $70, $63, $42, $51, $64, $60, $64, $00, $66   ; 

- D 1 - I - 0x032EA5 0C:AE95: 03        .byte $03   ; 
- D 1 - I - 0x032EA6 0C:AE96: 00        .byte $00   ; 

- D 1 - I - 0x032EA7 0C:AE97: 83        .byte $03 + $80   ; 
- D 1 - I - 0x032EA8 0C:AE98: 79        .byte $79, $00, $6D   ; 

- D 1 - I - 0x032EAB 0C:AE9B: 07        .byte $07   ; 
- D 1 - I - 0x032EAC 0C:AE9C: 00        .byte $00   ; 

- D 1 - I - 0x032EAD 0C:AE9D: 81        .byte $01 + $80   ; 
- D 1 - I - 0x032EAE 0C:AE9E: 6D        .byte $6D   ; 

- D 1 - I - 0x032EAF 0C:AE9F: 08        .byte $08   ; 
- D 1 - I - 0x032EB0 0C:AEA0: 00        .byte $00   ; 

- D 1 - I - 0x032EB1 0C:AEA1: 8C        .byte $0C + $80   ; 
- D 1 - I - 0x032EB2 0C:AEA2: 52        .byte $52, $70, $61, $75, $71, $74, $7B, $74, $00, $00, $43, $44   ; 

- D 1 - I - 0x032EBE 0C:AEAE: 03        .byte $03   ; 
- D 1 - I - 0x032EBF 0C:AEAF: 00        .byte $00   ; 

- D 1 - I - 0x032EC0 0C:AEB0: 81        .byte $01 + $80   ; 
- D 1 - I - 0x032EC1 0C:AEB1: 6D        .byte $6D   ; 

- D 1 - I - 0x032EC2 0C:AEB2: 07        .byte $07   ; 
- D 1 - I - 0x032EC3 0C:AEB3: 00        .byte $00   ; 

- D 1 - I - 0x032EC4 0C:AEB4: 81        .byte $01 + $80   ; 
- D 1 - I - 0x032EC5 0C:AEB5: 6D        .byte $6D   ; 

- D 1 - I - 0x032EC6 0C:AEB6: 09        .byte $09   ; 
- D 1 - I - 0x032EC7 0C:AEB7: 00        .byte $00   ; 

- D 1 - I - 0x032EC8 0C:AEB8: 8B        .byte $0B + $80   ; 
- D 1 - I - 0x032EC9 0C:AEB9: 51        .byte $51, $71, $51, $00, $75, $71, $51, $00, $00, $53, $54   ; 

- D 1 - I - 0x032ED4 0C:AEC4: 03        .byte $03   ; 
- D 1 - I - 0x032ED5 0C:AEC5: 00        .byte $00   ; 

- D 1 - I - 0x032ED6 0C:AEC6: 81        .byte $01 + $80   ; 
- D 1 - I - 0x032ED7 0C:AEC7: 6D        .byte $6D   ; 

- D 1 - I - 0x032ED8 0C:AEC8: 07        .byte $07   ; 
- D 1 - I - 0x032ED9 0C:AEC9: 00        .byte $00   ; 

- D 1 - I - 0x032EDA 0C:AECA: 81        .byte $01 + $80   ; 
- D 1 - I - 0x032EDB 0C:AECB: 6D        .byte $6D   ; 

- D 1 - I - 0x032EDC 0C:AECC: 04        .byte $04   ; 
- D 1 - I - 0x032EDD 0C:AECD: 00        .byte $00   ; 

- D 1 - I - 0x032EDE 0C:AECE: 81        .byte $01 + $80   ; 
- D 1 - I - 0x032EDF 0C:AECF: 40        .byte $40   ; 

- D 1 - I - 0x032EE0 0C:AED0: 03        .byte $03   ; 
- D 1 - I - 0x032EE1 0C:AED1: 00        .byte $00   ; 

- D 1 - I - 0x032EE2 0C:AED2: 8C        .byte $0C + $80   ; 
- D 1 - I - 0x032EE3 0C:AED3: 68        .byte $68, $58, $4B, $73, $63, $51, $5B, $58, $70, $70, $42, $54   ; 

- D 1 - I - 0x032EEF 0C:AEDF: 03        .byte $03   ; 
- D 1 - I - 0x032EF0 0C:AEE0: 00        .byte $00   ; 

- D 1 - I - 0x032EF1 0C:AEE1: 81        .byte $01 + $80   ; 
- D 1 - I - 0x032EF2 0C:AEE2: 6D        .byte $6D   ; 

- D 1 - I - 0x032EF3 0C:AEE3: 07        .byte $07   ; 
- D 1 - I - 0x032EF4 0C:AEE4: 00        .byte $00   ; 

- D 1 - I - 0x032EF5 0C:AEE5: 81        .byte $01 + $80   ; 
- D 1 - I - 0x032EF6 0C:AEE6: 6D        .byte $6D   ; 

- D 1 - I - 0x032EF7 0C:AEE7: 04        .byte $04   ; 
- D 1 - I - 0x032EF8 0C:AEE8: 00        .byte $00   ; 

- D 1 - I - 0x032EF9 0C:AEE9: 81        .byte $01 + $80   ; 
- D 1 - I - 0x032EFA 0C:AEEA: 50        .byte $50   ; 

- D 1 - I - 0x032EFB 0C:AEEB: 03        .byte $03   ; 
- D 1 - I - 0x032EFC 0C:AEEC: 00        .byte $00   ; 

- D 1 - I - 0x032EFD 0C:AEED: 8C        .byte $0C + $80   ; 
- D 1 - I - 0x032EFE 0C:AEEE: 73        .byte $73, $59, $66, $73, $71, $00, $4B, $7A, $70, $70, $61, $62   ; 

- D 1 - I - 0x032F0A 0C:AEFA: 03        .byte $03   ; 
- D 1 - I - 0x032F0B 0C:AEFB: 00        .byte $00   ; 

- D 1 - I - 0x032F0C 0C:AEFC: 81        .byte $01 + $80   ; 
- D 1 - I - 0x032F0D 0C:AEFD: 6D        .byte $6D   ; 

- D 1 - I - 0x032F0E 0C:AEFE: 07        .byte $07   ; 
- D 1 - I - 0x032F0F 0C:AEFF: 00        .byte $00   ; 

- D 1 - I - 0x032F10 0C:AF00: 81        .byte $01 + $80   ; 
- D 1 - I - 0x032F11 0C:AF01: 6D        .byte $6D   ; 

- D 1 - I - 0x032F12 0C:AF02: 04        .byte $04   ; 
- D 1 - I - 0x032F13 0C:AF03: 00        .byte $00   ; 

- D 1 - I - 0x032F14 0C:AF04: 90        .byte $10 + $80   ; 
- D 1 - I - 0x032F15 0C:AF05: 60        .byte $60, $00, $00, $4B, $58, $73, $59, $65, $4B, $5B, $65, $00, $73, $5B, $61, $62   ; 

- D 1 - I - 0x032F25 0C:AF15: 03        .byte $03   ; 
- D 1 - I - 0x032F26 0C:AF16: 00        .byte $00   ; 

- D 1 - I - 0x032F27 0C:AF17: 81        .byte $01 + $80   ; 
- D 1 - I - 0x032F28 0C:AF18: 6D        .byte $6D   ; 

- D 1 - I - 0x032F29 0C:AF19: 07        .byte $07   ; 
- D 1 - I - 0x032F2A 0C:AF1A: 00        .byte $00   ; 

- D 1 - I - 0x032F2B 0C:AF1B: 81        .byte $01 + $80   ; 
- D 1 - I - 0x032F2C 0C:AF1C: 6D        .byte $6D   ; 

- D 1 - I - 0x032F2D 0C:AF1D: 04        .byte $04   ; 
- D 1 - I - 0x032F2E 0C:AF1E: 00        .byte $00   ; 

- D 1 - I - 0x032F2F 0C:AF1F: 90        .byte $10 + $80   ; 
- D 1 - I - 0x032F30 0C:AF20: 42        .byte $42, $70, $66, $66, $73, $66, $59, $66, $59, $4B, $73, $5B, $00, $4B, $5B, $4B   ; 

- D 1 - I - 0x032F40 0C:AF30: 03        .byte $03   ; 
- D 1 - I - 0x032F41 0C:AF31: 00        .byte $00   ; 

- D 1 - I - 0x032F42 0C:AF32: 81        .byte $01 + $80   ; 
- D 1 - I - 0x032F43 0C:AF33: 6D        .byte $6D   ; 

- D 1 - I - 0x032F44 0C:AF34: 07        .byte $07   ; 
- D 1 - I - 0x032F45 0C:AF35: 00        .byte $00   ; 

- D 1 - I - 0x032F46 0C:AF36: 87        .byte $07 + $80   ; 
- D 1 - I - 0x032F47 0C:AF37: 6D        .byte $6D, $00, $46, $46, $47, $47, $48   ; 

- D 1 - I - 0x032F4E 0C:AF3E: 05        .byte $05   ; 
- D 1 - I - 0x032F4F 0C:AF3F: 00        .byte $00   ; 

- D 1 - I - 0x032F50 0C:AF40: 83        .byte $03 + $80   ; 
- D 1 - I - 0x032F51 0C:AF41: 59        .byte $59, $00, $5B   ; 

- D 1 - I - 0x032F54 0C:AF44: 05        .byte $05   ; 
- D 1 - I - 0x032F55 0C:AF45: 00        .byte $00   ; 

- D 1 - I - 0x032F56 0C:AF46: 85        .byte $05 + $80   ; 
- D 1 - I - 0x032F57 0C:AF47: 46        .byte $46, $57, $57, $56, $6D   ; 

- D 1 - I - 0x032F5C 0C:AF4C: 07        .byte $07   ; 
- D 1 - I - 0x032F5D 0C:AF4D: 00        .byte $00   ; 

- D 1 - I - 0x032F5E 0C:AF4E: 83        .byte $03 + $80   ; 
- D 1 - I - 0x032F5F 0C:AF4F: 6D        .byte $6D, $00, $00   ; 

- D 1 - I - 0x032F62 0C:AF52: 03        .byte $03   ; 
- D 1 - I - 0x032F63 0C:AF53: 46        .byte $46   ; 

- D 1 - I - 0x032F64 0C:AF54: 83        .byte $03 + $80   ; 
- D 1 - I - 0x032F65 0C:AF55: 47        .byte $47, $47, $57   ; 

- D 1 - I - 0x032F68 0C:AF58: 08        .byte $08   ; 
- D 1 - I - 0x032F69 0C:AF59: 00        .byte $00   ; 

- D 1 - I - 0x032F6A 0C:AF5A: 88        .byte $08 + $80   ; 
- D 1 - I - 0x032F6B 0C:AF5B: 46        .byte $46, $47, $47, $48, $56, $00, $00, $6D   ; 

- D 1 - I - 0x032F73 0C:AF63: 07        .byte $07   ; 
- D 1 - I - 0x032F74 0C:AF64: 00        .byte $00   ; 

- D 1 - I - 0x032F75 0C:AF65: 81        .byte $01 + $80   ; 
- D 1 - I - 0x032F76 0C:AF66: 6D        .byte $6D   ; 

- D 1 - I - 0x032F77 0C:AF67: 05        .byte $05   ; 
- D 1 - I - 0x032F78 0C:AF68: 00        .byte $00   ; 

- D 1 - I - 0x032F79 0C:AF69: 84        .byte $04 + $80   ; 
- D 1 - I - 0x032F7A 0C:AF6A: 46        .byte $46, $46, $47, $57   ; 

- D 1 - I - 0x032F7E 0C:AF6E: 06        .byte $06   ; 
- D 1 - I - 0x032F7F 0C:AF6F: 00        .byte $00   ; 

- D 1 - I - 0x032F80 0C:AF70: 81        .byte $01 + $80   ; 
- D 1 - I - 0x032F81 0C:AF71: 46        .byte $46   ; 

- D 1 - I - 0x032F82 0C:AF72: 04        .byte $04   ; 
- D 1 - I - 0x032F83 0C:AF73: 56        .byte $56   ; 

- D 1 - I - 0x032F84 0C:AF74: 03        .byte $03   ; 
- D 1 - I - 0x032F85 0C:AF75: 00        .byte $00   ; 

- D 1 - I - 0x032F86 0C:AF76: 81        .byte $01 + $80   ; 
- D 1 - I - 0x032F87 0C:AF77: 6D        .byte $6D   ; 

- D 1 - I - 0x032F88 0C:AF78: 07        .byte $07   ; 
- D 1 - I - 0x032F89 0C:AF79: 00        .byte $00   ; 

- D 1 - I - 0x032F8A 0C:AF7A: 85        .byte $05 + $80   ; 
- D 1 - I - 0x032F8B 0C:AF7B: 6D        .byte $6D, $00, $00, $46, $56   ; 

- D 1 - I - 0x032F90 0C:AF80: 03        .byte $03   ; 
- D 1 - I - 0x032F91 0C:AF81: 00        .byte $00   ; 

- D 1 - I - 0x032F92 0C:AF82: 03        .byte $03   ; 
- D 1 - I - 0x032F93 0C:AF83: 46        .byte $46   ; 

- D 1 - I - 0x032F94 0C:AF84: 85        .byte $05 + $80   ; 
- D 1 - I - 0x032F95 0C:AF85: 56        .byte $56, $00, $00, $46, $56   ; 

- D 1 - I - 0x032F9A 0C:AF8A: 08        .byte $08   ; 
- D 1 - I - 0x032F9B 0C:AF8B: 00        .byte $00   ; 

- D 1 - I - 0x032F9C 0C:AF8C: 81        .byte $01 + $80   ; 
- D 1 - I - 0x032F9D 0C:AF8D: 6D        .byte $6D   ; 

- D 1 - I - 0x032F9E 0C:AF8E: 07        .byte $07   ; 
- D 1 - I - 0x032F9F 0C:AF8F: 00        .byte $00   ; 

- D 1 - I - 0x032FA0 0C:AF90: 81        .byte $01 + $80   ; 
- D 1 - I - 0x032FA1 0C:AF91: 6D        .byte $6D   ; 

- D 1 - I - 0x032FA2 0C:AF92: 06        .byte $06   ; 
- D 1 - I - 0x032FA3 0C:AF93: 00        .byte $00   ; 

- D 1 - I - 0x032FA4 0C:AF94: 82        .byte $02 + $80   ; 
- D 1 - I - 0x032FA5 0C:AF95: 46        .byte $46, $56   ; 

- D 1 - I - 0x032FA7 0C:AF97: 0A        .byte $0A   ; 
- D 1 - I - 0x032FA8 0C:AF98: 00        .byte $00   ; 

- D 1 - I - 0x032FA9 0C:AF99: 86        .byte $06 + $80   ; 
- D 1 - I - 0x032FAA 0C:AF9A: 46        .byte $46, $56, $56, $00, $00, $6D   ; 

- D 1 - I - 0x032FB0 0C:AFA0: 07        .byte $07   ; 
- D 1 - I - 0x032FB1 0C:AFA1: 00        .byte $00   ; 

- D 1 - I - 0x032FB2 0C:AFA2: 81        .byte $01 + $80   ; 
- D 1 - I - 0x032FB3 0C:AFA3: 6D        .byte $6D   ; 

- D 1 - I - 0x032FB4 0C:AFA4: 17        .byte $17   ; 
- D 1 - I - 0x032FB5 0C:AFA5: 6E        .byte $6E   ; 

- D 1 - I - 0x032FB6 0C:AFA6: 81        .byte $01 + $80   ; 
- D 1 - I - 0x032FB7 0C:AFA7: 6F        .byte $6F   ; 

- D 1 - I - 0x032FB8 0C:AFA8: 44        .byte $44   ; 
- D 1 - I - 0x032FB9 0C:AFA9: 00        .byte $00   ; 

- D 1 - I - 0x032FBA 0C:AFAA: 10        .byte $10   ; 
- D 1 - I - 0x032FBB 0C:AFAB: FF        .byte $FF   ; 

- D 1 - I - 0x032FBC 0C:AFAC: 84        .byte $04 + $80   ; 
- D 1 - I - 0x032FBD 0C:AFAD: 3F        .byte $3F, $FF, $FF, $BF   ; 

- D 1 - I - 0x032FC1 0C:AFB1: 04        .byte $04   ; 
- D 1 - I - 0x032FC2 0C:AFB2: FF        .byte $FF   ; 

- D 1 - I - 0x032FC3 0C:AFB3: 85        .byte $05 + $80   ; 
- D 1 - I - 0x032FC4 0C:AFB4: 33        .byte $33, $FF, $FF, $56, $9A   ; 

- D 1 - I - 0x032FC9 0C:AFB9: 03        .byte $03   ; 
- D 1 - I - 0x032FCA 0C:AFBA: FF        .byte $FF   ; 

- D 1 - I - 0x032FCB 0C:AFBB: 97        .byte $17 + $80   ; 
- D 1 - I - 0x032FCC 0C:AFBC: 33        .byte $33, $FF, $EF, $A5, $A9, $22, $00, $0F, $FF, $FF, $FA, $BA, $AA, $F2, $FF, $00   ; 
- D 1 - I - 0x032FDC 0C:AFCC: 03        .byte $03, $0F, $CF, $0F, $0F, $CF, $33   ; 

- D 1 - I - 0x032FE3 0C:AFD3: 06        .byte $06   ; 
- D 1 - I - 0x032FE4 0C:AFD4: 00        .byte $00   ; 

- D 1 - I - 0x032FE5 0C:AFD5: 83        .byte $03 + $80   ; 
- D 1 - I - 0x032FE6 0C:AFD6: 0F        .byte $0F, $0F, $00   ; 

- D 1 - I - 0x032FE9 0C:AFD9: FF        .byte $FF   ; end token



ofs_0x032FEA:
C - - J - - 0x032FEA 0C:AFDA: A9 00     LDA #$00
C - - - - - 0x032FEC 0C:AFDC: 9D 69 06  STA ram_obj_066A,X
C - - - - - 0x032FEF 0C:AFDF: BD 06 06  LDA ram_obj_config,X
C - - - - - 0x032FF2 0C:AFE2: A8        TAY
C - - - - - 0x032FF3 0C:AFE3: D0 47     BNE bra_B02C
C - - - - - 0x032FF5 0C:AFE5: A9 01     LDA #$01
C - - - - - 0x032FF7 0C:AFE7: 9D 57 06  STA ram_obj_0658,X
C - - - - - 0x032FFA 0C:AFEA: A9 00     LDA #$00
C - - - - - 0x032FFC 0C:AFEC: 9D 45 06  STA ram_obj_0646,X
C - - - - - 0x032FFF 0C:AFEF: BC 33 06  LDY ram_obj_0634,X
C - - - - - 0x033002 0C:AFF2: B9 C1 B2  LDA tbl_B2C1_pos_X_hi,Y
C - - - - - 0x033005 0C:AFF5: 9D 38 04  STA ram_obj_pos_X_hi,X
C - - - - - 0x033008 0C:AFF8: 30 03     BMI bra_AFFD
C - - - - - 0x03300A 0C:AFFA: FE 45 06  INC ram_obj_0646,X
bra_AFFD:
C - - - - - 0x03300D 0C:AFFD: A0 00     LDY #$00
C - - - - - 0x03300F 0C:AFFF: 20 11 B2  JSR sub_B211
C - - - - - 0x033012 0C:B002: A0 00     LDY #$00
C - - - - - 0x033014 0C:B004: 20 63 B2  JSR sub_B263
C - - - - - 0x033017 0C:B007: A9 C8     LDA #$C8
C - - - - - 0x033019 0C:B009: 9D 1C 04  STA ram_obj_pos_Y_hi,X
C - - - - - 0x03301C 0C:B00C: A9 20     LDA #< $FF20
C - - - - - 0x03301E 0C:B00E: 9D 37 05  STA ram_obj_spd_Y_lo,X
C - - - - - 0x033021 0C:B011: A9 FF     LDA #> $FF20
C - - - - - 0x033023 0C:B013: 9D 20 05  STA ram_obj_spd_Y_hi,X
C - - - - - 0x033026 0C:B016: A9 00     LDA #$00
C - - - - - 0x033028 0C:B018: 9D F2 04  STA ram_obj_spd_X_hi,X
C - - - - - 0x03302B 0C:B01B: 9D 09 05  STA ram_obj_spd_X_lo,X
C - - - - - 0x03302E 0C:B01E: FE 06 06  INC ram_obj_config,X
C - - - - - 0x033031 0C:B021: A9 6E     LDA #$6E
C - - - - - 0x033033 0C:B023: 9D 00 04  STA ram_obj_anim_id,X
C - - - - - 0x033036 0C:B026: A9 0E     LDA #con_obj_type_0E
C - - - - - 0x033038 0C:B028: 9D 8C 04  STA ram_obj_type,X
C - - - - - 0x03303B 0C:B02B: 60        RTS
bra_B02C:
C - - - - - 0x03303C 0C:B02C: 88        DEY
C - - - - - 0x03303D 0C:B02D: D0 2A     BNE bra_B059
; 01
C - - - - - 0x03303F 0C:B02F: A9 B0     LDA #$B0
C - - - - - 0x033041 0C:B031: DD 1C 04  CMP ram_obj_pos_Y_hi,X
C - - - - - 0x033044 0C:B034: 90 22     BCC bra_B058_RTS
C - - - - - 0x033046 0C:B036: A9 E0     LDA #< $00E0
C - - - - - 0x033048 0C:B038: 9D 09 05  STA ram_obj_spd_X_lo,X
C - - - - - 0x03304B 0C:B03B: A9 00     LDA #> $00E0
C - - - - - 0x03304D 0C:B03D: 9D F2 04  STA ram_obj_spd_X_hi,X
C - - - - - 0x033050 0C:B040: BD 45 06  LDA ram_obj_0646,X
C - - - - - 0x033053 0C:B043: D0 0A     BNE bra_B04F
C - - - - - 0x033055 0C:B045: A9 20     LDA #< $FF20
C - - - - - 0x033057 0C:B047: 9D 09 05  STA ram_obj_spd_X_lo,X
C - - - - - 0x03305A 0C:B04A: A9 FF     LDA #> $FF20
C - - - - - 0x03305C 0C:B04C: 9D F2 04  STA ram_obj_spd_X_hi,X
bra_B04F:
C - - - - - 0x03305F 0C:B04F: FE 06 06  INC ram_obj_config,X
C - - - - - 0x033062 0C:B052: BD 45 06  LDA ram_obj_0646,X
C - - - - - 0x033065 0C:B055: 9D 1D 06  STA ram_061D_obj,X
bra_B058_RTS:
C - - - - - 0x033068 0C:B058: 60        RTS
bra_B059:
C - - - - - 0x033069 0C:B059: 88        DEY
C - - - - - 0x03306A 0C:B05A: D0 17     BNE bra_B073
; 02
C - - - - - 0x03306C 0C:B05C: 20 14 B1  JSR sub_B114_get_spd_Y
; invert speed
C - - - - - 0x03306F 0C:B05F: A5 11     LDA ram_0011_t019_spd_Y_lo
C - - - - - 0x033071 0C:B061: 49 FF     EOR #$FF
C - - - - - 0x033073 0C:B063: 18        CLC
C - - - - - 0x033074 0C:B064: 69 01     ADC #< $0001
C - - - - - 0x033076 0C:B066: 85 11     STA ram_0011_t019_spd_Y_lo
C - - - - - 0x033078 0C:B068: A5 10     LDA ram_0010_t023_spd_Y_hi
C - - - - - 0x03307A 0C:B06A: 49 FF     EOR #$FF
C - - - - - 0x03307C 0C:B06C: 69 00     ADC #> $0001
C - - - - - 0x03307E 0C:B06E: 85 10     STA ram_0010_t023_spd_Y_hi
C - - - - - 0x033080 0C:B070: 4C 26 B1  JMP loc_B126
bra_B073:
C - - - - - 0x033083 0C:B073: 88        DEY
C - - - - - 0x033084 0C:B074: D0 0B     BNE bra_B081
; 03
C - - - - - 0x033086 0C:B076: BD 45 06  LDA ram_obj_0646,X
C - - - - - 0x033089 0C:B079: F0 03     BEQ bra_B07E
C - - - - - 0x03308B 0C:B07B: 4C 7D B1  JMP loc_B17D
bra_B07E:
C - - - - - 0x03308E 0C:B07E: 4C 51 B1  JMP loc_B151
bra_B081:
C - - - - - 0x033091 0C:B081: 88        DEY
C - - - - - 0x033092 0C:B082: D0 06     BNE bra_B08A
; 04
C - - - - - 0x033094 0C:B084: 20 14 B1  JSR sub_B114_get_spd_Y
C - - - - - 0x033097 0C:B087: 4C 26 B1  JMP loc_B126
bra_B08A:
C - - - - - 0x03309A 0C:B08A: 88        DEY
C - - - - - 0x03309B 0C:B08B: D0 0B     BNE bra_B098
; 05
C - - - - - 0x03309D 0C:B08D: BD 45 06  LDA ram_obj_0646,X
C - - - - - 0x0330A0 0C:B090: D0 03     BNE bra_B095
C - - - - - 0x0330A2 0C:B092: 4C 7D B1  JMP loc_B17D
bra_B095:
C - - - - - 0x0330A5 0C:B095: 4C 51 B1  JMP loc_B151
bra_B098:
C - - - - - 0x0330A8 0C:B098: 88        DEY
C - - - - - 0x0330A9 0C:B099: D0 27     BNE bra_B0C2
; 06
C - - - - - 0x0330AB 0C:B09B: A9 00     LDA #$00
C - - - - - 0x0330AD 0C:B09D: 9D 20 05  STA ram_obj_spd_Y_hi,X
C - - - - - 0x0330B0 0C:B0A0: 9D 37 05  STA ram_obj_spd_Y_lo,X
C - - - - - 0x0330B3 0C:B0A3: BC 33 06  LDY ram_obj_0634,X
C - - - - - 0x0330B6 0C:B0A6: B9 C1 B2  LDA tbl_B2C1_pos_X_hi,Y
C - - - - - 0x0330B9 0C:B0A9: 38        SEC
C - - - - - 0x0330BA 0C:B0AA: FD 38 04  SBC ram_obj_pos_X_hi,X
C - - - - - 0x0330BD 0C:B0AD: B0 05     BCS bra_B0B4
C - - - - - 0x0330BF 0C:B0AF: 49 FF     EOR #$FF
C - - - - - 0x0330C1 0C:B0B1: 18        CLC
C - - - - - 0x0330C2 0C:B0B2: 69 01     ADC #$01
bra_B0B4:
C - - - - - 0x0330C4 0C:B0B4: C9 02     CMP #$02
C - - - - - 0x0330C6 0C:B0B6: B0 09     BCS bra_B0C1_RTS
C - - - - - 0x0330C8 0C:B0B8: B9 C1 B2  LDA tbl_B2C1_pos_X_hi,Y
C - - - - - 0x0330CB 0C:B0BB: 9D 38 04  STA ram_obj_pos_X_hi,X
C - - - - - 0x0330CE 0C:B0BE: FE 06 06  INC ram_obj_config,X
bra_B0C1_RTS:
C - - - - - 0x0330D1 0C:B0C1: 60        RTS
bra_B0C2:
C - - - - - 0x0330D2 0C:B0C2: 88        DEY
C - - - - - 0x0330D3 0C:B0C3: D0 14     BNE bra_B0D9
; 07
C - - - - - 0x0330D5 0C:B0C5: A9 E0     LDA #$E0
C - - - - - 0x0330D7 0C:B0C7: 9D 37 05  STA ram_obj_spd_Y_lo,X
C - - - - - 0x0330DA 0C:B0CA: A9 00     LDA #$00
C - - - - - 0x0330DC 0C:B0CC: 9D 20 05  STA ram_obj_spd_Y_hi,X
C - - - - - 0x0330DF 0C:B0CF: 9D F2 04  STA ram_obj_spd_X_hi,X
C - - - - - 0x0330E2 0C:B0D2: 9D 09 05  STA ram_obj_spd_X_lo,X
C - - - - - 0x0330E5 0C:B0D5: FE 06 06  INC ram_obj_config,X
C - - - - - 0x0330E8 0C:B0D8: 60        RTS
bra_B0D9:
; 08
C - - - - - 0x0330E9 0C:B0D9: BD 1C 04  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x0330EC 0C:B0DC: C9 C8     CMP #$C8
C - - - - - 0x0330EE 0C:B0DE: 90 12     BCC bra_B0F2_RTS
C - - - - - 0x0330F0 0C:B0E0: A9 C8     LDA #$C8
C - - - - - 0x0330F2 0C:B0E2: 9D 1C 04  STA ram_obj_pos_Y_hi,X
C - - - - - 0x0330F5 0C:B0E5: A0 02     LDY #$02
C - - - - - 0x0330F7 0C:B0E7: 20 11 B2  JSR sub_B211
C - - - - - 0x0330FA 0C:B0EA: A0 02     LDY #$02
C - - - - - 0x0330FC 0C:B0EC: 20 63 B2  JSR sub_B263
C - - - - - 0x0330FF 0C:B0EF: 4C F3 B0  JMP loc_B0F3
bra_B0F2_RTS:
C - - - - - 0x033102 0C:B0F2: 60        RTS



loc_B0F3:
C D 1 - - - 0x033103 0C:B0F3: A9 00     LDA #$00
C - - - - - 0x033105 0C:B0F5: 9D 06 06  STA ram_obj_config,X
C - - - - - 0x033108 0C:B0F8: 9D 1D 06  STA ram_061D_obj,X
C - - - - - 0x03310B 0C:B0FB: FE 33 06  INC ram_obj_0634,X
C - - - - - 0x03310E 0C:B0FE: BD 33 06  LDA ram_obj_0634,X
C - - - - - 0x033111 0C:B101: 29 07     AND #$07
C - - - - - 0x033113 0C:B103: 9D 33 06  STA ram_obj_0634,X
C - - - - - 0x033116 0C:B106: AD F3 07  LDA ram_07F3
C - - - - - 0x033119 0C:B109: C9 01     CMP #$01
C - - - - - 0x03311B 0C:B10B: F0 01     BEQ bra_B10E
C - - - - - 0x03311D 0C:B10D: 60        RTS
bra_B10E:
C - - - - - 0x03311E 0C:B10E: EE F0 07  INC ram_07F0
C - - - - - 0x033121 0C:B111: 4C A9 B2  JMP loc_B2A9



sub_B114_get_spd_Y:
C - - - - - 0x033124 0C:B114: BD 33 06  LDA ram_obj_0634,X
C - - - - - 0x033127 0C:B117: 29 01     AND #$01
C - - - - - 0x033129 0C:B119: 0A        ASL
C - - - - - 0x03312A 0C:B11A: A8        TAY
C - - - - - 0x03312B 0C:B11B: B9 E1 B2  LDA tbl_B2E1_spd_Y,Y
C - - - - - 0x03312E 0C:B11E: 85 11     STA ram_0011_t019_spd_Y_lo
C - - - - - 0x033130 0C:B120: B9 E2 B2  LDA tbl_B2E1_spd_Y + $01,Y
C - - - - - 0x033133 0C:B123: 85 10     STA ram_0010_t023_spd_Y_hi
C - - - - - 0x033135 0C:B125: 60        RTS



loc_B126:
C D 1 - - - 0x033136 0C:B126: A9 00     LDA #$00
C - - - - - 0x033138 0C:B128: 9D 20 05  STA ram_obj_spd_Y_hi,X
C - - - - - 0x03313B 0C:B12B: 9D 37 05  STA ram_obj_spd_Y_lo,X
C - - - - - 0x03313E 0C:B12E: BD 1D 06  LDA ram_061D_obj,X
C - - - - - 0x033141 0C:B131: F0 15     BEQ bra_B148
C - - - - - 0x033143 0C:B133: BD 38 04  LDA ram_obj_pos_X_hi,X
C - - - - - 0x033146 0C:B136: C9 C8     CMP #$C8
C - - - - - 0x033148 0C:B138: 90 0D     BCC bra_B147_RTS
bra_B13A:
C - - - - - 0x03314A 0C:B13A: FE 06 06  INC ram_obj_config,X
C - - - - - 0x03314D 0C:B13D: A5 10     LDA ram_0010_t023_spd_Y_hi
C - - - - - 0x03314F 0C:B13F: 9D 20 05  STA ram_obj_spd_Y_hi,X
C - - - - - 0x033152 0C:B142: A5 11     LDA ram_0011_t019_spd_Y_lo
C - - - - - 0x033154 0C:B144: 9D 37 05  STA ram_obj_spd_Y_lo,X
bra_B147_RTS:
C - - - - - 0x033157 0C:B147: 60        RTS
bra_B148:
C - - - - - 0x033158 0C:B148: BD 38 04  LDA ram_obj_pos_X_hi,X
C - - - - - 0x03315B 0C:B14B: C9 38     CMP #$38
C - - - - - 0x03315D 0C:B14D: B0 F8     BCS bra_B147_RTS
C - - - - - 0x03315F 0C:B14F: 90 E9     BCC bra_B13A    ; jmp



loc_B151:
C D 1 - - - 0x033161 0C:B151: BD 1D 06  LDA ram_061D_obj,X
C - - - - - 0x033164 0C:B154: F0 0E     BEQ bra_B164
C - - - - - 0x033166 0C:B156: A9 04     LDA #$04
C - - - - - 0x033168 0C:B158: 20 A9 B1  JSR sub_B1A9_increase_spd_X
C - - - - - 0x03316B 0C:B15B: 20 F5 B1  JSR sub_B1F5
C - - - - - 0x03316E 0C:B15E: 90 03     BCC bra_B163_RTS
C - - - - - 0x033170 0C:B160: FE 06 06  INC ram_obj_config,X
bra_B163_RTS:
C - - - - - 0x033173 0C:B163: 60        RTS
bra_B164:
C - - - - - 0x033174 0C:B164: A9 04     LDA #$04
C - - - - - 0x033176 0C:B166: 20 A9 B1  JSR sub_B1A9_increase_spd_X
C - - - - - 0x033179 0C:B169: BD F2 04  LDA ram_obj_spd_X_hi,X
C - - - - - 0x03317C 0C:B16C: 1D 09 05  ORA ram_obj_spd_X_lo,X
C - - - - - 0x03317F 0C:B16F: D0 F2     BNE bra_B163_RTS
C - - - - - 0x033181 0C:B171: FE 1D 06  INC ram_061D_obj,X
C - - - - - 0x033184 0C:B174: BD 1D 06  LDA ram_061D_obj,X
C - - - - - 0x033187 0C:B177: 29 01     AND #$01
C - - - - - 0x033189 0C:B179: 9D 1D 06  STA ram_061D_obj,X
C - - - - - 0x03318C 0C:B17C: 60        RTS



loc_B17D:
C D 1 - - - 0x03318D 0C:B17D: BD 1D 06  LDA ram_061D_obj,X
C - - - - - 0x033190 0C:B180: D0 0E     BNE bra_B190
C - - - - - 0x033192 0C:B182: A9 04     LDA #$04
C - - - - - 0x033194 0C:B184: 20 C3 B1  JSR sub_B1C3_decrease_spd_X
C - - - - - 0x033197 0C:B187: 20 D7 B1  JSR sub_B1D7
C - - - - - 0x03319A 0C:B18A: 90 03     BCC bra_B18F_RTS
C - - - - - 0x03319C 0C:B18C: FE 06 06  INC ram_obj_config,X
bra_B18F_RTS:
C - - - - - 0x03319F 0C:B18F: 60        RTS
bra_B190:
C - - - - - 0x0331A0 0C:B190: A9 04     LDA #$04
C - - - - - 0x0331A2 0C:B192: 20 C3 B1  JSR sub_B1C3_decrease_spd_X
C - - - - - 0x0331A5 0C:B195: BD F2 04  LDA ram_obj_spd_X_hi,X
C - - - - - 0x0331A8 0C:B198: 1D 09 05  ORA ram_obj_spd_X_lo,X
C - - - - - 0x0331AB 0C:B19B: D0 C6     BNE bra_B163_RTS
C - - - - - 0x0331AD 0C:B19D: FE 1D 06  INC ram_061D_obj,X
C - - - - - 0x0331B0 0C:B1A0: BD 1D 06  LDA ram_061D_obj,X
C - - - - - 0x0331B3 0C:B1A3: 29 01     AND #$01
C - - - - - 0x0331B5 0C:B1A5: 9D 1D 06  STA ram_061D_obj,X
C - - - - - 0x0331B8 0C:B1A8: 60        RTS



sub_B1A9_increase_spd_X:
C - - - - - 0x0331B9 0C:B1A9: 18        CLC
C - - - - - 0x0331BA 0C:B1AA: 7D 09 05  ADC ram_obj_spd_X_lo,X
C - - - - - 0x0331BD 0C:B1AD: 9D 09 05  STA ram_obj_spd_X_lo,X
C - - - - - 0x0331C0 0C:B1B0: BD F2 04  LDA ram_obj_spd_X_hi,X
C - - - - - 0x0331C3 0C:B1B3: 69 00     ADC #$00
C - - - - - 0x0331C5 0C:B1B5: 9D F2 04  STA ram_obj_spd_X_hi,X
C - - - - - 0x0331C8 0C:B1B8: 90 08     BCC bra_B1C2_RTS
C - - - - - 0x0331CA 0C:B1BA: A9 00     LDA #$00
C - - - - - 0x0331CC 0C:B1BC: 9D 09 05  STA ram_obj_spd_X_lo,X
C - - - - - 0x0331CF 0C:B1BF: 9D F2 04  STA ram_obj_spd_X_hi,X
bra_B1C2_RTS:
C - - - - - 0x0331D2 0C:B1C2: 60        RTS



sub_B1C3_decrease_spd_X:
; in
    ; A = spd_X_lo
C - - - - - 0x0331D3 0C:B1C3: 85 00     STA ram_0000_t0CB_spd_X_lo
C - - - - - 0x0331D5 0C:B1C5: BD 09 05  LDA ram_obj_spd_X_lo,X
C - - - - - 0x0331D8 0C:B1C8: 38        SEC
C - - - - - 0x0331D9 0C:B1C9: E5 00     SBC ram_0000_t0CB_spd_X_lo
C - - - - - 0x0331DB 0C:B1CB: 9D 09 05  STA ram_obj_spd_X_lo,X
C - - - - - 0x0331DE 0C:B1CE: BD F2 04  LDA ram_obj_spd_X_hi,X
C - - - - - 0x0331E1 0C:B1D1: E9 00     SBC #$00
C - - - - - 0x0331E3 0C:B1D3: 9D F2 04  STA ram_obj_spd_X_hi,X
C - - - - - 0x0331E6 0C:B1D6: 60        RTS



sub_B1D7:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x0331E7 0C:B1D7: BD F2 04  LDA ram_obj_spd_X_hi,X
C - - - - - 0x0331EA 0C:B1DA: 10 17     BPL bra_B1F3
C - - - - - 0x0331EC 0C:B1DC: C9 FF     CMP #$FF
C - - - - - 0x0331EE 0C:B1DE: D0 07     BNE bra_B1E7
C - - - - - 0x0331F0 0C:B1E0: BD 09 05  LDA ram_obj_spd_X_lo,X
C - - - - - 0x0331F3 0C:B1E3: C9 80     CMP #$80
C - - - - - 0x0331F5 0C:B1E5: B0 0C     BCS bra_B1F3
bra_B1E7:
C - - - - - 0x0331F7 0C:B1E7: A9 FF     LDA #> $FF80
C - - - - - 0x0331F9 0C:B1E9: 9D F2 04  STA ram_obj_spd_X_hi,X
C - - - - - 0x0331FC 0C:B1EC: A9 80     LDA #< $FF80
C - - - - - 0x0331FE 0C:B1EE: 9D 09 05  STA ram_obj_spd_X_lo,X
C - - - - - 0x033201 0C:B1F1: 38        SEC
C - - - - - 0x033202 0C:B1F2: 60        RTS
bra_B1F3:
C - - - - - 0x033203 0C:B1F3: 18        CLC
C - - - - - 0x033204 0C:B1F4: 60        RTS



sub_B1F5:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x033205 0C:B1F5: BD F2 04  LDA ram_obj_spd_X_hi,X
C - - - - - 0x033208 0C:B1F8: 30 15     BMI bra_B20F
C - - - - - 0x03320A 0C:B1FA: D0 07     BNE bra_B203
C - - - - - 0x03320C 0C:B1FC: BD 09 05  LDA ram_obj_spd_X_lo,X
C - - - - - 0x03320F 0C:B1FF: C9 80     CMP #$80
C - - - - - 0x033211 0C:B201: 90 0C     BCC bra_B20F
bra_B203:
C - - - - - 0x033213 0C:B203: A9 00     LDA #> $0080
C - - - - - 0x033215 0C:B205: 9D F2 04  STA ram_obj_spd_X_hi,X
C - - - - - 0x033218 0C:B208: A9 80     LDA #< $0080
C - - - - - 0x03321A 0C:B20A: 9D 09 05  STA ram_obj_spd_X_lo,X
C - - - - - 0x03321D 0C:B20D: 38        SEC
C - - - - - 0x03321E 0C:B20E: 60        RTS
bra_B20F:
C - - - - - 0x03321F 0C:B20F: 18        CLC
C - - - - - 0x033220 0C:B210: 60        RTS



sub_B211:
; in
    ; Y = 00/02
; out
    ; ram_000F_t009
C - - - - - 0x033221 0C:B211: BD 33 06  LDA ram_obj_0634,X
C - - - - - 0x033224 0C:B214: 85 0F     STA ram_000F_t009
C - - - - - 0x033226 0C:B216: 86 17     STX ram_0017_t003_save_X
C - - - - - 0x033228 0C:B218: 84 16     STY ram_0016_t009
C - - - - - 0x03322A 0C:B21A: A9 00     LDA #$00
C - - - - - 0x03322C 0C:B21C: 85 14     STA ram_0014_t004_table_index
C - - - - - 0x03322E 0C:B21E: 85 15     STA ram_0015_t000_loop_counter
C - - - - - 0x033230 0C:B220: A6 1D     LDX ram_index_ppu_buffer
bra_B222_loop:
C - - - - - 0x033232 0C:B222: A9 01     LDA #$01
C - - - - - 0x033234 0C:B224: 20 BC B2  JSR sub_B2BC_write_to_buffer_and_INX
C - - - - - 0x033237 0C:B227: A5 15     LDA ram_0015_t000_loop_counter
C - - - - - 0x033239 0C:B229: F0 02     BEQ bra_B22D
C - - - - - 0x03323B 0C:B22B: A9 20     LDA #$20
bra_B22D:
C - - - - - 0x03323D 0C:B22D: A4 0F     LDY ram_000F_t009
C - - - - - 0x03323F 0C:B22F: 18        CLC
C - - - - - 0x033240 0C:B230: 79 D1 B2  ADC tbl_B2D1,Y
C - - - - - 0x033243 0C:B233: 20 BC B2  JSR sub_B2BC_write_to_buffer_and_INX
C - - - - - 0x033246 0C:B236: A9 23     LDA #$23
C - - - - - 0x033248 0C:B238: 20 BC B2  JSR sub_B2BC_write_to_buffer_and_INX
C - - - - - 0x03324B 0C:B23B: A9 04     LDA #$04
C - - - - - 0x03324D 0C:B23D: 85 12     STA ram_0012_t009_loop_counter
bra_B23F_loop:
C - - - - - 0x03324F 0C:B23F: A5 16     LDA ram_0016_t009
C - - - - - 0x033251 0C:B241: F0 07     BEQ bra_B24A
C - - - - - 0x033253 0C:B243: A4 14     LDY ram_0014_t004_table_index
C - - - - - 0x033255 0C:B245: B9 D9 B2  LDA tbl_B2D9,Y
C - - - - - 0x033258 0C:B248: E6 14     INC ram_0014_t004_table_index
bra_B24A:
C - - - - - 0x03325A 0C:B24A: 20 BC B2  JSR sub_B2BC_write_to_buffer_and_INX
C - - - - - 0x03325D 0C:B24D: C6 12     DEC ram_0012_t009_loop_counter
C - - - - - 0x03325F 0C:B24F: D0 EE     BNE bra_B23F_loop
; close buffer
C - - - - - 0x033261 0C:B251: A9 FF     LDA #$FF
C - - - - - 0x033263 0C:B253: 20 BC B2  JSR sub_B2BC_write_to_buffer_and_INX
C - - - - - 0x033266 0C:B256: E6 15     INC ram_0015_t000_loop_counter
C - - - - - 0x033268 0C:B258: A5 15     LDA ram_0015_t000_loop_counter
C - - - - - 0x03326A 0C:B25A: C9 02     CMP #$02
C - - - - - 0x03326C 0C:B25C: D0 C4     BNE bra_B222_loop
C - - - - - 0x03326E 0C:B25E: 86 1D     STX ram_index_ppu_buffer
C - - - - - 0x033270 0C:B260: A6 17     LDX ram_0017_t003_save_X
C - - - - - 0x033272 0C:B262: 60        RTS



sub_B263:
; in
    ; Y = 
    ; ram_000F_t009
; triggers during final boss platforms
C - - - - - 0x033273 0C:B263: 84 12     STY ram_0012_t008
C - - - - - 0x033275 0C:B265: A4 0F     LDY ram_000F_t009
C - - - - - 0x033277 0C:B267: B9 C9 B2  LDA tbl_B2C9,Y
C - - - - - 0x03327A 0C:B26A: A8        TAY
C - - - - - 0x03327B 0C:B26B: A5 12     LDA ram_0012_t008
C - - - - - 0x03327D 0C:B26D: F0 02     BEQ bra_B271
C - - - - - 0x03327F 0C:B26F: A9 66     LDA #$66
bra_B271:
C - - - - - 0x033281 0C:B271: 85 10     STA ram_0010_t022
C - - - - - 0x033283 0C:B273: BD 38 04  LDA ram_obj_pos_X_hi,X
C - - - - - 0x033286 0C:B276: 38        SEC
C - - - - - 0x033287 0C:B277: E9 10     SBC #$10
C - - - - - 0x033289 0C:B279: 29 10     AND #$10
C - - - - - 0x03328B 0C:B27B: D0 06     BNE bra_B283
C - - - - - 0x03328D 0C:B27D: A5 10     LDA ram_0010_t022
C - - - - - 0x03328F 0C:B27F: 99 E0 06  STA ram_06E0,Y
C - - - - - 0x033292 0C:B282: 60        RTS
bra_B283:
C - - - - - 0x033293 0C:B283: A5 10     LDA ram_0010_t022
C - - - - - 0x033295 0C:B285: 29 0F     AND #$0F
C - - - - - 0x033297 0C:B287: 85 11     STA ram_0011_t017
C - - - - - 0x033299 0C:B289: B9 E0 06  LDA ram_06E0,Y
C - - - - - 0x03329C 0C:B28C: 29 F0     AND #$F0
C - - - - - 0x03329E 0C:B28E: 05 11     ORA ram_0011_t017
C - - - - - 0x0332A0 0C:B290: 99 E0 06  STA ram_06E0,Y
C - - - - - 0x0332A3 0C:B293: 98        TYA
C - - - - - 0x0332A4 0C:B294: 18        CLC
C - - - - - 0x0332A5 0C:B295: 69 0C     ADC #$0C
C - - - - - 0x0332A7 0C:B297: A8        TAY
C - - - - - 0x0332A8 0C:B298: A5 10     LDA ram_0010_t022
C - - - - - 0x0332AA 0C:B29A: 29 F0     AND #$F0
C - - - - - 0x0332AC 0C:B29C: 85 11     STA ram_0011_t018
C - - - - - 0x0332AE 0C:B29E: B9 E0 06  LDA ram_06E0,Y
C - - - - - 0x0332B1 0C:B2A1: 29 0F     AND #$0F
C - - - - - 0x0332B3 0C:B2A3: 05 11     ORA ram_0011_t018
C - - - - - 0x0332B5 0C:B2A5: 99 E0 06  STA ram_06E0,Y
C - - - - - 0x0332B8 0C:B2A8: 60        RTS



loc_B2A9:
C D 1 - - - 0x0332B9 0C:B2A9: A0 00     LDY #$00
; bzk optimize, Y is always 00
C - - - - - 0x0332BB 0C:B2AB: B9 BA B2  LDA tbl_B2BA,Y
C - - - - - 0x0332BE 0C:B2AE: 85 00     STA ram_0000_t025_jmp
C - - - - - 0x0332C0 0C:B2B0: B9 BB B2  LDA tbl_B2BA + $01,Y
C - - - - - 0x0332C3 0C:B2B3: 85 01     STA ram_0000_t025_jmp + $01
C - - - - - 0x0332C5 0C:B2B5: A9 92     LDA #con_prg_bank + $92
C - - - - - 0x0332C7 0C:B2B7: 4C 2F E6  JMP loc_0x03E63F_indirect_jump_custom_bank



tbl_B2BA:
; bzk optimize
- D 1 - - - 0x0332CA 0C:B2BA: 3A 87     .word ofs_0x02474A_clear_object_data



sub_B2BC_write_to_buffer_and_INX:
; bzk optimize, same as 0x004366, move to bank FF
C - - - - - 0x0332CC 0C:B2BC: 9D 00 03  STA ram_ppu_buffer,X
C - - - - - 0x0332CF 0C:B2BF: E8        INX
C - - - - - 0x0332D0 0C:B2C0: 60        RTS



tbl_B2C1_pos_X_hi:
- D 1 - - - 0x0332D1 0C:B2C1: 80        .byte $80   ; 00 
- D 1 - - - 0x0332D2 0C:B2C2: A0        .byte $A0   ; 01 
- D 1 - - - 0x0332D3 0C:B2C3: 40        .byte $40   ; 02 
- D 1 - - - 0x0332D4 0C:B2C4: 90        .byte $90   ; 03 
- D 1 - - - 0x0332D5 0C:B2C5: B0        .byte $B0   ; 04 
- D 1 - - - 0x0332D6 0C:B2C6: 60        .byte $60   ; 05 
- D 1 - - - 0x0332D7 0C:B2C7: 50        .byte $50   ; 06 
- D 1 - - - 0x0332D8 0C:B2C8: 70        .byte $70   ; 07 



tbl_B2C9:
- D 1 - - - 0x0332D9 0C:B2C9: 2E        .byte $2E   ; 00 
- D 1 - - - 0x0332DA 0C:B2CA: 3A        .byte $3A   ; 01 
- D 1 - - - 0x0332DB 0C:B2CB: 16        .byte $16   ; 02 
- D 1 - - - 0x0332DC 0C:B2CC: 3A        .byte $3A   ; 03 
- D 1 - - - 0x0332DD 0C:B2CD: 46        .byte $46   ; 04 
- D 1 - - - 0x0332DE 0C:B2CE: 22        .byte $22   ; 05 
- D 1 - - - 0x0332DF 0C:B2CF: 22        .byte $22   ; 06 
- D 1 - - - 0x0332E0 0C:B2D0: 2E        .byte $2E   ; 07 



tbl_B2D1:
- D 1 - - - 0x0332E1 0C:B2D1: 0E        .byte $0E   ; 00 
- D 1 - - - 0x0332E2 0C:B2D2: 12        .byte $12   ; 01 
- D 1 - - - 0x0332E3 0C:B2D3: 06        .byte $06   ; 02 
- D 1 - - - 0x0332E4 0C:B2D4: 10        .byte $10   ; 03 
- D 1 - - - 0x0332E5 0C:B2D5: 14        .byte $14   ; 04 
- D 1 - - - 0x0332E6 0C:B2D6: 0A        .byte $0A   ; 05 
- D 1 - - - 0x0332E7 0C:B2D7: 08        .byte $08   ; 06 
- D 1 - - - 0x0332E8 0C:B2D8: 0C        .byte $0C   ; 07 



tbl_B2D9:
- D 1 - - - 0x0332E9 0C:B2D9: BC        .byte $BC   ; 00 
- D 1 - - - 0x0332EA 0C:B2DA: BE        .byte $BE   ; 01 
- D 1 - - - 0x0332EB 0C:B2DB: BC        .byte $BC   ; 02 
- D 1 - - - 0x0332EC 0C:B2DC: BE        .byte $BE   ; 03 
- D 1 - - - 0x0332ED 0C:B2DD: BD        .byte $BD   ; 04 
- D 1 - - - 0x0332EE 0C:B2DE: BF        .byte $BF   ; 05 
- D 1 - - - 0x0332EF 0C:B2DF: BD        .byte $BD   ; 06 
- D 1 - - - 0x0332F0 0C:B2E0: BF        .byte $BF   ; 07 



tbl_B2E1_spd_Y:
- D 1 - - - 0x0332F1 0C:B2E1: E0 00     .word $00E0 ; 00 
- D 1 - - - 0x0332F3 0C:B2E3: 40 00     .word $0040 ; 01 



sub_0x0332F5:
C - - - - - 0x0332F5 0C:B2E5: A0 05     LDY #$05
bra_B2E7_loop:
C - - - - - 0x0332F7 0C:B2E7: 20 B9 FE  JSR sub_0x03FEC9_find_empty_object_slot_01_0C
C - - - - - 0x0332FA 0C:B2EA: 20 D7 FE  JSR sub_0x03FEE7_clear_object_speed_and_data
C - - - - - 0x0332FD 0C:B2ED: A9 8B     LDA #$8B
C - - - - - 0x0332FF 0C:B2EF: 9D 4E 05  STA ram_obj_id,X
C - - - - - 0x033302 0C:B2F2: A9 0E     LDA #con_obj_type_0E
C - - - - - 0x033304 0C:B2F4: 9D 8C 04  STA ram_obj_type,X
C - - - - - 0x033307 0C:B2F7: A9 50     LDA #$50
C - - - - - 0x033309 0C:B2F9: 9D 00 04  STA ram_obj_anim_id,X
C - - - - - 0x03330C 0C:B2FC: A9 70     LDA #con_obj_flag_10 + con_obj_flag_20 + con_obj_flag_40
C - - - - - 0x03330E 0C:B2FE: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x033311 0C:B301: A9 02     LDA #$02
C - - - - - 0x033313 0C:B303: 9D 54 04  STA ram_0454_obj,X
C - - - - - 0x033316 0C:B306: A9 80     LDA #$80
C - - - - - 0x033318 0C:B308: 9D EF 05  STA ram_05EF_obj,X
C - - - - - 0x03331B 0C:B30B: B9 1B B3  LDA tbl_B31B_pos_Y_hi,Y
C - - - - - 0x03331E 0C:B30E: 9D 1C 04  STA ram_obj_pos_Y_hi,X
C - - - - - 0x033321 0C:B311: B9 21 B3  LDA tbl_B321_pos_X_hi,Y
C - - - - - 0x033324 0C:B314: 9D 38 04  STA ram_obj_pos_X_hi,X
C - - - - - 0x033327 0C:B317: 88        DEY
C - - - - - 0x033328 0C:B318: 10 CD     BPL bra_B2E7_loop
C - - - - - 0x03332A 0C:B31A: 60        RTS



tbl_B31B_pos_Y_hi:
- D 1 - - - 0x03332B 0C:B31B: 75        .byte $75   ; 00 
- D 1 - - - 0x03332C 0C:B31C: B5        .byte $B5   ; 01 
- D 1 - - - 0x03332D 0C:B31D: 95        .byte $95   ; 02 
- D 1 - - - 0x03332E 0C:B31E: 85        .byte $85   ; 03 
- D 1 - - - 0x03332F 0C:B31F: 65        .byte $65   ; 04 
- D 1 - - - 0x033330 0C:B320: A5        .byte $A5   ; 05 



tbl_B321_pos_X_hi:
- D 1 - - - 0x033331 0C:B321: 38        .byte $38   ; 00 
- D 1 - - - 0x033332 0C:B322: 38        .byte $38   ; 01 
- D 1 - - - 0x033333 0C:B323: 58        .byte $58   ; 02 
- D 1 - - - 0x033334 0C:B324: B8        .byte $B8   ; 03 
- D 1 - - - 0x033335 0C:B325: D8        .byte $D8   ; 04 
- D 1 - - - 0x033336 0C:B326: D8        .byte $D8   ; 05 



_off005_0x033337_1A_password_screen:
- D 1 - I - 0x033337 0C:B327: 00 20     .word $2000 ; ppu address

- D 1 - I - 0x033339 0C:B329: C6        .byte $46 + $80   ; write these tiles 46 length
- D 1 - I - 0x03333A 0C:B32A: CD        .byte $CD, $CE, $CD, $CE, $CB, $CC, $CD, $CE, $CD, $CE, $CD, $CE, $CD, $CE, $CD, $CE   ; 
- D 1 - I - 0x03334A 0C:B33A: CD        .byte $CD, $CE, $CD, $CE, $CD, $CE, $CD, $CE, $CD, $CE, $CB, $CC, $CD, $CE, $CD, $CE   ; 
- D 1 - I - 0x03335A 0C:B34A: DD        .byte $DD, $DE, $DD, $DE, $DB, $DC, $DD, $DE, $DD, $DE, $DD, $DE, $DD, $DE, $DD, $DE   ; 
- D 1 - I - 0x03336A 0C:B35A: DD        .byte $DD, $DE, $DD, $DE, $DD, $DE, $DD, $DE, $DD, $DE, $DB, $DC, $DD, $DE, $DD, $DE   ; 
- D 1 - I - 0x03337A 0C:B36A: CA        .byte $CA, $C8, $C9, $FA, $C0, $C1   ; 

- D 1 - I - 0x033380 0C:B370: 14        .byte $14   ; write 14 times tile 00
- D 1 - I - 0x033381 0C:B371: 00        .byte $00   ; 

- D 1 - I - 0x033382 0C:B372: 8C        .byte $0C + $80   ; 
- D 1 - I - 0x033383 0C:B373: C4        .byte $C4, $C5, $C8, $C9, $CA, $C8, $DA, $D8, $D9, $DA, $D0, $D1   ; 

- D 1 - I - 0x03338F 0C:B37F: 14        .byte $14   ; 
- D 1 - I - 0x033390 0C:B380: 00        .byte $00   ; 

- D 1 - I - 0x033391 0C:B381: 8C        .byte $0C + $80   ; 
- D 1 - I - 0x033392 0C:B382: D4        .byte $D4, $D5, $D8, $D9, $DA, $D8, $EA, $E8, $E9, $EA, $E0, $E1   ; 

- D 1 - I - 0x03339E 0C:B38E: 05        .byte $05   ; 
- D 1 - I - 0x03339F 0C:B38F: 00        .byte $00   ; 

- D 1 - I - 0x0333A0 0C:B390: 81        .byte $01 + $80   ; 
- D 1 - I - 0x0333A1 0C:B391: 80        .byte $80   ; 

- D 1 - I - 0x0333A2 0C:B392: 08        .byte $08   ; 
- D 1 - I - 0x0333A3 0C:B393: 81        .byte $81   ; 

- D 1 - I - 0x0333A4 0C:B394: 81        .byte $01 + $80   ; 
- D 1 - I - 0x0333A5 0C:B395: 82        .byte $82   ; 

- D 1 - I - 0x0333A6 0C:B396: 05        .byte $05   ; 
- D 1 - I - 0x0333A7 0C:B397: 00        .byte $00   ; 

- D 1 - I - 0x0333A8 0C:B398: 8C        .byte $0C + $80   ; 
- D 1 - I - 0x0333A9 0C:B399: E4        .byte $E4, $E5, $E8, $E9, $EA, $E8, $FA, $F8, $F9, $FA, $F0, $F1   ; 

- D 1 - I - 0x0333B5 0C:B3A5: 05        .byte $05   ; 
- D 1 - I - 0x0333B6 0C:B3A6: 00        .byte $00   ; 

- D 1 - I - 0x0333B7 0C:B3A7: 81        .byte $01 + $80   ; 
- D 1 - I - 0x0333B8 0C:B3A8: 90        .byte $90   ; 

- D 1 - I - 0x0333B9 0C:B3A9: 08        .byte $08   ; 
- D 1 - I - 0x0333BA 0C:B3AA: 00        .byte $00   ; 

- D 1 - I - 0x0333BB 0C:B3AB: 81        .byte $01 + $80   ; 
- D 1 - I - 0x0333BC 0C:B3AC: 92        .byte $92   ; 

- D 1 - I - 0x0333BD 0C:B3AD: 05        .byte $05   ; 
- D 1 - I - 0x0333BE 0C:B3AE: 00        .byte $00   ; 

- D 1 - I - 0x0333BF 0C:B3AF: 8C        .byte $0C + $80   ; 
- D 1 - I - 0x0333C0 0C:B3B0: F4        .byte $F4, $F5, $F8, $F9, $DA, $F8, $CA, $C8, $C9, $FA, $C2, $C3   ; 

- D 1 - I - 0x0333CC 0C:B3BC: 05        .byte $05   ; 
- D 1 - I - 0x0333CD 0C:B3BD: 00        .byte $00   ; 

- D 1 - I - 0x0333CE 0C:B3BE: 81        .byte $01 + $80   ; 
- D 1 - I - 0x0333CF 0C:B3BF: A0        .byte $A0   ; 

- D 1 - I - 0x0333D0 0C:B3C0: 08        .byte $08   ; 
- D 1 - I - 0x0333D1 0C:B3C1: A1        .byte $A1   ; 

- D 1 - I - 0x0333D2 0C:B3C2: 81        .byte $01 + $80   ; 
- D 1 - I - 0x0333D3 0C:B3C3: A2        .byte $A2   ; 

- D 1 - I - 0x0333D4 0C:B3C4: 05        .byte $05   ; 
- D 1 - I - 0x0333D5 0C:B3C5: 00        .byte $00   ; 

- D 1 - I - 0x0333D6 0C:B3C6: 8C        .byte $0C + $80   ; 
- D 1 - I - 0x0333D7 0C:B3C7: C6        .byte $C6, $C7, $E8, $E9, $EA, $C8, $DA, $D8, $D9, $DA, $D2, $D3   ; 

- D 1 - I - 0x0333E3 0C:B3D3: 14        .byte $14   ; 
- D 1 - I - 0x0333E4 0C:B3D4: 00        .byte $00   ; 

- D 1 - I - 0x0333E5 0C:B3D5: FE        .byte $7E + $80   ; 
- D 1 - I - 0x0333E6 0C:B3D6: D6        .byte $D6, $D7, $F8, $F9, $FA, $D8, $EA, $E8, $E9, $EA, $E2, $E3, $00, $00, $80, $81   ; 
- D 1 - I - 0x0333F6 0C:B3E6: 81        .byte $81, $82, $80, $81, $81, $82, $80, $81, $81, $82, $80, $81, $81, $82, $00, $00   ; 
- D 1 - I - 0x033406 0C:B3F6: E6        .byte $E6, $E7, $C8, $C9, $CA, $C8, $FA, $F8, $F9, $FA, $F2, $F3, $00, $00, $90, $00   ; 
- D 1 - I - 0x033416 0C:B406: 00        .byte $00, $92, $90, $00, $00, $92, $90, $00, $00, $92, $90, $00, $00, $92, $00, $00   ; 
- D 1 - I - 0x033426 0C:B416: F2        .byte $F2, $F3, $D8, $D9, $DA, $D8, $CD, $CE, $CD, $CE, $CB, $CC, $00, $00, $90, $00   ; 
- D 1 - I - 0x033436 0C:B426: 00        .byte $00, $92, $90, $00, $00, $92, $90, $00, $00, $92, $90, $00, $00, $92, $00, $00   ; 
- D 1 - I - 0x033446 0C:B436: CB        .byte $CB, $CC, $CD, $CE, $CD, $CE, $DD, $DE, $DD, $DE, $DB, $DC, $00, $00, $A0, $A1   ; 
- D 1 - I - 0x033456 0C:B446: A1        .byte $A1, $A2, $A0, $A1, $A1, $A2, $A0, $A1, $A1, $A2, $A0, $A1, $A1, $A2   ; 

- D 1 - I - 0x033464 0C:B454: 8E        .byte $0E + $80   ; 
- D 1 - I - 0x033465 0C:B455: 00        .byte $00, $00, $DB, $DC, $DD, $DE, $DD, $DE   ; 
- D 1 - I - 0x03346D 0C:B45D: E8        .byte $E8, $E9, $E9, $EA, $C4, $C5   ; 

- D 1 - I - 0x033473 0C:B463: 14        .byte $14   ; 
- D 1 - I - 0x033474 0C:B464: 00        .byte $00   ; 

- D 1 - I - 0x033475 0C:B465: 8C        .byte $0C + $80   ; 
- D 1 - I - 0x033476 0C:B466: C0        .byte $C0, $C1, $E8, $E9, $CA, $E8, $F8, $F9, $F9, $FA, $D4, $D5   ; 
   ; 
- D 1 - I - 0x033482 0C:B472: 14        .byte $14   ; 
- D 1 - I - 0x033483 0C:B473: 00        .byte $00   ; 

- D 1 - I - 0x033484 0C:B474: 8C        .byte $0C + $80   ; 
- D 1 - I - 0x033485 0C:B475: D0        .byte $D0, $D1, $F8, $F9, $FA, $F8, $E0, $C8, $C9, $CA, $E4, $E5   ; 

- D 1 - I - 0x033491 0C:B481: 04        .byte $04   ; 
- D 1 - I - 0x033492 0C:B482: 00        .byte $00   ; 

- D 1 - I - 0x033493 0C:B483: 8C        .byte $0C + $80   ; 
- D 1 - I - 0x033494 0C:B484: 80        .byte $80, $81, $82, $80, $81, $82, $80, $81, $82, $80, $81, $82   ; 

- D 1 - I - 0x0334A0 0C:B490: 04        .byte $04   ; 
- D 1 - I - 0x0334A1 0C:B491: 00        .byte $00   ; 

- D 1 - I - 0x0334A2 0C:B492: 8C        .byte $0C + $80   ; 
- D 1 - I - 0x0334A3 0C:B493: E0        .byte $E0, $E1, $C8, $C9, $CA, $C8, $E8, $D8, $D9, $DA, $F4, $F5   ; 

- D 1 - I - 0x0334AF 0C:B49F: 04        .byte $04   ; 
- D 1 - I - 0x0334B0 0C:B4A0: 00        .byte $00   ; 

- D 1 - I - 0x0334B1 0C:B4A1: 8C        .byte $0C + $80   ; 
- D 1 - I - 0x0334B2 0C:B4A2: 90        .byte $90, $00, $92, $90, $00, $92, $90, $00, $92, $90, $00, $92   ; 

- D 1 - I - 0x0334BE 0C:B4AE: 04        .byte $04   ; 
- D 1 - I - 0x0334BF 0C:B4AF: 00        .byte $00   ; 

- D 1 - I - 0x0334C0 0C:B4B0: 8C        .byte $0C + $80   ; 
- D 1 - I - 0x0334C1 0C:B4B1: F0        .byte $F0, $F1, $D8, $D9, $DA, $D8, $C8, $C9, $E9, $EA, $C6, $C7   ; 

- D 1 - I - 0x0334CD 0C:B4BD: 04        .byte $04   ; 
- D 1 - I - 0x0334CE 0C:B4BE: 00        .byte $00   ; 

- D 1 - I - 0x0334CF 0C:B4BF: 8C        .byte $0C + $80   ; 
- D 1 - I - 0x0334D0 0C:B4C0: A0        .byte $A0, $A1, $A2, $A0, $A1, $A2, $A0, $A1, $A2, $A0, $A1, $A2   ; 

- D 1 - I - 0x0334DC 0C:B4CC: 04        .byte $04   ; 
- D 1 - I - 0x0334DD 0C:B4CD: 00        .byte $00   ; 

- D 1 - I - 0x0334DE 0C:B4CE: 8C        .byte $0C + $80   ; 
- D 1 - I - 0x0334DF 0C:B4CF: C2        .byte $C2, $C3, $E8, $E9, $EA, $E8, $D8, $D9, $F9, $FA, $D6, $D7   ; 

- D 1 - I - 0x0334EB 0C:B4DB: 04        .byte $04   ; 
- D 1 - I - 0x0334EC 0C:B4DC: 00        .byte $00   ; 

- D 1 - I - 0x0334ED 0C:B4DD: 8C        .byte $0C + $80   ; 
- D 1 - I - 0x0334EE 0C:B4DE: 80        .byte $80, $81, $82, $80, $81, $82, $80, $81, $82, $80, $81, $82   ; 

- D 1 - I - 0x0334FA 0C:B4EA: 04        .byte $04   ; 
- D 1 - I - 0x0334FB 0C:B4EB: 00        .byte $00   ; 

- D 1 - I - 0x0334FC 0C:B4EC: 8C        .byte $0C + $80   ; 
- D 1 - I - 0x0334FD 0C:B4ED: D2        .byte $D2, $D3, $F8, $C8, $C9, $F8, $E8, $C8, $E9, $EA, $E6, $E7   ; 

- D 1 - I - 0x033509 0C:B4F9: 04        .byte $04   ; 
- D 1 - I - 0x03350A 0C:B4FA: 00        .byte $00   ; 

- D 1 - I - 0x03350B 0C:B4FB: 8C        .byte $0C + $80   ; 
- D 1 - I - 0x03350C 0C:B4FC: 90        .byte $90, $00, $92, $90, $00, $92, $90, $00, $92, $90, $00, $92   ; 

- D 1 - I - 0x033518 0C:B508: 04        .byte $04   ; 
- D 1 - I - 0x033519 0C:B509: 00        .byte $00   ; 

- D 1 - I - 0x03351A 0C:B50A: 8C        .byte $0C + $80   ; 
- D 1 - I - 0x03351B 0C:B50B: E2        .byte $E2, $E3, $C8, $D8, $D9, $C8, $F8, $D8, $F9, $FA, $F2, $F3   ; 

- D 1 - I - 0x033527 0C:B517: 04        .byte $04   ; 
- D 1 - I - 0x033528 0C:B518: 00        .byte $00   ; 

- D 1 - I - 0x033529 0C:B519: 8C        .byte $0C + $80   ; 
- D 1 - I - 0x03352A 0C:B51A: A0        .byte $A0, $A1, $A2, $A0, $A1, $A2, $A0, $A1, $A2, $A0, $A1, $A2   ; 

- D 1 - I - 0x033536 0C:B526: 04        .byte $04   ; 
- D 1 - I - 0x033537 0C:B527: 00        .byte $00   ; 

- D 1 - I - 0x033538 0C:B528: 8C        .byte $0C + $80   ; 
- D 1 - I - 0x033539 0C:B529: F2        .byte $F2, $F3, $D8, $D9, $DA, $D8, $CD, $CE, $CD, $CE, $CB, $CC   ; 

- D 1 - I - 0x033545 0C:B535: 04        .byte $04   ; 
- D 1 - I - 0x033546 0C:B536: 00        .byte $00   ; 

- D 1 - I - 0x033547 0C:B537: 8C        .byte $0C + $80   ; 
- D 1 - I - 0x033548 0C:B538: 80        .byte $80, $81, $82, $80, $81, $82, $80, $81, $82, $80, $81, $82   ; 

- D 1 - I - 0x033554 0C:B544: 04        .byte $04   ; 
- D 1 - I - 0x033555 0C:B545: 00        .byte $00   ; 

- D 1 - I - 0x033556 0C:B546: 8C        .byte $0C + $80   ; 
- D 1 - I - 0x033557 0C:B547: CB        .byte $CB, $CC, $CD, $CE, $CD, $CE, $DD, $DE, $DD, $DE, $DB, $DC   ; 

- D 1 - I - 0x033563 0C:B553: 04        .byte $04   ; 
- D 1 - I - 0x033564 0C:B554: 00        .byte $00   ; 

- D 1 - I - 0x033565 0C:B555: 8C        .byte $0C + $80   ; 
- D 1 - I - 0x033566 0C:B556: 90        .byte $90, $00, $92, $90, $00, $92, $90, $00, $92, $90, $00, $92   ; 

- D 1 - I - 0x033572 0C:B562: 04        .byte $04   ; 
- D 1 - I - 0x033573 0C:B563: 00        .byte $00   ; 

- D 1 - I - 0x033574 0C:B564: 8C        .byte $0C + $80   ; 
- D 1 - I - 0x033575 0C:B565: DB        .byte $DB, $DC, $DD, $DE, $DD, $DE, $C8, $E8, $E9, $CA, $C0, $C1   ; 

- D 1 - I - 0x033581 0C:B571: 04        .byte $04   ; 
- D 1 - I - 0x033582 0C:B572: 00        .byte $00   ; 

- D 1 - I - 0x033583 0C:B573: 8C        .byte $0C + $80   ; 
- D 1 - I - 0x033584 0C:B574: A0        .byte $A0, $A1, $A2, $A0, $A1, $A2, $A0, $A1, $A2, $A0, $A1, $A2   ; 

- D 1 - I - 0x033590 0C:B580: 04        .byte $04   ; 
- D 1 - I - 0x033591 0C:B581: 00        .byte $00   ; 

- D 1 - I - 0x033592 0C:B582: 8C        .byte $0C + $80   ; 
- D 1 - I - 0x033593 0C:B583: C4        .byte $C4, $C5, $E8, $E9, $EA, $E8, $D8, $F8, $F9, $DA, $D0, $D1   ; 

- D 1 - I - 0x03359F 0C:B58F: 04        .byte $04   ; 
- D 1 - I - 0x0335A0 0C:B590: 00        .byte $00   ; 

- D 1 - I - 0x0335A1 0C:B591: 8C        .byte $0C + $80   ; 
- D 1 - I - 0x0335A2 0C:B592: 80        .byte $80, $81, $82, $80, $81, $82, $80, $81, $82, $80, $81, $82   ; 

- D 1 - I - 0x0335AE 0C:B59E: 04        .byte $04   ; 
- D 1 - I - 0x0335AF 0C:B59F: 00        .byte $00   ; 

- D 1 - I - 0x0335B0 0C:B5A0: 8C        .byte $0C + $80   ; 
- D 1 - I - 0x0335B1 0C:B5A1: D4        .byte $D4, $D5, $F8, $F9, $FA, $F8, $C8, $C9, $C8, $C9, $E0, $E1   ; 

- D 1 - I - 0x0335BD 0C:B5AD: 04        .byte $04   ; 
- D 1 - I - 0x0335BE 0C:B5AE: 00        .byte $00   ; 

- D 1 - I - 0x0335BF 0C:B5AF: 8C        .byte $0C + $80   ; 
- D 1 - I - 0x0335C0 0C:B5B0: 90        .byte $90, $00, $92, $90, $00, $92, $90, $00, $92, $90, $00, $92   ; 

- D 1 - I - 0x0335CC 0C:B5BC: 04        .byte $04   ; 
- D 1 - I - 0x0335CD 0C:B5BD: 00        .byte $00   ; 

- D 1 - I - 0x0335CE 0C:B5BE: 8C        .byte $0C + $80   ; 
- D 1 - I - 0x0335CF 0C:B5BF: E4        .byte $E4, $E5, $C8, $C9, $CA, $C8, $D8, $D9, $D8, $D9, $F0, $F1   ; 

- D 1 - I - 0x0335DB 0C:B5CB: 04        .byte $04   ; 
- D 1 - I - 0x0335DC 0C:B5CC: 00        .byte $00   ; 

- D 1 - I - 0x0335DD 0C:B5CD: 8C        .byte $0C + $80   ; 
- D 1 - I - 0x0335DE 0C:B5CE: A0        .byte $A0, $A1, $A2, $A0, $A1, $A2, $A0, $A1, $A2, $A0, $A1, $A2   ; 

- D 1 - I - 0x0335EA 0C:B5DA: 04        .byte $04   ; 
- D 1 - I - 0x0335EB 0C:B5DB: 00        .byte $00   ; 

- D 1 - I - 0x0335EC 0C:B5DC: 8C        .byte $0C + $80   ; 
- D 1 - I - 0x0335ED 0C:B5DD: F4        .byte $F4, $F5, $D8, $D9, $DA, $D8, $E8, $C8, $E9, $EA, $C2, $C3   ; 

- D 1 - I - 0x0335F9 0C:B5E9: 14        .byte $14   ; 
- D 1 - I - 0x0335FA 0C:B5EA: 00        .byte $00   ; 

- D 1 - I - 0x0335FB 0C:B5EB: 8C        .byte $0C + $80   ; 
- D 1 - I - 0x0335FC 0C:B5EC: C6        .byte $C6, $C7, $E8, $E9, $EA, $C8, $F8, $D8, $F9, $FA, $D2, $D3   ; 

- D 1 - I - 0x033608 0C:B5F8: 14        .byte $14   ; 
- D 1 - I - 0x033609 0C:B5F9: 00        .byte $00   ; 

- D 1 - I - 0x03360A 0C:B5FA: C8        .byte $C8   ; 
- D 1 - I - 0x03360B 0C:B5FB: D6        .byte $D6, $D7, $F8, $F9, $FA, $D8, $E8, $C8, $C9, $EA, $E2, $E3, $CD, $CE, $CD, $CE   ; 
- D 1 - I - 0x03361B 0C:B60B: CD        .byte $CD, $CE, $CD, $CE, $CD, $CE, $CD, $CE, $CD, $CE, $CD, $CE, $CD, $CE, $CD, $CE   ; 
- D 1 - I - 0x03362B 0C:B61B: E6        .byte $E6, $E7, $C8, $C9, $CA, $C8, $F8, $D8, $D9, $FA, $F2, $F3, $DD, $DE, $DD, $DE   ; 
- D 1 - I - 0x03363B 0C:B62B: DD        .byte $DD, $DE, $DD, $DE, $DD, $DE, $DD, $DE, $DD, $DE, $DD, $DE, $DD, $DE, $DD, $DE   ; 
- D 1 - I - 0x03364B 0C:B63B: F2        .byte $F2, $F3, $D8, $D9, $DA, $D8, $0A, $69   ; 

- D 1 - I - 0x033653 0C:B643: 04        .byte $04   ; 
- D 1 - I - 0x033654 0C:B644: 5A        .byte $5A   ; 

- D 1 - I - 0x033655 0C:B645: 84        .byte $04 + $80   ; 
- D 1 - I - 0x033656 0C:B646: 96        .byte $96, $0A, $00, $66   ; 

- D 1 - I - 0x03365A 0C:B64A: 04        .byte $04   ; 
- D 1 - I - 0x03365B 0C:B64B: 55        .byte $55   ; 

- D 1 - I - 0x03365C 0C:B64C: 84        .byte $04 + $80   ; 
- D 1 - I - 0x03365D 0C:B64D: 99        .byte $99, $00, $A0, $56   ; 

- D 1 - I - 0x033661 0C:B651: 04        .byte $04   ; 
- D 1 - I - 0x033662 0C:B652: 55        .byte $55   ; 

- D 1 - I - 0x033663 0C:B653: 84        .byte $04 + $80   ; 
- D 1 - I - 0x033664 0C:B654: 59        .byte $59, $A0, $00, $66   ; 

- D 1 - I - 0x033668 0C:B658: 04        .byte $04   ; 
- D 1 - I - 0x033669 0C:B659: 55        .byte $55   ; 

- D 1 - I - 0x03366A 0C:B65A: 84        .byte $04 + $80   ; 
- D 1 - I - 0x03366B 0C:B65B: 99        .byte $99, $00, $00, $66   ; 

- D 1 - I - 0x03366F 0C:B65F: 04        .byte $04   ; 
- D 1 - I - 0x033670 0C:B660: 55        .byte $55   ; 

- D 1 - I - 0x033671 0C:B661: 84        .byte $04 + $80   ; 
- D 1 - I - 0x033672 0C:B662: 99        .byte $99, $00, $0A, $65   ; 

- D 1 - I - 0x033676 0C:B666: 04        .byte $04   ; 
- D 1 - I - 0x033677 0C:B667: 55        .byte $55   ; 

- D 1 - I - 0x033678 0C:B668: 84        .byte $04 + $80   ; 
- D 1 - I - 0x033679 0C:B669: 95        .byte $95, $0A, $00, $66   ; 

- D 1 - I - 0x03367D 0C:B66D: 04        .byte $04   ; 
- D 1 - I - 0x03367E 0C:B66E: 55        .byte $55   ; 

- D 1 - I - 0x03367F 0C:B66F: 83        .byte $03 + $80   ; 
- D 1 - I - 0x033680 0C:B670: 99        .byte $99, $00, $00   ; 

- D 1 - I - 0x033683 0C:B673: 06        .byte $06   ; 
- D 1 - I - 0x033684 0C:B674: 0A        .byte $0A   ; 

- D 1 - I - 0x033685 0C:B675: FF        .byte $FF   ; end token


; bzk garbage
- - - - - - 0x033686 0C:B676: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x033690 0C:B680: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0336A0 0C:B690: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0336B0 0C:B6A0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0336C0 0C:B6B0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0336D0 0C:B6C0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0336E0 0C:B6D0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0336F0 0C:B6E0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x033700 0C:B6F0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x033710 0C:B700: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x033720 0C:B710: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x033730 0C:B720: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x033740 0C:B730: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x033750 0C:B740: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x033760 0C:B750: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x033770 0C:B760: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x033780 0C:B770: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x033790 0C:B780: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0337A0 0C:B790: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0337B0 0C:B7A0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0337C0 0C:B7B0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0337D0 0C:B7C0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0337E0 0C:B7D0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0337F0 0C:B7E0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x033800 0C:B7F0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x033810 0C:B800: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x033820 0C:B810: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x033830 0C:B820: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x033840 0C:B830: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x033850 0C:B840: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x033860 0C:B850: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x033870 0C:B860: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x033880 0C:B870: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x033890 0C:B880: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0338A0 0C:B890: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0338B0 0C:B8A0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0338C0 0C:B8B0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0338D0 0C:B8C0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0338E0 0C:B8D0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0338F0 0C:B8E0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x033900 0C:B8F0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x033910 0C:B900: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x033920 0C:B910: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x033930 0C:B920: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x033940 0C:B930: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x033950 0C:B940: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x033960 0C:B950: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x033970 0C:B960: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x033980 0C:B970: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x033990 0C:B980: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0339A0 0C:B990: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0339B0 0C:B9A0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0339C0 0C:B9B0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0339D0 0C:B9C0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0339E0 0C:B9D0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0339F0 0C:B9E0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x033A00 0C:B9F0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x033A10 0C:BA00: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x033A20 0C:BA10: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x033A30 0C:BA20: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x033A40 0C:BA30: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x033A50 0C:BA40: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x033A60 0C:BA50: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x033A70 0C:BA60: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x033A80 0C:BA70: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x033A90 0C:BA80: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x033AA0 0C:BA90: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x033AB0 0C:BAA0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x033AC0 0C:BAB0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x033AD0 0C:BAC0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x033AE0 0C:BAD0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x033AF0 0C:BAE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x033B00 0C:BAF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x033B10 0C:BB00: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x033B20 0C:BB10: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x033B30 0C:BB20: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x033B40 0C:BB30: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x033B50 0C:BB40: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x033B60 0C:BB50: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x033B70 0C:BB60: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x033B80 0C:BB70: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x033B90 0C:BB80: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x033BA0 0C:BB90: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x033BB0 0C:BBA0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x033BC0 0C:BBB0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x033BD0 0C:BBC0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x033BE0 0C:BBD0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x033BF0 0C:BBE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x033C00 0C:BBF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x033C10 0C:BC00: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x033C20 0C:BC10: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x033C30 0C:BC20: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x033C40 0C:BC30: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x033C50 0C:BC40: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x033C60 0C:BC50: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x033C70 0C:BC60: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x033C80 0C:BC70: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x033C90 0C:BC80: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x033CA0 0C:BC90: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x033CB0 0C:BCA0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x033CC0 0C:BCB0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x033CD0 0C:BCC0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x033CE0 0C:BCD0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x033CF0 0C:BCE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x033D00 0C:BCF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x033D10 0C:BD00: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x033D20 0C:BD10: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x033D30 0C:BD20: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x033D40 0C:BD30: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x033D50 0C:BD40: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x033D60 0C:BD50: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x033D70 0C:BD60: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x033D80 0C:BD70: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x033D90 0C:BD80: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x033DA0 0C:BD90: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x033DB0 0C:BDA0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x033DC0 0C:BDB0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x033DD0 0C:BDC0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x033DE0 0C:BDD0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x033DF0 0C:BDE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x033E00 0C:BDF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x033E10 0C:BE00: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x033E20 0C:BE10: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x033E30 0C:BE20: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x033E40 0C:BE30: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x033E50 0C:BE40: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x033E60 0C:BE50: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x033E70 0C:BE60: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x033E80 0C:BE70: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x033E90 0C:BE80: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x033EA0 0C:BE90: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x033EB0 0C:BEA0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x033EC0 0C:BEB0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x033ED0 0C:BEC0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x033EE0 0C:BED0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x033EF0 0C:BEE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x033F00 0C:BEF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x033F10 0C:BF00: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x033F20 0C:BF10: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x033F30 0C:BF20: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x033F40 0C:BF30: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x033F50 0C:BF40: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x033F60 0C:BF50: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x033F70 0C:BF60: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x033F80 0C:BF70: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x033F90 0C:BF80: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x033FA0 0C:BF90: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x033FB0 0C:BFA0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x033FC0 0C:BFB0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x033FD0 0C:BFC0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x033FE0 0C:BFD0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x033FF0 0C:BFE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x034000 0C:BFF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 



.out .sprintf("Free bytes in bank 98: 0x%04X [%d]", ($C000 - *), ($C000 - *))



