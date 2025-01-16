.segment "BANK_00"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
.org $8000  ; for listing file
; 0x000010-0x00400F



.export tbl_0x000011_spr_data
.export sub_0x003315
.export sub_0x003393
.export sub_0x0037C0
.export sub_0x003A8D
.export ofs_006_0x003A8D_15



; bzk garbage, unused bank id
- D 0 - - - 0x000010 00:8000: 00        .byte con_prg_bank + $00   ; 



tbl_0x000011_spr_data:
- D 0 - - - 0x000011 00:8001: 70 9A     .word _off032_9A70_00
- D 0 - - - 0x000013 00:8003: 01 A0     .word _off032_0x004011_01
- D 0 - - - 0x000015 00:8005: F7 A5     .word _off032_0x004607_02
- D 0 - - - 0x000017 00:8007: 66 91     .word _off032_9166_03
- D 0 - - - 0x000019 00:8009: C0 A2     .word _off032_A2C0_04
- D 0 - - - 0x00001B 00:800B: 61 B0     .word _off032_B061_05
- D 0 - - - 0x00001D 00:800D: 61 AA     .word _off032_AA61_06
- D 0 - - - 0x00001F 00:800F: 1F 80     .word _off032_801F_07
- D 0 - - - 0x000021 00:8011: FB B1     .word _off032_0x00520B_08
- D 0 - - - 0x000023 00:8013: A5 86     .word _off032_86A5_09
- D 0 - - - 0x000025 00:8015: F9 AC     .word _off032_ACF9_0A
- D 0 - - - 0x000027 00:8017: DE AD     .word _off032_0x004DEE_0B
- D 0 - - - 0x000029 00:8019: 3E B9     .word _off032_0x00594E_0C
- D 0 - - - 0x00002B 00:801B: CD BC     .word _off032_0x007CDD_0D
- - - - - - 0x00002D 00:801D: 71 B2     .word _off032_B271_0E



_off032_801F_07:
- - - - - - 0x00002F 00:801F: 53 81     .word off_07_8153_00
- D 0 - I - 0x000031 00:8021: 53 81     .word off_07_8153_01
- D 0 - I - 0x000033 00:8023: 5D 81     .word off_07_815D_02
- D 0 - I - 0x000035 00:8025: 7D 81     .word off_07_817D_03
- D 0 - I - 0x000037 00:8027: 9D 81     .word off_07_819D_04
- D 0 - I - 0x000039 00:8029: B1 81     .word off_07_81B1_05
- D 0 - I - 0x00003B 00:802B: B6 81     .word off_07_81B6_06
- D 0 - I - 0x00003D 00:802D: BB 81     .word off_07_81BB_07
- D 0 - I - 0x00003F 00:802F: C0 81     .word off_07_81C0_08
- D 0 - I - 0x000041 00:8031: C5 81     .word off_07_81C5_09
- D 0 - I - 0x000043 00:8033: CA 81     .word off_07_81CA_0A
- D 0 - I - 0x000045 00:8035: CD 81     .word off_07_81CD_0B
- D 0 - I - 0x000047 00:8037: D2 81     .word off_07_81D2_0C
- D 0 - I - 0x000049 00:8039: D5 81     .word off_07_81D5_0D
- D 0 - I - 0x00004B 00:803B: DA 81     .word off_07_81DA_0E
- D 0 - I - 0x00004D 00:803D: DF 81     .word off_07_81DF_0F
- D 0 - I - 0x00004F 00:803F: E4 81     .word off_07_81E4_10
- D 0 - I - 0x000051 00:8041: E9 81     .word off_07_81E9_11
- D 0 - I - 0x000053 00:8043: EE 81     .word off_07_81EE_12
- D 0 - I - 0x000055 00:8045: F8 81     .word off_07_81F8_13
- D 0 - I - 0x000057 00:8047: 07 82     .word off_07_8207_14
- D 0 - I - 0x000059 00:8049: 11 82     .word off_07_8211_15
- D 0 - I - 0x00005B 00:804B: 16 82     .word off_07_8216_16
- D 0 - I - 0x00005D 00:804D: 20 82     .word off_07_8220_17
- D 0 - I - 0x00005F 00:804F: 2F 82     .word off_07_822F_18
- D 0 - I - 0x000061 00:8051: 39 82     .word off_07_8239_19
- D 0 - I - 0x000063 00:8053: 3E 82     .word off_07_823E_1A
- D 0 - I - 0x000065 00:8055: 48 82     .word off_07_8248_1B
- D 0 - I - 0x000067 00:8057: 57 82     .word off_07_8257_1C
- D 0 - I - 0x000069 00:8059: 61 82     .word off_07_8261_1D
- D 0 - I - 0x00006B 00:805B: 64 82     .word off_07_8264_1E
- D 0 - I - 0x00006D 00:805D: 67 82     .word off_07_8267_1F
- D 0 - I - 0x00006F 00:805F: 6A 82     .word off_07_826A_20
- D 0 - I - 0x000071 00:8061: 6D 82     .word off_07_826D_21
- D 0 - I - 0x000073 00:8063: 70 82     .word off_07_8270_22
- D 0 - I - 0x000075 00:8065: 73 82     .word off_07_8273_23
- D 0 - I - 0x000077 00:8067: 76 82     .word off_07_8276_24
- D 0 - I - 0x000079 00:8069: 79 82     .word off_07_8279_25
- D 0 - I - 0x00007B 00:806B: 7E 82     .word off_07_827E_26
- D 0 - I - 0x00007D 00:806D: 88 82     .word off_07_8288_27
- D 0 - I - 0x00007F 00:806F: 97 82     .word off_07_8297_28
- D 0 - I - 0x000081 00:8071: A1 82     .word off_07_82A1_29
- D 0 - I - 0x000083 00:8073: A6 82     .word off_07_82A6_2A
- D 0 - I - 0x000085 00:8075: B0 82     .word off_07_82B0_2B
- D 0 - I - 0x000087 00:8077: BF 82     .word off_07_82BF_2C
- D 0 - I - 0x000089 00:8079: C9 82     .word off_07_82C9_2D
- D 0 - I - 0x00008B 00:807B: CC 82     .word off_07_82CC_2E
- D 0 - I - 0x00008D 00:807D: CF 82     .word off_07_82CF_2F
- D 0 - I - 0x00008F 00:807F: D2 82     .word off_07_82D2_30
- D 0 - I - 0x000091 00:8081: D5 82     .word off_07_82D5_31
- D 0 - I - 0x000093 00:8083: DD 82     .word off_07_82DD_32
- D 0 - I - 0x000095 00:8085: E8 82     .word off_07_82E8_33
- D 0 - I - 0x000097 00:8087: F8 82     .word off_07_82F8_34
- D 0 - I - 0x000099 00:8089: 03 83     .word off_07_8303_35
- D 0 - I - 0x00009B 00:808B: 0E 83     .word off_07_830E_36
- D 0 - I - 0x00009D 00:808D: 19 83     .word off_07_8319_37
- D 0 - I - 0x00009F 00:808F: 21 83     .word off_07_8321_38
- D 0 - I - 0x0000A1 00:8091: 2C 83     .word off_07_832C_39
- D 0 - I - 0x0000A3 00:8093: 3C 83     .word off_07_833C_3A
- D 0 - I - 0x0000A5 00:8095: 47 83     .word off_07_8347_3B
- D 0 - I - 0x0000A7 00:8097: 52 83     .word off_07_8352_3C
- D 0 - I - 0x0000A9 00:8099: 5D 83     .word off_07_835D_3D
- D 0 - I - 0x0000AB 00:809B: 62 83     .word off_07_8362_3E
- D 0 - I - 0x0000AD 00:809D: 6A 83     .word off_07_836A_3F
- D 0 - I - 0x0000AF 00:809F: 77 83     .word off_07_8377_40
- D 0 - I - 0x0000B1 00:80A1: 7F 83     .word off_07_837F_41
- D 0 - I - 0x0000B3 00:80A3: 87 83     .word off_07_8387_42
- D 0 - I - 0x0000B5 00:80A5: 8F 83     .word off_07_838F_43
- D 0 - I - 0x0000B7 00:80A7: 92 83     .word off_07_8392_44
- D 0 - I - 0x0000B9 00:80A9: 95 83     .word off_07_8395_45
- D 0 - I - 0x0000BB 00:80AB: 98 83     .word off_07_8398_46
- D 0 - I - 0x0000BD 00:80AD: 9B 83     .word off_07_839B_47
- D 0 - I - 0x0000BF 00:80AF: 9E 83     .word off_07_839E_48
- D 0 - I - 0x0000C1 00:80B1: A1 83     .word off_07_83A1_49
- D 0 - I - 0x0000C3 00:80B3: A4 83     .word off_07_83A4_4A
- D 0 - I - 0x0000C5 00:80B5: A7 83     .word off_07_83A7_4B
- D 0 - I - 0x0000C7 00:80B7: AA 83     .word off_07_83AA_4C
- D 0 - I - 0x0000C9 00:80B9: AD 83     .word off_07_83AD_4D
- D 0 - I - 0x0000CB 00:80BB: B0 83     .word off_07_83B0_4E
- D 0 - I - 0x0000CD 00:80BD: B3 83     .word off_07_83B3_4F
- D 0 - I - 0x0000CF 00:80BF: BB 83     .word off_07_83BB_50
- D 0 - I - 0x0000D1 00:80C1: C8 83     .word off_07_83C8_51
- D 0 - I - 0x0000D3 00:80C3: DA 83     .word off_07_83DA_52
- D 0 - I - 0x0000D5 00:80C5: E7 83     .word off_07_83E7_53
- D 0 - I - 0x0000D7 00:80C7: F4 83     .word off_07_83F4_54
- D 0 - I - 0x0000D9 00:80C9: 01 84     .word off_07_8401_55
- D 0 - I - 0x0000DB 00:80CB: 06 84     .word off_07_8406_56
- D 0 - I - 0x0000DD 00:80CD: 0E 84     .word off_07_840E_57
- D 0 - I - 0x0000DF 00:80CF: 1D 84     .word off_07_841D_58
- D 0 - I - 0x0000E1 00:80D1: 25 84     .word off_07_8425_59
- D 0 - I - 0x0000E3 00:80D3: 2D 84     .word off_07_842D_5A
- D 0 - I - 0x0000E5 00:80D5: 35 84     .word off_07_8435_5B
- D 0 - I - 0x0000E7 00:80D7: 38 84     .word off_07_8438_5C
- D 0 - I - 0x0000E9 00:80D9: 3B 84     .word off_07_843B_5D
- D 0 - I - 0x0000EB 00:80DB: 3E 84     .word off_07_843E_5E
- D 0 - I - 0x0000ED 00:80DD: 41 84     .word off_07_8441_5F
- D 0 - I - 0x0000EF 00:80DF: 44 84     .word off_07_8444_60
- D 0 - I - 0x0000F1 00:80E1: 47 84     .word off_07_8447_61
- D 0 - I - 0x0000F3 00:80E3: 51 84     .word off_07_8451_62
- D 0 - I - 0x0000F5 00:80E5: 5B 84     .word off_07_845B_63
- D 0 - I - 0x0000F7 00:80E7: 65 84     .word off_07_8465_64
- D 0 - I - 0x0000F9 00:80E9: 68 84     .word off_07_8468_65
- D 0 - I - 0x0000FB 00:80EB: 6B 84     .word off_07_846B_66
- D 0 - I - 0x0000FD 00:80ED: 75 84     .word off_07_8475_67
- D 0 - I - 0x0000FF 00:80EF: 7F 84     .word off_07_847F_68
- - - - - - 0x000101 00:80F1: 82 84     .word off_07_8482_69
- - - - - - 0x000103 00:80F3: 82 84     .word off_07_8482_6A
- D 0 - I - 0x000105 00:80F5: 82 84     .word off_07_8482_6B
- - - - - - 0x000107 00:80F7: 8C 84     .word off_07_848C_6C
- - - - - - 0x000109 00:80F9: 8C 84     .word off_07_848C_6D
- D 0 - I - 0x00010B 00:80FB: 91 84     .word off_07_8491_6E
- D 0 - I - 0x00010D 00:80FD: A3 84     .word off_07_84A3_6F
- D 0 - I - 0x00010F 00:80FF: B8 84     .word off_07_84B8_70
- D 0 - I - 0x000111 00:8101: CB 84     .word off_07_84CB_71
- D 0 - I - 0x000113 00:8103: DE 84     .word off_07_84DE_72
- - - - - - 0x000115 00:8105: EE 84     .word off_07_84EE_73
- - - - - - 0x000117 00:8107: FE 84     .word off_07_84FE_74
- - - - - - 0x000119 00:8109: 06 85     .word off_07_8506_75
- D 0 - I - 0x00011B 00:810B: 0E 85     .word off_07_850E_76
- D 0 - I - 0x00011D 00:810D: 16 85     .word off_07_8516_77
- D 0 - I - 0x00011F 00:810F: 29 85     .word off_07_8529_78
- D 0 - I - 0x000121 00:8111: 3C 85     .word off_07_853C_79
- D 0 - I - 0x000123 00:8113: 4F 85     .word off_07_854F_7A
- - - - - - 0x000125 00:8115: 5F 85     .word off_07_855F_7B
- - - - - - 0x000127 00:8117: 6F 85     .word off_07_856F_7C
- - - - - - 0x000129 00:8119: 77 85     .word off_07_8577_7D
- D 0 - I - 0x00012B 00:811B: 7F 85     .word off_07_857F_7E
- D 0 - I - 0x00012D 00:811D: 82 85     .word off_07_8582_7F
- D 0 - I - 0x00012F 00:811F: 85 85     .word off_07_8585_80
- D 0 - I - 0x000131 00:8121: 88 85     .word off_07_8588_81
- D 0 - I - 0x000133 00:8123: 8B 85     .word off_07_858B_82
- - - - - - 0x000135 00:8125: 8E 85     .word off_07_858E_83
- - - - - - 0x000137 00:8127: 91 85     .word off_07_8591_84
- - - - - - 0x000139 00:8129: 94 85     .word off_07_8594_85
- D 0 - I - 0x00013B 00:812B: 97 85     .word off_07_8597_86
- D 0 - I - 0x00013D 00:812D: A9 85     .word off_07_85A9_87
- D 0 - I - 0x00013F 00:812F: BE 85     .word off_07_85BE_88
- D 0 - I - 0x000141 00:8131: D7 85     .word off_07_85D7_89
- D 0 - I - 0x000143 00:8133: EE 85     .word off_07_85EE_8A
- - - - - - 0x000145 00:8135: 00 86     .word off_07_8600_8B
- - - - - - 0x000147 00:8137: 10 86     .word off_07_8610_8C
- - - - - - 0x000149 00:8139: 18 86     .word off_07_8618_8D
- D 0 - I - 0x00014B 00:813B: 20 86     .word off_07_8620_8E
- D 0 - I - 0x00014D 00:813D: 2A 86     .word off_07_862A_8F
- D 0 - I - 0x00014F 00:813F: 4E 86     .word off_07_864E_90
- D 0 - I - 0x000151 00:8141: 5F 86     .word off_07_865F_91
- D 0 - I - 0x000153 00:8143: 6D 86     .word off_07_866D_92
- - - - - - 0x000155 00:8145: 2F 86     .word off_07_862F_93
- D 0 - I - 0x000157 00:8147: 34 86     .word off_07_8634_94
- - - - - - 0x000159 00:8149: 39 86     .word off_07_8639_95
- D 0 - I - 0x00015B 00:814B: 3E 86     .word off_07_863E_96
- - - - - - 0x00015D 00:814D: 46 86     .word off_07_8646_97
- D 0 - I - 0x00015F 00:814F: 7B 86     .word off_07_867B_98
- D 0 - I - 0x000161 00:8151: 9B 86     .word off_07_869B_99



off_07_8153_00:
off_07_8153_01:
- D 0 - I - 0x000163 00:8153: 81        .byte $81   ; counter
- D 0 - I - 0x000164 00:8154: 03        .byte $03   ; spr_A
- D 0 - I - 0x000165 00:8155: F8        .byte $F8, $F5, $F8   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x000168 00:8158: 01        .byte $01   ; 
- D 0 - I - 0x000169 00:8159: 43        .byte $43   ; 
- D 0 - I - 0x00016A 00:815A: 00        .byte $00, $F5, $F8   ; 



off_07_815D_02:
- D 0 - I - 0x00016D 00:815D: 82        .byte $82   ; counter
- D 0 - I - 0x00016E 00:815E: 03        .byte $03   ; spr_A
- D 0 - I - 0x00016F 00:815F: F0        .byte $F0, $F7, $F0   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x000172 00:8162: F8        .byte $F8, $F9, $F0   ; 

- D 0 - I - 0x000175 00:8165: 82        .byte $82   ; 
- D 0 - I - 0x000176 00:8166: 43        .byte $43   ; 
- D 0 - I - 0x000177 00:8167: 08        .byte $08, $F7, $F0   ; 
- D 0 - I - 0x00017A 00:816A: 00        .byte $00, $F9, $F0   ; 

- D 0 - I - 0x00017D 00:816D: 82        .byte $82   ; 
- D 0 - I - 0x00017E 00:816E: 83        .byte $83   ; 
- D 0 - I - 0x00017F 00:816F: F0        .byte $F0, $F7, $00   ; 
- D 0 - I - 0x000182 00:8172: F8        .byte $F8, $F9, $00   ; 

- D 0 - I - 0x000185 00:8175: 02        .byte $02   ; 
- D 0 - I - 0x000186 00:8176: C3        .byte $C3   ; 
- D 0 - I - 0x000187 00:8177: 08        .byte $08, $F7, $00   ; 
- D 0 - I - 0x00018A 00:817A: 00        .byte $00, $F9, $00   ; 



off_07_817D_03:
- D 0 - I - 0x00018D 00:817D: 82        .byte $82   ; counter
- D 0 - I - 0x00018E 00:817E: 03        .byte $03   ; spr_A
- D 0 - I - 0x00018F 00:817F: F0        .byte $F0, $FB, $F0   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x000192 00:8182: F8        .byte $F8, $FD, $F0   ; 

- D 0 - I - 0x000195 00:8185: 82        .byte $82   ; 
- D 0 - I - 0x000196 00:8186: 43        .byte $43   ; 
- D 0 - I - 0x000197 00:8187: 08        .byte $08, $FB, $F0   ; 
- D 0 - I - 0x00019A 00:818A: 00        .byte $00, $FD, $F0   ; 

- D 0 - I - 0x00019D 00:818D: 82        .byte $82   ; 
- D 0 - I - 0x00019E 00:818E: 83        .byte $83   ; 
- D 0 - I - 0x00019F 00:818F: F0        .byte $F0, $FB, $00   ; 
- D 0 - I - 0x0001A2 00:8192: F8        .byte $F8, $FD, $00   ; 

- D 0 - I - 0x0001A5 00:8195: 02        .byte $02   ; 
- D 0 - I - 0x0001A6 00:8196: C3        .byte $C3   ; 
- D 0 - I - 0x0001A7 00:8197: 08        .byte $08, $FB, $00   ; 
- D 0 - I - 0x0001AA 00:819A: 00        .byte $00, $FD, $00   ; 



off_07_819D_04:
- D 0 - I - 0x0001AD 00:819D: 81        .byte $81   ; counter
- D 0 - I - 0x0001AE 00:819E: 03        .byte $03   ; spr_A
- D 0 - I - 0x0001AF 00:819F: F0        .byte $F0, $FF, $F0   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x0001B2 00:81A2: 81        .byte $81   ; 
- D 0 - I - 0x0001B3 00:81A3: 43        .byte $43   ; 
- D 0 - I - 0x0001B4 00:81A4: 08        .byte $08, $FF, $F0   ; 

- D 0 - I - 0x0001B7 00:81A7: 81        .byte $81   ; 
- D 0 - I - 0x0001B8 00:81A8: 83        .byte $83   ; 
- D 0 - I - 0x0001B9 00:81A9: F0        .byte $F0, $FF, $00   ; 

- D 0 - I - 0x0001BC 00:81AC: 01        .byte $01   ; 
- D 0 - I - 0x0001BD 00:81AD: C3        .byte $C3   ; 
- D 0 - I - 0x0001BE 00:81AE: 08        .byte $08, $FF, $00   ; 



off_07_81B1_05:
- D 0 - I - 0x0001C1 00:81B1: 01        .byte $01   ; counter
- D 0 - I - 0x0001C2 00:81B2: 03        .byte $03   ; spr_A
- D 0 - I - 0x0001C3 00:81B3: FC        .byte $FC, $F3, $F9   ; spr_X, spr_T, spr_Y



off_07_81B6_06:
- D 0 - I - 0x0001C6 00:81B6: 01        .byte $01   ; counter
- D 0 - I - 0x0001C7 00:81B7: 03        .byte $03   ; spr_A
- D 0 - I - 0x0001C8 00:81B8: FC        .byte $FC, $F1, $F9   ; spr_X, spr_T, spr_Y



off_07_81BB_07:
- D 0 - I - 0x0001CB 00:81BB: 01        .byte $01   ; counter
- D 0 - I - 0x0001CC 00:81BC: 00        .byte $00   ; spr_A
- D 0 - I - 0x0001CD 00:81BD: FC        .byte $FC, $F1, $F9   ; spr_X, spr_T, spr_Y



off_07_81C0_08:
- D 0 - I - 0x0001D0 00:81C0: 01        .byte $01   ; counter
- D 0 - I - 0x0001D1 00:81C1: 03        .byte $03   ; spr_A
- D 0 - I - 0x0001D2 00:81C2: FC        .byte $FC, $EF, $F9   ; spr_X, spr_T, spr_Y



off_07_81C5_09:
off_FF_81C5:
- D 0 - I - 0x0001D5 00:81C5: 01        .byte $01   ; counter
- D 0 - I - 0x0001D6 00:81C6: 00        .byte $00   ; spr_A
- D 0 - I - 0x0001D7 00:81C7: FC        .byte $FC, $ED, $F8   ; spr_X, spr_T, spr_Y



off_07_81CA_0A:
- D 0 - I - 0x0001DA 00:81CA: FF        .byte $FF   ; 
- D 0 - I - 0x0001DB 00:81CB: C5 81     .word off_FF_81C5



off_07_81CD_0B:
off_FF_81CD:
- D 0 - I - 0x0001DD 00:81CD: 01        .byte $01   ; counter
- D 0 - I - 0x0001DE 00:81CE: C0        .byte $C0   ; spr_A
- D 0 - I - 0x0001DF 00:81CF: FC        .byte $FC, $ED, $F8   ; spr_X, spr_T, spr_Y



off_07_81D2_0C:
- D 0 - I - 0x0001E2 00:81D2: FF        .byte $FF   ; 
- D 0 - I - 0x0001E3 00:81D3: CD 81     .word off_FF_81CD



off_07_81D5_0D:
- D 0 - I - 0x0001E5 00:81D5: 01        .byte $01   ; counter
- D 0 - I - 0x0001E6 00:81D6: 03        .byte $03   ; spr_A
- D 0 - I - 0x0001E7 00:81D7: FC        .byte $FC, $EB, $F6   ; spr_X, spr_T, spr_Y



off_07_81DA_0E:
- D 0 - I - 0x0001EA 00:81DA: 01        .byte $01   ; counter
- D 0 - I - 0x0001EB 00:81DB: 00        .byte $00   ; spr_A
- D 0 - I - 0x0001EC 00:81DC: FC        .byte $FC, $EB, $F6   ; spr_X, spr_T, spr_Y



off_07_81DF_0F:
- D 0 - I - 0x0001EF 00:81DF: 01        .byte $01   ; counter
- D 0 - I - 0x0001F0 00:81E0: 01        .byte $01   ; spr_A
- D 0 - I - 0x0001F1 00:81E1: FC        .byte $FC, $E9, $F8   ; spr_X, spr_T, spr_Y



off_07_81E4_10:
- D 0 - I - 0x0001F4 00:81E4: 01        .byte $01   ; counter
- D 0 - I - 0x0001F5 00:81E5: 03        .byte $03   ; spr_A
- D 0 - I - 0x0001F6 00:81E6: FC        .byte $FC, $E9, $F9   ; spr_X, spr_T, spr_Y



off_07_81E9_11:
off_FF_81E9:
- D 0 - I - 0x0001F9 00:81E9: 01        .byte $01   ; counter
- D 0 - I - 0x0001FA 00:81EA: 00        .byte $00   ; spr_A
- D 0 - I - 0x0001FB 00:81EB: FB        .byte $FB, $E7, $F9   ; spr_X, spr_T, spr_Y



off_07_81EE_12:
off_FF_81EE:
- D 0 - I - 0x0001FE 00:81EE: 81        .byte $81   ; counter
- D 0 - I - 0x0001FF 00:81EF: 00        .byte $00   ; spr_A
- D 0 - I - 0x000200 00:81F0: FB        .byte $FB, $E7, $F9   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x000203 00:81F3: 01        .byte $01   ; 
- D 0 - I - 0x000204 00:81F4: 03        .byte $03   ; 
- D 0 - I - 0x000205 00:81F5: F2        .byte $F2, $E1, $F9   ; 



off_07_81F8_13:
off_FF_81F8:
- D 0 - I - 0x000208 00:81F8: 81        .byte $81   ; counter
- D 0 - I - 0x000209 00:81F9: 00        .byte $00   ; spr_A
- D 0 - I - 0x00020A 00:81FA: FB        .byte $FB, $E7, $F9   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x00020D 00:81FD: 81        .byte $81   ; 
- D 0 - I - 0x00020E 00:81FE: 03        .byte $03   ; 
- D 0 - I - 0x00020F 00:81FF: EB        .byte $EB, $F5, $F9   ; 

- D 0 - I - 0x000212 00:8202: 01        .byte $01   ; 
- D 0 - I - 0x000213 00:8203: 43        .byte $43   ; 
- D 0 - I - 0x000214 00:8204: F3        .byte $F3, $F5, $F9   ; 



off_07_8207_14:
off_FF_8207:
- D 0 - I - 0x000217 00:8207: 81        .byte $81   ; counter
- D 0 - I - 0x000218 00:8208: 00        .byte $00   ; spr_A
- D 0 - I - 0x000219 00:8209: FB        .byte $FB, $E7, $F9   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x00021C 00:820C: 01        .byte $01   ; 
- D 0 - I - 0x00021D 00:820D: 03        .byte $03   ; 
- D 0 - I - 0x00021E 00:820E: EB        .byte $EB, $E1, $F9   ; 



off_07_8211_15:
off_FF_8211:
- D 0 - I - 0x000221 00:8211: 01        .byte $01   ; counter
- D 0 - I - 0x000222 00:8212: 00        .byte $00   ; spr_A
- D 0 - I - 0x000223 00:8213: FB        .byte $FB, $E5, $FA   ; spr_X, spr_T, spr_Y



off_07_8216_16:
off_FF_8216:
- D 0 - I - 0x000226 00:8216: 81        .byte $81   ; counter
- D 0 - I - 0x000227 00:8217: 00        .byte $00   ; spr_A
- D 0 - I - 0x000228 00:8218: FB        .byte $FB, $E5, $FA   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x00022B 00:821B: 01        .byte $01   ; 
- D 0 - I - 0x00022C 00:821C: 03        .byte $03   ; 
- D 0 - I - 0x00022D 00:821D: F6        .byte $F6, $E1, $00   ; 



off_07_8220_17:
off_FF_8220:
- D 0 - I - 0x000230 00:8220: 81        .byte $81   ; counter
- D 0 - I - 0x000231 00:8221: 00        .byte $00   ; spr_A
- D 0 - I - 0x000232 00:8222: FB        .byte $FB, $E5, $FA   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x000235 00:8225: 81        .byte $81   ; 
- D 0 - I - 0x000236 00:8226: 03        .byte $03   ; 
- D 0 - I - 0x000237 00:8227: EF        .byte $EF, $F5, $02   ; 

- D 0 - I - 0x00023A 00:822A: 01        .byte $01   ; 
- D 0 - I - 0x00023B 00:822B: 43        .byte $43   ; 
- D 0 - I - 0x00023C 00:822C: F7        .byte $F7, $F5, $02   ; 



off_07_822F_18:
off_FF_822F:
- D 0 - I - 0x00023F 00:822F: 81        .byte $81   ; counter
- D 0 - I - 0x000240 00:8230: 00        .byte $00   ; spr_A
- D 0 - I - 0x000241 00:8231: FB        .byte $FB, $E5, $FA   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x000244 00:8234: 01        .byte $01   ; 
- D 0 - I - 0x000245 00:8235: 03        .byte $03   ; 
- D 0 - I - 0x000246 00:8236: F0        .byte $F0, $E1, $06   ; 



off_07_8239_19:
- D 0 - I - 0x000249 00:8239: 01        .byte $01   ; counter
- D 0 - I - 0x00024A 00:823A: 00        .byte $00   ; spr_A
- D 0 - I - 0x00024B 00:823B: FC        .byte $FC, $E3, $FB   ; spr_X, spr_T, spr_Y



off_07_823E_1A:
- D 0 - I - 0x00024E 00:823E: 81        .byte $81   ; counter
- D 0 - I - 0x00024F 00:823F: 00        .byte $00   ; spr_A
- D 0 - I - 0x000250 00:8240: FC        .byte $FC, $E3, $FB   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x000253 00:8243: 01        .byte $01   ; 
- D 0 - I - 0x000254 00:8244: 03        .byte $03   ; 
- D 0 - I - 0x000255 00:8245: FC        .byte $FC, $E1, $04   ; 



off_07_8248_1B:
- D 0 - I - 0x000258 00:8248: 81        .byte $81   ; counter
- D 0 - I - 0x000259 00:8249: 00        .byte $00   ; spr_A
- D 0 - I - 0x00025A 00:824A: FC        .byte $FC, $E3, $FB   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x00025D 00:824D: 81        .byte $81   ; counter
- D 0 - I - 0x00025E 00:824E: 03        .byte $03   ; spr_A
- D 0 - I - 0x00025F 00:824F: F8        .byte $F8, $F5, $06   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x000262 00:8252: 01        .byte $01   ; 
- D 0 - I - 0x000263 00:8253: 43        .byte $43   ; 
- D 0 - I - 0x000264 00:8254: 00        .byte $00, $F5, $06   ; 



off_07_8257_1C:
- D 0 - I - 0x000267 00:8257: 81        .byte $81   ; counter
- D 0 - I - 0x000268 00:8258: 00        .byte $00   ; spr_A
- D 0 - I - 0x000269 00:8259: FC        .byte $FC, $E3, $FB   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x00026C 00:825C: 01        .byte $01   ; 
- D 0 - I - 0x00026D 00:825D: 03        .byte $03   ; 
- D 0 - I - 0x00026E 00:825E: FC        .byte $FC, $E1, $0C   ; 



off_07_8261_1D:
- D 0 - I - 0x000271 00:8261: FF        .byte $FF   ; 
- D 0 - I - 0x000272 00:8262: 11 82     .word off_FF_8211



off_07_8264_1E:
- D 0 - I - 0x000274 00:8264: FF        .byte $FF   ; 
- D 0 - I - 0x000275 00:8265: 16 82     .word off_FF_8216



off_07_8267_1F:
- D 0 - I - 0x000277 00:8267: FF        .byte $FF   ; 
- D 0 - I - 0x000278 00:8268: 20 82     .word off_FF_8220



off_07_826A_20:
- D 0 - I - 0x00027A 00:826A: FF        .byte $FF   ; 
- D 0 - I - 0x00027B 00:826B: 2F 82     .word off_FF_822F



off_07_826D_21:
- D 0 - I - 0x00027D 00:826D: FF        .byte $FF   ; 
- D 0 - I - 0x00027E 00:826E: E9 81     .word off_FF_81E9



off_07_8270_22:
- D 0 - I - 0x000280 00:8270: FF        .byte $FF   ; 
- D 0 - I - 0x000281 00:8271: EE 81     .word off_FF_81EE



off_07_8273_23:
- D 0 - I - 0x000283 00:8273: FF        .byte $FF   ; 
- D 0 - I - 0x000284 00:8274: F8 81     .word off_FF_81F8



off_07_8276_24:
- D 0 - I - 0x000286 00:8276: FF        .byte $FF   ; 
- D 0 - I - 0x000287 00:8277: 07 82     .word off_FF_8207



off_07_8279_25:
off_FF_8279:
- D 0 - I - 0x000289 00:8279: 01        .byte $01   ; counter
- D 0 - I - 0x00028A 00:827A: C0        .byte $C0   ; spr_A
- D 0 - I - 0x00028B 00:827B: FE        .byte $FE, $E5, $F7   ; spr_X, spr_T, spr_Y



off_07_827E_26:
off_FF_827E:
- D 0 - I - 0x00028E 00:827E: 81        .byte $81   ; counter
- D 0 - I - 0x00028F 00:827F: C0        .byte $C0   ; spr_A
- D 0 - I - 0x000290 00:8280: FE        .byte $FE, $E5, $F7   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x000293 00:8283: 01        .byte $01   ; 
- D 0 - I - 0x000294 00:8284: C3        .byte $C3   ; 
- D 0 - I - 0x000295 00:8285: 04        .byte $04, $E1, $F1   ; 



off_07_8288_27:
off_FF_8288:
- D 0 - I - 0x000298 00:8288: 81        .byte $81   ; counter
- D 0 - I - 0x000299 00:8289: C0        .byte $C0   ; spr_A
- D 0 - I - 0x00029A 00:828A: FE        .byte $FE, $E5, $F7   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x00029D 00:828D: 81        .byte $81   ; 
- D 0 - I - 0x00029E 00:828E: 03        .byte $03   ; 
- D 0 - I - 0x00029F 00:828F: 02        .byte $02, $F5, $EE   ; 

- D 0 - I - 0x0002A2 00:8292: 01        .byte $01   ; 
- D 0 - I - 0x0002A3 00:8293: 43        .byte $43   ; 
- D 0 - I - 0x0002A4 00:8294: 0A        .byte $0A, $F5, $EE   ; 



off_07_8297_28:
off_FF_8297:
- D 0 - I - 0x0002A7 00:8297: 81        .byte $81   ; counter
- D 0 - I - 0x0002A8 00:8298: C0        .byte $C0   ; spr_A
- D 0 - I - 0x0002A9 00:8299: FE        .byte $FE, $E5, $F7   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x0002AC 00:829C: 01        .byte $01   ; 
- D 0 - I - 0x0002AD 00:829D: C3        .byte $C3   ; 
- D 0 - I - 0x0002AE 00:829E: 09        .byte $09, $E1, $EC   ; 



off_07_82A1_29:
- D 0 - I - 0x0002B1 00:82A1: 01        .byte $01   ; counter
- D 0 - I - 0x0002B2 00:82A2: 80        .byte $80   ; spr_A
- D 0 - I - 0x0002B3 00:82A3: FC        .byte $FC, $E3, $F6   ; spr_X, spr_T, spr_Y



off_07_82A6_2A:
- D 0 - I - 0x0002B6 00:82A6: 81        .byte $81   ; counter
- D 0 - I - 0x0002B7 00:82A7: 80        .byte $80   ; spr_A
- D 0 - I - 0x0002B8 00:82A8: FC        .byte $FC, $E3, $F6   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x0002BB 00:82AB: 01        .byte $01   ; 
- D 0 - I - 0x0002BC 00:82AC: 83        .byte $83   ; 
- D 0 - I - 0x0002BD 00:82AD: FC        .byte $FC, $E1, $EE   ; 



off_07_82B0_2B:
- D 0 - I - 0x0002C0 00:82B0: 81        .byte $81   ; counter
- D 0 - I - 0x0002C1 00:82B1: 80        .byte $80   ; spr_A
- D 0 - I - 0x0002C2 00:82B2: FC        .byte $FC, $E3, $F6   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x0002C5 00:82B5: 81        .byte $81   ; 
- D 0 - I - 0x0002C6 00:82B6: 03        .byte $03   ; 
- D 0 - I - 0x0002C7 00:82B7: F8        .byte $F8, $F5, $EB   ; 

- D 0 - I - 0x0002CA 00:82BA: 01        .byte $01   ; 
- D 0 - I - 0x0002CB 00:82BB: 43        .byte $43   ; 
- D 0 - I - 0x0002CC 00:82BC: 00        .byte $00, $F5, $EB   ; 



off_07_82BF_2C:
- D 0 - I - 0x0002CF 00:82BF: 81        .byte $81   ; counter
- D 0 - I - 0x0002D0 00:82C0: 80        .byte $80   ; spr_A
- D 0 - I - 0x0002D1 00:82C1: FC        .byte $FC, $E3, $F6   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x0002D4 00:82C4: 01        .byte $01   ; 
- D 0 - I - 0x0002D5 00:82C5: 83        .byte $83   ; 
- D 0 - I - 0x0002D6 00:82C6: FC        .byte $FC, $E1, $E4   ; 



off_07_82C9_2D:
- D 0 - I - 0x0002D9 00:82C9: FF        .byte $FF   ; 
- D 0 - I - 0x0002DA 00:82CA: 79 82     .word off_FF_8279



off_07_82CC_2E:
- D 0 - I - 0x0002DC 00:82CC: FF        .byte $FF   ; 
- D 0 - I - 0x0002DD 00:82CD: 7E 82     .word off_FF_827E



off_07_82CF_2F:
- D 0 - I - 0x0002DF 00:82CF: FF        .byte $FF   ; 
- D 0 - I - 0x0002E0 00:82D0: 88 82     .word off_FF_8288



off_07_82D2_30:
- D 0 - I - 0x0002E2 00:82D2: FF        .byte $FF   ; 
- D 0 - I - 0x0002E3 00:82D3: 97 82     .word off_FF_8297



off_07_82D5_31:
off_FF_82D5:
- D 0 - I - 0x0002E5 00:82D5: 02        .byte $02   ; counter
- D 0 - I - 0x0002E6 00:82D6: 03        .byte $03   ; spr_A
- D 0 - I - 0x0002E7 00:82D7: F6        .byte $F6, $DD, $FA   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x0002EA 00:82DA: FE        .byte $FE, $DF, $FA   ; 



off_07_82DD_32:
off_FF_82DD:
- D 0 - I - 0x0002ED 00:82DD: 03        .byte $03   ; counter
- D 0 - I - 0x0002EE 00:82DE: 03        .byte $03   ; spr_A
- D 0 - I - 0x0002EF 00:82DF: F6        .byte $F6, $DD, $FA   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x0002F2 00:82E2: FE        .byte $FE, $DF, $FA   ; 
- D 0 - I - 0x0002F5 00:82E5: EE        .byte $EE, $E1, $FA   ; 



off_07_82E8_33:
off_FF_82E8:
- D 0 - I - 0x0002F8 00:82E8: 83        .byte $83   ; counter
- D 0 - I - 0x0002F9 00:82E9: 03        .byte $03   ; spr_A
- D 0 - I - 0x0002FA 00:82EA: F6        .byte $F6, $DD, $FA   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x0002FD 00:82ED: FE        .byte $FE, $DF, $FA   ; 
- D 0 - I - 0x000300 00:82F0: E6        .byte $E6, $F5, $FA   ; 

- D 0 - I - 0x000303 00:82F3: 01        .byte $01   ; 
- D 0 - I - 0x000304 00:82F4: 43        .byte $43   ; 
- D 0 - I - 0x000305 00:82F5: EE        .byte $EE, $F5, $FA   ; 



off_07_82F8_34:
off_FF_82F8:
- D 0 - I - 0x000308 00:82F8: 03        .byte $03   ; counter
- D 0 - I - 0x000309 00:82F9: 03        .byte $03   ; spr_A
- D 0 - I - 0x00030A 00:82FA: F6        .byte $F6, $DD, $FA   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x00030D 00:82FD: FE        .byte $FE, $DF, $FA   ; 
- D 0 - I - 0x000310 00:8300: E9        .byte $E9, $E1, $FA   ; 



off_07_8303_35:
off_FF_8303:
- D 0 - I - 0x000313 00:8303: 03        .byte $03   ; counter
- D 0 - I - 0x000314 00:8304: 03        .byte $03   ; spr_A
- D 0 - I - 0x000315 00:8305: F6        .byte $F6, $DD, $FA   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x000318 00:8308: FE        .byte $FE, $DF, $FA   ; 
- D 0 - I - 0x00031B 00:830B: E1        .byte $E1, $E1, $FA   ; 



off_07_830E_36:
off_FF_830E:
- D 0 - I - 0x00031E 00:830E: 03        .byte $03   ; counter
- D 0 - I - 0x00031F 00:830F: 03        .byte $03   ; spr_A
- D 0 - I - 0x000320 00:8310: F6        .byte $F6, $DD, $FA   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x000323 00:8313: FE        .byte $FE, $DF, $FA   ; 
- D 0 - I - 0x000326 00:8316: DF        .byte $DF, $EF, $FA   ; 



off_07_8319_37:
off_FF_8319:
- D 0 - I - 0x000329 00:8319: 02        .byte $02   ; counter
- D 0 - I - 0x00032A 00:831A: 03        .byte $03   ; spr_A
- D 0 - I - 0x00032B 00:831B: F5        .byte $F5, $D9, $FC   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x00032E 00:831E: FD        .byte $FD, $DB, $FC   ; 



off_07_8321_38:
off_FF_8321:
- D 0 - I - 0x000331 00:8321: 03        .byte $03   ; counter
- D 0 - I - 0x000332 00:8322: 03        .byte $03   ; spr_A
- D 0 - I - 0x000333 00:8323: FD        .byte $FD, $DB, $FC   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x000336 00:8326: F1        .byte $F1, $E1, $04   ; 
- D 0 - I - 0x000339 00:8329: F5        .byte $F5, $D9, $FC   ; 



off_07_832C_39:
off_FF_832C:
- D 0 - I - 0x00033C 00:832C: 83        .byte $83   ; counter
- D 0 - I - 0x00033D 00:832D: 03        .byte $03   ; spr_A
- D 0 - I - 0x00033E 00:832E: F5        .byte $F5, $D9, $FC   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x000341 00:8331: FD        .byte $FD, $DB, $FC   ; 
- D 0 - I - 0x000344 00:8334: EB        .byte $EB, $F5, $06   ; 

- D 0 - I - 0x000347 00:8337: 01        .byte $01   ; counter
- D 0 - I - 0x000348 00:8338: 43        .byte $43   ; spr_A
- D 0 - I - 0x000349 00:8339: F3        .byte $F3, $F5, $06   ; spr_X, spr_T, spr_Y



off_07_833C_3A:
off_FF_833C:
- D 0 - I - 0x00034C 00:833C: 03        .byte $03   ; counter
- D 0 - I - 0x00034D 00:833D: 03        .byte $03   ; spr_A
- D 0 - I - 0x00034E 00:833E: F5        .byte $F5, $D9, $FC   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x000351 00:8341: FD        .byte $FD, $DB, $FC   ; 
- D 0 - I - 0x000354 00:8344: EE        .byte $EE, $E1, $06   ; 



off_07_8347_3B:
off_FF_8347:
- D 0 - I - 0x000357 00:8347: 03        .byte $03   ; counter
- D 0 - I - 0x000358 00:8348: 03        .byte $03   ; spr_A
- D 0 - I - 0x000359 00:8349: F5        .byte $F5, $D9, $FC   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x00035C 00:834C: FD        .byte $FD, $DB, $FC   ; 
- D 0 - I - 0x00035F 00:834F: E9        .byte $E9, $E1, $0C   ; 



off_07_8352_3C:
off_FF_8352:
- D 0 - I - 0x000362 00:8352: 03        .byte $03   ; counter
- D 0 - I - 0x000363 00:8353: 03        .byte $03   ; spr_A
- D 0 - I - 0x000364 00:8354: F5        .byte $F5, $D9, $FC   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x000367 00:8357: FD        .byte $FD, $DB, $FC   ; 
- D 0 - I - 0x00036A 00:835A: E6        .byte $E6, $EF, $0E   ; 



off_07_835D_3D:
- D 0 - I - 0x00036D 00:835D: 01        .byte $01   ; counter
- D 0 - I - 0x00036E 00:835E: 03        .byte $03   ; spr_A
- D 0 - I - 0x00036F 00:835F: FC        .byte $FC, $D7, $FB   ; spr_X, spr_T, spr_Y



off_07_8362_3E:
- D 0 - I - 0x000372 00:8362: 02        .byte $02   ; counter
- D 0 - I - 0x000373 00:8363: 03        .byte $03   ; spr_A
- D 0 - I - 0x000374 00:8364: FC        .byte $FC, $D7, $FB   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x000377 00:8367: FC        .byte $FC, $E1, $07   ; 



off_07_836A_3F:
- D 0 - I - 0x00037A 00:836A: 82        .byte $82   ; counter
- D 0 - I - 0x00037B 00:836B: 03        .byte $03   ; spr_A
- D 0 - I - 0x00037C 00:836C: FC        .byte $FC, $D7, $FB   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x00037F 00:836F: F8        .byte $F8, $F5, $0B   ; 

- D 0 - I - 0x000382 00:8372: 01        .byte $01   ; 
- D 0 - I - 0x000383 00:8373: 43        .byte $43   ; 
- D 0 - I - 0x000384 00:8374: 00        .byte $00, $F5, $0B   ; 



off_07_8377_40:
- D 0 - I - 0x000387 00:8377: 02        .byte $02   ; counter
- D 0 - I - 0x000388 00:8378: 03        .byte $03   ; spr_A
- D 0 - I - 0x000389 00:8379: FC        .byte $FC, $D7, $FB   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x00038C 00:837C: FC        .byte $FC, $E1, $0B   ; 



off_07_837F_41:
- D 0 - I - 0x00038F 00:837F: 02        .byte $02   ; counter
- D 0 - I - 0x000390 00:8380: 03        .byte $03   ; spr_A
- D 0 - I - 0x000391 00:8381: FC        .byte $FC, $D7, $FB   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x000394 00:8384: FC        .byte $FC, $E1, $0F   ; 



off_07_8387_42:
- D 0 - I - 0x000397 00:8387: 02        .byte $02   ; counter
- D 0 - I - 0x000398 00:8388: 03        .byte $03   ; spr_A
- D 0 - I - 0x000399 00:8389: FC        .byte $FC, $D7, $FB   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x00039C 00:838C: FC        .byte $FC, $EF, $13   ; 



off_07_838F_43:
- D 0 - I - 0x00039F 00:838F: FF        .byte $FF   ; 
- D 0 - I - 0x0003A0 00:8390: 19 83     .word off_FF_8319



off_07_8392_44:
- D 0 - I - 0x0003A2 00:8392: FF        .byte $FF   ; 
- D 0 - I - 0x0003A3 00:8393: 21 83     .word off_FF_8321



off_07_8395_45:
- D 0 - I - 0x0003A5 00:8395: FF        .byte $FF   ; 
- D 0 - I - 0x0003A6 00:8396: 2C 83     .word off_FF_832C



off_07_8398_46:
- D 0 - I - 0x0003A8 00:8398: FF        .byte $FF   ; 
- D 0 - I - 0x0003A9 00:8399: 3C 83     .word off_FF_833C



off_07_839B_47:
- D 0 - I - 0x0003AB 00:839B: FF        .byte $FF   ; 
- D 0 - I - 0x0003AC 00:839C: 47 83     .word off_FF_8347



off_07_839E_48:
- D 0 - I - 0x0003AE 00:839E: FF        .byte $FF   ; 
- D 0 - I - 0x0003AF 00:839F: 52 83     .word off_FF_8352



off_07_83A1_49:
- D 0 - I - 0x0003B1 00:83A1: FF        .byte $FF   ; 
- D 0 - I - 0x0003B2 00:83A2: D5 82     .word off_FF_82D5



off_07_83A4_4A:
- D 0 - I - 0x0003B4 00:83A4: FF        .byte $FF   ; 
- D 0 - I - 0x0003B5 00:83A5: DD 82     .word off_FF_82DD



off_07_83A7_4B:
- D 0 - I - 0x0003B7 00:83A7: FF        .byte $FF   ; 
- D 0 - I - 0x0003B8 00:83A8: E8 82     .word off_FF_82E8



off_07_83AA_4C:
- D 0 - I - 0x0003BA 00:83AA: FF        .byte $FF   ; 
- D 0 - I - 0x0003BB 00:83AB: F8 82     .word off_FF_82F8



off_07_83AD_4D:
- D 0 - I - 0x0003BD 00:83AD: FF        .byte $FF   ; 
- D 0 - I - 0x0003BE 00:83AE: 03 83     .word off_FF_8303



off_07_83B0_4E:
- D 0 - I - 0x0003C0 00:83B0: FF        .byte $FF   ; 
- D 0 - I - 0x0003C1 00:83B1: 0E 83     .word off_FF_830E



off_07_83B3_4F:
off_FF_83B3:
- D 0 - I - 0x0003C3 00:83B3: 02        .byte $02   ; counter
- D 0 - I - 0x0003C4 00:83B4: C3        .byte $C3   ; spr_A
- D 0 - I - 0x0003C5 00:83B5: FC        .byte $FC, $DB, $F5   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x0003C8 00:83B8: 04        .byte $04, $D9, $F5   ; 



off_07_83BB_50:
off_FF_83BB:
- D 0 - I - 0x0003CB 00:83BB: 82        .byte $82   ; counter
- D 0 - I - 0x0003CC 00:83BC: C3        .byte $C3   ; spr_A
- D 0 - I - 0x0003CD 00:83BD: FC        .byte $FC, $DB, $F5   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x0003D0 00:83C0: 04        .byte $04, $D9, $F5   ; 

- D 0 - I - 0x0003D3 00:83C3: 01        .byte $01   ; 
- D 0 - I - 0x0003D4 00:83C4: 03        .byte $03   ; 
- D 0 - I - 0x0003D5 00:83C5: 07        .byte $07, $E1, $EE   ; 



off_07_83C8_51:
off_FF_83C8:
- D 0 - I - 0x0003D8 00:83C8: 82        .byte $82   ; counter
- D 0 - I - 0x0003D9 00:83C9: C3        .byte $C3   ; spr_A
- D 0 - I - 0x0003DA 00:83CA: FC        .byte $FC, $DB, $F5   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x0003DD 00:83CD: 04        .byte $04, $D9, $F5   ; 

- D 0 - I - 0x0003E0 00:83D0: 81        .byte $81   ; 
- D 0 - I - 0x0003E1 00:83D1: 03        .byte $03   ; 
- D 0 - I - 0x0003E2 00:83D2: 06        .byte $06, $F5, $EA   ; 

- D 0 - I - 0x0003E5 00:83D5: 01        .byte $01   ; 
- D 0 - I - 0x0003E6 00:83D6: 43        .byte $43   ; 
- D 0 - I - 0x0003E7 00:83D7: 0E        .byte $0E, $F5, $EA   ; 



off_07_83DA_52:
off_FF_83DA:
- D 0 - I - 0x0003EA 00:83DA: 82        .byte $82   ; counter
- D 0 - I - 0x0003EB 00:83DB: C3        .byte $C3   ; spr_A
- D 0 - I - 0x0003EC 00:83DC: FC        .byte $FC, $DB, $F5   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x0003EF 00:83DF: 04        .byte $04, $D9, $F5   ; 

- D 0 - I - 0x0003F2 00:83E2: 01        .byte $01   ; 
- D 0 - I - 0x0003F3 00:83E3: 43        .byte $43   ; 
- D 0 - I - 0x0003F4 00:83E4: 0A        .byte $0A, $E1, $EA   ; 



off_07_83E7_53:
off_FF_83E7:
- D 0 - I - 0x0003F7 00:83E7: 82        .byte $82   ; counter
- D 0 - I - 0x0003F8 00:83E8: C3        .byte $C3   ; spr_A
- D 0 - I - 0x0003F9 00:83E9: FC        .byte $FC, $DB, $F5   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x0003FC 00:83EC: 04        .byte $04, $D9, $F5   ; 

- D 0 - I - 0x0003FF 00:83EF: 01        .byte $01   ; 
- D 0 - I - 0x000400 00:83F0: 43        .byte $43   ; 
- D 0 - I - 0x000401 00:83F1: 0F        .byte $0F, $E1, $E4   ; 



off_07_83F4_54:
off_FF_83F4:
- D 0 - I - 0x000404 00:83F4: 82        .byte $82   ; counter
- D 0 - I - 0x000405 00:83F5: C3        .byte $C3   ; spr_A
- D 0 - I - 0x000406 00:83F6: FC        .byte $FC, $DB, $F5   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x000409 00:83F9: 04        .byte $04, $D9, $F5   ; 

- D 0 - I - 0x00040C 00:83FC: 01        .byte $01   ; 
- D 0 - I - 0x00040D 00:83FD: 43        .byte $43   ; 
- D 0 - I - 0x00040E 00:83FE: 12        .byte $12, $EF, $E2   ; 



off_07_8401_55:
- D 0 - I - 0x000411 00:8401: 01        .byte $01   ; counter
- D 0 - I - 0x000412 00:8402: 83        .byte $83   ; spr_A
- D 0 - I - 0x000413 00:8403: FC        .byte $FC, $D7, $F6   ; spr_X, spr_T, spr_Y



off_07_8406_56:
- D 0 - I - 0x000416 00:8406: 02        .byte $02   ; counter
- D 0 - I - 0x000417 00:8407: 83        .byte $83   ; spr_A
- D 0 - I - 0x000418 00:8408: FC        .byte $FC, $D7, $F6   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x00041B 00:840B: FC        .byte $FC, $E1, $EA   ; 



off_07_840E_57:
- D 0 - I - 0x00041E 00:840E: 81        .byte $81   ; counter
- D 0 - I - 0x00041F 00:840F: 83        .byte $83   ; spr_A
- D 0 - I - 0x000420 00:8410: FC        .byte $FC, $D7, $F6   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x000423 00:8413: 81        .byte $81   ; 
- D 0 - I - 0x000424 00:8414: 03        .byte $03   ; 
- D 0 - I - 0x000425 00:8415: F8        .byte $F8, $F5, $E6   ; 

- D 0 - I - 0x000428 00:8418: 01        .byte $01   ; 
- D 0 - I - 0x000429 00:8419: 43        .byte $43   ; 
- D 0 - I - 0x00042A 00:841A: 00        .byte $00, $F5, $E6   ; 



off_07_841D_58:
- D 0 - I - 0x00042D 00:841D: 02        .byte $02   ; counter
- D 0 - I - 0x00042E 00:841E: 83        .byte $83   ; spr_A
- D 0 - I - 0x00042F 00:841F: FC        .byte $FC, $D7, $F6   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x000432 00:8422: FC        .byte $FC, $E1, $E6   ; 



off_07_8425_59:
- D 0 - I - 0x000435 00:8425: 02        .byte $02   ; counter
- D 0 - I - 0x000436 00:8426: 83        .byte $83   ; spr_A
- D 0 - I - 0x000437 00:8427: FC        .byte $FC, $D7, $F6   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x00043A 00:842A: FC        .byte $FC, $E1, $DA   ; 



off_07_842D_5A:
- D 0 - I - 0x00043D 00:842D: 02        .byte $02   ; counter
- D 0 - I - 0x00043E 00:842E: 83        .byte $83   ; spr_A
- D 0 - I - 0x00043F 00:842F: FC        .byte $FC, $D7, $F6   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x000442 00:8432: FC        .byte $FC, $EF, $D6   ; 



off_07_8435_5B:
- D 0 - I - 0x000445 00:8435: FF        .byte $FF   ; 
- D 0 - I - 0x000446 00:8436: B3 83     .word off_FF_83B3



off_07_8438_5C:
- D 0 - I - 0x000448 00:8438: FF        .byte $FF   ; 
- D 0 - I - 0x000449 00:8439: BB 83     .word off_FF_83BB



off_07_843B_5D:
- D 0 - I - 0x00044B 00:843B: FF        .byte $FF   ; 
- D 0 - I - 0x00044C 00:843C: C8 83     .word off_FF_83C8



off_07_843E_5E:
- D 0 - I - 0x00044E 00:843E: FF        .byte $FF   ; 
- D 0 - I - 0x00044F 00:843F: DA 83     .word off_FF_83DA



off_07_8441_5F:
- D 0 - I - 0x000451 00:8441: FF        .byte $FF   ; 
- D 0 - I - 0x000452 00:8442: E7 83     .word off_FF_83E7



off_07_8444_60:
- D 0 - I - 0x000454 00:8444: FF        .byte $FF   ; 
- D 0 - I - 0x000455 00:8445: F4 83     .word off_FF_83F4



off_07_8447_61:
off_FF_8447:
- D 0 - I - 0x000457 00:8447: 81        .byte $81   ; counter
- D 0 - I - 0x000458 00:8448: 00        .byte $00   ; spr_A
- D 0 - I - 0x000459 00:8449: FB        .byte $FB, $E7, $F9   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x00045C 00:844C: 01        .byte $01   ; 
- D 0 - I - 0x00045D 00:844D: 03        .byte $03   ; 
- D 0 - I - 0x00045E 00:844E: E5        .byte $E5, $EF, $F9   ; 



off_07_8451_62:
off_FF_8451:
- D 0 - I - 0x000461 00:8451: 81        .byte $81   ; counter
- D 0 - I - 0x000462 00:8452: 00        .byte $00   ; spr_A
- D 0 - I - 0x000463 00:8453: FB        .byte $FB, $E5, $FA   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x000466 00:8456: 01        .byte $01   ; 
- D 0 - I - 0x000467 00:8457: 03        .byte $03   ; 
- D 0 - I - 0x000468 00:8458: ED        .byte $ED, $EF, $0A   ; 



off_07_845B_63:
- D 0 - I - 0x00046B 00:845B: 81        .byte $81   ; counter
- D 0 - I - 0x00046C 00:845C: 00        .byte $00   ; spr_A
- D 0 - I - 0x00046D 00:845D: FC        .byte $FC, $E3, $FB   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x000470 00:8460: 01        .byte $01   ; 
- D 0 - I - 0x000471 00:8461: 03        .byte $03   ; 
- D 0 - I - 0x000472 00:8462: FC        .byte $FC, $EF, $10   ; 



off_07_8465_64:
- D 0 - I - 0x000475 00:8465: FF        .byte $FF   ; 
- D 0 - I - 0x000476 00:8466: 51 84     .word off_FF_8451



off_07_8468_65:
- D 0 - I - 0x000478 00:8468: FF        .byte $FF   ; 
- D 0 - I - 0x000479 00:8469: 47 84     .word off_FF_8447



off_07_846B_66:
off_FF_846B:
- D 0 - I - 0x00047B 00:846B: 81        .byte $81   ; counter
- D 0 - I - 0x00047C 00:846C: C0        .byte $C0   ; spr_A
- D 0 - I - 0x00047D 00:846D: FE        .byte $FE, $E5, $F7   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x000480 00:8470: 01        .byte $01   ; 
- D 0 - I - 0x000481 00:8471: 03        .byte $03   ; 
- D 0 - I - 0x000482 00:8472: 0D        .byte $0D, $EF, $E8   ; 



off_07_8475_67:
- D 0 - I - 0x000485 00:8475: 81        .byte $81   ; counter
- D 0 - I - 0x000486 00:8476: 80        .byte $80   ; spr_A
- D 0 - I - 0x000487 00:8477: FC        .byte $FC, $E3, $F6   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x00048A 00:847A: 01        .byte $01   ; 
- D 0 - I - 0x00048B 00:847B: 03        .byte $03   ; 
- D 0 - I - 0x00048C 00:847C: FC        .byte $FC, $EF, $DE   ; 



off_07_847F_68:
- D 0 - I - 0x00048F 00:847F: FF        .byte $FF   ; 
- D 0 - I - 0x000490 00:8480: 6B 84     .word off_FF_846B



off_07_8482_69:
off_07_8482_6A:
off_07_8482_6B:
- D 0 - I - 0x000492 00:8482: 81        .byte $81   ; counter
- D 0 - I - 0x000493 00:8483: 03        .byte $03   ; spr_A
- D 0 - I - 0x000494 00:8484: F8        .byte $F8, $C1, $F8   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x000497 00:8487: 01        .byte $01   ; 
- D 0 - I - 0x000498 00:8488: C3        .byte $C3   ; 
- D 0 - I - 0x000499 00:8489: 00        .byte $00, $C1, $F8   ; 



off_07_848C_6C:
off_07_848C_6D:
- - - - - - 0x00049C 00:848C: 01        .byte $01   ; counter
- - - - - - 0x00049D 00:848D: 00        .byte $00   ; spr_A
- - - - - - 0x00049E 00:848E: FC        .byte $FC, $F3, $F9   ; spr_X, spr_T, spr_Y



off_07_8491_6E:
- D 0 - I - 0x0004A1 00:8491: 81        .byte $81   ; counter
- D 0 - I - 0x0004A2 00:8492: 03        .byte $03   ; spr_A
- D 0 - I - 0x0004A3 00:8493: E9        .byte $E9, $D5, $F6   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x0004A6 00:8496: 81        .byte $81   ; 
- D 0 - I - 0x0004A7 00:8497: 43        .byte $43   ; 
- D 0 - I - 0x0004A8 00:8498: F1        .byte $F1, $D5, $F6   ; 

- D 0 - I - 0x0004AB 00:849B: 02        .byte $02   ; 
- D 0 - I - 0x0004AC 00:849C: 03        .byte $03   ; 
- D 0 - I - 0x0004AD 00:849D: FD        .byte $FD, $D1, $F8   ; 
- D 0 - I - 0x0004B0 00:84A0: 0B        .byte $0B, $D1, $F0   ; 



off_07_84A3_6F:
- D 0 - I - 0x0004B3 00:84A3: 81        .byte $81   ; counter
- D 0 - I - 0x0004B4 00:84A4: 03        .byte $03   ; spr_A
- D 0 - I - 0x0004B5 00:84A5: E9        .byte $E9, $D3, $F8   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x0004B8 00:84A8: 82        .byte $82   ; 
- D 0 - I - 0x0004B9 00:84A9: 43        .byte $43   ; 
- D 0 - I - 0x0004BA 00:84AA: F1        .byte $F1, $D3, $F8   ; 
- D 0 - I - 0x0004BD 00:84AD: 01        .byte $01, $D3, $F8   ; 

- D 0 - I - 0x0004C0 00:84B0: 02        .byte $02   ; 
- D 0 - I - 0x0004C1 00:84B1: 03        .byte $03   ; 
- D 0 - I - 0x0004C2 00:84B2: F9        .byte $F9, $D3, $F8   ; 
- D 0 - I - 0x0004C5 00:84B5: 0D        .byte $0D, $D1, $F8   ; 



off_07_84B8_70:
- D 0 - I - 0x0004C8 00:84B8: 83        .byte $83   ; counter
- D 0 - I - 0x0004C9 00:84B9: 03        .byte $03   ; spr_A
- D 0 - I - 0x0004CA 00:84BA: ED        .byte $ED, $D1, $F8   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x0004CD 00:84BD: F9        .byte $F9, $D5, $F6   ; 
- D 0 - I - 0x0004D0 00:84C0: 09        .byte $09, $D3, $F8   ; 

- D 0 - I - 0x0004D3 00:84C3: 02        .byte $02   ; 
- D 0 - I - 0x0004D4 00:84C4: 43        .byte $43   ; 
- D 0 - I - 0x0004D5 00:84C5: 01        .byte $01, $D5, $F6   ; 
- D 0 - I - 0x0004D8 00:84C8: 11        .byte $11, $D3, $F8   ; 



off_07_84CB_71:
- D 0 - I - 0x0004DB 00:84CB: 82        .byte $82   ; counter
- D 0 - I - 0x0004DC 00:84CC: 43        .byte $43   ; spr_A
- D 0 - I - 0x0004DD 00:84CD: 11        .byte $11, $D5, $F6   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x0004E0 00:84D0: 01        .byte $01, $D3, $F8   ; 

- D 0 - I - 0x0004E3 00:84D3: 03        .byte $03   ; 
- D 0 - I - 0x0004E4 00:84D4: 03        .byte $03   ; 
- D 0 - I - 0x0004E5 00:84D5: 09        .byte $09, $D5, $F6   ; 
- D 0 - I - 0x0004E8 00:84D8: F9        .byte $F9, $D3, $F8   ; 
- D 0 - I - 0x0004EB 00:84DB: ED        .byte $ED, $D1, $F1   ; 



off_07_84DE_72:
- D 0 - I - 0x0004EE 00:84DE: 83        .byte $83   ; counter
- D 0 - I - 0x0004EF 00:84DF: 03        .byte $03   ; spr_A
- D 0 - I - 0x0004F0 00:84E0: ED        .byte $ED, $D1, $F8   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x0004F3 00:84E3: FD        .byte $FD, $D1, $FA   ; 
- D 0 - I - 0x0004F6 00:84E6: 09        .byte $09, $D3, $F8   ; 

- D 0 - I - 0x0004F9 00:84E9: 01        .byte $01   ; 
- D 0 - I - 0x0004FA 00:84EA: 43        .byte $43   ; 
- D 0 - I - 0x0004FB 00:84EB: 11        .byte $11, $D3, $F8   ; 



off_07_84EE_73:
- - - - - - 0x0004FE 00:84EE: 82        .byte $82   ; counter
- - - - - - 0x0004FF 00:84EF: 43        .byte $43   ; spr_A
- - - - - - 0x000500 00:84F0: 0E        .byte $0E, $D1, $F9   ; spr_X, spr_T, spr_Y
- - - - - - 0x000503 00:84F3: F1        .byte $F1, $D3, $F8   ; 

- - - - - - 0x000506 00:84F6: 02        .byte $02   ; 
- - - - - - 0x000507 00:84F7: 03        .byte $03   ; 
- - - - - - 0x000508 00:84F8: E9        .byte $E9, $D3, $F8   ; 
- - - - - - 0x00050B 00:84FB: FD        .byte $FD, $D1, $F0   ; 



off_07_84FE_74:
- - - - - - 0x00050E 00:84FE: 02        .byte $02   ; counter
- - - - - - 0x00050F 00:84FF: 43        .byte $43   ; spr_A
- - - - - - 0x000510 00:8500: F5        .byte $F5, $D1, $F6   ; spr_X, spr_T, spr_Y
- - - - - - 0x000513 00:8503: 05        .byte $05, $D1, $F8   ; 



off_07_8506_75:
- - - - - - 0x000516 00:8506: 02        .byte $02   ; counter
- - - - - - 0x000517 00:8507: 03        .byte $03   ; spr_A
- - - - - - 0x000518 00:8508: F4        .byte $F4, $D1, $EF   ; spr_X, spr_T, spr_Y
- - - - - - 0x00051B 00:850B: 03        .byte $03, $D1, $F2   ; 



off_07_850E_76:
off_FF_850E:
- D 0 - I - 0x00051E 00:850E: 02        .byte $02   ; counter
- D 0 - I - 0x00051F 00:850F: 03        .byte $03   ; spr_A
- D 0 - I - 0x000520 00:8510: 09        .byte $09, $D1, $E1   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x000523 00:8513: E9        .byte $E9, $D3, $03   ; 



off_07_8516_77:
off_FF_8516:
- D 0 - I - 0x000526 00:8516: 82        .byte $82   ; counter
- D 0 - I - 0x000527 00:8517: 03        .byte $03   ; spr_A
- D 0 - I - 0x000528 00:8518: E9        .byte $E9, $D3, $01   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x00052B 00:851B: F9        .byte $F9, $D3, $F1   ; 

- D 0 - I - 0x00052E 00:851E: 03        .byte $03   ; 
- D 0 - I - 0x00052F 00:851F: 43        .byte $43   ; 
- D 0 - I - 0x000530 00:8520: F1        .byte $F1, $D3, $01   ; 
- D 0 - I - 0x000533 00:8523: 01        .byte $01, $D3, $F1   ; 
- D 0 - I - 0x000536 00:8526: 0C        .byte $0C, $D1, $E3   ; 



off_07_8529_78:
off_FF_8529:
- D 0 - I - 0x000539 00:8529: 82        .byte $82   ; counter
- D 0 - I - 0x00053A 00:852A: 03        .byte $03   ; spr_A
- D 0 - I - 0x00053B 00:852B: F9        .byte $F9, $D5, $F3   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x00053E 00:852E: 09        .byte $09, $D3, $E1   ; 

- D 0 - I - 0x000541 00:8531: 03        .byte $03   ; 
- D 0 - I - 0x000542 00:8532: 43        .byte $43   ; 
- D 0 - I - 0x000543 00:8533: ED        .byte $ED, $D1, $01   ; 
- D 0 - I - 0x000546 00:8536: 01        .byte $01, $D5, $F3   ; 
- D 0 - I - 0x000549 00:8539: 11        .byte $11, $D3, $E1   ; 



off_07_853C_79:
off_FF_853C:
- D 0 - I - 0x00054C 00:853C: 82        .byte $82   ; counter
- D 0 - I - 0x00054D 00:853D: 43        .byte $43   ; spr_A
- D 0 - I - 0x00054E 00:853E: 01        .byte $01, $D3, $F1   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x000551 00:8541: 11        .byte $11, $D5, $E3   ; 

- D 0 - I - 0x000554 00:8544: 03        .byte $03   ; 
- D 0 - I - 0x000555 00:8545: 03        .byte $03   ; 
- D 0 - I - 0x000556 00:8546: F9        .byte $F9, $D3, $F1   ; 
- D 0 - I - 0x000559 00:8549: 09        .byte $09, $D5, $E3   ; 
- D 0 - I - 0x00055C 00:854C: ED        .byte $ED, $D1, $FF   ; 



off_07_854F_7A:
off_FF_854F:
- D 0 - I - 0x00055F 00:854F: 83        .byte $83   ; counter
- D 0 - I - 0x000560 00:8550: 03        .byte $03   ; spr_A
- D 0 - I - 0x000561 00:8551: ED        .byte $ED, $D1, $01   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x000564 00:8554: FD        .byte $FD, $D1, $F1   ; 
- D 0 - I - 0x000567 00:8557: 09        .byte $09, $D3, $E1   ; 

- D 0 - I - 0x00056A 00:855A: 01        .byte $01   ; 
- D 0 - I - 0x00056B 00:855B: 43        .byte $43   ; 
- D 0 - I - 0x00056C 00:855C: 11        .byte $11, $D3, $E1   ; 



off_07_855F_7B:
off_FF_855F:
- - - - - - 0x00056F 00:855F: 81        .byte $81   ; counter
- - - - - - 0x000570 00:8560: 43        .byte $43   ; spr_A
- - - - - - 0x000571 00:8561: F1        .byte $F1, $D3, $01   ; spr_X, spr_T, spr_Y

- - - - - - 0x000574 00:8564: 03        .byte $03   ; 
- - - - - - 0x000575 00:8565: 03        .byte $03   ; 
- - - - - - 0x000576 00:8566: E9        .byte $E9, $D3, $01   ; 
- - - - - - 0x000579 00:8569: 0C        .byte $0C, $D1, $E1   ; 
- - - - - - 0x00057C 00:856C: FE        .byte $FE, $D1, $ED   ; 



off_07_856F_7C:
off_FF_856F:
- - - - - - 0x00057F 00:856F: 02        .byte $02   ; counter
- - - - - - 0x000580 00:8570: 03        .byte $03   ; spr_A
- - - - - - 0x000581 00:8571: F1        .byte $F1, $D1, $F9   ; spr_X, spr_T, spr_Y
- - - - - - 0x000584 00:8574: 01        .byte $01, $D1, $E9   ; 



off_07_8577_7D:
off_FF_8577:
- - - - - - 0x000587 00:8577: 02        .byte $02   ; counter
- - - - - - 0x000588 00:8578: 03        .byte $03   ; spr_A
- - - - - - 0x000589 00:8579: F1        .byte $F1, $D1, $F5   ; spr_X, spr_T, spr_Y
- - - - - - 0x00058C 00:857C: 01        .byte $01, $D1, $E5   ; 



off_07_857F_7E:
- D 0 - I - 0x00058F 00:857F: FF        .byte $FF   ; 
- D 0 - I - 0x000590 00:8580: 0E 85     .word off_FF_850E



off_07_8582_7F:
- D 0 - I - 0x000592 00:8582: FF        .byte $FF   ; 
- D 0 - I - 0x000593 00:8583: 16 85     .word off_FF_8516



off_07_8585_80:
- D 0 - I - 0x000595 00:8585: FF        .byte $FF   ; 
- D 0 - I - 0x000596 00:8586: 29 85     .word off_FF_8529



off_07_8588_81:
- D 0 - I - 0x000598 00:8588: FF        .byte $FF   ; 
- D 0 - I - 0x000599 00:8589: 3C 85     .word off_FF_853C



off_07_858B_82:
- D 0 - I - 0x00059B 00:858B: FF        .byte $FF   ; 
- D 0 - I - 0x00059C 00:858C: 4F 85     .word off_FF_854F



off_07_858E_83:
- - - - - - 0x00059E 00:858E: FF        .byte $FF   ; 
- - - - - - 0x00059F 00:858F: 5F 85     .word off_FF_855F



off_07_8591_84:
- - - - - - 0x0005A1 00:8591: FF        .byte $FF   ; 
- - - - - - 0x0005A2 00:8592: 6F 85     .word off_FF_856F



off_07_8594_85:
- - - - - - 0x0005A4 00:8594: FF        .byte $FF   ; 
- - - - - - 0x0005A5 00:8595: 77 85     .word off_FF_8577



off_07_8597_86:
- D 0 - I - 0x0005A7 00:8597: 81        .byte $81   ; counter
- D 0 - I - 0x0005A8 00:8598: 03        .byte $03   ; spr_A
- D 0 - I - 0x0005A9 00:8599: F8        .byte $F8, $D5, $11   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x0005AC 00:859C: 82        .byte $82   ; 
- D 0 - I - 0x0005AD 00:859D: 43        .byte $43   ; 
- D 0 - I - 0x0005AE 00:859E: 00        .byte $00, $D5, $11   ; 
- D 0 - I - 0x0005B1 00:85A1: FB        .byte $FB, $D1, $F9   ; 

- D 0 - I - 0x0005B4 00:85A4: 01        .byte $01   ; 
- D 0 - I - 0x0005B5 00:85A5: 03        .byte $03   ; 
- D 0 - I - 0x0005B6 00:85A6: 00        .byte $00, $D1, $E1   ; 



off_07_85A9_87:
- D 0 - I - 0x0005B9 00:85A9: 81        .byte $81   ; counter
- D 0 - I - 0x0005BA 00:85AA: 43        .byte $43   ; spr_A
- D 0 - I - 0x0005BB 00:85AB: 00        .byte $00, $D3, $10   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x0005BE 00:85AE: 82        .byte $82   ; 
- D 0 - I - 0x0005BF 00:85AF: 03        .byte $03   ; 
- D 0 - I - 0x0005C0 00:85B0: F8        .byte $F8, $D3, $10   ; 
- D 0 - I - 0x0005C3 00:85B3: F8        .byte $F8, $D3, $F9   ; 

- D 0 - I - 0x0005C6 00:85B6: 02        .byte $02   ; 
- D 0 - I - 0x0005C7 00:85B7: 43        .byte $43   ; 
- D 0 - I - 0x0005C8 00:85B8: 00        .byte $00, $D3, $F9   ; 
- D 0 - I - 0x0005CB 00:85BB: F8        .byte $F8, $D1, $E1   ; 



off_07_85BE_88:
- D 0 - I - 0x0005CE 00:85BE: 81        .byte $81   ; counter
- D 0 - I - 0x0005CF 00:85BF: 43        .byte $43   ; spr_A
- D 0 - I - 0x0005D0 00:85C0: FA        .byte $FA, $D1, $11   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x0005D3 00:85C3: 81        .byte $81   ; 
- D 0 - I - 0x0005D4 00:85C4: 03        .byte $03   ; 
- D 0 - I - 0x0005D5 00:85C5: F8        .byte $F8, $D5, $F9   ; 

- D 0 - I - 0x0005D8 00:85C8: 81        .byte $81   ; 
- D 0 - I - 0x0005D9 00:85C9: 43        .byte $43   ; 
- D 0 - I - 0x0005DA 00:85CA: 00        .byte $00, $D5, $F9   ; 

- D 0 - I - 0x0005DD 00:85CD: 81        .byte $81   ; 
- D 0 - I - 0x0005DE 00:85CE: 03        .byte $03   ; 
- D 0 - I - 0x0005DF 00:85CF: F8        .byte $F8, $D3, $E1   ; 

- D 0 - I - 0x0005E2 00:85D2: 01        .byte $01   ; 
- D 0 - I - 0x0005E3 00:85D3: 43        .byte $43   ; 
- D 0 - I - 0x0005E4 00:85D4: 00        .byte $00, $D3, $E1   ; 



off_07_85D7_89:
- D 0 - I - 0x0005E7 00:85D7: 81        .byte $81   ; counter
- D 0 - I - 0x0005E8 00:85D8: 03        .byte $03   ; spr_A
- D 0 - I - 0x0005E9 00:85D9: F8        .byte $F8, $D3, $F9   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x0005EC 00:85DC: 81        .byte $81   ; 
- D 0 - I - 0x0005ED 00:85DD: 43        .byte $43   ; 
- D 0 - I - 0x0005EE 00:85DE: 00        .byte $00, $D3, $F9   ; 

- D 0 - I - 0x0005F1 00:85E1: 81        .byte $81   ; 
- D 0 - I - 0x0005F2 00:85E2: 03        .byte $03   ; 
- D 0 - I - 0x0005F3 00:85E3: FA        .byte $FA, $D5, $E1   ; 

- D 0 - I - 0x0005F6 00:85E6: 02        .byte $02   ; 
- D 0 - I - 0x0005F7 00:85E7: 43        .byte $43   ; 
- D 0 - I - 0x0005F8 00:85E8: 02        .byte $02, $D5, $E1   ; 
- D 0 - I - 0x0005FB 00:85EB: F8        .byte $F8, $D1, $11   ; 



off_07_85EE_8A:
- D 0 - I - 0x0005FE 00:85EE: 81        .byte $81   ; counter
- D 0 - I - 0x0005FF 00:85EF: 43        .byte $43   ; spr_A
- D 0 - I - 0x000600 00:85F0: FB        .byte $FB, $D1, $11   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x000603 00:85F3: 82        .byte $82   ; 
- D 0 - I - 0x000604 00:85F4: 03        .byte $03   ; 
- D 0 - I - 0x000605 00:85F5: FA        .byte $FA, $D1, $F9   ; 
- D 0 - I - 0x000608 00:85F8: F8        .byte $F8, $D3, $E1   ; 

- D 0 - I - 0x00060B 00:85FB: 01        .byte $01   ; 
- D 0 - I - 0x00060C 00:85FC: 43        .byte $43   ; 
- D 0 - I - 0x00060D 00:85FD: 00        .byte $00, $D3, $E1   ; 



off_07_8600_8B:
- - - - - - 0x000610 00:8600: 81        .byte $81   ; counter
- - - - - - 0x000611 00:8601: 43        .byte $43   ; spr_A
- - - - - - 0x000612 00:8602: 01        .byte $01, $D3, $11   ; spr_X, spr_T, spr_Y

- - - - - - 0x000615 00:8605: 03        .byte $03   ; 
- - - - - - 0x000616 00:8606: 03        .byte $03   ; 
- - - - - - 0x000617 00:8607: F9        .byte $F9, $D3, $11   ; 
- - - - - - 0x00061A 00:860A: F8        .byte $F8, $D1, $E1   ; 
- - - - - - 0x00061D 00:860D: FA        .byte $FA, $D1, $F7   ; 



off_07_8610_8C:
- - - - - - 0x000620 00:8610: 02        .byte $02   ; counter
- - - - - - 0x000621 00:8611: 03        .byte $03   ; spr_A
- - - - - - 0x000622 00:8612: FB        .byte $FB, $D1, $F1   ; spr_X, spr_T, spr_Y
- - - - - - 0x000625 00:8615: FE        .byte $FE, $D1, $09   ; 



off_07_8618_8D:
- - - - - - 0x000628 00:8618: 02        .byte $02   ; counter
- - - - - - 0x000629 00:8619: 03        .byte $03   ; spr_A
- - - - - - 0x00062A 00:861A: F8        .byte $F8, $D1, $E7   ; spr_X, spr_T, spr_Y
- - - - - - 0x00062D 00:861D: FE        .byte $FE, $D1, $01   ; 



off_07_8620_8E:
- D 0 - I - 0x000630 00:8620: 81        .byte $81   ; counter
- D 0 - I - 0x000631 00:8621: 03        .byte $03   ; spr_A
- D 0 - I - 0x000632 00:8622: F8        .byte $F8, $C7, $F9   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x000635 00:8625: 01        .byte $01   ; 
- D 0 - I - 0x000636 00:8626: 43        .byte $43   ; 
- D 0 - I - 0x000637 00:8627: 00        .byte $00, $C7, $F9   ; 



off_07_862A_8F:
- D 0 - I - 0x00063A 00:862A: 01        .byte $01   ; counter
- D 0 - I - 0x00063B 00:862B: 00        .byte $00   ; spr_A
- D 0 - I - 0x00063C 00:862C: F9        .byte $F9, $ED, $F9   ; spr_X, spr_T, spr_Y



off_07_862F_93:
- - - - - - 0x00063F 00:862F: 01        .byte $01   ; counter
- - - - - - 0x000640 00:8630: C0        .byte $C0   ; spr_A
- - - - - - 0x000641 00:8631: F9        .byte $F9, $ED, $F9   ; spr_X, spr_T, spr_Y



off_07_8634_94:
- D 0 - I - 0x000644 00:8634: 01        .byte $01   ; counter
- D 0 - I - 0x000645 00:8635: 00        .byte $00   ; spr_A
- D 0 - I - 0x000646 00:8636: F9        .byte $F9, $CF, $F9   ; spr_X, spr_T, spr_Y



off_07_8639_95:
- - - - - - 0x000649 00:8639: 01        .byte $01   ; counter
- - - - - - 0x00064A 00:863A: C0        .byte $C0   ; spr_A
- - - - - - 0x00064B 00:863B: F9        .byte $F9, $CF, $F9   ; spr_X, spr_T, spr_Y



off_07_863E_96:
- D 0 - I - 0x00064E 00:863E: 02        .byte $02   ; counter
- D 0 - I - 0x00064F 00:863F: 00        .byte $00   ; spr_A
- D 0 - I - 0x000650 00:8640: F5        .byte $F5, $CB, $F9   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x000653 00:8643: FD        .byte $FD, $CD, $F9   ; 



off_07_8646_97:
- - - - - - 0x000656 00:8646: 02        .byte $02   ; counter
- - - - - - 0x000657 00:8647: C0        .byte $C0   ; spr_A
- - - - - - 0x000658 00:8648: FD        .byte $FD, $CB, $F9   ; spr_X, spr_T, spr_Y
- - - - - - 0x00065B 00:864B: F5        .byte $F5, $CD, $F9   ; 



off_07_864E_90:
- D 0 - I - 0x00065E 00:864E: 05        .byte $05   ; counter
- D 0 - I - 0x00065F 00:864F: 00        .byte $00   ; spr_A
- D 0 - I - 0x000660 00:8650: F0        .byte $F0, $31, $00   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x000663 00:8653: F8        .byte $F8, $33, $00   ; 
- D 0 - I - 0x000666 00:8656: 00        .byte $00, $35, $00   ; 
- D 0 - I - 0x000669 00:8659: 08        .byte $08, $37, $00   ; 
- D 0 - I - 0x00066C 00:865C: 10        .byte $10, $37, $08   ; 



off_07_865F_91:
- D 0 - I - 0x00066F 00:865F: 04        .byte $04   ; counter
- D 0 - I - 0x000670 00:8660: 00        .byte $00   ; spr_A
- D 0 - I - 0x000671 00:8661: F0        .byte $F0, $D7, $00   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x000674 00:8664: F8        .byte $F8, $DF, $00   ; 
- D 0 - I - 0x000677 00:8667: 00        .byte $00, $DB, $00   ; 
- D 0 - I - 0x00067A 00:866A: 08        .byte $08, $DD, $00   ; 



off_07_866D_92:
- D 0 - I - 0x00067D 00:866D: 04        .byte $04   ; counter
- D 0 - I - 0x00067E 00:866E: 00        .byte $00   ; spr_A
- D 0 - I - 0x00067F 00:866F: F0        .byte $F0, $D7, $00   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x000682 00:8672: F8        .byte $F8, $D9, $00   ; 
- D 0 - I - 0x000685 00:8675: 00        .byte $00, $DB, $00   ; 
- D 0 - I - 0x000688 00:8678: 08        .byte $08, $DD, $00   ; 



off_07_867B_98:
- D 0 - I - 0x00068B 00:867B: 82        .byte $82   ; counter
- D 0 - I - 0x00068C 00:867C: 02        .byte $02   ; spr_A
- D 0 - I - 0x00068D 00:867D: F0        .byte $F0, $D5, $F0   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x000690 00:8680: F8        .byte $F8, $D7, $F0   ; 

- D 0 - I - 0x000693 00:8683: 82        .byte $82   ; 
- D 0 - I - 0x000694 00:8684: 42        .byte $42   ; 
- D 0 - I - 0x000695 00:8685: 00        .byte $00, $D7, $F0   ; 
- D 0 - I - 0x000698 00:8688: 08        .byte $08, $D5, $F0   ; 

- D 0 - I - 0x00069B 00:868B: 82        .byte $82   ; 
- D 0 - I - 0x00069C 00:868C: 82        .byte $82   ; 
- D 0 - I - 0x00069D 00:868D: F0        .byte $F0, $D5, $00   ; 
- D 0 - I - 0x0006A0 00:8690: F8        .byte $F8, $D7, $00   ; 

- D 0 - I - 0x0006A3 00:8693: 02        .byte $02   ; 
- D 0 - I - 0x0006A4 00:8694: C2        .byte $C2   ; 
- D 0 - I - 0x0006A5 00:8695: 00        .byte $00, $D7, $00   ; 
- D 0 - I - 0x0006A8 00:8698: 08        .byte $08, $D5, $00   ; 



off_07_869B_99:
- D 0 - I - 0x0006AB 00:869B: 81        .byte $81   ; counter
- D 0 - I - 0x0006AC 00:869C: 02        .byte $02   ; spr_A
- D 0 - I - 0x0006AD 00:869D: F8        .byte $F8, $D3, $00   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x0006B0 00:86A0: 01        .byte $01   ; 
- D 0 - I - 0x0006B1 00:86A1: 42        .byte $42   ; 
- D 0 - I - 0x0006B2 00:86A2: 00        .byte $00, $D3, $00   ; 



_off032_86A5_09:
- - - - - - 0x0006B5 00:86A5: FB 86     .word off_09_86FB_00
- D 0 - I - 0x0006B7 00:86A7: FB 86     .word off_09_86FB_01
- D 0 - I - 0x0006B9 00:86A9: 47 87     .word off_09_8747_02
- D 0 - I - 0x0006BB 00:86AB: 90 87     .word off_09_8790_03
- D 0 - I - 0x0006BD 00:86AD: D4 87     .word off_09_87D4_04
- D 0 - I - 0x0006BF 00:86AF: 1A 88     .word off_09_881A_05
- D 0 - I - 0x0006C1 00:86B1: 5E 88     .word off_09_885E_06
- D 0 - I - 0x0006C3 00:86B3: A4 88     .word off_09_88A4_07
- D 0 - I - 0x0006C5 00:86B5: E6 88     .word off_09_88E6_08
- D 0 - I - 0x0006C7 00:86B7: 28 89     .word off_09_8928_09
- D 0 - I - 0x0006C9 00:86B9: 6C 89     .word off_09_896C_0A
- D 0 - I - 0x0006CB 00:86BB: BD 89     .word off_09_89BD_0B
- D 0 - I - 0x0006CD 00:86BD: FF 89     .word off_09_89FF_0C
- D 0 - I - 0x0006CF 00:86BF: 41 8A     .word off_09_8A41_0D
- D 0 - I - 0x0006D1 00:86C1: 8D 8A     .word off_09_8A8D_0E
- D 0 - I - 0x0006D3 00:86C3: D3 8A     .word off_09_8AD3_0F
- D 0 - I - 0x0006D5 00:86C5: 13 8B     .word off_09_8B13_10
- D 0 - I - 0x0006D7 00:86C7: 55 8B     .word off_09_8B55_11
- D 0 - I - 0x0006D9 00:86C9: A3 8B     .word off_09_8BA3_12
- D 0 - I - 0x0006DB 00:86CB: E5 8B     .word off_09_8BE5_13
- - - - - - 0x0006DD 00:86CD: 27 8C     .word off_09_8C27_14
- - - - - - 0x0006DF 00:86CF: 6F 8C     .word off_09_8C6F_15
- - - - - - 0x0006E1 00:86D1: AF 8C     .word off_09_8CAF_16
- D 0 - I - 0x0006E3 00:86D3: ED 8C     .word off_09_8CED_17
- D 0 - I - 0x0006E5 00:86D5: 38 8D     .word off_09_8D38_18
- D 0 - I - 0x0006E7 00:86D7: 7D 8D     .word off_09_8D7D_19
- D 0 - I - 0x0006E9 00:86D9: C2 8D     .word off_09_8DC2_1A
- D 0 - I - 0x0006EB 00:86DB: 07 8E     .word off_09_8E07_1B
- D 0 - I - 0x0006ED 00:86DD: 0A 8E     .word off_09_8E0A_1C
- D 0 - I - 0x0006EF 00:86DF: 0D 8E     .word off_09_8E0D_1D
- D 0 - I - 0x0006F1 00:86E1: 10 8E     .word off_09_8E10_1E
- D 0 - I - 0x0006F3 00:86E3: 13 8E     .word off_09_8E13_1F
- D 0 - I - 0x0006F5 00:86E5: 5D 8E     .word off_09_8E5D_20
- D 0 - I - 0x0006F7 00:86E7: A7 8E     .word off_09_8EA7_21
- D 0 - I - 0x0006F9 00:86E9: F1 8E     .word off_09_8EF1_22
- D 0 - I - 0x0006FB 00:86EB: 3B 8F     .word off_09_8F3B_23
- D 0 - I - 0x0006FD 00:86ED: 87 8F     .word off_09_8F87_24
- D 0 - I - 0x0006FF 00:86EF: CE 8F     .word off_09_8FCE_25
- D 0 - I - 0x000701 00:86F1: 12 90     .word off_09_9012_26
- D 0 - I - 0x000703 00:86F3: 54 90     .word off_09_9054_27
- D 0 - I - 0x000705 00:86F5: 94 90     .word off_09_9094_28
- D 0 - I - 0x000707 00:86F7: D8 90     .word off_09_90D8_29
- D 0 - I - 0x000709 00:86F9: 1C 91     .word off_09_911C_2A



off_09_86FB_00:
off_09_86FB_01:
- D 0 - I - 0x00070B 00:86FB: 81        .byte $81   ; counter
- D 0 - I - 0x00070C 00:86FC: 02        .byte $02   ; spr_A
- D 0 - I - 0x00070D 00:86FD: F9        .byte $F9, $81, $DE   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x000710 00:8700: 81        .byte $81   ; 
- D 0 - I - 0x000711 00:8701: 42        .byte $42   ; 
- D 0 - I - 0x000712 00:8702: 01        .byte $01, $81, $DE   ; 

- D 0 - I - 0x000715 00:8705: 84        .byte $84   ; 
- D 0 - I - 0x000716 00:8706: 02        .byte $02   ; 
- D 0 - I - 0x000717 00:8707: E9        .byte $E9, $A3, $E0   ; 
- D 0 - I - 0x00071A 00:870A: F1        .byte $F1, $A5, $E0   ; 
- D 0 - I - 0x00071D 00:870D: E1        .byte $E1, $A1, $E0   ; 
- D 0 - I - 0x000720 00:8710: E1        .byte $E1, $A7, $F0   ; 

- D 0 - I - 0x000723 00:8713: 81        .byte $81   ; 
- D 0 - I - 0x000724 00:8714: 03        .byte $03   ; 
- D 0 - I - 0x000725 00:8715: F1        .byte $F1, $A9, $F0   ; 

- D 0 - I - 0x000728 00:8718: 81        .byte $81   ; 
- D 0 - I - 0x000729 00:8719: 43        .byte $43   ; 
- D 0 - I - 0x00072A 00:871A: 09        .byte $09, $A9, $F0   ; 

- D 0 - I - 0x00072D 00:871D: 84        .byte $84   ; 
- D 0 - I - 0x00072E 00:871E: 42        .byte $42   ; 
- D 0 - I - 0x00072F 00:871F: 09        .byte $09, $A5, $E1   ; 
- D 0 - I - 0x000732 00:8722: 19        .byte $19, $A1, $E1   ; 
- D 0 - I - 0x000735 00:8725: 11        .byte $11, $A3, $E1   ; 
- D 0 - I - 0x000738 00:8728: 19        .byte $19, $A7, $F1   ; 

- D 0 - I - 0x00073B 00:872B: 81        .byte $81   ; 
- D 0 - I - 0x00073C 00:872C: 43        .byte $43   ; 
- D 0 - I - 0x00073D 00:872D: F9        .byte $F9, $B9, $00   ; 

- D 0 - I - 0x000740 00:8730: 82        .byte $82   ; 
- D 0 - I - 0x000741 00:8731: 03        .byte $03   ; 
- D 0 - I - 0x000742 00:8732: 01        .byte $01, $B9, $00   ; 
- D 0 - I - 0x000745 00:8735: F9        .byte $F9, $B5, $F0   ; 

- D 0 - I - 0x000748 00:8738: 81        .byte $81   ; 
- D 0 - I - 0x000749 00:8739: 43        .byte $43   ; 
- D 0 - I - 0x00074A 00:873A: 01        .byte $01, $B5, $F0   ; 

- D 0 - I - 0x00074D 00:873D: 81        .byte $81   ; 
- D 0 - I - 0x00074E 00:873E: 02        .byte $02   ; 
- D 0 - I - 0x00074F 00:873F: F9        .byte $F9, $83, $EE   ; 

- D 0 - I - 0x000752 00:8742: 01        .byte $01   ; 
- D 0 - I - 0x000753 00:8743: 42        .byte $42   ; 
- D 0 - I - 0x000754 00:8744: 01        .byte $01, $83, $EE   ; 



off_09_8747_02:
- D 0 - I - 0x000757 00:8747: 81        .byte $81   ; counter
- D 0 - I - 0x000758 00:8748: 02        .byte $02   ; spr_A
- D 0 - I - 0x000759 00:8749: F9        .byte $F9, $81, $E0   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x00075C 00:874C: 81        .byte $81   ; 
- D 0 - I - 0x00075D 00:874D: 42        .byte $42   ; 
- D 0 - I - 0x00075E 00:874E: 01        .byte $01, $81, $E0   ; 

- D 0 - I - 0x000761 00:8751: 81        .byte $81   ; 
- D 0 - I - 0x000762 00:8752: 43        .byte $43   ; 
- D 0 - I - 0x000763 00:8753: 09        .byte $09, $A9, $F0   ; 

- D 0 - I - 0x000766 00:8756: 84        .byte $84   ; 
- D 0 - I - 0x000767 00:8757: 42        .byte $42   ; 
- D 0 - I - 0x000768 00:8758: 09        .byte $09, $A5, $E0   ; 
- D 0 - I - 0x00076B 00:875B: 19        .byte $19, $A1, $E0   ; 
- D 0 - I - 0x00076E 00:875E: 11        .byte $11, $A3, $E0   ; 
- D 0 - I - 0x000771 00:8761: 19        .byte $19, $A7, $F0   ; 

- D 0 - I - 0x000774 00:8764: 81        .byte $81   ; 
- D 0 - I - 0x000775 00:8765: 43        .byte $43   ; 
- D 0 - I - 0x000776 00:8766: F9        .byte $F9, $B9, $00   ; 

- D 0 - I - 0x000779 00:8769: 81        .byte $81   ; 
- D 0 - I - 0x00077A 00:876A: 03        .byte $03   ; 
- D 0 - I - 0x00077B 00:876B: 01        .byte $01, $B9, $00   ; 

- D 0 - I - 0x00077E 00:876E: 84        .byte $84   ; 
- D 0 - I - 0x00077F 00:876F: 02        .byte $02   ; 
- D 0 - I - 0x000780 00:8770: E9        .byte $E9, $9D, $F4   ; 
- D 0 - I - 0x000783 00:8773: F1        .byte $F1, $9F, $F4   ; 
- D 0 - I - 0x000786 00:8776: E9        .byte $E9, $99, $E4   ; 
- D 0 - I - 0x000789 00:8779: F1        .byte $F1, $9B, $E4   ; 

- D 0 - I - 0x00078C 00:877C: 81        .byte $81   ; 
- D 0 - I - 0x00078D 00:877D: 03        .byte $03   ; 
- D 0 - I - 0x00078E 00:877E: F9        .byte $F9, $B5, $F0   ; 

- D 0 - I - 0x000791 00:8781: 81        .byte $81   ; 
- D 0 - I - 0x000792 00:8782: 43        .byte $43   ; 
- D 0 - I - 0x000793 00:8783: 01        .byte $01, $B5, $F0   ; 

- D 0 - I - 0x000796 00:8786: 81        .byte $81   ; 
- D 0 - I - 0x000797 00:8787: 02        .byte $02   ; 
- D 0 - I - 0x000798 00:8788: F9        .byte $F9, $83, $F0   ; 

- D 0 - I - 0x00079B 00:878B: 01        .byte $01   ; 
- D 0 - I - 0x00079C 00:878C: 42        .byte $42   ; 
- D 0 - I - 0x00079D 00:878D: 01        .byte $01, $83, $F0   ; 



off_09_8790_03:
- D 0 - I - 0x0007A0 00:8790: 81        .byte $81   ; counter
- D 0 - I - 0x0007A1 00:8791: 02        .byte $02   ; spr_A
- D 0 - I - 0x0007A2 00:8792: F9        .byte $F9, $81, $E0   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x0007A5 00:8795: 81        .byte $81   ; 
- D 0 - I - 0x0007A6 00:8796: 42        .byte $42   ; 
- D 0 - I - 0x0007A7 00:8797: 01        .byte $01, $81, $E0   ; 

- D 0 - I - 0x0007AA 00:879A: 81        .byte $81   ; 
- D 0 - I - 0x0007AB 00:879B: 43        .byte $43   ; 
- D 0 - I - 0x0007AC 00:879C: F9        .byte $F9, $B9, $00   ; 

- D 0 - I - 0x0007AF 00:879F: 81        .byte $81   ; 
- D 0 - I - 0x0007B0 00:87A0: 03        .byte $03   ; 
- D 0 - I - 0x0007B1 00:87A1: 01        .byte $01, $B9, $00   ; 

- D 0 - I - 0x0007B4 00:87A4: 84        .byte $84   ; 
- D 0 - I - 0x0007B5 00:87A5: 02        .byte $02   ; 
- D 0 - I - 0x0007B6 00:87A6: E9        .byte $E9, $91, $E0   ; 
- D 0 - I - 0x0007B9 00:87A9: F1        .byte $F1, $93, $E0   ; 
- D 0 - I - 0x0007BC 00:87AC: E9        .byte $E9, $95, $F0   ; 
- D 0 - I - 0x0007BF 00:87AF: F1        .byte $F1, $97, $F0   ; 

- D 0 - I - 0x0007C2 00:87B2: 84        .byte $84   ; 
- D 0 - I - 0x0007C3 00:87B3: 42        .byte $42   ; 
- D 0 - I - 0x0007C4 00:87B4: 09        .byte $09, $9B, $E4   ; 
- D 0 - I - 0x0007C7 00:87B7: 11        .byte $11, $99, $E4   ; 
- D 0 - I - 0x0007CA 00:87BA: 11        .byte $11, $9D, $F4   ; 
- D 0 - I - 0x0007CD 00:87BD: 09        .byte $09, $9F, $F4   ; 

- D 0 - I - 0x0007D0 00:87C0: 81        .byte $81   ; 
- D 0 - I - 0x0007D1 00:87C1: 03        .byte $03   ; 
- D 0 - I - 0x0007D2 00:87C2: F9        .byte $F9, $B5, $F0   ; 

- D 0 - I - 0x0007D5 00:87C5: 81        .byte $81   ; 
- D 0 - I - 0x0007D6 00:87C6: 43        .byte $43   ; 
- D 0 - I - 0x0007D7 00:87C7: 01        .byte $01, $B5, $F0   ; 

- D 0 - I - 0x0007DA 00:87CA: 81        .byte $81   ; 
- D 0 - I - 0x0007DB 00:87CB: 02        .byte $02   ; 
- D 0 - I - 0x0007DC 00:87CC: F9        .byte $F9, $83, $F0   ; 

- D 0 - I - 0x0007DF 00:87CF: 01        .byte $01   ; 
- D 0 - I - 0x0007E0 00:87D0: 42        .byte $42   ; 
- D 0 - I - 0x0007E1 00:87D1: 01        .byte $01, $83, $F0   ; 



off_09_87D4_04:
- D 0 - I - 0x0007E4 00:87D4: 81        .byte $81   ; counter
- D 0 - I - 0x0007E5 00:87D5: 02        .byte $02   ; spr_A
- D 0 - I - 0x0007E6 00:87D6: F1        .byte $F1, $93, $E0   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x0007E9 00:87D9: 81        .byte $81   ; 
- D 0 - I - 0x0007EA 00:87DA: 42        .byte $42   ; 
- D 0 - I - 0x0007EB 00:87DB: 09        .byte $09, $93, $E0   ; 

- D 0 - I - 0x0007EE 00:87DE: 83        .byte $83   ; 
- D 0 - I - 0x0007EF 00:87DF: 02        .byte $02   ; 
- D 0 - I - 0x0007F0 00:87E0: E9        .byte $E9, $95, $F0   ; 
- D 0 - I - 0x0007F3 00:87E3: F1        .byte $F1, $97, $F0   ; 
- D 0 - I - 0x0007F6 00:87E6: E9        .byte $E9, $91, $E0   ; 

- D 0 - I - 0x0007F9 00:87E9: 82        .byte $82   ; 
- D 0 - I - 0x0007FA 00:87EA: 42        .byte $42   ; 
- D 0 - I - 0x0007FB 00:87EB: 11        .byte $11, $95, $F0   ; 
- D 0 - I - 0x0007FE 00:87EE: 11        .byte $11, $91, $E0   ; 

- D 0 - I - 0x000801 00:87F1: 81        .byte $81   ; 
- D 0 - I - 0x000802 00:87F2: 03        .byte $03   ; 
- D 0 - I - 0x000803 00:87F3: F9        .byte $F9, $B5, $F0   ; 

- D 0 - I - 0x000806 00:87F6: 82        .byte $82   ; 
- D 0 - I - 0x000807 00:87F7: 43        .byte $43   ; 
- D 0 - I - 0x000808 00:87F8: 01        .byte $01, $B5, $F0   ; 
- D 0 - I - 0x00080B 00:87FB: F9        .byte $F9, $B9, $00   ; 

- D 0 - I - 0x00080E 00:87FE: 81        .byte $81   ; 
- D 0 - I - 0x00080F 00:87FF: 03        .byte $03   ; 
- D 0 - I - 0x000810 00:8800: 01        .byte $01, $B9, $00   ; 

- D 0 - I - 0x000813 00:8803: 81        .byte $81   ; 
- D 0 - I - 0x000814 00:8804: 02        .byte $02   ; 
- D 0 - I - 0x000815 00:8805: F9        .byte $F9, $85, $DF   ; 

- D 0 - I - 0x000818 00:8808: 82        .byte $82   ; 
- D 0 - I - 0x000819 00:8809: 42        .byte $42   ; 
- D 0 - I - 0x00081A 00:880A: 01        .byte $01, $85, $DF   ; 
- D 0 - I - 0x00081D 00:880D: 09        .byte $09, $97, $F0   ; 

- D 0 - I - 0x000820 00:8810: 81        .byte $81   ; 
- D 0 - I - 0x000821 00:8811: 02        .byte $02   ; 
- D 0 - I - 0x000822 00:8812: F9        .byte $F9, $87, $EF   ; 

- D 0 - I - 0x000825 00:8815: 01        .byte $01   ; 
- D 0 - I - 0x000826 00:8816: 42        .byte $42   ; 
- D 0 - I - 0x000827 00:8817: 01        .byte $01, $87, $EF   ; 



off_09_881A_05:
- D 0 - I - 0x00082A 00:881A: 81        .byte $81   ; counter
- D 0 - I - 0x00082B 00:881B: 02        .byte $02   ; spr_A
- D 0 - I - 0x00082C 00:881C: F1        .byte $F1, $93, $E0   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x00082F 00:881F: 81        .byte $81   ; 
- D 0 - I - 0x000830 00:8820: 42        .byte $42   ; 
- D 0 - I - 0x000831 00:8821: 09        .byte $09, $93, $E0   ; 

- D 0 - I - 0x000834 00:8824: 83        .byte $83   ; 
- D 0 - I - 0x000835 00:8825: 02        .byte $02   ; 
- D 0 - I - 0x000836 00:8826: E9        .byte $E9, $95, $F0   ; 
- D 0 - I - 0x000839 00:8829: F1        .byte $F1, $97, $F0   ; 
- D 0 - I - 0x00083C 00:882C: E9        .byte $E9, $91, $E0   ; 

- D 0 - I - 0x00083F 00:882F: 82        .byte $82   ; 
- D 0 - I - 0x000840 00:8830: 42        .byte $42   ; 
- D 0 - I - 0x000841 00:8831: 11        .byte $11, $95, $F0   ; 
- D 0 - I - 0x000844 00:8834: 11        .byte $11, $91, $E0   ; 

- D 0 - I - 0x000847 00:8837: 81        .byte $81   ; 
- D 0 - I - 0x000848 00:8838: 03        .byte $03   ; 
- D 0 - I - 0x000849 00:8839: F9        .byte $F9, $B5, $F0   ; 

- D 0 - I - 0x00084C 00:883C: 82        .byte $82   ; 
- D 0 - I - 0x00084D 00:883D: 43        .byte $43   ; 
- D 0 - I - 0x00084E 00:883E: 01        .byte $01, $B5, $F0   ; 
- D 0 - I - 0x000851 00:8841: F9        .byte $F9, $B9, $00   ; 

- D 0 - I - 0x000854 00:8844: 81        .byte $81   ; 
- D 0 - I - 0x000855 00:8845: 03        .byte $03   ; 
- D 0 - I - 0x000856 00:8846: 01        .byte $01, $B9, $00   ; 

- D 0 - I - 0x000859 00:8849: 81        .byte $81   ; 
- D 0 - I - 0x00085A 00:884A: 02        .byte $02   ; 
- D 0 - I - 0x00085B 00:884B: F9        .byte $F9, $89, $DB   ; 

- D 0 - I - 0x00085E 00:884E: 83        .byte $83   ; 
- D 0 - I - 0x00085F 00:884F: 42        .byte $42   ; 
- D 0 - I - 0x000860 00:8850: 01        .byte $01, $89, $DB   ; 
- D 0 - I - 0x000863 00:8853: 01        .byte $01, $8B, $EB   ; 
- D 0 - I - 0x000866 00:8856: 09        .byte $09, $97, $F0   ; 

- D 0 - I - 0x000869 00:8859: 01        .byte $01   ; 
- D 0 - I - 0x00086A 00:885A: 02        .byte $02   ; 
- D 0 - I - 0x00086B 00:885B: F9        .byte $F9, $8B, $EB   ; 



off_09_885E_06:
- D 0 - I - 0x00086E 00:885E: 81        .byte $81   ; counter
- D 0 - I - 0x00086F 00:885F: 02        .byte $02   ; spr_A
- D 0 - I - 0x000870 00:8860: F1        .byte $F1, $93, $DE   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x000873 00:8863: 81        .byte $81   ; 
- D 0 - I - 0x000874 00:8864: 42        .byte $42   ; 
- D 0 - I - 0x000875 00:8865: 09        .byte $09, $93, $DE   ; 

- D 0 - I - 0x000878 00:8868: 83        .byte $83   ; 
- D 0 - I - 0x000879 00:8869: 02        .byte $02   ; 
- D 0 - I - 0x00087A 00:886A: E9        .byte $E9, $95, $EE   ; 
- D 0 - I - 0x00087D 00:886D: F1        .byte $F1, $97, $EE   ; 
- D 0 - I - 0x000880 00:8870: E9        .byte $E9, $91, $DE   ; 

- D 0 - I - 0x000883 00:8873: 82        .byte $82   ; 
- D 0 - I - 0x000884 00:8874: 42        .byte $42   ; 
- D 0 - I - 0x000885 00:8875: 11        .byte $11, $95, $EE   ; 
- D 0 - I - 0x000888 00:8878: 11        .byte $11, $91, $DE   ; 

- D 0 - I - 0x00088B 00:887B: 81        .byte $81   ; 
- D 0 - I - 0x00088C 00:887C: 03        .byte $03   ; 
- D 0 - I - 0x00088D 00:887D: F9        .byte $F9, $B5, $F0   ; 

- D 0 - I - 0x000890 00:8880: 82        .byte $82   ; 
- D 0 - I - 0x000891 00:8881: 43        .byte $43   ; 
- D 0 - I - 0x000892 00:8882: 01        .byte $01, $B5, $F0   ; 
- D 0 - I - 0x000895 00:8885: F9        .byte $F9, $B9, $00   ; 

- D 0 - I - 0x000898 00:8888: 81        .byte $81   ; 
- D 0 - I - 0x000899 00:8889: 03        .byte $03   ; 
- D 0 - I - 0x00089A 00:888A: 01        .byte $01, $B9, $00   ; 

- D 0 - I - 0x00089D 00:888D: 81        .byte $81   ; 
- D 0 - I - 0x00089E 00:888E: 02        .byte $02   ; 
- D 0 - I - 0x00089F 00:888F: F9        .byte $F9, $8D, $E0   ; 

- D 0 - I - 0x0008A2 00:8892: 82        .byte $82   ; 
- D 0 - I - 0x0008A3 00:8893: 42        .byte $42   ; 
- D 0 - I - 0x0008A4 00:8894: 01        .byte $01, $8D, $E0   ; 
- D 0 - I - 0x0008A7 00:8897: 01        .byte $01, $8B, $F0   ; 

- D 0 - I - 0x0008AA 00:889A: 81        .byte $81   ; 
- D 0 - I - 0x0008AB 00:889B: 02        .byte $02   ; 
- D 0 - I - 0x0008AC 00:889C: F9        .byte $F9, $8B, $F0   ; 

- D 0 - I - 0x0008AF 00:889F: 01        .byte $01   ; 
- D 0 - I - 0x0008B0 00:88A0: 42        .byte $42   ; 
- D 0 - I - 0x0008B1 00:88A1: 09        .byte $09, $97, $EE   ; 



off_09_88A4_07:
- D 0 - I - 0x0008B4 00:88A4: 81        .byte $81   ; counter
- D 0 - I - 0x0008B5 00:88A5: 02        .byte $02   ; spr_A
- D 0 - I - 0x0008B6 00:88A6: F1        .byte $F1, $93, $E0   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x0008B9 00:88A9: 81        .byte $81   ; 
- D 0 - I - 0x0008BA 00:88AA: 42        .byte $42   ; 
- D 0 - I - 0x0008BB 00:88AB: 09        .byte $09, $93, $E0   ; 

- D 0 - I - 0x0008BE 00:88AE: 83        .byte $83   ; 
- D 0 - I - 0x0008BF 00:88AF: 02        .byte $02   ; 
- D 0 - I - 0x0008C0 00:88B0: E9        .byte $E9, $95, $F0   ; 
- D 0 - I - 0x0008C3 00:88B3: F1        .byte $F1, $97, $F0   ; 
- D 0 - I - 0x0008C6 00:88B6: E9        .byte $E9, $91, $E0   ; 

- D 0 - I - 0x0008C9 00:88B9: 82        .byte $82   ; 
- D 0 - I - 0x0008CA 00:88BA: 42        .byte $42   ; 
- D 0 - I - 0x0008CB 00:88BB: 11        .byte $11, $95, $F0   ; 
- D 0 - I - 0x0008CE 00:88BE: 11        .byte $11, $91, $E0   ; 

- D 0 - I - 0x0008D1 00:88C1: 81        .byte $81   ; 
- D 0 - I - 0x0008D2 00:88C2: 03        .byte $03   ; 
- D 0 - I - 0x0008D3 00:88C3: F9        .byte $F9, $B5, $F0   ; 

- D 0 - I - 0x0008D6 00:88C6: 82        .byte $82   ; 
- D 0 - I - 0x0008D7 00:88C7: 43        .byte $43   ; 
- D 0 - I - 0x0008D8 00:88C8: 01        .byte $01, $B5, $F0   ; 
- D 0 - I - 0x0008DB 00:88CB: F9        .byte $F9, $B9, $00   ; 

- D 0 - I - 0x0008DE 00:88CE: 81        .byte $81   ; 
- D 0 - I - 0x0008DF 00:88CF: 03        .byte $03   ; 
- D 0 - I - 0x0008E0 00:88D0: 01        .byte $01, $B9, $00   ; 

- D 0 - I - 0x0008E3 00:88D3: 82        .byte $82   ; 
- D 0 - I - 0x0008E4 00:88D4: 02        .byte $02   ; 
- D 0 - I - 0x0008E5 00:88D5: F8        .byte $F8, $89, $E1   ; 
- D 0 - I - 0x0008E8 00:88D8: F8        .byte $F8, $8B, $F1   ; 

- D 0 - I - 0x0008EB 00:88DB: 03        .byte $03   ; 
- D 0 - I - 0x0008EC 00:88DC: 42        .byte $42   ; 
- D 0 - I - 0x0008ED 00:88DD: 00        .byte $00, $89, $E1   ; 
- D 0 - I - 0x0008F0 00:88E0: 00        .byte $00, $8B, $F1   ; 
- D 0 - I - 0x0008F3 00:88E3: 09        .byte $09, $97, $F0   ; 



off_09_88E6_08:
- D 0 - I - 0x0008F6 00:88E6: 81        .byte $81   ; counter
- D 0 - I - 0x0008F7 00:88E7: 02        .byte $02   ; spr_A
- D 0 - I - 0x0008F8 00:88E8: F1        .byte $F1, $93, $DF   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x0008FB 00:88EB: 81        .byte $81   ; 
- D 0 - I - 0x0008FC 00:88EC: 42        .byte $42   ; 
- D 0 - I - 0x0008FD 00:88ED: 09        .byte $09, $93, $DD   ; 

- D 0 - I - 0x000900 00:88F0: 83        .byte $83   ; 
- D 0 - I - 0x000901 00:88F1: 02        .byte $02   ; 
- D 0 - I - 0x000902 00:88F2: E9        .byte $E9, $95, $EF   ; 
- D 0 - I - 0x000905 00:88F5: F1        .byte $F1, $97, $EF   ; 
- D 0 - I - 0x000908 00:88F8: E9        .byte $E9, $91, $DF   ; 

- D 0 - I - 0x00090B 00:88FB: 82        .byte $82   ; 
- D 0 - I - 0x00090C 00:88FC: 42        .byte $42   ; 
- D 0 - I - 0x00090D 00:88FD: 11        .byte $11, $95, $ED   ; 
- D 0 - I - 0x000910 00:8900: 11        .byte $11, $91, $DD   ; 

- D 0 - I - 0x000913 00:8903: 81        .byte $81   ; 
- D 0 - I - 0x000914 00:8904: 03        .byte $03   ; 
- D 0 - I - 0x000915 00:8905: F9        .byte $F9, $B5, $F0   ; 

- D 0 - I - 0x000918 00:8908: 82        .byte $82   ; 
- D 0 - I - 0x000919 00:8909: 43        .byte $43   ; 
- D 0 - I - 0x00091A 00:890A: 01        .byte $01, $B5, $F0   ; 
- D 0 - I - 0x00091D 00:890D: F9        .byte $F9, $B9, $00   ; 

- D 0 - I - 0x000920 00:8910: 81        .byte $81   ; 
- D 0 - I - 0x000921 00:8911: 03        .byte $03   ; 
- D 0 - I - 0x000922 00:8912: 01        .byte $01, $B9, $00   ; 

- D 0 - I - 0x000925 00:8915: 82        .byte $82   ; 
- D 0 - I - 0x000926 00:8916: 02        .byte $02   ; 
- D 0 - I - 0x000927 00:8917: FA        .byte $FA, $8D, $DF   ; 
- D 0 - I - 0x00092A 00:891A: FA        .byte $FA, $8B, $EF   ; 

- D 0 - I - 0x00092D 00:891D: 03        .byte $03   ; 
- D 0 - I - 0x00092E 00:891E: 42        .byte $42   ; 
- D 0 - I - 0x00092F 00:891F: 02        .byte $02, $8D, $DF   ; 
- D 0 - I - 0x000932 00:8922: 02        .byte $02, $8B, $EF   ; 
- D 0 - I - 0x000935 00:8925: 09        .byte $09, $97, $ED   ; 



off_09_8928_09:
- D 0 - I - 0x000938 00:8928: 81        .byte $81   ; counter
- D 0 - I - 0x000939 00:8929: 02        .byte $02   ; spr_A
- D 0 - I - 0x00093A 00:892A: F9        .byte $F9, $81, $E0   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x00093D 00:892D: 81        .byte $81   ; 
- D 0 - I - 0x00093E 00:892E: 42        .byte $42   ; 
- D 0 - I - 0x00093F 00:892F: 01        .byte $01, $81, $E0   ; 

- D 0 - I - 0x000942 00:8932: 81        .byte $81   ; 
- D 0 - I - 0x000943 00:8933: 03        .byte $03   ; 
- D 0 - I - 0x000944 00:8934: F9        .byte $F9, $B5, $F0   ; 

- D 0 - I - 0x000947 00:8937: 81        .byte $81   ; 
- D 0 - I - 0x000948 00:8938: 43        .byte $43   ; 
- D 0 - I - 0x000949 00:8939: 01        .byte $01, $B5, $F0   ; 

- D 0 - I - 0x00094C 00:893C: 84        .byte $84   ; 
- D 0 - I - 0x00094D 00:893D: 02        .byte $02   ; 
- D 0 - I - 0x00094E 00:893E: E9        .byte $E9, $99, $E4   ; 
- D 0 - I - 0x000951 00:8941: F1        .byte $F1, $9B, $E4   ; 
- D 0 - I - 0x000954 00:8944: E9        .byte $E9, $9D, $F4   ; 
- D 0 - I - 0x000957 00:8947: F1        .byte $F1, $9F, $F4   ; 

- D 0 - I - 0x00095A 00:894A: 84        .byte $84   ; 
- D 0 - I - 0x00095B 00:894B: 42        .byte $42   ; 
- D 0 - I - 0x00095C 00:894C: 11        .byte $11, $99, $E4   ; 
- D 0 - I - 0x00095F 00:894F: 09        .byte $09, $9B, $E4   ; 
- D 0 - I - 0x000962 00:8952: 11        .byte $11, $9D, $F4   ; 
- D 0 - I - 0x000965 00:8955: 09        .byte $09, $9F, $F4   ; 

- D 0 - I - 0x000968 00:8958: 81        .byte $81   ; 
- D 0 - I - 0x000969 00:8959: 43        .byte $43   ; 
- D 0 - I - 0x00096A 00:895A: F9        .byte $F9, $BD, $00   ; 

- D 0 - I - 0x00096D 00:895D: 81        .byte $81   ; 
- D 0 - I - 0x00096E 00:895E: 03        .byte $03   ; 
- D 0 - I - 0x00096F 00:895F: 01        .byte $01, $B9, $00   ; 

- D 0 - I - 0x000972 00:8962: 81        .byte $81   ; 
- D 0 - I - 0x000973 00:8963: 02        .byte $02   ; 
- D 0 - I - 0x000974 00:8964: F9        .byte $F9, $83, $F0   ; 
- D 0 - I - 0x000977 00:8967: 01        .byte $01   ; 
- D 0 - I - 0x000978 00:8968: 42        .byte $42   ; 
- D 0 - I - 0x000979 00:8969: 01        .byte $01, $83, $F0   ; 



off_09_896C_0A:
- D 0 - I - 0x00097C 00:896C: 81        .byte $81   ; counter
- D 0 - I - 0x00097D 00:896D: 02        .byte $02   ; spr_A
- D 0 - I - 0x00097E 00:896E: F8        .byte $F8, $81, $E0   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x000981 00:8971: 81        .byte $81   ; 
- D 0 - I - 0x000982 00:8972: 42        .byte $42   ; 
- D 0 - I - 0x000983 00:8973: 00        .byte $00, $81, $E0   ; 

- D 0 - I - 0x000986 00:8976: 85        .byte $85   ; 
- D 0 - I - 0x000987 00:8977: 02        .byte $02   ; 
- D 0 - I - 0x000988 00:8978: E9        .byte $E9, $AD, $F0   ; 
- D 0 - I - 0x00098B 00:897B: F1        .byte $F1, $AF, $F0   ; 
- D 0 - I - 0x00098E 00:897E: EE        .byte $EE, $B1, $00   ; 
- D 0 - I - 0x000991 00:8981: EE        .byte $EE, $B3, $10   ; 
- D 0 - I - 0x000994 00:8984: F1        .byte $F1, $93, $E0   ; 

- D 0 - I - 0x000997 00:8987: 84        .byte $84   ; 
- D 0 - I - 0x000998 00:8988: 42        .byte $42   ; 
- D 0 - I - 0x000999 00:8989: 09        .byte $09, $A5, $E0   ; 
- D 0 - I - 0x00099C 00:898C: 11        .byte $11, $A3, $E0   ; 
- D 0 - I - 0x00099F 00:898F: 19        .byte $19, $A1, $E0   ; 
- D 0 - I - 0x0009A2 00:8992: 19        .byte $19, $A7, $F0   ; 

- D 0 - I - 0x0009A5 00:8995: 81        .byte $81   ; 
- D 0 - I - 0x0009A6 00:8996: 43        .byte $43   ; 
- D 0 - I - 0x0009A7 00:8997: 09        .byte $09, $A9, $F0   ; 

- D 0 - I - 0x0009AA 00:899A: 81        .byte $81   ; 
- D 0 - I - 0x0009AB 00:899B: 03        .byte $03   ; 
- D 0 - I - 0x0009AC 00:899C: F9        .byte $F9, $B5, $F0   ; 

- D 0 - I - 0x0009AF 00:899F: 81        .byte $81   ; 
- D 0 - I - 0x0009B0 00:89A0: 43        .byte $43   ; 
- D 0 - I - 0x0009B1 00:89A1: 01        .byte $01, $B5, $F0   ; 

- D 0 - I - 0x0009B4 00:89A4: 81        .byte $81   ; 
- D 0 - I - 0x0009B5 00:89A5: 03        .byte $03   ; 
- D 0 - I - 0x0009B6 00:89A6: F9        .byte $F9, $BB, $00   ; 

- D 0 - I - 0x0009B9 00:89A9: 81        .byte $81   ; 
- D 0 - I - 0x0009BA 00:89AA: 02        .byte $02   ; 
- D 0 - I - 0x0009BB 00:89AB: F8        .byte $F8, $83, $F0   ; 

- D 0 - I - 0x0009BE 00:89AE: 81        .byte $81   ; 
- D 0 - I - 0x0009BF 00:89AF: 42        .byte $42   ; 
- D 0 - I - 0x0009C0 00:89B0: 00        .byte $00, $83, $F0   ; 

- D 0 - I - 0x0009C3 00:89B3: 81        .byte $81   ; 
- D 0 - I - 0x0009C4 00:89B4: 02        .byte $02   ; 
- D 0 - I - 0x0009C5 00:89B5: E9        .byte $E9, $AB, $E0   ; 

- D 0 - I - 0x0009C8 00:89B8: 01        .byte $01   ; 
- D 0 - I - 0x0009C9 00:89B9: 03        .byte $03   ; 
- D 0 - I - 0x0009CA 00:89BA: 01        .byte $01, $B9, $00   ; 



off_09_89BD_0B:
- D 0 - I - 0x0009CD 00:89BD: 81        .byte $81   ; counter
- D 0 - I - 0x0009CE 00:89BE: 02        .byte $02   ; spr_A
- D 0 - I - 0x0009CF 00:89BF: F9        .byte $F9, $85, $E0   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x0009D2 00:89C2: 81        .byte $81   ; 
- D 0 - I - 0x0009D3 00:89C3: 42        .byte $42   ; 
- D 0 - I - 0x0009D4 00:89C4: 01        .byte $01, $85, $E0   ; 

- D 0 - I - 0x0009D7 00:89C7: 84        .byte $84   ; 
- D 0 - I - 0x0009D8 00:89C8: 02        .byte $02   ; 
- D 0 - I - 0x0009D9 00:89C9: F1        .byte $F1, $93, $E0   ; 
- D 0 - I - 0x0009DC 00:89CC: F1        .byte $F1, $97, $F0   ; 
- D 0 - I - 0x0009DF 00:89CF: E9        .byte $E9, $91, $E0   ; 
- D 0 - I - 0x0009E2 00:89D2: E9        .byte $E9, $95, $F0   ; 

- D 0 - I - 0x0009E5 00:89D5: 84        .byte $84   ; 
- D 0 - I - 0x0009E6 00:89D6: 42        .byte $42   ; 
- D 0 - I - 0x0009E7 00:89D7: 11        .byte $11, $99, $E4   ; 
- D 0 - I - 0x0009EA 00:89DA: 09        .byte $09, $9B, $E4   ; 
- D 0 - I - 0x0009ED 00:89DD: 11        .byte $11, $9D, $F4   ; 
- D 0 - I - 0x0009F0 00:89E0: 09        .byte $09, $9F, $F4   ; 

- D 0 - I - 0x0009F3 00:89E3: 81        .byte $81   ; 
- D 0 - I - 0x0009F4 00:89E4: 03        .byte $03   ; 
- D 0 - I - 0x0009F5 00:89E5: F9        .byte $F9, $B5, $F0   ; 

- D 0 - I - 0x0009F8 00:89E8: 81        .byte $81   ; 
- D 0 - I - 0x0009F9 00:89E9: 43        .byte $43   ; 
- D 0 - I - 0x0009FA 00:89EA: 01        .byte $01, $B5, $F0   ; 

- D 0 - I - 0x0009FD 00:89ED: 82        .byte $82   ; 
- D 0 - I - 0x0009FE 00:89EE: 03        .byte $03   ; 
- D 0 - I - 0x0009FF 00:89EF: 01        .byte $01, $B9, $00   ; 
- D 0 - I - 0x000A02 00:89F2: F9        .byte $F9, $B7, $00   ; 

- D 0 - I - 0x000A05 00:89F5: 81        .byte $81   ; 
- D 0 - I - 0x000A06 00:89F6: 02        .byte $02   ; 
- D 0 - I - 0x000A07 00:89F7: F9        .byte $F9, $87, $F0   ; 

- D 0 - I - 0x000A0A 00:89FA: 01        .byte $01   ; 
- D 0 - I - 0x000A0B 00:89FB: 42        .byte $42   ; 
- D 0 - I - 0x000A0C 00:89FC: 01        .byte $01, $87, $F0   ; 



off_09_89FF_0C:
- D 0 - I - 0x000A0F 00:89FF: 81        .byte $81   ; counter
- D 0 - I - 0x000A10 00:8A00: 02        .byte $02   ; spr_A
- D 0 - I - 0x000A11 00:8A01: F9        .byte $F9, $89, $DE   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x000A14 00:8A04: 81        .byte $81   ; 
- D 0 - I - 0x000A15 00:8A05: 42        .byte $42   ; 
- D 0 - I - 0x000A16 00:8A06: 01        .byte $01, $89, $DE   ; 

- D 0 - I - 0x000A19 00:8A09: 84        .byte $84   ; 
- D 0 - I - 0x000A1A 00:8A0A: 02        .byte $02   ; 
- D 0 - I - 0x000A1B 00:8A0B: F1        .byte $F1, $9B, $E4   ; 
- D 0 - I - 0x000A1E 00:8A0E: E9        .byte $E9, $99, $E4   ; 
- D 0 - I - 0x000A21 00:8A11: E9        .byte $E9, $9D, $F4   ; 
- D 0 - I - 0x000A24 00:8A14: F1        .byte $F1, $9F, $F4   ; 

- D 0 - I - 0x000A27 00:8A17: 84        .byte $84   ; 
- D 0 - I - 0x000A28 00:8A18: 42        .byte $42   ; 
- D 0 - I - 0x000A29 00:8A19: 09        .byte $09, $93, $E0   ; 
- D 0 - I - 0x000A2C 00:8A1C: 11        .byte $11, $91, $E0   ; 
- D 0 - I - 0x000A2F 00:8A1F: 11        .byte $11, $95, $F0   ; 
- D 0 - I - 0x000A32 00:8A22: 09        .byte $09, $97, $F0   ; 

- D 0 - I - 0x000A35 00:8A25: 81        .byte $81   ; 
- D 0 - I - 0x000A36 00:8A26: 03        .byte $03   ; 
- D 0 - I - 0x000A37 00:8A27: F9        .byte $F9, $B5, $F0   ; 

- D 0 - I - 0x000A3A 00:8A2A: 81        .byte $81   ; 
- D 0 - I - 0x000A3B 00:8A2B: 43        .byte $43   ; 
- D 0 - I - 0x000A3C 00:8A2C: 01        .byte $01, $B5, $F0   ; 

- D 0 - I - 0x000A3F 00:8A2F: 82        .byte $82   ; 
- D 0 - I - 0x000A40 00:8A30: 03        .byte $03   ; 
- D 0 - I - 0x000A41 00:8A31: F9        .byte $F9, $BB, $00   ; 
- D 0 - I - 0x000A44 00:8A34: 01        .byte $01, $BD, $00   ; 

- D 0 - I - 0x000A47 00:8A37: 81        .byte $81   ; 
- D 0 - I - 0x000A48 00:8A38: 02        .byte $02   ; 
- D 0 - I - 0x000A49 00:8A39: F9        .byte $F9, $8B, $EE   ; 

- D 0 - I - 0x000A4C 00:8A3C: 01        .byte $01   ; 
- D 0 - I - 0x000A4D 00:8A3D: 42        .byte $42   ; 
- D 0 - I - 0x000A4E 00:8A3E: 01        .byte $01, $8B, $EE   ; 



off_09_8A41_0D:
- D 0 - I - 0x000A51 00:8A41: 81        .byte $81   ; counter
- D 0 - I - 0x000A52 00:8A42: 02        .byte $02   ; spr_A
- D 0 - I - 0x000A53 00:8A43: F9        .byte $F9, $8D, $E0   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x000A56 00:8A46: 81        .byte $81   ; 
- D 0 - I - 0x000A57 00:8A47: 42        .byte $42   ; 
- D 0 - I - 0x000A58 00:8A48: 01        .byte $01, $89, $E0   ; 

- D 0 - I - 0x000A5B 00:8A4B: 84        .byte $84   ; 
- D 0 - I - 0x000A5C 00:8A4C: 02        .byte $02   ; 
- D 0 - I - 0x000A5D 00:8A4D: F1        .byte $F1, $A5, $E0   ; 
- D 0 - I - 0x000A60 00:8A50: E9        .byte $E9, $A3, $E0   ; 
- D 0 - I - 0x000A63 00:8A53: E1        .byte $E1, $A1, $E0   ; 
- D 0 - I - 0x000A66 00:8A56: E1        .byte $E1, $A7, $F0   ; 

- D 0 - I - 0x000A69 00:8A59: 81        .byte $81   ; 
- D 0 - I - 0x000A6A 00:8A5A: 03        .byte $03   ; 
- D 0 - I - 0x000A6B 00:8A5B: F9        .byte $F9, $B5, $F0   ; 

- D 0 - I - 0x000A6E 00:8A5E: 81        .byte $81   ; 
- D 0 - I - 0x000A6F 00:8A5F: 43        .byte $43   ; 
- D 0 - I - 0x000A70 00:8A60: 01        .byte $01, $B5, $F0   ; 

- D 0 - I - 0x000A73 00:8A63: 81        .byte $81   ; 
- D 0 - I - 0x000A74 00:8A64: 03        .byte $03   ; 
- D 0 - I - 0x000A75 00:8A65: F1        .byte $F1, $A9, $F0   ; 

- D 0 - I - 0x000A78 00:8A68: 81        .byte $81   ; 
- D 0 - I - 0x000A79 00:8A69: 02        .byte $02   ; 
- D 0 - I - 0x000A7A 00:8A6A: F1        .byte $F1, $A9, $F0   ; 

- D 0 - I - 0x000A7D 00:8A6D: 82        .byte $82   ; 
- D 0 - I - 0x000A7E 00:8A6E: 43        .byte $43   ; 
- D 0 - I - 0x000A7F 00:8A6F: F9        .byte $F9, $BD, $00   ; 
- D 0 - I - 0x000A82 00:8A72: 01        .byte $01, $BB, $00   ; 

- D 0 - I - 0x000A85 00:8A75: 84        .byte $84   ; 
- D 0 - I - 0x000A86 00:8A76: 42        .byte $42   ; 
- D 0 - I - 0x000A87 00:8A77: 09        .byte $09, $9B, $E4   ; 
- D 0 - I - 0x000A8A 00:8A7A: 11        .byte $11, $99, $E4   ; 
- D 0 - I - 0x000A8D 00:8A7D: 11        .byte $11, $9D, $F4   ; 
- D 0 - I - 0x000A90 00:8A80: 09        .byte $09, $9F, $F4   ; 

- D 0 - I - 0x000A93 00:8A83: 81        .byte $81   ; 
- D 0 - I - 0x000A94 00:8A84: 02        .byte $02   ; 
- D 0 - I - 0x000A95 00:8A85: F9        .byte $F9, $8B, $F0   ; 

- D 0 - I - 0x000A98 00:8A88: 01        .byte $01   ; 
- D 0 - I - 0x000A99 00:8A89: 42        .byte $42   ; 
- D 0 - I - 0x000A9A 00:8A8A: 01        .byte $01, $8B, $F0   ; 



off_09_8A8D_0E:
- D 0 - I - 0x000A9D 00:8A8D: 81        .byte $81   ; counter
- D 0 - I - 0x000A9E 00:8A8E: 42        .byte $42   ; spr_A
- D 0 - I - 0x000A9F 00:8A8F: 01        .byte $01, $8D, $E0   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x000AA2 00:8A92: 85        .byte $85   ; 
- D 0 - I - 0x000AA3 00:8A93: 02        .byte $02   ; 
- D 0 - I - 0x000AA4 00:8A94: F9        .byte $F9, $89, $E0   ; 
- D 0 - I - 0x000AA7 00:8A97: F1        .byte $F1, $9B, $E4   ; 
- D 0 - I - 0x000AAA 00:8A9A: E9        .byte $E9, $99, $E4   ; 
- D 0 - I - 0x000AAD 00:8A9D: E9        .byte $E9, $9D, $F4   ; 
- D 0 - I - 0x000AB0 00:8AA0: F1        .byte $F1, $9F, $F4   ; 

- D 0 - I - 0x000AB3 00:8AA3: 81        .byte $81   ; 
- D 0 - I - 0x000AB4 00:8AA4: 03        .byte $03   ; 
- D 0 - I - 0x000AB5 00:8AA5: F9        .byte $F9, $B5, $F0   ; 

- D 0 - I - 0x000AB8 00:8AA8: 81        .byte $81   ; 
- D 0 - I - 0x000AB9 00:8AA9: 43        .byte $43   ; 
- D 0 - I - 0x000ABA 00:8AAA: 01        .byte $01, $B5, $F0   ; 

- D 0 - I - 0x000ABD 00:8AAD: 85        .byte $85   ; 
- D 0 - I - 0x000ABE 00:8AAE: 42        .byte $42   ; 
- D 0 - I - 0x000ABF 00:8AAF: 11        .byte $11, $AB, $E0   ; 
- D 0 - I - 0x000AC2 00:8AB2: 11        .byte $11, $AD, $F0   ; 
- D 0 - I - 0x000AC5 00:8AB5: 09        .byte $09, $93, $E0   ; 
- D 0 - I - 0x000AC8 00:8AB8: 0C        .byte $0C, $B1, $00   ; 
- D 0 - I - 0x000ACB 00:8ABB: 0C        .byte $0C, $B3, $10   ; 

- D 0 - I - 0x000ACE 00:8ABE: 82        .byte $82   ; 
- D 0 - I - 0x000ACF 00:8ABF: 43        .byte $43   ; 
- D 0 - I - 0x000AD0 00:8AC0: F9        .byte $F9, $B9, $00   ; 
- D 0 - I - 0x000AD3 00:8AC3: 01        .byte $01, $B7, $00   ; 

- D 0 - I - 0x000AD6 00:8AC6: 81        .byte $81   ; 
- D 0 - I - 0x000AD7 00:8AC7: 02        .byte $02   ; 
- D 0 - I - 0x000AD8 00:8AC8: F9        .byte $F9, $8F, $F0   ; 

- D 0 - I - 0x000ADB 00:8ACB: 02        .byte $02   ; 
- D 0 - I - 0x000ADC 00:8ACC: 42        .byte $42   ; 
- D 0 - I - 0x000ADD 00:8ACD: 01        .byte $01, $8F, $F0   ; 
- D 0 - I - 0x000AE0 00:8AD0: 09        .byte $09, $AF, $F0   ; 



off_09_8AD3_0F:
- D 0 - I - 0x000AE3 00:8AD3: 81        .byte $81   ; counter
- D 0 - I - 0x000AE4 00:8AD4: 02        .byte $02   ; spr_A
- D 0 - I - 0x000AE5 00:8AD5: F9        .byte $F9, $8D, $DE   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x000AE8 00:8AD8: 81        .byte $81   ; 
- D 0 - I - 0x000AE9 00:8AD9: 42        .byte $42   ; 
- D 0 - I - 0x000AEA 00:8ADA: 01        .byte $01, $8D, $DE   ; 

- D 0 - I - 0x000AED 00:8ADD: 84        .byte $84   ; 
- D 0 - I - 0x000AEE 00:8ADE: 02        .byte $02   ; 
- D 0 - I - 0x000AEF 00:8ADF: F1        .byte $F1, $93, $E0   ; 
- D 0 - I - 0x000AF2 00:8AE2: E9        .byte $E9, $95, $F0   ; 
- D 0 - I - 0x000AF5 00:8AE5: F1        .byte $F1, $97, $F0   ; 
- D 0 - I - 0x000AF8 00:8AE8: E9        .byte $E9, $91, $E0   ; 

- D 0 - I - 0x000AFB 00:8AEB: 84        .byte $84   ; 
- D 0 - I - 0x000AFC 00:8AEC: 42        .byte $42   ; 
- D 0 - I - 0x000AFD 00:8AED: 11        .byte $11, $91, $E0   ; 
- D 0 - I - 0x000B00 00:8AF0: 11        .byte $11, $95, $F0   ; 
- D 0 - I - 0x000B03 00:8AF3: 09        .byte $09, $93, $E0   ; 
- D 0 - I - 0x000B06 00:8AF6: 09        .byte $09, $97, $F0   ; 

- D 0 - I - 0x000B09 00:8AF9: 81        .byte $81   ; 
- D 0 - I - 0x000B0A 00:8AFA: 03        .byte $03   ; 
- D 0 - I - 0x000B0B 00:8AFB: F9        .byte $F9, $B5, $F0   ; 

- D 0 - I - 0x000B0E 00:8AFE: 83        .byte $83   ; 
- D 0 - I - 0x000B0F 00:8AFF: 43        .byte $43   ; 
- D 0 - I - 0x000B10 00:8B00: 01        .byte $01, $B5, $F0   ; 
- D 0 - I - 0x000B13 00:8B03: 01        .byte $01, $BB, $00   ; 
- D 0 - I - 0x000B16 00:8B06: F9        .byte $F9, $B9, $00   ; 

- D 0 - I - 0x000B19 00:8B09: 81        .byte $81   ; 
- D 0 - I - 0x000B1A 00:8B0A: 02        .byte $02   ; 
- D 0 - I - 0x000B1B 00:8B0B: F9        .byte $F9, $8F, $EE   ; 

- D 0 - I - 0x000B1E 00:8B0E: 01        .byte $01   ; 
- D 0 - I - 0x000B1F 00:8B0F: 42        .byte $42   ; 
- D 0 - I - 0x000B20 00:8B10: 01        .byte $01, $8F, $EE   ; 



off_09_8B13_10:
- D 0 - I - 0x000B23 00:8B13: 81        .byte $81   ; counter
- D 0 - I - 0x000B24 00:8B14: 02        .byte $02   ; spr_A
- D 0 - I - 0x000B25 00:8B15: F9        .byte $F9, $85, $E0   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x000B28 00:8B18: 81        .byte $81   ; 
- D 0 - I - 0x000B29 00:8B19: 42        .byte $42   ; 
- D 0 - I - 0x000B2A 00:8B1A: 01        .byte $01, $85, $E0   ; 

- D 0 - I - 0x000B2D 00:8B1D: 84        .byte $84   ; 
- D 0 - I - 0x000B2E 00:8B1E: 02        .byte $02   ; 
- D 0 - I - 0x000B2F 00:8B1F: E9        .byte $E9, $91, $E0   ; 
- D 0 - I - 0x000B32 00:8B22: F1        .byte $F1, $93, $E0   ; 
- D 0 - I - 0x000B35 00:8B25: E9        .byte $E9, $95, $F0   ; 
- D 0 - I - 0x000B38 00:8B28: F1        .byte $F1, $97, $F0   ; 

- D 0 - I - 0x000B3B 00:8B2B: 84        .byte $84   ; 
- D 0 - I - 0x000B3C 00:8B2C: 42        .byte $42   ; 
- D 0 - I - 0x000B3D 00:8B2D: 11        .byte $11, $91, $E0   ; 
- D 0 - I - 0x000B40 00:8B30: 09        .byte $09, $93, $E0   ; 
- D 0 - I - 0x000B43 00:8B33: 11        .byte $11, $95, $F0   ; 
- D 0 - I - 0x000B46 00:8B36: 09        .byte $09, $97, $F0   ; 

- D 0 - I - 0x000B49 00:8B39: 81        .byte $81   ; 
- D 0 - I - 0x000B4A 00:8B3A: 03        .byte $03   ; 
- D 0 - I - 0x000B4B 00:8B3B: F9        .byte $F9, $B5, $F0   ; 

- D 0 - I - 0x000B4E 00:8B3E: 82        .byte $82   ; 
- D 0 - I - 0x000B4F 00:8B3F: 43        .byte $43   ; 
- D 0 - I - 0x000B50 00:8B40: 01        .byte $01, $B5, $F0   ; 
- D 0 - I - 0x000B53 00:8B43: F9        .byte $F9, $B9, $00   ; 

- D 0 - I - 0x000B56 00:8B46: 81        .byte $81   ; 
- D 0 - I - 0x000B57 00:8B47: 03        .byte $03   ; 
- D 0 - I - 0x000B58 00:8B48: 01        .byte $01, $BD, $00   ; 

- D 0 - I - 0x000B5B 00:8B4B: 81        .byte $81   ; 
- D 0 - I - 0x000B5C 00:8B4C: 02        .byte $02   ; 
- D 0 - I - 0x000B5D 00:8B4D: F9        .byte $F9, $87, $F0   ; 

- D 0 - I - 0x000B60 00:8B50: 01        .byte $01   ; 
- D 0 - I - 0x000B61 00:8B51: 42        .byte $42   ; 
- D 0 - I - 0x000B62 00:8B52: 01        .byte $01, $87, $F0   ; 



off_09_8B55_11:
- D 0 - I - 0x000B65 00:8B55: 81        .byte $81   ; counter
- D 0 - I - 0x000B66 00:8B56: 02        .byte $02   ; spr_A
- D 0 - I - 0x000B67 00:8B57: F9        .byte $F9, $81, $E0   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x000B6A 00:8B5A: 81        .byte $81   ; 
- D 0 - I - 0x000B6B 00:8B5B: 42        .byte $42   ; 
- D 0 - I - 0x000B6C 00:8B5C: 01        .byte $01, $81, $E0   ; 

- D 0 - I - 0x000B6F 00:8B5F: 86        .byte $86   ; 
- D 0 - I - 0x000B70 00:8B60: 02        .byte $02   ; 
- D 0 - I - 0x000B71 00:8B61: F1        .byte $F1, $93, $E0   ; 
- D 0 - I - 0x000B74 00:8B64: E9        .byte $E9, $AB, $E0   ; 
- D 0 - I - 0x000B77 00:8B67: E9        .byte $E9, $AD, $F0   ; 
- D 0 - I - 0x000B7A 00:8B6A: F1        .byte $F1, $AF, $F0   ; 
- D 0 - I - 0x000B7D 00:8B6D: EE        .byte $EE, $B1, $00   ; 
- D 0 - I - 0x000B80 00:8B70: EE        .byte $EE, $B3, $10   ; 

- D 0 - I - 0x000B83 00:8B73: 86        .byte $86   ; 
- D 0 - I - 0x000B84 00:8B74: 42        .byte $42   ; 
- D 0 - I - 0x000B85 00:8B75: 09        .byte $09, $93, $E0   ; 
- D 0 - I - 0x000B88 00:8B78: 11        .byte $11, $AB, $E0   ; 
- D 0 - I - 0x000B8B 00:8B7B: 11        .byte $11, $AD, $F0   ; 
- D 0 - I - 0x000B8E 00:8B7E: 09        .byte $09, $AF, $F0   ; 
- D 0 - I - 0x000B91 00:8B81: 0C        .byte $0C, $B1, $00   ; 
- D 0 - I - 0x000B94 00:8B84: 0C        .byte $0C, $B3, $10   ; 

- D 0 - I - 0x000B97 00:8B87: 81        .byte $81   ; 
- D 0 - I - 0x000B98 00:8B88: 03        .byte $03   ; 
- D 0 - I - 0x000B99 00:8B89: F9        .byte $F9, $B5, $F0   ; 

- D 0 - I - 0x000B9C 00:8B8C: 81        .byte $81   ; 
- D 0 - I - 0x000B9D 00:8B8D: 43        .byte $43   ; 
- D 0 - I - 0x000B9E 00:8B8E: 01        .byte $01, $B5, $F0   ; 

- D 0 - I - 0x000BA1 00:8B91: 82        .byte $82   ; 
- D 0 - I - 0x000BA2 00:8B92: 03        .byte $03   ; 
- D 0 - I - 0x000BA3 00:8B93: F9        .byte $F9, $BB, $00   ; 
- D 0 - I - 0x000BA6 00:8B96: 01        .byte $01, $B9, $00   ; 

- D 0 - I - 0x000BA9 00:8B99: 81        .byte $81   ; 
- D 0 - I - 0x000BAA 00:8B9A: 02        .byte $02   ; 
- D 0 - I - 0x000BAB 00:8B9B: F9        .byte $F9, $83, $F0   ; 

- D 0 - I - 0x000BAE 00:8B9E: 01        .byte $01   ; 
- D 0 - I - 0x000BAF 00:8B9F: 42        .byte $42   ; 
- D 0 - I - 0x000BB0 00:8BA0: 01        .byte $01, $83, $F0   ; 



off_09_8BA3_12:
- D 0 - I - 0x000BB3 00:8BA3: 81        .byte $81   ; counter
- D 0 - I - 0x000BB4 00:8BA4: 02        .byte $02   ; spr_A
- D 0 - I - 0x000BB5 00:8BA5: F9        .byte $F9, $8D, $DD   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x000BB8 00:8BA8: 81        .byte $81   ; 
- D 0 - I - 0x000BB9 00:8BA9: 42        .byte $42   ; 
- D 0 - I - 0x000BBA 00:8BAA: 01        .byte $01, $8D, $DD   ; 

- D 0 - I - 0x000BBD 00:8BAD: 84        .byte $84   ; 
- D 0 - I - 0x000BBE 00:8BAE: 02        .byte $02   ; 
- D 0 - I - 0x000BBF 00:8BAF: E9        .byte $E9, $91, $E0   ; 
- D 0 - I - 0x000BC2 00:8BB2: F1        .byte $F1, $93, $E0   ; 
- D 0 - I - 0x000BC5 00:8BB5: E9        .byte $E9, $95, $F0   ; 
- D 0 - I - 0x000BC8 00:8BB8: F1        .byte $F1, $97, $F0   ; 

- D 0 - I - 0x000BCB 00:8BBB: 83        .byte $83   ; 
- D 0 - I - 0x000BCC 00:8BBC: 42        .byte $42   ; 
- D 0 - I - 0x000BCD 00:8BBD: 11        .byte $11, $91, $E0   ; 
- D 0 - I - 0x000BD0 00:8BC0: 11        .byte $11, $95, $F0   ; 
- D 0 - I - 0x000BD3 00:8BC3: 09        .byte $09, $93, $E0   ; 

- D 0 - I - 0x000BD6 00:8BC6: 81        .byte $81   ; 
- D 0 - I - 0x000BD7 00:8BC7: 03        .byte $03   ; 
- D 0 - I - 0x000BD8 00:8BC8: F9        .byte $F9, $B5, $F0   ; 

- D 0 - I - 0x000BDB 00:8BCB: 81        .byte $81   ; 
- D 0 - I - 0x000BDC 00:8BCC: 43        .byte $43   ; 
- D 0 - I - 0x000BDD 00:8BCD: 01        .byte $01, $B5, $F0   ; 

- D 0 - I - 0x000BE0 00:8BD0: 82        .byte $82   ; 
- D 0 - I - 0x000BE1 00:8BD1: 03        .byte $03   ; 
- D 0 - I - 0x000BE2 00:8BD2: F9        .byte $F9, $B7, $00   ; 
- D 0 - I - 0x000BE5 00:8BD5: 01        .byte $01, $B9, $00   ; 

- D 0 - I - 0x000BE8 00:8BD8: 81        .byte $81   ; 
- D 0 - I - 0x000BE9 00:8BD9: 02        .byte $02   ; 
- D 0 - I - 0x000BEA 00:8BDA: F9        .byte $F9, $8F, $ED   ; 

- D 0 - I - 0x000BED 00:8BDD: 02        .byte $02   ; 
- D 0 - I - 0x000BEE 00:8BDE: 42        .byte $42   ; 
- D 0 - I - 0x000BEF 00:8BDF: 01        .byte $01, $8F, $ED   ; 
- D 0 - I - 0x000BF2 00:8BE2: 09        .byte $09, $97, $F0   ; 



off_09_8BE5_13:
- D 0 - I - 0x000BF5 00:8BE5: 81        .byte $81   ; counter
- D 0 - I - 0x000BF6 00:8BE6: 02        .byte $02   ; spr_A
- D 0 - I - 0x000BF7 00:8BE7: F9        .byte $F9, $89, $E0   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x000BFA 00:8BEA: 81        .byte $81   ; 
- D 0 - I - 0x000BFB 00:8BEB: 42        .byte $42   ; 
- D 0 - I - 0x000BFC 00:8BEC: 01        .byte $01, $89, $E0   ; 

- D 0 - I - 0x000BFF 00:8BEF: 84        .byte $84   ; 
- D 0 - I - 0x000C00 00:8BF0: 02        .byte $02   ; 
- D 0 - I - 0x000C01 00:8BF1: E9        .byte $E9, $99, $E4   ; 
- D 0 - I - 0x000C04 00:8BF4: F1        .byte $F1, $9B, $E4   ; 
- D 0 - I - 0x000C07 00:8BF7: E9        .byte $E9, $9D, $F4   ; 
- D 0 - I - 0x000C0A 00:8BFA: F1        .byte $F1, $9F, $F4   ; 

- D 0 - I - 0x000C0D 00:8BFD: 84        .byte $84   ; 
- D 0 - I - 0x000C0E 00:8BFE: 42        .byte $42   ; 
- D 0 - I - 0x000C0F 00:8BFF: 09        .byte $09, $9B, $E4   ; 
- D 0 - I - 0x000C12 00:8C02: 11        .byte $11, $99, $E4   ; 
- D 0 - I - 0x000C15 00:8C05: 11        .byte $11, $9D, $F4   ; 
- D 0 - I - 0x000C18 00:8C08: 09        .byte $09, $9F, $F4   ; 

- D 0 - I - 0x000C1B 00:8C0B: 81        .byte $81   ; 
- D 0 - I - 0x000C1C 00:8C0C: 03        .byte $03   ; 
- D 0 - I - 0x000C1D 00:8C0D: F9        .byte $F9, $B5, $F0   ; 

- D 0 - I - 0x000C20 00:8C10: 81        .byte $81   ; 
- D 0 - I - 0x000C21 00:8C11: 43        .byte $43   ; 
- D 0 - I - 0x000C22 00:8C12: 01        .byte $01, $B5, $F0   ; 

- D 0 - I - 0x000C25 00:8C15: 82        .byte $82   ; 
- D 0 - I - 0x000C26 00:8C16: 03        .byte $03   ; 
- D 0 - I - 0x000C27 00:8C17: 01        .byte $01, $BD, $00   ; 
- D 0 - I - 0x000C2A 00:8C1A: F9        .byte $F9, $BB, $00   ; 

- D 0 - I - 0x000C2D 00:8C1D: 81        .byte $81   ; 
- D 0 - I - 0x000C2E 00:8C1E: 02        .byte $02   ; 
- D 0 - I - 0x000C2F 00:8C1F: F9        .byte $F9, $8B, $F0   ; 

- D 0 - I - 0x000C32 00:8C22: 01        .byte $01   ; 
- D 0 - I - 0x000C33 00:8C23: 42        .byte $42   ; 
- D 0 - I - 0x000C34 00:8C24: 01        .byte $01, $8B, $F0   ; 



off_09_8C27_14:
- - - - - - 0x000C37 00:8C27: 81        .byte $81   ; counter
- - - - - - 0x000C38 00:8C28: 02        .byte $02   ; spr_A
- - - - - - 0x000C39 00:8C29: F9        .byte $F9, $8D, $E0   ; spr_X, spr_T, spr_Y

- - - - - - 0x000C3C 00:8C2C: 81        .byte $81   ; 
- - - - - - 0x000C3D 00:8C2D: 42        .byte $42   ; 
- - - - - - 0x000C3E 00:8C2E: 01        .byte $01, $89, $E0   ; 

- - - - - - 0x000C41 00:8C31: 84        .byte $84   ; 
- - - - - - 0x000C42 00:8C32: 02        .byte $02   ; 
- - - - - - 0x000C43 00:8C33: F1        .byte $F1, $A5, $E0   ; 
- - - - - - 0x000C46 00:8C36: E9        .byte $E9, $A3, $E0   ; 
- - - - - - 0x000C49 00:8C39: E1        .byte $E1, $A1, $E0   ; 
- - - - - - 0x000C4C 00:8C3C: E1        .byte $E1, $A7, $F0   ; 

- - - - - - 0x000C4F 00:8C3F: 82        .byte $82   ; 
- - - - - - 0x000C50 00:8C40: 03        .byte $03   ; 
- - - - - - 0x000C51 00:8C41: F1        .byte $F1, $A9, $F0   ; 
- - - - - - 0x000C54 00:8C44: F9        .byte $F9, $B5, $F0   ; 

- - - - - - 0x000C57 00:8C47: 81        .byte $81   ; 
- - - - - - 0x000C58 00:8C48: 43        .byte $43   ; 
- - - - - - 0x000C59 00:8C49: 01        .byte $01, $B5, $F0   ; 

- - - - - - 0x000C5C 00:8C4C: 84        .byte $84   ; 
- - - - - - 0x000C5D 00:8C4D: 42        .byte $42   ; 
- - - - - - 0x000C5E 00:8C4E: 09        .byte $09, $A5, $E0   ; 
- - - - - - 0x000C61 00:8C51: 11        .byte $11, $A3, $E0   ; 
- - - - - - 0x000C64 00:8C54: 19        .byte $19, $A1, $E0   ; 
- - - - - - 0x000C67 00:8C57: 19        .byte $19, $A7, $F0   ; 

- - - - - - 0x000C6A 00:8C5A: 83        .byte $83   ; 
- - - - - - 0x000C6B 00:8C5B: 43        .byte $43   ; 
- - - - - - 0x000C6C 00:8C5C: 09        .byte $09, $A9, $F0   ; 
- - - - - - 0x000C6F 00:8C5F: F9        .byte $F9, $BD, $00   ; 
- - - - - - 0x000C72 00:8C62: 01        .byte $01, $BB, $00   ; 

- - - - - - 0x000C75 00:8C65: 81        .byte $81   ; 
- - - - - - 0x000C76 00:8C66: 02        .byte $02   ; 
- - - - - - 0x000C77 00:8C67: F9        .byte $F9, $8F, $F0   ; 

- - - - - - 0x000C7A 00:8C6A: 01        .byte $01   ; 
- - - - - - 0x000C7B 00:8C6B: 42        .byte $42   ; 
- - - - - - 0x000C7C 00:8C6C: 01        .byte $01, $8F, $F0   ; 



off_09_8C6F_15:
- - - - - - 0x000C7F 00:8C6F: 81        .byte $81   ; counter
- - - - - - 0x000C80 00:8C70: 02        .byte $02   ; spr_A
- - - - - - 0x000C81 00:8C71: F9        .byte $F9, $85, $E0   ; spr_X, spr_T, spr_Y

- - - - - - 0x000C84 00:8C74: 81        .byte $81   ; 
- - - - - - 0x000C85 00:8C75: 42        .byte $42   ; 
- - - - - - 0x000C86 00:8C76: 01        .byte $01, $85, $E0   ; 

- - - - - - 0x000C89 00:8C79: 84        .byte $84   ; 
- - - - - - 0x000C8A 00:8C7A: 02        .byte $02   ; 
- - - - - - 0x000C8B 00:8C7B: F1        .byte $F1, $9B, $E4   ; 
- - - - - - 0x000C8E 00:8C7E: E9        .byte $E9, $99, $E4   ; 
- - - - - - 0x000C91 00:8C81: E9        .byte $E9, $9D, $F4   ; 
- - - - - - 0x000C94 00:8C84: F1        .byte $F1, $9F, $F4   ; 

- - - - - - 0x000C97 00:8C87: 84        .byte $84   ; 
- - - - - - 0x000C98 00:8C88: 42        .byte $42   ; 
- - - - - - 0x000C99 00:8C89: 09        .byte $09, $9B, $E4   ; 
- - - - - - 0x000C9C 00:8C8C: 11        .byte $11, $99, $E4   ; 
- - - - - - 0x000C9F 00:8C8F: 11        .byte $11, $9D, $F4   ; 
- - - - - - 0x000CA2 00:8C92: 09        .byte $09, $9F, $F4   ; 

- - - - - - 0x000CA5 00:8C95: 81        .byte $81   ; 
- - - - - - 0x000CA6 00:8C96: 03        .byte $03   ; 
- - - - - - 0x000CA7 00:8C97: F9        .byte $F9, $B5, $F0   ; 

- - - - - - 0x000CAA 00:8C9A: 83        .byte $83   ; 
- - - - - - 0x000CAB 00:8C9B: 43        .byte $43   ; 
- - - - - - 0x000CAC 00:8C9C: 01        .byte $01, $B5, $F0   ; 
- - - - - - 0x000CAF 00:8C9F: F9        .byte $F9, $B9, $00   ; 
- - - - - - 0x000CB2 00:8CA2: 01        .byte $01, $B7, $00   ; 

- - - - - - 0x000CB5 00:8CA5: 81        .byte $81   ; 
- - - - - - 0x000CB6 00:8CA6: 02        .byte $02   ; 
- - - - - - 0x000CB7 00:8CA7: F9        .byte $F9, $87, $F0   ; 

- - - - - - 0x000CBA 00:8CAA: 01        .byte $01   ; 
- - - - - - 0x000CBB 00:8CAB: 42        .byte $42   ; 
- - - - - - 0x000CBC 00:8CAC: 01        .byte $01, $87, $F0   ; 



off_09_8CAF_16:
- - - - - - 0x000CBF 00:8CAF: 81        .byte $81   ; counter
- - - - - - 0x000CC0 00:8CB0: 02        .byte $02   ; spr_A
- - - - - - 0x000CC1 00:8CB1: F9        .byte $F9, $85, $E0   ; spr_X, spr_T, spr_Y

- - - - - - 0x000CC4 00:8CB4: 85        .byte $85   ; 
- - - - - - 0x000CC5 00:8CB5: 42        .byte $42   ; 
- - - - - - 0x000CC6 00:8CB6: 01        .byte $01, $85, $E0   ; 
- - - - - - 0x000CC9 00:8CB9: 09        .byte $09, $9B, $E4   ; 
- - - - - - 0x000CCC 00:8CBC: 11        .byte $11, $99, $E4   ; 
- - - - - - 0x000CCF 00:8CBF: 11        .byte $11, $9D, $F4   ; 
- - - - - - 0x000CD2 00:8CC2: 09        .byte $09, $9F, $F4   ; 

- - - - - - 0x000CD5 00:8CC5: 84        .byte $84   ; 
- - - - - - 0x000CD6 00:8CC6: 02        .byte $02   ; 
- - - - - - 0x000CD7 00:8CC7: F1        .byte $F1, $93, $E0   ; 
- - - - - - 0x000CDA 00:8CCA: E9        .byte $E9, $95, $F0   ; 
- - - - - - 0x000CDD 00:8CCD: F1        .byte $F1, $97, $F0   ; 
- - - - - - 0x000CE0 00:8CD0: E9        .byte $E9, $91, $E0   ; 

- - - - - - 0x000CE3 00:8CD3: 81        .byte $81   ; 
- - - - - - 0x000CE4 00:8CD4: 03        .byte $03   ; 
- - - - - - 0x000CE5 00:8CD5: F9        .byte $F9, $B5, $F0   ; 

- - - - - - 0x000CE8 00:8CD8: 83        .byte $83   ; 
- - - - - - 0x000CE9 00:8CD9: 43        .byte $43   ; 
- - - - - - 0x000CEA 00:8CDA: 01        .byte $01, $B5, $F0   ; 
- - - - - - 0x000CED 00:8CDD: 01        .byte $01, $BB, $00   ; 
- - - - - - 0x000CF0 00:8CE0: F9        .byte $F9, $B9, $00   ; 

- - - - - - 0x000CF3 00:8CE3: 81        .byte $81   ; 
- - - - - - 0x000CF4 00:8CE4: 02        .byte $02   ; 
- - - - - - 0x000CF5 00:8CE5: F9        .byte $F9, $87, $F0   ; 

- - - - - - 0x000CF8 00:8CE8: 01        .byte $01   ; 
- - - - - - 0x000CF9 00:8CE9: 42        .byte $42   ; 
- - - - - - 0x000CFA 00:8CEA: 01        .byte $01, $87, $F0   ; 



off_09_8CED_17:
off_FF_8CED:
- D 0 - I - 0x000CFD 00:8CED: 85        .byte $85   ; counter
- D 0 - I - 0x000CFE 00:8CEE: 02        .byte $02   ; spr_A
- D 0 - I - 0x000CFF 00:8CEF: E9        .byte $E9, $AD, $F0   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x000D02 00:8CF2: F1        .byte $F1, $AF, $F0   ; 
- D 0 - I - 0x000D05 00:8CF5: EE        .byte $EE, $B1, $00   ; 
- D 0 - I - 0x000D08 00:8CF8: EE        .byte $EE, $B3, $10   ; 
- D 0 - I - 0x000D0B 00:8CFB: F1        .byte $F1, $93, $E0   ; 

- D 0 - I - 0x000D0E 00:8CFE: 84        .byte $84   ; 
- D 0 - I - 0x000D0F 00:8CFF: 42        .byte $42   ; 
- D 0 - I - 0x000D10 00:8D00: 09        .byte $09, $A5, $E0   ; 
- D 0 - I - 0x000D13 00:8D03: 11        .byte $11, $A3, $E0   ; 
- D 0 - I - 0x000D16 00:8D06: 19        .byte $19, $A1, $E0   ; 
- D 0 - I - 0x000D19 00:8D09: 19        .byte $19, $A7, $F0   ; 

- D 0 - I - 0x000D1C 00:8D0C: 81        .byte $81   ; 
- D 0 - I - 0x000D1D 00:8D0D: 43        .byte $43   ; 
- D 0 - I - 0x000D1E 00:8D0E: 09        .byte $09, $A9, $F0   ; 

- D 0 - I - 0x000D21 00:8D11: 81        .byte $81   ; 
- D 0 - I - 0x000D22 00:8D12: 03        .byte $03   ; 
- D 0 - I - 0x000D23 00:8D13: F9        .byte $F9, $B5, $F0   ; 

- D 0 - I - 0x000D26 00:8D16: 81        .byte $81   ; 
- D 0 - I - 0x000D27 00:8D17: 43        .byte $43   ; 
- D 0 - I - 0x000D28 00:8D18: 01        .byte $01, $B5, $F0   ; 

- D 0 - I - 0x000D2B 00:8D1B: 82        .byte $82   ; 
- D 0 - I - 0x000D2C 00:8D1C: 02        .byte $02   ; 
- D 0 - I - 0x000D2D 00:8D1D: F8        .byte $F8, $85, $E2   ; 
- D 0 - I - 0x000D30 00:8D20: F8        .byte $F8, $87, $F2   ; 

- D 0 - I - 0x000D33 00:8D23: 82        .byte $82   ; 
- D 0 - I - 0x000D34 00:8D24: 42        .byte $42   ; 
- D 0 - I - 0x000D35 00:8D25: 00        .byte $00, $85, $E2   ; 
- D 0 - I - 0x000D38 00:8D28: 00        .byte $00, $87, $F2   ; 

- D 0 - I - 0x000D3B 00:8D2B: 81        .byte $81   ; 
- D 0 - I - 0x000D3C 00:8D2C: 02        .byte $02   ; 
- D 0 - I - 0x000D3D 00:8D2D: E9        .byte $E9, $AB, $E0   ; 

- D 0 - I - 0x000D40 00:8D30: 02        .byte $02   ; 
- D 0 - I - 0x000D41 00:8D31: 03        .byte $03   ; 
- D 0 - I - 0x000D42 00:8D32: 01        .byte $01, $B9, $00   ; 
- D 0 - I - 0x000D45 00:8D35: F9        .byte $F9, $BB, $00   ; 



off_09_8D38_18:
off_FF_8D38:
- D 0 - I - 0x000D48 00:8D38: 84        .byte $84   ; counter
- D 0 - I - 0x000D49 00:8D39: 42        .byte $42   ; spr_A
- D 0 - I - 0x000D4A 00:8D3A: 09        .byte $09, $A5, $E1   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x000D4D 00:8D3D: 11        .byte $11, $A3, $E1   ; 
- D 0 - I - 0x000D50 00:8D40: 19        .byte $19, $A1, $E1   ; 
- D 0 - I - 0x000D53 00:8D43: 19        .byte $19, $A7, $F1   ; 

- D 0 - I - 0x000D56 00:8D46: 81        .byte $81   ; 
- D 0 - I - 0x000D57 00:8D47: 43        .byte $43   ; 
- D 0 - I - 0x000D58 00:8D48: 09        .byte $09, $A9, $F0   ; 

- D 0 - I - 0x000D5B 00:8D4B: 81        .byte $81   ; 
- D 0 - I - 0x000D5C 00:8D4C: 03        .byte $03   ; 
- D 0 - I - 0x000D5D 00:8D4D: F9        .byte $F9, $B5, $F0   ; 

- D 0 - I - 0x000D60 00:8D50: 81        .byte $81   ; 
- D 0 - I - 0x000D61 00:8D51: 43        .byte $43   ; 
- D 0 - I - 0x000D62 00:8D52: 01        .byte $01, $B5, $F0   ; 

- D 0 - I - 0x000D65 00:8D55: 81        .byte $81   ; 
- D 0 - I - 0x000D66 00:8D56: 02        .byte $02   ; 
- D 0 - I - 0x000D67 00:8D57: F8        .byte $F8, $87, $F1   ; 

- D 0 - I - 0x000D6A 00:8D5A: 82        .byte $82   ; 
- D 0 - I - 0x000D6B 00:8D5B: 42        .byte $42   ; 
- D 0 - I - 0x000D6C 00:8D5C: 00        .byte $00, $85, $E1   ; 
- D 0 - I - 0x000D6F 00:8D5F: 00        .byte $00, $87, $F1   ; 

- D 0 - I - 0x000D72 00:8D62: 85        .byte $85   ; 
- D 0 - I - 0x000D73 00:8D63: 02        .byte $02   ; 
- D 0 - I - 0x000D74 00:8D64: F1        .byte $F1, $9B, $E4   ; 
- D 0 - I - 0x000D77 00:8D67: E9        .byte $E9, $99, $E4   ; 
- D 0 - I - 0x000D7A 00:8D6A: E9        .byte $E9, $9D, $F4   ; 
- D 0 - I - 0x000D7D 00:8D6D: F1        .byte $F1, $9F, $F4   ; 
- D 0 - I - 0x000D80 00:8D70: F8        .byte $F8, $85, $E1   ; 

- D 0 - I - 0x000D83 00:8D73: 81        .byte $81   ; 
- D 0 - I - 0x000D84 00:8D74: 03        .byte $03   ; 
- D 0 - I - 0x000D85 00:8D75: 01        .byte $01, $BD, $00   ; 

- D 0 - I - 0x000D88 00:8D78: 01        .byte $01   ; 
- D 0 - I - 0x000D89 00:8D79: 43        .byte $43   ; 
- D 0 - I - 0x000D8A 00:8D7A: F9        .byte $F9, $BD, $00   ; 



off_09_8D7D_19:
off_FF_8D7D:
- D 0 - I - 0x000D8D 00:8D7D: 84        .byte $84   ; counter
- D 0 - I - 0x000D8E 00:8D7E: 42        .byte $42   ; spr_A
- D 0 - I - 0x000D8F 00:8D7F: 09        .byte $09, $A5, $E3   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x000D92 00:8D82: 11        .byte $11, $A3, $E3   ; 
- D 0 - I - 0x000D95 00:8D85: 19        .byte $19, $A1, $E3   ; 
- D 0 - I - 0x000D98 00:8D88: 19        .byte $19, $A7, $F3   ; 

- D 0 - I - 0x000D9B 00:8D8B: 81        .byte $81   ; 
- D 0 - I - 0x000D9C 00:8D8C: 43        .byte $43   ; 
- D 0 - I - 0x000D9D 00:8D8D: 09        .byte $09, $A9, $F0   ; 

- D 0 - I - 0x000DA0 00:8D90: 81        .byte $81   ; 
- D 0 - I - 0x000DA1 00:8D91: 03        .byte $03   ; 
- D 0 - I - 0x000DA2 00:8D92: F9        .byte $F9, $B5, $F0   ; 

- D 0 - I - 0x000DA5 00:8D95: 81        .byte $81   ; 
- D 0 - I - 0x000DA6 00:8D96: 43        .byte $43   ; 
- D 0 - I - 0x000DA7 00:8D97: 01        .byte $01, $B5, $F0   ; 

- D 0 - I - 0x000DAA 00:8D9A: 82        .byte $82   ; 
- D 0 - I - 0x000DAB 00:8D9B: 02        .byte $02   ; 
- D 0 - I - 0x000DAC 00:8D9C: F9        .byte $F9, $85, $DD   ; 
- D 0 - I - 0x000DAF 00:8D9F: F9        .byte $F9, $87, $ED   ; 

- D 0 - I - 0x000DB2 00:8DA2: 82        .byte $82   ; 
- D 0 - I - 0x000DB3 00:8DA3: 42        .byte $42   ; 
- D 0 - I - 0x000DB4 00:8DA4: 01        .byte $01, $85, $DD   ; 
- D 0 - I - 0x000DB7 00:8DA7: 01        .byte $01, $87, $ED   ; 

- D 0 - I - 0x000DBA 00:8DAA: 81        .byte $81   ; 
- D 0 - I - 0x000DBB 00:8DAB: 43        .byte $43   ; 
- D 0 - I - 0x000DBC 00:8DAC: F9        .byte $F9, $B9, $00   ; 

- D 0 - I - 0x000DBF 00:8DAF: 84        .byte $84   ; 
- D 0 - I - 0x000DC0 00:8DB0: 02        .byte $02   ; 
- D 0 - I - 0x000DC1 00:8DB1: F1        .byte $F1, $93, $E0   ; 
- D 0 - I - 0x000DC4 00:8DB4: E9        .byte $E9, $91, $E0   ; 
- D 0 - I - 0x000DC7 00:8DB7: E9        .byte $E9, $95, $F0   ; 
- D 0 - I - 0x000DCA 00:8DBA: F1        .byte $F1, $97, $F0   ; 

- D 0 - I - 0x000DCD 00:8DBD: 01        .byte $01   ; 
- D 0 - I - 0x000DCE 00:8DBE: 43        .byte $43   ; 
- D 0 - I - 0x000DCF 00:8DBF: 01        .byte $01, $BB, $00   ; 



off_09_8DC2_1A:
off_FF_8DC2:
- D 0 - I - 0x000DD2 00:8DC2: 84        .byte $84   ; counter
- D 0 - I - 0x000DD3 00:8DC3: 42        .byte $42   ; spr_A
- D 0 - I - 0x000DD4 00:8DC4: 09        .byte $09, $A5, $E4   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x000DD7 00:8DC7: 11        .byte $11, $A3, $E4   ; 
- D 0 - I - 0x000DDA 00:8DCA: 19        .byte $19, $A1, $E4   ; 
- D 0 - I - 0x000DDD 00:8DCD: 19        .byte $19, $A7, $F4   ; 

- D 0 - I - 0x000DE0 00:8DD0: 81        .byte $81   ; 
- D 0 - I - 0x000DE1 00:8DD1: 43        .byte $43   ; 
- D 0 - I - 0x000DE2 00:8DD2: 09        .byte $09, $A9, $F0   ; 

- D 0 - I - 0x000DE5 00:8DD5: 81        .byte $81   ; 
- D 0 - I - 0x000DE6 00:8DD6: 03        .byte $03   ; 
- D 0 - I - 0x000DE7 00:8DD7: F9        .byte $F9, $B5, $F0   ; 

- D 0 - I - 0x000DEA 00:8DDA: 81        .byte $81   ; 
- D 0 - I - 0x000DEB 00:8DDB: 43        .byte $43   ; 
- D 0 - I - 0x000DEC 00:8DDC: 01        .byte $01, $B5, $F0   ; 

- D 0 - I - 0x000DEF 00:8DDF: 82        .byte $82   ; 
- D 0 - I - 0x000DF0 00:8DE0: 02        .byte $02   ; 
- D 0 - I - 0x000DF1 00:8DE1: F9        .byte $F9, $85, $DF   ; 
- D 0 - I - 0x000DF4 00:8DE4: F9        .byte $F9, $87, $EF   ; 

- D 0 - I - 0x000DF7 00:8DE7: 82        .byte $82   ; 
- D 0 - I - 0x000DF8 00:8DE8: 42        .byte $42   ; 
- D 0 - I - 0x000DF9 00:8DE9: 01        .byte $01, $85, $DF   ; 
- D 0 - I - 0x000DFC 00:8DEC: 01        .byte $01, $87, $EF   ; 

- D 0 - I - 0x000DFF 00:8DEF: 84        .byte $84   ; 
- D 0 - I - 0x000E00 00:8DF0: 02        .byte $02   ; 
- D 0 - I - 0x000E01 00:8DF1: F1        .byte $F1, $9B, $E4   ; 
- D 0 - I - 0x000E04 00:8DF4: E9        .byte $E9, $99, $E4   ; 
- D 0 - I - 0x000E07 00:8DF7: E9        .byte $E9, $9D, $F4   ; 
- D 0 - I - 0x000E0A 00:8DFA: F1        .byte $F1, $9F, $F4   ; 

- D 0 - I - 0x000E0D 00:8DFD: 81        .byte $81   ; 
- D 0 - I - 0x000E0E 00:8DFE: 43        .byte $43   ; 
- D 0 - I - 0x000E0F 00:8DFF: F9        .byte $F9, $BD, $00   ; 

- D 0 - I - 0x000E12 00:8E02: 01        .byte $01   ; 
- D 0 - I - 0x000E13 00:8E03: 03        .byte $03   ; 
- D 0 - I - 0x000E14 00:8E04: 01        .byte $01, $BD, $00   ; 



off_09_8E07_1B:
- D 0 - I - 0x000E17 00:8E07: FF        .byte $FF   ; 
- D 0 - I - 0x000E18 00:8E08: ED 8C     .word off_FF_8CED



off_09_8E0A_1C:
- D 0 - I - 0x000E1A 00:8E0A: FF        .byte $FF   ; 
- D 0 - I - 0x000E1B 00:8E0B: 38 8D     .word off_FF_8D38



off_09_8E0D_1D:
- D 0 - I - 0x000E1D 00:8E0D: FF        .byte $FF   ; 
- D 0 - I - 0x000E1E 00:8E0E: 7D 8D     .word off_FF_8D7D



off_09_8E10_1E:
- D 0 - I - 0x000E20 00:8E10: FF        .byte $FF   ; 
- D 0 - I - 0x000E21 00:8E11: C2 8D     .word off_FF_8DC2



off_09_8E13_1F:
- D 0 - I - 0x000E23 00:8E13: 81        .byte $81   ; counter
- D 0 - I - 0x000E24 00:8E14: 02        .byte $02   ; spr_A
- D 0 - I - 0x000E25 00:8E15: F9        .byte $F9, $8D, $DC   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x000E28 00:8E18: 81        .byte $81   ; 
- D 0 - I - 0x000E29 00:8E19: 42        .byte $42   ; 
- D 0 - I - 0x000E2A 00:8E1A: 01        .byte $01, $89, $DC   ; 

- D 0 - I - 0x000E2D 00:8E1D: 84        .byte $84   ; 
- D 0 - I - 0x000E2E 00:8E1E: 02        .byte $02   ; 
- D 0 - I - 0x000E2F 00:8E1F: F1        .byte $F1, $A5, $E3   ; 
- D 0 - I - 0x000E32 00:8E22: E9        .byte $E9, $A3, $E3   ; 
- D 0 - I - 0x000E35 00:8E25: E1        .byte $E1, $A1, $E3   ; 
- D 0 - I - 0x000E38 00:8E28: E1        .byte $E1, $A7, $F3   ; 

- D 0 - I - 0x000E3B 00:8E2B: 82        .byte $82   ; 
- D 0 - I - 0x000E3C 00:8E2C: 03        .byte $03   ; 
- D 0 - I - 0x000E3D 00:8E2D: F1        .byte $F1, $A9, $F0   ; 
- D 0 - I - 0x000E40 00:8E30: F9        .byte $F9, $B5, $F0   ; 

- D 0 - I - 0x000E43 00:8E33: 81        .byte $81   ; 
- D 0 - I - 0x000E44 00:8E34: 43        .byte $43   ; 
- D 0 - I - 0x000E45 00:8E35: 01        .byte $01, $B5, $F0   ; 

- D 0 - I - 0x000E48 00:8E38: 84        .byte $84   ; 
- D 0 - I - 0x000E49 00:8E39: 42        .byte $42   ; 
- D 0 - I - 0x000E4A 00:8E3A: 09        .byte $09, $A5, $E3   ; 
- D 0 - I - 0x000E4D 00:8E3D: 11        .byte $11, $A3, $E3   ; 
- D 0 - I - 0x000E50 00:8E40: 19        .byte $19, $A1, $E3   ; 
- D 0 - I - 0x000E53 00:8E43: 19        .byte $19, $A7, $F3   ; 

- D 0 - I - 0x000E56 00:8E46: 82        .byte $82   ; 
- D 0 - I - 0x000E57 00:8E47: 43        .byte $43   ; 
- D 0 - I - 0x000E58 00:8E48: 09        .byte $09, $A9, $F0   ; 
- D 0 - I - 0x000E5B 00:8E4B: F9        .byte $F9, $B9, $00   ; 

- D 0 - I - 0x000E5E 00:8E4E: 81        .byte $81   ; 
- D 0 - I - 0x000E5F 00:8E4F: 03        .byte $03   ; 
- D 0 - I - 0x000E60 00:8E50: 01        .byte $01, $B9, $00   ; 

- D 0 - I - 0x000E63 00:8E53: 81        .byte $81   ; 
- D 0 - I - 0x000E64 00:8E54: 02        .byte $02   ; 
- D 0 - I - 0x000E65 00:8E55: F9        .byte $F9, $8B, $EC   ; 

- D 0 - I - 0x000E68 00:8E58: 01        .byte $01   ; 
- D 0 - I - 0x000E69 00:8E59: 42        .byte $42   ; 
- D 0 - I - 0x000E6A 00:8E5A: 01        .byte $01, $8B, $EC   ; 



off_09_8E5D_20:
- D 0 - I - 0x000E6D 00:8E5D: 84        .byte $84   ; counter
- D 0 - I - 0x000E6E 00:8E5E: 02        .byte $02   ; spr_A
- D 0 - I - 0x000E6F 00:8E5F: F1        .byte $F1, $A5, $E2   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x000E72 00:8E62: E9        .byte $E9, $A3, $E2   ; 
- D 0 - I - 0x000E75 00:8E65: E1        .byte $E1, $A1, $E2   ; 
- D 0 - I - 0x000E78 00:8E68: E1        .byte $E1, $A7, $F2   ; 

- D 0 - I - 0x000E7B 00:8E6B: 82        .byte $82   ; 
- D 0 - I - 0x000E7C 00:8E6C: 03        .byte $03   ; 
- D 0 - I - 0x000E7D 00:8E6D: F1        .byte $F1, $A9, $F0   ; 
- D 0 - I - 0x000E80 00:8E70: F9        .byte $F9, $B5, $F0   ; 

- D 0 - I - 0x000E83 00:8E73: 81        .byte $81   ; 
- D 0 - I - 0x000E84 00:8E74: 43        .byte $43   ; 
- D 0 - I - 0x000E85 00:8E75: 01        .byte $01, $B5, $F0   ; 

- D 0 - I - 0x000E88 00:8E78: 84        .byte $84   ; 
- D 0 - I - 0x000E89 00:8E79: 42        .byte $42   ; 
- D 0 - I - 0x000E8A 00:8E7A: 09        .byte $09, $A5, $E2   ; 
- D 0 - I - 0x000E8D 00:8E7D: 11        .byte $11, $A3, $E2   ; 
- D 0 - I - 0x000E90 00:8E80: 19        .byte $19, $A1, $E2   ; 
- D 0 - I - 0x000E93 00:8E83: 19        .byte $19, $A7, $F2   ; 

- D 0 - I - 0x000E96 00:8E86: 82        .byte $82   ; 
- D 0 - I - 0x000E97 00:8E87: 43        .byte $43   ; 
- D 0 - I - 0x000E98 00:8E88: 09        .byte $09, $A9, $F0   ; 
- D 0 - I - 0x000E9B 00:8E8B: F9        .byte $F9, $B9, $00   ; 

- D 0 - I - 0x000E9E 00:8E8E: 81        .byte $81   ; 
- D 0 - I - 0x000E9F 00:8E8F: 03        .byte $03   ; 
- D 0 - I - 0x000EA0 00:8E90: 01        .byte $01, $B9, $00   ; 

- D 0 - I - 0x000EA3 00:8E93: 81        .byte $81   ; 
- D 0 - I - 0x000EA4 00:8E94: 02        .byte $02   ; 
- D 0 - I - 0x000EA5 00:8E95: F9        .byte $F9, $8B, $ED   ; 

- D 0 - I - 0x000EA8 00:8E98: 81        .byte $81   ; 
- D 0 - I - 0x000EA9 00:8E99: 42        .byte $42   ; 
- D 0 - I - 0x000EAA 00:8E9A: 01        .byte $01, $8B, $ED   ; 

- D 0 - I - 0x000EAD 00:8E9D: 81        .byte $81   ; 
- D 0 - I - 0x000EAE 00:8E9E: 02        .byte $02   ; 
- D 0 - I - 0x000EAF 00:8E9F: F9        .byte $F9, $89, $DD   ; 

- D 0 - I - 0x000EB2 00:8EA2: 01        .byte $01   ; 
- D 0 - I - 0x000EB3 00:8EA3: 42        .byte $42   ; 
- D 0 - I - 0x000EB4 00:8EA4: 01        .byte $01, $8D, $DD   ; 



off_09_8EA7_21:
- D 0 - I - 0x000EB7 00:8EA7: 81        .byte $81   ; counter
- D 0 - I - 0x000EB8 00:8EA8: 42        .byte $42   ; spr_A
- D 0 - I - 0x000EB9 00:8EA9: 01        .byte $01, $89, $DD   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x000EBC 00:8EAC: 84        .byte $84   ; 
- D 0 - I - 0x000EBD 00:8EAD: 02        .byte $02   ; 
- D 0 - I - 0x000EBE 00:8EAE: F1        .byte $F1, $A5, $E1   ; 
- D 0 - I - 0x000EC1 00:8EB1: E9        .byte $E9, $A3, $E1   ; 
- D 0 - I - 0x000EC4 00:8EB4: E1        .byte $E1, $A1, $E1   ; 
- D 0 - I - 0x000EC7 00:8EB7: E1        .byte $E1, $A7, $F1   ; 

- D 0 - I - 0x000ECA 00:8EBA: 82        .byte $82   ; 
- D 0 - I - 0x000ECB 00:8EBB: 03        .byte $03   ; 
- D 0 - I - 0x000ECC 00:8EBC: F1        .byte $F1, $A9, $F0   ; 
- D 0 - I - 0x000ECF 00:8EBF: F9        .byte $F9, $B5, $F0   ; 

- D 0 - I - 0x000ED2 00:8EC2: 81        .byte $81   ; 
- D 0 - I - 0x000ED3 00:8EC3: 43        .byte $43   ; 
- D 0 - I - 0x000ED4 00:8EC4: 01        .byte $01, $B5, $F0   ; 

- D 0 - I - 0x000ED7 00:8EC7: 84        .byte $84   ; 
- D 0 - I - 0x000ED8 00:8EC8: 42        .byte $42   ; 
- D 0 - I - 0x000ED9 00:8EC9: 09        .byte $09, $A5, $E1   ; 
- D 0 - I - 0x000EDC 00:8ECC: 11        .byte $11, $A3, $E1   ; 
- D 0 - I - 0x000EDF 00:8ECF: 19        .byte $19, $A1, $E1   ; 
- D 0 - I - 0x000EE2 00:8ED2: 19        .byte $19, $A7, $F1   ; 

- D 0 - I - 0x000EE5 00:8ED5: 82        .byte $82   ; 
- D 0 - I - 0x000EE6 00:8ED6: 43        .byte $43   ; 
- D 0 - I - 0x000EE7 00:8ED7: 09        .byte $09, $A9, $F0   ; 
- D 0 - I - 0x000EEA 00:8EDA: F9        .byte $F9, $B9, $00   ; 

- D 0 - I - 0x000EED 00:8EDD: 81        .byte $81   ; 
- D 0 - I - 0x000EEE 00:8EDE: 03        .byte $03   ; 
- D 0 - I - 0x000EEF 00:8EDF: 01        .byte $01, $B9, $00   ; 

- D 0 - I - 0x000EF2 00:8EE2: 81        .byte $81   ; 
- D 0 - I - 0x000EF3 00:8EE3: 02        .byte $02   ; 
- D 0 - I - 0x000EF4 00:8EE4: F9        .byte $F9, $8B, $ED   ; 

- D 0 - I - 0x000EF7 00:8EE7: 81        .byte $81   ; 
- D 0 - I - 0x000EF8 00:8EE8: 42        .byte $42   ; 
- D 0 - I - 0x000EF9 00:8EE9: 01        .byte $01, $8B, $ED   ; 

- D 0 - I - 0x000EFC 00:8EEC: 01        .byte $01   ; 
- D 0 - I - 0x000EFD 00:8EED: 02        .byte $02   ; 
- D 0 - I - 0x000EFE 00:8EEE: F9        .byte $F9, $89, $DD   ; 



off_09_8EF1_22:
- D 0 - I - 0x000F01 00:8EF1: 84        .byte $84   ; counter
- D 0 - I - 0x000F02 00:8EF2: 02        .byte $02   ; spr_A
- D 0 - I - 0x000F03 00:8EF3: F1        .byte $F1, $A5, $E0   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x000F06 00:8EF6: E9        .byte $E9, $A3, $E0   ; 
- D 0 - I - 0x000F09 00:8EF9: E1        .byte $E1, $A1, $E0   ; 
- D 0 - I - 0x000F0C 00:8EFC: E1        .byte $E1, $A7, $F0   ; 

- D 0 - I - 0x000F0F 00:8EFF: 82        .byte $82   ; 
- D 0 - I - 0x000F10 00:8F00: 03        .byte $03   ; 
- D 0 - I - 0x000F11 00:8F01: F1        .byte $F1, $A9, $F0   ; 
- D 0 - I - 0x000F14 00:8F04: F9        .byte $F9, $B5, $F0   ; 

- D 0 - I - 0x000F17 00:8F07: 81        .byte $81   ; 
- D 0 - I - 0x000F18 00:8F08: 43        .byte $43   ; 
- D 0 - I - 0x000F19 00:8F09: 01        .byte $01, $B5, $F0   ; 

- D 0 - I - 0x000F1C 00:8F0C: 84        .byte $84   ; 
- D 0 - I - 0x000F1D 00:8F0D: 42        .byte $42   ; 
- D 0 - I - 0x000F1E 00:8F0E: 09        .byte $09, $A5, $E0   ; 
- D 0 - I - 0x000F21 00:8F11: 11        .byte $11, $A3, $E0   ; 
- D 0 - I - 0x000F24 00:8F14: 19        .byte $19, $A1, $E0   ; 
- D 0 - I - 0x000F27 00:8F17: 19        .byte $19, $A7, $F0   ; 

- D 0 - I - 0x000F2A 00:8F1A: 82        .byte $82   ; 
- D 0 - I - 0x000F2B 00:8F1B: 43        .byte $43   ; 
- D 0 - I - 0x000F2C 00:8F1C: 09        .byte $09, $A9, $F0   ; 
- D 0 - I - 0x000F2F 00:8F1F: F9        .byte $F9, $B9, $00   ; 

- D 0 - I - 0x000F32 00:8F22: 81        .byte $81   ; 
- D 0 - I - 0x000F33 00:8F23: 03        .byte $03   ; 
- D 0 - I - 0x000F34 00:8F24: 01        .byte $01, $B9, $00   ; 

- D 0 - I - 0x000F37 00:8F27: 81        .byte $81   ; 
- D 0 - I - 0x000F38 00:8F28: 02        .byte $02   ; 
- D 0 - I - 0x000F39 00:8F29: F9        .byte $F9, $8D, $DE   ; 

- D 0 - I - 0x000F3C 00:8F2C: 81        .byte $81   ; 
- D 0 - I - 0x000F3D 00:8F2D: 42        .byte $42   ; 
- D 0 - I - 0x000F3E 00:8F2E: 01        .byte $01, $8D, $DE   ; 

- D 0 - I - 0x000F41 00:8F31: 81        .byte $81   ; 
- D 0 - I - 0x000F42 00:8F32: 02        .byte $02   ; 
- D 0 - I - 0x000F43 00:8F33: F9        .byte $F9, $8F, $EE   ; 

- D 0 - I - 0x000F46 00:8F36: 01        .byte $01   ; 
- D 0 - I - 0x000F47 00:8F37: 42        .byte $42   ; 
- D 0 - I - 0x000F48 00:8F38: 01        .byte $01, $8F, $EE   ; 



off_09_8F3B_23:
- D 0 - I - 0x000F4B 00:8F3B: 84        .byte $84   ; counter
- D 0 - I - 0x000F4C 00:8F3C: 02        .byte $02   ; spr_A
- D 0 - I - 0x000F4D 00:8F3D: E9        .byte $E9, $A3, $E8   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x000F50 00:8F40: F1        .byte $F1, $A5, $E8   ; 
- D 0 - I - 0x000F53 00:8F43: E1        .byte $E1, $A1, $E8   ; 
- D 0 - I - 0x000F56 00:8F46: E1        .byte $E1, $A7, $F8   ; 

- D 0 - I - 0x000F59 00:8F49: 81        .byte $81   ; 
- D 0 - I - 0x000F5A 00:8F4A: 03        .byte $03   ; 
- D 0 - I - 0x000F5B 00:8F4B: F1        .byte $F1, $A9, $F8   ; 

- D 0 - I - 0x000F5E 00:8F4E: 81        .byte $81   ; 
- D 0 - I - 0x000F5F 00:8F4F: 43        .byte $43   ; 
- D 0 - I - 0x000F60 00:8F50: 09        .byte $09, $A9, $F8   ; 

- D 0 - I - 0x000F63 00:8F53: 84        .byte $84   ; 
- D 0 - I - 0x000F64 00:8F54: 42        .byte $42   ; 
- D 0 - I - 0x000F65 00:8F55: 09        .byte $09, $A5, $E8   ; 
- D 0 - I - 0x000F68 00:8F58: 19        .byte $19, $A1, $E8   ; 
- D 0 - I - 0x000F6B 00:8F5B: 11        .byte $11, $A3, $E8   ; 
- D 0 - I - 0x000F6E 00:8F5E: 19        .byte $19, $A7, $F8   ; 

- D 0 - I - 0x000F71 00:8F61: 81        .byte $81   ; 
- D 0 - I - 0x000F72 00:8F62: 03        .byte $03   ; 
- D 0 - I - 0x000F73 00:8F63: F9        .byte $F9, $B5, $F8   ; 

- D 0 - I - 0x000F76 00:8F66: 81        .byte $81   ; 
- D 0 - I - 0x000F77 00:8F67: 43        .byte $43   ; 
- D 0 - I - 0x000F78 00:8F68: 01        .byte $01, $B5, $F8   ; 

- D 0 - I - 0x000F7B 00:8F6B: 81        .byte $81   ; 
- D 0 - I - 0x000F7C 00:8F6C: 03        .byte $03   ; 
- D 0 - I - 0x000F7D 00:8F6D: 01        .byte $01, $BD, $08   ; 

- D 0 - I - 0x000F80 00:8F70: 81        .byte $81   ; 
- D 0 - I - 0x000F81 00:8F71: 43        .byte $43   ; 
- D 0 - I - 0x000F82 00:8F72: F9        .byte $F9, $BD, $08   ; 

- D 0 - I - 0x000F85 00:8F75: 81        .byte $81   ; 
- D 0 - I - 0x000F86 00:8F76: 02        .byte $02   ; 
- D 0 - I - 0x000F87 00:8F77: F9        .byte $F9, $89, $E6   ; 

- D 0 - I - 0x000F8A 00:8F7A: 82        .byte $82   ; 
- D 0 - I - 0x000F8B 00:8F7B: 42        .byte $42   ; 
- D 0 - I - 0x000F8C 00:8F7C: 01        .byte $01, $89, $E6   ; 
- D 0 - I - 0x000F8F 00:8F7F: 01        .byte $01, $8F, $F6   ; 

- D 0 - I - 0x000F92 00:8F82: 01        .byte $01   ; 
- D 0 - I - 0x000F93 00:8F83: 02        .byte $02   ; 
- D 0 - I - 0x000F94 00:8F84: F9        .byte $F9, $8F, $F6   ; 



off_09_8F87_24:
- D 0 - I - 0x000F97 00:8F87: 84        .byte $84   ; counter
- D 0 - I - 0x000F98 00:8F88: 42        .byte $42   ; spr_A
- D 0 - I - 0x000F99 00:8F89: 09        .byte $09, $A5, $F0   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x000F9C 00:8F8C: 11        .byte $11, $A3, $F0   ; 
- D 0 - I - 0x000F9F 00:8F8F: 19        .byte $19, $A1, $F0   ; 
- D 0 - I - 0x000FA2 00:8F92: 19        .byte $19, $A7, $00   ; 

- D 0 - I - 0x000FA5 00:8F95: 81        .byte $81   ; 
- D 0 - I - 0x000FA6 00:8F96: 43        .byte $43   ; 
- D 0 - I - 0x000FA7 00:8F97: 09        .byte $09, $A9, $00   ; 

- D 0 - I - 0x000FAA 00:8F9A: 81        .byte $81   ; 
- D 0 - I - 0x000FAB 00:8F9B: 03        .byte $03   ; 
- D 0 - I - 0x000FAC 00:8F9C: F9        .byte $F9, $B5, $00   ; 

- D 0 - I - 0x000FAF 00:8F9F: 81        .byte $81   ; 
- D 0 - I - 0x000FB0 00:8FA0: 43        .byte $43   ; 
- D 0 - I - 0x000FB1 00:8FA1: 01        .byte $01, $B5, $00   ; 

- D 0 - I - 0x000FB4 00:8FA4: 81        .byte $81   ; 
- D 0 - I - 0x000FB5 00:8FA5: 03        .byte $03   ; 
- D 0 - I - 0x000FB6 00:8FA6: F9        .byte $F9, $B7, $10   ; 

- D 0 - I - 0x000FB9 00:8FA9: 81        .byte $81   ; 
- D 0 - I - 0x000FBA 00:8FAA: 43        .byte $43   ; 
- D 0 - I - 0x000FBB 00:8FAB: 01        .byte $01, $B7, $10   ; 

- D 0 - I - 0x000FBE 00:8FAE: 85        .byte $85   ; 
- D 0 - I - 0x000FBF 00:8FAF: 02        .byte $02   ; 
- D 0 - I - 0x000FC0 00:8FB0: F1        .byte $F1, $9B, $F4   ; 
- D 0 - I - 0x000FC3 00:8FB3: E9        .byte $E9, $99, $F4   ; 
- D 0 - I - 0x000FC6 00:8FB6: E9        .byte $E9, $9D, $04   ; 
- D 0 - I - 0x000FC9 00:8FB9: F1        .byte $F1, $9F, $04   ; 
- D 0 - I - 0x000FCC 00:8FBC: F9        .byte $F9, $8D, $EE   ; 

- D 0 - I - 0x000FCF 00:8FBF: 81        .byte $81   ; 
- D 0 - I - 0x000FD0 00:8FC0: 42        .byte $42   ; 
- D 0 - I - 0x000FD1 00:8FC1: 01        .byte $01, $8D, $EE   ; 

- D 0 - I - 0x000FD4 00:8FC4: 81        .byte $81   ; 
- D 0 - I - 0x000FD5 00:8FC5: 02        .byte $02   ; 
- D 0 - I - 0x000FD6 00:8FC6: F9        .byte $F9, $8B, $FE   ; 

- D 0 - I - 0x000FD9 00:8FC9: 01        .byte $01   ; 
- D 0 - I - 0x000FDA 00:8FCA: 42        .byte $42   ; 
- D 0 - I - 0x000FDB 00:8FCB: 01        .byte $01, $8B, $FE   ; 



off_09_8FCE_25:
- D 0 - I - 0x000FDE 00:8FCE: 81        .byte $81   ; counter
- D 0 - I - 0x000FDF 00:8FCF: 03        .byte $03   ; spr_A
- D 0 - I - 0x000FE0 00:8FD0: F9        .byte $F9, $B5, $00   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x000FE3 00:8FD3: 81        .byte $81   ; 
- D 0 - I - 0x000FE4 00:8FD4: 43        .byte $43   ; 
- D 0 - I - 0x000FE5 00:8FD5: 01        .byte $01, $B5, $00   ; 

- D 0 - I - 0x000FE8 00:8FD8: 81        .byte $81   ; 
- D 0 - I - 0x000FE9 00:8FD9: 03        .byte $03   ; 
- D 0 - I - 0x000FEA 00:8FDA: F9        .byte $F9, $B7, $10   ; 

- D 0 - I - 0x000FED 00:8FDD: 81        .byte $81   ; 
- D 0 - I - 0x000FEE 00:8FDE: 43        .byte $43   ; 
- D 0 - I - 0x000FEF 00:8FDF: 01        .byte $01, $B7, $10   ; 

- D 0 - I - 0x000FF2 00:8FE2: 84        .byte $84   ; 
- D 0 - I - 0x000FF3 00:8FE3: 02        .byte $02   ; 
- D 0 - I - 0x000FF4 00:8FE4: F1        .byte $F1, $9B, $F4   ; 
- D 0 - I - 0x000FF7 00:8FE7: E9        .byte $E9, $99, $F4   ; 
- D 0 - I - 0x000FFA 00:8FEA: E9        .byte $E9, $9D, $04   ; 
- D 0 - I - 0x000FFD 00:8FED: F1        .byte $F1, $9F, $04   ; 

- D 0 - I - 0x001000 00:8FF0: 84        .byte $84   ; 
- D 0 - I - 0x001001 00:8FF1: 42        .byte $42   ; 
- D 0 - I - 0x001002 00:8FF2: 09        .byte $09, $9B, $F4   ; 
- D 0 - I - 0x001005 00:8FF5: 11        .byte $11, $99, $F4   ; 
- D 0 - I - 0x001008 00:8FF8: 11        .byte $11, $9D, $04   ; 
- D 0 - I - 0x00100B 00:8FFB: 09        .byte $09, $9F, $04   ; 

- D 0 - I - 0x00100E 00:8FFE: 81        .byte $81   ; 
- D 0 - I - 0x00100F 00:8FFF: 02        .byte $02   ; 
- D 0 - I - 0x001010 00:9000: F9        .byte $F9, $89, $F0   ; 

- D 0 - I - 0x001013 00:9003: 81        .byte $81   ; 
- D 0 - I - 0x001014 00:9004: 42        .byte $42   ; 
- D 0 - I - 0x001015 00:9005: 01        .byte $01, $89, $F0   ; 

- D 0 - I - 0x001018 00:9008: 81        .byte $81   ; 
- D 0 - I - 0x001019 00:9009: 02        .byte $02   ; 
- D 0 - I - 0x00101A 00:900A: F9        .byte $F9, $8B, $00   ; 

- D 0 - I - 0x00101D 00:900D: 01        .byte $01   ; 
- D 0 - I - 0x00101E 00:900E: 42        .byte $42   ; 
- D 0 - I - 0x00101F 00:900F: 01        .byte $01, $8B, $00   ; 



off_09_9012_26:
- D 0 - I - 0x001022 00:9012: 81        .byte $81   ; counter
- D 0 - I - 0x001023 00:9013: 03        .byte $03   ; spr_A
- D 0 - I - 0x001024 00:9014: F9        .byte $F9, $B5, $00   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x001027 00:9017: 81        .byte $81   ; 
- D 0 - I - 0x001028 00:9018: 43        .byte $43   ; 
- D 0 - I - 0x001029 00:9019: 01        .byte $01, $B5, $00   ; 

- D 0 - I - 0x00102C 00:901C: 81        .byte $81   ; 
- D 0 - I - 0x00102D 00:901D: 03        .byte $03   ; 
- D 0 - I - 0x00102E 00:901E: F9        .byte $F9, $B7, $10   ; 

- D 0 - I - 0x001031 00:9021: 81        .byte $81   ; 
- D 0 - I - 0x001032 00:9022: 43        .byte $43   ; 
- D 0 - I - 0x001033 00:9023: 01        .byte $01, $B7, $10   ; 

- D 0 - I - 0x001036 00:9026: 84        .byte $84   ; 
- D 0 - I - 0x001037 00:9027: 42        .byte $42   ; 
- D 0 - I - 0x001038 00:9028: 09        .byte $09, $9B, $F4   ; 
- D 0 - I - 0x00103B 00:902B: 11        .byte $11, $99, $F4   ; 
- D 0 - I - 0x00103E 00:902E: 11        .byte $11, $9D, $04   ; 
- D 0 - I - 0x001041 00:9031: 09        .byte $09, $9F, $04   ; 

- D 0 - I - 0x001044 00:9034: 85        .byte $85   ; 
- D 0 - I - 0x001045 00:9035: 02        .byte $02   ; 
- D 0 - I - 0x001046 00:9036: E9        .byte $E9, $91, $F0   ; 
- D 0 - I - 0x001049 00:9039: F1        .byte $F1, $93, $F0   ; 
- D 0 - I - 0x00104C 00:903C: E9        .byte $E9, $95, $00   ; 
- D 0 - I - 0x00104F 00:903F: F1        .byte $F1, $97, $00   ; 
- D 0 - I - 0x001052 00:9042: F9        .byte $F9, $85, $F0   ; 

- D 0 - I - 0x001055 00:9045: 81        .byte $81   ; 
- D 0 - I - 0x001056 00:9046: 42        .byte $42   ; 
- D 0 - I - 0x001057 00:9047: 01        .byte $01, $85, $F0   ; 

- D 0 - I - 0x00105A 00:904A: 81        .byte $81   ; 
- D 0 - I - 0x00105B 00:904B: 02        .byte $02   ; 
- D 0 - I - 0x00105C 00:904C: F9        .byte $F9, $87, $00   ; 

- D 0 - I - 0x00105F 00:904F: 01        .byte $01   ; 
- D 0 - I - 0x001060 00:9050: 42        .byte $42   ; 
- D 0 - I - 0x001061 00:9051: 01        .byte $01, $87, $00   ; 



off_09_9054_27:
- D 0 - I - 0x001064 00:9054: 81        .byte $81   ; counter
- D 0 - I - 0x001065 00:9055: 03        .byte $03   ; spr_A
- D 0 - I - 0x001066 00:9056: F9        .byte $F9, $B5, $00   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x001069 00:9059: 81        .byte $81   ; 
- D 0 - I - 0x00106A 00:905A: 43        .byte $43   ; 
- D 0 - I - 0x00106B 00:905B: 01        .byte $01, $B5, $00   ; 

- D 0 - I - 0x00106E 00:905E: 81        .byte $81   ; 
- D 0 - I - 0x00106F 00:905F: 03        .byte $03   ; 
- D 0 - I - 0x001070 00:9060: F9        .byte $F9, $B7, $10   ; 

- D 0 - I - 0x001073 00:9063: 81        .byte $81   ; 
- D 0 - I - 0x001074 00:9064: 43        .byte $43   ; 
- D 0 - I - 0x001075 00:9065: 01        .byte $01, $B7, $10   ; 

- D 0 - I - 0x001078 00:9068: 84        .byte $84   ; 
- D 0 - I - 0x001079 00:9069: 02        .byte $02   ; 
- D 0 - I - 0x00107A 00:906A: E9        .byte $E9, $91, $F0   ; 
- D 0 - I - 0x00107D 00:906D: F1        .byte $F1, $93, $F0   ; 
- D 0 - I - 0x001080 00:9070: E9        .byte $E9, $95, $00   ; 
- D 0 - I - 0x001083 00:9073: F1        .byte $F1, $97, $00   ; 

- D 0 - I - 0x001086 00:9076: 84        .byte $84   ; 
- D 0 - I - 0x001087 00:9077: 42        .byte $42   ; 
- D 0 - I - 0x001088 00:9078: 09        .byte $09, $93, $F0   ; 
- D 0 - I - 0x00108B 00:907B: 11        .byte $11, $95, $00   ; 
- D 0 - I - 0x00108E 00:907E: 09        .byte $09, $97, $00   ; 
- D 0 - I - 0x001091 00:9081: 11        .byte $11, $91, $F0   ; 

- D 0 - I - 0x001094 00:9084: 82        .byte $82   ; 
- D 0 - I - 0x001095 00:9085: 02        .byte $02   ; 
- D 0 - I - 0x001096 00:9086: F9        .byte $F9, $81, $F0   ; 
- D 0 - I - 0x001099 00:9089: F9        .byte $F9, $83, $00   ; 

- D 0 - I - 0x00109C 00:908C: 02        .byte $02   ; 
- D 0 - I - 0x00109D 00:908D: 42        .byte $42   ; 
- D 0 - I - 0x00109E 00:908E: 01        .byte $01, $81, $F0   ; 
- D 0 - I - 0x0010A1 00:9091: 01        .byte $01, $83, $00   ; 



off_09_9094_28:
- D 0 - I - 0x0010A4 00:9094: 88        .byte $88   ; counter
- D 0 - I - 0x0010A5 00:9095: 02        .byte $02   ; spr_A
- D 0 - I - 0x0010A6 00:9096: E9        .byte $E9, $81, $F0   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x0010A9 00:9099: F1        .byte $F1, $83, $F0   ; 
- D 0 - I - 0x0010AC 00:909C: E1        .byte $E1, $85, $00   ; 
- D 0 - I - 0x0010AF 00:909F: E9        .byte $E9, $87, $00   ; 
- D 0 - I - 0x0010B2 00:90A2: F1        .byte $F1, $89, $00   ; 
- D 0 - I - 0x0010B5 00:90A5: E1        .byte $E1, $8B, $10   ; 
- D 0 - I - 0x0010B8 00:90A8: E9        .byte $E9, $8D, $10   ; 
- D 0 - I - 0x0010BB 00:90AB: F1        .byte $F1, $8F, $10   ; 

- D 0 - I - 0x0010BE 00:90AE: 88        .byte $88   ; 
- D 0 - I - 0x0010BF 00:90AF: 42        .byte $42   ; 
- D 0 - I - 0x0010C0 00:90B0: 09        .byte $09, $83, $F0   ; 
- D 0 - I - 0x0010C3 00:90B3: 11        .byte $11, $81, $F0   ; 
- D 0 - I - 0x0010C6 00:90B6: 19        .byte $19, $85, $00   ; 
- D 0 - I - 0x0010C9 00:90B9: 11        .byte $11, $87, $00   ; 
- D 0 - I - 0x0010CC 00:90BC: 09        .byte $09, $89, $00   ; 
- D 0 - I - 0x0010CF 00:90BF: 19        .byte $19, $8B, $10   ; 
- D 0 - I - 0x0010D2 00:90C2: 11        .byte $11, $8D, $10   ; 
- D 0 - I - 0x0010D5 00:90C5: 09        .byte $09, $8F, $10   ; 

- D 0 - I - 0x0010D8 00:90C8: 82        .byte $82   ; 
- D 0 - I - 0x0010D9 00:90C9: 02        .byte $02   ; 
- D 0 - I - 0x0010DA 00:90CA: F9        .byte $F9, $91, $00   ; 
- D 0 - I - 0x0010DD 00:90CD: F9        .byte $F9, $93, $10   ; 

- D 0 - I - 0x0010E0 00:90D0: 02        .byte $02   ; 
- D 0 - I - 0x0010E1 00:90D1: 42        .byte $42   ; 
- D 0 - I - 0x0010E2 00:90D2: 01        .byte $01, $91, $00   ; 
- D 0 - I - 0x0010E5 00:90D5: 01        .byte $01, $93, $10   ; 



off_09_90D8_29:
- D 0 - I - 0x0010E8 00:90D8: 88        .byte $88   ; counter
- D 0 - I - 0x0010E9 00:90D9: 02        .byte $02   ; spr_A
- D 0 - I - 0x0010EA 00:90DA: E9        .byte $E9, $81, $F8   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x0010ED 00:90DD: F1        .byte $F1, $83, $F8   ; 
- D 0 - I - 0x0010F0 00:90E0: E1        .byte $E1, $85, $08   ; 
- D 0 - I - 0x0010F3 00:90E3: E9        .byte $E9, $87, $08   ; 
- D 0 - I - 0x0010F6 00:90E6: F1        .byte $F1, $89, $08   ; 
- D 0 - I - 0x0010F9 00:90E9: E1        .byte $E1, $8B, $18   ; 
- D 0 - I - 0x0010FC 00:90EC: E9        .byte $E9, $8D, $18   ; 
- D 0 - I - 0x0010FF 00:90EF: F1        .byte $F1, $8F, $18   ; 

- D 0 - I - 0x001102 00:90F2: 88        .byte $88   ; 
- D 0 - I - 0x001103 00:90F3: 42        .byte $42   ; 
- D 0 - I - 0x001104 00:90F4: 09        .byte $09, $83, $F8   ; 
- D 0 - I - 0x001107 00:90F7: 11        .byte $11, $81, $F8   ; 
- D 0 - I - 0x00110A 00:90FA: 19        .byte $19, $85, $08   ; 
- D 0 - I - 0x00110D 00:90FD: 11        .byte $11, $87, $08   ; 
- D 0 - I - 0x001110 00:9100: 09        .byte $09, $89, $08   ; 
- D 0 - I - 0x001113 00:9103: 19        .byte $19, $8B, $18   ; 
- D 0 - I - 0x001116 00:9106: 11        .byte $11, $8D, $18   ; 
- D 0 - I - 0x001119 00:9109: 09        .byte $09, $8F, $18   ; 

- D 0 - I - 0x00111C 00:910C: 82        .byte $82   ; 
- D 0 - I - 0x00111D 00:910D: 02        .byte $02   ; 
- D 0 - I - 0x00111E 00:910E: F9        .byte $F9, $91, $08   ; 
- D 0 - I - 0x001121 00:9111: F9        .byte $F9, $93, $18   ; 

- D 0 - I - 0x001124 00:9114: 02        .byte $02   ; 
- D 0 - I - 0x001125 00:9115: 42        .byte $42   ; 
- D 0 - I - 0x001126 00:9116: 01        .byte $01, $91, $08   ; 
- D 0 - I - 0x001129 00:9119: 01        .byte $01, $93, $18   ; 



off_09_911C_2A:
- D 0 - I - 0x00112C 00:911C: 8C        .byte $8C   ; counter
- D 0 - I - 0x00112D 00:911D: 02        .byte $02   ; spr_A
- D 0 - I - 0x00112E 00:911E: 01        .byte $01, $BB, $30   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001131 00:9121: 09        .byte $09, $BD, $30   ; 
- D 0 - I - 0x001134 00:9124: 11        .byte $11, $BF, $30   ; 
- D 0 - I - 0x001137 00:9127: F9        .byte $F9, $B9, $30   ; 
- D 0 - I - 0x00113A 00:912A: F1        .byte $F1, $B7, $30   ; 
- D 0 - I - 0x00113D 00:912D: E9        .byte $E9, $B5, $30   ; 
- D 0 - I - 0x001140 00:9130: 11        .byte $11, $B3, $20   ; 
- D 0 - I - 0x001143 00:9133: 09        .byte $09, $B1, $20   ; 
- D 0 - I - 0x001146 00:9136: 01        .byte $01, $AF, $20   ; 
- D 0 - I - 0x001149 00:9139: F9        .byte $F9, $AD, $20   ; 
- D 0 - I - 0x00114C 00:913C: F1        .byte $F1, $AB, $20   ; 
- D 0 - I - 0x00114F 00:913F: E9        .byte $E9, $A9, $20   ; 

- D 0 - I - 0x001152 00:9142: 81        .byte $81   ; 
- D 0 - I - 0x001153 00:9143: 03        .byte $03   ; 
- D 0 - I - 0x001154 00:9144: 09        .byte $09, $A7, $10   ; 

- D 0 - I - 0x001157 00:9147: 83        .byte $83   ; 
- D 0 - I - 0x001158 00:9148: 02        .byte $02   ; 
- D 0 - I - 0x001159 00:9149: 01        .byte $01, $A5, $10   ; 
- D 0 - I - 0x00115C 00:914C: F9        .byte $F9, $A3, $10   ; 
- D 0 - I - 0x00115F 00:914F: F1        .byte $F1, $A1, $10   ; 

- D 0 - I - 0x001162 00:9152: 06        .byte $06   ; 
- D 0 - I - 0x001163 00:9153: 03        .byte $03   ; 
- D 0 - I - 0x001164 00:9154: E9        .byte $E9, $9F, $10   ; 
- D 0 - I - 0x001167 00:9157: 09        .byte $09, $9D, $00   ; 
- D 0 - I - 0x00116A 00:915A: 01        .byte $01, $9B, $00   ; 
- D 0 - I - 0x00116D 00:915D: F9        .byte $F9, $99, $00   ; 
- D 0 - I - 0x001170 00:9160: F1        .byte $F1, $97, $00   ; 
- D 0 - I - 0x001173 00:9163: E9        .byte $E9, $95, $00   ; 



_off032_9166_03:
- - - - - - 0x001176 00:9166: CA 92     .word off_03_92CA_00
- D 0 - I - 0x001178 00:9168: CA 92     .word off_03_92CA_01
- D 0 - I - 0x00117A 00:916A: DA 92     .word off_03_92DA_02
- D 0 - I - 0x00117C 00:916C: E7 92     .word off_03_92E7_03
- - - - - - 0x00117E 00:916E: F7 92     .word off_03_92F7_04
- D 0 - I - 0x001180 00:9170: 06 93     .word off_03_9306_05
- D 0 - I - 0x001182 00:9172: 14 93     .word off_03_9314_06
- D 0 - I - 0x001184 00:9174: 1F 93     .word off_03_931F_07
- D 0 - I - 0x001186 00:9176: 2D 93     .word off_03_932D_08
- D 0 - I - 0x001188 00:9178: 30 93     .word off_03_9330_09
- D 0 - I - 0x00118A 00:917A: 33 93     .word off_03_9333_0A
- D 0 - I - 0x00118C 00:917C: 36 93     .word off_03_9336_0B
- D 0 - I - 0x00118E 00:917E: 44 93     .word off_03_9344_0C
- D 0 - I - 0x001190 00:9180: 4F 93     .word off_03_934F_0D
- D 0 - I - 0x001192 00:9182: 5D 93     .word off_03_935D_0E
- D 0 - I - 0x001194 00:9184: 60 93     .word off_03_9360_0F
- D 0 - I - 0x001196 00:9186: 63 93     .word off_03_9363_10
- D 0 - I - 0x001198 00:9188: 66 93     .word off_03_9366_11
- D 0 - I - 0x00119A 00:918A: 74 93     .word off_03_9374_12
- D 0 - I - 0x00119C 00:918C: 7F 93     .word off_03_937F_13
- D 0 - I - 0x00119E 00:918E: 8A 93     .word off_03_938A_14
- D 0 - I - 0x0011A0 00:9190: 95 93     .word off_03_9395_15
- D 0 - I - 0x0011A2 00:9192: 98 93     .word off_03_9398_16
- D 0 - I - 0x0011A4 00:9194: 9B 93     .word off_03_939B_17
- D 0 - I - 0x0011A6 00:9196: 9E 93     .word off_03_939E_18
- D 0 - I - 0x0011A8 00:9198: A1 93     .word off_03_93A1_19
- D 0 - I - 0x0011AA 00:919A: B1 93     .word off_03_93B1_1A
- D 0 - I - 0x0011AC 00:919C: C3 93     .word off_03_93C3_1B
- D 0 - I - 0x0011AE 00:919E: D3 93     .word off_03_93D3_1C
- D 0 - I - 0x0011B0 00:91A0: E5 93     .word off_03_93E5_1D
- D 0 - I - 0x0011B2 00:91A2: F5 93     .word off_03_93F5_1E
- D 0 - I - 0x0011B4 00:91A4: 05 94     .word off_03_9405_1F
- - - - - - 0x0011B6 00:91A6: 15 94     .word off_03_9415_20
- D 0 - I - 0x0011B8 00:91A8: 25 94     .word off_03_9425_21
- D 0 - I - 0x0011BA 00:91AA: 28 94     .word off_03_9428_22
- - - - - - 0x0011BC 00:91AC: 2B 94     .word off_03_942B_23
- D 0 - I - 0x0011BE 00:91AE: 3B 94     .word off_03_943B_24
- D 0 - I - 0x0011C0 00:91B0: 4B 94     .word off_03_944B_25
- D 0 - I - 0x0011C2 00:91B2: 4E 94     .word off_03_944E_26
- D 0 - I - 0x0011C4 00:91B4: 51 94     .word off_03_9451_27
- D 0 - I - 0x0011C6 00:91B6: 5F 94     .word off_03_945F_28
- D 0 - I - 0x0011C8 00:91B8: 6D 94     .word off_03_946D_29
- D 0 - I - 0x0011CA 00:91BA: 70 94     .word off_03_9470_2A
- D 0 - I - 0x0011CC 00:91BC: 73 94     .word off_03_9473_2B
- D 0 - I - 0x0011CE 00:91BE: 83 94     .word off_03_9483_2C
- - - - - - 0x0011D0 00:91C0: 93 94     .word off_03_9493_2D
- - - - - - 0x0011D2 00:91C2: 93 94     .word off_03_9493_2E
- - - - - - 0x0011D4 00:91C4: 93 94     .word off_03_9493_2F
- - - - - - 0x0011D6 00:91C6: 93 94     .word off_03_9493_30
- - - - - - 0x0011D8 00:91C8: 93 94     .word off_03_9493_31
- D 0 - I - 0x0011DA 00:91CA: 93 94     .word off_03_9493_32
- D 0 - I - 0x0011DC 00:91CC: 9E 94     .word off_03_949E_33
- D 0 - I - 0x0011DE 00:91CE: A1 94     .word off_03_94A1_34
- D 0 - I - 0x0011E0 00:91D0: AC 94     .word off_03_94AC_35
- D 0 - I - 0x0011E2 00:91D2: AF 94     .word off_03_94AF_36
- D 0 - I - 0x0011E4 00:91D4: CF 94     .word off_03_94CF_37
- D 0 - I - 0x0011E6 00:91D6: EC 94     .word off_03_94EC_38
- - - - - - 0x0011E8 00:91D8: 0C 95     .word off_03_950C_39
- D 0 - I - 0x0011EA 00:91DA: 29 95     .word off_03_9529_3A
- D 0 - I - 0x0011EC 00:91DC: 2C 95     .word off_03_952C_3B
- D 0 - I - 0x0011EE 00:91DE: 2F 95     .word off_03_952F_3C
- - - - - - 0x0011F0 00:91E0: 32 95     .word off_03_9532_3D
- D 0 - I - 0x0011F2 00:91E2: 35 95     .word off_03_9535_3E
- D 0 - I - 0x0011F4 00:91E4: 57 95     .word off_03_9557_3F
- D 0 - I - 0x0011F6 00:91E6: 79 95     .word off_03_9579_40
- D 0 - I - 0x0011F8 00:91E8: 99 95     .word off_03_9599_41
- D 0 - I - 0x0011FA 00:91EA: B3 95     .word off_03_95B3_42
- D 0 - I - 0x0011FC 00:91EC: B6 95     .word off_03_95B6_43
- D 0 - I - 0x0011FE 00:91EE: B9 95     .word off_03_95B9_44
- D 0 - I - 0x001200 00:91F0: BC 95     .word off_03_95BC_45
- D 0 - I - 0x001202 00:91F2: BF 95     .word off_03_95BF_46
- D 0 - I - 0x001204 00:91F4: CD 95     .word off_03_95CD_47
- D 0 - I - 0x001206 00:91F6: D8 95     .word off_03_95D8_48
- D 0 - I - 0x001208 00:91F8: E8 95     .word off_03_95E8_49
- D 0 - I - 0x00120A 00:91FA: F5 95     .word off_03_95F5_4A
- D 0 - I - 0x00120C 00:91FC: 03 96     .word off_03_9603_4B
- D 0 - I - 0x00120E 00:91FE: 0E 96     .word off_03_960E_4C
- D 0 - I - 0x001210 00:9200: 1C 96     .word off_03_961C_4D
- D 0 - I - 0x001212 00:9202: 27 96     .word off_03_9627_4E
- D 0 - I - 0x001214 00:9204: 2A 96     .word off_03_962A_4F
- D 0 - I - 0x001216 00:9206: 2D 96     .word off_03_962D_50
- D 0 - I - 0x001218 00:9208: 30 96     .word off_03_9630_51
- D 0 - I - 0x00121A 00:920A: 33 96     .word off_03_9633_52
- D 0 - I - 0x00121C 00:920C: 44 96     .word off_03_9644_53
- D 0 - I - 0x00121E 00:920E: 52 96     .word off_03_9652_54
- D 0 - I - 0x001220 00:9210: 63 96     .word off_03_9663_55
- D 0 - I - 0x001222 00:9212: 71 96     .word off_03_9671_56
- D 0 - I - 0x001224 00:9214: 74 96     .word off_03_9674_57
- D 0 - I - 0x001226 00:9216: 77 96     .word off_03_9677_58
- D 0 - I - 0x001228 00:9218: 7A 96     .word off_03_967A_59
- D 0 - I - 0x00122A 00:921A: 7D 96     .word off_03_967D_5A
- D 0 - I - 0x00122C 00:921C: 8B 96     .word off_03_968B_5B
- D 0 - I - 0x00122E 00:921E: 96 96     .word off_03_9696_5C
- D 0 - I - 0x001230 00:9220: A1 96     .word off_03_96A1_5D
- D 0 - I - 0x001232 00:9222: AC 96     .word off_03_96AC_5E
- D 0 - I - 0x001234 00:9224: AF 96     .word off_03_96AF_5F
- D 0 - I - 0x001236 00:9226: B2 96     .word off_03_96B2_60
- D 0 - I - 0x001238 00:9228: B5 96     .word off_03_96B5_61
- D 0 - I - 0x00123A 00:922A: B8 96     .word off_03_96B8_62
- D 0 - I - 0x00123C 00:922C: C6 96     .word off_03_96C6_63
- D 0 - I - 0x00123E 00:922E: D8 96     .word off_03_96D8_64
- D 0 - I - 0x001240 00:9230: E8 96     .word off_03_96E8_65
- D 0 - I - 0x001242 00:9232: F8 96     .word off_03_96F8_66
- D 0 - I - 0x001244 00:9234: 06 97     .word off_03_9706_67
- D 0 - I - 0x001246 00:9236: 14 97     .word off_03_9714_68
- D 0 - I - 0x001248 00:9238: 24 97     .word off_03_9724_69
- D 0 - I - 0x00124A 00:923A: 36 97     .word off_03_9736_6A
- D 0 - I - 0x00124C 00:923C: 39 97     .word off_03_9739_6B
- D 0 - I - 0x00124E 00:923E: 3C 97     .word off_03_973C_6C
- - - - - - 0x001250 00:9240: 4F 97     .word off_03_974F_6D
- D 0 - I - 0x001252 00:9242: 62 97     .word off_03_9762_6E
- D 0 - I - 0x001254 00:9244: 65 97     .word off_03_9765_6F
- D 0 - I - 0x001256 00:9246: 68 97     .word off_03_9768_70
- D 0 - I - 0x001258 00:9248: 76 97     .word off_03_9776_71
- D 0 - I - 0x00125A 00:924A: 84 97     .word off_03_9784_72
- D 0 - I - 0x00125C 00:924C: 87 97     .word off_03_9787_73
- D 0 - I - 0x00125E 00:924E: 8A 97     .word off_03_978A_74
- D 0 - I - 0x001260 00:9250: 98 97     .word off_03_9798_75
- D 0 - I - 0x001262 00:9252: A6 97     .word off_03_97A6_76
- D 0 - I - 0x001264 00:9254: B6 97     .word off_03_97B6_77
- D 0 - I - 0x001266 00:9256: C6 97     .word off_03_97C6_78
- D 0 - I - 0x001268 00:9258: D4 97     .word off_03_97D4_79
- D 0 - I - 0x00126A 00:925A: E2 97     .word off_03_97E2_7A
- D 0 - I - 0x00126C 00:925C: F2 97     .word off_03_97F2_7B
- D 0 - I - 0x00126E 00:925E: FF 97     .word off_03_97FF_7C
- D 0 - I - 0x001270 00:9260: 0F 98     .word off_03_980F_7D
- - - - - - 0x001272 00:9262: 1C 98     .word off_03_981C_7E
- - - - - - 0x001274 00:9264: 2C 98     .word off_03_982C_7F
- - - - - - 0x001276 00:9266: 39 98     .word off_03_9839_80
- D 0 - I - 0x001278 00:9268: 49 98     .word off_03_9849_81
- D 0 - I - 0x00127A 00:926A: 4C 98     .word off_03_984C_82
- D 0 - I - 0x00127C 00:926C: 4F 98     .word off_03_984F_83
- D 0 - I - 0x00127E 00:926E: 52 98     .word off_03_9852_84
- D 0 - I - 0x001280 00:9270: 65 98     .word off_03_9865_85
- D 0 - I - 0x001282 00:9272: 75 98     .word off_03_9875_86
- D 0 - I - 0x001284 00:9274: 88 98     .word off_03_9888_87
- D 0 - I - 0x001286 00:9276: 8B 98     .word off_03_988B_88
- D 0 - I - 0x001288 00:9278: 8E 98     .word off_03_988E_89
- - - - - - 0x00128A 00:927A: 91 98     .word off_03_9891_8A
- - - - - - 0x00128C 00:927C: A1 98     .word off_03_98A1_8B
- - - - - - 0x00128E 00:927E: AE 98     .word off_03_98AE_8C
- - - - - - 0x001290 00:9280: BB 98     .word off_03_98BB_8D
- - - - - - 0x001292 00:9282: C8 98     .word off_03_98C8_8E
- - - - - - 0x001294 00:9284: CB 98     .word off_03_98CB_8F
- - - - - - 0x001296 00:9286: CE 98     .word off_03_98CE_90
- - - - - - 0x001298 00:9288: D1 98     .word off_03_98D1_91
- D 0 - I - 0x00129A 00:928A: D4 98     .word off_03_98D4_92
- D 0 - I - 0x00129C 00:928C: E4 98     .word off_03_98E4_93
- D 0 - I - 0x00129E 00:928E: F6 98     .word off_03_98F6_94
- - - - - - 0x0012A0 00:9290: 06 99     .word off_03_9906_95
- D 0 - I - 0x0012A2 00:9292: 18 99     .word off_03_9918_96
- D 0 - I - 0x0012A4 00:9294: 28 99     .word off_03_9928_97
- D 0 - I - 0x0012A6 00:9296: 38 99     .word off_03_9938_98
- D 0 - I - 0x0012A8 00:9298: 48 99     .word off_03_9948_99
- D 0 - I - 0x0012AA 00:929A: 58 99     .word off_03_9958_9A
- - - - - - 0x0012AC 00:929C: 5B 99     .word off_03_995B_9B
- D 0 - I - 0x0012AE 00:929E: 5E 99     .word off_03_995E_9C
- D 0 - I - 0x0012B0 00:92A0: 71 99     .word off_03_9971_9D
- D 0 - I - 0x0012B2 00:92A2: 84 99     .word off_03_9984_9E
- D 0 - I - 0x0012B4 00:92A4: 87 99     .word off_03_9987_9F
- D 0 - I - 0x0012B6 00:92A6: 8A 99     .word off_03_998A_A0
- D 0 - I - 0x0012B8 00:92A8: 9A 99     .word off_03_999A_A1
- D 0 - I - 0x0012BA 00:92AA: AA 99     .word off_03_99AA_A2
- D 0 - I - 0x0012BC 00:92AC: AD 99     .word off_03_99AD_A3
- D 0 - I - 0x0012BE 00:92AE: B0 99     .word off_03_99B0_A4
- D 0 - I - 0x0012C0 00:92B0: C0 99     .word off_03_99C0_A5
- D 0 - I - 0x0012C2 00:92B2: D0 99     .word off_03_99D0_A6
- D 0 - I - 0x0012C4 00:92B4: E0 99     .word off_03_99E0_A7
- D 0 - I - 0x0012C6 00:92B6: F0 99     .word off_03_99F0_A8
- D 0 - I - 0x0012C8 00:92B8: 03 9A     .word off_03_9A03_A9
- D 0 - I - 0x0012CA 00:92BA: 13 9A     .word off_03_9A13_AA
- D 0 - I - 0x0012CC 00:92BC: 16 9A     .word off_03_9A16_AB
- D 0 - I - 0x0012CE 00:92BE: 19 9A     .word off_03_9A19_AC
- D 0 - I - 0x0012D0 00:92C0: 29 9A     .word off_03_9A29_AD
- D 0 - I - 0x0012D2 00:92C2: 2C 9A     .word off_03_9A2C_AE
- D 0 - I - 0x0012D4 00:92C4: 3E 9A     .word off_03_9A3E_AF
- D 0 - I - 0x0012D6 00:92C6: 4E 9A     .word off_03_9A4E_B0
- D 0 - I - 0x0012D8 00:92C8: 60 9A     .word off_03_9A60_B1



off_03_92CA_00:
off_03_92CA_01:
- D 0 - I - 0x0012DA 00:92CA: 81        .byte $81   ; counter
- D 0 - I - 0x0012DB 00:92CB: 41        .byte $41   ; spr_A
- D 0 - I - 0x0012DC 00:92CC: FF        .byte $FF, $B1, $F0   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x0012DF 00:92CF: 03        .byte $03   ; 
- D 0 - I - 0x0012E0 00:92D0: 01        .byte $01   ; 
- D 0 - I - 0x0012E1 00:92D1: F7        .byte $F7, $B1, $F0   ; 
- D 0 - I - 0x0012E4 00:92D4: F7        .byte $F7, $01, $00   ; 
- D 0 - I - 0x0012E7 00:92D7: FF        .byte $FF, $03, $00   ; 



off_03_92DA_02:
- D 0 - I - 0x0012EA 00:92DA: 82        .byte $82   ; counter
- D 0 - I - 0x0012EB 00:92DB: 01        .byte $01   ; spr_A
- D 0 - I - 0x0012EC 00:92DC: FB        .byte $FB, $05, $00   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x0012EF 00:92DF: F7        .byte $F7, $B1, $F2   ; 

- D 0 - I - 0x0012F2 00:92E2: 01        .byte $01   ; 
- D 0 - I - 0x0012F3 00:92E3: 41        .byte $41   ; 
- D 0 - I - 0x0012F4 00:92E4: FF        .byte $FF, $B1, $F2   ; 



off_03_92E7_03:
- D 0 - I - 0x0012F7 00:92E7: 83        .byte $83   ; counter
- D 0 - I - 0x0012F8 00:92E8: 41        .byte $41   ; spr_A
- D 0 - I - 0x0012F9 00:92E9: FF        .byte $FF, $01, $00   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x0012FC 00:92EC: F7        .byte $F7, $03, $00   ; 
- D 0 - I - 0x0012FF 00:92EF: 00        .byte $00, $B1, $F0   ; 

- D 0 - I - 0x001302 00:92F2: 01        .byte $01   ; 
- D 0 - I - 0x001303 00:92F3: 01        .byte $01   ; 
- D 0 - I - 0x001304 00:92F4: F8        .byte $F8, $B1, $F0   ; 



off_03_92F7_04:
- - - - - - 0x001307 00:92F7: 81        .byte $81   ; counter
- - - - - - 0x001308 00:92F8: 41        .byte $41   ; spr_A
- - - - - - 0x001309 00:92F9: FB        .byte $FB, $05, $00   ; spr_X, spr_T, spr_Y

- - - - - - 0x00130C 00:92FC: 81        .byte $81   ; 
- - - - - - 0x00130D 00:92FD: 01        .byte $01   ; 
- - - - - - 0x00130E 00:92FE: F8        .byte $F8, $B1, $F2   ; 

- - - - - - 0x001311 00:9301: 01        .byte $01   ; 
- - - - - - 0x001312 00:9302: 41        .byte $41   ; 
- - - - - - 0x001313 00:9303: 00        .byte $00, $B1, $F2   ; 



off_03_9306_05:
off_FF_9306:
- D 0 - I - 0x001316 00:9306: 04        .byte $04   ; counter
- D 0 - I - 0x001317 00:9307: 01        .byte $01   ; spr_A
- D 0 - I - 0x001318 00:9308: F9        .byte $F9, $B3, $EF   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x00131B 00:930B: 01        .byte $01, $B5, $EF   ; 
- D 0 - I - 0x00131E 00:930E: FA        .byte $FA, $07, $FF   ; 
- D 0 - I - 0x001321 00:9311: 02        .byte $02, $09, $FF   ; 



off_03_9314_06:
off_FF_9314:
- D 0 - I - 0x001324 00:9314: 03        .byte $03   ; counter
- D 0 - I - 0x001325 00:9315: 01        .byte $01   ; spr_A
- D 0 - I - 0x001326 00:9316: FD        .byte $FD, $0B, $00   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001329 00:9319: F7        .byte $F7, $B3, $F2   ; 
- D 0 - I - 0x00132C 00:931C: FF        .byte $FF, $B5, $F2   ; 



off_03_931F_07:
off_FF_931F:
- D 0 - I - 0x00132F 00:931F: 04        .byte $04   ; counter
- D 0 - I - 0x001330 00:9320: 01        .byte $01   ; spr_A
- D 0 - I - 0x001331 00:9321: F4        .byte $F4, $B3, $EF   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001334 00:9324: FC        .byte $FC, $B5, $EF   ; 
- D 0 - I - 0x001337 00:9327: F8        .byte $F8, $0D, $FF   ; 
- D 0 - I - 0x00133A 00:932A: 00        .byte $00, $0F, $FF   ; 



off_03_932D_08:
- D 0 - I - 0x00133D 00:932D: FF        .byte $FF   ; 
- D 0 - I - 0x00133E 00:932E: 06 93     .word off_FF_9306



off_03_9330_09:
- D 0 - I - 0x001340 00:9330: FF        .byte $FF   ; 
- D 0 - I - 0x001341 00:9331: 14 93     .word off_FF_9314



off_03_9333_0A:
- D 0 - I - 0x001343 00:9333: FF        .byte $FF   ; 
- D 0 - I - 0x001344 00:9334: 1F 93     .word off_FF_931F



off_03_9336_0B:
off_FF_9336:
- D 0 - I - 0x001346 00:9336: 04        .byte $04   ; counter
- D 0 - I - 0x001347 00:9337: 01        .byte $01   ; spr_A
- D 0 - I - 0x001348 00:9338: F7        .byte $F7, $B7, $F0   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x00134B 00:933B: FF        .byte $FF, $B9, $F0   ; 
- D 0 - I - 0x00134E 00:933E: F6        .byte $F6, $11, $00   ; 
- D 0 - I - 0x001351 00:9341: FE        .byte $FE, $13, $00   ; 



off_03_9344_0C:
off_FF_9344:
- D 0 - I - 0x001354 00:9344: 03        .byte $03   ; counter
- D 0 - I - 0x001355 00:9345: 01        .byte $01   ; spr_A
- D 0 - I - 0x001356 00:9346: F7        .byte $F7, $B7, $F3   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001359 00:9349: FF        .byte $FF, $B9, $F3   ; 
- D 0 - I - 0x00135C 00:934C: FC        .byte $FC, $15, $01   ; 



off_03_934F_0D:
off_FF_934F:
- D 0 - I - 0x00135F 00:934F: 04        .byte $04   ; counter
- D 0 - I - 0x001360 00:9350: 01        .byte $01   ; spr_A
- D 0 - I - 0x001361 00:9351: F6        .byte $F6, $B7, $F0   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001364 00:9354: FE        .byte $FE, $B9, $F0   ; 
- D 0 - I - 0x001367 00:9357: F8        .byte $F8, $17, $00   ; 
- D 0 - I - 0x00136A 00:935A: 00        .byte $00, $19, $00   ; 



off_03_935D_0E:
- D 0 - I - 0x00136D 00:935D: FF        .byte $FF   ; 
- D 0 - I - 0x00136E 00:935E: 36 93     .word off_FF_9336



off_03_9360_0F:
- D 0 - I - 0x001370 00:9360: FF        .byte $FF   ; 
- D 0 - I - 0x001371 00:9361: 44 93     .word off_FF_9344



off_03_9363_10:
- D 0 - I - 0x001373 00:9363: FF        .byte $FF   ; 
- D 0 - I - 0x001374 00:9364: 4F 93     .word off_FF_934F



off_03_9366_11:
off_FF_9366:
- D 0 - I - 0x001376 00:9366: 04        .byte $04   ; counter
- D 0 - I - 0x001377 00:9367: 01        .byte $01   ; spr_A
- D 0 - I - 0x001378 00:9368: F8        .byte $F8, $BB, $EF   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x00137B 00:936B: 00        .byte $00, $BD, $EF   ; 
- D 0 - I - 0x00137E 00:936E: F9        .byte $F9, $1B, $FF   ; 
- D 0 - I - 0x001381 00:9371: 01        .byte $01, $1D, $FF   ; 



off_03_9374_12:
off_FF_9374:
- D 0 - I - 0x001384 00:9374: 03        .byte $03   ; counter
- D 0 - I - 0x001385 00:9375: 01        .byte $01   ; spr_A
- D 0 - I - 0x001386 00:9376: F8        .byte $F8, $BB, $F1   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001389 00:9379: 00        .byte $00, $BD, $F1   ; 
- D 0 - I - 0x00138C 00:937C: FD        .byte $FD, $1F, $00   ; 



off_03_937F_13:
off_FF_937F:
- D 0 - I - 0x00138F 00:937F: 03        .byte $03   ; counter
- D 0 - I - 0x001390 00:9380: 01        .byte $01   ; spr_A
- D 0 - I - 0x001391 00:9381: FB        .byte $FB, $BB, $EF   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001394 00:9384: 03        .byte $03, $BD, $EF   ; 
- D 0 - I - 0x001397 00:9387: FF        .byte $FF, $21, $FF   ; 



off_03_938A_14:
off_FF_938A:
- D 0 - I - 0x00139A 00:938A: 03        .byte $03   ; counter
- D 0 - I - 0x00139B 00:938B: 01        .byte $01   ; spr_A
- D 0 - I - 0x00139C 00:938C: FB        .byte $FB, $BB, $F1   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x00139F 00:938F: 03        .byte $03, $BD, $F1   ; 
- D 0 - I - 0x0013A2 00:9392: 00        .byte $00, $1F, $00   ; 



off_03_9395_15:
- D 0 - I - 0x0013A5 00:9395: FF        .byte $FF   ; 
- D 0 - I - 0x0013A6 00:9396: 66 93     .word off_FF_9366



off_03_9398_16:
- D 0 - I - 0x0013A8 00:9398: FF        .byte $FF   ; 
- D 0 - I - 0x0013A9 00:9399: 74 93     .word off_FF_9374



off_03_939B_17:
- D 0 - I - 0x0013AB 00:939B: FF        .byte $FF   ; 
- D 0 - I - 0x0013AC 00:939C: 7F 93     .word off_FF_937F



off_03_939E_18:
- D 0 - I - 0x0013AE 00:939E: FF        .byte $FF   ; 
- D 0 - I - 0x0013AF 00:939F: 8A 93     .word off_FF_938A



off_03_93A1_19:
- D 0 - I - 0x0013B1 00:93A1: 83        .byte $83   ; counter
- D 0 - I - 0x0013B2 00:93A2: 01        .byte $01   ; spr_A
- D 0 - I - 0x0013B3 00:93A3: F9        .byte $F9, $23, $FE   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x0013B6 00:93A6: 01        .byte $01, $25, $FE   ; 
- D 0 - I - 0x0013B9 00:93A9: F8        .byte $F8, $BF, $EE   ; 

- D 0 - I - 0x0013BC 00:93AC: 01        .byte $01   ; 
- D 0 - I - 0x0013BD 00:93AD: 41        .byte $41   ; 
- D 0 - I - 0x0013BE 00:93AE: 00        .byte $00, $BF, $EE   ; 



off_03_93B1_1A:
- D 0 - I - 0x0013C1 00:93B1: 81        .byte $81   ; counter
- D 0 - I - 0x0013C2 00:93B2: 01        .byte $01   ; spr_A
- D 0 - I - 0x0013C3 00:93B3: F9        .byte $F9, $27, $FE   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x0013C6 00:93B6: 82        .byte $82   ; 
- D 0 - I - 0x0013C7 00:93B7: 41        .byte $41   ; 
- D 0 - I - 0x0013C8 00:93B8: 01        .byte $01, $23, $FE   ; 
- D 0 - I - 0x0013CB 00:93BB: 00        .byte $00, $BF, $F0   ; 

- D 0 - I - 0x0013CE 00:93BE: 01        .byte $01   ; 
- D 0 - I - 0x0013CF 00:93BF: 01        .byte $01   ; 
- D 0 - I - 0x0013D0 00:93C0: F8        .byte $F8, $BF, $F0   ; 



off_03_93C3_1B:
- D 0 - I - 0x0013D3 00:93C3: 83        .byte $83   ; counter
- D 0 - I - 0x0013D4 00:93C4: 41        .byte $41   ; spr_A
- D 0 - I - 0x0013D5 00:93C5: 01        .byte $01, $23, $FE   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x0013D8 00:93C8: F9        .byte $F9, $25, $FE   ; 
- D 0 - I - 0x0013DB 00:93CB: 02        .byte $02, $BF, $EE   ; 

- D 0 - I - 0x0013DE 00:93CE: 01        .byte $01   ; 
- D 0 - I - 0x0013DF 00:93CF: 01        .byte $01   ; 
- D 0 - I - 0x0013E0 00:93D0: FA        .byte $FA, $BF, $EE   ; 



off_03_93D3_1C:
- D 0 - I - 0x0013E3 00:93D3: 81        .byte $81   ; counter
- D 0 - I - 0x0013E4 00:93D4: 41        .byte $41   ; spr_A
- D 0 - I - 0x0013E5 00:93D5: 01        .byte $01, $27, $FE   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x0013E8 00:93D8: 82        .byte $82   ; 
- D 0 - I - 0x0013E9 00:93D9: 01        .byte $01   ; 
- D 0 - I - 0x0013EA 00:93DA: F9        .byte $F9, $23, $FE   ; 
- D 0 - I - 0x0013ED 00:93DD: FA        .byte $FA, $BF, $F0   ; 

- D 0 - I - 0x0013F0 00:93E0: 01        .byte $01   ; 
- D 0 - I - 0x0013F1 00:93E1: 41        .byte $41   ; 
- D 0 - I - 0x0013F2 00:93E2: 02        .byte $02, $BF, $F0   ; 



off_03_93E5_1D:
- D 0 - I - 0x0013F5 00:93E5: 83        .byte $83   ; counter
- D 0 - I - 0x0013F6 00:93E6: 01        .byte $01   ; spr_A
- D 0 - I - 0x0013F7 00:93E7: FB        .byte $FB, $29, $FF   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x0013FA 00:93EA: 03        .byte $03, $2B, $FF   ; 
- D 0 - I - 0x0013FD 00:93ED: F9        .byte $F9, $B1, $EF   ; 

- D 0 - I - 0x001400 00:93F0: 01        .byte $01   ; 
- D 0 - I - 0x001401 00:93F1: 41        .byte $41   ; 
- D 0 - I - 0x001402 00:93F2: 01        .byte $01, $B1, $EF   ; 



off_03_93F5_1E:
- D 0 - I - 0x001405 00:93F5: 83        .byte $83   ; counter
- D 0 - I - 0x001406 00:93F6: 01        .byte $01   ; spr_A
- D 0 - I - 0x001407 00:93F7: FB        .byte $FB, $29, $FF   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x00140A 00:93FA: 03        .byte $03, $2B, $FF   ; 
- D 0 - I - 0x00140D 00:93FD: F9        .byte $F9, $B1, $F1   ; 

- D 0 - I - 0x001410 00:9400: 01        .byte $01   ; 
- D 0 - I - 0x001411 00:9401: 41        .byte $41   ; 
- D 0 - I - 0x001412 00:9402: 01        .byte $01, $B1, $F1   ; 



off_03_9405_1F:
off_FF_9405:
- D 0 - I - 0x001415 00:9405: 82        .byte $82   ; counter
- D 0 - I - 0x001416 00:9406: 41        .byte $41   ; spr_A
- D 0 - I - 0x001417 00:9407: FE        .byte $FE, $29, $FF   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x00141A 00:940A: F6        .byte $F6, $2B, $FF   ; 

- D 0 - I - 0x00141D 00:940D: 02        .byte $02   ; 
- D 0 - I - 0x00141E 00:940E: 01        .byte $01   ; 
- D 0 - I - 0x00141F 00:940F: F6        .byte $F6, $B3, $EF   ; 
- D 0 - I - 0x001422 00:9412: FE        .byte $FE, $B5, $EF   ; 



off_03_9415_20:
off_FF_9415:
- D 0 - I - 0x001425 00:9415: 82        .byte $82   ; counter
- D 0 - I - 0x001426 00:9416: 41        .byte $41   ; spr_A
- D 0 - I - 0x001427 00:9417: FE        .byte $FE, $29, $FF   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x00142A 00:941A: F6        .byte $F6, $2B, $FF   ; 

- D 0 - I - 0x00142D 00:941D: 02        .byte $02   ; 
- D 0 - I - 0x00142E 00:941E: 01        .byte $01   ; 
- D 0 - I - 0x00142F 00:941F: F8        .byte $F8, $B3, $F1   ; 
- D 0 - I - 0x001432 00:9422: 00        .byte $00, $B5, $F1   ; 



off_03_9425_21:
- D 0 - I - 0x001435 00:9425: FF        .byte $FF   ; 
- D 0 - I - 0x001436 00:9426: 05 94     .word off_FF_9405



off_03_9428_22:
- D 0 - I - 0x001438 00:9428: FF        .byte $FF   ; 
- D 0 - I - 0x001439 00:9429: 15 94     .word off_FF_9415



off_03_942B_23:
off_FF_942B:
- D 0 - I - 0x00143B 00:942B: 82        .byte $82   ; counter
- D 0 - I - 0x00143C 00:942C: 41        .byte $41   ; spr_A
- D 0 - I - 0x00143D 00:942D: FE        .byte $FE, $29, $FF   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001440 00:9430: F6        .byte $F6, $2B, $FF   ; 

- D 0 - I - 0x001443 00:9433: 02        .byte $02   ; 
- D 0 - I - 0x001444 00:9434: 01        .byte $01   ; 
- D 0 - I - 0x001445 00:9435: F6        .byte $F6, $B7, $EF   ; 
- D 0 - I - 0x001448 00:9438: FE        .byte $FE, $B9, $EF   ; 



off_03_943B_24:
off_FF_943B:
- D 0 - I - 0x00144B 00:943B: 82        .byte $82   ; counter
- D 0 - I - 0x00144C 00:943C: 41        .byte $41   ; spr_A
- D 0 - I - 0x00144D 00:943D: FE        .byte $FE, $29, $FF   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001450 00:9440: F6        .byte $F6, $2B, $FF   ; 

- D 0 - I - 0x001453 00:9443: 02        .byte $02   ; 
- D 0 - I - 0x001454 00:9444: 01        .byte $01   ; 
- D 0 - I - 0x001455 00:9445: F8        .byte $F8, $B7, $F0   ; 
- D 0 - I - 0x001458 00:9448: 00        .byte $00, $B9, $F0   ; 



off_03_944B_25:
- D 0 - I - 0x00145B 00:944B: FF        .byte $FF   ; 
- D 0 - I - 0x00145C 00:944C: 2B 94     .word off_FF_942B



off_03_944E_26:
- D 0 - I - 0x00145E 00:944E: FF        .byte $FF   ; 
- D 0 - I - 0x00145F 00:944F: 3B 94     .word off_FF_943B



off_03_9451_27:
off_FF_9451:
- D 0 - I - 0x001461 00:9451: 04        .byte $04   ; counter
- D 0 - I - 0x001462 00:9452: 01        .byte $01   ; spr_A
- D 0 - I - 0x001463 00:9453: FA        .byte $FA, $2D, $FE   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001466 00:9456: 02        .byte $02, $2F, $FE   ; 
- D 0 - I - 0x001469 00:9459: F9        .byte $F9, $BB, $EF   ; 
- D 0 - I - 0x00146C 00:945C: 01        .byte $01, $BD, $EF   ; 



off_03_945F_28:
off_FF_945F:
- D 0 - I - 0x00146F 00:945F: 04        .byte $04   ; counter
- D 0 - I - 0x001470 00:9460: 01        .byte $01   ; spr_A
- D 0 - I - 0x001471 00:9461: FA        .byte $FA, $2D, $FE   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001474 00:9464: 02        .byte $02, $2F, $FE   ; 
- D 0 - I - 0x001477 00:9467: FA        .byte $FA, $BB, $EE   ; 
- D 0 - I - 0x00147A 00:946A: 02        .byte $02, $BD, $EE   ; 



off_03_946D_29:
- D 0 - I - 0x00147D 00:946D: FF        .byte $FF   ; 
- D 0 - I - 0x00147E 00:946E: 51 94     .word off_FF_9451



off_03_9470_2A:
- D 0 - I - 0x001480 00:9470: FF        .byte $FF   ; 
- D 0 - I - 0x001481 00:9471: 5F 94     .word off_FF_945F



off_03_9473_2B:
- D 0 - I - 0x001483 00:9473: 83        .byte $83   ; counter
- D 0 - I - 0x001484 00:9474: 01        .byte $01   ; spr_A
- D 0 - I - 0x001485 00:9475: FA        .byte $FA, $2D, $FE   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001488 00:9478: 02        .byte $02, $2F, $FE   ; 
- D 0 - I - 0x00148B 00:947B: FA        .byte $FA, $BF, $EE   ; 

- D 0 - I - 0x00148E 00:947E: 01        .byte $01   ; 
- D 0 - I - 0x00148F 00:947F: 41        .byte $41   ; 
- D 0 - I - 0x001490 00:9480: 02        .byte $02, $BF, $EE   ; 



off_03_9483_2C:
- D 0 - I - 0x001493 00:9483: 83        .byte $83   ; counter
- D 0 - I - 0x001494 00:9484: 01        .byte $01   ; spr_A
- D 0 - I - 0x001495 00:9485: FA        .byte $FA, $2D, $FE   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001498 00:9488: 02        .byte $02, $2F, $FE   ; 
- D 0 - I - 0x00149B 00:948B: FA        .byte $FA, $BF, $EF   ; 

- D 0 - I - 0x00149E 00:948E: 01        .byte $01   ; 
- D 0 - I - 0x00149F 00:948F: 41        .byte $41   ; 
- D 0 - I - 0x0014A0 00:9490: 02        .byte $02, $BF, $EF   ; 



off_03_9493_2D:
off_03_9493_2E:
off_03_9493_2F:
off_03_9493_30:
off_03_9493_31:
off_03_9493_32:
off_FF_9493:
- D 0 - I - 0x0014A3 00:9493: 03        .byte $03   ; counter
- D 0 - I - 0x0014A4 00:9494: 01        .byte $01   ; spr_A
- D 0 - I - 0x0014A5 00:9495: F5        .byte $F5, $B3, $F1   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x0014A8 00:9498: FD        .byte $FD, $B5, $F1   ; 
- D 0 - I - 0x0014AB 00:949B: FB        .byte $FB, $0B, $00   ; 



off_03_949E_33:
- D 0 - I - 0x0014AE 00:949E: FF        .byte $FF   ; 
- D 0 - I - 0x0014AF 00:949F: 93 94     .word off_FF_9493



off_03_94A1_34:
off_FF_94A1:
- D 0 - I - 0x0014B1 00:94A1: 03        .byte $03   ; counter
- D 0 - I - 0x0014B2 00:94A2: 01        .byte $01   ; spr_A
- D 0 - I - 0x0014B3 00:94A3: F6        .byte $F6, $B7, $F3   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x0014B6 00:94A6: FE        .byte $FE, $B9, $F3   ; 
- D 0 - I - 0x0014B9 00:94A9: FB        .byte $FB, $15, $01   ; 



off_03_94AC_35:
- D 0 - I - 0x0014BC 00:94AC: FF        .byte $FF   ; 
- D 0 - I - 0x0014BD 00:94AD: A1 94     .word off_FF_94A1



off_03_94AF_36:
off_FF_94AF:
- D 0 - I - 0x0014BF 00:94AF: 0A        .byte $0A   ; counter
- D 0 - I - 0x0014C0 00:94B0: 00        .byte $00   ; spr_A
- D 0 - I - 0x0014C1 00:94B1: F6        .byte $F6, $91, $01   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x0014C4 00:94B4: EE        .byte $EE, $8F, $01   ; 
- D 0 - I - 0x0014C7 00:94B7: FE        .byte $FE, $93, $01   ; 
- D 0 - I - 0x0014CA 00:94BA: F1        .byte $F1, $81, $E1   ; 
- D 0 - I - 0x0014CD 00:94BD: F9        .byte $F9, $83, $E1   ; 
- D 0 - I - 0x0014D0 00:94C0: 01        .byte $01, $85, $E1   ; 
- D 0 - I - 0x0014D3 00:94C3: F1        .byte $F1, $87, $F1   ; 
- D 0 - I - 0x0014D6 00:94C6: F9        .byte $F9, $89, $F1   ; 
- D 0 - I - 0x0014D9 00:94C9: 01        .byte $01, $8B, $F1   ; 
- D 0 - I - 0x0014DC 00:94CC: F8        .byte $F8, $8D, $01   ; 



off_03_94CF_37:
off_FF_94CF:
- D 0 - I - 0x0014DF 00:94CF: 09        .byte $09   ; counter
- D 0 - I - 0x0014E0 00:94D0: 00        .byte $00   ; spr_A
- D 0 - I - 0x0014E1 00:94D1: F9        .byte $F9, $95, $01   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x0014E4 00:94D4: 01        .byte $01, $97, $01   ; 
- D 0 - I - 0x0014E7 00:94D7: F2        .byte $F2, $81, $E4   ; 
- D 0 - I - 0x0014EA 00:94DA: FA        .byte $FA, $83, $E4   ; 
- D 0 - I - 0x0014ED 00:94DD: 02        .byte $02, $85, $E4   ; 
- D 0 - I - 0x0014F0 00:94E0: F2        .byte $F2, $87, $F4   ; 
- D 0 - I - 0x0014F3 00:94E3: FA        .byte $FA, $89, $F4   ; 
- D 0 - I - 0x0014F6 00:94E6: 02        .byte $02, $8B, $F4   ; 
- D 0 - I - 0x0014F9 00:94E9: FA        .byte $FA, $8D, $04   ; 



off_03_94EC_38:
off_FF_94EC:
- D 0 - I - 0x0014FC 00:94EC: 0A        .byte $0A   ; counter
- D 0 - I - 0x0014FD 00:94ED: 00        .byte $00   ; spr_A
- D 0 - I - 0x0014FE 00:94EE: F0        .byte $F0, $99, $01   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001501 00:94F1: F8        .byte $F8, $9B, $01   ; 
- D 0 - I - 0x001504 00:94F4: 00        .byte $00, $9D, $01   ; 
- D 0 - I - 0x001507 00:94F7: EF        .byte $EF, $81, $E1   ; 
- D 0 - I - 0x00150A 00:94FA: F7        .byte $F7, $83, $E1   ; 
- D 0 - I - 0x00150D 00:94FD: EF        .byte $EF, $87, $F1   ; 
- D 0 - I - 0x001510 00:9500: F7        .byte $F7, $89, $F1   ; 
- D 0 - I - 0x001513 00:9503: FF        .byte $FF, $85, $E1   ; 
- D 0 - I - 0x001516 00:9506: FF        .byte $FF, $8B, $F1   ; 
- D 0 - I - 0x001519 00:9509: F6        .byte $F6, $8D, $01   ; 



off_03_950C_39:
off_FF_950C:
- - - - - - 0x00151C 00:950C: 09        .byte $09   ; counter
- - - - - - 0x00151D 00:950D: 00        .byte $00   ; spr_A
- - - - - - 0x00151E 00:950E: F9        .byte $F9, $95, $01   ; spr_X, spr_T, spr_Y
- - - - - - 0x001521 00:9511: 01        .byte $01, $97, $01   ; 
- - - - - - 0x001524 00:9514: F2        .byte $F2, $81, $E4   ; 
- - - - - - 0x001527 00:9517: FA        .byte $FA, $83, $E4   ; 
- - - - - - 0x00152A 00:951A: 02        .byte $02, $85, $E4   ; 
- - - - - - 0x00152D 00:951D: F2        .byte $F2, $87, $F4   ; 
- - - - - - 0x001530 00:9520: FA        .byte $FA, $89, $F4   ; 
- - - - - - 0x001533 00:9523: 02        .byte $02, $8B, $F4   ; 
- - - - - - 0x001536 00:9526: FA        .byte $FA, $8D, $04   ; 



off_03_9529_3A:
- D 0 - I - 0x001539 00:9529: FF        .byte $FF   ; 
- D 0 - I - 0x00153A 00:952A: AF 94     .word off_FF_94AF



off_03_952C_3B:
- D 0 - I - 0x00153C 00:952C: FF        .byte $FF   ; 
- D 0 - I - 0x00153D 00:952D: CF 94     .word off_FF_94CF



off_03_952F_3C:
- D 0 - I - 0x00153F 00:952F: FF        .byte $FF   ; 
- D 0 - I - 0x001540 00:9530: EC 94     .word off_FF_94EC



off_03_9532_3D:
- - - - - - 0x001542 00:9532: FF        .byte $FF   ; 
- - - - - - 0x001543 00:9533: 0C 95     .word off_FF_950C



off_03_9535_3E:
off_FF_9535:
- D 0 - I - 0x001545 00:9535: 83        .byte $83   ; counter
- D 0 - I - 0x001546 00:9536: 00        .byte $00   ; spr_A
- D 0 - I - 0x001547 00:9537: F8        .byte $F8, $9F, $01   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x00154A 00:953A: 00        .byte $00, $A1, $01   ; 
- D 0 - I - 0x00154D 00:953D: 08        .byte $08, $A3, $01   ; 

- D 0 - I - 0x001550 00:9540: 07        .byte $07   ; 
- D 0 - I - 0x001551 00:9541: 40        .byte $40   ; 
- D 0 - I - 0x001552 00:9542: 08        .byte $08, $81, $E1   ; 
- D 0 - I - 0x001555 00:9545: 00        .byte $00, $83, $E1   ; 
- D 0 - I - 0x001558 00:9548: F8        .byte $F8, $85, $E1   ; 
- D 0 - I - 0x00155B 00:954B: 08        .byte $08, $87, $F1   ; 
- D 0 - I - 0x00155E 00:954E: 00        .byte $00, $89, $F1   ; 
- D 0 - I - 0x001561 00:9551: F8        .byte $F8, $8B, $F1   ; 
- D 0 - I - 0x001564 00:9554: 01        .byte $01, $8D, $01   ; 



off_03_9557_3F:
off_FF_9557:
- D 0 - I - 0x001567 00:9557: 83        .byte $83   ; counter
- D 0 - I - 0x001568 00:9558: 00        .byte $00   ; spr_A
- D 0 - I - 0x001569 00:9559: F8        .byte $F8, $9F, $01   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x00156C 00:955C: 00        .byte $00, $A1, $01   ; 
- D 0 - I - 0x00156F 00:955F: 08        .byte $08, $A3, $01   ; 

- D 0 - I - 0x001572 00:9562: 07        .byte $07   ; 
- D 0 - I - 0x001573 00:9563: 40        .byte $40   ; 
- D 0 - I - 0x001574 00:9564: 08        .byte $08, $81, $E3   ; 
- D 0 - I - 0x001577 00:9567: 00        .byte $00, $83, $E3   ; 
- D 0 - I - 0x00157A 00:956A: F8        .byte $F8, $85, $E3   ; 
- D 0 - I - 0x00157D 00:956D: 08        .byte $08, $87, $F3   ; 
- D 0 - I - 0x001580 00:9570: 00        .byte $00, $89, $F3   ; 
- D 0 - I - 0x001583 00:9573: F8        .byte $F8, $8B, $F3   ; 
- D 0 - I - 0x001586 00:9576: 01        .byte $01, $8D, $03   ; 



off_03_9579_40:
off_FF_9579:
- D 0 - I - 0x001589 00:9579: 0A        .byte $0A   ; counter
- D 0 - I - 0x00158A 00:957A: 40        .byte $40   ; spr_A
- D 0 - I - 0x00158B 00:957B: 08        .byte $08, $B7, $E0   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x00158E 00:957E: 00        .byte $00, $B9, $E0   ; 
- D 0 - I - 0x001591 00:9581: 08        .byte $08, $BB, $F0   ; 
- D 0 - I - 0x001594 00:9584: 00        .byte $00, $BD, $F0   ; 
- D 0 - I - 0x001597 00:9587: F8        .byte $F8, $BF, $F0   ; 
- D 0 - I - 0x00159A 00:958A: F8        .byte $F8, $A9, $E0   ; 
- D 0 - I - 0x00159D 00:958D: F0        .byte $F0, $AB, $E0   ; 
- D 0 - I - 0x0015A0 00:9590: F0        .byte $F0, $B1, $F0   ; 
- D 0 - I - 0x0015A3 00:9593: 00        .byte $00, $B3, $00   ; 
- D 0 - I - 0x0015A6 00:9596: F8        .byte $F8, $B5, $00   ; 



off_03_9599_41:
off_FF_9599:
- D 0 - I - 0x0015A9 00:9599: 08        .byte $08   ; counter
- D 0 - I - 0x0015AA 00:959A: 40        .byte $40   ; spr_A
- D 0 - I - 0x0015AB 00:959B: F8        .byte $F8, $A9, $E0   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x0015AE 00:959E: F0        .byte $F0, $AB, $E0   ; 
- D 0 - I - 0x0015B1 00:95A1: F0        .byte $F0, $B1, $F0   ; 
- D 0 - I - 0x0015B4 00:95A4: 00        .byte $00, $B3, $00   ; 
- D 0 - I - 0x0015B7 00:95A7: F8        .byte $F8, $B5, $00   ; 
- D 0 - I - 0x0015BA 00:95AA: 00        .byte $00, $A7, $E0   ; 
- D 0 - I - 0x0015BD 00:95AD: 00        .byte $00, $AD, $F0   ; 
- D 0 - I - 0x0015C0 00:95B0: F8        .byte $F8, $AF, $F0   ; 



off_03_95B3_42:
- D 0 - I - 0x0015C3 00:95B3: FF        .byte $FF   ; 
- D 0 - I - 0x0015C4 00:95B4: 35 95     .word off_FF_9535



off_03_95B6_43:
- D 0 - I - 0x0015C6 00:95B6: FF        .byte $FF   ; 
- D 0 - I - 0x0015C7 00:95B7: 57 95     .word off_FF_9557



off_03_95B9_44:
- D 0 - I - 0x0015C9 00:95B9: FF        .byte $FF   ; 
- D 0 - I - 0x0015CA 00:95BA: 79 95     .word off_FF_9579



off_03_95BC_45:
- D 0 - I - 0x0015CC 00:95BC: FF        .byte $FF   ; 
- D 0 - I - 0x0015CD 00:95BD: 99 95     .word off_FF_9599



off_03_95BF_46:
- D 0 - I - 0x0015CF 00:95BF: 04        .byte $04   ; counter
- D 0 - I - 0x0015D0 00:95C0: 00        .byte $00   ; spr_A
- D 0 - I - 0x0015D1 00:95C1: F9        .byte $F9, $A3, $F0   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x0015D4 00:95C4: 01        .byte $01, $A5, $F0   ; 
- D 0 - I - 0x0015D7 00:95C7: F9        .byte $F9, $01, $00   ; 
- D 0 - I - 0x0015DA 00:95CA: 01        .byte $01, $03, $00   ; 



off_03_95CD_47:
- D 0 - I - 0x0015DD 00:95CD: 03        .byte $03   ; counter
- D 0 - I - 0x0015DE 00:95CE: 00        .byte $00   ; spr_A
- D 0 - I - 0x0015DF 00:95CF: F9        .byte $F9, $A3, $F2   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x0015E2 00:95D2: 01        .byte $01, $A5, $F2   ; 
- D 0 - I - 0x0015E5 00:95D5: FC        .byte $FC, $05, $00   ; 



off_03_95D8_48:
- D 0 - I - 0x0015E8 00:95D8: 82        .byte $82   ; counter
- D 0 - I - 0x0015E9 00:95D9: 40        .byte $40   ; spr_A
- D 0 - I - 0x0015EA 00:95DA: 01        .byte $01, $01, $00   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x0015ED 00:95DD: F9        .byte $F9, $03, $00   ; 

- D 0 - I - 0x0015F0 00:95E0: 02        .byte $02   ; 
- D 0 - I - 0x0015F1 00:95E1: 00        .byte $00   ; 
- D 0 - I - 0x0015F2 00:95E2: FB        .byte $FB, $A3, $F0   ; 
- D 0 - I - 0x0015F5 00:95E5: 03        .byte $03, $A5, $F0   ; 



off_03_95E8_49:
- D 0 - I - 0x0015F8 00:95E8: 82        .byte $82   ; counter
- D 0 - I - 0x0015F9 00:95E9: 00        .byte $00   ; spr_A
- D 0 - I - 0x0015FA 00:95EA: FB        .byte $FB, $A3, $F2   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x0015FD 00:95ED: 03        .byte $03, $A5, $F2   ; 

- D 0 - I - 0x001600 00:95F0: 01        .byte $01   ; 
- D 0 - I - 0x001601 00:95F1: 40        .byte $40   ; 
- D 0 - I - 0x001602 00:95F2: FE        .byte $FE, $05, $00   ; 



off_03_95F5_4A:
off_FF_95F5:
- D 0 - I - 0x001605 00:95F5: 04        .byte $04   ; counter
- D 0 - I - 0x001606 00:95F6: 00        .byte $00   ; spr_A
- D 0 - I - 0x001607 00:95F7: F6        .byte $F6, $A7, $F0   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x00160A 00:95FA: FE        .byte $FE, $A9, $F0   ; 
- D 0 - I - 0x00160D 00:95FD: F9        .byte $F9, $07, $00   ; 
- D 0 - I - 0x001610 00:9600: 01        .byte $01, $09, $00   ; 



off_03_9603_4B:
off_FF_9603:
- D 0 - I - 0x001613 00:9603: 03        .byte $03   ; counter
- D 0 - I - 0x001614 00:9604: 00        .byte $00   ; spr_A
- D 0 - I - 0x001615 00:9605: FB        .byte $FB, $0B, $02   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001618 00:9608: F3        .byte $F3, $A7, $F3   ; 
- D 0 - I - 0x00161B 00:960B: FB        .byte $FB, $A9, $F3   ; 



off_03_960E_4C:
off_FF_960E:
- D 0 - I - 0x00161E 00:960E: 04        .byte $04   ; counter
- D 0 - I - 0x00161F 00:960F: 00        .byte $00   ; spr_A
- D 0 - I - 0x001620 00:9610: F2        .byte $F2, $A7, $F0   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001623 00:9613: FA        .byte $FA, $A9, $F0   ; 
- D 0 - I - 0x001626 00:9616: F7        .byte $F7, $0D, $00   ; 
- D 0 - I - 0x001629 00:9619: FF        .byte $FF, $0F, $00   ; 



off_03_961C_4D:
off_FF_961C:
- D 0 - I - 0x00162C 00:961C: 03        .byte $03   ; counter
- D 0 - I - 0x00162D 00:961D: 00        .byte $00   ; spr_A
- D 0 - I - 0x00162E 00:961E: FA        .byte $FA, $0B, $02   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001631 00:9621: F4        .byte $F4, $A7, $F3   ; 
- D 0 - I - 0x001634 00:9624: FC        .byte $FC, $A9, $F3   ; 



off_03_9627_4E:
- D 0 - I - 0x001637 00:9627: FF        .byte $FF   ; 
- D 0 - I - 0x001638 00:9628: F5 95     .word off_FF_95F5



off_03_962A_4F:
- D 0 - I - 0x00163A 00:962A: FF        .byte $FF   ; 
- D 0 - I - 0x00163B 00:962B: 03 96     .word off_FF_9603



off_03_962D_50:
- D 0 - I - 0x00163D 00:962D: FF        .byte $FF   ; 
- D 0 - I - 0x00163E 00:962E: 0E 96     .word off_FF_960E



off_03_9630_51:
- D 0 - I - 0x001640 00:9630: FF        .byte $FF   ; 
- D 0 - I - 0x001641 00:9631: 1C 96     .word off_FF_961C



off_03_9633_52:
off_FF_9633:
- D 0 - I - 0x001643 00:9633: 05        .byte $05   ; counter
- D 0 - I - 0x001644 00:9634: 00        .byte $00   ; spr_A
- D 0 - I - 0x001645 00:9635: EE        .byte $EE, $AB, $F0   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001648 00:9638: F6        .byte $F6, $AD, $F0   ; 
- D 0 - I - 0x00164B 00:963B: FE        .byte $FE, $AF, $F0   ; 
- D 0 - I - 0x00164E 00:963E: F9        .byte $F9, $11, $00   ; 
- D 0 - I - 0x001651 00:9641: 01        .byte $01, $13, $00   ; 



off_03_9644_53:
off_FF_9644:
- D 0 - I - 0x001654 00:9644: 04        .byte $04   ; counter
- D 0 - I - 0x001655 00:9645: 00        .byte $00   ; spr_A
- D 0 - I - 0x001656 00:9646: F0        .byte $F0, $AB, $F2   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001659 00:9649: F8        .byte $F8, $AD, $F2   ; 
- D 0 - I - 0x00165C 00:964C: 00        .byte $00, $AF, $F2   ; 
- D 0 - I - 0x00165F 00:964F: 00        .byte $00, $15, $01   ; 



off_03_9652_54:
off_FF_9652:
- D 0 - I - 0x001662 00:9652: 05        .byte $05   ; counter
- D 0 - I - 0x001663 00:9653: 00        .byte $00   ; spr_A
- D 0 - I - 0x001664 00:9654: F9        .byte $F9, $17, $00   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001667 00:9657: 01        .byte $01, $19, $00   ; 
- D 0 - I - 0x00166A 00:965A: ED        .byte $ED, $AB, $F0   ; 
- D 0 - I - 0x00166D 00:965D: F5        .byte $F5, $AD, $F0   ; 
- D 0 - I - 0x001670 00:9660: FD        .byte $FD, $AF, $F0   ; 



off_03_9663_55:
off_FF_9663:
- D 0 - I - 0x001673 00:9663: 04        .byte $04   ; counter
- D 0 - I - 0x001674 00:9664: 00        .byte $00   ; spr_A
- D 0 - I - 0x001675 00:9665: EF        .byte $EF, $AB, $F2   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001678 00:9668: F7        .byte $F7, $AD, $F2   ; 
- D 0 - I - 0x00167B 00:966B: FF        .byte $FF, $AF, $F2   ; 
- D 0 - I - 0x00167E 00:966E: FF        .byte $FF, $15, $01   ; 



off_03_9671_56:
- D 0 - I - 0x001681 00:9671: FF        .byte $FF   ; 
- D 0 - I - 0x001682 00:9672: 33 96     .word off_FF_9633



off_03_9674_57:
- D 0 - I - 0x001684 00:9674: FF        .byte $FF   ; 
- D 0 - I - 0x001685 00:9675: 44 96     .word off_FF_9644



off_03_9677_58:
- D 0 - I - 0x001687 00:9677: FF        .byte $FF   ; 
- D 0 - I - 0x001688 00:9678: 52 96     .word off_FF_9652



off_03_967A_59:
- D 0 - I - 0x00168A 00:967A: FF        .byte $FF   ; 
- D 0 - I - 0x00168B 00:967B: 63 96     .word off_FF_9663



off_03_967D_5A:
off_FF_967D:
- D 0 - I - 0x00168D 00:967D: 04        .byte $04   ; counter
- D 0 - I - 0x00168E 00:967E: 00        .byte $00   ; spr_A
- D 0 - I - 0x00168F 00:967F: FA        .byte $FA, $1B, $00   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001692 00:9682: 02        .byte $02, $1D, $00   ; 
- D 0 - I - 0x001695 00:9685: F8        .byte $F8, $B1, $F0   ; 
- D 0 - I - 0x001698 00:9688: 00        .byte $00, $B3, $F0   ; 



off_03_968B_5B:
off_FF_968B:
- D 0 - I - 0x00169B 00:968B: 03        .byte $03   ; counter
- D 0 - I - 0x00169C 00:968C: 00        .byte $00   ; spr_A
- D 0 - I - 0x00169D 00:968D: FE        .byte $FE, $1F, $01   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x0016A0 00:9690: F8        .byte $F8, $B1, $F2   ; 
- D 0 - I - 0x0016A3 00:9693: 00        .byte $00, $B3, $F2   ; 



off_03_9696_5C:
off_FF_9696:
- D 0 - I - 0x0016A6 00:9696: 03        .byte $03   ; counter
- D 0 - I - 0x0016A7 00:9697: 00        .byte $00   ; spr_A
- D 0 - I - 0x0016A8 00:9698: FF        .byte $FF, $21, $00   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x0016AB 00:969B: FA        .byte $FA, $B1, $F0   ; 
- D 0 - I - 0x0016AE 00:969E: 02        .byte $02, $B3, $F0   ; 



off_03_96A1_5D:
off_FF_96A1:
- D 0 - I - 0x0016B1 00:96A1: 03        .byte $03   ; counter
- D 0 - I - 0x0016B2 00:96A2: 00        .byte $00   ; spr_A
- D 0 - I - 0x0016B3 00:96A3: FF        .byte $FF, $1F, $01   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x0016B6 00:96A6: FA        .byte $FA, $B1, $F2   ; 
- D 0 - I - 0x0016B9 00:96A9: 02        .byte $02, $B3, $F2   ; 



off_03_96AC_5E:
- D 0 - I - 0x0016BC 00:96AC: FF        .byte $FF   ; 
- D 0 - I - 0x0016BD 00:96AD: 7D 96     .word off_FF_967D



off_03_96AF_5F:
- D 0 - I - 0x0016BF 00:96AF: FF        .byte $FF   ; 
- D 0 - I - 0x0016C0 00:96B0: 8B 96     .word off_FF_968B



off_03_96B2_60:
- D 0 - I - 0x0016C2 00:96B2: FF        .byte $FF   ; 
- D 0 - I - 0x0016C3 00:96B3: 96 96     .word off_FF_9696



off_03_96B5_61:
- D 0 - I - 0x0016C5 00:96B5: FF        .byte $FF   ; 
- D 0 - I - 0x0016C6 00:96B6: A1 96     .word off_FF_96A1



off_03_96B8_62:
- D 0 - I - 0x0016C8 00:96B8: 04        .byte $04   ; counter
- D 0 - I - 0x0016C9 00:96B9: 00        .byte $00   ; spr_A
- D 0 - I - 0x0016CA 00:96BA: F9        .byte $F9, $B5, $F0   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x0016CD 00:96BD: 01        .byte $01, $B7, $F0   ; 
- D 0 - I - 0x0016D0 00:96C0: FA        .byte $FA, $23, $00   ; 
- D 0 - I - 0x0016D3 00:96C3: 02        .byte $02, $25, $00   ; 



off_03_96C6_63:
- D 0 - I - 0x0016D6 00:96C6: 81        .byte $81   ; counter
- D 0 - I - 0x0016D7 00:96C7: 00        .byte $00   ; spr_A
- D 0 - I - 0x0016D8 00:96C8: FA        .byte $FA, $27, $00   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x0016DB 00:96CB: 81        .byte $81   ; 
- D 0 - I - 0x0016DC 00:96CC: 40        .byte $40   ; 
- D 0 - I - 0x0016DD 00:96CD: 02        .byte $02, $23, $00   ; 

- D 0 - I - 0x0016E0 00:96D0: 02        .byte $02   ; 
- D 0 - I - 0x0016E1 00:96D1: 00        .byte $00   ; 
- D 0 - I - 0x0016E2 00:96D2: FA        .byte $FA, $B5, $F2   ; 
- D 0 - I - 0x0016E5 00:96D5: 02        .byte $02, $B7, $F2   ; 



off_03_96D8_64:
- D 0 - I - 0x0016E8 00:96D8: 82        .byte $82   ; counter
- D 0 - I - 0x0016E9 00:96D9: 40        .byte $40   ; spr_A
- D 0 - I - 0x0016EA 00:96DA: 02        .byte $02, $23, $00   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x0016ED 00:96DD: FA        .byte $FA, $25, $00   ; 

- D 0 - I - 0x0016F0 00:96E0: 02        .byte $02   ; 
- D 0 - I - 0x0016F1 00:96E1: 00        .byte $00   ; 
- D 0 - I - 0x0016F2 00:96E2: FB        .byte $FB, $B5, $F0   ; 
- D 0 - I - 0x0016F5 00:96E5: 03        .byte $03, $B7, $F0   ; 



off_03_96E8_65:
- D 0 - I - 0x0016F8 00:96E8: 83        .byte $83   ; counter
- D 0 - I - 0x0016F9 00:96E9: 00        .byte $00   ; spr_A
- D 0 - I - 0x0016FA 00:96EA: FA        .byte $FA, $B5, $F2   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x0016FD 00:96ED: 02        .byte $02, $B7, $F2   ; 
- D 0 - I - 0x001700 00:96F0: FA        .byte $FA, $23, $00   ; 

- D 0 - I - 0x001703 00:96F3: 01        .byte $01   ; 
- D 0 - I - 0x001704 00:96F4: 40        .byte $40   ; 
- D 0 - I - 0x001705 00:96F5: 02        .byte $02, $27, $00   ; 



off_03_96F8_66:
- D 0 - I - 0x001708 00:96F8: 04        .byte $04   ; counter
- D 0 - I - 0x001709 00:96F9: 00        .byte $00   ; spr_A
- D 0 - I - 0x00170A 00:96FA: FA        .byte $FA, $29, $00   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x00170D 00:96FD: 02        .byte $02, $2B, $00   ; 
- D 0 - I - 0x001710 00:9700: FA        .byte $FA, $A3, $F0   ; 
- D 0 - I - 0x001713 00:9703: 02        .byte $02, $A5, $F0   ; 



off_03_9706_67:
- D 0 - I - 0x001716 00:9706: 04        .byte $04   ; counter
- D 0 - I - 0x001717 00:9707: 00        .byte $00   ; spr_A
- D 0 - I - 0x001718 00:9708: FA        .byte $FA, $A3, $F2   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x00171B 00:970B: 02        .byte $02, $A5, $F2   ; 
- D 0 - I - 0x00171E 00:970E: FA        .byte $FA, $29, $00   ; 
- D 0 - I - 0x001721 00:9711: 02        .byte $02, $2B, $00   ; 



off_03_9714_68:
off_FF_9714:
- D 0 - I - 0x001724 00:9714: 82        .byte $82   ; counter
- D 0 - I - 0x001725 00:9715: 40        .byte $40   ; spr_A
- D 0 - I - 0x001726 00:9716: 02        .byte $02, $29, $00   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001729 00:9719: FA        .byte $FA, $2B, $00   ; 

- D 0 - I - 0x00172C 00:971C: 02        .byte $02   ; 
- D 0 - I - 0x00172D 00:971D: 00        .byte $00   ; 
- D 0 - I - 0x00172E 00:971E: F8        .byte $F8, $A7, $F0   ; 
- D 0 - I - 0x001731 00:9721: 00        .byte $00, $A9, $F0   ; 



off_03_9724_69:
off_FF_9724:
- D 0 - I - 0x001734 00:9724: 81        .byte $81   ; counter
- D 0 - I - 0x001735 00:9725: 40        .byte $40   ; spr_A
- D 0 - I - 0x001736 00:9726: FA        .byte $FA, $2B, $00   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x001739 00:9729: 82        .byte $82   ; 
- D 0 - I - 0x00173A 00:972A: 00        .byte $00   ; 
- D 0 - I - 0x00173B 00:972B: F9        .byte $F9, $A7, $F2   ; 
- D 0 - I - 0x00173E 00:972E: 01        .byte $01, $A9, $F2   ; 

- D 0 - I - 0x001741 00:9731: 01        .byte $01   ; 
- D 0 - I - 0x001742 00:9732: 40        .byte $40   ; 
- D 0 - I - 0x001743 00:9733: 02        .byte $02, $29, $00   ; 



off_03_9736_6A:
- D 0 - I - 0x001746 00:9736: FF        .byte $FF   ; 
- D 0 - I - 0x001747 00:9737: 14 97     .word off_FF_9714



off_03_9739_6B:
- D 0 - I - 0x001749 00:9739: FF        .byte $FF   ; 
- D 0 - I - 0x00174A 00:973A: 24 97     .word off_FF_9724



off_03_973C_6C:
off_FF_973C:
- D 0 - I - 0x00174C 00:973C: 82        .byte $82   ; counter
- D 0 - I - 0x00174D 00:973D: 40        .byte $40   ; spr_A
- D 0 - I - 0x00174E 00:973E: 02        .byte $02, $29, $00   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001751 00:9741: FA        .byte $FA, $2B, $00   ; 

- D 0 - I - 0x001754 00:9744: 03        .byte $03   ; 
- D 0 - I - 0x001755 00:9745: 00        .byte $00   ; 
- D 0 - I - 0x001756 00:9746: F0        .byte $F0, $AB, $F1   ; 
- D 0 - I - 0x001759 00:9749: F8        .byte $F8, $AD, $F1   ; 
- D 0 - I - 0x00175C 00:974C: 00        .byte $00, $AF, $F1   ; 



off_03_974F_6D:
off_FF_974F:
- D 0 - I - 0x00175F 00:974F: 82        .byte $82   ; counter
- D 0 - I - 0x001760 00:9750: 40        .byte $40   ; spr_A
- D 0 - I - 0x001761 00:9751: 02        .byte $02, $29, $00   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001764 00:9754: FA        .byte $FA, $2B, $00   ; 

- D 0 - I - 0x001767 00:9757: 03        .byte $03   ; 
- D 0 - I - 0x001768 00:9758: 00        .byte $00   ; 
- D 0 - I - 0x001769 00:9759: F2        .byte $F2, $AB, $F1   ; 
- D 0 - I - 0x00176C 00:975C: FA        .byte $FA, $AD, $F2   ; 
- D 0 - I - 0x00176F 00:975F: 02        .byte $02, $AF, $F2   ; 



off_03_9762_6E:
- D 0 - I - 0x001772 00:9762: FF        .byte $FF   ; 
- D 0 - I - 0x001773 00:9763: 3C 97     .word off_FF_973C



off_03_9765_6F:
- D 0 - I - 0x001775 00:9765: FF        .byte $FF   ; 
- D 0 - I - 0x001776 00:9766: 4F 97     .word off_FF_974F



off_03_9768_70:
off_FF_9768:
- D 0 - I - 0x001778 00:9768: 04        .byte $04   ; counter
- D 0 - I - 0x001779 00:9769: 00        .byte $00   ; spr_A
- D 0 - I - 0x00177A 00:976A: FA        .byte $FA, $2D, $00   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x00177D 00:976D: 02        .byte $02, $2F, $00   ; 
- D 0 - I - 0x001780 00:9770: FA        .byte $FA, $B1, $F0   ; 
- D 0 - I - 0x001783 00:9773: 02        .byte $02, $B3, $F0   ; 



off_03_9776_71:
off_FF_9776:
- D 0 - I - 0x001786 00:9776: 04        .byte $04   ; counter
- D 0 - I - 0x001787 00:9777: 00        .byte $00   ; spr_A
- D 0 - I - 0x001788 00:9778: FA        .byte $FA, $2D, $00   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x00178B 00:977B: 02        .byte $02, $2F, $00   ; 
- D 0 - I - 0x00178E 00:977E: F8        .byte $F8, $B1, $F2   ; 
- D 0 - I - 0x001791 00:9781: 00        .byte $00, $B3, $F2   ; 



off_03_9784_72:
- D 0 - I - 0x001794 00:9784: FF        .byte $FF   ; 
- D 0 - I - 0x001795 00:9785: 68 97     .word off_FF_9768



off_03_9787_73:
- D 0 - I - 0x001797 00:9787: FF        .byte $FF   ; 
- D 0 - I - 0x001798 00:9788: 76 97     .word off_FF_9776



off_03_978A_74:
- D 0 - I - 0x00179A 00:978A: 04        .byte $04   ; counter
- D 0 - I - 0x00179B 00:978B: 00        .byte $00   ; spr_A
- D 0 - I - 0x00179C 00:978C: FA        .byte $FA, $2D, $00   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x00179F 00:978F: 02        .byte $02, $2F, $00   ; 
- D 0 - I - 0x0017A2 00:9792: F9        .byte $F9, $B5, $F0   ; 
- D 0 - I - 0x0017A5 00:9795: 01        .byte $01, $B7, $F0   ; 



off_03_9798_75:
- D 0 - I - 0x0017A8 00:9798: 04        .byte $04   ; counter
- D 0 - I - 0x0017A9 00:9799: 00        .byte $00   ; spr_A
- D 0 - I - 0x0017AA 00:979A: FA        .byte $FA, $2D, $00   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x0017AD 00:979D: 02        .byte $02, $2F, $00   ; 
- D 0 - I - 0x0017B0 00:97A0: F8        .byte $F8, $B5, $F2   ; 
- D 0 - I - 0x0017B3 00:97A3: 00        .byte $00, $B7, $F2   ; 



off_03_97A6_76:
- D 0 - I - 0x0017B6 00:97A6: 83        .byte $83   ; counter
- D 0 - I - 0x0017B7 00:97A7: 00        .byte $00   ; spr_A
- D 0 - I - 0x0017B8 00:97A8: FA        .byte $FA, $BD, $F0   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x0017BB 00:97AB: 02        .byte $02, $BF, $F0   ; 
- D 0 - I - 0x0017BE 00:97AE: FA        .byte $FA, $31, $00   ; 

- D 0 - I - 0x0017C1 00:97B1: 01        .byte $01   ; 
- D 0 - I - 0x0017C2 00:97B2: 40        .byte $40   ; 
- D 0 - I - 0x0017C3 00:97B3: 02        .byte $02, $31, $00   ; 



off_03_97B6_77:
- D 0 - I - 0x0017C6 00:97B6: 83        .byte $83   ; counter
- D 0 - I - 0x0017C7 00:97B7: 80        .byte $80   ; spr_A
- D 0 - I - 0x0017C8 00:97B8: FA        .byte $FA, $BD, $00   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x0017CB 00:97BB: 02        .byte $02, $BF, $00   ; 
- D 0 - I - 0x0017CE 00:97BE: FA        .byte $FA, $31, $F0   ; 

- D 0 - I - 0x0017D1 00:97C1: 01        .byte $01   ; 
- D 0 - I - 0x0017D2 00:97C2: C0        .byte $C0   ; 
- D 0 - I - 0x0017D3 00:97C3: 02        .byte $02, $31, $F0   ; 



off_03_97C6_78:
- D 0 - I - 0x0017D6 00:97C6: 04        .byte $04   ; counter
- D 0 - I - 0x0017D7 00:97C7: 00        .byte $00   ; spr_A
- D 0 - I - 0x0017D8 00:97C8: FA        .byte $FA, $B9, $F0   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x0017DB 00:97CB: 02        .byte $02, $BB, $F0   ; 
- D 0 - I - 0x0017DE 00:97CE: FA        .byte $FA, $33, $00   ; 
- D 0 - I - 0x0017E1 00:97D1: 02        .byte $02, $35, $00   ; 



off_03_97D4_79:
- D 0 - I - 0x0017E4 00:97D4: 04        .byte $04   ; counter
- D 0 - I - 0x0017E5 00:97D5: 80        .byte $80   ; spr_A
- D 0 - I - 0x0017E6 00:97D6: FA        .byte $FA, $B9, $00   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x0017E9 00:97D9: 02        .byte $02, $BB, $00   ; 
- D 0 - I - 0x0017EC 00:97DC: FA        .byte $FA, $33, $F0   ; 
- D 0 - I - 0x0017EF 00:97DF: 02        .byte $02, $35, $F0   ; 



off_03_97E2_7A:
- D 0 - I - 0x0017F2 00:97E2: 82        .byte $82   ; counter
- D 0 - I - 0x0017F3 00:97E3: 02        .byte $02   ; spr_A
- D 0 - I - 0x0017F4 00:97E4: FA        .byte $FA, $8F, $F0   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x0017F7 00:97E7: 02        .byte $02, $91, $F0   ; 

- D 0 - I - 0x0017FA 00:97EA: 02        .byte $02   ; 
- D 0 - I - 0x0017FB 00:97EB: 00        .byte $00   ; 
- D 0 - I - 0x0017FC 00:97EC: FA        .byte $FA, $01, $00   ; 
- D 0 - I - 0x0017FF 00:97EF: 02        .byte $02, $03, $00   ; 



off_03_97F2_7B:
- D 0 - I - 0x001802 00:97F2: 82        .byte $82   ; counter
- D 0 - I - 0x001803 00:97F3: 02        .byte $02   ; spr_A
- D 0 - I - 0x001804 00:97F4: FA        .byte $FA, $8F, $F2   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001807 00:97F7: 02        .byte $02, $91, $F2   ; 

- D 0 - I - 0x00180A 00:97FA: 01        .byte $01   ; 
- D 0 - I - 0x00180B 00:97FB: 00        .byte $00   ; 
- D 0 - I - 0x00180C 00:97FC: FD        .byte $FD, $05, $01   ; 



off_03_97FF_7C:
- D 0 - I - 0x00180F 00:97FF: 82        .byte $82   ; counter
- D 0 - I - 0x001810 00:9800: 40        .byte $40   ; spr_A
- D 0 - I - 0x001811 00:9801: 02        .byte $02, $01, $00   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001814 00:9804: FA        .byte $FA, $03, $00   ; 

- D 0 - I - 0x001817 00:9807: 02        .byte $02   ; 
- D 0 - I - 0x001818 00:9808: 02        .byte $02   ; 
- D 0 - I - 0x001819 00:9809: FC        .byte $FC, $8F, $F0   ; 
- D 0 - I - 0x00181C 00:980C: 04        .byte $04, $91, $F0   ; 



off_03_980F_7D:
- D 0 - I - 0x00181F 00:980F: 82        .byte $82   ; counter
- D 0 - I - 0x001820 00:9810: 02        .byte $02   ; spr_A
- D 0 - I - 0x001821 00:9811: FC        .byte $FC, $8F, $F2   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001824 00:9814: 04        .byte $04, $91, $F2   ; 

- D 0 - I - 0x001827 00:9817: 01        .byte $01   ; 
- D 0 - I - 0x001828 00:9818: 40        .byte $40   ; 
- D 0 - I - 0x001829 00:9819: FF        .byte $FF, $05, $01   ; 



off_03_981C_7E:
off_FF_981C:
- D 0 - I - 0x00182C 00:981C: 82        .byte $82   ; counter
- D 0 - I - 0x00182D 00:981D: 00        .byte $00   ; spr_A
- D 0 - I - 0x00182E 00:981E: FA        .byte $FA, $07, $00   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001831 00:9821: 02        .byte $02, $09, $00   ; 

- D 0 - I - 0x001834 00:9824: 02        .byte $02   ; 
- D 0 - I - 0x001835 00:9825: 02        .byte $02   ; 
- D 0 - I - 0x001836 00:9826: FA        .byte $FA, $93, $F0   ; 
- D 0 - I - 0x001839 00:9829: 02        .byte $02, $95, $F0   ; 



off_03_982C_7F:
off_FF_982C:
- D 0 - I - 0x00183C 00:982C: 81        .byte $81   ; counter
- D 0 - I - 0x00183D 00:982D: 00        .byte $00   ; spr_A
- D 0 - I - 0x00183E 00:982E: FC        .byte $FC, $0B, $02   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x001841 00:9831: 02        .byte $02   ; 
- D 0 - I - 0x001842 00:9832: 02        .byte $02   ; 
- D 0 - I - 0x001843 00:9833: F8        .byte $F8, $93, $F2   ; 
- D 0 - I - 0x001846 00:9836: 00        .byte $00, $95, $F2   ; 



off_03_9839_80:
off_FF_9839:
- D 0 - I - 0x001849 00:9839: 82        .byte $82   ; counter
- D 0 - I - 0x00184A 00:983A: 02        .byte $02   ; spr_A
- D 0 - I - 0x00184B 00:983B: F5        .byte $F5, $93, $F0   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x00184E 00:983E: FD        .byte $FD, $95, $F0   ; 

- D 0 - I - 0x001851 00:9841: 02        .byte $02   ; 
- D 0 - I - 0x001852 00:9842: 00        .byte $00   ; 
- D 0 - I - 0x001853 00:9843: F8        .byte $F8, $0D, $00   ; 
- D 0 - I - 0x001856 00:9846: 00        .byte $00, $0F, $00   ; 



off_03_9849_81:
- D 0 - I - 0x001859 00:9849: FF        .byte $FF   ; 
- D 0 - I - 0x00185A 00:984A: 1C 98     .word off_FF_981C



off_03_984C_82:
- D 0 - I - 0x00185C 00:984C: FF        .byte $FF   ; 
- D 0 - I - 0x00185D 00:984D: 2C 98     .word off_FF_982C



off_03_984F_83:
- D 0 - I - 0x00185F 00:984F: FF        .byte $FF   ; 
- D 0 - I - 0x001860 00:9850: 39 98     .word off_FF_9839



off_03_9852_84:
off_FF_9852:
- D 0 - I - 0x001862 00:9852: 83        .byte $83   ; counter
- D 0 - I - 0x001863 00:9853: 02        .byte $02   ; spr_A
- D 0 - I - 0x001864 00:9854: F5        .byte $F5, $97, $F0   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001867 00:9857: FD        .byte $FD, $99, $F0   ; 
- D 0 - I - 0x00186A 00:985A: ED        .byte $ED, $AF, $F0   ; 

- D 0 - I - 0x00186D 00:985D: 02        .byte $02   ; 
- D 0 - I - 0x00186E 00:985E: 00        .byte $00   ; 
- D 0 - I - 0x00186F 00:985F: F6        .byte $F6, $11, $00   ; 
- D 0 - I - 0x001872 00:9862: FE        .byte $FE, $13, $00   ; 



off_03_9865_85:
off_FF_9865:
- D 0 - I - 0x001875 00:9865: 81        .byte $81   ; counter
- D 0 - I - 0x001876 00:9866: 00        .byte $00   ; spr_A
- D 0 - I - 0x001877 00:9867: FC        .byte $FC, $15, $02   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x00187A 00:986A: 03        .byte $03   ; 
- D 0 - I - 0x00187B 00:986B: 02        .byte $02   ; 
- D 0 - I - 0x00187C 00:986C: F4        .byte $F4, $97, $F2   ; 
- D 0 - I - 0x00187F 00:986F: FC        .byte $FC, $99, $F2   ; 
- D 0 - I - 0x001882 00:9872: EC        .byte $EC, $AF, $F2   ; 



off_03_9875_86:
off_FF_9875:
- D 0 - I - 0x001885 00:9875: 82        .byte $82   ; counter
- D 0 - I - 0x001886 00:9876: 00        .byte $00   ; spr_A
- D 0 - I - 0x001887 00:9877: F6        .byte $F6, $17, $00   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x00188A 00:987A: FE        .byte $FE, $19, $00   ; 

- D 0 - I - 0x00188D 00:987D: 03        .byte $03   ; 
- D 0 - I - 0x00188E 00:987E: 02        .byte $02   ; 
- D 0 - I - 0x00188F 00:987F: F3        .byte $F3, $97, $F0   ; 
- D 0 - I - 0x001892 00:9882: FB        .byte $FB, $99, $F0   ; 
- D 0 - I - 0x001895 00:9885: EB        .byte $EB, $AF, $F0   ; 



off_03_9888_87:
- D 0 - I - 0x001898 00:9888: FF        .byte $FF   ; 
- D 0 - I - 0x001899 00:9889: 52 98     .word off_FF_9852



off_03_988B_88:
- D 0 - I - 0x00189B 00:988B: FF        .byte $FF   ; 
- D 0 - I - 0x00189C 00:988C: 65 98     .word off_FF_9865



off_03_988E_89:
- D 0 - I - 0x00189E 00:988E: FF        .byte $FF   ; 
- D 0 - I - 0x00189F 00:988F: 75 98     .word off_FF_9875



off_03_9891_8A:
off_FF_9891:
- - - - - - 0x0018A1 00:9891: 82        .byte $82   ; counter
- - - - - - 0x0018A2 00:9892: 00        .byte $00   ; spr_A
- - - - - - 0x0018A3 00:9893: F9        .byte $F9, $1B, $FF   ; spr_X, spr_T, spr_Y
- - - - - - 0x0018A6 00:9896: 01        .byte $01, $1D, $FF   ; 

- - - - - - 0x0018A9 00:9899: 02        .byte $02   ; 
- - - - - - 0x0018AA 00:989A: 02        .byte $02   ; 
- - - - - - 0x0018AB 00:989B: F8        .byte $F8, $9B, $EF   ; 
- - - - - - 0x0018AE 00:989E: 00        .byte $00, $9D, $EF   ; 



off_03_98A1_8B:
off_FF_98A1:
- - - - - - 0x0018B1 00:98A1: 81        .byte $81   ; counter
- - - - - - 0x0018B2 00:98A2: 00        .byte $00   ; spr_A
- - - - - - 0x0018B3 00:98A3: FD        .byte $FD, $1F, $00   ; spr_X, spr_T, spr_Y

- - - - - - 0x0018B6 00:98A6: 02        .byte $02   ; 
- - - - - - 0x0018B7 00:98A7: 02        .byte $02   ; 
- - - - - - 0x0018B8 00:98A8: F8        .byte $F8, $9B, $F1   ; 
- - - - - - 0x0018BB 00:98AB: 00        .byte $00, $9D, $F1   ; 



off_03_98AE_8C:
off_FF_98AE:
- - - - - - 0x0018BE 00:98AE: 81        .byte $81   ; counter
- - - - - - 0x0018BF 00:98AF: 00        .byte $00   ; spr_A
- - - - - - 0x0018C0 00:98B0: FE        .byte $FE, $21, $FF   ; spr_X, spr_T, spr_Y

- - - - - - 0x0018C3 00:98B3: 02        .byte $02   ; 
- - - - - - 0x0018C4 00:98B4: 02        .byte $02   ; 
- - - - - - 0x0018C5 00:98B5: FA        .byte $FA, $9B, $EF   ; 
- - - - - - 0x0018C8 00:98B8: 02        .byte $02, $9D, $EF   ; 



off_03_98BB_8D:
off_FF_98BB:
- - - - - - 0x0018CB 00:98BB: 81        .byte $81   ; counter
- - - - - - 0x0018CC 00:98BC: 00        .byte $00   ; spr_A
- - - - - - 0x0018CD 00:98BD: FF        .byte $FF, $1F, $00   ; spr_X, spr_T, spr_Y

- - - - - - 0x0018D0 00:98C0: 02        .byte $02   ; 
- - - - - - 0x0018D1 00:98C1: 02        .byte $02   ; 
- - - - - - 0x0018D2 00:98C2: FA        .byte $FA, $9B, $F1   ; 
- - - - - - 0x0018D5 00:98C5: 02        .byte $02, $9D, $F1   ; 



off_03_98C8_8E:
- - - - - - 0x0018D8 00:98C8: FF        .byte $FF   ; 
- - - - - - 0x0018D9 00:98C9: 91 98     .word off_FF_9891



off_03_98CB_8F:
- - - - - - 0x0018DB 00:98CB: FF        .byte $FF   ; 
- - - - - - 0x0018DC 00:98CC: A1 98     .word off_FF_98A1



off_03_98CE_90:
- - - - - - 0x0018DE 00:98CE: FF        .byte $FF   ; 
- - - - - - 0x0018DF 00:98CF: AE 98     .word off_FF_98AE



off_03_98D1_91:
- - - - - - 0x0018E1 00:98D1: FF        .byte $FF   ; 
- - - - - - 0x0018E2 00:98D2: BB 98     .word off_FF_98BB



off_03_98D4_92:
- D 0 - I - 0x0018E4 00:98D4: 82        .byte $82   ; counter
- D 0 - I - 0x0018E5 00:98D5: 00        .byte $00   ; spr_A
- D 0 - I - 0x0018E6 00:98D6: F9        .byte $F9, $23, $FF   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x0018E9 00:98D9: 01        .byte $01, $25, $FF   ; 

- D 0 - I - 0x0018EC 00:98DC: 02        .byte $02   ; 
- D 0 - I - 0x0018ED 00:98DD: 02        .byte $02   ; 
- D 0 - I - 0x0018EE 00:98DE: F8        .byte $F8, $9F, $EF   ; 
- D 0 - I - 0x0018F1 00:98E1: 00        .byte $00, $A1, $EF   ; 



off_03_98E4_93:
- D 0 - I - 0x0018F4 00:98E4: 81        .byte $81   ; counter
- D 0 - I - 0x0018F5 00:98E5: 00        .byte $00   ; spr_A
- D 0 - I - 0x0018F6 00:98E6: F9        .byte $F9, $27, $FF   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x0018F9 00:98E9: 81        .byte $81   ; 
- D 0 - I - 0x0018FA 00:98EA: 40        .byte $40   ; 
- D 0 - I - 0x0018FB 00:98EB: 01        .byte $01, $23, $FF   ; 

- D 0 - I - 0x0018FE 00:98EE: 02        .byte $02   ; 
- D 0 - I - 0x0018FF 00:98EF: 02        .byte $02   ; 
- D 0 - I - 0x001900 00:98F0: F9        .byte $F9, $9F, $F1   ; 
- D 0 - I - 0x001903 00:98F3: 01        .byte $01, $A1, $F1   ; 



off_03_98F6_94:
- D 0 - I - 0x001906 00:98F6: 82        .byte $82   ; counter
- D 0 - I - 0x001907 00:98F7: 02        .byte $02   ; spr_A
- D 0 - I - 0x001908 00:98F8: FA        .byte $FA, $9F, $EF   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x00190B 00:98FB: 02        .byte $02, $A1, $EF   ; 

- D 0 - I - 0x00190E 00:98FE: 02        .byte $02   ; 
- D 0 - I - 0x00190F 00:98FF: 40        .byte $40   ; 
- D 0 - I - 0x001910 00:9900: 01        .byte $01, $23, $FF   ; 
- D 0 - I - 0x001913 00:9903: F9        .byte $F9, $25, $FF   ; 



off_03_9906_95:
- - - - - - 0x001916 00:9906: 81        .byte $81   ; counter
- - - - - - 0x001917 00:9907: 40        .byte $40   ; spr_A
- - - - - - 0x001918 00:9908: 01        .byte $01, $27, $FF   ; spr_X, spr_T, spr_Y

- - - - - - 0x00191B 00:990B: 81        .byte $81   ; 
- - - - - - 0x00191C 00:990C: 00        .byte $00   ; 
- - - - - - 0x00191D 00:990D: F9        .byte $F9, $23, $FF   ; 

- - - - - - 0x001920 00:9910: 02        .byte $02   ; 
- - - - - - 0x001921 00:9911: 02        .byte $02   ; 
- - - - - - 0x001922 00:9912: FA        .byte $FA, $9F, $F1   ; 
- - - - - - 0x001925 00:9915: 02        .byte $02, $A1, $F1   ; 



off_03_9918_96:
- D 0 - I - 0x001928 00:9918: 82        .byte $82   ; counter
- D 0 - I - 0x001929 00:9919: 00        .byte $00   ; spr_A
- D 0 - I - 0x00192A 00:991A: FB        .byte $FB, $29, $FF   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x00192D 00:991D: 03        .byte $03, $2B, $FF   ; 

- D 0 - I - 0x001930 00:9920: 02        .byte $02   ; 
- D 0 - I - 0x001931 00:9921: 02        .byte $02   ; 
- D 0 - I - 0x001932 00:9922: FB        .byte $FB, $8F, $EF   ; 
- D 0 - I - 0x001935 00:9925: 03        .byte $03, $91, $EF   ; 



off_03_9928_97:
- D 0 - I - 0x001938 00:9928: 82        .byte $82   ; counter
- D 0 - I - 0x001939 00:9929: 00        .byte $00   ; spr_A
- D 0 - I - 0x00193A 00:992A: FB        .byte $FB, $29, $FF   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x00193D 00:992D: 03        .byte $03, $2B, $FF   ; 

- D 0 - I - 0x001940 00:9930: 02        .byte $02   ; 
- D 0 - I - 0x001941 00:9931: 02        .byte $02   ; 
- D 0 - I - 0x001942 00:9932: FA        .byte $FA, $8F, $F1   ; 
- D 0 - I - 0x001945 00:9935: 02        .byte $02, $91, $F1   ; 



off_03_9938_98:
off_FF_9938:
- D 0 - I - 0x001948 00:9938: 82        .byte $82   ; counter
- D 0 - I - 0x001949 00:9939: 40        .byte $40   ; spr_A
- D 0 - I - 0x00194A 00:993A: FE        .byte $FE, $29, $FF   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x00194D 00:993D: F6        .byte $F6, $2B, $FF   ; 

- D 0 - I - 0x001950 00:9940: 02        .byte $02   ; 
- D 0 - I - 0x001951 00:9941: 02        .byte $02   ; 
- D 0 - I - 0x001952 00:9942: F6        .byte $F6, $93, $EF   ; 
- D 0 - I - 0x001955 00:9945: FE        .byte $FE, $95, $EF   ; 



off_03_9948_99:
off_FF_9948:
- D 0 - I - 0x001958 00:9948: 82        .byte $82   ; counter
- D 0 - I - 0x001959 00:9949: 40        .byte $40   ; spr_A
- D 0 - I - 0x00195A 00:994A: FE        .byte $FE, $29, $FF   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x00195D 00:994D: F6        .byte $F6, $2B, $FF   ; 

- D 0 - I - 0x001960 00:9950: 02        .byte $02   ; 
- D 0 - I - 0x001961 00:9951: 02        .byte $02   ; 
- D 0 - I - 0x001962 00:9952: F8        .byte $F8, $93, $F0   ; 
- D 0 - I - 0x001965 00:9955: 00        .byte $00, $95, $F0   ; 



off_03_9958_9A:
- D 0 - I - 0x001968 00:9958: FF        .byte $FF   ; 
- D 0 - I - 0x001969 00:9959: 38 99     .word off_FF_9938



off_03_995B_9B:
- - - - - - 0x00196B 00:995B: FF        .byte $FF   ; 
- - - - - - 0x00196C 00:995C: 48 99     .word off_FF_9948



off_03_995E_9C:
off_FF_995E:
- D 0 - I - 0x00196E 00:995E: 82        .byte $82   ; counter
- D 0 - I - 0x00196F 00:995F: 40        .byte $40   ; spr_A
- D 0 - I - 0x001970 00:9960: FE        .byte $FE, $29, $FF   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001973 00:9963: F6        .byte $F6, $2B, $FF   ; 

- D 0 - I - 0x001976 00:9966: 03        .byte $03   ; 
- D 0 - I - 0x001977 00:9967: 02        .byte $02   ; 
- D 0 - I - 0x001978 00:9968: F5        .byte $F5, $97, $EF   ; 
- D 0 - I - 0x00197B 00:996B: FD        .byte $FD, $99, $EF   ; 
- D 0 - I - 0x00197E 00:996E: ED        .byte $ED, $AF, $EF   ; 



off_03_9971_9D:
off_FF_9971:
- D 0 - I - 0x001981 00:9971: 82        .byte $82   ; counter
- D 0 - I - 0x001982 00:9972: 40        .byte $40   ; spr_A
- D 0 - I - 0x001983 00:9973: FE        .byte $FE, $29, $FF   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001986 00:9976: F6        .byte $F6, $2B, $FF   ; 

- D 0 - I - 0x001989 00:9979: 03        .byte $03   ; 
- D 0 - I - 0x00198A 00:997A: 02        .byte $02   ; 
- D 0 - I - 0x00198B 00:997B: F7        .byte $F7, $97, $F0   ; 
- D 0 - I - 0x00198E 00:997E: FF        .byte $FF, $99, $F0   ; 
- D 0 - I - 0x001991 00:9981: EF        .byte $EF, $AF, $F0   ; 



off_03_9984_9E:
- D 0 - I - 0x001994 00:9984: FF        .byte $FF   ; 
- D 0 - I - 0x001995 00:9985: 5E 99     .word off_FF_995E



off_03_9987_9F:
- D 0 - I - 0x001997 00:9987: FF        .byte $FF   ; 
- D 0 - I - 0x001998 00:9988: 71 99     .word off_FF_9971



off_03_998A_A0:
off_FF_998A:
- D 0 - I - 0x00199A 00:998A: 82        .byte $82   ; counter
- D 0 - I - 0x00199B 00:998B: 40        .byte $40   ; spr_A
- D 0 - I - 0x00199C 00:998C: FE        .byte $FE, $29, $FF   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x00199F 00:998F: F6        .byte $F6, $2B, $FF   ; 

- D 0 - I - 0x0019A2 00:9992: 02        .byte $02   ; 
- D 0 - I - 0x0019A3 00:9993: 02        .byte $02   ; 
- D 0 - I - 0x0019A4 00:9994: F6        .byte $F6, $9B, $EF   ; 
- D 0 - I - 0x0019A7 00:9997: FE        .byte $FE, $9D, $EF   ; 



off_03_999A_A1:
off_FF_999A:
- D 0 - I - 0x0019AA 00:999A: 82        .byte $82   ; counter
- D 0 - I - 0x0019AB 00:999B: 40        .byte $40   ; spr_A
- D 0 - I - 0x0019AC 00:999C: FE        .byte $FE, $29, $FF   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x0019AF 00:999F: F6        .byte $F6, $2B, $FF   ; 

- D 0 - I - 0x0019B2 00:99A2: 02        .byte $02   ; 
- D 0 - I - 0x0019B3 00:99A3: 02        .byte $02   ; 
- D 0 - I - 0x0019B4 00:99A4: F5        .byte $F5, $9B, $F1   ; 
- D 0 - I - 0x0019B7 00:99A7: FD        .byte $FD, $9D, $F1   ; 



off_03_99AA_A2:
- D 0 - I - 0x0019BA 00:99AA: FF        .byte $FF   ; 
- D 0 - I - 0x0019BB 00:99AB: 8A 99     .word off_FF_998A



off_03_99AD_A3:
- D 0 - I - 0x0019BD 00:99AD: FF        .byte $FF   ; 
- D 0 - I - 0x0019BE 00:99AE: 9A 99     .word off_FF_999A



off_03_99B0_A4:
- D 0 - I - 0x0019C0 00:99B0: 82        .byte $82   ; counter
- D 0 - I - 0x0019C1 00:99B1: 00        .byte $00   ; spr_A
- D 0 - I - 0x0019C2 00:99B2: FB        .byte $FB, $29, $FF   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x0019C5 00:99B5: 03        .byte $03, $2B, $FF   ; 

- D 0 - I - 0x0019C8 00:99B8: 02        .byte $02   ; 
- D 0 - I - 0x0019C9 00:99B9: 42        .byte $42   ; 
- D 0 - I - 0x0019CA 00:99BA: 03        .byte $03, $9F, $EF   ; 
- D 0 - I - 0x0019CD 00:99BD: FB        .byte $FB, $A1, $EF   ; 



off_03_99C0_A5:
- D 0 - I - 0x0019D0 00:99C0: 82        .byte $82   ; counter
- D 0 - I - 0x0019D1 00:99C1: 00        .byte $00   ; spr_A
- D 0 - I - 0x0019D2 00:99C2: FB        .byte $FB, $29, $FF   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x0019D5 00:99C5: 03        .byte $03, $2B, $FF   ; 

- D 0 - I - 0x0019D8 00:99C8: 02        .byte $02   ; 
- D 0 - I - 0x0019D9 00:99C9: 42        .byte $42   ; 
- D 0 - I - 0x0019DA 00:99CA: 03        .byte $03, $9F, $F1   ; 
- D 0 - I - 0x0019DD 00:99CD: FB        .byte $FB, $A1, $F1   ; 



off_03_99D0_A6:
- D 0 - I - 0x0019E0 00:99D0: 82        .byte $82   ; counter
- D 0 - I - 0x0019E1 00:99D1: 40        .byte $40   ; spr_A
- D 0 - I - 0x0019E2 00:99D2: FE        .byte $FE, $29, $FF   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x0019E5 00:99D5: F6        .byte $F6, $2B, $FF   ; 

- D 0 - I - 0x0019E8 00:99D8: 02        .byte $02   ; 
- D 0 - I - 0x0019E9 00:99D9: 02        .byte $02   ; 
- D 0 - I - 0x0019EA 00:99DA: F6        .byte $F6, $9B, $EF   ; 
- D 0 - I - 0x0019ED 00:99DD: FE        .byte $FE, $9D, $EF   ; 



off_03_99E0_A7:
- D 0 - I - 0x0019F0 00:99E0: 82        .byte $82   ; counter
- D 0 - I - 0x0019F1 00:99E1: 00        .byte $00   ; spr_A
- D 0 - I - 0x0019F2 00:99E2: FB        .byte $FB, $29, $FF   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x0019F5 00:99E5: 03        .byte $03, $2B, $FF   ; 

- D 0 - I - 0x0019F8 00:99E8: 02        .byte $02   ; 
- D 0 - I - 0x0019F9 00:99E9: 42        .byte $42   ; 
- D 0 - I - 0x0019FA 00:99EA: 03        .byte $03, $9B, $EF   ; 
- D 0 - I - 0x0019FD 00:99ED: FB        .byte $FB, $9D, $EF   ; 



off_03_99F0_A8:
off_FF_99F0:
- D 0 - I - 0x001A00 00:99F0: 82        .byte $82   ; counter
- D 0 - I - 0x001A01 00:99F1: 40        .byte $40   ; spr_A
- D 0 - I - 0x001A02 00:99F2: FE        .byte $FE, $29, $FF   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001A05 00:99F5: F6        .byte $F6, $2B, $FF   ; 

- D 0 - I - 0x001A08 00:99F8: 03        .byte $03   ; 
- D 0 - I - 0x001A09 00:99F9: 02        .byte $02   ; 
- D 0 - I - 0x001A0A 00:99FA: F6        .byte $F6, $A3, $DF   ; 
- D 0 - I - 0x001A0D 00:99FD: F6        .byte $F6, $A5, $EF   ; 
- D 0 - I - 0x001A10 00:9A00: FE        .byte $FE, $A7, $EF   ; 



off_03_9A03_A9:
off_FF_9A03:
- D 0 - I - 0x001A13 00:9A03: 82        .byte $82   ; counter
- D 0 - I - 0x001A14 00:9A04: 40        .byte $40   ; spr_A
- D 0 - I - 0x001A15 00:9A05: FE        .byte $FE, $29, $FF   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001A18 00:9A08: F6        .byte $F6, $2B, $FF   ; 

- D 0 - I - 0x001A1B 00:9A0B: 02        .byte $02   ; 
- D 0 - I - 0x001A1C 00:9A0C: 02        .byte $02   ; 
- D 0 - I - 0x001A1D 00:9A0D: FE        .byte $FE, $A7, $EF   ; 
- D 0 - I - 0x001A20 00:9A10: F6        .byte $F6, $A9, $EF   ; 



off_03_9A13_AA:
- D 0 - I - 0x001A23 00:9A13: FF        .byte $FF   ; 
- D 0 - I - 0x001A24 00:9A14: F0 99     .word off_FF_99F0



off_03_9A16_AB:
- D 0 - I - 0x001A26 00:9A16: FF        .byte $FF   ; 
- D 0 - I - 0x001A27 00:9A17: 03 9A     .word off_FF_9A03



off_03_9A19_AC:
off_FF_9A19:
- D 0 - I - 0x001A29 00:9A19: 81        .byte $81   ; counter
- D 0 - I - 0x001A2A 00:9A1A: 00        .byte $00   ; spr_A
- D 0 - I - 0x001A2B 00:9A1B: FA        .byte $FA, $15, $01   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x001A2E 00:9A1E: 03        .byte $03   ; 
- D 0 - I - 0x001A2F 00:9A1F: 02        .byte $02   ; 
- D 0 - I - 0x001A30 00:9A20: F3        .byte $F3, $97, $F2   ; 
- D 0 - I - 0x001A33 00:9A23: FB        .byte $FB, $99, $F2   ; 
- D 0 - I - 0x001A36 00:9A26: EB        .byte $EB, $AF, $F2   ; 



off_03_9A29_AD:
- D 0 - I - 0x001A39 00:9A29: FF        .byte $FF   ; 
- D 0 - I - 0x001A3A 00:9A2A: 19 9A     .word off_FF_9A19



off_03_9A2C_AE:
- D 0 - I - 0x001A3C 00:9A2C: 82        .byte $82   ; counter
- D 0 - I - 0x001A3D 00:9A2D: 02        .byte $02   ; spr_A
- D 0 - I - 0x001A3E 00:9A2E: F9        .byte $F9, $9B, $F0   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001A41 00:9A31: 01        .byte $01, $9D, $F0   ; 

- D 0 - I - 0x001A44 00:9A34: 81        .byte $81   ; 
- D 0 - I - 0x001A45 00:9A35: 00        .byte $00   ; 
- D 0 - I - 0x001A46 00:9A36: F9        .byte $F9, $31, $00   ; 

- D 0 - I - 0x001A49 00:9A39: 01        .byte $01   ; 
- D 0 - I - 0x001A4A 00:9A3A: 40        .byte $40   ; 
- D 0 - I - 0x001A4B 00:9A3B: 01        .byte $01, $31, $00   ; 



off_03_9A3E_AF:
- D 0 - I - 0x001A4E 00:9A3E: 82        .byte $82   ; counter
- D 0 - I - 0x001A4F 00:9A3F: 02        .byte $02   ; spr_A
- D 0 - I - 0x001A50 00:9A40: F8        .byte $F8, $AB, $EF   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001A53 00:9A43: 00        .byte $00, $AD, $EF   ; 

- D 0 - I - 0x001A56 00:9A46: 02        .byte $02   ; 
- D 0 - I - 0x001A57 00:9A47: 00        .byte $00   ; 
- D 0 - I - 0x001A58 00:9A48: F8        .byte $F8, $33, $FF   ; 
- D 0 - I - 0x001A5B 00:9A4B: 00        .byte $00, $35, $FF   ; 



off_03_9A4E_B0:
- D 0 - I - 0x001A5E 00:9A4E: 82        .byte $82   ; counter
- D 0 - I - 0x001A5F 00:9A4F: 82        .byte $82   ; spr_A
- D 0 - I - 0x001A60 00:9A50: F8        .byte $F8, $9B, $01   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001A63 00:9A53: 00        .byte $00, $9D, $01   ; 

- D 0 - I - 0x001A66 00:9A56: 81        .byte $81   ; 
- D 0 - I - 0x001A67 00:9A57: 80        .byte $80   ; 
- D 0 - I - 0x001A68 00:9A58: F8        .byte $F8, $31, $F1   ; 

- D 0 - I - 0x001A6B 00:9A5B: 01        .byte $01   ; 
- D 0 - I - 0x001A6C 00:9A5C: C0        .byte $C0   ; 
- D 0 - I - 0x001A6D 00:9A5D: 00        .byte $00, $31, $F1   ; 



off_03_9A60_B1:
- D 0 - I - 0x001A70 00:9A60: 82        .byte $82   ; counter
- D 0 - I - 0x001A71 00:9A61: 82        .byte $82   ; spr_A
- D 0 - I - 0x001A72 00:9A62: F8        .byte $F8, $AB, $02   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001A75 00:9A65: 00        .byte $00, $AD, $02   ; 

- D 0 - I - 0x001A78 00:9A68: 02        .byte $02   ; 
- D 0 - I - 0x001A79 00:9A69: 80        .byte $80   ; 
- D 0 - I - 0x001A7A 00:9A6A: F8        .byte $F8, $33, $F2   ; 
- D 0 - I - 0x001A7D 00:9A6D: 00        .byte $00, $35, $F2   ; 



_off032_9A70_00:
- - - - - - 0x001A80 00:9A70: F2 9B     .word off_00_9BF2_00
- D 0 - I - 0x001A82 00:9A72: F2 9B     .word off_00_9BF2_01
- D 0 - I - 0x001A84 00:9A74: 05 9C     .word off_00_9C05_02
- D 0 - I - 0x001A86 00:9A76: 18 9C     .word off_00_9C18_03
- D 0 - I - 0x001A88 00:9A78: 2B 9C     .word off_00_9C2B_04
- D 0 - I - 0x001A8A 00:9A7A: 3E 9C     .word off_00_9C3E_05
- D 0 - I - 0x001A8C 00:9A7C: 41 9C     .word off_00_9C41_06
- D 0 - I - 0x001A8E 00:9A7E: 44 9C     .word off_00_9C44_07
- D 0 - I - 0x001A90 00:9A80: 47 9C     .word off_00_9C47_08
- D 0 - I - 0x001A92 00:9A82: 4A 9C     .word off_00_9C4A_09
- D 0 - I - 0x001A94 00:9A84: 5A 9C     .word off_00_9C5A_0A
- D 0 - I - 0x001A96 00:9A86: 6A 9C     .word off_00_9C6A_0B
- D 0 - I - 0x001A98 00:9A88: 7A 9C     .word off_00_9C7A_0C
- D 0 - I - 0x001A9A 00:9A8A: 8A 9C     .word off_00_9C8A_0D
- - - - - - 0x001A9C 00:9A8C: 8D 9C     .word off_00_9C8D_0E
- - - - - - 0x001A9E 00:9A8E: 90 9C     .word off_00_9C90_0F
- - - - - - 0x001AA0 00:9A90: 93 9C     .word off_00_9C93_10
- - - - - - 0x001AA2 00:9A92: 96 9C     .word off_00_9C96_11
- - - - - - 0x001AA4 00:9A94: A9 9C     .word off_00_9CA9_12
- - - - - - 0x001AA6 00:9A96: BC 9C     .word off_00_9CBC_13
- - - - - - 0x001AA8 00:9A98: BF 9C     .word off_00_9CBF_14
- D 0 - I - 0x001AAA 00:9A9A: C2 9C     .word off_00_9CC2_15
- D 0 - I - 0x001AAC 00:9A9C: D2 9C     .word off_00_9CD2_16
- D 0 - I - 0x001AAE 00:9A9E: E6 9C     .word off_00_9CE6_17
- D 0 - I - 0x001AB0 00:9AA0: E9 9C     .word off_00_9CE9_18
- D 0 - I - 0x001AB2 00:9AA2: EC 9C     .word off_00_9CEC_19
- D 0 - I - 0x001AB4 00:9AA4: FF 9C     .word off_00_9CFF_1A
- D 0 - I - 0x001AB6 00:9AA6: 12 9D     .word off_00_9D12_1B
- D 0 - I - 0x001AB8 00:9AA8: 15 9D     .word off_00_9D15_1C
- D 0 - I - 0x001ABA 00:9AAA: 18 9D     .word off_00_9D18_1D
- D 0 - I - 0x001ABC 00:9AAC: 2B 9D     .word off_00_9D2B_1E
- D 0 - I - 0x001ABE 00:9AAE: 3E 9D     .word off_00_9D3E_1F
- D 0 - I - 0x001AC0 00:9AB0: 41 9D     .word off_00_9D41_20
- - - - - - 0x001AC2 00:9AB2: 44 9D     .word off_00_9D44_21
- - - - - - 0x001AC4 00:9AB4: 57 9D     .word off_00_9D57_22
- - - - - - 0x001AC6 00:9AB6: 6A 9D     .word off_00_9D6A_23
- - - - - - 0x001AC8 00:9AB8: 6D 9D     .word off_00_9D6D_24
- - - - - - 0x001ACA 00:9ABA: 70 9D     .word off_00_9D70_25
- - - - - - 0x001ACC 00:9ABC: 83 9D     .word off_00_9D83_26
- - - - - - 0x001ACE 00:9ABE: 98 9D     .word off_00_9D98_27
- - - - - - 0x001AD0 00:9AC0: 9B 9D     .word off_00_9D9B_28
- D 0 - I - 0x001AD2 00:9AC2: 9E 9D     .word off_00_9D9E_29
- D 0 - I - 0x001AD4 00:9AC4: A8 9D     .word off_00_9DA8_2A
- D 0 - I - 0x001AD6 00:9AC6: B2 9D     .word off_00_9DB2_2B
- D 0 - I - 0x001AD8 00:9AC8: B5 9D     .word off_00_9DB5_2C
- D 0 - I - 0x001ADA 00:9ACA: B8 9D     .word off_00_9DB8_2D
- D 0 - I - 0x001ADC 00:9ACC: C5 9D     .word off_00_9DC5_2E
- - - - - - 0x001ADE 00:9ACE: DB 9D     .word off_00_9DDB_2F
- - - - - - 0x001AE0 00:9AD0: DE 9D     .word off_00_9DDE_30
- - - - - - 0x001AE2 00:9AD2: E1 9D     .word off_00_9DE1_31
- - - - - - 0x001AE4 00:9AD4: F1 9D     .word off_00_9DF1_32
- - - - - - 0x001AE6 00:9AD6: F4 9D     .word off_00_9DF4_33
- - - - - - 0x001AE8 00:9AD8: F4 9D     .word off_00_9DF4_34
- - - - - - 0x001AEA 00:9ADA: F4 9D     .word off_00_9DF4_35
- - - - - - 0x001AEC 00:9ADC: F4 9D     .word off_00_9DF4_36
- D 0 - I - 0x001AEE 00:9ADE: F4 9D     .word off_00_9DF4_37
- D 0 - I - 0x001AF0 00:9AE0: 05 9E     .word off_00_9E05_38
- D 0 - I - 0x001AF2 00:9AE2: 16 9E     .word off_00_9E16_39
- D 0 - I - 0x001AF4 00:9AE4: 27 9E     .word off_00_9E27_3A
- D 0 - I - 0x001AF6 00:9AE6: 38 9E     .word off_00_9E38_3B
- D 0 - I - 0x001AF8 00:9AE8: 3B 9E     .word off_00_9E3B_3C
- D 0 - I - 0x001AFA 00:9AEA: 3E 9E     .word off_00_9E3E_3D
- D 0 - I - 0x001AFC 00:9AEC: 41 9E     .word off_00_9E41_3E
- D 0 - I - 0x001AFE 00:9AEE: 44 9E     .word off_00_9E44_3F
- D 0 - I - 0x001B00 00:9AF0: 55 9E     .word off_00_9E55_40
- D 0 - I - 0x001B02 00:9AF2: 66 9E     .word off_00_9E66_41
- D 0 - I - 0x001B04 00:9AF4: 77 9E     .word off_00_9E77_42
- D 0 - I - 0x001B06 00:9AF6: 88 9E     .word off_00_9E88_43
- D 0 - I - 0x001B08 00:9AF8: 8B 9E     .word off_00_9E8B_44
- D 0 - I - 0x001B0A 00:9AFA: 8E 9E     .word off_00_9E8E_45
- - - - - - 0x001B0C 00:9AFC: 91 9E     .word off_00_9E91_46
- D 0 - I - 0x001B0E 00:9AFE: 94 9E     .word off_00_9E94_47
- D 0 - I - 0x001B10 00:9B00: A7 9E     .word off_00_9EA7_48
- D 0 - I - 0x001B12 00:9B02: BA 9E     .word off_00_9EBA_49
- D 0 - I - 0x001B14 00:9B04: BD 9E     .word off_00_9EBD_4A
- D 0 - I - 0x001B16 00:9B06: C0 9E     .word off_00_9EC0_4B
- D 0 - I - 0x001B18 00:9B08: D1 9E     .word off_00_9ED1_4C
- D 0 - I - 0x001B1A 00:9B0A: E2 9E     .word off_00_9EE2_4D
- D 0 - I - 0x001B1C 00:9B0C: E5 9E     .word off_00_9EE5_4E
- D 0 - I - 0x001B1E 00:9B0E: E8 9E     .word off_00_9EE8_4F
- D 0 - I - 0x001B20 00:9B10: F9 9E     .word off_00_9EF9_50
- D 0 - I - 0x001B22 00:9B12: 0A 9F     .word off_00_9F0A_51
- D 0 - I - 0x001B24 00:9B14: 0D 9F     .word off_00_9F0D_52
- D 0 - I - 0x001B26 00:9B16: 10 9F     .word off_00_9F10_53
- D 0 - I - 0x001B28 00:9B18: 18 9F     .word off_00_9F18_54
- D 0 - I - 0x001B2A 00:9B1A: 20 9F     .word off_00_9F20_55
- D 0 - I - 0x001B2C 00:9B1C: 23 9F     .word off_00_9F23_56
- - - - - - 0x001B2E 00:9B1E: 26 9F     .word off_00_9F26_57
- - - - - - 0x001B30 00:9B20: 31 9F     .word off_00_9F31_58
- D 0 - I - 0x001B32 00:9B22: 45 9F     .word off_00_9F45_59
- D 0 - I - 0x001B34 00:9B24: 48 9F     .word off_00_9F48_5A
- D 0 - I - 0x001B36 00:9B26: 4B 9F     .word off_00_9F4B_5B
- D 0 - I - 0x001B38 00:9B28: 59 9F     .word off_00_9F59_5C
- - - - - - 0x001B3A 00:9B2A: 5C 9F     .word off_00_9F5C_5D
- - - - - - 0x001B3C 00:9B2C: 5C 9F     .word off_00_9F5C_5E
- - - - - - 0x001B3E 00:9B2E: 5C 9F     .word off_00_9F5C_5F
- - - - - - 0x001B40 00:9B30: 5C 9F     .word off_00_9F5C_60
- D 0 - I - 0x001B42 00:9B32: 5C 9F     .word off_00_9F5C_61
- D 0 - I - 0x001B44 00:9B34: 6F 9F     .word off_00_9F6F_62
- D 0 - I - 0x001B46 00:9B36: 82 9F     .word off_00_9F82_63
- D 0 - I - 0x001B48 00:9B38: 95 9F     .word off_00_9F95_64
- D 0 - I - 0x001B4A 00:9B3A: A8 9F     .word off_00_9FA8_65
- D 0 - I - 0x001B4C 00:9B3C: AB 9F     .word off_00_9FAB_66
- D 0 - I - 0x001B4E 00:9B3E: AE 9F     .word off_00_9FAE_67
- D 0 - I - 0x001B50 00:9B40: B1 9F     .word off_00_9FB1_68
- D 0 - I - 0x001B52 00:9B42: B4 9F     .word off_00_9FB4_69
- D 0 - I - 0x001B54 00:9B44: CA 9F     .word off_00_9FCA_6A
- D 0 - I - 0x001B56 00:9B46: E0 9F     .word off_00_9FE0_6B
- D 0 - I - 0x001B58 00:9B48: F6 9F     .word off_00_9FF6_6C
- D 0 - I - 0x001B5A 00:9B4A: 0C A0     .word off_00_A00C_6D
- D 0 - I - 0x001B5C 00:9B4C: 0F A0     .word off_00_A00F_6E
- D 0 - I - 0x001B5E 00:9B4E: 12 A0     .word off_00_A012_6F
- D 0 - I - 0x001B60 00:9B50: 15 A0     .word off_00_A015_70
- D 0 - I - 0x001B62 00:9B52: 18 A0     .word off_00_A018_71
- D 0 - I - 0x001B64 00:9B54: 2B A0     .word off_00_A02B_72
- D 0 - I - 0x001B66 00:9B56: 3E A0     .word off_00_A03E_73
- D 0 - I - 0x001B68 00:9B58: 41 A0     .word off_00_A041_74
- D 0 - I - 0x001B6A 00:9B5A: 44 A0     .word off_00_A044_75
- D 0 - I - 0x001B6C 00:9B5C: 57 A0     .word off_00_A057_76
- D 0 - I - 0x001B6E 00:9B5E: 6A A0     .word off_00_A06A_77
- D 0 - I - 0x001B70 00:9B60: 6D A0     .word off_00_A06D_78
- D 0 - I - 0x001B72 00:9B62: 70 A0     .word off_00_A070_79
- D 0 - I - 0x001B74 00:9B64: 83 A0     .word off_00_A083_7A
- D 0 - I - 0x001B76 00:9B66: 96 A0     .word off_00_A096_7B
- D 0 - I - 0x001B78 00:9B68: 99 A0     .word off_00_A099_7C
- D 0 - I - 0x001B7A 00:9B6A: 9C A0     .word off_00_A09C_7D
- D 0 - I - 0x001B7C 00:9B6C: A6 A0     .word off_00_A0A6_7E
- D 0 - I - 0x001B7E 00:9B6E: B0 A0     .word off_00_A0B0_7F
- D 0 - I - 0x001B80 00:9B70: B3 A0     .word off_00_A0B3_80
- - - - - - 0x001B82 00:9B72: B6 A0     .word off_00_A0B6_81
- - - - - - 0x001B84 00:9B74: B6 A0     .word off_00_A0B6_82
- - - - - - 0x001B86 00:9B76: B6 A0     .word off_00_A0B6_83
- - - - - - 0x001B88 00:9B78: B6 A0     .word off_00_A0B6_84
- D 0 - I - 0x001B8A 00:9B7A: B6 A0     .word off_00_A0B6_85
- D 0 - I - 0x001B8C 00:9B7C: C6 A0     .word off_00_A0C6_86
- D 0 - I - 0x001B8E 00:9B7E: C9 A0     .word off_00_A0C9_87
- D 0 - I - 0x001B90 00:9B80: D6 A0     .word off_00_A0D6_88
- - - - - - 0x001B92 00:9B82: EE A0     .word off_00_A0EE_89
- - - - - - 0x001B94 00:9B84: F1 A0     .word off_00_A0F1_8A
- D 0 - I - 0x001B96 00:9B86: F4 A0     .word off_00_A0F4_8B
- D 0 - I - 0x001B98 00:9B88: 05 A1     .word off_00_A105_8C
- D 0 - I - 0x001B9A 00:9B8A: 16 A1     .word off_00_A116_8D
- D 0 - I - 0x001B9C 00:9B8C: 27 A1     .word off_00_A127_8E
- D 0 - I - 0x001B9E 00:9B8E: 38 A1     .word off_00_A138_8F
- D 0 - I - 0x001BA0 00:9B90: 3B A1     .word off_00_A13B_90
- D 0 - I - 0x001BA2 00:9B92: 3E A1     .word off_00_A13E_91
- D 0 - I - 0x001BA4 00:9B94: 41 A1     .word off_00_A141_92
- - - - - - 0x001BA6 00:9B96: 44 A1     .word off_00_A144_93
- - - - - - 0x001BA8 00:9B98: 55 A1     .word off_00_A155_94
- - - - - - 0x001BAA 00:9B9A: 66 A1     .word off_00_A166_95
- - - - - - 0x001BAC 00:9B9C: 77 A1     .word off_00_A177_96
- D 0 - I - 0x001BAE 00:9B9E: 88 A1     .word off_00_A188_97
- D 0 - I - 0x001BB0 00:9BA0: 8B A1     .word off_00_A18B_98
- - - - - - 0x001BB2 00:9BA2: 8E A1     .word off_00_A18E_99
- - - - - - 0x001BB4 00:9BA4: 91 A1     .word off_00_A191_9A
- D 0 - I - 0x001BB6 00:9BA6: 94 A1     .word off_00_A194_9B
- D 0 - I - 0x001BB8 00:9BA8: A9 A1     .word off_00_A1A9_9C
- D 0 - I - 0x001BBA 00:9BAA: BE A1     .word off_00_A1BE_9D
- D 0 - I - 0x001BBC 00:9BAC: C1 A1     .word off_00_A1C1_9E
- D 0 - I - 0x001BBE 00:9BAE: C4 A1     .word off_00_A1C4_9F
- D 0 - I - 0x001BC0 00:9BB0: D5 A1     .word off_00_A1D5_A0
- D 0 - I - 0x001BC2 00:9BB2: E6 A1     .word off_00_A1E6_A1
- D 0 - I - 0x001BC4 00:9BB4: E9 A1     .word off_00_A1E9_A2
- D 0 - I - 0x001BC6 00:9BB6: EC A1     .word off_00_A1EC_A3
- D 0 - I - 0x001BC8 00:9BB8: FA A1     .word off_00_A1FA_A4
- - - - - - 0x001BCA 00:9BBA: 08 A2     .word off_00_A208_A5
- D 0 - I - 0x001BCC 00:9BBC: 0B A2     .word off_00_A20B_A6
- D 0 - I - 0x001BCE 00:9BBE: 0E A2     .word off_00_A20E_A7
- D 0 - I - 0x001BD0 00:9BC0: 1C A2     .word off_00_A21C_A8
- D 0 - I - 0x001BD2 00:9BC2: 2A A2     .word off_00_A22A_A9
- D 0 - I - 0x001BD4 00:9BC4: 38 A2     .word off_00_A238_AA
- D 0 - I - 0x001BD6 00:9BC6: 46 A2     .word off_00_A246_AB
- D 0 - I - 0x001BD8 00:9BC8: 49 A2     .word off_00_A249_AC
- D 0 - I - 0x001BDA 00:9BCA: 4C A2     .word off_00_A24C_AD
- D 0 - I - 0x001BDC 00:9BCC: 4F A2     .word off_00_A24F_AE
- D 0 - I - 0x001BDE 00:9BCE: 52 A2     .word off_00_A252_AF
- D 0 - I - 0x001BE0 00:9BD0: 60 A2     .word off_00_A260_B0
- D 0 - I - 0x001BE2 00:9BD2: 6E A2     .word off_00_A26E_B1
- D 0 - I - 0x001BE4 00:9BD4: 71 A2     .word off_00_A271_B2
- D 0 - I - 0x001BE6 00:9BD6: 74 A2     .word off_00_A274_B3
- D 0 - I - 0x001BE8 00:9BD8: 7C A2     .word off_00_A27C_B4
- D 0 - I - 0x001BEA 00:9BDA: 84 A2     .word off_00_A284_B5
- D 0 - I - 0x001BEC 00:9BDC: 87 A2     .word off_00_A287_B6
- - - - - - 0x001BEE 00:9BDE: 8A A2     .word off_00_A28A_B7
- - - - - - 0x001BF0 00:9BE0: 8A A2     .word off_00_A28A_B8
- - - - - - 0x001BF2 00:9BE2: 8A A2     .word off_00_A28A_B9
- - - - - - 0x001BF4 00:9BE4: 8A A2     .word off_00_A28A_BA
- - - - - - 0x001BF6 00:9BE6: 8A A2     .word off_00_A28A_BB
- - - - - - 0x001BF8 00:9BE8: 98 A2     .word off_00_A298_BC
- D 0 - I - 0x001BFA 00:9BEA: 9B A2     .word off_00_A29B_BD
- D 0 - I - 0x001BFC 00:9BEC: A6 A2     .word off_00_A2A6_BE
- - - - - - 0x001BFE 00:9BEE: BA A2     .word off_00_A2BA_BF
- - - - - - 0x001C00 00:9BF0: BD A2     .word off_00_A2BD_C0



off_00_9BF2_00:
off_00_9BF2_01:
off_FF_9BF2:
- D 0 - I - 0x001C02 00:9BF2: 83        .byte $83   ; counter
- D 0 - I - 0x001C03 00:9BF3: 01        .byte $01   ; spr_A
- D 0 - I - 0x001C04 00:9BF4: F5        .byte $F5, $2B, $EF   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001C07 00:9BF7: FD        .byte $FD, $2D, $EF   ; 
- D 0 - I - 0x001C0A 00:9BFA: 05        .byte $05, $2F, $EF   ; 

- D 0 - I - 0x001C0D 00:9BFD: 02        .byte $02   ; 
- D 0 - I - 0x001C0E 00:9BFE: 00        .byte $00   ; 
- D 0 - I - 0x001C0F 00:9BFF: F5        .byte $F5, $01, $FF   ; 
- D 0 - I - 0x001C12 00:9C02: FD        .byte $FD, $03, $FF   ; 



off_00_9C05_02:
off_FF_9C05:
- D 0 - I - 0x001C15 00:9C05: 83        .byte $83   ; counter
- D 0 - I - 0x001C16 00:9C06: 01        .byte $01   ; spr_A
- D 0 - I - 0x001C17 00:9C07: F5        .byte $F5, $31, $EF   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001C1A 00:9C0A: FD        .byte $FD, $33, $EF   ; 
- D 0 - I - 0x001C1D 00:9C0D: 05        .byte $05, $35, $EF   ; 

- D 0 - I - 0x001C20 00:9C10: 02        .byte $02   ; 
- D 0 - I - 0x001C21 00:9C11: 00        .byte $00   ; 
- D 0 - I - 0x001C22 00:9C12: F5        .byte $F5, $05, $FF   ; 
- D 0 - I - 0x001C25 00:9C15: FD        .byte $FD, $07, $FF   ; 



off_00_9C18_03:
off_FF_9C18:
- D 0 - I - 0x001C28 00:9C18: 83        .byte $83   ; counter
- D 0 - I - 0x001C29 00:9C19: 01        .byte $01   ; spr_A
- D 0 - I - 0x001C2A 00:9C1A: FA        .byte $FA, $37, $EF   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001C2D 00:9C1D: 02        .byte $02, $39, $EF   ; 
- D 0 - I - 0x001C30 00:9C20: 0A        .byte $0A, $35, $ED   ; 

- D 0 - I - 0x001C33 00:9C23: 02        .byte $02   ; 
- D 0 - I - 0x001C34 00:9C24: 00        .byte $00   ; 
- D 0 - I - 0x001C35 00:9C25: F7        .byte $F7, $09, $FF   ; 
- D 0 - I - 0x001C38 00:9C28: FF        .byte $FF, $0B, $FF   ; 



off_00_9C2B_04:
off_FF_9C2B:
- D 0 - I - 0x001C3B 00:9C2B: 83        .byte $83   ; counter
- D 0 - I - 0x001C3C 00:9C2C: 01        .byte $01   ; spr_A
- D 0 - I - 0x001C3D 00:9C2D: F5        .byte $F5, $31, $EF   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001C40 00:9C30: FD        .byte $FD, $33, $EF   ; 
- D 0 - I - 0x001C43 00:9C33: 05        .byte $05, $35, $EF   ; 

- D 0 - I - 0x001C46 00:9C36: 02        .byte $02   ; 
- D 0 - I - 0x001C47 00:9C37: 00        .byte $00   ; 
- D 0 - I - 0x001C48 00:9C38: F6        .byte $F6, $0D, $FF   ; 
- D 0 - I - 0x001C4B 00:9C3B: FE        .byte $FE, $0F, $FF   ; 



off_00_9C3E_05:
- D 0 - I - 0x001C4E 00:9C3E: FF        .byte $FF   ; 
- D 0 - I - 0x001C4F 00:9C3F: F2 9B     .word off_FF_9BF2



off_00_9C41_06:
- D 0 - I - 0x001C51 00:9C41: FF        .byte $FF   ; 
- D 0 - I - 0x001C52 00:9C42: 05 9C     .word off_FF_9C05



off_00_9C44_07:
- D 0 - I - 0x001C54 00:9C44: FF        .byte $FF   ; 
- D 0 - I - 0x001C55 00:9C45: 18 9C     .word off_FF_9C18



off_00_9C47_08:
- D 0 - I - 0x001C57 00:9C47: FF        .byte $FF   ; 
- D 0 - I - 0x001C58 00:9C48: 2B 9C     .word off_FF_9C2B



off_00_9C4A_09:
off_FF_9C4A:
- D 0 - I - 0x001C5A 00:9C4A: 82        .byte $82   ; counter
- D 0 - I - 0x001C5B 00:9C4B: 01        .byte $01   ; spr_A
- D 0 - I - 0x001C5C 00:9C4C: F6        .byte $F6, $3B, $EF   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001C5F 00:9C4F: FE        .byte $FE, $3D, $EF   ; 

- D 0 - I - 0x001C62 00:9C52: 02        .byte $02   ; 
- D 0 - I - 0x001C63 00:9C53: 00        .byte $00   ; 
- D 0 - I - 0x001C64 00:9C54: F5        .byte $F5, $01, $FF   ; 
- D 0 - I - 0x001C67 00:9C57: FD        .byte $FD, $03, $FF   ; 



off_00_9C5A_0A:
off_FF_9C5A:
- D 0 - I - 0x001C6A 00:9C5A: 82        .byte $82   ; counter
- D 0 - I - 0x001C6B 00:9C5B: 01        .byte $01   ; spr_A
- D 0 - I - 0x001C6C 00:9C5C: F7        .byte $F7, $3B, $F0   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001C6F 00:9C5F: FF        .byte $FF, $3D, $F0   ; 

- D 0 - I - 0x001C72 00:9C62: 02        .byte $02   ; 
- D 0 - I - 0x001C73 00:9C63: 00        .byte $00   ; 
- D 0 - I - 0x001C74 00:9C64: F5        .byte $F5, $05, $FF   ; 
- D 0 - I - 0x001C77 00:9C67: FD        .byte $FD, $07, $FF   ; 



off_00_9C6A_0B:
off_FF_9C6A:
- D 0 - I - 0x001C7A 00:9C6A: 82        .byte $82   ; counter
- D 0 - I - 0x001C7B 00:9C6B: 01        .byte $01   ; spr_A
- D 0 - I - 0x001C7C 00:9C6C: F9        .byte $F9, $3B, $EF   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001C7F 00:9C6F: 01        .byte $01, $3D, $EF   ; 

- D 0 - I - 0x001C82 00:9C72: 02        .byte $02   ; 
- D 0 - I - 0x001C83 00:9C73: 00        .byte $00   ; 
- D 0 - I - 0x001C84 00:9C74: F7        .byte $F7, $09, $FF   ; 
- D 0 - I - 0x001C87 00:9C77: FF        .byte $FF, $0B, $FF   ; 



off_00_9C7A_0C:
off_FF_9C7A:
- D 0 - I - 0x001C8A 00:9C7A: 82        .byte $82   ; counter
- D 0 - I - 0x001C8B 00:9C7B: 01        .byte $01   ; spr_A
- D 0 - I - 0x001C8C 00:9C7C: F7        .byte $F7, $3B, $F0   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001C8F 00:9C7F: FF        .byte $FF, $3D, $F0   ; 

- D 0 - I - 0x001C92 00:9C82: 02        .byte $02   ; 
- D 0 - I - 0x001C93 00:9C83: 00        .byte $00   ; 
- D 0 - I - 0x001C94 00:9C84: F6        .byte $F6, $0D, $FF   ; 
- D 0 - I - 0x001C97 00:9C87: FE        .byte $FE, $0F, $FF   ; 



off_00_9C8A_0D:
- D 0 - I - 0x001C9A 00:9C8A: FF        .byte $FF   ; 
- D 0 - I - 0x001C9B 00:9C8B: 4A 9C     .word off_FF_9C4A



off_00_9C8D_0E:
- - - - - - 0x001C9D 00:9C8D: FF        .byte $FF   ; 
- - - - - - 0x001C9E 00:9C8E: 5A 9C     .word off_FF_9C5A



off_00_9C90_0F:
- - - - - - 0x001CA0 00:9C90: FF        .byte $FF   ; 
- - - - - - 0x001CA1 00:9C91: 6A 9C     .word off_FF_9C6A



off_00_9C93_10:
- - - - - - 0x001CA3 00:9C93: FF        .byte $FF   ; 
- - - - - - 0x001CA4 00:9C94: 7A 9C     .word off_FF_9C7A



off_00_9C96_11:
off_FF_9C96:
- - - - - - 0x001CA6 00:9C96: 83        .byte $83   ; counter
- - - - - - 0x001CA7 00:9C97: 01        .byte $01   ; spr_A
- - - - - - 0x001CA8 00:9C98: F5        .byte $F5, $2B, $EF   ; spr_X, spr_T, spr_Y
- - - - - - 0x001CAB 00:9C9B: FD        .byte $FD, $53, $EF   ; 
- - - - - - 0x001CAE 00:9C9E: 05        .byte $05, $55, $EF   ; 

- - - - - - 0x001CB1 00:9CA1: 02        .byte $02   ; 
- - - - - - 0x001CB2 00:9CA2: 00        .byte $00   ; 
- - - - - - 0x001CB3 00:9CA3: F5        .byte $F5, $01, $FF   ; 
- - - - - - 0x001CB6 00:9CA6: FD        .byte $FD, $03, $FF   ; 



off_00_9CA9_12:
off_FF_9CA9:
- - - - - - 0x001CB9 00:9CA9: 83        .byte $83   ; counter
- - - - - - 0x001CBA 00:9CAA: 01        .byte $01   ; spr_A
- - - - - - 0x001CBB 00:9CAB: F5        .byte $F5, $31, $EF   ; spr_X, spr_T, spr_Y
- - - - - - 0x001CBE 00:9CAE: FD        .byte $FD, $4F, $EF   ; 
- - - - - - 0x001CC1 00:9CB1: 05        .byte $05, $51, $EF   ; 

- - - - - - 0x001CC4 00:9CB4: 02        .byte $02   ; 
- - - - - - 0x001CC5 00:9CB5: 00        .byte $00   ; 
- - - - - - 0x001CC6 00:9CB6: F6        .byte $F6, $0D, $FF   ; 
- - - - - - 0x001CC9 00:9CB9: FE        .byte $FE, $0F, $FF   ; 



off_00_9CBC_13:
- - - - - - 0x001CCC 00:9CBC: FF        .byte $FF   ; 
- - - - - - 0x001CCD 00:9CBD: 96 9C     .word off_FF_9C96



off_00_9CBF_14:
- - - - - - 0x001CCF 00:9CBF: FF        .byte $FF   ; 
- - - - - - 0x001CD0 00:9CC0: A9 9C     .word off_FF_9CA9



off_00_9CC2_15:
off_FF_9CC2:
- D 0 - I - 0x001CD2 00:9CC2: 82        .byte $82   ; counter
- D 0 - I - 0x001CD3 00:9CC3: 01        .byte $01   ; spr_A
- D 0 - I - 0x001CD4 00:9CC4: F5        .byte $F5, $3F, $EF   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001CD7 00:9CC7: FD        .byte $FD, $41, $EF   ; 

- D 0 - I - 0x001CDA 00:9CCA: 02        .byte $02   ; 
- D 0 - I - 0x001CDB 00:9CCB: 40        .byte $40   ; 
- D 0 - I - 0x001CDC 00:9CCC: FD        .byte $FD, $CD, $FF   ; 
- D 0 - I - 0x001CDF 00:9CCF: F5        .byte $F5, $CF, $FF   ; 



off_00_9CD2_16:
off_FF_9CD2:
- D 0 - I - 0x001CE2 00:9CD2: 81        .byte $81   ; counter
- D 0 - I - 0x001CE3 00:9CD3: 01        .byte $01   ; spr_A
- D 0 - I - 0x001CE4 00:9CD4: FD        .byte $FD, $41, $F0   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x001CE7 00:9CD7: 81        .byte $81   ; 
- D 0 - I - 0x001CE8 00:9CD8: 40        .byte $40   ; 
- D 0 - I - 0x001CE9 00:9CD9: FD        .byte $FD, $CD, $FF   ; 

- D 0 - I - 0x001CEC 00:9CDC: 81        .byte $81   ; 
- D 0 - I - 0x001CED 00:9CDD: 01        .byte $01   ; 
- D 0 - I - 0x001CEE 00:9CDE: F5        .byte $F5, $3F, $F0   ; 

- D 0 - I - 0x001CF1 00:9CE1: 01        .byte $01   ; 
- D 0 - I - 0x001CF2 00:9CE2: 40        .byte $40   ; 
- D 0 - I - 0x001CF3 00:9CE3: F5        .byte $F5, $CF, $FF   ; 



off_00_9CE6_17:
- D 0 - I - 0x001CF6 00:9CE6: FF        .byte $FF   ; 
- D 0 - I - 0x001CF7 00:9CE7: C2 9C     .word off_FF_9CC2



off_00_9CE9_18:
- D 0 - I - 0x001CF9 00:9CE9: FF        .byte $FF   ; 
- D 0 - I - 0x001CFA 00:9CEA: D2 9C     .word off_FF_9CD2



off_00_9CEC_19:
off_FF_9CEC:
- D 0 - I - 0x001CFC 00:9CEC: 83        .byte $83   ; counter
- D 0 - I - 0x001CFD 00:9CED: 01        .byte $01   ; spr_A
- D 0 - I - 0x001CFE 00:9CEE: F4        .byte $F4, $2B, $F0   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001D01 00:9CF1: FC        .byte $FC, $2D, $F0   ; 
- D 0 - I - 0x001D04 00:9CF4: 04        .byte $04, $2F, $F0   ; 

- D 0 - I - 0x001D07 00:9CF7: 02        .byte $02   ; 
- D 0 - I - 0x001D08 00:9CF8: 00        .byte $00   ; 
- D 0 - I - 0x001D09 00:9CF9: F5        .byte $F5, $11, $FF   ; 
- D 0 - I - 0x001D0C 00:9CFC: FD        .byte $FD, $13, $FF   ; 



off_00_9CFF_1A:
off_FF_9CFF:
- D 0 - I - 0x001D0F 00:9CFF: 83        .byte $83   ; counter
- D 0 - I - 0x001D10 00:9D00: 01        .byte $01   ; spr_A
- D 0 - I - 0x001D11 00:9D01: F3        .byte $F3, $31, $EF   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001D14 00:9D04: FB        .byte $FB, $33, $EF   ; 
- D 0 - I - 0x001D17 00:9D07: 03        .byte $03, $35, $EF   ; 

- D 0 - I - 0x001D1A 00:9D0A: 02        .byte $02   ; 
- D 0 - I - 0x001D1B 00:9D0B: 00        .byte $00   ; 
- D 0 - I - 0x001D1C 00:9D0C: F5        .byte $F5, $11, $FF   ; 
- D 0 - I - 0x001D1F 00:9D0F: FD        .byte $FD, $13, $FF   ; 



off_00_9D12_1B:
- D 0 - I - 0x001D22 00:9D12: FF        .byte $FF   ; 
- D 0 - I - 0x001D23 00:9D13: EC 9C     .word off_FF_9CEC



off_00_9D15_1C:
- D 0 - I - 0x001D25 00:9D15: FF        .byte $FF   ; 
- D 0 - I - 0x001D26 00:9D16: FF 9C     .word off_FF_9CFF



off_00_9D18_1D:
off_FF_9D18:
- D 0 - I - 0x001D28 00:9D18: 83        .byte $83   ; counter
- D 0 - I - 0x001D29 00:9D19: 01        .byte $01   ; spr_A
- D 0 - I - 0x001D2A 00:9D1A: F4        .byte $F4, $2B, $F5   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001D2D 00:9D1D: FC        .byte $FC, $2D, $F5   ; 
- D 0 - I - 0x001D30 00:9D20: 04        .byte $04, $2F, $F5   ; 

- D 0 - I - 0x001D33 00:9D23: 02        .byte $02   ; 
- D 0 - I - 0x001D34 00:9D24: 00        .byte $00   ; 
- D 0 - I - 0x001D35 00:9D25: F5        .byte $F5, $27, $04   ; 
- D 0 - I - 0x001D38 00:9D28: FD        .byte $FD, $29, $04   ; 



off_00_9D2B_1E:
off_FF_9D2B:
- D 0 - I - 0x001D3B 00:9D2B: 83        .byte $83   ; counter
- D 0 - I - 0x001D3C 00:9D2C: 01        .byte $01   ; spr_A
- D 0 - I - 0x001D3D 00:9D2D: F3        .byte $F3, $31, $F4   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001D40 00:9D30: FB        .byte $FB, $33, $F4   ; 
- D 0 - I - 0x001D43 00:9D33: 03        .byte $03, $35, $F4   ; 

- D 0 - I - 0x001D46 00:9D36: 02        .byte $02   ; 
- D 0 - I - 0x001D47 00:9D37: 00        .byte $00   ; 
- D 0 - I - 0x001D48 00:9D38: F5        .byte $F5, $27, $04   ; 
- D 0 - I - 0x001D4B 00:9D3B: FD        .byte $FD, $29, $04   ; 



off_00_9D3E_1F:
- D 0 - I - 0x001D4E 00:9D3E: FF        .byte $FF   ; 
- D 0 - I - 0x001D4F 00:9D3F: 18 9D     .word off_FF_9D18



off_00_9D41_20:
- D 0 - I - 0x001D51 00:9D41: FF        .byte $FF   ; 
- D 0 - I - 0x001D52 00:9D42: 2B 9D     .word off_FF_9D2B



off_00_9D44_21:
off_FF_9D44:
- - - - - - 0x001D54 00:9D44: 82        .byte $82   ; counter
- - - - - - 0x001D55 00:9D45: 00        .byte $00   ; spr_A
- - - - - - 0x001D56 00:9D46: F5        .byte $F5, $11, $FF   ; spr_X, spr_T, spr_Y
- - - - - - 0x001D59 00:9D49: FD        .byte $FD, $13, $FF   ; 

- - - - - - 0x001D5C 00:9D4C: 03        .byte $03   ; 
- - - - - - 0x001D5D 00:9D4D: 01        .byte $01   ; 
- - - - - - 0x001D5E 00:9D4E: F3        .byte $F3, $31, $EF   ; 
- - - - - - 0x001D61 00:9D51: FB        .byte $FB, $4F, $EF   ; 
- - - - - - 0x001D64 00:9D54: 03        .byte $03, $51, $EF   ; 



off_00_9D57_22:
off_FF_9D57:
- - - - - - 0x001D67 00:9D57: 83        .byte $83   ; counter
- - - - - - 0x001D68 00:9D58: 01        .byte $01   ; spr_A
- - - - - - 0x001D69 00:9D59: F4        .byte $F4, $2B, $EF   ; spr_X, spr_T, spr_Y
- - - - - - 0x001D6C 00:9D5C: FC        .byte $FC, $53, $EF   ; 
- - - - - - 0x001D6F 00:9D5F: 04        .byte $04, $55, $EF   ; 

- - - - - - 0x001D72 00:9D62: 02        .byte $02   ; 
- - - - - - 0x001D73 00:9D63: 00        .byte $00   ; 
- - - - - - 0x001D74 00:9D64: F5        .byte $F5, $11, $FF   ; 
- - - - - - 0x001D77 00:9D67: FD        .byte $FD, $13, $FF   ; 



off_00_9D6A_23:
- - - - - - 0x001D7A 00:9D6A: FF        .byte $FF   ; 
- - - - - - 0x001D7B 00:9D6B: 44 9D     .word off_FF_9D44



off_00_9D6D_24:
- - - - - - 0x001D7D 00:9D6D: FF        .byte $FF   ; 
- - - - - - 0x001D7E 00:9D6E: 57 9D     .word off_FF_9D57



off_00_9D70_25:
off_FF_9D70:
- - - - - - 0x001D80 00:9D70: 83        .byte $83   ; counter
- - - - - - 0x001D81 00:9D71: 01        .byte $01   ; spr_A
- - - - - - 0x001D82 00:9D72: F3        .byte $F3, $31, $F4   ; spr_X, spr_T, spr_Y
- - - - - - 0x001D85 00:9D75: FB        .byte $FB, $4F, $F4   ; 
- - - - - - 0x001D88 00:9D78: 03        .byte $03, $51, $F4   ; 

- - - - - - 0x001D8B 00:9D7B: 02        .byte $02   ; 
- - - - - - 0x001D8C 00:9D7C: 00        .byte $00   ; 
- - - - - - 0x001D8D 00:9D7D: F5        .byte $F5, $27, $04   ; 
- - - - - - 0x001D90 00:9D80: FD        .byte $FD, $29, $04   ; 



off_00_9D83_26:
off_FF_9D83:
- - - - - - 0x001D93 00:9D83: 81        .byte $81   ; counter
- - - - - - 0x001D94 00:9D84: 01        .byte $01   ; spr_A
- - - - - - 0x001D95 00:9D85: F4        .byte $F4, $2B, $F4   ; spr_X, spr_T, spr_Y

- - - - - - 0x001D98 00:9D88: 82        .byte $82   ; 
- - - - - - 0x001D99 00:9D89: 00        .byte $00   ; 
- - - - - - 0x001D9A 00:9D8A: F5        .byte $F5, $27, $04   ; 
- - - - - - 0x001D9D 00:9D8D: FD        .byte $FD, $29, $04   ; 

- - - - - - 0x001DA0 00:9D90: 02        .byte $02   ; 
- - - - - - 0x001DA1 00:9D91: 01        .byte $01   ; 
- - - - - - 0x001DA2 00:9D92: FC        .byte $FC, $53, $F4   ; 
- - - - - - 0x001DA5 00:9D95: 04        .byte $04, $55, $F4   ; 



off_00_9D98_27:
- - - - - - 0x001DA8 00:9D98: FF        .byte $FF   ; 
- - - - - - 0x001DA9 00:9D99: 70 9D     .word off_FF_9D70



off_00_9D9B_28:
- - - - - - 0x001DAB 00:9D9B: FF        .byte $FF   ; 
- - - - - - 0x001DAC 00:9D9C: 83 9D     .word off_FF_9D83



off_00_9D9E_29:
off_FF_9D9E:
- D 0 - I - 0x001DAE 00:9D9E: 81        .byte $81   ; counter
- D 0 - I - 0x001DAF 00:9D9F: 01        .byte $01   ; spr_A
- D 0 - I - 0x001DB0 00:9DA0: F8        .byte $F8, $43, $FA   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x001DB3 00:9DA3: 01        .byte $01   ; 
- D 0 - I - 0x001DB4 00:9DA4: 00        .byte $00   ; 
- D 0 - I - 0x001DB5 00:9DA5: 00        .byte $00, $15, $FA   ; 



off_00_9DA8_2A:
off_FF_9DA8:
- D 0 - I - 0x001DB8 00:9DA8: 81        .byte $81   ; counter
- D 0 - I - 0x001DB9 00:9DA9: 81        .byte $81   ; spr_A
- D 0 - I - 0x001DBA 00:9DAA: F8        .byte $F8, $43, $FA   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x001DBD 00:9DAD: 01        .byte $01   ; 
- D 0 - I - 0x001DBE 00:9DAE: 80        .byte $80   ; 
- D 0 - I - 0x001DBF 00:9DAF: 00        .byte $00, $15, $FA   ; 



off_00_9DB2_2B:
- D 0 - I - 0x001DC2 00:9DB2: FF        .byte $FF   ; 
- D 0 - I - 0x001DC3 00:9DB3: A8 9D     .word off_FF_9DA8



off_00_9DB5_2C:
- D 0 - I - 0x001DC5 00:9DB5: FF        .byte $FF   ; 
- D 0 - I - 0x001DC6 00:9DB6: 9E 9D     .word off_FF_9D9E



off_00_9DB8_2D:
off_FF_9DB8:
- D 0 - I - 0x001DC8 00:9DB8: 81        .byte $81   ; counter
- D 0 - I - 0x001DC9 00:9DB9: 01        .byte $01   ; spr_A
- D 0 - I - 0x001DCA 00:9DBA: F3        .byte $F3, $45, $F8   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x001DCD 00:9DBD: 02        .byte $02   ; 
- D 0 - I - 0x001DCE 00:9DBE: 00        .byte $00   ; 
- D 0 - I - 0x001DCF 00:9DBF: FB        .byte $FB, $17, $F8   ; 
- D 0 - I - 0x001DD2 00:9DC2: 03        .byte $03, $19, $F8   ; 



off_00_9DC5_2E:
off_FF_9DC5:
- D 0 - I - 0x001DD5 00:9DC5: 83        .byte $83   ; counter
- D 0 - I - 0x001DD6 00:9DC6: 01        .byte $01   ; spr_A
- D 0 - I - 0x001DD7 00:9DC7: F4        .byte $F4, $47, $F4   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001DDA 00:9DCA: FC        .byte $FC, $49, $F4   ; 
- D 0 - I - 0x001DDD 00:9DCD: F0        .byte $F0, $1B, $04   ; 

- D 0 - I - 0x001DE0 00:9DD0: 03        .byte $03   ; 
- D 0 - I - 0x001DE1 00:9DD1: 00        .byte $00   ; 
- D 0 - I - 0x001DE2 00:9DD2: F8        .byte $F8, $1D, $04   ; 
- D 0 - I - 0x001DE5 00:9DD5: 00        .byte $00, $1F, $04   ; 
- D 0 - I - 0x001DE8 00:9DD8: 08        .byte $08, $21, $04   ; 



off_00_9DDB_2F:
- - - - - - 0x001DEB 00:9DDB: FF        .byte $FF   ; 
- - - - - - 0x001DEC 00:9DDC: B8 9D     .word off_FF_9DB8



off_00_9DDE_30:
- - - - - - 0x001DEE 00:9DDE: FF        .byte $FF   ; 
- - - - - - 0x001DEF 00:9DDF: C5 9D     .word off_FF_9DC5



off_00_9DE1_31:
off_FF_9DE1:
- - - - - - 0x001DF1 00:9DE1: 82        .byte $82   ; counter
- - - - - - 0x001DF2 00:9DE2: 01        .byte $01   ; spr_A
- - - - - - 0x001DF3 00:9DE3: F9        .byte $F9, $4B, $F1   ; spr_X, spr_T, spr_Y
- - - - - - 0x001DF6 00:9DE6: 01        .byte $01, $4D, $F1   ; 

- - - - - - 0x001DF9 00:9DE9: 02        .byte $02   ; 
- - - - - - 0x001DFA 00:9DEA: 00        .byte $00   ; 
- - - - - - 0x001DFB 00:9DEB: F9        .byte $F9, $23, $01   ; 
- - - - - - 0x001DFE 00:9DEE: 01        .byte $01, $25, $01   ; 



off_00_9DF1_32:
- - - - - - 0x001E01 00:9DF1: FF        .byte $FF   ; 
- - - - - - 0x001E02 00:9DF2: E1 9D     .word off_FF_9DE1



off_00_9DF4_33:
off_00_9DF4_34:
off_00_9DF4_35:
off_00_9DF4_36:
off_00_9DF4_37:
off_FF_9DF4:
- D 0 - I - 0x001E04 00:9DF4: 05        .byte $05   ; counter
- D 0 - I - 0x001E05 00:9DF5: 01        .byte $01   ; spr_A
- D 0 - I - 0x001E06 00:9DF6: F7        .byte $F7, $59, $EF   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001E09 00:9DF9: FF        .byte $FF, $5B, $EF   ; 
- D 0 - I - 0x001E0C 00:9DFC: 07        .byte $07, $5D, $EF   ; 
- D 0 - I - 0x001E0F 00:9DFF: F5        .byte $F5, $01, $FF   ; 
- D 0 - I - 0x001E12 00:9E02: FD        .byte $FD, $03, $FF   ; 



off_00_9E05_38:
off_FF_9E05:
- D 0 - I - 0x001E15 00:9E05: 05        .byte $05   ; counter
- D 0 - I - 0x001E16 00:9E06: 01        .byte $01   ; spr_A
- D 0 - I - 0x001E17 00:9E07: F8        .byte $F8, $5F, $F0   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001E1A 00:9E0A: 00        .byte $00, $61, $F0   ; 
- D 0 - I - 0x001E1D 00:9E0D: 08        .byte $08, $63, $F0   ; 
- D 0 - I - 0x001E20 00:9E10: F5        .byte $F5, $05, $FF   ; 
- D 0 - I - 0x001E23 00:9E13: FD        .byte $FD, $07, $FF   ; 



off_00_9E16_39:
off_FF_9E16:
- D 0 - I - 0x001E26 00:9E16: 05        .byte $05   ; counter
- D 0 - I - 0x001E27 00:9E17: 01        .byte $01   ; spr_A
- D 0 - I - 0x001E28 00:9E18: F7        .byte $F7, $09, $FF   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001E2B 00:9E1B: FF        .byte $FF, $0B, $FF   ; 
- D 0 - I - 0x001E2E 00:9E1E: FA        .byte $FA, $59, $EF   ; 
- D 0 - I - 0x001E31 00:9E21: 02        .byte $02, $5B, $EF   ; 
- D 0 - I - 0x001E34 00:9E24: 0A        .byte $0A, $5D, $EF   ; 



off_00_9E27_3A:
off_FF_9E27:
- D 0 - I - 0x001E37 00:9E27: 05        .byte $05   ; counter
- D 0 - I - 0x001E38 00:9E28: 01        .byte $01   ; spr_A
- D 0 - I - 0x001E39 00:9E29: F8        .byte $F8, $5F, $F0   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001E3C 00:9E2C: 00        .byte $00, $61, $F0   ; 
- D 0 - I - 0x001E3F 00:9E2F: 08        .byte $08, $63, $F0   ; 
- D 0 - I - 0x001E42 00:9E32: F6        .byte $F6, $0D, $FF   ; 
- D 0 - I - 0x001E45 00:9E35: FE        .byte $FE, $0F, $FF   ; 



off_00_9E38_3B:
- D 0 - I - 0x001E48 00:9E38: FF        .byte $FF   ; 
- D 0 - I - 0x001E49 00:9E39: F4 9D     .word off_FF_9DF4



off_00_9E3B_3C:
- D 0 - I - 0x001E4B 00:9E3B: FF        .byte $FF   ; 
- D 0 - I - 0x001E4C 00:9E3C: 05 9E     .word off_FF_9E05



off_00_9E3E_3D:
- D 0 - I - 0x001E4E 00:9E3E: FF        .byte $FF   ; 
- D 0 - I - 0x001E4F 00:9E3F: 16 9E     .word off_FF_9E16



off_00_9E41_3E:
- D 0 - I - 0x001E51 00:9E41: FF        .byte $FF   ; 
- D 0 - I - 0x001E52 00:9E42: 27 9E     .word off_FF_9E27



off_00_9E44_3F:
off_FF_9E44:
- D 0 - I - 0x001E54 00:9E44: 05        .byte $05   ; counter
- D 0 - I - 0x001E55 00:9E45: 01        .byte $01   ; spr_A
- D 0 - I - 0x001E56 00:9E46: F7        .byte $F7, $65, $EF   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001E59 00:9E49: FF        .byte $FF, $67, $EF   ; 
- D 0 - I - 0x001E5C 00:9E4C: 01        .byte $01, $69, $DF   ; 
- D 0 - I - 0x001E5F 00:9E4F: F5        .byte $F5, $01, $FF   ; 
- D 0 - I - 0x001E62 00:9E52: FD        .byte $FD, $03, $FF   ; 



off_00_9E55_40:
off_FF_9E55:
- D 0 - I - 0x001E65 00:9E55: 05        .byte $05   ; counter
- D 0 - I - 0x001E66 00:9E56: 01        .byte $01   ; spr_A
- D 0 - I - 0x001E67 00:9E57: F8        .byte $F8, $65, $F1   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001E6A 00:9E5A: 00        .byte $00, $67, $F1   ; 
- D 0 - I - 0x001E6D 00:9E5D: 02        .byte $02, $69, $E1   ; 
- D 0 - I - 0x001E70 00:9E60: F5        .byte $F5, $05, $FF   ; 
- D 0 - I - 0x001E73 00:9E63: FD        .byte $FD, $07, $FF   ; 



off_00_9E66_41:
off_FF_9E66:
- D 0 - I - 0x001E76 00:9E66: 05        .byte $05   ; counter
- D 0 - I - 0x001E77 00:9E67: 01        .byte $01   ; spr_A
- D 0 - I - 0x001E78 00:9E68: F7        .byte $F7, $09, $FF   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001E7B 00:9E6B: FF        .byte $FF, $0B, $FF   ; 
- D 0 - I - 0x001E7E 00:9E6E: FA        .byte $FA, $65, $EF   ; 
- D 0 - I - 0x001E81 00:9E71: 02        .byte $02, $67, $EF   ; 
- D 0 - I - 0x001E84 00:9E74: 04        .byte $04, $69, $DF   ; 



off_00_9E77_42:
off_FF_9E77:
- D 0 - I - 0x001E87 00:9E77: 05        .byte $05   ; counter
- D 0 - I - 0x001E88 00:9E78: 01        .byte $01   ; spr_A
- D 0 - I - 0x001E89 00:9E79: F8        .byte $F8, $65, $F1   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001E8C 00:9E7C: 00        .byte $00, $67, $F1   ; 
- D 0 - I - 0x001E8F 00:9E7F: 02        .byte $02, $69, $E1   ; 
- D 0 - I - 0x001E92 00:9E82: F6        .byte $F6, $0D, $FF   ; 
- D 0 - I - 0x001E95 00:9E85: FE        .byte $FE, $0F, $FF   ; 



off_00_9E88_43:
- D 0 - I - 0x001E98 00:9E88: FF        .byte $FF   ; 
- D 0 - I - 0x001E99 00:9E89: 44 9E     .word off_FF_9E44



off_00_9E8B_44:
- D 0 - I - 0x001E9B 00:9E8B: FF        .byte $FF   ; 
- D 0 - I - 0x001E9C 00:9E8C: 55 9E     .word off_FF_9E55



off_00_9E8E_45:
- D 0 - I - 0x001E9E 00:9E8E: FF        .byte $FF   ; 
- D 0 - I - 0x001E9F 00:9E8F: 66 9E     .word off_FF_9E66



off_00_9E91_46:
- - - - - - 0x001EA1 00:9E91: FF        .byte $FF   ; 
- - - - - - 0x001EA2 00:9E92: 77 9E     .word off_FF_9E77



off_00_9E94_47:
off_FF_9E94:
- D 0 - I - 0x001EA4 00:9E94: 82        .byte $82   ; counter
- D 0 - I - 0x001EA5 00:9E95: 41        .byte $41   ; spr_A
- D 0 - I - 0x001EA6 00:9E96: FD        .byte $FD, $CD, $FF   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001EA9 00:9E99: F5        .byte $F5, $CF, $FF   ; 

- D 0 - I - 0x001EAC 00:9E9C: 03        .byte $03   ; 
- D 0 - I - 0x001EAD 00:9E9D: 01        .byte $01   ; 
- D 0 - I - 0x001EAE 00:9E9E: F4        .byte $F4, $6B, $EF   ; 
- D 0 - I - 0x001EB1 00:9EA1: FC        .byte $FC, $6D, $EF   ; 
- D 0 - I - 0x001EB4 00:9EA4: F9        .byte $F9, $6F, $DF   ; 



off_00_9EA7_48:
off_FF_9EA7:
- D 0 - I - 0x001EB7 00:9EA7: 83        .byte $83   ; counter
- D 0 - I - 0x001EB8 00:9EA8: 01        .byte $01   ; spr_A
- D 0 - I - 0x001EB9 00:9EA9: F4        .byte $F4, $6B, $F0   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001EBC 00:9EAC: FC        .byte $FC, $6D, $F0   ; 
- D 0 - I - 0x001EBF 00:9EAF: F9        .byte $F9, $6F, $E0   ; 

- D 0 - I - 0x001EC2 00:9EB2: 02        .byte $02   ; 
- D 0 - I - 0x001EC3 00:9EB3: 41        .byte $41   ; 
- D 0 - I - 0x001EC4 00:9EB4: FD        .byte $FD, $CD, $FF   ; 
- D 0 - I - 0x001EC7 00:9EB7: F5        .byte $F5, $CF, $FF   ; 



off_00_9EBA_49:
- D 0 - I - 0x001ECA 00:9EBA: FF        .byte $FF   ; 
- D 0 - I - 0x001ECB 00:9EBB: 94 9E     .word off_FF_9E94



off_00_9EBD_4A:
- D 0 - I - 0x001ECD 00:9EBD: FF        .byte $FF   ; 
- D 0 - I - 0x001ECE 00:9EBE: A7 9E     .word off_FF_9EA7



off_00_9EC0_4B:
off_FF_9EC0:
- D 0 - I - 0x001ED0 00:9EC0: 05        .byte $05   ; counter
- D 0 - I - 0x001ED1 00:9EC1: 01        .byte $01   ; spr_A
- D 0 - I - 0x001ED2 00:9EC2: F6        .byte $F6, $59, $EF   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001ED5 00:9EC5: FE        .byte $FE, $5B, $EF   ; 
- D 0 - I - 0x001ED8 00:9EC8: 06        .byte $06, $5D, $EF   ; 
- D 0 - I - 0x001EDB 00:9ECB: F5        .byte $F5, $11, $FF   ; 
- D 0 - I - 0x001EDE 00:9ECE: FD        .byte $FD, $13, $FF   ; 



off_00_9ED1_4C:
off_FF_9ED1:
- D 0 - I - 0x001EE1 00:9ED1: 05        .byte $05   ; counter
- D 0 - I - 0x001EE2 00:9ED2: 01        .byte $01   ; spr_A
- D 0 - I - 0x001EE3 00:9ED3: F5        .byte $F5, $5F, $EF   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001EE6 00:9ED6: FD        .byte $FD, $61, $EF   ; 
- D 0 - I - 0x001EE9 00:9ED9: 05        .byte $05, $63, $EF   ; 
- D 0 - I - 0x001EEC 00:9EDC: F5        .byte $F5, $11, $FF   ; 
- D 0 - I - 0x001EEF 00:9EDF: FD        .byte $FD, $13, $FF   ; 



off_00_9EE2_4D:
- D 0 - I - 0x001EF2 00:9EE2: FF        .byte $FF   ; 
- D 0 - I - 0x001EF3 00:9EE3: C0 9E     .word off_FF_9EC0



off_00_9EE5_4E:
- D 0 - I - 0x001EF5 00:9EE5: FF        .byte $FF   ; 
- D 0 - I - 0x001EF6 00:9EE6: D1 9E     .word off_FF_9ED1



off_00_9EE8_4F:
off_FF_9EE8:
- D 0 - I - 0x001EF8 00:9EE8: 05        .byte $05   ; counter
- D 0 - I - 0x001EF9 00:9EE9: 01        .byte $01   ; spr_A
- D 0 - I - 0x001EFA 00:9EEA: F6        .byte $F6, $59, $F4   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001EFD 00:9EED: FE        .byte $FE, $5B, $F4   ; 
- D 0 - I - 0x001F00 00:9EF0: 06        .byte $06, $5D, $F4   ; 
- D 0 - I - 0x001F03 00:9EF3: F5        .byte $F5, $27, $04   ; 
- D 0 - I - 0x001F06 00:9EF6: FD        .byte $FD, $29, $04   ; 



off_00_9EF9_50:
off_FF_9EF9:
- D 0 - I - 0x001F09 00:9EF9: 05        .byte $05   ; counter
- D 0 - I - 0x001F0A 00:9EFA: 01        .byte $01   ; spr_A
- D 0 - I - 0x001F0B 00:9EFB: F5        .byte $F5, $5F, $F4   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001F0E 00:9EFE: FD        .byte $FD, $61, $F4   ; 
- D 0 - I - 0x001F11 00:9F01: 05        .byte $05, $63, $F4   ; 
- D 0 - I - 0x001F14 00:9F04: F5        .byte $F5, $27, $04   ; 
- D 0 - I - 0x001F17 00:9F07: FD        .byte $FD, $29, $04   ; 



off_00_9F0A_51:
- D 0 - I - 0x001F1A 00:9F0A: FF        .byte $FF   ; 
- D 0 - I - 0x001F1B 00:9F0B: E8 9E     .word off_FF_9EE8



off_00_9F0D_52:
- D 0 - I - 0x001F1D 00:9F0D: FF        .byte $FF   ; 
- D 0 - I - 0x001F1E 00:9F0E: F9 9E     .word off_FF_9EF9



off_00_9F10_53:
off_FF_9F10:
- D 0 - I - 0x001F20 00:9F10: 02        .byte $02   ; counter
- D 0 - I - 0x001F21 00:9F11: 01        .byte $01   ; spr_A
- D 0 - I - 0x001F22 00:9F12: 00        .byte $00, $15, $F8   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001F25 00:9F15: F8        .byte $F8, $71, $F8   ; 



off_00_9F18_54:
off_FF_9F18:
- D 0 - I - 0x001F28 00:9F18: 02        .byte $02   ; counter
- D 0 - I - 0x001F29 00:9F19: 81        .byte $81   ; spr_A
- D 0 - I - 0x001F2A 00:9F1A: 00        .byte $00, $15, $F8   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001F2D 00:9F1D: F8        .byte $F8, $71, $F8   ; 



off_00_9F20_55:
- D 0 - I - 0x001F30 00:9F20: FF        .byte $FF   ; 
- D 0 - I - 0x001F31 00:9F21: 18 9F     .word off_FF_9F18



off_00_9F23_56:
- D 0 - I - 0x001F33 00:9F23: FF        .byte $FF   ; 
- D 0 - I - 0x001F34 00:9F24: 10 9F     .word off_FF_9F10



off_00_9F26_57:
off_FF_9F26:
- D 0 - I - 0x001F36 00:9F26: 03        .byte $03   ; counter
- D 0 - I - 0x001F37 00:9F27: 01        .byte $01   ; spr_A
- D 0 - I - 0x001F38 00:9F28: FB        .byte $FB, $17, $F7   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001F3B 00:9F2B: 03        .byte $03, $19, $F7   ; 
- D 0 - I - 0x001F3E 00:9F2E: F3        .byte $F3, $77, $F7   ; 



off_00_9F31_58:
off_FF_9F31:
- D 0 - I - 0x001F41 00:9F31: 06        .byte $06   ; counter
- D 0 - I - 0x001F42 00:9F32: 01        .byte $01   ; spr_A
- D 0 - I - 0x001F43 00:9F33: F0        .byte $F0, $1B, $04   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001F46 00:9F36: F8        .byte $F8, $1D, $04   ; 
- D 0 - I - 0x001F49 00:9F39: 00        .byte $00, $1F, $04   ; 
- D 0 - I - 0x001F4C 00:9F3C: 08        .byte $08, $21, $04   ; 
- D 0 - I - 0x001F4F 00:9F3F: F4        .byte $F4, $73, $F4   ; 
- D 0 - I - 0x001F52 00:9F42: FC        .byte $FC, $75, $F4   ; 



off_00_9F45_59:
- D 0 - I - 0x001F55 00:9F45: FF        .byte $FF   ; 
- D 0 - I - 0x001F56 00:9F46: 26 9F     .word off_FF_9F26



off_00_9F48_5A:
- D 0 - I - 0x001F58 00:9F48: FF        .byte $FF   ; 
- D 0 - I - 0x001F59 00:9F49: 31 9F     .word off_FF_9F31



off_00_9F4B_5B:
off_FF_9F4B:
- D 0 - I - 0x001F5B 00:9F4B: 04        .byte $04   ; counter
- D 0 - I - 0x001F5C 00:9F4C: 01        .byte $01   ; spr_A
- D 0 - I - 0x001F5D 00:9F4D: F9        .byte $F9, $7B, $F1   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001F60 00:9F50: 01        .byte $01, $7D, $F1   ; 
- D 0 - I - 0x001F63 00:9F53: F9        .byte $F9, $23, $01   ; 
- D 0 - I - 0x001F66 00:9F56: 01        .byte $01, $25, $01   ; 



off_00_9F59_5C:
- D 0 - I - 0x001F69 00:9F59: FF        .byte $FF   ; 
- D 0 - I - 0x001F6A 00:9F5A: 4B 9F     .word off_FF_9F4B



off_00_9F5C_5D:
off_00_9F5C_5E:
off_00_9F5C_5F:
off_00_9F5C_60:
off_00_9F5C_61:
off_FF_9F5C:
- D 0 - I - 0x001F6C 00:9F5C: 82        .byte $82   ; counter
- D 0 - I - 0x001F6D 00:9F5D: 01        .byte $01   ; spr_A
- D 0 - I - 0x001F6E 00:9F5E: F5        .byte $F5, $01, $FF   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001F71 00:9F61: FD        .byte $FD, $03, $FF   ; 

- D 0 - I - 0x001F74 00:9F64: 03        .byte $03   ; 
- D 0 - I - 0x001F75 00:9F65: 00        .byte $00   ; 
- D 0 - I - 0x001F76 00:9F66: F5        .byte $F5, $5D, $EF   ; 
- D 0 - I - 0x001F79 00:9F69: FD        .byte $FD, $5F, $EF   ; 
- D 0 - I - 0x001F7C 00:9F6C: 05        .byte $05, $61, $EF   ; 



off_00_9F6F_62:
off_FF_9F6F:
- D 0 - I - 0x001F7F 00:9F6F: 82        .byte $82   ; counter
- D 0 - I - 0x001F80 00:9F70: 01        .byte $01   ; spr_A
- D 0 - I - 0x001F81 00:9F71: F5        .byte $F5, $05, $FF   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001F84 00:9F74: FD        .byte $FD, $07, $FF   ; 

- D 0 - I - 0x001F87 00:9F77: 03        .byte $03   ; 
- D 0 - I - 0x001F88 00:9F78: 00        .byte $00   ; 
- D 0 - I - 0x001F89 00:9F79: F5        .byte $F5, $63, $EF   ; 
- D 0 - I - 0x001F8C 00:9F7C: FD        .byte $FD, $65, $EF   ; 
- D 0 - I - 0x001F8F 00:9F7F: 05        .byte $05, $67, $EF   ; 



off_00_9F82_63:
off_FF_9F82:
- D 0 - I - 0x001F92 00:9F82: 82        .byte $82   ; counter
- D 0 - I - 0x001F93 00:9F83: 01        .byte $01   ; spr_A
- D 0 - I - 0x001F94 00:9F84: F7        .byte $F7, $09, $FF   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001F97 00:9F87: FF        .byte $FF, $0B, $FF   ; 

- D 0 - I - 0x001F9A 00:9F8A: 03        .byte $03   ; 
- D 0 - I - 0x001F9B 00:9F8B: 00        .byte $00   ; 
- D 0 - I - 0x001F9C 00:9F8C: F8        .byte $F8, $5D, $EF   ; 
- D 0 - I - 0x001F9F 00:9F8F: 00        .byte $00, $5F, $EF   ; 
- D 0 - I - 0x001FA2 00:9F92: 08        .byte $08, $61, $EF   ; 



off_00_9F95_64:
off_FF_9F95:
- D 0 - I - 0x001FA5 00:9F95: 82        .byte $82   ; counter
- D 0 - I - 0x001FA6 00:9F96: 01        .byte $01   ; spr_A
- D 0 - I - 0x001FA7 00:9F97: F6        .byte $F6, $0D, $FF   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001FAA 00:9F9A: FE        .byte $FE, $0F, $FF   ; 

- D 0 - I - 0x001FAD 00:9F9D: 03        .byte $03   ; 
- D 0 - I - 0x001FAE 00:9F9E: 00        .byte $00   ; 
- D 0 - I - 0x001FAF 00:9F9F: F5        .byte $F5, $63, $EF   ; 
- D 0 - I - 0x001FB2 00:9FA2: FD        .byte $FD, $65, $EF   ; 
- D 0 - I - 0x001FB5 00:9FA5: 05        .byte $05, $67, $EF   ; 



off_00_9FA8_65:
- D 0 - I - 0x001FB8 00:9FA8: FF        .byte $FF   ; 
- D 0 - I - 0x001FB9 00:9FA9: 5C 9F     .word off_FF_9F5C



off_00_9FAB_66:
- D 0 - I - 0x001FBB 00:9FAB: FF        .byte $FF   ; 
- D 0 - I - 0x001FBC 00:9FAC: 6F 9F     .word off_FF_9F6F



off_00_9FAE_67:
- D 0 - I - 0x001FBE 00:9FAE: FF        .byte $FF   ; 
- D 0 - I - 0x001FBF 00:9FAF: 82 9F     .word off_FF_9F82



off_00_9FB1_68:
- D 0 - I - 0x001FC1 00:9FB1: FF        .byte $FF   ; 
- D 0 - I - 0x001FC2 00:9FB2: 95 9F     .word off_FF_9F95



off_00_9FB4_69:
off_FF_9FB4:
- D 0 - I - 0x001FC4 00:9FB4: 82        .byte $82   ; counter
- D 0 - I - 0x001FC5 00:9FB5: 01        .byte $01   ; spr_A
- D 0 - I - 0x001FC6 00:9FB6: F5        .byte $F5, $01, $FF   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001FC9 00:9FB9: FD        .byte $FD, $03, $FF   ; 

- D 0 - I - 0x001FCC 00:9FBC: 04        .byte $04   ; 
- D 0 - I - 0x001FCD 00:9FBD: 00        .byte $00   ; 
- D 0 - I - 0x001FCE 00:9FBE: F2        .byte $F2, $6D, $EF   ; 
- D 0 - I - 0x001FD1 00:9FC1: FA        .byte $FA, $6F, $EF   ; 
- D 0 - I - 0x001FD4 00:9FC4: FA        .byte $FA, $69, $DF   ; 
- D 0 - I - 0x001FD7 00:9FC7: 02        .byte $02, $6B, $E5   ; 



off_00_9FCA_6A:
off_FF_9FCA:
- D 0 - I - 0x001FDA 00:9FCA: 84        .byte $84   ; counter
- D 0 - I - 0x001FDB 00:9FCB: 00        .byte $00   ; spr_A
- D 0 - I - 0x001FDC 00:9FCC: F3        .byte $F3, $6D, $F0   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001FDF 00:9FCF: FB        .byte $FB, $6F, $F0   ; 
- D 0 - I - 0x001FE2 00:9FD2: FB        .byte $FB, $69, $E0   ; 
- D 0 - I - 0x001FE5 00:9FD5: 03        .byte $03, $6B, $E6   ; 

- D 0 - I - 0x001FE8 00:9FD8: 02        .byte $02   ; 
- D 0 - I - 0x001FE9 00:9FD9: 01        .byte $01   ; 
- D 0 - I - 0x001FEA 00:9FDA: F5        .byte $F5, $05, $FF   ; 
- D 0 - I - 0x001FED 00:9FDD: FD        .byte $FD, $07, $FF   ; 



off_00_9FE0_6B:
off_FF_9FE0:
- D 0 - I - 0x001FF0 00:9FE0: 84        .byte $84   ; counter
- D 0 - I - 0x001FF1 00:9FE1: 00        .byte $00   ; spr_A
- D 0 - I - 0x001FF2 00:9FE2: F5        .byte $F5, $6D, $EF   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001FF5 00:9FE5: FD        .byte $FD, $6F, $EF   ; 
- D 0 - I - 0x001FF8 00:9FE8: FD        .byte $FD, $69, $DF   ; 
- D 0 - I - 0x001FFB 00:9FEB: 05        .byte $05, $6B, $E5   ; 

- D 0 - I - 0x001FFE 00:9FEE: 02        .byte $02   ; 
- D 0 - I - 0x001FFF 00:9FEF: 01        .byte $01   ; 
- D 0 - I - 0x002000 00:9FF0: F7        .byte $F7, $09, $FF   ; 
- D 0 - I - 0x002003 00:9FF3: FF        .byte $FF, $0B, $FF   ; 



off_00_9FF6_6C:
off_FF_9FF6:
- D 0 - I - 0x002006 00:9FF6: 84        .byte $84   ; counter
- D 0 - I - 0x002007 00:9FF7: 00        .byte $00   ; spr_A
- D 0 - I - 0x002008 00:9FF8: F3        .byte $F3, $6D, $F0   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x00200B 00:9FFB: FB        .byte $FB, $6F, $F0   ; 
- D 0 - I - 0x00200E 00:9FFE: FB        .byte $FB, $69, $E0   ; 
- D 1 - I - 0x002011 00:A001: 03        .byte $03, $6B, $E6   ; 

- D 1 - I - 0x002014 00:A004: 02        .byte $02   ; 
- D 1 - I - 0x002015 00:A005: 01        .byte $01   ; 
- D 1 - I - 0x002016 00:A006: F6        .byte $F6, $0D, $FF   ; 
- D 1 - I - 0x002019 00:A009: FE        .byte $FE, $0F, $FF   ; 



off_00_A00C_6D:
- D 1 - I - 0x00201C 00:A00C: FF        .byte $FF   ; 
- D 1 - I - 0x00201D 00:A00D: B4 9F     .word off_FF_9FB4



off_00_A00F_6E:
- D 1 - I - 0x00201F 00:A00F: FF        .byte $FF   ; 
- D 1 - I - 0x002020 00:A010: CA 9F     .word off_FF_9FCA



off_00_A012_6F:
- D 1 - I - 0x002022 00:A012: FF        .byte $FF   ; 
- D 1 - I - 0x002023 00:A013: E0 9F     .word off_FF_9FE0



off_00_A015_70:
- D 1 - I - 0x002025 00:A015: FF        .byte $FF   ; 
- D 1 - I - 0x002026 00:A016: F6 9F     .word off_FF_9FF6



off_00_A018_71:
off_FF_A018:
- D 1 - I - 0x002028 00:A018: 82        .byte $82   ; counter
- D 1 - I - 0x002029 00:A019: 41        .byte $41   ; spr_A
- D 1 - I - 0x00202A 00:A01A: FC        .byte $FC, $CD, $FF   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x00202D 00:A01D: F4        .byte $F4, $CF, $FF   ; 

- D 1 - I - 0x002030 00:A020: 03        .byte $03   ; counter
- D 1 - I - 0x002031 00:A021: 00        .byte $00   ; spr_A
- D 1 - I - 0x002032 00:A022: F8        .byte $F8, $71, $DF   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002035 00:A025: F8        .byte $F8, $73, $EF   ; 
- D 1 - I - 0x002038 00:A028: F0        .byte $F0, $6D, $EF   ; 



off_00_A02B_72:
off_FF_A02B:
- D 1 - I - 0x00203B 00:A02B: 82        .byte $82   ; counter
- D 1 - I - 0x00203C 00:A02C: 41        .byte $41   ; spr_A
- D 1 - I - 0x00203D 00:A02D: FC        .byte $FC, $CD, $FF   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002040 00:A030: F4        .byte $F4, $CF, $FF   ; 

- D 1 - I - 0x002043 00:A033: 03        .byte $03   ; counter
- D 1 - I - 0x002044 00:A034: 00        .byte $00   ; spr_A
- D 1 - I - 0x002045 00:A035: F8        .byte $F8, $73, $F0   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002048 00:A038: F0        .byte $F0, $6D, $EE   ; 
- D 1 - I - 0x00204B 00:A03B: F8        .byte $F8, $71, $E0   ; 



off_00_A03E_73:
- D 1 - I - 0x00204E 00:A03E: FF        .byte $FF   ; 
- D 1 - I - 0x00204F 00:A03F: 18 A0     .word off_FF_A018



off_00_A041_74:
- D 1 - I - 0x002051 00:A041: FF        .byte $FF   ; 
- D 1 - I - 0x002052 00:A042: 2B A0     .word off_FF_A02B



off_00_A044_75:
off_FF_A044:
- D 1 - I - 0x002054 00:A044: 82        .byte $82   ; counter
- D 1 - I - 0x002055 00:A045: 01        .byte $01   ; spr_A
- D 1 - I - 0x002056 00:A046: F5        .byte $F5, $11, $FF   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002059 00:A049: FD        .byte $FD, $13, $FF   ; 

- D 1 - I - 0x00205C 00:A04C: 03        .byte $03   ; 
- D 1 - I - 0x00205D 00:A04D: 00        .byte $00   ; 
- D 1 - I - 0x00205E 00:A04E: F4        .byte $F4, $5D, $EF   ; 
- D 1 - I - 0x002061 00:A051: FC        .byte $FC, $5F, $EF   ; 
- D 1 - I - 0x002064 00:A054: 04        .byte $04, $61, $EF   ; 



off_00_A057_76:
off_FF_A057:
- D 1 - I - 0x002067 00:A057: 82        .byte $82   ; counter
- D 1 - I - 0x002068 00:A058: 01        .byte $01   ; spr_A
- D 1 - I - 0x002069 00:A059: F5        .byte $F5, $11, $FF   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x00206C 00:A05C: FD        .byte $FD, $13, $FF   ; 

- D 1 - I - 0x00206F 00:A05F: 03        .byte $03   ; 
- D 1 - I - 0x002070 00:A060: 00        .byte $00   ; 
- D 1 - I - 0x002071 00:A061: F2        .byte $F2, $63, $EF   ; 
- D 1 - I - 0x002074 00:A064: FA        .byte $FA, $65, $EF   ; 
- D 1 - I - 0x002077 00:A067: 02        .byte $02, $67, $EF   ; 



off_00_A06A_77:
- D 1 - I - 0x00207A 00:A06A: FF        .byte $FF   ; 
- D 1 - I - 0x00207B 00:A06B: 44 A0     .word off_FF_A044



off_00_A06D_78:
- D 1 - I - 0x00207D 00:A06D: FF        .byte $FF   ; 
- D 1 - I - 0x00207E 00:A06E: 57 A0     .word off_FF_A057



off_00_A070_79:
off_FF_A070:
- D 1 - I - 0x002080 00:A070: 83        .byte $83   ; counter
- D 1 - I - 0x002081 00:A071: 40        .byte $40   ; spr_A
- D 1 - I - 0x002082 00:A072: FD        .byte $FD, $5D, $F3   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002085 00:A075: F5        .byte $F5, $5F, $F3   ; 
- D 1 - I - 0x002088 00:A078: ED        .byte $ED, $61, $F3   ; 

- D 1 - I - 0x00208B 00:A07B: 02        .byte $02   ; 
- D 1 - I - 0x00208C 00:A07C: 41        .byte $41   ; 
- D 1 - I - 0x00208D 00:A07D: FC        .byte $FC, $27, $03   ; 
- D 1 - I - 0x002090 00:A080: F4        .byte $F4, $29, $03   ; 



off_00_A083_7A:
off_FF_A083:
- D 1 - I - 0x002093 00:A083: 83        .byte $83   ; counter
- D 1 - I - 0x002094 00:A084: 40        .byte $40   ; spr_A
- D 1 - I - 0x002095 00:A085: FF        .byte $FF, $63, $F3   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002098 00:A088: F7        .byte $F7, $65, $F3   ; 
- D 1 - I - 0x00209B 00:A08B: EF        .byte $EF, $67, $F3   ; 

- D 1 - I - 0x00209E 00:A08E: 02        .byte $02   ; 
- D 1 - I - 0x00209F 00:A08F: 41        .byte $41   ; 
- D 1 - I - 0x0020A0 00:A090: FC        .byte $FC, $27, $03   ; 
- D 1 - I - 0x0020A3 00:A093: F4        .byte $F4, $29, $03   ; 



off_00_A096_7B:
- D 1 - I - 0x0020A6 00:A096: FF        .byte $FF   ; 
- D 1 - I - 0x0020A7 00:A097: 70 A0     .word off_FF_A070



off_00_A099_7C:
- D 1 - I - 0x0020A9 00:A099: FF        .byte $FF   ; 
- D 1 - I - 0x0020AA 00:A09A: 83 A0     .word off_FF_A083



off_00_A09C_7D:
off_FF_A09C:
- D 1 - I - 0x0020AC 00:A09C: 81        .byte $81   ; counter
- D 1 - I - 0x0020AD 00:A09D: 01        .byte $01   ; spr_A
- D 1 - I - 0x0020AE 00:A09E: 00        .byte $00, $15, $F9   ; spr_X, spr_T, spr_Y

- D 1 - I - 0x0020B1 00:A0A1: 01        .byte $01   ; 
- D 1 - I - 0x0020B2 00:A0A2: 00        .byte $00   ; 
- D 1 - I - 0x0020B3 00:A0A3: F8        .byte $F8, $75, $F9   ; 



off_00_A0A6_7E:
off_FF_A0A6:
- D 1 - I - 0x0020B6 00:A0A6: 81        .byte $81   ; counter
- D 1 - I - 0x0020B7 00:A0A7: 81        .byte $81   ; spr_A
- D 1 - I - 0x0020B8 00:A0A8: 00        .byte $00, $15, $F9   ; spr_X, spr_T, spr_Y

- D 1 - I - 0x0020BB 00:A0AB: 01        .byte $01   ; 
- D 1 - I - 0x0020BC 00:A0AC: 80        .byte $80   ; 
- D 1 - I - 0x0020BD 00:A0AD: F8        .byte $F8, $75, $F9   ; 



off_00_A0B0_7F:
- D 1 - I - 0x0020C0 00:A0B0: FF        .byte $FF   ; 
- D 1 - I - 0x0020C1 00:A0B1: A6 A0     .word off_FF_A0A6



off_00_A0B3_80:
- D 1 - I - 0x0020C3 00:A0B3: FF        .byte $FF   ; 
- D 1 - I - 0x0020C4 00:A0B4: 9C A0     .word off_FF_A09C



off_00_A0B6_81:
off_00_A0B6_82:
off_00_A0B6_83:
off_00_A0B6_84:
off_00_A0B6_85:
off_FF_A0B6:
- D 1 - I - 0x0020C6 00:A0B6: 82        .byte $82   ; counter
- D 1 - I - 0x0020C7 00:A0B7: 01        .byte $01   ; spr_A
- D 1 - I - 0x0020C8 00:A0B8: F9        .byte $F9, $23, $01   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0020CB 00:A0BB: 01        .byte $01, $25, $01   ; 

- D 1 - I - 0x0020CE 00:A0BE: 02        .byte $02   ; 
- D 1 - I - 0x0020CF 00:A0BF: 00        .byte $00   ; 
- D 1 - I - 0x0020D0 00:A0C0: F9        .byte $F9, $7D, $F1   ; 
- D 1 - I - 0x0020D3 00:A0C3: 01        .byte $01, $7F, $F1   ; 



off_00_A0C6_86:
- D 1 - I - 0x0020D6 00:A0C6: FF        .byte $FF   ; 
- D 1 - I - 0x0020D7 00:A0C7: B6 A0     .word off_FF_A0B6



off_00_A0C9_87:
off_FF_A0C9:
- D 1 - I - 0x0020D9 00:A0C9: 82        .byte $82   ; counter
- D 1 - I - 0x0020DA 00:A0CA: 01        .byte $01   ; spr_A
- D 1 - I - 0x0020DB 00:A0CB: FC        .byte $FC, $17, $F9   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0020DE 00:A0CE: 04        .byte $04, $19, $F9   ; 

- D 1 - I - 0x0020E1 00:A0D1: 01        .byte $01   ; 
- D 1 - I - 0x0020E2 00:A0D2: 00        .byte $00   ; 
- D 1 - I - 0x0020E3 00:A0D3: F4        .byte $F4, $7B, $F9   ; 



off_00_A0D6_88:
off_FF_A0D6:
- D 1 - I - 0x0020E6 00:A0D6: 81        .byte $81   ; counter
- D 1 - I - 0x0020E7 00:A0D7: 00        .byte $00   ; spr_A
- D 1 - I - 0x0020E8 00:A0D8: F4        .byte $F4, $1B, $04   ; spr_X, spr_T, spr_Y

- D 1 - I - 0x0020EB 00:A0DB: 83        .byte $83   ; 
- D 1 - I - 0x0020EC 00:A0DC: 01        .byte $01   ; 
- D 1 - I - 0x0020ED 00:A0DD: FC        .byte $FC, $1D, $04   ; 
- D 1 - I - 0x0020F0 00:A0E0: 04        .byte $04, $1F, $04   ; 
- D 1 - I - 0x0020F3 00:A0E3: 0C        .byte $0C, $21, $04   ; 

- D 1 - I - 0x0020F6 00:A0E6: 02        .byte $02   ; 
- D 1 - I - 0x0020F7 00:A0E7: 00        .byte $00   ; 
- D 1 - I - 0x0020F8 00:A0E8: F8        .byte $F8, $77, $F4   ; 
- D 1 - I - 0x0020FB 00:A0EB: 00        .byte $00, $79, $F4   ; 



off_00_A0EE_89:
- - - - - - 0x0020FE 00:A0EE: FF        .byte $FF   ; 
- - - - - - 0x0020FF 00:A0EF: C9 A0     .word off_FF_A0C9



off_00_A0F1_8A:
- - - - - - 0x002101 00:A0F1: FF        .byte $FF   ; 
- - - - - - 0x002102 00:A0F2: D6 A0     .word off_FF_A0D6



off_00_A0F4_8B:
off_FF_A0F4:
- D 1 - I - 0x002104 00:A0F4: 05        .byte $05   ; counter
- D 1 - I - 0x002105 00:A0F5: 00        .byte $00   ; spr_A
- D 1 - I - 0x002106 00:A0F6: F5        .byte $F5, $59, $EF   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002109 00:A0F9: FD        .byte $FD, $5B, $EF   ; 
- D 1 - I - 0x00210C 00:A0FC: F5        .byte $F5, $01, $FF   ; 
- D 1 - I - 0x00210F 00:A0FF: FD        .byte $FD, $03, $FF   ; 
- D 1 - I - 0x002112 00:A102: 05        .byte $05, $5D, $EF   ; 



off_00_A105_8C:
off_FF_A105:
- D 1 - I - 0x002115 00:A105: 05        .byte $05   ; counter
- D 1 - I - 0x002116 00:A106: 00        .byte $00   ; spr_A
- D 1 - I - 0x002117 00:A107: F5        .byte $F5, $05, $FF   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x00211A 00:A10A: F6        .byte $F6, $59, $F0   ; 
- D 1 - I - 0x00211D 00:A10D: FE        .byte $FE, $5B, $F0   ; 
- D 1 - I - 0x002120 00:A110: 06        .byte $06, $5D, $F0   ; 
- D 1 - I - 0x002123 00:A113: FD        .byte $FD, $07, $FF   ; 



off_00_A116_8D:
off_FF_A116:
- D 1 - I - 0x002126 00:A116: 05        .byte $05   ; counter
- D 1 - I - 0x002127 00:A117: 00        .byte $00   ; spr_A
- D 1 - I - 0x002128 00:A118: F7        .byte $F7, $09, $FF   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x00212B 00:A11B: FF        .byte $FF, $0B, $FF   ; 
- D 1 - I - 0x00212E 00:A11E: F8        .byte $F8, $59, $EF   ; 
- D 1 - I - 0x002131 00:A121: 00        .byte $00, $5B, $EF   ; 
- D 1 - I - 0x002134 00:A124: 08        .byte $08, $5D, $EF   ; 



off_00_A127_8E:
off_FF_A127:
- D 1 - I - 0x002137 00:A127: 05        .byte $05   ; counter
- D 1 - I - 0x002138 00:A128: 00        .byte $00   ; spr_A
- D 1 - I - 0x002139 00:A129: F6        .byte $F6, $0D, $FF   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x00213C 00:A12C: F6        .byte $F6, $59, $F0   ; 
- D 1 - I - 0x00213F 00:A12F: FE        .byte $FE, $5B, $F0   ; 
- D 1 - I - 0x002142 00:A132: 06        .byte $06, $5D, $F0   ; 
- D 1 - I - 0x002145 00:A135: FE        .byte $FE, $0F, $FF   ; 



off_00_A138_8F:
- D 1 - I - 0x002148 00:A138: FF        .byte $FF   ; 
- D 1 - I - 0x002149 00:A139: F4 A0     .word off_FF_A0F4



off_00_A13B_90:
- D 1 - I - 0x00214B 00:A13B: FF        .byte $FF   ; 
- D 1 - I - 0x00214C 00:A13C: 05 A1     .word off_FF_A105



off_00_A13E_91:
- D 1 - I - 0x00214E 00:A13E: FF        .byte $FF   ; 
- D 1 - I - 0x00214F 00:A13F: 16 A1     .word off_FF_A116



off_00_A141_92:
- D 1 - I - 0x002151 00:A141: FF        .byte $FF   ; 
- D 1 - I - 0x002152 00:A142: 27 A1     .word off_FF_A127



off_00_A144_93:
off_FF_A144:
- D 1 - I - 0x002154 00:A144: 05        .byte $05   ; counter
- D 1 - I - 0x002155 00:A145: 00        .byte $00   ; spr_A
- D 1 - I - 0x002156 00:A146: F5        .byte $F5, $59, $EF   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002159 00:A149: FD        .byte $FD, $5B, $EF   ; 
- D 1 - I - 0x00215C 00:A14C: F5        .byte $F5, $01, $FF   ; 
- D 1 - I - 0x00215F 00:A14F: FD        .byte $FD, $03, $FF   ; 
- D 1 - I - 0x002162 00:A152: 05        .byte $05, $61, $ED   ; 



off_00_A155_94:
off_FF_A155:
- D 1 - I - 0x002165 00:A155: 05        .byte $05   ; counter
- D 1 - I - 0x002166 00:A156: 00        .byte $00   ; spr_A
- D 1 - I - 0x002167 00:A157: F5        .byte $F5, $05, $FF   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x00216A 00:A15A: F6        .byte $F6, $59, $F0   ; 
- D 1 - I - 0x00216D 00:A15D: FE        .byte $FE, $5B, $F0   ; 
- D 1 - I - 0x002170 00:A160: FD        .byte $FD, $07, $FF   ; 
- D 1 - I - 0x002173 00:A163: 06        .byte $06, $61, $EE   ; 



off_00_A166_95:
off_FF_A166:
- - - - - - 0x002176 00:A166: 05        .byte $05   ; counter
- - - - - - 0x002177 00:A167: 00        .byte $00   ; spr_A
- - - - - - 0x002178 00:A168: F7        .byte $F7, $09, $FF   ; spr_X, spr_T, spr_Y
- - - - - - 0x00217B 00:A16B: FF        .byte $FF, $0B, $FF   ; 
- - - - - - 0x00217E 00:A16E: F8        .byte $F8, $59, $EF   ; 
- - - - - - 0x002181 00:A171: 00        .byte $00, $5B, $EF   ; 
- - - - - - 0x002184 00:A174: 08        .byte $08, $61, $ED   ; 



off_00_A177_96:
off_FF_A177:
- - - - - - 0x002187 00:A177: 05        .byte $05   ; counter
- - - - - - 0x002188 00:A178: 00        .byte $00   ; spr_A
- - - - - - 0x002189 00:A179: F6        .byte $F6, $0D, $FF   ; spr_X, spr_T, spr_Y
- - - - - - 0x00218C 00:A17C: F6        .byte $F6, $59, $F0   ; 
- - - - - - 0x00218F 00:A17F: FE        .byte $FE, $5B, $F0   ; 
- - - - - - 0x002192 00:A182: FE        .byte $FE, $0F, $FF   ; 
- - - - - - 0x002195 00:A185: 06        .byte $06, $61, $EE   ; 



off_00_A188_97:
- D 1 - I - 0x002198 00:A188: FF        .byte $FF   ; 
- D 1 - I - 0x002199 00:A189: 44 A1     .word off_FF_A144



off_00_A18B_98:
- D 1 - I - 0x00219B 00:A18B: FF        .byte $FF   ; 
- D 1 - I - 0x00219C 00:A18C: 55 A1     .word off_FF_A155



off_00_A18E_99:
- - - - - - 0x00219E 00:A18E: FF        .byte $FF   ; 
- - - - - - 0x00219F 00:A18F: 66 A1     .word off_FF_A166



off_00_A191_9A:
- - - - - - 0x0021A1 00:A191: FF        .byte $FF   ; 
- - - - - - 0x0021A2 00:A192: 77 A1     .word off_FF_A177



off_00_A194_9B:
off_FF_A194:
- D 1 - I - 0x0021A4 00:A194: 82        .byte $82   ; counter
- D 1 - I - 0x0021A5 00:A195: 00        .byte $00   ; spr_A
- D 1 - I - 0x0021A6 00:A196: F4        .byte $F4, $63, $EF   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0021A9 00:A199: FC        .byte $FC, $67, $EF   ; 

- D 1 - I - 0x0021AC 00:A19C: 81        .byte $81   ; 
- D 1 - I - 0x0021AD 00:A19D: 01        .byte $01   ; 
- D 1 - I - 0x0021AE 00:A19E: FC        .byte $FC, $65, $DF   ; 

- D 1 - I - 0x0021B1 00:A1A1: 02        .byte $02   ; 
- D 1 - I - 0x0021B2 00:A1A2: 40        .byte $40   ; 
- D 1 - I - 0x0021B3 00:A1A3: FC        .byte $FC, $CD, $FF   ; 
- D 1 - I - 0x0021B6 00:A1A6: F4        .byte $F4, $CF, $FF   ; 



off_00_A1A9_9C:
off_FF_A1A9:
- D 1 - I - 0x0021B9 00:A1A9: 82        .byte $82   ; counter
- D 1 - I - 0x0021BA 00:A1AA: 40        .byte $40   ; spr_A
- D 1 - I - 0x0021BB 00:A1AB: FC        .byte $FC, $CD, $FF   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0021BE 00:A1AE: F4        .byte $F4, $CF, $FF   ; 

- D 1 - I - 0x0021C1 00:A1B1: 82        .byte $82   ; 
- D 1 - I - 0x0021C2 00:A1B2: 00        .byte $00   ; 
- D 1 - I - 0x0021C3 00:A1B3: F3        .byte $F3, $63, $EF   ; 
- D 1 - I - 0x0021C6 00:A1B6: FB        .byte $FB, $67, $F0   ; 

- D 1 - I - 0x0021C9 00:A1B9: 01        .byte $01   ; 
- D 1 - I - 0x0021CA 00:A1BA: 01        .byte $01   ; 
- D 1 - I - 0x0021CB 00:A1BB: FB        .byte $FB, $65, $E0   ; 



off_00_A1BE_9D:
- D 1 - I - 0x0021CE 00:A1BE: FF        .byte $FF   ; 
- D 1 - I - 0x0021CF 00:A1BF: 94 A1     .word off_FF_A194



off_00_A1C1_9E:
- D 1 - I - 0x0021D1 00:A1C1: FF        .byte $FF   ; 
- D 1 - I - 0x0021D2 00:A1C2: A9 A1     .word off_FF_A1A9



off_00_A1C4_9F:
off_FF_A1C4:
- D 1 - I - 0x0021D4 00:A1C4: 05        .byte $05   ; counter
- D 1 - I - 0x0021D5 00:A1C5: 00        .byte $00   ; spr_A
- D 1 - I - 0x0021D6 00:A1C6: F4        .byte $F4, $27, $03   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0021D9 00:A1C9: FC        .byte $FC, $29, $03   ; 
- D 1 - I - 0x0021DC 00:A1CC: F4        .byte $F4, $59, $F3   ; 
- D 1 - I - 0x0021DF 00:A1CF: FC        .byte $FC, $5B, $F3   ; 
- D 1 - I - 0x0021E2 00:A1D2: 04        .byte $04, $5D, $F3   ; 



off_00_A1D5_A0:
off_FF_A1D5:
- D 1 - I - 0x0021E5 00:A1D5: 05        .byte $05   ; counter
- D 1 - I - 0x0021E6 00:A1D6: 00        .byte $00   ; spr_A
- D 1 - I - 0x0021E7 00:A1D7: F4        .byte $F4, $27, $03   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0021EA 00:A1DA: FC        .byte $FC, $29, $03   ; 
- D 1 - I - 0x0021ED 00:A1DD: F3        .byte $F3, $59, $F3   ; 
- D 1 - I - 0x0021F0 00:A1E0: FB        .byte $FB, $5B, $F3   ; 
- D 1 - I - 0x0021F3 00:A1E3: 03        .byte $03, $61, $F2   ; 



off_00_A1E6_A1:
- D 1 - I - 0x0021F6 00:A1E6: FF        .byte $FF   ; 
- D 1 - I - 0x0021F7 00:A1E7: C4 A1     .word off_FF_A1C4



off_00_A1E9_A2:
- D 1 - I - 0x0021F9 00:A1E9: FF        .byte $FF   ; 
- D 1 - I - 0x0021FA 00:A1EA: D5 A1     .word off_FF_A1D5



off_00_A1EC_A3:
off_FF_A1EC:
- D 1 - I - 0x0021FC 00:A1EC: 04        .byte $04   ; counter
- D 1 - I - 0x0021FD 00:A1ED: 00        .byte $00   ; spr_A
- D 1 - I - 0x0021FE 00:A1EE: F4        .byte $F4, $79, $F9   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002201 00:A1F1: FC        .byte $FC, $7B, $F9   ; 
- D 1 - I - 0x002204 00:A1F4: 04        .byte $04, $7D, $F9   ; 
- D 1 - I - 0x002207 00:A1F7: 0C        .byte $0C, $7F, $F9   ; 



off_00_A1FA_A4:
off_FF_A1FA:
- D 1 - I - 0x00220A 00:A1FA: 04        .byte $04   ; counter
- D 1 - I - 0x00220B 00:A1FB: 00        .byte $00   ; spr_A
- D 1 - I - 0x00220C 00:A1FC: F4        .byte $F4, $79, $F9   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x00220F 00:A1FF: FC        .byte $FC, $7B, $F9   ; 
- D 1 - I - 0x002212 00:A202: 03        .byte $03, $7D, $F9   ; 
- D 1 - I - 0x002215 00:A205: 0B        .byte $0B, $7F, $F9   ; 



off_00_A208_A5:
- - - - - - 0x002218 00:A208: FF        .byte $FF   ; 
- - - - - - 0x002219 00:A209: EC A1     .word off_FF_A1EC



off_00_A20B_A6:
- D 1 - I - 0x00221B 00:A20B: FF        .byte $FF   ; 
- D 1 - I - 0x00221C 00:A20C: FA A1     .word off_FF_A1FA



off_00_A20E_A7:
off_FF_A20E:
- D 1 - I - 0x00221E 00:A20E: 04        .byte $04   ; counter
- D 1 - I - 0x00221F 00:A20F: 00        .byte $00   ; spr_A
- D 1 - I - 0x002220 00:A210: F5        .byte $F5, $01, $FF   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002223 00:A213: FD        .byte $FD, $03, $FF   ; 
- D 1 - I - 0x002226 00:A216: FF        .byte $FF, $6B, $F0   ; 
- D 1 - I - 0x002229 00:A219: F7        .byte $F7, $69, $F0   ; 



off_00_A21C_A8:
off_FF_A21C:
- D 1 - I - 0x00222C 00:A21C: 04        .byte $04   ; counter
- D 1 - I - 0x00222D 00:A21D: 00        .byte $00   ; spr_A
- D 1 - I - 0x00222E 00:A21E: F5        .byte $F5, $05, $FF   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002231 00:A221: FD        .byte $FD, $07, $FF   ; 
- D 1 - I - 0x002234 00:A224: 00        .byte $00, $6B, $F1   ; 
- D 1 - I - 0x002237 00:A227: F8        .byte $F8, $69, $F1   ; 



off_00_A22A_A9:
off_FF_A22A:
- D 1 - I - 0x00223A 00:A22A: 04        .byte $04   ; counter
- D 1 - I - 0x00223B 00:A22B: 00        .byte $00   ; spr_A
- D 1 - I - 0x00223C 00:A22C: F7        .byte $F7, $09, $FF   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x00223F 00:A22F: FF        .byte $FF, $0B, $FF   ; 
- D 1 - I - 0x002242 00:A232: 02        .byte $02, $6B, $F0   ; 
- D 1 - I - 0x002245 00:A235: FA        .byte $FA, $71, $F0   ; 



off_00_A238_AA:
off_FF_A238:
- D 1 - I - 0x002248 00:A238: 04        .byte $04   ; counter
- D 1 - I - 0x002249 00:A239: 00        .byte $00   ; spr_A
- D 1 - I - 0x00224A 00:A23A: F6        .byte $F6, $0D, $FF   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x00224D 00:A23D: FE        .byte $FE, $0F, $FF   ; 
- D 1 - I - 0x002250 00:A240: 00        .byte $00, $6B, $F1   ; 
- D 1 - I - 0x002253 00:A243: F8        .byte $F8, $71, $F1   ; 



off_00_A246_AB:
- D 1 - I - 0x002256 00:A246: FF        .byte $FF   ; 
- D 1 - I - 0x002257 00:A247: 0E A2     .word off_FF_A20E



off_00_A249_AC:
- D 1 - I - 0x002259 00:A249: FF        .byte $FF   ; 
- D 1 - I - 0x00225A 00:A24A: 1C A2     .word off_FF_A21C



off_00_A24C_AD:
- D 1 - I - 0x00225C 00:A24C: FF        .byte $FF   ; 
- D 1 - I - 0x00225D 00:A24D: 2A A2     .word off_FF_A22A



off_00_A24F_AE:
- D 1 - I - 0x00225F 00:A24F: FF        .byte $FF   ; 
- D 1 - I - 0x002260 00:A250: 38 A2     .word off_FF_A238



off_00_A252_AF:
off_FF_A252:
- D 1 - I - 0x002262 00:A252: 04        .byte $04   ; counter
- D 1 - I - 0x002263 00:A253: 00        .byte $00   ; spr_A
- D 1 - I - 0x002264 00:A254: F6        .byte $F6, $69, $F5   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002267 00:A257: FE        .byte $FE, $6B, $F5   ; 
- D 1 - I - 0x00226A 00:A25A: F6        .byte $F6, $6D, $05   ; 
- D 1 - I - 0x00226D 00:A25D: FE        .byte $FE, $6F, $05   ; 



off_00_A260_B0:
off_FF_A260:
- D 1 - I - 0x002270 00:A260: 04        .byte $04   ; counter
- D 1 - I - 0x002271 00:A261: 00        .byte $00   ; spr_A
- D 1 - I - 0x002272 00:A262: F6        .byte $F6, $71, $F5   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002275 00:A265: FE        .byte $FE, $6B, $F5   ; 
- D 1 - I - 0x002278 00:A268: F6        .byte $F6, $6D, $05   ; 
- D 1 - I - 0x00227B 00:A26B: FE        .byte $FE, $6F, $05   ; 



off_00_A26E_B1:
- D 1 - I - 0x00227E 00:A26E: FF        .byte $FF   ; 
- D 1 - I - 0x00227F 00:A26F: 52 A2     .word off_FF_A252



off_00_A271_B2:
- D 1 - I - 0x002281 00:A271: FF        .byte $FF   ; 
- D 1 - I - 0x002282 00:A272: 60 A2     .word off_FF_A260



off_00_A274_B3:
off_FF_A274:
- D 1 - I - 0x002284 00:A274: 02        .byte $02   ; counter
- D 1 - I - 0x002285 00:A275: 00        .byte $00   ; spr_A
- D 1 - I - 0x002286 00:A276: F9        .byte $F9, $73, $F9   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002289 00:A279: 01        .byte $01, $15, $F9   ; 



off_00_A27C_B4:
off_FF_A27C:
- D 1 - I - 0x00228C 00:A27C: 02        .byte $02   ; counter
- D 1 - I - 0x00228D 00:A27D: 80        .byte $80   ; spr_A
- D 1 - I - 0x00228E 00:A27E: F9        .byte $F9, $73, $F9   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002291 00:A281: 01        .byte $01, $15, $F9   ; 



off_00_A284_B5:
- D 1 - I - 0x002294 00:A284: FF        .byte $FF   ; 
- D 1 - I - 0x002295 00:A285: 7C A2     .word off_FF_A27C



off_00_A287_B6:
- D 1 - I - 0x002297 00:A287: FF        .byte $FF   ; 
- D 1 - I - 0x002298 00:A288: 74 A2     .word off_FF_A274



off_00_A28A_B7:
off_00_A28A_B8:
off_00_A28A_B9:
off_00_A28A_BA:
off_00_A28A_BB:
off_FF_A28A:
- - - - - - 0x00229A 00:A28A: 04        .byte $04   ; counter
- - - - - - 0x00229B 00:A28B: 00        .byte $00   ; spr_A
- - - - - - 0x00229C 00:A28C: F9        .byte $F9, $5F, $F1   ; spr_X, spr_T, spr_Y
- - - - - - 0x00229F 00:A28F: 01        .byte $01, $CB, $F1   ; 
- - - - - - 0x0022A2 00:A292: F9        .byte $F9, $23, $01   ; 
- - - - - - 0x0022A5 00:A295: 01        .byte $01, $25, $01   ; 



off_00_A298_BC:
- - - - - - 0x0022A8 00:A298: FF        .byte $FF   ; 
- - - - - - 0x0022A9 00:A299: 8A A2     .word off_FF_A28A



off_00_A29B_BD:
off_FF_A29B:
- D 1 - I - 0x0022AB 00:A29B: 03        .byte $03   ; counter
- D 1 - I - 0x0022AC 00:A29C: 00        .byte $00   ; spr_A
- D 1 - I - 0x0022AD 00:A29D: FC        .byte $FC, $17, $F9   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0022B0 00:A2A0: 04        .byte $04, $19, $F9   ; 
- D 1 - I - 0x0022B3 00:A2A3: F4        .byte $F4, $63, $F9   ; 



off_00_A2A6_BE:
off_FF_A2A6:
- D 1 - I - 0x0022B6 00:A2A6: 06        .byte $06   ; counter
- D 1 - I - 0x0022B7 00:A2A7: 00        .byte $00   ; spr_A
- D 1 - I - 0x0022B8 00:A2A8: EF        .byte $EF, $1B, $04   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0022BB 00:A2AB: F7        .byte $F7, $1D, $04   ; 
- D 1 - I - 0x0022BE 00:A2AE: FF        .byte $FF, $1F, $04   ; 
- D 1 - I - 0x0022C1 00:A2B1: 07        .byte $07, $21, $04   ; 
- D 1 - I - 0x0022C4 00:A2B4: F3        .byte $F3, $75, $F4   ; 
- D 1 - I - 0x0022C7 00:A2B7: FB        .byte $FB, $77, $F4   ; 



off_00_A2BA_BF:
- - - - - - 0x0022CA 00:A2BA: FF        .byte $FF   ; 
- - - - - - 0x0022CB 00:A2BB: 9B A2     .word off_FF_A29B



off_00_A2BD_C0:
- - - - - - 0x0022CD 00:A2BD: FF        .byte $FF   ; 
- - - - - - 0x0022CE 00:A2BE: A6 A2     .word off_FF_A2A6



_off032_A2C0_04:
- - - - - - 0x0022D0 00:A2C0: EE A3     .word off_04_A3EE_00
- D 1 - I - 0x0022D2 00:A2C2: EE A3     .word off_04_A3EE_01
- D 1 - I - 0x0022D4 00:A2C4: FE A3     .word off_04_A3FE_02
- D 1 - I - 0x0022D6 00:A2C6: 0E A4     .word off_04_A40E_03
- D 1 - I - 0x0022D8 00:A2C8: 1E A4     .word off_04_A41E_04
- D 1 - I - 0x0022DA 00:A2CA: 2E A4     .word off_04_A42E_05
- D 1 - I - 0x0022DC 00:A2CC: 31 A4     .word off_04_A431_06
- D 1 - I - 0x0022DE 00:A2CE: 34 A4     .word off_04_A434_07
- D 1 - I - 0x0022E0 00:A2D0: 37 A4     .word off_04_A437_08
- D 1 - I - 0x0022E2 00:A2D2: 3A A4     .word off_04_A43A_09
- - - - - - 0x0022E4 00:A2D4: 4D A4     .word off_04_A44D_0A
- D 1 - I - 0x0022E6 00:A2D6: 60 A4     .word off_04_A460_0B
- D 1 - I - 0x0022E8 00:A2D8: 63 A4     .word off_04_A463_0C
- D 1 - I - 0x0022EA 00:A2DA: 66 A4     .word off_04_A466_0D
- D 1 - I - 0x0022EC 00:A2DC: 7B A4     .word off_04_A47B_0E
- D 1 - I - 0x0022EE 00:A2DE: 8E A4     .word off_04_A48E_0F
- D 1 - I - 0x0022F0 00:A2E0: 91 A4     .word off_04_A491_10
- D 1 - I - 0x0022F2 00:A2E2: 94 A4     .word off_04_A494_11
- D 1 - I - 0x0022F4 00:A2E4: A1 A4     .word off_04_A4A1_12
- D 1 - I - 0x0022F6 00:A2E6: B7 A4     .word off_04_A4B7_13
- D 1 - I - 0x0022F8 00:A2E8: BA A4     .word off_04_A4BA_14
- - - - - - 0x0022FA 00:A2EA: BD A4     .word off_04_A4BD_15
- - - - - - 0x0022FC 00:A2EC: CD A4     .word off_04_A4CD_16
- D 1 - I - 0x0022FE 00:A2EE: D0 A4     .word off_04_A4D0_17
- D 1 - I - 0x002300 00:A2F0: E1 A4     .word off_04_A4E1_18
- - - - - - 0x002302 00:A2F2: E4 A4     .word off_04_A4E4_19
- - - - - - 0x002304 00:A2F4: F4 A4     .word off_04_A4F4_1A
- - - - - - 0x002306 00:A2F6: 04 A5     .word off_04_A504_1B
- - - - - - 0x002308 00:A2F8: 14 A5     .word off_04_A514_1C
- - - - - - 0x00230A 00:A2FA: 24 A5     .word off_04_A524_1D
- - - - - - 0x00230C 00:A2FC: 27 A5     .word off_04_A527_1E
- - - - - - 0x00230E 00:A2FE: 2A A5     .word off_04_A52A_1F
- - - - - - 0x002310 00:A300: 2D A5     .word off_04_A52D_20
- D 1 - I - 0x002312 00:A302: 30 A5     .word off_04_A530_21
- D 1 - I - 0x002314 00:A304: 40 A5     .word off_04_A540_22
- D 1 - I - 0x002316 00:A306: 50 A5     .word off_04_A550_23
- D 1 - I - 0x002318 00:A308: 63 A5     .word off_04_A563_24
- D 1 - I - 0x00231A 00:A30A: 66 A5     .word off_04_A566_25
- D 1 - I - 0x00231C 00:A30C: 69 A5     .word off_04_A569_26
- D 1 - I - 0x00231E 00:A30E: 6C A5     .word off_04_A56C_27
- D 1 - I - 0x002320 00:A310: 81 A5     .word off_04_A581_28
- D 1 - I - 0x002322 00:A312: 84 A5     .word off_04_A584_29
- D 1 - I - 0x002324 00:A314: 97 A5     .word off_04_A597_2A
- D 1 - I - 0x002326 00:A316: 9A A5     .word off_04_A59A_2B
- D 1 - I - 0x002328 00:A318: AA A5     .word off_04_A5AA_2C
- D 1 - I - 0x00232A 00:A31A: AD A5     .word off_04_A5AD_2D
- D 1 - I - 0x00232C 00:A31C: BA A5     .word off_04_A5BA_2E
- D 1 - I - 0x00232E 00:A31E: D2 A5     .word off_04_A5D2_2F
- D 1 - I - 0x002330 00:A320: D5 A5     .word off_04_A5D5_30
- D 1 - I - 0x002332 00:A322: D8 A5     .word off_04_A5D8_31
- D 1 - I - 0x002334 00:A324: E8 A5     .word off_04_A5E8_32
- D 1 - I - 0x002336 00:A326: F8 A5     .word off_04_A5F8_33
- D 1 - I - 0x002338 00:A328: 0B A6     .word off_04_A60B_34
- D 1 - I - 0x00233A 00:A32A: 0E A6     .word off_04_A60E_35
- D 1 - I - 0x00233C 00:A32C: 11 A6     .word off_04_A611_36
- D 1 - I - 0x00233E 00:A32E: 14 A6     .word off_04_A614_37
- D 1 - I - 0x002340 00:A330: 2B A6     .word off_04_A62B_38
- D 1 - I - 0x002342 00:A332: 42 A6     .word off_04_A642_39
- D 1 - I - 0x002344 00:A334: 59 A6     .word off_04_A659_3A
- D 1 - I - 0x002346 00:A336: 70 A6     .word off_04_A670_3B
- D 1 - I - 0x002348 00:A338: 73 A6     .word off_04_A673_3C
- D 1 - I - 0x00234A 00:A33A: 76 A6     .word off_04_A676_3D
- D 1 - I - 0x00234C 00:A33C: 79 A6     .word off_04_A679_3E
- D 1 - I - 0x00234E 00:A33E: 7C A6     .word off_04_A67C_3F
- D 1 - I - 0x002350 00:A340: 93 A6     .word off_04_A693_40
- D 1 - I - 0x002352 00:A342: AA A6     .word off_04_A6AA_41
- - - - - - 0x002354 00:A344: AD A6     .word off_04_A6AD_42
- - - - - - 0x002356 00:A346: B0 A6     .word off_04_A6B0_43
- - - - - - 0x002358 00:A348: B0 A6     .word off_04_A6B0_44
- - - - - - 0x00235A 00:A34A: B0 A6     .word off_04_A6B0_45
- - - - - - 0x00235C 00:A34C: B0 A6     .word off_04_A6B0_46
- D 1 - I - 0x00235E 00:A34E: B0 A6     .word off_04_A6B0_47
- D 1 - I - 0x002360 00:A350: B3 A6     .word off_04_A6B3_48
- D 1 - I - 0x002362 00:A352: B6 A6     .word off_04_A6B6_49
- - - - - - 0x002364 00:A354: CD A6     .word off_04_A6CD_4A
- D 1 - I - 0x002366 00:A356: E4 A6     .word off_04_A6E4_4B
- D 1 - I - 0x002368 00:A358: FB A6     .word off_04_A6FB_4C
- D 1 - I - 0x00236A 00:A35A: FE A6     .word off_04_A6FE_4D
- D 1 - I - 0x00236C 00:A35C: 0E A7     .word off_04_A70E_4E
- - - - - - 0x00236E 00:A35E: 1E A7     .word off_04_A71E_4F
- - - - - - 0x002370 00:A360: 2E A7     .word off_04_A72E_50
- - - - - - 0x002372 00:A362: 3E A7     .word off_04_A73E_51
- - - - - - 0x002374 00:A364: 41 A7     .word off_04_A741_52
- - - - - - 0x002376 00:A366: 44 A7     .word off_04_A744_53
- - - - - - 0x002378 00:A368: 47 A7     .word off_04_A747_54
- - - - - - 0x00237A 00:A36A: 4A A7     .word off_04_A74A_55
- - - - - - 0x00237C 00:A36C: 5A A7     .word off_04_A75A_56
- - - - - - 0x00237E 00:A36E: 6D A7     .word off_04_A76D_57
- - - - - - 0x002380 00:A370: 7D A7     .word off_04_A77D_58
- - - - - - 0x002382 00:A372: 80 A7     .word off_04_A780_59
- - - - - - 0x002384 00:A374: 83 A7     .word off_04_A783_5A
- - - - - - 0x002386 00:A376: 86 A7     .word off_04_A786_5B
- - - - - - 0x002388 00:A378: 96 A7     .word off_04_A796_5C
- - - - - - 0x00238A 00:A37A: A6 A7     .word off_04_A7A6_5D
- - - - - - 0x00238C 00:A37C: B9 A7     .word off_04_A7B9_5E
- - - - - - 0x00238E 00:A37E: CC A7     .word off_04_A7CC_5F
- - - - - - 0x002390 00:A380: CF A7     .word off_04_A7CF_60
- - - - - - 0x002392 00:A382: D2 A7     .word off_04_A7D2_61
- - - - - - 0x002394 00:A384: D5 A7     .word off_04_A7D5_62
- D 1 - I - 0x002396 00:A386: D8 A7     .word off_04_A7D8_63
- - - - - - 0x002398 00:A388: E9 A7     .word off_04_A7E9_64
- D 1 - I - 0x00239A 00:A38A: EC A7     .word off_04_A7EC_65
- - - - - - 0x00239C 00:A38C: F9 A7     .word off_04_A7F9_66
- D 1 - I - 0x00239E 00:A38E: FC A7     .word off_04_A7FC_67
- - - - - - 0x0023A0 00:A390: 12 A8     .word off_04_A812_68
- D 1 - I - 0x0023A2 00:A392: 15 A8     .word off_04_A815_69
- D 1 - I - 0x0023A4 00:A394: 2F A8     .word off_04_A82F_6A
- D 1 - I - 0x0023A6 00:A396: 4B A8     .word off_04_A84B_6B
- D 1 - I - 0x0023A8 00:A398: 65 A8     .word off_04_A865_6C
- D 1 - I - 0x0023AA 00:A39A: 7F A8     .word off_04_A87F_6D
- D 1 - I - 0x0023AC 00:A39C: 82 A8     .word off_04_A882_6E
- - - - - - 0x0023AE 00:A39E: 85 A8     .word off_04_A885_6F
- - - - - - 0x0023B0 00:A3A0: 88 A8     .word off_04_A888_70
- D 1 - I - 0x0023B2 00:A3A2: 8B A8     .word off_04_A88B_71
- D 1 - I - 0x0023B4 00:A3A4: A5 A8     .word off_04_A8A5_72
- D 1 - I - 0x0023B6 00:A3A6: C9 A8     .word off_04_A8C9_73
- D 1 - I - 0x0023B8 00:A3A8: E8 A8     .word off_04_A8E8_74
- D 1 - I - 0x0023BA 00:A3AA: 05 A9     .word off_04_A905_75
- - - - - - 0x0023BC 00:A3AC: 08 A9     .word off_04_A908_76
- - - - - - 0x0023BE 00:A3AE: 0B A9     .word off_04_A90B_77
- - - - - - 0x0023C0 00:A3B0: 0E A9     .word off_04_A90E_78
- D 1 - I - 0x0023C2 00:A3B2: 11 A9     .word off_04_A911_79
- D 1 - I - 0x0023C4 00:A3B4: 2B A9     .word off_04_A92B_7A
- D 1 - I - 0x0023C6 00:A3B6: 2E A9     .word off_04_A92E_7B
- D 1 - I - 0x0023C8 00:A3B8: 44 A9     .word off_04_A944_7C
- D 1 - I - 0x0023CA 00:A3BA: 47 A9     .word off_04_A947_7D
- D 1 - I - 0x0023CC 00:A3BC: 61 A9     .word off_04_A961_7E
- D 1 - I - 0x0023CE 00:A3BE: 64 A9     .word off_04_A964_7F
- - - - - - 0x0023D0 00:A3C0: 77 A9     .word off_04_A977_80
- D 1 - I - 0x0023D2 00:A3C2: 8C A9     .word off_04_A98C_81
- - - - - - 0x0023D4 00:A3C4: 8F A9     .word off_04_A98F_82
- D 1 - I - 0x0023D6 00:A3C6: 92 A9     .word off_04_A992_83
- D 1 - I - 0x0023D8 00:A3C8: A5 A9     .word off_04_A9A5_84
- D 1 - I - 0x0023DA 00:A3CA: B8 A9     .word off_04_A9B8_85
- D 1 - I - 0x0023DC 00:A3CC: BB A9     .word off_04_A9BB_86
- - - - - - 0x0023DE 00:A3CE: BE A9     .word off_04_A9BE_87
- - - - - - 0x0023E0 00:A3D0: CC A9     .word off_04_A9CC_88
- - - - - - 0x0023E2 00:A3D2: DA A9     .word off_04_A9DA_89
- - - - - - 0x0023E4 00:A3D4: DD A9     .word off_04_A9DD_8A
- D 1 - I - 0x0023E6 00:A3D6: E0 A9     .word off_04_A9E0_8B
- D 1 - I - 0x0023E8 00:A3D8: ED A9     .word off_04_A9ED_8C
- D 1 - I - 0x0023EA 00:A3DA: F0 A9     .word off_04_A9F0_8D
- D 1 - I - 0x0023EC 00:A3DC: 06 AA     .word off_04_AA06_8E
- D 1 - I - 0x0023EE 00:A3DE: 09 AA     .word off_04_AA09_8F
- D 1 - I - 0x0023F0 00:A3E0: 1C AA     .word off_04_AA1C_90
- D 1 - I - 0x0023F2 00:A3E2: 2F AA     .word off_04_AA2F_91
- D 1 - I - 0x0023F4 00:A3E4: 42 AA     .word off_04_AA42_92
- D 1 - I - 0x0023F6 00:A3E6: 55 AA     .word off_04_AA55_93
- - - - - - 0x0023F8 00:A3E8: 58 AA     .word off_04_AA58_94
- - - - - - 0x0023FA 00:A3EA: 5B AA     .word off_04_AA5B_95
- - - - - - 0x0023FC 00:A3EC: 5E AA     .word off_04_AA5E_96



off_04_A3EE_00:
off_04_A3EE_01:
off_FF_A3EE:
- D 1 - I - 0x0023FE 00:A3EE: 82        .byte $82   ; counter
- D 1 - I - 0x0023FF 00:A3EF: 01        .byte $01   ; spr_A
- D 1 - I - 0x002400 00:A3F0: F6        .byte $F6, $81, $EF   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002403 00:A3F3: FE        .byte $FE, $83, $EF   ; 

- D 1 - I - 0x002406 00:A3F6: 02        .byte $02   ; 
- D 1 - I - 0x002407 00:A3F7: 41        .byte $41   ; 
- D 1 - I - 0x002408 00:A3F8: 00        .byte $00, $01, $FF   ; 
- D 1 - I - 0x00240B 00:A3FB: F8        .byte $F8, $03, $FF   ; 



off_04_A3FE_02:
off_FF_A3FE:
- D 1 - I - 0x00240E 00:A3FE: 82        .byte $82   ; counter
- D 1 - I - 0x00240F 00:A3FF: 41        .byte $41   ; spr_A
- D 1 - I - 0x002410 00:A400: 00        .byte $00, $05, $FF   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002413 00:A403: F8        .byte $F8, $07, $FF   ; 

- D 1 - I - 0x002416 00:A406: 02        .byte $02   ; 
- D 1 - I - 0x002417 00:A407: 01        .byte $01   ; 
- D 1 - I - 0x002418 00:A408: F6        .byte $F6, $85, $F0   ; 
- D 1 - I - 0x00241B 00:A40B: FE        .byte $FE, $87, $F0   ; 



off_04_A40E_03:
off_FF_A40E:
- D 1 - I - 0x00241E 00:A40E: 82        .byte $82   ; counter
- D 1 - I - 0x00241F 00:A40F: 01        .byte $01   ; spr_A
- D 1 - I - 0x002420 00:A410: F2        .byte $F2, $89, $EF   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002423 00:A413: FA        .byte $FA, $8B, $EF   ; 

- D 1 - I - 0x002426 00:A416: 02        .byte $02   ; 
- D 1 - I - 0x002427 00:A417: 41        .byte $41   ; 
- D 1 - I - 0x002428 00:A418: FE        .byte $FE, $09, $FF   ; 
- D 1 - I - 0x00242B 00:A41B: F6        .byte $F6, $0B, $FF   ; 



off_04_A41E_04:
off_FF_A41E:
- D 1 - I - 0x00242E 00:A41E: 82        .byte $82   ; counter
- D 1 - I - 0x00242F 00:A41F: 41        .byte $41   ; spr_A
- D 1 - I - 0x002430 00:A420: FF        .byte $FF, $0D, $FF   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002433 00:A423: F7        .byte $F7, $0F, $FF   ; 

- D 1 - I - 0x002436 00:A426: 02        .byte $02   ; 
- D 1 - I - 0x002437 00:A427: 01        .byte $01   ; 
- D 1 - I - 0x002438 00:A428: F6        .byte $F6, $85, $F0   ; 
- D 1 - I - 0x00243B 00:A42B: FE        .byte $FE, $87, $F0   ; 



off_04_A42E_05:
- D 1 - I - 0x00243E 00:A42E: FF        .byte $FF   ; 
- D 1 - I - 0x00243F 00:A42F: EE A3     .word off_FF_A3EE



off_04_A431_06:
- D 1 - I - 0x002441 00:A431: FF        .byte $FF   ; 
- D 1 - I - 0x002442 00:A432: FE A3     .word off_FF_A3FE



off_04_A434_07:
- D 1 - I - 0x002444 00:A434: FF        .byte $FF   ; 
- D 1 - I - 0x002445 00:A435: 0E A4     .word off_FF_A40E



off_04_A437_08:
- D 1 - I - 0x002447 00:A437: FF        .byte $FF   ; 
- D 1 - I - 0x002448 00:A438: 1E A4     .word off_FF_A41E



off_04_A43A_09:
off_FF_A43A:
- D 1 - I - 0x00244A 00:A43A: 83        .byte $83   ; counter
- D 1 - I - 0x00244B 00:A43B: 01        .byte $01   ; spr_A
- D 1 - I - 0x00244C 00:A43C: EE        .byte $EE, $8D, $EF   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x00244F 00:A43F: F6        .byte $F6, $8F, $EF   ; 
- D 1 - I - 0x002452 00:A442: FE        .byte $FE, $91, $EF   ; 

- D 1 - I - 0x002455 00:A445: 02        .byte $02   ; 
- D 1 - I - 0x002456 00:A446: 41        .byte $41   ; 
- D 1 - I - 0x002457 00:A447: 00        .byte $00, $11, $FF   ; 
- D 1 - I - 0x00245A 00:A44A: F8        .byte $F8, $13, $FF   ; 



off_04_A44D_0A:
off_FF_A44D:
- D 1 - I - 0x00245D 00:A44D: 83        .byte $83   ; counter
- D 1 - I - 0x00245E 00:A44E: 01        .byte $01   ; spr_A
- D 1 - I - 0x00245F 00:A44F: EE        .byte $EE, $93, $EC   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002462 00:A452: F6        .byte $F6, $95, $EF   ; 
- D 1 - I - 0x002465 00:A455: FE        .byte $FE, $91, $EF   ; 

- D 1 - I - 0x002468 00:A458: 02        .byte $02   ; 
- D 1 - I - 0x002469 00:A459: 41        .byte $41   ; 
- D 1 - I - 0x00246A 00:A45A: 00        .byte $00, $11, $FF   ; 
- D 1 - I - 0x00246D 00:A45D: F8        .byte $F8, $13, $FF   ; 



off_04_A460_0B:
- D 1 - I - 0x002470 00:A460: FF        .byte $FF   ; 
- D 1 - I - 0x002471 00:A461: 3A A4     .word off_FF_A43A



off_04_A463_0C:
- D 1 - I - 0x002473 00:A463: FF        .byte $FF   ; 
- D 1 - I - 0x002474 00:A464: 4D A4     .word off_FF_A44D



off_04_A466_0D:
off_FF_A466:
- D 1 - I - 0x002476 00:A466: 82        .byte $82   ; counter
- D 1 - I - 0x002477 00:A467: 01        .byte $01   ; spr_A
- D 1 - I - 0x002478 00:A468: EE        .byte $EE, $8D, $F4   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x00247B 00:A46B: FE        .byte $FE, $91, $F4   ; 

- D 1 - I - 0x00247E 00:A46E: 82        .byte $82   ; 
- D 1 - I - 0x00247F 00:A46F: 41        .byte $41   ; 
- D 1 - I - 0x002480 00:A470: 00        .byte $00, $27, $04   ; 
- D 1 - I - 0x002483 00:A473: F8        .byte $F8, $29, $04   ; 

- D 1 - I - 0x002486 00:A476: 01        .byte $01   ; 
- D 1 - I - 0x002487 00:A477: 01        .byte $01   ; 
- D 1 - I - 0x002488 00:A478: F6        .byte $F6, $97, $F4   ; 



off_04_A47B_0E:
off_FF_A47B:
- D 1 - I - 0x00248B 00:A47B: 83        .byte $83   ; counter
- D 1 - I - 0x00248C 00:A47C: 01        .byte $01   ; spr_A
- D 1 - I - 0x00248D 00:A47D: EE        .byte $EE, $93, $F1   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002490 00:A480: F6        .byte $F6, $99, $F4   ; 
- D 1 - I - 0x002493 00:A483: FE        .byte $FE, $91, $F4   ; 

- D 1 - I - 0x002496 00:A486: 02        .byte $02   ; 
- D 1 - I - 0x002497 00:A487: 41        .byte $41   ; 
- D 1 - I - 0x002498 00:A488: 00        .byte $00, $27, $04   ; 
- D 1 - I - 0x00249B 00:A48B: F8        .byte $F8, $29, $04   ; 



off_04_A48E_0F:
- D 1 - I - 0x00249E 00:A48E: FF        .byte $FF   ; 
- D 1 - I - 0x00249F 00:A48F: 66 A4     .word off_FF_A466



off_04_A491_10:
- D 1 - I - 0x0024A1 00:A491: FF        .byte $FF   ; 
- D 1 - I - 0x0024A2 00:A492: 7B A4     .word off_FF_A47B



off_04_A494_11:
off_FF_A494:
- D 1 - I - 0x0024A4 00:A494: 81        .byte $81   ; counter
- D 1 - I - 0x0024A5 00:A495: 01        .byte $01   ; spr_A
- D 1 - I - 0x0024A6 00:A496: 01        .byte $01, $9B, $F9   ; spr_X, spr_T, spr_Y

- D 1 - I - 0x0024A9 00:A499: 02        .byte $02   ; 
- D 1 - I - 0x0024AA 00:A49A: 41        .byte $41   ; 
- D 1 - I - 0x0024AB 00:A49B: F9        .byte $F9, $17, $F9   ; 
- D 1 - I - 0x0024AE 00:A49E: F1        .byte $F1, $19, $F9   ; 



off_04_A4A1_12:
off_FF_A4A1:
- D 1 - I - 0x0024B1 00:A4A1: 84        .byte $84   ; counter
- D 1 - I - 0x0024B2 00:A4A2: 41        .byte $41   ; spr_A
- D 1 - I - 0x0024B3 00:A4A3: 06        .byte $06, $1B, $01   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0024B6 00:A4A6: FE        .byte $FE, $1D, $01   ; 
- D 1 - I - 0x0024B9 00:A4A9: F6        .byte $F6, $1F, $01   ; 
- D 1 - I - 0x0024BC 00:A4AC: EE        .byte $EE, $21, $01   ; 

- D 1 - I - 0x0024BF 00:A4AF: 02        .byte $02   ; 
- D 1 - I - 0x0024C0 00:A4B0: 01        .byte $01   ; 
- D 1 - I - 0x0024C1 00:A4B1: F9        .byte $F9, $9D, $F1   ; 
- D 1 - I - 0x0024C4 00:A4B4: 01        .byte $01, $9F, $F1   ; 



off_04_A4B7_13:
- D 1 - I - 0x0024C7 00:A4B7: FF        .byte $FF   ; 
- D 1 - I - 0x0024C8 00:A4B8: 94 A4     .word off_FF_A494



off_04_A4BA_14:
- D 1 - I - 0x0024CA 00:A4BA: FF        .byte $FF   ; 
- D 1 - I - 0x0024CB 00:A4BB: A1 A4     .word off_FF_A4A1



off_04_A4BD_15:
off_FF_A4BD:
- - - - - - 0x0024CD 00:A4BD: 82        .byte $82   ; counter
- - - - - - 0x0024CE 00:A4BE: 01        .byte $01   ; spr_A
- - - - - - 0x0024CF 00:A4BF: F7        .byte $F7, $A1, $EF   ; spr_X, spr_T, spr_Y
- - - - - - 0x0024D2 00:A4C2: FF        .byte $FF, $A3, $EF   ; 

- - - - - - 0x0024D5 00:A4C5: 02        .byte $02   ; 
- - - - - - 0x0024D6 00:A4C6: 41        .byte $41   ; 
- - - - - - 0x0024D7 00:A4C7: FF        .byte $FF, $CD, $FF   ; 
- - - - - - 0x0024DA 00:A4CA: F7        .byte $F7, $CF, $FF   ; 



off_04_A4CD_16:
- - - - - - 0x0024DD 00:A4CD: FF        .byte $FF   ; 
- - - - - - 0x0024DE 00:A4CE: BD A4     .word off_FF_A4BD



off_04_A4D0_17:
off_FF_A4D0:
- D 1 - I - 0x0024E0 00:A4D0: 05        .byte $05   ; counter
- D 1 - I - 0x0024E1 00:A4D1: 01        .byte $01   ; spr_A
- D 1 - I - 0x0024E2 00:A4D2: F0        .byte $F0, $93, $ED   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0024E5 00:A4D5: F8        .byte $F8, $99, $F0   ; 
- D 1 - I - 0x0024E8 00:A4D8: 00        .byte $00, $91, $F0   ; 
- D 1 - I - 0x0024EB 00:A4DB: F8        .byte $F8, $A5, $00   ; 
- D 1 - I - 0x0024EE 00:A4DE: 00        .byte $00, $A7, $00   ; 



off_04_A4E1_18:
- D 1 - I - 0x0024F1 00:A4E1: FF        .byte $FF   ; 
- D 1 - I - 0x0024F2 00:A4E2: D0 A4     .word off_FF_A4D0



off_04_A4E4_19:
off_FF_A4E4:
- - - - - - 0x0024F4 00:A4E4: 82        .byte $82   ; counter
- - - - - - 0x0024F5 00:A4E5: 00        .byte $00   ; spr_A
- - - - - - 0x0024F6 00:A4E6: F6        .byte $F6, $81, $EF   ; spr_X, spr_T, spr_Y
- - - - - - 0x0024F9 00:A4E9: FE        .byte $FE, $83, $EF   ; 

- - - - - - 0x0024FC 00:A4EC: 02        .byte $02   ; 
- - - - - - 0x0024FD 00:A4ED: 42        .byte $42   ; 
- - - - - - 0x0024FE 00:A4EE: 00        .byte $00, $01, $FF   ; 
- - - - - - 0x002501 00:A4F1: F8        .byte $F8, $03, $FF   ; 



off_04_A4F4_1A:
off_FF_A4F4:
- - - - - - 0x002504 00:A4F4: 82        .byte $82   ; counter
- - - - - - 0x002505 00:A4F5: 42        .byte $42   ; spr_A
- - - - - - 0x002506 00:A4F6: 00        .byte $00, $05, $FF   ; spr_X, spr_T, spr_Y
- - - - - - 0x002509 00:A4F9: F8        .byte $F8, $07, $FF   ; 

- - - - - - 0x00250C 00:A4FC: 02        .byte $02   ; 
- - - - - - 0x00250D 00:A4FD: 00        .byte $00   ; 
- - - - - - 0x00250E 00:A4FE: F6        .byte $F6, $85, $F0   ; 
- - - - - - 0x002511 00:A501: FE        .byte $FE, $87, $F0   ; 



off_04_A504_1B:
off_FF_A504:
- - - - - - 0x002514 00:A504: 82        .byte $82   ; counter
- - - - - - 0x002515 00:A505: 00        .byte $00   ; spr_A
- - - - - - 0x002516 00:A506: F2        .byte $F2, $89, $EF   ; spr_X, spr_T, spr_Y
- - - - - - 0x002519 00:A509: FA        .byte $FA, $8B, $EF   ; 

- - - - - - 0x00251C 00:A50C: 02        .byte $02   ; 
- - - - - - 0x00251D 00:A50D: 42        .byte $42   ; 
- - - - - - 0x00251E 00:A50E: FE        .byte $FE, $09, $FF   ; 
- - - - - - 0x002521 00:A511: F6        .byte $F6, $0B, $FF   ; 



off_04_A514_1C:
off_FF_A514:
- - - - - - 0x002524 00:A514: 82        .byte $82   ; counter
- - - - - - 0x002525 00:A515: 42        .byte $42   ; spr_A
- - - - - - 0x002526 00:A516: FF        .byte $FF, $0D, $FF   ; spr_X, spr_T, spr_Y
- - - - - - 0x002529 00:A519: F7        .byte $F7, $0F, $FF   ; 

- - - - - - 0x00252C 00:A51C: 02        .byte $02   ; 
- - - - - - 0x00252D 00:A51D: 00        .byte $00   ; 
- - - - - - 0x00252E 00:A51E: F6        .byte $F6, $85, $F0   ; 
- - - - - - 0x002531 00:A521: F9        .byte $F9, $A7, $00   ; 



off_04_A524_1D:
- - - - - - 0x002534 00:A524: FF        .byte $FF   ; 
- - - - - - 0x002535 00:A525: E4 A4     .word off_FF_A4E4



off_04_A527_1E:
- - - - - - 0x002537 00:A527: FF        .byte $FF   ; 
- - - - - - 0x002538 00:A528: F4 A4     .word off_FF_A4F4



off_04_A52A_1F:
- - - - - - 0x00253A 00:A52A: FF        .byte $FF   ; 
- - - - - - 0x00253B 00:A52B: 04 A5     .word off_FF_A504



off_04_A52D_20:
- - - - - - 0x00253D 00:A52D: FF        .byte $FF   ; 
- - - - - - 0x00253E 00:A52E: 14 A5     .word off_FF_A514



off_04_A530_21:
off_FF_A530:
- D 1 - I - 0x002540 00:A530: 82        .byte $82   ; counter
- D 1 - I - 0x002541 00:A531: 00        .byte $00   ; spr_A
- D 1 - I - 0x002542 00:A532: FC        .byte $FC, $A9, $EE   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002545 00:A535: 04        .byte $04, $AB, $EE   ; 

- D 1 - I - 0x002548 00:A538: 02        .byte $02   ; 
- D 1 - I - 0x002549 00:A539: 02        .byte $02   ; 
- D 1 - I - 0x00254A 00:A53A: FA        .byte $FA, $CD, $FE   ; 
- D 1 - I - 0x00254D 00:A53D: 02        .byte $02, $CF, $FE   ; 



off_04_A540_22:
off_FF_A540:
- D 1 - I - 0x002550 00:A540: 82        .byte $82   ; counter
- D 1 - I - 0x002551 00:A541: 00        .byte $00   ; spr_A
- D 1 - I - 0x002552 00:A542: FA        .byte $FA, $AD, $EE   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002555 00:A545: 02        .byte $02, $AF, $EE   ; 

- D 1 - I - 0x002558 00:A548: 02        .byte $02   ; 
- D 1 - I - 0x002559 00:A549: 02        .byte $02   ; 
- D 1 - I - 0x00255A 00:A54A: FA        .byte $FA, $CD, $FE   ; 
- D 1 - I - 0x00255D 00:A54D: 02        .byte $02, $CF, $FE   ; 



off_04_A550_23:
off_FF_A550:
- D 1 - I - 0x002560 00:A550: 83        .byte $83   ; counter
- D 1 - I - 0x002561 00:A551: 00        .byte $00   ; spr_A
- D 1 - I - 0x002562 00:A552: F7        .byte $F7, $B1, $EE   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002565 00:A555: FF        .byte $FF, $B3, $EE   ; 
- D 1 - I - 0x002568 00:A558: F3        .byte $F3, $B5, $FE   ; 

- D 1 - I - 0x00256B 00:A55B: 02        .byte $02   ; 
- D 1 - I - 0x00256C 00:A55C: 02        .byte $02   ; 
- D 1 - I - 0x00256D 00:A55D: FA        .byte $FA, $CD, $FE   ; 
- D 1 - I - 0x002570 00:A560: 02        .byte $02, $CF, $FE   ; 



off_04_A563_24:
- D 1 - I - 0x002573 00:A563: FF        .byte $FF   ; 
- D 1 - I - 0x002574 00:A564: 30 A5     .word off_FF_A530



off_04_A566_25:
- D 1 - I - 0x002576 00:A566: FF        .byte $FF   ; 
- D 1 - I - 0x002577 00:A567: 40 A5     .word off_FF_A540



off_04_A569_26:
- D 1 - I - 0x002579 00:A569: FF        .byte $FF   ; 
- D 1 - I - 0x00257A 00:A56A: 50 A5     .word off_FF_A550



off_04_A56C_27:
off_FF_A56C:
- D 1 - I - 0x00257C 00:A56C: 81        .byte $81   ; counter
- D 1 - I - 0x00257D 00:A56D: 00        .byte $00   ; spr_A
- D 1 - I - 0x00257E 00:A56E: FA        .byte $FA, $AD, $EE   ; spr_X, spr_T, spr_Y

- D 1 - I - 0x002581 00:A571: 82        .byte $82   ; 
- D 1 - I - 0x002582 00:A572: 02        .byte $02   ; 
- D 1 - I - 0x002583 00:A573: FA        .byte $FA, $CD, $FE   ; 
- D 1 - I - 0x002586 00:A576: 02        .byte $02, $CF, $FE   ; 

- D 1 - I - 0x002589 00:A579: 02        .byte $02   ; 
- D 1 - I - 0x00258A 00:A57A: 00        .byte $00   ; 
- D 1 - I - 0x00258B 00:A57B: FA        .byte $FA, $B7, $DE   ; 
- D 1 - I - 0x00258E 00:A57E: 02        .byte $02, $B9, $EE   ; 



off_04_A581_28:
- D 1 - I - 0x002591 00:A581: FF        .byte $FF   ; 
- D 1 - I - 0x002592 00:A582: 6C A5     .word off_FF_A56C



off_04_A584_29:
off_FF_A584:
- D 1 - I - 0x002594 00:A584: 82        .byte $82   ; counter
- D 1 - I - 0x002595 00:A585: 42        .byte $42   ; spr_A
- D 1 - I - 0x002596 00:A586: 01        .byte $01, $27, $FE   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002599 00:A589: F9        .byte $F9, $29, $FE   ; 

- D 1 - I - 0x00259C 00:A58C: 03        .byte $03   ; 
- D 1 - I - 0x00259D 00:A58D: 00        .byte $00   ; 
- D 1 - I - 0x00259E 00:A58E: F9        .byte $F9, $AD, $EE   ; 
- D 1 - I - 0x0025A1 00:A591: 01        .byte $01, $B9, $EE   ; 
- D 1 - I - 0x0025A4 00:A594: F9        .byte $F9, $B7, $DE   ; 



off_04_A597_2A:
- D 1 - I - 0x0025A7 00:A597: FF        .byte $FF   ; 
- D 1 - I - 0x0025A8 00:A598: 84 A5     .word off_FF_A584



off_04_A59A_2B:
off_FF_A59A:
- D 1 - I - 0x0025AA 00:A59A: 82        .byte $82   ; counter
- D 1 - I - 0x0025AB 00:A59B: 02        .byte $02   ; spr_A
- D 1 - I - 0x0025AC 00:A59C: F8        .byte $F8, $A5, $00   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0025AF 00:A59F: 00        .byte $00, $A7, $00   ; 

- D 1 - I - 0x0025B2 00:A5A2: 02        .byte $02   ; 
- D 1 - I - 0x0025B3 00:A5A3: 00        .byte $00   ; 
- D 1 - I - 0x0025B4 00:A5A4: F6        .byte $F6, $89, $F0   ; 
- D 1 - I - 0x0025B7 00:A5A7: FE        .byte $FE, $8B, $F0   ; 



off_04_A5AA_2C:
- D 1 - I - 0x0025BA 00:A5AA: FF        .byte $FF   ; 
- D 1 - I - 0x0025BB 00:A5AB: 9A A5     .word off_FF_A59A



off_04_A5AD_2D:
off_FF_A5AD:
- D 1 - I - 0x0025BD 00:A5AD: 81        .byte $81   ; counter
- D 1 - I - 0x0025BE 00:A5AE: 00        .byte $00   ; spr_A
- D 1 - I - 0x0025BF 00:A5AF: 01        .byte $01, $9B, $F9   ; spr_X, spr_T, spr_Y

- D 1 - I - 0x0025C2 00:A5B2: 02        .byte $02   ; 
- D 1 - I - 0x0025C3 00:A5B3: 42        .byte $42   ; 
- D 1 - I - 0x0025C4 00:A5B4: F9        .byte $F9, $17, $F9   ; 
- D 1 - I - 0x0025C7 00:A5B7: F1        .byte $F1, $19, $F9   ; 



off_04_A5BA_2E:
off_FF_A5BA:
- D 1 - I - 0x0025CA 00:A5BA: 82        .byte $82   ; counter
- D 1 - I - 0x0025CB 00:A5BB: 00        .byte $00   ; spr_A
- D 1 - I - 0x0025CC 00:A5BC: F9        .byte $F9, $9D, $F1   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0025CF 00:A5BF: 01        .byte $01, $9F, $F1   ; 

- D 1 - I - 0x0025D2 00:A5C2: 81        .byte $81   ; 
- D 1 - I - 0x0025D3 00:A5C3: 40        .byte $40   ; 
- D 1 - I - 0x0025D4 00:A5C4: 06        .byte $06, $1B, $01   ; 

- D 1 - I - 0x0025D7 00:A5C7: 03        .byte $03   ; 
- D 1 - I - 0x0025D8 00:A5C8: 42        .byte $42   ; 
- D 1 - I - 0x0025D9 00:A5C9: FE        .byte $FE, $1D, $01   ; 
- D 1 - I - 0x0025DC 00:A5CC: F6        .byte $F6, $1F, $01   ; 
- D 1 - I - 0x0025DF 00:A5CF: EE        .byte $EE, $21, $01   ; 



off_04_A5D2_2F:
- D 1 - I - 0x0025E2 00:A5D2: FF        .byte $FF   ; 
- D 1 - I - 0x0025E3 00:A5D3: AD A5     .word off_FF_A5AD



off_04_A5D5_30:
- D 1 - I - 0x0025E5 00:A5D5: FF        .byte $FF   ; 
- D 1 - I - 0x0025E6 00:A5D6: BA A5     .word off_FF_A5BA



off_04_A5D8_31:
off_FF_A5D8:
- D 1 - I - 0x0025E8 00:A5D8: 82        .byte $82   ; counter
- D 1 - I - 0x0025E9 00:A5D9: 42        .byte $42   ; spr_A
- D 1 - I - 0x0025EA 00:A5DA: 01        .byte $01, $27, $FE   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0025ED 00:A5DD: F9        .byte $F9, $29, $FE   ; 

- D 1 - I - 0x0025F0 00:A5E0: 02        .byte $02   ; 
- D 1 - I - 0x0025F1 00:A5E1: 00        .byte $00   ; 
- D 1 - I - 0x0025F2 00:A5E2: FB        .byte $FB, $A9, $EE   ; 
- D 1 - I - 0x0025F5 00:A5E5: 03        .byte $03, $AB, $EE   ; 



off_04_A5E8_32:
off_FF_A5E8:
- D 1 - I - 0x0025F8 00:A5E8: 82        .byte $82   ; counter
- D 1 - I - 0x0025F9 00:A5E9: 42        .byte $42   ; spr_A
- D 1 - I - 0x0025FA 00:A5EA: 01        .byte $01, $27, $FE   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0025FD 00:A5ED: F9        .byte $F9, $29, $FE   ; 

- D 1 - I - 0x002600 00:A5F0: 02        .byte $02   ; 
- D 1 - I - 0x002601 00:A5F1: 00        .byte $00   ; 
- D 1 - I - 0x002602 00:A5F2: F9        .byte $F9, $AD, $EE   ; 
- D 1 - I - 0x002605 00:A5F5: 01        .byte $01, $AF, $EE   ; 



off_04_A5F8_33:
off_FF_A5F8:
- D 1 - I - 0x002608 00:A5F8: 82        .byte $82   ; counter
- D 1 - I - 0x002609 00:A5F9: 42        .byte $42   ; spr_A
- D 1 - I - 0x00260A 00:A5FA: 01        .byte $01, $27, $FE   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x00260D 00:A5FD: F9        .byte $F9, $29, $FE   ; 

- D 1 - I - 0x002610 00:A600: 03        .byte $03   ; 
- D 1 - I - 0x002611 00:A601: 00        .byte $00   ; 
- D 1 - I - 0x002612 00:A602: F6        .byte $F6, $B1, $EE   ; 
- D 1 - I - 0x002615 00:A605: FE        .byte $FE, $B3, $EE   ; 
- D 1 - I - 0x002618 00:A608: F2        .byte $F2, $B5, $FE   ; 



off_04_A60B_34:
- D 1 - I - 0x00261B 00:A60B: FF        .byte $FF   ; 
- D 1 - I - 0x00261C 00:A60C: D8 A5     .word off_FF_A5D8



off_04_A60E_35:
- D 1 - I - 0x00261E 00:A60E: FF        .byte $FF   ; 
- D 1 - I - 0x00261F 00:A60F: E8 A5     .word off_FF_A5E8



off_04_A611_36:
- D 1 - I - 0x002621 00:A611: FF        .byte $FF   ; 
- D 1 - I - 0x002622 00:A612: F8 A5     .word off_FF_A5F8



off_04_A614_37:
off_FF_A614:
- D 1 - I - 0x002624 00:A614: 82        .byte $82   ; counter
- D 1 - I - 0x002625 00:A615: 42        .byte $42   ; spr_A
- D 1 - I - 0x002626 00:A616: 00        .byte $00, $01, $FF   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002629 00:A619: F8        .byte $F8, $03, $FF   ; 

- D 1 - I - 0x00262C 00:A61C: 81        .byte $81   ; 
- D 1 - I - 0x00262D 00:A61D: 00        .byte $00   ; 
- D 1 - I - 0x00262E 00:A61E: F6        .byte $F6, $BB, $EF   ; 

- D 1 - I - 0x002631 00:A621: 81        .byte $81   ; 
- D 1 - I - 0x002632 00:A622: 02        .byte $02   ; 
- D 1 - I - 0x002633 00:A623: FE        .byte $FE, $BD, $EF   ; 

- D 1 - I - 0x002636 00:A626: 01        .byte $01   ; 
- D 1 - I - 0x002637 00:A627: 01        .byte $01   ; 
- D 1 - I - 0x002638 00:A628: 04        .byte $04, $BF, $F2   ; 



off_04_A62B_38:
off_FF_A62B:
- D 1 - I - 0x00263B 00:A62B: 82        .byte $82   ; counter
- D 1 - I - 0x00263C 00:A62C: 42        .byte $42   ; spr_A
- D 1 - I - 0x00263D 00:A62D: 00        .byte $00, $05, $FF   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002640 00:A630: F8        .byte $F8, $07, $FF   ; 

- D 1 - I - 0x002643 00:A633: 81        .byte $81   ; 
- D 1 - I - 0x002644 00:A634: 00        .byte $00   ; 
- D 1 - I - 0x002645 00:A635: F5        .byte $F5, $BB, $F0   ; 

- D 1 - I - 0x002648 00:A638: 81        .byte $81   ; 
- D 1 - I - 0x002649 00:A639: 02        .byte $02   ; 
- D 1 - I - 0x00264A 00:A63A: FD        .byte $FD, $BD, $F0   ; 

- D 1 - I - 0x00264D 00:A63D: 01        .byte $01   ; 
- D 1 - I - 0x00264E 00:A63E: 01        .byte $01   ; 
- D 1 - I - 0x00264F 00:A63F: 04        .byte $04, $BF, $F1   ; 



off_04_A642_39:
off_FF_A642:
- D 1 - I - 0x002652 00:A642: 82        .byte $82   ; counter
- D 1 - I - 0x002653 00:A643: 42        .byte $42   ; spr_A
- D 1 - I - 0x002654 00:A644: FE        .byte $FE, $09, $FF   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002657 00:A647: F6        .byte $F6, $0B, $FF   ; 

- D 1 - I - 0x00265A 00:A64A: 81        .byte $81   ; 
- D 1 - I - 0x00265B 00:A64B: 00        .byte $00   ; 
- D 1 - I - 0x00265C 00:A64C: F3        .byte $F3, $BB, $EF   ; 

- D 1 - I - 0x00265F 00:A64F: 81        .byte $81   ; 
- D 1 - I - 0x002660 00:A650: 02        .byte $02   ; 
- D 1 - I - 0x002661 00:A651: FB        .byte $FB, $BD, $EF   ; 

- D 1 - I - 0x002664 00:A654: 01        .byte $01   ; 
- D 1 - I - 0x002665 00:A655: 01        .byte $01   ; 
- D 1 - I - 0x002666 00:A656: 01        .byte $01, $BF, $F1   ; 



off_04_A659_3A:
off_FF_A659:
- D 1 - I - 0x002669 00:A659: 82        .byte $82   ; counter
- D 1 - I - 0x00266A 00:A65A: 42        .byte $42   ; spr_A
- D 1 - I - 0x00266B 00:A65B: FF        .byte $FF, $0D, $FF   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x00266E 00:A65E: F7        .byte $F7, $0F, $FF   ; 

- D 1 - I - 0x002671 00:A661: 81        .byte $81   ; 
- D 1 - I - 0x002672 00:A662: 00        .byte $00   ; 
- D 1 - I - 0x002673 00:A663: F5        .byte $F5, $BB, $F0   ; 

- D 1 - I - 0x002676 00:A666: 81        .byte $81   ; 
- D 1 - I - 0x002677 00:A667: 02        .byte $02   ; 
- D 1 - I - 0x002678 00:A668: FD        .byte $FD, $BD, $F0   ; 

- D 1 - I - 0x00267B 00:A66B: 01        .byte $01   ; 
- D 1 - I - 0x00267C 00:A66C: 01        .byte $01   ; 
- D 1 - I - 0x00267D 00:A66D: 03        .byte $03, $BF, $F1   ; 



off_04_A670_3B:
- D 1 - I - 0x002680 00:A670: FF        .byte $FF   ; 
- D 1 - I - 0x002681 00:A671: 14 A6     .word off_FF_A614



off_04_A673_3C:
- D 1 - I - 0x002683 00:A673: FF        .byte $FF   ; 
- D 1 - I - 0x002684 00:A674: 2B A6     .word off_FF_A62B



off_04_A676_3D:
- D 1 - I - 0x002686 00:A676: FF        .byte $FF   ; 
- D 1 - I - 0x002687 00:A677: 42 A6     .word off_FF_A642



off_04_A679_3E:
- D 1 - I - 0x002689 00:A679: FF        .byte $FF   ; 
- D 1 - I - 0x00268A 00:A67A: 59 A6     .word off_FF_A659



off_04_A67C_3F:
off_FF_A67C:
- D 1 - I - 0x00268C 00:A67C: 82        .byte $82   ; counter
- D 1 - I - 0x00268D 00:A67D: 02        .byte $02   ; spr_A
- D 1 - I - 0x00268E 00:A67E: F7        .byte $F7, $CD, $FD   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002691 00:A681: FF        .byte $FF, $CF, $FD   ; 

- D 1 - I - 0x002694 00:A684: 81        .byte $81   ; 
- D 1 - I - 0x002695 00:A685: 00        .byte $00   ; 
- D 1 - I - 0x002696 00:A686: F6        .byte $F6, $BB, $EF   ; 

- D 1 - I - 0x002699 00:A689: 81        .byte $81   ; 
- D 1 - I - 0x00269A 00:A68A: 02        .byte $02   ; 
- D 1 - I - 0x00269B 00:A68B: FE        .byte $FE, $BD, $EF   ; 

- D 1 - I - 0x00269E 00:A68E: 01        .byte $01   ; 
- D 1 - I - 0x00269F 00:A68F: 01        .byte $01   ; 
- D 1 - I - 0x0026A0 00:A690: 04        .byte $04, $BF, $F0   ; 



off_04_A693_40:
off_FF_A693:
- D 1 - I - 0x0026A3 00:A693: 82        .byte $82   ; counter
- D 1 - I - 0x0026A4 00:A694: 02        .byte $02   ; spr_A
- D 1 - I - 0x0026A5 00:A695: F7        .byte $F7, $CD, $FD   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0026A8 00:A698: FF        .byte $FF, $CF, $FD   ; 

- D 1 - I - 0x0026AB 00:A69B: 81        .byte $81   ; 
- D 1 - I - 0x0026AC 00:A69C: 00        .byte $00   ; 
- D 1 - I - 0x0026AD 00:A69D: F4        .byte $F4, $BB, $EF   ; 

- D 1 - I - 0x0026B0 00:A6A0: 81        .byte $81   ; 
- D 1 - I - 0x0026B1 00:A6A1: 02        .byte $02   ; 
- D 1 - I - 0x0026B2 00:A6A2: FC        .byte $FC, $BD, $EF   ; 

- D 1 - I - 0x0026B5 00:A6A5: 01        .byte $01   ; 
- D 1 - I - 0x0026B6 00:A6A6: 01        .byte $01   ; 
- D 1 - I - 0x0026B7 00:A6A7: 03        .byte $03, $BF, $F1   ; 



off_04_A6AA_41:
- D 1 - I - 0x0026BA 00:A6AA: FF        .byte $FF   ; 
- D 1 - I - 0x0026BB 00:A6AB: 7C A6     .word off_FF_A67C



off_04_A6AD_42:
- - - - - - 0x0026BD 00:A6AD: FF        .byte $FF   ; 
- - - - - - 0x0026BE 00:A6AE: 93 A6     .word off_FF_A693



off_04_A6B0_43:
off_04_A6B0_44:
off_04_A6B0_45:
off_04_A6B0_46:
off_04_A6B0_47:
- D 1 - I - 0x0026C0 00:A6B0: FF        .byte $FF   ; 
- D 1 - I - 0x0026C1 00:A6B1: B6 A6     .word off_FF_A6B6



off_04_A6B3_48:
- D 1 - I - 0x0026C3 00:A6B3: FF        .byte $FF   ; 
- D 1 - I - 0x0026C4 00:A6B4: CD A6     .word off_FF_A6CD



off_04_A6B6_49:
off_FF_A6B6:
- D 1 - I - 0x0026C6 00:A6B6: 82        .byte $82   ; counter
- D 1 - I - 0x0026C7 00:A6B7: 02        .byte $02   ; spr_A
- D 1 - I - 0x0026C8 00:A6B8: F8        .byte $F8, $27, $FE   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0026CB 00:A6BB: 00        .byte $00, $29, $FE   ; 

- D 1 - I - 0x0026CE 00:A6BE: 81        .byte $81   ; 
- D 1 - I - 0x0026CF 00:A6BF: 40        .byte $40   ; 
- D 1 - I - 0x0026D0 00:A6C0: 01        .byte $01, $BB, $EF   ; 

- D 1 - I - 0x0026D3 00:A6C3: 81        .byte $81   ; 
- D 1 - I - 0x0026D4 00:A6C4: 42        .byte $42   ; 
- D 1 - I - 0x0026D5 00:A6C5: F9        .byte $F9, $BD, $EF   ; 

- D 1 - I - 0x0026D8 00:A6C8: 01        .byte $01   ; 
- D 1 - I - 0x0026D9 00:A6C9: 41        .byte $41   ; 
- D 1 - I - 0x0026DA 00:A6CA: F3        .byte $F3, $BF, $F0   ; 



off_04_A6CD_4A:
off_FF_A6CD:
- D 1 - I - 0x0026DD 00:A6CD: 82        .byte $82   ; counter
- D 1 - I - 0x0026DE 00:A6CE: 02        .byte $02   ; spr_A
- D 1 - I - 0x0026DF 00:A6CF: F8        .byte $F8, $27, $FE   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0026E2 00:A6D2: 00        .byte $00, $29, $FE   ; 

- D 1 - I - 0x0026E5 00:A6D5: 81        .byte $81   ; 
- D 1 - I - 0x0026E6 00:A6D6: 40        .byte $40   ; 
- D 1 - I - 0x0026E7 00:A6D7: 00        .byte $00, $BB, $EE   ; 

- D 1 - I - 0x0026EA 00:A6DA: 81        .byte $81   ; 
- D 1 - I - 0x0026EB 00:A6DB: 42        .byte $42   ; 
- D 1 - I - 0x0026EC 00:A6DC: F8        .byte $F8, $BD, $EE   ; 

- D 1 - I - 0x0026EF 00:A6DF: 01        .byte $01   ; 
- D 1 - I - 0x0026F0 00:A6E0: 41        .byte $41   ; 
- D 1 - I - 0x0026F1 00:A6E1: F2        .byte $F2, $BF, $F0   ; 



off_04_A6E4_4B:
off_FF_A6E4:
- D 1 - I - 0x0026F4 00:A6E4: 81        .byte $81   ; counter
- D 1 - I - 0x0026F5 00:A6E5: 00        .byte $00   ; spr_A
- D 1 - I - 0x0026F6 00:A6E6: F8        .byte $F8, $BB, $F0   ; spr_X, spr_T, spr_Y

- D 1 - I - 0x0026F9 00:A6E9: 81        .byte $81   ; 
- D 1 - I - 0x0026FA 00:A6EA: 02        .byte $02   ; 
- D 1 - I - 0x0026FB 00:A6EB: 00        .byte $00, $BD, $F0   ; 

- D 1 - I - 0x0026FE 00:A6EE: 81        .byte $81   ; 
- D 1 - I - 0x0026FF 00:A6EF: 01        .byte $01   ; 
- D 1 - I - 0x002700 00:A6F0: 06        .byte $06, $BF, $F0   ; 

- D 1 - I - 0x002703 00:A6F3: 02        .byte $02   ; 
- D 1 - I - 0x002704 00:A6F4: 02        .byte $02   ; 
- D 1 - I - 0x002705 00:A6F5: F8        .byte $F8, $A5, $00   ; 
- D 1 - I - 0x002708 00:A6F8: 00        .byte $00, $A7, $00   ; 



off_04_A6FB_4C:
- D 1 - I - 0x00270B 00:A6FB: FF        .byte $FF   ; 
- D 1 - I - 0x00270C 00:A6FC: E4 A6     .word off_FF_A6E4



off_04_A6FE_4D:
off_FF_A6FE:
- D 1 - I - 0x00270E 00:A6FE: 82        .byte $82   ; counter
- D 1 - I - 0x00270F 00:A6FF: 02        .byte $02   ; spr_A
- D 1 - I - 0x002710 00:A700: F8        .byte $F8, $81, $EF   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002713 00:A703: 00        .byte $00, $83, $EF   ; 

- D 1 - I - 0x002716 00:A706: 02        .byte $02   ; 
- D 1 - I - 0x002717 00:A707: 42        .byte $42   ; 
- D 1 - I - 0x002718 00:A708: 00        .byte $00, $01, $FF   ; 
- D 1 - I - 0x00271B 00:A70B: F8        .byte $F8, $03, $FF   ; 



off_04_A70E_4E:
off_FF_A70E:
- D 1 - I - 0x00271E 00:A70E: 82        .byte $82   ; counter
- D 1 - I - 0x00271F 00:A70F: 42        .byte $42   ; spr_A
- D 1 - I - 0x002720 00:A710: 00        .byte $00, $05, $FF   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002723 00:A713: F8        .byte $F8, $07, $FF   ; 

- D 1 - I - 0x002726 00:A716: 02        .byte $02   ; 
- D 1 - I - 0x002727 00:A717: 02        .byte $02   ; 
- D 1 - I - 0x002728 00:A718: F6        .byte $F6, $85, $F0   ; 
- D 1 - I - 0x00272B 00:A71B: FE        .byte $FE, $87, $F0   ; 



off_04_A71E_4F:
off_FF_A71E:
- - - - - - 0x00272E 00:A71E: 82        .byte $82   ; counter
- - - - - - 0x00272F 00:A71F: 42        .byte $42   ; spr_A
- - - - - - 0x002730 00:A720: FE        .byte $FE, $09, $FF   ; spr_X, spr_T, spr_Y
- - - - - - 0x002733 00:A723: F6        .byte $F6, $0B, $FF   ; 

- - - - - - 0x002736 00:A726: 02        .byte $02   ; 
- - - - - - 0x002737 00:A727: 02        .byte $02   ; 
- - - - - - 0x002738 00:A728: F2        .byte $F2, $89, $EF   ; 
- - - - - - 0x00273B 00:A72B: FA        .byte $FA, $8B, $EF   ; 



off_04_A72E_50:
off_FF_A72E:
- - - - - - 0x00273E 00:A72E: 82        .byte $82   ; counter
- - - - - - 0x00273F 00:A72F: 42        .byte $42   ; spr_A
- - - - - - 0x002740 00:A730: FF        .byte $FF, $0D, $FF   ; spr_X, spr_T, spr_Y
- - - - - - 0x002743 00:A733: F7        .byte $F7, $0F, $FF   ; 

- - - - - - 0x002746 00:A736: 02        .byte $02   ; 
- - - - - - 0x002747 00:A737: 02        .byte $02   ; 
- - - - - - 0x002748 00:A738: F6        .byte $F6, $85, $F0   ; 
- - - - - - 0x00274B 00:A73B: FE        .byte $FE, $87, $F0   ; 



off_04_A73E_51:
- - - - - - 0x00274E 00:A73E: FF        .byte $FF   ; 
- - - - - - 0x00274F 00:A73F: FE A6     .word off_FF_A6FE



off_04_A741_52:
- - - - - - 0x002751 00:A741: FF        .byte $FF   ; 
- - - - - - 0x002752 00:A742: 0E A7     .word off_FF_A70E



off_04_A744_53:
- - - - - - 0x002754 00:A744: FF        .byte $FF   ; 
- - - - - - 0x002755 00:A745: 1E A7     .word off_FF_A71E



off_04_A747_54:
- - - - - - 0x002757 00:A747: FF        .byte $FF   ; 
- - - - - - 0x002758 00:A748: 2E A7     .word off_FF_A72E



off_04_A74A_55:
off_FF_A74A:
- - - - - - 0x00275A 00:A74A: 82        .byte $82   ; counter
- - - - - - 0x00275B 00:A74B: 42        .byte $42   ; spr_A
- - - - - - 0x00275C 00:A74C: 02        .byte $02, $CD, $FD   ; spr_X, spr_T, spr_Y
- - - - - - 0x00275F 00:A74F: FA        .byte $FA, $CF, $FD   ; 

- - - - - - 0x002762 00:A752: 02        .byte $02   ; 
- - - - - - 0x002763 00:A753: 02        .byte $02   ; 
- - - - - - 0x002764 00:A754: FA        .byte $FA, $A1, $ED   ; 
- - - - - - 0x002767 00:A757: 02        .byte $02, $A3, $ED   ; 



off_04_A75A_56:
off_FF_A75A:
- - - - - - 0x00276A 00:A75A: 82        .byte $82   ; counter
- - - - - - 0x00276B 00:A75B: 42        .byte $42   ; spr_A
- - - - - - 0x00276C 00:A75C: 02        .byte $02, $CD, $FD   ; spr_X, spr_T, spr_Y
- - - - - - 0x00276F 00:A75F: FA        .byte $FA, $CF, $FD   ; 

- - - - - - 0x002772 00:A762: 03        .byte $03   ; 
- - - - - - 0x002773 00:A763: 02        .byte $02   ; 
- - - - - - 0x002774 00:A764: FA        .byte $FA, $A1, $ED   ; 
- - - - - - 0x002777 00:A767: 02        .byte $02, $A5, $ED   ; 
- - - - - - 0x00277A 00:A76A: 0A        .byte $0A, $A7, $ED   ; 



off_04_A76D_57:
off_FF_A76D:
- - - - - - 0x00277D 00:A76D: 82        .byte $82   ; counter
- - - - - - 0x00277E 00:A76E: 42        .byte $42   ; spr_A
- - - - - - 0x00277F 00:A76F: 02        .byte $02, $CD, $FD   ; spr_X, spr_T, spr_Y
- - - - - - 0x002782 00:A772: FA        .byte $FA, $CF, $FD   ; 

- - - - - - 0x002785 00:A775: 02        .byte $02   ; 
- - - - - - 0x002786 00:A776: 02        .byte $02   ; 
- - - - - - 0x002787 00:A777: FA        .byte $FA, $A1, $ED   ; 
- - - - - - 0x00278A 00:A77A: 02        .byte $02, $A9, $ED   ; 



off_04_A77D_58:
- - - - - - 0x00278D 00:A77D: FF        .byte $FF   ; 
- - - - - - 0x00278E 00:A77E: 4A A7     .word off_FF_A74A



off_04_A780_59:
- - - - - - 0x002790 00:A780: FF        .byte $FF   ; 
- - - - - - 0x002791 00:A781: 5A A7     .word off_FF_A75A



off_04_A783_5A:
- - - - - - 0x002793 00:A783: FF        .byte $FF   ; 
- - - - - - 0x002794 00:A784: 6D A7     .word off_FF_A76D



off_04_A786_5B:
off_FF_A786:
- - - - - - 0x002796 00:A786: 82        .byte $82   ; counter
- - - - - - 0x002797 00:A787: 42        .byte $42   ; spr_A
- - - - - - 0x002798 00:A788: 01        .byte $01, $11, $FD   ; spr_X, spr_T, spr_Y
- - - - - - 0x00279B 00:A78B: F9        .byte $F9, $13, $FD   ; 

- - - - - - 0x00279E 00:A78E: 02        .byte $02   ; 
- - - - - - 0x00279F 00:A78F: 02        .byte $02   ; 
- - - - - - 0x0027A0 00:A790: FA        .byte $FA, $81, $ED   ; 
- - - - - - 0x0027A3 00:A793: 02        .byte $02, $83, $ED   ; 



off_04_A796_5C:
off_FF_A796:
- - - - - - 0x0027A6 00:A796: 82        .byte $82   ; counter
- - - - - - 0x0027A7 00:A797: 42        .byte $42   ; spr_A
- - - - - - 0x0027A8 00:A798: 01        .byte $01, $11, $FD   ; spr_X, spr_T, spr_Y
- - - - - - 0x0027AB 00:A79B: F9        .byte $F9, $13, $FD   ; 

- - - - - - 0x0027AE 00:A79E: 02        .byte $02   ; 
- - - - - - 0x0027AF 00:A79F: 02        .byte $02   ; 
- - - - - - 0x0027B0 00:A7A0: F7        .byte $F7, $89, $ED   ; 
- - - - - - 0x0027B3 00:A7A3: FF        .byte $FF, $8B, $ED   ; 



off_04_A7A6_5D:
off_FF_A7A6:
- - - - - - 0x0027B6 00:A7A6: 83        .byte $83   ; counter
- - - - - - 0x0027B7 00:A7A7: 02        .byte $02   ; spr_A
- - - - - - 0x0027B8 00:A7A8: EF        .byte $EF, $8D, $F3   ; spr_X, spr_T, spr_Y
- - - - - - 0x0027BB 00:A7AB: F7        .byte $F7, $8F, $F3   ; 
- - - - - - 0x0027BE 00:A7AE: FF        .byte $FF, $91, $F3   ; 

- - - - - - 0x0027C1 00:A7B1: 02        .byte $02   ; 
- - - - - - 0x0027C2 00:A7B2: 42        .byte $42   ; 
- - - - - - 0x0027C3 00:A7B3: 01        .byte $01, $27, $02   ; 
- - - - - - 0x0027C6 00:A7B6: F9        .byte $F9, $29, $02   ; 



off_04_A7B9_5E:
off_FF_A7B9:
- - - - - - 0x0027C9 00:A7B9: 83        .byte $83   ; counter
- - - - - - 0x0027CA 00:A7BA: 02        .byte $02   ; spr_A
- - - - - - 0x0027CB 00:A7BB: EF        .byte $EF, $93, $EF   ; spr_X, spr_T, spr_Y
- - - - - - 0x0027CE 00:A7BE: F7        .byte $F7, $95, $F2   ; 
- - - - - - 0x0027D1 00:A7C1: FF        .byte $FF, $91, $F2   ; 

- - - - - - 0x0027D4 00:A7C4: 02        .byte $02   ; 
- - - - - - 0x0027D5 00:A7C5: 42        .byte $42   ; 
- - - - - - 0x0027D6 00:A7C6: 01        .byte $01, $27, $02   ; 
- - - - - - 0x0027D9 00:A7C9: F9        .byte $F9, $29, $02   ; 



off_04_A7CC_5F:
- - - - - - 0x0027DC 00:A7CC: FF        .byte $FF   ; 
- - - - - - 0x0027DD 00:A7CD: 86 A7     .word off_FF_A786



off_04_A7CF_60:
- - - - - - 0x0027DF 00:A7CF: FF        .byte $FF   ; 
- - - - - - 0x0027E0 00:A7D0: 96 A7     .word off_FF_A796



off_04_A7D2_61:
- - - - - - 0x0027E2 00:A7D2: FF        .byte $FF   ; 
- - - - - - 0x0027E3 00:A7D3: A6 A7     .word off_FF_A7A6



off_04_A7D5_62:
- - - - - - 0x0027E5 00:A7D5: FF        .byte $FF   ; 
- - - - - - 0x0027E6 00:A7D6: B9 A7     .word off_FF_A7B9



off_04_A7D8_63:
off_FF_A7D8:
- D 1 - I - 0x0027E8 00:A7D8: 05        .byte $05   ; counter
- D 1 - I - 0x0027E9 00:A7D9: 02        .byte $02   ; spr_A
- D 1 - I - 0x0027EA 00:A7DA: F0        .byte $F0, $93, $ED   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0027ED 00:A7DD: F8        .byte $F8, $95, $F0   ; 
- D 1 - I - 0x0027F0 00:A7E0: 00        .byte $00, $91, $F0   ; 
- D 1 - I - 0x0027F3 00:A7E3: F8        .byte $F8, $97, $00   ; 
- D 1 - I - 0x0027F6 00:A7E6: 00        .byte $00, $99, $00   ; 



off_04_A7E9_64:
- - - - - - 0x0027F9 00:A7E9: FF        .byte $FF   ; 
- - - - - - 0x0027FA 00:A7EA: D8 A7     .word off_FF_A7D8



off_04_A7EC_65:
off_FF_A7EC:
- D 1 - I - 0x0027FC 00:A7EC: 82        .byte $82   ; counter
- D 1 - I - 0x0027FD 00:A7ED: 42        .byte $42   ; spr_A
- D 1 - I - 0x0027FE 00:A7EE: FA        .byte $FA, $17, $F7   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002801 00:A7F1: F2        .byte $F2, $19, $F7   ; 

- D 1 - I - 0x002804 00:A7F4: 01        .byte $01   ; 
- D 1 - I - 0x002805 00:A7F5: 02        .byte $02   ; 
- D 1 - I - 0x002806 00:A7F6: 02        .byte $02, $9B, $F7   ; 



off_04_A7F9_66:
- - - - - - 0x002809 00:A7F9: FF        .byte $FF   ; 
- - - - - - 0x00280A 00:A7FA: EC A7     .word off_FF_A7EC



off_04_A7FC_67:
off_FF_A7FC:
- D 1 - I - 0x00280C 00:A7FC: 82        .byte $82   ; counter
- D 1 - I - 0x00280D 00:A7FD: 02        .byte $02   ; spr_A
- D 1 - I - 0x00280E 00:A7FE: FB        .byte $FB, $9D, $F1   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002811 00:A801: 03        .byte $03, $9F, $F1   ; 

- D 1 - I - 0x002814 00:A804: 04        .byte $04   ; 
- D 1 - I - 0x002815 00:A805: 42        .byte $42   ; 
- D 1 - I - 0x002816 00:A806: 06        .byte $06, $1B, $01   ; 
- D 1 - I - 0x002819 00:A809: FE        .byte $FE, $1D, $01   ; 
- D 1 - I - 0x00281C 00:A80C: F6        .byte $F6, $1F, $01   ; 
- D 1 - I - 0x00281F 00:A80F: EE        .byte $EE, $21, $01   ; 



off_04_A812_68:
- - - - - - 0x002822 00:A812: FF        .byte $FF   ; 
- - - - - - 0x002823 00:A813: FC A7     .word off_FF_A7FC



off_04_A815_69:
off_FF_A815:
- D 1 - I - 0x002825 00:A815: 82        .byte $82   ; counter
- D 1 - I - 0x002826 00:A816: 01        .byte $01   ; spr_A
- D 1 - I - 0x002827 00:A817: EF        .byte $EF, $AB, $EF   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x00282A 00:A81A: F7        .byte $F7, $AD, $EF   ; 

- D 1 - I - 0x00282D 00:A81D: 81        .byte $81   ; 
- D 1 - I - 0x00282E 00:A81E: 00        .byte $00   ; 
- D 1 - I - 0x00282F 00:A81F: FF        .byte $FF, $AF, $EF   ; 

- D 1 - I - 0x002832 00:A822: 81        .byte $81   ; 
- D 1 - I - 0x002833 00:A823: 41        .byte $41   ; 
- D 1 - I - 0x002834 00:A824: 07        .byte $07, $AB, $EF   ; 

- D 1 - I - 0x002837 00:A827: 02        .byte $02   ; 
- D 1 - I - 0x002838 00:A828: 40        .byte $40   ; 
- D 1 - I - 0x002839 00:A829: 00        .byte $00, $01, $FF   ; 
- D 1 - I - 0x00283C 00:A82C: F8        .byte $F8, $03, $FF   ; 



off_04_A82F_6A:
off_FF_A82F:
- D 1 - I - 0x00283F 00:A82F: 82        .byte $82   ; counter
- D 1 - I - 0x002840 00:A830: 01        .byte $01   ; spr_A
- D 1 - I - 0x002841 00:A831: EE        .byte $EE, $B7, $F1   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002844 00:A834: 06        .byte $06, $BD, $F1   ; 

- D 1 - I - 0x002847 00:A837: 81        .byte $81   ; 
- D 1 - I - 0x002848 00:A838: 40        .byte $40   ; 
- D 1 - I - 0x002849 00:A839: F8        .byte $F8, $07, $FF   ; 

- D 1 - I - 0x00284C 00:A83C: 81        .byte $81   ; 
- D 1 - I - 0x00284D 00:A83D: 01        .byte $01   ; 
- D 1 - I - 0x00284E 00:A83E: F6        .byte $F6, $BF, $F1   ; 

- D 1 - I - 0x002851 00:A841: 81        .byte $81   ; 
- D 1 - I - 0x002852 00:A842: 40        .byte $40   ; 
- D 1 - I - 0x002853 00:A843: 00        .byte $00, $05, $FF   ; 

- D 1 - I - 0x002856 00:A846: 01        .byte $01   ; 
- D 1 - I - 0x002857 00:A847: 00        .byte $00   ; 
- D 1 - I - 0x002858 00:A848: FE        .byte $FE, $BB, $F1   ; 



off_04_A84B_6B:
off_FF_A84B:
- D 1 - I - 0x00285B 00:A84B: 82        .byte $82   ; counter
- D 1 - I - 0x00285C 00:A84C: 40        .byte $40   ; spr_A
- D 1 - I - 0x00285D 00:A84D: FE        .byte $FE, $09, $FF   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002860 00:A850: F6        .byte $F6, $0B, $FF   ; 

- D 1 - I - 0x002863 00:A853: 82        .byte $82   ; 
- D 1 - I - 0x002864 00:A854: 01        .byte $01   ; 
- D 1 - I - 0x002865 00:A855: EC        .byte $EC, $AB, $EF   ; 
- D 1 - I - 0x002868 00:A858: F4        .byte $F4, $AD, $EF   ; 

- D 1 - I - 0x00286B 00:A85B: 81        .byte $81   ; 
- D 1 - I - 0x00286C 00:A85C: 00        .byte $00   ; 
- D 1 - I - 0x00286D 00:A85D: FC        .byte $FC, $AF, $EF   ; 

- D 1 - I - 0x002870 00:A860: 01        .byte $01   ; 
- D 1 - I - 0x002871 00:A861: 41        .byte $41   ; 
- D 1 - I - 0x002872 00:A862: 04        .byte $04, $AB, $EF   ; 



off_04_A865_6C:
off_FF_A865:
- D 1 - I - 0x002875 00:A865: 82        .byte $82   ; counter
- D 1 - I - 0x002876 00:A866: 40        .byte $40   ; spr_A
- D 1 - I - 0x002877 00:A867: FF        .byte $FF, $0D, $FF   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x00287A 00:A86A: F7        .byte $F7, $0F, $FF   ; 

- D 1 - I - 0x00287D 00:A86D: 82        .byte $82   ; 
- D 1 - I - 0x00287E 00:A86E: 01        .byte $01   ; 
- D 1 - I - 0x00287F 00:A86F: EE        .byte $EE, $B7, $F1   ; 
- D 1 - I - 0x002882 00:A872: F6        .byte $F6, $BF, $F1   ; 

- D 1 - I - 0x002885 00:A875: 81        .byte $81   ; 
- D 1 - I - 0x002886 00:A876: 00        .byte $00   ; 
- D 1 - I - 0x002887 00:A877: FE        .byte $FE, $BB, $F1   ; 

- D 1 - I - 0x00288A 00:A87A: 01        .byte $01   ; 
- D 1 - I - 0x00288B 00:A87B: 01        .byte $01   ; 
- D 1 - I - 0x00288C 00:A87C: 06        .byte $06, $BD, $F1   ; 



off_04_A87F_6D:
- D 1 - I - 0x00288F 00:A87F: FF        .byte $FF   ; 
- D 1 - I - 0x002890 00:A880: 15 A8     .word off_FF_A815



off_04_A882_6E:
- D 1 - I - 0x002892 00:A882: FF        .byte $FF   ; 
- D 1 - I - 0x002893 00:A883: 2F A8     .word off_FF_A82F



off_04_A885_6F:
- - - - - - 0x002895 00:A885: FF        .byte $FF   ; 
- - - - - - 0x002896 00:A886: 4B A8     .word off_FF_A84B



off_04_A888_70:
- - - - - - 0x002898 00:A888: FF        .byte $FF   ; 
- - - - - - 0x002899 00:A889: 65 A8     .word off_FF_A865



off_04_A88B_71:
off_FF_A88B:
- D 1 - I - 0x00289B 00:A88B: 82        .byte $82   ; counter
- D 1 - I - 0x00289C 00:A88C: 01        .byte $01   ; spr_A
- D 1 - I - 0x00289D 00:A88D: F0        .byte $F0, $AB, $EE   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0028A0 00:A890: F8        .byte $F8, $AD, $EE   ; 

- D 1 - I - 0x0028A3 00:A893: 81        .byte $81   ; 
- D 1 - I - 0x0028A4 00:A894: 00        .byte $00   ; 
- D 1 - I - 0x0028A5 00:A895: 00        .byte $00, $AF, $EE   ; 

- D 1 - I - 0x0028A8 00:A898: 81        .byte $81   ; 
- D 1 - I - 0x0028A9 00:A899: 41        .byte $41   ; 
- D 1 - I - 0x0028AA 00:A89A: 08        .byte $08, $AB, $EE   ; 

- D 1 - I - 0x0028AD 00:A89D: 02        .byte $02   ; 
- D 1 - I - 0x0028AE 00:A89E: 40        .byte $40   ; 
- D 1 - I - 0x0028AF 00:A89F: 01        .byte $01, $27, $FE   ; 
- D 1 - I - 0x0028B2 00:A8A2: F9        .byte $F9, $29, $FE   ; 



off_04_A8A5_72:
off_FF_A8A5:
- D 1 - I - 0x0028B5 00:A8A5: 82        .byte $82   ; counter
- D 1 - I - 0x0028B6 00:A8A6: 01        .byte $01   ; spr_A
- D 1 - I - 0x0028B7 00:A8A7: F0        .byte $F0, $AB, $EE   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0028BA 00:A8AA: F8        .byte $F8, $AD, $EE   ; 

- D 1 - I - 0x0028BD 00:A8AD: 81        .byte $81   ; 
- D 1 - I - 0x0028BE 00:A8AE: 00        .byte $00   ; 
- D 1 - I - 0x0028BF 00:A8AF: 00        .byte $00, $AF, $EE   ; 

- D 1 - I - 0x0028C2 00:A8B2: 81        .byte $81   ; 
- D 1 - I - 0x0028C3 00:A8B3: 41        .byte $41   ; 
- D 1 - I - 0x0028C4 00:A8B4: 08        .byte $08, $AB, $EE   ; 

- D 1 - I - 0x0028C7 00:A8B7: 82        .byte $82   ; 
- D 1 - I - 0x0028C8 00:A8B8: 40        .byte $40   ; 
- D 1 - I - 0x0028C9 00:A8B9: 01        .byte $01, $27, $FE   ; 
- D 1 - I - 0x0028CC 00:A8BC: F9        .byte $F9, $29, $FE   ; 

- D 1 - I - 0x0028CF 00:A8BF: 81        .byte $81   ; 
- D 1 - I - 0x0028D0 00:A8C0: 03        .byte $03   ; 
- D 1 - I - 0x0028D1 00:A8C1: E1        .byte $E1, $F5, $EE   ; 

- D 1 - I - 0x0028D4 00:A8C4: 01        .byte $01   ; 
- D 1 - I - 0x0028D5 00:A8C5: 43        .byte $43   ; 
- D 1 - I - 0x0028D6 00:A8C6: E9        .byte $E9, $F5, $EE   ; 



off_04_A8C9_73:
off_FF_A8C9:
- D 1 - I - 0x0028D9 00:A8C9: 82        .byte $82   ; counter
- D 1 - I - 0x0028DA 00:A8CA: 40        .byte $40   ; spr_A
- D 1 - I - 0x0028DB 00:A8CB: 01        .byte $01, $27, $FE   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0028DE 00:A8CE: F9        .byte $F9, $29, $FE   ; 

- D 1 - I - 0x0028E1 00:A8D1: 82        .byte $82   ; 
- D 1 - I - 0x0028E2 00:A8D2: 03        .byte $03   ; 
- D 1 - I - 0x0028E3 00:A8D3: F2        .byte $F2, $B7, $EE   ; 
- D 1 - I - 0x0028E6 00:A8D6: FA        .byte $FA, $B9, $EE   ; 

- D 1 - I - 0x0028E9 00:A8D9: 81        .byte $81   ; 
- D 1 - I - 0x0028EA 00:A8DA: 00        .byte $00   ; 
- D 1 - I - 0x0028EB 00:A8DB: 02        .byte $02, $BB, $EE   ; 

- D 1 - I - 0x0028EE 00:A8DE: 81        .byte $81   ; 
- D 1 - I - 0x0028EF 00:A8DF: 01        .byte $01   ; 
- D 1 - I - 0x0028F0 00:A8E0: 0A        .byte $0A, $BD, $EE   ; 

- D 1 - I - 0x0028F3 00:A8E3: 01        .byte $01   ; 
- D 1 - I - 0x0028F4 00:A8E4: 03        .byte $03   ; 
- D 1 - I - 0x0028F5 00:A8E5: E1        .byte $E1, $FF, $EE   ; 



off_04_A8E8_74:
off_FF_A8E8:
- D 1 - I - 0x0028F8 00:A8E8: 82        .byte $82   ; counter
- D 1 - I - 0x0028F9 00:A8E9: 40        .byte $40   ; spr_A
- D 1 - I - 0x0028FA 00:A8EA: 01        .byte $01, $27, $FE   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0028FD 00:A8ED: F9        .byte $F9, $29, $FE   ; 

- D 1 - I - 0x002900 00:A8F0: 81        .byte $81   ; 
- D 1 - I - 0x002901 00:A8F1: 00        .byte $00   ; 
- D 1 - I - 0x002902 00:A8F2: 01        .byte $01, $BB, $EE   ; 

- D 1 - I - 0x002905 00:A8F5: 83        .byte $83   ; 
- D 1 - I - 0x002906 00:A8F6: 01        .byte $01   ; 
- D 1 - I - 0x002907 00:A8F7: 09        .byte $09, $BD, $EE   ; 
- D 1 - I - 0x00290A 00:A8FA: F1        .byte $F1, $B7, $EE   ; 
- D 1 - I - 0x00290D 00:A8FD: F9        .byte $F9, $B9, $EE   ; 

- D 1 - I - 0x002910 00:A900: 01        .byte $01   ; 
- D 1 - I - 0x002911 00:A901: 43        .byte $43   ; 
- D 1 - I - 0x002912 00:A902: E9        .byte $E9, $FF, $EE   ; 



off_04_A905_75:
- D 1 - I - 0x002915 00:A905: FF        .byte $FF   ; 
- D 1 - I - 0x002916 00:A906: 8B A8     .word off_FF_A88B



off_04_A908_76:
- - - - - - 0x002918 00:A908: FF        .byte $FF   ; 
- - - - - - 0x002919 00:A909: A5 A8     .word off_FF_A8A5



off_04_A90B_77:
- - - - - - 0x00291B 00:A90B: FF        .byte $FF   ; 
- - - - - - 0x00291C 00:A90C: C9 A8     .word off_FF_A8C9



off_04_A90E_78:
- - - - - - 0x00291E 00:A90E: FF        .byte $FF   ; 
- - - - - - 0x00291F 00:A90F: E8 A8     .word off_FF_A8E8



off_04_A911_79:
off_FF_A911:
- D 1 - I - 0x002921 00:A911: 82        .byte $82   ; counter
- D 1 - I - 0x002922 00:A912: 00        .byte $00   ; spr_A
- D 1 - I - 0x002923 00:A913: FA        .byte $FA, $B1, $F7   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002926 00:A916: 02        .byte $02, $B3, $F7   ; 

- D 1 - I - 0x002929 00:A919: 81        .byte $81   ; 
- D 1 - I - 0x00292A 00:A91A: 40        .byte $40   ; 
- D 1 - I - 0x00292B 00:A91B: F2        .byte $F2, $19, $F7   ; 

- D 1 - I - 0x00292E 00:A91E: 82        .byte $82   ; 
- D 1 - I - 0x00292F 00:A91F: 01        .byte $01   ; 
- D 1 - I - 0x002930 00:A920: FA        .byte $FA, $B5, $E7   ; 
- D 1 - I - 0x002933 00:A923: F2        .byte $F2, $AB, $E7   ; 

- D 1 - I - 0x002936 00:A926: 01        .byte $01   ; 
- D 1 - I - 0x002937 00:A927: 41        .byte $41   ; 
- D 1 - I - 0x002938 00:A928: 02        .byte $02, $AB, $E7   ; 



off_04_A92B_7A:
- D 1 - I - 0x00293B 00:A92B: FF        .byte $FF   ; 
- D 1 - I - 0x00293C 00:A92C: 11 A9     .word off_FF_A911



off_04_A92E_7B:
off_FF_A92E:
- D 1 - I - 0x00293E 00:A92E: 82        .byte $82   ; counter
- D 1 - I - 0x00293F 00:A92F: 00        .byte $00   ; spr_A
- D 1 - I - 0x002940 00:A930: FB        .byte $FB, $9D, $F1   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002943 00:A933: 03        .byte $03, $9F, $F1   ; 

- D 1 - I - 0x002946 00:A936: 04        .byte $04   ; 
- D 1 - I - 0x002947 00:A937: 40        .byte $40   ; 
- D 1 - I - 0x002948 00:A938: 06        .byte $06, $1B, $01   ; 
- D 1 - I - 0x00294B 00:A93B: FE        .byte $FE, $1D, $01   ; 
- D 1 - I - 0x00294E 00:A93E: F6        .byte $F6, $1F, $01   ; 
- D 1 - I - 0x002951 00:A941: EE        .byte $EE, $21, $01   ; 



off_04_A944_7C:
- D 1 - I - 0x002954 00:A944: FF        .byte $FF   ; 
- D 1 - I - 0x002955 00:A945: 2E A9     .word off_FF_A92E



off_04_A947_7D:
off_FF_A947:
- D 1 - I - 0x002957 00:A947: 82        .byte $82   ; counter
- D 1 - I - 0x002958 00:A948: 01        .byte $01   ; spr_A
- D 1 - I - 0x002959 00:A949: F0        .byte $F0, $AB, $F0   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x00295C 00:A94C: F8        .byte $F8, $AD, $F0   ; 

- D 1 - I - 0x00295F 00:A94F: 81        .byte $81   ; 
- D 1 - I - 0x002960 00:A950: 00        .byte $00   ; 
- D 1 - I - 0x002961 00:A951: 00        .byte $00, $AF, $F0   ; 

- D 1 - I - 0x002964 00:A954: 81        .byte $81   ; 
- D 1 - I - 0x002965 00:A955: 41        .byte $41   ; 
- D 1 - I - 0x002966 00:A956: 08        .byte $08, $AB, $F0   ; 

- D 1 - I - 0x002969 00:A959: 02        .byte $02   ; 
- D 1 - I - 0x00296A 00:A95A: 00        .byte $00   ; 
- D 1 - I - 0x00296B 00:A95B: F8        .byte $F8, $97, $00   ; 
- D 1 - I - 0x00296E 00:A95E: 00        .byte $00, $99, $00   ; 



off_04_A961_7E:
- D 1 - I - 0x002971 00:A961: FF        .byte $FF   ; 
- D 1 - I - 0x002972 00:A962: 47 A9     .word off_FF_A947



off_04_A964_7F:
off_FF_A964:
- D 1 - I - 0x002974 00:A964: 83        .byte $83   ; counter
- D 1 - I - 0x002975 00:A965: 01        .byte $01   ; spr_A
- D 1 - I - 0x002976 00:A966: EE        .byte $EE, $AB, $F2   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002979 00:A969: F6        .byte $F6, $AD, $EF   ; 
- D 1 - I - 0x00297C 00:A96C: FE        .byte $FE, $AF, $EF   ; 

- D 1 - I - 0x00297F 00:A96F: 02        .byte $02   ; 
- D 1 - I - 0x002980 00:A970: 41        .byte $41   ; 
- D 1 - I - 0x002981 00:A971: FF        .byte $FF, $11, $FF   ; 
- D 1 - I - 0x002984 00:A974: F7        .byte $F7, $13, $FF   ; 



off_04_A977_80:
off_FF_A977:
- - - - - - 0x002987 00:A977: 81        .byte $81   ; counter
- - - - - - 0x002988 00:A978: 01        .byte $01   ; spr_A
- - - - - - 0x002989 00:A979: ED        .byte $ED, $AB, $F3   ; spr_X, spr_T, spr_Y

- - - - - - 0x00298C 00:A97C: 82        .byte $82   ; 
- - - - - - 0x00298D 00:A97D: 41        .byte $41   ; 
- - - - - - 0x00298E 00:A97E: FF        .byte $FF, $11, $FF   ; 
- - - - - - 0x002991 00:A981: F7        .byte $F7, $13, $FF   ; 

- - - - - - 0x002994 00:A984: 02        .byte $02   ; 
- - - - - - 0x002995 00:A985: 01        .byte $01   ; 
- - - - - - 0x002996 00:A986: FD        .byte $FD, $AF, $F0   ; 
- - - - - - 0x002999 00:A989: F5        .byte $F5, $AD, $F0   ; 



off_04_A98C_81:
- D 1 - I - 0x00299C 00:A98C: FF        .byte $FF   ; 
- D 1 - I - 0x00299D 00:A98D: 64 A9     .word off_FF_A964



off_04_A98F_82:
- - - - - - 0x00299F 00:A98F: FF        .byte $FF   ; 
- - - - - - 0x0029A0 00:A990: 77 A9     .word off_FF_A977



off_04_A992_83:
off_FF_A992:
- D 1 - I - 0x0029A2 00:A992: 82        .byte $82   ; counter
- D 1 - I - 0x0029A3 00:A993: 41        .byte $41   ; spr_A
- D 1 - I - 0x0029A4 00:A994: 01        .byte $01, $27, $FE   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0029A7 00:A997: F9        .byte $F9, $29, $FE   ; 

- D 1 - I - 0x0029AA 00:A99A: 03        .byte $03   ; 
- D 1 - I - 0x0029AB 00:A99B: 01        .byte $01   ; 
- D 1 - I - 0x0029AC 00:A99C: F1        .byte $F1, $B1, $EE   ; 
- D 1 - I - 0x0029AF 00:A99F: F9        .byte $F9, $B3, $EE   ; 
- D 1 - I - 0x0029B2 00:A9A2: 01        .byte $01, $B5, $EE   ; 



off_04_A9A5_84:
off_FF_A9A5:
- D 1 - I - 0x0029B5 00:A9A5: 82        .byte $82   ; counter
- D 1 - I - 0x0029B6 00:A9A6: 41        .byte $41   ; spr_A
- D 1 - I - 0x0029B7 00:A9A7: 01        .byte $01, $27, $FE   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0029BA 00:A9AA: F9        .byte $F9, $29, $FE   ; 

- D 1 - I - 0x0029BD 00:A9AD: 03        .byte $03   ; 
- D 1 - I - 0x0029BE 00:A9AE: 01        .byte $01   ; 
- D 1 - I - 0x0029BF 00:A9AF: F2        .byte $F2, $B1, $EF   ; 
- D 1 - I - 0x0029C2 00:A9B2: FA        .byte $FA, $B3, $EF   ; 
- D 1 - I - 0x0029C5 00:A9B5: 02        .byte $02, $B5, $EF   ; 



off_04_A9B8_85:
- D 1 - I - 0x0029C8 00:A9B8: FF        .byte $FF   ; 
- D 1 - I - 0x0029C9 00:A9B9: 92 A9     .word off_FF_A992



off_04_A9BB_86:
- D 1 - I - 0x0029CB 00:A9BB: FF        .byte $FF   ; 
- D 1 - I - 0x0029CC 00:A9BC: A5 A9     .word off_FF_A9A5



off_04_A9BE_87:
off_FF_A9BE:
- - - - - - 0x0029CE 00:A9BE: 04        .byte $04   ; counter
- - - - - - 0x0029CF 00:A9BF: 01        .byte $01   ; spr_A
- - - - - - 0x0029D0 00:A9C0: F7        .byte $F7, $CD, $FD   ; spr_X, spr_T, spr_Y
- - - - - - 0x0029D3 00:A9C3: FF        .byte $FF, $CF, $FD   ; 
- - - - - - 0x0029D6 00:A9C6: FE        .byte $FE, $B9, $ED   ; 
- - - - - - 0x0029D9 00:A9C9: F6        .byte $F6, $B7, $EA   ; 



off_04_A9CC_88:
off_FF_A9CC:
- - - - - - 0x0029DC 00:A9CC: 04        .byte $04   ; counter
- - - - - - 0x0029DD 00:A9CD: 01        .byte $01   ; spr_A
- - - - - - 0x0029DE 00:A9CE: F7        .byte $F7, $CD, $FD   ; spr_X, spr_T, spr_Y
- - - - - - 0x0029E1 00:A9D1: FF        .byte $FF, $CF, $FD   ; 
- - - - - - 0x0029E4 00:A9D4: F7        .byte $F7, $B7, $EB   ; 
- - - - - - 0x0029E7 00:A9D7: FF        .byte $FF, $B9, $ED   ; 



off_04_A9DA_89:
- - - - - - 0x0029EA 00:A9DA: FF        .byte $FF   ; 
- - - - - - 0x0029EB 00:A9DB: BE A9     .word off_FF_A9BE



off_04_A9DD_8A:
- - - - - - 0x0029ED 00:A9DD: FF        .byte $FF   ; 
- - - - - - 0x0029EE 00:A9DE: CC A9     .word off_FF_A9CC



off_04_A9E0_8B:
off_FF_A9E0:
- D 1 - I - 0x0029F0 00:A9E0: 81        .byte $81   ; counter
- D 1 - I - 0x0029F1 00:A9E1: 01        .byte $01   ; spr_A
- D 1 - I - 0x0029F2 00:A9E2: 02        .byte $02, $BB, $F7   ; spr_X, spr_T, spr_Y

- D 1 - I - 0x0029F5 00:A9E5: 02        .byte $02   ; 
- D 1 - I - 0x0029F6 00:A9E6: 41        .byte $41   ; 
- D 1 - I - 0x0029F7 00:A9E7: FA        .byte $FA, $17, $F7   ; 
- D 1 - I - 0x0029FA 00:A9EA: F2        .byte $F2, $19, $F7   ; 



off_04_A9ED_8C:
- D 1 - I - 0x0029FD 00:A9ED: FF        .byte $FF   ; 
- D 1 - I - 0x0029FE 00:A9EE: E0 A9     .word off_FF_A9E0



off_04_A9F0_8D:
off_FF_A9F0:
- D 1 - I - 0x002A00 00:A9F0: 82        .byte $82   ; counter
- D 1 - I - 0x002A01 00:A9F1: 01        .byte $01   ; spr_A
- D 1 - I - 0x002A02 00:A9F2: F9        .byte $F9, $BD, $F0   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002A05 00:A9F5: 01        .byte $01, $BF, $F0   ; 

- D 1 - I - 0x002A08 00:A9F8: 04        .byte $04   ; 
- D 1 - I - 0x002A09 00:A9F9: 41        .byte $41   ; 
- D 1 - I - 0x002A0A 00:A9FA: 06        .byte $06, $1B, $00   ; 
- D 1 - I - 0x002A0D 00:A9FD: FE        .byte $FE, $1D, $00   ; 
- D 1 - I - 0x002A10 00:AA00: F6        .byte $F6, $1F, $00   ; 
- D 1 - I - 0x002A13 00:AA03: EE        .byte $EE, $21, $00   ; 



off_04_AA06_8E:
- D 1 - I - 0x002A16 00:AA06: FF        .byte $FF   ; 
- D 1 - I - 0x002A17 00:AA07: F0 A9     .word off_FF_A9F0



off_04_AA09_8F:
off_FF_AA09:
- D 1 - I - 0x002A19 00:AA09: 82        .byte $82   ; counter
- D 1 - I - 0x002A1A 00:AA0A: 41        .byte $41   ; spr_A
- D 1 - I - 0x002A1B 00:AA0B: 00        .byte $00, $01, $FF   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002A1E 00:AA0E: F8        .byte $F8, $03, $FF   ; 

- D 1 - I - 0x002A21 00:AA11: 03        .byte $03   ; 
- D 1 - I - 0x002A22 00:AA12: 01        .byte $01   ; 
- D 1 - I - 0x002A23 00:AA13: EF        .byte $EF, $B1, $EF   ; 
- D 1 - I - 0x002A26 00:AA16: F7        .byte $F7, $A9, $EF   ; 
- D 1 - I - 0x002A29 00:AA19: FF        .byte $FF, $B5, $EF   ; 



off_04_AA1C_90:
off_FF_AA1C:
- D 1 - I - 0x002A2C 00:AA1C: 82        .byte $82   ; counter
- D 1 - I - 0x002A2D 00:AA1D: 41        .byte $41   ; spr_A
- D 1 - I - 0x002A2E 00:AA1E: 00        .byte $00, $05, $FF   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002A31 00:AA21: F8        .byte $F8, $07, $FF   ; 

- D 1 - I - 0x002A34 00:AA24: 03        .byte $03   ; 
- D 1 - I - 0x002A35 00:AA25: 01        .byte $01   ; 
- D 1 - I - 0x002A36 00:AA26: EE        .byte $EE, $B1, $F0   ; 
- D 1 - I - 0x002A39 00:AA29: F6        .byte $F6, $A9, $F0   ; 
- D 1 - I - 0x002A3C 00:AA2C: FE        .byte $FE, $B5, $F0   ; 



off_04_AA2F_91:
off_FF_AA2F:
- D 1 - I - 0x002A3F 00:AA2F: 82        .byte $82   ; counter
- D 1 - I - 0x002A40 00:AA30: 41        .byte $41   ; spr_A
- D 1 - I - 0x002A41 00:AA31: FE        .byte $FE, $09, $FF   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002A44 00:AA34: F6        .byte $F6, $0B, $FF   ; 

- D 1 - I - 0x002A47 00:AA37: 03        .byte $03   ; 
- D 1 - I - 0x002A48 00:AA38: 01        .byte $01   ; 
- D 1 - I - 0x002A49 00:AA39: EC        .byte $EC, $B1, $EF   ; 
- D 1 - I - 0x002A4C 00:AA3C: F4        .byte $F4, $A9, $EF   ; 
- D 1 - I - 0x002A4F 00:AA3F: FC        .byte $FC, $B5, $EF   ; 



off_04_AA42_92:
off_FF_AA42:
- D 1 - I - 0x002A52 00:AA42: 82        .byte $82   ; counter
- D 1 - I - 0x002A53 00:AA43: 41        .byte $41   ; spr_A
- D 1 - I - 0x002A54 00:AA44: FF        .byte $FF, $0D, $FF   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002A57 00:AA47: F7        .byte $F7, $0F, $FF   ; 

- D 1 - I - 0x002A5A 00:AA4A: 03        .byte $03   ; 
- D 1 - I - 0x002A5B 00:AA4B: 01        .byte $01   ; 
- D 1 - I - 0x002A5C 00:AA4C: EE        .byte $EE, $B1, $F0   ; 
- D 1 - I - 0x002A5F 00:AA4F: F6        .byte $F6, $A9, $F0   ; 
- D 1 - I - 0x002A62 00:AA52: FE        .byte $FE, $B5, $F0   ; 



off_04_AA55_93:
- D 1 - I - 0x002A65 00:AA55: FF        .byte $FF   ; 
- D 1 - I - 0x002A66 00:AA56: 09 AA     .word off_FF_AA09



off_04_AA58_94:
- - - - - - 0x002A68 00:AA58: FF        .byte $FF   ; 
- - - - - - 0x002A69 00:AA59: 1C AA     .word off_FF_AA1C



off_04_AA5B_95:
- - - - - - 0x002A6B 00:AA5B: FF        .byte $FF   ; 
- - - - - - 0x002A6C 00:AA5C: 2F AA     .word off_FF_AA2F



off_04_AA5E_96:
- - - - - - 0x002A6E 00:AA5E: FF        .byte $FF   ; 
- - - - - - 0x002A6F 00:AA5F: 42 AA     .word off_FF_AA42



_off032_AA61_06:
- - - - - - 0x002A71 00:AA61: A1 AA     .word off_06_AAA1_00
- D 1 - I - 0x002A73 00:AA63: A1 AA     .word off_06_AAA1_01
- D 1 - I - 0x002A75 00:AA65: C8 AA     .word off_06_AAC8_02
- D 1 - I - 0x002A77 00:AA67: E3 AA     .word off_06_AAE3_03
- D 1 - I - 0x002A79 00:AA69: 04 AB     .word off_06_AB04_04
- D 1 - I - 0x002A7B 00:AA6B: 25 AB     .word off_06_AB25_05
- D 1 - I - 0x002A7D 00:AA6D: 28 AB     .word off_06_AB28_06
- D 1 - I - 0x002A7F 00:AA6F: 2B AB     .word off_06_AB2B_07
- D 1 - I - 0x002A81 00:AA71: 2E AB     .word off_06_AB2E_08
- D 1 - I - 0x002A83 00:AA73: 31 AB     .word off_06_AB31_09
- D 1 - I - 0x002A85 00:AA75: 4D AB     .word off_06_AB4D_0A
- D 1 - I - 0x002A87 00:AA77: 69 AB     .word off_06_AB69_0B
- D 1 - I - 0x002A89 00:AA79: 85 AB     .word off_06_AB85_0C
- D 1 - I - 0x002A8B 00:AA7B: A1 AB     .word off_06_ABA1_0D
- D 1 - I - 0x002A8D 00:AA7D: C5 AB     .word off_06_ABC5_0E
- D 1 - I - 0x002A8F 00:AA7F: E9 AB     .word off_06_ABE9_0F
- D 1 - I - 0x002A91 00:AA81: EC AB     .word off_06_ABEC_10
- D 1 - I - 0x002A93 00:AA83: EF AB     .word off_06_ABEF_11
- D 1 - I - 0x002A95 00:AA85: F2 AB     .word off_06_ABF2_12
- D 1 - I - 0x002A97 00:AA87: F5 AB     .word off_06_ABF5_13
- D 1 - I - 0x002A99 00:AA89: 0C AC     .word off_06_AC0C_14
- D 1 - I - 0x002A9B 00:AA8B: 2D AC     .word off_06_AC2D_15
- D 1 - I - 0x002A9D 00:AA8D: 51 AC     .word off_06_AC51_16
- D 1 - I - 0x002A9F 00:AA8F: 71 AC     .word off_06_AC71_17
- D 1 - I - 0x002AA1 00:AA91: 74 AC     .word off_06_AC74_18
- D 1 - I - 0x002AA3 00:AA93: 77 AC     .word off_06_AC77_19
- D 1 - I - 0x002AA5 00:AA95: 7A AC     .word off_06_AC7A_1A
- D 1 - I - 0x002AA7 00:AA97: 7D AC     .word off_06_AC7D_1B
- D 1 - I - 0x002AA9 00:AA99: 9A AC     .word off_06_AC9A_1C
- D 1 - I - 0x002AAB 00:AA9B: B4 AC     .word off_06_ACB4_1D
- D 1 - I - 0x002AAD 00:AA9D: C8 AC     .word off_06_ACC8_1E
- D 1 - I - 0x002AAF 00:AA9F: DF AC     .word off_06_ACDF_1F



off_06_AAA1_00:
off_06_AAA1_01:
off_FF_AAA1:
- D 1 - I - 0x002AB1 00:AAA1: 84        .byte $84   ; counter
- D 1 - I - 0x002AB2 00:AAA2: 02        .byte $02   ; spr_A
- D 1 - I - 0x002AB3 00:AAA3: EF        .byte $EF, $81, $E1   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002AB6 00:AAA6: F7        .byte $F7, $83, $E1   ; 
- D 1 - I - 0x002AB9 00:AAA9: FF        .byte $FF, $85, $E1   ; 
- D 1 - I - 0x002ABC 00:AAAC: 07        .byte $07, $87, $E1   ; 

- D 1 - I - 0x002ABF 00:AAAF: 81        .byte $81   ; 
- D 1 - I - 0x002AC0 00:AAB0: 00        .byte $00   ; 
- D 1 - I - 0x002AC1 00:AAB1: EF        .byte $EF, $89, $F1   ; 

- D 1 - I - 0x002AC4 00:AAB4: 06        .byte $06   ; 
- D 1 - I - 0x002AC5 00:AAB5: 02        .byte $02   ; 
- D 1 - I - 0x002AC6 00:AAB6: F7        .byte $F7, $8B, $F1   ; 
- D 1 - I - 0x002AC9 00:AAB9: FF        .byte $FF, $8D, $F1   ; 
- D 1 - I - 0x002ACC 00:AABC: 07        .byte $07, $8F, $F1   ; 
- D 1 - I - 0x002ACF 00:AABF: F7        .byte $F7, $91, $01   ; 
- D 1 - I - 0x002AD2 00:AAC2: FF        .byte $FF, $93, $01   ; 
- D 1 - I - 0x002AD5 00:AAC5: 07        .byte $07, $95, $01   ; 



off_06_AAC8_02:
off_FF_AAC8:
- D 1 - I - 0x002AD8 00:AAC8: 82        .byte $82   ; counter
- D 1 - I - 0x002AD9 00:AAC9: 02        .byte $02   ; spr_A
- D 1 - I - 0x002ADA 00:AACA: F0        .byte $F0, $97, $E1   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002ADD 00:AACD: F8        .byte $F8, $99, $E1   ; 

- D 1 - I - 0x002AE0 00:AAD0: 81        .byte $81   ; 
- D 1 - I - 0x002AE1 00:AAD1: 00        .byte $00   ; 
- D 1 - I - 0x002AE2 00:AAD2: EC        .byte $EC, $9B, $F1   ; 

- D 1 - I - 0x002AE5 00:AAD5: 04        .byte $04   ; 
- D 1 - I - 0x002AE6 00:AAD6: 02        .byte $02   ; 
- D 1 - I - 0x002AE7 00:AAD7: F4        .byte $F4, $9D, $F1   ; 
- D 1 - I - 0x002AEA 00:AADA: FC        .byte $FC, $9F, $F1   ; 
- D 1 - I - 0x002AED 00:AADD: F8        .byte $F8, $A1, $01   ; 
- D 1 - I - 0x002AF0 00:AAE0: 00        .byte $00, $A3, $01   ; 



off_06_AAE3_03:
off_FF_AAE3:
- D 1 - I - 0x002AF3 00:AAE3: 83        .byte $83   ; counter
- D 1 - I - 0x002AF4 00:AAE4: 02        .byte $02   ; spr_A
- D 1 - I - 0x002AF5 00:AAE5: EC        .byte $EC, $AF, $E1   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002AF8 00:AAE8: F4        .byte $F4, $B1, $E1   ; 
- D 1 - I - 0x002AFB 00:AAEB: FC        .byte $FC, $B3, $E1   ; 

- D 1 - I - 0x002AFE 00:AAEE: 81        .byte $81   ; 
- D 1 - I - 0x002AFF 00:AAEF: 00        .byte $00   ; 
- D 1 - I - 0x002B00 00:AAF0: EC        .byte $EC, $B5, $F1   ; 

- D 1 - I - 0x002B03 00:AAF3: 05        .byte $05   ; 
- D 1 - I - 0x002B04 00:AAF4: 02        .byte $02   ; 
- D 1 - I - 0x002B05 00:AAF5: F4        .byte $F4, $B7, $F1   ; 
- D 1 - I - 0x002B08 00:AAF8: FC        .byte $FC, $B9, $F1   ; 
- D 1 - I - 0x002B0B 00:AAFB: F4        .byte $F4, $BB, $01   ; 
- D 1 - I - 0x002B0E 00:AAFE: FC        .byte $FC, $BD, $01   ; 
- D 1 - I - 0x002B11 00:AB01: 04        .byte $04, $BF, $01   ; 



off_06_AB04_04:
off_FF_AB04:
- D 1 - I - 0x002B14 00:AB04: 82        .byte $82   ; counter
- D 1 - I - 0x002B15 00:AB05: 02        .byte $02   ; spr_A
- D 1 - I - 0x002B16 00:AB06: EE        .byte $EE, $97, $E1   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002B19 00:AB09: F6        .byte $F6, $99, $E1   ; 

- D 1 - I - 0x002B1C 00:AB0C: 81        .byte $81   ; 
- D 1 - I - 0x002B1D 00:AB0D: 00        .byte $00   ; 
- D 1 - I - 0x002B1E 00:AB0E: EA        .byte $EA, $9B, $F1   ; 

- D 1 - I - 0x002B21 00:AB11: 06        .byte $06   ; 
- D 1 - I - 0x002B22 00:AB12: 02        .byte $02   ; 
- D 1 - I - 0x002B23 00:AB13: F2        .byte $F2, $9D, $F1   ; 
- D 1 - I - 0x002B26 00:AB16: FA        .byte $FA, $A5, $F1   ; 
- D 1 - I - 0x002B29 00:AB19: 02        .byte $02, $A7, $F1   ; 
- D 1 - I - 0x002B2C 00:AB1C: F6        .byte $F6, $A9, $01   ; 
- D 1 - I - 0x002B2F 00:AB1F: FE        .byte $FE, $AB, $01   ; 
- D 1 - I - 0x002B32 00:AB22: 06        .byte $06, $AD, $01   ; 



off_06_AB25_05:
- D 1 - I - 0x002B35 00:AB25: FF        .byte $FF   ; 
- D 1 - I - 0x002B36 00:AB26: A1 AA     .word off_FF_AAA1



off_06_AB28_06:
- D 1 - I - 0x002B38 00:AB28: FF        .byte $FF   ; 
- D 1 - I - 0x002B39 00:AB29: C8 AA     .word off_FF_AAC8



off_06_AB2B_07:
- D 1 - I - 0x002B3B 00:AB2B: FF        .byte $FF   ; 
- D 1 - I - 0x002B3C 00:AB2C: E3 AA     .word off_FF_AAE3



off_06_AB2E_08:
- D 1 - I - 0x002B3E 00:AB2E: FF        .byte $FF   ; 
- D 1 - I - 0x002B3F 00:AB2F: 04 AB     .word off_FF_AB04



off_06_AB31_09:
off_FF_AB31:
- D 1 - I - 0x002B41 00:AB31: 87        .byte $87   ; counter
- D 1 - I - 0x002B42 00:AB32: 02        .byte $02   ; spr_A
- D 1 - I - 0x002B43 00:AB33: 08        .byte $08, $8D, $01   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002B46 00:AB36: 10        .byte $10, $8F, $01   ; 
- D 1 - I - 0x002B49 00:AB39: 00        .byte $00, $8B, $01   ; 
- D 1 - I - 0x002B4C 00:AB3C: 08        .byte $08, $89, $F1   ; 
- D 1 - I - 0x002B4F 00:AB3F: 00        .byte $00, $87, $F1   ; 
- D 1 - I - 0x002B52 00:AB42: 00        .byte $00, $83, $E1   ; 
- D 1 - I - 0x002B55 00:AB45: F8        .byte $F8, $81, $E1   ; 

- D 1 - I - 0x002B58 00:AB48: 01        .byte $01   ; 
- D 1 - I - 0x002B59 00:AB49: 00        .byte $00   ; 
- D 1 - I - 0x002B5A 00:AB4A: F8        .byte $F8, $85, $F1   ; 



off_06_AB4D_0A:
- D 1 - I - 0x002B5D 00:AB4D: 84        .byte $84   ; counter
- D 1 - I - 0x002B5E 00:AB4E: 02        .byte $02   ; spr_A
- D 1 - I - 0x002B5F 00:AB4F: F0        .byte $F0, $91, $F1   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002B62 00:AB52: F8        .byte $F8, $93, $F1   ; 
- D 1 - I - 0x002B65 00:AB55: F0        .byte $F0, $95, $01   ; 
- D 1 - I - 0x002B68 00:AB58: F8        .byte $F8, $97, $01   ; 

- D 1 - I - 0x002B6B 00:AB5B: 04        .byte $04   ; 
- D 1 - I - 0x002B6C 00:AB5C: 42        .byte $42   ; 
- D 1 - I - 0x002B6D 00:AB5D: 08        .byte $08, $91, $F1   ; 
- D 1 - I - 0x002B70 00:AB60: 00        .byte $00, $93, $F1   ; 
- D 1 - I - 0x002B73 00:AB63: 08        .byte $08, $95, $01   ; 
- D 1 - I - 0x002B76 00:AB66: 00        .byte $00, $97, $01   ; 



off_06_AB69_0B:
- D 1 - I - 0x002B79 00:AB69: 84        .byte $84   ; counter
- D 1 - I - 0x002B7A 00:AB6A: 82        .byte $82   ; spr_A
- D 1 - I - 0x002B7B 00:AB6B: F0        .byte $F0, $91, $01   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002B7E 00:AB6E: F8        .byte $F8, $93, $01   ; 
- D 1 - I - 0x002B81 00:AB71: F0        .byte $F0, $95, $F1   ; 
- D 1 - I - 0x002B84 00:AB74: F8        .byte $F8, $97, $F1   ; 

- D 1 - I - 0x002B87 00:AB77: 04        .byte $04   ; 
- D 1 - I - 0x002B88 00:AB78: C2        .byte $C2   ; 
- D 1 - I - 0x002B89 00:AB79: 08        .byte $08, $91, $01   ; 
- D 1 - I - 0x002B8C 00:AB7C: 00        .byte $00, $93, $01   ; 
- D 1 - I - 0x002B8F 00:AB7F: 08        .byte $08, $95, $F1   ; 
- D 1 - I - 0x002B92 00:AB82: 00        .byte $00, $97, $F1   ; 



off_06_AB85_0C:
off_FF_AB85:
- D 1 - I - 0x002B95 00:AB85: 86        .byte $86   ; counter
- D 1 - I - 0x002B96 00:AB86: 02        .byte $02   ; spr_A
- D 1 - I - 0x002B97 00:AB87: F8        .byte $F8, $A5, $01   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002B9A 00:AB8A: 00        .byte $00, $A7, $01   ; 
- D 1 - I - 0x002B9D 00:AB8D: F8        .byte $F8, $A1, $F1   ; 
- D 1 - I - 0x002BA0 00:AB90: 00        .byte $00, $A3, $F1   ; 
- D 1 - I - 0x002BA3 00:AB93: F0        .byte $F0, $9F, $F1   ; 
- D 1 - I - 0x002BA6 00:AB96: 00        .byte $00, $9D, $E1   ; 

- D 1 - I - 0x002BA9 00:AB99: 02        .byte $02   ; 
- D 1 - I - 0x002BAA 00:AB9A: 00        .byte $00   ; 
- D 1 - I - 0x002BAB 00:AB9B: F0        .byte $F0, $99, $E1   ; 
- D 1 - I - 0x002BAE 00:AB9E: F8        .byte $F8, $9B, $E1   ; 



off_06_ABA1_0D:
off_FF_ABA1:
- D 1 - I - 0x002BB1 00:ABA1: 86        .byte $86   ; counter
- D 1 - I - 0x002BB2 00:ABA2: 02        .byte $02   ; spr_A
- D 1 - I - 0x002BB3 00:ABA3: 00        .byte $00, $BB, $01   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002BB6 00:ABA6: F8        .byte $F8, $B9, $01   ; 
- D 1 - I - 0x002BB9 00:ABA9: F0        .byte $F0, $B7, $01   ; 
- D 1 - I - 0x002BBC 00:ABAC: F0        .byte $F0, $B1, $F1   ; 
- D 1 - I - 0x002BBF 00:ABAF: F8        .byte $F8, $B3, $F1   ; 
- D 1 - I - 0x002BC2 00:ABB2: 00        .byte $00, $B5, $F1   ; 

- D 1 - I - 0x002BC5 00:ABB5: 82        .byte $82   ; 
- D 1 - I - 0x002BC6 00:ABB6: 00        .byte $00   ; 
- D 1 - I - 0x002BC7 00:ABB7: E0        .byte $E0, $A9, $F1   ; 
- D 1 - I - 0x002BCA 00:ABBA: E8        .byte $E8, $AB, $F1   ; 

- D 1 - I - 0x002BCD 00:ABBD: 02        .byte $02   ; 
- D 1 - I - 0x002BCE 00:ABBE: 02        .byte $02   ; 
- D 1 - I - 0x002BCF 00:ABBF: F0        .byte $F0, $AD, $E1   ; 
- D 1 - I - 0x002BD2 00:ABC2: F8        .byte $F8, $AF, $E1   ; 



off_06_ABC5_0E:
off_FF_ABC5:
- D 1 - I - 0x002BD5 00:ABC5: 88        .byte $88   ; counter
- D 1 - I - 0x002BD6 00:ABC6: 02        .byte $02   ; spr_A
- D 1 - I - 0x002BD7 00:ABC7: 00        .byte $00, $BB, $01   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002BDA 00:ABCA: F8        .byte $F8, $B9, $01   ; 
- D 1 - I - 0x002BDD 00:ABCD: F0        .byte $F0, $B7, $01   ; 
- D 1 - I - 0x002BE0 00:ABD0: F0        .byte $F0, $B1, $F1   ; 
- D 1 - I - 0x002BE3 00:ABD3: F8        .byte $F8, $B3, $F1   ; 
- D 1 - I - 0x002BE6 00:ABD6: 00        .byte $00, $B5, $F1   ; 
- D 1 - I - 0x002BE9 00:ABD9: F0        .byte $F0, $AD, $E1   ; 
- D 1 - I - 0x002BEC 00:ABDC: F8        .byte $F8, $AF, $E1   ; 

- D 1 - I - 0x002BEF 00:ABDF: 81        .byte $81   ; 
- D 1 - I - 0x002BF0 00:ABE0: 00        .byte $00   ; 
- D 1 - I - 0x002BF1 00:ABE1: ED        .byte $ED, $BD, $E1   ; 

- D 1 - I - 0x002BF4 00:ABE4: 01        .byte $01   ; 
- D 1 - I - 0x002BF5 00:ABE5: 02        .byte $02   ; 
- D 1 - I - 0x002BF6 00:ABE6: ED        .byte $ED, $BF, $F1   ; 



off_06_ABE9_0F:
- D 1 - I - 0x002BF9 00:ABE9: FF        .byte $FF   ; 
- D 1 - I - 0x002BFA 00:ABEA: 31 AB     .word off_FF_AB31



off_06_ABEC_10:
- D 1 - I - 0x002BFC 00:ABEC: FF        .byte $FF   ; 
- D 1 - I - 0x002BFD 00:ABED: 85 AB     .word off_FF_AB85



off_06_ABEF_11:
- D 1 - I - 0x002BFF 00:ABEF: FF        .byte $FF   ; 
- D 1 - I - 0x002C00 00:ABF0: A1 AB     .word off_FF_ABA1



off_06_ABF2_12:
- D 1 - I - 0x002C02 00:ABF2: FF        .byte $FF   ; 
- D 1 - I - 0x002C03 00:ABF3: C5 AB     .word off_FF_ABC5



off_06_ABF5_13:
off_FF_ABF5:
- D 1 - I - 0x002C05 00:ABF5: 07        .byte $07   ; counter
- D 1 - I - 0x002C06 00:ABF6: 02        .byte $02   ; spr_A
- D 1 - I - 0x002C07 00:ABF7: F0        .byte $F0, $81, $F1   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002C0A 00:ABFA: F8        .byte $F8, $83, $F1   ; 
- D 1 - I - 0x002C0D 00:ABFD: 00        .byte $00, $85, $F1   ; 
- D 1 - I - 0x002C10 00:AC00: 08        .byte $08, $87, $F1   ; 
- D 1 - I - 0x002C13 00:AC03: F8        .byte $F8, $89, $01   ; 
- D 1 - I - 0x002C16 00:AC06: 00        .byte $00, $8B, $01   ; 
- D 1 - I - 0x002C19 00:AC09: 08        .byte $08, $8D, $01   ; 



off_06_AC0C_14:
off_FF_AC0C:
- D 1 - I - 0x002C1C 00:AC0C: 85        .byte $85   ; counter
- D 1 - I - 0x002C1D 00:AC0D: 02        .byte $02   ; spr_A
- D 1 - I - 0x002C1E 00:AC0E: F8        .byte $F8, $9D, $01   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002C21 00:AC11: 00        .byte $00, $9F, $01   ; 
- D 1 - I - 0x002C24 00:AC14: 04        .byte $04, $9B, $F1   ; 
- D 1 - I - 0x002C27 00:AC17: FC        .byte $FC, $99, $F1   ; 
- D 1 - I - 0x002C2A 00:AC1A: F4        .byte $F4, $97, $F1   ; 

- D 1 - I - 0x002C2D 00:AC1D: 81        .byte $81   ; 
- D 1 - I - 0x002C2E 00:AC1E: 00        .byte $00   ; 
- D 1 - I - 0x002C2F 00:AC1F: EC        .byte $EC, $95, $F1   ; 

- D 1 - I - 0x002C32 00:AC22: 03        .byte $03   ; 
- D 1 - I - 0x002C33 00:AC23: 02        .byte $02   ; 
- D 1 - I - 0x002C34 00:AC24: 00        .byte $00, $93, $E1   ; 
- D 1 - I - 0x002C37 00:AC27: F8        .byte $F8, $91, $E1   ; 
- D 1 - I - 0x002C3A 00:AC2A: F0        .byte $F0, $8F, $E1   ; 



off_06_AC2D_15:
off_FF_AC2D:
- D 1 - I - 0x002C3D 00:AC2D: 88        .byte $88   ; counter
- D 1 - I - 0x002C3E 00:AC2E: 02        .byte $02   ; spr_A
- D 1 - I - 0x002C3F 00:AC2F: F8        .byte $F8, $9D, $01   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002C42 00:AC32: 00        .byte $00, $BF, $01   ; 
- D 1 - I - 0x002C45 00:AC35: 01        .byte $01, $BD, $F1   ; 
- D 1 - I - 0x002C48 00:AC38: F9        .byte $F9, $BB, $F1   ; 
- D 1 - I - 0x002C4B 00:AC3B: 03        .byte $03, $B9, $E1   ; 
- D 1 - I - 0x002C4E 00:AC3E: FB        .byte $FB, $B7, $E1   ; 
- D 1 - I - 0x002C51 00:AC41: F3        .byte $F3, $B5, $E1   ; 
- D 1 - I - 0x002C54 00:AC44: 00        .byte $00, $B3, $D1   ; 

- D 1 - I - 0x002C57 00:AC47: 81        .byte $81   ; 
- D 1 - I - 0x002C58 00:AC48: 00        .byte $00   ; 
- D 1 - I - 0x002C59 00:AC49: F8        .byte $F8, $B1, $D1   ; 

- D 1 - I - 0x002C5C 00:AC4C: 01        .byte $01   ; 
- D 1 - I - 0x002C5D 00:AC4D: 02        .byte $02   ; 
- D 1 - I - 0x002C5E 00:AC4E: F0        .byte $F0, $AF, $D1   ; 



off_06_AC51_16:
off_FF_AC51:
- D 1 - I - 0x002C61 00:AC51: 0A        .byte $0A   ; counter
- D 1 - I - 0x002C62 00:AC52: 02        .byte $02   ; spr_A
- D 1 - I - 0x002C63 00:AC53: 05        .byte $05, $93, $E5   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002C66 00:AC56: FD        .byte $FD, $91, $E5   ; 
- D 1 - I - 0x002C69 00:AC59: F5        .byte $F5, $8F, $E5   ; 
- D 1 - I - 0x002C6C 00:AC5C: F0        .byte $F0, $A1, $F5   ; 
- D 1 - I - 0x002C6F 00:AC5F: F8        .byte $F8, $A3, $F5   ; 
- D 1 - I - 0x002C72 00:AC62: 00        .byte $00, $A5, $F5   ; 
- D 1 - I - 0x002C75 00:AC65: 08        .byte $08, $A7, $F5   ; 
- D 1 - I - 0x002C78 00:AC68: F0        .byte $F0, $A9, $05   ; 
- D 1 - I - 0x002C7B 00:AC6B: F8        .byte $F8, $AB, $05   ; 
- D 1 - I - 0x002C7E 00:AC6E: 00        .byte $00, $AD, $05   ; 



off_06_AC71_17:
- D 1 - I - 0x002C81 00:AC71: FF        .byte $FF   ; 
- D 1 - I - 0x002C82 00:AC72: F5 AB     .word off_FF_ABF5



off_06_AC74_18:
- D 1 - I - 0x002C84 00:AC74: FF        .byte $FF   ; 
- D 1 - I - 0x002C85 00:AC75: 0C AC     .word off_FF_AC0C



off_06_AC77_19:
- D 1 - I - 0x002C87 00:AC77: FF        .byte $FF   ; 
- D 1 - I - 0x002C88 00:AC78: 2D AC     .word off_FF_AC2D



off_06_AC7A_1A:
- D 1 - I - 0x002C8A 00:AC7A: FF        .byte $FF   ; 
- D 1 - I - 0x002C8B 00:AC7B: 51 AC     .word off_FF_AC51



off_06_AC7D_1B:
- D 1 - I - 0x002C8D 00:AC7D: 09        .byte $09   ; counter
- D 1 - I - 0x002C8E 00:AC7E: 02        .byte $02   ; spr_A
- D 1 - I - 0x002C8F 00:AC7F: F0        .byte $F0, $81, $E9   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002C92 00:AC82: F8        .byte $F8, $83, $E9   ; 
- D 1 - I - 0x002C95 00:AC85: 00        .byte $00, $85, $E9   ; 
- D 1 - I - 0x002C98 00:AC88: F0        .byte $F0, $87, $F9   ; 
- D 1 - I - 0x002C9B 00:AC8B: F8        .byte $F8, $89, $F9   ; 
- D 1 - I - 0x002C9E 00:AC8E: 00        .byte $00, $8B, $F9   ; 
- D 1 - I - 0x002CA1 00:AC91: F0        .byte $F0, $8D, $09   ; 
- D 1 - I - 0x002CA4 00:AC94: F8        .byte $F8, $8F, $09   ; 
- D 1 - I - 0x002CA7 00:AC97: 00        .byte $00, $91, $09   ; 



off_06_AC9A_1C:
- D 1 - I - 0x002CAA 00:AC9A: 08        .byte $08   ; counter
- D 1 - I - 0x002CAB 00:AC9B: 02        .byte $02   ; spr_A
- D 1 - I - 0x002CAC 00:AC9C: E8        .byte $E8, $81, $E9   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002CAF 00:AC9F: F0        .byte $F0, $83, $E9   ; 
- D 1 - I - 0x002CB2 00:ACA2: F8        .byte $F8, $85, $E9   ; 
- D 1 - I - 0x002CB5 00:ACA5: E8        .byte $E8, $93, $F9   ; 
- D 1 - I - 0x002CB8 00:ACA8: F0        .byte $F0, $95, $F9   ; 
- D 1 - I - 0x002CBB 00:ACAB: F8        .byte $F8, $97, $F9   ; 
- D 1 - I - 0x002CBE 00:ACAE: F0        .byte $F0, $99, $09   ; 
- D 1 - I - 0x002CC1 00:ACB1: F8        .byte $F8, $9B, $09   ; 



off_06_ACB4_1D:
- D 1 - I - 0x002CC4 00:ACB4: 06        .byte $06   ; counter
- D 1 - I - 0x002CC5 00:ACB5: 02        .byte $02   ; spr_A
- D 1 - I - 0x002CC6 00:ACB6: E0        .byte $E0, $A3, $01   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002CC9 00:ACB9: F0        .byte $F0, $A7, $01   ; 
- D 1 - I - 0x002CCC 00:ACBC: E8        .byte $E8, $A5, $01   ; 
- D 1 - I - 0x002CCF 00:ACBF: E0        .byte $E0, $9D, $F1   ; 
- D 1 - I - 0x002CD2 00:ACC2: E8        .byte $E8, $9F, $F1   ; 
- D 1 - I - 0x002CD5 00:ACC5: F0        .byte $F0, $A1, $F1   ; 



off_06_ACC8_1E:
- D 1 - I - 0x002CD8 00:ACC8: 07        .byte $07   ; counter
- D 1 - I - 0x002CD9 00:ACC9: 02        .byte $02   ; spr_A
- D 1 - I - 0x002CDA 00:ACCA: F0        .byte $F0, $AF, $01   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002CDD 00:ACCD: E8        .byte $E8, $AD, $01   ; 
- D 1 - I - 0x002CE0 00:ACD0: E0        .byte $E0, $AB, $01   ; 
- D 1 - I - 0x002CE3 00:ACD3: D8        .byte $D8, $A9, $01   ; 
- D 1 - I - 0x002CE6 00:ACD6: DB        .byte $DB, $9D, $F1   ; 
- D 1 - I - 0x002CE9 00:ACD9: E3        .byte $E3, $9F, $F1   ; 
- D 1 - I - 0x002CEC 00:ACDC: EB        .byte $EB, $A1, $F1   ; 



off_06_ACDF_1F:
- D 1 - I - 0x002CEF 00:ACDF: 08        .byte $08   ; counter
- D 1 - I - 0x002CF0 00:ACE0: 02        .byte $02   ; spr_A
- D 1 - I - 0x002CF1 00:ACE1: D8        .byte $D8, $B1, $F6   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002CF4 00:ACE4: E0        .byte $E0, $B3, $F6   ; 
- D 1 - I - 0x002CF7 00:ACE7: E8        .byte $E8, $B5, $F6   ; 
- D 1 - I - 0x002CFA 00:ACEA: D0        .byte $D0, $B7, $06   ; 
- D 1 - I - 0x002CFD 00:ACED: D8        .byte $D8, $B9, $06   ; 
- D 1 - I - 0x002D00 00:ACF0: E0        .byte $E0, $BB, $06   ; 
- D 1 - I - 0x002D03 00:ACF3: E8        .byte $E8, $BD, $06   ; 
- D 1 - I - 0x002D06 00:ACF6: F0        .byte $F0, $BF, $06   ; 



_off032_ACF9_0A:
- - - - - - 0x002D09 00:ACF9: 3D AD     .word off_0A_AD3D_00
- D 1 - I - 0x002D0B 00:ACFB: 3D AD     .word off_0A_AD3D_01
- D 1 - I - 0x002D0D 00:ACFD: 65 AD     .word off_0A_AD65_02
- D 1 - I - 0x002D0F 00:ACFF: 87 AD     .word off_0A_AD87_03
- D 1 - I - 0x002D11 00:AD01: A9 AD     .word off_0A_ADA9_04
- D 1 - I - 0x002D13 00:AD03: CE AD     .word off_0A_ADCE_05
- D 1 - I - 0x002D15 00:AD05: D1 AD     .word off_0A_ADD1_06
- D 1 - I - 0x002D17 00:AD07: D4 AD     .word off_0A_ADD4_07
- D 1 - I - 0x002D19 00:AD09: D7 AD     .word off_0A_ADD7_08
- D 1 - I - 0x002D1B 00:AD0B: DA AD     .word off_0A_ADDA_09
- D 1 - I - 0x002D1D 00:AD0D: FF AD     .word off_0A_ADFF_0A
- D 1 - I - 0x002D1F 00:AD0F: 2A AE     .word off_0A_AE2A_0B
- D 1 - I - 0x002D21 00:AD11: 4E AE     .word off_0A_AE4E_0C
- D 1 - I - 0x002D23 00:AD13: 69 AE     .word off_0A_AE69_0D
- D 1 - I - 0x002D25 00:AD15: 6C AE     .word off_0A_AE6C_0E
- D 1 - I - 0x002D27 00:AD17: 6F AE     .word off_0A_AE6F_0F
- D 1 - I - 0x002D29 00:AD19: 72 AE     .word off_0A_AE72_10
- D 1 - I - 0x002D2B 00:AD1B: 75 AE     .word off_0A_AE75_11
- D 1 - I - 0x002D2D 00:AD1D: A1 AE     .word off_0A_AEA1_12
- D 1 - I - 0x002D2F 00:AD1F: D6 AE     .word off_0A_AED6_13
- D 1 - I - 0x002D31 00:AD21: FB AE     .word off_0A_AEFB_14
- D 1 - I - 0x002D33 00:AD23: 1D AF     .word off_0A_AF1D_15
- D 1 - I - 0x002D35 00:AD25: 3D AF     .word off_0A_AF3D_16
- D 1 - I - 0x002D37 00:AD27: 5D AF     .word off_0A_AF5D_17
- D 1 - I - 0x002D39 00:AD29: 67 AF     .word off_0A_AF67_18
- D 1 - I - 0x002D3B 00:AD2B: 71 AF     .word off_0A_AF71_19
- D 1 - I - 0x002D3D 00:AD2D: 95 AF     .word off_0A_AF95_1A
- D 1 - I - 0x002D3F 00:AD2F: B7 AF     .word off_0A_AFB7_1B
- D 1 - I - 0x002D41 00:AD31: D9 AF     .word off_0A_AFD9_1C
- D 1 - I - 0x002D43 00:AD33: FB AF     .word off_0A_AFFB_1D
- D 1 - I - 0x002D45 00:AD35: 1D B0     .word off_0A_B01D_1E
- D 1 - I - 0x002D47 00:AD37: 2E B0     .word off_0A_B02E_1F
- D 1 - I - 0x002D49 00:AD39: 3F B0     .word off_0A_B03F_20
- - - - - - 0x002D4B 00:AD3B: 50 B0     .word off_0A_B050_21



off_0A_AD3D_00:
off_0A_AD3D_01:
off_FF_AD3D:
- D 1 - I - 0x002D4D 00:AD3D: 85        .byte $85   ; counter
- D 1 - I - 0x002D4E 00:AD3E: 01        .byte $01   ; spr_A
- D 1 - I - 0x002D4F 00:AD3F: E8        .byte $E8, $81, $01   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002D52 00:AD42: F0        .byte $F0, $83, $01   ; 
- D 1 - I - 0x002D55 00:AD45: F8        .byte $F8, $85, $F1   ; 
- D 1 - I - 0x002D58 00:AD48: 00        .byte $00, $87, $F1   ; 
- D 1 - I - 0x002D5B 00:AD4B: 08        .byte $08, $89, $F1   ; 

- D 1 - I - 0x002D5E 00:AD4E: 07        .byte $07   ; 
- D 1 - I - 0x002D5F 00:AD4F: 02        .byte $02   ; 
- D 1 - I - 0x002D60 00:AD50: F8        .byte $F8, $8B, $01   ; 
- D 1 - I - 0x002D63 00:AD53: 00        .byte $00, $8D, $01   ; 
- D 1 - I - 0x002D66 00:AD56: 08        .byte $08, $8F, $01   ; 
- D 1 - I - 0x002D69 00:AD59: F0        .byte $F0, $91, $11   ; 
- D 1 - I - 0x002D6C 00:AD5C: F8        .byte $F8, $93, $11   ; 
- D 1 - I - 0x002D6F 00:AD5F: 00        .byte $00, $95, $11   ; 
- D 1 - I - 0x002D72 00:AD62: 08        .byte $08, $97, $11   ; 



off_0A_AD65_02:
off_FF_AD65:
- D 1 - I - 0x002D75 00:AD65: 83        .byte $83   ; counter
- D 1 - I - 0x002D76 00:AD66: 01        .byte $01   ; spr_A
- D 1 - I - 0x002D77 00:AD67: F8        .byte $F8, $99, $F1   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002D7A 00:AD6A: 00        .byte $00, $9B, $F1   ; 
- D 1 - I - 0x002D7D 00:AD6D: 08        .byte $08, $9D, $F1   ; 

- D 1 - I - 0x002D80 00:AD70: 07        .byte $07   ; 
- D 1 - I - 0x002D81 00:AD71: 02        .byte $02   ; 
- D 1 - I - 0x002D82 00:AD72: F8        .byte $F8, $9F, $01   ; 
- D 1 - I - 0x002D85 00:AD75: 00        .byte $00, $A1, $01   ; 
- D 1 - I - 0x002D88 00:AD78: 08        .byte $08, $A3, $01   ; 
- D 1 - I - 0x002D8B 00:AD7B: F0        .byte $F0, $91, $11   ; 
- D 1 - I - 0x002D8E 00:AD7E: F8        .byte $F8, $93, $11   ; 
- D 1 - I - 0x002D91 00:AD81: 00        .byte $00, $95, $11   ; 
- D 1 - I - 0x002D94 00:AD84: 08        .byte $08, $97, $11   ; 



off_0A_AD87_03:
off_FF_AD87:
- D 1 - I - 0x002D97 00:AD87: 83        .byte $83   ; counter
- D 1 - I - 0x002D98 00:AD88: 01        .byte $01   ; spr_A
- D 1 - I - 0x002D99 00:AD89: F8        .byte $F8, $A5, $F1   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002D9C 00:AD8C: 00        .byte $00, $A7, $F1   ; 
- D 1 - I - 0x002D9F 00:AD8F: 08        .byte $08, $A9, $F1   ; 

- D 1 - I - 0x002DA2 00:AD92: 07        .byte $07   ; 
- D 1 - I - 0x002DA3 00:AD93: 02        .byte $02   ; 
- D 1 - I - 0x002DA4 00:AD94: F8        .byte $F8, $AB, $01   ; 
- D 1 - I - 0x002DA7 00:AD97: 00        .byte $00, $AD, $01   ; 
- D 1 - I - 0x002DAA 00:AD9A: 08        .byte $08, $AF, $01   ; 
- D 1 - I - 0x002DAD 00:AD9D: F0        .byte $F0, $91, $11   ; 
- D 1 - I - 0x002DB0 00:ADA0: F8        .byte $F8, $93, $11   ; 
- D 1 - I - 0x002DB3 00:ADA3: 00        .byte $00, $95, $11   ; 
- D 1 - I - 0x002DB6 00:ADA6: 08        .byte $08, $97, $11   ; 



off_0A_ADA9_04:
off_FF_ADA9:
- D 1 - I - 0x002DB9 00:ADA9: 84        .byte $84   ; counter
- D 1 - I - 0x002DBA 00:ADAA: 01        .byte $01   ; spr_A
- D 1 - I - 0x002DBB 00:ADAB: F0        .byte $F0, $B1, $F1   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002DBE 00:ADAE: F8        .byte $F8, $B3, $F1   ; 
- D 1 - I - 0x002DC1 00:ADB1: 00        .byte $00, $B5, $F1   ; 
- D 1 - I - 0x002DC4 00:ADB4: 08        .byte $08, $B7, $F1   ; 

- D 1 - I - 0x002DC7 00:ADB7: 07        .byte $07   ; 
- D 1 - I - 0x002DC8 00:ADB8: 02        .byte $02   ; 
- D 1 - I - 0x002DC9 00:ADB9: F8        .byte $F8, $B9, $01   ; 
- D 1 - I - 0x002DCC 00:ADBC: 00        .byte $00, $BB, $01   ; 
- D 1 - I - 0x002DCF 00:ADBF: 08        .byte $08, $BD, $01   ; 
- D 1 - I - 0x002DD2 00:ADC2: F0        .byte $F0, $91, $11   ; 
- D 1 - I - 0x002DD5 00:ADC5: F8        .byte $F8, $93, $11   ; 
- D 1 - I - 0x002DD8 00:ADC8: 00        .byte $00, $95, $11   ; 
- D 1 - I - 0x002DDB 00:ADCB: 08        .byte $08, $97, $11   ; 



off_0A_ADCE_05:
- D 1 - I - 0x002DDE 00:ADCE: FF        .byte $FF   ; 
- D 1 - I - 0x002DDF 00:ADCF: 3D AD     .word off_FF_AD3D



off_0A_ADD1_06:
- D 1 - I - 0x002DE1 00:ADD1: FF        .byte $FF   ; 
- D 1 - I - 0x002DE2 00:ADD2: 65 AD     .word off_FF_AD65



off_0A_ADD4_07:
- D 1 - I - 0x002DE4 00:ADD4: FF        .byte $FF   ; 
- D 1 - I - 0x002DE5 00:ADD5: 87 AD     .word off_FF_AD87



off_0A_ADD7_08:
- D 1 - I - 0x002DE7 00:ADD7: FF        .byte $FF   ; 
- D 1 - I - 0x002DE8 00:ADD8: A9 AD     .word off_FF_ADA9



off_0A_ADDA_09:
off_FF_ADDA:
- D 1 - I - 0x002DEA 00:ADDA: 86        .byte $86   ; counter
- D 1 - I - 0x002DEB 00:ADDB: 01        .byte $01   ; spr_A
- D 1 - I - 0x002DEC 00:ADDC: F0        .byte $F0, $81, $E9   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002DEF 00:ADDF: F8        .byte $F8, $83, $E1   ; 
- D 1 - I - 0x002DF2 00:ADE2: 00        .byte $00, $85, $E1   ; 
- D 1 - I - 0x002DF5 00:ADE5: 08        .byte $08, $87, $E1   ; 
- D 1 - I - 0x002DF8 00:ADE8: F8        .byte $F8, $89, $F1   ; 
- D 1 - I - 0x002DFB 00:ADEB: 00        .byte $00, $8B, $F1   ; 

- D 1 - I - 0x002DFE 00:ADEE: 05        .byte $05   ; 
- D 1 - I - 0x002DFF 00:ADEF: 02        .byte $02   ; 
- D 1 - I - 0x002E00 00:ADF0: 08        .byte $08, $8D, $F1   ; 
- D 1 - I - 0x002E03 00:ADF3: F8        .byte $F8, $8F, $01   ; 
- D 1 - I - 0x002E06 00:ADF6: 00        .byte $00, $91, $01   ; 
- D 1 - I - 0x002E09 00:ADF9: 08        .byte $08, $93, $01   ; 
- D 1 - I - 0x002E0C 00:ADFC: 08        .byte $08, $95, $11   ; 



off_0A_ADFF_0A:
off_FF_ADFF:
- D 1 - I - 0x002E0F 00:ADFF: 86        .byte $86   ; counter
- D 1 - I - 0x002E10 00:AE00: 01        .byte $01   ; spr_A
- D 1 - I - 0x002E11 00:AE01: F0        .byte $F0, $81, $E9   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002E14 00:AE04: F8        .byte $F8, $83, $E1   ; 
- D 1 - I - 0x002E17 00:AE07: 00        .byte $00, $85, $E1   ; 
- D 1 - I - 0x002E1A 00:AE0A: 08        .byte $08, $87, $E1   ; 
- D 1 - I - 0x002E1D 00:AE0D: F8        .byte $F8, $89, $F1   ; 
- D 1 - I - 0x002E20 00:AE10: 00        .byte $00, $8B, $F1   ; 

- D 1 - I - 0x002E23 00:AE13: 07        .byte $07   ; 
- D 1 - I - 0x002E24 00:AE14: 02        .byte $02   ; 
- D 1 - I - 0x002E25 00:AE15: 08        .byte $08, $8D, $F1   ; 
- D 1 - I - 0x002E28 00:AE18: F8        .byte $F8, $97, $01   ; 
- D 1 - I - 0x002E2B 00:AE1B: 00        .byte $00, $99, $01   ; 
- D 1 - I - 0x002E2E 00:AE1E: 08        .byte $08, $9B, $01   ; 
- D 1 - I - 0x002E31 00:AE21: F8        .byte $F8, $9D, $11   ; 
- D 1 - I - 0x002E34 00:AE24: 00        .byte $00, $9F, $11   ; 
- D 1 - I - 0x002E37 00:AE27: 08        .byte $08, $A1, $11   ; 



off_0A_AE2A_0B:
off_FF_AE2A:
- D 1 - I - 0x002E3A 00:AE2A: 81        .byte $81   ; counter
- D 1 - I - 0x002E3B 00:AE2B: 02        .byte $02   ; spr_A
- D 1 - I - 0x002E3C 00:AE2C: F0        .byte $F0, $A3, $F1   ; spr_X, spr_T, spr_Y

- D 1 - I - 0x002E3F 00:AE2F: 82        .byte $82   ; 
- D 1 - I - 0x002E40 00:AE30: 01        .byte $01   ; 
- D 1 - I - 0x002E41 00:AE31: F8        .byte $F8, $A5, $F1   ; 
- D 1 - I - 0x002E44 00:AE34: 00        .byte $00, $A7, $F1   ; 

- D 1 - I - 0x002E47 00:AE37: 07        .byte $07   ; 
- D 1 - I - 0x002E48 00:AE38: 02        .byte $02   ; 
- D 1 - I - 0x002E49 00:AE39: F8        .byte $F8, $B1, $11   ; 
- D 1 - I - 0x002E4C 00:AE3C: 00        .byte $00, $9F, $11   ; 
- D 1 - I - 0x002E4F 00:AE3F: 08        .byte $08, $A1, $11   ; 
- D 1 - I - 0x002E52 00:AE42: 08        .byte $08, $AF, $01   ; 
- D 1 - I - 0x002E55 00:AE45: 00        .byte $00, $AD, $01   ; 
- D 1 - I - 0x002E58 00:AE48: 08        .byte $08, $A9, $F1   ; 
- D 1 - I - 0x002E5B 00:AE4B: F8        .byte $F8, $AB, $01   ; 



off_0A_AE4E_0C:
off_FF_AE4E:
- D 1 - I - 0x002E5E 00:AE4E: 83        .byte $83   ; counter
- D 1 - I - 0x002E5F 00:AE4F: 02        .byte $02   ; spr_A
- D 1 - I - 0x002E60 00:AE50: F8        .byte $F8, $BB, $11   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002E63 00:AE53: 00        .byte $00, $BD, $11   ; 
- D 1 - I - 0x002E66 00:AE56: 08        .byte $08, $BF, $11   ; 

- D 1 - I - 0x002E69 00:AE59: 83        .byte $83   ; 
- D 1 - I - 0x002E6A 00:AE5A: 01        .byte $01   ; 
- D 1 - I - 0x002E6B 00:AE5B: F0        .byte $F0, $B3, $09   ; 
- D 1 - I - 0x002E6E 00:AE5E: F8        .byte $F8, $B5, $01   ; 
- D 1 - I - 0x002E71 00:AE61: 00        .byte $00, $B7, $01   ; 

- D 1 - I - 0x002E74 00:AE64: 01        .byte $01   ; 
- D 1 - I - 0x002E75 00:AE65: 02        .byte $02   ; 
- D 1 - I - 0x002E76 00:AE66: 08        .byte $08, $B9, $01   ; 



off_0A_AE69_0D:
- D 1 - I - 0x002E79 00:AE69: FF        .byte $FF   ; 
- D 1 - I - 0x002E7A 00:AE6A: DA AD     .word off_FF_ADDA



off_0A_AE6C_0E:
- D 1 - I - 0x002E7C 00:AE6C: FF        .byte $FF   ; 
- D 1 - I - 0x002E7D 00:AE6D: FF AD     .word off_FF_ADFF



off_0A_AE6F_0F:
- D 1 - I - 0x002E7F 00:AE6F: FF        .byte $FF   ; 
- D 1 - I - 0x002E80 00:AE70: 2A AE     .word off_FF_AE2A



off_0A_AE72_10:
- D 1 - I - 0x002E82 00:AE72: FF        .byte $FF   ; 
- D 1 - I - 0x002E83 00:AE73: 4E AE     .word off_FF_AE4E



off_0A_AE75_11:
- D 1 - I - 0x002E85 00:AE75: 82        .byte $82   ; counter
- D 1 - I - 0x002E86 00:AE76: 01        .byte $01   ; spr_A
- D 1 - I - 0x002E87 00:AE77: F0        .byte $F0, $81, $F1   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002E8A 00:AE7A: F8        .byte $F8, $83, $F1   ; 

- D 1 - I - 0x002E8D 00:AE7D: 84        .byte $84   ; 
- D 1 - I - 0x002E8E 00:AE7E: 02        .byte $02   ; 
- D 1 - I - 0x002E8F 00:AE7F: F0        .byte $F0, $85, $01   ; 
- D 1 - I - 0x002E92 00:AE82: F8        .byte $F8, $87, $01   ; 
- D 1 - I - 0x002E95 00:AE85: F0        .byte $F0, $89, $11   ; 
- D 1 - I - 0x002E98 00:AE88: F8        .byte $F8, $8B, $11   ; 

- D 1 - I - 0x002E9B 00:AE8B: 82        .byte $82   ; 
- D 1 - I - 0x002E9C 00:AE8C: 41        .byte $41   ; 
- D 1 - I - 0x002E9D 00:AE8D: 08        .byte $08, $81, $F1   ; 
- D 1 - I - 0x002EA0 00:AE90: 00        .byte $00, $83, $F1   ; 

- D 1 - I - 0x002EA3 00:AE93: 04        .byte $04   ; 
- D 1 - I - 0x002EA4 00:AE94: 42        .byte $42   ; 
- D 1 - I - 0x002EA5 00:AE95: 08        .byte $08, $85, $01   ; 
- D 1 - I - 0x002EA8 00:AE98: 00        .byte $00, $87, $01   ; 
- D 1 - I - 0x002EAB 00:AE9B: 08        .byte $08, $89, $11   ; 
- D 1 - I - 0x002EAE 00:AE9E: 00        .byte $00, $8B, $11   ; 



off_0A_AEA1_12:
- D 1 - I - 0x002EB1 00:AEA1: 83        .byte $83   ; counter
- D 1 - I - 0x002EB2 00:AEA2: 01        .byte $01   ; spr_A
- D 1 - I - 0x002EB3 00:AEA3: F8        .byte $F8, $8D, $E1   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002EB6 00:AEA6: F0        .byte $F0, $8F, $F1   ; 
- D 1 - I - 0x002EB9 00:AEA9: F8        .byte $F8, $91, $F1   ; 

- D 1 - I - 0x002EBC 00:AEAC: 84        .byte $84   ; 
- D 1 - I - 0x002EBD 00:AEAD: 02        .byte $02   ; 
- D 1 - I - 0x002EBE 00:AEAE: F0        .byte $F0, $93, $01   ; 
- D 1 - I - 0x002EC1 00:AEB1: F8        .byte $F8, $95, $01   ; 
- D 1 - I - 0x002EC4 00:AEB4: F0        .byte $F0, $89, $11   ; 
- D 1 - I - 0x002EC7 00:AEB7: F8        .byte $F8, $8B, $11   ; 

- D 1 - I - 0x002ECA 00:AEBA: 83        .byte $83   ; 
- D 1 - I - 0x002ECB 00:AEBB: 41        .byte $41   ; 
- D 1 - I - 0x002ECC 00:AEBC: 00        .byte $00, $8D, $E1   ; 
- D 1 - I - 0x002ECF 00:AEBF: 00        .byte $00, $91, $F1   ; 
- D 1 - I - 0x002ED2 00:AEC2: 08        .byte $08, $8F, $F1   ; 

- D 1 - I - 0x002ED5 00:AEC5: 04        .byte $04   ; 
- D 1 - I - 0x002ED6 00:AEC6: 42        .byte $42   ; 
- D 1 - I - 0x002ED7 00:AEC7: 08        .byte $08, $93, $01   ; 
- D 1 - I - 0x002EDA 00:AECA: 00        .byte $00, $95, $01   ; 
- D 1 - I - 0x002EDD 00:AECD: 08        .byte $08, $89, $11   ; 
- D 1 - I - 0x002EE0 00:AED0: 00        .byte $00, $8B, $11   ; 


; bzk garbage
- - - - - - 0x002EE3 00:AED3: 00        .byte $00   ; 
- - - - - - 0x002EE4 00:AED4: 8B        .byte $8B   ; 
- - - - - - 0x002EE5 00:AED5: 11        .byte $11   ; 






off_0A_AED6_13:
- D 1 - I - 0x002EE6 00:AED6: 83        .byte $83   ; counter
- D 1 - I - 0x002EE7 00:AED7: 01        .byte $01   ; spr_A
- D 1 - I - 0x002EE8 00:AED8: F8        .byte $F8, $97, $F1   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002EEB 00:AEDB: 00        .byte $00, $99, $F1   ; 
- D 1 - I - 0x002EEE 00:AEDE: 08        .byte $08, $9B, $F1   ; 

- D 1 - I - 0x002EF1 00:AEE1: 08        .byte $08   ; 
- D 1 - I - 0x002EF2 00:AEE2: 02        .byte $02   ; 
- D 1 - I - 0x002EF3 00:AEE3: F0        .byte $F0, $9D, $01   ; 
- D 1 - I - 0x002EF6 00:AEE6: F8        .byte $F8, $9F, $01   ; 
- D 1 - I - 0x002EF9 00:AEE9: 00        .byte $00, $A1, $01   ; 
- D 1 - I - 0x002EFC 00:AEEC: 08        .byte $08, $A3, $01   ; 
- D 1 - I - 0x002EFF 00:AEEF: F0        .byte $F0, $A5, $11   ; 
- D 1 - I - 0x002F02 00:AEF2: F8        .byte $F8, $A7, $11   ; 
- D 1 - I - 0x002F05 00:AEF5: 00        .byte $00, $A9, $11   ; 
- D 1 - I - 0x002F08 00:AEF8: 08        .byte $08, $AB, $11   ; 



off_0A_AEFB_14:
- D 1 - I - 0x002F0B 00:AEFB: 88        .byte $88   ; counter
- D 1 - I - 0x002F0C 00:AEFC: 02        .byte $02   ; spr_A
- D 1 - I - 0x002F0D 00:AEFD: F0        .byte $F0, $B9, $11   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002F10 00:AF00: F8        .byte $F8, $BB, $11   ; 
- D 1 - I - 0x002F13 00:AF03: 00        .byte $00, $BD, $11   ; 
- D 1 - I - 0x002F16 00:AF06: 08        .byte $08, $BF, $11   ; 
- D 1 - I - 0x002F19 00:AF09: 00        .byte $00, $B1, $01   ; 
- D 1 - I - 0x002F1C 00:AF0C: 08        .byte $08, $B3, $01   ; 
- D 1 - I - 0x002F1F 00:AF0F: F8        .byte $F8, $AF, $01   ; 
- D 1 - I - 0x002F22 00:AF12: F0        .byte $F0, $AD, $01   ; 

- D 1 - I - 0x002F25 00:AF15: 02        .byte $02   ; 
- D 1 - I - 0x002F26 00:AF16: 01        .byte $01   ; 
- D 1 - I - 0x002F27 00:AF17: 10        .byte $10, $B5, $01   ; 
- D 1 - I - 0x002F2A 00:AF1A: 18        .byte $18, $B7, $01   ; 



off_0A_AF1D_15:
- D 1 - I - 0x002F2D 00:AF1D: 82        .byte $82   ; counter
- D 1 - I - 0x002F2E 00:AF1E: 03        .byte $03   ; spr_A
- D 1 - I - 0x002F2F 00:AF1F: F0        .byte $F0, $A1, $F8   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002F32 00:AF22: F8        .byte $F8, $A3, $F8   ; 

- D 1 - I - 0x002F35 00:AF25: 82        .byte $82   ; 
- D 1 - I - 0x002F36 00:AF26: 43        .byte $43   ; 
- D 1 - I - 0x002F37 00:AF27: 08        .byte $08, $A1, $F8   ; 
- D 1 - I - 0x002F3A 00:AF2A: 00        .byte $00, $A3, $F8   ; 

- D 1 - I - 0x002F3D 00:AF2D: 82        .byte $82   ; 
- D 1 - I - 0x002F3E 00:AF2E: 83        .byte $83   ; 
- D 1 - I - 0x002F3F 00:AF2F: F0        .byte $F0, $A1, $08   ; 
- D 1 - I - 0x002F42 00:AF32: F8        .byte $F8, $A3, $08   ; 

- D 1 - I - 0x002F45 00:AF35: 02        .byte $02   ; 
- D 1 - I - 0x002F46 00:AF36: C3        .byte $C3   ; 
- D 1 - I - 0x002F47 00:AF37: 08        .byte $08, $A1, $08   ; 
- D 1 - I - 0x002F4A 00:AF3A: 00        .byte $00, $A3, $08   ; 



off_0A_AF3D_16:
- D 1 - I - 0x002F4D 00:AF3D: 82        .byte $82   ; counter
- D 1 - I - 0x002F4E 00:AF3E: 03        .byte $03   ; spr_A
- D 1 - I - 0x002F4F 00:AF3F: F0        .byte $F0, $A5, $F8   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002F52 00:AF42: F8        .byte $F8, $A7, $F8   ; 

- D 1 - I - 0x002F55 00:AF45: 82        .byte $82   ; 
- D 1 - I - 0x002F56 00:AF46: 43        .byte $43   ; 
- D 1 - I - 0x002F57 00:AF47: 08        .byte $08, $A5, $F8   ; 
- D 1 - I - 0x002F5A 00:AF4A: 00        .byte $00, $A7, $F8   ; 

- D 1 - I - 0x002F5D 00:AF4D: 82        .byte $82   ; 
- D 1 - I - 0x002F5E 00:AF4E: 83        .byte $83   ; 
- D 1 - I - 0x002F5F 00:AF4F: F0        .byte $F0, $A5, $08   ; 
- D 1 - I - 0x002F62 00:AF52: F8        .byte $F8, $A7, $08   ; 

- D 1 - I - 0x002F65 00:AF55: 02        .byte $02   ; 
- D 1 - I - 0x002F66 00:AF56: C3        .byte $C3   ; 
- D 1 - I - 0x002F67 00:AF57: 08        .byte $08, $A5, $08   ; 
- D 1 - I - 0x002F6A 00:AF5A: 00        .byte $00, $A7, $08   ; 



off_0A_AF5D_17:
- D 1 - I - 0x002F6D 00:AF5D: 81        .byte $81   ; counter
- D 1 - I - 0x002F6E 00:AF5E: 03        .byte $03   ; spr_A
- D 1 - I - 0x002F6F 00:AF5F: F8        .byte $F8, $A9, $00   ; spr_X, spr_T, spr_Y

- D 1 - I - 0x002F72 00:AF62: 01        .byte $01   ; 
- D 1 - I - 0x002F73 00:AF63: 43        .byte $43   ; 
- D 1 - I - 0x002F74 00:AF64: 00        .byte $00, $A9, $00   ; 



off_0A_AF67_18:
- D 1 - I - 0x002F77 00:AF67: 81        .byte $81   ; counter
- D 1 - I - 0x002F78 00:AF68: 03        .byte $03   ; spr_A
- D 1 - I - 0x002F79 00:AF69: F8        .byte $F8, $AB, $00   ; spr_X, spr_T, spr_Y

- D 1 - I - 0x002F7C 00:AF6C: 01        .byte $01   ; 
- D 1 - I - 0x002F7D 00:AF6D: 43        .byte $43   ; 
- D 1 - I - 0x002F7E 00:AF6E: 00        .byte $00, $AB, $00   ; 



off_0A_AF71_19:
- D 1 - I - 0x002F81 00:AF71: 84        .byte $84   ; counter
- D 1 - I - 0x002F82 00:AF72: 03        .byte $03   ; spr_A
- D 1 - I - 0x002F83 00:AF73: F8        .byte $F8, $81, $D9   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002F86 00:AF76: F8        .byte $F8, $81, $E9   ; 
- D 1 - I - 0x002F89 00:AF79: F8        .byte $F8, $81, $F9   ; 
- D 1 - I - 0x002F8C 00:AF7C: F8        .byte $F8, $81, $09   ; 

- D 1 - I - 0x002F8F 00:AF7F: 85        .byte $85   ; 
- D 1 - I - 0x002F90 00:AF80: 43        .byte $43   ; 
- D 1 - I - 0x002F91 00:AF81: 00        .byte $00, $81, $D9   ; 
- D 1 - I - 0x002F94 00:AF84: 00        .byte $00, $81, $E9   ; 
- D 1 - I - 0x002F97 00:AF87: 00        .byte $00, $81, $F9   ; 
- D 1 - I - 0x002F9A 00:AF8A: 00        .byte $00, $81, $09   ; 
- D 1 - I - 0x002F9D 00:AF8D: 00        .byte $00, $83, $19   ; 

- D 1 - I - 0x002FA0 00:AF90: 01        .byte $01   ; 
- D 1 - I - 0x002FA1 00:AF91: 03        .byte $03   ; 
- D 1 - I - 0x002FA2 00:AF92: F8        .byte $F8, $83, $19   ; 



off_0A_AF95_1A:
- D 1 - I - 0x002FA5 00:AF95: 85        .byte $85   ; counter
- D 1 - I - 0x002FA6 00:AF96: 03        .byte $03   ; spr_A
- D 1 - I - 0x002FA7 00:AF97: F8        .byte $F8, $85, $D9   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002FAA 00:AF9A: F8        .byte $F8, $85, $E9   ; 
- D 1 - I - 0x002FAD 00:AF9D: F8        .byte $F8, $85, $F9   ; 
- D 1 - I - 0x002FB0 00:AFA0: F8        .byte $F8, $85, $09   ; 
- D 1 - I - 0x002FB3 00:AFA3: F8        .byte $F8, $87, $19   ; 

- D 1 - I - 0x002FB6 00:AFA6: 05        .byte $05   ; 
- D 1 - I - 0x002FB7 00:AFA7: 43        .byte $43   ; 
- D 1 - I - 0x002FB8 00:AFA8: 00        .byte $00, $85, $D9   ; 
- D 1 - I - 0x002FBB 00:AFAB: 00        .byte $00, $85, $E9   ; 
- D 1 - I - 0x002FBE 00:AFAE: 00        .byte $00, $85, $F9   ; 
- D 1 - I - 0x002FC1 00:AFB1: 00        .byte $00, $85, $09   ; 
- D 1 - I - 0x002FC4 00:AFB4: 00        .byte $00, $87, $19   ; 



off_0A_AFB7_1B:
- D 1 - I - 0x002FC7 00:AFB7: 85        .byte $85   ; counter
- D 1 - I - 0x002FC8 00:AFB8: 03        .byte $03   ; spr_A
- D 1 - I - 0x002FC9 00:AFB9: F8        .byte $F8, $89, $D9   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002FCC 00:AFBC: F8        .byte $F8, $89, $E9   ; 
- D 1 - I - 0x002FCF 00:AFBF: F8        .byte $F8, $89, $F9   ; 
- D 1 - I - 0x002FD2 00:AFC2: F8        .byte $F8, $89, $09   ; 
- D 1 - I - 0x002FD5 00:AFC5: F8        .byte $F8, $8B, $19   ; 

- D 1 - I - 0x002FD8 00:AFC8: 05        .byte $05   ; 
- D 1 - I - 0x002FD9 00:AFC9: 43        .byte $43   ; 
- D 1 - I - 0x002FDA 00:AFCA: 00        .byte $00, $89, $D9   ; 
- D 1 - I - 0x002FDD 00:AFCD: 00        .byte $00, $89, $E9   ; 
- D 1 - I - 0x002FE0 00:AFD0: 00        .byte $00, $89, $F9   ; 
- D 1 - I - 0x002FE3 00:AFD3: 00        .byte $00, $89, $09   ; 
- D 1 - I - 0x002FE6 00:AFD6: 00        .byte $00, $8B, $19   ; 



off_0A_AFD9_1C:
- D 1 - I - 0x002FE9 00:AFD9: 85        .byte $85   ; counter
- D 1 - I - 0x002FEA 00:AFDA: 03        .byte $03   ; spr_A
- D 1 - I - 0x002FEB 00:AFDB: F8        .byte $F8, $8D, $D9   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002FEE 00:AFDE: F8        .byte $F8, $8D, $E9   ; 
- D 1 - I - 0x002FF1 00:AFE1: F8        .byte $F8, $8D, $F9   ; 
- D 1 - I - 0x002FF4 00:AFE4: F8        .byte $F8, $8D, $09   ; 
- D 1 - I - 0x002FF7 00:AFE7: F8        .byte $F8, $8F, $19   ; 

- D 1 - I - 0x002FFA 00:AFEA: 05        .byte $05   ; 
- D 1 - I - 0x002FFB 00:AFEB: 43        .byte $43   ; 
- D 1 - I - 0x002FFC 00:AFEC: 00        .byte $00, $8D, $D9   ; 
- D 1 - I - 0x002FFF 00:AFEF: 00        .byte $00, $8D, $E9   ; 
- D 1 - I - 0x003002 00:AFF2: 00        .byte $00, $8D, $F9   ; 
- D 1 - I - 0x003005 00:AFF5: 00        .byte $00, $8D, $09   ; 
- D 1 - I - 0x003008 00:AFF8: 00        .byte $00, $8F, $19   ; 



off_0A_AFFB_1D:
- D 1 - I - 0x00300B 00:AFFB: 85        .byte $85   ; counter
- D 1 - I - 0x00300C 00:AFFC: 03        .byte $03   ; spr_A
- D 1 - I - 0x00300D 00:AFFD: F8        .byte $F8, $91, $D9   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x003010 00:B000: F8        .byte $F8, $91, $E9   ; 
- D 1 - I - 0x003013 00:B003: F8        .byte $F8, $91, $F9   ; 
- D 1 - I - 0x003016 00:B006: F8        .byte $F8, $91, $09   ; 
- D 1 - I - 0x003019 00:B009: F8        .byte $F8, $93, $19   ; 

- D 1 - I - 0x00301C 00:B00C: 05        .byte $05   ; 
- D 1 - I - 0x00301D 00:B00D: 43        .byte $43   ; 
- D 1 - I - 0x00301E 00:B00E: 00        .byte $00, $91, $D9   ; 
- D 1 - I - 0x003021 00:B011: 00        .byte $00, $91, $E9   ; 
- D 1 - I - 0x003024 00:B014: 00        .byte $00, $91, $F9   ; 
- D 1 - I - 0x003027 00:B017: 00        .byte $00, $91, $09   ; 
- D 1 - I - 0x00302A 00:B01A: 00        .byte $00, $93, $19   ; 



off_0A_B01D_1E:
- D 1 - I - 0x00302D 00:B01D: 05        .byte $05   ; counter
- D 1 - I - 0x00302E 00:B01E: 03        .byte $03   ; spr_A
- D 1 - I - 0x00302F 00:B01F: FC        .byte $FC, $95, $D9   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x003032 00:B022: FC        .byte $FC, $95, $E9   ; 
- D 1 - I - 0x003035 00:B025: FC        .byte $FC, $95, $F9   ; 
- D 1 - I - 0x003038 00:B028: FC        .byte $FC, $95, $09   ; 
- D 1 - I - 0x00303B 00:B02B: FC        .byte $FC, $97, $19   ; 



off_0A_B02E_1F:
- D 1 - I - 0x00303E 00:B02E: 05        .byte $05   ; counter
- D 1 - I - 0x00303F 00:B02F: 03        .byte $03   ; spr_A
- D 1 - I - 0x003040 00:B030: FC        .byte $FC, $99, $D9   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x003043 00:B033: FC        .byte $FC, $99, $E9   ; 
- D 1 - I - 0x003046 00:B036: FC        .byte $FC, $99, $F9   ; 
- D 1 - I - 0x003049 00:B039: FC        .byte $FC, $99, $09   ; 
- D 1 - I - 0x00304C 00:B03C: FC        .byte $FC, $9B, $19   ; 



off_0A_B03F_20:
- D 1 - I - 0x00304F 00:B03F: 05        .byte $05   ; counter
- D 1 - I - 0x003050 00:B040: 03        .byte $03   ; spr_A
- D 1 - I - 0x003051 00:B041: FC        .byte $FC, $9D, $D9   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x003054 00:B044: FC        .byte $FC, $9D, $E9   ; 
- D 1 - I - 0x003057 00:B047: FC        .byte $FC, $9D, $F9   ; 
- D 1 - I - 0x00305A 00:B04A: FC        .byte $FC, $9D, $09   ; 
- D 1 - I - 0x00305D 00:B04D: FC        .byte $FC, $9D, $19   ; 



off_0A_B050_21:
- - - - - - 0x003060 00:B050: 05        .byte $05   ; counter
- - - - - - 0x003061 00:B051: 03        .byte $03   ; spr_A
- - - - - - 0x003062 00:B052: FC        .byte $FC, $9F, $D9   ; spr_X, spr_T, spr_Y
- - - - - - 0x003065 00:B055: FC        .byte $FC, $9F, $E9   ; 
- - - - - - 0x003068 00:B058: FC        .byte $FC, $9F, $F9   ; 
- - - - - - 0x00306B 00:B05B: FC        .byte $FC, $9F, $09   ; 
- - - - - - 0x00306E 00:B05E: FC        .byte $FC, $9F, $19   ; 



_off032_B061_05:
- - - - - - 0x003071 00:B061: 9B B0     .word off_05_B09B_00
- D 1 - I - 0x003073 00:B063: 9B B0     .word off_05_B09B_01
- D 1 - I - 0x003075 00:B065: C9 B0     .word off_05_B0C9_02
- D 1 - I - 0x003077 00:B067: E3 B0     .word off_05_B0E3_03
- D 1 - I - 0x003079 00:B069: F9 B0     .word off_05_B0F9_04
- D 1 - I - 0x00307B 00:B06B: 0F B1     .word off_05_B10F_05
- D 1 - I - 0x00307D 00:B06D: 25 B1     .word off_05_B125_06
- D 1 - I - 0x00307F 00:B06F: 3B B1     .word off_05_B13B_07
- D 1 - I - 0x003081 00:B071: 40 B1     .word off_05_B140_08
- - - - - - 0x003083 00:B073: 9B B0     .word off_05_B09B_09
- D 1 - I - 0x003085 00:B075: 45 B1     .word off_05_B145_0A
- D 1 - I - 0x003087 00:B077: EE B1     .word off_05_B1EE_0B
- - - - - - 0x003089 00:B079: 9B B0     .word off_05_B09B_0C
- - - - - - 0x00308B 00:B07B: 24 B2     .word off_05_B224_0D
- - - - - - 0x00308D 00:B07D: 34 B2     .word off_05_B234_0E
- - - - - - 0x00308F 00:B07F: 44 B2     .word off_05_B244_0F
- - - - - - 0x003091 00:B081: 49 B2     .word off_05_B249_10
- - - - - - 0x003093 00:B083: 9B B0     .word off_05_B09B_11
- - - - - - 0x003095 00:B085: 9B B0     .word off_05_B09B_12
- - - - - - 0x003097 00:B087: 9B B0     .word off_05_B09B_13
- D 1 - I - 0x003099 00:B089: 75 B1     .word off_05_B175_14
- D 1 - I - 0x00309B 00:B08B: 93 B1     .word off_05_B193_15
- - - - - - 0x00309D 00:B08D: A1 B1     .word off_05_B1A1_16
- D 1 - I - 0x00309F 00:B08F: A1 B1     .word off_05_B1A1_17
- D 1 - I - 0x0030A1 00:B091: B1 B1     .word off_05_B1B1_18
- D 1 - I - 0x0030A3 00:B093: BF B1     .word off_05_B1BF_19
- D 1 - I - 0x0030A5 00:B095: D9 B1     .word off_05_B1D9_1A
- - - - - - 0x0030A7 00:B097: 0E B2     .word off_05_B20E_1B
- - - - - - 0x0030A9 00:B099: 53 B2     .word off_05_B253_1C



off_05_B09B_00:
off_05_B09B_01:
off_05_B09B_09:
off_05_B09B_0C:
off_05_B09B_11:
off_05_B09B_12:
off_05_B09B_13:
- D 1 - I - 0x0030AB 00:B09B: 86        .byte $86   ; counter
- D 1 - I - 0x0030AC 00:B09C: 03        .byte $03   ; spr_A
- D 1 - I - 0x0030AD 00:B09D: F0        .byte $F0, $81, $EB   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0030B0 00:B0A0: F8        .byte $F8, $83, $EB   ; 
- D 1 - I - 0x0030B3 00:B0A3: F0        .byte $F0, $85, $FB   ; 
- D 1 - I - 0x0030B6 00:B0A6: F8        .byte $F8, $87, $FB   ; 
- D 1 - I - 0x0030B9 00:B0A9: F0        .byte $F0, $89, $0B   ; 
- D 1 - I - 0x0030BC 00:B0AC: F8        .byte $F8, $8B, $0B   ; 

- D 1 - I - 0x0030BF 00:B0AF: 83        .byte $83   ; 
- D 1 - I - 0x0030C0 00:B0B0: 43        .byte $43   ; 
- D 1 - I - 0x0030C1 00:B0B1: 08        .byte $08, $81, $EB   ; 
- D 1 - I - 0x0030C4 00:B0B4: 00        .byte $00, $83, $EB   ; 
- D 1 - I - 0x0030C7 00:B0B7: 08        .byte $08, $85, $FB   ; 

- D 1 - I - 0x0030CA 00:B0BA: 81        .byte $81   ; 
- D 1 - I - 0x0030CB 00:B0BB: 03        .byte $03   ; 
- D 1 - I - 0x0030CC 00:B0BC: 00        .byte $00, $87, $FB   ; 

- D 1 - I - 0x0030CF 00:B0BF: 81        .byte $81   ; 
- D 1 - I - 0x0030D0 00:B0C0: 43        .byte $43   ; 
- D 1 - I - 0x0030D1 00:B0C1: 08        .byte $08, $89, $0B   ; 

- D 1 - I - 0x0030D4 00:B0C4: 01        .byte $01   ; 
- D 1 - I - 0x0030D5 00:B0C5: 03        .byte $03   ; 
- D 1 - I - 0x0030D6 00:B0C6: 00        .byte $00, $8B, $0B   ; 



off_05_B0C9_02:
- D 1 - I - 0x0030D9 00:B0C9: 82        .byte $82   ; counter
- D 1 - I - 0x0030DA 00:B0CA: 02        .byte $02   ; spr_A
- D 1 - I - 0x0030DB 00:B0CB: F5        .byte $F5, $8D, $F1   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0030DE 00:B0CE: FD        .byte $FD, $8F, $F1   ; 

- D 1 - I - 0x0030E1 00:B0D1: 81        .byte $81   ; 
- D 1 - I - 0x0030E2 00:B0D2: 42        .byte $42   ; 
- D 1 - I - 0x0030E3 00:B0D3: 05        .byte $05, $8D, $F1   ; 

- D 1 - I - 0x0030E6 00:B0D6: 82        .byte $82   ; 
- D 1 - I - 0x0030E7 00:B0D7: 03        .byte $03   ; 
- D 1 - I - 0x0030E8 00:B0D8: F5        .byte $F5, $91, $01   ; 
- D 1 - I - 0x0030EB 00:B0DB: FD        .byte $FD, $93, $01   ; 

- D 1 - I - 0x0030EE 00:B0DE: 01        .byte $01   ; 
- D 1 - I - 0x0030EF 00:B0DF: 43        .byte $43   ; 
- D 1 - I - 0x0030F0 00:B0E0: 05        .byte $05, $91, $01   ; 



off_05_B0E3_03:
- D 1 - I - 0x0030F3 00:B0E3: 85        .byte $85   ; counter
- D 1 - I - 0x0030F4 00:B0E4: 02        .byte $02   ; spr_A
- D 1 - I - 0x0030F5 00:B0E5: F9        .byte $F9, $95, $F1   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0030F8 00:B0E8: 01        .byte $01, $97, $F1   ; 
- D 1 - I - 0x0030FB 00:B0EB: F9        .byte $F9, $9B, $01   ; 
- D 1 - I - 0x0030FE 00:B0EE: 01        .byte $01, $9D, $01   ; 
- D 1 - I - 0x003101 00:B0F1: F1        .byte $F1, $99, $F1   ; 

- D 1 - I - 0x003104 00:B0F4: 01        .byte $01   ; 
- D 1 - I - 0x003105 00:B0F5: 42        .byte $42   ; 
- D 1 - I - 0x003106 00:B0F6: F2        .byte $F2, $9D, $01   ; 



off_05_B0F9_04:
- D 1 - I - 0x003109 00:B0F9: 85        .byte $85   ; counter
- D 1 - I - 0x00310A 00:B0FA: 02        .byte $02   ; spr_A
- D 1 - I - 0x00310B 00:B0FB: F3        .byte $F3, $9F, $F1   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x00310E 00:B0FE: FB        .byte $FB, $A1, $F1   ; 
- D 1 - I - 0x003111 00:B101: 03        .byte $03, $A3, $F1   ; 
- D 1 - I - 0x003114 00:B104: F3        .byte $F3, $A5, $01   ; 
- D 1 - I - 0x003117 00:B107: FB        .byte $FB, $A7, $01   ; 

- D 1 - I - 0x00311A 00:B10A: 01        .byte $01   ; 
- D 1 - I - 0x00311B 00:B10B: 42        .byte $42   ; 
- D 1 - I - 0x00311C 00:B10C: 03        .byte $03, $A5, $01   ; 



off_05_B10F_05:
- D 1 - I - 0x00311F 00:B10F: 85        .byte $85   ; counter
- D 1 - I - 0x003120 00:B110: 42        .byte $42   ; spr_A
- D 1 - I - 0x003121 00:B111: FF        .byte $FF, $9F, $F1   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x003124 00:B114: F7        .byte $F7, $A1, $F1   ; 
- D 1 - I - 0x003127 00:B117: EF        .byte $EF, $A3, $F1   ; 
- D 1 - I - 0x00312A 00:B11A: FF        .byte $FF, $A5, $01   ; 
- D 1 - I - 0x00312D 00:B11D: F7        .byte $F7, $A7, $01   ; 

- D 1 - I - 0x003130 00:B120: 01        .byte $01   ; 
- D 1 - I - 0x003131 00:B121: 02        .byte $02   ; 
- D 1 - I - 0x003132 00:B122: EF        .byte $EF, $A5, $01   ; 



off_05_B125_06:
- D 1 - I - 0x003135 00:B125: 85        .byte $85   ; counter
- D 1 - I - 0x003136 00:B126: 42        .byte $42   ; spr_A
- D 1 - I - 0x003137 00:B127: F9        .byte $F9, $95, $F1   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x00313A 00:B12A: F1        .byte $F1, $97, $F1   ; 
- D 1 - I - 0x00313D 00:B12D: F9        .byte $F9, $9B, $01   ; 
- D 1 - I - 0x003140 00:B130: F1        .byte $F1, $9D, $01   ; 
- D 1 - I - 0x003143 00:B133: 01        .byte $01, $99, $F1   ; 

- D 1 - I - 0x003146 00:B136: 01        .byte $01   ; 
- D 1 - I - 0x003147 00:B137: 02        .byte $02   ; 
- D 1 - I - 0x003148 00:B138: 00        .byte $00, $9D, $01   ; 



off_05_B13B_07:
- D 1 - I - 0x00314B 00:B13B: 01        .byte $01   ; counter
- D 1 - I - 0x00314C 00:B13C: 02        .byte $02   ; spr_A
- D 1 - I - 0x00314D 00:B13D: FD        .byte $FD, $8F, $FC   ; spr_X, spr_T, spr_Y



off_05_B140_08:
- D 1 - I - 0x003150 00:B140: 01        .byte $01   ; counter
- D 1 - I - 0x003151 00:B141: 02        .byte $02   ; spr_A
- D 1 - I - 0x003152 00:B142: FD        .byte $FD, $91, $F8   ; spr_X, spr_T, spr_Y



off_05_B145_0A:
- D 1 - I - 0x003155 00:B145: 83        .byte $83   ; counter
- D 1 - I - 0x003156 00:B146: 02        .byte $02   ; spr_A
- D 1 - I - 0x003157 00:B147: F8        .byte $F8, $95, $CB   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x00315A 00:B14A: F0        .byte $F0, $97, $DB   ; 
- D 1 - I - 0x00315D 00:B14D: F0        .byte $F0, $97, $EB   ; 

- D 1 - I - 0x003160 00:B150: 83        .byte $83   ; 
- D 1 - I - 0x003161 00:B151: 42        .byte $42   ; 
- D 1 - I - 0x003162 00:B152: 00        .byte $00, $95, $CB   ; 
- D 1 - I - 0x003165 00:B155: 08        .byte $08, $97, $DB   ; 
- D 1 - I - 0x003168 00:B158: 08        .byte $08, $97, $EB   ; 

- D 1 - I - 0x00316B 00:B15B: 82        .byte $82   ; 
- D 1 - I - 0x00316C 00:B15C: 02        .byte $02   ; 
- D 1 - I - 0x00316D 00:B15D: F0        .byte $F0, $9B, $FB   ; 
- D 1 - I - 0x003170 00:B160: F8        .byte $F8, $9D, $FB   ; 

- D 1 - I - 0x003173 00:B163: 82        .byte $82   ; 
- D 1 - I - 0x003174 00:B164: 42        .byte $42   ; 
- D 1 - I - 0x003175 00:B165: 08        .byte $08, $9B, $FB   ; 
- D 1 - I - 0x003178 00:B168: 00        .byte $00, $9D, $FB   ; 

- D 1 - I - 0x00317B 00:B16B: 81        .byte $81   ; 
- D 1 - I - 0x00317C 00:B16C: 02        .byte $02   ; 
- D 1 - I - 0x00317D 00:B16D: F0        .byte $F0, $A7, $CB   ; 

- D 1 - I - 0x003180 00:B170: 01        .byte $01   ; 
- D 1 - I - 0x003181 00:B171: 42        .byte $42   ; 
- D 1 - I - 0x003182 00:B172: 08        .byte $08, $A7, $CB   ; 



off_05_B175_14:
- D 1 - I - 0x003185 00:B175: 82        .byte $82   ; counter
- D 1 - I - 0x003186 00:B176: 02        .byte $02   ; spr_A
- D 1 - I - 0x003187 00:B177: F0        .byte $F0, $91, $FE   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x00318A 00:B17A: F8        .byte $F8, $93, $FE   ; 

- D 1 - I - 0x00318D 00:B17D: 82        .byte $82   ; 
- D 1 - I - 0x00318E 00:B17E: 42        .byte $42   ; 
- D 1 - I - 0x00318F 00:B17F: 08        .byte $08, $91, $FE   ; 
- D 1 - I - 0x003192 00:B182: 00        .byte $00, $93, $FE   ; 

- D 1 - I - 0x003195 00:B185: 04        .byte $04   ; 
- D 1 - I - 0x003196 00:B186: 02        .byte $02   ; 
- D 1 - I - 0x003197 00:B187: F0        .byte $F0, $8D, $0E   ; 
- D 1 - I - 0x00319A 00:B18A: F8        .byte $F8, $8D, $0E   ; 
- D 1 - I - 0x00319D 00:B18D: 00        .byte $00, $8D, $0E   ; 
- D 1 - I - 0x0031A0 00:B190: 08        .byte $08, $8D, $0E   ; 



off_05_B193_15:
- D 1 - I - 0x0031A3 00:B193: 04        .byte $04   ; counter
- D 1 - I - 0x0031A4 00:B194: 00        .byte $00   ; spr_A
- D 1 - I - 0x0031A5 00:B195: 00        .byte $00, $A5, $00   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0031A8 00:B198: 00        .byte $00, $A9, $10   ; 
- D 1 - I - 0x0031AB 00:B19B: 08        .byte $08, $A7, $00   ; 
- D 1 - I - 0x0031AE 00:B19E: 08        .byte $08, $AB, $10   ; 



off_05_B1A1_16:



off_05_B1A1_17:
- D 1 - I - 0x0031B1 00:B1A1: 82        .byte $82   ; counter
- D 1 - I - 0x0031B2 00:B1A2: 03        .byte $03   ; spr_A
- D 1 - I - 0x0031B3 00:B1A3: 01        .byte $01, $81, $F1   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0031B6 00:B1A6: 09        .byte $09, $83, $F1   ; 

- D 1 - I - 0x0031B9 00:B1A9: 02        .byte $02   ; 
- D 1 - I - 0x0031BA 00:B1AA: 83        .byte $83   ; 
- D 1 - I - 0x0031BB 00:B1AB: 01        .byte $01, $81, $01   ; 
- D 1 - I - 0x0031BE 00:B1AE: 09        .byte $09, $83, $01   ; 



off_05_B1B1_18:
- D 1 - I - 0x0031C1 00:B1B1: 04        .byte $04   ; counter
- D 1 - I - 0x0031C2 00:B1B2: 03        .byte $03   ; spr_A
- D 1 - I - 0x0031C3 00:B1B3: 01        .byte $01, $85, $F1   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0031C6 00:B1B6: 09        .byte $09, $87, $F1   ; 
- D 1 - I - 0x0031C9 00:B1B9: 01        .byte $01, $89, $01   ; 
- D 1 - I - 0x0031CC 00:B1BC: 09        .byte $09, $87, $01   ; 



off_05_B1BF_19:
- D 1 - I - 0x0031CF 00:B1BF: 81        .byte $81   ; counter
- D 1 - I - 0x0031D0 00:B1C0: 83        .byte $83   ; spr_A
- D 1 - I - 0x0031D1 00:B1C1: F1        .byte $F1, $89, $F1   ; spr_X, spr_T, spr_Y

- D 1 - I - 0x0031D4 00:B1C4: 81        .byte $81   ; 
- D 1 - I - 0x0031D5 00:B1C5: 03        .byte $03   ; 
- D 1 - I - 0x0031D6 00:B1C6: F1        .byte $F1, $8D, $01   ; 

- D 1 - I - 0x0031D9 00:B1C9: 81        .byte $81   ; 
- D 1 - I - 0x0031DA 00:B1CA: C3        .byte $C3   ; 
- D 1 - I - 0x0031DB 00:B1CB: F9        .byte $F9, $85, $01   ; 

- D 1 - I - 0x0031DE 00:B1CE: 03        .byte $03   ; 
- D 1 - I - 0x0031DF 00:B1CF: 03        .byte $03   ; 
- D 1 - I - 0x0031E0 00:B1D0: 01        .byte $01, $93, $F1   ; 
- D 1 - I - 0x0031E3 00:B1D3: 09        .byte $09, $95, $F1   ; 
- D 1 - I - 0x0031E6 00:B1D6: 09        .byte $09, $A1, $01   ; 



off_05_B1D9_1A:
- D 1 - I - 0x0031E9 00:B1D9: 82        .byte $82   ; counter
- D 1 - I - 0x0031EA 00:B1DA: 03        .byte $03   ; spr_A
- D 1 - I - 0x0031EB 00:B1DB: F1        .byte $F1, $A3, $F1   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0031EE 00:B1DE: F9        .byte $F9, $A5, $F1   ; 

- D 1 - I - 0x0031F1 00:B1E1: 81        .byte $81   ; 
- D 1 - I - 0x0031F2 00:B1E2: 43        .byte $43   ; 
- D 1 - I - 0x0031F3 00:B1E3: 01        .byte $01, $85, $F1   ; 

- D 1 - I - 0x0031F6 00:B1E6: 02        .byte $02   ; 
- D 1 - I - 0x0031F7 00:B1E7: 03        .byte $03   ; 
- D 1 - I - 0x0031F8 00:B1E8: F1        .byte $F1, $A7, $01   ; 
- D 1 - I - 0x0031FB 00:B1EB: F9        .byte $F9, $A9, $01   ; 



off_05_B1EE_0B:
- D 1 - I - 0x0031FE 00:B1EE: 0A        .byte $0A   ; counter
- D 1 - I - 0x0031FF 00:B1EF: 02        .byte $02   ; spr_A
- D 1 - I - 0x003200 00:B1F0: E9        .byte $E9, $81, $F9   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x003203 00:B1F3: F1        .byte $F1, $83, $F9   ; 
- D 1 - I - 0x003206 00:B1F6: F9        .byte $F9, $85, $F9   ; 
- D 1 - I - 0x003209 00:B1F9: 01        .byte $01, $87, $F9   ; 
- D 1 - I - 0x00320C 00:B1FC: 09        .byte $09, $89, $F9   ; 
- D 1 - I - 0x00320F 00:B1FF: E9        .byte $E9, $8B, $09   ; 
- D 1 - I - 0x003212 00:B202: F1        .byte $F1, $8D, $09   ; 
- D 1 - I - 0x003215 00:B205: F9        .byte $F9, $8F, $09   ; 
- D 1 - I - 0x003218 00:B208: 01        .byte $01, $91, $09   ; 
- D 1 - I - 0x00321B 00:B20B: 09        .byte $09, $93, $09   ; 



off_05_B20E_1B:
- - - - - - 0x00321E 00:B20E: 83        .byte $83   ; counter
- - - - - - 0x00321F 00:B20F: 02        .byte $02   ; spr_A
- - - - - - 0x003220 00:B210: F9        .byte $F9, $95, $E9   ; spr_X, spr_T, spr_Y
- - - - - - 0x003223 00:B213: F9        .byte $F9, $97, $F9   ; 
- - - - - - 0x003226 00:B216: F9        .byte $F9, $99, $09   ; 
- - - - - - 0x003229 00:B219: 03        .byte $03   ; 
- - - - - - 0x00322A 00:B21A: 42        .byte $42   ; 
- - - - - - 0x00322B 00:B21B: 01        .byte $01, $95, $E9   ; 
- - - - - - 0x00322E 00:B21E: 01        .byte $01, $97, $F9   ; 
- - - - - - 0x003231 00:B221: 01        .byte $01, $99, $09   ; 



off_05_B224_0D:
- - - - - - 0x003234 00:B224: 82        .byte $82   ; counter
- - - - - - 0x003235 00:B225: 03        .byte $03   ; spr_A
- - - - - - 0x003236 00:B226: F8        .byte $F8, $99, $F1   ; spr_X, spr_T, spr_Y
- - - - - - 0x003239 00:B229: F8        .byte $F8, $9F, $01   ; 

- - - - - - 0x00323C 00:B22C: 02        .byte $02   ; 
- - - - - - 0x00323D 00:B22D: 43        .byte $43   ; 
- - - - - - 0x00323E 00:B22E: 00        .byte $00, $99, $F1   ; 
- - - - - - 0x003241 00:B231: 00        .byte $00, $9F, $01   ; 



off_05_B234_0E:
- - - - - - 0x003244 00:B234: 82        .byte $82   ; counter
- - - - - - 0x003245 00:B235: 03        .byte $03   ; spr_A
- - - - - - 0x003246 00:B236: F8        .byte $F8, $A1, $F1   ; spr_X, spr_T, spr_Y
- - - - - - 0x003249 00:B239: F8        .byte $F8, $A3, $01   ; 

- - - - - - 0x00324C 00:B23C: 02        .byte $02   ; 
- - - - - - 0x00324D 00:B23D: 43        .byte $43   ; 
- - - - - - 0x00324E 00:B23E: 00        .byte $00, $A1, $F1   ; 
- - - - - - 0x003251 00:B241: 00        .byte $00, $A3, $01   ; 



off_05_B244_0F:
- - - - - - 0x003254 00:B244: 01        .byte $01   ; counter
- - - - - - 0x003255 00:B245: 03        .byte $03   ; spr_A
- - - - - - 0x003256 00:B246: FC        .byte $FC, $A5, $F6   ; spr_X, spr_T, spr_Y



off_05_B249_10:
- - - - - - 0x003259 00:B249: 81        .byte $81   ; counter
- - - - - - 0x00325A 00:B24A: 03        .byte $03   ; spr_A
- - - - - - 0x00325B 00:B24B: F8        .byte $F8, $8F, $F9   ; spr_X, spr_T, spr_Y

- - - - - - 0x00325E 00:B24E: 01        .byte $01   ; 
- - - - - - 0x00325F 00:B24F: 43        .byte $43   ; 
- - - - - - 0x003260 00:B250: 00        .byte $00, $8F, $F9   ; 



off_05_B253_1C:
- - - - - - 0x003263 00:B253: 81        .byte $81   ; counter
- - - - - - 0x003264 00:B254: 03        .byte $03   ; spr_A
- - - - - - 0x003265 00:B255: F1        .byte $F1, $C3, $00   ; spr_X, spr_T, spr_Y

- - - - - - 0x003268 00:B258: 81        .byte $81   ; 
- - - - - - 0x003269 00:B259: 00        .byte $00   ; 
- - - - - - 0x00326A 00:B25A: F1        .byte $F1, $C5, $10   ; 

- - - - - - 0x00326D 00:B25D: 81        .byte $81   ; 
- - - - - - 0x00326E 00:B25E: 03        .byte $03   ; 
- - - - - - 0x00326F 00:B25F: F9        .byte $F9, $C9, $10   ; 

- - - - - - 0x003272 00:B262: 81        .byte $81   ; 
- - - - - - 0x003273 00:B263: 43        .byte $43   ; 
- - - - - - 0x003274 00:B264: 09        .byte $09, $C3, $00   ; 

- - - - - - 0x003277 00:B267: 81        .byte $81   ; 
- - - - - - 0x003278 00:B268: 40        .byte $40   ; 
- - - - - - 0x003279 00:B269: 09        .byte $09, $C5, $10   ; 

- - - - - - 0x00327C 00:B26C: 01        .byte $01   ; 
- - - - - - 0x00327D 00:B26D: 43        .byte $43   ; 
- - - - - - 0x00327E 00:B26E: 01        .byte $01, $C9, $10   ; 



_off032_B271_0E:
- - - - - - 0x003281 00:B271: 83 B2     .word off_0E_B283_00
- - - - - - 0x003283 00:B273: 83 B2     .word off_0E_B283_01
- - - - - - 0x003285 00:B275: 9D B2     .word off_0E_B29D_02
- - - - - - 0x003287 00:B277: B9 B2     .word off_0E_B2B9_03
- - - - - - 0x003289 00:B279: DA B2     .word off_0E_B2DA_04
- - - - - - 0x00328B 00:B27B: F9 B2     .word off_0E_B2F9_05
- - - - - - 0x00328D 00:B27D: FC B2     .word off_0E_B2FC_06
- - - - - - 0x00328F 00:B27F: FF B2     .word off_0E_B2FF_07
- - - - - - 0x003291 00:B281: 02 B3     .word off_0E_B302_08



off_0E_B283_00:
off_0E_B283_01:
off_FF_B283:
- - - - - - 0x003293 00:B283: 82        .byte $82   ; counter
- - - - - - 0x003294 00:B284: 00        .byte $00   ; spr_A
- - - - - - 0x003295 00:B285: F8        .byte $F8, $9F, $F9   ; spr_X, spr_T, spr_Y
- - - - - - 0x003298 00:B288: 08        .byte $08, $A1, $F9   ; 

- - - - - - 0x00329B 00:B28B: 82        .byte $82   ; 
- - - - - - 0x00329C 00:B28C: 01        .byte $01   ; 
- - - - - - 0x00329D 00:B28D: 00        .byte $00, $9D, $F9   ; 
- - - - - - 0x0032A0 00:B290: F0        .byte $F0, $9D, $F9   ; 

- - - - - - 0x0032A3 00:B293: 81        .byte $81   ; 
- - - - - - 0x0032A4 00:B294: 43        .byte $43   ; 
- - - - - - 0x0032A5 00:B295: E8        .byte $E8, $F5, $F9   ; 

- - - - - - 0x0032A8 00:B298: 01        .byte $01   ; 
- - - - - - 0x0032A9 00:B299: 03        .byte $03   ; 
- - - - - - 0x0032AA 00:B29A: E0        .byte $E0, $F5, $F9   ; 



off_0E_B29D_02:
off_FF_B29D:
- - - - - - 0x0032AD 00:B29D: 81        .byte $81   ; counter
- - - - - - 0x0032AE 00:B29E: 00        .byte $00   ; spr_A
- - - - - - 0x0032AF 00:B29F: F8        .byte $F8, $9F, $F9   ; spr_X, spr_T, spr_Y

- - - - - - 0x0032B2 00:B2A2: 81        .byte $81   ; 
- - - - - - 0x0032B3 00:B2A3: 01        .byte $01   ; 
- - - - - - 0x0032B4 00:B2A4: 00        .byte $00, $9D, $F9   ; 

- - - - - - 0x0032B7 00:B2A7: 81        .byte $81   ; 
- - - - - - 0x0032B8 00:B2A8: 00        .byte $00   ; 
- - - - - - 0x0032B9 00:B2A9: 08        .byte $08, $A1, $F9   ; 

- - - - - - 0x0032BC 00:B2AC: 82        .byte $82   ; 
- - - - - - 0x0032BD 00:B2AD: 03        .byte $03   ; 
- - - - - - 0x0032BE 00:B2AE: F0        .byte $F0, $9D, $F9   ; 
- - - - - - 0x0032C1 00:B2B1: D8        .byte $D8, $F5, $F9   ; 

- - - - - - 0x0032C4 00:B2B4: 01        .byte $01   ; 
- - - - - - 0x0032C5 00:B2B5: 43        .byte $43   ; 
- - - - - - 0x0032C6 00:B2B6: E0        .byte $E0, $F5, $F9   ; 



off_0E_B2B9_03:
off_FF_B2B9:
- - - - - - 0x0032C9 00:B2B9: 81        .byte $81   ; counter
- - - - - - 0x0032CA 00:B2BA: 00        .byte $00   ; spr_A
- - - - - - 0x0032CB 00:B2BB: F8        .byte $F8, $9F, $F9   ; spr_X, spr_T, spr_Y

- - - - - - 0x0032CE 00:B2BE: 81        .byte $81   ; 
- - - - - - 0x0032CF 00:B2BF: 01        .byte $01   ; 
- - - - - - 0x0032D0 00:B2C0: 00        .byte $00, $9D, $F9   ; 

- - - - - - 0x0032D3 00:B2C3: 82        .byte $82   ; 
- - - - - - 0x0032D4 00:B2C4: 00        .byte $00   ; 
- - - - - - 0x0032D5 00:B2C5: 08        .byte $08, $A1, $F9   ; 
- - - - - - 0x0032D8 00:B2C8: F0        .byte $F0, $9D, $F9   ; 

- - - - - - 0x0032DB 00:B2CB: 81        .byte $81   ; 
- - - - - - 0x0032DC 00:B2CC: 03        .byte $03   ; 
- - - - - - 0x0032DD 00:B2CD: D0        .byte $D0, $F5, $F9   ; 

- - - - - - 0x0032E0 00:B2D0: 81        .byte $81   ; 
- - - - - - 0x0032E1 00:B2D1: 43        .byte $43   ; 
- - - - - - 0x0032E2 00:B2D2: D8        .byte $D8, $F5, $F9   ; 

- - - - - - 0x0032E5 00:B2D5: 01        .byte $01   ; 
- - - - - - 0x0032E6 00:B2D6: 03        .byte $03   ; 
- - - - - - 0x0032E7 00:B2D7: E8        .byte $E8, $E1, $F9   ; 



off_0E_B2DA_04:
off_FF_B2DA:
- - - - - - 0x0032EA 00:B2DA: 81        .byte $81   ; counter
- - - - - - 0x0032EB 00:B2DB: 00        .byte $00   ; spr_A
- - - - - - 0x0032EC 00:B2DC: F8        .byte $F8, $9F, $F9   ; spr_X, spr_T, spr_Y

- - - - - - 0x0032EF 00:B2DF: 81        .byte $81   ; 
- - - - - - 0x0032F0 00:B2E0: 01        .byte $01   ; 
- - - - - - 0x0032F1 00:B2E1: 00        .byte $00, $9D, $F9   ; 

- - - - - - 0x0032F4 00:B2E4: 82        .byte $82   ; 
- - - - - - 0x0032F5 00:B2E5: 00        .byte $00   ; 
- - - - - - 0x0032F6 00:B2E6: 08        .byte $08, $A1, $F9   ; 
- - - - - - 0x0032F9 00:B2E9: F0        .byte $F0, $9D, $F9   ; 

- - - - - - 0x0032FC 00:B2EC: 82        .byte $82   ; 
- - - - - - 0x0032FD 00:B2ED: 03        .byte $03   ; 
- - - - - - 0x0032FE 00:B2EE: C0        .byte $C0, $E1, $F9   ; 
- - - - - - 0x003301 00:B2F1: C8        .byte $C8, $F5, $F9   ; 

- - - - - - 0x003304 00:B2F4: 01        .byte $01   ; 
- - - - - - 0x003305 00:B2F5: 43        .byte $43   ; 
- - - - - - 0x003306 00:B2F6: D0        .byte $D0, $F5, $F9   ; 



off_0E_B2F9_05:
- - - - - - 0x003309 00:B2F9: FF        .byte $FF   ; 
- - - - - - 0x00330A 00:B2FA: 83 B2     .word off_FF_B283



off_0E_B2FC_06:
- - - - - - 0x00330C 00:B2FC: FF        .byte $FF   ; 
- - - - - - 0x00330D 00:B2FD: 9D B2     .word off_FF_B29D



off_0E_B2FF_07:
- - - - - - 0x00330F 00:B2FF: FF        .byte $FF   ; 
- - - - - - 0x003310 00:B300: B9 B2     .word off_FF_B2B9



off_0E_B302_08:
- - - - - - 0x003312 00:B302: FF        .byte $FF   ; 
- - - - - - 0x003313 00:B303: DA B2     .word off_FF_B2DA



sub_0x003315:
C - - - - - 0x003315 00:B305: 20 D6 90  JSR sub_0x0090E6_0600x_AND_F0
C - - - - - 0x003318 00:B308: D0 5F     BNE bra_B369_RTS
C - - - - - 0x00331A 00:B30A: BD 1A 06  LDA ram_obj_animation_lo,X
C - - - - - 0x00331D 00:B30D: F0 5A     BEQ bra_B369_RTS
C - - - - - 0x00331F 00:B30F: 20 03 90  JSR sub_0x009013
C - - - - - 0x003322 00:B312: F0 05     BEQ bra_B319
C - - - - - 0x003324 00:B314: 8A        TXA
C - - - - - 0x003325 00:B315: A8        TAY
C - - - - - 0x003326 00:B316: 20 C5 94  JSR sub_0x0094D5
bra_B319:
C - - - - - 0x003329 00:B319: 20 41 91  JSR sub_0x009151_0682x_and_0F
C - - - - - 0x00332C 00:B31C: F0 4B     BEQ bra_B369_RTS
C - - - - - 0x00332E 00:B31E: A8        TAY
C - - - - - 0x00332F 00:B31F: B9 A1 B8  LDA tbl_B8A2 - $01,Y
C - - - - - 0x003332 00:B322: F0 45     BEQ bra_B369_RTS
C - - - - - 0x003334 00:B324: C9 02     CMP #$02
C - - - - - 0x003336 00:B326: F0 42     BEQ bra_B36A
C - - - - - 0x003338 00:B328: C9 03     CMP #$03
C - - - - - 0x00333A 00:B32A: F0 1A     BEQ bra_B346
C - - - - - 0x00333C 00:B32C: 20 88 B3  JSR sub_B388
C - - - - - 0x00333F 00:B32F: F0 38     BEQ bra_B369_RTS
bra_B331:
ofs_020_B331_04:
C - - - - - 0x003341 00:B331: 20 41 91  JSR sub_0x009151_0682x_and_0F
C - - - - - 0x003344 00:B334: C9 0A     CMP #$0A
C - - - - - 0x003346 00:B336: F0 31     BEQ bra_B369_RTS
; destroy object with a bullet?
C - - - - - 0x003348 00:B338: A9 06     LDA #$06
C - - - - - 0x00334A 00:B33A: 9D 82 06  STA ram_0682_obj,X
C - - - - - 0x00334D 00:B33D: 20 7D B3  JSR sub_B37D
C - - - - - 0x003350 00:B340: 20 96 91  JSR sub_0x0091A6
C - - - - - 0x003353 00:B343: 4C C0 B9  JMP loc_B9C0
bra_B346:
C - - - - - 0x003356 00:B346: 20 88 B3  JSR sub_B388
C - - - - - 0x003359 00:B349: D0 E6     BNE bra_B331
C - - - - - 0x00335B 00:B34B: E0 12     CPX #$12
C - - - - - 0x00335D 00:B34D: 90 1A     BCC bra_B369_RTS
C - - - - - 0x00335F 00:B34F: A0 0A     LDY #$0A
bra_B351_loop:
C - - - - - 0x003361 00:B351: B9 82 06  LDA ram_0682_obj,Y
C - - - - - 0x003364 00:B354: F0 0E     BEQ bra_B364
C - - - - - 0x003366 00:B356: 20 F4 94  JSR sub_0x009504
C - - - - - 0x003369 00:B359: C9 10     CMP #$10
C - - - - - 0x00336B 00:B35B: B0 07     BCS bra_B364
C - - - - - 0x00336D 00:B35D: 20 FE 94  JSR sub_0x00950E
C - - - - - 0x003370 00:B360: C9 10     CMP #$10
C - - - - - 0x003372 00:B362: 90 CD     BCC bra_B331
bra_B364:
C - - - - - 0x003374 00:B364: C8        INY
C - - - - - 0x003375 00:B365: C0 12     CPY #$12
C - - - - - 0x003377 00:B367: 90 E8     BCC bra_B351_loop
bra_B369_RTS:
C - - - - - 0x003379 00:B369: 60        RTS
bra_B36A:
C - - - - - 0x00337A 00:B36A: 20 0C 90  JSR sub_0x00901C
C - - - - - 0x00337D 00:B36D: 90 FA     BCC bra_B369_RTS
ofs_020_B36F_1A:
C - - J - - 0x00337F 00:B36F: A9 1A     LDA #$1A
C - - - - - 0x003381 00:B371: D0 02     BNE bra_B375    ; jmp



ofs_020_B373_0E:
C - - J - - 0x003383 00:B373: A9 0A     LDA #$0A
bra_B375:
C - - - - - 0x003385 00:B375: 9D 82 06  STA ram_0682_obj,X
C - - - - - 0x003388 00:B378: A9 04     LDA #$04
C - - - - - 0x00338A 00:B37A: 9D 20 07  STA ram_0720_obj,X
sub_B37D:
C - - - - - 0x00338D 00:B37D: 20 E2 91  JSR sub_0x0091F2
C - - - - - 0x003390 00:B380: 9D B2 06  STA ram_06B2_obj,X
sub_B383:
sub_0x003393:
C - - - - - 0x003393 00:B383: A9 FF     LDA #$FF
C - - - - - 0x003395 00:B385: 4C 38 98  JMP loc_0x009848



sub_B388:
C - - - - - 0x003398 00:B388: 85 00     STA ram_0000_t29
C - - - - - 0x00339A 00:B38A: BD 4E 06  LDA ram_obj_pos_X,X
C - - - - - 0x00339D 00:B38D: 48        PHA
C - - - - - 0x00339E 00:B38E: BD 68 06  LDA ram_obj_pos_Y,X
C - - - - - 0x0033A1 00:B391: 48        PHA
C - - - - - 0x0033A2 00:B392: 20 A0 B3  JSR sub_B3A0
C - - - - - 0x0033A5 00:B395: 68        PLA
C - - - - - 0x0033A6 00:B396: 9D 68 06  STA ram_obj_pos_Y,X
C - - - - - 0x0033A9 00:B399: 68        PLA
C - - - - - 0x0033AA 00:B39A: 9D 4E 06  STA ram_obj_pos_X,X
C - - - - - 0x0033AD 00:B39D: A5 00     LDA ram_0000_t29
C - - - - - 0x0033AF 00:B39F: 60        RTS



sub_B3A0:
C - - - - - 0x0033B0 00:B3A0: BD 20 07  LDA ram_0720_obj,X
C - - - - - 0x0033B3 00:B3A3: D0 03     BNE bra_B3A8
bra_B3A5:
C - - - - - 0x0033B5 00:B3A5: 4C 6B B4  JMP loc_B46B
bra_B3A8:
C - - - - - 0x0033B8 00:B3A8: 20 D6 90  JSR sub_0x0090E6_0600x_AND_F0
C - - - - - 0x0033BB 00:B3AB: D0 F8     BNE bra_B3A5
C - - - - - 0x0033BD 00:B3AD: 20 D3 9E  JSR sub_0x009EE3
C - - - - - 0x0033C0 00:B3B0: 20 B9 8F  JSR sub_0x008FC9
C - - - - - 0x0033C3 00:B3B3: B0 F0     BCS bra_B3A5
C - - - - - 0x0033C5 00:B3B5: BD 34 06  LDA ram_obj_animation_hi,X
C - - - - - 0x0033C8 00:B3B8: 30 0A     BMI bra_B3C4
C - - - - - 0x0033CA 00:B3BA: A5 01     LDA ram_0001_temp
C - - - - - 0x0033CC 00:B3BC: C9 09     CMP #$09
C - - - - - 0x0033CE 00:B3BE: F0 E5     BEQ bra_B3A5
C - - - - - 0x0033D0 00:B3C0: C9 07     CMP #$07
C - - - - - 0x0033D2 00:B3C2: F0 E1     BEQ bra_B3A5
bra_B3C4:
C - - - - - 0x0033D4 00:B3C4: BD 68 06  LDA ram_obj_pos_Y,X
C - - - - - 0x0033D7 00:B3C7: C9 C0     CMP #$C0
C - - - - - 0x0033D9 00:B3C9: 90 03     BCC bra_B3CE
bra_B3CB:
C - - - - - 0x0033DB 00:B3CB: 4C 26 B5  JMP loc_B526
bra_B3CE:
C - - - - - 0x0033DE 00:B3CE: A5 75     LDA ram_stage
C - - - - - 0x0033E0 00:B3D0: F0 32     BEQ bra_B404
C - - - - - 0x0033E2 00:B3D2: BD 4E 06  LDA ram_obj_pos_X,X
C - - - - - 0x0033E5 00:B3D5: 18        CLC
C - - - - - 0x0033E6 00:B3D6: 69 10     ADC #$10
C - - - - - 0x0033E8 00:B3D8: C9 20     CMP #$20
C - - - - - 0x0033EA 00:B3DA: 90 EF     BCC bra_B3CB
C - - - - - 0x0033EC 00:B3DC: 20 9A 90  JSR sub_0x0090AA
C - - - - - 0x0033EF 00:B3DF: B0 23     BCS bra_B404
C - - - - - 0x0033F1 00:B3E1: A5 61     LDA ram_0061
C - - - - - 0x0033F3 00:B3E3: 29 1F     AND #$1F
C - - - - - 0x0033F5 00:B3E5: F0 1D     BEQ bra_B404
C - - - - - 0x0033F7 00:B3E7: 85 18     STA ram_0018_temp
C - - - - - 0x0033F9 00:B3E9: BD 4E 06  LDA ram_obj_pos_X,X
C - - - - - 0x0033FC 00:B3EC: 10 09     BPL bra_B3F7
C - - - - - 0x0033FE 00:B3EE: 20 07 95  JSR sub_0x009517_EOR_FF_CLC_ADC_01
C - - - - - 0x003401 00:B3F1: C5 18     CMP ram_0018_temp
C - - - - - 0x003403 00:B3F3: 90 D6     BCC bra_B3CB
C - - - - - 0x003405 00:B3F5: B0 0D     BCS bra_B404    ; jmp
bra_B3F7:
C - - - - - 0x003407 00:B3F7: 48        PHA
C - - - - - 0x003408 00:B3F8: A9 20     LDA #$20
C - - - - - 0x00340A 00:B3FA: 38        SEC
C - - - - - 0x00340B 00:B3FB: E5 18     SBC ram_0018_temp
C - - - - - 0x00340D 00:B3FD: 85 18     STA ram_0018_temp
C - - - - - 0x00340F 00:B3FF: 68        PLA
C - - - - - 0x003410 00:B400: C5 18     CMP ram_0018_temp
C - - - - - 0x003412 00:B402: 90 C7     BCC bra_B3CB
bra_B404:
C - - - - - 0x003414 00:B404: 20 C1 F6  JSR sub_0x01F6D1
C - - - - - 0x003417 00:B407: 20 BA 93  JSR sub_0x0093CA
C - - - - - 0x00341A 00:B40A: B0 4E     BCS bra_B45A
C - - - - - 0x00341C 00:B40C: 20 89 91  JSR sub_0x009199_0095_clear_bit7
C - - - - - 0x00341F 00:B40F: A4 88     LDY ram_x2_stage
C - - - - - 0x003421 00:B411: B9 1E B4  LDA tbl_B41E,Y
C - - - - - 0x003424 00:B414: 85 18     STA ram_0018_temp
C - - - - - 0x003426 00:B416: B9 1F B4  LDA tbl_B41E + $01,Y
C - - - - - 0x003429 00:B419: 85 19     STA ram_0019_temp
C - - - - - 0x00342B 00:B41B: 6C 18 00  JMP (ram_0018_temp)



tbl_B41E:
- D 1 - - - 0x00342E 00:B41E: 28 B4     .word ofs_019_B428_00
- D 1 - - - 0x003430 00:B420: A6 B4     .word ofs_019_B4A6_01
- D 1 - - - 0x003432 00:B422: CB B4     .word ofs_019_B4CB_02
- D 1 - - - 0x003434 00:B424: F7 B4     .word ofs_019_B4F7_03
- D 1 - - - 0x003436 00:B426: E7 B4     .word ofs_019_B4E7_04



ofs_019_B428_00:
C - - J - - 0x003438 00:B428: A5 00     LDA ram_0000_temp
C - - - - - 0x00343A 00:B42A: 38        SEC
C - - - - - 0x00343B 00:B42B: E9 75     SBC #$75
C - - - - - 0x00343D 00:B42D: C9 02     CMP #$02
C - - - - - 0x00343F 00:B42F: 90 0B     BCC bra_B43C
C - - - - - 0x003441 00:B431: C9 05     CMP #$05
C - - - - - 0x003443 00:B433: F0 07     BEQ bra_B43C
C - - - - - 0x003445 00:B435: C9 06     CMP #$06
C - - - - - 0x003447 00:B437: F0 03     BEQ bra_B43C
bra_B439:
C - - - - - 0x003449 00:B439: 4C F7 B4  JMP loc_B4F7
bra_B43C:
C - - - - - 0x00344C 00:B43C: A5 26     LDA ram_buffer_index
C - - - - - 0x00344E 00:B43E: D0 1A     BNE bra_B45A
C - - - - - 0x003450 00:B440: 20 3F B5  JSR sub_B53F
loc_B443:
C D 1 - - - 0x003453 00:B443: E8        INX
C - - - - - 0x003454 00:B444: 86 8A     STX ram_008A
C - - - - - 0x003456 00:B446: A6 53     LDX ram_0053
C - - - - - 0x003458 00:B448: A5 8A     LDA ram_008A
C - - - - - 0x00345A 00:B44A: F0 ED     BEQ bra_B439
C - - - - - 0x00345C 00:B44C: A0 09     LDY #$09
C - - - - - 0x00345E 00:B44E: B9 82 07  LDA ram_0782_unk,Y
C - - - - - 0x003461 00:B451: D0 E6     BNE bra_B439
C - - - - - 0x003463 00:B453: A9 93     LDA #$93
C - - - - - 0x003465 00:B455: 20 D8 93  JSR sub_0x0093E8
C - - - - - 0x003468 00:B458: 90 20     BCC bra_B47A
bra_B45A:
C - - - - - 0x00346A 00:B45A: 20 F2 95  JSR sub_0x009602
C - - - - - 0x00346D 00:B45D: A5 D0     LDA ram_00D0
C - - - - - 0x00346F 00:B45F: F0 05     BEQ bra_B466
C - - - - - 0x003471 00:B461: A9 82     LDA #$82
C - - - - - 0x003473 00:B463: 9D 9C 06  STA ram_069C_obj,X
bra_B466:
C - - - - - 0x003476 00:B466: 20 90 91  JSR sub_0x0091A0_0095_set_bit7
C - - - - - 0x003479 00:B469: D0 0A     BNE bra_B475    ; jmp



loc_B46B:
C D 1 - - - 0x00347B 00:B46B: BD 9C 06  LDA ram_069C_obj,X
C - - - - - 0x00347E 00:B46E: 10 05     BPL bra_B475
C - - - - - 0x003480 00:B470: 20 72 91  JSR sub_0x009182_06B2x_AND_0F
C - - - - - 0x003483 00:B473: F0 53     BEQ bra_B4C8
bra_B475:
loc_B475:
C D 1 - - - 0x003485 00:B475: A9 00     LDA #$00
C - - - - - 0x003487 00:B477: 85 00     STA ram_0000_temp
bra_B479_RTS:
C - - - - - 0x003489 00:B479: 60        RTS
bra_B47A:
C - - - - - 0x00348A 00:B47A: A5 8A     LDA ram_008A
C - - - - - 0x00348C 00:B47C: 85 9F     STA ram_009F
C - - - - - 0x00348E 00:B47E: 29 7F     AND #$7F
C - - - - - 0x003490 00:B480: C9 28     CMP #$28
C - - - - - 0x003492 00:B482: 90 12     BCC bra_B496
C - - - - - 0x003494 00:B484: F0 09     BEQ bra_B48F
C - - - - - 0x003496 00:B486: B9 68 06  LDA ram_obj_pos_Y,Y
C - - - - - 0x003499 00:B489: 38        SEC
C - - - - - 0x00349A 00:B48A: E9 20     SBC #$20
C - - - - - 0x00349C 00:B48C: 99 68 06  STA ram_obj_pos_Y,Y
bra_B48F:
C - - - - - 0x00349F 00:B48F: A9 02     LDA #$02
C - - - - - 0x0034A1 00:B491: 99 A0 07  STA ram_07A0_unk,Y
C - - - - - 0x0034A4 00:B494: D0 0B     BNE bra_B4A1    ; jmp
bra_B496:
C - - - - - 0x0034A6 00:B496: A5 94     LDA ram_0094
C - - - - - 0x0034A8 00:B498: 99 BE 07  STA ram_07BE_unk,Y
C - - - - - 0x0034AB 00:B49B: 20 D0 8D  JSR sub_0x008DE0
C - - - - - 0x0034AE 00:B49E: 20 E5 B6  JSR sub_B6E5
bra_B4A1:
C - - - - - 0x0034B1 00:B4A1: A6 53     LDX ram_0053
C - - - - - 0x0034B3 00:B4A3: 4C FC B4  JMP loc_B4FC



ofs_019_B4A6_01:
C - - J - - 0x0034B6 00:B4A6: A5 00     LDA ram_0000_temp
C - - - - - 0x0034B8 00:B4A8: 85 8A     STA ram_008A
C - - - - - 0x0034BA 00:B4AA: 38        SEC
C - - - - - 0x0034BB 00:B4AB: E9 E4     SBC #$E4
C - - - - - 0x0034BD 00:B4AD: C9 0A     CMP #$0A
C - - - - - 0x0034BF 00:B4AF: B0 46     BCS bra_B4F7
C - - - - - 0x0034C1 00:B4B1: A9 A2     LDA #$A2
C - - - - - 0x0034C3 00:B4B3: A0 09     LDY #$09
C - - - - - 0x0034C5 00:B4B5: 20 D8 93  JSR sub_0x0093E8
C - - - - - 0x0034C8 00:B4B8: B0 BF     BCS bra_B479_RTS
C - - - - - 0x0034CA 00:B4BA: A5 8A     LDA ram_008A
C - - - - - 0x0034CC 00:B4BC: 85 9F     STA ram_009F
C - - - - - 0x0034CE 00:B4BE: A5 02     LDA ram_0002_temp
C - - - - - 0x0034D0 00:B4C0: 99 BE 07  STA ram_07BE_unk,Y
C - - - - - 0x0034D3 00:B4C3: A9 00     LDA #$00
C - - - - - 0x0034D5 00:B4C5: 99 A0 07  STA ram_07A0_unk,Y
bra_B4C8:
C - - - - - 0x0034D8 00:B4C8: 4C 26 B5  JMP loc_B526



ofs_019_B4CB_02:
C - - J - - 0x0034DB 00:B4CB: BD 68 06  LDA ram_obj_pos_Y,X
C - - - - - 0x0034DE 00:B4CE: 29 F8     AND #$F8
C - - - - - 0x0034E0 00:B4D0: C9 98     CMP #$98
C - - - - - 0x0034E2 00:B4D2: B0 23     BCS bra_B4F7
C - - - - - 0x0034E4 00:B4D4: A5 00     LDA ram_0000_temp
C - - - - - 0x0034E6 00:B4D6: C9 6F     CMP #$6F
C - - - - - 0x0034E8 00:B4D8: F0 07     BEQ bra_B4E1
C - - - - - 0x0034EA 00:B4DA: 38        SEC
C - - - - - 0x0034EB 00:B4DB: E9 68     SBC #$68
C - - - - - 0x0034ED 00:B4DD: C9 02     CMP #$02
C - - - - - 0x0034EF 00:B4DF: B0 16     BCS bra_B4F7
bra_B4E1:
C - - - - - 0x0034F1 00:B4E1: 20 B4 B5  JSR sub_B5B4
C - - - - - 0x0034F4 00:B4E4: 4C 43 B4  JMP loc_B443



ofs_019_B4E7_04:
C - - J - - 0x0034F7 00:B4E7: A5 00     LDA ram_0000_temp
C - - - - - 0x0034F9 00:B4E9: 38        SEC
C - - - - - 0x0034FA 00:B4EA: E9 6A     SBC #$6A
C - - - - - 0x0034FC 00:B4EC: C9 02     CMP #$02
C - - - - - 0x0034FE 00:B4EE: B0 07     BCS bra_B4F7
C - - - - - 0x003500 00:B4F0: 18        CLC
C - - - - - 0x003501 00:B4F1: 69 27     ADC #$27
C - - - - - 0x003503 00:B4F3: AA        TAX
C - - - - - 0x003504 00:B4F4: 4C 43 B4  JMP loc_B443
bra_B4F7:
loc_B4F7:
ofs_019_B4F7_03:
C D 1 - - - 0x003507 00:B4F7: 20 0A 96  JSR sub_0x00961A
C - - - - - 0x00350A 00:B4FA: F0 2A     BEQ bra_B526
loc_B4FC:
C D 1 - - - 0x00350C 00:B4FC: A5 20     LDA ram_script_hi
C - - - - - 0x00350E 00:B4FE: C9 04     CMP #$04
C - - - - - 0x003510 00:B500: F0 1D     BEQ bra_B51F
C - - - - - 0x003512 00:B502: A5 9F     LDA ram_009F
C - - - - - 0x003514 00:B504: 38        SEC
C - - - - - 0x003515 00:B505: E9 21     SBC #$21
C - - - - - 0x003517 00:B507: C9 03     CMP #$03
C - - - - - 0x003519 00:B509: 90 14     BCC bra_B51F
C - - - - - 0x00351B 00:B50B: AD 87 07  LDA ram_0782_unk + $05
C - - - - - 0x00351E 00:B50E: C9 3B     CMP #$3B
C - - - - - 0x003520 00:B510: F0 0D     BEQ bra_B51F
C - - - - - 0x003522 00:B512: A5 8B     LDA ram_destr_obj_cnt
C - - - - - 0x003524 00:B514: C9 05     CMP #$05
C - - - - - 0x003526 00:B516: 90 07     BCC bra_B51F
C - - - - - 0x003528 00:B518: A9 00     LDA #$00
C - - - - - 0x00352A 00:B51A: 85 8B     STA ram_destr_obj_cnt
C - - - - - 0x00352C 00:B51C: 20 78 9A  JSR sub_0x009A88_drop_a_box_with_powerup
bra_B51F:
C - - - - - 0x00352F 00:B51F: E6 8B     INC ram_destr_obj_cnt
bra_B521:
C - - - - - 0x003531 00:B521: A9 02     LDA #$02
C - - - - - 0x003533 00:B523: 85 00     STA ram_0000_temp
C - - - - - 0x003535 00:B525: 60        RTS
bra_B526:
loc_B526:
C D 1 - - - 0x003536 00:B526: E0 0A     CPX #$0A
C - - - - - 0x003538 00:B528: 90 F7     BCC bra_B521
C - - - - - 0x00353A 00:B52A: 20 41 91  JSR sub_0x009151_0682x_and_0F
C - - - - - 0x00353D 00:B52D: C9 02     CMP #$02
C - - - - - 0x00353F 00:B52F: F0 F0     BEQ bra_B521
C - - - - - 0x003541 00:B531: C9 03     CMP #$03
C - - - - - 0x003543 00:B533: F0 EC     BEQ bra_B521
C - - - - - 0x003545 00:B535: C9 0A     CMP #$0A
C - - - - - 0x003547 00:B537: F0 03     BEQ bra_B53C
C - - - - - 0x003549 00:B539: 20 CD 91  JSR sub_0x0091DD
bra_B53C:
C - - - - - 0x00354C 00:B53C: 4C 75 B4  JMP loc_B475



sub_B53F:
C - - - - - 0x00354F 00:B53F: A5 02     LDA ram_0002_temp
C - - - - - 0x003551 00:B541: 85 94     STA ram_0094
C - - - - - 0x003553 00:B543: 85 3A     STA ram_003A_temp
C - - - - - 0x003555 00:B545: A5 00     LDA ram_0000_temp
C - - - - - 0x003557 00:B547: C9 75     CMP #$75
C - - - - - 0x003559 00:B549: F0 41     BEQ bra_B58C
C - - - - - 0x00355B 00:B54B: C9 7B     CMP #$7B
C - - - - - 0x00355D 00:B54D: F0 5C     BEQ bra_B5AB
C - - - - - 0x00355F 00:B54F: C9 7A     CMP #$7A
C - - - - - 0x003561 00:B551: F0 5E     BEQ bra_B5B1
C - - - - - 0x003563 00:B553: 20 B4 B6  JSR sub_B6B4
C - - - - - 0x003566 00:B556: A2 01     LDX #$01
C - - - - - 0x003568 00:B558: C9 76     CMP #$76
C - - - - - 0x00356A 00:B55A: F0 25     BEQ bra_B581_RTS
C - - - - - 0x00356C 00:B55C: 20 BC B6  JSR sub_B6BC
C - - - - - 0x00356F 00:B55F: E8        INX
C - - - - - 0x003570 00:B560: C9 76     CMP #$76
C - - - - - 0x003572 00:B562: F0 1E     BEQ bra_B582
C - - - - - 0x003574 00:B564: 20 BC B6  JSR sub_B6BC
C - - - - - 0x003577 00:B567: E8        INX
C - - - - - 0x003578 00:B568: 20 AA B6  JSR sub_B6AA
C - - - - - 0x00357B 00:B56B: C9 75     CMP #$75
C - - - - - 0x00357D 00:B56D: F0 12     BEQ bra_B581_RTS
C - - - - - 0x00357F 00:B56F: A2 06     LDX #$06
C - - - - - 0x003581 00:B571: 20 A4 B6  JSR sub_B6A4
C - - - - - 0x003584 00:B574: C9 75     CMP #$75
C - - - - - 0x003586 00:B576: F0 09     BEQ bra_B581_RTS
C - - - - - 0x003588 00:B578: A2 08     LDX #$08
C - - - - - 0x00358A 00:B57A: 20 A4 B6  JSR sub_B6A4
C - - - - - 0x00358D 00:B57D: F0 02     BEQ bra_B581_RTS
C - - - - - 0x00358F 00:B57F: A2 26     LDX #$26
bra_B581_RTS:
C - - - - - 0x003591 00:B581: 60        RTS
bra_B582:
C - - - - - 0x003592 00:B582: 20 A4 B6  JSR sub_B6A4
C - - - - - 0x003595 00:B585: C9 76     CMP #$76
C - - - - - 0x003597 00:B587: F0 F8     BEQ bra_B581_RTS
C - - - - - 0x003599 00:B589: A2 05     LDX #$05
C - - - - - 0x00359B 00:B58B: 60        RTS
bra_B58C:
C - - - - - 0x00359C 00:B58C: 20 B0 B6  JSR sub_B6B0
C - - - - - 0x00359F 00:B58F: A2 00     LDX #$00
C - - - - - 0x0035A1 00:B591: C9 76     CMP #$76
C - - - - - 0x0035A3 00:B593: F0 EC     BEQ bra_B581_RTS
C - - - - - 0x0035A5 00:B595: 20 BC B6  JSR sub_B6BC
C - - - - - 0x0035A8 00:B598: A2 04     LDX #$04
C - - - - - 0x0035AA 00:B59A: C9 76     CMP #$76
C - - - - - 0x0035AC 00:B59C: F0 E3     BEQ bra_B581_RTS
C - - - - - 0x0035AE 00:B59E: 20 BC B6  JSR sub_B6BC
C - - - - - 0x0035B1 00:B5A1: A2 07     LDX #$07
C - - - - - 0x0035B3 00:B5A3: 20 A4 B6  JSR sub_B6A4
C - - - - - 0x0035B6 00:B5A6: F0 D9     BEQ bra_B581_RTS
C - - - - - 0x0035B8 00:B5A8: A2 25     LDX #$25
C - - - - - 0x0035BA 00:B5AA: 60        RTS
bra_B5AB:
C - - - - - 0x0035BB 00:B5AB: 20 B8 B6  JSR sub_B6B8
C - - - - - 0x0035BE 00:B5AE: A2 23     LDX #$23
C - - - - - 0x0035C0 00:B5B0: 60        RTS
bra_B5B1:
- - - - - - 0x0035C1 00:B5B1: A2 24     LDX #$24
bra_B5B3_RTS:
C - - - - - 0x0035C3 00:B5B3: 60        RTS



sub_B5B4:
C - - - - - 0x0035C4 00:B5B4: A5 02     LDA ram_0002_temp
C - - - - - 0x0035C6 00:B5B6: 85 94     STA ram_0094
C - - - - - 0x0035C8 00:B5B8: 85 3A     STA ram_003A_temp
C - - - - - 0x0035CA 00:B5BA: A5 00     LDA ram_0000_temp
C - - - - - 0x0035CC 00:B5BC: A2 22     LDX #$22
C - - - - - 0x0035CE 00:B5BE: C9 6F     CMP #$6F
C - - - - - 0x0035D0 00:B5C0: F0 F1     BEQ bra_B5B3_RTS
C - - - - - 0x0035D2 00:B5C2: C9 68     CMP #$68
C - - - - - 0x0035D4 00:B5C4: D0 45     BNE bra_B60B
C - - - - - 0x0035D6 00:B5C6: A9 50     LDA #$50
C - - - - - 0x0035D8 00:B5C8: 20 BE B6  JSR sub_B6BE
C - - - - - 0x0035DB 00:B5CB: A2 09     LDX #$09
C - - - - - 0x0035DD 00:B5CD: C9 69     CMP #$69
C - - - - - 0x0035DF 00:B5CF: F0 79     BEQ bra_B64A_RTS
C - - - - - 0x0035E1 00:B5D1: 20 F4 B5  JSR sub_B5F4
C - - - - - 0x0035E4 00:B5D4: F0 74     BEQ bra_B64A_RTS
C - - - - - 0x0035E6 00:B5D6: A2 11     LDX #$11
C - - - - - 0x0035E8 00:B5D8: 20 ED B5  JSR sub_B5ED
C - - - - - 0x0035EB 00:B5DB: F0 6D     BEQ bra_B64A_RTS
C - - - - - 0x0035ED 00:B5DD: A2 17     LDX #$17
C - - - - - 0x0035EF 00:B5DF: 20 ED B5  JSR sub_B5ED
C - - - - - 0x0035F2 00:B5E2: F0 66     BEQ bra_B64A_RTS
C - - - - - 0x0035F4 00:B5E4: A2 1B     LDX #$1B
C - - - - - 0x0035F6 00:B5E6: 20 ED B5  JSR sub_B5ED
C - - - - - 0x0035F9 00:B5E9: F0 5F     BEQ bra_B64A_RTS
C - - - - - 0x0035FB 00:B5EB: A2 1E     LDX #$1E
sub_B5ED:
C - - - - - 0x0035FD 00:B5ED: 20 BC B6  JSR sub_B6BC
C - - - - - 0x003600 00:B5F0: C9 69     CMP #$69
C - - - - - 0x003602 00:B5F2: F0 56     BEQ bra_B64A_RTS
sub_B5F4:
C - - - - - 0x003604 00:B5F4: A4 94     LDY ram_0094
C - - - - - 0x003606 00:B5F6: B9 FF 03  LDA ram_0400 - $01,Y
C - - - - - 0x003609 00:B5F9: C9 69     CMP #$69
C - - - - - 0x00360B 00:B5FB: F0 4D     BEQ bra_B64A_RTS
C - - - - - 0x00360D 00:B5FD: C9 77     CMP #$77
C - - - - - 0x00360F 00:B5FF: F0 49     BEQ bra_B64A_RTS
C - - - - - 0x003611 00:B601: B9 01 04  LDA ram_0401,Y
C - - - - - 0x003614 00:B604: C9 69     CMP #$69
C - - - - - 0x003616 00:B606: F0 42     BEQ bra_B64A_RTS
C - - - - - 0x003618 00:B608: C9 77     CMP #$77
C - - - - - 0x00361A 00:B60A: 60        RTS
bra_B60B:
C - - - - - 0x00361B 00:B60B: A9 40     LDA #$40
C - - - - - 0x00361D 00:B60D: 20 BE B6  JSR sub_B6BE
C - - - - - 0x003620 00:B610: A2 0A     LDX #$0A
C - - - - - 0x003622 00:B612: C9 69     CMP #$69
C - - - - - 0x003624 00:B614: F0 34     BEQ bra_B64A_RTS
C - - - - - 0x003626 00:B616: 20 ED B5  JSR sub_B5ED
C - - - - - 0x003629 00:B619: F0 50     BEQ bra_B66B
C - - - - - 0x00362B 00:B61B: 20 ED B5  JSR sub_B5ED
C - - - - - 0x00362E 00:B61E: F0 55     BEQ bra_B675
C - - - - - 0x003630 00:B620: 20 ED B5  JSR sub_B5ED
C - - - - - 0x003633 00:B623: F0 61     BEQ bra_B686
C - - - - - 0x003635 00:B625: C9 68     CMP #$68
C - - - - - 0x003637 00:B627: F0 5D     BEQ bra_B686
C - - - - - 0x003639 00:B629: 20 ED B5  JSR sub_B5ED
C - - - - - 0x00363C 00:B62C: A2 8F     LDX #$8F
C - - - - - 0x00363E 00:B62E: 20 4B B6  JSR sub_B64B
C - - - - - 0x003641 00:B631: F0 17     BEQ bra_B64A_RTS
C - - - - - 0x003643 00:B633: A2 95     LDX #$95
C - - - - - 0x003645 00:B635: 20 5F B6  JSR sub_B65F
C - - - - - 0x003648 00:B638: F0 10     BEQ bra_B64A_RTS
C - - - - - 0x00364A 00:B63A: A2 1A     LDX #$1A
C - - - - - 0x00364C 00:B63C: 20 63 B6  JSR sub_B663
C - - - - - 0x00364F 00:B63F: F0 09     BEQ bra_B64A_RTS
C - - - - - 0x003651 00:B641: A2 1D     LDX #$1D
C - - - - - 0x003653 00:B643: 20 67 B6  JSR sub_B667
C - - - - - 0x003656 00:B646: F0 02     BEQ bra_B64A_RTS
C - - - - - 0x003658 00:B648: A2 1F     LDX #$1F
bra_B64A_RTS:
C - - - - - 0x00365A 00:B64A: 60        RTS



sub_B64B:
; bzk doesn't look like a color buffer usage
C - - - - - 0x00365B 00:B64B: A9 E0     LDA #$E0
bra_B64D:
C - - - - - 0x00365D 00:B64D: 18        CLC
C - - - - - 0x00365E 00:B64E: 65 94     ADC ram_0094
C - - - - - 0x003660 00:B650: A8        TAY
C - - - - - 0x003661 00:B651: B9 D0 03  LDA ram_brightnes_buffer,Y ; $03D5 $03DA $03DB $03E5 $03EA $03EB $03F5 $03FA $03FB $0409 $040A $040B $040C $040D $040E $0419 $041A $041B $041C $041D $041E $0429 $042A $042C $042D $042E $0439 $043A $043D $048A $048B $049A $049B $04AA $04ABC - - - - - 0x003664 00:B654: F0 03     BEQ bra_B659
C - - - - - 0x003664 00:B654: F0 03     BEQ bra_B659
C - - - - - 0x003666 00:B656: C9 68     CMP #$68
C - - - - - 0x003668 00:B658: 60        RTS
bra_B659:
C - - - - - 0x003669 00:B659: B9 E0 03  LDA ram_brightnes_buffer + $10,Y ; $0405 $040A $040B $0419 $041A $041B $041C $041D $041E $0429 $042A $042B $042C $042D $042E $0439 $043A $043C $043D $043E $0449 $044A $044D $049A $049B $04AA $04AB $04BA $04BB
C - - - - - 0x00366C 00:B65C: C9 69     CMP #$69
C - - - - - 0x00366E 00:B65E: 60        RTS



sub_B65F:
C - - - - - 0x00366F 00:B65F: A9 F0     LDA #$F0
C - - - - - 0x003671 00:B661: D0 EA     BNE bra_B64D    ; jmp



sub_B663:
C - - - - - 0x003673 00:B663: A9 00     LDA #$00
C - - - - - 0x003675 00:B665: F0 E6     BEQ bra_B64D    ; jmp



sub_B667:
C - - - - - 0x003677 00:B667: A9 10     LDA #$10
C - - - - - 0x003679 00:B669: D0 E2     BNE bra_B64D    ; jmp



bra_B66B:
C - - - - - 0x00367B 00:B66B: A2 0B     LDX #$0B
C - - - - - 0x00367D 00:B66D: 20 4B B6  JSR sub_B64B
C - - - - - 0x003680 00:B670: F0 D8     BEQ bra_B64A_RTS
C - - - - - 0x003682 00:B672: A2 12     LDX #$12
C - - - - - 0x003684 00:B674: 60        RTS



bra_B675:
C - - - - - 0x003685 00:B675: A2 0C     LDX #$0C
C - - - - - 0x003687 00:B677: 20 4B B6  JSR sub_B64B
C - - - - - 0x00368A 00:B67A: F0 CE     BEQ bra_B64A_RTS
C - - - - - 0x00368C 00:B67C: A2 13     LDX #$13
C - - - - - 0x00368E 00:B67E: 20 5F B6  JSR sub_B65F
C - - - - - 0x003691 00:B681: F0 C7     BEQ bra_B64A_RTS
C - - - - - 0x003693 00:B683: A2 18     LDX #$18
C - - - - - 0x003695 00:B685: 60        RTS



bra_B686:
C - - - - - 0x003696 00:B686: A2 8D     LDX #$8D
C - - - - - 0x003698 00:B688: 20 4B B6  JSR sub_B64B
C - - - - - 0x00369B 00:B68B: F0 BD     BEQ bra_B64A_RTS
C - - - - - 0x00369D 00:B68D: A2 14     LDX #$14
C - - - - - 0x00369F 00:B68F: 20 5F B6  JSR sub_B65F
C - - - - - 0x0036A2 00:B692: F0 B6     BEQ bra_B64A_RTS
C - - - - - 0x0036A4 00:B694: A2 19     LDX #$19
C - - - - - 0x0036A6 00:B696: 20 63 B6  JSR sub_B663
C - - - - - 0x0036A9 00:B699: F0 AF     BEQ bra_B64A_RTS
C - - - - - 0x0036AB 00:B69B: A2 1C     LDX #$1C
C - - - - - 0x0036AD 00:B69D: 60        RTS


; bzk garbage
- - - - - - 0x0036AE 00:B69E: A4 94     LDY ram_0094
- - - - - - 0x0036B0 00:B6A0: B9 F0 03  LDA ram_0400 - $10,Y
- - - - - - 0x0036B3 00:B6A3: 60        RTS



sub_B6A4:
C - - - - - 0x0036B4 00:B6A4: A4 94     LDY ram_0094
C - - - - - 0x0036B6 00:B6A6: B9 E0 03  LDA ram_0400 - $20,Y
C - - - - - 0x0036B9 00:B6A9: 60        RTS



sub_B6AA:
C - - - - - 0x0036BA 00:B6AA: A4 94     LDY ram_0094
C - - - - - 0x0036BC 00:B6AC: B9 D0 03  LDA ram_0400 - $30,Y
C - - - - - 0x0036BF 00:B6AF: 60        RTS



sub_B6B0:
C - - - - - 0x0036C0 00:B6B0: A9 30     LDA #$30
C - - - - - 0x0036C2 00:B6B2: D0 0A     BNE bra_B6BE    ; jmp



sub_B6B4:
C - - - - - 0x0036C4 00:B6B4: A9 20     LDA #$20
C - - - - - 0x0036C6 00:B6B6: D0 06     BNE bra_B6BE    ; jmp



sub_B6B8:
C - - - - - 0x0036C8 00:B6B8: A9 10     LDA #$10
C - - - - - 0x0036CA 00:B6BA: D0 02     BNE bra_B6BE    ; jmp



sub_B6BC:
C - - - - - 0x0036CC 00:B6BC: A9 F0     LDA #$F0
bra_B6BE:
sub_B6BE:
C - - - - - 0x0036CE 00:B6BE: 85 1F     STA ram_001F_temp
C - - - - - 0x0036D0 00:B6C0: 18        CLC
C - - - - - 0x0036D1 00:B6C1: 65 94     ADC ram_0094
C - - - - - 0x0036D3 00:B6C3: 85 94     STA ram_0094
C - - - - - 0x0036D5 00:B6C5: 85 1D     STA ram_001D_temp
C - - - - - 0x0036D7 00:B6C7: A4 53     LDY ram_0053
C - - - - - 0x0036D9 00:B6C9: 6A        ROR
C - - - - - 0x0036DA 00:B6CA: 45 1F     EOR ram_001F_temp
C - - - - - 0x0036DC 00:B6CC: 2A        ROL
C - - - - - 0x0036DD 00:B6CD: 90 08     BCC bra_B6D7
C - - - - - 0x0036DF 00:B6CF: B9 00 06  LDA ram_0600_obj,Y
C - - - - - 0x0036E2 00:B6D2: 49 80     EOR #$80
C - - - - - 0x0036E4 00:B6D4: 99 00 06  STA ram_0600_obj,Y
bra_B6D7:
C - - - - - 0x0036E7 00:B6D7: B9 00 06  LDA ram_0600_obj,Y
C - - - - - 0x0036EA 00:B6DA: 30 06     BMI bra_B6E2
C - - - - - 0x0036EC 00:B6DC: A4 1D     LDY ram_001D_temp
C - - - - - 0x0036EE 00:B6DE: B9 00 04  LDA ram_0400,Y
C - - - - - 0x0036F1 00:B6E1: 60        RTS
bra_B6E2:
C - - - - - 0x0036F2 00:B6E2: A9 FF     LDA #$FF
C - - - - - 0x0036F4 00:B6E4: 60        RTS



sub_B6E5:
C - - - - - 0x0036F5 00:B6E5: 20 C9 8D  JSR sub_0x008DD9_009F_AND_7F_TAY_DEY
C - - - - - 0x0036F8 00:B6E8: 98        TYA
C - - - - - 0x0036F9 00:B6E9: 4A        LSR
C - - - - - 0x0036FA 00:B6EA: A8        TAY
C - - - - - 0x0036FB 00:B6EB: B9 9C B7  LDA tbl_B79C,Y
C - - - - - 0x0036FE 00:B6EE: B0 04     BCS bra_B6F4
C - - - - - 0x003700 00:B6F0: 4A        LSR
C - - - - - 0x003701 00:B6F1: 4A        LSR
C - - - - - 0x003702 00:B6F2: 4A        LSR
C - - - - - 0x003703 00:B6F3: 4A        LSR
bra_B6F4:
C - - - - - 0x003704 00:B6F4: 29 0F     AND #$0F
C - - - - - 0x003706 00:B6F6: 18        CLC
C - - - - - 0x003707 00:B6F7: 69 01     ADC #$01
C - - - - - 0x003709 00:B6F9: A4 91     LDY ram_0091
C - - - - - 0x00370B 00:B6FB: 99 A0 07  STA ram_07A0_unk,Y
C - - - - - 0x00370E 00:B6FE: 20 C9 8D  JSR sub_0x008DD9_009F_AND_7F_TAY_DEY
C - - - - - 0x003711 00:B701: B9 60 B7  LDA tbl_B760_index,Y
C - - - - - 0x003714 00:B704: A8        TAY
C - - - - - 0x003715 00:B705: B9 87 B7  LDA tbl_B787,Y
C - - - - - 0x003718 00:B708: 85 02     STA ram_0002_temp
C - - - - - 0x00371A 00:B70A: B9 88 B7  LDA tbl_B787 + $01,Y
C - - - - - 0x00371D 00:B70D: 85 03     STA ram_0003_temp
C - - - - - 0x00371F 00:B70F: A4 91     LDY ram_0091
C - - - - - 0x003721 00:B711: A9 E1     LDA #$E1
C - - - - - 0x003723 00:B713: 20 70 90  JSR sub_0x009080
C - - - - - 0x003726 00:B716: 18        CLC
C - - - - - 0x003727 00:B717: 65 02     ADC ram_0002_temp
C - - - - - 0x003729 00:B719: 99 AA 07  STA ram_07AA_unk,Y
C - - - - - 0x00372C 00:B71C: 08        PHP
C - - - - - 0x00372D 00:B71D: A9 E2     LDA #$E2
C - - - - - 0x00372F 00:B71F: 20 70 90  JSR sub_0x009080
C - - - - - 0x003732 00:B722: 28        PLP
C - - - - - 0x003733 00:B723: 65 03     ADC ram_0003_temp
C - - - - - 0x003735 00:B725: 99 B4 07  STA ram_07B4_unk,Y
C - - - - - 0x003738 00:B728: 20 C9 8D  JSR sub_0x008DD9_009F_AND_7F_TAY_DEY
C - - - - - 0x00373B 00:B72B: 98        TYA
C - - - - - 0x00373C 00:B72C: 48        PHA
C - - - - - 0x00373D 00:B72D: 29 07     AND #$07
C - - - - - 0x00373F 00:B72F: A8        TAY
C - - - - - 0x003740 00:B730: B9 40 99  LDA tbl_0x009950_bits,Y
C - - - - - 0x003743 00:B733: 85 00     STA ram_0000_temp
C - - - - - 0x003745 00:B735: 68        PLA
C - - - - - 0x003746 00:B736: 20 B5 93  JSR sub_0x0093C4_LSRx3_TAY
C - - - - - 0x003749 00:B739: B9 97 B7  LDA tbl_B797,Y
C - - - - - 0x00374C 00:B73C: A0 00     LDY #$00
C - - - - - 0x00374E 00:B73E: 25 00     AND ram_0000_temp
C - - - - - 0x003750 00:B740: F0 02     BEQ bra_B744
C - - - - - 0x003752 00:B742: A0 08     LDY #$08
bra_B744:
C - - - - - 0x003754 00:B744: 84 00     STY ram_0000_temp
C - - - - - 0x003756 00:B746: A9 DC     LDA #$DC
C - - - - - 0x003758 00:B748: 20 70 90  JSR sub_0x009080
C - - - - - 0x00375B 00:B74B: A4 91     LDY ram_0091
C - - - - - 0x00375D 00:B74D: 18        CLC
C - - - - - 0x00375E 00:B74E: 65 00     ADC ram_0000_temp
C - - - - - 0x003760 00:B750: 99 C8 07  STA ram_07C8_unk,Y
C - - - - - 0x003763 00:B753: 08        PHP
C - - - - - 0x003764 00:B754: A9 DD     LDA #$DD
C - - - - - 0x003766 00:B756: 20 70 90  JSR sub_0x009080
C - - - - - 0x003769 00:B759: 28        PLP
C - - - - - 0x00376A 00:B75A: 69 00     ADC #$00
C - - - - - 0x00376C 00:B75C: 99 D2 07  STA ram_07D2_unk,Y
C - - - - - 0x00376F 00:B75F: 60        RTS



tbl_B760_index:
- D 1 - - - 0x003770 00:B760: 00        .byte $00   ; 01 
- D 1 - - - 0x003771 00:B761: 02        .byte $02   ; 02 
- - - - - - 0x003772 00:B762: 04        .byte $04   ; 03 
- D 1 - - - 0x003773 00:B763: 06        .byte $06   ; 04 
- D 1 - - - 0x003774 00:B764: 00        .byte $00   ; 05 
- D 1 - - - 0x003775 00:B765: 02        .byte $02   ; 06 
- D 1 - - - 0x003776 00:B766: 04        .byte $04   ; 07 
- D 1 - - - 0x003777 00:B767: 00        .byte $00   ; 08 
- D 1 - - - 0x003778 00:B768: 02        .byte $02   ; 09 
- - - - - - 0x003779 00:B769: 00        .byte $00   ; 0A 
- D 1 - - - 0x00377A 00:B76A: 02        .byte $02   ; 0B 
- - - - - - 0x00377B 00:B76B: 04        .byte $04   ; 0C 
- D 1 - - - 0x00377C 00:B76C: 06        .byte $06   ; 0D 
- D 1 - - - 0x00377D 00:B76D: 08        .byte $08   ; 0E 
- - - - - - 0x00377E 00:B76E: 08        .byte $08   ; 0F 
- D 1 - - - 0x00377F 00:B76F: 0A        .byte $0A   ; 10 
- - - - - - 0x003780 00:B770: 0A        .byte $0A   ; 11 
- D 1 - - - 0x003781 00:B771: 00        .byte $00   ; 12 
- D 1 - - - 0x003782 00:B772: 02        .byte $02   ; 13 
- D 1 - - - 0x003783 00:B773: 04        .byte $04   ; 14 
- D 1 - - - 0x003784 00:B774: 06        .byte $06   ; 15 
- D 1 - - - 0x003785 00:B775: 08        .byte $08   ; 16 
- - - - - - 0x003786 00:B776: 08        .byte $08   ; 17 
- - - - - - 0x003787 00:B777: 00        .byte $00   ; 18 
- D 1 - - - 0x003788 00:B778: 02        .byte $02   ; 19 
- D 1 - - - 0x003789 00:B779: 04        .byte $04   ; 1A 
- D 1 - - - 0x00378A 00:B77A: 06        .byte $06   ; 1B 
- D 1 - - - 0x00378B 00:B77B: 00        .byte $00   ; 1C 
- D 1 - - - 0x00378C 00:B77C: 02        .byte $02   ; 1D 
- D 1 - - - 0x00378D 00:B77D: 04        .byte $04   ; 1E 
- D 1 - - - 0x00378E 00:B77E: 00        .byte $00   ; 1F 
- D 1 - - - 0x00378F 00:B77F: 02        .byte $02   ; 20 
- - - - - - 0x003790 00:B780: 00        .byte $00   ; 21 
- - - - - - 0x003791 00:B781: 02        .byte $02   ; 22 
- D 1 - - - 0x003792 00:B782: 04        .byte $04   ; 23 
- D 1 - - - 0x003793 00:B783: 0C        .byte $0C   ; 24 
- - - - - - 0x003794 00:B784: 0E        .byte $0E   ; 25 
- D 1 - - - 0x003795 00:B785: 00        .byte $00   ; 26 
- D 1 - - - 0x003796 00:B786: 02        .byte $02   ; 27 



tbl_B787:
- D 1 - - - 0x003797 00:B787: 40        .byte $40, $00   ; 00 
- D 1 - - - 0x003799 00:B789: C0        .byte $C0, $FF   ; 02 
- D 1 - - - 0x00379B 00:B78B: 40        .byte $40, $FF   ; 04 
- D 1 - - - 0x00379D 00:B78D: C0        .byte $C0, $FE   ; 06 
- D 1 - - - 0x00379F 00:B78F: 40        .byte $40, $FE   ; 08 
- D 1 - - - 0x0037A1 00:B791: C0        .byte $C0, $FD   ; 0A 
- D 1 - - - 0x0037A3 00:B793: 00        .byte $00, $00   ; 0C 
- - - - - - 0x0037A5 00:B795: 80        .byte $80, $FF   ; 0E 



tbl_B797:
- D 1 - - - 0x0037A7 00:B797: 89        .byte $89   ; 
- D 1 - - - 0x0037A8 00:B798: 40        .byte $40   ; 
- D 1 - - - 0x0037A9 00:B799: 41        .byte $41   ; 
- D 1 - - - 0x0037AA 00:B79A: 12        .byte $12   ; 
- D 1 - - - 0x0037AB 00:B79B: 94        .byte $94   ; 



tbl_B79C:
- D 1 - - - 0x0037AC 00:B79C: 00        .byte $00   ; 
- D 1 - - - 0x0037AD 00:B79D: 33        .byte $33   ; 
- D 1 - - - 0x0037AE 00:B79E: 00        .byte $00   ; 
- D 1 - - - 0x0037AF 00:B79F: 30        .byte $30   ; 
- D 1 - - - 0x0037B0 00:B7A0: 00        .byte $00   ; 
- D 1 - - - 0x0037B1 00:B7A1: 03        .byte $03   ; 
- D 1 - - - 0x0037B2 00:B7A2: 37        .byte $37   ; 
- D 1 - - - 0x0037B3 00:B7A3: 77        .byte $77   ; 
- D 1 - - - 0x0037B4 00:B7A4: 70        .byte $70   ; 
- D 1 - - - 0x0037B5 00:B7A5: 03        .byte $03   ; 
- D 1 - - - 0x0037B6 00:B7A6: 37        .byte $37   ; 
- - - - - - 0x0037B7 00:B7A7: 70        .byte $70   ; 
- D 1 - - - 0x0037B8 00:B7A8: 03        .byte $03   ; 
- D 1 - - - 0x0037B9 00:B7A9: 30        .byte $30   ; 
- D 1 - - - 0x0037BA 00:B7AA: 03        .byte $03   ; 
- D 1 - - - 0x0037BB 00:B7AB: 00        .byte $00   ; 
- - - - - - 0x0037BC 00:B7AC: 00        .byte $00   ; 
- D 1 - - - 0x0037BD 00:B7AD: 00        .byte $00   ; 
- D 1 - - - 0x0037BE 00:B7AE: 00        .byte $00   ; 
- D 1 - - - 0x0037BF 00:B7AF: 00        .byte $00   ; 



sub_0x0037C0:
C - - - - - 0x0037C0 00:B7B0: BD 9C 06  LDA ram_069C_obj,X
C - - - - - 0x0037C3 00:B7B3: 30 6D     BMI bra_B822
C - - - - - 0x0037C5 00:B7B5: 20 41 91  JSR sub_0x009151_0682x_and_0F
C - - - - - 0x0037C8 00:B7B8: A8        TAY
C - - - - - 0x0037C9 00:B7B9: B9 65 B8  LDA tbl_B866 - $01,Y
C - - - - - 0x0037CC 00:B7BC: E0 12     CPX #$12
C - - - - - 0x0037CE 00:B7BE: 90 03     BCC bra_B7C3
C - - - - - 0x0037D0 00:B7C0: B9 74 B8  LDA tbl_B875 - $01,Y
bra_B7C3:
C - - - - - 0x0037D3 00:B7C3: 9D 9C 06  STA ram_069C_obj,X
C - - - - - 0x0037D6 00:B7C6: B9 83 B8  LDA tbl_B884 - $01,Y
C - - - - - 0x0037D9 00:B7C9: C9 FF     CMP #$FF
C - - - - - 0x0037DB 00:B7CB: F0 14     BEQ bra_B7E1
C - - - - - 0x0037DD 00:B7CD: E0 12     CPX #$12
C - - - - - 0x0037DF 00:B7CF: 90 04     BCC bra_B7D5
C - - - - - 0x0037E1 00:B7D1: 4A        LSR
C - - - - - 0x0037E2 00:B7D2: 4A        LSR
C - - - - - 0x0037E3 00:B7D3: 4A        LSR
C - - - - - 0x0037E4 00:B7D4: 4A        LSR
bra_B7D5:
C - - - - - 0x0037E5 00:B7D5: 29 0F     AND #$0F
C - - - - - 0x0037E7 00:B7D7: 85 00     STA ram_0000_temp
C - - - - - 0x0037E9 00:B7D9: 20 7D 91  JSR sub_0x00918D_06B2x_AND_F0
C - - - - - 0x0037EC 00:B7DC: 05 00     ORA ram_0000_temp
C - - - - - 0x0037EE 00:B7DE: 4C E3 B7  JMP loc_B7E3
bra_B7E1:
C - - - - - 0x0037F1 00:B7E1: A9 00     LDA #$00
loc_B7E3:
C D 1 - - - 0x0037F3 00:B7E3: 9D B2 06  STA ram_06B2_obj,X
C - - - - - 0x0037F6 00:B7E6: C0 02     CPY #$02
C - - - - - 0x0037F8 00:B7E8: D0 05     BNE bra_B7EF
C - - - - - 0x0037FA 00:B7EA: 20 78 91  JSR sub_0x009188_stage_AND_01
C - - - - - 0x0037FD 00:B7ED: D0 33     BNE bra_B822
bra_B7EF:
C - - - - - 0x0037FF 00:B7EF: 20 57 B8  JSR sub_B857
C - - - - - 0x003802 00:B7F2: E0 12     CPX #$12
C - - - - - 0x003804 00:B7F4: 90 0F     BCC bra_B805
C - - - - - 0x003806 00:B7F6: 20 41 91  JSR sub_0x009151_0682x_and_0F
C - - - - - 0x003809 00:B7F9: C9 04     CMP #$04
C - - - - - 0x00380B 00:B7FB: D0 08     BNE bra_B805
C - - - - - 0x00380D 00:B7FD: BD 34 06  LDA ram_obj_animation_hi,X
C - - - - - 0x003810 00:B800: 09 01     ORA #$01
C - - - - - 0x003812 00:B802: 9D 34 06  STA ram_obj_animation_hi,X
bra_B805:
C - - - - - 0x003815 00:B805: 20 82 95  JSR sub_0x009592
C - - - - - 0x003818 00:B808: BD 82 06  LDA ram_0682_obj,X
C - - - - - 0x00381B 00:B80B: 30 15     BMI bra_B822
C - - - - - 0x00381D 00:B80D: 20 41 91  JSR sub_0x009151_0682x_and_0F
C - - - - - 0x003820 00:B810: A8        TAY
C - - - - - 0x003821 00:B811: B9 63 95  LDA tbl_0x009574_sfx - $01,Y
C - - - - - 0x003824 00:B814: E0 12     CPX #$12
C - - - - - 0x003826 00:B816: 90 03     BCC bra_B81B
; X = 12+
C - - - - - 0x003828 00:B818: B9 72 95  LDA tbl_0x009583_sfx - $01,Y
bra_B81B:
C - - - - - 0x00382B 00:B81B: C9 FF     CMP #$FF
C - - - - - 0x00382D 00:B81D: F0 03     BEQ bra_B822
C - - - - - 0x00382F 00:B81F: 20 D8 95  JSR sub_0x0095E8_play_music
bra_B822:
C - - - - - 0x003832 00:B822: BD 82 06  LDA ram_0682_obj,X
C - - - - - 0x003835 00:B825: F0 17     BEQ bra_B83E_RTS
C - - - - - 0x003837 00:B827: 29 0F     AND #$0F
C - - - - - 0x003839 00:B829: A0 20     LDY #$20
C - - - - - 0x00383B 00:B82B: C9 02     CMP #$02
C - - - - - 0x00383D 00:B82D: D0 02     BNE bra_B831
C - - - - - 0x00383F 00:B82F: A0 22     LDY #$22
bra_B831:
C - - - - - 0x003841 00:B831: 20 44 B8  JSR sub_B844
C - - - - - 0x003844 00:B834: B0 09     BCS bra_B83F
C - - - - - 0x003846 00:B836: BD 9C 06  LDA ram_069C_obj,X
C - - - - - 0x003849 00:B839: 09 80     ORA #$80
C - - - - - 0x00384B 00:B83B: 9D 9C 06  STA ram_069C_obj,X
bra_B83E_RTS:
C - - - - - 0x00384E 00:B83E: 60        RTS
bra_B83F:
C - - - - - 0x00384F 00:B83F: 20 51 B8  JSR sub_B851
C - - - - - 0x003852 00:B842: F0 FA     BEQ bra_B83E_RTS
sub_B844:
C - - - - - 0x003854 00:B844: B9 AF B8  LDA tbl_B8B1 - $02,Y
C - - - - - 0x003857 00:B847: 85 00     STA ram_0000_t22_jmp
C - - - - - 0x003859 00:B849: B9 B0 B8  LDA tbl_B8B1 - $01,Y
C - - - - - 0x00385C 00:B84C: 85 01     STA ram_0000_t22_jmp + $01
C - - - - - 0x00385E 00:B84E: 6C 00 00  JMP (ram_0000_t22_jmp)



sub_B851:
C - - - - - 0x003861 00:B851: 20 41 91  JSR sub_0x009151_0682x_and_0F
C - - - - - 0x003864 00:B854: 0A        ASL
C - - - - - 0x003865 00:B855: A8        TAY
C - - - - - 0x003866 00:B856: 60        RTS



sub_B857:
C - - - - - 0x003867 00:B857: B9 92 B8  LDA tbl_B893 - $01,Y
C - - - - - 0x00386A 00:B85A: 10 07     BPL bra_B863
C - - - - - 0x00386C 00:B85C: 29 7F     AND #$7F
C - - - - - 0x00386E 00:B85E: 85 0A     STA ram_000A_temp
C - - - - - 0x003870 00:B860: 4C 57 89  JMP loc_0x008967
bra_B863:
C - - - - - 0x003873 00:B863: 4C A1 89  JMP loc_0x0089B1



tbl_B866:
- D 1 - - - 0x003876 00:B866: 11        .byte $11   ; 01 
- D 1 - - - 0x003877 00:B867: 40        .byte $40   ; 02 
- D 1 - - - 0x003878 00:B868: 10        .byte $10   ; 03 
- D 1 - - - 0x003879 00:B869: 10        .byte $10   ; 04 
- D 1 - - - 0x00387A 00:B86A: 80        .byte $80   ; 05 
- D 1 - - - 0x00387B 00:B86B: 14        .byte $14   ; 06 
- D 1 - - - 0x00387C 00:B86C: 30        .byte $30   ; 07 
- D 1 - - - 0x00387D 00:B86D: 20        .byte $20   ; 08 
- D 1 - - - 0x00387E 00:B86E: 08        .byte $08   ; 09 
- D 1 - - - 0x00387F 00:B86F: 0A        .byte $0A   ; 0A 
- - - - - - 0x003880 00:B870: 0C        .byte $0C   ; 0B 
- D 1 - - - 0x003881 00:B871: 80        .byte $80   ; 0C 
- D 1 - - - 0x003882 00:B872: 80        .byte $80   ; 0D 
- D 1 - - - 0x003883 00:B873: 04        .byte $04   ; 0E 
- D 1 - - - 0x003884 00:B874: 18        .byte $18   ; 0F 



tbl_B875:
- D 1 - - - 0x003885 00:B875: 14        .byte $14   ; 01 
- D 1 - - - 0x003886 00:B876: 40        .byte $40   ; 02 
- D 1 - - - 0x003887 00:B877: 10        .byte $10   ; 03 
- D 1 - - - 0x003888 00:B878: 20        .byte $20   ; 04 
- D 1 - - - 0x003889 00:B879: E0        .byte $E0   ; 05 
- D 1 - - - 0x00388A 00:B87A: 14        .byte $14   ; 06 
- - - - - - 0x00388B 00:B87B: 30        .byte $30   ; 07 
- D 1 - - - 0x00388C 00:B87C: 40        .byte $40   ; 08 
- D 1 - - - 0x00388D 00:B87D: 08        .byte $08   ; 09 
- D 1 - - - 0x00388E 00:B87E: 0A        .byte $0A   ; 0A 
- - - - - - 0x00388F 00:B87F: 0C        .byte $0C   ; 0B 
- D 1 - - - 0x003890 00:B880: E0        .byte $E0   ; 0C 
- - - - - - 0x003891 00:B881: 80        .byte $80   ; 0D 
- D 1 - - - 0x003892 00:B882: 04        .byte $04   ; 0E 
- D 1 - - - 0x003893 00:B883: 38        .byte $38   ; 0F 



tbl_B884:
- D 1 - - - 0x003894 00:B884: 8B        .byte $8B   ; 01 
- D 1 - - - 0x003895 00:B885: 33        .byte $33   ; 02 
- D 1 - - - 0x003896 00:B886: 66        .byte $66   ; 03 
- D 1 - - - 0x003897 00:B887: 66        .byte $66   ; 04 
- D 1 - - - 0x003898 00:B888: 7C        .byte $7C   ; 05 
- D 1 - - - 0x003899 00:B889: 00        .byte $00   ; 06 
- D 1 - - - 0x00389A 00:B88A: 00        .byte $00   ; 07 
- D 1 - - - 0x00389B 00:B88B: 7C        .byte $7C   ; 08 
- D 1 - - - 0x00389C 00:B88C: 00        .byte $00   ; 09 
- D 1 - - - 0x00389D 00:B88D: FF        .byte $FF   ; 0A 
- - - - - - 0x00389E 00:B88E: 66        .byte $66   ; 0B 
- D 1 - - - 0x00389F 00:B88F: 7C        .byte $7C   ; 0C 
- D 1 - - - 0x0038A0 00:B890: 00        .byte $00   ; 0D 
- D 1 - - - 0x0038A1 00:B891: 00        .byte $00   ; 0E 
- D 1 - - - 0x0038A2 00:B892: 7C        .byte $7C   ; 0F 



tbl_B893:
- D 1 - - - 0x0038A3 00:B893: 32        .byte $32   ; 01 
- D 1 - - - 0x0038A4 00:B894: 33        .byte $33   ; 02 
- D 1 - - - 0x0038A5 00:B895: 83        .byte $83   ; 03 
- D 1 - - - 0x0038A6 00:B896: 81        .byte $81   ; 04 
- D 1 - - - 0x0038A7 00:B897: 82        .byte $82   ; 05 
- D 1 - - - 0x0038A8 00:B898: 13        .byte $13   ; 06 
- D 1 - - - 0x0038A9 00:B899: 34        .byte $34   ; 07 
- D 1 - - - 0x0038AA 00:B89A: 35        .byte $35   ; 08 
- D 1 - - - 0x0038AB 00:B89B: 36        .byte $36   ; 09 
- D 1 - - - 0x0038AC 00:B89C: 37        .byte $37   ; 0A 
- - - - - - 0x0038AD 00:B89D: 38        .byte $38   ; 0B 
- D 1 - - - 0x0038AE 00:B89E: 39        .byte $39   ; 0C 
- D 1 - - - 0x0038AF 00:B89F: 3A        .byte $3A   ; 0D 
- D 1 - - - 0x0038B0 00:B8A0: 3B        .byte $3B   ; 0E 
- D 1 - - - 0x0038B1 00:B8A1: 82        .byte $82   ; 0F 



tbl_B8A2:
- D 1 - - - 0x0038B2 00:B8A2: 01        .byte $01   ; 01 
- D 1 - - - 0x0038B3 00:B8A3: 01        .byte $01   ; 02 
- D 1 - - - 0x0038B4 00:B8A4: 04        .byte $04   ; 03 
- D 1 - - - 0x0038B5 00:B8A5: 03        .byte $03   ; 04 
- D 1 - - - 0x0038B6 00:B8A6: 01        .byte $01   ; 05 
- D 1 - - - 0x0038B7 00:B8A7: 00        .byte $00   ; 06 
- D 1 - - - 0x0038B8 00:B8A8: 02        .byte $02   ; 07 
- D 1 - - - 0x0038B9 00:B8A9: 01        .byte $01   ; 08 
- D 1 - - - 0x0038BA 00:B8AA: 00        .byte $00   ; 09 
- D 1 - - - 0x0038BB 00:B8AB: 01        .byte $01   ; 0A 
- - - - - - 0x0038BC 00:B8AC: 00        .byte $00   ; 0B 
- D 1 - - - 0x0038BD 00:B8AD: 01        .byte $01   ; 0C 
- D 1 - - - 0x0038BE 00:B8AE: 00        .byte $00   ; 0D 
- D 1 - - - 0x0038BF 00:B8AF: 00        .byte $00   ; 0E 
- D 1 - - - 0x0038C0 00:B8B0: 00        .byte $00   ; 0F 



tbl_B8B1:
- D 1 - - - 0x0038C1 00:B8B1: CD 91     .word ofs_020_0x0091DD_02
- - - - - - 0x0038C3 00:B8B3: 31 B3     .word ofs_020_B331_04
- D 1 - - - 0x0038C5 00:B8B5: 52 9A     .word ofs_020_0x009A62_06
- D 1 - - - 0x0038C7 00:B8B7: 35 B9     .word ofs_020_B935_08
- - - - - - 0x0038C9 00:B8B9: 52 9A     .word ofs_020_0x009A62_0A
- D 1 - - - 0x0038CB 00:B8BB: 52 9A     .word ofs_020_0x009A62_0C
- D 1 - - - 0x0038CD 00:B8BD: 73 B3     .word ofs_020_B373_0E
- D 1 - - - 0x0038CF 00:B8BF: CD 91     .word ofs_020_0x0091DD_10
- D 1 - - - 0x0038D1 00:B8C1: 52 9A     .word ofs_020_0x009A62_12
- D 1 - - - 0x0038D3 00:B8C3: 4E B9     .word ofs_020_B94E_14
- - - - - - 0x0038D5 00:B8C5: 52 9A     .word ofs_020_0x009A62_16
- - - - - - 0x0038D7 00:B8C7: CD 91     .word ofs_020_0x0091DD_18
- D 1 - - - 0x0038D9 00:B8C9: 6F B3     .word ofs_020_B36F_1A
- D 1 - - - 0x0038DB 00:B8CB: 25 BA     .word ofs_020_BA25_1C
- D 1 - - - 0x0038DD 00:B8CD: 2D BA     .word ofs_020_BA2D_1E
- D 1 - - - 0x0038DF 00:B8CF: 31 BA     .word ofs_020_BA31_20
- D 1 - - - 0x0038E1 00:B8D1: DC B8     .word ofs_020_B8DC_22



bra_B8D3:
C - - - - - 0x0038E3 00:B8D3: A9 00     LDA #$00
C - - - - - 0x0038E5 00:B8D5: 85 92     STA ram_0092
C - - - - - 0x0038E7 00:B8D7: 85 93     STA ram_0093
C - - - - - 0x0038E9 00:B8D9: 4C 9F 8A  JMP loc_0x008AAF



ofs_020_B8DC_22:
C - - J - - 0x0038EC 00:B8DC: A9 C9     LDA #$C9
C - - - - - 0x0038EE 00:B8DE: 85 0C     STA ram_000C_temp
C - - - - - 0x0038F0 00:B8E0: 20 52 9F  JSR sub_0x009F62
C - - - - - 0x0038F3 00:B8E3: 20 F9 B8  JSR sub_B8F9
C - - - - - 0x0038F6 00:B8E6: 20 72 91  JSR sub_0x009182_06B2x_AND_0F
C - - - - - 0x0038F9 00:B8E9: F0 E8     BEQ bra_B8D3
C - - - - - 0x0038FB 00:B8EB: 20 67 8B  JSR sub_0x008B77
C - - - - - 0x0038FE 00:B8EE: BD 9C 06  LDA ram_069C_obj,X
C - - - - - 0x003901 00:B8F1: 10 03     BPL bra_B8F6
C - - - - - 0x003903 00:B8F3: 4C 7B 8A  JMP loc_0x008A8B
bra_B8F6:
C - - - - - 0x003906 00:B8F6: 4C 82 8A  JMP loc_0x008A92



sub_B8F9:
C - - - - - 0x003909 00:B8F9: 20 78 91  JSR sub_0x009188_stage_AND_01
C - - - - - 0x00390C 00:B8FC: F0 4F     BEQ bra_B94D_RTS
C - - - - - 0x00390E 00:B8FE: A0 00     LDY #$00
loc_B900_loop:
C D 1 - - - 0x003910 00:B900: BD 9C 06  LDA ram_069C_obj,X
C - - - - - 0x003913 00:B903: 29 7F     AND #$7F
C - - - - - 0x003915 00:B905: 85 00     STA ram_0000_temp
C - - - - - 0x003917 00:B907: B9 25 B9  LDA tbl_B925,Y
C - - - - - 0x00391A 00:B90A: F0 41     BEQ bra_B94D_RTS
C - - - - - 0x00391C 00:B90C: C5 00     CMP ram_0000_temp
C - - - - - 0x00391E 00:B90E: F0 04     BEQ bra_B914
C - - - - - 0x003920 00:B910: C8        INY
C - - - - - 0x003921 00:B911: 4C 00 B9  JMP loc_B900_loop
bra_B914:
C - - - - - 0x003924 00:B914: 20 83 B3  JSR sub_B383
C - - - - - 0x003927 00:B917: B9 30 B9  LDA tbl_B930,Y
C - - - - - 0x00392A 00:B91A: 9D 20 07  STA ram_0720_obj,X
C - - - - - 0x00392D 00:B91D: B9 2B B9  LDA tbl_B92B,Y
sub_B920:
C - - - - - 0x003930 00:B920: A0 07     LDY #$07
C - - - - - 0x003932 00:B922: 4C 62 97  JMP loc_0x009772



tbl_B925:
- D 1 - - - 0x003935 00:B925: 7F        .byte $7F   ; 00 
- D 1 - - - 0x003936 00:B926: 78        .byte $78   ; 01 
- D 1 - - - 0x003937 00:B927: 70        .byte $70   ; 02 
- D 1 - - - 0x003938 00:B928: 30        .byte $30   ; 03 
- D 1 - - - 0x003939 00:B929: 38        .byte $38   ; 04 
- D 1 - - - 0x00393A 00:B92A: 00        .byte $00   ; 05 end token



tbl_B92B:
- D 1 - - - 0x00393B 00:B92B: 19        .byte $19   ; 00 
- D 1 - - - 0x00393C 00:B92C: 1A        .byte $1A   ; 01 
- D 1 - - - 0x00393D 00:B92D: 1B        .byte $1B   ; 02 
- D 1 - - - 0x00393E 00:B92E: 1A        .byte $1A   ; 03 
- D 1 - - - 0x00393F 00:B92F: 19        .byte $19   ; 04 



tbl_B930:
- D 1 - - - 0x003940 00:B930: 06        .byte $06   ; 00 
off_B931_04:
- D 1 - - - 0x003941 00:B931: 00        .byte $00   ; 01 
- D 1 - - - 0x003942 00:B932: 00        .byte $00   ; 02 
- D 1 - - - 0x003943 00:B933: 00        .byte $00   ; 03 
- D 1 - - - 0x003944 00:B934: 06        .byte $06   ; 04 



ofs_020_B935_08:
C - - J - - 0x003945 00:B935: 20 7D 91  JSR sub_0x00918D_06B2x_AND_F0
C - - - - - 0x003948 00:B938: 85 0D     STA ram_000D_temp
C - - - - - 0x00394A 00:B93A: 20 51 BA  JSR sub_BA51
C - - - - - 0x00394D 00:B93D: B0 0E     BCS bra_B94D_RTS
C - - - - - 0x00394F 00:B93F: 20 EE 90  JSR sub_0x0090FE
C - - - - - 0x003952 00:B942: 20 E2 91  JSR sub_0x0091F2
C - - - - - 0x003955 00:B945: BD 82 06  LDA ram_0682_obj,X
C - - - - - 0x003958 00:B948: 09 80     ORA #$80
C - - - - - 0x00395A 00:B94A: 9D 82 06  STA ram_0682_obj,X
bra_B94D_RTS:
C - - - - - 0x00395D 00:B94D: 60        RTS



ofs_020_B94E_14:
C - - J - - 0x00395E 00:B94E: BD 9C 06  LDA ram_069C_obj,X
C - - - - - 0x003961 00:B951: 29 7F     AND #$7F
C - - - - - 0x003963 00:B953: D0 F8     BNE bra_B94D_RTS
C - - - - - 0x003965 00:B955: A9 8A     LDA #$8A
C - - - - - 0x003967 00:B957: 9D 9C 06  STA ram_069C_obj,X
C - - - - - 0x00396A 00:B95A: A9 21     LDA #$21
C - - - - - 0x00396C 00:B95C: 20 20 B9  JSR sub_B920
C - - - - - 0x00396F 00:B95F: BD 82 06  LDA ram_0682_obj,X
C - - - - - 0x003972 00:B962: 20 B4 93  JSR sub_0x0093C4_LSRx4_TAY
C - - - - - 0x003975 00:B965: 85 0A     STA ram_000A_temp
C - - - - - 0x003977 00:B967: B9 C5 B9  LDA tbl_B9C5,Y
C - - - - - 0x00397A 00:B96A: 85 0B     STA ram_000B_temp
C - - - - - 0x00397C 00:B96C: 20 1B 84  JSR sub_0x00842B_000A_ASL_TAY
C - - - - - 0x00397F 00:B96F: B9 CB B9  LDA tbl_B9CB,Y
C - - - - - 0x003982 00:B972: 85 00     STA ram_0000_t02_data
C - - - - - 0x003984 00:B974: B9 CC B9  LDA tbl_B9CB + $01,Y
C - - - - - 0x003987 00:B977: 85 01     STA ram_0000_t02_data + $01
C - - - - - 0x003989 00:B979: 20 B1 93  JSR sub_0x0093C1_06B2x_LSRx4_TAY
C - - - - - 0x00398C 00:B97C: C5 0B     CMP ram_000B_temp
C - - - - - 0x00398E 00:B97E: 90 03     BCC bra_B983
C - - - - - 0x003990 00:B980: 4C 52 9A  JMP loc_0x009A62
bra_B983:
C - - - - - 0x003993 00:B983: 0A        ASL
C - - - - - 0x003994 00:B984: A8        TAY
C - - - - - 0x003995 00:B985: B1 00     LDA (ram_0000_t02_data),Y
C - - - - - 0x003997 00:B987: 85 02     STA ram_0002_temp
C - - - - - 0x003999 00:B989: C8        INY
C - - - - - 0x00399A 00:B98A: B1 00     LDA (ram_0000_t02_data),Y
C - - - - - 0x00399C 00:B98C: 85 03     STA ram_0003_temp
C - - - - - 0x00399E 00:B98E: BD 4E 06  LDA ram_obj_pos_X,X
C - - - - - 0x0039A1 00:B991: 18        CLC
C - - - - - 0x0039A2 00:B992: 65 02     ADC ram_0002_temp
C - - - - - 0x0039A4 00:B994: 85 04     STA ram_0004_temp
C - - - - - 0x0039A6 00:B996: 6A        ROR
C - - - - - 0x0039A7 00:B997: 45 02     EOR ram_0002_temp
C - - - - - 0x0039A9 00:B999: 2A        ROL
C - - - - - 0x0039AA 00:B99A: B0 18     BCS bra_B9B4
C - - - - - 0x0039AC 00:B99C: A5 04     LDA ram_0004_temp
C - - - - - 0x0039AE 00:B99E: 9D 4E 06  STA ram_obj_pos_X,X
C - - - - - 0x0039B1 00:B9A1: BD 68 06  LDA ram_obj_pos_Y,X
C - - - - - 0x0039B4 00:B9A4: 18        CLC
C - - - - - 0x0039B5 00:B9A5: 65 03     ADC ram_0003_temp
C - - - - - 0x0039B7 00:B9A7: 85 04     STA ram_0004_temp
C - - - - - 0x0039B9 00:B9A9: 6A        ROR
C - - - - - 0x0039BA 00:B9AA: 45 03     EOR ram_0003_temp
C - - - - - 0x0039BC 00:B9AC: 2A        ROL
C - - - - - 0x0039BD 00:B9AD: B0 05     BCS bra_B9B4
C - - - - - 0x0039BF 00:B9AF: A5 04     LDA ram_0004_temp
C - - - - - 0x0039C1 00:B9B1: 9D 68 06  STA ram_obj_pos_Y,X
bra_B9B4:
C - - - - - 0x0039C4 00:B9B4: BD B2 06  LDA ram_06B2_obj,X
C - - - - - 0x0039C7 00:B9B7: 18        CLC
C - - - - - 0x0039C8 00:B9B8: 69 10     ADC #$10
C - - - - - 0x0039CA 00:B9BA: 9D B2 06  STA ram_06B2_obj,X
C - - - - - 0x0039CD 00:B9BD: 20 83 B3  JSR sub_B383
loc_B9C0:
C D 1 - - - 0x0039D0 00:B9C0: A9 2C     LDA #con_music_2C
C - - - - - 0x0039D2 00:B9C2: 4C D8 95  JMP loc_0x0095E8_play_music



tbl_B9C5:
- D 1 - - - 0x0039D5 00:B9C5: 0F        .byte $0F   ; 00 
- D 1 - - - 0x0039D6 00:B9C6: 0C        .byte $0C   ; 10 
- - - - - - 0x0039D7 00:B9C7: 04        .byte $04   ; 20 
- D 1 - - - 0x0039D8 00:B9C8: 07        .byte $07   ; 30 
- D 1 - - - 0x0039D9 00:B9C9: 00        .byte $00   ; 40 
- D 1 - - - 0x0039DA 00:B9CA: 0C        .byte $0C   ; 50 



tbl_B9CB:
- D 1 - - - 0x0039DB 00:B9CB: D7 B9     .word off_B9D7_00
- D 1 - - - 0x0039DD 00:B9CD: F7 B9     .word off_B9F7_01
- - - - - - 0x0039DF 00:B9CF: 0F BA     .word off_BA0F_02
- D 1 - - - 0x0039E1 00:B9D1: 17 BA     .word off_BA17_03
- D 1 - - - 0x0039E3 00:B9D3: 31 B9     .word off_B931_04
- D 1 - - - 0x0039E5 00:B9D5: F7 B9     .word off_B9F7_05



off_B9D7_00:
- D 1 - I - 0x0039E7 00:B9D7: 10        .byte $10   ; 
- D 1 - I - 0x0039E8 00:B9D8: 00        .byte $00   ; 
- D 1 - I - 0x0039E9 00:B9D9: 20        .byte $20   ; 
- D 1 - I - 0x0039EA 00:B9DA: 00        .byte $00   ; 
- D 1 - I - 0x0039EB 00:B9DB: 20        .byte $20   ; 
- D 1 - I - 0x0039EC 00:B9DC: 00        .byte $00   ; 
- D 1 - I - 0x0039ED 00:B9DD: A0        .byte $A0   ; 
- D 1 - I - 0x0039EE 00:B9DE: 00        .byte $00   ; 
- D 1 - I - 0x0039EF 00:B9DF: E0        .byte $E0   ; 
- D 1 - I - 0x0039F0 00:B9E0: 00        .byte $00   ; 
- D 1 - I - 0x0039F1 00:B9E1: E0        .byte $E0   ; 
- D 1 - I - 0x0039F2 00:B9E2: 00        .byte $00   ; 
- D 1 - I - 0x0039F3 00:B9E3: 28        .byte $28   ; 
- D 1 - I - 0x0039F4 00:B9E4: E0        .byte $E0   ; 
- D 1 - I - 0x0039F5 00:B9E5: E8        .byte $E8   ; 
- D 1 - I - 0x0039F6 00:B9E6: E0        .byte $E0   ; 
- D 1 - I - 0x0039F7 00:B9E7: 40        .byte $40   ; 
- D 1 - I - 0x0039F8 00:B9E8: 10        .byte $10   ; 
- D 1 - I - 0x0039F9 00:B9E9: 28        .byte $28   ; 
- D 1 - I - 0x0039FA 00:B9EA: 10        .byte $10   ; 
- D 1 - I - 0x0039FB 00:B9EB: 18        .byte $18   ; 
- D 1 - I - 0x0039FC 00:B9EC: E0        .byte $E0   ; 
- D 1 - I - 0x0039FD 00:B9ED: 98        .byte $98   ; 
- D 1 - I - 0x0039FE 00:B9EE: 60        .byte $60   ; 
- D 1 - I - 0x0039FF 00:B9EF: E8        .byte $E8   ; 
- D 1 - I - 0x003A00 00:B9F0: 20        .byte $20   ; 
- D 1 - I - 0x003A01 00:B9F1: 40        .byte $40   ; 
- D 1 - I - 0x003A02 00:B9F2: F0        .byte $F0   ; 
- D 1 - I - 0x003A03 00:B9F3: 28        .byte $28   ; 
- D 1 - I - 0x003A04 00:B9F4: F0        .byte $F0   ; 
- - - - - - 0x003A05 00:B9F5: 18        .byte $18   ; 
- - - - - - 0x003A06 00:B9F6: 20        .byte $20   ; 



off_B9F7_01:
off_B9F7_05:
- D 1 - I - 0x003A07 00:B9F7: 10        .byte $10   ; 
- D 1 - I - 0x003A08 00:B9F8: 00        .byte $00   ; 
- D 1 - I - 0x003A09 00:B9F9: 20        .byte $20   ; 
- D 1 - I - 0x003A0A 00:B9FA: 00        .byte $00   ; 
- D 1 - I - 0x003A0B 00:B9FB: C0        .byte $C0   ; 
- D 1 - I - 0x003A0C 00:B9FC: 00        .byte $00   ; 
- D 1 - I - 0x003A0D 00:B9FD: E0        .byte $E0   ; 
- D 1 - I - 0x003A0E 00:B9FE: 00        .byte $00   ; 
- D 1 - I - 0x003A0F 00:B9FF: 30        .byte $30   ; 
- D 1 - I - 0x003A10 00:BA00: F0        .byte $F0   ; 
- D 1 - I - 0x003A11 00:BA01: 20        .byte $20   ; 
- D 1 - I - 0x003A12 00:BA02: F0        .byte $F0   ; 
- D 1 - I - 0x003A13 00:BA03: E0        .byte $E0   ; 
- D 1 - I - 0x003A14 00:BA04: F0        .byte $F0   ; 
- D 1 - I - 0x003A15 00:BA05: E0        .byte $E0   ; 
- D 1 - I - 0x003A16 00:BA06: 10        .byte $10   ; 
- D 1 - I - 0x003A17 00:BA07: 20        .byte $20   ; 
- D 1 - I - 0x003A18 00:BA08: 30        .byte $30   ; 
- D 1 - I - 0x003A19 00:BA09: 20        .byte $20   ; 
- D 1 - I - 0x003A1A 00:BA0A: 10        .byte $10   ; 
- D 1 - I - 0x003A1B 00:BA0B: E0        .byte $E0   ; 
- D 1 - I - 0x003A1C 00:BA0C: 10        .byte $10   ; 
- D 1 - I - 0x003A1D 00:BA0D: E0        .byte $E0   ; 
- D 1 - I - 0x003A1E 00:BA0E: F0        .byte $F0   ; 



off_BA0F_02:
- - - - - - 0x003A1F 00:BA0F: 0E        .byte $0E   ; 
- - - - - - 0x003A20 00:BA10: F2        .byte $F2   ; 
- - - - - - 0x003A21 00:BA11: F8        .byte $F8   ; 
- - - - - - 0x003A22 00:BA12: ED        .byte $ED   ; 
- - - - - - 0x003A23 00:BA13: 08        .byte $08   ; 
- - - - - - 0x003A24 00:BA14: 08        .byte $08   ; 
- - - - - - 0x003A25 00:BA15: F2        .byte $F2   ; 
- - - - - - 0x003A26 00:BA16: 0A        .byte $0A   ; 



off_BA17_03:
- D 1 - I - 0x003A27 00:BA17: 28        .byte $28   ; 
- D 1 - I - 0x003A28 00:BA18: D8        .byte $D8   ; 
- D 1 - I - 0x003A29 00:BA19: E2        .byte $E2   ; 
- D 1 - I - 0x003A2A 00:BA1A: 14        .byte $14   ; 
- D 1 - I - 0x003A2B 00:BA1B: 12        .byte $12   ; 
- D 1 - I - 0x003A2C 00:BA1C: 08        .byte $08   ; 
- D 1 - I - 0x003A2D 00:BA1D: 08        .byte $08   ; 
- D 1 - I - 0x003A2E 00:BA1E: 12        .byte $12   ; 
- D 1 - I - 0x003A2F 00:BA1F: 12        .byte $12   ; 
- D 1 - I - 0x003A30 00:BA20: 1E        .byte $1E   ; 
- D 1 - I - 0x003A31 00:BA21: EE        .byte $EE   ; 
- D 1 - I - 0x003A32 00:BA22: E4        .byte $E4   ; 
- D 1 - I - 0x003A33 00:BA23: F8        .byte $F8   ; 
- D 1 - I - 0x003A34 00:BA24: 28        .byte $28   ; 



ofs_020_BA25_1C:
C - - J - - 0x003A35 00:BA25: A9 08     LDA #$08
bra_BA27:
C - - - - - 0x003A37 00:BA27: 9D 82 06  STA ram_0682_obj,X
C - - - - - 0x003A3A 00:BA2A: 4C DF 91  JMP loc_0x0091EF



ofs_020_BA2D_1E:
C - - J - - 0x003A3D 00:BA2D: A9 05     LDA #$05
C - - - - - 0x003A3F 00:BA2F: D0 F6     BNE bra_BA27    ; jmp



ofs_020_BA31_20:
C - - J - - 0x003A41 00:BA31: 20 19 8E  JSR sub_0x008E29
C - - - - - 0x003A44 00:BA34: BD 68 06  LDA ram_obj_pos_Y,X
C - - - - - 0x003A47 00:BA37: C9 C8     CMP #$C8
C - - - - - 0x003A49 00:BA39: B0 11     BCS bra_BA4C
C - - - - - 0x003A4B 00:BA3B: BD 82 06  LDA ram_0682_obj,X
C - - - - - 0x003A4E 00:BA3E: F0 0A     BEQ bra_BA4A
C - - - - - 0x003A50 00:BA40: DE 9C 06  DEC ram_069C_obj,X
C - - - - - 0x003A53 00:BA43: BD 9C 06  LDA ram_069C_obj,X
C - - - - - 0x003A56 00:BA46: 29 7F     AND #$7F
C - - - - - 0x003A58 00:BA48: F0 05     BEQ bra_BA4F
bra_BA4A:
C - - - - - 0x003A5A 00:BA4A: 18        CLC
C - - - - - 0x003A5B 00:BA4B: 60        RTS
bra_BA4C:
C - - - - - 0x003A5C 00:BA4C: 20 52 9A  JSR sub_0x009A62
bra_BA4F:
C - - - - - 0x003A5F 00:BA4F: 38        SEC
C - - - - - 0x003A60 00:BA50: 60        RTS



sub_BA51:
C - - - - - 0x003A61 00:BA51: A0 00     LDY #$00
C - - - - - 0x003A63 00:BA53: A9 02     LDA #$02
C - - - - - 0x003A65 00:BA55: E0 12     CPX #$12
C - - - - - 0x003A67 00:BA57: B0 04     BCS bra_BA5D
C - - - - - 0x003A69 00:BA59: A0 02     LDY #$02
C - - - - - 0x003A6B 00:BA5B: A9 08     LDA #$08
bra_BA5D:
C - - - - - 0x003A6D 00:BA5D: 85 02     STA ram_0002_temp
bra_BA5F_loop:
C - - - - - 0x003A6F 00:BA5F: B9 82 07  LDA ram_0782_unk,Y
C - - - - - 0x003A72 00:BA62: F0 13     BEQ bra_BA77
C - - - - - 0x003A74 00:BA64: 30 11     BMI bra_BA77
C - - - - - 0x003A76 00:BA66: B9 1A 06  LDA ram_obj_animation_lo,Y
C - - - - - 0x003A79 00:BA69: F0 0C     BEQ bra_BA77
C - - - - - 0x003A7B 00:BA6B: B9 4E 06  LDA ram_obj_pos_X,Y
C - - - - - 0x003A7E 00:BA6E: 85 90     STA ram_0090
C - - - - - 0x003A80 00:BA70: B9 68 06  LDA ram_obj_pos_Y,Y
C - - - - - 0x003A83 00:BA73: 85 91     STA ram_0091
C - - - - - 0x003A85 00:BA75: 18        CLC
C - - - - - 0x003A86 00:BA76: 60        RTS
bra_BA77:
C - - - - - 0x003A87 00:BA77: C8        INY
C - - - - - 0x003A88 00:BA78: C6 02     DEC ram_0002_temp
C - - - - - 0x003A8A 00:BA7A: D0 E3     BNE bra_BA5F_loop
C - - - - - 0x003A8C 00:BA7C: 60        RTS



sub_0x003A8D:
ofs_006_0x003A8D_15:
; con_F3D6_15
C - - - - - 0x003A8D 00:BA7D: A9 00     LDA #$00
C - - - - - 0x003A8F 00:BA7F: 85 1F     STA ram_001F_temp
C - - - - - 0x003A91 00:BA81: 85 19     STA ram_0019_temp
C - - - - - 0x003A93 00:BA83: 85 1B     STA ram_001B_temp
C - - - - - 0x003A95 00:BA85: 85 1C     STA ram_001C_temp
C - - - - - 0x003A97 00:BA87: 85 1D     STA ram_001D_temp
C - - - - - 0x003A99 00:BA89: 85 69     STA ram_0069
C - - - - - 0x003A9B 00:BA8B: 85 6A     STA ram_006A
C - - - - - 0x003A9D 00:BA8D: 85 6B     STA ram_006B
C - - - - - 0x003A9F 00:BA8F: 85 6C     STA ram_006C
C - - - - - 0x003AA1 00:BA91: A5 BD     LDA ram_00BD
C - - - - - 0x003AA3 00:BA93: D0 0A     BNE bra_BA9F
C - - - - - 0x003AA5 00:BA95: A5 D5     LDA ram_00D5
C - - - - - 0x003AA7 00:BA97: 85 19     STA ram_0019_temp
C - - - - - 0x003AA9 00:BA99: 05 D4     ORA ram_00D4
C - - - - - 0x003AAB 00:BA9B: F0 02     BEQ bra_BA9F
C - - - - - 0x003AAD 00:BA9D: E6 1F     INC ram_001F_temp
bra_BA9F:
C - - - - - 0x003AAF 00:BA9F: A5 D3     LDA ram_00D3
C - - - - - 0x003AB1 00:BAA1: 85 1B     STA ram_001B_temp
C - - - - - 0x003AB3 00:BAA3: 05 D2     ORA ram_00D2
C - - - - - 0x003AB5 00:BAA5: F0 04     BEQ bra_BAAB
C - - - - - 0x003AB7 00:BAA7: E6 1F     INC ram_001F_temp
C - - - - - 0x003AB9 00:BAA9: E6 1F     INC ram_001F_temp
bra_BAAB:
C - - - - - 0x003ABB 00:BAAB: A5 D4     LDA ram_00D4
C - - - - - 0x003ABD 00:BAAD: 85 18     STA ram_0018_temp
C - - - - - 0x003ABF 00:BAAF: A5 D2     LDA ram_00D2
C - - - - - 0x003AC1 00:BAB1: 85 1A     STA ram_001A_temp
C - - - - - 0x003AC3 00:BAB3: A2 00     LDX #$00
loc_BAB5_loop:
C D 1 - - - 0x003AC5 00:BAB5: BD 82 07  LDA ram_0782_unk,X
C - - - - - 0x003AC8 00:BAB8: D0 03     BNE bra_BABD
C - - - - - 0x003ACA 00:BABA: 4C 91 BB  JMP loc_BB91
bra_BABD:
C - - - - - 0x003ACD 00:BABD: BD 4E 06  LDA ram_obj_pos_X,X
C - - - - - 0x003AD0 00:BAC0: 18        CLC
C - - - - - 0x003AD1 00:BAC1: 69 10     ADC #$10
C - - - - - 0x003AD3 00:BAC3: C9 21     CMP #$21
C - - - - - 0x003AD5 00:BAC5: B0 02     BCS bra_BAC9
C - - - - - 0x003AD7 00:BAC7: E6 1C     INC ram_001C_temp
bra_BAC9:
C - - - - - 0x003AD9 00:BAC9: BD 68 06  LDA ram_obj_pos_Y,X
C - - - - - 0x003ADC 00:BACC: 18        CLC
C - - - - - 0x003ADD 00:BACD: 69 40     ADC #$40
C - - - - - 0x003ADF 00:BACF: C9 50     CMP #$50
C - - - - - 0x003AE1 00:BAD1: B0 02     BCS bra_BAD5
C - - - - - 0x003AE3 00:BAD3: E6 1D     INC ram_001D_temp
bra_BAD5:
C - - - - - 0x003AE5 00:BAD5: A9 01     LDA #$01
C - - - - - 0x003AE7 00:BAD7: 20 94 BF  JSR sub_BF94
C - - - - - 0x003AEA 00:BADA: A5 00     LDA ram_0000_temp
C - - - - - 0x003AEC 00:BADC: 85 03     STA ram_0003_temp
C - - - - - 0x003AEE 00:BADE: A9 00     LDA #$00
C - - - - - 0x003AF0 00:BAE0: 20 94 BF  JSR sub_BF94
C - - - - - 0x003AF3 00:BAE3: 20 89 BF  JSR sub_BF89
C - - - - - 0x003AF6 00:BAE6: B0 41     BCS bra_BB29
C - - - - - 0x003AF8 00:BAE8: A5 00     LDA ram_0000_temp
C - - - - - 0x003AFA 00:BAEA: F0 3D     BEQ bra_BB29
C - - - - - 0x003AFC 00:BAEC: A5 D0     LDA ram_00D0
C - - - - - 0x003AFE 00:BAEE: D0 39     BNE bra_BB29
C - - - - - 0x003B00 00:BAF0: A5 BD     LDA ram_00BD
C - - - - - 0x003B02 00:BAF2: D0 35     BNE bra_BB29
C - - - - - 0x003B04 00:BAF4: A9 00     LDA #$00
C - - - - - 0x003B06 00:BAF6: 85 00     STA ram_0000_temp
C - - - - - 0x003B08 00:BAF8: A5 19     LDA ram_0019_temp
C - - - - - 0x003B0A 00:BAFA: 10 02     BPL bra_BAFE
C - - - - - 0x003B0C 00:BAFC: C6 00     DEC ram_0000_temp
bra_BAFE:
C - - - - - 0x003B0E 00:BAFE: BD E6 07  LDA ram_07E6,X
C - - - - - 0x003B11 00:BB01: 18        CLC
C - - - - - 0x003B12 00:BB02: 65 18     ADC ram_0018_temp
C - - - - - 0x003B14 00:BB04: 85 18     STA ram_0018_temp
C - - - - - 0x003B16 00:BB06: BD E8 07  LDA ram_07E8,X
C - - - - - 0x003B19 00:BB09: 65 19     ADC ram_0019_temp
C - - - - - 0x003B1B 00:BB0B: 85 19     STA ram_0019_temp
C - - - - - 0x003B1D 00:BB0D: 10 08     BPL bra_BB17
C - - - - - 0x003B1F 00:BB0F: C9 FE     CMP #$FE
C - - - - - 0x003B21 00:BB11: B0 10     BCS bra_BB23
C - - - - - 0x003B23 00:BB13: A9 FE     LDA #$FE
C - - - - - 0x003B25 00:BB15: D0 06     BNE bra_BB1D    ; jmp
bra_BB17:
C - - - - - 0x003B27 00:BB17: C9 02     CMP #$02
C - - - - - 0x003B29 00:BB19: 90 08     BCC bra_BB23
C - - - - - 0x003B2B 00:BB1B: A9 02     LDA #$02
bra_BB1D:
C - - - - - 0x003B2D 00:BB1D: 85 19     STA ram_0019_temp
C - - - - - 0x003B2F 00:BB1F: A9 00     LDA #$00
C - - - - - 0x003B31 00:BB21: 85 18     STA ram_0018_temp
bra_BB23:
C - - - - - 0x003B33 00:BB23: A9 01     LDA #$01
C - - - - - 0x003B35 00:BB25: 05 1F     ORA ram_001F_temp
C - - - - - 0x003B37 00:BB27: 85 1F     STA ram_001F_temp
bra_BB29:
C - - - - - 0x003B39 00:BB29: A5 75     LDA ram_stage
C - - - - - 0x003B3B 00:BB2B: F0 64     BEQ bra_BB91
C - - - - - 0x003B3D 00:BB2D: 20 89 BF  JSR sub_BF89
C - - - - - 0x003B40 00:BB30: B0 5F     BCS bra_BB91
C - - - - - 0x003B42 00:BB32: A5 04     LDA ram_0004_temp
C - - - - - 0x003B44 00:BB34: 0A        ASL
C - - - - - 0x003B45 00:BB35: 0A        ASL
C - - - - - 0x003B46 00:BB36: A8        TAY
C - - - - - 0x003B47 00:BB37: A5 03     LDA ram_0003_temp
C - - - - - 0x003B49 00:BB39: F0 56     BEQ bra_BB91
C - - - - - 0x003B4B 00:BB3B: A5 D0     LDA ram_00D0
C - - - - - 0x003B4D 00:BB3D: D0 52     BNE bra_BB91
C - - - - - 0x003B4F 00:BB3F: AD 59 03  LDA ram_0359
C - - - - - 0x003B52 00:BB42: D0 4D     BNE bra_BB91
C - - - - - 0x003B54 00:BB44: A9 04     LDA #$04
C - - - - - 0x003B56 00:BB46: 85 1E     STA ram_001E_temp
C - - - - - 0x003B58 00:BB48: 20 8F F6  JSR sub_0x01F69F
C - - - - - 0x003B5B 00:BB4B: F0 04     BEQ bra_BB51
C - - - - - 0x003B5D 00:BB4D: A9 02     LDA #$02
C - - - - - 0x003B5F 00:BB4F: 85 1E     STA ram_001E_temp
bra_BB51:
C - - - - - 0x003B61 00:BB51: A5 C5     LDA ram_00C5
C - - - - - 0x003B63 00:BB53: F0 04     BEQ bra_BB59
C - - - - - 0x003B65 00:BB55: A9 01     LDA #$01
C - - - - - 0x003B67 00:BB57: 85 1E     STA ram_001E_temp
bra_BB59:
C - - - - - 0x003B69 00:BB59: A5 1A     LDA ram_001A_temp
C - - - - - 0x003B6B 00:BB5B: 18        CLC
C - - - - - 0x003B6C 00:BB5C: 7D EA 07  ADC ram_07EA,X
C - - - - - 0x003B6F 00:BB5F: 85 1A     STA ram_001A_temp
C - - - - - 0x003B71 00:BB61: A5 1B     LDA ram_001B_temp
C - - - - - 0x003B73 00:BB63: 7D EC 07  ADC ram_07EC,X
C - - - - - 0x003B76 00:BB66: 85 1B     STA ram_001B_temp
C - - - - - 0x003B78 00:BB68: 10 13     BPL bra_BB7D
C - - - - - 0x003B7A 00:BB6A: A5 1E     LDA ram_001E_temp
C - - - - - 0x003B7C 00:BB6C: 49 FF     EOR #$FF
C - - - - - 0x003B7E 00:BB6E: 18        CLC
C - - - - - 0x003B7F 00:BB6F: 69 01     ADC #$01
C - - - - - 0x003B81 00:BB71: 85 1E     STA ram_001E_temp
C - - - - - 0x003B83 00:BB73: A5 1B     LDA ram_001B_temp
C - - - - - 0x003B85 00:BB75: C5 1E     CMP ram_001E_temp
C - - - - - 0x003B87 00:BB77: B0 12     BCS bra_BB8B
C - - - - - 0x003B89 00:BB79: A9 01     LDA #$01
C - - - - - 0x003B8B 00:BB7B: D0 08     BNE bra_BB85    ; jmp
bra_BB7D:
C - - - - - 0x003B8D 00:BB7D: C5 1E     CMP ram_001E_temp
C - - - - - 0x003B8F 00:BB7F: 90 0A     BCC bra_BB8B
- - - - - - 0x003B91 00:BB81: C6 1E     DEC ram_001E_temp
- - - - - - 0x003B93 00:BB83: A9 FF     LDA #$FF
bra_BB85:
C - - - - - 0x003B95 00:BB85: 85 1A     STA ram_001A_temp
C - - - - - 0x003B97 00:BB87: A5 1E     LDA ram_001E_temp
C - - - - - 0x003B99 00:BB89: 85 1B     STA ram_001B_temp
bra_BB8B:
C - - - - - 0x003B9B 00:BB8B: A9 02     LDA #$02
C - - - - - 0x003B9D 00:BB8D: 05 1F     ORA ram_001F_temp
C - - - - - 0x003B9F 00:BB8F: 85 1F     STA ram_001F_temp
bra_BB91:
loc_BB91:
C D 1 - - - 0x003BA1 00:BB91: E8        INX
C - - - - - 0x003BA2 00:BB92: E0 02     CPX #$02
C - - - - - 0x003BA4 00:BB94: F0 17     BEQ bra_BBAD
C - - - - - 0x003BA6 00:BB96: 4C B5 BA  JMP loc_BAB5_loop



sub_BB99:
C - - - - - 0x003BA9 00:BB99: BD 82 07  LDA ram_0782_unk,X
C - - - - - 0x003BAC 00:BB9C: F0 0D     BEQ bra_BBAB
C - - - - - 0x003BAE 00:BB9E: 20 83 BF  JSR sub_BF83
C - - - - - 0x003BB1 00:BBA1: B9 7F 00  LDA ram_player_stats,Y
C - - - - - 0x003BB4 00:BBA4: 29 F0     AND #$F0
C - - - - - 0x003BB6 00:BBA6: F0 03     BEQ bra_BBAB
C - - - - - 0x003BB8 00:BBA8: C9 30     CMP #$30
C - - - - - 0x003BBA 00:BBAA: 60        RTS
bra_BBAB:
C - - - - - 0x003BBB 00:BBAB: 38        SEC
C - - - - - 0x003BBC 00:BBAC: 60        RTS
bra_BBAD:
C - - - - - 0x003BBD 00:BBAD: A2 00     LDX #$00
C - - - - - 0x003BBF 00:BBAF: 20 99 BB  JSR sub_BB99
C - - - - - 0x003BC2 00:BBB2: B0 06     BCS bra_BBBA
C - - - - - 0x003BC4 00:BBB4: E8        INX
C - - - - - 0x003BC5 00:BBB5: 20 99 BB  JSR sub_BB99
C - - - - - 0x003BC8 00:BBB8: 90 08     BCC bra_BBC2
bra_BBBA:
C - - - - - 0x003BCA 00:BBBA: A9 00     LDA #$00
C - - - - - 0x003BCC 00:BBBC: 85 1C     STA ram_001C_temp
C - - - - - 0x003BCE 00:BBBE: 85 1D     STA ram_001D_temp
C - - - - - 0x003BD0 00:BBC0: F0 26     BEQ bra_BBE8
bra_BBC2:
C - - - - - 0x003BD2 00:BBC2: AD 4E 06  LDA ram_obj_pos_X
C - - - - - 0x003BD5 00:BBC5: 38        SEC
C - - - - - 0x003BD6 00:BBC6: ED 4F 06  SBC ram_obj_pos_X + $01
C - - - - - 0x003BD9 00:BBC9: B0 02     BCS bra_BBCD
C - - - - - 0x003BDB 00:BBCB: 49 FF     EOR #$FF
bra_BBCD:
C - - - - - 0x003BDD 00:BBCD: C9 80     CMP #$80
C - - - - - 0x003BDF 00:BBCF: B0 04     BCS bra_BBD5
C - - - - - 0x003BE1 00:BBD1: A9 00     LDA #$00
C - - - - - 0x003BE3 00:BBD3: 85 1C     STA ram_001C_temp
bra_BBD5:
C - - - - - 0x003BE5 00:BBD5: AD 68 06  LDA ram_obj_pos_Y
C - - - - - 0x003BE8 00:BBD8: 38        SEC
C - - - - - 0x003BE9 00:BBD9: ED 69 06  SBC ram_obj_pos_Y + $01
C - - - - - 0x003BEC 00:BBDC: B0 02     BCS bra_BBE0
C - - - - - 0x003BEE 00:BBDE: 49 FF     EOR #$FF
bra_BBE0:
C - - - - - 0x003BF0 00:BBE0: C9 50     CMP #$50
C - - - - - 0x003BF2 00:BBE2: B0 04     BCS bra_BBE8
C - - - - - 0x003BF4 00:BBE4: A9 00     LDA #$00
C - - - - - 0x003BF6 00:BBE6: 85 1D     STA ram_001D_temp
bra_BBE8:
C - - - - - 0x003BF8 00:BBE8: AD 5B 03  LDA ram_035B
C - - - - - 0x003BFB 00:BBEB: F0 1D     BEQ bra_BC0A
C - - - - - 0x003BFD 00:BBED: A5 75     LDA ram_stage
C - - - - - 0x003BFF 00:BBEF: F0 16     BEQ bra_BC07
C - - - - - 0x003C01 00:BBF1: 29 01     AND #$01
C - - - - - 0x003C03 00:BBF3: D0 12     BNE bra_BC07
C - - - - - 0x003C05 00:BBF5: AD AA 07  LDA ram_07AA_unk
C - - - - - 0x003C08 00:BBF8: 0D AB 07  ORA ram_07AA_unk + $01
C - - - - - 0x003C0B 00:BBFB: 29 40     AND #$40
C - - - - - 0x003C0D 00:BBFD: F0 08     BEQ bra_BC07
C - - - - - 0x003C0F 00:BBFF: A9 00     LDA #$00
C - - - - - 0x003C11 00:BC01: 85 18     STA ram_0018_temp
C - - - - - 0x003C13 00:BC03: 85 19     STA ram_0019_temp
C - - - - - 0x003C15 00:BC05: F0 03     BEQ bra_BC0A    ; jmp
bra_BC07:
C - - - - - 0x003C17 00:BC07: 4C E0 BC  JMP loc_BCE0
bra_BC0A:
C - - - - - 0x003C1A 00:BC0A: A5 1C     LDA ram_001C_temp
C - - - - - 0x003C1C 00:BC0C: D0 57     BNE bra_BC65
C - - - - - 0x003C1E 00:BC0E: A5 1F     LDA ram_001F_temp
C - - - - - 0x003C20 00:BC10: 29 01     AND #$01
C - - - - - 0x003C22 00:BC12: F0 51     BEQ bra_BC65
C - - - - - 0x003C24 00:BC14: A9 00     LDA #$00
C - - - - - 0x003C26 00:BC16: 85 13     STA ram_0013_temp
C - - - - - 0x003C28 00:BC18: A5 19     LDA ram_0019_temp
C - - - - - 0x003C2A 00:BC1A: 10 04     BPL bra_BC20
C - - - - - 0x003C2C 00:BC1C: A9 FF     LDA #$FF
C - - - - - 0x003C2E 00:BC1E: 85 13     STA ram_0013_temp
bra_BC20:
C - - - - - 0x003C30 00:BC20: A5 18     LDA ram_0018_temp
C - - - - - 0x003C32 00:BC22: 18        CLC
C - - - - - 0x003C33 00:BC23: 65 62     ADC ram_0062
C - - - - - 0x003C35 00:BC25: 85 14     STA ram_0014_temp
C - - - - - 0x003C37 00:BC27: A5 19     LDA ram_0019_temp
C - - - - - 0x003C39 00:BC29: 65 61     ADC ram_0061
C - - - - - 0x003C3B 00:BC2B: 85 15     STA ram_0015_temp
C - - - - - 0x003C3D 00:BC2D: A5 13     LDA ram_0013_temp
C - - - - - 0x003C3F 00:BC2F: 65 60     ADC ram_0060
C - - - - - 0x003C41 00:BC31: 85 16     STA ram_0016_temp
C - - - - - 0x003C43 00:BC33: 85 0A     STA ram_000A_temp
C - - - - - 0x003C45 00:BC35: 20 21 BF  JSR sub_BF21
C - - - - - 0x003C48 00:BC38: 90 2B     BCC bra_BC65
C - - - - - 0x003C4A 00:BC3A: A4 0D     LDY ram_000D_temp
C - - - - - 0x003C4C 00:BC3C: C8        INY
C - - - - - 0x003C4D 00:BC3D: 31 00     AND (ram_0000_t04_data),Y
C - - - - - 0x003C4F 00:BC3F: D0 27     BNE bra_BC68
C - - - - - 0x003C51 00:BC41: A5 0A     LDA ram_000A_temp
C - - - - - 0x003C53 00:BC43: 30 23     BMI bra_BC68
C - - - - - 0x003C55 00:BC45: A5 16     LDA ram_0016_temp
C - - - - - 0x003C57 00:BC47: 30 1F     BMI bra_BC68
C - - - - - 0x003C59 00:BC49: 20 F3 BD  JSR sub_BDF3
C - - - - - 0x003C5C 00:BC4C: 90 1A     BCC bra_BC68
C - - - - - 0x003C5E 00:BC4E: A5 18     LDA ram_0018_temp
C - - - - - 0x003C60 00:BC50: 85 6A     STA ram_006A
C - - - - - 0x003C62 00:BC52: A5 19     LDA ram_0019_temp
C - - - - - 0x003C64 00:BC54: 85 69     STA ram_0069
C - - - - - 0x003C66 00:BC56: A5 14     LDA ram_0014_temp
C - - - - - 0x003C68 00:BC58: 85 62     STA ram_0062
C - - - - - 0x003C6A 00:BC5A: A5 15     LDA ram_0015_temp
C - - - - - 0x003C6C 00:BC5C: 85 61     STA ram_0061
C - - - - - 0x003C6E 00:BC5E: A5 16     LDA ram_0016_temp
C - - - - - 0x003C70 00:BC60: 85 60     STA ram_0060
C - - - - - 0x003C72 00:BC62: 4C 68 BC  JMP loc_BC68
bra_BC65:
C - - - - - 0x003C75 00:BC65: 20 3C BF  JSR sub_BF3C
bra_BC68:
loc_BC68:
C D 1 - - - 0x003C78 00:BC68: A5 1D     LDA ram_001D_temp
C - - - - - 0x003C7A 00:BC6A: D0 74     BNE bra_BCE0
C - - - - - 0x003C7C 00:BC6C: A5 1F     LDA ram_001F_temp
C - - - - - 0x003C7E 00:BC6E: 29 02     AND #$02
C - - - - - 0x003C80 00:BC70: F0 6E     BEQ bra_BCE0
C - - - - - 0x003C82 00:BC72: A5 0F     LDA ram_000F_temp
C - - - - - 0x003C84 00:BC74: 85 17     STA ram_0017_temp
C - - - - - 0x003C86 00:BC76: A9 00     LDA #$00
C - - - - - 0x003C88 00:BC78: 85 13     STA ram_0013_temp
C - - - - - 0x003C8A 00:BC7A: A5 1B     LDA ram_001B_temp
C - - - - - 0x003C8C 00:BC7C: 10 02     BPL bra_BC80
C - - - - - 0x003C8E 00:BC7E: C6 13     DEC ram_0013_temp
bra_BC80:
C - - - - - 0x003C90 00:BC80: A5 1A     LDA ram_001A_temp
C - - - - - 0x003C92 00:BC82: 18        CLC
C - - - - - 0x003C93 00:BC83: 65 65     ADC ram_0065
C - - - - - 0x003C95 00:BC85: 85 14     STA ram_0014_temp
C - - - - - 0x003C97 00:BC87: A5 1B     LDA ram_001B_temp
C - - - - - 0x003C99 00:BC89: 65 64     ADC ram_0064
C - - - - - 0x003C9B 00:BC8B: 85 15     STA ram_0015_temp
C - - - - - 0x003C9D 00:BC8D: A5 13     LDA ram_0013_temp
C - - - - - 0x003C9F 00:BC8F: 65 63     ADC ram_0063
C - - - - - 0x003CA1 00:BC91: 85 16     STA ram_0016_temp
C - - - - - 0x003CA3 00:BC93: 20 DE BE  JSR sub_BEDE
C - - - - - 0x003CA6 00:BC96: 90 48     BCC bra_BCE0
C - - - - - 0x003CA8 00:BC98: A9 00     LDA #$00
C - - - - - 0x003CAA 00:BC9A: 85 0C     STA ram_000C_temp
C - - - - - 0x003CAC 00:BC9C: A5 11     LDA ram_0011_temp
C - - - - - 0x003CAE 00:BC9E: 38        SEC
C - - - - - 0x003CAF 00:BC9F: E5 17     SBC ram_0017_temp
C - - - - - 0x003CB1 00:BCA1: F0 1C     BEQ bra_BCBF
C - - - - - 0x003CB3 00:BCA3: 10 04     BPL bra_BCA9
C - - - - - 0x003CB5 00:BCA5: A9 00     LDA #$00
C - - - - - 0x003CB7 00:BCA7: 85 0B     STA ram_000B_temp
bra_BCA9:
C - - - - - 0x003CB9 00:BCA9: A5 00     LDA ram_0000_temp
C - - - - - 0x003CBB 00:BCAB: 18        CLC
C - - - - - 0x003CBC 00:BCAC: 65 0B     ADC ram_000B_temp
C - - - - - 0x003CBE 00:BCAE: 85 00     STA ram_0000_t05_data
C - - - - - 0x003CC0 00:BCB0: A5 01     LDA ram_0001_temp
C - - - - - 0x003CC2 00:BCB2: 65 0C     ADC ram_000C_temp
C - - - - - 0x003CC4 00:BCB4: 85 01     STA ram_0000_t05_data + $01
C - - - - - 0x003CC6 00:BCB6: A5 0E     LDA ram_000E_temp
C - - - - - 0x003CC8 00:BCB8: A4 0D     LDY ram_000D_temp
C - - - - - 0x003CCA 00:BCBA: C8        INY
C - - - - - 0x003CCB 00:BCBB: 31 00     AND (ram_0000_t05_data),Y
C - - - - - 0x003CCD 00:BCBD: D0 21     BNE bra_BCE0
bra_BCBF:
C - - - - - 0x003CCF 00:BCBF: A5 0A     LDA ram_000A_temp
C - - - - - 0x003CD1 00:BCC1: 30 1D     BMI bra_BCE0
C - - - - - 0x003CD3 00:BCC3: A5 16     LDA ram_0016_temp
C - - - - - 0x003CD5 00:BCC5: 30 19     BMI bra_BCE0
C - - - - - 0x003CD7 00:BCC7: 20 85 BD  JSR sub_BD85
C - - - - - 0x003CDA 00:BCCA: 90 14     BCC bra_BCE0
C - - - - - 0x003CDC 00:BCCC: A5 1A     LDA ram_001A_temp
C - - - - - 0x003CDE 00:BCCE: 85 6C     STA ram_006C
C - - - - - 0x003CE0 00:BCD0: A5 1B     LDA ram_001B_temp
C - - - - - 0x003CE2 00:BCD2: 85 6B     STA ram_006B
C - - - - - 0x003CE4 00:BCD4: A5 14     LDA ram_0014_temp
C - - - - - 0x003CE6 00:BCD6: 85 65     STA ram_0065
C - - - - - 0x003CE8 00:BCD8: A5 15     LDA ram_0015_temp
C - - - - - 0x003CEA 00:BCDA: 85 64     STA ram_0064
C - - - - - 0x003CEC 00:BCDC: A5 16     LDA ram_0016_temp
C - - - - - 0x003CEE 00:BCDE: 85 63     STA ram_0063
bra_BCE0:
loc_BCE0:
C D 1 - - - 0x003CF0 00:BCE0: A2 00     LDX #$00
loc_BCE2:
C D 1 - - - 0x003CF2 00:BCE2: BD 82 07  LDA ram_0782_unk,X
C - - - - - 0x003CF5 00:BCE5: D0 03     BNE bra_BCEA
C - - - - - 0x003CF7 00:BCE7: 4C 7D BD  JMP loc_BD7D
bra_BCEA:
C - - - - - 0x003CFA 00:BCEA: BD E6 07  LDA ram_07E6,X
C - - - - - 0x003CFD 00:BCED: 38        SEC
C - - - - - 0x003CFE 00:BCEE: E5 6A     SBC ram_006A
C - - - - - 0x003D00 00:BCF0: 85 00     STA ram_0000_temp
C - - - - - 0x003D02 00:BCF2: BD E8 07  LDA ram_07E8,X
C - - - - - 0x003D05 00:BCF5: E5 69     SBC ram_0069
C - - - - - 0x003D07 00:BCF7: 85 01     STA ram_0001_temp
C - - - - - 0x003D09 00:BCF9: 20 89 BF  JSR sub_BF89
C - - - - - 0x003D0C 00:BCFC: B0 15     BCS bra_BD13
C - - - - - 0x003D0E 00:BCFE: BD 4E 06  LDA ram_obj_pos_X,X
C - - - - - 0x003D11 00:BD01: C9 10     CMP #$10
C - - - - - 0x003D13 00:BD03: B0 06     BCS bra_BD0B
C - - - - - 0x003D15 00:BD05: A5 01     LDA ram_0001_temp
C - - - - - 0x003D17 00:BD07: 10 0A     BPL bra_BD13
C - - - - - 0x003D19 00:BD09: 30 26     BMI bra_BD31
bra_BD0B:
C - - - - - 0x003D1B 00:BD0B: C9 F0     CMP #$F0
C - - - - - 0x003D1D 00:BD0D: 90 04     BCC bra_BD13
C - - - - - 0x003D1F 00:BD0F: A5 01     LDA ram_0001_temp
C - - - - - 0x003D21 00:BD11: 10 1E     BPL bra_BD31
bra_BD13:
C - - - - - 0x003D23 00:BD13: BD E6 07  LDA ram_07E6,X
C - - - - - 0x003D26 00:BD16: 1D E8 07  ORA ram_07E8,X
C - - - - - 0x003D29 00:BD19: D0 05     BNE bra_BD20
C - - - - - 0x003D2B 00:BD1B: A5 62     LDA ram_0062
C - - - - - 0x003D2D 00:BD1D: 9D C8 06  STA ram_obj_spd_X,X
bra_BD20:
C - - - - - 0x003D30 00:BD20: A5 00     LDA ram_0000_temp
C - - - - - 0x003D32 00:BD22: 18        CLC
C - - - - - 0x003D33 00:BD23: 7D C8 06  ADC ram_obj_spd_X,X
C - - - - - 0x003D36 00:BD26: 9D C8 06  STA ram_obj_spd_X,X
C - - - - - 0x003D39 00:BD29: A5 01     LDA ram_0001_temp
C - - - - - 0x003D3B 00:BD2B: 7D 4E 06  ADC ram_obj_pos_X,X
C - - - - - 0x003D3E 00:BD2E: 9D 4E 06  STA ram_obj_pos_X,X
bra_BD31:
C - - - - - 0x003D41 00:BD31: BD EA 07  LDA ram_07EA,X
C - - - - - 0x003D44 00:BD34: 38        SEC
C - - - - - 0x003D45 00:BD35: E5 6C     SBC ram_006C
C - - - - - 0x003D47 00:BD37: 85 02     STA ram_0002_temp
C - - - - - 0x003D49 00:BD39: BD EC 07  LDA ram_07EC,X
C - - - - - 0x003D4C 00:BD3C: E5 6B     SBC ram_006B
C - - - - - 0x003D4E 00:BD3E: 85 03     STA ram_0003_temp
C - - - - - 0x003D50 00:BD40: 20 89 BF  JSR sub_BF89
C - - - - - 0x003D53 00:BD43: B0 1A     BCS bra_BD5F
C - - - - - 0x003D55 00:BD45: 20 19 BE  JSR sub_BE19
C - - - - - 0x003D58 00:BD48: B0 15     BCS bra_BD5F
C - - - - - 0x003D5A 00:BD4A: BD 68 06  LDA ram_obj_pos_Y,X
C - - - - - 0x003D5D 00:BD4D: C9 10     CMP #$10
C - - - - - 0x003D5F 00:BD4F: B0 06     BCS bra_BD57
C - - - - - 0x003D61 00:BD51: A5 03     LDA ram_0003_temp
C - - - - - 0x003D63 00:BD53: 10 0A     BPL bra_BD5F
- - - - - - 0x003D65 00:BD55: 30 26     BMI bra_BD7D
bra_BD57:
C - - - - - 0x003D67 00:BD57: C9 C0     CMP #$C0
C - - - - - 0x003D69 00:BD59: 90 04     BCC bra_BD5F
C - - - - - 0x003D6B 00:BD5B: A5 03     LDA ram_0003_temp
C - - - - - 0x003D6D 00:BD5D: 10 1E     BPL bra_BD7D
bra_BD5F:
C - - - - - 0x003D6F 00:BD5F: BD EA 07  LDA ram_07EA,X
C - - - - - 0x003D72 00:BD62: 1D EC 07  ORA ram_07EC,X
C - - - - - 0x003D75 00:BD65: D0 05     BNE bra_BD6C
C - - - - - 0x003D77 00:BD67: A5 65     LDA ram_0065
C - - - - - 0x003D79 00:BD69: 9D DE 06  STA ram_obj_spd_Y,X
bra_BD6C:
C - - - - - 0x003D7C 00:BD6C: A5 02     LDA ram_0002_temp
C - - - - - 0x003D7E 00:BD6E: 18        CLC
C - - - - - 0x003D7F 00:BD6F: 7D DE 06  ADC ram_obj_spd_Y,X
C - - - - - 0x003D82 00:BD72: 9D DE 06  STA ram_obj_spd_Y,X
C - - - - - 0x003D85 00:BD75: A5 03     LDA ram_0003_temp
C - - - - - 0x003D87 00:BD77: 7D 68 06  ADC ram_obj_pos_Y,X
C - - - - - 0x003D8A 00:BD7A: 9D 68 06  STA ram_obj_pos_Y,X
bra_BD7D:
loc_BD7D:
C D 1 - - - 0x003D8D 00:BD7D: E8        INX
C - - - - - 0x003D8E 00:BD7E: E0 02     CPX #$02
C - - - - - 0x003D90 00:BD80: B0 56     BCS bra_BDD8_RTS
C - - - - - 0x003D92 00:BD82: 4C E2 BC  JMP loc_BCE2



sub_BD85:
C - - - - - 0x003D95 00:BD85: A0 02     LDY #$02
C - - - - - 0x003D97 00:BD87: A5 1B     LDA ram_001B_temp
C - - - - - 0x003D99 00:BD89: 10 01     BPL bra_BD8C
C - - - - - 0x003D9B 00:BD8B: C8        INY
bra_BD8C:
C - - - - - 0x003D9C 00:BD8C: A5 15     LDA ram_0015_temp
C - - - - - 0x003D9E 00:BD8E: 29 F8     AND #$F8
C - - - - - 0x003DA0 00:BD90: CD F6 03  CMP ram_03F6
C - - - - - 0x003DA3 00:BD93: F0 1B     BEQ bra_BDB0
loc_BD95:
C D 1 - - - 0x003DA5 00:BD95: A2 03     LDX #$03
C - - - - - 0x003DA7 00:BD97: 20 8F F6  JSR sub_0x01F69F
C - - - - - 0x003DAA 00:BD9A: F0 02     BEQ bra_BD9E
C - - - - - 0x003DAC 00:BD9C: A2 0F     LDX #$0F
bra_BD9E:
C - - - - - 0x003DAE 00:BD9E: 8A        TXA
C - - - - - 0x003DAF 00:BD9F: D9 3C 05  CMP ram_053C,Y
C - - - - - 0x003DB2 00:BDA2: D0 35     BNE bra_BDD9
C - - - - - 0x003DB4 00:BDA4: 98        TYA
C - - - - - 0x003DB5 00:BDA5: 29 02     AND #$02
C - - - - - 0x003DB7 00:BDA7: AA        TAX
C - - - - - 0x003DB8 00:BDA8: A9 00     LDA #$00
C - - - - - 0x003DBA 00:BDAA: 9D 3C 05  STA ram_053C,X
C - - - - - 0x003DBD 00:BDAD: 9D 3D 05  STA ram_053D,X
bra_BDB0:
sub_BDB0:
C - - - - - 0x003DC0 00:BDB0: C0 02     CPY #$02
C - - - - - 0x003DC2 00:BDB2: B0 0D     BCS bra_BDC1
C - - - - - 0x003DC4 00:BDB4: AD 43 03  LDA ram_0343
C - - - - - 0x003DC7 00:BDB7: F0 08     BEQ bra_BDC1
C - - - - - 0x003DC9 00:BDB9: A5 67     LDA ram_0067
C - - - - - 0x003DCB 00:BDBB: 29 03     AND #$03
C - - - - - 0x003DCD 00:BDBD: C9 03     CMP #$03
C - - - - - 0x003DCF 00:BDBF: F0 16     BEQ bra_BDD7
bra_BDC1:
C - - - - - 0x003DD1 00:BDC1: A2 01     LDX #$01
C - - - - - 0x003DD3 00:BDC3: 20 8F F6  JSR sub_0x01F69F
C - - - - - 0x003DD6 00:BDC6: F0 02     BEQ bra_BDCA
C - - - - - 0x003DD8 00:BDC8: A2 03     LDX #$03
bra_BDCA:
C - - - - - 0x003DDA 00:BDCA: 8A        TXA
C - - - - - 0x003DDB 00:BDCB: 25 67     AND ram_0067
C - - - - - 0x003DDD 00:BDCD: AA        TAX
C - - - - - 0x003DDE 00:BDCE: BD AE F5  LDA tbl_0x01F5BE,X
C - - - - - 0x003DE1 00:BDD1: 19 3C 05  ORA ram_053C,Y
C - - - - - 0x003DE4 00:BDD4: 99 3C 05  STA ram_053C,Y
bra_BDD7:
C - - - - - 0x003DE7 00:BDD7: 38        SEC
bra_BDD8_RTS:
C - - - - - 0x003DE8 00:BDD8: 60        RTS
bra_BDD9:
C - - - - - 0x003DE9 00:BDD9: 98        TYA
C - - - - - 0x003DEA 00:BDDA: 29 02     AND #$02
C - - - - - 0x003DEC 00:BDDC: AA        TAX
C - - - - - 0x003DED 00:BDDD: B5 19     LDA ram_0019_temp,X
C - - - - - 0x003DEF 00:BDDF: 10 06     BPL bra_BDE7
C - - - - - 0x003DF1 00:BDE1: A9 FF     LDA #$FF
C - - - - - 0x003DF3 00:BDE3: 95 69     STA ram_0069,X
C - - - - - 0x003DF5 00:BDE5: 95 6A     STA ram_006A,X
bra_BDE7:
C - - - - - 0x003DF7 00:BDE7: BD F3 03  LDA ram_03F3,X
C - - - - - 0x003DFA 00:BDEA: D5 69     CMP ram_0069,X
C - - - - - 0x003DFC 00:BDEC: D0 03     BNE bra_BDF1
C - - - - - 0x003DFE 00:BDEE: 20 B0 BD  JSR sub_BDB0
bra_BDF1:
C - - - - - 0x003E01 00:BDF1: 18        CLC
C - - - - - 0x003E02 00:BDF2: 60        RTS



sub_BDF3:
C - - - - - 0x003E03 00:BDF3: A0 00     LDY #$00
C - - - - - 0x003E05 00:BDF5: A5 19     LDA ram_0019_temp
C - - - - - 0x003E07 00:BDF7: 10 07     BPL bra_BE00
C - - - - - 0x003E09 00:BDF9: C8        INY
C - - - - - 0x003E0A 00:BDFA: A5 69     LDA ram_0069
C - - - - - 0x003E0C 00:BDFC: 30 0F     BMI bra_BE0D
C - - - - - 0x003E0E 00:BDFE: 10 04     BPL bra_BE04    ; jmp
bra_BE00:
C - - - - - 0x003E10 00:BE00: A5 69     LDA ram_0069
C - - - - - 0x003E12 00:BE02: 10 09     BPL bra_BE0D
bra_BE04:
C - - - - - 0x003E14 00:BE04: 98        TYA
C - - - - - 0x003E15 00:BE05: 49 01     EOR #$01
C - - - - - 0x003E17 00:BE07: AA        TAX
C - - - - - 0x003E18 00:BE08: A9 00     LDA #$00
C - - - - - 0x003E1A 00:BE0A: 9D 3C 05  STA ram_053C,X
bra_BE0D:
C - - - - - 0x003E1D 00:BE0D: A5 15     LDA ram_0015_temp
C - - - - - 0x003E1F 00:BE0F: 29 F8     AND #$F8
C - - - - - 0x003E21 00:BE11: CD F4 03  CMP ram_03F4
C - - - - - 0x003E24 00:BE14: F0 9A     BEQ bra_BDB0
C - - - - - 0x003E26 00:BE16: 4C 95 BD  JMP loc_BD95



sub_BE19:
C - - - - - 0x003E29 00:BE19: 20 8F F6  JSR sub_0x01F69F
C - - - - - 0x003E2C 00:BE1C: D0 09     BNE bra_BE27
C - - - - - 0x003E2E 00:BE1E: BD AA 07  LDA ram_07AA_unk,X
C - - - - - 0x003E31 00:BE21: 29 40     AND #$40
C - - - - - 0x003E33 00:BE23: F0 CC     BEQ bra_BDF1
C - - - - - 0x003E35 00:BE25: 38        SEC
C - - - - - 0x003E36 00:BE26: 60        RTS
bra_BE27:
C - - - - - 0x003E37 00:BE27: BD C8 07  LDA ram_07C8_unk,X
C - - - - - 0x003E3A 00:BE2A: 29 1F     AND #$1F
C - - - - - 0x003E3C 00:BE2C: C9 1C     CMP #$1C
C - - - - - 0x003E3E 00:BE2E: 60        RTS



tbl_BE2F:
- D 1 - - - 0x003E3F 00:BE2F: 39 BE     .word off_BE39_00
- D 1 - - - 0x003E41 00:BE31: 3F BE     .word off_BE3F_02
- D 1 - - - 0x003E43 00:BE33: 56 BE     .word off_BE56_04
- D 1 - - - 0x003E45 00:BE35: 5F BE     .word off_BE5F_06
- D 1 - - - 0x003E47 00:BE37: 4E BE     .word off_BE4E_08



off_BE39_00:
- D 1 - I - 0x003E49 00:BE39: 04        .byte $04   ; 
- D 1 - I - 0x003E4A 00:BE3A: 00        .byte $00   ; 
- D 1 - I - 0x003E4B 00:BE3B: 00        .byte $00   ; 
- D 1 - I - 0x003E4C 00:BE3C: 80        .byte $80   ; 
- - - - - - 0x003E4D 00:BE3D: FF        .byte $FF   ; 
- - - - - - 0x003E4E 00:BE3E: FF        .byte $FF   ; 



off_BE3F_02:
- D 1 - I - 0x003E4F 00:BE3F: 01        .byte $01   ; 
- D 1 - I - 0x003E50 00:BE40: E8        .byte $E8   ; 
- D 1 - I - 0x003E51 00:BE41: E8        .byte $E8   ; 
- D 1 - I - 0x003E52 00:BE42: E8        .byte $E8   ; 
- D 1 - I - 0x003E53 00:BE43: E8        .byte $E8   ; 
- D 1 - I - 0x003E54 00:BE44: F0        .byte $F0   ; 
- D 1 - I - 0x003E55 00:BE45: F0        .byte $F0   ; 
- D 1 - I - 0x003E56 00:BE46: F0        .byte $F0   ; 
- D 1 - I - 0x003E57 00:BE47: F0        .byte $F0   ; 
- D 1 - I - 0x003E58 00:BE48: E0        .byte $E0   ; 
- D 1 - I - 0x003E59 00:BE49: E3        .byte $E3   ; 
- D 1 - I - 0x003E5A 00:BE4A: E3        .byte $E3   ; 
- D 1 - I - 0x003E5B 00:BE4B: F3        .byte $F3   ; 
- - - - - - 0x003E5C 00:BE4C: F3        .byte $F3   ; 
- D 1 - I - 0x003E5D 00:BE4D: FF        .byte $FF   ; 



off_BE4E_08:
- D 1 - I - 0x003E5E 00:BE4E: 01        .byte $01   ; 
- D 1 - I - 0x003E5F 00:BE4F: F0        .byte $F0   ; 
- D 1 - I - 0x003E60 00:BE50: F0        .byte $F0   ; 
- D 1 - I - 0x003E61 00:BE51: F1        .byte $F1   ; 
- D 1 - I - 0x003E62 00:BE52: F1        .byte $F1   ; 
- D 1 - I - 0x003E63 00:BE53: F0        .byte $F0   ; 
- D 1 - I - 0x003E64 00:BE54: F1        .byte $F1   ; 
- D 1 - I - 0x003E65 00:BE55: FF        .byte $FF   ; 



off_BE56_04:
- D 1 - I - 0x003E66 00:BE56: 01        .byte $01   ; 
- D 1 - I - 0x003E67 00:BE57: FF        .byte $FF   ; 
- D 1 - I - 0x003E68 00:BE58: F0        .byte $F0   ; 
- D 1 - I - 0x003E69 00:BE59: F3        .byte $F3   ; 
- D 1 - I - 0x003E6A 00:BE5A: F1        .byte $F1   ; 
- D 1 - I - 0x003E6B 00:BE5B: F1        .byte $F1   ; 
- D 1 - I - 0x003E6C 00:BE5C: F3        .byte $F3   ; 
- D 1 - I - 0x003E6D 00:BE5D: F3        .byte $F3   ; 
- D 1 - I - 0x003E6E 00:BE5E: FF        .byte $FF   ; 



off_BE5F_06:
- D 1 - I - 0x003E6F 00:BE5F: 02        .byte $02   ; 
- - - - - - 0x003E70 00:BE60: FF        .byte $FF   ; 
- D 1 - I - 0x003E71 00:BE61: FC        .byte $FC   ; 
- - - - - - 0x003E72 00:BE62: FF        .byte $FF   ; 
- - - - - - 0x003E73 00:BE63: FC        .byte $FC   ; 
- - - - - - 0x003E74 00:BE64: FF        .byte $FF   ; 
- - - - - - 0x003E75 00:BE65: FC        .byte $FC   ; 
- D 1 - I - 0x003E76 00:BE66: 3F        .byte $3F   ; 
- D 1 - I - 0x003E77 00:BE67: F0        .byte $F0   ; 
- - - - - - 0x003E78 00:BE68: 3F        .byte $3F   ; 
- D 1 - I - 0x003E79 00:BE69: F0        .byte $F0   ; 
- - - - - - 0x003E7A 00:BE6A: 3F        .byte $3F   ; 
- D 1 - I - 0x003E7B 00:BE6B: F0        .byte $F0   ; 
- - - - - - 0x003E7C 00:BE6C: FF        .byte $FF   ; 
- D 1 - I - 0x003E7D 00:BE6D: FC        .byte $FC   ; 
- - - - - - 0x003E7E 00:BE6E: FF        .byte $FF   ; 
- D 1 - I - 0x003E7F 00:BE6F: FC        .byte $FC   ; 
- D 1 - I - 0x003E80 00:BE70: 3F        .byte $3F   ; 
- D 1 - I - 0x003E81 00:BE71: FC        .byte $FC   ; 
- D 1 - I - 0x003E82 00:BE72: 3F        .byte $3F   ; 
- - - - - - 0x003E83 00:BE73: FC        .byte $FC   ; 
- D 1 - I - 0x003E84 00:BE74: 0F        .byte $0F   ; 
- - - - - - 0x003E85 00:BE75: FF        .byte $FF   ; 
- D 1 - I - 0x003E86 00:BE76: 0F        .byte $0F   ; 
- D 1 - I - 0x003E87 00:BE77: FF        .byte $FF   ; 
- D 1 - I - 0x003E88 00:BE78: 0F        .byte $0F   ; 
- - - - - - 0x003E89 00:BE79: FF        .byte $FF   ; 
- D 1 - I - 0x003E8A 00:BE7A: 0F        .byte $0F   ; 
- - - - - - 0x003E8B 00:BE7B: FF        .byte $FF   ; 
- D 1 - I - 0x003E8C 00:BE7C: 0F        .byte $0F   ; 
- - - - - - 0x003E8D 00:BE7D: FF        .byte $FF   ; 
- D 1 - I - 0x003E8E 00:BE7E: 0F        .byte $0F   ; 
- - - - - - 0x003E8F 00:BE7F: FF        .byte $FF   ; 
- D 1 - I - 0x003E90 00:BE80: CF        .byte $CF   ; 
- - - - - - 0x003E91 00:BE81: FF        .byte $FF   ; 
- D 1 - I - 0x003E92 00:BE82: CF        .byte $CF   ; 
- - - - - - 0x003E93 00:BE83: FF        .byte $FF   ; 
- D 1 - I - 0x003E94 00:BE84: 03        .byte $03   ; 
- - - - - - 0x003E95 00:BE85: FF        .byte $FF   ; 
- D 1 - I - 0x003E96 00:BE86: 03        .byte $03   ; 
- - - - - - 0x003E97 00:BE87: FF        .byte $FF   ; 
- D 1 - I - 0x003E98 00:BE88: 03        .byte $03   ; 
- - - - - - 0x003E99 00:BE89: FF        .byte $FF   ; 
- D 1 - I - 0x003E9A 00:BE8A: CF        .byte $CF   ; 
- - - - - - 0x003E9B 00:BE8B: FF        .byte $FF   ; 
- D 1 - I - 0x003E9C 00:BE8C: CF        .byte $CF   ; 
- - - - - - 0x003E9D 00:BE8D: FF        .byte $FF   ; 
- D 1 - I - 0x003E9E 00:BE8E: C3        .byte $C3   ; 
- - - - - - 0x003E9F 00:BE8F: FF        .byte $FF   ; 
- D 1 - I - 0x003EA0 00:BE90: C3        .byte $C3   ; 
- - - - - - 0x003EA1 00:BE91: FF        .byte $FF   ; 
- D 1 - I - 0x003EA2 00:BE92: F3        .byte $F3   ; 
- - - - - - 0x003EA3 00:BE93: FF        .byte $FF   ; 
- D 1 - I - 0x003EA4 00:BE94: F3        .byte $F3   ; 
- - - - - - 0x003EA5 00:BE95: FF        .byte $FF   ; 
- D 1 - I - 0x003EA6 00:BE96: C0        .byte $C0   ; 
- - - - - - 0x003EA7 00:BE97: FF        .byte $FF   ; 
- D 1 - I - 0x003EA8 00:BE98: C0        .byte $C0   ; 
- - - - - - 0x003EA9 00:BE99: FF        .byte $FF   ; 
- D 1 - I - 0x003EAA 00:BE9A: C0        .byte $C0   ; 
- - - - - - 0x003EAB 00:BE9B: FF        .byte $FF   ; 
- D 1 - I - 0x003EAC 00:BE9C: F3        .byte $F3   ; 
- - - - - - 0x003EAD 00:BE9D: FF        .byte $FF   ; 
- D 1 - I - 0x003EAE 00:BE9E: F3        .byte $F3   ; 
- - - - - - 0x003EAF 00:BE9F: FF        .byte $FF   ; 
- - - - - - 0x003EB0 00:BEA0: F3        .byte $F3   ; 
- - - - - - 0x003EB1 00:BEA1: FF        .byte $FF   ; 
- - - - - - 0x003EB2 00:BEA2: FF        .byte $FF   ; 



sub_BEA3:
C - - - - - 0x003EB3 00:BEA3: A5 DD     LDA ram_00DD
C - - - - - 0x003EB5 00:BEA5: 18        CLC
C - - - - - 0x003EB6 00:BEA6: 65 03     ADC ram_0003_temp
C - - - - - 0x003EB8 00:BEA8: 85 03     STA ram_0003_temp
C - - - - - 0x003EBA 00:BEAA: 90 07     BCC bra_BEB3
- - - - - - 0x003EBC 00:BEAC: E6 02     INC ram_0002_temp
- - - - - - 0x003EBE 00:BEAE: 18        CLC
- - - - - - 0x003EBF 00:BEAF: 69 10     ADC #$10
- - - - - - 0x003EC1 00:BEB1: 85 03     STA ram_0003_temp
bra_BEB3:
C - - - - - 0x003EC3 00:BEB3: A5 02     LDA ram_0002_temp
C - - - - - 0x003EC5 00:BEB5: 65 DC     ADC ram_00DC
C - - - - - 0x003EC7 00:BEB7: 85 02     STA ram_0002_temp
C - - - - - 0x003EC9 00:BEB9: A5 03     LDA ram_0003_temp
C - - - - - 0x003ECB 00:BEBB: 38        SEC
C - - - - - 0x003ECC 00:BEBC: E9 F0     SBC #$F0
C - - - - - 0x003ECE 00:BEBE: 90 04     BCC bra_BEC4_RTS
C - - - - - 0x003ED0 00:BEC0: E6 02     INC ram_0002_temp
C - - - - - 0x003ED2 00:BEC2: 85 03     STA ram_0003_temp
bra_BEC4_RTS:
C - - - - - 0x003ED4 00:BEC4: 60        RTS



sub_BEC5:
C - - - - - 0x003ED5 00:BEC5: A5 DD     LDA ram_00DD
C - - - - - 0x003ED7 00:BEC7: 18        CLC
C - - - - - 0x003ED8 00:BEC8: 65 03     ADC ram_0003_temp
C - - - - - 0x003EDA 00:BECA: 85 03     STA ram_0003_temp
C - - - - - 0x003EDC 00:BECC: A5 02     LDA ram_0002_temp
C - - - - - 0x003EDE 00:BECE: 65 DC     ADC ram_00DC
C - - - - - 0x003EE0 00:BED0: 85 02     STA ram_0002_temp
C - - - - - 0x003EE2 00:BED2: C5 DC     CMP ram_00DC
C - - - - - 0x003EE4 00:BED4: F0 07     BEQ bra_BEDD_RTS
C - - - - - 0x003EE6 00:BED6: A5 03     LDA ram_0003_temp
C - - - - - 0x003EE8 00:BED8: 38        SEC
C - - - - - 0x003EE9 00:BED9: E9 10     SBC #$10
C - - - - - 0x003EEB 00:BEDB: 85 03     STA ram_0003_temp
bra_BEDD_RTS:
C - - - - - 0x003EED 00:BEDD: 60        RTS



sub_BEDE:
C - - - - - 0x003EEE 00:BEDE: A9 04     LDA #$04
C - - - - - 0x003EF0 00:BEE0: C5 75     CMP ram_stage
C - - - - - 0x003EF2 00:BEE2: D0 1A     BNE bra_BEFE
C - - - - - 0x003EF4 00:BEE4: A5 60     LDA ram_0060
C - - - - - 0x003EF6 00:BEE6: C9 02     CMP #$02
C - - - - - 0x003EF8 00:BEE8: 90 06     BCC bra_BEF0
C - - - - - 0x003EFA 00:BEEA: D0 12     BNE bra_BEFE
C - - - - - 0x003EFC 00:BEEC: A5 61     LDA ram_0061
C - - - - - 0x003EFE 00:BEEE: 30 0E     BMI bra_BEFE
bra_BEF0:
C - - - - - 0x003F00 00:BEF0: A5 15     LDA ram_0015_temp
C - - - - - 0x003F02 00:BEF2: 10 0A     BPL bra_BEFE
C - - - - - 0x003F04 00:BEF4: A5 1B     LDA ram_001B_temp
C - - - - - 0x003F06 00:BEF6: 10 06     BPL bra_BEFE
C - - - - - 0x003F08 00:BEF8: A5 16     LDA ram_0016_temp
C - - - - - 0x003F0A 00:BEFA: C9 02     CMP #$02
C - - - - - 0x003F0C 00:BEFC: 90 3D     BCC bra_BF3B_RTS
bra_BEFE:
C - - - - - 0x003F0E 00:BEFE: A9 00     LDA #$00
C - - - - - 0x003F10 00:BF00: 85 02     STA ram_0002_temp
C - - - - - 0x003F12 00:BF02: A5 1A     LDA ram_001A_temp
C - - - - - 0x003F14 00:BF04: 18        CLC
C - - - - - 0x003F15 00:BF05: 65 65     ADC ram_0065
C - - - - - 0x003F17 00:BF07: A5 1B     LDA ram_001B_temp
C - - - - - 0x003F19 00:BF09: 69 00     ADC #$00
C - - - - - 0x003F1B 00:BF0B: 85 03     STA ram_0003_temp
C - - - - - 0x003F1D 00:BF0D: 10 08     BPL bra_BF17
C - - - - - 0x003F1F 00:BF0F: C6 02     DEC ram_0002_temp
C - - - - - 0x003F21 00:BF11: 20 C5 BE  JSR sub_BEC5
C - - - - - 0x003F24 00:BF14: 4C 1A BF  JMP loc_BF1A
bra_BF17:
C - - - - - 0x003F27 00:BF17: 20 A3 BE  JSR sub_BEA3
loc_BF1A:
C D 1 - - - 0x003F2A 00:BF1A: A5 03     LDA ram_0003_temp
C - - - - - 0x003F2C 00:BF1C: A4 02     LDY ram_0002_temp
C - - - - - 0x003F2E 00:BF1E: 4C 44 BF  JMP loc_BF44



sub_BF21:
C - - - - - 0x003F31 00:BF21: A5 75     LDA ram_stage
C - - - - - 0x003F33 00:BF23: C9 02     CMP #$02
C - - - - - 0x003F35 00:BF25: D0 19     BNE bra_BF40
C - - - - - 0x003F37 00:BF27: A5 63     LDA ram_0063
C - - - - - 0x003F39 00:BF29: C9 03     CMP #$03
C - - - - - 0x003F3B 00:BF2B: 90 13     BCC bra_BF40
C - - - - - 0x003F3D 00:BF2D: D0 06     BNE bra_BF35
C - - - - - 0x003F3F 00:BF2F: A5 64     LDA ram_0064
C - - - - - 0x003F41 00:BF31: C9 C0     CMP #$C0
C - - - - - 0x003F43 00:BF33: 90 0B     BCC bra_BF40
bra_BF35:
C - - - - - 0x003F45 00:BF35: A5 0A     LDA ram_000A_temp
C - - - - - 0x003F47 00:BF37: C9 02     CMP #$02
C - - - - - 0x003F49 00:BF39: B0 05     BCS bra_BF40
bra_BF3B_RTS:
C - - - - - 0x003F4B 00:BF3B: 60        RTS



sub_BF3C:
C - - - - - 0x003F4C 00:BF3C: A5 60     LDA ram_0060
C - - - - - 0x003F4E 00:BF3E: 85 0A     STA ram_000A_temp
bra_BF40:
C - - - - - 0x003F50 00:BF40: A5 DD     LDA ram_00DD
C - - - - - 0x003F52 00:BF42: A4 DC     LDY ram_00DC
loc_BF44:
C D 1 - - - 0x003F54 00:BF44: 85 10     STA ram_0010_temp
C - - - - - 0x003F56 00:BF46: 84 11     STY ram_0011_temp
C - - - - - 0x003F58 00:BF48: A4 88     LDY ram_x2_stage
C - - - - - 0x003F5A 00:BF4A: B9 2F BE  LDA tbl_BE2F,Y
C - - - - - 0x003F5D 00:BF4D: 85 00     STA ram_0000_t03_data
C - - - - - 0x003F5F 00:BF4F: B9 30 BE  LDA tbl_BE2F + $01,Y
C - - - - - 0x003F62 00:BF52: 85 01     STA ram_0000_t03_data + $01
C - - - - - 0x003F64 00:BF54: A0 00     LDY #$00
C - - - - - 0x003F66 00:BF56: B1 00     LDA (ram_0000_t03_data),Y
C - - - - - 0x003F68 00:BF58: 85 0B     STA ram_000B_temp
C - - - - - 0x003F6A 00:BF5A: A8        TAY
C - - - - - 0x003F6B 00:BF5B: A5 11     LDA ram_0011_temp
C - - - - - 0x003F6D 00:BF5D: 85 0F     STA ram_000F_temp
C - - - - - 0x003F6F 00:BF5F: 88        DEY
C - - - - - 0x003F70 00:BF60: F0 01     BEQ bra_BF63
C - - - - - 0x003F72 00:BF62: 0A        ASL
bra_BF63:
C - - - - - 0x003F73 00:BF63: 85 0C     STA ram_000C_temp
C - - - - - 0x003F75 00:BF65: 18        CLC
C - - - - - 0x003F76 00:BF66: 65 00     ADC ram_0000_t03_data
C - - - - - 0x003F78 00:BF68: 85 00     STA ram_0000_t04_data
C - - - - - 0x003F7A 00:BF6A: A5 01     LDA ram_0000_t03_data + $01
C - - - - - 0x003F7C 00:BF6C: 69 00     ADC #$00
C - - - - - 0x003F7E 00:BF6E: 85 01     STA ram_0000_t04_data + $01
C - - - - - 0x003F80 00:BF70: A5 0A     LDA ram_000A_temp
C - - - - - 0x003F82 00:BF72: 4A        LSR
C - - - - - 0x003F83 00:BF73: 4A        LSR
C - - - - - 0x003F84 00:BF74: 4A        LSR
C - - - - - 0x003F85 00:BF75: 85 0D     STA ram_000D_temp
C - - - - - 0x003F87 00:BF77: A5 0A     LDA ram_000A_temp
C - - - - - 0x003F89 00:BF79: 29 07     AND #$07
C - - - - - 0x003F8B 00:BF7B: A8        TAY
C - - - - - 0x003F8C 00:BF7C: B9 AE F5  LDA tbl_0x01F5BE,Y
C - - - - - 0x003F8F 00:BF7F: 85 0E     STA ram_000E_temp
C - - - - - 0x003F91 00:BF81: 38        SEC
C - - - - - 0x003F92 00:BF82: 60        RTS



sub_BF83:
C - - - - - 0x003F93 00:BF83: B5 B1     LDA ram_current_player,X
C - - - - - 0x003F95 00:BF85: 29 0F     AND #$0F
C - - - - - 0x003F97 00:BF87: A8        TAY
C - - - - - 0x003F98 00:BF88: 60        RTS



sub_BF89:
C - - - - - 0x003F99 00:BF89: 20 83 BF  JSR sub_BF83
C - - - - - 0x003F9C 00:BF8C: B9 7F 00  LDA ram_player_stats,Y
C - - - - - 0x003F9F 00:BF8F: 29 F0     AND #$F0
C - - - - - 0x003FA1 00:BF91: C9 30     CMP #$30
C - - - - - 0x003FA3 00:BF93: 60        RTS



sub_BF94:
C - - - - - 0x003FA4 00:BF94: 85 04     STA ram_0004_temp
C - - - - - 0x003FA6 00:BF96: A9 01     LDA #$01
C - - - - - 0x003FA8 00:BF98: 85 02     STA ram_0002_temp
C - - - - - 0x003FAA 00:BF9A: 20 89 BF  JSR sub_BF89
C - - - - - 0x003FAD 00:BF9D: 90 04     BCC bra_BFA3
C - - - - - 0x003FAF 00:BF9F: A9 00     LDA #$00
C - - - - - 0x003FB1 00:BFA1: 85 02     STA ram_0002_temp
bra_BFA3:
C - - - - - 0x003FB3 00:BFA3: A9 00     LDA #$00
C - - - - - 0x003FB5 00:BFA5: 85 00     STA ram_0000_temp
C - - - - - 0x003FB7 00:BFA7: A5 04     LDA ram_0004_temp
C - - - - - 0x003FB9 00:BFA9: F0 06     BEQ bra_BFB1
C - - - - - 0x003FBB 00:BFAB: BD 68 06  LDA ram_obj_pos_Y,X
C - - - - - 0x003FBE 00:BFAE: 4C B4 BF  JMP loc_BFB4
bra_BFB1:
C - - - - - 0x003FC1 00:BFB1: BD 4E 06  LDA ram_obj_pos_X,X
loc_BFB4:
C D 1 - - - 0x003FC4 00:BFB4: C9 90     CMP #$90
C - - - - - 0x003FC6 00:BFB6: B0 08     BCS bra_BFC0
C - - - - - 0x003FC8 00:BFB8: E6 00     INC ram_0000_temp
C - - - - - 0x003FCA 00:BFBA: C9 68     CMP #$68
C - - - - - 0x003FCC 00:BFBC: B0 02     BCS bra_BFC0
C - - - - - 0x003FCE 00:BFBE: E6 00     INC ram_0000_temp
bra_BFC0:
C - - - - - 0x003FD0 00:BFC0: A4 02     LDY ram_0002_temp
C - - - - - 0x003FD2 00:BFC2: F0 1F     BEQ bra_BFE3
C - - - - - 0x003FD4 00:BFC4: A5 04     LDA ram_0004_temp
C - - - - - 0x003FD6 00:BFC6: D0 0B     BNE bra_BFD3
C - - - - - 0x003FD8 00:BFC8: A0 03     LDY #$03
C - - - - - 0x003FDA 00:BFCA: BD E8 07  LDA ram_07E8,X
C - - - - - 0x003FDD 00:BFCD: 10 0D     BPL bra_BFDC
C - - - - - 0x003FDF 00:BFCF: A0 07     LDY #$07
C - - - - - 0x003FE1 00:BFD1: D0 09     BNE bra_BFDC    ; jmp
bra_BFD3:
C - - - - - 0x003FE3 00:BFD3: A0 0A     LDY #$0A
C - - - - - 0x003FE5 00:BFD5: BD EC 07  LDA ram_07EC,X
C - - - - - 0x003FE8 00:BFD8: 30 02     BMI bra_BFDC
C - - - - - 0x003FEA 00:BFDA: A0 0E     LDY #$0E
bra_BFDC:
C - - - - - 0x003FEC 00:BFDC: A5 00     LDA ram_0000_temp
C - - - - - 0x003FEE 00:BFDE: D9 EC BF  CMP tbl_BFEC,Y
C - - - - - 0x003FF1 00:BFE1: F0 04     BEQ bra_BFE7
bra_BFE3:
C - - - - - 0x003FF3 00:BFE3: A0 00     LDY #$00
C - - - - - 0x003FF5 00:BFE5: F0 02     BEQ bra_BFE9    ; jmp
bra_BFE7:
C - - - - - 0x003FF7 00:BFE7: A0 02     LDY #$02
bra_BFE9:
C - - - - - 0x003FF9 00:BFE9: 84 00     STY ram_0000_temp
C - - - - - 0x003FFB 00:BFEB: 60        RTS



tbl_BFEC:
; only 4 bytes are used
- - - - - - 0x003FFC 00:BFEC: 01        .byte $01   ; 00 
- - - - - - 0x003FFD 00:BFED: 01        .byte $01   ; 01 
- - - - - - 0x003FFE 00:BFEE: 00        .byte $00   ; 02 
- D 1 - - - 0x003FFF 00:BFEF: 00        .byte $00   ; 03 0x003FD8
- - - - - - 0x004000 00:BFF0: 00        .byte $00   ; 04 
- - - - - - 0x004001 00:BFF1: 01        .byte $01   ; 05 
- - - - - - 0x004002 00:BFF2: 02        .byte $02   ; 06 
- D 1 - - - 0x004003 00:BFF3: 02        .byte $02   ; 07 0x003FDF
- - - - - - 0x004004 00:BFF4: 02        .byte $02   ; 08 
- - - - - - 0x004005 00:BFF5: 01        .byte $01   ; 09 
- D 1 - - - 0x004006 00:BFF6: 02        .byte $02   ; 0A 0x003FE3
- - - - - - 0x004007 00:BFF7: 02        .byte $02   ; 0B 
- - - - - - 0x004008 00:BFF8: 01        .byte $01   ; 0C 
- - - - - - 0x004009 00:BFF9: 00        .byte $00   ; 0D 
- D 1 - - - 0x00400A 00:BFFA: 00        .byte $00   ; 0E 0x003FEA


; bzk garbage
- - - - - - 0x00400B 00:BFFB: 00        .byte $00   ; 
- - - - - - 0x00400C 00:BFFC: 01        .byte $01   ; 
- - - - - - 0x00400D 00:BFFD: 02        .byte $02   ; 


; bzk garbage
- - - - - - 0x00400E 00:BFFE: FF        .byte $FF, $FF   ; 



.out .sprintf("Free bytes in bank 00: 0x%04X [%d]", ($C000 - *), ($C000 - *))



