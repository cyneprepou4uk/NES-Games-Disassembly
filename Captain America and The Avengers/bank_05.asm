.segment "BANK_05"
.include "bank_ram.inc"
.include "bank_val.inc"
.org $8000  ; for listing file
; 0x00A010-0x00C00F



.export tbl_0x00A010_player_state_spite_data
.export tbl_0x00A962_spr_data
.export tbl_0x00A9AC_byte_00_or_80
.export tbl_0x00A9F6
.export tbl_0x00AA0C
.export tbl_0x00AA91
.export tbl_0x00B5F3
.export tbl_0x00B881_drop_items_data
.export tbl_0x00B8ED
.export _of051_0x00B9BB_01_01
.export _of051_0x00B9BB_01_02
.export _of051_0x00B9BB_01_03
.export _of051_0x00B9BB_01_04
.export _of051_0x00B9BB_02_01
.export _of051_0x00B9BD_03_01
.export _of051_0x00B9C3_0A_01
.export _of051_0x00B9C9_03_02
.export _of051_0x00B9CF_0A_02
.export _of051_0x00B9D5_03_03
.export _of051_0x00B9D5_04_01
.export _of051_0x00B9D5_06_02
.export _of051_0x00B9D5_07_02
.export _of051_0x00B9D5_0A_03
.export _of051_0x00B9D5_0B_02
.export _of051_0x00B9DB_04_02
.export _of051_0x00B9DB_04_03
.export _of051_0x00B9DB_05_01
.export _of051_0x00B9DB_05_02
.export _of051_0x00B9E1_06_01
.export _of051_0x00B9E1_07_01
.export _of051_0x00B9E1_0B_01
.export _of051_0x00B9E7_08_01
.export tbl_0x00BA2B_map_cursor_position
.export tbl_0x00BA57
.export tbl_0x00BA83
.export tbl_0x00BA89
.export tbl_0x00BA8F_positions_YX
.export tbl_0x00BABD
.export tbl_0x00BACB
.export tbl_0x00BB69_metatiles
.export tbl_0x00BBCD_metatile_id
.export sub_0x00BE40
.export sub_0x00BE43
.export sub_0x00BE46
.export sub_0x00BE49_draw_options



tbl_0x00A010_player_state_spite_data:
- D 0 - - - 0x00A010 02:8000: 04 80     .word off_8004_00_captain
- D 0 - - - 0x00A012 02:8002: CC 84     .word off_84CC_01_hawk



off_8004_00_captain:
- D 0 - I - 0x00A014 02:8004: 2E 80     .word _off032_captain_802E_00
- D 0 - I - 0x00A016 02:8006: 32 80     .word _off032_captain_8032_01
- D 0 - I - 0x00A018 02:8008: 36 80     .word _off032_captain_8036_02
- D 0 - I - 0x00A01A 02:800A: 3A 80     .word _off032_captain_803A_03
- D 0 - I - 0x00A01C 02:800C: 3E 80     .word _off032_captain_803E_04
- D 0 - I - 0x00A01E 02:800E: 42 80     .word _off032_captain_8042_05
- D 0 - I - 0x00A020 02:8010: 46 80     .word _off032_captain_8046_06
- D 0 - I - 0x00A022 02:8012: 4A 80     .word _off032_captain_804A_07
- D 0 - I - 0x00A024 02:8014: 4E 80     .word _off032_captain_804E_08
- D 0 - I - 0x00A026 02:8016: 52 80     .word _off032_captain_8052_09
- D 0 - I - 0x00A028 02:8018: 56 80     .word _off032_captain_8056_0A
- D 0 - I - 0x00A02A 02:801A: 5A 80     .word _off032_captain_805A_0B
- D 0 - I - 0x00A02C 02:801C: 5E 80     .word _off032_captain_805E_0C
- D 0 - I - 0x00A02E 02:801E: 62 80     .word _off032_captain_8062_0D
- - - - - - 0x00A030 02:8020: 62 80     .word _off032_captain_8062_0E
- D 0 - I - 0x00A032 02:8022: 66 80     .word _off032_captain_8066_0F
- D 0 - I - 0x00A034 02:8024: 6A 80     .word _off032_captain_806A_10
- D 0 - I - 0x00A036 02:8026: 6E 80     .word _off032_captain_806E_11
- D 0 - I - 0x00A038 02:8028: 72 80     .word _off032_captain_8072_12
- D 0 - I - 0x00A03A 02:802A: 76 80     .word _off032_captain_8076_13
- D 0 - I - 0x00A03C 02:802C: 7A 80     .word _off032_captain_807A_14



_off032_captain_802E_00:
- D 0 - I - 0x00A03E 02:802E: 7E 80     .word off_captain_807E_00_not_swimming
- D 0 - I - 0x00A040 02:8030: CE 80     .word off_captain_80CE_00_swiming



_off032_captain_8032_01:
- D 0 - I - 0x00A042 02:8032: 82 80     .word off_captain_8082_01_not_swimming
- D 0 - I - 0x00A044 02:8034: D2 80     .word off_captain_80D2_01_swiming



_off032_captain_8036_02:
- D 0 - I - 0x00A046 02:8036: 86 80     .word off_captain_8086_02_not_swimming
- D 0 - I - 0x00A048 02:8038: D6 80     .word off_captain_80D6_02_swiming



_off032_captain_803A_03:
- D 0 - I - 0x00A04A 02:803A: 8A 80     .word off_captain_808A_03_not_swimming
- - - - - - 0x00A04C 02:803C: 8A 80     .word off_captain_808A_03_swiming



_off032_captain_803E_04:
- D 0 - I - 0x00A04E 02:803E: 8E 80     .word off_captain_808E_04_not_swimming
- D 0 - I - 0x00A050 02:8040: 8E 80     .word off_captain_808E_04_swiming



_off032_captain_8042_05:
- D 0 - I - 0x00A052 02:8042: 92 80     .word off_captain_8092_05_not_swimming
- D 0 - I - 0x00A054 02:8044: E6 80     .word off_captain_80E6_05_swiming



_off032_captain_8046_06:
- D 0 - I - 0x00A056 02:8046: 96 80     .word off_captain_8096_06_not_swimming
- - - - - - 0x00A058 02:8048: 96 80     .word off_captain_8096_06_swiming



_off032_captain_804A_07:
- D 0 - I - 0x00A05A 02:804A: 9A 80     .word off_captain_809A_07_not_swimming
- D 0 - I - 0x00A05C 02:804C: DA 80     .word off_captain_80DA_07_swiming



_off032_captain_804E_08:
- D 0 - I - 0x00A05E 02:804E: 9E 80     .word off_captain_809E_08_not_swimming
- - - - - - 0x00A060 02:8050: DE 80     .word off_captain_80DE_08_swiming



_off032_captain_8052_09:
- D 0 - I - 0x00A062 02:8052: A2 80     .word off_captain_80A2_09_not_swimming
- - - - - - 0x00A064 02:8054: E2 80     .word off_captain_80E2_09_swiming



_off032_captain_8056_0A:
- D 0 - I - 0x00A066 02:8056: A6 80     .word off_captain_80A6_0A_not_swimming
- D 0 - I - 0x00A068 02:8058: EA 80     .word off_captain_80EA_0A_swiming



_off032_captain_805A_0B:
- D 0 - I - 0x00A06A 02:805A: AA 80     .word off_captain_80AA_0B_not_swimming
- - - - - - 0x00A06C 02:805C: AA 80     .word off_captain_80AA_0B_swiming



_off032_captain_805E_0C:
- D 0 - I - 0x00A06E 02:805E: AE 80     .word off_captain_80AE_0C_not_swimming
- - - - - - 0x00A070 02:8060: AE 80     .word off_captain_80AE_0C_swiming



_off032_captain_8062_0D:
_off032_captain_8062_0E:
- D 0 - I - 0x00A072 02:8062: B2 80     .word off_captain_80B2_0D_not_swimming
- - - - - - 0x00A074 02:8064: B2 80     .word off_captain_80B2_0D_swiming



_off032_captain_8066_0F:
- D 0 - I - 0x00A076 02:8066: B6 80     .word off_captain_80B6_0F_not_swimming
- - - - - - 0x00A078 02:8068: B6 80     .word off_captain_80B6_0F_swiming



_off032_captain_806A_10:
- D 0 - I - 0x00A07A 02:806A: BA 80     .word off_captain_80BA_10_not_swimming
- - - - - - 0x00A07C 02:806C: BA 80     .word off_captain_80BA_10_swiming



_off032_captain_806E_11:
- D 0 - I - 0x00A07E 02:806E: BE 80     .word off_captain_80BE_11_not_swimming
- - - - - - 0x00A080 02:8070: BE 80     .word off_captain_80BE_11_swiming



_off032_captain_8072_12:
- D 0 - I - 0x00A082 02:8072: C2 80     .word off_captain_80C2_12_not_swimming
- - - - - - 0x00A084 02:8074: C2 80     .word off_captain_80C2_12_swiming



_off032_captain_8076_13:
- D 0 - I - 0x00A086 02:8076: C6 80     .word off_captain_80C6_13_not_swimming
- D 0 - I - 0x00A088 02:8078: C6 80     .word off_captain_80C6_13_swiming



_off032_captain_807A_14:
- D 0 - I - 0x00A08A 02:807A: CA 80     .word off_captain_80CA_14_not_swimming
- - - - - - 0x00A08C 02:807C: CA 80     .word off_captain_80CA_14_swiming



off_captain_807E_00_not_swimming:
- D 0 - I - 0x00A08E 02:807E: EE 80     .word _off047_captain_80EE_00_left
- D 0 - I - 0x00A090 02:8080: F7 80     .word _off047_captain_80F7_00_right



off_captain_8082_01_not_swimming:
- D 0 - I - 0x00A092 02:8082: 12 81     .word _off047_captain_8112_01_left
- D 0 - I - 0x00A094 02:8084: 36 81     .word _off047_captain_8136_01_right



off_captain_8086_02_not_swimming:
- D 0 - I - 0x00A096 02:8086: D8 81     .word _off047_captain_81D8_02_left
- D 0 - I - 0x00A098 02:8088: F3 81     .word _off047_captain_81F3_02_right



off_captain_808A_03_not_swimming:
off_captain_808A_03_swiming:
- D 0 - I - 0x00A09A 02:808A: 0E 82     .word _off047_captain_820E_03_left
- D 0 - I - 0x00A09C 02:808C: 20 82     .word _off047_captain_8220_03_right



off_captain_808E_04_not_swimming:
off_captain_808E_04_swiming:
- D 0 - I - 0x00A09E 02:808E: 32 82     .word _off047_captain_8232_04_left
- D 0 - I - 0x00A0A0 02:8090: 3B 82     .word _off047_captain_823B_04_right



off_captain_8092_05_not_swimming:
- D 0 - I - 0x00A0A2 02:8092: 90 81     .word _off047_captain_8190_05_left
- D 0 - I - 0x00A0A4 02:8094: 99 81     .word _off047_captain_8199_05_right



off_captain_8096_06_not_swimming:
off_captain_8096_06_swiming:
- D 0 - I - 0x00A0A6 02:8096: E6 82     .word _off047_captain_82E6_06_left
- D 0 - I - 0x00A0A8 02:8098: F8 82     .word _off047_captain_82F8_06_right



off_captain_809A_07_not_swimming:
- D 0 - I - 0x00A0AA 02:809A: 7A 82     .word _off047_captain_827A_07_left
- D 0 - I - 0x00A0AC 02:809C: 8C 82     .word _off047_captain_828C_07_right



off_captain_809E_08_not_swimming:
- D 0 - I - 0x00A0AE 02:809E: 0A 83     .word _off047_captain_830A_08_left
- D 0 - I - 0x00A0B0 02:80A0: 1C 83     .word _off047_captain_831C_08_right



off_captain_80A2_09_not_swimming:
- D 0 - I - 0x00A0B2 02:80A2: 9E 82     .word _off047_captain_829E_09_left
- D 0 - I - 0x00A0B4 02:80A4: B0 82     .word _off047_captain_82B0_09_right



off_captain_80A6_0A_not_swimming:
- D 0 - I - 0x00A0B6 02:80A6: 2E 83     .word _off047_captain_832E_0A_left
- D 0 - I - 0x00A0B8 02:80A8: 64 83     .word _off047_captain_8364_0A_right



off_captain_80AA_0B_not_swimming:
off_captain_80AA_0B_swiming:
- D 0 - I - 0x00A0BA 02:80AA: 4E 84     .word _off047_captain_844E_0B_left
- D 0 - I - 0x00A0BC 02:80AC: 69 84     .word _off047_captain_8469_0B_right



off_captain_80AE_0C_not_swimming:
off_captain_80AE_0C_swiming:
- D 0 - I - 0x00A0BE 02:80AE: 7E 81     .word _off047_captain_817E_0C_left
- D 0 - I - 0x00A0C0 02:80B0: 87 81     .word _off047_captain_8187_0C_right



off_captain_80B2_0D_not_swimming:
off_captain_80B2_0D_swiming:
- D 0 - I - 0x00A0C2 02:80B2: 44 82     .word _off047_captain_8244_0D_left
- D 0 - I - 0x00A0C4 02:80B4: 56 82     .word _off047_captain_8256_0D_right



off_captain_80B6_0F_not_swimming:
off_captain_80B6_0F_swiming:
- D 0 - I - 0x00A0C6 02:80B6: 9A 83     .word _off047_captain_839A_0F_left
- D 0 - I - 0x00A0C8 02:80B8: BE 83     .word _off047_captain_83BE_0F_right



off_captain_80BA_10_not_swimming:
off_captain_80BA_10_swiming:
- D 0 - I - 0x00A0CA 02:80BA: 68 82     .word _off047_captain_8268_10_left
- D 0 - I - 0x00A0CC 02:80BC: 71 82     .word _off047_captain_8271_10_right



off_captain_80BE_11_not_swimming:
off_captain_80BE_11_swiming:
- D 0 - I - 0x00A0CE 02:80BE: E2 83     .word _off047_captain_83E2_11_left
- D 0 - I - 0x00A0D0 02:80C0: 06 84     .word _off047_captain_8406_11_right



off_captain_80C2_12_not_swimming:
off_captain_80C2_12_swiming:
- D 0 - I - 0x00A0D2 02:80C2: 2A 84     .word _off047_captain_842A_12_left
- D 0 - I - 0x00A0D4 02:80C4: 3C 84     .word _off047_captain_843C_12_right



off_captain_80C6_13_not_swimming:
off_captain_80C6_13_swiming:
- D 0 - I - 0x00A0D6 02:80C6: 68 82     .word _off047_captain_8268_13_left
- D 0 - I - 0x00A0D8 02:80C8: 71 82     .word _off047_captain_8271_13_right



off_captain_80CA_14_not_swimming:
off_captain_80CA_14_swiming:
- D 0 - I - 0x00A0DA 02:80CA: 84 84     .word _off047_captain_8484_14_left
- D 0 - I - 0x00A0DC 02:80CC: A8 84     .word _off047_captain_84A8_14_right



off_captain_80CE_00_swiming:
- D 0 - I - 0x00A0DE 02:80CE: 00 81     .word _off047_captain_8100_00_left
- D 0 - I - 0x00A0E0 02:80D0: 09 81     .word _off047_captain_8109_00_right



off_captain_80D2_01_swiming:
- D 0 - I - 0x00A0E2 02:80D2: 5A 81     .word _off047_captain_815A_01_left
- D 0 - I - 0x00A0E4 02:80D4: 6C 81     .word _off047_captain_816C_01_right



off_captain_80D6_02_swiming:
- D 0 - I - 0x00A0E6 02:80D6: E1 81     .word _off047_captain_81E1_02_left
- D 0 - I - 0x00A0E8 02:80D8: FC 81     .word _off047_captain_81FC_02_right



off_captain_80DA_07_swiming:
- D 0 - I - 0x00A0EA 02:80DA: 83 82     .word _off047_captain_8283_07_left
- D 0 - I - 0x00A0EC 02:80DC: 95 82     .word _off047_captain_8295_07_right



off_captain_80DE_08_swiming:
- - - - - - 0x00A0EE 02:80DE: 13 83     .word _off047_captain_8313_08_left
- - - - - - 0x00A0F0 02:80E0: 25 83     .word _off047_captain_8325_08_right



off_captain_80E2_09_swiming:
- - - - - - 0x00A0F2 02:80E2: C2 82     .word _off047_captain_82C2_09_left
- - - - - - 0x00A0F4 02:80E4: C2 82     .word _off047_captain_82C2_09_right



off_captain_80E6_05_swiming:
- D 0 - I - 0x00A0F6 02:80E6: A2 81     .word _off047_captain_81A2_05_left
- D 0 - I - 0x00A0F8 02:80E8: A2 81     .word _off047_captain_81A2_05_right



off_captain_80EA_0A_swiming:
- D 0 - I - 0x00A0FA 02:80EA: 37 83     .word _off047_captain_8337_0A_left
- D 0 - I - 0x00A0FC 02:80EC: 6D 83     .word _off047_captain_836D_0A_right



_off047_captain_80EE_00_left:
loc_80EE_00_loop:
- D 0 - I - 0x00A0FE 02:80EE: 40        .byte con_chr_bank_spr + $40   ; 
- D 0 - I - 0x00A0FF 02:80EF: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00A100 02:80F0: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00A101 02:80F1: 00 80     .word _off058_spr_data_captain_0x00C010_00_00
- D 0 - I - 0x00A103 02:80F3: EE 80     .word loc_80EE_00_loop
- D 0 - I - 0x00A105 02:80F5: 01        .byte $01   ; 
- D 0 - I - 0x00A106 02:80F6: 03        .byte $03   ; 



_off047_captain_80F7_00_right:
loc_80F7_00_loop:
- D 0 - I - 0x00A107 02:80F7: 40        .byte con_chr_bank_spr + $40   ; 
- D 0 - I - 0x00A108 02:80F8: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00A109 02:80F9: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00A10A 02:80FA: 00 80     .word _off058_spr_data_captain_0x00C010_00_00
- D 0 - I - 0x00A10C 02:80FC: F7 80     .word loc_80F7_00_loop
- D 0 - I - 0x00A10E 02:80FE: 02        .byte $02   ; 
- D 0 - I - 0x00A10F 02:80FF: 03        .byte $03   ; 



_off047_captain_8100_00_left:
loc_8100_00_loop:
- D 0 - I - 0x00A110 02:8100: 44        .byte con_chr_bank_spr + $44   ; 
- D 0 - I - 0x00A111 02:8101: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00A112 02:8102: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00A113 02:8103: 1D 80     .word _off058_spr_data_captain_0x00C02D_00_00
- D 0 - I - 0x00A115 02:8105: 00 81     .word loc_8100_00_loop
- D 0 - I - 0x00A117 02:8107: 00        .byte $00   ; 
- D 0 - I - 0x00A118 02:8108: 08        .byte $08   ; 



_off047_captain_8109_00_right:
loc_8109_00_loop:
- D 0 - I - 0x00A119 02:8109: 44        .byte con_chr_bank_spr + $44   ; 
- D 0 - I - 0x00A11A 02:810A: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00A11B 02:810B: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00A11C 02:810C: 1D 80     .word _off058_spr_data_captain_0x00C02D_00_00
- D 0 - I - 0x00A11E 02:810E: 09 81     .word loc_8109_00_loop
- D 0 - I - 0x00A120 02:8110: 00        .byte $00   ; 
- D 0 - I - 0x00A121 02:8111: 08        .byte $08   ; 



_off047_captain_8112_01_left:
loc_8112_01_loop:
- D 0 - I - 0x00A122 02:8112: 40        .byte con_chr_bank_spr + $40   ; 
- D 0 - I - 0x00A123 02:8113: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00A124 02:8114: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00A125 02:8115: 28 80     .word _off058_spr_data_captain_0x00C038_01_00
- D 0 - I - 0x00A127 02:8117: 1B 81     .word loc_811B_01_next
- D 0 - I - 0x00A129 02:8119: 03        .byte $03   ; 
- D 0 - I - 0x00A12A 02:811A: 03        .byte $03   ; 



loc_811B_01_next:
- D 0 - I - 0x00A12B 02:811B: 40        .byte con_chr_bank_spr + $40   ; 
- D 0 - I - 0x00A12C 02:811C: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00A12D 02:811D: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00A12E 02:811E: 45 80     .word _off058_spr_data_captain_0x00C055_01_01
- D 0 - I - 0x00A130 02:8120: 24 81     .word loc_8124_01_next
- D 0 - I - 0x00A132 02:8122: 04        .byte $04   ; 
- D 0 - I - 0x00A133 02:8123: 03        .byte $03   ; 



loc_8124_01_next:
- D 0 - I - 0x00A134 02:8124: 40        .byte con_chr_bank_spr + $40   ; 
- D 0 - I - 0x00A135 02:8125: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00A136 02:8126: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00A137 02:8127: 5F 80     .word _off058_spr_data_captain_0x00C06F_01_02
- D 0 - I - 0x00A139 02:8129: 2D 81     .word loc_812D_01_next
- D 0 - I - 0x00A13B 02:812B: 03        .byte $03   ; 
- D 0 - I - 0x00A13C 02:812C: 03        .byte $03   ; 



loc_812D_01_next:
- D 0 - I - 0x00A13D 02:812D: 40        .byte con_chr_bank_spr + $40   ; 
- D 0 - I - 0x00A13E 02:812E: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00A13F 02:812F: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00A140 02:8130: 7C 80     .word _off058_spr_data_captain_0x00C08C_01_03
- D 0 - I - 0x00A142 02:8132: 12 81     .word loc_8112_01_loop
- D 0 - I - 0x00A144 02:8134: 04        .byte $04   ; 
- D 0 - I - 0x00A145 02:8135: 03        .byte $03   ; 



_off047_captain_8136_01_right:
loc_8136_01_loop:
- D 0 - I - 0x00A146 02:8136: 40        .byte con_chr_bank_spr + $40   ; 
- D 0 - I - 0x00A147 02:8137: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00A148 02:8138: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00A149 02:8139: 28 80     .word _off058_spr_data_captain_0x00C038_01_00
- D 0 - I - 0x00A14B 02:813B: 3F 81     .word loc_813F_01_next
- D 0 - I - 0x00A14D 02:813D: 05        .byte $05   ; 
- D 0 - I - 0x00A14E 02:813E: 03        .byte $03   ; 



loc_813F_01_next:
- D 0 - I - 0x00A14F 02:813F: 40        .byte con_chr_bank_spr + $40   ; 
- D 0 - I - 0x00A150 02:8140: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00A151 02:8141: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00A152 02:8142: 45 80     .word _off058_spr_data_captain_0x00C055_01_01
- D 0 - I - 0x00A154 02:8144: 48 81     .word loc_8148_01_next
- D 0 - I - 0x00A156 02:8146: 06        .byte $06   ; 
- D 0 - I - 0x00A157 02:8147: 03        .byte $03   ; 



loc_8148_01_next:
- D 0 - I - 0x00A158 02:8148: 40        .byte con_chr_bank_spr + $40   ; 
- D 0 - I - 0x00A159 02:8149: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00A15A 02:814A: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00A15B 02:814B: 5F 80     .word _off058_spr_data_captain_0x00C06F_01_02
- D 0 - I - 0x00A15D 02:814D: 51 81     .word loc_8151_01_next
- D 0 - I - 0x00A15F 02:814F: 05        .byte $05   ; 
- D 0 - I - 0x00A160 02:8150: 03        .byte $03   ; 



loc_8151_01_next:
- D 0 - I - 0x00A161 02:8151: 40        .byte con_chr_bank_spr + $40   ; 
- D 0 - I - 0x00A162 02:8152: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00A163 02:8153: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00A164 02:8154: 7C 80     .word _off058_spr_data_captain_0x00C08C_01_03
- D 0 - I - 0x00A166 02:8156: 36 81     .word loc_8136_01_loop
- D 0 - I - 0x00A168 02:8158: 06        .byte $06   ; 
- D 0 - I - 0x00A169 02:8159: 03        .byte $03   ; 



_off047_captain_815A_01_left:
loc_815A_01_loop:
- D 0 - I - 0x00A16A 02:815A: 44        .byte con_chr_bank_spr + $44   ; 
- D 0 - I - 0x00A16B 02:815B: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00A16C 02:815C: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00A16D 02:815D: 96 80     .word _off058_spr_data_captain_0x00C0A6_01_00
- D 0 - I - 0x00A16F 02:815F: 63 81     .word loc_8163_01_next
- D 0 - I - 0x00A171 02:8161: 00        .byte $00   ; 
- D 0 - I - 0x00A172 02:8162: 08        .byte $08   ; 



loc_8163_01_next:
- D 0 - I - 0x00A173 02:8163: 44        .byte con_chr_bank_spr + $44   ; 
- D 0 - I - 0x00A174 02:8164: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00A175 02:8165: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00A176 02:8166: 9E 80     .word _off058_spr_data_captain_0x00C0AE_01_01
- D 0 - I - 0x00A178 02:8168: 5A 81     .word loc_815A_01_loop
- D 0 - I - 0x00A17A 02:816A: 00        .byte $00   ; 
- D 0 - I - 0x00A17B 02:816B: 08        .byte $08   ; 



_off047_captain_816C_01_right:
loc_816C_01_loop:
- D 0 - I - 0x00A17C 02:816C: 44        .byte con_chr_bank_spr + $44   ; 
- D 0 - I - 0x00A17D 02:816D: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00A17E 02:816E: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00A17F 02:816F: 96 80     .word _off058_spr_data_captain_0x00C0A6_01_00
- D 0 - I - 0x00A181 02:8171: 75 81     .word loc_8175_01_next
- D 0 - I - 0x00A183 02:8173: 00        .byte $00   ; 
- D 0 - I - 0x00A184 02:8174: 08        .byte $08   ; 



loc_8175_01_next:
- D 0 - I - 0x00A185 02:8175: 44        .byte con_chr_bank_spr + $44   ; 
- D 0 - I - 0x00A186 02:8176: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00A187 02:8177: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00A188 02:8178: 9E 80     .word _off058_spr_data_captain_0x00C0AE_01_01
- D 0 - I - 0x00A18A 02:817A: 6C 81     .word loc_816C_01_loop
- D 0 - I - 0x00A18C 02:817C: 00        .byte $00   ; 
- D 0 - I - 0x00A18D 02:817D: 08        .byte $08   ; 



_off047_captain_817E_0C_left:
loc_817E_0C_loop:
- D 0 - I - 0x00A18E 02:817E: 43        .byte con_chr_bank_spr + $43   ; 
- D 0 - I - 0x00A18F 02:817F: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00A190 02:8180: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00A191 02:8181: A9 80     .word _off058_spr_data_captain_0x00C0B9_0C_00
- D 0 - I - 0x00A193 02:8183: 7E 81     .word loc_817E_0C_loop
- D 0 - I - 0x00A195 02:8185: 0D        .byte $0D   ; 
- D 0 - I - 0x00A196 02:8186: 03        .byte $03   ; 



_off047_captain_8187_0C_right:
loc_8187_0C_loop:
- D 0 - I - 0x00A197 02:8187: 43        .byte con_chr_bank_spr + $43   ; 
- D 0 - I - 0x00A198 02:8188: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00A199 02:8189: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00A19A 02:818A: A9 80     .word _off058_spr_data_captain_0x00C0B9_0C_00
- D 0 - I - 0x00A19C 02:818C: 87 81     .word loc_8187_0C_loop
- D 0 - I - 0x00A19E 02:818E: 0E        .byte $0E   ; 
- D 0 - I - 0x00A19F 02:818F: 03        .byte $03   ; 



_off047_captain_8190_05_left:
loc_8190_05_loop:
- D 0 - I - 0x00A1A0 02:8190: 42        .byte con_chr_bank_spr + $42   ; 
- D 0 - I - 0x00A1A1 02:8191: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00A1A2 02:8192: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00A1A3 02:8193: C3 80     .word _off058_spr_data_captain_0x00C0D3_05_00
- D 0 - I - 0x00A1A5 02:8195: 90 81     .word loc_8190_05_loop
- D 0 - I - 0x00A1A7 02:8197: 13        .byte $13   ; 
- D 0 - I - 0x00A1A8 02:8198: 05        .byte $05   ; 



_off047_captain_8199_05_right:
loc_8199_05_loop:
- D 0 - I - 0x00A1A9 02:8199: 42        .byte con_chr_bank_spr + $42   ; 
- D 0 - I - 0x00A1AA 02:819A: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00A1AB 02:819B: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00A1AC 02:819C: C3 80     .word _off058_spr_data_captain_0x00C0D3_05_00
- D 0 - I - 0x00A1AE 02:819E: 99 81     .word loc_8199_05_loop
- D 0 - I - 0x00A1B0 02:81A0: 14        .byte $14   ; 
- D 0 - I - 0x00A1B1 02:81A1: 05        .byte $05   ; 



_off047_captain_81A2_05_left:
_off047_captain_81A2_05_right:
- D 0 - I - 0x00A1B2 02:81A2: 44        .byte con_chr_bank_spr + $44   ; 
- D 0 - I - 0x00A1B3 02:81A3: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00A1B4 02:81A4: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00A1B5 02:81A5: D7 80     .word _off058_spr_data_captain_0x00C0E7_05_00
- D 0 - I - 0x00A1B7 02:81A7: AB 81     .word loc_81AB_05_next
- D 0 - I - 0x00A1B9 02:81A9: 00        .byte $00   ; 
- D 0 - I - 0x00A1BA 02:81AA: 00        .byte $00   ; 



loc_81AB_05_next:
- D 0 - I - 0x00A1BB 02:81AB: 44        .byte con_chr_bank_spr + $44   ; 
- D 0 - I - 0x00A1BC 02:81AC: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00A1BD 02:81AD: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00A1BE 02:81AE: DF 80     .word _off058_spr_data_captain_0x00C0EF_05_01
- D 0 - I - 0x00A1C0 02:81B0: B4 81     .word loc_81B4_05_next
- D 0 - I - 0x00A1C2 02:81B2: 00        .byte $00   ; 
- D 0 - I - 0x00A1C3 02:81B3: 00        .byte $00   ; 



loc_81B4_05_next:
- D 0 - I - 0x00A1C4 02:81B4: 44        .byte con_chr_bank_spr + $44   ; 
- D 0 - I - 0x00A1C5 02:81B5: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00A1C6 02:81B6: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00A1C7 02:81B7: E4 80     .word _off058_spr_data_captain_0x00C0F4_05_02
- D 0 - I - 0x00A1C9 02:81B9: BD 81     .word loc_81BD_05_next
- D 0 - I - 0x00A1CB 02:81BB: 00        .byte $00   ; 
- D 0 - I - 0x00A1CC 02:81BC: 00        .byte $00   ; 



loc_81BD_05_next:
loc_81BD_05_loop:
- D 0 - I - 0x00A1CD 02:81BD: 44        .byte con_chr_bank_spr + $44   ; 
- D 0 - I - 0x00A1CE 02:81BE: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00A1CF 02:81BF: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00A1D0 02:81C0: E9 80     .word _off058_spr_data_captain_0x00C0F9_05_03
- D 0 - I - 0x00A1D2 02:81C2: C6 81     .word loc_81C6_05_next
- D 0 - I - 0x00A1D4 02:81C4: 00        .byte $00   ; 
- D 0 - I - 0x00A1D5 02:81C5: 00        .byte $00   ; 



loc_81C6_05_next:
- D 0 - I - 0x00A1D6 02:81C6: 44        .byte con_chr_bank_spr + $44   ; 
- D 0 - I - 0x00A1D7 02:81C7: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00A1D8 02:81C8: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00A1D9 02:81C9: EE 80     .word _off058_spr_data_captain_0x00C0FE_05_04
- D 0 - I - 0x00A1DB 02:81CB: CF 81     .word loc_81CF_05_next
- D 0 - I - 0x00A1DD 02:81CD: 00        .byte $00   ; 
- D 0 - I - 0x00A1DE 02:81CE: 00        .byte $00   ; 



loc_81CF_05_next:
- D 0 - I - 0x00A1DF 02:81CF: 44        .byte con_chr_bank_spr + $44   ; 
- D 0 - I - 0x00A1E0 02:81D0: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00A1E1 02:81D1: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00A1E2 02:81D2: F6 80     .word _off058_spr_data_captain_0x00C106_05_05
- D 0 - I - 0x00A1E4 02:81D4: BD 81     .word loc_81BD_05_loop
- D 0 - I - 0x00A1E6 02:81D6: 00        .byte $00   ; 
- D 0 - I - 0x00A1E7 02:81D7: 00        .byte $00   ; 



_off047_captain_81D8_02_left:
loc_81D8_02_loop:
- D 0 - I - 0x00A1E8 02:81D8: 43        .byte con_chr_bank_spr + $43   ; 
- D 0 - I - 0x00A1E9 02:81D9: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00A1EA 02:81DA: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00A1EB 02:81DB: FE 80     .word _off058_spr_data_captain_0x00C10E_02_00
- D 0 - I - 0x00A1ED 02:81DD: D8 81     .word loc_81D8_02_loop
- D 0 - I - 0x00A1EF 02:81DF: 07        .byte $07   ; 
- D 0 - I - 0x00A1F0 02:81E0: 06        .byte $06   ; 



_off047_captain_81E1_02_left:
- D 0 - I - 0x00A1F1 02:81E1: 43        .byte con_chr_bank_spr + $43   ; 
- D 0 - I - 0x00A1F2 02:81E2: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00A1F3 02:81E3: 03        .byte $03   ; next animation delay
- D 0 - I - 0x00A1F4 02:81E4: 1B 81     .word _off058_spr_data_captain_0x00C12B_02_00
- D 0 - I - 0x00A1F6 02:81E6: EA 81     .word loc_81EA_02_next
- D 0 - I - 0x00A1F8 02:81E8: 07        .byte $07   ; 
- D 0 - I - 0x00A1F9 02:81E9: 06        .byte $06   ; 



loc_81EA_02_next:
loc_81EA_02_loop:
- D 0 - I - 0x00A1FA 02:81EA: 43        .byte con_chr_bank_spr + $43   ; 
- D 0 - I - 0x00A1FB 02:81EB: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00A1FC 02:81EC: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00A1FD 02:81ED: 35 81     .word _off058_spr_data_captain_0x00C145_02_01
- - - - - - 0x00A1FF 02:81EF: EA 81     .word loc_81EA_02_loop
- D 0 - I - 0x00A201 02:81F1: 07        .byte $07   ; 
- D 0 - I - 0x00A202 02:81F2: 06        .byte $06   ; 



_off047_captain_81F3_02_right:
loc_81F3_02_loop:
- D 0 - I - 0x00A203 02:81F3: 43        .byte con_chr_bank_spr + $43   ; 
- D 0 - I - 0x00A204 02:81F4: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00A205 02:81F5: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00A206 02:81F6: FE 80     .word _off058_spr_data_captain_0x00C10E_02_00
- D 0 - I - 0x00A208 02:81F8: F3 81     .word loc_81F3_02_loop
- D 0 - I - 0x00A20A 02:81FA: 08        .byte $08   ; 
- D 0 - I - 0x00A20B 02:81FB: 06        .byte $06   ; 



_off047_captain_81FC_02_right:
- D 0 - I - 0x00A20C 02:81FC: 43        .byte con_chr_bank_spr + $43   ; 
- D 0 - I - 0x00A20D 02:81FD: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00A20E 02:81FE: 03        .byte $03   ; next animation delay
- D 0 - I - 0x00A20F 02:81FF: 1B 81     .word _off058_spr_data_captain_0x00C12B_02_00
- D 0 - I - 0x00A211 02:8201: 05 82     .word loc_8205_02_next
- D 0 - I - 0x00A213 02:8203: 08        .byte $08   ; 
- D 0 - I - 0x00A214 02:8204: 06        .byte $06   ; 



loc_8205_02_next:
loc_8205_02_loop:
- D 0 - I - 0x00A215 02:8205: 43        .byte con_chr_bank_spr + $43   ; 
- D 0 - I - 0x00A216 02:8206: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00A217 02:8207: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00A218 02:8208: 35 81     .word _off058_spr_data_captain_0x00C145_02_01
- - - - - - 0x00A21A 02:820A: 05 82     .word loc_8205_02_loop
- D 0 - I - 0x00A21C 02:820C: 08        .byte $08   ; 
- D 0 - I - 0x00A21D 02:820D: 06        .byte $06   ; 



_off047_captain_820E_03_left:
- D 0 - I - 0x00A21E 02:820E: 41        .byte con_chr_bank_spr + $41   ; 
- D 0 - I - 0x00A21F 02:820F: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00A220 02:8210: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00A221 02:8211: 49 81     .word _off058_spr_data_captain_0x00C159_03_00
- D 0 - I - 0x00A223 02:8213: 17 82     .word loc_8217_03_next
- D 0 - I - 0x00A225 02:8215: 09        .byte $09   ; 
- D 0 - I - 0x00A226 02:8216: 03        .byte $03   ; 



loc_8217_03_next:
loc_8217_03_loop:
- D 0 - I - 0x00A227 02:8217: 41        .byte con_chr_bank_spr + $41   ; 
- D 0 - I - 0x00A228 02:8218: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00A229 02:8219: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00A22A 02:821A: 66 81     .word _off058_spr_data_captain_0x00C176_03_01
- D 0 - I - 0x00A22C 02:821C: 17 82     .word loc_8217_03_loop
- - - - - - 0x00A22E 02:821E: 09        .byte $09   ; 
- D 0 - I - 0x00A22F 02:821F: 03        .byte $03   ; 



_off047_captain_8220_03_right:
- D 0 - I - 0x00A230 02:8220: 41        .byte con_chr_bank_spr + $41   ; 
- D 0 - I - 0x00A231 02:8221: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00A232 02:8222: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00A233 02:8223: 49 81     .word _off058_spr_data_captain_0x00C159_03_00
- D 0 - I - 0x00A235 02:8225: 29 82     .word loc_8229_03_next
- D 0 - I - 0x00A237 02:8227: 0A        .byte $0A   ; 
- D 0 - I - 0x00A238 02:8228: 03        .byte $03   ; 



loc_8229_03_next:
loc_8229_03_loop:
- D 0 - I - 0x00A239 02:8229: 41        .byte con_chr_bank_spr + $41   ; 
- D 0 - I - 0x00A23A 02:822A: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00A23B 02:822B: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00A23C 02:822C: 66 81     .word _off058_spr_data_captain_0x00C176_03_01
- D 0 - I - 0x00A23E 02:822E: 29 82     .word loc_8229_03_loop
- - - - - - 0x00A240 02:8230: 0A        .byte $0A   ; 
- D 0 - I - 0x00A241 02:8231: 03        .byte $03   ; 



_off047_captain_8232_04_left:
loc_8232_04_loop:
- D 0 - I - 0x00A242 02:8232: 43        .byte con_chr_bank_spr + $43   ; 
- D 0 - I - 0x00A243 02:8233: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00A244 02:8234: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00A245 02:8235: 80 81     .word _off058_spr_data_captain_0x00C190_04_00
- D 0 - I - 0x00A247 02:8237: 32 82     .word loc_8232_04_loop
- D 0 - I - 0x00A249 02:8239: 0B        .byte $0B   ; 
- D 0 - I - 0x00A24A 02:823A: 07        .byte $07   ; 



_off047_captain_823B_04_right:
loc_823B_04_loop:
- D 0 - I - 0x00A24B 02:823B: 43        .byte con_chr_bank_spr + $43   ; 
- D 0 - I - 0x00A24C 02:823C: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00A24D 02:823D: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00A24E 02:823E: 80 81     .word _off058_spr_data_captain_0x00C190_04_00
- D 0 - I - 0x00A250 02:8240: 3B 82     .word loc_823B_04_loop
- D 0 - I - 0x00A252 02:8242: 0C        .byte $0C   ; 
- D 0 - I - 0x00A253 02:8243: 07        .byte $07   ; 



_off047_captain_8244_0D_left:
- D 0 - I - 0x00A254 02:8244: 45        .byte con_chr_bank_spr + $45   ; 
- D 0 - I - 0x00A255 02:8245: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00A256 02:8246: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00A257 02:8247: 97 81     .word _off058_spr_data_captain_0x00C1A7_0D_00
- D 0 - I - 0x00A259 02:8249: 4D 82     .word loc_824D_0D_next
- D 0 - I - 0x00A25B 02:824B: 0F        .byte $0F   ; 
- D 0 - I - 0x00A25C 02:824C: 03        .byte $03   ; 



loc_824D_0D_next:
loc_824D_0D_loop:
- D 0 - I - 0x00A25D 02:824D: 41        .byte con_chr_bank_spr + $41   ; 
- D 0 - I - 0x00A25E 02:824E: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00A25F 02:824F: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00A260 02:8250: B7 81     .word _off058_spr_data_captain_0x00C1C7_0D_01
- D 0 - I - 0x00A262 02:8252: 4D 82     .word loc_824D_0D_loop
- - - - - - 0x00A264 02:8254: 00        .byte $00   ; 
- D 0 - I - 0x00A265 02:8255: 03        .byte $03   ; 



_off047_captain_8256_0D_right:
- D 0 - I - 0x00A266 02:8256: 45        .byte con_chr_bank_spr + $45   ; 
- D 0 - I - 0x00A267 02:8257: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00A268 02:8258: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00A269 02:8259: 97 81     .word _off058_spr_data_captain_0x00C1A7_0D_00
- D 0 - I - 0x00A26B 02:825B: 5F 82     .word loc_825F_0D_next
- D 0 - I - 0x00A26D 02:825D: 10        .byte $10   ; 
- D 0 - I - 0x00A26E 02:825E: 03        .byte $03   ; 



loc_825F_0D_next:
loc_825F_0D_loop:
- D 0 - I - 0x00A26F 02:825F: 41        .byte con_chr_bank_spr + $41   ; 
- D 0 - I - 0x00A270 02:8260: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00A271 02:8261: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00A272 02:8262: B7 81     .word _off058_spr_data_captain_0x00C1C7_0D_01
- D 0 - I - 0x00A274 02:8264: 5F 82     .word loc_825F_0D_loop
- - - - - - 0x00A276 02:8266: 00        .byte $00   ; 
- D 0 - I - 0x00A277 02:8267: 03        .byte $03   ; 



_off047_captain_8268_10_left:
_off047_captain_8268_13_left:
loc_8268_10_loop:
- D 0 - I - 0x00A278 02:8268: 44        .byte con_chr_bank_spr + $44   ; 
- D 0 - I - 0x00A279 02:8269: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00A27A 02:826A: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00A27B 02:826B: D7 81     .word _off058_spr_data_captain_0x00C1E7_10_00
- D 0 - I - 0x00A27D 02:826D: 68 82     .word loc_8268_10_loop
- D 0 - I - 0x00A27F 02:826F: 11        .byte $11   ; 
- D 0 - I - 0x00A280 02:8270: 25        .byte $25   ; 



_off047_captain_8271_10_right:
_off047_captain_8271_13_right:
loc_8271_10_loop:
- D 0 - I - 0x00A281 02:8271: 44        .byte con_chr_bank_spr + $44   ; 
- D 0 - I - 0x00A282 02:8272: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00A283 02:8273: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00A284 02:8274: D7 81     .word _off058_spr_data_captain_0x00C1E7_10_00
- D 0 - I - 0x00A286 02:8276: 71 82     .word loc_8271_10_loop
- D 0 - I - 0x00A288 02:8278: 12        .byte $12   ; 
- D 0 - I - 0x00A289 02:8279: 25        .byte $25   ; 



_off047_captain_827A_07_left:
loc_827A_07_loop:
- D 0 - I - 0x00A28A 02:827A: 46        .byte con_chr_bank_spr + $46   ; 
- D 0 - I - 0x00A28B 02:827B: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00A28C 02:827C: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00A28D 02:827D: 33 82     .word _off058_spr_data_captain_0x00C243_07_00
- D 0 - I - 0x00A28F 02:827F: 7A 82     .word loc_827A_07_loop
- D 0 - I - 0x00A291 02:8281: 00        .byte $00   ; 
- D 0 - I - 0x00A292 02:8282: 00        .byte $00   ; 



_off047_captain_8283_07_left:
loc_8283_07_loop:
- D 0 - I - 0x00A293 02:8283: 44        .byte con_chr_bank_spr + $44   ; 
- D 0 - I - 0x00A294 02:8284: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00A295 02:8285: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00A296 02:8286: 4D 82     .word _off058_spr_data_captain_0x00C25D_07_00
- - - - - - 0x00A298 02:8288: 83 82     .word loc_8283_07_loop
- D 0 - I - 0x00A29A 02:828A: 00        .byte $00   ; 
- D 0 - I - 0x00A29B 02:828B: 00        .byte $00   ; 



_off047_captain_828C_07_right:
loc_828C_07_loop:
- D 0 - I - 0x00A29C 02:828C: 46        .byte con_chr_bank_spr + $46   ; 
- D 0 - I - 0x00A29D 02:828D: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00A29E 02:828E: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00A29F 02:828F: 33 82     .word _off058_spr_data_captain_0x00C243_07_00
- D 0 - I - 0x00A2A1 02:8291: 8C 82     .word loc_828C_07_loop
- D 0 - I - 0x00A2A3 02:8293: 00        .byte $00   ; 
- D 0 - I - 0x00A2A4 02:8294: 00        .byte $00   ; 



_off047_captain_8295_07_right:
loc_8295_07_loop:
- D 0 - I - 0x00A2A5 02:8295: 44        .byte con_chr_bank_spr + $44   ; 
- D 0 - I - 0x00A2A6 02:8296: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00A2A7 02:8297: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00A2A8 02:8298: 4D 82     .word _off058_spr_data_captain_0x00C25D_07_00
- D 0 - I - 0x00A2AA 02:829A: 95 82     .word loc_8295_07_loop
- D 0 - I - 0x00A2AC 02:829C: 00        .byte $00   ; 
- D 0 - I - 0x00A2AD 02:829D: 00        .byte $00   ; 



_off047_captain_829E_09_left:
- D 0 - I - 0x00A2AE 02:829E: 46        .byte con_chr_bank_spr + $46   ; 
- D 0 - I - 0x00A2AF 02:829F: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00A2B0 02:82A0: 10        .byte $10   ; next animation delay
- D 0 - I - 0x00A2B1 02:82A1: 58 82     .word _off058_spr_data_captain_0x00C268_09_00
- D 0 - I - 0x00A2B3 02:82A3: A7 82     .word loc_82A7_09_next
- D 0 - I - 0x00A2B5 02:82A5: 00        .byte $00   ; 
- D 0 - I - 0x00A2B6 02:82A6: 00        .byte $00   ; 



loc_82A7_09_next:
loc_82A7_09_loop:
- D 0 - I - 0x00A2B7 02:82A7: 46        .byte con_chr_bank_spr + $46   ; 
- D 0 - I - 0x00A2B8 02:82A8: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00A2B9 02:82A9: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00A2BA 02:82AA: 6F 82     .word _off058_spr_data_captain_0x00C27F_09_01
- D 0 - I - 0x00A2BC 02:82AC: A7 82     .word loc_82A7_09_loop
- D 0 - I - 0x00A2BE 02:82AE: 00        .byte $00   ; 
- D 0 - I - 0x00A2BF 02:82AF: 00        .byte $00   ; 



_off047_captain_82B0_09_right:
- D 0 - I - 0x00A2C0 02:82B0: 46        .byte con_chr_bank_spr + $46   ; 
- D 0 - I - 0x00A2C1 02:82B1: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00A2C2 02:82B2: 10        .byte $10   ; next animation delay
- D 0 - I - 0x00A2C3 02:82B3: 58 82     .word _off058_spr_data_captain_0x00C268_09_00
- D 0 - I - 0x00A2C5 02:82B5: B9 82     .word loc_82B9_09_next
- D 0 - I - 0x00A2C7 02:82B7: 00        .byte $00   ; 
- D 0 - I - 0x00A2C8 02:82B8: 00        .byte $00   ; 



loc_82B9_09_next:
loc_82B9_09_loop:
- D 0 - I - 0x00A2C9 02:82B9: 46        .byte con_chr_bank_spr + $46   ; 
- D 0 - I - 0x00A2CA 02:82BA: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00A2CB 02:82BB: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00A2CC 02:82BC: 6F 82     .word _off058_spr_data_captain_0x00C27F_09_01
- D 0 - I - 0x00A2CE 02:82BE: B9 82     .word loc_82B9_09_loop
- D 0 - I - 0x00A2D0 02:82C0: 00        .byte $00   ; 
- D 0 - I - 0x00A2D1 02:82C1: 00        .byte $00   ; 



_off047_captain_82C2_09_left:
_off047_captain_82C2_09_right:
- - - - - - 0x00A2D2 02:82C2: 44        .byte con_chr_bank_spr + $44   ; 
- - - - - - 0x00A2D3 02:82C3: 00        .byte $00   ; spr_A flip
- - - - - - 0x00A2D4 02:82C4: 04        .byte $04   ; next animation delay
- - - - - - 0x00A2D5 02:82C5: 86 82     .word _off058_spr_data_captain_0x00C296_09_00
- - - - - - 0x00A2D7 02:82C7: CB 82     .word loc_82CB_09_next
- - - - - - 0x00A2D9 02:82C9: 00        .byte $00   ; 
- - - - - - 0x00A2DA 02:82CA: 00        .byte $00   ; 



loc_82CB_09_next:
- - - - - - 0x00A2DB 02:82CB: 44        .byte con_chr_bank_spr + $44   ; 
- - - - - - 0x00A2DC 02:82CC: 00        .byte $00   ; spr_A flip
- - - - - - 0x00A2DD 02:82CD: 04        .byte $04   ; next animation delay
- - - - - - 0x00A2DE 02:82CE: 8E 82     .word _off058_spr_data_captain_0x00C29E_09_01
- - - - - - 0x00A2E0 02:82D0: D4 82     .word loc_82D4_09_next
- - - - - - 0x00A2E2 02:82D2: 00        .byte $00   ; 
- - - - - - 0x00A2E3 02:82D3: 00        .byte $00   ; 



loc_82D4_09_next:
- - - - - - 0x00A2E4 02:82D4: 44        .byte con_chr_bank_spr + $44   ; 
- - - - - - 0x00A2E5 02:82D5: 00        .byte $00   ; spr_A flip
- - - - - - 0x00A2E6 02:82D6: 04        .byte $04   ; next animation delay
- - - - - - 0x00A2E7 02:82D7: 93 82     .word _off058_spr_data_captain_0x00C2A3_09_02
- - - - - - 0x00A2E9 02:82D9: DD 82     .word loc_82DD_09_next
- - - - - - 0x00A2EB 02:82DB: 00        .byte $00   ; 
- - - - - - 0x00A2EC 02:82DC: 00        .byte $00   ; 



loc_82DD_09_next:
loc_82DD_09_loop:
- - - - - - 0x00A2ED 02:82DD: 55        .byte con_chr_bank_spr + $55   ; 
- - - - - - 0x00A2EE 02:82DE: 00        .byte $00   ; spr_A flip
- - - - - - 0x00A2EF 02:82DF: 04        .byte $04   ; next animation delay
- - - - - - 0x00A2F0 02:82E0: 98 82     .word _off058_spr_data_captain_0x00C2A8_09_03
- - - - - - 0x00A2F2 02:82E2: DD 82     .word loc_82DD_09_loop
- - - - - - 0x00A2F4 02:82E4: 00        .byte $00   ; 
- - - - - - 0x00A2F5 02:82E5: 00        .byte $00   ; 



_off047_captain_82E6_06_left:
- D 0 - I - 0x00A2F6 02:82E6: 42        .byte con_chr_bank_spr + $42   ; 
- D 0 - I - 0x00A2F7 02:82E7: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00A2F8 02:82E8: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00A2F9 02:82E9: 9D 82     .word _off058_spr_data_captain_0x00C2AD_06_00
- D 0 - I - 0x00A2FB 02:82EB: EF 82     .word loc_82EF_06_next
- D 0 - I - 0x00A2FD 02:82ED: 15        .byte $15   ; 
- D 0 - I - 0x00A2FE 02:82EE: 05        .byte $05   ; 



loc_82EF_06_next:
loc_82EF_06_loop:
- D 0 - I - 0x00A2FF 02:82EF: 42        .byte con_chr_bank_spr + $42   ; 
- D 0 - I - 0x00A300 02:82F0: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00A301 02:82F1: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00A302 02:82F2: B7 82     .word _off058_spr_data_captain_0x00C2C7_06_01
- D 0 - I - 0x00A304 02:82F4: EF 82     .word loc_82EF_06_loop
- D 0 - I - 0x00A306 02:82F6: 15        .byte $15   ; 
- D 0 - I - 0x00A307 02:82F7: 05        .byte $05   ; 



_off047_captain_82F8_06_right:
- D 0 - I - 0x00A308 02:82F8: 42        .byte con_chr_bank_spr + $42   ; 
- D 0 - I - 0x00A309 02:82F9: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00A30A 02:82FA: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00A30B 02:82FB: 9D 82     .word _off058_spr_data_captain_0x00C2AD_06_00
- D 0 - I - 0x00A30D 02:82FD: 01 83     .word loc_8301_06_next
- D 0 - I - 0x00A30F 02:82FF: 16        .byte $16   ; 
- D 0 - I - 0x00A310 02:8300: 05        .byte $05   ; 



loc_8301_06_next:
loc_8301_06_loop:
- D 0 - I - 0x00A311 02:8301: 42        .byte con_chr_bank_spr + $42   ; 
- D 0 - I - 0x00A312 02:8302: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00A313 02:8303: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00A314 02:8304: B7 82     .word _off058_spr_data_captain_0x00C2C7_06_01
- D 0 - I - 0x00A316 02:8306: 01 83     .word loc_8301_06_loop
- D 0 - I - 0x00A318 02:8308: 16        .byte $16   ; 
- D 0 - I - 0x00A319 02:8309: 05        .byte $05   ; 



_off047_captain_830A_08_left:
loc_830A_08_loop:
- D 0 - I - 0x00A31A 02:830A: 46        .byte con_chr_bank_spr + $46   ; 
- D 0 - I - 0x00A31B 02:830B: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00A31C 02:830C: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00A31D 02:830D: CE 82     .word _off058_spr_data_captain_0x00C2DE_08_00
- D 0 - I - 0x00A31F 02:830F: 0A 83     .word loc_830A_08_loop
- D 0 - I - 0x00A321 02:8311: 00        .byte $00   ; 
- D 0 - I - 0x00A322 02:8312: 00        .byte $00   ; 



_off047_captain_8313_08_left:
loc_8313_08_loop:
- - - - - - 0x00A323 02:8313: 44        .byte con_chr_bank_spr + $44   ; 
- - - - - - 0x00A324 02:8314: 00        .byte $00   ; spr_A flip
- - - - - - 0x00A325 02:8315: 08        .byte $08   ; next animation delay
- - - - - - 0x00A326 02:8316: EE 82     .word _off058_spr_data_captain_0x00C2FE_08_00
- - - - - - 0x00A328 02:8318: 13 83     .word loc_8313_08_loop
- - - - - - 0x00A32A 02:831A: 00        .byte $00   ; 
- - - - - - 0x00A32B 02:831B: 00        .byte $00   ; 



_off047_captain_831C_08_right:
loc_831C_08_loop:
- D 0 - I - 0x00A32C 02:831C: 46        .byte con_chr_bank_spr + $46   ; 
- D 0 - I - 0x00A32D 02:831D: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00A32E 02:831E: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00A32F 02:831F: CE 82     .word _off058_spr_data_captain_0x00C2DE_08_00
- D 0 - I - 0x00A331 02:8321: 1C 83     .word loc_831C_08_loop
- D 0 - I - 0x00A333 02:8323: 00        .byte $00   ; 
- D 0 - I - 0x00A334 02:8324: 00        .byte $00   ; 



_off047_captain_8325_08_right:
loc_8325_08_loop:
- - - - - - 0x00A335 02:8325: 44        .byte con_chr_bank_spr + $44   ; 
- - - - - - 0x00A336 02:8326: 80        .byte $80   ; spr_A flip
- - - - - - 0x00A337 02:8327: 08        .byte $08   ; next animation delay
- - - - - - 0x00A338 02:8328: EE 82     .word _off058_spr_data_captain_0x00C2FE_08_00
- - - - - - 0x00A33A 02:832A: 25 83     .word loc_8325_08_loop
- - - - - - 0x00A33C 02:832C: 00        .byte $00   ; 
- - - - - - 0x00A33D 02:832D: 00        .byte $00   ; 



_off047_captain_832E_0A_left:
loc_832E_0A_loop:
- D 0 - I - 0x00A33E 02:832E: 42        .byte con_chr_bank_spr + $42   ; 
- D 0 - I - 0x00A33F 02:832F: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00A340 02:8330: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00A341 02:8331: C3 80     .word _off058_spr_data_captain_0x00C0D3_0A_00
- D 0 - I - 0x00A343 02:8333: 2E 83     .word loc_832E_0A_loop
- D 0 - I - 0x00A345 02:8335: 13        .byte $13   ; 
- D 0 - I - 0x00A346 02:8336: 05        .byte $05   ; 



_off047_captain_8337_0A_left:
- D 0 - I - 0x00A347 02:8337: 44        .byte con_chr_bank_spr + $44   ; 
- - - - - - 0x00A348 02:8338: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00A349 02:8339: 01        .byte $01   ; next animation delay
- D 0 - I - 0x00A34A 02:833A: 98 82     .word _off058_spr_data_captain_0x00C2A8_0A_00
- D 0 - I - 0x00A34C 02:833C: 40 83     .word loc_8340_0A_next
- D 0 - I - 0x00A34E 02:833E: 00        .byte $00   ; 
- D 0 - I - 0x00A34F 02:833F: 00        .byte $00   ; 



loc_8340_0A_next:
- D 0 - I - 0x00A350 02:8340: 44        .byte con_chr_bank_spr + $44   ; 
- D 0 - I - 0x00A351 02:8341: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00A352 02:8342: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00A353 02:8343: 86 82     .word _off058_spr_data_captain_0x00C296_0A_01
- D 0 - I - 0x00A355 02:8345: 49 83     .word loc_8349_0A_next
- D 0 - I - 0x00A357 02:8347: 00        .byte $00   ; 
- D 0 - I - 0x00A358 02:8348: 00        .byte $00   ; 



loc_8349_0A_next:
- D 0 - I - 0x00A359 02:8349: 44        .byte con_chr_bank_spr + $44   ; 
- D 0 - I - 0x00A35A 02:834A: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00A35B 02:834B: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00A35C 02:834C: 8E 82     .word _off058_spr_data_captain_0x00C29E_0A_02
- D 0 - I - 0x00A35E 02:834E: 52 83     .word loc_8352_0A_next
- D 0 - I - 0x00A360 02:8350: 00        .byte $00   ; 
- D 0 - I - 0x00A361 02:8351: 00        .byte $00   ; 



loc_8352_0A_next:
- D 0 - I - 0x00A362 02:8352: 44        .byte con_chr_bank_spr + $44   ; 
- D 0 - I - 0x00A363 02:8353: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00A364 02:8354: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00A365 02:8355: 93 82     .word _off058_spr_data_captain_0x00C2A3_0A_03
- D 0 - I - 0x00A367 02:8357: 5B 83     .word loc_835B_0A_next
- D 0 - I - 0x00A369 02:8359: 00        .byte $00   ; 
- D 0 - I - 0x00A36A 02:835A: 00        .byte $00   ; 



loc_835B_0A_next:
loc_835B_0A_loop:
- D 0 - I - 0x00A36B 02:835B: 44        .byte con_chr_bank_spr + $44   ; 
- D 0 - I - 0x00A36C 02:835C: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00A36D 02:835D: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00A36E 02:835E: F9 82     .word _off058_spr_data_captain_0x00C309_0A_04
- - - - - - 0x00A370 02:8360: 5B 83     .word loc_835B_0A_loop
- D 0 - I - 0x00A372 02:8362: 00        .byte $00   ; 
- D 0 - I - 0x00A373 02:8363: 00        .byte $00   ; 



_off047_captain_8364_0A_right:
loc_8364_0A_loop:
- D 0 - I - 0x00A374 02:8364: 42        .byte con_chr_bank_spr + $42   ; 
- D 0 - I - 0x00A375 02:8365: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00A376 02:8366: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00A377 02:8367: C3 80     .word _off058_spr_data_captain_0x00C0D3_0A_00
- D 0 - I - 0x00A379 02:8369: 64 83     .word loc_8364_0A_loop
- D 0 - I - 0x00A37B 02:836B: 14        .byte $14   ; 
- D 0 - I - 0x00A37C 02:836C: 05        .byte $05   ; 



_off047_captain_836D_0A_right:
- D 0 - I - 0x00A37D 02:836D: 44        .byte con_chr_bank_spr + $44   ; 
- - - - - - 0x00A37E 02:836E: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00A37F 02:836F: 01        .byte $01   ; next animation delay
- D 0 - I - 0x00A380 02:8370: 98 82     .word _off058_spr_data_captain_0x00C2A8_0A_00
- D 0 - I - 0x00A382 02:8372: 76 83     .word loc_8376_0A_next
- D 0 - I - 0x00A384 02:8374: 00        .byte $00   ; 
- D 0 - I - 0x00A385 02:8375: 00        .byte $00   ; 



loc_8376_0A_next:
- D 0 - I - 0x00A386 02:8376: 44        .byte con_chr_bank_spr + $44   ; 
- D 0 - I - 0x00A387 02:8377: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00A388 02:8378: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00A389 02:8379: 86 82     .word _off058_spr_data_captain_0x00C296_0A_01
- D 0 - I - 0x00A38B 02:837B: 7F 83     .word loc_837F_0A_next
- D 0 - I - 0x00A38D 02:837D: 00        .byte $00   ; 
- D 0 - I - 0x00A38E 02:837E: 00        .byte $00   ; 



loc_837F_0A_next:
- D 0 - I - 0x00A38F 02:837F: 44        .byte con_chr_bank_spr + $44   ; 
- D 0 - I - 0x00A390 02:8380: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00A391 02:8381: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00A392 02:8382: 8E 82     .word _off058_spr_data_captain_0x00C29E_0A_02
- D 0 - I - 0x00A394 02:8384: 88 83     .word loc_8388_0A_next
- D 0 - I - 0x00A396 02:8386: 00        .byte $00   ; 
- D 0 - I - 0x00A397 02:8387: 00        .byte $00   ; 



loc_8388_0A_next:
- D 0 - I - 0x00A398 02:8388: 44        .byte con_chr_bank_spr + $44   ; 
- D 0 - I - 0x00A399 02:8389: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00A39A 02:838A: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00A39B 02:838B: E4 80     .word _off058_spr_data_captain_0x00C0F4_0A_03
- D 0 - I - 0x00A39D 02:838D: 91 83     .word loc_8391_0A_next
- D 0 - I - 0x00A39F 02:838F: 00        .byte $00   ; 
- D 0 - I - 0x00A3A0 02:8390: 00        .byte $00   ; 



loc_8391_0A_next:
loc_8391_0A_loop:
- D 0 - I - 0x00A3A1 02:8391: 44        .byte con_chr_bank_spr + $44   ; 
- D 0 - I - 0x00A3A2 02:8392: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00A3A3 02:8393: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00A3A4 02:8394: F9 82     .word _off058_spr_data_captain_0x00C309_0A_04
- - - - - - 0x00A3A6 02:8396: 91 83     .word loc_8391_0A_loop
- D 0 - I - 0x00A3A8 02:8398: 00        .byte $00   ; 
- D 0 - I - 0x00A3A9 02:8399: 00        .byte $00   ; 



_off047_captain_839A_0F_left:
loc_839A_0F_loop:
- D 0 - I - 0x00A3AA 02:839A: 41        .byte con_chr_bank_spr + $41   ; 
- D 0 - I - 0x00A3AB 02:839B: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00A3AC 02:839C: 02        .byte $02   ; next animation delay
- D 0 - I - 0x00A3AD 02:839D: 04 83     .word _off058_spr_data_captain_0x00C314_0F_00
- D 0 - I - 0x00A3AF 02:839F: A3 83     .word loc_83A3_0F_next
- D 0 - I - 0x00A3B1 02:83A1: 00        .byte $00   ; 
- D 0 - I - 0x00A3B2 02:83A2: 00        .byte $00   ; 



loc_83A3_0F_next:
- D 0 - I - 0x00A3B3 02:83A3: 28        .byte con_chr_bank_spr + $28   ; 
- D 0 - I - 0x00A3B4 02:83A4: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00A3B5 02:83A5: 02        .byte $02   ; next animation delay
- D 0 - I - 0x00A3B6 02:83A6: 15 83     .word _off058_spr_data_captain_0x00C325_0F_01
- D 0 - I - 0x00A3B8 02:83A8: AC 83     .word loc_83AC_0F_next
- D 0 - I - 0x00A3BA 02:83AA: 00        .byte $00   ; 
- D 0 - I - 0x00A3BB 02:83AB: 00        .byte $00   ; 



loc_83AC_0F_next:
- D 0 - I - 0x00A3BC 02:83AC: 28        .byte con_chr_bank_spr + $28   ; 
- D 0 - I - 0x00A3BD 02:83AD: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00A3BE 02:83AE: 02        .byte $02   ; next animation delay
- D 0 - I - 0x00A3BF 02:83AF: 23 83     .word _off058_spr_data_captain_0x00C333_0F_02
- D 0 - I - 0x00A3C1 02:83B1: B5 83     .word loc_83B5_0F_next
- D 0 - I - 0x00A3C3 02:83B3: 00        .byte $00   ; 
- D 0 - I - 0x00A3C4 02:83B4: 00        .byte $00   ; 



loc_83B5_0F_next:
- D 0 - I - 0x00A3C5 02:83B5: 41        .byte con_chr_bank_spr + $41   ; 
- D 0 - I - 0x00A3C6 02:83B6: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00A3C7 02:83B7: 02        .byte $02   ; next animation delay
- D 0 - I - 0x00A3C8 02:83B8: 34 83     .word _off058_spr_data_captain_0x00C344_0F_03
- D 0 - I - 0x00A3CA 02:83BA: 9A 83     .word loc_839A_0F_loop
- D 0 - I - 0x00A3CC 02:83BC: 00        .byte $00   ; 
- D 0 - I - 0x00A3CD 02:83BD: 00        .byte $00   ; 



_off047_captain_83BE_0F_right:
loc_83BE_0F_loop:
- D 0 - I - 0x00A3CE 02:83BE: 41        .byte con_chr_bank_spr + $41   ; 
- D 0 - I - 0x00A3CF 02:83BF: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00A3D0 02:83C0: 02        .byte $02   ; next animation delay
- D 0 - I - 0x00A3D1 02:83C1: 04 83     .word _off058_spr_data_captain_0x00C314_0F_00
- D 0 - I - 0x00A3D3 02:83C3: C7 83     .word loc_83C7_0F_next
- D 0 - I - 0x00A3D5 02:83C5: 00        .byte $00   ; 
- D 0 - I - 0x00A3D6 02:83C6: 00        .byte $00   ; 



loc_83C7_0F_next:
- D 0 - I - 0x00A3D7 02:83C7: 28        .byte con_chr_bank_spr + $28   ; 
- D 0 - I - 0x00A3D8 02:83C8: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00A3D9 02:83C9: 02        .byte $02   ; next animation delay
- D 0 - I - 0x00A3DA 02:83CA: 15 83     .word _off058_spr_data_captain_0x00C325_0F_01
- D 0 - I - 0x00A3DC 02:83CC: D0 83     .word loc_83D0_0F_next
- D 0 - I - 0x00A3DE 02:83CE: 00        .byte $00   ; 
- D 0 - I - 0x00A3DF 02:83CF: 00        .byte $00   ; 



loc_83D0_0F_next:
- D 0 - I - 0x00A3E0 02:83D0: 28        .byte con_chr_bank_spr + $28   ; 
- D 0 - I - 0x00A3E1 02:83D1: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00A3E2 02:83D2: 02        .byte $02   ; next animation delay
- D 0 - I - 0x00A3E3 02:83D3: 23 83     .word _off058_spr_data_captain_0x00C333_0F_02
- D 0 - I - 0x00A3E5 02:83D5: D9 83     .word loc_83D9_0F_next
- D 0 - I - 0x00A3E7 02:83D7: 00        .byte $00   ; 
- D 0 - I - 0x00A3E8 02:83D8: 00        .byte $00   ; 



loc_83D9_0F_next:
- D 0 - I - 0x00A3E9 02:83D9: 41        .byte con_chr_bank_spr + $41   ; 
- D 0 - I - 0x00A3EA 02:83DA: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00A3EB 02:83DB: 02        .byte $02   ; next animation delay
- D 0 - I - 0x00A3EC 02:83DC: 34 83     .word _off058_spr_data_captain_0x00C344_0F_03
- D 0 - I - 0x00A3EE 02:83DE: BE 83     .word loc_83BE_0F_loop
- D 0 - I - 0x00A3F0 02:83E0: 00        .byte $00   ; 
- D 0 - I - 0x00A3F1 02:83E1: 00        .byte $00   ; 



_off047_captain_83E2_11_left:
loc_83E2_11_loop:
- D 0 - I - 0x00A3F2 02:83E2: 47        .byte con_chr_bank_spr + $47   ; 
- D 0 - I - 0x00A3F3 02:83E3: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00A3F4 02:83E4: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00A3F5 02:83E5: 42 83     .word _off058_spr_data_captain_0x00C352_11_00
- D 0 - I - 0x00A3F7 02:83E7: EB 83     .word loc_83EB_11_next
- D 0 - I - 0x00A3F9 02:83E9: 17        .byte $17   ; 
- D 0 - I - 0x00A3FA 02:83EA: 09        .byte $09   ; 



loc_83EB_11_next:
- D 0 - I - 0x00A3FB 02:83EB: 47        .byte con_chr_bank_spr + $47   ; 
- D 0 - I - 0x00A3FC 02:83EC: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00A3FD 02:83ED: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00A3FE 02:83EE: 5C 83     .word _off058_spr_data_captain_0x00C36C_11_01
- D 0 - I - 0x00A400 02:83F0: F4 83     .word loc_83F4_11_next
- D 0 - I - 0x00A402 02:83F2: 17        .byte $17   ; 
- D 0 - I - 0x00A403 02:83F3: 09        .byte $09   ; 



loc_83F4_11_next:
- D 0 - I - 0x00A404 02:83F4: 47        .byte con_chr_bank_spr + $47   ; 
- D 0 - I - 0x00A405 02:83F5: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00A406 02:83F6: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00A407 02:83F7: 76 83     .word _off058_spr_data_captain_0x00C386_11_02
- D 0 - I - 0x00A409 02:83F9: FD 83     .word loc_83FD_11_next
- D 0 - I - 0x00A40B 02:83FB: 17        .byte $17   ; 
- D 0 - I - 0x00A40C 02:83FC: 09        .byte $09   ; 



loc_83FD_11_next:
- D 0 - I - 0x00A40D 02:83FD: 47        .byte con_chr_bank_spr + $47   ; 
- D 0 - I - 0x00A40E 02:83FE: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00A40F 02:83FF: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00A410 02:8400: 5C 83     .word _off058_spr_data_captain_0x00C36C_11_03
- D 0 - I - 0x00A412 02:8402: E2 83     .word loc_83E2_11_loop
- D 0 - I - 0x00A414 02:8404: 17        .byte $17   ; 
- D 0 - I - 0x00A415 02:8405: 09        .byte $09   ; 



_off047_captain_8406_11_right:
loc_8406_11_loop:
- D 0 - I - 0x00A416 02:8406: 47        .byte con_chr_bank_spr + $47   ; 
- D 0 - I - 0x00A417 02:8407: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00A418 02:8408: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00A419 02:8409: 42 83     .word _off058_spr_data_captain_0x00C352_11_00
- D 0 - I - 0x00A41B 02:840B: 0F 84     .word loc_840F_11_next
- D 0 - I - 0x00A41D 02:840D: 18        .byte $18   ; 
- D 0 - I - 0x00A41E 02:840E: 09        .byte $09   ; 



loc_840F_11_next:
- D 0 - I - 0x00A41F 02:840F: 47        .byte con_chr_bank_spr + $47   ; 
- D 0 - I - 0x00A420 02:8410: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00A421 02:8411: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00A422 02:8412: 5C 83     .word _off058_spr_data_captain_0x00C36C_11_01
- D 0 - I - 0x00A424 02:8414: 18 84     .word loc_8418_11_next
- D 0 - I - 0x00A426 02:8416: 18        .byte $18   ; 
- D 0 - I - 0x00A427 02:8417: 09        .byte $09   ; 



loc_8418_11_next:
- D 0 - I - 0x00A428 02:8418: 47        .byte con_chr_bank_spr + $47   ; 
- D 0 - I - 0x00A429 02:8419: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00A42A 02:841A: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00A42B 02:841B: 76 83     .word _off058_spr_data_captain_0x00C386_11_02
- D 0 - I - 0x00A42D 02:841D: 21 84     .word loc_8421_11_next
- D 0 - I - 0x00A42F 02:841F: 18        .byte $18   ; 
- D 0 - I - 0x00A430 02:8420: 09        .byte $09   ; 



loc_8421_11_next:
- D 0 - I - 0x00A431 02:8421: 47        .byte con_chr_bank_spr + $47   ; 
- D 0 - I - 0x00A432 02:8422: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00A433 02:8423: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00A434 02:8424: 5C 83     .word _off058_spr_data_captain_0x00C36C_11_03
- D 0 - I - 0x00A436 02:8426: 06 84     .word loc_8406_11_loop
- D 0 - I - 0x00A438 02:8428: 18        .byte $18   ; 
- D 0 - I - 0x00A439 02:8429: 09        .byte $09   ; 



_off047_captain_842A_12_left:
- D 0 - I - 0x00A43A 02:842A: 47        .byte con_chr_bank_spr + $47   ; 
- D 0 - I - 0x00A43B 02:842B: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00A43C 02:842C: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00A43D 02:842D: 90 83     .word _off058_spr_data_captain_0x00C3A0_12_00
- D 0 - I - 0x00A43F 02:842F: 33 84     .word loc_8433_12_next
- D 0 - I - 0x00A441 02:8431: 19        .byte $19   ; 
- D 0 - I - 0x00A442 02:8432: 0A        .byte $0A   ; 



loc_8433_12_next:
loc_8433_12_loop:
- D 0 - I - 0x00A443 02:8433: 47        .byte con_chr_bank_spr + $47   ; 
- D 0 - I - 0x00A444 02:8434: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00A445 02:8435: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00A446 02:8436: A7 83     .word _off058_spr_data_captain_0x00C3B7_12_01
- D 0 - I - 0x00A448 02:8438: 33 84     .word loc_8433_12_loop
- D 0 - I - 0x00A44A 02:843A: 1A        .byte $1A   ; 
- D 0 - I - 0x00A44B 02:843B: 0B        .byte $0B   ; 



_off047_captain_843C_12_right:
- D 0 - I - 0x00A44C 02:843C: 47        .byte con_chr_bank_spr + $47   ; 
- D 0 - I - 0x00A44D 02:843D: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00A44E 02:843E: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00A44F 02:843F: 90 83     .word _off058_spr_data_captain_0x00C3A0_12_00
- D 0 - I - 0x00A451 02:8441: 45 84     .word loc_8445_12_next
- D 0 - I - 0x00A453 02:8443: 1B        .byte $1B   ; 
- D 0 - I - 0x00A454 02:8444: 0A        .byte $0A   ; 



loc_8445_12_next:
loc_8445_12_loop:
- D 0 - I - 0x00A455 02:8445: 47        .byte con_chr_bank_spr + $47   ; 
- D 0 - I - 0x00A456 02:8446: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00A457 02:8447: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00A458 02:8448: A7 83     .word _off058_spr_data_captain_0x00C3B7_12_01
- D 0 - I - 0x00A45A 02:844A: 45 84     .word loc_8445_12_loop
- D 0 - I - 0x00A45C 02:844C: 1C        .byte $1C   ; 
- D 0 - I - 0x00A45D 02:844D: 0B        .byte $0B   ; 



_off047_captain_844E_0B_left:
- D 0 - I - 0x00A45E 02:844E: 42        .byte con_chr_bank_spr + $42   ; 
- D 0 - I - 0x00A45F 02:844F: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00A460 02:8450: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00A461 02:8451: C3 80     .word _off058_spr_data_captain_0x00C0D3_0B_00
- D 0 - I - 0x00A463 02:8453: 57 84     .word loc_8457_0B_next
- D 0 - I - 0x00A465 02:8455: 13        .byte $13   ; 
- D 0 - I - 0x00A466 02:8456: C5        .byte $C5   ; 



loc_8457_0B_next:
- D 0 - I - 0x00A467 02:8457: 42        .byte con_chr_bank_spr + $42   ; 
- D 0 - I - 0x00A468 02:8458: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00A469 02:8459: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00A46A 02:845A: BE 83     .word _off058_spr_data_captain_0x00C3CE_0B_01
- D 0 - I - 0x00A46C 02:845C: 60 84     .word loc_8460_0B_next
- D 0 - I - 0x00A46E 02:845E: 21        .byte $21   ; 
- D 0 - I - 0x00A46F 02:845F: C5        .byte $C5   ; 



loc_8460_0B_next:
loc_8460_0B_loop:
- D 0 - I - 0x00A470 02:8460: 42        .byte con_chr_bank_spr + $42   ; 
- D 0 - I - 0x00A471 02:8461: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00A472 02:8462: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00A473 02:8463: D5 83     .word _off058_spr_data_captain_0x00C3E5_0B_02
- D 0 - I - 0x00A475 02:8465: 60 84     .word loc_8460_0B_loop
- D 0 - I - 0x00A477 02:8467: 22        .byte $22   ; 
- D 0 - I - 0x00A478 02:8468: C5        .byte $C5   ; 



_off047_captain_8469_0B_right:
- D 0 - I - 0x00A479 02:8469: 42        .byte con_chr_bank_spr + $42   ; 
- D 0 - I - 0x00A47A 02:846A: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00A47B 02:846B: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00A47C 02:846C: C3 80     .word _off058_spr_data_captain_0x00C0D3_0B_00
- D 0 - I - 0x00A47E 02:846E: 72 84     .word loc_8472_0B_next
- D 0 - I - 0x00A480 02:8470: 14        .byte $14   ; 
- D 0 - I - 0x00A481 02:8471: C5        .byte $C5   ; 



loc_8472_0B_next:
- D 0 - I - 0x00A482 02:8472: 42        .byte con_chr_bank_spr + $42   ; 
- D 0 - I - 0x00A483 02:8473: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00A484 02:8474: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00A485 02:8475: BE 83     .word _off058_spr_data_captain_0x00C3CE_0B_01
- D 0 - I - 0x00A487 02:8477: 7B 84     .word loc_847B_0B_next
- D 0 - I - 0x00A489 02:8479: 23        .byte $23   ; 
- D 0 - I - 0x00A48A 02:847A: C5        .byte $C5   ; 



loc_847B_0B_next:
loc_847B_0B_loop:
- D 0 - I - 0x00A48B 02:847B: 42        .byte con_chr_bank_spr + $42   ; 
- D 0 - I - 0x00A48C 02:847C: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00A48D 02:847D: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00A48E 02:847E: D5 83     .word _off058_spr_data_captain_0x00C3E5_0B_02
- D 0 - I - 0x00A490 02:8480: 7B 84     .word loc_847B_0B_loop
- D 0 - I - 0x00A492 02:8482: 24        .byte $24   ; 
- D 0 - I - 0x00A493 02:8483: C5        .byte $C5   ; 



_off047_captain_8484_14_left:
- D 0 - I - 0x00A494 02:8484: 44        .byte con_chr_bank_spr + $44   ; 
- D 0 - I - 0x00A495 02:8485: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00A496 02:8486: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00A497 02:8487: EB 81     .word _off058_spr_data_captain_0x00C1FB_14_00
- D 0 - I - 0x00A499 02:8489: 8D 84     .word loc_848D_14_next
- D 0 - I - 0x00A49B 02:848B: 1D        .byte $1D   ; 
- D 0 - I - 0x00A49C 02:848C: 85        .byte $85   ; 



loc_848D_14_next:
- D 0 - I - 0x00A49D 02:848D: 44        .byte con_chr_bank_spr + $44   ; 
- D 0 - I - 0x00A49E 02:848E: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00A49F 02:848F: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00A4A0 02:8490: 05 82     .word _off058_spr_data_captain_0x00C215_14_01
- D 0 - I - 0x00A4A2 02:8492: 96 84     .word loc_8496_14_next
- D 0 - I - 0x00A4A4 02:8494: 1E        .byte $1E   ; 
- D 0 - I - 0x00A4A5 02:8495: 85        .byte $85   ; 



loc_8496_14_next:
loc_8496_14_loop:
- D 0 - I - 0x00A4A6 02:8496: 44        .byte con_chr_bank_spr + $44   ; 
- D 0 - I - 0x00A4A7 02:8497: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00A4A8 02:8498: 30        .byte $30   ; next animation delay
- D 0 - I - 0x00A4A9 02:8499: D7 81     .word _off058_spr_data_captain_0x00C1E7_14_02
- - - - - - 0x00A4AB 02:849B: 9F 84     .word loc_849F_14_next
- D 0 - I - 0x00A4AD 02:849D: 11        .byte $11   ; 
- D 0 - I - 0x00A4AE 02:849E: 85        .byte $85   ; 



loc_849F_14_next:
- - - - - - 0x00A4AF 02:849F: 44        .byte con_chr_bank_spr + $44   ; 
- - - - - - 0x00A4B0 02:84A0: 00        .byte $00   ; spr_A flip
- - - - - - 0x00A4B1 02:84A1: 0C        .byte $0C   ; next animation delay
- - - - - - 0x00A4B2 02:84A2: 1F 82     .word _off058_spr_data_captain_0x00C22F_14_03
- - - - - - 0x00A4B4 02:84A4: 96 84     .word loc_8496_14_loop
- - - - - - 0x00A4B6 02:84A6: 1D        .byte $1D   ; 
- - - - - - 0x00A4B7 02:84A7: 85        .byte $85   ; 



_off047_captain_84A8_14_right:
- D 0 - I - 0x00A4B8 02:84A8: 44        .byte con_chr_bank_spr + $44   ; 
- D 0 - I - 0x00A4B9 02:84A9: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00A4BA 02:84AA: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00A4BB 02:84AB: EB 81     .word _off058_spr_data_captain_0x00C1FB_14_00
- D 0 - I - 0x00A4BD 02:84AD: B1 84     .word loc_84B1_14_next
- D 0 - I - 0x00A4BF 02:84AF: 1F        .byte $1F   ; 
- D 0 - I - 0x00A4C0 02:84B0: 85        .byte $85   ; 



loc_84B1_14_next:
- D 0 - I - 0x00A4C1 02:84B1: 44        .byte con_chr_bank_spr + $44   ; 
- D 0 - I - 0x00A4C2 02:84B2: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00A4C3 02:84B3: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00A4C4 02:84B4: 05 82     .word _off058_spr_data_captain_0x00C215_14_01
- D 0 - I - 0x00A4C6 02:84B6: BA 84     .word loc_84BA_14_next
- D 0 - I - 0x00A4C8 02:84B8: 20        .byte $20   ; 
- D 0 - I - 0x00A4C9 02:84B9: 85        .byte $85   ; 



loc_84BA_14_next:
loc_84BA_14_loop:
- D 0 - I - 0x00A4CA 02:84BA: 44        .byte con_chr_bank_spr + $44   ; 
- D 0 - I - 0x00A4CB 02:84BB: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00A4CC 02:84BC: 30        .byte $30   ; next animation delay
- D 0 - I - 0x00A4CD 02:84BD: D7 81     .word _off058_spr_data_captain_0x00C1E7_14_02
- - - - - - 0x00A4CF 02:84BF: C3 84     .word loc_84C3_14_next
- D 0 - I - 0x00A4D1 02:84C1: 12        .byte $12   ; 
- D 0 - I - 0x00A4D2 02:84C2: 85        .byte $85   ; 



loc_84C3_14_next:
- - - - - - 0x00A4D3 02:84C3: 44        .byte con_chr_bank_spr + $44   ; 
- - - - - - 0x00A4D4 02:84C4: 80        .byte $80   ; spr_A flip
- - - - - - 0x00A4D5 02:84C5: 0C        .byte $0C   ; next animation delay
- - - - - - 0x00A4D6 02:84C6: 1F 82     .word _off058_spr_data_captain_0x00C22F_14_03
- - - - - - 0x00A4D8 02:84C8: BA 84     .word loc_84BA_14_loop
- - - - - - 0x00A4DA 02:84CA: 20        .byte $20   ; 
- - - - - - 0x00A4DB 02:84CB: 85        .byte $85   ; 



off_84CC_01_hawk:
- D 0 - I - 0x00A4DC 02:84CC: F2 84     .word _off032_hawk_84F2_00
- D 0 - I - 0x00A4DE 02:84CE: F6 84     .word _off032_hawk_84F6_01
- D 0 - I - 0x00A4E0 02:84D0: FA 84     .word _off032_hawk_84FA_02
- D 0 - I - 0x00A4E2 02:84D2: FE 84     .word _off032_hawk_84FE_03
- D 0 - I - 0x00A4E4 02:84D4: 02 85     .word _off032_hawk_8502_04
- D 0 - I - 0x00A4E6 02:84D6: 06 85     .word _off032_hawk_8506_05
- D 0 - I - 0x00A4E8 02:84D8: 0A 85     .word _off032_hawk_850A_06
- D 0 - I - 0x00A4EA 02:84DA: 0E 85     .word _off032_hawk_850E_07
- - - - - - 0x00A4EC 02:84DC: 12 85     .word _off032_hawk_8512_08
- D 0 - I - 0x00A4EE 02:84DE: 16 85     .word _off032_hawk_8516_09
- D 0 - I - 0x00A4F0 02:84E0: 1A 85     .word _off032_hawk_851A_0A
- D 0 - I - 0x00A4F2 02:84E2: 1E 85     .word _off032_hawk_851E_0B
- D 0 - I - 0x00A4F4 02:84E4: 22 85     .word _off032_hawk_8522_0C
- D 0 - I - 0x00A4F6 02:84E6: 26 85     .word _off032_hawk_8526_0D
- D 0 - I - 0x00A4F8 02:84E8: 2A 85     .word _off032_hawk_852A_0E
- D 0 - I - 0x00A4FA 02:84EA: 2E 85     .word _off032_hawk_852E_0F
- D 0 - I - 0x00A4FC 02:84EC: 32 85     .word _off032_hawk_8532_10
- D 0 - I - 0x00A4FE 02:84EE: 36 85     .word _off032_hawk_8536_11
- D 0 - I - 0x00A500 02:84F0: 3A 85     .word _off032_hawk_853A_12



_off032_hawk_84F2_00:
- D 0 - I - 0x00A502 02:84F2: 3E 85     .word off_hawk_853E_00_not_swimming
- D 0 - I - 0x00A504 02:84F4: 8A 85     .word off_hawk_858A_00_swiming



_off032_hawk_84F6_01:
- D 0 - I - 0x00A506 02:84F6: 42 85     .word off_hawk_8542_01_not_swimming
- D 0 - I - 0x00A508 02:84F8: 8E 85     .word off_hawk_858E_01_swiming



_off032_hawk_84FA_02:
- D 0 - I - 0x00A50A 02:84FA: 46 85     .word off_hawk_8546_02_not_swimming
- D 0 - I - 0x00A50C 02:84FC: 92 85     .word off_hawk_8592_02_swiming



_off032_hawk_84FE_03:
- D 0 - I - 0x00A50E 02:84FE: 4A 85     .word off_hawk_854A_03_not_swimming
- - - - - - 0x00A510 02:8500: 4A 85     .word off_hawk_854A_03_swiming



_off032_hawk_8502_04:
- D 0 - I - 0x00A512 02:8502: 4E 85     .word off_hawk_854E_04_not_swimming
- D 0 - I - 0x00A514 02:8504: 4E 85     .word off_hawk_854E_04_swiming



_off032_hawk_8506_05:
- D 0 - I - 0x00A516 02:8506: 52 85     .word off_hawk_8552_05_not_swimming
- D 0 - I - 0x00A518 02:8508: 96 85     .word off_hawk_8596_05_swiming



_off032_hawk_850A_06:
- D 0 - I - 0x00A51A 02:850A: 56 85     .word off_hawk_8556_06_not_swimming
- D 0 - I - 0x00A51C 02:850C: 56 85     .word off_hawk_8556_06_swiming



_off032_hawk_850E_07:
- D 0 - I - 0x00A51E 02:850E: 5A 85     .word off_hawk_855A_07_not_swimming
- D 0 - I - 0x00A520 02:8510: 9A 85     .word off_hawk_859A_07_swiming



_off032_hawk_8512_08:
- - - - - - 0x00A522 02:8512: 5E 85     .word off_hawk_855E_08_not_swimming
- - - - - - 0x00A524 02:8514: 9E 85     .word off_hawk_859E_08_swiming



_off032_hawk_8516_09:
- D 0 - I - 0x00A526 02:8516: 62 85     .word off_hawk_8562_09_not_swimming
- D 0 - I - 0x00A528 02:8518: A2 85     .word off_hawk_85A2_09_swiming



_off032_hawk_851A_0A:
- D 0 - I - 0x00A52A 02:851A: 66 85     .word off_hawk_8566_0A_not_swimming
- D 0 - I - 0x00A52C 02:851C: A6 85     .word off_hawk_85A6_0A_swiming



_off032_hawk_851E_0B:
- D 0 - I - 0x00A52E 02:851E: 6A 85     .word off_hawk_856A_0B_not_swimming
- - - - - - 0x00A530 02:8520: 8A 85     .word off_hawk_858A_0B_swiming



_off032_hawk_8522_0C:
- D 0 - I - 0x00A532 02:8522: 6E 85     .word off_hawk_856E_0C_not_swimming
- - - - - - 0x00A534 02:8524: 8A 85     .word off_hawk_858A_0C_swiming



_off032_hawk_8526_0D:
- D 0 - I - 0x00A536 02:8526: 72 85     .word off_hawk_8572_0D_not_swimming
- - - - - - 0x00A538 02:8528: 8A 85     .word off_hawk_858A_0D_swiming



_off032_hawk_852A_0E:
- D 0 - I - 0x00A53A 02:852A: 76 85     .word off_hawk_8576_0E_not_swimming
- - - - - - 0x00A53C 02:852C: 8A 85     .word off_hawk_858A_0E_swiming



_off032_hawk_852E_0F:
- D 0 - I - 0x00A53E 02:852E: 7A 85     .word off_hawk_857A_0F_not_swimming
- D 0 - I - 0x00A540 02:8530: 8A 85     .word off_hawk_858A_0F_swiming



_off032_hawk_8532_10:
- D 0 - I - 0x00A542 02:8532: 7E 85     .word off_hawk_857E_10_not_swimming
- D 0 - I - 0x00A544 02:8534: 8A 85     .word off_hawk_858A_10_swiming



_off032_hawk_8536_11:
- D 0 - I - 0x00A546 02:8536: 82 85     .word off_hawk_8582_11_not_swimming
- D 0 - I - 0x00A548 02:8538: 8A 85     .word off_hawk_858A_11_swiming



_off032_hawk_853A_12:
- D 0 - I - 0x00A54A 02:853A: 86 85     .word off_hawk_8586_12_not_swimming
- - - - - - 0x00A54C 02:853C: 96 85     .word off_hawk_8596_12_swiming



off_hawk_853E_00_not_swimming:
- D 0 - I - 0x00A54E 02:853E: AA 85     .word _off047_hawk_85AA_00_left
- D 0 - I - 0x00A550 02:8540: B3 85     .word _off047_hawk_85B3_00_right



off_hawk_8542_01_not_swimming:
- D 0 - I - 0x00A552 02:8542: CE 85     .word _off047_hawk_85CE_01_left
- D 0 - I - 0x00A554 02:8544: F2 85     .word _off047_hawk_85F2_01_right



off_hawk_8546_02_not_swimming:
- D 0 - I - 0x00A556 02:8546: A6 86     .word _off047_hawk_86A6_02_left
- D 0 - I - 0x00A558 02:8548: C1 86     .word _off047_hawk_86C1_02_right



off_hawk_854A_03_not_swimming:
off_hawk_854A_03_swiming:
- D 0 - I - 0x00A55A 02:854A: DC 86     .word _off047_hawk_86DC_03_left
- D 0 - I - 0x00A55C 02:854C: F7 86     .word _off047_hawk_86F7_03_right



off_hawk_854E_04_not_swimming:
off_hawk_854E_04_swiming:
- D 0 - I - 0x00A55E 02:854E: 12 87     .word _off047_hawk_8712_04_left
- D 0 - I - 0x00A560 02:8550: 24 87     .word _off047_hawk_8724_04_right



off_hawk_8552_05_not_swimming:
- D 0 - I - 0x00A562 02:8552: 5E 86     .word _off047_hawk_865E_05_left
- D 0 - I - 0x00A564 02:8554: 67 86     .word _off047_hawk_8667_05_right



off_hawk_8556_06_not_swimming:
off_hawk_8556_06_swiming:
- D 0 - I - 0x00A566 02:8556: A2 87     .word _off047_hawk_87A2_06_left
- D 0 - I - 0x00A568 02:8558: B4 87     .word _off047_hawk_87B4_06_right



off_hawk_855A_07_not_swimming:
- D 0 - I - 0x00A56A 02:855A: 36 87     .word _off047_hawk_8736_07_left
- D 0 - I - 0x00A56C 02:855C: 48 87     .word _off047_hawk_8748_07_right



off_hawk_855E_08_not_swimming:
- - - - - - 0x00A56E 02:855E: C6 87     .word _off047_hawk_87C6_08_left
- - - - - - 0x00A570 02:8560: D8 87     .word _off047_hawk_87D8_08_right



off_hawk_8562_09_not_swimming:
- D 0 - I - 0x00A572 02:8562: 5A 87     .word _off047_hawk_875A_09_left
- D 0 - I - 0x00A574 02:8564: 6C 87     .word _off047_hawk_876C_09_right



off_hawk_8566_0A_not_swimming:
- D 0 - I - 0x00A576 02:8566: EA 87     .word _off047_hawk_87EA_0A_left
- D 0 - I - 0x00A578 02:8568: 17 88     .word _off047_hawk_8817_0A_right



off_hawk_856A_0B_not_swimming:
- D 0 - I - 0x00A57A 02:856A: 44 88     .word _off047_hawk_8844_0B_left
- D 0 - I - 0x00A57C 02:856C: 56 88     .word _off047_hawk_8856_0B_right



off_hawk_856E_0C_not_swimming:
- D 0 - I - 0x00A57E 02:856E: 68 88     .word _off047_hawk_8868_0C_left
- D 0 - I - 0x00A580 02:8570: 71 88     .word _off047_hawk_8871_0C_right



off_hawk_8572_0D_not_swimming:
- D 0 - I - 0x00A582 02:8572: 7A 88     .word _off047_hawk_887A_0D_left
- D 0 - I - 0x00A584 02:8574: 8C 88     .word _off047_hawk_888C_0D_right



off_hawk_8576_0E_not_swimming:
- D 0 - I - 0x00A586 02:8576: 9E 88     .word _off047_hawk_889E_0E_left
- D 0 - I - 0x00A588 02:8578: B0 88     .word _off047_hawk_88B0_0E_right



off_hawk_857A_0F_not_swimming:
- D 0 - I - 0x00A58A 02:857A: C2 88     .word _off047_hawk_88C2_0F_left
- D 0 - I - 0x00A58C 02:857C: D4 88     .word _off047_hawk_88D4_0F_right



off_hawk_857E_10_not_swimming:
- D 0 - I - 0x00A58E 02:857E: E6 88     .word _off047_hawk_88E6_10_left
- D 0 - I - 0x00A590 02:8580: F8 88     .word _off047_hawk_88F8_10_right



off_hawk_8582_11_not_swimming:
- D 0 - I - 0x00A592 02:8582: 0A 89     .word _off047_hawk_890A_11_left
- D 0 - I - 0x00A594 02:8584: 1C 89     .word _off047_hawk_891C_11_right



off_hawk_8586_12_not_swimming:
- D 0 - I - 0x00A596 02:8586: 2E 89     .word _off047_hawk_892E_12_left
- D 0 - I - 0x00A598 02:8588: 40 89     .word _off047_hawk_8940_12_right



off_hawk_858A_00_swiming:
off_hawk_858A_0B_swiming:
off_hawk_858A_0C_swiming:
off_hawk_858A_0D_swiming:
off_hawk_858A_0E_swiming:
off_hawk_858A_0F_swiming:
off_hawk_858A_10_swiming:
off_hawk_858A_11_swiming:
- D 0 - I - 0x00A59A 02:858A: BC 85     .word _off047_hawk_85BC_00_left
- D 0 - I - 0x00A59C 02:858C: C5 85     .word _off047_hawk_85C5_00_right



off_hawk_858E_01_swiming:
- D 0 - I - 0x00A59E 02:858E: 16 86     .word _off047_hawk_8616_01_left
- D 0 - I - 0x00A5A0 02:8590: 3A 86     .word _off047_hawk_863A_01_right



off_hawk_8592_02_swiming:
- D 0 - I - 0x00A5A2 02:8592: AF 86     .word _off047_hawk_86AF_02_left
- D 0 - I - 0x00A5A4 02:8594: CA 86     .word _off047_hawk_86CA_02_right



off_hawk_8596_05_swiming:
off_hawk_8596_12_swiming:
- D 0 - I - 0x00A5A6 02:8596: 70 86     .word _off047_hawk_8670_05_left
- D 0 - I - 0x00A5A8 02:8598: 70 86     .word _off047_hawk_8670_05_right



off_hawk_859A_07_swiming:
- D 0 - I - 0x00A5AA 02:859A: 3F 87     .word _off047_hawk_873F_07_left
- D 0 - I - 0x00A5AC 02:859C: 51 87     .word _off047_hawk_8751_07_right



off_hawk_859E_08_swiming:
- - - - - - 0x00A5AE 02:859E: CF 87     .word _off047_hawk_87CF_08_left
- - - - - - 0x00A5B0 02:85A0: E1 87     .word _off047_hawk_87E1_08_right



off_hawk_85A2_09_swiming:
- - - - - - 0x00A5B2 02:85A2: 7E 87     .word _off047_hawk_877E_09_left
- D 0 - I - 0x00A5B4 02:85A4: 7E 87     .word _off047_hawk_877E_09_right



off_hawk_85A6_0A_swiming:
- D 0 - I - 0x00A5B6 02:85A6: F3 87     .word _off047_hawk_87F3_0A_left
- D 0 - I - 0x00A5B8 02:85A8: 20 88     .word _off047_hawk_8820_0A_right



_off047_hawk_85AA_00_left:
loc_85AA_00_loop:
- D 0 - I - 0x00A5BA 02:85AA: 4F        .byte con_chr_bank_spr + $4F   ; 
- D 0 - I - 0x00A5BB 02:85AB: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00A5BC 02:85AC: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00A5BD 02:85AD: EF 83     .word _off058_spr_data_hawk_0x00C3FF_00_00
- D 0 - I - 0x00A5BF 02:85AF: AA 85     .word loc_85AA_00_loop
- - - - - - 0x00A5C1 02:85B1: 00        .byte $00   ; 
- D 0 - I - 0x00A5C2 02:85B2: 03        .byte $03   ; 



_off047_hawk_85B3_00_right:
loc_85B3_00_loop:
- D 0 - I - 0x00A5C3 02:85B3: 4F        .byte con_chr_bank_spr + $4F   ; 
- D 0 - I - 0x00A5C4 02:85B4: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00A5C5 02:85B5: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00A5C6 02:85B6: EF 83     .word _off058_spr_data_hawk_0x00C3FF_00_00
- D 0 - I - 0x00A5C8 02:85B8: B3 85     .word loc_85B3_00_loop
- - - - - - 0x00A5CA 02:85BA: 00        .byte $00   ; 
- D 0 - I - 0x00A5CB 02:85BB: 03        .byte $03   ; 



_off047_hawk_85BC_00_left:
loc_85BC_00_loop:
- D 0 - I - 0x00A5CC 02:85BC: 4D        .byte con_chr_bank_spr + $4D   ; 
- D 0 - I - 0x00A5CD 02:85BD: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00A5CE 02:85BE: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00A5CF 02:85BF: 0C 84     .word _off058_spr_data_hawk_0x00C41C_00_00
- D 0 - I - 0x00A5D1 02:85C1: BC 85     .word loc_85BC_00_loop
- - - - - - 0x00A5D3 02:85C3: 00        .byte $00   ; 
- D 0 - I - 0x00A5D4 02:85C4: 08        .byte $08   ; 



_off047_hawk_85C5_00_right:
loc_85C5_00_loop:
- D 0 - I - 0x00A5D5 02:85C5: 4D        .byte con_chr_bank_spr + $4D   ; 
- D 0 - I - 0x00A5D6 02:85C6: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00A5D7 02:85C7: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00A5D8 02:85C8: 0C 84     .word _off058_spr_data_hawk_0x00C41C_00_00
- D 0 - I - 0x00A5DA 02:85CA: C5 85     .word loc_85C5_00_loop
- - - - - - 0x00A5DC 02:85CC: 00        .byte $00   ; 
- D 0 - I - 0x00A5DD 02:85CD: 08        .byte $08   ; 



_off047_hawk_85CE_01_left:
loc_85CE_01_loop:
- D 0 - I - 0x00A5DE 02:85CE: 4C        .byte con_chr_bank_spr + $4C   ; 
- D 0 - I - 0x00A5DF 02:85CF: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00A5E0 02:85D0: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00A5E1 02:85D1: 14 84     .word _off058_spr_data_hawk_0x00C424_01_00
- D 0 - I - 0x00A5E3 02:85D3: D7 85     .word loc_85D7_01_next
- - - - - - 0x00A5E5 02:85D5: 00        .byte $00   ; 
- D 0 - I - 0x00A5E6 02:85D6: 03        .byte $03   ; 



loc_85D7_01_next:
- D 0 - I - 0x00A5E7 02:85D7: 4C        .byte con_chr_bank_spr + $4C   ; 
- D 0 - I - 0x00A5E8 02:85D8: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00A5E9 02:85D9: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00A5EA 02:85DA: 2E 84     .word _off058_spr_data_hawk_0x00C43E_01_01
- D 0 - I - 0x00A5EC 02:85DC: E0 85     .word loc_85E0_01_next
- - - - - - 0x00A5EE 02:85DE: 00        .byte $00   ; 
- D 0 - I - 0x00A5EF 02:85DF: 03        .byte $03   ; 



loc_85E0_01_next:
- D 0 - I - 0x00A5F0 02:85E0: 4C        .byte con_chr_bank_spr + $4C   ; 
- D 0 - I - 0x00A5F1 02:85E1: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00A5F2 02:85E2: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00A5F3 02:85E3: 48 84     .word _off058_spr_data_hawk_0x00C458_01_02
- D 0 - I - 0x00A5F5 02:85E5: E9 85     .word loc_85E9_01_next
- - - - - - 0x00A5F7 02:85E7: 00        .byte $00   ; 
- D 0 - I - 0x00A5F8 02:85E8: 03        .byte $03   ; 



loc_85E9_01_next:
- D 0 - I - 0x00A5F9 02:85E9: 4C        .byte con_chr_bank_spr + $4C   ; 
- D 0 - I - 0x00A5FA 02:85EA: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00A5FB 02:85EB: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00A5FC 02:85EC: 65 84     .word _off058_spr_data_hawk_0x00C475_01_03
- D 0 - I - 0x00A5FE 02:85EE: CE 85     .word loc_85CE_01_loop
- - - - - - 0x00A600 02:85F0: 00        .byte $00   ; 
- D 0 - I - 0x00A601 02:85F1: 03        .byte $03   ; 



_off047_hawk_85F2_01_right:
loc_85F2_01_loop:
- D 0 - I - 0x00A602 02:85F2: 4C        .byte con_chr_bank_spr + $4C   ; 
- D 0 - I - 0x00A603 02:85F3: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00A604 02:85F4: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00A605 02:85F5: 14 84     .word _off058_spr_data_hawk_0x00C424_01_00
- D 0 - I - 0x00A607 02:85F7: FB 85     .word loc_85FB_01_next
- - - - - - 0x00A609 02:85F9: 00        .byte $00   ; 
- D 0 - I - 0x00A60A 02:85FA: 03        .byte $03   ; 



loc_85FB_01_next:
- D 0 - I - 0x00A60B 02:85FB: 4C        .byte con_chr_bank_spr + $4C   ; 
- D 0 - I - 0x00A60C 02:85FC: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00A60D 02:85FD: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00A60E 02:85FE: 2E 84     .word _off058_spr_data_hawk_0x00C43E_01_01
- D 0 - I - 0x00A610 02:8600: 04 86     .word loc_8604_01_next
- - - - - - 0x00A612 02:8602: 00        .byte $00   ; 
- D 0 - I - 0x00A613 02:8603: 03        .byte $03   ; 



loc_8604_01_next:
- D 0 - I - 0x00A614 02:8604: 4C        .byte con_chr_bank_spr + $4C   ; 
- D 0 - I - 0x00A615 02:8605: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00A616 02:8606: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00A617 02:8607: 48 84     .word _off058_spr_data_hawk_0x00C458_01_02
- D 0 - I - 0x00A619 02:8609: 0D 86     .word loc_860D_01_next
- - - - - - 0x00A61B 02:860B: 00        .byte $00   ; 
- D 0 - I - 0x00A61C 02:860C: 03        .byte $03   ; 



loc_860D_01_next:
- D 0 - I - 0x00A61D 02:860D: 4C        .byte con_chr_bank_spr + $4C   ; 
- D 0 - I - 0x00A61E 02:860E: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00A61F 02:860F: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00A620 02:8610: 65 84     .word _off058_spr_data_hawk_0x00C475_01_03
- D 0 - I - 0x00A622 02:8612: F2 85     .word loc_85F2_01_loop
- - - - - - 0x00A624 02:8614: 00        .byte $00   ; 
- D 0 - I - 0x00A625 02:8615: 03        .byte $03   ; 



_off047_hawk_8616_01_left:
loc_8616_01_loop:
- D 0 - I - 0x00A626 02:8616: 4D        .byte con_chr_bank_spr + $4D   ; 
- D 0 - I - 0x00A627 02:8617: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00A628 02:8618: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00A629 02:8619: 82 84     .word _off058_spr_data_hawk_0x00C492_01_00
- D 0 - I - 0x00A62B 02:861B: 1F 86     .word loc_861F_01_next
- - - - - - 0x00A62D 02:861D: 00        .byte $00   ; 
- D 0 - I - 0x00A62E 02:861E: 08        .byte $08   ; 



loc_861F_01_next:
- D 0 - I - 0x00A62F 02:861F: 4D        .byte con_chr_bank_spr + $4D   ; 
- D 0 - I - 0x00A630 02:8620: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00A631 02:8621: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00A632 02:8622: 8A 84     .word _off058_spr_data_hawk_0x00C49A_01_01
- D 0 - I - 0x00A634 02:8624: 28 86     .word loc_8628_01_next
- - - - - - 0x00A636 02:8626: 00        .byte $00   ; 
- D 0 - I - 0x00A637 02:8627: 08        .byte $08   ; 



loc_8628_01_next:
- D 0 - I - 0x00A638 02:8628: 4D        .byte con_chr_bank_spr + $4D   ; 
- D 0 - I - 0x00A639 02:8629: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00A63A 02:862A: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00A63B 02:862B: 92 84     .word _off058_spr_data_hawk_0x00C4A2_01_02
- D 0 - I - 0x00A63D 02:862D: 31 86     .word loc_8631_01_next
- - - - - - 0x00A63F 02:862F: 00        .byte $00   ; 
- D 0 - I - 0x00A640 02:8630: 08        .byte $08   ; 



loc_8631_01_next:
- D 0 - I - 0x00A641 02:8631: 4D        .byte con_chr_bank_spr + $4D   ; 
- D 0 - I - 0x00A642 02:8632: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00A643 02:8633: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00A644 02:8634: 8A 84     .word _off058_spr_data_hawk_0x00C49A_01_03
- D 0 - I - 0x00A646 02:8636: 16 86     .word loc_8616_01_loop
- - - - - - 0x00A648 02:8638: 00        .byte $00   ; 
- D 0 - I - 0x00A649 02:8639: 08        .byte $08   ; 



_off047_hawk_863A_01_right:
loc_863A_01_loop:
- D 0 - I - 0x00A64A 02:863A: 4D        .byte con_chr_bank_spr + $4D   ; 
- D 0 - I - 0x00A64B 02:863B: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00A64C 02:863C: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00A64D 02:863D: 82 84     .word _off058_spr_data_hawk_0x00C492_01_00
- D 0 - I - 0x00A64F 02:863F: 43 86     .word loc_8643_01_next
- - - - - - 0x00A651 02:8641: 00        .byte $00   ; 
- D 0 - I - 0x00A652 02:8642: 08        .byte $08   ; 



loc_8643_01_next:
- D 0 - I - 0x00A653 02:8643: 4D        .byte con_chr_bank_spr + $4D   ; 
- D 0 - I - 0x00A654 02:8644: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00A655 02:8645: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00A656 02:8646: 8A 84     .word _off058_spr_data_hawk_0x00C49A_01_01
- D 0 - I - 0x00A658 02:8648: 4C 86     .word loc_864C_01_next
- - - - - - 0x00A65A 02:864A: 00        .byte $00   ; 
- D 0 - I - 0x00A65B 02:864B: 08        .byte $08   ; 



loc_864C_01_next:
- D 0 - I - 0x00A65C 02:864C: 4D        .byte con_chr_bank_spr + $4D   ; 
- D 0 - I - 0x00A65D 02:864D: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00A65E 02:864E: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00A65F 02:864F: 92 84     .word _off058_spr_data_hawk_0x00C4A2_01_02
- D 0 - I - 0x00A661 02:8651: 55 86     .word loc_8655_01_next
- - - - - - 0x00A663 02:8653: 00        .byte $00   ; 
- D 0 - I - 0x00A664 02:8654: 08        .byte $08   ; 



loc_8655_01_next:
- D 0 - I - 0x00A665 02:8655: 4D        .byte con_chr_bank_spr + $4D   ; 
- D 0 - I - 0x00A666 02:8656: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00A667 02:8657: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00A668 02:8658: 8A 84     .word _off058_spr_data_hawk_0x00C49A_01_03
- D 0 - I - 0x00A66A 02:865A: 3A 86     .word loc_863A_01_loop
- - - - - - 0x00A66C 02:865C: 00        .byte $00   ; 
- D 0 - I - 0x00A66D 02:865D: 08        .byte $08   ; 



_off047_hawk_865E_05_left:
loc_865E_05_loop:
- D 0 - I - 0x00A66E 02:865E: 52        .byte con_chr_bank_spr + $52   ; 
- D 0 - I - 0x00A66F 02:865F: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00A670 02:8660: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00A671 02:8661: 9A 84     .word _off058_spr_data_hawk_0x00C4AA_05_00
- D 0 - I - 0x00A673 02:8663: 5E 86     .word loc_865E_05_loop
- - - - - - 0x00A675 02:8665: 00        .byte $00   ; 
- D 0 - I - 0x00A676 02:8666: 05        .byte $05   ; 



_off047_hawk_8667_05_right:
loc_8667_05_loop:
- D 0 - I - 0x00A677 02:8667: 52        .byte con_chr_bank_spr + $52   ; 
- D 0 - I - 0x00A678 02:8668: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00A679 02:8669: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00A67A 02:866A: 9A 84     .word _off058_spr_data_hawk_0x00C4AA_05_00
- D 0 - I - 0x00A67C 02:866C: 67 86     .word loc_8667_05_loop
- - - - - - 0x00A67E 02:866E: 00        .byte $00   ; 
- D 0 - I - 0x00A67F 02:866F: 05        .byte $05   ; 



_off047_hawk_8670_05_left:
_off047_hawk_8670_05_right:
- D 0 - I - 0x00A680 02:8670: 4D        .byte con_chr_bank_spr + $4D   ; 
- D 0 - I - 0x00A681 02:8671: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00A682 02:8672: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00A683 02:8673: B1 84     .word _off058_spr_data_hawk_0x00C4C1_05_00
- D 0 - I - 0x00A685 02:8675: 79 86     .word loc_8679_05_next
- - - - - - 0x00A687 02:8677: 00        .byte $00   ; 
- D 0 - I - 0x00A688 02:8678: 00        .byte $00   ; 



loc_8679_05_next:
- D 0 - I - 0x00A689 02:8679: 4D        .byte con_chr_bank_spr + $4D   ; 
- D 0 - I - 0x00A68A 02:867A: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00A68B 02:867B: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00A68C 02:867C: B9 84     .word _off058_spr_data_hawk_0x00C4C9_05_01
- D 0 - I - 0x00A68E 02:867E: 82 86     .word loc_8682_05_next
- - - - - - 0x00A690 02:8680: 00        .byte $00   ; 
- D 0 - I - 0x00A691 02:8681: 00        .byte $00   ; 



loc_8682_05_next:
- D 0 - I - 0x00A692 02:8682: 4D        .byte con_chr_bank_spr + $4D   ; 
- D 0 - I - 0x00A693 02:8683: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00A694 02:8684: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00A695 02:8685: BE 84     .word _off058_spr_data_hawk_0x00C4CE_05_02
- D 0 - I - 0x00A697 02:8687: 8B 86     .word loc_868B_05_next
- - - - - - 0x00A699 02:8689: 00        .byte $00   ; 
- D 0 - I - 0x00A69A 02:868A: 00        .byte $00   ; 



loc_868B_05_next:
loc_868B_05_loop:
- D 0 - I - 0x00A69B 02:868B: 4D        .byte con_chr_bank_spr + $4D   ; 
- D 0 - I - 0x00A69C 02:868C: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00A69D 02:868D: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00A69E 02:868E: C3 84     .word _off058_spr_data_hawk_0x00C4D3_05_03
- D 0 - I - 0x00A6A0 02:8690: 94 86     .word loc_8694_05_next
- - - - - - 0x00A6A2 02:8692: 00        .byte $00   ; 
- D 0 - I - 0x00A6A3 02:8693: 00        .byte $00   ; 



loc_8694_05_next:
- D 0 - I - 0x00A6A4 02:8694: 4D        .byte con_chr_bank_spr + $4D   ; 
- D 0 - I - 0x00A6A5 02:8695: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00A6A6 02:8696: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00A6A7 02:8697: C8 84     .word _off058_spr_data_hawk_0x00C4D8_05_04
- D 0 - I - 0x00A6A9 02:8699: 9D 86     .word loc_869D_05_next
- - - - - - 0x00A6AB 02:869B: 00        .byte $00   ; 
- D 0 - I - 0x00A6AC 02:869C: 00        .byte $00   ; 



loc_869D_05_next:
- D 0 - I - 0x00A6AD 02:869D: 4D        .byte con_chr_bank_spr + $4D   ; 
- D 0 - I - 0x00A6AE 02:869E: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00A6AF 02:869F: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00A6B0 02:86A0: D0 84     .word _off058_spr_data_hawk_0x00C4E0_05_05
- D 0 - I - 0x00A6B2 02:86A2: 8B 86     .word loc_868B_05_loop
- - - - - - 0x00A6B4 02:86A4: 00        .byte $00   ; 
- D 0 - I - 0x00A6B5 02:86A5: 00        .byte $00   ; 



_off047_hawk_86A6_02_left:
loc_86A6_02_loop:
- D 0 - I - 0x00A6B6 02:86A6: 50        .byte con_chr_bank_spr + $50   ; 
- D 0 - I - 0x00A6B7 02:86A7: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00A6B8 02:86A8: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00A6B9 02:86A9: D8 84     .word _off058_spr_data_hawk_0x00C4E8_02_00
- D 0 - I - 0x00A6BB 02:86AB: A6 86     .word loc_86A6_02_loop
- - - - - - 0x00A6BD 02:86AD: 00        .byte $00   ; 
- D 0 - I - 0x00A6BE 02:86AE: 06        .byte $06   ; 



_off047_hawk_86AF_02_left:
- D 0 - I - 0x00A6BF 02:86AF: 50        .byte con_chr_bank_spr + $50   ; 
- D 0 - I - 0x00A6C0 02:86B0: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00A6C1 02:86B1: 03        .byte $03   ; next animation delay
- D 0 - I - 0x00A6C2 02:86B2: F5 84     .word _off058_spr_data_hawk_0x00C505_02_00
- D 0 - I - 0x00A6C4 02:86B4: B8 86     .word loc_86B8_02_next
- - - - - - 0x00A6C6 02:86B6: 00        .byte $00   ; 
- D 0 - I - 0x00A6C7 02:86B7: 06        .byte $06   ; 



loc_86B8_02_next:
loc_86B8_02_loop:
- D 0 - I - 0x00A6C8 02:86B8: 50        .byte con_chr_bank_spr + $50   ; 
- D 0 - I - 0x00A6C9 02:86B9: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00A6CA 02:86BA: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00A6CB 02:86BB: 12 85     .word _off058_spr_data_hawk_0x00C522_02_01
- - - - - - 0x00A6CD 02:86BD: B8 86     .word loc_86B8_02_loop
- - - - - - 0x00A6CF 02:86BF: 00        .byte $00   ; 
- D 0 - I - 0x00A6D0 02:86C0: 06        .byte $06   ; 



_off047_hawk_86C1_02_right:
loc_86C1_02_loop:
- D 0 - I - 0x00A6D1 02:86C1: 50        .byte con_chr_bank_spr + $50   ; 
- D 0 - I - 0x00A6D2 02:86C2: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00A6D3 02:86C3: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00A6D4 02:86C4: D8 84     .word _off058_spr_data_hawk_0x00C4E8_02_00
- D 0 - I - 0x00A6D6 02:86C6: C1 86     .word loc_86C1_02_loop
- - - - - - 0x00A6D8 02:86C8: 00        .byte $00   ; 
- D 0 - I - 0x00A6D9 02:86C9: 06        .byte $06   ; 



_off047_hawk_86CA_02_right:
- D 0 - I - 0x00A6DA 02:86CA: 50        .byte con_chr_bank_spr + $50   ; 
- D 0 - I - 0x00A6DB 02:86CB: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00A6DC 02:86CC: 03        .byte $03   ; next animation delay
- D 0 - I - 0x00A6DD 02:86CD: F5 84     .word _off058_spr_data_hawk_0x00C505_02_00
- D 0 - I - 0x00A6DF 02:86CF: D3 86     .word loc_86D3_02_next
- - - - - - 0x00A6E1 02:86D1: 00        .byte $00   ; 
- D 0 - I - 0x00A6E2 02:86D2: 06        .byte $06   ; 



loc_86D3_02_next:
loc_86D3_02_loop:
- D 0 - I - 0x00A6E3 02:86D3: 50        .byte con_chr_bank_spr + $50   ; 
- D 0 - I - 0x00A6E4 02:86D4: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00A6E5 02:86D5: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00A6E6 02:86D6: 12 85     .word _off058_spr_data_hawk_0x00C522_02_01
- - - - - - 0x00A6E8 02:86D8: D3 86     .word loc_86D3_02_loop
- - - - - - 0x00A6EA 02:86DA: 00        .byte $00   ; 
- D 0 - I - 0x00A6EB 02:86DB: 06        .byte $06   ; 



_off047_hawk_86DC_03_left:
- D 0 - I - 0x00A6EC 02:86DC: 4F        .byte con_chr_bank_spr + $4F   ; 
- D 0 - I - 0x00A6ED 02:86DD: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00A6EE 02:86DE: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00A6EF 02:86DF: 29 85     .word _off058_spr_data_hawk_0x00C539_03_00
- D 0 - I - 0x00A6F1 02:86E1: E5 86     .word loc_86E5_03_next
- - - - - - 0x00A6F3 02:86E3: 00        .byte $00   ; 
- D 0 - I - 0x00A6F4 02:86E4: 03        .byte $03   ; 



loc_86E5_03_next:
- D 0 - I - 0x00A6F5 02:86E5: 4F        .byte con_chr_bank_spr + $4F   ; 
- D 0 - I - 0x00A6F6 02:86E6: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00A6F7 02:86E7: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00A6F8 02:86E8: 40 85     .word _off058_spr_data_hawk_0x00C550_03_01
- D 0 - I - 0x00A6FA 02:86EA: EE 86     .word loc_86EE_03_next
- - - - - - 0x00A6FC 02:86EC: 00        .byte $00   ; 
- D 0 - I - 0x00A6FD 02:86ED: 03        .byte $03   ; 



loc_86EE_03_next:
loc_86EE_03_loop:
- D 0 - I - 0x00A6FE 02:86EE: 4F        .byte con_chr_bank_spr + $4F   ; 
- D 0 - I - 0x00A6FF 02:86EF: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00A700 02:86F0: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00A701 02:86F1: 60 85     .word _off058_spr_data_hawk_0x00C570_03_02
- - - - - - 0x00A703 02:86F3: EE 86     .word loc_86EE_03_loop
- - - - - - 0x00A705 02:86F5: 00        .byte $00   ; 
- D 0 - I - 0x00A706 02:86F6: 03        .byte $03   ; 



_off047_hawk_86F7_03_right:
- D 0 - I - 0x00A707 02:86F7: 4F        .byte con_chr_bank_spr + $4F   ; 
- D 0 - I - 0x00A708 02:86F8: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00A709 02:86F9: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00A70A 02:86FA: 29 85     .word _off058_spr_data_hawk_0x00C539_03_00
- D 0 - I - 0x00A70C 02:86FC: 00 87     .word loc_8700_03_next
- - - - - - 0x00A70E 02:86FE: 00        .byte $00   ; 
- D 0 - I - 0x00A70F 02:86FF: 03        .byte $03   ; 



loc_8700_03_next:
- D 0 - I - 0x00A710 02:8700: 4F        .byte con_chr_bank_spr + $4F   ; 
- D 0 - I - 0x00A711 02:8701: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00A712 02:8702: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00A713 02:8703: 40 85     .word _off058_spr_data_hawk_0x00C550_03_01
- D 0 - I - 0x00A715 02:8705: 09 87     .word loc_8709_03_next
- - - - - - 0x00A717 02:8707: 00        .byte $00   ; 
- D 0 - I - 0x00A718 02:8708: 03        .byte $03   ; 



loc_8709_03_next:
loc_8709_03_loop:
- D 0 - I - 0x00A719 02:8709: 4F        .byte con_chr_bank_spr + $4F   ; 
- D 0 - I - 0x00A71A 02:870A: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00A71B 02:870B: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00A71C 02:870C: 60 85     .word _off058_spr_data_hawk_0x00C570_03_02
- - - - - - 0x00A71E 02:870E: 09 87     .word loc_8709_03_loop
- - - - - - 0x00A720 02:8710: 00        .byte $00   ; 
- D 0 - I - 0x00A721 02:8711: 03        .byte $03   ; 



_off047_hawk_8712_04_left:
- D 0 - I - 0x00A722 02:8712: 51        .byte con_chr_bank_spr + $51   ; 
- D 0 - I - 0x00A723 02:8713: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00A724 02:8714: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00A725 02:8715: 7D 85     .word _off058_spr_data_hawk_0x00C58D_04_00
- D 0 - I - 0x00A727 02:8717: 1B 87     .word loc_871B_04_next
- - - - - - 0x00A729 02:8719: 00        .byte $00   ; 
- D 0 - I - 0x00A72A 02:871A: 07        .byte $07   ; 



loc_871B_04_next:
loc_871B_04_loop:
- D 0 - I - 0x00A72B 02:871B: 51        .byte con_chr_bank_spr + $51   ; 
- D 0 - I - 0x00A72C 02:871C: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00A72D 02:871D: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00A72E 02:871E: 9A 85     .word _off058_spr_data_hawk_0x00C5AA_04_01
- - - - - - 0x00A730 02:8720: 1B 87     .word loc_871B_04_loop
- - - - - - 0x00A732 02:8722: 00        .byte $00   ; 
- D 0 - I - 0x00A733 02:8723: 07        .byte $07   ; 



_off047_hawk_8724_04_right:
- D 0 - I - 0x00A734 02:8724: 51        .byte con_chr_bank_spr + $51   ; 
- D 0 - I - 0x00A735 02:8725: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00A736 02:8726: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00A737 02:8727: 7D 85     .word _off058_spr_data_hawk_0x00C58D_04_00
- D 0 - I - 0x00A739 02:8729: 2D 87     .word loc_872D_04_next
- - - - - - 0x00A73B 02:872B: 00        .byte $00   ; 
- D 0 - I - 0x00A73C 02:872C: 07        .byte $07   ; 



loc_872D_04_next:
loc_872D_04_loop:
- D 0 - I - 0x00A73D 02:872D: 51        .byte con_chr_bank_spr + $51   ; 
- D 0 - I - 0x00A73E 02:872E: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00A73F 02:872F: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00A740 02:8730: 9A 85     .word _off058_spr_data_hawk_0x00C5AA_04_01
- D 0 - I - 0x00A742 02:8732: 2D 87     .word loc_872D_04_loop
- - - - - - 0x00A744 02:8734: 00        .byte $00   ; 
- D 0 - I - 0x00A745 02:8735: 07        .byte $07   ; 



_off047_hawk_8736_07_left:
loc_8736_07_loop:
- D 0 - I - 0x00A746 02:8736: 53        .byte con_chr_bank_spr + $53   ; 
- D 0 - I - 0x00A747 02:8737: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00A748 02:8738: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00A749 02:8739: BA 85     .word _off058_spr_data_hawk_0x00C5CA_07_00
- D 0 - I - 0x00A74B 02:873B: 36 87     .word loc_8736_07_loop
- - - - - - 0x00A74D 02:873D: 00        .byte $00   ; 
- D 0 - I - 0x00A74E 02:873E: 00        .byte $00   ; 



_off047_hawk_873F_07_left:
loc_873F_07_loop:
- D 0 - I - 0x00A74F 02:873F: 4D        .byte con_chr_bank_spr + $4D   ; 
- D 0 - I - 0x00A750 02:8740: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00A751 02:8741: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00A752 02:8742: 0C 84     .word _off058_spr_data_hawk_0x00C41C_07_00
- - - - - - 0x00A754 02:8744: 3F 87     .word loc_873F_07_loop
- - - - - - 0x00A756 02:8746: 00        .byte $00   ; 
- D 0 - I - 0x00A757 02:8747: 00        .byte $00   ; 



_off047_hawk_8748_07_right:
loc_8748_07_loop:
- D 0 - I - 0x00A758 02:8748: 53        .byte con_chr_bank_spr + $53   ; 
- D 0 - I - 0x00A759 02:8749: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00A75A 02:874A: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00A75B 02:874B: BA 85     .word _off058_spr_data_hawk_0x00C5CA_07_00
- D 0 - I - 0x00A75D 02:874D: 48 87     .word loc_8748_07_loop
- - - - - - 0x00A75F 02:874F: 00        .byte $00   ; 
- D 0 - I - 0x00A760 02:8750: 00        .byte $00   ; 



_off047_hawk_8751_07_right:
loc_8751_07_loop:
- D 0 - I - 0x00A761 02:8751: 4D        .byte con_chr_bank_spr + $4D   ; 
- D 0 - I - 0x00A762 02:8752: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00A763 02:8753: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00A764 02:8754: 0C 84     .word _off058_spr_data_hawk_0x00C41C_07_00
- - - - - - 0x00A766 02:8756: 51 87     .word loc_8751_07_loop
- - - - - - 0x00A768 02:8758: 00        .byte $00   ; 
- D 0 - I - 0x00A769 02:8759: 00        .byte $00   ; 



_off047_hawk_875A_09_left:
- D 0 - I - 0x00A76A 02:875A: 53        .byte con_chr_bank_spr + $53   ; 
- D 0 - I - 0x00A76B 02:875B: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00A76C 02:875C: 10        .byte $10   ; next animation delay
- D 0 - I - 0x00A76D 02:875D: D7 85     .word _off058_spr_data_hawk_0x00C5E7_09_00
- D 0 - I - 0x00A76F 02:875F: 63 87     .word loc_8763_09_next
- - - - - - 0x00A771 02:8761: 00        .byte $00   ; 
- D 0 - I - 0x00A772 02:8762: 00        .byte $00   ; 



loc_8763_09_next:
loc_8763_09_loop:
- D 0 - I - 0x00A773 02:8763: 53        .byte con_chr_bank_spr + $53   ; 
- D 0 - I - 0x00A774 02:8764: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00A775 02:8765: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00A776 02:8766: EE 85     .word _off058_spr_data_hawk_0x00C5FE_09_01
- D 0 - I - 0x00A778 02:8768: 63 87     .word loc_8763_09_loop
- - - - - - 0x00A77A 02:876A: 00        .byte $00   ; 
- D 0 - I - 0x00A77B 02:876B: 00        .byte $00   ; 



_off047_hawk_876C_09_right:
- D 0 - I - 0x00A77C 02:876C: 53        .byte con_chr_bank_spr + $53   ; 
- D 0 - I - 0x00A77D 02:876D: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00A77E 02:876E: 10        .byte $10   ; next animation delay
- D 0 - I - 0x00A77F 02:876F: D7 85     .word _off058_spr_data_hawk_0x00C5E7_09_00
- D 0 - I - 0x00A781 02:8771: 75 87     .word loc_8775_09_next
- - - - - - 0x00A783 02:8773: 00        .byte $00   ; 
- D 0 - I - 0x00A784 02:8774: 00        .byte $00   ; 



loc_8775_09_next:
loc_8775_09_loop:
- D 0 - I - 0x00A785 02:8775: 53        .byte con_chr_bank_spr + $53   ; 
- D 0 - I - 0x00A786 02:8776: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00A787 02:8777: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00A788 02:8778: EE 85     .word _off058_spr_data_hawk_0x00C5FE_09_01
- D 0 - I - 0x00A78A 02:877A: 75 87     .word loc_8775_09_loop
- - - - - - 0x00A78C 02:877C: 00        .byte $00   ; 
- D 0 - I - 0x00A78D 02:877D: 00        .byte $00   ; 



_off047_hawk_877E_09_left:
_off047_hawk_877E_09_right:
- D 0 - I - 0x00A78E 02:877E: 4D        .byte con_chr_bank_spr + $4D   ; 
- D 0 - I - 0x00A78F 02:877F: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00A790 02:8780: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00A791 02:8781: 05 86     .word _off058_spr_data_hawk_0x00C615_09_00
- D 0 - I - 0x00A793 02:8783: 87 87     .word loc_8787_09_next
- - - - - - 0x00A795 02:8785: 00        .byte $00   ; 
- D 0 - I - 0x00A796 02:8786: 00        .byte $00   ; 



loc_8787_09_next:
- D 0 - I - 0x00A797 02:8787: 4D        .byte con_chr_bank_spr + $4D   ; 
- D 0 - I - 0x00A798 02:8788: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00A799 02:8789: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00A79A 02:878A: 0D 86     .word _off058_spr_data_hawk_0x00C61D_09_01
- D 0 - I - 0x00A79C 02:878C: 90 87     .word loc_8790_09_next
- - - - - - 0x00A79E 02:878E: 00        .byte $00   ; 
- D 0 - I - 0x00A79F 02:878F: 00        .byte $00   ; 



loc_8790_09_next:
- D 0 - I - 0x00A7A0 02:8790: 4D        .byte con_chr_bank_spr + $4D   ; 
- D 0 - I - 0x00A7A1 02:8791: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00A7A2 02:8792: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00A7A3 02:8793: 12 86     .word _off058_spr_data_hawk_0x00C622_09_02
- D 0 - I - 0x00A7A5 02:8795: 99 87     .word loc_8799_09_next
- - - - - - 0x00A7A7 02:8797: 00        .byte $00   ; 
- D 0 - I - 0x00A7A8 02:8798: 00        .byte $00   ; 



loc_8799_09_next:
loc_8799_09_loop:
- D 0 - I - 0x00A7A9 02:8799: 55        .byte con_chr_bank_spr + $55   ; 
- D 0 - I - 0x00A7AA 02:879A: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00A7AB 02:879B: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00A7AC 02:879C: 98 82     .word _off058_spr_data_hawk_0x00C2A8_09_03
- D 0 - I - 0x00A7AE 02:879E: 99 87     .word loc_8799_09_loop
- - - - - - 0x00A7B0 02:87A0: 00        .byte $00   ; 
- D 0 - I - 0x00A7B1 02:87A1: 00        .byte $00   ; 



_off047_hawk_87A2_06_left:
- D 0 - I - 0x00A7B2 02:87A2: 52        .byte con_chr_bank_spr + $52   ; 
- D 0 - I - 0x00A7B3 02:87A3: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00A7B4 02:87A4: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00A7B5 02:87A5: 1C 86     .word _off058_spr_data_hawk_0x00C62C_06_00
- D 0 - I - 0x00A7B7 02:87A7: AB 87     .word loc_87AB_06_next
- - - - - - 0x00A7B9 02:87A9: 00        .byte $00   ; 
- D 0 - I - 0x00A7BA 02:87AA: 05        .byte $05   ; 



loc_87AB_06_next:
loc_87AB_06_loop:
- D 0 - I - 0x00A7BB 02:87AB: 52        .byte con_chr_bank_spr + $52   ; 
- D 0 - I - 0x00A7BC 02:87AC: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00A7BD 02:87AD: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00A7BE 02:87AE: 36 86     .word _off058_spr_data_hawk_0x00C646_06_01
- D 0 - I - 0x00A7C0 02:87B0: AB 87     .word loc_87AB_06_loop
- - - - - - 0x00A7C2 02:87B2: 00        .byte $00   ; 
- D 0 - I - 0x00A7C3 02:87B3: 05        .byte $05   ; 



_off047_hawk_87B4_06_right:
- D 0 - I - 0x00A7C4 02:87B4: 52        .byte con_chr_bank_spr + $52   ; 
- D 0 - I - 0x00A7C5 02:87B5: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00A7C6 02:87B6: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00A7C7 02:87B7: 1C 86     .word _off058_spr_data_hawk_0x00C62C_06_00
- D 0 - I - 0x00A7C9 02:87B9: BD 87     .word loc_87BD_06_next
- - - - - - 0x00A7CB 02:87BB: 00        .byte $00   ; 
- D 0 - I - 0x00A7CC 02:87BC: 05        .byte $05   ; 



loc_87BD_06_next:
loc_87BD_06_loop:
- D 0 - I - 0x00A7CD 02:87BD: 52        .byte con_chr_bank_spr + $52   ; 
- D 0 - I - 0x00A7CE 02:87BE: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00A7CF 02:87BF: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00A7D0 02:87C0: 36 86     .word _off058_spr_data_hawk_0x00C646_06_01
- D 0 - I - 0x00A7D2 02:87C2: BD 87     .word loc_87BD_06_loop
- - - - - - 0x00A7D4 02:87C4: 00        .byte $00   ; 
- D 0 - I - 0x00A7D5 02:87C5: 05        .byte $05   ; 



_off047_hawk_87C6_08_left:
loc_87C6_08_loop:
- - - - - - 0x00A7D6 02:87C6: 53        .byte con_chr_bank_spr + $53   ; 
- - - - - - 0x00A7D7 02:87C7: 00        .byte $00   ; spr_A flip
- - - - - - 0x00A7D8 02:87C8: 08        .byte $08   ; next animation delay
- - - - - - 0x00A7D9 02:87C9: 4D 86     .word _off058_spr_data_hawk_0x00C65D_08_00
- - - - - - 0x00A7DB 02:87CB: C6 87     .word loc_87C6_08_loop
- - - - - - 0x00A7DD 02:87CD: 00        .byte $00   ; 
- - - - - - 0x00A7DE 02:87CE: 00        .byte $00   ; 



_off047_hawk_87CF_08_left:
loc_87CF_08_loop:
- - - - - - 0x00A7DF 02:87CF: 4D        .byte con_chr_bank_spr + $4D   ; 
- - - - - - 0x00A7E0 02:87D0: 00        .byte $00   ; spr_A flip
- - - - - - 0x00A7E1 02:87D1: 08        .byte $08   ; next animation delay
- - - - - - 0x00A7E2 02:87D2: 0C 84     .word _off058_spr_data_hawk_0x00C41C_08_00
- - - - - - 0x00A7E4 02:87D4: CF 87     .word loc_87CF_08_loop
- - - - - - 0x00A7E6 02:87D6: 00        .byte $00   ; 
- - - - - - 0x00A7E7 02:87D7: 00        .byte $00   ; 



_off047_hawk_87D8_08_right:
loc_87D8_08_loop:
- - - - - - 0x00A7E8 02:87D8: 53        .byte con_chr_bank_spr + $53   ; 
- - - - - - 0x00A7E9 02:87D9: 80        .byte $80   ; spr_A flip
- - - - - - 0x00A7EA 02:87DA: 08        .byte $08   ; next animation delay
- - - - - - 0x00A7EB 02:87DB: 4D 86     .word _off058_spr_data_hawk_0x00C65D_08_00
- - - - - - 0x00A7ED 02:87DD: D8 87     .word loc_87D8_08_loop
- - - - - - 0x00A7EF 02:87DF: 00        .byte $00   ; 
- - - - - - 0x00A7F0 02:87E0: 00        .byte $00   ; 



_off047_hawk_87E1_08_right:
loc_87E1_08_loop:
- - - - - - 0x00A7F1 02:87E1: 4D        .byte con_chr_bank_spr + $4D   ; 
- - - - - - 0x00A7F2 02:87E2: 80        .byte $80   ; spr_A flip
- - - - - - 0x00A7F3 02:87E3: 08        .byte $08   ; next animation delay
- - - - - - 0x00A7F4 02:87E4: 0C 84     .word _off058_spr_data_hawk_0x00C41C_08_00
- - - - - - 0x00A7F6 02:87E6: E1 87     .word loc_87E1_08_loop
- - - - - - 0x00A7F8 02:87E8: 00        .byte $00   ; 
- - - - - - 0x00A7F9 02:87E9: 00        .byte $00   ; 



_off047_hawk_87EA_0A_left:
loc_87EA_0A_loop:
- D 0 - I - 0x00A7FA 02:87EA: 52        .byte con_chr_bank_spr + $52   ; 
- D 0 - I - 0x00A7FB 02:87EB: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00A7FC 02:87EC: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00A7FD 02:87ED: 9A 84     .word _off058_spr_data_hawk_0x00C4AA_0A_00
- - - - - - 0x00A7FF 02:87EF: EA 87     .word loc_87EA_0A_loop
- - - - - - 0x00A801 02:87F1: 00        .byte $00   ; 
- D 0 - I - 0x00A802 02:87F2: 05        .byte $05   ; 



_off047_hawk_87F3_0A_left:
- D 0 - I - 0x00A803 02:87F3: 4D        .byte con_chr_bank_spr + $4D   ; 
- D 0 - I - 0x00A804 02:87F4: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00A805 02:87F5: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00A806 02:87F6: 05 86     .word _off058_spr_data_hawk_0x00C615_0A_00
- D 0 - I - 0x00A808 02:87F8: FC 87     .word loc_87FC_0A_next
- - - - - - 0x00A80A 02:87FA: 00        .byte $00   ; 
- D 0 - I - 0x00A80B 02:87FB: 00        .byte $00   ; 



loc_87FC_0A_next:
- D 0 - I - 0x00A80C 02:87FC: 4D        .byte con_chr_bank_spr + $4D   ; 
- D 0 - I - 0x00A80D 02:87FD: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00A80E 02:87FE: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00A80F 02:87FF: 0D 86     .word _off058_spr_data_hawk_0x00C61D_0A_01
- D 0 - I - 0x00A811 02:8801: 05 88     .word loc_8805_0A_next
- - - - - - 0x00A813 02:8803: 00        .byte $00   ; 
- D 0 - I - 0x00A814 02:8804: 00        .byte $00   ; 



loc_8805_0A_next:
- D 0 - I - 0x00A815 02:8805: 4D        .byte con_chr_bank_spr + $4D   ; 
- D 0 - I - 0x00A816 02:8806: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00A817 02:8807: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00A818 02:8808: 12 86     .word _off058_spr_data_hawk_0x00C622_0A_02
- D 0 - I - 0x00A81A 02:880A: 0E 88     .word loc_880E_0A_next
- - - - - - 0x00A81C 02:880C: 00        .byte $00   ; 
- D 0 - I - 0x00A81D 02:880D: 00        .byte $00   ; 



loc_880E_0A_next:
loc_880E_0A_loop:
- D 0 - I - 0x00A81E 02:880E: 4D        .byte con_chr_bank_spr + $4D   ; 
- D 0 - I - 0x00A81F 02:880F: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00A820 02:8810: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00A821 02:8811: 6A 86     .word _off058_spr_data_hawk_0x00C67A_0A_03
- - - - - - 0x00A823 02:8813: 0E 88     .word loc_880E_0A_loop
- - - - - - 0x00A825 02:8815: 00        .byte $00   ; 
- D 0 - I - 0x00A826 02:8816: 00        .byte $00   ; 



_off047_hawk_8817_0A_right:
loc_8817_0A_loop:
- D 0 - I - 0x00A827 02:8817: 52        .byte con_chr_bank_spr + $52   ; 
- D 0 - I - 0x00A828 02:8818: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00A829 02:8819: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00A82A 02:881A: 9A 84     .word _off058_spr_data_hawk_0x00C4AA_0A_00
- D 0 - I - 0x00A82C 02:881C: 17 88     .word loc_8817_0A_loop
- - - - - - 0x00A82E 02:881E: 00        .byte $00   ; 
- D 0 - I - 0x00A82F 02:881F: 05        .byte $05   ; 



_off047_hawk_8820_0A_right:
- D 0 - I - 0x00A830 02:8820: 4D        .byte con_chr_bank_spr + $4D   ; 
- D 0 - I - 0x00A831 02:8821: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00A832 02:8822: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00A833 02:8823: 05 86     .word _off058_spr_data_hawk_0x00C615_0A_00
- D 0 - I - 0x00A835 02:8825: 29 88     .word loc_8829_0A_next
- - - - - - 0x00A837 02:8827: 00        .byte $00   ; 
- D 0 - I - 0x00A838 02:8828: 00        .byte $00   ; 



loc_8829_0A_next:
- D 0 - I - 0x00A839 02:8829: 4D        .byte con_chr_bank_spr + $4D   ; 
- D 0 - I - 0x00A83A 02:882A: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00A83B 02:882B: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00A83C 02:882C: 0D 86     .word _off058_spr_data_hawk_0x00C61D_0A_01
- D 0 - I - 0x00A83E 02:882E: 32 88     .word loc_8832_0A_next
- - - - - - 0x00A840 02:8830: 00        .byte $00   ; 
- D 0 - I - 0x00A841 02:8831: 00        .byte $00   ; 



loc_8832_0A_next:
- D 0 - I - 0x00A842 02:8832: 4D        .byte con_chr_bank_spr + $4D   ; 
- D 0 - I - 0x00A843 02:8833: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00A844 02:8834: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00A845 02:8835: 12 86     .word _off058_spr_data_hawk_0x00C622_0A_02
- D 0 - I - 0x00A847 02:8837: 3B 88     .word loc_883B_0A_next
- - - - - - 0x00A849 02:8839: 00        .byte $00   ; 
- D 0 - I - 0x00A84A 02:883A: 00        .byte $00   ; 



loc_883B_0A_next:
loc_883B_0A_loop:
- D 0 - I - 0x00A84B 02:883B: 4D        .byte con_chr_bank_spr + $4D   ; 
- D 0 - I - 0x00A84C 02:883C: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00A84D 02:883D: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00A84E 02:883E: 6A 86     .word _off058_spr_data_hawk_0x00C67A_0A_03
- - - - - - 0x00A850 02:8840: 3B 88     .word loc_883B_0A_loop
- - - - - - 0x00A852 02:8842: 00        .byte $00   ; 
- D 0 - I - 0x00A853 02:8843: 00        .byte $00   ; 



_off047_hawk_8844_0B_left:
- D 0 - I - 0x00A854 02:8844: 4E        .byte con_chr_bank_spr + $4E   ; 
- D 0 - I - 0x00A855 02:8845: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00A856 02:8846: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00A857 02:8847: 8F 86     .word _off058_spr_data_hawk_0x00C69F_0B_00
- D 0 - I - 0x00A859 02:8849: 4D 88     .word loc_884D_0B_next
- - - - - - 0x00A85B 02:884B: 00        .byte $00   ; 
- D 0 - I - 0x00A85C 02:884C: 03        .byte $03   ; 



loc_884D_0B_next:
loc_884D_0B_loop:
- D 0 - I - 0x00A85D 02:884D: 4E        .byte con_chr_bank_spr + $4E   ; 
- D 0 - I - 0x00A85E 02:884E: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00A85F 02:884F: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00A860 02:8850: B2 86     .word _off058_spr_data_hawk_0x00C6C2_0B_01
- D 0 - I - 0x00A862 02:8852: 4D 88     .word loc_884D_0B_loop
- - - - - - 0x00A864 02:8854: 00        .byte $00   ; 
- D 0 - I - 0x00A865 02:8855: 03        .byte $03   ; 



_off047_hawk_8856_0B_right:
- D 0 - I - 0x00A866 02:8856: 4E        .byte con_chr_bank_spr + $4E   ; 
- D 0 - I - 0x00A867 02:8857: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00A868 02:8858: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00A869 02:8859: 8F 86     .word _off058_spr_data_hawk_0x00C69F_0B_00
- D 0 - I - 0x00A86B 02:885B: 5F 88     .word loc_885F_0B_next
- - - - - - 0x00A86D 02:885D: 00        .byte $00   ; 
- D 0 - I - 0x00A86E 02:885E: 03        .byte $03   ; 



loc_885F_0B_next:
loc_885F_0B_loop:
- D 0 - I - 0x00A86F 02:885F: 4E        .byte con_chr_bank_spr + $4E   ; 
- D 0 - I - 0x00A870 02:8860: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00A871 02:8861: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00A872 02:8862: B2 86     .word _off058_spr_data_hawk_0x00C6C2_0B_01
- D 0 - I - 0x00A874 02:8864: 5F 88     .word loc_885F_0B_loop
- - - - - - 0x00A876 02:8866: 00        .byte $00   ; 
- D 0 - I - 0x00A877 02:8867: 03        .byte $03   ; 



_off047_hawk_8868_0C_left:
loc_8868_0C_loop:
- D 0 - I - 0x00A878 02:8868: 4E        .byte con_chr_bank_spr + $4E   ; 
- D 0 - I - 0x00A879 02:8869: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00A87A 02:886A: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00A87B 02:886B: 1B 87     .word _off058_spr_data_hawk_0x00C72B_0C_00
- D 0 - I - 0x00A87D 02:886D: 68 88     .word loc_8868_0C_loop
- - - - - - 0x00A87F 02:886F: 00        .byte $00   ; 
- D 0 - I - 0x00A880 02:8870: 03        .byte $03   ; 



_off047_hawk_8871_0C_right:
loc_8871_0C_loop:
- D 0 - I - 0x00A881 02:8871: 4E        .byte con_chr_bank_spr + $4E   ; 
- D 0 - I - 0x00A882 02:8872: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00A883 02:8873: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00A884 02:8874: 1B 87     .word _off058_spr_data_hawk_0x00C72B_0C_00
- D 0 - I - 0x00A886 02:8876: 71 88     .word loc_8871_0C_loop
- - - - - - 0x00A888 02:8878: 00        .byte $00   ; 
- D 0 - I - 0x00A889 02:8879: 03        .byte $03   ; 



_off047_hawk_887A_0D_left:
- D 0 - I - 0x00A88A 02:887A: 4E        .byte con_chr_bank_spr + $4E   ; 
- D 0 - I - 0x00A88B 02:887B: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00A88C 02:887C: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00A88D 02:887D: 1B 87     .word _off058_spr_data_hawk_0x00C72B_0D_00
- D 0 - I - 0x00A88F 02:887F: 83 88     .word loc_8883_0D_next
- - - - - - 0x00A891 02:8881: 00        .byte $00   ; 
- D 0 - I - 0x00A892 02:8882: 03        .byte $03   ; 



loc_8883_0D_next:
loc_8883_0D_loop:
- D 0 - I - 0x00A893 02:8883: 4E        .byte con_chr_bank_spr + $4E   ; 
- D 0 - I - 0x00A894 02:8884: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00A895 02:8885: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00A896 02:8886: 38 87     .word _off058_spr_data_hawk_0x00C748_0D_01
- D 0 - I - 0x00A898 02:8888: 83 88     .word loc_8883_0D_loop
- - - - - - 0x00A89A 02:888A: 00        .byte $00   ; 
- D 0 - I - 0x00A89B 02:888B: 03        .byte $03   ; 



_off047_hawk_888C_0D_right:
- D 0 - I - 0x00A89C 02:888C: 4E        .byte con_chr_bank_spr + $4E   ; 
- D 0 - I - 0x00A89D 02:888D: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00A89E 02:888E: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00A89F 02:888F: 1B 87     .word _off058_spr_data_hawk_0x00C72B_0D_00
- D 0 - I - 0x00A8A1 02:8891: 95 88     .word loc_8895_0D_next
- - - - - - 0x00A8A3 02:8893: 00        .byte $00   ; 
- D 0 - I - 0x00A8A4 02:8894: 03        .byte $03   ; 



loc_8895_0D_next:
loc_8895_0D_loop:
- D 0 - I - 0x00A8A5 02:8895: 4E        .byte con_chr_bank_spr + $4E   ; 
- D 0 - I - 0x00A8A6 02:8896: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00A8A7 02:8897: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00A8A8 02:8898: 38 87     .word _off058_spr_data_hawk_0x00C748_0D_01
- D 0 - I - 0x00A8AA 02:889A: 95 88     .word loc_8895_0D_loop
- - - - - - 0x00A8AC 02:889C: 00        .byte $00   ; 
- D 0 - I - 0x00A8AD 02:889D: 03        .byte $03   ; 



_off047_hawk_889E_0E_left:
- D 0 - I - 0x00A8AE 02:889E: 4E        .byte con_chr_bank_spr + $4E   ; 
- D 0 - I - 0x00A8AF 02:889F: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00A8B0 02:88A0: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00A8B1 02:88A1: D8 86     .word _off058_spr_data_hawk_0x00C6E8_0E_00
- D 0 - I - 0x00A8B3 02:88A3: A7 88     .word loc_88A7_0E_next
- - - - - - 0x00A8B5 02:88A5: 00        .byte $00   ; 
- D 0 - I - 0x00A8B6 02:88A6: 03        .byte $03   ; 



loc_88A7_0E_next:
loc_88A7_0E_loop:
- D 0 - I - 0x00A8B7 02:88A7: 4E        .byte con_chr_bank_spr + $4E   ; 
- D 0 - I - 0x00A8B8 02:88A8: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00A8B9 02:88A9: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00A8BA 02:88AA: F8 86     .word _off058_spr_data_hawk_0x00C708_0E_01
- D 0 - I - 0x00A8BC 02:88AC: A7 88     .word loc_88A7_0E_loop
- - - - - - 0x00A8BE 02:88AE: 00        .byte $00   ; 
- D 0 - I - 0x00A8BF 02:88AF: 03        .byte $03   ; 



_off047_hawk_88B0_0E_right:
- D 0 - I - 0x00A8C0 02:88B0: 4E        .byte con_chr_bank_spr + $4E   ; 
- D 0 - I - 0x00A8C1 02:88B1: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00A8C2 02:88B2: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00A8C3 02:88B3: D8 86     .word _off058_spr_data_hawk_0x00C6E8_0E_00
- D 0 - I - 0x00A8C5 02:88B5: B9 88     .word loc_88B9_0E_next
- - - - - - 0x00A8C7 02:88B7: 00        .byte $00   ; 
- D 0 - I - 0x00A8C8 02:88B8: 03        .byte $03   ; 



loc_88B9_0E_next:
loc_88B9_0E_loop:
- D 0 - I - 0x00A8C9 02:88B9: 4E        .byte con_chr_bank_spr + $4E   ; 
- D 0 - I - 0x00A8CA 02:88BA: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00A8CB 02:88BB: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00A8CC 02:88BC: F8 86     .word _off058_spr_data_hawk_0x00C708_0E_01
- D 0 - I - 0x00A8CE 02:88BE: B9 88     .word loc_88B9_0E_loop
- - - - - - 0x00A8D0 02:88C0: 00        .byte $00   ; 
- D 0 - I - 0x00A8D1 02:88C1: 03        .byte $03   ; 



_off047_hawk_88C2_0F_left:
- D 0 - I - 0x00A8D2 02:88C2: 50        .byte con_chr_bank_spr + $50   ; 
- D 0 - I - 0x00A8D3 02:88C3: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00A8D4 02:88C4: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00A8D5 02:88C5: 55 87     .word _off058_spr_data_hawk_0x00C765_0F_00
- D 0 - I - 0x00A8D7 02:88C7: CB 88     .word loc_88CB_0F_next
- - - - - - 0x00A8D9 02:88C9: 00        .byte $00   ; 
- D 0 - I - 0x00A8DA 02:88CA: 03        .byte $03   ; 



loc_88CB_0F_next:
loc_88CB_0F_loop:
- D 0 - I - 0x00A8DB 02:88CB: 50        .byte con_chr_bank_spr + $50   ; 
- D 0 - I - 0x00A8DC 02:88CC: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00A8DD 02:88CD: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00A8DE 02:88CE: 72 87     .word _off058_spr_data_hawk_0x00C782_0F_01
- D 0 - I - 0x00A8E0 02:88D0: CB 88     .word loc_88CB_0F_loop
- - - - - - 0x00A8E2 02:88D2: 00        .byte $00   ; 
- D 0 - I - 0x00A8E3 02:88D3: 03        .byte $03   ; 



_off047_hawk_88D4_0F_right:
- D 0 - I - 0x00A8E4 02:88D4: 50        .byte con_chr_bank_spr + $50   ; 
- D 0 - I - 0x00A8E5 02:88D5: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00A8E6 02:88D6: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00A8E7 02:88D7: 55 87     .word _off058_spr_data_hawk_0x00C765_0F_00
- D 0 - I - 0x00A8E9 02:88D9: DD 88     .word loc_88DD_0F_next
- - - - - - 0x00A8EB 02:88DB: 00        .byte $00   ; 
- D 0 - I - 0x00A8EC 02:88DC: 03        .byte $03   ; 



loc_88DD_0F_next:
loc_88DD_0F_loop:
- D 0 - I - 0x00A8ED 02:88DD: 50        .byte con_chr_bank_spr + $50   ; 
- D 0 - I - 0x00A8EE 02:88DE: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00A8EF 02:88DF: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00A8F0 02:88E0: 72 87     .word _off058_spr_data_hawk_0x00C782_0F_01
- D 0 - I - 0x00A8F2 02:88E2: DD 88     .word loc_88DD_0F_loop
- - - - - - 0x00A8F4 02:88E4: 00        .byte $00   ; 
- D 0 - I - 0x00A8F5 02:88E5: 03        .byte $03   ; 



_off047_hawk_88E6_10_left:
- D 0 - I - 0x00A8F6 02:88E6: 51        .byte con_chr_bank_spr + $51   ; 
- D 0 - I - 0x00A8F7 02:88E7: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00A8F8 02:88E8: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00A8F9 02:88E9: D2 87     .word _off058_spr_data_hawk_0x00C7E2_10_00
- D 0 - I - 0x00A8FB 02:88EB: EF 88     .word loc_88EF_10_next
- - - - - - 0x00A8FD 02:88ED: 00        .byte $00   ; 
- D 0 - I - 0x00A8FE 02:88EE: 03        .byte $03   ; 



loc_88EF_10_next:
loc_88EF_10_loop:
- D 0 - I - 0x00A8FF 02:88EF: 51        .byte con_chr_bank_spr + $51   ; 
- D 0 - I - 0x00A900 02:88F0: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00A901 02:88F1: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00A902 02:88F2: F2 87     .word _off058_spr_data_hawk_0x00C802_10_01
- D 0 - I - 0x00A904 02:88F4: EF 88     .word loc_88EF_10_loop
- - - - - - 0x00A906 02:88F6: 00        .byte $00   ; 
- D 0 - I - 0x00A907 02:88F7: 03        .byte $03   ; 



_off047_hawk_88F8_10_right:
- D 0 - I - 0x00A908 02:88F8: 51        .byte con_chr_bank_spr + $51   ; 
- D 0 - I - 0x00A909 02:88F9: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00A90A 02:88FA: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00A90B 02:88FB: D2 87     .word _off058_spr_data_hawk_0x00C7E2_10_00
- D 0 - I - 0x00A90D 02:88FD: 01 89     .word loc_8901_10_next
- - - - - - 0x00A90F 02:88FF: 00        .byte $00   ; 
- D 0 - I - 0x00A910 02:8900: 03        .byte $03   ; 



loc_8901_10_next:
loc_8901_10_loop:
- D 0 - I - 0x00A911 02:8901: 51        .byte con_chr_bank_spr + $51   ; 
- D 0 - I - 0x00A912 02:8902: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00A913 02:8903: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00A914 02:8904: F2 87     .word _off058_spr_data_hawk_0x00C802_10_01
- D 0 - I - 0x00A916 02:8906: 01 89     .word loc_8901_10_loop
- - - - - - 0x00A918 02:8908: 00        .byte $00   ; 
- D 0 - I - 0x00A919 02:8909: 03        .byte $03   ; 



_off047_hawk_890A_11_left:
- D 0 - I - 0x00A91A 02:890A: 50        .byte con_chr_bank_spr + $50   ; 
- D 0 - I - 0x00A91B 02:890B: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00A91C 02:890C: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00A91D 02:890D: 8F 87     .word _off058_spr_data_hawk_0x00C79F_11_00
- D 0 - I - 0x00A91F 02:890F: 13 89     .word loc_8913_11_next
- - - - - - 0x00A921 02:8911: 00        .byte $00   ; 
- D 0 - I - 0x00A922 02:8912: 03        .byte $03   ; 



loc_8913_11_next:
loc_8913_11_loop:
- D 0 - I - 0x00A923 02:8913: 50        .byte con_chr_bank_spr + $50   ; 
- D 0 - I - 0x00A924 02:8914: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00A925 02:8915: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00A926 02:8916: AF 87     .word _off058_spr_data_hawk_0x00C7BF_11_01
- D 0 - I - 0x00A928 02:8918: 13 89     .word loc_8913_11_loop
- - - - - - 0x00A92A 02:891A: 00        .byte $00   ; 
- D 0 - I - 0x00A92B 02:891B: 03        .byte $03   ; 



_off047_hawk_891C_11_right:
- D 0 - I - 0x00A92C 02:891C: 50        .byte con_chr_bank_spr + $50   ; 
- D 0 - I - 0x00A92D 02:891D: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00A92E 02:891E: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00A92F 02:891F: 8F 87     .word _off058_spr_data_hawk_0x00C79F_11_00
- D 0 - I - 0x00A931 02:8921: 25 89     .word loc_8925_11_next
- - - - - - 0x00A933 02:8923: 00        .byte $00   ; 
- D 0 - I - 0x00A934 02:8924: 03        .byte $03   ; 



loc_8925_11_next:
loc_8925_11_loop:
- D 0 - I - 0x00A935 02:8925: 50        .byte con_chr_bank_spr + $50   ; 
- D 0 - I - 0x00A936 02:8926: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00A937 02:8927: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00A938 02:8928: AF 87     .word _off058_spr_data_hawk_0x00C7BF_11_01
- D 0 - I - 0x00A93A 02:892A: 25 89     .word loc_8925_11_loop
- - - - - - 0x00A93C 02:892C: 00        .byte $00   ; 
- D 0 - I - 0x00A93D 02:892D: 03        .byte $03   ; 



_off047_hawk_892E_12_left:
- D 0 - I - 0x00A93E 02:892E: 52        .byte con_chr_bank_spr + $52   ; 
- D 0 - I - 0x00A93F 02:892F: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00A940 02:8930: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00A941 02:8931: 12 88     .word _off058_spr_data_hawk_0x00C822_12_00
- D 0 - I - 0x00A943 02:8933: 37 89     .word loc_8937_12_next
- - - - - - 0x00A945 02:8935: 00        .byte $00   ; 
- D 0 - I - 0x00A946 02:8936: 05        .byte $05   ; 



loc_8937_12_next:
loc_8937_12_loop:
- D 0 - I - 0x00A947 02:8937: 52        .byte con_chr_bank_spr + $52   ; 
- D 0 - I - 0x00A948 02:8938: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00A949 02:8939: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00A94A 02:893A: 2C 88     .word _off058_spr_data_hawk_0x00C83C_12_01
- D 0 - I - 0x00A94C 02:893C: 37 89     .word loc_8937_12_loop
- - - - - - 0x00A94E 02:893E: 00        .byte $00   ; 
- D 0 - I - 0x00A94F 02:893F: 05        .byte $05   ; 



_off047_hawk_8940_12_right:
- D 0 - I - 0x00A950 02:8940: 52        .byte con_chr_bank_spr + $52   ; 
- D 0 - I - 0x00A951 02:8941: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00A952 02:8942: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00A953 02:8943: 12 88     .word _off058_spr_data_hawk_0x00C822_12_00
- D 0 - I - 0x00A955 02:8945: 49 89     .word loc_8949_12_next
- - - - - - 0x00A957 02:8947: 00        .byte $00   ; 
- D 0 - I - 0x00A958 02:8948: 05        .byte $05   ; 



loc_8949_12_next:
loc_8949_12_loop:
- D 0 - I - 0x00A959 02:8949: 52        .byte con_chr_bank_spr + $52   ; 
- D 0 - I - 0x00A95A 02:894A: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00A95B 02:894B: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00A95C 02:894C: 2C 88     .word _off058_spr_data_hawk_0x00C83C_12_01
- D 0 - I - 0x00A95E 02:894E: 49 89     .word loc_8949_12_loop
- - - - - - 0x00A960 02:8950: 00        .byte $00   ; 
- D 0 - I - 0x00A961 02:8951: 05        .byte $05   ; 



tbl_0x00A962_spr_data:
- - - - - - 0x00A962 02:8952: 49 88     .word _off045_spr_data_0x00C859_00   ; unused, see 0x016B0E
- D 0 - - - 0x00A964 02:8954: 49 88     .word _off045_spr_data_0x00C859_01
- D 0 - - - 0x00A966 02:8956: 49 88     .word _off045_spr_data_0x00C859_02
- D 0 - - - 0x00A968 02:8958: 4E 88     .word _off045_spr_data_0x00C85E_03
- D 0 - - - 0x00A96A 02:895A: 53 88     .word _off045_spr_data_0x00C863_04
- D 0 - - - 0x00A96C 02:895C: 4E 88     .word _off045_spr_data_0x00C85E_05
- D 0 - - - 0x00A96E 02:895E: 53 88     .word _off045_spr_data_0x00C863_06
- D 0 - - - 0x00A970 02:8960: 58 88     .word _off045_spr_data_0x00C868_07
- D 0 - - - 0x00A972 02:8962: 58 88     .word _off045_spr_data_0x00C868_08
- D 0 - - - 0x00A974 02:8964: 60 88     .word _off045_spr_data_0x00C870_09
- D 0 - - - 0x00A976 02:8966: 60 88     .word _off045_spr_data_0x00C870_0A
- D 0 - - - 0x00A978 02:8968: 68 88     .word _off045_spr_data_0x00C878_0B
- D 0 - - - 0x00A97A 02:896A: 68 88     .word _off045_spr_data_0x00C878_0C
- D 0 - - - 0x00A97C 02:896C: 6D 88     .word _off045_spr_data_0x00C87D_0D
- D 0 - - - 0x00A97E 02:896E: 6D 88     .word _off045_spr_data_0x00C87D_0E
- D 0 - - - 0x00A980 02:8970: 75 88     .word _off045_spr_data_0x00C885_0F
- D 0 - - - 0x00A982 02:8972: 75 88     .word _off045_spr_data_0x00C885_10
- D 0 - - - 0x00A984 02:8974: 7D 88     .word _off045_spr_data_0x00C88D_11
- D 0 - - - 0x00A986 02:8976: 7D 88     .word _off045_spr_data_0x00C88D_12
- D 0 - - - 0x00A988 02:8978: 88 88     .word _off045_spr_data_0x00C898_13
- D 0 - - - 0x00A98A 02:897A: 88 88     .word _off045_spr_data_0x00C898_14
- D 0 - - - 0x00A98C 02:897C: 8D 88     .word _off045_spr_data_0x00C89D_15
- D 0 - - - 0x00A98E 02:897E: 8D 88     .word _off045_spr_data_0x00C89D_16
- D 0 - - - 0x00A990 02:8980: 95 88     .word _off045_spr_data_0x00C8A5_17
- D 0 - - - 0x00A992 02:8982: 95 88     .word _off045_spr_data_0x00C8A5_18
- D 0 - - - 0x00A994 02:8984: 9D 88     .word _off045_spr_data_0x00C8AD_19
- D 0 - - - 0x00A996 02:8986: A5 88     .word _off045_spr_data_0x00C8B5_1A
- D 0 - - - 0x00A998 02:8988: 9D 88     .word _off045_spr_data_0x00C8AD_1B
- D 0 - - - 0x00A99A 02:898A: A5 88     .word _off045_spr_data_0x00C8B5_1C
- D 0 - - - 0x00A99C 02:898C: AD 88     .word _off045_spr_data_0x00C8BD_1D
- D 0 - - - 0x00A99E 02:898E: B8 88     .word _off045_spr_data_0x00C8C8_1E
- D 0 - - - 0x00A9A0 02:8990: AD 88     .word _off045_spr_data_0x00C8BD_1F
- D 0 - - - 0x00A9A2 02:8992: B8 88     .word _off045_spr_data_0x00C8C8_20
- D 0 - - - 0x00A9A4 02:8994: C3 88     .word _off045_spr_data_0x00C8D3_21
- D 0 - - - 0x00A9A6 02:8996: C8 88     .word _off045_spr_data_0x00C8D8_22
- D 0 - - - 0x00A9A8 02:8998: C3 88     .word _off045_spr_data_0x00C8D3_23
- D 0 - - - 0x00A9AA 02:899A: C8 88     .word _off045_spr_data_0x00C8D8_24



tbl_0x00A9AC_byte_00_or_80:
; bzk optimize
- - - - - - 0x00A9AC 02:899C: F8 89     .word off_89F8_byte_00 ; unused, see 0x016B0E
- D 0 - - - 0x00A9AE 02:899E: F8 89     .word off_89F8_byte_00 ; 01
- D 0 - - - 0x00A9B0 02:89A0: FA 89     .word off_89FA_byte_80 ; 02
- D 0 - - - 0x00A9B2 02:89A2: F8 89     .word off_89F8_byte_00 ; 03
- D 0 - - - 0x00A9B4 02:89A4: F8 89     .word off_89F8_byte_00 ; 04
- D 0 - - - 0x00A9B6 02:89A6: FA 89     .word off_89FA_byte_80 ; 05
- D 0 - - - 0x00A9B8 02:89A8: FA 89     .word off_89FA_byte_80 ; 06
- D 0 - - - 0x00A9BA 02:89AA: F8 89     .word off_89F8_byte_00 ; 07
- D 0 - - - 0x00A9BC 02:89AC: FA 89     .word off_89FA_byte_80 ; 08
- D 0 - - - 0x00A9BE 02:89AE: F8 89     .word off_89F8_byte_00 ; 09
- D 0 - - - 0x00A9C0 02:89B0: FA 89     .word off_89FA_byte_80 ; 0A
- D 0 - - - 0x00A9C2 02:89B2: FA 89     .word off_89FA_byte_80 ; 0B
- D 0 - - - 0x00A9C4 02:89B4: F8 89     .word off_89F8_byte_00 ; 0C
- D 0 - - - 0x00A9C6 02:89B6: F8 89     .word off_89F8_byte_00 ; 0D
- D 0 - - - 0x00A9C8 02:89B8: FA 89     .word off_89FA_byte_80 ; 0E
- D 0 - - - 0x00A9CA 02:89BA: F8 89     .word off_89F8_byte_00 ; 0F
- D 0 - - - 0x00A9CC 02:89BC: FA 89     .word off_89FA_byte_80 ; 10
- D 0 - - - 0x00A9CE 02:89BE: F8 89     .word off_89F8_byte_00 ; 11
- D 0 - - - 0x00A9D0 02:89C0: FA 89     .word off_89FA_byte_80 ; 12
- D 0 - - - 0x00A9D2 02:89C2: F8 89     .word off_89F8_byte_00 ; 13
- D 0 - - - 0x00A9D4 02:89C4: FA 89     .word off_89FA_byte_80 ; 14
- D 0 - - - 0x00A9D6 02:89C6: F8 89     .word off_89F8_byte_00 ; 15
- D 0 - - - 0x00A9D8 02:89C8: FA 89     .word off_89FA_byte_80 ; 16
- D 0 - - - 0x00A9DA 02:89CA: F8 89     .word off_89F8_byte_00 ; 17
- D 0 - - - 0x00A9DC 02:89CC: FA 89     .word off_89FA_byte_80 ; 18
- D 0 - - - 0x00A9DE 02:89CE: F8 89     .word off_89F8_byte_00 ; 19
- D 0 - - - 0x00A9E0 02:89D0: F8 89     .word off_89F8_byte_00 ; 1A
- D 0 - - - 0x00A9E2 02:89D2: FA 89     .word off_89FA_byte_80 ; 1B
- D 0 - - - 0x00A9E4 02:89D4: FA 89     .word off_89FA_byte_80 ; 1C
- D 0 - - - 0x00A9E6 02:89D6: F8 89     .word off_89F8_byte_00 ; 1D
- D 0 - - - 0x00A9E8 02:89D8: F8 89     .word off_89F8_byte_00 ; 1E
- D 0 - - - 0x00A9EA 02:89DA: FA 89     .word off_89FA_byte_80 ; 1F
- D 0 - - - 0x00A9EC 02:89DC: FA 89     .word off_89FA_byte_80 ; 20
- D 0 - - - 0x00A9EE 02:89DE: F8 89     .word off_89F8_byte_00 ; 21
- D 0 - - - 0x00A9F0 02:89E0: F8 89     .word off_89F8_byte_00 ; 22
- D 0 - - - 0x00A9F2 02:89E2: FA 89     .word off_89FA_byte_80 ; 23
- D 0 - - - 0x00A9F4 02:89E4: FA 89     .word off_89FA_byte_80 ; 24



tbl_0x00A9F6:
- D 0 - - - 0x00A9F6 02:89E6: EA 89     .word off_89EA_00
- D 0 - - - 0x00A9F8 02:89E8: F1 89     .word off_89F1_01

; bzk optimize, same bytes, except 00/80 and loop pointer

off_89EA_00:
loc_89EA_loop:
- D 0 - I - 0x00A9FA 02:89EA: 54        .byte con_chr_bank_spr + $54   ; 
- D 0 - I - 0x00A9FB 02:89EB: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00A9FC 02:89EC: 10        .byte $10   ; next animation delay
- D 0 - I - 0x00A9FD 02:89ED: CD 88     .word off_0x00C8DD_00_spr_data
- D 0 - I - 0x00A9FF 02:89EF: EA 89     .word loc_89EA_loop



off_89F1_01:
loc_89F1_loop:
- D 0 - I - 0x00AA01 02:89F1: 54        .byte con_chr_bank_spr + $54   ; 
- D 0 - I - 0x00AA02 02:89F2: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00AA03 02:89F3: 10        .byte $10   ; next animation delay
- D 0 - I - 0x00AA04 02:89F4: CD 88     .word off_0x00C8DD_01_spr_data
- D 0 - I - 0x00AA06 02:89F6: F1 89     .word loc_89F1_loop



off_89F8_byte_00:
- - - - - - 0x00AA08 02:89F8: 54        .byte $54   ; 00 bzk optimize, unused, see 0x01FBD7
- D 0 - I - 0x00AA09 02:89F9: 00        .byte $00   ; 01 



off_89FA_byte_80:
- - - - - - 0x00AA0A 02:89FA: 54        .byte $54   ; 00 bzk optimize, unused, see 0x01FBD7
- D 0 - I - 0x00AA0B 02:89FB: 80        .byte $80   ; 01 



tbl_0x00AA0C:
- D 0 - - - 0x00AA0C 02:89FC: 04 8A     .word off_8A04_00
- D 0 - - - 0x00AA0E 02:89FE: 04 8A     .word off_8A04_01
- D 0 - - - 0x00AA10 02:8A00: 0E 8A     .word off_8A0E_02
- D 0 - - - 0x00AA12 02:8A02: 0E 8A     .word off_8A0E_03



off_8A04_00:
off_8A04_01:
- D 0 - I - 0x00AA14 02:8A04: 18 8A     .word _off030_00_01_8A18_00
- D 0 - I - 0x00AA16 02:8A06: 1F 8A     .word _off030_00_01_8A1F_01
- D 0 - I - 0x00AA18 02:8A08: 26 8A     .word _off030_00_01_8A26_02
- D 0 - I - 0x00AA1A 02:8A0A: 2D 8A     .word _off030_00_01_8A2D_03
- D 0 - I - 0x00AA1C 02:8A0C: 34 8A     .word _off030_00_01_8A34_04



off_8A0E_02:
off_8A0E_03:
- D 0 - I - 0x00AA1E 02:8A0E: 3B 8A     .word _off030_02_03_8A3B_00
- - - - - - 0x00AA20 02:8A10: 49 8A     .word _off030_02_03_8A49_01
- D 0 - I - 0x00AA22 02:8A12: 57 8A     .word _off030_02_03_8A57_02
- D 0 - I - 0x00AA24 02:8A14: 65 8A     .word _off030_02_03_8A65_03
- D 0 - I - 0x00AA26 02:8A16: 73 8A     .word _off030_02_03_8A73_04 ; shoot explosive arrow top right



_off030_00_01_8A18_00:
loc_8A18_loop:
- D 0 - I - 0x00AA28 02:8A18: 55        .byte con_chr_bank_spr + $55   ; 
- D 0 - I - 0x00AA29 02:8A19: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00AA2A 02:8A1A: 10        .byte $10   ; next animation delay
- D 0 - I - 0x00AA2B 02:8A1B: E5 88     .word off_0x00C8F5_spr_data
- D 0 - I - 0x00AA2D 02:8A1D: 18 8A     .word loc_8A18_loop



_off030_00_01_8A1F_01:
loc_8A1F_loop:
- D 0 - I - 0x00AA2F 02:8A1F: 55        .byte con_chr_bank_spr + $55   ; 
- D 0 - I - 0x00AA30 02:8A20: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00AA31 02:8A21: 10        .byte $10   ; next animation delay
- D 0 - I - 0x00AA32 02:8A22: DD 88     .word off_0x00C8ED_spr_data
- D 0 - I - 0x00AA34 02:8A24: 1F 8A     .word loc_8A1F_loop



_off030_00_01_8A26_02:
loc_8A26_loop:
- D 0 - I - 0x00AA36 02:8A26: 55        .byte con_chr_bank_spr + $55   ; 
- D 0 - I - 0x00AA37 02:8A27: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00AA38 02:8A28: 10        .byte $10   ; next animation delay
- D 0 - I - 0x00AA39 02:8A29: D5 88     .word off_0x00C8E5_spr_data
- D 0 - I - 0x00AA3B 02:8A2B: 26 8A     .word loc_8A26_loop



_off030_00_01_8A2D_03:
loc_8A2D_loop:
- D 0 - I - 0x00AA3D 02:8A2D: 55        .byte con_chr_bank_spr + $55   ; 
- D 0 - I - 0x00AA3E 02:8A2E: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00AA3F 02:8A2F: 10        .byte $10   ; next animation delay
- D 0 - I - 0x00AA40 02:8A30: D5 88     .word off_0x00C8E5_spr_data
- D 0 - I - 0x00AA42 02:8A32: 2D 8A     .word loc_8A2D_loop



_off030_00_01_8A34_04:
loc_8A34_loop:
- D 0 - I - 0x00AA44 02:8A34: 55        .byte con_chr_bank_spr + $55   ; 
- D 0 - I - 0x00AA45 02:8A35: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00AA46 02:8A36: 10        .byte $10   ; next animation delay
- D 0 - I - 0x00AA47 02:8A37: DD 88     .word off_0x00C8ED_spr_data
- D 0 - I - 0x00AA49 02:8A39: 34 8A     .word loc_8A34_loop



_off030_02_03_8A3B_00:
loc_8A3B_loop:
- D 0 - I - 0x00AA4B 02:8A3B: 55        .byte con_chr_bank_spr + $55   ; 
- D 0 - I - 0x00AA4C 02:8A3C: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00AA4D 02:8A3D: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00AA4E 02:8A3E: 0A 89     .word off_0x00C91A_spr_data
- D 0 - I - 0x00AA50 02:8A40: 42 8A     .word loc_8A42_next



loc_8A42_next:
- D 0 - I - 0x00AA52 02:8A42: 55        .byte con_chr_bank_spr + $55   ; 
- D 0 - I - 0x00AA53 02:8A43: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00AA54 02:8A44: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00AA55 02:8A45: 0F 89     .word off_0x00C91F_spr_data
- D 0 - I - 0x00AA57 02:8A47: 3B 8A     .word loc_8A3B_loop



_off030_02_03_8A49_01:
loc_8A49_loop:
- - - - - - 0x00AA59 02:8A49: 55        .byte con_chr_bank_spr + $55   ; 
- - - - - - 0x00AA5A 02:8A4A: 00        .byte $00   ; spr_A flip
- - - - - - 0x00AA5B 02:8A4B: 04        .byte $04   ; next animation delay
- - - - - - 0x00AA5C 02:8A4C: FA 88     .word off_0x00C90A_spr_data
- - - - - - 0x00AA5E 02:8A4E: 50 8A     .word loc_8A50_next



loc_8A50_next:
- - - - - - 0x00AA60 02:8A50: 55        .byte con_chr_bank_spr + $55   ; 
- - - - - - 0x00AA61 02:8A51: 00        .byte $00   ; spr_A flip
- - - - - - 0x00AA62 02:8A52: 04        .byte $04   ; next animation delay
- - - - - - 0x00AA63 02:8A53: 02 89     .word off_0x00C912_spr_data
- - - - - - 0x00AA65 02:8A55: 49 8A     .word loc_8A49_loop



_off030_02_03_8A57_02:
loc_8A57_loop:
- D 0 - I - 0x00AA67 02:8A57: 55        .byte con_chr_bank_spr + $55   ; 
- D 0 - I - 0x00AA68 02:8A58: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00AA69 02:8A59: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00AA6A 02:8A5A: EA 88     .word off_0x00C8FA_spr_data
- D 0 - I - 0x00AA6C 02:8A5C: 5E 8A     .word loc_8A5E_next



loc_8A5E_next:
- D 0 - I - 0x00AA6E 02:8A5E: 55        .byte con_chr_bank_spr + $55   ; 
- D 0 - I - 0x00AA6F 02:8A5F: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00AA70 02:8A60: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00AA71 02:8A61: F2 88     .word off_0x00C902_spr_data
- D 0 - I - 0x00AA73 02:8A63: 57 8A     .word loc_8A57_loop



_off030_02_03_8A65_03:
loc_8A65_loop:
- D 0 - I - 0x00AA75 02:8A65: 55        .byte con_chr_bank_spr + $55   ; 
- D 0 - I - 0x00AA76 02:8A66: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00AA77 02:8A67: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00AA78 02:8A68: EA 88     .word off_0x00C8FA_spr_data
- D 0 - I - 0x00AA7A 02:8A6A: 6C 8A     .word loc_8A6C_next



loc_8A6C_next:
- D 0 - I - 0x00AA7C 02:8A6C: 55        .byte con_chr_bank_spr + $55   ; 
- D 0 - I - 0x00AA7D 02:8A6D: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00AA7E 02:8A6E: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00AA7F 02:8A6F: F2 88     .word off_0x00C902_spr_data
- D 0 - I - 0x00AA81 02:8A71: 65 8A     .word loc_8A65_loop



_off030_02_03_8A73_04:
loc_8A73_loop:
- D 0 - I - 0x00AA83 02:8A73: 55        .byte con_chr_bank_spr + $55   ; 
- D 0 - I - 0x00AA84 02:8A74: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00AA85 02:8A75: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00AA86 02:8A76: FA 88     .word off_0x00C90A_spr_data
- D 0 - I - 0x00AA88 02:8A78: 7A 8A     .word loc_8A7A_next



loc_8A7A_next:
- D 0 - I - 0x00AA8A 02:8A7A: 55        .byte con_chr_bank_spr + $55   ; 
- D 0 - I - 0x00AA8B 02:8A7B: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00AA8C 02:8A7C: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00AA8D 02:8A7D: 02 89     .word off_0x00C912_spr_data
- D 0 - I - 0x00AA8F 02:8A7F: 73 8A     .word loc_8A73_loop



tbl_0x00AA91:
- - - - - - 0x00AA91 02:8A81: 21 8B     .word _off002_8B21_00
- D 0 - - - 0x00AA93 02:8A83: 21 8B     .word _off002_8B21_01
- - - - - - 0x00AA95 02:8A85: 21 8B     .word _off002_8B21_02
- - - - - - 0x00AA97 02:8A87: 21 8B     .word _off002_8B21_03
- - - - - - 0x00AA99 02:8A89: 21 8B     .word _off002_8B21_04
- D 0 - - - 0x00AA9B 02:8A8B: 21 8B     .word _off002_8B21_05
- D 0 - - - 0x00AA9D 02:8A8D: 21 8B     .word _off002_8B21_06
- D 0 - - - 0x00AA9F 02:8A8F: 21 8B     .word _off002_8B21_07
- D 0 - - - 0x00AAA1 02:8A91: 21 8B     .word _off002_8B21_08
- D 0 - - - 0x00AAA3 02:8A93: 21 8B     .word _off002_8B21_09
- D 0 - - - 0x00AAA5 02:8A95: 21 8B     .word _off002_8B21_0A
- D 0 - - - 0x00AAA7 02:8A97: 21 8B     .word _off002_8B21_0B
- - - - - - 0x00AAA9 02:8A99: 21 8B     .word _off002_8B21_0C
- D 0 - - - 0x00AAAB 02:8A9B: 33 8B     .word _off002_8B33_0D
- D 0 - - - 0x00AAAD 02:8A9D: 33 8B     .word _off002_8B33_0E
- D 0 - - - 0x00AAAF 02:8A9F: 33 8B     .word _off002_8B33_0F
- D 0 - - - 0x00AAB1 02:8AA1: 33 8B     .word _off002_8B33_10
- D 0 - - - 0x00AAB3 02:8AA3: 33 8B     .word _off002_8B33_11
- - - - - - 0x00AAB5 02:8AA5: 33 8B     .word _off002_8B33_12
- D 0 - - - 0x00AAB7 02:8AA7: 33 8B     .word _off002_8B33_13
- - - - - - 0x00AAB9 02:8AA9: 33 8B     .word _off002_8B33_14
- D 0 - - - 0x00AABB 02:8AAB: 45 8B     .word _off002_8B45_15
- - - - - - 0x00AABD 02:8AAD: 45 8B     .word _off002_8B45_16
- - - - - - 0x00AABF 02:8AAF: 45 8B     .word _off002_8B45_17
- - - - - - 0x00AAC1 02:8AB1: 33 8B     .word _off002_8B33_18
- - - - - - 0x00AAC3 02:8AB3: 33 8B     .word _off002_8B33_19
- - - - - - 0x00AAC5 02:8AB5: 33 8B     .word _off002_8B33_1A
- - - - - - 0x00AAC7 02:8AB7: 59 8B     .word _off002_8B59_1B
- - - - - - 0x00AAC9 02:8AB9: 59 8B     .word _off002_8B59_1C
- - - - - - 0x00AACB 02:8ABB: 59 8B     .word _off002_8B59_1D
- - - - - - 0x00AACD 02:8ABD: 59 8B     .word _off002_8B59_1E
- D 0 - - - 0x00AACF 02:8ABF: 59 8B     .word _off002_8B59_1F
- D 0 - - - 0x00AAD1 02:8AC1: 59 8B     .word _off002_8B59_20
- - - - - - 0x00AAD3 02:8AC3: 59 8B     .word _off002_8B59_21
- - - - - - 0x00AAD5 02:8AC5: 59 8B     .word _off002_8B59_22
- D 0 - - - 0x00AAD7 02:8AC7: 59 8B     .word _off002_8B59_23
- - - - - - 0x00AAD9 02:8AC9: 59 8B     .word _off002_8B59_24
- D 0 - - - 0x00AADB 02:8ACB: 59 8B     .word _off002_8B59_25
- D 0 - - - 0x00AADD 02:8ACD: 59 8B     .word _off002_8B59_26
- D 0 - - - 0x00AADF 02:8ACF: 75 8B     .word _off002_8B75_27
- - - - - - 0x00AAE1 02:8AD1: 75 8B     .word _off002_8B75_28
- D 0 - - - 0x00AAE3 02:8AD3: 95 8B     .word _off002_8B95_29
- D 0 - - - 0x00AAE5 02:8AD5: B5 8B     .word _off002_8BB5_2A
- D 0 - - - 0x00AAE7 02:8AD7: D3 8B     .word _off002_8BD3_2B
- D 0 - - - 0x00AAE9 02:8AD9: E3 8B     .word _off002_8BE3_2C
- D 0 - - - 0x00AAEB 02:8ADB: EF 8B     .word _off002_8BEF_2D
- D 0 - - - 0x00AAED 02:8ADD: 09 8C     .word _off002_8C09_2E
- - - - - - 0x00AAEF 02:8ADF: 55 94     .word _off002_9455_2F
- D 0 - - - 0x00AAF1 02:8AE1: 15 8C     .word _off002_8C15_30
- - - - - - 0x00AAF3 02:8AE3: 23 8C     .word _off002_8C23_31
- D 0 - - - 0x00AAF5 02:8AE5: 3F 8C     .word _off002_8C3F_32
- D 0 - - - 0x00AAF7 02:8AE7: 31 8C     .word _off002_8C31_33
- - - - - - 0x00AAF9 02:8AE9: 23 8C     .word _off002_8C23_34
- - - - - - 0x00AAFB 02:8AEB: 55 94     .word _off002_9455_35
- D 0 - - - 0x00AAFD 02:8AED: 4D 8C     .word _off002_8C4D_36
- D 0 - - - 0x00AAFF 02:8AEF: 4D 8C     .word _off002_8C4D_37
- D 0 - - - 0x00AB01 02:8AF1: 5B 8C     .word _off002_8C5B_38
- D 0 - - - 0x00AB03 02:8AF3: 5B 8C     .word _off002_8C5B_39
- D 0 - - - 0x00AB05 02:8AF5: 69 8C     .word _off002_8C69_3A
- D 0 - - - 0x00AB07 02:8AF7: 77 8C     .word _off002_8C77_3B
- - - - - - 0x00AB09 02:8AF9: 85 8C     .word _off002_8C85_3C
- D 0 - - - 0x00AB0B 02:8AFB: 93 8C     .word _off002_8C93_3D
- D 0 - - - 0x00AB0D 02:8AFD: 93 8C     .word _off002_8C93_3E
- D 0 - - - 0x00AB0F 02:8AFF: 93 8C     .word _off002_8C93_3F
- D 0 - - - 0x00AB11 02:8B01: 93 8C     .word _off002_8C93_40
- D 0 - - - 0x00AB13 02:8B03: A3 8C     .word _off002_8CA3_41
- D 0 - - - 0x00AB15 02:8B05: A3 8C     .word _off002_8CA3_42
- D 0 - - - 0x00AB17 02:8B07: 55 94     .word _off002_9455_43
- D 0 - - - 0x00AB19 02:8B09: 55 94     .word _off002_9455_44
- D 0 - - - 0x00AB1B 02:8B0B: 55 94     .word _off002_9455_45
- D 0 - - - 0x00AB1D 02:8B0D: 55 94     .word _off002_9455_46
- D 0 - - - 0x00AB1F 02:8B0F: 55 94     .word _off002_9455_47
- D 0 - - - 0x00AB21 02:8B11: 55 94     .word _off002_9455_48
- D 0 - - - 0x00AB23 02:8B13: 55 94     .word _off002_9455_49
- - - - - - 0x00AB25 02:8B15: 83 94     .word _off002_9483_4A
- D 0 - - - 0x00AB27 02:8B17: 55 94     .word _off002_9455_4B
- D 0 - - - 0x00AB29 02:8B19: A9 94     .word _off002_94A9_4C
- D 0 - - - 0x00AB2B 02:8B1B: A9 94     .word _off002_94A9_4D
- D 0 - - - 0x00AB2D 02:8B1D: A9 94     .word _off002_94A9_4E
- D 0 - - - 0x00AB2F 02:8B1F: A9 94     .word _off002_94A9_4F



_off002_8B21_00:
; con_enemy_id_00
_off002_8B21_01:
; con_enemy_id_01
_off002_8B21_02:
; con_enemy_id_02
_off002_8B21_03:
; con_enemy_id_03
_off002_8B21_04:
; con_enemy_id_04
_off002_8B21_05:
; con_enemy_id_05
_off002_8B21_06:
; con_enemy_id_06
_off002_8B21_07:
; con_enemy_id_07
_off002_8B21_08:
; con_enemy_id_08
_off002_8B21_09:
; con_enemy_id_09
_off002_8B21_0A:
; con_enemy_id_0A
_off002_8B21_0B:
; con_enemy_id_0B
_off002_8B21_0C:
; con_enemy_id_0C
- D 0 - I - 0x00AB31 02:8B21: B1 8C     .word _off048_8CB1_01_00
- D 0 - I - 0x00AB33 02:8B23: B5 8C     .word _off048_8CB5_01_01
- D 0 - I - 0x00AB35 02:8B25: B9 8C     .word _off048_8CB9_01_02
- D 0 - I - 0x00AB37 02:8B27: BD 8C     .word _off048_8CBD_01_03
- D 0 - I - 0x00AB39 02:8B29: C1 8C     .word _off048_8CC1_01_04
- D 0 - I - 0x00AB3B 02:8B2B: C5 8C     .word _off048_8CC5_01_05
- D 0 - I - 0x00AB3D 02:8B2D: C9 8C     .word _off048_8CC9_01_06
- D 0 - I - 0x00AB3F 02:8B2F: CD 8C     .word _off048_8CCD_01_07
- - - - - - 0x00AB41 02:8B31: B5 8C     .word _off048_8CB5_01_08



_off002_8B33_0D:
; con_enemy_id_0D
_off002_8B33_0E:
; con_enemy_id_0E
_off002_8B33_0F:
; con_enemy_id_0F
_off002_8B33_10:
; con_enemy_id_10
_off002_8B33_11:
; con_enemy_id_11
_off002_8B33_12:
; con_enemy_id_12
_off002_8B33_13:
; con_enemy_id_13
_off002_8B33_14:
; con_enemy_id_14
_off002_8B33_18:
; con_enemy_id_18
_off002_8B33_19:
; con_enemy_id_19
_off002_8B33_1A:
; con_enemy_id_1A
- D 0 - I - 0x00AB43 02:8B33: D1 8C     .word _off048_8CD1_0D_00
- D 0 - I - 0x00AB45 02:8B35: D5 8C     .word _off048_8CD5_0D_01
- D 0 - I - 0x00AB47 02:8B37: D9 8C     .word _off048_8CD9_0D_02
- D 0 - I - 0x00AB49 02:8B39: DD 8C     .word _off048_8CDD_0D_03
- D 0 - I - 0x00AB4B 02:8B3B: E1 8C     .word _off048_8CE1_0D_04
- D 0 - I - 0x00AB4D 02:8B3D: E5 8C     .word _off048_8CE5_0D_05
- D 0 - I - 0x00AB4F 02:8B3F: E9 8C     .word _off048_8CE9_0D_06
- D 0 - I - 0x00AB51 02:8B41: ED 8C     .word _off048_8CED_0D_07
- - - - - - 0x00AB53 02:8B43: D5 8C     .word _off048_8CD5_0D_08



_off002_8B45_15:
; con_enemy_id_15
_off002_8B45_16:
; con_enemy_id_16
_off002_8B45_17:
; con_enemy_id_17
- D 0 - I - 0x00AB55 02:8B45: 41 8D     .word _off048_8D41_15_00
- D 0 - I - 0x00AB57 02:8B47: 45 8D     .word _off048_8D45_15_01
- D 0 - I - 0x00AB59 02:8B49: B9 8C     .word _off048_8CB9_15_02
- - - - - - 0x00AB5B 02:8B4B: 49 8D     .word _off048_8D49_15_03
- D 0 - I - 0x00AB5D 02:8B4D: 49 8D     .word _off048_8D49_15_04
- - - - - - 0x00AB5F 02:8B4F: 41 8D     .word _off048_8D41_15_05
- - - - - - 0x00AB61 02:8B51: 41 8D     .word _off048_8D41_15_06
- - - - - - 0x00AB63 02:8B53: 41 8D     .word _off048_8D41_15_07
- - - - - - 0x00AB65 02:8B55: 41 8D     .word _off048_8D41_15_08
- D 0 - I - 0x00AB67 02:8B57: 41 8D     .word _off048_8D41_15_09



_off002_8B59_1B:
; con_enemy_id_1B
_off002_8B59_1C:
; con_enemy_id_1C
_off002_8B59_1D:
; con_enemy_id_1D
_off002_8B59_1E:
; con_enemy_id_1E
_off002_8B59_1F:
; con_enemy_id_1F
_off002_8B59_20:
; con_enemy_id_20
_off002_8B59_21:
; con_enemy_id_21
_off002_8B59_22:
; con_enemy_id_22
_off002_8B59_23:
; con_enemy_id_23
_off002_8B59_24:
; con_enemy_id_24
_off002_8B59_25:
; con_enemy_id_25
_off002_8B59_26:
; con_enemy_id_26
- D 0 - I - 0x00AB69 02:8B59: F1 8C     .word _off048_8CF1_1F_00
- - - - - - 0x00AB6B 02:8B5B: F5 8C     .word _off048_8CF5_1F_01
- D 0 - I - 0x00AB6D 02:8B5D: F9 8C     .word _off048_8CF9_1F_02
- - - - - - 0x00AB6F 02:8B5F: FD 8C     .word _off048_8CFD_1F_03
- - - - - - 0x00AB71 02:8B61: 01 8D     .word _off048_8D01_1F_04
- D 0 - I - 0x00AB73 02:8B63: 05 8D     .word _off048_8D05_1F_05
- D 0 - I - 0x00AB75 02:8B65: 09 8D     .word _off048_8D09_1F_06
- - - - - - 0x00AB77 02:8B67: 0D 8D     .word _off048_8D0D_1F_07
- - - - - - 0x00AB79 02:8B69: 05 8D     .word _off048_8D05_1F_08
- D 0 - I - 0x00AB7B 02:8B6B: 11 8D     .word _off048_8D11_1F_09
- D 0 - I - 0x00AB7D 02:8B6D: 11 8D     .word _off048_8D11_1F_0A
- D 0 - I - 0x00AB7F 02:8B6F: 15 8D     .word _off048_8D15_1F_0B
- D 0 - I - 0x00AB81 02:8B71: 19 8D     .word _off048_8D19_1F_0C
- D 0 - I - 0x00AB83 02:8B73: 1D 8D     .word _off048_8D1D_1F_0D



_off002_8B75_27:
; con_enemy_id_27
_off002_8B75_28:
; con_enemy_id_28
- D 0 - I - 0x00AB85 02:8B75: 21 8D     .word _off048_8D21_27_00
- D 0 - I - 0x00AB87 02:8B77: 25 8D     .word _off048_8D25_27_01
- D 0 - I - 0x00AB89 02:8B79: 29 8D     .word _off048_8D29_27_02
- - - - - - 0x00AB8B 02:8B7B: 2D 8D     .word _off048_8D2D_27_03
- - - - - - 0x00AB8D 02:8B7D: 2D 8D     .word _off048_8D2D_27_04
- D 0 - I - 0x00AB8F 02:8B7F: 2D 8D     .word _off048_8D2D_27_05
- - - - - - 0x00AB91 02:8B81: 2D 8D     .word _off048_8D2D_27_06
- - - - - - 0x00AB93 02:8B83: 2D 8D     .word _off048_8D2D_27_07
- D 0 - I - 0x00AB95 02:8B85: 31 8D     .word _off048_8D31_27_08
- D 0 - I - 0x00AB97 02:8B87: 21 8D     .word _off048_8D21_27_09
- - - - - - 0x00AB99 02:8B89: 2D 8D     .word _off048_8D2D_27_0A
- - - - - - 0x00AB9B 02:8B8B: 2D 8D     .word _off048_8D2D_27_0B
- - - - - - 0x00AB9D 02:8B8D: 2D 8D     .word _off048_8D2D_27_0C
- - - - - - 0x00AB9F 02:8B8F: 2D 8D     .word _off048_8D2D_27_0D
- D 0 - I - 0x00ABA1 02:8B91: 35 8D     .word _off048_8D35_27_0E
- - - - - - 0x00ABA3 02:8B93: 2D 8D     .word _off048_8D2D_27_0F



_off002_8B95_29:
; con_enemy_id_29
- D 0 - I - 0x00ABA5 02:8B95: 3D 8D     .word _off048_8D3D_29_00
- D 0 - I - 0x00ABA7 02:8B97: 39 8D     .word _off048_8D39_29_01
- D 0 - I - 0x00ABA9 02:8B99: 29 8D     .word _off048_8D29_29_02
- - - - - - 0x00ABAB 02:8B9B: 2D 8D     .word _off048_8D2D_29_03
- - - - - - 0x00ABAD 02:8B9D: 2D 8D     .word _off048_8D2D_29_04
- D 0 - I - 0x00ABAF 02:8B9F: 2D 8D     .word _off048_8D2D_29_05
- - - - - - 0x00ABB1 02:8BA1: 2D 8D     .word _off048_8D2D_29_06
- - - - - - 0x00ABB3 02:8BA3: 2D 8D     .word _off048_8D2D_29_07
- - - - - - 0x00ABB5 02:8BA5: 31 8D     .word _off048_8D31_29_08
- D 0 - I - 0x00ABB7 02:8BA7: 3D 8D     .word _off048_8D3D_29_09
- - - - - - 0x00ABB9 02:8BA9: 2D 8D     .word _off048_8D2D_29_0A
- - - - - - 0x00ABBB 02:8BAB: 2D 8D     .word _off048_8D2D_29_0B
- - - - - - 0x00ABBD 02:8BAD: 2D 8D     .word _off048_8D2D_29_0C
- - - - - - 0x00ABBF 02:8BAF: 2D 8D     .word _off048_8D2D_29_0D
- - - - - - 0x00ABC1 02:8BB1: 35 8D     .word _off048_8D35_29_0E
- - - - - - 0x00ABC3 02:8BB3: 2D 8D     .word _off048_8D2D_29_0F



_off002_8BB5_2A:
; con_enemy_id_2A
- D 0 - I - 0x00ABC5 02:8BB5: 4D 8D     .word _off048_8D4D_2A_00
- D 0 - I - 0x00ABC7 02:8BB7: 51 8D     .word _off048_8D51_2A_01
- - - - - - 0x00ABC9 02:8BB9: 2D 8D     .word _off048_8D2D_2A_02
- D 0 - I - 0x00ABCB 02:8BBB: 55 8D     .word _off048_8D55_2A_03
- D 0 - I - 0x00ABCD 02:8BBD: 59 8D     .word _off048_8D59_2A_04
- D 0 - I - 0x00ABCF 02:8BBF: 5D 8D     .word _off048_8D5D_2A_05
- D 0 - I - 0x00ABD1 02:8BC1: 61 8D     .word _off048_8D61_2A_06
- - - - - - 0x00ABD3 02:8BC3: 61 8D     .word _off048_8D61_2A_07
- - - - - - 0x00ABD5 02:8BC5: 2D 8D     .word _off048_8D2D_2A_08
- - - - - - 0x00ABD7 02:8BC7: 2D 8D     .word _off048_8D2D_2A_09
- - - - - - 0x00ABD9 02:8BC9: 2D 8D     .word _off048_8D2D_2A_0A
- - - - - - 0x00ABDB 02:8BCB: 59 8D     .word _off048_8D59_2A_0B
- - - - - - 0x00ABDD 02:8BCD: CD 8D     .word _off048_8DCD_2A_0C
- - - - - - 0x00ABDF 02:8BCF: 2D 8D     .word _off048_8D2D_2A_0D
- D 0 - I - 0x00ABE1 02:8BD1: 65 8D     .word _off048_8D65_2A_0E



_off002_8BD3_2B:
; con_enemy_id_2B
- D 0 - I - 0x00ABE3 02:8BD3: 69 8D     .word _off048_8D69_2B_00
- D 0 - I - 0x00ABE5 02:8BD5: 71 8D     .word _off048_8D71_2B_01
- D 0 - I - 0x00ABE7 02:8BD7: 6D 8D     .word _off048_8D6D_2B_02
- D 0 - I - 0x00ABE9 02:8BD9: 71 8D     .word _off048_8D71_2B_03
- - - - - - 0x00ABEB 02:8BDB: 71 8D     .word _off048_8D71_2B_04
- - - - - - 0x00ABED 02:8BDD: 71 8D     .word _off048_8D71_2B_05
- D 0 - I - 0x00ABEF 02:8BDF: 71 8D     .word _off048_8D71_2B_06
- - - - - - 0x00ABF1 02:8BE1: 71 8D     .word _off048_8D71_2B_07



_off002_8BE3_2C:
; con_enemy_id_2C
- D 0 - I - 0x00ABF3 02:8BE3: 75 8D     .word _off048_8D75_2C_00
- - - - - - 0x00ABF5 02:8BE5: 75 8D     .word _off048_8D75_2C_01
- D 0 - I - 0x00ABF7 02:8BE7: 79 8D     .word _off048_8D79_2C_02
- - - - - - 0x00ABF9 02:8BE9: 75 8D     .word _off048_8D75_2C_03
- D 0 - I - 0x00ABFB 02:8BEB: 75 8D     .word _off048_8D75_2C_04
- - - - - - 0x00ABFD 02:8BED: 7D 8D     .word _off048_8D7D_2C_05



_off002_8BEF_2D:
; con_enemy_id_2D
- D 0 - I - 0x00ABFF 02:8BEF: 81 8D     .word _off048_8D81_2D_00
- D 0 - I - 0x00AC01 02:8BF1: 85 8D     .word _off048_8D85_2D_01
- D 0 - I - 0x00AC03 02:8BF3: 89 8D     .word _off048_8D89_2D_02
- D 0 - I - 0x00AC05 02:8BF5: 8D 8D     .word _off048_8D8D_2D_03
- D 0 - I - 0x00AC07 02:8BF7: 91 8D     .word _off048_8D91_2D_04
- D 0 - I - 0x00AC09 02:8BF9: 95 8D     .word _off048_8D95_2D_05
- D 0 - I - 0x00AC0B 02:8BFB: 99 8D     .word _off048_8D99_2D_06
- D 0 - I - 0x00AC0D 02:8BFD: 99 8D     .word _off048_8D99_2D_07
- - - - - - 0x00AC0F 02:8BFF: 2D 8D     .word _off048_8D2D_2D_08
- - - - - - 0x00AC11 02:8C01: 2D 8D     .word _off048_8D2D_2D_09
- - - - - - 0x00AC13 02:8C03: 2D 8D     .word _off048_8D2D_2D_0A
- D 0 - I - 0x00AC15 02:8C05: 9D 8D     .word _off048_8D9D_2D_0B
- D 0 - I - 0x00AC17 02:8C07: CD 8D     .word _off048_8DCD_2D_0C



_off002_8C09_2E:
; con_enemy_id_2E
- - - - - - 0x00AC19 02:8C09: 89 8D     .word _off048_8D89_2E_00
- D 0 - I - 0x00AC1B 02:8C0B: 89 8D     .word _off048_8D89_2E_01
- D 0 - I - 0x00AC1D 02:8C0D: 89 8D     .word _off048_8D89_2E_02
- - - - - - 0x00AC1F 02:8C0F: 89 8D     .word _off048_8D89_2E_03
- D 0 - I - 0x00AC21 02:8C11: 89 8D     .word _off048_8D89_2E_04
- D 0 - I - 0x00AC23 02:8C13: 89 8D     .word _off048_8D89_2E_05



_off002_8C15_30:
; con_enemy_id_30
- D 0 - I - 0x00AC25 02:8C15: A1 8D     .word _off048_8DA1_30_00
- - - - - - 0x00AC27 02:8C17: A1 8D     .word _off048_8DA1_30_01
- D 0 - I - 0x00AC29 02:8C19: A1 8D     .word _off048_8DA1_30_02
- - - - - - 0x00AC2B 02:8C1B: A1 8D     .word _off048_8DA1_30_03
- - - - - - 0x00AC2D 02:8C1D: A1 8D     .word _off048_8DA1_30_04
- D 0 - I - 0x00AC2F 02:8C1F: A1 8D     .word _off048_8DA1_30_05
- D 0 - I - 0x00AC31 02:8C21: A1 8D     .word _off048_8DA1_30_06



_off002_8C23_31:
; con_enemy_id_31
_off002_8C23_34:
; con_enemy_id_34
- - - - - - 0x00AC33 02:8C23: A5 8D     .word _off048_8DA5_31_00
- - - - - - 0x00AC35 02:8C25: B1 8D     .word _off048_8DB1_31_01
- - - - - - 0x00AC37 02:8C27: A5 8D     .word _off048_8DA5_31_02
- - - - - - 0x00AC39 02:8C29: A5 8D     .word _off048_8DA5_31_03
- - - - - - 0x00AC3B 02:8C2B: A5 8D     .word _off048_8DA5_31_04
- - - - - - 0x00AC3D 02:8C2D: A5 8D     .word _off048_8DA5_31_05
- - - - - - 0x00AC3F 02:8C2F: A5 8D     .word _off048_8DA5_31_06



_off002_8C31_33:
; con_enemy_id_33
- D 0 - I - 0x00AC41 02:8C31: A9 8D     .word _off048_8DA9_33_00
- - - - - - 0x00AC43 02:8C33: A9 8D     .word _off048_8DA9_33_01
- D 0 - I - 0x00AC45 02:8C35: A9 8D     .word _off048_8DA9_33_02
- - - - - - 0x00AC47 02:8C37: A9 8D     .word _off048_8DA9_33_03
- - - - - - 0x00AC49 02:8C39: A9 8D     .word _off048_8DA9_33_04
- D 0 - I - 0x00AC4B 02:8C3B: A9 8D     .word _off048_8DA9_33_05
- D 0 - I - 0x00AC4D 02:8C3D: A9 8D     .word _off048_8DA9_33_06



_off002_8C3F_32:
; con_enemy_id_32
- D 0 - I - 0x00AC4F 02:8C3F: AD 8D     .word _off048_8DAD_32_00
- - - - - - 0x00AC51 02:8C41: AD 8D     .word _off048_8DAD_32_01
- D 0 - I - 0x00AC53 02:8C43: AD 8D     .word _off048_8DAD_32_02
- - - - - - 0x00AC55 02:8C45: AD 8D     .word _off048_8DAD_32_03
- - - - - - 0x00AC57 02:8C47: AD 8D     .word _off048_8DAD_32_04
- D 0 - I - 0x00AC59 02:8C49: AD 8D     .word _off048_8DAD_32_05
- D 0 - I - 0x00AC5B 02:8C4B: AD 8D     .word _off048_8DAD_32_06



_off002_8C4D_36:
; con_enemy_id_36
_off002_8C4D_37:
; con_enemy_id_37
- D 0 - I - 0x00AC5D 02:8C4D: B5 8D     .word _off048_8DB5_36_00
- - - - - - 0x00AC5F 02:8C4F: B5 8D     .word _off048_8DB5_36_01
- D 0 - I - 0x00AC61 02:8C51: B5 8D     .word _off048_8DB5_36_02
- - - - - - 0x00AC63 02:8C53: B5 8D     .word _off048_8DB5_36_03
- - - - - - 0x00AC65 02:8C55: B5 8D     .word _off048_8DB5_36_04
- D 0 - I - 0x00AC67 02:8C57: B5 8D     .word _off048_8DB5_36_05
- D 0 - I - 0x00AC69 02:8C59: B5 8D     .word _off048_8DB5_36_06



_off002_8C5B_38:
; con_enemy_id_38
_off002_8C5B_39:
; con_enemy_id_39
- D 0 - I - 0x00AC6B 02:8C5B: B9 8D     .word _off048_8DB9_38_00
- - - - - - 0x00AC6D 02:8C5D: B9 8D     .word _off048_8DB9_38_01
- D 0 - I - 0x00AC6F 02:8C5F: B9 8D     .word _off048_8DB9_38_02
- - - - - - 0x00AC71 02:8C61: B9 8D     .word _off048_8DB9_38_03
- - - - - - 0x00AC73 02:8C63: B9 8D     .word _off048_8DB9_38_04
- D 0 - I - 0x00AC75 02:8C65: B9 8D     .word _off048_8DB9_38_05
- D 0 - I - 0x00AC77 02:8C67: B9 8D     .word _off048_8DB9_38_06



_off002_8C69_3A:
; con_enemy_id_3A
- D 0 - I - 0x00AC79 02:8C69: BD 8D     .word _off048_8DBD_3A_00
- - - - - - 0x00AC7B 02:8C6B: BD 8D     .word _off048_8DBD_3A_01
- D 0 - I - 0x00AC7D 02:8C6D: BD 8D     .word _off048_8DBD_3A_02
- D 0 - I - 0x00AC7F 02:8C6F: BD 8D     .word _off048_8DBD_3A_03
- - - - - - 0x00AC81 02:8C71: BD 8D     .word _off048_8DBD_3A_04
- D 0 - I - 0x00AC83 02:8C73: C1 8D     .word _off048_8DC1_3A_05
- D 0 - I - 0x00AC85 02:8C75: C5 8D     .word _off048_8DC5_3A_06



_off002_8C77_3B:
; con_enemy_id_3B
- D 0 - I - 0x00AC87 02:8C77: C9 8D     .word _off048_8DC9_3B_00
- - - - - - 0x00AC89 02:8C79: C9 8D     .word _off048_8DC9_3B_01
- D 0 - I - 0x00AC8B 02:8C7B: C9 8D     .word _off048_8DC9_3B_02
- D 0 - I - 0x00AC8D 02:8C7D: C9 8D     .word _off048_8DC9_3B_03
- - - - - - 0x00AC8F 02:8C7F: C9 8D     .word _off048_8DC9_3B_04
- D 0 - I - 0x00AC91 02:8C81: CD 8D     .word _off048_8DCD_3B_05
- D 0 - I - 0x00AC93 02:8C83: C9 8D     .word _off048_8DC9_3B_06



_off002_8C85_3C:
; con_enemy_id_3C
- - - - - - 0x00AC95 02:8C85: D1 8D     .word _off048_8DD1_3C_00
- - - - - - 0x00AC97 02:8C87: D1 8D     .word _off048_8DD1_3C_01
- - - - - - 0x00AC99 02:8C89: D1 8D     .word _off048_8DD1_3C_02
- - - - - - 0x00AC9B 02:8C8B: D1 8D     .word _off048_8DD1_3C_03
- - - - - - 0x00AC9D 02:8C8D: D1 8D     .word _off048_8DD1_3C_04
- - - - - - 0x00AC9F 02:8C8F: CD 8D     .word _off048_8DCD_3C_05
- - - - - - 0x00ACA1 02:8C91: D1 8D     .word _off048_8DD1_3C_06



_off002_8C93_3D:
; con_enemy_id_3D
_off002_8C93_3E:
; con_enemy_id_3E
_off002_8C93_3F:
; con_enemy_id_3F
_off002_8C93_40:
; con_enemy_id_40
- D 0 - I - 0x00ACA3 02:8C93: D5 8D     .word _off048_8DD5_3D_00
- D 0 - I - 0x00ACA5 02:8C95: D9 8D     .word _off048_8DD9_3D_01
- D 0 - I - 0x00ACA7 02:8C97: DD 8D     .word _off048_8DDD_3D_02
- D 0 - I - 0x00ACA9 02:8C99: E1 8D     .word _off048_8DE1_3D_03
- D 0 - I - 0x00ACAB 02:8C9B: E5 8D     .word _off048_8DE5_3D_04
- D 0 - I - 0x00ACAD 02:8C9D: E9 8D     .word _off048_8DE9_3D_05
- D 0 - I - 0x00ACAF 02:8C9F: ED 8D     .word _off048_8DED_3D_06
- D 0 - I - 0x00ACB1 02:8CA1: F1 8D     .word _off048_8DF1_3D_07



_off002_8CA3_41:
; con_enemy_id_41
_off002_8CA3_42:
; con_enemy_id_42
- D 0 - I - 0x00ACB3 02:8CA3: F9 8D     .word _off048_8DF9_41_00
- - - - - - 0x00ACB5 02:8CA5: F5 8D     .word _off048_8DF5_41_01
- - - - - - 0x00ACB7 02:8CA7: F5 8D     .word _off048_8DF5_41_02
- - - - - - 0x00ACB9 02:8CA9: F5 8D     .word _off048_8DF5_41_03
- - - - - - 0x00ACBB 02:8CAB: F5 8D     .word _off048_8DF5_41_04
- - - - - - 0x00ACBD 02:8CAD: F5 8D     .word _off048_8DF5_41_05
- D 0 - I - 0x00ACBF 02:8CAF: F5 8D     .word _off048_8DF5_41_06



_off048_8CB1_01_00:
- D 0 - I - 0x00ACC1 02:8CB1: FD 8D     .word off_8DFD_01_00_left
- D 0 - I - 0x00ACC3 02:8CB3: 05 8E     .word off_8E05_01_00_right



_off048_8CB5_01_01:
_off048_8CB5_01_08:
- D 0 - I - 0x00ACC5 02:8CB5: 0D 8E     .word off_8E0D_01_01_left
- D 0 - I - 0x00ACC7 02:8CB7: 2D 8E     .word off_8E2D_01_01_right



_off048_8CB9_01_02:
_off048_8CB9_15_02:
- D 0 - I - 0x00ACC9 02:8CB9: 4D 8E     .word off_8E4D_01_02_left
- D 0 - I - 0x00ACCB 02:8CBB: 55 8E     .word off_8E55_01_02_right



_off048_8CBD_01_03:
- D 0 - I - 0x00ACCD 02:8CBD: 5D 8E     .word off_8E5D_01_03_left
- D 0 - I - 0x00ACCF 02:8CBF: 65 8E     .word off_8E65_01_03_right



_off048_8CC1_01_04:
- D 0 - I - 0x00ACD1 02:8CC1: 6D 8E     .word off_8E6D_01_04_left
- D 0 - I - 0x00ACD3 02:8CC3: 75 8E     .word off_8E75_01_04_right



_off048_8CC5_01_05:
- D 0 - I - 0x00ACD5 02:8CC5: 7D 8E     .word off_8E7D_01_05_left
- D 0 - I - 0x00ACD7 02:8CC7: 85 8E     .word off_8E85_01_05_right



_off048_8CC9_01_06:
- D 0 - I - 0x00ACD9 02:8CC9: 8D 8E     .word off_8E8D_01_06_left
- D 0 - I - 0x00ACDB 02:8CCB: 95 8E     .word off_8E95_01_06_right



_off048_8CCD_01_07:
- D 0 - I - 0x00ACDD 02:8CCD: 9D 8E     .word off_8E9D_01_07_left
- D 0 - I - 0x00ACDF 02:8CCF: A5 8E     .word off_8EA5_01_07_right



_off048_8CD1_0D_00:
- D 0 - I - 0x00ACE1 02:8CD1: AD 8E     .word off_8EAD_0D_00_left
- D 0 - I - 0x00ACE3 02:8CD3: B5 8E     .word off_8EB5_0D_00_right



_off048_8CD5_0D_01:
_off048_8CD5_0D_08:
- D 0 - I - 0x00ACE5 02:8CD5: BD 8E     .word off_8EBD_0D_01_left
- D 0 - I - 0x00ACE7 02:8CD7: DD 8E     .word off_8EDD_0D_01_right



_off048_8CD9_0D_02:
- D 0 - I - 0x00ACE9 02:8CD9: FD 8E     .word off_8EFD_0D_02_left
- D 0 - I - 0x00ACEB 02:8CDB: 05 8F     .word off_8F05_0D_02_right



_off048_8CDD_0D_03:
- D 0 - I - 0x00ACED 02:8CDD: 0D 8F     .word off_8F0D_0D_03_left
- D 0 - I - 0x00ACEF 02:8CDF: 15 8F     .word off_8F15_0D_03_right



_off048_8CE1_0D_04:
- D 0 - I - 0x00ACF1 02:8CE1: 1D 8F     .word off_8F1D_0D_04_left
- D 0 - I - 0x00ACF3 02:8CE3: 25 8F     .word off_8F25_0D_04_right



_off048_8CE5_0D_05:
- D 0 - I - 0x00ACF5 02:8CE5: 1D 8F     .word off_8F1D_0D_05_left
- D 0 - I - 0x00ACF7 02:8CE7: 25 8F     .word off_8F25_0D_05_right



_off048_8CE9_0D_06:
- D 0 - I - 0x00ACF9 02:8CE9: 2D 8F     .word off_8F2D_0D_06_left
- D 0 - I - 0x00ACFB 02:8CEB: 35 8F     .word off_8F35_0D_06_right



_off048_8CED_0D_07:
- D 0 - I - 0x00ACFD 02:8CED: 3D 8F     .word off_8F3D_0D_07_left
- D 0 - I - 0x00ACFF 02:8CEF: 45 8F     .word off_8F45_0D_07_right



_off048_8CF1_1F_00:
- D 0 - I - 0x00AD01 02:8CF1: 75 8F     .word off_8F75_1F_00_left
- D 0 - I - 0x00AD03 02:8CF3: 3D 90     .word off_903D_1F_00_right



_off048_8CF5_1F_01:
- - - - - - 0x00AD05 02:8CF5: 7D 8F     .word off_8F7D_1F_01_left
- - - - - - 0x00AD07 02:8CF7: 45 90     .word off_9045_1F_01_right



_off048_8CF9_1F_02:
- D 0 - I - 0x00AD09 02:8CF9: 85 8F     .word off_8F85_1F_02_left
- D 0 - I - 0x00AD0B 02:8CFB: 85 8F     .word off_8F85_1F_02_right



_off048_8CFD_1F_03:
- - - - - - 0x00AD0D 02:8CFD: 95 8F     .word off_8F95_1F_03_left
- - - - - - 0x00AD0F 02:8CFF: 4D 90     .word off_904D_1F_03_right



_off048_8D01_1F_04:
- - - - - - 0x00AD11 02:8D01: 95 8F     .word off_8F95_1F_04_left
- - - - - - 0x00AD13 02:8D03: 4D 90     .word off_904D_1F_04_right



_off048_8D05_1F_05:
_off048_8D05_1F_08:
- D 0 - I - 0x00AD15 02:8D05: 9D 8F     .word off_8F9D_1F_05_left
- D 0 - I - 0x00AD17 02:8D07: 75 90     .word off_9075_1F_05_right



_off048_8D09_1F_06:
- D 0 - I - 0x00AD19 02:8D09: AD 8F     .word off_8FAD_1F_06_left
- D 0 - I - 0x00AD1B 02:8D0B: CD 8F     .word off_8FCD_1F_06_right



_off048_8D0D_1F_07:
- - - - - - 0x00AD1D 02:8D0D: ED 8F     .word off_8FED_1F_07_left
- - - - - - 0x00AD1F 02:8D0F: 55 90     .word off_9055_1F_07_right



_off048_8D11_1F_09:
_off048_8D11_1F_0A:
- D 0 - I - 0x00AD21 02:8D11: 0D 90     .word off_900D_1F_09_left
- D 0 - I - 0x00AD23 02:8D13: 85 90     .word off_9085_1F_09_right



_off048_8D15_1F_0B:
- D 0 - I - 0x00AD25 02:8D15: 15 90     .word off_9015_1F_0B_left
- D 0 - I - 0x00AD27 02:8D17: 8D 90     .word off_908D_1F_0B_right



_off048_8D19_1F_0C:
- D 0 - I - 0x00AD29 02:8D19: 2D 90     .word off_902D_1F_0C_left
- D 0 - I - 0x00AD2B 02:8D1B: A5 90     .word off_90A5_1F_0C_right



_off048_8D1D_1F_0D:
- D 0 - I - 0x00AD2D 02:8D1D: 35 90     .word off_9035_1F_0D_left
- D 0 - I - 0x00AD2F 02:8D1F: AD 90     .word off_90AD_1F_0D_right



_off048_8D21_27_00:
_off048_8D21_27_09:
- D 0 - I - 0x00AD31 02:8D21: B5 90     .word off_90B5_27_00_left
- D 0 - I - 0x00AD33 02:8D23: 2D 91     .word off_912D_27_00_right



_off048_8D25_27_01:
- D 0 - I - 0x00AD35 02:8D25: BD 90     .word off_90BD_27_01_left
- D 0 - I - 0x00AD37 02:8D27: 35 91     .word off_9135_27_01_right



_off048_8D29_27_02:
_off048_8D29_29_02:
- D 0 - I - 0x00AD39 02:8D29: 25 91     .word off_9125_27_02_left
- D 0 - I - 0x00AD3B 02:8D2B: 9D 91     .word off_919D_27_02_right



_off048_8D2D_27_03:
_off048_8D2D_27_04:
_off048_8D2D_27_05:
_off048_8D2D_27_06:
_off048_8D2D_27_07:
_off048_8D2D_27_0A:
_off048_8D2D_27_0B:
_off048_8D2D_27_0C:
_off048_8D2D_27_0D:
_off048_8D2D_27_0F:
_off048_8D2D_29_03:
_off048_8D2D_29_04:
_off048_8D2D_29_05:
_off048_8D2D_29_06:
_off048_8D2D_29_07:
_off048_8D2D_29_0A:
_off048_8D2D_29_0B:
_off048_8D2D_29_0C:
_off048_8D2D_29_0D:
_off048_8D2D_29_0F:
_off048_8D2D_2A_02:
_off048_8D2D_2A_08:
_off048_8D2D_2A_09:
_off048_8D2D_2A_0A:
_off048_8D2D_2A_0D:
_off048_8D2D_2D_08:
_off048_8D2D_2D_09:
_off048_8D2D_2D_0A:
- D 0 - I - 0x00AD3D 02:8D2D: ED 90     .word off_90ED_27_03_left
- D 0 - I - 0x00AD3F 02:8D2F: 65 91     .word off_9165_27_03_right



_off048_8D31_27_08:
_off048_8D31_29_08:
- D 0 - I - 0x00AD41 02:8D31: FD 90     .word off_90FD_27_08_left
- - - - - - 0x00AD43 02:8D33: 75 91     .word off_9175_27_08_right



_off048_8D35_27_0E:
_off048_8D35_29_0E:
- D 0 - I - 0x00AD45 02:8D35: 15 91     .word off_9115_27_0E_left
- D 0 - I - 0x00AD47 02:8D37: 8D 91     .word off_918D_27_0E_right



_off048_8D39_29_01:
- D 0 - I - 0x00AD49 02:8D39: CD 90     .word off_90CD_29_01_left
- D 0 - I - 0x00AD4B 02:8D3B: 45 91     .word off_9145_29_01_right



_off048_8D3D_29_00:
_off048_8D3D_29_09:
- D 0 - I - 0x00AD4D 02:8D3D: E5 90     .word off_90E5_29_00_left
- D 0 - I - 0x00AD4F 02:8D3F: 5D 91     .word off_915D_29_00_right



_off048_8D41_15_00:
_off048_8D41_15_05:
_off048_8D41_15_06:
_off048_8D41_15_07:
_off048_8D41_15_08:
_off048_8D41_15_09:
- D 0 - I - 0x00AD51 02:8D41: 4D 8F     .word off_8F4D_15_00_left
- D 0 - I - 0x00AD53 02:8D43: 4D 8F     .word off_8F4D_15_00_right



_off048_8D45_15_01:
- D 0 - I - 0x00AD55 02:8D45: 55 8F     .word off_8F55_15_01_left
- D 0 - I - 0x00AD57 02:8D47: 55 8F     .word off_8F55_15_01_right



_off048_8D49_15_03:
_off048_8D49_15_04:
- D 0 - I - 0x00AD59 02:8D49: 6D 8F     .word off_8F6D_15_03_left
- D 0 - I - 0x00AD5B 02:8D4B: 6D 8F     .word off_8F6D_15_03_right



_off048_8D4D_2A_00:
- D 0 - I - 0x00AD5D 02:8D4D: A5 91     .word off_91A5_2A_00_left
- D 0 - I - 0x00AD5F 02:8D4F: F5 91     .word off_91F5_2A_00_right



_off048_8D51_2A_01:
- D 0 - I - 0x00AD61 02:8D51: AD 91     .word off_91AD_2A_01_left
- D 0 - I - 0x00AD63 02:8D53: FD 91     .word off_91FD_2A_01_right



_off048_8D55_2A_03:
- D 0 - I - 0x00AD65 02:8D55: C5 91     .word off_91C5_2A_03_left
- D 0 - I - 0x00AD67 02:8D57: 15 92     .word off_9215_2A_03_right



_off048_8D59_2A_04:
_off048_8D59_2A_0B:
- D 0 - I - 0x00AD69 02:8D59: D5 91     .word off_91D5_2A_04_left
- - - - - - 0x00AD6B 02:8D5B: 25 92     .word off_9225_2A_04_right



_off048_8D5D_2A_05:
- D 0 - I - 0x00AD6D 02:8D5D: A5 91     .word off_91A5_2A_05_left
- D 0 - I - 0x00AD6F 02:8D5F: F5 91     .word off_91F5_2A_05_right



_off048_8D61_2A_06:
_off048_8D61_2A_07:
- D 0 - I - 0x00AD71 02:8D61: DD 91     .word off_91DD_2A_06_left
- D 0 - I - 0x00AD73 02:8D63: 2D 92     .word off_922D_2A_06_right



_off048_8D65_2A_0E:
- D 0 - I - 0x00AD75 02:8D65: E5 91     .word off_91E5_2A_0E_left
- D 0 - I - 0x00AD77 02:8D67: 35 92     .word off_9235_2A_0E_right



_off048_8D69_2B_00:
- D 0 - I - 0x00AD79 02:8D69: 75 92     .word off_9275_2B_00_left
- D 0 - I - 0x00AD7B 02:8D6B: 7D 92     .word off_927D_2B_00_right



_off048_8D6D_2B_02:
- D 0 - I - 0x00AD7D 02:8D6D: 85 92     .word off_9285_2B_02_left
- D 0 - I - 0x00AD7F 02:8D6F: 8D 92     .word off_928D_2B_02_right



_off048_8D71_2B_01:
_off048_8D71_2B_03:
_off048_8D71_2B_04:
_off048_8D71_2B_05:
_off048_8D71_2B_06:
_off048_8D71_2B_07:
- D 0 - I - 0x00AD81 02:8D71: 95 92     .word off_9295_2B_01_left
- D 0 - I - 0x00AD83 02:8D73: AD 92     .word off_92AD_2B_01_right



_off048_8D75_2C_00:
_off048_8D75_2C_01:
_off048_8D75_2C_03:
_off048_8D75_2C_04:
- D 0 - I - 0x00AD85 02:8D75: 45 92     .word off_9245_2C_00_left
- D 0 - I - 0x00AD87 02:8D77: 4D 92     .word off_924D_2C_00_right



_off048_8D79_2C_02:
- D 0 - I - 0x00AD89 02:8D79: 5D 92     .word off_925D_2C_02_left
- D 0 - I - 0x00AD8B 02:8D7B: 6D 92     .word off_926D_2C_02_right



_off048_8D7D_2C_05:
- - - - - - 0x00AD8D 02:8D7D: 55 92     .word off_9255_2C_05_left
- - - - - - 0x00AD8F 02:8D7F: 65 92     .word off_9265_2C_05_right



_off048_8D81_2D_00:
- D 0 - I - 0x00AD91 02:8D81: C5 92     .word off_92C5_2D_00_left
- D 0 - I - 0x00AD93 02:8D83: 05 93     .word off_9305_2D_00_right



_off048_8D85_2D_01:
- D 0 - I - 0x00AD95 02:8D85: CD 92     .word off_92CD_2D_01_left
- D 0 - I - 0x00AD97 02:8D87: 0D 93     .word off_930D_2D_01_right



_off048_8D89_2D_02:
_off048_8D89_2E_00:
_off048_8D89_2E_01:
_off048_8D89_2E_02:
_off048_8D89_2E_03:
_off048_8D89_2E_04:
_off048_8D89_2E_05:
- D 0 - I - 0x00AD99 02:8D89: D5 92     .word off_92D5_2D_02_left
- D 0 - I - 0x00AD9B 02:8D8B: 15 93     .word off_9315_2D_02_right



_off048_8D8D_2D_03:
- D 0 - I - 0x00AD9D 02:8D8D: DD 92     .word off_92DD_2D_03_left
- D 0 - I - 0x00AD9F 02:8D8F: 1D 93     .word off_931D_2D_03_right



_off048_8D91_2D_04:
- D 0 - I - 0x00ADA1 02:8D91: E5 92     .word off_92E5_2D_04_left
- D 0 - I - 0x00ADA3 02:8D93: 25 93     .word off_9325_2D_04_right



_off048_8D95_2D_05:
- D 0 - I - 0x00ADA5 02:8D95: ED 92     .word off_92ED_2D_05_left
- D 0 - I - 0x00ADA7 02:8D97: 2D 93     .word off_932D_2D_05_right



_off048_8D99_2D_06:
_off048_8D99_2D_07:
- D 0 - I - 0x00ADA9 02:8D99: F5 92     .word off_92F5_2D_06_left
- D 0 - I - 0x00ADAB 02:8D9B: 35 93     .word off_9335_2D_06_right



_off048_8D9D_2D_0B:
- D 0 - I - 0x00ADAD 02:8D9D: FD 92     .word off_92FD_2D_0B_left
- - - - - - 0x00ADAF 02:8D9F: 3D 93     .word off_933D_2D_0B_right



_off048_8DA1_30_00:
_off048_8DA1_30_01:
_off048_8DA1_30_02:
_off048_8DA1_30_03:
_off048_8DA1_30_04:
_off048_8DA1_30_05:
_off048_8DA1_30_06:
- D 0 - I - 0x00ADB1 02:8DA1: 45 93     .word off_9345_30_00_left
- D 0 - I - 0x00ADB3 02:8DA3: 45 93     .word off_9345_30_00_right



_off048_8DA5_31_00:
_off048_8DA5_31_02:
_off048_8DA5_31_03:
_off048_8DA5_31_04:
_off048_8DA5_31_05:
_off048_8DA5_31_06:
- - - - - - 0x00ADB5 02:8DA5: 4D 93     .word off_934D_31_00_left
- - - - - - 0x00ADB7 02:8DA7: 4D 93     .word off_934D_31_00_right



_off048_8DA9_33_00:
_off048_8DA9_33_01:
_off048_8DA9_33_02:
_off048_8DA9_33_03:
_off048_8DA9_33_04:
_off048_8DA9_33_05:
_off048_8DA9_33_06:
- D 0 - I - 0x00ADB9 02:8DA9: 55 93     .word off_9355_33_00_left
- - - - - - 0x00ADBB 02:8DAB: 55 93     .word off_9355_33_00_right



_off048_8DAD_32_00:
_off048_8DAD_32_01:
_off048_8DAD_32_02:
_off048_8DAD_32_03:
_off048_8DAD_32_04:
_off048_8DAD_32_05:
_off048_8DAD_32_06:
- D 0 - I - 0x00ADBD 02:8DAD: 5D 93     .word off_935D_32_00_left
- D 0 - I - 0x00ADBF 02:8DAF: 5D 93     .word off_935D_32_00_right



_off048_8DB1_31_01:
- - - - - - 0x00ADC1 02:8DB1: 65 93     .word off_9365_31_01_left
- - - - - - 0x00ADC3 02:8DB3: 65 93     .word off_9365_31_01_right



_off048_8DB5_36_00:
_off048_8DB5_36_01:
_off048_8DB5_36_02:
_off048_8DB5_36_03:
_off048_8DB5_36_04:
_off048_8DB5_36_05:
_off048_8DB5_36_06:
- D 0 - I - 0x00ADC5 02:8DB5: 75 93     .word off_9375_36_00_left
- D 0 - I - 0x00ADC7 02:8DB7: 75 93     .word off_9375_36_00_right



_off048_8DB9_38_00:
_off048_8DB9_38_01:
_off048_8DB9_38_02:
_off048_8DB9_38_03:
_off048_8DB9_38_04:
_off048_8DB9_38_05:
_off048_8DB9_38_06:
- D 0 - I - 0x00ADC9 02:8DB9: 7D 93     .word off_937D_38_00_left
- D 0 - I - 0x00ADCB 02:8DBB: 7D 93     .word off_937D_38_00_right



_off048_8DBD_3A_00:
_off048_8DBD_3A_01:
_off048_8DBD_3A_02:
_off048_8DBD_3A_03:
_off048_8DBD_3A_04:
- D 0 - I - 0x00ADCD 02:8DBD: 85 93     .word off_9385_3A_00_left
- D 0 - I - 0x00ADCF 02:8DBF: 9D 93     .word off_939D_3A_00_right



_off048_8DC1_3A_05:
- D 0 - I - 0x00ADD1 02:8DC1: 8D 93     .word off_938D_3A_05_left
- D 0 - I - 0x00ADD3 02:8DC3: A5 93     .word off_93A5_3A_05_right



_off048_8DC5_3A_06:
- D 0 - I - 0x00ADD5 02:8DC5: 95 93     .word off_9395_3A_06_left
- D 0 - I - 0x00ADD7 02:8DC7: AD 93     .word off_93AD_3A_06_right



_off048_8DC9_3B_00:
_off048_8DC9_3B_01:
_off048_8DC9_3B_02:
_off048_8DC9_3B_03:
_off048_8DC9_3B_04:
_off048_8DC9_3B_06:
- D 0 - I - 0x00ADD9 02:8DC9: B5 93     .word off_93B5_3B_00_left
- D 0 - I - 0x00ADDB 02:8DCB: C5 93     .word off_93C5_3B_00_right



_off048_8DCD_2A_0C:
_off048_8DCD_2D_0C:
_off048_8DCD_3B_05:
_off048_8DCD_3C_05:
- D 0 - I - 0x00ADDD 02:8DCD: D5 93     .word off_93D5_2A_0C_left
- D 0 - I - 0x00ADDF 02:8DCF: D5 93     .word off_93D5_2A_0C_right



_off048_8DD1_3C_00:
_off048_8DD1_3C_01:
_off048_8DD1_3C_02:
_off048_8DD1_3C_03:
_off048_8DD1_3C_04:
_off048_8DD1_3C_06:
- - - - - - 0x00ADE1 02:8DD1: BD 93     .word off_93BD_3C_00_left
- - - - - - 0x00ADE3 02:8DD3: CD 93     .word off_93CD_3C_00_right



_off048_8DD5_3D_00:
- D 0 - I - 0x00ADE5 02:8DD5: DD 93     .word off_93DD_3D_00_left
- D 0 - I - 0x00ADE7 02:8DD7: DD 93     .word off_93DD_3D_00_right



_off048_8DD9_3D_01:
- D 0 - I - 0x00ADE9 02:8DD9: E5 93     .word off_93E5_3D_01_left
- D 0 - I - 0x00ADEB 02:8DDB: E5 93     .word off_93E5_3D_01_right



_off048_8DDD_3D_02:
- D 0 - I - 0x00ADED 02:8DDD: ED 93     .word off_93ED_3D_02_left
- D 0 - I - 0x00ADEF 02:8DDF: ED 93     .word off_93ED_3D_02_right



_off048_8DE1_3D_03:
- D 0 - I - 0x00ADF1 02:8DE1: F5 93     .word off_93F5_3D_03_left
- D 0 - I - 0x00ADF3 02:8DE3: F5 93     .word off_93F5_3D_03_right



_off048_8DE5_3D_04:
- D 0 - I - 0x00ADF5 02:8DE5: FD 93     .word off_93FD_3D_04_left
- D 0 - I - 0x00ADF7 02:8DE7: FD 93     .word off_93FD_3D_04_right



_off048_8DE9_3D_05:
- D 0 - I - 0x00ADF9 02:8DE9: 05 94     .word off_9405_3D_05_left
- D 0 - I - 0x00ADFB 02:8DEB: 05 94     .word off_9405_3D_05_right



_off048_8DED_3D_06:
- D 0 - I - 0x00ADFD 02:8DED: 0D 94     .word off_940D_3D_06_left
- D 0 - I - 0x00ADFF 02:8DEF: 0D 94     .word off_940D_3D_06_right



_off048_8DF1_3D_07:
- D 0 - I - 0x00AE01 02:8DF1: 15 94     .word off_9415_3D_07_left
- D 0 - I - 0x00AE03 02:8DF3: 15 94     .word off_9415_3D_07_right



_off048_8DF5_41_01:
_off048_8DF5_41_02:
_off048_8DF5_41_03:
_off048_8DF5_41_04:
_off048_8DF5_41_05:
_off048_8DF5_41_06:
- D 0 - I - 0x00AE05 02:8DF5: 1D 94     .word off_941D_41_01_left
- D 0 - I - 0x00AE07 02:8DF7: 1D 94     .word off_941D_41_01_right



_off048_8DF9_41_00:
- D 0 - I - 0x00AE09 02:8DF9: 4D 94     .word off_944D_41_00_left
- D 0 - I - 0x00AE0B 02:8DFB: 4D 94     .word off_944D_41_00_right



off_8DFD_01_00_left:
loc_8DFD_01_00_loop:
- D 0 - I - 0x00AE0D 02:8DFD: 80        .byte $80   ; 80
- D 0 - I - 0x00AE0E 02:8DFE: 58        .byte con_chr_bank_spr + $58 + $00   ; spr_A flip
- D 0 - I - 0x00AE0F 02:8DFF: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00AE10 02:8E00: 17 89     .word _off057_spr_data_0x00C927_01_00
- D 0 - I - 0x00AE12 02:8E02: FD 8D     .word loc_8DFD_01_00_loop
- D 0 - I - 0x00AE14 02:8E04: 10        .byte $10   ; 



off_8E05_01_00_right:
loc_8E05_01_00_loop:
- D 0 - I - 0x00AE15 02:8E05: 80        .byte $80   ; 80
- D 0 - I - 0x00AE16 02:8E06: D8        .byte con_chr_bank_spr + $58 + $80   ; spr_A flip
- D 0 - I - 0x00AE17 02:8E07: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00AE18 02:8E08: 17 89     .word _off057_spr_data_0x00C927_01_00
- D 0 - I - 0x00AE1A 02:8E0A: 05 8E     .word loc_8E05_01_00_loop
- D 0 - I - 0x00AE1C 02:8E0C: 10        .byte $10   ; 



off_8E0D_01_01_left:
loc_8E0D_01_01_loop:
- D 0 - I - 0x00AE1D 02:8E0D: 80        .byte $80   ; 80
- D 0 - I - 0x00AE1E 02:8E0E: 58        .byte con_chr_bank_spr + $58 + $00   ; spr_A flip
- D 0 - I - 0x00AE1F 02:8E0F: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00AE20 02:8E10: 34 89     .word _off057_spr_data_0x00C944_01_01
- D 0 - I - 0x00AE22 02:8E12: 15 8E     .word loc_8E15_01_01_next
- D 0 - I - 0x00AE24 02:8E14: 10        .byte $10   ; 



loc_8E15_01_01_next:
- D 0 - I - 0x00AE25 02:8E15: 80        .byte $80   ; 80
- D 0 - I - 0x00AE26 02:8E16: 58        .byte con_chr_bank_spr + $58 + $00   ; spr_A flip
- D 0 - I - 0x00AE27 02:8E17: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00AE28 02:8E18: 4B 89     .word _off057_spr_data_0x00C95B_01_01
- D 0 - I - 0x00AE2A 02:8E1A: 1D 8E     .word loc_8E1D_01_01_next
- D 0 - I - 0x00AE2C 02:8E1C: 10        .byte $10   ; 



loc_8E1D_01_01_next:
- D 0 - I - 0x00AE2D 02:8E1D: 80        .byte $80   ; 80
- D 0 - I - 0x00AE2E 02:8E1E: 58        .byte con_chr_bank_spr + $58 + $00   ; spr_A flip
- D 0 - I - 0x00AE2F 02:8E1F: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00AE30 02:8E20: 5C 89     .word _off057_spr_data_0x00C96C_01_01
- D 0 - I - 0x00AE32 02:8E22: 25 8E     .word loc_8E25_01_01_next
- D 0 - I - 0x00AE34 02:8E24: 10        .byte $10   ; 



loc_8E25_01_01_next:
- D 0 - I - 0x00AE35 02:8E25: 80        .byte $80   ; 80
- D 0 - I - 0x00AE36 02:8E26: 58        .byte con_chr_bank_spr + $58 + $00   ; spr_A flip
- D 0 - I - 0x00AE37 02:8E27: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00AE38 02:8E28: 4B 89     .word _off057_spr_data_0x00C95B_01_01
- D 0 - I - 0x00AE3A 02:8E2A: 0D 8E     .word loc_8E0D_01_01_loop
- D 0 - I - 0x00AE3C 02:8E2C: 10        .byte $10   ; 



off_8E2D_01_01_right:
loc_8E2D_01_01_loop:
- D 0 - I - 0x00AE3D 02:8E2D: 80        .byte $80   ; 80
- D 0 - I - 0x00AE3E 02:8E2E: D8        .byte con_chr_bank_spr + $58 + $80   ; spr_A flip
- D 0 - I - 0x00AE3F 02:8E2F: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00AE40 02:8E30: 34 89     .word _off057_spr_data_0x00C944_01_01
- D 0 - I - 0x00AE42 02:8E32: 35 8E     .word loc_8E35_01_01_next
- D 0 - I - 0x00AE44 02:8E34: 10        .byte $10   ; 



loc_8E35_01_01_next:
- D 0 - I - 0x00AE45 02:8E35: 80        .byte $80   ; 80
- D 0 - I - 0x00AE46 02:8E36: D8        .byte con_chr_bank_spr + $58 + $80   ; spr_A flip
- D 0 - I - 0x00AE47 02:8E37: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00AE48 02:8E38: 4B 89     .word _off057_spr_data_0x00C95B_01_01
- D 0 - I - 0x00AE4A 02:8E3A: 3D 8E     .word loc_8E3D_01_01_next
- D 0 - I - 0x00AE4C 02:8E3C: 10        .byte $10   ; 



loc_8E3D_01_01_next:
- D 0 - I - 0x00AE4D 02:8E3D: 80        .byte $80   ; 80
- D 0 - I - 0x00AE4E 02:8E3E: D8        .byte con_chr_bank_spr + $58 + $80   ; spr_A flip
- D 0 - I - 0x00AE4F 02:8E3F: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00AE50 02:8E40: 5C 89     .word _off057_spr_data_0x00C96C_01_01
- D 0 - I - 0x00AE52 02:8E42: 45 8E     .word loc_8E45_01_01_next
- D 0 - I - 0x00AE54 02:8E44: 10        .byte $10   ; 



loc_8E45_01_01_next:
- D 0 - I - 0x00AE55 02:8E45: 80        .byte $80   ; 80
- D 0 - I - 0x00AE56 02:8E46: D8        .byte con_chr_bank_spr + $58 + $80   ; spr_A flip
- D 0 - I - 0x00AE57 02:8E47: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00AE58 02:8E48: 4B 89     .word _off057_spr_data_0x00C95B_01_01
- D 0 - I - 0x00AE5A 02:8E4A: 2D 8E     .word loc_8E2D_01_01_loop
- D 0 - I - 0x00AE5C 02:8E4C: 10        .byte $10   ; 



off_8E4D_01_02_left:
loc_8E4D_01_02_loop:
- D 0 - I - 0x00AE5D 02:8E4D: 80        .byte $80   ; 80
- D 0 - I - 0x00AE5E 02:8E4E: 58        .byte con_chr_bank_spr + $58 + $00   ; spr_A flip
- D 0 - I - 0x00AE5F 02:8E4F: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00AE60 02:8E50: 73 89     .word _off057_spr_data_0x00C983_01_02
- D 0 - I - 0x00AE62 02:8E52: 4D 8E     .word loc_8E4D_01_02_loop
- D 0 - I - 0x00AE64 02:8E54: 00        .byte $00   ; 



off_8E55_01_02_right:
loc_8E55_01_02_loop:
- D 0 - I - 0x00AE65 02:8E55: 80        .byte $80   ; 80
- D 0 - I - 0x00AE66 02:8E56: D8        .byte con_chr_bank_spr + $58 + $80   ; spr_A flip
- D 0 - I - 0x00AE67 02:8E57: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00AE68 02:8E58: 73 89     .word _off057_spr_data_0x00C983_01_02
- D 0 - I - 0x00AE6A 02:8E5A: 55 8E     .word loc_8E55_01_02_loop
- D 0 - I - 0x00AE6C 02:8E5C: 00        .byte $00   ; 



off_8E5D_01_03_left:
loc_8E5D_01_03_loop:
- D 0 - I - 0x00AE6D 02:8E5D: 80        .byte $80   ; 80
- D 0 - I - 0x00AE6E 02:8E5E: 58        .byte con_chr_bank_spr + $58 + $00   ; spr_A flip
- D 0 - I - 0x00AE6F 02:8E5F: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00AE70 02:8E60: 73 89     .word _off057_spr_data_0x00C983_01_03
- D 0 - I - 0x00AE72 02:8E62: 5D 8E     .word loc_8E5D_01_03_loop
- - - - - - 0x00AE74 02:8E64: 00        .byte $00   ; 



off_8E65_01_03_right:
loc_8E65_01_03_loop:
- D 0 - I - 0x00AE75 02:8E65: 80        .byte $80   ; 80
- D 0 - I - 0x00AE76 02:8E66: D8        .byte con_chr_bank_spr + $58 + $80   ; spr_A flip
- D 0 - I - 0x00AE77 02:8E67: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00AE78 02:8E68: 73 89     .word _off057_spr_data_0x00C983_01_03
- D 0 - I - 0x00AE7A 02:8E6A: 65 8E     .word loc_8E65_01_03_loop
- - - - - - 0x00AE7C 02:8E6C: 00        .byte $00   ; 



off_8E6D_01_04_left:
loc_8E6D_01_04_loop:
- D 0 - I - 0x00AE7D 02:8E6D: 80        .byte $80   ; 80
- D 0 - I - 0x00AE7E 02:8E6E: 58        .byte con_chr_bank_spr + $58 + $00   ; spr_A flip
- D 0 - I - 0x00AE7F 02:8E6F: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00AE80 02:8E70: 84 89     .word _off057_spr_data_0x00C994_01_04
- D 0 - I - 0x00AE82 02:8E72: 6D 8E     .word loc_8E6D_01_04_loop
- D 0 - I - 0x00AE84 02:8E74: 11        .byte $11   ; 



off_8E75_01_04_right:
loc_8E75_01_04_loop:
- D 0 - I - 0x00AE85 02:8E75: 80        .byte $80   ; 80
- D 0 - I - 0x00AE86 02:8E76: D8        .byte con_chr_bank_spr + $58 + $80   ; spr_A flip
- D 0 - I - 0x00AE87 02:8E77: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00AE88 02:8E78: 84 89     .word _off057_spr_data_0x00C994_01_04
- D 0 - I - 0x00AE8A 02:8E7A: 75 8E     .word loc_8E75_01_04_loop
- D 0 - I - 0x00AE8C 02:8E7C: 11        .byte $11   ; 



off_8E7D_01_05_left:
loc_8E7D_01_05_loop:
- D 0 - I - 0x00AE8D 02:8E7D: 80        .byte $80   ; 80
- D 0 - I - 0x00AE8E 02:8E7E: 58        .byte con_chr_bank_spr + $58 + $00   ; spr_A flip
- D 0 - I - 0x00AE8F 02:8E7F: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00AE90 02:8E80: 84 89     .word _off057_spr_data_0x00C994_01_05
- D 0 - I - 0x00AE92 02:8E82: 7D 8E     .word loc_8E7D_01_05_loop
- D 0 - I - 0x00AE94 02:8E84: 11        .byte $11   ; 



off_8E85_01_05_right:
loc_8E85_01_05_loop:
- D 0 - I - 0x00AE95 02:8E85: 80        .byte $80   ; 80
- D 0 - I - 0x00AE96 02:8E86: D8        .byte con_chr_bank_spr + $58 + $80   ; spr_A flip
- D 0 - I - 0x00AE97 02:8E87: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00AE98 02:8E88: 84 89     .word _off057_spr_data_0x00C994_01_05
- D 0 - I - 0x00AE9A 02:8E8A: 85 8E     .word loc_8E85_01_05_loop
- D 0 - I - 0x00AE9C 02:8E8C: 11        .byte $11   ; 



off_8E8D_01_06_left:
loc_8E8D_01_06_loop:
- D 0 - I - 0x00AE9D 02:8E8D: 80        .byte $80   ; 80
- D 0 - I - 0x00AE9E 02:8E8E: 58        .byte con_chr_bank_spr + $58 + $00   ; spr_A flip
- D 0 - I - 0x00AE9F 02:8E8F: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00AEA0 02:8E90: 98 89     .word _off057_spr_data_0x00C9A8_01_06
- D 0 - I - 0x00AEA2 02:8E92: 8D 8E     .word loc_8E8D_01_06_loop
- D 0 - I - 0x00AEA4 02:8E94: 10        .byte $10   ; 



off_8E95_01_06_right:
loc_8E95_01_06_loop:
- D 0 - I - 0x00AEA5 02:8E95: 80        .byte $80   ; 80
- D 0 - I - 0x00AEA6 02:8E96: D8        .byte con_chr_bank_spr + $58 + $80   ; spr_A flip
- D 0 - I - 0x00AEA7 02:8E97: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00AEA8 02:8E98: 98 89     .word _off057_spr_data_0x00C9A8_01_06
- D 0 - I - 0x00AEAA 02:8E9A: 95 8E     .word loc_8E95_01_06_loop
- D 0 - I - 0x00AEAC 02:8E9C: 10        .byte $10   ; 



off_8E9D_01_07_left:
loc_8E9D_01_07_loop:
- D 0 - I - 0x00AEAD 02:8E9D: 80        .byte $80   ; 80
- D 0 - I - 0x00AEAE 02:8E9E: 58        .byte con_chr_bank_spr + $58 + $00   ; spr_A flip
- D 0 - I - 0x00AEAF 02:8E9F: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00AEB0 02:8EA0: B5 89     .word _off057_spr_data_0x00C9C5_01_07
- D 0 - I - 0x00AEB2 02:8EA2: 9D 8E     .word loc_8E9D_01_07_loop
- D 0 - I - 0x00AEB4 02:8EA4: 11        .byte $11   ; 



off_8EA5_01_07_right:
loc_8EA5_01_07_loop:
- D 0 - I - 0x00AEB5 02:8EA5: 80        .byte $80   ; 80
- D 0 - I - 0x00AEB6 02:8EA6: D8        .byte con_chr_bank_spr + $58 + $80   ; spr_A flip
- D 0 - I - 0x00AEB7 02:8EA7: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00AEB8 02:8EA8: B5 89     .word _off057_spr_data_0x00C9C5_01_07
- D 0 - I - 0x00AEBA 02:8EAA: A5 8E     .word loc_8EA5_01_07_loop
- D 0 - I - 0x00AEBC 02:8EAC: 11        .byte $11   ; 



off_8EAD_0D_00_left:
loc_8EAD_0D_00_loop:
- D 0 - I - 0x00AEBD 02:8EAD: 59        .byte con_chr_bank_spr + $59   ; 
- D 0 - I - 0x00AEBE 02:8EAE: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00AEBF 02:8EAF: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00AEC0 02:8EB0: C9 89     .word _off057_spr_data_0x00C9D9_0D_00
- D 0 - I - 0x00AEC2 02:8EB2: AD 8E     .word loc_8EAD_0D_00_loop
- D 0 - I - 0x00AEC4 02:8EB4: 10        .byte $10   ; 



off_8EB5_0D_00_right:
loc_8EB5_0D_00_loop:
- D 0 - I - 0x00AEC5 02:8EB5: 59        .byte con_chr_bank_spr + $59   ; 
- D 0 - I - 0x00AEC6 02:8EB6: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00AEC7 02:8EB7: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00AEC8 02:8EB8: C9 89     .word _off057_spr_data_0x00C9D9_0D_00
- D 0 - I - 0x00AECA 02:8EBA: B5 8E     .word loc_8EB5_0D_00_loop
- D 0 - I - 0x00AECC 02:8EBC: 10        .byte $10   ; 



off_8EBD_0D_01_left:
loc_8EBD_0D_01_loop:
- D 0 - I - 0x00AECD 02:8EBD: 59        .byte con_chr_bank_spr + $59   ; 
- D 0 - I - 0x00AECE 02:8EBE: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00AECF 02:8EBF: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00AED0 02:8EC0: E3 89     .word _off057_spr_data_0x00C9F3_0D_01
- D 0 - I - 0x00AED2 02:8EC2: C5 8E     .word loc_8EC5_0D_01_next
- D 0 - I - 0x00AED4 02:8EC4: 10        .byte $10   ; 



loc_8EC5_0D_01_next:
- D 0 - I - 0x00AED5 02:8EC5: 59        .byte con_chr_bank_spr + $59   ; 
- D 0 - I - 0x00AED6 02:8EC6: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00AED7 02:8EC7: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00AED8 02:8EC8: F7 89     .word _off057_spr_data_0x00CA07_0D_01
- D 0 - I - 0x00AEDA 02:8ECA: CD 8E     .word loc_8ECD_0D_01_next
- D 0 - I - 0x00AEDC 02:8ECC: 10        .byte $10   ; 



loc_8ECD_0D_01_next:
- D 0 - I - 0x00AEDD 02:8ECD: 59        .byte con_chr_bank_spr + $59   ; 
- D 0 - I - 0x00AEDE 02:8ECE: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00AEDF 02:8ECF: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00AEE0 02:8ED0: E3 89     .word _off057_spr_data_0x00C9F3_0D_01
- D 0 - I - 0x00AEE2 02:8ED2: D5 8E     .word loc_8ED5_0D_01_next
- D 0 - I - 0x00AEE4 02:8ED4: 10        .byte $10   ; 



loc_8ED5_0D_01_next:
- D 0 - I - 0x00AEE5 02:8ED5: 59        .byte con_chr_bank_spr + $59   ; 
- D 0 - I - 0x00AEE6 02:8ED6: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00AEE7 02:8ED7: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00AEE8 02:8ED8: C9 89     .word _off057_spr_data_0x00C9D9_0D_01
- D 0 - I - 0x00AEEA 02:8EDA: BD 8E     .word loc_8EBD_0D_01_loop
- D 0 - I - 0x00AEEC 02:8EDC: 10        .byte $10   ; 



off_8EDD_0D_01_right:
loc_8EDD_0D_01_loop:
- D 0 - I - 0x00AEED 02:8EDD: 59        .byte con_chr_bank_spr + $59   ; 
- D 0 - I - 0x00AEEE 02:8EDE: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00AEEF 02:8EDF: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00AEF0 02:8EE0: E3 89     .word _off057_spr_data_0x00C9F3_0D_01
- D 0 - I - 0x00AEF2 02:8EE2: E5 8E     .word loc_8EE5_0D_01_next
- D 0 - I - 0x00AEF4 02:8EE4: 10        .byte $10   ; 



loc_8EE5_0D_01_next:
- D 0 - I - 0x00AEF5 02:8EE5: 59        .byte con_chr_bank_spr + $59   ; 
- D 0 - I - 0x00AEF6 02:8EE6: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00AEF7 02:8EE7: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00AEF8 02:8EE8: F7 89     .word _off057_spr_data_0x00CA07_0D_01
- D 0 - I - 0x00AEFA 02:8EEA: ED 8E     .word loc_8EED_0D_01_next
- D 0 - I - 0x00AEFC 02:8EEC: 10        .byte $10   ; 



loc_8EED_0D_01_next:
- D 0 - I - 0x00AEFD 02:8EED: 59        .byte con_chr_bank_spr + $59   ; 
- D 0 - I - 0x00AEFE 02:8EEE: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00AEFF 02:8EEF: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00AF00 02:8EF0: E3 89     .word _off057_spr_data_0x00C9F3_0D_01
- D 0 - I - 0x00AF02 02:8EF2: F5 8E     .word loc_8EF5_0D_01_next
- D 0 - I - 0x00AF04 02:8EF4: 10        .byte $10   ; 



loc_8EF5_0D_01_next:
- D 0 - I - 0x00AF05 02:8EF5: 59        .byte con_chr_bank_spr + $59   ; 
- D 0 - I - 0x00AF06 02:8EF6: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00AF07 02:8EF7: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00AF08 02:8EF8: C9 89     .word _off057_spr_data_0x00C9D9_0D_01
- D 0 - I - 0x00AF0A 02:8EFA: DD 8E     .word loc_8EDD_0D_01_loop
- D 0 - I - 0x00AF0C 02:8EFC: 10        .byte $10   ; 



off_8EFD_0D_02_left:
loc_8EFD_0D_02_loop:
- D 0 - I - 0x00AF0D 02:8EFD: 59        .byte con_chr_bank_spr + $59   ; 
- D 0 - I - 0x00AF0E 02:8EFE: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00AF0F 02:8EFF: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00AF10 02:8F00: 11 8A     .word _off057_spr_data_0x00CA21_0D_02
- D 0 - I - 0x00AF12 02:8F02: FD 8E     .word loc_8EFD_0D_02_loop
- D 0 - I - 0x00AF14 02:8F04: 00        .byte $00   ; 



off_8F05_0D_02_right:
loc_8F05_0D_02_loop:
- D 0 - I - 0x00AF15 02:8F05: 59        .byte con_chr_bank_spr + $59   ; 
- D 0 - I - 0x00AF16 02:8F06: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00AF17 02:8F07: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00AF18 02:8F08: 11 8A     .word _off057_spr_data_0x00CA21_0D_02
- D 0 - I - 0x00AF1A 02:8F0A: 05 8F     .word loc_8F05_0D_02_loop
- D 0 - I - 0x00AF1C 02:8F0C: 00        .byte $00   ; 



off_8F0D_0D_03_left:
loc_8F0D_0D_03_loop:
- D 0 - I - 0x00AF1D 02:8F0D: 59        .byte con_chr_bank_spr + $59   ; 
- D 0 - I - 0x00AF1E 02:8F0E: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00AF1F 02:8F0F: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00AF20 02:8F10: 11 8A     .word _off057_spr_data_0x00CA21_0D_03
- D 0 - I - 0x00AF22 02:8F12: 0D 8F     .word loc_8F0D_0D_03_loop
- - - - - - 0x00AF24 02:8F14: 00        .byte $00   ; 



off_8F15_0D_03_right:
loc_8F15_0D_03_loop:
- D 0 - I - 0x00AF25 02:8F15: 59        .byte con_chr_bank_spr + $59   ; 
- D 0 - I - 0x00AF26 02:8F16: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00AF27 02:8F17: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00AF28 02:8F18: 11 8A     .word _off057_spr_data_0x00CA21_0D_03
- D 0 - I - 0x00AF2A 02:8F1A: 15 8F     .word loc_8F15_0D_03_loop
- - - - - - 0x00AF2C 02:8F1C: 00        .byte $00   ; 



off_8F1D_0D_04_left:
off_8F1D_0D_05_left:
loc_8F1D_0D_04_loop:
- D 0 - I - 0x00AF2D 02:8F1D: 59        .byte con_chr_bank_spr + $59   ; 
- D 0 - I - 0x00AF2E 02:8F1E: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00AF2F 02:8F1F: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00AF30 02:8F20: 25 8A     .word _off057_spr_data_0x00CA35_0D_04
- D 0 - I - 0x00AF32 02:8F22: 1D 8F     .word loc_8F1D_0D_04_loop
- D 0 - I - 0x00AF34 02:8F24: 11        .byte $11   ; 



off_8F25_0D_04_right:
off_8F25_0D_05_right:
loc_8F25_0D_04_loop:
- D 0 - I - 0x00AF35 02:8F25: 59        .byte con_chr_bank_spr + $59   ; 
- D 0 - I - 0x00AF36 02:8F26: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00AF37 02:8F27: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00AF38 02:8F28: 25 8A     .word _off057_spr_data_0x00CA35_0D_04
- D 0 - I - 0x00AF3A 02:8F2A: 25 8F     .word loc_8F25_0D_04_loop
- D 0 - I - 0x00AF3C 02:8F2C: 11        .byte $11   ; 



off_8F2D_0D_06_left:
loc_8F2D_0D_06_loop:
- D 0 - I - 0x00AF3D 02:8F2D: 59        .byte con_chr_bank_spr + $59   ; 
- D 0 - I - 0x00AF3E 02:8F2E: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00AF3F 02:8F2F: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00AF40 02:8F30: 39 8A     .word _off057_spr_data_0x00CA49_0D_06
- D 0 - I - 0x00AF42 02:8F32: 2D 8F     .word loc_8F2D_0D_06_loop
- D 0 - I - 0x00AF44 02:8F34: 10        .byte $10   ; 



off_8F35_0D_06_right:
loc_8F35_0D_06_loop:
- D 0 - I - 0x00AF45 02:8F35: 59        .byte con_chr_bank_spr + $59   ; 
- D 0 - I - 0x00AF46 02:8F36: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00AF47 02:8F37: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00AF48 02:8F38: 39 8A     .word _off057_spr_data_0x00CA49_0D_06
- D 0 - I - 0x00AF4A 02:8F3A: 35 8F     .word loc_8F35_0D_06_loop
- D 0 - I - 0x00AF4C 02:8F3C: 10        .byte $10   ; 



off_8F3D_0D_07_left:
loc_8F3D_0D_07_loop:
- D 0 - I - 0x00AF4D 02:8F3D: 59        .byte con_chr_bank_spr + $59   ; 
- D 0 - I - 0x00AF4E 02:8F3E: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00AF4F 02:8F3F: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00AF50 02:8F40: 53 8A     .word _off057_spr_data_0x00CA63_0D_07
- D 0 - I - 0x00AF52 02:8F42: 3D 8F     .word loc_8F3D_0D_07_loop
- D 0 - I - 0x00AF54 02:8F44: 11        .byte $11   ; 



off_8F45_0D_07_right:
loc_8F45_0D_07_loop:
- D 0 - I - 0x00AF55 02:8F45: 59        .byte con_chr_bank_spr + $59   ; 
- D 0 - I - 0x00AF56 02:8F46: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00AF57 02:8F47: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00AF58 02:8F48: 53 8A     .word _off057_spr_data_0x00CA63_0D_07
- D 0 - I - 0x00AF5A 02:8F4A: 45 8F     .word loc_8F45_0D_07_loop
- D 0 - I - 0x00AF5C 02:8F4C: 11        .byte $11   ; 



off_8F4D_15_00_left:
off_8F4D_15_00_right:
loc_8F4D_15_00_loop:
- D 0 - I - 0x00AF5D 02:8F4D: 5C        .byte con_chr_bank_spr + $5C   ; 
- D 0 - I - 0x00AF5E 02:8F4E: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00AF5F 02:8F4F: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00AF60 02:8F50: B7 8A     .word _off057_spr_data_0x00CAC7_15_00
- D 0 - I - 0x00AF62 02:8F52: 4D 8F     .word loc_8F4D_15_00_loop
- D 0 - I - 0x00AF64 02:8F54: 00        .byte $00   ; 



off_8F55_15_01_left:
off_8F55_15_01_right:
- D 0 - I - 0x00AF65 02:8F55: 5C        .byte con_chr_bank_spr + $5C   ; 
- D 0 - I - 0x00AF66 02:8F56: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00AF67 02:8F57: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00AF68 02:8F58: 67 8A     .word _off057_spr_data_0x00CA77_05_01
- D 0 - I - 0x00AF6A 02:8F5A: 5D 8F     .word loc_8F5D_05_01_next
- D 0 - I - 0x00AF6C 02:8F5C: 00        .byte $00   ; 



loc_8F5D_05_01_next:
- D 0 - I - 0x00AF6D 02:8F5D: 5C        .byte con_chr_bank_spr + $5C   ; 
- D 0 - I - 0x00AF6E 02:8F5E: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00AF6F 02:8F5F: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00AF70 02:8F60: 72 8A     .word _off057_spr_data_0x00CA82_05_01
- D 0 - I - 0x00AF72 02:8F62: 65 8F     .word loc_8F65_05_01_next
- D 0 - I - 0x00AF74 02:8F64: 00        .byte $00   ; 



loc_8F65_05_01_next:
loc_8F65_05_01_loop:
- D 0 - I - 0x00AF75 02:8F65: 5C        .byte con_chr_bank_spr + $5C   ; 
- D 0 - I - 0x00AF76 02:8F66: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00AF77 02:8F67: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00AF78 02:8F68: 89 8A     .word _off057_spr_data_0x00CA99_05_01
- D 0 - I - 0x00AF7A 02:8F6A: 65 8F     .word loc_8F65_05_01_loop
- D 0 - I - 0x00AF7C 02:8F6C: 00        .byte $00   ; 



off_8F6D_15_03_left:
off_8F6D_15_03_right:
loc_8F6D_15_03_loop:
- D 0 - I - 0x00AF7D 02:8F6D: 5C        .byte con_chr_bank_spr + $5C   ; 
- D 0 - I - 0x00AF7E 02:8F6E: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00AF7F 02:8F6F: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00AF80 02:8F70: A6 8A     .word _off057_spr_data_0x00CAB6_15_03
- D 0 - I - 0x00AF82 02:8F72: 6D 8F     .word loc_8F6D_15_03_loop
- D 0 - I - 0x00AF84 02:8F74: 10        .byte $10   ; 



off_8F75_1F_00_left:
loc_8F75_1F_00_loop:
- D 0 - I - 0x00AF85 02:8F75: 66        .byte con_chr_bank_spr + $66   ; 
- D 0 - I - 0x00AF86 02:8F76: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00AF87 02:8F77: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00AF88 02:8F78: BC 8A     .word _off057_spr_data_0x00CACC_1F_00
- - - - - - 0x00AF8A 02:8F7A: 75 8F     .word loc_8F75_1F_00_loop
- D 0 - I - 0x00AF8C 02:8F7C: 10        .byte $10   ; 



off_8F7D_1F_01_left:
loc_8F7D_1F_01_loop:
- - - - - - 0x00AF8D 02:8F7D: 66        .byte con_chr_bank_spr + $66   ; 
- - - - - - 0x00AF8E 02:8F7E: 00        .byte $00   ; spr_A flip
- - - - - - 0x00AF8F 02:8F7F: 08        .byte $08   ; next animation delay
- - - - - - 0x00AF90 02:8F80: D6 8A     .word _off057_spr_data_0x00CAE6_1F_01
- - - - - - 0x00AF92 02:8F82: 7D 8F     .word loc_8F7D_1F_01_loop
- - - - - - 0x00AF94 02:8F84: 10        .byte $10   ; 



off_8F85_1F_02_left:
off_8F85_1F_02_right:
loc_8F85_1F_02_loop:
- D 0 - I - 0x00AF95 02:8F85: 66        .byte con_chr_bank_spr + $66   ; 
- D 0 - I - 0x00AF96 02:8F86: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00AF97 02:8F87: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00AF98 02:8F88: F0 8A     .word _off057_spr_data_0x00CB00_1F_02
- D 0 - I - 0x00AF9A 02:8F8A: 8D 8F     .word loc_8F8D_1F_02_next
- D 0 - I - 0x00AF9C 02:8F8C: 00        .byte $00   ; 



loc_8F8D_1F_02_next:
- D 0 - I - 0x00AF9D 02:8F8D: 66        .byte con_chr_bank_spr + $66   ; 
- D 0 - I - 0x00AF9E 02:8F8E: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00AF9F 02:8F8F: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00AFA0 02:8F90: F0 8A     .word _off057_spr_data_0x00CB00_1F_02
- D 0 - I - 0x00AFA2 02:8F92: 85 8F     .word loc_8F85_1F_02_loop
- D 0 - I - 0x00AFA4 02:8F94: 00        .byte $00   ; 



off_8F95_1F_03_left:
off_8F95_1F_04_left:
loc_8F95_1F_04_loop:
- - - - - - 0x00AFA5 02:8F95: 66        .byte con_chr_bank_spr + $66   ; 
- - - - - - 0x00AFA6 02:8F96: 00        .byte $00   ; spr_A flip
- - - - - - 0x00AFA7 02:8F97: 08        .byte $08   ; next animation delay
- - - - - - 0x00AFA8 02:8F98: F0 8A     .word _off057_spr_data_0x00CB00_1F_04
- - - - - - 0x00AFAA 02:8F9A: 95 8F     .word loc_8F95_1F_04_loop
- - - - - - 0x00AFAC 02:8F9C: 10        .byte $10   ; 



off_8F9D_1F_05_left:
loc_8F9D_1F_05_loop:
- D 0 - I - 0x00AFAD 02:8F9D: 66        .byte con_chr_bank_spr + $66   ; 
- D 0 - I - 0x00AFAE 02:8F9E: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00AFAF 02:8F9F: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00AFB0 02:8FA0: 75 8B     .word _off057_spr_data_0x00CB85_1F_05
- D 0 - I - 0x00AFB2 02:8FA2: A5 8F     .word loc_8FA5_1F_05_next
- D 0 - I - 0x00AFB4 02:8FA4: 10        .byte $10   ; 



loc_8FA5_1F_05_next:
- D 0 - I - 0x00AFB5 02:8FA5: 66        .byte con_chr_bank_spr + $66   ; 
- D 0 - I - 0x00AFB6 02:8FA6: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00AFB7 02:8FA7: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00AFB8 02:8FA8: 92 8B     .word _off057_spr_data_0x00CBA2_1F_05
- D 0 - I - 0x00AFBA 02:8FAA: 9D 8F     .word loc_8F9D_1F_05_loop
- D 0 - I - 0x00AFBC 02:8FAC: 10        .byte $10   ; 



off_8FAD_1F_06_left:
- D 0 - I - 0x00AFBD 02:8FAD: 66        .byte con_chr_bank_spr + $66   ; 
- D 0 - I - 0x00AFBE 02:8FAE: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00AFBF 02:8FAF: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00AFC0 02:8FB0: 3E 8B     .word _off057_spr_data_0x00CB4E_1F_06
- D 0 - I - 0x00AFC2 02:8FB2: B5 8F     .word loc_8FB5_1F_06_next
- D 0 - I - 0x00AFC4 02:8FB4: 10        .byte $10   ; 



loc_8FB5_1F_06_next:
- D 0 - I - 0x00AFC5 02:8FB5: 66        .byte con_chr_bank_spr + $66   ; 
- D 0 - I - 0x00AFC6 02:8FB6: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00AFC7 02:8FB7: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00AFC8 02:8FB8: 5B 8B     .word _off057_spr_data_0x00CB6B_1F_06
- D 0 - I - 0x00AFCA 02:8FBA: BD 8F     .word loc_8FBD_1F_06_next
- D 0 - I - 0x00AFCC 02:8FBC: 10        .byte $10   ; 



loc_8FBD_1F_06_next:
loc_8FBD_1F_06_loop:
- D 0 - I - 0x00AFCD 02:8FBD: 66        .byte con_chr_bank_spr + $66   ; 
- D 0 - I - 0x00AFCE 02:8FBE: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00AFCF 02:8FBF: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00AFD0 02:8FC0: 75 8B     .word _off057_spr_data_0x00CB85_1F_06
- D 0 - I - 0x00AFD2 02:8FC2: C5 8F     .word loc_8FC5_1F_06_next
- D 0 - I - 0x00AFD4 02:8FC4: 10        .byte $10   ; 



loc_8FC5_1F_06_next:
- D 0 - I - 0x00AFD5 02:8FC5: 66        .byte con_chr_bank_spr + $66   ; 
- D 0 - I - 0x00AFD6 02:8FC6: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00AFD7 02:8FC7: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00AFD8 02:8FC8: 92 8B     .word _off057_spr_data_0x00CBA2_1F_06
- D 0 - I - 0x00AFDA 02:8FCA: BD 8F     .word loc_8FBD_1F_06_loop
- D 0 - I - 0x00AFDC 02:8FCC: 10        .byte $10   ; 



off_8FCD_1F_06_right:
- D 0 - I - 0x00AFDD 02:8FCD: 66        .byte con_chr_bank_spr + $66   ; 
- D 0 - I - 0x00AFDE 02:8FCE: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00AFDF 02:8FCF: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00AFE0 02:8FD0: 3E 8B     .word _off057_spr_data_0x00CB4E_1F_06
- D 0 - I - 0x00AFE2 02:8FD2: D5 8F     .word loc_8FD5_1F_06_next
- D 0 - I - 0x00AFE4 02:8FD4: 10        .byte $10   ; 



loc_8FD5_1F_06_next:
- D 0 - I - 0x00AFE5 02:8FD5: 66        .byte con_chr_bank_spr + $66   ; 
- D 0 - I - 0x00AFE6 02:8FD6: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00AFE7 02:8FD7: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00AFE8 02:8FD8: 5B 8B     .word _off057_spr_data_0x00CB6B_1F_06
- D 0 - I - 0x00AFEA 02:8FDA: DD 8F     .word loc_8FDD_1F_06_next
- D 0 - I - 0x00AFEC 02:8FDC: 10        .byte $10   ; 



loc_8FDD_1F_06_next:
loc_8FDD_1F_06_loop:
- D 0 - I - 0x00AFED 02:8FDD: 66        .byte con_chr_bank_spr + $66   ; 
- D 0 - I - 0x00AFEE 02:8FDE: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00AFEF 02:8FDF: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00AFF0 02:8FE0: 75 8B     .word _off057_spr_data_0x00CB85_1F_06
- D 0 - I - 0x00AFF2 02:8FE2: E5 8F     .word loc_8FE5_1F_06_next
- D 0 - I - 0x00AFF4 02:8FE4: 10        .byte $10   ; 



loc_8FE5_1F_06_next:
- D 0 - I - 0x00AFF5 02:8FE5: 66        .byte con_chr_bank_spr + $66   ; 
- D 0 - I - 0x00AFF6 02:8FE6: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00AFF7 02:8FE7: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00AFF8 02:8FE8: 92 8B     .word _off057_spr_data_0x00CBA2_1F_06
- D 0 - I - 0x00AFFA 02:8FEA: DD 8F     .word loc_8FDD_1F_06_loop
- D 0 - I - 0x00AFFC 02:8FEC: 10        .byte $10   ; 



off_8FED_1F_07_left:
loc_8FED_1F_07_loop:
- - - - - - 0x00AFFD 02:8FED: 66        .byte con_chr_bank_spr + $66   ; 
- - - - - - 0x00AFFE 02:8FEE: 00        .byte $00   ; spr_A flip
- - - - - - 0x00AFFF 02:8FEF: 08        .byte $08   ; next animation delay
- - - - - - 0x00B000 02:8FF0: BC 8A     .word _off057_spr_data_0x00CACC_1F_07
- - - - - - 0x00B002 02:8FF2: F5 8F     .word loc_8FF5_1F_07_next
- - - - - - 0x00B004 02:8FF4: 10        .byte $10   ; 



loc_8FF5_1F_07_next:
- - - - - - 0x00B005 02:8FF5: 66        .byte con_chr_bank_spr + $66   ; 
- - - - - - 0x00B006 02:8FF6: 00        .byte $00   ; spr_A flip
- - - - - - 0x00B007 02:8FF7: 08        .byte $08   ; next animation delay
- - - - - - 0x00B008 02:8FF8: 0A 8B     .word _off057_spr_data_0x00CB1A_1F_07
- - - - - - 0x00B00A 02:8FFA: FD 8F     .word loc_8FFD_1F_07_next
- - - - - - 0x00B00C 02:8FFC: 10        .byte $10   ; 



loc_8FFD_1F_07_next:
- - - - - - 0x00B00D 02:8FFD: 66        .byte con_chr_bank_spr + $66   ; 
- - - - - - 0x00B00E 02:8FFE: 00        .byte $00   ; spr_A flip
- - - - - - 0x00B00F 02:8FFF: 08        .byte $08   ; next animation delay
- - - - - - 0x00B010 02:9000: 24 8B     .word _off057_spr_data_0x00CB34_1F_07
- - - - - - 0x00B012 02:9002: 05 90     .word loc_9005_1F_07_next
- - - - - - 0x00B014 02:9004: 10        .byte $10   ; 



loc_9005_1F_07_next:
- - - - - - 0x00B015 02:9005: 66        .byte con_chr_bank_spr + $66   ; 
- - - - - - 0x00B016 02:9006: 00        .byte $00   ; spr_A flip
- - - - - - 0x00B017 02:9007: 08        .byte $08   ; next animation delay
- - - - - - 0x00B018 02:9008: 0A 8B     .word _off057_spr_data_0x00CB1A_1F_07
- - - - - - 0x00B01A 02:900A: ED 8F     .word loc_8FED_1F_07_loop
- - - - - - 0x00B01C 02:900C: 10        .byte $10   ; 



off_900D_1F_09_left:
loc_900D_1F_09_loop:
- D 0 - I - 0x00B01D 02:900D: 66        .byte con_chr_bank_spr + $66   ; 
- D 0 - I - 0x00B01E 02:900E: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00B01F 02:900F: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00B020 02:9010: AC 8B     .word _off057_spr_data_0x00CBBC_1F_09
- D 0 - I - 0x00B022 02:9012: 0D 90     .word loc_900D_1F_09_loop
- D 0 - I - 0x00B024 02:9014: 00        .byte $00   ; 



off_9015_1F_0B_left:
loc_9015_1F_0B_loop:
- D 0 - I - 0x00B025 02:9015: 66        .byte con_chr_bank_spr + $66   ; 
- D 0 - I - 0x00B026 02:9016: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00B027 02:9017: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00B028 02:9018: B4 8B     .word _off057_spr_data_0x00CBC4_1F_0B
- D 0 - I - 0x00B02A 02:901A: 1D 90     .word loc_901D_1F_0B_next
- D 0 - I - 0x00B02C 02:901C: 12        .byte $12   ; 



loc_901D_1F_0B_next:
- D 0 - I - 0x00B02D 02:901D: 66        .byte con_chr_bank_spr + $66   ; 
- D 0 - I - 0x00B02E 02:901E: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00B02F 02:901F: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00B030 02:9020: C5 8B     .word _off057_spr_data_0x00CBD5_1F_0B
- D 0 - I - 0x00B032 02:9022: 25 90     .word loc_9025_1F_0B_next
- D 0 - I - 0x00B034 02:9024: 12        .byte $12   ; 



loc_9025_1F_0B_next:
- D 0 - I - 0x00B035 02:9025: 66        .byte con_chr_bank_spr + $66   ; 
- D 0 - I - 0x00B036 02:9026: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00B037 02:9027: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00B038 02:9028: D6 8B     .word _off057_spr_data_0x00CBE6_1F_0B
- D 0 - I - 0x00B03A 02:902A: 15 90     .word loc_9015_1F_0B_loop
- D 0 - I - 0x00B03C 02:902C: 12        .byte $12   ; 



off_902D_1F_0C_left:
loc_902D_1F_0C_loop:
- D 0 - I - 0x00B03D 02:902D: 66        .byte con_chr_bank_spr + $66   ; 
- D 0 - I - 0x00B03E 02:902E: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00B03F 02:902F: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00B040 02:9030: E7 8B     .word _off057_spr_data_0x00CBF7_1F_0C
- D 0 - I - 0x00B042 02:9032: 2D 90     .word loc_902D_1F_0C_loop
- D 0 - I - 0x00B044 02:9034: 12        .byte $12   ; 



off_9035_1F_0D_left:
loc_9035_1F_0D_loop:
- D 0 - I - 0x00B045 02:9035: 66        .byte con_chr_bank_spr + $66   ; 
- D 0 - I - 0x00B046 02:9036: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00B047 02:9037: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00B048 02:9038: F8 8B     .word _off057_spr_data_0x00CC08_1F_0D
- D 0 - I - 0x00B04A 02:903A: 35 90     .word loc_9035_1F_0D_loop
- D 0 - I - 0x00B04C 02:903C: 12        .byte $12   ; 



off_903D_1F_00_right:
loc_903D_1F_00_loop:
- D 0 - I - 0x00B04D 02:903D: 66        .byte con_chr_bank_spr + $66   ; 
- D 0 - I - 0x00B04E 02:903E: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00B04F 02:903F: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00B050 02:9040: BC 8A     .word _off057_spr_data_0x00CACC_1F_00
- - - - - - 0x00B052 02:9042: 3D 90     .word loc_903D_1F_00_loop
- D 0 - I - 0x00B054 02:9044: 10        .byte $10   ; 



off_9045_1F_01_right:
loc_9045_1F_01_loop:
- - - - - - 0x00B055 02:9045: 66        .byte con_chr_bank_spr + $66   ; 
- - - - - - 0x00B056 02:9046: 80        .byte $80   ; spr_A flip
- - - - - - 0x00B057 02:9047: 08        .byte $08   ; next animation delay
- - - - - - 0x00B058 02:9048: D6 8A     .word _off057_spr_data_0x00CAE6_1F_01
- - - - - - 0x00B05A 02:904A: 45 90     .word loc_9045_1F_01_loop
- - - - - - 0x00B05C 02:904C: 10        .byte $10   ; 



off_904D_1F_03_right:
off_904D_1F_04_right:
loc_904D_1F_04_loop:
- - - - - - 0x00B05D 02:904D: 66        .byte con_chr_bank_spr + $66   ; 
- - - - - - 0x00B05E 02:904E: 80        .byte $80   ; spr_A flip
- - - - - - 0x00B05F 02:904F: 08        .byte $08   ; next animation delay
- - - - - - 0x00B060 02:9050: F0 8A     .word _off057_spr_data_0x00CB00_1F_04
- - - - - - 0x00B062 02:9052: 4D 90     .word loc_904D_1F_04_loop
- - - - - - 0x00B064 02:9054: 11        .byte $11   ; 



off_9055_1F_07_right:
loc_9055_1F_07_loop:
- - - - - - 0x00B065 02:9055: 66        .byte con_chr_bank_spr + $66   ; 
- - - - - - 0x00B066 02:9056: 80        .byte $80   ; spr_A flip
- - - - - - 0x00B067 02:9057: 08        .byte $08   ; next animation delay
- - - - - - 0x00B068 02:9058: BC 8A     .word _off057_spr_data_0x00CACC_1F_07
- - - - - - 0x00B06A 02:905A: 5D 90     .word loc_905D_1F_07_next
- - - - - - 0x00B06C 02:905C: 10        .byte $10   ; 



loc_905D_1F_07_next:
- - - - - - 0x00B06D 02:905D: 66        .byte con_chr_bank_spr + $66   ; 
- - - - - - 0x00B06E 02:905E: 80        .byte $80   ; spr_A flip
- - - - - - 0x00B06F 02:905F: 08        .byte $08   ; next animation delay
- - - - - - 0x00B070 02:9060: 0A 8B     .word _off057_spr_data_0x00CB1A_1F_07
- - - - - - 0x00B072 02:9062: 65 90     .word loc_9065_1F_07_next
- - - - - - 0x00B074 02:9064: 10        .byte $10   ; 



loc_9065_1F_07_next:
- - - - - - 0x00B075 02:9065: 66        .byte con_chr_bank_spr + $66   ; 
- - - - - - 0x00B076 02:9066: 80        .byte $80   ; spr_A flip
- - - - - - 0x00B077 02:9067: 08        .byte $08   ; next animation delay
- - - - - - 0x00B078 02:9068: 24 8B     .word _off057_spr_data_0x00CB34_1F_07
- - - - - - 0x00B07A 02:906A: 6D 90     .word loc_906D_1F_07_next
- - - - - - 0x00B07C 02:906C: 10        .byte $10   ; 



loc_906D_1F_07_next:
- - - - - - 0x00B07D 02:906D: 66        .byte con_chr_bank_spr + $66   ; 
- - - - - - 0x00B07E 02:906E: 80        .byte $80   ; spr_A flip
- - - - - - 0x00B07F 02:906F: 08        .byte $08   ; next animation delay
- - - - - - 0x00B080 02:9070: 0A 8B     .word _off057_spr_data_0x00CB1A_1F_07
- - - - - - 0x00B082 02:9072: 55 90     .word loc_9055_1F_07_loop
- - - - - - 0x00B084 02:9074: 10        .byte $10   ; 



off_9075_1F_05_right:
loc_9075_1F_05_loop:
- D 0 - I - 0x00B085 02:9075: 66        .byte con_chr_bank_spr + $66   ; 
- D 0 - I - 0x00B086 02:9076: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00B087 02:9077: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00B088 02:9078: 75 8B     .word _off057_spr_data_0x00CB85_1F_05
- D 0 - I - 0x00B08A 02:907A: 7D 90     .word loc_907D_1F_05_next
- D 0 - I - 0x00B08C 02:907C: 10        .byte $10   ; 



loc_907D_1F_05_next:
- D 0 - I - 0x00B08D 02:907D: 66        .byte con_chr_bank_spr + $66   ; 
- D 0 - I - 0x00B08E 02:907E: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00B08F 02:907F: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00B090 02:9080: 92 8B     .word _off057_spr_data_0x00CBA2_1F_05
- D 0 - I - 0x00B092 02:9082: 75 90     .word loc_9075_1F_05_loop
- D 0 - I - 0x00B094 02:9084: 10        .byte $10   ; 



off_9085_1F_09_right:
loc_9085_1F_09_loop:
- D 0 - I - 0x00B095 02:9085: 66        .byte con_chr_bank_spr + $66   ; 
- D 0 - I - 0x00B096 02:9086: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00B097 02:9087: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00B098 02:9088: AC 8B     .word _off057_spr_data_0x00CBBC_1F_09
- D 0 - I - 0x00B09A 02:908A: 85 90     .word loc_9085_1F_09_loop
- D 0 - I - 0x00B09C 02:908C: 00        .byte $00   ; 



off_908D_1F_0B_right:
loc_908D_1F_0B_loop:
- D 0 - I - 0x00B09D 02:908D: 66        .byte con_chr_bank_spr + $66   ; 
- D 0 - I - 0x00B09E 02:908E: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00B09F 02:908F: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00B0A0 02:9090: B4 8B     .word _off057_spr_data_0x00CBC4_1F_0B
- D 0 - I - 0x00B0A2 02:9092: 95 90     .word loc_9095_1F_0B_next
- D 0 - I - 0x00B0A4 02:9094: 12        .byte $12   ; 



loc_9095_1F_0B_next:
- D 0 - I - 0x00B0A5 02:9095: 66        .byte con_chr_bank_spr + $66   ; 
- D 0 - I - 0x00B0A6 02:9096: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00B0A7 02:9097: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00B0A8 02:9098: C5 8B     .word _off057_spr_data_0x00CBD5_1F_0B
- D 0 - I - 0x00B0AA 02:909A: 9D 90     .word loc_909D_1F_0B_next
- D 0 - I - 0x00B0AC 02:909C: 12        .byte $12   ; 



loc_909D_1F_0B_next:
- D 0 - I - 0x00B0AD 02:909D: 66        .byte con_chr_bank_spr + $66   ; 
- D 0 - I - 0x00B0AE 02:909E: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00B0AF 02:909F: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00B0B0 02:90A0: D6 8B     .word _off057_spr_data_0x00CBE6_1F_0B
- D 0 - I - 0x00B0B2 02:90A2: 8D 90     .word loc_908D_1F_0B_loop
- D 0 - I - 0x00B0B4 02:90A4: 12        .byte $12   ; 



off_90A5_1F_0C_right:
loc_90A5_1F_0C_loop:
- D 0 - I - 0x00B0B5 02:90A5: 66        .byte con_chr_bank_spr + $66   ; 
- D 0 - I - 0x00B0B6 02:90A6: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00B0B7 02:90A7: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00B0B8 02:90A8: E7 8B     .word _off057_spr_data_0x00CBF7_1F_0C
- D 0 - I - 0x00B0BA 02:90AA: A5 90     .word loc_90A5_1F_0C_loop
- D 0 - I - 0x00B0BC 02:90AC: 12        .byte $12   ; 



off_90AD_1F_0D_right:
loc_90AD_1F_0D_loop:
- D 0 - I - 0x00B0BD 02:90AD: 66        .byte con_chr_bank_spr + $66   ; 
- D 0 - I - 0x00B0BE 02:90AE: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00B0BF 02:90AF: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00B0C0 02:90B0: F8 8B     .word _off057_spr_data_0x00CC08_1F_0D
- D 0 - I - 0x00B0C2 02:90B2: AD 90     .word loc_90AD_1F_0D_loop
- D 0 - I - 0x00B0C4 02:90B4: 12        .byte $12   ; 



off_90B5_27_00_left:
loc_90B5_27_00_loop:
- D 0 - I - 0x00B0C5 02:90B5: 80        .byte $80   ; 80
- D 0 - I - 0x00B0C6 02:90B6: 5A        .byte con_chr_bank_spr + $5A + $00   ; spr_A flip
- D 0 - I - 0x00B0C7 02:90B7: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00B0C8 02:90B8: 06 8C     .word _off057_spr_data_0x00CC16_27_00
- D 0 - I - 0x00B0CA 02:90BA: B5 90     .word loc_90B5_27_00_loop
- D 0 - I - 0x00B0CC 02:90BC: 17        .byte $17   ; 



off_90BD_27_01_left:
- D 0 - I - 0x00B0CD 02:90BD: 80        .byte $80   ; 80
- D 0 - I - 0x00B0CE 02:90BE: 5A        .byte con_chr_bank_spr + $5A + $00   ; spr_A flip
- D 0 - I - 0x00B0CF 02:90BF: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00B0D0 02:90C0: 23 8C     .word _off057_spr_data_0x00CC33_27_01
- D 0 - I - 0x00B0D2 02:90C2: C5 90     .word loc_90C5_27_01_next
- D 0 - I - 0x00B0D4 02:90C4: 16        .byte $16   ; 



loc_90C5_27_01_next:
loc_90C5_27_01_loop:
- D 0 - I - 0x00B0D5 02:90C5: 80        .byte $80   ; 80
- D 0 - I - 0x00B0D6 02:90C6: 5A        .byte con_chr_bank_spr + $5A + $00   ; spr_A flip
- D 0 - I - 0x00B0D7 02:90C7: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00B0D8 02:90C8: 2E 8C     .word _off057_spr_data_0x00CC3E_27_01
- D 0 - I - 0x00B0DA 02:90CA: C5 90     .word loc_90C5_27_01_loop
- D 0 - I - 0x00B0DC 02:90CC: 18        .byte $18   ; 



off_90CD_29_01_left:
- D 0 - I - 0x00B0DD 02:90CD: 80        .byte $80   ; 80
- D 0 - I - 0x00B0DE 02:90CE: 5A        .byte con_chr_bank_spr + $5A + $00   ; spr_A flip
- D 0 - I - 0x00B0DF 02:90CF: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00B0E0 02:90D0: 0B 8C     .word _off057_spr_data_0x00CC1B_29_01
- D 0 - I - 0x00B0E2 02:90D2: D5 90     .word loc_90D5_29_01_next
- - - - - - 0x00B0E4 02:90D4: 16        .byte $16   ; 



loc_90D5_29_01_next:
- D 0 - I - 0x00B0E5 02:90D5: 80        .byte $80   ; 80
- D 0 - I - 0x00B0E6 02:90D6: 5A        .byte con_chr_bank_spr + $5A + $00   ; spr_A flip
- D 0 - I - 0x00B0E7 02:90D7: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00B0E8 02:90D8: 13 8C     .word _off057_spr_data_0x00CC23_29_01
- D 0 - I - 0x00B0EA 02:90DA: DD 90     .word loc_90DD_29_01_next
- - - - - - 0x00B0EC 02:90DC: 16        .byte $16   ; 



loc_90DD_29_01_next:
loc_90DD_29_01_loop:
- D 0 - I - 0x00B0ED 02:90DD: 80        .byte $80   ; 80
- D 0 - I - 0x00B0EE 02:90DE: 5A        .byte con_chr_bank_spr + $5A + $00   ; spr_A flip
- D 0 - I - 0x00B0EF 02:90DF: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00B0F0 02:90E0: 1B 8C     .word _off057_spr_data_0x00CC2B_29_01
- D 0 - I - 0x00B0F2 02:90E2: DD 90     .word loc_90DD_29_01_loop
- D 0 - I - 0x00B0F4 02:90E4: 16        .byte $16   ; 



off_90E5_29_00_left:
loc_90E5_29_00_next:
loc_90E5_29_00_loop:
- D 0 - I - 0x00B0F5 02:90E5: 80        .byte $80   ; 80
- D 0 - I - 0x00B0F6 02:90E6: 5A        .byte con_chr_bank_spr + $5A + $00   ; spr_A flip
- D 0 - I - 0x00B0F7 02:90E7: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00B0F8 02:90E8: 0B 8C     .word _off057_spr_data_0x00CC1B_29_00
- D 0 - I - 0x00B0FA 02:90EA: E5 90     .word loc_90E5_29_00_loop
- D 0 - I - 0x00B0FC 02:90EC: 16        .byte $16   ; 



off_90ED_27_03_left:
loc_90ED_27_03_loop:
- D 0 - I - 0x00B0FD 02:90ED: 80        .byte $80   ; 80
- D 0 - I - 0x00B0FE 02:90EE: 5A        .byte con_chr_bank_spr + $5A + $00   ; spr_A flip
- D 0 - I - 0x00B0FF 02:90EF: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00B100 02:90F0: 39 8C     .word _off057_spr_data_0x00CC49_27_03
- D 0 - I - 0x00B102 02:90F2: F5 90     .word loc_90F5_27_03_next
- D 0 - I - 0x00B104 02:90F4: 18        .byte $18   ; 



loc_90F5_27_03_next:
- D 0 - I - 0x00B105 02:90F5: 80        .byte $80   ; 80
- D 0 - I - 0x00B106 02:90F6: 5A        .byte con_chr_bank_spr + $5A + $00   ; spr_A flip
- D 0 - I - 0x00B107 02:90F7: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00B108 02:90F8: 44 8C     .word _off057_spr_data_0x00CC54_27_03
- D 0 - I - 0x00B10A 02:90FA: ED 90     .word loc_90ED_27_03_loop
- D 0 - I - 0x00B10C 02:90FC: 18        .byte $18   ; 



off_90FD_27_08_left:
- D 0 - I - 0x00B10D 02:90FD: 80        .byte $80   ; 80
- D 0 - I - 0x00B10E 02:90FE: 5A        .byte con_chr_bank_spr + $5A + $00   ; spr_A flip
- D 0 - I - 0x00B10F 02:90FF: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00B110 02:9100: 2E 8C     .word _off057_spr_data_0x00CC3E_27_08
- - - - - - 0x00B112 02:9102: 05 91     .word loc_9105_27_08_next
- D 0 - I - 0x00B114 02:9104: 18        .byte $18   ; 



loc_9105_27_08_next:
- - - - - - 0x00B115 02:9105: 80        .byte $80   ; 80
- - - - - - 0x00B116 02:9106: 5A        .byte con_chr_bank_spr + $5A + $00   ; spr_A flip
- - - - - - 0x00B117 02:9107: 08        .byte $08   ; next animation delay
- - - - - - 0x00B118 02:9108: 23 8C     .word _off057_spr_data_0x00CC33_27_08
- - - - - - 0x00B11A 02:910A: 0D 91     .word loc_910D_27_08_next
- - - - - - 0x00B11C 02:910C: 16        .byte $16   ; 



loc_910D_27_08_next:
loc_910D_27_08_loop:
- - - - - - 0x00B11D 02:910D: 80        .byte $80   ; 80
- - - - - - 0x00B11E 02:910E: 5A        .byte con_chr_bank_spr + $5A + $00   ; spr_A flip
- - - - - - 0x00B11F 02:910F: 08        .byte $08   ; next animation delay
- - - - - - 0x00B120 02:9110: 06 8C     .word _off057_spr_data_0x00CC16_27_08
- - - - - - 0x00B122 02:9112: 0D 91     .word loc_910D_27_08_loop
- - - - - - 0x00B124 02:9114: 17        .byte $17   ; 



off_9115_27_0E_left:
loc_9115_27_0E_loop:
- D 0 - I - 0x00B125 02:9115: 80        .byte $80   ; 80
- D 0 - I - 0x00B126 02:9116: 5A        .byte con_chr_bank_spr + $5A + $00   ; spr_A flip
- D 0 - I - 0x00B127 02:9117: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00B128 02:9118: 4F 8C     .word _off057_spr_data_0x00CC5F_27_0E
- D 0 - I - 0x00B12A 02:911A: 1D 91     .word loc_911D_27_0E_next
- D 0 - I - 0x00B12C 02:911C: 99        .byte $99   ; 



loc_911D_27_0E_next:
- D 0 - I - 0x00B12D 02:911D: 80        .byte $80   ; 80
- D 0 - I - 0x00B12E 02:911E: 5A        .byte con_chr_bank_spr + $5A + $00   ; spr_A flip
- D 0 - I - 0x00B12F 02:911F: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00B130 02:9120: 39 8C     .word _off057_spr_data_0x00CC49_27_0E
- D 0 - I - 0x00B132 02:9122: 15 91     .word loc_9115_27_0E_loop
- D 0 - I - 0x00B134 02:9124: 99        .byte $99   ; 



off_9125_27_02_left:
loc_9125_27_02_next:
loc_9125_27_02_loop:
- D 0 - I - 0x00B135 02:9125: 80        .byte $80   ; 80
- D 0 - I - 0x00B136 02:9126: 5A        .byte con_chr_bank_spr + $5A + $00   ; spr_A flip
- D 0 - I - 0x00B137 02:9127: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00B138 02:9128: 39 8C     .word _off057_spr_data_0x00CC49_27_02
- D 0 - I - 0x00B13A 02:912A: 25 91     .word loc_9125_27_02_loop
- D 0 - I - 0x00B13C 02:912C: 00        .byte $00   ; 



off_912D_27_00_right:
loc_912D_27_00_loop:
- D 0 - I - 0x00B13D 02:912D: 80        .byte $80   ; 80
- D 0 - I - 0x00B13E 02:912E: DA        .byte con_chr_bank_spr + $5A + $80   ; spr_A flip
- D 0 - I - 0x00B13F 02:912F: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00B140 02:9130: 06 8C     .word _off057_spr_data_0x00CC16_27_00
- D 0 - I - 0x00B142 02:9132: 2D 91     .word loc_912D_27_00_loop
- D 0 - I - 0x00B144 02:9134: 17        .byte $17   ; 



off_9135_27_01_right:
- D 0 - I - 0x00B145 02:9135: 80        .byte $80   ; 80
- D 0 - I - 0x00B146 02:9136: DA        .byte con_chr_bank_spr + $5A + $80   ; spr_A flip
- D 0 - I - 0x00B147 02:9137: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00B148 02:9138: 23 8C     .word _off057_spr_data_0x00CC33_27_01
- D 0 - I - 0x00B14A 02:913A: 3D 91     .word loc_913D_27_01_next
- D 0 - I - 0x00B14C 02:913C: 16        .byte $16   ; 



loc_913D_27_01_next:
loc_913D_27_01_loop:
- D 0 - I - 0x00B14D 02:913D: 80        .byte $80   ; 80
- D 0 - I - 0x00B14E 02:913E: DA        .byte con_chr_bank_spr + $5A + $80   ; spr_A flip
- D 0 - I - 0x00B14F 02:913F: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00B150 02:9140: 2E 8C     .word _off057_spr_data_0x00CC3E_27_01
- D 0 - I - 0x00B152 02:9142: 3D 91     .word loc_913D_27_01_loop
- D 0 - I - 0x00B154 02:9144: 18        .byte $18   ; 



off_9145_29_01_right:
- D 0 - I - 0x00B155 02:9145: 80        .byte $80   ; 80
- D 0 - I - 0x00B156 02:9146: DA        .byte con_chr_bank_spr + $5A + $80   ; spr_A flip
- D 0 - I - 0x00B157 02:9147: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00B158 02:9148: 0B 8C     .word _off057_spr_data_0x00CC1B_29_01
- D 0 - I - 0x00B15A 02:914A: 4D 91     .word loc_914D_29_01_next
- - - - - - 0x00B15C 02:914C: 16        .byte $16   ; 



loc_914D_29_01_next:
- D 0 - I - 0x00B15D 02:914D: 80        .byte $80   ; 80
- D 0 - I - 0x00B15E 02:914E: DA        .byte con_chr_bank_spr + $5A + $80   ; spr_A flip
- D 0 - I - 0x00B15F 02:914F: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00B160 02:9150: 13 8C     .word _off057_spr_data_0x00CC23_29_01
- D 0 - I - 0x00B162 02:9152: 55 91     .word loc_9155_29_01_next
- - - - - - 0x00B164 02:9154: 16        .byte $16   ; 



loc_9155_29_01_next:
loc_9155_29_01_loop:
- D 0 - I - 0x00B165 02:9155: 80        .byte $80   ; 80
- D 0 - I - 0x00B166 02:9156: DA        .byte con_chr_bank_spr + $5A + $80   ; spr_A flip
- D 0 - I - 0x00B167 02:9157: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00B168 02:9158: 1B 8C     .word _off057_spr_data_0x00CC2B_29_01
- D 0 - I - 0x00B16A 02:915A: 55 91     .word loc_9155_29_01_loop
- D 0 - I - 0x00B16C 02:915C: 16        .byte $16   ; 



off_915D_29_00_right:
- D 0 - I - 0x00B16D 02:915D: 80        .byte $80   ; 80
- D 0 - I - 0x00B16E 02:915E: DA        .byte con_chr_bank_spr + $5A + $80   ; spr_A flip
- D 0 - I - 0x00B16F 02:915F: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00B170 02:9160: 0B 8C     .word _off057_spr_data_0x00CC1B_29_00
- D 0 - I - 0x00B172 02:9162: E5 90     .word loc_90E5_29_00_next
- D 0 - I - 0x00B174 02:9164: 16        .byte $16   ; 



off_9165_27_03_right:
loc_9165_27_03_loop:
- D 0 - I - 0x00B175 02:9165: 80        .byte $80   ; 80
- D 0 - I - 0x00B176 02:9166: DA        .byte con_chr_bank_spr + $5A + $80   ; spr_A flip
- D 0 - I - 0x00B177 02:9167: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00B178 02:9168: 39 8C     .word _off057_spr_data_0x00CC49_27_03
- D 0 - I - 0x00B17A 02:916A: 6D 91     .word loc_916D_27_03_next
- D 0 - I - 0x00B17C 02:916C: 18        .byte $18   ; 



loc_916D_27_03_next:
- D 0 - I - 0x00B17D 02:916D: 80        .byte $80   ; 80
- D 0 - I - 0x00B17E 02:916E: DA        .byte con_chr_bank_spr + $5A + $80   ; spr_A flip
- D 0 - I - 0x00B17F 02:916F: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00B180 02:9170: 44 8C     .word _off057_spr_data_0x00CC54_27_03
- D 0 - I - 0x00B182 02:9172: 65 91     .word loc_9165_27_03_loop
- D 0 - I - 0x00B184 02:9174: 18        .byte $18   ; 



off_9175_27_08_right:
- - - - - - 0x00B185 02:9175: 80        .byte $80   ; 80
- - - - - - 0x00B186 02:9176: DA        .byte con_chr_bank_spr + $5A + $80   ; spr_A flip
- - - - - - 0x00B187 02:9177: 08        .byte $08   ; next animation delay
- - - - - - 0x00B188 02:9178: 2E 8C     .word _off057_spr_data_0x00CC3E_27_08
- - - - - - 0x00B18A 02:917A: 7D 91     .word loc_917D_27_08_next
- - - - - - 0x00B18C 02:917C: 18        .byte $18   ; 



loc_917D_27_08_next:
- - - - - - 0x00B18D 02:917D: 80        .byte $80   ; 80
- - - - - - 0x00B18E 02:917E: DA        .byte con_chr_bank_spr + $5A + $80   ; spr_A flip
- - - - - - 0x00B18F 02:917F: 08        .byte $08   ; next animation delay
- - - - - - 0x00B190 02:9180: 23 8C     .word _off057_spr_data_0x00CC33_27_08
- - - - - - 0x00B192 02:9182: 85 91     .word loc_9185_27_08_next
- - - - - - 0x00B194 02:9184: 16        .byte $16   ; 



loc_9185_27_08_next:
loc_9185_27_08_loop:
- - - - - - 0x00B195 02:9185: 80        .byte $80   ; 80
- - - - - - 0x00B196 02:9186: DA        .byte con_chr_bank_spr + $5A + $80   ; spr_A flip
- - - - - - 0x00B197 02:9187: 08        .byte $08   ; next animation delay
- - - - - - 0x00B198 02:9188: 06 8C     .word _off057_spr_data_0x00CC16_27_08
- - - - - - 0x00B19A 02:918A: 85 91     .word loc_9185_27_08_loop
- - - - - - 0x00B19C 02:918C: 17        .byte $17   ; 



off_918D_27_0E_right:
loc_918D_27_0E_loop:
- D 0 - I - 0x00B19D 02:918D: 80        .byte $80   ; 80
- D 0 - I - 0x00B19E 02:918E: DA        .byte con_chr_bank_spr + $5A + $80   ; spr_A flip
- D 0 - I - 0x00B19F 02:918F: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00B1A0 02:9190: 4F 8C     .word _off057_spr_data_0x00CC5F_27_0E
- D 0 - I - 0x00B1A2 02:9192: 95 91     .word loc_9195_27_0E_next
- D 0 - I - 0x00B1A4 02:9194: 99        .byte $99   ; 



loc_9195_27_0E_next:
- D 0 - I - 0x00B1A5 02:9195: 80        .byte $80   ; 80
- D 0 - I - 0x00B1A6 02:9196: DA        .byte con_chr_bank_spr + $5A + $80   ; spr_A flip
- D 0 - I - 0x00B1A7 02:9197: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00B1A8 02:9198: 39 8C     .word _off057_spr_data_0x00CC49_27_0E
- D 0 - I - 0x00B1AA 02:919A: 8D 91     .word loc_918D_27_0E_loop
- D 0 - I - 0x00B1AC 02:919C: 99        .byte $99   ; 



off_919D_27_02_right:
- D 0 - I - 0x00B1AD 02:919D: 80        .byte $80   ; 80
- D 0 - I - 0x00B1AE 02:919E: DA        .byte con_chr_bank_spr + $5A + $80   ; spr_A flip
- D 0 - I - 0x00B1AF 02:919F: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00B1B0 02:91A0: 39 8C     .word _off057_spr_data_0x00CC49_27_02
- D 0 - I - 0x00B1B2 02:91A2: 25 91     .word loc_9125_27_02_next
- D 0 - I - 0x00B1B4 02:91A4: 00        .byte $00   ; 



off_91A5_2A_00_left:
off_91A5_2A_05_left:
loc_91A5_2A_00_loop:
- D 0 - I - 0x00B1B5 02:91A5: 80        .byte $80   ; 80
- D 0 - I - 0x00B1B6 02:91A6: 61        .byte con_chr_bank_spr + $61 + $00   ; spr_A flip
- D 0 - I - 0x00B1B7 02:91A7: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00B1B8 02:91A8: 03 8E     .word _off057_spr_data_0x00CE13_2A_00
- D 0 - I - 0x00B1BA 02:91AA: A5 91     .word loc_91A5_2A_00_loop
- D 0 - I - 0x00B1BC 02:91AC: 90        .byte $90   ; 



off_91AD_2A_01_left:
loc_91AD_2A_01_loop:
- D 0 - I - 0x00B1BD 02:91AD: 80        .byte $80   ; 80
- D 0 - I - 0x00B1BE 02:91AE: 60        .byte con_chr_bank_spr + $60 + $00   ; spr_A flip
- D 0 - I - 0x00B1BF 02:91AF: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00B1C0 02:91B0: 3D 8E     .word _off057_spr_data_0x00CE4D_2A_01
- D 0 - I - 0x00B1C2 02:91B2: B5 91     .word loc_91B5_2A_01_next
- D 0 - I - 0x00B1C4 02:91B4: 8E        .byte $8E   ; 



loc_91B5_2A_01_next:
- D 0 - I - 0x00B1C5 02:91B5: 80        .byte $80   ; 80
- D 0 - I - 0x00B1C6 02:91B6: 60        .byte con_chr_bank_spr + $60 + $00   ; spr_A flip
- D 0 - I - 0x00B1C7 02:91B7: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00B1C8 02:91B8: 63 8E     .word _off057_spr_data_0x00CE73_2A_01
- D 0 - I - 0x00B1CA 02:91BA: BD 91     .word loc_91BD_2A_01_next
- D 0 - I - 0x00B1CC 02:91BC: 8E        .byte $8E   ; 



loc_91BD_2A_01_next:
- D 0 - I - 0x00B1CD 02:91BD: 80        .byte $80   ; 80
- D 0 - I - 0x00B1CE 02:91BE: 60        .byte con_chr_bank_spr + $60 + $00   ; spr_A flip
- D 0 - I - 0x00B1CF 02:91BF: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00B1D0 02:91C0: 83 8E     .word _off057_spr_data_0x00CE93_2A_01
- D 0 - I - 0x00B1D2 02:91C2: AD 91     .word loc_91AD_2A_01_loop
- D 0 - I - 0x00B1D4 02:91C4: 8E        .byte $8E   ; 



off_91C5_2A_03_left:
loc_91C5_2A_03_loop:
- D 0 - I - 0x00B1D5 02:91C5: 80        .byte $80   ; 80
- D 0 - I - 0x00B1D6 02:91C6: 61        .byte con_chr_bank_spr + $61 + $00   ; spr_A flip
- D 0 - I - 0x00B1D7 02:91C7: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00B1D8 02:91C8: 0C 8F     .word _off057_spr_data_0x00CF1C_2A_03
- D 0 - I - 0x00B1DA 02:91CA: CD 91     .word loc_91CD_2A_03_next
- D 0 - I - 0x00B1DC 02:91CC: 00        .byte $00   ; 



loc_91CD_2A_03_next:
- D 0 - I - 0x00B1DD 02:91CD: 80        .byte $80   ; 80
- D 0 - I - 0x00B1DE 02:91CE: 61        .byte con_chr_bank_spr + $61 + $00   ; spr_A flip
- D 0 - I - 0x00B1DF 02:91CF: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00B1E0 02:91D0: 03 8E     .word _off057_spr_data_0x00CE13_2A_03
- D 0 - I - 0x00B1E2 02:91D2: C5 91     .word loc_91C5_2A_03_loop
- D 0 - I - 0x00B1E4 02:91D4: 00        .byte $00   ; 



off_91D5_2A_04_left:
loc_91D5_2A_04_loop:
- D 0 - I - 0x00B1E5 02:91D5: 62        .byte con_chr_bank_spr + $62   ; 
- D 0 - I - 0x00B1E6 02:91D6: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00B1E7 02:91D7: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00B1E8 02:91D8: 2C 8F     .word _off057_spr_data_0x00CF3C_2A_04
- D 0 - I - 0x00B1EA 02:91DA: D5 91     .word loc_91D5_2A_04_loop
- D 0 - I - 0x00B1EC 02:91DC: 90        .byte $90   ; 



off_91DD_2A_06_left:
loc_91DD_2A_06_loop:
- D 0 - I - 0x00B1ED 02:91DD: 62        .byte con_chr_bank_spr + $62   ; 
- D 0 - I - 0x00B1EE 02:91DE: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00B1EF 02:91DF: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00B1F0 02:91E0: 4C 8F     .word _off057_spr_data_0x00CF5C_2A_06
- D 0 - I - 0x00B1F2 02:91E2: DD 91     .word loc_91DD_2A_06_loop
- D 0 - I - 0x00B1F4 02:91E4: 90        .byte $90   ; 



off_91E5_2A_0E_left:
- D 0 - I - 0x00B1F5 02:91E5: 80        .byte $80   ; 80
- D 0 - I - 0x00B1F6 02:91E6: 61        .byte con_chr_bank_spr + $61 + $00   ; spr_A flip
- D 0 - I - 0x00B1F7 02:91E7: 30        .byte $30   ; next animation delay
- D 0 - I - 0x00B1F8 02:91E8: 6F 8F     .word _off057_spr_data_0x00CF7F_2A_0E
- D 0 - I - 0x00B1FA 02:91EA: ED 91     .word loc_91ED_2A_0E_next
- D 0 - I - 0x00B1FC 02:91EC: 90        .byte $90   ; 



loc_91ED_2A_0E_next:
loc_91ED_2A_0E_loop:
- D 0 - I - 0x00B1FD 02:91ED: 80        .byte $80   ; 80
- D 0 - I - 0x00B1FE 02:91EE: 61        .byte con_chr_bank_spr + $61 + $00   ; spr_A flip
- D 0 - I - 0x00B1FF 02:91EF: 20        .byte $20   ; next animation delay
- D 0 - I - 0x00B200 02:91F0: 8F 8F     .word _off057_spr_data_0x00CF9F_2A_0E
- D 0 - I - 0x00B202 02:91F2: ED 91     .word loc_91ED_2A_0E_loop
- D 0 - I - 0x00B204 02:91F4: 90        .byte $90   ; 



off_91F5_2A_00_right:
off_91F5_2A_05_right:
loc_91F5_2A_00_loop:
- D 0 - I - 0x00B205 02:91F5: 80        .byte $80   ; 80
- D 0 - I - 0x00B206 02:91F6: E1        .byte con_chr_bank_spr + $61 + $80   ; spr_A flip
- D 0 - I - 0x00B207 02:91F7: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00B208 02:91F8: 03 8E     .word _off057_spr_data_0x00CE13_2A_00
- D 0 - I - 0x00B20A 02:91FA: F5 91     .word loc_91F5_2A_00_loop
- D 0 - I - 0x00B20C 02:91FC: 90        .byte $90   ; 



off_91FD_2A_01_right:
loc_91FD_2A_01_loop:
- D 0 - I - 0x00B20D 02:91FD: 80        .byte $80   ; 80
- D 0 - I - 0x00B20E 02:91FE: E0        .byte con_chr_bank_spr + $60 + $80   ; spr_A flip
- D 0 - I - 0x00B20F 02:91FF: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00B210 02:9200: 3D 8E     .word _off057_spr_data_0x00CE4D_2A_01
- D 0 - I - 0x00B212 02:9202: 05 92     .word loc_9205_2A_01_next
- D 0 - I - 0x00B214 02:9204: 8E        .byte $8E   ; 



loc_9205_2A_01_next:
- D 0 - I - 0x00B215 02:9205: 80        .byte $80   ; 80
- D 0 - I - 0x00B216 02:9206: E0        .byte con_chr_bank_spr + $60 + $80   ; spr_A flip
- D 0 - I - 0x00B217 02:9207: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00B218 02:9208: 63 8E     .word _off057_spr_data_0x00CE73_2A_01
- D 0 - I - 0x00B21A 02:920A: 0D 92     .word loc_920D_2A_01_next
- D 0 - I - 0x00B21C 02:920C: 8E        .byte $8E   ; 



loc_920D_2A_01_next:
- D 0 - I - 0x00B21D 02:920D: 80        .byte $80   ; 80
- D 0 - I - 0x00B21E 02:920E: E0        .byte con_chr_bank_spr + $60 + $80   ; spr_A flip
- D 0 - I - 0x00B21F 02:920F: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00B220 02:9210: 83 8E     .word _off057_spr_data_0x00CE93_2A_01
- D 0 - I - 0x00B222 02:9212: FD 91     .word loc_91FD_2A_01_loop
- D 0 - I - 0x00B224 02:9214: 8E        .byte $8E   ; 



off_9215_2A_03_right:
loc_9215_2A_03_loop:
- D 0 - I - 0x00B225 02:9215: 80        .byte $80   ; 80
- D 0 - I - 0x00B226 02:9216: E1        .byte con_chr_bank_spr + $61 + $80   ; spr_A flip
- D 0 - I - 0x00B227 02:9217: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00B228 02:9218: 0C 8F     .word _off057_spr_data_0x00CF1C_2A_03
- D 0 - I - 0x00B22A 02:921A: 1D 92     .word loc_921D_2A_03_next
- D 0 - I - 0x00B22C 02:921C: 00        .byte $00   ; 



loc_921D_2A_03_next:
- D 0 - I - 0x00B22D 02:921D: 80        .byte $80   ; 80
- D 0 - I - 0x00B22E 02:921E: E1        .byte con_chr_bank_spr + $61 + $80   ; spr_A flip
- D 0 - I - 0x00B22F 02:921F: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00B230 02:9220: 03 8E     .word _off057_spr_data_0x00CE13_2A_03
- D 0 - I - 0x00B232 02:9222: 15 92     .word loc_9215_2A_03_loop
- D 0 - I - 0x00B234 02:9224: 00        .byte $00   ; 



off_9225_2A_04_right:
loc_9225_2A_04_loop:
- - - - - - 0x00B235 02:9225: 62        .byte con_chr_bank_spr + $62   ; 
- - - - - - 0x00B236 02:9226: 80        .byte $80   ; spr_A flip
- - - - - - 0x00B237 02:9227: 08        .byte $08   ; next animation delay
- - - - - - 0x00B238 02:9228: 2C 8F     .word _off057_spr_data_0x00CF3C_2A_04
- - - - - - 0x00B23A 02:922A: 25 92     .word loc_9225_2A_04_loop
- - - - - - 0x00B23C 02:922C: 90        .byte $90   ; 



off_922D_2A_06_right:
loc_922D_2A_06_loop:
- D 0 - I - 0x00B23D 02:922D: 62        .byte con_chr_bank_spr + $62   ; 
- D 0 - I - 0x00B23E 02:922E: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00B23F 02:922F: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00B240 02:9230: 4C 8F     .word _off057_spr_data_0x00CF5C_2A_06
- D 0 - I - 0x00B242 02:9232: 2D 92     .word loc_922D_2A_06_loop
- D 0 - I - 0x00B244 02:9234: 90        .byte $90   ; 



off_9235_2A_0E_right:
- D 0 - I - 0x00B245 02:9235: 80        .byte $80   ; 80
- D 0 - I - 0x00B246 02:9236: E1        .byte con_chr_bank_spr + $61 + $80   ; spr_A flip
- D 0 - I - 0x00B247 02:9237: 30        .byte $30   ; next animation delay
- D 0 - I - 0x00B248 02:9238: 6F 8F     .word _off057_spr_data_0x00CF7F_2A_0E
- D 0 - I - 0x00B24A 02:923A: 3D 92     .word loc_923D_2A_0E_next
- D 0 - I - 0x00B24C 02:923C: 90        .byte $90   ; 



loc_923D_2A_0E_next:
loc_923D_2A_0E_loop:
- D 0 - I - 0x00B24D 02:923D: 80        .byte $80   ; 80
- D 0 - I - 0x00B24E 02:923E: E1        .byte con_chr_bank_spr + $61 + $80   ; spr_A flip
- D 0 - I - 0x00B24F 02:923F: 20        .byte $20   ; next animation delay
- D 0 - I - 0x00B250 02:9240: 8F 8F     .word _off057_spr_data_0x00CF9F_2A_0E
- D 0 - I - 0x00B252 02:9242: 3D 92     .word loc_923D_2A_0E_loop
- D 0 - I - 0x00B254 02:9244: 90        .byte $90   ; 



off_9245_2C_00_left:
loc_9245_2C_00_loop:
- D 0 - I - 0x00B255 02:9245: 80        .byte $80   ; 80
- D 0 - I - 0x00B256 02:9246: 61        .byte con_chr_bank_spr + $61 + $00   ; spr_A flip
- D 0 - I - 0x00B257 02:9247: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00B258 02:9248: AF 8F     .word _off057_spr_data_0x00CFBF_2C_00
- D 0 - I - 0x00B25A 02:924A: 45 92     .word loc_9245_2C_00_loop
- D 0 - I - 0x00B25C 02:924C: 18        .byte $18   ; 



off_924D_2C_00_right:
loc_924D_2C_00_loop:
- D 0 - I - 0x00B25D 02:924D: 80        .byte $80   ; 80
- D 0 - I - 0x00B25E 02:924E: E1        .byte con_chr_bank_spr + $61 + $80   ; spr_A flip
- D 0 - I - 0x00B25F 02:924F: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00B260 02:9250: AF 8F     .word _off057_spr_data_0x00CFBF_2C_00
- D 0 - I - 0x00B262 02:9252: 4D 92     .word loc_924D_2C_00_loop
- D 0 - I - 0x00B264 02:9254: 18        .byte $18   ; 



off_9255_2C_05_left:
- - - - - - 0x00B265 02:9255: 80        .byte $80   ; 80
- - - - - - 0x00B266 02:9256: 61        .byte con_chr_bank_spr + $61 + $00   ; spr_A flip
- - - - - - 0x00B267 02:9257: 08        .byte $08   ; next animation delay
- - - - - - 0x00B268 02:9258: BA 8F     .word _off057_spr_data_0x00CFCA_2C_05
- - - - - - 0x00B26A 02:925A: 5D 92     .word loc_925D_2C_05_next
- - - - - - 0x00B26C 02:925C: 98        .byte $98   ; 



off_925D_2C_02_left:
loc_925D_2C_05_next:
loc_925D_2C_02_loop:
- D 0 - I - 0x00B26D 02:925D: 80        .byte $80   ; 80
- D 0 - I - 0x00B26E 02:925E: 61        .byte con_chr_bank_spr + $61 + $00   ; spr_A flip
- D 0 - I - 0x00B26F 02:925F: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00B270 02:9260: C5 8F     .word _off057_spr_data_0x00CFD5_2C_02
- - - - - - 0x00B272 02:9262: 5D 92     .word loc_925D_2C_02_loop
- D 0 - I - 0x00B274 02:9264: 98        .byte $98   ; 



off_9265_2C_05_right:
- - - - - - 0x00B275 02:9265: 80        .byte $80   ; 80
- - - - - - 0x00B276 02:9266: E1        .byte con_chr_bank_spr + $61 + $80   ; spr_A flip
- - - - - - 0x00B277 02:9267: 08        .byte $08   ; next animation delay
- - - - - - 0x00B278 02:9268: BA 8F     .word _off057_spr_data_0x00CFCA_2C_05
- - - - - - 0x00B27A 02:926A: 6D 92     .word loc_926D_2C_05_next
- - - - - - 0x00B27C 02:926C: 98        .byte $98   ; 



off_926D_2C_02_right:
loc_926D_2C_05_next:
loc_926D_2C_02_loop:
- D 0 - I - 0x00B27D 02:926D: 80        .byte $80   ; 80
- D 0 - I - 0x00B27E 02:926E: E1        .byte con_chr_bank_spr + $61 + $80   ; spr_A flip
- D 0 - I - 0x00B27F 02:926F: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00B280 02:9270: C5 8F     .word _off057_spr_data_0x00CFD5_2C_02
- - - - - - 0x00B282 02:9272: 6D 92     .word loc_926D_2C_02_loop
- D 0 - I - 0x00B284 02:9274: 98        .byte $98   ; 



off_9275_2B_00_left:
loc_9275_2B_00_loop:
- D 0 - I - 0x00B285 02:9275: 62        .byte con_chr_bank_spr + $62   ; 
- D 0 - I - 0x00B286 02:9276: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00B287 02:9277: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00B288 02:9278: 23 8E     .word _off057_spr_data_0x00CE33_2B_00
- D 0 - I - 0x00B28A 02:927A: 75 92     .word loc_9275_2B_00_loop
- D 0 - I - 0x00B28C 02:927C: 10        .byte $10   ; 



off_927D_2B_00_right:
loc_927D_2B_00_loop:
- D 0 - I - 0x00B28D 02:927D: 62        .byte con_chr_bank_spr + $62   ; 
- D 0 - I - 0x00B28E 02:927E: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00B28F 02:927F: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00B290 02:9280: 23 8E     .word _off057_spr_data_0x00CE33_2B_00
- D 0 - I - 0x00B292 02:9282: 7D 92     .word loc_927D_2B_00_loop
- D 0 - I - 0x00B294 02:9284: 10        .byte $10   ; 



off_9285_2B_02_left:
loc_9285_2B_02_next:
- D 0 - I - 0x00B295 02:9285: 62        .byte con_chr_bank_spr + $62   ; 
- D 0 - I - 0x00B296 02:9286: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00B297 02:9287: 02        .byte $02   ; next animation delay
- D 0 - I - 0x00B298 02:9288: 23 8E     .word _off057_spr_data_0x00CE33_2B_02
- D 0 - I - 0x00B29A 02:928A: 8D 92     .word loc_928D_2B_02_next
- D 0 - I - 0x00B29C 02:928C: 00        .byte $00   ; 



off_928D_2B_02_right:
loc_928D_2B_02_next:
- D 0 - I - 0x00B29D 02:928D: 62        .byte con_chr_bank_spr + $62   ; 
- D 0 - I - 0x00B29E 02:928E: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00B29F 02:928F: 02        .byte $02   ; next animation delay
- D 0 - I - 0x00B2A0 02:9290: 23 8E     .word _off057_spr_data_0x00CE33_2B_02
- D 0 - I - 0x00B2A2 02:9292: 85 92     .word loc_9285_2B_02_next
- D 0 - I - 0x00B2A4 02:9294: 00        .byte $00   ; 



off_9295_2B_01_left:
loc_9295_2B_01_loop:
- D 0 - I - 0x00B2A5 02:9295: 48        .byte con_chr_bank_spr + $48   ; 
- D 0 - I - 0x00B2A6 02:9296: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00B2A7 02:9297: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00B2A8 02:9298: A9 8E     .word _off057_spr_data_0x00CEB9_2B_01
- D 0 - I - 0x00B2AA 02:929A: 9D 92     .word loc_929D_2B_01_next
- D 0 - I - 0x00B2AC 02:929C: 0E        .byte $0E   ; 



loc_929D_2B_01_next:
- D 0 - I - 0x00B2AD 02:929D: 48        .byte con_chr_bank_spr + $48   ; 
- D 0 - I - 0x00B2AE 02:929E: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00B2AF 02:929F: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00B2B0 02:92A0: CC 8E     .word _off057_spr_data_0x00CEDC_2B_01
- D 0 - I - 0x00B2B2 02:92A2: A5 92     .word loc_92A5_2B_01_next
- D 0 - I - 0x00B2B4 02:92A4: 8E        .byte $8E   ; 



loc_92A5_2B_01_next:
- D 0 - I - 0x00B2B5 02:92A5: 48        .byte con_chr_bank_spr + $48   ; 
- D 0 - I - 0x00B2B6 02:92A6: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00B2B7 02:92A7: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00B2B8 02:92A8: E9 8E     .word _off057_spr_data_0x00CEF9_2B_01
- D 0 - I - 0x00B2BA 02:92AA: 95 92     .word loc_9295_2B_01_loop
- D 0 - I - 0x00B2BC 02:92AC: 0E        .byte $0E   ; 



off_92AD_2B_01_right:
loc_92AD_2B_01_loop:
- D 0 - I - 0x00B2BD 02:92AD: 48        .byte con_chr_bank_spr + $48   ; 
- D 0 - I - 0x00B2BE 02:92AE: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00B2BF 02:92AF: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00B2C0 02:92B0: A9 8E     .word _off057_spr_data_0x00CEB9_2B_01
- D 0 - I - 0x00B2C2 02:92B2: B5 92     .word loc_92B5_2B_01_next
- D 0 - I - 0x00B2C4 02:92B4: 0E        .byte $0E   ; 



loc_92B5_2B_01_next:
- D 0 - I - 0x00B2C5 02:92B5: 48        .byte con_chr_bank_spr + $48   ; 
- D 0 - I - 0x00B2C6 02:92B6: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00B2C7 02:92B7: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00B2C8 02:92B8: CC 8E     .word _off057_spr_data_0x00CEDC_2B_01
- D 0 - I - 0x00B2CA 02:92BA: BD 92     .word loc_92BD_2B_01_next
- D 0 - I - 0x00B2CC 02:92BC: 8E        .byte $8E   ; 



loc_92BD_2B_01_next:
- D 0 - I - 0x00B2CD 02:92BD: 48        .byte con_chr_bank_spr + $48   ; 
- D 0 - I - 0x00B2CE 02:92BE: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00B2CF 02:92BF: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00B2D0 02:92C0: E9 8E     .word _off057_spr_data_0x00CEF9_2B_01
- D 0 - I - 0x00B2D2 02:92C2: AD 92     .word loc_92AD_2B_01_loop
- D 0 - I - 0x00B2D4 02:92C4: 0E        .byte $0E   ; 



off_92C5_2D_00_left:
loc_92C5_2D_00_loop:
- D 0 - I - 0x00B2D5 02:92C5: 64        .byte con_chr_bank_spr + $64   ; 
- D 0 - I - 0x00B2D6 02:92C6: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00B2D7 02:92C7: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00B2D8 02:92C8: CD 8F     .word _off057_spr_data_0x00CFDD_2D_00
- D 0 - I - 0x00B2DA 02:92CA: C5 92     .word loc_92C5_2D_00_loop
- D 0 - I - 0x00B2DC 02:92CC: 10        .byte $10   ; 



off_92CD_2D_01_left:
loc_92CD_2D_01_loop:
- D 0 - I - 0x00B2DD 02:92CD: 64        .byte con_chr_bank_spr + $64   ; 
- D 0 - I - 0x00B2DE 02:92CE: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00B2DF 02:92CF: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00B2E0 02:92D0: EA 8F     .word _off057_spr_data_0x00CFFA_2D_01
- D 0 - I - 0x00B2E2 02:92D2: CD 92     .word loc_92CD_2D_01_loop
- D 0 - I - 0x00B2E4 02:92D4: 19        .byte $19   ; 



off_92D5_2D_02_left:
loc_92D5_2D_02_next:
- D 0 - I - 0x00B2E5 02:92D5: 64        .byte con_chr_bank_spr + $64   ; 
- D 0 - I - 0x00B2E6 02:92D6: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00B2E7 02:92D7: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00B2E8 02:92D8: 04 90     .word _off057_spr_data_0x00D014_2D_02
- D 0 - I - 0x00B2EA 02:92DA: 15 93     .word loc_9315_2D_02_next
- D 0 - I - 0x00B2EC 02:92DC: 90        .byte $90   ; 



off_92DD_2D_03_left:
loc_92DD_2D_03_loop:
- D 0 - I - 0x00B2ED 02:92DD: 80        .byte $80   ; 80
- D 0 - I - 0x00B2EE 02:92DE: 65        .byte con_chr_bank_spr + $65 + $00   ; spr_A flip
- D 0 - I - 0x00B2EF 02:92DF: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00B2F0 02:92E0: 21 90     .word _off057_spr_data_0x00D031_2D_03
- D 0 - I - 0x00B2F2 02:92E2: DD 92     .word loc_92DD_2D_03_loop
- - - - - - 0x00B2F4 02:92E4: 00        .byte $00   ; 



off_92E5_2D_04_left:
loc_92E5_2D_04_loop:
- D 0 - I - 0x00B2F5 02:92E5: 49        .byte con_chr_bank_spr + $49   ; 
- D 0 - I - 0x00B2F6 02:92E6: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00B2F7 02:92E7: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00B2F8 02:92E8: 3B 90     .word _off057_spr_data_0x00D04B_2D_04
- D 0 - I - 0x00B2FA 02:92EA: E5 92     .word loc_92E5_2D_04_loop
- D 0 - I - 0x00B2FC 02:92EC: 11        .byte $11   ; 



off_92ED_2D_05_left:
loc_92ED_2D_05_loop:
- D 0 - I - 0x00B2FD 02:92ED: 80        .byte $80   ; 80
- D 0 - I - 0x00B2FE 02:92EE: 65        .byte con_chr_bank_spr + $65 + $00   ; spr_A flip
- D 0 - I - 0x00B2FF 02:92EF: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00B300 02:92F0: 58 90     .word _off057_spr_data_0x00D068_2D_05
- D 0 - I - 0x00B302 02:92F2: ED 92     .word loc_92ED_2D_05_loop
- D 0 - I - 0x00B304 02:92F4: 11        .byte $11   ; 



off_92F5_2D_06_left:
loc_92F5_2D_06_loop:
- D 0 - I - 0x00B305 02:92F5: 64        .byte con_chr_bank_spr + $64   ; 
- D 0 - I - 0x00B306 02:92F6: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00B307 02:92F7: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00B308 02:92F8: 6C 90     .word _off057_spr_data_0x00D07C_2D_06
- D 0 - I - 0x00B30A 02:92FA: F5 92     .word loc_92F5_2D_06_loop
- D 0 - I - 0x00B30C 02:92FC: 10        .byte $10   ; 



off_92FD_2D_0B_left:
loc_92FD_2D_0B_loop:
- D 0 - I - 0x00B30D 02:92FD: 49        .byte con_chr_bank_spr + $49   ; 
- D 0 - I - 0x00B30E 02:92FE: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00B30F 02:92FF: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00B310 02:9300: 89 90     .word _off057_spr_data_0x00D099_2D_0B
- D 0 - I - 0x00B312 02:9302: FD 92     .word loc_92FD_2D_0B_loop
- D 0 - I - 0x00B314 02:9304: 00        .byte $00   ; 



off_9305_2D_00_right:
loc_9305_2D_00_loop:
- D 0 - I - 0x00B315 02:9305: 64        .byte con_chr_bank_spr + $64   ; 
- D 0 - I - 0x00B316 02:9306: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00B317 02:9307: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00B318 02:9308: CD 8F     .word _off057_spr_data_0x00CFDD_2D_00
- D 0 - I - 0x00B31A 02:930A: 05 93     .word loc_9305_2D_00_loop
- D 0 - I - 0x00B31C 02:930C: 10        .byte $10   ; 



off_930D_2D_01_right:
loc_930D_2D_01_loop:
- D 0 - I - 0x00B31D 02:930D: 64        .byte con_chr_bank_spr + $64   ; 
- D 0 - I - 0x00B31E 02:930E: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00B31F 02:930F: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00B320 02:9310: EA 8F     .word _off057_spr_data_0x00CFFA_2D_01
- D 0 - I - 0x00B322 02:9312: 0D 93     .word loc_930D_2D_01_loop
- D 0 - I - 0x00B324 02:9314: 19        .byte $19   ; 



off_9315_2D_02_right:
loc_9315_2D_02_next:
- D 0 - I - 0x00B325 02:9315: 64        .byte con_chr_bank_spr + $64   ; 
- D 0 - I - 0x00B326 02:9316: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00B327 02:9317: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00B328 02:9318: 04 90     .word _off057_spr_data_0x00D014_2D_02
- D 0 - I - 0x00B32A 02:931A: D5 92     .word loc_92D5_2D_02_next
- D 0 - I - 0x00B32C 02:931C: 90        .byte $90   ; 



off_931D_2D_03_right:
loc_931D_2D_03_loop:
- D 0 - I - 0x00B32D 02:931D: 80        .byte $80   ; 80
- D 0 - I - 0x00B32E 02:931E: E5        .byte con_chr_bank_spr + $65 + $80   ; spr_A flip
- D 0 - I - 0x00B32F 02:931F: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00B330 02:9320: 21 90     .word _off057_spr_data_0x00D031_2D_03
- D 0 - I - 0x00B332 02:9322: 1D 93     .word loc_931D_2D_03_loop
- - - - - - 0x00B334 02:9324: 00        .byte $00   ; 



off_9325_2D_04_right:
loc_9325_2D_04_loop:
- D 0 - I - 0x00B335 02:9325: 49        .byte con_chr_bank_spr + $49   ; 
- D 0 - I - 0x00B336 02:9326: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00B337 02:9327: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00B338 02:9328: 3B 90     .word _off057_spr_data_0x00D04B_2D_04
- D 0 - I - 0x00B33A 02:932A: 25 93     .word loc_9325_2D_04_loop
- D 0 - I - 0x00B33C 02:932C: 11        .byte $11   ; 



off_932D_2D_05_right:
loc_932D_2D_05_loop:
- D 0 - I - 0x00B33D 02:932D: 80        .byte $80   ; 80
- D 0 - I - 0x00B33E 02:932E: E5        .byte con_chr_bank_spr + $65 + $80   ; spr_A flip
- D 0 - I - 0x00B33F 02:932F: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00B340 02:9330: 58 90     .word _off057_spr_data_0x00D068_2D_05
- D 0 - I - 0x00B342 02:9332: 2D 93     .word loc_932D_2D_05_loop
- D 0 - I - 0x00B344 02:9334: 11        .byte $11   ; 



off_9335_2D_06_right:
loc_9335_2D_06_loop:
- D 0 - I - 0x00B345 02:9335: 64        .byte con_chr_bank_spr + $64   ; 
- D 0 - I - 0x00B346 02:9336: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00B347 02:9337: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00B348 02:9338: 6C 90     .word _off057_spr_data_0x00D07C_2D_06
- D 0 - I - 0x00B34A 02:933A: 35 93     .word loc_9335_2D_06_loop
- D 0 - I - 0x00B34C 02:933C: 10        .byte $10   ; 



off_933D_2D_0B_right:
loc_933D_2D_0B_loop:
- - - - - - 0x00B34D 02:933D: 49        .byte con_chr_bank_spr + $49   ; 
- - - - - - 0x00B34E 02:933E: 80        .byte $80   ; spr_A flip
- - - - - - 0x00B34F 02:933F: 08        .byte $08   ; next animation delay
- - - - - - 0x00B350 02:9340: 89 90     .word _off057_spr_data_0x00D099_2D_0B
- - - - - - 0x00B352 02:9342: 3D 93     .word loc_933D_2D_0B_loop
- - - - - - 0x00B354 02:9344: 00        .byte $00   ; 



off_9345_30_00_left:
off_9345_30_00_right:
loc_9345_30_00_loop:
- D 0 - I - 0x00B355 02:9345: 5B        .byte con_chr_bank_spr + $5B   ; 
- D 0 - I - 0x00B356 02:9346: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00B357 02:9347: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00B358 02:9348: 60 8C     .word _off057_spr_data_0x00CC70_30_00
- D 0 - I - 0x00B35A 02:934A: 45 93     .word loc_9345_30_00_loop
- D 0 - I - 0x00B35C 02:934C: 13        .byte $13   ; 



off_934D_31_00_left:
off_934D_31_00_right:
loc_934D_31_00_loop:
- - - - - - 0x00B35D 02:934D: 5B        .byte con_chr_bank_spr + $5B   ; 
- - - - - - 0x00B35E 02:934E: 00        .byte $00   ; spr_A flip
- - - - - - 0x00B35F 02:934F: 08        .byte $08   ; next animation delay
- - - - - - 0x00B360 02:9350: 6B 8C     .word _off057_spr_data_0x00CC7B_31_00
- - - - - - 0x00B362 02:9352: 4D 93     .word loc_934D_31_00_loop
- - - - - - 0x00B364 02:9354: 14        .byte $14   ; 



off_9355_33_00_left:
off_9355_33_00_right:
loc_9355_33_00_loop:
- D 0 - I - 0x00B365 02:9355: 5B        .byte con_chr_bank_spr + $5B   ; 
- D 0 - I - 0x00B366 02:9356: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00B367 02:9357: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00B368 02:9358: 76 8C     .word _off057_spr_data_0x00CC86_33_00
- D 0 - I - 0x00B36A 02:935A: 55 93     .word loc_9355_33_00_loop
- D 0 - I - 0x00B36C 02:935C: 15        .byte $15   ; 



off_935D_32_00_left:
off_935D_32_00_right:
loc_935D_32_00_loop:
- D 0 - I - 0x00B36D 02:935D: 5B        .byte con_chr_bank_spr + $5B   ; 
- D 0 - I - 0x00B36E 02:935E: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00B36F 02:935F: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00B370 02:9360: 76 8C     .word _off057_spr_data_0x00CC86_32_00
- D 0 - I - 0x00B372 02:9362: 5D 93     .word loc_935D_32_00_loop
- D 0 - I - 0x00B374 02:9364: 15        .byte $15   ; 



off_9365_31_01_left:
off_9365_31_01_right:
loc_9365_31_01_loop:
- - - - - - 0x00B375 02:9365: 5B        .byte con_chr_bank_spr + $5B   ; 
- - - - - - 0x00B376 02:9366: 00        .byte $00   ; spr_A flip
- - - - - - 0x00B377 02:9367: 08        .byte $08   ; next animation delay
- - - - - - 0x00B378 02:9368: 84 8C     .word _off057_spr_data_0x00CC94_31_01
- - - - - - 0x00B37A 02:936A: 6D 93     .word loc_936D_31_01_next
- - - - - - 0x00B37C 02:936C: 14        .byte $14   ; 



loc_936D_31_01_next:
- - - - - - 0x00B37D 02:936D: 5B        .byte con_chr_bank_spr + $5B   ; 
- - - - - - 0x00B37E 02:936E: 00        .byte $00   ; spr_A flip
- - - - - - 0x00B37F 02:936F: 08        .byte $08   ; next animation delay
- - - - - - 0x00B380 02:9370: 8F 8C     .word _off057_spr_data_0x00CC9F_31_01
- - - - - - 0x00B382 02:9372: 65 93     .word loc_9365_31_01_loop
- - - - - - 0x00B384 02:9374: 14        .byte $14   ; 



off_9375_36_00_left:
off_9375_36_00_right:
loc_9375_36_00_loop:
- D 0 - I - 0x00B385 02:9375: 5B        .byte con_chr_bank_spr + $5B   ; 
- D 0 - I - 0x00B386 02:9376: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00B387 02:9377: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00B388 02:9378: 9A 8C     .word _off057_spr_data_0x00CCAA_36_00
- D 0 - I - 0x00B38A 02:937A: 75 93     .word loc_9375_36_00_loop
- D 0 - I - 0x00B38C 02:937C: 13        .byte $13   ; 



off_937D_38_00_left:
off_937D_38_00_right:
loc_937D_38_00_loop:
- D 0 - I - 0x00B38D 02:937D: 5B        .byte con_chr_bank_spr + $5B   ; 
- D 0 - I - 0x00B38E 02:937E: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00B38F 02:937F: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00B390 02:9380: A5 8C     .word _off057_spr_data_0x00CCB5_38_00
- D 0 - I - 0x00B392 02:9382: 7D 93     .word loc_937D_38_00_loop
- D 0 - I - 0x00B394 02:9384: 14        .byte $14   ; 



off_9385_3A_00_left:
loc_9385_3A_00_loop:
- D 0 - I - 0x00B395 02:9385: 5B        .byte con_chr_bank_spr + $5B   ; 
- D 0 - I - 0x00B396 02:9386: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00B397 02:9387: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00B398 02:9388: B0 8C     .word _off057_spr_data_0x00CCC0_3A_00
- D 0 - I - 0x00B39A 02:938A: 85 93     .word loc_9385_3A_00_loop
- D 0 - I - 0x00B39C 02:938C: 00        .byte $00   ; 



off_938D_3A_05_left:
loc_938D_3A_05_loop:
- D 0 - I - 0x00B39D 02:938D: 5B        .byte con_chr_bank_spr + $5B   ; 
- D 0 - I - 0x00B39E 02:938E: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00B39F 02:938F: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00B3A0 02:9390: B8 8C     .word _off057_spr_data_0x00CCC8_3A_05
- D 0 - I - 0x00B3A2 02:9392: 8D 93     .word loc_938D_3A_05_loop
- D 0 - I - 0x00B3A4 02:9394: 0F        .byte $0F   ; 



off_9395_3A_06_left:
loc_9395_3A_06_loop:
- D 0 - I - 0x00B3A5 02:9395: 5B        .byte con_chr_bank_spr + $5B   ; 
- D 0 - I - 0x00B3A6 02:9396: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00B3A7 02:9397: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00B3A8 02:9398: C3 8C     .word _off057_spr_data_0x00CCD3_3A_06
- - - - - - 0x00B3AA 02:939A: 95 93     .word loc_9395_3A_06_loop
- D 0 - I - 0x00B3AC 02:939C: 0F        .byte $0F   ; 



off_939D_3A_00_right:
loc_939D_3A_00_loop:
- D 0 - I - 0x00B3AD 02:939D: 5B        .byte con_chr_bank_spr + $5B   ; 
- D 0 - I - 0x00B3AE 02:939E: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00B3AF 02:939F: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00B3B0 02:93A0: B0 8C     .word _off057_spr_data_0x00CCC0_3A_00
- D 0 - I - 0x00B3B2 02:93A2: 9D 93     .word loc_939D_3A_00_loop
- D 0 - I - 0x00B3B4 02:93A4: 00        .byte $00   ; 



off_93A5_3A_05_right:
loc_93A5_3A_05_loop:
- D 0 - I - 0x00B3B5 02:93A5: 5B        .byte con_chr_bank_spr + $5B   ; 
- D 0 - I - 0x00B3B6 02:93A6: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00B3B7 02:93A7: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00B3B8 02:93A8: B8 8C     .word _off057_spr_data_0x00CCC8_3A_05
- D 0 - I - 0x00B3BA 02:93AA: A5 93     .word loc_93A5_3A_05_loop
- D 0 - I - 0x00B3BC 02:93AC: 0F        .byte $0F   ; 



off_93AD_3A_06_right:
loc_93AD_3A_06_loop:
- D 0 - I - 0x00B3BD 02:93AD: 5B        .byte con_chr_bank_spr + $5B   ; 
- D 0 - I - 0x00B3BE 02:93AE: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00B3BF 02:93AF: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00B3C0 02:93B0: C3 8C     .word _off057_spr_data_0x00CCD3_3A_06
- - - - - - 0x00B3C2 02:93B2: AD 93     .word loc_93AD_3A_06_loop
- D 0 - I - 0x00B3C4 02:93B4: 0F        .byte $0F   ; 



off_93B5_3B_00_left:
loc_93B5_3B_00_loop:
- D 0 - I - 0x00B3C5 02:93B5: 5C        .byte con_chr_bank_spr + $5C   ; 
- D 0 - I - 0x00B3C6 02:93B6: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00B3C7 02:93B7: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00B3C8 02:93B8: CE 8C     .word _off057_spr_data_0x00CCDE_3B_00
- D 0 - I - 0x00B3CA 02:93BA: B5 93     .word loc_93B5_3B_00_loop
- D 0 - I - 0x00B3CC 02:93BC: 16        .byte $16   ; 



off_93BD_3C_00_left:
loc_93BD_3C_00_loop:
- - - - - - 0x00B3CD 02:93BD: 5C        .byte con_chr_bank_spr + $5C   ; 
- - - - - - 0x00B3CE 02:93BE: 00        .byte $00   ; spr_A flip
- - - - - - 0x00B3CF 02:93BF: 08        .byte $08   ; next animation delay
- - - - - - 0x00B3D0 02:93C0: D9 8C     .word _off057_spr_data_0x00CCE9_3C_00
- - - - - - 0x00B3D2 02:93C2: BD 93     .word loc_93BD_3C_00_loop
- - - - - - 0x00B3D4 02:93C4: 16        .byte $16   ; 



off_93C5_3B_00_right:
loc_93C5_3B_00_loop:
- D 0 - I - 0x00B3D5 02:93C5: 5C        .byte con_chr_bank_spr + $5C   ; 
- D 0 - I - 0x00B3D6 02:93C6: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00B3D7 02:93C7: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00B3D8 02:93C8: CE 8C     .word _off057_spr_data_0x00CCDE_3B_00
- D 0 - I - 0x00B3DA 02:93CA: C5 93     .word loc_93C5_3B_00_loop
- D 0 - I - 0x00B3DC 02:93CC: 16        .byte $16   ; 



off_93CD_3C_00_right:
loc_93CD_3C_00_loop:
- - - - - - 0x00B3DD 02:93CD: 5C        .byte con_chr_bank_spr + $5C   ; 
- - - - - - 0x00B3DE 02:93CE: 80        .byte $80   ; spr_A flip
- - - - - - 0x00B3DF 02:93CF: 08        .byte $08   ; next animation delay
- - - - - - 0x00B3E0 02:93D0: D9 8C     .word _off057_spr_data_0x00CCE9_3C_00
- - - - - - 0x00B3E2 02:93D2: CD 93     .word loc_93CD_3C_00_loop
- - - - - - 0x00B3E4 02:93D4: 16        .byte $16   ; 



off_93D5_2A_0C_left:
off_93D5_2A_0C_right:
loc_93D5_2A_0C_loop:
- D 0 - I - 0x00B3E5 02:93D5: 5C        .byte con_chr_bank_spr + $5C   ; 
- D 0 - I - 0x00B3E6 02:93D6: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00B3E7 02:93D7: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00B3E8 02:93D8: E4 8C     .word _off057_spr_data_0x00CCF4_2A_0C
- D 0 - I - 0x00B3EA 02:93DA: D5 93     .word loc_93D5_2A_0C_loop
- D 0 - I - 0x00B3EC 02:93DC: 00        .byte $00   ; 



off_93DD_3D_00_left:
off_93DD_3D_00_right:
loc_93DD_3D_00_loop:
- D 0 - I - 0x00B3ED 02:93DD: 80        .byte $80   ; 80
- D 0 - I - 0x00B3EE 02:93DE: 67        .byte con_chr_bank_spr + $67 + $00   ; spr_A flip
- D 0 - I - 0x00B3EF 02:93DF: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00B3F0 02:93E0: 9D 90     .word _off057_spr_data_0x00D0AD_3D_00
- D 0 - I - 0x00B3F2 02:93E2: DD 93     .word loc_93DD_3D_00_loop
- D 0 - I - 0x00B3F4 02:93E4: 0D        .byte $0D   ; 



off_93E5_3D_01_left:
off_93E5_3D_01_right:
loc_93E5_3D_01_loop:
- D 0 - I - 0x00B3F5 02:93E5: 80        .byte $80   ; 80
- D 0 - I - 0x00B3F6 02:93E6: E7        .byte con_chr_bank_spr + $67 + $80   ; spr_A flip
- D 0 - I - 0x00B3F7 02:93E7: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00B3F8 02:93E8: A5 90     .word _off057_spr_data_0x00D0B5_3D_01
- D 0 - I - 0x00B3FA 02:93EA: E5 93     .word loc_93E5_3D_01_loop
- D 0 - I - 0x00B3FC 02:93EC: 0D        .byte $0D   ; 



off_93ED_3D_02_left:
off_93ED_3D_02_right:
loc_93ED_3D_02_loop:
- D 0 - I - 0x00B3FD 02:93ED: 80        .byte $80   ; 80
- D 0 - I - 0x00B3FE 02:93EE: E7        .byte con_chr_bank_spr + $67 + $80   ; spr_A flip
- D 0 - I - 0x00B3FF 02:93EF: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00B400 02:93F0: AD 90     .word _off057_spr_data_0x00D0BD_3D_02
- D 0 - I - 0x00B402 02:93F2: ED 93     .word loc_93ED_3D_02_loop
- D 0 - I - 0x00B404 02:93F4: 0D        .byte $0D   ; 



off_93F5_3D_03_left:
off_93F5_3D_03_right:
loc_93F5_3D_03_loop:
- D 0 - I - 0x00B405 02:93F5: 80        .byte $80   ; 80
- D 0 - I - 0x00B406 02:93F6: E7        .byte con_chr_bank_spr + $67 + $80   ; spr_A flip
- D 0 - I - 0x00B407 02:93F7: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00B408 02:93F8: B5 90     .word _off057_spr_data_0x00D0C5_3D_03
- D 0 - I - 0x00B40A 02:93FA: F5 93     .word loc_93F5_3D_03_loop
- D 0 - I - 0x00B40C 02:93FC: 0D        .byte $0D   ; 



off_93FD_3D_04_left:
off_93FD_3D_04_right:
loc_93FD_3D_04_loop:
- D 0 - I - 0x00B40D 02:93FD: 80        .byte $80   ; 80
- D 0 - I - 0x00B40E 02:93FE: 67        .byte con_chr_bank_spr + $67 + $00   ; spr_A flip
- D 0 - I - 0x00B40F 02:93FF: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00B410 02:9400: BD 90     .word _off057_spr_data_0x00D0CD_3D_04
- D 0 - I - 0x00B412 02:9402: FD 93     .word loc_93FD_3D_04_loop
- D 0 - I - 0x00B414 02:9404: 0D        .byte $0D   ; 



off_9405_3D_05_left:
off_9405_3D_05_right:
loc_9405_3D_05_loop:
- D 0 - I - 0x00B415 02:9405: 80        .byte $80   ; 80
- D 0 - I - 0x00B416 02:9406: 67        .byte con_chr_bank_spr + $67 + $00   ; spr_A flip
- D 0 - I - 0x00B417 02:9407: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00B418 02:9408: B5 90     .word _off057_spr_data_0x00D0C5_3D_05
- D 0 - I - 0x00B41A 02:940A: 05 94     .word loc_9405_3D_05_loop
- D 0 - I - 0x00B41C 02:940C: 0D        .byte $0D   ; 



off_940D_3D_06_left:
off_940D_3D_06_right:
loc_940D_3D_06_loop:
- D 0 - I - 0x00B41D 02:940D: 80        .byte $80   ; 80
- D 0 - I - 0x00B41E 02:940E: 67        .byte con_chr_bank_spr + $67 + $00   ; spr_A flip
- D 0 - I - 0x00B41F 02:940F: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00B420 02:9410: AD 90     .word _off057_spr_data_0x00D0BD_3D_06
- D 0 - I - 0x00B422 02:9412: 0D 94     .word loc_940D_3D_06_loop
- D 0 - I - 0x00B424 02:9414: 0D        .byte $0D   ; 



off_9415_3D_07_left:
off_9415_3D_07_right:
loc_9415_3D_07_loop:
- D 0 - I - 0x00B425 02:9415: 80        .byte $80   ; 80
- D 0 - I - 0x00B426 02:9416: 67        .byte con_chr_bank_spr + $67 + $00   ; spr_A flip
- D 0 - I - 0x00B427 02:9417: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00B428 02:9418: A5 90     .word _off057_spr_data_0x00D0B5_3D_07
- D 0 - I - 0x00B42A 02:941A: 15 94     .word loc_9415_3D_07_loop
- D 0 - I - 0x00B42C 02:941C: 0D        .byte $0D   ; 



off_941D_41_01_left:
off_941D_41_01_right:
loc_941D_41_01_loop:
- D 0 - I - 0x00B42D 02:941D: 80        .byte $80   ; 80
- D 0 - I - 0x00B42E 02:941E: 67        .byte con_chr_bank_spr + $67 + $00   ; spr_A flip
- D 0 - I - 0x00B42F 02:941F: 02        .byte $02   ; next animation delay
- D 0 - I - 0x00B430 02:9420: E9 8C     .word _off057_spr_data_0x00CCF9_41_01
- D 0 - I - 0x00B432 02:9422: 25 94     .word loc_9425_41_01_next
- D 0 - I - 0x00B434 02:9424: 9B        .byte $9B   ; 



loc_9425_41_01_next:
- D 0 - I - 0x00B435 02:9425: 80        .byte $80   ; 80
- D 0 - I - 0x00B436 02:9426: 67        .byte con_chr_bank_spr + $67 + $00   ; spr_A flip
- D 0 - I - 0x00B437 02:9427: 02        .byte $02   ; next animation delay
- D 0 - I - 0x00B438 02:9428: F1 8C     .word _off057_spr_data_0x00CD01_41_01
- D 0 - I - 0x00B43A 02:942A: 2D 94     .word loc_942D_41_01_next
- D 0 - I - 0x00B43C 02:942C: 9B        .byte $9B   ; 



loc_942D_41_01_next:
- D 0 - I - 0x00B43D 02:942D: 80        .byte $80   ; 80
- D 0 - I - 0x00B43E 02:942E: 67        .byte con_chr_bank_spr + $67 + $00   ; spr_A flip
- D 0 - I - 0x00B43F 02:942F: 02        .byte $02   ; next animation delay
- D 0 - I - 0x00B440 02:9430: F9 8C     .word _off057_spr_data_0x00CD09_41_01
- D 0 - I - 0x00B442 02:9432: 35 94     .word loc_9435_41_01_next
- D 0 - I - 0x00B444 02:9434: 9B        .byte $9B   ; 



loc_9435_41_01_next:
- D 0 - I - 0x00B445 02:9435: 80        .byte $80   ; 80
- D 0 - I - 0x00B446 02:9436: 67        .byte con_chr_bank_spr + $67 + $00   ; spr_A flip
- D 0 - I - 0x00B447 02:9437: 02        .byte $02   ; next animation delay
- D 0 - I - 0x00B448 02:9438: 07 8D     .word _off057_spr_data_0x00CD17_41_01
- D 0 - I - 0x00B44A 02:943A: 3D 94     .word loc_943D_41_01_next
- D 0 - I - 0x00B44C 02:943C: 9B        .byte $9B   ; 



loc_943D_41_01_next:
- D 0 - I - 0x00B44D 02:943D: 80        .byte $80   ; 80
- D 0 - I - 0x00B44E 02:943E: 67        .byte con_chr_bank_spr + $67 + $00   ; spr_A flip
- D 0 - I - 0x00B44F 02:943F: 02        .byte $02   ; next animation delay
- D 0 - I - 0x00B450 02:9440: 15 8D     .word _off057_spr_data_0x00CD25_41_01
- D 0 - I - 0x00B452 02:9442: 45 94     .word loc_9445_41_01_next
- D 0 - I - 0x00B454 02:9444: 9B        .byte $9B   ; 



loc_9445_41_01_next:
- D 0 - I - 0x00B455 02:9445: 80        .byte $80   ; 80
- D 0 - I - 0x00B456 02:9446: 67        .byte con_chr_bank_spr + $67 + $00   ; spr_A flip
- D 0 - I - 0x00B457 02:9447: 02        .byte $02   ; next animation delay
- D 0 - I - 0x00B458 02:9448: 29 8D     .word _off057_spr_data_0x00CD39_41_01
- D 0 - I - 0x00B45A 02:944A: 1D 94     .word loc_941D_41_01_loop
- D 0 - I - 0x00B45C 02:944C: 9B        .byte $9B   ; 



off_944D_41_00_left:
off_944D_41_00_right:
loc_944D_41_00_loop:
- D 0 - I - 0x00B45D 02:944D: 80        .byte $80   ; 80
- D 0 - I - 0x00B45E 02:944E: 67        .byte con_chr_bank_spr + $67 + $00   ; spr_A flip
- D 0 - I - 0x00B45F 02:944F: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00B460 02:9450: E4 8C     .word _off057_spr_data_0x00CCF4_41_00
- D 0 - I - 0x00B462 02:9452: 4D 94     .word loc_944D_41_00_loop
- D 0 - I - 0x00B464 02:9454: 00        .byte $00   ; 



_off002_9455_2F:
; con_enemy_id_2F
_off002_9455_35:
; con_enemy_id_35
_off002_9455_43:
; con_enemy_id_43
_off002_9455_44:
; con_enemy_id_44
_off002_9455_45:
; con_enemy_id_45
_off002_9455_46:
; con_enemy_id_46
_off002_9455_47:
; con_enemy_id_47
_off002_9455_48:
; con_enemy_id_48
_off002_9455_49:
; con_enemy_id_49
_off002_9455_4B:
; con_enemy_id_4B
- D 0 - I - 0x00B465 02:9455: B7 94     .word _off048_94B7_43_00
- D 0 - I - 0x00B467 02:9457: BB 94     .word _off048_94BB_43_01
- D 0 - I - 0x00B469 02:9459: BF 94     .word _off048_94BF_43_02
- D 0 - I - 0x00B46B 02:945B: C3 94     .word _off048_94C3_43_03
- D 0 - I - 0x00B46D 02:945D: C7 94     .word _off048_94C7_43_04
- D 0 - I - 0x00B46F 02:945F: CB 94     .word _off048_94CB_43_05
- D 0 - I - 0x00B471 02:9461: CF 94     .word _off048_94CF_43_06
- D 0 - I - 0x00B473 02:9463: D3 94     .word _off048_94D3_43_07
- D 0 - I - 0x00B475 02:9465: D7 94     .word _off048_94D7_43_08
- D 0 - I - 0x00B477 02:9467: DB 94     .word _off048_94DB_43_09
- D 0 - I - 0x00B479 02:9469: DF 94     .word _off048_94DF_43_0A
- D 0 - I - 0x00B47B 02:946B: E3 94     .word _off048_94E3_43_0B
- D 0 - I - 0x00B47D 02:946D: E7 94     .word _off048_94E7_43_0C
- D 0 - I - 0x00B47F 02:946F: EB 94     .word _off048_94EB_43_0D
- D 0 - I - 0x00B481 02:9471: EF 94     .word _off048_94EF_43_0E
- D 0 - I - 0x00B483 02:9473: F3 94     .word _off048_94F3_43_0F
- - - - - - 0x00B485 02:9475: F7 94     .word _off048_94F7_43_10
- D 0 - I - 0x00B487 02:9477: FB 94     .word _off048_94FB_43_11
- D 0 - I - 0x00B489 02:9479: FF 94     .word _off048_94FF_43_12
- D 0 - I - 0x00B48B 02:947B: FF 94     .word _off048_94FF_43_13
- D 0 - I - 0x00B48D 02:947D: 03 95     .word _off048_9503_43_14
- D 0 - I - 0x00B48F 02:947F: 07 95     .word _off048_9507_43_15
- D 0 - I - 0x00B491 02:9481: 0B 95     .word _off048_950B_43_16



_off002_9483_4A:
; con_enemy_id_4A
- - - - - - 0x00B493 02:9483: 17 95     .word _off048_9517_4A_00
- - - - - - 0x00B495 02:9485: 0F 95     .word _off048_950F_4A_01
- - - - - - 0x00B497 02:9487: 0F 95     .word _off048_950F_4A_02
- - - - - - 0x00B499 02:9489: 0F 95     .word _off048_950F_4A_03
- - - - - - 0x00B49B 02:948B: 0F 95     .word _off048_950F_4A_04
- - - - - - 0x00B49D 02:948D: 0F 95     .word _off048_950F_4A_05
- - - - - - 0x00B49F 02:948F: 0F 95     .word _off048_950F_4A_06
- - - - - - 0x00B4A1 02:9491: 0F 95     .word _off048_950F_4A_07
- - - - - - 0x00B4A3 02:9493: 0F 95     .word _off048_950F_4A_08
- - - - - - 0x00B4A5 02:9495: 0F 95     .word _off048_950F_4A_09
- - - - - - 0x00B4A7 02:9497: 0F 95     .word _off048_950F_4A_0A
- - - - - - 0x00B4A9 02:9499: 0F 95     .word _off048_950F_4A_0B
- - - - - - 0x00B4AB 02:949B: 0F 95     .word _off048_950F_4A_0C
- - - - - - 0x00B4AD 02:949D: 0F 95     .word _off048_950F_4A_0D
- - - - - - 0x00B4AF 02:949F: 0F 95     .word _off048_950F_4A_0E
- - - - - - 0x00B4B1 02:94A1: 0F 95     .word _off048_950F_4A_0F
- - - - - - 0x00B4B3 02:94A3: 13 95     .word _off048_9513_4A_10
- - - - - - 0x00B4B5 02:94A5: 13 95     .word _off048_9513_4A_11
- - - - - - 0x00B4B7 02:94A7: 0F 95     .word _off048_950F_4A_12



_off002_94A9_4C:
; con_enemy_id_4C
_off002_94A9_4D:
; con_enemy_id_4D
_off002_94A9_4E:
; con_enemy_id_4E
_off002_94A9_4F:
; con_enemy_id_4F
- D 0 - I - 0x00B4B9 02:94A9: CB 95     .word _off048_95CB_4C_00
- - - - - - 0x00B4BB 02:94AB: CF 95     .word _off048_95CF_4C_01
- D 0 - I - 0x00B4BD 02:94AD: CB 95     .word _off048_95CB_4C_02
- - - - - - 0x00B4BF 02:94AF: CB 95     .word _off048_95CB_4C_03
- - - - - - 0x00B4C1 02:94B1: CB 95     .word _off048_95CB_4C_04
- - - - - - 0x00B4C3 02:94B3: CB 95     .word _off048_95CB_4C_05
- - - - - - 0x00B4C5 02:94B5: CB 95     .word _off048_95CB_4C_06



_off048_94B7_43_00:
- D 0 - I - 0x00B4C7 02:94B7: 63 95     .word off_9563_43_00_left
- - - - - - 0x00B4C9 02:94B9: 63 95     .word off_9563_43_00_right



_off048_94BB_43_01:
- D 0 - I - 0x00B4CB 02:94BB: 83 95     .word off_9583_43_01_left
- - - - - - 0x00B4CD 02:94BD: 83 95     .word off_9583_43_01_right



_off048_94BF_43_02:
- D 0 - I - 0x00B4CF 02:94BF: 83 95     .word off_9583_43_02_left
- - - - - - 0x00B4D1 02:94C1: 83 95     .word off_9583_43_02_right



_off048_94C3_43_03:
- D 0 - I - 0x00B4D3 02:94C3: 83 95     .word off_9583_43_03_left
- - - - - - 0x00B4D5 02:94C5: 83 95     .word off_9583_43_03_right



_off048_94C7_43_04:
- D 0 - I - 0x00B4D7 02:94C7: 33 95     .word off_9533_43_04_left
- - - - - - 0x00B4D9 02:94C9: 33 95     .word off_9533_43_04_right



_off048_94CB_43_05:
- D 0 - I - 0x00B4DB 02:94CB: 83 95     .word off_9583_43_05_left
- - - - - - 0x00B4DD 02:94CD: 83 95     .word off_9583_43_05_right



_off048_94CF_43_06:
- D 0 - I - 0x00B4DF 02:94CF: 83 95     .word off_9583_43_06_left
- - - - - - 0x00B4E1 02:94D1: 83 95     .word off_9583_43_06_right



_off048_94D3_43_07:
- D 0 - I - 0x00B4E3 02:94D3: 83 95     .word off_9583_43_07_left
- - - - - - 0x00B4E5 02:94D5: 83 95     .word off_9583_43_07_right



_off048_94D7_43_08:
- D 0 - I - 0x00B4E7 02:94D7: 1B 95     .word off_951B_43_08_left
- - - - - - 0x00B4E9 02:94D9: 1B 95     .word off_951B_43_08_right



_off048_94DB_43_09:
- D 0 - I - 0x00B4EB 02:94DB: 73 95     .word off_9573_43_09_left
- - - - - - 0x00B4ED 02:94DD: 73 95     .word off_9573_43_09_right



_off048_94DF_43_0A:
- D 0 - I - 0x00B4EF 02:94DF: 73 95     .word off_9573_43_0A_left
- - - - - - 0x00B4F1 02:94E1: 73 95     .word off_9573_43_0A_right



_off048_94E3_43_0B:
- D 0 - I - 0x00B4F3 02:94E3: 73 95     .word off_9573_43_0B_left
- - - - - - 0x00B4F5 02:94E5: 73 95     .word off_9573_43_0B_right



_off048_94E7_43_0C:
- D 0 - I - 0x00B4F7 02:94E7: 23 95     .word off_9523_43_0C_left
- - - - - - 0x00B4F9 02:94E9: 23 95     .word off_9523_43_0C_right



_off048_94EB_43_0D:
- D 0 - I - 0x00B4FB 02:94EB: 73 95     .word off_9573_43_0D_left
- - - - - - 0x00B4FD 02:94ED: 73 95     .word off_9573_43_0D_right



_off048_94EF_43_0E:
- D 0 - I - 0x00B4FF 02:94EF: 73 95     .word off_9573_43_0E_left
- - - - - - 0x00B501 02:94F1: 73 95     .word off_9573_43_0E_right



_off048_94F3_43_0F:
- D 0 - I - 0x00B503 02:94F3: 73 95     .word off_9573_43_0F_left
- - - - - - 0x00B505 02:94F5: 73 95     .word off_9573_43_0F_right



_off048_94F7_43_10:
- - - - - - 0x00B507 02:94F7: 1B 95     .word off_951B_43_10_left
- - - - - - 0x00B509 02:94F9: 1B 95     .word off_951B_43_10_right



_off048_94FB_43_11:
- D 0 - I - 0x00B50B 02:94FB: 1B 95     .word off_951B_43_11_left
- - - - - - 0x00B50D 02:94FD: 1B 95     .word off_951B_43_11_right



_off048_94FF_43_12:
_off048_94FF_43_13:
- D 0 - I - 0x00B50F 02:94FF: 93 95     .word off_9593_43_12_left
- - - - - - 0x00B511 02:9501: 93 95     .word off_9593_43_12_right



_off048_9503_43_14:
- D 0 - I - 0x00B513 02:9503: 43 95     .word off_9543_43_14_left
- - - - - - 0x00B515 02:9505: 43 95     .word off_9543_43_14_right



_off048_9507_43_15:
- D 0 - I - 0x00B517 02:9507: 4B 95     .word off_954B_43_15_left
- - - - - - 0x00B519 02:9509: 4B 95     .word off_954B_43_15_right



_off048_950B_43_16:
- D 0 - I - 0x00B51B 02:950B: 9B 95     .word off_959B_43_16_left
- - - - - - 0x00B51D 02:950D: 9B 95     .word off_959B_43_16_right



_off048_950F_4A_01:
_off048_950F_4A_02:
_off048_950F_4A_03:
_off048_950F_4A_04:
_off048_950F_4A_05:
_off048_950F_4A_06:
_off048_950F_4A_07:
_off048_950F_4A_08:
_off048_950F_4A_09:
_off048_950F_4A_0A:
_off048_950F_4A_0B:
_off048_950F_4A_0C:
_off048_950F_4A_0D:
_off048_950F_4A_0E:
_off048_950F_4A_0F:
_off048_950F_4A_12:
- - - - - - 0x00B51F 02:950F: B3 95     .word off_95B3_4A_01_left
- - - - - - 0x00B521 02:9511: B3 95     .word off_95B3_4A_01_right



_off048_9513_4A_10:
_off048_9513_4A_11:
- - - - - - 0x00B523 02:9513: A3 95     .word off_95A3_4A_10_left
- - - - - - 0x00B525 02:9515: A3 95     .word off_95A3_4A_10_right



_off048_9517_4A_00:
- - - - - - 0x00B527 02:9517: C3 95     .word off_95C3_4A_00_left
- - - - - - 0x00B529 02:9519: C3 95     .word off_95C3_4A_00_right



off_951B_43_08_left:
off_951B_43_08_right:
off_951B_43_10_left:
off_951B_43_10_right:
off_951B_43_11_left:
off_951B_43_11_right:
loc_951B_43_08_loop:
- D 0 - I - 0x00B52B 02:951B: 5A        .byte con_chr_bank_spr + $5A   ; 
- D 0 - I - 0x00B52C 02:951C: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00B52D 02:951D: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00B52E 02:951E: 3D 8D     .word _off057_spr_data_0x00CD4D_43_08
- D 0 - I - 0x00B530 02:9520: 1B 95     .word loc_951B_43_08_loop
- D 0 - I - 0x00B532 02:9522: 04        .byte $04   ; 



off_9523_43_0C_left:
off_9523_43_0C_right:
loc_9523_43_0C_loop:
- D 0 - I - 0x00B533 02:9523: 5A        .byte con_chr_bank_spr + $5A   ; 
- D 0 - I - 0x00B534 02:9524: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00B535 02:9525: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00B536 02:9526: 4B 8D     .word _off057_spr_data_0x00CD5B_43_0C
- D 0 - I - 0x00B538 02:9528: 2B 95     .word loc_952B_43_0C_next
- D 0 - I - 0x00B53A 02:952A: 04        .byte $04   ; 



loc_952B_43_0C_next:
- D 0 - I - 0x00B53B 02:952B: 5A        .byte con_chr_bank_spr + $5A   ; 
- D 0 - I - 0x00B53C 02:952C: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00B53D 02:952D: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00B53E 02:952E: 3D 8D     .word _off057_spr_data_0x00CD4D_43_0C
- D 0 - I - 0x00B540 02:9530: 23 95     .word loc_9523_43_0C_loop
- D 0 - I - 0x00B542 02:9532: 04        .byte $04   ; 



off_9533_43_04_left:
off_9533_43_04_right:
loc_9533_43_04_loop:
- D 0 - I - 0x00B543 02:9533: 5A        .byte con_chr_bank_spr + $5A   ; 
- D 0 - I - 0x00B544 02:9534: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00B545 02:9535: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00B546 02:9536: 4B 8D     .word _off057_spr_data_0x00CD5B_43_04
- D 0 - I - 0x00B548 02:9538: 3B 95     .word loc_953B_43_04_next
- D 0 - I - 0x00B54A 02:953A: 04        .byte $04   ; 



loc_953B_43_04_next:
- D 0 - I - 0x00B54B 02:953B: 5A        .byte con_chr_bank_spr + $5A   ; 
- D 0 - I - 0x00B54C 02:953C: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00B54D 02:953D: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00B54E 02:953E: 3D 8D     .word _off057_spr_data_0x00CD4D_43_04
- D 0 - I - 0x00B550 02:9540: 33 95     .word loc_9533_43_04_loop
- D 0 - I - 0x00B552 02:9542: 04        .byte $04   ; 



off_9543_43_14_left:
off_9543_43_14_right:
loc_9543_43_14_loop:
- D 0 - I - 0x00B553 02:9543: 5A        .byte con_chr_bank_spr + $5A   ; 
- D 0 - I - 0x00B554 02:9544: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00B555 02:9545: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00B556 02:9546: 78 8D     .word _off057_spr_data_0x00CD88_43_14
- D 0 - I - 0x00B558 02:9548: 43 95     .word loc_9543_43_14_loop
- - - - - - 0x00B55A 02:954A: 04        .byte $04   ; 



off_954B_43_15_left:
off_954B_43_15_right:
- D 0 - I - 0x00B55B 02:954B: 5A        .byte con_chr_bank_spr + $5A   ; 
- D 0 - I - 0x00B55C 02:954C: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00B55D 02:954D: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00B55E 02:954E: 78 8D     .word _off057_spr_data_0x00CD88_43_15
- D 0 - I - 0x00B560 02:9550: 53 95     .word loc_9553_43_15_next
- D 0 - I - 0x00B562 02:9552: 00        .byte $00   ; 



loc_9553_43_15_next:
- D 0 - I - 0x00B563 02:9553: 5A        .byte con_chr_bank_spr + $5A   ; 
- D 0 - I - 0x00B564 02:9554: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00B565 02:9555: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00B566 02:9556: 6A 8D     .word _off057_spr_data_0x00CD7A_43_15
- D 0 - I - 0x00B568 02:9558: 5B 95     .word loc_955B_43_15_next
- - - - - - 0x00B56A 02:955A: 00        .byte $00   ; 



loc_955B_43_15_next:
loc_955B_43_15_loop:
- D 0 - I - 0x00B56B 02:955B: 5A        .byte con_chr_bank_spr + $5A   ; 
- D 0 - I - 0x00B56C 02:955C: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00B56D 02:955D: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00B56E 02:955E: 5C 8D     .word _off057_spr_data_0x00CD6C_43_15
- D 0 - I - 0x00B570 02:9560: 5B 95     .word loc_955B_43_15_loop
- - - - - - 0x00B572 02:9562: 04        .byte $04   ; 



off_9563_43_00_left:
off_9563_43_00_right:
loc_9563_43_00_loop:
- D 0 - I - 0x00B573 02:9563: 5A        .byte con_chr_bank_spr + $5A   ; 
- D 0 - I - 0x00B574 02:9564: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00B575 02:9565: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00B576 02:9566: 86 8D     .word _off057_spr_data_0x00CD96_43_00
- D 0 - I - 0x00B578 02:9568: 6B 95     .word loc_956B_43_00_next
- D 0 - I - 0x00B57A 02:956A: 04        .byte $04   ; 



loc_956B_43_00_next:
- D 0 - I - 0x00B57B 02:956B: 5A        .byte con_chr_bank_spr + $5A   ; 
- D 0 - I - 0x00B57C 02:956C: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00B57D 02:956D: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00B57E 02:956E: 3D 8D     .word _off057_spr_data_0x00CD4D_43_00
- D 0 - I - 0x00B580 02:9570: 63 95     .word loc_9563_43_00_loop
- D 0 - I - 0x00B582 02:9572: 04        .byte $04   ; 



off_9573_43_09_left:
off_9573_43_09_right:
off_9573_43_0A_left:
off_9573_43_0A_right:
off_9573_43_0B_left:
off_9573_43_0B_right:
off_9573_43_0D_left:
off_9573_43_0D_right:
off_9573_43_0E_left:
off_9573_43_0E_right:
off_9573_43_0F_left:
off_9573_43_0F_right:
loc_9573_43_09_loop:
- D 0 - I - 0x00B583 02:9573: 5A        .byte con_chr_bank_spr + $5A   ; 
- D 0 - I - 0x00B584 02:9574: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00B585 02:9575: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00B586 02:9576: 9A 8D     .word _off057_spr_data_0x00CDAA_43_09
- D 0 - I - 0x00B588 02:9578: 7B 95     .word loc_957B_43_09_next
- D 0 - I - 0x00B58A 02:957A: 04        .byte $04   ; 



loc_957B_43_09_next:
- D 0 - I - 0x00B58B 02:957B: 5A        .byte con_chr_bank_spr + $5A   ; 
- D 0 - I - 0x00B58C 02:957C: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00B58D 02:957D: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00B58E 02:957E: 3D 8D     .word _off057_spr_data_0x00CD4D_43_09
- D 0 - I - 0x00B590 02:9580: 73 95     .word loc_9573_43_09_loop
- D 0 - I - 0x00B592 02:9582: 04        .byte $04   ; 



off_9583_43_01_left:
off_9583_43_01_right:
off_9583_43_02_left:
off_9583_43_02_right:
off_9583_43_03_left:
off_9583_43_03_right:
off_9583_43_05_left:
off_9583_43_05_right:
off_9583_43_06_left:
off_9583_43_06_right:
off_9583_43_07_left:
off_9583_43_07_right:
loc_9583_43_01_loop:
- D 0 - I - 0x00B593 02:9583: 5A        .byte con_chr_bank_spr + $5A   ; 
- D 0 - I - 0x00B594 02:9584: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00B595 02:9585: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00B596 02:9586: 9A 8D     .word _off057_spr_data_0x00CDAA_43_01
- D 0 - I - 0x00B598 02:9588: 8B 95     .word loc_958B_43_01_next
- D 0 - I - 0x00B59A 02:958A: 04        .byte $04   ; 



loc_958B_43_01_next:
- D 0 - I - 0x00B59B 02:958B: 5A        .byte con_chr_bank_spr + $5A   ; 
- D 0 - I - 0x00B59C 02:958C: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00B59D 02:958D: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00B59E 02:958E: 3D 8D     .word _off057_spr_data_0x00CD4D_43_01
- D 0 - I - 0x00B5A0 02:9590: 83 95     .word loc_9583_43_01_loop
- D 0 - I - 0x00B5A2 02:9592: 04        .byte $04   ; 



off_9593_43_12_left:
off_9593_43_12_right:
loc_9593_43_12_loop:
- D 0 - I - 0x00B5A3 02:9593: 5A        .byte con_chr_bank_spr + $5A   ; 
- D 0 - I - 0x00B5A4 02:9594: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00B5A5 02:9595: 01        .byte $01   ; next animation delay
- D 0 - I - 0x00B5A6 02:9596: 5C 8D     .word _off057_spr_data_0x00CD6C_43_12
- D 0 - I - 0x00B5A8 02:9598: 93 95     .word loc_9593_43_12_loop
- D 0 - I - 0x00B5AA 02:959A: 04        .byte $04   ; 



off_959B_43_16_left:
off_959B_43_16_right:
loc_959B_43_16_loop:
- D 0 - I - 0x00B5AB 02:959B: 5A        .byte con_chr_bank_spr + $5A   ; 
- D 0 - I - 0x00B5AC 02:959C: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00B5AD 02:959D: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00B5AE 02:959E: B1 8D     .word _off057_spr_data_0x00CDC1_43_16
- D 0 - I - 0x00B5B0 02:95A0: 9B 95     .word loc_959B_43_16_loop
- - - - - - 0x00B5B2 02:95A2: 00        .byte $00   ; 



off_95A3_4A_10_left:
off_95A3_4A_10_right:
loc_95A3_4A_10_loop:
- - - - - - 0x00B5B3 02:95A3: 5D        .byte con_chr_bank_spr + $5D   ; 
- - - - - - 0x00B5B4 02:95A4: 00        .byte $00   ; spr_A flip
- - - - - - 0x00B5B5 02:95A5: 02        .byte $02   ; next animation delay
- - - - - - 0x00B5B6 02:95A6: C4 8D     .word _off057_spr_data_0x00CDD4_4A_10
- - - - - - 0x00B5B8 02:95A8: AB 95     .word loc_95AB_4A_10_next
- - - - - - 0x00B5BA 02:95AA: 00        .byte $00   ; 



loc_95AB_4A_10_next:
- - - - - - 0x00B5BB 02:95AB: 5D        .byte con_chr_bank_spr + $5D   ; 
- - - - - - 0x00B5BC 02:95AC: 00        .byte $00   ; spr_A flip
- - - - - - 0x00B5BD 02:95AD: 02        .byte $02   ; next animation delay
- - - - - - 0x00B5BE 02:95AE: C4 8D     .word _off057_spr_data_0x00CDD4_4A_10
- - - - - - 0x00B5C0 02:95B0: A3 95     .word loc_95A3_4A_10_loop
- - - - - - 0x00B5C2 02:95B2: 00        .byte $00   ; 



off_95B3_4A_01_left:
off_95B3_4A_01_right:
loc_95B3_4A_01_loop:
- - - - - - 0x00B5C3 02:95B3: 5D        .byte con_chr_bank_spr + $5D   ; 
- - - - - - 0x00B5C4 02:95B4: 00        .byte $00   ; spr_A flip
- - - - - - 0x00B5C5 02:95B5: 08        .byte $08   ; next animation delay
- - - - - - 0x00B5C6 02:95B6: D2 8D     .word _off057_spr_data_0x00CDE2_4A_01
- - - - - - 0x00B5C8 02:95B8: BB 95     .word loc_95BB_4A_01_next
- - - - - - 0x00B5CA 02:95BA: 04        .byte $04   ; 



loc_95BB_4A_01_next:
- - - - - - 0x00B5CB 02:95BB: 5D        .byte con_chr_bank_spr + $5D   ; 
- - - - - - 0x00B5CC 02:95BC: 00        .byte $00   ; spr_A flip
- - - - - - 0x00B5CD 02:95BD: 08        .byte $08   ; next animation delay
- - - - - - 0x00B5CE 02:95BE: E0 8D     .word _off057_spr_data_0x00CDF0_4A_01
- - - - - - 0x00B5D0 02:95C0: B3 95     .word loc_95B3_4A_01_loop
- - - - - - 0x00B5D2 02:95C2: 04        .byte $04   ; 



off_95C3_4A_00_left:
off_95C3_4A_00_right:
loc_95C3_4A_00_loop:
- - - - - - 0x00B5D3 02:95C3: 5D        .byte con_chr_bank_spr + $5D   ; 
- - - - - - 0x00B5D4 02:95C4: 00        .byte $00   ; spr_A flip
- - - - - - 0x00B5D5 02:95C5: 01        .byte $01   ; next animation delay
- - - - - - 0x00B5D6 02:95C6: E4 8C     .word _off057_spr_data_0x00CCF4_4A_00
- - - - - - 0x00B5D8 02:95C8: C3 95     .word loc_95C3_4A_00_loop
- - - - - - 0x00B5DA 02:95CA: 00        .byte $00   ; 



_off048_95CB_4C_00:
_off048_95CB_4C_02:
_off048_95CB_4C_03:
_off048_95CB_4C_04:
_off048_95CB_4C_05:
_off048_95CB_4C_06:
- D 0 - I - 0x00B5DB 02:95CB: D3 95     .word off_95D3_4C_00_left
- D 0 - I - 0x00B5DD 02:95CD: D3 95     .word off_95D3_4C_00_right



_off048_95CF_4C_01:
- - - - - - 0x00B5DF 02:95CF: DB 95     .word off_95DB_4C_01_left
- - - - - - 0x00B5E1 02:95D1: DB 95     .word off_95DB_4C_01_right



off_95D3_4C_00_left:
off_95D3_4C_00_right:
loc_95D3_4C_00_loop:
- D 0 - I - 0x00B5E3 02:95D3: 80        .byte $80   ; 80
- D 0 - I - 0x00B5E4 02:95D4: 67        .byte con_chr_bank_spr + $67 + $00   ; spr_A flip
- D 0 - I - 0x00B5E5 02:95D5: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00B5E6 02:95D6: F3 8D     .word _off057_spr_data_0x00CE03_4C_00
- D 0 - I - 0x00B5E8 02:95D8: D3 95     .word loc_95D3_4C_00_loop
- D 0 - I - 0x00B5EA 02:95DA: 0F        .byte $0F   ; 



off_95DB_4C_01_left:
off_95DB_4C_01_right:
loc_95DB_4C_01_loop:
- - - - - - 0x00B5EB 02:95DB: 80        .byte $80   ; 80
- - - - - - 0x00B5EC 02:95DC: 67        .byte con_chr_bank_spr + $67 + $00   ; spr_A flip
- - - - - - 0x00B5ED 02:95DD: 08        .byte $08   ; next animation delay
- - - - - - 0x00B5EE 02:95DE: FB 8D     .word _off057_spr_data_0x00CE0B_4C_01
- - - - - - 0x00B5F0 02:95E0: DB 95     .word loc_95DB_4C_01_loop
- - - - - - 0x00B5F2 02:95E2: 0F        .byte $0F   ; 



tbl_0x00B5F3:
- - - - - - 0x00B5F3 02:95E3: 2B 96     .word _off000_962B_00
- D 0 - - - 0x00B5F5 02:95E5: 2B 96     .word _off000_962B_01
- D 0 - - - 0x00B5F7 02:95E7: 2B 96     .word _off000_962B_02
- D 0 - - - 0x00B5F9 02:95E9: 2B 96     .word _off000_962B_03
- D 0 - - - 0x00B5FB 02:95EB: 2B 96     .word _off000_962B_04
- D 0 - - - 0x00B5FD 02:95ED: 2B 96     .word _off000_962B_05
- D 0 - - - 0x00B5FF 02:95EF: 2D 96     .word _off000_962D_06
- D 0 - - - 0x00B601 02:95F1: 3F 96     .word _off000_963F_07
- D 0 - - - 0x00B603 02:95F3: 3F 96     .word _off000_963F_08
- D 0 - - - 0x00B605 02:95F5: 3F 96     .word _off000_963F_09
- - - - - - 0x00B607 02:95F7: 3F 96     .word _off000_963F_0A
- - - - - - 0x00B609 02:95F9: 2B 96     .word _off000_962B_0B
- - - - - - 0x00B60B 02:95FB: 2B 96     .word _off000_962B_0C
- - - - - - 0x00B60D 02:95FD: 5F 96     .word _off000_965F_0D
- D 0 - - - 0x00B60F 02:95FF: 5F 96     .word _off000_965F_0E
- D 0 - - - 0x00B611 02:9601: 7F 96     .word _off000_967F_0F
- - - - - - 0x00B613 02:9603: 5F 96     .word _off000_965F_10
- D 0 - - - 0x00B615 02:9605: 5F 96     .word _off000_965F_11
- D 0 - - - 0x00B617 02:9607: 7F 96     .word _off000_967F_12
- - - - - - 0x00B619 02:9609: 45 98     .word _off000_9845_13
- - - - - - 0x00B61B 02:960B: 45 98     .word _off000_9845_14
- D 0 - - - 0x00B61D 02:960D: 9F 96     .word _off000_969F_15
- D 0 - - - 0x00B61F 02:960F: C1 96     .word _off000_96C1_16
- D 0 - - - 0x00B621 02:9611: 9F 96     .word _off000_969F_17
- - - - - - 0x00B623 02:9613: 45 98     .word _off000_9845_18
- D 0 - - - 0x00B625 02:9615: E3 96     .word _off000_96E3_19
- - - - - - 0x00B627 02:9617: 45 98     .word _off000_9845_1A
- - - - - - 0x00B629 02:9619: 45 98     .word _off000_9845_1B
- - - - - - 0x00B62B 02:961B: 45 98     .word _off000_9845_1C
- - - - - - 0x00B62D 02:961D: 45 98     .word _off000_9845_1D
- - - - - - 0x00B62F 02:961F: 45 98     .word _off000_9845_1E
- - - - - - 0x00B631 02:9621: 45 98     .word _off000_9845_1F
- D 0 - - - 0x00B633 02:9623: 45 98     .word _off000_9845_20
- D 0 - - - 0x00B635 02:9625: 47 98     .word _off000_9847_21
- - - - - - 0x00B637 02:9627: 47 98     .word _off000_9847_22
- - - - - - 0x00B639 02:9629: 47 98     .word _off000_9847_23



_off000_962B_00:
; con_enemy_id_00
_off000_962B_01:
; con_enemy_id_01
_off000_962B_02:
; con_enemy_id_02
_off000_962B_03:
; con_enemy_id_03
_off000_962B_04:
; con_enemy_id_04
_off000_962B_05:
; con_enemy_id_05
_off000_962B_0B:
; con_enemy_id_0B
_off000_962B_0C:
; con_enemy_id_0C
- D 0 - I - 0x00B63B 02:962B: 2F 96     .word _off055_962F_01_00



_off000_962D_06:
; con_enemy_id_06
- D 0 - I - 0x00B63D 02:962D: 37 96     .word _off055_9637_06_00



_off055_962F_01_00:
loc_962F_01_00_loop:
- D 0 - I - 0x00B63F 02:962F: 80        .byte $80   ; 80
- D 0 - I - 0x00B640 02:9630: 58        .byte con_chr_bank_spr + $58 + $00   ; spr_A flip
- D 0 - I - 0x00B641 02:9631: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00B642 02:9632: C5 90     .word _off056_spr_data_0x00D0D5_01_00_00
- D 0 - I - 0x00B644 02:9634: 2F 96     .word loc_962F_01_00_loop
- D 0 - I - 0x00B646 02:9636: 01        .byte $01   ; 



_off055_9637_06_00:
loc_9637_06_00_loop:
- - - - - - 0x00B647 02:9637: 80        .byte $80   ; 80
- D 0 - I - 0x00B648 02:9638: 58        .byte con_chr_bank_spr + $58 + $00   ; spr_A flip
- D 0 - I - 0x00B649 02:9639: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00B64A 02:963A: CA 90     .word _off056_spr_data_0x00D0DA_06_00_00
- D 0 - I - 0x00B64C 02:963C: 37 96     .word loc_9637_06_00_loop
- D 0 - I - 0x00B64E 02:963E: 01        .byte $01   ; 



_off000_963F_07:
; con_enemy_id_07
_off000_963F_08:
; con_enemy_id_08
_off000_963F_09:
; con_enemy_id_09
_off000_963F_0A:
; con_enemy_id_0A
- - - - - - 0x00B64F 02:963F: 25 97     .word _off055_9725_07_00
- - - - - - 0x00B651 02:9641: 25 97     .word _off055_9725_07_01
- D 0 - I - 0x00B653 02:9643: 15 97     .word _off055_9715_07_02
- - - - - - 0x00B655 02:9645: 25 97     .word _off055_9725_07_03
- D 0 - I - 0x00B657 02:9647: 25 97     .word _off055_9725_07_04
- - - - - - 0x00B659 02:9649: 25 97     .word _off055_9725_07_05
- - - - - - 0x00B65B 02:964B: 25 97     .word _off055_9725_07_06
- - - - - - 0x00B65D 02:964D: 25 97     .word _off055_9725_07_07
- - - - - - 0x00B65F 02:964F: 25 97     .word _off055_9725_07_08
- - - - - - 0x00B661 02:9651: 25 97     .word _off055_9725_07_09
- - - - - - 0x00B663 02:9653: 25 97     .word _off055_9725_07_0A
- - - - - - 0x00B665 02:9655: 25 97     .word _off055_9725_07_0B
- D 0 - I - 0x00B667 02:9657: 35 97     .word _off055_9735_07_0C
- - - - - - 0x00B669 02:9659: 25 97     .word _off055_9725_07_0D
- D 0 - I - 0x00B66B 02:965B: 45 97     .word _off055_9745_07_0E
- - - - - - 0x00B66D 02:965D: 25 97     .word _off055_9725_07_0F



_off000_965F_0D:
; con_enemy_id_0D
_off000_965F_0E:
; con_enemy_id_0E
_off000_965F_10:
; con_enemy_id_10
_off000_965F_11:
; con_enemy_id_11
- D 0 - I - 0x00B66F 02:965F: 55 97     .word _off055_9755_0E_00
- D 0 - I - 0x00B671 02:9661: 65 97     .word _off055_9765_0E_01
- D 0 - I - 0x00B673 02:9663: 65 97     .word _off055_9765_0E_02
- D 0 - I - 0x00B675 02:9665: 65 97     .word _off055_9765_0E_03
- D 0 - I - 0x00B677 02:9667: 75 97     .word _off055_9775_0E_04
- D 0 - I - 0x00B679 02:9669: 85 97     .word _off055_9785_0E_05
- D 0 - I - 0x00B67B 02:966B: 85 97     .word _off055_9785_0E_06
- D 0 - I - 0x00B67D 02:966D: 85 97     .word _off055_9785_0E_07
- D 0 - I - 0x00B67F 02:966F: 95 97     .word _off055_9795_0E_08
- D 0 - I - 0x00B681 02:9671: A5 97     .word _off055_97A5_0E_09
- D 0 - I - 0x00B683 02:9673: A5 97     .word _off055_97A5_0E_0A
- D 0 - I - 0x00B685 02:9675: A5 97     .word _off055_97A5_0E_0B
- D 0 - I - 0x00B687 02:9677: B5 97     .word _off055_97B5_0E_0C
- D 0 - I - 0x00B689 02:9679: C5 97     .word _off055_97C5_0E_0D
- D 0 - I - 0x00B68B 02:967B: C5 97     .word _off055_97C5_0E_0E
- D 0 - I - 0x00B68D 02:967D: C5 97     .word _off055_97C5_0E_0F



_off000_967F_0F:
; con_enemy_id_0F
_off000_967F_12:
; con_enemy_id_12
- D 0 - I - 0x00B68F 02:967F: FD 96     .word _off055_96FD_0F_00
- D 0 - I - 0x00B691 02:9681: FD 96     .word _off055_96FD_0F_01
- D 0 - I - 0x00B693 02:9683: FD 96     .word _off055_96FD_0F_02
- D 0 - I - 0x00B695 02:9685: FD 96     .word _off055_96FD_0F_03
- D 0 - I - 0x00B697 02:9687: FD 96     .word _off055_96FD_0F_04
- D 0 - I - 0x00B699 02:9689: FD 96     .word _off055_96FD_0F_05
- D 0 - I - 0x00B69B 02:968B: FD 96     .word _off055_96FD_0F_06
- D 0 - I - 0x00B69D 02:968D: FD 96     .word _off055_96FD_0F_07
- D 0 - I - 0x00B69F 02:968F: FD 96     .word _off055_96FD_0F_08
- D 0 - I - 0x00B6A1 02:9691: FD 96     .word _off055_96FD_0F_09
- D 0 - I - 0x00B6A3 02:9693: FD 96     .word _off055_96FD_0F_0A
- D 0 - I - 0x00B6A5 02:9695: FD 96     .word _off055_96FD_0F_0B
- D 0 - I - 0x00B6A7 02:9697: FD 96     .word _off055_96FD_0F_0C
- D 0 - I - 0x00B6A9 02:9699: FD 96     .word _off055_96FD_0F_0D
- D 0 - I - 0x00B6AB 02:969B: FD 96     .word _off055_96FD_0F_0E
- D 0 - I - 0x00B6AD 02:969D: FD 96     .word _off055_96FD_0F_0F



_off000_969F_15:
; con_enemy_id_15
_off000_969F_17:
; con_enemy_id_17
- - - - - - 0x00B6AF 02:969F: D5 97     .word _off055_97D5_15_00
- - - - - - 0x00B6B1 02:96A1: D5 97     .word _off055_97D5_15_01
- D 0 - I - 0x00B6B3 02:96A3: D5 97     .word _off055_97D5_15_02
- - - - - - 0x00B6B5 02:96A5: D5 97     .word _off055_97D5_15_03
- D 0 - I - 0x00B6B7 02:96A7: DD 97     .word _off055_97DD_15_04
- - - - - - 0x00B6B9 02:96A9: E5 97     .word _off055_97E5_15_05
- - - - - - 0x00B6BB 02:96AB: D5 97     .word _off055_97D5_15_06
- - - - - - 0x00B6BD 02:96AD: D5 97     .word _off055_97D5_15_07
- - - - - - 0x00B6BF 02:96AF: D5 97     .word _off055_97D5_15_08
- - - - - - 0x00B6C1 02:96B1: D5 97     .word _off055_97D5_15_09
- - - - - - 0x00B6C3 02:96B3: D5 97     .word _off055_97D5_15_0A
- - - - - - 0x00B6C5 02:96B5: ED 97     .word _off055_97ED_15_0B
- D 0 - I - 0x00B6C7 02:96B7: F5 97     .word _off055_97F5_15_0C
- - - - - - 0x00B6C9 02:96B9: D5 97     .word _off055_97D5_15_0D
- D 0 - I - 0x00B6CB 02:96BB: FD 97     .word _off055_97FD_15_0E
- - - - - - 0x00B6CD 02:96BD: D5 97     .word _off055_97D5_15_0F
- D 0 - I - 0x00B6CF 02:96BF: 05 98     .word _off055_9805_15_10



_off000_96C1_16:
; con_enemy_id_16
- - - - - - 0x00B6D1 02:96C1: D5 97     .word _off055_97D5_16_00
- - - - - - 0x00B6D3 02:96C3: D5 97     .word _off055_97D5_16_01
- - - - - - 0x00B6D5 02:96C5: D5 97     .word _off055_97D5_16_02
- - - - - - 0x00B6D7 02:96C7: D5 97     .word _off055_97D5_16_03
- - - - - - 0x00B6D9 02:96C9: DD 97     .word _off055_97DD_16_04
- D 0 - I - 0x00B6DB 02:96CB: E5 97     .word _off055_97E5_16_05
- - - - - - 0x00B6DD 02:96CD: D5 97     .word _off055_97D5_16_06
- - - - - - 0x00B6DF 02:96CF: D5 97     .word _off055_97D5_16_07
- - - - - - 0x00B6E1 02:96D1: D5 97     .word _off055_97D5_16_08
- - - - - - 0x00B6E3 02:96D3: D5 97     .word _off055_97D5_16_09
- - - - - - 0x00B6E5 02:96D5: D5 97     .word _off055_97D5_16_0A
- - - - - - 0x00B6E7 02:96D7: ED 97     .word _off055_97ED_16_0B
- - - - - - 0x00B6E9 02:96D9: F5 97     .word _off055_97F5_16_0C
- - - - - - 0x00B6EB 02:96DB: D5 97     .word _off055_97D5_16_0D
- - - - - - 0x00B6ED 02:96DD: FD 97     .word _off055_97FD_16_0E
- - - - - - 0x00B6EF 02:96DF: D5 97     .word _off055_97D5_16_0F
- D 0 - I - 0x00B6F1 02:96E1: 1D 98     .word _off055_981D_16_10



_off000_96E3_19:
; con_enemy_id_19
- - - - - - 0x00B6F3 02:96E3: 35 98     .word _off055_9835_19_00
- - - - - - 0x00B6F5 02:96E5: 35 98     .word _off055_9835_19_01
- - - - - - 0x00B6F7 02:96E7: 35 98     .word _off055_9835_19_02
- - - - - - 0x00B6F9 02:96E9: 35 98     .word _off055_9835_19_03
- D 0 - I - 0x00B6FB 02:96EB: 35 98     .word _off055_9835_19_04
- - - - - - 0x00B6FD 02:96ED: 35 98     .word _off055_9835_19_05
- - - - - - 0x00B6FF 02:96EF: 35 98     .word _off055_9835_19_06
- - - - - - 0x00B701 02:96F1: 35 98     .word _off055_9835_19_07
- - - - - - 0x00B703 02:96F3: 35 98     .word _off055_9835_19_08
- - - - - - 0x00B705 02:96F5: 35 98     .word _off055_9835_19_09
- - - - - - 0x00B707 02:96F7: 35 98     .word _off055_9835_19_0A
- - - - - - 0x00B709 02:96F9: 35 98     .word _off055_9835_19_0B
- D 0 - I - 0x00B70B 02:96FB: 3D 98     .word _off055_983D_19_0C



_off055_96FD_0F_00:
_off055_96FD_0F_01:
_off055_96FD_0F_02:
_off055_96FD_0F_03:
_off055_96FD_0F_04:
_off055_96FD_0F_05:
_off055_96FD_0F_06:
_off055_96FD_0F_07:
_off055_96FD_0F_08:
_off055_96FD_0F_09:
_off055_96FD_0F_0A:
_off055_96FD_0F_0B:
_off055_96FD_0F_0C:
_off055_96FD_0F_0D:
_off055_96FD_0F_0E:
_off055_96FD_0F_0F:
loc_96FD_0F_00_loop:
- D 0 - I - 0x00B70D 02:96FD: 5B        .byte con_chr_bank_spr + $5B   ; 
- D 0 - I - 0x00B70E 02:96FE: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00B70F 02:96FF: 02        .byte $02   ; next animation delay
- D 0 - I - 0x00B710 02:9700: CF 90     .word _off056_spr_data_0x00D0DF_0F_00_00
- D 0 - I - 0x00B712 02:9702: 05 97     .word loc_9705_0F_00_next
- D 0 - I - 0x00B714 02:9704: 01        .byte $01   ; 



loc_9705_0F_00_next:
- D 0 - I - 0x00B715 02:9705: 5B        .byte con_chr_bank_spr + $5B   ; 
- D 0 - I - 0x00B716 02:9706: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00B717 02:9707: 02        .byte $02   ; next animation delay
- D 0 - I - 0x00B718 02:9708: D4 90     .word _off056_spr_data_0x00D0E4_0F_00_01
- D 0 - I - 0x00B71A 02:970A: 0D 97     .word loc_970D_0F_00_next
- D 0 - I - 0x00B71C 02:970C: 01        .byte $01   ; 



loc_970D_0F_00_next:
- D 0 - I - 0x00B71D 02:970D: 5B        .byte con_chr_bank_spr + $5B   ; 
- D 0 - I - 0x00B71E 02:970E: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00B71F 02:970F: 02        .byte $02   ; next animation delay
- D 0 - I - 0x00B720 02:9710: D9 90     .word _off056_spr_data_0x00D0E9_0F_00_02
- D 0 - I - 0x00B722 02:9712: FD 96     .word loc_96FD_0F_00_loop
- D 0 - I - 0x00B724 02:9714: 01        .byte $01   ; 



_off055_9715_07_02:
loc_9715_07_02_loop:
- D 0 - I - 0x00B725 02:9715: 59        .byte con_chr_bank_spr + $59   ; 
- D 0 - I - 0x00B726 02:9716: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00B727 02:9717: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00B728 02:9718: DE 90     .word _off056_spr_data_0x00D0EE_07_02_00
- D 0 - I - 0x00B72A 02:971A: 1D 97     .word loc_971D_07_02_next
- D 0 - I - 0x00B72C 02:971C: 01        .byte $01   ; 



loc_971D_07_02_next:
- D 0 - I - 0x00B72D 02:971D: 59        .byte con_chr_bank_spr + $59   ; 
- D 0 - I - 0x00B72E 02:971E: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00B72F 02:971F: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00B730 02:9720: E6 90     .word _off056_spr_data_0x00D0F6_07_02_01
- D 0 - I - 0x00B732 02:9722: 15 97     .word loc_9715_07_02_loop
- D 0 - I - 0x00B734 02:9724: 01        .byte $01   ; 



_off055_9725_07_00:
_off055_9725_07_01:
_off055_9725_07_03:
_off055_9725_07_04:
_off055_9725_07_05:
_off055_9725_07_06:
_off055_9725_07_07:
_off055_9725_07_08:
_off055_9725_07_09:
_off055_9725_07_0A:
_off055_9725_07_0B:
_off055_9725_07_0D:
_off055_9725_07_0F:
loc_9725_07_04_loop:
- D 0 - I - 0x00B735 02:9725: 59        .byte con_chr_bank_spr + $59   ; 
- D 0 - I - 0x00B736 02:9726: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00B737 02:9727: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00B738 02:9728: EE 90     .word _off056_spr_data_0x00D0FE_07_04_00
- D 0 - I - 0x00B73A 02:972A: 2D 97     .word loc_972D_07_04_next
- D 0 - I - 0x00B73C 02:972C: 01        .byte $01   ; 



loc_972D_07_04_next:
- D 0 - I - 0x00B73D 02:972D: 59        .byte con_chr_bank_spr + $59   ; 
- D 0 - I - 0x00B73E 02:972E: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00B73F 02:972F: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00B740 02:9730: F6 90     .word _off056_spr_data_0x00D106_07_04_00
- D 0 - I - 0x00B742 02:9732: 25 97     .word loc_9725_07_04_loop
- D 0 - I - 0x00B744 02:9734: 01        .byte $01   ; 



_off055_9735_07_0C:
loc_9735_07_0C_loop:
- D 0 - I - 0x00B745 02:9735: 59        .byte con_chr_bank_spr + $59   ; 
- D 0 - I - 0x00B746 02:9736: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00B747 02:9737: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00B748 02:9738: EE 90     .word _off056_spr_data_0x00D0FE_07_0C_00
- D 0 - I - 0x00B74A 02:973A: 3D 97     .word loc_973D_07_0C_next
- D 0 - I - 0x00B74C 02:973C: 01        .byte $01   ; 



loc_973D_07_0C_next:
- D 0 - I - 0x00B74D 02:973D: 59        .byte con_chr_bank_spr + $59   ; 
- D 0 - I - 0x00B74E 02:973E: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00B74F 02:973F: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00B750 02:9740: F6 90     .word _off056_spr_data_0x00D106_07_0C_01
- D 0 - I - 0x00B752 02:9742: 35 97     .word loc_9735_07_0C_loop
- D 0 - I - 0x00B754 02:9744: 01        .byte $01   ; 



_off055_9745_07_0E:
loc_9745_07_0E_loop:
- D 0 - I - 0x00B755 02:9745: 59        .byte con_chr_bank_spr + $59   ; 
- D 0 - I - 0x00B756 02:9746: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00B757 02:9747: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00B758 02:9748: DE 90     .word _off056_spr_data_0x00D0EE_07_0E_00
- D 0 - I - 0x00B75A 02:974A: 4D 97     .word loc_974D_07_0E_next
- D 0 - I - 0x00B75C 02:974C: 01        .byte $01   ; 



loc_974D_07_0E_next:
- D 0 - I - 0x00B75D 02:974D: 59        .byte con_chr_bank_spr + $59   ; 
- D 0 - I - 0x00B75E 02:974E: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00B75F 02:974F: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00B760 02:9750: E6 90     .word _off056_spr_data_0x00D0F6_07_0E_01
- D 0 - I - 0x00B762 02:9752: 45 97     .word loc_9745_07_0E_loop
- D 0 - I - 0x00B764 02:9754: 01        .byte $01   ; 



_off055_9755_0E_00:
loc_9755_0E_00_loop:
- D 0 - I - 0x00B765 02:9755: 66        .byte con_chr_bank_spr + $66   ; 
- D 0 - I - 0x00B766 02:9756: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00B767 02:9757: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00B768 02:9758: FE 90     .word _off056_spr_data_0x00D10E_0E_00_00
- D 0 - I - 0x00B76A 02:975A: 5D 97     .word loc_975D_0E_00_next
- D 0 - I - 0x00B76C 02:975C: 01        .byte $01   ; 



loc_975D_0E_00_next:
- D 0 - I - 0x00B76D 02:975D: 66        .byte con_chr_bank_spr + $66   ; 
- D 0 - I - 0x00B76E 02:975E: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00B76F 02:975F: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00B770 02:9760: 03 91     .word _off056_spr_data_0x00D113_0E_00_01
- D 0 - I - 0x00B772 02:9762: 55 97     .word loc_9755_0E_00_loop
- D 0 - I - 0x00B774 02:9764: 01        .byte $01   ; 



_off055_9765_0E_01:
_off055_9765_0E_02:
_off055_9765_0E_03:
loc_9765_0E_01_loop:
- D 0 - I - 0x00B775 02:9765: 66        .byte con_chr_bank_spr + $66   ; 
- D 0 - I - 0x00B776 02:9766: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00B777 02:9767: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00B778 02:9768: 0B 91     .word _off056_spr_data_0x00D11B_0E_01_00
- D 0 - I - 0x00B77A 02:976A: 6D 97     .word loc_976D_0E_01_next
- D 0 - I - 0x00B77C 02:976C: 01        .byte $01   ; 



loc_976D_0E_01_next:
- D 0 - I - 0x00B77D 02:976D: 66        .byte con_chr_bank_spr + $66   ; 
- D 0 - I - 0x00B77E 02:976E: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00B77F 02:976F: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00B780 02:9770: 10 91     .word _off056_spr_data_0x00D120_0E_01_01
- D 0 - I - 0x00B782 02:9772: 65 97     .word loc_9765_0E_01_loop
- D 0 - I - 0x00B784 02:9774: 01        .byte $01   ; 



_off055_9775_0E_04:
loc_9775_0E_04_loop:
- D 0 - I - 0x00B785 02:9775: 66        .byte con_chr_bank_spr + $66   ; 
- D 0 - I - 0x00B786 02:9776: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00B787 02:9777: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00B788 02:9778: 18 91     .word _off056_spr_data_0x00D128_0E_04_00
- D 0 - I - 0x00B78A 02:977A: 7D 97     .word loc_977D_0E_04
- D 0 - I - 0x00B78C 02:977C: 01        .byte $01   ; 



loc_977D_0E_04:
- D 0 - I - 0x00B78D 02:977D: 66        .byte con_chr_bank_spr + $66   ; 
- D 0 - I - 0x00B78E 02:977E: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00B78F 02:977F: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00B790 02:9780: 1D 91     .word _off056_spr_data_0x00D12D_0E_04_01
- D 0 - I - 0x00B792 02:9782: 75 97     .word loc_9775_0E_04_loop
- D 0 - I - 0x00B794 02:9784: 01        .byte $01   ; 



_off055_9785_0E_05:
_off055_9785_0E_06:
_off055_9785_0E_07:
loc_9785_0E_05_loop:
- D 0 - I - 0x00B795 02:9785: 66        .byte con_chr_bank_spr + $66   ; 
- D 0 - I - 0x00B796 02:9786: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00B797 02:9787: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00B798 02:9788: 25 91     .word _off056_spr_data_0x00D135_0E_05_00
- D 0 - I - 0x00B79A 02:978A: 8D 97     .word loc_978D_0E_05_next
- D 0 - I - 0x00B79C 02:978C: 01        .byte $01   ; 



loc_978D_0E_05_next:
- D 0 - I - 0x00B79D 02:978D: 66        .byte con_chr_bank_spr + $66   ; 
- D 0 - I - 0x00B79E 02:978E: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00B79F 02:978F: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00B7A0 02:9790: 2A 91     .word _off056_spr_data_0x00D13A_0E_05_01
- D 0 - I - 0x00B7A2 02:9792: 85 97     .word loc_9785_0E_05_loop
- D 0 - I - 0x00B7A4 02:9794: 01        .byte $01   ; 



_off055_9795_0E_08:
loc_9795_0E_08_loop:
- D 0 - I - 0x00B7A5 02:9795: 66        .byte con_chr_bank_spr + $66   ; 
- D 0 - I - 0x00B7A6 02:9796: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00B7A7 02:9797: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00B7A8 02:9798: 32 91     .word _off056_spr_data_0x00D142_0E_08_00
- D 0 - I - 0x00B7AA 02:979A: 9D 97     .word loc_979D_0E_08_next
- D 0 - I - 0x00B7AC 02:979C: 01        .byte $01   ; 



loc_979D_0E_08_next:
- D 0 - I - 0x00B7AD 02:979D: 66        .byte con_chr_bank_spr + $66   ; 
- D 0 - I - 0x00B7AE 02:979E: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00B7AF 02:979F: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00B7B0 02:97A0: 37 91     .word _off056_spr_data_0x00D147_0E_08_01
- D 0 - I - 0x00B7B2 02:97A2: 95 97     .word loc_9795_0E_08_loop
- D 0 - I - 0x00B7B4 02:97A4: 01        .byte $01   ; 



_off055_97A5_0E_09:
_off055_97A5_0E_0A:
_off055_97A5_0E_0B:
loc_97A5_0E_09_loop:
- D 0 - I - 0x00B7B5 02:97A5: 66        .byte con_chr_bank_spr + $66   ; 
- D 0 - I - 0x00B7B6 02:97A6: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00B7B7 02:97A7: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00B7B8 02:97A8: 25 91     .word _off056_spr_data_0x00D135_0E_09_00
- D 0 - I - 0x00B7BA 02:97AA: AD 97     .word loc_97AD_0E_09_next
- D 0 - I - 0x00B7BC 02:97AC: 01        .byte $01   ; 



loc_97AD_0E_09_next:
- D 0 - I - 0x00B7BD 02:97AD: 66        .byte con_chr_bank_spr + $66   ; 
- D 0 - I - 0x00B7BE 02:97AE: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00B7BF 02:97AF: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00B7C0 02:97B0: 2A 91     .word _off056_spr_data_0x00D13A_0E_09_01
- D 0 - I - 0x00B7C2 02:97B2: A5 97     .word loc_97A5_0E_09_loop
- D 0 - I - 0x00B7C4 02:97B4: 01        .byte $01   ; 



_off055_97B5_0E_0C:
loc_97B5_0E_0C_loop:
- D 0 - I - 0x00B7C5 02:97B5: 66        .byte con_chr_bank_spr + $66   ; 
- D 0 - I - 0x00B7C6 02:97B6: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00B7C7 02:97B7: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00B7C8 02:97B8: 18 91     .word _off056_spr_data_0x00D128_0E_0C_00
- D 0 - I - 0x00B7CA 02:97BA: BD 97     .word loc_97BD_0E_0C_next
- D 0 - I - 0x00B7CC 02:97BC: 01        .byte $01   ; 



loc_97BD_0E_0C_next:
- D 0 - I - 0x00B7CD 02:97BD: 66        .byte con_chr_bank_spr + $66   ; 
- D 0 - I - 0x00B7CE 02:97BE: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00B7CF 02:97BF: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00B7D0 02:97C0: 1D 91     .word _off056_spr_data_0x00D12D_0E_0C_01
- D 0 - I - 0x00B7D2 02:97C2: B5 97     .word loc_97B5_0E_0C_loop
- D 0 - I - 0x00B7D4 02:97C4: 01        .byte $01   ; 



_off055_97C5_0E_0D:
_off055_97C5_0E_0E:
_off055_97C5_0E_0F:
loc_97C5_0E_0D_loop:
- D 0 - I - 0x00B7D5 02:97C5: 66        .byte con_chr_bank_spr + $66   ; 
- D 0 - I - 0x00B7D6 02:97C6: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00B7D7 02:97C7: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00B7D8 02:97C8: 0B 91     .word _off056_spr_data_0x00D11B_0E_0D_00
- D 0 - I - 0x00B7DA 02:97CA: CD 97     .word loc_97CD_0E_0D_next
- D 0 - I - 0x00B7DC 02:97CC: 01        .byte $01   ; 



loc_97CD_0E_0D_next:
- D 0 - I - 0x00B7DD 02:97CD: 66        .byte con_chr_bank_spr + $66   ; 
- D 0 - I - 0x00B7DE 02:97CE: 80        .byte $80   ; spr_A flip
- D 0 - I - 0x00B7DF 02:97CF: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00B7E0 02:97D0: 10 91     .word _off056_spr_data_0x00D120_0E_0D_01
- D 0 - I - 0x00B7E2 02:97D2: C5 97     .word loc_97C5_0E_0D_loop
- D 0 - I - 0x00B7E4 02:97D4: 01        .byte $01   ; 



_off055_97D5_15_00:
_off055_97D5_15_01:
_off055_97D5_15_02:
_off055_97D5_15_03:
_off055_97D5_15_06:
_off055_97D5_15_07:
_off055_97D5_15_08:
_off055_97D5_15_09:
_off055_97D5_15_0A:
_off055_97D5_15_0D:
_off055_97D5_15_0F:
_off055_97D5_16_00:
_off055_97D5_16_01:
_off055_97D5_16_02:
_off055_97D5_16_03:
_off055_97D5_16_06:
_off055_97D5_16_07:
_off055_97D5_16_08:
_off055_97D5_16_09:
_off055_97D5_16_0A:
_off055_97D5_16_0D:
_off055_97D5_16_0F:
loc_97D5_15_02_loop:
- D 0 - I - 0x00B7E5 02:97D5: 80        .byte $80   ; 80
- D 0 - I - 0x00B7E6 02:97D6: 65        .byte con_chr_bank_spr + $65 + $00   ; spr_A flip
- D 0 - I - 0x00B7E7 02:97D7: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00B7E8 02:97D8: 5F 91     .word _off056_spr_data_0x00D16F_15_02_00
- D 0 - I - 0x00B7EA 02:97DA: D5 97     .word loc_97D5_15_02_loop
- D 0 - I - 0x00B7EC 02:97DC: 01        .byte $01   ; 



_off055_97DD_15_04:
_off055_97DD_16_04:
loc_97DD_15_04_loop:
- D 0 - I - 0x00B7ED 02:97DD: 80        .byte $80   ; 80
- D 0 - I - 0x00B7EE 02:97DE: 65        .byte con_chr_bank_spr + $65 + $00   ; spr_A flip
- D 0 - I - 0x00B7EF 02:97DF: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00B7F0 02:97E0: 3F 91     .word _off056_spr_data_0x00D14F_15_04_00
- D 0 - I - 0x00B7F2 02:97E2: DD 97     .word loc_97DD_15_04_loop
- D 0 - I - 0x00B7F4 02:97E4: 01        .byte $01   ; 



_off055_97E5_15_05:
_off055_97E5_16_05:
loc_97E5_16_05_loop:
- D 0 - I - 0x00B7F5 02:97E5: 80        .byte $80   ; 80
- D 0 - I - 0x00B7F6 02:97E6: 65        .byte con_chr_bank_spr + $65 + $00   ; spr_A flip
- D 0 - I - 0x00B7F7 02:97E7: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00B7F8 02:97E8: 6A 91     .word _off056_spr_data_0x00D17A_16_05_00
- D 0 - I - 0x00B7FA 02:97EA: E5 97     .word loc_97E5_16_05_loop
- D 0 - I - 0x00B7FC 02:97EC: 01        .byte $01   ; 



_off055_97ED_15_0B:
_off055_97ED_16_0B:
loc_97ED_15_0B_loop:
- - - - - - 0x00B7FD 02:97ED: 80        .byte $80   ; 80
- - - - - - 0x00B7FE 02:97EE: E5        .byte con_chr_bank_spr + $65 + $80   ; spr_A flip
- - - - - - 0x00B7FF 02:97EF: 08        .byte $08   ; next animation delay
- - - - - - 0x00B800 02:97F0: 6A 91     .word _off056_spr_data_0x00D17A_15_0B_00
- - - - - - 0x00B802 02:97F2: ED 97     .word loc_97ED_15_0B_loop
- - - - - - 0x00B804 02:97F4: 01        .byte $01   ; 



_off055_97F5_15_0C:
_off055_97F5_16_0C:
loc_97F5_15_0C_loop:
- D 0 - I - 0x00B805 02:97F5: 80        .byte $80   ; 80
- D 0 - I - 0x00B806 02:97F6: E5        .byte con_chr_bank_spr + $65 + $80   ; spr_A flip
- D 0 - I - 0x00B807 02:97F7: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00B808 02:97F8: 3F 91     .word _off056_spr_data_0x00D14F_15_0C_00
- D 0 - I - 0x00B80A 02:97FA: F5 97     .word loc_97F5_15_0C_loop
- D 0 - I - 0x00B80C 02:97FC: 01        .byte $01   ; 



_off055_97FD_15_0E:
_off055_97FD_16_0E:
loc_97FD_15_0E_loop:
- D 0 - I - 0x00B80D 02:97FD: 80        .byte $80   ; 80
- D 0 - I - 0x00B80E 02:97FE: E5        .byte con_chr_bank_spr + $65 + $80   ; spr_A flip
- D 0 - I - 0x00B80F 02:97FF: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00B810 02:9800: 5F 91     .word _off056_spr_data_0x00D16F_15_0E_00
- D 0 - I - 0x00B812 02:9802: FD 97     .word loc_97FD_15_0E_loop
- D 0 - I - 0x00B814 02:9804: 01        .byte $01   ; 



_off055_9805_15_10:
loc_9805_15_10_loop:
- D 0 - I - 0x00B815 02:9805: 80        .byte $80   ; 80
- D 0 - I - 0x00B816 02:9806: 65        .byte con_chr_bank_spr + $65 + $00   ; spr_A flip
- D 0 - I - 0x00B817 02:9807: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00B818 02:9808: 4A 91     .word _off056_spr_data_0x00D15A_15_10_00
- D 0 - I - 0x00B81A 02:980A: 0D 98     .word loc_980D_15_10_next
- D 0 - I - 0x00B81C 02:980C: 01        .byte $01   ; 



loc_980D_15_10_next:
- D 0 - I - 0x00B81D 02:980D: 80        .byte $80   ; 80
- D 0 - I - 0x00B81E 02:980E: 65        .byte con_chr_bank_spr + $65 + $00   ; spr_A flip
- D 0 - I - 0x00B81F 02:980F: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00B820 02:9810: 4F 91     .word _off056_spr_data_0x00D15F_15_10_01
- D 0 - I - 0x00B822 02:9812: 15 98     .word loc_9815_15_10_next
- D 0 - I - 0x00B824 02:9814: 01        .byte $01   ; 



loc_9815_15_10_next:
- D 0 - I - 0x00B825 02:9815: 80        .byte $80   ; 80
- D 0 - I - 0x00B826 02:9816: 65        .byte con_chr_bank_spr + $65 + $00   ; spr_A flip
- D 0 - I - 0x00B827 02:9817: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00B828 02:9818: 57 91     .word _off056_spr_data_0x00D167_15_10_02
- D 0 - I - 0x00B82A 02:981A: 05 98     .word loc_9805_15_10_loop
- D 0 - I - 0x00B82C 02:981C: 01        .byte $01   ; 



_off055_981D_16_10:
loc_981D_16_10_loop:
- D 0 - I - 0x00B82D 02:981D: 80        .byte $80   ; 80
- D 0 - I - 0x00B82E 02:981E: 65        .byte con_chr_bank_spr + $65 + $00   ; spr_A flip
- D 0 - I - 0x00B82F 02:981F: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00B830 02:9820: 75 91     .word _off056_spr_data_0x00D185_16_10_00
- D 0 - I - 0x00B832 02:9822: 25 98     .word loc_9825_16_10_next
- D 0 - I - 0x00B834 02:9824: 01        .byte $01   ; 



loc_9825_16_10_next:
- D 0 - I - 0x00B835 02:9825: 80        .byte $80   ; 80
- D 0 - I - 0x00B836 02:9826: 65        .byte con_chr_bank_spr + $65 + $00   ; spr_A flip
- D 0 - I - 0x00B837 02:9827: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00B838 02:9828: 7D 91     .word _off056_spr_data_0x00D18D_16_10_01
- D 0 - I - 0x00B83A 02:982A: 2D 98     .word loc_982D_16_10_next
- D 0 - I - 0x00B83C 02:982C: 01        .byte $01   ; 



loc_982D_16_10_next:
- D 0 - I - 0x00B83D 02:982D: 80        .byte $80   ; 80
- D 0 - I - 0x00B83E 02:982E: 65        .byte con_chr_bank_spr + $65 + $00   ; spr_A flip
- D 0 - I - 0x00B83F 02:982F: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00B840 02:9830: 85 91     .word _off056_spr_data_0x00D195_16_10_02
- D 0 - I - 0x00B842 02:9832: 1D 98     .word loc_981D_16_10_loop
- D 0 - I - 0x00B844 02:9834: 01        .byte $01   ; 



_off055_9835_19_00:
_off055_9835_19_01:
_off055_9835_19_02:
_off055_9835_19_03:
_off055_9835_19_04:
_off055_9835_19_05:
_off055_9835_19_06:
_off055_9835_19_07:
_off055_9835_19_08:
_off055_9835_19_09:
_off055_9835_19_0A:
_off055_9835_19_0B:
loc_9835_19_04_loop:
- D 0 - I - 0x00B845 02:9835: 80        .byte $80   ; 80
- D 0 - I - 0x00B846 02:9836: 60        .byte con_chr_bank_spr + $60 + $00   ; spr_A flip
- D 0 - I - 0x00B847 02:9837: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00B848 02:9838: 8D 91     .word _off056_spr_data_0x00D19D_19_04_00
- D 0 - I - 0x00B84A 02:983A: 35 98     .word loc_9835_19_04_loop
- D 0 - I - 0x00B84C 02:983C: 01        .byte $01   ; 



_off055_983D_19_0C:
loc_983D_19_0C_loop:
- D 0 - I - 0x00B84D 02:983D: 80        .byte $80   ; 80
- D 0 - I - 0x00B84E 02:983E: E0        .byte con_chr_bank_spr + $60 + $80   ; spr_A flip
- D 0 - I - 0x00B84F 02:983F: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00B850 02:9840: 8D 91     .word _off056_spr_data_0x00D19D_19_0C_00
- D 0 - I - 0x00B852 02:9842: 3D 98     .word loc_983D_19_0C_loop
- D 0 - I - 0x00B854 02:9844: 01        .byte $01   ; 



_off000_9845_13:
; con_enemy_id_13
_off000_9845_14:
; con_enemy_id_14
_off000_9845_18:
; con_enemy_id_18
_off000_9845_1A:
; con_enemy_id_1A
_off000_9845_1B:
; con_enemy_id_1B
_off000_9845_1C:
; con_enemy_id_1C
_off000_9845_1D:
; con_enemy_id_1D
_off000_9845_1E:
; con_enemy_id_1E
_off000_9845_1F:
; con_enemy_id_1F
_off000_9845_20:
; con_enemy_id_20
- D 0 - I - 0x00B855 02:9845: 49 98     .word _off055_9849_20_00



_off000_9847_21:
; con_enemy_id_21
_off000_9847_22:
; con_enemy_id_22
_off000_9847_23:
; con_enemy_id_23
- D 0 - I - 0x00B857 02:9847: 69 98     .word _off055_9869_21_00



_off055_9849_20_00:
- D 0 - I - 0x00B859 02:9849: 77        .byte con_chr_bank_spr + $77   ; 
- - - - - - 0x00B85A 02:984A: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00B85B 02:984B: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00B85C 02:984C: 95 91     .word _off056_spr_data_0x00D1A5_20_00_00
- D 0 - I - 0x00B85E 02:984E: 51 98     .word loc_9851_20_00_next
- D 0 - I - 0x00B860 02:9850: 00        .byte $00   ; 



loc_9851_20_00_next:
- D 0 - I - 0x00B861 02:9851: 77        .byte con_chr_bank_spr + $77   ; 
- D 0 - I - 0x00B862 02:9852: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00B863 02:9853: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00B864 02:9854: 9A 91     .word _off056_spr_data_0x00D1AA_20_00_01
- D 0 - I - 0x00B866 02:9856: 59 98     .word loc_9859_20_00_next
- D 0 - I - 0x00B868 02:9858: 00        .byte $00   ; 



loc_9859_20_00_next:
loc_9859_20_00_loop:
- D 0 - I - 0x00B869 02:9859: 77        .byte con_chr_bank_spr + $77   ; 
- D 0 - I - 0x00B86A 02:985A: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00B86B 02:985B: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00B86C 02:985C: A8 91     .word _off056_spr_data_0x00D1B8_20_00_02
- D 0 - I - 0x00B86E 02:985E: 61 98     .word loc_9861_20_00_next
- D 0 - I - 0x00B870 02:9860: 00        .byte $00   ; 



loc_9861_20_00_next:
- D 0 - I - 0x00B871 02:9861: 77        .byte con_chr_bank_spr + $77   ; 
- D 0 - I - 0x00B872 02:9862: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00B873 02:9863: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00B874 02:9864: C8 91     .word _off056_spr_data_0x00D1D8_20_00_03
- D 0 - I - 0x00B876 02:9866: 59 98     .word loc_9859_20_00_loop
- D 0 - I - 0x00B878 02:9868: 00        .byte $00   ; 



_off055_9869_21_00:
loc_9869_21_00_loop:
- D 0 - I - 0x00B879 02:9869: 77        .byte con_chr_bank_spr + $77   ; 
- D 0 - I - 0x00B87A 02:986A: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00B87B 02:986B: 08        .byte $08   ; next animation delay
- D 0 - I - 0x00B87C 02:986C: E8 91     .word _off056_spr_data_0x00D1F8_21_00_00
- D 0 - I - 0x00B87E 02:986E: 69 98     .word loc_9869_21_00_loop
- D 0 - I - 0x00B880 02:9870: 00        .byte $00   ; 



tbl_0x00B881_drop_items_data:
- D 0 - I - 0x00B881 02:9871: 85 98     .word _off031_drop_9885_00_small_crystal
- D 0 - I - 0x00B883 02:9873: 85 98     .word _off031_drop_9885_01_small_crystal
- D 0 - I - 0x00B885 02:9875: 95 98     .word _off031_drop_9895_02_big_crystal
- D 0 - I - 0x00B887 02:9877: A5 98     .word _off031_drop_98A5_03_exit
- D 0 - I - 0x00B889 02:9879: B5 98     .word _off031_drop_98B5_04_5_stars
- - - - - - 0x00B88B 02:987B: A5 98     .word _off031_drop_98A5_05 ; unused, index doesn't exist
- D 0 - I - 0x00B88D 02:987D: BD 98     .word _off031_drop_98BD_06_small_heart
- D 0 - I - 0x00B88F 02:987F: C5 98     .word _off031_drop_98C5_07_big_heart
- D 0 - I - 0x00B891 02:9881: CD 98     .word _off031_drop_98CD_08_continue
- D 0 - I - 0x00B893 02:9883: D5 98     .word _off031_drop_98D5_09_resque



_off031_drop_9885_00_small_crystal:
; con_drop_small_crystal_1
_off031_drop_9885_01_small_crystal:
; con_drop_small_crystal_2
loc_9885_loop:
- - - - - - 0x00B895 02:9885: 55        .byte con_chr_bank_spr + $55   ; unused
- D 0 - I - 0x00B896 02:9886: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00B897 02:9887: 02        .byte $02   ; next animation delay
- D 0 - I - 0x00B898 02:9888: ED 91     .word off_0x00D1FD_spr_data_00_00_small_crystal_1
- D 0 - I - 0x00B89A 02:988A: 8D 98     .word loc_988D_next
- D 0 - I - 0x00B89C 02:988C: 02        .byte $02   ; useless



loc_988D_next:
- - - - - - 0x00B89D 02:988D: 55        .byte con_chr_bank_spr + $55   ; unused
- D 0 - I - 0x00B89E 02:988E: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00B89F 02:988F: 02        .byte $02   ; next animation delay
- D 0 - I - 0x00B8A0 02:9890: F2 91     .word off_0x00D202_spr_data_00_01_small_crystal_2
- D 0 - I - 0x00B8A2 02:9892: 85 98     .word loc_9885_loop
- D 0 - I - 0x00B8A4 02:9894: 02        .byte $02   ; useless



_off031_drop_9895_02_big_crystal:
; con_drop_big_crystal
loc_9895_loop:
- - - - - - 0x00B8A5 02:9895: 55        .byte con_chr_bank_spr + $55   ; unused
- D 0 - I - 0x00B8A6 02:9896: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00B8A7 02:9897: 02        .byte $02   ; next animation delay
- D 0 - I - 0x00B8A8 02:9898: F7 91     .word off_0x00D207_spr_data_02_00_big_crystal_1
- D 0 - I - 0x00B8AA 02:989A: 9D 98     .word loc_989D_next
- D 0 - I - 0x00B8AC 02:989C: 02        .byte $02   ; useless



loc_989D_next:
- - - - - - 0x00B8AD 02:989D: 55        .byte con_chr_bank_spr + $55   ; unused
- D 0 - I - 0x00B8AE 02:989E: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00B8AF 02:989F: 02        .byte $02   ; next animation delay
- D 0 - I - 0x00B8B0 02:98A0: FF 91     .word off_0x00D20F_spr_data_02_01_big_crystal_2
- D 0 - I - 0x00B8B2 02:98A2: 95 98     .word loc_9895_loop
- D 0 - I - 0x00B8B4 02:98A4: 02        .byte $02   ; useless



_off031_drop_98A5_03_exit:
; con_drop_exit
_off031_drop_98A5_05:
; con_drop_05
loc_98A5_loop:
- - - - - - 0x00B8B5 02:98A5: 55        .byte con_chr_bank_spr + $55   ; unused
- D 0 - I - 0x00B8B6 02:98A6: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00B8B7 02:98A7: 02        .byte $02   ; next animation delay
- D 0 - I - 0x00B8B8 02:98A8: 07 92     .word off_0x00D217_spr_data_03_00_exit_item_1
- D 0 - I - 0x00B8BA 02:98AA: AD 98     .word loc_98AD_next
- D 0 - I - 0x00B8BC 02:98AC: 02        .byte $02   ; useless



loc_98AD_next:
- - - - - - 0x00B8BD 02:98AD: 55        .byte con_chr_bank_spr + $55   ; unused
- D 0 - I - 0x00B8BE 02:98AE: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00B8BF 02:98AF: 02        .byte $02   ; next animation delay
- D 0 - I - 0x00B8C0 02:98B0: 0F 92     .word off_0x00D21F_spr_data_03_01_exit_item_2
- D 0 - I - 0x00B8C2 02:98B2: A5 98     .word loc_98A5_loop
- D 0 - I - 0x00B8C4 02:98B4: 02        .byte $02   ; useless



_off031_drop_98B5_04_5_stars:
; con_drop_5_stars
loc_98B5_loop:
- - - - - - 0x00B8C5 02:98B5: 55        .byte con_chr_bank_spr + $55   ; unused
- D 0 - I - 0x00B8C6 02:98B6: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00B8C7 02:98B7: 0F        .byte $0F   ; next animation delay
- D 0 - I - 0x00B8C8 02:98B8: 17 92     .word off_0x00D21F_spr_data_04_00
- D 0 - I - 0x00B8CA 02:98BA: B5 98     .word loc_98B5_loop
- D 0 - I - 0x00B8CC 02:98BC: 02        .byte $02   ; useless



_off031_drop_98BD_06_small_heart:
; con_drop_small_heart
loc_98BD_loop:
- - - - - - 0x00B8CD 02:98BD: 55        .byte con_chr_bank_spr + $55   ; unused
- D 0 - I - 0x00B8CE 02:98BE: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00B8CF 02:98BF: 02        .byte $02   ; next animation delay
- D 0 - I - 0x00B8D0 02:98C0: 1C 92     .word off_0x00D22C_spr_data_06_00
- D 0 - I - 0x00B8D2 02:98C2: BD 98     .word loc_98BD_loop
- D 0 - I - 0x00B8D4 02:98C4: 02        .byte $02   ; useless



_off031_drop_98C5_07_big_heart:
; con_drop_big_heart
loc_98C5_loop:
- - - - - - 0x00B8D5 02:98C5: 55        .byte con_chr_bank_spr + $55   ; unused
- D 0 - I - 0x00B8D6 02:98C6: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00B8D7 02:98C7: 02        .byte $02   ; next animation delay
- D 0 - I - 0x00B8D8 02:98C8: 21 92     .word off_0x00D231_spr_data_07_00
- D 0 - I - 0x00B8DA 02:98CA: C5 98     .word loc_98C5_loop
- D 0 - I - 0x00B8DC 02:98CC: 02        .byte $02   ; useless



_off031_drop_98CD_08_continue:
; con_drop_continue
loc_98CD_loop:
- - - - - - 0x00B8DD 02:98CD: 55        .byte con_chr_bank_spr + $55   ; unused
- D 0 - I - 0x00B8DE 02:98CE: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00B8DF 02:98CF: 02        .byte $02   ; next animation delay
- D 0 - I - 0x00B8E0 02:98D0: 26 92     .word off_0x00D236_spr_data_08_00
- D 0 - I - 0x00B8E2 02:98D2: CD 98     .word loc_98CD_loop
- D 0 - I - 0x00B8E4 02:98D4: 02        .byte $02   ; useless



_off031_drop_98D5_09_resque:
; con_drop_resque
loc_98D5_loop:
- - - - - - 0x00B8E5 02:98D5: 55        .byte con_chr_bank_spr + $55   ; unused
- D 0 - I - 0x00B8E6 02:98D6: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00B8E7 02:98D7: 02        .byte $02   ; next animation delay
- D 0 - I - 0x00B8E8 02:98D8: 2B 92     .word off_0x00D23B_spr_data_09_00
- D 0 - I - 0x00B8EA 02:98DA: D5 98     .word loc_98D5_loop
- D 0 - I - 0x00B8EC 02:98DC: 02        .byte $02   ; useless



tbl_0x00B8ED:
- D 0 - - - 0x00B8ED 02:98DD: F5 98     .word _off046_98F5_00
- D 0 - - - 0x00B8EF 02:98DF: FC 98     .word _off046_98FC_01
- D 0 - - - 0x00B8F1 02:98E1: 18 99     .word _off046_9918_02
- D 0 - - - 0x00B8F3 02:98E3: 1F 99     .word _off046_991F_03
- D 0 - - - 0x00B8F5 02:98E5: 3B 99     .word _off046_993B_04
- D 0 - - - 0x00B8F7 02:98E7: 49 99     .word _off046_9949_05
- D 0 - - - 0x00B8F9 02:98E9: 5E 99     .word _off046_995E_06
- D 0 - - - 0x00B8FB 02:98EB: 73 99     .word _off046_9973_07
- D 0 - - - 0x00B8FD 02:98ED: 0A 99     .word _off046_990A_08
- D 0 - - - 0x00B8FF 02:98EF: 2D 99     .word _off046_992D_09
- D 0 - - - 0x00B901 02:98F1: 50 99     .word _off046_9950_0A
- D 0 - - - 0x00B903 02:98F3: 81 99     .word _off046_9981_0B



_off046_98F5_00:
loc_98F5_loop:
- - - - - - 0x00B905 02:98F5: 29        .byte con_chr_bank_spr + $29   ; 
- D 0 - I - 0x00B906 02:98F6: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00B907 02:98F7: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00B908 02:98F8: 30 92     .word off_0x00D240_spr_data_00_00
- D 0 - I - 0x00B90A 02:98FA: F5 98     .word loc_98F5_loop



_off046_98FC_01:
loc_98FC_loop:
- - - - - - 0x00B90C 02:98FC: 29        .byte con_chr_bank_spr + $29   ; 
- D 0 - I - 0x00B90D 02:98FD: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00B90E 02:98FE: 30        .byte $30   ; next animation delay
- D 0 - I - 0x00B90F 02:98FF: 38 92     .word off_0x00D248_spr_data_01_00
- D 0 - I - 0x00B911 02:9901: 03 99     .word loc_9903_next



loc_9903_next:
- - - - - - 0x00B913 02:9903: 29        .byte con_chr_bank_spr + $29   ; 
- D 0 - I - 0x00B914 02:9904: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00B915 02:9905: 30        .byte $30   ; next animation delay
- D 0 - I - 0x00B916 02:9906: 80 92     .word off_0x00D290_spr_data_01_01
- D 0 - I - 0x00B918 02:9908: FC 98     .word loc_98FC_loop



_off046_990A_08:
loc_990A_loop:
- - - - - - 0x00B91A 02:990A: 29        .byte con_chr_bank_spr + $29   ; 
- D 0 - I - 0x00B91B 02:990B: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00B91C 02:990C: 0C        .byte $0C   ; next animation delay
- D 0 - I - 0x00B91D 02:990D: 30 92     .word off_0x00D240_spr_data_08_00
- D 0 - I - 0x00B91F 02:990F: 11 99     .word loc_9911_next



loc_9911_next:
- - - - - - 0x00B921 02:9911: 29        .byte con_chr_bank_spr + $29   ; 
- D 0 - I - 0x00B922 02:9912: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00B923 02:9913: 06        .byte $06   ; next animation delay
- D 0 - I - 0x00B924 02:9914: 80 92     .word off_0x00D290_spr_data_08_01
- D 0 - I - 0x00B926 02:9916: 0A 99     .word loc_990A_loop



_off046_9918_02:
loc_9918_loop:
- - - - - - 0x00B928 02:9918: 29        .byte con_chr_bank_spr + $29   ; 
- D 0 - I - 0x00B929 02:9919: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00B92A 02:991A: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00B92B 02:991B: 40 92     .word off_0x00D250_spr_data_02_00
- D 0 - I - 0x00B92D 02:991D: 18 99     .word loc_9918_loop



_off046_991F_03:
loc_991F_loop:
- - - - - - 0x00B92F 02:991F: 29        .byte con_chr_bank_spr + $29   ; 
- D 0 - I - 0x00B930 02:9920: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00B931 02:9921: 30        .byte $30   ; next animation delay
- D 0 - I - 0x00B932 02:9922: 48 92     .word off_0x00D258_spr_data_03_00
- D 0 - I - 0x00B934 02:9924: 26 99     .word loc_9926_next



loc_9926_next:
- - - - - - 0x00B936 02:9926: 29        .byte con_chr_bank_spr + $29   ; 
- D 0 - I - 0x00B937 02:9927: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00B938 02:9928: 30        .byte $30   ; next animation delay
- D 0 - I - 0x00B939 02:9929: 80 92     .word off_0x00D290_spr_data_03_01
- D 0 - I - 0x00B93B 02:992B: 1F 99     .word loc_991F_loop



_off046_992D_09:
loc_992D_loop:
- - - - - - 0x00B93D 02:992D: 29        .byte con_chr_bank_spr + $29   ; 
- D 0 - I - 0x00B93E 02:992E: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00B93F 02:992F: 0C        .byte $0C   ; next animation delay
- D 0 - I - 0x00B940 02:9930: 40 92     .word off_0x00D250_spr_data_09_00
- D 0 - I - 0x00B942 02:9932: 34 99     .word loc_9934_next



loc_9934_next:
- - - - - - 0x00B944 02:9934: 29        .byte con_chr_bank_spr + $29   ; 
- D 0 - I - 0x00B945 02:9935: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00B946 02:9936: 06        .byte $06   ; next animation delay
- D 0 - I - 0x00B947 02:9937: 80 92     .word off_0x00D290_spr_data_09_01
- D 0 - I - 0x00B949 02:9939: 2D 99     .word loc_992D_loop



_off046_993B_04:
loc_993B_loop:
- - - - - - 0x00B94B 02:993B: 29        .byte con_chr_bank_spr + $29   ; 
- D 0 - I - 0x00B94C 02:993C: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00B94D 02:993D: 0C        .byte $0C   ; next animation delay
- D 0 - I - 0x00B94E 02:993E: 50 92     .word off_0x00D260_spr_data_04_00
- D 0 - I - 0x00B950 02:9940: 42 99     .word loc_9942_next



loc_9942_next:
- - - - - - 0x00B952 02:9942: 29        .byte con_chr_bank_spr + $29   ; 
- D 0 - I - 0x00B953 02:9943: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00B954 02:9944: 06        .byte $06   ; next animation delay
- D 0 - I - 0x00B955 02:9945: 80 92     .word off_0x00D290_spr_data_04_01
- D 0 - I - 0x00B957 02:9947: 3B 99     .word loc_993B_loop



_off046_9949_05:
loc_9949_loop:
- - - - - - 0x00B959 02:9949: 29        .byte con_chr_bank_spr + $29   ; 
- D 0 - I - 0x00B95A 02:994A: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00B95B 02:994B: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00B95C 02:994C: 58 92     .word off_0x00D268_spr_data_05_00
- D 0 - I - 0x00B95E 02:994E: 49 99     .word loc_9949_loop



_off046_9950_0A:
loc_9950_loop:
- - - - - - 0x00B960 02:9950: 29        .byte con_chr_bank_spr + $29   ; 
- D 0 - I - 0x00B961 02:9951: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00B962 02:9952: 0C        .byte $0C   ; next animation delay
- D 0 - I - 0x00B963 02:9953: 58 92     .word off_0x00D268_spr_data_0A_00
- D 0 - I - 0x00B965 02:9955: 57 99     .word loc_9957_next



loc_9957_next:
- - - - - - 0x00B967 02:9957: 29        .byte con_chr_bank_spr + $29   ; 
- D 0 - I - 0x00B968 02:9958: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00B969 02:9959: 06        .byte $06   ; next animation delay
- D 0 - I - 0x00B96A 02:995A: 80 92     .word off_0x00D290_spr_data_0A_01
- D 0 - I - 0x00B96C 02:995C: 50 99     .word loc_9950_loop



_off046_995E_06:
loc_995E_loop:
- - - - - - 0x00B96E 02:995E: 29        .byte con_chr_bank_spr + $29   ; 
- D 0 - I - 0x00B96F 02:995F: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00B970 02:9960: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00B971 02:9961: 60 92     .word off_0x00D270_spr_data_06_00
- D 0 - I - 0x00B973 02:9963: 65 99     .word loc_9965_next



loc_9965_next:
- - - - - - 0x00B975 02:9965: 29        .byte con_chr_bank_spr + $29   ; 
- D 0 - I - 0x00B976 02:9966: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00B977 02:9967: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00B978 02:9968: 68 92     .word off_0x00D278_spr_data_06_01
- D 0 - I - 0x00B97A 02:996A: 6C 99     .word loc_996C_next



loc_996C_next:
- - - - - - 0x00B97C 02:996C: 29        .byte con_chr_bank_spr + $29   ; 
- D 0 - I - 0x00B97D 02:996D: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00B97E 02:996E: 04        .byte $04   ; next animation delay
- D 0 - I - 0x00B97F 02:996F: 70 92     .word off_0x00D280_spr_data_06_02
- D 0 - I - 0x00B981 02:9971: 5E 99     .word loc_995E_loop



_off046_9973_07:
loc_9973_loop:
- - - - - - 0x00B983 02:9973: 29        .byte con_chr_bank_spr + $29   ; 
- D 0 - I - 0x00B984 02:9974: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00B985 02:9975: 06        .byte $06   ; next animation delay
- D 0 - I - 0x00B986 02:9976: 78 92     .word off_0x00D288_spr_data_07_00
- D 0 - I - 0x00B988 02:9978: 7A 99     .word loc_997A_next



loc_997A_next:
- - - - - - 0x00B98A 02:997A: 29        .byte con_chr_bank_spr + $29   ; 
- D 0 - I - 0x00B98B 02:997B: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00B98C 02:997C: 06        .byte $06   ; next animation delay
- D 0 - I - 0x00B98D 02:997D: 80 92     .word off_0x00D290_spr_data_07_01
- D 0 - I - 0x00B98F 02:997F: 73 99     .word loc_9973_loop



_off046_9981_0B:
- - - - - - 0x00B991 02:9981: 29        .byte con_chr_bank_spr + $29   ; 
- D 0 - I - 0x00B992 02:9982: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00B993 02:9983: 20        .byte $20   ; next animation delay
- D 0 - I - 0x00B994 02:9984: 58 92     .word off_0x00D268_spr_data_0B_00
- D 0 - I - 0x00B996 02:9986: 88 99     .word loc_9988_next



loc_9988_next:
- - - - - - 0x00B998 02:9988: 5D        .byte con_chr_bank_spr + $5D   ; 
- D 0 - I - 0x00B999 02:9989: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00B99A 02:998A: 10        .byte $10   ; next animation delay
- D 0 - I - 0x00B99B 02:998B: 85 92     .word off_0x00D295_spr_data_0B_01
- D 0 - I - 0x00B99D 02:998D: 8F 99     .word loc_998F_next



loc_998F_next:
- - - - - - 0x00B99F 02:998F: 5D        .byte con_chr_bank_spr + $5D   ; 
- D 0 - I - 0x00B9A0 02:9990: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00B9A1 02:9991: 10        .byte $10   ; next animation delay
- D 0 - I - 0x00B9A2 02:9992: 93 92     .word off_0x00D2A3_spr_data_0B_02
- D 0 - I - 0x00B9A4 02:9994: 96 99     .word loc_9996_next



loc_9996_next:
- - - - - - 0x00B9A6 02:9996: 5D        .byte con_chr_bank_spr + $5D   ; 
- D 0 - I - 0x00B9A7 02:9997: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00B9A8 02:9998: 50        .byte $50   ; next animation delay
- D 0 - I - 0x00B9A9 02:9999: A7 92     .word off_0x00D2B7_spr_data_0B_03
- D 0 - I - 0x00B9AB 02:999B: 9D 99     .word loc_999D_next



loc_999D_loop:
loc_999D_next:
- - - - - - 0x00B9AD 02:999D: 5D        .byte con_chr_bank_spr + $5D   ; 
- D 0 - I - 0x00B9AE 02:999E: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00B9AF 02:999F: 03        .byte $03   ; next animation delay
- D 0 - I - 0x00B9B0 02:99A0: CD 92     .word off_0x00D2DD_spr_data_0B_04
- D 0 - I - 0x00B9B2 02:99A2: A4 99     .word loc_99A4_next



loc_99A4_next:
- - - - - - 0x00B9B4 02:99A4: 5D        .byte con_chr_bank_spr + $5D   ; 
- D 0 - I - 0x00B9B5 02:99A5: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00B9B6 02:99A6: 03        .byte $03   ; next animation delay
- D 0 - I - 0x00B9B7 02:99A7: FB 92     .word off_0x00D30B_spr_data_0B_05
- D 0 - I - 0x00B9B9 02:99A9: 9D 99     .word loc_999D_loop



_of051_0x00B9BB_01_01:
_of051_0x00B9BB_01_02:
_of051_0x00B9BB_01_03:
_of051_0x00B9BB_01_04:
_of051_0x00B9BB_02_01:
- - - - - - 0x00B9BB 02:99AB: 7D        .byte con_chr_bank_spr + $7D   ; unused
- D 0 - I - 0x00B9BC 02:99AC: 00        .byte $00   ; spr_A flip



_of051_0x00B9BD_03_01:
- - - - - - 0x00B9BD 02:99AD: 7C        .byte con_chr_bank_spr + $7C   ; unused
- D 0 - I - 0x00B9BE 02:99AE: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00B9BF 02:99AF: 90 93     .word off_0x00D3A0_spr_data_02
- D 0 - I - 0x00B9C1 02:99B1: 9B 93     .word off_0x00D3AB_spr_data_04



_of051_0x00B9C3_0A_01:
- - - - - - 0x00B9C3 02:99B3: 7C        .byte con_chr_bank_spr + $7C   ; unused
- D 0 - I - 0x00B9C4 02:99B4: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00B9C5 02:99B5: A6 93     .word off_0x00D3B6_spr_data_02
- D 0 - I - 0x00B9C7 02:99B7: B1 93     .word off_0x00D3C1_spr_data_04



_of051_0x00B9C9_03_02:
- - - - - - 0x00B9C9 02:99B9: 7C        .byte con_chr_bank_spr + $7C   ; unused
- D 0 - I - 0x00B9CA 02:99BA: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00B9CB 02:99BB: BC 93     .word off_0x00D3CC_spr_data_02
- D 0 - I - 0x00B9CD 02:99BD: C4 93     .word off_0x00D3D4_spr_data_04



_of051_0x00B9CF_0A_02:
- - - - - - 0x00B9CF 02:99BF: 7C        .byte con_chr_bank_spr + $7C   ; unused
- D 0 - I - 0x00B9D0 02:99C0: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00B9D1 02:99C1: CC 93     .word off_0x00D3DC_spr_data_02
- D 0 - I - 0x00B9D3 02:99C3: D4 93     .word off_0x00D3E4_spr_data_04



_of051_0x00B9D5_03_03:
_of051_0x00B9D5_04_01:
_of051_0x00B9D5_06_02:
_of051_0x00B9D5_07_02:
_of051_0x00B9D5_0A_03:
_of051_0x00B9D5_0B_02:
- - - - - - 0x00B9D5 02:99C5: 7C        .byte con_chr_bank_spr + $7C   ; unused
- D 0 - I - 0x00B9D6 02:99C6: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00B9D7 02:99C7: E1 93     .word off_0x00D3F1_spr_data_02
- D 0 - I - 0x00B9D9 02:99C9: FB 93     .word off_0x00D40B_spr_data_04



_of051_0x00B9DB_04_02:
_of051_0x00B9DB_04_03:
_of051_0x00B9DB_05_01:
_of051_0x00B9DB_05_02:
- - - - - - 0x00B9DB 02:99CB: 7C        .byte con_chr_bank_spr + $7C   ; unused
- D 0 - I - 0x00B9DC 02:99CC: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00B9DD 02:99CD: 34 94     .word off_0x00D444_spr_data_02
- D 0 - I - 0x00B9DF 02:99CF: 51 94     .word off_0x00D461_spr_data_04



_of051_0x00B9E1_06_01:
_of051_0x00B9E1_07_01:
_of051_0x00B9E1_0B_01:
- - - - - - 0x00B9E1 02:99D1: 7C        .byte con_chr_bank_spr + $7C   ; unused
- D 0 - I - 0x00B9E2 02:99D2: 00        .byte $00   ; spr_A flip
- D 0 - I - 0x00B9E3 02:99D3: 88 94     .word off_0x00D498_spr_data_02
- D 0 - I - 0x00B9E5 02:99D5: 90 94     .word off_0x00D4A0_spr_data_04



_of051_0x00B9E7_08_01:
- - - - - - 0x00B9E7 02:99D7: 7D        .byte con_chr_bank_spr + $7D   ; unused
- D 0 - I - 0x00B9E8 02:99D8: 00        .byte $00   ; spr_A flip



tbl_99D9:
- D 0 - - - 0x00B9E9 02:99D9: E5 9A     .word _off050_9AE5_00
- D 0 - - - 0x00B9EB 02:99DB: E7 9A     .word _off050_9AE7_01
- D 0 - - - 0x00B9ED 02:99DD: ED 9A     .word _off050_9AED_02
- D 0 - - - 0x00B9EF 02:99DF: EF 9A     .word _off050_9AEF_03
- D 0 - - - 0x00B9F1 02:99E1: F5 9A     .word _off050_9AF5_04
- D 0 - - - 0x00B9F3 02:99E3: FB 9A     .word _off050_9AFB_05
- D 0 - - - 0x00B9F5 02:99E5: 01 9B     .word _off050_9B01_06
- D 0 - - - 0x00B9F7 02:99E7: 07 9B     .word _off050_9B07_07
- D 0 - - - 0x00B9F9 02:99E9: 0F 9B     .word _off050_9B0F_08
- D 0 - - - 0x00B9FB 02:99EB: 15 9B     .word _off050_9B15_09
- D 0 - - - 0x00B9FD 02:99ED: 1B 9B     .word _off050_9B1B_0A
- D 0 - - - 0x00B9FF 02:99EF: 21 9B     .word _off050_9B21_0B
- D 0 - - - 0x00BA01 02:99F1: 23 9B     .word _off050_9B23_0C
- D 0 - - - 0x00BA03 02:99F3: 2B 9B     .word _off050_9B2B_0D
- D 0 - - - 0x00BA05 02:99F5: 33 9B     .word _off050_9B33_0E
- D 0 - - - 0x00BA07 02:99F7: 35 9B     .word _off050_9B35_0F
- D 0 - - - 0x00BA09 02:99F9: 3D 9B     .word _off050_9B3D_10
- D 0 - - - 0x00BA0B 02:99FB: 3F 9B     .word _off050_9B3F_11
- D 0 - - - 0x00BA0D 02:99FD: 47 9B     .word _off050_9B47_12
- D 0 - - - 0x00BA0F 02:99FF: 49 9B     .word _off050_9B49_13
- D 0 - - - 0x00BA11 02:9A01: 4F 9B     .word _off050_9B4F_14
- - - - - - 0x00BA13 02:9A03: 57 9B     .word _off050_9B57_15



tbl_9A05_city:
- D 0 - - - 0x00BA15 02:9A05: 04        .byte $04   ; 00 
- D 0 - - - 0x00BA16 02:9A06: 05        .byte $05   ; 01 
- D 0 - - - 0x00BA17 02:9A07: 08        .byte $08   ; 02 
- D 0 - - - 0x00BA18 02:9A08: 07        .byte $07   ; 03 
- D 0 - - - 0x00BA19 02:9A09: 06        .byte $06   ; 04 
- D 0 - - - 0x00BA1A 02:9A0A: 09        .byte $09   ; 05 
- D 0 - - - 0x00BA1B 02:9A0B: 0B        .byte $0B   ; 06 
- D 0 - - - 0x00BA1C 02:9A0C: 0A        .byte $0A   ; 07 
- D 0 - - - 0x00BA1D 02:9A0D: 0D        .byte $0D   ; 08 
- D 0 - - - 0x00BA1E 02:9A0E: 0C        .byte $0C   ; 09 
- D 0 - - - 0x00BA1F 02:9A0F: 00        .byte $00   ; 0A 
- D 0 - - - 0x00BA20 02:9A10: 0E        .byte $0E   ; 0B 
- D 0 - - - 0x00BA21 02:9A11: 0F        .byte $0F   ; 0C 
- D 0 - - - 0x00BA22 02:9A12: 12        .byte $12   ; 0D 
- D 0 - - - 0x00BA23 02:9A13: 01        .byte $01   ; 0E 
- D 0 - - - 0x00BA24 02:9A14: 15        .byte $15   ; 0F 
- D 0 - - - 0x00BA25 02:9A15: 17        .byte $17   ; 10 
- D 0 - - - 0x00BA26 02:9A16: 11        .byte $11   ; 11 
- D 0 - - - 0x00BA27 02:9A17: 16        .byte $16   ; 12 
- D 0 - - - 0x00BA28 02:9A18: 10        .byte $10   ; 13 
- D 0 - - - 0x00BA29 02:9A19: 13        .byte $13   ; 14 
- D 0 - - - 0x00BA2A 02:9A1A: 14        .byte $14   ; 15 



tbl_9A1B_map_cursor_position:
tbl_0x00BA2B_map_cursor_position:
;                                              +---------- Y
;                                              |    +----- X
;                                              |    |
- D 0 - - - 0x00BA2B 02:9A1B: AB        .byte $AB, $DC   ; 00 
- D 0 - - - 0x00BA2D 02:9A1D: 9B        .byte $9B, $CC   ; 01 
- D 0 - - - 0x00BA2F 02:9A1F: 93        .byte $93, $9C   ; 02 
- D 0 - - - 0x00BA31 02:9A21: 83        .byte $83, $B4   ; 03 
- D 0 - - - 0x00BA33 02:9A23: 6B        .byte $6B, $CC   ; 04 
- D 0 - - - 0x00BA35 02:9A25: 6B        .byte $6B, $9C   ; 05 
- D 0 - - - 0x00BA37 02:9A27: 53        .byte $53, $CC   ; 06 
- D 0 - - - 0x00BA39 02:9A29: 53        .byte $53, $B4   ; 07 
- D 0 - - - 0x00BA3B 02:9A2B: 3B        .byte $3B, $CC   ; 08 
- D 0 - - - 0x00BA3D 02:9A2D: 3B        .byte $3B, $B4   ; 09 
- D 0 - - - 0x00BA3F 02:9A2F: 2B        .byte $2B, $DC   ; 0A 
- D 0 - - - 0x00BA41 02:9A31: 1B        .byte $1B, $EC   ; 0B 
- D 0 - - - 0x00BA43 02:9A33: 4B        .byte $4B, $6C   ; 0C 
- D 0 - - - 0x00BA45 02:9A35: 4B        .byte $4B, $3C   ; 0D 
- D 0 - - - 0x00BA47 02:9A37: 23        .byte $23, $44   ; 0E 
- D 0 - - - 0x00BA49 02:9A39: 3B        .byte $3B, $2C   ; 0F 
- D 0 - - - 0x00BA4B 02:9A3B: 23        .byte $23, $14   ; 10 
- D 0 - - - 0x00BA4D 02:9A3D: 63        .byte $63, $54   ; 11 
- D 0 - - - 0x00BA4F 02:9A3F: 63        .byte $63, $2C   ; 12 
- D 0 - - - 0x00BA51 02:9A41: 7B        .byte $7B, $6C   ; 13 
- D 0 - - - 0x00BA53 02:9A43: 7B        .byte $7B, $3C   ; 14 
- D 0 - - - 0x00BA55 02:9A45: 9B        .byte $9B, $7C   ; 15 



tbl_9A47:
tbl_0x00BA57:
- D 0 - - - 0x00BA57 02:9A47: 4D 9D     .word _off044_9D4D_00
- D 0 - - - 0x00BA59 02:9A49: 50 9D     .word _off044_9D50_01
- D 0 - - - 0x00BA5B 02:9A4B: 53 9D     .word _off044_9D53_02
- D 0 - - - 0x00BA5D 02:9A4D: 56 9D     .word _off044_9D56_03
- D 0 - - - 0x00BA5F 02:9A4F: 59 9D     .word _off044_9D59_04
- D 0 - - - 0x00BA61 02:9A51: 5C 9D     .word _off044_9D5C_05
- D 0 - - - 0x00BA63 02:9A53: 5F 9D     .word _off044_9D5F_06
- D 0 - - - 0x00BA65 02:9A55: 62 9D     .word _off044_9D62_07
- D 0 - - - 0x00BA67 02:9A57: 65 9D     .word _off044_9D65_08
- D 0 - - - 0x00BA69 02:9A59: 68 9D     .word _off044_9D68_09
- D 0 - - - 0x00BA6B 02:9A5B: 6B 9D     .word _off044_9D6B_0A
- D 0 - - - 0x00BA6D 02:9A5D: 6E 9D     .word _off044_9D6E_0B
- D 0 - - - 0x00BA6F 02:9A5F: 71 9D     .word _off044_9D71_0C
- D 0 - - - 0x00BA71 02:9A61: 74 9D     .word _off044_9D74_0D
- D 0 - - - 0x00BA73 02:9A63: 77 9D     .word _off044_9D77_0E
- D 0 - - - 0x00BA75 02:9A65: 7A 9D     .word _off044_9D7A_0F
- D 0 - - - 0x00BA77 02:9A67: 7D 9D     .word _off044_9D7D_10
- D 0 - - - 0x00BA79 02:9A69: 80 9D     .word _off044_9D80_11
- D 0 - - - 0x00BA7B 02:9A6B: 83 9D     .word _off044_9D83_12
- D 0 - - - 0x00BA7D 02:9A6D: 88 9D     .word _off044_9D88_13
- - - - - - 0x00BA7F 02:9A6F: 8D 9D     .word _off044_9D8D_14
- D 0 - - - 0x00BA81 02:9A71: 92 9D     .word _off044_9D92_15



tbl_0x00BA83:
- D 0 - - - 0x00BA83 02:9A73: 97 9D     .word off_9D97_00   ; right?
- D 0 - - - 0x00BA85 02:9A75: AF 9D     .word off_9DAF_01   ; left?
- D 0 - - - 0x00BA87 02:9A77: C7 9D     .word off_9DC7_02   ; ???



tbl_0x00BA89:
- D 0 - - - 0x00BA89 02:9A79: DF 9D     .word off_9DDF_00
- D 0 - - - 0x00BA8B 02:9A7B: E5 9D     .word off_9DE5_01
- D 0 - - - 0x00BA8D 02:9A7D: EB 9D     .word off_9DEB_02



tbl_0x00BA8F_positions_YX:
;                                              +---------- Y
;                                              |    +----- X
;                                              |    |
- - - - - - 0x00BA8F 02:9A7F: A3        .byte $A3, $D4   ; unused, index doesn't exist
- D 0 - - - 0x00BA91 02:9A81: 8F        .byte $8F, $C0   ; 01 
- - - - - - 0x00BA93 02:9A83: 83        .byte $83, $CC   ; 02 
- - - - - - 0x00BA95 02:9A85: 77        .byte $77, $C0   ; 03 
- D 0 - - - 0x00BA97 02:9A87: 77        .byte $77, $A8   ; 04 
- D 0 - - - 0x00BA99 02:9A89: 7F        .byte $7F, $9C   ; 05 
- D 0 - - - 0x00BA9B 02:9A8B: 5F        .byte $5F, $C0   ; 06 
- D 0 - - - 0x00BA9D 02:9A8D: 5F        .byte $5F, $A8   ; 07 
- D 0 - - - 0x00BA9F 02:9A8F: 53        .byte $53, $C0   ; 08 
- D 0 - - - 0x00BAA1 02:9A91: 47        .byte $47, $CC   ; 09 
- D 0 - - - 0x00BAA3 02:9A93: 47        .byte $47, $C0   ; 0A 
- D 0 - - - 0x00BAA5 02:9A95: 47        .byte $47, $B4   ; 0B 
- D 0 - - - 0x00BAA7 02:9A97: 3B        .byte $3B, $C0   ; 0C 
- D 0 - - - 0x00BAA9 02:9A99: 33        .byte $33, $D4   ; 0D 
- - - - - - 0x00BAAB 02:9A9B: 9B        .byte $9B, $5C   ; 0E unused, index doesn't exist
- - - - - - 0x00BAAD 02:9A9D: 7B        .byte $7B, $54   ; 0F 
- D 0 - - - 0x00BAAF 02:9A9F: 6F        .byte $6F, $60   ; 10 
- - - - - - 0x00BAB1 02:9AA1: 6F        .byte $6F, $48   ; 11 
- - - - - - 0x00BAB3 02:9AA3: 63        .byte $63, $6C   ; 12 
- D 0 - - - 0x00BAB5 02:9AA5: 63        .byte $63, $3C   ; 13 
- D 0 - - - 0x00BAB7 02:9AA7: 57        .byte $57, $60   ; 14 
- D 0 - - - 0x00BAB9 02:9AA9: 57        .byte $57, $48   ; 15 
- D 0 - - - 0x00BABB 02:9AAB: 4B        .byte $4B, $54   ; 16 



tbl_0x00BABD:
- D 0 - - - 0x00BABD 02:9AAD: F4 9D     .word off_9DF4_00
- D 0 - - - 0x00BABF 02:9AAF: FC 9D     .word off_9DFC_01
- D 0 - - - 0x00BAC1 02:9AB1: 04 9E     .word off_9E04_02
- D 0 - - - 0x00BAC3 02:9AB3: 0C 9E     .word off_9E0C_03
- D 0 - - - 0x00BAC5 02:9AB5: 14 9E     .word off_9E14_04
- D 0 - - - 0x00BAC7 02:9AB7: 1C 9E     .word off_9E1C_05
- D 0 - - - 0x00BAC9 02:9AB9: 24 9E     .word off_9E24_06



tbl_0x00BACB:
; 
- D 0 - - - 0x00BACB 02:9ABB: 20 9C     .dbyt $209C ; ppu address
- D 0 - - - 0x00BACD 02:9ABD: 09        .byte $09   ; tile
; 
- D 0 - - - 0x00BACE 02:9ABE: 22 08     .dbyt $2208 ; 
- D 0 - - - 0x00BAD0 02:9AC0: 01        .byte $01   ; 
; 
- D 0 - - - 0x00BAD1 02:9AC1: 22 09     .dbyt $2209 ; 
- D 0 - - - 0x00BAD3 02:9AC3: 10        .byte $10   ; 
; 
- D 0 - - - 0x00BAD4 02:9AC4: 22 28     .dbyt $2228 ; 
- D 0 - - - 0x00BAD6 02:9AC6: 11        .byte $11   ; 
; 
- D 0 - - - 0x00BAD7 02:9AC7: 22 29     .dbyt $2229 ; 
- D 0 - - - 0x00BAD9 02:9AC9: 01        .byte $01   ; 
; 
- D 0 - - - 0x00BADA 02:9ACA: 22 2A     .dbyt $222A ; 
- D 0 - - - 0x00BADC 02:9ACC: 10        .byte $10   ; 
; 
- D 0 - - - 0x00BADD 02:9ACD: 22 49     .dbyt $2249 ; 
- D 0 - - - 0x00BADF 02:9ACF: 11        .byte $11   ; 
; 
- D 0 - - - 0x00BAE0 02:9AD0: 22 4A     .dbyt $224A ; 
- D 0 - - - 0x00BAE2 02:9AD2: 01        .byte $01   ; 
; 
- D 0 - - - 0x00BAE3 02:9AD3: 22 4B     .dbyt $224B ; 
- D 0 - - - 0x00BAE5 02:9AD5: 10        .byte $10   ; 
; 
- D 0 - - - 0x00BAE6 02:9AD6: 22 6A     .dbyt $226A ; 
- D 0 - - - 0x00BAE8 02:9AD8: 11        .byte $11   ; 
; 
- D 0 - - - 0x00BAE9 02:9AD9: 22 6B     .dbyt $226B ; 
- D 0 - - - 0x00BAEB 02:9ADB: 12        .byte $12   ; 
; 
- D 0 - - - 0x00BAEC 02:9ADC: 22 6C     .dbyt $226C ; 
- D 0 - - - 0x00BAEE 02:9ADE: 13        .byte $13   ; 
; 
- D 0 - - - 0x00BAEF 02:9ADF: 22 6D     .dbyt $226D ; 
- D 0 - - - 0x00BAF1 02:9AE1: 13        .byte $13   ; 
; 
- D 0 - - - 0x00BAF2 02:9AE2: 22 6E     .dbyt $226E ; 
- D 0 - - - 0x00BAF4 02:9AE4: 13        .byte $13   ; 



_off050_9AE5_00:
- D 0 - I - 0x00BAF5 02:9AE5: 01        .byte $01   ; 
- D 0 - I - 0x00BAF6 02:9AE6: 00        .byte $00   ; 



_off050_9AE7_01:
- D 0 - I - 0x00BAF7 02:9AE7: 04        .byte $04   ; 
- D 0 - I - 0x00BAF8 02:9AE8: 02        .byte $02   ; 
- D 0 - I - 0x00BAF9 02:9AE9: 00        .byte $00   ; 
- D 0 - I - 0x00BAFA 02:9AEA: 01        .byte $01   ; 
- D 0 - I - 0x00BAFB 02:9AEB: 03        .byte $03   ; 
- D 0 - I - 0x00BAFC 02:9AEC: 06        .byte $06   ; 



_off050_9AED_02:
- D 0 - I - 0x00BAFD 02:9AED: 05        .byte $05   ; 
- D 0 - I - 0x00BAFE 02:9AEE: 04        .byte $04   ; 



_off050_9AEF_03:
- D 0 - I - 0x00BAFF 02:9AEF: 05        .byte $05   ; 
- D 0 - I - 0x00BB00 02:9AF0: 06        .byte $06   ; 
- - - - - - 0x00BB01 02:9AF1: 04        .byte $04   ; 
- - - - - - 0x00BB02 02:9AF2: 08        .byte $08   ; 
- - - - - - 0x00BB03 02:9AF3: 01        .byte $01   ; 
- - - - - - 0x00BB04 02:9AF4: 07        .byte $07   ; 



_off050_9AF5_04:
- D 0 - I - 0x00BB05 02:9AF5: 07        .byte $07   ; 
- D 0 - I - 0x00BB06 02:9AF6: 06        .byte $06   ; 
- D 0 - I - 0x00BB07 02:9AF7: 01        .byte $01   ; 
- D 0 - I - 0x00BB08 02:9AF8: 03        .byte $03   ; 
- - - - - - 0x00BB09 02:9AF9: 03        .byte $03   ; 
- - - - - - 0x00BB0A 02:9AFA: 09        .byte $09   ; 



_off050_9AFB_05:
- D 0 - I - 0x00BB0B 02:9AFB: 07        .byte $07   ; 
- D 0 - I - 0x00BB0C 02:9AFC: 08        .byte $08   ; 
- D 0 - I - 0x00BB0D 02:9AFD: 03        .byte $03   ; 
- D 0 - I - 0x00BB0E 02:9AFE: 07        .byte $07   ; 
- D 0 - I - 0x00BB0F 02:9AFF: 02        .byte $02   ; 
- D 0 - I - 0x00BB10 02:9B00: 05        .byte $05   ; 



_off050_9B01_06:
- D 0 - I - 0x00BB11 02:9B01: 08        .byte $08   ; 
- D 0 - I - 0x00BB12 02:9B02: 0A        .byte $0A   ; 
- D 0 - I - 0x00BB13 02:9B03: 07        .byte $07   ; 
- D 0 - I - 0x00BB14 02:9B04: 0C        .byte $0C   ; 
- D 0 - I - 0x00BB15 02:9B05: 09        .byte $09   ; 
- D 0 - I - 0x00BB16 02:9B06: 06        .byte $06   ; 



_off050_9B07_07:
- D 0 - I - 0x00BB17 02:9B07: 09        .byte $09   ; 
- D 0 - I - 0x00BB18 02:9B08: 0A        .byte $0A   ; 
- D 0 - I - 0x00BB19 02:9B09: 06        .byte $06   ; 
- D 0 - I - 0x00BB1A 02:9B0A: 0D        .byte $0D   ; 
- D 0 - I - 0x00BB1B 02:9B0B: 04        .byte $04   ; 
- D 0 - I - 0x00BB1C 02:9B0C: 07        .byte $07   ; 
- D 0 - I - 0x00BB1D 02:9B0D: 05        .byte $05   ; 
- D 0 - I - 0x00BB1E 02:9B0E: 09        .byte $09   ; 



_off050_9B0F_08:
- D 0 - I - 0x00BB1F 02:9B0F: 0A        .byte $0A   ; 
- D 0 - I - 0x00BB20 02:9B10: 0E        .byte $0E   ; 
- D 0 - I - 0x00BB21 02:9B11: 06        .byte $06   ; 
- D 0 - I - 0x00BB22 02:9B12: 0B        .byte $0B   ; 
- D 0 - I - 0x00BB23 02:9B13: 09        .byte $09   ; 
- D 0 - I - 0x00BB24 02:9B14: 0C        .byte $0C   ; 



_off050_9B15_09:
- D 0 - I - 0x00BB25 02:9B15: 08        .byte $08   ; 
- D 0 - I - 0x00BB26 02:9B16: 0D        .byte $0D   ; 
- D 0 - I - 0x00BB27 02:9B17: 06        .byte $06   ; 
- D 0 - I - 0x00BB28 02:9B18: 07        .byte $07   ; 
- - - - - - 0x00BB29 02:9B19: 07        .byte $07   ; 
- - - - - - 0x00BB2A 02:9B1A: 0B        .byte $0B   ; 



_off050_9B1B_0A:
- D 0 - I - 0x00BB2B 02:9B1B: 0C        .byte $0C   ; 
- D 0 - I - 0x00BB2C 02:9B1C: 12        .byte $12   ; 
- D 0 - I - 0x00BB2D 02:9B1D: 08        .byte $08   ; 
- D 0 - I - 0x00BB2E 02:9B1E: 0F        .byte $0F   ; 
- D 0 - I - 0x00BB2F 02:9B1F: 0B        .byte $0B   ; 
- D 0 - I - 0x00BB30 02:9B20: 0E        .byte $0E   ; 



_off050_9B21_0B:
- D 0 - I - 0x00BB31 02:9B21: 0A        .byte $0A   ; 
- D 0 - I - 0x00BB32 02:9B22: 0F        .byte $0F   ; 



_off050_9B23_0C:
- D 0 - I - 0x00BB33 02:9B23: 0D        .byte $0D   ; 
- D 0 - I - 0x00BB34 02:9B24: 10        .byte $10   ; 
- D 0 - I - 0x00BB35 02:9B25: 0A        .byte $0A   ; 
- D 0 - I - 0x00BB36 02:9B26: 13        .byte $13   ; 
- D 0 - I - 0x00BB37 02:9B27: 13        .byte $13   ; 
- D 0 - I - 0x00BB38 02:9B28: 03        .byte $03   ; 
- D 0 - I - 0x00BB39 02:9B29: 11        .byte $11   ; 
- D 0 - I - 0x00BB3A 02:9B2A: 09        .byte $09   ; 



_off050_9B2B_0D:
- D 0 - I - 0x00BB3B 02:9B2B: 0F        .byte $0F   ; 
- D 0 - I - 0x00BB3C 02:9B2C: 00        .byte $00   ; 
- D 0 - I - 0x00BB3D 02:9B2D: 0C        .byte $0C   ; 
- D 0 - I - 0x00BB3E 02:9B2E: 11        .byte $11   ; 
- D 0 - I - 0x00BB3F 02:9B2F: 11        .byte $11   ; 
- D 0 - I - 0x00BB40 02:9B30: 07        .byte $07   ; 
- - - - - - 0x00BB41 02:9B31: 14        .byte $14   ; 
- - - - - - 0x00BB42 02:9B32: 03        .byte $03   ; 



_off050_9B33_0E:
- D 0 - I - 0x00BB43 02:9B33: 0F        .byte $0F   ; 
- D 0 - I - 0x00BB44 02:9B34: 09        .byte $09   ; 



_off050_9B35_0F:
- D 0 - I - 0x00BB45 02:9B35: 0E        .byte $0E   ; 
- D 0 - I - 0x00BB46 02:9B36: 08        .byte $08   ; 
- D 0 - I - 0x00BB47 02:9B37: 0D        .byte $0D   ; 
- D 0 - I - 0x00BB48 02:9B38: 01        .byte $01   ; 
- D 0 - I - 0x00BB49 02:9B39: 12        .byte $12   ; 
- D 0 - I - 0x00BB4A 02:9B3A: 05        .byte $05   ; 
- D 0 - I - 0x00BB4B 02:9B3B: 10        .byte $10   ; 
- D 0 - I - 0x00BB4C 02:9B3C: 06        .byte $06   ; 



_off050_9B3D_10:
- D 0 - I - 0x00BB4D 02:9B3D: 0F        .byte $0F   ; 
- D 0 - I - 0x00BB4E 02:9B3E: 07        .byte $07   ; 



_off050_9B3F_11:
- D 0 - I - 0x00BB4F 02:9B3F: 0D        .byte $0D   ; 
- D 0 - I - 0x00BB50 02:9B40: 06        .byte $06   ; 
- D 0 - I - 0x00BB51 02:9B41: 0C        .byte $0C   ; 
- D 0 - I - 0x00BB52 02:9B42: 08        .byte $08   ; 
- D 0 - I - 0x00BB53 02:9B43: 13        .byte $13   ; 
- D 0 - I - 0x00BB54 02:9B44: 07        .byte $07   ; 
- - - - - - 0x00BB55 02:9B45: 14        .byte $14   ; 
- - - - - - 0x00BB56 02:9B46: 09        .byte $09   ; 



_off050_9B47_12:
- D 0 - I - 0x00BB57 02:9B47: 0F        .byte $0F   ; 
- D 0 - I - 0x00BB58 02:9B48: 04        .byte $04   ; 



_off050_9B49_13:
- D 0 - I - 0x00BB59 02:9B49: 14        .byte $14   ; 
- D 0 - I - 0x00BB5A 02:9B4A: 10        .byte $10   ; 
- - - - - - 0x00BB5B 02:9B4B: 11        .byte $11   ; 
- - - - - - 0x00BB5C 02:9B4C: 06        .byte $06   ; 
- - - - - - 0x00BB5D 02:9B4D: 0C        .byte $0C   ; 
- - - - - - 0x00BB5E 02:9B4E: 02        .byte $02   ; 



_off050_9B4F_14:
- D 0 - I - 0x00BB5F 02:9B4F: 0D        .byte $0D   ; 
- D 0 - I - 0x00BB60 02:9B50: 02        .byte $02   ; 
- D 0 - I - 0x00BB61 02:9B51: 11        .byte $11   ; 
- D 0 - I - 0x00BB62 02:9B52: 08        .byte $08   ; 
- D 0 - I - 0x00BB63 02:9B53: 13        .byte $13   ; 
- D 0 - I - 0x00BB64 02:9B54: 11        .byte $11   ; 
- D 0 - I - 0x00BB65 02:9B55: 15        .byte $15   ; 
- D 0 - I - 0x00BB66 02:9B56: 15        .byte $15   ; 



_off050_9B57_15:
- - - - - - 0x00BB67 02:9B57: 14        .byte $14   ; 
- - - - - - 0x00BB68 02:9B58: 14        .byte $14   ; 



tbl_0x00BB69_metatiles:
; 00 
- D 0 - - - 0x00BB69 02:9B59: 80        .byte $80, $81   ; 
- D 0 - - - 0x00BB6B 02:9B5B: 90        .byte $90, $91   ; 
; 04 
- D 0 - - - 0x00BB6D 02:9B5D: 82        .byte $82, $83   ; 
- D 0 - - - 0x00BB6F 02:9B5F: 92        .byte $92, $93   ; 
; 08 
- D 0 - - - 0x00BB71 02:9B61: 84        .byte $84, $85   ; 
- D 0 - - - 0x00BB73 02:9B63: 94        .byte $94, $95   ; 
; 0C 
- D 0 - - - 0x00BB75 02:9B65: C0        .byte $C0, $C1   ; 
- D 0 - - - 0x00BB77 02:9B67: D0        .byte $D0, $97   ; 
; 10 
- D 0 - - - 0x00BB79 02:9B69: 88        .byte $88, $89   ; 
- D 0 - - - 0x00BB7B 02:9B6B: 98        .byte $98, $99   ; 
; 14 unused, index doesn't exist
- - - - - - 0x00BB7D 02:9B6D: 88        .byte $88, $DD   ; 
- - - - - - 0x00BB7F 02:9B6F: B2        .byte $B2, $B3   ; 
; 18 
- D 0 - - - 0x00BB81 02:9B71: 84        .byte $84, $8D   ; 
- D 0 - - - 0x00BB83 02:9B73: 94        .byte $94, $9D   ; 
; 1C 
- D 0 - - - 0x00BB85 02:9B75: 8E        .byte $8E, $8F   ; 
- D 0 - - - 0x00BB87 02:9B77: 9E        .byte $9E, $9F   ; 
; 20 
- D 0 - - - 0x00BB89 02:9B79: E8        .byte $E8, $A1   ; 
- D 0 - - - 0x00BB8B 02:9B7B: B0        .byte $B0, $B1   ; 
; 24 
- D 0 - - - 0x00BB8D 02:9B7D: 8C        .byte $8C, $E9   ; 
- D 0 - - - 0x00BB8F 02:9B7F: 9C        .byte $9C, $F9   ; 
; 28 
- D 0 - - - 0x00BB91 02:9B81: A6        .byte $A6, $00   ; 
- D 0 - - - 0x00BB93 02:9B83: B6        .byte $B6, $B7   ; 
; 2C 
- D 0 - - - 0x00BB95 02:9B85: A8        .byte $A8, $A9   ; 
- D 0 - - - 0x00BB97 02:9B87: B8        .byte $B8, $B9   ; 
; 30 
- D 0 - - - 0x00BB99 02:9B89: AA        .byte $AA, $AB   ; 
- D 0 - - - 0x00BB9B 02:9B8B: BA        .byte $BA, $BB   ; 
; 34 
- D 0 - - - 0x00BB9D 02:9B8D: E4        .byte $E4, $E5   ; 
- D 0 - - - 0x00BB9F 02:9B8F: F4        .byte $F4, $F5   ; 
; 38 
- D 0 - - - 0x00BBA1 02:9B91: 8A        .byte $8A, $8B   ; 
- D 0 - - - 0x00BBA3 02:9B93: 9A        .byte $9A, $BF   ; 
; 3C 
- D 0 - - - 0x00BBA5 02:9B95: 8A        .byte $8A, $8B   ; 
- D 0 - - - 0x00BBA7 02:9B97: 9A        .byte $9A, $9B   ; 
; 40 
- D 0 - - - 0x00BBA9 02:9B99: AE        .byte $AE, $AF   ; 
- D 0 - - - 0x00BBAB 02:9B9B: BE        .byte $BE, $D1   ; 
; 44 
- D 0 - - - 0x00BBAD 02:9B9D: A2        .byte $A2, $A3   ; 
- D 0 - - - 0x00BBAF 02:9B9F: B0        .byte $B0, $B1   ; 
; 48 
- D 0 - - - 0x00BBB1 02:9BA1: 86        .byte $86, $87   ; 
- D 0 - - - 0x00BBB3 02:9BA3: 96        .byte $96, $97   ; 
; 4C 
- D 0 - - - 0x00BBB5 02:9BA5: A4        .byte $A4, $A5   ; 
- D 0 - - - 0x00BBB7 02:9BA7: B4        .byte $B4, $B5   ; 
; 50 
- D 0 - - - 0x00BBB9 02:9BA9: EA        .byte $EA, $EB   ; 
- D 0 - - - 0x00BBBB 02:9BAB: FA        .byte $FA, $FB   ; 
; 54 
- D 0 - - - 0x00BBBD 02:9BAD: F8        .byte $F8, $AD   ; 
- D 0 - - - 0x00BBBF 02:9BAF: FC        .byte $FC, $AC   ; 
; 58 
- D 0 - - - 0x00BBC1 02:9BB1: C2        .byte $C2, $C3   ; 
- D 0 - - - 0x00BBC3 02:9BB3: D2        .byte $D2, $D3   ; 
; 5C 
- D 0 - - - 0x00BBC5 02:9BB5: 00        .byte $00, $00   ; 
- D 0 - - - 0x00BBC7 02:9BB7: BD        .byte $BD, $00   ; 
; 60 
- D 0 - - - 0x00BBC9 02:9BB9: 00        .byte $00, $00   ; 
- D 0 - - - 0x00BBCB 02:9BBB: 00        .byte $00, $00   ; 



tbl_0x00BBCD_metatile_id:
- D 0 - - - 0x00BBCD 02:9BBD: EF 9B     .word _off052_metatile_indexes_9BEF_80
- D 0 - - - 0x00BBCF 02:9BBF: FD 9B     .word _off052_metatile_indexes_9BFD_81
- D 0 - - - 0x00BBD1 02:9BC1: 0B 9C     .word _off052_metatile_indexes_9C0B_82
- D 0 - - - 0x00BBD3 02:9BC3: 19 9C     .word _off052_metatile_indexes_9C19_83
- D 0 - - - 0x00BBD5 02:9BC5: 27 9C     .word _off052_metatile_indexes_9C27_84
- D 0 - - - 0x00BBD7 02:9BC7: 35 9C     .word _off052_metatile_indexes_9C35_85
- D 0 - - - 0x00BBD9 02:9BC9: 43 9C     .word _off052_metatile_indexes_9C43_86
- D 0 - - - 0x00BBDB 02:9BCB: 51 9C     .word _off052_metatile_indexes_9C51_87
- D 0 - - - 0x00BBDD 02:9BCD: 5F 9C     .word _off052_metatile_indexes_9C5F_88
- D 0 - - - 0x00BBDF 02:9BCF: 6D 9C     .word _off052_metatile_indexes_9C6D_89
- D 0 - - - 0x00BBE1 02:9BD1: 7B 9C     .word _off052_metatile_indexes_9C7B_8A
- D 0 - - - 0x00BBE3 02:9BD3: 89 9C     .word _off052_metatile_indexes_9C89_8B
- D 0 - - - 0x00BBE5 02:9BD5: 97 9C     .word _off052_metatile_indexes_9C97_8C
- D 0 - - - 0x00BBE7 02:9BD7: A5 9C     .word _off052_metatile_indexes_9CA5_8D
- D 0 - - - 0x00BBE9 02:9BD9: B3 9C     .word _off052_metatile_indexes_9CB3_8E
- D 0 - - - 0x00BBEB 02:9BDB: C1 9C     .word _off052_metatile_indexes_9CC1_8F
- D 0 - - - 0x00BBED 02:9BDD: CF 9C     .word _off052_metatile_indexes_9CCF_90
- D 0 - - - 0x00BBEF 02:9BDF: DD 9C     .word _off052_metatile_indexes_9CDD_91
- D 0 - - - 0x00BBF1 02:9BE1: EB 9C     .word _off052_metatile_indexes_9CEB_92
- D 0 - - - 0x00BBF3 02:9BE3: F9 9C     .word _off052_metatile_indexes_9CF9_93
- D 0 - - - 0x00BBF5 02:9BE5: 07 9D     .word _off052_metatile_indexes_9D07_94
- D 0 - - - 0x00BBF7 02:9BE7: 15 9D     .word _off052_metatile_indexes_9D15_95
- D 0 - - - 0x00BBF9 02:9BE9: 23 9D     .word _off052_metatile_indexes_9D23_96
- D 0 - - - 0x00BBFB 02:9BEB: 31 9D     .word _off052_metatile_indexes_9D31_97
- D 0 - - - 0x00BBFD 02:9BED: 3F 9D     .word _off052_metatile_indexes_9D3F_98



_off052_metatile_indexes_9BEF_80:
- D 0 - I - 0x00BBFF 02:9BEF: 2C        .byte $2C   ; 00 
- D 0 - I - 0x00BC00 02:9BF0: 20        .byte $20   ; 01 
- D 0 - I - 0x00BC01 02:9BF1: 00        .byte $00   ; 02 
- D 0 - I - 0x00BC02 02:9BF2: 2C        .byte $2C   ; 03 
- D 0 - I - 0x00BC03 02:9BF3: 20        .byte $20   ; 04 
- D 0 - I - 0x00BC04 02:9BF4: 60        .byte $60   ; 05 
- D 0 - I - 0x00BC05 02:9BF5: 60        .byte $60   ; 06 
- D 0 - I - 0x00BC06 02:9BF6: 60        .byte $60   ; 07 
- D 0 - I - 0x00BC07 02:9BF7: 60        .byte $60   ; 08 
- D 0 - I - 0x00BC08 02:9BF8: 60        .byte $60   ; 09 
- D 0 - I - 0x00BC09 02:9BF9: 60        .byte $60   ; 0A 
- D 0 - I - 0x00BC0A 02:9BFA: 60        .byte $60   ; 0B 
- D 0 - I - 0x00BC0B 02:9BFB: 60        .byte $60   ; 0C 
- D 0 - I - 0x00BC0C 02:9BFC: 60        .byte $60   ; 0D 



_off052_metatile_indexes_9BFD_81:
- D 0 - I - 0x00BC0D 02:9BFD: 44        .byte $44   ; 00 
- D 0 - I - 0x00BC0E 02:9BFE: 00        .byte $00   ; 01 
- D 0 - I - 0x00BC0F 02:9BFF: 2C        .byte $2C   ; 02 
- D 0 - I - 0x00BC10 02:9C00: 38        .byte $38   ; 03 
- D 0 - I - 0x00BC11 02:9C01: 00        .byte $00   ; 04 
- D 0 - I - 0x00BC12 02:9C02: 60        .byte $60   ; 05 
- D 0 - I - 0x00BC13 02:9C03: 60        .byte $60   ; 06 
- D 0 - I - 0x00BC14 02:9C04: 60        .byte $60   ; 07 
- D 0 - I - 0x00BC15 02:9C05: 60        .byte $60   ; 08 
- D 0 - I - 0x00BC16 02:9C06: 60        .byte $60   ; 09 
- D 0 - I - 0x00BC17 02:9C07: 60        .byte $60   ; 0A 
- D 0 - I - 0x00BC18 02:9C08: 60        .byte $60   ; 0B 
- D 0 - I - 0x00BC19 02:9C09: 60        .byte $60   ; 0C 
- D 0 - I - 0x00BC1A 02:9C0A: 60        .byte $60   ; 0D 



_off052_metatile_indexes_9C0B_82:
- D 0 - I - 0x00BC1B 02:9C0B: 30        .byte $30   ; 00 
- D 0 - I - 0x00BC1C 02:9C0C: 10        .byte $10   ; 01 
- D 0 - I - 0x00BC1D 02:9C0D: 50        .byte $50   ; 02 
- D 0 - I - 0x00BC1E 02:9C0E: 60        .byte $60   ; 03 
- D 0 - I - 0x00BC1F 02:9C0F: 34        .byte $34   ; 04 
- D 0 - I - 0x00BC20 02:9C10: 3C        .byte $3C   ; 05 
- D 0 - I - 0x00BC21 02:9C11: 28        .byte $28   ; 06 
- D 0 - I - 0x00BC22 02:9C12: 10        .byte $10   ; 07 
- D 0 - I - 0x00BC23 02:9C13: 00        .byte $00   ; 08 
- D 0 - I - 0x00BC24 02:9C14: 30        .byte $30   ; 09 
- D 0 - I - 0x00BC25 02:9C15: 40        .byte $40   ; 0A 
- D 0 - I - 0x00BC26 02:9C16: 60        .byte $60   ; 0B 
- D 0 - I - 0x00BC27 02:9C17: 60        .byte $60   ; 0C 
- D 0 - I - 0x00BC28 02:9C18: 60        .byte $60   ; 0D 



_off052_metatile_indexes_9C19_83:
- D 0 - I - 0x00BC29 02:9C19: 2C        .byte $2C   ; 00 
- D 0 - I - 0x00BC2A 02:9C1A: 34        .byte $34   ; 01 
- D 0 - I - 0x00BC2B 02:9C1B: 30        .byte $30   ; 02 
- D 0 - I - 0x00BC2C 02:9C1C: 44        .byte $44   ; 03 
- D 0 - I - 0x00BC2D 02:9C1D: 18        .byte $18   ; 04 
- D 0 - I - 0x00BC2E 02:9C1E: 34        .byte $34   ; 05 
- D 0 - I - 0x00BC2F 02:9C1F: 2C        .byte $2C   ; 06 
- D 0 - I - 0x00BC30 02:9C20: 10        .byte $10   ; 07 
- D 0 - I - 0x00BC31 02:9C21: 3C        .byte $3C   ; 08 
- D 0 - I - 0x00BC32 02:9C22: 58        .byte $58   ; 09 
- D 0 - I - 0x00BC33 02:9C23: 60        .byte $60   ; 0A 
- D 0 - I - 0x00BC34 02:9C24: 60        .byte $60   ; 0B 
- D 0 - I - 0x00BC35 02:9C25: 60        .byte $60   ; 0C 
- D 0 - I - 0x00BC36 02:9C26: 60        .byte $60   ; 0D 



_off052_metatile_indexes_9C27_84:
- D 0 - I - 0x00BC37 02:9C27: 08        .byte $08   ; 00 
- D 0 - I - 0x00BC38 02:9C28: 34        .byte $34   ; 01 
- D 0 - I - 0x00BC39 02:9C29: 28        .byte $28   ; 02 
- D 0 - I - 0x00BC3A 02:9C2A: 48        .byte $48   ; 03 
- D 0 - I - 0x00BC3B 02:9C2B: 2C        .byte $2C   ; 04 
- D 0 - I - 0x00BC3C 02:9C2C: 04        .byte $04   ; 05 
- D 0 - I - 0x00BC3D 02:9C2D: 20        .byte $20   ; 06 
- D 0 - I - 0x00BC3E 02:9C2E: 00        .byte $00   ; 07 
- D 0 - I - 0x00BC3F 02:9C2F: 60        .byte $60   ; 08 
- D 0 - I - 0x00BC40 02:9C30: 60        .byte $60   ; 09 
- D 0 - I - 0x00BC41 02:9C31: 60        .byte $60   ; 0A 
- D 0 - I - 0x00BC42 02:9C32: 60        .byte $60   ; 0B 
- D 0 - I - 0x00BC43 02:9C33: 60        .byte $60   ; 0C 
- D 0 - I - 0x00BC44 02:9C34: 60        .byte $60   ; 0D 



_off052_metatile_indexes_9C35_85:
- D 0 - I - 0x00BC45 02:9C35: 2C        .byte $2C   ; 00 
- D 0 - I - 0x00BC46 02:9C36: 20        .byte $20   ; 01 
- D 0 - I - 0x00BC47 02:9C37: 40        .byte $40   ; 02 
- D 0 - I - 0x00BC48 02:9C38: 40        .byte $40   ; 03 
- D 0 - I - 0x00BC49 02:9C39: 20        .byte $20   ; 04 
- D 0 - I - 0x00BC4A 02:9C3A: 40        .byte $40   ; 05 
- D 0 - I - 0x00BC4B 02:9C3B: 40        .byte $40   ; 06 
- D 0 - I - 0x00BC4C 02:9C3C: 20        .byte $20   ; 07 
- D 0 - I - 0x00BC4D 02:9C3D: 38        .byte $38   ; 08 
- D 0 - I - 0x00BC4E 02:9C3E: 38        .byte $38   ; 09 
- D 0 - I - 0x00BC4F 02:9C3F: 20        .byte $20   ; 0A 
- D 0 - I - 0x00BC50 02:9C40: 60        .byte $60   ; 0B 
- D 0 - I - 0x00BC51 02:9C41: 3C        .byte $3C   ; 0C 
- D 0 - I - 0x00BC52 02:9C42: 5C        .byte $5C   ; 0D 



_off052_metatile_indexes_9C43_86:
- D 0 - I - 0x00BC53 02:9C43: 3C        .byte $3C   ; 00 
- D 0 - I - 0x00BC54 02:9C44: 20        .byte $20   ; 01 
- D 0 - I - 0x00BC55 02:9C45: 08        .byte $08   ; 02 
- D 0 - I - 0x00BC56 02:9C46: 1C        .byte $1C   ; 03 
- D 0 - I - 0x00BC57 02:9C47: 2C        .byte $2C   ; 04 
- D 0 - I - 0x00BC58 02:9C48: 34        .byte $34   ; 05 
- D 0 - I - 0x00BC59 02:9C49: 30        .byte $30   ; 06 
- D 0 - I - 0x00BC5A 02:9C4A: 0C        .byte $0C   ; 07 
- D 0 - I - 0x00BC5B 02:9C4B: 60        .byte $60   ; 08 
- D 0 - I - 0x00BC5C 02:9C4C: 60        .byte $60   ; 09 
- D 0 - I - 0x00BC5D 02:9C4D: 60        .byte $60   ; 0A 
- D 0 - I - 0x00BC5E 02:9C4E: 60        .byte $60   ; 0B 
- D 0 - I - 0x00BC5F 02:9C4F: 60        .byte $60   ; 0C 
- D 0 - I - 0x00BC60 02:9C50: 60        .byte $60   ; 0D 



_off052_metatile_indexes_9C51_87:
- D 0 - I - 0x00BC61 02:9C51: 08        .byte $08   ; 00 
- D 0 - I - 0x00BC62 02:9C52: 1C        .byte $1C   ; 01 
- D 0 - I - 0x00BC63 02:9C53: 00        .byte $00   ; 02 
- D 0 - I - 0x00BC64 02:9C54: 3C        .byte $3C   ; 03 
- D 0 - I - 0x00BC65 02:9C55: 28        .byte $28   ; 04 
- D 0 - I - 0x00BC66 02:9C56: 10        .byte $10   ; 05 
- D 0 - I - 0x00BC67 02:9C57: 40        .byte $40   ; 06 
- D 0 - I - 0x00BC68 02:9C58: 44        .byte $44   ; 07 
- D 0 - I - 0x00BC69 02:9C59: 34        .byte $34   ; 08 
- D 0 - I - 0x00BC6A 02:9C5A: 30        .byte $30   ; 09 
- D 0 - I - 0x00BC6B 02:9C5B: 60        .byte $60   ; 0A 
- D 0 - I - 0x00BC6C 02:9C5C: 60        .byte $60   ; 0B 
- D 0 - I - 0x00BC6D 02:9C5D: 60        .byte $60   ; 0C 
- D 0 - I - 0x00BC6E 02:9C5E: 60        .byte $60   ; 0D 



_off052_metatile_indexes_9C5F_88:
- D 0 - I - 0x00BC6F 02:9C5F: 38        .byte $38   ; 00 
- D 0 - I - 0x00BC70 02:9C60: 1C        .byte $1C   ; 01 
- D 0 - I - 0x00BC71 02:9C61: 20        .byte $20   ; 02 
- D 0 - I - 0x00BC72 02:9C62: 28        .byte $28   ; 03 
- D 0 - I - 0x00BC73 02:9C63: 00        .byte $00   ; 04 
- D 0 - I - 0x00BC74 02:9C64: 0C        .byte $0C   ; 05 
- D 0 - I - 0x00BC75 02:9C65: 10        .byte $10   ; 06 
- D 0 - I - 0x00BC76 02:9C66: 28        .byte $28   ; 07 
- D 0 - I - 0x00BC77 02:9C67: 38        .byte $38   ; 08 
- D 0 - I - 0x00BC78 02:9C68: 1C        .byte $1C   ; 09 
- D 0 - I - 0x00BC79 02:9C69: 20        .byte $20   ; 0A 
- D 0 - I - 0x00BC7A 02:9C6A: 00        .byte $00   ; 0B 
- D 0 - I - 0x00BC7B 02:9C6B: 60        .byte $60   ; 0C 
- D 0 - I - 0x00BC7C 02:9C6C: 60        .byte $60   ; 0D 



_off052_metatile_indexes_9C6D_89:
- D 0 - I - 0x00BC7D 02:9C6D: 38        .byte $38   ; 00 
- D 0 - I - 0x00BC7E 02:9C6E: 20        .byte $20   ; 01 
- D 0 - I - 0x00BC7F 02:9C6F: 44        .byte $44   ; 02 
- D 0 - I - 0x00BC80 02:9C70: 44        .byte $44   ; 03 
- D 0 - I - 0x00BC81 02:9C71: 40        .byte $40   ; 04 
- D 0 - I - 0x00BC82 02:9C72: 04        .byte $04   ; 05 
- D 0 - I - 0x00BC83 02:9C73: 48        .byte $48   ; 06 
- D 0 - I - 0x00BC84 02:9C74: 3C        .byte $3C   ; 07 
- D 0 - I - 0x00BC85 02:9C75: 18        .byte $18   ; 08 
- D 0 - I - 0x00BC86 02:9C76: 1C        .byte $1C   ; 09 
- D 0 - I - 0x00BC87 02:9C77: 60        .byte $60   ; 0A 
- D 0 - I - 0x00BC88 02:9C78: 60        .byte $60   ; 0B 
- D 0 - I - 0x00BC89 02:9C79: 60        .byte $60   ; 0C 
- D 0 - I - 0x00BC8A 02:9C7A: 60        .byte $60   ; 0D 



_off052_metatile_indexes_9C7B_8A:
- D 0 - I - 0x00BC8B 02:9C7B: 30        .byte $30   ; 00 
- D 0 - I - 0x00BC8C 02:9C7C: 5C        .byte $5C   ; 01 
- D 0 - I - 0x00BC8D 02:9C7D: 58        .byte $58   ; 02 
- D 0 - I - 0x00BC8E 02:9C7E: 5C        .byte $5C   ; 03 
- D 0 - I - 0x00BC8F 02:9C7F: 60        .byte $60   ; 04 
- D 0 - I - 0x00BC90 02:9C80: 60        .byte $60   ; 05 
- D 0 - I - 0x00BC91 02:9C81: 60        .byte $60   ; 06 
- D 0 - I - 0x00BC92 02:9C82: 60        .byte $60   ; 07 
- D 0 - I - 0x00BC93 02:9C83: 60        .byte $60   ; 08 
- D 0 - I - 0x00BC94 02:9C84: 60        .byte $60   ; 09 
- D 0 - I - 0x00BC95 02:9C85: 60        .byte $60   ; 0A 
- D 0 - I - 0x00BC96 02:9C86: 60        .byte $60   ; 0B 
- D 0 - I - 0x00BC97 02:9C87: 60        .byte $60   ; 0C 
- D 0 - I - 0x00BC98 02:9C88: 60        .byte $60   ; 0D 



_off052_metatile_indexes_9C89_8B:
- D 0 - I - 0x00BC99 02:9C89: 38        .byte $38   ; 00 
- D 0 - I - 0x00BC9A 02:9C8A: 34        .byte $34   ; 01 
- D 0 - I - 0x00BC9B 02:9C8B: 3C        .byte $3C   ; 02 
- D 0 - I - 0x00BC9C 02:9C8C: 44        .byte $44   ; 03 
- D 0 - I - 0x00BC9D 02:9C8D: 40        .byte $40   ; 04 
- D 0 - I - 0x00BC9E 02:9C8E: 2C        .byte $2C   ; 05 
- D 0 - I - 0x00BC9F 02:9C8F: 34        .byte $34   ; 06 
- D 0 - I - 0x00BCA0 02:9C90: 48        .byte $48   ; 07 
- D 0 - I - 0x00BCA1 02:9C91: 44        .byte $44   ; 08 
- D 0 - I - 0x00BCA2 02:9C92: 1C        .byte $1C   ; 09 
- D 0 - I - 0x00BCA3 02:9C93: 60        .byte $60   ; 0A 
- D 0 - I - 0x00BCA4 02:9C94: 60        .byte $60   ; 0B 
- D 0 - I - 0x00BCA5 02:9C95: 60        .byte $60   ; 0C 
- D 0 - I - 0x00BCA6 02:9C96: 60        .byte $60   ; 0D 



_off052_metatile_indexes_9C97_8C:
- D 0 - I - 0x00BCA7 02:9C97: 34        .byte $34   ; 00 
- D 0 - I - 0x00BCA8 02:9C98: 2C        .byte $2C   ; 01 
- D 0 - I - 0x00BCA9 02:9C99: 00        .byte $00   ; 02 
- D 0 - I - 0x00BCAA 02:9C9A: 1C        .byte $1C   ; 03 
- D 0 - I - 0x00BCAB 02:9C9B: 00        .byte $00   ; 04 
- D 0 - I - 0x00BCAC 02:9C9C: 60        .byte $60   ; 05 
- D 0 - I - 0x00BCAD 02:9C9D: 60        .byte $60   ; 06 
- D 0 - I - 0x00BCAE 02:9C9E: 60        .byte $60   ; 07 
- D 0 - I - 0x00BCAF 02:9C9F: 60        .byte $60   ; 08 
- D 0 - I - 0x00BCB0 02:9CA0: 60        .byte $60   ; 09 
- D 0 - I - 0x00BCB1 02:9CA1: 60        .byte $60   ; 0A 
- D 0 - I - 0x00BCB2 02:9CA2: 60        .byte $60   ; 0B 
- D 0 - I - 0x00BCB3 02:9CA3: 60        .byte $60   ; 0C 
- D 0 - I - 0x00BCB4 02:9CA4: 60        .byte $60   ; 0D 



_off052_metatile_indexes_9CA5_8D:
- D 0 - I - 0x00BCB5 02:9CA5: 40        .byte $40   ; 00 
- D 0 - I - 0x00BCB6 02:9CA6: 00        .byte $00   ; 01 
- D 0 - I - 0x00BCB7 02:9CA7: 28        .byte $28   ; 02 
- D 0 - I - 0x00BCB8 02:9CA8: 44        .byte $44   ; 03 
- D 0 - I - 0x00BCB9 02:9CA9: 60        .byte $60   ; 04 
- D 0 - I - 0x00BCBA 02:9CAA: 28        .byte $28   ; 05 
- D 0 - I - 0x00BCBB 02:9CAB: 00        .byte $00   ; 06 
- D 0 - I - 0x00BCBC 02:9CAC: 24        .byte $24   ; 07 
- D 0 - I - 0x00BCBD 02:9CAD: 10        .byte $10   ; 08 
- D 0 - I - 0x00BCBE 02:9CAE: 60        .byte $60   ; 09 
- D 0 - I - 0x00BCBF 02:9CAF: 08        .byte $08   ; 0A 
- D 0 - I - 0x00BCC0 02:9CB0: 20        .byte $20   ; 0B 
- D 0 - I - 0x00BCC1 02:9CB1: 44        .byte $44   ; 0C 
- D 0 - I - 0x00BCC2 02:9CB2: 58        .byte $58   ; 0D 



_off052_metatile_indexes_9CB3_8E:
- D 0 - I - 0x00BCC3 02:9CB3: 00        .byte $00   ; 00 
- D 0 - I - 0x00BCC4 02:9CB4: 4C        .byte $4C   ; 01 
- D 0 - I - 0x00BCC5 02:9CB5: 10        .byte $10   ; 02 
- D 0 - I - 0x00BCC6 02:9CB6: 30        .byte $30   ; 03 
- D 0 - I - 0x00BCC7 02:9CB7: 18        .byte $18   ; 04 
- D 0 - I - 0x00BCC8 02:9CB8: 10        .byte $10   ; 05 
- D 0 - I - 0x00BCC9 02:9CB9: 3C        .byte $3C   ; 06 
- D 0 - I - 0x00BCCA 02:9CBA: 40        .byte $40   ; 07 
- D 0 - I - 0x00BCCB 02:9CBB: 60        .byte $60   ; 08 
- D 0 - I - 0x00BCCC 02:9CBC: 38        .byte $38   ; 09 
- D 0 - I - 0x00BCCD 02:9CBD: 00        .byte $00   ; 0A 
- D 0 - I - 0x00BCCE 02:9CBE: 3C        .byte $3C   ; 0B 
- D 0 - I - 0x00BCCF 02:9CBF: 24        .byte $24   ; 0C 
- D 0 - I - 0x00BCD0 02:9CC0: 60        .byte $60   ; 0D 



_off052_metatile_indexes_9CC1_8F:
- D 0 - I - 0x00BCD1 02:9CC1: 04        .byte $04   ; 00 
- D 0 - I - 0x00BCD2 02:9CC2: 34        .byte $34   ; 01 
- D 0 - I - 0x00BCD3 02:9CC3: 20        .byte $20   ; 02 
- D 0 - I - 0x00BCD4 02:9CC4: 40        .byte $40   ; 03 
- D 0 - I - 0x00BCD5 02:9CC5: 10        .byte $10   ; 04 
- D 0 - I - 0x00BCD6 02:9CC6: 60        .byte $60   ; 05 
- D 0 - I - 0x00BCD7 02:9CC7: 60        .byte $60   ; 06 
- D 0 - I - 0x00BCD8 02:9CC8: 60        .byte $60   ; 07 
- D 0 - I - 0x00BCD9 02:9CC9: 60        .byte $60   ; 08 
- D 0 - I - 0x00BCDA 02:9CCA: 60        .byte $60   ; 09 
- D 0 - I - 0x00BCDB 02:9CCB: 60        .byte $60   ; 0A 
- D 0 - I - 0x00BCDC 02:9CCC: 60        .byte $60   ; 0B 
- D 0 - I - 0x00BCDD 02:9CCD: 60        .byte $60   ; 0C 
- D 0 - I - 0x00BCDE 02:9CCE: 60        .byte $60   ; 0D 



_off052_metatile_indexes_9CCF_90:
- D 0 - I - 0x00BCDF 02:9CCF: 38        .byte $38   ; 00 
- D 0 - I - 0x00BCE0 02:9CD0: 34        .byte $34   ; 01 
- D 0 - I - 0x00BCE1 02:9CD1: 3C        .byte $3C   ; 02 
- D 0 - I - 0x00BCE2 02:9CD2: 44        .byte $44   ; 03 
- D 0 - I - 0x00BCE3 02:9CD3: 28        .byte $28   ; 04 
- D 0 - I - 0x00BCE4 02:9CD4: 00        .byte $00   ; 05 
- D 0 - I - 0x00BCE5 02:9CD5: 30        .byte $30   ; 06 
- D 0 - I - 0x00BCE6 02:9CD6: 0C        .byte $0C   ; 07 
- D 0 - I - 0x00BCE7 02:9CD7: 60        .byte $60   ; 08 
- D 0 - I - 0x00BCE8 02:9CD8: 60        .byte $60   ; 09 
- D 0 - I - 0x00BCE9 02:9CD9: 60        .byte $60   ; 0A 
- D 0 - I - 0x00BCEA 02:9CDA: 60        .byte $60   ; 0B 
- D 0 - I - 0x00BCEB 02:9CDB: 60        .byte $60   ; 0C 
- D 0 - I - 0x00BCEC 02:9CDC: 60        .byte $60   ; 0D 



_off052_metatile_indexes_9CDD_91:
- D 0 - I - 0x00BCED 02:9CDD: 0C        .byte $0C   ; 00 
- D 0 - I - 0x00BCEE 02:9CDE: 10        .byte $10   ; 01 
- D 0 - I - 0x00BCEF 02:9CDF: 30        .byte $30   ; 02 
- D 0 - I - 0x00BCF0 02:9CE0: 4C        .byte $4C   ; 03 
- D 0 - I - 0x00BCF1 02:9CE1: 10        .byte $10   ; 04 
- D 0 - I - 0x00BCF2 02:9CE2: 3C        .byte $3C   ; 05 
- D 0 - I - 0x00BCF3 02:9CE3: 60        .byte $60   ; 06 
- D 0 - I - 0x00BCF4 02:9CE4: 60        .byte $60   ; 07 
- D 0 - I - 0x00BCF5 02:9CE5: 60        .byte $60   ; 08 
- D 0 - I - 0x00BCF6 02:9CE6: 60        .byte $60   ; 09 
- D 0 - I - 0x00BCF7 02:9CE7: 60        .byte $60   ; 0A 
- D 0 - I - 0x00BCF8 02:9CE8: 60        .byte $60   ; 0B 
- D 0 - I - 0x00BCF9 02:9CE9: 60        .byte $60   ; 0C 
- D 0 - I - 0x00BCFA 02:9CEA: 60        .byte $60   ; 0D 



_off052_metatile_indexes_9CEB_92:
- D 0 - I - 0x00BCFB 02:9CEB: 28        .byte $28   ; 00 
- D 0 - I - 0x00BCFC 02:9CEC: 00        .byte $00   ; 01 
- D 0 - I - 0x00BCFD 02:9CED: 40        .byte $40   ; 02 
- D 0 - I - 0x00BCFE 02:9CEE: 60        .byte $60   ; 03 
- D 0 - I - 0x00BCFF 02:9CEF: 4C        .byte $4C   ; 04 
- D 0 - I - 0x00BD00 02:9CF0: 10        .byte $10   ; 05 
- D 0 - I - 0x00BD01 02:9CF1: 18        .byte $18   ; 06 
- D 0 - I - 0x00BD02 02:9CF2: 00        .byte $00   ; 07 
- D 0 - I - 0x00BD03 02:9CF3: 40        .byte $40   ; 08 
- D 0 - I - 0x00BD04 02:9CF4: 60        .byte $60   ; 09 
- D 0 - I - 0x00BD05 02:9CF5: 60        .byte $60   ; 0A 
- D 0 - I - 0x00BD06 02:9CF6: 60        .byte $60   ; 0B 
- D 0 - I - 0x00BD07 02:9CF7: 60        .byte $60   ; 0C 
- D 0 - I - 0x00BD08 02:9CF8: 60        .byte $60   ; 0D 



_off052_metatile_indexes_9CF9_93:
- D 0 - I - 0x00BD09 02:9CF9: 0C        .byte $0C   ; 00 
- D 0 - I - 0x00BD0A 02:9CFA: 00        .byte $00   ; 01 
- D 0 - I - 0x00BD0B 02:9CFB: 28        .byte $28   ; 02 
- D 0 - I - 0x00BD0C 02:9CFC: 28        .byte $28   ; 03 
- D 0 - I - 0x00BD0D 02:9CFD: 00        .byte $00   ; 04 
- D 0 - I - 0x00BD0E 02:9CFE: 40        .byte $40   ; 05 
- D 0 - I - 0x00BD0F 02:9CFF: 60        .byte $60   ; 06 
- D 0 - I - 0x00BD10 02:9D00: 60        .byte $60   ; 07 
- D 0 - I - 0x00BD11 02:9D01: 60        .byte $60   ; 08 
- D 0 - I - 0x00BD12 02:9D02: 60        .byte $60   ; 09 
- D 0 - I - 0x00BD13 02:9D03: 60        .byte $60   ; 0A 
- D 0 - I - 0x00BD14 02:9D04: 60        .byte $60   ; 0B 
- D 0 - I - 0x00BD15 02:9D05: 60        .byte $60   ; 0C 
- D 0 - I - 0x00BD16 02:9D06: 60        .byte $60   ; 0D 



_off052_metatile_indexes_9D07_94:
- D 0 - I - 0x00BD17 02:9D07: 38        .byte $38   ; 00 
- D 0 - I - 0x00BD18 02:9D08: 1C        .byte $1C   ; 01 
- D 0 - I - 0x00BD19 02:9D09: 34        .byte $34   ; 02 
- D 0 - I - 0x00BD1A 02:9D0A: 10        .byte $10   ; 03 
- D 0 - I - 0x00BD1B 02:9D0B: 30        .byte $30   ; 04 
- D 0 - I - 0x00BD1C 02:9D0C: 20        .byte $20   ; 05 
- D 0 - I - 0x00BD1D 02:9D0D: 54        .byte $54   ; 06 
- D 0 - I - 0x00BD1E 02:9D0E: 60        .byte $60   ; 07 
- D 0 - I - 0x00BD1F 02:9D0F: 60        .byte $60   ; 08 
- D 0 - I - 0x00BD20 02:9D10: 60        .byte $60   ; 09 
- D 0 - I - 0x00BD21 02:9D11: 60        .byte $60   ; 0A 
- D 0 - I - 0x00BD22 02:9D12: 60        .byte $60   ; 0B 
- D 0 - I - 0x00BD23 02:9D13: 60        .byte $60   ; 0C 
- D 0 - I - 0x00BD24 02:9D14: 60        .byte $60   ; 0D 



_off052_metatile_indexes_9D15_95:
- D 0 - I - 0x00BD25 02:9D15: 1C        .byte $1C   ; 00 
- D 0 - I - 0x00BD26 02:9D16: 34        .byte $34   ; 01 
- D 0 - I - 0x00BD27 02:9D17: 48        .byte $48   ; 02 
- D 0 - I - 0x00BD28 02:9D18: 40        .byte $40   ; 03 
- D 0 - I - 0x00BD29 02:9D19: 44        .byte $44   ; 04 
- D 0 - I - 0x00BD2A 02:9D1A: 34        .byte $34   ; 05 
- D 0 - I - 0x00BD2B 02:9D1B: 30        .byte $30   ; 06 
- D 0 - I - 0x00BD2C 02:9D1C: 60        .byte $60   ; 07 
- D 0 - I - 0x00BD2D 02:9D1D: 60        .byte $60   ; 08 
- D 0 - I - 0x00BD2E 02:9D1E: 60        .byte $60   ; 09 
- D 0 - I - 0x00BD2F 02:9D1F: 60        .byte $60   ; 0A 
- D 0 - I - 0x00BD30 02:9D20: 60        .byte $60   ; 0B 
- D 0 - I - 0x00BD31 02:9D21: 60        .byte $60   ; 0C 
- D 0 - I - 0x00BD32 02:9D22: 60        .byte $60   ; 0D 



_off052_metatile_indexes_9D23_96:
- D 0 - I - 0x00BD33 02:9D23: 60        .byte $60   ; 00 
- D 0 - I - 0x00BD34 02:9D24: 38        .byte $38   ; 01 
- D 0 - I - 0x00BD35 02:9D25: 00        .byte $00   ; 02 
- D 0 - I - 0x00BD36 02:9D26: 40        .byte $40   ; 03 
- D 0 - I - 0x00BD37 02:9D27: 40        .byte $40   ; 04 
- D 0 - I - 0x00BD38 02:9D28: 60        .byte $60   ; 05 
- D 0 - I - 0x00BD39 02:9D29: 60        .byte $60   ; 06 
- D 0 - I - 0x00BD3A 02:9D2A: 60        .byte $60   ; 07 
- D 0 - I - 0x00BD3B 02:9D2B: 60        .byte $60   ; 08 
- D 0 - I - 0x00BD3C 02:9D2C: 28        .byte $28   ; 09 
- D 0 - I - 0x00BD3D 02:9D2D: 00        .byte $00   ; 0A 
- D 0 - I - 0x00BD3E 02:9D2E: 30        .byte $30   ; 0B 
- D 0 - I - 0x00BD3F 02:9D2F: 0C        .byte $0C   ; 0C 
- D 0 - I - 0x00BD40 02:9D30: 60        .byte $60   ; 0D 



_off052_metatile_indexes_9D31_97:
- D 0 - I - 0x00BD41 02:9D31: 60        .byte $60   ; 00 
- D 0 - I - 0x00BD42 02:9D32: 60        .byte $60   ; 01 
- D 0 - I - 0x00BD43 02:9D33: 60        .byte $60   ; 02 
- D 0 - I - 0x00BD44 02:9D34: 60        .byte $60   ; 03 
- D 0 - I - 0x00BD45 02:9D35: 60        .byte $60   ; 04 
- D 0 - I - 0x00BD46 02:9D36: 60        .byte $60   ; 05 
- D 0 - I - 0x00BD47 02:9D37: 60        .byte $60   ; 06 
- D 0 - I - 0x00BD48 02:9D38: 60        .byte $60   ; 07 
- D 0 - I - 0x00BD49 02:9D39: 60        .byte $60   ; 08 
- D 0 - I - 0x00BD4A 02:9D3A: 60        .byte $60   ; 09 
- D 0 - I - 0x00BD4B 02:9D3B: 60        .byte $60   ; 0A 
- D 0 - I - 0x00BD4C 02:9D3C: 60        .byte $60   ; 0B 
- D 0 - I - 0x00BD4D 02:9D3D: 60        .byte $60   ; 0C 
- D 0 - I - 0x00BD4E 02:9D3E: 60        .byte $60   ; 0D 



_off052_metatile_indexes_9D3F_98:
- D 0 - I - 0x00BD4F 02:9D3F: 60        .byte $60   ; 00 
- D 0 - I - 0x00BD50 02:9D40: 60        .byte $60   ; 01 
- D 0 - I - 0x00BD51 02:9D41: 3C        .byte $3C   ; 02 
- D 0 - I - 0x00BD52 02:9D42: 10        .byte $10   ; 03 
- D 0 - I - 0x00BD53 02:9D43: 0C        .byte $0C   ; 04 
- D 0 - I - 0x00BD54 02:9D44: 60        .byte $60   ; 05 
- D 0 - I - 0x00BD55 02:9D45: 00        .byte $00   ; 06 
- D 0 - I - 0x00BD56 02:9D46: 28        .byte $28   ; 07 
- D 0 - I - 0x00BD57 02:9D47: 10        .byte $10   ; 08 
- D 0 - I - 0x00BD58 02:9D48: 3C        .byte $3C   ; 09 
- D 0 - I - 0x00BD59 02:9D49: 44        .byte $44   ; 0A 
- D 0 - I - 0x00BD5A 02:9D4A: 60        .byte $60   ; 0B 
- D 0 - I - 0x00BD5B 02:9D4B: 60        .byte $60   ; 0C 
- D 0 - I - 0x00BD5C 02:9D4C: 60        .byte $60   ; 0D 



_off044_9D4D_00:
- D 0 - I - 0x00BD5D 02:9D4D: 02        .byte $02   ; 
- D 0 - I - 0x00BD5E 02:9D4E: 16        .byte $16   ; 
- D 0 - I - 0x00BD5F 02:9D4F: FF        .byte $FF   ; 



_off044_9D50_01:
- D 0 - I - 0x00BD60 02:9D50: 0A        .byte $0A   ; 
- D 0 - I - 0x00BD61 02:9D51: 16        .byte $16   ; 
- D 0 - I - 0x00BD62 02:9D52: FF        .byte $FF   ; 



_off044_9D53_02:
- D 0 - I - 0x00BD63 02:9D53: 00        .byte $00   ; 
- D 0 - I - 0x00BD64 02:9D54: 30        .byte $30   ; 
- D 0 - I - 0x00BD65 02:9D55: FF        .byte $FF   ; 



_off044_9D56_03:
- D 0 - I - 0x00BD66 02:9D56: 08        .byte $08   ; 
- D 0 - I - 0x00BD67 02:9D57: 30        .byte $30   ; 
- D 0 - I - 0x00BD68 02:9D58: FF        .byte $FF   ; 



_off044_9D59_04:
- D 0 - I - 0x00BD69 02:9D59: 00        .byte $00   ; 
- D 0 - I - 0x00BD6A 02:9D5A: 28        .byte $28   ; 
- D 0 - I - 0x00BD6B 02:9D5B: FF        .byte $FF   ; 



_off044_9D5C_05:
- D 0 - I - 0x00BD6C 02:9D5C: 08        .byte $08   ; 
- D 0 - I - 0x00BD6D 02:9D5D: 28        .byte $28   ; 
- D 0 - I - 0x00BD6E 02:9D5E: FF        .byte $FF   ; 



_off044_9D5F_06:
- D 0 - I - 0x00BD6F 02:9D5F: 02        .byte $02   ; 
- D 0 - I - 0x00BD70 02:9D60: 22        .byte $22   ; 
- D 0 - I - 0x00BD71 02:9D61: FF        .byte $FF   ; 



_off044_9D62_07:
- D 0 - I - 0x00BD72 02:9D62: 0A        .byte $0A   ; 
- D 0 - I - 0x00BD73 02:9D63: 22        .byte $22   ; 
- D 0 - I - 0x00BD74 02:9D64: FF        .byte $FF   ; 



_off044_9D65_08:
- D 0 - I - 0x00BD75 02:9D65: 0E        .byte $0E   ; 
- D 0 - I - 0x00BD76 02:9D66: 22        .byte $22   ; 
- D 0 - I - 0x00BD77 02:9D67: FF        .byte $FF   ; 



_off044_9D68_09:
- D 0 - I - 0x00BD78 02:9D68: 06        .byte $06   ; 
- D 0 - I - 0x00BD79 02:9D69: 22        .byte $22   ; 
- D 0 - I - 0x00BD7A 02:9D6A: FF        .byte $FF   ; 



_off044_9D6B_0A:
- D 0 - I - 0x00BD7B 02:9D6B: 00        .byte $00   ; 
- D 0 - I - 0x00BD7C 02:9D6C: 18        .byte $18   ; 
- D 0 - I - 0x00BD7D 02:9D6D: FF        .byte $FF   ; 



_off044_9D6E_0B:
- D 0 - I - 0x00BD7E 02:9D6E: 08        .byte $08   ; 
- D 0 - I - 0x00BD7F 02:9D6F: 18        .byte $18   ; 
- D 0 - I - 0x00BD80 02:9D70: FF        .byte $FF   ; 



_off044_9D71_0C:
- D 0 - I - 0x00BD81 02:9D71: 04        .byte $04   ; 
- D 0 - I - 0x00BD82 02:9D72: 18        .byte $18   ; 
- D 0 - I - 0x00BD83 02:9D73: FF        .byte $FF   ; 



_off044_9D74_0D:
- D 0 - I - 0x00BD84 02:9D74: 0C        .byte $0C   ; 
- D 0 - I - 0x00BD85 02:9D75: 18        .byte $18   ; 
- D 0 - I - 0x00BD86 02:9D76: FF        .byte $FF   ; 



_off044_9D77_0E:
- D 0 - I - 0x00BD87 02:9D77: 0E        .byte $0E   ; 
- D 0 - I - 0x00BD88 02:9D78: 16        .byte $16   ; 
- D 0 - I - 0x00BD89 02:9D79: FF        .byte $FF   ; 



_off044_9D7A_0F:
- D 0 - I - 0x00BD8A 02:9D7A: 06        .byte $06   ; 
- D 0 - I - 0x00BD8B 02:9D7B: 16        .byte $16   ; 
- D 0 - I - 0x00BD8C 02:9D7C: FF        .byte $FF   ; 



_off044_9D7D_10:
- D 0 - I - 0x00BD8D 02:9D7D: 04        .byte $04   ; 
- D 0 - I - 0x00BD8E 02:9D7E: 30        .byte $30   ; 
- D 0 - I - 0x00BD8F 02:9D7F: FF        .byte $FF   ; 



_off044_9D80_11:
- D 0 - I - 0x00BD90 02:9D80: 0C        .byte $0C   ; 
- D 0 - I - 0x00BD91 02:9D81: 30        .byte $30   ; 
- D 0 - I - 0x00BD92 02:9D82: FF        .byte $FF   ; 



_off044_9D83_12:
- D 0 - I - 0x00BD93 02:9D83: 04        .byte $04   ; 
- D 0 - I - 0x00BD94 02:9D84: 50        .byte $50   ; 
- D 0 - I - 0x00BD95 02:9D85: 06        .byte $06   ; 
- D 0 - I - 0x00BD96 02:9D86: 2D        .byte $2D   ; 
- D 0 - I - 0x00BD97 02:9D87: FF        .byte $FF   ; 



_off044_9D88_13:
- D 0 - I - 0x00BD98 02:9D88: 0E        .byte $0E   ; 
- D 0 - I - 0x00BD99 02:9D89: 2D        .byte $2D   ; 
- D 0 - I - 0x00BD9A 02:9D8A: 0C        .byte $0C   ; 
- D 0 - I - 0x00BD9B 02:9D8B: 50        .byte $50   ; 
- D 0 - I - 0x00BD9C 02:9D8C: FF        .byte $FF   ; 



_off044_9D8D_14:
- - - - - - 0x00BD9D 02:9D8D: 04        .byte $04   ; 
- - - - - - 0x00BD9E 02:9D8E: 20        .byte $20   ; 
- - - - - - 0x00BD9F 02:9D8F: 02        .byte $02   ; 
- - - - - - 0x00BDA0 02:9D90: 2D        .byte $2D   ; 
- - - - - - 0x00BDA1 02:9D91: FF        .byte $FF   ; 



_off044_9D92_15:
- D 0 - I - 0x00BDA2 02:9D92: 0A        .byte $0A   ; 
- D 0 - I - 0x00BDA3 02:9D93: 2D        .byte $2D   ; 
- D 0 - I - 0x00BDA4 02:9D94: 0C        .byte $0C   ; 
- D 0 - I - 0x00BDA5 02:9D95: 20        .byte $20   ; 
- D 0 - I - 0x00BDA6 02:9D96: FF        .byte $FF   ; 



off_9D97_00:
;                                                  +---------- ppu address lo
;                                                  |    +----- tile
;                                                  |    |
- D 0 - I - 0x00BDA7 02:9D97: 07        .byte < $2307, $A7   ; 
- D 0 - I - 0x00BDA9 02:9D99: 08        .byte < $2308, $BC   ; 
- D 0 - I - 0x00BDAB 02:9D9B: 17        .byte < $2317, $00   ; 
- D 0 - I - 0x00BDAD 02:9D9D: 18        .byte < $2318, $00   ; 
- D 0 - I - 0x00BDAF 02:9D9F: F0        .byte < $23F0, $00   ; 
- D 0 - I - 0x00BDB1 02:9DA1: F1        .byte < $23F1, $00   ; 
- D 0 - I - 0x00BDB3 02:9DA3: F2        .byte < $23F2, $00   ; 
- D 0 - I - 0x00BDB5 02:9DA5: F3        .byte < $23F3, $00   ; 
- D 0 - I - 0x00BDB7 02:9DA7: F4        .byte < $23F4, $AA   ; 
- D 0 - I - 0x00BDB9 02:9DA9: F5        .byte < $23F5, $AA   ; 
- D 0 - I - 0x00BDBB 02:9DAB: F6        .byte < $23F6, $AA   ; 
- D 0 - I - 0x00BDBD 02:9DAD: F7        .byte < $23F7, $AA   ; 



off_9DAF_01:
;                                                  +---------- ppu address lo
;                                                  |    +----- tile
;                                                  |    |
- D 0 - I - 0x00BDBF 02:9DAF: 07        .byte < $2307, $00   ; 
- D 0 - I - 0x00BDC1 02:9DB1: 08        .byte < $2308, $00   ; 
- D 0 - I - 0x00BDC3 02:9DB3: 17        .byte < $2317, $A7   ; 
- D 0 - I - 0x00BDC5 02:9DB5: 18        .byte < $2318, $BC   ; 
- D 0 - I - 0x00BDC7 02:9DB7: F0        .byte < $23F0, $AA   ; 
- D 0 - I - 0x00BDC9 02:9DB9: F1        .byte < $23F1, $AA   ; 
- D 0 - I - 0x00BDCB 02:9DBB: F2        .byte < $23F2, $AA   ; 
- D 0 - I - 0x00BDCD 02:9DBD: F3        .byte < $23F3, $AA   ; 
- D 0 - I - 0x00BDCF 02:9DBF: F4        .byte < $23F4, $00   ; 
- D 0 - I - 0x00BDD1 02:9DC1: F5        .byte < $23F5, $00   ; 
- D 0 - I - 0x00BDD3 02:9DC3: F6        .byte < $23F6, $00   ; 
- D 0 - I - 0x00BDD5 02:9DC5: F7        .byte < $23F7, $00   ; 



off_9DC7_02:
;                                                  +---------- ppu address lo
;                                                  |    +----- tile
;                                                  |    |
- D 0 - I - 0x00BDD7 02:9DC7: 07        .byte < $2307, $00   ; 
- D 0 - I - 0x00BDD9 02:9DC9: 08        .byte < $2308, $00   ; 
- D 0 - I - 0x00BDDB 02:9DCB: 17        .byte < $2317, $00   ; 
- D 0 - I - 0x00BDDD 02:9DCD: 18        .byte < $2318, $00   ; 
- D 0 - I - 0x00BDDF 02:9DCF: F0        .byte < $23F0, $00   ; 
- D 0 - I - 0x00BDE1 02:9DD1: F1        .byte < $23F1, $00   ; 
- D 0 - I - 0x00BDE3 02:9DD3: F2        .byte < $23F2, $00   ; 
- D 0 - I - 0x00BDE5 02:9DD5: F3        .byte < $23F3, $00   ; 
- D 0 - I - 0x00BDE7 02:9DD7: F4        .byte < $23F4, $00   ; 
- D 0 - I - 0x00BDE9 02:9DD9: F5        .byte < $23F5, $00   ; 
- D 0 - I - 0x00BDEB 02:9DDB: F6        .byte < $23F6, $00   ; 
- D 0 - I - 0x00BDED 02:9DDD: F7        .byte < $23F7, $00   ; 



off_9DDF_00:
;                                              +--------------- 
;                                              |    +---------- 
;                                              |    |    +----- 
;                                              |    |    |
- D 0 - I - 0x00BDEF 02:9DDF: 77        .byte $77, $C0, $00   ; 
- D 0 - I - 0x00BDF2 02:9DE2: 77        .byte $77, $A8, $01   ; 



off_9DE5_01:
;                                              +--------------- 
;                                              |    +---------- 
;                                              |    |    +----- 
;                                              |    |    |
- D 0 - I - 0x00BDF5 02:9DE5: 53        .byte $53, $C0, $02   ; 
- D 0 - I - 0x00BDF8 02:9DE8: 3B        .byte $3B, $C0, $03   ; 



off_9DEB_02:
;                                              +--------------- 
;                                              |    +---------- 
;                                              |    |    +----- 
;                                              |    |    |
- D 0 - I - 0x00BDFB 02:9DEB: 63        .byte $63, $3C, $04   ; 
- D 0 - I - 0x00BDFE 02:9DEE: 57        .byte $57, $48, $05   ; 
- D 0 - I - 0x00BE01 02:9DF1: 4B        .byte $4B, $54, $06   ; 



off_9DF4_00:
- D 0 - I - 0x00BE04 02:9DF4: 06        .byte $06   ; 00 
- D 0 - I - 0x00BE05 02:9DF5: 07        .byte $07   ; 10 
- D 0 - I - 0x00BE06 02:9DF6: 06        .byte $06   ; 20 
- D 0 - I - 0x00BE07 02:9DF7: 07        .byte $07   ; 30 
- D 0 - I - 0x00BE08 02:9DF8: 05        .byte $05   ; 40 
- D 0 - I - 0x00BE09 02:9DF9: 04        .byte $04   ; 50 
- D 0 - I - 0x00BE0A 02:9DFA: 05        .byte $05   ; 60 
- - - - - - 0x00BE0B 02:9DFB: 02        .byte $02   ; 70 



off_9DFC_01:
- D 0 - I - 0x00BE0C 02:9DFC: 01        .byte $01   ; 00 
- D 0 - I - 0x00BE0D 02:9DFD: 06        .byte $06   ; 10 
- D 0 - I - 0x00BE0E 02:9DFE: 07        .byte $07   ; 20 
- D 0 - I - 0x00BE0F 02:9DFF: 06        .byte $06   ; 30 
- D 0 - I - 0x00BE10 02:9E00: 06        .byte $06   ; 40 
- - - - - - 0x00BE11 02:9E01: 01        .byte $01   ; 50 
- - - - - - 0x00BE12 02:9E02: 03        .byte $03   ; 60 
- - - - - - 0x00BE13 02:9E03: 05        .byte $05   ; 70 



off_9E04_02:
- D 0 - I - 0x00BE14 02:9E04: 0C        .byte $0C   ; 00 
- D 0 - I - 0x00BE15 02:9E05: 09        .byte $09   ; 10 
- D 0 - I - 0x00BE16 02:9E06: 0C        .byte $0C   ; 20 
- D 0 - I - 0x00BE17 02:9E07: 0C        .byte $0C   ; 30 
- D 0 - I - 0x00BE18 02:9E08: 0B        .byte $0B   ; 40 
- D 0 - I - 0x00BE19 02:9E09: 08        .byte $08   ; 50 
- D 0 - I - 0x00BE1A 02:9E0A: 0A        .byte $0A   ; 60 
- D 0 - I - 0x00BE1B 02:9E0B: 09        .byte $09   ; 70 



off_9E0C_03:
- D 0 - I - 0x00BE1C 02:9E0C: 0B        .byte $0B   ; 00 
- D 0 - I - 0x00BE1D 02:9E0D: 0C        .byte $0C   ; 10 
- D 0 - I - 0x00BE1E 02:9E0E: 0D        .byte $0D   ; 20 
- D 0 - I - 0x00BE1F 02:9E0F: 0D        .byte $0D   ; 30 
- D 0 - I - 0x00BE20 02:9E10: 0D        .byte $0D   ; 40 
- D 0 - I - 0x00BE21 02:9E11: 0D        .byte $0D   ; 50 
- D 0 - I - 0x00BE22 02:9E12: 0D        .byte $0D   ; 60 
- D 0 - I - 0x00BE23 02:9E13: 0B        .byte $0B   ; 70 



off_9E14_04:
- D 0 - I - 0x00BE24 02:9E14: 13        .byte $13   ; 00 
- D 0 - I - 0x00BE25 02:9E15: 14        .byte $14   ; 10 
- - - - - - 0x00BE26 02:9E16: 13        .byte $13   ; 20 
- - - - - - 0x00BE27 02:9E17: 0F        .byte $0F   ; 30 
- - - - - - 0x00BE28 02:9E18: 15        .byte $15   ; 40 
- - - - - - 0x00BE29 02:9E19: 10        .byte $10   ; 50 
- - - - - - 0x00BE2A 02:9E1A: 11        .byte $11   ; 60 
- - - - - - 0x00BE2B 02:9E1B: 12        .byte $12   ; 70 



off_9E1C_05:
- D 0 - I - 0x00BE2C 02:9E1C: 15        .byte $15   ; 00 
- D 0 - I - 0x00BE2D 02:9E1D: 15        .byte $15   ; 10 
- D 0 - I - 0x00BE2E 02:9E1E: 10        .byte $10   ; 20 
- D 0 - I - 0x00BE2F 02:9E1F: 16        .byte $16   ; 30 
- - - - - - 0x00BE30 02:9E20: 11        .byte $11   ; 40 
- - - - - - 0x00BE31 02:9E21: 13        .byte $13   ; 50 
- - - - - - 0x00BE32 02:9E22: 14        .byte $14   ; 60 
- - - - - - 0x00BE33 02:9E23: 0F        .byte $0F   ; 70 



off_9E24_06:
- D 0 - I - 0x00BE34 02:9E24: 16        .byte $16   ; 00 
- - - - - - 0x00BE35 02:9E25: 10        .byte $10   ; 10 
- - - - - - 0x00BE36 02:9E26: 14        .byte $14   ; 20 
- - - - - - 0x00BE37 02:9E27: 12        .byte $12   ; 30 
- - - - - - 0x00BE38 02:9E28: 0F        .byte $0F   ; 40 
- - - - - - 0x00BE39 02:9E29: 16        .byte $16   ; 50 
- - - - - - 0x00BE3A 02:9E2A: 12        .byte $12   ; 60 
- - - - - - 0x00BE3B 02:9E2B: 13        .byte $13   ; 70 


; bzk garbage
- - - - - - 0x00BE3C 02:9E2C: FF        .byte $FF, $FF, $FF, $FF   ; 



sub_0x00BE40:
; bzk optimize
C - - - - - 0x00BE40 02:9E30: 4C 3C 9E  JMP loc_9E3C



sub_0x00BE43:
; bzk optimize
C - - - - - 0x00BE43 02:9E33: 4C 94 9E  JMP loc_9E94



sub_0x00BE46:
; bzk optimize
C - - - - - 0x00BE46 02:9E36: 4C CF 9E  JMP loc_9ECF



sub_0x00BE49_draw_options:
; bzk optimize
C - - - - - 0x00BE49 02:9E39: 4C 4F 9F  JMP loc_9F4F_draw_options



loc_9E3C:
C D 0 - - - 0x00BE4C 02:9E3C: AE 41 05  LDX ram_0541_t01_plr_index
C - - - - - 0x00BE4F 02:9E3F: 86 A8     STX ram_plr_index
; bzk optimize, LDY,X
C - - - - - 0x00BE51 02:9E41: BD D8 05  LDA ram_05D8_plr,X
C - - - - - 0x00BE54 02:9E44: A8        TAY
C - - - - - 0x00BE55 02:9E45: B9 05 9A  LDA tbl_9A05_city,Y
C - - - - - 0x00BE58 02:9E48: 85 3C     STA ram_city
C - - - - - 0x00BE5A 02:9E4A: 86 67     STX ram_0067_t06_plr_index
; 
C - - - - - 0x00BE5C 02:9E4C: AD DC 05  LDA ram_05DC_flags
C - - - - - 0x00BE5F 02:9E4F: 29 FE     AND #con_05DC_player_index ^ $FF
C - - - - - 0x00BE61 02:9E51: 05 67     ORA ram_0067_t06_plr_index
C - - - - - 0x00BE63 02:9E53: 8D DC 05  STA ram_05DC_flags
C - - - - - 0x00BE66 02:9E56: 10 2B     BPL bra_9E83
; if con_05DC_has_player_index
C - - - - - 0x00BE68 02:9E58: 09 40     ORA #con_05DC_40
C - - - - - 0x00BE6A 02:9E5A: 8D DC 05  STA ram_05DC_flags
C - - - - - 0x00BE6D 02:9E5D: 29 20     AND #con_05DC_20
C - - - - - 0x00BE6F 02:9E5F: D0 22     BNE bra_9E83
C - - - - - 0x00BE71 02:9E61: AD DD 05  LDA ram_05DD_obj
C - - - - - 0x00BE74 02:9E64: 30 0A     BMI bra_9E70
C - - - - - 0x00BE76 02:9E66: AD DE 05  LDA ram_05DD_obj + $01
C - - - - - 0x00BE79 02:9E69: 30 05     BMI bra_9E70
C - - - - - 0x00BE7B 02:9E6B: AD DF 05  LDA ram_05DD_obj + $02
C - - - - - 0x00BE7E 02:9E6E: 10 13     BPL bra_9E83
bra_9E70:
C - - - - - 0x00BE80 02:9E70: AD DC 05  LDA ram_05DC_flags
C - - - - - 0x00BE83 02:9E73: 29 DF     AND #con_05DC_20 ^ $FF
C - - - - - 0x00BE85 02:9E75: 8D DC 05  STA ram_05DC_flags
; 
C - - - - - 0x00BE88 02:9E78: A9 00     LDA #$00
C - - - - - 0x00BE8A 02:9E7A: 8D F5 05  STA ram_05F5_flag
C - - - - - 0x00BE8D 02:9E7D: A9 03     LDA #$03
C - - - - - 0x00BE8F 02:9E7F: 85 3C     STA ram_city
C - - - - - 0x00BE91 02:9E81: D0 10     BNE bra_9E93_RTS    ; jmp
bra_9E83:
; clear flag
C - - - - - 0x00BE93 02:9E83: AD DC 05  LDA ram_05DC_flags
C - - - - - 0x00BE96 02:9E86: 29 7F     AND #con_05DC_has_player_index ^ $FF
C - - - - - 0x00BE98 02:9E88: 8D DC 05  STA ram_05DC_flags
; 
C - - - - - 0x00BE9B 02:9E8B: BD D6 05  LDA ram_05D6_plr,X
C - - - - - 0x00BE9E 02:9E8E: 10 03     BPL bra_9E93_RTS
C - - - - - 0x00BEA0 02:9E90: 9D DA 05  STA ram_05DA_plr,X
bra_9E93_RTS:
C - - - - - 0x00BEA3 02:9E93: 60        RTS



loc_9E94:
C D 0 - - - 0x00BEA4 02:9E94: AE 41 05  LDX ram_0541_t01_plr_index
C - - - - - 0x00BEA7 02:9E97: BD D6 05  LDA ram_05D6_plr,X
C - - - - - 0x00BEAA 02:9E9A: 0A        ASL
C - - - - - 0x00BEAB 02:9E9B: AA        TAX
C - - - - - 0x00BEAC 02:9E9C: BD D9 99  LDA tbl_99D9,X
C - - - - - 0x00BEAF 02:9E9F: 85 5B     STA ram_005B_t05_data
C - - - - - 0x00BEB1 02:9EA1: BD DA 99  LDA tbl_99D9 + $01,X
C - - - - - 0x00BEB4 02:9EA4: 85 5C     STA ram_005B_t05_data + $01
C - - - - - 0x00BEB6 02:9EA6: A0 00     LDY #$00
C - - - - - 0x00BEB8 02:9EA8: B1 5B     LDA (ram_005B_t05_data),Y
C - - - - - 0x00BEBA 02:9EAA: AE 41 05  LDX ram_0541_t01_plr_index
C - - - - - 0x00BEBD 02:9EAD: 9D D8 05  STA ram_05D8_plr,X
C - - - - - 0x00BEC0 02:9EB0: 0A        ASL
C - - - - - 0x00BEC1 02:9EB1: AA        TAX
C - - - - - 0x00BEC2 02:9EB2: C8        INY ; 01
; bzk optimize, delete STA, move LDA before 0x00BED8
C - - - - - 0x00BEC3 02:9EB3: B1 5B     LDA (ram_005B_t05_data),Y
C - - - - - 0x00BEC5 02:9EB5: 85 69     STA ram_0069_t38
; 
C - - - - - 0x00BEC7 02:9EB7: BD 1B 9A  LDA tbl_9A1B_map_cursor_position,X
C - - - - - 0x00BECA 02:9EBA: 8D 8D 04  STA ram_pos_Y_lo_obj + $05
C - - - - - 0x00BECD 02:9EBD: BD 1C 9A  LDA tbl_9A1B_map_cursor_position + $01,X
C - - - - - 0x00BED0 02:9EC0: 8D 66 04  STA ram_pos_X_lo_obj + $05
C - - - - - 0x00BED3 02:9EC3: AE 41 05  LDX ram_0541_t01_plr_index
C - - - - - 0x00BED6 02:9EC6: A5 69     LDA ram_0069_t38
C - - - - - 0x00BED8 02:9EC8: 9D 65 05  STA ram_0565_obj,X
; bzk optimize, JMP
C - - - - - 0x00BEDB 02:9ECB: 20 29 9F  JSR sub_9F29
C - - - - - 0x00BEDE 02:9ECE: 60        RTS



loc_9ECF:
C D 0 - - - 0x00BEDF 02:9ECF: AE 41 05  LDX ram_0541_t01_plr_index
C - - - - - 0x00BEE2 02:9ED2: BD D6 05  LDA ram_05D6_plr,X
C - - - - - 0x00BEE5 02:9ED5: 9D DA 05  STA ram_05DA_plr,X
C - - - - - 0x00BEE8 02:9ED8: 0A        ASL
C - - - - - 0x00BEE9 02:9ED9: AA        TAX
C - - - - - 0x00BEEA 02:9EDA: BD D9 99  LDA tbl_99D9,X
C - - - - - 0x00BEED 02:9EDD: 85 5B     STA ram_005B_t06_data
C - - - - - 0x00BEEF 02:9EDF: BD DA 99  LDA tbl_99D9 + $01,X
C - - - - - 0x00BEF2 02:9EE2: 85 5C     STA ram_005B_t06_data + $01
C - - - - - 0x00BEF4 02:9EE4: AD 43 05  LDA ram_0541_obj_flags + $02
C - - - - - 0x00BEF7 02:9EE7: 0A        ASL
C - - - - - 0x00BEF8 02:9EE8: A8        TAY
C - - - - - 0x00BEF9 02:9EE9: B1 5B     LDA (ram_005B_t06_data),Y
C - - - - - 0x00BEFB 02:9EEB: 85 67     STA ram_0067_t07
C - - - - - 0x00BEFD 02:9EED: C8        INY
C - - - - - 0x00BEFE 02:9EEE: B1 5B     LDA (ram_005B_t06_data),Y
; bzk optimize, delete STA + LDA
C - - - - - 0x00BF00 02:9EF0: 85 68     STA ram_0068_t04
C - - - - - 0x00BF02 02:9EF2: AE 41 05  LDX ram_0541_t01_plr_index
C - - - - - 0x00BF05 02:9EF5: A5 68     LDA ram_0068_t04
; 
C - - - - - 0x00BF07 02:9EF7: 9D 65 05  STA ram_0565_obj,X
C - - - - - 0x00BF0A 02:9EFA: 20 29 9F  JSR sub_9F29
C - - - - - 0x00BF0D 02:9EFD: A5 67     LDA ram_0067_t07
C - - - - - 0x00BF0F 02:9EFF: 9D D8 05  STA ram_05D8_plr,X
C - - - - - 0x00BF12 02:9F02: 0A        ASL
C - - - - - 0x00BF13 02:9F03: A8        TAY
C - - - - - 0x00BF14 02:9F04: B9 1B 9A  LDA tbl_9A1B_map_cursor_position,Y
C - - - - - 0x00BF17 02:9F07: 8D 8D 04  STA ram_pos_Y_lo_obj + $05
C - - - - - 0x00BF1A 02:9F0A: B9 1C 9A  LDA tbl_9A1B_map_cursor_position + $01,Y
C - - - - - 0x00BF1D 02:9F0D: 8D 66 04  STA ram_pos_X_lo_obj + $05
C - - - - - 0x00BF20 02:9F10: AD B5 05  LDA ram_05B5_player_flags
C - - - - - 0x00BF23 02:9F13: 29 01     AND #con_05B5_together
C - - - - - 0x00BF25 02:9F15: F0 11     BEQ bra_9F28_RTS    ; if separate
; if together
C - - - - - 0x00BF27 02:9F17: AE 41 05  LDX ram_0541_t01_plr_index
C - - - - - 0x00BF2A 02:9F1A: BD DA 05  LDA ram_05DA_plr,X
C - - - - - 0x00BF2D 02:9F1D: 48        PHA
C - - - - - 0x00BF2E 02:9F1E: AD 41 05  LDA ram_0541_t01_plr_index
C - - - - - 0x00BF31 02:9F21: 49 01     EOR #$01
C - - - - - 0x00BF33 02:9F23: AA        TAX
C - - - - - 0x00BF34 02:9F24: 68        PLA
C - - - - - 0x00BF35 02:9F25: 9D DA 05  STA ram_05DA_plr,X
bra_9F28_RTS:
C - - - - - 0x00BF38 02:9F28: 60        RTS



sub_9F29:
C - - - - - 0x00BF39 02:9F29: 0A        ASL
C - - - - - 0x00BF3A 02:9F2A: A8        TAY
C - - - - - 0x00BF3B 02:9F2B: B9 47 9A  LDA tbl_9A47,Y
C - - - - - 0x00BF3E 02:9F2E: 85 5F     STA ram_005F_t02_data
C - - - - - 0x00BF40 02:9F30: B9 48 9A  LDA tbl_9A47 + $01,Y
C - - - - - 0x00BF43 02:9F33: 85 60     STA ram_005F_t02_data + $01
C - - - - - 0x00BF45 02:9F35: A0 00     LDY #$00
C - - - - - 0x00BF47 02:9F37: B1 5F     LDA (ram_005F_t02_data),Y
; * 10
C - - - - - 0x00BF49 02:9F39: 0A        ASL
C - - - - - 0x00BF4A 02:9F3A: 0A        ASL
C - - - - - 0x00BF4B 02:9F3B: 0A        ASL
C - - - - - 0x00BF4C 02:9F3C: 0A        ASL
; 
C - - - - - 0x00BF4D 02:9F3D: 9D 6C 05  STA ram_056C_obj,X
C - - - - - 0x00BF50 02:9F40: C8        INY ; 01
C - - - - - 0x00BF51 02:9F41: B1 5F     LDA (ram_005F_t02_data),Y
C - - - - - 0x00BF53 02:9F43: 9D F3 04  STA ram_04F3_obj,X
; bzk optimize, LDA 02
C - - - - - 0x00BF56 02:9F46: C8        INY ; 02
C - - - - - 0x00BF57 02:9F47: 98        TYA ; 02
C - - - - - 0x00BF58 02:9F48: 1D 6C 05  ORA ram_056C_obj,X
C - - - - - 0x00BF5B 02:9F4B: 9D 6C 05  STA ram_056C_obj,X
C - - - - - 0x00BF5E 02:9F4E: 60        RTS



loc_9F4F_draw_options:
; bzk optimize, remove unnecessary X or Y usage
; 1p game mode
C D 0 - - - 0x00BF5F 02:9F4F: A2 21     LDX #> $21C9
C - - - - - 0x00BF61 02:9F51: A0 C9     LDY #< $21C9
C - - - - - 0x00BF63 02:9F53: AD 02 20  LDA $2002
C - - - - - 0x00BF66 02:9F56: 8E 06 20  STX $2006
C - - - - - 0x00BF69 02:9F59: 8C 06 20  STY $2006
; bzk optimize, loop with X/Y only
C - - - - - 0x00BF6C 02:9F5C: A0 0E     LDY #$0E
C - - - - - 0x00BF6E 02:9F5E: A2 00     LDX #$00
bra_9F60_loop:
C - - - - - 0x00BF70 02:9F60: BD 9D 9F  LDA tbl_9F9D_1p_game_mode,X
C - - - - - 0x00BF73 02:9F63: 8D 07 20  STA $2007
C - - - - - 0x00BF76 02:9F66: E8        INX
C - - - - - 0x00BF77 02:9F67: 88        DEY
C - - - - - 0x00BF78 02:9F68: D0 F6     BNE bra_9F60_loop
; battle mode
C - - - - - 0x00BF7A 02:9F6A: A2 22     LDX #> $220B
C - - - - - 0x00BF7C 02:9F6C: A0 0B     LDY #< $220B
C - - - - - 0x00BF7E 02:9F6E: AD 02 20  LDA $2002
C - - - - - 0x00BF81 02:9F71: 8E 06 20  STX $2006
C - - - - - 0x00BF84 02:9F74: 8C 06 20  STY $2006
; bzk optimize, loop with X/Y only
C - - - - - 0x00BF87 02:9F77: A0 0C     LDY #$0C
C - - - - - 0x00BF89 02:9F79: A2 00     LDX #$00
bra_9F7B_loop:
C - - - - - 0x00BF8B 02:9F7B: BD AB 9F  LDA tbl_9FAB_battle_mode,X
C - - - - - 0x00BF8E 02:9F7E: 8D 07 20  STA $2007
C - - - - - 0x00BF91 02:9F81: E8        INX
C - - - - - 0x00BF92 02:9F82: 88        DEY
C - - - - - 0x00BF93 02:9F83: D0 F6     BNE bra_9F7B_loop
; nametable attributes
C - - - - - 0x00BF95 02:9F85: A2 23     LDX #> $23DA
C - - - - - 0x00BF97 02:9F87: A0 DA     LDY #< $23DA
C - - - - - 0x00BF99 02:9F89: AD 02 20  LDA $2002
C - - - - - 0x00BF9C 02:9F8C: 8E 06 20  STX $2006
C - - - - - 0x00BF9F 02:9F8F: 8C 06 20  STY $2006
; 
C - - - - - 0x00BFA2 02:9F92: A0 04     LDY #$04
C - - - - - 0x00BFA4 02:9F94: A9 F0     LDA #$F0
bra_9F96_loop:
C - - - - - 0x00BFA6 02:9F96: 8D 07 20  STA $2007
C - - - - - 0x00BFA9 02:9F99: 88        DEY
C - - - - - 0x00BFAA 02:9F9A: D0 FA     BNE bra_9F96_loop
C - - - - - 0x00BFAC 02:9F9C: 60        RTS



tbl_9F9D_1p_game_mode:
; 1P GAME MODE
- D 0 - - - 0x00BFAD 02:9F9D: A7        .byte $A7   ; right arrow
- D 0 - - - 0x00BFAE 02:9F9E: 80        .byte $80   ; space
- D 0 - - - 0x00BFAF 02:9F9F: 82        .byte $82, $9A, $80, $91, $8B, $97, $8F, $80, $97, $99, $8E, $8F   ; 



tbl_9FAB_battle_mode:
; BATTLE  MODE
- D 0 - - - 0x00BFBB 02:9FAB: 8C        .byte $8C, $8B, $9E, $9E, $96, $8F, $80, $80, $97, $99, $8E, $8F   ; 


; bzk garbage
- - - - - - 0x00BFC7 02:9FB7: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00BFD0 02:9FC0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00BFE0 02:9FD0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00BFF0 02:9FE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00C000 02:9FF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 



.out .sprintf("Free bytes in bank 05: 0x%04X [%d]", ($A000 - *), ($A000 - *))



