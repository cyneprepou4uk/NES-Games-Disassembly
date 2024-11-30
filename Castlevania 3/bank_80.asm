.segment "BANK_80"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
.org $8000  ; for listing file
; 0x000010-0x00400F



.export sub_0x000011
.export ofs_041_0x000011_01
.export sub_0x000023
.export ofs_0x000023_00
.export ofs_041_0x000023_02
.export sub_0x0003FE
.export sub_0x00053C_update_background_and_sprite_palette
.export ofs_0x00053C_update_background_and_sprite_palette
.export ofs_041_0x00053C_00_update_background_and_sprite_palette
.export sub_0x000584   ; bzk this export is never used 
.export sub_0x0005AE_update_3_colors_for_sprites
.export ofs_0x0005AE_02_update_3_colors_for_sprites
.export sub_0x0005CB_write_partner_sprite_palette
.export loc_0x000A2C_debug_menu_handler
.export sub_0x000B39_set_game_over_cursor_position
.export sub_0x000B65_set_title_screen_cursor_position
.export sub_0x000B80_increase_brightness
.export ofs_0x000B80_02_increase_brightness
.export sub_0x000B84_decrease_brightness
.export ofs_0x000B84_00_decrease_brightness
.export sub_0x000BF3_add_points
.export sub_0x000C2A_add_1_life
.export sub_0x000C3F_decrease_hearts
.export sub_0x000C69_add_hearts
.export sub_0x000D76
.export sub_0x000DA6_print_blk_number
.export sub_0x000E71_display_subweapon
.export sub_0x000F1B
.export sub_0x000F90
.export sub_0x000FC0
.export sub_0x001015_check_for_special_name
.export loc_0x00108F
.export ofs_041_0x0010DD_06_set_chr_banks
.export sub_0x0010E6
.export sub_0x0010F2
.export sub_0x001117
.export sub_0x001127
.export sub_0x00119B
.export loc_0x0011C2
.export sub_0x0011E5
.export loc_0x001225
.export loc_0x001298
.export loc_0x00147A
.export loc_0x00149B
.export loc_0x0016DF_RTS    ; bzk this export is never used
.export sub_0x0016E0
.export sub_0x001712
.export sub_0x0017F1
.export sub_0x001812
.export sub_0x001830_write_data_to_ppu_buffer
.export sub_0x001835_write_data_to_ppu_buffer
.export sub_0x001883
.export loc_0x001DEB
.export loc_0x0025C7
.export loc_0x0033FA
.export sub_0x003593
.export sub_0x00364E
.export sub_0x003A56
.export loc_0x003B2A



; bzk bank id, must be located at 8000 in each bank
- D 0 - - - 0x000010 00:8000: 80        .byte con_prg_bank + $80   ; 



sub_8001:
sub_0x000011:
ofs_041_0x000011_01:
C - - - - - 0x000011 00:8001: AC 4E 05  LDY ram_plr_id
C - - - - - 0x000014 00:8004: B9 0F 80  LDA tbl_800F_chr_bank,Y
C - - - - - 0x000017 00:8007: 85 46     STA ram_chr_bank_5120
C - - - - - 0x000019 00:8009: 18        CLC
C - - - - - 0x00001A 00:800A: 69 01     ADC #$01
C - - - - - 0x00001C 00:800C: 85 47     STA ram_chr_bank_5121
C - - - - - 0x00001E 00:800E: 60        RTS



tbl_800F_chr_bank:
- D 0 - - - 0x00001F 00:800F: 00        .byte con__chr_bank + $00   ; 00 
- D 0 - - - 0x000020 00:8010: 04        .byte con__chr_bank + $04   ; 01 
- D 0 - - - 0x000021 00:8011: 02        .byte con__chr_bank + $02   ; 02 
- D 0 - - - 0x000022 00:8012: 06        .byte con__chr_bank + $06   ; 03 



sub_0x000023:
ofs_0x000023_00:
ofs_041_0x000023_02:
C - - - - - 0x000023 00:8013: A5 32     LDA ram_blk_hi
C - - - - - 0x000025 00:8015: 0A        ASL
C - - - - - 0x000026 00:8016: A8        TAY
C - - - - - 0x000027 00:8017: B9 66 80  LDA tbl_8066_chr_banks,Y
C - - - - - 0x00002A 00:801A: 85 08     STA ram_0008_t01B_data
C - - - - - 0x00002C 00:801C: B9 67 80  LDA tbl_8066_chr_banks + $01,Y
C - - - - - 0x00002F 00:801F: 85 09     STA ram_0008_t01B_data + $01
C - - - - - 0x000031 00:8021: A5 33     LDA ram_blk_lo
; * 04
C - - - - - 0x000033 00:8023: 0A        ASL
C - - - - - 0x000034 00:8024: 0A        ASL
C - - - - - 0x000035 00:8025: 85 0F     STA ram_000F_t000_blk_lo_x04
C - - - - - 0x000037 00:8027: A8        TAY
C - - - - - 0x000038 00:8028: B1 08     LDA (ram_0008_t01B_data),Y
C - - - - - 0x00003A 00:802A: 85 0A     STA ram_000A_t000_data
C - - - - - 0x00003C 00:802C: C8        INY
C - - - - - 0x00003D 00:802D: B1 08     LDA (ram_0008_t01B_data),Y
C - - - - - 0x00003F 00:802F: 85 0B     STA ram_000A_t000_data + $01
C - - - - - 0x000041 00:8031: A5 34     LDA ram_blk_fr
C - - - - - 0x000043 00:8033: 0A        ASL
C - - - - - 0x000044 00:8034: 18        CLC
C - - - - - 0x000045 00:8035: 65 34     ADC ram_blk_fr
C - - - - - 0x000047 00:8037: A8        TAY
C - - - - - 0x000048 00:8038: B1 0A     LDA (ram_000A_t000_data),Y
C - - - - - 0x00004A 00:803A: 85 4B     STA ram_chr_bank______5129
C - - - - - 0x00004C 00:803C: C8        INY
C - - - - - 0x00004D 00:803D: B1 0A     LDA (ram_000A_t000_data),Y
C - - - - - 0x00004F 00:803F: 85 4C     STA ram_chr_bank_5126_512A
C - - - - - 0x000051 00:8041: C8        INY
C - - - - - 0x000052 00:8042: B1 0A     LDA (ram_000A_t000_data),Y
C - - - - - 0x000054 00:8044: 85 4E     STA ram_chr_bank_5125_____
C - - - - - 0x000056 00:8046: A4 0F     LDY ram_000F_t000_blk_lo_x04
C - - - - - 0x000058 00:8048: C8        INY
C - - - - - 0x000059 00:8049: C8        INY
C - - - - - 0x00005A 00:804A: B1 08     LDA (ram_0008_t01B_data),Y
C - - - - - 0x00005C 00:804C: 85 0A     STA ram_000A_t001_data
C - - - - - 0x00005E 00:804E: C8        INY
C - - - - - 0x00005F 00:804F: B1 08     LDA (ram_0008_t01B_data),Y
C - - - - - 0x000061 00:8051: 85 0B     STA ram_000A_t001_data + $01
C - - - - - 0x000063 00:8053: A5 34     LDA ram_blk_fr
C - - - - - 0x000065 00:8055: 0A        ASL
C - - - - - 0x000066 00:8056: A8        TAY
C - - - - - 0x000067 00:8057: B1 0A     LDA (ram_000A_t001_data),Y
C - - - - - 0x000069 00:8059: 85 48     STA ram_chr_bank_5122
C - - - - - 0x00006B 00:805B: C8        INY
C - - - - - 0x00006C 00:805C: B1 0A     LDA (ram_000A_t001_data),Y
C - - - - - 0x00006E 00:805E: 85 49     STA ram_chr_bank_5123
C - - - - - 0x000070 00:8060: 20 3C E3  JSR sub_0x03E34C
C - - - - - 0x000073 00:8063: 4C 5D E3  JMP loc_0x03E36D



tbl_8066_chr_banks:
- D 0 - - - 0x000076 00:8066: 84 80     .word _off000_8084_00
- D 0 - - - 0x000078 00:8068: 94 80     .word _off000_8094_01
- D 0 - - - 0x00007A 00:806A: AC 80     .word _off000_80AC_02
- D 0 - - - 0x00007C 00:806C: C0 80     .word _off000_80C0_03
- D 0 - - - 0x00007E 00:806E: D4 80     .word _off000_80D4_04
- D 0 - - - 0x000080 00:8070: E0 80     .word _off000_80E0_05
- D 0 - - - 0x000082 00:8072: F0 80     .word _off000_80F0_06
- D 0 - - - 0x000084 00:8074: FC 80     .word _off000_80FC_07
- D 0 - - - 0x000086 00:8076: 18 81     .word _off000_8118_08
- D 0 - - - 0x000088 00:8078: 2C 81     .word _off000_812C_09
- D 0 - - - 0x00008A 00:807A: 34 81     .word _off000_8134_0A
- D 0 - - - 0x00008C 00:807C: 50 81     .word _off000_8150_0B
- D 0 - - - 0x00008E 00:807E: 5C 81     .word _off000_815C_0C
- D 0 - - - 0x000090 00:8080: 68 81     .word _off000_8168_0D
- D 0 - - - 0x000092 00:8082: 78 81     .word _off000_8178_0E



_off000_8084_00:
- D 0 - I - 0x000094 00:8084: 84 81     .word off_8184_00_00_bg
- D 0 - I - 0x000096 00:8086: E0 82     .word off_82E0_00_00_spr
- D 0 - I - 0x000098 00:8088: 87 81     .word off_8187_00_01_bg
- D 0 - I - 0x00009A 00:808A: E2 82     .word off_82E2_00_01_spr
- D 0 - I - 0x00009C 00:808C: 93 81     .word off_8193_00_02_bg
- D 0 - I - 0x00009E 00:808E: EA 82     .word off_82EA_00_02_spr
- D 0 - I - 0x0000A0 00:8090: 99 81     .word off_8199_00_03_bg
- D 0 - I - 0x0000A2 00:8092: EE 82     .word off_82EE_00_03_spr



_off000_8094_01:
- D 0 - I - 0x0000A4 00:8094: 9C 81     .word off_819C_01_00_bg
- D 0 - I - 0x0000A6 00:8096: F0 82     .word off_82F0_01_00_spr
- D 0 - I - 0x0000A8 00:8098: A5 81     .word off_81A5_01_01_bg
- D 0 - I - 0x0000AA 00:809A: F6 82     .word off_82F6_01_01_spr
- D 0 - I - 0x0000AC 00:809C: AE 81     .word off_81AE_01_02_bg
- D 0 - I - 0x0000AE 00:809E: FC 82     .word off_82FC_01_02_spr
- D 0 - I - 0x0000B0 00:80A0: AE 81     .word off_81AE_01_03_bg
- D 0 - I - 0x0000B2 00:80A2: 02 83     .word off_8302_01_03_spr
- D 0 - I - 0x0000B4 00:80A4: A5 81     .word off_81A5_01_04_bg
- D 0 - I - 0x0000B6 00:80A6: 08 83     .word off_8308_01_04_spr
- D 0 - I - 0x0000B8 00:80A8: 9C 81     .word off_819C_01_05_bg
- D 0 - I - 0x0000BA 00:80AA: 0E 83     .word off_830E_01_05_spr



_off000_80AC_02:
- D 0 - I - 0x0000BC 00:80AC: B7 81     .word off_81B7_02_00_bg
- D 0 - I - 0x0000BE 00:80AE: 14 83     .word off_8314_02_00_spr
- D 0 - I - 0x0000C0 00:80B0: BD 81     .word off_81BD_02_01_bg
- D 0 - I - 0x0000C2 00:80B2: 18 83     .word off_8318_02_01_spr
- D 0 - I - 0x0000C4 00:80B4: C0 81     .word off_81C0_02_02_bg
- D 0 - I - 0x0000C6 00:80B6: 1A 83     .word off_831A_02_02_spr
- D 0 - I - 0x0000C8 00:80B8: C6 81     .word off_81C6_02_03_bg
- D 0 - I - 0x0000CA 00:80BA: 1E 83     .word off_831E_02_03_spr
- D 0 - I - 0x0000CC 00:80BC: CF 81     .word off_81CF_02_04_bg
- D 0 - I - 0x0000CE 00:80BE: 24 83     .word off_8324_02_04_spr



_off000_80C0_03:
- D 0 - I - 0x0000D0 00:80C0: D5 81     .word off_81D5_03_00_bg
- D 0 - I - 0x0000D2 00:80C2: 28 83     .word off_8328_03_00_spr
- D 0 - I - 0x0000D4 00:80C4: DE 81     .word off_81DE_03_01_bg
- D 0 - I - 0x0000D6 00:80C6: 2E 83     .word off_832E_03_01_spr
- D 0 - I - 0x0000D8 00:80C8: E4 81     .word off_81E4_03_02_bg
- D 0 - I - 0x0000DA 00:80CA: 32 83     .word off_8332_03_02_spr
- D 0 - I - 0x0000DC 00:80CC: EA 81     .word off_81EA_03_03_bg
- D 0 - I - 0x0000DE 00:80CE: 36 83     .word off_8336_03_03_spr
- D 0 - I - 0x0000E0 00:80D0: F0 81     .word off_81F0_03_04_bg
- D 0 - I - 0x0000E2 00:80D2: 3A 83     .word off_833A_03_04_spr



_off000_80D4_04:
- D 0 - I - 0x0000E4 00:80D4: F9 81     .word off_81F9_04_00_bg
- D 0 - I - 0x0000E6 00:80D6: 40 83     .word off_8340_04_00_spr
- D 0 - I - 0x0000E8 00:80D8: F9 81     .word off_81F9_04_01_bg
- D 0 - I - 0x0000EA 00:80DA: 46 83     .word off_8346_04_01_spr
- D 0 - I - 0x0000EC 00:80DC: 02 82     .word off_8202_04_02_bg
- D 0 - I - 0x0000EE 00:80DE: 4C 83     .word off_834C_04_02_spr



_off000_80E0_05:
- D 0 - I - 0x0000F0 00:80E0: 0B 82     .word off_820B_05_00_bg
- D 0 - I - 0x0000F2 00:80E2: 52 83     .word off_8352_05_00_spr
- D 0 - I - 0x0000F4 00:80E4: 0B 82     .word off_820B_05_01_bg
- D 0 - I - 0x0000F6 00:80E6: 54 83     .word off_8354_05_01_spr
- D 0 - I - 0x0000F8 00:80E8: 0E 82     .word off_820E_05_02_bg
- D 0 - I - 0x0000FA 00:80EA: 56 83     .word off_8356_05_02_spr
- D 0 - I - 0x0000FC 00:80EC: 0E 82     .word off_820E_05_03_bg
- D 0 - I - 0x0000FE 00:80EE: 5A 83     .word off_835A_05_03_spr



_off000_80F0_06:
- D 0 - I - 0x000100 00:80F0: 14 82     .word off_8214_06_00_bg
- D 0 - I - 0x000102 00:80F2: 5E 83     .word off_835E_06_00_spr
- D 0 - I - 0x000104 00:80F4: 1A 82     .word off_821A_06_01_bg
- D 0 - I - 0x000106 00:80F6: 62 83     .word off_8362_06_01_spr
- D 0 - I - 0x000108 00:80F8: 1D 82     .word off_821D_06_02_bg
- D 0 - I - 0x00010A 00:80FA: 64 83     .word off_8364_06_02_spr



_off000_80FC_07:
- D 0 - I - 0x00010C 00:80FC: 26 82     .word off_8226_07_00_bg
- D 0 - I - 0x00010E 00:80FE: 6A 83     .word off_836A_07_00_spr
- D 0 - I - 0x000110 00:8100: 2C 82     .word off_822C_07_01_bg
- D 0 - I - 0x000112 00:8102: 6E 83     .word off_836E_07_01_spr
- D 0 - I - 0x000114 00:8104: 2C 82     .word off_822C_07_02_bg
- D 0 - I - 0x000116 00:8106: 70 83     .word off_8370_07_02_spr
- D 0 - I - 0x000118 00:8108: 2C 82     .word off_822C_07_03_bg
- D 0 - I - 0x00011A 00:810A: 72 83     .word off_8372_07_03_spr
- D 0 - I - 0x00011C 00:810C: 2F 82     .word off_822F_07_04_bg
- D 0 - I - 0x00011E 00:810E: 74 83     .word off_8374_07_04_spr
- D 0 - I - 0x000120 00:8110: 35 82     .word off_8235_07_05_bg
- D 0 - I - 0x000122 00:8112: 78 83     .word off_8378_07_05_spr
- D 0 - I - 0x000124 00:8114: 3B 82     .word off_823B_07_06_bg
- D 0 - I - 0x000126 00:8116: 7C 83     .word off_837C_07_06_spr



_off000_8118_08:
- D 0 - I - 0x000128 00:8118: 3E 82     .word off_823E_08_00_bg
- D 0 - I - 0x00012A 00:811A: 7E 83     .word off_837E_08_00_spr
- D 0 - I - 0x00012C 00:811C: 44 82     .word off_8244_08_01_bg
- D 0 - I - 0x00012E 00:811E: 82 83     .word off_8382_08_01_spr
- D 0 - I - 0x000130 00:8120: 47 82     .word off_8247_08_02_bg
- D 0 - I - 0x000132 00:8122: 84 83     .word off_8384_08_02_spr
- D 0 - I - 0x000134 00:8124: 44 82     .word off_8244_08_03_bg
- D 0 - I - 0x000136 00:8126: 88 83     .word off_8388_08_03_spr
- D 0 - I - 0x000138 00:8128: 44 82     .word off_8244_08_04_bg
- D 0 - I - 0x00013A 00:812A: 8A 83     .word off_838A_08_04_spr



_off000_812C_09:
- D 0 - I - 0x00013C 00:812C: 4D 82     .word off_824D_09_00_bg
- D 0 - I - 0x00013E 00:812E: 8C 83     .word off_838C_09_00_spr
- D 0 - I - 0x000140 00:8130: 53 82     .word off_8253_09_01_bg
- D 0 - I - 0x000142 00:8132: 90 83     .word off_8390_09_01_spr



_off000_8134_0A:
- D 0 - I - 0x000144 00:8134: 5C 82     .word off_825C_0A_00_bg
- D 0 - I - 0x000146 00:8136: 96 83     .word off_8396_0A_00_spr
- D 0 - I - 0x000148 00:8138: 62 82     .word off_8262_0A_01_bg
- D 0 - I - 0x00014A 00:813A: 9A 83     .word off_839A_0A_01_spr
- D 0 - I - 0x00014C 00:813C: 65 82     .word off_8265_0A_02_bg
- D 0 - I - 0x00014E 00:813E: 9C 83     .word off_839C_0A_02_spr
- D 0 - I - 0x000150 00:8140: 68 82     .word off_8268_0A_03_bg
- D 0 - I - 0x000152 00:8142: 9E 83     .word off_839E_0A_03_spr
- D 0 - I - 0x000154 00:8144: 6E 82     .word off_826E_0A_04_bg
- D 0 - I - 0x000156 00:8146: A2 83     .word off_83A2_0A_04_spr
- D 0 - I - 0x000158 00:8148: 77 82     .word off_8277_0A_05_bg
- D 0 - I - 0x00015A 00:814A: A8 83     .word off_83A8_0A_05_spr
- D 0 - I - 0x00015C 00:814C: 7D 82     .word off_827D_0A_06_bg
- D 0 - I - 0x00015E 00:814E: AC 83     .word off_83AC_0A_06_spr



_off000_8150_0B:
- D 0 - I - 0x000160 00:8150: 86 82     .word off_8286_0B_00_bg
- D 0 - I - 0x000162 00:8152: B2 83     .word off_83B2_0B_00_spr
- D 0 - I - 0x000164 00:8154: 8C 82     .word off_828C_0B_01_bg
- D 0 - I - 0x000166 00:8156: B6 83     .word off_83B6_0B_01_spr
- D 0 - I - 0x000168 00:8158: 92 82     .word off_8292_0B_02_bg
- D 0 - I - 0x00016A 00:815A: BA 83     .word off_83BA_0B_02_spr



_off000_815C_0C:
- D 0 - I - 0x00016C 00:815C: 9B 82     .word off_829B_0C_00_bg
- D 0 - I - 0x00016E 00:815E: C0 83     .word off_83C0_0C_00_spr
- D 0 - I - 0x000170 00:8160: A1 82     .word off_82A1_0C_01_bg
- D 0 - I - 0x000172 00:8162: C4 83     .word off_83C4_0C_01_spr
- D 0 - I - 0x000174 00:8164: A7 82     .word off_82A7_0C_02_bg
- D 0 - I - 0x000176 00:8166: C8 83     .word off_83C8_0C_02_spr



_off000_8168_0D:
- D 0 - I - 0x000178 00:8168: AA 82     .word off_82AA_0D_00_bg
- D 0 - I - 0x00017A 00:816A: CA 83     .word off_83CA_0D_00_spr
- D 0 - I - 0x00017C 00:816C: B3 82     .word off_82B3_0D_01_bg
- D 0 - I - 0x00017E 00:816E: D0 83     .word off_83D0_0D_01_spr
- D 0 - I - 0x000180 00:8170: BC 82     .word off_82BC_0D_02_bg
- D 0 - I - 0x000182 00:8172: D6 83     .word off_83D6_0D_02_spr
- D 0 - I - 0x000184 00:8174: C5 82     .word off_82C5_0D_03_bg
- D 0 - I - 0x000186 00:8176: DC 83     .word off_83DC_0D_03_spr



_off000_8178_0E:
- D 0 - I - 0x000188 00:8178: CB 82     .word off_82CB_0E_00_bg
- D 0 - I - 0x00018A 00:817A: E0 83     .word off_83E0_0E_00_spr
- D 0 - I - 0x00018C 00:817C: D4 82     .word off_82D4_0E_01_bg
- D 0 - I - 0x00018E 00:817E: E6 83     .word off_83E6_0E_01_spr
- D 0 - I - 0x000190 00:8180: DA 82     .word off_82DA_0E_02_bg
- D 0 - I - 0x000192 00:8182: EA 83     .word off_83EA_0E_02_spr



off_8184_00_00_bg:
; 00 
- D 0 - I - 0x000194 00:8184: 45        .byte con_chr_bank_bg + $45   ; 
- D 0 - I - 0x000195 00:8185: 47        .byte con_chr_bank_bg + $47   ; 
- D 0 - I - 0x000196 00:8186: 36        .byte con_chr_bank_bg + $36   ; 



off_8187_00_01_bg:
; 00 
- D 0 - I - 0x000197 00:8187: 45        .byte con_chr_bank_bg + $45   ; 
- D 0 - I - 0x000198 00:8188: 47        .byte con_chr_bank_bg + $47   ; 
- D 0 - I - 0x000199 00:8189: 36        .byte con_chr_bank_bg + $36   ; 
; 01 
- D 0 - I - 0x00019A 00:818A: 46        .byte con_chr_bank_bg + $46   ; 
- D 0 - I - 0x00019B 00:818B: 47        .byte con_chr_bank_bg + $47   ; 
- D 0 - I - 0x00019C 00:818C: 36        .byte con_chr_bank_bg + $36   ; 
; 02 
- D 0 - I - 0x00019D 00:818D: 45        .byte con_chr_bank_bg + $45   ; 
- D 0 - I - 0x00019E 00:818E: 47        .byte con_chr_bank_bg + $47   ; 
- D 0 - I - 0x00019F 00:818F: 36        .byte con_chr_bank_bg + $36   ; 
; 03 
- D 0 - I - 0x0001A0 00:8190: 45        .byte con_chr_bank_bg + $45   ; 
- D 0 - I - 0x0001A1 00:8191: 47        .byte con_chr_bank_bg + $47   ; 
- D 0 - I - 0x0001A2 00:8192: 36        .byte con_chr_bank_bg + $36   ; 



off_8193_00_02_bg:
; 00 
- D 0 - I - 0x0001A3 00:8193: 48        .byte con_chr_bank_bg + $48   ; 
- D 0 - I - 0x0001A4 00:8194: 47        .byte con_chr_bank_bg + $47   ; 
- D 0 - I - 0x0001A5 00:8195: 36        .byte con_chr_bank_bg + $36   ; 
; 01 
- D 0 - I - 0x0001A6 00:8196: 48        .byte con_chr_bank_bg + $48   ; 
- D 0 - I - 0x0001A7 00:8197: 47        .byte con_chr_bank_bg + $47   ; 
- D 0 - I - 0x0001A8 00:8198: 36        .byte con_chr_bank_bg + $36   ; 



off_8199_00_03_bg:
; 00 
- D 0 - I - 0x0001A9 00:8199: 48        .byte con_chr_bank_bg + $48   ; 
- D 0 - I - 0x0001AA 00:819A: 47        .byte con_chr_bank_bg + $47   ; 
- D 0 - I - 0x0001AB 00:819B: 36        .byte con_chr_bank_bg + $36   ; 



off_819C_01_00_bg:
off_819C_01_05_bg:
; 00 
- D 0 - I - 0x0001AC 00:819C: 54        .byte con_chr_bank_bg + $54   ; 
- D 0 - I - 0x0001AD 00:819D: 49        .byte con_chr_bank_bg + $49   ; 
- D 0 - I - 0x0001AE 00:819E: 36        .byte con_chr_bank_bg + $36   ; 
; 01 
- D 0 - I - 0x0001AF 00:819F: 54        .byte con_chr_bank_bg + $54   ; 
- D 0 - I - 0x0001B0 00:81A0: 49        .byte con_chr_bank_bg + $49   ; 
- D 0 - I - 0x0001B1 00:81A1: 0B        .byte con_chr_bank_bg + $0B   ; 
; 02 
- D 0 - I - 0x0001B2 00:81A2: 54        .byte con_chr_bank_bg + $54   ; 
- D 0 - I - 0x0001B3 00:81A3: 4A        .byte con_chr_bank_bg + $4A   ; 
- D 0 - I - 0x0001B4 00:81A4: 36        .byte con_chr_bank_bg + $36   ; 



off_81A5_01_01_bg:
off_81A5_01_04_bg:
; 00 
- D 0 - I - 0x0001B5 00:81A5: 54        .byte con_chr_bank_bg + $54   ; 
- D 0 - I - 0x0001B6 00:81A6: 4A        .byte con_chr_bank_bg + $4A   ; 
- D 0 - I - 0x0001B7 00:81A7: 36        .byte con_chr_bank_bg + $36   ; 
; 01 
- D 0 - I - 0x0001B8 00:81A8: 54        .byte con_chr_bank_bg + $54   ; 
- D 0 - I - 0x0001B9 00:81A9: 49        .byte con_chr_bank_bg + $49   ; 
- D 0 - I - 0x0001BA 00:81AA: 36        .byte con_chr_bank_bg + $36   ; 
; 02 
- D 0 - I - 0x0001BB 00:81AB: 54        .byte con_chr_bank_bg + $54   ; 
- D 0 - I - 0x0001BC 00:81AC: 4A        .byte con_chr_bank_bg + $4A   ; 
- D 0 - I - 0x0001BD 00:81AD: 36        .byte con_chr_bank_bg + $36   ; 



off_81AE_01_02_bg:
off_81AE_01_03_bg:
; 00 
- D 0 - I - 0x0001BE 00:81AE: 54        .byte con_chr_bank_bg + $54   ; 
- D 0 - I - 0x0001BF 00:81AF: 4A        .byte con_chr_bank_bg + $4A   ; 
- D 0 - I - 0x0001C0 00:81B0: 36        .byte con_chr_bank_bg + $36   ; 
; 01 
- D 0 - I - 0x0001C1 00:81B1: 54        .byte con_chr_bank_bg + $54   ; 
- D 0 - I - 0x0001C2 00:81B2: 49        .byte con_chr_bank_bg + $49   ; 
- D 0 - I - 0x0001C3 00:81B3: 36        .byte con_chr_bank_bg + $36   ; 
; 02 
- D 0 - I - 0x0001C4 00:81B4: 54        .byte con_chr_bank_bg + $54   ; 
- D 0 - I - 0x0001C5 00:81B5: 49        .byte con_chr_bank_bg + $49   ; 
- D 0 - I - 0x0001C6 00:81B6: 36        .byte con_chr_bank_bg + $36   ; 



off_81B7_02_00_bg:
; 00 
- D 0 - I - 0x0001C7 00:81B7: 4B        .byte con_chr_bank_bg + $4B   ; 
- D 0 - I - 0x0001C8 00:81B8: 4D        .byte con_chr_bank_bg + $4D   ; 
- D 0 - I - 0x0001C9 00:81B9: 36        .byte con_chr_bank_bg + $36   ; 
; 01 
- D 0 - I - 0x0001CA 00:81BA: 4B        .byte con_chr_bank_bg + $4B   ; 
- D 0 - I - 0x0001CB 00:81BB: 4D        .byte con_chr_bank_bg + $4D   ; 
- D 0 - I - 0x0001CC 00:81BC: 36        .byte con_chr_bank_bg + $36   ; 



off_81BD_02_01_bg:
; 00 
- D 0 - I - 0x0001CD 00:81BD: 4B        .byte con_chr_bank_bg + $4B   ; 
- D 0 - I - 0x0001CE 00:81BE: 4D        .byte con_chr_bank_bg + $4D   ; 
- D 0 - I - 0x0001CF 00:81BF: 36        .byte con_chr_bank_bg + $36   ; 



off_81C0_02_02_bg:
; 00 
- D 0 - I - 0x0001D0 00:81C0: 4C        .byte con_chr_bank_bg + $4C   ; 
- D 0 - I - 0x0001D1 00:81C1: 4D        .byte con_chr_bank_bg + $4D   ; 
- D 0 - I - 0x0001D2 00:81C2: 36        .byte con_chr_bank_bg + $36   ; 
; 01 
- D 0 - I - 0x0001D3 00:81C3: 4B        .byte con_chr_bank_bg + $4B   ; 
- D 0 - I - 0x0001D4 00:81C4: 4D        .byte con_chr_bank_bg + $4D   ; 
- D 0 - I - 0x0001D5 00:81C5: 36        .byte con_chr_bank_bg + $36   ; 



off_81C6_02_03_bg:
; 00 
- D 0 - I - 0x0001D6 00:81C6: 4C        .byte con_chr_bank_bg + $4C   ; 
- D 0 - I - 0x0001D7 00:81C7: 4D        .byte con_chr_bank_bg + $4D   ; 
- D 0 - I - 0x0001D8 00:81C8: 36        .byte con_chr_bank_bg + $36   ; 
; 01 
- D 0 - I - 0x0001D9 00:81C9: 4B        .byte con_chr_bank_bg + $4B   ; 
- D 0 - I - 0x0001DA 00:81CA: 4D        .byte con_chr_bank_bg + $4D   ; 
- D 0 - I - 0x0001DB 00:81CB: 36        .byte con_chr_bank_bg + $36   ; 
; 02 
- D 0 - I - 0x0001DC 00:81CC: 4C        .byte con_chr_bank_bg + $4C   ; 
- D 0 - I - 0x0001DD 00:81CD: 4D        .byte con_chr_bank_bg + $4D   ; 
- D 0 - I - 0x0001DE 00:81CE: 36        .byte con_chr_bank_bg + $36   ; 



off_81CF_02_04_bg:
; 00 
- D 0 - I - 0x0001DF 00:81CF: 4C        .byte con_chr_bank_bg + $4C   ; 
- D 0 - I - 0x0001E0 00:81D0: 4D        .byte con_chr_bank_bg + $4D   ; 
- D 0 - I - 0x0001E1 00:81D1: 4C        .byte con_chr_bank_bg + $4C   ; 
; 01 
- D 0 - I - 0x0001E2 00:81D2: 4C        .byte con_chr_bank_bg + $4C   ; 
- D 0 - I - 0x0001E3 00:81D3: 4D        .byte con_chr_bank_bg + $4D   ; 
- D 0 - I - 0x0001E4 00:81D4: 36        .byte con_chr_bank_bg + $36   ; 



off_81D5_03_00_bg:
; 00 
- D 0 - I - 0x0001E5 00:81D5: 4F        .byte con_chr_bank_bg + $4F   ; 
- D 0 - I - 0x0001E6 00:81D6: 50        .byte con_chr_bank_bg + $50   ; 
- D 0 - I - 0x0001E7 00:81D7: 36        .byte con_chr_bank_bg + $36   ; 
; 01 
- D 0 - I - 0x0001E8 00:81D8: 4F        .byte con_chr_bank_bg + $4F   ; 
- D 0 - I - 0x0001E9 00:81D9: 50        .byte con_chr_bank_bg + $50   ; 
- D 0 - I - 0x0001EA 00:81DA: 36        .byte con_chr_bank_bg + $36   ; 
; 02 
- D 0 - I - 0x0001EB 00:81DB: 4E        .byte con_chr_bank_bg + $4E   ; 
- D 0 - I - 0x0001EC 00:81DC: 50        .byte con_chr_bank_bg + $50   ; 
- D 0 - I - 0x0001ED 00:81DD: 36        .byte con_chr_bank_bg + $36   ; 



off_81DE_03_01_bg:
; 00 
- D 0 - I - 0x0001EE 00:81DE: 4F        .byte con_chr_bank_bg + $4F   ; 
- D 0 - I - 0x0001EF 00:81DF: 50        .byte con_chr_bank_bg + $50   ; 
- D 0 - I - 0x0001F0 00:81E0: 09        .byte con_chr_bank_bg + $09   ; 
; 01 
- D 0 - I - 0x0001F1 00:81E1: 4F        .byte con_chr_bank_bg + $4F   ; 
- D 0 - I - 0x0001F2 00:81E2: 50        .byte con_chr_bank_bg + $50   ; 
- D 0 - I - 0x0001F3 00:81E3: 36        .byte con_chr_bank_bg + $36   ; 



off_81E4_03_02_bg:
; 00 
- D 0 - I - 0x0001F4 00:81E4: 4F        .byte con_chr_bank_bg + $4F   ; 
- D 0 - I - 0x0001F5 00:81E5: 50        .byte con_chr_bank_bg + $50   ; 
- D 0 - I - 0x0001F6 00:81E6: 36        .byte con_chr_bank_bg + $36   ; 
; 01 
- D 0 - I - 0x0001F7 00:81E7: 4E        .byte con_chr_bank_bg + $4E   ; 
- D 0 - I - 0x0001F8 00:81E8: 50        .byte con_chr_bank_bg + $50   ; 
- D 0 - I - 0x0001F9 00:81E9: 36        .byte con_chr_bank_bg + $36   ; 



off_81EA_03_03_bg:
; 00 
- D 0 - I - 0x0001FA 00:81EA: 4E        .byte con_chr_bank_bg + $4E   ; 
- D 0 - I - 0x0001FB 00:81EB: 50        .byte con_chr_bank_bg + $50   ; 
- D 0 - I - 0x0001FC 00:81EC: 36        .byte con_chr_bank_bg + $36   ; 
; 01 
- D 0 - I - 0x0001FD 00:81ED: 4E        .byte con_chr_bank_bg + $4E   ; 
- D 0 - I - 0x0001FE 00:81EE: 50        .byte con_chr_bank_bg + $50   ; 
- D 0 - I - 0x0001FF 00:81EF: 36        .byte con_chr_bank_bg + $36   ; 



off_81F0_03_04_bg:
; 00 
- D 0 - I - 0x000200 00:81F0: 4F        .byte con_chr_bank_bg + $4F   ; 
- D 0 - I - 0x000201 00:81F1: 50        .byte con_chr_bank_bg + $50   ; 
- D 0 - I - 0x000202 00:81F2: 36        .byte con_chr_bank_bg + $36   ; 
; 01 
- D 0 - I - 0x000203 00:81F3: 4E        .byte con_chr_bank_bg + $4E   ; 
- D 0 - I - 0x000204 00:81F4: 50        .byte con_chr_bank_bg + $50   ; 
- D 0 - I - 0x000205 00:81F5: 36        .byte con_chr_bank_bg + $36   ; 
; 02 
- D 0 - I - 0x000206 00:81F6: 4E        .byte con_chr_bank_bg + $4E   ; 
- D 0 - I - 0x000207 00:81F7: 50        .byte con_chr_bank_bg + $50   ; 
- D 0 - I - 0x000208 00:81F8: 36        .byte con_chr_bank_bg + $36   ; 



off_81F9_04_00_bg:
off_81F9_04_01_bg:
; 00 
- D 0 - I - 0x000209 00:81F9: 6E        .byte con_chr_bank_bg + $6E   ; 
- D 0 - I - 0x00020A 00:81FA: 4A        .byte con_chr_bank_bg + $4A   ; 
- D 0 - I - 0x00020B 00:81FB: 36        .byte con_chr_bank_bg + $36   ; 
; 01 
- D 0 - I - 0x00020C 00:81FC: 6E        .byte con_chr_bank_bg + $6E   ; 
- D 0 - I - 0x00020D 00:81FD: 4A        .byte con_chr_bank_bg + $4A   ; 
- D 0 - I - 0x00020E 00:81FE: 36        .byte con_chr_bank_bg + $36   ; 
; 02 
- D 0 - I - 0x00020F 00:81FF: 6E        .byte con_chr_bank_bg + $6E   ; 
- D 0 - I - 0x000210 00:8200: 4A        .byte con_chr_bank_bg + $4A   ; 
- D 0 - I - 0x000211 00:8201: 36        .byte con_chr_bank_bg + $36   ; 



off_8202_04_02_bg:
; 00 
- D 0 - I - 0x000212 00:8202: 6E        .byte con_chr_bank_bg + $6E   ; 
- D 0 - I - 0x000213 00:8203: 4A        .byte con_chr_bank_bg + $4A   ; 
- D 0 - I - 0x000214 00:8204: 36        .byte con_chr_bank_bg + $36   ; 
; 01 
- D 0 - I - 0x000215 00:8205: 6E        .byte con_chr_bank_bg + $6E   ; 
- D 0 - I - 0x000216 00:8206: 4A        .byte con_chr_bank_bg + $4A   ; 
- D 0 - I - 0x000217 00:8207: 36        .byte con_chr_bank_bg + $36   ; 
; 02 
- D 0 - I - 0x000218 00:8208: 53        .byte con_chr_bank_bg + $53   ; 
- D 0 - I - 0x000219 00:8209: 4A        .byte con_chr_bank_bg + $4A   ; 
- D 0 - I - 0x00021A 00:820A: 36        .byte con_chr_bank_bg + $36   ; 



off_820B_05_00_bg:
off_820B_05_01_bg:
; 00 
- D 0 - I - 0x00021B 00:820B: 54        .byte con_chr_bank_bg + $54   ; 
- D 0 - I - 0x00021C 00:820C: 57        .byte con_chr_bank_bg + $57   ; 
- D 0 - I - 0x00021D 00:820D: 54        .byte con_chr_bank_bg + $54   ; 



off_820E_05_02_bg:
off_820E_05_03_bg:
; 00 
- D 0 - I - 0x00021E 00:820E: 54        .byte con_chr_bank_bg + $54   ; 
- D 0 - I - 0x00021F 00:820F: 57        .byte con_chr_bank_bg + $57   ; 
- D 0 - I - 0x000220 00:8210: 36        .byte con_chr_bank_bg + $36   ; 
; 01 
- D 0 - I - 0x000221 00:8211: 54        .byte con_chr_bank_bg + $54   ; 
- D 0 - I - 0x000222 00:8212: 57        .byte con_chr_bank_bg + $57   ; 
- D 0 - I - 0x000223 00:8213: 36        .byte con_chr_bank_bg + $36   ; 



off_8214_06_00_bg:
; 00 
- D 0 - I - 0x000224 00:8214: 59        .byte con_chr_bank_bg + $59   ; 
- D 0 - I - 0x000225 00:8215: 5A        .byte con_chr_bank_bg + $5A   ; 
- D 0 - I - 0x000226 00:8216: 36        .byte con_chr_bank_bg + $36   ; 
; 01 
- D 0 - I - 0x000227 00:8217: 58        .byte con_chr_bank_bg + $58   ; 
- D 0 - I - 0x000228 00:8218: 5A        .byte con_chr_bank_bg + $5A   ; 
- D 0 - I - 0x000229 00:8219: 36        .byte con_chr_bank_bg + $36   ; 



off_821A_06_01_bg:
; 00 
- D 0 - I - 0x00022A 00:821A: 59        .byte con_chr_bank_bg + $59   ; 
- D 0 - I - 0x00022B 00:821B: 5A        .byte con_chr_bank_bg + $5A   ; 
- D 0 - I - 0x00022C 00:821C: 36        .byte con_chr_bank_bg + $36   ; 



off_821D_06_02_bg:
; 00 
- D 0 - I - 0x00022D 00:821D: 59        .byte con_chr_bank_bg + $59   ; 
- D 0 - I - 0x00022E 00:821E: 5A        .byte con_chr_bank_bg + $5A   ; 
- D 0 - I - 0x00022F 00:821F: 36        .byte con_chr_bank_bg + $36   ; 
; 01 
- D 0 - I - 0x000230 00:8220: 59        .byte con_chr_bank_bg + $59   ; 
- D 0 - I - 0x000231 00:8221: 5A        .byte con_chr_bank_bg + $5A   ; 
- D 0 - I - 0x000232 00:8222: 36        .byte con_chr_bank_bg + $36   ; 
; 02 
- D 0 - I - 0x000233 00:8223: 59        .byte con_chr_bank_bg + $59   ; 
- D 0 - I - 0x000234 00:8224: 5A        .byte con_chr_bank_bg + $5A   ; 
- D 0 - I - 0x000235 00:8225: 36        .byte con_chr_bank_bg + $36   ; 



off_8226_07_00_bg:
; 00 
- D 0 - I - 0x000236 00:8226: 5B        .byte con_chr_bank_bg + $5B   ; 
- D 0 - I - 0x000237 00:8227: 5D        .byte con_chr_bank_bg + $5D   ; 
- D 0 - I - 0x000238 00:8228: 36        .byte con_chr_bank_bg + $36   ; 
; 01 
- D 0 - I - 0x000239 00:8229: 5B        .byte con_chr_bank_bg + $5B   ; 
- D 0 - I - 0x00023A 00:822A: 5D        .byte con_chr_bank_bg + $5D   ; 
- D 0 - I - 0x00023B 00:822B: 36        .byte con_chr_bank_bg + $36   ; 



off_822C_07_01_bg:
off_822C_07_02_bg:
off_822C_07_03_bg:
; 00 
- D 0 - I - 0x00023C 00:822C: 5B        .byte con_chr_bank_bg + $5B   ; 
- D 0 - I - 0x00023D 00:822D: 5D        .byte con_chr_bank_bg + $5D   ; 
- D 0 - I - 0x00023E 00:822E: 36        .byte con_chr_bank_bg + $36   ; 



off_822F_07_04_bg:
; 00 
- D 0 - I - 0x00023F 00:822F: 5B        .byte con_chr_bank_bg + $5B   ; 
- D 0 - I - 0x000240 00:8230: 5D        .byte con_chr_bank_bg + $5D   ; 
- D 0 - I - 0x000241 00:8231: 36        .byte con_chr_bank_bg + $36   ; 
; 01 
- D 0 - I - 0x000242 00:8232: 5C        .byte con_chr_bank_bg + $5C   ; 
- D 0 - I - 0x000243 00:8233: 5D        .byte con_chr_bank_bg + $5D   ; 
- D 0 - I - 0x000244 00:8234: 5C        .byte con_chr_bank_bg + $5C   ; 



off_8235_07_05_bg:
; 00 
- D 0 - I - 0x000245 00:8235: 5C        .byte con_chr_bank_bg + $5C   ; 
- D 0 - I - 0x000246 00:8236: 5D        .byte con_chr_bank_bg + $5D   ; 
- D 0 - I - 0x000247 00:8237: 36        .byte con_chr_bank_bg + $36   ; 
; 01 
- D 0 - I - 0x000248 00:8238: 5C        .byte con_chr_bank_bg + $5C   ; 
- D 0 - I - 0x000249 00:8239: 5D        .byte con_chr_bank_bg + $5D   ; 
- D 0 - I - 0x00024A 00:823A: 36        .byte con_chr_bank_bg + $36   ; 



off_823B_07_06_bg:
; 00 
- D 0 - I - 0x00024B 00:823B: 5C        .byte con_chr_bank_bg + $5C   ; 
- D 0 - I - 0x00024C 00:823C: 5D        .byte con_chr_bank_bg + $5D   ; 
- D 0 - I - 0x00024D 00:823D: 36        .byte con_chr_bank_bg + $36   ; 



off_823E_08_00_bg:
; 00 
- D 0 - I - 0x00024E 00:823E: 5E        .byte con_chr_bank_bg + $5E   ; 
- D 0 - I - 0x00024F 00:823F: 60        .byte con_chr_bank_bg + $60   ; 
- D 0 - I - 0x000250 00:8240: 36        .byte con_chr_bank_bg + $36   ; 
; 01 
- D 0 - I - 0x000251 00:8241: 5E        .byte con_chr_bank_bg + $5E   ; 
- D 0 - I - 0x000252 00:8242: 60        .byte con_chr_bank_bg + $60   ; 
- D 0 - I - 0x000253 00:8243: 36        .byte con_chr_bank_bg + $36   ; 



off_8244_08_01_bg:
off_8244_08_03_bg:
off_8244_08_04_bg:
; 00 
- D 0 - I - 0x000254 00:8244: 5E        .byte con_chr_bank_bg + $5E   ; 
- D 0 - I - 0x000255 00:8245: 60        .byte con_chr_bank_bg + $60   ; 
- D 0 - I - 0x000256 00:8246: 36        .byte con_chr_bank_bg + $36   ; 



off_8247_08_02_bg:
; 00 
- D 0 - I - 0x000257 00:8247: 5E        .byte con_chr_bank_bg + $5E   ; 
- D 0 - I - 0x000258 00:8248: 60        .byte con_chr_bank_bg + $60   ; 
- D 0 - I - 0x000259 00:8249: 36        .byte con_chr_bank_bg + $36   ; 
; 01 
- D 0 - I - 0x00025A 00:824A: 5F        .byte con_chr_bank_bg + $5F   ; 
- D 0 - I - 0x00025B 00:824B: 60        .byte con_chr_bank_bg + $60   ; 
- D 0 - I - 0x00025C 00:824C: 36        .byte con_chr_bank_bg + $36   ; 



off_824D_09_00_bg:
; 00 
- D 0 - I - 0x00025D 00:824D: 61        .byte con_chr_bank_bg + $61   ; 
- D 0 - I - 0x00025E 00:824E: 62        .byte con_chr_bank_bg + $62   ; 
- D 0 - I - 0x00025F 00:824F: 36        .byte con_chr_bank_bg + $36   ; 
; 01 
- D 0 - I - 0x000260 00:8250: 61        .byte con_chr_bank_bg + $61   ; 
- D 0 - I - 0x000261 00:8251: 62        .byte con_chr_bank_bg + $62   ; 
- D 0 - I - 0x000262 00:8252: 36        .byte con_chr_bank_bg + $36   ; 



off_8253_09_01_bg:
; 00 
- D 0 - I - 0x000263 00:8253: 61        .byte con_chr_bank_bg + $61   ; 
- D 0 - I - 0x000264 00:8254: 62        .byte con_chr_bank_bg + $62   ; 
- D 0 - I - 0x000265 00:8255: 36        .byte con_chr_bank_bg + $36   ; 
; 01 
- D 0 - I - 0x000266 00:8256: 61        .byte con_chr_bank_bg + $61   ; 
- D 0 - I - 0x000267 00:8257: 62        .byte con_chr_bank_bg + $62   ; 
- D 0 - I - 0x000268 00:8258: 36        .byte con_chr_bank_bg + $36   ; 
; 02 
- D 0 - I - 0x000269 00:8259: 61        .byte con_chr_bank_bg + $61   ; 
- D 0 - I - 0x00026A 00:825A: 62        .byte con_chr_bank_bg + $62   ; 
- D 0 - I - 0x00026B 00:825B: 36        .byte con_chr_bank_bg + $36   ; 



off_825C_0A_00_bg:
; 00 
- D 0 - I - 0x00026C 00:825C: 67        .byte con_chr_bank_bg + $67   ; 
- D 0 - I - 0x00026D 00:825D: 5D        .byte con_chr_bank_bg + $5D   ; 
- D 0 - I - 0x00026E 00:825E: 36        .byte con_chr_bank_bg + $36   ; 
; 01 
- D 0 - I - 0x00026F 00:825F: 67        .byte con_chr_bank_bg + $67   ; 
- D 0 - I - 0x000270 00:8260: 5D        .byte con_chr_bank_bg + $5D   ; 
- D 0 - I - 0x000271 00:8261: 36        .byte con_chr_bank_bg + $36   ; 



off_8262_0A_01_bg:
; 00 
- D 0 - I - 0x000272 00:8262: 67        .byte con_chr_bank_bg + $67   ; 
- D 0 - I - 0x000273 00:8263: 68        .byte con_chr_bank_bg + $68   ; 
- D 0 - I - 0x000274 00:8264: 36        .byte con_chr_bank_bg + $36   ; 



off_8265_0A_02_bg:
; 00 
- D 0 - I - 0x000275 00:8265: 67        .byte con_chr_bank_bg + $67   ; 
- D 0 - I - 0x000276 00:8266: 5D        .byte con_chr_bank_bg + $5D   ; 
- D 0 - I - 0x000277 00:8267: 36        .byte con_chr_bank_bg + $36   ; 



off_8268_0A_03_bg:
; 00 
- D 0 - I - 0x000278 00:8268: 67        .byte con_chr_bank_bg + $67   ; 
- D 0 - I - 0x000279 00:8269: 5D        .byte con_chr_bank_bg + $5D   ; 
- D 0 - I - 0x00027A 00:826A: 36        .byte con_chr_bank_bg + $36   ; 
; 01 
- D 0 - I - 0x00027B 00:826B: 67        .byte con_chr_bank_bg + $67   ; 
- D 0 - I - 0x00027C 00:826C: 68        .byte con_chr_bank_bg + $68   ; 
- D 0 - I - 0x00027D 00:826D: 36        .byte con_chr_bank_bg + $36   ; 



off_826E_0A_04_bg:
; 00 
- D 0 - I - 0x00027E 00:826E: 67        .byte con_chr_bank_bg + $67   ; 
- D 0 - I - 0x00027F 00:826F: 68        .byte con_chr_bank_bg + $68   ; 
- D 0 - I - 0x000280 00:8270: 36        .byte con_chr_bank_bg + $36   ; 
; 01 
- D 0 - I - 0x000281 00:8271: 67        .byte con_chr_bank_bg + $67   ; 
- D 0 - I - 0x000282 00:8272: 68        .byte con_chr_bank_bg + $68   ; 
- D 0 - I - 0x000283 00:8273: 36        .byte con_chr_bank_bg + $36   ; 
; 02 
- D 0 - I - 0x000284 00:8274: 67        .byte con_chr_bank_bg + $67   ; 
- D 0 - I - 0x000285 00:8275: 68        .byte con_chr_bank_bg + $68   ; 
- D 0 - I - 0x000286 00:8276: 36        .byte con_chr_bank_bg + $36   ; 



off_8277_0A_05_bg:
; 00 
- D 0 - I - 0x000287 00:8277: 67        .byte con_chr_bank_bg + $67   ; 
- D 0 - I - 0x000288 00:8278: 68        .byte con_chr_bank_bg + $68   ; 
- D 0 - I - 0x000289 00:8279: 36        .byte con_chr_bank_bg + $36   ; 
; 01 
- D 0 - I - 0x00028A 00:827A: 67        .byte con_chr_bank_bg + $67   ; 
- D 0 - I - 0x00028B 00:827B: 69        .byte con_chr_bank_bg + $69   ; 
- D 0 - I - 0x00028C 00:827C: 36        .byte con_chr_bank_bg + $36   ; 



off_827D_0A_06_bg:
; 00 
- D 0 - I - 0x00028D 00:827D: 67        .byte con_chr_bank_bg + $67   ; 
- D 0 - I - 0x00028E 00:827E: 69        .byte con_chr_bank_bg + $69   ; 
- D 0 - I - 0x00028F 00:827F: 36        .byte con_chr_bank_bg + $36   ; 
; 01 
- D 0 - I - 0x000290 00:8280: 67        .byte con_chr_bank_bg + $67   ; 
- D 0 - I - 0x000291 00:8281: 69        .byte con_chr_bank_bg + $69   ; 
- D 0 - I - 0x000292 00:8282: 36        .byte con_chr_bank_bg + $36   ; 
; 02 
- D 0 - I - 0x000293 00:8283: 51        .byte con_chr_bank_bg + $51   ; 
- D 0 - I - 0x000294 00:8284: 69        .byte con_chr_bank_bg + $69   ; 
- D 0 - I - 0x000295 00:8285: 36        .byte con_chr_bank_bg + $36   ; 



off_8286_0B_00_bg:
; 00 
- D 0 - I - 0x000296 00:8286: 65        .byte con_chr_bank_bg + $65   ; 
- D 0 - I - 0x000297 00:8287: 66        .byte con_chr_bank_bg + $66   ; 
- D 0 - I - 0x000298 00:8288: 36        .byte con_chr_bank_bg + $36   ; 
; 01 
- D 0 - I - 0x000299 00:8289: 65        .byte con_chr_bank_bg + $65   ; 
- D 0 - I - 0x00029A 00:828A: 66        .byte con_chr_bank_bg + $66   ; 
- D 0 - I - 0x00029B 00:828B: 36        .byte con_chr_bank_bg + $36   ; 



off_828C_0B_01_bg:
; 00 
- D 0 - I - 0x00029C 00:828C: 65        .byte con_chr_bank_bg + $65   ; 
- D 0 - I - 0x00029D 00:828D: 66        .byte con_chr_bank_bg + $66   ; 
- D 0 - I - 0x00029E 00:828E: 36        .byte con_chr_bank_bg + $36   ; 
; 01 
- D 0 - I - 0x00029F 00:828F: 65        .byte con_chr_bank_bg + $65   ; 
- D 0 - I - 0x0002A0 00:8290: 66        .byte con_chr_bank_bg + $66   ; 
- D 0 - I - 0x0002A1 00:8291: 36        .byte con_chr_bank_bg + $36   ; 



off_8292_0B_02_bg:
; 00 
- D 0 - I - 0x0002A2 00:8292: 51        .byte con_chr_bank_bg + $51   ; 
- D 0 - I - 0x0002A3 00:8293: 66        .byte con_chr_bank_bg + $66   ; 
- D 0 - I - 0x0002A4 00:8294: 36        .byte con_chr_bank_bg + $36   ; 
; 01 
- D 0 - I - 0x0002A5 00:8295: 65        .byte con_chr_bank_bg + $65   ; 
- D 0 - I - 0x0002A6 00:8296: 66        .byte con_chr_bank_bg + $66   ; 
- D 0 - I - 0x0002A7 00:8297: 36        .byte con_chr_bank_bg + $36   ; 
; 02 
- D 0 - I - 0x0002A8 00:8298: 65        .byte con_chr_bank_bg + $65   ; 
- D 0 - I - 0x0002A9 00:8299: 66        .byte con_chr_bank_bg + $66   ; 
- D 0 - I - 0x0002AA 00:829A: 36        .byte con_chr_bank_bg + $36   ; 



off_829B_0C_00_bg:
; 00 
- D 0 - I - 0x0002AB 00:829B: 52        .byte con_chr_bank_bg + $52   ; 
- D 0 - I - 0x0002AC 00:829C: 6D        .byte con_chr_bank_bg + $6D   ; 
- D 0 - I - 0x0002AD 00:829D: 36        .byte con_chr_bank_bg + $36   ; 
; 01 
- D 0 - I - 0x0002AE 00:829E: 6C        .byte con_chr_bank_bg + $6C   ; 
- D 0 - I - 0x0002AF 00:829F: 6D        .byte con_chr_bank_bg + $6D   ; 
- D 0 - I - 0x0002B0 00:82A0: 36        .byte con_chr_bank_bg + $36   ; 



off_82A1_0C_01_bg:
; 00 
- D 0 - I - 0x0002B1 00:82A1: 6C        .byte con_chr_bank_bg + $6C   ; 
- D 0 - I - 0x0002B2 00:82A2: 6D        .byte con_chr_bank_bg + $6D   ; 
- D 0 - I - 0x0002B3 00:82A3: 36        .byte con_chr_bank_bg + $36   ; 
; 01 
- D 0 - I - 0x0002B4 00:82A4: 6C        .byte con_chr_bank_bg + $6C   ; 
- D 0 - I - 0x0002B5 00:82A5: 6D        .byte con_chr_bank_bg + $6D   ; 
- D 0 - I - 0x0002B6 00:82A6: 36        .byte con_chr_bank_bg + $36   ; 



off_82A7_0C_02_bg:
; 00 
- D 0 - I - 0x0002B7 00:82A7: 6C        .byte con_chr_bank_bg + $6C   ; 
- D 0 - I - 0x0002B8 00:82A8: 6D        .byte con_chr_bank_bg + $6D   ; 
- D 0 - I - 0x0002B9 00:82A9: 36        .byte con_chr_bank_bg + $36   ; 



off_82AA_0D_00_bg:
; 00 
- D 0 - I - 0x0002BA 00:82AA: 4B        .byte con_chr_bank_bg + $4B   ; 
- D 0 - I - 0x0002BB 00:82AB: 4D        .byte con_chr_bank_bg + $4D   ; 
- D 0 - I - 0x0002BC 00:82AC: 36        .byte con_chr_bank_bg + $36   ; 
; 01 
- D 0 - I - 0x0002BD 00:82AD: 4B        .byte con_chr_bank_bg + $4B   ; 
- D 0 - I - 0x0002BE 00:82AE: 4D        .byte con_chr_bank_bg + $4D   ; 
- D 0 - I - 0x0002BF 00:82AF: 36        .byte con_chr_bank_bg + $36   ; 
; 02 
- D 0 - I - 0x0002C0 00:82B0: 54        .byte con_chr_bank_bg + $54   ; 
- D 0 - I - 0x0002C1 00:82B1: 64        .byte con_chr_bank_bg + $64   ; 
- D 0 - I - 0x0002C2 00:82B2: 36        .byte con_chr_bank_bg + $36   ; 



off_82B3_0D_01_bg:
; 00 
- D 0 - I - 0x0002C3 00:82B3: 54        .byte con_chr_bank_bg + $54   ; 
- D 0 - I - 0x0002C4 00:82B4: 64        .byte con_chr_bank_bg + $64   ; 
- D 0 - I - 0x0002C5 00:82B5: 36        .byte con_chr_bank_bg + $36   ; 
; 01 
- D 0 - I - 0x0002C6 00:82B6: 54        .byte con_chr_bank_bg + $54   ; 
- D 0 - I - 0x0002C7 00:82B7: 64        .byte con_chr_bank_bg + $64   ; 
- D 0 - I - 0x0002C8 00:82B8: 36        .byte con_chr_bank_bg + $36   ; 
; 02 
- D 0 - I - 0x0002C9 00:82B9: 54        .byte con_chr_bank_bg + $54   ; 
- D 0 - I - 0x0002CA 00:82BA: 64        .byte con_chr_bank_bg + $64   ; 
- D 0 - I - 0x0002CB 00:82BB: 36        .byte con_chr_bank_bg + $36   ; 



off_82BC_0D_02_bg:
; 00 
- D 0 - I - 0x0002CC 00:82BC: 54        .byte con_chr_bank_bg + $54   ; 
- D 0 - I - 0x0002CD 00:82BD: 64        .byte con_chr_bank_bg + $64   ; 
- D 0 - I - 0x0002CE 00:82BE: 36        .byte con_chr_bank_bg + $36   ; 
; 01 
- D 0 - I - 0x0002CF 00:82BF: 63        .byte con_chr_bank_bg + $63   ; 
- D 0 - I - 0x0002D0 00:82C0: 64        .byte con_chr_bank_bg + $64   ; 
- D 0 - I - 0x0002D1 00:82C1: 36        .byte con_chr_bank_bg + $36   ; 
; 02 
- D 0 - I - 0x0002D2 00:82C2: 54        .byte con_chr_bank_bg + $54   ; 
- D 0 - I - 0x0002D3 00:82C3: 57        .byte con_chr_bank_bg + $57   ; 
- D 0 - I - 0x0002D4 00:82C4: 36        .byte con_chr_bank_bg + $36   ; 



off_82C5_0D_03_bg:
; 00 
- D 0 - I - 0x0002D5 00:82C5: 54        .byte con_chr_bank_bg + $54   ; 
- D 0 - I - 0x0002D6 00:82C6: 57        .byte con_chr_bank_bg + $57   ; 
- D 0 - I - 0x0002D7 00:82C7: 54        .byte con_chr_bank_bg + $54   ; 
; 01 
- D 0 - I - 0x0002D8 00:82C8: 63        .byte con_chr_bank_bg + $63   ; 
- D 0 - I - 0x0002D9 00:82C9: 64        .byte con_chr_bank_bg + $64   ; 
- D 0 - I - 0x0002DA 00:82CA: 36        .byte con_chr_bank_bg + $36   ; 



off_82CB_0E_00_bg:
; 00 
- D 0 - I - 0x0002DB 00:82CB: 6A        .byte con_chr_bank_bg + $6A   ; 
- D 0 - I - 0x0002DC 00:82CC: 6B        .byte con_chr_bank_bg + $6B   ; 
- D 0 - I - 0x0002DD 00:82CD: 36        .byte con_chr_bank_bg + $36   ; 
; 01 
- D 0 - I - 0x0002DE 00:82CE: 54        .byte con_chr_bank_bg + $54   ; 
- D 0 - I - 0x0002DF 00:82CF: 49        .byte con_chr_bank_bg + $49   ; 
- D 0 - I - 0x0002E0 00:82D0: 36        .byte con_chr_bank_bg + $36   ; 
; 02 
- D 0 - I - 0x0002E1 00:82D1: 6A        .byte con_chr_bank_bg + $6A   ; 
- D 0 - I - 0x0002E2 00:82D2: 6B        .byte con_chr_bank_bg + $6B   ; 
- D 0 - I - 0x0002E3 00:82D3: 36        .byte con_chr_bank_bg + $36   ; 



off_82D4_0E_01_bg:
; 00 
- D 0 - I - 0x0002E4 00:82D4: 6A        .byte con_chr_bank_bg + $6A   ; 
- D 0 - I - 0x0002E5 00:82D5: 6B        .byte con_chr_bank_bg + $6B   ; 
- D 0 - I - 0x0002E6 00:82D6: 36        .byte con_chr_bank_bg + $36   ; 
; 01 
- D 0 - I - 0x0002E7 00:82D7: 6A        .byte con_chr_bank_bg + $6A   ; 
- D 0 - I - 0x0002E8 00:82D8: 6B        .byte con_chr_bank_bg + $6B   ; 
- D 0 - I - 0x0002E9 00:82D9: 36        .byte con_chr_bank_bg + $36   ; 



off_82DA_0E_02_bg:
; 00 
- D 0 - I - 0x0002EA 00:82DA: 6A        .byte con_chr_bank_bg + $6A   ; 
- D 0 - I - 0x0002EB 00:82DB: 68        .byte con_chr_bank_bg + $68   ; 
- D 0 - I - 0x0002EC 00:82DC: 36        .byte con_chr_bank_bg + $36   ; 
; 01 
- D 0 - I - 0x0002ED 00:82DD: 6A        .byte con_chr_bank_bg + $6A   ; 
- D 0 - I - 0x0002EE 00:82DE: 33        .byte con_chr_bank_bg + $33   ; 
- D 0 - I - 0x0002EF 00:82DF: 36        .byte con_chr_bank_bg + $36   ; 



off_82E0_00_00_spr:
; 00 
- D 0 - I - 0x0002F0 00:82E0: 08        .byte con_chr_bank_spr + $08   ; 
- D 0 - I - 0x0002F1 00:82E1: 0B        .byte con_chr_bank_spr + $0B   ; 



off_82E2_00_01_spr:
; 00 
- D 0 - I - 0x0002F2 00:82E2: 08        .byte con_chr_bank_spr + $08   ; 
- D 0 - I - 0x0002F3 00:82E3: 13        .byte con_chr_bank_spr + $13   ; 
; 01 
- D 0 - I - 0x0002F4 00:82E4: 08        .byte con_chr_bank_spr + $08   ; 
- D 0 - I - 0x0002F5 00:82E5: 09        .byte con_chr_bank_spr + $09   ; 
; 02 
- D 0 - I - 0x0002F6 00:82E6: 12        .byte con_chr_bank_spr + $12   ; 
- D 0 - I - 0x0002F7 00:82E7: 0F        .byte con_chr_bank_spr + $0F   ; 
; 03 
- D 0 - I - 0x0002F8 00:82E8: 08        .byte con_chr_bank_spr + $08   ; 
- D 0 - I - 0x0002F9 00:82E9: 13        .byte con_chr_bank_spr + $13   ; 



off_82EA_00_02_spr:
; 00 
- D 0 - I - 0x0002FA 00:82EA: 0A        .byte con_chr_bank_spr + $0A   ; 
- D 0 - I - 0x0002FB 00:82EB: 0B        .byte con_chr_bank_spr + $0B   ; 
; 01 
- D 0 - I - 0x0002FC 00:82EC: 08        .byte con_chr_bank_spr + $08   ; 
- D 0 - I - 0x0002FD 00:82ED: 09        .byte con_chr_bank_spr + $09   ; 



off_82EE_00_03_spr:
; 00 
- D 0 - I - 0x0002FE 00:82EE: 08        .byte con_chr_bank_spr + $08   ; 
- D 0 - I - 0x0002FF 00:82EF: 09        .byte con_chr_bank_spr + $09   ; 



off_82F0_01_00_spr:
; 00 
- D 0 - I - 0x000300 00:82F0: 14        .byte con_chr_bank_spr + $14   ; 
- D 0 - I - 0x000301 00:82F1: 13        .byte con_chr_bank_spr + $13   ; 
; 01 
- D 0 - I - 0x000302 00:82F2: 14        .byte con_chr_bank_spr + $14   ; 
- D 0 - I - 0x000303 00:82F3: 13        .byte con_chr_bank_spr + $13   ; 
; 02 
- D 0 - I - 0x000304 00:82F4: 12        .byte con_chr_bank_spr + $12   ; 
- D 0 - I - 0x000305 00:82F5: 09        .byte con_chr_bank_spr + $09   ; 



off_82F6_01_01_spr:
; 00 
- D 0 - I - 0x000306 00:82F6: 14        .byte con_chr_bank_spr + $14   ; 
- D 0 - I - 0x000307 00:82F7: 0B        .byte con_chr_bank_spr + $0B   ; 
; 01 
- D 0 - I - 0x000308 00:82F8: 14        .byte con_chr_bank_spr + $14   ; 
- D 0 - I - 0x000309 00:82F9: 0F        .byte con_chr_bank_spr + $0F   ; 
; 02 
- D 0 - I - 0x00030A 00:82FA: 18        .byte con_chr_bank_spr + $18   ; 
- D 0 - I - 0x00030B 00:82FB: 19        .byte con_chr_bank_spr + $19   ; 



off_82FC_01_02_spr:
; 00 
- D 0 - I - 0x00030C 00:82FC: 14        .byte con_chr_bank_spr + $14   ; 
- D 0 - I - 0x00030D 00:82FD: 09        .byte con_chr_bank_spr + $09   ; 
; 01 
- D 0 - I - 0x00030E 00:82FE: 14        .byte con_chr_bank_spr + $14   ; 
- D 0 - I - 0x00030F 00:82FF: 0F        .byte con_chr_bank_spr + $0F   ; 
; 02 
- D 0 - I - 0x000310 00:8300: 08        .byte con_chr_bank_spr + $08   ; 
- D 0 - I - 0x000311 00:8301: 0B        .byte con_chr_bank_spr + $0B   ; 



off_8302_01_03_spr:
; 00 
- D 0 - I - 0x000312 00:8302: 14        .byte con_chr_bank_spr + $14   ; 
- D 0 - I - 0x000313 00:8303: 09        .byte con_chr_bank_spr + $09   ; 
; 01 
- D 0 - I - 0x000314 00:8304: 14        .byte con_chr_bank_spr + $14   ; 
- D 0 - I - 0x000315 00:8305: 0F        .byte con_chr_bank_spr + $0F   ; 
; 02 
- D 0 - I - 0x000316 00:8306: 08        .byte con_chr_bank_spr + $08   ; 
- D 0 - I - 0x000317 00:8307: 0B        .byte con_chr_bank_spr + $0B   ; 



off_8308_01_04_spr:
; 00 
- D 0 - I - 0x000318 00:8308: 14        .byte con_chr_bank_spr + $14   ; 
- D 0 - I - 0x000319 00:8309: 0B        .byte con_chr_bank_spr + $0B   ; 
; 01 
- D 0 - I - 0x00031A 00:830A: 14        .byte con_chr_bank_spr + $14   ; 
- D 0 - I - 0x00031B 00:830B: 0F        .byte con_chr_bank_spr + $0F   ; 
; 02 
- D 0 - I - 0x00031C 00:830C: 18        .byte con_chr_bank_spr + $18   ; 
- D 0 - I - 0x00031D 00:830D: 19        .byte con_chr_bank_spr + $19   ; 



off_830E_01_05_spr:
; 00 
- D 0 - I - 0x00031E 00:830E: 14        .byte con_chr_bank_spr + $14   ; 
- D 0 - I - 0x00031F 00:830F: 13        .byte con_chr_bank_spr + $13   ; 
; 01 
- D 0 - I - 0x000320 00:8310: 14        .byte con_chr_bank_spr + $14   ; 
- D 0 - I - 0x000321 00:8311: 13        .byte con_chr_bank_spr + $13   ; 
; 02 
- D 0 - I - 0x000322 00:8312: 12        .byte con_chr_bank_spr + $12   ; 
- D 0 - I - 0x000323 00:8313: 09        .byte con_chr_bank_spr + $09   ; 



off_8314_02_00_spr:
; 00 
- D 0 - I - 0x000324 00:8314: 08        .byte con_chr_bank_spr + $08   ; 
- D 0 - I - 0x000325 00:8315: 0F        .byte con_chr_bank_spr + $0F   ; 
; 01 
- D 0 - I - 0x000326 00:8316: 0C        .byte con_chr_bank_spr + $0C   ; 
- D 0 - I - 0x000327 00:8317: 13        .byte con_chr_bank_spr + $13   ; 



off_8318_02_01_spr:
; 00 
- D 0 - I - 0x000328 00:8318: 0C        .byte con_chr_bank_spr + $0C   ; 
- D 0 - I - 0x000329 00:8319: 0D        .byte con_chr_bank_spr + $0D   ; 



off_831A_02_02_spr:
; 00 
- D 0 - I - 0x00032A 00:831A: 0A        .byte con_chr_bank_spr + $0A   ; 
- D 0 - I - 0x00032B 00:831B: 13        .byte con_chr_bank_spr + $13   ; 
; 00 
- D 0 - I - 0x00032C 00:831C: 0A        .byte con_chr_bank_spr + $0A   ; 
- D 0 - I - 0x00032D 00:831D: 7B        .byte con_chr_bank_spr + $7B   ; 



off_831E_02_03_spr:
; 00 
- D 0 - I - 0x00032E 00:831E: 0A        .byte con_chr_bank_spr + $0A   ; 
- D 0 - I - 0x00032F 00:831F: 13        .byte con_chr_bank_spr + $13   ; 
; 01 
- D 0 - I - 0x000330 00:8320: 0C        .byte con_chr_bank_spr + $0C   ; 
- D 0 - I - 0x000331 00:8321: 0D        .byte con_chr_bank_spr + $0D   ; 
; 02 
- D 0 - I - 0x000332 00:8322: 08        .byte con_chr_bank_spr + $08   ; 
- D 0 - I - 0x000333 00:8323: 19        .byte con_chr_bank_spr + $19   ; 



off_8324_02_04_spr:
; 00 
- D 0 - I - 0x000334 00:8324: 1C        .byte con_chr_bank_spr + $1C   ; 
- D 0 - I - 0x000335 00:8325: 13        .byte con_chr_bank_spr + $13   ; 
; 01 
- D 0 - I - 0x000336 00:8326: 0C        .byte con_chr_bank_spr + $0C   ; 
- D 0 - I - 0x000337 00:8327: 13        .byte con_chr_bank_spr + $13   ; 



off_8328_03_00_spr:
; 00 
- D 0 - I - 0x000338 00:8328: 08        .byte con_chr_bank_spr + $08   ; 
- D 0 - I - 0x000339 00:8329: 0F        .byte con_chr_bank_spr + $0F   ; 
; 01 
- D 0 - I - 0x00033A 00:832A: 0E        .byte con_chr_bank_spr + $0E   ; 
- D 0 - I - 0x00033B 00:832B: 0F        .byte con_chr_bank_spr + $0F   ; 
; 02 
- D 0 - I - 0x00033C 00:832C: 12        .byte con_chr_bank_spr + $12   ; 
- D 0 - I - 0x00033D 00:832D: 09        .byte con_chr_bank_spr + $09   ; 



off_832E_03_01_spr:
; 00 
- D 0 - I - 0x00033E 00:832E: 08        .byte con_chr_bank_spr + $08   ; 
- D 0 - I - 0x00033F 00:832F: 13        .byte con_chr_bank_spr + $13   ; 
; 01 
- D 0 - I - 0x000340 00:8330: 08        .byte con_chr_bank_spr + $08   ; 
- D 0 - I - 0x000341 00:8331: 13        .byte con_chr_bank_spr + $13   ; 



off_8332_03_02_spr:
; 00 
- D 0 - I - 0x000342 00:8332: 08        .byte con_chr_bank_spr + $08   ; 
- D 0 - I - 0x000343 00:8333: 09        .byte con_chr_bank_spr + $09   ; 
; 01 
- D 0 - I - 0x000344 00:8334: 18        .byte con_chr_bank_spr + $18   ; 
- D 0 - I - 0x000345 00:8335: 19        .byte con_chr_bank_spr + $19   ; 



off_8336_03_03_spr:
; 00 
- D 0 - I - 0x000346 00:8336: 08        .byte con_chr_bank_spr + $08   ; 
- D 0 - I - 0x000347 00:8337: 0F        .byte con_chr_bank_spr + $0F   ; 
; 01 
- D 0 - I - 0x000348 00:8338: 12        .byte con_chr_bank_spr + $12   ; 
- D 0 - I - 0x000349 00:8339: 19        .byte con_chr_bank_spr + $19   ; 



off_833A_03_04_spr:
; 00 
- D 0 - I - 0x00034A 00:833A: 08        .byte con_chr_bank_spr + $08   ; 
- D 0 - I - 0x00034B 00:833B: 13        .byte con_chr_bank_spr + $13   ; 
; 01 
- D 0 - I - 0x00034C 00:833C: 08        .byte con_chr_bank_spr + $08   ; 
- D 0 - I - 0x00034D 00:833D: 0F        .byte con_chr_bank_spr + $0F   ; 
; 02 
- D 0 - I - 0x00034E 00:833E: 08        .byte con_chr_bank_spr + $08   ; 
- D 0 - I - 0x00034F 00:833F: 19        .byte con_chr_bank_spr + $19   ; 



off_8340_04_00_spr:
; 00 
- D 0 - I - 0x000350 00:8340: 12        .byte con_chr_bank_spr + $12   ; 
- D 0 - I - 0x000351 00:8341: 15        .byte con_chr_bank_spr + $15   ; 
; 01 
- D 0 - I - 0x000352 00:8342: 0A        .byte con_chr_bank_spr + $0A   ; 
- D 0 - I - 0x000353 00:8343: 0B        .byte con_chr_bank_spr + $0B   ; 
; 02 
- D 0 - I - 0x000354 00:8344: 08        .byte con_chr_bank_spr + $08   ; 
- D 0 - I - 0x000355 00:8345: 09        .byte con_chr_bank_spr + $09   ; 



off_8346_04_01_spr:
; 00 
- D 0 - I - 0x000356 00:8346: 0A        .byte con_chr_bank_spr + $0A   ; 
- D 0 - I - 0x000357 00:8347: 0B        .byte con_chr_bank_spr + $0B   ; 
; 01 
- D 0 - I - 0x000358 00:8348: 14        .byte con_chr_bank_spr + $14   ; 
- D 0 - I - 0x000359 00:8349: 0B        .byte con_chr_bank_spr + $0B   ; 
; 02 
- D 0 - I - 0x00035A 00:834A: 12        .byte con_chr_bank_spr + $12   ; 
- D 0 - I - 0x00035B 00:834B: 0B        .byte con_chr_bank_spr + $0B   ; 



off_834C_04_02_spr:
; 00 
- D 0 - I - 0x00035C 00:834C: 08        .byte con_chr_bank_spr + $08   ; 
- D 0 - I - 0x00035D 00:834D: 09        .byte con_chr_bank_spr + $09   ; 
; 01 
- D 0 - I - 0x00035E 00:834E: 0A        .byte con_chr_bank_spr + $0A   ; 
- D 0 - I - 0x00035F 00:834F: 0B        .byte con_chr_bank_spr + $0B   ; 
; 02 
- D 0 - I - 0x000360 00:8350: 08        .byte con_chr_bank_spr + $08   ; 
- D 0 - I - 0x000361 00:8351: 09        .byte con_chr_bank_spr + $09   ; 



off_8352_05_00_spr:
; 00 
- D 0 - I - 0x000362 00:8352: 0A        .byte con_chr_bank_spr + $0A   ; 
- D 0 - I - 0x000363 00:8353: 09        .byte con_chr_bank_spr + $09   ; 



off_8354_05_01_spr:
; 00 
- D 0 - I - 0x000364 00:8354: 0A        .byte con_chr_bank_spr + $0A   ; 
- D 0 - I - 0x000365 00:8355: 17        .byte con_chr_bank_spr + $17   ; 



off_8356_05_02_spr:
; 00 
- D 0 - I - 0x000366 00:8356: 0A        .byte con_chr_bank_spr + $0A   ; 
- D 0 - I - 0x000367 00:8357: 09        .byte con_chr_bank_spr + $09   ; 
; 01 
- D 0 - I - 0x000368 00:8358: 0A        .byte con_chr_bank_spr + $0A   ; 
- D 0 - I - 0x000369 00:8359: 09        .byte con_chr_bank_spr + $09   ; 



off_835A_05_03_spr:
; 00 
- D 0 - I - 0x00036A 00:835A: 0A        .byte con_chr_bank_spr + $0A   ; 
- D 0 - I - 0x00036B 00:835B: 0B        .byte con_chr_bank_spr + $0B   ; 
; 01 
- D 0 - I - 0x00036C 00:835C: 0A        .byte con_chr_bank_spr + $0A   ; 
- D 0 - I - 0x00036D 00:835D: 17        .byte con_chr_bank_spr + $17   ; 



off_835E_06_00_spr:
; 00 
- D 0 - I - 0x00036E 00:835E: 10        .byte con_chr_bank_spr + $10   ; 
- D 0 - I - 0x00036F 00:835F: 09        .byte con_chr_bank_spr + $09   ; 
; 01 
- D 0 - I - 0x000370 00:8360: 10        .byte con_chr_bank_spr + $10   ; 
- D 0 - I - 0x000371 00:8361: 17        .byte con_chr_bank_spr + $17   ; 



off_8362_06_01_spr:
; 00 
- D 0 - I - 0x000372 00:8362: 10        .byte con_chr_bank_spr + $10   ; 
- D 0 - I - 0x000373 00:8363: 09        .byte con_chr_bank_spr + $09   ; 



off_8364_06_02_spr:
; 00 
- D 0 - I - 0x000374 00:8364: 18        .byte con_chr_bank_spr + $18   ; 
- D 0 - I - 0x000375 00:8365: 19        .byte con_chr_bank_spr + $19   ; 
; 01 
- D 0 - I - 0x000376 00:8366: 10        .byte con_chr_bank_spr + $10   ; 
- D 0 - I - 0x000377 00:8367: 09        .byte con_chr_bank_spr + $09   ; 
; 02 
- D 0 - I - 0x000378 00:8368: 08        .byte con_chr_bank_spr + $08   ; 
- D 0 - I - 0x000379 00:8369: 13        .byte con_chr_bank_spr + $13   ; 



off_836A_07_00_spr:
; 00 
- D 0 - I - 0x00037A 00:836A: 08        .byte con_chr_bank_spr + $08   ; 
- D 0 - I - 0x00037B 00:836B: 15        .byte con_chr_bank_spr + $15   ; 
; 01 
- D 0 - I - 0x00037C 00:836C: 0E        .byte con_chr_bank_spr + $0E   ; 
- D 0 - I - 0x00037D 00:836D: 15        .byte con_chr_bank_spr + $15   ; 



off_836E_07_01_spr:
; 00 
- D 0 - I - 0x00037E 00:836E: 0E        .byte con_chr_bank_spr + $0E   ; 
- D 0 - I - 0x00037F 00:836F: 0B        .byte con_chr_bank_spr + $0B   ; 



off_8370_07_02_spr:
; 00 
- D 0 - I - 0x000380 00:8370: 18        .byte con_chr_bank_spr + $18   ; 
- D 0 - I - 0x000381 00:8371: 15        .byte con_chr_bank_spr + $15   ; 



off_8372_07_03_spr:
; 00 
- D 0 - I - 0x000382 00:8372: 08        .byte con_chr_bank_spr + $08   ; 
- D 0 - I - 0x000383 00:8373: 15        .byte con_chr_bank_spr + $15   ; 



off_8374_07_04_spr:
; 00 
- D 0 - I - 0x000384 00:8374: 08        .byte con_chr_bank_spr + $08   ; 
- D 0 - I - 0x000385 00:8375: 15        .byte con_chr_bank_spr + $15   ; 
; 01 
- D 0 - I - 0x000386 00:8376: 0E        .byte con_chr_bank_spr + $0E   ; 
- D 0 - I - 0x000387 00:8377: 15        .byte con_chr_bank_spr + $15   ; 



off_8378_07_05_spr:
; 00 
- D 0 - I - 0x000388 00:8378: 0E        .byte con_chr_bank_spr + $0E   ; 
- D 0 - I - 0x000389 00:8379: 15        .byte con_chr_bank_spr + $15   ; 
; 01 
- D 0 - I - 0x00038A 00:837A: 0E        .byte con_chr_bank_spr + $0E   ; 
- D 0 - I - 0x00038B 00:837B: 13        .byte con_chr_bank_spr + $13   ; 



off_837C_07_06_spr:
; 00 
- D 0 - I - 0x00038C 00:837C: 08        .byte con_chr_bank_spr + $08   ; 
- D 0 - I - 0x00038D 00:837D: 13        .byte con_chr_bank_spr + $13   ; 



off_837E_08_00_spr:
; 00 
- D 0 - I - 0x00038E 00:837E: 0A        .byte con_chr_bank_spr + $0A   ; 
- D 0 - I - 0x00038F 00:837F: 09        .byte con_chr_bank_spr + $09   ; 
; 01 
- D 0 - I - 0x000390 00:8380: 14        .byte con_chr_bank_spr + $14   ; 
- D 0 - I - 0x000391 00:8381: 0B        .byte con_chr_bank_spr + $0B   ; 



off_8382_08_01_spr:
; 00 
- D 0 - I - 0x000392 00:8382: 0A        .byte con_chr_bank_spr + $0A   ; 
- D 0 - I - 0x000393 00:8383: 11        .byte con_chr_bank_spr + $11   ; 



off_8384_08_02_spr:
; 00 
- D 0 - I - 0x000394 00:8384: 0A        .byte con_chr_bank_spr + $0A   ; 
- D 0 - I - 0x000395 00:8385: 11        .byte con_chr_bank_spr + $11   ; 
; 01 
- D 0 - I - 0x000396 00:8386: 0A        .byte con_chr_bank_spr + $0A   ; 
- D 0 - I - 0x000397 00:8387: 11        .byte con_chr_bank_spr + $11   ; 



off_8388_08_03_spr:
; 00 
- D 0 - I - 0x000398 00:8388: 0A        .byte con_chr_bank_spr + $0A   ; 
- D 0 - I - 0x000399 00:8389: 11        .byte con_chr_bank_spr + $11   ; 



off_838A_08_04_spr:
; 00 
- D 0 - I - 0x00039A 00:838A: 0A        .byte con_chr_bank_spr + $0A   ; 
- D 0 - I - 0x00039B 00:838B: 11        .byte con_chr_bank_spr + $11   ; 



off_838C_09_00_spr:
; 00 
- D 0 - I - 0x00039C 00:838C: 0A        .byte con_chr_bank_spr + $0A   ; 
- D 0 - I - 0x00039D 00:838D: 09        .byte con_chr_bank_spr + $09   ; 
; 01 
- D 0 - I - 0x00039E 00:838E: 0E        .byte con_chr_bank_spr + $0E   ; 
- D 0 - I - 0x00039F 00:838F: 0B        .byte con_chr_bank_spr + $0B   ; 



off_8390_09_01_spr:
; 00 
- D 0 - I - 0x0003A0 00:8390: 0E        .byte con_chr_bank_spr + $0E   ; 
- D 0 - I - 0x0003A1 00:8391: 13        .byte con_chr_bank_spr + $13   ; 
; 01 
- D 0 - I - 0x0003A2 00:8392: 14        .byte con_chr_bank_spr + $14   ; 
- D 0 - I - 0x0003A3 00:8393: 09        .byte con_chr_bank_spr + $09   ; 
; 02 
- D 0 - I - 0x0003A4 00:8394: 0A        .byte con_chr_bank_spr + $0A   ; 
- D 0 - I - 0x0003A5 00:8395: 13        .byte con_chr_bank_spr + $13   ; 



off_8396_0A_00_spr:
; 00 
- D 0 - I - 0x0003A6 00:8396: 08        .byte con_chr_bank_spr + $08   ; 
- D 0 - I - 0x0003A7 00:8397: 0F        .byte con_chr_bank_spr + $0F   ; 
; 01 
- D 0 - I - 0x0003A8 00:8398: 0A        .byte con_chr_bank_spr + $0A   ; 
- D 0 - I - 0x0003A9 00:8399: 15        .byte con_chr_bank_spr + $15   ; 



off_839A_0A_01_spr:
; 00 
- D 0 - I - 0x0003AA 00:839A: 0A        .byte con_chr_bank_spr + $0A   ; 
- D 0 - I - 0x0003AB 00:839B: 09        .byte con_chr_bank_spr + $09   ; 



off_839C_0A_02_spr:
; 00 
- D 0 - I - 0x0003AC 00:839C: 0A        .byte con_chr_bank_spr + $0A   ; 
- D 0 - I - 0x0003AD 00:839D: 15        .byte con_chr_bank_spr + $15   ; 



off_839E_0A_03_spr:
; 00 
- D 0 - I - 0x0003AE 00:839E: 0A        .byte con_chr_bank_spr + $0A   ; 
- D 0 - I - 0x0003AF 00:839F: 0B        .byte con_chr_bank_spr + $0B   ; 
; 01 
- D 0 - I - 0x0003B0 00:83A0: 0E        .byte con_chr_bank_spr + $0E   ; 
- D 0 - I - 0x0003B1 00:83A1: 0B        .byte con_chr_bank_spr + $0B   ; 



off_83A2_0A_04_spr:
; 00 
- D 0 - I - 0x0003B2 00:83A2: 0A        .byte con_chr_bank_spr + $0A   ; 
- D 0 - I - 0x0003B3 00:83A3: 0B        .byte con_chr_bank_spr + $0B   ; 
; 01 
- D 0 - I - 0x0003B4 00:83A4: 0C        .byte con_chr_bank_spr + $0C   ; 
- D 0 - I - 0x0003B5 00:83A5: 13        .byte con_chr_bank_spr + $13   ; 
; 02 
- D 0 - I - 0x0003B6 00:83A6: 08        .byte con_chr_bank_spr + $08   ; 
- D 0 - I - 0x0003B7 00:83A7: 0F        .byte con_chr_bank_spr + $0F   ; 



off_83A8_0A_05_spr:
; 00 
- D 0 - I - 0x0003B8 00:83A8: 0A        .byte con_chr_bank_spr + $0A   ; 
- D 0 - I - 0x0003B9 00:83A9: 09        .byte con_chr_bank_spr + $09   ; 
; 01 
- D 0 - I - 0x0003BA 00:83AA: 12        .byte con_chr_bank_spr + $12   ; 
- D 0 - I - 0x0003BB 00:83AB: 0F        .byte con_chr_bank_spr + $0F   ; 



off_83AC_0A_06_spr:
; 00 
- D 0 - I - 0x0003BC 00:83AC: 0C        .byte con_chr_bank_spr + $0C   ; 
- D 0 - I - 0x0003BD 00:83AD: 0F        .byte con_chr_bank_spr + $0F   ; 
; 01 
- D 0 - I - 0x0003BE 00:83AE: 14        .byte con_chr_bank_spr + $14   ; 
- D 0 - I - 0x0003BF 00:83AF: 0B        .byte con_chr_bank_spr + $0B   ; 
; 02 
- D 0 - I - 0x0003C0 00:83B0: 0E        .byte con_chr_bank_spr + $0E   ; 
- D 0 - I - 0x0003C1 00:83B1: 09        .byte con_chr_bank_spr + $09   ; 



off_83B2_0B_00_spr:
; 00 
- D 0 - I - 0x0003C2 00:83B2: 0A        .byte con_chr_bank_spr + $0A   ; 
- D 0 - I - 0x0003C3 00:83B3: 0B        .byte con_chr_bank_spr + $0B   ; 
; 01 
- D 0 - I - 0x0003C4 00:83B4: 0A        .byte con_chr_bank_spr + $0A   ; 
- D 0 - I - 0x0003C5 00:83B5: 2F        .byte con_chr_bank_spr + $2F   ; 



off_83B6_0B_01_spr:
; 00 
- D 0 - I - 0x0003C6 00:83B6: 0A        .byte con_chr_bank_spr + $0A   ; 
- D 0 - I - 0x0003C7 00:83B7: 09        .byte con_chr_bank_spr + $09   ; 
; 01 
- D 0 - I - 0x0003C8 00:83B8: 12        .byte con_chr_bank_spr + $12   ; 
- D 0 - I - 0x0003C9 00:83B9: 09        .byte con_chr_bank_spr + $09   ; 



off_83BA_0B_02_spr:
; 00 
- D 0 - I - 0x0003CA 00:83BA: 0A        .byte con_chr_bank_spr + $0A   ; 
- D 0 - I - 0x0003CB 00:83BB: 13        .byte con_chr_bank_spr + $13   ; 
; 01 
- D 0 - I - 0x0003CC 00:83BC: 14        .byte con_chr_bank_spr + $14   ; 
- D 0 - I - 0x0003CD 00:83BD: 0F        .byte con_chr_bank_spr + $0F   ; 
; 02 
- D 0 - I - 0x0003CE 00:83BE: 08        .byte con_chr_bank_spr + $08   ; 
- D 0 - I - 0x0003CF 00:83BF: 13        .byte con_chr_bank_spr + $13   ; 



off_83C0_0C_00_spr:
; 00 
- D 0 - I - 0x0003D0 00:83C0: 08        .byte con_chr_bank_spr + $08   ; 
- D 0 - I - 0x0003D1 00:83C1: 09        .byte con_chr_bank_spr + $09   ; 
; 01 
- D 0 - I - 0x0003D2 00:83C2: 0C        .byte con_chr_bank_spr + $0C   ; 
- D 0 - I - 0x0003D3 00:83C3: 0F        .byte con_chr_bank_spr + $0F   ; 



off_83C4_0C_01_spr:
; 00 
- D 0 - I - 0x0003D4 00:83C4: 0E        .byte con_chr_bank_spr + $0E   ; 
- D 0 - I - 0x0003D5 00:83C5: 13        .byte con_chr_bank_spr + $13   ; 
; 01 
- D 0 - I - 0x0003D6 00:83C6: 0E        .byte con_chr_bank_spr + $0E   ; 
- D 0 - I - 0x0003D7 00:83C7: 09        .byte con_chr_bank_spr + $09   ; 



off_83C8_0C_02_spr:
; 00 
- D 0 - I - 0x0003D8 00:83C8: 14        .byte con_chr_bank_spr + $14   ; 
- D 0 - I - 0x0003D9 00:83C9: 09        .byte con_chr_bank_spr + $09   ; 



off_83CA_0D_00_spr:
; 00 
- D 0 - I - 0x0003DA 00:83CA: 63        .byte con_chr_bank_spr + $63   ; 
- D 0 - I - 0x0003DB 00:83CB: 64        .byte con_chr_bank_spr + $64   ; 
; 01 
- D 0 - I - 0x0003DC 00:83CC: 0A        .byte con_chr_bank_spr + $0A   ; 
- D 0 - I - 0x0003DD 00:83CD: 2F        .byte con_chr_bank_spr + $2F   ; 
; 02 
- D 0 - I - 0x0003DE 00:83CE: 63        .byte con_chr_bank_spr + $63   ; 
- D 0 - I - 0x0003DF 00:83CF: 64        .byte con_chr_bank_spr + $64   ; 



off_83D0_0D_01_spr:
; 00 
- D 0 - I - 0x0003E0 00:83D0: 63        .byte con_chr_bank_spr + $63   ; 
- D 0 - I - 0x0003E1 00:83D1: 64        .byte con_chr_bank_spr + $64   ; 
; 01 
- D 0 - I - 0x0003E2 00:83D2: 0A        .byte con_chr_bank_spr + $0A   ; 
- D 0 - I - 0x0003E3 00:83D3: 0B        .byte con_chr_bank_spr + $0B   ; 
; 02 
- D 0 - I - 0x0003E4 00:83D4: 0A        .byte con_chr_bank_spr + $0A   ; 
- D 0 - I - 0x0003E5 00:83D5: 09        .byte con_chr_bank_spr + $09   ; 



off_83D6_0D_02_spr:
; 00 
- D 0 - I - 0x0003E6 00:83D6: 14        .byte con_chr_bank_spr + $14   ; 
- D 0 - I - 0x0003E7 00:83D7: 13        .byte con_chr_bank_spr + $13   ; 
; 01 
- D 0 - I - 0x0003E8 00:83D8: 14        .byte con_chr_bank_spr + $14   ; 
- D 0 - I - 0x0003E9 00:83D9: 0B        .byte con_chr_bank_spr + $0B   ; 
; 02 
- D 0 - I - 0x0003EA 00:83DA: 08        .byte con_chr_bank_spr + $08   ; 
- D 0 - I - 0x0003EB 00:83DB: 09        .byte con_chr_bank_spr + $09   ; 



off_83DC_0D_03_spr:
; 00 
- D 0 - I - 0x0003EC 00:83DC: 0A        .byte con_chr_bank_spr + $0A   ; 
- D 0 - I - 0x0003ED 00:83DD: 17        .byte con_chr_bank_spr + $17   ; 
; 01 
- D 0 - I - 0x0003EE 00:83DE: 12        .byte con_chr_bank_spr + $12   ; 
- D 0 - I - 0x0003EF 00:83DF: 0F        .byte con_chr_bank_spr + $0F   ; 



off_83E0_0E_00_spr:
; 00 
- D 0 - I - 0x0003F0 00:83E0: 0A        .byte con_chr_bank_spr + $0A   ; 
- D 0 - I - 0x0003F1 00:83E1: 09        .byte con_chr_bank_spr + $09   ; 
; 01 
- D 0 - I - 0x0003F2 00:83E2: 14        .byte con_chr_bank_spr + $14   ; 
- D 0 - I - 0x0003F3 00:83E3: 0F        .byte con_chr_bank_spr + $0F   ; 
; 02 
- D 0 - I - 0x0003F4 00:83E4: 08        .byte con_chr_bank_spr + $08   ; 
- D 0 - I - 0x0003F5 00:83E5: 13        .byte con_chr_bank_spr + $13   ; 



off_83E6_0E_01_spr:
; 00 
- D 0 - I - 0x0003F6 00:83E6: 0C        .byte con_chr_bank_spr + $0C   ; 
- D 0 - I - 0x0003F7 00:83E7: 13        .byte con_chr_bank_spr + $13   ; 
; 01 
- D 0 - I - 0x0003F8 00:83E8: 12        .byte con_chr_bank_spr + $12   ; 
- D 0 - I - 0x0003F9 00:83E9: 09        .byte con_chr_bank_spr + $09   ; 



off_83EA_0E_02_spr:
; 00 
- D 0 - I - 0x0003FA 00:83EA: 61        .byte con_chr_bank_spr + $61   ; 
- D 0 - I - 0x0003FB 00:83EB: 62        .byte con_chr_bank_spr + $62   ; 
; 01 
- D 0 - I - 0x0003FC 00:83EC: 61        .byte con_chr_bank_spr + $61   ; 
- D 0 - I - 0x0003FD 00:83ED: 62        .byte con_chr_bank_spr + $62   ; 



sub_0x0003FE:
C - - - - - 0x0003FE 00:83EE: A2 00     LDX #$00
C - - - - - 0x000400 00:83F0: A5 4B     LDA ram_chr_bank______5129
C - - - - - 0x000402 00:83F2: 20 F9 83  JSR sub_83F9
C - - - - - 0x000405 00:83F5: A2 08     LDX #$08
C - - - - - 0x000407 00:83F7: A5 4C     LDA ram_chr_bank_5126_512A
sub_83F9:
C - - - - - 0x000409 00:83F9: A0 00     LDY #$00
C - - - - - 0x00040B 00:83FB: C9 33     CMP #con__chr_bank + $33
C - - - - - 0x00040D 00:83FD: F0 33     BEQ bra_8432_33_36_37
C - - - - - 0x00040F 00:83FF: A0 02     LDY #$02
C - - - - - 0x000411 00:8401: C9 36     CMP #con__chr_bank + $36
C - - - - - 0x000413 00:8403: F0 2D     BEQ bra_8432_33_36_37
C - - - - - 0x000415 00:8405: A0 04     LDY #$04
C - - - - - 0x000417 00:8407: C9 37     CMP #con__chr_bank + $37
C - - - - - 0x000419 00:8409: F0 27     BEQ bra_8432_33_36_37
C - - - - - 0x00041B 00:840B: 38        SEC
C - - - - - 0x00041C 00:840C: E9 44     SBC #$44
C - - - - - 0x00041E 00:840E: 0A        ASL
C - - - - - 0x00041F 00:840F: A8        TAY
C - - - - - 0x000420 00:8410: B9 3D 84  LDA tbl_843D,Y
C - - - - - 0x000423 00:8413: 85 08     STA ram_0008_t01C_data
C - - - - - 0x000425 00:8415: B9 3E 84  LDA tbl_843D + $01,Y
loc_8418:
C D 0 - - - 0x000428 00:8418: 85 09     STA ram_0008_t01C_data + $01
C - - - - - 0x00042A 00:841A: A0 00     LDY #$00
bra_841C_loop:
C - - - - - 0x00042C 00:841C: B1 08     LDA (ram_0008_t01C_data),Y
C - - - - - 0x00042E 00:841E: C8        INY
C - - - - - 0x00042F 00:841F: 85 0A     STA ram_000A_t017
C - - - - - 0x000431 00:8421: B1 08     LDA (ram_0008_t01C_data),Y
C - - - - - 0x000433 00:8423: C8        INY
bra_8424_loop:
C - - - - - 0x000434 00:8424: 9D 70 07  STA ram_0770,X
C - - - - - 0x000437 00:8427: E8        INX
C - - - - - 0x000438 00:8428: C6 0A     DEC ram_000A_t017
C - - - - - 0x00043A 00:842A: D0 F8     BNE bra_8424_loop
C - - - - - 0x00043C 00:842C: 8A        TXA
C - - - - - 0x00043D 00:842D: 29 07     AND #$07
C - - - - - 0x00043F 00:842F: D0 EB     BNE bra_841C_loop
C - - - - - 0x000441 00:8431: 60        RTS
bra_8432_33_36_37:
C - - - - - 0x000442 00:8432: B9 93 84  LDA tbl_8493,Y
C - - - - - 0x000445 00:8435: 85 08     STA ram_0008_t01C_data
C - - - - - 0x000447 00:8437: B9 94 84  LDA tbl_8493 + $01,Y
C - - - - - 0x00044A 00:843A: 4C 18 84  JMP loc_8418



tbl_843D:
- - - - - - 0x00044D 00:843D: 99 84     .word _off001_8499_44
- D 0 - - - 0x00044F 00:843F: A3 84     .word _off001_84A3_45
- D 0 - - - 0x000451 00:8441: 99 84     .word _off001_8499_46
- D 0 - - - 0x000453 00:8443: A7 84     .word _off001_84A7_47
- D 0 - - - 0x000455 00:8445: 99 84     .word _off001_8499_48
- D 0 - - - 0x000457 00:8447: B3 84     .word _off001_84B3_49
- D 0 - - - 0x000459 00:8449: AB 84     .word _off001_84AB_4A
- D 0 - - - 0x00045B 00:844B: 99 84     .word _off001_8499_4B
- D 0 - - - 0x00045D 00:844D: 99 84     .word _off001_8499_4C
- D 0 - - - 0x00045F 00:844F: AF 84     .word _off001_84AF_4D
- D 0 - - - 0x000461 00:8451: 99 84     .word _off001_8499_4E
- D 0 - - - 0x000463 00:8453: 99 84     .word _off001_8499_4F
- D 0 - - - 0x000465 00:8455: B3 84     .word _off001_84B3_50
- D 0 - - - 0x000467 00:8457: 99 84     .word _off001_8499_51
- D 0 - - - 0x000469 00:8459: 99 84     .word _off001_8499_52
- D 0 - - - 0x00046B 00:845B: B9 84     .word _off001_84B9_53
- D 0 - - - 0x00046D 00:845D: BD 84     .word _off001_84BD_54
- - - - - - 0x00046F 00:845F: BD 84     .word _off001_84BD_55
- - - - - - 0x000471 00:8461: BD 84     .word _off001_84BD_56
- D 0 - - - 0x000473 00:8463: C1 84     .word _off001_84C1_57
- D 0 - - - 0x000475 00:8465: 99 84     .word _off001_8499_58
- D 0 - - - 0x000477 00:8467: C9 84     .word _off001_84C9_59
- D 0 - - - 0x000479 00:8469: CD 84     .word _off001_84CD_5A
- D 0 - - - 0x00047B 00:846B: 99 84     .word _off001_8499_5B
- D 0 - - - 0x00047D 00:846D: 99 84     .word _off001_8499_5C
- D 0 - - - 0x00047F 00:846F: D3 84     .word _off001_84D3_5D
- D 0 - - - 0x000481 00:8471: 99 84     .word _off001_8499_5E
- D 0 - - - 0x000483 00:8473: 99 84     .word _off001_8499_5F
- D 0 - - - 0x000485 00:8475: D9 84     .word _off001_84D9_60
- D 0 - - - 0x000487 00:8477: 99 84     .word _off001_8499_61
- D 0 - - - 0x000489 00:8479: DF 84     .word _off001_84DF_62
- D 0 - - - 0x00048B 00:847B: 99 84     .word _off001_8499_63
- D 0 - - - 0x00048D 00:847D: E3 84     .word _off001_84E3_64
- D 0 - - - 0x00048F 00:847F: E7 84     .word _off001_84E7_65
- D 0 - - - 0x000491 00:8481: EB 84     .word _off001_84EB_66
- D 0 - - - 0x000493 00:8483: 99 84     .word _off001_8499_67
- D 0 - - - 0x000495 00:8485: F1 84     .word _off001_84F1_68
- D 0 - - - 0x000497 00:8487: F1 84     .word _off001_84F1_69
- D 0 - - - 0x000499 00:8489: 99 84     .word _off001_8499_6A
- D 0 - - - 0x00049B 00:848B: F7 84     .word _off001_84F7_6B
- D 0 - - - 0x00049D 00:848D: 99 84     .word _off001_8499_6C
- D 0 - - - 0x00049F 00:848F: FD 84     .word _off001_84FD_6D
- D 0 - - - 0x0004A1 00:8491: 9F 84     .word _off001_849F_6E



tbl_8493:
- D 0 - - - 0x0004A3 00:8493: 9B 84     .word _off001_849B_33
- - - - - - 0x0004A5 00:8495: 9B 84     .word _off001_849B_36
- - - - - - 0x0004A7 00:8497: 9B 84     .word _off001_849B_37



_off001_8499_44:
_off001_8499_46:
_off001_8499_48:
_off001_8499_4B:
_off001_8499_4C:
_off001_8499_4E:
_off001_8499_4F:
_off001_8499_51:
_off001_8499_52:
_off001_8499_58:
_off001_8499_5B:
_off001_8499_5C:
_off001_8499_5E:
_off001_8499_5F:
_off001_8499_61:
_off001_8499_63:
_off001_8499_67:
_off001_8499_6A:
_off001_8499_6C:
; total counter must be 08, like 06 + 02 or 04 + 02 + 02
- D 0 - I - 0x0004A9 00:8499: 08        .byte $08, $80   ; counter + ???



_off001_849B_33:
_off001_849B_36:
_off001_849B_37:
- D 0 - I - 0x0004AB 00:849B: 06        .byte $06, $BC   ; 
- D 0 - I - 0x0004AD 00:849D: 02        .byte $02, $C0   ; 



_off001_849F_6E:
- D 0 - I - 0x0004AF 00:849F: 06        .byte $06, $7B   ; 
- D 0 - I - 0x0004B1 00:84A1: 02        .byte $02, $80   ; 



_off001_84A3_45:
- D 0 - I - 0x0004B3 00:84A3: 06        .byte $06, $7E   ; 
- D 0 - I - 0x0004B5 00:84A5: 02        .byte $02, $80   ; 



_off001_84A7_47:
- D 0 - I - 0x0004B7 00:84A7: 06        .byte $06, $B7   ; 
- D 0 - I - 0x0004B9 00:84A9: 02        .byte $02, $C0   ; 



_off001_84AB_4A:
- D 0 - I - 0x0004BB 00:84AB: 06        .byte $06, $B9   ; 
- D 0 - I - 0x0004BD 00:84AD: 02        .byte $02, $C0   ; 



_off001_84AF_4D:
- D 0 - I - 0x0004BF 00:84AF: 06        .byte $06, $B8   ; 
- D 0 - I - 0x0004C1 00:84B1: 02        .byte $02, $C0   ; 



_off001_84B3_49:
_off001_84B3_50:
- D 0 - I - 0x0004C3 00:84B3: 04        .byte $04, $B8   ; 
- D 0 - I - 0x0004C5 00:84B5: 02        .byte $02, $B9   ; 
- D 0 - I - 0x0004C7 00:84B7: 02        .byte $02, $C0   ; 



_off001_84B9_53:
- D 0 - I - 0x0004C9 00:84B9: 06        .byte $06, $7A   ; 
- D 0 - I - 0x0004CB 00:84BB: 02        .byte $02, $80   ; 



_off001_84BD_54:
_off001_84BD_55:
_off001_84BD_56:
- D 0 - I - 0x0004CD 00:84BD: 06        .byte $06, $7C   ; 
- D 0 - I - 0x0004CF 00:84BF: 02        .byte $02, $80   ; 



_off001_84C1_57:
- D 0 - I - 0x0004D1 00:84C1: 02        .byte $02, $B6   ; 
- D 0 - I - 0x0004D3 00:84C3: 01        .byte $01, $B7   ; 
- D 0 - I - 0x0004D5 00:84C5: 03        .byte $03, $B8   ; 
- D 0 - I - 0x0004D7 00:84C7: 02        .byte $02, $C0   ; 



_off001_84C9_59:
- D 0 - I - 0x0004D9 00:84C9: 06        .byte $06, $78   ; 
- D 0 - I - 0x0004DB 00:84CB: 02        .byte $02, $80   ; 



_off001_84CD_5A:
- D 0 - I - 0x0004DD 00:84CD: 01        .byte $01, $B8   ; 
- D 0 - I - 0x0004DF 00:84CF: 05        .byte $05, $BA   ; 
- D 0 - I - 0x0004E1 00:84D1: 02        .byte $02, $C0   ; 



_off001_84D3_5D:
- D 0 - I - 0x0004E3 00:84D3: 04        .byte $04, $B2   ; 
- D 0 - I - 0x0004E5 00:84D5: 02        .byte $02, $B4   ; 
- D 0 - I - 0x0004E7 00:84D7: 02        .byte $02, $C0   ; 



_off001_84D9_60:
- D 0 - I - 0x0004E9 00:84D9: 04        .byte $04, $BA   ; 
- D 0 - I - 0x0004EB 00:84DB: 02        .byte $02, $BB   ; 
- D 0 - I - 0x0004ED 00:84DD: 02        .byte $02, $C0   ; 



_off001_84DF_62:
- D 0 - I - 0x0004EF 00:84DF: 06        .byte $06, $A0   ; 
- D 0 - I - 0x0004F1 00:84E1: 02        .byte $02, $C0   ; 



_off001_84E3_64:
- D 0 - I - 0x0004F3 00:84E3: 06        .byte $06, $B8   ; 
- D 0 - I - 0x0004F5 00:84E5: 02        .byte $02, $C0   ; 



_off001_84E7_65:
- D 0 - I - 0x0004F7 00:84E7: 06        .byte $06, $7C   ; 
- D 0 - I - 0x0004F9 00:84E9: 02        .byte $02, $80   ; 



_off001_84EB_66:
- D 0 - I - 0x0004FB 00:84EB: 04        .byte $04, $B8   ; 
- D 0 - I - 0x0004FD 00:84ED: 02        .byte $02, $B9   ; 
- D 0 - I - 0x0004FF 00:84EF: 02        .byte $02, $C0   ; 



_off001_84F1_68:
_off001_84F1_69:
- D 0 - I - 0x000501 00:84F1: 04        .byte $04, $B2   ; 
- D 0 - I - 0x000503 00:84F3: 02        .byte $02, $B3   ; 
- D 0 - I - 0x000505 00:84F5: 02        .byte $02, $C0   ; 



_off001_84F7_6B:
- D 0 - I - 0x000507 00:84F7: 04        .byte $04, $B7   ; 
- D 0 - I - 0x000509 00:84F9: 02        .byte $02, $B8   ; 
- D 0 - I - 0x00050B 00:84FB: 02        .byte $02, $C0   ; 



_off001_84FD_6D:
- D 0 - I - 0x00050D 00:84FD: 06        .byte $06, $B8   ; 
- D 0 - I - 0x00050F 00:84FF: 02        .byte $02, $C0   ; 



sub_8501_prepare_palette_pointers_for_current_area:
C - - - - - 0x000511 00:8501: A5 32     LDA ram_blk_hi
C - - - - - 0x000513 00:8503: C9 0C     CMP #$0C
C - - - - - 0x000515 00:8505: D0 07     BNE bra_850E
C - - - - - 0x000517 00:8507: AC F6 07  LDY ram_quest
C - - - - - 0x00051A 00:850A: F0 02     BEQ bra_850E    ; if 1st quest
; if 2nd quest
C - - - - - 0x00051C 00:850C: A9 0F     LDA #$0F
bra_850E:
C - - - - - 0x00051E 00:850E: 0A        ASL
C - - - - - 0x00051F 00:850F: A8        TAY
C - - - - - 0x000520 00:8510: B9 CD 85  LDA tbl_85CD_palette_indexes,Y
C - - - - - 0x000523 00:8513: 85 08     STA ram_0008_t01D_palette_data_pointer
C - - - - - 0x000525 00:8515: B9 CE 85  LDA tbl_85CD_palette_indexes + $01,Y
C - - - - - 0x000528 00:8518: 85 09     STA ram_0008_t01D_palette_data_pointer + $01
C - - - - - 0x00052A 00:851A: A5 33     LDA ram_blk_lo
; * 04
C - - - - - 0x00052C 00:851C: 0A        ASL
C - - - - - 0x00052D 00:851D: 0A        ASL
C - - - - - 0x00052E 00:851E: A8        TAY
C - - - - - 0x00052F 00:851F: B1 08     LDA (ram_0008_t01D_palette_data_pointer),Y
C - - - - - 0x000531 00:8521: 85 0A     STA ram_000A_t015_palette_data
C - - - - - 0x000533 00:8523: C8        INY
C - - - - - 0x000534 00:8524: B1 08     LDA (ram_0008_t01D_palette_data_pointer),Y
C - - - - - 0x000536 00:8526: 85 0B     STA ram_000A_t015_palette_data + $01
C - - - - - 0x000538 00:8528: C8        INY
C - - - - - 0x000539 00:8529: 84 0E     STY ram_000E_t00F_data_index
C - - - - - 0x00053B 00:852B: 60        RTS



sub_852C_update_background_and_sprite_palette:
sub_0x00053C_update_background_and_sprite_palette:
ofs_0x00053C_update_background_and_sprite_palette:
ofs_041_0x00053C_00_update_background_and_sprite_palette:
C - - - - - 0x00053C 00:852C: A9 09     LDA #con_98E4_09_spr_pal
C - - - - - 0x00053E 00:852E: 20 E9 EC  JSR sub_0x03ECF9_write_data_to_ppu_buffer
C - - - - - 0x000541 00:8531: 20 01 85  JSR sub_8501_prepare_palette_pointers_for_current_area
C - - - - - 0x000544 00:8534: A9 00     LDA #$00
C - - - - - 0x000546 00:8536: 85 07     STA ram_0007_t001_overflow_flag
C - - - - - 0x000548 00:8538: A4 34     LDY ram_blk_fr
C - - - - - 0x00054A 00:853A: B1 0A     LDA (ram_000A_t015_palette_data),Y
C - - - - - 0x00054C 00:853C: C9 1C     CMP #$1C
C - - - - - 0x00054E 00:853E: 90 04     BCC bra_8544_not_overflow
C - - - - - 0x000550 00:8540: E9 1C     SBC #$1C
C - - - - - 0x000552 00:8542: E6 07     INC ram_0007_t001_overflow_flag  ; -> 01
bra_8544_not_overflow:
C - - - - - 0x000554 00:8544: 85 00     STA ram_0000_t02A
; * 09
C - - - - - 0x000556 00:8546: 0A        ASL
C - - - - - 0x000557 00:8547: 0A        ASL
C - - - - - 0x000558 00:8548: 0A        ASL
C - - - - - 0x000559 00:8549: 18        CLC
C - - - - - 0x00055A 00:854A: 65 00     ADC ram_0000_t02A
C - - - - - 0x00055C 00:854C: A8        TAY
C - - - - - 0x00055D 00:854D: A6 1D     LDX ram_index_ppu_buffer
C - - - - - 0x00055F 00:854F: A9 03     LDA #$03
C - - - - - 0x000561 00:8551: 85 0D     STA ram_000D_t000_palette_counter
bra_8553_loop:
C - - - - - 0x000563 00:8553: A9 03     LDA #$03
C - - - - - 0x000565 00:8555: 85 0C     STA ram_000C_t002_colors_counter
bra_8557_loop:
C - - - - - 0x000567 00:8557: A5 07     LDA ram_0007_t001_overflow_flag
C - - - - - 0x000569 00:8559: D0 13     BNE bra_856E_overflow
; if not overflow
C - - - - - 0x00056B 00:855B: B9 79 87  LDA tbl_8779_9_colors_for_background,Y
loc_855E_loop:
C D 0 - - - 0x00056E 00:855E: 9D F4 02  STA ram_ppu_buffer - $0C,X
C - - - - - 0x000571 00:8561: C8        INY
C - - - - - 0x000572 00:8562: E8        INX
C - - - - - 0x000573 00:8563: C6 0C     DEC ram_000C_t002_colors_counter
C - - - - - 0x000575 00:8565: D0 F0     BNE bra_8557_loop
C - - - - - 0x000577 00:8567: E8        INX
C - - - - - 0x000578 00:8568: C6 0D     DEC ram_000D_t000_palette_counter
C - - - - - 0x00057A 00:856A: D0 E7     BNE bra_8553_loop
C - - - - - 0x00057C 00:856C: F0 06     BEQ bra_8574    ; jmp
bra_856E_overflow:
C - - - - - 0x00057E 00:856E: B9 75 88  LDA tbl_8779_9_colors_for_background + $FC,Y
C - - - - - 0x000581 00:8571: 4C 5E 85  JMP loc_855E_loop



bra_8574:
loc_8574_update_3_colors_for_sprites:
sub_0x000584:   ; bzk this export is never used 
C D 0 - - - 0x000584 00:8574: 20 BB 85  JSR sub_85BB_write_partner_sprite_palette
C - - - - - 0x000587 00:8577: A4 0E     LDY ram_000E_t00F_data_index
C - - - - - 0x000589 00:8579: B1 08     LDA (ram_0008_t01D_palette_data_pointer),Y
C - - - - - 0x00058B 00:857B: 85 0A     STA ram_000A_t014_palette_data
C - - - - - 0x00058D 00:857D: C8        INY
C - - - - - 0x00058E 00:857E: B1 08     LDA (ram_0008_t01D_palette_data_pointer),Y
C - - - - - 0x000590 00:8580: 85 0B     STA ram_000A_t014_palette_data + $01
C - - - - - 0x000592 00:8582: A4 34     LDY ram_blk_fr
C - - - - - 0x000594 00:8584: B1 0A     LDA (ram_000A_t014_palette_data),Y
C - - - - - 0x000596 00:8586: 0A        ASL
C - - - - - 0x000597 00:8587: 18        CLC
C - - - - - 0x000598 00:8588: 71 0A     ADC (ram_000A_t014_palette_data),Y
C - - - - - 0x00059A 00:858A: A8        TAY
C - - - - - 0x00059B 00:858B: A6 1D     LDX ram_index_ppu_buffer
C - - - - - 0x00059D 00:858D: A9 03     LDA #$03
C - - - - - 0x00059F 00:858F: 85 0C     STA ram_000C_t00B_colors_counter
bra_8591_loop:
C - - - - - 0x0005A1 00:8591: B9 CE 89  LDA tbl_89CE_3_colors_for_sprites,Y
C - - - - - 0x0005A4 00:8594: 9D F0 02  STA ram_ppu_buffer - $10,X
C - - - - - 0x0005A7 00:8597: C8        INY
C - - - - - 0x0005A8 00:8598: E8        INX
C - - - - - 0x0005A9 00:8599: C6 0C     DEC ram_000C_t00B_colors_counter
C - - - - - 0x0005AB 00:859B: D0 F4     BNE bra_8591_loop
C - - - - - 0x0005AD 00:859D: 60        RTS



sub_859E_update_3_colors_for_sprites:
sub_0x0005AE_update_3_colors_for_sprites:
ofs_0x0005AE_02_update_3_colors_for_sprites:
C - - - - - 0x0005AE 00:859E: 20 01 85  JSR sub_8501_prepare_palette_pointers_for_current_area
C - - - - - 0x0005B1 00:85A1: 4C 74 85  JMP loc_8574_update_3_colors_for_sprites



sub_85A4_sypha_invincibility_colors:
C - - - - - 0x0005B4 00:85A4: 20 9E 85  JSR sub_859E_update_3_colors_for_sprites
C - - - - - 0x0005B7 00:85A7: A6 1D     LDX ram_index_ppu_buffer
C - - - - - 0x0005B9 00:85A9: A0 00     LDY #$00
bra_85AB_loop:
C - - - - - 0x0005BB 00:85AB: B9 B8 85  LDA tbl_85B8_colors,Y
C - - - - - 0x0005BE 00:85AE: 9D E8 02  STA ram_ppu_buffer - $18,X
C - - - - - 0x0005C1 00:85B1: E8        INX
C - - - - - 0x0005C2 00:85B2: C8        INY
C - - - - - 0x0005C3 00:85B3: C0 03     CPY #$03
C - - - - - 0x0005C5 00:85B5: 90 F4     BCC bra_85AB_loop
C - - - - - 0x0005C7 00:85B7: 60        RTS



tbl_85B8_colors:
; 3F11-3F13
- D 0 - - - 0x0005C8 00:85B8: 20        .byte $20, $26, $37   ; 



sub_85BB_write_partner_sprite_palette:
sub_0x0005CB_write_partner_sprite_palette:
C - - - - - 0x0005CB 00:85BB: AC 4E 05  LDY ram_plr_id
C - - - - - 0x0005CE 00:85BE: B9 C9 85  LDA tbl_85C9_partner_sprite_palette,Y
C - - - - - 0x0005D1 00:85C1: 20 E9 EC  JSR sub_0x03ECF9_write_data_to_ppu_buffer
C - - - - - 0x0005D4 00:85C4: A9 04     LDA #con_98E4_3F00_0000
C - - - - - 0x0005D6 00:85C6: 4C E9 EC  JMP loc_0x03ECF9_write_data_to_ppu_buffer



tbl_85C9_partner_sprite_palette:
- D 0 - - - 0x0005D9 00:85C9: 0A        .byte con_98E4_Trevor_spr_pal   ; 00 
- D 0 - - - 0x0005DA 00:85CA: 0B        .byte con_98E4_Sypha_spr_pal   ; 01 
- D 0 - - - 0x0005DB 00:85CB: 0C        .byte con_98E4_Grant_spr_pal   ; 02 
- D 0 - - - 0x0005DC 00:85CC: 0D        .byte con_98E4_Alucard_spr_pal   ; 03 



tbl_85CD_palette_indexes:
- D 0 - - - 0x0005DD 00:85CD: ED 85     .word _off002_85ED_00
- D 0 - - - 0x0005DF 00:85CF: FD 85     .word _off002_85FD_01
- D 0 - - - 0x0005E1 00:85D1: 15 86     .word _off002_8615_02
- D 0 - - - 0x0005E3 00:85D3: 29 86     .word _off002_8629_03
- D 0 - - - 0x0005E5 00:85D5: 3D 86     .word _off002_863D_04
- D 0 - - - 0x0005E7 00:85D7: 49 86     .word _off002_8649_05
- D 0 - - - 0x0005E9 00:85D9: 59 86     .word _off002_8659_06
- D 0 - - - 0x0005EB 00:85DB: 65 86     .word _off002_8665_07
- D 0 - - - 0x0005ED 00:85DD: 81 86     .word _off002_8681_08
- D 0 - - - 0x0005EF 00:85DF: 95 86     .word _off002_8695_09
- D 0 - - - 0x0005F1 00:85E1: 9D 86     .word _off002_869D_0A
- D 0 - - - 0x0005F3 00:85E3: B9 86     .word _off002_86B9_0B
- D 0 - - - 0x0005F5 00:85E5: C5 86     .word _off002_86C5_0C
- D 0 - - - 0x0005F7 00:85E7: D1 86     .word _off002_86D1_0D
- D 0 - - - 0x0005F9 00:85E9: E1 86     .word _off002_86E1_0E
- D 0 - - - 0x0005FB 00:85EB: ED 86     .word _off002_86ED_0F_2nd_quest_0C



_off002_85ED_00:
; 00 
- D 0 - I - 0x0005FD 00:85ED: F9 86     .word off_86F9_00_00_bg
- D 0 - I - 0x0005FF 00:85EF: 05 89     .word off_8905_00_00_spr
; 01 
- D 0 - I - 0x000601 00:85F1: FA 86     .word off_86FA_00_01_bg
- D 0 - I - 0x000603 00:85F3: 06 89     .word off_8906_00_01_spr
; 02 
- D 0 - I - 0x000605 00:85F5: FE 86     .word off_86FE_00_02_bg
- D 0 - I - 0x000607 00:85F7: 0A 89     .word off_890A_00_02_spr
; 03 
- D 0 - I - 0x000609 00:85F9: 00 87     .word off_8700_00_03_bg
- D 0 - I - 0x00060B 00:85FB: 0C 89     .word off_890C_00_03_spr



_off002_85FD_01:
; 00 
- D 0 - I - 0x00060D 00:85FD: 01 87     .word off_8701_01_00_bg
- D 0 - I - 0x00060F 00:85FF: 0D 89     .word off_890D_01_00_spr
; 01 
- D 0 - I - 0x000611 00:8601: 04 87     .word off_8704_01_01_bg
- D 0 - I - 0x000613 00:8603: 10 89     .word off_8910_01_01_spr
; 02 
- D 0 - I - 0x000615 00:8605: 07 87     .word off_8707_01_02_bg
- D 0 - I - 0x000617 00:8607: 13 89     .word off_8913_01_02_spr
; 03 
- D 0 - I - 0x000619 00:8609: 07 87     .word off_8707_01_03_bg
- D 0 - I - 0x00061B 00:860B: 13 89     .word off_8913_01_03_spr
; 04 
- D 0 - I - 0x00061D 00:860D: 04 87     .word off_8704_01_04_bg
- D 0 - I - 0x00061F 00:860F: 10 89     .word off_8910_01_04_spr
; 05 
- D 0 - I - 0x000621 00:8611: 01 87     .word off_8701_01_05_bg
- D 0 - I - 0x000623 00:8613: 0D 89     .word off_890D_01_05_spr



_off002_8615_02:
; 00 
- D 0 - I - 0x000625 00:8615: 0A 87     .word off_870A_02_00_bg
- D 0 - I - 0x000627 00:8617: 16 89     .word off_8916_02_00_spr
; 01 
- D 0 - I - 0x000629 00:8619: 0C 87     .word off_870C_02_01_bg
- D 0 - I - 0x00062B 00:861B: 18 89     .word off_8918_02_01_spr
; 02 
- D 0 - I - 0x00062D 00:861D: 0D 87     .word off_870D_02_02_bg
- D 0 - I - 0x00062F 00:861F: 19 89     .word off_8919_02_02_spr
; 03 
- D 0 - I - 0x000631 00:8621: 0F 87     .word off_870F_02_03_bg
- D 0 - I - 0x000633 00:8623: 1B 89     .word off_891B_02_03_spr
; 04 
- D 0 - I - 0x000635 00:8625: 12 87     .word off_8712_02_04_bg
- D 0 - I - 0x000637 00:8627: 1E 89     .word off_891E_02_04_spr



_off002_8629_03:
; 00 
- D 0 - I - 0x000639 00:8629: 14 87     .word off_8714_03_00_bg
- D 0 - I - 0x00063B 00:862B: 20 89     .word off_8920_03_00_spr
; 01 
- D 0 - I - 0x00063D 00:862D: 17 87     .word off_8717_03_01_bg
- D 0 - I - 0x00063F 00:862F: 23 89     .word off_8923_03_01_spr
; 02 
- D 0 - I - 0x000641 00:8631: 17 87     .word off_8717_03_02_bg
- D 0 - I - 0x000643 00:8633: 25 89     .word off_8925_03_02_spr
; 03 
- D 0 - I - 0x000645 00:8635: 17 87     .word off_8717_03_03_bg
- D 0 - I - 0x000647 00:8637: 27 89     .word off_8927_03_03_spr
; 04 
- D 0 - I - 0x000649 00:8639: 14 87     .word off_8714_03_04_bg
- D 0 - I - 0x00064B 00:863B: 29 89     .word off_8929_03_04_spr



_off002_863D_04:
; 00 
- D 0 - I - 0x00064D 00:863D: 19 87     .word off_8719_04_00_bg
- D 0 - I - 0x00064F 00:863F: 2C 89     .word off_892C_04_00_spr
; 01 
- D 0 - I - 0x000651 00:8641: 19 87     .word off_8719_04_01_bg
- D 0 - I - 0x000653 00:8643: 2F 89     .word off_892F_04_01_spr
; 02 
- D 0 - I - 0x000655 00:8645: 1C 87     .word off_871C_04_02_bg
- D 0 - I - 0x000657 00:8647: 32 89     .word off_8932_04_02_spr



_off002_8649_05:
; 00 
- D 0 - I - 0x000659 00:8649: 1F 87     .word off_871F_05_00_bg
- D 0 - I - 0x00065B 00:864B: 35 89     .word off_8935_05_00_spr
; 01 
- D 0 - I - 0x00065D 00:864D: 1F 87     .word off_871F_05_01_bg
- D 0 - I - 0x00065F 00:864F: 36 89     .word off_8936_05_01_spr
; 02 
- D 0 - I - 0x000661 00:8651: 20 87     .word off_8720_05_02_bg
- D 0 - I - 0x000663 00:8653: 37 89     .word off_8937_05_02_spr
; 03 
- D 0 - I - 0x000665 00:8655: 20 87     .word off_8720_05_03_bg
- D 0 - I - 0x000667 00:8657: 39 89     .word off_8939_05_03_spr



_off002_8659_06:
; 00 
- D 0 - I - 0x000669 00:8659: 22 87     .word off_8722_06_00_bg
- D 0 - I - 0x00066B 00:865B: 3B 89     .word off_893B_06_00_spr
; 01 
- D 0 - I - 0x00066D 00:865D: 24 87     .word off_8724_06_01_bg
- D 0 - I - 0x00066F 00:865F: 3D 89     .word off_893D_06_01_spr
; 02 
- D 0 - I - 0x000671 00:8661: 25 87     .word off_8725_06_02_bg
- D 0 - I - 0x000673 00:8663: 3E 89     .word off_893E_06_02_spr



_off002_8665_07:
; 00 
- D 0 - I - 0x000675 00:8665: 28 87     .word off_8728_07_00_bg
- D 0 - I - 0x000677 00:8667: 41 89     .word off_8941_07_00_spr
; 01 
- D 0 - I - 0x000679 00:8669: 2A 87     .word off_872A_07_01_bg
- D 0 - I - 0x00067B 00:866B: 43 89     .word off_8943_07_01_spr
; 02 
- D 0 - I - 0x00067D 00:866D: 2A 87     .word off_872A_07_02_bg
- D 0 - I - 0x00067F 00:866F: 44 89     .word off_8944_07_02_spr
; 03 
- D 0 - I - 0x000681 00:8671: 2A 87     .word off_872A_07_03_bg
- D 0 - I - 0x000683 00:8673: 45 89     .word off_8945_07_03_spr
; 04 
- D 0 - I - 0x000685 00:8675: 2B 87     .word off_872B_07_04_bg
- D 0 - I - 0x000687 00:8677: 46 89     .word off_8946_07_04_spr
; 05 
- D 0 - I - 0x000689 00:8679: 2D 87     .word off_872D_07_05_bg
- D 0 - I - 0x00068B 00:867B: 48 89     .word off_8948_07_05_spr
; 06 
- D 0 - I - 0x00068D 00:867D: 2F 87     .word off_872F_07_06_bg
- D 0 - I - 0x00068F 00:867F: 4A 89     .word off_894A_07_06_spr



_off002_8681_08:
; 00 
- D 0 - I - 0x000691 00:8681: 30 87     .word off_8730_08_00_bg
- D 0 - I - 0x000693 00:8683: 4B 89     .word off_894B_08_00_spr
; 01 
- D 0 - I - 0x000695 00:8685: 32 87     .word off_8732_08_01_bg
- D 0 - I - 0x000697 00:8687: 4D 89     .word off_894D_08_01_spr
; 02 
- D 0 - I - 0x000699 00:8689: 33 87     .word off_8733_08_02_bg
- D 0 - I - 0x00069B 00:868B: 4E 89     .word off_894E_08_02_spr
; 03 
- D 0 - I - 0x00069D 00:868D: 32 87     .word off_8732_08_03_bg
- D 0 - I - 0x00069F 00:868F: 4D 89     .word off_894D_08_03_spr
; 04 
- D 0 - I - 0x0006A1 00:8691: 32 87     .word off_8732_08_04_bg
- D 0 - I - 0x0006A3 00:8693: 4D 89     .word off_894D_08_04_spr



_off002_8695_09:
; 00 
- D 0 - I - 0x0006A5 00:8695: 35 87     .word off_8735_09_00_bg
- D 0 - I - 0x0006A7 00:8697: 50 89     .word off_8950_09_00_spr
; 01 
- D 0 - I - 0x0006A9 00:8699: 37 87     .word off_8737_09_01_bg
- D 0 - I - 0x0006AB 00:869B: 52 89     .word off_8952_09_01_spr



_off002_869D_0A:
; 00 
- D 0 - I - 0x0006AD 00:869D: 3A 87     .word off_873A_0A_00_bg
- D 0 - I - 0x0006AF 00:869F: 54 89     .word off_8954_0A_00_spr
; 01 
- D 0 - I - 0x0006B1 00:86A1: 3C 87     .word off_873C_0A_01_bg
- D 0 - I - 0x0006B3 00:86A3: 56 89     .word off_8956_0A_01_spr
; 02 
- D 0 - I - 0x0006B5 00:86A5: 3D 87     .word off_873D_0A_02_bg
- D 0 - I - 0x0006B7 00:86A7: 57 89     .word off_8957_0A_02_spr
; 03 
- D 0 - I - 0x0006B9 00:86A9: 3E 87     .word off_873E_0A_03_bg
- D 0 - I - 0x0006BB 00:86AB: 58 89     .word off_8958_0A_03_spr
; 04 
- D 0 - I - 0x0006BD 00:86AD: 40 87     .word off_8740_0A_04_bg
- D 0 - I - 0x0006BF 00:86AF: 5A 89     .word off_895A_0A_04_spr
; 05 
- D 0 - I - 0x0006C1 00:86B1: 43 87     .word off_8743_0A_05_bg
- D 0 - I - 0x0006C3 00:86B3: 5D 89     .word off_895D_0A_05_spr
; 06 
- D 0 - I - 0x0006C5 00:86B5: 45 87     .word off_8745_0A_06_bg
- D 0 - I - 0x0006C7 00:86B7: 5F 89     .word off_895F_0A_06_spr



_off002_86B9_0B:
; 00 
- D 0 - I - 0x0006C9 00:86B9: 48 87     .word off_8748_0B_00_bg
- D 0 - I - 0x0006CB 00:86BB: 62 89     .word off_8962_0B_00_spr
; 01 
- D 0 - I - 0x0006CD 00:86BD: 4A 87     .word off_874A_0B_01_bg
- D 0 - I - 0x0006CF 00:86BF: 64 89     .word off_8964_0B_01_spr
; 02 
- D 0 - I - 0x0006D1 00:86C1: 4C 87     .word off_874C_0B_02_bg
- D 0 - I - 0x0006D3 00:86C3: 66 89     .word off_8966_0B_02_spr



_off002_86C5_0C:
; 00 
- D 0 - I - 0x0006D5 00:86C5: 4F 87     .word off_874F_0C_00_bg
- D 0 - I - 0x0006D7 00:86C7: 69 89     .word off_8969_0C_00_spr
; 01 
- D 0 - I - 0x0006D9 00:86C9: 51 87     .word off_8751_0C_01_bg
- D 0 - I - 0x0006DB 00:86CB: 6B 89     .word off_896B_0C_01_spr
; 02 
- D 0 - I - 0x0006DD 00:86CD: 53 87     .word off_8753_0C_02_bg
- D 0 - I - 0x0006DF 00:86CF: 6D 89     .word off_896D_0C_02_spr



_off002_86D1_0D:
; 00 
- D 0 - I - 0x0006E1 00:86D1: 54 87     .word off_8754_0D_00_bg
- D 0 - I - 0x0006E3 00:86D3: 6E 89     .word off_896E_0D_00_spr
; 01 
- D 0 - I - 0x0006E5 00:86D5: 57 87     .word off_8757_0D_01_bg
- D 0 - I - 0x0006E7 00:86D7: 71 89     .word off_8971_0D_01_spr
; 02 
- D 0 - I - 0x0006E9 00:86D9: 5A 87     .word off_875A_0D_02_bg
- D 0 - I - 0x0006EB 00:86DB: 74 89     .word off_8974_0D_02_spr
; 03 
- D 0 - I - 0x0006ED 00:86DD: 5D 87     .word off_875D_0D_03_bg
- D 0 - I - 0x0006EF 00:86DF: 77 89     .word off_8977_0D_03_spr



_off002_86E1_0E:
; 00 
- D 0 - I - 0x0006F1 00:86E1: 5F 87     .word off_875F_0E_00_bg
- D 0 - I - 0x0006F3 00:86E3: 79 89     .word off_8979_0E_00_spr
; 01 
- D 0 - I - 0x0006F5 00:86E5: 62 87     .word off_8762_0E_01_bg
- D 0 - I - 0x0006F7 00:86E7: 7C 89     .word off_897C_0E_01_spr
; 02 
- D 0 - I - 0x0006F9 00:86E9: 64 87     .word off_8764_0E_02_bg
- D 0 - I - 0x0006FB 00:86EB: 7E 89     .word off_897E_0E_02_spr



_off002_86ED_0F_2nd_quest_0C:
; 00 
- D 0 - I - 0x0006FD 00:86ED: 4F 87     .word off_874F_0F___0C_00_bg
- D 0 - I - 0x0006FF 00:86EF: 80 89     .word off_8980_0F___0C_00_spr
; 01 
- D 0 - I - 0x000701 00:86F1: 51 87     .word off_8751_0F___0C_01_bg
- D 0 - I - 0x000703 00:86F3: 6B 89     .word off_896B_0F___0C_01_spr
; 02 
- D 0 - I - 0x000705 00:86F5: 53 87     .word off_8753_0F___0C_02_bg
- D 0 - I - 0x000707 00:86F7: 6D 89     .word off_896D_0F___0C_02_spr



off_86F9_00_00_bg:
- D 0 - I - 0x000709 00:86F9: 00        .byte con_8779_00   ; 00 



off_86FA_00_01_bg:
- D 0 - I - 0x00070A 00:86FA: 00        .byte con_8779_00   ; 00 
- D 0 - I - 0x00070B 00:86FB: 01        .byte con_8779_01   ; 01 
- D 0 - I - 0x00070C 00:86FC: 03        .byte con_8779_03   ; 02 
- D 0 - I - 0x00070D 00:86FD: 03        .byte con_8779_03   ; 03 



off_86FE_00_02_bg:
- D 0 - I - 0x00070E 00:86FE: 03        .byte con_8779_03   ; 00 
- D 0 - I - 0x00070F 00:86FF: 02        .byte con_8779_02   ; 01 



off_8700_00_03_bg:
- D 0 - I - 0x000710 00:8700: 03        .byte con_8779_03   ; 00 



off_8701_01_00_bg:
off_8701_01_05_bg:
- D 0 - I - 0x000711 00:8701: 04        .byte con_8779_04   ; 00 
- D 0 - I - 0x000712 00:8702: 04        .byte con_8779_04   ; 01 
- D 0 - I - 0x000713 00:8703: 04        .byte con_8779_04   ; 02 



off_8704_01_01_bg:
off_8704_01_04_bg:
- D 0 - I - 0x000714 00:8704: 04        .byte con_8779_04   ; 00 
- D 0 - I - 0x000715 00:8705: 04        .byte con_8779_04   ; 01 
- D 0 - I - 0x000716 00:8706: 05        .byte con_8779_05   ; 02 



off_8707_01_02_bg:
off_8707_01_03_bg:
- D 0 - I - 0x000717 00:8707: 05        .byte con_8779_05   ; 00 
- D 0 - I - 0x000718 00:8708: 05        .byte con_8779_05   ; 01 
- D 0 - I - 0x000719 00:8709: 05        .byte con_8779_05   ; 02 



off_870A_02_00_bg:
- D 0 - I - 0x00071A 00:870A: 06        .byte con_8779_06   ; 00 
- D 0 - I - 0x00071B 00:870B: 06        .byte con_8779_06   ; 01 



off_870C_02_01_bg:
- D 0 - I - 0x00071C 00:870C: 07        .byte con_8779_07   ; 00 



off_870D_02_02_bg:
- D 0 - I - 0x00071D 00:870D: 07        .byte con_8779_07   ; 00 
- D 0 - I - 0x00071E 00:870E: 07        .byte con_8779_07   ; 01 



off_870F_02_03_bg:
- D 0 - I - 0x00071F 00:870F: 08        .byte con_8779_08   ; 00 
- D 0 - I - 0x000720 00:8710: 07        .byte con_8779_07   ; 01 
- D 0 - I - 0x000721 00:8711: 07        .byte con_8779_07   ; 02 



off_8712_02_04_bg:
- D 0 - I - 0x000722 00:8712: 08        .byte con_8779_08   ; 00 
- D 0 - I - 0x000723 00:8713: 08        .byte con_8779_08   ; 01 



off_8714_03_00_bg:
off_8714_03_04_bg:
- D 0 - I - 0x000724 00:8714: 09        .byte con_8779_09   ; 00 
- D 0 - I - 0x000725 00:8715: 09        .byte con_8779_09   ; 01 
- D 0 - I - 0x000726 00:8716: 09        .byte con_8779_09   ; 02 



off_8717_03_01_bg:
off_8717_03_02_bg:
off_8717_03_03_bg:
- D 0 - I - 0x000727 00:8717: 09        .byte con_8779_09   ; 00 
- D 0 - I - 0x000728 00:8718: 09        .byte con_8779_09   ; 01 



off_8719_04_00_bg:
off_8719_04_01_bg:
- D 0 - I - 0x000729 00:8719: 0A        .byte con_8779_0A   ; 00 
- D 0 - I - 0x00072A 00:871A: 0A        .byte con_8779_0A   ; 01 
- D 0 - I - 0x00072B 00:871B: 0A        .byte con_8779_0A   ; 02 



off_871C_04_02_bg:
- D 0 - I - 0x00072C 00:871C: 0A        .byte con_8779_0A   ; 00 
- D 0 - I - 0x00072D 00:871D: 0A        .byte con_8779_0A   ; 01 
- D 0 - I - 0x00072E 00:871E: 0B        .byte con_8779_0B   ; 02 



off_871F_05_00_bg:
off_871F_05_01_bg:
- D 0 - I - 0x00072F 00:871F: 0C        .byte con_8779_0C   ; 00 



off_8720_05_02_bg:
off_8720_05_03_bg:
- D 0 - I - 0x000730 00:8720: 0C        .byte con_8779_0C   ; 00 
- D 0 - I - 0x000731 00:8721: 0C        .byte con_8779_0C   ; 01 



off_8722_06_00_bg:
- D 0 - I - 0x000732 00:8722: 2B        .byte con_8779_2B   ; 00 
- D 0 - I - 0x000733 00:8723: 0D        .byte con_8779_0D   ; 01 



off_8724_06_01_bg:
- D 0 - I - 0x000734 00:8724: 2B        .byte con_8779_2B   ; 00 



off_8725_06_02_bg:
- D 0 - I - 0x000735 00:8725: 0E        .byte con_8779_0E   ; 00 
- D 0 - I - 0x000736 00:8726: 0E        .byte con_8779_0E   ; 01 
- D 0 - I - 0x000737 00:8727: 2B        .byte con_8779_2B   ; 02 



off_8728_07_00_bg:
- D 0 - I - 0x000738 00:8728: 0F        .byte con_8779_0F   ; 00 
- D 0 - I - 0x000739 00:8729: 0F        .byte con_8779_0F   ; 01 



off_872A_07_01_bg:
off_872A_07_02_bg:
off_872A_07_03_bg:
- D 0 - I - 0x00073A 00:872A: 0F        .byte con_8779_0F   ; 00 



off_872B_07_04_bg:
- D 0 - I - 0x00073B 00:872B: 0F        .byte con_8779_0F   ; 00 
- D 0 - I - 0x00073C 00:872C: 10        .byte con_8779_10   ; 01 



off_872D_07_05_bg:
- D 0 - I - 0x00073D 00:872D: 10        .byte con_8779_10   ; 00 
- D 0 - I - 0x00073E 00:872E: 10        .byte con_8779_10   ; 01 



off_872F_07_06_bg:
- D 0 - I - 0x00073F 00:872F: 11        .byte con_8779_11   ; 00 



off_8730_08_00_bg:
- D 0 - I - 0x000740 00:8730: 12        .byte con_8779_12   ; 00 
- D 0 - I - 0x000741 00:8731: 12        .byte con_8779_12   ; 01 



off_8732_08_01_bg:
off_8732_08_03_bg:
off_8732_08_04_bg:
- D 0 - I - 0x000742 00:8732: 12        .byte con_8779_12   ; 00 



off_8733_08_02_bg:
- D 0 - I - 0x000743 00:8733: 12        .byte con_8779_12   ; 00 
- D 0 - I - 0x000744 00:8734: 13        .byte con_8779_13   ; 01 



off_8735_09_00_bg:
- D 0 - I - 0x000745 00:8735: 14        .byte con_8779_14   ; 00 
- D 0 - I - 0x000746 00:8736: 14        .byte con_8779_14   ; 01 



off_8737_09_01_bg:
- D 0 - I - 0x000747 00:8737: 14        .byte con_8779_14   ; 00 
- D 0 - I - 0x000748 00:8738: 14        .byte con_8779_14   ; 01 
- D 0 - I - 0x000749 00:8739: 14        .byte con_8779_14   ; 02 



off_873A_0A_00_bg:
- D 0 - I - 0x00074A 00:873A: 18        .byte con_8779_18   ; 00 
- D 0 - I - 0x00074B 00:873B: 18        .byte con_8779_18   ; 01 



off_873C_0A_01_bg:
- D 0 - I - 0x00074C 00:873C: 18        .byte con_8779_18   ; 00 



off_873D_0A_02_bg:
- D 0 - I - 0x00074D 00:873D: 18        .byte con_8779_18   ; 00 



off_873E_0A_03_bg:
- D 0 - I - 0x00074E 00:873E: 18        .byte con_8779_18   ; 00 
- D 0 - I - 0x00074F 00:873F: 18        .byte con_8779_18   ; 01 



off_8740_0A_04_bg:
- D 0 - I - 0x000750 00:8740: 19        .byte con_8779_19   ; 00 
- D 0 - I - 0x000751 00:8741: 19        .byte con_8779_19   ; 01 
- D 0 - I - 0x000752 00:8742: 19        .byte con_8779_19   ; 02 



off_8743_0A_05_bg:
- D 0 - I - 0x000753 00:8743: 19        .byte con_8779_19   ; 00 
- D 0 - I - 0x000754 00:8744: 1A        .byte con_8779_1A   ; 01 



off_8745_0A_06_bg:
- D 0 - I - 0x000755 00:8745: 1A        .byte con_8779_1A   ; 00 
- D 0 - I - 0x000756 00:8746: 1B        .byte con_8779_1B   ; 01 
- D 0 - I - 0x000757 00:8747: 1C        .byte con_8779_1C   ; 02 



off_8748_0B_00_bg:
- D 0 - I - 0x000758 00:8748: 23        .byte con_8779_23   ; 00 
- D 0 - I - 0x000759 00:8749: 23        .byte con_8779_23   ; 01 



off_874A_0B_01_bg:
- D 0 - I - 0x00075A 00:874A: 23        .byte con_8779_23   ; 00 
- D 0 - I - 0x00075B 00:874B: 23        .byte con_8779_23   ; 01 



off_874C_0B_02_bg:
- D 0 - I - 0x00075C 00:874C: 23        .byte con_8779_23   ; 00 
- D 0 - I - 0x00075D 00:874D: 23        .byte con_8779_23   ; 01 
- D 0 - I - 0x00075E 00:874E: 24        .byte con_8779_24   ; 02 



off_874F_0C_00_bg:
off_874F_0F___0C_00_bg:
- D 0 - I - 0x00075F 00:874F: 16        .byte con_8779_16   ; 00 
- D 0 - I - 0x000760 00:8750: 16        .byte con_8779_16   ; 01 



off_8751_0C_01_bg:
off_8751_0F___0C_01_bg:
- D 0 - I - 0x000761 00:8751: 17        .byte con_8779_17   ; 00 
- D 0 - I - 0x000762 00:8752: 17        .byte con_8779_17   ; 01 



off_8753_0C_02_bg:
off_8753_0F___0C_02_bg:
- D 0 - I - 0x000763 00:8753: 16        .byte con_8779_16   ; 00 



off_8754_0D_00_bg:
- D 0 - I - 0x000764 00:8754: 25        .byte con_8779_25   ; 00 
- D 0 - I - 0x000765 00:8755: 25        .byte con_8779_25   ; 01 
- D 0 - I - 0x000766 00:8756: 26        .byte con_8779_26   ; 02 



off_8757_0D_01_bg:
- D 0 - I - 0x000767 00:8757: 26        .byte con_8779_26   ; 00 
- D 0 - I - 0x000768 00:8758: 27        .byte con_8779_27   ; 01 
- D 0 - I - 0x000769 00:8759: 26        .byte con_8779_26   ; 02 



off_875A_0D_02_bg:
- D 0 - I - 0x00076A 00:875A: 26        .byte con_8779_26   ; 00 
- D 0 - I - 0x00076B 00:875B: 28        .byte con_8779_28   ; 01 
- D 0 - I - 0x00076C 00:875C: 29        .byte con_8779_29   ; 02 



off_875D_0D_03_bg:
- D 0 - I - 0x00076D 00:875D: 29        .byte con_8779_29   ; 00 
- D 0 - I - 0x00076E 00:875E: 2A        .byte con_8779_2A   ; 01 



off_875F_0E_00_bg:
- D 0 - I - 0x00076F 00:875F: 1F        .byte con_8779_1F   ; 00 
- D 0 - I - 0x000770 00:8760: 1E        .byte con_8779_1E   ; 01 
- D 0 - I - 0x000771 00:8761: 1D        .byte con_8779_1D   ; 02 



off_8762_0E_01_bg:
- D 0 - I - 0x000772 00:8762: 1F        .byte con_8779_1F   ; 00 
- D 0 - I - 0x000773 00:8763: 20        .byte con_8779_20   ; 01 



off_8764_0E_02_bg:
- D 0 - I - 0x000774 00:8764: 21        .byte con_8779_21   ; 00 
- D 0 - I - 0x000775 00:8765: 22        .byte con_8779_22   ; 01 



_off003_8766_09:
- D 0 - I - 0x000776 00:8766: 00 3F     .word $3F00 ; ppu address
- D 0 - I - 0x000778 00:8768: 0F        .byte $0F, $16, $26, $20   ; 
- D 0 - I - 0x00077C 00:876C: 0F        .byte $0F, $16, $26, $20   ; 
- D 0 - I - 0x000780 00:8770: 0F        .byte $0F, $16, $26, $20   ; 
- D 0 - I - 0x000784 00:8774: 0F        .byte $0F, $16, $26, $20   ; 

- D 0 - I - 0x000788 00:8778: FF        .byte $FF   ; end token



tbl_8779_9_colors_for_background:
; see con_8779
; 00 
- D 0 - - - 0x000789 00:8779: 00        .byte $00, $10, $1A   ; 
- D 0 - - - 0x00078C 00:877C: 00        .byte $00, $0B, $2C   ; 
- D 0 - - - 0x00078F 00:877F: 02        .byte $02, $00, $10   ; 
; 01 
- D 0 - - - 0x000792 00:8782: 11        .byte $11, $26, $36   ; 
- D 0 - - - 0x000795 00:8785: 30        .byte $30, $0C, $2B   ; 
- D 0 - - - 0x000798 00:8788: 16        .byte $16, $25, $36   ; 
; 02 
- D 0 - - - 0x00079B 00:878B: 00        .byte $00, $11, $1A   ; 
- D 0 - - - 0x00079E 00:878E: 02        .byte $02, $11, $30   ; 
- D 0 - - - 0x0007A1 00:8791: 02        .byte $02, $08, $38   ; 
; 03 
- D 0 - - - 0x0007A4 00:8794: 00        .byte $00, $10, $1A   ; 
- D 0 - - - 0x0007A7 00:8797: 02        .byte $02, $12, $30   ; 
- D 0 - - - 0x0007AA 00:879A: 02        .byte $02, $08, $38   ; 
; 04 
- D 0 - - - 0x0007AD 00:879D: 20        .byte $20, $02, $1B   ; 
- D 0 - - - 0x0007B0 00:87A0: 02        .byte $02, $00, $10   ; 
- D 0 - - - 0x0007B3 00:87A3: 10        .byte $10, $04, $24   ; 
; 05 
- D 0 - - - 0x0007B6 00:87A6: 33        .byte $33, $02, $00   ; 
- D 0 - - - 0x0007B9 00:87A9: 02        .byte $02, $00, $10   ; 
- D 0 - - - 0x0007BC 00:87AC: 10        .byte $10, $0B, $2C   ; 
; 06 
- D 0 - - - 0x0007BF 00:87AF: 0B        .byte $0B, $1C, $2A   ; 
- D 0 - - - 0x0007C2 00:87B2: 02        .byte $02, $09, $06   ; 
- D 0 - - - 0x0007C5 00:87B5: 00        .byte $00, $20, $18   ; 
; 07 
- D 0 - - - 0x0007C8 00:87B8: 08        .byte $08, $18, $2A   ; 
- D 0 - - - 0x0007CB 00:87BB: 02        .byte $02, $09, $06   ; 
- D 0 - - - 0x0007CE 00:87BE: 02        .byte $02, $20, $13   ; 
; 08 
- D 0 - - - 0x0007D1 00:87C1: 0B        .byte $0B, $1C, $2A   ; 
- D 0 - - - 0x0007D4 00:87C4: 02        .byte $02, $09, $08   ; 
- D 0 - - - 0x0007D7 00:87C7: 02        .byte $02, $31, $12   ; 
; 09 
- D 0 - - - 0x0007DA 00:87CA: 10        .byte $10, $08, $18   ; 
- D 0 - - - 0x0007DD 00:87CD: 00        .byte $00, $20, $10   ; 
- D 0 - - - 0x0007E0 00:87D0: 02        .byte $02, $08, $28   ; 
; 0A 
- D 0 - - - 0x0007E3 00:87D3: 00        .byte $00, $06, $2C   ; 
- D 0 - - - 0x0007E6 00:87D6: 00        .byte $00, $34, $22   ; 
- D 0 - - - 0x0007E9 00:87D9: 27        .byte $27, $06, $15   ; 
; 0B 
- D 0 - - - 0x0007EC 00:87DC: 1B        .byte $1B, $02, $2C   ; 
- D 0 - - - 0x0007EF 00:87DF: 02        .byte $02, $00, $10   ; 
- D 0 - - - 0x0007F2 00:87E2: 02        .byte $02, $03, $13   ; 
; 0C 
- D 0 - - - 0x0007F5 00:87E5: 0B        .byte $0B, $1B, $01   ; 
- D 0 - - - 0x0007F8 00:87E8: 02        .byte $02, $11, $20   ; 
- D 0 - - - 0x0007FB 00:87EB: 31        .byte $31, $11, $21   ; 
; 0D 
- D 0 - - - 0x0007FE 00:87EE: 08        .byte $08, $18, $2A   ; 
- D 0 - - - 0x000801 00:87F1: 08        .byte $08, $29, $17   ; 
- D 0 - - - 0x000804 00:87F4: 02        .byte $02, $11, $21   ; 
; 0E 
- D 0 - - - 0x000807 00:87F7: 0C        .byte $0C, $00, $20   ; 
- D 0 - - - 0x00080A 00:87FA: 08        .byte $08, $29, $18   ; 
- D 0 - - - 0x00080D 00:87FD: 03        .byte $03, $12, $22   ; 
; 0F 
- D 0 - - - 0x000810 00:8800: 08        .byte $08, $10, $20   ; 
- D 0 - - - 0x000813 00:8803: 08        .byte $08, $0A, $00   ; 
- D 0 - - - 0x000816 00:8806: 02        .byte $02, $11, $31   ; 
; 10 
- D 0 - - - 0x000819 00:8809: 02        .byte $02, $10, $20   ; 
- D 0 - - - 0x00081C 00:880C: 13        .byte $13, $03, $33   ; 
- D 0 - - - 0x00081F 00:880F: 02        .byte $02, $11, $31   ; 
; 11 
- D 0 - - - 0x000822 00:8812: 08        .byte $08, $10, $20   ; 
- D 0 - - - 0x000825 00:8815: 0B        .byte $0B, $1B, $2B   ; 
- D 0 - - - 0x000828 00:8818: 06        .byte $06, $16, $26   ; 
; 12 
- D 0 - - - 0x00082B 00:881B: 02        .byte $02, $11, $20   ; 
- D 0 - - - 0x00082E 00:881E: 0B        .byte $0B, $1C, $3C   ; 
- D 0 - - - 0x000831 00:8821: 0B        .byte $0B, $1B, $02   ; 
; 13 
- D 0 - - - 0x000834 00:8824: 02        .byte $02, $11, $20   ; 
- D 0 - - - 0x000837 00:8827: 08        .byte $08, $18, $38   ; 
- D 0 - - - 0x00083A 00:882A: 08        .byte $08, $18, $02   ; 
; 14 
- D 0 - - - 0x00083D 00:882D: 01        .byte $01, $11, $2C   ; 
- D 0 - - - 0x000840 00:8830: 17        .byte $17, $27, $05   ; 
- D 0 - - - 0x000843 00:8833: 0B        .byte $0B, $1C, $3C   ; 
; 15 unused, index doesn't exist
- - - - - - 0x000846 00:8836: 08        .byte $08, $18, $10   ; 
- - - - - - 0x000849 00:8839: 07        .byte $07, $17, $08   ; 
- - - - - - 0x00084C 00:883C: 0B        .byte $0B, $1C, $3C   ; 
; 16 
- D 0 - - - 0x00084F 00:883F: 07        .byte $07, $00, $10   ; 
- D 0 - - - 0x000852 00:8842: 16        .byte $16, $25, $10   ; 
- D 0 - - - 0x000855 00:8845: 02        .byte $02, $19, $21   ; 
; 17 
- D 0 - - - 0x000858 00:8848: 07        .byte $07, $00, $10   ; 
- D 0 - - - 0x00085B 00:884B: 1B        .byte $1B, $00, $10   ; 
- D 0 - - - 0x00085E 00:884E: 02        .byte $02, $19, $21   ; 
; 18 
- D 0 - - - 0x000861 00:8851: 08        .byte $08, $18, $20   ; 
- D 0 - - - 0x000864 00:8854: 01        .byte $01, $11, $20   ; 
- D 0 - - - 0x000867 00:8857: 0B        .byte $0B, $1B, $20   ; 
; 19 
- D 0 - - - 0x00086A 00:885A: 08        .byte $08, $18, $0C   ; 
- D 0 - - - 0x00086D 00:885D: 0B        .byte $0B, $1B, $0C   ; 
- D 0 - - - 0x000870 00:8860: 2C        .byte $2C, $27, $0C   ; 
; 1A 
- D 0 - - - 0x000873 00:8863: 08        .byte $08, $18, $0C   ; 
- D 0 - - - 0x000876 00:8866: 0C        .byte $0C, $00, $10   ; 
- D 0 - - - 0x000879 00:8869: 01        .byte $01, $11, $21   ; 
; 1B 
- D 0 - - - 0x00087C 00:886C: 08        .byte $08, $18, $0C   ; 
- D 0 - - - 0x00087F 00:886F: 0C        .byte $0C, $00, $10   ; 
- D 0 - - - 0x000882 00:8872: 05        .byte $05, $00, $10   ; 
; 1C (2nd table starts here)
- D 0 - - - 0x000885 00:8875: 0C        .byte $0C, $17, $1C   ; 
- D 0 - - - 0x000888 00:8878: 0C        .byte $0C, $00, $10   ; 
- D 0 - - - 0x00088B 00:887B: 15        .byte $15, $27, $20   ; 
; 1D 
- D 0 - - - 0x00088E 00:887E: 00        .byte $00, $22, $1A   ; 
- D 0 - - - 0x000891 00:8881: 18        .byte $18, $28, $20   ; 
- D 0 - - - 0x000894 00:8884: 22        .byte $22, $20, $02   ; 
; 1E 
- D 0 - - - 0x000897 00:8887: 20        .byte $20, $0C, $2C   ; 
- D 0 - - - 0x00089A 00:888A: 11        .byte $11, $00, $20   ; 
- D 0 - - - 0x00089D 00:888D: 00        .byte $00, $08, $18   ; 
; 1F 
- D 0 - - - 0x0008A0 00:8890: 00        .byte $00, $2C, $1A   ; 
- D 0 - - - 0x0008A3 00:8893: 00        .byte $00, $10, $20   ; 
- D 0 - - - 0x0008A6 00:8896: 08        .byte $08, $18, $0C   ; 
; 20 
- D 0 - - - 0x0008A9 00:8899: 00        .byte $00, $2C, $1A   ; 
- D 0 - - - 0x0008AC 00:889C: 00        .byte $00, $10, $20   ; 
- D 0 - - - 0x0008AF 00:889F: 08        .byte $08, $18, $27   ; 
; 21 
- D 0 - - - 0x0008B2 00:88A2: 00        .byte $00, $05, $1A   ; 
- D 0 - - - 0x0008B5 00:88A5: 0C        .byte $0C, $10, $27   ; 
- D 0 - - - 0x0008B8 00:88A8: 22        .byte $22, $20, $02   ; 
; 22 
- D 0 - - - 0x0008BB 00:88AB: 10        .byte $10, $05, $01   ; 
- D 0 - - - 0x0008BE 00:88AE: 0C        .byte $0C, $10, $27   ; 
- D 0 - - - 0x0008C1 00:88B1: 00        .byte $00, $05, $1A   ; 
; 23 
- D 0 - - - 0x0008C4 00:88B4: 00        .byte $00, $04, $10   ; 
- D 0 - - - 0x0008C7 00:88B7: 0C        .byte $0C, $2C, $19   ; 
- D 0 - - - 0x0008CA 00:88BA: 02        .byte $02, $04, $14   ; 
; 24 
- D 0 - - - 0x0008CD 00:88BD: 00        .byte $00, $04, $10   ; 
- D 0 - - - 0x0008D0 00:88C0: 02        .byte $02, $14, $27   ; 
- D 0 - - - 0x0008D3 00:88C3: 02        .byte $02, $04, $14   ; 
; 25 
- D 0 - - - 0x0008D6 00:88C6: 0B        .byte $0B, $1B, $2A   ; 
- D 0 - - - 0x0008D9 00:88C9: 02        .byte $02, $0A, $08   ; 
- D 0 - - - 0x0008DC 00:88CC: 02        .byte $02, $32, $13   ; 
; 26 
- D 0 - - - 0x0008DF 00:88CF: 01        .byte $01, $11, $21   ; 
- D 0 - - - 0x0008E2 00:88D2: 00        .byte $00, $10, $23   ; 
- D 0 - - - 0x0008E5 00:88D5: 0B        .byte $0B, $1A, $3A   ; 
; 27 
- D 0 - - - 0x0008E8 00:88D8: 01        .byte $01, $11, $21   ; 
- D 0 - - - 0x0008EB 00:88DB: 00        .byte $00, $10, $23   ; 
- D 0 - - - 0x0008EE 00:88DE: 05        .byte $05, $25, $10   ; 
; 28 
- D 0 - - - 0x0008F1 00:88E1: 0B        .byte $0B, $1B, $0F   ; 
- D 0 - - - 0x0008F4 00:88E4: 00        .byte $00, $10, $37   ; 
- D 0 - - - 0x0008F7 00:88E7: 0B        .byte $0B, $1A, $3A   ; 
; 29 
- D 0 - - - 0x0008FA 00:88EA: 0B        .byte $0B, $12, $05   ; 
- D 0 - - - 0x0008FD 00:88ED: 01        .byte $01, $11, $20   ; 
- D 0 - - - 0x000900 00:88F0: 31        .byte $31, $11, $21   ; 
; 2A 
- D 0 - - - 0x000903 00:88F3: 01        .byte $01, $22, $21   ; 
- D 0 - - - 0x000906 00:88F6: 0B        .byte $0B, $1A, $3A   ; 
- D 0 - - - 0x000909 00:88F9: 00        .byte $00, $10, $23   ; 
; 2B 
- D 0 - - - 0x00090C 00:88FC: 0B        .byte $0B, $1C, $2C   ; 
- D 0 - - - 0x00090F 00:88FF: 08        .byte $08, $29, $17   ; 
- D 0 - - - 0x000912 00:8902: 02        .byte $02, $11, $22   ; 



off_8905_00_00_spr:
- D 0 - I - 0x000915 00:8905: 04        .byte con_89CE_04   ; 00 



off_8906_00_01_spr:
- D 0 - I - 0x000916 00:8906: 00        .byte con_89CE_00   ; 00 
- D 0 - I - 0x000917 00:8907: 01        .byte con_89CE_01   ; 01 
- D 0 - I - 0x000918 00:8908: 0F        .byte con_89CE_0F   ; 02 
- D 0 - I - 0x000919 00:8909: 05        .byte con_89CE_05   ; 03 



off_890A_00_02_spr:
- D 0 - I - 0x00091A 00:890A: 06        .byte con_89CE_06   ; 00 
- D 0 - I - 0x00091B 00:890B: 04        .byte con_89CE_04   ; 01 



off_890C_00_03_spr:
- D 0 - I - 0x00091C 00:890C: 04        .byte con_89CE_04   ; 00 



off_890D_01_00_spr:
off_890D_01_05_spr:
- D 0 - I - 0x00091D 00:890D: 16        .byte con_89CE_16   ; 00 
- D 0 - I - 0x00091E 00:890E: 04        .byte con_89CE_04   ; 01 
- D 0 - I - 0x00091F 00:890F: 0E        .byte con_89CE_0E   ; 02 



off_8910_01_01_spr:
off_8910_01_04_spr:
- D 0 - I - 0x000920 00:8910: 16        .byte con_89CE_16   ; 00 
- D 0 - I - 0x000921 00:8911: 16        .byte con_89CE_16   ; 01 
- D 0 - I - 0x000922 00:8912: 05        .byte con_89CE_05   ; 02 



off_8913_01_02_spr:
off_8913_01_03_spr:
- D 0 - I - 0x000923 00:8913: 16        .byte con_89CE_16   ; 00 
- D 0 - I - 0x000924 00:8914: 16        .byte con_89CE_16   ; 01 
- D 0 - I - 0x000925 00:8915: 05        .byte con_89CE_05   ; 02 



off_8916_02_00_spr:
- D 0 - I - 0x000926 00:8916: 08        .byte con_89CE_08   ; 00 
- D 0 - I - 0x000927 00:8917: 08        .byte con_89CE_08   ; 01 



off_8918_02_01_spr:
- D 0 - I - 0x000928 00:8918: 07        .byte con_89CE_07   ; 00 



off_8919_02_02_spr:
- D 0 - I - 0x000929 00:8919: 06        .byte con_89CE_06   ; 00 
- D 0 - I - 0x00092A 00:891A: 06        .byte con_89CE_06   ; 01 



off_891B_02_03_spr:
- D 0 - I - 0x00092B 00:891B: 06        .byte con_89CE_06   ; 00 
- D 0 - I - 0x00092C 00:891C: 09        .byte con_89CE_09   ; 01 
- D 0 - I - 0x00092D 00:891D: 06        .byte con_89CE_06   ; 02 



off_891E_02_04_spr:
- D 0 - I - 0x00092E 00:891E: 02        .byte con_89CE_02   ; 00 
- D 0 - I - 0x00092F 00:891F: 08        .byte con_89CE_08   ; 01 



off_8920_03_00_spr:
- D 0 - I - 0x000930 00:8920: 0B        .byte con_89CE_0B   ; 00 
- D 0 - I - 0x000931 00:8921: 0B        .byte con_89CE_0B   ; 01 
- D 0 - I - 0x000932 00:8922: 04        .byte con_89CE_04   ; 02 



off_8923_03_01_spr:
- D 0 - I - 0x000933 00:8923: 05        .byte con_89CE_05   ; 00 
- D 0 - I - 0x000934 00:8924: 04        .byte con_89CE_04   ; 01 



off_8925_03_02_spr:
- D 0 - I - 0x000935 00:8925: 04        .byte con_89CE_04   ; 00 
- D 0 - I - 0x000936 00:8926: 09        .byte con_89CE_09   ; 01 



off_8927_03_03_spr:
- D 0 - I - 0x000937 00:8927: 0B        .byte con_89CE_0B   ; 00 
- D 0 - I - 0x000938 00:8928: 09        .byte con_89CE_09   ; 01 



off_8929_03_04_spr:
- D 0 - I - 0x000939 00:8929: 09        .byte con_89CE_09   ; 00 
- D 0 - I - 0x00093A 00:892A: 04        .byte con_89CE_04   ; 01 
- D 0 - I - 0x00093B 00:892B: 04        .byte con_89CE_04   ; 02 



off_892C_04_00_spr:
- D 0 - I - 0x00093C 00:892C: 10        .byte con_89CE_10   ; 00 
- D 0 - I - 0x00093D 00:892D: 07        .byte con_89CE_07   ; 01 
- D 0 - I - 0x00093E 00:892E: 07        .byte con_89CE_07   ; 02 



off_892F_04_01_spr:
- D 0 - I - 0x00093F 00:892F: 0A        .byte con_89CE_0A   ; 00 
- D 0 - I - 0x000940 00:8930: 0A        .byte con_89CE_0A   ; 01 
- D 0 - I - 0x000941 00:8931: 07        .byte con_89CE_07   ; 02 



off_8932_04_02_spr:
- D 0 - I - 0x000942 00:8932: 05        .byte con_89CE_05   ; 00 
- D 0 - I - 0x000943 00:8933: 06        .byte con_89CE_06   ; 01 
- D 0 - I - 0x000944 00:8934: 04        .byte con_89CE_04   ; 02 



off_8935_05_00_spr:
- D 0 - I - 0x000945 00:8935: 06        .byte con_89CE_06   ; 00 



off_8936_05_01_spr:
- D 0 - I - 0x000946 00:8936: 06        .byte con_89CE_06   ; 00 



off_8937_05_02_spr:
- D 0 - I - 0x000947 00:8937: 0C        .byte con_89CE_0C   ; 00 
- D 0 - I - 0x000948 00:8938: 06        .byte con_89CE_06   ; 01 



off_8939_05_03_spr:
- D 0 - I - 0x000949 00:8939: 0C        .byte con_89CE_0C   ; 00 
- D 0 - I - 0x00094A 00:893A: 11        .byte con_89CE_11   ; 01 



off_893B_06_00_spr:
- D 0 - I - 0x00094B 00:893B: 0C        .byte con_89CE_0C   ; 00 
- D 0 - I - 0x00094C 00:893C: 0C        .byte con_89CE_0C   ; 01 



off_893D_06_01_spr:
- D 0 - I - 0x00094D 00:893D: 0C        .byte con_89CE_0C   ; 00 



off_893E_06_02_spr:
- D 0 - I - 0x00094E 00:893E: 0D        .byte con_89CE_0D   ; 00 
- D 0 - I - 0x00094F 00:893F: 0C        .byte con_89CE_0C   ; 01 
- D 0 - I - 0x000950 00:8940: 04        .byte con_89CE_04   ; 02 



off_8941_07_00_spr:
- D 0 - I - 0x000951 00:8941: 11        .byte con_89CE_11   ; 00 
- D 0 - I - 0x000952 00:8942: 11        .byte con_89CE_11   ; 01 



off_8943_07_01_spr:
- D 0 - I - 0x000953 00:8943: 0A        .byte con_89CE_0A   ; 00 



off_8944_07_02_spr:
- D 0 - I - 0x000954 00:8944: 11        .byte con_89CE_11   ; 00 



off_8945_07_03_spr:
- D 0 - I - 0x000955 00:8945: 11        .byte con_89CE_11   ; 00 



off_8946_07_04_spr:
- D 0 - I - 0x000956 00:8946: 11        .byte con_89CE_11   ; 00 
- D 0 - I - 0x000957 00:8947: 11        .byte con_89CE_11   ; 01 



off_8948_07_05_spr:
- D 0 - I - 0x000958 00:8948: 0A        .byte con_89CE_0A   ; 00 
- D 0 - I - 0x000959 00:8949: 10        .byte con_89CE_10   ; 01 



off_894A_07_06_spr:
- D 0 - I - 0x00095A 00:894A: 11        .byte con_89CE_11   ; 00 



off_894B_08_00_spr:
- D 0 - I - 0x00095B 00:894B: 06        .byte con_89CE_06   ; 00 
- D 0 - I - 0x00095C 00:894C: 13        .byte con_89CE_13   ; 01 



off_894D_08_01_spr:
off_894D_08_03_spr:
off_894D_08_04_spr:
- D 0 - I - 0x00095D 00:894D: 13        .byte con_89CE_13   ; 00 



off_894E_08_02_spr:
- D 0 - I - 0x00095E 00:894E: 13        .byte con_89CE_13   ; 00 
- D 0 - I - 0x00095F 00:894F: 13        .byte con_89CE_13   ; 01 



off_8950_09_00_spr:
- D 0 - I - 0x000960 00:8950: 13        .byte con_89CE_13   ; 00 
- D 0 - I - 0x000961 00:8951: 0A        .byte con_89CE_0A   ; 01 



off_8952_09_01_spr:
- D 0 - I - 0x000962 00:8952: 15        .byte con_89CE_15   ; 00 
- D 0 - I - 0x000963 00:8953: 15        .byte con_89CE_15   ; 01 



off_8954_0A_00_spr:
- D 0 - I - 0x000964 00:8954: 0B        .byte con_89CE_0B   ; 00 
- D 0 - I - 0x000965 00:8955: 06        .byte con_89CE_06   ; 01 



off_8956_0A_01_spr:
- D 0 - I - 0x000966 00:8956: 15        .byte con_89CE_15   ; 00 



off_8957_0A_02_spr:
- D 0 - I - 0x000967 00:8957: 06        .byte con_89CE_06   ; 00 



off_8958_0A_03_spr:
- D 0 - I - 0x000968 00:8958: 07        .byte con_89CE_07   ; 00 
- D 0 - I - 0x000969 00:8959: 0A        .byte con_89CE_0A   ; 01 



off_895A_0A_04_spr:
- D 0 - I - 0x00096A 00:895A: 07        .byte con_89CE_07   ; 00 
- D 0 - I - 0x00096B 00:895B: 15        .byte con_89CE_15   ; 01 
- D 0 - I - 0x00096C 00:895C: 04        .byte con_89CE_04   ; 02 



off_895D_0A_05_spr:
- D 0 - I - 0x00096D 00:895D: 05        .byte con_89CE_05   ; 00 
- D 0 - I - 0x00096E 00:895E: 11        .byte con_89CE_11   ; 01 



off_895F_0A_06_spr:
- D 0 - I - 0x00096F 00:895F: 0B        .byte con_89CE_0B   ; 00 
- D 0 - I - 0x000970 00:8960: 07        .byte con_89CE_07   ; 01 
- D 0 - I - 0x000971 00:8961: 15        .byte con_89CE_15   ; 02 



off_8962_0B_00_spr:
- D 0 - I - 0x000972 00:8962: 06        .byte con_89CE_06   ; 00 
- D 0 - I - 0x000973 00:8963: 06        .byte con_89CE_06   ; 01 



off_8964_0B_01_spr:
- D 0 - I - 0x000974 00:8964: 15        .byte con_89CE_15   ; 00 
- D 0 - I - 0x000975 00:8965: 04        .byte con_89CE_04   ; 01 



off_8966_0B_02_spr:
- D 0 - I - 0x000976 00:8966: 15        .byte con_89CE_15   ; 00 
- D 0 - I - 0x000977 00:8967: 15        .byte con_89CE_15   ; 01 
- D 0 - I - 0x000978 00:8968: 04        .byte con_89CE_04   ; 02 



off_8969_0C_00_spr:
- D 0 - I - 0x000979 00:8969: 04        .byte con_89CE_04   ; 00 
- D 0 - I - 0x00097A 00:896A: 0B        .byte con_89CE_0B   ; 01 



off_896B_0C_01_spr:
off_896B_0F___0C_01_spr:
- D 0 - I - 0x00097B 00:896B: 0A        .byte con_89CE_0A   ; 00 
- D 0 - I - 0x00097C 00:896C: 0A        .byte con_89CE_0A   ; 01 



off_896D_0C_02_spr:
off_896D_0F___0C_02_spr:
- D 0 - I - 0x00097D 00:896D: 17        .byte con_89CE_17   ; 00 



off_896E_0D_00_spr:
- D 0 - I - 0x00097E 00:896E: 15        .byte con_89CE_15   ; 00 
- D 0 - I - 0x00097F 00:896F: 06        .byte con_89CE_06   ; 01 
- D 0 - I - 0x000980 00:8970: 16        .byte con_89CE_16   ; 02 



off_8971_0D_01_spr:
- D 0 - I - 0x000981 00:8971: 15        .byte con_89CE_15   ; 00 
- D 0 - I - 0x000982 00:8972: 07        .byte con_89CE_07   ; 01 
- D 0 - I - 0x000983 00:8973: 15        .byte con_89CE_15   ; 02 



off_8974_0D_02_spr:
- D 0 - I - 0x000984 00:8974: 15        .byte con_89CE_15   ; 00 
- D 0 - I - 0x000985 00:8975: 15        .byte con_89CE_15   ; 01 
- D 0 - I - 0x000986 00:8976: 15        .byte con_89CE_15   ; 02 



off_8977_0D_03_spr:
- D 0 - I - 0x000987 00:8977: 04        .byte con_89CE_04   ; 00 
- D 0 - I - 0x000988 00:8978: 0D        .byte con_89CE_0D   ; 01 



off_8979_0E_00_spr:
- D 0 - I - 0x000989 00:8979: 15        .byte con_89CE_15   ; 00 
- D 0 - I - 0x00098A 00:897A: 16        .byte con_89CE_16   ; 01 
- D 0 - I - 0x00098B 00:897B: 04        .byte con_89CE_04   ; 02 



off_897C_0E_01_spr:
- D 0 - I - 0x00098C 00:897C: 15        .byte con_89CE_15   ; 00 
- D 0 - I - 0x00098D 00:897D: 0E        .byte con_89CE_0E   ; 01 



off_897E_0E_02_spr:
- D 0 - I - 0x00098E 00:897E: 15        .byte con_89CE_15   ; 00 
- D 0 - I - 0x00098F 00:897F: 15        .byte con_89CE_15   ; 01 



off_8980_0F___0C_00_spr:
- D 0 - I - 0x000990 00:8980: 19        .byte con_89CE_19   ; 00 
- D 0 - I - 0x000991 00:8981: 0B        .byte con_89CE_0B   ; 01 



_off003_8982_0A_palette_Trevor:
- D 0 - I - 0x000992 00:8982: 10 3F     .word $3F10 ; ppu address
- D 0 - I - 0x000994 00:8984: 0F        .byte $0F, $08, $26, $37   ; 
- D 0 - I - 0x000998 00:8988: 0F        .byte $0F, $0F, $22, $34   ; 
- D 0 - I - 0x00099C 00:898C: 0F        .byte $0F, $0F, $0F, $0F   ; 
- D 0 - I - 0x0009A0 00:8990: 0F        .byte $0F, $0F, $16, $25   ; 

- D 0 - I - 0x0009A4 00:8994: FF        .byte $FF   ; end token



_off003_8995_0C_palette_Grant:
- D 0 - I - 0x0009A5 00:8995: 10 3F     .word $3F10 ; ppu address
- D 0 - I - 0x0009A7 00:8997: 0F        .byte $0F, $08, $15, $38   ; 
- D 0 - I - 0x0009AB 00:899B: 0F        .byte $0F, $0F, $22, $34   ; 
- D 0 - I - 0x0009AF 00:899F: 0F        .byte $0F, $0F, $0F, $0F   ; 
- D 0 - I - 0x0009B3 00:89A3: 0F        .byte $0F, $0F, $16, $25   ; 

- D 0 - I - 0x0009B7 00:89A7: FF        .byte $FF   ; end token



_off003_89A8_0B_palette_Sypha:
- D 0 - I - 0x0009B8 00:89A8: 10 3F     .word $3F10 ; ppu address
- D 0 - I - 0x0009BA 00:89AA: 0F        .byte $0F, $21, $11, $20   ; 
- D 0 - I - 0x0009BE 00:89AE: 0F        .byte $0F, $0F, $22, $34   ; 
- D 0 - I - 0x0009C2 00:89B2: 0F        .byte $0F, $0F, $0F, $0F   ; 
- D 0 - I - 0x0009C6 00:89B6: 0F        .byte $0F, $0F, $16, $25   ; 

- D 0 - I - 0x0009CA 00:89BA: FF        .byte $FF   ; end token



_off003_89BB_0D_palette_Alucard:
- D 0 - I - 0x0009CB 00:89BB: 10 3F     .word $3F10 ; ppu address
- D 0 - I - 0x0009CD 00:89BD: 0F        .byte $0F, $0F, $15, $36   ; 
- D 0 - I - 0x0009D1 00:89C1: 0F        .byte $0F, $0F, $22, $34   ; 
- D 0 - I - 0x0009D5 00:89C5: 0F        .byte $0F, $0F, $0F, $0F   ; 
- D 0 - I - 0x0009D9 00:89C9: 0F        .byte $0F, $0F, $16, $25   ; 

- D 0 - I - 0x0009DD 00:89CD: FF        .byte $FF   ; end token



tbl_89CE_3_colors_for_sprites:
; see con_89CE
- D 0 - - - 0x0009DE 00:89CE: 0F        .byte $0F, $32, $26   ; 00 
- D 0 - - - 0x0009E1 00:89D1: 0F        .byte $0F, $20, $14   ; 01 
- D 0 - - - 0x0009E4 00:89D4: 26        .byte $26, $0F, $1B   ; 02 
- - - - - - 0x0009E7 00:89D7: 28        .byte $28, $0F, $1B   ; 03 unused, index doesn't exist
- D 0 - - - 0x0009EA 00:89DA: 0F        .byte $0F, $13, $25   ; 04 
- D 0 - - - 0x0009ED 00:89DD: 0F        .byte $0F, $17, $36   ; 05 
- D 0 - - - 0x0009F0 00:89E0: 0F        .byte $0F, $15, $35   ; 06 
- D 0 - - - 0x0009F3 00:89E3: 0F        .byte $0F, $00, $39   ; 07 
- D 0 - - - 0x0009F6 00:89E6: 0F        .byte $0F, $13, $17   ; 08 
- D 0 - - - 0x0009F9 00:89E9: 0B        .byte $0B, $2A, $39   ; 09 
- D 0 - - - 0x0009FC 00:89EC: 0B        .byte $0B, $2A, $3B   ; 0A 
- D 0 - - - 0x0009FF 00:89EF: 0F        .byte $0F, $14, $32   ; 0B 
- D 0 - - - 0x000A02 00:89F2: 0F        .byte $0F, $18, $28   ; 0C 
- D 0 - - - 0x000A05 00:89F5: 10        .byte $10, $00, $23   ; 0D 
- D 0 - - - 0x000A08 00:89F8: 0F        .byte $0F, $08, $38   ; 0E 
- D 0 - - - 0x000A0B 00:89FB: 02        .byte $02, $08, $38   ; 0F 
- D 0 - - - 0x000A0E 00:89FE: 34        .byte $34, $00, $22   ; 10 
- D 0 - - - 0x000A11 00:8A01: 16        .byte $16, $26, $20   ; 11 
- - - - - - 0x000A14 00:8A04: 0F        .byte $0F, $14, $35   ; 12 unused, index doesn't exist
- D 0 - - - 0x000A17 00:8A07: 0F        .byte $0F, $13, $25   ; 13 
- - - - - - 0x000A1A 00:8A0A: 0F        .byte $0F, $08, $38   ; 14 unused, index doesn't exist
- D 0 - - - 0x000A1D 00:8A0D: 0F        .byte $0F, $04, $37   ; 15 
- D 0 - - - 0x000A20 00:8A10: 0F        .byte $0F, $00, $10   ; 16 
- D 0 - - - 0x000A23 00:8A13: 07        .byte $07, $00, $10   ; 17 
- - - - - - 0x000A26 00:8A16: 00        .byte $00, $10, $32   ; 18 unused, index doesn't exist
- D 0 - - - 0x000A29 00:8A19: 0F        .byte $0F, $17, $23   ; 19 



loc_0x000A2C_debug_menu_handler:
C D 0 - - - 0x000A2C 00:8A1C: A4 19     LDY ram_0019_subscript
C - - - - - 0x000A2E 00:8A1E: D0 15     BNE bra_8A35
; 00
C - - - - - 0x000A30 00:8A20: 20 19 E8  JSR sub_0x03E829
C - - - - - 0x000A33 00:8A23: A0 00     LDY #con__chr_bank + $00
C - - - - - 0x000A35 00:8A25: 84 46     STY ram_chr_bank_5120
C - - - - - 0x000A37 00:8A27: C8        INY ; con__chr_bank + $01
C - - - - - 0x000A38 00:8A28: 84 47     STY ram_chr_bank_5121
C - - - - - 0x000A3A 00:8A2A: A9 41     LDA #con__chr_bank + $41
C - - - - - 0x000A3C 00:8A2C: 85 4B     STA ram_chr_bank______5129
C - - - - - 0x000A3E 00:8A2E: A9 00     LDA #$00
C - - - - - 0x000A40 00:8A30: 85 6B     STA ram_006B_subscript
C - - - - - 0x000A42 00:8A32: E6 19     INC ram_0019_subscript
C - - - - - 0x000A44 00:8A34: 60        RTS
bra_8A35:
C - - - - - 0x000A45 00:8A35: 88        DEY
C - - - - - 0x000A46 00:8A36: D0 05     BNE bra_8A3D
; 01
C - - - - - 0x000A48 00:8A38: E6 19     INC ram_0019_subscript
C - - - - - 0x000A4A 00:8A3A: 4C FD EB  JMP loc_0x03EC0D_clear_nametables
bra_8A3D:
C - - - - - 0x000A4D 00:8A3D: 88        DEY
C - - - - - 0x000A4E 00:8A3E: D0 22     BNE bra_8A62
; 02
C - - - - - 0x000A50 00:8A40: E6 19     INC ram_0019_subscript
loc_8A42:
bra_8A42:
C D 0 - - - 0x000A52 00:8A42: A0 00     LDY #$00
C - - - - - 0x000A54 00:8A44: A5 32     LDA ram_blk_hi
C - - - - - 0x000A56 00:8A46: 20 1A 8B  JSR sub_8B1A_print_debug_menu_number
C - - - - - 0x000A59 00:8A49: A0 02     LDY #$02
C - - - - - 0x000A5B 00:8A4B: A5 33     LDA ram_blk_lo
C - - - - - 0x000A5D 00:8A4D: 20 1A 8B  JSR sub_8B1A_print_debug_menu_number
C - - - - - 0x000A60 00:8A50: A0 04     LDY #$04
C - - - - - 0x000A62 00:8A52: A5 34     LDA ram_blk_fr
C - - - - - 0x000A64 00:8A54: 20 1A 8B  JSR sub_8B1A_print_debug_menu_number
C - - - - - 0x000A67 00:8A57: A0 06     LDY #$06
C - - - - - 0x000A69 00:8A59: AD 4E 05  LDA ram_plr_id
C - - - - - 0x000A6C 00:8A5C: 20 1A 8B  JSR sub_8B1A_print_debug_menu_number
C - - - - - 0x000A6F 00:8A5F: 4C 32 8B  JMP loc_8B32_set_debug_menu_cursor_position
bra_8A62:
; 03
C - - - - - 0x000A72 00:8A62: A5 26     LDA ram_btn_press
C - - - - - 0x000A74 00:8A64: 29 10     AND #con_btn_Start
C - - - - - 0x000A76 00:8A66: D0 78     BNE bra_8AE0
C - - - - - 0x000A78 00:8A68: A5 26     LDA ram_btn_press
C - - - - - 0x000A7A 00:8A6A: 29 20     AND #con_btn_Select
C - - - - - 0x000A7C 00:8A6C: F0 0E     BEQ bra_8A7C
C - - - - - 0x000A7E 00:8A6E: A4 6B     LDY ram_006B_subscript
C - - - - - 0x000A80 00:8A70: C8        INY
C - - - - - 0x000A81 00:8A71: C0 04     CPY #$04
C - - - - - 0x000A83 00:8A73: D0 02     BNE bra_8A77
C - - - - - 0x000A85 00:8A75: A0 00     LDY #$00
bra_8A77:
C - - - - - 0x000A87 00:8A77: 84 6B     STY ram_006B_subscript
C - - - - - 0x000A89 00:8A79: 4C 42 8A  JMP loc_8A42
bra_8A7C:
C - - - - - 0x000A8C 00:8A7C: A5 26     LDA ram_btn_press
C - - - - - 0x000A8E 00:8A7E: 29 80     AND #con_btn_A
C - - - - - 0x000A90 00:8A80: F0 26     BEQ bra_8AA8
C - - - - - 0x000A92 00:8A82: A4 6B     LDY ram_006B_subscript
C - - - - - 0x000A94 00:8A84: F0 1D     BEQ bra_8AA3_00
C - - - - - 0x000A96 00:8A86: 88        DEY
C - - - - - 0x000A97 00:8A87: F0 15     BEQ bra_8A9E_01
C - - - - - 0x000A99 00:8A89: 88        DEY
C - - - - - 0x000A9A 00:8A8A: F0 0D     BEQ bra_8A99_02
; 03
C - - - - - 0x000A9C 00:8A8C: AC 4E 05  LDY ram_plr_id
C - - - - - 0x000A9F 00:8A8F: C8        INY
C - - - - - 0x000AA0 00:8A90: 98        TYA
C - - - - - 0x000AA1 00:8A91: 29 03     AND #$03
C - - - - - 0x000AA3 00:8A93: 8D 4E 05  STA ram_plr_id
C - - - - - 0x000AA6 00:8A96: 4C 42 8A  JMP loc_8A42
bra_8A99_02:
C - - - - - 0x000AA9 00:8A99: E6 34     INC ram_blk_fr
C - - - - - 0x000AAB 00:8A9B: 4C 42 8A  JMP loc_8A42
bra_8A9E_01:
C - - - - - 0x000AAE 00:8A9E: E6 33     INC ram_blk_lo
C - - - - - 0x000AB0 00:8AA0: 4C 42 8A  JMP loc_8A42
bra_8AA3_00:
C - - - - - 0x000AB3 00:8AA3: E6 32     INC ram_blk_hi
C - - - - - 0x000AB5 00:8AA5: 4C 42 8A  JMP loc_8A42
bra_8AA8:
C - - - - - 0x000AB8 00:8AA8: A5 26     LDA ram_btn_press
C - - - - - 0x000ABA 00:8AAA: 29 40     AND #con_btn_B
C - - - - - 0x000ABC 00:8AAC: F0 94     BEQ bra_8A42
C - - - - - 0x000ABE 00:8AAE: A4 6B     LDY ram_006B_subscript
C - - - - - 0x000AC0 00:8AB0: F0 25     BEQ bra_8AD7_00
C - - - - - 0x000AC2 00:8AB2: 88        DEY
C - - - - - 0x000AC3 00:8AB3: F0 19     BEQ bra_8ACE_01
C - - - - - 0x000AC5 00:8AB5: 88        DEY
C - - - - - 0x000AC6 00:8AB6: F0 0D     BEQ bra_8AC5_02
; 03
C - - - - - 0x000AC8 00:8AB8: AC 4E 05  LDY ram_plr_id
C - - - - - 0x000ACB 00:8ABB: 88        DEY
C - - - - - 0x000ACC 00:8ABC: 98        TYA
C - - - - - 0x000ACD 00:8ABD: 29 03     AND #$03
C - - - - - 0x000ACF 00:8ABF: 8D 4E 05  STA ram_plr_id
C - - - - - 0x000AD2 00:8AC2: 4C 42 8A  JMP loc_8A42
bra_8AC5_02:
C - - - - - 0x000AD5 00:8AC5: A5 34     LDA ram_blk_fr
C - - - - - 0x000AD7 00:8AC7: F0 02     BEQ bra_8ACB
C - - - - - 0x000AD9 00:8AC9: C6 34     DEC ram_blk_fr
bra_8ACB:
C - - - - - 0x000ADB 00:8ACB: 4C 42 8A  JMP loc_8A42
bra_8ACE_01:
C - - - - - 0x000ADE 00:8ACE: A5 33     LDA ram_blk_lo
C - - - - - 0x000AE0 00:8AD0: F0 02     BEQ bra_8AD4
C - - - - - 0x000AE2 00:8AD2: C6 33     DEC ram_blk_lo
bra_8AD4:
C - - - - - 0x000AE4 00:8AD4: 4C 42 8A  JMP loc_8A42
bra_8AD7_00:
C - - - - - 0x000AE7 00:8AD7: A5 32     LDA ram_blk_hi
C - - - - - 0x000AE9 00:8AD9: F0 02     BEQ bra_8ADD
C - - - - - 0x000AEB 00:8ADB: C6 32     DEC ram_blk_hi
bra_8ADD:
C - - - - - 0x000AED 00:8ADD: 4C 42 8A  JMP loc_8A42
bra_8AE0:
C - - - - - 0x000AF0 00:8AE0: 20 19 E8  JSR sub_0x03E829
C - - - - - 0x000AF3 00:8AE3: 20 84 E6  JSR sub_0x03E694
C - - - - - 0x000AF6 00:8AE6: A9 00     LDA #$00
C - - - - - 0x000AF8 00:8AE8: 85 39     STA ram_0039
C - - - - - 0x000AFA 00:8AEA: AD 4E 05  LDA ram_plr_id
C - - - - - 0x000AFD 00:8AED: D0 06     BNE bra_8AF5
C - - - - - 0x000AFF 00:8AEF: A0 00     LDY #$00
C - - - - - 0x000B01 00:8AF1: A9 FF     LDA #$FF
C - - - - - 0x000B03 00:8AF3: D0 02     BNE bra_8AF7
bra_8AF5:
C - - - - - 0x000B05 00:8AF5: A0 01     LDY #$01
bra_8AF7:
C - - - - - 0x000B07 00:8AF7: 84 3B     STY ram_player
C - - - - - 0x000B09 00:8AF9: 85 3A     STA ram_partner
C - - - - - 0x000B0B 00:8AFB: A9 04     LDA #con_0018_gameplay
C - - - - - 0x000B0D 00:8AFD: 85 18     STA ram_main_script
C - - - - - 0x000B0F 00:8AFF: A9 00     LDA #con_002A_00
C - - - - - 0x000B11 00:8B01: 85 2A     STA ram_002A_script
C - - - - - 0x000B13 00:8B03: 60        RTS



tbl_8B04_cursor_position:
- D 0 - - - 0x000B14 00:8B04: 0E 8B     .word off_8B0E_00_title_screen
- D 0 - - - 0x000B16 00:8B06: 10 8B     .word off_8B10_02_game_over
- D 0 - - - 0x000B18 00:8B08: 0A 8B     .word off_8B0A_04_debug_menu



off_8B0A_04_debug_menu:
; Y position
- D 0 - I - 0x000B1A 00:8B0A: 60        .byte $60   ; 00 
- D 0 - I - 0x000B1B 00:8B0B: 70        .byte $70   ; 01 
- D 0 - I - 0x000B1C 00:8B0C: 80        .byte $80   ; 02 
- D 0 - I - 0x000B1D 00:8B0D: 90        .byte $90   ; 03 



off_8B0E_00_title_screen:
; X position
- D 0 - I - 0x000B1E 00:8B0E: 30        .byte $30   ; 00 opening
- D 0 - I - 0x000B1F 00:8B0F: 88        .byte $88   ; 01 password



off_8B10_02_game_over:
; Y position
- D 0 - I - 0x000B20 00:8B10: A4        .byte $A4   ; 00 
- D 0 - I - 0x000B21 00:8B11: BC        .byte $BC   ; 01 



tbl_8B12_ppu:
- D 0 - - - 0x000B22 00:8B12: 90 21     .word $2190 ; 00 
- D 0 - - - 0x000B24 00:8B14: D0 21     .word $21D0 ; 01 
- D 0 - - - 0x000B26 00:8B16: 10 22     .word $2210 ; 02 
- D 0 - - - 0x000B28 00:8B18: 50 22     .word $2250 ; 03 



sub_8B1A_print_debug_menu_number:
C - - - - - 0x000B2A 00:8B1A: 85 08     STA ram_0008_t05A_number
C - - - - - 0x000B2C 00:8B1C: B9 12 8B  LDA tbl_8B12_ppu,Y
C - - - - - 0x000B2F 00:8B1F: 85 61     STA ram_ppu_address_lo
C - - - - - 0x000B31 00:8B21: B9 13 8B  LDA tbl_8B12_ppu + $01,Y
C - - - - - 0x000B34 00:8B24: 85 62     STA ram_ppu_address_hi
C - - - - - 0x000B36 00:8B26: 20 FC E8  JSR sub_0x03E90C_print_number



sub_0x000B39_set_game_over_cursor_position:
C - - - - - 0x000B39 00:8B29: A9 58     LDA #$58
C - - - - - 0x000B3B 00:8B2B: 8D 38 04  STA ram_plr_pos_X_hi
C - - - - - 0x000B3E 00:8B2E: A0 02     LDY #$02
C - - - - - 0x000B40 00:8B30: D0 07     BNE bra_8B39    ; jmp



loc_8B32_set_debug_menu_cursor_position:
C D 0 - - - 0x000B42 00:8B32: A9 70     LDA #$70
C - - - - - 0x000B44 00:8B34: 8D 38 04  STA ram_plr_pos_X_hi
C - - - - - 0x000B47 00:8B37: A0 04     LDY #$04
bra_8B39:
C - - - - - 0x000B49 00:8B39: B9 04 8B  LDA tbl_8B04_cursor_position,Y
C - - - - - 0x000B4C 00:8B3C: 85 08     STA ram_0008_t01E_data
C - - - - - 0x000B4E 00:8B3E: B9 05 8B  LDA tbl_8B04_cursor_position + $01,Y
C - - - - - 0x000B51 00:8B41: 85 09     STA ram_0008_t01E_data + $01
C - - - - - 0x000B53 00:8B43: A4 6B     LDY ram_006B_subscript
C - - - - - 0x000B55 00:8B45: B1 08     LDA (ram_0008_t01E_data),Y
C - - - - - 0x000B57 00:8B47: 8D 1C 04  STA ram_plr_pos_Y_hi
loc_8B4A_set_cursor_animation_data:
C D 0 - - - 0x000B5A 00:8B4A: A9 00     LDA #con_obj_type_00
C - - - - - 0x000B5C 00:8B4C: 8D 8C 04  STA ram_plr_type
C - - - - - 0x000B5F 00:8B4F: A9 40     LDA #$40
C - - - - - 0x000B61 00:8B51: 8D 00 04  STA ram_plr_anim_id
C - - - - - 0x000B64 00:8B54: 60        RTS



sub_0x000B65_set_title_screen_cursor_position:
C - - - - - 0x000B65 00:8B55: A9 CB     LDA #$CB
C - - - - - 0x000B67 00:8B57: 8D 1C 04  STA ram_plr_pos_Y_hi
C - - - - - 0x000B6A 00:8B5A: A0 00     LDY #$00
C - - - - - 0x000B6C 00:8B5C: B9 04 8B  LDA tbl_8B04_cursor_position,Y
C - - - - - 0x000B6F 00:8B5F: 85 08     STA ram_0008_t01F_data
C - - - - - 0x000B71 00:8B61: B9 05 8B  LDA tbl_8B04_cursor_position + $01,Y
C - - - - - 0x000B74 00:8B64: 85 09     STA ram_0008_t01F_data + $01
C - - - - - 0x000B76 00:8B66: A4 6B     LDY ram_006B_subscript
C - - - - - 0x000B78 00:8B68: B1 08     LDA (ram_0008_t01F_data),Y
C - - - - - 0x000B7A 00:8B6A: 8D 38 04  STA ram_plr_pos_X_hi
C - - - - - 0x000B7D 00:8B6D: 4C 4A 8B  JMP loc_8B4A_set_cursor_animation_data



sub_0x000B80_increase_brightness:
ofs_0x000B80_02_increase_brightness:
C - - - - - 0x000B80 00:8B70: A0 02     LDY #$02
C - - - - - 0x000B82 00:8B72: D0 02     BNE bra_8B76    ; jmp



sub_0x000B84_decrease_brightness:
ofs_0x000B84_00_decrease_brightness:
C - - - - - 0x000B84 00:8B74: A0 00     LDY #$00
bra_8B76:
C - - - - - 0x000B86 00:8B76: C6 B5     DEC ram_00B5
C - - - - - 0x000B88 00:8B78: F0 0A     BEQ bra_8B84
C - - - - - 0x000B8A 00:8B7A: D0 0E     BNE bra_8B8A    ; jmp



bra_8B7C_FF:    ; A = FF
C - - - - - 0x000B8C 00:8B7C: A9 FF     LDA #$FF
C - - - - - 0x000B8E 00:8B7E: 85 B4     STA ram_00B4
C - - - - - 0x000B90 00:8B80: A9 C0     LDA #$C0
C - - - - - 0x000B92 00:8B82: D0 18     BNE bra_8B9C    ; jmp



bra_8B84:
C - - - - - 0x000B94 00:8B84: E6 B4     INC ram_00B4
C - - - - - 0x000B96 00:8B86: A9 06     LDA #$06
C - - - - - 0x000B98 00:8B88: 85 B5     STA ram_00B5
bra_8B8A:
C - - - - - 0x000B9A 00:8B8A: B9 D1 8B  LDA tbl_8BD1_brightness,Y
C - - - - - 0x000B9D 00:8B8D: 85 10     STA ram_0010_t001_brightness_data
C - - - - - 0x000B9F 00:8B8F: B9 D2 8B  LDA tbl_8BD1_brightness + $01,Y
C - - - - - 0x000BA2 00:8B92: 85 11     STA ram_0010_t001_brightness_data + $01
C - - - - - 0x000BA4 00:8B94: A4 B4     LDY ram_00B4
C - - - - - 0x000BA6 00:8B96: B1 10     LDA (ram_0010_t001_brightness_data),Y
C - - - - - 0x000BA8 00:8B98: C9 FF     CMP #$FF
; bzk optimize, branch to 0x000B8E, delete LDA FF there
C - - - - - 0x000BAA 00:8B9A: F0 E0     BEQ bra_8B7C_FF
bra_8B9C:
C - - - - - 0x000BAC 00:8B9C: 85 12     STA ram_0012_t001_brightness_change
; bzk optimize, delete JSR + RTS
C - - - - - 0x000BAE 00:8B9E: 20 A2 8B  JSR sub_8BA2_brightness_update
C - - - - - 0x000BB1 00:8BA1: 60        RTS



sub_8BA2_brightness_update:
C - - - - - 0x000BB2 00:8BA2: A9 02     LDA #$02    ; execute 2 times (1 for background and 1 for sprite colors)
C - - - - - 0x000BB4 00:8BA4: 85 00     STA ram_0000_t04C_main_loop_counter
C - - - - - 0x000BB6 00:8BA6: A5 15     LDA ram_0015_t001_copy_index_ppu_buffer
bra_8BA8_loop:
C - - - - - 0x000BB8 00:8BA8: 18        CLC
C - - - - - 0x000BB9 00:8BA9: 69 04     ADC #$04
C - - - - - 0x000BBB 00:8BAB: AA        TAX
C - - - - - 0x000BBC 00:8BAC: A9 04     LDA #$04
C - - - - - 0x000BBE 00:8BAE: 85 13     STA ram_0013_t000_palette_counter
bra_8BB0_loop:
C - - - - - 0x000BC0 00:8BB0: A9 03     LDA #$03
C - - - - - 0x000BC2 00:8BB2: 85 14     STA ram_0014_t000_colors_counter
bra_8BB4_loop:
C - - - - - 0x000BC4 00:8BB4: BD 00 03  LDA ram_ppu_buffer,X
C - - - - - 0x000BC7 00:8BB7: 18        CLC
C - - - - - 0x000BC8 00:8BB8: 65 12     ADC ram_0012_t001_brightness_change
C - - - - - 0x000BCA 00:8BBA: 10 02     BPL bra_8BBE_not_underflow
C - - - - - 0x000BCC 00:8BBC: A9 0F     LDA #$0F
bra_8BBE_not_underflow:
C - - - - - 0x000BCE 00:8BBE: 9D 00 03  STA ram_ppu_buffer,X
C - - - - - 0x000BD1 00:8BC1: E8        INX
C - - - - - 0x000BD2 00:8BC2: C6 14     DEC ram_0014_t000_colors_counter
C - - - - - 0x000BD4 00:8BC4: D0 EE     BNE bra_8BB4_loop
C - - - - - 0x000BD6 00:8BC6: E8        INX
C - - - - - 0x000BD7 00:8BC7: C6 13     DEC ram_0013_t000_palette_counter
C - - - - - 0x000BD9 00:8BC9: D0 E5     BNE bra_8BB0_loop
C - - - - - 0x000BDB 00:8BCB: 8A        TXA
C - - - - - 0x000BDC 00:8BCC: C6 00     DEC ram_0000_t04C_main_loop_counter
C - - - - - 0x000BDE 00:8BCE: D0 D8     BNE bra_8BA8_loop
C - - - - - 0x000BE0 00:8BD0: 60        RTS



tbl_8BD1_brightness:
- D 0 - - - 0x000BE1 00:8BD1: DC 8B     .word off_8BDC_00_decrease
- D 0 - - - 0x000BE3 00:8BD3: D5 8B     .word off_8BD5_02_increase



off_8BD5_02_increase:
- - - - - - 0x000BE5 00:8BD5: 00        .byte $00   ; 00 
- D 0 - I - 0x000BE6 00:8BD6: C0        .byte $C0   ; 01 
- D 0 - I - 0x000BE7 00:8BD7: D0        .byte $D0   ; 02 
- D 0 - I - 0x000BE8 00:8BD8: E0        .byte $E0   ; 03 
- D 0 - I - 0x000BE9 00:8BD9: F0        .byte $F0   ; 04 
- D 0 - I - 0x000BEA 00:8BDA: 00        .byte $00   ; 05 
- D 0 - I - 0x000BEB 00:8BDB: FF        .byte $FF   ; 06 end token



off_8BDC_00_decrease:
- - - - - - 0x000BEC 00:8BDC: 00        .byte $00   ; 00 
- D 0 - I - 0x000BED 00:8BDD: 00        .byte $00   ; 01 
- D 0 - I - 0x000BEE 00:8BDE: F0        .byte $F0   ; 02 
- D 0 - I - 0x000BEF 00:8BDF: E0        .byte $E0   ; 03 
- D 0 - I - 0x000BF0 00:8BE0: D0        .byte $D0   ; 04 
- D 0 - I - 0x000BF1 00:8BE1: C0        .byte $C0   ; 05 
- D 0 - I - 0x000BF2 00:8BE2: FF        .byte $FF   ; 06 end token



sub_0x000BF3_add_points:
C - - - - - 0x000BF3 00:8BE3: A2 01     LDX #$01
C - - - - - 0x000BF5 00:8BE5: A0 00     LDY #$00
C - - - - - 0x000BF7 00:8BE7: A9 03     LDA #$03
C - - - - - 0x000BF9 00:8BE9: 85 00     STA ram_0000_t046_add_score
C - - - - - 0x000BFB 00:8BEB: 18        CLC
bra_8BEC_loop:
C - - - - - 0x000BFC 00:8BEC: B9 36 00  LDA ram_score_0000xx,Y
C - - - - - 0x000BFF 00:8BEF: 20 6D 8C  JSR sub_8C6D
C - - - - - 0x000C02 00:8BF2: 99 36 00  STA ram_score_0000xx,Y
C - - - - - 0x000C05 00:8BF5: C8        INY
C - - - - - 0x000C06 00:8BF6: E8        INX
C - - - - - 0x000C07 00:8BF7: C6 00     DEC ram_0000_t046_add_score
C - - - - - 0x000C09 00:8BF9: D0 F1     BNE bra_8BEC_loop
C - - - - - 0x000C0B 00:8BFB: 90 09     BCC bra_8C06_not_max_score
- - - - - - 0x000C0D 00:8BFD: A9 99     LDA #$99
- - - - - - 0x000C0F 00:8BFF: 85 36     STA ram_score_0000xx
- - - - - - 0x000C11 00:8C01: 85 37     STA ram_score_00xx00
- - - - - - 0x000C13 00:8C03: 85 38     STA ram_score_xx0000
bra_8C05_RTS:
C - - - - - 0x000C15 00:8C05: 60        RTS
bra_8C06_not_max_score:
C - - - - - 0x000C16 00:8C06: A5 38     LDA ram_score_xx0000
C - - - - - 0x000C18 00:8C08: C5 3E     CMP ram_extra_life_score
C - - - - - 0x000C1A 00:8C0A: 90 F9     BCC bra_8C05_RTS    ; no extra life yet
C - - - - - 0x000C1C 00:8C0C: A2 05     LDX #$05
C - - - - - 0x000C1E 00:8C0E: A5 3E     LDA ram_extra_life_score
C - - - - - 0x000C20 00:8C10: 18        CLC
C - - - - - 0x000C21 00:8C11: 20 69 8C  JSR sub_8C69_add_X_to_score
C - - - - - 0x000C24 00:8C14: 90 02     BCC bra_8C18
- - - - - - 0x000C26 00:8C16: A9 FF     LDA #$FF
bra_8C18:
C - - - - - 0x000C28 00:8C18: 85 3E     STA ram_extra_life_score
sub_0x000C2A_add_1_life:
C - - - - - 0x000C2A 00:8C1A: A2 01     LDX #$01
C - - - - - 0x000C2C 00:8C1C: A5 35     LDA ram_lives
C - - - - - 0x000C2E 00:8C1E: 18        CLC
C - - - - - 0x000C2F 00:8C1F: 20 69 8C  JSR sub_8C69_add_X_to_score
C - - - - - 0x000C32 00:8C22: B0 0A     BCS bra_8C2E_RTS
C - - - - - 0x000C34 00:8C24: 85 35     STA ram_lives
C - - - - - 0x000C36 00:8C26: A9 4B     LDA #con_sound_extra_life
C - - - - - 0x000C38 00:8C28: 20 5F E2  JSR sub_0x03E26F_play_sound
; bzk optimize, JMP
C - - - - - 0x000C3B 00:8C2B: 20 3C 8E  JSR sub_8E3C_print_lives_amount
bra_8C2E_RTS:
C - - - - - 0x000C3E 00:8C2E: 60        RTS



sub_0x000C3F_decrease_hearts:
; in
    ; A = hearts cost
C - - - - - 0x000C3F 00:8C2F: 85 00     STA ram_0000_t029_hearts_cost
C - - - - - 0x000C41 00:8C31: A5 84     LDA ram_hearts
C - - - - - 0x000C43 00:8C33: 29 0F     AND #$0F
C - - - - - 0x000C45 00:8C35: 85 01     STA ram_0001_t000_hearts_ones
C - - - - - 0x000C47 00:8C37: A5 84     LDA ram_hearts
C - - - - - 0x000C49 00:8C39: 29 F0     AND #$F0
C - - - - - 0x000C4B 00:8C3B: 85 02     STA ram_0002_t00F_hearts_tens
C - - - - - 0x000C4D 00:8C3D: A5 01     LDA ram_0001_t000_hearts_ones
C - - - - - 0x000C4F 00:8C3F: 38        SEC
C - - - - - 0x000C50 00:8C40: E5 00     SBC ram_0000_t029_hearts_cost
C - - - - - 0x000C52 00:8C42: B0 10     BCS bra_8C54
C - - - - - 0x000C54 00:8C44: 38        SEC
C - - - - - 0x000C55 00:8C45: E9 06     SBC #$06
C - - - - - 0x000C57 00:8C47: 85 01     STA ram_0001_t000_hearts_ones
C - - - - - 0x000C59 00:8C49: A5 02     LDA ram_0002_t00F_hearts_tens
C - - - - - 0x000C5B 00:8C4B: 38        SEC
C - - - - - 0x000C5C 00:8C4C: E9 10     SBC #$10
C - - - - - 0x000C5E 00:8C4E: 85 02     STA ram_0002_t00F_hearts_tens
C - - - - - 0x000C60 00:8C50: A5 01     LDA ram_0001_t000_hearts_ones
C - - - - - 0x000C62 00:8C52: 29 0F     AND #$0F
bra_8C54:
C - - - - - 0x000C64 00:8C54: 05 02     ORA ram_0002_t00F_hearts_tens
C - - - - - 0x000C66 00:8C56: 85 84     STA ram_hearts
C - - - - - 0x000C68 00:8C58: 60        RTS



sub_0x000C69_add_hearts:
; bzk optimize, move to bank FF
; in
    ; X = how much to add
C - - - - - 0x000C69 00:8C59: A5 84     LDA ram_hearts
C - - - - - 0x000C6B 00:8C5B: 18        CLC
C - - - - - 0x000C6C 00:8C5C: 20 69 8C  JSR sub_8C69_add_X_to_score
C - - - - - 0x000C6F 00:8C5F: B0 03     BCS bra_8C64_overflow
C - - - - - 0x000C71 00:8C61: 85 84     STA ram_hearts
C - - - - - 0x000C73 00:8C63: 60        RTS
bra_8C64_overflow:
C - - - - - 0x000C74 00:8C64: A9 99     LDA #$99
C - - - - - 0x000C76 00:8C66: 85 84     STA ram_hearts
C - - - - - 0x000C78 00:8C68: 60        RTS



sub_8C69_add_X_to_score:
; in
    ; X = how much to add
; out
    ; N
        ; 0 = 
        ; 1 = 
    ; C
        ; 0 = 
        ; 1 = 
; bzk optimize, write CLC here instead of before JSRs
C - - - - - 0x000C79 00:8C69: 86 00     STX ram_0000_t046_add_score
C - - - - - 0x000C7B 00:8C6B: A2 00     LDX #$00
sub_8C6D:
C - - - - - 0x000C7D 00:8C6D: 85 07     STA ram_0007_t000
C - - - - - 0x000C7F 00:8C6F: 29 F0     AND #$F0
C - - - - - 0x000C81 00:8C71: 85 06     STA ram_0006_t002
C - - - - - 0x000C83 00:8C73: 45 07     EOR ram_0007_t000
C - - - - - 0x000C85 00:8C75: 85 07     STA ram_0007_t000
C - - - - - 0x000C87 00:8C77: B5 00     LDA ram_0000_t046_add_score,X ; 0000 0001 0002 0003 
C - - - - - 0x000C89 00:8C79: 29 0F     AND #$0F
C - - - - - 0x000C8B 00:8C7B: 65 07     ADC ram_0007_t000
C - - - - - 0x000C8D 00:8C7D: C9 0A     CMP #$0A
C - - - - - 0x000C8F 00:8C7F: 90 02     BCC bra_8C83
; C = 1
C - - - - - 0x000C91 00:8C81: 69 05     ADC #$05
bra_8C83:
C - - - - - 0x000C93 00:8C83: 65 06     ADC ram_0006_t002
C - - - - - 0x000C95 00:8C85: 85 06     STA ram_0006_t002
C - - - - - 0x000C97 00:8C87: B5 00     LDA ram_0000_t046_add_score,X ; 0000 0001 0002 0003 
C - - - - - 0x000C99 00:8C89: 29 F0     AND #$F0
C - - - - - 0x000C9B 00:8C8B: 65 06     ADC ram_0006_t002
C - - - - - 0x000C9D 00:8C8D: B0 04     BCS bra_8C93
C - - - - - 0x000C9F 00:8C8F: C9 A0     CMP #$A0
C - - - - - 0x000CA1 00:8C91: 90 03     BCC bra_8C96_RTS
bra_8C93:
C - - - - - 0x000CA3 00:8C93: E9 A0     SBC #$A0
C - - - - - 0x000CA5 00:8C95: 38        SEC
bra_8C96_RTS:
C - - - - - 0x000CA6 00:8C96: 60        RTS



sub_8C97_print_hearts_amount:
loc_8C97_print_hearts_amount:
C D 0 - - - 0x000CA7 00:8C97: A9 20     LDA #> $2077
C - - - - - 0x000CA9 00:8C99: 85 62     STA ram_ppu_address_hi
C - - - - - 0x000CAB 00:8C9B: A9 77     LDA #< $2077
C - - - - - 0x000CAD 00:8C9D: 85 61     STA ram_ppu_address_lo
C - - - - - 0x000CAF 00:8C9F: A5 84     LDA ram_hearts
C - - - - - 0x000CB1 00:8CA1: 85 08     STA ram_0008_t05A_number
C - - - - - 0x000CB3 00:8CA3: 4C FC E8  JMP loc_0x03E90C_print_number



sub_8CA6_print_hp_amount:
loc_8CA6_print_hp_amount:
C D 0 - - - 0x000CB6 00:8CA6: A9 20     LDA #> $2067
C - - - - - 0x000CB8 00:8CA8: 85 62     STA ram_ppu_address_hi
C - - - - - 0x000CBA 00:8CAA: A9 67     LDA #< $2067
C - - - - - 0x000CBC 00:8CAC: 85 61     STA ram_ppu_address_lo
C - - - - - 0x000CBE 00:8CAE: A5 3C     LDA ram_hp_player
C - - - - - 0x000CC0 00:8CB0: 85 08     STA ram_0008_t033_hp
C - - - - - 0x000CC2 00:8CB2: A9 83     LDA #$83
C - - - - - 0x000CC4 00:8CB4: 85 0A     STA ram_000A_t018
C - - - - - 0x000CC6 00:8CB6: A9 84     LDA #$84
C - - - - - 0x000CC8 00:8CB8: 85 0B     STA ram_000B_t000
C - - - - - 0x000CCA 00:8CBA: 20 D1 8C  JSR sub_8CD1
C - - - - - 0x000CCD 00:8CBD: A9 20     LDA #> $2087
C - - - - - 0x000CCF 00:8CBF: 85 62     STA ram_ppu_address_hi
C - - - - - 0x000CD1 00:8CC1: A9 87     LDA #< $2087
C - - - - - 0x000CD3 00:8CC3: 85 61     STA ram_ppu_address_lo
C - - - - - 0x000CD5 00:8CC5: A5 3D     LDA ram_hp_boss
C - - - - - 0x000CD7 00:8CC7: 85 08     STA ram_0008_t033_hp
C - - - - - 0x000CD9 00:8CC9: A9 93     LDA #$93
C - - - - - 0x000CDB 00:8CCB: 85 0A     STA ram_000A_t018
C - - - - - 0x000CDD 00:8CCD: A9 94     LDA #$94
C - - - - - 0x000CDF 00:8CCF: 85 0B     STA ram_000B_t000
sub_8CD1:
C - - - - - 0x000CE1 00:8CD1: 20 B5 E8  JSR sub_0x03E8C5_set_buffer_mode_01
C - - - - - 0x000CE4 00:8CD4: A9 08     LDA #$08
C - - - - - 0x000CE6 00:8CD6: 85 09     STA ram_0009_t000
bra_8CD8_loop:
C - - - - - 0x000CE8 00:8CD8: A5 08     LDA ram_0008_t033_hp
C - - - - - 0x000CEA 00:8CDA: F0 31     BEQ bra_8D0D
C - - - - - 0x000CEC 00:8CDC: C9 08     CMP #$08
C - - - - - 0x000CEE 00:8CDE: 90 13     BCC bra_8CF3
C - - - - - 0x000CF0 00:8CE0: A5 0A     LDA ram_000A_t018
C - - - - - 0x000CF2 00:8CE2: 9D 00 03  STA ram_ppu_buffer,X
C - - - - - 0x000CF5 00:8CE5: E8        INX
C - - - - - 0x000CF6 00:8CE6: A5 08     LDA ram_0008_t033_hp
C - - - - - 0x000CF8 00:8CE8: 38        SEC
C - - - - - 0x000CF9 00:8CE9: E9 08     SBC #$08
C - - - - - 0x000CFB 00:8CEB: 85 08     STA ram_0008_t033_hp
C - - - - - 0x000CFD 00:8CED: C6 09     DEC ram_0009_t000
C - - - - - 0x000CFF 00:8CEF: F0 27     BEQ bra_8D18
C - - - - - 0x000D01 00:8CF1: D0 E5     BNE bra_8CD8_loop    ; jmp
bra_8CF3:
C - - - - - 0x000D03 00:8CF3: C9 05     CMP #$05
C - - - - - 0x000D05 00:8CF5: B0 0C     BCS bra_8D03
C - - - - - 0x000D07 00:8CF7: A5 0B     LDA ram_000B_t000
C - - - - - 0x000D09 00:8CF9: 9D 00 03  STA ram_ppu_buffer,X
C - - - - - 0x000D0C 00:8CFC: E8        INX
C - - - - - 0x000D0D 00:8CFD: C6 09     DEC ram_0009_t000
C - - - - - 0x000D0F 00:8CFF: F0 17     BEQ bra_8D18
C - - - - - 0x000D11 00:8D01: D0 0A     BNE bra_8D0D    ; jmp
bra_8D03:
C - - - - - 0x000D13 00:8D03: A5 0A     LDA ram_000A_t018
C - - - - - 0x000D15 00:8D05: 9D 00 03  STA ram_ppu_buffer,X
C - - - - - 0x000D18 00:8D08: E8        INX
C - - - - - 0x000D19 00:8D09: C6 09     DEC ram_0009_t000
C - - - - - 0x000D1B 00:8D0B: F0 0B     BEQ bra_8D18
bra_8D0D:
C - - - - - 0x000D1D 00:8D0D: A4 09     LDY ram_0009_t000
C - - - - - 0x000D1F 00:8D0F: A9 85     LDA #$85
bra_8D11_loop:
C - - - - - 0x000D21 00:8D11: 9D 00 03  STA ram_ppu_buffer,X
C - - - - - 0x000D24 00:8D14: E8        INX
C - - - - - 0x000D25 00:8D15: 88        DEY
C - - - - - 0x000D26 00:8D16: D0 F9     BNE bra_8D11_loop
bra_8D18:
C - - - - - 0x000D28 00:8D18: A9 FF     LDA #$FF
C - - - - - 0x000D2A 00:8D1A: 9D 00 03  STA ram_ppu_buffer,X
C - - - - - 0x000D2D 00:8D1D: E8        INX
C - - - - - 0x000D2E 00:8D1E: 86 1D     STX ram_index_ppu_buffer
C - - - - - 0x000D30 00:8D20: 60        RTS



sub_8D21_print_timer_amount:
loc_8D21_print_timer_amount:
C D 0 - - - 0x000D31 00:8D21: A9 20     LDA #> $2052
C - - - - - 0x000D33 00:8D23: 85 62     STA ram_ppu_address_hi
C - - - - - 0x000D35 00:8D25: A9 52     LDA #< $2052
C - - - - - 0x000D37 00:8D27: 85 61     STA ram_ppu_address_lo
C - - - - - 0x000D39 00:8D29: A5 7F     LDA ram_timer_x00
C - - - - - 0x000D3B 00:8D2B: 85 08     STA ram_0008_t05A_number
C - - - - - 0x000D3D 00:8D2D: 20 FC E8  JSR sub_0x03E90C_print_number
C - - - - - 0x000D40 00:8D30: E6 61     INC ram_ppu_address_lo
C - - - - - 0x000D42 00:8D32: E6 61     INC ram_ppu_address_lo
C - - - - - 0x000D44 00:8D34: A5 7E     LDA ram_timer_0xx
C - - - - - 0x000D46 00:8D36: 85 08     STA ram_0008_t05A_number
C - - - - - 0x000D48 00:8D38: 4C FC E8  JMP loc_0x03E90C_print_number



sub_8D3B_print_score_amount:
loc_8D3B_print_score_amount:
C D 0 - - - 0x000D4B 00:8D3B: A9 20     LDA #> $2046
C - - - - - 0x000D4D 00:8D3D: 85 62     STA ram_ppu_address_hi
C - - - - - 0x000D4F 00:8D3F: A9 46     LDA #< $2046
C - - - - - 0x000D51 00:8D41: 85 61     STA ram_ppu_address_lo
C - - - - - 0x000D53 00:8D43: A5 38     LDA ram_score_xx0000
C - - - - - 0x000D55 00:8D45: 85 08     STA ram_0008_t05A_number
C - - - - - 0x000D57 00:8D47: 20 FC E8  JSR sub_0x03E90C_print_number
C - - - - - 0x000D5A 00:8D4A: E6 61     INC ram_ppu_address_lo
C - - - - - 0x000D5C 00:8D4C: E6 61     INC ram_ppu_address_lo
C - - - - - 0x000D5E 00:8D4E: A5 37     LDA ram_score_00xx00
C - - - - - 0x000D60 00:8D50: 85 08     STA ram_0008_t05A_number
C - - - - - 0x000D62 00:8D52: 20 FC E8  JSR sub_0x03E90C_print_number
C - - - - - 0x000D65 00:8D55: E6 61     INC ram_ppu_address_lo
C - - - - - 0x000D67 00:8D57: E6 61     INC ram_ppu_address_lo
C - - - - - 0x000D69 00:8D59: A5 36     LDA ram_score_0000xx
C - - - - - 0x000D6B 00:8D5B: 85 08     STA ram_0008_t05A_number
C - - - - - 0x000D6D 00:8D5D: 4C FC E8  JMP loc_0x03E90C_print_number



sub_8D60_wait_for_irq:
bra_8D60_loop_wait_for_irq:
C - - - - - 0x000D70 00:8D60: 2C 04 52  BIT $5204
C - - - - - 0x000D73 00:8D63: 50 FB     BVC bra_8D60_loop_wait_for_irq
C - - - - - 0x000D75 00:8D65: 60        RTS



sub_0x000D76:
C - - - - - 0x000D76 00:8D66: 20 60 8D  JSR sub_8D60_wait_for_irq
C - - - - - 0x000D79 00:8D69: 20 6A 8F  JSR sub_8F6A_clear_expansion_memory
C - - - - - 0x000D7C 00:8D6C: A9 0E     LDA #con_98E4_hud
C - - - - - 0x000D7E 00:8D6E: 20 E9 EC  JSR sub_0x03ECF9_write_data_to_ppu_buffer
C - - - - - 0x000D81 00:8D71: 20 3B 8D  JSR sub_8D3B_print_score_amount
C - - - - - 0x000D84 00:8D74: 20 A6 8C  JSR sub_8CA6_print_hp_amount
C - - - - - 0x000D87 00:8D77: 20 21 8D  JSR sub_8D21_print_timer_amount
C - - - - - 0x000D8A 00:8D7A: 20 96 8D  JSR sub_8D96_print_blk_number
C - - - - - 0x000D8D 00:8D7D: 20 97 8C  JSR sub_8C97_print_hearts_amount
C - - - - - 0x000D90 00:8D80: 20 3C 8E  JSR sub_8E3C_print_lives_amount
C - - - - - 0x000D93 00:8D83: 20 4B 8E  JSR sub_8E4B
C - - - - - 0x000D96 00:8D86: A9 24     LDA #$24
C - - - - - 0x000D98 00:8D88: A6 68     LDX ram_0068
C - - - - - 0x000D9A 00:8D8A: 10 03     BPL bra_8D8F
C - - - - - 0x000D9C 00:8D8C: 38        SEC
C - - - - - 0x000D9D 00:8D8D: E9 04     SBC #$04
bra_8D8F:
C - - - - - 0x000D9F 00:8D8F: 8D 34 04  STA ram_obj_pos_Y_hi + $18
C - - - - - 0x000DA2 00:8D92: 8D 35 04  STA ram_obj_pos_Y_hi + $19
C - - - - - 0x000DA5 00:8D95: 60        RTS



sub_8D96_print_blk_number:
sub_0x000DA6_print_blk_number:
C - - - - - 0x000DA6 00:8D96: A5 32     LDA ram_blk_hi
C - - - - - 0x000DA8 00:8D98: 0A        ASL
C - - - - - 0x000DA9 00:8D99: A8        TAY
C - - - - - 0x000DAA 00:8D9A: B9 CF 8D  LDA tbl_8DCF,Y
C - - - - - 0x000DAD 00:8D9D: 85 08     STA ram_0008_t020_data
C - - - - - 0x000DAF 00:8D9F: B9 D0 8D  LDA tbl_8DCF + $01,Y
C - - - - - 0x000DB2 00:8DA2: 85 09     STA ram_0008_t020_data + $01
C - - - - - 0x000DB4 00:8DA4: A9 20     LDA #> $205B
C - - - - - 0x000DB6 00:8DA6: 85 62     STA ram_ppu_address_hi
C - - - - - 0x000DB8 00:8DA8: A9 5B     LDA #< $205B
C - - - - - 0x000DBA 00:8DAA: 85 61     STA ram_ppu_address_lo
C - - - - - 0x000DBC 00:8DAC: 20 B5 E8  JSR sub_0x03E8C5_set_buffer_mode_01
C - - - - - 0x000DBF 00:8DAF: A0 00     LDY #$00
C - - - - - 0x000DC1 00:8DB1: B1 08     LDA (ram_0008_t020_data),Y
C - - - - - 0x000DC3 00:8DB3: 9D 00 03  STA ram_ppu_buffer,X
C - - - - - 0x000DC6 00:8DB6: 20 DD E8  JSR sub_0x03E8ED_increase_and_store_index_and_close_buffer
C - - - - - 0x000DC9 00:8DB9: A9 20     LDA #> $205E
C - - - - - 0x000DCB 00:8DBB: 85 62     STA ram_ppu_address_hi
C - - - - - 0x000DCD 00:8DBD: A9 5E     LDA #< $205E
C - - - - - 0x000DCF 00:8DBF: 85 61     STA ram_ppu_address_lo
C - - - - - 0x000DD1 00:8DC1: 20 B5 E8  JSR sub_0x03E8C5_set_buffer_mode_01
C - - - - - 0x000DD4 00:8DC4: A4 33     LDY ram_blk_lo
C - - - - - 0x000DD6 00:8DC6: C8        INY
C - - - - - 0x000DD7 00:8DC7: B1 08     LDA (ram_0008_t020_data),Y
C - - - - - 0x000DD9 00:8DC9: 9D 00 03  STA ram_ppu_buffer,X
C - - - - - 0x000DDC 00:8DCC: 4C DD E8  JMP loc_0x03E8ED_increase_and_store_index_and_close_buffer



tbl_8DCF:
- D 0 - - - 0x000DDF 00:8DCF: ED 8D     .word _off004_8DED_00
- D 0 - - - 0x000DE1 00:8DD1: F2 8D     .word _off004_8DF2_01
- D 0 - - - 0x000DE3 00:8DD3: F9 8D     .word _off004_8DF9_02
- D 0 - - - 0x000DE5 00:8DD5: FF 8D     .word _off004_8DFF_03
- D 0 - - - 0x000DE7 00:8DD7: 05 8E     .word _off004_8E05_04
- D 0 - - - 0x000DE9 00:8DD9: 09 8E     .word _off004_8E09_05
- D 0 - - - 0x000DEB 00:8DDB: 0E 8E     .word _off004_8E0E_06
- D 0 - - - 0x000DED 00:8DDD: 12 8E     .word _off004_8E12_07
- D 0 - - - 0x000DEF 00:8DDF: 1A 8E     .word _off004_8E1A_08
- D 0 - - - 0x000DF1 00:8DE1: 20 8E     .word _off004_8E20_09
- D 0 - - - 0x000DF3 00:8DE3: 23 8E     .word _off004_8E23_0A
- D 0 - - - 0x000DF5 00:8DE5: 2B 8E     .word _off004_8E2B_0B
- D 0 - - - 0x000DF7 00:8DE7: 2F 8E     .word _off004_8E2F_0C
- D 0 - - - 0x000DF9 00:8DE9: 33 8E     .word _off004_8E33_0D
- D 0 - - - 0x000DFB 00:8DEB: 38 8E     .word _off004_8E38_0E



_off004_8DED_00:
- D 0 - I - 0x000DFD 00:8DED: 42        .byte $42   ; 

- D 0 - I - 0x000DFE 00:8DEE: 42        .byte $42   ; 00 
- D 0 - I - 0x000DFF 00:8DEF: 43        .byte $43   ; 01 
- D 0 - I - 0x000E00 00:8DF0: 44        .byte $44   ; 02 
- D 0 - I - 0x000E01 00:8DF1: 45        .byte $45   ; 03 



_off004_8DF2_01:
- D 0 - I - 0x000E02 00:8DF2: 43        .byte $43   ; 

- D 0 - I - 0x000E03 00:8DF3: 42        .byte $42   ; 00 
- D 0 - I - 0x000E04 00:8DF4: 43        .byte $43   ; 01 
- D 0 - I - 0x000E05 00:8DF5: 44        .byte $44   ; 02 
- D 0 - I - 0x000E06 00:8DF6: 45        .byte $45   ; 03 
- D 0 - I - 0x000E07 00:8DF7: 46        .byte $46   ; 04 
- D 0 - I - 0x000E08 00:8DF8: 47        .byte $47   ; 05 



_off004_8DF9_02:
- D 0 - I - 0x000E09 00:8DF9: 44        .byte $44   ; 

- D 0 - I - 0x000E0A 00:8DFA: 41        .byte $41   ; 00 
- D 0 - I - 0x000E0B 00:8DFB: 42        .byte $42   ; 01 
- D 0 - I - 0x000E0C 00:8DFC: 43        .byte $43   ; 02 
- D 0 - I - 0x000E0D 00:8DFD: 44        .byte $44   ; 03 
- D 0 - I - 0x000E0E 00:8DFE: 45        .byte $45   ; 04 



_off004_8DFF_03:
- D 0 - I - 0x000E0F 00:8DFF: 45        .byte $45   ; 

- D 0 - I - 0x000E10 00:8E00: 50        .byte $50   ; 00 
- D 0 - I - 0x000E11 00:8E01: 51        .byte $51   ; 01 
- D 0 - I - 0x000E12 00:8E02: 52        .byte $52   ; 02 
- D 0 - I - 0x000E13 00:8E03: 53        .byte $53   ; 03 
- D 0 - I - 0x000E14 00:8E04: 54        .byte $54   ; 04 



_off004_8E05_04:
- D 0 - I - 0x000E15 00:8E05: 46        .byte $46   ; 

- D 0 - I - 0x000E16 00:8E06: 50        .byte $50   ; 00 
- D 0 - I - 0x000E17 00:8E07: 51        .byte $51   ; 01 
- D 0 - I - 0x000E18 00:8E08: 52        .byte $52   ; 02 



_off004_8E09_05:
- D 0 - I - 0x000E19 00:8E09: 47        .byte $47   ; 

- D 0 - I - 0x000E1A 00:8E0A: 50        .byte $50   ; 00 
- D 0 - I - 0x000E1B 00:8E0B: 51        .byte $51   ; 01 
- D 0 - I - 0x000E1C 00:8E0C: 52        .byte $52   ; 02 
- D 0 - I - 0x000E1D 00:8E0D: 53        .byte $53   ; 03 



_off004_8E0E_06:
- D 0 - I - 0x000E1E 00:8E0E: 45        .byte $45   ; 

- D 0 - I - 0x000E1F 00:8E0F: 42        .byte $42   ; 00 
- D 0 - I - 0x000E20 00:8E10: 43        .byte $43   ; 01 
- D 0 - I - 0x000E21 00:8E11: 44        .byte $44   ; 02 



_off004_8E12_07:
- D 0 - I - 0x000E22 00:8E12: 46        .byte $46   ; 

- D 0 - I - 0x000E23 00:8E13: 42        .byte $42   ; 00 
- D 0 - I - 0x000E24 00:8E14: 43        .byte $43   ; 01 
- D 0 - I - 0x000E25 00:8E15: 44        .byte $44   ; 02 
- D 0 - I - 0x000E26 00:8E16: 45        .byte $45   ; 03 
- D 0 - I - 0x000E27 00:8E17: 46        .byte $46   ; 04 
- D 0 - I - 0x000E28 00:8E18: 47        .byte $47   ; 05 
- D 0 - I - 0x000E29 00:8E19: 48        .byte $48   ; 06 



_off004_8E1A_08:
- D 0 - I - 0x000E2A 00:8E1A: 47        .byte $47   ; 

- D 0 - I - 0x000E2B 00:8E1B: 42        .byte $42   ; 00 
- D 0 - I - 0x000E2C 00:8E1C: 43        .byte $43   ; 01 
- D 0 - I - 0x000E2D 00:8E1D: 44        .byte $44   ; 02 
- D 0 - I - 0x000E2E 00:8E1E: 45        .byte $45   ; 03 
- D 0 - I - 0x000E2F 00:8E1F: 46        .byte $46   ; 04 



_off004_8E20_09:
- D 0 - I - 0x000E30 00:8E20: 47        .byte $47   ; 

- D 0 - I - 0x000E31 00:8E21: 42        .byte $42   ; 00 
- D 0 - I - 0x000E32 00:8E22: 43        .byte $43   ; 01 



_off004_8E23_0A:
- D 0 - I - 0x000E33 00:8E23: 48        .byte $48   ; 

- D 0 - I - 0x000E34 00:8E24: 42        .byte $42   ; 00 
- D 0 - I - 0x000E35 00:8E25: 43        .byte $43   ; 01 
- D 0 - I - 0x000E36 00:8E26: 44        .byte $44   ; 02 
- D 0 - I - 0x000E37 00:8E27: 45        .byte $45   ; 03 
- D 0 - I - 0x000E38 00:8E28: 46        .byte $46   ; 04 
- D 0 - I - 0x000E39 00:8E29: 47        .byte $47   ; 05 
- D 0 - I - 0x000E3A 00:8E2A: 48        .byte $48   ; 06 



_off004_8E2B_0B:
- D 0 - I - 0x000E3B 00:8E2B: 48        .byte $48   ; 

- D 0 - I - 0x000E3C 00:8E2C: 50        .byte $50   ; 00 
- D 0 - I - 0x000E3D 00:8E2D: 51        .byte $51   ; 01 
- D 0 - I - 0x000E3E 00:8E2E: 52        .byte $52   ; 02 



_off004_8E2F_0C:
- D 0 - I - 0x000E3F 00:8E2F: 49        .byte $49   ; 

- D 0 - I - 0x000E40 00:8E30: 42        .byte $42   ; 00 
- D 0 - I - 0x000E41 00:8E31: 43        .byte $43   ; 01 
- D 0 - I - 0x000E42 00:8E32: 44        .byte $44   ; 02 



_off004_8E33_0D:
- D 0 - I - 0x000E43 00:8E33: 4A        .byte $4A   ; 

- D 0 - I - 0x000E44 00:8E34: 42        .byte $42   ; 00 
- D 0 - I - 0x000E45 00:8E35: 43        .byte $43   ; 01 
- D 0 - I - 0x000E46 00:8E36: 44        .byte $44   ; 02 
- D 0 - I - 0x000E47 00:8E37: 45        .byte $45   ; 03 



_off004_8E38_0E:
- D 0 - I - 0x000E48 00:8E38: 50        .byte $50   ; 

- D 0 - I - 0x000E49 00:8E39: 42        .byte $42   ; 00 
- D 0 - I - 0x000E4A 00:8E3A: 43        .byte $43   ; 01 
- D 0 - I - 0x000E4B 00:8E3B: 44        .byte $44   ; 02 



sub_8E3C_print_lives_amount:
C - - - - - 0x000E4C 00:8E3C: A9 20     LDA #> $2097
C - - - - - 0x000E4E 00:8E3E: 85 62     STA ram_ppu_address_hi
C - - - - - 0x000E50 00:8E40: A9 97     LDA #< $2097
C - - - - - 0x000E52 00:8E42: 85 61     STA ram_ppu_address_lo
C - - - - - 0x000E54 00:8E44: A4 35     LDY ram_lives
C - - - - - 0x000E56 00:8E46: 84 08     STY ram_0008_t05A_number
C - - - - - 0x000E58 00:8E48: 4C FC E8  JMP loc_0x03E90C_print_number



sub_8E4B:
C - - - - - 0x000E5B 00:8E4B: A5 3B     LDA ram_player
C - - - - - 0x000E5D 00:8E4D: 49 01     EOR #$01
C - - - - - 0x000E5F 00:8E4F: A8        TAY
C - - - - - 0x000E60 00:8E50: B9 39 00  LDA ram_0039,Y
C - - - - - 0x000E63 00:8E53: 30 07     BMI bra_8E5C_RTS
C - - - - - 0x000E65 00:8E55: A8        TAY
C - - - - - 0x000E66 00:8E56: B9 5D 8E  LDA tbl_8E5D,Y
; bzk optimize, JMP
C - - - - - 0x000E69 00:8E59: 20 E9 EC  JSR sub_0x03ECF9_write_data_to_ppu_buffer
bra_8E5C_RTS:
C - - - - - 0x000E6C 00:8E5C: 60        RTS



tbl_8E5D:
- D 0 - - - 0x000E6D 00:8E5D: 0F        .byte con_98E4_0F   ; 00 
- D 0 - - - 0x000E6E 00:8E5E: 10        .byte con_98E4_10   ; 01 
- D 0 - - - 0x000E6F 00:8E5F: 11        .byte con_98E4_11   ; 02 
- D 0 - - - 0x000E70 00:8E60: 12        .byte con_98E4_12   ; 03 



sub_8E61_display_subweapon:
sub_0x000E71_display_subweapon:
C - - - - - 0x000E71 00:8E61: 20 92 8E  JSR sub_8E92_set_subweapon_data
C - - - - - 0x000E74 00:8E64: A4 3B     LDY ram_player
C - - - - - 0x000E76 00:8E66: B9 87 00  LDA ram_subw_multiplier,Y
C - - - - - 0x000E79 00:8E69: 0A        ASL
C - - - - - 0x000E7A 00:8E6A: A8        TAY
C - - - - - 0x000E7B 00:8E6B: B9 C9 8E  LDA tbl_8EC9,Y
C - - - - - 0x000E7E 00:8E6E: 8D 19 04  STA ram_obj_anim_id + $19
C - - - - - 0x000E81 00:8E71: B9 CA 8E  LDA tbl_8EC9 + $01,Y
C - - - - - 0x000E84 00:8E74: 8D A5 04  STA ram_obj_type + $19
C - - - - - 0x000E87 00:8E77: A0 00     LDY #$00
C - - - - - 0x000E89 00:8E79: 8C 6D 04  STY ram_0454_obj + $19
C - - - - - 0x000E8C 00:8E7C: C8        INY ; 01 facing left
C - - - - - 0x000E8D 00:8E7D: 8C C1 04  STY ram_obj_facing + $19
C - - - - - 0x000E90 00:8E80: A9 D8     LDA #$D8
C - - - - - 0x000E92 00:8E82: 8D 51 04  STA ram_obj_pos_X_hi + $19
C - - - - - 0x000E95 00:8E85: A9 24     LDA #$24
C - - - - - 0x000E97 00:8E87: A6 68     LDX ram_0068
C - - - - - 0x000E99 00:8E89: 10 03     BPL bra_8E8E
C - - - - - 0x000E9B 00:8E8B: 38        SEC
C - - - - - 0x000E9C 00:8E8C: E9 04     SBC #$04
bra_8E8E:
C - - - - - 0x000E9E 00:8E8E: 8D 35 04  STA ram_obj_pos_Y_hi + $19
C - - - - - 0x000EA1 00:8E91: 60        RTS



sub_8E92_set_subweapon_data:
C - - - - - 0x000EA2 00:8E92: A4 3B     LDY ram_player
C - - - - - 0x000EA4 00:8E94: B9 85 00  LDA ram_subweapon,Y
; * 05
C - - - - - 0x000EA7 00:8E97: 0A        ASL
C - - - - - 0x000EA8 00:8E98: 0A        ASL
C - - - - - 0x000EA9 00:8E99: 18        CLC
C - - - - - 0x000EAA 00:8E9A: 79 85 00  ADC ram_subweapon,Y
C - - - - - 0x000EAD 00:8E9D: A8        TAY
C - - - - - 0x000EAE 00:8E9E: B9 CF 8E  LDA tbl_8ECF,Y
C - - - - - 0x000EB1 00:8EA1: 8D 18 04  STA ram_obj_anim_id + $18
C - - - - - 0x000EB4 00:8EA4: B9 D0 8E  LDA tbl_8ECF + $01,Y
C - - - - - 0x000EB7 00:8EA7: 8D A4 04  STA ram_obj_type + $18
C - - - - - 0x000EBA 00:8EAA: B9 D1 8E  LDA tbl_8ECF + $02,Y
C - - - - - 0x000EBD 00:8EAD: 8D 50 04  STA ram_obj_pos_X_hi + $18
C - - - - - 0x000EC0 00:8EB0: B9 D2 8E  LDA tbl_8ECF + $03,Y
C - - - - - 0x000EC3 00:8EB3: A6 68     LDX ram_0068
C - - - - - 0x000EC5 00:8EB5: 10 03     BPL bra_8EBA
C - - - - - 0x000EC7 00:8EB7: 38        SEC
C - - - - - 0x000EC8 00:8EB8: E9 04     SBC #$04
bra_8EBA:
C - - - - - 0x000ECA 00:8EBA: 8D 34 04  STA ram_obj_pos_Y_hi + $18
C - - - - - 0x000ECD 00:8EBD: B9 D3 8E  LDA tbl_8ECF + $04,Y
C - - - - - 0x000ED0 00:8EC0: 8D 6C 04  STA ram_0454_obj + $18
C - - - - - 0x000ED3 00:8EC3: A9 01     LDA #$01    ; facing left
C - - - - - 0x000ED5 00:8EC5: 8D C0 04  STA ram_obj_facing + $18
C - - - - - 0x000ED8 00:8EC8: 60        RTS



tbl_8EC9:
;                                              +---------- animation
;                                              |    +----- type
;                                              |    |
- D 0 - - - 0x000ED9 00:8EC9: 00        .byte $00, con_obj_type_00   ; 00 
- D 0 - - - 0x000EDB 00:8ECB: 58        .byte $58, con_obj_type_0E   ; 01 
- D 0 - - - 0x000EDD 00:8ECD: 5A        .byte $5A, con_obj_type_0E   ; 02 



tbl_8ECF:
; bzk optimize, the same position for all except for 00
; 00 con_weapon_00
- D 0 - - - 0x000EDF 00:8ECF: 00        .byte $00   ; animation
- D 0 - - - 0x000EE0 00:8ED0: 00        .byte con_obj_type_00   ; 
- D 0 - - - 0x000EE1 00:8ED1: 00        .byte $00   ; pos_X_hi
- D 0 - - - 0x000EE2 00:8ED2: 00        .byte $00   ; pos_Y_hi
- D 0 - - - 0x000EE3 00:8ED3: 00        .byte $00   ; palette
; 01 con_weapon_axe
- D 0 - - - 0x000EE4 00:8ED4: 46        .byte $46   ; animation
- D 0 - - - 0x000EE5 00:8ED5: 00        .byte con_obj_type_00   ; 
- D 0 - - - 0x000EE6 00:8ED6: 90        .byte $90   ; pos_X_hi
- D 0 - - - 0x000EE7 00:8ED7: 24        .byte $24   ; pos_Y_hi
- D 0 - - - 0x000EE8 00:8ED8: 00        .byte $00   ; palette
; 02 con_weapon_cross
- D 0 - - - 0x000EE9 00:8ED9: 42        .byte $42   ; animation
- D 0 - - - 0x000EEA 00:8EDA: 00        .byte con_obj_type_00   ; 
- D 0 - - - 0x000EEB 00:8EDB: 90        .byte $90   ; pos_X_hi
- D 0 - - - 0x000EEC 00:8EDC: 24        .byte $24   ; pos_Y_hi
- D 0 - - - 0x000EED 00:8EDD: 00        .byte $00   ; palette
; 03 con_weapon_knife
- D 0 - - - 0x000EEE 00:8EDE: 4E        .byte $4E   ; animation
- D 0 - - - 0x000EEF 00:8EDF: 00        .byte con_obj_type_00   ; 
- D 0 - - - 0x000EF0 00:8EE0: 90        .byte $90   ; pos_X_hi
- D 0 - - - 0x000EF1 00:8EE1: 24        .byte $24   ; pos_Y_hi
- D 0 - - - 0x000EF2 00:8EE2: 00        .byte $00   ; palette
; 04 con_weapon_holy_water
- D 0 - - - 0x000EF3 00:8EE3: 50        .byte $50   ; animation
- D 0 - - - 0x000EF4 00:8EE4: 00        .byte con_obj_type_00   ; 
- D 0 - - - 0x000EF5 00:8EE5: 90        .byte $90   ; pos_X_hi
- D 0 - - - 0x000EF6 00:8EE6: 24        .byte $24   ; pos_Y_hi
- D 0 - - - 0x000EF7 00:8EE7: 00        .byte $00   ; palette
; 05 con_weapon_fireball
- D 0 - - - 0x000EF8 00:8EE8: 52        .byte $52   ; animation
- D 0 - - - 0x000EF9 00:8EE9: 02        .byte con_obj_type_02   ; 
- D 0 - - - 0x000EFA 00:8EEA: 90        .byte $90   ; pos_X_hi
- D 0 - - - 0x000EFB 00:8EEB: 24        .byte $24   ; pos_Y_hi
- D 0 - - - 0x000EFC 00:8EEC: 03        .byte $03   ; palette
; 06 con_weapon_freeze
- D 0 - - - 0x000EFD 00:8EED: 54        .byte $54   ; animation
- D 0 - - - 0x000EFE 00:8EEE: 02        .byte con_obj_type_02   ; 
- D 0 - - - 0x000EFF 00:8EEF: 90        .byte $90   ; pos_X_hi
- D 0 - - - 0x000F00 00:8EF0: 24        .byte $24   ; pos_Y_hi
- D 0 - - - 0x000F01 00:8EF1: 00        .byte $00   ; palette
; 07 con_weapon_blue_balls
- D 0 - - - 0x000F02 00:8EF2: 4E        .byte $4E   ; animation
- D 0 - - - 0x000F03 00:8EF3: 02        .byte con_obj_type_02   ; 
- D 0 - - - 0x000F04 00:8EF4: 90        .byte $90   ; pos_X_hi
- D 0 - - - 0x000F05 00:8EF5: 24        .byte $24   ; pos_Y_hi
- D 0 - - - 0x000F06 00:8EF6: 00        .byte $00   ; palette
; 08 con_weapon_g_knife
- D 0 - - - 0x000F07 00:8EF7: 4E        .byte $4E   ; animation
- D 0 - - - 0x000F08 00:8EF8: 00        .byte con_obj_type_00   ; 
- D 0 - - - 0x000F09 00:8EF9: 90        .byte $90   ; pos_X_hi
- D 0 - - - 0x000F0A 00:8EFA: 24        .byte $24   ; pos_Y_hi
- D 0 - - - 0x000F0B 00:8EFB: 00        .byte $00   ; palette
; 09 con_weapon_g_axe
- D 0 - - - 0x000F0C 00:8EFC: 46        .byte $46   ; animation
- D 0 - - - 0x000F0D 00:8EFD: 00        .byte con_obj_type_00   ; 
- D 0 - - - 0x000F0E 00:8EFE: 90        .byte $90   ; pos_X_hi
- D 0 - - - 0x000F0F 00:8EFF: 24        .byte $24   ; pos_Y_hi
- D 0 - - - 0x000F10 00:8F00: 00        .byte $00   ; palette
; 0A unused, index doesn't exist
- - - - - - 0x000F11 00:8F01: 50        .byte $50   ; animation
- - - - - - 0x000F12 00:8F02: 00        .byte con_obj_type_00   ; 
- - - - - - 0x000F13 00:8F03: 90        .byte $90   ; pos_X_hi
- - - - - - 0x000F14 00:8F04: 24        .byte $24   ; pos_Y_hi
- - - - - - 0x000F15 00:8F05: 00        .byte $00   ; palette
; 0B con_weapon_stopwatch
- D 0 - - - 0x000F16 00:8F06: 68        .byte $68   ; animation
- D 0 - - - 0x000F17 00:8F07: 0E        .byte con_obj_type_0E   ; 
- D 0 - - - 0x000F18 00:8F08: 90        .byte $90   ; pos_X_hi
- D 0 - - - 0x000F19 00:8F09: 24        .byte $24   ; pos_Y_hi
- D 0 - - - 0x000F1A 00:8F0A: 00        .byte $00   ; palette



sub_8F0B:
sub_0x000F1B:
C - - - - - 0x000F1B 00:8F0B: A5 B2     LDA ram_00B2
C - - - - - 0x000F1D 00:8F0D: F0 26     BEQ bra_8F35
C - - - - - 0x000F1F 00:8F0F: C6 B2     DEC ram_00B2
C - - - - - 0x000F21 00:8F11: F0 06     BEQ bra_8F19
C - - - - - 0x000F23 00:8F13: A5 B2     LDA ram_00B2
C - - - - - 0x000F25 00:8F15: 29 03     AND #$03
C - - - - - 0x000F27 00:8F17: F0 06     BEQ bra_8F1F
bra_8F19:
C - - - - - 0x000F29 00:8F19: 20 9E 85  JSR sub_859E_update_3_colors_for_sprites
C - - - - - 0x000F2C 00:8F1C: 4C 4E 8F  JMP loc_8F4E
bra_8F1F:
C - - - - - 0x000F2F 00:8F1F: 20 9E 85  JSR sub_859E_update_3_colors_for_sprites
C - - - - - 0x000F32 00:8F22: A6 1D     LDX ram_index_ppu_buffer
C - - - - - 0x000F34 00:8F24: A9 20     LDA #$20
C - - - - - 0x000F36 00:8F26: 9D E7 02  STA ram_ppu_buffer - $19,X
C - - - - - 0x000F39 00:8F29: 9D EB 02  STA ram_ppu_buffer - $15,X
C - - - - - 0x000F3C 00:8F2C: 9D EF 02  STA ram_ppu_buffer - $11,X
C - - - - - 0x000F3F 00:8F2F: 9D F3 02  STA ram_ppu_buffer - $0D,X
C - - - - - 0x000F42 00:8F32: 4C 4E 8F  JMP loc_8F4E
bra_8F35:
C - - - - - 0x000F45 00:8F35: A5 AD     LDA ram_00AD_timer
C - - - - - 0x000F47 00:8F37: F0 15     BEQ bra_8F4E
C - - - - - 0x000F49 00:8F39: A5 1A     LDA ram_frm_cnt
C - - - - - 0x000F4B 00:8F3B: 29 01     AND #$01
C - - - - - 0x000F4D 00:8F3D: F0 04     BEQ bra_8F43
C - - - - - 0x000F4F 00:8F3F: C6 AD     DEC ram_00AD_timer
C - - - - - 0x000F51 00:8F41: F0 D6     BEQ bra_8F19
bra_8F43:
C - - - - - 0x000F53 00:8F43: A5 AD     LDA ram_00AD_timer
C - - - - - 0x000F55 00:8F45: 29 01     AND #$01
C - - - - - 0x000F57 00:8F47: F0 02     BEQ bra_8F4B
C - - - - - 0x000F59 00:8F49: D0 CE     BNE bra_8F19    ; jmp
bra_8F4B:
C - - - - - 0x000F5B 00:8F4B: 20 A4 85  JSR sub_85A4_sypha_invincibility_colors
loc_8F4E:
bra_8F4E:
C D 0 - - - 0x000F5E 00:8F4E: A5 1A     LDA ram_frm_cnt
C - - - - - 0x000F60 00:8F50: 29 03     AND #$03
C - - - - - 0x000F62 00:8F52: A8        TAY
C - - - - - 0x000F63 00:8F53: F0 0C     BEQ bra_8F61_00
C - - - - - 0x000F65 00:8F55: 88        DEY
C - - - - - 0x000F66 00:8F56: F0 0C     BEQ bra_8F64_01
C - - - - - 0x000F68 00:8F58: 88        DEY
C - - - - - 0x000F69 00:8F59: F0 0C     BEQ bra_8F67_02
; 03
C - - - - - 0x000F6B 00:8F5B: 20 61 8E  JSR sub_8E61_display_subweapon
C - - - - - 0x000F6E 00:8F5E: 4C 97 8C  JMP loc_8C97_print_hearts_amount
bra_8F61_00:
C - - - - - 0x000F71 00:8F61: 4C A6 8C  JMP loc_8CA6_print_hp_amount
bra_8F64_01:
C - - - - - 0x000F74 00:8F64: 4C 21 8D  JMP loc_8D21_print_timer_amount
bra_8F67_02:
C - - - - - 0x000F77 00:8F67: 4C 3B 8D  JMP loc_8D3B_print_score_amount



sub_8F6A_clear_expansion_memory:
C - - - - - 0x000F7A 00:8F6A: A9 00     LDA #$00
C - - - - - 0x000F7C 00:8F6C: A8        TAY ; 00
bra_8F6D_loop:
; 5C00-5CBF
C - - - - - 0x000F7D 00:8F6D: 99 00 5C  STA $5C00,Y
C - - - - - 0x000F80 00:8F70: C8        INY
C - - - - - 0x000F81 00:8F71: C0 C0     CPY #$C0
C - - - - - 0x000F83 00:8F73: D0 F8     BNE bra_8F6D_loop
C - - - - - 0x000F85 00:8F75: A0 00     LDY #$00
bra_8F77_loop:
; 5FC0-5FCF
C - - - - - 0x000F87 00:8F77: 99 C0 5F  STA $5FC0,Y
C - - - - - 0x000F8A 00:8F7A: C8        INY
C - - - - - 0x000F8B 00:8F7B: C0 10     CPY #$10
C - - - - - 0x000F8D 00:8F7D: D0 F8     BNE bra_8F77_loop
C - - - - - 0x000F8F 00:8F7F: 60        RTS



sub_0x000F90:
C - - - - - 0x000F90 00:8F80: 20 7F 90  JSR sub_907F
C - - - - - 0x000F93 00:8F83: A9 00     LDA #$00
C - - - - - 0x000F95 00:8F85: 85 36     STA ram_score_0000xx
C - - - - - 0x000F97 00:8F87: 85 37     STA ram_score_00xx00
C - - - - - 0x000F99 00:8F89: 85 38     STA ram_score_xx0000
C - - - - - 0x000F9B 00:8F8B: A4 2E     LDY ram_002E
C - - - - - 0x000F9D 00:8F8D: B9 9E 8F  LDA tbl_8F9E,Y
C - - - - - 0x000FA0 00:8F90: 29 0F     AND #$0F
C - - - - - 0x000FA2 00:8F92: 85 33     STA ram_blk_lo
C - - - - - 0x000FA4 00:8F94: B9 9E 8F  LDA tbl_8F9E,Y
; / 10
C - - - - - 0x000FA7 00:8F97: 4A        LSR
C - - - - - 0x000FA8 00:8F98: 4A        LSR
C - - - - - 0x000FA9 00:8F99: 4A        LSR
C - - - - - 0x000FAA 00:8F9A: 4A        LSR
C - - - - - 0x000FAB 00:8F9B: 85 32     STA ram_blk_hi
C - - - - - 0x000FAD 00:8F9D: 60        RTS



tbl_8F9E:
;                                              +----------------- blk_hi
;                                              |           +----- blk_lo
;                                              |           |
- D 0 - - - 0x000FAE 00:8F9E: 00        .byte $00 * $10 + $00   ; 00 
- D 0 - - - 0x000FAF 00:8F9F: 10        .byte $01 * $10 + $00   ; 01 
- - - - - - 0x000FB0 00:8FA0: 13        .byte $01 * $10 + $03   ; 02 
- - - - - - 0x000FB1 00:8FA1: 20        .byte $02 * $10 + $00   ; 03 
- - - - - - 0x000FB2 00:8FA2: 21        .byte $02 * $10 + $01   ; 04 
- D 0 - - - 0x000FB3 00:8FA3: 30        .byte $03 * $10 + $00   ; 05 
- D 0 - - - 0x000FB4 00:8FA4: 40        .byte $04 * $10 + $00   ; 06 
- - - - - - 0x000FB5 00:8FA5: 50        .byte $05 * $10 + $00   ; 07 
- - - - - - 0x000FB6 00:8FA6: 60        .byte $06 * $10 + $00   ; 08 
- - - - - - 0x000FB7 00:8FA7: 70        .byte $07 * $10 + $00   ; 09 
- - - - - - 0x000FB8 00:8FA8: 75        .byte $07 * $10 + $05   ; 0A 
- - - - - - 0x000FB9 00:8FA9: 80        .byte $08 * $10 + $00   ; 0B 
- - - - - - 0x000FBA 00:8FAA: 90        .byte $09 * $10 + $00   ; 0C 
- - - - - - 0x000FBB 00:8FAB: A0        .byte $0A * $10 + $00   ; 0D 
- - - - - - 0x000FBC 00:8FAC: B0        .byte $0B * $10 + $00   ; 0E 
- - - - - - 0x000FBD 00:8FAD: C0        .byte $0C * $10 + $00   ; 0F 
- - - - - - 0x000FBE 00:8FAE: D0        .byte $0D * $10 + $00   ; 10 
- - - - - - 0x000FBF 00:8FAF: E0        .byte $0E * $10 + $00   ; 11 



sub_0x000FC0:
C - - - - - 0x000FC0 00:8FB0: A5 32     LDA ram_blk_hi
; * 03
C - - - - - 0x000FC2 00:8FB2: 0A        ASL
; bzk optimize, value is too low, no need for CLC after ASL
C - - - - - 0x000FC3 00:8FB3: 18        CLC
C - - - - - 0x000FC4 00:8FB4: 65 32     ADC ram_blk_hi
C - - - - - 0x000FC6 00:8FB6: A8        TAY
C - - - - - 0x000FC7 00:8FB7: B9 D1 8F  LDA tbl_8FD1,Y
C - - - - - 0x000FCA 00:8FBA: C5 33     CMP ram_blk_lo
C - - - - - 0x000FCC 00:8FBC: B0 01     BCS bra_8FBF
- - - - - - 0x000FCE 00:8FBE: C8        INY
bra_8FBF:
C - - - - - 0x000FCF 00:8FBF: B9 D2 8F  LDA tbl_8FD1 + $01,Y
C - - - - - 0x000FD2 00:8FC2: C9 03     CMP #$03
C - - - - - 0x000FD4 00:8FC4: F0 03     BEQ bra_8FC9
bra_8FC6:
C - - - - - 0x000FD6 00:8FC6: 85 2E     STA ram_002E
C - - - - - 0x000FD8 00:8FC8: 60        RTS
bra_8FC9:
- - - - - - 0x000FD9 00:8FC9: A4 2F     LDY ram_002F_flag
- - - - - - 0x000FDB 00:8FCB: F0 F9     BEQ bra_8FC6
- - - - - - 0x000FDD 00:8FCD: A9 04     LDA #$04
- - - - - - 0x000FDF 00:8FCF: D0 F5     BNE bra_8FC6    ; jmp



tbl_8FD1:
; bzk optimize, delete placeholders
;                                              +--------------- compare with ram_blk_lo
;                                              |    +---------- 
;                                              |    |    +----- unused (placeholder)
;                                              |    |    |
- D 0 - - - 0x000FE1 00:8FD1: 10        .byte $10, $00, $00   ; 00 
- D 0 - - - 0x000FE4 00:8FD4: 02        .byte $02, $01, $02   ; 01 
- - - - - - 0x000FE7 00:8FD7: 10        .byte $10, $03, $04   ; 02 
- D 0 - - - 0x000FEA 00:8FDA: 10        .byte $10, $05, $05   ; 03 
- D 0 - - - 0x000FED 00:8FDD: 10        .byte $10, $06, $06   ; 04 
- - - - - - 0x000FF0 00:8FE0: 10        .byte $10, $07, $07   ; 05 
- - - - - - 0x000FF3 00:8FE3: 10        .byte $10, $08, $08   ; 06 
- - - - - - 0x000FF6 00:8FE6: 04        .byte $04, $09, $0A   ; 07 
- - - - - - 0x000FF9 00:8FE9: 10        .byte $10, $0B, $0B   ; 08 
- - - - - - 0x000FFC 00:8FEC: 10        .byte $10, $0C, $0C   ; 09 
- - - - - - 0x000FFF 00:8FEF: 10        .byte $10, $0D, $0D   ; 0A 
- D 0 - - - 0x001002 00:8FF2: 10        .byte $10, $0E, $0E   ; 0B 
- - - - - - 0x001005 00:8FF5: 10        .byte $10, $0F, $0F   ; 0C 
- - - - - - 0x001008 00:8FF8: 10        .byte $10, $10, $10   ; 0D 
- - - - - - 0x00100B 00:8FFB: 10        .byte $10, $11, $11   ; 0E 



sub_8FFE_check_for_special_name:
; out
    ; C = 
        ; 0 = no match
        ; 1 = match
    ; Y = match id
C - - - - - 0x00100E 00:8FFE: A0 00     LDY #$00
C - - - - - 0x001010 00:9000: 20 31 90  JSR sub_9031_check_name
C - - - - - 0x001013 00:9003: B0 29     BCS bra_902E_10_lives
sub_0x001015_check_for_special_name:
C - - - - - 0x001015 00:9005: A0 02     LDY #$02
C - - - - - 0x001017 00:9007: 20 31 90  JSR sub_9031_check_name
C - - - - - 0x00101A 00:900A: B0 1F     BCS bra_902B_2nd_quest
C - - - - - 0x00101C 00:900C: A0 04     LDY #$04
C - - - - - 0x00101E 00:900E: 20 31 90  JSR sub_9031_check_name
C - - - - - 0x001021 00:9011: B0 0F     BCS bra_9022_Alucard
C - - - - - 0x001023 00:9013: A0 06     LDY #$06
C - - - - - 0x001025 00:9015: 20 31 90  JSR sub_9031_check_name
C - - - - - 0x001028 00:9018: B0 0B     BCS bra_9025_Grant
C - - - - - 0x00102A 00:901A: A0 08     LDY #$08
C - - - - - 0x00102C 00:901C: 20 31 90  JSR sub_9031_check_name
C - - - - - 0x00102F 00:901F: B0 07     BCS bra_9028_Sypha
C - - - - - 0x001031 00:9021: 60        RTS
bra_9022_Alucard:
C - - - - - 0x001032 00:9022: A0 03     LDY #$03
C - - - - - 0x001034 00:9024: 60        RTS
bra_9025_Grant:
C - - - - - 0x001035 00:9025: A0 04     LDY #$04
C - - - - - 0x001037 00:9027: 60        RTS
bra_9028_Sypha:
C - - - - - 0x001038 00:9028: A0 05     LDY #$05
C - - - - - 0x00103A 00:902A: 60        RTS
bra_902B_2nd_quest:
C - - - - - 0x00103B 00:902B: A0 02     LDY #$02
C - - - - - 0x00103D 00:902D: 60        RTS
bra_902E_10_lives:
C - - - - - 0x00103E 00:902E: A0 01     LDY #$01
C - - - - - 0x001040 00:9030: 60        RTS



sub_9031_check_name:
; in
    ; Y = name id
; out
    ; C
        ; 0 = no match
        ; 1 = match
C - - - - - 0x001041 00:9031: B9 4D 90  LDA tbl_904D_special_names,Y
C - - - - - 0x001044 00:9034: 85 08     STA ram_0008_t021_data
C - - - - - 0x001046 00:9036: B9 4E 90  LDA tbl_904D_special_names + $01,Y
C - - - - - 0x001049 00:9039: 85 09     STA ram_0008_t021_data + $01
C - - - - - 0x00104B 00:903B: A0 00     LDY #$00
bra_903D_loop:
C - - - - - 0x00104D 00:903D: B9 F8 07  LDA ram_name,Y
C - - - - - 0x001050 00:9040: D1 08     CMP (ram_0008_t021_data),Y
C - - - - - 0x001052 00:9042: D0 07     BNE bra_904B_no_match
C - - - - - 0x001054 00:9044: C8        INY
C - - - - - 0x001055 00:9045: C0 08     CPY #$08
C - - - - - 0x001057 00:9047: D0 F4     BNE bra_903D_loop
C - - - - - 0x001059 00:9049: 38        SEC
C - - - - - 0x00105A 00:904A: 60        RTS
bra_904B_no_match:
C - - - - - 0x00105B 00:904B: 18        CLC
C - - - - - 0x00105C 00:904C: 60        RTS



tbl_904D_special_names:
- D 0 - - - 0x00105D 00:904D: 57 90     .word off_9057_00
- D 0 - - - 0x00105F 00:904F: 5F 90     .word off_905F_02
- D 0 - - - 0x001061 00:9051: 67 90     .word off_9067_04
- D 0 - - - 0x001063 00:9053: 6F 90     .word off_906F_06
- D 0 - - - 0x001065 00:9055: 77 90     .word off_9077_08



off_9057_00:
; Starts the game with 10 lives
- D 0 - I - 0x001067 00:9057: 57        .byte $57, $54, $5B, $5F, $00, $5C, $54, $00   ; HELP ME



off_905F_02:
; Starts the Second Quest
- D 0 - I - 0x00106F 00:905F: 50        .byte $50, $5A, $50, $5C, $50, $00, $00, $00   ; AKAMA



off_9067_04:
; Starts the game with Alucard as your partner
- D 0 - I - 0x001077 00:9067: 5E        .byte $5E, $5A, $64, $53, $50, $00, $00, $00   ; OKUDA



off_906F_06:
; Starts the game with Grant as your partner
- D 0 - I - 0x00107F 00:906F: 64        .byte $64, $61, $50, $63, $50, $00, $00, $00   ; URATA



off_9077_08:
; Starts the game with Sypha as your partner
- D 0 - I - 0x001087 00:9077: 55        .byte $55, $64, $59, $58, $5C, $5E, $63, $5E   ; FUJIMOTO



sub_907F:
loc_0x00108F:
C D 0 - - - 0x00108F 00:907F: A9 B0     LDA #$B0
C - - - - - 0x001091 00:9081: 85 FF     STA ram_for_2000
C - - - - - 0x001093 00:9083: 20 CD 90  JSR sub_90CD_set_chr_banks
C - - - - - 0x001096 00:9086: 20 C0 90  JSR sub_90C0_set_default_hp_and_hearts
C - - - - - 0x001099 00:9089: A9 02     LDA #$02
C - - - - - 0x00109B 00:908B: 85 3E     STA ram_extra_life_score
C - - - - - 0x00109D 00:908D: 20 FE 8F  JSR sub_8FFE_check_for_special_name
C - - - - - 0x0010A0 00:9090: 90 25     BCC bra_90B7
; if there was a name match
C - - - - - 0x0010A2 00:9092: 88        DEY
C - - - - - 0x0010A3 00:9093: F0 27     BEQ bra_90BC_01_10_lives
C - - - - - 0x0010A5 00:9095: 88        DEY
C - - - - - 0x0010A6 00:9096: F0 1A     BEQ bra_90B2_02_2nd_quest
C - - - - - 0x0010A8 00:9098: A5 3A     LDA ram_partner
C - - - - - 0x0010AA 00:909A: C9 FF     CMP #$FF
C - - - - - 0x0010AC 00:909C: D0 19     BNE bra_90B7
C - - - - - 0x0010AE 00:909E: 88        DEY
C - - - - - 0x0010AF 00:909F: F0 0B     BEQ bra_90AC_03_Alucard
C - - - - - 0x0010B1 00:90A1: 88        DEY
C - - - - - 0x0010B2 00:90A2: F0 04     BEQ bra_90A8_04_Sypha
; 05
C - - - - - 0x0010B4 00:90A4: A9 02     LDA #con_player_Grant
C - - - - - 0x0010B6 00:90A6: D0 06     BNE bra_90AE_set_partner    ; jmp
bra_90A8_04_Sypha:
C - - - - - 0x0010B8 00:90A8: A9 01     LDA #con_player_Sypha
C - - - - - 0x0010BA 00:90AA: D0 02     BNE bra_90AE_set_partner    ; jmp
bra_90AC_03_Alucard:
C - - - - - 0x0010BC 00:90AC: A9 03     LDA #con_player_Alucard
bra_90AE_set_partner:
C - - - - - 0x0010BE 00:90AE: 85 3A     STA ram_partner
C - - - - - 0x0010C0 00:90B0: D0 05     BNE bra_90B7    ; jmp
bra_90B2_02_2nd_quest:
C - - - - - 0x0010C2 00:90B2: A9 01     LDA #$01
C - - - - - 0x0010C4 00:90B4: 8D F6 07  STA ram_quest
bra_90B7:
C - - - - - 0x0010C7 00:90B7: A9 02     LDA #$02
bra_90B9_set_lives:
C - - - - - 0x0010C9 00:90B9: 85 35     STA ram_lives
C - - - - - 0x0010CB 00:90BB: 60        RTS
bra_90BC_01_10_lives:
C - - - - - 0x0010CC 00:90BC: A9 10     LDA #$10    ; "HELP ME" name
C - - - - - 0x0010CE 00:90BE: D0 F9     BNE bra_90B9_set_lives    ; jmp



sub_90C0_set_default_hp_and_hearts:
loc_90C0_set_default_hp_and_hearts:
C D 0 - - - 0x0010D0 00:90C0: A9 05     LDA #$05
C - - - - - 0x0010D2 00:90C2: 85 84     STA ram_hearts
C - - - - - 0x0010D4 00:90C4: A9 40     LDA #$40
C - - - - - 0x0010D6 00:90C6: 85 3C     STA ram_hp_player
sub_90C8_set_boss_hp:
C - - - - - 0x0010D8 00:90C8: A9 40     LDA #$40
C - - - - - 0x0010DA 00:90CA: 85 3D     STA ram_hp_boss
C - - - - - 0x0010DC 00:90CC: 60        RTS



sub_90CD_set_chr_banks:
ofs_041_0x0010DD_06_set_chr_banks:
C - - - - - 0x0010DD 00:90CD: A9 40     LDA #con__chr_bank + $40
C - - - - - 0x0010DF 00:90CF: 85 4A     STA ram_chr_bank_5124_5128
C - - - - - 0x0010E1 00:90D1: A9 43     LDA #con__chr_bank + $43
C - - - - - 0x0010E3 00:90D3: 85 4D     STA ram_chr_bank_5127_512B
C - - - - - 0x0010E5 00:90D5: 60        RTS



sub_90D6:
sub_0x0010E6:
C - - - - - 0x0010E6 00:90D6: A9 00     LDA #$00
C - - - - - 0x0010E8 00:90D8: 85 AB     STA ram_stopwatch_flag
C - - - - - 0x0010EA 00:90DA: 85 AC     STA ram_stopwatch_timer
C - - - - - 0x0010EC 00:90DC: 8D C9 06  STA ram_06C9_se_flag
C - - - - - 0x0010EF 00:90DF: 85 B3     STA ram_00B3_flag
C - - - - - 0x0010F1 00:90E1: 60        RTS



sub_0x0010F2:
C - - - - - 0x0010F2 00:90E2: A9 B0     LDA #$B0
C - - - - - 0x0010F4 00:90E4: 85 FF     STA ram_for_2000
C - - - - - 0x0010F6 00:90E6: 20 66 E6  JSR sub_0x03E676
C - - - - - 0x0010F9 00:90E9: 20 C8 90  JSR sub_90C8_set_boss_hp
C - - - - - 0x0010FC 00:90EC: A9 00     LDA #$00
C - - - - - 0x0010FE 00:90EE: 8D 00 04  STA ram_plr_anim_id
C - - - - - 0x001101 00:90F1: 8D 18 04  STA ram_obj_anim_id + $18
C - - - - - 0x001104 00:90F4: 8D 19 04  STA ram_obj_anim_id + $19
C - - - - - 0x001107 00:90F7: 85 74     STA ram_0074_flag
C - - - - - 0x001109 00:90F9: 85 75     STA ram_0075
C - - - - - 0x00110B 00:90FB: 8D 65 05  STA ram_plr_state   ; con_plr_state_00
C - - - - - 0x00110E 00:90FE: 20 D6 90  JSR sub_90D6
C - - - - - 0x001111 00:9101: 20 62 E8  JSR sub_0x03E872_clear_00F0_00F7
C - - - - - 0x001114 00:9104: 4C 30 91  JMP loc_9130



sub_0x001117:
C - - - - - 0x001117 00:9107: A9 00     LDA #$00
C - - - - - 0x001119 00:9109: 8D 20 05  STA ram_plr_spd_Y_hi
C - - - - - 0x00111C 00:910C: 8D 37 05  STA ram_plr_spd_Y_lo
C - - - - - 0x00111F 00:910F: 20 D6 90  JSR sub_90D6
C - - - - - 0x001122 00:9112: 20 62 E8  JSR sub_0x03E872_clear_00F0_00F7
; bzk dangerous branch, better use JMP
C - - - - - 0x001125 00:9115: B0 19     BCS bra_9130    ; jmp



sub_0x001127:
C - - - - - 0x001127 00:9117: AD 07 01  LDA ram_0107_se
C - - - - - 0x00112A 00:911A: C9 5F     CMP #$5F
C - - - - - 0x00112C 00:911C: D0 04     BNE bra_9122
- - - - - - 0x00112E 00:911E: A9 00     LDA #$00
- - - - - - 0x001130 00:9120: 85 74     STA ram_0074_flag
bra_9122:
C - - - - - 0x001132 00:9122: A9 B0     LDA #$B0
C - - - - - 0x001134 00:9124: 85 FF     STA ram_for_2000
C - - - - - 0x001136 00:9126: 20 66 E6  JSR sub_0x03E676
C - - - - - 0x001139 00:9129: A9 00     LDA #$00
C - - - - - 0x00113B 00:912B: 85 75     STA ram_0075
C - - - - - 0x00113D 00:912D: 20 7F 91  JSR sub_917F_clear_06E0_076F
loc_9130:
bra_9130:
C D 0 - - - 0x001140 00:9130: 20 CD 90  JSR sub_90CD_set_chr_banks
C - - - - - 0x001143 00:9133: A9 B0     LDA #$B0
C - - - - - 0x001145 00:9135: 85 FF     STA ram_for_2000
C - - - - - 0x001147 00:9137: AD 65 05  LDA ram_plr_state
C - - - - - 0x00114A 00:913A: 29 7F     AND #con_plr_state_80 ^ $FF
C - - - - - 0x00114C 00:913C: 8D 65 05  STA ram_plr_state
C - - - - - 0x00114F 00:913F: A9 00     LDA #$00
C - - - - - 0x001151 00:9141: 85 78     STA ram_0078_flag
C - - - - - 0x001153 00:9143: 85 80     STA ram_invinc_timer
C - - - - - 0x001155 00:9145: 85 B0     STA ram_00B0_oam_flag
C - - - - - 0x001157 00:9147: 85 B2     STA ram_00B2
C - - - - - 0x001159 00:9149: 85 AD     STA ram_00AD_timer
C - - - - - 0x00115B 00:914B: 85 2C     STA ram_002C_flag
C - - - - - 0x00115D 00:914D: 85 C0     STA ram_00C0
C - - - - - 0x00115F 00:914F: 85 C2     STA ram_00C2
C - - - - - 0x001161 00:9151: 85 C8     STA ram_00C8
C - - - - - 0x001163 00:9153: 85 C1     STA ram_00C1
C - - - - - 0x001165 00:9155: 85 C4     STA ram_00C4
C - - - - - 0x001167 00:9157: 85 C5     STA ram_00C5
C - - - - - 0x001169 00:9159: 85 CC     STA ram_00CC
C - - - - - 0x00116B 00:915B: 85 CD     STA ram_00CD
C - - - - - 0x00116D 00:915D: 85 BA     STA ram_00BA
C - - - - - 0x00116F 00:915F: 20 F7 E7  JSR sub_0x03E807_clear_all_objects_data
C - - - - - 0x001172 00:9162: A9 00     LDA #$00
C - - - - - 0x001174 00:9164: 8D 17 04  STA ram_obj_anim_id + $17
C - - - - - 0x001177 00:9167: 8D 1A 04  STA ram_obj_anim_id + $1A
C - - - - - 0x00117A 00:916A: 8D 1B 04  STA ram_obj_anim_id + $1B
; con_obj_flag_00
C - - - - - 0x00117D 00:916D: 8D 8A 04  STA ram_obj_flags + $1A
C - - - - - 0x001180 00:9170: 8D 8B 04  STA ram_obj_flags + $1B
C - - - - - 0x001183 00:9173: A2 00     LDX #$00
C - - - - - 0x001185 00:9175: 8A        TXA ; 00
bra_9176_loop:  ; 0780-07C2
C - - - - - 0x001186 00:9176: 9D 80 07  STA ram_0780,X
C - - - - - 0x001189 00:9179: E8        INX
C - - - - - 0x00118A 00:917A: E0 43     CPX #$43
C - - - - - 0x00118C 00:917C: D0 F8     BNE bra_9176_loop
C - - - - - 0x00118E 00:917E: 60        RTS



sub_917F_clear_06E0_076F:
C - - - - - 0x00118F 00:917F: A9 00     LDA #$00
C - - - - - 0x001191 00:9181: AA        TAX ; 00
bra_9182_loop:
C - - - - - 0x001192 00:9182: 9D E0 06  STA ram_06E0,X
C - - - - - 0x001195 00:9185: E8        INX
C - - - - - 0x001196 00:9186: E0 90     CPX #$90
C - - - - - 0x001198 00:9188: D0 F8     BNE bra_9182_loop
C - - - - - 0x00119A 00:918A: 60        RTS



sub_0x00119B:
C - - - - - 0x00119B 00:918B: A9 B0     LDA #$B0
C - - - - - 0x00119D 00:918D: 85 FF     STA ram_for_2000
C - - - - - 0x00119F 00:918F: 20 66 E6  JSR sub_0x03E676
C - - - - - 0x0011A2 00:9192: 20 CD 90  JSR sub_90CD_set_chr_banks
C - - - - - 0x0011A5 00:9195: 20 CA E5  JSR sub_0x03E5DA
C - - - - - 0x0011A8 00:9198: AD 4E 05  LDA ram_plr_id
C - - - - - 0x0011AB 00:919B: 48        PHA
C - - - - - 0x0011AC 00:919C: A5 BD     LDA ram_copy_hp_boss
C - - - - - 0x0011AE 00:919E: 48        PHA
C - - - - - 0x0011AF 00:919F: A5 BE     LDA ram_00BE
C - - - - - 0x0011B1 00:91A1: 48        PHA
C - - - - - 0x0011B2 00:91A2: 20 28 E8  JSR sub_0x03E838_clear_memory
C - - - - - 0x0011B5 00:91A5: 68        PLA
C - - - - - 0x0011B6 00:91A6: 85 BE     STA ram_00BE
C - - - - - 0x0011B8 00:91A8: 68        PLA
C - - - - - 0x0011B9 00:91A9: 85 BD     STA ram_copy_hp_boss
C - - - - - 0x0011BB 00:91AB: 68        PLA
C - - - - - 0x0011BC 00:91AC: 8D 4E 05  STA ram_plr_id
C - - - - - 0x0011BF 00:91AF: 4C C0 90  JMP loc_90C0_set_default_hp_and_hearts



loc_0x0011C2:
C D 0 - - - 0x0011C2 00:91B2: A9 00     LDA #$00
C - - - - - 0x0011C4 00:91B4: 85 80     STA ram_invinc_timer
C - - - - - 0x0011C6 00:91B6: 8D 70 04  STA ram_plr_flags   ; con_obj_flag_00
C - - - - - 0x0011C9 00:91B9: C6 30     DEC ram_screen_timer_lo
C - - - - - 0x0011CB 00:91BB: D0 10     BNE bra_91CD
C - - - - - 0x0011CD 00:91BD: A5 9F     LDA ram_009F_copy_002A_script
C - - - - - 0x0011CF 00:91BF: 85 2A     STA ram_002A_script
C - - - - - 0x0011D1 00:91C1: AD 65 05  LDA ram_plr_state
C - - - - - 0x0011D4 00:91C4: 29 7F     AND #con_plr_state_80 ^ $FF
C - - - - - 0x0011D6 00:91C6: 8D 65 05  STA ram_plr_state
C - - - - - 0x0011D9 00:91C9: A9 00     LDA #$00
C - - - - - 0x0011DB 00:91CB: F0 04     BEQ bra_91D1    ; jmp
bra_91CD:
C - - - - - 0x0011DD 00:91CD: A5 1A     LDA ram_frm_cnt
C - - - - - 0x0011DF 00:91CF: 29 03     AND #$03
bra_91D1:
C - - - - - 0x0011E1 00:91D1: 8D 54 04  STA ram_0454_plr
C - - - - - 0x0011E4 00:91D4: 60        RTS



sub_0x0011E5:
C - - - - - 0x0011E5 00:91D5: 20 DD 91  JSR sub_91DD
C - - - - - 0x0011E8 00:91D8: A9 00     LDA #con_002A_00
C - - - - - 0x0011EA 00:91DA: 85 2A     STA ram_002A_script
C - - - - - 0x0011EC 00:91DC: 60        RTS



sub_91DD:
C - - - - - 0x0011ED 00:91DD: 20 95 E7  JSR sub_0x03E7A5
C - - - - - 0x0011F0 00:91E0: A5 32     LDA ram_blk_hi
C - - - - - 0x0011F2 00:91E2: C9 03     CMP #$03
C - - - - - 0x0011F4 00:91E4: F0 23     BEQ bra_9209_03
C - - - - - 0x0011F6 00:91E6: C9 0A     CMP #$0A
C - - - - - 0x0011F8 00:91E8: F0 17     BEQ bra_9201_0A
C - - - - - 0x0011FA 00:91EA: C9 0E     CMP #$0E
C - - - - - 0x0011FC 00:91EC: F0 0D     BEQ bra_91FB_0E
bra_91EE_refill:
C - - - - - 0x0011FE 00:91EE: 20 C0 90  JSR sub_90C0_set_default_hp_and_hearts
loc_91F1:
C D 0 - - - 0x001201 00:91F1: A9 00     LDA #$00
C - - - - - 0x001203 00:91F3: 8D 65 05  STA ram_plr_state   ; con_plr_state_00
C - - - - - 0x001206 00:91F6: 85 75     STA ram_0075
C - - - - - 0x001208 00:91F8: 85 74     STA ram_0074_flag
C - - - - - 0x00120A 00:91FA: 60        RTS
bra_91FB_0E:
C - - - - - 0x00120B 00:91FB: A5 33     LDA ram_blk_lo
C - - - - - 0x00120D 00:91FD: F0 EF     BEQ bra_91EE_refill
C - - - - - 0x00120F 00:91FF: D0 0E     BNE bra_920F    ; jmp
bra_9201_0A:
C - - - - - 0x001211 00:9201: A5 33     LDA ram_blk_lo
C - - - - - 0x001213 00:9203: C9 04     CMP #$04
C - - - - - 0x001215 00:9205: F0 08     BEQ bra_920F
C - - - - - 0x001217 00:9207: D0 E5     BNE bra_91EE_refill    ; jmp
bra_9209_03:
C - - - - - 0x001219 00:9209: A5 33     LDA ram_blk_lo
C - - - - - 0x00121B 00:920B: C9 03     CMP #$03
C - - - - - 0x00121D 00:920D: D0 DF     BNE bra_91EE_refill
bra_920F:
C - - - - - 0x00121F 00:920F: 20 C8 90  JSR sub_90C8_set_boss_hp
C - - - - - 0x001222 00:9212: 4C F1 91  JMP loc_91F1



loc_0x001225:
C D 0 - - - 0x001225 00:9215: A0 00     LDY #$00
bra_9217_loop:
C - - - - - 0x001227 00:9217: B9 44 92  LDA tbl_9244,Y
C - - - - - 0x00122A 00:921A: C9 FF     CMP #$FF
C - - - - - 0x00122C 00:921C: F0 12     BEQ bra_9230_FF
C - - - - - 0x00122E 00:921E: C5 32     CMP ram_blk_hi
C - - - - - 0x001230 00:9220: D0 1C     BNE bra_923E_check_failed
C - - - - - 0x001232 00:9222: A5 33     LDA ram_blk_lo
C - - - - - 0x001234 00:9224: D9 45 92  CMP tbl_9244 + $01,Y
C - - - - - 0x001237 00:9227: D0 15     BNE bra_923E_check_failed
C - - - - - 0x001239 00:9229: A5 34     LDA ram_blk_fr
C - - - - - 0x00123B 00:922B: D9 46 92  CMP tbl_9244 + $02,Y
C - - - - - 0x00123E 00:922E: D0 0E     BNE bra_923E_check_failed
; if perfect match
bra_9230_FF:
C - - - - - 0x001240 00:9230: B9 47 92  LDA tbl_9244 + $03,Y
C - - - - - 0x001243 00:9233: 85 A4     STA ram_00A4_data_index
C - - - - - 0x001245 00:9235: A9 00     LDA #$00
C - - - - - 0x001247 00:9237: 85 6B     STA ram_006B_subscript
C - - - - - 0x001249 00:9239: A9 17     LDA #con_002A_17
C - - - - - 0x00124B 00:923B: 85 2A     STA ram_002A_script
C - - - - - 0x00124D 00:923D: 60        RTS
bra_923E_check_failed:
C - - - - - 0x00124E 00:923E: C8        INY
C - - - - - 0x00124F 00:923F: C8        INY
C - - - - - 0x001250 00:9240: C8        INY
C - - - - - 0x001251 00:9241: C8        INY
C - - - - - 0x001252 00:9242: D0 D3     BNE bra_9217_loop    ; jmp



tbl_9244:
;                                              +-------------------- compare with ram_blk_hi
;                                              |    +--------------- compare with ram_blk_lo
;                                              |    |    +---------- compare with ram_blk_fr
;                                              |    |    |    +----- ram_00A4_data_index
;                                              |    |    |    |
- D 0 - - - 0x001254 00:9244: 00        .byte $00, $00, $00, $00   ; 
- D 0 - - - 0x001258 00:9248: 01        .byte $01, $02, $02, $01   ; 
- D 0 - - - 0x00125C 00:924C: 01        .byte $01, $05, $00, $02   ; 
- D 0 - - - 0x001260 00:9250: 02        .byte $02, $04, $00, $03   ; 
- D 0 - - - 0x001264 00:9254: 03        .byte $03, $04, $01, $04   ; 
- D 0 - - - 0x001268 00:9258: 04        .byte $04, $02, $02, $05   ; 
- D 0 - - - 0x00126C 00:925C: 05        .byte $05, $03, $00, $06   ; 
- D 0 - - - 0x001270 00:9260: 06        .byte $06, $02, $00, $07   ; 
- D 0 - - - 0x001274 00:9264: 07        .byte $07, $04, $01, $08   ; 
- D 0 - - - 0x001278 00:9268: 07        .byte $07, $06, $00, $09   ; 
- D 0 - - - 0x00127C 00:926C: 08        .byte $08, $04, $00, $0A   ; 
- D 0 - - - 0x001280 00:9270: 09        .byte $09, $01, $02, $0B   ; 
- D 0 - - - 0x001284 00:9274: 0A        .byte $0A, $06, $02, $0C   ; 
- D 0 - - - 0x001288 00:9278: 0B        .byte $0B, $02, $00, $0D   ; 
- D 0 - - - 0x00128C 00:927C: 0C        .byte $0C, $02, $00, $0E   ; 
- D 0 - - - 0x001290 00:9280: 0D        .byte $0D, $03, $01, $0F   ; 
; bzk garbage? normally end token should never be read
- - - - - - 0x001294 00:9284: FF        .byte $FF   ; end token


; bzk garbage
- - - - - - 0x001295 00:9285: 00        .byte $00   ; 
- - - - - - 0x001296 00:9286: 00        .byte $00   ; 
- - - - - - 0x001297 00:9287: 00        .byte $00   ; 



loc_0x001298:
C D 0 - - - 0x001298 00:9288: A5 6B     LDA ram_006B_subscript
C - - - - - 0x00129A 00:928A: 20 6D E8  JSR sub_0x03E87D_jump_to_pointers_after_JSR_A
- D 0 - I - 0x00129D 00:928D: 99 92     .word ofs_032_9299_00
- D 0 - I - 0x00129F 00:928F: FA 92     .word ofs_032_92FA_01
- D 0 - I - 0x0012A1 00:9291: 65 93     .word ofs_032_9365_02
- D 0 - I - 0x0012A3 00:9293: 0C 94     .word ofs_032_940C_03
- D 0 - I - 0x0012A5 00:9295: 2C 94     .word ofs_032_942C_04
- D 0 - I - 0x0012A7 00:9297: 42 94     .word ofs_032_9442_05



ofs_032_9299_00:
C - - J - - 0x0012A9 00:9299: 20 A6 8C  JSR sub_8CA6_print_hp_amount
C - - - - - 0x0012AC 00:929C: 20 F7 E7  JSR sub_0x03E807_clear_all_objects_data
C - - - - - 0x0012AF 00:929F: A9 00     LDA #$00
C - - - - - 0x0012B1 00:92A1: 8D 17 04  STA ram_obj_anim_id + $17
C - - - - - 0x0012B4 00:92A4: A0 00     LDY #$00
bra_92A6_loop:
C - - - - - 0x0012B6 00:92A6: B9 D5 92  LDA tbl_92D5,Y
C - - - - - 0x0012B9 00:92A9: C9 FF     CMP #$FF
C - - - - - 0x0012BB 00:92AB: F0 08     BEQ bra_92B5_FF
C - - - - - 0x0012BD 00:92AD: C5 32     CMP ram_blk_hi
C - - - - - 0x0012BF 00:92AF: F0 06     BEQ bra_92B7
C - - - - - 0x0012C1 00:92B1: C8        INY
C - - - - - 0x0012C2 00:92B2: C8        INY
C - - - - - 0x0012C3 00:92B3: D0 F1     BNE bra_92A6_loop    ; jmp
bra_92B5_FF:
- - - - - - 0x0012C5 00:92B5: A0 00     LDY #$00
bra_92B7:
C - - - - - 0x0012C7 00:92B7: B9 D6 92  LDA tbl_92D5 + $01,Y
; * 04
C - - - - - 0x0012CA 00:92BA: 0A        ASL
C - - - - - 0x0012CB 00:92BB: 0A        ASL
C - - - - - 0x0012CC 00:92BC: A8        TAY
C - - - - - 0x0012CD 00:92BD: B9 E2 92  LDA tbl_92E2,Y
C - - - - - 0x0012D0 00:92C0: 8D A8 04  STA ram_plr_facing
C - - - - - 0x0012D3 00:92C3: 84 C6     STY ram_00C6
C - - - - - 0x0012D5 00:92C5: 20 CE E5  JSR sub_0x03E5DE
C - - - - - 0x0012D8 00:92C8: A9 00     LDA #con_obj_flag_00
C - - - - - 0x0012DA 00:92CA: 8D 70 04  STA ram_plr_flags
C - - - - - 0x0012DD 00:92CD: A9 00     LDA #$00
C - - - - - 0x0012DF 00:92CF: 20 57 EF  JSR sub_0x03EF67_prepare_player_animation
C - - - - - 0x0012E2 00:92D2: E6 6B     INC ram_006B_subscript
C - - - - - 0x0012E4 00:92D4: 60        RTS



tbl_92D5:
;                                              +---------- compare with ram_blk_hi
;                                              |    +----- index for 0x0012F2
;                                              |    |
- D 0 - - - 0x0012E5 00:92D5: 01        .byte $01, $00   ; 
- D 0 - - - 0x0012E7 00:92D7: 02        .byte $02, $01   ; 
- D 0 - - - 0x0012E9 00:92D9: 07        .byte $07, $02   ; 
- D 0 - - - 0x0012EB 00:92DB: 03        .byte $03, $03   ; 
- D 0 - - - 0x0012ED 00:92DD: 0A        .byte $0A, $04   ; 
- D 0 - - - 0x0012EF 00:92DF: 0E        .byte $0E, $05   ; 
- - - - - - 0x0012F1 00:92E1: FF        .byte $FF   ; end token



tbl_92E2:
; 00 
- D 0 - - - 0x0012F2 00:92E2: 01        .byte $01   ; facing
- D 0 - - - 0x0012F3 00:92E3: 04        .byte con_0018_gameplay   ; 
- D 0 - - - 0x0012F4 00:92E4: 1E        .byte con_002A_1E   ; 
- D 0 - - - 0x0012F5 00:92E5: 00        .byte $00   ; ram_blk_lo
; 01 
- D 0 - - - 0x0012F6 00:92E6: 00        .byte $00   ; 
- D 0 - - - 0x0012F7 00:92E7: 08        .byte con_0018_08   ; 
- D 0 - - - 0x0012F8 00:92E8: 00        .byte con_002A_00   ; 
- D 0 - - - 0x0012F9 00:92E9: 00        .byte $00   ; 
; 02 
- D 0 - - - 0x0012FA 00:92EA: 01        .byte $01   ; 
- D 0 - - - 0x0012FB 00:92EB: 08        .byte con_0018_08   ; 
- D 0 - - - 0x0012FC 00:92EC: 00        .byte con_002A_00   ; 
- D 0 - - - 0x0012FD 00:92ED: 00        .byte $00   ; 
; 03 
- D 0 - - - 0x0012FE 00:92EE: 00        .byte $00   ; 
- D 0 - - - 0x0012FF 00:92EF: 04        .byte con_0018_gameplay   ; 
- D 0 - - - 0x001300 00:92F0: 1F        .byte con_002A_1F   ; 
- D 0 - - - 0x001301 00:92F1: 01        .byte $01   ; 
; 04 
- D 0 - - - 0x001302 00:92F2: 00        .byte $00   ; 
- D 0 - - - 0x001303 00:92F3: 04        .byte con_0018_gameplay   ; 
- D 0 - - - 0x001304 00:92F4: 1F        .byte con_002A_1F   ; 
- D 0 - - - 0x001305 00:92F5: 01        .byte $01   ; 
; 05 
- D 0 - - - 0x001306 00:92F6: 01        .byte $01   ; 
- D 0 - - - 0x001307 00:92F7: 04        .byte con_0018_gameplay   ; 
- D 0 - - - 0x001308 00:92F8: 1F        .byte con_002A_1F   ; 
- D 0 - - - 0x001309 00:92F9: 01        .byte $01   ; 



ofs_032_92FA_01:
C - - J - - 0x00130A 00:92FA: AD 38 04  LDA ram_plr_pos_X_hi
C - - - - - 0x00130D 00:92FD: AC A8 04  LDY ram_plr_facing
C - - - - - 0x001310 00:9300: F0 06     BEQ bra_9308_facing_right
C - - - - - 0x001312 00:9302: C9 18     CMP #$18
C - - - - - 0x001314 00:9304: B0 0F     BCS bra_9315
C - - - - - 0x001316 00:9306: 90 04     BCC bra_930C    ; jmp
bra_9308_facing_right:
C - - - - - 0x001318 00:9308: C9 E8     CMP #$E8
C - - - - - 0x00131A 00:930A: 90 09     BCC bra_9315
bra_930C:
C - - - - - 0x00131C 00:930C: A5 32     LDA ram_blk_hi
C - - - - - 0x00131E 00:930E: C9 01     CMP #$01
C - - - - - 0x001320 00:9310: F0 09     BEQ bra_931B
C - - - - - 0x001322 00:9312: E6 6B     INC ram_006B_subscript
C - - - - - 0x001324 00:9314: 60        RTS
bra_9315:
C - - - - - 0x001325 00:9315: 20 31 93  JSR sub_9331
C - - - - - 0x001328 00:9318: 4C 73 EF  JMP loc_0x03EF83
bra_931B:
C - - - - - 0x00132B 00:931B: A9 11     LDA #con_002A_11
C - - - - - 0x00132D 00:931D: 85 2A     STA ram_002A_script
C - - - - - 0x00132F 00:931F: A9 00     LDA #$00
C - - - - - 0x001331 00:9321: 8D EC 07  STA ram_07EC
C - - - - - 0x001334 00:9324: 8D F3 07  STA ram_07F3
C - - - - - 0x001337 00:9327: A9 00     LDA #$00
C - - - - - 0x001339 00:9329: 8D ED 07  STA ram_07ED
C - - - - - 0x00133C 00:932C: A9 63     LDA #con_music_stage_complete
C - - - - - 0x00133E 00:932E: 4C 5F E2  JMP loc_0x03E26F_play_sound



sub_9331:
C - - - - - 0x001341 00:9331: A5 1A     LDA ram_frm_cnt
C - - - - - 0x001343 00:9333: 29 0F     AND #$0F
C - - - - - 0x001345 00:9335: D0 05     BNE bra_933C
C - - - - - 0x001347 00:9337: A9 09     LDA #con_sound_step
C - - - - - 0x001349 00:9339: 20 5F E2  JSR sub_0x03E26F_play_sound
bra_933C:
C - - - - - 0x00134C 00:933C: AD A8 04  LDA ram_plr_facing
C - - - - - 0x00134F 00:933F: F0 12     BEQ bra_9353_facing_right
C - - - - - 0x001351 00:9341: AD C4 04  LDA ram_plr_pos_X_lo
C - - - - - 0x001354 00:9344: 38        SEC
C - - - - - 0x001355 00:9345: E9 C0     SBC #< $00C0
C - - - - - 0x001357 00:9347: 8D C4 04  STA ram_plr_pos_X_lo
C - - - - - 0x00135A 00:934A: AD 38 04  LDA ram_plr_pos_X_hi
C - - - - - 0x00135D 00:934D: E9 00     SBC #> $00C0
C - - - - - 0x00135F 00:934F: 8D 38 04  STA ram_plr_pos_X_hi
C - - - - - 0x001362 00:9352: 60        RTS
bra_9353_facing_right:
C - - - - - 0x001363 00:9353: AD C4 04  LDA ram_plr_pos_X_lo
C - - - - - 0x001366 00:9356: 18        CLC
C - - - - - 0x001367 00:9357: 69 C0     ADC #< $00C0
C - - - - - 0x001369 00:9359: 8D C4 04  STA ram_plr_pos_X_lo
C - - - - - 0x00136C 00:935C: AD 38 04  LDA ram_plr_pos_X_hi
C - - - - - 0x00136F 00:935F: 69 00     ADC #> $00C0
C - - - - - 0x001371 00:9361: 8D 38 04  STA ram_plr_pos_X_hi
C - - - - - 0x001374 00:9364: 60        RTS



ofs_032_9365_02:
C - - J - - 0x001375 00:9365: E6 6B     INC ram_006B_subscript
C - - - - - 0x001377 00:9367: A9 0C     LDA #con_sound_door
C - - - - - 0x001379 00:9369: 20 5F E2  JSR sub_0x03E26F_play_sound
C - - - - - 0x00137C 00:936C: A9 3C     LDA #$3C
C - - - - - 0x00137E 00:936E: 85 30     STA ram_screen_timer_lo
C - - - - - 0x001380 00:9370: A9 0C     LDA #con_obj_type_0C
C - - - - - 0x001382 00:9372: A0 00     LDY #$00
C - - - - - 0x001384 00:9374: A2 13     LDX #$13
C - - - - - 0x001386 00:9376: 20 5C EF  JSR sub_0x03EF6C_prepare_animation
C - - - - - 0x001389 00:9379: A9 00     LDA #$00
C - - - - - 0x00138B 00:937B: 9D 00 04  STA ram_obj_anim_id,X
C - - - - - 0x00138E 00:937E: 9D 54 04  STA ram_0454_obj,X
C - - - - - 0x001391 00:9381: AD 1C 04  LDA ram_plr_pos_Y_hi
C - - - - - 0x001394 00:9384: 69 08     ADC #$08
C - - - - - 0x001396 00:9386: 29 F0     AND #$F0
C - - - - - 0x001398 00:9388: 9D 1C 04  STA ram_obj_pos_Y_hi,X
C - - - - - 0x00139B 00:938B: AD A8 04  LDA ram_plr_facing
C - - - - - 0x00139E 00:938E: 0A        ASL
C - - - - - 0x00139F 00:938F: A8        TAY
C - - - - - 0x0013A0 00:9390: B9 08 94  LDA tbl_9408,Y
C - - - - - 0x0013A3 00:9393: 9D 38 04  STA ram_obj_pos_X_hi,X
C - - - - - 0x0013A6 00:9396: B9 09 94  LDA tbl_9408 + $01,Y
; bzk optimize, write value from 04A8 instead of from the table
C - - - - - 0x0013A9 00:9399: 9D A8 04  STA ram_obj_facing,X
C - - - - - 0x0013AC 00:939C: A5 32     LDA ram_blk_hi
C - - - - - 0x0013AE 00:939E: C9 01     CMP #$01
C - - - - - 0x0013B0 00:93A0: F0 56     BEQ bra_93F8
C - - - - - 0x0013B2 00:93A2: A9 00     LDA #$00
C - - - - - 0x0013B4 00:93A4: 85 62     STA ram_ppu_address_hi
C - - - - - 0x0013B6 00:93A6: AC 4E 05  LDY ram_plr_id
C - - - - - 0x0013B9 00:93A9: AD 1C 04  LDA ram_plr_pos_Y_hi
C - - - - - 0x0013BC 00:93AC: 38        SEC
C - - - - - 0x0013BD 00:93AD: F9 04 94  SBC tbl_9404,Y
C - - - - - 0x0013C0 00:93B0: 0A        ASL
C - - - - - 0x0013C1 00:93B1: 26 62     ROL ram_ppu_address_hi
C - - - - - 0x0013C3 00:93B3: 0A        ASL
C - - - - - 0x0013C4 00:93B4: 26 62     ROL ram_ppu_address_hi
C - - - - - 0x0013C6 00:93B6: 29 E0     AND #$E0
C - - - - - 0x0013C8 00:93B8: 85 61     STA ram_ppu_address_lo
C - - - - - 0x0013CA 00:93BA: AC A8 04  LDY ram_plr_facing
C - - - - - 0x0013CD 00:93BD: B9 02 94  LDA tbl_9402,Y
C - - - - - 0x0013D0 00:93C0: 18        CLC
C - - - - - 0x0013D1 00:93C1: 65 61     ADC ram_ppu_address_lo
C - - - - - 0x0013D3 00:93C3: 85 61     STA ram_ppu_address_lo
C - - - - - 0x0013D5 00:93C5: A5 75     LDA ram_0075
C - - - - - 0x0013D7 00:93C7: 29 01     AND #$01
C - - - - - 0x0013D9 00:93C9: 85 00     STA ram_0000_t093
C - - - - - 0x0013DB 00:93CB: A5 65     LDA ram_0065
C - - - - - 0x0013DD 00:93CD: D0 04     BNE bra_93D3
- - - - - - 0x0013DF 00:93CF: A2 24     LDX #$24
- - - - - - 0x0013E1 00:93D1: D0 02     BNE bra_93D5    ; jmp
bra_93D3:
C - - - - - 0x0013E3 00:93D3: A2 20     LDX #$20
bra_93D5:
C - - - - - 0x0013E5 00:93D5: A5 57     LDA ram_cam_pos_hi
C - - - - - 0x0013E7 00:93D7: 29 01     AND #$01
C - - - - - 0x0013E9 00:93D9: 45 00     EOR ram_0000_t093
C - - - - - 0x0013EB 00:93DB: F0 04     BEQ bra_93E1
C - - - - - 0x0013ED 00:93DD: 8A        TXA
C - - - - - 0x0013EE 00:93DE: 49 04     EOR #$04
C - - - - - 0x0013F0 00:93E0: AA        TAX
bra_93E1:
C - - - - - 0x0013F1 00:93E1: 8A        TXA
C - - - - - 0x0013F2 00:93E2: 18        CLC
C - - - - - 0x0013F3 00:93E3: 65 62     ADC ram_ppu_address_hi
C - - - - - 0x0013F5 00:93E5: 85 62     STA ram_ppu_address_hi
bra_93E7:
C - - - - - 0x0013F7 00:93E7: 20 AF E8  JSR sub_0x03E8BF_set_buffer_mode_02
C - - - - - 0x0013FA 00:93EA: A0 06     LDY #$06
C - - - - - 0x0013FC 00:93EC: A9 00     LDA #$00
bra_93EE_loop:
C - - - - - 0x0013FE 00:93EE: 9D 00 03  STA ram_ppu_buffer,X
C - - - - - 0x001401 00:93F1: E8        INX
C - - - - - 0x001402 00:93F2: 88        DEY
C - - - - - 0x001403 00:93F3: D0 F9     BNE bra_93EE_loop
C - - - - - 0x001405 00:93F5: 4C DE E8  JMP loc_0x03E8EE_store_index_and_close_buffer
bra_93F8:
C - - - - - 0x001408 00:93F8: A9 2A     LDA #> $2A41
C - - - - - 0x00140A 00:93FA: 85 62     STA ram_ppu_address_hi
C - - - - - 0x00140C 00:93FC: A9 41     LDA #< $2A41
C - - - - - 0x00140E 00:93FE: 85 61     STA ram_ppu_address_lo
C - - - - - 0x001410 00:9400: D0 E5     BNE bra_93E7    ; jmp



tbl_9402:
- D 0 - - - 0x001412 00:9402: 1E        .byte $1E   ; 00 facing right
- D 0 - - - 0x001413 00:9403: 01        .byte $01   ; 01 facing left



tbl_9404:
- D 0 - - - 0x001414 00:9404: 20        .byte $20   ; 00 
- D 0 - - - 0x001415 00:9405: 20        .byte $20   ; 01 
- D 0 - - - 0x001416 00:9406: 24        .byte $24   ; 02 
- D 0 - - - 0x001417 00:9407: 20        .byte $20   ; 03 



tbl_9408:
;                                              +---------- 
;                                              |    +----- facing
;                                              |    |
- D 0 - - - 0x001418 00:9408: F4        .byte $F4, $00   ; 00 facing right
- D 0 - - - 0x00141A 00:940A: 0C        .byte $0C, $01   ; 01 facing left



ofs_032_940C_03:
C - - J - - 0x00141C 00:940C: C6 30     DEC ram_screen_timer_lo
C - - - - - 0x00141E 00:940E: D0 0C     BNE bra_941C
C - - - - - 0x001420 00:9410: A9 00     LDA #$00
C - - - - - 0x001422 00:9412: 20 57 EF  JSR sub_0x03EF67_prepare_player_animation
C - - - - - 0x001425 00:9415: A9 14     LDA #$14
C - - - - - 0x001427 00:9417: 85 30     STA ram_screen_timer_lo
C - - - - - 0x001429 00:9419: E6 6B     INC ram_006B_subscript
bra_941B_RTS:
C - - - - - 0x00142B 00:941B: 60        RTS
bra_941C:
C - - - - - 0x00142C 00:941C: A2 13     LDX #$13
C - - - - - 0x00142E 00:941E: 20 75 EF  JSR sub_0x03EF85
C - - - - - 0x001431 00:9421: BD 93 05  LDA ram_obj_anim_cnt,X
C - - - - - 0x001434 00:9424: D0 F5     BNE bra_941B_RTS
C - - - - - 0x001436 00:9426: A9 80     LDA #$80
C - - - - - 0x001438 00:9428: 9D 7C 05  STA ram_obj_anim_timer,X
C - - - - - 0x00143B 00:942B: 60        RTS



ofs_032_942C_04:
C - - J - - 0x00143C 00:942C: C6 30     DEC ram_screen_timer_lo
C - - - - - 0x00143E 00:942E: F0 06     BEQ bra_9436
C - - - - - 0x001440 00:9430: 20 31 93  JSR sub_9331
C - - - - - 0x001443 00:9433: 4C 73 EF  JMP loc_0x03EF83
bra_9436:
C - - - - - 0x001446 00:9436: A9 00     LDA #$00
C - - - - - 0x001448 00:9438: 8D 00 04  STA ram_plr_anim_id
C - - - - - 0x00144B 00:943B: A9 10     LDA #$10
C - - - - - 0x00144D 00:943D: 85 30     STA ram_screen_timer_lo
C - - - - - 0x00144F 00:943F: E6 6B     INC ram_006B_subscript
bra_9441_RTS:
C - - - - - 0x001451 00:9441: 60        RTS



ofs_032_9442_05:
C - - J - - 0x001452 00:9442: C6 30     DEC ram_screen_timer_lo
C - - - - - 0x001454 00:9444: D0 FB     BNE bra_9441_RTS
C - - - - - 0x001456 00:9446: A9 00     LDA #$00
C - - - - - 0x001458 00:9448: 8D 00 04  STA ram_plr_anim_id
C - - - - - 0x00145B 00:944B: 8D 18 04  STA ram_obj_anim_id + $18
C - - - - - 0x00145E 00:944E: 8D 19 04  STA ram_obj_anim_id + $19
C - - - - - 0x001461 00:9451: A4 C6     LDY ram_00C6
C - - - - - 0x001463 00:9453: B9 E3 92  LDA tbl_92E2 + $01,Y
C - - - - - 0x001466 00:9456: 85 18     STA ram_main_script
C - - - - - 0x001468 00:9458: B9 E4 92  LDA tbl_92E2 + $02,Y
C - - - - - 0x00146B 00:945B: 85 2A     STA ram_002A_script
C - - - - - 0x00146D 00:945D: A5 33     LDA ram_blk_lo
C - - - - - 0x00146F 00:945F: 18        CLC
C - - - - - 0x001470 00:9460: 79 E5 92  ADC tbl_92E2 + $03,Y
C - - - - - 0x001473 00:9463: 85 33     STA ram_blk_lo
C - - - - - 0x001475 00:9465: A9 00     LDA #$00
C - - - - - 0x001477 00:9467: 85 19     STA ram_0019_subscript
C - - - - - 0x001479 00:9469: 60        RTS



loc_0x00147A:
C D 0 - - - 0x00147A 00:946A: A5 6B     LDA ram_006B_subscript
C - - - - - 0x00147C 00:946C: 20 6D E8  JSR sub_0x03E87D_jump_to_pointers_after_JSR_A
- D 0 - I - 0x00147F 00:946F: AC 94     .word ofs_031_0C_94AC_00
- D 0 - I - 0x001481 00:9471: BB 94     .word ofs_031_0C_94BB_01
- D 0 - I - 0x001483 00:9473: CF 94     .word ofs_031_0C_94CF_02
- D 0 - I - 0x001485 00:9475: 39 95     .word ofs_031_0C_9539_03
- D 0 - I - 0x001487 00:9477: 9B 95     .word ofs_031_0C_959B_04
- D 0 - I - 0x001489 00:9479: E8 95     .word ofs_031_0C_95E8_05
- D 0 - I - 0x00148B 00:947B: 25 96     .word ofs_031_0C_9625_06
- D 0 - I - 0x00148D 00:947D: 60 96     .word ofs_031_0C_9660_07
- D 0 - I - 0x00148F 00:947F: 71 96     .word ofs_031_0C_9671_08
- - - - - - 0x001491 00:9481: 98 95     .word ofs_031_0C_9598_09
- - - - - - 0x001493 00:9483: E5 95     .word ofs_031_0C_95E5_0A
- - - - - - 0x001495 00:9485: 22 96     .word ofs_031_0C_9622_0B
- - - - - - 0x001497 00:9487: 60 96     .word ofs_031_0C_9660_0C
- - - - - - 0x001499 00:9489: 71 96     .word ofs_031_0C_9671_0D



loc_0x00149B:
C D 0 - - - 0x00149B 00:948B: A5 6B     LDA ram_006B_subscript
C - - - - - 0x00149D 00:948D: 20 6D E8  JSR sub_0x03E87D_jump_to_pointers_after_JSR_A
- D 0 - I - 0x0014A0 00:9490: AC 94     .word ofs_031_0D_94AC_00
- D 0 - I - 0x0014A2 00:9492: BB 94     .word ofs_031_0D_94BB_01
- D 0 - I - 0x0014A4 00:9494: CF 94     .word ofs_031_0D_94CF_02
- D 0 - I - 0x0014A6 00:9496: 1B 95     .word ofs_031_0D_951B_03
- D 0 - I - 0x0014A8 00:9498: 9B 95     .word ofs_031_0D_959B_04
- D 0 - I - 0x0014AA 00:949A: E8 95     .word ofs_031_0D_95E8_05
- D 0 - I - 0x0014AC 00:949C: 25 96     .word ofs_031_0D_9625_06
- D 0 - I - 0x0014AE 00:949E: 82 96     .word ofs_031_0D_9682_07
- D 0 - I - 0x0014B0 00:94A0: 9F 96     .word ofs_031_0D_969F_08
- D 0 - I - 0x0014B2 00:94A2: 98 95     .word ofs_031_0D_9598_09
- D 0 - I - 0x0014B4 00:94A4: E5 95     .word ofs_031_0D_95E5_0A
- D 0 - I - 0x0014B6 00:94A6: 22 96     .word ofs_031_0D_9622_0B
- D 0 - I - 0x0014B8 00:94A8: 92 96     .word ofs_031_0D_9692_0C
- D 0 - I - 0x0014BA 00:94AA: 9F 96     .word ofs_031_0D_969F_0D



ofs_031_0C_94AC_00:
ofs_031_0D_94AC_00:
C - - J - - 0x0014BC 00:94AC: A9 46     LDA #con_sound_swap_player
C - - - - - 0x0014BE 00:94AE: 20 5F E2  JSR sub_0x03E26F_play_sound
C - - - - - 0x0014C1 00:94B1: 20 CE E5  JSR sub_0x03E5DE
C - - - - - 0x0014C4 00:94B4: A9 3C     LDA #$3C
C - - - - - 0x0014C6 00:94B6: 85 30     STA ram_screen_timer_lo
C - - - - - 0x0014C8 00:94B8: E6 6B     INC ram_006B_subscript
C - - - - - 0x0014CA 00:94BA: 60        RTS



ofs_031_0C_94BB_01:
ofs_031_0D_94BB_01:
C - - J - - 0x0014CB 00:94BB: C6 30     DEC ram_screen_timer_lo
C - - - - - 0x0014CD 00:94BD: F0 08     BEQ bra_94C7
C - - - - - 0x0014CF 00:94BF: A5 1A     LDA ram_frm_cnt
C - - - - - 0x0014D1 00:94C1: 29 03     AND #$03
C - - - - - 0x0014D3 00:94C3: 8D 54 04  STA ram_0454_plr
C - - - - - 0x0014D6 00:94C6: 60        RTS
bra_94C7:
C - - - - - 0x0014D7 00:94C7: A9 00     LDA #$00
C - - - - - 0x0014D9 00:94C9: 8D 54 04  STA ram_0454_plr
C - - - - - 0x0014DC 00:94CC: E6 6B     INC ram_006B_subscript
C - - - - - 0x0014DE 00:94CE: 60        RTS



ofs_031_0C_94CF_02:
ofs_031_0D_94CF_02:
C - - J - - 0x0014DF 00:94CF: A9 4C     LDA #$4C
C - - - - - 0x0014E1 00:94D1: 85 30     STA ram_screen_timer_lo
C - - - - - 0x0014E3 00:94D3: AD 38 04  LDA ram_plr_pos_X_hi
C - - - - - 0x0014E6 00:94D6: 8D D4 05  STA ram_05C1_obj + $13
C - - - - - 0x0014E9 00:94D9: A9 00     LDA #$00
C - - - - - 0x0014EB 00:94DB: 8D 05 05  STA ram_obj_spd_X_hi + $13
C - - - - - 0x0014EE 00:94DE: 8D 1C 05  STA ram_obj_spd_X_lo + $13
C - - - - - 0x0014F1 00:94E1: 8D 02 06  STA ram_05EF_obj + $13
C - - - - - 0x0014F4 00:94E4: A9 10     LDA #$10
C - - - - - 0x0014F6 00:94E6: 8D EB 05  STA ram_05D8_obj + $13
C - - - - - 0x0014F9 00:94E9: A9 01     LDA #$01
C - - - - - 0x0014FB 00:94EB: 8D 30 06  STA ram_061D_obj + $13
C - - - - - 0x0014FE 00:94EE: E6 6B     INC ram_006B_subscript
C - - - - - 0x001500 00:94F0: 60        RTS



sub_94F1:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x001501 00:94F1: A5 AA     LDA ram_00AA_copy_002A_script
C - - - - - 0x001503 00:94F3: C9 16     CMP #con_002A_16
C - - - - - 0x001505 00:94F5: F0 12     BEQ bra_9509
C - - - - - 0x001507 00:94F7: A5 C2     LDA ram_00C2
C - - - - - 0x001509 00:94F9: D0 0E     BNE bra_9509
C - - - - - 0x00150B 00:94FB: AD 1C 04  LDA ram_plr_pos_Y_hi
C - - - - - 0x00150E 00:94FE: 38        SEC
C - - - - - 0x00150F 00:94FF: E9 4A     SBC #$4A
C - - - - - 0x001511 00:9501: 30 06     BMI bra_9509
C - - - - - 0x001513 00:9503: C9 8E     CMP #$8E
C - - - - - 0x001515 00:9505: B0 02     BCS bra_9509
C - - - - - 0x001517 00:9507: 18        CLC
C - - - - - 0x001518 00:9508: 60        RTS
bra_9509:
C - - - - - 0x001519 00:9509: 38        SEC
C - - - - - 0x00151A 00:950A: 60        RTS



sub_950B:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x00151B 00:950B: AD 1C 04  LDA ram_plr_pos_Y_hi
C - - - - - 0x00151E 00:950E: 38        SEC
C - - - - - 0x00151F 00:950F: E9 4E     SBC #$4E
C - - - - - 0x001521 00:9511: 30 06     BMI bra_9519
C - - - - - 0x001523 00:9513: C9 8A     CMP #$8A
C - - - - - 0x001525 00:9515: B0 02     BCS bra_9519
C - - - - - 0x001527 00:9517: 18        CLC
C - - - - - 0x001528 00:9518: 60        RTS
bra_9519:
- - - - - - 0x001529 00:9519: 38        SEC
- - - - - - 0x00152A 00:951A: 60        RTS



ofs_031_0D_951B_03:
C - - J - - 0x00152B 00:951B: 20 F1 94  JSR sub_94F1
C - - - - - 0x00152E 00:951E: B0 14     BCS bra_9534
C - - - - - 0x001530 00:9520: AD 1C 04  LDA ram_plr_pos_Y_hi
C - - - - - 0x001533 00:9523: 38        SEC
C - - - - - 0x001534 00:9524: E9 18     SBC #$18
C - - - - - 0x001536 00:9526: 8D 19 06  STA ram_obj_config + $13
C - - - - - 0x001539 00:9529: A8        TAY
C - - - - - 0x00153A 00:952A: A2 2E     LDX #$2E
C - - - - - 0x00153C 00:952C: A9 09     LDA #con_irq_09
C - - - - - 0x00153E 00:952E: 20 BF E5  JSR sub_0x03E5CF
C - - - - - 0x001541 00:9531: E6 6B     INC ram_006B_subscript
C - - - - - 0x001543 00:9533: 60        RTS
bra_9534:
C - - - - - 0x001544 00:9534: A9 09     LDA #$09
C - - - - - 0x001546 00:9536: 85 6B     STA ram_006B_subscript
C - - - - - 0x001548 00:9538: 60        RTS



ofs_031_0C_9539_03:
C - - J - - 0x001549 00:9539: 20 0B 95  JSR sub_950B
C - - - - - 0x00154C 00:953C: B0 12     BCS bra_9550
C - - - - - 0x00154E 00:953E: A9 0B     LDA #con_irq_0B
C - - - - - 0x001550 00:9540: 85 3F     STA ram_003F_copy_irq_handler
C - - - - - 0x001552 00:9542: AD 1C 04  LDA ram_plr_pos_Y_hi
C - - - - - 0x001555 00:9545: 38        SEC
C - - - - - 0x001556 00:9546: E9 0C     SBC #$0C
C - - - - - 0x001558 00:9548: 8D 19 06  STA ram_obj_config + $13
C - - - - - 0x00155B 00:954B: 85 7C     STA ram_007C
C - - - - - 0x00155D 00:954D: E6 6B     INC ram_006B_subscript
C - - - - - 0x00155F 00:954F: 60        RTS
bra_9550:
- - - - - - 0x001560 00:9550: A9 09     LDA #$09
- - - - - - 0x001562 00:9552: 85 6B     STA ram_006B_subscript
- - - - - - 0x001564 00:9554: 60        RTS



sub_9555:
C - - - - - 0x001565 00:9555: A9 00     LDA #con_obj_flag_00
C - - - - - 0x001567 00:9557: 8D 70 04  STA ram_plr_flags
C - - - - - 0x00156A 00:955A: AD 05 05  LDA ram_obj_spd_X_hi + $13
C - - - - - 0x00156D 00:955D: 30 2A     BMI bra_9589
C - - - - - 0x00156F 00:955F: AD 30 06  LDA ram_061D_obj + $13
C - - - - - 0x001572 00:9562: F0 16     BEQ bra_957A
C - - - - - 0x001574 00:9564: AD D4 05  LDA ram_05C1_obj + $13
C - - - - - 0x001577 00:9567: 38        SEC
C - - - - - 0x001578 00:9568: ED 05 05  SBC ram_obj_spd_X_hi + $13
C - - - - - 0x00157B 00:956B: 90 06     BCC bra_9573
C - - - - - 0x00157D 00:956D: C9 08     CMP #$08
C - - - - - 0x00157F 00:956F: 90 02     BCC bra_9573
C - - - - - 0x001581 00:9571: B0 19     BCS bra_958C    ; jmp
bra_9573:
- - - - - - 0x001583 00:9573: A9 80     LDA #con_obj_flag_not_visible
- - - - - - 0x001585 00:9575: 8D 70 04  STA ram_plr_flags
- - - - - - 0x001588 00:9578: D0 15     BNE bra_958F    ; jmp
bra_957A:
C - - - - - 0x00158A 00:957A: AD D4 05  LDA ram_05C1_obj + $13
C - - - - - 0x00158D 00:957D: 18        CLC
C - - - - - 0x00158E 00:957E: 6D 05 05  ADC ram_obj_spd_X_hi + $13
C - - - - - 0x001591 00:9581: B0 F0     BCS bra_9573
C - - - - - 0x001593 00:9583: C9 F8     CMP #$F8
C - - - - - 0x001595 00:9585: B0 EC     BCS bra_9573
C - - - - - 0x001597 00:9587: 90 03     BCC bra_958C    ; jmp
bra_9589:
- - - - - - 0x001599 00:9589: AD D4 05  LDA ram_05C1_obj + $13
bra_958C:
C - - - - - 0x00159C 00:958C: 8D 38 04  STA ram_plr_pos_X_hi
bra_958F:
C - - - - - 0x00159F 00:958F: AD 30 06  LDA ram_061D_obj + $13
C - - - - - 0x0015A2 00:9592: 49 01     EOR #$01
C - - - - - 0x0015A4 00:9594: 8D 30 06  STA ram_061D_obj + $13
C - - - - - 0x0015A7 00:9597: 60        RTS



ofs_031_0C_9598_09:
ofs_031_0D_9598_09:
C - - J - - 0x0015A8 00:9598: 20 55 95  JSR sub_9555
ofs_031_0C_959B_04:
ofs_031_0D_959B_04:
C - - J - - 0x0015AB 00:959B: C6 30     DEC ram_screen_timer_lo
C - - - - - 0x0015AD 00:959D: F0 39     BEQ bra_95D8
C - - - - - 0x0015AF 00:959F: AD 1C 05  LDA ram_obj_spd_X_lo + $13
C - - - - - 0x0015B2 00:95A2: 18        CLC
C - - - - - 0x0015B3 00:95A3: 6D EB 05  ADC ram_05D8_obj + $13
C - - - - - 0x0015B6 00:95A6: 8D 1C 05  STA ram_obj_spd_X_lo + $13
C - - - - - 0x0015B9 00:95A9: AD 05 05  LDA ram_obj_spd_X_hi + $13
C - - - - - 0x0015BC 00:95AC: 6D 02 06  ADC ram_05EF_obj + $13
C - - - - - 0x0015BF 00:95AF: 8D 05 05  STA ram_obj_spd_X_hi + $13
C - - - - - 0x0015C2 00:95B2: C9 08     CMP #$08
C - - - - - 0x0015C4 00:95B4: B0 01     BCS bra_95B7
C - - - - - 0x0015C6 00:95B6: 60        RTS
bra_95B7:
- - - - - - 0x0015C7 00:95B7: AD EB 05  LDA ram_05D8_obj + $13
- - - - - - 0x0015CA 00:95BA: 18        CLC
- - - - - - 0x0015CB 00:95BB: 69 10     ADC #< $0010
- - - - - - 0x0015CD 00:95BD: 8D EB 05  STA ram_05D8_obj + $13
- - - - - - 0x0015D0 00:95C0: AD 02 06  LDA ram_05EF_obj + $13
- - - - - - 0x0015D3 00:95C3: 69 00     ADC #> $0010
- - - - - - 0x0015D5 00:95C5: 8D 02 06  STA ram_05EF_obj + $13
- - - - - - 0x0015D8 00:95C8: C9 08     CMP #$08
- - - - - - 0x0015DA 00:95CA: B0 01     BCS bra_95CD
- - - - - - 0x0015DC 00:95CC: 60        RTS
bra_95CD:
- - - - - - 0x0015DD 00:95CD: A9 08     LDA #$08
- - - - - - 0x0015DF 00:95CF: 8D 02 06  STA ram_05EF_obj + $13
- - - - - - 0x0015E2 00:95D2: A9 00     LDA #$00
- - - - - - 0x0015E4 00:95D4: 8D EB 05  STA ram_05D8_obj + $13
- - - - - - 0x0015E7 00:95D7: 60        RTS
bra_95D8:
C - - - - - 0x0015E8 00:95D8: A9 80     LDA #con_obj_flag_not_visible
C - - - - - 0x0015EA 00:95DA: 8D 70 04  STA ram_plr_flags
C - - - - - 0x0015ED 00:95DD: A9 00     LDA #$00
C - - - - - 0x0015EF 00:95DF: 8D 13 04  STA ram_obj_anim_id + $13
C - - - - - 0x0015F2 00:95E2: E6 6B     INC ram_006B_subscript
C - - - - - 0x0015F4 00:95E4: 60        RTS



ofs_031_0C_95E5_0A:
ofs_031_0D_95E5_0A:
C - - J - - 0x0015F5 00:95E5: 20 55 95  JSR sub_9555
ofs_031_0C_95E8_05:
ofs_031_0D_95E8_05:
C - - J - - 0x0015F8 00:95E8: 20 77 E6  JSR sub_0x03E687
C - - - - - 0x0015FB 00:95EB: AD 00 04  LDA ram_plr_anim_id
C - - - - - 0x0015FE 00:95EE: C9 48     CMP #$48
C - - - - - 0x001600 00:95F0: D0 05     BNE bra_95F7
- - - - - - 0x001602 00:95F2: A9 04     LDA #$04
- - - - - - 0x001604 00:95F4: 8D 00 04  STA ram_plr_anim_id
bra_95F7:
C - - - - - 0x001607 00:95F7: A5 3B     LDA ram_player
C - - - - - 0x001609 00:95F9: 49 01     EOR #$01
C - - - - - 0x00160B 00:95FB: 85 3B     STA ram_player
C - - - - - 0x00160D 00:95FD: A8        TAY
C - - - - - 0x00160E 00:95FE: B9 39 00  LDA ram_0039,Y
C - - - - - 0x001611 00:9601: 8D 4E 05  STA ram_plr_id
C - - - - - 0x001614 00:9604: 20 4B 8E  JSR sub_8E4B
C - - - - - 0x001617 00:9607: 20 61 8E  JSR sub_8E61_display_subweapon
C - - - - - 0x00161A 00:960A: 20 1E E6  JSR sub_0x03E62E
C - - - - - 0x00161D 00:960D: 20 01 80  JSR sub_8001
C - - - - - 0x001620 00:9610: 20 3C E3  JSR sub_0x03E34C
C - - - - - 0x001623 00:9613: AD 4E 05  LDA ram_plr_id
C - - - - - 0x001626 00:9616: 0A        ASL
; con_obj_type_00
; con_obj_type_02
; con_obj_type_04
; con_obj_type_06
C - - - - - 0x001627 00:9617: 8D 8C 04  STA ram_plr_type
C - - - - - 0x00162A 00:961A: A9 00     LDA #con_obj_flag_00
C - - - - - 0x00162C 00:961C: 8D 70 04  STA ram_plr_flags
C - - - - - 0x00162F 00:961F: E6 6B     INC ram_006B_subscript
C - - - - - 0x001631 00:9621: 60        RTS



ofs_031_0C_9622_0B:
ofs_031_0D_9622_0B:
C - - J - - 0x001632 00:9622: 20 55 95  JSR sub_9555
ofs_031_0C_9625_06:
ofs_031_0D_9625_06:
C - - J - - 0x001635 00:9625: AD 1C 05  LDA ram_obj_spd_X_lo + $13
C - - - - - 0x001638 00:9628: 38        SEC
C - - - - - 0x001639 00:9629: ED EB 05  SBC ram_05D8_obj + $13
C - - - - - 0x00163C 00:962C: 8D 1C 05  STA ram_obj_spd_X_lo + $13
C - - - - - 0x00163F 00:962F: AD 05 05  LDA ram_obj_spd_X_hi + $13
C - - - - - 0x001642 00:9632: ED 02 06  SBC ram_05EF_obj + $13
C - - - - - 0x001645 00:9635: 8D 05 05  STA ram_obj_spd_X_hi + $13
C - - - - - 0x001648 00:9638: C9 F0     CMP #$F0
C - - - - - 0x00164A 00:963A: B0 21     BCS bra_965D
C - - - - - 0x00164C 00:963C: C9 08     CMP #$08
C - - - - - 0x00164E 00:963E: B0 0B     BCS bra_964B
C - - - - - 0x001650 00:9640: A9 10     LDA #$10
C - - - - - 0x001652 00:9642: 8D EB 05  STA ram_05D8_obj + $13
C - - - - - 0x001655 00:9645: A9 00     LDA #$00
C - - - - - 0x001657 00:9647: 8D 02 06  STA ram_05EF_obj + $13
C - - - - - 0x00165A 00:964A: 60        RTS
bra_964B:
- - - - - - 0x00165B 00:964B: AD EB 05  LDA ram_05D8_obj + $13
- - - - - - 0x00165E 00:964E: 38        SEC
- - - - - - 0x00165F 00:964F: E9 10     SBC #< $0010
- - - - - - 0x001661 00:9651: 8D EB 05  STA ram_05D8_obj + $13
- - - - - - 0x001664 00:9654: AD 02 06  LDA ram_05EF_obj + $13
- - - - - - 0x001667 00:9657: E9 00     SBC #> $0010
- - - - - - 0x001669 00:9659: 8D 02 06  STA ram_05EF_obj + $13
- - - - - - 0x00166C 00:965C: 60        RTS
bra_965D:
C - - - - - 0x00166D 00:965D: E6 6B     INC ram_006B_subscript
C - - - - - 0x00166F 00:965F: 60        RTS



ofs_031_0C_9660_07:
ofs_031_0C_9660_0C:
C - - J - - 0x001670 00:9660: AD D4 05  LDA ram_05C1_obj + $13
C - - - - - 0x001673 00:9663: 8D 38 04  STA ram_plr_pos_X_hi
C - - - - - 0x001676 00:9666: A9 05     LDA #con_irq_05
C - - - - - 0x001678 00:9668: 85 3F     STA ram_003F_copy_irq_handler
C - - - - - 0x00167A 00:966A: A9 3C     LDA #$3C
C - - - - - 0x00167C 00:966C: 85 30     STA ram_screen_timer_lo
C - - - - - 0x00167E 00:966E: E6 6B     INC ram_006B_subscript
C - - - - - 0x001680 00:9670: 60        RTS



ofs_031_0C_9671_08:
ofs_031_0C_9671_0D:
C - - J - - 0x001681 00:9671: C6 30     DEC ram_screen_timer_lo
C - - - - - 0x001683 00:9673: F0 08     BEQ bra_967D
C - - - - - 0x001685 00:9675: A5 1A     LDA ram_frm_cnt
C - - - - - 0x001687 00:9677: 29 03     AND #$03
C - - - - - 0x001689 00:9679: 8D 54 04  STA ram_0454_plr
C - - - - - 0x00168C 00:967C: 60        RTS
bra_967D:
C - - - - - 0x00168D 00:967D: A9 05     LDA #con_002A_05
C - - - - - 0x00168F 00:967F: 4C AD 96  JMP loc_96AD



ofs_031_0D_9682_07:
; restore values from 0x0131F6
C - - J - - 0x001692 00:9682: A5 A6     LDA ram_00A6_copy_003F_copy_irq_handler
C - - - - - 0x001694 00:9684: 85 3F     STA ram_003F_copy_irq_handler
C - - - - - 0x001696 00:9686: A5 A7     LDA ram_00A7_copy_0041_scanline
C - - - - - 0x001698 00:9688: 85 41     STA ram_0041_scanline
C - - - - - 0x00169A 00:968A: A5 A8     LDA ram_00A8_copy_0042
C - - - - - 0x00169C 00:968C: 85 42     STA ram_0042
C - - - - - 0x00169E 00:968E: A5 A9     LDA ram_00A9_copy_for_5204
C - - - - - 0x0016A0 00:9690: 85 40     STA ram_for_5204
ofs_031_0D_9692_0C:
C - - - - - 0x0016A2 00:9692: AD D4 05  LDA ram_05C1_obj + $13
C - - - - - 0x0016A5 00:9695: 8D 38 04  STA ram_plr_pos_X_hi
C - - - - - 0x0016A8 00:9698: A9 3C     LDA #$3C
C - - - - - 0x0016AA 00:969A: 85 30     STA ram_screen_timer_lo
C - - - - - 0x0016AC 00:969C: E6 6B     INC ram_006B_subscript
C - - - - - 0x0016AE 00:969E: 60        RTS



ofs_031_0D_969F_08:
ofs_031_0D_969F_0D:
C - - J - - 0x0016AF 00:969F: C6 30     DEC ram_screen_timer_lo
C - - - - - 0x0016B1 00:96A1: F0 08     BEQ bra_96AB
C - - - - - 0x0016B3 00:96A3: A5 1A     LDA ram_frm_cnt
C - - - - - 0x0016B5 00:96A5: 29 03     AND #$03
C - - - - - 0x0016B7 00:96A7: 8D 54 04  STA ram_0454_plr
C - - - - - 0x0016BA 00:96AA: 60        RTS
bra_96AB:
C - - - - - 0x0016BB 00:96AB: A5 AA     LDA ram_00AA_copy_002A_script
loc_96AD:
C D 0 - - - 0x0016BD 00:96AD: 85 2A     STA ram_002A_script
C - - - - - 0x0016BF 00:96AF: A9 00     LDA #$00
C - - - - - 0x0016C1 00:96B1: 8D 54 04  STA ram_0454_plr
C - - - - - 0x0016C4 00:96B4: 20 CA E5  JSR sub_0x03E5DA
C - - - - - 0x0016C7 00:96B7: A9 00     LDA #$00
C - - - - - 0x0016C9 00:96B9: 8D 05 05  STA ram_obj_spd_X_hi + $13
C - - - - - 0x0016CC 00:96BC: 8D 1C 05  STA ram_obj_spd_X_lo + $13
C - - - - - 0x0016CF 00:96BF: 8D D4 05  STA ram_05C1_obj + $13
C - - - - - 0x0016D2 00:96C2: 8D EB 05  STA ram_05D8_obj + $13
C - - - - - 0x0016D5 00:96C5: 8D 02 06  STA ram_05EF_obj + $13
C - - - - - 0x0016D8 00:96C8: 8D 19 06  STA ram_obj_config + $13
C - - - - - 0x0016DB 00:96CB: 8D 30 06  STA ram_061D_obj + $13
C - - - - - 0x0016DE 00:96CE: 60        RTS



loc_0x0016DF_RTS:
- - - - - - 0x0016DF 00:96CF: 60        RTS



sub_0x0016E0:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x0016E0 00:96D0: AD 65 05  LDA ram_plr_state
C - - - - - 0x0016E3 00:96D3: C9 0E     CMP #$0E
C - - - - - 0x0016E5 00:96D5: 90 21     BCC bra_96F8
C - - - - - 0x0016E7 00:96D7: C9 16     CMP #$16
C - - - - - 0x0016E9 00:96D9: B0 1D     BCS bra_96F8
; if following states
; con_plr_state_move_towards_stairs
; con_plr_state_attach_to_stairs
; con_plr_state_idle_on_stairs
; con_plr_state_move_on_stairs
C - - - - - 0x0016EB 00:96DB: AD 1C 04  LDA ram_plr_pos_Y_hi
C - - - - - 0x0016EE 00:96DE: C9 70     CMP #$70
C - - - - - 0x0016F0 00:96E0: B0 16     BCS bra_96F8
C - - - - - 0x0016F2 00:96E2: A5 7D     LDA ram_007D
C - - - - - 0x0016F4 00:96E4: 29 0F     AND #$0F
C - - - - - 0x0016F6 00:96E6: 0A        ASL
C - - - - - 0x0016F7 00:96E7: A8        TAY
C - - - - - 0x0016F8 00:96E8: B9 FA 96  LDA tbl_96FA,Y
C - - - - - 0x0016FB 00:96EB: C5 57     CMP ram_cam_pos_hi
C - - - - - 0x0016FD 00:96ED: D0 09     BNE bra_96F8
C - - - - - 0x0016FF 00:96EF: B9 FB 96  LDA tbl_96FA + $01,Y
C - - - - - 0x001702 00:96F2: C5 56     CMP ram_cam_pos_lo
C - - - - - 0x001704 00:96F4: D0 02     BNE bra_96F8
C - - - - - 0x001706 00:96F6: 38        SEC
C - - - - - 0x001707 00:96F7: 60        RTS
bra_96F8:
C - - - - - 0x001708 00:96F8: 18        CLC
C - - - - - 0x001709 00:96F9: 60        RTS



tbl_96FA:
;                                              +---------- 
;                                              |    +----- 
;                                              |    |
- D 0 - - - 0x00170A 00:96FA: 00        .byte $00, $00   ; 00 
- D 0 - - - 0x00170C 00:96FC: 02        .byte $02, $C8   ; 01 
- - - - - - 0x00170E 00:96FE: 00        .byte $00, $00   ; 02 
- D 0 - - - 0x001710 00:9700: 00        .byte $00, $00   ; 03 



sub_0x001712:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x001712 00:9702: A0 00     LDY #$00
bra_9704_loop:
C - - - - - 0x001714 00:9704: B9 30 97  LDA tbl_9730,Y
C - - - - - 0x001717 00:9707: C9 FF     CMP #$FF
C - - - - - 0x001719 00:9709: F0 1F     BEQ bra_972A_FF
C - - - - - 0x00171B 00:970B: C5 32     CMP ram_blk_hi
C - - - - - 0x00171D 00:970D: D0 15     BNE bra_9724_next
C - - - - - 0x00171F 00:970F: B9 31 97  LDA tbl_9730 + $01,Y
C - - - - - 0x001722 00:9712: C5 33     CMP ram_blk_lo
C - - - - - 0x001724 00:9714: D0 0E     BNE bra_9724_next
C - - - - - 0x001726 00:9716: B9 32 97  LDA tbl_9730 + $02,Y
C - - - - - 0x001729 00:9719: C5 34     CMP ram_blk_fr
C - - - - - 0x00172B 00:971B: D0 07     BNE bra_9724_next
C - - - - - 0x00172D 00:971D: B9 33 97  LDA tbl_9730 + $03,Y
C - - - - - 0x001730 00:9720: 85 7D     STA ram_007D
C - - - - - 0x001732 00:9722: 38        SEC
C - - - - - 0x001733 00:9723: 60        RTS
bra_9724_next:
C - - - - - 0x001734 00:9724: C8        INY
C - - - - - 0x001735 00:9725: C8        INY
C - - - - - 0x001736 00:9726: C8        INY
C - - - - - 0x001737 00:9727: C8        INY
C - - - - - 0x001738 00:9728: D0 DA     BNE bra_9704_loop    ; jmp
bra_972A_FF:
C - - - - - 0x00173A 00:972A: A9 00     LDA #$00
C - - - - - 0x00173C 00:972C: 85 7D     STA ram_007D
C - - - - - 0x00173E 00:972E: 18        CLC
C - - - - - 0x00173F 00:972F: 60        RTS



tbl_9730:
;                                              +-------------------- compare with ram_blk_hi
;                                              |    +--------------- compare with ram_blk_lo
;                                              |    |    +---------- compare with ram_blk_fr
;                                              |    |    |    +----- 
;                                              |    |    |    |
- D 0 - - - 0x001740 00:9730: 02        .byte $02, $02, $01, $10   ; 00 
- D 0 - - - 0x001744 00:9734: 02        .byte $02, $03, $01, $11   ; 04 
- D 0 - - - 0x001748 00:9738: 0E        .byte $0E, $00, $02, $12   ; 08 
- D 0 - - - 0x00174C 00:973C: 0E        .byte $0E, $02, $00, $13   ; 0C 
- D 0 - - - 0x001750 00:9740: 02        .byte $02, $00, $01, $20   ; 10 
- D 0 - - - 0x001754 00:9744: 0C        .byte $0C, $01, $01, $23   ; 14 
- D 0 - - - 0x001758 00:9748: 05        .byte $05, $01, $00, $30   ; 18 
- D 0 - - - 0x00175C 00:974C: 0D        .byte $0D, $03, $00, $31   ; 1C 
- D 0 - - - 0x001760 00:9750: 01        .byte $01, $00, $00, $40   ; 20 
- D 0 - - - 0x001764 00:9754: 01        .byte $01, $01, $00, $40   ; 24 
- D 0 - - - 0x001768 00:9758: 01        .byte $01, $01, $01, $40   ; 28 
- D 0 - - - 0x00176C 00:975C: 01        .byte $01, $01, $02, $40   ; 2C 
- D 0 - - - 0x001770 00:9760: 01        .byte $01, $02, $00, $40   ; 30 
- D 0 - - - 0x001774 00:9764: 01        .byte $01, $02, $01, $40   ; 34 
- D 0 - - - 0x001778 00:9768: 01        .byte $01, $03, $00, $40   ; 38 
- D 0 - - - 0x00177C 00:976C: 01        .byte $01, $03, $01, $40   ; 3C 
- D 0 - - - 0x001780 00:9770: 01        .byte $01, $04, $00, $40   ; 40 
- D 0 - - - 0x001784 00:9774: 01        .byte $01, $04, $01, $40   ; 44 
- D 0 - - - 0x001788 00:9778: 01        .byte $01, $04, $02, $40   ; 48 
- D 0 - - - 0x00178C 00:977C: 01        .byte $01, $05, $00, $40   ; 4C 
- D 0 - - - 0x001790 00:9780: 0E        .byte $0E, $00, $01, $40   ; 50 
- D 0 - - - 0x001794 00:9784: 0D        .byte $0D, $01, $00, $41   ; 54 
- D 0 - - - 0x001798 00:9788: 0D        .byte $0D, $01, $01, $41   ; 58 
- D 0 - - - 0x00179C 00:978C: 0D        .byte $0D, $01, $02, $41   ; 5C 
- D 0 - - - 0x0017A0 00:9790: 06        .byte $06, $00, $01, $32   ; 60 
- D 0 - - - 0x0017A4 00:9794: 06        .byte $06, $00, $00, $33   ; 64 
- D 0 - - - 0x0017A8 00:9798: 06        .byte $06, $01, $00, $34   ; 68 
- D 0 - - - 0x0017AC 00:979C: 06        .byte $06, $02, $01, $35   ; 6C 
- D 0 - - - 0x0017B0 00:97A0: 06        .byte $06, $02, $00, $36   ; 70 
- D 0 - - - 0x0017B4 00:97A4: 06        .byte $06, $02, $02, $37   ; 74 
- D 0 - - - 0x0017B8 00:97A8: 08        .byte $08, $00, $00, $50   ; 78 
- D 0 - - - 0x0017BC 00:97AC: 08        .byte $08, $01, $00, $51   ; 7C 
- D 0 - - - 0x0017C0 00:97B0: 08        .byte $08, $02, $00, $51   ; 80 
- D 0 - - - 0x0017C4 00:97B4: 05        .byte $05, $03, $00, $51   ; 84 
- D 0 - - - 0x0017C8 00:97B8: 09        .byte $09, $00, $00, $51   ; 88 
- D 0 - - - 0x0017CC 00:97BC: 0A        .byte $0A, $01, $00, $51   ; 8C 
- D 0 - - - 0x0017D0 00:97C0: 0A        .byte $0A, $02, $00, $51   ; 90 
- D 0 - - - 0x0017D4 00:97C4: 0A        .byte $0A, $03, $00, $51   ; 94 
- D 0 - - - 0x0017D8 00:97C8: 02        .byte $02, $01, $00, $51   ; 98 
- D 0 - - - 0x0017DC 00:97CC: 08        .byte $08, $00, $01, $60   ; 9C 
- D 0 - - - 0x0017E0 00:97D0: 08        .byte $08, $03, $00, $71   ; A0 
- D 0 - - - 0x0017E4 00:97D4: 08        .byte $08, $04, $00, $71   ; A4 
- D 0 - - - 0x0017E8 00:97D8: 05        .byte $05, $03, $01, $80   ; A8 
- D 0 - - - 0x0017EC 00:97DC: 0C        .byte $0C, $02, $00, $81   ; AC 
- D 0 - - - 0x0017F0 00:97E0: FF        .byte $FF   ; A4 end token



sub_0x0017F1:
C - - - - - 0x0017F1 00:97E1: A5 7D     LDA ram_007D
C - - - - - 0x0017F3 00:97E3: 29 0F     AND #$0F
C - - - - - 0x0017F5 00:97E5: AA        TAX
C - - - - - 0x0017F6 00:97E6: BC FA 97  LDY tbl_97FA,X
C - - - - - 0x0017F9 00:97E9: A2 2E     LDX #$2E
C - - - - - 0x0017FB 00:97EB: A5 7D     LDA ram_007D
C - - - - - 0x0017FD 00:97ED: C9 31     CMP #$31
C - - - - - 0x0017FF 00:97EF: D0 04     BNE bra_97F5
C - - - - - 0x001801 00:97F1: A9 24     LDA #con_irq_24
C - - - - - 0x001803 00:97F3: D0 02     BNE bra_97F7    ; jmp
bra_97F5:
C - - - - - 0x001805 00:97F5: A9 13     LDA #con_irq_13
bra_97F7:
C - - - - - 0x001807 00:97F7: 4C BF E5  JMP loc_0x03E5CF



tbl_97FA:
- D 0 - - - 0x00180A 00:97FA: 7E        .byte $7E   ; 00 
- D 0 - - - 0x00180B 00:97FB: 5E        .byte $5E   ; 01 
- D 0 - - - 0x00180C 00:97FC: AE        .byte $AE   ; 02 
- D 0 - - - 0x00180D 00:97FD: AE        .byte $AE   ; 03 
- D 0 - - - 0x00180E 00:97FE: AE        .byte $AE   ; 04 
- D 0 - - - 0x00180F 00:97FF: AE        .byte $AE   ; 05 
- D 0 - - - 0x001810 00:9800: AE        .byte $AE   ; 06 
- D 0 - - - 0x001811 00:9801: AE        .byte $AE   ; 07 



sub_0x001812:
C - - - - - 0x001812 00:9802: A0 00     LDY #$00
C - - - - - 0x001814 00:9804: 98        TYA ; 00
bra_9805_loop:  ; 0782-07C1
C - - - - - 0x001815 00:9805: 99 82 07  STA ram_0782,Y
C - - - - - 0x001818 00:9808: C8        INY
C - - - - - 0x001819 00:9809: C0 40     CPY #$40
C - - - - - 0x00181B 00:980B: D0 F8     BNE bra_9805_loop
C - - - - - 0x00181D 00:980D: A5 7D     LDA ram_007D
C - - - - - 0x00181F 00:980F: 29 0F     AND #$0F
C - - - - - 0x001821 00:9811: AA        TAX
C - - - - - 0x001822 00:9812: BC 1C 98  LDY tbl_981C,X
C - - - - - 0x001825 00:9815: A2 2E     LDX #$2E
C - - - - - 0x001827 00:9817: A9 02     LDA #con_irq_02
C - - - - - 0x001829 00:9819: 4C BF E5  JMP loc_0x03E5CF



tbl_981C:
- D 0 - - - 0x00182C 00:981C: 3F        .byte $3F   ; 00 
- D 0 - - - 0x00182D 00:981D: 7F        .byte $7F   ; 01 
- D 0 - - - 0x00182E 00:981E: 30        .byte $30   ; 02 
- D 0 - - - 0x00182F 00:981F: A0        .byte $A0   ; 03 



sub_0x001830_write_data_to_ppu_buffer:
; in
    ; X = con_prg_bank
C - - - - - 0x001830 00:9820: 86 B1     STX ram_00B1_t001_prg_bank
C - - - - - 0x001832 00:9822: 4C 2B 98  JMP loc_982B



sub_0x001835_write_data_to_ppu_buffer:
C - - - - - 0x001835 00:9825: 48        PHA
C - - - - - 0x001836 00:9826: A9 80     LDA #con_prg_bank + $80
C - - - - - 0x001838 00:9828: 85 B1     STA ram_00B1_t001_prg_bank
C - - - - - 0x00183A 00:982A: 68        PLA
loc_982B:
C D 0 - - - 0x00183B 00:982B: 20 5E 98  JSR sub_985E_prepare_pointers
loc_982E_loop:
C D 0 - - - 0x00183E 00:982E: A9 01     LDA #$01
C - - - - - 0x001840 00:9830: 20 14 ED  JSR sub_0x03ED24_write_byte_to_buffer___unk_index
C - - - - - 0x001843 00:9833: 20 03 ED  JSR sub_0x03ED13_read_byte_from_another_bank
C - - - - - 0x001846 00:9836: 20 16 ED  JSR sub_0x03ED26_write_byte_to_buffer_X
C - - - - - 0x001849 00:9839: C8        INY
C - - - - - 0x00184A 00:983A: 20 03 ED  JSR sub_0x03ED13_read_byte_from_another_bank
C - - - - - 0x00184D 00:983D: 20 16 ED  JSR sub_0x03ED26_write_byte_to_buffer_X
C - - - - - 0x001850 00:9840: C8        INY
loc_9841_loop:
C D 0 - - - 0x001851 00:9841: 20 03 ED  JSR sub_0x03ED13_read_byte_from_another_bank
C - - - - - 0x001854 00:9844: C8        INY
C - - - - - 0x001855 00:9845: C9 FF     CMP #$FF
C - - - - - 0x001857 00:9847: D0 03     BNE bra_984C
; FF
C - - - - - 0x001859 00:9849: 4C 12 ED  JMP loc_0x03ED22_close_buffer
bra_984C:
C - - - - - 0x00185C 00:984C: C9 FE     CMP #$FE
C - - - - - 0x00185E 00:984E: F0 08     BEQ bra_9858_FE
C - - - - - 0x001860 00:9850: 25 02     AND ram_0002_t029_mask
C - - - - - 0x001862 00:9852: 20 16 ED  JSR sub_0x03ED26_write_byte_to_buffer_X
C - - - - - 0x001865 00:9855: 4C 41 98  JMP loc_9841_loop
bra_9858_FE:
C - - - - - 0x001868 00:9858: 20 12 ED  JSR sub_0x03ED22_close_buffer
C - - - - - 0x00186B 00:985B: 4C 2E 98  JMP loc_982E_loop



sub_985E_prepare_pointers:
; in
    ; A = data index
        ; +80 = 
C - - - - - 0x00186E 00:985E: 0A        ASL     ; C = 1 if A = 80+
C - - - - - 0x00186F 00:985F: A8        TAY
C - - - - - 0x001870 00:9860: B9 E4 98  LDA tbl_98E4,Y
C - - - - - 0x001873 00:9863: 85 00     STA ram_0000_t00A_data
C - - - - - 0x001875 00:9865: B9 E5 98  LDA tbl_98E4 + $01,Y
C - - - - - 0x001878 00:9868: 85 01     STA ram_0000_t00A_data + $01
C - - - - - 0x00187A 00:986A: A9 FF     LDA #$FF
C - - - - - 0x00187C 00:986C: 69 00     ADC #$00
C - - - - - 0x00187E 00:986E: 85 02     STA ram_0002_t029_mask    ; FF if C was = 0, otherwise 00
C - - - - - 0x001880 00:9870: A0 00     LDY #$00
C - - - - - 0x001882 00:9872: 60        RTS



sub_0x001883:
C - - - - - 0x001883 00:9873: 86 B1     STX ram_00B1_t001_prg_bank
C - - - - - 0x001885 00:9875: 20 5E 98  JSR sub_985E_prepare_pointers
loc_9878:
C D 0 - - - 0x001888 00:9878: A9 01     LDA #$01
C - - - - - 0x00188A 00:987A: 20 14 ED  JSR sub_0x03ED24_write_byte_to_buffer___unk_index
C - - - - - 0x00188D 00:987D: AD 90 07  LDA ram_0790    ; ppu lo
C - - - - - 0x001890 00:9880: 20 16 ED  JSR sub_0x03ED26_write_byte_to_buffer_X
C - - - - - 0x001893 00:9883: AD 91 07  LDA ram_0791    ; ppu hi
C - - - - - 0x001896 00:9886: 20 16 ED  JSR sub_0x03ED26_write_byte_to_buffer_X
loc_9889_loop:
C D 0 - - - 0x001899 00:9889: 20 03 ED  JSR sub_0x03ED13_read_byte_from_another_bank
C - - - - - 0x00189C 00:988C: C8        INY
C - - - - - 0x00189D 00:988D: C9 FF     CMP #$FF
C - - - - - 0x00189F 00:988F: F0 15     BEQ bra_98A6_FF
C - - - - - 0x0018A1 00:9891: C9 FE     CMP #$FE
C - - - - - 0x0018A3 00:9893: F0 08     BEQ bra_989D_FE
C - - - - - 0x0018A5 00:9895: 25 02     AND ram_0002_t029_mask
C - - - - - 0x0018A7 00:9897: 20 16 ED  JSR sub_0x03ED26_write_byte_to_buffer_X
C - - - - - 0x0018AA 00:989A: 4C 89 98  JMP loc_9889_loop
bra_989D_FE:
C - - - - - 0x0018AD 00:989D: 20 12 ED  JSR sub_0x03ED22_close_buffer
C - - - - - 0x0018B0 00:98A0: 20 A9 98  JSR sub_98A9
C - - - - - 0x0018B3 00:98A3: 4C 78 98  JMP loc_9878
bra_98A6_FF:
C - - - - - 0x0018B6 00:98A6: 20 12 ED  JSR sub_0x03ED22_close_buffer
sub_98A9:
C - - - - - 0x0018B9 00:98A9: 18        CLC
C - - - - - 0x0018BA 00:98AA: AD 90 07  LDA ram_0790
C - - - - - 0x0018BD 00:98AD: 69 40     ADC #< $0040
C - - - - - 0x0018BF 00:98AF: 8D 90 07  STA ram_0790
C - - - - - 0x0018C2 00:98B2: AD 91 07  LDA ram_0791
C - - - - - 0x0018C5 00:98B5: 69 00     ADC #> $0040
C - - - - - 0x0018C7 00:98B7: 8D 91 07  STA ram_0791
C - - - - - 0x0018CA 00:98BA: 29 08     AND #$08
C - - - - - 0x0018CC 00:98BC: D0 1E     BNE bra_98DC
C - - - - - 0x0018CE 00:98BE: AD 91 07  LDA ram_0791
C - - - - - 0x0018D1 00:98C1: C9 23     CMP #$23
C - - - - - 0x0018D3 00:98C3: 90 1E     BCC bra_98E3_RTS
bra_98C5_loop:
C - - - - - 0x0018D5 00:98C5: AD 90 07  LDA ram_0790
C - - - - - 0x0018D8 00:98C8: C9 C0     CMP #$C0
C - - - - - 0x0018DA 00:98CA: 90 17     BCC bra_98E3_RTS
C - - - - - 0x0018DC 00:98CC: AD 91 07  LDA ram_0791
C - - - - - 0x0018DF 00:98CF: 49 0B     EOR #$0B
C - - - - - 0x0018E1 00:98D1: 8D 91 07  STA ram_0791
C - - - - - 0x0018E4 00:98D4: AD 90 07  LDA ram_0790
C - - - - - 0x0018E7 00:98D7: 29 2D     AND #$2D
C - - - - - 0x0018E9 00:98D9: 8D 90 07  STA ram_0790
bra_98DC:
C - - - - - 0x0018EC 00:98DC: AD 91 07  LDA ram_0791
C - - - - - 0x0018EF 00:98DF: C9 2B     CMP #$2B
C - - - - - 0x0018F1 00:98E1: B0 E2     BCS bra_98C5_loop
bra_98E3_RTS:
C - - - - - 0x0018F3 00:98E3: 60        RTS



tbl_98E4:
; see con_98E4
- D 0 - - - 0x0018F4 00:98E4: 43 9B     .word _off003_9B43_00_opening
- - - - - - 0x0018F6 00:98E6: 33 9B     .word _off003_9B33_01   ; unused, index doesn't exist
- D 0 - - - 0x0018F8 00:98E8: 33 9B     .word _off003_9B33_02_konami_1990
- D 0 - - - 0x0018FA 00:98EA: 58 9B     .word _off003_9B58_03_game_over
- D 0 - - - 0x0018FC 00:98EC: AA 9B     .word _off003_9BAA_04
- D 0 - - - 0x0018FE 00:98EE: 87 9B     .word _off003_9B87_05
- - - - - - 0x001900 00:98F0: 25 9B     .word _off003_9B25_06   ; unused, index doesn't exist
- - - - - - 0x001902 00:98F2: 2C 9B     .word _off003_9B2C_07   ; unused, index doesn't exist
- - - - - - 0x001904 00:98F4: 7A 9B     .word _off003_9B7A_08_game_start   ; unused, index doesn't exist
- D 0 - - - 0x001906 00:98F6: 66 87     .word _off003_8766_09
- D 0 - - - 0x001908 00:98F8: 82 89     .word _off003_8982_0A_palette_Trevor
- D 0 - - - 0x00190A 00:98FA: A8 89     .word _off003_89A8_0B_palette_Sypha
- D 0 - - - 0x00190C 00:98FC: 95 89     .word _off003_8995_0C_palette_Grant
- D 0 - - - 0x00190E 00:98FE: BB 89     .word _off003_89BB_0D_palette_Alucard
- D 0 - - - 0x001910 00:9900: B4 99     .word _off003_99B4_0E_hud
- D 0 - - - 0x001912 00:9902: FE 99     .word _off003_99FE_0F
- D 0 - - - 0x001914 00:9904: 1C 9A     .word _off003_9A1C_10
- D 0 - - - 0x001916 00:9906: 0D 9A     .word _off003_9A0D_11
- D 0 - - - 0x001918 00:9908: 2B 9A     .word _off003_9A2B_12
- - - - - - 0x00191A 00:990A: C3 9B     .word _off003_9BC3_13   ; unused, index doesn't exist
- D 0 - - - 0x00191C 00:990C: C3 9B     .word _off003_9BC3_14
- D 0 - - - 0x00191E 00:990E: D6 9B     .word _off003_9BD6_15
- D 0 - - - 0x001920 00:9910: E9 9B     .word _off003_9BE9_16
- D 0 - - - 0x001922 00:9912: FC 9B     .word _off003_9BFC_17
- D 0 - - - 0x001924 00:9914: B0 9B     .word _off003_9BB0_18
- D 0 - - - 0x001926 00:9916: 11 9C     .word _off003_9C11_19
- D 0 - - - 0x001928 00:9918: 24 9C     .word _off003_9C24_1A
- D 0 - - - 0x00192A 00:991A: 37 9C     .word _off003_9C37_1B
- D 0 - - - 0x00192C 00:991C: 4A 9C     .word _off003_9C4A_1C
- D 0 - - - 0x00192E 00:991E: 5D 9C     .word _off003_9C5D_1D
- D 0 - - - 0x001930 00:9920: 70 9C     .word _off003_9C70_1E
- D 0 - - - 0x001932 00:9922: 93 9C     .word _off003_9C93_1F
- - - - - - 0x001934 00:9924: 99 9A     .word _off003_9A99_20
- - - - - - 0x001936 00:9926: 74 9D     .word _off003_9D74_21   ; unused, index doesn't exist
- D 0 - - - 0x001938 00:9928: 74 9D     .word _off003_9D74_22_not_complete_try_again
- D 0 - - - 0x00193A 00:992A: 8F 9D     .word _off003_9D8F_23
- - - - - - 0x00193C 00:992C: 74 9D     .word _off003_9D74_24   ; unused, index doesn't exist
- - - - - - 0x00193E 00:992E: 74 9D     .word _off003_9D74_25   ; unused, index doesn't exist
- D 0 - - - 0x001940 00:9930: 4D 9B     .word _off003_9B4D_26_password
- D 0 - - - 0x001942 00:9932: 64 9B     .word _off003_9B64_27_continue
- D 0 - - - 0x001944 00:9934: 6F 9B     .word _off003_9B6F_28_password
- D 0 - - - 0x001946 00:9936: A0 07     .word ram_07A0     ; 29 custom palette
- D 0 - - - 0x001948 00:9938: B6 9C     .word _off003_9CB6_2A
- D 0 - - - 0x00194A 00:993A: C9 9C     .word _off003_9CC9_2B
- D 0 - - - 0x00194C 00:993C: EF 9C     .word _off003_9CEF_2C
- D 0 - - - 0x00194E 00:993E: DC 9C     .word _off003_9CDC_2D
- D 0 - - - 0x001950 00:9940: 02 9D     .word _off003_9D02_2E
- D 0 - - - 0x001952 00:9942: 15 9D     .word _off003_9D15_2F
- D 0 - - - 0x001954 00:9944: 3B 9D     .word _off003_9D3B_30
- D 0 - - - 0x001956 00:9946: 28 9D     .word _off003_9D28_31
- D 0 - - - 0x001958 00:9948: EF BB     .word _off003_0x023BFF_32
- D 0 - - - 0x00195A 00:994A: 16 BC     .word _off003_0x023C26_33
- D 0 - - - 0x00195C 00:994C: 31 BC     .word _off003_0x023C41_34
- D 0 - - - 0x00195E 00:994E: 50 BC     .word _off003_0x023C60_35
- D 0 - - - 0x001960 00:9950: 84 BC     .word _off003_0x023C94_36
- D 0 - - - 0x001962 00:9952: B6 BC     .word _off003_0x023CC6_37
- D 0 - - - 0x001964 00:9954: FF BC     .word _off003_0x023D0F_38
- D 0 - - - 0x001966 00:9956: C0 BA     .word _off003_0x02BAD0_39
- D 0 - - - 0x001968 00:9958: EF BA     .word _off003_0x02BAFF_3A
- D 0 - - - 0x00196A 00:995A: 0D BB     .word _off003_0x02BB1D_3B
- D 0 - - - 0x00196C 00:995C: 29 BB     .word _off003_0x02BB39_3C
- D 0 - - - 0x00196E 00:995E: 4B BB     .word _off003_0x02BB5B_3D
- D 0 - - - 0x001970 00:9960: 6B BB     .word _off003_0x02BB7B_3E
- D 0 - - - 0x001972 00:9962: 8C BB     .word _off003_0x02BB9C_3F
- D 0 - - - 0x001974 00:9964: AE BB     .word _off003_0x02BBBE_40
- D 0 - - - 0x001976 00:9966: CE BB     .word _off003_0x02BBDE_41
- D 0 - - - 0x001978 00:9968: E8 BB     .word _off003_0x02BBF8_42
- D 0 - - - 0x00197A 00:996A: F7 BB     .word _off003_0x02BC07_43
- D 0 - - - 0x00197C 00:996C: 10 BC     .word _off003_0x02BC20_44
- D 0 - - - 0x00197E 00:996E: 2E BC     .word _off003_0x02BC3E_45
- D 0 - - - 0x001980 00:9970: 4E BC     .word _off003_0x02BC5E_46
- D 0 - - - 0x001982 00:9972: 13 9B     .word _off003_9B13_47
- D 0 - - - 0x001984 00:9974: AC 9A     .word _off003_9AAC_48
- D 0 - - - 0x001986 00:9976: E6 9A     .word _off003_9AE6_49
- D 0 - - - 0x001988 00:9978: 60 9A     .word _off003_9A60_4A
- D 0 - - - 0x00198A 00:997A: 73 9A     .word _off003_9A73_4B
- D 0 - - - 0x00198C 00:997C: 86 9A     .word _off003_9A86_4C
- D 0 - - - 0x00198E 00:997E: 6C BC     .word _off003_0x02BC7C_4D
- - - - - - 0x001990 00:9980: 6C BC     .word _off003_0x02BC7C_4E   ; unused, index doesn't exist
- D 0 - - - 0x001992 00:9982: 77 BC     .word _off003_0x02BC87_4F
- D 0 - - - 0x001994 00:9984: 95 BC     .word _off003_0x02BCA5_50
- D 0 - - - 0x001996 00:9986: B0 BC     .word _off003_0x02BCC0_51
- D 0 - - - 0x001998 00:9988: CF BC     .word _off003_0x02BCDF_52
- D 0 - - - 0x00199A 00:998A: EC BC     .word _off003_0x02BCFC_53
- D 0 - - - 0x00199C 00:998C: C0 BD     .word _off003_0x02BDD0_54
- D 0 - - - 0x00199E 00:998E: 17 BD     .word _off003_0x02BD27_55
- D 0 - - - 0x0019A0 00:9990: 38 BD     .word _off003_0x02BD48_56
- D 0 - - - 0x0019A2 00:9992: 52 BD     .word _off003_0x02BD62_57
- D 0 - - - 0x0019A4 00:9994: 6F BD     .word _off003_0x02BD7F_58
- D 0 - - - 0x0019A6 00:9996: 8E BD     .word _off003_0x02BD9E_59
- D 0 - - - 0x0019A8 00:9998: A6 BD     .word _off003_0x02BDB6_5A
- D 0 - - - 0x0019AA 00:999A: B1 BD     .word _off003_0x023DC1_5B
- D 0 - - - 0x0019AC 00:999C: D5 BD     .word _off003_0x023DE5_5C
- D 0 - - - 0x0019AE 00:999E: 4D 9A     .word _off003_9A4D_5D
- D 0 - - - 0x0019B0 00:99A0: 4E 9D     .word _off003_9D4E_5E
- D 0 - - - 0x0019B2 00:99A2: 3A 9A     .word _off003_9A3A_5F
- D 0 - - - 0x0019B4 00:99A4: 29 BB     .word _off003_0x02BB39_60
- D 0 - - - 0x0019B6 00:99A6: 4B BB     .word _off003_0x02BB5B_61
- D 0 - - - 0x0019B8 00:99A8: 61 9D     .word _off003_9D61_62
- - - - - - 0x0019BA 00:99AA: B6 BC     .word _off003_0x023CC6_63   ; unused, index doesn't exist
- - - - - - 0x0019BC 00:99AC: FF BC     .word _off003_0x023D0F_64   ; unused, index doesn't exist
- D 0 - - - 0x0019BE 00:99AE: 2E BD     .word _off003_0x023D3E_65
- D 0 - - - 0x0019C0 00:99B0: 5C BD     .word _off003_0x023D6C_66
- D 0 - - - 0x0019C2 00:99B2: A2 85     .word _off003_0x032295_67



_off003_99B4_0E_hud:
- D 0 - I - 0x0019C4 00:99B4: 40 20     .word $2040 ; ppu address
- D 0 - I - 0x0019C6 00:99B6: 62        .byte $62, $52, $5E, $61, $54, $4D   ; SCORE-

- D 0 - I - 0x0019CC 00:99BC: FE        .byte $FE   ; continue

- D 0 - I - 0x0019CD 00:99BD: 4D 20     .word $204D ; ppu address
- D 0 - I - 0x0019CF 00:99BF: 63        .byte $63, $58, $5C, $54   ; TIME

- D 0 - I - 0x0019D3 00:99C3: FE        .byte $FE   ; continue

- D 0 - I - 0x0019D4 00:99C4: 57 20     .word $2057 ; ppu address
- D 0 - I - 0x0019D6 00:99C6: 51        .byte $51, $5B, $5A, $00, $00, $4D, $41   ; BLK  -0

- D 0 - I - 0x0019DD 00:99CD: FE        .byte $FE   ; continue

- D 0 - I - 0x0019DE 00:99CE: 60 20     .word $2060 ; ppu address
- D 0 - I - 0x0019E0 00:99D0: 5F        .byte $5F, $5B, $50, $68, $54, $61   ; PLAYER

- D 0 - I - 0x0019E6 00:99D6: FE        .byte $FE   ; continue

- D 0 - I - 0x0019E7 00:99D7: 80 20     .word $2080 ; ppu address
- D 0 - I - 0x0019E9 00:99D9: 54        .byte $54, $5D, $54, $5C, $68   ; ENEMY

- D 0 - I - 0x0019EE 00:99DE: FE        .byte $FE   ; continue

- D 0 - I - 0x0019EF 00:99DF: 75 20     .word $2075 ; ppu address
- D 0 - I - 0x0019F1 00:99E1: 91        .byte $91, $4C   ; 

- D 0 - I - 0x0019F3 00:99E3: FE        .byte $FE   ; continue

- D 0 - I - 0x0019F4 00:99E4: 95 20     .word $2095 ; ppu address
- D 0 - I - 0x0019F6 00:99E6: 5F        .byte $5F, $4C   ; 

- D 0 - I - 0x0019F8 00:99E8: FE        .byte $FE   ; continue

- D 0 - I - 0x0019F9 00:99E9: 70 20     .word $2070 ; ppu address
- D 0 - I - 0x0019FB 00:99EB: 80        .byte $80, $81, $81, $82   ; 

- D 0 - I - 0x0019FF 00:99EF: FE        .byte $FE   ; continue

- D 0 - I - 0x001A00 00:99F0: 90 20     .word $2090 ; ppu address
- D 0 - I - 0x001A02 00:99F2: 90        .byte $90, $00, $00, $92   ; 

- D 0 - I - 0x001A06 00:99F6: FE        .byte $FE   ; continue

- D 0 - I - 0x001A07 00:99F7: B0 20     .word $20B0 ; ppu address
- D 0 - I - 0x001A09 00:99F9: A0        .byte $A0, $A1, $A1, $A2   ; 

- D 0 - I - 0x001A0D 00:99FD: FF        .byte $FF   ; end token



_off003_99FE_0F:
- D 0 - I - 0x001A0E 00:99FE: 7D 20     .word $207D ; ppu address
- D 0 - I - 0x001A10 00:9A00: 88        .byte $88, $89   ; 

- D 0 - I - 0x001A12 00:9A02: FE        .byte $FE   ; continue

- D 0 - I - 0x001A13 00:9A03: 9D 20     .word $209D ; ppu address
- D 0 - I - 0x001A15 00:9A05: 98        .byte $98, $99   ; 

- D 0 - I - 0x001A17 00:9A07: FE        .byte $FE   ; continue

- D 0 - I - 0x001A18 00:9A08: BD 20     .word $20BD ; ppu address
- D 0 - I - 0x001A1A 00:9A0A: A8        .byte $A8, $A9   ; 

- D 0 - I - 0x001A1C 00:9A0C: FF        .byte $FF   ; end token



_off003_9A0D_11:
- D 0 - I - 0x001A1D 00:9A0D: 7D 20     .word $207D ; ppu address
- D 0 - I - 0x001A1F 00:9A0F: 8A        .byte $8A, $8B   ; 

- D 0 - I - 0x001A21 00:9A11: FE        .byte $FE   ; continue

- D 0 - I - 0x001A22 00:9A12: 9D 20     .word $209D ; ppu address
- D 0 - I - 0x001A24 00:9A14: 9A        .byte $9A, $9B   ; 

- D 0 - I - 0x001A26 00:9A16: FE        .byte $FE   ; continue

- D 0 - I - 0x001A27 00:9A17: BD 20     .word $20BD ; ppu address
- D 0 - I - 0x001A29 00:9A19: AA        .byte $AA, $AB   ; 

- D 0 - I - 0x001A2B 00:9A1B: FF        .byte $FF   ; end token



_off003_9A1C_10:
- D 0 - I - 0x001A2C 00:9A1C: 7D 20     .word $207D ; ppu address
- D 0 - I - 0x001A2E 00:9A1E: 8C        .byte $8C, $8D   ; 

- D 0 - I - 0x001A30 00:9A20: FE        .byte $FE   ; continue

- D 0 - I - 0x001A31 00:9A21: 9D 20     .word $209D ; ppu address
- D 0 - I - 0x001A33 00:9A23: 9C        .byte $9C, $9D   ; 

- D 0 - I - 0x001A35 00:9A25: FE        .byte $FE   ; continue

- D 0 - I - 0x001A36 00:9A26: BD 20     .word $20BD ; ppu address
- D 0 - I - 0x001A38 00:9A28: AC        .byte $AC, $AD   ; 

- D 0 - I - 0x001A3A 00:9A2A: FF        .byte $FF   ; end token



_off003_9A2B_12:
- D 0 - I - 0x001A3B 00:9A2B: 7D 20     .word $207D ; ppu address
- D 0 - I - 0x001A3D 00:9A2D: 8E        .byte $8E, $8F   ; 

- D 0 - I - 0x001A3F 00:9A2F: FE        .byte $FE   ; continue

- D 0 - I - 0x001A40 00:9A30: 9D 20     .word $209D ; ppu address
- D 0 - I - 0x001A42 00:9A32: 9E        .byte $9E, $9F   ; 

- D 0 - I - 0x001A44 00:9A34: FE        .byte $FE   ; continue

- D 0 - I - 0x001A45 00:9A35: BD 20     .word $20BD ; ppu address
- D 0 - I - 0x001A47 00:9A37: AE        .byte $AE, $AF   ; 

- D 0 - I - 0x001A49 00:9A39: FF        .byte $FF   ; end token



_off003_9A3A_5F:
- D 0 - I - 0x001A4A 00:9A3A: 00 3F     .word $3F00 ; ppu address
- D 0 - I - 0x001A4C 00:9A3C: 0F        .byte $0F, $16, $26, $20   ; 
- D 0 - I - 0x001A50 00:9A40: 0F        .byte $0F, $00, $04, $10   ; 
- D 0 - I - 0x001A54 00:9A44: 0F        .byte $0F, $02, $14, $27   ; 
- D 0 - I - 0x001A58 00:9A48: 0F        .byte $0F, $02, $04, $14   ; 

- D 0 - I - 0x001A5C 00:9A4C: FF        .byte $FF   ; end token



_off003_9A4D_5D:
- D 0 - I - 0x001A5D 00:9A4D: 00 3F     .word $3F00 ; ppu address
- D 0 - I - 0x001A5F 00:9A4F: 0F        .byte $0F, $16, $26, $20   ; 
- D 0 - I - 0x001A63 00:9A53: 0F        .byte $0F, $16, $27, $10   ; 
- D 0 - I - 0x001A67 00:9A57: 0F        .byte $0F, $07, $0F, $0F   ; 
- D 0 - I - 0x001A6B 00:9A5B: 0F        .byte $0F, $07, $0F, $27   ; 

- D 0 - I - 0x001A6F 00:9A5F: FF        .byte $FF   ; end token



_off003_9A60_4A:
- D 0 - I - 0x001A70 00:9A60: 00 3F     .word $3F00 ; ppu address
- D 0 - I - 0x001A72 00:9A62: 0F        .byte $0F, $16, $26, $20   ; 
- D 0 - I - 0x001A76 00:9A66: 0F        .byte $0F, $07, $17, $27   ; 
- D 0 - I - 0x001A7A 00:9A6A: 0F        .byte $0F, $07, $0F, $0F   ; 
- D 0 - I - 0x001A7E 00:9A6E: 0F        .byte $0F, $07, $0F, $27   ; 

- D 0 - I - 0x001A82 00:9A72: FF        .byte $FF   ; end token



_off003_9A73_4B:
- D 0 - I - 0x001A83 00:9A73: 00 3F     .word $3F00 ; ppu address
- D 0 - I - 0x001A85 00:9A75: 0F        .byte $0F, $16, $26, $20   ; 
- D 0 - I - 0x001A89 00:9A79: 0F        .byte $0F, $07, $27, $37   ; 
- D 0 - I - 0x001A8D 00:9A7D: 0F        .byte $0F, $07, $0F, $11   ; 
- D 0 - I - 0x001A91 00:9A81: 0F        .byte $0F, $07, $11, $27   ; 

- D 0 - I - 0x001A95 00:9A85: FF        .byte $FF   ; end token



_off003_9A86_4C:
- D 0 - I - 0x001A96 00:9A86: 00 3F     .word $3F00 ; ppu address
- D 0 - I - 0x001A98 00:9A88: 0F        .byte $0F, $16, $26, $20   ; 
- D 0 - I - 0x001A9C 00:9A8C: 0F        .byte $0F, $17, $27, $37   ; 
- D 0 - I - 0x001AA0 00:9A90: 0F        .byte $0F, $17, $21, $31   ; 
- D 0 - I - 0x001AA4 00:9A94: 0F        .byte $0F, $07, $31, $37   ; 

- D 0 - I - 0x001AA8 00:9A98: FF        .byte $FF   ; end token



_off003_9A99_20:
- - - - - - 0x001AA9 00:9A99: 00 3F     .word $3F00 ; ppu address
- - - - - - 0x001AAB 00:9A9B: 0F        .byte $0F, $16, $26, $20   ; 
- - - - - - 0x001AAF 00:9A9F: 0F        .byte $0F, $22, $12, $20   ; 
- - - - - - 0x001AB3 00:9AA3: 0F        .byte $0F, $22, $0F, $0F   ; 
- - - - - - 0x001AB7 00:9AA7: 0F        .byte $0F, $22, $0F, $20   ; 

- - - - - - 0x001ABB 00:9AAB: FF        .byte $FF   ; end token



_off003_9AAC_48:
- D 0 - I - 0x001ABC 00:9AAC: 0F 25     .word $250F ; ppu address
- D 0 - I - 0x001ABE 00:9AAE: 4E        .byte $4E, $7D, $7D, $4F   ; 

- D 0 - I - 0x001AC2 00:9AB2: FE        .byte $FE   ; continue

- D 0 - I - 0x001AC3 00:9AB3: 2E 25     .word $252E ; ppu address
- D 0 - I - 0x001AC5 00:9AB5: 5E        .byte $5E, $78, $78, $78, $78, $5F   ; 

- D 0 - I - 0x001ACB 00:9ABB: FE        .byte $FE   ; continue

- D 0 - I - 0x001ACC 00:9ABC: 4E 25     .word $254E ; ppu address
- D 0 - I - 0x001ACE 00:9ABE: 6E        .byte $6E, $7E, $78, $78, $7F, $6F   ; 

- D 0 - I - 0x001AD4 00:9AC4: FE        .byte $FE   ; continue

- D 0 - I - 0x001AD5 00:9AC5: 6D 25     .word $256D ; ppu address
- D 0 - I - 0x001AD7 00:9AC7: 40        .byte $40, $41, $42, $43, $44, $45, $46, $47   ; 

- D 0 - I - 0x001ADF 00:9ACF: FE        .byte $FE   ; continue

- D 0 - I - 0x001AE0 00:9AD0: 8D 25     .word $258D ; ppu address
- D 0 - I - 0x001AE2 00:9AD2: 50        .byte $50, $51, $52, $53, $54, $55, $56, $57   ; 

- D 0 - I - 0x001AEA 00:9ADA: FE        .byte $FE   ; continue

- D 0 - I - 0x001AEB 00:9ADB: AD 25     .word $25AD ; ppu address
- D 0 - I - 0x001AED 00:9ADD: 60        .byte $60, $61, $62, $63, $64, $65, $66, $67   ; 

- D 0 - I - 0x001AF5 00:9AE5: FF        .byte $FF   ; end token



_off003_9AE6_49:
- D 0 - I - 0x001AF6 00:9AE6: CD 25     .word $25CD ; ppu address
- D 0 - I - 0x001AF8 00:9AE8: 70        .byte $70, $71, $72, $73, $74, $75, $76, $77   ; 

- D 0 - I - 0x001B00 00:9AF0: FE        .byte $FE   ; continue

- D 0 - I - 0x001B01 00:9AF1: EE 25     .word $25EE ; ppu address
- D 0 - I - 0x001B03 00:9AF3: 48        .byte $48, $49, $4A, $4B, $4C, $4D   ; 

- D 0 - I - 0x001B09 00:9AF9: FE        .byte $FE   ; continue

- D 0 - I - 0x001B0A 00:9AFA: 0E 26     .word $260E ; ppu address
- D 0 - I - 0x001B0C 00:9AFC: 58        .byte $58, $59, $5A, $5B, $5C, $5D   ; 

- D 0 - I - 0x001B12 00:9B02: FE        .byte $FE   ; continue

- D 0 - I - 0x001B13 00:9B03: 2E 26     .word $262E ; ppu address
- D 0 - I - 0x001B15 00:9B05: 68        .byte $68, $69, $6A, $6B, $6C, $6D   ; 

- D 0 - I - 0x001B1B 00:9B0B: FE        .byte $FE   ; continue

- D 0 - I - 0x001B1C 00:9B0C: 4F 26     .word $264F ; ppu address
- D 0 - I - 0x001B1E 00:9B0E: 79        .byte $79, $7A, $7B, $7C   ; 

- D 0 - I - 0x001B22 00:9B12: FF        .byte $FF   ; end token



_off003_9B13_47:
- D 0 - I - 0x001B23 00:9B13: D3 27     .word $27D3 ; ppu address
- D 0 - I - 0x001B25 00:9B15: 55        .byte $55, $55, $55   ; 

- D 0 - I - 0x001B28 00:9B18: FE        .byte $FE   ; continue

- D 0 - I - 0x001B29 00:9B19: DB 27     .word $27DB ; ppu address
- D 0 - I - 0x001B2B 00:9B1B: 59        .byte $59, $7B, $55   ; 

- D 0 - I - 0x001B2E 00:9B1E: FE        .byte $FE   ; continue

- D 0 - I - 0x001B2F 00:9B1F: E3 27     .word $27E3 ; ppu address
- D 0 - I - 0x001B31 00:9B21: 55        .byte $55, $55, $55   ; 

- D 0 - I - 0x001B34 00:9B24: FF        .byte $FF   ; end token



_off003_9B25_06:
; bzk garbage
- - - - - - 0x001B35 00:9B25: 0E 22     .word $220E ; ppu address
- - - - - - 0x001B37 00:9B27: 47        .byte $47, $41, $4D, $45   ; 

- - - - - - 0x001B3B 00:9B2B: FF        .byte $FF   ; end token



_off003_9B2C_07:
; bzk garbage
- - - - - - 0x001B3C 00:9B2C: 0E 22     .word $220E ; ppu address
- - - - - - 0x001B3E 00:9B2E: 44        .byte $44, $45, $4D, $4F   ; 

- - - - - - 0x001B42 00:9B32: FF        .byte $FF   ; end token



_off003_9B33_01:
_off003_9B33_02_konami_1990:
- D 0 - I - 0x001B43 00:9B33: CA 22     .word $22CA ; ppu address
- D 0 - I - 0x001B45 00:9B35: 21        .byte $21, $00, $5A, $5E, $5D, $50, $5C, $58, $00, $42, $4A, $4A, $41   ; KONAMI 1990

- D 0 - I - 0x001B52 00:9B42: FF        .byte $FF   ; end token



_off003_9B43_00_opening:
; flashes when this option is selected
- D 0 - I - 0x001B53 00:9B43: 27 23     .word $2327 ; ppu address
- D 0 - I - 0x001B55 00:9B45: 1E        .byte $1E, $1F, $14, $1D, $18, $1D, $16   ; OPENING

- D 0 - I - 0x001B5C 00:9B4C: FF        .byte $FF   ; end token



_off003_9B4D_26_password:
; flashes when this option is selected
- D 0 - I - 0x001B5D 00:9B4D: 32 23     .word $2332 ; ppu address
- D 0 - I - 0x001B5F 00:9B4F: 1F        .byte $1F, $10, $22, $22, $26, $1E, $21, $13   ; PASSWORD

- D 0 - I - 0x001B67 00:9B57: FF        .byte $FF   ; end token



_off003_9B58_03_game_over:
- D 0 - I - 0x001B68 00:9B58: EC 21     .word $21EC ; ppu address
- D 0 - I - 0x001B6A 00:9B5A: 56        .byte $56, $50, $5C, $54, $00, $5E, $65, $54, $61   ; GAME OVER

- D 0 - I - 0x001B73 00:9B63: FF        .byte $FF   ; end token



_off003_9B64_27_continue:
- D 0 - I - 0x001B74 00:9B64: 8C 22     .word $228C ; ppu address
- D 0 - I - 0x001B76 00:9B66: 52        .byte $52, $5E, $5D, $63, $58, $5D, $64, $54   ; CONTINUE

- D 0 - I - 0x001B7E 00:9B6E: FF        .byte $FF   ; end token



_off003_9B6F_28_password:
- D 0 - I - 0x001B7F 00:9B6F: EC 22     .word $22EC ; ppu address
- D 0 - I - 0x001B81 00:9B71: 5F        .byte $5F, $50, $62, $62, $66, $5E, $61, $53   ; PASSWORD

- D 0 - I - 0x001B89 00:9B79: FF        .byte $FF   ; end token



_off003_9B7A_08_game_start:
; bzk garbage
- - - - - - 0x001B8A 00:9B7A: CD 22     .word $22CD ; ppu address
- - - - - - 0x001B8C 00:9B7C: 56        .byte $56, $50, $5C, $54, $00, $62, $63, $50, $61, $63   ; GAME START

- - - - - - 0x001B96 00:9B86: FF        .byte $FF   ; end token



_off003_9B87_05:
- D 0 - I - 0x001B97 00:9B87: 00 3F     .word $3F00 ; ppu address
; background colors
- D 0 - I - 0x001B99 00:9B89: 0F        .byte $0F, $16, $05, $20   ; 
- D 0 - I - 0x001B9D 00:9B8D: 0F        .byte $0F, $13, $02, $20   ; 
- D 0 - I - 0x001BA1 00:9B91: 0F        .byte $0F, $14, $03, $3B   ; 
- D 0 - I - 0x001BA5 00:9B95: 0F        .byte $0F, $16, $27, $10   ; 
; sprite colors
- D 0 - I - 0x001BA9 00:9B99: 0F        .byte $0F, $0C, $26, $30   ; 
- D 0 - I - 0x001BAD 00:9B9D: 0F        .byte $0F, $0C, $2C, $30   ; 
- D 0 - I - 0x001BB1 00:9BA1: 0F        .byte $0F, $12, $26, $30   ; 
- D 0 - I - 0x001BB5 00:9BA5: 0F        .byte $0F, $06, $30, $30   ; 

- D 0 - I - 0x001BB9 00:9BA9: FE        .byte $FE   ; continue
_off003_9BAA_04:    ; ???
- D 0 - I - 0x001BBA 00:9BAA: 00 3F     .word $3F00 ; ppu address

- D 0 - I - 0x001BBC 00:9BAC: FE        .byte $FE   ; continue

- D 0 - I - 0x001BBD 00:9BAD: 00 00     .word $0000 ; ppu address

- D 0 - I - 0x001BBF 00:9BAF: FF        .byte $FF   ; end token



_off003_9BB0_18:
- D 0 - I - 0x001BC0 00:9BB0: 00 3F     .word $3F00 ; ppu address
- D 0 - I - 0x001BC2 00:9BB2: 0F        .byte $0F, $07, $17, $20   ; 
- D 0 - I - 0x001BC6 00:9BB6: 0F        .byte $0F, $07, $17, $20   ; 
- D 0 - I - 0x001BCA 00:9BBA: 0F        .byte $0F, $01, $09, $08   ; 
- D 0 - I - 0x001BCE 00:9BBE: 0F        .byte $0F, $01, $0B, $10   ; 

- D 0 - I - 0x001BD2 00:9BC2: FF        .byte $FF   ; end token



_off003_9BC3_13:
_off003_9BC3_14:
- D 0 - I - 0x001BD3 00:9BC3: 00 3F     .word $3F00 ; ppu address
- D 0 - I - 0x001BD5 00:9BC5: 0F        .byte $0F, $07, $17, $20   ; 
- D 0 - I - 0x001BD9 00:9BC9: 0F        .byte $0F, $01, $12, $20   ; 
- D 0 - I - 0x001BDD 00:9BCD: 0F        .byte $0F, $01, $09, $08   ; 
- D 0 - I - 0x001BE1 00:9BD1: 0F        .byte $0F, $01, $0B, $10   ; 

- D 0 - I - 0x001BE5 00:9BD5: FF        .byte $FF   ; end token



_off003_9BD6_15:
- D 0 - I - 0x001BE6 00:9BD6: 00 3F     .word $3F00 ; ppu address
- D 0 - I - 0x001BE8 00:9BD8: 0F        .byte $0F, $07, $17, $20   ; 
- D 0 - I - 0x001BEC 00:9BDC: 0F        .byte $0F, $01, $21, $31   ; 
- D 0 - I - 0x001BF0 00:9BE0: 0F        .byte $0F, $01, $08, $28   ; 
- D 0 - I - 0x001BF4 00:9BE4: 0F        .byte $0F, $08, $18, $17   ; 

- D 0 - I - 0x001BF8 00:9BE8: FF        .byte $FF   ; end token



_off003_9BE9_16:
- D 0 - I - 0x001BF9 00:9BE9: 00 3F     .word $3F00 ; ppu address
- D 0 - I - 0x001BFB 00:9BEB: 0F        .byte $0F, $07, $17, $20   ; 
- D 0 - I - 0x001BFF 00:9BEF: 0F        .byte $0F, $06, $0B, $10   ; 
- D 0 - I - 0x001C03 00:9BF3: 0F        .byte $0F, $01, $03, $10   ; 
- D 0 - I - 0x001C07 00:9BF7: 0F        .byte $0F, $01, $1B, $3C   ; 

- D 0 - I - 0x001C0B 00:9BFB: FF        .byte $FF   ; end token



_off003_9BFC_17:
- D 0 - I - 0x001C0C 00:9BFC: 2C 21     .word $212C ; ppu address
- D 0 - I - 0x001C0E 00:9BFE: 38        .byte $38, $39, $3A   ; 

- D 0 - I - 0x001C11 00:9C01: FE        .byte $FE   ; continue

- D 0 - I - 0x001C12 00:9C02: 4C 21     .word $214C ; ppu address
- D 0 - I - 0x001C14 00:9C04: 55        .byte $55, $56   ; 

- D 0 - I - 0x001C16 00:9C06: FE        .byte $FE   ; continue

- D 0 - I - 0x001C17 00:9C07: 6C 21     .word $216C ; ppu address
- D 0 - I - 0x001C19 00:9C09: 75        .byte $75, $76, $B1   ; 

- D 0 - I - 0x001C1C 00:9C0C: FE        .byte $FE   ; continue

- D 0 - I - 0x001C1D 00:9C0D: 8D 21     .word $218D ; ppu address
- D 0 - I - 0x001C1F 00:9C0F: 87        .byte $87   ; 

- D 0 - I - 0x001C20 00:9C10: FF        .byte $FF   ; end token



_off003_9C11_19:
- D 0 - I - 0x001C21 00:9C11: 00 3F     .word $3F00 ; ppu address
- D 0 - I - 0x001C23 00:9C13: 0F        .byte $0F, $16, $26, $20   ; 
- D 0 - I - 0x001C27 00:9C17: 0F        .byte $0F, $0B, $1B, $01   ; 
- D 0 - I - 0x001C2B 00:9C1B: 0F        .byte $0F, $01, $11, $20   ; 
- D 0 - I - 0x001C2F 00:9C1F: 0F        .byte $0F, $31, $11, $21   ; 

- D 0 - I - 0x001C33 00:9C23: FF        .byte $FF   ; end token



_off003_9C24_1A:
- D 0 - I - 0x001C34 00:9C24: 00 3F     .word $3F00 ; ppu address
- D 0 - I - 0x001C36 00:9C26: 0F        .byte $0F, $16, $26, $20   ; 
- D 0 - I - 0x001C3A 00:9C2A: 0F        .byte $0F, $0B, $1B, $01   ; 
- D 0 - I - 0x001C3E 00:9C2E: 0F        .byte $0F, $11, $11, $31   ; 
- D 0 - I - 0x001C42 00:9C32: 0F        .byte $0F, $31, $11, $21   ; 

- D 0 - I - 0x001C46 00:9C36: FF        .byte $FF   ; end token



_off003_9C37_1B:
- D 0 - I - 0x001C47 00:9C37: 00 3F     .word $3F00 ; ppu address
- D 0 - I - 0x001C49 00:9C39: 0F        .byte $0F, $16, $26, $20   ; 
- D 0 - I - 0x001C4D 00:9C3D: 0F        .byte $0F, $0B, $1B, $01   ; 
- D 0 - I - 0x001C51 00:9C41: 0F        .byte $0F, $21, $11, $21   ; 
- D 0 - I - 0x001C55 00:9C45: 0F        .byte $0F, $31, $11, $21   ; 

- D 0 - I - 0x001C59 00:9C49: FF        .byte $FF   ; end token



_off003_9C4A_1C:
- D 0 - I - 0x001C5A 00:9C4A: 00 3F     .word $3F00 ; ppu address
- D 0 - I - 0x001C5C 00:9C4C: 0F        .byte $0F, $16, $26, $20   ; 
- D 0 - I - 0x001C60 00:9C50: 0F        .byte $0F, $0B, $1B, $01   ; 
- D 0 - I - 0x001C64 00:9C54: 0F        .byte $0F, $31, $11, $21   ; 
- D 0 - I - 0x001C68 00:9C58: 0F        .byte $0F, $31, $11, $21   ; 

- D 0 - I - 0x001C6C 00:9C5C: FF        .byte $FF   ; end token



_off003_9C5D_1D:
- D 0 - I - 0x001C6D 00:9C5D: 00 3F     .word $3F00 ; ppu address
- D 0 - I - 0x001C6F 00:9C5F: 0F        .byte $0F, $06, $16, $20   ; 
- D 0 - I - 0x001C73 00:9C63: 0F        .byte $0F, $0F, $00, $0A   ; 
- D 0 - I - 0x001C77 00:9C67: 0F        .byte $0F, $0F, $0B, $2C   ; 
- D 0 - I - 0x001C7B 00:9C6B: 0F        .byte $0F, $00, $2B, $3C   ; 

- D 0 - I - 0x001C7F 00:9C6F: FF        .byte $FF   ; end token



_off003_9C70_1E:
- D 0 - I - 0x001C80 00:9C70: 00 3F     .word $3F00 ; ppu address
; background colors
- D 0 - I - 0x001C82 00:9C72: 0F        .byte $0F, $08, $18, $38   ; 
- D 0 - I - 0x001C86 00:9C76: 0F        .byte $0F, $09, $0C, $2C   ; 
- D 0 - I - 0x001C8A 00:9C7A: 0F        .byte $0F, $09, $00, $10   ; 
- D 0 - I - 0x001C8E 00:9C7E: 0F        .byte $0F, $09, $13, $10   ; 
; sprite colors
- D 0 - I - 0x001C92 00:9C82: 0F        .byte $0F, $0F, $10, $20   ; 
- D 0 - I - 0x001C96 00:9C86: 0F        .byte $0F, $0F, $21, $38   ; 
- D 0 - I - 0x001C9A 00:9C8A: 0F        .byte $0F, $0F, $0F, $0F   ; 
- D 0 - I - 0x001C9E 00:9C8E: 0F        .byte $0F, $0F, $16, $25   ; 

- D 0 - I - 0x001CA2 00:9C92: FF        .byte $FF   ; end token



_off003_9C93_1F:
- D 0 - I - 0x001CA3 00:9C93: 00 3F     .word $3F00 ; ppu address
; background colors
- D 0 - I - 0x001CA5 00:9C95: 0F        .byte $0F, $16, $26, $20   ; 
- D 0 - I - 0x001CA9 00:9C99: 0F        .byte $0F, $00, $10, $1A   ; 
- D 0 - I - 0x001CAD 00:9C9D: 0F        .byte $0F, $00, $0B, $2C   ; 
- D 0 - I - 0x001CB1 00:9CA1: 0F        .byte $0F, $02, $00, $10   ; 
; sprite colors
- D 0 - I - 0x001CB5 00:9CA5: 0F        .byte $0F, $08, $26, $37   ; 
- D 0 - I - 0x001CB9 00:9CA9: 0F        .byte $0F, $0F, $22, $34   ; 
- D 0 - I - 0x001CBD 00:9CAD: 0F        .byte $0F, $0F, $0F, $0F   ; 
- D 0 - I - 0x001CC1 00:9CB1: 0F        .byte $0F, $0F, $16, $25   ; 

- D 0 - I - 0x001CC5 00:9CB5: FF        .byte $FF   ; end token



_off003_9CB6_2A:
- D 0 - I - 0x001CC6 00:9CB6: 00 3F     .word $3F00 ; ppu address
- D 0 - I - 0x001CC8 00:9CB8: 0F        .byte $0F, $0F, $26, $16   ; 
- D 0 - I - 0x001CCC 00:9CBC: 0F        .byte $0F, $0F, $07, $27   ; 
- D 0 - I - 0x001CD0 00:9CC0: 0F        .byte $0F, $0F, $02, $23   ; 
- D 0 - I - 0x001CD4 00:9CC4: 0F        .byte $0F, $0F, $19, $39   ; 

- D 0 - I - 0x001CD8 00:9CC8: FF        .byte $FF   ; end token



_off003_9CC9_2B:
- D 0 - I - 0x001CD9 00:9CC9: 10 3F     .word $3F10 ; ppu address
- D 0 - I - 0x001CDB 00:9CCB: 38        .byte $38, $08, $27, $38   ; 
- D 0 - I - 0x001CDF 00:9CCF: 38        .byte $38, $0F, $0C, $33   ; 
- D 0 - I - 0x001CE3 00:9CD3: 38        .byte $38, $21, $11, $20   ; 
- D 0 - I - 0x001CE7 00:9CD7: 38        .byte $38, $08, $18, $28   ; 

- D 0 - I - 0x001CEB 00:9CDB: FF        .byte $FF   ; end token



_off003_9CDC_2D:
- D 0 - I - 0x001CEC 00:9CDC: 10 3F     .word $3F10 ; ppu address
- D 0 - I - 0x001CEE 00:9CDE: 38        .byte $38, $08, $27, $38   ; 
- D 0 - I - 0x001CF2 00:9CE2: 38        .byte $38, $0F, $0C, $33   ; 
- D 0 - I - 0x001CF6 00:9CE6: 38        .byte $38, $0F, $15, $36   ; 
- D 0 - I - 0x001CFA 00:9CEA: 38        .byte $38, $08, $18, $28   ; 

- D 0 - I - 0x001CFE 00:9CEE: FF        .byte $FF   ; end token



_off003_9CEF_2C:
- D 0 - I - 0x001CFF 00:9CEF: 10 3F     .word $3F10 ; ppu address
- D 0 - I - 0x001D01 00:9CF1: 38        .byte $38, $08, $27, $38   ; 
- D 0 - I - 0x001D05 00:9CF5: 38        .byte $38, $0F, $0C, $33   ; 
- D 0 - I - 0x001D09 00:9CF9: 38        .byte $38, $08, $15, $38   ; 
- D 0 - I - 0x001D0D 00:9CFD: 38        .byte $38, $08, $18, $28   ; 

- D 0 - I - 0x001D11 00:9D01: FF        .byte $FF   ; end token



_off003_9D02_2E:
- D 0 - I - 0x001D12 00:9D02: 00 3F     .word $3F00 ; ppu address
- D 0 - I - 0x001D14 00:9D04: 0F        .byte $0F, $0F, $0F, $20   ; 
- D 0 - I - 0x001D18 00:9D08: 0F        .byte $0F, $0F, $0F, $0F   ; 
- D 0 - I - 0x001D1C 00:9D0C: 0F        .byte $0F, $0F, $0F, $0F   ; 
- D 0 - I - 0x001D20 00:9D10: 0F        .byte $0F, $0F, $0F, $0F   ; 

- D 0 - I - 0x001D24 00:9D14: FF        .byte $FF   ; end token



_off003_9D15_2F:
- D 0 - I - 0x001D25 00:9D15: 10 3F     .word $3F10 ; ppu address
- D 0 - I - 0x001D27 00:9D17: 0F        .byte $0F, $08, $27, $38   ; 
- D 0 - I - 0x001D2B 00:9D1B: 0F        .byte $0F, $0F, $0C, $33   ; 
- D 0 - I - 0x001D2F 00:9D1F: 0F        .byte $0F, $21, $11, $20   ; 
- D 0 - I - 0x001D33 00:9D23: 0F        .byte $0F, $08, $18, $28   ; 

- D 0 - I - 0x001D37 00:9D27: FF        .byte $FF   ; end token



_off003_9D28_31:
- D 0 - I - 0x001D38 00:9D28: 10 3F     .word $3F10 ; ppu address
- D 0 - I - 0x001D3A 00:9D2A: 0F        .byte $0F, $08, $27, $38   ; 
- D 0 - I - 0x001D3E 00:9D2E: 0F        .byte $0F, $0F, $0C, $33   ; 
- D 0 - I - 0x001D42 00:9D32: 0F        .byte $0F, $0F, $15, $36   ; 
- D 0 - I - 0x001D46 00:9D36: 0F        .byte $0F, $08, $18, $28   ; 

- D 0 - I - 0x001D4A 00:9D3A: FF        .byte $FF   ; end token



_off003_9D3B_30:
- D 0 - I - 0x001D4B 00:9D3B: 10 3F     .word $3F10 ; ppu address
- D 0 - I - 0x001D4D 00:9D3D: 0F        .byte $0F, $08, $27, $38   ; 
- D 0 - I - 0x001D51 00:9D41: 0F        .byte $0F, $0F, $0C, $33   ; 
- D 0 - I - 0x001D55 00:9D45: 0F        .byte $0F, $08, $15, $38   ; 
- D 0 - I - 0x001D59 00:9D49: 0F        .byte $0F, $08, $18, $28   ; 

- D 0 - I - 0x001D5D 00:9D4D: FF        .byte $FF   ; end token



_off003_9D4E_5E:
- D 0 - I - 0x001D5E 00:9D4E: 00 3F     .word $3F00 ; ppu address
- D 0 - I - 0x001D60 00:9D50: 0F        .byte $0F, $16, $05, $20   ; 
- D 0 - I - 0x001D64 00:9D54: 0F        .byte $0F, $13, $02, $20   ; 
- D 0 - I - 0x001D68 00:9D58: 0F        .byte $0F, $14, $03, $3B   ; 
- D 0 - I - 0x001D6C 00:9D5C: 0F        .byte $0F, $0F, $0F, $0F   ; 

- D 0 - I - 0x001D70 00:9D60: FF        .byte $FF   ; end token



_off003_9D61_62:
- D 0 - I - 0x001D71 00:9D61: 00 3F     .word $3F00 ; ppu address
- D 0 - I - 0x001D73 00:9D63: 0F        .byte $0F, $0F, $0F, $0F   ; 
- D 0 - I - 0x001D77 00:9D67: 0F        .byte $0F, $10, $05, $01   ; 
- D 0 - I - 0x001D7B 00:9D6B: 0F        .byte $0F, $0F, $0F, $0F   ; 
- D 0 - I - 0x001D7F 00:9D6F: 0F        .byte $0F, $0F, $0F, $0F   ; 

- D 0 - I - 0x001D83 00:9D73: FF        .byte $FF   ; end token



_off003_9D74_21:
_off003_9D74_22_not_complete_try_again:
_off003_9D74_24:
_off003_9D74_25:
- D 0 - I - 0x001D84 00:9D74: 2A 22     .word $222A ; ppu address
- D 0 - I - 0x001D86 00:9D76: 5D        .byte $5D, $5E, $63, $00, $52, $5E, $5C, $5F, $5B, $54, $63, $54   ; NOT COMPLETE

- D 0 - I - 0x001D92 00:9D82: FE        .byte $FE   ; continue

- D 0 - I - 0x001D93 00:9D83: 4B 22     .word $224B ; ppu address
- D 0 - I - 0x001D95 00:9D85: 63        .byte $63, $61, $68, $00, $50, $56, $50, $58, $5D   ; TRY AGAIN

- D 0 - I - 0x001D9E 00:9D8E: FF        .byte $FF   ; end token



_off003_9D8F_23:
- D 0 - I - 0x001D9F 00:9D8F: 08 22     .word $2208 ; ppu address
- D 0 - I - 0x001DA1 00:9D91: 86        .byte $86, $A4, $A4, $A4, $A4, $A4, $A4, $A4, $A4, $A4, $A4, $A4, $A4, $A4, $A4, $87   ; 

- D 0 - I - 0x001DB1 00:9DA1: FE        .byte $FE   ; continue

- D 0 - I - 0x001DB2 00:9DA2: 28 22     .word $2228 ; ppu address
- D 0 - I - 0x001DB4 00:9DA4: 96        .byte $96, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $97   ; 

- D 0 - I - 0x001DC4 00:9DB4: FE        .byte $FE   ; continue

- D 0 - I - 0x001DC5 00:9DB5: 48 22     .word $2248 ; ppu address
- D 0 - I - 0x001DC7 00:9DB7: 96        .byte $96, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $97   ; 

- D 0 - I - 0x001DD7 00:9DC7: FE        .byte $FE   ; continue

- D 0 - I - 0x001DD8 00:9DC8: 68 22     .word $2268 ; ppu address
- D 0 - I - 0x001DDA 00:9DCA: A6        .byte $A6, $A5, $A5, $A5, $A5, $A5, $A5, $A5, $A5, $A5, $A5, $A5, $A5, $A5, $A5, $A7   ; 

- D 0 - I - 0x001DEA 00:9DDA: FF        .byte $FF   ; end token



loc_0x001DEB:
C D 0 - - - 0x001DEB 00:9DDB: A5 6B     LDA ram_006B_subscript
C - - - - - 0x001DED 00:9DDD: 20 6D E8  JSR sub_0x03E87D_jump_to_pointers_after_JSR_A
- D 0 - I - 0x001DF0 00:9DE0: FA 9D     .word ofs_030_9DFA_00
- D 0 - I - 0x001DF2 00:9DE2: 51 9E     .word ofs_030_9E51_01
- D 0 - I - 0x001DF4 00:9DE4: 88 9E     .word ofs_030_9E88_02
- D 0 - I - 0x001DF6 00:9DE6: C5 9E     .word ofs_030_9EC5_03
- D 0 - I - 0x001DF8 00:9DE8: FF 9E     .word ofs_030_9EFF_04
- D 0 - I - 0x001DFA 00:9DEA: 19 9F     .word ofs_030_9F19_05
- D 0 - I - 0x001DFC 00:9DEC: 50 9F     .word ofs_030_9F50_06
- D 0 - I - 0x001DFE 00:9DEE: 91 9F     .word ofs_030_9F91_07
- D 0 - I - 0x001E00 00:9DF0: AC 9F     .word ofs_030_9FAC_08
- D 0 - I - 0x001E02 00:9DF2: F0 9F     .word ofs_030_9FF0_09
- D 0 - I - 0x001E04 00:9DF4: 08 A0     .word ofs_030_A008_0A
- D 0 - I - 0x001E06 00:9DF6: 28 A0     .word ofs_030_A028_0B
- D 0 - I - 0x001E08 00:9DF8: 50 A0     .word ofs_030_A050_0C



ofs_030_9DFA_00:
C - - J - - 0x001E0A 00:9DFA: A9 B0     LDA #$B0
C - - - - - 0x001E0C 00:9DFC: 85 FF     STA ram_for_2000
C - - - - - 0x001E0E 00:9DFE: A9 00     LDA #$00
C - - - - - 0x001E10 00:9E00: 85 31     STA ram_screen_timer_hi
C - - - - - 0x001E12 00:9E02: AA        TAX ; 00
bra_9E03_loop:  ; 07EC-07F3
C - - - - - 0x001E13 00:9E03: 9D EC 07  STA ram_07EC,X
C - - - - - 0x001E16 00:9E06: E8        INX
C - - - - - 0x001E17 00:9E07: E0 08     CPX #$08
C - - - - - 0x001E19 00:9E09: D0 F8     BNE bra_9E03_loop
C - - - - - 0x001E1B 00:9E0B: 20 95 E7  JSR sub_0x03E7A5
C - - - - - 0x001E1E 00:9E0E: A9 01     LDA #$01
C - - - - - 0x001E20 00:9E10: 85 2C     STA ram_002C_flag
C - - - - - 0x001E22 00:9E12: 20 66 E6  JSR sub_0x03E676
C - - - - - 0x001E25 00:9E15: 20 B4 A2  JSR sub_A2B4
C - - - - - 0x001E28 00:9E18: 20 27 E2  JSR sub_0x03E237_disable_sound_engine
C - - - - - 0x001E2B 00:9E1B: A9 44     LDA #$44
C - - - - - 0x001E2D 00:9E1D: 8D 05 51  STA $5105
C - - - - - 0x001E30 00:9E20: 20 FD EB  JSR sub_0x03EC0D_clear_nametables
C - - - - - 0x001E33 00:9E23: 20 47 A2  JSR sub_A247
C - - - - - 0x001E36 00:9E26: A4 A4     LDY ram_00A4_data_index
C - - - - - 0x001E38 00:9E28: B9 8B A4  LDA tbl_A48B,Y
C - - - - - 0x001E3B 00:9E2B: 8D ED 07  STA ram_07ED
C - - - - - 0x001E3E 00:9E2E: 29 1F     AND #$1F
C - - - - - 0x001E40 00:9E30: 8D F1 07  STA ram_07F1
C - - - - - 0x001E43 00:9E33: B9 9C A4  LDA tbl_A49C,Y
C - - - - - 0x001E46 00:9E36: 8D EE 07  STA ram_07EE
C - - - - - 0x001E49 00:9E39: 20 D2 A1  JSR sub_A1D2
C - - - - - 0x001E4C 00:9E3C: 20 78 A2  JSR sub_A278
C - - - - - 0x001E4F 00:9E3F: 20 72 A1  JSR sub_A172
C - - - - - 0x001E52 00:9E42: 20 6D A0  JSR sub_A06D
C - - - - - 0x001E55 00:9E45: A9 04     LDA #$04
C - - - - - 0x001E57 00:9E47: 85 1C     STA ram_disable_rendering_timer
loc_9E49:
sub_9E49:
C D 0 - - - 0x001E59 00:9E49: E6 6B     INC ram_006B_subscript
C - - - - - 0x001E5B 00:9E4B: A9 00     LDA #$00
C - - - - - 0x001E5D 00:9E4D: 8D F3 07  STA ram_07F3
C - - - - - 0x001E60 00:9E50: 60        RTS



ofs_030_9E51_01:
C - - J - - 0x001E61 00:9E51: AD ED 07  LDA ram_07ED
C - - - - - 0x001E64 00:9E54: 29 80     AND #$80
C - - - - - 0x001E66 00:9E56: F0 17     BEQ bra_9E6F
C - - - - - 0x001E68 00:9E58: A0 00     LDY #$00
C - - - - - 0x001E6A 00:9E5A: 84 31     STY ram_screen_timer_hi
C - - - - - 0x001E6C 00:9E5C: AD F1 07  LDA ram_07F1
C - - - - - 0x001E6F 00:9E5F: C9 02     CMP #$02
C - - - - - 0x001E71 00:9E61: F0 02     BEQ bra_9E65
C - - - - - 0x001E73 00:9E63: A0 09     LDY #$09
bra_9E65:
C - - - - - 0x001E75 00:9E65: 8C EF 07  STY ram_07EF
C - - - - - 0x001E78 00:9E68: A9 00     LDA #$00
C - - - - - 0x001E7A 00:9E6A: 85 30     STA ram_screen_timer_lo
C - - - - - 0x001E7C 00:9E6C: 4C 49 9E  JMP loc_9E49
bra_9E6F:
C - - - - - 0x001E7F 00:9E6F: 20 49 9E  JSR sub_9E49
C - - - - - 0x001E82 00:9E72: A9 03     LDA #$03
C - - - - - 0x001E84 00:9E74: 85 6B     STA ram_006B_subscript
C - - - - - 0x001E86 00:9E76: A9 40     LDA #$40
C - - - - - 0x001E88 00:9E78: 85 30     STA ram_screen_timer_lo
C - - - - - 0x001E8A 00:9E7A: 60        RTS



bra_9E7B:
- - - - - - 0x001E8B 00:9E7B: A5 FF     LDA ram_for_2000
- - - - - - 0x001E8D 00:9E7D: 29 FC     AND #$FC
- - - - - - 0x001E8F 00:9E7F: 85 FF     STA ram_for_2000
- - - - - - 0x001E91 00:9E81: A9 00     LDA #$00
- - - - - - 0x001E93 00:9E83: 85 FD     STA ram_scroll_X
- - - - - - 0x001E95 00:9E85: 4C 49 9E  JMP loc_9E49



ofs_030_9E88_02:
C - - J - - 0x001E98 00:9E88: A4 31     LDY ram_screen_timer_hi
C - - - - - 0x001E9A 00:9E8A: D0 2A     BNE bra_9EB6
C - - - - - 0x001E9C 00:9E8C: C6 30     DEC ram_screen_timer_lo
C - - - - - 0x001E9E 00:9E8E: F0 EB     BEQ bra_9E7B
C - - - - - 0x001EA0 00:9E90: 20 FA A1  JSR sub_A1FA
C - - - - - 0x001EA3 00:9E93: A5 30     LDA ram_screen_timer_lo
C - - - - - 0x001EA5 00:9E95: C9 A0     CMP #$A0
C - - - - - 0x001EA7 00:9E97: B0 1C     BCS bra_9EB5_RTS
C - - - - - 0x001EA9 00:9E99: 29 0F     AND #$0F
C - - - - - 0x001EAB 00:9E9B: D0 18     BNE bra_9EB5_RTS
C - - - - - 0x001EAD 00:9E9D: AD EF 07  LDA ram_07EF
C - - - - - 0x001EB0 00:9EA0: 20 5F A5  JSR sub_A55F
C - - - - - 0x001EB3 00:9EA3: EE EF 07  INC ram_07EF
C - - - - - 0x001EB6 00:9EA6: AD EF 07  LDA ram_07EF
C - - - - - 0x001EB9 00:9EA9: C9 09     CMP #$09
C - - - - - 0x001EBB 00:9EAB: 90 08     BCC bra_9EB5_RTS
C - - - - - 0x001EBD 00:9EAD: F0 0F     BEQ bra_9EBE
C - - - - - 0x001EBF 00:9EAF: C9 12     CMP #$12
C - - - - - 0x001EC1 00:9EB1: 90 02     BCC bra_9EB5_RTS
C - - - - - 0x001EC3 00:9EB3: E6 31     INC ram_screen_timer_hi
bra_9EB5_RTS:
C - - - - - 0x001EC5 00:9EB5: 60        RTS
bra_9EB6:
C - - - - - 0x001EC6 00:9EB6: E6 31     INC ram_screen_timer_hi
C - - - - - 0x001EC8 00:9EB8: A5 31     LDA ram_screen_timer_hi
C - - - - - 0x001ECA 00:9EBA: C9 3D     CMP #$3D
C - - - - - 0x001ECC 00:9EBC: 90 F7     BCC bra_9EB5_RTS
bra_9EBE:
C - - - - - 0x001ECE 00:9EBE: A9 20     LDA #$20
C - - - - - 0x001ED0 00:9EC0: 85 30     STA ram_screen_timer_lo
C - - - - - 0x001ED2 00:9EC2: 4C 49 9E  JMP loc_9E49



ofs_030_9EC5_03:
C - - J - - 0x001ED5 00:9EC5: AD ED 07  LDA ram_07ED
C - - - - - 0x001ED8 00:9EC8: 29 20     AND #$20
C - - - - - 0x001EDA 00:9ECA: F0 27     BEQ bra_9EF3
C - - - - - 0x001EDC 00:9ECC: AC F3 07  LDY ram_07F3
C - - - - - 0x001EDF 00:9ECF: D0 0C     BNE bra_9EDD
C - - - - - 0x001EE1 00:9ED1: C6 30     DEC ram_screen_timer_lo
C - - - - - 0x001EE3 00:9ED3: D0 29     BNE bra_9EFE_RTS
C - - - - - 0x001EE5 00:9ED5: A9 20     LDA #$20
C - - - - - 0x001EE7 00:9ED7: 85 30     STA ram_screen_timer_lo
C - - - - - 0x001EE9 00:9ED9: EE F3 07  INC ram_07F3
C - - - - - 0x001EEC 00:9EDC: 60        RTS
bra_9EDD:
C - - - - - 0x001EED 00:9EDD: C6 30     DEC ram_screen_timer_lo
C - - - - - 0x001EEF 00:9EDF: D0 D4     BNE bra_9EB5_RTS
C - - - - - 0x001EF1 00:9EE1: A9 01     LDA #$01
C - - - - - 0x001EF3 00:9EE3: 8D 82 07  STA ram_0782
C - - - - - 0x001EF6 00:9EE6: A9 80     LDA #$80
C - - - - - 0x001EF8 00:9EE8: 8D 83 07  STA ram_0783
C - - - - - 0x001EFB 00:9EEB: A9 01     LDA #$01
C - - - - - 0x001EFD 00:9EED: 8D 84 07  STA ram_0784
C - - - - - 0x001F00 00:9EF0: 4C 49 9E  JMP loc_9E49
bra_9EF3:
C - - - - - 0x001F03 00:9EF3: 20 49 9E  JSR sub_9E49
C - - - - - 0x001F06 00:9EF6: A9 05     LDA #$05
C - - - - - 0x001F08 00:9EF8: 85 6B     STA ram_006B_subscript
C - - - - - 0x001F0A 00:9EFA: A9 40     LDA #$40
C - - - - - 0x001F0C 00:9EFC: 85 30     STA ram_screen_timer_lo
bra_9EFE_RTS:
C - - - - - 0x001F0E 00:9EFE: 60        RTS



ofs_030_9EFF_04:
C - - J - - 0x001F0F 00:9EFF: EE 84 07  INC ram_0784
C - - - - - 0x001F12 00:9F02: CE 83 07  DEC ram_0783
C - - - - - 0x001F15 00:9F05: D0 F7     BNE bra_9EFE_RTS
C - - - - - 0x001F17 00:9F07: EE 82 07  INC ram_0782
C - - - - - 0x001F1A 00:9F0A: 20 49 9E  JSR sub_9E49
C - - - - - 0x001F1D 00:9F0D: A9 80     LDA #$80
C - - - - - 0x001F1F 00:9F0F: 8D 83 07  STA ram_0783
C - - - - - 0x001F22 00:9F12: A9 20     LDA #$20
C - - - - - 0x001F24 00:9F14: 85 30     STA ram_screen_timer_lo
C - - - - - 0x001F26 00:9F16: 4C 7F A2  JMP loc_A27F



ofs_030_9F19_05:
C - - J - - 0x001F29 00:9F19: AD EE 07  LDA ram_07EE
C - - - - - 0x001F2C 00:9F1C: 29 F8     AND #$F8
C - - - - - 0x001F2E 00:9F1E: F0 2D     BEQ bra_9F4D
C - - - - - 0x001F30 00:9F20: AC F3 07  LDY ram_07F3
C - - - - - 0x001F33 00:9F23: D0 13     BNE bra_9F38
C - - - - - 0x001F35 00:9F25: AD ED 07  LDA ram_07ED
C - - - - - 0x001F38 00:9F28: 29 20     AND #$20
C - - - - - 0x001F3A 00:9F2A: D0 04     BNE bra_9F30
C - - - - - 0x001F3C 00:9F2C: A9 EF     LDA #$EF
C - - - - - 0x001F3E 00:9F2E: 85 FC     STA ram_scroll_Y
bra_9F30:
C - - - - - 0x001F40 00:9F30: C6 30     DEC ram_screen_timer_lo
C - - - - - 0x001F42 00:9F32: D0 50     BNE bra_9F84_RTS
C - - - - - 0x001F44 00:9F34: EE F3 07  INC ram_07F3
C - - - - - 0x001F47 00:9F37: 60        RTS
bra_9F38:
C - - - - - 0x001F48 00:9F38: C6 FC     DEC ram_scroll_Y
C - - - - - 0x001F4A 00:9F3A: A5 FC     LDA ram_scroll_Y
C - - - - - 0x001F4C 00:9F3C: C9 F0     CMP #$F0
C - - - - - 0x001F4E 00:9F3E: 90 04     BCC bra_9F44
C - - - - - 0x001F50 00:9F40: E9 10     SBC #$10
C - - - - - 0x001F52 00:9F42: 85 FC     STA ram_scroll_Y
bra_9F44:
C - - - - - 0x001F54 00:9F44: AD EE 07  LDA ram_07EE
C - - - - - 0x001F57 00:9F47: 29 F8     AND #$F8
C - - - - - 0x001F59 00:9F49: C5 FC     CMP ram_scroll_Y
C - - - - - 0x001F5B 00:9F4B: 90 37     BCC bra_9F84_RTS
bra_9F4D:
C - - - - - 0x001F5D 00:9F4D: 4C 49 9E  JMP loc_9E49



ofs_030_9F50_06:
C - - J - - 0x001F60 00:9F50: AD F1 07  LDA ram_07F1
C - - - - - 0x001F63 00:9F53: C9 06     CMP #$06
C - - - - - 0x001F65 00:9F55: F0 04     BEQ bra_9F5B
C - - - - - 0x001F67 00:9F57: C9 08     CMP #$08
C - - - - - 0x001F69 00:9F59: D0 2A     BNE bra_9F85
bra_9F5B:
C - - - - - 0x001F6B 00:9F5B: A9 00     LDA #$00
C - - - - - 0x001F6D 00:9F5D: 85 31     STA ram_screen_timer_hi
C - - - - - 0x001F6F 00:9F5F: A9 17     LDA #$17
C - - - - - 0x001F71 00:9F61: 20 72 A2  JSR sub_A272_change_1_color
C - - - - - 0x001F74 00:9F64: A2 03     LDX #$03
C - - - - - 0x001F76 00:9F66: A9 06     LDA #$06
C - - - - - 0x001F78 00:9F68: 20 47 A4  JSR sub_A447
C - - - - - 0x001F7B 00:9F6B: AD F1 07  LDA ram_07F1
C - - - - - 0x001F7E 00:9F6E: C9 08     CMP #$08
C - - - - - 0x001F80 00:9F70: F0 07     BEQ bra_9F79
C - - - - - 0x001F82 00:9F72: A9 4F     LDA #$4F
C - - - - - 0x001F84 00:9F74: 85 30     STA ram_screen_timer_lo
C - - - - - 0x001F86 00:9F76: 4C 49 9E  JMP loc_9E49
bra_9F79:
C - - - - - 0x001F89 00:9F79: 20 49 9E  JSR sub_9E49
C - - - - - 0x001F8C 00:9F7C: A9 08     LDA #$08
C - - - - - 0x001F8E 00:9F7E: 85 6B     STA ram_006B_subscript
C - - - - - 0x001F90 00:9F80: A9 40     LDA #$40
C - - - - - 0x001F92 00:9F82: 85 30     STA ram_screen_timer_lo
bra_9F84_RTS:
C - - - - - 0x001F94 00:9F84: 60        RTS
bra_9F85:
C - - - - - 0x001F95 00:9F85: 20 49 9E  JSR sub_9E49
C - - - - - 0x001F98 00:9F88: A9 0A     LDA #$0A
C - - - - - 0x001F9A 00:9F8A: 85 6B     STA ram_006B_subscript
C - - - - - 0x001F9C 00:9F8C: A9 40     LDA #$40
C - - - - - 0x001F9E 00:9F8E: 85 30     STA ram_screen_timer_lo
C - - - - - 0x001FA0 00:9F90: 60        RTS



ofs_030_9F91_07:
C - - J - - 0x001FA1 00:9F91: 20 A8 A0  JSR sub_A0A8
C - - - - - 0x001FA4 00:9F94: C6 30     DEC ram_screen_timer_lo
C - - - - - 0x001FA6 00:9F96: D0 EC     BNE bra_9F84_RTS
C - - - - - 0x001FA8 00:9F98: 20 84 A0  JSR sub_A084
C - - - - - 0x001FAB 00:9F9B: A9 AA     LDA #$AA
C - - - - - 0x001FAD 00:9F9D: 8D 03 04  STA ram_obj_anim_id + $03
C - - - - - 0x001FB0 00:9FA0: 20 49 9E  JSR sub_9E49
C - - - - - 0x001FB3 00:9FA3: A9 0A     LDA #$0A
C - - - - - 0x001FB5 00:9FA5: 85 6B     STA ram_006B_subscript
C - - - - - 0x001FB7 00:9FA7: A9 40     LDA #$40
C - - - - - 0x001FB9 00:9FA9: 85 30     STA ram_screen_timer_lo
bra_9FAB_RTS:
C - - - - - 0x001FBB 00:9FAB: 60        RTS



ofs_030_9FAC_08:
C - - J - - 0x001FBC 00:9FAC: AC F3 07  LDY ram_07F3
C - - - - - 0x001FBF 00:9FAF: D0 08     BNE bra_9FB9
C - - - - - 0x001FC1 00:9FB1: C6 30     DEC ram_screen_timer_lo
C - - - - - 0x001FC3 00:9FB3: D0 F6     BNE bra_9FAB_RTS
C - - - - - 0x001FC5 00:9FB5: EE F3 07  INC ram_07F3
C - - - - - 0x001FC8 00:9FB8: 60        RTS
bra_9FB9:
C - - - - - 0x001FC9 00:9FB9: A9 AA     LDA #$AA
C - - - - - 0x001FCB 00:9FBB: 8D 03 04  STA ram_obj_anim_id + $03
C - - - - - 0x001FCE 00:9FBE: A2 03     LDX #$03
C - - - - - 0x001FD0 00:9FC0: 18        CLC
C - - - - - 0x001FD1 00:9FC1: A9 24     LDA #$24
C - - - - - 0x001FD3 00:9FC3: 7D C4 04  ADC ram_obj_pos_X_lo,X
C - - - - - 0x001FD6 00:9FC6: 9D C4 04  STA ram_obj_pos_X_lo,X
C - - - - - 0x001FD9 00:9FC9: A9 00     LDA #$00
C - - - - - 0x001FDB 00:9FCB: 7D 38 04  ADC ram_obj_pos_X_hi,X
C - - - - - 0x001FDE 00:9FCE: 9D 38 04  STA ram_obj_pos_X_hi,X
C - - - - - 0x001FE1 00:9FD1: 18        CLC
C - - - - - 0x001FE2 00:9FD2: A9 F0     LDA #$F0
C - - - - - 0x001FE4 00:9FD4: 7D DB 04  ADC ram_obj_pos_Y_lo,X
C - - - - - 0x001FE7 00:9FD7: 9D DB 04  STA ram_obj_pos_Y_lo,X
C - - - - - 0x001FEA 00:9FDA: A9 FF     LDA #$FF
C - - - - - 0x001FEC 00:9FDC: 7D 1C 04  ADC ram_obj_pos_Y_hi,X
C - - - - - 0x001FEF 00:9FDF: 9D 1C 04  STA ram_obj_pos_Y_hi,X
C - - - - - 0x001FF2 00:9FE2: BD 38 04  LDA ram_obj_pos_X_hi,X
C - - - - - 0x001FF5 00:9FE5: C9 9A     CMP #$9A
C - - - - - 0x001FF7 00:9FE7: 90 66     BCC bra_A04F_RTS
C - - - - - 0x001FF9 00:9FE9: A9 4F     LDA #$4F
C - - - - - 0x001FFB 00:9FEB: 85 30     STA ram_screen_timer_lo
C - - - - - 0x001FFD 00:9FED: 4C 49 9E  JMP loc_9E49



ofs_030_9FF0_09:
C - - J - - 0x002000 00:9FF0: 20 B1 A0  JSR sub_A0B1
C - - - - - 0x002003 00:9FF3: C6 30     DEC ram_screen_timer_lo
C - - - - - 0x002005 00:9FF5: D0 58     BNE bra_A04F_RTS
C - - - - - 0x002007 00:9FF7: A9 00     LDA #$00
C - - - - - 0x002009 00:9FF9: 8D 03 04  STA ram_obj_anim_id + $03
C - - - - - 0x00200C 00:9FFC: 20 49 9E  JSR sub_9E49
C - - - - - 0x00200F 00:9FFF: A9 40     LDA #$40
C - - - - - 0x002011 00:A001: 85 30     STA ram_screen_timer_lo
C - - - - - 0x002013 00:A003: A9 20     LDA #$20
C - - - - - 0x002015 00:A005: 4C 72 A2  JMP loc_A272_change_1_color



ofs_030_A008_0A:
C - - J - - 0x002018 00:A008: AC F3 07  LDY ram_07F3
C - - - - - 0x00201B 00:A00B: D0 0E     BNE bra_A01B
C - - - - - 0x00201D 00:A00D: C6 30     DEC ram_screen_timer_lo
C - - - - - 0x00201F 00:A00F: D0 3E     BNE bra_A04F_RTS
C - - - - - 0x002021 00:A011: A9 20     LDA #$20
C - - - - - 0x002023 00:A013: 85 30     STA ram_screen_timer_lo
C - - - - - 0x002025 00:A015: EE F3 07  INC ram_07F3
C - - - - - 0x002028 00:A018: 4C 42 A4  JMP loc_A442
bra_A01B:
C - - - - - 0x00202B 00:A01B: 20 03 A3  JSR sub_A303
C - - - - - 0x00202E 00:A01E: C6 30     DEC ram_screen_timer_lo
C - - - - - 0x002030 00:A020: D0 2D     BNE bra_A04F_RTS
C - - - - - 0x002032 00:A022: 20 AD A3  JSR sub_A3AD
C - - - - - 0x002035 00:A025: 4C 49 9E  JMP loc_9E49



ofs_030_A028_0B:
C - - J - - 0x002038 00:A028: 20 03 A3  JSR sub_A303
C - - - - - 0x00203B 00:A02B: 20 D0 A0  JSR sub_A0D0
C - - - - - 0x00203E 00:A02E: EE F2 07  INC ram_07F2
C - - - - - 0x002041 00:A031: AD F2 07  LDA ram_07F2
C - - - - - 0x002044 00:A034: 29 0F     AND #$0F
C - - - - - 0x002046 00:A036: D0 05     BNE bra_A03D
C - - - - - 0x002048 00:A038: A9 09     LDA #con_sound_step
C - - - - - 0x00204A 00:A03A: 20 5F E2  JSR sub_0x03E26F_play_sound
bra_A03D:
C - - - - - 0x00204D 00:A03D: AD 01 04  LDA ram_obj_anim_id + $01
C - - - - - 0x002050 00:A040: 0D 02 04  ORA ram_obj_anim_id + $02
C - - - - - 0x002053 00:A043: D0 0A     BNE bra_A04F_RTS
C - - - - - 0x002055 00:A045: A0 00     LDY #$00
C - - - - - 0x002057 00:A047: 84 B4     STY ram_00B4
C - - - - - 0x002059 00:A049: C8        INY ; 01
C - - - - - 0x00205A 00:A04A: 84 B5     STY ram_00B5
C - - - - - 0x00205C 00:A04C: 4C 49 9E  JMP loc_9E49
bra_A04F_RTS:
C - - - - - 0x00205F 00:A04F: 60        RTS



ofs_030_A050_0C:
C - - J - - 0x002060 00:A050: 20 03 A3  JSR sub_A303
C - - - - - 0x002063 00:A053: A5 1D     LDA ram_index_ppu_buffer
C - - - - - 0x002065 00:A055: 85 15     STA ram_0015_t001_copy_index_ppu_buffer
C - - - - - 0x002067 00:A057: A9 29     LDA #con_98E4_custom_palette
C - - - - - 0x002069 00:A059: 20 E9 EC  JSR sub_0x03ECF9_write_data_to_ppu_buffer
C - - - - - 0x00206C 00:A05C: A9 04     LDA #con_98E4_3F00_0000
C - - - - - 0x00206E 00:A05E: 20 E9 EC  JSR sub_0x03ECF9_write_data_to_ppu_buffer
C - - - - - 0x002071 00:A061: 20 AF FB  JSR sub_0x03FBBF_decrease_brightness
C - - - - - 0x002074 00:A064: A5 B4     LDA ram_00B4
C - - - - - 0x002076 00:A066: C9 FF     CMP #$FF
C - - - - - 0x002078 00:A068: D0 E5     BNE bra_A04F_RTS
C - - - - - 0x00207A 00:A06A: 4C F1 A0  JMP loc_A0F1



sub_A06D:
C - - - - - 0x00207D 00:A06D: A0 1E     LDY #$1E
C - - - - - 0x00207F 00:A06F: A2 01     LDX #$01
C - - - - - 0x002081 00:A071: A9 1A     LDA #con_irq_1A
C - - - - - 0x002083 00:A073: 20 BF E5  JSR sub_0x03E5CF
C - - - - - 0x002086 00:A076: A9 80     LDA #$80
C - - - - - 0x002088 00:A078: 8D 83 07  STA ram_0783
C - - - - - 0x00208B 00:A07B: AD EE 07  LDA ram_07EE
C - - - - - 0x00208E 00:A07E: 29 02     AND #$02
C - - - - - 0x002090 00:A080: 8D 82 07  STA ram_0782
C - - - - - 0x002093 00:A083: 60        RTS



sub_A084:
loc_A084:
C D 1 - - - 0x002094 00:A084: A9 00     LDA #$00
C - - - - - 0x002096 00:A086: 8D 03 04  STA ram_obj_anim_id + $03
C - - - - - 0x002099 00:A089: 8D 04 04  STA ram_obj_anim_id + $04
C - - - - - 0x00209C 00:A08C: 8D 05 04  STA ram_obj_anim_id + $05
C - - - - - 0x00209F 00:A08F: 8D 06 04  STA ram_obj_anim_id + $06
C - - - - - 0x0020A2 00:A092: 60        RTS


; bzk garbage
- - - - - - 0x0020A3 00:A093: A9 D6     LDA #$D6
- - - - - - 0x0020A5 00:A095: 8D 04 04  STA ram_obj_anim_id + $04
- - - - - - 0x0020A8 00:A098: A9 D8     LDA #$D8
- - - - - - 0x0020AA 00:A09A: 8D 05 04  STA ram_obj_anim_id + $05
- - - - - - 0x0020AD 00:A09D: A9 D8     LDA #$D8
- - - - - - 0x0020AF 00:A09F: 8D 06 04  STA ram_obj_anim_id + $06



bra_A0A2:
sub_A0A2:
C - - - - - 0x0020B2 00:A0A2: A9 AA     LDA #$AA
C - - - - - 0x0020B4 00:A0A4: 8D 03 04  STA ram_obj_anim_id + $03
C - - - - - 0x0020B7 00:A0A7: 60        RTS



sub_A0A8:
C - - - - - 0x0020B8 00:A0A8: 20 BE A0  JSR sub_A0BE_0030_divide_by_10_TAY
C - - - - - 0x0020BB 00:A0AB: B9 C6 A0  LDA tbl_A0C6,Y
C - - - - - 0x0020BE 00:A0AE: 4C B7 A0  JMP loc_A0B7



sub_A0B1:
C - - - - - 0x0020C1 00:A0B1: 20 BE A0  JSR sub_A0BE_0030_divide_by_10_TAY
C - - - - - 0x0020C4 00:A0B4: B9 CB A0  LDA tbl_A0CB,Y
loc_A0B7:
C D 1 - - - 0x0020C7 00:A0B7: 25 30     AND ram_screen_timer_lo
C - - - - - 0x0020C9 00:A0B9: F0 E7     BEQ bra_A0A2
C - - - - - 0x0020CB 00:A0BB: 4C 84 A0  JMP loc_A084



sub_A0BE_0030_divide_by_10_TAY:
C - - - - - 0x0020CE 00:A0BE: A5 30     LDA ram_screen_timer_lo
; / 10
C - - - - - 0x0020D0 00:A0C0: 4A        LSR
C - - - - - 0x0020D1 00:A0C1: 4A        LSR
C - - - - - 0x0020D2 00:A0C2: 4A        LSR
C - - - - - 0x0020D3 00:A0C3: 4A        LSR
C - - - - - 0x0020D4 00:A0C4: A8        TAY
C - - - - - 0x0020D5 00:A0C5: 60        RTS



tbl_A0C6:
- D 1 - - - 0x0020D6 00:A0C6: 10        .byte $10   ; 00 
- D 1 - - - 0x0020D7 00:A0C7: 08        .byte $08   ; 01 
- D 1 - - - 0x0020D8 00:A0C8: 04        .byte $04   ; 02 
- D 1 - - - 0x0020D9 00:A0C9: 02        .byte $02   ; 03 
- D 1 - - - 0x0020DA 00:A0CA: 01        .byte $01   ; 04 



tbl_A0CB:
- D 1 - - - 0x0020DB 00:A0CB: 01        .byte $01   ; 00 
- D 1 - - - 0x0020DC 00:A0CC: 02        .byte $02   ; 01 
- D 1 - - - 0x0020DD 00:A0CD: 04        .byte $04   ; 02 
- D 1 - - - 0x0020DE 00:A0CE: 08        .byte $08   ; 03 
- D 1 - - - 0x0020DF 00:A0CF: 10        .byte $10   ; 04 



sub_A0D0:
C - - - - - 0x0020E0 00:A0D0: A2 01     LDX #$01
C - - - - - 0x0020E2 00:A0D2: BD 00 04  LDA ram_obj_anim_id,X
C - - - - - 0x0020E5 00:A0D5: F0 09     BEQ bra_A0E0
C - - - - - 0x0020E7 00:A0D7: 20 1D A4  JSR sub_A41D
C - - - - - 0x0020EA 00:A0DA: 20 75 EF  JSR sub_0x03EF85
C - - - - - 0x0020ED 00:A0DD: 20 EE A3  JSR sub_A3EE
bra_A0E0:
C - - - - - 0x0020F0 00:A0E0: A5 3A     LDA ram_partner
C - - - - - 0x0020F2 00:A0E2: 30 38     BMI bra_A11C_RTS    ; no partner
C - - - - - 0x0020F4 00:A0E4: A2 02     LDX #$02
C - - - - - 0x0020F6 00:A0E6: BD 00 04  LDA ram_obj_anim_id,X
C - - - - - 0x0020F9 00:A0E9: F0 31     BEQ bra_A11C_RTS
C - - - - - 0x0020FB 00:A0EB: 20 1D A4  JSR sub_A41D
C - - - - - 0x0020FE 00:A0EE: 4C 75 EF  JMP loc_0x03EF85



loc_A0F1:
C D 1 - - - 0x002101 00:A0F1: 20 66 E6  JSR sub_0x03E676
C - - - - - 0x002104 00:A0F4: A9 44     LDA #$44    ; vertical nametable mapping
C - - - - - 0x002106 00:A0F6: 85 25     STA ram_for_5105
C - - - - - 0x002108 00:A0F8: A5 FF     LDA ram_for_2000
C - - - - - 0x00210A 00:A0FA: 29 FC     AND #$FC
C - - - - - 0x00210C 00:A0FC: 85 FF     STA ram_for_2000
C - - - - - 0x00210E 00:A0FE: A9 00     LDA #$00
C - - - - - 0x002110 00:A100: 85 6B     STA ram_006B_subscript
C - - - - - 0x002112 00:A102: A9 1F     LDA #con_002A_1F
C - - - - - 0x002114 00:A104: 85 2A     STA ram_002A_script
C - - - - - 0x002116 00:A106: A5 A4     LDA ram_00A4_data_index
; * 03
C - - - - - 0x002118 00:A108: 0A        ASL
; bzk optimize, value is too low, no need for CLC after ASL
C - - - - - 0x002119 00:A109: 18        CLC
C - - - - - 0x00211A 00:A10A: 65 A4     ADC ram_00A4_data_index
C - - - - - 0x00211C 00:A10C: A8        TAY
C - - - - - 0x00211D 00:A10D: B9 1D A1  LDA tbl_A11D,Y
C - - - - - 0x002120 00:A110: 85 32     STA ram_blk_hi
C - - - - - 0x002122 00:A112: B9 1E A1  LDA tbl_A11D + $01,Y
C - - - - - 0x002125 00:A115: 85 33     STA ram_blk_lo
C - - - - - 0x002127 00:A117: B9 1F A1  LDA tbl_A11D + $02,Y
C - - - - - 0x00212A 00:A11A: 85 34     STA ram_blk_fr
bra_A11C_RTS:
C - - - - - 0x00212C 00:A11C: 60        RTS



tbl_A11D:
; index from 0x001254
;                                              +--------------- ram_blk_hi
;                                              |    +---------- ram_blk_lo
;                                              |    |    +----- ram_blk_fr
;                                              |    |    |
- - - - - - 0x00212D 00:A11D: 00        .byte $00, $00, $00   ; 00 
- D 1 - - - 0x002130 00:A120: 01        .byte $01, $03, $02   ; 01 
- D 1 - - - 0x002133 00:A123: 02        .byte $02, $01, $00   ; 02 
- D 1 - - - 0x002136 00:A126: 03        .byte $03, $00, $02   ; 03 
- D 1 - - - 0x002139 00:A129: 04        .byte $04, $00, $00   ; 04 
- D 1 - - - 0x00213C 00:A12C: 05        .byte $05, $00, $00   ; 05 
- D 1 - - - 0x00213F 00:A12F: 0B        .byte $0B, $00, $00   ; 06 
- D 1 - - - 0x002142 00:A132: 07        .byte $07, $00, $01   ; 07 
- D 1 - - - 0x002145 00:A135: 07        .byte $07, $05, $00   ; 08 
- D 1 - - - 0x002148 00:A138: 09        .byte $09, $00, $00   ; 09 
- D 1 - - - 0x00214B 00:A13B: 0A        .byte $0A, $00, $00   ; 0A 
- D 1 - - - 0x00214E 00:A13E: 0A        .byte $0A, $00, $00   ; 0B 
- D 1 - - - 0x002151 00:A141: 0C        .byte $0C, $00, $00   ; 0C 
- D 1 - - - 0x002154 00:A144: 0C        .byte $0C, $00, $00   ; 0D 
- D 1 - - - 0x002157 00:A147: 0D        .byte $0D, $00, $00   ; 0E 
- D 1 - - - 0x00215A 00:A14A: 0E        .byte $0E, $00, $02   ; 0F 



tbl_A14D:
- D 1 - - - 0x00215D 00:A14D: 6A BA     .word _off012_0x017A7A_00
- D 1 - - - 0x00215F 00:A14F: BE BB     .word _off012_0x017BCE_01
- D 1 - - - 0x002161 00:A151: FC B9     .word _off012_0x017A0C_02
- D 1 - - - 0x002163 00:A153: 5E BA     .word _off012_0x017A6E_03



tbl_A155_ppu_address:
- D 1 - - - 0x002165 00:A155: 80 2C     .word $2C80 ; 00 
- D 1 - - - 0x002167 00:A157: C8 2F     .word $2FC8 ; 01 
- D 1 - - - 0x002169 00:A159: 00 2E     .word $2E00 ; 02 
- D 1 - - - 0x00216B 00:A15B: E0 2F     .word $2FE0 ; 03 



tbl_A15D_screen:
- D 1 - - - 0x00216D 00:A15D: 0C        .byte con_EC77_0C   ; 00 
- D 1 - - - 0x00216E 00:A15E: FE        .byte $FE   ; 01 FE
- D 1 - - - 0x00216F 00:A15F: 0C        .byte con_EC77_0C   ; 02 
- D 1 - - - 0x002170 00:A160: 1C        .byte con_EC77_1C   ; 03 
- D 1 - - - 0x002171 00:A161: 10        .byte con_EC77_10   ; 04 
- D 1 - - - 0x002172 00:A162: 12        .byte con_EC77_12   ; 05 
- D 1 - - - 0x002173 00:A163: FF        .byte $FF   ; 06 FF
- D 1 - - - 0x002174 00:A164: 1C        .byte con_EC77_1C   ; 07 
- D 1 - - - 0x002175 00:A165: 0E        .byte con_EC77_0E   ; 08 
- D 1 - - - 0x002176 00:A166: 14        .byte con_EC77_14   ; 09 
- D 1 - - - 0x002177 00:A167: 10        .byte con_EC77_10   ; 0A 
- D 1 - - - 0x002178 00:A168: 12        .byte con_EC77_12   ; 0B 
- D 1 - - - 0x002179 00:A169: FF        .byte $FF   ; 0C FF



tbl_A16A:
- D 1 - - - 0x00217A 00:A16A: 00        .byte $00   ; 00 
- D 1 - - - 0x00217B 00:A16B: 02        .byte $02   ; 01 
- D 1 - - - 0x00217C 00:A16C: 00        .byte $00   ; 02 
- D 1 - - - 0x00217D 00:A16D: 07        .byte $07   ; 03 



tbl_A16E_nametable_mapping:
- D 1 - - - 0x00217E 00:A16E: 44        .byte $44   ; 00 vertical
- D 1 - - - 0x00217F 00:A16F: 44        .byte $44   ; 01 vertical
- D 1 - - - 0x002180 00:A170: 44        .byte $44   ; 02 vertical
- D 1 - - - 0x002181 00:A171: 50        .byte $50   ; 03 horisontal



sub_A172:
C - - - - - 0x002182 00:A172: AD EE 07  LDA ram_07EE
C - - - - - 0x002185 00:A175: 29 03     AND #$03
C - - - - - 0x002187 00:A177: A8        TAY
C - - - - - 0x002188 00:A178: B9 6A A1  LDA tbl_A16A,Y
C - - - - - 0x00218B 00:A17B: 85 10     STA ram_0010_t005_obj_id
C - - - - - 0x00218D 00:A17D: B9 6E A1  LDA tbl_A16E_nametable_mapping,Y
C - - - - - 0x002190 00:A180: 85 25     STA ram_for_5105
C - - - - - 0x002192 00:A182: 8D 05 51  STA $5105
loc_A185_loop:
C D 1 - - - 0x002195 00:A185: A4 10     LDY ram_0010_t005_obj_id
C - - - - - 0x002197 00:A187: A9 8A     LDA #con_prg_bank + $8A
C - - - - - 0x002199 00:A189: BE 5D A1  LDX tbl_A15D_screen,Y
C - - - - - 0x00219C 00:A18C: 30 0E     BMI bra_A19C_FE_FF
C - - - - - 0x00219E 00:A18E: E0 0C     CPX #con_EC77_0C
C - - - - - 0x0021A0 00:A190: D0 02     BNE bra_A194
C - - - - - 0x0021A2 00:A192: A9 98     LDA #con_prg_bank + $98
bra_A194:
C - - - - - 0x0021A4 00:A194: 20 D5 EB  JSR sub_0x03EBE5_draw_screen
C - - - - - 0x0021A7 00:A197: E6 10     INC ram_0010_t005_obj_id
C - - - - - 0x0021A9 00:A199: 4C 85 A1  JMP loc_A185_loop
bra_A19C_FE_FF:
C - - - - - 0x0021AC 00:A19C: E0 FF     CPX #$FF
; bzk optimize, BEQ for readability
C - - - - - 0x0021AE 00:A19E: B0 26     BCS bra_A1C6_FF
; FE
C - - - - - 0x0021B0 00:A1A0: A9 00     LDA #$00
C - - - - - 0x0021B2 00:A1A2: 85 10     STA ram_0010_t007
bra_A1A4_loop:
C - - - - - 0x0021B4 00:A1A4: A4 10     LDY ram_0010_t007
C - - - - - 0x0021B6 00:A1A6: B9 4D A1  LDA tbl_A14D,Y
C - - - - - 0x0021B9 00:A1A9: 85 00     STA ram_0000_t000_data
C - - - - - 0x0021BB 00:A1AB: B9 4E A1  LDA tbl_A14D + $01,Y
C - - - - - 0x0021BE 00:A1AE: 85 01     STA ram_0000_t000_data + $01
C - - - - - 0x0021C0 00:A1B0: BE 55 A1  LDX tbl_A155_ppu_address,Y
C - - - - - 0x0021C3 00:A1B3: B9 56 A1  LDA tbl_A155_ppu_address + $01,Y
C - - - - - 0x0021C6 00:A1B6: A8        TAY
C - - - - - 0x0021C7 00:A1B7: A9 8A     LDA #con_prg_bank + $8A
C - - - - - 0x0021C9 00:A1B9: 20 E0 EB  JSR sub_0x03EBF0_draw_screen
C - - - - - 0x0021CC 00:A1BC: E6 10     INC ram_0010_t007
C - - - - - 0x0021CE 00:A1BE: E6 10     INC ram_0010_t007
C - - - - - 0x0021D0 00:A1C0: A5 10     LDA ram_0010_t007
C - - - - - 0x0021D2 00:A1C2: C9 08     CMP #$08
C - - - - - 0x0021D4 00:A1C4: 90 DE     BCC bra_A1A4_loop
bra_A1C6_FF:
C - - - - - 0x0021D6 00:A1C6: AD F1 07  LDA ram_07F1
C - - - - - 0x0021D9 00:A1C9: C9 03     CMP #$03
C - - - - - 0x0021DB 00:A1CB: 90 12     BCC bra_A1DF_RTS
C - - - - - 0x0021DD 00:A1CD: A9 17     LDA #con_98E4_17
C - - - - - 0x0021DF 00:A1CF: 4C E9 EC  JMP loc_0x03ECF9_write_data_to_ppu_buffer



sub_A1D2:
C - - - - - 0x0021E2 00:A1D2: 20 E0 A1  JSR sub_A1E0
C - - - - - 0x0021E5 00:A1D5: A9 7F     LDA #con__chr_bank + $7F
C - - - - - 0x0021E7 00:A1D7: 85 4A     STA ram_chr_bank_5124_5128
C - - - - - 0x0021E9 00:A1D9: 85 4B     STA ram_chr_bank______5129
C - - - - - 0x0021EB 00:A1DB: 85 4C     STA ram_chr_bank_5126_512A
C - - - - - 0x0021ED 00:A1DD: 85 4D     STA ram_chr_bank_5127_512B
bra_A1DF_RTS:
C - - - - - 0x0021EF 00:A1DF: 60        RTS



sub_A1E0:
C - - - - - 0x0021F0 00:A1E0: A9 00     LDA #con__chr_bank + $00
C - - - - - 0x0021F2 00:A1E2: 85 46     STA ram_chr_bank_5120
C - - - - - 0x0021F4 00:A1E4: A4 3A     LDY ram_partner
C - - - - - 0x0021F6 00:A1E6: C8        INY
C - - - - - 0x0021F7 00:A1E7: B9 F5 A1  LDA tbl_A1F5_chr_bank,Y
C - - - - - 0x0021FA 00:A1EA: 85 47     STA ram_chr_bank_5121
C - - - - - 0x0021FC 00:A1EC: A9 7E     LDA #con__chr_bank + $7E
C - - - - - 0x0021FE 00:A1EE: 85 48     STA ram_chr_bank_5122
C - - - - - 0x002200 00:A1F0: A9 7B     LDA #con__chr_bank + $7B
C - - - - - 0x002202 00:A1F2: 85 49     STA ram_chr_bank_5123
C - - - - - 0x002204 00:A1F4: 60        RTS



tbl_A1F5_chr_bank:
- D 1 - - - 0x002205 00:A1F5: 00        .byte con__chr_bank + $00   ; FF no partner
- - - - - - 0x002206 00:A1F6: 00        .byte con__chr_bank + $00   ; 00 placeholder
- D 1 - - - 0x002207 00:A1F7: 04        .byte con__chr_bank + $04   ; 01 Sypha
- D 1 - - - 0x002208 00:A1F8: 02        .byte con__chr_bank + $02   ; 02 Grant
- D 1 - - - 0x002209 00:A1F9: 06        .byte con__chr_bank + $06   ; 03 Alucard



sub_A1FA:
C - - - - - 0x00220A 00:A1FA: A5 30     LDA ram_screen_timer_lo
C - - - - - 0x00220C 00:A1FC: 29 0F     AND #$0F
C - - - - - 0x00220E 00:A1FE: D0 0B     BNE bra_A20B
C - - - - - 0x002210 00:A200: A5 30     LDA ram_screen_timer_lo
C - - - - - 0x002212 00:A202: C9 D0     CMP #$D0
C - - - - - 0x002214 00:A204: B0 05     BCS bra_A20B
C - - - - - 0x002216 00:A206: A9 3A     LDA #con_sound_earthshake
C - - - - - 0x002218 00:A208: 20 5F E2  JSR sub_0x03E26F_play_sound
bra_A20B:
C - - - - - 0x00221B 00:A20B: A5 30     LDA ram_screen_timer_lo
; / 10
C - - - - - 0x00221D 00:A20D: 4A        LSR
C - - - - - 0x00221E 00:A20E: 4A        LSR
C - - - - - 0x00221F 00:A20F: 4A        LSR
C - - - - - 0x002220 00:A210: 4A        LSR
C - - - - - 0x002221 00:A211: A8        TAY
C - - - - - 0x002222 00:A212: B9 37 A2  LDA tbl_A237_scroll_X,Y
C - - - - - 0x002225 00:A215: 85 00     STA ram_0000_t094_scroll_X
C - - - - - 0x002227 00:A217: A5 1A     LDA ram_frm_cnt
C - - - - - 0x002229 00:A219: 29 02     AND #$02
C - - - - - 0x00222B 00:A21B: F0 07     BEQ bra_A224
C - - - - - 0x00222D 00:A21D: 38        SEC
C - - - - - 0x00222E 00:A21E: A9 00     LDA #$00
C - - - - - 0x002230 00:A220: E5 00     SBC ram_0000_t094_scroll_X
C - - - - - 0x002232 00:A222: 85 00     STA ram_0000_t094_scroll_X
bra_A224:
C - - - - - 0x002234 00:A224: A5 00     LDA ram_0000_t094_scroll_X
C - - - - - 0x002236 00:A226: 85 FD     STA ram_scroll_X
C - - - - - 0x002238 00:A228: 0A        ASL
C - - - - - 0x002239 00:A229: A5 FF     LDA ram_for_2000
C - - - - - 0x00223B 00:A22B: 29 FE     AND #$FE
C - - - - - 0x00223D 00:A22D: 85 00     STA ram_0000_t095_base_nametable
C - - - - - 0x00223F 00:A22F: A9 00     LDA #$00
C - - - - - 0x002241 00:A231: 2A        ROL
C - - - - - 0x002242 00:A232: 05 00     ORA ram_0000_t095_base_nametable
C - - - - - 0x002244 00:A234: 85 FF     STA ram_for_2000
C - - - - - 0x002246 00:A236: 60        RTS



tbl_A237_scroll_X:
- - - - - - 0x002247 00:A237: 01        .byte $01   ; 00 
- D 1 - - - 0x002248 00:A238: 01        .byte $01   ; 10 
- D 1 - - - 0x002249 00:A239: 01        .byte $01   ; 20 
- D 1 - - - 0x00224A 00:A23A: 01        .byte $01   ; 30 
- D 1 - - - 0x00224B 00:A23B: 01        .byte $01   ; 40 
- D 1 - - - 0x00224C 00:A23C: 01        .byte $01   ; 50 
- D 1 - - - 0x00224D 00:A23D: 02        .byte $02   ; 60 
- D 1 - - - 0x00224E 00:A23E: 02        .byte $02   ; 70 
- D 1 - - - 0x00224F 00:A23F: 02        .byte $02   ; 80 
- D 1 - - - 0x002250 00:A240: 02        .byte $02   ; 90 
- D 1 - - - 0x002251 00:A241: 02        .byte $02   ; A0 
- D 1 - - - 0x002252 00:A242: 01        .byte $01   ; B0 
- D 1 - - - 0x002253 00:A243: 00        .byte $00   ; C0 
- D 1 - - - 0x002254 00:A244: 00        .byte $00   ; D0 
- D 1 - - - 0x002255 00:A245: 00        .byte $00   ; E0 
- D 1 - - - 0x002256 00:A246: 00        .byte $00   ; F0 



sub_A247:
C - - - - - 0x002257 00:A247: A2 00     LDX #$00
; bzk optimize, delete this JMP after deleting garbage at 0x00225C
C - - - - - 0x002259 00:A249: 4C 4E A2  JMP loc_A257_clear_data_for_all_objects


; bzk garbage
- - - - - - 0x00225C 00:A24C: A2 03     LDX #$03



loc_A257_clear_data_for_all_objects:
bra_A24E_loop:
C D 1 - - - 0x00225E 00:A24E: 20 57 A2  JSR sub_A257_clear_object_data
C - - - - - 0x002261 00:A251: E8        INX
C - - - - - 0x002262 00:A252: E0 1C     CPX #$1C
C - - - - - 0x002264 00:A254: D0 F8     BNE bra_A24E_loop
C - - - - - 0x002266 00:A256: 60        RTS



sub_A257_clear_object_data:
loc_A257_clear_object_data:
; bzk optimize, single JMP to here
C D 1 - - - 0x002267 00:A257: A9 00     LDA #$00
C - - - - - 0x002269 00:A259: 9D 00 04  STA ram_obj_anim_id,X
C - - - - - 0x00226C 00:A25C: 9D 8C 04  STA ram_obj_type,X  ; con_obj_type_00
C - - - - - 0x00226F 00:A25F: 9D 38 04  STA ram_obj_pos_X_hi,X
C - - - - - 0x002272 00:A262: 9D 1C 04  STA ram_obj_pos_Y_hi,X
C - - - - - 0x002275 00:A265: 9D 54 04  STA ram_0454_obj,X
C - - - - - 0x002278 00:A268: 9D 70 04  STA ram_obj_flags,X ; con_obj_flag_00
C - - - - - 0x00227B 00:A26B: 9D A8 04  STA ram_obj_facing,X
; bzk bug? this refers to 05C1-05C5, which is out of range
C - - - - - 0x00227E 00:A26E: 9D AA 05  STA ram_05AA_obj,X
C - - - - - 0x002281 00:A271: 60        RTS



sub_A272_change_1_color:
loc_A272_change_1_color:
; when players run below the map, depending on partner?
C D 1 - - - 0x002282 00:A272: 8D C1 07  STA ram_pal_buffer + $21
C - - - - - 0x002285 00:A275: 4C 99 A2  JMP loc_A299



sub_A278:
C - - - - - 0x002288 00:A278: AD EE 07  LDA ram_07EE
C - - - - - 0x00228B 00:A27B: 29 02     AND #$02
C - - - - - 0x00228D 00:A27D: F0 0A     BEQ bra_A289
loc_A27F:
C D 1 - - - 0x00228F 00:A27F: A0 00     LDY #$00
C - - - - - 0x002291 00:A281: A2 18     LDX #$18
C - - - - - 0x002293 00:A283: 20 A3 A2  JSR sub_A2A3_set_palette_for_map
C - - - - - 0x002296 00:A286: 20 A3 A2  JSR sub_A2A3_set_palette_for_map    ; X = 1C
bra_A289:
C - - - - - 0x002299 00:A289: A5 3A     LDA ram_partner
C - - - - - 0x00229B 00:A28B: 30 0C     BMI bra_A299    ; no partner
C - - - - - 0x00229D 00:A28D: C9 02     CMP #$02
C - - - - - 0x00229F 00:A28F: 90 08     BCC bra_A299    ; if con_player_Sypha
; * 04
C - - - - - 0x0022A1 00:A291: 0A        ASL
C - - - - - 0x0022A2 00:A292: 0A        ASL
C - - - - - 0x0022A3 00:A293: A8        TAY
C - - - - - 0x0022A4 00:A294: A2 14     LDX #$14
C - - - - - 0x0022A6 00:A296: 20 A3 A2  JSR sub_A2A3_set_palette_for_map
bra_A299:
loc_A299:
C D 1 - - - 0x0022A9 00:A299: A9 29     LDA #con_98E4_custom_palette
C - - - - - 0x0022AB 00:A29B: 20 E9 EC  JSR sub_0x03ECF9_write_data_to_ppu_buffer
C - - - - - 0x0022AE 00:A29E: A9 04     LDA #con_98E4_3F00_0000
C - - - - - 0x0022B0 00:A2A0: 4C E9 EC  JMP loc_0x03ECF9_write_data_to_ppu_buffer



sub_A2A3_set_palette_for_map:
; in
    ; X = buffer index
    ; Y = palette index
C - - - - - 0x0022B3 00:A2A3: A9 04     LDA #$04
C - - - - - 0x0022B5 00:A2A5: 85 00     STA ram_0000_t048_colors_counter
bra_A2A7_loop:
C - - - - - 0x0022B7 00:A2A7: B9 D3 A2  LDA tbl_A2D3_palette,Y
C - - - - - 0x0022BA 00:A2AA: 9D A2 07  STA ram_pal_buffer + $02,X
C - - - - - 0x0022BD 00:A2AD: C8        INY
C - - - - - 0x0022BE 00:A2AE: E8        INX
C - - - - - 0x0022BF 00:A2AF: C6 00     DEC ram_0000_t048_colors_counter
C - - - - - 0x0022C1 00:A2B1: D0 F4     BNE bra_A2A7_loop
C - - - - - 0x0022C3 00:A2B3: 60        RTS



sub_A2B4:
C - - - - - 0x0022C4 00:A2B4: A0 10     LDY #$10
C - - - - - 0x0022C6 00:A2B6: A2 00     LDX #$00
C - - - - - 0x0022C8 00:A2B8: A9 08     LDA #$08
C - - - - - 0x0022CA 00:A2BA: 85 02     STA ram_0002_t010_palette_counter
bra_A2BC_loop:
C - - - - - 0x0022CC 00:A2BC: 20 A3 A2  JSR sub_A2A3_set_palette_for_map
C - - - - - 0x0022CF 00:A2BF: C6 02     DEC ram_0002_t010_palette_counter
C - - - - - 0x0022D1 00:A2C1: D0 F9     BNE bra_A2BC_loop
C - - - - - 0x0022D3 00:A2C3: A9 00     LDA #< $3F00
C - - - - - 0x0022D5 00:A2C5: 8D A0 07  STA ram_pal_buffer
C - - - - - 0x0022D8 00:A2C8: A9 3F     LDA #> $3F00
C - - - - - 0x0022DA 00:A2CA: 8D A1 07  STA ram_pal_buffer + $01
C - - - - - 0x0022DD 00:A2CD: A9 FF     LDA #$FF    ; end token
C - - - - - 0x0022DF 00:A2CF: 8D C2 07  STA ram_pal_buffer + $22
C - - - - - 0x0022E2 00:A2D2: 60        RTS



tbl_A2D3_palette:
- D 1 - - - 0x0022E3 00:A2D3: 0F        .byte $0F, $0F, $16, $24   ; 00 
- D 1 - - - 0x0022E7 00:A2D7: 0F        .byte $0F, $0F, $05, $16   ; 01 
- D 1 - - - 0x0022EB 00:A2DB: 0F        .byte $0F, $08, $15, $38   ; 02 
- D 1 - - - 0x0022EF 00:A2DF: 0F        .byte $0F, $0F, $15, $36   ; 03 
- D 1 - - - 0x0022F3 00:A2E3: 0F        .byte $0F, $00, $07, $17   ; 04 
- D 1 - - - 0x0022F7 00:A2E7: 0F        .byte $0F, $07, $17, $20   ; 05 
- D 1 - - - 0x0022FB 00:A2EB: 0F        .byte $0F, $00, $03, $13   ; 06 
- D 1 - - - 0x0022FF 00:A2EF: 0F        .byte $0F, $02, $03, $11   ; 07 
- D 1 - - - 0x002303 00:A2F3: 0F        .byte $0F, $08, $28, $37   ; 08 
- D 1 - - - 0x002307 00:A2F7: 0F        .byte $0F, $21, $11, $20   ; 09 
- D 1 - - - 0x00230B 00:A2FB: 0F        .byte $0F, $0F, $21, $20   ; 0A 
- D 1 - - - 0x00230F 00:A2FF: 0F        .byte $0F, $0F, $07, $20   ; 0B 



sub_A303:
C - - - - - 0x002313 00:A303: A0 01     LDY #$01
C - - - - - 0x002315 00:A305: AD F1 07  LDA ram_07F1
C - - - - - 0x002318 00:A308: F0 21     BEQ bra_A32B_RTS
C - - - - - 0x00231A 00:A30A: C9 06     CMP #$06
C - - - - - 0x00231C 00:A30C: F0 02     BEQ bra_A310
C - - - - - 0x00231E 00:A30E: A0 00     LDY #$00
bra_A310:
C - - - - - 0x002320 00:A310: 84 11     STY ram_0011_t000
C - - - - - 0x002322 00:A312: EE EC 07  INC ram_07EC
C - - - - - 0x002325 00:A315: AD ED 07  LDA ram_07ED
C - - - - - 0x002328 00:A318: 29 1F     AND #$1F
C - - - - - 0x00232A 00:A31A: C9 0E     CMP #$0E
C - - - - - 0x00232C 00:A31C: B0 22     BCS bra_A340
C - - - - - 0x00232E 00:A31E: AD EC 07  LDA ram_07EC
C - - - - - 0x002331 00:A321: 29 3F     AND #$3F
C - - - - - 0x002333 00:A323: C9 1F     CMP #$1F
C - - - - - 0x002335 00:A325: F0 50     BEQ bra_A377
C - - - - - 0x002337 00:A327: C9 3F     CMP #$3F
C - - - - - 0x002339 00:A329: F0 01     BEQ bra_A32C
bra_A32B_RTS:
C - - - - - 0x00233B 00:A32B: 60        RTS
bra_A32C:
C - - - - - 0x00233C 00:A32C: A5 11     LDA ram_0011_t000
C - - - - - 0x00233E 00:A32E: D0 5B     BNE bra_A38B
C - - - - - 0x002340 00:A330: A2 03     LDX #$03
bra_A332_loop:
C - - - - - 0x002342 00:A332: BD 70 04  LDA ram_obj_flags,X
C - - - - - 0x002345 00:A335: 29 7F     AND #con_obj_flag_not_visible ^ $FF
C - - - - - 0x002347 00:A337: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x00234A 00:A33A: E8        INX
C - - - - - 0x00234B 00:A33B: E0 0A     CPX #$0A
C - - - - - 0x00234D 00:A33D: D0 F3     BNE bra_A332_loop
C - - - - - 0x00234F 00:A33F: 60        RTS
bra_A340:
C - - - - - 0x002350 00:A340: AD EC 07  LDA ram_07EC
C - - - - - 0x002353 00:A343: 29 7F     AND #$7F
C - - - - - 0x002355 00:A345: 85 00     STA ram_0000_t047
C - - - - - 0x002357 00:A347: AD EC 07  LDA ram_07EC
C - - - - - 0x00235A 00:A34A: 29 20     AND #$20
; * 04
C - - - - - 0x00235C 00:A34C: 0A        ASL
C - - - - - 0x00235D 00:A34D: 0A        ASL
C - - - - - 0x00235E 00:A34E: 05 00     ORA ram_0000_t047
; bzk I doubt this address is for object flags in this case
C - - - - - 0x002360 00:A350: 8D 73 04  STA ram_obj_flags + $03
C - - - - - 0x002363 00:A353: A2 04     LDX #$04
C - - - - - 0x002365 00:A355: 20 67 A3  JSR sub_A367
C - - - - - 0x002368 00:A358: 20 75 EF  JSR sub_0x03EF85
C - - - - - 0x00236B 00:A35B: AD 05 04  LDA ram_obj_anim_id + $05
C - - - - - 0x00236E 00:A35E: F0 16     BEQ bra_A376_RTS
C - - - - - 0x002370 00:A360: E8        INX
C - - - - - 0x002371 00:A361: 20 67 A3  JSR sub_A367
C - - - - - 0x002374 00:A364: 4C 75 EF  JMP loc_0x03EF85



sub_A367:
C - - - - - 0x002377 00:A367: A0 3A     LDY #$3A
C - - - - - 0x002379 00:A369: AD F1 07  LDA ram_07F1
C - - - - - 0x00237C 00:A36C: C9 16     CMP #$16
C - - - - - 0x00237E 00:A36E: D0 02     BNE bra_A372
C - - - - - 0x002380 00:A370: A0 3B     LDY #$3B
bra_A372:
C - - - - - 0x002382 00:A372: 98        TYA
C - - - - - 0x002383 00:A373: 9D AA 05  STA ram_05AA_obj,X
bra_A376_RTS:
C - - - - - 0x002386 00:A376: 60        RTS
bra_A377:
C - - - - - 0x002387 00:A377: A5 11     LDA ram_0011_t000
C - - - - - 0x002389 00:A379: D0 21     BNE bra_A39C
C - - - - - 0x00238B 00:A37B: A2 03     LDX #$03
bra_A37D_loop:
C - - - - - 0x00238D 00:A37D: BD 70 04  LDA ram_obj_flags,X
C - - - - - 0x002390 00:A380: 09 80     ORA #con_obj_flag_not_visible
C - - - - - 0x002392 00:A382: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x002395 00:A385: E8        INX
C - - - - - 0x002396 00:A386: E0 0A     CPX #$0A
C - - - - - 0x002398 00:A388: D0 F3     BNE bra_A37D_loop
C - - - - - 0x00239A 00:A38A: 60        RTS
bra_A38B:
C - - - - - 0x00239B 00:A38B: 20 84 A0  JSR sub_A084
C - - - - - 0x00239E 00:A38E: A9 06     LDA #$06
C - - - - - 0x0023A0 00:A390: A2 03     LDX #$03
C - - - - - 0x0023A2 00:A392: 20 47 A4  JSR sub_A447
C - - - - - 0x0023A5 00:A395: A9 17     LDA #$17
; bzk optimize, useless STA
C - - - - - 0x0023A7 00:A397: 85 10     STA ram_0010_t012_useless
C - - - - - 0x0023A9 00:A399: 4C 72 A2  JMP loc_A272_change_1_color
bra_A39C:
C - - - - - 0x0023AC 00:A39C: 20 A2 A0  JSR sub_A0A2
C - - - - - 0x0023AF 00:A39F: A9 07     LDA #$07
C - - - - - 0x0023B1 00:A3A1: A2 03     LDX #$03
C - - - - - 0x0023B3 00:A3A3: 20 47 A4  JSR sub_A447
C - - - - - 0x0023B6 00:A3A6: A9 20     LDA #$20
; bzk optimize, useless STA
C - - - - - 0x0023B8 00:A3A8: 85 10     STA ram_0010_t012_useless
C - - - - - 0x0023BA 00:A3AA: 4C 72 A2  JMP loc_A272_change_1_color



sub_A3AD:
C - - - - - 0x0023BD 00:A3AD: A4 3B     LDY ram_player
C - - - - - 0x0023BF 00:A3AF: B9 39 00  LDA ram_0039,Y
C - - - - - 0x0023C2 00:A3B2: A8        TAY
C - - - - - 0x0023C3 00:A3B3: A2 01     LDX #$01
loc_A3B5:
C D 1 - - - 0x0023C5 00:A3B5: B9 19 A4  LDA tbl_A419,Y
C - - - - - 0x0023C8 00:A3B8: 9D 54 04  STA ram_0454_obj,X
C - - - - - 0x0023CB 00:A3BB: B9 15 A4  LDA tbl_A415,Y
C - - - - - 0x0023CE 00:A3BE: 9D 1C 04  STA ram_obj_pos_Y_hi,X
C - - - - - 0x0023D1 00:A3C1: B9 11 A4  LDA tbl_A411,Y
C - - - - - 0x0023D4 00:A3C4: 9D AA 05  STA ram_05AA_obj,X
C - - - - - 0x0023D7 00:A3C7: B9 0D A4  LDA tbl_A40D,Y
C - - - - - 0x0023DA 00:A3CA: 9D 8C 04  STA ram_obj_type,X
C - - - - - 0x0023DD 00:A3CD: A9 01     LDA #$01
C - - - - - 0x0023DF 00:A3CF: 9D 7C 05  STA ram_obj_anim_timer,X
C - - - - - 0x0023E2 00:A3D2: A9 00     LDA #$00
C - - - - - 0x0023E4 00:A3D4: 9D 93 05  STA ram_obj_anim_cnt,X
C - - - - - 0x0023E7 00:A3D7: A0 01     LDY #$01
C - - - - - 0x0023E9 00:A3D9: AD ED 07  LDA ram_07ED
C - - - - - 0x0023EC 00:A3DC: 29 40     AND #$40
C - - - - - 0x0023EE 00:A3DE: F0 02     BEQ bra_A3E2
C - - - - - 0x0023F0 00:A3E0: A0 FF     LDY #$FF
bra_A3E2:
C - - - - - 0x0023F2 00:A3E2: 98        TYA
C - - - - - 0x0023F3 00:A3E3: 9D 38 04  STA ram_obj_pos_X_hi,X
C - - - - - 0x0023F6 00:A3E6: 10 03     BPL bra_A3EB
C - - - - - 0x0023F8 00:A3E8: FE A8 04  INC ram_obj_facing,X    ; -> facing left
bra_A3EB:
C - - - - - 0x0023FB 00:A3EB: 4C 75 EF  JMP loc_0x03EF85



sub_A3EE:
C - - - - - 0x0023FE 00:A3EE: AD 39 04  LDA ram_obj_pos_X_hi + $01
C - - - - - 0x002401 00:A3F1: C9 20     CMP #$20
C - - - - - 0x002403 00:A3F3: F0 04     BEQ bra_A3F9
C - - - - - 0x002405 00:A3F5: C9 E0     CMP #$E0
C - - - - - 0x002407 00:A3F7: D0 3A     BNE bra_A433_RTS
bra_A3F9:
C - - - - - 0x002409 00:A3F9: A2 02     LDX #$02
C - - - - - 0x00240B 00:A3FB: BD 00 04  LDA ram_obj_anim_id,X
C - - - - - 0x00240E 00:A3FE: D0 33     BNE bra_A433_RTS
C - - - - - 0x002410 00:A400: A4 3A     LDY ram_partner
C - - - - - 0x002412 00:A402: 30 2F     BMI bra_A433_RTS    ; if no partner
C - - - - - 0x002414 00:A404: A5 3B     LDA ram_player
C - - - - - 0x002416 00:A406: F0 02     BEQ bra_A40A    ; if con_player_Trevor
C - - - - - 0x002418 00:A408: A0 00     LDY #con_player_Trevor
bra_A40A:
C - - - - - 0x00241A 00:A40A: 4C B5 A3  JMP loc_A3B5



tbl_A40D:
- D 1 - - - 0x00241D 00:A40D: 00        .byte con_obj_type_00   ; 00 Trevor
- D 1 - - - 0x00241E 00:A40E: 0C        .byte con_obj_type_0C   ; 01 Sypha
- D 1 - - - 0x00241F 00:A40F: 0C        .byte con_obj_type_0C   ; 02 Grant
- D 1 - - - 0x002420 00:A410: 0C        .byte con_obj_type_0C   ; 03 Alucard



tbl_A411:
- D 1 - - - 0x002421 00:A411: 00        .byte $00   ; 00 Trevor
- D 1 - - - 0x002422 00:A412: 36        .byte $36   ; 01 Sypha
- D 1 - - - 0x002423 00:A413: 37        .byte $37   ; 02 Grant
- D 1 - - - 0x002424 00:A414: 38        .byte $38   ; 03 Alucard



tbl_A415:
- D 1 - - - 0x002425 00:A415: C0        .byte $C0   ; 00 Trevor
- D 1 - - - 0x002426 00:A416: C0        .byte $C0   ; 01 Sypha
- D 1 - - - 0x002427 00:A417: C4        .byte $C4   ; 02 Grant
- D 1 - - - 0x002428 00:A418: C0        .byte $C0   ; 03 Alucard



tbl_A419:
- D 1 - - - 0x002429 00:A419: 00        .byte $00   ; 00 Trevor
- D 1 - - - 0x00242A 00:A41A: 01        .byte $01   ; 01 Sypha
- D 1 - - - 0x00242B 00:A41B: 01        .byte $01   ; 02 Grant
- D 1 - - - 0x00242C 00:A41C: 01        .byte $01   ; 03 Alucard



sub_A41D:
C - - - - - 0x00242D 00:A41D: BD 00 04  LDA ram_obj_anim_id,X
C - - - - - 0x002430 00:A420: F0 1C     BEQ bra_A43E_RTS
C - - - - - 0x002432 00:A422: AD ED 07  LDA ram_07ED
C - - - - - 0x002435 00:A425: 29 40     AND #$40
C - - - - - 0x002437 00:A427: D0 0B     BNE bra_A434
C - - - - - 0x002439 00:A429: FE 38 04  INC ram_obj_pos_X_hi,X
C - - - - - 0x00243C 00:A42C: BD 38 04  LDA ram_obj_pos_X_hi,X
C - - - - - 0x00243F 00:A42F: C9 FC     CMP #$FC
C - - - - - 0x002441 00:A431: B0 0C     BCS bra_A43F
bra_A433_RTS:
C - - - - - 0x002443 00:A433: 60        RTS
bra_A434:
C - - - - - 0x002444 00:A434: DE 38 04  DEC ram_obj_pos_X_hi,X
C - - - - - 0x002447 00:A437: BD 38 04  LDA ram_obj_pos_X_hi,X
C - - - - - 0x00244A 00:A43A: C9 04     CMP #$04
C - - - - - 0x00244C 00:A43C: 90 01     BCC bra_A43F
bra_A43E_RTS:
C - - - - - 0x00244E 00:A43E: 60        RTS
bra_A43F:
C - - - - - 0x00244F 00:A43F: 4C 57 A2  JMP loc_A257_clear_object_data



loc_A442:
C D 1 - - - 0x002452 00:A442: A2 03     LDX #$03
C - - - - - 0x002454 00:A444: AD F1 07  LDA ram_07F1
sub_A447:
C - - - - - 0x002457 00:A447: 0A        ASL
C - - - - - 0x002458 00:A448: A8        TAY
C - - - - - 0x002459 00:A449: B9 AD A4  LDA tbl_A4AD,Y
C - - - - - 0x00245C 00:A44C: 85 00     STA ram_0000_t01C_data
C - - - - - 0x00245E 00:A44E: B9 AE A4  LDA tbl_A4AD + $01,Y
C - - - - - 0x002461 00:A451: 85 01     STA ram_0000_t01C_data + $01
C - - - - - 0x002463 00:A453: A0 00     LDY #$00
C - - - - - 0x002465 00:A455: B1 00     LDA (ram_0000_t01C_data),Y
; bzk optimize, useless check, none of the cases have 00 counter
C - - - - - 0x002467 00:A457: F0 31     BEQ bra_A48A_RTS
C - - - - - 0x002469 00:A459: 85 02     STA ram_0002_t02A_objects_counter
C - - - - - 0x00246B 00:A45B: C8        INY ; 01
bra_A45C_loop:
C - - - - - 0x00246C 00:A45C: A9 0C     LDA #con_obj_type_0C
C - - - - - 0x00246E 00:A45E: 9D 8C 04  STA ram_obj_type,X
C - - - - - 0x002471 00:A461: A9 00     LDA #con_obj_flag_00
C - - - - - 0x002473 00:A463: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x002476 00:A466: A9 00     LDA #$00
C - - - - - 0x002478 00:A468: 9D 54 04  STA ram_0454_obj,X
C - - - - - 0x00247B 00:A46B: A9 01     LDA #$01    ; facing left
C - - - - - 0x00247D 00:A46D: 9D A8 04  STA ram_obj_facing,X
C - - - - - 0x002480 00:A470: 9D 7C 05  STA ram_obj_anim_timer,X
C - - - - - 0x002483 00:A473: B1 00     LDA (ram_0000_t01C_data),Y
C - - - - - 0x002485 00:A475: 9D 00 04  STA ram_obj_anim_id,X
C - - - - - 0x002488 00:A478: C8        INY
C - - - - - 0x002489 00:A479: B1 00     LDA (ram_0000_t01C_data),Y
C - - - - - 0x00248B 00:A47B: 9D 38 04  STA ram_obj_pos_X_hi,X
C - - - - - 0x00248E 00:A47E: C8        INY
C - - - - - 0x00248F 00:A47F: B1 00     LDA (ram_0000_t01C_data),Y
C - - - - - 0x002491 00:A481: 9D 1C 04  STA ram_obj_pos_Y_hi,X
C - - - - - 0x002494 00:A484: C8        INY
C - - - - - 0x002495 00:A485: E8        INX
C - - - - - 0x002496 00:A486: C6 02     DEC ram_0002_t02A_objects_counter
C - - - - - 0x002498 00:A488: D0 D2     BNE bra_A45C_loop
bra_A48A_RTS:
C - - - - - 0x00249A 00:A48A: 60        RTS



tbl_A48B:
; index from 0x001254
- - - - - - 0x00249B 00:A48B: 01        .byte $01   ; 00 
- D 1 - - - 0x00249C 00:A48C: C2        .byte $C2   ; 01 
- D 1 - - - 0x00249D 00:A48D: 04        .byte $04   ; 02 
- D 1 - - - 0x00249E 00:A48E: 06        .byte $06   ; 03 
- D 1 - - - 0x00249F 00:A48F: 08        .byte $08   ; 04 
- D 1 - - - 0x0024A0 00:A490: 49        .byte $49   ; 05 
- D 1 - - - 0x0024A1 00:A491: 33        .byte $33   ; 06 
- D 1 - - - 0x0024A2 00:A492: 0B        .byte $0B   ; 07 
- D 1 - - - 0x0024A3 00:A493: 0C        .byte $0C   ; 08 
- D 1 - - - 0x0024A4 00:A494: 71        .byte $71   ; 09 
- D 1 - - - 0x0024A5 00:A495: F2        .byte $F2   ; 0A 
- D 1 - - - 0x0024A6 00:A496: 52        .byte $52   ; 0B 
- D 1 - - - 0x0024A7 00:A497: 14        .byte $14   ; 0C 
- D 1 - - - 0x0024A8 00:A498: 14        .byte $14   ; 0D 
- D 1 - - - 0x0024A9 00:A499: 15        .byte $15   ; 0E 
- D 1 - - - 0x0024AA 00:A49A: 56        .byte $56   ; 0F 


; bzk garbage, no such index
- - - - - - 0x0024AB 00:A49B: 16        .byte $16   ; 10 



tbl_A49C:
; index from 0x001254
- - - - - - 0x0024AC 00:A49C: 00        .byte $00   ; 00 
- D 1 - - - 0x0024AD 00:A49D: 00        .byte $00   ; 01 
- D 1 - - - 0x0024AE 00:A49E: 00        .byte $00   ; 02 
- D 1 - - - 0x0024AF 00:A49F: 00        .byte $00   ; 03 
- D 1 - - - 0x0024B0 00:A4A0: 00        .byte $00   ; 04 
- D 1 - - - 0x0024B1 00:A4A1: 00        .byte $00   ; 05 
- D 1 - - - 0x0024B2 00:A4A2: 00        .byte $00   ; 06 
- D 1 - - - 0x0024B3 00:A4A3: 00        .byte $00   ; 07 
- D 1 - - - 0x0024B4 00:A4A4: 00        .byte $00   ; 08 
- D 1 - - - 0x0024B5 00:A4A5: 01        .byte $01   ; 09 
- D 1 - - - 0x0024B6 00:A4A6: D1        .byte $D1   ; 0A 
- D 1 - - - 0x0024B7 00:A4A7: D3        .byte $D3   ; 0B 
- D 1 - - - 0x0024B8 00:A4A8: 73        .byte $73   ; 0C 
- D 1 - - - 0x0024B9 00:A4A9: 02        .byte $02   ; 0D 
- D 1 - - - 0x0024BA 00:A4AA: 02        .byte $02   ; 0E 
- D 1 - - - 0x0024BB 00:A4AB: 02        .byte $02   ; 0F 


; bzk garbage, no such index
- - - - - - 0x0024BC 00:A4AC: 02        .byte $02   ; 10 



tbl_A4AD:
- - - - - - 0x0024BD 00:A4AD: DB A4     .word _off013_A4DB_00
- - - - - - 0x0024BF 00:A4AF: DB A4     .word _off013_A4DB_01
- D 1 - - - 0x0024C1 00:A4B1: E5 A4     .word _off013_A4E5_02
- - - - - - 0x0024C3 00:A4B3: EF A4     .word _off013_A4EF_03
- D 1 - - - 0x0024C5 00:A4B5: EF A4     .word _off013_A4EF_04
- - - - - - 0x0024C7 00:A4B7: FC A4     .word _off013_A4FC_05
- D 1 - - - 0x0024C9 00:A4B9: FC A4     .word _off013_A4FC_06
- D 1 - - - 0x0024CB 00:A4BB: 00 A5     .word _off013_A500_07
- D 1 - - - 0x0024CD 00:A4BD: 0A A5     .word _off013_A50A_08
- D 1 - - - 0x0024CF 00:A4BF: 14 A5     .word _off013_A514_09
- - - - - - 0x0024D1 00:A4C1: 1E A5     .word _off013_A51E_0A
- D 1 - - - 0x0024D3 00:A4C3: 1E A5     .word _off013_A51E_0B
- D 1 - - - 0x0024D5 00:A4C5: 28 A5     .word _off013_A528_0C
- - - - - - 0x0024D7 00:A4C7: 32 A5     .word _off013_A532_0D
- - - - - - 0x0024D9 00:A4C9: 43 A5     .word _off013_A543_0E
- - - - - - 0x0024DB 00:A4CB: 32 A5     .word _off013_A532_0F
- - - - - - 0x0024DD 00:A4CD: 39 A5     .word _off013_A539_10
- D 1 - - - 0x0024DF 00:A4CF: 32 A5     .word _off013_A532_11
- D 1 - - - 0x0024E1 00:A4D1: 39 A5     .word _off013_A539_12
- D 1 - - - 0x0024E3 00:A4D3: 43 A5     .word _off013_A543_13
- D 1 - - - 0x0024E5 00:A4D5: 4A A5     .word _off013_A54A_14
- D 1 - - - 0x0024E7 00:A4D7: 51 A5     .word _off013_A551_15
- D 1 - - - 0x0024E9 00:A4D9: 58 A5     .word _off013_A558_16



_off013_A4DB_00:
_off013_A4DB_01:
- - - - - - 0x0024EB 00:A4DB: 03        .byte $03   ; counter
;                                              +--------------- animation
;                                              |    +---------- pos_X_hi
;                                              |    |    +----- pos_Y_hi
;                                              |    |    |
- - - - - - 0x0024EC 00:A4DC: A0        .byte $A0, $31, $49   ; 01 
- - - - - - 0x0024EF 00:A4DF: D6        .byte $D6, $35, $2B   ; 02 
- - - - - - 0x0024F2 00:A4E2: D8        .byte $D8, $3F, $51   ; 03 



_off013_A4E5_02:
- D 1 - I - 0x0024F5 00:A4E5: 03        .byte $03   ; counter
;                                              +--------------- animation
;                                              |    +---------- pos_X_hi
;                                              |    |    +----- pos_Y_hi
;                                              |    |    |
- D 1 - I - 0x0024F6 00:A4E6: A2        .byte $A2, $58, $4F   ; 01 
- D 1 - I - 0x0024F9 00:A4E9: D6        .byte $D6, $55, $33   ; 02 
- D 1 - I - 0x0024FC 00:A4EC: D8        .byte $D8, $4A, $57   ; 03 



_off013_A4EF_03:
_off013_A4EF_04:
- D 1 - I - 0x0024FF 00:A4EF: 04        .byte $04   ; counter
;                                              +--------------- animation
;                                              |    +---------- pos_X_hi
;                                              |    |    +----- pos_Y_hi
;                                              |    |    |
- D 1 - I - 0x002500 00:A4F0: A6        .byte $A6, $35, $75   ; 01 
- D 1 - I - 0x002503 00:A4F3: A8        .byte $A8, $4F, $87   ; 02 
- D 1 - I - 0x002506 00:A4F6: D6        .byte $D6, $40, $59   ; 03 
- D 1 - I - 0x002509 00:A4F9: D8        .byte $D8, $59, $83   ; 04 



_off013_A4FC_05:
_off013_A4FC_06:
- D 1 - I - 0x00250C 00:A4FC: 01        .byte $01   ; counter
;                                              +--------------- animation
;                                              |    +---------- pos_X_hi
;                                              |    |    +----- pos_Y_hi
;                                              |    |    |
- D 1 - I - 0x00250D 00:A4FD: AA        .byte $AA, $77, $7B   ; 01 



_off013_A500_07:
- D 1 - I - 0x002510 00:A500: 03        .byte $03   ; counter
;                                              +--------------- animation
;                                              |    +---------- pos_X_hi
;                                              |    |    +----- pos_Y_hi
;                                              |    |    |
- D 1 - I - 0x002511 00:A501: AC        .byte $AC, $77, $7B   ; 01 
- D 1 - I - 0x002514 00:A504: D6        .byte $D6, $5F, $73   ; 02 
- D 1 - I - 0x002517 00:A507: D8        .byte $D8, $81, $62   ; 03 



_off013_A50A_08:
- D 1 - I - 0x00251A 00:A50A: 03        .byte $03   ; counter
;                                              +--------------- animation
;                                              |    +---------- pos_X_hi
;                                              |    |    +----- pos_Y_hi
;                                              |    |    |
- D 1 - I - 0x00251B 00:A50B: AE        .byte $AE, $B2, $60   ; 01 
- D 1 - I - 0x00251E 00:A50E: D6        .byte $D6, $AF, $5E   ; 02 
- D 1 - I - 0x002521 00:A511: D8        .byte $D8, $B5, $44   ; 03 



_off013_A514_09:
- D 1 - I - 0x002524 00:A514: 03        .byte $03   ; counter
;                                              +--------------- animation
;                                              |    +---------- pos_X_hi
;                                              |    |    +----- pos_Y_hi
;                                              |    |    |
- D 1 - I - 0x002525 00:A515: B0        .byte $B0, $A1, $4F   ; 01 
- D 1 - I - 0x002528 00:A518: D6        .byte $D6, $AC, $52   ; 02 
- D 1 - I - 0x00252B 00:A51B: D8        .byte $D8, $86, $42   ; 03 



_off013_A51E_0A:
_off013_A51E_0B:
- D 1 - I - 0x00252E 00:A51E: 03        .byte $03   ; counter
;                                              +--------------- animation
;                                              |    +---------- pos_X_hi
;                                              |    |    +----- pos_Y_hi
;                                              |    |    |
- D 1 - I - 0x00252F 00:A51F: B4        .byte $B4, $7F, $97   ; 01 
- D 1 - I - 0x002532 00:A522: D6        .byte $D6, $64, $91   ; 02 
- D 1 - I - 0x002535 00:A525: D8        .byte $D8, $95, $87   ; 03 



_off013_A528_0C:
- D 1 - I - 0x002538 00:A528: 03        .byte $03   ; counter
;                                              +--------------- animation
;                                              |    +---------- pos_X_hi
;                                              |    |    +----- pos_Y_hi
;                                              |    |    |
- D 1 - I - 0x002539 00:A529: B6        .byte $B6, $AA, $85   ; 01 
- D 1 - I - 0x00253C 00:A52C: D6        .byte $D6, $9B, $78   ; 02 
- D 1 - I - 0x00253F 00:A52F: D8        .byte $D8, $AB, $6D   ; 03 



_off013_A532_0D:
_off013_A532_0F:
_off013_A532_11:
- D 1 - I - 0x002542 00:A532: 02        .byte $02   ; counter
;                                              +--------------- animation
;                                              |    +---------- pos_X_hi
;                                              |    |    +----- pos_Y_hi
;                                              |    |    |
- D 1 - I - 0x002543 00:A533: EA        .byte $EA, $90, $7F   ; 01 
- D 1 - I - 0x002546 00:A536: EC        .byte $EC, $96, $6F   ; 02 



_off013_A539_10:
_off013_A539_12:
- D 1 - I - 0x002549 00:A539: 03        .byte $03   ; counter
;                                              +--------------- animation
;                                              |    +---------- pos_X_hi
;                                              |    |    +----- pos_Y_hi
;                                              |    |    |
- D 1 - I - 0x00254A 00:A53A: EA        .byte $EA, $98, $7F   ; 01 
- D 1 - I - 0x00254D 00:A53D: EC        .byte $EC, $78, $75   ; 02 
- D 1 - I - 0x002550 00:A540: EC        .byte $EC, $6F, $37   ; 03 



_off013_A543_0E:
_off013_A543_13:
- D 1 - I - 0x002553 00:A543: 02        .byte $02   ; counter
;                                              +--------------- animation
;                                              |    +---------- pos_X_hi
;                                              |    |    +----- pos_Y_hi
;                                              |    |    |
- D 1 - I - 0x002554 00:A544: EA        .byte $EA, $22, $77   ; 01 
- D 1 - I - 0x002557 00:A547: EC        .byte $EC, $6E, $7F   ; 02 



_off013_A54A_14:
- D 1 - I - 0x00255A 00:A54A: 02        .byte $02   ; counter
;                                              +--------------- animation
;                                              |    +---------- pos_X_hi
;                                              |    |    +----- pos_Y_hi
;                                              |    |    |
- D 1 - I - 0x00255B 00:A54B: EA        .byte $EA, $7A, $87   ; 01 
- D 1 - I - 0x00255E 00:A54E: EC        .byte $EC, $BF, $6F   ; 02 



_off013_A551_15:
- D 1 - I - 0x002561 00:A551: 02        .byte $02   ; counter
;                                              +--------------- animation
;                                              |    +---------- pos_X_hi
;                                              |    |    +----- pos_Y_hi
;                                              |    |    |
- D 1 - I - 0x002562 00:A552: EA        .byte $EA, $B7, $5C   ; 01 
- D 1 - I - 0x002565 00:A555: EC        .byte $EC, $AC, $2F   ; 02 



_off013_A558_16:
- D 1 - I - 0x002568 00:A558: 02        .byte $02   ; counter
;                                              +--------------- animation
;                                              |    +---------- pos_X_hi
;                                              |    |    +----- pos_Y_hi
;                                              |    |    |
- D 1 - I - 0x002569 00:A559: EA        .byte $EA, $9B, $27   ; 01 
- D 1 - I - 0x00256C 00:A55C: F0        .byte $F0, $69, $2F   ; 02 



sub_A55F:
; in
    ; A = 
C - - - - - 0x00256F 00:A55F: 85 00     STA ram_0000_t096
C - - - - - 0x002571 00:A561: A9 01     LDA #$01
C - - - - - 0x002573 00:A563: 20 14 ED  JSR sub_0x03ED24_write_byte_to_buffer___unk_index
; * 03
C - - - - - 0x002576 00:A566: A5 00     LDA ram_0000_t096
C - - - - - 0x002578 00:A568: 0A        ASL
C - - - - - 0x002579 00:A569: 65 00     ADC ram_0000_t096
C - - - - - 0x00257B 00:A56B: A8        TAY
C - - - - - 0x00257C 00:A56C: B9 81 A5  LDA tbl_A581,Y
C - - - - - 0x00257F 00:A56F: 20 16 ED  JSR sub_0x03ED26_write_byte_to_buffer_X
C - - - - - 0x002582 00:A572: B9 82 A5  LDA tbl_A581 + $01,Y
C - - - - - 0x002585 00:A575: 20 16 ED  JSR sub_0x03ED26_write_byte_to_buffer_X
C - - - - - 0x002588 00:A578: B9 83 A5  LDA tbl_A581 + $02,Y
C - - - - - 0x00258B 00:A57B: 20 16 ED  JSR sub_0x03ED26_write_byte_to_buffer_X
C - - - - - 0x00258E 00:A57E: 4C 12 ED  JMP loc_0x03ED22_close_buffer



tbl_A581:
; 00 
- D 1 - - - 0x002591 00:A581: 2C 21     .word $212C ; ppu address
- D 1 - - - 0x002593 00:A583: 38        .byte $38   ; tile
; 01 
- D 1 - - - 0x002594 00:A584: 2D 21     .word $212D ; 
- D 1 - - - 0x002596 00:A586: 39        .byte $39   ; 
; 02 
- D 1 - - - 0x002597 00:A587: 2E 21     .word $212E ; 
- D 1 - - - 0x002599 00:A589: 3A        .byte $3A   ; 
; 03 
- D 1 - - - 0x00259A 00:A58A: 4C 21     .word $214C ; 
- D 1 - - - 0x00259C 00:A58C: 55        .byte $55   ; 
; 04 
- D 1 - - - 0x00259D 00:A58D: 4D 21     .word $214D ; 
- D 1 - - - 0x00259F 00:A58F: 56        .byte $56   ; 
; 05 
- D 1 - - - 0x0025A0 00:A590: 6C 21     .word $216C ; 
- D 1 - - - 0x0025A2 00:A592: 75        .byte $75   ; 
; 06 
- D 1 - - - 0x0025A3 00:A593: 6D 21     .word $216D ; 
- D 1 - - - 0x0025A5 00:A595: 76        .byte $76   ; 
; 07 
- D 1 - - - 0x0025A6 00:A596: 6E 21     .word $216E ; 
- D 1 - - - 0x0025A8 00:A598: B1        .byte $B1   ; 
; 08 
- D 1 - - - 0x0025A9 00:A599: 8D 21     .word $218D ; 
- D 1 - - - 0x0025AB 00:A59B: 87        .byte $87   ; 
; 09 
- D 1 - - - 0x0025AC 00:A59C: 38 22     .word $2238 ; 
- D 1 - - - 0x0025AE 00:A59E: DF        .byte $DF   ; 
; 0A 
- D 1 - - - 0x0025AF 00:A59F: 39 22     .word $2239 ; 
- D 1 - - - 0x0025B1 00:A5A1: AB        .byte $AB   ; 
; 0B 
- D 1 - - - 0x0025B2 00:A5A2: 3A 22     .word $223A ; 
- D 1 - - - 0x0025B4 00:A5A4: D4        .byte $D4   ; 
; 0C 
- D 1 - - - 0x0025B5 00:A5A5: 57 22     .word $2257 ; 
- D 1 - - - 0x0025B7 00:A5A7: AB        .byte $AB   ; 
; 0D 
- D 1 - - - 0x0025B8 00:A5A8: 58 22     .word $2258 ; 
- D 1 - - - 0x0025BA 00:A5AA: EF        .byte $EF   ; 
; 0E 
- D 1 - - - 0x0025BB 00:A5AB: 59 22     .word $2259 ; 
- D 1 - - - 0x0025BD 00:A5AD: AB        .byte $AB   ; 
; 0F 
- D 1 - - - 0x0025BE 00:A5AE: 5A 22     .word $225A ; 
- D 1 - - - 0x0025C0 00:A5B0: EF        .byte $EF   ; 
; 10 
- D 1 - - - 0x0025C1 00:A5B1: 77 22     .word $2277 ; 
- D 1 - - - 0x0025C3 00:A5B3: D2        .byte $D2   ; 
; 11 
- D 1 - - - 0x0025C4 00:A5B4: 78 22     .word $2278 ; 
- D 1 - - - 0x0025C6 00:A5B6: D3        .byte $D3   ; 



loc_0x0025C7:
C D 1 - - - 0x0025C7 00:A5B7: A5 19     LDA ram_0019_subscript
C - - - - - 0x0025C9 00:A5B9: 20 6D E8  JSR sub_0x03E87D_jump_to_pointers_after_JSR_A
- D 1 - I - 0x0025CC 00:A5BC: D6 A5     .word ofs_029_A5D6_00
- D 1 - I - 0x0025CE 00:A5BE: F3 A5     .word ofs_029_A5F3_01
- D 1 - I - 0x0025D0 00:A5C0: 45 A6     .word ofs_029_A645_02
- D 1 - I - 0x0025D2 00:A5C2: 57 A6     .word ofs_029_A657_03
- D 1 - I - 0x0025D4 00:A5C4: B1 A6     .word ofs_029_A6B1_04
- D 1 - I - 0x0025D6 00:A5C6: 24 A7     .word ofs_029_A724_05
- D 1 - I - 0x0025D8 00:A5C8: CB A8     .word ofs_029_A8CB_06
- D 1 - I - 0x0025DA 00:A5CA: 10 A9     .word ofs_029_A910_07
- D 1 - I - 0x0025DC 00:A5CC: 4B A9     .word ofs_029_A94B_08
- D 1 - I - 0x0025DE 00:A5CE: C0 A9     .word ofs_029_A9C0_09
- D 1 - I - 0x0025E0 00:A5D0: EA A9     .word ofs_029_A9EA_0A
- - - - - - 0x0025E2 00:A5D2: 04 AA     .word ofs_029_AA04_0B_RTS
- - - - - - 0x0025E4 00:A5D4: 04 AA     .word ofs_029_AA04_0C_RTS



ofs_029_A5D6_00:
C - - J - - 0x0025E6 00:A5D6: 20 27 E2  JSR sub_0x03E237_disable_sound_engine
C - - - - - 0x0025E9 00:A5D9: 20 FD EB  JSR sub_0x03EC0D_clear_nametables
C - - - - - 0x0025EC 00:A5DC: 20 8A E7  JSR sub_0x03E79A
C - - - - - 0x0025EF 00:A5DF: A0 00     LDY #$00
C - - - - - 0x0025F1 00:A5E1: A5 32     LDA ram_blk_hi
; bzk optimize, no need for CMP 00
C - - - - - 0x0025F3 00:A5E3: C9 00     CMP #$00
C - - - - - 0x0025F5 00:A5E5: F0 06     BEQ bra_A5ED
C - - - - - 0x0025F7 00:A5E7: C8        INY ; 01
C - - - - - 0x0025F8 00:A5E8: C9 02     CMP #$02
C - - - - - 0x0025FA 00:A5EA: F0 01     BEQ bra_A5ED
C - - - - - 0x0025FC 00:A5EC: C8        INY ; 02
bra_A5ED:
C - - - - - 0x0025FD 00:A5ED: 8C 80 07  STY ram_0780
C - - - - - 0x002600 00:A5F0: E6 19     INC ram_0019_subscript
C - - - - - 0x002602 00:A5F2: 60        RTS



ofs_029_A5F3_01:
C - - J - - 0x002603 00:A5F3: 20 3D E7  JSR sub_0x03E74D
C - - - - - 0x002606 00:A5F6: A0 00     LDY #$00
bra_A5F8_loop:
C - - - - - 0x002608 00:A5F8: B9 3F A6  LDA tbl_A63F,Y
C - - - - - 0x00260B 00:A5FB: 99 48 00  STA ram_chr_banks + $02,Y
C - - - - - 0x00260E 00:A5FE: C8        INY
C - - - - - 0x00260F 00:A5FF: C0 06     CPY #$06
C - - - - - 0x002611 00:A601: D0 F5     BNE bra_A5F8_loop
C - - - - - 0x002613 00:A603: A9 18     LDA #con_98E4_18_bg_pal
C - - - - - 0x002615 00:A605: 20 E9 EC  JSR sub_0x03ECF9_write_data_to_ppu_buffer
C - - - - - 0x002618 00:A608: A9 04     LDA #con_98E4_3F00_0000
C - - - - - 0x00261A 00:A60A: 20 E9 EC  JSR sub_0x03ECF9_write_data_to_ppu_buffer
C - - - - - 0x00261D 00:A60D: A2 0C     LDX #con_EC77_0C
C - - - - - 0x00261F 00:A60F: A9 98     LDA #con_prg_bank + $98
C - - - - - 0x002621 00:A611: 20 D5 EB  JSR sub_0x03EBE5_draw_screen
C - - - - - 0x002624 00:A614: AD 80 07  LDA ram_0780
C - - - - - 0x002627 00:A617: F0 05     BEQ bra_A61E
C - - - - - 0x002629 00:A619: A9 17     LDA #con_98E4_17
C - - - - - 0x00262B 00:A61B: 20 E9 EC  JSR sub_0x03ECF9_write_data_to_ppu_buffer
bra_A61E:
C - - - - - 0x00262E 00:A61E: AD 80 07  LDA ram_0780
C - - - - - 0x002631 00:A621: 0A        ASL
C - - - - - 0x002632 00:A622: A8        TAY
C - - - - - 0x002633 00:A623: B9 1F AE  LDA tbl_AE1F,Y
C - - - - - 0x002636 00:A626: 85 08     STA ram_0008_t028_data
C - - - - - 0x002638 00:A628: B9 20 AE  LDA tbl_AE1F + $01,Y
C - - - - - 0x00263B 00:A62B: 85 09     STA ram_0008_t028_data + $01
C - - - - - 0x00263D 00:A62D: 20 48 AD  JSR sub_AD48_write_data_to_buffer
C - - - - - 0x002640 00:A630: A9 78     LDA #< $0078
C - - - - - 0x002642 00:A632: A0 00     LDY #> $0078
C - - - - - 0x002644 00:A634: 20 8E E5  JSR sub_0x03E59E_set_screen_timer
C - - - - - 0x002647 00:A637: A9 6C     LDA #con_music_6C
C - - - - - 0x002649 00:A639: 20 5F E2  JSR sub_0x03E26F_play_sound
C - - - - - 0x00264C 00:A63C: E6 19     INC ram_0019_subscript
C - - - - - 0x00264E 00:A63E: 60        RTS



tbl_A63F:
- D 1 - - - 0x00264F 00:A63F: 7E        .byte con__chr_bank + $7E   ; 
- D 1 - - - 0x002650 00:A640: 7B        .byte con__chr_bank + $7B   ; 
- D 1 - - - 0x002651 00:A641: 74        .byte con__chr_bank + $74   ; 
- D 1 - - - 0x002652 00:A642: 75        .byte con__chr_bank + $75   ; 
- D 1 - - - 0x002653 00:A643: 76        .byte con__chr_bank + $76   ; 
- D 1 - - - 0x002654 00:A644: 77        .byte con__chr_bank + $77   ; 



ofs_029_A645_02:
C - - J - - 0x002655 00:A645: 20 79 E5  JSR sub_0x03E589_decrease_screen_timer
C - - - - - 0x002658 00:A648: F0 01     BEQ bra_A64B
C - - - - - 0x00265A 00:A64A: 60        RTS
bra_A64B:
C - - - - - 0x00265B 00:A64B: A0 00     LDY #$00
C - - - - - 0x00265D 00:A64D: 8C 81 07  STY ram_0781
C - - - - - 0x002660 00:A650: C8        INY ; 01
C - - - - - 0x002661 00:A651: 8C 82 07  STY ram_0782
C - - - - - 0x002664 00:A654: E6 19     INC ram_0019_subscript
C - - - - - 0x002666 00:A656: 60        RTS



ofs_029_A657_03:
C - - J - - 0x002667 00:A657: CE 82 07  DEC ram_0782
C - - - - - 0x00266A 00:A65A: F0 01     BEQ bra_A65D
C - - - - - 0x00266C 00:A65C: 60        RTS
bra_A65D:
C - - - - - 0x00266D 00:A65D: AD 81 07  LDA ram_0781
; * 04
C - - - - - 0x002670 00:A660: 0A        ASL
C - - - - - 0x002671 00:A661: 0A        ASL
C - - - - - 0x002672 00:A662: A8        TAY
C - - - - - 0x002673 00:A663: B9 9C A6  LDA tbl_A69C_palette,Y
C - - - - - 0x002676 00:A666: C9 FF     CMP #$FF
C - - - - - 0x002678 00:A668: F0 2A     BEQ bra_A694_FF
C - - - - - 0x00267A 00:A66A: 84 07     STY ram_0007_t002
C - - - - - 0x00267C 00:A66C: A9 18     LDA #con_98E4_18_bg_pal
C - - - - - 0x00267E 00:A66E: 20 E9 EC  JSR sub_0x03ECF9_write_data_to_ppu_buffer
C - - - - - 0x002681 00:A671: A4 07     LDY ram_0007_t002
C - - - - - 0x002683 00:A673: B9 9C A6  LDA tbl_A69C_palette,Y
C - - - - - 0x002686 00:A676: 9D F4 02  STA ram_ppu_buffer - $0C,X
C - - - - - 0x002689 00:A679: B9 9D A6  LDA tbl_A69C_palette + $01,Y
C - - - - - 0x00268C 00:A67C: 9D F5 02  STA ram_ppu_buffer - $0B,X
C - - - - - 0x00268F 00:A67F: B9 9E A6  LDA tbl_A69C_palette + $02,Y
C - - - - - 0x002692 00:A682: 9D F6 02  STA ram_ppu_buffer - $0A,X
C - - - - - 0x002695 00:A685: B9 9F A6  LDA tbl_A69C_palette + $03,Y
C - - - - - 0x002698 00:A688: 8D 82 07  STA ram_0782
C - - - - - 0x00269B 00:A68B: A9 04     LDA #con_98E4_3F00_0000
C - - - - - 0x00269D 00:A68D: 20 E9 EC  JSR sub_0x03ECF9_write_data_to_ppu_buffer
C - - - - - 0x0026A0 00:A690: EE 81 07  INC ram_0781
C - - - - - 0x0026A3 00:A693: 60        RTS
bra_A694_FF:
C - - - - - 0x0026A4 00:A694: A9 00     LDA #$00
C - - - - - 0x0026A6 00:A696: 8D 81 07  STA ram_0781
C - - - - - 0x0026A9 00:A699: E6 19     INC ram_0019_subscript
C - - - - - 0x0026AB 00:A69B: 60        RTS



tbl_A69C_palette:
- D 1 - - - 0x0026AC 00:A69C: 07        .byte $07, $17, $20, $04   ; 00 
- D 1 - - - 0x0026B0 00:A6A0: 07        .byte $07, $07, $10, $04   ; 01 
- D 1 - - - 0x0026B4 00:A6A4: 0F        .byte $0F, $07, $10, $04   ; 02 
- D 1 - - - 0x0026B8 00:A6A8: 0F        .byte $0F, $0F, $10, $04   ; 03 
- D 1 - - - 0x0026BC 00:A6AC: 0F        .byte $0F, $0F, $0F, $04   ; 04 
- D 1 - - - 0x0026C0 00:A6B0: FF        .byte $FF   ; 05 end token



ofs_029_A6B1_04:
C - - J - - 0x0026C1 00:A6B1: AD 80 07  LDA ram_0780
C - - - - - 0x0026C4 00:A6B4: 0A        ASL
C - - - - - 0x0026C5 00:A6B5: A8        TAY
C - - - - - 0x0026C6 00:A6B6: B9 25 AE  LDA tbl_AE25,Y
C - - - - - 0x0026C9 00:A6B9: 85 0A     STA ram_000A_t013_data
C - - - - - 0x0026CB 00:A6BB: B9 26 AE  LDA tbl_AE25 + $01,Y
C - - - - - 0x0026CE 00:A6BE: 85 0B     STA ram_000A_t013_data + $01
C - - - - - 0x0026D0 00:A6C0: AD 81 07  LDA ram_0781
C - - - - - 0x0026D3 00:A6C3: 0A        ASL
C - - - - - 0x0026D4 00:A6C4: A8        TAY
C - - - - - 0x0026D5 00:A6C5: B1 0A     LDA (ram_000A_t013_data),Y
C - - - - - 0x0026D7 00:A6C7: 85 08     STA ram_0008_t028_data
C - - - - - 0x0026D9 00:A6C9: C8        INY
C - - - - - 0x0026DA 00:A6CA: C9 FF     CMP #$FF
C - - - - - 0x0026DC 00:A6CC: F0 0B     BEQ bra_A6D9_FF
C - - - - - 0x0026DE 00:A6CE: B1 0A     LDA (ram_000A_t013_data),Y
bra_A6D0:
C - - - - - 0x0026E0 00:A6D0: 85 09     STA ram_0008_t028_data + $01
C - - - - - 0x0026E2 00:A6D2: 20 48 AD  JSR sub_AD48_write_data_to_buffer
C - - - - - 0x0026E5 00:A6D5: EE 81 07  INC ram_0781
C - - - - - 0x0026E8 00:A6D8: 60        RTS
bra_A6D9_FF:
C - - - - - 0x0026E9 00:A6D9: B1 0A     LDA (ram_000A_t013_data),Y
C - - - - - 0x0026EB 00:A6DB: C9 FF     CMP #$FF
C - - - - - 0x0026ED 00:A6DD: D0 F1     BNE bra_A6D0
; FFFF
C - - - - - 0x0026EF 00:A6DF: AD 80 07  LDA ram_0780
; * 06
C - - - - - 0x0026F2 00:A6E2: 0A        ASL
C - - - - - 0x0026F3 00:A6E3: 0A        ASL
C - - - - - 0x0026F4 00:A6E4: 18        CLC
C - - - - - 0x0026F5 00:A6E5: 6D 80 07  ADC ram_0780
C - - - - - 0x0026F8 00:A6E8: A8        TAY
C - - - - - 0x0026F9 00:A6E9: B9 15 A7  LDA tbl_A715,Y
C - - - - - 0x0026FC 00:A6EC: 8D 83 07  STA ram_0783
C - - - - - 0x0026FF 00:A6EF: B9 16 A7  LDA tbl_A715 + $01,Y
C - - - - - 0x002702 00:A6F2: 8D 84 07  STA ram_0784
C - - - - - 0x002705 00:A6F5: B9 17 A7  LDA tbl_A715 + $02,Y
C - - - - - 0x002708 00:A6F8: 8D 85 07  STA ram_0785
C - - - - - 0x00270B 00:A6FB: B9 18 A7  LDA tbl_A715 + $03,Y
C - - - - - 0x00270E 00:A6FE: 8D 86 07  STA ram_0786
C - - - - - 0x002711 00:A701: B9 19 A7  LDA tbl_A715 + $04,Y
C - - - - - 0x002714 00:A704: 8D 87 07  STA ram_0787
C - - - - - 0x002717 00:A707: A9 00     LDA #$00
C - - - - - 0x002719 00:A709: 8D 88 07  STA ram_0788
C - - - - - 0x00271C 00:A70C: 8D 89 07  STA ram_0789
C - - - - - 0x00271F 00:A70F: 8D 89 07  STA ram_0789
C - - - - - 0x002722 00:A712: E6 19     INC ram_0019_subscript
C - - - - - 0x002724 00:A714: 60        RTS



tbl_A715:
;                                              +------------------------- 
;                                              |    +-------------------- 
;                                              |    |    +--------------- 
;                                              |    |    |    +---------- 
;                                              |    |    |    |    +----- 
;                                              |    |    |    |    |
- D 1 - - - 0x002725 00:A715: 00        .byte $00, $01, $00, $01, $28   ; 00 
- D 1 - - - 0x00272A 00:A71A: 00        .byte $00, $01, $80, $01, $30   ; 01 
- D 1 - - - 0x00272F 00:A71F: 80        .byte $80, $FF, $20, $01, $40   ; 02 



ofs_029_A724_05:
C - - J - - 0x002734 00:A724: A9 00     LDA #$00
C - - - - - 0x002736 00:A726: AC 84 07  LDY ram_0784
C - - - - - 0x002739 00:A729: 10 02     BPL bra_A72D
C - - - - - 0x00273B 00:A72B: A9 FF     LDA #$FF
bra_A72D:
C - - - - - 0x00273D 00:A72D: 85 01     STA ram_0001_t024
C - - - - - 0x00273F 00:A72F: AD 88 07  LDA ram_0788
C - - - - - 0x002742 00:A732: 38        SEC
C - - - - - 0x002743 00:A733: ED 83 07  SBC ram_0783
C - - - - - 0x002746 00:A736: 8D 88 07  STA ram_0788
C - - - - - 0x002749 00:A739: A5 FD     LDA ram_scroll_X
C - - - - - 0x00274B 00:A73B: ED 84 07  SBC ram_0784
C - - - - - 0x00274E 00:A73E: 85 FD     STA ram_scroll_X
C - - - - - 0x002750 00:A740: AD 89 07  LDA ram_0789
C - - - - - 0x002753 00:A743: E5 01     SBC ram_0001_t024
C - - - - - 0x002755 00:A745: 8D 89 07  STA ram_0789
C - - - - - 0x002758 00:A748: 29 01     AND #$01
C - - - - - 0x00275A 00:A74A: 85 00     STA ram_0000_t097_base_nametable
C - - - - - 0x00275C 00:A74C: A5 FF     LDA ram_for_2000
C - - - - - 0x00275E 00:A74E: 29 FE     AND #$FE
C - - - - - 0x002760 00:A750: 05 00     ORA ram_0000_t097_base_nametable
C - - - - - 0x002762 00:A752: 85 FF     STA ram_for_2000
C - - - - - 0x002764 00:A754: AD 89 07  LDA ram_0789
C - - - - - 0x002767 00:A757: 18        CLC
C - - - - - 0x002768 00:A758: 6D 85 07  ADC ram_0785
C - - - - - 0x00276B 00:A75B: 8D 89 07  STA ram_0789
C - - - - - 0x00276E 00:A75E: A5 FC     LDA ram_scroll_Y
C - - - - - 0x002770 00:A760: 6D 86 07  ADC ram_0786
C - - - - - 0x002773 00:A763: 85 FC     STA ram_scroll_Y
C - - - - - 0x002775 00:A765: CE 87 07  DEC ram_0787
C - - - - - 0x002778 00:A768: D0 3F     BNE bra_A7A9_RTS
C - - - - - 0x00277A 00:A76A: 20 71 A8  JSR sub_A871
C - - - - - 0x00277D 00:A76D: 20 AD A8  JSR sub_A8AD
C - - - - - 0x002780 00:A770: AC 80 07  LDY ram_0780
C - - - - - 0x002783 00:A773: B9 AA A7  LDA tbl_A7AA_background_palette,Y
C - - - - - 0x002786 00:A776: 20 E9 EC  JSR sub_0x03ECF9_write_data_to_ppu_buffer
C - - - - - 0x002789 00:A779: A9 04     LDA #con_98E4_3F00_0000
C - - - - - 0x00278B 00:A77B: 20 E9 EC  JSR sub_0x03ECF9_write_data_to_ppu_buffer
C - - - - - 0x00278E 00:A77E: A2 59     LDX #$59
C - - - - - 0x002790 00:A780: A9 19     LDA #con_irq_19
C - - - - - 0x002792 00:A782: 20 C1 E5  JSR sub_0x03E5D1
C - - - - - 0x002795 00:A785: AD 80 07  LDA ram_0780
C - - - - - 0x002798 00:A788: 0A        ASL
C - - - - - 0x002799 00:A789: A8        TAY
C - - - - - 0x00279A 00:A78A: B9 AD A7  LDA tbl_A7AD_ppu_address,Y
C - - - - - 0x00279D 00:A78D: 8D 8D 07  STA ram_078D
C - - - - - 0x0027A0 00:A790: B9 AE A7  LDA tbl_A7AD_ppu_address + $01,Y
C - - - - - 0x0027A3 00:A793: 8D 8C 07  STA ram_078C
C - - - - - 0x0027A6 00:A796: A9 00     LDA #$00
C - - - - - 0x0027A8 00:A798: 8D 8A 07  STA ram_078A
C - - - - - 0x0027AB 00:A79B: A5 FF     LDA ram_for_2000
C - - - - - 0x0027AD 00:A79D: 09 01     ORA #$01
C - - - - - 0x0027AF 00:A79F: 8D 8B 07  STA ram_078B
C - - - - - 0x0027B2 00:A7A2: A9 00     LDA #$00
C - - - - - 0x0027B4 00:A7A4: 8D 81 07  STA ram_0781
C - - - - - 0x0027B7 00:A7A7: E6 19     INC ram_0019_subscript
bra_A7A9_RTS:
C - - - - - 0x0027B9 00:A7A9: 60        RTS



tbl_A7AA_background_palette:
- D 1 - - - 0x0027BA 00:A7AA: 14        .byte con_98E4_14_bg_pal   ; 00 
- D 1 - - - 0x0027BB 00:A7AB: 15        .byte con_98E4_15_bg_pal   ; 01 
- D 1 - - - 0x0027BC 00:A7AC: 16        .byte con_98E4_16_bg_pal   ; 02 



tbl_A7AD_ppu_address:
- D 1 - - - 0x0027BD 00:A7AD: 22 20     .dbyt $2220 ; 00 
- D 1 - - - 0x0027BF 00:A7AF: 22 E0     .dbyt $22E0 ; 01 
- D 1 - - - 0x0027C1 00:A7B1: 22 A0     .dbyt $22A0 ; 02 



sub_A7B3:
C - - - - - 0x0027C3 00:A7B3: A5 1A     LDA ram_frm_cnt
C - - - - - 0x0027C5 00:A7B5: 29 10     AND #$10
C - - - - - 0x0027C7 00:A7B7: F0 18     BEQ bra_A7D1
sub_A7B9:
C - - - - - 0x0027C9 00:A7B9: A9 00     LDA #con_obj_flag_00
bra_A7BB:
C - - - - - 0x0027CB 00:A7BB: 85 07     STA ram_0007_t006_obj_flags
C - - - - - 0x0027CD 00:A7BD: A0 00     LDY #$00
bra_A7BF_loop:
C - - - - - 0x0027CF 00:A7BF: B9 91 07  LDA ram_0791,Y
C - - - - - 0x0027D2 00:A7C2: 18        CLC
C - - - - - 0x0027D3 00:A7C3: 69 01     ADC #$01
C - - - - - 0x0027D5 00:A7C5: AA        TAX
C - - - - - 0x0027D6 00:A7C6: A5 07     LDA ram_0007_t006_obj_flags
C - - - - - 0x0027D8 00:A7C8: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x0027DB 00:A7CB: C8        INY
C - - - - - 0x0027DC 00:A7CC: C0 04     CPY #$04
C - - - - - 0x0027DE 00:A7CE: D0 EF     BNE bra_A7BF_loop
C - - - - - 0x0027E0 00:A7D0: 60        RTS
bra_A7D1:
C - - - - - 0x0027E1 00:A7D1: A9 80     LDA #con_obj_flag_not_visible
C - - - - - 0x0027E3 00:A7D3: D0 E6     BNE bra_A7BB    ; jmp



sub_A7D5:
C - - - - - 0x0027E5 00:A7D5: AD 80 07  LDA ram_0780
; * 04
C - - - - - 0x0027E8 00:A7D8: 0A        ASL
C - - - - - 0x0027E9 00:A7D9: 0A        ASL
C - - - - - 0x0027EA 00:A7DA: 85 07     STA ram_0007_t005
C - - - - - 0x0027EC 00:A7DC: A8        TAY
C - - - - - 0x0027ED 00:A7DD: B9 26 A8  LDA tbl_A826_road_fork,Y
C - - - - - 0x0027F0 00:A7E0: 85 08     STA ram_0008_t022_road_fork_data_pointer
C - - - - - 0x0027F2 00:A7E2: B9 27 A8  LDA tbl_A826_road_fork + $01,Y
C - - - - - 0x0027F5 00:A7E5: 85 09     STA ram_0008_t022_road_fork_data_pointer + $01
C - - - - - 0x0027F7 00:A7E7: A2 01     LDX #$01
C - - - - - 0x0027F9 00:A7E9: A0 00     LDY #$00
bra_A7EB_loop:
C - - - - - 0x0027FB 00:A7EB: B1 08     LDA (ram_0008_t022_road_fork_data_pointer),Y
C - - - - - 0x0027FD 00:A7ED: C9 FF     CMP #$FF
C - - - - - 0x0027FF 00:A7EF: F0 07     BEQ bra_A7F8_FF
C - - - - - 0x002801 00:A7F1: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x002804 00:A7F4: E8        INX
C - - - - - 0x002805 00:A7F5: C8        INY
C - - - - - 0x002806 00:A7F6: D0 F3     BNE bra_A7EB_loop    ; jmp
bra_A7F8_FF:
C - - - - - 0x002808 00:A7F8: A4 07     LDY ram_0007_t005
C - - - - - 0x00280A 00:A7FA: B9 28 A8  LDA tbl_A826_road_fork + $02,Y
C - - - - - 0x00280D 00:A7FD: 85 08     STA ram_0008_t023_road_fork_data_pointer
C - - - - - 0x00280F 00:A7FF: B9 29 A8  LDA tbl_A826_road_fork + $03,Y
C - - - - - 0x002812 00:A802: 85 09     STA ram_0008_t023_road_fork_data_pointer + $01
C - - - - - 0x002814 00:A804: A0 00     LDY #$00
C - - - - - 0x002816 00:A806: AD 1C 04  LDA ram_plr_pos_Y_hi
C - - - - - 0x002819 00:A809: D1 08     CMP (ram_0008_t023_road_fork_data_pointer),Y
C - - - - - 0x00281B 00:A80B: 90 02     BCC bra_A80F
C - - - - - 0x00281D 00:A80D: C8        INY
C - - - - - 0x00281E 00:A80E: C8        INY ; 02
bra_A80F:
C - - - - - 0x00281F 00:A80F: C8        INY
C - - - - - 0x002820 00:A810: B1 08     LDA (ram_0008_t023_road_fork_data_pointer),Y
C - - - - - 0x002822 00:A812: 85 0A     STA ram_000A_t012_road_fork_data
C - - - - - 0x002824 00:A814: C8        INY
C - - - - - 0x002825 00:A815: B1 08     LDA (ram_0008_t023_road_fork_data_pointer),Y
C - - - - - 0x002827 00:A817: 85 0B     STA ram_000A_t012_road_fork_data + $01
C - - - - - 0x002829 00:A819: A0 00     LDY #$00
bra_A81B_loop:
C - - - - - 0x00282B 00:A81B: B1 0A     LDA (ram_000A_t012_road_fork_data),Y
C - - - - - 0x00282D 00:A81D: 99 91 07  STA ram_0791,Y
C - - - - - 0x002830 00:A820: C8        INY
C - - - - - 0x002831 00:A821: C0 04     CPY #$04
C - - - - - 0x002833 00:A823: D0 F6     BNE bra_A81B_loop
C - - - - - 0x002835 00:A825: 60        RTS



tbl_A826_road_fork:
; 00 
- D 1 - - - 0x002836 00:A826: 32 A8     .word off_A832_00_00
- D 1 - - - 0x002838 00:A828: 4A A8     .word _off_A84A_00_01
; 01 
- D 1 - - - 0x00283A 00:A82A: 3A A8     .word off_A83A_01_00
- D 1 - - - 0x00283C 00:A82C: 4F A8     .word _off_A84F_01_01
; 02 
- D 1 - - - 0x00283E 00:A82E: 42 A8     .word off_A842_02_00
- D 1 - - - 0x002840 00:A830: 54 A8     .word _off_A854_02_01



off_A832_00_00:
; bzk optimize, same bytes as at 0x00284A and 0x002852
- D 1 - I - 0x002842 00:A832: 00        .byte con_obj_flag_00   ; 
- D 1 - I - 0x002843 00:A833: 80        .byte con_obj_flag_not_visible   ; 
- D 1 - I - 0x002844 00:A834: 80        .byte con_obj_flag_not_visible   ; 
- D 1 - I - 0x002845 00:A835: 80        .byte con_obj_flag_not_visible   ; 
- D 1 - I - 0x002846 00:A836: 80        .byte con_obj_flag_not_visible   ; 
- D 1 - I - 0x002847 00:A837: 80        .byte con_obj_flag_not_visible   ; 
- D 1 - I - 0x002848 00:A838: 80        .byte con_obj_flag_not_visible   ; 
- D 1 - I - 0x002849 00:A839: FF        .byte $FF   ; end token



off_A83A_01_00:
- D 1 - I - 0x00284A 00:A83A: 00        .byte con_obj_flag_00   ; 
- D 1 - I - 0x00284B 00:A83B: 80        .byte con_obj_flag_not_visible   ; 
- D 1 - I - 0x00284C 00:A83C: 80        .byte con_obj_flag_not_visible   ; 
- D 1 - I - 0x00284D 00:A83D: 80        .byte con_obj_flag_not_visible   ; 
- D 1 - I - 0x00284E 00:A83E: 80        .byte con_obj_flag_not_visible   ; 
- D 1 - I - 0x00284F 00:A83F: 80        .byte con_obj_flag_not_visible   ; 
- D 1 - I - 0x002850 00:A840: 80        .byte con_obj_flag_not_visible   ; 
- D 1 - I - 0x002851 00:A841: FF        .byte $FF   ; 



off_A842_02_00:
- D 1 - I - 0x002852 00:A842: 00        .byte con_obj_flag_00   ; 
- D 1 - I - 0x002853 00:A843: 80        .byte con_obj_flag_not_visible   ; 
- D 1 - I - 0x002854 00:A844: 80        .byte con_obj_flag_not_visible   ; 
- D 1 - I - 0x002855 00:A845: 80        .byte con_obj_flag_not_visible   ; 
- D 1 - I - 0x002856 00:A846: 80        .byte con_obj_flag_not_visible   ; 
- D 1 - I - 0x002857 00:A847: 80        .byte con_obj_flag_not_visible   ; 
- D 1 - I - 0x002858 00:A848: 80        .byte con_obj_flag_not_visible   ; 
- D 1 - I - 0x002859 00:A849: FF        .byte $FF   ; 



_off_A84A_00_01:
; ; bzk optimize, same 1st bytes A0 as at 0x00285F and 0x002864
- D 1 - I - 0x00285A 00:A84A: A0        .byte $A0   ; 
- D 1 - I - 0x00285B 00:A84B: 61 A8     .word off_A861_00_01_00
- D 1 - I - 0x00285D 00:A84D: 65 A8     .word off_A865_00_01_01



_off_A84F_01_01:
- D 1 - I - 0x00285F 00:A84F: A0        .byte $A0   ; 
- D 1 - I - 0x002860 00:A850: 59 A8     .word off_A859_01_01_00
- D 1 - I - 0x002862 00:A852: 5D A8     .word off_A85D_01_01_01



_off_A854_02_01:
- D 1 - I - 0x002864 00:A854: A0        .byte $A0   ; 
- D 1 - I - 0x002865 00:A855: 69 A8     .word off_A869_02_01_00
- D 1 - I - 0x002867 00:A857: 6D A8     .word off_A86D_02_01_01



off_A859_01_01_00:
- D 1 - I - 0x002869 00:A859: 01        .byte $01, $02, $03, $08   ; 



off_A85D_01_01_01:
- D 1 - I - 0x00286D 00:A85D: 04        .byte $04, $05, $06, $08   ; 



off_A861_00_01_00:
- D 1 - I - 0x002871 00:A861: 01        .byte $01, $02, $03, $08   ; 



off_A865_00_01_01:
- D 1 - I - 0x002875 00:A865: 04        .byte $04, $05, $06, $08   ; 



off_A869_02_01_00:
- D 1 - I - 0x002879 00:A869: 01        .byte $01, $02, $03, $08   ; 



off_A86D_02_01_01:
- D 1 - I - 0x00287D 00:A86D: 04        .byte $04, $05, $06, $08   ; 



sub_A871:
C - - - - - 0x002881 00:A871: AD 80 07  LDA ram_0780
C - - - - - 0x002884 00:A874: 0A        ASL
C - - - - - 0x002885 00:A875: A8        TAY
C - - - - - 0x002886 00:A876: B9 D7 AD  LDA tbl_ADD7,Y
C - - - - - 0x002889 00:A879: 85 08     STA ram_0008_t024_data
C - - - - - 0x00288B 00:A87B: B9 D8 AD  LDA tbl_ADD7 + $01,Y
C - - - - - 0x00288E 00:A87E: 85 09     STA ram_0008_t024_data + $01
C - - - - - 0x002890 00:A880: A2 01     LDX #$01
C - - - - - 0x002892 00:A882: A0 00     LDY #$00
bra_A884_loop:
C - - - - - 0x002894 00:A884: B1 08     LDA (ram_0008_t024_data),Y
C - - - - - 0x002896 00:A886: C9 FF     CMP #$FF
C - - - - - 0x002898 00:A888: F0 22     BEQ bra_A8AC_RTS
C - - - - - 0x00289A 00:A88A: 9D 00 04  STA ram_obj_anim_id,X
C - - - - - 0x00289D 00:A88D: A9 0C     LDA #con_obj_type_0C
C - - - - - 0x00289F 00:A88F: 9D 8C 04  STA ram_obj_type,X
C - - - - - 0x0028A2 00:A892: A9 01     LDA #$01    ; facing left
C - - - - - 0x0028A4 00:A894: 9D A8 04  STA ram_obj_facing,X
C - - - - - 0x0028A7 00:A897: A9 80     LDA #con_obj_flag_not_visible
C - - - - - 0x0028A9 00:A899: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x0028AC 00:A89C: C8        INY
C - - - - - 0x0028AD 00:A89D: B1 08     LDA (ram_0008_t024_data),Y
C - - - - - 0x0028AF 00:A89F: 9D 38 04  STA ram_obj_pos_X_hi,X
C - - - - - 0x0028B2 00:A8A2: C8        INY
C - - - - - 0x0028B3 00:A8A3: B1 08     LDA (ram_0008_t024_data),Y
C - - - - - 0x0028B5 00:A8A5: 9D 1C 04  STA ram_obj_pos_Y_hi,X
C - - - - - 0x0028B8 00:A8A8: C8        INY
C - - - - - 0x0028B9 00:A8A9: E8        INX
C - - - - - 0x0028BA 00:A8AA: D0 D8     BNE bra_A884_loop
bra_A8AC_RTS:
C - - - - - 0x0028BC 00:A8AC: 60        RTS



sub_A8AD:
C - - - - - 0x0028BD 00:A8AD: 20 16 E7  JSR sub_0x03E726_write_partner_sprite_palette
C - - - - - 0x0028C0 00:A8B0: A0 00     LDY #$00
C - - - - - 0x0028C2 00:A8B2: A9 08     LDA #$08
C - - - - - 0x0028C4 00:A8B4: 85 0C     STA ram_000C_t004_colors_counter
bra_A8B6_loop:
C - - - - - 0x0028C6 00:A8B6: B9 C3 A8  LDA tbl_A8C3_palette,Y
C - - - - - 0x0028C9 00:A8B9: 9D EF 02  STA ram_ppu_buffer - $11,X
C - - - - - 0x0028CC 00:A8BC: C8        INY
C - - - - - 0x0028CD 00:A8BD: E8        INX
C - - - - - 0x0028CE 00:A8BE: C6 0C     DEC ram_000C_t004_colors_counter
C - - - - - 0x0028D0 00:A8C0: D0 F4     BNE bra_A8B6_loop
C - - - - - 0x0028D2 00:A8C2: 60        RTS



tbl_A8C3_palette:
- D 1 - - - 0x0028D3 00:A8C3: 0F        .byte $0F, $0F, $21, $20   ; 
- D 1 - - - 0x0028D7 00:A8C7: 0F        .byte $0F, $0F, $07, $20   ; 



ofs_029_A8CB_06:
C - - J - - 0x0028DB 00:A8CB: 20 B3 A7  JSR sub_A7B3
C - - - - - 0x0028DE 00:A8CE: AD 80 07  LDA ram_0780
C - - - - - 0x0028E1 00:A8D1: 0A        ASL
C - - - - - 0x0028E2 00:A8D2: A8        TAY
C - - - - - 0x0028E3 00:A8D3: B9 2B AE  LDA tbl_AE2B,Y
C - - - - - 0x0028E6 00:A8D6: 85 0A     STA ram_000A_t011_data
C - - - - - 0x0028E8 00:A8D8: B9 2C AE  LDA tbl_AE2B + $01,Y
C - - - - - 0x0028EB 00:A8DB: 85 0B     STA ram_000A_t011_data + $01
C - - - - - 0x0028ED 00:A8DD: AD 81 07  LDA ram_0781
C - - - - - 0x0028F0 00:A8E0: 0A        ASL
C - - - - - 0x0028F1 00:A8E1: A8        TAY
C - - - - - 0x0028F2 00:A8E2: B1 0A     LDA (ram_000A_t011_data),Y
C - - - - - 0x0028F4 00:A8E4: 85 08     STA ram_0008_t028_data
C - - - - - 0x0028F6 00:A8E6: C8        INY
C - - - - - 0x0028F7 00:A8E7: C9 FF     CMP #$FF
C - - - - - 0x0028F9 00:A8E9: F0 0B     BEQ bra_A8F6_FF
C - - - - - 0x0028FB 00:A8EB: B1 0A     LDA (ram_000A_t011_data),Y
bra_A8ED:
C - - - - - 0x0028FD 00:A8ED: 85 09     STA ram_0008_t028_data + $01
C - - - - - 0x0028FF 00:A8EF: 20 48 AD  JSR sub_AD48_write_data_to_buffer
C - - - - - 0x002902 00:A8F2: EE 81 07  INC ram_0781
C - - - - - 0x002905 00:A8F5: 60        RTS
bra_A8F6_FF:
C - - - - - 0x002906 00:A8F6: B1 0A     LDA (ram_000A_t011_data),Y
C - - - - - 0x002908 00:A8F8: C9 FF     CMP #$FF
C - - - - - 0x00290A 00:A8FA: D0 F1     BNE bra_A8ED
C - - - - - 0x00290C 00:A8FC: AC 80 07  LDY ram_0780
C - - - - - 0x00290F 00:A8FF: B9 0D A9  LDA tbl_A90D,Y
C - - - - - 0x002912 00:A902: 8D 84 07  STA ram_0784
C - - - - - 0x002915 00:A905: A9 01     LDA #$01
C - - - - - 0x002917 00:A907: 8D 82 07  STA ram_0782
C - - - - - 0x00291A 00:A90A: E6 19     INC ram_0019_subscript
C - - - - - 0x00291C 00:A90C: 60        RTS



tbl_A90D:
- D 1 - - - 0x00291D 00:A90D: 02        .byte $02   ; 00 
- D 1 - - - 0x00291E 00:A90E: 02        .byte $02   ; 01 
- D 1 - - - 0x00291F 00:A90F: FE        .byte $FE   ; 02 



ofs_029_A910_07:
C - - J - - 0x002920 00:A910: 20 D5 A7  JSR sub_A7D5
C - - - - - 0x002923 00:A913: A9 00     LDA #$00
C - - - - - 0x002925 00:A915: AC 84 07  LDY ram_0784
C - - - - - 0x002928 00:A918: 10 02     BPL bra_A91C
C - - - - - 0x00292A 00:A91A: A9 FF     LDA #$FF
bra_A91C:
C - - - - - 0x00292C 00:A91C: 85 01     STA ram_0001_t023
C - - - - - 0x00292E 00:A91E: 38        SEC
C - - - - - 0x00292F 00:A91F: AD 8A 07  LDA ram_078A
C - - - - - 0x002932 00:A922: ED 84 07  SBC ram_0784
C - - - - - 0x002935 00:A925: 8D 8A 07  STA ram_078A
C - - - - - 0x002938 00:A928: AD 82 07  LDA ram_0782
C - - - - - 0x00293B 00:A92B: E5 01     SBC ram_0001_t023
C - - - - - 0x00293D 00:A92D: 8D 82 07  STA ram_0782
C - - - - - 0x002940 00:A930: 29 01     AND #$01
C - - - - - 0x002942 00:A932: 85 00     STA ram_0000_t06B
C - - - - - 0x002944 00:A934: AD 8B 07  LDA ram_078B
C - - - - - 0x002947 00:A937: 29 FE     AND #$FE
C - - - - - 0x002949 00:A939: 05 00     ORA ram_0000_t06B
C - - - - - 0x00294B 00:A93B: 8D 8B 07  STA ram_078B
C - - - - - 0x00294E 00:A93E: AD 8A 07  LDA ram_078A
C - - - - - 0x002951 00:A941: D0 07     BNE bra_A94A_RTS
C - - - - - 0x002953 00:A943: A9 00     LDA #con_path_sel_00
C - - - - - 0x002955 00:A945: 8D 65 05  STA ram_plr_state
C - - - - - 0x002958 00:A948: E6 19     INC ram_0019_subscript
bra_A94A_RTS:
C - - - - - 0x00295A 00:A94A: 60        RTS



ofs_029_A94B_08:
C - - J - - 0x00295B 00:A94B: 20 D5 A7  JSR sub_A7D5
C - - - - - 0x00295E 00:A94E: AD 65 05  LDA ram_plr_state
C - - - - - 0x002961 00:A951: C9 10     CMP #con_path_sel_auto_walk_to_exit
C - - - - - 0x002963 00:A953: F0 0A     BEQ bra_A95F
C - - - - - 0x002965 00:A955: C9 12     CMP #con_path_sel_off_screen
C - - - - - 0x002967 00:A957: F0 06     BEQ bra_A95F
C - - - - - 0x002969 00:A959: 20 B3 A7  JSR sub_A7B3
C - - - - - 0x00296C 00:A95C: 4C 62 A9  JMP loc_A962
bra_A95F:
C - - - - - 0x00296F 00:A95F: 20 B9 A7  JSR sub_A7B9
loc_A962:
C D 1 - - - 0x002972 00:A962: 20 05 AA  JSR sub_AA05
C - - - - - 0x002975 00:A965: AD 65 05  LDA ram_plr_state
C - - - - - 0x002978 00:A968: C9 12     CMP #con_path_sel_off_screen
C - - - - - 0x00297A 00:A96A: D0 38     BNE bra_A9A4_RTS
C - - - - - 0x00297C 00:A96C: AD 80 07  LDA ram_0780
C - - - - - 0x00297F 00:A96F: 0A        ASL
C - - - - - 0x002980 00:A970: A8        TAY
C - - - - - 0x002981 00:A971: B9 A5 A9  LDA tbl_A9A5,Y
C - - - - - 0x002984 00:A974: 85 08     STA ram_0008_t025_data
C - - - - - 0x002986 00:A976: B9 A6 A9  LDA tbl_A9A5 + $01,Y
C - - - - - 0x002989 00:A979: 85 09     STA ram_0008_t025_data + $01
C - - - - - 0x00298B 00:A97B: AD 90 07  LDA ram_0790
C - - - - - 0x00298E 00:A97E: 0A        ASL
C - - - - - 0x00298F 00:A97F: 18        CLC
C - - - - - 0x002990 00:A980: 6D 90 07  ADC ram_0790
C - - - - - 0x002993 00:A983: A8        TAY
C - - - - - 0x002994 00:A984: B1 08     LDA (ram_0008_t025_data),Y
C - - - - - 0x002996 00:A986: 85 32     STA ram_blk_hi
C - - - - - 0x002998 00:A988: C8        INY
C - - - - - 0x002999 00:A989: B1 08     LDA (ram_0008_t025_data),Y
C - - - - - 0x00299B 00:A98B: 85 33     STA ram_blk_lo
C - - - - - 0x00299D 00:A98D: C8        INY
C - - - - - 0x00299E 00:A98E: B1 08     LDA (ram_0008_t025_data),Y
C - - - - - 0x0029A0 00:A990: 85 34     STA ram_blk_fr
C - - - - - 0x0029A2 00:A992: A9 07     LDA #$07
C - - - - - 0x0029A4 00:A994: 8D 60 01  STA ram_015B_se + $05
C - - - - - 0x0029A7 00:A997: A9 B4     LDA #$B4
C - - - - - 0x0029A9 00:A999: 85 30     STA ram_screen_timer_lo
C - - - - - 0x0029AB 00:A99B: A0 00     LDY #$00
C - - - - - 0x0029AD 00:A99D: 84 B4     STY ram_00B4
C - - - - - 0x0029AF 00:A99F: C8        INY
C - - - - - 0x0029B0 00:A9A0: 84 B5     STY ram_00B5
C - - - - - 0x0029B2 00:A9A2: E6 19     INC ram_0019_subscript
bra_A9A4_RTS:
C - - - - - 0x0029B4 00:A9A4: 60        RTS



tbl_A9A5:
- D 1 - - - 0x0029B5 00:A9A5: AB A9     .word off_A9AB_00
- D 1 - - - 0x0029B7 00:A9A7: B4 A9     .word off_A9B4_01
- D 1 - - - 0x0029B9 00:A9A9: BA A9     .word off_A9BA_02



off_A9AB_00:
- D 1 - I - 0x0029BB 00:A9AB: 01        .byte $01   ; 
- D 1 - I - 0x0029BC 00:A9AC: 00        .byte $00   ; 
- D 1 - I - 0x0029BD 00:A9AD: 00        .byte $00   ; 

- - - - - - 0x0029BE 00:A9AE: 00        .byte $00   ; 
- - - - - - 0x0029BF 00:A9AF: 00        .byte $00   ; 
- - - - - - 0x0029C0 00:A9B0: 00        .byte $00   ; 

- D 1 - I - 0x0029C1 00:A9B1: 02        .byte $02   ; 
- D 1 - I - 0x0029C2 00:A9B2: 00        .byte $00   ; 
- D 1 - I - 0x0029C3 00:A9B3: 00        .byte $00   ; 



off_A9B4_01:
- D 1 - I - 0x0029C4 00:A9B4: 02        .byte $02   ; 
- D 1 - I - 0x0029C5 00:A9B5: 03        .byte $03   ; 
- D 1 - I - 0x0029C6 00:A9B6: 02        .byte $02   ; 

- D 1 - I - 0x0029C7 00:A9B7: 06        .byte $06   ; 
- D 1 - I - 0x0029C8 00:A9B8: 00        .byte $00   ; 
- D 1 - I - 0x0029C9 00:A9B9: 01        .byte $01   ; 



off_A9BA_02:
- D 1 - I - 0x0029CA 00:A9BA: 07        .byte $07   ; 
- D 1 - I - 0x0029CB 00:A9BB: 06        .byte $06   ; 
- D 1 - I - 0x0029CC 00:A9BC: 00        .byte $00   ; 

- D 1 - I - 0x0029CD 00:A9BD: 08        .byte $08   ; 
- D 1 - I - 0x0029CE 00:A9BE: 00        .byte $00   ; 
- D 1 - I - 0x0029CF 00:A9BF: 00        .byte $00   ; 



ofs_029_A9C0_09:
C - - J - - 0x0029D0 00:A9C0: C6 30     DEC ram_screen_timer_lo
C - - - - - 0x0029D2 00:A9C2: F0 08     BEQ bra_A9CC
C - - - - - 0x0029D4 00:A9C4: A5 30     LDA ram_screen_timer_lo
C - - - - - 0x0029D6 00:A9C6: C9 30     CMP #$30
C - - - - - 0x0029D8 00:A9C8: B0 04     BCS bra_A9CE_RTS
C - - - - - 0x0029DA 00:A9CA: 90 03     BCC bra_A9CF    ; jmp
bra_A9CC:
C - - - - - 0x0029DC 00:A9CC: E6 19     INC ram_0019_subscript
bra_A9CE_RTS:
C - - - - - 0x0029DE 00:A9CE: 60        RTS
bra_A9CF:
C - - - - - 0x0029DF 00:A9CF: A5 B4     LDA ram_00B4
C - - - - - 0x0029E1 00:A9D1: C9 FF     CMP #$FF
C - - - - - 0x0029E3 00:A9D3: F0 F9     BEQ bra_A9CE_RTS
C - - - - - 0x0029E5 00:A9D5: A5 1D     LDA ram_index_ppu_buffer
C - - - - - 0x0029E7 00:A9D7: 48        PHA
C - - - - - 0x0029E8 00:A9D8: AC 80 07  LDY ram_0780
C - - - - - 0x0029EB 00:A9DB: B9 AA A7  LDA tbl_A7AA_background_palette,Y
C - - - - - 0x0029EE 00:A9DE: 20 E9 EC  JSR sub_0x03ECF9_write_data_to_ppu_buffer
C - - - - - 0x0029F1 00:A9E1: 20 AD A8  JSR sub_A8AD
C - - - - - 0x0029F4 00:A9E4: 68        PLA
C - - - - - 0x0029F5 00:A9E5: 85 15     STA ram_0015_t001_copy_index_ppu_buffer
C - - - - - 0x0029F7 00:A9E7: 4C AF FB  JMP loc_0x03FBBF_decrease_brightness



ofs_029_A9EA_0A:
C - - J - - 0x0029FA 00:A9EA: 20 FD EB  JSR sub_0x03EC0D_clear_nametables
C - - - - - 0x0029FD 00:A9ED: AD 80 07  LDA ram_0780
C - - - - - 0x002A00 00:A9F0: D0 03     BNE bra_A9F5
C - - - - - 0x002A02 00:A9F2: 20 C0 90  JSR sub_90C0_set_default_hp_and_hearts
bra_A9F5:
C - - - - - 0x002A05 00:A9F5: 20 8A E7  JSR sub_0x03E79A
C - - - - - 0x002A08 00:A9F8: 20 8F E6  JSR sub_0x03E69F
C - - - - - 0x002A0B 00:A9FB: A9 04     LDA #con_0018_gameplay
C - - - - - 0x002A0D 00:A9FD: 85 18     STA ram_main_script
C - - - - - 0x002A0F 00:A9FF: A9 00     LDA #con_002A_00
C - - - - - 0x002A11 00:AA01: 85 2A     STA ram_002A_script
C - - - - - 0x002A13 00:AA03: 60        RTS



ofs_029_AA04_0B_RTS:
ofs_029_AA04_0C_RTS:
- - - - - - 0x002A14 00:AA04: 60        RTS



sub_AA05:
C - - - - - 0x002A15 00:AA05: AD 65 05  LDA ram_plr_state
; bzk optimize, BEQ without CMP 00
C - - - - - 0x002A18 00:AA08: C9 00     CMP #con_path_sel_00
C - - - - - 0x002A1A 00:AA0A: F0 3A     BEQ bra_AA46
C - - - - - 0x002A1C 00:AA0C: C9 02     CMP #con_path_sel_auto_walk_out_of_screen
C - - - - - 0x002A1E 00:AA0E: F0 36     BEQ bra_AA46
C - - - - - 0x002A20 00:AA10: C9 10     CMP #con_path_sel_auto_walk_to_exit
C - - - - - 0x002A22 00:AA12: F0 32     BEQ bra_AA46
C - - - - - 0x002A24 00:AA14: AD 80 07  LDA ram_0780
C - - - - - 0x002A27 00:AA17: 0A        ASL
C - - - - - 0x002A28 00:AA18: A8        TAY
C - - - - - 0x002A29 00:AA19: AD 38 04  LDA ram_plr_pos_X_hi
C - - - - - 0x002A2C 00:AA1C: D9 61 AA  CMP tbl_AA61,Y
C - - - - - 0x002A2F 00:AA1F: 90 05     BCC bra_AA26
C - - - - - 0x002A31 00:AA21: D9 62 AA  CMP tbl_AA61 + $01,Y
C - - - - - 0x002A34 00:AA24: 90 20     BCC bra_AA46
bra_AA26:
C - - - - - 0x002A36 00:AA26: AD A8 04  LDA ram_plr_facing
C - - - - - 0x002A39 00:AA29: 0A        ASL
C - - - - - 0x002A3A 00:AA2A: A8        TAY
C - - - - - 0x002A3B 00:AA2B: B9 67 AA  LDA tbl_AA67,Y
C - - - - - 0x002A3E 00:AA2E: 8D F2 04  STA ram_plr_spd_X_hi
C - - - - - 0x002A41 00:AA31: B9 68 AA  LDA tbl_AA67 + $01,Y
C - - - - - 0x002A44 00:AA34: 8D 09 05  STA ram_plr_spd_X_lo
C - - - - - 0x002A47 00:AA37: A9 10     LDA #con_path_sel_auto_walk_to_exit
C - - - - - 0x002A49 00:AA39: 8D 65 05  STA ram_plr_state
C - - - - - 0x002A4C 00:AA3C: A9 58     LDA #$58
C - - - - - 0x002A4E 00:AA3E: 8D 87 07  STA ram_0787
C - - - - - 0x002A51 00:AA41: A9 00     LDA #$00
C - - - - - 0x002A53 00:AA43: 20 57 EF  JSR sub_0x03EF67_prepare_player_animation
bra_AA46:
; triggers when player is walking at the path selecting screen
; see con_path_sel
C - - - - - 0x002A56 00:AA46: AC 65 05  LDY ram_plr_state
C - - - - - 0x002A59 00:AA49: 20 86 E8  JSR sub_0x03E896_jump_to_pointers_after_JSR_Y
- D 1 - I - 0x002A5C 00:AA4C: 6B AA     .word ofs_034_AA6B_00
- D 1 - I - 0x002A5E 00:AA4E: F0 AA     .word ofs_034_AAF0_02_auto_walking_out_of_screen
- D 1 - I - 0x002A60 00:AA50: 2A AB     .word ofs_034_AB2A_04_idle_on_ground
- D 1 - I - 0x002A62 00:AA52: BB AB     .word ofs_034_ABBB_06_move_on_ground
- D 1 - I - 0x002A64 00:AA54: 89 AC     .word ofs_034_AC89_08_move_towards_stairs
- D 1 - I - 0x002A66 00:AA56: 9D AC     .word ofs_034_AC9D_0A_climb_on_stairs
- D 1 - I - 0x002A68 00:AA58: A8 AC     .word ofs_034_ACA8_0C_idle_on_stairs
- D 1 - I - 0x002A6A 00:AA5A: EA AC     .word ofs_034_ACEA_0E_move_on_stairs
- D 1 - I - 0x002A6C 00:AA5C: F0 AA     .word ofs_034_AAF0_10_auto_walking_to_exit


; bzk garbage
- - - - - - 0x002A6E 00:AA5E: 60 AA     .word ofs_034_AA60_12_RTS



ofs_034_AA60_12_RTS:
; bzk garbage
- - - - - - 0x002A70 00:AA60: 60        RTS



tbl_AA61:
- D 1 - - - 0x002A71 00:AA61: 00        .byte $00   ; 
- D 1 - - - 0x002A72 00:AA62: C0        .byte $C0   ; 

- D 1 - - - 0x002A73 00:AA63: 00        .byte $00   ; 
- D 1 - - - 0x002A74 00:AA64: C0        .byte $C0   ; 

- D 1 - - - 0x002A75 00:AA65: 40        .byte $40   ; 
- D 1 - - - 0x002A76 00:AA66: FF        .byte $FF   ; 



tbl_AA67:
; 00 right
- D 1 - - - 0x002A77 00:AA67: 00        .byte $00   ; 
- D 1 - - - 0x002A78 00:AA68: C0        .byte $C0   ; 
; 01 left
- D 1 - - - 0x002A79 00:AA69: FF        .byte $FF   ; 
- D 1 - - - 0x002A7A 00:AA6A: 40        .byte $40   ; 



ofs_034_AA6B_00:
C - - J - - 0x002A7B 00:AA6B: AC 4E 05  LDY ram_plr_id
C - - - - - 0x002A7E 00:AA6E: B9 DA AA  LDA tbl_AADA,Y
C - - - - - 0x002A81 00:AA71: 8D 8C 04  STA ram_plr_type
C - - - - - 0x002A84 00:AA74: A9 02     LDA #$02
C - - - - - 0x002A86 00:AA76: 8D 00 04  STA ram_plr_anim_id
C - - - - - 0x002A89 00:AA79: AD 80 07  LDA ram_0780
; * 06
C - - - - - 0x002A8C 00:AA7C: 0A        ASL
C - - - - - 0x002A8D 00:AA7D: 85 00     STA ram_0000_t06A
C - - - - - 0x002A8F 00:AA7F: 0A        ASL
C - - - - - 0x002A90 00:AA80: 18        CLC
C - - - - - 0x002A91 00:AA81: 65 00     ADC ram_0000_t06A
C - - - - - 0x002A93 00:AA83: A8        TAY
C - - - - - 0x002A94 00:AA84: B9 DE AA  LDA tbl_AADE,Y
C - - - - - 0x002A97 00:AA87: 8D 38 04  STA ram_plr_pos_X_hi
C - - - - - 0x002A9A 00:AA8A: B9 DF AA  LDA tbl_AADE + $01,Y
C - - - - - 0x002A9D 00:AA8D: AE 4E 05  LDX ram_plr_id
C - - - - - 0x002AA0 00:AA90: E0 02     CPX #$02
C - - - - - 0x002AA2 00:AA92: D0 03     BNE bra_AA97
C - - - - - 0x002AA4 00:AA94: 18        CLC
C - - - - - 0x002AA5 00:AA95: 69 04     ADC #$04
bra_AA97:
C - - - - - 0x002AA7 00:AA97: 8D 1C 04  STA ram_plr_pos_Y_hi
C - - - - - 0x002AAA 00:AA9A: B9 E0 AA  LDA tbl_AADE + $02,Y
C - - - - - 0x002AAD 00:AA9D: 8D A8 04  STA ram_plr_facing
C - - - - - 0x002AB0 00:AAA0: B9 E1 AA  LDA tbl_AADE + $03,Y
C - - - - - 0x002AB3 00:AAA3: 8D F2 04  STA ram_plr_spd_X_hi
C - - - - - 0x002AB6 00:AAA6: B9 E2 AA  LDA tbl_AADE + $04,Y
C - - - - - 0x002AB9 00:AAA9: 8D 09 05  STA ram_plr_spd_X_lo
C - - - - - 0x002ABC 00:AAAC: B9 E3 AA  LDA tbl_AADE + $05,Y
C - - - - - 0x002ABF 00:AAAF: 8D 90 07  STA ram_0790
C - - - - - 0x002AC2 00:AAB2: A9 44     LDA #$44
C - - - - - 0x002AC4 00:AAB4: 8D 87 07  STA ram_0787
C - - - - - 0x002AC7 00:AAB7: A9 00     LDA #$00
C - - - - - 0x002AC9 00:AAB9: 85 68     STA ram_0068
C - - - - - 0x002ACB 00:AABB: 85 56     STA ram_cam_pos_lo
C - - - - - 0x002ACD 00:AABD: 85 57     STA ram_cam_pos_hi
C - - - - - 0x002ACF 00:AABF: AD 80 07  LDA ram_0780
C - - - - - 0x002AD2 00:AAC2: 0A        ASL
C - - - - - 0x002AD3 00:AAC3: A8        TAY
C - - - - - 0x002AD4 00:AAC4: B9 96 AD  LDA tbl_AD96,Y
C - - - - - 0x002AD7 00:AAC7: 85 69     STA ram_0069_t000_data
C - - - - - 0x002AD9 00:AAC9: B9 97 AD  LDA tbl_AD96 + $01,Y
C - - - - - 0x002ADC 00:AACC: 85 6A     STA ram_0069_t000_data + $01
C - - - - - 0x002ADE 00:AACE: A9 00     LDA #$00
C - - - - - 0x002AE0 00:AAD0: 20 57 EF  JSR sub_0x03EF67_prepare_player_animation
C - - - - - 0x002AE3 00:AAD3: EE 65 05  INC ram_plr_state
C - - - - - 0x002AE6 00:AAD6: EE 65 05  INC ram_plr_state   ; -> con_path_sel_auto_walk_out_of_screen
C - - - - - 0x002AE9 00:AAD9: 60        RTS



tbl_AADA:
- D 1 - - - 0x002AEA 00:AADA: 00        .byte con_obj_type_00   ; 00 con_player_Trevor
- D 1 - - - 0x002AEB 00:AADB: 02        .byte con_obj_type_02   ; 01 con_player_Sypha
- D 1 - - - 0x002AEC 00:AADC: 04        .byte con_obj_type_04   ; 02 con_player_Grant
- D 1 - - - 0x002AED 00:AADD: 06        .byte con_obj_type_06   ; 03 con_player_Alucard



tbl_AADE:
;                                              +------------------------------ pos_X_hi
;                                              |    +------------------------- object id
;                                              |    |    +-------------------- facing direction
;                                              |    |    |    +--------------- spd_X_hi
;                                              |    |    |    |    +---------- spd_X_lo
;                                              |    |    |    |    |    +----- 
;                                              |    |    |    |    |    |
- D 1 - - - 0x002AEE 00:AADE: 08        .byte $08, $A0, $00, $00, $C0, $01   ; 
- D 1 - - - 0x002AF4 00:AAE4: 08        .byte $08, $80, $00, $00, $C0, $00   ; 
- D 1 - - - 0x002AFA 00:AAEA: F8        .byte $F8, $80, $01, $FF, $40, $00   ; 



ofs_034_AAF0_02_auto_walking_out_of_screen:
ofs_034_AAF0_10_auto_walking_to_exit:
C - - J - - 0x002B00 00:AAF0: A5 1A     LDA ram_frm_cnt
C - - - - - 0x002B02 00:AAF2: 29 0F     AND #$0F
C - - - - - 0x002B04 00:AAF4: D0 05     BNE bra_AAFB
C - - - - - 0x002B06 00:AAF6: A9 09     LDA #con_sound_step
C - - - - - 0x002B08 00:AAF8: 20 5F E2  JSR sub_0x03E26F_play_sound
bra_AAFB:
C - - - - - 0x002B0B 00:AAFB: 20 73 EF  JSR sub_0x03EF83
C - - - - - 0x002B0E 00:AAFE: AD C4 04  LDA ram_plr_pos_X_lo
C - - - - - 0x002B11 00:AB01: 18        CLC
C - - - - - 0x002B12 00:AB02: 6D 09 05  ADC ram_plr_spd_X_lo
C - - - - - 0x002B15 00:AB05: 8D C4 04  STA ram_plr_pos_X_lo
C - - - - - 0x002B18 00:AB08: AD 38 04  LDA ram_plr_pos_X_hi
C - - - - - 0x002B1B 00:AB0B: 6D F2 04  ADC ram_plr_spd_X_hi
C - - - - - 0x002B1E 00:AB0E: 8D 38 04  STA ram_plr_pos_X_hi
C - - - - - 0x002B21 00:AB11: C9 FE     CMP #$FE
C - - - - - 0x002B23 00:AB13: B0 09     BCS bra_AB1E
C - - - - - 0x002B25 00:AB15: C9 02     CMP #$02
C - - - - - 0x002B27 00:AB17: 90 05     BCC bra_AB1E
C - - - - - 0x002B29 00:AB19: CE 87 07  DEC ram_0787
C - - - - - 0x002B2C 00:AB1C: D0 0B     BNE bra_AB29_RTS
bra_AB1E:
C - - - - - 0x002B2E 00:AB1E: A9 00     LDA #$00
C - - - - - 0x002B30 00:AB20: 8D 00 04  STA ram_plr_anim_id
C - - - - - 0x002B33 00:AB23: EE 65 05  INC ram_plr_state
C - - - - - 0x002B36 00:AB26: EE 65 05  INC ram_plr_state   ; -> con_path_sel_idle_on_ground / con_path_sel_off_screen
bra_AB29_RTS:
C - - - - - 0x002B39 00:AB29: 60        RTS



ofs_034_AB2A_04_idle_on_ground:
C - - J - - 0x002B3A 00:AB2A: A5 28     LDA ram_btn_hold
C - - - - - 0x002B3C 00:AB2C: 4A        LSR
C - - - - - 0x002B3D 00:AB2D: B0 71     BCS bra_ABA0_pressed_Right
C - - - - - 0x002B3F 00:AB2F: 4A        LSR
C - - - - - 0x002B40 00:AB30: B0 72     BCS bra_ABA4_pressed_Left
C - - - - - 0x002B42 00:AB32: 4A        LSR
C - - - - - 0x002B43 00:AB33: B0 09     BCS bra_AB3E_pressed_down
C - - - - - 0x002B45 00:AB35: 4A        LSR
C - - - - - 0x002B46 00:AB36: B0 14     BCS bra_AB4C_pressed_up
bra_AB38:
C - - - - - 0x002B48 00:AB38: A9 02     LDA #$02
C - - - - - 0x002B4A 00:AB3A: 8D 00 04  STA ram_plr_anim_id
C - - - - - 0x002B4D 00:AB3D: 60        RTS
bra_AB3E_pressed_down:
C - - - - - 0x002B4E 00:AB3E: 20 D4 E6  JSR sub_0x03E6E4_check_stairs_if_pressed_down
C - - - - - 0x002B51 00:AB41: 90 F5     BCC bra_AB38
C - - - - - 0x002B53 00:AB43: A9 00     LDA #$00
C - - - - - 0x002B55 00:AB45: 8D C1 05  STA ram_05C1_plr
C - - - - - 0x002B58 00:AB48: A2 01     LDX #$01
C - - - - - 0x002B5A 00:AB4A: D0 0C     BNE bra_AB58    ; jmp
bra_AB4C_pressed_up:
C - - - - - 0x002B5C 00:AB4C: 20 DF E6  JSR sub_0x03E6EF_check_stairs_if_pressed_up
C - - - - - 0x002B5F 00:AB4F: 90 E7     BCC bra_AB38
C - - - - - 0x002B61 00:AB51: A9 01     LDA #$01
C - - - - - 0x002B63 00:AB53: 8D C1 05  STA ram_05C1_plr
C - - - - - 0x002B66 00:AB56: A2 00     LDX #$00
bra_AB58:
C - - - - - 0x002B68 00:AB58: A0 00     LDY #$00    ; facing right
C - - - - - 0x002B6A 00:AB5A: A5 0A     LDA ram_000A_t01F
C - - - - - 0x002B6C 00:AB5C: 0A        ASL
C - - - - - 0x002B6D 00:AB5D: 90 05     BCC bra_AB64
C - - - - - 0x002B6F 00:AB5F: 8A        TXA
C - - - - - 0x002B70 00:AB60: 49 01     EOR #$01
C - - - - - 0x002B72 00:AB62: AA        TAX
C - - - - - 0x002B73 00:AB63: C8        INY ; 01    ; facing left
bra_AB64:
C - - - - - 0x002B74 00:AB64: 8C EF 05  STY ram_05EF_plr
C - - - - - 0x002B77 00:AB67: 8E A8 04  STX ram_plr_facing
C - - - - - 0x002B7A 00:AB6A: A5 0B     LDA ram_000B_t006
C - - - - - 0x002B7C 00:AB6C: 8D 1D 06  STA ram_061D_plr
C - - - - - 0x002B7F 00:AB6F: A0 00     LDY #$00
C - - - - - 0x002B81 00:AB71: 0A        ASL
C - - - - - 0x002B82 00:AB72: 90 01     BCC bra_AB75
- - - - - - 0x002B84 00:AB74: C8        INY ; 01
bra_AB75:
C - - - - - 0x002B85 00:AB75: 8C 06 06  STY ram_plr_config
; move player towards the stairs
C - - - - - 0x002B88 00:AB78: A5 0D     LDA ram_000D_t003_where_are_stairs
C - - - - - 0x002B8A 00:AB7A: F0 06     BEQ bra_AB82_to_the_right
; if to the left
C - - - - - 0x002B8C 00:AB7C: A9 FF     LDA #> $FF00
C - - - - - 0x002B8E 00:AB7E: A0 00     LDY #< $FF00
C - - - - - 0x002B90 00:AB80: F0 04     BEQ bra_AB86    ; jmp
bra_AB82_to_the_right:
C - - - - - 0x002B92 00:AB82: A9 01     LDA #> $0100
C - - - - - 0x002B94 00:AB84: A0 00     LDY #< $0100
bra_AB86:
C - - - - - 0x002B96 00:AB86: 8C 09 05  STY ram_plr_spd_X_lo
C - - - - - 0x002B99 00:AB89: 8D F2 04  STA ram_plr_spd_X_hi
C - - - - - 0x002B9C 00:AB8C: A9 08     LDA #con_path_sel_move_towards_stairs
C - - - - - 0x002B9E 00:AB8E: 8D 65 05  STA ram_plr_state
C - - - - - 0x002BA1 00:AB91: A9 00     LDA #$00
loc_AB93:
C D 1 - - - 0x002BA3 00:AB93: 8D AA 05  STA ram_05AA_plr
C - - - - - 0x002BA6 00:AB96: A0 02     LDY #$02
C - - - - - 0x002BA8 00:AB98: 8C 93 05  STY ram_plr_anim_cnt
C - - - - - 0x002BAB 00:AB9B: 88        DEY ; 01
C - - - - - 0x002BAC 00:AB9C: 8C 7C 05  STY ram_plr_anim_timer
C - - - - - 0x002BAF 00:AB9F: 60        RTS
bra_ABA0_pressed_Right:
C - - - - - 0x002BB0 00:ABA0: A9 00     LDA #$00    ; facing right
C - - - - - 0x002BB2 00:ABA2: F0 02     BEQ bra_ABA6_set_facing    ; jmp
bra_ABA4_pressed_Left:
C - - - - - 0x002BB4 00:ABA4: A9 01     LDA #$01    ; facing left
bra_ABA6_set_facing:
C - - - - - 0x002BB6 00:ABA6: 8D A8 04  STA ram_plr_facing
C - - - - - 0x002BB9 00:ABA9: A9 00     LDA #$00
C - - - - - 0x002BBB 00:ABAB: 8D F2 04  STA ram_plr_spd_X_hi
C - - - - - 0x002BBE 00:ABAE: 8D 09 05  STA ram_plr_spd_X_lo
C - - - - - 0x002BC1 00:ABB1: A9 06     LDA #con_path_sel_move_on_ground
C - - - - - 0x002BC3 00:ABB3: 8D 65 05  STA ram_plr_state
C - - - - - 0x002BC6 00:ABB6: A9 00     LDA #$00
C - - - - - 0x002BC8 00:ABB8: 4C 93 AB  JMP loc_AB93



ofs_034_ABBB_06_move_on_ground:
C - - J - - 0x002BCB 00:ABBB: A5 28     LDA ram_btn_hold
C - - - - - 0x002BCD 00:ABBD: 4A        LSR
C - - - - - 0x002BCE 00:ABBE: B0 1F     BCS bra_ABDF_pressed_Right
C - - - - - 0x002BD0 00:ABC0: 4A        LSR
C - - - - - 0x002BD1 00:ABC1: B0 39     BCS bra_ABFC_pressed_Left
C - - - - - 0x002BD3 00:ABC3: A9 04     LDA #con_path_sel_idle_on_ground
C - - - - - 0x002BD5 00:ABC5: 8D 65 05  STA ram_plr_state
loc_ABC8:
C D 1 - - - 0x002BD8 00:ABC8: 20 73 EF  JSR sub_0x03EF83
loc_ABCB:
sub_ABCB:
C D 1 - - - 0x002BDB 00:ABCB: AD C4 04  LDA ram_plr_pos_X_lo
C - - - - - 0x002BDE 00:ABCE: 18        CLC
C - - - - - 0x002BDF 00:ABCF: 6D 09 05  ADC ram_plr_spd_X_lo
C - - - - - 0x002BE2 00:ABD2: 8D C4 04  STA ram_plr_pos_X_lo
C - - - - - 0x002BE5 00:ABD5: AD 38 04  LDA ram_plr_pos_X_hi
C - - - - - 0x002BE8 00:ABD8: 6D F2 04  ADC ram_plr_spd_X_hi
C - - - - - 0x002BEB 00:ABDB: 8D 38 04  STA ram_plr_pos_X_hi
C - - - - - 0x002BEE 00:ABDE: 60        RTS
bra_ABDF_pressed_Right:
C - - - - - 0x002BEF 00:ABDF: A9 00     LDA #$00
C - - - - - 0x002BF1 00:ABE1: 8D A8 04  STA ram_plr_facing
C - - - - - 0x002BF4 00:ABE4: 20 28 AC  JSR sub_AC28
C - - - - - 0x002BF7 00:ABE7: A0 02     LDY #$02
C - - - - - 0x002BF9 00:ABE9: B1 0A     LDA (ram_000A_t003_data),Y
C - - - - - 0x002BFB 00:ABEB: CD 38 04  CMP ram_plr_pos_X_hi
C - - - - - 0x002BFE 00:ABEE: 90 07     BCC bra_ABF7
C - - - - - 0x002C00 00:ABF0: A9 01     LDA #$01
C - - - - - 0x002C02 00:ABF2: A0 00     LDY #$00
C - - - - - 0x002C04 00:ABF4: 4C 11 AC  JMP loc_AC11
bra_ABF7:
- - - - - - 0x002C07 00:ABF7: A9 00     LDA #$00
- - - - - - 0x002C09 00:ABF9: A8        TAY
- - - - - - 0x002C0A 00:ABFA: F0 15     BEQ bra_AC11    ; jmp
bra_ABFC_pressed_Left:
C - - - - - 0x002C0C 00:ABFC: A9 01     LDA #$01    ; facing left
C - - - - - 0x002C0E 00:ABFE: 8D A8 04  STA ram_plr_facing
C - - - - - 0x002C11 00:AC01: 20 28 AC  JSR sub_AC28
C - - - - - 0x002C14 00:AC04: A0 01     LDY #$01
C - - - - - 0x002C16 00:AC06: B1 0A     LDA (ram_000A_t003_data),Y
C - - - - - 0x002C18 00:AC08: CD 38 04  CMP ram_plr_pos_X_hi
C - - - - - 0x002C1B 00:AC0B: B0 EA     BCS bra_ABF7
C - - - - - 0x002C1D 00:AC0D: A9 FF     LDA #$FF
C - - - - - 0x002C1F 00:AC0F: A0 00     LDY #$00
loc_AC11:
bra_AC11:
C D 1 - - - 0x002C21 00:AC11: 8C 09 05  STY ram_plr_spd_X_lo
C - - - - - 0x002C24 00:AC14: 8D F2 04  STA ram_plr_spd_X_hi
C - - - - - 0x002C27 00:AC17: A9 00     LDA #$00
C - - - - - 0x002C29 00:AC19: 8D 20 05  STA ram_plr_spd_Y_hi
C - - - - - 0x002C2C 00:AC1C: 8D 37 05  STA ram_plr_spd_Y_lo
C - - - - - 0x002C2F 00:AC1F: 4C C8 AB  JMP loc_ABC8


; bzk garbage
- - - - - - 0x002C32 00:AC22: A9 FF     LDA #$FF
- - - - - - 0x002C34 00:AC24: A0 E0     LDY #$E0
- - - - - - 0x002C36 00:AC26: D0 E9     BNE bra_AC11    ; jmp



sub_AC28:
C - - - - - 0x002C38 00:AC28: AD 80 07  LDA ram_0780
C - - - - - 0x002C3B 00:AC2B: 0A        ASL
C - - - - - 0x002C3C 00:AC2C: A8        TAY
C - - - - - 0x002C3D 00:AC2D: B9 AE AD  LDA tbl_ADAE,Y
C - - - - - 0x002C40 00:AC30: 85 08     STA ram_0008_t026_data
C - - - - - 0x002C42 00:AC32: B9 AF AD  LDA tbl_ADAE + $01,Y
C - - - - - 0x002C45 00:AC35: 85 09     STA ram_0008_t026_data + $01
C - - - - - 0x002C47 00:AC37: AD 90 07  LDA ram_0790
C - - - - - 0x002C4A 00:AC3A: 0A        ASL
C - - - - - 0x002C4B 00:AC3B: A8        TAY
C - - - - - 0x002C4C 00:AC3C: B1 08     LDA (ram_0008_t026_data),Y
C - - - - - 0x002C4E 00:AC3E: 85 0A     STA ram_000A_t003_data
C - - - - - 0x002C50 00:AC40: C8        INY
C - - - - - 0x002C51 00:AC41: B1 08     LDA (ram_0008_t026_data),Y
C - - - - - 0x002C53 00:AC43: 85 0B     STA ram_000A_t003_data + $01
C - - - - - 0x002C55 00:AC45: 60        RTS



sub_AC46:
C - - - - - 0x002C56 00:AC46: AD 80 07  LDA ram_0780
C - - - - - 0x002C59 00:AC49: 0A        ASL
C - - - - - 0x002C5A 00:AC4A: A8        TAY
C - - - - - 0x002C5B 00:AC4B: B9 9C AD  LDA tbl_AD9C,Y
C - - - - - 0x002C5E 00:AC4E: 85 08     STA ram_0008_t027_data
C - - - - - 0x002C60 00:AC50: B9 9D AD  LDA tbl_AD9C + $01,Y
C - - - - - 0x002C63 00:AC53: 85 09     STA ram_0008_t027_data + $01
C - - - - - 0x002C65 00:AC55: A0 00     LDY #$00
bra_AC57_loop:
C - - - - - 0x002C67 00:AC57: B1 08     LDA (ram_0008_t027_data),Y
C - - - - - 0x002C69 00:AC59: C9 FF     CMP #$FF
C - - - - - 0x002C6B 00:AC5B: F0 22     BEQ bra_AC7F_FF
C - - - - - 0x002C6D 00:AC5D: 85 00     STA ram_0000_t069
C - - - - - 0x002C6F 00:AC5F: AE 4E 05  LDX ram_plr_id
C - - - - - 0x002C72 00:AC62: E0 02     CPX #$02
C - - - - - 0x002C74 00:AC64: D0 05     BNE bra_AC6B
- - - - - - 0x002C76 00:AC66: 18        CLC
- - - - - - 0x002C77 00:AC67: 69 04     ADC #$04
- - - - - - 0x002C79 00:AC69: 85 00     STA ram_0000_t069
bra_AC6B:
C - - - - - 0x002C7B 00:AC6B: A5 00     LDA ram_0000_t069
C - - - - - 0x002C7D 00:AC6D: 38        SEC
C - - - - - 0x002C7E 00:AC6E: ED 1C 04  SBC ram_plr_pos_Y_hi
C - - - - - 0x002C81 00:AC71: B0 04     BCS bra_AC77
C - - - - - 0x002C83 00:AC73: 49 FF     EOR #$FF
C - - - - - 0x002C85 00:AC75: 69 01     ADC #$01
bra_AC77:
C - - - - - 0x002C87 00:AC77: C9 04     CMP #$04
C - - - - - 0x002C89 00:AC79: 90 06     BCC bra_AC81
C - - - - - 0x002C8B 00:AC7B: C8        INY
C - - - - - 0x002C8C 00:AC7C: C8        INY
C - - - - - 0x002C8D 00:AC7D: D0 D8     BNE bra_AC57_loop    ; jmp?
bra_AC7F_FF:
C - - - - - 0x002C8F 00:AC7F: 18        CLC
C - - - - - 0x002C90 00:AC80: 60        RTS
bra_AC81:
C - - - - - 0x002C91 00:AC81: A5 00     LDA ram_0000_t069
C - - - - - 0x002C93 00:AC83: AA        TAX
C - - - - - 0x002C94 00:AC84: C8        INY
C - - - - - 0x002C95 00:AC85: B1 08     LDA (ram_0008_t027_data),Y
C - - - - - 0x002C97 00:AC87: 38        SEC
C - - - - - 0x002C98 00:AC88: 60        RTS



ofs_034_AC89_08_move_towards_stairs:
C - - J - - 0x002C99 00:AC89: AD 1D 06  LDA ram_061D_plr
C - - - - - 0x002C9C 00:AC8C: F0 09     BEQ bra_AC97
C - - - - - 0x002C9E 00:AC8E: CE 1D 06  DEC ram_061D_plr
C - - - - - 0x002CA1 00:AC91: 20 73 EF  JSR sub_0x03EF83
C - - - - - 0x002CA4 00:AC94: 4C CB AB  JMP loc_ABCB
bra_AC97:
C - - - - - 0x002CA7 00:AC97: A9 0A     LDA #con_path_sel_attach_to_stairs
C - - - - - 0x002CA9 00:AC99: 8D 65 05  STA ram_plr_state
C - - - - - 0x002CAC 00:AC9C: 60        RTS



ofs_034_AC9D_0A_climb_on_stairs:
C - - J - - 0x002CAD 00:AC9D: AD C1 05  LDA ram_05C1_plr
C - - - - - 0x002CB0 00:ACA0: D0 03     BNE bra_ACA5
C - - - - - 0x002CB2 00:ACA2: 4C 3C AD  JMP loc_AD3C
bra_ACA5:
C - - - - - 0x002CB5 00:ACA5: 4C 33 AD  JMP loc_AD33



ofs_034_ACA8_0C_idle_on_stairs:
C - - J - - 0x002CB8 00:ACA8: A5 28     LDA ram_btn_hold
C - - - - - 0x002CBA 00:ACAA: 4A        LSR
C - - - - - 0x002CBB 00:ACAB: B0 0D     BCS bra_ACBA_pressed_Right    ; if not con_btn_Right
C - - - - - 0x002CBD 00:ACAD: 4A        LSR
C - - - - - 0x002CBE 00:ACAE: B0 22     BCS bra_ACD2_pressed_Left    ; if not con_btn_Left
C - - - - - 0x002CC0 00:ACB0: 4A        LSR
C - - - - - 0x002CC1 00:ACB1: 90 03     BCC bra_ACB6_pressed_Up
; if con_btn_Down
C - - - - - 0x002CC3 00:ACB3: 4C 3C AD  JMP loc_AD3C
bra_ACB6_pressed_Up:
C - - - - - 0x002CC6 00:ACB6: 4A        LSR
C - - - - - 0x002CC7 00:ACB7: B0 7A     BCS bra_AD33_pressed_up
C - - - - - 0x002CC9 00:ACB9: 60        RTS
bra_ACBA_pressed_Right:
C - - - - - 0x002CCA 00:ACBA: A9 00     LDA #$00
C - - - - - 0x002CCC 00:ACBC: 8D A8 04  STA ram_plr_facing
C - - - - - 0x002CCF 00:ACBF: AD EF 05  LDA ram_05EF_plr
C - - - - - 0x002CD2 00:ACC2: F0 07     BEQ bra_ACCB
C - - - - - 0x002CD4 00:ACC4: A2 00     LDX #$00
C - - - - - 0x002CD6 00:ACC6: A0 00     LDY #$00
C - - - - - 0x002CD8 00:ACC8: 4C 42 AD  JMP loc_AD42
bra_ACCB:
- - - - - - 0x002CDB 00:ACCB: A2 02     LDX #$02
- - - - - - 0x002CDD 00:ACCD: A0 08     LDY #$08
- - - - - - 0x002CDF 00:ACCF: 4C 42 AD  JMP loc_AD42
bra_ACD2_pressed_Left:
C - - - - - 0x002CE2 00:ACD2: A9 01     LDA #$01    ; facing left
C - - - - - 0x002CE4 00:ACD4: 8D A8 04  STA ram_plr_facing
C - - - - - 0x002CE7 00:ACD7: AD EF 05  LDA ram_05EF_plr
C - - - - - 0x002CEA 00:ACDA: F0 07     BEQ bra_ACE3
- - - - - - 0x002CEC 00:ACDC: A2 02     LDX #$02
- - - - - - 0x002CEE 00:ACDE: A0 0C     LDY #$0C
- - - - - - 0x002CF0 00:ACE0: 4C 42 AD  JMP loc_AD42
bra_ACE3:
C - - - - - 0x002CF3 00:ACE3: A2 00     LDX #$00
C - - - - - 0x002CF5 00:ACE5: A0 04     LDY #$04
C - - - - - 0x002CF7 00:ACE7: 4C 42 AD  JMP loc_AD42



ofs_034_ACEA_0E_move_on_stairs:
C - - J - - 0x002CFA 00:ACEA: 20 CB AB  JSR sub_ABCB
C - - - - - 0x002CFD 00:ACED: AD DB 04  LDA ram_plr_pos_Y_lo
C - - - - - 0x002D00 00:ACF0: 18        CLC
C - - - - - 0x002D01 00:ACF1: 6D 37 05  ADC ram_plr_spd_Y_lo
C - - - - - 0x002D04 00:ACF4: 8D DB 04  STA ram_plr_pos_Y_lo
C - - - - - 0x002D07 00:ACF7: AD 1C 04  LDA ram_plr_pos_Y_hi
C - - - - - 0x002D0A 00:ACFA: 6D 20 05  ADC ram_plr_spd_Y_hi
C - - - - - 0x002D0D 00:ACFD: 8D 1C 04  STA ram_plr_pos_Y_hi
C - - - - - 0x002D10 00:AD00: AD 1D 06  LDA ram_061D_plr
C - - - - - 0x002D13 00:AD03: F0 0F     BEQ bra_AD14
C - - - - - 0x002D15 00:AD05: CE 1D 06  DEC ram_061D_plr
C - - - - - 0x002D18 00:AD08: AD 7C 05  LDA ram_plr_anim_timer
C - - - - - 0x002D1B 00:AD0B: F0 04     BEQ bra_AD11
C - - - - - 0x002D1D 00:AD0D: CE 7C 05  DEC ram_plr_anim_timer
C - - - - - 0x002D20 00:AD10: 60        RTS
bra_AD11:
C - - - - - 0x002D21 00:AD11: 4C EA E6  JMP loc_0x03E6FA
bra_AD14:
C - - - - - 0x002D24 00:AD14: A9 00     LDA #$00
C - - - - - 0x002D26 00:AD16: 8D C4 04  STA ram_plr_pos_X_lo
C - - - - - 0x002D29 00:AD19: 8D DB 04  STA ram_plr_pos_Y_lo
C - - - - - 0x002D2C 00:AD1C: 20 46 AC  JSR sub_AC46
C - - - - - 0x002D2F 00:AD1F: 90 0C     BCC bra_AD2D
C - - - - - 0x002D31 00:AD21: 8D 90 07  STA ram_0790
C - - - - - 0x002D34 00:AD24: 8E 1C 04  STX ram_plr_pos_Y_hi
C - - - - - 0x002D37 00:AD27: A9 04     LDA #con_path_sel_idle_on_ground
C - - - - - 0x002D39 00:AD29: 8D 65 05  STA ram_plr_state
C - - - - - 0x002D3C 00:AD2C: 60        RTS
bra_AD2D:
C - - - - - 0x002D3D 00:AD2D: A9 0C     LDA #con_path_sel_idle_on_stairs
C - - - - - 0x002D3F 00:AD2F: 8D 65 05  STA ram_plr_state
C - - - - - 0x002D42 00:AD32: 60        RTS



bra_AD33_pressed_up:
loc_AD33:
C D 1 - - - 0x002D43 00:AD33: 20 F5 E6  JSR sub_0x03E705
loc_AD36:
C D 1 - - - 0x002D46 00:AD36: A9 0E     LDA #con_path_sel_move_on_stairs
C - - - - - 0x002D48 00:AD38: 8D 65 05  STA ram_plr_state
C - - - - - 0x002D4B 00:AD3B: 60        RTS



loc_AD3C:
C D 1 - - - 0x002D4C 00:AD3C: 20 00 E7  JSR sub_0x03E710
C - - - - - 0x002D4F 00:AD3F: 4C 36 AD  JMP loc_AD36



loc_AD42:
C D 1 - - - 0x002D52 00:AD42: 20 0B E7  JSR sub_0x03E71B
C - - - - - 0x002D55 00:AD45: 4C 36 AD  JMP loc_AD36



sub_AD48_write_data_to_buffer:
C - - - - - 0x002D58 00:AD48: A0 00     LDY #$00
bra_AD4A_loop:
C - - - - - 0x002D5A 00:AD4A: B1 08     LDA (ram_0008_t028_data),Y
C - - - - - 0x002D5C 00:AD4C: 85 62     STA ram_ppu_address_hi
C - - - - - 0x002D5E 00:AD4E: C8        INY
C - - - - - 0x002D5F 00:AD4F: B1 08     LDA (ram_0008_t028_data),Y
C - - - - - 0x002D61 00:AD51: 85 61     STA ram_ppu_address_lo
C - - - - - 0x002D63 00:AD53: C8        INY
C - - - - - 0x002D64 00:AD54: 20 B5 E8  JSR sub_0x03E8C5_set_buffer_mode_01
bra_AD57_loop:
C - - - - - 0x002D67 00:AD57: B1 08     LDA (ram_0008_t028_data),Y
C - - - - - 0x002D69 00:AD59: F0 1B     BEQ bra_AD76
C - - - - - 0x002D6B 00:AD5B: C9 FF     CMP #$FF
C - - - - - 0x002D6D 00:AD5D: F0 32     BEQ bra_AD91_FF
C - - - - - 0x002D6F 00:AD5F: C9 FE     CMP #$FE
C - - - - - 0x002D71 00:AD61: F0 26     BEQ bra_AD89_FE
C - - - - - 0x002D73 00:AD63: C8        INY
C - - - - - 0x002D74 00:AD64: B1 08     LDA (ram_0008_t028_data),Y
C - - - - - 0x002D76 00:AD66: 85 0A     STA ram_000A_t021
C - - - - - 0x002D78 00:AD68: C8        INY
bra_AD69_loop:
C - - - - - 0x002D79 00:AD69: B1 08     LDA (ram_0008_t028_data),Y
C - - - - - 0x002D7B 00:AD6B: 9D 00 03  STA ram_ppu_buffer,X
C - - - - - 0x002D7E 00:AD6E: C8        INY
C - - - - - 0x002D7F 00:AD6F: E8        INX
C - - - - - 0x002D80 00:AD70: C6 0A     DEC ram_000A_t021
C - - - - - 0x002D82 00:AD72: D0 F5     BNE bra_AD69_loop
C - - - - - 0x002D84 00:AD74: F0 E1     BEQ bra_AD57_loop    ; jmp
bra_AD76:
C - - - - - 0x002D86 00:AD76: C8        INY
C - - - - - 0x002D87 00:AD77: B1 08     LDA (ram_0008_t028_data),Y
C - - - - - 0x002D89 00:AD79: 85 0A     STA ram_000A_t022
C - - - - - 0x002D8B 00:AD7B: C8        INY
C - - - - - 0x002D8C 00:AD7C: B1 08     LDA (ram_0008_t028_data),Y
C - - - - - 0x002D8E 00:AD7E: C8        INY
bra_AD7F_loop:
C - - - - - 0x002D8F 00:AD7F: 9D 00 03  STA ram_ppu_buffer,X
C - - - - - 0x002D92 00:AD82: E8        INX
C - - - - - 0x002D93 00:AD83: C6 0A     DEC ram_000A_t022
C - - - - - 0x002D95 00:AD85: D0 F8     BNE bra_AD7F_loop
C - - - - - 0x002D97 00:AD87: F0 CE     BEQ bra_AD57_loop    ; jmp
bra_AD89_FE:
C - - - - - 0x002D99 00:AD89: 86 1D     STX ram_index_ppu_buffer
C - - - - - 0x002D9B 00:AD8B: 20 12 ED  JSR sub_0x03ED22_close_buffer
C - - - - - 0x002D9E 00:AD8E: C8        INY
C - - - - - 0x002D9F 00:AD8F: D0 B9     BNE bra_AD4A_loop
bra_AD91_FF:
C - - - - - 0x002DA1 00:AD91: 86 1D     STX ram_index_ppu_buffer
C - - - - - 0x002DA3 00:AD93: 4C 12 ED  JMP loc_0x03ED22_close_buffer



tbl_AD96:
- D 1 - - - 0x002DA6 00:AD96: 64 B8     .word _off014_0x01F874_00
- D 1 - - - 0x002DA8 00:AD98: 71 B8     .word _off014_0x01F881_01
- D 1 - - - 0x002DAA 00:AD9A: 78 B8     .word _off014_0x01F888_02



tbl_AD9C:
- D 1 - - - 0x002DAC 00:AD9C: A2 AD     .word off_ADA2_00
- D 1 - - - 0x002DAE 00:AD9E: A9 AD     .word off_ADA9_01
- D 1 - - - 0x002DB0 00:ADA0: A9 AD     .word off_ADA9_02



off_ADA2_00:
- D 1 - I - 0x002DB2 00:ADA2: 80        .byte $80   ; 
- D 1 - I - 0x002DB3 00:ADA3: 00        .byte $00   ; 
- D 1 - I - 0x002DB4 00:ADA4: A0        .byte $A0   ; 
- D 1 - I - 0x002DB5 00:ADA5: 01        .byte $01   ; 
- D 1 - I - 0x002DB6 00:ADA6: C0        .byte $C0   ; 
- D 1 - I - 0x002DB7 00:ADA7: 02        .byte $02   ; 
- D 1 - I - 0x002DB8 00:ADA8: FF        .byte $FF   ; 



off_ADA9_01:
off_ADA9_02:
- D 1 - I - 0x002DB9 00:ADA9: 80        .byte $80   ; 
- D 1 - I - 0x002DBA 00:ADAA: 00        .byte $00   ; 
- D 1 - I - 0x002DBB 00:ADAB: C0        .byte $C0   ; 
- D 1 - I - 0x002DBC 00:ADAC: 01        .byte $01   ; 
- D 1 - I - 0x002DBD 00:ADAD: FF        .byte $FF   ; 



tbl_ADAE:
- D 1 - - - 0x002DBE 00:ADAE: B4 AD     .word _off_ADB4_00
- D 1 - - - 0x002DC0 00:ADB0: BA AD     .word _off_ADBA_01
- D 1 - - - 0x002DC2 00:ADB2: BE AD     .word _off_ADBE_02



_off_ADB4_00:
- D 1 - I - 0x002DC4 00:ADB4: C2 AD     .word off_ADC2_00_00
- D 1 - I - 0x002DC6 00:ADB6: C5 AD     .word off_ADC5_00_01
- D 1 - I - 0x002DC8 00:ADB8: C8 AD     .word off_ADC8_00_02



_off_ADBA_01:
- D 1 - I - 0x002DCA 00:ADBA: CB AD     .word off_ADCB_01_00
- D 1 - I - 0x002DCC 00:ADBC: CE AD     .word off_ADCE_01_01



_off_ADBE_02:
- D 1 - I - 0x002DCE 00:ADBE: D1 AD     .word off_ADD1_02_00
- D 1 - I - 0x002DD0 00:ADC0: D4 AD     .word off_ADD4_02_01



off_ADC2_00_00:
; bzk optimize, 1st bytes are placeholders, see ram_000A_t003_data
- - - - - - 0x002DD2 00:ADC2: 80        .byte $80   ; placeholder
- - - - - - 0x002DD3 00:ADC3: 80        .byte $80   ; pos_X_hi
- D 1 - I - 0x002DD4 00:ADC4: F8        .byte $F8   ; pos_X_hi



off_ADC5_00_01:
- - - - - - 0x002DD5 00:ADC5: A0        .byte $A0   ; placeholder
- - - - - - 0x002DD6 00:ADC6: 08        .byte $08   ; pos_X_hi
- D 1 - I - 0x002DD7 00:ADC7: 80        .byte $80   ; pos_X_hi



off_ADC8_00_02:
- - - - - - 0x002DD8 00:ADC8: C0        .byte $C0   ; placeholder
- D 1 - I - 0x002DD9 00:ADC9: 70        .byte $70   ; pos_X_hi
- D 1 - I - 0x002DDA 00:ADCA: F8        .byte $F8   ; pos_X_hi



off_ADCB_01_00:
- - - - - - 0x002DDB 00:ADCB: 80        .byte $80   ; placeholder
- D 1 - I - 0x002DDC 00:ADCC: 08        .byte $08   ; pos_X_hi
- D 1 - I - 0x002DDD 00:ADCD: F8        .byte $F8   ; pos_X_hi



off_ADCE_01_01:
- - - - - - 0x002DDE 00:ADCE: C0        .byte $C0   ; placeholder
- D 1 - I - 0x002DDF 00:ADCF: 88        .byte $88   ; pos_X_hi
- D 1 - I - 0x002DE0 00:ADD0: F8        .byte $F8   ; pos_X_hi



off_ADD1_02_00:
- - - - - - 0x002DE1 00:ADD1: 80        .byte $80   ; placeholder
- D 1 - I - 0x002DE2 00:ADD2: 08        .byte $08   ; pos_X_hi
- - - - - - 0x002DE3 00:ADD3: F8        .byte $F8   ; pos_X_hi



off_ADD4_02_01:
- - - - - - 0x002DE4 00:ADD4: C0        .byte $C0   ; placeholder
- D 1 - I - 0x002DE5 00:ADD5: 08        .byte $08   ; pos_X_hi
- - - - - - 0x002DE6 00:ADD6: 80        .byte $80   ; pos_X_hi



tbl_ADD7:
- D 1 - - - 0x002DE7 00:ADD7: DD AD     .word off_ADDD_00
- D 1 - - - 0x002DE9 00:ADD9: F3 AD     .word off_ADF3_01
- D 1 - - - 0x002DEB 00:ADDB: 09 AE     .word off_AE09_02



off_ADDD_00:
;                                              +--------------- animation
;                                              |    +---------- pos_X_hi
;                                              |    |    +----- pos_Y_hi
;                                              |    |    |
- D 1 - I - 0x002DED 00:ADDD: A0        .byte $A0, $59, $21   ; 
- D 1 - I - 0x002DF0 00:ADE0: A2        .byte $A2, $80, $29   ; 
- D 1 - I - 0x002DF3 00:ADE3: D6        .byte $D6, $70, $28   ; 
- D 1 - I - 0x002DF6 00:ADE6: D8        .byte $D8, $72, $0D   ; 
- D 1 - I - 0x002DF9 00:ADE9: A4        .byte $A4, $6A, $30   ; 
- D 1 - I - 0x002DFC 00:ADEC: A6        .byte $A6, $61, $4D   ; 
- D 1 - I - 0x002DFF 00:ADEF: D6        .byte $D6, $6E, $24   ; 
- D 1 - I - 0x002E02 00:ADF2: FF        .byte $FF   ; end token



off_ADF3_01:
;                                              +--------------- animation
;                                              |    +---------- pos_X_hi
;                                              |    |    +----- pos_Y_hi
;                                              |    |    |
- D 1 - I - 0x002E03 00:ADF3: A6        .byte $A6, $65, $2D   ; 
- D 1 - I - 0x002E06 00:ADF6: A8        .byte $A8, $7F, $3F   ; 
- D 1 - I - 0x002E09 00:ADF9: D6        .byte $D6, $71, $2D   ; 
- D 1 - I - 0x002E0C 00:ADFC: D8        .byte $D8, $89, $3B   ; 
- D 1 - I - 0x002E0F 00:ADFF: B2        .byte $B2, $6E, $48   ; 
- D 1 - I - 0x002E12 00:AE02: D6        .byte $D6, $71, $2D   ; 
- D 1 - I - 0x002E15 00:AE05: D8        .byte $D8, $78, $4D   ; 
- D 1 - I - 0x002E18 00:AE08: FF        .byte $FF   ; end token



off_AE09_02:
;                                              +--------------- animation
;                                              |    +---------- pos_X_hi
;                                              |    |    +----- pos_Y_hi
;                                              |    |    |
- D 1 - I - 0x002E19 00:AE09: B4        .byte $B4, $64, $4C   ; 
- D 1 - I - 0x002E1C 00:AE0C: B6        .byte $B6, $8A, $3D   ; 
- D 1 - I - 0x002E1F 00:AE0F: D6        .byte $D6, $7B, $30   ; 
- D 1 - I - 0x002E22 00:AE12: D8        .byte $D8, $8B, $22   ; 
- D 1 - I - 0x002E25 00:AE15: B8        .byte $B8, $9D, $4C   ; 
- D 1 - I - 0x002E28 00:AE18: D6        .byte $D6, $80, $32   ; 
- D 1 - I - 0x002E2B 00:AE1B: D8        .byte $D8, $A9, $37   ; 
- D 1 - I - 0x002E2E 00:AE1E: FF        .byte $FF   ; end token



tbl_AE1F:
- D 1 - - - 0x002E2F 00:AE1F: A3 AE     .word off_AEA3_00
- D 1 - - - 0x002E31 00:AE21: AF AE     .word off_AEAF_01
- D 1 - - - 0x002E33 00:AE23: BB AE     .word off_AEBB_02



tbl_AE25:
- D 1 - - - 0x002E35 00:AE25: 31 AE     .word off_AE31_00
- D 1 - - - 0x002E37 00:AE27: 43 AE     .word off_AE43_01
- D 1 - - - 0x002E39 00:AE29: 55 AE     .word off_AE55_02



tbl_AE2B:
- D 1 - - - 0x002E3B 00:AE2B: 67 AE     .word off_AE67_00
- D 1 - - - 0x002E3D 00:AE2D: 7B AE     .word off_AE7B_01
- D 1 - - - 0x002E3F 00:AE2F: 8F AE     .word off_AE8F_02



off_AE31_00:
- D 1 - I - 0x002E41 00:AE31: C7 AE     .word _off016_00_AEC7_00
- D 1 - I - 0x002E43 00:AE33: D3 AE     .word _off016_00_AED3_01
- D 1 - I - 0x002E45 00:AE35: EB AE     .word _off016_00_AEEB_02
- D 1 - I - 0x002E47 00:AE37: 03 AF     .word _off016_00_AF03_03
- D 1 - I - 0x002E49 00:AE39: 1B AF     .word _off016_00_AF1B_04
- D 1 - I - 0x002E4B 00:AE3B: 4B AF     .word _off016_00_AF4B_05
- D 1 - I - 0x002E4D 00:AE3D: 7B AF     .word _off016_00_AF7B_06
- D 1 - I - 0x002E4F 00:AE3F: AB AF     .word _off016_00_AFAB_07
- D 1 - I - 0x002E51 00:AE41: FF FF     .word $FFFF ; 



off_AE43_01:
- D 1 - I - 0x002E53 00:AE43: C7 AE     .word _off016_01_AEC7_00
- D 1 - I - 0x002E55 00:AE45: DF AE     .word _off016_01_AEDF_01
- D 1 - I - 0x002E57 00:AE47: F7 AE     .word _off016_01_AEF7_02
- D 1 - I - 0x002E59 00:AE49: 0F AF     .word _off016_01_AF0F_03
- D 1 - I - 0x002E5B 00:AE4B: 3F AF     .word _off016_01_AF3F_04
- D 1 - I - 0x002E5D 00:AE4D: 6F AF     .word _off016_01_AF6F_05
- D 1 - I - 0x002E5F 00:AE4F: 9F AF     .word _off016_01_AF9F_06
- D 1 - I - 0x002E61 00:AE51: CF AF     .word _off016_01_AFCF_07
- D 1 - I - 0x002E63 00:AE53: FF FF     .word $FFFF ; 



off_AE55_02:
- D 1 - I - 0x002E65 00:AE55: C7 AE     .word _off016_02_AEC7_00
- D 1 - I - 0x002E67 00:AE57: DF AE     .word _off016_02_AEDF_01
- D 1 - I - 0x002E69 00:AE59: F7 AE     .word _off016_02_AEF7_02
- D 1 - I - 0x002E6B 00:AE5B: 0F AF     .word _off016_02_AF0F_03
- D 1 - I - 0x002E6D 00:AE5D: 27 AF     .word _off016_02_AF27_04
- D 1 - I - 0x002E6F 00:AE5F: 57 AF     .word _off016_02_AF57_05
- D 1 - I - 0x002E71 00:AE61: 87 AF     .word _off016_02_AF87_06
- D 1 - I - 0x002E73 00:AE63: B7 AF     .word _off016_02_AFB7_07
- D 1 - I - 0x002E75 00:AE65: FF FF     .word $FFFF ; 



off_AE67_00:
- D 1 - I - 0x002E77 00:AE67: 2D B1     .word _off015_00_B12D_00
- D 1 - I - 0x002E79 00:AE69: 42 B1     .word _off015_00_B142_01
- D 1 - I - 0x002E7B 00:AE6B: 69 B1     .word _off015_00_B169_02
- D 1 - I - 0x002E7D 00:AE6D: 8C B1     .word _off015_00_B18C_03
- D 1 - I - 0x002E7F 00:AE6F: C2 B1     .word _off015_00_B1C2_04
- D 1 - I - 0x002E81 00:AE71: EC B1     .word _off015_00_B1EC_05
- D 1 - I - 0x002E83 00:AE73: 22 B2     .word _off015_00_B222_06
- D 1 - I - 0x002E85 00:AE75: 3C B2     .word _off015_00_B23C_07
- D 1 - I - 0x002E87 00:AE77: 4E B2     .word _off015_00_B24E_08
- D 1 - I - 0x002E89 00:AE79: FF FF     .word $FFFF ; 



off_AE7B_01:
- D 1 - I - 0x002E8B 00:AE7B: DB AF     .word _off015_01_AFDB_00
- D 1 - I - 0x002E8D 00:AE7D: F7 AF     .word _off015_01_AFF7_01
- D 1 - I - 0x002E8F 00:AE7F: 3C B0     .word _off015_01_B03C_02
- D 1 - I - 0x002E91 00:AE81: 61 B0     .word _off015_01_B061_03
- D 1 - I - 0x002E93 00:AE83: 82 B0     .word _off015_01_B082_04
- D 1 - I - 0x002E95 00:AE85: A1 B0     .word _off015_01_B0A1_05
- D 1 - I - 0x002E97 00:AE87: C6 B0     .word _off015_01_B0C6_06
- D 1 - I - 0x002E99 00:AE89: EC B0     .word _off015_01_B0EC_07
- D 1 - I - 0x002E9B 00:AE8B: FB B0     .word _off015_01_B0FB_08
- D 1 - I - 0x002E9D 00:AE8D: FF FF     .word $FFFF ; 



off_AE8F_02:
- D 1 - I - 0x002E9F 00:AE8F: 88 B2     .word _off015_02_B288_00
- D 1 - I - 0x002EA1 00:AE91: AD B2     .word _off015_02_B2AD_01
- D 1 - I - 0x002EA3 00:AE93: F2 B2     .word _off015_02_B2F2_02
- D 1 - I - 0x002EA5 00:AE95: 17 B3     .word _off015_02_B317_03
- D 1 - I - 0x002EA7 00:AE97: 33 B3     .word _off015_02_B333_04
- D 1 - I - 0x002EA9 00:AE99: 53 B3     .word _off015_02_B353_05
- D 1 - I - 0x002EAB 00:AE9B: 7D B3     .word _off015_02_B37D_06
- D 1 - I - 0x002EAD 00:AE9D: A2 B3     .word _off015_02_B3A2_07
- D 1 - I - 0x002EAF 00:AE9F: B1 B3     .word _off015_02_B3B1_08
- D 1 - I - 0x002EB1 00:AEA1: FF FF     .word $FFFF ; 



off_AEA3_00:
- D 1 - I - 0x002EB3 00:AEA3: 23 D0     .dbyt $23D0 ; ppu address
- D 1 - I - 0x002EB5 00:AEA5: 00        .byte $00, $05, $00   ; 

- D 1 - I - 0x002EB8 00:AEA8: FE        .byte $FE   ; continue

- D 1 - I - 0x002EB9 00:AEA9: 23 D8     .dbyt $23D8 ; ppu address
- D 1 - I - 0x002EBB 00:AEAB: 00        .byte $00, $05, $00   ; 

- D 1 - I - 0x002EBE 00:AEAE: FF        .byte $FF   ; end token



off_AEAF_01:
- D 1 - I - 0x002EBF 00:AEAF: 23 D8     .dbyt $23D8 ; ppu address
- D 1 - I - 0x002EC1 00:AEB1: 00        .byte $00, $04, $00   ; 

- D 1 - I - 0x002EC4 00:AEB4: FE        .byte $FE   ; continue

- D 1 - I - 0x002EC5 00:AEB5: 23 E0     .dbyt $23E0 ; 
- D 1 - I - 0x002EC7 00:AEB7: 00        .byte $00, $04, $00   ; 

- D 1 - I - 0x002ECA 00:AEBA: FF        .byte $FF   ; end token



off_AEBB_02:
- D 1 - I - 0x002ECB 00:AEBB: 23 DB     .dbyt $23DB ; ppu address
- D 1 - I - 0x002ECD 00:AEBD: 00        .byte $00, $04, $00   ; 

- D 1 - I - 0x002ED0 00:AEC0: FE        .byte $FE   ; continue

- D 1 - I - 0x002ED1 00:AEC1: 23 E3     .dbyt $23E3 ; 
- D 1 - I - 0x002ED3 00:AEC3: 00        .byte $00, $04, $00   ; 

- D 1 - I - 0x002ED6 00:AEC6: FF        .byte $FF   ; end token



_off016_00_AEC7_00:
_off016_01_AEC7_00:
_off016_02_AEC7_00:
- D 1 - I - 0x002ED7 00:AEC7: 20 83     .dbyt $2083 ; ppu address
- D 1 - I - 0x002ED9 00:AEC9: 00        .byte $00, $1A, $00   ; 

- D 1 - I - 0x002EDC 00:AECC: FE        .byte $FE   ; continue

- D 1 - I - 0x002EDD 00:AECD: 20 A3     .dbyt $20A3 ; ppu address
- D 1 - I - 0x002EDF 00:AECF: 00        .byte $00, $1A, $00   ; 

- D 1 - I - 0x002EE2 00:AED2: FF        .byte $FF   ; end token



_off016_00_AED3_01:
- D 1 - I - 0x002EE3 00:AED3: 20 C3     .dbyt $20C3 ; ppu address
- D 1 - I - 0x002EE5 00:AED5: 00        .byte $00, $1A, $00   ; 

- D 1 - I - 0x002EE8 00:AED8: FE        .byte $FE   ; continue

- D 1 - I - 0x002EE9 00:AED9: 20 E3     .dbyt $20E3 ; 
- D 1 - I - 0x002EEB 00:AEDB: 00        .byte $00, $1A, $00   ; 

- D 1 - I - 0x002EEE 00:AEDE: FF        .byte $FF   ; end token



_off016_01_AEDF_01:
_off016_02_AEDF_01:
- D 1 - I - 0x002EEF 00:AEDF: 20 C3     .dbyt $20C3 ; ppu address
- D 1 - I - 0x002EF1 00:AEE1: 00        .byte $00, $1A, $00   ; 

- D 1 - I - 0x002EF4 00:AEE4: FE        .byte $FE   ; continue

- D 1 - I - 0x002EF5 00:AEE5: 20 E3     .dbyt $20E3 ; ppu address
- D 1 - I - 0x002EF7 00:AEE7: 00        .byte $00, $1A, $00   ; 

- D 1 - I - 0x002EFA 00:AEEA: FF        .byte $FF   ; end token



_off016_00_AEEB_02:
- D 1 - I - 0x002EFB 00:AEEB: 21 14     .dbyt $2114 ; ppu address
- D 1 - I - 0x002EFD 00:AEED: 00        .byte $00, $09, $00   ; 

- D 1 - I - 0x002F00 00:AEF0: FE        .byte $FE   ; continue

- D 1 - I - 0x002F01 00:AEF1: 21 34     .dbyt $2134 ; ppu address
- D 1 - I - 0x002F03 00:AEF3: 00        .byte $00, $09, $00   ; 

- D 1 - I - 0x002F06 00:AEF6: FF        .byte $FF   ; end token



_off016_01_AEF7_02:
_off016_02_AEF7_02:
- D 1 - I - 0x002F07 00:AEF7: 21 03     .dbyt $2103 ; ppu address
- D 1 - I - 0x002F09 00:AEF9: 00        .byte $00, $1A, $00   ; 

- D 1 - I - 0x002F0C 00:AEFC: FE        .byte $FE   ; continue

- D 1 - I - 0x002F0D 00:AEFD: 21 23     .dbyt $2123 ; ppu address
- D 1 - I - 0x002F0F 00:AEFF: 00        .byte $00, $1A, $00   ; 

- D 1 - I - 0x002F12 00:AF02: FF        .byte $FF   ; end token



_off016_00_AF03_03:
- D 1 - I - 0x002F13 00:AF03: 21 54     .dbyt $2154 ; ppu address
- D 1 - I - 0x002F15 00:AF05: 00        .byte $00, $09, $00   ; 

- D 1 - I - 0x002F18 00:AF08: FE        .byte $FE   ; continue

- D 1 - I - 0x002F19 00:AF09: 21 74     .dbyt $2174 ; ppu address
- D 1 - I - 0x002F1B 00:AF0B: 00        .byte $00, $09, $00   ; 

- D 1 - I - 0x002F1E 00:AF0E: FF        .byte $FF   ; end token



_off016_01_AF0F_03:
_off016_02_AF0F_03:
- D 1 - I - 0x002F1F 00:AF0F: 21 43     .dbyt $2143 ; ppu address
- D 1 - I - 0x002F21 00:AF11: 00        .byte $00, $1A, $00   ; 

- D 1 - I - 0x002F24 00:AF14: FE        .byte $FE   ; continue

- D 1 - I - 0x002F25 00:AF15: 21 63     .dbyt $2163 ; ppu address
- D 1 - I - 0x002F27 00:AF17: 00        .byte $00, $1A, $00   ; 

- D 1 - I - 0x002F2A 00:AF1A: FF        .byte $FF   ; end token



_off016_00_AF1B_04:
- D 1 - I - 0x002F2B 00:AF1B: 21 94     .dbyt $2194 ; ppu address
- D 1 - I - 0x002F2D 00:AF1D: 00        .byte $00, $09, $00   ; 

- D 1 - I - 0x002F30 00:AF20: FE        .byte $FE   ; continue

- D 1 - I - 0x002F31 00:AF21: 21 B4     .dbyt $21B4 ; ppu address
- D 1 - I - 0x002F33 00:AF23: 00        .byte $00, $09, $00   ; 

- D 1 - I - 0x002F36 00:AF26: FF        .byte $FF   ; end token



_off016_02_AF27_04:
- D 1 - I - 0x002F37 00:AF27: 21 83     .dbyt $2183 ; ppu address
- D 1 - I - 0x002F39 00:AF29: 00        .byte $00, $09, $00   ; 

- D 1 - I - 0x002F3C 00:AF2C: FE        .byte $FE   ; continue

- D 1 - I - 0x002F3D 00:AF2D: 21 9C     .dbyt $219C ; ppu address
- D 1 - I - 0x002F3F 00:AF2F: 00        .byte $00, $01, $00   ; 

- D 1 - I - 0x002F42 00:AF32: FE        .byte $FE   ; continue

- D 1 - I - 0x002F43 00:AF33: 21 A3     .dbyt $21A3 ; ppu address
- D 1 - I - 0x002F45 00:AF35: 00        .byte $00, $09, $00   ; 

- D 1 - I - 0x002F48 00:AF38: FE        .byte $FE   ; continue

- D 1 - I - 0x002F49 00:AF39: 21 BC     .dbyt $21BC ; ppu address
- D 1 - I - 0x002F4B 00:AF3B: 00        .byte $00, $01, $00   ; 

- D 1 - I - 0x002F4E 00:AF3E: FF        .byte $FF   ; end token



_off016_01_AF3F_04:
- D 1 - I - 0x002F4F 00:AF3F: 21 90     .dbyt $2190 ; ppu address
- D 1 - I - 0x002F51 00:AF41: 00        .byte $00, $0D, $00   ; 

- D 1 - I - 0x002F54 00:AF44: FE        .byte $FE   ; continue

- D 1 - I - 0x002F55 00:AF45: 21 B0     .dbyt $21B0 ; ppu address
- D 1 - I - 0x002F57 00:AF47: 00        .byte $00, $0D, $00   ; 

- D 1 - I - 0x002F5A 00:AF4A: FF        .byte $FF   ; end token



_off016_00_AF4B_05:
- D 1 - I - 0x002F5B 00:AF4B: 21 D4     .dbyt $21D4 ; ppu address
- D 1 - I - 0x002F5D 00:AF4D: 00        .byte $00, $09, $00   ; 

- D 1 - I - 0x002F60 00:AF50: FE        .byte $FE   ; continue

- D 1 - I - 0x002F61 00:AF51: 21 F4     .dbyt $21F4 ; ppu address
- D 1 - I - 0x002F63 00:AF53: 00        .byte $00, $09, $00   ; 

- D 1 - I - 0x002F66 00:AF56: FF        .byte $FF   ; end token



_off016_02_AF57_05:
- D 1 - I - 0x002F67 00:AF57: 21 C3     .dbyt $21C3 ; ppu address
- D 1 - I - 0x002F69 00:AF59: 00        .byte $00, $09, $00   ; 

- D 1 - I - 0x002F6C 00:AF5C: FE        .byte $FE   ; continue

- D 1 - I - 0x002F6D 00:AF5D: 21 DC     .dbyt $21DC ; ppu address
- D 1 - I - 0x002F6F 00:AF5F: 00        .byte $00, $01, $00   ; 

- D 1 - I - 0x002F72 00:AF62: FE        .byte $FE   ; continue

- D 1 - I - 0x002F73 00:AF63: 21 E3     .dbyt $21E3 ; ppu address
- D 1 - I - 0x002F75 00:AF65: 00        .byte $00, $09, $00   ; 

- D 1 - I - 0x002F78 00:AF68: FE        .byte $FE   ; continue

- D 1 - I - 0x002F79 00:AF69: 21 FC     .dbyt $21FC ; ppu address
- D 1 - I - 0x002F7B 00:AF6B: 00        .byte $00, $01, $00   ; 

- D 1 - I - 0x002F7E 00:AF6E: FF        .byte $FF   ; end token



_off016_01_AF6F_05:
- D 1 - I - 0x002F7F 00:AF6F: 21 D0     .dbyt $21D0 ; ppu address
- D 1 - I - 0x002F81 00:AF71: 00        .byte $00, $0D, $00   ; 

- D 1 - I - 0x002F84 00:AF74: FE        .byte $FE   ; continue

- D 1 - I - 0x002F85 00:AF75: 21 F0     .dbyt $21F0 ; ppu address
- D 1 - I - 0x002F87 00:AF77: 00        .byte $00, $0D, $00   ; 

- D 1 - I - 0x002F8A 00:AF7A: FF        .byte $FF   ; end token



_off016_00_AF7B_06:
- D 1 - I - 0x002F8B 00:AF7B: 22 03     .dbyt $2203 ; ppu address
- D 1 - I - 0x002F8D 00:AF7D: 00        .byte $00, $1A, $00   ; 

- D 1 - I - 0x002F90 00:AF80: FE        .byte $FE   ; continue

- D 1 - I - 0x002F91 00:AF81: 22 23     .dbyt $2223 ; ppu address
- D 1 - I - 0x002F93 00:AF83: 00        .byte $00, $1A, $00   ; 

- D 1 - I - 0x002F96 00:AF86: FF        .byte $FF   ; end token



_off016_02_AF87_06:
- D 1 - I - 0x002F97 00:AF87: 22 03     .dbyt $2203 ; ppu address
- D 1 - I - 0x002F99 00:AF89: 00        .byte $00, $09, $00   ; 

- D 1 - I - 0x002F9C 00:AF8C: FE        .byte $FE   ; continue

- D 1 - I - 0x002F9D 00:AF8D: 22 1C     .dbyt $221C ; ppu address
- D 1 - I - 0x002F9F 00:AF8F: 00        .byte $00, $01, $00   ; 

- D 1 - I - 0x002FA2 00:AF92: FE        .byte $FE   ; continue

- D 1 - I - 0x002FA3 00:AF93: 22 23     .dbyt $2223 ; ppu address
- D 1 - I - 0x002FA5 00:AF95: 00        .byte $00, $09, $00   ; 

- D 1 - I - 0x002FA8 00:AF98: FE        .byte $FE   ; continue

- D 1 - I - 0x002FA9 00:AF99: 22 3C     .dbyt $223C ; ppu address
- D 1 - I - 0x002FAB 00:AF9B: 00        .byte $00, $01, $00   ; 

- D 1 - I - 0x002FAE 00:AF9E: FF        .byte $FF   ; end token



_off016_01_AF9F_06:
- D 1 - I - 0x002FAF 00:AF9F: 22 10     .dbyt $2210 ; ppu address
- D 1 - I - 0x002FB1 00:AFA1: 00        .byte $00, $0D, $00   ; 

- D 1 - I - 0x002FB4 00:AFA4: FE        .byte $FE   ; continue

- D 1 - I - 0x002FB5 00:AFA5: 22 30     .dbyt $2230 ; ppu address
- D 1 - I - 0x002FB7 00:AFA7: 00        .byte $00, $0D, $00   ; 

- D 1 - I - 0x002FBA 00:AFAA: FF        .byte $FF   ; end token



_off016_00_AFAB_07:
- D 1 - I - 0x002FBB 00:AFAB: 22 43     .dbyt $2243 ; ppu address
- D 1 - I - 0x002FBD 00:AFAD: 00        .byte $00, $1A, $00   ; 

- D 1 - I - 0x002FC0 00:AFB0: FE        .byte $FE   ; continue

- D 1 - I - 0x002FC1 00:AFB1: 22 63     .dbyt $2263 ; ppu address
- D 1 - I - 0x002FC3 00:AFB3: 00        .byte $00, $1A, $00   ; 

- D 1 - I - 0x002FC6 00:AFB6: FF        .byte $FF   ; end token



_off016_02_AFB7_07:
- D 1 - I - 0x002FC7 00:AFB7: 22 43     .dbyt $2243 ; ppu address
- D 1 - I - 0x002FC9 00:AFB9: 00        .byte $00, $09, $00   ; 

- D 1 - I - 0x002FCC 00:AFBC: FE        .byte $FE   ; continue

- D 1 - I - 0x002FCD 00:AFBD: 22 5C     .dbyt $225C ; ppu address
- D 1 - I - 0x002FCF 00:AFBF: 00        .byte $00, $01, $00   ; 

- D 1 - I - 0x002FD2 00:AFC2: FE        .byte $FE   ; continue

- D 1 - I - 0x002FD3 00:AFC3: 22 63     .dbyt $2263 ; ppu address
- D 1 - I - 0x002FD5 00:AFC5: 00        .byte $00, $09, $00   ; 

- D 1 - I - 0x002FD8 00:AFC8: FE        .byte $FE   ; continue

- D 1 - I - 0x002FD9 00:AFC9: 22 7C     .dbyt $227C ; ppu address
- D 1 - I - 0x002FDB 00:AFCB: 00        .byte $00, $01, $00   ; 

- D 1 - I - 0x002FDE 00:AFCE: FF        .byte $FF   ; end token



_off016_01_AFCF_07:
- D 1 - I - 0x002FDF 00:AFCF: 22 50     .dbyt $2250 ; ppu address
- D 1 - I - 0x002FE1 00:AFD1: 00        .byte $00, $0D, $00   ; 

- D 1 - I - 0x002FE4 00:AFD4: FE        .byte $FE   ; continue

- D 1 - I - 0x002FE5 00:AFD5: 22 70     .dbyt $2270 ; ppu address
- D 1 - I - 0x002FE7 00:AFD7: 00        .byte $00, $0D, $00   ; 

- D 1 - I - 0x002FEA 00:AFDA: FF        .byte $FF   ; end token



_off015_01_AFDB_00:
- D 1 - I - 0x002FEB 00:AFDB: 23 20     .dbyt $2320 ; ppu address
- D 1 - I - 0x002FED 00:AFDD: 00        .byte $00, $0C, $00, $80, $14, $7A, $00, $45, $82, $45, $82, $00, $00, $45, $44, $45   ; 
- D 1 - I - 0x002FFD 00:AFED: 46        .byte $46, $56, $46, $00, $46, $56, $00, $00, $00   ; 

- D 1 - I - 0x003006 00:AFF6: FF        .byte $FF   ; end token



_off015_01_AFF7_01:
- D 1 - I - 0x003007 00:AFF7: 23 40     .dbyt $2340 ; ppu address
- D 1 - I - 0x003009 00:AFF9: 80        .byte $80, $40, $00, $00, $7A, $7A, $5F, $5F, $6F, $5F, $00, $00, $81, $82, $82, $00   ; 
- D 1 - I - 0x003019 00:B009: 8B        .byte $8B, $64, $80, $80, $82, $00, $8B, $80, $90, $91, $45, $79, $9B, $7A, $00, $46   ; 
- D 1 - I - 0x003029 00:B019: 00        .byte $00, $00, $00, $00, $5F, $6F, $5F, $7A, $7A, $6F, $5F, $00, $91, $8B, $90, $00   ; 
- D 1 - I - 0x003039 00:B029: 00        .byte $00, $00, $91, $8B, $90, $00, $00, $64, $00, $00, $00, $00, $AB, $00, $AC, $00   ; 
- D 1 - I - 0x003049 00:B039: 00        .byte $00, $00   ; 

- D 1 - I - 0x00304B 00:B03B: FF        .byte $FF   ; end token



_off015_01_B03C_02:
- D 1 - I - 0x00304C 00:B03C: 23 80     .dbyt $2380 ; ppu address
- D 1 - I - 0x00304E 00:B03E: 80        .byte $80, $20, $00, $00, $7A, $7A, $6F, $5F, $6F, $5F, $7A, $6F, $5F, $7A, $5F, $7A   ; 
- D 1 - I - 0x00305E 00:B04E: 7A        .byte $7A, $8A, $89, $8A, $89, $89, $8A, $8A, $7A, $79, $8E, $7A, $8E, $79, $8E, $7A   ; 
- D 1 - I - 0x00306E 00:B05E: 00        .byte $00, $00   ; 

- D 1 - I - 0x003070 00:B060: FF        .byte $FF   ; end token



_off015_01_B061_03:
- D 1 - I - 0x003071 00:B061: 20 00     .dbyt $2000 ; ppu address
- D 1 - I - 0x003073 00:B063: 80        .byte $80, $0E, $7C, $7C, $7F, $7F, $7F, $7F, $7F, $7F, $7F, $7F, $7F, $7F, $7E, $7D   ; 
- D 1 - I - 0x003083 00:B073: 00        .byte $00, $10, $7F, $00, $02, $7C, $00, $0D, $00, $80, $03, $BF, $00, $00   ; 

- D 1 - I - 0x003091 00:B081: FF        .byte $FF   ; end token



_off015_01_B082_04:
- D 1 - I - 0x003092 00:B082: 20 40     .dbyt $2040 ; ppu address
- D 1 - I - 0x003094 00:B084: 00        .byte $00, $0E, $00, $80, $01, $BF, $00, $20, $00, $80, $11, $BF, $00, $81, $81, $79   ; 
- D 1 - I - 0x0030A4 00:B094: 45        .byte $45, $44, $7A, $00, $00, $79, $45, $44, $79, $7A, $00, $00   ; 

- D 1 - I - 0x0030B0 00:B0A0: FF        .byte $FF   ; end token



_off015_01_B0A1_05:
- D 1 - I - 0x0030B1 00:B0A1: 20 90     .dbyt $2090 ; ppu address
- D 1 - I - 0x0030B3 00:B0A3: 80        .byte $80, $0C, $BF, $00, $64, $90, $91, $90, $00, $00, $87, $88, $91, $90, $00, $15   ; 
- D 1 - I - 0x0030C3 00:B0B3: 00        .byte $00, $80, $0F, $BF, $00, $00, $00, $00, $87, $88, $97, $98, $00, $99, $9A, $00   ; 
- D 1 - I - 0x0030D3 00:B0C3: 00        .byte $00, $00   ; 

- D 1 - I - 0x0030D5 00:B0C5: FF        .byte $FF   ; end token



_off015_01_B0C6_06:
- D 1 - I - 0x0030D6 00:B0C6: 20 C0     .dbyt $20C0 ; ppu address
- D 1 - I - 0x0030D8 00:B0C8: 00        .byte $00, $0E, $00, $80, $10, $7C, $7C, $00, $00, $BF, $00, $AA, $A9, $A7, $A8, $A7   ; 
- D 1 - I - 0x0030E8 00:B0D8: A8        .byte $A8, $A5, $A9, $AA, $A5, $00, $10, $00, $80, $06, $7C, $7C, $00, $00, $00, $BF   ; 
- D 1 - I - 0x0030F8 00:B0E8: 00        .byte $00, $0C, $00   ; 

- D 1 - I - 0x0030FB 00:B0EB: FF        .byte $FF   ; end token



_off015_01_B0EC_07:
- D 1 - I - 0x0030FC 00:B0EC: 21 00     .dbyt $2100 ; ppu address
- D 1 - I - 0x0030FE 00:B0EE: 00        .byte $00, $0E, $00, $00, $02, $7C, $00, $0E, $7F, $00, $02, $7C   ; 

- D 1 - I - 0x00310A 00:B0FA: FF        .byte $FF   ; end token



_off015_01_B0FB_08:
- D 1 - I - 0x00310B 00:B0FB: 23 F0     .dbyt $23F0 ; ppu address
- D 1 - I - 0x00310D 00:B0FD: 80        .byte $80, $10, $55, $55, $55, $55, $55, $55, $55, $11, $05, $05, $05, $09, $0A, $06   ; 
- D 1 - I - 0x00311D 00:B10D: 05        .byte $05, $01   ; bzk bug? excess? written into 2400

- D 1 - I - 0x00311F 00:B10F: FE        .byte $FE   ; continue

- D 1 - I - 0x003120 00:B110: 23 C0     .dbyt $23C0 ; ppu address
- D 1 - I - 0x003122 00:B112: 80        .byte $80, $18, $00, $00, $00, $00, $50, $50, $50, $10, $00, $00, $00, $00, $08   ; 

- D 1 - I - 0x003131 00:B121: FE        .byte $FE   ; continue

- D 1 - I - 0x003132 00:B122: FB 32     .dbyt $FB32 ; bzk bug? wtf is this ppu address?
- D 1 - I - 0x003134 00:B124: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 

- D 1 - I - 0x00313C 00:B12C: FF        .byte $FF   ; end token



_off015_00_B12D_00:
- D 1 - I - 0x00313D 00:B12D: 22 60     .dbyt $2260 ; ppu address
- D 1 - I - 0x00313F 00:B12F: 00        .byte $00, $13, $00, $80, $0D, $81, $45, $44, $A2, $A3, $00, $83, $84, $85, $86, $A3   ; 
- D 1 - I - 0x00314F 00:B13F: 00        .byte $00, $00   ; 

- D 1 - I - 0x003151 00:B141: FF        .byte $FF   ; end token



_off015_00_B142_01:
- D 1 - I - 0x003152 00:B142: 22 80     .dbyt $2280 ; ppu address
- D 1 - I - 0x003154 00:B144: 00        .byte $00, $12, $00, $80, $0C, $81, $65, $80, $80, $A2, $A3, $00, $96, $94, $95, $96   ; 
- D 1 - I - 0x003164 00:B154: A3        .byte $A3, $00, $14, $00, $80, $0E, $65, $80, $80, $80, $A2, $A3, $A4, $A6, $A4, $94   ; 
- D 1 - I - 0x003174 00:B164: A6        .byte $A6, $B3, $00, $00   ; 

- D 1 - I - 0x003178 00:B168: FF        .byte $FF   ; end token



_off015_00_B169_02:
- D 1 - I - 0x003179 00:B169: 22 C0     .dbyt $22C0 ; ppu address
- D 1 - I - 0x00317B 00:B16B: 00        .byte $00, $12, $00, $80, $0C, $92, $BA, $BB, $BC, $B2, $B3, $A4, $A6, $B4, $B5, $A6   ; 
- D 1 - I - 0x00318B 00:B17B: A3        .byte $A3, $00, $05, $00, $80, $07, $81, $45, $44, $45, $44, $45, $81, $00, $16, $00   ; 

- D 1 - I - 0x00319B 00:B18B: FF        .byte $FF   ; end token



_off015_00_B18C_03:
- D 1 - I - 0x00319C 00:B18C: 23 00     .dbyt $2300 ; ppu address
- D 1 - I - 0x00319E 00:B18E: 00        .byte $00, $03, $00, $80, $08, $91, $90, $91, $92, $80, $80, $82, $79, $00, $05, $00   ; 
- D 1 - I - 0x0031AE 00:B19E: 80        .byte $80, $05, $7F, $7F, $7F, $7E, $7D, $00, $09, $7F, $80, $0E, $7C, $7C, $00, $00   ; 
- D 1 - I - 0x0031BE 00:B1AE: 00        .byte $00, $A1, $00, $A1, $00, $00, $91, $80, $8B, $7A, $00, $06, $00, $80, $01, $7E   ; 
- D 1 - I - 0x0031CE 00:B1BE: 00        .byte $00, $0D, $00   ; 

- D 1 - I - 0x0031D1 00:B1C1: FF        .byte $FF   ; end token



_off015_00_B1C2_04:
- D 1 - I - 0x0031D2 00:B1C2: 23 40     .dbyt $2340 ; ppu address
- D 1 - I - 0x0031D4 00:B1C4: 80        .byte $80, $0C, $00, $00, $00, $B1, $B0, $B1, $A0, $A0, $00, $B0, $00, $A0, $00, $05   ; 
- D 1 - I - 0x0031E4 00:B1D4: 00        .byte $00, $80, $01, $BF, $00, $1E, $00, $80, $01, $BF, $00, $07, $00, $80, $08, $8C   ; 
- D 1 - I - 0x0031F4 00:B1E4: 8D        .byte $8D, $8D, $8F, $8C, $00, $00, $00   ; 

- D 1 - I - 0x0031FB 00:B1EB: FF        .byte $FF   ; end token



_off015_00_B1EC_05:
- D 1 - I - 0x0031FC 00:B1EC: 23 80     .dbyt $2380 ; ppu address
- D 1 - I - 0x0031FE 00:B1EE: 00        .byte $00, $02, $7C, $00, $0A, $7F, $80, $11, $7E, $7D, $7F, $7F, $00, $81, $44, $B7   ; 
- D 1 - I - 0x00320E 00:B1FE: B8        .byte $B8, $B7, $45, $81, $9C, $9D, $9E, $9F, $9C, $00, $10, $00, $80, $01, $BF, $00   ; 
- D 1 - I - 0x00321E 00:B20E: 03        .byte $03, $00, $80, $0F, $64, $8B, $B7, $B9, $B7, $8B, $64, $81, $AD, $AE, $AF, $AD   ; 
- D 1 - I - 0x00322E 00:B21E: 00        .byte $00, $00, $00   ; 

- D 1 - I - 0x003231 00:B221: FF        .byte $FF   ; end token



_off015_00_B222_06:
- D 1 - I - 0x003232 00:B222: 20 00     .dbyt $2000 ; ppu address
- D 1 - I - 0x003234 00:B224: 00        .byte $00, $0E, $00, $80, $12, $BF, $00, $00, $00, $00, $B7, $00, $B7, $81, $BD, $BD   ; 
- D 1 - I - 0x003244 00:B234: 00        .byte $00, $BE, $75, $BD, $00, $00, $00   ; 

- D 1 - I - 0x00324B 00:B23B: FF        .byte $FF   ; end token



_off015_00_B23C_07:
- D 1 - I - 0x00324C 00:B23C: 20 20     .dbyt $2020 ; ppu address
- D 1 - I - 0x00324E 00:B23E: 00        .byte $00, $0F, $00, $80, $01, $BF, $00, $1E, $00, $00, $10, $7F, $00, $02, $7C   ; 

- D 1 - I - 0x00325D 00:B24D: FF        .byte $FF   ; end token



_off015_00_B24E_08:
- D 1 - I - 0x00325E 00:B24E: 23 E0     .dbyt $23E0 ; ppu address
- D 1 - I - 0x003260 00:B250: 80        .byte $80, $20, $00, $00, $00, $00, $C0, $F0, $F0, $30, $50, $50, $50, $10, $CC, $FF   ; 
- D 1 - I - 0x003270 00:B260: FF        .byte $FF, $33, $55, $D5, $D5, $11, $80, $A0, $A0, $20, $00, $00, $00, $00, $0F, $0B   ; 
- D 1 - I - 0x003280 00:B270: 0A        .byte $0A, $02   ; bzk bug? excess? written into 2400

- D 1 - I - 0x003282 00:B272: FE        .byte $FE   ; continue

- D 1 - I - 0x003283 00:B273: 23 C0     .dbyt $23C0 ; ppu address
- D 1 - I - 0x003285 00:B275: 80        .byte $80, $10, $00, $00, $00, $00, $0F, $0B, $0A, $02, $00, $00, $00, $00, $00, $00   ; 
- D 1 - I - 0x003295 00:B285: 00        .byte $00, $00   ; 

- D 1 - I - 0x003297 00:B287: FF        .byte $FF   ; end token



_off015_02_B288_00:
- D 1 - I - 0x003298 00:B288: 22 E0     .dbyt $22E0 ; ppu address
- D 1 - I - 0x00329A 00:B28A: 80        .byte $80, $20, $00, $00, $7A, $4B, $4F, $00, $4E, $4C, $4F, $4D, $4A, $49, $4F, $7A   ; 
- D 1 - I - 0x0032AA 00:B29A: 00        .byte $00, $4A, $67, $4C, $4E, $4F, $4F, $47, $4E, $4C, $B8, $B8, $83, $93, $86, $B8   ; 
- D 1 - I - 0x0032BA 00:B2AA: 00        .byte $00, $00   ; 

- D 1 - I - 0x0032BC 00:B2AC: FF        .byte $FF   ; end token



_off015_02_B2AD_01:
- D 1 - I - 0x0032BD 00:B2AD: 23 00     .dbyt $2300 ; ppu address
- D 1 - I - 0x0032BF 00:B2AF: 80        .byte $80, $40, $00, $00, $4B, $4B, $57, $5D, $5E, $00, $58, $59, $5A, $5B, $58, $00   ; 
- D 1 - I - 0x0032CF 00:B2BF: 00        .byte $00, $00, $69, $58, $5E, $69, $57, $6E, $4A, $57, $93, $B8, $4B, $A1, $4B, $93   ; 
- D 1 - I - 0x0032DF 00:B2CF: 00        .byte $00, $00, $00, $00, $6A, $66, $68, $79, $6E, $6C, $69, $6A, $6A, $66, $4B, $7A   ; 
- D 1 - I - 0x0032EF 00:B2DF: 00        .byte $00, $00, $75, $7A, $6E, $75, $68, $59, $5A, $5B, $00, $4B, $4B, $B1, $4B, $4B   ; 
- D 1 - I - 0x0032FF 00:B2EF: 00        .byte $00, $00   ; 

- D 1 - I - 0x003301 00:B2F1: FF        .byte $FF   ; end token



_off015_02_B2F2_02:
- D 1 - I - 0x003302 00:B2F2: 23 40     .dbyt $2340 ; ppu address
- D 1 - I - 0x003304 00:B2F4: 80        .byte $80, $20, $00, $00, $4C, $49, $6D, $5C, $6B, $7B, $49, $48, $4D, $58, $4B, $4B   ; 
- D 1 - I - 0x003314 00:B304: 00        .byte $00, $00, $00, $4F, $49, $5C, $6D, $69, $6A, $6B, $00, $4B, $76, $77, $78, $00   ; 
- D 1 - I - 0x003324 00:B314: 00        .byte $00, $00   ; 

- D 1 - I - 0x003326 00:B316: FF        .byte $FF   ; end token



_off015_02_B317_03:
- D 1 - I - 0x003327 00:B317: 23 80     .dbyt $2380 ; ppu address
- D 1 - I - 0x003329 00:B319: 00        .byte $00, $02, $7C, $00, $11, $7F, $80, $02, $7E, $7D, $00, $09, $7F, $00, $02, $7C   ; 
- D 1 - I - 0x003339 00:B329: 00        .byte $00, $12, $00, $80, $01, $7E, $00, $0D, $00   ; 

- D 1 - I - 0x003342 00:B332: FF        .byte $FF   ; end token



_off015_02_B333_04:
- D 1 - I - 0x003343 00:B333: 20 00     .dbyt $2000 ; ppu address
- D 1 - I - 0x003345 00:B335: 00        .byte $00, $11, $00, $80, $01, $BF, $00, $10, $00, $80, $09, $41, $42, $41, $42, $42   ; 
- D 1 - I - 0x003355 00:B345: 43        .byte $43, $44, $45, $7A, $00, $05, $00, $80, $01, $BF, $00, $0F, $00   ; 

- D 1 - I - 0x003362 00:B352: FF        .byte $FF   ; end token



_off015_02_B353_05:
- D 1 - I - 0x003363 00:B353: 20 40     .dbyt $2040 ; ppu address
- D 1 - I - 0x003365 00:B355: 80        .byte $80, $10, $00, $00, $40, $55, $63, $54, $40, $52, $53, $54, $55, $82, $7A, $00   ; 
- D 1 - I - 0x003375 00:B365: 00        .byte $00, $BF, $00, $12, $00, $80, $0D, $50, $51, $50, $60, $50, $00, $61, $00, $62   ; 
- D 1 - I - 0x003385 00:B375: 64        .byte $64, $00, $00, $BF, $00, $11, $00   ; 

- D 1 - I - 0x00338C 00:B37C: FF        .byte $FF   ; end token



_off015_02_B37D_06:
- D 1 - I - 0x00338D 00:B37D: 20 80     .dbyt $2080 ; ppu address
- D 1 - I - 0x00338F 00:B37F: 80        .byte $80, $12, $00, $00, $72, $74, $72, $74, $72, $70, $71, $74, $72, $74, $00, $BF   ; 
- D 1 - I - 0x00339F 00:B38F: 00        .byte $00, $00, $7C, $7C, $00, $1A, $00, $80, $06, $BF, $00, $00, $00, $7C, $7C, $00   ; 
- D 1 - I - 0x0033AF 00:B39F: 0E        .byte $0E, $00   ; 

- D 1 - I - 0x0033B1 00:B3A1: FF        .byte $FF   ; end token



_off015_02_B3A2_07:
- D 1 - I - 0x0033B2 00:B3A2: 20 C0     .dbyt $20C0 ; ppu address
- D 1 - I - 0x0033B4 00:B3A4: 00        .byte $00, $02, $7C, $00, $0E, $7F, $00, $02, $7C, $00, $0E, $00   ; 

- D 1 - I - 0x0033C0 00:B3B0: FF        .byte $FF   ; end token



_off015_02_B3B1_08:
- D 1 - I - 0x0033C1 00:B3B1: 23 E8     .dbyt $23E8 ; ppu address
- D 1 - I - 0x0033C3 00:B3B3: 80        .byte $80, $18, $D0, $50, $50, $90, $A0, $A0, $F0, $B0, $4D, $55, $55, $BB, $AA, $AA   ; 
- D 1 - I - 0x0033D3 00:B3C3: 3F        .byte $3F, $8B, $00, $00, $00, $00, $00, $00   ; 
- D 1 - I - 0x0033DB 00:B3CB: 00        .byte $00, $00   ; bzk bug? excess? written into 2400

- D 1 - I - 0x0033DD 00:B3CD: FE        .byte $FE   ; continue

- D 1 - I - 0x0033DE 00:B3CE: 23 C0     .dbyt $23C0 ; ppu address
- D 1 - I - 0x0033E0 00:B3D0: 80        .byte $80, $10, $FF, $FF, $FF, $33, $00, $00, $00, $00, $0F, $0F, $0F, $00, $00, $00   ; 
- D 1 - I - 0x0033F0 00:B3E0: 00        .byte $00, $00   ; 

- D 1 - I - 0x0033F2 00:B3E2: FF        .byte $FF   ; end token



sub_B3E3:
C - - - - - 0x0033F3 00:B3E3: A9 00     LDA #$00
C - - - - - 0x0033F5 00:B3E5: 85 74     STA ram_0074_flag
C - - - - - 0x0033F7 00:B3E7: 4C 95 E7  JMP loc_0x03E7A5



loc_0x0033FA:
C D 1 - - - 0x0033FA 00:B3EA: A5 6B     LDA ram_006B_subscript
C - - - - - 0x0033FC 00:B3EC: 20 6D E8  JSR sub_0x03E87D_jump_to_pointers_after_JSR_A
- D 1 - I - 0x0033FF 00:B3EF: 13 B4     .word ofs_028_B413_00
- D 1 - I - 0x003401 00:B3F1: 13 B4     .word ofs_028_B413_01
- D 1 - I - 0x003403 00:B3F3: 1F B4     .word ofs_028_B41F_02
- D 1 - I - 0x003405 00:B3F5: 36 B4     .word ofs_028_B436_03
- D 1 - I - 0x003407 00:B3F7: 9A B4     .word ofs_028_B49A_04
- D 1 - I - 0x003409 00:B3F9: CE B4     .word ofs_028_B4CE_05
- D 1 - I - 0x00340B 00:B3FB: EB B4     .word ofs_028_B4EB_06
- D 1 - I - 0x00340D 00:B3FD: 01 B5     .word ofs_028_B501_07
- D 1 - I - 0x00340F 00:B3FF: 0C B5     .word ofs_028_B50C_08
- D 1 - I - 0x003411 00:B401: 1C B5     .word ofs_028_B51C_09
- D 1 - I - 0x003413 00:B403: 36 B5     .word ofs_028_B536_0A
- D 1 - I - 0x003415 00:B405: 61 B5     .word ofs_028_B561_0B



sub_B407:
C - - - - - 0x003417 00:B407: A9 01     LDA #$01
C - - - - - 0x003419 00:B409: 85 78     STA ram_0078_flag
C - - - - - 0x00341B 00:B40B: 20 C5 E6  JSR sub_0x03E6D5
C - - - - - 0x00341E 00:B40E: A9 00     LDA #$00
C - - - - - 0x003420 00:B410: 85 78     STA ram_0078_flag
C - - - - - 0x003422 00:B412: 60        RTS



ofs_028_B413_00:
ofs_028_B413_01:
C - - J - - 0x003423 00:B413: 20 DA E2  JSR sub_0x03E2EA_prg_bankswitch_dpcm_2
C - - - - - 0x003426 00:B416: 20 E3 B3  JSR sub_B3E3
C - - - - - 0x003429 00:B419: 20 CE E5  JSR sub_0x03E5DE
C - - - - - 0x00342C 00:B41C: E6 6B     INC ram_006B_subscript
C - - - - - 0x00342E 00:B41E: 60        RTS



ofs_028_B41F_02:
C - - J - - 0x00342F 00:B41F: 20 3A B8  JSR sub_B83A
C - - - - - 0x003432 00:B422: 20 B0 B7  JSR sub_B7B0
C - - - - - 0x003435 00:B425: A9 00     LDA #$00
C - - - - - 0x003437 00:B427: 20 1D B7  JSR sub_B71D
C - - - - - 0x00343A 00:B42A: E6 6B     INC ram_006B_subscript
C - - - - - 0x00343C 00:B42C: 60        RTS



sub_B42D:
C - - - - - 0x00343D 00:B42D: A9 00     LDA #$00
C - - - - - 0x00343F 00:B42F: 85 56     STA ram_cam_pos_lo
C - - - - - 0x003441 00:B431: A9 02     LDA #$02
C - - - - - 0x003443 00:B433: 85 57     STA ram_cam_pos_hi
C - - - - - 0x003445 00:B435: 60        RTS



ofs_028_B436_03:
C - - J - - 0x003446 00:B436: 20 0B 8F  JSR sub_8F0B
C - - - - - 0x003449 00:B439: 20 2D B4  JSR sub_B42D
C - - - - - 0x00344C 00:B43C: 20 07 B4  JSR sub_B407
C - - - - - 0x00344F 00:B43F: 20 3A B8  JSR sub_B83A
C - - - - - 0x003452 00:B442: AD 65 05  LDA ram_plr_state
C - - - - - 0x003455 00:B445: C9 02     CMP #con_plr_state_idle_on_ground
C - - - - - 0x003457 00:B447: F0 01     BEQ bra_B44A
bra_B449_RTS:
C - - - - - 0x003459 00:B449: 60        RTS
bra_B44A:
C - - - - - 0x00345A 00:B44A: AD 4E 05  LDA ram_plr_id
C - - - - - 0x00345D 00:B44D: C9 02     CMP #$02
C - - - - - 0x00345F 00:B44F: D0 04     BNE bra_B455
- - - - - - 0x003461 00:B451: A2 0C     LDX #$0C
- - - - - - 0x003463 00:B453: D0 02     BNE bra_B457
bra_B455:
C - - - - - 0x003465 00:B455: A2 10     LDX #$10
bra_B457:
C - - - - - 0x003467 00:B457: 86 08     STX ram_0008_t05B
C - - - - - 0x003469 00:B459: A2 F0     LDX #$F0
C - - - - - 0x00346B 00:B45B: A9 FB     LDA #$FB
C - - - - - 0x00346D 00:B45D: 20 DD FC  JSR sub_0x03FCED
C - - - - - 0x003470 00:B460: D0 E7     BNE bra_B449_RTS
C - - - - - 0x003472 00:B462: A2 F0     LDX #$F0
C - - - - - 0x003474 00:B464: A9 05     LDA #$05
C - - - - - 0x003476 00:B466: 20 DD FC  JSR sub_0x03FCED
C - - - - - 0x003479 00:B469: D0 DE     BNE bra_B449_RTS
C - - - - - 0x00347B 00:B46B: A6 08     LDX ram_0008_t05B
C - - - - - 0x00347D 00:B46D: A9 FB     LDA #$FB
C - - - - - 0x00347F 00:B46F: 20 DD FC  JSR sub_0x03FCED
C - - - - - 0x003482 00:B472: D0 0A     BNE bra_B47E
C - - - - - 0x003484 00:B474: A9 05     LDA #$05
C - - - - - 0x003486 00:B476: A6 08     LDX ram_0008_t05B
C - - - - - 0x003488 00:B478: 20 DD FC  JSR sub_0x03FCED
C - - - - - 0x00348B 00:B47B: D0 01     BNE bra_B47E
- - - - - - 0x00348D 00:B47D: 60        RTS
bra_B47E:
loc_B47E:
C D 1 - - - 0x00348E 00:B47E: A9 00     LDA #$00
C - - - - - 0x003490 00:B480: 85 B9     STA ram_00B9
C - - - - - 0x003492 00:B482: 8D 13 04  STA ram_obj_anim_id + $13
C - - - - - 0x003495 00:B485: 8D 14 04  STA ram_obj_anim_id + $14
C - - - - - 0x003498 00:B488: 8D 15 04  STA ram_obj_anim_id + $15
C - - - - - 0x00349B 00:B48B: 8D 16 04  STA ram_obj_anim_id + $16
C - - - - - 0x00349E 00:B48E: 8D 62 05  STA ram_obj_id + $14
C - - - - - 0x0034A1 00:B491: 8D 63 05  STA ram_obj_id + $15
C - - - - - 0x0034A4 00:B494: 8D 64 05  STA ram_obj_id + $16
C - - - - - 0x0034A7 00:B497: E6 6B     INC ram_006B_subscript
C - - - - - 0x0034A9 00:B499: 60        RTS



ofs_028_B49A_04:
C - - J - - 0x0034AA 00:B49A: AD 38 04  LDA ram_plr_pos_X_hi
C - - - - - 0x0034AD 00:B49D: C9 D0     CMP #$D0
C - - - - - 0x0034AF 00:B49F: B0 1B     BCS bra_B4BC
C - - - - - 0x0034B1 00:B4A1: 20 EE B7  JSR sub_B7EE
C - - - - - 0x0034B4 00:B4A4: B0 0A     BCS bra_B4B0
C - - - - - 0x0034B6 00:B4A6: BD 4E 05  LDA ram_obj_id,X
C - - - - - 0x0034B9 00:B4A9: C9 05     CMP #$05
C - - - - - 0x0034BB 00:B4AB: F0 0F     BEQ bra_B4BC
C - - - - - 0x0034BD 00:B4AD: 20 16 B7  JSR sub_B716
bra_B4B0:
C - - - - - 0x0034C0 00:B4B0: 20 2A B7  JSR sub_B72A
C - - - - - 0x0034C3 00:B4B3: 20 2D B4  JSR sub_B42D
C - - - - - 0x0034C6 00:B4B6: 20 07 B4  JSR sub_B407
C - - - - - 0x0034C9 00:B4B9: 4C 3A B8  JMP loc_B83A
bra_B4BC:
C - - - - - 0x0034CC 00:B4BC: 20 3A B8  JSR sub_B83A
C - - - - - 0x0034CF 00:B4BF: A9 02     LDA #$02
C - - - - - 0x0034D1 00:B4C1: 8D 00 04  STA ram_plr_anim_id
C - - - - - 0x0034D4 00:B4C4: 20 A5 B8  JSR sub_B8A5
C - - - - - 0x0034D7 00:B4C7: A9 10     LDA #$10
C - - - - - 0x0034D9 00:B4C9: 85 30     STA ram_screen_timer_lo
C - - - - - 0x0034DB 00:B4CB: 4C 7E B4  JMP loc_B47E



ofs_028_B4CE_05:
C - - J - - 0x0034DE 00:B4CE: 20 3A B8  JSR sub_B83A
C - - - - - 0x0034E1 00:B4D1: 20 59 B8  JSR sub_B859
C - - - - - 0x0034E4 00:B4D4: C6 30     DEC ram_screen_timer_lo
C - - - - - 0x0034E6 00:B4D6: F0 01     BEQ bra_B4D9
C - - - - - 0x0034E8 00:B4D8: 60        RTS
bra_B4D9:
C - - - - - 0x0034E9 00:B4D9: A0 00     LDY #$00
C - - - - - 0x0034EB 00:B4DB: 8C 85 07  STY ram_0785
C - - - - - 0x0034EE 00:B4DE: 8C 86 07  STY ram_0786
C - - - - - 0x0034F1 00:B4E1: C8        INY ; 01
C - - - - - 0x0034F2 00:B4E2: 8C 84 07  STY ram_0784
C - - - - - 0x0034F5 00:B4E5: 8C 87 07  STY ram_0787
C - - - - - 0x0034F8 00:B4E8: E6 6B     INC ram_006B_subscript
C - - - - - 0x0034FA 00:B4EA: 60        RTS



ofs_028_B4EB_06:
C - - J - - 0x0034FB 00:B4EB: 20 2C B8  JSR sub_B82C
C - - - - - 0x0034FE 00:B4EE: 20 59 B8  JSR sub_B859
C - - - - - 0x003501 00:B4F1: 20 F2 B5  JSR sub_B5F2
C - - - - - 0x003504 00:B4F4: 20 0E B9  JSR sub_B90E
C - - - - - 0x003507 00:B4F7: B0 01     BCS bra_B4FA
C - - - - - 0x003509 00:B4F9: 60        RTS
bra_B4FA:
C - - - - - 0x00350A 00:B4FA: A9 00     LDA #$00
C - - - - - 0x00350C 00:B4FC: 85 C9     STA ram_00C9
C - - - - - 0x00350E 00:B4FE: E6 6B     INC ram_006B_subscript
C - - - - - 0x003510 00:B500: 60        RTS



ofs_028_B501_07:
C - - J - - 0x003511 00:B501: 20 2C B8  JSR sub_B82C
C - - - - - 0x003514 00:B504: 20 3E B6  JSR sub_B63E
C - - - - - 0x003517 00:B507: 90 02     BCC bra_B50B_RTS
C - - - - - 0x003519 00:B509: E6 6B     INC ram_006B_subscript
bra_B50B_RTS:
C - - - - - 0x00351B 00:B50B: 60        RTS



ofs_028_B50C_08:
C - - J - - 0x00351C 00:B50C: 20 2C B8  JSR sub_B82C
C - - - - - 0x00351F 00:B50F: 20 F2 B5  JSR sub_B5F2
C - - - - - 0x003522 00:B512: 20 C3 D5  JSR sub_0x03D5D3
C - - - - - 0x003525 00:B515: A9 03     LDA #$03
C - - - - - 0x003527 00:B517: 85 72     STA ram_0072_chr_banks_config
C - - - - - 0x003529 00:B519: E6 6B     INC ram_006B_subscript
C - - - - - 0x00352B 00:B51B: 60        RTS



ofs_028_B51C_09:
C - - J - - 0x00352C 00:B51C: 20 2C B8  JSR sub_B82C
C - - - - - 0x00352F 00:B51F: 20 F2 B5  JSR sub_B5F2
C - - - - - 0x003532 00:B522: 20 DE B5  JSR sub_B5DE
C - - - - - 0x003535 00:B525: A5 CA     LDA ram_00CA
C - - - - - 0x003537 00:B527: C9 A0     CMP #$A0
C - - - - - 0x003539 00:B529: B0 0A     BCS bra_B535_RTS
C - - - - - 0x00353B 00:B52B: 20 9D B7  JSR sub_B79D
C - - - - - 0x00353E 00:B52E: A9 06     LDA #$06
C - - - - - 0x003540 00:B530: 20 1D B7  JSR sub_B71D
C - - - - - 0x003543 00:B533: E6 6B     INC ram_006B_subscript
bra_B535_RTS:
C - - - - - 0x003545 00:B535: 60        RTS



ofs_028_B536_0A:
C - - J - - 0x003546 00:B536: 20 F2 B5  JSR sub_B5F2
C - - - - - 0x003549 00:B539: AD 38 04  LDA ram_plr_pos_X_hi
C - - - - - 0x00354C 00:B53C: C9 E8     CMP #$E8
C - - - - - 0x00354E 00:B53E: B0 17     BCS bra_B557
C - - - - - 0x003550 00:B540: 20 EE B7  JSR sub_B7EE
C - - - - - 0x003553 00:B543: B0 06     BCS bra_B54B
C - - - - - 0x003555 00:B545: BD 4E 05  LDA ram_obj_id,X
C - - - - - 0x003558 00:B548: 20 16 B7  JSR sub_B716
bra_B54B:
C - - - - - 0x00355B 00:B54B: 20 2A B7  JSR sub_B72A
C - - - - - 0x00355E 00:B54E: 20 2D B4  JSR sub_B42D
C - - - - - 0x003561 00:B551: 20 07 B4  JSR sub_B407
C - - - - - 0x003564 00:B554: 4C 2C B8  JMP loc_B82C
bra_B557:
C - - - - - 0x003567 00:B557: 20 2C B8  JSR sub_B82C
C - - - - - 0x00356A 00:B55A: A9 02     LDA #$02
C - - - - - 0x00356C 00:B55C: 85 1C     STA ram_disable_rendering_timer
C - - - - - 0x00356E 00:B55E: E6 6B     INC ram_006B_subscript
C - - - - - 0x003570 00:B560: 60        RTS



ofs_028_B561_0B:
C - - J - - 0x003571 00:B561: A9 02     LDA #$02
C - - - - - 0x003573 00:B563: 85 1C     STA ram_disable_rendering_timer
C - - - - - 0x003575 00:B565: 20 CA E5  JSR sub_0x03E5DA
C - - - - - 0x003578 00:B568: 20 E3 B3  JSR sub_B3E3
C - - - - - 0x00357B 00:B56B: A9 00     LDA #con_irq_00
C - - - - - 0x00357D 00:B56D: 85 3F     STA ram_003F_copy_irq_handler
C - - - - - 0x00357F 00:B56F: 85 6D     STA ram_006D_irq_handler
C - - - - - 0x003581 00:B571: A9 40     LDA #$40
C - - - - - 0x003583 00:B573: 85 3D     STA ram_hp_boss
C - - - - - 0x003585 00:B575: 20 85 FB  JSR sub_0x03FB95
C - - - - - 0x003588 00:B578: E6 33     INC ram_blk_lo
C - - - - - 0x00358A 00:B57A: A9 00     LDA #$00
C - - - - - 0x00358C 00:B57C: 85 34     STA ram_blk_fr
C - - - - - 0x00358E 00:B57E: A9 01     LDA #con_002A_01
C - - - - - 0x003590 00:B580: 85 2A     STA ram_002A_script
C - - - - - 0x003592 00:B582: 60        RTS



sub_0x003593:
C - - - - - 0x003593 00:B583: A5 BF     LDA ram_00BF
C - - - - - 0x003595 00:B585: D0 66     BNE bra_B5ED_not_underflow
C - - - - - 0x003597 00:B587: A5 CA     LDA ram_00CA
C - - - - - 0x003599 00:B589: C9 32     CMP #$32
C - - - - - 0x00359B 00:B58B: 90 0C     BCC bra_B599
C - - - - - 0x00359D 00:B58D: AD 1C 04  LDA ram_plr_pos_Y_hi
C - - - - - 0x0035A0 00:B590: 38        SEC
C - - - - - 0x0035A1 00:B591: E9 10     SBC #$10
C - - - - - 0x0035A3 00:B593: 90 38     BCC bra_B5CD
C - - - - - 0x0035A5 00:B595: C5 CA     CMP ram_00CA
C - - - - - 0x0035A7 00:B597: 90 34     BCC bra_B5CD
bra_B599:
C - - - - - 0x0035A9 00:B599: AD 65 05  LDA ram_plr_state
C - - - - - 0x0035AC 00:B59C: C9 08     CMP #con_plr_state_jump
C - - - - - 0x0035AE 00:B59E: F0 27     BEQ bra_B5C7
C - - - - - 0x0035B0 00:B5A0: C9 0C     CMP #con_plr_state_fall
C - - - - - 0x0035B2 00:B5A2: F0 23     BEQ bra_B5C7
- - - - - - 0x0035B4 00:B5A4: C9 1A     CMP #con_plr_state_normal_atk_jump
- - - - - - 0x0035B6 00:B5A6: F0 1F     BEQ bra_B5C7
- - - - - - 0x0035B8 00:B5A8: C9 22     CMP #con_plr_state_subw_atk_jump
- - - - - - 0x0035BA 00:B5AA: F0 1B     BEQ bra_B5C7
- - - - - - 0x0035BC 00:B5AC: C9 0C     CMP #con_plr_state_fall
- - - - - - 0x0035BE 00:B5AE: F0 17     BEQ bra_B5C7
- - - - - - 0x0035C0 00:B5B0: C9 2C     CMP #con_plr_state_2C
- - - - - - 0x0035C2 00:B5B2: F0 13     BEQ bra_B5C7
- - - - - - 0x0035C4 00:B5B4: C9 26     CMP #con_plr_state_knockback
- - - - - - 0x0035C6 00:B5B6: D0 05     BNE bra_B5BD
- - - - - - 0x0035C8 00:B5B8: AD 02 06  LDA ram_05EF_obj + $13
- - - - - - 0x0035CB 00:B5BB: F0 0A     BEQ bra_B5C7
loc_B5BD:
bra_B5BD:
C D 1 - - - 0x0035CD 00:B5BD: A9 2E     LDA #con_plr_state_death
C - - - - - 0x0035CF 00:B5BF: 8D 65 05  STA ram_plr_state
C - - - - - 0x0035D2 00:B5C2: A9 80     LDA #$80
C - - - - - 0x0035D4 00:B5C4: 85 BF     STA ram_00BF
C - - - - - 0x0035D6 00:B5C6: 60        RTS
bra_B5C7:
C - - - - - 0x0035D7 00:B5C7: 20 AF E5  JSR sub_0x03E5BF
C - - - - - 0x0035DA 00:B5CA: 4C BD B5  JMP loc_B5BD
bra_B5CD:
C - - - - - 0x0035DD 00:B5CD: A5 C0     LDA ram_00C0
C - - - - - 0x0035DF 00:B5CF: D0 1C     BNE bra_B5ED_not_underflow
C - - - - - 0x0035E1 00:B5D1: AD F6 07  LDA ram_quest
C - - - - - 0x0035E4 00:B5D4: D0 04     BNE bra_B5DA_2nd_quest
C - - - - - 0x0035E6 00:B5D6: A9 08     LDA #$08
C - - - - - 0x0035E8 00:B5D8: D0 06     BNE bra_B5E0    ; jmp
bra_B5DA_2nd_quest:
C - - - - - 0x0035EA 00:B5DA: A9 0C     LDA #$0C
C - - - - - 0x0035EC 00:B5DC: D0 02     BNE bra_B5E0    ; jmp
sub_B5DE:
C - - - - - 0x0035EE 00:B5DE: A9 10     LDA #$10
bra_B5E0:
C - - - - - 0x0035F0 00:B5E0: 85 0E     STA ram_000E_t004
C - - - - - 0x0035F2 00:B5E2: A5 CB     LDA ram_00CB
C - - - - - 0x0035F4 00:B5E4: 38        SEC
C - - - - - 0x0035F5 00:B5E5: E5 0E     SBC ram_000E_t004
C - - - - - 0x0035F7 00:B5E7: 85 CB     STA ram_00CB
C - - - - - 0x0035F9 00:B5E9: B0 02     BCS bra_B5ED_not_underflow
C - - - - - 0x0035FB 00:B5EB: C6 CA     DEC ram_00CA
bra_B5ED_not_underflow:
C - - - - - 0x0035FD 00:B5ED: A5 CA     LDA ram_00CA
C - - - - - 0x0035FF 00:B5EF: 85 42     STA ram_0042
C - - - - - 0x003601 00:B5F1: 60        RTS



sub_B5F2:
C - - - - - 0x003602 00:B5F2: CE 87 07  DEC ram_0787
C - - - - - 0x003605 00:B5F5: F0 01     BEQ bra_B5F8
C - - - - - 0x003607 00:B5F7: 60        RTS
bra_B5F8:
C - - - - - 0x003608 00:B5F8: A5 1D     LDA ram_index_ppu_buffer
C - - - - - 0x00360A 00:B5FA: 48        PHA
C - - - - - 0x00360B 00:B5FB: 20 2C 85  JSR sub_852C_update_background_and_sprite_palette
C - - - - - 0x00360E 00:B5FE: 68        PLA
C - - - - - 0x00360F 00:B5FF: AA        TAX
C - - - - - 0x003610 00:B600: AD 86 07  LDA ram_0786
; * 03
C - - - - - 0x003613 00:B603: 0A        ASL
; bzk optimize, value is too low, no need for CLC after ASL
C - - - - - 0x003614 00:B604: 18        CLC
C - - - - - 0x003615 00:B605: 6D 86 07  ADC ram_0786
bra_B608:
C - - - - - 0x003618 00:B608: A8        TAY
C - - - - - 0x003619 00:B609: B9 2F B6  LDA tbl_B62F,Y
C - - - - - 0x00361C 00:B60C: C9 FF     CMP #$FF
C - - - - - 0x00361E 00:B60E: F0 18     BEQ bra_B628_FF
C - - - - - 0x003620 00:B610: 9D 08 03  STA ram_ppu_buffer + $08,X
C - - - - - 0x003623 00:B613: B9 30 B6  LDA tbl_B62F + $01,Y
C - - - - - 0x003626 00:B616: 9D 09 03  STA ram_ppu_buffer + $09,X
C - - - - - 0x003629 00:B619: B9 31 B6  LDA tbl_B62F + $02,Y
C - - - - - 0x00362C 00:B61C: 9D 0A 03  STA ram_ppu_buffer + $0A,X
C - - - - - 0x00362F 00:B61F: EE 86 07  INC ram_0786
C - - - - - 0x003632 00:B622: A9 08     LDA #$08
C - - - - - 0x003634 00:B624: 8D 87 07  STA ram_0787
C - - - - - 0x003637 00:B627: 60        RTS
bra_B628_FF:
C - - - - - 0x003638 00:B628: A9 00     LDA #$00
C - - - - - 0x00363A 00:B62A: 8D 86 07  STA ram_0786
C - - - - - 0x00363D 00:B62D: F0 D9     BEQ bra_B608    ; jmp



tbl_B62F:
- D 1 - - - 0x00363F 00:B62F: 01        .byte $01, $11, $20   ; 00 
- D 1 - - - 0x003642 00:B632: 01        .byte $01, $31, $11   ; 01 
- D 1 - - - 0x003645 00:B635: 01        .byte $01, $11, $31   ; 02 
- D 1 - - - 0x003648 00:B638: 01        .byte $01, $20, $11   ; 03 
- D 1 - - - 0x00364B 00:B63B: FF        .byte $FF   ; 04 end token



bra_B63C:
C - - - - - 0x00364C 00:B63C: 38        SEC
C - - - - - 0x00364D 00:B63D: 60        RTS



sub_B63E:
sub_0x00364E:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x00364E 00:B63E: A0 00     LDY #$00
C - - - - - 0x003650 00:B640: A5 C9     LDA ram_00C9
C - - - - - 0x003652 00:B642: C9 10     CMP #$10
C - - - - - 0x003654 00:B644: F0 F6     BEQ bra_B63C
C - - - - - 0x003656 00:B646: 4A        LSR
C - - - - - 0x003657 00:B647: 90 02     BCC bra_B64B
C - - - - - 0x003659 00:B649: A0 05     LDY #$05
bra_B64B:
C - - - - - 0x00365B 00:B64B: 85 03     STA ram_0003_t003
C - - - - - 0x00365D 00:B64D: B9 E0 B6  LDA tbl_B6E0,Y
C - - - - - 0x003660 00:B650: 85 62     STA ram_ppu_address_hi
C - - - - - 0x003662 00:B652: B9 E1 B6  LDA tbl_B6E0 + $01,Y
C - - - - - 0x003665 00:B655: 85 61     STA ram_ppu_address_lo
C - - - - - 0x003667 00:B657: B9 E2 B6  LDA tbl_B6E0 + $02,Y
C - - - - - 0x00366A 00:B65A: 85 0F     STA ram_000F_t00C_ppu_addr_hi
C - - - - - 0x00366C 00:B65C: B9 E3 B6  LDA tbl_B6E0 + $03,Y
C - - - - - 0x00366F 00:B65F: 85 0E     STA ram_000E_t002_ppu_addr_lo
C - - - - - 0x003671 00:B661: B9 E4 B6  LDA tbl_B6E0 + $04,Y
C - - - - - 0x003674 00:B664: 85 02     STA ram_0002_t017
C - - - - - 0x003676 00:B666: A5 03     LDA ram_0003_t003
; * 04
C - - - - - 0x003678 00:B668: 0A        ASL
C - - - - - 0x003679 00:B669: 0A        ASL
C - - - - - 0x00367A 00:B66A: A2 61     LDX #< ram_ppu_address_lo
C - - - - - 0x00367C 00:B66C: 20 99 E8  JSR sub_0x03E8A9_increase_indirect_address
C - - - - - 0x00367F 00:B66F: A5 03     LDA ram_0003_t003
C - - - - - 0x003681 00:B671: A2 0E     LDX #< ram_000E_t002_ppu_addr_lo
C - - - - - 0x003683 00:B673: 20 99 E8  JSR sub_0x03E8A9_increase_indirect_address
C - - - - - 0x003686 00:B676: A9 03     LDA #$03
C - - - - - 0x003688 00:B678: 85 03     STA ram_0003_t004
bra_B67A_loop:
C - - - - - 0x00368A 00:B67A: A5 02     LDA ram_0002_t017
C - - - - - 0x00368C 00:B67C: 0A        ASL
C - - - - - 0x00368D 00:B67D: A8        TAY
C - - - - - 0x00368E 00:B67E: B9 EA B6  LDA tbl_B6EA,Y
C - - - - - 0x003691 00:B681: 85 08     STA ram_0008_t029_data
C - - - - - 0x003693 00:B683: B9 EB B6  LDA tbl_B6EA + $01,Y
C - - - - - 0x003696 00:B686: 85 09     STA ram_0008_t029_data + $01
C - - - - - 0x003698 00:B688: A5 02     LDA ram_0002_t017
C - - - - - 0x00369A 00:B68A: C9 05     CMP #$05
C - - - - - 0x00369C 00:B68C: F0 0B     BEQ bra_B699
C - - - - - 0x00369E 00:B68E: A9 04     LDA #$04
C - - - - - 0x0036A0 00:B690: 85 01     STA ram_0001_t025
C - - - - - 0x0036A2 00:B692: 20 C6 E8  JSR sub_0x03E8D6_set_buffer_mode_04
bra_B695:
C - - - - - 0x0036A5 00:B695: A0 00     LDY #$00
C - - - - - 0x0036A7 00:B697: F0 0C     BEQ bra_B6A5    ; jmp
bra_B699:
C - - - - - 0x0036A9 00:B699: 20 C0 E8  JSR sub_0x03E8D0_set_buffer_mode_05
C - - - - - 0x0036AC 00:B69C: A9 02     LDA #$02
C - - - - - 0x0036AE 00:B69E: 85 01     STA ram_0001_t025
C - - - - - 0x0036B0 00:B6A0: D0 F3     BNE bra_B695    ; jmp
bra_B6A2_loop:
C - - - - - 0x0036B2 00:B6A2: 20 BB E8  JSR sub_0x03E8CB
bra_B6A5:
C - - - - - 0x0036B5 00:B6A5: A9 04     LDA #$04
C - - - - - 0x0036B7 00:B6A7: 85 00     STA ram_0000_t068
bra_B6A9_loop:
C - - - - - 0x0036B9 00:B6A9: B1 08     LDA (ram_0008_t029_data),Y
C - - - - - 0x0036BB 00:B6AB: 20 16 ED  JSR sub_0x03ED26_write_byte_to_buffer_X
C - - - - - 0x0036BE 00:B6AE: C8        INY
C - - - - - 0x0036BF 00:B6AF: C6 00     DEC ram_0000_t068
C - - - - - 0x0036C1 00:B6B1: D0 F6     BNE bra_B6A9_loop
C - - - - - 0x0036C3 00:B6B3: A9 20     LDA #$20
C - - - - - 0x0036C5 00:B6B5: A2 61     LDX #< ram_ppu_address_lo
C - - - - - 0x0036C7 00:B6B7: 20 99 E8  JSR sub_0x03E8A9_increase_indirect_address
C - - - - - 0x0036CA 00:B6BA: C6 01     DEC ram_0001_t025
C - - - - - 0x0036CC 00:B6BC: D0 E4     BNE bra_B6A2_loop
C - - - - - 0x0036CE 00:B6BE: A6 1D     LDX ram_index_ppu_buffer
C - - - - - 0x0036D0 00:B6C0: A5 0E     LDA ram_000E_t002_ppu_addr_lo
C - - - - - 0x0036D2 00:B6C2: 20 16 ED  JSR sub_0x03ED26_write_byte_to_buffer_X
C - - - - - 0x0036D5 00:B6C5: A5 0F     LDA ram_000F_t00C_ppu_addr_hi
C - - - - - 0x0036D7 00:B6C7: 20 16 ED  JSR sub_0x03ED26_write_byte_to_buffer_X
C - - - - - 0x0036DA 00:B6CA: A9 55     LDA #$55
C - - - - - 0x0036DC 00:B6CC: 20 16 ED  JSR sub_0x03ED26_write_byte_to_buffer_X
C - - - - - 0x0036DF 00:B6CF: A9 08     LDA #$08
C - - - - - 0x0036E1 00:B6D1: A2 0E     LDX #< ram_000E_t002_ppu_addr_lo
C - - - - - 0x0036E3 00:B6D3: 20 99 E8  JSR sub_0x03E8A9_increase_indirect_address
C - - - - - 0x0036E6 00:B6D6: E6 02     INC ram_0002_t017
C - - - - - 0x0036E8 00:B6D8: C6 03     DEC ram_0003_t004
C - - - - - 0x0036EA 00:B6DA: D0 9E     BNE bra_B67A_loop
C - - - - - 0x0036EC 00:B6DC: E6 C9     INC ram_00C9
C - - - - - 0x0036EE 00:B6DE: 18        CLC
C - - - - - 0x0036EF 00:B6DF: 60        RTS



tbl_B6E0:
; 00 
- D 1 - - - 0x0036F0 00:B6E0: 29 00     .dbyt $2900 ; ppu address
- D 1 - - - 0x0036F2 00:B6E2: 2B        .byte $2B   ; tile
- D 1 - - - 0x0036F3 00:B6E3: D0        .byte $D0   ; tile
- D 1 - - - 0x0036F4 00:B6E4: 00        .byte $00   ; index for 0x0036FA
; 05 
- D 1 - - - 0x0036F5 00:B6E5: 2A 80     .dbyt $2A80 ; ppu address
- D 1 - - - 0x0036F7 00:B6E7: 2B        .byte $2B   ; tile
- D 1 - - - 0x0036F8 00:B6E8: E8        .byte $E8   ; tile
- D 1 - - - 0x0036F9 00:B6E9: 03        .byte $03   ; index for 0x0036FA



tbl_B6EA:
; 00 
- D 1 - - - 0x0036FA 00:B6EA: F6 B6     .word _off017_B6F6_00
- D 1 - - - 0x0036FC 00:B6EC: 06 B7     .word _off017_B706_01
- D 1 - - - 0x0036FE 00:B6EE: 06 B7     .word _off017_B706_02
; 03 
- D 1 - - - 0x003700 00:B6F0: 06 B7     .word _off017_B706_03
- D 1 - - - 0x003702 00:B6F2: 06 B7     .word _off017_B706_04
- D 1 - - - 0x003704 00:B6F4: 06 B7     .word _off017_B706_05



_off017_B6F6_00:
- D 1 - I - 0x003706 00:B6F6: 8B        .byte $8B, $8B, $8B, $8B   ; 
- D 1 - I - 0x00370A 00:B6FA: 9B        .byte $9B, $3D, $9B, $3D   ; 
- D 1 - I - 0x00370E 00:B6FE: 3D        .byte $3D, $9B, $3D, $9B   ; 
- D 1 - I - 0x003712 00:B702: 3D        .byte $3D, $3D, $3D, $3D   ; 



_off017_B706_01:
_off017_B706_02:
_off017_B706_03:
_off017_B706_04:
_off017_B706_05:
- D 1 - I - 0x003716 00:B706: 3D        .byte $3D, $3D, $3D, $3D   ; 
- D 1 - I - 0x00371A 00:B70A: 3D        .byte $3D, $3D, $3D, $3D   ; 
- D 1 - I - 0x00371E 00:B70E: 3D        .byte $3D, $3D, $3D, $3D   ; 
- D 1 - I - 0x003722 00:B712: 3D        .byte $3D, $3D, $3D, $3D   ; 



sub_B716:
C - - - - - 0x003726 00:B716: 48        PHA
C - - - - - 0x003727 00:B717: A9 00     LDA #$00
C - - - - - 0x003729 00:B719: 9D 4E 05  STA ram_obj_id,X
C - - - - - 0x00372C 00:B71C: 68        PLA
sub_B71D:
C - - - - - 0x00372D 00:B71D: 8D 81 07  STA ram_0781
C - - - - - 0x003730 00:B720: A0 00     LDY #$00
C - - - - - 0x003732 00:B722: 8C 82 07  STY ram_0782
C - - - - - 0x003735 00:B725: C8        INY ; 01
C - - - - - 0x003736 00:B726: 8C 80 07  STY ram_0780
C - - - - - 0x003739 00:B729: 60        RTS



sub_B72A:
C - - - - - 0x00373A 00:B72A: AD 83 07  LDA ram_0783
C - - - - - 0x00373D 00:B72D: 85 28     STA ram_btn_hold
C - - - - - 0x00373F 00:B72F: 85 26     STA ram_btn_press
C - - - - - 0x003741 00:B731: CE 80 07  DEC ram_0780
C - - - - - 0x003744 00:B734: F0 01     BEQ bra_B737
C - - - - - 0x003746 00:B736: 60        RTS
bra_B737:
C - - - - - 0x003747 00:B737: AD 81 07  LDA ram_0781
C - - - - - 0x00374A 00:B73A: 0A        ASL
C - - - - - 0x00374B 00:B73B: A8        TAY
C - - - - - 0x00374C 00:B73C: B9 71 B7  LDA tbl_B771,Y
C - - - - - 0x00374F 00:B73F: 85 08     STA ram_0008_t02A_data
C - - - - - 0x003751 00:B741: B9 72 B7  LDA tbl_B771 + $01,Y
C - - - - - 0x003754 00:B744: 85 09     STA ram_0008_t02A_data + $01
C - - - - - 0x003756 00:B746: AD 82 07  LDA ram_0782
C - - - - - 0x003759 00:B749: 0A        ASL
C - - - - - 0x00375A 00:B74A: A8        TAY
C - - - - - 0x00375B 00:B74B: B1 08     LDA (ram_0008_t02A_data),Y
C - - - - - 0x00375D 00:B74D: 8D 83 07  STA ram_0783
C - - - - - 0x003760 00:B750: C8        INY
C - - - - - 0x003761 00:B751: B1 08     LDA (ram_0008_t02A_data),Y
C - - - - - 0x003763 00:B753: 8D 80 07  STA ram_0780
C - - - - - 0x003766 00:B756: EE 82 07  INC ram_0782
C - - - - - 0x003769 00:B759: 60        RTS



tbl_B75A:
- D 1 - - - 0x00376A 00:B75A: 5E B7     .word off_B75E_00
- D 1 - - - 0x00376C 00:B75C: 6E B7     .word off_B76E_01



off_B75E_00:
;                                              +--------------- pos_X_hi
;                                              |    +---------- pos_Y_hi
;                                              |    |    +----- obj_id
;                                              |    |    |
- D 1 - I - 0x00376E 00:B75E: 20        .byte $20, $80, $01   ; 
- D 1 - I - 0x003771 00:B761: 40        .byte $40, $A0, $02   ; 
- D 1 - I - 0x003774 00:B764: 90        .byte $90, $B0, $03   ; 
- D 1 - I - 0x003777 00:B767: BE        .byte $BE, $90, $04   ; 
- D 1 - I - 0x00377A 00:B76A: D0        .byte $D0, $70, $05   ; 


; bzk garbage
- - - - - - 0x00377D 00:B76D: FF        .byte $FF   ; 



off_B76E_01:
;                                              +--------------- pos_X_hi
;                                              |    +---------- pos_Y_hi
;                                              |    |    +----- obj_id
;                                              |    |    |
- D 1 - I - 0x00377E 00:B76E: E4        .byte $E4, $70, $07   ; 



tbl_B771:
- D 1 - - - 0x003781 00:B771: 81 B7     .word _off018_B781_01
- - - - - - 0x003783 00:B773: 83 B7     .word _off018_B783_02
- - - - - - 0x003785 00:B775: 87 B7     .word _off018_B787_03
- - - - - - 0x003787 00:B777: 8B B7     .word _off018_B78B_04
- D 1 - - - 0x003789 00:B779: 93 B7     .word _off018_B793_05
- - - - - - 0x00378B 00:B77B: 9B B7     .word _off018_B79B_06
- D 1 - - - 0x00378D 00:B77D: 81 B7     .word _off018_B781_07
- D 1 - - - 0x00378F 00:B77F: 87 B7     .word _off018_B787_08



_off018_B781_01:
_off018_B781_07:
- D 1 - I - 0x003791 00:B781: 01        .byte $01, $FF   ; 00 



_off018_B783_02:
- - - - - - 0x003793 00:B783: 01        .byte $01, $01   ; 00 
- - - - - - 0x003795 00:B785: 01        .byte $01, $FF   ; 01 



_off018_B787_03:
_off018_B787_08:
- D 1 - I - 0x003797 00:B787: 81        .byte $81, $04   ; 00 
- D 1 - I - 0x003799 00:B789: 01        .byte $01, $FF   ; 01 



_off018_B78B_04:
- - - - - - 0x00379B 00:B78B: 81        .byte $81, $08   ; 00 
- - - - - - 0x00379D 00:B78D: 01        .byte $01, $10   ; 01 
- - - - - - 0x00379F 00:B78F: 81        .byte $81, $04   ; 02 
- - - - - - 0x0037A1 00:B791: 01        .byte $01, $FF   ; 03 



_off018_B793_05:
- D 1 - I - 0x0037A3 00:B793: 81        .byte $81, $08   ; 00 
- D 1 - I - 0x0037A5 00:B795: 01        .byte $01, $20   ; 01 
- - - - - - 0x0037A7 00:B797: 81        .byte $81, $04   ; 02 
- - - - - - 0x0037A9 00:B799: 01        .byte $01, $FF   ; 03 



_off018_B79B_06:
- - - - - - 0x0037AB 00:B79B: 00        .byte $00, $FF   ; 00 



sub_B79D:
C - - - - - 0x0037AD 00:B79D: A0 02     LDY #$02
; bzk optimize, Y is always 02
C - - - - - 0x0037AF 00:B79F: B9 5A B7  LDA tbl_B75A,Y
C - - - - - 0x0037B2 00:B7A2: 85 08     STA ram_0008_t02B_data
C - - - - - 0x0037B4 00:B7A4: B9 5B B7  LDA tbl_B75A + $01,Y
C - - - - - 0x0037B7 00:B7A7: 85 09     STA ram_0008_t02B_data + $01
C - - - - - 0x0037B9 00:B7A9: A0 00     LDY #$00
C - - - - - 0x0037BB 00:B7AB: A2 01     LDX #$01
C - - - - - 0x0037BD 00:B7AD: 4C C9 B7  JMP loc_B7C9



sub_B7B0:
C - - - - - 0x0037C0 00:B7B0: A0 00     LDY #$00
; bzk optimize, Y is always 00
C - - - - - 0x0037C2 00:B7B2: B9 5A B7  LDA tbl_B75A,Y
C - - - - - 0x0037C5 00:B7B5: 85 08     STA ram_0008_t02B_data
C - - - - - 0x0037C7 00:B7B7: B9 5B B7  LDA tbl_B75A + $01,Y
C - - - - - 0x0037CA 00:B7BA: 85 09     STA ram_0008_t02B_data + $01
C - - - - - 0x0037CC 00:B7BC: A0 00     LDY #$00
C - - - - - 0x0037CE 00:B7BE: A2 01     LDX #$01
bra_B7C0_loop:
C - - - - - 0x0037D0 00:B7C0: 20 C9 B7  JSR sub_B7C9
C - - - - - 0x0037D3 00:B7C3: E8        INX
C - - - - - 0x0037D4 00:B7C4: E0 06     CPX #$06
C - - - - - 0x0037D6 00:B7C6: 90 F8     BCC bra_B7C0_loop
C - - - - - 0x0037D8 00:B7C8: 60        RTS



loc_B7C9:
sub_B7C9:
C D 1 - - - 0x0037D9 00:B7C9: A9 00     LDA #con_obj_type_00
C - - - - - 0x0037DB 00:B7CB: 9D 8C 04  STA ram_obj_type,X
; bzk optimize, 2 redundant LDAs
C - - - - - 0x0037DE 00:B7CE: A9 00     LDA #$00
C - - - - - 0x0037E0 00:B7D0: 9D 00 04  STA ram_obj_anim_id,X
C - - - - - 0x0037E3 00:B7D3: A9 00     LDA #$00
C - - - - - 0x0037E5 00:B7D5: 9D 54 04  STA ram_0454_obj,X
C - - - - - 0x0037E8 00:B7D8: 9D 70 04  STA ram_obj_flags,X ; con_obj_flag_00
C - - - - - 0x0037EB 00:B7DB: B1 08     LDA (ram_0008_t02B_data),Y
C - - - - - 0x0037ED 00:B7DD: 9D 38 04  STA ram_obj_pos_X_hi,X
C - - - - - 0x0037F0 00:B7E0: C8        INY
C - - - - - 0x0037F1 00:B7E1: B1 08     LDA (ram_0008_t02B_data),Y
C - - - - - 0x0037F3 00:B7E3: 9D 1C 04  STA ram_obj_pos_Y_hi,X
C - - - - - 0x0037F6 00:B7E6: C8        INY
C - - - - - 0x0037F7 00:B7E7: B1 08     LDA (ram_0008_t02B_data),Y
C - - - - - 0x0037F9 00:B7E9: 9D 4E 05  STA ram_obj_id,X
C - - - - - 0x0037FC 00:B7EC: C8        INY
C - - - - - 0x0037FD 00:B7ED: 60        RTS



sub_B7EE:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x0037FE 00:B7EE: AD 65 05  LDA ram_plr_state
C - - - - - 0x003801 00:B7F1: C9 02     CMP #con_plr_state_idle_on_ground
C - - - - - 0x003803 00:B7F3: F0 05     BEQ bra_B7FA
C - - - - - 0x003805 00:B7F5: C9 04     CMP #con_plr_state_move_on_ground
C - - - - - 0x003807 00:B7F7: F0 01     BEQ bra_B7FA
C - - - - - 0x003809 00:B7F9: 60        RTS
bra_B7FA:
C - - - - - 0x00380A 00:B7FA: A2 01     LDX #$01
bra_B7FC_loop:
C - - - - - 0x00380C 00:B7FC: BD 4E 05  LDA ram_obj_id,X
C - - - - - 0x00380F 00:B7FF: D0 06     BNE bra_B807
bra_B801_loop:
C - - - - - 0x003811 00:B801: E8        INX
C - - - - - 0x003812 00:B802: E0 06     CPX #$06
C - - - - - 0x003814 00:B804: 90 F6     BCC bra_B7FC_loop
C - - - - - 0x003816 00:B806: 60        RTS
bra_B807:
C - - - - - 0x003817 00:B807: BD 38 04  LDA ram_obj_pos_X_hi,X
C - - - - - 0x00381A 00:B80A: 38        SEC
C - - - - - 0x00381B 00:B80B: ED 38 04  SBC ram_plr_pos_X_hi
C - - - - - 0x00381E 00:B80E: B0 05     BCS bra_B815
C - - - - - 0x003820 00:B810: 49 FF     EOR #$FF
C - - - - - 0x003822 00:B812: 18        CLC
C - - - - - 0x003823 00:B813: 69 01     ADC #$01
bra_B815:
C - - - - - 0x003825 00:B815: C9 08     CMP #$08
C - - - - - 0x003827 00:B817: B0 E8     BCS bra_B801_loop
C - - - - - 0x003829 00:B819: BD 1C 04  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x00382C 00:B81C: 38        SEC
C - - - - - 0x00382D 00:B81D: ED 1C 04  SBC ram_plr_pos_Y_hi
C - - - - - 0x003830 00:B820: B0 05     BCS bra_B827
- - - - - - 0x003832 00:B822: 49 FF     EOR #$FF
- - - - - - 0x003834 00:B824: 18        CLC
- - - - - - 0x003835 00:B825: 69 01     ADC #$01
bra_B827:
C - - - - - 0x003837 00:B827: C9 08     CMP #$08
C - - - - - 0x003839 00:B829: B0 D6     BCS bra_B801_loop
C - - - - - 0x00383B 00:B82B: 60        RTS



sub_B82C:
loc_B82C:
C D 1 - - - 0x00383C 00:B82C: A5 1A     LDA ram_frm_cnt
C - - - - - 0x00383E 00:B82E: 29 0F     AND #$0F
C - - - - - 0x003840 00:B830: D0 13     BNE bra_B845
C - - - - - 0x003842 00:B832: A9 3D     LDA #con_sound_3D
C - - - - - 0x003844 00:B834: 20 5F E2  JSR sub_0x03E26F_play_sound
C - - - - - 0x003847 00:B837: 4C 45 B8  JMP loc_B845



sub_B83A:
loc_B83A:
C D 1 - - - 0x00384A 00:B83A: A5 1A     LDA ram_frm_cnt
C - - - - - 0x00384C 00:B83C: 29 0F     AND #$0F
C - - - - - 0x00384E 00:B83E: D0 05     BNE bra_B845
C - - - - - 0x003850 00:B840: A9 3B     LDA #con_sound_3B
C - - - - - 0x003852 00:B842: 20 5F E2  JSR sub_0x03E26F_play_sound
bra_B845:
loc_B845:
C D 1 - - - 0x003855 00:B845: A5 1A     LDA ram_frm_cnt
C - - - - - 0x003857 00:B847: 29 02     AND #$02
C - - - - - 0x003859 00:B849: A8        TAY
C - - - - - 0x00385A 00:B84A: B9 55 B8  LDA tbl_B855,Y
C - - - - - 0x00385D 00:B84D: 85 57     STA ram_cam_pos_hi
C - - - - - 0x00385F 00:B84F: B9 56 B8  LDA tbl_B855 + $01,Y
C - - - - - 0x003862 00:B852: 85 56     STA ram_cam_pos_lo
C - - - - - 0x003864 00:B854: 60        RTS



tbl_B855:
;                                              +---------- 
;                                              |    +----- 
;                                              |    |
- D 1 - - - 0x003865 00:B855: 02        .byte $02, $01   ; 00 
- D 1 - - - 0x003867 00:B857: 01        .byte $01, $FF   ; 02 



sub_B859:
C - - - - - 0x003869 00:B859: A2 01     LDX #$01
bra_B85B_loop:
C - - - - - 0x00386B 00:B85B: BD D8 05  LDA ram_05D8_obj,X
C - - - - - 0x00386E 00:B85E: D0 0B     BNE bra_B86B
C - - - - - 0x003870 00:B860: A9 00     LDA #$00
C - - - - - 0x003872 00:B862: 9D 00 04  STA ram_obj_anim_id,X
loc_B865_loop:
C D 1 - - - 0x003875 00:B865: E8        INX
C - - - - - 0x003876 00:B866: E0 06     CPX #$06
C - - - - - 0x003878 00:B868: 90 F1     BCC bra_B85B_loop
C - - - - - 0x00387A 00:B86A: 60        RTS
bra_B86B:
C - - - - - 0x00387B 00:B86B: DE D8 05  DEC ram_05D8_obj,X
C - - - - - 0x00387E 00:B86E: A9 40     LDA #$40
C - - - - - 0x003880 00:B870: 18        CLC
C - - - - - 0x003881 00:B871: 7D 37 05  ADC ram_obj_spd_Y_lo,X
C - - - - - 0x003884 00:B874: 9D 37 05  STA ram_obj_spd_Y_lo,X
C - - - - - 0x003887 00:B877: 90 03     BCC bra_B87C_not_overflow
C - - - - - 0x003889 00:B879: FE 20 05  INC ram_obj_spd_Y_hi,X
bra_B87C_not_overflow:
C - - - - - 0x00388C 00:B87C: BD C4 04  LDA ram_obj_pos_X_lo,X
C - - - - - 0x00388F 00:B87F: 18        CLC
C - - - - - 0x003890 00:B880: 7D 09 05  ADC ram_obj_spd_X_lo,X
C - - - - - 0x003893 00:B883: 9D C4 04  STA ram_obj_pos_X_lo,X
C - - - - - 0x003896 00:B886: BD 38 04  LDA ram_obj_pos_X_hi,X
C - - - - - 0x003899 00:B889: 7D F2 04  ADC ram_obj_spd_X_hi,X
C - - - - - 0x00389C 00:B88C: 9D 38 04  STA ram_obj_pos_X_hi,X
C - - - - - 0x00389F 00:B88F: BD DB 04  LDA ram_obj_pos_Y_lo,X
C - - - - - 0x0038A2 00:B892: 18        CLC
C - - - - - 0x0038A3 00:B893: 7D 37 05  ADC ram_obj_spd_Y_lo,X
C - - - - - 0x0038A6 00:B896: 9D DB 04  STA ram_obj_pos_Y_lo,X
C - - - - - 0x0038A9 00:B899: BD 1C 04  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x0038AC 00:B89C: 7D 20 05  ADC ram_obj_spd_Y_hi,X
C - - - - - 0x0038AF 00:B89F: 9D 1C 04  STA ram_obj_pos_Y_hi,X
C - - - - - 0x0038B2 00:B8A2: 4C 65 B8  JMP loc_B865_loop



sub_B8A5:
C - - - - - 0x0038B5 00:B8A5: A2 01     LDX #$01
C - - - - - 0x0038B7 00:B8A7: A0 00     LDY #$00
bra_B8A9_loop:
C - - - - - 0x0038B9 00:B8A9: A9 20     LDA #$20
C - - - - - 0x0038BB 00:B8AB: 9D D8 05  STA ram_05D8_obj,X
C - - - - - 0x0038BE 00:B8AE: A9 0E     LDA #con_obj_type_0E
C - - - - - 0x0038C0 00:B8B0: 9D 8C 04  STA ram_obj_type,X
C - - - - - 0x0038C3 00:B8B3: A9 18     LDA #$18
C - - - - - 0x0038C5 00:B8B5: 9D 00 04  STA ram_obj_anim_id,X
C - - - - - 0x0038C8 00:B8B8: A9 00     LDA #$00
C - - - - - 0x0038CA 00:B8BA: 9D 54 04  STA ram_0454_obj,X
C - - - - - 0x0038CD 00:B8BD: 9D 70 04  STA ram_obj_flags,X ; con_obj_flag_00
C - - - - - 0x0038D0 00:B8C0: B9 F0 B8  LDA tbl_B8F0,Y
C - - - - - 0x0038D3 00:B8C3: 9D F2 04  STA ram_obj_spd_X_hi,X
C - - - - - 0x0038D6 00:B8C6: C8        INY
C - - - - - 0x0038D7 00:B8C7: B9 F0 B8  LDA tbl_B8F0,Y
C - - - - - 0x0038DA 00:B8CA: 9D 09 05  STA ram_obj_spd_X_lo,X
C - - - - - 0x0038DD 00:B8CD: C8        INY
C - - - - - 0x0038DE 00:B8CE: B9 F0 B8  LDA tbl_B8F0,Y
C - - - - - 0x0038E1 00:B8D1: 9D 20 05  STA ram_obj_spd_Y_hi,X
C - - - - - 0x0038E4 00:B8D4: C8        INY
C - - - - - 0x0038E5 00:B8D5: B9 F0 B8  LDA tbl_B8F0,Y
C - - - - - 0x0038E8 00:B8D8: 9D 37 05  STA ram_obj_spd_Y_lo,X
C - - - - - 0x0038EB 00:B8DB: C8        INY
C - - - - - 0x0038EC 00:B8DC: B9 F0 B8  LDA tbl_B8F0,Y
C - - - - - 0x0038EF 00:B8DF: 9D 38 04  STA ram_obj_pos_X_hi,X
C - - - - - 0x0038F2 00:B8E2: C8        INY
C - - - - - 0x0038F3 00:B8E3: B9 F0 B8  LDA tbl_B8F0,Y
C - - - - - 0x0038F6 00:B8E6: 9D 1C 04  STA ram_obj_pos_Y_hi,X
C - - - - - 0x0038F9 00:B8E9: C8        INY
C - - - - - 0x0038FA 00:B8EA: E8        INX
C - - - - - 0x0038FB 00:B8EB: E0 06     CPX #$06
C - - - - - 0x0038FD 00:B8ED: 90 BA     BCC bra_B8A9_loop
C - - - - - 0x0038FF 00:B8EF: 60        RTS



tbl_B8F0:
; 01 
- D 1 - - - 0x003900 00:B8F0: FF 80     .dbyt $FF80 ; spd_X
- D 1 - - - 0x003902 00:B8F2: 00 C0     .dbyt $00C0 ; spd_Y
- D 1 - - - 0x003904 00:B8F4: 80        .byte $80   ; pos_X_hi
- D 1 - - - 0x003905 00:B8F5: 38        .byte $38   ; pos_Y_hi
; 02 
- D 1 - - - 0x003906 00:B8F6: 01 C0     .dbyt $01C0 ; spd_X
- D 1 - - - 0x003908 00:B8F8: 01 40     .dbyt $0140 ; spd_Y
- D 1 - - - 0x00390A 00:B8FA: 78        .byte $78   ; pos_X_hi
- D 1 - - - 0x00390B 00:B8FB: 3C        .byte $3C   ; pos_Y_hi
; 03 
- D 1 - - - 0x00390C 00:B8FC: FE 00     .dbyt $FE00 ; spd_X
- D 1 - - - 0x00390E 00:B8FE: 01 C0     .dbyt $01C0 ; spd_Y
- D 1 - - - 0x003910 00:B900: 90        .byte $90   ; pos_X_hi
- D 1 - - - 0x003911 00:B901: 34        .byte $34   ; pos_Y_hi
; 04 
- D 1 - - - 0x003912 00:B902: 02 40     .dbyt $0240 ; spd_X
- D 1 - - - 0x003914 00:B904: 01 80     .dbyt $0180 ; spd_Y
- D 1 - - - 0x003916 00:B906: 74        .byte $74   ; pos_X_hi
- D 1 - - - 0x003917 00:B907: 40        .byte $40   ; pos_Y_hi
; 05 
- D 1 - - - 0x003918 00:B908: 00 C0     .dbyt $00C0 ; spd_X
- D 1 - - - 0x00391A 00:B90A: 01 40     .dbyt $0140 ; spd_Y
- D 1 - - - 0x00391C 00:B90C: 7C        .byte $7C   ; pos_X_hi
- D 1 - - - 0x00391D 00:B90D: 3C        .byte $3C   ; pos_Y_hi



sub_B90E:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x00391E 00:B90E: CE 84 07  DEC ram_0784
C - - - - - 0x003921 00:B911: F0 02     BEQ bra_B915
C - - - - - 0x003923 00:B913: 18        CLC
C - - - - - 0x003924 00:B914: 60        RTS
bra_B915:
C - - - - - 0x003925 00:B915: 20 90 B9  JSR sub_B990
C - - - - - 0x003928 00:B918: 20 2E B9  JSR sub_B92E
C - - - - - 0x00392B 00:B91B: EE 85 07  INC ram_0785
C - - - - - 0x00392E 00:B91E: AD 85 07  LDA ram_0785
C - - - - - 0x003931 00:B921: C9 0C     CMP #$0C
C - - - - - 0x003933 00:B923: F0 07     BEQ bra_B92C
C - - - - - 0x003935 00:B925: A9 06     LDA #$06
C - - - - - 0x003937 00:B927: 8D 84 07  STA ram_0784
C - - - - - 0x00393A 00:B92A: 18        CLC
C - - - - - 0x00393B 00:B92B: 60        RTS
bra_B92C:
C - - - - - 0x00393C 00:B92C: 38        SEC
C - - - - - 0x00393D 00:B92D: 60        RTS



sub_B92E:
C - - - - - 0x00393E 00:B92E: AD 85 07  LDA ram_0785
C - - - - - 0x003941 00:B931: 0A        ASL
C - - - - - 0x003942 00:B932: A8        TAY
C - - - - - 0x003943 00:B933: B9 12 BA  LDA tbl_BA12_ppu,Y
C - - - - - 0x003946 00:B936: 85 62     STA ram_ppu_address_hi
C - - - - - 0x003948 00:B938: B9 13 BA  LDA tbl_BA12_ppu + $01,Y
C - - - - - 0x00394B 00:B93B: 85 61     STA ram_ppu_address_lo
C - - - - - 0x00394D 00:B93D: 20 B5 E8  JSR sub_0x03E8C5_set_buffer_mode_01
C - - - - - 0x003950 00:B940: AC 85 07  LDY ram_0785
C - - - - - 0x003953 00:B943: C8        INY
C - - - - - 0x003954 00:B944: 98        TYA
C - - - - - 0x003955 00:B945: 29 FE     AND #$FE
C - - - - - 0x003957 00:B947: A8        TAY
C - - - - - 0x003958 00:B948: B9 3A BA  LDA tbl_BA3A,Y
C - - - - - 0x00395B 00:B94B: 85 01     STA ram_0001_t002
C - - - - - 0x00395D 00:B94D: B9 3B BA  LDA tbl_BA3A + $01,Y
C - - - - - 0x003960 00:B950: 85 02     STA ram_0002_t01A
C - - - - - 0x003962 00:B952: AD 2A BA  LDA tbl_BA2A
C - - - - - 0x003965 00:B955: 85 08     STA ram_0008_t02C_data
C - - - - - 0x003967 00:B957: AD 2B BA  LDA tbl_BA2A + $01
C - - - - - 0x00396A 00:B95A: 85 09     STA ram_0008_t02C_data + $01
C - - - - - 0x00396C 00:B95C: 20 77 B9  JSR sub_B977
C - - - - - 0x00396F 00:B95F: A5 02     LDA ram_0002_t01A
C - - - - - 0x003971 00:B961: 85 01     STA ram_0001_t002
C - - - - - 0x003973 00:B963: AD 2C BA  LDA tbl_BA2C
C - - - - - 0x003976 00:B966: 85 08     STA ram_0008_t02C_data
C - - - - - 0x003978 00:B968: AD 2D BA  LDA tbl_BA2C + $01
C - - - - - 0x00397B 00:B96B: 85 09     STA ram_0008_t02C_data + $01
C - - - - - 0x00397D 00:B96D: 20 77 B9  JSR sub_B977
C - - - - - 0x003980 00:B970: 4C DE E8  JMP loc_0x03E8EE_store_index_and_close_buffer



bra_B973:
C - - - - - 0x003983 00:B973: A9 02     LDA #$02
C - - - - - 0x003985 00:B975: D0 09     BNE bra_B980    ; jmp



sub_B977:
C - - - - - 0x003987 00:B977: AC 85 07  LDY ram_0785
C - - - - - 0x00398A 00:B97A: F0 F7     BEQ bra_B973
C - - - - - 0x00398C 00:B97C: C8        INY
C - - - - - 0x00398D 00:B97D: 98        TYA
C - - - - - 0x00398E 00:B97E: 29 01     AND #$01
bra_B980:
C - - - - - 0x003990 00:B980: 0A        ASL
C - - - - - 0x003991 00:B981: A8        TAY
C - - - - - 0x003992 00:B982: B1 08     LDA (ram_0008_t02C_data),Y
C - - - - - 0x003994 00:B984: 25 01     AND ram_0001_t002
C - - - - - 0x003996 00:B986: C8        INY
C - - - - - 0x003997 00:B987: 11 08     ORA (ram_0008_t02C_data),Y
C - - - - - 0x003999 00:B989: 9D 00 03  STA ram_ppu_buffer,X
C - - - - - 0x00399C 00:B98C: E8        INX
C - - - - - 0x00399D 00:B98D: 86 1D     STX ram_index_ppu_buffer
C - - - - - 0x00399F 00:B98F: 60        RTS



sub_B990:
C - - - - - 0x0039A0 00:B990: AD 85 07  LDA ram_0785
C - - - - - 0x0039A3 00:B993: 0A        ASL
C - - - - - 0x0039A4 00:B994: A8        TAY
C - - - - - 0x0039A5 00:B995: B9 FA B9  LDA tbl_B9FA_ppu,Y
C - - - - - 0x0039A8 00:B998: 85 62     STA ram_ppu_address_hi
C - - - - - 0x0039AA 00:B99A: B9 FB B9  LDA tbl_B9FA_ppu + $01,Y
C - - - - - 0x0039AD 00:B99D: 85 61     STA ram_ppu_address_lo
C - - - - - 0x0039AF 00:B99F: 20 B5 E8  JSR sub_0x03E8C5_set_buffer_mode_01
C - - - - - 0x0039B2 00:B9A2: AD 85 07  LDA ram_0785
C - - - - - 0x0039B5 00:B9A5: D0 04     BNE bra_B9AB
C - - - - - 0x0039B7 00:B9A7: A0 08     LDY #$08
C - - - - - 0x0039B9 00:B9A9: D0 0A     BNE bra_B9B5    ; jmp
bra_B9AB:
C - - - - - 0x0039BB 00:B9AB: C9 0B     CMP #$0B
C - - - - - 0x0039BD 00:B9AD: D0 04     BNE bra_B9B3
C - - - - - 0x0039BF 00:B9AF: A0 11     LDY #$11
C - - - - - 0x0039C1 00:B9B1: D0 02     BNE bra_B9B5    ; jmp
bra_B9B3:
C - - - - - 0x0039C3 00:B9B3: A0 00     LDY #$00
bra_B9B5:
loc_B9B5_loop:
C D 1 - - - 0x0039C5 00:B9B5: A9 04     LDA #$04
C - - - - - 0x0039C7 00:B9B7: 85 00     STA ram_0000_t067
bra_B9B9_loop:
C - - - - - 0x0039C9 00:B9B9: B9 E0 B9  LDA tbl_B9E0,Y
C - - - - - 0x0039CC 00:B9BC: C9 FF     CMP #$FF
C - - - - - 0x0039CE 00:B9BE: F0 1D     BEQ bra_B9DD_FF
C - - - - - 0x0039D0 00:B9C0: 9D 00 03  STA ram_ppu_buffer,X
C - - - - - 0x0039D3 00:B9C3: C8        INY
C - - - - - 0x0039D4 00:B9C4: E8        INX
C - - - - - 0x0039D5 00:B9C5: C6 00     DEC ram_0000_t067
C - - - - - 0x0039D7 00:B9C7: D0 F0     BNE bra_B9B9_loop
C - - - - - 0x0039D9 00:B9C9: 20 DE E8  JSR sub_0x03E8EE_store_index_and_close_buffer
C - - - - - 0x0039DC 00:B9CC: A9 20     LDA #$20
C - - - - - 0x0039DE 00:B9CE: 18        CLC
C - - - - - 0x0039DF 00:B9CF: 65 61     ADC ram_ppu_address_lo
C - - - - - 0x0039E1 00:B9D1: 85 61     STA ram_ppu_address_lo
C - - - - - 0x0039E3 00:B9D3: 90 02     BCC bra_B9D7_not_overflow
C - - - - - 0x0039E5 00:B9D5: E6 62     INC ram_ppu_address_hi
bra_B9D7_not_overflow:
C - - - - - 0x0039E7 00:B9D7: 20 B5 E8  JSR sub_0x03E8C5_set_buffer_mode_01
C - - - - - 0x0039EA 00:B9DA: 4C B5 B9  JMP loc_B9B5_loop
bra_B9DD_FF:
C - - - - - 0x0039ED 00:B9DD: 4C DE E8  JMP loc_0x03E8EE_store_index_and_close_buffer



tbl_B9E0:
; 00 
- D 1 - - - 0x0039F0 00:B9E0: 55        .byte $55, $79, $78, $55   ; 
- D 1 - - - 0x0039F4 00:B9E4: 5A        .byte $5A, $5B, $5B, $78   ; 
; 08 
- D 1 - - - 0x0039F8 00:B9E8: 4C        .byte $4C, $5C, $6C, $7C   ; also continue of 00?
- D 1 - - - 0x0039FC 00:B9EC: 4D        .byte $4D, $5D, $6D, $7D   ; 
- D 1 - - - 0x003A00 00:B9F0: FF        .byte $FF   ; end token
; 11 
- D 1 - - - 0x003A01 00:B9F1: 55        .byte $55, $79, $78, $55   ; 
- D 1 - - - 0x003A05 00:B9F5: 5A        .byte $5A, $5B, $5B, $78   ; 
- D 1 - - - 0x003A09 00:B9F9: FF        .byte $FF   ; end token



tbl_B9FA_ppu:
- D 1 - - - 0x003A0A 00:B9FA: 20 CE     .dbyt $20CE ; 00 
- D 1 - - - 0x003A0C 00:B9FC: 20 CE     .dbyt $20CE ; 01 
- D 1 - - - 0x003A0E 00:B9FE: 21 0E     .dbyt $210E ; 02 
- D 1 - - - 0x003A10 00:BA00: 21 4E     .dbyt $214E ; 03 
- D 1 - - - 0x003A12 00:BA02: 21 8E     .dbyt $218E ; 04 
- D 1 - - - 0x003A14 00:BA04: 21 CE     .dbyt $21CE ; 05 
- D 1 - - - 0x003A16 00:BA06: 22 0E     .dbyt $220E ; 06 
- D 1 - - - 0x003A18 00:BA08: 22 4E     .dbyt $224E ; 07 
- D 1 - - - 0x003A1A 00:BA0A: 22 8E     .dbyt $228E ; 08 
- D 1 - - - 0x003A1C 00:BA0C: 22 CE     .dbyt $22CE ; 09 
- D 1 - - - 0x003A1E 00:BA0E: 23 0E     .dbyt $230E ; 0A 
- D 1 - - - 0x003A20 00:BA10: 23 4E     .dbyt $234E ; 0B 



tbl_BA12_ppu:
- D 1 - - - 0x003A22 00:BA12: 23 CB     .dbyt $23CB ; 00 
- D 1 - - - 0x003A24 00:BA14: 23 D3     .dbyt $23D3 ; 01 
- D 1 - - - 0x003A26 00:BA16: 23 D3     .dbyt $23D3 ; 02 
- D 1 - - - 0x003A28 00:BA18: 23 DB     .dbyt $23DB ; 03 
- D 1 - - - 0x003A2A 00:BA1A: 23 DB     .dbyt $23DB ; 04 
- D 1 - - - 0x003A2C 00:BA1C: 23 E3     .dbyt $23E3 ; 05 
- D 1 - - - 0x003A2E 00:BA1E: 23 E3     .dbyt $23E3 ; 06 
- D 1 - - - 0x003A30 00:BA20: 23 EB     .dbyt $23EB ; 07 
- D 1 - - - 0x003A32 00:BA22: 23 EB     .dbyt $23EB ; 08 
- D 1 - - - 0x003A34 00:BA24: 23 F3     .dbyt $23F3 ; 09 
- D 1 - - - 0x003A36 00:BA26: 23 F3     .dbyt $23F3 ; 0A 
- D 1 - - - 0x003A38 00:BA28: FF FF     .dbyt $FFFF ; 0B 



tbl_BA2A:
; bzk optimize
- D 1 - - - 0x003A3A 00:BA2A: 2E BA     .word tbl_BA2E



tbl_BA2C:
; bzk optimize
- D 1 - - - 0x003A3C 00:BA2C: 34 BA     .word tbl_BA34



tbl_BA2E:
; nametable attributes?
- D 1 - I - 0x003A3E 00:BA2E: F3        .byte $F3   ; 
- D 1 - I - 0x003A3F 00:BA2F: 04        .byte $04   ; 
- D 1 - I - 0x003A40 00:BA30: 33        .byte $33   ; 
- D 1 - I - 0x003A41 00:BA31: 44        .byte $44   ; 
- D 1 - I - 0x003A42 00:BA32: 33        .byte $33   ; 
- D 1 - I - 0x003A43 00:BA33: 40        .byte $40   ; 



tbl_BA34:
; nametable attributes?
- D 1 - I - 0x003A44 00:BA34: FC        .byte $FC   ; 
- D 1 - I - 0x003A45 00:BA35: 01        .byte $01   ; 
- D 1 - I - 0x003A46 00:BA36: CC        .byte $CC   ; 
- D 1 - I - 0x003A47 00:BA37: 11        .byte $11   ; 
- D 1 - I - 0x003A48 00:BA38: CC        .byte $CC   ; 
- D 1 - I - 0x003A49 00:BA39: 10        .byte $10   ; 



tbl_BA3A:
;                                              +---------- 
;                                              |    +----- 
;                                              |    |
- D 1 - - - 0x003A4A 00:BA3A: A0        .byte $A0, $A0   ; 00 
- D 1 - - - 0x003A4C 00:BA3C: 2A        .byte $2A, $8A   ; 02 
- D 1 - - - 0x003A4E 00:BA3E: BB        .byte $BB, $E0   ; 04 
- D 1 - - - 0x003A50 00:BA40: BA        .byte $BA, $EA   ; 06 
- D 1 - - - 0x003A52 00:BA42: 0A        .byte $0A, $0A   ; 08 
- D 1 - - - 0x003A54 00:BA44: 00        .byte $00, $00   ; 0A 
; bzk bug, table keeps reading 2 bytes of code from 0x003A56 as 0C index



sub_0x003A56:
C D 1 - - - 0x003A56 00:BA46: A5 6B     LDA ram_006B_subscript
C - - - - - 0x003A58 00:BA48: 20 6D E8  JSR sub_0x03E87D_jump_to_pointers_after_JSR_A
- D 1 - I - 0x003A5B 00:BA4B: 51 BA     .word ofs_027_BA51_00
- D 1 - I - 0x003A5D 00:BA4D: 59 BA     .word ofs_027_BA59_01
- D 1 - I - 0x003A5F 00:BA4F: 7F BA     .word ofs_027_BA7F_02



ofs_027_BA51_00:
C - - J - - 0x003A61 00:BA51: A9 00     LDA #$00
C - - - - - 0x003A63 00:BA53: 8D 88 07  STA ram_0788
C - - - - - 0x003A66 00:BA56: E6 6B     INC ram_006B_subscript
C - - - - - 0x003A68 00:BA58: 60        RTS



ofs_027_BA59_01:
C - - J - - 0x003A69 00:BA59: A5 1A     LDA ram_frm_cnt
C - - - - - 0x003A6B 00:BA5B: 29 03     AND #$03
C - - - - - 0x003A6D 00:BA5D: F0 01     BEQ bra_BA60
C - - - - - 0x003A6F 00:BA5F: 60        RTS
bra_BA60:
C - - - - - 0x003A70 00:BA60: AC 88 07  LDY ram_0788
C - - - - - 0x003A73 00:BA63: B9 7B BA  LDA tbl_BA7B_background_palette,Y
C - - - - - 0x003A76 00:BA66: 20 E9 EC  JSR sub_0x03ECF9_write_data_to_ppu_buffer
C - - - - - 0x003A79 00:BA69: A9 04     LDA #con_98E4_3F00_0000
C - - - - - 0x003A7B 00:BA6B: 20 E9 EC  JSR sub_0x03ECF9_write_data_to_ppu_buffer
C - - - - - 0x003A7E 00:BA6E: EE 88 07  INC ram_0788
C - - - - - 0x003A81 00:BA71: AD 88 07  LDA ram_0788
C - - - - - 0x003A84 00:BA74: C9 04     CMP #$04
C - - - - - 0x003A86 00:BA76: D0 02     BNE bra_BA7A_RTS
C - - - - - 0x003A88 00:BA78: E6 6B     INC ram_006B_subscript
bra_BA7A_RTS:
C - - - - - 0x003A8A 00:BA7A: 60        RTS



tbl_BA7B_background_palette:
- D 1 - - - 0x003A8B 00:BA7B: 1C        .byte con_98E4_1C_bg_pal   ; 00 
- D 1 - - - 0x003A8C 00:BA7C: 1B        .byte con_98E4_1B_bg_pal   ; 01 
- D 1 - - - 0x003A8D 00:BA7D: 1A        .byte con_98E4_1A_bg_pal   ; 02 
- D 1 - - - 0x003A8E 00:BA7E: 19        .byte con_98E4_19_bg_pal   ; 03 



ofs_027_BA7F_02:
C - - J - - 0x003A8F 00:BA7F: 20 95 BA  JSR sub_BA95
C - - - - - 0x003A92 00:BA82: A5 7D     LDA ram_007D
C - - - - - 0x003A94 00:BA84: 29 0F     AND #$0F
C - - - - - 0x003A96 00:BA86: F0 04     BEQ bra_BA8C
C - - - - - 0x003A98 00:BA88: A9 24     LDA #con_irq_24
C - - - - - 0x003A9A 00:BA8A: D0 02     BNE bra_BA8E    ; jmp
bra_BA8C:
- - - - - - 0x003A9C 00:BA8C: A9 13     LDA #con_irq_13
bra_BA8E:
C - - - - - 0x003A9E 00:BA8E: 85 3F     STA ram_003F_copy_irq_handler
C - - - - - 0x003AA0 00:BA90: A9 03     LDA #con_002A_03
C - - - - - 0x003AA2 00:BA92: 85 2A     STA ram_002A_script
C - - - - - 0x003AA4 00:BA94: 60        RTS



sub_BA95:
C - - - - - 0x003AA5 00:BA95: 20 DA BD  JSR sub_BDDA
C - - - - - 0x003AA8 00:BA98: A0 00     LDY #$00
C - - - - - 0x003AAA 00:BA9A: B1 08     LDA (ram_0008_t02D_data),Y
C - - - - - 0x003AAC 00:BA9C: 0A        ASL
C - - - - - 0x003AAD 00:BA9D: 38        SEC
C - - - - - 0x003AAE 00:BA9E: E9 02     SBC #$02
C - - - - - 0x003AB0 00:BAA0: 85 0C     STA ram_000C_temp
; bzk optimize, INY
C - - - - - 0x003AB2 00:BAA2: A0 01     LDY #$01
C - - - - - 0x003AB4 00:BAA4: B1 08     LDA (ram_0008_t02D_data),Y
C - - - - - 0x003AB6 00:BAA6: 85 0A     STA ram_000A_t010_data
C - - - - - 0x003AB8 00:BAA8: C8        INY ; 02
C - - - - - 0x003AB9 00:BAA9: B1 08     LDA (ram_0008_t02D_data),Y
C - - - - - 0x003ABB 00:BAAB: 85 0B     STA ram_000A_t010_data + $01
C - - - - - 0x003ABD 00:BAAD: 20 C2 BA  JSR sub_BAC2
C - - - - - 0x003AC0 00:BAB0: A5 0C     LDA ram_000C_temp
C - - - - - 0x003AC2 00:BAB2: 18        CLC
C - - - - - 0x003AC3 00:BAB3: 69 02     ADC #$02
C - - - - - 0x003AC5 00:BAB5: 85 0C     STA ram_000C_temp
C - - - - - 0x003AC7 00:BAB7: A0 03     LDY #$03
C - - - - - 0x003AC9 00:BAB9: B1 08     LDA (ram_0008_t02D_data),Y
C - - - - - 0x003ACB 00:BABB: 85 0A     STA ram_000A_t010_data
C - - - - - 0x003ACD 00:BABD: C8        INY ; 04
C - - - - - 0x003ACE 00:BABE: B1 08     LDA (ram_0008_t02D_data),Y
C - - - - - 0x003AD0 00:BAC0: 85 0B     STA ram_000A_t010_data + $01
sub_BAC2:
C - - - - - 0x003AD2 00:BAC2: A4 59     LDY ram_section_behind
C - - - - - 0x003AD4 00:BAC4: 84 0F     STY ram_000F_t006
C - - - - - 0x003AD6 00:BAC6: A9 0C     LDA #$0C
C - - - - - 0x003AD8 00:BAC8: 85 00     STA ram_0000_t04B
bra_BACA_loop:
C - - - - - 0x003ADA 00:BACA: B1 0A     LDA (ram_000A_t010_data),Y
C - - - - - 0x003ADC 00:BACC: C9 FF     CMP #$FF
C - - - - - 0x003ADE 00:BACE: F0 15     BEQ bra_BAE5_RTS
C - - - - - 0x003AE0 00:BAD0: C9 AA     CMP #$AA
C - - - - - 0x003AE2 00:BAD2: F0 26     BEQ bra_BAFA_AA
C - - - - - 0x003AE4 00:BAD4: C9 0A     CMP #$0A
C - - - - - 0x003AE6 00:BAD6: F0 18     BEQ bra_BAF0_0A
C - - - - - 0x003AE8 00:BAD8: C9 A5     CMP #$A5
C - - - - - 0x003AEA 00:BADA: F0 0A     BEQ bra_BAE6_A5
bra_BADC:
; bzk optimize, INC 000F + LDY 000F
C - - - - - 0x003AEC 00:BADC: A4 0F     LDY ram_000F_t006
C - - - - - 0x003AEE 00:BADE: C8        INY
C - - - - - 0x003AEF 00:BADF: 84 0F     STY ram_000F_t006
C - - - - - 0x003AF1 00:BAE1: C6 00     DEC ram_0000_t04B
C - - - - - 0x003AF3 00:BAE3: D0 E5     BNE bra_BACA_loop
bra_BAE5_RTS:
C - - - - - 0x003AF5 00:BAE5: 60        RTS
bra_BAE6_A5:
C - - - - - 0x003AF6 00:BAE6: 20 07 BB  JSR sub_BB07
C - - - - - 0x003AF9 00:BAE9: A9 00     LDA #$00
C - - - - - 0x003AFB 00:BAEB: 99 E1 06  STA ram_06E1,Y
C - - - - - 0x003AFE 00:BAEE: F0 EC     BEQ bra_BADC    ; jmp
bra_BAF0_0A:
C - - - - - 0x003B00 00:BAF0: 20 07 BB  JSR sub_BB07
C - - - - - 0x003B03 00:BAF3: A9 00     LDA #$00
C - - - - - 0x003B05 00:BAF5: 99 E0 06  STA ram_06E0,Y
C - - - - - 0x003B08 00:BAF8: F0 E2     BEQ bra_BADC    ; jmp
bra_BAFA_AA:
C - - - - - 0x003B0A 00:BAFA: 20 07 BB  JSR sub_BB07
C - - - - - 0x003B0D 00:BAFD: A9 00     LDA #$00
C - - - - - 0x003B0F 00:BAFF: 99 E0 06  STA ram_06E0,Y
C - - - - - 0x003B12 00:BB02: 99 E1 06  STA ram_06E1,Y
C - - - - - 0x003B15 00:BB05: F0 D5     BEQ bra_BADC    ; jmp



sub_BB07:
C - - - - - 0x003B17 00:BB07: 98        TYA
loc_BB08:
C D 1 - - - 0x003B18 00:BB08: C9 0C     CMP #$0C
C - - - - - 0x003B1A 00:BB0A: 90 05     BCC bra_BB11
C - - - - - 0x003B1C 00:BB0C: E9 0C     SBC #$0C
C - - - - - 0x003B1E 00:BB0E: 4C 08 BB  JMP loc_BB08
bra_BB11:
C - - - - - 0x003B21 00:BB11: A8        TAY
C - - - - - 0x003B22 00:BB12: B9 4C FD  LDA tbl_0x03FD5C,Y
C - - - - - 0x003B25 00:BB15: 18        CLC
C - - - - - 0x003B26 00:BB16: 65 0C     ADC ram_000C_temp
C - - - - - 0x003B28 00:BB18: A8        TAY
C - - - - - 0x003B29 00:BB19: 60        RTS



loc_0x003B2A:
C D 1 - - - 0x003B2A 00:BB1A: A5 6B     LDA ram_006B_subscript
C - - - - - 0x003B2C 00:BB1C: 20 6D E8  JSR sub_0x03E87D_jump_to_pointers_after_JSR_A
- D 1 - I - 0x003B2F 00:BB1F: 27 BB     .word ofs_026_BB27_00
- D 1 - I - 0x003B31 00:BB21: 6C BB     .word ofs_026_BB6C_01
- D 1 - I - 0x003B33 00:BB23: E8 BC     .word ofs_026_BCE8_02
- D 1 - I - 0x003B35 00:BB25: F5 BC     .word ofs_026_BCF5_03



ofs_026_BB27_00:
C - - J - - 0x003B37 00:BB27: A9 35     LDA #con_sound_35
C - - - - - 0x003B39 00:BB29: 20 5F E2  JSR sub_0x03E26F_play_sound
C - - - - - 0x003B3C 00:BB2C: AD 38 04  LDA ram_plr_pos_X_hi
C - - - - - 0x003B3F 00:BB2F: 18        CLC
C - - - - - 0x003B40 00:BB30: 65 56     ADC ram_cam_pos_lo
C - - - - - 0x003B42 00:BB32: 85 00     STA ram_0000_t066
C - - - - - 0x003B44 00:BB34: A9 00     LDA #$00
C - - - - - 0x003B46 00:BB36: 65 57     ADC ram_cam_pos_hi
; / 10
C - - - - - 0x003B48 00:BB38: 4A        LSR
C - - - - - 0x003B49 00:BB39: 66 00     ROR ram_0000_t066
C - - - - - 0x003B4B 00:BB3B: 4A        LSR
C - - - - - 0x003B4C 00:BB3C: 66 00     ROR ram_0000_t066
C - - - - - 0x003B4E 00:BB3E: 4A        LSR
C - - - - - 0x003B4F 00:BB3F: 66 00     ROR ram_0000_t066
C - - - - - 0x003B51 00:BB41: 4A        LSR
C - - - - - 0x003B52 00:BB42: 66 00     ROR ram_0000_t066
C - - - - - 0x003B54 00:BB44: A5 00     LDA ram_0000_t066
C - - - - - 0x003B56 00:BB46: 8D 82 07  STA ram_0782
C - - - - - 0x003B59 00:BB49: 8D 84 07  STA ram_0784
C - - - - - 0x003B5C 00:BB4C: 8D 86 07  STA ram_0786
C - - - - - 0x003B5F 00:BB4F: AD 1C 04  LDA ram_plr_pos_Y_hi
; / 20
C - - - - - 0x003B62 00:BB52: 4A        LSR
C - - - - - 0x003B63 00:BB53: 4A        LSR
C - - - - - 0x003B64 00:BB54: 4A        LSR
C - - - - - 0x003B65 00:BB55: 4A        LSR
C - - - - - 0x003B66 00:BB56: 4A        LSR
C - - - - - 0x003B67 00:BB57: 8D 83 07  STA ram_0783
C - - - - - 0x003B6A 00:BB5A: 8D 85 07  STA ram_0785
C - - - - - 0x003B6D 00:BB5D: 8D 87 07  STA ram_0787
C - - - - - 0x003B70 00:BB60: A9 0C     LDA #$0C
C - - - - - 0x003B72 00:BB62: 8D 88 07  STA ram_0788
C - - - - - 0x003B75 00:BB65: A9 01     LDA #con_irq_01
C - - - - - 0x003B77 00:BB67: 85 3F     STA ram_003F_copy_irq_handler
C - - - - - 0x003B79 00:BB69: E6 6B     INC ram_006B_subscript
C - - - - - 0x003B7B 00:BB6B: 60        RTS



ofs_026_BB6C_01:
C - - J - - 0x003B7C 00:BB6C: A5 1A     LDA ram_frm_cnt
C - - - - - 0x003B7E 00:BB6E: 29 01     AND #$01
C - - - - - 0x003B80 00:BB70: F0 07     BEQ bra_BB79_RTS
C - - - - - 0x003B82 00:BB72: CE 88 07  DEC ram_0788
C - - - - - 0x003B85 00:BB75: D0 03     BNE bra_BB7A
C - - - - - 0x003B87 00:BB77: E6 6B     INC ram_006B_subscript
bra_BB79_RTS:
C - - - - - 0x003B89 00:BB79: 60        RTS
bra_BB7A:
C - - - - - 0x003B8A 00:BB7A: 20 E0 BD  JSR sub_BDE0
C - - - - - 0x003B8D 00:BB7D: A2 00     LDX #$00
C - - - - - 0x003B8F 00:BB7F: 20 DE BB  JSR sub_BBDE
C - - - - - 0x003B92 00:BB82: AC 84 07  LDY ram_0784
C - - - - - 0x003B95 00:BB85: 88        DEY
C - - - - - 0x003B96 00:BB86: 98        TYA
C - - - - - 0x003B97 00:BB87: 4A        LSR
C - - - - - 0x003B98 00:BB88: A8        TAY
C - - - - - 0x003B99 00:BB89: B1 0A     LDA (ram_000A_t00F_data),Y
C - - - - - 0x003B9B 00:BB8B: C9 0A     CMP #$0A
C - - - - - 0x003B9D 00:BB8D: F0 1C     BEQ bra_BBAB
C - - - - - 0x003B9F 00:BB8F: C9 A5     CMP #$A5
C - - - - - 0x003BA1 00:BB91: F0 18     BEQ bra_BBAB
C - - - - - 0x003BA3 00:BB93: C9 AA     CMP #$AA
C - - - - - 0x003BA5 00:BB95: F0 14     BEQ bra_BBAB
C - - - - - 0x003BA7 00:BB97: A0 00     LDY #$00
C - - - - - 0x003BA9 00:BB99: AD 85 07  LDA ram_0785
C - - - - - 0x003BAC 00:BB9C: 38        SEC
C - - - - - 0x003BAD 00:BB9D: F1 08     SBC (ram_0008_t02D_data),Y
C - - - - - 0x003BAF 00:BB9F: D0 05     BNE bra_BBA6
C - - - - - 0x003BB1 00:BBA1: EE 85 07  INC ram_0785
C - - - - - 0x003BB4 00:BBA4: D0 08     BNE bra_BBAE
bra_BBA6:
C - - - - - 0x003BB6 00:BBA6: CE 85 07  DEC ram_0785
C - - - - - 0x003BB9 00:BBA9: D0 03     BNE bra_BBAE
bra_BBAB:
C - - - - - 0x003BBB 00:BBAB: CE 84 07  DEC ram_0784
bra_BBAE:
C - - - - - 0x003BBE 00:BBAE: A2 02     LDX #$02
C - - - - - 0x003BC0 00:BBB0: 20 DE BB  JSR sub_BBDE
C - - - - - 0x003BC3 00:BBB3: AC 86 07  LDY ram_0786
C - - - - - 0x003BC6 00:BBB6: C8        INY
C - - - - - 0x003BC7 00:BBB7: 98        TYA
C - - - - - 0x003BC8 00:BBB8: 4A        LSR
C - - - - - 0x003BC9 00:BBB9: A8        TAY
C - - - - - 0x003BCA 00:BBBA: B1 0A     LDA (ram_000A_t00F_data),Y
C - - - - - 0x003BCC 00:BBBC: C9 0A     CMP #$0A
C - - - - - 0x003BCE 00:BBBE: F0 1A     BEQ bra_BBDA
C - - - - - 0x003BD0 00:BBC0: C9 A5     CMP #$A5
C - - - - - 0x003BD2 00:BBC2: F0 16     BEQ bra_BBDA
C - - - - - 0x003BD4 00:BBC4: C9 AA     CMP #$AA
C - - - - - 0x003BD6 00:BBC6: F0 12     BEQ bra_BBDA
C - - - - - 0x003BD8 00:BBC8: A0 00     LDY #$00
C - - - - - 0x003BDA 00:BBCA: AD 87 07  LDA ram_0787
C - - - - - 0x003BDD 00:BBCD: 38        SEC
C - - - - - 0x003BDE 00:BBCE: F1 08     SBC (ram_0008_t02D_data),Y
C - - - - - 0x003BE0 00:BBD0: D0 04     BNE bra_BBD6
C - - - - - 0x003BE2 00:BBD2: EE 87 07  INC ram_0787
C - - - - - 0x003BE5 00:BBD5: 60        RTS
bra_BBD6:
C - - - - - 0x003BE6 00:BBD6: CE 87 07  DEC ram_0787
C - - - - - 0x003BE9 00:BBD9: 60        RTS
bra_BBDA:
C - - - - - 0x003BEA 00:BBDA: EE 86 07  INC ram_0786
C - - - - - 0x003BED 00:BBDD: 60        RTS



sub_BBDE:
; in
    ; X
        ; 00 = 
        ; 02 = 
C - - - - - 0x003BEE 00:BBDE: 86 0F     STX ram_000F_t005
C - - - - - 0x003BF0 00:BBE0: A0 00     LDY #$00
C - - - - - 0x003BF2 00:BBE2: BD 85 07  LDA ram_0785,X
C - - - - - 0x003BF5 00:BBE5: 38        SEC
C - - - - - 0x003BF6 00:BBE6: F1 08     SBC (ram_0008_t02D_data),Y
C - - - - - 0x003BF8 00:BBE8: 0A        ASL
C - - - - - 0x003BF9 00:BBE9: A8        TAY
C - - - - - 0x003BFA 00:BBEA: C8        INY
C - - - - - 0x003BFB 00:BBEB: B1 08     LDA (ram_0008_t02D_data),Y
C - - - - - 0x003BFD 00:BBED: 85 0A     STA ram_000A_t00F_data
C - - - - - 0x003BFF 00:BBEF: C8        INY
C - - - - - 0x003C00 00:BBF0: B1 08     LDA (ram_0008_t02D_data),Y
C - - - - - 0x003C02 00:BBF2: 85 0B     STA ram_000A_t00F_data + $01
C - - - - - 0x003C04 00:BBF4: BD 84 07  LDA ram_0784,X
C - - - - - 0x003C07 00:BBF7: 4A        LSR
C - - - - - 0x003C08 00:BBF8: B0 37     BCS bra_BC31
C - - - - - 0x003C0A 00:BBFA: A8        TAY
C - - - - - 0x003C0B 00:BBFB: A5 0F     LDA ram_000F_t005
C - - - - - 0x003C0D 00:BBFD: F0 19     BEQ bra_BC18
C - - - - - 0x003C0F 00:BBFF: B1 0A     LDA (ram_000A_t00F_data),Y
C - - - - - 0x003C11 00:BC01: C9 AA     CMP #$AA
C - - - - - 0x003C13 00:BC03: F0 0E     BEQ bra_BC13
C - - - - - 0x003C15 00:BC05: C9 A5     CMP #$A5
C - - - - - 0x003C17 00:BC07: F0 05     BEQ bra_BC0E
C - - - - - 0x003C19 00:BC09: 09 03     ORA #$03
C - - - - - 0x003C1B 00:BC0B: 4C 65 BC  JMP loc_BC65
bra_BC0E:
C - - - - - 0x003C1E 00:BC0E: 09 30     ORA #$30
C - - - - - 0x003C20 00:BC10: 4C 65 BC  JMP loc_BC65
bra_BC13:
C - - - - - 0x003C23 00:BC13: 09 33     ORA #$33
C - - - - - 0x003C25 00:BC15: 4C 65 BC  JMP loc_BC65
bra_BC18:
C - - - - - 0x003C28 00:BC18: B1 0A     LDA (ram_000A_t00F_data),Y
C - - - - - 0x003C2A 00:BC1A: C9 AA     CMP #$AA
C - - - - - 0x003C2C 00:BC1C: F0 0E     BEQ bra_BC2C
C - - - - - 0x003C2E 00:BC1E: C9 A5     CMP #$A5
C - - - - - 0x003C30 00:BC20: F0 05     BEQ bra_BC27
C - - - - - 0x003C32 00:BC22: 09 0F     ORA #$0F
C - - - - - 0x003C34 00:BC24: 4C 65 BC  JMP loc_BC65
bra_BC27:
C - - - - - 0x003C37 00:BC27: 09 F0     ORA #$F0
C - - - - - 0x003C39 00:BC29: 4C 65 BC  JMP loc_BC65
bra_BC2C:
C - - - - - 0x003C3C 00:BC2C: 09 FF     ORA #$FF
C - - - - - 0x003C3E 00:BC2E: 4C 65 BC  JMP loc_BC65
bra_BC31:
C - - - - - 0x003C41 00:BC31: A8        TAY
C - - - - - 0x003C42 00:BC32: A5 0F     LDA ram_000F_t005
C - - - - - 0x003C44 00:BC34: F0 19     BEQ bra_BC4F
C - - - - - 0x003C46 00:BC36: B1 0A     LDA (ram_000A_t00F_data),Y
C - - - - - 0x003C48 00:BC38: C9 AA     CMP #$AA
C - - - - - 0x003C4A 00:BC3A: F0 0E     BEQ bra_BC4A
C - - - - - 0x003C4C 00:BC3C: C9 A5     CMP #$A5
C - - - - - 0x003C4E 00:BC3E: F0 05     BEQ bra_BC45
C - - - - - 0x003C50 00:BC40: 09 0F     ORA #$0F
C - - - - - 0x003C52 00:BC42: 4C 65 BC  JMP loc_BC65
bra_BC45:
C - - - - - 0x003C55 00:BC45: 09 F0     ORA #$F0
C - - - - - 0x003C57 00:BC47: 4C 65 BC  JMP loc_BC65
bra_BC4A:
C - - - - - 0x003C5A 00:BC4A: 09 FF     ORA #$FF
C - - - - - 0x003C5C 00:BC4C: 4C 65 BC  JMP loc_BC65
bra_BC4F:
C - - - - - 0x003C5F 00:BC4F: B1 0A     LDA (ram_000A_t00F_data),Y
C - - - - - 0x003C61 00:BC51: C9 AA     CMP #$AA
C - - - - - 0x003C63 00:BC53: F0 0E     BEQ bra_BC63
C - - - - - 0x003C65 00:BC55: C9 A5     CMP #$A5
C - - - - - 0x003C67 00:BC57: F0 05     BEQ bra_BC5E
C - - - - - 0x003C69 00:BC59: 09 0C     ORA #$0C
C - - - - - 0x003C6B 00:BC5B: 4C 65 BC  JMP loc_BC65
bra_BC5E:
C - - - - - 0x003C6E 00:BC5E: 09 C0     ORA #$C0
C - - - - - 0x003C70 00:BC60: 4C 65 BC  JMP loc_BC65
bra_BC63:
C - - - - - 0x003C73 00:BC63: 09 CC     ORA #$CC
loc_BC65:
C D 1 - - - 0x003C75 00:BC65: 85 00     STA ram_0000_t064
C - - - - - 0x003C77 00:BC67: 84 01     STY ram_0001_t026
C - - - - - 0x003C79 00:BC69: 98        TYA
C - - - - - 0x003C7A 00:BC6A: 29 07     AND #$07
C - - - - - 0x003C7C 00:BC6C: 85 61     STA ram_ppu_address_lo
C - - - - - 0x003C7E 00:BC6E: BD 85 07  LDA ram_0785,X
; * 08
C - - - - - 0x003C81 00:BC71: 0A        ASL
C - - - - - 0x003C82 00:BC72: 0A        ASL
C - - - - - 0x003C83 00:BC73: 0A        ASL
C - - - - - 0x003C84 00:BC74: 18        CLC
C - - - - - 0x003C85 00:BC75: 65 61     ADC ram_ppu_address_lo
C - - - - - 0x003C87 00:BC77: 18        CLC
C - - - - - 0x003C88 00:BC78: 69 C0     ADC #$C0
C - - - - - 0x003C8A 00:BC7A: 85 61     STA ram_ppu_address_lo
C - - - - - 0x003C8C 00:BC7C: A5 75     LDA ram_0075
C - - - - - 0x003C8E 00:BC7E: 0A        ASL
C - - - - - 0x003C8F 00:BC7F: 0A        ASL
C - - - - - 0x003C90 00:BC80: 0A        ASL
C - - - - - 0x003C91 00:BC81: 29 08     AND #$08
C - - - - - 0x003C93 00:BC83: 85 02     STA ram_0002_t02F
C - - - - - 0x003C95 00:BC85: A5 01     LDA ram_0001_t026
C - - - - - 0x003C97 00:BC87: 29 08     AND #$08
C - - - - - 0x003C99 00:BC89: 45 02     EOR ram_0002_t02F
C - - - - - 0x003C9B 00:BC8B: D0 04     BNE bra_BC91
C - - - - - 0x003C9D 00:BC8D: A9 23     LDA #$23    ; > 23xx
C - - - - - 0x003C9F 00:BC8F: D0 02     BNE bra_BC93    ; jmp
bra_BC91:
C - - - - - 0x003CA1 00:BC91: A9 27     LDA #$27    ; > 27xx
bra_BC93:
C - - - - - 0x003CA3 00:BC93: 85 62     STA ram_ppu_address_hi
C - - - - - 0x003CA5 00:BC95: 20 B5 E8  JSR sub_0x03E8C5_set_buffer_mode_01
C - - - - - 0x003CA8 00:BC98: A5 00     LDA ram_0000_t064
C - - - - - 0x003CAA 00:BC9A: 9D 00 03  STA ram_ppu_buffer,X
C - - - - - 0x003CAD 00:BC9D: E8        INX
C - - - - - 0x003CAE 00:BC9E: 86 1D     STX ram_index_ppu_buffer
C - - - - - 0x003CB0 00:BCA0: 20 12 ED  JSR sub_0x03ED22_close_buffer
C - - - - - 0x003CB3 00:BCA3: A9 02     LDA #$02
C - - - - - 0x003CB5 00:BCA5: 85 01     STA ram_0001_temp   ; ???
C - - - - - 0x003CB7 00:BCA7: A6 0F     LDX ram_000F_t005
C - - - - - 0x003CB9 00:BCA9: BD 85 07  LDA ram_0785,X
C - - - - - 0x003CBC 00:BCAC: 0A        ASL
C - - - - - 0x003CBD 00:BCAD: 38        SEC
C - - - - - 0x003CBE 00:BCAE: E9 02     SBC #$02
C - - - - - 0x003CC0 00:BCB0: 85 00     STA ram_0000_t065
C - - - - - 0x003CC2 00:BCB2: A5 7D     LDA ram_007D
C - - - - - 0x003CC4 00:BCB4: 29 0F     AND #$0F
C - - - - - 0x003CC6 00:BCB6: F0 08     BEQ bra_BCC0
C - - - - - 0x003CC8 00:BCB8: AD 1C 04  LDA ram_plr_pos_Y_hi
C - - - - - 0x003CCB 00:BCBB: 10 03     BPL bra_BCC0
C - - - - - 0x003CCD 00:BCBD: 18        CLC
C - - - - - 0x003CCE 00:BCBE: E6 00     INC ram_0000_t065
bra_BCC0:
C - - - - - 0x003CD0 00:BCC0: BD 84 07  LDA ram_0784,X
; / 10
C - - - - - 0x003CD3 00:BCC3: 4A        LSR
C - - - - - 0x003CD4 00:BCC4: 4A        LSR
C - - - - - 0x003CD5 00:BCC5: 4A        LSR
C - - - - - 0x003CD6 00:BCC6: 4A        LSR
C - - - - - 0x003CD7 00:BCC7: A8        TAY
C - - - - - 0x003CD8 00:BCC8: BD 84 07  LDA ram_0784,X
C - - - - - 0x003CDB 00:BCCB: 29 0F     AND #$0F
C - - - - - 0x003CDD 00:BCCD: 4A        LSR
C - - - - - 0x003CDE 00:BCCE: 19 61 FD  ORA tbl_0x03FD71,Y
loc_BCD1_loop:
C D 1 - - - 0x003CE1 00:BCD1: C9 0C     CMP #$0C
C - - - - - 0x003CE3 00:BCD3: 90 05     BCC bra_BCDA
C - - - - - 0x003CE5 00:BCD5: E9 0C     SBC #$0C
C - - - - - 0x003CE7 00:BCD7: 4C D1 BC  JMP loc_BCD1_loop
bra_BCDA:
C - - - - - 0x003CEA 00:BCDA: A8        TAY
C - - - - - 0x003CEB 00:BCDB: B9 4C FD  LDA tbl_0x03FD5C,Y
C - - - - - 0x003CEE 00:BCDE: 18        CLC
C - - - - - 0x003CEF 00:BCDF: 65 00     ADC ram_0000_t065
C - - - - - 0x003CF1 00:BCE1: A8        TAY
C - - - - - 0x003CF2 00:BCE2: A9 88     LDA #$88
C - - - - - 0x003CF4 00:BCE4: 99 E0 06  STA ram_06E0,Y
C - - - - - 0x003CF7 00:BCE7: 60        RTS



ofs_026_BCE8_02:
C - - J - - 0x003CF8 00:BCE8: A9 1C     LDA #con_98E4_1C_bg_pal
C - - - - - 0x003CFA 00:BCEA: 20 E9 EC  JSR sub_0x03ECF9_write_data_to_ppu_buffer
C - - - - - 0x003CFD 00:BCED: A9 04     LDA #con_98E4_3F00_0000
C - - - - - 0x003CFF 00:BCEF: 20 E9 EC  JSR sub_0x03ECF9_write_data_to_ppu_buffer
C - - - - - 0x003D02 00:BCF2: E6 6B     INC ram_006B_subscript
C - - - - - 0x003D04 00:BCF4: 60        RTS



ofs_026_BCF5_03:
C - - J - - 0x003D05 00:BCF5: 20 DA BD  JSR sub_BDDA
C - - - - - 0x003D08 00:BCF8: A0 00     LDY #$00
C - - - - - 0x003D0A 00:BCFA: B1 08     LDA (ram_0008_t02D_data),Y
; * 08
C - - - - - 0x003D0C 00:BCFC: 0A        ASL
C - - - - - 0x003D0D 00:BCFD: 0A        ASL
C - - - - - 0x003D0E 00:BCFE: 0A        ASL
C - - - - - 0x003D0F 00:BCFF: 18        CLC
C - - - - - 0x003D10 00:BD00: 69 C0     ADC #$C0
C - - - - - 0x003D12 00:BD02: 85 61     STA ram_ppu_address_lo
C - - - - - 0x003D14 00:BD04: A5 56     LDA ram_cam_pos_lo
C - - - - - 0x003D16 00:BD06: 85 0C     STA ram_000C_t008
C - - - - - 0x003D18 00:BD08: A5 57     LDA ram_cam_pos_hi
C - - - - - 0x003D1A 00:BD0A: 4A        LSR
C - - - - - 0x003D1B 00:BD0B: 66 0C     ROR ram_000C_t008
C - - - - - 0x003D1D 00:BD0D: 4A        LSR
C - - - - - 0x003D1E 00:BD0E: 66 0C     ROR ram_000C_t008
C - - - - - 0x003D20 00:BD10: 4A        LSR
C - - - - - 0x003D21 00:BD11: 66 0C     ROR ram_000C_t008
C - - - - - 0x003D23 00:BD13: 4A        LSR
C - - - - - 0x003D24 00:BD14: 66 0C     ROR ram_000C_t008
C - - - - - 0x003D26 00:BD16: 4A        LSR
C - - - - - 0x003D27 00:BD17: 66 0C     ROR ram_000C_t008
C - - - - - 0x003D29 00:BD19: A5 0C     LDA ram_000C_t008
C - - - - - 0x003D2B 00:BD1B: 38        SEC
C - - - - - 0x003D2C 00:BD1C: E9 02     SBC #$02
C - - - - - 0x003D2E 00:BD1E: 10 02     BPL bra_BD22
- - - - - - 0x003D30 00:BD20: A9 00     LDA #$00
bra_BD22:
C - - - - - 0x003D32 00:BD22: 85 0C     STA ram_000C_t008
C - - - - - 0x003D34 00:BD24: A5 75     LDA ram_0075
; * 08
C - - - - - 0x003D36 00:BD26: 0A        ASL
C - - - - - 0x003D37 00:BD27: 0A        ASL
C - - - - - 0x003D38 00:BD28: 0A        ASL
C - - - - - 0x003D39 00:BD29: 29 08     AND #$08
C - - - - - 0x003D3B 00:BD2B: 85 00     STA ram_0000_t04A
C - - - - - 0x003D3D 00:BD2D: A5 0C     LDA ram_000C_t008
C - - - - - 0x003D3F 00:BD2F: 29 07     AND #$07
C - - - - - 0x003D41 00:BD31: 85 02     STA ram_0002_t030
C - - - - - 0x003D43 00:BD33: A5 0C     LDA ram_000C_t008
C - - - - - 0x003D45 00:BD35: 29 08     AND #$08
C - - - - - 0x003D47 00:BD37: 45 00     EOR ram_0000_t04A
C - - - - - 0x003D49 00:BD39: F0 04     BEQ bra_BD3F
C - - - - - 0x003D4B 00:BD3B: A9 27     LDA #$27    ; > 27xx
C - - - - - 0x003D4D 00:BD3D: D0 02     BNE bra_BD41    ; jmp
bra_BD3F:
C - - - - - 0x003D4F 00:BD3F: A9 23     LDA #$23    ; > 23xx
bra_BD41:
C - - - - - 0x003D51 00:BD41: 85 62     STA ram_ppu_address_hi
C - - - - - 0x003D53 00:BD43: 85 04     STA ram_0004_t00C_copy_ppu_addr_hi
C - - - - - 0x003D55 00:BD45: A5 02     LDA ram_0002_t030
C - - - - - 0x003D57 00:BD47: 18        CLC
C - - - - - 0x003D58 00:BD48: 65 61     ADC ram_ppu_address_lo
C - - - - - 0x003D5A 00:BD4A: 85 61     STA ram_ppu_address_lo
C - - - - - 0x003D5C 00:BD4C: 85 05     STA ram_0005_t000
C - - - - - 0x003D5E 00:BD4E: A0 01     LDY #$01
C - - - - - 0x003D60 00:BD50: B1 08     LDA (ram_0008_t02D_data),Y
C - - - - - 0x003D62 00:BD52: 85 0A     STA ram_000A_t00E_data
C - - - - - 0x003D64 00:BD54: C8        INY ; 02
C - - - - - 0x003D65 00:BD55: B1 08     LDA (ram_0008_t02D_data),Y
C - - - - - 0x003D67 00:BD57: 85 0B     STA ram_000A_t00E_data + $01
C - - - - - 0x003D69 00:BD59: 20 86 BD  JSR sub_BD86
C - - - - - 0x003D6C 00:BD5C: A5 04     LDA ram_0004_t00C_copy_ppu_addr_hi
C - - - - - 0x003D6E 00:BD5E: 85 62     STA ram_ppu_address_hi
C - - - - - 0x003D70 00:BD60: A5 05     LDA ram_0005_t000
C - - - - - 0x003D72 00:BD62: 18        CLC
C - - - - - 0x003D73 00:BD63: 69 08     ADC #$08
C - - - - - 0x003D75 00:BD65: 85 61     STA ram_ppu_address_lo
C - - - - - 0x003D77 00:BD67: A0 03     LDY #$03
C - - - - - 0x003D79 00:BD69: B1 08     LDA (ram_0008_t02D_data),Y
C - - - - - 0x003D7B 00:BD6B: 85 0A     STA ram_000A_t00E_data
C - - - - - 0x003D7D 00:BD6D: C8        INY ; 04
C - - - - - 0x003D7E 00:BD6E: B1 08     LDA (ram_0008_t02D_data),Y
C - - - - - 0x003D80 00:BD70: 85 0B     STA ram_000A_t00E_data + $01
C - - - - - 0x003D82 00:BD72: 20 86 BD  JSR sub_BD86
C - - - - - 0x003D85 00:BD75: AD 65 05  LDA ram_plr_state
C - - - - - 0x003D88 00:BD78: 29 7F     AND #con_plr_state_80 ^ $FF
C - - - - - 0x003D8A 00:BD7A: 8D 65 05  STA ram_plr_state
C - - - - - 0x003D8D 00:BD7D: A9 68     LDA #$68
C - - - - - 0x003D8F 00:BD7F: 85 C7     STA ram_00C7
C - - - - - 0x003D91 00:BD81: A9 1B     LDA #con_002A_1B
C - - - - - 0x003D93 00:BD83: 85 2A     STA ram_002A_script
C - - - - - 0x003D95 00:BD85: 60        RTS



sub_BD86:
C - - - - - 0x003D96 00:BD86: A4 0C     LDY ram_000C_t008
C - - - - - 0x003D98 00:BD88: A9 0C     LDA #$0C
C - - - - - 0x003D9A 00:BD8A: 85 0F     STA ram_000F_t004
bra_BD8C_loop:
C - - - - - 0x003D9C 00:BD8C: B1 0A     LDA (ram_000A_t00E_data),Y
C - - - - - 0x003D9E 00:BD8E: C9 FF     CMP #$FF
C - - - - - 0x003DA0 00:BD90: F0 33     BEQ bra_BDC5_RTS
C - - - - - 0x003DA2 00:BD92: C9 0A     CMP #$0A
C - - - - - 0x003DA4 00:BD94: F0 30     BEQ bra_BDC6
C - - - - - 0x003DA6 00:BD96: C9 A5     CMP #$A5
C - - - - - 0x003DA8 00:BD98: F0 2C     BEQ bra_BDC6
C - - - - - 0x003DAA 00:BD9A: C9 AA     CMP #$AA
C - - - - - 0x003DAC 00:BD9C: F0 28     BEQ bra_BDC6
bra_BD9E:
C - - - - - 0x003DAE 00:BD9E: C6 0F     DEC ram_000F_t004
C - - - - - 0x003DB0 00:BDA0: F0 23     BEQ bra_BDC5_RTS
C - - - - - 0x003DB2 00:BDA2: A5 61     LDA ram_ppu_address_lo
C - - - - - 0x003DB4 00:BDA4: 29 08     AND #$08
C - - - - - 0x003DB6 00:BDA6: 85 01     STA ram_0001_t027
C - - - - - 0x003DB8 00:BDA8: E6 61     INC ram_ppu_address_lo
C - - - - - 0x003DBA 00:BDAA: A5 61     LDA ram_ppu_address_lo
C - - - - - 0x003DBC 00:BDAC: 29 08     AND #$08
C - - - - - 0x003DBE 00:BDAE: 45 01     EOR ram_0001_t027
C - - - - - 0x003DC0 00:BDB0: D0 03     BNE bra_BDB5
loc_BDB2_loop:
C D 1 - - - 0x003DC2 00:BDB2: C8        INY
C - - - - - 0x003DC3 00:BDB3: D0 D7     BNE bra_BD8C_loop    ; jmp
bra_BDB5:
C - - - - - 0x003DC5 00:BDB5: A5 61     LDA ram_ppu_address_lo
C - - - - - 0x003DC7 00:BDB7: 38        SEC
C - - - - - 0x003DC8 00:BDB8: E9 08     SBC #$08
C - - - - - 0x003DCA 00:BDBA: 85 61     STA ram_ppu_address_lo
C - - - - - 0x003DCC 00:BDBC: A5 62     LDA ram_ppu_address_hi
C - - - - - 0x003DCE 00:BDBE: 49 04     EOR #$04
C - - - - - 0x003DD0 00:BDC0: 85 62     STA ram_ppu_address_hi
C - - - - - 0x003DD2 00:BDC2: 4C B2 BD  JMP loc_BDB2_loop
bra_BDC5_RTS:
C - - - - - 0x003DD5 00:BDC5: 60        RTS
bra_BDC6:
C - - - - - 0x003DD6 00:BDC6: 20 B5 E8  JSR sub_0x03E8C5_set_buffer_mode_01
C - - - - - 0x003DD9 00:BDC9: B1 0A     LDA (ram_000A_t00E_data),Y
C - - - - - 0x003DDB 00:BDCB: 9D 00 03  STA ram_ppu_buffer,X
C - - - - - 0x003DDE 00:BDCE: E8        INX
C - - - - - 0x003DDF 00:BDCF: A9 FF     LDA #$FF
C - - - - - 0x003DE1 00:BDD1: 9D 00 03  STA ram_ppu_buffer,X
C - - - - - 0x003DE4 00:BDD4: E8        INX
C - - - - - 0x003DE5 00:BDD5: 86 1D     STX ram_index_ppu_buffer
C - - - - - 0x003DE7 00:BDD7: D0 C5     BNE bra_BD9E
- - - - - - 0x003DE9 00:BDD9: 60        RTS



sub_BDDA:
C - - - - - 0x003DEA 00:BDDA: AD 89 07  LDA ram_0789
C - - - - - 0x003DED 00:BDDD: 4C F1 BD  JMP loc_BDF1



sub_BDE0:
C - - - - - 0x003DF0 00:BDE0: A5 7D     LDA ram_007D
C - - - - - 0x003DF2 00:BDE2: 29 0F     AND #$0F
C - - - - - 0x003DF4 00:BDE4: F0 08     BEQ bra_BDEE
C - - - - - 0x003DF6 00:BDE6: AC 1C 04  LDY ram_plr_pos_Y_hi
C - - - - - 0x003DF9 00:BDE9: 10 03     BPL bra_BDEE
C - - - - - 0x003DFB 00:BDEB: 18        CLC
C - - - - - 0x003DFC 00:BDEC: 69 01     ADC #$01
bra_BDEE:
C - - - - - 0x003DFE 00:BDEE: 8D 89 07  STA ram_0789
loc_BDF1:
C D 1 - - - 0x003E01 00:BDF1: 0A        ASL
C - - - - - 0x003E02 00:BDF2: A8        TAY
C - - - - - 0x003E03 00:BDF3: B9 FE BD  LDA tbl_BDFE,Y
C - - - - - 0x003E06 00:BDF6: 85 08     STA ram_0008_t02D_data
C - - - - - 0x003E08 00:BDF8: B9 FF BD  LDA tbl_BDFE + $01,Y
C - - - - - 0x003E0B 00:BDFB: 85 09     STA ram_0008_t02D_data + $01
C - - - - - 0x003E0D 00:BDFD: 60        RTS



tbl_BDFE:
; nametable attributes?
- - - - - - 0x003E0E 00:BDFE: 72 BE     .word _off_BE72_00
- D 1 - - - 0x003E10 00:BE00: 04 BE     .word _off_BE04_01
- D 1 - - - 0x003E12 00:BE02: 09 BE     .word _off_BE09_02



_off_BE04_01:
- D 1 - I - 0x003E14 00:BE04: 03        .byte $03   ; 
- D 1 - I - 0x003E15 00:BE05: 0E BE     .word off_BE0E_01_00
- D 1 - I - 0x003E17 00:BE07: 27 BE     .word off_BE27_01_01



_off_BE09_02:
- D 1 - I - 0x003E19 00:BE09: 05        .byte $05   ; 
- D 1 - I - 0x003E1A 00:BE0A: 40 BE     .word off_BE40_02_00
- D 1 - I - 0x003E1C 00:BE0C: 59 BE     .word off_BE59_02_01



off_BE0E_01_00:
- - - - - - 0x003E1E 00:BE0E: 00        .byte $00   ; 
- - - - - - 0x003E1F 00:BE0F: 00        .byte $00   ; 
- - - - - - 0x003E20 00:BE10: 00        .byte $00   ; 
- - - - - - 0x003E21 00:BE11: 00        .byte $00   ; 
- - - - - - 0x003E22 00:BE12: 00        .byte $00   ; 
- D 1 - I - 0x003E23 00:BE13: AA        .byte $AA   ; 
- D 1 - I - 0x003E24 00:BE14: 0A        .byte $0A   ; 
- D 1 - I - 0x003E25 00:BE15: 0A        .byte $0A   ; 
- D 1 - I - 0x003E26 00:BE16: 0A        .byte $0A   ; 
- D 1 - I - 0x003E27 00:BE17: 0A        .byte $0A   ; 
- D 1 - I - 0x003E28 00:BE18: 0A        .byte $0A   ; 
- D 1 - I - 0x003E29 00:BE19: 0A        .byte $0A   ; 
- D 1 - I - 0x003E2A 00:BE1A: 0A        .byte $0A   ; 
- D 1 - I - 0x003E2B 00:BE1B: 0A        .byte $0A   ; 
- D 1 - I - 0x003E2C 00:BE1C: 0A        .byte $0A   ; 
- D 1 - I - 0x003E2D 00:BE1D: 0A        .byte $0A   ; 
- D 1 - I - 0x003E2E 00:BE1E: 0A        .byte $0A   ; 
- D 1 - I - 0x003E2F 00:BE1F: AA        .byte $AA   ; 
- D 1 - I - 0x003E30 00:BE20: 00        .byte $00   ; 
- D 1 - I - 0x003E31 00:BE21: 00        .byte $00   ; 
- D 1 - I - 0x003E32 00:BE22: 00        .byte $00   ; 
- - - - - - 0x003E33 00:BE23: 00        .byte $00   ; 
- - - - - - 0x003E34 00:BE24: 00        .byte $00   ; 
- - - - - - 0x003E35 00:BE25: 00        .byte $00   ; 
- - - - - - 0x003E36 00:BE26: FF        .byte $FF   ; 



off_BE27_01_01:
- - - - - - 0x003E37 00:BE27: 00        .byte $00   ; 
- - - - - - 0x003E38 00:BE28: 00        .byte $00   ; 
- - - - - - 0x003E39 00:BE29: 00        .byte $00   ; 
- - - - - - 0x003E3A 00:BE2A: 00        .byte $00   ; 
- - - - - - 0x003E3B 00:BE2B: 00        .byte $00   ; 
- D 1 - I - 0x003E3C 00:BE2C: AA        .byte $AA   ; 
- D 1 - I - 0x003E3D 00:BE2D: 00        .byte $00   ; 
- D 1 - I - 0x003E3E 00:BE2E: 00        .byte $00   ; 
- D 1 - I - 0x003E3F 00:BE2F: 00        .byte $00   ; 
- D 1 - I - 0x003E40 00:BE30: 00        .byte $00   ; 
- D 1 - I - 0x003E41 00:BE31: 00        .byte $00   ; 
- D 1 - I - 0x003E42 00:BE32: 00        .byte $00   ; 
- D 1 - I - 0x003E43 00:BE33: 00        .byte $00   ; 
- D 1 - I - 0x003E44 00:BE34: 00        .byte $00   ; 
- D 1 - I - 0x003E45 00:BE35: 00        .byte $00   ; 
- D 1 - I - 0x003E46 00:BE36: 00        .byte $00   ; 
- D 1 - I - 0x003E47 00:BE37: 00        .byte $00   ; 
- D 1 - I - 0x003E48 00:BE38: AA        .byte $AA   ; 
- D 1 - I - 0x003E49 00:BE39: 00        .byte $00   ; 
- D 1 - I - 0x003E4A 00:BE3A: 00        .byte $00   ; 
- D 1 - I - 0x003E4B 00:BE3B: 00        .byte $00   ; 
- - - - - - 0x003E4C 00:BE3C: 00        .byte $00   ; 
- - - - - - 0x003E4D 00:BE3D: 00        .byte $00   ; 
- - - - - - 0x003E4E 00:BE3E: 00        .byte $00   ; 
- - - - - - 0x003E4F 00:BE3F: FF        .byte $FF   ; 



off_BE40_02_00:
- D 1 - I - 0x003E50 00:BE40: 00        .byte $00   ; 
- D 1 - I - 0x003E51 00:BE41: 00        .byte $00   ; 
- D 1 - I - 0x003E52 00:BE42: A5        .byte $A5   ; 
- D 1 - I - 0x003E53 00:BE43: A5        .byte $A5   ; 
- D 1 - I - 0x003E54 00:BE44: A5        .byte $A5   ; 
- D 1 - I - 0x003E55 00:BE45: AA        .byte $AA   ; 
- D 1 - I - 0x003E56 00:BE46: A5        .byte $A5   ; 
- D 1 - I - 0x003E57 00:BE47: A5        .byte $A5   ; 
- D 1 - I - 0x003E58 00:BE48: A5        .byte $A5   ; 
- D 1 - I - 0x003E59 00:BE49: A5        .byte $A5   ; 
- D 1 - I - 0x003E5A 00:BE4A: A5        .byte $A5   ; 
- D 1 - I - 0x003E5B 00:BE4B: A5        .byte $A5   ; 
- D 1 - I - 0x003E5C 00:BE4C: A5        .byte $A5   ; 
- D 1 - I - 0x003E5D 00:BE4D: A5        .byte $A5   ; 
- D 1 - I - 0x003E5E 00:BE4E: A5        .byte $A5   ; 
- D 1 - I - 0x003E5F 00:BE4F: A5        .byte $A5   ; 
- D 1 - I - 0x003E60 00:BE50: A5        .byte $A5   ; 
- D 1 - I - 0x003E61 00:BE51: AA        .byte $AA   ; 
- D 1 - I - 0x003E62 00:BE52: A5        .byte $A5   ; 
- D 1 - I - 0x003E63 00:BE53: A5        .byte $A5   ; 
- D 1 - I - 0x003E64 00:BE54: A5        .byte $A5   ; 
- D 1 - I - 0x003E65 00:BE55: A5        .byte $A5   ; 
- D 1 - I - 0x003E66 00:BE56: 00        .byte $00   ; 
- D 1 - I - 0x003E67 00:BE57: 00        .byte $00   ; 
- D 1 - I - 0x003E68 00:BE58: FF        .byte $FF   ; 



off_BE59_02_01:
- D 1 - I - 0x003E69 00:BE59: 00        .byte $00   ; 
- D 1 - I - 0x003E6A 00:BE5A: 00        .byte $00   ; 
- D 1 - I - 0x003E6B 00:BE5B: AA        .byte $AA   ; 
- D 1 - I - 0x003E6C 00:BE5C: 00        .byte $00   ; 
- D 1 - I - 0x003E6D 00:BE5D: 00        .byte $00   ; 
- D 1 - I - 0x003E6E 00:BE5E: 00        .byte $00   ; 
- D 1 - I - 0x003E6F 00:BE5F: 00        .byte $00   ; 
- D 1 - I - 0x003E70 00:BE60: 00        .byte $00   ; 
- D 1 - I - 0x003E71 00:BE61: 00        .byte $00   ; 
- D 1 - I - 0x003E72 00:BE62: 00        .byte $00   ; 
- D 1 - I - 0x003E73 00:BE63: 00        .byte $00   ; 
- D 1 - I - 0x003E74 00:BE64: 00        .byte $00   ; 
- D 1 - I - 0x003E75 00:BE65: 00        .byte $00   ; 
- D 1 - I - 0x003E76 00:BE66: 00        .byte $00   ; 
- D 1 - I - 0x003E77 00:BE67: 00        .byte $00   ; 
- D 1 - I - 0x003E78 00:BE68: 00        .byte $00   ; 
- D 1 - I - 0x003E79 00:BE69: 00        .byte $00   ; 
- D 1 - I - 0x003E7A 00:BE6A: 00        .byte $00   ; 
- D 1 - I - 0x003E7B 00:BE6B: 00        .byte $00   ; 
- D 1 - I - 0x003E7C 00:BE6C: 00        .byte $00   ; 
- D 1 - I - 0x003E7D 00:BE6D: 00        .byte $00   ; 
- D 1 - I - 0x003E7E 00:BE6E: AA        .byte $AA   ; 
- D 1 - I - 0x003E7F 00:BE6F: 00        .byte $00   ; 
- D 1 - I - 0x003E80 00:BE70: 00        .byte $00   ; 
- D 1 - I - 0x003E81 00:BE71: FF        .byte $FF   ; 



_off_BE72_00:
- - - - - - 0x003E82 00:BE72: 04        .byte $04   ; 
- - - - - - 0x003E83 00:BE73: 77 BE     .word off_BE77_00_00
- - - - - - 0x003E85 00:BE75: 98 BE     .word off_BE98_00_01



off_BE77_00_00:
- - - - - - 0x003E87 00:BE77: 00        .byte $00   ; 
- - - - - - 0x003E88 00:BE78: 00        .byte $00   ; 
- - - - - - 0x003E89 00:BE79: AA        .byte $AA   ; 
- - - - - - 0x003E8A 00:BE7A: 0A        .byte $0A   ; 
- - - - - - 0x003E8B 00:BE7B: 0A        .byte $0A   ; 
- - - - - - 0x003E8C 00:BE7C: 0A        .byte $0A   ; 
- - - - - - 0x003E8D 00:BE7D: 0A        .byte $0A   ; 
- - - - - - 0x003E8E 00:BE7E: 0A        .byte $0A   ; 
- - - - - - 0x003E8F 00:BE7F: 0A        .byte $0A   ; 
- - - - - - 0x003E90 00:BE80: 0A        .byte $0A   ; 
- - - - - - 0x003E91 00:BE81: 0A        .byte $0A   ; 
- - - - - - 0x003E92 00:BE82: 0A        .byte $0A   ; 
- - - - - - 0x003E93 00:BE83: 0A        .byte $0A   ; 
- - - - - - 0x003E94 00:BE84: 0A        .byte $0A   ; 
- - - - - - 0x003E95 00:BE85: 0A        .byte $0A   ; 
- - - - - - 0x003E96 00:BE86: 0A        .byte $0A   ; 
- - - - - - 0x003E97 00:BE87: 0A        .byte $0A   ; 
- - - - - - 0x003E98 00:BE88: 0A        .byte $0A   ; 
- - - - - - 0x003E99 00:BE89: 0A        .byte $0A   ; 
- - - - - - 0x003E9A 00:BE8A: 0A        .byte $0A   ; 
- - - - - - 0x003E9B 00:BE8B: 0A        .byte $0A   ; 
- - - - - - 0x003E9C 00:BE8C: 0A        .byte $0A   ; 
- - - - - - 0x003E9D 00:BE8D: 0A        .byte $0A   ; 
- - - - - - 0x003E9E 00:BE8E: 0A        .byte $0A   ; 
- - - - - - 0x003E9F 00:BE8F: 0A        .byte $0A   ; 
- - - - - - 0x003EA0 00:BE90: 0A        .byte $0A   ; 
- - - - - - 0x003EA1 00:BE91: 0A        .byte $0A   ; 
- - - - - - 0x003EA2 00:BE92: AA        .byte $AA   ; 
- - - - - - 0x003EA3 00:BE93: 00        .byte $00   ; 
- - - - - - 0x003EA4 00:BE94: 00        .byte $00   ; 
- - - - - - 0x003EA5 00:BE95: 00        .byte $00   ; 
- - - - - - 0x003EA6 00:BE96: 00        .byte $00   ; 
- - - - - - 0x003EA7 00:BE97: FF        .byte $FF   ; 



off_BE98_00_01:
- - - - - - 0x003EA8 00:BE98: 00        .byte $00   ; 
- - - - - - 0x003EA9 00:BE99: 00        .byte $00   ; 
- - - - - - 0x003EAA 00:BE9A: 0A        .byte $0A   ; 
- - - - - - 0x003EAB 00:BE9B: 00        .byte $00   ; 
- - - - - - 0x003EAC 00:BE9C: 00        .byte $00   ; 
- - - - - - 0x003EAD 00:BE9D: 00        .byte $00   ; 
- - - - - - 0x003EAE 00:BE9E: 00        .byte $00   ; 
- - - - - - 0x003EAF 00:BE9F: 00        .byte $00   ; 
- - - - - - 0x003EB0 00:BEA0: 00        .byte $00   ; 
- - - - - - 0x003EB1 00:BEA1: 00        .byte $00   ; 
- - - - - - 0x003EB2 00:BEA2: 00        .byte $00   ; 
- - - - - - 0x003EB3 00:BEA3: 00        .byte $00   ; 
- - - - - - 0x003EB4 00:BEA4: 00        .byte $00   ; 
- - - - - - 0x003EB5 00:BEA5: 00        .byte $00   ; 
- - - - - - 0x003EB6 00:BEA6: 00        .byte $00   ; 
- - - - - - 0x003EB7 00:BEA7: 00        .byte $00   ; 
- - - - - - 0x003EB8 00:BEA8: 00        .byte $00   ; 
- - - - - - 0x003EB9 00:BEA9: 00        .byte $00   ; 
- - - - - - 0x003EBA 00:BEAA: 00        .byte $00   ; 
- - - - - - 0x003EBB 00:BEAB: 00        .byte $00   ; 
- - - - - - 0x003EBC 00:BEAC: 00        .byte $00   ; 
- - - - - - 0x003EBD 00:BEAD: 00        .byte $00   ; 
- - - - - - 0x003EBE 00:BEAE: 00        .byte $00   ; 
- - - - - - 0x003EBF 00:BEAF: 00        .byte $00   ; 
- - - - - - 0x003EC0 00:BEB0: 00        .byte $00   ; 
- - - - - - 0x003EC1 00:BEB1: 00        .byte $00   ; 
- - - - - - 0x003EC2 00:BEB2: 00        .byte $00   ; 
- - - - - - 0x003EC3 00:BEB3: AA        .byte $AA   ; 
- - - - - - 0x003EC4 00:BEB4: 00        .byte $00   ; 
- - - - - - 0x003EC5 00:BEB5: 00        .byte $00   ; 
- - - - - - 0x003EC6 00:BEB6: 00        .byte $00   ; 
- - - - - - 0x003EC7 00:BEB7: 00        .byte $00   ; 
- - - - - - 0x003EC8 00:BEB8: FF        .byte $FF   ; 


; bzk garbage
- - - - - - 0x003EC9 00:BEB9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003ED0 00:BEC0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003EE0 00:BED0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003EF0 00:BEE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003F00 00:BEF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003F10 00:BF00: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003F20 00:BF10: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003F30 00:BF20: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003F40 00:BF30: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003F50 00:BF40: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003F60 00:BF50: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003F70 00:BF60: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003F80 00:BF70: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003F90 00:BF80: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003FA0 00:BF90: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003FB0 00:BFA0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003FC0 00:BFB0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003FD0 00:BFC0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003FE0 00:BFD0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003FF0 00:BFE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x004000 00:BFF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 



.out .sprintf("Free bytes in bank 80: 0x%04X [%d]", ($C000 - *), ($C000 - *))



